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

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
EXTRA_CFLAGS += -D__VENC_S40V200_CONFIG__
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
EXTRA_CFLAGS += -D__VENC_3716CV200_CONFIG__
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
EXTRA_CFLAGS += -D__VENC_3716CV200_CONFIG__ 
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
EXTRA_CFLAGS += -D__VENC_3716CV200_CONFIG__ 
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
EXTRA_CFLAGS += -D__VENC_3716CV200_CONFIG__ 
endif


EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/venc                   \
                -I$(MSP_DIR)/drv/venc

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_venc

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y   :=  drv_venc_osal.o      \
                    drv_venc_intf.o      \
                    drv_venc.o           \
                    drv_venc_efl.o       \
                    drv_omxvenc.o        \
                    drv_omxvenc_efl.o    \
                    drv_venc_buf_mng.o   \
                    drv_venc_queue_mng.o \
                    drv_venc_proc.o      \
                    hal_venc.o      

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

