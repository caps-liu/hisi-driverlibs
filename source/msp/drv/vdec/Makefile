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
                -I$(MSP_DIR)/api/vdec                   \
                -I$(MSP_DIR)/drv/vdec                   \
                -I$(MSP_DIR)/drv/vfmw/vfmw_release

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)                
ifdef CFG_HI_VDEC_PRE_FRAMEBUFFER
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=$(CFG_HI_VDEC_PRE_FRAMEBUFFER)
else
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=113
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)                
ifdef CFG_HI_VDEC_PRE_FRAMEBUFFER
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=$(CFG_HI_VDEC_PRE_FRAMEBUFFER)
else
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=113
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)                
ifdef CFG_HI_VDEC_PRE_FRAMEBUFFER
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=$(CFG_HI_VDEC_PRE_FRAMEBUFFER)
else
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=113
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)                
ifdef CFG_HI_VDEC_PRE_FRAMEBUFFER
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=$(CFG_HI_VDEC_PRE_FRAMEBUFFER)
else
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=113
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
ifdef CFG_HI_VDEC_PRE_FRAMEBUFFER_ES
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=$(CFG_HI_VDEC_PRE_FRAMEBUFFER_ES)
else
EXTRA_CFLAGS += -DHI_VDEC_PRE_FRAMEBUFFER=127
endif
endif

ifdef CFG_HI_VDEC_MAX_INSTANCE 
EXTRA_CFLAGS += -DHI_VDEC_MAX_INSTANCE=$(CFG_HI_VDEC_MAX_INSTANCE)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_INSTANCE=16
endif

ifdef CFG_HI_VDEC_MAX_REF_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_REF_FRAME=$(CFG_HI_VDEC_MAX_REF_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_REF_FRAME=7
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
ifdef CFG_HI_VDEC_MAX_DISP_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=4
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
ifdef CFG_HI_VDEC_MAX_DISP_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=4
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
ifdef CFG_HI_VDEC_MAX_DISP_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=4
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
ifdef CFG_HI_VDEC_MAX_DISP_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=4
endif
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
ifdef CFG_HI_VDEC_MAX_DISP_FRAME_ES
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME_ES)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=8
endif
endif

ifdef CFG_HI_VDEC_SCD_BUFFER_SIZE
EXTRA_CFLAGS += -DHI_VDEC_SCD_BUFFER_SIZE=$(CFG_HI_VDEC_SCD_BUFFER_SIZE)
else
EXTRA_CFLAGS += -DHI_VDEC_SCD_BUFFER_SIZE=0x200000
endif

ifeq (y,$(CFG_HI_VDEC_DEINTERLACE_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_DEINTERLACE_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_DEINTERLACE_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_SVDEC_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_SVDEC_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_SVDEC_SUPPORT=0
endif

ifeq (HD_SIMPLE,$(CFG_HI_VFMW_DECODE_CAPABILITY))
EXTRA_CFLAGS += -DHI_VDEC_HD_SIMPLE=1
else
EXTRA_CFLAGS += -DHI_VDEC_HD_SIMPLE=0
endif

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=0
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_vdec

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   := drv_vdec_buf_mng.o \
		   drv_vdec_intf.o \
		   drv_vdec_intf_k.o \
		   drv_vdec_pts_recv.o \
		   drv_vdec_alg_frd.o \
		   drv_vdec_alg_api_frd.o 

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
$(MOD_NAME)-y   += drv_vdec_usrdata.o
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

