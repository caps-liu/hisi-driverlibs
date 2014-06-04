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

TARGET := tde


#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/$(TARGET)/include	\
                -I$(MSP_DIR)/drv/$(TARGET)

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -DCFG_HI_TDE_CSCTMPBUFFER_SIZE=$(CFG_HI_TDE_CSCTMPBUFFER_SIZE)

EXTRA_CFLAGS += -DHI_TDE_SQ_SUPPORT=0
#EXTRA_CFLAGS += -DHI_TDE_BITMAPMASK_SUPPORT=0
EXTRA_CFLAGS += -DHI_TDE_MEMCOUNT_SUPPORT=1
EXTRA_CFLAGS += -DHI_TDE_UNIT64_NUM=200
EXTRA_CFLAGS += -DHI_TDE_UNIT128_NUM=348
EXTRA_CFLAGS += -DHI_TDE_UNIT1024_NUM=8

MOD_NAME := hi_$(TARGET)


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   :=  tde_osr.o \
             tde_osr_k.o \
             tde_hal_k.o \
             tde_osilist_k.o\
             tde_osictl_k.o\
             tde_proc_k.o\
             wmalloc_k.o

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

