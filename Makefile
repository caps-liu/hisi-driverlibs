#====================================================================================
#                          export
#====================================================================================
.EXPORT_ALL_VARIABLES:

SDK_DIR=${PWD}

include base.mak

CFG_HI_EXPORT_FLAG=y

###############################################################################
#	  rules
###############################################################################
.PHONY: all clean modules_install

all:
	make -C source/common/drv
	make -C source/msp/drv

clean:
	make -C source/common/drv clean
	make -C source/msp/drv clean

modules_install:
	make -C source/common/drv modules_install
	make -C source/msp/drv modules_install
