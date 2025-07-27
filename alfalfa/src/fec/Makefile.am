AM_CPPFLAGS = -I$(srcdir)/../util -I$(srcdir)/../net $(CXX11_FLAGS)
AM_CXXFLAGS = $(PICKY_CXXFLAGS) $(NODEBUG_CXXFLAGS)

noinst_LIBRARIES = libfec.a

SUFFIXES = .asm
.asm.o:
	$(AS) $(ASFLAGS) -I$(srcdir)/../asm/ $<

libfec_a_SOURCES = reed_solomon.cc