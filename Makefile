PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
DATADIR ?= $(PREFIX)/share
PICKLEDIR = $(DATADIR)/poke/pickles
DESTDIR ?= /

.PHONY: all
all:
	@echo 'There is nothing to build, just use make install.'

.PHONY: install
install:
	install -Dm 755 fatable    $(DESTDIR)$(BINDIR)/fatable
	install -Dm 755 fatanalyse $(DESTDIR)$(BINDIR)/fatanalyse
	install -Dm 755 fatcluster $(DESTDIR)$(BINDIR)/fatcluster
	install -Dm 755 fatdir     $(DESTDIR)$(BINDIR)/fatdir
	install -Dm 755 fatinfo    $(DESTDIR)$(BINDIR)/fatinfo
	install -Dm 755 fatmap     $(DESTDIR)$(BINDIR)/fatmap
	install -Dm 644 fat.pk     $(DESTDIR)$(PICKLEDIR)/fat.pk
