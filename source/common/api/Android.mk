LOCAL_PATH := $(call my-dir)

########## share lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_common
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\" -DANDROID_VERSION=$(PLATFORM_VERSION)

ifdef CFG_HI_LOG_LEVEL
LOCAL_CFLAGS += -DCFG_HI_LOG_LEVEL=$(CFG_HI_LOG_LEVEL)
else
LOCAL_CFLAGS += -DCFG_HI_LOG_LEVEL=1
endif

ifeq (y,$(CFG_HI_LOG_NETWORK_SUPPORT))
LOCAL_CFLAGS += -DLOG_NETWORK_SUPPORT
endif

ifeq (y,$(CFG_HI_LOG_UDISK_SUPPORT))
LOCAL_CFLAGS += -DLOG_UDISK_SUPPORT
endif

ifeq (y,$(CFG_HI_MEMMGR_SUPPORT))
LOCAL_CFLAGS += -DCMN_MMGR_SUPPORT
endif

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := ./sys/hi_common.c     \
        ./mmz/mpi_mmz.c       \
        ./mem/mpi_mem.c       \
        ./mem/mpi_mutils.c    \
        ./mem/mpi_memmap.c    \
        ./mem/mpi_mmgr.c      \
        ./module/mpi_module.c \
        ./log/mpi_log.c       \
        ./stat/mpi_stat.c     \
        ./memdev/mpi_memdev.c \
        ./userproc/mpi_userproc.c \
        ./osal/hi_osal.c

LOCAL_SRC_FILES += ./flash/src/hi_flash.c     \
        ./flash/src/nand.c                    \
        ./flash/src/spi_raw.c                 \
        ./flash/src/nand_raw.c                \
        ./flash/src/emmc_raw.c                \
        ./flash/src/cmdline_parts.c

#LOCAL_SRC_FILES +=  ../../../source/msp/api/otp/otp/mpi_otp.c

ifeq (y,$(CFG_HI_TEST_SUPPORT))
LOCAL_CFLAGS += -DCMN_TEST_SUPPORTED
LOCAL_SRC_FILES += ./test/mpi_test.c
endif

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/log/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mmz/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mem/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/memdev/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/userproc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/module/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/flash/include

ifeq (y,$(CFG_HI_TEST_SUPPORT))
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../drv/test
endif

LOCAL_SHARED_LIBRARIES := libcutils libdl libutils

include $(BUILD_SHARED_LIBRARY)

########## static lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_common
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\" -DANDROID_VERSION=$(PLATFORM_VERSION)

ifdef CFG_HI_LOG_LEVEL
LOCAL_CFLAGS += -DCFG_HI_LOG_LEVEL=$(CFG_HI_LOG_LEVEL)
else
LOCAL_CFLAGS += -DCFG_HI_LOG_LEVEL=1
endif

ifeq (y,$(CFG_HI_LOG_NETWORK_SUPPORT))
LOCAL_CFLAGS += -DLOG_NETWORK_SUPPORT
endif

ifeq (y,$(CFG_HI_LOG_UDISK_SUPPORT))
LOCAL_CFLAGS += -DLOG_UDISK_SUPPORT
endif

ifeq (y,$(CFG_HI_MEMMGR_SUPPORT))
LOCAL_CFLAGS += -DCMN_MMGR_SUPPORT
endif

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := ./sys/hi_common.c     \
        ./mmz/mpi_mmz.c       \
        ./mem/mpi_mem.c       \
        ./mem/mpi_mutils.c    \
        ./mem/mpi_memmap.c    \
        ./mem/mpi_mmgr.c      \
        ./module/mpi_module.c \
        ./log/mpi_log.c       \
        ./stat/mpi_stat.c     \
        ./memdev/mpi_memdev.c \
        ./userproc/mpi_userproc.c \
        ./osal/hi_osal.c

LOCAL_SRC_FILES += ./flash/src/hi_flash.c     \
        ./flash/src/nand.c                    \
        ./flash/src/spi_raw.c                 \
        ./flash/src/nand_raw.c                \
        ./flash/src/emmc_raw.c                \
        ./flash/src/cmdline_parts.c

#LOCAL_SRC_FILES +=  ../../../source/msp/api/otp/otp/mpi_otp.c

ifeq (y,$(CFG_HI_TEST_SUPPORT))
LOCAL_CFLAGS += -DCMN_TEST_SUPPORTED
LOCAL_SRC_FILES += ./test/mpi_test.c
endif

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/log/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mmz/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mem/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/memdev/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/userproc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/module/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/flash/include

ifeq (y,$(CFG_HI_TEST_SUPPORT))
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../drv/test
endif

LOCAL_SHARED_LIBRARIES := libcutils libdl libutils

include $(BUILD_STATIC_LIBRARY)
