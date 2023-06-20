#!/bin/bash
#
host=$(hostname)
host=${host//[0-9]/}

mkdir -p build/${host}
echo $host
cd build/${host}

cmake \
    -DLT_LLVM_INSTALL_DIR=/usr/WS2/koparasy/PARCO/llvm/qmcpack/install/${host}/ \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    ../../

make
cd -
