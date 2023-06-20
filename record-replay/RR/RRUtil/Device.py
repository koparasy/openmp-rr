import re
import pandas as pd
import subprocess
from pathlib import Path
import shutil
import os
import math

from RRUtil.Utilities import execute_command
from RRUtil.Utilities import createDir

def Stage(StageRootDir, StageTempDir, StagePattern):
    def StageDecorator(decoratedFunc):
        def wrapper(*args,**kwargs):
            if StageRootDir is None:
                result = decoratedFunc(*args, **kwargs)
                return result

            currentDir = Path().absolute()
            tmpDir = createDir(StageRootDir / Path(StageTempDir) )
            for fn in currentDir.glob(StagePattern + "*"):
                shutil.copyfile(fn, Path(tmpDir) / Path(fn.name))
                print('Copy: Src: {0} Dst: {1}'.format(fn, Path(tmpDir) / Path(fn.name)))
            print('Push Directory')
            os.chdir(tmpDir)
            result = decoratedFunc(*args, **kwargs)
            print('Pop directory')
            os.chdir(currentDir)
            shutil.rmtree(tmpDir)
            return result
        return wrapper
    return StageDecorator

class DeviceSingleton(type):
    def __init__(self, *args, **kwargs):
        super(DeviceSingleton, self).__init__(*args, **kwargs)
        self.__instances__ = dict()

    def __call__(self, *args, **kwargs):
        dev = 0
        if 'device' in kwargs:
            dev = kwargs['device']

        if dev not in self.__instances__:
            self.__instances__[dev] = super(DeviceSingleton, self).__call__(*args, **kwargs)
        return self.__instances__[dev]

class NVIDIA(metaclass=DeviceSingleton):
    __loaded__ = False
    def __init__(self, drv, StageDir=None, device=0):
        self.drv = drv
        self.StageDir = StageDir
        self.NumDevices = self.drv.Device.count()
        self.Arch = 'sm_70'
        self.Target = 'nvptx64'
        if device < self.NumDevices:
            gpuDevice = self.drv.Device(device)
            self.Capability = float( '%d.%d' % gpuDevice.compute_capability() )
            self.TotalMemory = gpuDevice.total_memory()
            self.WarpSize = float(gpuDevice.WARP_SIZE)
            self.ThreadsSMP = float(gpuDevice.MAX_THREADS_PER_MULTIPROCESSOR)
            self.WarpsSMP = float(self.ThreadsSMP / self.WarpSize)
            self.SharedMemoySMP = float(gpuDevice.MAX_SHARED_MEMORY_PER_MULTIPROCESSOR)
            self.MaxSharedMemBlock = float(gpuDevice.MAX_SHARED_MEMORY_PER_BLOCK)
            self.MaxRegBlock = float(gpuDevice.MAX_REGISTERS_PER_BLOCK)
            self.RegFileSizeSMP = float(gpuDevice.MAX_REGISTERS_PER_MULTIPROCESSOR)
            self.MaxRegBlock = float(gpuDevice.MAX_REGISTERS_PER_BLOCK)
            self.MaxThreadBlockSize = float(gpuDevice.MAX_THREADS_PER_BLOCK)
            self._profile = 'nvprof --print-gpu-trace --normalized-time-unit ns --csv --log-file {output} {executable}'
            self._env = ''
            #self.Name = gpuDevice.name()
            self.Name = 'nvidia'
            self.optConfigs = ['MaxThreads', 'MinTeams', 'NumThreads', 'NumTeams']
            self.optMap = {
                'MaxThreads' : 'maxntidx',
                'MinTeams' : 'minctasm',
                'NumThreads' : 'threads',
                'NumTeams' : 'teams'
            }
