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


CFLAGS += -D_GNU_SOURCE -D_XOPEN_SOURCE=600 
CFLAGS += -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)         \
            -I$(COMMON_API_INCLUDE)         \
            -I$(COMMON_DRV_INCLUDE)         \
            -I$(MSP_UNF_INCLUDE)            \
            -I$(MSP_API_INCLUDE)            \
            -I$(MSP_DRV_INCLUDE)            \
            -I$(MSP_DIR)/api/pvr/include

PVR_SMOOTH_LIB = $(CURDIR)/lib/libhi_pvrsmooth.a

LIBS := libhi_pvr

OBJS := unf_pvr.o           \
        hi_pvr_fifo.o       \
        hi_pvr_index.o      \
        hi_pvr_intf.o       \
        hi_pvr_play_ctrl.o  \
        hi_pvr_rec_ctrl.o   \
        pvr_bitstream.o     \
        pvr_index.o         \
        pvr_scd.o

ifeq (hi_pvr_smooth_ctrl.c, $(wildcard hi_pvr_smooth_ctrl.c)) 
OBJS += hi_pvr_smooth_ctrl.o
else
SMOOTH_OBJS := hi_pvr_smooth_ctrl.o
endif

HEADER_FILES := $(MSP_DIR)/include/hi_unf_pvr.h 

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS) hi_pvr_smooth_ctrl.o
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so

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

$(LIBS) : $(OBJS)
	$(shell [ -e hi_pvr_smooth_ctrl.c ] || $(AR) -x $(PVR_SMOOTH_LIB))
	$(AT)$(AR) -rsv $(CURDIR)/lib/libhi_pvrsmooth.a  $(CURDIR)/hi_pvr_smooth_ctrl.o  > /dev/null
	$(AT)$(AR) -rsv $@.a $^ $(SMOOTH_OBJS)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^ $(SMOOTH_OBJS)
endif

