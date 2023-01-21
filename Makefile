DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/datefiles        $(DESTDIR)$(PREFIX)/bin
	cp bin/undatefiles      $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-datefiles
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-datefiles
## -- license --