#            self.optConfigs = [
#                                   ['NumWarps', 'NumTeams', 'NumRegsPerThread', 'RegEffort'],
#                                   ['NumWarps', 'NumTeams'],
#                               ]
            self.compilationConfigs = [ 'MaxThreads', 'MinTeams']

    def to_dict(self):
        return { 'Name' : self.Name,
                 'Capability' : self.Capability }

    def print(self):
        print("WarpSize: ", self.WarpSize)
        print("Warps per SMP: " , self.WarpsSMP)
        print("Threads Per SMP:" , self.ThreadsSMP)
        print("Shared Mem Per SMP", self.SharedMemoySMP)
        print("Max Shared Mem", self.MaxSharedMemBlock)
        print("Reg File SMP:", self.RegFileSizeSMP)
        print("Max Registers per Block:", self.MaxRegBlock)
        print("Max Thread Block Size", self.MaxThreadBlockSize)

    def getMaxMem(self):
        return 15

    def convert(self, k, v):
      if v is None:
          return { k : -1 }
      return { k : v }

    def transformConfig(self, options):
      config = {}
      for k, v in self.optMap.items():
        config.update( self.convert( v, options.get(k, None) ) )
      return config


    def getLaunchBounds(self, options, TripCount):
        MaxThreads = self.MaxThreadBlockSize
        WarpSize = self.WarpSize
        MaxNumberOfWarps = MaxThreads / WarpSize
        MaxThreadsPerMP =  self.ThreadsSMP

        MaxThreadFrac = options.get('MaxThreads', 1.0)
        MaxThreadsPerBlock = int(math.ceil(MaxThreadFrac * MaxNumberOfWarps) * WarpSize)

        MaxBlocks = int(math.floor(MaxThreadsPerMP / MaxThreadsPerBlock))

        if MaxBlocks > 32:
            MaxBlocks = 32

        MinFracTeam = options.get('MinTeams', None)
        if MinFracTeam is None:
            MinBlocksPerMultiprocessor = 1
        else:
            MinBlocksPerMultiprocessor = int(math.ceil(MinFracTeam* (MaxBlocks)))
            # Corner case where MinFracTeam > 1.0. We should not take ceil, but floor
            if MinBlocksPerMultiprocessor * MaxThreadsPerBlock > MaxThreadsPerMP:
                MinBlocksPerMultiprocessor = int(math.floor(MaxThreadsPerMP/MaxThreadsPerBlock))

        # If we are not setting the number of threads explicitly, then use the one we compile with
        ThreadFrac = options.get('NumThreads', 1.0)
        NumThreads = int((math.ceil((ThreadFrac * MaxThreadsPerBlock)/WarpSize) * WarpSize))
        if NumThreads > MaxThreadsPerBlock:
            NumThreads = MaxThreadsPerBlock

        fracTeams = options.get('NumTeams', None)
        NumTeams = None
        if fracTeams is not None:
            NumTeams = int(math.ceil( (TripCount / NumThreads) * fracTeams ))

        return {
                 'MaxThreads'   : MaxThreadsPerBlock if ('MaxThreads' in options) else None,
                 'MinTeams'     : MinBlocksPerMultiprocessor if ('MinTeams' in options) else None,
                 'NumThreads'   : NumThreads if ('NumThreads' in options ) else None,
                 'NumTeams'     : NumTeams if ('NumTeams' in options ) else None
               }

    def parse(self, fn, keepMaxTeam=True, dropSingleTeams=False):
        df = pd.read_csv(fn, sep=',', skiprows=3)
        metric = df.Duration[0]
        roi_columns = ['Name', 'Device', 'Grid X', 'Block X', 'Registers Per Thread', 'Static SMem', 'Dynamic SMem', 'Duration']
        Types = { 'Grid X' : 'int32',
                  'Block X' : 'int32',
                  'Registers Per Thread' :'int32',
                  'Static SMem' : 'float32',
                  'Dynamic SMem' : 'float32',
                  'Duration' : 'float32' }
        df = df[df.Name.notna()]
        df = df[df.Name.str.contains('__omp_offloading')]
        df = df[roi_columns]
        df = df.astype(Types)
        df = df.groupby(['Name', 'Device', 'Grid X', 'Block X', 'Registers Per Thread', 'Static SMem', 'Dynamic SMem']).mean().reset_index()
        df = df.set_index("Name")
        pd.set_option('display.max_rows', None)
        pd.options.display.max_colwidth = 1000
        # Find indexes with maximum Grid value
        if keepMaxTeam:
            idx = df.groupby(['Name'])['Grid X'].transform(max) == df['Grid X']
            df = df[idx]
        # Drop cases of single team kernels. Those are likely to be constructors
        # or kernels that we cannot optimize
        if dropSingleTeams:
            idx = df.groupby(['Name'])['Grid X'].transform(max) != 1
            df = df[idx]
        return df.to_dict(orient='index')

    def renameSymbols(self, inputName, outName):
        opt_cmd = ['opt']
        tuning_pass = os.getenv('RR_TUNING_PASS')
        assert tuning_pass, 'Expected env var for the tuning pass .so'
        opt_cmd.append(f'--load={tuning_pass}')
        opt_cmd.append('--enable-new-pm=0')
        opt_cmd.append('--global-symbol-rename-pass')
        opt_cmd.append(f'{inputName}')
        opt_cmd.append(f'-o {outName}')
        opt_cmd = ' '.join(opt_cmd)
        print(opt_cmd)
        execute_command(opt_cmd, capture_output=True, shell=True)

    def deviceCompile(self, original, Name, HashName, **kwargs):
        numRegs = kwargs.get('NumRegsPerThread', None)
        regAggr = kwargs.get('RegEffort', None)
        MaxThreads = kwargs.get('MaxThreads', None)
        MinTeams = kwargs.get('MinTeams', None)

        opt_cmd= ['opt', f'{original}', f'-o {HashName}.opt.out']

        if (MaxThreads is not None) or (MinTeams is not None) :
            tuning_pass = os.getenv('RR_TUNING_PASS')
            assert tuning_pass, 'Expected env var for the tuning pass .so'
            opt_cmd.append(f'--load={tuning_pass}')
            opt_cmd.append('--enable-new-pm=0')
            opt_cmd.append('--legacy-nvptx-tune-pass')
            opt_cmd.append(f'--nvptx-function-name={Name}')

        if MaxThreads is not None:
            opt_cmd.append(f'--max-threads={MaxThreads}')

        if MinTeams is not None:
            opt_cmd.append(f'--min-blocks={MinTeams}')
        opt_cmd = ' '.join(opt_cmd)
        print(opt_cmd)
        execute_command(opt_cmd, capture_output=True, shell=True)

        llc_cmd= ' '.join(['llc','-mcpu=sm_70','-mattr=+ptx76', '-O3', f'-o {HashName}.llc.out', f'{HashName}.opt.out'])
        print(llc_cmd)
        llc_ps = execute_command(llc_cmd, capture_output=True, shell=True)
        ptxas_cmd = ['ptxas', '-v', '--gpu-name', 'sm_70', '-O3', '--warn-on-spills',
             f'{HashName}.llc.out', '-o', f'{HashName}.image']
        if not isinstance(numRegs, type(None)):
            ptxas_cmd.append(f'-maxrregcount {numRegs}')
        if not isinstance(regAggr, type(None)):
            ptxas_cmd.append(f'-regUsageLevel {regAggr}')
        ptxas_cmd = ' '.join(ptxas_cmd)
        print(ptxas_cmd)
        code, stdout, stderr = execute_command(ptxas_cmd, capture_output=True, shell=True)
        print(stdout)
        print(stderr)
        return self.parsePTXAS(stdout, stderr)

    def parsePTXAS(self, stdout, stderr):
        ptxasOut = stderr.split("\n")
        startFlag = False
        kernelName = ''
        kernels = []
        spills = []
        registerRE = "Used (\d+) registers"
        shmemRE = "(\d+) bytes smem"
        cmemRE = "(\d+) bytes cmem\[(\d+)\]"
        spillRe = "Registers are spilled to local memory in function '(\w+)', (\d+) bytes spill stores, (\d+) bytes spill loads"

        for l in ptxasOut:
            if "ptxas warning : Registers are spilled to local memory in function " in l:
                tmp = re.findall(spillRe, l)
                for c in tmp:
                    spills.append([c[0], int(c[1]), int(c[2])])
            elif "ptxas info    : Compiling entry function" in l:
                if not startFlag:
                    startFlag = True
                    kernelName = l.split(' ')[9].replace("'", "")
                    print('Found:', kernelName)
            if ("ptxas info    : Used" in l) and startFlag:
                regs = re.findall(registerRE, l)
                shmem = re.findall(shmemRE, l)
                cmem = re.findall(cmemRE,l)
                totalRegs = 0
                totalShMem = 0
                totalCMem = 0
                for r in regs:
                    totalRegs += int(r)
                for s in shmem:
                    totalShMem += int(s)
                for c in cmem:
                    #Currently I am ignoring banks
                    totalCMem += int(c[0])
                kernels.append([kernelName, totalRegs, totalShMem, totalCMem])
                startFlag = False
            elif ("ptxas info    : Used" in l):
                print("Should never happen")
        ret = dict()
        for k in kernels:
            ret[k[0]] = [k[1], k[2], k[3], 0, 0]

        for s in spills:
            if s[0] in ret:
                ret[s[0]][3] = s[1]
                ret[s[0]][4] = s[2]
        return ret

    def command(self):
        return self._profile

    def env(self):
        return self._env

    def getNumDevices(self):
        return self.NumDevices

    def getOptConfigs(self):
        return self.optConfigs

    def getCompilationConfigs(self):
        return self.compilationConfigs

    def isValidConfig(self, NumThreads, NumTeams):
        if ( NumThreads == 32 ):
            return NumTeams <= 32
        return NumThreads * NumTeams <= self.ThreadsSMP

    def getDefaultBounds(self, config):
        assert config in self.compilationConfigs, f'Config {config} is not valid'
        if config == 'NumRegsPerThread':
            return (32, 255.99, 1)
        elif config == 'RegEffort':
            return (1, 10.99, 1)
        elif config == 'MaxThreads':
            return (32, 1024+1, int(self.WarpSize))
        elif config == 'MinTeams':
            return (1, int(self.ThreadsSMP/ self.WarpSize)+1, 1)
        else:
            assert False, f'getDefaultBounds not impl. for {config}'

    def getTarget(self):
        return self.Target

    def getArch(self):
        return self.Arch

    def getStageDir(self):
        return self.StageDir

    @classmethod
    def Load(cls, StageDir, device):
        try:
            import pycuda
            import pycuda.driver as drv
            if not cls.__loaded__:
                drv.init()
                cls.__loaded__ = True
            return cls(drv, StageDir=StageDir, device=device)
        except ImportError:
            raise Exception('NVIDIA requires pycuda installed')

