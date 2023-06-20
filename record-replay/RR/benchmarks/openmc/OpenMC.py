import itertools
import json
import math
import os
import sys
from pathlib import Path
import numpy as np
import argparse
import glob

from RRUtil.Benchmark import BaseBenchmark as BB
import RRUtil.Device as Device
import RRUtil.Utilities as Utilities

class OPENMC(BB):
    def __init__(self, prof, **kwargs):
        kwargs.pop("executable", None)
        kwargs.pop('resultsdir', None)
        kwargs.pop('root', None)
        root = os.path.split(os.path.realpath(__file__))[0]
        self.applicationProblemDescrDir = Path(f'{root}/openmc_offloading_benchmarks/progression_tests')
        self.applicationProblems = ['XL', 'XXL', 'large', 'medium', 'small']
        self.currentProblem = 'XXL'
        self.inputDataDir = f'{root}/nnnndc_hdf5/'
        self.envVars = {
                'OMP_TARGET_OFFLOAD' : 'mandatory',
                'OPENMC_CROSS_SECTIONS' : f'{root}/nndc_hdf5/cross_sections.xml'
        }

        super().__init__(prof,  "openmc", root, **kwargs)

    def build(self, fn=None, useCase=None):
        cwd = os.getcwd()
        ld_lib = os.getenv('LD_LIBRARY_PATH')
        self.envVars['LD_LIBRARY_PATH'] = f'{cwd}/install:{ld_lib}'
        cmd= []
        cmd.append('cmake')
        #TODO: For other architectures we need to fix this.
        #Openmc pulls in cmake_presets with various parameters
        #being set by each architecture
        target = self.Device.getTarget()
        if target == 'nvptx64':
            targetArch = 'llvm_v100'
        elif target == 'amdgcn-amd-amdhsa':
            targetArch = 'llvm_mi250'

        install_dir = 'install'
        build_dir = 'build'

        if useCase is not None:
            install_dir = install_dir + '_best_' + useCase
            build_dir = build_dir + '_best_' + useCase

        cmd.append(f'--preset={targetArch}')
        cmd.append(f'-DCMAKE_INSTALL_PREFIX={cwd}/{install_dir}')
        cmd.append(f'-DCMAKE_CXX_COMPILER=clang++')
        cmd.append(f'-DCMAKE_C_COMPILER=clang')
        cmd.append('-DCMAKE_BUILD_TYPE=Release')
        cmd.append('-Doptimize=on')
        cmd.append('-Ddevice_printf=off')
        cmd.append('-Ddebug=off')
        cmd.append('-Dcuda_thrust_sort=off')
        cmd.append('-Dsycl_sort=off')
        if fn is None:
            compOptions = Device.GetCompileOptions(self.Device)
        else:
            compOptions = Device.GetCompileOptions(self.Device) + f' -mllvm --bo-omp-autotune={fn}'
        cmd.append(f'-DCMAKE_CXX_FLAGS="{compOptions} -fopenmp-cuda-mode'
                    ' -Dgsl_CONFIG_CONTRACT_CHECKING_OFF -Wno-tautological-constant-compare '
                    ' -Wno-openmp-mapping"')
        cmd.append(f'{self.root}/openmc')

        Utilities.createDir(f'{build_dir}')
        self.executableDir = f'{cwd}/{install_dir}'
        self.buildDir = f'{cwd}/{build_dir}'
        #Keep current dir
        command = ' '.join(cmd)
        command = 'cd build; ' + command
        Utilities.execute_command(command, shell=True)
        return Utilities.execute_command('cd build; make -j 20 VERBOSE=1; make install', shell=True)

    def clean(self):
        return ''

    def command(self):
        for fp in glob.glob(f'{self.applicationProblemDescrDir}/{self.currentProblem}/*', recursive=False):
            fn=Path(fp)
            name = fn.name
            execPath = Path(name)
            if ( execPath.exists() ):
                #if it exists it must be a symlink
                if not execPath.is_symlink():
                    raise RuntimeError(f'Path {execPath} exists and is not a symlink')

                if execPath.readlink() != fn:
                    raise RuntimeError(f'Symlink is not pointing to correct file', execPath, fn)
            else: #Symlink does not exist
                link = Path(name)
                link.symlink_to(fn, target_is_directory=False)
        cwd = os.getcwd()
        return  f'{self.executableDir}/bin/openmc --event | tee debug.log'

    def env(self):
        envVar =' '.join([f'{k}={v}' for k,v in self.envVars.items()])
        return envVar

    def getApplicationTime(self, stdout):
        pattern='Total time in simulation(\s+)= (.*) seconds'
        tmp = re.findall(pattern, stdout)
        return tmp[0][1]

    def preprocess(self, currentDirectory):
        fp = Path(self.root) / Path('openmc')
        if not fp.exists():
            print('Cloning OpenMC code')
            #0fbd5d9b7e92981701bdde61419e19e95f5e5e6d
            cmd='git clone --recursive https://github.com/exasmr/openmc.git; cd openmc; git checkout 0fbd5d9b7e92981701bdde61419e19e95f5e5e6d'
            Utilities.execute_command(cmd, cwd=self.root, shell=True)

        # I will put the perfromance tests under the root dir. It will avoid
        # re-copying those tests in the system
        pTests = Path(self.root) / Path('openmc_offloading_benchmarks')
        if not pTests.exists():
            cmd='git clone https://github.com/jtramm/openmc_offloading_benchmarks.git'
            Utilities.execute_command(cmd, cwd=self.root, shell=True)

        # Download and unzip OpenMC's cross section data files
        iFiles = Path(self.root) / Path('nndc_hdf5')
        if not iFiles.exists():
            Utilities.execute_command('wget https://anl.box.com/shared/static/vht6ub1q27hujkqpz1k0s48lrv44op0v.tgz', cwd=self.root, shell=True)
            Utilities.execute_command('tar -xzvf vht6ub1q27hujkqpz1k0s48lrv44op0v.tgz', cwd=self.root, shell=True)
            Utilities.execute_command('rm vht6ub1q27hujkqpz1k0s48lrv44op0v.tgz', cwd=self.root, shell=True)

