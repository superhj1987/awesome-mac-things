prefix=/usr/local

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@mkdir -p $(prefix)/bin/
	@echo '#!/bin/bash' > $(prefix)/bin/mthings
	@echo '##$(shell pwd)' >> $(prefix)/bin/mthings
	@echo 'exec "$(shell pwd)/mthings" "$$@"' >> $(prefix)/bin/mthings
	@chmod 755 $(prefix)/bin/mthings
	@chmod 755 mthings
	@echo 'install finished! type "mthings" to show usages.'
uninstall:
	@rm -f $(prefix)/bin/mthings