
ARCH_HI := hisiarm

export HWMEDIA_SRC_DIR = $(HWMEDIA_DIR)/src

#libavutil
hwmedia-objs += ./src/hwdec/hwutil/avstring.o \
	./src/hwdec/hwutil/log.o \
	./src/hwdec/hwutil/mathematics.o \
	./src/hwdec/hwutil/mem.o \

#libavcodec	
hwmedia-objs += ./src/hwdec/hwcodec/bitstream.o \
	./src/hwdec/hwcodec/dsputil.o \
	./src/hwdec/hwcodec/error_resilience.o \
	./src/hwdec/hwcodec/imgconvert.o \
	./src/hwdec/hwcodec/h263.o \
	./src/hwdec/hwcodec/h263dec.o \
	./src/hwdec/hwcodec/h263_parser.o \
	./src/hwdec/hwcodec/mpegvideo.o \
	./src/hwdec/hwcodec/options.o  \
	./src/hwdec/hwcodec/vp6.o  \
	./src/hwdec/hwcodec/vp6dsp.o  \
	./src/hwdec/hwcodec/vp56.o  \
	./src/hwdec/hwcodec/vp56data.o  \
	./src/hwdec/hwcodec/utils.o  \
	./src/hwdec/hwcodec/golomb.o  \
	./src/hwdec/hwcodec/huffman.o  \
	./src/hwdec/hwcodec/intrax8dsp.o  \
	./src/hwdec/hwcodec/jrevdct.o  \
	./src/hwdec/hwcodec/mdct.o  \
	./src/hwdec/hwcodec/mpeg4video_parser.o  \
	./src/hwdec/hwcodec/parser.o  \
	./src/hwdec/hwcodec/simple_idct.o  \
	./src/hwdec/hwcodec/vp3.o  \
	./src/hwdec/hwcodec/vp3_parser.o  \
	./src/hwdec/hwcodec/vp3dsp.o  \
	./src/hwdec/hwcodec/vp5.o  \
	./src/hwdec/hwcodec/h264idct.o \
	./src/hwdec/probe_header.o \
	./src/hwdec/raise.o \

#libhwmedia
hwmedia-objs += ./src/imedia_viddec.o \
	./src/imedia_util.o \

#libdrv
#imedia-objs += ./src/imedia_kernel.o

ifeq ($(ARCH_HI),hisiarm)

hwmedia-objs += ./src/hwdec/hwcodec/arm/dsputil_arm.o \
	./src/hwdec/hwcodec/arm/float_arm_vfp.o \
	./src/hwdec/hwcodec/arm/mpegvideo_arm.o \
	./src/hwdec/hwcodec/arm/mpegvideo_armv5te.o \
	./src/hwdec/hwcodec/arm/dsputil_arm_s.o \
	./src/hwdec/hwcodec/arm/dsputil_vfp.o \
	./src/hwdec/hwcodec/arm/jrevdct_arm.o \
	./src/hwdec/hwcodec/arm/mpegvideo_armv5te_s.o \
	./src/hwdec/hwcodec/arm/simple_idct_arm.o \
	./src/hwdec/hwcodec/arm/simple_idct_armv5te.o \
	./src/hwdec/hwcodec/arm/simple_idct_armv6.o \
	./src/hwdec/hwcodec/arm/h263_loop_armv6.o \
	./src/hwdec/hwcodec/arm/vp6_filter_hv4_armv6.o \
	./src/hwdec/hwcodec/arm/dsputil_armv6.o \
	./src/hwdec/hwcodec/arm/vp6_filter_onetime_armv6.o \
	./src/hwdec/hwcodec/arm/vp56_edge_filterarmv6.o \
	./src/hwdec/hwcodec/arm/vp6_twotapfilter_2d_armv6.o \
	./src/hwdec/hwcodec/arm/vp6_twotapfilter_1d_armv6.o \
	./src/hwdec/hwcodec/arm/dsputil_init_armv6.o
	
#hwmedia-objs += ./libgcc.a.arm.o

#SRC_ROOT := $(HWMEDIA_DIR)/../../../../../../../../
ifndef LINUXROOT
LINUXROOT := $(SRC_ROOT)/kernel/linux-2.6.35
endif
OUTPUT_DIR = $(HWMEDIA_DIR)/bin/arm-hisi_kernel/

IN_DIR = -I$(HWMEDIA_DIR)/inc \
	-I$(HWMEDIA_SRC_DIR) \
	-I$(HWMEDIA_SRC_DIR)/hwdec/inc \
	-I$(HWMEDIA_SRC_DIR)/hwdec/inc/kernel \
	-I$(HWMEDIA_SRC_DIR)/hwdec/hwcodec \
	-I$(HWMEDIA_SRC_DIR)/hwdec/hwcodec/x86 \
	-I$(HWMEDIA_SRC_DIR)/hwdec/hwutil \
	-I$(HWMEDIA_SRC_DIR)/hwdec/hwutil/x86 \
	
EXTRA_CFLAGS += -DBUILD_ARM  -DBUILD_ARM -DHAVE_IPP=0 -mcpu=cortex-a9 -march=armv7-a -fno-signed-zeros -DARM_ASM_OPT -DIMEDIA_LINUX_KERNEL
#EXTRA_CFLAGS += -DBUILD_ARM  -DBUILD_ARM -DHAVE_IPP=0 -mcpu=cortex-a9 -march=armv7-a -mfloat-abi=soft  -fno-signed-zeros -DARM_ASM_OPT -DIMEDIA_LINUX_KERNEL
#EXTRA_LDFLAGS += -L/opt/hisi-linux/x86-arm/gcc-4.4.0-uClibc-0.9.30.2-softvfpv3/lib/gcc/arm-hisi_vfpv3d16-linux-uclibcgnueabi/4.4.1/
#EXTRA_LDFLAGS += -L/opt/hisi-linux/x86-arm/arm-hisiv100-linux/lib/gcc/arm-hi2010-linux-uclibcgnueabi/
#EXTRA_LDFLAGS += -lgcc

else

LINUXROOT := /lib/modules/$(shell uname -r)/source
OUTPUT_DIR = $(HWMEDIA_DIR)/bin/suse11_kernel/

EXTRA_CFLAGS += -DBUILD_X86 -m32
#EXTRA_CFLAGS += -Wno-switch -Wdisabled-optimization -Wpointer-arith -Wredundant-decls -Wno-pointer-sign -Wcast-qual -Wwrite-strings -Wundef
#EXTRA_CFLAGS += -march=i586 -mtune=i586 -msoft-float -fno-math-errno 
EXTRA_LDFLAGS += -L/opt/hisi-linux/x86-arm/arm-hisiv100-linux/target/
endif

obj-y := hwmedia.o

imedia-objs += ./src/imedia_kernel.o hwmedia.o

obj-m := imedia.o

EXTRA_CFLAGS += -D__KERNEL__ -static 

EXTRA_CFLAGS += $(IN_DIR) -freg-struct-return -fno-omit-frame-pointer -Wdeclaration-after-statement -D_ISOC99_SOURCE -D_POSIX_C_SOURCE=200112 
#EXTRA_CFLAGS += -std=c99 -Wno-switch  -fPIC

EXTRA_AFLAGS = 

EXTRA_LDFLAGS += -static 


all:
	make -C $(LINUXROOT) ARCH=arm M=`pwd` modules
	cp $(obj-m) $(OUTPUT_DIR)
clean:
	make -C $(LINUXROOT) M=`pwd` clean


