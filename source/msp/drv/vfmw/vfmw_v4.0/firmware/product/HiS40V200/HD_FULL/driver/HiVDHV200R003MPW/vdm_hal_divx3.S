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
	.file	"vdm_hal_divx3.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_divx3.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_divx3.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R003MPW_InitHal
	.type	DIVX3HAL_V200R003MPW_InitHal, %function
DIVX3HAL_V200R003MPW_InitHal:
	.fnstart
.LFB1346:
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
	.size	DIVX3HAL_V200R003MPW_InitHal, .-DIVX3HAL_V200R003MPW_InitHal
	.align	2
	.global	DIVX3HAL_V200R003MPW_StartVDH
	.type	DIVX3HAL_V200R003MPW_StartVDH, %function
DIVX3HAL_V200R003MPW_StartVDH:
	.fnstart
.LFB1351:
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
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DIVX3HAL_V200R003MPW_StartVDH, .-DIVX3HAL_V200R003MPW_StartVDH
	.align	2
	.global	DIVX3HAL_V200R003MPW_WriteReg
	.type	DIVX3HAL_V200R003MPW_WriteReg, %function
DIVX3HAL_V200R003MPW_WriteReg:
	.fnstart
.LFB1348:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r6, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r7, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC1	@,
	mov	sl, r2	@ VdhId, VdhId
	movw	r4, #1148	@ tmp198,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r8, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r1, #:lower16:.LC2	@,
	mul	r5, r4, sl	@ tmp197, tmp198, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp396,
	mul	ip, r8, r0	@ tmp185, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r4, #:upper16:g_HwMem	@ tmp396,
	mov	r8, #0	@ tmp184,
	movt	r1, #:upper16:.LC2	@,
	mov	r0, #3	@,
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	sub	r3, ip, #1	@ tmp188, tmp185,
	bic	ip, r3, #-16777216	@ tmp195, tmp188,
	bic	r3, ip, #15728640	@ tmp195, tmp195,
	bfi	r3, r8, #25, #1	@ tmp195, tmp184,,
	str	r3, [fp, #-40]	@ tmp195,
	str	r3, [r2, #8]	@ tmp195,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r6, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r3, #5	@ tmp208,
	ldr	lr, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #152]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp206, <variable>.DDRStride,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, ip, #4, #10	@ tmp208, tmp206,,
	movt	r1, #:upper16:.LC3	@,
	orr	ip, r3, #49152	@ tmp213, tmp208,
	bfi	ip, r8, #16, #12	@ tmp213, tmp184,,
	bic	r3, ip, #805306368	@ tmp214, tmp213,
	orr	ip, r3, #536870912	@ tmp218, tmp214,
	bfi	ip, r2, #30, #1	@ tmp218, <variable>.Compress_en,,
	bfi	ip, r8, #31, #1	@ tmp219, tmp184,,
	str	ip, [fp, #-40]	@ tmp219,
	str	ip, [lr, #12]	@ tmp219,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	r3, r2, #15	@ tmp230, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp230, <variable>.av_msg_addr
	str	r3, [ip, #16]	@ tmp230,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bic	r3, r2, #15	@ tmp241, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp241, <variable>.va_msg_addr
	str	r3, [ip, #20]	@ tmp241,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r2, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r2, [ip, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp259,
	str	r3, [fp, #-40]	@ tmp259, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC7	@,
	str	r3, [r2, #48]	@ tmp259,
	movt	r1, #:upper16:.LC7	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	ip, #:lower16:3148803	@ tmp268,
	movt	ip, #:upper16:3148803	@ tmp268,
	str	ip, [fp, #-40]	@ tmp268, D32
	mov	r0, #3	@,
	str	ip, [r1, #60]	@ tmp268,
	movw	r1, #:lower16:.LC8	@,
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [fp, #-40]	@ D32.561, D32
	str	r2, [r3, #64]	@ D32.561,
	ldr	r2, [fp, #-40]	@ D32.565, D32
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #68]	@ D32.565,
	ldr	ip, [fp, #-40]	@ D32.569, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.569,
	ldr	ip, [fp, #-40]	@ D32.573, D32
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #76]	@ D32.573,
	ldr	r2, [fp, #-40]	@ D32.577, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.577,
	ldr	r2, [fp, #-40]	@ D32.581, D32
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #84]	@ D32.581,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	ip, r3, #15	@ D32.422, <variable>.CurPicPhyAddr,
	str	ip, [fp, #-40]	@ D32.422, D32
	str	ip, [r2, #96]	@ D32.422,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #136]	@ D32.587, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r5, [r6, #12]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r3, [fp, #-40]	@ D32.587, D32
	str	r3, [ip, #100]	@ D32.587,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp324,
	mov	r2, r2, asl #4	@ D.31165, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp323, D.31165,
	cmp	r1, r3	@ tmp323, tmp324
	bls	.L6	@,
	sub	r1, r2, #2048	@ tmp325, D.31165,
	sub	lr, r1, #1	@ tmp325, tmp325,
	cmp	lr, r3	@ tmp325, tmp324
	movls	r8, #32	@ level,
	bls	.L8	@,
	sub	r0, r2, #4096	@ tmp328, D.31165,
	sub	ip, r0, #1	@ tmp328, tmp328,
	cmp	ip, r3	@ tmp328, tmp324
	movls	r8, #48	@ level,
	bls	.L8	@,
	sub	lr, r2, #6144	@ tmp331, D.31165,
	sub	r2, lr, #1	@ tmp331, tmp331,
	cmp	r2, r3	@ tmp331, tmp324
	movls	r8, #64	@ level,
	bhi	.L6	@,
.L8:
	ldr	ip, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r5, #1	@ tmp340, height_in_mb,
	ldr	r2, [r6, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	movw	r6, #1148	@ tmp347,
	mul	sl, r6, sl	@ tmp346, tmp347, VdhId
	mov	r1, ip, asl #4	@ tmp334, <variable>.PicHeightInMb,
	add	r3, r1, #31	@ tmp336, tmp334,
	mov	lr, r0, lsr #1	@ tmp341, tmp340,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #3	@,
	mov	r6, r3, lsr #5	@ tmp337, tmp336,
	movt	r1, #:upper16:.LC11	@,
	mul	ip, r2, lr	@ tmp342, <variable>.DDRStride, tmp341
	mov	r3, r6, asl #4	@ tmp338, tmp337,
	ldr	lr, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r6, #0	@ tmp361,
	mla	r2, r8, r3, ip	@ tmp344, level, tmp338, tmp342
	mov	ip, r2, asl #1	@ D32.424, tmp344,
	str	ip, [fp, #-40]	@ D32.424, D32
	str	ip, [lr, #104]	@ D32.424,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5, asl #4	@ tmp352, height_in_mb,
	add	r5, r0, #31	@ tmp353, tmp352,
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r5, r5, #31	@ tmp355, tmp353,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mul	r8, r8, r5	@ D32.425, level, tmp355
	str	r8, [r3, #108]	@ D32.425,
	ldr	ip, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #1128]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	str	r2, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r2, [ip, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [fp, #-40]	@ tmp361, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	str	r6, [r3, #148]	@ tmp361,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r6	@ tmp382, tmp361
	bfi	r2, r6, #0, #1	@ tmp382, tmp361,,
	str	r2, [fp, #-40]	@ tmp382,
	mov	r0, #3	@,
	str	r2, [ip, #152]	@ tmp382,
	movw	r1, #:lower16:.LC14	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r1, #0	@ tmp395,
	str	r1, [r3, #32]	@ tmp395,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L6:
	mov	r8, #16	@ level,
	b	.L8	@
	.fnend
	.size	DIVX3HAL_V200R003MPW_WriteReg, .-DIVX3HAL_V200R003MPW_WriteReg
	.align	2
	.global	DIVX3HAL_V200R003MPW_WriteSliceMsg
	.type	DIVX3HAL_V200R003MPW_WriteSliceMsg, %function
DIVX3HAL_V200R003MPW_WriteSliceMsg:
	.fnstart
.LFB1350:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r2, [r0, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r6, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r3, r2, #15	@, <variable>.MsgSlotAddr,
	str	r3, [fp, #-64]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L32	@,
	ldr	r0, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	streq	r0, [fp, #-56]	@ <variable>.slice_start_mbn, %sfp
	bne	.L33	@,
.L16:
	ldr	r1, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r1, #0	@ <variable>.TotalSliceNum,
	beq	.L24	@,
	ldr	r2, [r6, #56]	@ prephitmp.646, <variable>.slice_start_mbn
	sub	r9, fp, #48	@ tmp260,,
	mov	r3, r1	@ prephitmp.699, <variable>.TotalSliceNum
	mov	r5, #0	@ i,
	b	.L23	@
.L17:
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.TotalSliceNum, i
	bls	.L24	@,
.L34:
	add	r2, r5, #14	@ tmp256, i,
	add	r3, r5, #13	@ tmp257, i,
	ldr	r2, [r6, r2, asl #2]	@ prephitmp.646, <variable>.slice_start_mbn
	ldr	r3, [r6, r3, asl #2]	@ prephitmp.699, <variable>.slice_start_mbn
.L23:
	subs	r0, r5, #0	@, i,
	movne	r0, #1	@
	cmp	r2, r3	@ prephitmp.646, prephitmp.699
	movhi	r0, #0	@,,
	cmp	r0, #0	@ tmp221,
	mov	r3, r0	@ tmp221,
	bne	.L17	@,
	ldr	r4, [fp, #-56]	@, %sfp
	add	r7, r5, #14	@ tmp224, i,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	ldr	lr, [r6, r7, asl #2]	@ tmp226, <variable>.slice_start_mbn
	add	r8, r5, r4	@ D.31367, i,
	movt	r1, #:upper16:.LC17	@,
	add	r4, r5, #1	@ j, i,
	bfi	r3, lr, #0, #20	@ tmp225, tmp226,,
	mov	r2, r8, asl #8	@, D.31367,
	str	r3, [r9, #0]	@ tmp225,
	str	r2, [fp, #-60]	@, %sfp
	str	r3, [sl, r8, asl #8]	@ D32.677,* pMsgBase
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #52]	@ temp.689, <variable>.TotalSliceNum
	cmp	r4, r2	@ j, temp.689
	bcs	.L18	@,
	add	r5, r5, #15	@ tmp230, i,
	ldr	r1, [r6, r7, asl #2]	@ temp.696, <variable>.slice_start_mbn
	ldr	r3, [r6, r5, asl #2]	@ tmp231, <variable>.slice_start_mbn
	cmp	r1, r3	@ temp.696, tmp231
	bcc	.L18	@,
	mvn	r3, r4	@ tmp267, j
	add	r3, r3, r2	@ tmp266, tmp267, temp.689
	tst	r3, #1	@ tmp266,
	add	r7, r6, r7, asl #2	@, ivtmp.664, pDivx3DecParam, tmp224,
	beq	.L19	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r2	@ j, temp.689
	bcs	.L18	@,
	ldr	r3, [r7, #8]	@ D.31402, <variable>.slice_start_mbn
	add	r7, r7, #4	@ ivtmp.664, ivtmp.664,
	cmp	r3, r1	@ D.31402, temp.696
	bls	.L19	@,
	b	.L18	@
.L20:
	ldr	r0, [r7, #8]	@ D.31402, <variable>.slice_start_mbn
	add	r7, r3, #4	@ ivtmp.664, tmp269,
	cmp	r0, r1	@ D.31402, temp.696
	bhi	.L18	@,
	ldr	r3, [r3, #8]	@ D.31402, <variable>.slice_start_mbn
	add	r4, r4, #1	@ j, j,
	cmp	r3, r1	@ D.31402, temp.696
	bhi	.L18	@,
.L19:
	add	r4, r4, #1	@ j, j,
	add	r3, r7, #4	@ tmp269, ivtmp.664,
	cmp	r4, r2	@ j, temp.689
	bcc	.L20	@,
.L18:
	cmp	r4, r2	@ j, temp.689
	mov	r8, r8, asl #6	@ tmp245, D.31367,
	addne	r3, r4, #14	@ tmp237, j,
	add	r8, r8, #1	@ tmp246, tmp245,
	ldreq	r2, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	lr, #0	@ tmp244,
	ldreq	r3, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC18	@,
	ldrne	r2, [r6, r3, asl #2]	@ tmp238, <variable>.slice_start_mbn
	movt	r1, #:upper16:.LC18	@,
	ldrne	r0, [fp, #-56]	@, %sfp
	moveq	r7, #0	@ prephitmp.644,
	muleq	r2, r2, r3	@ tmp234, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r7, r0, r4, asl #2	@, tmp240,, j,
	ldrne	r3, [fp, #-64]	@, %sfp
	sub	r5, r4, #1	@ i, j,
	add	r5, r5, #1	@ i, i,
	sub	r0, r2, #1	@ last_mb_in_slice, tmp238,
	addne	r7, r3, r7, asl #6	@, prephitmp.644,, tmp240,
	bfi	lr, r0, #0, #20	@ tmp244, last_mb_in_slice,,
	str	lr, [r9, #0]	@ tmp244,
	str	lr, [sl, r8, asl #2]	@ D32.685,* pMsgBase
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@, %sfp
	str	r7, [r9, #0]	@ prephitmp.644, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	add	r1, ip, #252	@ tmp252,,
	str	r7, [sl, r1]	@ D32.693,
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r1, r5	@ <variable>.TotalSliceNum, i
	bhi	.L34	@,
.L24:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L33:
	mov	r4, #0	@ tmp197,
	mov	r0, #4	@,
	mov	ip, r4	@ tmp199, tmp197
	bfi	ip, r4, #0, #20	@ tmp199, tmp197,,
	str	ip, [fp, #-48]	@ tmp199,
	movw	r1, #:lower16:.LC17	@,
	str	ip, [sl, #0]	@ tmp199,* pMsgBase
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	lr, #1	@,
	str	lr, [fp, #-56]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	sub	r3, r2, #1	@ tmp204, <variable>.slice_start_mbn,
	bfi	r4, r3, #0, #20	@ tmp206, tmp204,,
	str	r4, [fp, #-48]	@ tmp206,
	str	r4, [sl, #4]	@ tmp206,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r0, #4	@,
	add	r1, ip, #256	@ tmp211,,
	str	r1, [fp, #-48]	@ tmp211, <variable>.next_slice_para_addr
	str	r1, [sl, #252]	@ tmp211,
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	b	.L16	@
.L32:
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #459	@,
	movt	r1, #:upper16:.LC15	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L24	@
	.fnend
	.size	DIVX3HAL_V200R003MPW_WriteSliceMsg, .-DIVX3HAL_V200R003MPW_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R003MPW_WritePicMsg
	.type	DIVX3HAL_V200R003MPW_WritePicMsg, %function
DIVX3HAL_V200R003MPW_WritePicMsg:
	.fnstart
.LFB1349:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r6, r0	@ pHwMem, pHwMem
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.31226,
	beq	.L39	@,
	ldr	r0, [r4, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp191,
	mov	r7, r5	@ p32, D.31226
	mov	sl, r8	@ tmp194, tmp191
	bfi	sl, r0, #0, #1	@ tmp194, <variable>.prediction_type,,
	str	sl, [fp, #-40]	@ tmp194,
	str	sl, [r7], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [fp, #-40]	@, D32
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	add	sl, r7, r0	@ p32.729, p32,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	ip, r1, #1	@ tmp200, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC18	@,
	sub	r2, r2, #1	@ tmp204, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC18	@,
	mov	r3, ip, asl #23	@ tmp205, tmp200,
	mov	ip, r3, lsr #23	@ tmp205, tmp205,
	bfi	ip, r2, #16, #9	@ tmp205, tmp204,,
	str	ip, [fp, #-40]	@ tmp205,
	str	ip, [r5, #4]	@ tmp205,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ <variable>.quantizer, <variable>.quantizer
	ldr	r1, [r4, #20]	@ <variable>.rounding_type, <variable>.rounding_type
	mov	r0, #4	@,
	ldr	r2, [r4, #24]	@ <variable>.has_skips, <variable>.has_skips
	and	ip, r3, #31	@ tmp212, <variable>.quantizer,
	bfi	ip, r1, #5, #1	@ tmp212, <variable>.rounding_type,,
	movw	r1, #:lower16:.LC21	@,
	bfi	ip, r2, #6, #1	@ tmp214, <variable>.has_skips,,
	str	ip, [fp, #-40]	@ tmp214,
	str	ip, [r7, #4]	@ tmp214,
	movt	r1, #:upper16:.LC21	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@ <variable>.alternative_I_AC_chrom_DCT, <variable>.alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ <variable>.alternative_I_AC_lum_DCT, <variable>.alternative_I_AC_lum_DCT
	mov	r0, #4	@,
	ldr	r2, [r4, #36]	@ <variable>.alternative_I_DC_DCT, <variable>.alternative_I_DC_DCT
	and	r3, r3, #3	@ tmp221, <variable>.alternative_I_AC_chrom_DCT,
	ldr	lr, [r4, #40]	@ <variable>.alternative_P_AC_DCT, <variable>.alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ tmp221, <variable>.alternative_I_AC_lum_DCT,,
	ldr	ip, [r4, #44]	@ <variable>.alternative_P_DC_DCT, <variable>.alternative_P_DC_DCT
	bfi	r3, r2, #4, #1	@ tmp223, <variable>.alternative_I_DC_DCT,,
	bfi	r3, lr, #5, #2	@ tmp225, <variable>.alternative_P_AC_DCT,,
	ldr	r2, [r4, #48]	@ <variable>.alternative_MV, <variable>.alternative_MV
	bfi	r3, ip, #7, #1	@ tmp227, <variable>.alternative_P_DC_DCT,,
	movw	r1, #:lower16:.LC22	@,
	bfi	r3, r2, #8, #1	@ tmp229, <variable>.alternative_MV,,
	str	r3, [fp, #-40]	@ tmp229,
	str	r3, [sl, #4]	@ tmp229,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	r3, [fp, #-40]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_0
	str	r3, [r5, #64]	@ <variable>.StreamPhyAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #108]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r8	@ tmp240, tmp191
	mov	r0, #4	@,
	bfi	ip, r1, #0, #7	@ tmp240, <variable>.StreamBitOffset,,
	str	ip, [fp, #-40]	@ tmp240,
	str	ip, [r5, #68]	@ tmp240,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	r2, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r5, #72]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	r3, [fp, #-40]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r3, [r5, #76]	@ <variable>.StreamPhyAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bfi	r8, r1, #0, #7	@ tmp256, <variable>.StreamBitOffset,,
	str	r8, [fp, #-40]	@ tmp256,
	str	r8, [r5, #80]	@ tmp256,
	movw	r1, #:lower16:.LC27	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	ip, [r5, #84]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bic	r3, r2, #15	@ tmp267, <variable>.DispFramePhyAddr,
	str	r3, [fp, #-40]	@ tmp267, <variable>.curr_rcn_addr
	str	r3, [r5, #128]	@ tmp267,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bic	r2, ip, #15	@ tmp273, <variable>.FwdRefPhyAddr,
	str	r2, [fp, #-40]	@ tmp273, <variable>.fwd_ref_addr
	str	r2, [r5, #132]	@ tmp273,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [fp, #-40]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #136]	@ tmp279,
	movt	r1, #:upper16:.LC31	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [fp, #-40]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #140]	@ tmp285,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	r2, ip, #15	@ tmp291, <variable>.ItransTopAddr,
	str	r2, [fp, #-40]	@ tmp291, <variable>.it_top_addr
	str	r2, [r5, #144]	@ tmp291,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	ip, r3, #15	@ tmp297, <variable>.CurrPmvPhyAddr,
	str	ip, [fp, #-40]	@ tmp297, <variable>.pmv_colmb_addr
	str	ip, [r5, #148]	@ tmp297,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp303, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
.L38:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L39:
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #265	@,
	movt	r1, #:upper16:.LC15	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L38	@
	.fnend
	.size	DIVX3HAL_V200R003MPW_WritePicMsg, .-DIVX3HAL_V200R003MPW_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R003MPW_StartDec
	.type	DIVX3HAL_V200R003MPW_StartDec, %function
DIVX3HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1347:
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
	cmp	r1, #1	@ VdhId,
	mov	r5, r1	@ VdhId, VdhId
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L49	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31069,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L49:
	movw	r8, #1148	@ tmp144,
	movw	r7, #:lower16:g_HwMem	@ tmp145,
	mul	r8, r8, r1	@ tmp143, tmp144, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp145,
	add	r6, r7, r8	@ pHwMem, tmp145, tmp143
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L50	@,
.L44:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp153,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp153,
	movw	r2, #:lower16:.LANCHOR0	@ tmp149,
	movt	r2, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r3, [lr, #36]	@ D.31080, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	ldr	ip, [r2, #0]	@ FrameNum, FrameNum
	cmp	r3, #0	@ D.31080,
	add	r0, ip, #1	@ tmp152, FrameNum,
	str	r0, [r2, #0]	@ tmp152, FrameNum
	beq	.L46	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.31080
.L47:
	mov	r2, r5	@, VdhId
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R003MPW_WriteReg	@
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R003MPW_WritePicMsg	@
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R003MPW_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R003MPW_StartVDH	@
	mov	r0, #0	@ D.31069,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L46:
	mov	r0, r3	@, D.31080
	movw	r1, #:lower16:.LC37	@,
	mov	r2, #86	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L47	@
.L50:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31073,
	strne	r1, [r7, r8]	@ D.31073, <variable>.pVdmRegVirAddr
	bne	.L44	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31069,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	DIVX3HAL_V200R003MPW_StartDec, .-DIVX3HAL_V200R003MPW_StartDec
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	FrameNum, %object
	.size	FrameNum, 4
FrameNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start VDM...\012\000"
	.space	2
.LC1:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC2:
	.ascii	"BASIC_V200R003MPW_CFG0 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"BASIC_V200R003MPW_CFG1=0x%x\012\000"
	.space	3
.LC4:
	.ascii	"AVM_V200R003MPW_ADDR=0x%x\012\000"
	.space	1
.LC5:
	.ascii	"VAM_V200R003MPW_ADDR=0x%x\012\000"
	.space	1
.LC6:
	.ascii	"STREAM_V200R003MPW_BASE_ADDR=0x%x\012\000"
	.space	1
.LC7:
	.ascii	"EMAR_ID = 0x%x\012\000"
.LC8:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC9:
	.ascii	"YSTADDR_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"YSTRIDE_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC11:
	.ascii	"UVOFFSET_V200R003MPW_1D = 0x%x\012\000"
.LC12:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC13:
	.ascii	"REF_V200R003MPW_PIC_TYPE=0x%x\012\000"
	.space	1
.LC14:
	.ascii	"FF_V200R003MPW_APT_EN=0x%x\012\000"
.LC15:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC16:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC17:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D63 = 0x%x\012\000"
.LC20:
	.ascii	"configuring Pic Msg...\012\000"
.LC21:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D16 = 0x%x\012\000"
.LC24:
	.ascii	"D17 = 0x%x\012\000"
.LC25:
	.ascii	"D18 = 0x%x\012\000"
.LC26:
	.ascii	"D19 = 0x%x\012\000"
.LC27:
	.ascii	"D20 = 0x%x\012\000"
.LC28:
	.ascii	"D21 = 0x%x\012\000"
.LC29:
	.ascii	"D32 = 0x%x\012\000"
.LC30:
	.ascii	"D33 = 0x%x\012\000"
.LC31:
	.ascii	"D34 = 0x%x\012\000"
.LC32:
	.ascii	"D35 = 0x%x\012\000"
.LC33:
	.ascii	"D36 = 0x%x\012\000"
.LC34:
	.ascii	"D37 = 0x%x\012\000"
.LC35:
	.ascii	"VdhId is wrong! DIVX3HAL_V200R003MPW_StartDec\012\000"
	.space	1
.LC36:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC37:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
