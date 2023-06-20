from abc import ABC, abstractmethod
import glob
import json
import numpy as np
import os
from pathlib import Path
import random
import shutil
import subprocess
import time
import math
import itertools as it
import uuid
import hashlib

from bayes_opt import BayesianOptimization, UtilityFunction

from RRUtil import Device
from RRUtil.Utilities import createDir
from RRUtil.Utilities import execute_command
from RRUtil.DataBase import DB

class Kernel:
    class OMPReplayer:
        def __init__(self, Device):
            self.envVars = {
                'OMP_NUM_THREADS' : 1,
                'OMP_TARGET_OFFLOAD' : 'mandatory',
                'LIBOMPTARGET_NEXTGEN_PLUGINS' : 1,
                'LIBOMPTARGET_RR_DEVMEM_SIZE' : Device.getMaxMem()
            }
            self._env=' '.join([f'{k}={v}' for k,v in self.envVars.items()])
            self.cmd = 'llvm-omp-kernel-replay'

        def command(self, numThreads=None, numTeams=None, verify=False):
            cmd = self.cmd
            if not isinstance(numThreads, type(None)):
                cmd += ' --num-threads {0}'.format(int(numThreads))
            if not isinstance(numTeams, type(None)):
                cmd += ' --num-teams {0}'.format(int(numTeams))
            if verify:
                cmd += f' --verify'
            return cmd + ' {kernel_name}.json'

        def env(self):
            return self._env

    def __init__(self, Device, name, hashname, dbDir, recorded=True):
        self.Name = name
        self.recorded = recorded
        self.HashName = hashname
        self.original = f'{hashname}.image.orig'
        # This we should fix. Ckpt, should instruct to not copy
        if recorded:
            if not Path(self.original).exists():
                shutil.copyfile(f'{hashname}.image', self.original)
        self.Profiler = Device
        self.Replayer = self.OMPReplayer(Device)
        self.dbDir = dbDir
        self.profiled = False
        self.NumRegs = -1
        self.SMem = -1
        self.NumTeams = -1
        self.NumThreads = -1
        self.ExecTime = -1

    def getTripCount(self):
        with open(f'{self.HashName}.json', 'r') as fd:
            desc = json.load(fd)
        return desc['LoopTripCount']

    def isWorkShare(self):
        if self.getTripCount() > 0:
            return True

        return False

    def getDefaultKey(self):
        # This will serve as our Baseline
        defaultConfig = { 'NumThreads' : None, 'NumTeams' : None }
        for compilationConfig in self.Profiler.getCompilationConfigs():
            defaultConfig.update( { compilationConfig : None } )
        defaultKey = self.getConfigKey(defaultConfig)
        return defaultKey

    def isOptimized(self, **kwargs):
        configKey = self.getConfigKey(kwargs)
        db = DB(self.getDBName(**kwargs), self.getDefaultKey())
        totalExperiments = db.getTotalSize()
        if totalExperiments == -1:
            return False

        return len(db) == totalExperiments + 1

    def Pending(self, **kwargs):
        db = DB(self.getDBName(**kwargs), self.getDefaultKey())
        totalExperiments = db.getTotalSize()
        if totalExperiments == -1:
            return 2**31

        if (len(db) > totalExperiments ):
            return 0
        return totalExperiments + 1 - len(db)

    def getDefaultTime(self, **kwargs):
        db = DB(self.getDBName(**kwargs), self.getDefaultKey())
        return db.getBaseline()

    def Stats(self, **kwargs):
        configKey = self.getConfigKey(kwargs)
        db = DB(self.getDBName(**kwargs), self.getDefaultKey())
        results = {}
        Configs, X, Y = db.GetSpeedUps()
        if len(Y) > 0:
            index_min = min(range(len(Y)), key=Y.__getitem__)
            index_max = max(range(len(Y)), key=Y.__getitem__)
            bestConfig = X[index_max]
            return configKey, Y[index_max], bestConfig
        return configKey, -1, {}

    def BuildBest(self, **kwargs):
        configKey = self.getConfigKey(kwargs)
        db = DB(self.getDBName(**kwargs), self.getDefaultKey())

        Configs, X, Y =  db.GetSpeedUps()
        index_max = max(range(len(Y)), key=Y.__getitem__)
        bestConfig = X[index_max]
        best  = ' '.join([f'{k}={v}' for k,v in X[index_max].items()])

        regs = bestConfig['NumRegsPerThread']
        pressure = bestConfig['RegEffort']
        NumThreads = bestConfig['NumThreads']
        NumTeams = bestConfig['NumTeams']
        self.prof.deviceCompile(self.original, self.Name, self.HashName, regs, pressure)
        print('Best :{} {}={} {}={} (s)'.format( best, 'speedup', Y[index_max], 'Duration', db.Duration(Configs[index_max])))
        cmd = self.Replayer.command(NumThreads, NumTeams).format(kernel_name=f'{self.HashName}')
        env = self.Replayer.env()
        cmd = self.Profiler.command().format(executable=cmd, output=f'{self.HashName}.csv')
        env += ' ' + self.Profiler.env()
        print('Cmd:', env + ' ' + cmd)

    @staticmethod
    def extractKernels(kName, kname_to_hash, toDelete, Device):
        imageName = kname_to_hash[kName]
        shutil.copy(f'{imageName}.image', f'{imageName}.image.beforeExtract')

        kernelImage =f'{imageName}.image'

        cmdP =('llvm-extract {input} '
                ' --delete --func {kDelete} -o {outName}')
        for toDeleteKernel in toDelete:
            cmd = cmdP.format(input=kernelImage, kDelete=toDeleteKernel,
                    outName=kernelImage)
            ret, stdout, stderr = execute_command(cmd, capture_output=True,
                    cwd=os.getcwd(), shell=True)
        Device.renameSymbols(kernelImage, kernelImage)
        print('kernelImage', kernelImage)

    @staticmethod
    def getConfigKey(config):
        return '-'.join([str(k)+'='+str(config[k]) for k in config])

    def optimize_exhaustive(self, **kwargs):
        @Device.Stage(self.Profiler.getStageDir(), uuid.uuid4().hex, self.HashName)
        def optimize(self, **kwargs):
            config = {}
            for compilationConfig in self.Profiler.getCompilationConfigs():
                print(compilationConfig)
                v = kwargs.get(compilationConfig, None)
                if v:
                    start, end, step = self.Profiler.getDefaultBounds(compilationConfig)
                    config[compilationConfig] = (start, end, step)

            configKey = self.getConfigKey(config)

            defaultKey = self.getDefaultKey()
            db = DB(self.getDBName(**kwargs), defaultKey)

            # Get data for baseline.
            if not (defaultKey in db):
                print('sample defaultKey', defaultKey)
                Valid, SStats, DStats, Duration = self.sample()
                db.Add(defaultKey, [SStats], DStats, [Duration], Valid)

            experiments = []
            if 'MaxThreads' in config:
                print(config['MaxThreads'][0], config['MaxThreads'][1], config['MaxThreads'][2])
                for tid in range(config['MaxThreads'][0], config['MaxThreads'][1], config['MaxThreads'][2]):
                    if 'MinTeams' in configKey:
                        for tmId in range(config['MinTeams'][0], config['MinTeams'][1], config['MinTeams'][2]):
                            if self.Profiler.isValidConfig(tid, tmId):
                                experiments.append( { 'MaxThreads' : tid,
                                                      'MinTeams' : tmId,
                                                      'NumThreads' : tid } )
                    else:
                        experiments.append( { 'MaxThreads' : tid,
                                              'NumThreads' : tid,
                                              'NumTeams' : None,
                                             } )

            mData =  {
                       'args' : kwargs,
                       'config': config,
                       'totalExperiments' : len(experiments)
                      }

            db.setMetadata(mData)

            bestConfig = None
            bestSpeedup = None
            worstConfig = None
            worstSpeedup = None
            for e in experiments:
                print(e)
                key = self.getConfigKey(e)

                Valid, SStats, DStats, Duration = (0, -1, -1, 1)
                if not (key in db):
                    Valid, SStats, DStats, Duration = self.sample(Tries=5, **e)
                db.Add(key, [SStats], DStats, [Duration], Valid)

                speedup = db.Speedup(key)
                print(f'{key} -> {speedup}')
                if bestSpeedup is None or bestSpeedup < speedup:
                    bestSpeedup = speedup
                    bestConfig = e
                if worstSpeedup is None or worstSpeedup > speedup:
                    worstSpeedup = speedup
                    worstConfig = e

            print(f'Kernel: {self.Name} Best result: {bestConfig}; f(x) = {bestSpeedup}')
            print(f'Kernel: {self.Name} Worst result: {worstConfig}; f(x) = {worstSpeedup}')

        optimize(self, **kwargs)

    def getBounds(self, **kwargs):
        WarpSize = self.Profiler.WarpSize
        MaxTeamSize = self.Profiler.MaxThreadBlockSize
        MaxWarpsPerTeam = int(MaxTeamSize / WarpSize)
        MaxNumTeams = min(int(self.getTripCount()/WarpSize), (2**31)-1)

        pBounds = {}
        # Over here we optimize launch bounds we will use fractional bounds
        if True: #'MinTeams' in kwargs or 'MaxThreads':
            #We should not include pure 0. We always require at least a single element
            MinTeams = kwargs.get('MinTeams', None)
            if MinTeams is not None:
                pBounds['MinTeams'] = (np.nextafter(0,1), np.nextafter(1, 2))

            MaxThreads = kwargs.get('MaxThreads', None)
            if MaxThreads is not None:
                pBounds['MaxThreads'] = (np.nextafter(0, 1), np.nextafter(1, 2))

            NumThreads = kwargs.get('NumThreads', None)
            if NumThreads is not None:
                pBounds['NumThreads'] = (np.nextafter(0, 1), np.nextafter(1, 2))

            NumTeams = kwargs.get('NumTeams', None)
            if NumTeams is not None:
                pBounds['NumTeams'] = (np.nextafter(0, 1), np.nextafter(1, 2))
        else:
            NumThreads = kwargs.get('NumThreads', None)
            if not isinstance(NumThreads, type(None)):
                pBounds['NumThreads'] = [1, MaxWarpsPerTeam + 0.99]

            NumTeams = kwargs.get('NumTeams', None)
            if not isinstance(NumTeams, type(None)):
                pBounds['NumTeams'] = [1, MaxNumTeams + 0.99]

            for compilationConfig in self.Profiler.getCompilationConfigs():
                v = kwargs.get(compilationConfig, None)
                if v:
                    pBounds[compilationConfig] = self.Profiler.getDefaultBounds(compilationConfig)
        return pBounds

    def getDBName(self, **kwargs):
        pBounds = self.getBounds(**kwargs)
        configKey = self.getConfigKey(pBounds)
        hashedKey = hashlib.md5(configKey.encode()).hexdigest()
        return f'{self.dbDir}/analysis{self.HashName}.{hashedKey}.json'

    def convertPointToValues(self, Points):
        # max threads indicates that BO uses a bounding box of 0->1
        # fom all options
        #if 'MaxThreads' in Points.keys():
        return self.Profiler.getLaunchBounds(Points, self.getTripCount())

        config = {}
        if 'NumThreads' in Points.keys():
            NumWarps = int(math.floor(Points['NumThreads']))
            NumThreads = NumWarps * self.Profiler.WarpSize
            config.update( { 'NumThreads' : NumThreads } )

        if 'NumTeams' in Points.keys():
            NumTeams = int(math.floor(Points['NumTeams']))
            config.update( { 'NumTeams' : NumTeams } )

        for compilationConfig in self.Profiler.getCompilationConfigs():
            if compilationConfig not in Points.keys():
                continue

            v = int(math.floor(Points[compilationConfig]))
            config.update( { compilationConfig : v } )
        return config

    def BO(self, **kwargs):
        @Device.Stage(self.Profiler.getStageDir(), uuid.uuid4().hex, self.HashName)
        def optimize(self, **kwargs):
            #default values
            initSamples = kwargs.get('initSamples', 3)
            optSamples = kwargs.get('optSamples', 10)
            print(initSamples, optSamples)

            pBounds = self.getBounds(**kwargs)
            print('pBounds', pBounds)

            random_state = kwargs.get('random_state', 1234)
            optimizer = BayesianOptimization(f = None,
                                             pbounds = pBounds,
                                             verbose = 2,
                                             random_state = random_state,
                                             allow_duplicate_points=True
                                             )
            # Here we have the utility function
            utility = UtilityFunction(kind = "ucb", kappa = 1.96, xi = 0.01)

            db = DB(self.getDBName(**kwargs), self.getDefaultKey())

            mData =  {
                       'args' : kwargs,
                       'bounds' : pBounds,
                       'totalExperiments' : initSamples + optSamples
                     }

            db.setMetadata(mData)

            if not (self.getDefaultKey() in db):
                Valid, SStats, DStats, Duration = self.sample()
                db.Add(self.getDefaultKey(), [SStats], DStats, [Duration], Valid)

            pending = optSamples + initSamples

            for performed in range (0, pending):
                if performed < (initSamples +1):
                    NextPoint = optimizer.space.array_to_params(optimizer.space.random_sample())
                else:
                    NextPoint = optimizer.suggest(utility)
                config = self.convertPointToValues(NextPoint)
                print("================= Next Point ====================")
                print(NextPoint)
                print(config)
                print(f'Performing {performed} experiment out of {pending}')
                print("=================================================")

                key = self.getConfigKey(config)
                Valid, SStats, DStats, Duration = (0, -1, -1, 1)
                if not (key in db):
                    Valid, SStats, DStats, Duration = self.sample(Tries=5, **config)
                db.Add(key, [SStats], DStats, [Duration], Valid)
                Target = db.Speedup(key)

                print('{0} -> {1}'.format(key, Target))
                try:
                    # Update the optimizer with the evaluation results.
                    # This should be in try-except to catch any errors!
                    optimizer.register(params = NextPoint, target = Target)
                except:
                    assert False, 'optimizer error'

            print('Kernel: {} Best result: {}; f(x) = {}.'.format(self.Name, optimizer.max['params'], optimizer.max['target']))

        optimize(self, **kwargs)

    def sample(self, **kwargs):
        Tries = kwargs.pop('Tries', 5)
        NumThreads = kwargs.get('NumThreads', None)
        NumTeams = kwargs.get('NumTeams', None)

        start = time.time()
        StaticStats = self.Profiler.deviceCompile(self.original, self.Name, self.HashName, **kwargs)
        SStats = None
        if StaticStats:
            SStats = StaticStats[self.Name]
            if NumThreads is not None:
                if ( SStats[0] * NumThreads > self.Profiler.MaxRegBlock ):
                    return False, None, None, None
            if ( SStats[1] > self.Profiler.MaxSharedMemBlock ) :
                return False, None, None, None

        DStats = list()
        res = self.execute(NumThreads, NumTeams, maxIters=Tries)
        if len(res) == 0:
            end = time.time()
            return False, None, None, None

        DStats += res
        stats = np.array(DStats)[:,-1]
        end = time.time()

        return True, SStats, DStats, end-start

    def execute(self, NumThreads=None, NumTeams=None, maxIters = 9,
                keepMaxTeam=True, dropSingleTeams=False):
        cmd = self.Replayer.command(NumThreads, NumTeams).format(kernel_name=f'{self.HashName}')
        env = self.Replayer.env()
        cmd = self.Profiler.command().format(executable=cmd, output=f'{self.HashName}.csv')
        env += ' ' + self.Profiler.env()
        results = []
        for i in range (0, maxIters):
            ret, stdout, stderr = execute_command(env + 'timeout 180s ' + cmd,
                    capture_output=True, cwd=os.getcwd(),
                    shell=True, ContinueOnFailure=True)
            if ret != 0:
                return list()
            print(os.getcwd())
            print(self.Name)
            kernelDescr = self.Profiler.parse(f'{self.HashName}.csv',
                                              keepMaxTeam,
                                              dropSingleTeams)[self.Name]
            results.append(list(kernelDescr.values()))
        return results

    def setOrigDescr(self, Regs, SMem, NumTeams, NumThreads, ExecTime):
        self.NumRegs = Regs
        self.SMem = SMem
        self.NumTeams = NumTeams
        self.NumThreads = NumThreads
        self.ExecTime = ExecTime
        self.profiled = True

    def IsProfiled(self):
        return self.profiled

    def to_dict(self):
        ret = dict()
        ret['Name'] = self.Name
        ret['HashName'] = self.HashName
        ret['NumRegs'] = self.NumRegs
        ret['SMem'] = self.SMem
        ret['NumTeams'] = self.NumTeams
        ret['NumThreads'] = self.NumThreads
        ret['ExecTime'] = self.ExecTime
        ret['DB'] = self.dbDir
        ret['Profiler'] = self.Profiler.to_dict()
        ret['recorded'] = self.recorded
        return ret

    @classmethod
    def from_dict(cls, d):
        prof = Device.getDevice(d['Profiler']['Name'])
        kernel = cls(prof, d['Name'], d['HashName'], d['DB'], d['recorded'])
        kernel.setOrigDescr(d['NumRegs'], d['SMem'], d['NumTeams'], d['NumThreads'], d['ExecTime'])
        return kernel

