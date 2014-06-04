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


KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

ifdef CFG_HI_VPSS_MAX_BUFFER_NUMB
EXTRA_CFLAGS += -DHI_VPSS_MAX_BUFFER_NUMB=$(CFG_HI_VPSS_MAX_BUFFER_NUMB)
else
EXTRA_CFLAGS += -DHI_VPSS_MAX_BUFFER_NUMB=10
endif


MOD_NAME := hi_vpss

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

DRIVER_PATH := $(CURDIR)/vpss_v1_0

FULL_PATH_DRV_SRCS := $(wildcard $(DRIVER_PATH)/*.c)
FULL_PATH_DRV_SRCS := $(filter-out %.mod.c, $(FULL_PATH_DRV_SRCS))

ODRV_OBJS  := $(patsubst %.c,%.o,$(FULL_PATH_DRV_SRCS))

ifeq ($(CFG_HI_CHIP_TYPE), hi3716cv200)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE), hi3719cv100)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE), hi3718cv100)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE), hi3719mv100)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE), hi3719mv100_a)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE), hi3718mv100)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_CV200
endif


ifeq ($(CFG_HI_CHIP_TYPE), hi3716cv200es)
	EXTRA_CFLAGS += -DHI_VPSS_DRV_VER_S40
endif

$(MOD_NAME)-y   :=  vpss_v1_0/vpss_osal.o \
			vpss_v1_0/vpss_debug.o\
			vpss_v1_0/vpss_alg_ratio.o \
			vpss_v1_0/vpss_alg_sharp.o \
			vpss_v1_0/vpss_alg_csc.o \
			vpss_v1_0/vpss_alg_zme.o  \
			vpss_v1_0/vpss_alg_dnr.o \
			vpss_v1_0/vpss_alg_fmd.o \
			vpss_v1_0/vpss_alg_dei.o \
			vpss_v1_0/vpss_alg_rwzb.o \
			vpss_v1_0/vpss_alg.o \
			vpss_v1_0/vpss_fb.o \
			vpss_v1_0/vpss_instance.o \
			vpss_v1_0/vpss_ctrl.o \
			vpss_v1_0/drv_vpss_intf_k.o
ifeq ($(CFG_HI_CHIP_TYPE), hi3716cv200es)
$(MOD_NAME)-y   +=  \
			vpss_v1_0/vpss_reg_s40.o \
			vpss_v1_0/vpss_hal.o 
else
$(MOD_NAME)-y   +=  \
			vpss_v1_0/vpss_reg_cv200.o \
			vpss_v1_0/vpss_hal_cv200.o 
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

