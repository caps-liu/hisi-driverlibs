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

ifeq ($(wildcard $(MSP_DIR)/drv/otp/otp_cfg.mak), $(MSP_DIR)/drv/otp/otp_cfg.mak)
include $(MSP_DIR)/drv/otp/otp_cfg.mak
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)
EXTRA_CFLAGS += -I$(MSP_UNF_INCLUDE)			\
		-I$(MSP_DRV_INCLUDE)	 				\
		-I$(COMMON_UNF_INCLUDE)					\
		-I$(COMMON_DRV_INCLUDE)					\
		-I$(MSP_DIR)/drv/otp/					\
		-I$(MSP_DIR)/drv/otp/otpv100/			\
		-I$(MSP_DIR)/drv/otp/otpv200/

ifeq ($(SDK_OTP_ARCH_VERSION), SDK_OTP_ARCH_VERSION_V3)
EXTRA_CFLAGS += -DSDK_OTP_ARCH_VERSION_V3
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_otp

obj-$(CFG_MSP_BUILDTYPE) := $(MOD_NAME).o

$(MOD_NAME)-y := ./drv_otp.o ./drv_otp_intf.o ./drv_otp_common.o ./otpv200/hal_otp_v200.o
$(MOD_NAME)-y += ./otpv200/drv_otp_v200.o
$(MOD_NAME)-y += ./otpv100/drv_otp_v100.o ./otpv100/hal_otp_v100.o

#===============================================================================
#   rules
#===============================================================================
.PHONY:clean all modules_install

all:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf $(MOD_NAME).ko
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order
	
modules_install:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) modules_install
	
