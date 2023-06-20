#!/bin/bash

check_device(){
  device=$1
  if [[ "$device" -ne "nvidia" ]] && [[ "$device" -ne "amd" ]]; then
    echo "Device can be only 'nvidia' or 'amd'"
    exit
  fi
}

benchmark=$1
device=$2

if [[ "$#" -ne "2" ]]; then
  echo "Wrong command line"
  echo "Correct one should be:"
  echo "$0 'BENCHMARK' 'nvidia|amd'"
  exit
fi

check_device $device
root_dir=$(dirname $(dirname $(realpath $0)))
curr_dir=$(pwd)
pushd $root_dir

scenarios=(EM EMM BONN BOMN)
for e in ${scenarios[@]}; do
  python optimize.py -b $benchmark -d $device --scenario $e --run-optimal
done

popd
