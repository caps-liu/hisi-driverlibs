#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(CURDIR)/../inc/

LIBS := libOMX_Core
OBJS := omx_core.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(LIBS)

clean: uninstall
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS).so

install: all
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(LIBS).so          $(EXTERN_LIB_DIR)/
endif

uninstall:
	$(AT)rm -rf $(EXTERN_LIB_DIR)/$(LIBS).so

$(LIBS) : $(OBJS)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif

