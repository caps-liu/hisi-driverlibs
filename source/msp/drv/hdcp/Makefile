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
EXTRA_CFLAGS += -I$(MSP_UNF_INCLUDE)				\
				-I$(MSP_DRV_INCLUDE)	 			\
				-I$(COMMON_UNF_INCLUDE)				\
				-I$(COMMON_DRV_INCLUDE)				\
				-I$(MSP_DIR)/drv/cipher/

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
KBUILD_EXTRA_SYMBOLS += $(MSP_DIR)/drv/cipher/Module.symvers

MOD_NAME := hi_hdcp

obj-$(CFG_MSP_BUILDTYPE) := $(MOD_NAME).o
$(MOD_NAME)-y := drv_hdcp.o ./drv_hdcp_intf.o


#==============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules

modules_install: all
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules_install

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf $(MOD_NAME).ko
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/hi_hdcp.ko $(MODULE_DIR)/hi_hdcp.ko
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/hi_hdcp.ko
