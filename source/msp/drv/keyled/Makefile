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
DRV_SRC_BASE=$(MSP_DIR)/drv/keyled

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
 		-I$(DRV_SRC_BASE)                       \
                -I$(MSP_DRV_INCLUDE)                    \
		-I$(SDK_DIR)/source/common/drv/sys 

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_keyled


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

ifeq ($(CFG_HI_KEYLED_CT1642_KERNEL_SUPPORT),y)
$(MOD_NAME)-y   :=  drv_keyled_init_ct1642.o
endif

$(MOD_NAME)-y   +=  drv_keyled_intf.o


ifeq ($(CFG_HI_KEYLED_74HC164_SUPPORT), y)
    EXTRA_CFLAGS += -I$(DRV_SRC_BASE)/keyled_std
    EXTRA_CFLAGS += -DKEYLED_STANDARD
    $(MOD_NAME)-y  += keyled_std/drv_keyled_std.o
endif

ifeq ($(CFG_HI_KEYLED_FD650_SUPPORT), y)
    EXTRA_CFLAGS += -I$(DRV_SRC_BASE)/keyled_fd650
    EXTRA_CFLAGS += -DKEYLED_FD650
    $(MOD_NAME)-y  += keyled_fd650/drv_keyled_fd650.o
ifdef CFG_HI_KEYLED_FD650_CLOCK_GPIO
    EXTRA_CFLAGS += -DHI_KEYLED_FD650_CLOCK_GPIO=$(CFG_HI_KEYLED_FD650_CLOCK_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_FD650_DINOUT_GPIO=$(CFG_HI_KEYLED_FD650_DINOUT_GPIO)
endif
endif

ifeq ($(CFG_HI_KEYLED_PT6961_SUPPORT), y)
    EXTRA_CFLAGS += -I$(DRV_SRC_BASE)/keyled_pt6961
    EXTRA_CFLAGS += -DKEYLED_PT6961
ifdef CFG_HI_KEYLED_PT6961_CLOCK_GPIO
    EXTRA_CFLAGS += -DHI_KEYLED_PT6961_CLOCK_GPIO=$(CFG_HI_KEYLED_PT6961_CLOCK_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_PT6961_STB_GPIO=$(CFG_HI_KEYLED_PT6961_STB_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_PT6961_DIN_GPIO=$(CFG_HI_KEYLED_PT6961_DIN_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_PT6961_DOUT_GPIO=$(CFG_HI_KEYLED_PT6961_DOUT_GPIO)
endif
    $(MOD_NAME)-y  += keyled_pt6961/drv_keyled_pt6961.o
endif

ifeq ($(CFG_HI_KEYLED_PT6964_SUPPORT), y)
    EXTRA_CFLAGS += -I$(DRV_SRC_BASE)/keyled_pt6964
    $(MOD_NAME)-y += keyled_pt6964/drv_keyled_pt6964.o
    EXTRA_CFLAGS += -DKEYLED_PT6964
ifdef CFG_HI_KEYLED_PT6964_CLOCK_GPIO    
    EXTRA_CFLAGS += -DHI_KEYLED_PT6964_CLOCK_GPIO=$(CFG_HI_KEYLED_PT6964_CLOCK_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_PT6964_STB_GPIO=$(CFG_HI_KEYLED_PT6964_STB_GPIO)
    EXTRA_CFLAGS += -DHI_KEYLED_PT6964_DINOUT_GPIO=$(CFG_HI_KEYLED_PT6964_DINOUT_GPIO)
endif
endif

ifeq ($(CFG_HI_KEYLED_CT1642_SUPPORT), y)
    EXTRA_CFLAGS += -DKEYLED_CT1642
    EXTRA_CFLAGS += -I$(DRV_SRC_BASE)/keyled_ct1642
#   ifeq ($(findstring hi3716cv200,$(CFG_HI_CHIP_TYPE)), hi3716cv200) 
    $(MOD_NAME)-y  += keyled_ct1642/drv_keyled_ct1642_inner.o
#   else
#    ifdef CFG_HI_KEYLED_CT1642_CLOCK_GPIO
#        EXTRA_CFLAGS += -DHI_KEYLED_CT1642_CLOCK_GPIO=$(CFG_HI_KEYLED_CT1642_CLOCK_GPIO)
#        EXTRA_CFLAGS += -DHI_KEYLED_CT1642_DAT_GPIO=$(CFG_HI_KEYLED_CT1642_DAT_GPIO)
#        EXTRA_CFLAGS += -DHI_KEYLED_CT1642_KEY_GPIO=$(CFG_HI_KEYLED_CT1642_KEY_GPIO)
#    endif
#	$(MOD_NAME)-y  += keyled_ct1642/drv_keyled_ct1642.o
#   endif
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

