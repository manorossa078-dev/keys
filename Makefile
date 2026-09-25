.SILENT:

NAME = keys
VERSION = 0.0.1
ARCHIVE = $(NAME)-$(VERSION).tar.gz

.PHONY: install compress clean cleanfile
.DEFAULT_GOAL := install

install: $(ARCHIVE)
	tar xzf $(ARCHIVE)

compress:
	tar czf $(ARCHIVE) keys

clean:
	rm -rf $(ARCHIVE)

cleanfile:
	rm keys