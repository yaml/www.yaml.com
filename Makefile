M := .cache/makes
$(shell [ -d $M ] || git clone -q https://github.com/makeplus/makes $M)
include $M/init.mk

PYTHON-VENV-SETUP := pip install -r requirements.txt

include $M/python.mk
include $M/typos.mk
include $M/clean.mk
include $M/shell.mk

STAGE-REPO ?= git@github.com:yaml/stage.yaml.com.git

MAKES-CLEAN := \
  site \


serve: $(PYTHON-VENV)
	mkdocs $@

stage: site
	cd $< && \
	  git init && \
	  git add -A && \
	  git commit -m 'Deploy to staging 1' && \
	  git push -f $(STAGE-REPO) HEAD:main
	$(RM) -r $<

site: lint $(PYTHON-VENV)
	mkdocs build
	echo 'stage.yaml.com' > $@/CNAME

lint: $(TYPOS)
	typos

# This rule exists as a friendly way to print the virtualenv path:
venv: $(PYTHON-VENV)
	@echo $<
