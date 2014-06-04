ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/base.mak
endif

.PHONY: all clean modules_install

ifeq ($(CFG_HI_IR_TYPE_STD), y)
IR_DIR := ir_std
endif

ifeq ($(CFG_HI_IR_TYPE_S2), y)
IR_DIR := ir_s2
endif

ifeq ($(CFG_MSP_BUILDTYPE),y)
obj-$(CFG_MSP_BUILDTYPE) += $(IR_DIR)/
endif

all:    
	make -C $(IR_DIR) all

clean:
	make -C $(IR_DIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf  modules.order modules.builtin

modules_install:
	make -C $(IR_DIR) modules_install

