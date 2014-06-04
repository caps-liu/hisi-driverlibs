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
#   rules
#===============================================================================
.PHONY: all clean install uninstall
VFMW_DIR = vfmw_v4.0

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
PRODUCT_DIR = HiS40V200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
PRODUCT_DIR = Hi3716CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
PRODUCT_DIR = Hi3716CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
PRODUCT_DIR = Hi3716CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
PRODUCT_DIR = Hi3716CV200
endif

ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),SD_ONLY)
CFG_DIR = SD_ONLY
endif
ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),HD_SIMPLE)
CFG_DIR = HD_SIMPLE
endif
ifeq ($(CFG_HI_VFMW_DECODE_CAPABILITY),HD_FULL)
CFG_DIR = HD_FULL
endif

ifeq ($(PRODUCT_DIR),Hi3716CV200)
CFG_DIR = HD_FULL
endif

ifeq ($(CFG_MSP_BUILDTYPE), y)
obj-$(CFG_MSP_BUILDTYPE) += vfmw_v4.0/
obj-$(CFG_MSP_BUILDTYPE) += softlib/
endif

ifneq ($(KERNELRELEASE),)
VFMW_CFG_PATH := $(SDK_DIR)/source/msp/drv/vfmw/$(VFMW_DIR)/firmware/product
$(shell cp -rf $(VFMW_CFG_PATH)/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.h  $(VFMW_CFG_PATH)/$(PRODUCT_DIR))
$(shell cp -rf $(VFMW_CFG_PATH)/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_CFG_PATH)/$(PRODUCT_DIR))
endif

all:
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.h  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ all
	$(AT)cp $(VFMW_DIR)/hi_vfmw.ko vfmw_release 
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw.h vfmw_release
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_ext.h vfmw_release
endif
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)make -C softlib/ all
endif

clean:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ clean
endif
	$(AT)make -C softlib/ clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf  modules.order modules.builtin

modules_install:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ modules_install
endif
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)make -C softlib/ install
endif

uninstall:
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)make -C $(VFMW_DIR)/ uninstall
endif
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)make -C softlib/ uninstall
endif

prepare:
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_config.h  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
	$(AT)cp -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/$(CFG_DIR)/vfmw_make.cfg  $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR) 
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw.h vfmw_release
	$(AT)cp $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_ext.h vfmw_release

unprepare:
	$(AT)rm -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_config.h
	$(AT)rm -rf $(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)/vfmw_make.cfg 
	$(AT)rm -rf vfmw_release/vfmw.h
	$(AT)rm -rf vfmw_release/vfmw_ext.h
