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
            -I$(CURDIR)/../adec                     

CFLAGS  += -DCFG_HI_ADEC_MAX_INSTANCE=$(CFG_HI_ADEC_MAX_INSTANCE)
CFLAGS  += -DCFG_HI_ADEC_OUTPUTBUF_FRAMENUM=$(CFG_HI_ADEC_OUTPUTBUF_FRAMENUM)

ifeq ($(CFG_HI_AI_SUPPORT),y)
CFLAGS += -DHI_AENC_AI_SUPPORT
endif

LIBS := libhi_aenc

OBJS := unf_aenc.o  mpi_aenc.o  mpi_aenc_core.o mpi_aenc_lsrc.o
HEADER_FILES := $(MSP_DIR)/include/hi_unf_aenc.h
#===============================================================================
# rules
#===============================================================================
.PHONY : all clean install uninstall

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so

install:all
	$(AT)cp -f  $(LIBS).a           $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so          $(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(HEADER_FILES)     $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rsv $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif
