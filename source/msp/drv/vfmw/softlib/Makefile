EXTRA_CFLAGS += -DENV_ARMLINUX_KERNEL

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
# export variables
#===============================================================================
########tmp value###############################
#export CROSS_COMPILE=arm-hisiv200-linux-
#export ARCH=arm

ifeq ($(SRC_ROOT), )
export SRC_ROOT      := ${SOURCE_DIR}
endif

export MSP_DIR       := $(SRC_ROOT)/msp
export LINUXROOT     := $(LINUX_DIR)
KCOM_DIR      := $(SRC_ROOT)/common
VFMW_DIR      := $(MSP_DIR)/drv/vfmw/vfmw_v4.0
SDEC_KO_DIR   := $(MSP_DIR)/drv/vfmw/softlib
################################################
#VFMW_INC_ROOT := $(SRC_ROOT)/msp_base/mpi/drv/vfmw_v4.0
VFMW_INC_ROOT := $(SRC_ROOT)/msp/drv/vfmw/vfmw_v4.0
VFMW_RELEAS_DIR := $(CURDIR)/../vfmw_release

ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
-include $(VFMW_INC_ROOT)/firmware/product/HiX6V300/vfmw_make.cfg
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
-include $(VFMW_INC_ROOT)/firmware/product/HiS40V200/vfmw_make.cfg
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
-include $(VFMW_INC_ROOT)/firmware/product/Hi3716CV200/vfmw_make.cfg
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716c)
-include $(VFMW_INC_ROOT)/firmware/product/HiX5HD/vfmw_make.cfg
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716h)
-include $(VFMW_INC_ROOT)/firmware/product/HiX5HD/vfmw_make.cfg
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
-include $(VFMW_INC_ROOT)/firmware/product/HiX5HD/vfmw_make.cfg
endif

export HWMEDIA_DIR = $(SDEC_KO_DIR)/hwmedia_v1.1

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(KCOM_DIR)/include
EXTRA_CFLAGS += -I$(KCOM_DIR)/drv/include
EXTRA_CFLAGS += -I$(KCOM_DIR)/api/include
EXTRA_CFLAGS += -I$(VFMW_DIR)/drv/memmap

EXTRA_CFLAGS += $(VFMW_CFLAGS)
EXTRA_CFLAGS += -I$(SDEC_KO_DIR)

####################################### objects #####################################
MOD_NAME := hi_svdec
ifeq ($(CFG_MSP_BUILDTYPE),y)
obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o
obj-$(CFG_MSP_BUILDTYPE) += hwmedia_v1.1/
ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
PRODUCT_DIR = HiX6V300
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
PRODUCT_DIR = HiS40V200
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
PRODUCT_DIR = Hi3716V200
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716c)
PRODUCT_DIR = HiX5HD
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716h)
PRODUCT_DIR = HiX5HD
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
PRODUCT_DIR = HiX5HD
endif
EXTRA_CFLAGS += -I$(VFMW_DIR)/firmware/product/$(PRODUCT_DIR)
else
obj-m += $(MOD_NAME).o
endif
#obj-m := hi_svdec.o

#1. ko interface
hi_svdec-y += ./sdec_imedia_intf.o

# 2. soft decoder
hi_svdec-y += ./sdec_imedia.o
ifneq ($(CFG_MSP_BUILDTYPE),y)
hi_svdec-y += hwmedia.o
endif

# 3. dependence to VFMW 
#hi_svdec-y += ../mem_manage.o
#hi_svdec-y += ../public.o
#hi_svdec-y += ../../../drv/linux_kernel/li_klib.o

all:
	make -C $(HWMEDIA_DIR)
	cp $(SDEC_KO_DIR)/hwmedia_v1.1/hwmedia.o $(SDEC_KO_DIR)/hwmedia.o
	make -C $(LINUXROOT) M=$(SDEC_KO_DIR) modules
	cp -f $(MOD_NAME).ko $(VFMW_RELEAS_DIR)/
install: all
	$(AT)cp -f $(MOD_NAME).ko $(MODULE_DIR)/
	
uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko
	
clean:
	make -C $(HWMEDIA_DIR) clean
	make -C $(LINUXROOT) M=$(SDEC_KO_DIR) clean	
	rm -rf *.o
	rm -rf *.cmd
	rm -rf *.mod*
	rm -rf *.ko
