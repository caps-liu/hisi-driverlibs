	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"vdm_hal_mpeg2.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0
@ -Idrivers/msp/vfmw/vfmw_v4.0
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200/osal/linux_kernel
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DENV_ARMLINUX_KERNEL
@ -DDNR_DISABLE -DSCD_MP4_SLICE_ENABLE -DSUPPORT_JPEG_444
@ -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB -D__VFMW_REGISTER_ISR__
@ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT -DVFMW_MVC_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=16
@ -DCFG_MAX_CHAN_NUM=16 -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT
@ -DVFMW_SYSTEM_REG_DISABLE -DCHIP_TYPE_hi3716cv200
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC020 -DHI_GPIOI2C_SUPPORT
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_VDEC_SVDEC_BUILTIN
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg2.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -p -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-strict-overflow
@ -fconserve-stack -fno-pic -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -foptimize-register-move
@ -fpeephole -fpeephole2 -fprofile -fpromote-loop-indices
@ -freg-struct-return -fregmove -frename-registers -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop -fsched-interblock
@ -fsched-spec -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
@ -fsection-anchors -fsigned-zeros -fsplit-ivs-in-unroller
@ -fsplit-wide-types -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-pre -ftree-reassoc
@ -ftree-scev-cprop -ftree-sink -ftree-sra -ftree-switch-conversion
@ -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
@ -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mapcs-frame -mglibc -mlittle-endian

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	MP2HAL_V200R004_InitHal
	.type	MP2HAL_V200R004_InitHal, %function
MP2HAL_V200R004_InitHal:
	.fnstart
.LFB1356:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2HAL_V200R004_InitHal, .-MP2HAL_V200R004_InitHal
	.align	2
	.global	MP2HAL_V200R004_MakeReg
	.type	MP2HAL_V200R004_MakeReg, %function
