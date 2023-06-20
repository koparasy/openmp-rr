LECPP?=clang++
LECC?=clang
LEOPT ?=-O3
#LEFLAGS=-fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx90a -fopenmp-offload-mandatory -foffload-lto -Wl,--embed-bitcode
LEFLAGS ?=-fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target=nvptx64 -march=sm_70 -fopenmp-offload-mandatory -foffload-lto -Wl,--embed-bitcode
LELDFLAGS?=-Wl,--embed-bitcode
BUILDDIR?=./
EXEDIR?=${BUILDDIR}

RBUILDDIR=$(shell realpath ${BUILDDIR})
REXEDIR=$(shell realpath ${EXEDIR})

#This is done for AMD systems which can
#link in the libomptarget from the system installation
compDIR=$(shell dirname $(shell dirname $(shell which ${LECPP})))
LELDFLAGS+=-L${compDIR}/lib -L${compDIR}/lib64

all:
	$(MAKE) -C src LECPP=${LECPP} LECC=${LECC} LEOPT="${LEOPT}" LEFLAGS="${LEFLAGS}" LELDFLAGS="${LELDFLAGS}" BUILDDIR=${RBUILDDIR} EXEDIR=${REXEDIR}

clean:
	$(MAKE) clean -C src LECPP=${LECPP} LECC=${LECC} LEOPT="${LEOPT}" LEFLAGS="${LEFLAGS}" LELDFLAGS="${LELDFLAGS}" BUILDDIR=${RBUILDDIR} EXEDIR=${REXEDIR}
