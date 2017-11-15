export DESTDIR ?=
export PREFIX ?= /usr/local
export CROSS_COMPILE =

export INCDIR ?= $(PREFIX)/include/cfg
export LIBDIR ?= $(PREFIX)/lib
export BINDIR ?= $(PREFIX)/bin
export MANDIR ?= $(PREFIX)/share/man

.PHONY: all
all:
	$(MAKE) -C cfg
	$(MAKE) -C cfg-test
#	$(MAKE) -C doxygen
#	$(MAKE) -C examples

.PHONY: clean
clean:
	$(MAKE) -C cfg clean
	$(MAKE) -C cfg-test clean
#	$(MAKE) -C doxygen clean
#	$(MAKE) -C examples clean

.PHONY: install
install:
	install -d $(DESTDIR)$(INCDIR)/
	install include/cfg/Config.h $(DESTDIR)$(INCDIR)/
	install include/cfg/Parser.h $(DESTDIR)$(INCDIR)/
	
	$(MAKE) -C cfg install
	$(MAKE) -C cfg-test install

