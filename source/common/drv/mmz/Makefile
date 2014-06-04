ccflags-y := $(CFLAGS_CMN)

obj-y += drv_mmz_ext_k.o drv_mmz_intf.o

ifeq ($(CFG_HI_MMZ_V2_SUPPORT),y)
obj-y += drv_media_mem_v2.o
else
obj-y += drv_media_mem.o
endif
