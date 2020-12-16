ifeq ($(PROJECT_SITE_ROOT),)
  $(error See https://project-site.org/site/installation)
endif

GITHUB_SOURCE_REPO := git@github.com:yaml/www.yaml.com
include $(PROJECT_SITE_ROOT)/share/.makefile-vars.mk

# Local variables:
BUILD_DEPS := rfc-pages
SPEC_REPO := git@github.com:yaml/yaml-spec
SPEC_DIR := .spec
RFC_PAGES := $(INPUT_DIR)/spec/rfc/rfc*

export PATH := $(ROOT)/bin:$(PATH)

include $(PROJECT_SITE_ROOT)/share/.makefile-rules.mk

clean::
	rm -fr $(SPEC_DIR)

force:

rfc-pages: $(SPEC_DIR) force
	make $(RFC_PAGES)

$(SPEC_DIR):
	git clone $(SPEC_REPO) $@
	find $@ -type f | xargs touch

$(INPUT_DIR)/spec/rfc/rfc-%: $(SPEC_DIR)/rfc/RFC-% force
	rfc-formatter < $< > $@