MP2HAL_V200R004_MakeReg:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrh	r5, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mul	ip, r4, r5	@ tmp142, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldr	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	sub	r4, ip, #1	@ tmp143, tmp142,
	bfi	r5, r4, #0, #20	@ tmp144, tmp143,,
	str	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	ldr	r4, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	ip, [r4, #0]	@ tmp146,* <variable>.basic_cfg0
	orr	r3, ip, #1073741824	@ tmp218, tmp146,
	str	r3, [r4, #0]	@ tmp218,* <variable>.basic_cfg0
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mov	r4, #3	@ tmp152,
	ldr	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	bfc	ip, #31, #1	@ tmp149,,
	str	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	bfi	ip, r4, #0, #4	@ tmp151, tmp152,,
	str	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r2, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	mov	r4, r4, lsr #6	@ tmp154, <variable>.VahbStride,
	bfi	ip, r4, #4, #10	@ tmp156, tmp154,,
	str	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp158,* <variable>.basic_cfg1
	orr	r3, ip, #16384	@ tmp219, tmp158,
	str	r3, [r4, #0]	@ tmp219,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	mov	r4, #1	@ tmp164,
	ldr	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	bfc	ip, #15, #1	@ tmp161,,
	str	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	bfi	ip, r4, #16, #12	@ tmp163, tmp164,,
	str	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp166,* <variable>.basic_cfg1
	orr	r3, ip, #536870912	@ tmp220, tmp166,
	str	r3, [r4, #0]	@ tmp220,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	bfc	ip, #31, #1	@ tmp169,,
	str	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	bfc	r4, #28, #1	@ tmp171,,
	str	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	bfc	ip, #30, #1	@ tmp173,,
	str	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	ldr	r4, [r0, #60]	@ <variable>.FfAptEn, <variable>.FfAptEn
	mov	ip, #0	@ tmp177,
	ldr	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	bfc	r3, #0, #1	@ tmp175,,
	str	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	str	ip, [r3, #0]	@ tmp177,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	bfi	ip, r4, #0, #2	@ tmp180, <variable>.FwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	bfi	ip, r4, #2, #2	@ tmp183, <variable>.BwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	ldr	r4, [r0, #16]	@ <variable>.avm_addr, <variable>.avm_addr
	ldr	r3, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp186, <variable>.MsgSlotAddr,
	str	ip, [r4, #0]	@ tmp186, <variable>.av_msg_addr
	ldr	ip, [r0, #20]	@ <variable>.vam_addr, <variable>.vam_addr
	ldr	r3, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r4, r3, #15	@ tmp189, <variable>.MsgSlotAddr,
	str	r4, [ip, #0]	@ tmp189, <variable>.va_msg_addr
	ldr	r3, [r0, #28]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	ip, r1, #255	@ tmp192, <variable>.CurPicPhyAddr,
	str	ip, [r3, #0]	@ tmp192, <variable>.ystaddr_1d
	ldrb	r4, [r2, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r3, [r2, #148]	@ temp.551, <variable>.PicHeightInMb
	sub	r1, r4, #1	@ tmp195, <variable>.PictureStructure,
	ldr	ip, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r1, r1	@ tmp196, tmp195
	cmp	r1, #1	@ tmp196,
	str	r4, [ip, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	r1, #2	@ iftmp.442,
	movhi	r1, #1	@ iftmp.442,
	mul	r1, r3, r1	@ tmp200, temp.551, iftmp.442
	ldrh	ip, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #36]	@ <variable>.uvoffset_1d, <variable>.uvoffset_1d
	mul	r1, ip, r1	@ tmp202, <variable>.PicWidthInMb, tmp200
	mov	r1, r1, asl #8	@ tmp203, tmp202,
	str	r1, [r3, #0]	@ tmp203, <variable>.uvoffset_1d
	ldr	ip, [r2, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r3, [r0, #24]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	cmp	ip, #0	@ <variable>.StreamLength,
	ldreq	r1, [r2, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldrne	r1, [r2, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldreq	r2, [r2, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldrne	r2, [r2, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r0, r2, r1, lsr #3	@, tmp214, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, r0, #15	@ tmp216, tmp214,
	mov	r0, #0	@,
	str	r2, [r3, #0]	@ tmp216, <variable>.stream_base_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2HAL_V200R004_MakeReg, .-MP2HAL_V200R004_MakeReg
	.align	2
	.global	MP2HAL_V200R004_MakeDnMsg
	.type	MP2HAL_V200R004_MakeDnMsg, %function
MP2HAL_V200R004_MakeDnMsg:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrh	r3, [r2, #152]	@ D.31116, <variable>.PicWidthInMb
	mov	r4, r2	@ pMp2DecParam, pMp2DecParam
	mov	r5, r0	@ pDnMsgInf, pDnMsgInf
	cmp	r3, #512	@ D.31116,
	mov	r8, r1	@ pHwMem, pHwMem
	bhi	.L22	@,
	ldrh	r2, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L23	@,
	ldr	lr, [r0, #0]	@ <variable>.d0, <variable>.d0
	sub	r0, r3, #1	@ tmp226, D.31116,
	ldr	ip, [lr, #0]	@ tmp227,* <variable>.d0
	bfi	ip, r0, #0, #9	@ tmp227, tmp226,,
	str	ip, [lr, #0]	@ tmp227,* <variable>.d0
	ldr	r3, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldrh	r7, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r2, [r3, #0]	@ tmp232,* <variable>.d0
	sub	r6, r7, #1	@ tmp231, <variable>.PicHeightInMb,
	bfi	r2, r6, #16, #9	@ tmp232, tmp231,,
	str	r2, [r3, #0]	@ tmp232,* <variable>.d0
	ldr	r0, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldr	r1, [r4, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	ldr	lr, [r0, #0]	@ tmp235,* <variable>.d0
	bfi	lr, r1, #25, #1	@ tmp235, <variable>.Mpeg1Flag,,
	str	lr, [r0, #0]	@ tmp235,* <variable>.d0
	ldr	r7, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldr	r6, [r7, #0]	@ tmp237,* <variable>.d1
	bfi	r6, ip, #0, #1	@ tmp237, <variable>.FramePredFrameDct,,
	str	r6, [r7, #0]	@ tmp237,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldr	r0, [r3, #0]	@ tmp242,* <variable>.d1
	bfi	r0, r2, #8, #2	@ tmp242, <variable>.PictureStructure,,
	str	r0, [r3, #0]	@ tmp242,* <variable>.d1
	ldr	lr, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	ldr	ip, [lr, #0]	@ tmp247,* <variable>.d1
	bfi	ip, r1, #10, #1	@ tmp247, <variable>.SecondFieldFlag,,
	str	ip, [lr, #0]	@ tmp247,* <variable>.d1
	ldr	r6, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r7, [r4, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	ldr	r2, [r6, #0]	@ tmp252,* <variable>.d1
	bfi	r2, r7, #16, #1	@ tmp252, <variable>.ConcealmentMotionVectors,,
	str	r2, [r6, #0]	@ tmp252,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	ldr	lr, [r3, #0]	@ tmp257,* <variable>.d1
	bfi	lr, r0, #24, #3	@ tmp257, <variable>.PicCodingType,,
	str	lr, [r3, #0]	@ tmp257,* <variable>.d1
	ldr	ip, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	ldr	r7, [ip, #0]	@ tmp262,* <variable>.d1
	bfi	r7, r1, #27, #1	@ tmp262, <variable>.Mp1FwdmvFullPel,,
	str	r7, [ip, #0]	@ tmp262,* <variable>.d1
	ldr	r2, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r6, [r4, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	ldr	r0, [r2, #0]	@ tmp267,* <variable>.d1
	bfi	r0, r6, #28, #1	@ tmp267, <variable>.Mp1BwdmvFullPel,,
	str	r0, [r2, #0]	@ tmp267,* <variable>.d1
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	lr, [r4, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	ip, [r3, #0]	@ tmp272,* <variable>.d2
	bfi	ip, lr, #0, #4	@ tmp272, <variable>.Fcode,,
	str	ip, [r3, #0]	@ tmp272,* <variable>.d2
	ldr	r7, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r6, [r7, #0]	@ tmp277,* <variable>.d2
	bfi	r6, r1, #8, #4	@ tmp277, <variable>.Fcode,,
	str	r6, [r7, #0]	@ tmp277,* <variable>.d2
	ldr	r0, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	lr, [r0, #0]	@ tmp282,* <variable>.d2
	bfi	lr, r2, #16, #4	@ tmp282, <variable>.Fcode,,
	str	lr, [r0, #0]	@ tmp282,* <variable>.d2
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r7, [r3, #0]	@ tmp287,* <variable>.d2
	bfi	r7, ip, #24, #4	@ tmp287, <variable>.Fcode,,
	str	r7, [r3, #0]	@ tmp287,* <variable>.d2
	ldr	r6, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	ldr	r2, [r6, #0]	@ tmp292,* <variable>.d2
	bfi	r2, r1, #31, #1	@ tmp292, <variable>.TopFieldFirst,,
	str	r2, [r6, #0]	@ tmp292,* <variable>.d2
	ldr	lr, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r0, [r4, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldr	ip, [lr, #0]	@ tmp297,* <variable>.d3
	bfi	ip, r0, #0, #2	@ tmp297, <variable>.IntraDcPrecision,,
	str	ip, [lr, #0]	@ tmp297,* <variable>.d3
	ldr	r3, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r7, [r4, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldr	r6, [r3, #0]	@ tmp302,* <variable>.d3
	bfi	r6, r7, #8, #1	@ tmp302, <variable>.QuantType,,
	str	r6, [r3, #0]	@ tmp302,* <variable>.d3
	ldr	r2, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	ldr	r0, [r2, #0]	@ tmp307,* <variable>.d3
	bfi	r0, r1, #16, #1	@ tmp307, <variable>.IntraVlcFormat,,
	str	r0, [r2, #0]	@ tmp307,* <variable>.d3
	ldr	ip, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	ldr	r7, [ip, #0]	@ tmp312,* <variable>.d3
	bfi	r7, lr, #24, #1	@ tmp312, <variable>.AlternateScan,,
	str	r7, [ip, #0]	@ tmp312,* <variable>.d3
	ldr	r3, [r5, #16]	@ <variable>.d4, <variable>.d4
	ldr	r6, [r4, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	r1, r6, #15	@ tmp318, <variable>.BwdRefPhyAddr,
	str	r1, [r3, #0]	@ tmp318, <variable>.bwd_address
	ldr	r0, [r5, #20]	@ <variable>.d5, <variable>.d5
	ldr	r2, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	lr, r2, #15	@ tmp321, <variable>.FwdRefPhyAddr,
	str	lr, [r0, #0]	@ tmp321, <variable>.fwd_address
	ldr	r7, [r5, #24]	@ <variable>.d6, <variable>.d6
	ldr	ip, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r6, ip, #15	@ tmp324, <variable>.DispFramePhyAddr,
	str	r6, [r7, #0]	@ tmp324, <variable>.rcn_address
	ldr	r3, [r5, #28]	@ <variable>.d7, <variable>.d7
	ldr	r1, [r4, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r0, r1, #15	@ tmp327, <variable>.PmvColmbPhyAddr,
	str	r0, [r3, #0]	@ tmp327, <variable>.current_pmv_addr
	ldr	r0, [r4, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.31181,
	ldr	r0, [r4, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r7, r0	@ D.31185,
	beq	.L24	@,
	ldr	lr, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31181,
	ldr	sl, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r4, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r3, [r5, #32]	@ <variable>.d8, <variable>.d8
	add	sl, r0, sl, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r1, r2, lr, lsr #3	@, BytePos0.654, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, sl, #15	@ tmp395, BytePos1,
	bic	ip, r1, #15	@ tmp394, BytePos0.654,
	and	r1, r1, #15	@ tmp403, BytePos0.654,
	ldr	lr, [r3, #0]	@ tmp397,* <variable>.d8
	rsb	r0, r2, ip	@ tmp396, tmp395, tmp394
	bfi	lr, r0, #0, #24	@ tmp397, tmp396,,
	str	lr, [r3, #0]	@ tmp397,* <variable>.d8
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r2, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	lr, [r3, #0]	@ tmp399,* <variable>.d9
	bfi	lr, r2, #0, #24	@ tmp399, <variable>.StreamLength,,
	str	lr, [r3, #0]	@ tmp399,* <variable>.d9
	ldr	r2, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	lr, [r2, #0]	@ tmp412,* <variable>.d9
	and	r0, ip, #7	@ tmp408, <variable>.StreamBitOffset,
	add	r1, r0, r1, asl #3	@, tmp411, tmp408, tmp403,
	bfi	lr, r1, #24, #7	@ tmp412, tmp411,,
	str	lr, [r2, #0]	@ tmp412,* <variable>.d9
	beq	.L16	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31181, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp416,* D.31181
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp418,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp417,
	str	lr, [sp, #0]	@ tmp418,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp419,
	str	lr, [sp, #4]	@ tmp419,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp420,
	str	lr, [sp, #8]	@ tmp420,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp421,
	str	lr, [sp, #12]	@ tmp421,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp422,
	str	lr, [sp, #16]	@ tmp422,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp423,
	str	lr, [sp, #20]	@ tmp423,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC6	@,
	add	ip, r3, #7	@ tmp430, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC6	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp430
	mov	ip, r2, lsr #3	@ tmp424, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp426, tmp424,
	add	r3, r2, r3, asr #3	@, tmp432, tmp426, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.678, D.31181, tmp432
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp434,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp436,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp435,
	str	lr, [sp, #0]	@ tmp436,
	ldrb	r6, [ip, #3]	@ zero_extendqisi2	@ tmp437,
	str	r6, [sp, #4]	@ tmp437,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp438,
	str	lr, [sp, #8]	@ tmp438,
	ldrb	r6, [ip, #5]	@ zero_extendqisi2	@ tmp439,
	str	r6, [sp, #12]	@ tmp439,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp440,
	str	lr, [sp, #16]	@ tmp440,
	ldrb	ip, [ip, #7]	@ zero_extendqisi2	@ tmp441,
	str	ip, [sp, #20]	@ tmp441,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC7	@,
	ldr	r3, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L16:
	ldr	ip, [r5, #40]	@ <variable>.d10, <variable>.d10
	and	sl, sl, #15	@ tmp454, BytePos1,
	cmp	r7, #0	@ D.31185,
	ldr	r2, [ip, #0]	@ tmp447,* <variable>.d10
	bfc	r2, #0, #24	@ tmp447,,
	str	r2, [ip, #0]	@ tmp447,* <variable>.d10
	ldr	r3, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r1, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r0, [r3, #0]	@ tmp451,* <variable>.d11
	add	r6, r1, #24	@ tmp449, <variable>.StreamLength,
	bfi	r0, r6, #0, #24	@ tmp451, tmp449,,
	str	r0, [r3, #0]	@ tmp451,* <variable>.d11
	ldr	r6, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	ip, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r6, #0]	@ tmp463,* <variable>.d11
	and	r2, ip, #7	@ tmp459, <variable>.StreamBitOffset,
	add	r1, r2, sl, asl #3	@, tmp462, tmp459, tmp454,
	bfi	r0, r1, #24, #7	@ tmp463, tmp462,,
	str	r0, [r6, #0]	@ tmp463,* <variable>.d11
	beq	.L17	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	r6, r7, r3, lsr #3	@, rp, D.31185, <variable>.StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ tmp467,* D.31185
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp469,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp468,
	str	ip, [sp, #0]	@ tmp469,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp470,
	str	lr, [sp, #4]	@ tmp470,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp471,
	str	ip, [sp, #8]	@ tmp471,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp472,
	str	lr, [sp, #12]	@ tmp472,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp473,
	str	ip, [sp, #16]	@ tmp473,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp474,
	str	lr, [sp, #20]	@ tmp474,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	r2, r6, #7	@ tmp481, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp475, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp481
	sub	r2, ip, #8	@ tmp477, tmp475,
	add	r3, r2, r6, asr #3	@, tmp483, tmp477, <variable>.StreamLength,
	add	r6, r7, r3	@ rp.714, D.31185, tmp483
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp485,
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp487,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp486,
	str	ip, [sp, #0]	@ tmp487,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp488,
	str	lr, [sp, #4]	@ tmp488,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp489,
	str	ip, [sp, #8]	@ tmp489,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp490,
	str	lr, [sp, #12]	@ tmp490,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp491,
	str	ip, [sp, #16]	@ tmp491,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp492,
	str	lr, [sp, #20]	@ tmp492,
	bl	dprint_vfmw	@
.L17:
	mov	r3, r5	@ ivtmp.592, pDnMsgInf
	mov	r0, #0	@ i,
.L15:
	ldr	ip, [r3, #48]	@ tmp493, <variable>.dmatrix
	add	r1, r3, #4	@ tmp510, ivtmp.592,
	ldrb	r6, [r4, #80]	@ zero_extendqisi2	@ tmp494, <variable>.IntraQuantTab
	add	r2, r4, #2	@ tmp511, ivtmp.595,
	add	r0, r0, #2	@ i, i,
	cmp	r0, #32	@ i,
	strb	r6, [ip, #0]	@ tmp494, <variable>.intra_quantiser_matrix_even
	ldr	ip, [r3, #48]	@ tmp496, <variable>.dmatrix
	ldrb	r6, [r4, #81]	@ zero_extendqisi2	@ tmp497, <variable>.IntraQuantTab
	strb	r6, [ip, #2]	@ tmp497, <variable>.intra_quantiser_matrix_odd
	ldr	ip, [r3, #48]	@ tmp499, <variable>.dmatrix
	ldrb	r6, [r4, #16]	@ zero_extendqisi2	@ tmp500, <variable>.NonIntraQuantTab
	strb	r6, [ip, #1]	@ tmp500, <variable>.non_Intra_quantiser_matrix_even
	ldr	ip, [r3, #48]	@ tmp502, <variable>.dmatrix
	add	r3, r1, #4	@ ivtmp.592, tmp510,
	ldrb	r6, [r4, #17]	@ zero_extendqisi2	@ tmp503, <variable>.NonIntraQuantTab
	add	r4, r2, #2	@ ivtmp.595, tmp511,
	strb	r6, [ip, #3]	@ tmp503, <variable>.non_Intra_quantiser_matrix_odd
	ldrb	r6, [r2, #80]	@ zero_extendqisi2	@ tmp516, <variable>.IntraQuantTab
	ldr	ip, [r1, #48]	@ tmp515, <variable>.dmatrix
	strb	r6, [ip, #0]	@ tmp516, <variable>.intra_quantiser_matrix_even
	ldrb	r6, [r2, #81]	@ zero_extendqisi2	@ tmp518, <variable>.IntraQuantTab
	ldr	ip, [r1, #48]	@ tmp517, <variable>.dmatrix
	strb	r6, [ip, #2]	@ tmp518, <variable>.intra_quantiser_matrix_odd
	ldrb	r6, [r2, #16]	@ zero_extendqisi2	@ tmp520, <variable>.NonIntraQuantTab
	ldr	ip, [r1, #48]	@ tmp519, <variable>.dmatrix
	strb	r6, [ip, #1]	@ tmp520, <variable>.non_Intra_quantiser_matrix_even
	ldr	r1, [r1, #48]	@ tmp521, <variable>.dmatrix
	ldrb	r2, [r2, #17]	@ zero_extendqisi2	@ tmp522, <variable>.NonIntraQuantTab
	strb	r2, [r1, #3]	@ tmp522, <variable>.non_Intra_quantiser_matrix_odd
	bne	.L15	@,
	ldr	r3, [r5, #176]	@ <variable>.d48, <variable>.d48
	mov	r0, #0	@ D.31120,
	ldr	r1, [r8, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r2, r1, #15	@ tmp507, <variable>.PmvTopAddr,
	str	r2, [r3, #0]	@ tmp507, <variable>.pmv_top_addr
.L11:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L24:
	ldr	r1, [r5, #32]	@ <variable>.d8, <variable>.d8
	cmp	r6, #0	@ D.31181,
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r1, #0]	@ tmp335,* <variable>.d8
	add	r0, r2, ip, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bfi	lr, r3, #0, #24	@ tmp335, <variable>.StreamLength,,
	str	lr, [r1, #0]	@ tmp335,* <variable>.d8
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	and	lr, r0, #15	@ tmp342, BytePos0,
	ldr	r2, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	ip, [r3, #0]	@ tmp339,* <variable>.d9
	add	r1, r2, #24	@ tmp337, <variable>.StreamLength,
	bfi	ip, r1, #0, #24	@ tmp339, tmp337,,
	str	ip, [r3, #0]	@ tmp339,* <variable>.d9
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	ip, r2, #7	@ tmp347, <variable>.StreamBitOffset,
	ldr	r2, [r3, #0]	@ tmp351,* <variable>.d9
	add	r1, ip, lr, asl #3	@, tmp350, tmp347, tmp342,
	bfi	r2, r1, #24, #7	@ tmp351, tmp350,,
	str	r2, [r3, #0]	@ tmp351,* <variable>.d9
	beq	.L14	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31181, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp355,* D.31181
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp357,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp356,
	str	lr, [sp, #0]	@ tmp357,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp358,
	str	lr, [sp, #4]	@ tmp358,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp359,
	str	lr, [sp, #8]	@ tmp359,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp360,
	str	lr, [sp, #12]	@ tmp360,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp361,
	str	lr, [sp, #16]	@ tmp361,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp362,
	str	lr, [sp, #20]	@ tmp362,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC4	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC4	@,
	add	ip, r3, #7	@ tmp369, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp369
	mov	ip, r2, lsr #3	@ tmp363, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp365, tmp363,
	add	r3, r2, r3, asr #3	@, tmp371, tmp365, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.625, D.31181, tmp371
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp373,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp375,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp374,
	str	lr, [sp, #0]	@ tmp375,
	ldrb	r6, [ip, #3]	@ zero_extendqisi2	@ tmp376,
	str	r6, [sp, #4]	@ tmp376,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp377,
	str	lr, [sp, #8]	@ tmp377,
	ldrb	r6, [ip, #5]	@ zero_extendqisi2	@ tmp378,
	str	r6, [sp, #12]	@ tmp378,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp379,
	str	lr, [sp, #16]	@ tmp379,
	ldrb	r6, [ip, #7]	@ zero_extendqisi2	@ tmp380,
	str	r6, [sp, #20]	@ tmp380,
	bl	dprint_vfmw	@
.L14:
	ldr	r3, [r5, #40]	@ <variable>.d10, <variable>.d10
	ldr	ip, [r3, #0]	@ tmp382,* <variable>.d10
	bfc	ip, #0, #24	@ tmp382,,
	str	ip, [r3, #0]	@ tmp382,* <variable>.d10
	ldr	r2, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r6, [r2, #0]	@ tmp384,* <variable>.d11
	bfc	r6, #0, #24	@ tmp384,,
	str	r6, [r2, #0]	@ tmp384,* <variable>.d11
	ldr	r1, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r0, [r1, #0]	@ tmp386,* <variable>.d11
	bfc	r0, #24, #7	@ tmp386,,
	str	r0, [r1, #0]	@ tmp386,* <variable>.d11
	b	.L17	@
.L23:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #537	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31120,
	b	.L11	@
.L22:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #536	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31120,
	b	.L11	@
	.fnend
	.size	MP2HAL_V200R004_MakeDnMsg, .-MP2HAL_V200R004_MakeDnMsg
	.align	2
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r0, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r5, #0	@ tmp203,
	str	r3, [fp, #-72]	@ StreamBaseAddr, %sfp
	movw	r3, #45304	@ tmp204,
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r1, [fp, #-56]	@ SlcDnMsgVirAddr, %sfp
	str	r2, [fp, #-84]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r7, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r5, [fp, #-48]	@ tmp203, D32
	streq	r0, [fp, #-76]	@ <variable>.slice_start_mbn, %sfp
	bne	.L48	@,
.L27:
	cmp	r7, #0	@ SliceNum,
	ble	.L30	@,
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r5, #0	@ i,
	ldr	sl, [r4, #280]	@ prephitmp.773, <variable>.slice_start_mbn
	sub	r6, fp, #48	@ tmp428,,
	ldr	r3, [r4, #236]	@ prephitmp.821, <variable>.slice_start_mbn
	mov	r9, r2, asl #2	@,,
	str	r9, [fp, #-80]	@, %sfp
	mov	r9, #44	@ tmp427,
	b	.L39	@
.L31:
	add	r5, r5, #1	@ i, i,
	cmp	r7, r5	@ SliceNum, i
	ble	.L30	@,
.L49:
	sub	sl, r5, #1	@ tmp419, i,
	mla	ip, r9, r5, r4	@ tmp417, tmp427, i, pMp2DecParam
	mla	r0, r9, sl, r4	@ tmp423, tmp427, tmp419, pMp2DecParam
	ldr	sl, [ip, #280]	@ prephitmp.773, <variable>.slice_start_mbn
	ldr	r3, [r0, #280]	@ prephitmp.821, <variable>.slice_start_mbn
.L39:
	cmp	r5, #0	@ i,
	movle	r1, #0	@,
	movgt	r1, #1	@,
	cmp	sl, r3	@ prephitmp.773, prephitmp.821
	movhi	r1, #0	@,,
	cmp	r1, #0	@ tmp268,
	mov	sl, r1	@ tmp268,
	bne	.L31	@,
	mla	r8, r9, r5, r4	@ tmp273, tmp427, i, pMp2DecParam
	str	r1, [fp, #-48]	@ tmp268, D32
	ldr	r1, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [r6, #0]	@ tmp288,
	add	r3, r5, r1	@, i,
	str	r3, [fp, #-60]	@, %sfp
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	ip, r3, asl #5	@,,
	str	ip, [fp, #-64]	@, %sfp
	ldr	ip, [r8, #248]	@ temp.816, <variable>.BsPhyAddr
	ldr	lr, [r8, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r3, ip, #15	@ tmp275, temp.816,
	bfi	r2, lr, #0, #24	@ tmp288, <variable>.BsLenInBit,,
	ldr	lr, [r8, #264]	@, <variable>.BsBitOffset
	add	r3, lr, r3, asl #3	@, bit_offset_0.825,, tmp275,
	bfi	r2, r3, #24, #7	@ tmp290, bit_offset_0.825,,
	str	r2, [r6, #0]	@ tmp290,
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #5]	@ D32.830,
	str	ip, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-88]	@,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	bic	r3, ip, #15	@ tmp295, temp.816,
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r2, r0, r3	@ tmp296,, tmp295
	mov	r0, r1, asl #3	@ tmp298,,
	add	ip, r0, #1	@ tmp299, tmp298,
	mov	r3, sl	@ tmp297, tmp268
	bfi	r3, r2, #0, #24	@ tmp297, tmp296,,
	mov	r0, #4	@,
	str	r3, [lr, ip, asl #2]	@ D32.838,
	movw	r1, #:lower16:.LC11	@,
	mov	r2, r3	@ D32.838, tmp297
	movt	r1, #:upper16:.LC11	@,
	str	r3, [r6, #0]	@ tmp297,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, %sfp
	str	sl, [fp, #-48]	@ tmp268, D32
	ldr	r0, [r8, #252]	@, <variable>.BsPhyAddr
	mov	r2, r3, asl #2	@ tmp325,,
	add	lr, r2, #1	@ tmp326, tmp325,
	and	ip, r0, #15	@ tmp309,,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, #4	@,
	ldr	r1, [r8, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	ldr	r3, [r8, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	ldr	r2, [r6, #0]	@ tmp322,
	add	r3, r3, ip, asl #3	@, bit_offset_1.849, <variable>.BsBitOffset, tmp309,
	bfi	r2, r1, #0, #24	@ tmp322, <variable>.BsLenInBit,,
	movw	r1, #:lower16:.LC12	@,
	bfi	r2, r3, #24, #7	@ tmp324, bit_offset_1.849,,
	str	r2, [r6, #0]	@ tmp324,
	ldr	r3, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC12	@,
	str	r2, [r3, lr, asl #3]	@ D32.854,
	bl	dprint_vfmw	@
	str	sl, [fp, #-48]	@ tmp268, D32
	ldr	sl, [r8, #252]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-68]	@, %sfp
	ldrne	sl, [r6, #0]	@ tmp340,
	ldrne	lr, [fp, #-72]	@, %sfp
	ldreq	r2, [r6, #0]	@ tmp342,
	bicne	r2, ip, #15	@ tmp338,,
	bfieq	r2, sl, #0, #24	@ tmp342, <variable>.BsPhyAddr,,
	rsbne	r2, lr, r2	@ tmp339,, tmp338
	streq	r2, [r6, #0]	@ tmp342,
	bfine	sl, r2, #0, #24	@ tmp340, tmp339,,
	strne	sl, [r6, #0]	@ tmp340,
	ldr	r8, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-48]	@ D32.864, D32
	ldr	ip, [fp, #-56]	@, %sfp
	add	r3, r8, #12	@ tmp343,,
	mul	sl, r9, r5	@ tmp348, tmp427, i
	add	r5, r5, #1	@ j, i,
	str	r2, [ip, r3]	@ D32.864,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r8, sl, r4	@ tmp350, tmp348, pMp2DecParam
	mov	r0, #0	@,
	str	r0, [fp, #-48]	@, D32
	mov	r0, #4	@,
	ldr	lr, [r8, #288]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	mov	r1, r2, asl #1	@ tmp361,,
	ldr	r2, [r6, #0]	@ tmp353,
	add	r3, r1, #1	@ tmp362, tmp361,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bfi	r2, lr, #0, #6	@ tmp353, <variable>.quantiser_scale_code,,
	str	r2, [r6, #0]	@ tmp353,
	ldr	ip, [r8, #284]	@ <variable>.intra_slice, <variable>.intra_slice
	bfi	r2, ip, #6, #1	@ tmp360, <variable>.intra_slice,,
	str	r2, [r6, #0]	@ tmp360,
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #4]	@ D32.875,
	bl	dprint_vfmw	@
	mov	r1, #0	@,
	str	r1, [fp, #-48]	@, D32
	mov	r2, r1	@ tmp373,
	ldr	ip, [r8, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movw	r1, #:lower16:.LC15	@,
	ldr	r0, [fp, #-64]	@, %sfp
	movt	r1, #:upper16:.LC15	@,
	bfi	r2, ip, #0, #20	@ tmp373, <variable>.slice_start_mbn,,
	str	r2, [r6, #0]	@ tmp373,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r3, r0, #20	@ tmp375,,
	mov	r0, #4	@,
	str	r2, [lr, r3]	@ D32.880,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, j
	ble	.L34	@,
	mla	r2, r9, r5, r4	@ tmp386, tmp427, j, pMp2DecParam
	ldr	r3, [r8, #280]	@ temp.893, <variable>.slice_start_mbn
	ldr	r2, [r2, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r2, r3	@ <variable>.slice_start_mbn, temp.893
	bhi	.L34	@,
	mvn	r1, r5	@ tmp436, j
	add	ip, r1, r7	@ tmp435, tmp436, SliceNum
	tst	ip, #1	@ tmp435,
	add	sl, sl, #248	@ tmp391, tmp348,
	add	sl, r4, sl	@ ivtmp.791, pMp2DecParam, tmp391
	beq	.L35	@,
	ldr	r2, [sl, #120]	@ D.31009, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	add	sl, sl, #44	@ ivtmp.791, ivtmp.791,
	cmp	r2, r3	@ D.31009, temp.893
	bls	.L35	@,
	b	.L34	@
.L36:
	ldr	ip, [sl, #120]	@ D.31009, <variable>.slice_start_mbn
	add	sl, sl, #88	@ ivtmp.791, ivtmp.791,
	cmp	ip, r3	@ D.31009, temp.893
	bhi	.L34	@,
	ldr	r2, [r2, #120]	@ D.31009, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	cmp	r2, r3	@ D.31009, temp.893
	bhi	.L34	@,
.L35:
	add	r5, r5, #1	@ j, j,
	add	r2, sl, #44	@ tmp438, ivtmp.791,
	cmp	r7, r5	@ SliceNum, j
	bgt	.L36	@,
.L34:
	cmp	r5, r7	@ j, SliceNum
	mlane	r3, r9, r5, r4	@ tmp398, tmp427, j, pMp2DecParam
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r8, #0	@ prephitmp.771,
	ldrne	lr, [fp, #-76]	@, %sfp
	ldrne	r0, [fp, #-84]	@, %sfp
	muleq	r2, r2, r3	@ tmp394, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r2, [r3, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	addne	r8, r5, lr	@ tmp401, j,
	ldr	lr, [fp, #-56]	@, %sfp
	mov	r3, #0	@ tmp405,
	sub	r5, r5, #1	@ i, j,
	sub	r1, r2, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	ldr	r2, [fp, #-64]	@, %sfp
	bfi	r3, r1, #0, #20	@ tmp405, slice_end_mbn,,
	addne	r8, r0, r8, asl #5	@, prephitmp.771,, tmp401,
	add	ip, r2, #24	@ tmp406,,
	mov	r0, #4	@,
	mov	r2, r3	@ D32.889, tmp405
	movw	r1, #:lower16:.LC16	@,
	str	r3, [lr, ip]	@ D32.889,
	movt	r1, #:upper16:.LC16	@,
	str	r3, [r6, #0]	@ tmp405,
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r2, r8	@ D32.895, prephitmp.771
	add	r3, r0, #28	@ tmp411,,
	mov	r0, #4	@,
	str	r8, [r1, r3]	@ D32.895,
	movw	r1, #:lower16:.LC17	@,
	str	r8, [r6, #0]	@ prephitmp.771, <variable>.next_slice_para_addr
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, i
	bgt	.L49	@,
.L30:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L48:
	ldr	r6, [r4, #248]	@ D.30869, <variable>.BsPhyAddr
	mov	r2, #1	@ tmp212,
	ldr	ip, [r4, #264]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r0, #4	@,
	and	lr, r6, #15	@ tmp207, D.30869,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	r3, ip, lr, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp207,
	ldr	lr, [fp, #-56]	@, %sfp
	bfi	r2, r3, #24, #7	@ tmp212, bit_offset_0,,
	str	r2, [lr, #0]	@ tmp212,
	str	r2, [fp, #-48]	@ tmp212,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-72]	@, %sfp
	bic	r0, r6, #15	@ tmp217, D.30869,
	ldr	r2, [fp, #-56]	@, %sfp
	mov	r6, r5	@ tmp219, tmp203
	rsb	r1, r3, r0	@ tmp218,, tmp217
	mov	r0, #4	@,
	bfi	r6, r1, #0, #24	@ tmp219, tmp218,,
	movw	r1, #:lower16:.LC11	@,
	str	r6, [r2, #4]	@ tmp219,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, r6	@, tmp219
	str	r6, [fp, #-48]	@ tmp219,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #252]	@ D.30897, <variable>.BsPhyAddr
	ldr	ip, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r2, #0	@ tmp227,
	and	r3, r6, #15	@ tmp223, D.30897,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	add	r3, ip, r3, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp223,
	bfi	r2, r3, #24, #7	@ tmp227, bit_offset_1,,
	ldr	r3, [fp, #-56]	@, %sfp
	str	r2, [r3, #8]	@ tmp227,
	str	r2, [fp, #-48]	@ tmp227,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #252]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	lr, #1	@,
	movw	r1, #:lower16:.LC13	@,
	str	lr, [fp, #-76]	@, %sfp
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	movt	r1, #:upper16:.LC13	@,
	bicne	r0, r6, #15	@ tmp233, D.30897,
	streq	r0, [fp, #-48]	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-72]	@, %sfp
	rsbne	r0, ip, r0	@ tmp234,, tmp233
	ldr	ip, [fp, #-56]	@, %sfp
	bfine	r5, r0, #0, #24	@ tmp235, tmp234,,
	strne	r5, [fp, #-48]	@ tmp235,
	ldr	r3, [fp, #-48]	@ D32.802, D32
	mov	r0, #4	@,
	mov	r5, #0	@ tmp240,
	str	r3, [ip, #12]	@ D32.802,
	mov	r2, r3	@, D32.802
	bl	dprint_vfmw	@
	ldr	r1, [r4, #288]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #284]	@ <variable>.intra_slice, <variable>.intra_slice
	mov	r0, #4	@,
	ldr	lr, [fp, #-56]	@, %sfp
	and	r3, r1, #63	@ tmp244, <variable>.quantiser_scale_code,
	bfi	r3, r2, #6, #1	@ tmp244, <variable>.intra_slice,,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r3, [lr, #16]	@ tmp244,
	mov	r2, r3	@, tmp244
	str	r3, [fp, #-48]	@ tmp244,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	ip, r5	@ tmp249, tmp240
	bfi	ip, r5, #0, #20	@ tmp249, tmp240,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [r0, #20]	@ tmp249,
	mov	r2, ip	@, tmp249
	mov	r0, #4	@,
	str	ip, [fp, #-48]	@ tmp249,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, r5	@ tmp256, tmp240
	mov	r0, #4	@,
	sub	ip, r3, #1	@ tmp254, <variable>.slice_start_mbn,
	ldr	r3, [fp, #-56]	@, %sfp
	bfi	r2, ip, #0, #20	@ tmp256, tmp254,,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r2, [r3, #24]	@ tmp256,
	str	r2, [fp, #-48]	@ tmp256,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-84]	@, %sfp
	add	r1, ip, #32	@ tmp261,,
	str	r1, [r2, #28]	@ tmp261,
	str	r1, [fp, #-48]	@ tmp261, <variable>.next_slice_para_addr
	b	.L27	@
	.fnend
	.size	MP2HAL_V200R004_WriteSliceMsg, .-MP2HAL_V200R004_WriteSliceMsg
	.align	2
	.global	MP2HAL_V200R004_CfgDnMsg
	.type	MP2HAL_V200R004_CfgDnMsg, %function
MP2HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	mov	r9, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	sl, #0	@ tmp209,
	str	sl, [fp, #-48]	@ tmp209, D32
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ D.31542,
	beq	.L65	@,
	ldrh	r3, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L66	@,
	ldrh	r2, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L67	@,
	sub	lr, r3, #1	@ tmp224, <variable>.PicWidthInMb,
	ldr	r8, [r5, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp228, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp229, tmp224,
	mov	r6, ip, lsr #23	@ tmp229, tmp229,
	bfi	r6, r2, #16, #9	@ tmp229, tmp228,,
	bfi	r6, r8, #25, #1	@ tmp231, <variable>.Mpeg1Flag,,
	str	r6, [r4, #0]	@ tmp231,* D.31542
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	r0, [r5, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	r6, r3, #1	@ tmp237, <variable>.FramePredFrameDct,
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	r6, r1, #8, #2	@ tmp237, <variable>.PictureStructure,,
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r6, r0, #10, #1	@ tmp241, <variable>.SecondFieldFlag,,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	r6, lr, #16, #1	@ tmp245, <variable>.ConcealmentMotionVectors,,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	r6, ip, #24, #3	@ tmp249, <variable>.PicCodingType,,
	bfi	r6, r8, #27, #1	@ tmp253, <variable>.Mp1FwdmvFullPel,,
	bfi	r6, r2, #28, #1	@ tmp257, <variable>.Mp1BwdmvFullPel,,
	str	r6, [r4, #4]	@ tmp257,
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	r8, r3, #15	@ tmp266, <variable>.Fcode,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	r8, r1, #8, #4	@ tmp266, <variable>.Fcode,,
	ldrb	ip, [r5, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r8, r0, #16, #4	@ tmp270, <variable>.Fcode,,
	bfi	r8, lr, #24, #4	@ tmp274, <variable>.Fcode,,
	bfi	r8, ip, #31, #1	@ tmp278, <variable>.TopFieldFirst,,
	str	r8, [r4, #8]	@ tmp278,
	ldrb	r6, [r5, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r3, r6, #3	@ tmp287, <variable>.IntraDcPrecision,
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r3, r2, #8, #1	@ tmp287, <variable>.QuantType,,
	bfi	r3, r1, #16, #1	@ tmp291, <variable>.IntraVlcFormat,,
	bfi	r3, r0, #24, #1	@ tmp295, <variable>.AlternateScan,,
	str	r3, [r4, #12]	@ tmp295,
	ldr	lr, [r5, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	ip, lr, #15	@ tmp302, <variable>.BwdRefPhyAddr,
	str	ip, [r4, #16]	@ tmp302,
	ldr	r8, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r6, r8, #15	@ tmp306, <variable>.FwdRefPhyAddr,
	str	r6, [r4, #20]	@ tmp306,
	ldr	r2, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp310, <variable>.DispFramePhyAddr,
	str	r1, [r4, #24]	@ tmp310,
	ldr	r0, [r5, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp314, <variable>.PmvColmbPhyAddr,
	str	r3, [fp, #-48]	@ tmp314, <variable>.current_pmv_addr
	str	r3, [r4, #28]	@ tmp314,
	ldr	r0, [r5, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.31621,
	ldr	r0, [r5, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r8, r0	@ D.31625,
	beq	.L68	@,
	ldr	ip, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, sl	@ tmp385, tmp209
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31621,
	ldr	r0, [r5, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	sl, r0, ip, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r2, lr, r1, lsr #3	@, BytePos0.1019, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	ip, sl, #15	@ tmp383, BytePos1,
	bic	r0, r2, #15	@ tmp382, BytePos0.1019,
	and	lr, r2, #15	@ tmp390, BytePos0.1019,
	rsb	r1, ip, r0	@ tmp384, tmp383, tmp382
	bfi	r3, r1, #0, #24	@ tmp385, tmp384,,
	str	r3, [r4, #32]	@ tmp385,
	ldr	r0, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	r3, r0, #7	@ tmp395, <variable>.StreamBitOffset,
	add	r2, r3, lr, asl #3	@, tmp398, tmp395, tmp390,
	bic	lr, ip, #-16777216	@ tmp399, <variable>.StreamLength,
	bfi	lr, r2, #24, #7	@ tmp399, tmp398,,
	str	lr, [fp, #-48]	@ tmp399,
	str	lr, [r4, #36]	@ tmp399,
	beq	.L58	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	lr, r6, r3, lsr #3	@, rp, D.31621, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp403,* D.31621
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp405,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp404,
	str	ip, [sp, #0]	@ tmp405,
	ldrb	ip, [lr, #3]	@ zero_extendqisi2	@ tmp406,
	str	ip, [sp, #4]	@ tmp406,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp407,
	str	ip, [sp, #8]	@ tmp407,
	ldrb	ip, [lr, #5]	@ zero_extendqisi2	@ tmp408,
	str	ip, [sp, #12]	@ tmp408,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp409,
	str	ip, [sp, #16]	@ tmp409,
	ldrb	ip, [lr, #7]	@ zero_extendqisi2	@ tmp410,
	str	ip, [sp, #20]	@ tmp410,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	ip, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC6	@,
	add	r2, r3, #7	@ tmp417, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC6	@,
	movlt	r3, r2	@ <variable>.StreamLength, tmp417
	mov	r2, ip, lsr #3	@ tmp411, <variable>.StreamBitOffset,
	sub	r2, r2, #8	@ tmp413, tmp411,
	add	r3, r2, r3, asr #3	@, tmp419, tmp413, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.1048, D.31621, tmp419
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp421,
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ tmp423,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp422,
	str	r6, [sp, #0]	@ tmp423,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp424,
	str	lr, [sp, #4]	@ tmp424,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp425,
	str	r6, [sp, #8]	@ tmp425,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp426,
	str	lr, [sp, #12]	@ tmp426,
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ tmp427,
	str	r6, [sp, #16]	@ tmp427,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp428,
	str	lr, [sp, #20]	@ tmp428,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC7	@,
	ldr	r3, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L58:
	mov	r1, #0	@ tmp433,
	and	sl, sl, #15	@ tmp441, BytePos1,
	mov	r3, r1	@ tmp435, tmp433
	bfi	r3, r1, #0, #24	@ tmp435, tmp433,,
	str	r3, [r4, #40]	@ tmp435,
	cmp	r8, r1	@ D.31625,
	ldr	ip, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	lr, ip, #24	@ tmp437, <variable>.StreamLength,
	and	r6, r2, #7	@ tmp446, <variable>.StreamBitOffset,
	bic	r1, lr, #-16777216	@ tmp450, tmp437,
	add	r0, r6, sl, asl #3	@, tmp449, tmp446, tmp441,
	bfi	r1, r0, #24, #7	@ tmp450, tmp449,,
	str	r1, [fp, #-48]	@ tmp450,
	str	r1, [r4, #44]	@ tmp450,
	beq	.L57	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	r6, r8, r3, lsr #3	@, rp, D.31625, <variable>.StreamBitOffset,
	ldrb	r2, [r8, r3, lsr #3]	@ zero_extendqisi2	@ tmp454,* D.31625
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp456,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp455,
	str	ip, [sp, #0]	@ tmp456,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp457,
	str	lr, [sp, #4]	@ tmp457,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp458,
	str	ip, [sp, #8]	@ tmp458,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp459,
	str	lr, [sp, #12]	@ tmp459,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp460,
	str	ip, [sp, #16]	@ tmp460,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp461,
	str	lr, [sp, #20]	@ tmp461,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	r2, r6, #7	@ tmp468, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp462, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp468
	sub	r2, ip, #8	@ tmp464, tmp462,
	add	r3, r2, r6, asr #3	@, tmp470, tmp464, <variable>.StreamLength,
	add	r6, r8, r3	@ rp.1089, D.31625, tmp470
	ldrb	r2, [r8, r3]	@ zero_extendqisi2	@ tmp472,
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp474,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp473,
	str	ip, [sp, #0]	@ tmp474,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp475,
	str	lr, [sp, #4]	@ tmp475,
	ldrb	r8, [r6, #4]	@ zero_extendqisi2	@ tmp476,
	str	r8, [sp, #8]	@ tmp476,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ tmp477,
	str	ip, [sp, #12]	@ tmp477,
	ldrb	lr, [r6, #6]	@ zero_extendqisi2	@ tmp478,
	str	lr, [sp, #16]	@ tmp478,
	ldrb	r8, [r6, #7]	@ zero_extendqisi2	@ tmp479,
	str	r8, [sp, #20]	@ tmp479,
	bl	dprint_vfmw	@
.L57:
	sub	r3, fp, #48	@ pretmp.923,,
	add	r0, r4, #64	@ ivtmp.955, D.31542,
	add	lr, r4, #192	@ D.32299, D.31542,
	mov	r2, r5	@ ivtmp.951, pMp2DecParam
	mov	r6, #0	@ tmp571,
.L59:
	str	r6, [fp, #-48]	@ tmp571, D32
	add	r1, r2, #2	@ tmp573, ivtmp.951,
	ldrb	r8, [r2, #80]	@ zero_extendqisi2	@ tmp481, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp572, ivtmp.955
	strb	r8, [r3, #0]	@ tmp481, <variable>.intra_quantiser_matrix_even
	ldrb	r8, [r2, #81]	@ zero_extendqisi2	@ tmp483, <variable>.IntraQuantTab
	strb	r8, [r3, #2]	@ tmp483, <variable>.intra_quantiser_matrix_odd
	ldrb	r8, [r2, #16]	@ zero_extendqisi2	@ tmp485, <variable>.NonIntraQuantTab
	strb	r8, [r3, #1]	@ tmp485, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r8, [r2, #17]	@ zero_extendqisi2	@ tmp487, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.951, tmp573,
	strb	r8, [r3, #3]	@ tmp487, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r8, [fp, #-48]	@ D32.1114, D32
	str	r8, [ip], #4	@ D32.1114,
	str	r6, [fp, #-48]	@ tmp571, D32
	ldrb	r8, [r1, #80]	@ zero_extendqisi2	@ tmp577, <variable>.IntraQuantTab
	strb	r8, [r3, #0]	@ tmp577, <variable>.intra_quantiser_matrix_even
	ldrb	r8, [r1, #81]	@ zero_extendqisi2	@ tmp578, <variable>.IntraQuantTab
	strb	r8, [r3, #2]	@ tmp578, <variable>.intra_quantiser_matrix_odd
	ldrb	r8, [r1, #16]	@ zero_extendqisi2	@ tmp579, <variable>.NonIntraQuantTab
	strb	r8, [r3, #1]	@ tmp579, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r8, [r1, #17]	@ zero_extendqisi2	@ tmp580, <variable>.NonIntraQuantTab
	strb	r8, [r3, #3]	@ tmp580, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r1, [fp, #-48]	@ D32.1114, D32
	str	r1, [r0, #4]	@ D32.1114,
	add	r0, ip, #4	@ ivtmp.955, tmp572,
	cmp	r0, lr	@ ivtmp.955, D.32299
	bne	.L59	@,
	ldr	r1, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	ip, r1, #15	@ tmp492, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp492, <variable>.pmv_top_addr
	str	ip, [r4, #192]	@ tmp492,
	ldr	r3, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	lr, r3, #15	@ tmp493, <variable>.MsgSlotAddr,
	add	r8, lr, #256	@ SlcDnMsgPhyAddr, tmp493,
	mov	r0, r8	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	str	r8, [fp, #-48]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r2, r8	@, SlcDnMsgPhyAddr
	str	r8, [r4, #252]	@ SlcDnMsgPhyAddr,
	mov	r3, r9	@, StreamBaseAddr
	mov	r1, r0	@ D.31787,
	mov	r0, r5	@, pMp2DecParam
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	movw	r2, #:lower16:g_PrintEnable	@ tmp497,
	movt	r2, #:upper16:g_PrintEnable	@ tmp497,
	ldr	r0, [r2, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r0, #16	@ g_PrintEnable,
	bne	.L60	@,
.L64:
	mov	r0, r6	@ D.31546, tmp571
.L52:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L68:
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r8, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r4, #32]	@ <variable>.StreamLength,
	cmp	r6, #0	@ D.31621,
	ldr	lr, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r0, r8, r1, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	r2, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	r1, r0, #15	@ tmp329, BytePos0,
	add	ip, lr, #24	@ tmp325, <variable>.StreamLength,
	and	r8, r2, #7	@ tmp334, <variable>.StreamBitOffset,
	bfi	r3, ip, #0, #24	@ <variable>.StreamLength, tmp325,,
	add	r0, r8, r1, asl #3	@, tmp337, tmp334, tmp329,
	bfi	r3, r0, #24, #7	@ <variable>.StreamLength, tmp337,,
	str	r3, [fp, #-48]	@ <variable>.StreamLength,
	str	r3, [r4, #36]	@ <variable>.StreamLength,
	beq	.L56	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	lr, r6, r3, lsr #3	@, rp, D.31621, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp342,* D.31621
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp344,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp343,
	str	ip, [sp, #0]	@ tmp344,
	ldrb	r8, [lr, #3]	@ zero_extendqisi2	@ tmp345,
	str	r8, [sp, #4]	@ tmp345,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp346,
	str	ip, [sp, #8]	@ tmp346,
	ldrb	r8, [lr, #5]	@ zero_extendqisi2	@ tmp347,
	str	r8, [sp, #12]	@ tmp347,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp348,
	str	ip, [sp, #16]	@ tmp348,
	ldrb	r8, [lr, #7]	@ zero_extendqisi2	@ tmp349,
	str	r8, [sp, #20]	@ tmp349,
	bl	dprint_vfmw	@
	ldr	r8, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC4	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC4	@,
	add	r2, r8, #7	@ tmp356, <variable>.StreamLength,
	cmp	r8, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp350, <variable>.StreamBitOffset,
	movlt	r8, r2	@ <variable>.StreamLength, tmp356
	sub	r2, ip, #8	@ tmp352, tmp350,
	add	r3, r2, r8, asr #3	@, tmp358, tmp352, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.987, D.31621, tmp358
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp360,
	ldrb	r8, [ip, #2]	@ zero_extendqisi2	@ tmp362,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp361,
	str	r8, [sp, #0]	@ tmp362,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp363,
	str	lr, [sp, #4]	@ tmp363,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp364,
	str	r6, [sp, #8]	@ tmp364,
	ldrb	r8, [ip, #5]	@ zero_extendqisi2	@ tmp365,
	str	r8, [sp, #12]	@ tmp365,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp366,
	str	lr, [sp, #16]	@ tmp366,
	ldrb	r6, [ip, #7]	@ zero_extendqisi2	@ tmp367,
	str	r6, [sp, #20]	@ tmp367,
	bl	dprint_vfmw	@
.L56:
	mov	r6, #0	@ tmp368,
	mov	r0, r6	@ tmp373, tmp368
	mov	r1, r6	@ tmp370, tmp368
	bfi	r0, r6, #24, #7	@ tmp373, tmp368,,
	bfi	r1, r6, #0, #24	@ tmp370, tmp368,,
	str	r1, [r4, #40]	@ tmp370,
	str	r0, [r4, #44]	@ tmp373,
	b	.L57	@
.L60:
	movw	lr, #:lower16:.LANCHOR0	@ tmp500,
	movt	lr, #:upper16:.LANCHOR0	@ tmp500,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [lr, #0]	@ num, num
	movt	r1, #:upper16:.LC19	@,
	add	r2, r2, #1	@ num.488, num,
	str	r2, [lr, #0]	@ num.488, num
	ldr	r3, [r7, #44]	@, <variable>.MsgSlotAddr
	bl	dprint_vfmw	@
	ldmia	r4, {r3, ip}	@ phole ldm
	mov	r2, r6	@, tmp571
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	str	ip, [sp, #0]	@ tmp506,
	movt	r1, #:upper16:.LC20	@,
	ldr	ip, [r4, #8]	@ tmp507,
	str	ip, [sp, #4]	@ tmp507,
	ldr	ip, [r4, #12]	@ tmp508,
	str	ip, [sp, #8]	@ tmp508,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ tmp510,
	mov	r0, #4	@,
	ldr	r3, [r4, #16]	@ tmp509,
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp510,
	ldr	ip, [r4, #24]	@ tmp511,
	str	ip, [sp, #4]	@ tmp511,
	ldr	ip, [r4, #28]	@ tmp512,
	str	ip, [sp, #8]	@ tmp512,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #36]	@ tmp514,
	mov	r2, #8	@,
	ldr	r3, [r4, #32]	@ tmp513,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp514,
	ldr	ip, [r4, #40]	@ tmp515,
	str	ip, [sp, #4]	@ tmp515,
	ldr	ip, [r4, #44]	@ tmp516,
	str	ip, [sp, #8]	@ tmp516,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #52]	@ tmp518,
	mov	r2, #12	@,
	ldr	r3, [r4, #48]	@ tmp517,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp518,
	ldr	ip, [r4, #56]	@ tmp519,
	str	ip, [sp, #4]	@ tmp519,
	ldr	ip, [r4, #60]	@ tmp520,
	str	ip, [sp, #8]	@ tmp520,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #68]	@ tmp522,
	mov	r2, #16	@,
	ldr	r3, [r4, #64]	@ tmp521,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp522,
	ldr	ip, [r4, #72]	@ tmp523,
	str	ip, [sp, #4]	@ tmp523,
	ldr	ip, [r4, #76]	@ tmp524,
	str	ip, [sp, #8]	@ tmp524,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #84]	@ tmp526,
	mov	r2, #20	@,
	ldr	r3, [r4, #80]	@ tmp525,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp526,
	ldr	ip, [r4, #88]	@ tmp527,
	str	ip, [sp, #4]	@ tmp527,
	ldr	ip, [r4, #92]	@ tmp528,
	str	ip, [sp, #8]	@ tmp528,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #100]	@ tmp530,
	mov	r2, #24	@,
	ldr	r3, [r4, #96]	@ tmp529,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp530,
	ldr	ip, [r4, #104]	@ tmp531,
	str	ip, [sp, #4]	@ tmp531,
	ldr	ip, [r4, #108]	@ tmp532,
	str	ip, [sp, #8]	@ tmp532,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #116]	@ tmp534,
	mov	r2, #28	@,
	ldr	r3, [r4, #112]	@ tmp533,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp534,
	ldr	ip, [r4, #120]	@ tmp535,
	str	ip, [sp, #4]	@ tmp535,
	ldr	ip, [r4, #124]	@ tmp536,
	str	ip, [sp, #8]	@ tmp536,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #132]	@ tmp538,
	mov	r2, #32	@,
	ldr	r3, [r4, #128]	@ tmp537,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp538,
	ldr	ip, [r4, #136]	@ tmp539,
	str	ip, [sp, #4]	@ tmp539,
	ldr	ip, [r4, #140]	@ tmp540,
	str	ip, [sp, #8]	@ tmp540,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #148]	@ tmp542,
	mov	r2, #36	@,
	ldr	r3, [r4, #144]	@ tmp541,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp542,
	ldr	ip, [r4, #152]	@ tmp543,
	str	ip, [sp, #4]	@ tmp543,
	ldr	ip, [r4, #156]	@ tmp544,
	str	ip, [sp, #8]	@ tmp544,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #164]	@ tmp546,
	mov	r2, #40	@,
	ldr	r3, [r4, #160]	@ tmp545,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp546,
	ldr	ip, [r4, #168]	@ tmp547,
	str	ip, [sp, #4]	@ tmp547,
	ldr	ip, [r4, #172]	@ tmp548,
	str	ip, [sp, #8]	@ tmp548,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #180]	@ tmp550,
	mov	r2, #44	@,
	ldr	r3, [r4, #176]	@ tmp549,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp550,
	ldr	ip, [r4, #184]	@ tmp551,
	str	ip, [sp, #4]	@ tmp551,
	ldr	ip, [r4, #188]	@ tmp552,
	str	ip, [sp, #8]	@ tmp552,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #196]	@ tmp554,
	mov	r2, #48	@,
	ldr	r3, [r4, #192]	@ tmp553,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp554,
	ldr	ip, [r4, #200]	@ tmp555,
	str	ip, [sp, #4]	@ tmp555,
	ldr	ip, [r4, #204]	@ tmp556,
	str	ip, [sp, #8]	@ tmp556,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #212]	@ tmp558,
	mov	r2, #52	@,
	ldr	r3, [r4, #208]	@ tmp557,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp558,
	ldr	ip, [r4, #216]	@ tmp559,
	str	ip, [sp, #4]	@ tmp559,
	ldr	ip, [r4, #220]	@ tmp560,
	str	ip, [sp, #8]	@ tmp560,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #228]	@ tmp562,
	mov	r2, #56	@,
	ldr	r3, [r4, #224]	@ tmp561,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp562,
	ldr	ip, [r4, #232]	@ tmp563,
	str	ip, [sp, #4]	@ tmp563,
	ldr	ip, [r4, #236]	@ tmp564,
	str	ip, [sp, #8]	@ tmp564,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #244]	@ tmp566,
	mov	r2, #60	@,
	ldr	r3, [r4, #240]	@ tmp565,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ tmp566,
	ldr	ip, [r4, #248]	@ tmp567,
	str	ip, [sp, #4]	@ tmp567,
	ldr	ip, [r4, #252]	@ tmp568,
	str	ip, [sp, #8]	@ tmp568,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	b	.L64	@
.L67:
	mov	r0, sl	@, tmp209
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #964	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31546,
	b	.L52	@
.L66:
	mov	r0, sl	@, tmp209
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #963	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31546,
	b	.L52	@
.L65:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #961	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31546,
	b	.L52	@
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
.LFB1361:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #1	@ VdhId,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r5, r2	@ VdhId, VdhId
	mov	r0, #0	@ tmp196,
	mov	r6, r3	@ StreamBaseAddr, StreamBaseAddr
	str	r0, [fp, #-48]	@ tmp196, D32
	bls	.L106	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31366,
.L72:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L106:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L117	@,
.L73:
	movw	lr, #1148	@ tmp204,
	movw	r7, #:lower16:g_HwMem	@ tmp411,
	mul	r3, lr, r5	@ tmp203, tmp204, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp411,
	mvn	lr, #0	@ tmp207,
	mov	r0, #0	@ tmp208,
	mov	r2, r0	@ tmp213, tmp208
	mov	ip, #3	@ tmp233,
	ldr	r9, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r9, #32]	@ tmp207,
	ldrh	sl, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r9, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r8, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	sl, r9, sl	@ tmp211, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	sl, sl, lr	@ tmp212, tmp211,
	bfi	r2, sl, #0, #20	@ tmp213, tmp212,,
	orr	sl, r2, #1090519040	@ tmp222, tmp213,
	orr	r2, sl, #4194304	@ tmp222, tmp222,
	mov	sl, #45312	@ tmp243,
	bfi	r2, r0, #25, #1	@ tmp222, tmp208,,
	str	r2, [r8, #8]	@ tmp222,
	ldr	r2, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r8, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, sl]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r2, r2, lsr #6	@ tmp231, <variable>.VahbStride,
	bfi	ip, r2, #4, #10	@ tmp233, tmp231,,
	orr	r2, ip, #16384	@ tmp236, tmp233,
	mov	ip, #1	@ tmp238,
	bic	r2, r2, #32768	@ tmp237, tmp236,
	bfi	r2, ip, #16, #12	@ tmp237, tmp238,,
	orr	ip, r2, #536870912	@ tmp241, tmp237,
	bic	r2, ip, #-1879048192	@ tmp245, tmp241,
	bfi	r2, sl, #30, #1	@ tmp245, <variable>.Compress_en,,
	str	r2, [r8, #12]	@ tmp245,
	ldr	r2, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, ip, #15	@ tmp254, <variable>.MsgSlotAddr,
	str	ip, [r2, #16]	@ tmp254,
	ldr	r3, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #45304	@ tmp270,
	bic	ip, r2, #15	@ tmp263, <variable>.MsgSlotAddr,
	str	ip, [r3, #20]	@ tmp263,
	ldr	ip, [r4, r1]	@ D.31423, <variable>.SlcNum
	str	r0, [fp, #-48]	@ tmp208, D32
	cmp	ip, r0	@ D.31423,
	beq	.L75	@,
	ldr	r3, [r4, #248]	@ temp.1351, <variable>.BsPhyAddr
	add	r0, ip, lr	@ tmp412, D.31423,
	mov	r1, lr	@ stream_base_addr.1354, tmp207
	and	r0, r0, #1	@ tmp414, tmp412,
	cmp	r3, #0	@ temp.1351,
	beq	.L95	@,
	ldr	r2, [r4, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r2, #0	@ <variable>.BsLenInBit,
	ble	.L95	@,
	bic	lr, r3, #15	@ tmp424, temp.1351,
	cmp	r1, lr	@ stream_base_addr.1354, tmp424
	movcs	r1, lr	@ stream_base_addr.1354, tmp424
.L95:
	ldr	r3, [r4, #252]	@ D.31416, <variable>.BsPhyAddr
	cmp	r3, #0	@ D.31416,
	beq	.L97	@,
	ldr	r2, [r4, #260]	@ tmp426, <variable>.BsLenInBit
	cmp	r2, #0	@ tmp426,
	ble	.L97	@,
	bic	r3, r3, #15	@ tmp427, D.31416,
	cmp	r1, r3	@ stream_base_addr.1354, tmp427
	movcs	r1, r3	@ stream_base_addr.1354, tmp427
.L97:
	mov	r2, #1	@ i,
	cmp	r2, ip	@ i, D.31423
	add	r3, r4, #44	@ ivtmp.1283, pMp2DecParam,
	beq	.L94	@,
	cmp	r0, #0	@ tmp414,
	beq	.L76	@,
	ldr	r0, [r3, #248]	@ temp.1351, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1351,
	beq	.L102	@,
	b	.L108	@
.L76:
	ldr	r0, [r3, #248]	@ temp.1351, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1351,
	beq	.L79	@,
	ldr	lr, [r3, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L79	@,
	bic	r0, r0, #15	@ tmp274, temp.1351,
	cmp	r1, r0	@ stream_base_addr.1354, tmp274
	movcs	r1, r0	@ stream_base_addr.1354, tmp274
.L79:
	ldr	r0, [r3, #252]	@ D.31416, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.31416,
	beq	.L77	@,
	ldr	lr, [r3, #260]	@ tmp271, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp271,
	ble	.L77	@,
	bic	r0, r0, #15	@ tmp272, D.31416,
	cmp	r1, r0	@ stream_base_addr.1354, tmp272
	movcs	r1, r0	@ stream_base_addr.1354, tmp272
.L77:
	add	r3, r3, #44	@ tmp416, ivtmp.1283,
	add	r2, r2, #1	@ tmp415, i,
	ldr	r0, [r3, #248]	@ temp.1351, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1351,
	beq	.L102	@,
.L108:
	ldr	lr, [r3, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L102	@,
	bic	r0, r0, #15	@ tmp435, temp.1351,
	cmp	r1, r0	@ stream_base_addr.1354, tmp435
	movcs	r1, r0	@ stream_base_addr.1354, tmp435
.L102:
	ldr	r0, [r3, #252]	@ D.31416, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.31416,
	beq	.L104	@,
	ldr	lr, [r3, #260]	@ tmp437, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp437,
	ble	.L104	@,
	bic	r0, r0, #15	@ tmp438, D.31416,
	cmp	r1, r0	@ stream_base_addr.1354, tmp438
	movcs	r1, r0	@ stream_base_addr.1354, tmp438
.L104:
	add	r2, r2, #1	@ i, tmp415,
	add	r3, r3, #44	@ ivtmp.1283, tmp416,
	cmp	r2, ip	@ i, D.31423
	bne	.L76	@,
.L94:
	cmn	r1, #1	@ stream_base_addr.1354,
	beq	.L75	@,
	movw	r2, #1148	@ tmp280,
	str	r1, [r6, #0]	@ stream_base_addr.1354,* StreamBaseAddr
	mul	ip, r2, r5	@ tmp279, tmp280, VdhId
	ldr	r3, [ip, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #24]	@ stream_base_addr.1354,
	ldrh	r6, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r6, #120	@ <variable>.PicWidthInMb,
	movhi	r6, #0	@ tmp284,
	movls	r6, #65536	@ tmp285,
	cmp	r5, #1	@ VdhId,
	str	r6, [fp, #-48]	@ tmp285, D32
	beq	.L85	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp287,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp287,
.L110:
	ldr	lr, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	r6, [fp, #-48]	@ D32, D32
	orr	r1, r0, r6	@ tmp296,, D32
	add	r0, lr, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	movw	r1, #1148	@ tmp301,
	mul	r3, r1, r5	@ tmp300, tmp301, VdhId
	movw	r0, #:lower16:3148803	@ tmp298,
	movt	r0, #:upper16:3148803	@ tmp298,
	str	r0, [fp, #-48]	@ tmp298, D32
	movw	r1, #2047	@ tmp359,
	ldr	ip, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [ip, #60]	@ tmp298,
	ldr	r6, [fp, #-48]	@ D32.1311, D32
	ldr	r2, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #64]	@ D32.1311,
	ldr	ip, [fp, #-48]	@ D32.1314, D32
	ldr	r0, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #68]	@ D32.1314,
	ldr	r6, [fp, #-48]	@ D32.1317, D32
	ldr	r2, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #72]	@ D32.1317,
	ldr	ip, [fp, #-48]	@ D32.1320, D32
	ldr	r0, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #76]	@ D32.1320,
	ldr	r6, [fp, #-48]	@ D32.1323, D32
	ldr	r2, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #80]	@ D32.1323,
	ldr	ip, [fp, #-48]	@ D32.1326, D32
	ldr	r0, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #84]	@ D32.1326,
	ldr	r6, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r2, #15	@ tmp338, <variable>.CurPicPhyAddr,
	str	r0, [r6, #96]	@ tmp338,
	ldr	r2, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldrb	r6, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.1330, <variable>.PicHeightInMb
	sub	r3, r6, #1	@ tmp347, <variable>.PictureStructure,
	str	ip, [r2, #100]	@ <variable>.VahbStride,
	ldrh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r6, r3	@ tmp348, tmp347
	cmp	r6, #1	@ tmp348,
	mov	r2, r2, asl #4	@ D.31469, <variable>.PicWidthInMb,
	sub	ip, r2, #1	@ tmp358, D.31469,
	movls	r6, #2	@ iftmp.459,
	movhi	r6, #1	@ iftmp.459,
	cmp	ip, r1	@ tmp358, tmp359
	mul	r3, r0, r6	@ height_in_mb, temp.1330, iftmp.459
	bhi	.L118	@,
.L89:
	mov	r2, #16	@ level,
.L91:
	mov	r6, r3, asl #4	@ tmp369, height_in_mb,
	add	lr, r3, #1	@ tmp374, height_in_mb,
	add	r0, r6, #31	@ tmp370, tmp369,
	movw	r3, #1148	@ tmp382,
	mul	r3, r3, r5	@ tmp381, tmp382, VdhId
	mov	r5, r0, lsr #5	@ tmp371, tmp370,
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r1, lr, lsr #1	@ tmp375, tmp374,
	mul	r2, r5, r2	@ D.31492, tmp371, level
	mov	r0, #3	@,
	mul	r6, ip, r1	@ tmp376, <variable>.VahbStride, tmp375
	ldr	lr, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r5, #0	@ tmp385,
	movw	r1, #:lower16:.LC25	@,
	mov	ip, r5	@ tmp397, tmp385
	bfi	ip, r5, #0, #1	@ tmp397, tmp385,,
	add	r6, r6, r2, asl #4	@, tmp378, tmp376, D.31492,
	mov	r2, r2, asl #5	@ D32.464, D.31492,
	movt	r1, #:upper16:.LC25	@,
	mov	r6, r6, asl #1	@ tmp379, tmp378,
	str	r6, [lr, #104]	@ tmp379,
	ldr	lr, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	r6, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	lr, lr, r0	@ tmp389, <variable>.FwdRefIsFldSave,
	bfi	lr, r4, #2, #2	@ tmp389, <variable>.BwdRefIsFldSave,,
	str	lr, [r6, #148]	@ tmp389,
	ldr	lr, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #152]	@ tmp397,
	ldr	r3, [r3, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [fp, #-48]	@ D32.464, D32
	str	r2, [r3, #108]	@ D32.464,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.31366, tmp385
	b	.L72	@
.L118:
	sub	r0, r2, #2048	@ tmp360, D.31469,
	sub	ip, r0, #1	@ tmp360, tmp360,
	cmp	ip, r1	@ tmp360, tmp359
	movls	r2, #32	@ level,
	bls	.L91	@,
	sub	r6, r2, #4096	@ tmp363, D.31469,
	sub	lr, r6, #1	@ tmp363, tmp363,
	cmp	lr, r1	@ tmp363, tmp359
	movls	r2, #48	@ level,
	bls	.L91	@,
	sub	r2, r2, #6144	@ tmp366, D.31469,
	sub	r2, r2, #1	@ tmp366, tmp366,
	cmp	r2, r1	@ tmp366, tmp359
	movls	r2, #64	@ level,
	bls	.L91	@,
	b	.L89	@
.L85:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp293,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp293,
	b	.L110	@
.L117:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-56]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-56]	@,
	subs	r2, r0, #0	@ D.31370,
	strne	r2, [r1, #0]	@ D.31370, <variable>.pVdmRegVirAddr
	bne	.L73	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31366,
	b	.L72	@
.L75:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp276,
	mvn	r0, #0	@ D.31366,
	str	r1, [r6, #0]	@ tmp276,* StreamBaseAddr
	b	.L72	@
	.fnend
	.size	MP2HAL_V200R004_CfgReg, .-MP2HAL_V200R004_CfgReg
	.align	2
	.global	MP2HAL_V200R004_StartDec
	.type	MP2HAL_V200R004_StartDec, %function
MP2HAL_V200R004_StartDec:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	bls	.L127	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30821,
.L122:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L127:
	movw	r8, #1148	@ tmp144,
	movw	r6, #:lower16:g_HwMem	@ tmp145,
	mul	r8, r8, r1	@ tmp143, tmp144, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp145,
	add	r7, r6, r8	@ pHwMem, tmp145, tmp143
	ldr	r3, [r6, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L128	@,
.L123:
	movw	ip, #:lower16:.LANCHOR1	@ tmp149,
	movt	ip, #:upper16:.LANCHOR1	@ tmp149,
	mov	r0, r5	@, pMp2DecParam
	mov	r1, r7	@, pHwMem
	ldr	r6, [ip, #0]	@ FrameNum, FrameNum
	mov	r2, r4	@, VdhId
	sub	r3, fp, #40	@,,
	add	lr, r6, #1	@ tmp152, FrameNum,
	str	lr, [ip, #0]	@ tmp152, FrameNum
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r6, r0, #0	@ D.30832,
	bne	.L129	@,
	mov	r0, r5	@, pMp2DecParam
	mov	r1, r7	@, pHwMem
	mov	r2, r4	@, VdhId
	ldr	r3, [fp, #-40]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r6	@ D.30821, D.30832
	b	.L122	@
.L128:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.30825,
	strne	r1, [r6, r8]	@ D.30825, <variable>.pVdmRegVirAddr
	bne	.L123	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30821,
	b	.L122	@
.L129:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30821,
	b	.L122	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	FrameNum, %object
	.size	FrameNum, 4
FrameNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"picture height out of range\000"
.LC3:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC4:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC5:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC6:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC7:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC8:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC9:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC10:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC11:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC12:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC13:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC14:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC15:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC16:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC17:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC18:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC19:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC21:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC22:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC23:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC24:
	.ascii	"stream_base_addr = %#x\012\000"
.LC25:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
.LC26:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC27:
	.ascii	"MP2HAL_V200R003_CfgReg ERROR!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.31537, %object
	.size	num.31537, 4
num.31537:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
