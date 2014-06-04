#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

# V1:HI3716, V2:HI3110, V3:V1R1
#SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V1
#SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V2
SDK_SECURITY_ARCH_VERSION=SDK_SECURITY_ARCH_VERSION_V3

CFLAGS += -D$(SDK_SECURITY_ARCH_VERSION)


#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += $(CFG_CFLAGS)

###These header files are for SDK_SECURITY_ARCH_VERSION_V3###
CFLAGS += -I$(ADVCA_TYPE_DIR)/include					\
			-I$(MSP_UNF_INCLUDE)                    	\
			-I$(MSP_API_INCLUDE)						\
			-I$(MSP_DRV_INCLUDE)						\
	  		-I$(COMMON_UNF_INCLUDE)						\
	  		-I$(COMMON_DRV_INCLUDE)						\
	  		-I$(COMMON_API_INCLUDE)						\
			-I$(MSP_DIR)/drv/							\
			-I$(MSP_DIR)/drv/include					\
	  		-I$(MSP_DIR)/include

###These header files are for SDK_SECURITY_ARCH_VERSION_V1###
CFLAGS += -I$(KCOM_DIR)/include						\
			-I$(KECS_DIR)/include					\
			-I$(KECS_DIR)/drv/include

HEADER_FOLDER := $(ADVCA_DIR)/$(ADVCA_TYPE_DIR)/include
LIBS := libhi_advca
OBJS=$(patsubst %.c,%.o,$(wildcard ./*.c))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rc -o $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif

install: all
	$(AT)cp -f  $(LIBS).a 			$(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so         	$(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(MSP_UNF_INCLUDE)/hi_unf_advca.h	$(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(AT)rm -rf $(INCLUDE_DIR)/hi_unf_advca.h

clean:
	$(AT)rm -rf  $(LIBS).a
	$(AT)rm -rf  $(LIBS).so
	$(AT)rm -rf  *.o
