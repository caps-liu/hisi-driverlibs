#=======================================
#	local variable
#======================================
#objects := gpio ir cipher pdm pq hdmi vo hifb tde jpeg advca
objects := gpio ir pdm pq hdmi vo hifb tde jpeg advca

ifeq ($(CFG_HI_LOADER_RECOVERY),y)
objects += png
else
objects += i2c frontend demux otp
endif

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
ifneq ($(CFG_HI_LOADER_RECOVERY),y)
objects += pm avplay pvr sync adsp aiao adec vfmw vdec vpss wdg mce png jpge omxvdec
endif
endif

ifeq ($(CFG_HI_GPU),y)
objects += gpu
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
objects += hdcp
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
objects += keyled
endif

ifeq ($(CFG_HI_SCI_SUPPORT),y)
objects += sci
endif

ifeq ($(CFG_HI_AENC_SUPPORT),y)
objects += aenc
endif

ifeq ($(CFG_HI_VENC_SUPPORT),y)
objects += venc
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
objects += ci
ifeq ($(CFG_HI_CI_DEV_CIMAXPLUS),y)
objects += cimax+
endif
endif

ifneq ($(CFG_HI_ADAC_SLIC_SUPPORT)_$(CFG_HI_ADAC_TVL320AIC31_SUPPORT),_)
objects += adac
endif

ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
objects += ssp
endif

ifeq ($(CFG_HI_VI_SUPPORT),y)
objects += vi
objects += vad
endif

ifeq ($(CFG_MSP_BUILDTYPE),y)
objects += base

obj-$(CFG_MSP_BUILDTYPE) += ${addsuffix /,${objects}}

objects :=

endif

ifeq ($(CFG_HI_VOIP_SUPPORT),y)
objects += ndpt
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}
objects_prepare:=${addsuffix _prepare,${objects}}


#=================================================================
#	  rules
#=================================================================

.PHONY: all clean modules_install ${objects} ${objects_clean} ${objects_install} ${objects_uninstall} ${objects_prepare}

all: ${objects}

clean: ${objects_clean}
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf  modules.order modules.builtin

modules_install: ${objects_install}

${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} modules_install

