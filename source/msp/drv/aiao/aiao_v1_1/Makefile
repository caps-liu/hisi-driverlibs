#======::=========================================================================
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
ADSP_DRV_INCLUDE =$(SDK_DIR)/source/msp/drv/adsp/adsp_v1_1/include 

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(ADSP_DRV_INCLUDE)                    \
		-I$(CURDIR)	

#COMMON include  
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/common/include
#AO include 
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/ao
#AI include 
ifeq ($(CFG_HI_AI_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/ai
EXTRA_CFLAGS += -DHI_AUDIO_AI_SUPPORT
endif
#ALSA include 
ifeq ($(CFG_HI_SND_ALSA_AO_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/alsa
EXTRA_CFLAGS += -DHI_ALSA_AO_SUPPORT
endif

ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/alsa
endif

ifeq ($(CFG_HI_SND_MUTECTL_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_MUTECTL_SUPPORT
EXTRA_CFLAGS += -DHI_SND_MUTECTL_GPIO=$(CFG_HI_SND_MUTECTL_GPIO)
EXTRA_CFLAGS += -DHI_SND_MUTECTL_LEVEL=$(CFG_HI_SND_MUTECTL_LEVEL)
endif
#===============================================================================
# HI_SND_DRV_TEMPLATE_OPT : stantard drvier template 
#===============================================================================
EXTRA_CFLAGS += -DHI_SND_DRV_TEMPLATE_OPT

#===============================================================================
# HI_SND_DRV_SUSPEND_SUPPORT : suspend & resume driver 
#===============================================================================
EXTRA_CFLAGS += -DHI_SND_DRV_SUSPEND_SUPPORT

#EXTRA_CFLAGS += -DHI_SND_FPGA

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

#EXTRA_CFLAGS += -DHIAO_DEBUG

MOD_NAME := hi_aiao

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := drv_aiao_module.o

#COMMON SUPPORT
$(MOD_NAME)-y += common/src/audio_util.o \
		 common/src/hal_aiao.o \
		 common/src/hal_aiao_func.o \
		 common/src/hal_aiao_priv.o 

ifeq ($(CFG_HI_AIAO_VERIFICATION_SUPPORT),y)
EXTRA_CFLAGS += -DHI_AIAO_VERIFICATION_SUPPORT
$(MOD_NAME)-y += common/src/drv_aiao_veri.o 
endif

#AO SUPPORT (default)
$(MOD_NAME)-y += ao/drv_ao.o \
		 ao/drv_ao_op.o \
		 ao/drv_ao_track.o \
		 ao/hal_aoe_func.o \
		 ao/hal_aoe.o \
		 ao/drv_ao_intf.o \
		 ao/hal_tianlai_adac.o 

#AI SUPPORT(optional)
ifeq ($(CFG_HI_AI_SUPPORT),y)
$(MOD_NAME)-y += ai/drv_ai_intf.o\
                 ai/drv_ai.o
endif

#ALSA SUPPORT(optional)
ifeq ($(CFG_HI_SND_ALSA_AO_SUPPORT),y)
#ALSA drvier V1
#$(MOD_NAME)-y += alsa/hiaiao_codec.o \
		 alsa/htd_aiao.o \
		 alsa/htd_i2s.o \
		 alsa/htd_dma.o \
		 alsa/drv_aiao_alsa_proc.o \
		 alsa/drv_aiao_alsa_func.o 
#ALSA drvier V2
$(MOD_NAME)-y += alsa/hiaiao_card.o \
		 alsa/hiaiao_dma.o \
		 alsa/hiaiao_codec.o \
		 alsa/hiaiao_i2s.o \
		 alsa/alsa_aiao_proc_func.o \
		 alsa/drv_ao_func.o \
		 alsa/alsa_aiao_volume_func.o
endif

ifeq ($(CFG_HI_SND_ALSA_AI_SUPPORT),y)
$(MOD_NAME)-y +=alsa/drv_ai_func.o
endif
ifeq ($(CFG_HI_ALSA_TVL320_KERNEL_SUPPORT),y)
$(MOD_NAME)-y +=alsa/alsa_i2c.o    \
				alsa/aic31.o	
endif
#CAST SUPPORT
ifeq ($(CFG_HI_SND_CAST_SUPPORT),y)
EXTRA_CFLAGS += -DHI_SND_CAST_SUPPORT
$(MOD_NAME)-y += ao/drv_ao_cast.o \
		 ao/hal_cast.o 
endif

ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
$(MOD_NAME)-y += i2s_alsa/hiaiao_hw_card.o \
		 i2s_alsa/hiaiao_hw_dma.o \
		 i2s_alsa/hiaiao_hw_codec.o \
		 i2s_alsa/hiaiao_hw_i2s.o \
		 i2s_alsa/alsa_aiao_hw_proc_func.o \
		 i2s_alsa/drv_ao_hw_func.o 
endif
#I2S SUPPORT
ifeq ($(CFG_HI_I2S0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_I2S0_SUPPORT
endif
ifeq ($(CFG_HI_I2S1_SUPPORT),y)
EXTRA_CFLAGS += -DHI_I2S1_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_DOUT0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_SND_OUTPUTPORT_I2S0_SUPPORT
endif

#############sound dont support I2S1
#ifeq ($(CFG_HI_I2S1_DOUT0_SUPPORT),y)
#EXTRA_CFLAGS += -DHI_UNF_SND_OUTPUTPORT_I2S1_SUPPORT
#endif

ifeq ($(CFG_HI_I2S0_DIN0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_AI_I2S0_SUPPORT
endif
ifeq ($(CFG_HI_I2S1_DIN0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_AI_I2S1_SUPPORT
endif
ifeq ($(CFG_HI_SND_ALSA_AI_SUPPORT),y)
EXTRA_CFLAGS += -DHI_ALSA_AI_SUPPORT
endif
ifeq ($(CFG_HI_SND_ALSA_I2S_ONLY_SUPPORT),y)
EXTRA_CFLAGS += -I$(SDK_DIR)/source/msp/drv/aiao/aiao_v1_1/i2s_alsa
EXTRA_CFLAGS += -DHI_ALSA_I2S_ONLY_SUPPORT
endif
ifeq ($(CFG_HI_ALSA_TVL320_KERNEL_SUPPORT),y)
EXTRA_CFLAGS += -DHI_ALSA_TLV320_SUPPORT
endif

#===============================================================================
# For Pinshare Set
#===============================================================================
ifeq ($(CFG_HI_I2S0_MCLK_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_MCLK_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_BCLK_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_BCLK_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_WS_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_WS_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_DOUT0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_DOUT0_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_DOUT1_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_DOUT1_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_DOUT2_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_DOUT2_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_DOUT3_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_DOUT3_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_IN0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_IN0_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_IN1_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_IN1_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_IN2_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_IN2_SUPPORT
endif

ifeq ($(CFG_HI_I2S0_IN3_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S0_IN3_SUPPORT
endif


ifeq ($(CFG_HI_I2S1_MCLK_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_MCLK_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_BCLK_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_BCLK_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_WS_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_WS_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_DOUT0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_DOUT0_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_DOUT1_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_DOUT1_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_DOUT2_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_DOUT2_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_DOUT3_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_DOUT3_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_IN0_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_IN0_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_IN1_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_IN1_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_IN2_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_IN2_SUPPORT
endif

ifeq ($(CFG_HI_I2S1_IN3_SUPPORT),y)
EXTRA_CFLAGS += -DHI_UNF_I2S1_IN3_SUPPORT
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
