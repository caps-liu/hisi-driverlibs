LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS) 

LOCAL_MODULE := libhigo libhigoadp
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_PREBUILT_LIBS := store/android/r_static/libhigo.a store/android/r_static/libhigoadp.a
LOCAL_STATIC_LIBRARIES := libhigo libhigoadp

include $(BUILD_MULTI_PREBUILT)

