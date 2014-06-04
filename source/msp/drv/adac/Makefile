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
ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
objects += slic
endif

ifeq ($(CFG_HI_ADAC_TVL320AIC31_SUPPORT),y)
objects += tlv320aic31
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

obj-m += ${addsuffix /,${objects}}

#=================================================================
#	  rules
#=================================================================

.PHONY: all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall}

all:    ${objects}
	    	
clean:  ${objects_clean}
	
install:${objects_install}
	
uninstall:${objects_uninstall}
	
${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_uninstall,%,$@} uninstall
