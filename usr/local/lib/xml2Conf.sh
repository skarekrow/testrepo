#
# Configuration file for using the XML library in GNOME applications
#

prefix=@prefix@
exec_prefix=@exec_prefix@
includedir=@includedir@
libdir=@libdir@

XML2_LIBDIR="-L/usr/local/lib"
XML2_LIBS="-lxml2 -lz  -L/usr/lib -lm "
XML2_INCLUDEDIR="-I/usr/local/include/libxml2 -I/usr/include"
MODULE_VERSION="xml2-2.9.3"

