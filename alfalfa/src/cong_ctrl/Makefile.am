AM_CPPFLAGS = -I$(srcdir)/../util $(CXX11_FLAGS)
AM_CXXFLAGS = $(PICKY_CXXFLAGS) $(NODEBUG_CXXFLAGS)

noinst_LIBRARIES = libalfalfacong.a

SUFFIXES = .asm
.asm.o:
	$(AS) $(ASFLAGS) -I$(srcdir)/../asm/ $<

libalfalfacong_a_SOURCES =	cong_ctrl.hh cong_ctrl.cc