class BenchmarkExecution:
    def __init__(self, name, buildTime, oTime, iTime, binary, kernels):
        self.name = name
        self.bTime = buildTime
        self.oTime = oTime
        self.iTime = iTime
        self.binary = binary
        self.kernels = kernels

    def to_dict(self):
        ret = dict()
        ret['name'] = self.name
        ret['BuildTime'] = self.bTime
        ret['OuterTime'] = self.oTime
        ret['InnerTime'] = self.iTime
        ret['ExecutableDir'] = self.binary
        ret['Kernels'] = dict()
        for k, v in self.kernels.items():
            ret['Kernels'][k] = v.to_dict()
        return ret

    def getKernels(self):
        return self.kernels

    def printKernels(self):
        print('Kernel Name:RR Kernel Handler')
        for k, v in self.kernels.items():
            print('{0}:{1}'.format(v.Name, k))

    def getKernelName(self, k):
        return self.kernels[k].Name

    def getExecutionTimes(self):
        times = dict()
        times['EndToEnd'] = self.iTime
        for k, v in self.kernels.items():
            times[v.Name.split('_')[-1]] = float(v.ExecTime) * 1E-9
        return times


    @classmethod
    def from_dict(cls, name, **kwargs):
        for t in ['BuildTime', 'OuterTime', 'InnerTime', 'ExecutableDir', 'Kernels']:
            if t not in kwargs:
                raise RuntimeError(f'Cannot Find {t} in Execution dictionary')

        kernels = dict()
        for k, v in kwargs['Kernels'].items():
            kernels[k] = Kernel.from_dict(v)

        return cls(name, kwargs['BuildTime'],
            kwargs['OuterTime'],
            kwargs['InnerTime'],
            kwargs['ExecutableDir'], kernels)

