HIGOLIB=$(shell pwd)

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := higo

#===============================================================================

#===============================================================================
NEED_HIGO_OSFP_DIR :=$(HIGOLIB)/store/higo_release_osfp
NEED_HIGO_OHFP_DIR :=$(HIGOLIB)/store/higo_release_ohfp
NEED_HIGO_NSFP_DIR :=$(HIGOLIB)/store/higo_release_nsfp
NEED_HIGO_NHFP_DIR :=$(HIGOLIB)/store/higo_release_nhfp
NEED_HIGO_GHFP_DIR :=$(HIGOLIB)/store/higo_release_ghfp
NEED_HIGO_UHFP_DIR :=$(HIGOLIB)/store/higo_release_uhfp


#===============================================================================
# local variable
#===============================================================================

HEADER_FILES := $(MSP_DIR)/api/$(TARGET)/include/hi_go_winc.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_text.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_surface.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_gdev.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_errno.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_encoder.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_decoder.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_cursor.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_comm.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_bliter.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_effect.h

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	if [ $(CFG_HI_TOOLCHAINS_NAME) =  arm-hisiv200-linux ]; \
        then \
        cp -a $(NEED_HIGO_GHFP_DIR)/higodep.tar.gz       $(HIGOLIB)/lib;     \
        cp -a $(NEED_HIGO_GHFP_DIR)/r_dynamic/*          $(HIGOLIB)/lib;     \
        cp -a $(NEED_HIGO_GHFP_DIR)/r_static/*           $(HIGOLIB)/lib;     \
        cp -a $(NEED_HIGO_GHFP_DIR)/effect/lib/*         $(HIGOLIB)/lib;     \
	cp -rf $(NEED_HIGO_GHFP_DIR)/include/*.h         $(HIGOLIB)/include; \
	cp -rf $(NEED_HIGO_GHFP_DIR)/effect/include/*.h  $(HIGOLIB)/include; \
	fi;

clean:
	$(AT)rm -rf lib/*

install: all 
	if [ -z $(CFG_HI_PNG_DECODER_SUPPORT) ]; \
        then \
       	rm -f  $(EXTERN_LIB_DIR)/higo-adp/decoder/libhigo_png.so; \
	$(AR) -r lib/libhigoadp.a lib/cut-obj/higoimageproviderdec_png.o; \
	fi; \
	if [ -z $(CFG_HI_FREETYPE_FONT_SUPPORT) ]; \
	then \
	rm -f  $(EXTERN_LIB_DIR)/higo-adp/font/libhigo_freetype2.so; \
	$(AR) -r lib/libhigo.a lib/cut-obj/higofontprovider_freetype.o; \
	fi;
	$(AT)cp -rf  $(HEADER_FILES)     $(INCLUDE_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -rf  lib/*.so            $(SHARED_LIB_DIR)/
	$(AT)cp -rf  lib/higo-adp        $(EXTERN_LIB_DIR)/
endif
	$(AT)cp -rf  lib/*.a             $(STATIC_LIB_DIR)/
	
	rm -rf lib/cut-obj
uninstall:
	$(AT)rm -rf $(SHARED_LIB_DIR)/libhigo*.so
	$(AT)rm -rf $(SHARED_LIB_DIR)/libeffect.so
	$(AT)rm -rf $(EXTERN_LIB_DIR)/higo-adp
	$(AT)rm -rf $(STATIC_LIB_DIR)/libhigo*.a
	$(AT)rm -rf $(STATIC_LIB_DIR)/libeffect.a
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))
