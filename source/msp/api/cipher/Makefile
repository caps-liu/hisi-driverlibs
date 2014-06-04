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
CFG_CIPHER_MINI_OR_NOT = y

CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(MSP_DRV_INCLUDE)			\
		  -I$(MSP_UNF_INCLUDE)			\
		  -I$(COMMON_UNF_INCLUDE)		\
		  -I$(COMMON_DRV_INCLUDE)

HEADER_FILES := $(MSP_UNF_INCLUDE)/hi_unf_cipher.h

ifeq ($(CFG_HI_CHIP_TYPE),hi3712)
    ifeq ($(CFG_CIPHER_MINI_OR_NOT),y)
        CFLAGS += -DCFG_CIPHER_MINI
    endif
endif

ifeq ($(CFG_HI_CIPHER_MULTICIPHER_SUPPORT),y)
    CFLAGS += -DCFG_HI_CIPHER_MULTICIPHER_SUPPORT
endif

ifeq ($(CFG_HI_CIPHER_HASH_SUPPORT),y)
    CFLAGS += -DCFG_HI_CIPHER_HASH_SUPPORT
endif

LIBS := libhi_cipher
OBJS := $(patsubst %.c,%.o,$(wildcard ./*.c))


#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

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