class BaseBenchmark(ABC):
    class OMPRecorder:
        def __init__(self, MaxMem):
            self.envVars = {
                'OMP_NUM_THREADS' : 2,
                'LIBOMPTARGET_RR_DEVMEM_SIZE':  MaxMem,
                'LIBOMPTARGET_RR_SAVE_OUTPUT':  1,
                'OMP_TARGET_OFFLOAD':           'mandatory',
                'LIBOMPTARGET_NEXTGEN_PLUGINS': 1,
                'LIBOMPTARGET_RECORD':          1
            }
            self._env=' '.join([f'{k}={v}' for k,v in self.envVars.items()])
            self.cmd = '{executable}'

        def command(self):
            return self.cmd

        def env(self):
            return self._env

        def threads(self):
            return '{0}={1}'.format('OMP_NUM_THREAD', self.envVars['OMP_NUM_THREADS'])

    def __init__(self, Device, executable, root, **kwargs):
        self.executable = executable
        self.root = root
        self.versions = dict()
        self.Device = Device
        self.recorder = self.OMPRecorder(self.Device.getMaxMem())

        self.resultsDir = kwargs.get('resultsDir')

        if 'versions' in kwargs:
            for k, v in kwargs['versions'].items():
                self.versions[k] = BenchmarkExecution.from_dict(**v)

    def to_dict(self):
        ret = dict()
        ret['executable'] = self.executable
        ret['resultsdir'] = self.resultsDir
        ret['root'] = self.root
        ret['Profiler'] = self.Device.to_dict()
        ret['versions'] = dict()
        for k, v in self.versions.items():
            ret['versions'][k] = v.to_dict()
        return ret

    def printKernels(self):
        if 'record' not in self.versions:
            print('Benchmark is not recorded')
            return

        self.versions['record'].printKernels()

    def getKernelName(self, k):
        if 'record' not in self.versions:
            print('Benchmark is not recorded')
            return
        self.versions['record'].getKernelName()

    def getKernels(self, version):
        if version not in self.versions:
            print('Version does not exist')
            return {}

        return self.versions[version].getKernels()


    def getExecutionTimes(self, drop=None):
        exec_times = {}
        for k, v in self.versions.items():
            if k in drop:
                continue
            exec_times[k] = v.getExecutionTimes()
        return exec_times

    @abstractmethod
    def build(self):
        pass

    @abstractmethod
    def clean(self):
        pass

    @abstractmethod
    def command(self):
        pass

    @abstractmethod
    def env(self):
        pass

    @abstractmethod
    def getApplicationTime(self, stdout):
      pass

    def compile(self, clean=True):
        if clean:
            self.clean()
        self.build()

    def execute(self, Profile=True, Record=True):
        env='OMP_TARGET_OFFLOAD=mandatory LIBOMPTARGET_NEXTGEN_PLUGINS=1' + self.env()
        command = self.command()
        if Record:
            command = self.recorder.command().format(executable=command)
            env += ' '  + self.recorder.env()
        else:
            env += ' ' + self.recorder.threads()

        if Profile:
            csvFile=self.executable.replace('/', '_')
            command = self.Device.command().format(executable=command, output=f'{csvFile}.csv')
            env += ' ' + self.Device.env()

        print(env + ' ' + command)
        ret, stdout, stderr = execute_command(env + ' ' + command, capture_output=True, cwd=os.getcwd(), shell=True, check=False)
        application_time = self.getApplicationTime(stdout)

        if Profile:
            csvFile=self.executable.replace('/', '_')
            kernelDescr = self.Device.parse(f'{csvFile}.csv',
                                            keepMaxTeam=True, dropSingleTeams=True)

        if not Record:
            kernels = dict()
            for k, v in kernelDescr.items():
                kernel = Kernel(self.Device, k, k, self.resultsDir, recorded=False)
                print('Not Recordkernel', kernel)
                if isinstance(self.Device, Device.NVIDIA):
                    kernel.setOrigDescr( v['Registers Per Thread'],
                                         v['Static SMem'],
                                         v['Grid X'],
                                         v['Block X'],
                                         v['Duration'] )
                kernels[f'{k}.json'] = kernel
            return application_time, kernels

        # We may record more kernels than the ones we will optimize, so we find
        # out all recorded kernels and from the image of each kernel delete
        # all the others to make compilation times faster.
        kname_to_hash = {}
        recordedKernels = []
        for kernelInfo in Path('./').glob('__omp*.json'):
            with open(kernelInfo, 'r') as f:
                info = json.load(f)
                kname = info['Name']
                recordedKernels.append(kname)
                kname_to_hash[kname] = str(kernelInfo).replace('.json', '')

        for k in kernelDescr.keys():
            toDeleteKernelList = [r for r in recordedKernels if r != k]
            if toDeleteKernelList:
                Kernel.extractKernels(k, kname_to_hash, toDeleteKernelList, self.Device)

        kernels = dict()
        for k, v in kernelDescr.items():
            if Path(f'{kname_to_hash[k]}.json').exists():
                kernel = Kernel(self.Device, k, kname_to_hash[k], self.resultsDir)
                print('Recordkernel', kernel)
                #FIXME: We should also support AMD in this point
                if isinstance(self.Device, Device.NVIDIA):
                    kernel.setOrigDescr( v['Registers Per Thread'],
                                         v['Static SMem'],
                                         v['Grid X'],
                                         v['Block X'],
                                         v['Duration'] )
                kernels[f'{kname_to_hash[k]}.json'] = kernel
            else:
                raise RuntimeError(f'Kernel {k} was profiled but not recorded')

        return application_time, kernels

    def name(self):
        return type(self).__name__

    def register_variant(self, vName, bTime, rTime, aTime, kernels):
        self.versions[vName] = BenchmarkExecution(vName, bTime, rTime, aTime, self.executableDir, kernels)

    def ckpt(self, fn):
        ckpt_fn = f'{fn}/{self.__class__.__name__}.ckpt.json'
        with open(ckpt_fn, 'w') as fd:
            json.dump(self.to_dict(), fd, indent = 6)

    #This function is called before "execute" and performs any necessary data preparation steps
    def preprocess(self, currentDirectory):
        pass

    @classmethod
    def load_ckpt(cls, path, device):
        ckpt_fn = f'{path}/{cls.__name__}.ckpt.json'
        if Path(ckpt_fn).exists():
            with open(ckpt_fn, 'r') as fd:
                data = json.load(fd)
            prof = Device.getDevice(device)
            bench = cls(prof, **data)
            return bench
        return None

