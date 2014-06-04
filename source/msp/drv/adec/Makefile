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

MP3DEC_DIR = $(SDK_DIR)/source/msp/drv/adec/mp3dec 
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
                -I$(MP3DEC_DIR)                    

EXTRA_CFLAGS += -DHI_ADEC_MAX_INSTANCE=$(CFG_HI_ADEC_MAX_INSTANCE)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
EXTRA_CFLAGS += -DINTERLEAVED_OUTPUT
ifeq (y,$(CFG_HI_MCE_SUPPORT))
EXTRA_CFLAGS += -DHI_MCE_SUPPORT
endif

HI_DRV_DIR := $(MSP_DIR)/drv

MOD_NAME := hi_adec

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


$(MOD_NAME)-y   :=  drv_adec.o drv_adec_k.o  

ifeq ($(CFG_HI_MCE_SUPPORT),y)
$(MOD_NAME)-y+= ./mp3dec/ha_mp3dec_wrap.o         \
                ./mp3dec/mp3_decoder.o            \
                ./mp3dec/bits_op.o                \
                ./mp3dec/dct_core.o               \
                ./mp3dec/memory_op.o              \
                ./mp3dec/dequant.o                \
                ./mp3dec/huffman.o                \
                ./mp3dec/huffman_rom.o            \
                ./mp3dec/dec_layer12_sample.o     \
                ./mp3dec/imdct.o                  \
                ./mp3dec/mp3_rom.o                \
                ./mp3dec/data_decode.o            \
                ./mp3dec/stereo.o                 \
                ./mp3dec/synthesis.o              \
                ./mp3dec/trig_rom.o               \
                ./mp3dec/armgcc/asmpoly_gcc.o     
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

