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
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(MSP_API_INCLUDE)			\
	  	-I$(MSP_DRV_INCLUDE)			\
	  	-I$(MSP_UNF_INCLUDE)			\
	  	-I$(COMMON_UNF_INCLUDE)			\
	  	-I$(COMMON_DRV_INCLUDE)

HEADER_FILES := $(MSP_UNF_INCLUDE)/hi_unf_otp.h

ifeq ($(CFG_HI_MINIOTP_SUPPORT),y)
	CFLAGS += -DCFG_OTP_MINI
endif

LIBS := libhi_otp
OBJS := $(patsubst %.c,%.o,$(wildcard ./*.c))
OBJS += otp/mpi_otp.o

#===============================================================================
# rules
#===============================================================================
all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).a
	$(AT)rm -rf $(LIBS).so

install: all
	$(AT)cp -f  $(LIBS).a         $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so        $(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(HEADER_FILES)   $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(foreach file, $(HEADER_FILES), $(AT)rm -rf $(INCLUDE_DIR)/$(notdir $(file)))

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rc -o $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif
