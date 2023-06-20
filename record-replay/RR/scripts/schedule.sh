#!/bin/bash

check_scheduler(){
  scheduler=$1
  if [[ "$scheduler" -eq "LSF" ]]; then
    return
  elif [[ "$scheduler" -eq "SLURM" ]]; then
    return
  elif [[ "$scheduler" -eq "FLUX" ]]; then
    return
  fi
  echo "scheduler not supported"
  exit
}

check_device(){
  device=$1
  if [[ "$device" -ne "nvidia" ]] && [[ "$device" -ne "amd" ]]; then
    echo "Device can be only 'nvidia' or 'amd'"
    exit
  fi
}

schedule_lsf(){
  cmd=$1
  name=$2
  echo $cmd
  echo $name
bsub -nnodes 1  -env "all" -J ${name} <<-END
#!/bin/bash
#BSUB -W 120
$cmd
END
}

schedule_flux(){
  cmd=$1
  name=$2
  flux --parent mini submit -N1 -x -t 120 --job-name=${name} $cmd
}

schedule_scenario(){
  benchmark=$1
  scenario=$2
  scratch=$3
  scheduler=$4
  kernel=$5
  device=$6
  cmd=$(echo "python optimize.py -b $benchmark -d $device -t $scratch --scenario $scenario --kernel $kernel> logs/${kernel}_${scenario}.out 2>logs/${kernel}_${scenario}.err")

  if [[ "$scheduler" -eq "LSF" ]]; then
    schedule_lsf "$cmd" ${kernel}
  elif [[ "$scheduler" -eq "SLURM" ]]; then
    echo "To be implemented"
  elif [[ "$scheduler" -eq "FLUX" ]]; then
    schedule_flux "$cmd" ${kernel}
  else
    echo "scheduler not supported"
    exit
  fi
}

benchmark=$1
scratch=$2
scheduler=$3
device=$4

if [[ "$#" -ne "4" ]]; then
  echo "Wrong command line"
  echo "Correct one should be:"
  echo "$0 'BENCHMARK' 'SCRATCH_DIR' 'LSF|SLURM|FLUX' 'nvidia|amd'"
  exit
fi

check_scheduler $scheduler
check_device $device
#Experiments need to be executed from root of record-replay directory
root_dir=$(dirname $(dirname $(realpath $0)))
curr_dir=$(pwd)
pushd $root_dir
mkdir -p logs

python optimize.py -b $benchmark --record -d $device -t $scratch

scenarios=(EM EMM BONN BOMN)
for e in ${scenarios[@]}; do
  echo $e
  #pick all recorded kernels
  kernels=$(python optimize.py -b $benchmark -prk -d $device --scenario $e | cut -d : -f 2 | grep "omp")
  for kernel in ${kernels[@]}; do
    schedule_scenario $benchmark $e $scratch $scheduler $kernel $device
  done
done

popd
