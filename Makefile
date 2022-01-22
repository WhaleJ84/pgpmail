.POSIX:

SHELL = /bin/sh
OS = $(shell uname -s)

ifndef PREFIX
	PREFIX = /usr/local
endif
ifndef MANPREFIX
	MANPREFIX = $(PREFIX)/share/man
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/pgpmail $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/pgpmail
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp share/man/pgpmail.1 $(DESTDIR)$(MANPREFIX)/man1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/pgpmail.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/pgpmail
	rm -f $(DESTDIR)$(MANPREFIX)/man1/pgpmail.1

.PHONY: install uninstall
