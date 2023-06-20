# The Bayesian Optimization Record Replay Scripts

This directory and its sub-directories contain the source code scripts
for the construction of auto-tuned kernel codes using the record-replay mechanism
and Bayesian Optimization search.


## Getting Started with the Record Replay Scripts

## Installing python Requirements
The list of python package requirements is listed under the `./requirements.txt` file, you can install it by issuing `python -m pip install -r requirements.txt`
In the case of a nvidia system please install also 'python -m pip install pycuda==2022.2.2'

## Demo to optimize a vector addition example code

1. The first step of our harness record the application execution. To do so, we need to execute the following command:

    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py --record -d nvidia
    ```

    The python script `optimize.py` will record the benchmark on a nvidia device (in case of an AMD system please use 'amd' as parameter'). The benchmark description is defined in `benchmarks/vAdd/Test.py` file that uses a simple DSL to define the compilation and execution command line. After the command has finished there are two directories created. The first, called `ckpts/${HOSTNAME}/TEST.ckpt.json` stores the execution time of all kernels in the vector addition program, the time required to build the program and the time required to record it. The second directory, `execute/TEST/${HOSTNAME}/` contains all the recorded files of the execution, including the recorded kernels IR file. In the current example the following command:

    ```bash
    cat ckpts/${HOSTNAME}/TEST.ckpt.json
    ```

    Outputs the following information:

    ```json
    {
      "executable": "vecAdd",
      "resultsdir": "SOMEPATH",
      "root": "SOMEPATH",
      "Profiler": {
            "Name": "nvidia",
            "Capability": 7.0
      },
      "versions": {
            "record": {
                  "name": "record",
                  "BuildTime": 4.571264743804932,
                  "OuterTime": 1.5456063747406006,
                  "InnerTime": "0.589359",
                  "ExecutableDir": "SOMEPATH",
                  "Kernels": {
                        "__omp_offloading_6869da5ad5578e24_l16.json": {
                              "Name": "__omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16",
                              "HashName": "__omp_offloading_6869da5ad5578e24_l16",
                              "NumRegs": 56,
                              "SMem": 1.546875,
                              "NumTeams": 1024,
                              "NumThreads": 128,
                              "ExecTime": 16794.0,
                              "DB": "SOMEPATH",
                              "Profiler": {
                                    "Name": "nvidia",
                                    "Capability": 7.0
                              },
                              "recorded": true
                        }
                  }
            },
            "original": {
                  "name": "original",
                  "BuildTime": 4.571264743804932,
                  "OuterTime": 0.7782347202301025,
                  "InnerTime": "0.261622",
                  "ExecutableDir": "SOMEPATH",
                  "Kernels": {
                        "__omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16.json": {
                              "Name": "__omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16",
                              "HashName": "__omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16",
                              "NumRegs": 56,
                              "SMem": 1.546875,
                              "NumTeams": 1024,
                              "NumThreads": 128,
                              "ExecTime": 16411.0,
                              "DB": "SOMEPATH",
                              "Profiler": {
                                    "Name": "nvidia",
                                    "Capability": 7.0
                              },
                              "recorded": false
                        }
                  }
            }
      }
    }
    ```
   At this point the JSON file contains information regarding 2 benchmark versions, the recorded one and the original one (when recording is disabled). Every version has profiled timing of the entire
   application as reported by the application itself and as reported by the outer process (python harness) and information regarding every kernel in the system. The recorded version encodes kernel names through a 
   hashing scheme to make sure the RR-created files (we refer to this encoding as RR-handle) have valid linux file names.

2. The rest of the optimization process requires these RR-handles. To get a printout of all kernels and their handles you can issue the following command:
   ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia -prk | column -s : -t
    ```

    Which outputs:
    ```bash
    Kernel Name                                      RR Kernel Handler
    __omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16  __omp_offloading_6869da5ad5578e24_l16.json
    ```

    Both kernel names and RR-Kernel Handlers are unique per system.

