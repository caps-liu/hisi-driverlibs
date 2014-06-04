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
CFG_CIPHER_MINI_OR_NOT = y

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)
EXTRA_CFLAGS += -I$(MSP_UNF_INCLUDE)			\
		-I$(MSP_DRV_INCLUDE) 					\
		-I$(MSP_DIR)/drv/cipher		    		\
		-I$(MSP_DIR)/drv/cipher/sha				\
		-I$(COMMON_UNF_INCLUDE)					\
		-I$(COMMON_DRV_INCLUDE)					\
		-I$(COMPONENT_DIR)/hisecurity/common/drv \
		-I$(INCLUDE_DIR)
		

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_cipher
obj-$(CFG_MSP_BUILDTYPE) := $(MOD_NAME).o
$(MOD_NAME)-y += ./drv_cipher.o ./hal_cipher.o ./drv_cipher_intf.o 
$(MOD_NAME)-y += ./sha/drv_cipher_sha1.o ./sha/drv_cipher_sha2.o

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

