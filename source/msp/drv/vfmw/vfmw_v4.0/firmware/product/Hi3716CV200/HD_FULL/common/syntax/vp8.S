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
	.file	"vp8.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vp8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.vp8.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fno-pic -fverbose-asm
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
	.global	VP8DEC_Destroy
	.type	VP8DEC_Destroy, %function
VP8DEC_Destroy:
	.fnstart
.LFB1365:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP8DEC_Destroy, .-VP8DEC_Destroy
	.align	2
	.global	VP8_setup_version
	.type	VP8_setup_version, %function
VP8_setup_version:
	.fnstart
.LFB1366:
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
	ldr	r3, [r0, #64]	@ <variable>.version, <variable>.version
	cmp	r3, #3	@ <variable>.version,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.version
	b	.L4	@
.L9:
	.word	.L4
	.word	.L6
	.word	.L7
	.word	.L8
.L4:
	mov	ip, #0	@ tmp151,
	mov	r2, #0	@ tmp155,
	str	ip, [r0, #88]	@ tmp151, <variable>.full_pixel
	str	ip, [r0, #76]	@ tmp151, <variable>.no_lpf
	str	ip, [r0, #80]	@ tmp151, <variable>.simpler_lpf
	str	ip, [r0, #84]	@ tmp151, <variable>.use_bilinear_mc_filter
	str	r2, [r0, #92]	@ tmp155, <variable>.mcomp_filter_type
	ldmfd	sp, {fp, sp, pc}	@
.L7:
	mov	r3, #1	@ tmp143,
	mov	ip, #0	@ tmp144,
	str	r3, [r0, #84]	@ tmp143, <variable>.use_bilinear_mc_filter
	str	r3, [r0, #76]	@ tmp143, <variable>.no_lpf
	mov	r3, #1	@ tmp156,
	str	ip, [r0, #88]	@ tmp144, <variable>.full_pixel
	str	ip, [r0, #80]	@ tmp144, <variable>.simpler_lpf
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	ldmfd	sp, {fp, sp, pc}	@
.L6:
	mov	r2, #0	@ tmp139,
	mov	r1, #1	@ tmp140,
	mov	r3, #1	@ tmp156,
	str	r2, [r0, #88]	@ tmp139, <variable>.full_pixel
	str	r2, [r0, #76]	@ tmp139, <variable>.no_lpf
	str	r1, [r0, #84]	@ tmp140, <variable>.use_bilinear_mc_filter
	str	r1, [r0, #80]	@ tmp140, <variable>.simpler_lpf
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	ldmfd	sp, {fp, sp, pc}	@
.L8:
	mov	r1, #1	@ tmp147,
	mov	r3, #1	@ tmp156,
	str	r1, [r0, #88]	@ tmp147, <variable>.full_pixel
	str	r1, [r0, #76]	@ tmp147, <variable>.no_lpf
	str	r1, [r0, #80]	@ tmp147, <variable>.simpler_lpf
	str	r1, [r0, #84]	@ tmp147, <variable>.use_bilinear_mc_filter
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP8_setup_version, .-VP8_setup_version
	.align	2
	.global	VP8DEC_GetImageBuffer
	.type	VP8DEC_GetImageBuffer, %function
VP8DEC_GetImageBuffer:
	.fnstart
.LFB1380:
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
	movw	r5, #8520	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36733,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36736,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #8128	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36736,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VP8DEC_GetImageBuffer, .-VP8DEC_GetImageBuffer
	.align	2
	.global	VP8DEC_GetRemainImg
	.type	VP8DEC_GetRemainImg, %function
VP8DEC_GetRemainImg:
	.fnstart
.LFB1379:
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
	add	r0, r0, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	bl	GetVoLastImageID	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP8DEC_GetRemainImg, .-VP8DEC_GetRemainImg
	.align	2
	.global	VP8DEC_RecycleImage
	.type	VP8DEC_RecycleImage, %function
VP8DEC_RecycleImage:
	.fnstart
.LFB1378:
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
	movw	r4, #8520	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L23	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L23:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP8DEC_RecycleImage, .-VP8DEC_RecycleImage
	.align	2
	.global	VP8_DecodeDecide
	.type	VP8_DecodeDecide, %function
VP8_DecodeDecide:
	.fnstart
.LFB1373:
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
	movw	r3, #8120	@ tmp143,
	ldr	r4, [r0, r3]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	beq	.L42	@,
	movw	r2, #8112	@ tmp146,
	ldr	r1, [r0, r2]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	sub	r0, r1, #2	@ tmp147, <variable>.Vp8CodecInfo.UsedDecMode,
	cmp	r0, #1	@ tmp147,
	bls	.L28	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.613, <variable>.s32DecMode
.L29:
	movw	r0, #8112	@ tmp185,
	str	r2, [r5, r0]	@ prephitmp.613, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #4	@ prephitmp.613,
	ldrls	pc, [pc, r2, asl #2]	@ prephitmp.613
	b	.L30	@
.L34:
	.word	.L31
	.word	.L31
	.word	.L32
	.word	.L41
	.word	.L31
.L32:
	movw	lr, #8156	@ tmp186,
	ldr	r2, [r5, lr]	@ D.36126, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ D.36126,
	bne	.L43	@,
.L35:
	movw	ip, #8520	@ tmp202,
	movw	r4, #8144	@ tmp204,
	ldr	r1, [r5, r4]	@, <variable>.Vp8CodecInfo.LastFsID
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L44	@,
	movw	r0, #8156	@ tmp197,
	ldr	r2, [r5, r0]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L36	@,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #180]	@ D.36152, <variable>.error_level
	ldr	r3, [lr, #0]	@ D.36153, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.36152, D.36153
	bls	.L36	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L41:
	mov	r0, #0	@ D.36106,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L28:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.613, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.613,
	cmpne	r2, #1	@, prephitmp.613,
	bhi	.L29	@,
	movw	r4, #8520	@ tmp159,
	movw	r8, #8136	@ tmp161,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r6, #8140	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r8]	@, <variable>.Vp8CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	movw	r7, #8144	@ tmp169,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r6]	@, <variable>.Vp8CodecInfo.AltFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	ldr	r1, [r5, r7]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r4, #0	@ tmp172,
	str	r4, [r5, r8]	@ tmp172, <variable>.Vp8CodecInfo.GoldenFsID
	str	r4, [r5, r6]	@ tmp172, <variable>.Vp8CodecInfo.AltFsID
	str	r4, [r5, r7]	@ tmp172, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #8116	@ tmp182,
	str	r4, [r5, r2]	@ tmp172, <variable>.Vp8CodecInfo.RefNum
	str	r0, [r5, r8]	@ D.36124, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r5, r7]	@ D.36124, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r5, r6]	@ D.36124, <variable>.Vp8CodecInfo.AltFsID
	ldr	r2, [r1, #8]	@ prephitmp.613, <variable>.s32DecMode
	b	.L29	@
.L42:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36106, <variable>.Vp8CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L30:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36106,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L31:
	movw	r3, #8156	@ tmp188,
	ldr	ip, [r5, r3]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L35	@,
	movw	r1, #8116	@ tmp190,
	ldr	r4, [r5, r1]	@ <variable>.Vp8CodecInfo.RefNum, <variable>.Vp8CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.Vp8CodecInfo.RefNum,
	bne	.L35	@,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r2, #:upper16:.LC4	@,
	mov	r3, r4	@, <variable>.Vp8CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36106, <variable>.Vp8CodecInfo.RefNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L36:
	mov	r0, #1	@ D.36106,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L43:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36106,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L44:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #1433	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36106, pFwdImg
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VP8_DecodeDecide, .-VP8_DecodeDecide
	.align	2
	.global	VP8_Update_PictHeader
	.type	VP8_Update_PictHeader, %function
VP8_Update_PictHeader:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrb	r3, [r0, #2505]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_entropy_probs, <variable>.NewHeaderInfo.refresh_entropy_probs
	mov	r4, r0	@ pVp8CodecInfo, pVp8CodecInfo
	cmp	r3, #0	@ <variable>.NewHeaderInfo.refresh_entropy_probs,
	bne	.L46	@,
	add	r0, r0, #3760	@, pVp8CodecInfo,
	add	r1, r4, #2608	@, pVp8CodecInfo,
	add	r0, r0, #1	@,,
	add	r1, r1, #4	@,,
	movw	r2, #1149	@,
	bl	memcpy	@
.L46:
	add	lr, r4, #2448	@, pVp8CodecInfo,
	movw	r2, #2452	@,
	add	r1, lr, #12	@,,
	add	r0, r4, #8	@, pVp8CodecInfo,
	bl	memcpy	@
	ldr	ip, [r4, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	ldr	r0, [r4, #2596]	@ <variable>.NewHeaderInfo.filter_type, <variable>.NewHeaderInfo.filter_type
	movw	r2, #4964	@ tmp150,
	ldrb	r1, [r4, #2471]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.sharpness_level, <variable>.NewHeaderInfo.sharpness_level
	ldrb	r3, [r4, #2500]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_last_frame, <variable>.NewHeaderInfo.refresh_last_frame
	str	ip, [r4, r2]	@ <variable>.NewHeaderInfo.frame_type, <variable>.LastFrameType
	mov	ip, #4928	@ tmp152,
	movw	r2, #4932	@ tmp154,
	str	r0, [r4, ip]	@ <variable>.NewHeaderInfo.filter_type, <variable>.LastFilterType
	str	r1, [r4, r2]	@ <variable>.NewHeaderInfo.sharpness_level, <variable>.LastSharpnessLevel
	strb	r3, [r4, #0]	@ <variable>.NewHeaderInfo.refresh_last_frame, <variable>.refresh_last_frame
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VP8_Update_PictHeader, .-VP8_Update_PictHeader
	.align	2
	.global	VP8_init_frame
	.type	VP8_init_frame, %function
VP8_init_frame:
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
	ldr	r5, [r0, #56]	@ <variable>.frame_type, <variable>.frame_type
	mov	r4, r0	@ VP8_PictureHeader_S, VP8_PictureHeader_S
	cmp	r5, #0	@ <variable>.frame_type,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r2, r0, #2368	@, VP8_PictureHeader_S,
	ldr	r1, .L51	@,
	add	r0, r2, #6	@,,
	add	r6, r4, #1312	@ tmp144, VP8_PictureHeader_S,
	mov	r2, #38	@,
	bl	memcpy	@
	ldr	r1, .L51+4	@,
	mov	r2, #1056	@,
	add	r0, r6, #6	@, tmp144,
	bl	memcpy	@
	add	r0, r4, #1296	@, VP8_PictureHeader_S,
	mov	r2, #4	@,
	add	r0, r0, #14	@,,
	movw	r1, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LANCHOR1	@,
	bl	memcpy	@
	mov	r2, #3	@,
	ldr	r1, .L51+8	@,
	add	r0, r6, #2	@, tmp144,
	bl	memcpy	@
	add	r0, r4, #22	@, VP8_PictureHeader_S,
	mov	r1, #8	@,
	bl	__memzero	@
	add	r0, r4, #32	@, VP8_PictureHeader_S,
	mov	r1, #4	@,
	strb	r5, [r4, #17]	@ <variable>.frame_type, <variable>.mb_segement_abs_delta
	bl	__memzero	@
	add	r0, r4, #36	@, VP8_PictureHeader_S,
	mov	r1, #4	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp171,
	strb	r5, [r4, #49]	@ <variable>.frame_type, <variable>.ref_frame_sign_bias
	strb	r5, [r4, #43]	@ <variable>.frame_type, <variable>.copy_buffer_to_gf
	strb	r3, [r4, #42]	@ tmp171, <variable>.refresh_alt_ref_frame
	strb	r3, [r4, #41]	@ tmp171, <variable>.refresh_golden_frame
	strb	r5, [r4, #44]	@ <variable>.frame_type, <variable>.copy_buffer_to_arf
	strb	r5, [r4, #48]	@ <variable>.frame_type, <variable>.ref_frame_sign_bias
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L52:
	.align	2
.L51:
	.word	.LANCHOR0+20
	.word	.LANCHOR0+60
	.word	.LANCHOR1+4
	.fnend
	.size	VP8_init_frame, .-VP8_init_frame
	.align	2
	.global	VP8_Set_DecParam
	.type	VP8_Set_DecParam, %function
VP8_Set_DecParam:
	.fnstart
.LFB1375:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #116
	sub	sp, sp, #116	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #8	@, pCtx,
	str	r0, [fp, #-120]	@, %sfp
	ldr	r5, [r4, #3164]	@, <variable>.pVp8StreamParam
	movw	r1, #3144	@,
	movw	r6, #5712	@ tmp274,
	movw	r9, #8160	@ tmp276,
	movw	sl, #5752	@ tmp278,
	movw	r8, #5756	@ tmp280,
	str	r5, [fp, #-136]	@, %sfp
	bl	__memzero	@
	ldr	ip, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type
	movw	r6, #5744	@ tmp284,
	ldr	r0, [r4, r9]	@, <variable>.Vp8CodecInfo.LastFrameType
	movw	r7, #5740	@ tmp282,
	ldr	r9, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.full_pixel
	movw	lr, #5709	@ tmp286,
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r6, #5670	@ tmp295,
	ldr	r2, [r4, r8]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	movw	r8, #5728	@ tmp289,
	ldr	r3, [r4, r7]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.use_bilinear_mc_filter
	movw	r7, #5669	@ tmp292,
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false
	movw	lr, #5673	@ tmp301,
	str	r9, [r4, #2816]	@, <variable>.Vp8DecParam.full_pixel
	movw	r9, #5671	@ tmp298,
	str	ip, [r4, #2804]	@, <variable>.Vp8DecParam.frame_type
	movw	ip, #5661	@ tmp325,
	str	r0, [r4, #2808]	@, <variable>.Vp8DecParam.last_frame_type
	movw	r0, #5662	@ tmp333,
	str	r1, [r4, #2792]	@, <variable>.Vp8DecParam.pic_width_in_mb
	movw	r1, #5663	@ tmp341,
	str	r2, [r4, #2796]	@, <variable>.Vp8DecParam.pic_height_in_mb
	movw	r2, #5664	@ tmp349,
	str	r3, [r4, #2812]	@, <variable>.Vp8DecParam.use_bilinear_mc_filter
	movw	r3, #5665	@ tmp357,
	str	sl, [fp, #-112]	@, %sfp
	movw	r5, #8520	@ tmp384,
	ldr	sl, [r4, r8]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled, <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled
	ldrb	r6, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map, <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segement_abs_delta
	movw	lr, #5658	@ tmp304,
	str	r9, [fp, #-140]	@, %sfp
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_ref_lf_delta_enabled
	movw	lr, #5792	@ tmp307,
	str	r9, [fp, #-144]	@, %sfp
	ldr	r9, [r4, lr]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.filter_type
	movw	lr, #5666	@ tmp310,
	str	r9, [fp, #-148]	@, %sfp
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.filter_level
	movw	lr, #5667	@ tmp313,
	str	r9, [fp, #-152]	@, %sfp
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.sharpness_level
	movw	lr, #8124	@ tmp316,
	str	r9, [fp, #-156]	@, %sfp
	ldr	r9, [fp, #-112]	@, %sfp
	ldr	lr, [r4, lr]	@ <variable>.Vp8CodecInfo.LastFilterType, <variable>.Vp8CodecInfo.LastFilterType
	strb	sl, [r4, #2761]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip, <variable>.Vp8DecParam.mb_no_coeff_skip
	strb	r9, [r4, #2760]	@, <variable>.Vp8DecParam.prob_skip_false
	strb	r8, [r4, #2762]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8DecParam.multi_token_partition
	strb	r7, [r4, #2763]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled, <variable>.Vp8DecParam.segmentation_enable
	strb	r6, [r4, #2764]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map, <variable>.Vp8DecParam.update_mb_segmentation_map
	ldr	r9, [fp, #-140]	@, %sfp
	strb	r9, [r4, #2765]	@, <variable>.Vp8DecParam.mb_segmentation_abs_delta
	mov	r9, #8128	@ tmp319,
	ldr	sl, [fp, #-144]	@, %sfp
	strb	sl, [r4, #2766]	@, <variable>.Vp8DecParam.mode_ref_lf_delta_enabled
	movw	sl, #5659	@ tmp322,
	ldr	r8, [fp, #-148]	@, %sfp
	strb	r8, [r4, #2768]	@, <variable>.Vp8DecParam.filter_type
	ldr	r6, [fp, #-152]	@, %sfp
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.base_qindex
	strb	r6, [r4, #2770]	@, <variable>.Vp8DecParam.filter_level
	ldr	r7, [fp, #-156]	@, %sfp
	strb	lr, [r4, #2769]	@ <variable>.Vp8CodecInfo.LastFilterType, <variable>.Vp8DecParam.last_filter_type
	movw	lr, #5706	@ tmp365,
	strb	r7, [r4, #2771]	@, <variable>.Vp8DecParam.sharpness_level
	ldr	r7, [r4, r9]	@ <variable>.Vp8CodecInfo.LastSharpnessLevel, <variable>.Vp8CodecInfo.LastSharpnessLevel
	movw	r9, #5707	@ tmp368,
	str	r8, [fp, #-140]	@, %sfp
	movw	r8, #5708	@ tmp371,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra
	str	r6, [fp, #-116]	@, %sfp
	movw	r6, #5800	@ tmp374,
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last
	str	sl, [fp, #-124]	@, %sfp
	movw	sl, #5796	@ tmp376,
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf
	str	lr, [fp, #-128]	@, %sfp
	ldr	r9, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.value
	ldr	r8, [r4, sl]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.range
	str	r9, [r4, #2788]	@, <variable>.Vp8DecParam.value
	str	r8, [fp, #-132]	@, %sfp
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	ldrb	r9, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	mov	lr, lr, lsr #7	@ tmp327, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q,
	str	r6, [fp, #-112]	@, %sfp
	mov	r9, r9, lsr #7	@ tmp335, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q,
	ldrsb	ip, [r4, ip]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	mov	sl, sl, lsr #7	@ tmp343, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q,
	ldrsb	r0, [r4, r0]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	mov	r8, r8, lsr #7	@ tmp351, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q,
	ldrsb	r1, [r4, r1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q,
	ldrsb	r2, [r4, r2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	rsblt	ip, ip, #0	@ tmp331, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	ldrsb	r3, [r4, r3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	cmp	r0, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q,
	strb	r7, [r4, #2772]	@ <variable>.Vp8CodecInfo.LastSharpnessLevel, <variable>.Vp8DecParam.last_sharpness_level
	rsblt	r0, r0, #0	@ tmp339, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	ldr	r7, [fp, #-140]	@, %sfp
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q,
	strb	lr, [r4, #2773]	@ tmp327, <variable>.Vp8DecParam.y1dc_sign
	rsblt	r1, r1, #0	@ tmp347, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q,
	strb	r7, [r4, #2767]	@, <variable>.Vp8DecParam.base_qindex
	rsblt	r2, r2, #0	@ tmp355, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	ldr	r6, [fp, #-112]	@, %sfp
	cmp	r3, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q,
	rsblt	r3, r3, #0	@ tmp363, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	strb	ip, [r4, #2774]	@ tmp331, <variable>.Vp8DecParam.y1dc_absdelta_q
	strb	r0, [r4, #2776]	@ tmp339, <variable>.Vp8DecParam.y2dc_absdelta_q
	movw	ip, #5804	@ tmp379,
	strb	r1, [r4, #2778]	@ tmp347, <variable>.Vp8DecParam.y2ac_absdelta_q
	mov	r7, r6, lsr #7	@ tmp359,,
	strb	r8, [r4, #2779]	@ tmp351, <variable>.Vp8DecParam.uvdc_sign
	movw	r8, #8132	@ tmp382,
	strb	r7, [r4, #2781]	@ tmp359, <variable>.Vp8DecParam.uvac_sign
	movw	r1, #8148	@ tmp386,
	strb	r9, [r4, #2775]	@ tmp335, <variable>.Vp8DecParam.y2dc_sign
	movw	r7, #8136	@ tmp390,
	strb	sl, [r4, #2777]	@ tmp343, <variable>.Vp8DecParam.y2ac_sign
	strb	r2, [r4, #2780]	@ tmp355, <variable>.Vp8DecParam.uvdc_absdelta_q
	strb	r3, [r4, #2782]	@ tmp363, <variable>.Vp8DecParam.uvac_absdelta_q
	ldr	r9, [fp, #-116]	@, %sfp
	ldr	r6, [r4, ip]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count
	ldr	r0, [r4, r8]	@ <variable>.Vp8CodecInfo.SegIdAddr, <variable>.Vp8CodecInfo.SegIdAddr
	strb	r9, [r4, #2783]	@, <variable>.Vp8DecParam.prob_intra
	ldr	r2, [fp, #-124]	@, %sfp
	ldr	r1, [r4, r1]	@, <variable>.Vp8CodecInfo.CurFsID
	strb	r2, [r4, #2784]	@, <variable>.Vp8DecParam.prob_last
	ldr	r3, [fp, #-128]	@, %sfp
	strb	r3, [r4, #2785]	@, <variable>.Vp8DecParam.prob_gf
	ldr	lr, [fp, #-132]	@, %sfp
	strb	r6, [r4, #2787]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count, <variable>.Vp8DecParam.count
	str	r0, [r4, #3144]	@ <variable>.Vp8CodecInfo.SegIdAddr, <variable>.Vp8DecParam.SegIdAddr
	strb	lr, [r4, #2786]	@, <variable>.Vp8DecParam.range
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #8140	@ tmp394,
	ldr	r1, [r4, r2]	@, <variable>.Vp8CodecInfo.AltFsID
	mov	r7, r0	@ pGolden,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #8144	@ tmp398,
	ldr	r1, [r4, r3]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r8, r0	@ pAlt,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r7, #0	@, pGolden,
	beq	.L54	@,
	cmp	r8, #0	@ pAlt,
	cmpne	r0, #0	@, pLast,
	beq	.L54	@,
	ldr	r5, [r6, #472]	@ D.36351, <variable>.pstDecodeFs
	cmp	r5, #0	@ D.36351,
	beq	.L106	@,
	ldr	r2, [r5, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	ip, #5678	@ tmp423,
	str	r2, [r4, #3124]	@ <variable>.PhyAddr, <variable>.Vp8DecParam.image_curr_rcn_addr
	movw	r2, #5688	@ tmp427,
	ldr	r9, [r6, #484]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrsb	r2, [r4, r2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	str	r9, [r4, #3140]	@ <variable>.PmvAddr, <variable>.Vp8DecParam.CurrPmvAddr
	movw	r9, #5692	@ tmp429,
	ldr	r1, [r7, #472]	@ D.36360, <variable>.pstDecodeFs
	cmp	r1, #0	@ D.36360,
	ldreq	r1, [r6, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r5, [r1, #12]	@ iftmp.453, <variable>.PhyAddr
	ldrsb	r1, [r4, r9]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	movw	r9, #5689	@ tmp437,
	str	r5, [r4, #3132]	@ iftmp.453, <variable>.Vp8DecParam.image_gld_ref_addr
	movw	r5, #5702	@ tmp431,
	ldr	r7, [r8, #472]	@ D.36366, <variable>.pstDecodeFs
	cmp	r7, #0	@ D.36366,
	ldreq	r7, [r6, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r8, [r7, #12]	@ iftmp.454, <variable>.PhyAddr
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	movw	r5, #5693	@ tmp439,
	str	r8, [r4, #3128]	@ iftmp.454, <variable>.Vp8DecParam.image_alt_ref_addr
	movw	r8, #5679	@ tmp433,
	ldr	sl, [r0, #472]	@ D.36372, <variable>.pstDecodeFs
	movw	r0, #5682	@ tmp425,
	cmp	sl, #0	@ D.36372,
	ldreq	sl, [r6, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [sl, #12]	@ iftmp.455, <variable>.PhyAddr
	ldrsb	sl, [r4, r8]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r8, #5703	@ tmp441,
	str	r3, [r4, #3136]	@ iftmp.455, <variable>.Vp8DecParam.image_last_ref_addr
	ldr	lr, [r6, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r6, #5683	@ tmp435,
	ldr	r3, [lr, #20]	@ D.36379, <variable>.Stride
	ldrsb	lr, [r4, ip]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	ip, [r4, r0]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	r0, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r6, #5680	@ tmp443,
	str	r1, [r4, #3092]	@, <variable>.Vp8DecParam.mode_lf_delta
	str	r7, [r4, #3108]	@, <variable>.Vp8DecParam.ref_frame_sign_bias
	ldrsb	r1, [r4, r9]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	ldrsb	r7, [r4, r5]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	movw	r5, #5684	@ tmp445,
	str	sl, [r4, #3048]	@, <variable>.Vp8DecParam.segment_feature_dat0
	str	r0, [r4, #3064]	@, <variable>.Vp8DecParam.segment_feature_dat1
	ldr	r0, [fp, #-120]	@, %sfp
	str	r1, [r4, #3080]	@, <variable>.Vp8DecParam.ref_lf_delta
	mov	r1, #16	@,
	str	r7, [r4, #3096]	@, <variable>.Vp8DecParam.mode_lf_delta
	add	r7, r4, #24	@ _ptr_msg_bank, pCtx,
	ldrsb	r9, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r6, #5690	@ tmp447,
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	ldrsb	r8, [r4, r5]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	add	r5, r4, #744	@, pCtx,
	str	r9, [r4, #3052]	@, <variable>.Vp8DecParam.segment_feature_dat0
	ldrsb	r9, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	movw	r6, #5694	@ tmp449,
	str	sl, [r4, #3112]	@, <variable>.Vp8DecParam.ref_frame_sign_bias
	add	sl, r4, #712	@ _ptr_msg_bank.870, pCtx,
	str	r8, [r4, #3068]	@, <variable>.Vp8DecParam.segment_feature_dat1
	add	r8, r4, #728	@ _ptr_msg_bank.877, pCtx,
	str	r9, [r4, #3084]	@, <variable>.Vp8DecParam.ref_lf_delta
	str	r5, [fp, #-116]	@, %sfp
	movw	r5, #5704	@ tmp451,
	ldrsb	r9, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	add	r6, r4, #760	@, pCtx,
	str	r9, [r4, #3100]	@, <variable>.Vp8DecParam.mode_lf_delta
	ldrb	r9, [r4, r5]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	movw	r5, #8108	@ tmp422,
	str	r6, [fp, #-112]	@, %sfp
	add	r6, r4, #6912	@ ivtmp.796, pCtx,
	str	r3, [r4, r5]	@ D.36379, <variable>.Vp8CodecInfo.ddr_stride
	add	r6, r6, #62	@ ivtmp.796, ivtmp.796,
	str	r3, [r4, #2800]	@ D.36379, <variable>.Vp8DecParam.ddr_stride
	movw	r3, #5695	@ tmp459,
	str	lr, [r4, #3044]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat0
	movw	lr, #5691	@ tmp457,
	str	r2, [r4, #3076]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8DecParam.ref_lf_delta
	movw	r2, #5681	@ tmp453,
	str	r9, [r4, #3116]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8DecParam.ref_frame_sign_bias
	movw	r9, #5685	@ tmp455,
	str	ip, [r4, #3060]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat1
	mov	r5, #0	@ ivtmp.795,
	ldrsb	ip, [r4, r2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	r2, [r4, r9]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	r9, [r4, lr]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	ldrsb	lr, [r4, r3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	movw	r3, #5705	@ tmp461,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	str	ip, [r4, #3056]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat0
	str	lr, [r4, #3104]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8DecParam.mode_lf_delta
	str	r2, [r4, #3072]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat1
	str	r9, [r4, #3088]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8DecParam.ref_lf_delta
	str	r3, [r4, #3120]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8DecParam.ref_frame_sign_bias
	bl	__memzero	@
	movw	r3, #5709	@ tmp463,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false
	movw	ip, #5674	@ tmp466,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	movw	r1, #5675	@ tmp469,
	movw	r3, #5676	@ tmp472,
	strb	r2, [r4, #8]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false, <variable>.Vp8DecParam.table
	ldr	r2, [fp, #-120]	@, %sfp
	strb	r0, [r2, #1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	mov	r0, r7	@, _ptr_msg_bank
	ldrb	r9, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	mov	r1, #16	@,
	strb	r9, [r2, #2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	movw	r9, #5706	@ tmp475,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	strb	ip, [r2, #3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	movw	ip, #5707	@ tmp478,
	ldrb	r3, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra
	strb	r3, [r2, #4]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra,
	movw	r3, #5708	@ tmp481,
	ldrb	r9, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last
	strb	r9, [r2, #5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last,
	movw	r9, #6966	@ tmp484,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf
	strb	ip, [r2, #6]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf,
	bl	__memzero	@
	movw	r3, #6967	@ tmp487,
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	movw	r1, #6968	@ tmp490,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	movw	r9, #6969	@ tmp493,
	movw	r3, #6970	@ tmp496,
	strb	r2, [r4, #24]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	strb	r0, [r7, #1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	add	r0, r4, #40	@, pCtx,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	mov	r1, #16	@,
	strb	ip, [r7, #2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	movw	r9, #6971	@ tmp499,
	strb	r2, [r7, #3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	movw	r3, #6972	@ tmp502,
	strb	ip, [r7, #4]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	movw	r9, #8032	@ tmp513,
	strb	r2, [r7, #5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	strb	ip, [r7, #6]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	movw	r7, #8030	@ tmp510,
	bl	__memzero	@
	add	r0, r4, #56	@, pCtx,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, sl	@, _ptr_msg_bank.870
	mov	r1, #16	@,
	bl	__memzero	@
	movw	r2, #8033	@ tmp516,
	movw	r3, #8034	@ tmp519,
	movw	lr, #8031	@,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8035	@ tmp522,
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8036	@ tmp525,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r0, [r4, #713]	@ <variable>.prob,
	mov	r0, r8	@, _ptr_msg_bank.877
	strb	r1, [r4, #714]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	r7, [r4, #715]	@ <variable>.prob,
	movw	r7, #8037	@ tmp528,
	strb	ip, [r4, #712]	@ <variable>.prob,
	strb	r9, [sl, #4]	@ <variable>.prob,
	movw	r9, #8038	@ tmp531,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r7, #8039	@ tmp537,
	ldrb	r3, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r9, #8040	@ tmp540,
	strb	lr, [r4, #717]	@ <variable>.prob,
	strb	ip, [r4, #718]	@ <variable>.prob,
	strb	r2, [r4, #719]	@ <variable>.prob,
	strb	r3, [sl, #8]	@ <variable>.prob,
	bl	__memzero	@
	movw	r1, #8031	@,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8041	@ tmp543,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8042	@ tmp546,
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8043	@ tmp549,
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8045	@ tmp555,
	strb	r1, [r4, #730]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	ip, [r4, #728]	@ <variable>.prob,
	strb	r0, [r4, #729]	@ <variable>.prob,
	ldr	r0, [fp, #-116]	@, %sfp
	strb	r7, [r4, #731]	@ <variable>.prob,
	movw	r7, #8044	@ tmp552,
	strb	r9, [r8, #4]	@ <variable>.prob,
	movw	r9, #8046	@ tmp558,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8047	@ tmp561,
	ldrb	r7, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r9, #8048	@ tmp564,
	strb	lr, [r4, #733]	@ <variable>.prob,
	strb	r2, [r4, #735]	@ <variable>.prob,
	strb	ip, [r4, #734]	@ <variable>.prob,
	strb	r7, [r8, #8]	@ <variable>.prob,
	movw	r7, #8049	@ tmp570,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r9, #8053	@ tmp579,
	strb	ip, [r4, #737]	@ <variable>.prob,
	strb	lr, [r4, #738]	@ <variable>.prob,
	bl	__memzero	@
	movw	r3, #8052	@ tmp576,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8051	@ tmp573,
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r3, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r9, #8050	@,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r0, [r4, #745]	@ <variable>.prob,
	ldr	r0, [fp, #-112]	@, %sfp
	strb	r1, [r4, #746]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	ip, [r4, #744]	@ <variable>.prob,
	movw	ip, #8054	@ tmp582,
	strb	r7, [r4, #747]	@ <variable>.prob,
	movw	r7, #8055	@ tmp585,
	ldr	r2, [fp, #-116]	@, %sfp
	strb	r3, [r2, #4]	@ <variable>.prob,
	movw	r3, #8056	@ tmp588,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8057	@ tmp591,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r2, [r4, #749]	@ <variable>.prob,
	strb	ip, [r4, #750]	@ <variable>.prob,
	strb	r7, [r4, #751]	@ <variable>.prob,
	movw	r7, #8059	@ tmp600,
	ldr	lr, [fp, #-116]	@, %sfp
	strb	r3, [lr, #8]	@ <variable>.prob,
	bl	__memzero	@
	ldrb	ip, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8058	@ tmp597,
	movw	r9, #8060	@ tmp603,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8061	@ tmp606,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r9, #8062	@ tmp609,
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8065	@ tmp618,
	strb	r0, [r4, #761]	@ <variable>.prob,
	movw	r0, #8063	@ tmp612,
	strb	r1, [r4, #762]	@ <variable>.prob,
	mov	r1, #8064	@ tmp615,
	strb	ip, [r4, #760]	@ <variable>.prob,
	strb	r2, [r4, #763]	@ <variable>.prob,
	ldr	ip, [fp, #-112]	@, %sfp
	strb	r7, [ip, #4]	@ <variable>.prob,
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r1, #8066	@ tmp621,
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r2, [r4, #765]	@ <variable>.prob,
	movw	r2, #8067	@ tmp624,
	strb	r7, [r4, #766]	@ <variable>.prob,
	strb	ip, [r4, #767]	@ <variable>.prob,
	ldr	r0, [fp, #-112]	@, %sfp
	strb	r9, [r0, #8]	@ <variable>.prob,
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r7, [r4, #769]	@ <variable>.prob,
	strb	r3, [r4, #770]	@ <variable>.prob,
.L64:
	add	lr, r5, #776	@ tmp628, ivtmp.795,
	mov	r1, #16	@,
	add	r9, r4, lr	@ _ptr_msg_bank.908, pCtx, tmp628
	mov	r0, r9	@, _ptr_msg_bank.908
	bl	__memzero	@
	mov	r1, r6	@, ivtmp.796
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.908
	bl	memcpy	@
	add	r1, r5, #792	@ tmp633, ivtmp.795,
	add	r7, r4, r1	@ _ptr_msg_bank.952, pCtx, tmp633
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.952
	bl	__memzero	@
	add	r1, r6, #11	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.952
	bl	memcpy	@
	add	r0, r5, #808	@ tmp639, ivtmp.795,
	add	r9, r4, r0	@ _ptr_msg_bank.953, pCtx, tmp639
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.953
	bl	__memzero	@
	add	r1, r6, #22	@, ivtmp.796,
	mov	r0, r9	@, _ptr_msg_bank.953
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #824	@ tmp645, ivtmp.795,
	add	r7, r4, r2	@ _ptr_msg_bank.956, pCtx, tmp645
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.956
	bl	__memzero	@
	add	r1, r6, #33	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.956
	bl	memcpy	@
	add	r3, r5, #840	@ tmp651, ivtmp.795,
	add	r9, r4, r3	@ _ptr_msg_bank.957, pCtx, tmp651
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.957
	bl	__memzero	@
	add	r1, r6, #44	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.957
	bl	memcpy	@
	add	ip, r5, #856	@ tmp657, ivtmp.795,
	add	r7, r4, ip	@ _ptr_msg_bank.958, pCtx, tmp657
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.958
	bl	__memzero	@
	add	r1, r6, #55	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.958
	bl	memcpy	@
	add	r1, r5, #872	@ tmp663, ivtmp.795,
	add	r9, r4, r1	@ _ptr_msg_bank.960, pCtx, tmp663
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.960
	bl	__memzero	@
	add	r1, r6, #66	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.960
	bl	memcpy	@
	add	r0, r5, #888	@ tmp669, ivtmp.795,
	add	r7, r4, r0	@ _ptr_msg_bank.961, pCtx, tmp669
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.961
	bl	__memzero	@
	add	r1, r6, #77	@, ivtmp.796,
	mov	r0, r7	@, _ptr_msg_bank.961
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #904	@ tmp675, ivtmp.795,
	add	r9, r4, r2	@ _ptr_msg_bank.962, pCtx, tmp675
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.962
	bl	__memzero	@
	add	r1, r6, #88	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.962
	bl	memcpy	@
	add	r3, r5, #920	@ tmp681, ivtmp.795,
	add	r7, r4, r3	@ _ptr_msg_bank.963, pCtx, tmp681
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.963
	bl	__memzero	@
	add	r1, r6, #99	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.963
	bl	memcpy	@
	add	ip, r5, #936	@ tmp687, ivtmp.795,
	add	r9, r4, ip	@ _ptr_msg_bank.964, pCtx, tmp687
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.964
	bl	__memzero	@
	add	r1, r6, #110	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.964
	bl	memcpy	@
	add	r1, r5, #952	@ tmp693, ivtmp.795,
	add	r7, r4, r1	@ _ptr_msg_bank.965, pCtx, tmp693
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.965
	bl	__memzero	@
	add	r1, r6, #121	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.965
	bl	memcpy	@
	add	r0, r5, #968	@ tmp699, ivtmp.795,
	add	r9, r4, r0	@ _ptr_msg_bank.966, pCtx, tmp699
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.966
	bl	__memzero	@
	add	r1, r6, #132	@, ivtmp.796,
	mov	r0, r9	@, _ptr_msg_bank.966
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #984	@ tmp705, ivtmp.795,
	add	r7, r4, r2	@ _ptr_msg_bank.967, pCtx, tmp705
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.967
	bl	__memzero	@
	add	r1, r6, #143	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.967
	bl	memcpy	@
	add	r3, r5, #1000	@ tmp711, ivtmp.795,
	add	r9, r4, r3	@ _ptr_msg_bank.968, pCtx, tmp711
	mov	r1, #16	@,
	mov	r0, r9	@, _ptr_msg_bank.968
	bl	__memzero	@
	add	r1, r6, #154	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.968
	bl	memcpy	@
	add	ip, r5, #1016	@ tmp717, ivtmp.795,
	add	r7, r4, ip	@ _ptr_msg_bank.969, pCtx, tmp717
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.969
	bl	__memzero	@
	add	r1, r6, #165	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.969
	bl	memcpy	@
	add	r1, r5, #1024	@ tmp723, ivtmp.795,
	add	r0, r1, #8	@ tmp723, tmp723,
	mov	r1, #16	@,
	add	r9, r4, r0	@ _ptr_msg_bank.970, pCtx, tmp723
	mov	r0, r9	@, _ptr_msg_bank.970
	bl	__memzero	@
	add	r1, r6, #176	@, ivtmp.796,
	mov	r0, r9	@, _ptr_msg_bank.970
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #1040	@ tmp730, ivtmp.795,
	add	r3, r2, #8	@ tmp730, tmp730,
	mov	r1, #16	@,
	add	r7, r4, r3	@ _ptr_msg_bank.971, pCtx, tmp730
	mov	r0, r7	@, _ptr_msg_bank.971
	bl	__memzero	@
	add	r1, r6, #187	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.971
	bl	memcpy	@
	add	ip, r5, #1056	@ tmp737, ivtmp.795,
	add	r0, ip, #8	@ tmp737, tmp737,
	mov	r1, #16	@,
	add	r9, r4, r0	@ _ptr_msg_bank.972, pCtx, tmp737
	mov	r0, r9	@, _ptr_msg_bank.972
	bl	__memzero	@
	add	r1, r6, #198	@, ivtmp.796,
	mov	r0, r9	@, _ptr_msg_bank.972
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r5, #1072	@ tmp744, ivtmp.795,
	add	r2, r1, #8	@ tmp744, tmp744,
	mov	r1, #16	@,
	add	r7, r4, r2	@ _ptr_msg_bank.973, pCtx, tmp744
	mov	r0, r7	@, _ptr_msg_bank.973
	bl	__memzero	@
	add	r1, r6, #209	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.973
	bl	memcpy	@
	add	r3, r5, #1088	@ tmp751, ivtmp.795,
	add	ip, r3, #8	@ tmp751, tmp751,
	mov	r1, #16	@,
	add	r9, r4, ip	@ _ptr_msg_bank.974, pCtx, tmp751
	mov	r0, r9	@, _ptr_msg_bank.974
	bl	__memzero	@
	add	r1, r6, #220	@, ivtmp.796,
	mov	r0, r9	@, _ptr_msg_bank.974
	mov	r2, #11	@,
	bl	memcpy	@
	add	r0, r5, #1104	@ tmp758, ivtmp.795,
	add	r2, r0, #8	@ tmp758, tmp758,
	mov	r1, #16	@,
	add	r7, r4, r2	@ _ptr_msg_bank.950, pCtx, tmp758
	mov	r0, r7	@, _ptr_msg_bank.950
	bl	__memzero	@
	add	r1, r6, #231	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.950
	bl	memcpy	@
	add	r1, r5, #1120	@ tmp765, ivtmp.795,
	add	r3, r1, #8	@ tmp765, tmp765,
	mov	r1, #16	@,
	add	r9, r4, r3	@ _ptr_msg_bank.951, pCtx, tmp765
	mov	r0, r9	@, _ptr_msg_bank.951
	bl	__memzero	@
	add	r1, r6, #242	@, ivtmp.796,
	mov	r2, #11	@,
	mov	r0, r9	@, _ptr_msg_bank.951
	bl	memcpy	@
	add	ip, r5, #1136	@ tmp772, ivtmp.795,
	add	r0, ip, #8	@ tmp772, tmp772,
	mov	r1, #16	@,
	add	r7, r4, r0	@ _ptr_msg_bank.913, pCtx, tmp772
	add	r5, r5, #384	@ ivtmp.795, ivtmp.795,
	mov	r0, r7	@, _ptr_msg_bank.913
	bl	__memzero	@
	add	r1, r6, #253	@, ivtmp.796,
	mov	r0, r7	@, _ptr_msg_bank.913
	mov	r2, #11	@,
	bl	memcpy	@
	cmp	r5, #1536	@ ivtmp.795,
	add	r6, r6, #264	@ ivtmp.796, ivtmp.796,
	bne	.L64	@,
	ldr	r9, [fp, #-136]	@, %sfp
	movw	r5, #5712	@ tmp779,
	ldr	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type, <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type
	movw	r7, #5724	@ tmp784,
	ldr	r1, [r4, r7]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	add	r5, r4, #3168	@ pBs, pCtx,
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type,
	ldr	r0, [r9, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	moveq	r2, #10	@,
	movne	r2, #3	@,
	bic	ip, r0, #15	@ tmp781, <variable>.PhyAddr,
	add	lr, r2, r1	@ tmp785,, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	sub	r3, ip, #16	@ tmp783, tmp781,
	str	r2, [fp, #-112]	@, %sfp
	mov	r0, r5	@, pBs
	str	r3, [r4, #2820]	@ tmp783, <variable>.Vp8DecParam.stream_base_addr
	mov	r6, lr, asl #3	@ D.36520, tmp785,
	bl	BsPos	@
	rsb	r9, r0, r6	@ tmp787,, D.36520
	str	r9, [r4, #2824]	@ tmp787, <variable>.Vp8DecParam.bit_len_0
	ldr	r9, [fp, #-136]	@, %sfp
	mov	r0, r5	@, pBs
	ldr	r1, [r9, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	r6, r1, #15	@ D.36524, <variable>.PhyAddr,
	bl	BsPos	@
	add	r6, r6, #16	@ tmp789, D.36524,
	cmp	r0, #0	@ D.36525,
	add	ip, r0, #7	@ tmp792, D.36525,
	movge	ip, r0	@ D.36525, D.36525
	mov	r0, r5	@, pBs
	add	r5, r6, ip, asr #3	@, ByteA, tmp789, D.36525,
	bl	BsPos	@
	movw	r2, #5669	@ tmp812,
	mov	r6, #1	@ tmp815,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition
	and	r2, r5, #15	@ tmp794, ByteA,
	bic	r5, r5, #15	@ tmp803, ByteA,
	str	r5, [r4, #2832]	@ tmp803, <variable>.Vp8DecParam.bit_byte_offset_0
	mov	r6, r6, asl r1	@ tmp814, tmp815,
	ldr	r1, [r4, r7]	@ temp.916, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	uxtb	r6, r6	@ num_part, tmp814
	cmp	r6, #1	@ num_part,
	mov	r3, r0, asr #31	@ tmp797, D.36531,
	mov	r3, r3, lsr #29	@ tmp798, tmp797,
	add	ip, r0, r3	@ tmp799, D.36531, tmp798
	and	r0, ip, #7	@ tmp800, tmp799,
	rsb	ip, r3, r0	@ tmp801, tmp798, tmp800
	mov	r3, #0	@ tmp804,
	add	r0, ip, r2, asl #3	@, tmp802, tmp801, tmp794,
	str	r3, [r4, #2844]	@ tmp804, <variable>.Vp8DecParam.bit_byte_offset_1
	str	r0, [r4, #2828]	@ tmp802, <variable>.Vp8DecParam.bit_offset_0
	str	r3, [r4, #2836]	@ tmp804, <variable>.Vp8DecParam.bit_len_1
	ldr	ip, [fp, #-112]	@, %sfp
	str	r3, [r4, #2840]	@ tmp804, <variable>.Vp8DecParam.bit_offset_1
	ldr	r0, [r9, #8]	@ <variable>.Length, <variable>.Length
	add	r2, ip, r1	@ tmp808,, temp.916
	ldr	r3, [r9, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	subhi	r9, r6, #1	@ pretmp.733, num_part,
	rsb	r0, ip, r0	@ tmp810,, <variable>.Length
	str	r6, [r4, #2848]	@ num_part, <variable>.Vp8DecParam.stream_num_part
	add	r2, r2, r3	@ VirAddr_1, tmp808, <variable>.VirAddr
	addhi	r5, r9, r9, asl #1	@, tmp819, pretmp.733, pretmp.733,
	rsb	r0, r1, r0	@ ByteLen_1, temp.916, tmp810
	addhi	r5, r2, r5	@ source_start, VirAddr_1, tmp819
	bls	.L107	@,
.L69:
	rsb	r7, r6, #1	@ tmp820, num_part,
	tst	r6, #1	@ num_part,
	mov	r3, r2	@ source, VirAddr_1
	mov	r1, #0	@ i.918,
	add	r8, r7, r7, asl #1	@, tmp823, tmp820, tmp820,
	sub	ip, fp, #108	@ tmp860,,
	add	r7, r0, r8	@ D.36569, ByteLen_1, tmp823
	bne	.L73	@,
	cmp	r1, r9	@ i.918, pretmp.733
	rsbge	r3, r5, r2	@ tmp917, source_start, VirAddr_1
	ldrltb	r3, [r2, #2]	@ zero_extendqisi2	@ tmp921,
	addge	r3, r3, r7	@ length, tmp917, D.36569
	ldrltb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp919,
	ldrltb	r0, [r2, #0]	@ zero_extendqisi2	@ tmp924,* VirAddr_1
	movlt	r3, r3, asl #16	@ tmp922, tmp921,
	addlt	r3, r3, r1, asl #8	@, tmp923, tmp922, tmp919,
	mov	r1, #1	@ i.918,
	addlt	r3, r3, r0	@ length, tmp923, tmp924
	str	r3, [ip, #0]	@ length, BsLen
	add	r5, r5, r3	@ source_start, source_start, length
	add	r3, r2, #3	@ source, VirAddr_1,
	b	.L73	@
.L108:
	cmp	r2, r9	@ tmp874, pretmp.733
	add	r1, r8, r7	@ length, tmp926, D.36569
	bge	.L100	@,
	ldrb	sl, [r0, #2]	@ zero_extendqisi2	@ tmp930,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ tmp928,
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ tmp933,
	mov	sl, sl, asl #16	@ tmp931, tmp930,
	add	r1, sl, lr, asl #8	@, tmp932, tmp931, tmp928,
	add	r1, r1, r3	@ length, tmp932, tmp933
.L100:
	add	r5, r5, r1	@ source_start, source_start, length
	str	r1, [ip, r2, asl #2]	@ length, BsLen
	add	r3, r0, #3	@ source, tmp875,
	add	r1, r2, #1	@ i.918, tmp874,
.L73:
	cmp	r1, r9	@ i.918, pretmp.733
	rsb	lr, r5, r3	@ tmp830, source_start, source
	add	r0, lr, r7	@ length, tmp830, D.36569
	bge	.L71	@,
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp826,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ tmp824,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp829,* source
	mov	lr, r0, asl #16	@ tmp827, tmp826,
	add	r0, lr, r8, asl #8	@, tmp828, tmp827, tmp824,
	add	r0, r0, r2	@ length, tmp828, tmp829
.L71:
	add	r2, r1, #1	@ tmp874, i.918,
	add	r5, r5, r0	@ source_start, source_start, length
	cmp	r2, r6	@ tmp874, num_part
	str	r0, [ip, r1, asl #2]	@ length, BsLen
	add	r0, r3, #3	@ tmp875, source,
	rsb	r8, r5, r0	@ tmp926, source_start, tmp875
	bne	.L108	@,
	ldr	r0, [fp, #-136]	@, %sfp
	movw	r3, #5724	@ tmp835,
	ldr	r7, [r4, r3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	add	r9, r9, r9, asl #1	@, tmp841, pretmp.733, pretmp.733,
	ldr	r2, [fp, #-112]	@, %sfp
	ldr	r5, [r0, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	lr, r5, #15	@ tmp833, <variable>.PhyAddr,
	add	r5, lr, r7	@ tmp836, tmp833, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	ldr	lr, [ip], #4	@ tmp890, BsLen
	add	r0, r5, r2	@ tmp838, tmp836,
	add	r2, r4, #2848	@ ivtmp.757, pCtx,
	add	r9, r0, r9	@ D.36576, tmp838, tmp841
	mov	r0, #1	@ i,
	and	r5, r9, #15	@ tmp892, prephitmp.737,
	cmp	r0, r6	@ i, num_part
	mov	r7, lr, asl #3	@ tmp891, tmp890,
	bic	lr, r9, #15	@ tmp894, prephitmp.737,
	str	r7, [r2, #4]!	@ tmp891, <variable>.Vp8DecParam.bitn_len_0
	mov	r5, r5, asl #3	@ tmp893, tmp892,
	add	r3, lr, #16	@ tmp895, tmp894,
	str	r5, [r2, #32]	@ tmp893, <variable>.Vp8DecParam.bitn_offset_0
	str	r3, [r2, #64]	@ tmp895, <variable>.Vp8DecParam.bitn_byte_offset_0
	and	r7, r1, r0	@ tmp866, i.918,
	str	r9, [fp, #-76]	@ D.36576, Byte
	mov	r1, #0	@ tmp861,
	add	r3, r2, #4	@ ivtmp.757, ivtmp.757,
	str	r1, [r2, #96]	@ tmp861, <variable>.Vp8DecParam.bitn_len_1
	sub	r5, fp, #76	@ ivtmp.766,,
	str	r1, [r2, #128]	@ tmp861, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r2, #160]	@ tmp861, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L68	@,
	cmp	r7, #0	@ tmp866,
	beq	.L102	@,
	ldr	r2, [ip, #-4]	@ tmp897, BsLen
	add	r0, r0, #1	@ i, i,
	ldr	r7, [r5, #0]	@ tmp898, Byte
	cmp	r0, r6	@ i, num_part
	ldr	r8, [ip], #4	@ tmp900, BsLen
	add	lr, r2, r7	@ prephitmp.737, tmp897, tmp898
	str	lr, [r5, #4]!	@ prephitmp.737, Byte
	and	r7, lr, #15	@ tmp902, prephitmp.737,
	bic	r2, lr, #15	@ tmp904, prephitmp.737,
	mov	r8, r8, asl #3	@ tmp901, tmp900,
	add	r2, r2, #16	@ tmp905, tmp904,
	str	r8, [r3, #0]	@ tmp901, <variable>.Vp8DecParam.bitn_len_0
	mov	r7, r7, asl #3	@ tmp903, tmp902,
	str	r2, [r3, #64]	@ tmp905, <variable>.Vp8DecParam.bitn_byte_offset_0
	str	r7, [r3, #32]	@ tmp903, <variable>.Vp8DecParam.bitn_offset_0
	str	r1, [r3, #96]	@ tmp861, <variable>.Vp8DecParam.bitn_len_1
	str	r1, [r3, #128]	@ tmp861, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r3, #160]	@ tmp861, <variable>.Vp8DecParam.bitn_byte_offset_1
	add	r3, r3, #4	@ ivtmp.757, ivtmp.757,
	beq	.L68	@,
.L102:
	mov	sl, r4	@ pCtx, pCtx
	b	.L76	@
.L110:
	str	r9, [fp, #-76]	@ D.36576, Byte
	ldr	r4, [r7, #4]	@ prephitmp.737, Byte
.L97:
	ldr	r5, [ip], #4	@ tmp910, BsLen
	add	r0, r0, #1	@ i, tmp867,
	and	r8, r4, #15	@ tmp912, prephitmp.737,
	cmp	r0, r6	@ i, num_part
	bic	lr, r4, #15	@ tmp914, prephitmp.737,
	add	r3, r2, #4	@ ivtmp.757, tmp869,
	mov	r5, r5, asl #3	@ tmp911, tmp910,
	mov	r8, r8, asl #3	@ tmp913, tmp912,
	str	r5, [r2, #0]	@ tmp911, <variable>.Vp8DecParam.bitn_len_0
	add	r4, lr, #16	@ tmp915, tmp914,
	str	r1, [r2, #96]	@ tmp861, <variable>.Vp8DecParam.bitn_len_1
	add	r5, r7, #4	@ ivtmp.766, tmp870,
	str	r8, [r2, #32]	@ tmp913, <variable>.Vp8DecParam.bitn_offset_0
	str	r4, [r2, #64]	@ tmp915, <variable>.Vp8DecParam.bitn_byte_offset_0
	str	r1, [r2, #128]	@ tmp861, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r2, #160]	@ tmp861, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L109	@,
.L76:
	cmp	r0, #0	@ i,
	streq	r9, [fp, #-76]	@ D.36576, Byte
	ldrne	r2, [r5, #0]	@ tmp845, Byte
	ldrne	r4, [ip, #-4]	@ tmp844, BsLen
	ldreq	r2, [r5, #4]	@ prephitmp.737, Byte
	ldr	r8, [ip], #4	@ tmp846, BsLen
	addne	r2, r4, r2	@ prephitmp.737, tmp844, tmp845
	and	r4, r2, #15	@ tmp848, prephitmp.737,
	strne	r2, [r5, #4]	@ prephitmp.737, Byte
	adds	r0, r0, #1	@ tmp867, i,
	bic	r7, r2, #15	@ tmp850, prephitmp.737,
	add	r2, r7, #16	@ tmp851, tmp850,
	mov	lr, r4, asl #3	@ tmp849, tmp848,
	str	r2, [r3, #64]	@ tmp851, <variable>.Vp8DecParam.bitn_byte_offset_0
	mov	r4, r8, asl #3	@ tmp847, tmp846,
	str	lr, [r3, #32]	@ tmp849, <variable>.Vp8DecParam.bitn_offset_0
	add	r2, r3, #4	@ tmp869, ivtmp.757,
	str	r1, [r3, #96]	@ tmp861, <variable>.Vp8DecParam.bitn_len_1
	add	r7, r5, #4	@ tmp870, ivtmp.766,
	str	r4, [r3, #0]	@ tmp847, <variable>.Vp8DecParam.bitn_len_0
	str	r1, [r3, #128]	@ tmp861, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r3, #160]	@ tmp861, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L110	@,
	ldr	r4, [r5, #4]	@ tmp908, Byte
	ldr	r3, [ip, #-4]	@ tmp907, BsLen
	add	r4, r3, r4	@ prephitmp.737, tmp907, tmp908
	str	r4, [r7, #4]	@ prephitmp.737, Byte
	b	.L97	@
.L54:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36350,
.L56:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L109:
	mov	r4, sl	@ pCtx, pCtx
.L68:
	ldr	r5, [fp, #-120]	@, %sfp
	mov	r0, #1	@ D.36350,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	str	r5, [r4, #4]	@, <variable>.pVp8DecParam
	ldr	ip, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r4, #3148]	@ <variable>.s32Compress_en, <variable>.Vp8DecParam.Compress_en
	b	.L56	@
.L107:
	cmp	r6, #0	@ num_part,
	subne	r9, r6, #1	@ pretmp.733, num_part,
	movne	r5, r2	@ source_start, VirAddr_1
	bne	.L69	@,
	b	.L68	@
.L106:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36350, D.36351
	b	.L56	@
	.fnend
	.size	VP8_Set_DecParam, .-VP8_Set_DecParam
	.align	2
	.global	VP8_GetImageBuffer
	.type	VP8_GetImageBuffer, %function
VP8_GetImageBuffer:
	.fnstart
.LFB1374:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #8520	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movw	r6, #8148	@ tmp144,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.36162,
	mov	r1, r0	@ D.36162,
	str	r0, [r4, r6]	@ D.36162, <variable>.Vp8CodecInfo.CurFsID
	blt	.L117	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L118	@,
	ldr	r2, [r4, r6]	@, <variable>.Vp8CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.36180, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36180,
	beq	.L115	@,
	ldr	r3, [r5, #476]	@ D.36182, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36182,
	beq	.L115	@,
	ldr	ip, [r5, #480]	@ D.36184, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.36184,
	beq	.L115	@,
	ldr	ip, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC13	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC13	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36172,
.L113:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L115:
	mov	r0, #0	@ D.36172,
	b	.L113	@
.L117:
	movw	r8, #8136	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	movw	r6, #8140	@ tmp152,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp8CodecInfo.GoldenFsID
	movw	r7, #8144	@ tmp156,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp159,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	sl, [r4, r8]	@ tmp159, <variable>.Vp8CodecInfo.GoldenFsID
	str	sl, [r4, r6]	@ tmp159, <variable>.Vp8CodecInfo.AltFsID
	str	sl, [r4, r7]	@ tmp159, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #8116	@ tmp169,
	add	r1, r4, #8128	@, pCtx,
	str	sl, [r4, r3]	@ tmp159, <variable>.Vp8CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.36170, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.36170, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r6]	@ D.36170, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, sl	@ D.36172, tmp159
	b	.L113	@
.L118:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #1486	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36172, pLf
	b	.L113	@
	.fnend
	.size	VP8_GetImageBuffer, .-VP8_GetImageBuffer
	.align	2
	.global	VP8_ArrangeVHBMem
	.type	VP8_ArrangeVHBMem, %function
VP8_ArrangeVHBMem:
	.fnstart
.LFB1372:
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
	movw	r3, #5764	@ tmp155,
	ldr	r3, [r0, r3]	@ D.36021, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_pix
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #31	@ D.36021,
	bls	.L146	@,
	mov	r0, #5760	@ tmp157,
	ldr	r2, [r4, r0]	@ prephitmp.1061, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
	cmp	r2, #31	@ prephitmp.1061,
	bls	.L121	@,
	ldr	r1, [r4, #0]	@ D.36028, <variable>.pstExtraData
	ldr	ip, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L124	@,
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L147	@,
.L125:
	mov	r8, #4	@ PmvNum,
	mov	r5, r2	@ PicWidth, prephitmp.1061
	mov	r6, r3	@ PicHeight, D.36021
	mov	sl, #5	@ prephitmp.1063,
	mov	r9, r8	@ DecFsNum, PmvNum
.L132:
	sub	r7, fp, #84	@ tmp199,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp199
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp174,
	ldr	r3, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r6, [fp, #-52]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	r2, [fp, #-82]	@ tmp174, FspInstCfg.s32RprEnable
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #8520	@ tmp185,
	str	r5, [fp, #-56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	ldr	r5, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [fp, #-77]	@ prephitmp.1063, FspInstCfg.s32ExpectedDispFsNum
	cmp	r5, #24	@ <variable>.eCapLevel,
	uxtbne	r2, r9	@ iftmp.443, DecFsNum
	strb	r2, [fp, #-79]	@ iftmp.443, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp199
	uxtbne	r8, r8	@ iftmp.444, PmvNum
	mov	r7, #0	@ tmp183,
	moveq	r8, #1	@ iftmp.444,
	strb	r7, [fp, #-80]	@ tmp183, FspInstCfg.s32UserDec
	strb	r8, [fp, #-76]	@ iftmp.444, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.36075,
	bne	.L143	@,
	ldr	lr, [r4, #0]	@ temp.1091, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L148	@,
	mov	ip, #1	@ tmp196,
	movw	r1, #8120	@ tmp195,
	mov	r0, ip	@ D.36025, tmp196
	str	ip, [r4, r1]	@ tmp196, <variable>.Vp8CodecInfo.Imgbuf_allocated
	b	.L123	@
.L146:
	mov	r2, #5760	@ tmp156,
	ldr	r2, [r0, r2]	@ prephitmp.1061, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
.L121:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36025,
.L123:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L124:
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L125	@,
	ldr	ip, [r1, #564]	@ D.36035, <variable>.stChanOption.s32MaxWidth
	cmp	r2, ip	@ prephitmp.1061, D.36035
	ldrhi	lr, [r1, #568]	@ prephitmp.1065, <variable>.stChanOption.s32MaxHeight
	bhi	.L135	@,
	ldr	lr, [r1, #568]	@ prephitmp.1065, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ D.36021, prephitmp.1065
	bhi	.L135	@,
	ldr	r6, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ temp.1080, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L138	@,
	add	r8, r9, #1	@ PmvNum.1082, temp.1080,
	cmp	r8, #17	@ PmvNum.1082,
	movge	r8, #17	@ PmvNum,
.L138:
	ldrb	sl, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1063, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.1080,
	mov	r5, r2	@ PicWidth, prephitmp.1061
	mov	r6, r3	@ PicHeight, D.36021
	b	.L132	@
.L147:
	ldr	r5, [r1, #564]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r5	@ prephitmp.1061, PicWidth
	ldrhi	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L127	@,
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.36021, PicHeight
	bhi	.L127	@,
	movw	r3, #8120	@ tmp162,
	ldr	r0, [r4, r3]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	beq	.L123	@,
	ldr	r7, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ D.36044, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L131	@,
	add	r8, r9, #1	@ PmvNum.1076, D.36044,
	cmp	r8, #17	@ PmvNum.1076,
	movge	r8, #17	@ PmvNum,
.L131:
	add	r9, r9, #2	@ DecFsNum, D.36044,
	ldrb	sl, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1063, <variable>.stChanOption.s32DisplayFrameNum
	b	.L132	@
.L143:
	mov	r0, r7	@, tmp183
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36025, tmp183
	b	.L123	@
.L135:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36025,
	b	.L123	@
.L148:
	mov	r0, r5	@, D.36075
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36025, D.36075
	b	.L123	@
.L127:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36025,
	b	.L123	@
	.fnend
	.size	VP8_ArrangeVHBMem, .-VP8_ArrangeVHBMem
	.align	2
	.global	Vp8_Vfmw_DecodeBool
	.type	Vp8_Vfmw_DecodeBool, %function
Vp8_Vfmw_DecodeBool:
	.fnstart
.LFB1360:
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
	ldr	ip, [r0, #0]	@ range.1128, <variable>.range
	mov	r5, r1	@ pBs, pBs
	ldr	r6, [r0, #4]	@ value, <variable>.value
	sub	r1, ip, #1	@ tmp153, range.1128,
	ldr	r9, [r0, #8]	@ D.35312, <variable>.count
	mov	r4, r0	@ pBc, pBc
	mul	r0, r1, r2	@ tmp154, tmp153, probability
	mov	r3, r0, lsr #8	@ tmp155, tmp154,
	movw	r0, #:lower16:.LANCHOR0	@ tmp156,
	add	sl, r3, #1	@ split, tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp156,
	mov	r1, sl, asl #16	@ bigsplit, split,
	cmp	r6, r1	@ value, bigsplit
	strcc	sl, [fp, #-48]	@ split, %sfp
	rsbcs	sl, sl, ip	@, split, range.1128
	strcs	sl, [fp, #-48]	@, %sfp
	ldr	r2, [fp, #-48]	@, %sfp
	movcc	r1, #0	@,
	rsbcs	r6, r1, r6	@ value, bigsplit, value
	movcs	ip, #1	@,
	add	r3, r2, r0	@ tmp158,, tmp156
	strcc	r1, [fp, #-56]	@, %sfp
	strcs	ip, [fp, #-56]	@, %sfp
	ldrb	sl, [r3, #1116]	@ zero_extendqisi2	@ shift, VP8_VFMWBITREADER_NORM
	subs	r9, r9, sl	@ count, D.35312, shift
	mov	r6, r6, asl sl	@ value.1126, value,
	bmi	.L162	@,
.L152:
	str	r6, [r4, #4]	@ value.1126, <variable>.value
	ldr	r1, [fp, #-48]	@, %sfp
	str	r9, [r4, #8]	@ count, <variable>.count
	ldr	r0, [fp, #-56]	@, %sfp
	mov	sl, r1, asl sl	@ tmp163,,
	str	sl, [r4, #0]	@ tmp163, <variable>.range
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L162:
	rsbs	r2, r9, #8	@, count,
	str	r2, [fp, #-52]	@, %sfp
	bmi	.L152	@,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	ldr	ip, [fp, #-52]	@, %sfp
	subs	r7, ip, #8	@ shift.1131,,
	ubfx	r3, ip, #3, #1	@ tmp167,,,
	orr	r6, r6, r0, asl ip	@, value.1126, value.1126,,
	bmi	.L161	@,
	cmp	r3, #0	@ tmp167,
	beq	.L153	@,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	orr	r6, r6, r0, asl r7	@, value.1126, value.1126,,
	subs	r7, r7, #8	@ shift.1131, shift.1131,
	bmi	.L161	@,
.L153:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	sub	r8, r7, #8	@ tmp168, shift.1131,
	orr	r6, r6, r0, asl r7	@, value.1126, value.1126,,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r7, r8, #8	@ shift.1131, tmp168,
	orr	r6, r6, r0, asl r8	@, value.1126, value.1126,,
	bpl	.L153	@,
.L161:
	ldr	r0, [fp, #-52]	@, %sfp
	add	lr, r9, #8	@ D.37537, count,
	bic	r3, r0, #7	@ tmp162,,
	add	r9, lr, r3	@ count, D.37537, tmp162
	b	.L152	@
	.fnend
	.size	Vp8_Vfmw_DecodeBool, .-Vp8_Vfmw_DecodeBool
	.align	2
	.global	Vp8_Vfmw_DecodeValue
	.type	Vp8_Vfmw_DecodeValue, %function
Vp8_Vfmw_DecodeValue:
	.fnstart
.LFB1361:
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
	subs	r6, r2, #1	@ i, nBits,
	mov	r8, r0	@ pBc, pBc
	mov	r7, r1	@ pBs, pBs
	movmi	r6, #0	@ value,
	bmi	.L165	@,
	mov	r2, #128	@,
	and	r5, r6, #1	@ tmp145, i,
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r4, r6, #1	@ i, i,
	mov	r6, r0, asl r6	@ value,,
	bmi	.L165	@,
	cmp	r5, #0	@ tmp145,
	beq	.L166	@,
	mov	r0, r8	@, pBc
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	orr	r6, r6, r0, asl r4	@, value, value,,
	subs	r4, r4, #1	@ i, i,
	bmi	.L165	@,
.L166:
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	mov	r0, r8	@, pBc
	sub	r5, r4, #1	@ tmp146, i,
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	orr	r6, r6, r0, asl r4	@, value, value,,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r4, r5, #1	@ i, tmp146,
	orr	r6, r6, r0, asl r5	@, value, value,,
	bpl	.L166	@,
.L165:
	mov	r0, r6	@, value
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vp8_Vfmw_DecodeValue, .-Vp8_Vfmw_DecodeValue
	.align	2
	.global	get_delta_q
	.type	get_delta_q, %function
get_delta_q:
	.fnstart
.LFB1369:
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
	mov	r4, r2	@ prev, prev
	mov	r2, #128	@,
	mov	r6, r3	@ q_update, q_update
	mov	r8, r0	@ pBc, pBc
	mov	r7, r1	@ pBs, pBs
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r5, r0, #0	@ D.35652,
	bne	.L179	@,
	cmp	r5, r4	@ ret_val, prev
	mov	r0, r5	@, ret_val
	movne	r3, #1	@ tmp141,
	strne	r3, [r6, #0]	@ tmp141,* q_update
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L179:
	mov	r1, r7	@, pBs
	mov	r2, #4	@,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	mov	r5, r0	@ ret_val,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	rsbne	r5, r5, #0	@ ret_val, ret_val
	cmp	r5, r4	@ ret_val, prev
	mov	r0, r5	@, ret_val
	movne	r3, #1	@ tmp141,
	strne	r3, [r6, #0]	@ tmp141,* q_update
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	get_delta_q, .-get_delta_q
	.align	2
	.global	read_mvcontexts
	.type	read_mvcontexts, %function
read_mvcontexts:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r9, .L215	@ tmp164,
	mov	r6, r0	@ bc, bc
	mov	r5, r1	@ pBs, pBs
	mov	sl, #0	@ i,
	str	r2, [fp, #-48]	@ mvc, %sfp
.L186:
	mov	r1, sl, asl #3	@ tmp151, i,
	ldr	r2, [fp, #-48]	@, %sfp
	add	r4, r1, sl	@ tmp152, tmp151, i
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	add	r4, sl, r4, asl #1	@, tmp154, i, tmp152,
	add	r8, r2, r4	@ p,, tmp154
	add	r7, r9, r4	@ up, tmp164, tmp154
	ldrb	r2, [r9, r4]	@ zero_extendqisi2	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L209	@,
.L189:
	mov	r3, #0	@ tmp173,
	cmp	r3, r3	@ tmp173,
	mov	r4, #1	@ ivtmp.1210,
	beq	.L184	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,* ivtmp.1210
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L210	@,
.L196:
	add	r4, r4, #1	@ ivtmp.1210, tmp174,
	cmp	r4, #19	@ ivtmp.1210,
	beq	.L211	@,
.L184:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,* ivtmp.1210
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L212	@,
.L181:
	add	r4, r4, #1	@ tmp174, ivtmp.1210,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L196	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r0, r0	@ x,
	cmp	r0, #0	@ x,
	movne	r0, r0, asl #1	@ tmp194, x,
	uxtbne	r0, r0	@ iftmp.432, tmp194
	moveq	r0, #1	@ iftmp.432,
.L208:
	strb	r0, [r8, r4]	@ iftmp.432,
	add	r4, r4, #1	@ ivtmp.1210, tmp174,
	cmp	r4, #19	@ ivtmp.1210,
	bne	.L184	@,
.L211:
	cmp	sl, #0	@ i,
	bne	.L187	@,
	mov	sl, #1	@ i,
	b	.L186	@
.L212:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r0, r0	@ x,
	cmp	r0, #0	@ x,
	movne	r0, r0, asl #1	@ tmp161, x,
	moveq	r0, #1	@ iftmp.432,
	uxtbne	r0, r0	@ iftmp.432, tmp161
	strb	r0, [r8, r4]	@ iftmp.432,* ivtmp.1210
	b	.L181	@
.L187:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L209:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	ip, r0	@ x,
	cmp	ip, #0	@ x,
	movne	r3, ip, asl #1	@ tmp184, x,
	uxtbne	r3, r3	@ iftmp.432, tmp184
	beq	.L213	@,
	ldr	lr, [fp, #-48]	@, %sfp
	strb	r3, [lr, r4]	@ iftmp.432,
	b	.L189	@
.L210:
	mov	r2, #7	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r2, r0	@ x,
	cmp	r2, #0	@ x,
	movne	r3, r2, asl #1	@ tmp190, x,
	uxtbne	r3, r3	@ iftmp.432, tmp190
	beq	.L214	@,
	strb	r3, [r8, r4]	@ iftmp.432,* ivtmp.1210
	b	.L196	@
.L213:
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r3, #1	@ iftmp.432,
	strb	r3, [lr, r4]	@ iftmp.432,
	b	.L189	@
.L214:
	mov	r3, r4	@ iftmp.432, ivtmp.1210
	strb	r3, [r8, r4]	@ iftmp.432,* ivtmp.1210
	b	.L196	@
.L216:
	.align	2
.L215:
	.word	.LANCHOR0+1372
	.fnend
	.size	read_mvcontexts, .-read_mvcontexts
	.align	2
	.global	VP8_mb_mode_mv_init
	.type	VP8_mb_mode_mv_init, %function
VP8_mb_mode_mv_init:
	.fnstart
.LFB1368:
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
	ldr	r3, [r0, #56]	@ <variable>.frame_type, <variable>.frame_type
	mov	r4, r0	@ pPictureHeader, pPictureHeader
	mov	r6, r1	@ bc, bc
	cmp	r3, #0	@ <variable>.frame_type,
	mov	r5, r2	@ pBs, pBs
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r2	@, pBs
	mov	r0, r6	@, bc
	mov	r2, #8	@,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #50]	@, <variable>.prob_intra
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #51]	@, <variable>.prob_last
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #128	@,
	strb	r0, [r4, #52]	@, <variable>.prob_gf
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L222	@,
.L219:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L220	@,
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1314]	@, <variable>.fc.uv_mode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1315]	@, <variable>.fc.uv_mode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r4, #1316]	@, <variable>.fc.uv_mode_prob
.L220:
	add	r2, r4, #2368	@, pPictureHeader,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	add	r2, r2, #6	@,,
	bl	read_mvcontexts	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L222:
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1310]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1311]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1312]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r4, #1313]	@, <variable>.fc.ymode_prob
	b	.L219	@
	.fnend
	.size	VP8_mb_mode_mv_init, .-VP8_mb_mode_mv_init
	.align	2
	.global	Vp8_Vfmw_StartBoolDecode
	.type	Vp8_Vfmw_StartBoolDecode, %function
Vp8_Vfmw_StartBoolDecode:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pBc, pBc
	mov	r3, #16	@ tmp137,
	mov	r0, r1	@, pBs
	str	r3, [r4, #8]	@ tmp137, <variable>.count
	mov	r1, #255	@ tmp136,
	str	r1, [r4, #0]	@ tmp136, <variable>.range
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #4]	@, <variable>.value
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Vp8_Vfmw_StartBoolDecode, .-Vp8_Vfmw_StartBoolDecode
	.align	2
	.global	VP8_GetPictureHeader
	.type	VP8_GetPictureHeader, %function
VP8_GetPictureHeader:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, .L346	@ tmp310,
	mov	r6, r1	@ pVp8CodecInfo, pVp8CodecInfo
	mov	r4, r0	@ pBs, pBs
	sub	r9, fp, #56	@ tmp542,,
	mov	r7, r2	@ strlen, strlen
	ldmia	r5, {r0, r1}	@ tmp310,,
	stmia	r9, {r0, r1}	@ tmp542,,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data0,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.35754,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	movw	ip, #4960	@ tmp312,
	and	r3, r5, #1	@ D.35758, data0,
	str	r3, [r6, ip]	@ D.35758, <variable>.FrameType
	uxtb	r8, r8	@ D.35754, D.35754
	ubfx	r2, r5, #1, #3	@ tmp315, data0,,
	str	r2, [r6, #2524]	@ tmp315, <variable>.NewHeaderInfo.version
	ubfx	r1, r5, #4, #1	@ tmp318, data0,,
	str	r1, [r6, #2520]	@ tmp318, <variable>.NewHeaderInfo.show_frame
	str	r3, [r6, #2516]	@ D.35758, <variable>.NewHeaderInfo.frame_type
	uxtb	ip, r0	@ D.35755,
	mov	r2, ip, asl #16	@ tmp322, D.35755,
	orr	r1, r2, r8, asl #8	@, tmp323, tmp322, D.35754,
	orr	r0, r1, r5	@ tmp324, tmp323, data0
	mov	r3, r0, asr #5	@ D.35773, tmp324,
	str	r3, [r6, #2528]	@ D.35773, <variable>.NewHeaderInfo.first_partition_length_in_bytes
	cmp	r3, r7	@ D.35773, strlen
	bhi	.L304	@,
	add	r0, r6, #2448	@, pVp8CodecInfo,
	add	lr, r0, #12	@,,
	str	lr, [fp, #-64]	@, %sfp
	mov	r0, lr	@,
	bl	VP8_setup_version	@
	ldr	r7, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r7, #0	@ <variable>.NewHeaderInfo.frame_type,
	bne	.L228	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r7, r0	@ data0.1443,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data1.1444,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r7, #157	@ data0.1443,
	cmpeq	r5, #1	@, data1.1444,
	uxtb	ip, r0	@ data2.1445,
	bne	.L229	@,
	cmp	ip, #42	@ data2.1445,
	beq	.L230	@,
.L229:
	mov	r2, r7	@, data0.1443
	mov	r3, r5	@, data1.1444
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	ip, [sp, #0]	@ data2.1445,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35778,
.L227:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L230:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.35791,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data1.1447,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ D.35793,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r3, r8	@ D.35791, D.35791
	orr	ip, r3, r5, asl #8	@, tmp338, D.35791, data1.1447,
	uxtb	r7, r7	@ D.35793, D.35793
	mov	r5, r5, lsr #6	@ tmp342, data1.1447,
	str	r5, [r6, #2572]	@ tmp342, <variable>.NewHeaderInfo.horiz_scale
	mov	r2, ip, asl #18	@ D.35796, tmp338,
	mov	r2, r2, lsr #18	@ D.35796, D.35796,
	str	r2, [r6, #2564]	@ D.35796, <variable>.NewHeaderInfo.pic_width_in_pix
	add	r1, r2, #15	@ tmp340, D.35796,
	cmp	r2, #32	@ D.35796,
	mov	r1, r1, lsr #4	@ D.35799, tmp340,
	str	r1, [r6, #2556]	@ D.35799, <variable>.NewHeaderInfo.pic_width_in_mb
	uxtb	r3, r0	@ data3,
	orr	ip, r7, r3, asl #8	@, tmp345, D.35793, data3,
	mov	r0, r3, lsr #6	@ tmp349, data3,
	str	r0, [r6, #2576]	@ tmp349, <variable>.NewHeaderInfo.vert_scale
	mov	r3, ip, asl #18	@ D.35806, tmp345,
	mov	r3, r3, lsr #18	@ D.35806, D.35806,
	str	r3, [r6, #2568]	@ D.35806, <variable>.NewHeaderInfo.pic_height_in_pix
	add	r0, r3, #15	@ tmp347, D.35806,
	mov	r0, r0, lsr #4	@ D.35809, tmp347,
	str	r0, [r6, #2560]	@ D.35809, <variable>.NewHeaderInfo.pic_height_in_mb
	mul	ip, r1, r0	@ tmp350, D.35799, D.35809
	str	ip, [r6, #2580]	@ tmp350, <variable>.NewHeaderInfo.total_mbs
	bls	.L231	@,
	cmp	r3, #32	@ D.35806,
	bls	.L231	@,
	cmp	r1, #512	@ D.35799,
	bhi	.L231	@,
	cmp	r0, #512	@ D.35809,
	bhi	.L231	@,
	ldr	r5, [r6, #116]	@ old_height, <variable>.OldHeaderInfo.pic_height_in_pix
	ldr	r7, [r6, #112]	@ old_width, <variable>.OldHeaderInfo.pic_width_in_pix
	cmp	r3, r5	@ D.35806, old_height
	bne	.L233	@,
	cmp	r2, r7	@ D.35796, old_width
	beq	.L228	@,
.L233:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	r8, [r6, #2556]	@ <variable>.NewHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	ldr	sl, [r6, #2560]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	movw	r1, #:lower16:.LC22	@,
	mov	r2, r7	@, old_width
	mov	r3, r5	@, old_height
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #22	@,
	stmia	sp, {r8, sl}	@ phole stm
	bl	dprint_vfmw	@
.L228:
	add	lr, r6, #2592	@ bc, pVp8CodecInfo,
	ldr	r0, [fp, #-64]	@, %sfp
	add	r5, lr, #8	@ bc, bc,
	bl	VP8_init_frame	@
	mov	r1, r4	@, pBs
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_StartBoolDecode	@
	ldr	r0, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r0, #0	@ <variable>.NewHeaderInfo.frame_type,
	bne	.L234	@,
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	str	r0, [r6, #2588]	@, <variable>.NewHeaderInfo.clr_type
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	str	r0, [r6, #2592]	@, <variable>.NewHeaderInfo.clamping_type
.L234:
	mov	r1, r4	@, pBs
	mov	r0, r5	@, bc
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r1, r0	@ D.35831,
	strb	r1, [r6, #2474]	@ D.35831, <variable>.NewHeaderInfo.segmentation_enabled
	cmp	r1, #0	@ D.35831,
	bne	.L305	@,
.L235:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	mov	sl, #0	@ tmp385,
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	str	r0, [r6, #2596]	@, <variable>.NewHeaderInfo.filter_type
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #3	@,
	strb	r0, [r6, #2470]	@, <variable>.NewHeaderInfo.filter_level
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	sl, [r6, #2461]	@ tmp385, <variable>.NewHeaderInfo.mode_ref_lf_delta_update
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2471]	@, <variable>.NewHeaderInfo.sharpness_level
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.35883,
	strb	r0, [r6, #2462]	@ D.35883, <variable>.NewHeaderInfo.mode_ref_lf_delta_enabled
	cmp	r0, #0	@ D.35883,
	bne	.L306	@,
.L243:
	mov	r1, r4	@, pBs
	mov	r2, #2	@,
	mov	r0, r5	@, bc
	sub	r9, fp, #44	@ tmp410,,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #7	@,
	mov	r8, #0	@ tmp406,
	strb	r0, [r6, #2473]	@, <variable>.NewHeaderInfo.multi_token_partition
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	ldrb	sl, [r6, #2465]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y1dc_delta_q
	mov	r1, r4	@, pBs
	str	r8, [r9, #-4]!	@ tmp406, q_update
	mov	r3, r9	@, tmp410
	sxtb	r2, sl	@, <variable>.NewHeaderInfo.y1dc_delta_q
	strb	r0, [r6, #2463]	@, <variable>.NewHeaderInfo.base_qindex
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	r7, [r6, #2466]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y2dc_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r9	@, tmp410
	sxtb	r2, r7	@, <variable>.NewHeaderInfo.y2dc_delta_q
	strb	r0, [r6, #2465]	@, <variable>.NewHeaderInfo.y1dc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	ip, [r6, #2467]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y2ac_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r9	@, tmp410
	sxtb	r2, ip	@, <variable>.NewHeaderInfo.y2ac_delta_q
	strb	r0, [r6, #2466]	@, <variable>.NewHeaderInfo.y2dc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	r2, [r6, #2468]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.uvdc_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r9	@, tmp410
	sxtb	r2, r2	@, <variable>.NewHeaderInfo.uvdc_delta_q
	strb	r0, [r6, #2467]	@, <variable>.NewHeaderInfo.y2ac_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	sl, [r6, #2469]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.uvac_delta_q
	mov	r3, r9	@, tmp410
	mov	r1, r4	@, pBs
	sxtb	r2, sl	@, <variable>.NewHeaderInfo.uvac_delta_q
	strb	r0, [r6, #2468]	@, <variable>.NewHeaderInfo.uvdc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldr	r7, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r7, r8	@ <variable>.NewHeaderInfo.frame_type,
	strb	r0, [r6, #2469]	@, <variable>.NewHeaderInfo.uvac_delta_q
	bne	.L307	@,
.L248:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.35963,
	strb	r0, [r6, #2505]	@ D.35963, <variable>.NewHeaderInfo.refresh_entropy_probs
	cmp	r0, #0	@ D.35963,
	bne	.L251	@,
	add	r1, r6, #2608	@, pVp8CodecInfo,
	add	lr, r6, #3760	@, pVp8CodecInfo,
	add	r0, r1, #4	@,,
	movw	r2, #1149	@,
	add	r1, lr, #1	@,,
	bl	memcpy	@
.L251:
	ldr	r9, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r9, #0	@ <variable>.NewHeaderInfo.frame_type,
	addeq	r9, r9, #1	@ tmp455, tmp455,
	streqb	r9, [r6, #2500]	@ tmp455, <variable>.NewHeaderInfo.refresh_last_frame
	beq	.L253	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [r6, #2500]	@, <variable>.NewHeaderInfo.refresh_last_frame
.L253:
	add	r2, r6, #3776	@ ivtmp.1590, pVp8CodecInfo,
	mov	r9, #0	@ i.1461,
	add	r8, r2, #2	@ ivtmp.1590, ivtmp.1590,
	str	r6, [fp, #-68]	@ pVp8CodecInfo, %sfp
.L254:
	add	r6, r9, r9, asl #5	@, tmp530, i.1461, i.1461,
	ldr	ip, .L346+4	@,
	mov	r7, r8	@ ivtmp.1335, ivtmp.1590
	mov	sl, #0	@ j,
	add	r6, ip, r6, asl #3	@, ivtmp.1332,, tmp530,
	b	.L255	@
.L268:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L308	@,
.L269:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #2]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L309	@,
.L270:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #3]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L310	@,
.L271:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #4]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L311	@,
.L272:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #5]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L312	@,
.L273:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #6]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L313	@,
.L274:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #7]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L314	@,
.L275:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #8]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L315	@,
.L276:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #9]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L316	@,
.L277:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #10]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L317	@,
.L278:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #11]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L318	@,
.L279:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #12]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L319	@,
.L280:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #13]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L320	@,
.L281:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #14]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L321	@,
.L282:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #15]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L322	@,
.L283:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #16]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L323	@,
.L284:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #17]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L324	@,
.L285:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #18]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L325	@,
.L286:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #19]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L326	@,
.L287:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #20]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L327	@,
.L288:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #21]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L328	@,
.L289:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L329	@,
.L291:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #23]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L330	@,
.L257:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #24]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L331	@,
.L258:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #25]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L332	@,
.L259:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #26]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L333	@,
.L260:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #27]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L334	@,
.L261:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #28]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L335	@,
.L262:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #29]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L336	@,
.L263:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #30]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L337	@,
.L264:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #31]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L338	@,
.L265:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #32]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L339	@,
.L267:
	add	sl, sl, #1	@ j, j,
	add	r6, r6, #33	@ ivtmp.1332, ivtmp.1332,
	cmp	sl, #8	@ j,
	add	r7, r7, #33	@ ivtmp.1335, ivtmp.1335,
	beq	.L340	@,
.L255:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L268	@,
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #0]	@,* ivtmp.1335
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L269	@,
.L308:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #2]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #1]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L270	@,
.L309:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #3]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #2]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L271	@,
.L310:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #4]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #3]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L272	@,
.L311:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #5]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #4]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L273	@,
.L312:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #6]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #5]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L274	@,
.L313:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #7]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #6]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L275	@,
.L314:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #8]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #7]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L276	@,
.L315:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #9]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #8]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L277	@,
.L316:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #10]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #9]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L278	@,
.L317:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #11]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #10]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L279	@,
.L318:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #12]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #11]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L280	@,
.L319:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #13]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #12]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L281	@,
.L320:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #14]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #13]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L282	@,
.L321:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #15]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #14]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L283	@,
.L322:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #16]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #15]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L284	@,
.L323:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #17]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #16]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L285	@,
.L324:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #18]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #17]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L286	@,
.L325:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #19]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #18]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L287	@,
.L326:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #20]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #19]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L288	@,
.L327:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #21]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #20]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L289	@,
.L328:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #21]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L291	@,
.L329:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #23]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #22]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L257	@,
.L330:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #24]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #23]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L258	@,
.L331:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #25]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #24]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L259	@,
.L332:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #26]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #25]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L260	@,
.L333:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #27]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #26]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L261	@,
.L334:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #28]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #27]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L262	@,
.L335:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #29]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #28]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L263	@,
.L336:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #30]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #29]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L264	@,
.L337:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #31]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #30]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L265	@,
.L338:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r6, #32]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r7, #31]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L267	@,
.L339:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	add	sl, sl, #1	@ j, j,
	bl	Vp8_Vfmw_DecodeValue	@
	cmp	sl, #8	@ j,
	add	r6, r6, #33	@ ivtmp.1332, ivtmp.1332,
	strb	r0, [r7, #32]	@,
	add	r7, r7, #33	@ ivtmp.1335, ivtmp.1335,
	bne	.L255	@,
.L340:
	add	r9, r9, #1	@ i.1461, i.1461,
	add	r8, r8, #264	@ ivtmp.1590, ivtmp.1590,
	cmp	r9, #4	@ i.1461,
	bne	.L254	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	ldr	r6, [fp, #-68]	@ pVp8CodecInfo, %sfp
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.35990,
	str	r0, [r6, #2532]	@ D.35990, <variable>.NewHeaderInfo.mb_no_coeff_skip
	streqb	r0, [r6, #2513]	@ D.35990, <variable>.NewHeaderInfo.prob_skip_false
	beq	.L294	@,
	mov	r2, sl	@, j
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2513]	@, <variable>.NewHeaderInfo.prob_skip_false
.L294:
	ldr	r0, [fp, #-64]	@, %sfp
	mov	r1, r5	@, bc
	mov	r2, r4	@, pBs
	bl	VP8_mb_mode_mv_init	@
	ldr	r3, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r3, #0	@ <variable>.NewHeaderInfo.frame_type,
	beq	.L295	@,
	ldr	r2, [r6, #2500]	@ tmp538,
	bic	r1, r2, #-16777216	@ tmp536, tmp538,
	bic	lr, r1, #255	@ tmp536, tmp536,
	cmp	lr, #0	@ tmp536,
	moveq	r0, #1	@ D.35778,
	beq	.L227	@,
.L295:
	ldrb	ip, [r6, #2463]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.base_qindex, <variable>.NewHeaderInfo.base_qindex
	mov	r0, #1	@ D.35778,
	strb	ip, [r6, #2464]	@ <variable>.NewHeaderInfo.base_qindex, <variable>.NewHeaderInfo.last_kf_gf_q
	b	.L227	@
.L304:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35778,
	b	.L227	@
.L307:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2501]	@, <variable>.NewHeaderInfo.refresh_golden_frame
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	ldrb	r3, [r6, #2501]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_golden_frame, <variable>.NewHeaderInfo.refresh_golden_frame
	strb	r8, [r6, #2503]	@ tmp406, <variable>.NewHeaderInfo.copy_buffer_to_gf
	cmp	r3, r8	@ <variable>.NewHeaderInfo.refresh_golden_frame,
	strb	r0, [r6, #2502]	@, <variable>.NewHeaderInfo.refresh_alt_ref_frame
	bne	.L249	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #2	@,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2503]	@, <variable>.NewHeaderInfo.copy_buffer_to_gf
.L249:
	ldrb	r8, [r6, #2502]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_alt_ref_frame, <variable>.NewHeaderInfo.refresh_alt_ref_frame
	mov	r2, #0	@ tmp439,
	strb	r2, [r6, #2504]	@ tmp439, <variable>.NewHeaderInfo.copy_buffer_to_arf
	cmp	r8, r2	@ <variable>.NewHeaderInfo.refresh_alt_ref_frame,
	bne	.L250	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	add	r2, r2, #2	@,,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2504]	@, <variable>.NewHeaderInfo.copy_buffer_to_arf
.L250:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2508]	@, <variable>.NewHeaderInfo.ref_frame_sign_bias
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [r6, #2509]	@, <variable>.NewHeaderInfo.ref_frame_sign_bias
	b	.L248	@
.L306:
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r2, r0	@ D.35888,
	strb	r2, [r6, #2461]	@ D.35888, <variable>.NewHeaderInfo.mode_ref_lf_delta_update
	cmp	r2, #0	@ D.35888,
	beq	.L243	@,
	add	lr, r6, #2480	@ ivtmp.1417, pVp8CodecInfo,
	add	r8, r6, #2496	@ ivtmp.1410, pVp8CodecInfo,
	add	r7, lr, #12	@ ivtmp.1417, ivtmp.1417,
.L245:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	ip, r0	@ D.35893,
	strb	ip, [r6, #2490]	@ D.35893, <variable>.NewHeaderInfo.ref_frame_delta_update_flag
	cmp	ip, #1	@ D.35893,
	beq	.L341	@,
.L244:
	add	r7, r7, #1	@ ivtmp.1417, ivtmp.1417,
	cmp	r7, r8	@ ivtmp.1417, ivtmp.1410
	bne	.L245	@,
	add	r9, r6, #2496	@ D.37840, pVp8CodecInfo,
	add	r8, r9, #4	@ D.37840, D.37840,
.L247:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r1, r0	@ D.35907,
	strb	r1, [r6, #2491]	@ D.35907, <variable>.NewHeaderInfo.mb_mode_delta_update_flag
	cmp	r1, #1	@ D.35907,
	beq	.L342	@,
.L246:
	add	r7, r7, #1	@ ivtmp.1410, ivtmp.1410,
	cmp	r7, r8	@ ivtmp.1410, D.37840
	bne	.L247	@,
	b	.L243	@
.L347:
	.align	2
.L346:
	.word	.LANCHOR0+1412
	.word	.LANCHOR0+1420
.L305:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #128	@,
	mov	r1, r4	@, pBs
	strb	r0, [r6, #2475]	@, <variable>.NewHeaderInfo.update_mb_segmentation_map
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r2, r0	@ D.35838,
	strb	r2, [r6, #2476]	@ D.35838, <variable>.NewHeaderInfo.update_mb_segmentation_data
	cmp	r2, #0	@ D.35838,
	bne	.L343	@,
.L236:
	ldrb	r9, [r6, #2475]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.update_mb_segmentation_map, <variable>.NewHeaderInfo.update_mb_segmentation_map
	cmp	r9, #0	@ <variable>.NewHeaderInfo.update_mb_segmentation_map,
	beq	.L235	@,
	add	r7, r6, #2464	@ tmp376, pVp8CodecInfo,
	add	r8, r6, #2480	@ D.37860, pVp8CodecInfo,
	add	r7, r7, #14	@ tmp376, tmp376,
	mov	r1, #255	@,
	mov	r2, #3	@,
	add	r8, r8, #1	@ D.37860, D.37860,
	mov	r0, r7	@, tmp376
	bl	memset	@
.L242:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r1, r0	@ D.35871,
	strb	r1, [r6, #2481]	@ D.35871, <variable>.NewHeaderInfo.segment_prob_update
	cmp	r1, #1	@ D.35871,
	beq	.L344	@,
.L241:
	add	r7, r7, #1	@ ivtmp.1424, ivtmp.1424,
	cmp	r7, r8	@ ivtmp.1424, D.37860
	bne	.L242	@,
	b	.L235	@
.L341:
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.ref_lf_deltas
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r3, r0	@ D.35900,
	strb	r3, [r6, #2472]	@ D.35900, <variable>.NewHeaderInfo.delta_sign
	cmp	r3, #1	@ D.35900,
	ldreqb	r3, [r7, #0]	@ zero_extendqisi2	@ tmp394, <variable>.NewHeaderInfo.ref_lf_deltas
	rsbeq	r3, r3, #0	@ tmp395, tmp394
	streqb	r3, [r7, #0]	@ tmp395, <variable>.NewHeaderInfo.ref_lf_deltas
	b	.L244	@
.L343:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	add	r7, r6, #2480	@ ivtmp.1438, pVp8CodecInfo,
	bl	Vp8_Vfmw_DecodeBool	@
	add	ip, r6, #2480	@, pVp8CodecInfo,
	mov	r1, #8	@,
	add	r8, r7, #6	@ ivtmp.1438, ivtmp.1438,
	mov	r7, #0	@ i,
	strb	r0, [r6, #2477]	@, <variable>.NewHeaderInfo.mb_segement_abs_delta
	add	r0, ip, #2	@,,
	bl	__memzero	@
.L237:
	add	ip, r7, #616	@ tmp371, i,
	mov	r3, r7, asl #2	@, i,
	add	r2, ip, #2	@ tmp371, tmp371,
	str	r7, [fp, #-72]	@ i, %sfp
	str	r3, [fp, #-68]	@, %sfp
	add	sl, r6, r2, asl #2	@, tmp374, pVp8CodecInfo, tmp371,
	add	lr, sl, #10	@ ivtmp.1431, tmp374,
	mov	sl, r8	@ ivtmp.1438, ivtmp.1438
	mov	r8, r6	@ pVp8CodecInfo, pVp8CodecInfo
	mov	r7, lr	@ ivtmp.1431, ivtmp.1431
	b	.L240	@
.L239:
	strb	r6, [r7], #1	@ tmp, <variable>.NewHeaderInfo.segment_feature_data
	cmp	r7, sl	@ ivtmp.1431, ivtmp.1438
	beq	.L345	@,
.L240:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	mov	r6, #0	@ tmp,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r3, r0	@ D.35850,
	strb	r3, [r8, #2460]	@ D.35850, <variable>.NewHeaderInfo.quantizer_update
	cmp	r3, #1	@ D.35850,
	bne	.L239	@,
	ldr	r6, [fp, #-68]	@, %sfp
	mov	r1, r4	@, pBs
	mov	r0, r5	@, bc
	ldr	r2, [r9, r6]	@, mb_feature_data_bits
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	uxtb	r6, r0	@ tmp,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	rsb	r1, r6, #0	@ tmp369, tmp
	cmp	r0, #0	@,
	uxtbne	r6, r1	@ tmp, tmp369
	b	.L239	@
.L345:
	ldr	r0, [fp, #-72]	@ i, %sfp
	mov	r6, r8	@ pVp8CodecInfo, pVp8CodecInfo
	add	r8, sl, #4	@ ivtmp.1438, ivtmp.1438,
	add	r7, r0, #1	@ i, i,
	cmp	r7, #2	@ i,
	beq	.L236	@,
	b	.L237	@
.L342:
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.mode_lf_deltas
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldrneb	r3, [r7, #0]	@ zero_extendqisi2	@ tmp401, <variable>.NewHeaderInfo.mode_lf_deltas
	rsbne	r3, r3, #0	@ tmp402, tmp401
	strneb	r3, [r7, #0]	@ tmp402, <variable>.NewHeaderInfo.mode_lf_deltas
	b	.L246	@
.L231:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35778,
	b	.L227	@
.L344:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.mb_segment_tree_probs
	b	.L241	@
	.fnend
	.size	VP8_GetPictureHeader, .-VP8_GetPictureHeader
	.align	2
	.global	VP8DEC_Decode
	.type	VP8DEC_Decode, %function
VP8DEC_Decode:
	.fnstart
.LFB1377:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r1, #0]	@ D.36619, <variable>.VirAddr
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [r0, #3152]	@ D.36619, <variable>.StreamParam.VirAddr
	ldr	r2, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r0, #3156]	@ <variable>.PhyAddr, <variable>.StreamParam.PhyAddr
	ldr	r2, [r1, #12]	@ D.36622, <variable>.LenInByte
	cmp	r2, #2	@ D.36622,
	str	r2, [r0, #3160]	@ D.36622, <variable>.StreamParam.Length
	ble	.L369	@,
	add	r6, r0, #3168	@ pBs, pCtx,
	add	r5, r0, #3184	@ pVp8CodecInfo, pCtx,
	add	r5, r5, #12	@ pVp8CodecInfo, pVp8CodecInfo,
	mov	r1, r3	@, D.36619
	mov	r0, r6	@, pBs
	bl	BsInit	@
	add	r3, r4, #3152	@ tmp158, pCtx,
	mov	r0, r6	@, pBs
	str	r3, [r4, #3164]	@ tmp158, <variable>.pVp8StreamParam
	mov	r1, r5	@, pVp8CodecInfo
	ldr	r2, [r4, #3160]	@, <variable>.StreamParam.Length
	bl	VP8_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L370	@,
	movw	r1, #8120	@ tmp161,
	ldr	r0, [r4, r1]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	bne	.L371	@,
.L352:
	movw	r7, #:lower16:g_event_report	@ tmp169,
	movt	r7, #:upper16:g_event_report	@ tmp169,
	ldr	r3, [r7, #0]	@ g_event_report.464, g_event_report
	cmp	r3, #0	@ g_event_report.464,
	beq	.L354	@,
	movw	lr, #5752	@ tmp172,
	ldr	r6, [r4, #3300]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldrh	ip, [r4, lr]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r1, #5756	@ tmp174,
	ldr	r9, [r4, #3304]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb
	movw	r8, #8520	@ tmp176,
	strh	r6, [fp, #-52]	@ movhi	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, para
	sub	r2, fp, #52	@,,
	strh	ip, [fp, #-48]	@ movhi	@, para
	ldrh	sl, [r4, r1]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r1, #2	@,
	strh	r9, [fp, #-50]	@ movhi	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, para
	strh	sl, [fp, #-46]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report.464
.L354:
	movw	r6, #8520	@ tmp179,
	movw	r8, #8136	@ tmp181,
	movw	r9, #8140	@ tmp185,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	sl, #8144	@ tmp189,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r9]	@, <variable>.Vp8CodecInfo.AltFsID
	add	r7, r4, #8128	@ D.36656, pCtx,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	ip, #0	@ tmp192,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r7, r7, #40	@ D.36656, D.36656,
	str	ip, [r4, r8]	@ tmp192, <variable>.Vp8CodecInfo.GoldenFsID
	str	ip, [r4, r9]	@ tmp192, <variable>.Vp8CodecInfo.AltFsID
	str	ip, [r4, sl]	@ tmp192, <variable>.Vp8CodecInfo.LastFsID
	str	ip, [fp, #-56]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r2, #8116	@ tmp202,
	str	r0, [r4, r8]	@ D.36655, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r1, [fp, #-56]	@,
	str	r0, [r4, sl]	@ D.36655, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r9]	@ D.36655, <variable>.Vp8CodecInfo.AltFsID
	str	r1, [r4, r2]	@ tmp192, <variable>.Vp8CodecInfo.RefNum
	mov	r1, r7	@, D.36656
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r3, #5752	@ tmp207,
	ldr	r2, [r4, r3]	@ temp.1627, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #512	@ temp.1627,
	bhi	.L372	@,
	movw	lr, #5756	@ tmp209,
	ldr	r3, [r4, lr]	@ prephitmp.1607, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1607,
	bhi	.L356	@,
	ldr	r3, [r4, #0]	@ D.36663, <variable>.pstExtraData
	ldr	r2, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L358	@,
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L373	@,
.L358:
	movw	lr, #8520	@ tmp215,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L368	@,
.L359:
	mov	r0, r4	@, pCtx
	bl	VP8_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L374	@,
.L353:
	mov	r0, r4	@, pCtx
	bl	VP8_DecodeDecide	@
	cmp	r0, #1	@ ret.1630,
	mov	r6, r0	@ ret.1630,
	beq	.L360	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	b	.L350	@
.L370:
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
.L350:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L369:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L350	@
.L371:
	movw	lr, #5752	@ tmp163,
	ldr	r6, [r4, #3300]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	ip, [r4, lr]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r6, ip	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	bne	.L352	@,
	movw	r0, #5756	@ tmp166,
	ldr	r2, [r4, #3304]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r4, r0]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	bne	.L352	@,
	b	.L353	@
.L372:
	movw	r0, #5756	@ tmp208,
	ldr	r3, [r4, r0]	@ prephitmp.1607, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
.L356:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L350	@
.L374:
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	b	.L350	@
.L373:
	movw	ip, #8120	@ tmp213,
	ldr	r1, [r4, ip]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	bne	.L359	@,
.L368:
	mov	r0, r7	@, D.36656
	bl	ResetVoQueue	@
	b	.L359	@
.L360:
	mov	r0, r4	@, pCtx
	bl	VP8_GetImageBuffer	@
	cmp	r0, #1	@,
	beq	.L361	@,
	mov	r0, r6	@, ret.1630
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L350	@
.L361:
	movw	r7, #8520	@ tmp220,
	movw	r6, #8148	@ tmp222,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L375	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldrd	r8, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r8, [r3, #8]	@ <variable>.pts, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [lr, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r8, [r3, #24]	@ <variable>.DispTime, pImage,
	mvn	r8, #0	@ tmp241,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r9, #0	@,
	ldr	ip, [r2, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r3, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r3, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	mov	ip, #0	@ tmp239,
	str	lr, [r3, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r3, #128]	@ tmp239, <variable>.is_fld_save
	str	lr, [r3, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [r2, #56]	@ tmp241, <variable>.pstExtraData,
	ldrd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImage,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	movw	r0, #8156	@ tmp245,
	ldr	r2, [r4, r0]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.FrameType,
	bne	.L363	@,
	movw	r3, #8140	@ tmp247,
	ldr	r1, [r4, r6]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	ldr	r3, [r4, r3]	@ prephitmp.1605, <variable>.Vp8CodecInfo.AltFsID
	cmp	r3, r1	@ prephitmp.1605, <variable>.Vp8CodecInfo.CurFsID
	beq	.L364	@,
	mov	r1, r3	@, prephitmp.1605
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6]	@ prephitmp.1605, <variable>.Vp8CodecInfo.CurFsID
.L364:
	movw	r0, #8144	@ tmp253,
	ldr	r1, [r4, r0]	@ prephitmp.1642, <variable>.Vp8CodecInfo.LastFsID
	cmp	r3, r1	@ prephitmp.1605, prephitmp.1642
	beq	.L365	@,
	movw	lr, #8520	@ tmp254,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	ip, #8148	@ tmp256,
	ldr	r3, [r4, ip]	@ prephitmp.1605, <variable>.Vp8CodecInfo.CurFsID
.L365:
	movw	r2, #8136	@ tmp257,
	ldr	r1, [r4, r2]	@ temp.1644, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r3, r1	@ prephitmp.1605, temp.1644
	beq	.L366	@,
	movw	r3, #8520	@ tmp258,
	mov	r2, #0	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L366:
	movw	r0, #8116	@ tmp260,
	mov	r1, #0	@ tmp261,
	str	r1, [r4, r0]	@ tmp261, <variable>.Vp8CodecInfo.RefNum
.L363:
	mov	r0, r4	@, pCtx
	bl	VP8_Set_DecParam	@
	mov	r0, r5	@, pVp8CodecInfo
	bl	VP8_Update_PictHeader	@
	b	.L350	@
.L375:
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #1893	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L350	@
	.fnend
	.size	VP8DEC_Decode, .-VP8DEC_Decode
	.align	2
	.global	VP8DEC_Init
	.type	VP8DEC_Init, %function
VP8DEC_Init:
	.fnstart
.LFB1364:
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
	mov	r5, #8512	@ tmp139,
	ldr	r7, [r0, r5]	@ D.35547, <variable>.ImageQue.ResetMagicWord
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #8528	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, r5]	@ D.35547, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #8520	@ tmp143,
	cmn	r0, #1	@ D.35555,
	str	r0, [r4, r3]	@ D.35555, <variable>.ChanID
	beq	.L380	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #8120	@ tmp145,
	movw	lr, #8108	@ tmp147,
	mov	r3, #0	@ tmp146,
	mov	r0, #1024	@ tmp148,
	str	r3, [r4, r2]	@ tmp146, <variable>.Vp8CodecInfo.Imgbuf_allocated
	str	r0, [r4, lr]	@ tmp148, <variable>.Vp8CodecInfo.ddr_stride
	movw	r2, #8112	@ tmp149,
	ldr	lr, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r1, #8128	@ tmp156,
	movw	r0, #8124	@ tmp154,
	str	r3, [r4, r1]	@ tmp146, <variable>.Vp8CodecInfo.LastSharpnessLevel
	mov	r3, #3	@ tmp153,
	str	r3, [r4, r0]	@ tmp153, <variable>.Vp8CodecInfo.LastFilterType
	str	lr, [r4, r2]	@ <variable>.s32DecMode, <variable>.Vp8CodecInfo.UsedDecMode
	movw	lr, #8160	@ tmp152,
	str	r3, [r4, lr]	@ tmp153, <variable>.Vp8CodecInfo.LastFrameType
	movw	r1, #8132	@ tmp158,
	ldr	r2, [ip, #44]	@ <variable>.s32Vp8SegIdMemAddr, <variable>.s32Vp8SegIdMemAddr
	mov	r0, #1	@ D.35560,
	str	r2, [r4, r1]	@ <variable>.s32Vp8SegIdMemAddr, <variable>.Vp8CodecInfo.SegIdAddr
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L380:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35560,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP8DEC_Init, .-VP8DEC_Init
	.align	2
	.global	VP8_SetImgFormat
	.type	VP8_SetImgFormat, %function
VP8_SetImgFormat:
	.fnstart
.LFB1362:
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
	movw	r1, #8520	@ tmp144,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #8148	@ tmp146,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.Vp8CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #8156	@ tmp148,
	mov	lr, #0	@ tmp153,
	ldr	r2, [r5, r1]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	mov	r1, lr	@, tmp153
	strb	lr, [r4, #324]	@ tmp153, <variable>.ImageDnr.pic_structure
	mov	lr, #8	@ tmp157,
	and	r3, r2, #3	@ D.35380, <variable>.Vp8CodecInfo.FrameType,
	str	lr, [r4, #344]	@ tmp157, <variable>.ImageDnr.QP_U
	orr	ip, r3, #7168	@ tmp150, D.35380,
	mov	r2, #1	@ tmp155,
	str	r3, [r4, #136]	@ D.35380, <variable>.bottom_fld_type
	orr	ip, ip, #32	@ tmp150, tmp150,
	str	r3, [r4, #132]	@ D.35380, <variable>.top_fld_type
	str	ip, [r4, #140]	@ tmp150, <variable>.format
	mov	ip, #13	@ tmp152,
	strb	r2, [r4, #329]	@ tmp155, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #336]	@ tmp152, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #331]	@ tmp155, <variable>.ImageDnr.use_pic_qp_en
	str	lr, [r4, #340]	@ tmp157, <variable>.ImageDnr.QP_Y
	str	lr, [r4, #348]	@ tmp157, <variable>.ImageDnr.QP_V
	bl	SetAspectRatio	@
	mov	r3, #5760	@ tmp162,
	ldr	r3, [r5, r3]	@ prephitmp.1684, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
	movw	r2, #5764	@ tmp163,
	str	r3, [r4, #144]	@ prephitmp.1684, <variable>.image_width
	ldr	r2, [r5, r2]	@ D.35385, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_pix
	str	r2, [r4, #148]	@ D.35385, <variable>.image_height
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.1684
	beq	.L387	@,
.L383:
	ldr	ip, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r3, r3, lsr #1	@ tmp178, prephitmp.1684,
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #160]	@ tmp178, <variable>.disp_center_x
	mov	r1, ip, lsr #1	@ tmp180, <variable>.image_height,
	str	ip, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #164]	@ tmp180, <variable>.disp_center_y
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L387:
	ldr	r1, [r4, #172]	@ D.35390, <variable>.image_stride
	add	r0, r2, #15	@ tmp167, D.35385,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r2, r0, lsr #4	@ tmp168, tmp167,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp166, D.35390,
	add	ip, r3, r1	@ tmp173, <variable>.luma_phy_addr, D.35390
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r2, r2, lr	@ D.35396, tmp168, tmp166
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	ip, [r4, #96]	@ tmp173, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r2, r3	@ tmp170, D.35396, <variable>.luma_phy_addr
	add	r2, r0, r2	@ tmp172, <variable>.luma_vir_addr, D.35396
	str	r3, [r4, #108]	@ tmp170, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp174, tmp170, D.35390
	str	r2, [r4, #36]	@ tmp172, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp174, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp170
	str	r3, [r4, #92]	@ tmp170, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.1684, <variable>.image_width
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L383	@
	.fnend
	.size	VP8_SetImgFormat, .-VP8_SetImgFormat
	.align	2
	.global	VP8DEC_VDMPostProc
	.type	VP8DEC_VDMPostProc, %function
VP8DEC_VDMPostProc:
	.fnstart
.LFB1363:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #13	@,
	mov	r1, r4	@, pCtx
	movw	r5, #8520	@ tmp154,
	bl	ReleasePacket	@
	movw	r3, #8148	@ tmp156,
	ldr	r1, [r4, r3]	@, <variable>.Vp8CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L429	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L391	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.425,
	str	r6, [r3, #180]	@ iftmp.425, <variable>.error_level
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ D.35440, <variable>.s32RefErrThr
	cmp	r6, r3	@ iftmp.425, D.35440
	bhi	.L430	@,
	mov	r0, r4	@, pCtx
	movw	r5, #8112	@ tmp186,
	bl	VP8_SetImgFormat	@
	ldr	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #2	@ <variable>.Vp8CodecInfo.UsedDecMode,
	beq	.L431	@,
.L393:
	ldr	lr, [r4, #3264]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame
	cmp	lr, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame,
	bne	.L395	@,
.L394:
	movw	r5, #8152	@ tmp191,
	movw	r1, #8520	@ tmp193,
	movw	r2, #8148	@ tmp195,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	r3, #0	@ tmp192,
	ldr	r1, [r4, r2]	@, <variable>.Vp8CodecInfo.CurFsID
	str	r3, [r4, r5]	@ tmp192, <variable>.Vp8CodecInfo.ToQueFsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r5]	@ prephitmp.1716, <variable>.Vp8CodecInfo.ToQueFsID
.L396:
	cmn	r1, #1	@ prephitmp.1716,
	beq	.L397	@,
	movw	r5, #8520	@ tmp200,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L432	@,
	movw	r7, #8152	@ tmp205,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	ip, r4, #8128	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #13	@,
	add	r3, ip, #40	@,,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	bne	.L433	@,
.L397:
	movw	r0, #8156	@ tmp229,
	movw	r3, #8116	@ tmp224,
	ldr	r5, [r4, r0]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	movw	r1, #8144	@ tmp228,
	ldr	r2, [r4, r3]	@ <variable>.Vp8CodecInfo.RefNum, <variable>.Vp8CodecInfo.RefNum
	cmp	r5, #0	@ <variable>.Vp8CodecInfo.FrameType,
	ldr	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.LastFsID
	add	lr, r2, #1	@ tmp227, <variable>.Vp8CodecInfo.RefNum,
	str	lr, [r4, r3]	@ tmp227, <variable>.Vp8CodecInfo.RefNum
	bne	.L434	@,
	movw	ip, #8136	@ tmp232,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r5, r8	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L426	@,
.L401:
	movw	r3, #8140	@ tmp235,
	ldr	lr, [r4, r3]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r5, lr	@ LastFsId, <variable>.Vp8CodecInfo.AltFsID
	beq	.L426	@,
	movw	r0, #8148	@ tmp238,
	ldr	r1, [r4, r0]	@ prephitmp.1754, <variable>.Vp8CodecInfo.CurFsID
	subs	r8, r5, r1	@ flag_last_0, LastFsId, prephitmp.1754
	movne	r8, #1	@ flag_last_0
.L402:
	movw	lr, #8144	@ tmp240,
	movw	ip, #8520	@ tmp241,
	str	r1, [r4, lr]	@ prephitmp.1754, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L400:
	ldrb	r3, [r4, #3248]	@ zero_extendqisi2	@ D.35483, <variable>.Vp8CodecInfo.OldHeaderInfo.copy_buffer_to_arf
	cmp	r3, #1	@ D.35483,
	beq	.L435	@,
	cmp	r3, #2	@ D.35483,
	beq	.L436	@,
.L406:
	ldrb	r3, [r4, #3247]	@ zero_extendqisi2	@ D.35499, <variable>.Vp8CodecInfo.OldHeaderInfo.copy_buffer_to_gf
	cmp	r3, #1	@ D.35499,
	beq	.L437	@,
	cmp	r3, #2	@ D.35499,
	beq	.L438	@,
.L411:
	movw	r2, #8156	@ tmp287,
	ldr	r1, [r4, r2]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L414	@,
	ldrb	ip, [r4, #3245]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame,
	beq	.L415	@,
.L414:
	movw	r0, #8136	@ tmp290,
	movw	r3, #8144	@ tmp291,
	ldr	r1, [r4, r0]	@ prephitmp.1745, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	lr, [r4, r3]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, lr	@ prephitmp.1745, <variable>.Vp8CodecInfo.LastFsID
	beq	.L427	@,
	movw	ip, #8140	@ tmp294,
	ldr	r2, [r4, ip]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, r2	@ prephitmp.1745, <variable>.Vp8CodecInfo.AltFsID
	beq	.L427	@,
	movw	r6, #8148	@ tmp297,
	ldr	r3, [r4, r6]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	cmp	r1, r3	@ prephitmp.1745, <variable>.Vp8CodecInfo.CurFsID
	beq	.L417	@,
	movw	r2, #8520	@ tmp299,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1745, <variable>.Vp8CodecInfo.CurFsID
.L417:
	movw	r0, #8136	@ tmp302,
	movw	ip, #8520	@ tmp303,
	str	r1, [r4, r0]	@ prephitmp.1745, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L415:
	ldr	r1, [r4, #3260]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type, <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type,
	beq	.L419	@,
	ldrb	lr, [r4, #3246]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame
	cmp	lr, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame,
	beq	.L420	@,
.L419:
	movw	ip, #8140	@ tmp307,
	movw	r2, #8144	@ tmp308,
	ldr	r1, [r4, ip]	@ prephitmp.1736, <variable>.Vp8CodecInfo.AltFsID
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r3	@ prephitmp.1736, <variable>.Vp8CodecInfo.LastFsID
	beq	.L428	@,
	movw	lr, #8136	@ tmp311,
	ldr	r0, [r4, lr]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, r0	@ prephitmp.1736, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L428	@,
	movw	r6, #8148	@ tmp314,
	ldr	r2, [r4, r6]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	cmp	r1, r2	@ prephitmp.1736, <variable>.Vp8CodecInfo.CurFsID
	beq	.L422	@,
	movw	ip, #8520	@ tmp316,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1736, <variable>.Vp8CodecInfo.CurFsID
.L422:
	movw	r0, #8140	@ tmp319,
	movw	lr, #8520	@ tmp320,
	str	r1, [r4, r0]	@ prephitmp.1736, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L420:
	cmp	r8, #1	@ flag_last_0,
	movne	r8, #1	@ ret,
	beq	.L439	@,
.L390:
	mov	r0, r8	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L395:
	movw	r8, #8148	@ tmp198,
	movw	r0, #8152	@ tmp199,
	ldr	r1, [r4, r8]	@ prephitmp.1716, <variable>.Vp8CodecInfo.CurFsID
	str	r1, [r4, r0]	@ prephitmp.1716, <variable>.Vp8CodecInfo.ToQueFsID
	b	.L396	@
.L434:
	ldrb	r8, [r4, #3244]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame
	cmp	r8, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame,
	beq	.L400	@,
	movw	ip, #8136	@ tmp232,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r5, r8	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	bne	.L401	@,
.L426:
	movw	r2, #8148	@ tmp237,
	mov	r8, #0	@ flag_last_0,
	ldr	r1, [r4, r2]	@ prephitmp.1754, <variable>.Vp8CodecInfo.CurFsID
	b	.L402	@
.L428:
	movw	r3, #8148	@ tmp313,
	movw	r0, #8140	@ tmp319,
	ldr	r1, [r4, r3]	@ prephitmp.1736, <variable>.Vp8CodecInfo.CurFsID
	movw	lr, #8520	@ tmp320,
	mov	r2, #1	@,
	str	r1, [r4, r0]	@ prephitmp.1736, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L420	@
.L427:
	movw	lr, #8148	@ tmp296,
	movw	r0, #8136	@ tmp302,
	ldr	r1, [r4, lr]	@ prephitmp.1745, <variable>.Vp8CodecInfo.CurFsID
	movw	ip, #8520	@ tmp303,
	mov	r2, #1	@,
	str	r1, [r4, r0]	@ prephitmp.1745, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L415	@
.L391:
	mov	r5, #0	@ tmp325,
	mov	r0, r4	@, pCtx
	str	r5, [r3, #180]	@ tmp325, <variable>.error_level
	movw	r5, #8112	@ tmp186,
	bl	VP8_SetImgFormat	@
	ldr	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #2	@ <variable>.Vp8CodecInfo.UsedDecMode,
	bne	.L393	@,
.L431:
	movw	ip, #8156	@ tmp188,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r8, #0	@ <variable>.Vp8CodecInfo.FrameType,
	bne	.L394	@,
	b	.L393	@
.L437:
	movw	lr, #8136	@ tmp265,
	movw	ip, #8144	@ tmp266,
	ldr	r1, [r4, lr]	@ temp.1760, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r8	@ temp.1760, <variable>.Vp8CodecInfo.LastFsID
	beq	.L410	@,
	movw	r2, #8140	@ tmp268,
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, r3	@ temp.1760, <variable>.Vp8CodecInfo.AltFsID
	beq	.L410	@,
	cmp	r5, r1	@ LastFsId, temp.1760
	beq	.L410	@,
	movw	r8, #8520	@ tmp270,
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L410:
	movw	r1, #8136	@ tmp272,
	movw	ip, #8520	@ tmp273,
	str	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	mov	r1, r5	@, LastFsId
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	mov	r8, #0	@ flag_last_0,
	b	.L411	@
.L435:
	movw	r2, #8140	@ tmp243,
	movw	r3, #8144	@ tmp244,
	ldr	r1, [r4, r2]	@ temp.1748, <variable>.Vp8CodecInfo.AltFsID
	ldr	r8, [r4, r3]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r8	@ temp.1748, <variable>.Vp8CodecInfo.LastFsID
	beq	.L405	@,
	movw	ip, #8136	@ tmp246,
	ldr	r0, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, r0	@ temp.1748, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L405	@,
	cmp	r5, r1	@ LastFsId, temp.1748
	beq	.L405	@,
	movw	lr, #8520	@ tmp248,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L405:
	movw	r1, #8140	@ tmp250,
	movw	r8, #8520	@ tmp251,
	str	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r1, r5	@, LastFsId
	bl	FSP_SetRef	@
	mov	r8, #0	@ flag_last_0,
	b	.L406	@
.L433:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp214,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp214, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp214, <variable>.p_usrdat
	mov	r2, sl	@, tmp214
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, sl	@, tmp214
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L390	@
.L438:
	movw	r3, #8136	@ tmp275,
	movw	lr, #8144	@ tmp276,
	ldr	r1, [r4, r3]	@ prephitmp.1752, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r0, [r4, lr]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r0	@ prephitmp.1752, <variable>.Vp8CodecInfo.LastFsID
	beq	.L440	@,
	movw	r6, #8140	@ tmp279,
	ldr	ip, [r4, r6]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, ip	@ prephitmp.1752, <variable>.Vp8CodecInfo.AltFsID
	beq	.L413	@,
	movw	lr, #8520	@ tmp281,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1752, <variable>.Vp8CodecInfo.AltFsID
.L413:
	movw	r0, #8136	@ tmp284,
	movw	r3, #8520	@ tmp285,
	str	r1, [r4, r0]	@ prephitmp.1752, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L411	@
.L436:
	movw	r0, #8140	@ tmp253,
	movw	r2, #8144	@ tmp254,
	ldr	r1, [r4, r0]	@ prephitmp.1756, <variable>.Vp8CodecInfo.AltFsID
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r3	@ prephitmp.1756, <variable>.Vp8CodecInfo.LastFsID
	beq	.L441	@,
	movw	r6, #8136	@ tmp257,
	ldr	lr, [r4, r6]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, lr	@ prephitmp.1756, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L408	@,
	movw	r3, #8520	@ tmp259,
	mov	r2, #0	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1756, <variable>.Vp8CodecInfo.GoldenFsID
.L408:
	movw	r0, #8140	@ tmp262,
	movw	r2, #8520	@ tmp263,
	str	r1, [r4, r0]	@ prephitmp.1756, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetRef	@
	b	.L406	@
.L439:
	movw	r3, #8520	@ tmp322,
	mov	r1, r5	@, LastFsId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	b	.L390	@
.L440:
	movw	r2, #8140	@ tmp278,
	ldr	r1, [r4, r2]	@ prephitmp.1752, <variable>.Vp8CodecInfo.AltFsID
	b	.L413	@
.L441:
	movw	ip, #8136	@ tmp256,
	ldr	r1, [r4, ip]	@ prephitmp.1756, <variable>.Vp8CodecInfo.GoldenFsID
	b	.L408	@
.L430:
	mov	r2, r6	@, iftmp.425
	movw	sl, #8136	@ tmp163,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	movw	r6, #8140	@ tmp167,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	movw	r7, #8144	@ tmp171,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.AltFsID
	mvn	r8, #0	@ ret,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp174,
	str	r5, [r4, sl]	@ tmp174, <variable>.Vp8CodecInfo.GoldenFsID
	str	r5, [r4, r6]	@ tmp174, <variable>.Vp8CodecInfo.AltFsID
	str	r5, [r4, r7]	@ tmp174, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #8116	@ tmp184,
	str	r5, [r4, r1]	@ tmp174, <variable>.Vp8CodecInfo.RefNum
	str	r0, [r4, sl]	@ D.35448, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.35448, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r6]	@ D.35448, <variable>.Vp8CodecInfo.AltFsID
	b	.L390	@
.L432:
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #622	@,
	movt	r1, #:upper16:.LC33	@,
	mvn	r8, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L390	@
.L429:
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L390	@
	.fnend
	.size	VP8DEC_VDMPostProc, .-VP8DEC_VDMPostProc
	.global	default_coef_probs
	.global	vp8_coef_update_probs
	.global	vp8_default_mv_context
	.global	vp8_mv_update_probs
	.global	VP8_VFMWBITREADER_NORM
	.global	default_ymode_prob
	.global	default_uv_mode_prob
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.36100, %object
	.size	__func__.36100, 17
__func__.36100:
	.ascii	"VP8_DecodeDecide\000"
	.space	3
	.type	vp8_default_mv_context, %object
	.size	vp8_default_mv_context, 38
vp8_default_mv_context:
@ prob:
	.byte	-94
	.byte	-128
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-128
	.byte	-127
	.byte	-124
	.byte	75
	.byte	-111
	.byte	-78
	.byte	-50
	.byte	-17
	.byte	-2
	.byte	-2
@ prob:
	.byte	-92
	.byte	-128
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.byte	-128
	.byte	-126
	.byte	-126
	.byte	74
	.byte	-108
	.byte	-76
	.byte	-53
	.byte	-20
	.byte	-2
	.byte	-2
	.space	2
	.type	default_coef_probs, %object
	.size	default_coef_probs, 1056
default_coef_probs:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	-120
	.byte	-2
	.byte	-1
	.byte	-28
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-67
	.byte	-127
	.byte	-14
	.byte	-1
	.byte	-29
	.byte	-43
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	106
	.byte	126
	.byte	-29
	.byte	-4
	.byte	-42
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	98
	.byte	-8
	.byte	-1
	.byte	-20
	.byte	-30
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-75
	.byte	-123
	.byte	-18
	.byte	-2
	.byte	-35
	.byte	-22
	.byte	-1
	.byte	-102
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	78
	.byte	-122
	.byte	-54
	.byte	-9
	.byte	-58
	.byte	-76
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-71
	.byte	-7
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-106
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	77
	.byte	110
	.byte	-40
	.byte	-1
	.byte	-20
	.byte	-26
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	101
	.byte	-5
	.byte	-1
	.byte	-15
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-86
	.byte	-117
	.byte	-15
	.byte	-4
	.byte	-20
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	37
	.byte	116
	.byte	-60
	.byte	-13
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-52
	.byte	-2
	.byte	-1
	.byte	-11
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-49
	.byte	-96
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	102
	.byte	103
	.byte	-25
	.byte	-1
	.byte	-45
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-104
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-79
	.byte	-121
	.byte	-13
	.byte	-1
	.byte	-22
	.byte	-31
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	80
	.byte	-127
	.byte	-45
	.byte	-1
	.byte	-62
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-10
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-58
	.byte	35
	.byte	-19
	.byte	-33
	.byte	-63
	.byte	-69
	.byte	-94
	.byte	-96
	.byte	-111
	.byte	-101
	.byte	62
	.byte	-125
	.byte	45
	.byte	-58
	.byte	-35
	.byte	-84
	.byte	-80
	.byte	-36
	.byte	-99
	.byte	-4
	.byte	-35
	.byte	1
	.byte	68
	.byte	47
	.byte	-110
	.byte	-48
	.byte	-107
	.byte	-89
	.byte	-35
	.byte	-94
	.byte	-1
	.byte	-33
	.byte	-128
	.byte	1
	.byte	-107
	.byte	-15
	.byte	-1
	.byte	-35
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-115
	.byte	-22
	.byte	-3
	.byte	-34
	.byte	-36
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	81
	.byte	99
	.byte	-75
	.byte	-14
	.byte	-80
	.byte	-66
	.byte	-7
	.byte	-54
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-127
	.byte	-24
	.byte	-3
	.byte	-42
	.byte	-59
	.byte	-14
	.byte	-60
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	99
	.byte	121
	.byte	-46
	.byte	-6
	.byte	-55
	.byte	-58
	.byte	-1
	.byte	-54
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	23
	.byte	91
	.byte	-93
	.byte	-14
	.byte	-86
	.byte	-69
	.byte	-9
	.byte	-46
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-56
	.byte	-10
	.byte	-1
	.byte	-22
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	109
	.byte	-78
	.byte	-15
	.byte	-1
	.byte	-25
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	44
	.byte	-126
	.byte	-55
	.byte	-3
	.byte	-51
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-124
	.byte	-17
	.byte	-5
	.byte	-37
	.byte	-47
	.byte	-1
	.byte	-91
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	94
	.byte	-120
	.byte	-31
	.byte	-5
	.byte	-38
	.byte	-66
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	22
	.byte	100
	.byte	-82
	.byte	-11
	.byte	-70
	.byte	-95
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-7
	.byte	-1
	.byte	-24
	.byte	-21
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	124
	.byte	-113
	.byte	-15
	.byte	-1
	.byte	-29
	.byte	-22
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	35
	.byte	77
	.byte	-75
	.byte	-5
	.byte	-63
	.byte	-45
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-99
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	121
	.byte	-115
	.byte	-21
	.byte	-1
	.byte	-31
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	45
	.byte	99
	.byte	-68
	.byte	-5
	.byte	-61
	.byte	-39
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-53
	.byte	1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	1
	.byte	-79
	.byte	-1
	.byte	-32
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	9
	.byte	-8
	.byte	-5
	.byte	-49
	.byte	-48
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-81
	.byte	13
	.byte	-32
	.byte	-13
	.byte	-63
	.byte	-71
	.byte	-7
	.byte	-58
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	73
	.byte	17
	.byte	-85
	.byte	-35
	.byte	-95
	.byte	-77
	.byte	-20
	.byte	-89
	.byte	-1
	.byte	-22
	.byte	-128
	.byte	1
	.byte	95
	.byte	-9
	.byte	-3
	.byte	-44
	.byte	-73
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-17
	.byte	90
	.byte	-12
	.byte	-6
	.byte	-45
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-101
	.byte	77
	.byte	-61
	.byte	-8
	.byte	-68
	.byte	-61
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	24
	.byte	-17
	.byte	-5
	.byte	-38
	.byte	-37
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-55
	.byte	51
	.byte	-37
	.byte	-1
	.byte	-60
	.byte	-70
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	69
	.byte	46
	.byte	-66
	.byte	-17
	.byte	-55
	.byte	-38
	.byte	-1
	.byte	-28
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-65
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-33
	.byte	-91
	.byte	-7
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	124
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-66
	.byte	36
	.byte	-26
	.byte	-1
	.byte	-20
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-30
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-9
	.byte	-64
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-16
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-122
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-43
	.byte	62
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	55
	.byte	93
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-54
	.byte	24
	.byte	-43
	.byte	-21
	.byte	-70
	.byte	-65
	.byte	-36
	.byte	-96
	.byte	-16
	.byte	-81
	.byte	-1
	.byte	126
	.byte	38
	.byte	-74
	.byte	-24
	.byte	-87
	.byte	-72
	.byte	-28
	.byte	-82
	.byte	-1
	.byte	-69
	.byte	-128
	.byte	61
	.byte	46
	.byte	-118
	.byte	-37
	.byte	-105
	.byte	-78
	.byte	-16
	.byte	-86
	.byte	-1
	.byte	-40
	.byte	-128
	.byte	1
	.byte	112
	.byte	-26
	.byte	-6
	.byte	-57
	.byte	-65
	.byte	-9
	.byte	-97
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-90
	.byte	109
	.byte	-28
	.byte	-4
	.byte	-45
	.byte	-41
	.byte	-1
	.byte	-82
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	39
	.byte	77
	.byte	-94
	.byte	-24
	.byte	-84
	.byte	-76
	.byte	-11
	.byte	-78
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	52
	.byte	-36
	.byte	-10
	.byte	-58
	.byte	-57
	.byte	-7
	.byte	-36
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	124
	.byte	74
	.byte	-65
	.byte	-13
	.byte	-73
	.byte	-63
	.byte	-6
	.byte	-35
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	24
	.byte	71
	.byte	-126
	.byte	-37
	.byte	-102
	.byte	-86
	.byte	-13
	.byte	-74
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-31
	.byte	-7
	.byte	-37
	.byte	-16
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	-106
	.byte	-30
	.byte	-4
	.byte	-40
	.byte	-51
	.byte	-1
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	28
	.byte	108
	.byte	-86
	.byte	-14
	.byte	-73
	.byte	-62
	.byte	-2
	.byte	-33
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	81
	.byte	-26
	.byte	-4
	.byte	-52
	.byte	-53
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	123
	.byte	102
	.byte	-47
	.byte	-9
	.byte	-68
	.byte	-60
	.byte	-1
	.byte	-23
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	20
	.byte	95
	.byte	-103
	.byte	-13
	.byte	-92
	.byte	-83
	.byte	-1
	.byte	-53
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-34
	.byte	-8
	.byte	-1
	.byte	-40
	.byte	-43
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-88
	.byte	-81
	.byte	-10
	.byte	-4
	.byte	-21
	.byte	-51
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	47
	.byte	116
	.byte	-41
	.byte	-1
	.byte	-45
	.byte	-44
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	121
	.byte	-20
	.byte	-3
	.byte	-44
	.byte	-42
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	84
	.byte	-43
	.byte	-4
	.byte	-55
	.byte	-54
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	42
	.byte	80
	.byte	-96
	.byte	-16
	.byte	-94
	.byte	-71
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-12
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-18
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.type	VP8_VFMWBITREADER_NORM, %object
	.size	VP8_VFMWBITREADER_NORM, 256
VP8_VFMWBITREADER_NORM:
	.byte	0
	.byte	7
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	vp8_mv_update_probs, %object
	.size	vp8_mv_update_probs, 38
vp8_mv_update_probs:
@ prob:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-2
	.byte	-2
@ prob:
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-2
	.space	2
	.type	C.436.35752, %object
	.size	C.436.35752, 8
C.436.35752:
	.word	7
	.word	6
	.type	vp8_coef_update_probs, %object
	.size	vp8_coef_update_probs, 1056
vp8_coef_update_probs:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-80
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-15
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-17
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-4
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-6
	.byte	-15
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-70
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-5
	.byte	-12
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-5
	.byte	-13
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-2
	.byte	-4
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-2
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-11
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	default_ymode_prob, %object
	.size	default_ymode_prob, 4
default_ymode_prob:
	.byte	112
	.byte	86
	.byte	-116
	.byte	37
	.type	default_uv_mode_prob, %object
	.size	default_uv_mode_prob, 3
default_uv_mode_prob:
	.byte	-94
	.byte	101
	.byte	-52
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC1:
	.ascii	"----------------- vp8 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC2:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC3:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC4:
	.ascii	"P-frm\000"
	.space	2
.LC5:
	.ascii	"error: DecMode illegal\012\000"
.LC6:
	.ascii	"%s %d NULL == pFwdImg!!\012\000"
	.space	3
.LC7:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC8:
	.ascii	"VP8_Set_DecParam but logic fs is null!\012\000"
.LC9:
	.ascii	"VP8_Set_DecParam but cur logic pstDecodeFs is null!"
	.ascii	"\012\000"
	.space	3
.LC10:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC11:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC12:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC13:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC14:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC15:
	.ascii	"vp8 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC16:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC17:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC18:
	.ascii	"Error!partition 0 length > streamlength!\012\000"
	.space	2
.LC19:
	.ascii	"Invalid frame sync code,data[0-1]:%02x,%02x,%02x\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"Invalid frame width %d and Height %d!\012\000"
	.space	1
.LC21:
	.ascii	"We have a new size image!\012\000"
	.space	1
.LC22:
	.ascii	"The old size is %d x %d,the new is %d x %d\012\000"
.LC23:
	.ascii	"Error!Truncated packet\012\000"
.LC24:
	.ascii	"VP8_CB_GetPictureHeader Error!\012\000"
.LC25:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC26:
	.ascii	"VP8_ArrangeVHBMem error\012\000"
	.space	3
.LC27:
	.ascii	"VP8_DecodeDecide err\012\000"
	.space	2
.LC28:
	.ascii	"VP8_GetBufFromQueue err\012\000"
	.space	3
.LC29:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC30:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC31:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC32:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC33:
	.ascii	"line: %d pToQueImg is null\012\000"
.LC34:
	.ascii	"insert img to Voqueue failed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
