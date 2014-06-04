#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    \
            -I$(MSP_DIR)/api/jpeg/jpeg6b/include    \
            -I$(MSP_DIR)/api/jpeg/jpegfmw/include   \
            -I$(MSP_DIR)/drv/vfmw/vfmw_release      \
            -I$(MSP_DIR)/drv/vdec

ifeq (y,$(CFG_HI_VDEC_MJPEG_SUPPORT))
CFLAGS += -DHI_VDEC_MJPEG_SUPPORT=1
else
CFLAGS += -DHI_VDEC_MJPEG_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_REG_CODEC_SUPPORT))
CFLAGS += -DHI_VDEC_REG_CODEC_SUPPORT=1
else
CFLAGS += -DHI_VDEC_REG_CODEC_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=1
ifneq (,$(CFG_HI_VDEC_USERDATA_CC_BUFSIZE))
CFLAGS += -DHI_VDEC_USERDATA_CC_BUFSIZE=$(CFG_HI_VDEC_USERDATA_CC_BUFSIZE)
else
CFLAGS += -DHI_VDEC_USERDATA_CC_BUFSIZE=0xC000
endif
else
CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=0
endif

LIBS := libhi_vdec
OBJS := hi_codec.o mpi_vdec_adapter.o mpi_vdec.o
ifeq (y,$(CFG_HI_VDEC_MJPEG_SUPPORT))
OBJS += mpi_vdec_mjpeg.o
endif

HEADER_FILES := $(MSP_DIR)/include/hi_video_codec.h 

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so
	$(AT)rm -rf $(MJPEG_OBJS)
	$(AT)rm -rf $(MJPEG_LIBS).so

install: all
	$(AT)cp -f  $(LIBS).a           $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so          $(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(HEADER_FILES)     $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))
	$(AT)rm -rf $(EXTERN_LIB_DIR)/$(MJPEG_LIBS).so

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rsv $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif

