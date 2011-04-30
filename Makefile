# Makefile for running tests and installing the library.
# Requires a perl for install.
# Requires Perl's prove for running tests.

.PHONY: default usage test install __setup__

MODULE=path-manip.sh
INSTALLBIN=$(shell perl -MConfig -e 'print $$Config::Config{installsitebin}')
TESTLIB=tests

default: usage

usage:
	@echo 'Makefile usage:'
	@echo
	@echo '    > make test     # Run test suite'
	@echo '    > make install  # Install path-manip.sh'

test:
	prove $(TESTLIB)/

install: 
	cp -f $(MODULE) $(INSTALLBIN)/$(MODULE)
	chmod +x $(INSTALLBIN)/$(MODULE)

__setup__:
	cp -f ../c-tap-harness/tap/libtap.sh $(TESTLIB)/
