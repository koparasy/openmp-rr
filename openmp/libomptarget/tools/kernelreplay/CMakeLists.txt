##===----------------------------------------------------------------------===##
#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
##===----------------------------------------------------------------------===##
#
# Build llvm-omp-kernel-replay tool
#
##===----------------------------------------------------------------------===##

libomptarget_say("Building the llvm-omp-kernel-replay tool")

add_openmp_tool(llvm-omp-kernel-replay llvm-omp-kernel-replay.cpp)

target_compile_definitions(llvm-omp-kernel-replay PRIVATE
  DEBUG_PREFIX="KERNEL-REPLAY"
)

llvm_update_compile_flags(llvm-omp-kernel-replay)

target_include_directories(llvm-omp-kernel-replay PRIVATE
  ${LIBOMPTARGET_INCLUDE_DIR}
)
target_link_libraries(llvm-omp-kernel-replay PRIVATE
  LLVMSupport
  omp
  omptarget
)
