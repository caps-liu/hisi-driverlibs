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

EXTRA_CFLAGS += ${CFG_HI_BOARD_CONFIGS}

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(COMPONENT_DIR)/ha_codec/include     \
                -I$(MSP_DIR)/drv/mce/include            \
                -I$(MSP_DIR)/api/higo/include           \
                -I$(COMMON_DIR)/drv/sys                 \
                -I$(COMMON_DIR)/drv/mmz	                \
                -I$(MSP_DIR)/api/tde/include	        \
                -I$(MSP_DIR)/drv/adsp/adsp_v1_1/include \
                -I$(COMMON_DIR)/api/flash/include

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_mce

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

ifeq ($(CFG_HI_MCE_SUPPORT),y)
$(MOD_NAME)-y   :=  drv_mce_intf.o          \
                    drv_mce_play.o          \
                    avplay/drv_mce_avplay.o	\
                    avplay/drv_mce_frc.o
else
$(MOD_NAME)-y   :=  drv_mce_intf.o
endif

#===============================================================================
#   rules
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

