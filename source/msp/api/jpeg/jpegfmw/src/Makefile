
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../../..

include $(SDK_DIR)/base.mak
endif

SRC_DIR=$(shell pwd)

TARGET := jpegfmw

ALIB=libhi_jpeg.a
SLIB=libhi_jpeg.so

#===============================================================================
# local variable
#===============================================================================
CFLAGS = -O2 -Wall
CFLAGS  +=  $(CFG_HI_CFLAGS)
CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    \
            -I$(MSP_DIR)/api/jpeg/$(TARGET)/include      \
            -I$(MSP_DIR)/api/jpeg/$(TARGET)/src/include  \
            -I$(CURDIR)

ifndef CFG_HI_STATIC_LIB_ONLY
CFLAGS  += -fPIC
endif

#===============================================================================
# compile
#===============================================================================
SRC   = $(wildcard *.c)
APP= $(SRC:%.c=%.o)

ifndef CFG_HI_STATIC_LIB_ONLY
all: $(ALIB) $(SLIB)
else
all: $(ALIB)
endif

$(SLIB): ${APP}
	$(CC) -shared -o $@ $(APP)
	rm -rf *.o     

$(ALIB): ${APP}
	$(AR)  -rc -o $@ $(APP)

%.o : %.c
	$(CC) $(CFLAGS)  $(LDFLAGS) -c -o $@ $^
clean:
	rm -rf  *.o
