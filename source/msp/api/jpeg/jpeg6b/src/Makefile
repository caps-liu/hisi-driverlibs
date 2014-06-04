JPEG_CURDIR = $(shell pwd)

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# standard jpeg dir
#===============================================================================
SRC_6B   = ${JPEG_CURDIR}/src_6b
SRC_HARD = ${JPEG_CURDIR}/src_hard

TARGET := jpeg6b
DRV_TARGET := jpeg
#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  -I$(JPEG_CURDIR)                       \
	    -I${SRC_6B}                            \
            -I${SRC_HARD}                          \
            -I${JPEG_CURDIR}/../inc/inc_6b         \
            -I${JPEG_CURDIR}/../inc/inc_hard       \
            -I${JPEG_CURDIR}/../inc/inc_test       \
            -I${JPEG_CURDIR}/../grc_cmm_inc        \
            -I$(MSP_DIR)/api/tde/include           \
            -I$(COMMON_UNF_INCLUDE)                \
            -I$(MSP_DIR)/drv/$(DRV_TARGET)/include

CFLAGS  +=  $(CFG_HI_CFLAGS)
CFLAGS  +=  -DCFG_HI_JPEG6B_STREAMBUFFER_SIZE=$(CFG_HI_JPEG6B_STREAMBUFFER_SIZE)
#================================================================================
#config the chip type
#================================================================================
#3716CV200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
CFLAGS += -DCONFIG_CHIP_3716CV200_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719cv100)
CFLAGS += -DCONFIG_CHIP_3719CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3718cv100)
CFLAGS += -DCONFIG_CHIP_3718CV100_VERSION
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3719mv100_a)
CFLAGS += -DCONFIG_CHIP_3719MV100_A_VERSION
endif

#S40V200 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
CFLAGS += -DCONFIG_CHIP_S40V200_VERSION
endif
#X6 CHIP
ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
CFLAGS += -DCONFIG_CHIP_3712_VERSION
endif

#3716MV300 CHIP
#CFG_CHIP_TYPE=hi3716h
#CFG_CHIP_TYPE=hi3716c
ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
CFLAGS += -DCONFIG_CHIP_3716MV300_VERSION
endif

#CFLAGS += -DCONFIG_JPEG_DEBUG_INFO
#CFLAGS += -DCONFIG_JPEG_ADD_GOOGLEFUNCTION

#================================================================================
#this macro define in hi_gfx_comm.h
#================================================================================
#ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
#CFLAGS += -DCONFIG_GFX_ADVCA_RELEASE
#endif

#===============================================================================
# complie
#===============================================================================

CPPFLAGS = 
LDFLAGS  =

O = o

RM  = rm -f
AR  = ar rc
AR2 = ranlib


#===============================================================================
#compile encode lib src
#===============================================================================
LIB_ENC_SOURCES = ${SRC_6B}/jcapimin.c  ${SRC_6B}/jcapistd.c  ${SRC_6B}/jctrans.c  \
                  ${SRC_6B}/jcparam.c   ${SRC_6B}/jcmainct.c  ${SRC_6B}/jdatadst.c \
                  ${SRC_6B}/jcinit.c    ${SRC_6B}/jcmaster.c  ${SRC_6B}/jcmarker.c \
                  ${SRC_6B}/jchuff.c    ${SRC_6B}/jcprepct.c  ${SRC_6B}/jccoefct.c \
                  ${SRC_6B}/jccolor.c   ${SRC_6B}/jcsample.c  ${SRC_6B}/jfdctint.c \
                  ${SRC_6B}/jcphuff.c   ${SRC_6B}/jcdctmgr.c  ${SRC_6B}/jfdctfst.c \
                  ${SRC_6B}/jfdctflt.c  
