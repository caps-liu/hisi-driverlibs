#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
objects :=  adac        \
            adec        \
            adsp        \
            aenc        \
            ai          \
            aiao        \
            ao          \
            avplay      \
            ci          \
            cimax+      \
            cipher      \
            demux       \
            dmac        \
            frontend    \
            gpio        \
            gpu         \
            hdcp        \
            hdmi        \
            hifb        \
            higo        \
            i2c         \
            ir          \
            jpeg        \
            jpge        \
            keyled      \
            mce         \
            ndpt        \
            omx         \
            omxvdec     \
            otp         \
            pdm         \
            pm          \
            png         \
            pvr         \
            sci         \
            sync        \
            tde         \
            vad         \
            vdec        \
            venc        \
            vfmw        \
            vi          \
            vo          \
            pq          \
            vpss        \
            wdg			\
			advca

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

depends:=
ifeq (${obj},)
depends += drv
depends += api
else
depends:=${obj}
endif

depends_clean:=$(addsuffix _clean,${depends})
depends_install:=$(addsuffix _install,${depends})
depends_uninstall:=$(addsuffix _uninstall,${depends})

HEADER_FILES := $(MSP_UNF_INCLUDE)/hi_unf_common.h \
                $(MSP_UNF_INCLUDE)/hi_unf_audio.h  \
                $(MSP_UNF_INCLUDE)/hi_audio_codec.h  \
                $(MSP_UNF_INCLUDE)/hi_unf_video.h  \
                $(MSP_UNF_INCLUDE)/hi_unf_version.h  \
                $(MSP_UNF_INCLUDE)/hi_unf_ecs.h  \
                $(MSP_UNF_INCLUDE)/hi_error_mpi.h

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall
all:    ${depends}

clean:  ${depends_clean}

install:${depends_install}

uninstall:${depends_uninstall}

#==================================================================
#                          drv
#==================================================================
.PHONY: drv drv_clean drv_install drv_uninstall
drv:
	make -C drv all
drv_clean:
	make -C drv clean
drv_install:
	make -C drv install
drv_uninstall:
	make -C drv uninstall

#==================================================================
#                          api
#==================================================================
.PHONY: api api_clean api_install api_uninstall
api:
	make -C api all
api_clean:
	make -C api clean
api_install:
	make -C api install
	$(AT)cp -f  $(HEADER_FILES)     $(INCLUDE_DIR)/
api_uninstall:
	make -C api uninstall
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))

#==================================================================
#                          modules
#==================================================================
.PHONY: ${objects} ${objects_clean} ${objects_install} ${objects_uninstall}

${objects}:
	test ! -d drv/$@ || make -C drv/$@ all
	test ! -d api/$@ || make -C api/$@ all

${objects_clean}:
	test ! -d drv/$(patsubst %_clean,%,$@) || make -C drv/$(patsubst %_clean,%,$@) clean
	test ! -d api/$(patsubst %_clean,%,$@) || make -C api/$(patsubst %_clean,%,$@) clean

${objects_install}:
	test ! -d drv/$(patsubst %_install,%,$@) || make -C drv/$(patsubst %_install,%,$@) install
	test ! -d api/$(patsubst %_install,%,$@) || make -C api/$(patsubst %_install,%,$@) install

${objects_uninstall}:
	test ! -d drv/$(patsubst %_uninstall,%,$@) || make -C drv/$(patsubst %_uninstall,%,$@) uninstall
	test ! -d api/$(patsubst %_uninstall,%,$@) || make -C api/$(patsubst %_uninstall,%,$@) uninstall


