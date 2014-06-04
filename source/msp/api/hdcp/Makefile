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
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(MSP_DRV_INCLUDE)			\
	  -I$(MSP_UNF_INCLUDE)			\
	  -I$(COMMON_UNF_INCLUDE)		\
	  -I$(COMMON_DRV_INCLUDE)

ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
	CFLAGS += -DCFG_HDCP_V200
else
	CFLAGS += -DCFG_HDCP_V100
endif

HEADER_FILES := $(MSP_UNF_INCLUDE)/hi_unf_hdcp.h

LIBS := libhi_hdcp
OBJS := $(patsubst %.c,%.o,$(wildcard ./*.c))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

install: all
	$(AT)cp -f  $(LIBS).a         $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so        $(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(HEADER_FILES)   $(INCLUDE_DIR)/

$(LIBS) : $(OBJS)	
	$(AT)$(AR) -rc -o $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif
	
clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))
