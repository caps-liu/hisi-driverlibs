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
            -I$(CURDIR)                             
     

LIBS := libhi_ai

OBJS := unf_ai.o  mpi_ai.o  
HEADER_FILES := $(MSP_DIR)/include/hi_unf_ai.h
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
