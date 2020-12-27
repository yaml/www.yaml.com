ifeq ($(PROJECT_SITE_ROOT),)
  $(error See https://project-site.org/doc/installation)
endif

include $(PROJECT_SITE_ROOT)/share/.vars.mk
include $(PROJECT_SITE_ROOT)/share/.rules.mk
