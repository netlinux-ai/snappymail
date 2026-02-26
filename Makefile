PREFIX ?= /usr
DESTDIR ?=

install:
	mkdir -p $(DESTDIR)$(PREFIX)/share/snappymail
	mkdir -p $(DESTDIR)/var/lib/snappymail
	mkdir -p $(DESTDIR)/etc/nginx/snippets
	cd snappymail-src && find . -mindepth 1 -maxdepth 1 ! -name data -exec cp -a {} $(DESTDIR)$(PREFIX)/share/snappymail/ \;
	ln -sf /var/lib/snappymail $(DESTDIR)$(PREFIX)/share/snappymail/data
	cp nginx-snappymail.conf $(DESTDIR)/etc/nginx/snippets/snappymail.conf
