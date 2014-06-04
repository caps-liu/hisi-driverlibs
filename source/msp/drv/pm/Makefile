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
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/drv/pm

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
EXTRA_CFLAGS += -DHI_KEYLED_SUPPORT
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_pmoc

$(MOD_NAME)-y   :=  drv_pmoc_intf.o

ifeq ($(CFG_HI_DVFS_CPU_SUPPORT),y)
EXTRA_CFLAGS += -DHI_DVFS_CPU_SUPPORT

$(MOD_NAME)-y += clock_mpu.o	\
		 hi_opp_data.o  \
		 opp.o		\
		 hi_dvfs.o	\
		 hi_cpufreq.o   \
		 hi_cpufreq_hotplug.o 
endif

ifeq ($(CFG_HI_DVFS_CORE_SUPPORT),y)
EXTRA_CFLAGS += -DHI_DVFS_CORE_SUPPORT
endif

ifeq ($(CFG_HI_PMU_DEVICE_SELECT),y)
EXTRA_CFLAGS += -DHI_PMU_DEVICE_SELECT
endif

ifeq ($(CFG_HI_DVFS_GPU_SUPPORT),y)
EXTRA_CFLAGS += -DHI_DVFS_GPU_SUPPORT
$(MOD_NAME)-y += drv_pm_gpu_proc.o
endif

ifeq ($(CFG_HI_AVS_SUPPORT),y)
EXTRA_CFLAGS += -DHI_AVS_SUPPORT
endif

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o


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

