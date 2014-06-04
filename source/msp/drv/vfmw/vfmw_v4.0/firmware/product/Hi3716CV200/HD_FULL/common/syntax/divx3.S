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
	.file	"divx3.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o -O2 -Wall
@ -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	Divx3_RecordVFMWState
	.type	Divx3_RecordVFMWState, %function
Divx3_RecordVFMWState:
	.fnstart
.LFB1362:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Divx3_RecordVFMWState, .-Divx3_RecordVFMWState
	.align	2
	.global	Divx3_WritePicMsg
	.type	Divx3_WritePicMsg, %function
Divx3_WritePicMsg:
	.fnstart
.LFB1363:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r8, #30480	@ tmp134,
	movw	r6, #30528	@ tmp136,
	movw	r5, #30532	@ tmp138,
	movw	r4, #30484	@ tmp140,
	movw	ip, #30488	@ tmp142,
	movw	r1, #30496	@ tmp144,
	movw	r2, #30504	@ tmp146,
	movw	r9, #30508	@ tmp148,
	movw	r7, #30516	@ tmp152,
	ldr	sl, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	movw	r3, #30512	@ tmp150,
	ldr	r8, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r5, [r0, r4]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.CodecInfo.PictureHeader.quantizer
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	ldr	ip, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.CodecInfo.PictureHeader.has_skips
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	ldr	r2, [r0, r9]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	ldr	r9, [r0, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	movw	r7, #30520	@ tmp154,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	sl, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	r9, [r0, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	ldr	r9, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	movw	r7, #30524	@ tmp156,
	ldr	r7, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r8, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r6, [r0, #20]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Divx3DecParam.PicHeightInMb
	str	r7, [r0, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	str	r5, [r0, #24]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.Divx3DecParam.quantizer
	str	r4, [r0, #28]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.Divx3DecParam.rounding_type
	str	ip, [r0, #32]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.Divx3DecParam.has_skips
	str	r1, [r0, #36]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	str	r2, [r0, #40]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	str	r3, [r0, #44]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.Divx3DecParam.alternative_I_DC_DCT
	str	r9, [r0, #52]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.Divx3DecParam.alternative_P_DC_DCT
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Divx3_WritePicMsg, .-Divx3_WritePicMsg
	.align	2
	.global	Divx3_WriteReg
	.type	Divx3_WriteReg, %function
Divx3_WriteReg:
	.fnstart
.LFB1364:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Divx3_WriteReg, .-Divx3_WriteReg
	.align	2
	.global	DIVX3DEC_GetImageBuffer
	.type	DIVX3DEC_GetImageBuffer, %function
DIVX3DEC_GetImageBuffer:
	.fnstart
.LFB1373:
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
	movw	r5, #61824	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36118,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36121,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #30720	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36121,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Destroy
	.type	DIVX3DEC_Destroy, %function
DIVX3DEC_Destroy:
	.fnstart
.LFB1368:
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
	movw	r3, #30600	@ tmp135,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_Destroy, .-DIVX3DEC_Destroy
	.align	2
	.global	DIVX3DEC_RecycleImage
	.type	DIVX3DEC_RecycleImage, %function
DIVX3DEC_RecycleImage:
	.fnstart
.LFB1370:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #61824	@ tmp137,
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_RecycleImage, .-DIVX3DEC_RecycleImage
	.align	2
	.global	Divx3_DecodeDecide
	.type	Divx3_DecodeDecide, %function
Divx3_DecodeDecide:
	.fnstart
.LFB1365:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrb	r4, [r0, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	movw	r3, #30480	@ tmp143,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldr	r6, [r0, r3]	@ FrameType, <variable>.CodecInfo.PictureHeader.prediction_type
	beq	.L36	@,
	ldrb	r2, [r0, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r1, r2, #2	@ tmp148, <variable>.CodecInfo.UsedDecMode,
	uxtb	r0, r1	@ tmp149, tmp148
	cmp	r0, #1	@ tmp149,
	bls	.L20	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.601, <variable>.s32DecMode
.L21:
	uxtb	r0, r2	@ D.35580, prephitmp.601
	strb	r0, [r5, #179]	@ D.35580, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #4	@ D.35580,
	ldrls	pc, [pc, r0, asl #2]	@ D.35580
	b	.L22	@
.L26:
	.word	.L23
	.word	.L23
	.word	.L24
	.word	.L34
	.word	.L23
.L37:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, r6	@, FrameType
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
.L34:
	mov	r0, #0	@ D.35563,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L20:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.601, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.601,
	cmpne	r2, #1	@, prephitmp.601,
	bhi	.L21	@,
	movw	r4, #30688	@ tmp162,
	movw	r7, #61824	@ tmp160,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	ldr	r1, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	mov	r7, #0	@ tmp165,
	str	r7, [r5, r4]	@ tmp165, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #30604	@ tmp169,
	str	r7, [r5, r2]	@ tmp165, <variable>.CodecInfo.RefNum
	str	r0, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.601, <variable>.s32DecMode
	b	.L21	@
.L36:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35563, <variable>.CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L24:
	cmp	r6, #0	@ FrameType,
	bne	.L37	@,
.L27:
	movw	r2, #30688	@ tmp186,
	movw	r3, #61824	@ tmp184,
	ldr	r1, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
.L35:
	mov	r0, #1	@ D.35563,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L22:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35563,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L23:
	cmp	r6, #0	@ FrameType,
	beq	.L27	@,
	movw	lr, #30604	@ tmp174,
	ldr	r4, [r5, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L38	@,
	movw	r1, #61824	@ tmp188,
	movw	r4, #30688	@ tmp190,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L39	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #180]	@ D.35604, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.35605, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.35604, D.35605
	bls	.L35	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35563,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L38:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC5	@,
	mov	r3, r4	@, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35563, <variable>.CodecInfo.RefNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L39:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC7	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #445	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35563, pFwdImg
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #31080	@ tmp139,
	ldr	r8, [r0, r6]	@ D.35688, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #61832	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	ip, r4, #30720	@, pCtx,
	add	r0, ip, #16	@,,
	str	r8, [r4, r6]	@ D.35688, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #30576	@ tmp143,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp144,
	str	r2, [r4, r0]	@ tmp144, <variable>.CodecInfo.PrevSwitchRounding
	mov	r7, #0	@ tmp147,
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, r4	@, pCtx
	strb	r7, [r4, #178]	@ tmp147, <variable>.CodecInfo.Imgbuf_allocated
	strb	r1, [r4, #179]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #61824	@ tmp149,
	cmn	r0, #1	@ D.35699,
	str	r0, [r4, r3]	@ D.35699, <variable>.ChanID
	movne	r0, r7	@ D.35704, tmp147
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r7	@, tmp147
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35704,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #2	@,
	mov	r6, r2	@ PrevSwitchRounding, PrevSwitchRounding
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.35632,
	str	r0, [r4, #0]	@ D.35632, <variable>.prediction_type
	bls	.L66	@,
.L45:
	mov	r3, #0	@ D.35637,
.L57:
	mov	r0, r3	@, D.35637
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L66:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, [r4, #0]	@ <variable>.prediction_type, <variable>.prediction_type
	cmp	r3, #0	@ <variable>.prediction_type,
	str	r0, [r4, #4]	@, <variable>.quantizer
	beq	.L67	@,
	cmp	r6, #0	@ PrevSwitchRounding,
	mov	r1, #1	@,
	streq	r6, [r4, #8]	@ PrevSwitchRounding, <variable>.rounding_type
	mov	r0, r5	@, pBs
	ldrne	r3, [r4, #8]	@ <variable>.rounding_type, <variable>.rounding_type
	str	r6, [r4, #20]	@ PrevSwitchRounding, <variable>.switch_rounding
	rsbne	r3, r3, #1	@ tmp164, <variable>.rounding_type,
	strne	r3, [r4, #8]	@ tmp164, <variable>.rounding_type
	bl	BsGet	@
	mov	r1, #2	@,
	str	r0, [r4, #16]	@, <variable>.has_skips
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #36]	@ D.35670, <variable>.alternative_P_AC_DCT
	cmp	r0, #3	@ D.35670,
	ldrls	pc, [pc, r0, asl #2]	@ D.35670
	b	.L60	@
.L64:
	.word	.L61
	.word	.L61
	.word	.L63
	.word	.L63
.L63:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L60:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, <variable>.alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.35637,
	str	r0, [r4, #44]	@, <variable>.alternative_MV
	mov	r0, r3	@, D.35637
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L67:
	mov	r0, #1	@ tmp154,
	mov	r1, #5	@,
	str	r0, [r4, #8]	@ tmp154, <variable>.rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ tmp155, D.35642,
	str	r0, [r4, #12]	@ D.35642, <variable>.vol_mode
	cmp	r0, #26	@ D.35642,
	cmpne	r3, #1	@, tmp155,
	bhi	.L45	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.35651, <variable>.alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.35651,
	ldrls	pc, [pc, r0, asl #2]	@ D.35651
	b	.L47	@
.L51:
	.word	.L48
	.word	.L48
	.word	.L50
	.word	.L50
.L61:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L60	@
.L50:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L47:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.35655, <variable>.alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.35655,
	ldrls	pc, [pc, r0, asl #2]	@ D.35655
	b	.L52	@
.L56:
	.word	.L53
	.word	.L53
	.word	.L55
	.word	.L55
.L55:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L52:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.35637,
	str	r0, [r4, #32]	@, <variable>.alternative_I_DC_DCT
	b	.L57	@
.L53:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L52	@
.L48:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L47	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
.LFB1361:
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
	movw	r1, #61824	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #30692	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #30480	@ tmp146,
	ldr	lr, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r2, lr, #3	@ D.35482, <variable>.CodecInfo.PictureHeader.prediction_type,
	movw	lr, #30528	@ tmp151,
	orr	ip, r2, #7168	@ tmp148, D.35482,
	str	r2, [r4, #136]	@ D.35482, <variable>.bottom_fld_type
	str	r2, [r4, #132]	@ D.35482, <variable>.top_fld_type
	orr	r3, ip, #32	@ tmp148, tmp148,
	str	r3, [r4, #140]	@ tmp148, <variable>.format
	movw	r3, #30532	@ tmp154,
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r2, ip, asl #4	@ tmp153, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [r4, #144]	@ tmp153, <variable>.image_width
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, lr, asl #4	@ tmp156, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	str	ip, [r4, #148]	@ tmp156, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L72	@,
.L70:
	mov	r3, #8	@ tmp177,
	mov	r2, #1	@ tmp175,
	mov	ip, #5	@ tmp172,
	mov	r1, #0	@ tmp173,
	str	r3, [r4, #344]	@ tmp177, <variable>.ImageDnr.QP_U
	str	r3, [r4, #340]	@ tmp177, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #329]	@ tmp175, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #336]	@ tmp172, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #324]	@ tmp173, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #331]	@ tmp175, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #348]	@ tmp177, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L72:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.35492, <variable>.image_stride
	add	ip, r0, #15	@ tmp160, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp159, D.35492,
	mov	r1, ip, lsr #4	@ tmp162, tmp160,
	add	ip, r3, r2	@ tmp167, <variable>.luma_phy_addr, D.35492
	str	ip, [r4, #96]	@ tmp167, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.35498, tmp162, tmp159
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp164, D.35498, <variable>.luma_phy_addr
	add	lr, r0, r1	@ tmp166, <variable>.luma_vir_addr, D.35498
	str	ip, [r4, #108]	@ tmp164, <variable>.chrom_phy_addr
	add	r0, ip, r2	@ tmp168, tmp164, D.35492
	str	lr, [r4, #36]	@ tmp166, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp168, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp164
	str	ip, [r4, #92]	@ tmp164, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L70	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
.LFB1372:
	@ args = 0, pretend = 0, frame = 0
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ SwitchRounding, SwitchRounding
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #5	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #61824	@ tmp147,
	movw	r3, #30692	@ tmp149,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L74	@,
	movw	ip, #30480	@ tmp151,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	cmp	r2, #0	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	andeq	r6, r6, #1	@ tmp154, SwitchRounding,
	movweq	r2, #30576	@ tmp153,
	streq	r6, [r4, r2]	@ tmp154, <variable>.CodecInfo.PrevSwitchRounding
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.441,
	blt	.L77	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.441,
.L77:
	str	r5, [r0, #180]	@ iftmp.441, <variable>.error_level
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r0, [r4, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L80	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L80	@,
	movw	ip, #30604	@ tmp161,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	movwne	r2, #30688	@ tmp163,
	mvneq	r1, #0	@ prephitmp.705,
	ldrne	r1, [r4, r2]	@ prephitmp.705,
.L88:
	cmn	r1, #1	@ prephitmp.705,
	movw	lr, #30696	@ tmp166,
	str	r1, [r4, lr]	@ prephitmp.705, <variable>.CodecInfo.ToQueFsID
	beq	.L83	@,
	movw	r5, #61824	@ tmp167,
	movw	r6, #30696	@ tmp169,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36090, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36090
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36090
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r3, r0	@ D.36095,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #30720	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L89	@,
.L83:
	movw	lr, #30480	@ tmp189,
	movw	ip, #30600	@ tmp185,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	cmp	r0, #1	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	add	r1, r2, #1	@ tmp188, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp188, <variable>.CodecInfo.FrmCnt
	beq	.L90	@,
.L85:
	movw	r5, #30688	@ tmp195,
	movw	r6, #30692	@ tmp196,
	ldr	r1, [r4, r5]	@ prephitmp.718, <variable>.CodecInfo.FwdFsID
	movw	r2, #30604	@ tmp193,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	mov	r0, #1	@ tmp194,
	str	r0, [r4, r2]	@ tmp194, <variable>.CodecInfo.RefNum
	cmp	r1, ip	@ prephitmp.718, <variable>.CodecInfo.CurFsID
	beq	.L86	@,
	mov	r2, r1	@, prephitmp.718
	movw	r7, #61824	@ tmp199,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_RemovePmv	@
	ldr	r1, [r4, r6]	@ prephitmp.718, <variable>.CodecInfo.CurFsID
.L86:
	movw	ip, #30688	@ tmp208,
	movw	lr, #61824	@ tmp209,
	str	r1, [r4, ip]	@ prephitmp.718, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #30692	@ tmp212,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36062,
.L84:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L80:
	movw	r0, #30692	@ tmp165,
	ldr	r1, [r4, r0]	@ prephitmp.705,
	b	.L88	@
.L90:
	movw	r1, #30604	@ tmp191,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L85	@,
.L74:
	mov	r0, #0	@ D.36062,
	b	.L84	@
.L89:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36062,
	b	.L84	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 0
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L103	@,
	movw	r6, #61824	@ tmp142,
	movw	r7, #30692	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L103	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L101	@,
.L103:
	add	r5, r4, #30720	@ tmp177, pCtx,
	add	r5, r5, #16	@ tmp177, tmp177,
.L92:
	mov	r0, r5	@, tmp177
	bl	GetVoLastImageID	@
.L94:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L101:
	mov	r0, r4	@, pCtx
	add	r5, r4, #30720	@ tmp177, pCtx,
	bl	Divx3_SetImgFormat	@
	add	r5, r5, #16	@ tmp177, tmp177,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #216]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp177
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L93	@,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r7, r2	@ tmp166,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #192]	@ tmp166, <variable>.p_usrdat
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r8, #196]	@ tmp166, <variable>.p_usrdat
	b	.L92	@
.L93:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L92	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L92	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L94	@,
	b	.L92	@
	.fnend
	.size	DIVX3DEC_GetRemainImg, .-DIVX3DEC_GetRemainImg
	.align	2
	.global	Divx3_ArrangeVHBMem
	.type	Divx3_ArrangeVHBMem, %function
Divx3_ArrangeVHBMem:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 40
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
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #48]	@ D.35377, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35377,
	ldrls	r3, [r2, #52]	@ prephitmp.783, <variable>.pic_height_in_mb
	bls	.L106	@,
	ldr	r3, [r2, #52]	@ prephitmp.783, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.783,
	bls	.L106	@,
	ldr	r1, [r4, #0]	@ D.35384, <variable>.pstExtraData
	ldr	r3, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L109	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L131	@,
.L110:
	ldr	r6, [r2, #60]	@ PicHeight, <variable>.pic_height_in_pix
	mov	r8, #5	@ prephitmp.785,
	ldr	r5, [r2, #56]	@ PicWidth, <variable>.pic_width_in_pix
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L117:
	sub	r7, fp, #84	@ tmp200,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp200
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp176,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #61824	@ tmp187,
	strb	r3, [fp, #-82]	@ tmp176, FspInstCfg.s32RprEnable
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.785, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r9	@ iftmp.418, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.418, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp200
	uxtbne	sl, sl	@ iftmp.419, PmvNum
	mov	r7, #0	@ tmp185,
	moveq	sl, #1	@ iftmp.419,
	strb	r7, [fp, #-80]	@ tmp185, FspInstCfg.s32UserDec
	strb	sl, [fp, #-76]	@ iftmp.419, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35433,
	movne	r0, r7	@ D.35381, tmp185
	beq	.L132	@,
.L108:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L109:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L110	@,
	ldr	r5, [r2, #56]	@ temp.807, <variable>.pic_width_in_pix
	ldr	ip, [r1, #564]	@ D.35392, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.807, D.35392
	bhi	.L133	@,
	ldr	r3, [r2, #60]	@ prephitmp.789, <variable>.pic_height_in_pix
	ldr	lr, [r1, #568]	@ prephitmp.787, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.789, prephitmp.787
	bhi	.L120	@,
	ldr	r6, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ temp.810, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L123	@,
	add	sl, r9, #1	@ PmvNum.812, temp.810,
	cmp	sl, #17	@ PmvNum.812,
	movge	sl, #17	@ PmvNum,
.L123:
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.785, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.810,
	mov	r6, r3	@ PicHeight, prephitmp.789
	b	.L117	@
.L106:
	mov	r2, r1	@, D.35377
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35381,
	b	.L108	@
.L132:
	ldr	lr, [r4, #0]	@ temp.821, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp196,
	streqb	r0, [r4, #178]	@ tmp196, <variable>.CodecInfo.Imgbuf_allocated
	beq	.L108	@,
	mov	r0, r5	@, D.35433
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35381, D.35433
	b	.L108	@
.L131:
	ldr	r0, [r2, #56]	@ D.35391, <variable>.pic_width_in_pix
	ldr	r5, [r1, #564]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35391, PicWidth
	bhi	.L134	@,
	ldr	r3, [r2, #60]	@ prephitmp.793, <variable>.pic_height_in_pix
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.793, PicHeight
	bhi	.L112	@,
	ldrb	r0, [r4, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L108	@,
	ldr	r2, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ D.35402, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L116	@,
	add	sl, r9, #1	@ PmvNum.804, D.35402,
	cmp	sl, #17	@ PmvNum.804,
	movge	sl, #17	@ PmvNum,
.L116:
	add	r9, r9, #2	@ DecFsNum, D.35402,
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.785, <variable>.stChanOption.s32DisplayFrameNum
	b	.L117	@
.L133:
	ldr	lr, [r1, #568]	@ prephitmp.787, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.789, <variable>.pic_height_in_pix
.L120:
	mov	r2, r5	@, temp.807
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35381,
	b	.L108	@
.L134:
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.793, <variable>.pic_height_in_pix
.L112:
	mov	r2, r0	@, D.35391
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC16	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35381,
	b	.L108	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #61824	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movw	r6, #30692	@ tmp144,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35329,
	mov	r1, r0	@ D.35329,
	str	r0, [r4, r6]	@ D.35329, <variable>.CodecInfo.CurFsID
	blt	.L142	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L143	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.35343, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35343,
	beq	.L139	@,
	ldr	r3, [r5, #476]	@ D.35346, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35346,
	beq	.L139	@,
	ldr	r0, [r5, #480]	@ D.35349, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35349,
	beq	.L139	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC21	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L139:
	movw	r0, #30692	@ tmp171,
	mov	r5, #1	@ D.35337,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L137:
	mov	r0, r5	@, D.35337
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L142:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	movw	r6, #30688	@ tmp152,
	bl	dprint_vfmw	@
	add	r1, r4, #30720	@, pCtx,
	add	r1, r1, #16	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp155,
	str	r5, [r4, r6]	@ tmp155, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #30604	@ tmp159,
	str	r5, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	b	.L137	@
.L143:
	movw	r1, #:lower16:.LC19	@,
	mov	r2, #111	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	b	.L137	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
.LFB1369:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r6, fp, #188	@ tmp485,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pPacket, pPacket
	mov	r2, #96	@,
	mov	r0, r6	@, tmp485
	mov	r1, #0	@,
	add	sl, r5, #30464	@ tmp483, pCtx,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	add	r7, sl, #16	@ pPictureHeader, tmp483,
	beq	.L195	@,
	ldr	r9, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r9, #0	@ <variable>.PhyAddr,
	beq	.L196	@,
	ldr	r9, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r9, #0	@ <variable>.VirAddr,
	beq	.L197	@,
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #9	@ <variable>.LenInByte,
	ble	.L198	@,
	add	r8, r5, #8	@ pDivx3DecParam, pCtx,
	mov	r1, #156	@,
	mov	r9, #0	@ tmp229,
	mov	r0, r8	@, pDivx3DecParam
	bl	__memzero	@
	str	r9, [r5, #244]	@ tmp229, <variable>.CodecInfo.BsOffset
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #30584	@ tmp230,
	str	r0, [r5, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, #248]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	ldr	r2, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r5, #168]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r4, #12]	@ temp.915, <variable>.LenInByte
	str	r2, [r5, #252]	@ temp.915, <variable>.CodecInfo.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #256]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L150	@,
	ldr	r1, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r5, #260]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r5, #172]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	r3, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r3, [r5, #264]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #268]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L199	@,
	sub	lr, r2, #10	@ tmp251, temp.915,
	movw	ip, #:lower16:3145717	@ tmp252,
	movt	ip, #:upper16:3145717	@ tmp252,
	cmp	lr, ip	@ tmp251, tmp252
	bhi	.L152	@,
.L200:
	ldr	r1, [r5, #168]	@ D.35800, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.35800,
	beq	.L152	@,
	add	sl, sl, #240	@ pBs, tmp483,
	mov	r0, sl	@, pBs
	bl	BsInit	@
	mov	r0, sl	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	str	r0, [fp, #-192]	@, %sfp
	mov	r0, sl	@, pBs
	bl	BsGet	@
	mov	r2, r0, asl #24	@ tmp255, D.35804,
	and	ip, r0, #65280	@ tmp257, D.35804,
	orr	r3, r2, r0, lsr #24	@, tmp256, tmp255, D.35804,
	and	r1, r0, #16711680	@ tmp260, D.35804,
	orr	r9, r3, ip, asl #8	@, tmp259, tmp256, tmp257,
	mov	r0, sl	@, pBs
	orr	r9, r9, r1, lsr #8	@, width, tmp259, tmp260,
	mov	r1, #32	@,
	add	r2, r9, #15	@ tmp262, width,
	str	r9, [fp, #-132]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	ip, r2, lsr #4	@ tmp263, tmp262,
	str	ip, [fp, #-140]	@ tmp263, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	mov	r3, r0, asl #24	@ tmp265, D.35815,
	and	r2, r0, #65280	@ tmp267, D.35815,
	orr	ip, r3, r0, lsr #24	@, tmp266, tmp265, D.35815,
	and	r1, r0, #16711680	@ tmp270, D.35815,
	orr	r3, ip, r2, asl #8	@, tmp269, tmp266, tmp267,
	orr	r3, r3, r1, lsr #8	@, height, tmp269, tmp270,
	str	r3, [fp, #-128]	@ height, TmpPictureHeader.pic_height_in_pix
	add	r0, r3, #15	@ tmp272, height,
	cmp	r9, #31	@ width,
	cmphi	r3, #31	@, height,
	mov	r2, r0, lsr #4	@ tmp273, tmp272,
	str	r2, [fp, #-136]	@ tmp273, TmpPictureHeader.pic_height_in_mb
	bls	.L153	@,
	cmp	r9, #1920	@ width,
	cmpls	r3, #1088	@, height,
	movls	ip, #0	@, tmp287
	movhi	ip, #1	@, tmp287
	bls	.L154	@,
.L153:
	mov	r2, r9	@, width
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L198:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
.L146:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L199:
	movw	r6, #61824	@ tmp241,
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.35753, tmp229
	b	.L146	@
.L152:
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L196:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.35753, <variable>.PhyAddr
	b	.L146	@
.L150:
	sub	lr, r2, #10	@ tmp251, temp.915,
	movw	ip, #:lower16:3145717	@ tmp252,
	movt	ip, #:upper16:3145717	@ tmp252,
	str	r9, [r5, #268]	@ tmp229, <variable>.CodecInfo.IsLastSeg1
	cmp	lr, ip	@ tmp251, tmp252
	str	r9, [r5, #260]	@ tmp229, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r5, #172]	@ tmp229, <variable>.CodecInfo.BsVirAddr1
	str	r9, [r5, #264]	@ tmp229, <variable>.CodecInfo.BsLength1
	bls	.L200	@,
	b	.L152	@
.L154:
	movw	r0, #30488	@ tmp289,
	movw	r1, #30576	@ tmp292,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	mov	r0, sl	@, pBs
	ldr	r2, [r5, r1]	@, <variable>.CodecInfo.PrevSwitchRounding
	mov	r1, r6	@, tmp485
	str	ip, [fp, #-216]	@,
	str	lr, [fp, #-180]	@ <variable>.CodecInfo.PictureHeader.rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L201	@,
	movw	ip, #30604	@ tmp295,
	ldr	r9, [r5, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r9, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L156	@,
	ldr	r2, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	bne	.L202	@,
.L156:
	ldr	r1, [fp, #-136]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r2, [fp, #-140]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	mul	lr, r2, r1	@ tmp301, TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	str	lr, [fp, #-124]	@ tmp301, TmpPictureHeader.total_mbs
	beq	.L157	@,
	movw	ip, #30528	@ tmp303,
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L203	@,
.L157:
	movw	r9, #:lower16:g_event_report	@ tmp309,
	movt	r9, #:upper16:g_event_report	@ tmp309,
	ldr	r3, [r9, #0]	@ g_event_report.428, g_event_report
	cmp	r3, #0	@ g_event_report.428,
	beq	.L159	@,
	movw	r9, #30528	@ tmp310,
	movw	lr, #30532	@ tmp312,
	ldrh	r0, [r5, r9]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	strh	r0, [fp, #-52]	@ movhi	@, para
	ldrh	ip, [r5, lr]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [fp, #-48]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	movw	r2, #61824	@ tmp316,
	strh	r1, [fp, #-46]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	mov	r1, #2	@,
	strh	ip, [fp, #-50]	@ movhi	@, para
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	sub	r2, fp, #52	@,,
	blx	r3	@ g_event_report.428
.L159:
	movw	lr, #61824	@ tmp319,
	movw	ip, #30688	@ tmp321,
	ldr	r1, [r5, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	add	r9, r5, #30720	@ D.35868, pCtx,
	str	ip, [fp, #-220]	@,
	add	r9, r9, #16	@ D.35868, D.35868,
	str	lr, [fp, #-216]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-220]	@,
	mov	r0, #0	@,
	str	r0, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [fp, #-216]	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	str	r3, [fp, #-220]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r1, #30604	@ tmp328,
	mov	ip, #0	@,
	str	ip, [r5, r1]	@, <variable>.CodecInfo.RefNum
	mov	r1, r9	@, D.35868
	ldr	r2, [fp, #-220]	@,
	str	r0, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r3, [fp, #-216]	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-140]	@ prephitmp.879, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.879,
	ldrhi	r3, [fp, #-136]	@ prephitmp.968, TmpPictureHeader.pic_height_in_mb
	bhi	.L161	@,
	ldr	r3, [fp, #-136]	@ prephitmp.968, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.968,
	bhi	.L161	@,
	ldr	r1, [r5, #0]	@ D.35875, <variable>.pstExtraData
	ldr	r0, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L163	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L204	@,
.L163:
	movw	r3, #61824	@ tmp337,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L165	@,
.L194:
	ldr	r2, [fp, #-140]	@ prephitmp.879, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-136]	@ prephitmp.968, TmpPictureHeader.pic_height_in_mb
.L164:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r5	@, pCtx
	mov	r2, r6	@, tmp485
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L205	@,
.L158:
	ldr	r2, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r1, r6	@, tmp485
	mov	r0, r7	@, pPictureHeader
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	movwne	r2, #30492	@ tmp343,
	moveq	r9, #23	@ lastpic_vol_mode,
	ldrne	r9, [r5, r2]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r6, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r0, r5	@, pCtx
	cmp	r6, #0	@ TmpPictureHeader.prediction_type,
	movwne	r6, #30492	@ tmp349,
	strne	r9, [r5, r6]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L169	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L195:
	movw	r3, #30600	@ tmp221,
	mov	r0, #1	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35753, pPacket
	b	.L146	@
.L197:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.35753, <variable>.VirAddr
	b	.L146	@
.L201:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-216]	@,
	mov	r0, r3	@ D.35753, tmp287
	b	.L146	@
.L161:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L205:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L203:
	movw	r0, #30532	@ tmp306,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r1, lr	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L157	@,
	b	.L158	@
.L204:
	ldrb	lr, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	lr, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L164	@,
.L165:
	mov	r0, r9	@, D.35868
	bl	ResetVoQueue	@
	b	.L194	@
.L169:
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r7, r0, #0	@ D.35898,
	beq	.L206	@,
	movw	r7, #30692	@,
	movw	r9, #61824	@ tmp354,
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L171	@,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp373,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r3, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [ip, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r6, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r3, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	mvn	r3, #0	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r6, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [lr, #56]	@ tmp373, <variable>.pstExtraData,
	ldrd	r2, [r7, #16]	@, pImg,
	strd	r2, [fp, #-204]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	ldrd	r6, [fp, #-204]	@,,
	strd	r6, [sp]	@,
	movw	r7, #30692	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #30688	@ tmp383,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L172	@,
	ldr	r3, [r6, #472]	@ D.35926, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.35926,
	beq	.L172	@,
	ldr	r1, [r6, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L172	@,
	ldr	r2, [r6, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L172	@,
	ldr	r9, [r0, #472]	@ D.35933, <variable>.pstDecodeFs
	mov	r1, #0	@,
	mov	r2, #20	@,
	mov	r7, r1	@ tmp418,
	cmp	r9, #0	@ D.35933,
	sub	ip, fp, #92	@ tmp482,,
	ldrne	r9, [r9, #12]	@, <variable>.PhyAddr
	ldreq	r3, [r3, #12]	@, <variable>.PhyAddr
	str	ip, [fp, #-216]	@,
	strne	r9, [fp, #-204]	@, %sfp
	sub	r9, fp, #72	@ tmp484,,
	streq	r3, [fp, #-204]	@, %sfp
	mov	r0, r9	@, tmp484
	bl	memset	@
	ldr	r3, [fp, #-216]	@,
	mov	r1, r7	@, tmp418
	mov	r2, #20	@,
	mov	r0, r3	@, tmp482
	bl	memset	@
	ldr	r0, [fp, #-204]	@, %sfp
	ldr	r2, [r5, #156]	@, <variable>.Divx3DecParam.ColPmvPhyAddr
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	r0, [r5, #132]	@, <variable>.Divx3DecParam.FwdRefPhyAddr
	mov	r0, #13	@,
	ldr	lr, [r6, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [fp, #-212]	@, %sfp
	ldr	r2, [lr, #12]	@ D.35939, <variable>.PhyAddr
	str	r2, [r5, #136]	@ D.35939, <variable>.Divx3DecParam.CurPicPhyAddr
	ldr	ip, [r6, #484]	@, <variable>.PmvAddr
	str	ip, [fp, #-208]	@, %sfp
	str	ip, [r5, #152]	@, <variable>.Divx3DecParam.CurrPmvPhyAddr
	ldr	r3, [r6, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [fp, #-204]	@, %sfp
	ldr	ip, [r3, #12]	@ D.35943, <variable>.PhyAddr
	ldr	r3, [fp, #-208]	@, %sfp
	str	lr, [sp, #0]	@,
	str	r3, [sp, #4]	@,
	mov	r3, ip	@, D.35943
	str	ip, [r5, #140]	@ D.35943, <variable>.Divx3DecParam.DispFramePhyAddr
	ldr	lr, [fp, #-212]	@, %sfp
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	mov	r0, sl	@, pBs
	ldr	ip, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r5, #144]	@ <variable>.Stride, <variable>.Divx3DecParam.DDRStride
	bl	BsResidBits	@
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	bic	r3, r2, #15	@ tmp411, <variable>.PhyAddr,
	str	r3, [r5, #104]	@ tmp411, <variable>.Divx3DecParam.StreamBaseAddr
	ldr	r1, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [fp, #-192]	@, %sfp
	and	r2, r1, #15	@ tmp412, <variable>.PhyAddr,
	add	r3, ip, r2, asl #3	@, CurrPicBitOffset,, tmp412,
	rsb	ip, r0, r3	@ CurrPicBitOffset.953,, CurrPicBitOffset
	mov	r0, sl	@, pBs
	and	r1, ip, #127	@ tmp417, CurrPicBitOffset.953,
	str	r1, [r5, #116]	@ tmp417, <variable>.Divx3DecParam.StreamBitOffset
	mov	r2, ip, lsr #7	@ tmp415, CurrPicBitOffset.953,
	mov	r1, r2, asl #4	@ tmp416, tmp415,
	str	r1, [r5, #108]	@ tmp416, <variable>.Divx3DecParam.StreamPhyAddr
	bl	BsResidBits	@
	movw	r3, #30492	@ tmp421,
	ldr	r3, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	str	r7, [r5, #112]	@ tmp418, <variable>.Divx3DecParam.StreamPhyAddr
	cmp	r3, #24	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	str	r7, [r5, #120]	@ tmp418, <variable>.Divx3DecParam.StreamBitOffset
	str	r7, [r5, #128]	@ tmp418, <variable>.Divx3DecParam.StreamLength
	str	r0, [r5, #124]	@, <variable>.Divx3DecParam.StreamLength
	ldr	ip, [fp, #-216]	@,
	beq	.L179	@,
	cmp	r3, #26	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L180	@,
	cmp	r3, #23	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L207	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35753, tmp418
	b	.L146	@
.L202:
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.35753, <variable>.CodecInfo.RefNum
	b	.L146	@
.L206:
	movw	ip, #30600	@ tmp352,
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, [r5, ip]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35753, D.35898
	b	.L146	@
.L172:
	movw	ip, #61824	@ tmp395,
	movw	r0, #30692	@ tmp396,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35753,
	b	.L146	@
.L171:
	mov	r0, r6	@, ret
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35753, pImg
	b	.L146	@
.L179:
	movw	r3, #30532	@ tmp426,
	movw	r2, #30528	@ tmp429,
	ldr	r0, [r5, r3]	@ temp.954, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	tst	r0, #1	@ temp.954,
	mov	r1, r0, lsr #1	@ tmp428, temp.954,
	mul	r7, r6, r1	@ D.35965, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp428
	sub	r3, r7, #1	@ prephitmp.877, D.35965,
	str	r3, [fp, #-92]	@ prephitmp.877, slice_end_mbn
	mov	r1, r7, asl #1	@ D.35969, D.35965,
	str	r7, [fp, #-68]	@ D.35965, slice_start_mbn
	sub	r2, r1, #1	@ tmp431, D.35969,
	str	r2, [fp, #-88]	@ tmp431, slice_end_mbn
	moveq	r2, #2	@ total_slice_num,
	beq	.L181	@,
	movw	r7, #30544	@ tmp433,
	str	r1, [fp, #-64]	@ D.35969, slice_start_mbn
	ldr	sl, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #3	@ total_slice_num,
	sub	r4, sl, #1	@ tmp435, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r4, [fp, #-84]	@ tmp435, slice_end_mbn
.L181:
	movw	r4, #30532	@ tmp454,
	movw	r7, #30484	@ tmp456,
	ldr	r0, [r5, r4]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	movw	sl, #30480	@ tmp450,
	ldr	r4, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.quantizer
	movw	r7, #30488	@ tmp458,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.rounding_type
	add	r1, sl, #48	@ tmp452, tmp452,
	ldr	r6, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	tst	r2, #1	@ total_slice_num,
	ldr	sl, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r1, #0	@ ivtmp.897,
	str	r7, [r5, #28]	@, <variable>.Divx3DecParam.rounding_type
	movw	r7, #30496	@ tmp460,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.has_skips
	str	r0, [r5, #20]	@, <variable>.Divx3DecParam.PicHeightInMb
	mov	r0, r5	@ ivtmp.903, pCtx
	str	r4, [r5, #24]	@, <variable>.Divx3DecParam.quantizer
	mov	r4, r1	@ slice_num, ivtmp.897
	str	r7, [r5, #32]	@, <variable>.Divx3DecParam.has_skips
	movw	r7, #30504	@ tmp462,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	str	r6, [r5, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	sl, [r5, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r7, [r5, #36]	@, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	movw	r7, #30508	@ tmp464,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	str	r2, [r5, #60]	@ total_slice_num, <variable>.Divx3DecParam.TotalSliceNum
	str	r7, [r5, #40]	@, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	movw	r7, #30512	@ tmp466,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	r7, [r5, #44]	@, <variable>.Divx3DecParam.alternative_I_DC_DCT
	movw	r7, #30516	@ tmp468,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	str	r7, [r5, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	movw	r7, #30520	@ tmp470,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	str	r7, [r5, #52]	@, <variable>.Divx3DecParam.alternative_P_DC_DCT
	movw	r7, #30524	@ tmp472,
	ldr	r7, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r7, [r5, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	bne	.L185	@,
	ldr	r6, [r9, #0]	@ tmp497, slice_start_mbn
	cmp	r2, #1	@ total_slice_num,
	mov	r1, #4	@ ivtmp.897,
	str	r3, [r5, #84]	@ prephitmp.877, <variable>.Divx3DecParam.slice_end_mbn
	mov	r4, #1	@ slice_num,
	add	r0, r5, r1	@ ivtmp.903, pCtx,
	str	r6, [r5, #64]	@ tmp497, <variable>.Divx3DecParam.slice_start_mbn
	ldrhi	r3, [ip, r1]	@ prephitmp.877, slice_end_mbn
	bls	.L184	@,
.L185:
	add	r6, r4, #1	@ tmp489, slice_num,
	ldr	r7, [r9, r1]	@ tmp475, slice_start_mbn
	cmp	r2, r6	@ total_slice_num, tmp489
	add	r4, r6, #1	@ slice_num, tmp489,
	add	r6, r1, #4	@ tmp490, ivtmp.897,
	str	r3, [r0, #84]	@ prephitmp.877, <variable>.Divx3DecParam.slice_end_mbn
	add	r1, r6, #4	@ ivtmp.897, tmp490,
	str	r7, [r0, #64]	@ tmp475, <variable>.Divx3DecParam.slice_start_mbn
	add	r3, r0, #4	@ tmp491, ivtmp.903,
	bls	.L184	@,
	ldr	r7, [ip, r6]	@ prephitmp.877, slice_end_mbn
	add	r0, r3, #4	@ ivtmp.903, tmp491,
	ldr	r6, [r9, r6]	@ tmp496, slice_start_mbn
	str	r7, [r3, #84]	@ prephitmp.877, <variable>.Divx3DecParam.slice_end_mbn
	str	r6, [r3, #64]	@ tmp496, <variable>.Divx3DecParam.slice_start_mbn
	ldr	r3, [ip, r1]	@ prephitmp.877, slice_end_mbn
	b	.L185	@
.L184:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@ D.35753,
	str	r8, [r5, #4]	@ pDivx3DecParam, <variable>.pDivx3DecParam
	ldr	ip, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r5, #160]	@ <variable>.s32Compress_en, <variable>.Divx3DecParam.Compress_en
	b	.L146	@
.L207:
	movw	sl, #30544	@ tmp424,
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	ldr	r4, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #1	@ total_slice_num,
	sub	r3, r4, #1	@ prephitmp.877, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r3, [fp, #-92]	@ prephitmp.877, slice_end_mbn
	b	.L181	@
.L180:
	movw	r4, #30532	@ tmp436,
	movw	r2, #30528	@ tmp439,
	ldr	r1, [r5, r4]	@ temp.957, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r0, #3	@ tmp442,
	ldr	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	tst	r1, #3	@ temp.957,
	mov	r3, r1, lsr #2	@ tmp438, temp.957,
	mul	r7, r6, r3	@ temp.960, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp438
	sub	r3, r7, #1	@ prephitmp.877, temp.960,
	str	r3, [fp, #-92]	@ prephitmp.877, slice_end_mbn
	mul	r1, r0, r7	@ D.35978, tmp442, temp.960
	mov	r6, r7, asl #2	@ D.35982, temp.960,
	mov	sl, r7, asl #1	@ temp.961, temp.960,
	strne	r6, [fp, #-56]	@ D.35982, slice_start_mbn
	str	sl, [fp, #-64]	@ temp.961, slice_start_mbn
	sub	r4, sl, #1	@ tmp441, temp.961,
	sub	r2, r1, #1	@ tmp443, D.35978,
	str	r2, [fp, #-84]	@ tmp443, slice_end_mbn
	sub	r2, r6, #1	@ tmp444, D.35982,
	str	r2, [fp, #-80]	@ tmp444, slice_end_mbn
	movwne	r2, #30544	@ tmp446,
	str	r7, [fp, #-68]	@ temp.960, slice_start_mbn
	str	r4, [fp, #-88]	@ tmp441, slice_end_mbn
	moveq	r2, #4	@ total_slice_num,
	str	r1, [fp, #-60]	@ D.35978, slice_start_mbn
	ldrne	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	movne	r2, #5	@ total_slice_num,
	subne	r6, r6, #1	@ tmp448, <variable>.CodecInfo.PictureHeader.total_mbs,
	strne	r6, [fp, #-76]	@ tmp448, slice_end_mbn
	b	.L181	@
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.35557, %object
	.size	__func__.35557, 19
__func__.35557:
	.ascii	"Divx3_DecodeDecide\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Decoding quits at frm %d\012\000"
	.space	2
.LC1:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC2:
	.ascii	"----------------- divx3 Imode -> %d ---------------"
	.ascii	"---\012\000"
.LC3:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC4:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC5:
	.ascii	"P-frm\000"
	.space	2
.LC6:
	.ascii	"error: DecMode illegal\012\000"
.LC7:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC8:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC9:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC10:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC11:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC12:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC13:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC14:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC15:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC16:
	.ascii	"divx3 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC17:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC18:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC19:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC20:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC21:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC22:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC23:
	.ascii	"ERROR: frm %d, Invalid packet PhyAddr!\012\000"
.LC24:
	.ascii	"ERROR: frm %d, Invalid packet VirAddr!\012\000"
.LC25:
	.ascii	"ERROR: frm %d, Invalid packet len!\012\000"
.LC26:
	.ascii	"ERROR: frm %d, Invalid WxH: %dx%d!\012\000"
.LC27:
	.ascii	"Divx3_GetPictureHeader Error!\012\000"
	.space	1
.LC28:
	.ascii	"Can't decode from P frame!\012\000"
.LC29:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC30:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC31:
	.ascii	"Divx3_ArrangeVHBMem err\012\000"
	.space	3
.LC32:
	.ascii	"Divx3_DecodeDecide err\012\000"
.LC33:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC34:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC35:
	.ascii	"FSP_GetFsImagePtr Error!\012\000"
	.space	2
.LC36:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC37:
	.ascii	"dec addr: cur,cur2d,fwd,currpmv,colpmv = %p,%p,%p,%"
	.ascii	"p,%p,%p\012\000"
.LC38:
	.ascii	"vol_mode Error!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
