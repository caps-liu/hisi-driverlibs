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
	    -I$(MSP_DIR)/api/vo

LIBS := libhi_vou
OBJS := $(patsubst %.c,%.o,$(wildcard ./*.c))

#OBJS_ALG := bitstream.o compress.o

HEADER_FILES := $(MSP_DIR)/include/hi_unf_vo.h $(MSP_DIR)/include/hi_unf_disp.h

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall vo_base

all: vo_base $(LIBS) 

vo_base:
#	make -C vo_algbase

clean:
#	make -C vo_algbase clean
	$(AT)rm -rf $(OBJS) $(OBJS_ALG)
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
#	make -C vo_algbase
#	$(CFG_HI_TOOLCHAINS_NAME)-ar x vo_algbase/lib/$(CFG_HI_TOOLCHAINS_NAME)/*.a
	$(AT)$(AR) -rsv $@.a $^ $(OBJS_ALG)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^ $(OBJS_ALG)
endif

