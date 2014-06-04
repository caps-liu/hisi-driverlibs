#=======================================
#	export varibale
#=======================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

#=======================================
#	local varibale
#=======================================

#objects:= hdmi gpio vo pdm cipher advca
objects:= hdmi vo pdm

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
objects+= i2c frontend ir demux tde jpeg otp png jpge higo
endif

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
 ifneq ($(CFG_HI_LOADER_RECOVERY),y)
# objects+= i2c frontend ir demux tde jpeg otp higo \
#           pm avplay pvr sync ao adec vdec wdg png omx mce jpge
 objects+= i2c ir ao omx
 endif
endif

ifeq ($(CFG_HI_GPU),y)
#objects += gpu 
endif

ifeq ($(CFG_HI_AI_SUPPORT),y)
objects += ai
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
objects += keyled
endif

ifeq ($(CFG_HI_AENC_SUPPORT),y)
objects += aenc
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
objects += ci
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
objects += hdcp
endif

ifeq ($(CFG_HI_SCI_SUPPORT),y)
objects += sci
endif

ifeq ($(CFG_HI_VI_SUPPORT),y)
objects += vi
endif

ifeq ($(CFG_HI_VENC_SUPPORT),y)
objects += venc
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	  rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.PHONY: all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall} test
#test:
#	@echo ${objects}

all:    ${objects}

clean:  ${objects_clean}

install:${objects_install}

uninstall:${objects_uninstall}

${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_uninstall,%,$@} uninstall
