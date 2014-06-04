#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := jpeg6b
ifeq ($(CFG_HI_VDEC_MJPEG_SUPPORT),y)
TARGET += jpegfmw
endif

#===============================================================================
# local variable
#===============================================================================

#===============================================================================
# rules  use -a to copy with the link lib
#===============================================================================
.PHONY: all clean install uninstall $(TARGET)

all: $(TARGET)

clean:
	make -C jpeg6b clean
	if [ $(CFG_HI_VDEC_REG_CODEC_SUPPORT) ]; \
	then \
	make -C jpegfmw clean; \
	fi;
install: all 
	make -C jpeg6b install	
	if [ $(CFG_HI_VDEC_REG_CODEC_SUPPORT) ]; \
        then \
	make -C jpegfmw install; \
	fi;
uninstall:
	make -C jpeg6b uninstall
	if [ $(CFG_HI_VDEC_REG_CODEC_SUPPORT) ]; \
        then \
        make -C jpegfmw uninstall; \
        fi;
$(TARGET):
	make -C $@


