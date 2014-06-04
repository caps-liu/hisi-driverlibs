LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

#====================================================================================================
#use linux sdk var
#====================================================================================================
include $(SDK_DIR)/Android.def

#====================================================================================================
#complie need file name, here not use LOCAL_PATH, use it will complie wrong
#====================================================================================================
SRC_6B   := src_6b
SRC_HARD := src_hard
#===============================================================================
#compile encode lib src
#===============================================================================
LIB_ENC_SOURCES = ${SRC_6B}/jcapimin.c  ${SRC_6B}/jcapistd.c  ${SRC_6B}/jctrans.c  \
                  ${SRC_6B}/jcparam.c   ${SRC_6B}/jcmainct.c  ${SRC_6B}/jdatadst.c \
                  ${SRC_6B}/jcinit.c    ${SRC_6B}/jcmaster.c  ${SRC_6B}/jcmarker.c \
                  ${SRC_6B}/jchuff.c    ${SRC_6B}/jcprepct.c  ${SRC_6B}/jccoefct.c \
                  ${SRC_6B}/jccolor.c   ${SRC_6B}/jcsample.c  ${SRC_6B}/jfdctint.c \
                  ${SRC_6B}/jcphuff.c   ${SRC_6B}/jcdctmgr.c  ${SRC_6B}/jfdctfst.c \
                  ${SRC_6B}/jfdctflt.c
#===============================================================================
#compile decode lib src
#===============================================================================
LIB_DEC_SOURCES = ${SRC_6B}/jdapimin.c  ${SRC_6B}/jdapistd.c  ${SRC_6B}/jdtrans.c  \
                  ${SRC_6B}/jdatasrc.c  ${SRC_6B}/jquant1.c   ${SRC_6B}/jdmaster.c \
                  ${SRC_6B}/jdinput.c   ${SRC_6B}/jdmarker.c  ${SRC_6B}/jdhuff.c   \
                  ${SRC_6B}/jdphuff.c   ${SRC_6B}/jdmainct.c  ${SRC_6B}/jdcoefct.c \
                  ${SRC_6B}/jdpostct.c  ${SRC_6B}/jddctmgr.c  ${SRC_6B}/jquant2.c  \
                  ${SRC_6B}/jidctfst.c  ${SRC_6B}/jidctflt.c  ${SRC_6B}/jidctint.c \
                  ${SRC_6B}/jidctred.c  ${SRC_6B}/jdmerge.c   ${SRC_6B}/jdsample.c \
                  ${SRC_6B}/jdcolor.c   ${SRC_6B}/jdcolor_userbuf.c

LIB_DEC_SOURCES += ${SRC_6B}/transupp.c

LIB_DEC_SOURCES += ${SRC_HARD}/hi_jpeg_hdec_api.c  ${SRC_HARD}/jpeg_hdec_adp.c     \
                   ${SRC_HARD}/jpeg_hdec_api.c     ${SRC_HARD}/jpeg_hdec_mem.c     \
                   ${SRC_HARD}/jpeg_hdec_rwreg.c   ${SRC_HARD}/jpeg_hdec_setpara.c \
                   ${SRC_HARD}/jpeg_hdec_suspend.c ${SRC_HARD}/jpeg_hdec_table.c   \
                   ${SRC_HARD}/jpeg_hdec_sentstream.c  ${SRC_HARD}/hi_jpeg_hdec_test.c

#===============================================================================
#compile encode and decode lib src
#===============================================================================
LIB_COM_SOURCES = ${SRC_6B}/jcomapi.c  ${SRC_6B}/jerror.c  \
                  ${SRC_6B}/jutils.c   ${SRC_6B}/jmemmgr.c
#===============================================================================
#compile lib need mem src
#===============================================================================
LIB_SYSDEPMEMSRC  = ${SRC_6B}/jmemnobs_android.c
#===============================================================================
#compile lib need android file
#===============================================================================
LIB_ANDROID_SRC = ${SRC_6B}/armv6_idct.S
ifeq ($(TARGET_ARCH_VARIANT),x86-atom)
LIB_ANDROID_SRC += ${SRC_6B}/jidctintelsse.c
endif

