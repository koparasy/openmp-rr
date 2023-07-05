LECPP ?=clang++
LEOPT ?=-O3
#LEFLAGS=-fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx90a -fopenmp-offload-mandatory -foffload-lto -Wl,--embed-bitcode
LEFLAGS?=-fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target=nvptx64 -march=sm_70 -fopenmp-offload-mandatory -foffload-lto -Wl,--embed-bitcode
CPPFLAGS=${LEOPT} ${LEFLAGS} -std=c++14
LDFLAGS?=
BUILDDIR?=./
EXEDIR?=${BUILDDIR}
RBUILDDIR=$(shell realpath ${BUILDDIR})
REXEDIR=$(shell realpath ${EXEDIR})
SRCS=lulesh.cc lulesh-viz.cc lulesh-util.cc lulesh-init.cc
OBJS=$(SRCS:%.cc=$(RBUILDDIR)/%.o)
BINS=${REXEDIR}/lulesh
#-mllvm --bo-omp-autotune=NumWarps_NumTeams_RegEffort_NumRegsPerThread_initSamples_optSamples.json

#This is done for AMD systems which can
#link in the libomptarget from the system installation
compDIR=$(shell dirname $(shell dirname $(shell which ${LECPP})))
LDFLAGS+=-L${compDIR}/lib -L${compDIR}/lib64

.PHONY = all info

all: ${BINS}

${BINS}: $(OBJS)
	${LECPP} ${LDFLAGS} ${CPPFLAGS} ${OBJS} -o $@

${RBUILDDIR}/%.o: %.cc
	$(LECPP) $(CPPFLAGS) -c $< -o $@

clean:
	@echo "Cleaning up ..."
	rm -rvf  $(OBJS) ${BINS}

info:
	$(info $$BINS is [${BINS}])
	$(info $$SRCS is [${SRCS}])
	$(info $$OBJS is [${OBJS}])
	$(info $$LECPP is [${LECPP}])
	$(info $$LEOPT is [${LEOPT}])
	$(info $$LEFLAGS is [${LEFLAGS}])
	$(info $$LDFLAGS is ${LDFLAGS})

