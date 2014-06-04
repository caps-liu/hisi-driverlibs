#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

########### shared lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libOMX.hisi.video.encoder
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
#LOCAL_CFLAGS += -DDEBUG
#LOCAL_CFLAGS += -DDEBUG_STREAM
#LOCAL_CFLAGS += -DDEBUG_STATE
LOCAL_CFLAGS += -DUSE_MMZ
LOCAL_CFLAGS += -pthread

LOCAL_SHARED_LIBRARIES := libdl libutils liblog libhi_common

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../drv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../drv/venc
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += frameworks/native/include/media/hardware
LOCAL_C_INCLUDES += device/hisilicon/bigfish/hardware/gpu/android/gralloc

LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))

include $(BUILD_SHARED_LIBRARY)

########### static lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libOMX.hisi.video.encoder
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
#LOCAL_CFLAGS += -DDEBUG
#LOCAL_CFLAGS += -DDEBUG_STREAM
#LOCAL_CFLAGS += -DDEBUG_STATE
LOCAL_CFLAGS += -DUSE_MMZ
LOCAL_CFLAGS += -pthread

LOCAL_SHARED_LIBRARIES := libdl libutils liblog libhi_common

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../drv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../drv/venc
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += frameworks/native/include/media/hardware
LOCAL_C_INCLUDES += device/hisilicon/bigfish/hardware/gpu/android/gralloc

LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))

include $(BUILD_STATIC_LIBRARY)
