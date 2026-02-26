PREFIX ?= /usr
DESTDIR ?=

install:
	mkdir -p $(DESTDIR)$(PREFIX)/share/snappymail
	mkdir -p $(DESTDIR)/var/lib/snappymail
	mkdir -p $(DESTDIR)/etc/nginx/snippets
	cp -a snappymail-src/. $(DESTDIR)$(PREFIX)/share/snappymail/
	rm -rf $(DESTDIR)$(PREFIX)/share/snappymail/data
	ln -sf /var/lib/snappymail $(DESTDIR)$(PREFIX)/share/snappymail/data
	cp nginx-snappymail.conf $(DESTDIR)/etc/nginx/snippets/snappymail.conf
