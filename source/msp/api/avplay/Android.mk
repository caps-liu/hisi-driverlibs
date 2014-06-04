LOCAL_PATH := $(call my-dir)

########## shared lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_avplay
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"

ifeq ($(CFG_HI_VP_SUPPORT),y)
LOCAL_CFLAGS += -DCFG_HI_VP_SUPPORT
endif

#########hi_hiao###########

ifeq (y,$(CFG_HI_RESAMPLER_QUALITY_LINEAR))
LOCAL_CFLAGS += -DHI_RESAMPLER_QUALITY_LINEAR
endif

ifeq (y,$(CFG_HI_SND_SMARTVOLUME_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_SMARTVOLUME_SUPPORT
endif

ifeq (y,$(CFG_HI_SND_HBRPASSTHROUGH_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_HBRPASSTHROUGH_SUPPORT
endif
ifeq (y,$(CFG_HI_SND_VIRTUALCHN_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_VIRTUALCHN_SUPPORT
endif

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := mpi_avplay.c \
                   unf_avplay.c \
                   avplay_frc.c

#LOCAL_SRC_FILES += $(sort $(call all-c-files-under, ../vo/))
LOCAL_SRC_FILES += ../vo/mpi_disp.c  \
                   ../vo/mpi_disp_tran.c \
                   ../vo/mpi_win.c      \
                   ../vo/unf_display.c	 \
                   ../vo/unf_vo.c

AO_DIR := ../ao

LOCAL_SRC_FILES +=      \
    $(AO_DIR)/unf_sound.c \
    $(AO_DIR)/mpi_ao.c 	\
    $(AO_DIR)/mpi_vir.c   


ifeq (y,$(CFG_HI_AI_SUPPORT))
AI_DIR := ../ai
LOCAL_SRC_FILES += $(AI_DIR)/mpi_ai.c \
		   $(AI_DIR)/unf_ai.c	
endif

ifeq (y,$(CFG_HI_VENC_SUPPORT))
VENC_DIR := ../venc
LOCAL_SRC_FILES += $(VENC_DIR)/mpi_venc.c \
		   $(VENC_DIR)/unf_venc.c	
endif

ifeq (y,$(CFG_HI_VI_SUPPORT))
VI_DIR := ../vi
LOCAL_SRC_FILES += $(VI_DIR)/mpi_vi.c \
		   $(VI_DIR)/unf_vi.c	
endif

ifeq (y,$(CFG_HI_SND_SMARTVOLUME_SUPPORT))
LOCAL_STATIC_LIBRARIES := libsmartvol
endif

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vfmw/vfmw_release
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vdec
LOCAL_C_INCLUDES += $(MSP_DIR)/api/adec
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(HIAO_DIR)/smartvol/include
else
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(HIAO_DIR)/../smartvol/include
endif

LOCAL_SHARED_LIBRARIES := libcutils libutils libhi_common libdl libhi_demux libhi_adec libhi_sync libhi_vdec libhi_hdmi

include $(BUILD_SHARED_LIBRARY)

########## static lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_avplay
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"

ifeq ($(CFG_HI_VP_SUPPORT),y)
LOCAL_CFLAGS += -DCFG_HI_VP_SUPPORT
endif

#########hi_hiao###########

ifeq (y,$(CFG_HI_RESAMPLER_QUALITY_LINEAR))
LOCAL_CFLAGS += -DHI_RESAMPLER_QUALITY_LINEAR
endif

ifeq (y,$(CFG_HI_SND_SMARTVOLUME_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_SMARTVOLUME_SUPPORT
endif

ifeq (y,$(CFG_HI_SND_HBRPASSTHROUGH_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_HBRPASSTHROUGH_SUPPORT
endif
ifeq (y,$(CFG_HI_SND_VIRTUALCHN_SUPPORT))
LOCAL_CFLAGS += -DHI_SND_VIRTUALCHN_SUPPORT
endif

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
LOCAL_SRC_FILES := mpi_avplay.c \
                   unf_avplay.c \
                   avplay_frc.c

#LOCAL_SRC_FILES += $(sort $(call all-c-files-under, ../vo/))
LOCAL_SRC_FILES += ../vo/mpi_disp.c  \
                   ../vo/mpi_disp_tran.c \
                   ../vo/mpi_win.c      \
                   ../vo/unf_display.c	 \
                   ../vo/unf_vo.c

AO_DIR := ../ao

LOCAL_SRC_FILES +=      \
    $(AO_DIR)/unf_sound.c \
    $(AO_DIR)/mpi_ao.c 	\
    $(AO_DIR)/mpi_vir.c   


ifeq (y,$(CFG_HI_AI_SUPPORT))
AI_DIR := ../ai
LOCAL_SRC_FILES += $(AI_DIR)/mpi_ai.c \
		   $(AI_DIR)/unf_ai.c	
endif

ifeq (y,$(CFG_HI_VENC_SUPPORT))
VENC_DIR := ../venc
LOCAL_SRC_FILES += $(VENC_DIR)/mpi_venc.c \
		   $(VENC_DIR)/unf_venc.c	
endif

ifeq (y,$(CFG_HI_VI_SUPPORT))
VI_DIR := ../vi
LOCAL_SRC_FILES += $(VI_DIR)/mpi_vi.c \
		   $(VI_DIR)/unf_vi.c	
endif

ifeq (y,$(CFG_HI_SND_SMARTVOLUME_SUPPORT))
LOCAL_STATIC_LIBRARIES := libsmartvol
endif

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vfmw/vfmw_release
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/vdec
LOCAL_C_INCLUDES += $(MSP_DIR)/api/adec
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(HIAO_DIR)/smartvol/include
else
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(HIAO_DIR)/../smartvol/include
endif

LOCAL_SHARED_LIBRARIES := libcutils libutils libhi_common libdl libhi_demux libhi_adec libhi_sync libhi_vdec libhi_hdmi

include $(BUILD_STATIC_LIBRARY)