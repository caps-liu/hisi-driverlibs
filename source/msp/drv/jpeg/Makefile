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

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

#===============================================================================
# module name
#===============================================================================
TARGET := jpeg

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/drv/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/src

EXTRA_CFLAGS += -I$(MSP_DIR)/drv/$(TARGET)/grc_cmm_inc

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

#================================================================================
#config the chip type
#================================================================================
#3716CV200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
EXTRA_CFLAGS += -DCONFIG_CHIP_3716CV200_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
EXTRA_CFLAGS += -DCONFIG_CHIP_3719CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
EXTRA_CFLAGS += -DCONFIG_CHIP_3718CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
EXTRA_CFLAGS += -DCONFIG_CHIP_3719MV100_A_VERSION
endif

#S40V200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
EXTRA_CFLAGS += -DCONFIG_CHIP_S40V200_VERSION
endif
#X6 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
EXTRA_CFLAGS += -DCONFIG_CHIP_3712_VERSION
endif
#3716MV300 CHIP
#CFG_CHIP_TYPE=hi3716h
#CFG_CHIP_TYPE=hi3716c
ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
EXTRA_CFLAGS += -DCONFIG_CHIP_3716MV300_VERSION
endif

#================================================================================
#this macro define in hi_gfx_comm_k.h
#================================================================================
#ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_KMOD_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
#CFLAGS += -DCONFIG_GFX_ADVCA_RELEASE
#endif

#================================================================================
#select the complie file
#================================================================================
MOD_NAME := hi_$(TARGET)

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := src/jpg_hal.o   \
                 src/jpg_proc.o  \
		 src/jpg_suspend.o

#ifeq ($(CFG_HI_MCE_SUPPORT),y)
#$(MOD_NAME)-y   +=  src/jpg_osr_ko.o 
#$(MOD_NAME)-y   +=  src/jpg_osr_kernel.o 
#else
$(MOD_NAME)-y += src/jpg_osr.o 
#endif

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean modules_install

all:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

modules_install:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules_install

