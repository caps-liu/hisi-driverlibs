#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../../..
    endif

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
SLIC_DIR = $(SDK_DIR)/source/msp/drv/adac/slic

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(SLIC_DIR)                             \
                -I$(SLIC_DIR)/includes                    \
                -I$(SLIC_DIR)/hal                         \
                -I$(SLIC_DIR)/profiles                    \
                -I$(SLIC_DIR)/vp890_api       		\
                                         
MOD_NAME := hi_slic

obj-m += $(MOD_NAME).o

$(MOD_NAME)-y   :=  ./profiles/profiles8.o  \
                    ./hal/vp_hal.o          \
                    ./hal/sys_service.o     \
                    ./common/vp_api_init.o  \
                    ./common/vp_api_control.o \
                    ./common/vp_api_query.o   \
                    ./common/vp_api_common.o  \
                    ./common/vp_api_cslac_seq.o  \
                    ./common/vp_api_config.o     \
                    ./common/vp_debug.o       \
                    ./common/vp_api_test.o    \
                    ./vp890_api/vp890_config.o   \
                    ./vp890_api/vp890_init.o     \
                    ./vp890_api/vp890_control.o  \
                    ./vp890_api/vp890_common.o   \
                    ./vp890_api/vp890_apiCal.o   \
                    ./vp890_api/vp890_query.o    \
                    ./vp890_api/vp890_seq.o      \
                    ./vp890_api/vp890_fxo_control.o \
                    ./vp890_api/vp890_fxs_control.o \
                    ./vp890_api/vp890_lp_control.o  \
                    ./slac.o                        \
                    ./slac89116.o

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall
ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order
install:all
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko
else
all:
clean:
install:
uninstall:
endif

