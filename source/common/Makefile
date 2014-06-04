###############################################################################
# export variables
###############################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../..
    endif

include $(SDK_DIR)/base.mak
endif

###############################################################################	
#	  global
###############################################################################

###############################################################################
#	local variable
###############################################################################
depends := api
ifeq ($(CFG_MSP_BUILDTYPE),m)
depends += drv
endif

depends_clean     := ${addsuffix _clean,${depends}}
depends_install   := ${addsuffix _install,${depends}}
depends_uninstall := ${addsuffix _uninstall,${depends}}

###############################################################################
#	  rules
###############################################################################
.PHONY: all clean install uninstall $(depends)

all: $(depends)

clean: $(depends_clean)

install: $(depends_install)

uninstall: $(depends_uninstall)

$(depends):
	@make -C $@
	
$(depends_clean):
	make -C $(patsubst %_clean,%,$@) clean

$(depends_install):
	make -C $(patsubst %_install,%,$@) install

$(depends_uninstall):
	make -C $(patsubst %_uninstall,%,$@) uninstall
	
