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

ifeq ($(CFG_HI_CHIP_TYPE), hi3716m)
    VO_DRV_DIR := $(MSP_DIR)/drv/vo/vou_v3_0
else
    VO_DRV_DIR := $(MSP_DIR)/drv/vo/vou_v2_0
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
				-I$(MSP_DIR)/api/hdmi					\
				-I$(MSP_DIR)/drv/hdmi					\
				-I$(MSP_DIR)/drv/hdmi/hdmi_drv          \
				-I$(MSP_DIR)/api/sio   					\
				-I$(VO_DRV_DIR)  						

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers		

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

#ifeq ($(CFG_HI_HDMI_SUPPORT_FPGA), y)
#EXTRA_CFLAGS += -DSUPPORT_FPGA
#endif

#S40v2 Don't support DVI
EXTRA_CFLAGS += -DDVI_SUPPORT

#ifeq ($(CFG_HI_BUILD_WITH_ANDROID), y)
#EXTRA_CFLAGS += -DANDROID_SUPPORT
#endif


ifeq ($(CFG_PRODUCT_TYPE), android)
EXTRA_CFLAGS += -DANDROID_SUPPORT
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_DVI), y)
EXTRA_CFLAGS += -DDVI_SUPPORT
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP), y)
EXTRA_CFLAGS += -DHDCP_SUPPORT
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_3D), y)
EXTRA_CFLAGS += -DSUPPORT_3D
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_CEC), y)
EXTRA_CFLAGS += -DCEC_SUPPORT
endif

ifneq ($(CFG_HI_CHIP_TYPE),hi3712)
EXTRA_CFLAGS += -DDEBUG_SUPPORT
endif

MOD_NAME := hi_hdmi

ifeq ($(CFG_HI_MSP_BUILDIN), y)
obj-y += $(MOD_NAME).o
else
obj-m += $(MOD_NAME).o
endif

$(MOD_NAME)-y   :=  hdmi_intf_k.o                      \
		hdmi_intf.o				     \
		drv_hdmi.o                         \
		drv_global.o			   \
		drv_reg_proc.o			   \
		drv_compatibility.o		   \
		hdmi_drv/drv_hlviic.o              \
		hdmi_drv/si_audio.o                \
		hdmi_drv/si_cec.o                  \
		hdmi_drv/si_crc16.o                \
		hdmi_drv/si_de.o                   \
		hdmi_drv/si_delay.o                \
		hdmi_drv/si_edid.o                 \
		hdmi_drv/si_eeprom.o               \
		hdmi_drv/si_fifo.o                 \
		hdmi_drv/si_hdcp.o                 \
		hdmi_drv/si_hdmitx.o               \
		hdmi_drv/si_infofrm.o              \
		hdmi_drv/si_infpkttb.o             \
		hdmi_drv/si_isr.o                  \
		hdmi_drv/si_mddc.o                 \
		hdmi_drv/si_regio.o                \
		hdmi_drv/si_sha.o                  \
		hdmi_drv/si_sha_hw.o               \
		hdmi_drv/si_timer.o                \
		hdmi_drv/si_txvidp.o               \
		hdmi_drv/si_txvptbl.o		     \
		hdmi_drv/si_ucec.o                 \
		hdmi_drv/si_video.o                \
		hdmi_drv/si_vmode.o                \
		hdmi_drv/si_vmtables.o             \
		hdmi_drv/si_phy.o

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

