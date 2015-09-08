CRYPTOBOX_VERSION := v0.3.1
CRYPTOBOX         := cryptobox-$(CRYPTOBOX_VERSION)
CRYPTOBOX_GIT_URL := git@github.com:romanb/cryptobox.git

build/src/$(CRYPTOBOX):
	mkdir -p build/src
	cd build/src && \
	git clone $(CRYPTOBOX_GIT_URL) $(CRYPTOBOX) && \
	cd $(CRYPTOBOX) && \
	git checkout $(CRYPTOBOX_VERSION)
