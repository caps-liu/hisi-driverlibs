#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := jpegfmw
#===============================================================================
# local variable
#===============================================================================

LIBS := libhi_jpeg

HEADER_FILES := $(MSP_DIR)/api/jpeg/$(TARGET)/include/hi_jpg_errcode.h
HEADER_FILES += $(MSP_DIR)/api/jpeg/$(TARGET)/include/hi_jpg_type.h
HEADER_FILES += $(MSP_DIR)/api/jpeg/$(TARGET)/include/jpg_decctrl.h

#===============================================================================
# rules  use -a to copy with the link lib
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

clean:
	make -C src clean
	$(AT)rm -rf src/$(LIBS)*.so
	$(AT)rm -rf src/$(LIBS)*.a
install: all
	$(AT)cp -f  src/$(LIBS)*.a           $(STATIC_LIB_DIR)/  -a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  src/$(LIBS)*.so          $(SHARED_LIB_DIR)/  -a
endif	
	$(AT)cp -f  $(HEADER_FILES)          $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS)*.a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS)*.so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))

$(LIBS) :
	$(AT)rm -rf src/$(LIBS)*.a
	$(AT)rm -rf src/$(LIBS)*.so 
	make -C src
