prefix = /usr/local

all: src/hello

src/hello: src/hello.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDCFLAGS) -o $@ $^

install: src/hello
	install -D src/hello \
	$(DESTDIR)$(prefix)/bin/hello

clean:
	-rm -f src/hello

distclean: clean

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/hello

.PHONY: all install clean distclean uninstall
