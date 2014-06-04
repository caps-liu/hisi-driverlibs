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

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(COMPONENT_DIR)/ha_codec/include     \
                -I$(SDK_DIR)/source/msp/api/higo/include        \
                -I$(SDK_DIR)/source/common/drv/sys      \
                -I$(SDK_DIR)/source/common/drv/mmz        \
                -I$(SDK_DIR)/source/common/api/flash/include			


KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
MOD_NAME := hi_pq

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o
#obj-m += $(MOD_NAME).o

$(MOD_NAME)-y   :=  drv_pq_intf.o	\
		    drv_pq.o		\
	

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean modules_install uninstall

all:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

modules_install: all
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules_install

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