#===============================================================================
#compile lib need all src
#===============================================================================
LOCAL_SRC_FILES := $(LIB_ENC_SOURCES) $(LIB_DEC_SOURCES) $(LIB_COM_SOURCES) $(LIB_SYSDEPMEMSRC) $(LIB_ANDROID_SRC)
#===============================================================================
#print the information
#===============================================================================
#$(info ====================================================================================================================================)
#$(info LOCAL_SRC_FILES = $(LOCAL_SRC_FILES))
#$(info ====================================================================================================================================)

#====================================================================================================
#need local var
#====================================================================================================
CFG_HI_JPEG6B_STREAMBUFFER_SIZE=1024*1024

#================================================================================
#config the chip type
#================================================================================
#3716CV200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
LOCAL_CFLAGS := -DCONFIG_CHIP_3716CV200_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
LOCAL_CFLAGS := -DCONFIG_CHIP_3719CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
LOCAL_CFLAGS := -DCONFIG_CHIP_3718CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
LOCAL_CFLAGS := -DCONFIG_CHIP_3719MV100_A_VERSION
endif

#S40V200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
LOCAL_CFLAGS := -DCONFIG_CHIP_S40V200_VERSION
endif
#X6 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
LOCAL_CFLAGS := -DCONFIG_CHIP_3712_VERSION
endif
#3716MV300 CHIP
#CFG_CHIP_TYPE=hi3716h
#CFG_CHIP_TYPE=hi3716c
ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
LOCAL_CFLAGS := -DCONFIG_CHIP_3716MV300_VERSION
endif



LOCAL_CFLAGS += -DCFG_HI_JPEG6B_STREAMBUFFER_SIZE=$(CFG_HI_JPEG6B_STREAMBUFFER_SIZE)
LOCAL_CFLAGS += -DCONFIG_JPEG_ADD_GOOGLEFUNCTION
LOCAL_CFLAGS += -DCONFIG_GFX_ANDROID_SDK
#LOCAL_CFLAGS += -DCONFIG_JPEG_DEBUG_INFO

LOCAL_CFLAGS += -DUSE_ANDROID_ASHMEM
LOCAL_CFLAGS += -DANDROID_TILE_BASED_DECODE
LOCAL_CFLAGS += -DAVOID_TABLES 
LOCAL_CFLAGS += -O3 -fstrict-aliasing -fprefetch-loop-arrays
LOCAL_CFLAGS += -DANDROID_TILE_BASED_DECODE

ifeq ($(TARGET_ARCH_VARIANT),x86-atom)
LOCAL_CFLAGS    += -DANDROID_INTELSSE2_IDCT
else
LOCAL_CFLAGS    += -DANDROID_ARMV6_IDCT
endif

#$(info ====================================================================================================================================)
#$(info LOCAL_CFLAGS = $(LOCAL_CFLAGS))
#$(info ====================================================================================================================================)

#====================================================================================================
#complie need include dir
#====================================================================================================
LOCAL_C_INCLUDES := $(LOCAL_PATH)/${SRC_6B}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/${SRC_HARD}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../grc_cmm_inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../inc/inc_6b/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../inc/inc_hard/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../inc/inc_test/
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)/
LOCAL_C_INCLUDES += $(MSP_DIR)/api/tde/include/
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/jpeg/include/
#===============================================================================
#print the information
#===============================================================================
#$(info ====================================================================================================================================)
#$(info LOCAL_C_INCLUDES = $(LOCAL_C_INCLUDES))
#$(info ====================================================================================================================================)
#====================================================================================================
#complie lib name and install dir
#====================================================================================================
LOCAL_MODULE:= libhigo_jpeg

LOCAL_MODULE_TAGS := optional
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

#====================================================================================================
#complie share lib
#====================================================================================================
LOCAL_SHARED_LIBRARIES := libcutils libutils libhi_tde 
#include $(BUILD_SHARED_LIBRARY)
#====================================================================================================
#complie static lib
#====================================================================================================
include $(BUILD_STATIC_LIBRARY)