3. To optimize a single kernel of an application invoke the script as follows:

    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia --scenario $SCENARIO --kernel <RR-Kernel-Handler>
    ```

    The parameter `--kernel <RR-Kernel-Handler>` instructs the optimizer to only optimize the specific kernel. In our case we set RR-Kernel-Handler to `__omp_offloading_4cd36591e19c694a_l16`.

    The parameter `scenario` accepts any of the next four choices:

    * `EM`: In this scenario we only tune the launch bound restricting the maximum number of threads to be used at runtime. We will always launch the kernel with this maximal number, though it is passed as runtime parameter and cannot be folded into the application code. We explore only values that are multiple to the warp / wave size of the respective architecture, i.a., 32 for NVIDIA and 64 for the AMD GPU. Since 1024 is the hardware defined upper bound, the search space is tractable

    * `EMM`: In this scenario we tune both launch bounds parameters. As before, kernels are launched with the maximum number of threads defined in the launch bounds and those values are again multiples of the warp / wave size.

    * `BONN`: In this scenario we employ BO to tune only parameters that can be adjusted at runtime without requiring re-compilation (via JIT) of the kernel.

    * `BOMN`: In this scenario we explore both the launch parameters and the execution time parameters. As the search space is even larger than `BONN`, we again employ BO to identify configurations that maximize kernel speedup.

    In the cases of BO optimization the user can select also the number of iterations to run the optimizer for. To do so, the user can optionally pass the option `--init-samples 3` and `--opt-samples 10` to perform 3 random samples and 10 BO optimization samples. By default the scripts uses 30 and 200 samples respectively.

    Finally, in the case of running the optimizer on a network file system such as NFS, Lustre, VAST, GPFS, during replay the recorded images are loaded from network. Thus the process is slower. We provide the additional option `--tmp-dir` that can define a scratch directory to save temporal files either in memory or in a local hard drive, such as an SSD. We typically set this value to `/dev/shm/`.

4. Querying the obtained kernel speedup can be done through the following command:

    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia --scenario $SCENARIO --stats | column -t -s :
    ```

    The variable `$SCENARIO` must be set. The column `line` indicates the source code line this kernel was defined. The columns Speedup indicates the speedup of this kernel and the columns `NumTeams, NumThreads, MinTeams, MaxThreads` indicate the discovered optimal parameters (`0|-1` reflect the default OpenMP value)

    In our system the following command:
    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia --scenario EM --stats | column -t -s :
    ```

    Outputs the following information:
    ```bash
    Name                                             Speedup             NumTeams  NumThreads  MinTeams  MaxThreads
    __omp_offloading_4d_84a6373d__Z6vecAddPdS_m_l16  1.0224369071371067  -1        928         -1        928
    ```

5. The last step of the optimization process requires as to embed the optimal configuration back to the original application binary. To do so please issue the following command:

    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia --scenario EM --run-optimal
    ```

    The command `--run-optimal` compiles and runs the optimal configuration once.

6. To check the obtained speedups and results of all optimized benchmark configuration please issue the command:

    ```bash
    python optimize.py -b benchmarks/vAdd/Test.py -d nvidia --summary
    ```

    The command output should look like:

    ```bash
    ***************************************************************************
    Time in seconds (Kernels (line number)) show the time of a single invocation
              original        EM
    EndToEnd  0.261622  0.297601
    l16       0.000016  0.000016
    ***************************************************************************


    ****************************
    ********* Speedup *********
              original        EM
    EndToEnd       1.0  0.879103
    l16            1.0  1.028001
    ****************************
    ```

7. The script [scripts/vAdd.sh](./scripts/vAdd.sh) performs all steps from 1 to 5 and optimizes `vecAdd` for all scenarios, except EMM, and builds a new binary for every of those scenarios. EMM requires 200+ iterations to exhaustively search the configuration space. For this small example we skip EMM. The rest of the scenarios should run fast as we only perform 13 BO steps.

To run the script please issue:

```bash
./scripts/vAdd.sh nvidia
```

## Reproduce experiments

To reproduce the experiments you can run:

```bash
./scripts/schedule.sh <benchmark> /dev/shm/ <scheduler> <device>
```

* <benchmark> can take either the values of benchmarks/miniFE-omp/MINIFE.py  or benchmarks/lulesh-omp/Lulesh.py to execute minife, or lulesh.
* <scheduler> can take either the value of FLUX or LSF depending on whether the cluster supports the lsf or flux job scheduler.
* <device> can take the values of either nvidia or amd to execute the scripts for the respective GPU Device.

The script performs the following actions:

1. Record the benchmark
2. Optimizes every kernel using every possible scenario (EM, EMM, BOMN, BONN). For every combination of a scenario, kernel it invokes a new job on the cluster to perform the optimization.
3. Terminates.

Once all jobs are finished all kernels of the benchmark will be optimized. To embed them back to the original application you can execute:

```
./scripts/embed.sh <benchmark> <device>
```

To embded the optimized kernels back to the original application. The script creates a different executable for every scenario and executes the scenario once.
Once the embedding terminates the benchmark is optimized. Please invoke:

```bash
python optimize.py -b <benchmark> -d <device> --summary
```

To obtain an estimate of the performance benefits of the application.

### OpenMC

In the context of the reproducability we provide all configurations used to reproduce OpenMC. However the software stack environment needs to match the OpenMC requirements.
Effectively a working version of HDF5 needs to be provided, all the software must be compiled with cuda/11.1.0. Once those changes are done you can invoke the previous Scripts
by passing at the benchmark parameter the value: `benchmarks/openmc/OpenMC.py`. The OpenMC.py clones the inputs used by OpenMC and the respective source code installs it and starts
 recording it.
