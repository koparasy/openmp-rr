#!/bin/bash


check_device(){
  device=$1
  if [[ "$device" -ne "nvidia" ]] && [[ "$device" -ne "amd" ]]; then
    echo "Device can be only 'nvidia' or 'amd'"
    exit
  fi
}

device=$1

if [[ "$#" -ne "1" ]]; then
  echo "Wrong command line"
  echo "Correct one should be:"
  echo "$0 'nvidia|amd'"
  exit
fi

check_device $device
#Experiments need to be executed from root of record-replay directory
root_dir=$(dirname $(dirname $(realpath $0)))
curr_dir=$(pwd)
pushd $root_dir
mkdir -p logs

#STEP 1
python optimize.py -b benchmarks/vAdd/Test.py --record -d $device

scenarios=(EM BONN BOMN)
for e in ${scenarios[@]}; do
  echo $e
  #pick all recorded kernels
  # STEP 2
  kernels=$(python optimize.py -b benchmarks/vAdd/Test.py -prk -d $device --scenario $e | cut -d : -f 2 | grep "omp")
  for kernel in ${kernels[@]}; do
    # STEP 3
    python optimize.py -b benchmarks/vAdd/Test.py -d $device --scenario $e --kernel $kernel --init-samples 3 --opt-samples 10
  done
  #STEP 6
  python optimize.py -b benchmarks/vAdd/Test.py -d $device --scenario $e --run-optimal
done

popd
