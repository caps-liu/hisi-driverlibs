#=======================================
#	export variable
#=======================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/base.mak
endif

#=======================================
#	local variable
#=======================================
#objects:=${subst /,,${shell ls -d */}}
objects := std_i2c

ifeq ($(CFG_HI_GPIOI2C_SUPPORT),y)	  
CFG_HI_KMOD_CFLAGS += -DHI_GPIOI2C_SUPPORT
objects += gpio_i2c
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}

ifeq ($(CFG_MSP_BUILDTYPE),y)
obj-$(CFG_MSP_BUILDTYPE) += ${addsuffix /,${objects}}
endif
#=================================================================
#	  rules
#=================================================================

.PHONY: all clean modules_install ${objects} ${objects_clean} ${objects_install}

all: ${objects}

clean: ${objects_clean}
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf  modules.order modules.builtin

modules_install: ${objects_install}


${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} modules_install

