#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
        KERNEL_DIR := $(srctree)

        SDK_DIR := $(KERNEL_DIR)/../../..
    else
        SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#=======================================
#	local variable
#=======================================
objects:= mali

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}
objects_prepare:=${addsuffix _prepare,${objects}}

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)
KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

ifeq ($(CFG_MSP_BUILDTYPE), y)
obj-$(CFG_MSP_BUILDTYPE) += mali/
endif

#=================================================================
#	  rules
#=================================================================

.PHONY: all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall} ${objects_prepare}

all:    ${objects}
	    	
clean:  ${objects_clean}
	$(AT)rm -rf *.o
	$(AT)rm -rf *.order

install: all 
ifneq ($(CFG_MSP_BUILDTYPE),y)
	@$(AT)cp -f $(CURDIR)/mali/mali.ko $(MODULE_DIR)/
endif

modules_install: all
	make -C mali modules_install


uninstall:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)rm -rf $(MODULE_DIR)/mali.ko
endif

prepare:${objects_prepare}
	
${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_uninstall,%,$@} uninstall
	
${objects_prepare}:
	@echo "prepare "$@
#	make -C ${patsubst %_prepare,%,$@} prepare
