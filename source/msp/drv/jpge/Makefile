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

TARGET := jpge


#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/src     

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

MOD_NAME := hi_$(TARGET)


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y   :=  src/jpge_osr.o \
             src/jpge_osal.o \
             src/jpge_hal.o 

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

