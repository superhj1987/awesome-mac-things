prefix=/usr/local

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@mkdir -p $(prefix)/bin/
	@echo '#!/bin/bash' > $(prefix)/bin/atool
	@echo '##$(shell pwd)' >> $(prefix)/bin/atool
	@echo 'exec "$(shell pwd)/atool" "$$@"' >> $(prefix)/bin/atool
	@chmod 755 $(prefix)/bin/atool
	@chmod 755 atool
	@echo 'install finished! type "atool" to show usages.'
uninstall:
	@rm -f $(prefix)/bin/atool