class AMDGPU(metaclass=DeviceSingleton):
    __loaded__ = False
    def __init__(self, StageDir=None, device=0):
        self.NumDevices = 8
        self.Target='amdgcn-amd-amdhsa'
        self.Arch = 'gfx90a'
        self.StageDir = StageDir

        if device < self.NumDevices:
            print(f'Setting up device {device} from {self.NumDevices}')
            self.TotalMemory = 68702699520
            self.WarpSize = 64
            self.ThreadsSMP = 2048
            self.WarpsSMP = 32
            self.SharedMemoySMP = 65536
            self.MaxSharedMemBlock = 65536
            self.MaxRegBlock = 0
            self.RegFileSizeSMP = 0
            self.MaxRegBlock = 0
            self.MaxThreadBlockSize = 1024
            # XXX: rocprof with --stats APPENDS to the <kernel name>.json name,
            # making it unusable for the replay. We use timestamps and calculate
            # the duration the same as --stats does.
            self._profile = 'rocprof --timestamp on -o {output} {executable}'
            self._env = ''
            self.Name = 'amd'
            #self.optConfigs = [ ['NumWarps', 'NumTeams', 'FlatWorkGroupSize', 'WavesPerEU' ], [ 'NumWarps', 'NumTeams' ] ]
            #self.optConfigs = [ ['NumWarps', 'NumTeams', 'FlatWorkGroupSize', 'WavesPerEU' ]]
            #self.optConfigs = [ ['NumWarps', 'NumTeams', 'WavesPerEU' ]]
            #self.optConfigs = [ ['WavesPerEU'] ]
            self.optConfigs = ['MaxThreads', 'MinTeams', 'NumThreads', 'NumTeams']
            #self.compilationConfigs = [ 'FlatWorkGroupSize', 'WavesPerEU' ]
            self.compilationConfigs = [ 'MaxThreads', 'MinTeams']

            self.optMap = {
                'MaxThreads' : 'maxntidx',
                'MinTeams' : 'minctasm',
                'NumThreads' : 'threads',
                'NumTeams' : 'teams'
            }

    def getMaxMem(self):
        return 65

    def isValidConfig(self, NumThreads, NumTeams):
        return NumThreads * NumTeams <= self.ThreadsSMP

    def getWavesPerEU(self, MaxThreads, MinTeams):
      if MaxThreads is not None:
        MinWarpsPerCU = int((MinTeams * MaxThreads ) / self.WarpSize)
      else:
        MinWarpsPerCU = int((MinTeams * self.MaxThreadBlockSize) / self.WarpSize)
      MinWarpsPerEU = int(MinWarpsPerCU / 4)
      return MinWarpsPerEU

    def transformConfig(self, options):
      config = {}
      if 'MaxThreads' in options:
          config['maxntidx'] = options['MaxThreads']
      if 'MinTeams' in options:
          config['minctasm'] = self.getWavesPerEU(options['MaxThreads'], options['MinTeams'])

      if 'NumTeams' in options:
          config['teams'] = options['NumTeams']

      if 'NumThreads' in options:
          config['threads'] = options['NumThreads']
      return config

    def getLaunchBounds(self, options, TripCount):
        MaxThreads = self.MaxThreadBlockSize
        WarpSize = self.WarpSize
        MaxNumberOfWarps = MaxThreads / WarpSize
        MaxThreadsPerMP =  self.ThreadsSMP

        MaxThreadFrac = options.get('MaxThreads', 1.0)
        MaxThreadsPerBlock = int(math.ceil(MaxThreadFrac * MaxNumberOfWarps) * WarpSize)

        MaxBlocks = int(math.floor(MaxThreadsPerMP / MaxThreadsPerBlock))

        MinFracTeam = options.get('MinTeams', None)
        if MinFracTeam is None:
            MinBlocksPerMultiprocessor = 1
        else:
            MinBlocksPerMultiprocessor = int(math.ceil(MinFracTeam* (MaxBlocks)))
            # Corner case where MinFracTeam > 1.0. We should not take ceil, but floor
            if MinBlocksPerMultiprocessor * MaxThreadsPerBlock > MaxThreadsPerMP:
                MinBlocksPerMultiprocessor = int(math.floor(MaxThreadsPerMP/MaxThreadsPerBlock))

        # If we are not setting the number of threads explicitly, then use the one we compile with
        ThreadFrac = options.get('NumThreads', 1.0)
        NumThreads = int((math.ceil((ThreadFrac * MaxThreadsPerBlock)/WarpSize) * WarpSize))
        if NumThreads > MaxThreadsPerBlock:
            NumThreads = MaxThreadsPerBlock

        fracTeams = options.get('NumTeams', None)
        NumTeams = None
        if fracTeams is not None:
            NumTeams = int(math.ceil( (TripCount / NumThreads) * fracTeams ))

        return {
                 'MaxThreads'   : MaxThreadsPerBlock if ('MaxThreads' in options) else None,
                 'MinTeams'     : MinBlocksPerMultiprocessor if ('MinTeams' in options) else None,
                 'NumThreads'   : NumThreads if ('NumThreads' in options ) else None,
                 'NumTeams'     : NumTeams if ('NumTeams' in options ) else None
               }

    def to_dict(self):
        return { 'Name' : self.Name }

    def print(self):
        print("WarpSize: ", self.WarpSize)
        print("Warps per SMP: " , self.WarpsSMP)
        print("Threads Per SMP:" , self.ThreadsSMP)
        print("Shared Mem Per SMP", self.SharedMemoySMP)
        print("Max Shared Mem", self.MaxSharedMemBlock)
        print("Reg File SMP:", self.RegFileSizeSMP)
        print("Max Registers per Block:", self.MaxRegBlock)
        print("Max Thread Block Size", self.MaxThreadBlockSize)

    def parse(self, fn, keepMaxTeam=True, dropSingleTeams=False):
        df = pd.read_csv(fn, sep=',')
        df.rename(columns={'KernelName' : 'Name'}, inplace=True)
        df['Duration'] = df['EndNs'] - df['BeginNs']
        metric = df.Duration[0]
        roi_columns = ['Name','gpu-id','grd','wgr','lds','scr', 'arch_vgpr','accum_vgpr','sgpr','wave_size','Duration']
        df.Duration = pd.to_numeric(df.Duration)
        df = df[df.Name.str.contains('__omp_offloading')]
        df = df[roi_columns]
        grp_columns = ['Name','gpu-id','grd','wgr','lds','scr', 'arch_vgpr','accum_vgpr','sgpr','wave_size']
        df = df.groupby(grp_columns).mean().reset_index()
        df['Name'] = df['Name'].str.replace('.kd', '', regex=False)
        df = df.set_index('Name')
        pd.options.display.max_colwidth = 1000
        if keepMaxTeam:
            idx = df.groupby(['Name'])['grd'].transform(max) == df['grd']
            df = df[idx]

        if dropSingleTeams:
            idx = df.groupby(['Name'])['grd'].transform(max) != 1
            df = df[idx]

        return df.to_dict(orient='index')

    #This is not needed for AMD AFAIK. Keep it though
    def renameSymbols(self, inputName, outName):
        opt_cmd = ['opt']
        tuning_pass = os.getenv('RR_TUNING_PASS')
        assert tuning_pass, 'Expected env var for the tuning pass .so'
        opt_cmd.append(f'--load={tuning_pass}')
        opt_cmd.append('--enable-new-pm=0')
        opt_cmd.append('--global-symbol-rename-pass')
        opt_cmd.append(f'{inputName}')
        opt_cmd.append(f'-o {outName}')
        opt_cmd = ' '.join(opt_cmd)
        print(opt_cmd)
        execute_command(opt_cmd, capture_output=True, shell=True)

    def deviceCompile(self, original, Name, HashName, **kwargs):
        #assert all([k in self.compilationConfigs for k in kwargs.keys()]), f'kwargs keys {kwargs.keys()} must be <= {self.compilationConfigs}'

        flatWorkGroupSize = '{0},{0}'
        MaxThreads = kwargs.get('MaxThreads', None)

        if MaxThreads is not None:
            flatWorkGroupSize = f'{self.WarpSize},{MaxThreads}'

        wavesPerEU = f'{0},{0}'
        MinTeams = kwargs.get('MinTeams', None)
        if MinTeams is not None:
            if MaxThreads is not None:
                MinWarpsPerCU = int((MinTeams * MaxThreads ) / self.WarpSize)
            else:
                MinWarpsPerCU = int((MinTeams * self.MaxThreadBlockSize) / self.WarpSize)
            MinWarpsPerEU = int(MinWarpsPerCU / 4)
            #We omit the max number as it is an optional argument
            wavesPerEU = f'{MinWarpsPerEU}'

        compile_cmd = ['opt', f'{original}', f'-o {HashName}.image']

        if (MinTeams is not None) or (MaxThreads is not None):
            tuning_pass = os.getenv('RR_TUNING_PASS')
            assert tuning_pass, 'Expected env var for the tuning pass .so'
            compile_cmd.append(f'--load={tuning_pass}')
            compile_cmd.append('--enable-new-pm=0')
            compile_cmd.append('--legacy-amdgpuattribute-pass')

        if MaxThreads is not None:
            compile_cmd.append(f'--amdgpu-flat-work-group-size={flatWorkGroupSize}')

        if MinTeams is not None:
            compile_cmd.append(f'--amdgpu-waves-per-eu={wavesPerEU}')

        compile_cmd = ' '.join(compile_cmd)

        execute_command(compile_cmd, capture_output=True, shell=True)
        # XXX: llc produces invalid code that the AMD plugin cannot read:
        # "Error in hsa_executable_load_code_object: HSA_STATUS_ERROR_INVALID_CODE_OBJECT: The code object is invalid.
        #compile_cmd = ' '.join(['llc','-O3', f'-o {Name}.image', f'{Name}.opt.out',
        #    '-filetype=obj',
        #    '-march=amdgcn',
        #    '-mcpu=gfx90a',
        #    '-mattr="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64"'])
        #execute_command(compile_cmd, capture_output=True, check=True, shell=True)

        return None

    def command(self):
        return self._profile

    def env(self):
        return self._env

    def getNumDevices(self):
        return self.NumDevices

    def getOptConfigs(self):
        return self.optConfigs

    def getCompilationConfigs(self):
        return self.compilationConfigs

    def getDefaultBounds(self, config):
        assert config in self.compilationConfigs, f'Config {config} is not valid'
        if config == 'FlatWorkGroupSize':
            return (1, 1024.99)
        elif config == 'WavesPerEU':
            # TODO: what are the bounds?
            return (1, 100.99)
        elif config == 'MaxThreads':
            return (self.WarpSize, 1024+1, (self.WarpSize))
        elif config == 'MinTeams':
            return (1, int(self.ThreadsSMP/ self.WarpSize)+1, 1)
        else:
            assert False, f'getDefaultBounds not impl. for {config}'

    def getTarget(self):
        return self.Target

    def getArch(self):
        return self.Arch

    def getStageDir(self):
        return self.StageDir

def getDevice(device, StageDir=None, device_no=0):
    if device == 'nvidia':
        NV = NVIDIA.Load(StageDir, device_no)
        if isinstance(NV, NVIDIA):
            if NV.getNumDevices() >= 1:
                return NV
    elif device == 'amd':
        return AMDGPU(StageDir, device_no)
    else:
        raise Exception('Device must be nvidia or amd')

def GetCompileOptions(Device):
    return  ('-fopenmp  -fopenmp-offload-mandatory -foffload-lto'
             ' -fopenmp-targets={0}'
             ' -Xopenmp-target={0} -march={1}'
             ' -Wl,--embed-bitcode').format(Device.getTarget(), Device.getArch())

