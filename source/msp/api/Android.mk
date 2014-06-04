LOCAL_PATH := $(call my-dir)

API_MODULE := hdmi gpio vo pdm cipher pq

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
API_MODULE += i2c frontend ir demux tde jpeg otp png jpge higo
endif

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
 ifneq ($(CFG_HI_LOADER_RECOVERY),y)
 API_MODULE += i2c frontend ir demux tde jpeg otp higo \
           pm avplay pvr sync ao adec vdec wdg png omx mce gpu jpge
 endif
endif

ifeq ($(CFG_HI_AI_SUPPORT),y)
API_MODULE += ai
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
API_MODULE += keyled
endif

ifeq ($(CFG_HI_AENC_SUPPORT),y)
API_MODULE += aenc
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
API_MODULE += ci
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
API_MODULE += hdcp
endif

ifeq ($(CFG_HI_SCI_SUPPORT),y)
API_MODULE += sci
endif

ifeq ($(CFG_HI_VI_SUPPORT),y)
API_MODULE += vi 
endif

ifeq ($(CFG_HI_VENC_SUPPORT),y)
API_MODULE += venc
endif

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
API_MODULE += advca
endif


include $(call all-named-subdir-makefiles,$(API_MODULE))
