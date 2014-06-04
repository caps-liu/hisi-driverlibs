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
#   rules
#===============================================================================

ifeq ($(CFG_MSP_BUILDTYPE), y)
obj-m += sil9293/
#obj-$(CFG_MSP_BUILDTYPE) += sil9293/
#obj-$(CFG_MSP_BUILDTYPE) += tvp5150/
endif

.PHONY: all clean install uninstall

all:
	$(AT)make -C sil9293
#	$(AT)make -C tvp5150

clean:
	$(AT)make -C sil9293 clean
#	$(AT)make -C tvp5150 clean

install: all
	$(AT)make -C sil9293 install
#	$(AT)make -C tvp5150 install

uninstall:
	$(AT)make -C sil9293 uninstall
#	$(AT)make -C tvp5150 uninstall
