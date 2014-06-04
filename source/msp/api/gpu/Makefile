#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := gpu
#===============================================================================
# local variable
#===============================================================================

HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/KHR
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/EGL
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/GLES
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/GLES2
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/VG

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: 
ifeq ($(CFG_HI_GPU), y)
	$(AT)rm -rf lib/lib*
ifeq ($(CFG_HI_EGL_TYPE), fb)
	$(AT)cp include/EGL/platform_fbdev/EGL/eglplatform.h include/EGL/ -rf
	$(AT)cp lib/platform_fbdev/libMali.so lib/ -rf
endif

ifeq ($(CFG_HI_EGL_TYPE), higo)
	$(AT)cp include/EGL/platform_higo/EGL/eglplatform.h include/EGL/ -rf
	$(AT)cp lib/platform_higo/libMali.so lib/ -rf
endif

	$(AT)cd lib;\
	ln -sf libMali.so       libEGL.so.1.4;\
	ln -sf libEGL.so.1.4    libEGL.so.1;\
	ln -sf libEGL.so.1      libEGL.so;\
	ln -sf libMali.so       libGLESv1_CM.so.1.1 ;\
	ln -sf libGLESv1_CM.so.1.1  libGLESv1_CM.so.1;\
	ln -sf libGLESv1_CM.so.1    libGLESv1_CM.so;\
	ln -sf libMali.so           libGLESv2.so.2.0;\
	ln -sf libGLESv2.so.2.0     libGLESv2.so.2;\
	ln -sf libGLESv2.so.2       libGLESv2.so;\
	ln -sf libMali.so           libOpenVG.so;\
	ln -sf libMali.so           libOpenVGU.so;\
	cd -
endif

clean:
	$(AT)rm -rf lib/lib*


install: all
ifeq ($(CFG_HI_GPU), y)
	$(AT)cp -rf  $(HEADER_FILES)     $(INCLUDE_DIR)/
	$(AT)cp -ralf lib/* $(SHARED_LIB_DIR)/
endif

uninstall:
ifeq ($(CFG_HI_GPU), y)
	$(AT)rm -rf $(SHARED_LIB_DIR)/libMali.so
	$(AT)rm -rf $(SHARED_LIB_DIR)/libGLES*
	$(AT)rm -rf $(SHARED_LIB_DIR)/libEGL*
	$(AT)rm -rf $(SHARED_LIB_DIR)/libOpenVG*
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))
endif
