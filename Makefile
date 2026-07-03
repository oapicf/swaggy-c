define deps_extra
	@if command -v apt-get > /dev/null 2>&1; then \
		if [ "$$(id -u)" = "0" ]; then \
			$(MAKE) deps-extra-apt; \
		else \
			sudo $(MAKE) deps-extra-apt; \
		fi; \
	fi
endef

ci: clean lint test

clean:
	rm -rf examples/*/clients/ examples/*/stage/

deps:
	$(call deps_extra)

deps-extra-apt:
	apt-get install -y markdownlint

lint:
	checkmake src/Makefile-swaggy-c

test:
	cd examples/file-spec/ && \
	  make -f ../../src/Makefile-swaggy-c clean deps list-generators init-spec init-generators-config generate update-to-latest
	cd examples/url-spec/ && \
	  make -f ../../src/Makefile-swaggy-c clean deps list-generators init-spec init-generators-config generate update-to-latest

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: all ci clean deps deps-extra-apt lint test release-major release-minor release-patch