class MakeBenchmark(BaseBenchmark):
    BUILDDIR='build'
    def __init__(self, Device, executable, root, **kwargs):
        super().__init__(Device, executable, root, **kwargs)
        self.executableDir = None
        self.buildDir = None

    def build(self, flags=None, optimal=None):
        if optimal is None:
          self.executableDir = self.buildDir = createDir(self.BUILDDIR)
        else:
          self.executableDir = self.buildDir = createDir(self.BUILDDIR + '_best_' + optimal)
        makeCmd = 'BUILDDIR={0} make '.format(self.buildDir)
        if flags is not None:
            makeCmd+=' '.join(['{0}="{1}"'.format(k,v) for k,v in flags.items() ])
        return execute_command(makeCmd, capture_output=True, cwd=self.root, shell=True)

    def clean(self, flags=None):
        self.executableDir = self.buildDir = createDir(self.BUILDDIR)
        makeCmd = 'BUILDDIR={0} make clean '.format(self.buildDir)
        if flags is not None:
            makeCmd+=' '.join(['{0}="{1}"'.format(k,v) for k,v in flags.items() ])
        return execute_command(makeCmd, capture_output=True, cwd=self.root, shell=True)

    @abstractmethod
    def env(self):
        return ''

    @abstractmethod
    def command(self):
        return ''

#There should be a better way to do this.
validBenchmarks=[BaseBenchmark.__name__, MakeBenchmark.__name__]

