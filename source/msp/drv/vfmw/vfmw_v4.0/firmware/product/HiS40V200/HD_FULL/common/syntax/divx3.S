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
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0
@ -Idrivers/msp/vfmw/vfmw_v4.0
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/HiS40V200
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DENV_ARMLINUX_KERNEL
@ -DBTL_ENABLE -DSCD_MP4_SLICE_ENABLE -DSUPPORT_JPEG_444
@ -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB -D__VFMW_REGISTER_ISR__
@ -DPRODUCT_S40V200 -DVFMW_VDH_V200R003MPW_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MVC_SUPPORT -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT
@ -DVFMW_AVS_SUPPORT -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_REAL8_SUPPORT -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_BTL_SUPPORT
@ -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=2 -DCFG_MAX_CHAN_NUM=2
@ -DVFMW_DPRINT_SUPPORT -DCHIP_TYPE_hi3716cv200es
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC011 -DCFG_HI_LOG_LEVEL=4
@ -DHI_KEYLED_SUPPORT -DHI_SCI_SUPPORT -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT
@ -DHI_VDEC_SVDEC_BUILTIN -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(divx3) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
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
.LFB1352:
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
.LFB1353:
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
	movw	r8, #28432	@ tmp134,
	movw	r6, #28480	@ tmp136,
	movw	r5, #28484	@ tmp138,
	movw	r4, #28436	@ tmp140,
	movw	ip, #28440	@ tmp142,
	movw	r1, #28448	@ tmp144,
	movw	r2, #28456	@ tmp146,
	movw	r9, #28460	@ tmp148,
	movw	r7, #28468	@ tmp152,
	ldr	sl, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	movw	r3, #28464	@ tmp150,
	ldr	r8, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r5, [r0, r4]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.CodecInfo.PictureHeader.quantizer
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	ldr	ip, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.CodecInfo.PictureHeader.has_skips
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	ldr	r2, [r0, r9]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	ldr	r9, [r0, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	movw	r7, #28472	@ tmp154,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	sl, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	r9, [r0, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	ldr	r9, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	movw	r7, #28476	@ tmp156,
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
.LFB1354:
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
.LFB1363:
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
	movw	r5, #57728	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36417,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36420,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #28672	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36420,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Destroy
	.type	DIVX3DEC_Destroy, %function
DIVX3DEC_Destroy:
	.fnstart
.LFB1358:
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
	movw	r3, #28552	@ tmp135,
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
.LFB1360:
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
	movw	r4, #57728	@ tmp137,
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
.LFB1355:
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
	movw	r3, #28432	@ tmp143,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldr	r6, [r0, r3]	@ FrameType, <variable>.CodecInfo.PictureHeader.prediction_type
	beq	.L34	@,
	ldrb	r2, [r0, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r1, r2, #2	@ tmp148, <variable>.CodecInfo.UsedDecMode,
	uxtb	r0, r1	@ tmp149, tmp148
	cmp	r0, #1	@ tmp149,
	bls	.L20	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.595, <variable>.s32DecMode
.L21:
	uxtb	r0, r2	@ D.35894, prephitmp.595
	strb	r0, [r5, #179]	@ D.35894, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #4	@ D.35894,
	ldrls	pc, [pc, r0, asl #2]	@ D.35894
	b	.L22	@
.L26:
	.word	.L23
	.word	.L23
	.word	.L24
	.word	.L32
	.word	.L23
.L35:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, r6	@, FrameType
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
.L32:
	mov	r0, #0	@ D.35877,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L20:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.595, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.595,
	cmpne	r2, #1	@, prephitmp.595,
	bhi	.L21	@,
	movw	r4, #28640	@ tmp162,
	movw	r7, #57728	@ tmp160,
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
	movw	r2, #28556	@ tmp169,
	str	r7, [r5, r2]	@ tmp165, <variable>.CodecInfo.RefNum
	str	r0, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.595, <variable>.s32DecMode
	b	.L21	@
.L34:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35877, <variable>.CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L24:
	cmp	r6, #0	@ FrameType,
	bne	.L35	@,
.L27:
	movw	r2, #28640	@ tmp184,
	movw	r3, #57728	@ tmp182,
	ldr	r1, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
.L33:
	mov	r0, #1	@ D.35877,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L22:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35877,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L23:
	cmp	r6, #0	@ FrameType,
	beq	.L27	@,
	movw	lr, #28556	@ tmp174,
	ldr	r4, [r5, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L36	@,
	movw	r1, #57728	@ tmp186,
	movw	lr, #28640	@ tmp188,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, lr]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pFwdImg
	beq	.L37	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #160]	@ prephitmp.597, <variable>.error_level
	ldr	r3, [ip, #0]	@ prephitmp.601, <variable>.s32RefErrThr
	cmp	r2, r3	@ prephitmp.597, prephitmp.601
	bls	.L33	@,
.L29:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35877,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L36:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC5	@,
	mov	r3, r4	@, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35877, <variable>.CodecInfo.RefNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L37:
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #160]	@ prephitmp.597, <variable>.error_level
	ldr	r3, [ip, #0]	@ prephitmp.601, <variable>.s32RefErrThr
	b	.L29	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
.LFB1357:
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
	movw	r6, #29032	@ tmp139,
	ldr	r8, [r0, r6]	@ D.35999, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #57736	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	ip, r4, #28672	@, pCtx,
	add	r0, ip, #16	@,,
	str	r8, [r4, r6]	@ D.35999, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #28528	@ tmp143,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp144,
	str	r2, [r4, r0]	@ tmp144, <variable>.CodecInfo.PrevSwitchRounding
	mov	r7, #0	@ tmp147,
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, r4	@, pCtx
	strb	r7, [r4, #178]	@ tmp147, <variable>.CodecInfo.Imgbuf_allocated
	strb	r1, [r4, #179]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #57728	@ tmp149,
	cmn	r0, #1	@ D.36010,
	str	r0, [r4, r3]	@ D.36010, <variable>.ChanID
	movne	r0, r7	@ D.36015, tmp147
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r7	@, tmp147
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36015,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
.LFB1356:
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
	cmp	r0, #1	@ D.35943,
	str	r0, [r4, #0]	@ D.35943, <variable>.prediction_type
	bls	.L64	@,
.L43:
	mov	r3, #0	@ D.35948,
.L55:
	mov	r0, r3	@, D.35948
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L64:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, [r4, #0]	@ <variable>.prediction_type, <variable>.prediction_type
	cmp	r3, #0	@ <variable>.prediction_type,
	str	r0, [r4, #4]	@, <variable>.quantizer
	beq	.L65	@,
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
	str	r0, [r4, #36]	@ D.35981, <variable>.alternative_P_AC_DCT
	cmp	r0, #3	@ D.35981,
	ldrls	pc, [pc, r0, asl #2]	@ D.35981
	b	.L58	@
.L62:
	.word	.L59
	.word	.L59
	.word	.L61
	.word	.L61
.L61:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L58:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, <variable>.alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.35948,
	str	r0, [r4, #44]	@, <variable>.alternative_MV
	mov	r0, r3	@, D.35948
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L65:
	mov	r0, #1	@ tmp154,
	mov	r1, #5	@,
	str	r0, [r4, #8]	@ tmp154, <variable>.rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ tmp155, D.35953,
	str	r0, [r4, #12]	@ D.35953, <variable>.vol_mode
	cmp	r0, #26	@ D.35953,
	cmpne	r3, #1	@, tmp155,
	bhi	.L43	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.35962, <variable>.alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.35962,
	ldrls	pc, [pc, r0, asl #2]	@ D.35962
	b	.L45	@
.L49:
	.word	.L46
	.word	.L46
	.word	.L48
	.word	.L48
.L59:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L58	@
.L48:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L45:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.35966, <variable>.alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.35966,
	ldrls	pc, [pc, r0, asl #2]	@ D.35966
	b	.L50	@
.L54:
	.word	.L51
	.word	.L51
	.word	.L53
	.word	.L53
.L53:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L50:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.35948,
	str	r0, [r4, #32]	@, <variable>.alternative_I_DC_DCT
	b	.L55	@
.L51:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L50	@
.L46:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L45	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
.LFB1351:
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
	movw	r1, #57728	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #28644	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #28432	@ tmp146,
	ldr	lr, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #108]	@ tmp150, <variable>.is_fld_save
	and	r2, lr, #3	@ D.35797, <variable>.CodecInfo.PictureHeader.prediction_type,
	movw	lr, #28480	@ tmp151,
	orr	ip, r2, #7168	@ tmp148, D.35797,
	str	r2, [r4, #116]	@ D.35797, <variable>.bottom_fld_type
	str	r2, [r4, #112]	@ D.35797, <variable>.top_fld_type
	orr	r3, ip, #32	@ tmp148, tmp148,
	str	r3, [r4, #120]	@ tmp148, <variable>.format
	movw	r3, #28484	@ tmp154,
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r2, ip, asl #4	@ tmp153, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [r4, #124]	@ tmp153, <variable>.image_width
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, lr, asl #4	@ tmp156, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	str	ip, [r4, #128]	@ tmp156, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L70	@,
.L68:
	mov	r3, #8	@ tmp177,
	mov	r2, #1	@ tmp175,
	mov	ip, #5	@ tmp172,
	mov	r1, #0	@ tmp173,
	str	r3, [r4, #316]	@ tmp177, <variable>.ImageDnr.QP_U
	str	r3, [r4, #312]	@ tmp177, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #301]	@ tmp175, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #308]	@ tmp172, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #296]	@ tmp173, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #303]	@ tmp175, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #320]	@ tmp177, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L70:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #152]	@ D.35807, <variable>.image_stride
	add	ip, r0, #15	@ tmp160, <variable>.image_height,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp159, D.35807,
	mov	r1, ip, lsr #4	@ tmp162, tmp160,
	add	ip, r3, r2	@ tmp167, <variable>.luma_phy_addr, D.35807
	str	ip, [r4, #76]	@ tmp167, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.35813, tmp162, tmp159
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp164, D.35813, <variable>.luma_phy_addr
	add	lr, r0, r1	@ tmp166, <variable>.luma_vir_addr, D.35813
	str	ip, [r4, #88]	@ tmp164, <variable>.chrom_phy_addr
	add	r0, ip, r2	@ tmp168, tmp164, D.35807
	str	lr, [r4, #36]	@ tmp166, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp168, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp164
	str	ip, [r4, #72]	@ tmp164, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L68	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
.LFB1362:
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
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r7, r2	@ SwitchRounding, SwitchRounding
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, #5	@,
	mov	r1, r4	@, pCtx
	movw	r5, #57728	@ tmp146,
	bl	ReleasePacket	@
	movw	r0, #28644	@ tmp148,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #28640	@ tmp152,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, #0	@ pCurImg,
	beq	.L72	@,
	movw	ip, #28432	@ tmp154,
	mov	r0, #22	@,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	cmp	r2, #0	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	andeq	r7, r7, #1	@ tmp157, SwitchRounding,
	movweq	r2, #28528	@ tmp156,
	streq	r7, [r4, r2]	@ tmp157, <variable>.CodecInfo.PrevSwitchRounding
	cmp	r6, #100	@ ErrRatio,
	movcs	r6, #100	@ tmp158,
	str	r6, [r8, #160]	@ tmp158, <variable>.error_level
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r1, [r4, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r1, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L76	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L76	@,
	movw	r2, #28556	@ tmp165,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #0	@ <variable>.CodecInfo.RefNum,
	movwne	r0, #28640	@ tmp167,
	mvneq	r1, #0	@ prephitmp.718,
	ldrne	r1, [r4, r0]	@ prephitmp.718,
.L84:
	cmn	r1, #1	@ prephitmp.718,
	movw	lr, #28648	@ tmp170,
	str	r1, [r4, lr]	@ prephitmp.718, <variable>.CodecInfo.ToQueFsID
	beq	.L79	@,
	movw	r5, #57728	@ tmp171,
	movw	r6, #28648	@ tmp173,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36390, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36390
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36390
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r3, r0	@ D.36395,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #28672	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L85	@,
.L79:
	movw	lr, #28432	@ tmp193,
	movw	r0, #28552	@ tmp189,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	cmp	ip, #1	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	add	r1, r2, #1	@ tmp192, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, r0]	@ tmp192, <variable>.CodecInfo.FrmCnt
	beq	.L86	@,
.L81:
	movw	r5, #28640	@ tmp199,
	movw	r6, #28644	@ tmp200,
	ldr	r1, [r4, r5]	@ prephitmp.705, <variable>.CodecInfo.FwdFsID
	movw	r2, #28556	@ tmp197,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	mov	r0, #1	@ tmp198,
	str	r0, [r4, r2]	@ tmp198, <variable>.CodecInfo.RefNum
	cmp	r1, ip	@ prephitmp.705, <variable>.CodecInfo.CurFsID
	beq	.L82	@,
	mov	r2, r1	@, prephitmp.705
	movw	r7, #57728	@ tmp203,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_RemovePmv	@
	ldr	r1, [r4, r6]	@ prephitmp.705, <variable>.CodecInfo.CurFsID
.L82:
	movw	ip, #28640	@ tmp212,
	movw	lr, #57728	@ tmp213,
	str	r1, [r4, ip]	@ prephitmp.705, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #28644	@ tmp216,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36367,
.L80:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L76:
	movw	ip, #28644	@ tmp169,
	ldr	r1, [r4, ip]	@ prephitmp.718,
	b	.L84	@
.L86:
	movw	r1, #28556	@ tmp195,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L81	@,
.L72:
	mov	r0, #0	@ D.36367,
	b	.L80	@
.L85:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36367,
	b	.L80	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
	.fnstart
.LFB1361:
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
	beq	.L99	@,
	movw	r6, #57728	@ tmp142,
	movw	r7, #28644	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L99	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L97	@,
.L99:
	add	r5, r4, #28672	@ tmp177, pCtx,
	add	r5, r5, #16	@ tmp177, tmp177,
.L88:
	mov	r0, r5	@, tmp177
	bl	GetVoLastImageID	@
.L90:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L97:
	mov	r0, r4	@, pCtx
	add	r5, r4, #28672	@ tmp177, pCtx,
	bl	Divx3_SetImgFormat	@
	add	r5, r5, #16	@ tmp177, tmp177,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #196]	@ tmp150, <variable>.last_frame
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
	beq	.L89	@,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r7, r2	@ tmp166,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #172]	@ tmp166, <variable>.p_usrdat
	ldr	r1, [r8, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r8, #176]	@ tmp166, <variable>.p_usrdat
	b	.L88	@
.L89:
	ldr	r2, [r8, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L88	@,
	ldr	ip, [r8, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L88	@,
	ldr	lr, [r8, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L90	@,
	b	.L88	@
	.fnend
	.size	DIVX3DEC_GetRemainImg, .-DIVX3DEC_GetRemainImg
	.align	2
	.global	Divx3_ArrangeVHBMem
	.type	Divx3_ArrangeVHBMem, %function
Divx3_ArrangeVHBMem:
	.fnstart
.LFB1350:
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
	ldr	r1, [r2, #48]	@ D.35692, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35692,
	ldrls	r3, [r2, #52]	@ prephitmp.785, <variable>.pic_height_in_mb
	bls	.L102	@,
	ldr	r3, [r2, #52]	@ prephitmp.785, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.785,
	bls	.L102	@,
	ldr	r1, [r4, #0]	@ D.35699, <variable>.pstExtraData
	ldr	r3, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L105	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L127	@,
.L106:
	ldr	r6, [r2, #60]	@ PicHeight, <variable>.pic_height_in_pix
	mov	r8, #5	@ prephitmp.787,
	ldr	r5, [r2, #56]	@ PicWidth, <variable>.pic_width_in_pix
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L113:
	sub	r7, fp, #84	@ tmp200,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp200
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp176,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #57728	@ tmp187,
	strb	r3, [fp, #-82]	@ tmp176, FspInstCfg.s32RprEnable
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.787, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r9	@ iftmp.412, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.412, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp200
	uxtbne	sl, sl	@ iftmp.413, PmvNum
	mov	r7, #0	@ tmp185,
	moveq	sl, #1	@ iftmp.413,
	strb	r7, [fp, #-80]	@ tmp185, FspInstCfg.s32UserDec
	strb	sl, [fp, #-76]	@ iftmp.413, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35748,
	movne	r0, r7	@ D.35696, tmp185
	beq	.L128	@,
.L104:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L105:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L106	@,
	ldr	r5, [r2, #56]	@ temp.809, <variable>.pic_width_in_pix
	ldr	ip, [r1, #472]	@ D.35707, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.809, D.35707
	bhi	.L129	@,
	ldr	r3, [r2, #60]	@ prephitmp.791, <variable>.pic_height_in_pix
	ldr	lr, [r1, #476]	@ prephitmp.789, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.791, prephitmp.789
	bhi	.L116	@,
	ldr	r6, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ temp.812, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L119	@,
	add	sl, r9, #1	@ PmvNum.814, temp.812,
	cmp	sl, #17	@ PmvNum.814,
	movge	sl, #17	@ PmvNum,
.L119:
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.787, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.812,
	mov	r6, r3	@ PicHeight, prephitmp.791
	b	.L113	@
.L102:
	mov	r2, r1	@, D.35692
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35696,
	b	.L104	@
.L128:
	ldr	lr, [r4, #0]	@ temp.823, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp196,
	streqb	r0, [r4, #178]	@ tmp196, <variable>.CodecInfo.Imgbuf_allocated
	beq	.L104	@,
	mov	r0, r5	@, D.35748
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35696, D.35748
	b	.L104	@
.L127:
	ldr	r0, [r2, #56]	@ D.35706, <variable>.pic_width_in_pix
	ldr	r5, [r1, #472]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35706, PicWidth
	bhi	.L130	@,
	ldr	r3, [r2, #60]	@ prephitmp.795, <variable>.pic_height_in_pix
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.795, PicHeight
	bhi	.L108	@,
	ldrb	r0, [r4, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L104	@,
	ldr	r2, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ D.35717, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L112	@,
	add	sl, r9, #1	@ PmvNum.806, D.35717,
	cmp	sl, #17	@ PmvNum.806,
	movge	sl, #17	@ PmvNum,
.L112:
	add	r9, r9, #2	@ DecFsNum, D.35717,
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.787, <variable>.stChanOption.s32DisplayFrameNum
	b	.L113	@
.L129:
	ldr	lr, [r1, #476]	@ prephitmp.789, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.791, <variable>.pic_height_in_pix
.L116:
	mov	r2, r5	@, temp.809
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35696,
	b	.L104	@
.L130:
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.795, <variable>.pic_height_in_pix
.L108:
	mov	r2, r0	@, D.35706
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35696,
	b	.L104	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
.LFB1349:
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
	movw	r5, #57728	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movw	r6, #28644	@ tmp144,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35647,
	str	r0, [r4, r6]	@ D.35647, <variable>.CodecInfo.CurFsID
	blt	.L137	@,
	mov	r1, r0	@, D.35647
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	mov	r5, r0	@ pLf,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #440]	@ D.35658, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35658,
	beq	.L134	@,
	ldr	r3, [r5, #444]	@ D.35661, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35661,
	beq	.L134	@,
	ldr	r0, [r5, #448]	@ D.35664, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35664,
	beq	.L134	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC19	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L134:
	movw	r2, #28644	@ tmp170,
	mov	r3, #1	@ D.35655,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r0, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r0, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L133:
	mov	r0, r3	@, D.35655
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L137:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	movw	r6, #28640	@ tmp152,
	bl	dprint_vfmw	@
	add	r1, r4, #28672	@, pCtx,
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
	movw	r3, #28556	@ tmp159,
	str	r5, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	mov	r3, r5	@ D.35655, tmp155
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	b	.L133	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
.LFB1359:
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
	sub	r6, fp, #188	@ tmp476,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pPacket, pPacket
	mov	r2, #96	@,
	mov	r0, r6	@, tmp476
	mov	r1, #0	@,
	add	sl, r5, #28416	@ tmp471, pCtx,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	add	r7, sl, #16	@ pPictureHeader, tmp471,
	beq	.L189	@,
	ldr	r9, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r9, #0	@ <variable>.PhyAddr,
	beq	.L190	@,
	ldr	r9, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r9, #0	@ <variable>.VirAddr,
	beq	.L191	@,
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #9	@ <variable>.LenInByte,
	ble	.L192	@,
	add	r8, r5, #8	@ pDivx3DecParam, pCtx,
	mov	r1, #156	@,
	mov	r9, #0	@ tmp228,
	mov	r0, r8	@, pDivx3DecParam
	bl	__memzero	@
	str	r9, [r5, #244]	@ tmp228, <variable>.CodecInfo.BsOffset
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #28536	@ tmp229,
	str	r0, [r5, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, #248]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	ldr	r2, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r5, #168]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r4, #12]	@ temp.917, <variable>.LenInByte
	str	r2, [r5, #252]	@ temp.917, <variable>.CodecInfo.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #256]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L144	@,
	ldr	r1, [r4, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r5, #260]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	ldr	r0, [r4, #64]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r5, #172]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	r3, [r4, #76]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r3, [r5, #264]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #268]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r4, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L193	@,
	sub	lr, r2, #10	@ tmp250, temp.917,
	movw	ip, #:lower16:3145717	@ tmp251,
	movt	ip, #:upper16:3145717	@ tmp251,
	cmp	lr, ip	@ tmp250, tmp251
	bhi	.L146	@,
.L194:
	ldr	r1, [r5, #168]	@ D.36111, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.36111,
	beq	.L146	@,
	add	sl, sl, #240	@ pBs, tmp471,
	mov	r0, sl	@, pBs
	bl	BsInit	@
	mov	r0, sl	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	str	r0, [fp, #-192]	@, %sfp
	mov	r0, sl	@, pBs
	bl	BsGet	@
	mov	r2, r0, asl #24	@ tmp254, D.36115,
	and	ip, r0, #65280	@ tmp256, D.36115,
	orr	r3, r2, r0, lsr #24	@, tmp255, tmp254, D.36115,
	and	r1, r0, #16711680	@ tmp259, D.36115,
	orr	r9, r3, ip, asl #8	@, tmp258, tmp255, tmp256,
	mov	r0, sl	@, pBs
	orr	r9, r9, r1, lsr #8	@, width, tmp258, tmp259,
	mov	r1, #32	@,
	add	r2, r9, #15	@ tmp261, width,
	str	r9, [fp, #-132]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	ip, r2, lsr #4	@ tmp262, tmp261,
	str	ip, [fp, #-140]	@ tmp262, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	mov	r3, r0, asl #24	@ tmp264, D.36126,
	and	r2, r0, #65280	@ tmp266, D.36126,
	orr	ip, r3, r0, lsr #24	@, tmp265, tmp264, D.36126,
	and	r1, r0, #16711680	@ tmp269, D.36126,
	orr	r3, ip, r2, asl #8	@, tmp268, tmp265, tmp266,
	orr	r3, r3, r1, lsr #8	@, height, tmp268, tmp269,
	str	r3, [fp, #-128]	@ height, TmpPictureHeader.pic_height_in_pix
	add	r0, r3, #15	@ tmp271, height,
	cmp	r9, #31	@ width,
	cmphi	r3, #31	@, height,
	mov	r2, r0, lsr #4	@ tmp272, tmp271,
	str	r2, [fp, #-136]	@ tmp272, TmpPictureHeader.pic_height_in_mb
	bls	.L147	@,
	cmp	r9, #1920	@ width,
	cmpls	r3, #1088	@, height,
	movls	ip, #0	@, tmp286
	movhi	ip, #1	@, tmp286
	bls	.L148	@,
.L147:
	mov	r2, r9	@, width
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L192:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
.L140:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L193:
	movw	r6, #57728	@ tmp240,
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #80]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.36064, tmp228
	b	.L140	@
.L146:
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L190:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36064, <variable>.PhyAddr
	b	.L140	@
.L144:
	sub	lr, r2, #10	@ tmp250, temp.917,
	movw	ip, #:lower16:3145717	@ tmp251,
	movt	ip, #:upper16:3145717	@ tmp251,
	str	r9, [r5, #268]	@ tmp228, <variable>.CodecInfo.IsLastSeg1
	cmp	lr, ip	@ tmp250, tmp251
	str	r9, [r5, #260]	@ tmp228, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r5, #172]	@ tmp228, <variable>.CodecInfo.BsVirAddr1
	str	r9, [r5, #264]	@ tmp228, <variable>.CodecInfo.BsLength1
	bls	.L194	@,
	b	.L146	@
.L148:
	movw	r0, #28440	@ tmp288,
	movw	r1, #28528	@ tmp291,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	mov	r0, sl	@, pBs
	ldr	r2, [r5, r1]	@, <variable>.CodecInfo.PrevSwitchRounding
	mov	r1, r6	@, tmp476
	str	ip, [fp, #-216]	@,
	str	lr, [fp, #-180]	@ <variable>.CodecInfo.PictureHeader.rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L195	@,
	movw	ip, #28556	@ tmp294,
	ldr	r9, [r5, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r9, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L150	@,
	ldr	r2, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	bne	.L196	@,
.L150:
	ldr	r1, [fp, #-136]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r2, [fp, #-140]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	mul	lr, r2, r1	@ tmp300, TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	str	lr, [fp, #-124]	@ tmp300, TmpPictureHeader.total_mbs
	beq	.L151	@,
	movw	ip, #28480	@ tmp302,
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L197	@,
.L151:
	movw	r9, #:lower16:g_event_report	@ tmp308,
	movt	r9, #:upper16:g_event_report	@ tmp308,
	ldr	r3, [r9, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L153	@,
	movw	r9, #28480	@ tmp310,
	movw	lr, #28484	@ tmp312,
	ldrh	r0, [r5, r9]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	strh	r0, [fp, #-52]	@ movhi	@, para
	ldrh	ip, [r5, lr]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [fp, #-48]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	movw	r2, #57728	@ tmp317,
	strh	r1, [fp, #-46]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	mov	r1, #2	@,
	strh	ip, [fp, #-50]	@ movhi	@, para
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	sub	r2, fp, #52	@,,
	blx	r3	@ g_event_report
.L153:
	movw	lr, #57728	@ tmp321,
	movw	ip, #28640	@ tmp323,
	ldr	r1, [r5, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	add	r9, r5, #28672	@ D.36179, pCtx,
	str	ip, [fp, #-220]	@,
	add	r9, r9, #16	@ D.36179, D.36179,
	str	lr, [fp, #-216]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-220]	@,
	mov	r0, #0	@,
	str	r0, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [fp, #-216]	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	str	r3, [fp, #-220]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r1, #28556	@ tmp330,
	mov	ip, #0	@,
	str	ip, [r5, r1]	@, <variable>.CodecInfo.RefNum
	mov	r1, r9	@, D.36179
	ldr	r2, [fp, #-220]	@,
	str	r0, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r3, [fp, #-216]	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-140]	@ prephitmp.881, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #352	@ prephitmp.881,
	ldrhi	r3, [fp, #-136]	@ prephitmp.961, TmpPictureHeader.pic_height_in_mb
	bhi	.L155	@,
	ldr	r3, [fp, #-136]	@ prephitmp.961, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #264	@ prephitmp.961,
	bhi	.L155	@,
	ldr	r1, [r5, #0]	@ D.36186, <variable>.pstExtraData
	ldr	r0, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L157	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L198	@,
.L157:
	movw	r3, #57728	@ tmp339,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L159	@,
.L188:
	ldr	r2, [fp, #-140]	@ prephitmp.881, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-136]	@ prephitmp.961, TmpPictureHeader.pic_height_in_mb
.L158:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r5	@, pCtx
	mov	r2, r6	@, tmp476
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L199	@,
.L152:
	ldr	r2, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r1, r6	@, tmp476
	mov	r0, r7	@, pPictureHeader
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	movwne	r2, #28444	@ tmp345,
	moveq	r9, #23	@ lastpic_vol_mode,
	ldrne	r9, [r5, r2]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r6, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r0, r5	@, pCtx
	cmp	r6, #0	@ TmpPictureHeader.prediction_type,
	movwne	r6, #28444	@ tmp351,
	strne	r9, [r5, r6]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L163	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L189:
	movw	r3, #28552	@ tmp220,
	mov	r0, #1	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36064, pPacket
	b	.L140	@
.L191:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36064, <variable>.VirAddr
	b	.L140	@
.L195:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-216]	@,
	mov	r0, r3	@ D.36064, tmp286
	b	.L140	@
.L155:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L199:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L197:
	movw	r0, #28484	@ tmp305,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r1, lr	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L151	@,
	b	.L152	@
.L198:
	ldrb	lr, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	lr, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L158	@,
.L159:
	mov	r0, r9	@, D.36179
	bl	ResetVoQueue	@
	b	.L188	@
.L163:
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36209,
	beq	.L200	@,
	movw	r7, #28644	@,
	movw	r9, #57728	@ tmp356,
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L165	@,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	mvn	r2, #0	@ tmp365,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r3, #0	@,
	strd	r2, [lr, #56]	@ tmp365, <variable>.pstExtraData,
	ldrd	r2, [r7, #16]	@, pImg,
	strd	r2, [fp, #-204]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	ldrd	r6, [fp, #-204]	@,,
	strd	r6, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #28644	@,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #28640	@ tmp375,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [r7, #440]	@ D.36228, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36228,
	beq	.L166	@,
	ldr	r1, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L166	@,
	ldr	ip, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L166	@,
	ldr	r9, [r0, #440]	@ D.36235, <variable>.pstDecodeFs
	sub	ip, fp, #92	@ tmp474,,
	mov	r6, #0	@ tmp384,
	mov	r0, #13	@,
	cmp	r9, #0	@ D.36235,
	ldrne	lr, [r9, #12]	@ iftmp.427, <variable>.PhyAddr
	sub	r9, fp, #72	@ tmp475,,
	ldreq	lr, [r3, #12]	@ iftmp.427, <variable>.PhyAddr
	add	r1, r9, #4	@ tmp483, tmp475,
	add	r3, ip, #4	@ tmp486, tmp474,
	str	lr, [r5, #132]	@ iftmp.427, <variable>.Divx3DecParam.FwdRefPhyAddr
	str	r6, [r1], #4	@ tmp384, slice_start_mbn
	str	r6, [r3], #4	@ tmp384, slice_end_mbn
	str	r6, [r1], #4	@ tmp384, slice_start_mbn
	str	r6, [r3], #4	@ tmp384, slice_end_mbn
	str	r6, [r1], #4	@ tmp384, slice_start_mbn
	str	r6, [r3], #4	@ tmp384, slice_end_mbn
	str	r6, [r1, #0]	@ tmp384, slice_start_mbn
	movw	r1, #:lower16:.LC35	@,
	str	r6, [r3, #0]	@ tmp384, slice_end_mbn
	movt	r1, #:upper16:.LC35	@,
	str	r6, [fp, #-72]	@ tmp384, slice_start_mbn
	str	r6, [fp, #-92]	@ tmp384, slice_end_mbn
	ldr	r3, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r5, #156]	@, <variable>.Divx3DecParam.ColPmvPhyAddr
	str	r2, [fp, #-212]	@, %sfp
	ldr	r2, [r3, #12]	@ D.36241, <variable>.PhyAddr
	str	r2, [r5, #136]	@ D.36241, <variable>.Divx3DecParam.CurPicPhyAddr
	ldr	r3, [r7, #452]	@, <variable>.PmvAddr
	str	r3, [fp, #-208]	@, %sfp
	str	r3, [r5, #152]	@, <variable>.Divx3DecParam.CurrPmvPhyAddr
	ldr	r3, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@, <variable>.PhyAddr
	str	lr, [sp, #0]	@ iftmp.427,
	ldr	lr, [fp, #-208]	@, %sfp
	str	r3, [fp, #-204]	@, %sfp
	str	lr, [sp, #4]	@,
	str	r3, [r5, #140]	@, <variable>.Divx3DecParam.DispFramePhyAddr
	ldr	lr, [fp, #-212]	@, %sfp
	str	ip, [fp, #-216]	@,
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	r2, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	mov	r0, sl	@, pBs
	ldr	r1, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r5, #144]	@ <variable>.Stride, <variable>.Divx3DecParam.DDRStride
	bl	BsResidBits	@
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	bic	ip, r3, #15	@ tmp402, <variable>.PhyAddr,
	str	ip, [r5, #104]	@ tmp402, <variable>.Divx3DecParam.StreamBaseAddr
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r1, [fp, #-192]	@, %sfp
	and	r3, r2, #15	@ tmp403, <variable>.PhyAddr,
	add	ip, r1, r3, asl #3	@, CurrPicBitOffset,, tmp403,
	rsb	r3, r0, ip	@ CurrPicBitOffset.951,, CurrPicBitOffset
	mov	r0, sl	@, pBs
	and	r2, r3, #127	@ tmp408, CurrPicBitOffset.951,
	str	r2, [r5, #116]	@ tmp408, <variable>.Divx3DecParam.StreamBitOffset
	mov	ip, r3, lsr #7	@ tmp406, CurrPicBitOffset.951,
	mov	r1, ip, asl #4	@ tmp407, tmp406,
	str	r1, [r5, #108]	@ tmp407, <variable>.Divx3DecParam.StreamPhyAddr
	bl	BsResidBits	@
	movw	r2, #28444	@ tmp412,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	str	r6, [r5, #112]	@ tmp384, <variable>.Divx3DecParam.StreamPhyAddr
	cmp	r3, #24	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	str	r6, [r5, #120]	@ tmp384, <variable>.Divx3DecParam.StreamBitOffset
	str	r6, [r5, #128]	@ tmp384, <variable>.Divx3DecParam.StreamLength
	str	r0, [r5, #124]	@, <variable>.Divx3DecParam.StreamLength
	ldr	ip, [fp, #-216]	@,
	beq	.L173	@,
	cmp	r3, #26	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L174	@,
	cmp	r3, #23	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L201	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36064, tmp384
	b	.L140	@
.L196:
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36064, <variable>.CodecInfo.RefNum
	b	.L140	@
.L200:
	movw	ip, #28552	@ tmp354,
	movw	r1, #:lower16:.LC31	@,
	ldr	r2, [r5, ip]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36064, D.36209
	b	.L140	@
.L166:
	movw	r3, #57728	@ tmp380,
	movw	r0, #28644	@ tmp381,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36064,
	b	.L140	@
.L173:
	movw	r4, #28484	@ tmp417,
	movw	r2, #28480	@ tmp420,
	ldr	r1, [r5, r4]	@ temp.952, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r0, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	r1, #1	@ temp.952,
	str	r6, [fp, #-72]	@ tmp384, slice_start_mbn
	mov	r3, r1, lsr #1	@ tmp419, temp.952,
	mul	r7, r0, r3	@ D.36267, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp419
	sub	r3, r7, #1	@ prephitmp.879, D.36267,
	str	r3, [fp, #-92]	@ prephitmp.879, slice_end_mbn
	mov	r1, r7, asl #1	@ D.36271, D.36267,
	str	r7, [fp, #-68]	@ D.36267, slice_start_mbn
	sub	r6, r1, #1	@ tmp422, D.36271,
	moveq	r1, #2	@ total_slice_num,
	str	r6, [fp, #-88]	@ tmp422, slice_end_mbn
	beq	.L175	@,
	movw	r7, #28496	@ tmp424,
	str	r1, [fp, #-64]	@ D.36271, slice_start_mbn
	ldr	r6, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r1, #3	@ total_slice_num,
	sub	sl, r6, #1	@ tmp426, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	sl, [fp, #-84]	@ tmp426, slice_end_mbn
.L175:
	movw	r4, #28484	@ tmp445,
	movw	r7, #28436	@ tmp447,
	ldr	r0, [r5, r4]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	movw	sl, #28432	@ tmp441,
	ldr	r4, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.quantizer
	movw	r7, #28440	@ tmp449,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.rounding_type
	add	r2, sl, #48	@ tmp443, tmp443,
	ldr	r6, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	tst	r1, #1	@ total_slice_num,
	ldr	sl, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r2, #0	@ ivtmp.899,
	str	r7, [r5, #28]	@, <variable>.Divx3DecParam.rounding_type
	movw	r7, #28448	@ tmp451,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.has_skips
	str	r0, [r5, #20]	@, <variable>.Divx3DecParam.PicHeightInMb
	mov	r0, r5	@ ivtmp.905, pCtx
	str	r4, [r5, #24]	@, <variable>.Divx3DecParam.quantizer
	mov	r4, r2	@ slice_num, ivtmp.899
	str	r7, [r5, #32]	@, <variable>.Divx3DecParam.has_skips
	movw	r7, #28456	@ tmp453,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	str	r6, [r5, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	sl, [r5, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r7, [r5, #36]	@, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	movw	r7, #28460	@ tmp455,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	str	r1, [r5, #60]	@ total_slice_num, <variable>.Divx3DecParam.TotalSliceNum
	str	r7, [r5, #40]	@, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	movw	r7, #28464	@ tmp457,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	r7, [r5, #44]	@, <variable>.Divx3DecParam.alternative_I_DC_DCT
	movw	r7, #28468	@ tmp459,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	str	r7, [r5, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	movw	r7, #28472	@ tmp461,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	str	r7, [r5, #52]	@, <variable>.Divx3DecParam.alternative_P_DC_DCT
	movw	r7, #28476	@ tmp463,
	ldr	r7, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r7, [r5, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	bne	.L179	@,
	ldr	r6, [r9, #0]	@ tmp494, slice_start_mbn
	cmp	r1, #1	@ total_slice_num,
	mov	r2, #4	@ ivtmp.899,
	str	r3, [r5, #84]	@ prephitmp.879, <variable>.Divx3DecParam.slice_end_mbn
	mov	r4, #1	@ slice_num,
	add	r0, r5, r2	@ ivtmp.905, pCtx,
	str	r6, [r5, #64]	@ tmp494, <variable>.Divx3DecParam.slice_start_mbn
	ldrhi	r3, [ip, r2]	@ prephitmp.879, slice_end_mbn
	bls	.L178	@,
.L179:
	ldr	r6, [r9, r2]	@ tmp466, slice_start_mbn
	add	r4, r4, #1	@ tmp480, slice_num,
	cmp	r1, r4	@ total_slice_num, tmp480
	str	r3, [r0, #84]	@ prephitmp.879, <variable>.Divx3DecParam.slice_end_mbn
	add	r3, r2, #4	@ tmp481, ivtmp.899,
	add	r4, r4, #1	@ slice_num, tmp480,
	str	r6, [r0, #64]	@ tmp466, <variable>.Divx3DecParam.slice_start_mbn
	add	r2, r3, #4	@ ivtmp.899, tmp481,
	add	r6, r0, #4	@ tmp482, ivtmp.905,
	bls	.L178	@,
	ldr	r7, [ip, r3]	@ prephitmp.879, slice_end_mbn
	add	r0, r6, #4	@ ivtmp.905, tmp482,
	ldr	r3, [r9, r3]	@ tmp493, slice_start_mbn
	str	r7, [r6, #84]	@ prephitmp.879, <variable>.Divx3DecParam.slice_end_mbn
	str	r3, [r6, #64]	@ tmp493, <variable>.Divx3DecParam.slice_start_mbn
	ldr	r3, [ip, r2]	@ prephitmp.879, slice_end_mbn
	b	.L179	@
.L178:
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@ D.36064,
	str	r8, [r5, #4]	@ pDivx3DecParam, <variable>.pDivx3DecParam
	ldr	ip, [r1, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r5, #160]	@ <variable>.s32Compress_en, <variable>.Divx3DecParam.Compress_en
	b	.L140	@
.L201:
	movw	sl, #28496	@ tmp415,
	str	r6, [fp, #-72]	@ tmp384, slice_start_mbn
	ldr	r4, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r1, #1	@ total_slice_num,
	sub	r3, r4, #1	@ prephitmp.879, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r3, [fp, #-92]	@ prephitmp.879, slice_end_mbn
	b	.L175	@
.L174:
	movw	sl, #28484	@ tmp427,
	movw	r4, #28480	@ tmp430,
	ldr	r0, [r5, sl]	@ temp.955, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r1, #3	@ tmp433,
	ldr	r2, [r5, r4]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	r0, #3	@ temp.955,
	str	r6, [fp, #-72]	@ tmp384, slice_start_mbn
	mov	r3, r0, lsr #2	@ tmp429, temp.955,
	mul	r7, r2, r3	@ temp.958, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp429
	sub	r3, r7, #1	@ prephitmp.879, temp.958,
	str	r3, [fp, #-92]	@ prephitmp.879, slice_end_mbn
	mul	r0, r1, r7	@ D.36280, tmp433, temp.958
	mov	r1, r7, asl #2	@ D.36284, temp.958,
	sub	r2, r1, #1	@ tmp435, D.36284,
	mov	r6, r7, asl #1	@ temp.959, temp.958,
	str	r2, [fp, #-80]	@ tmp435, slice_end_mbn
	movwne	r2, #28496	@ tmp437,
	strne	r1, [fp, #-56]	@ D.36284, slice_start_mbn
	sub	sl, r6, #1	@ tmp432, temp.959,
	str	r6, [fp, #-64]	@ temp.959, slice_start_mbn
	sub	r4, r0, #1	@ tmp434, D.36280,
	str	r7, [fp, #-68]	@ temp.958, slice_start_mbn
	moveq	r1, #4	@ total_slice_num,
	str	sl, [fp, #-88]	@ tmp432, slice_end_mbn
	movne	r1, #5	@ total_slice_num,
	str	r4, [fp, #-84]	@ tmp434, slice_end_mbn
	str	r0, [fp, #-60]	@ D.36280, slice_start_mbn
	ldrne	r2, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	subne	r2, r2, #1	@ tmp439, <variable>.CodecInfo.PictureHeader.total_mbs,
	strne	r2, [fp, #-76]	@ tmp439, slice_end_mbn
	b	.L175	@
.L165:
	mov	r0, r6	@, ret
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36064, pImg
	b	.L140	@
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
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
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC8:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC9:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC10:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC11:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC12:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC13:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC14:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC15:
	.ascii	"divx3 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC16:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC17:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC18:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC19:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC20:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC21:
	.ascii	"ERROR: frm %d, Invalid packet PhyAddr!\012\000"
.LC22:
	.ascii	"ERROR: frm %d, Invalid packet VirAddr!\012\000"
.LC23:
	.ascii	"ERROR: frm %d, Invalid packet len!\012\000"
.LC24:
	.ascii	"ERROR: frm %d, Invalid WxH: %dx%d!\012\000"
.LC25:
	.ascii	"Divx3_GetPictureHeader Error!\012\000"
	.space	1
.LC26:
	.ascii	"Can't decode from P frame!\012\000"
.LC27:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC28:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC29:
	.ascii	"Divx3_ArrangeVHBMem err\012\000"
	.space	3
.LC30:
	.ascii	"Divx3_DecodeDecide err\012\000"
.LC31:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC32:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC33:
	.ascii	"FSP_GetFsImagePtr Error!\012\000"
	.space	2
.LC34:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC35:
	.ascii	"dec addr: cur,cur2d,fwd,currpmv,colpmv = %p,%p,%p,%"
	.ascii	"p,%p,%p\012\000"
.LC36:
	.ascii	"vol_mode Error!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