#===============================================================================
#compile decode lib src
#===============================================================================
LIB_DEC_SOURCES = ${SRC_6B}/jdapimin.c  ${SRC_6B}/jdapistd.c  ${SRC_6B}/jdtrans.c  \
                  ${SRC_6B}/jdatasrc.c  ${SRC_6B}/jquant1.c   ${SRC_6B}/jdmaster.c \
                  ${SRC_6B}/jdinput.c   ${SRC_6B}/jdmarker.c  ${SRC_6B}/jdhuff.c   \
                  ${SRC_6B}/jdphuff.c   ${SRC_6B}/jdmainct.c  ${SRC_6B}/jdcoefct.c \
                  ${SRC_6B}/jdpostct.c  ${SRC_6B}/jddctmgr.c  ${SRC_6B}/jquant2.c  \
                  ${SRC_6B}/jidctfst.c  ${SRC_6B}/jidctflt.c  ${SRC_6B}/jidctint.c \
                  ${SRC_6B}/jidctred.c  ${SRC_6B}/jdmerge.c   ${SRC_6B}/jdsample.c \
                  ${SRC_6B}/jdcolor.c   ${SRC_6B}/jdcolor_userbuf.c

LIB_DEC_SOURCES += ${SRC_6B}/transupp.c

LIB_DEC_SOURCES += ${SRC_HARD}/hi_jpeg_hdec_api.c  ${SRC_HARD}/jpeg_hdec_adp.c     \
                   ${SRC_HARD}/jpeg_hdec_api.c     ${SRC_HARD}/jpeg_hdec_mem.c     \
                   ${SRC_HARD}/jpeg_hdec_rwreg.c   ${SRC_HARD}/jpeg_hdec_setpara.c \
                   ${SRC_HARD}/jpeg_hdec_suspend.c ${SRC_HARD}/jpeg_hdec_table.c   \
                   ${SRC_HARD}/jpeg_hdec_sentstream.c  ${SRC_HARD}/hi_jpeg_hdec_test.c

#===============================================================================
#compile encode and decode lib src
#===============================================================================
LIB_COM_SOURCES = ${SRC_6B}/jcomapi.c  ${SRC_6B}/jerror.c  \
                  ${SRC_6B}/jutils.c   ${SRC_6B}/jmemmgr.c
#===============================================================================
#compile lib need mem src
#===============================================================================
LIB_SYSDEPMEMSRC = ${SRC_6B}/jmemnobs.c
#===============================================================================
#compile lib need all src
#===============================================================================
SOURCES = $(LIB_ENC_SOURCES) $(LIB_DEC_SOURCES) $(LIB_COM_SOURCES) $(LIB_SYSDEPMEMSRC)



#===============================================================================
#compile lib need include
#===============================================================================
INCLUDES = jdhuff.h jpegint.h  jpeglib.h jversion.h jinclude.h jmemsys.h jmorecfg.h   \
           jdct.h jerror.h



#===============================================================================
#compile encode lib objects
#===============================================================================
LIB_ENC_OBJECTS = ${SRC_6B}/jcapimin.$(O)  ${SRC_6B}/jcapistd.$(O)  ${SRC_6B}/jctrans.$(O)  \
                  ${SRC_6B}/jcparam.$(O)   ${SRC_6B}/jcmainct.$(O)  ${SRC_6B}/jdatadst.$(O) \
                  ${SRC_6B}/jcinit.$(O)    ${SRC_6B}/jcmaster.$(O)  ${SRC_6B}/jcmarker.$(O) \
                  ${SRC_6B}/jchuff.$(O)    ${SRC_6B}/jcprepct.$(O)  ${SRC_6B}/jccoefct.$(O) \
                  ${SRC_6B}/jccolor.$(O)   ${SRC_6B}/jcsample.$(O)  ${SRC_6B}/jfdctint.$(O) \
                  ${SRC_6B}/jcphuff.$(O)   ${SRC_6B}/jcdctmgr.$(O)  ${SRC_6B}/jfdctfst.$(O) \
                  ${SRC_6B}/jfdctflt.$(O)
