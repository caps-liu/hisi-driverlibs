#===============================================================================
#  include chip type from SDK cfg.mak file   
#===============================================================================
#include $(PWD)/../../../../../../../base.mak

#===============================================================================
#  set chip type by yourself   
#===============================================================================
CFG_HI_CHIP_TYPE = hi3716cv200
#CFG_HI_CHIP_TYPE = hi3716cv200es
#CFG_HI_CHIP_TYPE = hi3719
#CFG_HI_CHIP_TYPE = hi3535
#CFG_HI_CHIP_TYPE = hi3712v100
#CFG_HI_CHIP_TYPE = hi3716m
#CFG_HI_CHIP_TYPE = hi3716c
#CFG_HI_CHIP_TYPE = hi3716h
#===============================================================================
#   chip type used by STB
#   PRODUCT_DIR: product path
#   CFG_CAP_DIR£ºvfmw decode capbility
#===============================================================================
ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200)
PRODUCT_DIR = Hi3716CV200
CFG_CAP_DIR = CFG0
KTEST_CFLAGS := -DCHIP_TYPE_HI3716CV200
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716cv200es)
PRODUCT_DIR = HiS40V200
CFG_CAP_DIR = CFG0
KTEST_CFLAGS := -DCHIP_TYPE_HI3716CV200ES
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3712v100)
PRODUCT_DIR = HiX6V300
CFG_CAP_DIR = CFG0
#CFG_CAP_DIR = HD_FULL_Source
#CFG_CAP_DIR = SD_ONLY_Source
#CFG_CAP_DIR = HD_SIMPLE_Source
KTEST_CFLAGS := -DCHIP_TYPE_HI3712V100
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716m)
PRODUCT_DIR = HiX5HD
CFG_CAP_DIR = CFG0
#CFG_CAP_DIR = HD_FULL_Source
KTEST_CFLAGS := -DCHIP_TYPE_HI3716M
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716c)
PRODUCT_DIR = HiX5HD
CFG_CAP_DIR = CFG0
#CFG_CAP_DIR = HD_FULL_Source
KTEST_CFLAGS := -DCHIP_TYPE_HI3716C
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716h)
PRODUCT_DIR = HiX5HD
CFG_CAP_DIR = CFG0
#CFG_CAP_DIR = HD_FULL_Source
KTEST_CFLAGS := -DCHIP_TYPE_HI3716H
endif
