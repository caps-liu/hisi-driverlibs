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
                -I$(MSP_DIR)/api/higo/include       \
                -I$(MSP_DIR)/api/vo

#EXTRA_CFLAGS += -DHI_DISP_TTX_SUPPORT  -DHI_DISP_CC_SUPPORT  -DHI_DISP_WSS_SUPPORT   -DHI_VO_SINGLE_VIDEO_SUPPORT
EXTRA_CFLAGS += -DHI_DISP_BUILD_FULL  -D__DISP_PLATFORM_SDK__ -D__DISP_D0_FOLLOW_D1__ -D__DISP_SELF_START__


ifeq ($(CFG_HI_DISP_TTX_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_TTX_SUPPORT
endif

#ifeq ($(CFG_HI_DISP_CC_SUPPORT), y)
#EXTRA_CFLAGS += -DHI_DISP_CC_SUPPORT
#endif

#ifeq ($(CFG_HI_DISP_WSS_SUPPORT), y)
#EXTRA_CFLAGS += -DHI_DISP_WSS_SUPPORT
#endif

ifeq ($(CFG_HI_DISP_G1_ATTACH_HD_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_ATTACH_OSD_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CSC_MODE_RGB), y)
EXTRA_CFLAGS += -DHI_DISP_MODE_TC
endif

ifeq ($(CFG_HI_VO_WRAP_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_WRAP_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CGMS_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_CGMS_SUPPORT
endif

ifeq ($(CFG_HI_DISP_LCD_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_LCD_SUPPORT
endif


ifeq ($(CFG_HI_VO_MOSAIC_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_MOSAIC_SUPPORT
endif


ifeq ($(CFG_HI_VO_SINGLE_VIDEO_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_SINGLE_VIDEO_SUPPORT
endif


ifeq ($(CFG_HI_VO_STILLFRAME_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_STILLFRAME_SUPPORT
endif

ifeq ($(CFG_HI_VO_DUMPFRAME_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_DUMPFRAME_SUPPORT
endif


ifeq ($(CFG_HI_VO_MOSAIC_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_MOSAIC_SUPPORT
endif

EXTRA_CFLAGS += -DHI_VO_SHARPNESS_SUPPORT

ifeq ($(CFG_HI_VDEC_DEINTERLACE_SUPPORT), y)
EXTRA_CFLAGS += -DHI_VO_HD_VIDEO_DO_DEI
endif

#EXTRA_CFLAGS += -Os
#STRIP=$(CFG_HI_TOOLCHAINS_NAME)-strip

MOD_NAME := hi_vou


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o



KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)


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





DRIVER_PATH := $(MSP_DIR)/drv/vo/vdp_v1_0
EXTRA_CFLAGS += -I$(DRIVER_PATH)/hal/common -I$(DRIVER_PATH)/hal/$(HAL_DIR) -I$(DRIVER_PATH)/alg -I$(DRIVER_PATH)/com -I$(DRIVER_PATH)/drv -I$(DRIVER_PATH)

EXTRA_CFLAGS += -I$(DRIVER_PATH)/include

HAL_FILES := $(wildcard $(DRIVER_PATH)/hal/common/*.c)
HAL_FILES += $(wildcard $(DRIVER_PATH)/hal/$(HAL_DIR)/*.c)
ALG_FILES := $(wildcard $(DRIVER_PATH)/alg/*.c)
ALG_FILES += $(wildcard $(DRIVER_PATH)/alg/*.S)


FULL_PATH_DRV_SRCS := $(wildcard $(DRIVER_PATH)/*.c)
FULL_PATH_DRV_SRCS += $(wildcard $(DRIVER_PATH)/com/*.c)
FULL_PATH_DRV_SRCS += $(wildcard $(DRIVER_PATH)/drv/*.c)
FULL_PATH_DRV_SRCS += $(ALG_FILES) \
		      $(HAL_FILES)
FULL_PATH_DRV_SRCS := $(filter-out %.mod.c, $(FULL_PATH_DRV_SRCS))

DRV_SRCS := $(shell echo $(FULL_PATH_DRV_SRCS) \
    	    | awk '{for(i=1;i<=NF;i++)print $$i}' \
	    | sed "s:\(.*\)/\<vo\>\(.*\):.\2:g")

DRV_SRCS_C := $(filter-out %.S, $(DRV_SRCS))
DRV_SRCS_A := $(filter-out %.c, $(DRV_SRCS))

ODRV_OBJS  := $(patsubst %.c,%.o,$(DRV_SRCS_C))
ODRV_OBJS  += $(patsubst %.S,%.o,$(DRV_SRCS_A))


#$(error $(ODRV_OBJS))
$(MOD_NAME)-y = $(ODRV_OBJS)
#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean modules_install

all: 
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules
#	@$(STRIP)  --strip-unneeded $(MSP_DIR)/drv/vo/hi_vou.ko
clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

modules_install: all
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules_install

