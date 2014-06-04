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
CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    \
            -I$(CURDIR)                             \
	    -I$(SDK_DIR)/source/common/api/mem/  

CFLAGS  += -DHI_ADEC_MAX_INSTANCE=$(CFG_HI_ADEC_MAX_INSTANCE)
CFLAGS  += -DHI_ADEC_OUTPUTBUF_FRAMENUM=$(CFG_HI_ADEC_OUTPUTBUF_FRAMENUM)

LIBS := libhi_adec

OBJS := mpi_adec.o mpi_adec_core.o

ifeq (y,$(CFG_HI_ADEC_AUDSPECTRUM_SUPPORT))
CFLAGS  += -DHI_ADEC_AUDSPECTRUM_SUPPORT
OBJS += mpi_adec_waveform.o
endif
#===============================================================================
# rules
#===============================================================================
.PHONY : all clean install uninstall

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so

install: all
	$(AT)cp -f  $(LIBS).a           $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so          $(SHARED_LIB_DIR)/
endif

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rsv $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif

