M := .cache/makes
$(shell [ -d $M ] || git clone -q https://github.com/makeplus/makes $M)
include $M/init.mk

PYTHON-VENV-SETUP := pip install -r requirements.txt

include $M/python.mk
include $M/typos.mk
include $M/clean.mk
include $M/shell.mk

MAIN-REPO  ?= git@github.com:yaml/www.yaml.com
STAGE-REPO ?= git@github.com:yaml/stage.yaml.com

MAKES-CLEAN := \
  site \
  main-site \
  stage-site \


serve: $(PYTHON-VENV)
	mkdocs $@

stage: stage-site
	cd $< && \
	  git init && \
	  git add -A && \
	  git commit -m 'Deploy to staging 1' && \
	  git push -f $(STAGE-REPO) HEAD:main
	$(RM) -r $<

publish: main-site
	cd $< && \
	  git init && \
	  git add -A && \
	  git commit -m 'Deploy to production' && \
	  git push -f $(MAIN-REPO) HEAD:gh-pages
	$(RM) -r $<

stage-site: lint $(PYTHON-VENV)
	mkdocs build -d $@
	echo 'stage.yaml.com' > $@/CNAME

main-site: lint $(PYTHON-VENV)
	mkdocs build -d $@

lint: $(TYPOS)
	typos

# This rule exists as a friendly way to print the virtualenv path:
venv: $(PYTHON-VENV)
	@echo $<
