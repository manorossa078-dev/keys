.SILENT:

NAME = keys
VERSION = 0.0.1
ARCHIVE = $(NAME)-$(VERSION).tar.gz

.PHONY: install compress clean cleanfiles
.DEFAULT_GOAL := install

install: $(ARCHIVE)
	tar xzf $(ARCHIVE)

compress:
	tar czf $(ARCHIVE) keys sourceCode/ requirements.txt

clean:
	rm -rf $(ARCHIVE)

cleanfiles:
	rm -rf keys requirements.txt sourceCode/
