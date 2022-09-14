DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-datefiles/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-datefiles
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-datefiles
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/datefiles' ; cp bin/datefiles   $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/undatefiles'; cp bin/undatefiles $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
