#!/bin/bash

# This script compiles LLVM to enable offloading to both AMD and NVIDIA devices

system=$1
nThreads=$2
numArgs=$#

if [[ "$numArgs" != 2 ]]; then
  echo "Wrong command line"
  echo "Please execute as $0 'nvidia|amd' 'number of threads to use to install'"
  exit
fi

CURDIR=$(pwd)
LLVM_SRC_DIR=$(realpath $CURDIR)
BUILD_DIR="$(realpath $CURDIR)/build_${system}_60/"
INSTALL_DIR="$(realpath $CURDIR)/install_${system}_60/"

python3 -m ensurepip
python3 -m pip install --upgrade pip
python3 -m pip install -r ${CURDIR}/record-replay/RR/requirements.txt

if [[ "${system}" == "nvidia" ]]; then
  python3 -m pip install pycuda==2022.2.2
fi

GCC_BIN=$(dirname $(dirname $(which gcc)))
echo "I am using $GCC_BIN as default 'gcc' compiler"

mkdir -p ${INSTALL_DIR}

PACKAGES="clang"
RUNTIMES="openmp"
if [[ "$system" == "nvidia" ]]; then
  export TARGETS="NVPTX"
  RRMACRO="-DLIBOMPTARGET_JIT_NVPTX"
elif [[ "$system" == "amd" ]]; then
  export TARGETS="AMDGPU"
  RRMACRO="-DLIBOMPTARGET_JIT_AMDGPU"
else
  echo "system (first command line argument) can either be 'nvidia' or 'amd'"
  exit
fi

mkdir -p ${BUILD_DIR}
mkdir -p ${INSTALL_DIR}

echo "'${BUILD_DIR}'"
pushd $BUILD_DIR

cmake \
  -G Ninja \
  -DCMAKE_C_COMPILER=$(which gcc) -DCMAKE_CXX_COMPILER=$(which g++) \
  -DGCC_INSTALL_PREFIX=${GCC_BIN} \
  -DCMAKE_CXX_FLAGS=${RRMACRO} \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DLLVM_TARGETS_TO_BUILD='Native' \
  -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=${TARGETS} \
  -DLLVM_ENABLE_PROJECTS='clang' \
  -DLLVM_ENABLE_RUNTIMES='openmp' \
  -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
  -DLLVM_OPTIMIZED_TABLEGEN=off \
  -DBUILD_SHARED_LIBS=on \
  -DLLVM_ENABLE_ASSERTIONS=${ASSERTIONS} \
  -DOPENMP_ENABLE_LIBOMPTARGET_PROFILING=off \
  -DLIBOMPTARGET_ENABLE_DEBUG=on \
  -DLLVM_CCACHE_BUILD=off \
  ${LLVM_SRC_DIR}/llvm

ninja -j ${nThreads} install

mkdir -p build_passes/
pushd build_passes/

cmake \
    -G Ninja \
    -DLT_LLVM_INSTALL_DIR=${INSTALL_DIR} \
    -DCMAKE_C_COMPILER=$(which gcc) \
    -DCMAKE_CXX_COMPILER=$(which g++) \
    -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
    ${LLVM_SRC_DIR}/record-replay/Passes/

ninja -j ${nThreads} install
popd
popd

# Once installed, you'll need to update your environment as:
ENV_FILE=${CURDIR}/env_${system}.sh
echo "export PATH=${INSTALL_DIR}/bin:\$PATH" > "${ENV_FILE}"
echo "export LD_LIBRARY_PATH=${INSTALL_DIR}/lib:\$SPACK_ENV/.spack-env/view/lib:\$SPACK_ENV/.spack-env/view/lib:\$SPACK_ENV/.spack-env/view/lib64:\$SPACK_ENV/.spack-env/view/lib64:\$LD_LIBRARY_PATH" >> "${ENV_FILE}"
echo "export LIBRARY_PATH=${INSTALL_DIR}:\$LIBRARY_PATH" >> "${ENV_FILE}"
echo "export RR_TUNING_PASS=${INSTALL_DIR}/lib/libTuneDevice.so" >> "${ENV_FILE}"

