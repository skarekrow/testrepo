GENCCODE_ASSEMBLY_TYPE=
SO=so
SOBJ=so
A=a
LIBPREFIX=lib
LIB_EXT_ORDER=.55.1
COMPILE=cc -D_REENTRANT  -DU_HAVE_ELF_H=1 -DU_HAVE_ATOMIC=1 -DU_HAVE_TIMEZONE=0  -DU_ATTRIBUTE_DEPRECATED= -O2 -pipe  -fstack-protector -fno-strict-aliasing -std=c99 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -c
LIBFLAGS=-I/usr/local/include -DPIC -fPIC
GENLIB=cc -O2 -pipe  -fstack-protector -fno-strict-aliasing -std=c99 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -fstack-protector  -shared 
LDICUDTFLAGS=
LD_SONAME=-Wl,-soname -Wl,
RPATH_FLAGS=
BIR_LDFLAGS=-Wl,-Bsymbolic
AR=ar
ARFLAGS=r
RANLIB=ranlib
INSTALL_CMD=install -s -m 555
