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
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/drv/hifb/include	        \
                -I$(MSP_DIR)/drv/hifb/adp/include	\
                -I$(MSP_DIR)/drv/hifb/adp/platform/include	\
                -I$(MSP_DIR)/drv/hifb/adp/platform/alg \
                -I$(MSP_DIR)/drv/hifb/src	\
                -I$(MSP_DIR)/drv/tde/include	\
                -I$(MSP_DIR)/api/tde/include	\
		-I$(MSP_DIR)/api/higo/include \
	 	-I$(COMPONENT_DIR)/ha_codec/include

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
HAL_DIR := cv200es
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
HAL_DIR := cv200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
HAL_DIR := cv200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
HAL_DIR := cv200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
HAL_DIR := cv200
endif

EXTRA_CFLAGS += -I$(MSP_DIR)/drv/hifb/adp/platform/$(HAL_DIR)

ifeq ($(CFG_HIFB_CURSOR_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_CURSOR_SUPPORT
endif

ifeq ($(CFG_HIFB_COMPRESSION_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_COMPRESSION_SUPPORT
endif

ifeq ($(CFG_HIFB_SCROLLTEXT_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_SCROLLTEXT_SUPPORT
endif

ifeq ($(CFG_HIFB_STEREO3D_SUPPORT), y)
EXTRA_CFLAGS += -DCFG_HIFB_STEREO3D_HW_SUPPORT
endif

EXTRA_CFLAGS += -DCFG_HI_HD0_FB_VRAM_SIZE=$(CFG_HI_HD0_FB_VRAM_SIZE)
EXTRA_CFLAGS += -DCFG_HI_HD1_FB_VRAM_SIZE=$(CFG_HI_HD1_FB_VRAM_SIZE)
EXTRA_CFLAGS += -DCFG_HI_HD2_FB_VRAM_SIZE=$(CFG_HI_HD2_FB_VRAM_SIZE)
EXTRA_CFLAGS += -DCFG_HI_SD0_FB_VRAM_SIZE=$(CFG_HI_SD0_FB_VRAM_SIZE)
EXTRA_CFLAGS += -DHIFB_PROC_SUPPORT

MOD_NAME := hi_fb


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

DRIVER_PATH := $(MSP_DIR)/drv/hifb

COMMON_FILES := $(wildcard $(DRIVER_PATH)/src/*.c)
ADAPT_FILES  := $(wildcard $(DRIVER_PATH)/adp/src/*.c)
HAL_FILES    := $(wildcard $(DRIVER_PATH)/adp/platform/$(HAL_DIR)/*.c)
ALG_FILES    := $(wildcard $(DRIVER_PATH)/adp/platform/alg/*.c)
ALG_FILES    += $(wildcard $(DRIVER_PATH)/adp/platform/alg/*alg*.S)
FULL_PATH_DRV_FILES += $(HAL_FILES) \
		       $(ALG_FILES) \
                       $(ADAPT_FILES)  \
                       $(COMMON_FILES) 

#ifeq ($(CFG_HIFB_SCROLLTEXT_SUPPORT), y)
#FULL_PATH_DRV_FILES := $(filter-out hifb_scrolltext.c, $(FULL_PATH_DRV_FILES))
#endif

DRV_SRCS := $(shell echo $(FULL_PATH_DRV_FILES) \
            | awk '{for(i=1;i<=NF;i++)print $$i}' \
            | sed "s:\(.*\)/\<hifb\>\(.*\):.\2:g")

DRV_SRCS_C := $(filter-out %.S, $(DRV_SRCS))
DRV_SRCS_A := $(filter-out %.c, $(DRV_SRCS))

DRV_OBJS := $(subst .c,.o,$(DRV_SRCS_C))
DRV_OBJS += $(subst .S,.o,$(DRV_SRCS_A))

$(MOD_NAME)-y := $(DRV_OBJS)

ifeq ($(CFG_HI_MSP_BUILDIN), y)
$(shell cp -f $(MSP_DIR)/drv/hifb/include/hifb.h $(INCLUDE_DIR)/)
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

