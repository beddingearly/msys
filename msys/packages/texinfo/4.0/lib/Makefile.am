## Makefile.am for texinfo/lib.
## $Id: Makefile.am,v 1.1 2002-05-13 22:15:46 earnie Exp $
## Run automake in .. to produce Makefile.in from this.

noinst_LIBRARIES = libtxi.a
INCLUDES = -I../intl

# Don't need to list alloca.c, etc., Automake includes them.
libtxi_a_SOURCES = getopt.c getopt.h getopt1.c substring.c system.h \
                   xexit.c xmalloc.c xstrdup.c
libtxi_a_LIBADD = @LIBOBJS@ @ALLOCA@
libtxi_a_DEPENDENCIES = $(libtxi_a_LIBADD)

## xx configure for bzero?, clib, other common stuff

EXTRA_DIST = README