#===============================================================================
#compile decode lib objects
#===============================================================================
LIB_DEC_OBJECTS = ${SRC_6B}/jdapimin.$(O)  ${SRC_6B}/jdapistd.$(O)  ${SRC_6B}/jdtrans.$(O)  \
                  ${SRC_6B}/jdatasrc.$(O)  ${SRC_6B}/jquant1.$(O)   ${SRC_6B}/jdmaster.$(O) \
                  ${SRC_6B}/jdinput.$(O)   ${SRC_6B}/jdmarker.$(O)  ${SRC_6B}/jdhuff.$(O)   \
                  ${SRC_6B}/jdphuff.$(O)   ${SRC_6B}/jdmainct.$(O)  ${SRC_6B}/jdcoefct.$(O) \
                  ${SRC_6B}/jdpostct.$(O)  ${SRC_6B}/jddctmgr.$(O)  ${SRC_6B}/jquant2.$(O)  \
                  ${SRC_6B}/jidctfst.$(O)  ${SRC_6B}/jidctflt.$(O)  ${SRC_6B}/jidctint.$(O) \
                  ${SRC_6B}/jidctred.$(O)  ${SRC_6B}/jdmerge.$(O)   ${SRC_6B}/jdsample.$(O) \
                  ${SRC_6B}/jdcolor.$(O)   ${SRC_6B}/jdcolor_userbuf.$(O)

LIB_DEC_OBJECTS += ${SRC_6B}/transupp.$(O)

LIB_DEC_OBJECTS += ${SRC_HARD}/hi_jpeg_hdec_api.$(O)  ${SRC_HARD}/jpeg_hdec_adp.$(O)     \
                   ${SRC_HARD}/jpeg_hdec_api.$(O)     ${SRC_HARD}/jpeg_hdec_mem.$(O)     \
                   ${SRC_HARD}/jpeg_hdec_rwreg.$(O)   ${SRC_HARD}/jpeg_hdec_setpara.$(O) \
                   ${SRC_HARD}/jpeg_hdec_suspend.$(O) ${SRC_HARD}/jpeg_hdec_table.$(O)   \
                   ${SRC_HARD}/jpeg_hdec_sentstream.$(O)  ${SRC_HARD}/hi_jpeg_hdec_test.$(O)

#===============================================================================
#compile encode and decode lib objects
#===============================================================================
LIB_COM_OBJECTS = ${SRC_6B}/jcomapi.$(O)  ${SRC_6B}/jutils.$(O)  \
                  ${SRC_6B}/jerror.$(O)   ${SRC_6B}/jmemmgr.$(O)
#===============================================================================
#compile lib need memobjects
#===============================================================================
LIB_SYSDEPMEM_OBJECTS = ${SRC_6B}/jmemnobs.$(O)
#===============================================================================
#compile lib all objects
#===============================================================================
LIBOBJECTS=$(LIB_ENC_OBJECTS) $(LIB_DEC_OBJECTS) $(LIB_COM_OBJECTS) $(LIB_SYSDEPMEM_OBJECTS)


#===============================================================================
#begin complie
#===============================================================================
ifdef CFG_HI_STATIC_LIB_ONLY
all:  libjpeg6b.a
else
all:  libjpeg6b.a libjpeg6b.so
endif 


libjpeg6b.a:  $(LIBOBJECTS)
	${RM}  lib${TARGET}*.a  -rf
	$(AR)  libjpeg6b.a  $(LIBOBJECTS)
	$(AR2) libjpeg6b.a
	ln -s  libjpeg6b.a  libjpeg.a

libjpeg6b.so: $(LIBOBJECTS)
	${RM} -rf lib${TARGET}*.so
	$(CC) -o  libjpeg6b.so -shared $(LIBOBJECTS)
	ln -s  libjpeg6b.so  libjpeg.so


clean:
	@$(RM) -r ${LIBOBJECTS}
	$(RM) *.o *.lo libjpeg*.a libjpeg*.so libjpeg6b.la
	$(RM) -r .libs _libs


