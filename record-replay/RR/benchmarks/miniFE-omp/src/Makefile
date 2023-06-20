#-----------------------------------------------------------------------
# This file compiles for OpenMP and MPI hybrid operations using the GNU
# compile chain.

MINIFE_TYPES =  \
        -DMINIFE_SCALAR=double   \
        -DMINIFE_LOCAL_ORDINAL=int      \
        -DMINIFE_GLOBAL_ORDINAL=int \
	-DMINIFE_RESTRICT=__restrict__

MINIFE_MATRIX_TYPE = -DMINIFE_CSR_MATRIX

#-----------------------------------------------------------------------

CFLAGS = $(LEOPT) $(LEFLAGS) -D__STRICT_ANSI__ -ffp-contract=fast

CXXFLAGS = $(CFLAGS)

CPPFLAGS = -I. -I../utils -I../fem $(MINIFE_TYPES) \
	$(MINIFE_MATRIX_TYPE) #\

LDFLAGS=${LELDFLAGS} $(CFLAGS)

CXX=$(LECPP)
CC=$(LECC)

include make_targets
