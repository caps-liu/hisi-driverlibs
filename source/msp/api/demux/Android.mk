LOCAL_PATH := $(call my-dir)

############ shared lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_demux
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := mpi_demux.c     \
                   unf_demux.c
LOCAL_SRC_FILES += mpi_descrambler.c   \
                   unf_descrambler.c

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vfmw/vfmw_release
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vdec
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/demux

LOCAL_SHARED_LIBRARIES := libcutils libutils libhi_common

include $(BUILD_SHARED_LIBRARY)

############ static lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_demux
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := mpi_demux.c     \
                   unf_demux.c
LOCAL_SRC_FILES += mpi_descrambler.c   \
                   unf_descrambler.c

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vfmw/vfmw_release
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vdec
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/demux

LOCAL_SHARED_LIBRARIES := libcutils libutils libhi_common

include $(BUILD_STATIC_LIBRARY)
