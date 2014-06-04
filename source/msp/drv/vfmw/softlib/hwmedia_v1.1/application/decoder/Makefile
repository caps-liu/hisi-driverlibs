# Copyright (c) 2008-2012 S00133955/HUAWEI  All rights reserved.
#  

OUTPUT_NAME = decoder
ifeq ($(ARCH),ARM)
CROSS_PREFIX = arm-hisi_vfpv3d16-linux-
OUTPUT_DIR = ../../bin/arm-hisi_linux/
else
OUTPUT_DIR = ../../bin/suse11_i386/
endif
CC = $(CROSS_PREFIX)gcc
LINKER = $(CROSS_PREFIX)gcc
AR = $(CROSS_PREFIX)ar
RANLIB = $(CROSS_PREFIX)ranlib
STRIP = $(CROSS_PREFIX)strip
AS = yasm
CORE_LINK_LIBS = -lpthread -ldl -lm
#C++ = g++
#LINKER = g++
#CORE_LINK_LIBS = -lpthread -ldl -lm -lcrypt -lstdc++

# C COMPILE FLAGS
#CCFLAGS += -D_REENTRANT -D__USE_POSIX -D__linux__ -pipe
CCFLAGS += -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE 

# ASM COMPILE FLAGS
ASFLAGS =

ifeq ($(DEST),debug)
CCFLAGS += -g -Wall
ASFLAGS += -W
else
CCFLAGS += -O2
ASFLAGS += -O2
endif

ifeq ($(ARCH),ARM)
CCFLAGS += -DBUILD_ARM -mtune=cortex-a9 -march=armv7-a -fno-signed-zeros -DHAVE_IPP=0
#elifeq ($(ARCH),X86_64)
#CCFLAGS += -DBUILD_X86
#ASFLAGS += -f elf64
else
CCFLAGS += -DBUILD_X86 -m32 -DSYS_LINUX
ASFLAGS += -f elf
endif

# EACH DIRECTORY WITH HEADERS MUST BE APPENDED IN THIS MANNER TO THE CCFLAGS
CCFLAGS += -I../common
CCFLAGS += -I../../inc
CCFLAGS += -I../../src

ASFLAGS += -I../x86

# CPP COMPILE FLAGS
C++FLAGS = $(CCFLAGS)

# lib
LINK_OPTS += -L./
LINK_OPTS += -L$(OUTPUT_DIR)
LINK_OPTS += -L../../src
LINK_OPTS += -L../../src/hwdec

LINK_LIBS = -lhwmedia -lc
LINK_LIBS += -Wl,-rpath=./

CFILES = ../common/getopt.c \
	./main.c

ASMFILES =
	
CPPFILES = 

LIBFILES =

all: $(OUTPUT_NAME)

$(OUTPUT_NAME): $(CFILES:.c=.o) $(CPPFILES:.cpp=.o) $(ASMFILES:.asm=.o) $(LIBFILES)
	$(LINKER) -o $@ $(CFILES:.c=.o) $(CPPFILES:.cpp=.o) $(ASMFILES:.asm=.o) $(LINK_OPTS) $(LINK_LIBS) $(CORE_LINK_LIBS)
	cp $@ $(OUTPUT_DIR)
	
.PHONY: clean
clean:
	rm -f $(CFILES:.c=.o) $(CPPFILES:.cpp=.o) $(ASMFILES:.asm=.o)
	rm -f $(OUTPUT_NAME)

.SUFFIXES: .cpp .c .asm .o

.cpp.o:
	$(C++) $(C++FLAGS) -c -o $*.o $*.cpp

.c.o:
	$(CC) $(CCFLAGS) -c -o $*.o $*.c

.asm.o:
	$(AS) $(ASFLAGS) -o $*.o $*.asm
