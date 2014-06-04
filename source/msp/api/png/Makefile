#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := png
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
 	    -I$(MSP_DIR)/api/$(TARGET)/include	    \
 	    -I$(MSP_DIR)/drv/$(TARGET)/include 

LIBS := libhi_$(TARGET)


INSTALL_DIR = $(MSP_DIR)/api/$(TARGET)/release
FLAGS_TMP=$(subst -c , ,$(CFLAGS)) 
ifdef CFG_HI_STATIC_LIB_ONLY
ENABLE_LIB_MODE = --enable-shared=no
endif

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: 
	mkdir -p release
	cd libpng-1.4.0;sh ./configure --host=$(CFG_HI_TOOLCHAINS_NAME) $(ENABLE_LIB_MODE) CFLAGS="$(FLAGS_TMP)" prefix=$(INSTALL_DIR);make install
	$(AT)cp -ralf   $(MSP_DIR)/api/$(TARGET)/include/hi_png_config.h $(INSTALL_DIR)/include/
clean:
	cd libpng-1.4.0;sh ./configure --host=$(CFG_HI_TOOLCHAINS_NAME) $(ENABLE_LIB_MODE) CFLAGS="$(FLAGS_TMP)" prefix=$(INSTALL_DIR);make clean 
	rm -rf release
	rm -rf libpng-1.4.0/.deps 
	rm -f libpng-1.4.0/config.log
	rm -f libpng-1.4.0/config.status
	rm -f libpng-1.4.0/libpng.pc
	rm -f libpng-1.4.0/libpng-config
	rm -f libpng-1.4.0/libtool
	rm -f libpng-1.4.0/Makefile

install: all
	$(AT)cp -ralf 	$(INSTALL_DIR)/lib/libpng*.a  	$(STATIC_LIB_DIR)/
	$(AT)cp -ralf 	$(INSTALL_DIR)/lib/pkgconfig  	$(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -ralf  	$(INSTALL_DIR)/lib/libpng*.so* 	$(SHARED_LIB_DIR)/
	$(AT)cp -ralf 	$(INSTALL_DIR)/lib/pkgconfig  	$(SHARED_LIB_DIR)/
endif
	$(AT)cp -rf  $(INSTALL_DIR)/include/*     $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/*png*.a
	$(AT)rm -rf $(STATIC_LIB_DIR)/pkgconfig
	$(AT)rm -rf $(SHARED_LIB_DIR)/*png*.so*
	$(AT)rm -rf $(SHARED_LIB_DIR)/pkgconfig
	rm -rf $(INCLUDE_DIR)/*png* 

