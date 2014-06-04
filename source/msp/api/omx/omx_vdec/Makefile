#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(CURDIR)/../inc/         \
            -I$(CURDIR)/../../../drv/omxvdec/         \
            -I$(CURDIR)/../../../drv/vfmw/vfmw_release        \

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    

LDFLAGS = -L$(COMMON_DIR)/api
LDLIBS = -lhi_common

LIBS := libOMX.hisi.video.decoder
OBJS := omx_allocator.o omx_event_queue.o omx_vdec.o vdec_drv_ctx.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

clean: uninstall
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).so

install: all
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so          $(EXTERN_LIB_DIR)/
endif

uninstall:
	$(AT)rm -rf $(EXTERN_LIB_DIR)/$(LIBS).so

$(LIBS) : $(OBJS)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared $(LDFLAGS) $(LDLIBS)  -o $@.so $^
endif

