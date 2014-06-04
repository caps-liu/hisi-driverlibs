#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   varibale
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
#-------------------------------------
#   export variable
#-------------------------------------

ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

SOURCE_DIR      ?= $(SDK_DIR)/source
MSP_DIR         ?= $(SOURCE_DIR)/msp
COMMON_DIR      ?= $(SOURCE_DIR)/common
COMPONENT_DIR   ?= $(SOURCE_DIR)/component
INCLUDE_DIR     ?= $(SDK_DIR)/pub/include
LIB_DIR         ?= $(SDK_DIR)/pub/libs


#-------------------------------------
# local variable
#-------------------------------------
INC :=  -I$(COMMON_DIR)/include             \
        -I$(COMMON_DIR)/api/include         \
        -I$(COMMON_DIR)/drv/include         \
        -I$(MSP_DIR)/include                \
        -I$(MSP_DIR)/api/include            \
        -I$(MSP_DIR)/drv/include            \
        -I$(COMPONENT_DIR)/ha_codec/include	\
	-I$(COMMON_DIR)/api/flash/include	\
	-I$(SDK_DIR)/source/msp/api/mce/db	\
	-I$(SDK_DIR)/source/msp/api/higo/include	\
	-I$(SDK_DIR)/source/msp/drv/mce

CFLAGS  += $(USER_CFLAGS) $(INC) -fPIC 

OBJS := unf_mce.o

LIBS := mce

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
.PHONY: all clean install uninstall

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf libhi_$(LIBS).a
	$(AT)rm -rf libhi_$(LIBS).so

install: all
	$(AT)cp -f libhi_$(LIBS).a	$(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f libhi_$(LIBS).so	$(SHARED_LIB_DIR)/
endif
	$(AT)cp -f $(MSP_DIR)/include/hi_unf_mce.h $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/libhi_$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/libhi_$(LIBS).so
	$(AT)rm -rf $(INCLUDE_DIR)/hi_unf_mce.h

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rsv libhi_$@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o libhi_$@.so $^
endif

