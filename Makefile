SHELL := bash

ROOT := $(shell pwd)
PROJECT_SITE := .project-site
SITE_BUILDER := bootstrap45
SITE_DIR := src
BUILD_DIR := .gh-pages
PORT ?= $(shell grep '^  port: ' $(SITE_DIR)/ps-config.yaml | awk '{print $$2}')

SPEC_REPO := git@github.com:yaml/yaml-spec
SPEC_DIR := .spec

RFC_PAGES := $(SITE_DIR)/spec/rfc/rfc*

export PATH := $(ROOT)/bin:$(PROJECT_SITE)/bin:$(PATH)

default:

generate: rfc-pages
	echo $(RFC_PAGES)

build local publish shell: $(PROJECT_SITE) $(BUILD_DIR) rfc-pages
	project-site --$@ \
	    --input=$(SITE_DIR) \
	    --output=$(BUILD_DIR) \
	    --builder=$(SITE_BUILDER) \
	    --port=$(PORT)

serve: build
	( \
	    cd $(BUILD_DIR); \
	    python -m SimpleHTTPServer $(PORT); \
	)

clean:
	rm -fr $(PROJECT_SITE) $(BUILD_DIR) $(SPEC_DIR)

$(PROJECT_SITE):
ifeq ($(GIT_AUTHOR_NAME),Ingy döt Net)
	ln -s ../project-site $@
else
	git clone git@github.com:ingydotnet/project-site $@
endif

$(BUILD_DIR):
	git branch --track $(@:.%=%) origin/$(@:.%=%) 2>/dev/null || true
	git worktree add -f $@ $(@:.%=%)
	touch $@/.project-site-build

force:

rfc-pages: $(SPEC_DIR) force
	make $(RFC_PAGES)

$(SPEC_DIR):
	git clone $(SPEC_REPO) $@
	find $@ -type f | xargs touch

$(SITE_DIR)/spec/rfc/rfc-%: $(SPEC_DIR)/rfc/RFC-% force
	rfc-formatter < $< > $@
