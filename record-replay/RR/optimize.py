import itertools
import socket
import json
import math
import os
import time
import sys
from pathlib import Path
import numpy as np
import argparse
from importlib import import_module
import pandas as pd

script = os.path.dirname(os.path.realpath(__file__))
sys.path.append(script)
import inspect

import RRUtil.Benchmark as Benchmark
import RRUtil.Device as Device
import RRUtil.Utilities as Utilities

def getUserClass(pathToCLS):
  _path = Path(pathToCLS).resolve()
  _dir = _path.parent
  sys.path.append(str(_dir))
  _module = import_module(_path.stem)

  for name, objs in inspect.getmembers(_module):
    if inspect.isclass(objs):
      for obj in objs.__bases__:
        if str(obj.__name__) in Benchmark.validBenchmarks:
          return getattr(_module, name)
  raise ImportError("Could Not find Benchmark description in {0}".format(pathToCLS))


def main():
    parser = argparse.ArgumentParser(description='Autotuner using OMP replayer and Bayesian Optimization to figure optimal numThreads/NumTeams/Registers/RegPressure configurations')
    parser.add_argument('-b', '--benchmark', dest='benchmark', default=str,  help='Benchmark to optimize (.py) file', required=True)
    parser.add_argument('--record', dest='record', action=argparse.BooleanOptionalAction, default=False,  help='Record initial application steps')
    parser.add_argument('--pending', dest='pending', action=argparse.BooleanOptionalAction, default=False,  help='get pending kernel names')
    parser.add_argument('--stats', dest='stats', action=argparse.BooleanOptionalAction, default=False,  help='get stats of finished kernels')
    parser.add_argument('-s', '--save-best-config', dest='save', action=argparse.BooleanOptionalAction, default=False, help="Save best configuration in benchmark directory")
    parser.add_argument('--kernel', dest='kernel', type=str, default='all', help='Which kernel(s) to optimize')
    parser.add_argument('--run-optimal', dest='run', action=argparse.BooleanOptionalAction, default=False, help='Run Optimal Benchmark configuration')
    parser.add_argument('-v', '--visualize', dest='visualize', action=argparse.BooleanOptionalAction, default=False,  help='Visualize Best speedup')
    parser.add_argument('-d', '--device', dest='device', choices=['nvidia', 'amd'], required=True)
    parser.add_argument('--init-samples', dest='initSamples', default=30, type=int)
    parser.add_argument('--opt-samples', dest='optSamples', default=200, type=int)
    parser.add_argument('--tmp-dir', '-t', dest='tmpDir', default=None, type=str)
    parser.add_argument('--scenario', dest='scenario', nargs='?', choices=['EM', 'EMM', 'BONN', 'BOMN'])
    parser.add_argument('--print-recorded-kernels', '-prk', dest='rkernel', action=argparse.BooleanOptionalAction, default=False, help='Print recorded kernels and their names')
    parser.add_argument('--summary', dest='summary', action=argparse.BooleanOptionalAction, default=False, help='Print recorded kernels and their names')
    args = parser.parse_args()
    record = args.record
    kernel = args.kernel
    pending = args.pending
    stats = args.stats
    visualize = args.visualize
    make_best = args.run
    print_record = args.rkernel
    device = Device.getDevice(args.device, args.tmpDir)
    store_best = args.save
    initSteps = args.initSamples
    optSteps = args.optSamples
    choices = { 'EM' : ( 'exhaustive', 'MaxThreads'.split(' ') ),
                'EMM' : ( 'exhaustive', 'MaxThreads MinTeams'.split(' ') ),
                'BONN' : ( 'bo', 'NumTeams NumThreads'.split(' ') ),
                'BOMN' : ( 'bo', 'MaxThreads MinTeams NumTeams NumThreads'.split(' '))
                }

    if not (record or print_record or args.summary):
      algorithm, userScenarios = choices[args.scenario]

    host = "".join(filter(lambda x: not x.isdigit(), socket.gethostname()))
    ckpt_dir = f'ckpts/{host}/'

    ckpt_dir = Utilities.createDir(ckpt_dir)

    BENCHCLS = getUserClass(args.benchmark)

    if not (record or print_record or args.summary):
        if userScenarios is None:
            print("Please provide a scenario to optimize for")
            sys.exit()

    if not (record or print_record or args.summary):
        for s in userScenarios:
            if s not in device.getOptConfigs():
                print(f"Configuration parameter not support {s}", device.getOptConfigs())
                sys.exit()

    if (not (record or print_record or args.summary)) and (algorithm  == 'exhaustive'):
        for s in userScenarios:
            if s not in device.getCompilationConfigs():
                print("Exhaustive is only supported for compile time configurations")
                sys.exit()

    optParams = dict()
    if not (record or print_record or args.summary):
        for config in userScenarios:
            optParams[config] = True
        optParams['initSamples'] = initSteps
        optParams['optSamples'] = optSteps

    executeDir = Utilities.createDir(f'execute//{BENCHCLS.__name__}/{host}')
    resultsDir = Utilities.createDir(f'results/{BENCHCLS.__name__}/{host}')

    os.chdir(executeDir)

    bench = BENCHCLS.load_ckpt(ckpt_dir, args.device)

    if record:
        if not isinstance(bench, BENCHCLS):
            bench = BENCHCLS(device, resultsDir=resultsDir)
            os.chdir(executeDir)
            bench.preprocess(executeDir)
            bench.clean()
            build_start = time.time()
            bench.build()
            build_end = time.time()

            rr_start = time.time()
            app_time, kernels = bench.execute(Record=True)
            rr_end = time.time()

            bench.register_variant('record', build_end - build_start, rr_end - rr_start, app_time, kernels)

            rr_start = time.time()
            app_time, kernels = bench.execute(Record=False)
            rr_end = time.time()

            bench.register_variant('original',build_end - build_start, rr_end - rr_start, app_time, kernels)

            bench.ckpt(ckpt_dir)
        else:
            print('Application is already recorded')
    else:
        if isinstance(bench, BENCHCLS):
            if pending:
                executeDir = f'execute/{bench.name()}/'
                for k,v in bench.getKernels('record').items():
                    numExperiments = 0
                    numExperiments += v.Pending(**optParams)
                    print(f'PendingKernel:{k} {numExperiments}')
            elif print_record:
                bench.printKernels()
                return
            elif args.summary:
                times = bench.getExecutionTimes(drop=['record'])
                pd.set_option('display.max_columns', None)
                pd.set_option('display.max_rows', None)
                #df = pd.DataFrame(results, columns=printColumns)
                title='Time in seconds (Kernels (line number) show the time of a single invocation'
                print()
                df = pd.DataFrame.from_dict(times) #pd.DataFrame(results, columns=printColumns)
                df_str = df.to_string()
                numChars = len(df_str.split('\n')[0])
                if len(title) < numChars:
                    rem = int((numChars - len(title)) / 2)
                    title = ''.join(['*']* rem) + title + ''.join(['*']* rem)

                if len(title) > numChars:
                    numChars = len(title)

                print('*'*numChars)
                print(title)
                print(df_str)
                print('*'*numChars)
                print()
                title = ' Speedup '
                print()
                columns = df.columns.tolist()
                columns.remove('original')
                for c in columns:
                    df[c] = df['original'].astype(float) / df[c].astype(float)
                df['original'] = df['original'].astype(float) / df['original'].astype(float)
                df_str = df.to_string()
                numChars = len(df_str.split('\n')[0])
                if len(title) < numChars:
                    rem = int((numChars - len(title)) / 2)
                    title = ''.join(['*']* rem) + title + ''.join(['*']* rem)

                if len(title) > numChars:
                    numChars = len(title)
                print('*'*numChars)
                print(title)
                print(df_str)
                print('*'*numChars)
                print()
                print()
            elif stats:
                print('Name:Speedup:NumTeams:NumThreads:MinTeams:MaxThreads')
                for k, v in bench.getKernels('record').items():
                    c, speedup, options = v.Stats(**optParams)
                    opts=':'.join( f'{k}={v}' for k,v in options.items() )
                    print("{0}:{1}:{2}:{3}:{4}:{5}".format(v.Name, speedup,
                      options.get('NumTeams', -1),
                      options.get('NumThreads', -1),
                      options.get('MinTeams', -1),
                      options.get('MaxThreads', -1)))
            elif make_best:
                best_configs = list()

                for k, v in bench.getKernels('record').items():
                    c, speedup, options = v.Stats(**optParams)
                    options = device.transformConfig(options)
                    best_configs.append( { 'kernel' : v.Name, **options } )

                fn = Path(bench.root) / Path(device.Name + args.scenario + '.json')

                with open(str(fn), 'w') as fd:
                    json.dump(best_configs, fd, indent=6)

                build_start = time.time()
                bench.build(fn=fn, useCase=args.scenario)
                build_end = time.time()

                opt_rstart = time.time()
                app_time, kernels = bench.execute(Record=False)
                opt_rend = time.time()

                bench.register_variant(args.scenario,
                                       build_end - build_start,
                                       opt_rend - opt_rstart, app_time,
                                       kernels)

                bench.ckpt(ckpt_dir)

            else:
                if not isinstance(bench, BENCHCLS):
                    print('You need to first record the application and get a checkpoint of all files')
                    sys.exit()
                AnalysisKernels = list()
                if kernel.lower() == 'all':
                    AnalysisKernels = bench.getKernels().keys()
                else:
                    AnalysisKernels.append(kernel)

                for k in AnalysisKernels:
                    kernel = bench.getKernels('record')[k]
                    if algorithm == 'bo':
                      kernel.BO(**optParams, Policy='bo')
                    elif algorithm == 'exhaustive':
                      kernel.optimize_exhaustive(**optParams, Policy ='exhaustive')
                    else:
                      assert False, 'opt must be bo or exhaustive'
        else:
            print('You need to record application first')

if __name__ == "__main__":
    main()

