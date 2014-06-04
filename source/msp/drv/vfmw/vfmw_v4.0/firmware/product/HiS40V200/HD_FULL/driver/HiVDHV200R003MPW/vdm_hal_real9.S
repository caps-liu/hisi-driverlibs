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
	.file	"vdm_hal_real9.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_real9.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_real9.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_real9.o
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
	.global	RV9HAL_V200R003MPW_InitHal
	.type	RV9HAL_V200R003MPW_InitHal, %function
RV9HAL_V200R003MPW_InitHal:
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
	.size	RV9HAL_V200R003MPW_InitHal, .-RV9HAL_V200R003MPW_InitHal
	.align	2
	.global	RV9HAL_V200R003MPW_StartVDH
	.type	RV9HAL_V200R003MPW_StartVDH, %function
RV9HAL_V200R003MPW_StartVDH:
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
	.size	RV9HAL_V200R003MPW_StartVDH, .-RV9HAL_V200R003MPW_StartVDH
	.align	2
	.global	RV9HAL_V200R003MPW_WriteReg
	.type	RV9HAL_V200R003MPW_WriteReg, %function
RV9HAL_V200R003MPW_WriteReg:
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
	mov	r6, r1	@ pRv9DecParam, pRv9DecParam
	mov	r7, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC1	@,
	mov	sl, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	r8, [r6, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r4, #1148	@ tmp199,
	ldr	r0, [r6, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r1, #:lower16:.LC2	@,
	mul	r5, r4, sl	@ tmp198, tmp199, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp398,
	mul	ip, r0, r8	@ tmp185, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r4, #:upper16:g_HwMem	@ tmp398,
	mov	r8, #0	@ tmp184,
	movt	r1, #:upper16:.LC2	@,
	mov	r0, #3	@,
	sub	r2, ip, #1	@ tmp188, tmp185,
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, r2, #-16777216	@ tmp193, tmp188,
	bic	r2, r3, #15728640	@ tmp193, tmp193,
	orr	r3, r2, #16777216	@ tmp196, tmp193,
	bfi	r3, r8, #25, #1	@ tmp196, tmp184,,
	str	r3, [fp, #-40]	@ tmp196,
	str	r3, [ip, #8]	@ tmp196,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r6, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	ip, [r6, #36]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r3, #9	@ tmp209,
	movw	r2, #11340	@ tmp218,
	ldr	lr, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r1, lsr #6	@ tmp207, <variable>.DDRStride,
	ldr	r2, [r6, r2]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, r0, #4, #10	@ tmp209, tmp207,,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, ip, #14, #1	@ tmp211, <variable>.FstSlcGrp,,
	movt	r1, #:upper16:.LC3	@,
	orr	r3, r3, #32768	@ tmp214, tmp211,
	mov	r0, #3	@,
	bfi	r3, r8, #16, #12	@ tmp214, tmp184,,
	bic	ip, r3, #805306368	@ tmp215, tmp214,
	orr	r3, ip, #536870912	@ tmp220, tmp215,
	bfi	r3, r2, #30, #1	@ tmp220, <variable>.Compress_en,,
	bfi	r3, r8, #31, #1	@ tmp221, tmp184,,
	str	r3, [fp, #-40]	@ tmp221,
	str	r3, [lr, #12]	@ tmp221,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	r3, ip, #15	@ tmp232, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp232, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp232,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bic	r3, ip, #15	@ tmp243, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp243, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp243,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #40]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp261,
	mov	r2, #32	@,
	str	r3, [fp, #-40]	@ tmp261, D32
	mov	r0, #3	@,
	str	r3, [r1, #48]	@ tmp261,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	ip, #:lower16:3148803	@ tmp269,
	movt	ip, #:upper16:3148803	@ tmp269,
	str	ip, [fp, #-40]	@ tmp269, D32
	mov	r0, #3	@,
	str	ip, [r1, #60]	@ tmp269,
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
	ldr	r3, [r6, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	ip, r3, #15	@ D32.422, <variable>.CurPicPhyAddr,
	str	ip, [fp, #-40]	@ D32.422, D32
	str	ip, [r2, #96]	@ D32.422,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #60]	@ D32.587, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r5, [r6, #8]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r3, [fp, #-40]	@ D32.587, D32
	str	r3, [ip, #100]	@ D32.587,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp325,
	mov	r2, r2, asl #4	@ D.31223, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp324, D.31223,
	cmp	r1, r3	@ tmp324, tmp325
	bls	.L6	@,
	sub	r1, r2, #2048	@ tmp326, D.31223,
	sub	lr, r1, #1	@ tmp326, tmp326,
	cmp	lr, r3	@ tmp326, tmp325
	movls	r8, #32	@ level,
	bls	.L8	@,
	sub	r0, r2, #4096	@ tmp329, D.31223,
	sub	ip, r0, #1	@ tmp329, tmp329,
	cmp	ip, r3	@ tmp329, tmp325
	movls	r8, #48	@ level,
	bls	.L8	@,
	sub	lr, r2, #6144	@ tmp332, D.31223,
	sub	r2, lr, #1	@ tmp332, tmp332,
	cmp	r2, r3	@ tmp332, tmp325
	movls	r8, #64	@ level,
	bhi	.L6	@,
.L8:
	ldr	r3, [r6, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r5, #1	@ tmp341, height_in_mb,
	movw	lr, #1148	@ tmp348,
	ldr	ip, [r6, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	mul	sl, lr, sl	@ tmp347, tmp348, VdhId
	mov	r1, r3, asl #4	@ tmp335, <variable>.PicHeightInMb,
	add	r2, r1, #31	@ tmp337, tmp335,
	mov	r5, r0, lsr #1	@ tmp342, tmp341,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #3	@,
	mov	lr, r2, lsr #5	@ tmp338, tmp337,
	movt	r1, #:upper16:.LC11	@,
	mul	ip, ip, r5	@ tmp343, <variable>.DDRStride, tmp342
	mov	r3, lr, asl #4	@ tmp339, tmp338,
	ldr	lr, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r5, #0	@ tmp363,
	mla	r2, r8, r3, ip	@ tmp345, level, tmp339, tmp343
	mov	r3, r2, asl #1	@ D32.424, tmp345,
	str	r3, [fp, #-40]	@ D32.424, D32
	str	r3, [lr, #104]	@ D32.424,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	ip, r2, asl #4	@ tmp353, <variable>.PicHeightInMb,
	add	r2, ip, #31	@ tmp355, tmp353,
	bic	ip, r2, #31	@ tmp357, tmp355,
	mul	r8, r8, ip	@ D32.425, level, tmp357
	str	r8, [r3, #108]	@ D32.425,
	ldr	ip, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #1128]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	str	r2, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r2, [ip, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [fp, #-40]	@ tmp363, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	str	r5, [r3, #148]	@ tmp363,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r5	@ tmp384, tmp363
	bfi	r2, r5, #0, #1	@ tmp384, tmp363,,
	str	r2, [fp, #-40]	@ tmp384,
	mov	r0, #3	@,
	str	r2, [ip, #152]	@ tmp384,
	movw	r1, #:lower16:.LC14	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r1, #0	@ tmp397,
	str	r1, [r3, #32]	@ tmp397,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L6:
	mov	r8, #16	@ level,
	b	.L8	@
	.fnend
	.size	RV9HAL_V200R003MPW_WriteReg, .-RV9HAL_V200R003MPW_WriteReg
	.align	2
	.global	RV9HAL_V200R003MPW_WriteSliceMsg
	.type	RV9HAL_V200R003MPW_WriteSliceMsg, %function
RV9HAL_V200R003MPW_WriteSliceMsg:
	.fnstart
.LFB1350:
	@ args = 0, pretend = 0, frame = 32
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
	mov	r4, r0	@ pHwMem, pHwMem
	mov	r7, r1	@ pRv9DecParam, pRv9DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r2, #15	@ tmp218, <variable>.MsgSlotAddr,
	add	r3, r0, #256	@, tmp218,
	str	r3, [fp, #-72]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@,
	str	r1, [fp, #-56]	@, %sfp
	beq	.L32	@,
	ldr	ip, [r7, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, #0	@ <variable>.first_mb_in_slice,
	streq	ip, [fp, #-68]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L33	@,
.L16:
	ldr	r2, [r7, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r2, #0	@ <variable>.TotalSliceNum,
	beq	.L24	@,
	ldr	r6, [r7, #112]	@ prephitmp.651, <variable>.first_mb_in_slice
	mov	r8, r7	@ pRv9DecParam, pRv9DecParam
	ldr	r3, [r7, #68]	@ prephitmp.684, <variable>.first_mb_in_slice
	sub	sl, fp, #48	@ tmp431,,
	mov	r5, #0	@ i,
	mov	r9, #44	@ tmp432,
	mov	r7, r6	@ prephitmp.651, prephitmp.651
	b	.L23	@
.L17:
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ <variable>.TotalSliceNum, i
	bls	.L24	@,
.L34:
	sub	r7, r5, #1	@ tmp423, i,
	mla	r1, r9, r5, r8	@ tmp421, tmp432, i, pRv9DecParam
	mla	r3, r9, r7, r8	@ tmp427, tmp432, tmp423, pRv9DecParam
	ldr	r7, [r1, #112]	@ prephitmp.651, <variable>.first_mb_in_slice
	ldr	r3, [r3, #112]	@ prephitmp.684, <variable>.first_mb_in_slice
.L23:
	subs	r0, r5, #0	@, i,
	movne	r0, #1	@
	cmp	r7, r3	@ prephitmp.651, prephitmp.684
	movgt	r0, #0	@,,
	cmp	r0, #0	@ tmp276,
	mov	r7, r0	@ tmp276,
	bne	.L17	@,
	mul	lr, r9, r5	@, tmp432, i
	ldr	r6, [fp, #-68]	@, %sfp
	str	r0, [fp, #-48]	@ tmp276, D32
	mov	r3, r0	@ tmp283, tmp276
	add	ip, r5, r6	@ D.31484, i,
	mov	r0, #4	@,
	add	r6, lr, r8	@ tmp281,, pRv9DecParam
	movw	r1, #:lower16:.LC18	@,
	mov	r4, ip, asl #8	@, D.31484,
	str	r4, [fp, #-60]	@, %sfp
	str	lr, [fp, #-64]	@, %sfp
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [r6, #92]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r4, r5, #1	@ j, i,
	bfi	r3, r2, #0, #24	@ tmp283, <variable>.StreamLength,,
	str	r3, [sl, #0]	@ tmp283,
	ldr	lr, [r6, #84]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, lr, #24, #7	@ tmp291, <variable>.StreamBitOffset,,
	str	r3, [sl, #0]	@ tmp291,
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, ip, asl #8]	@ D32.697,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-76]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-76]	@,
	mov	r3, r7	@ tmp301, tmp276
	str	r7, [fp, #-48]	@ tmp276, D32
	ldr	r0, [r6, #76]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, ip, asl #6	@ tmp303, D.31484,
	bfi	r3, r0, #0, #24	@ tmp301, <variable>.StreamPhyAddr,,
	str	r3, [sl, #0]	@ tmp301,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r2, r1, #1	@ tmp304, tmp303,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	r3, [lr, r2, asl #2]	@ D32.704,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-76]	@,
	bl	dprint_vfmw	@
	str	r7, [fp, #-48]	@ tmp276, D32
	mov	r3, r7	@ tmp314, tmp276
	ldr	r1, [r6, #96]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	ldr	ip, [fp, #-76]	@,
	bfi	r3, r1, #0, #24	@ tmp314, <variable>.StreamLength,,
	str	r3, [sl, #0]	@ tmp314,
	ldr	lr, [r6, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC20	@,
	mov	r2, ip, asl #5	@ tmp323, D.31484,
	movt	r1, #:upper16:.LC20	@,
	bfi	r3, lr, #24, #7	@ tmp322, <variable>.StreamBitOffset,,
	str	r3, [sl, #0]	@ tmp322,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r2, r2, #1	@ tmp324, tmp323,
	str	r3, [lr, r2, asl #3]	@ D32.712,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-76]	@,
	bl	dprint_vfmw	@
	str	r7, [fp, #-48]	@ tmp276, D32
	mov	r3, r7	@ tmp335, tmp276
	ldr	r2, [r6, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	ldr	r1, [fp, #-60]	@, %sfp
	bfi	r3, r2, #0, #24	@ tmp335, <variable>.StreamPhyAddr,,
	str	r3, [sl, #0]	@ tmp335,
	ldr	lr, [fp, #-56]	@, %sfp
	add	ip, r1, #12	@ tmp337,,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [lr, ip]	@ D32.719,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	str	r7, [fp, #-48]	@ tmp276, D32
	ldr	r2, [r6, #100]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r3, [sl, #0]	@ tmp347,
	ldr	r0, [fp, #-76]	@,
	bfi	r3, r2, #16, #1	@ tmp347, <variable>.dblk_filter_passthrough,,
	str	r3, [sl, #0]	@ tmp347,
	ldr	r2, [r6, #104]	@ <variable>.osvquant, <variable>.osvquant
	mov	r1, r0, asl #4	@ tmp362, D.31484,
	mov	r0, #4	@,
	bfi	r3, r2, #17, #2	@ tmp354, <variable>.osvquant,,
	str	r3, [sl, #0]	@ tmp354,
	ldr	r2, [r6, #108]	@ <variable>.sliceqp, <variable>.sliceqp
	add	ip, r1, #1	@ tmp363, tmp362,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bfi	r3, r2, #19, #5	@ tmp361, <variable>.sliceqp,,
	str	r3, [sl, #0]	@ tmp361,
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, ip, asl #4]	@ D32.733,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, #32]	@ temp.746, <variable>.TotalSliceNum
	str	r7, [fp, #-48]	@ tmp276, D32
	ldrh	r3, [r6, #112]	@, <variable>.first_mb_in_slice
	cmp	r4, r2	@ j, temp.746
	strh	r3, [sl, #0]	@ movhi	@, <variable>.slice_start_mbn
	bcs	.L18	@,
	mla	ip, r9, r4, r8	@ tmp382, tmp432, j, pRv9DecParam
	ldr	r1, [r6, #112]	@ temp.747, <variable>.first_mb_in_slice
	ldr	r3, [ip, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r3, r1	@ <variable>.first_mb_in_slice, temp.747
	bgt	.L18	@,
	ldr	r3, [fp, #-64]	@, %sfp
	mvn	r0, r4	@ tmp440, j
	add	ip, r0, r2	@ tmp439, tmp440, temp.746
	tst	ip, #1	@ tmp439,
	add	r0, r3, #72	@ tmp387,,
	add	r0, r8, r0	@ tmp388, pRv9DecParam, tmp387
	add	r3, r0, #4	@ ivtmp.669, tmp388,
	beq	.L19	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r2	@ j, temp.746
	bcs	.L18	@,
	ldr	ip, [r3, #124]	@ temp.739, <variable>.first_mb_in_slice
	add	r3, r0, #48	@ ivtmp.669, tmp388,
	cmp	ip, r1	@ temp.739, temp.747
	ble	.L19	@,
	b	.L18	@
.L20:
	ldr	ip, [r3, #124]	@ temp.739, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.669, ivtmp.669,
	cmp	ip, r1	@ temp.739, temp.747
	bgt	.L18	@,
	ldr	r0, [r0, #124]	@ temp.739, <variable>.first_mb_in_slice
	add	r4, r4, #1	@ j, j,
	cmp	r0, r1	@ temp.739, temp.747
	bgt	.L18	@,
.L19:
	add	r4, r4, #1	@ j, j,
	add	r0, r3, #44	@ tmp442, ivtmp.669,
	cmp	r4, r2	@ j, temp.746
	bcc	.L20	@,
.L18:
	cmp	r4, r2	@ j, temp.746
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	ldreq	r3, [r8, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r6, #0	@ prephitmp.649,
	ldreq	r2, [r8, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mlane	r3, r9, r4, r8	@ tmp396, tmp432, j, pRv9DecParam
	ldrne	lr, [fp, #-68]	@, %sfp
	muleq	r3, r2, r3	@ tmp389, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r0, [fp, #-72]	@, %sfp
	mla	r2, r9, r5, r8	@ tmp406, tmp432, i, pRv9DecParam
	addne	r6, lr, r4, asl #2	@, tmp401,, j,
	ldrne	r3, [r3, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	addne	r6, r0, r6, asl #6	@, prephitmp.649,, tmp401,
	sub	r0, r3, #1	@ tmp399, <variable>.first_mb_in_slice,
	str	r0, [r8, #116]	@ tmp399, <variable>.last_mb_in_slice
	ldr	r5, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	ldrh	lr, [r2, #116]	@, <variable>.last_mb_in_slice
	add	r3, r5, #20	@ tmp409,,
	sub	r5, r4, #1	@ i, j,
	add	r5, r5, #1	@ i, i,
	strh	lr, [sl, #2]	@ movhi	@, <variable>.slice_end_mbn
	ldr	r2, [fp, #-48]	@ D32.742, D32
	ldr	ip, [fp, #-56]	@, %sfp
	str	r2, [ip, r3]	@ D32.742,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-60]	@, %sfp
	str	r6, [sl, #0]	@ prephitmp.649, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	ldr	r1, [fp, #-56]	@, %sfp
	add	r2, lr, #252	@ tmp414,,
	str	r6, [r1, r2]	@ D32.749,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r2, r5	@ <variable>.TotalSliceNum, i
	bhi	.L34	@,
.L24:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L33:
	ldr	r4, [fp, #-56]	@, %sfp
	mov	lr, #0	@ tmp226,
	ldr	r3, [r7, #84]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bfi	lr, r3, #24, #7	@ tmp226, <variable>.StreamBitOffset,,
	str	lr, [fp, #-48]	@ tmp226,
	str	lr, [r4, #0]	@ tmp226,
	mov	r4, #0	@ tmp223,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [r7, #76]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r4	@ tmp231, tmp223
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bfi	r3, r2, #0, #24	@ tmp231, <variable>.StreamPhyAddr,,
	str	r3, [fp, #-48]	@ tmp231,
	str	r3, [ip, #4]	@ tmp231,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r1, [r7, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, r4	@ tmp238, tmp223
	mov	r0, #4	@,
	bfi	r3, r1, #24, #7	@ tmp238, <variable>.StreamBitOffset,,
	str	r3, [fp, #-48]	@ tmp238,
	str	r3, [lr, #8]	@ tmp238,
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r2, [r7, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	ip, r4	@ tmp243, tmp223
	mov	r0, #4	@,
	bfi	ip, r2, #0, #24	@ tmp243, <variable>.StreamPhyAddr,,
	str	ip, [fp, #-48]	@ tmp243,
	str	ip, [r1, #12]	@ tmp243,
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #100]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	ip, [r7, #104]	@ <variable>.osvquant, <variable>.osvquant
	mov	lr, #1	@,
	ldr	r2, [r7, #108]	@ <variable>.sliceqp, <variable>.sliceqp
	mov	r0, #4	@,
	str	lr, [fp, #-68]	@, %sfp
	mov	r3, r3, asl #16	@ tmp249, <variable>.dblk_filter_passthrough,
	ldr	lr, [fp, #-56]	@, %sfp
	and	r3, r3, #65536	@ tmp251, tmp249,
	bfi	r3, ip, #17, #2	@ tmp251, <variable>.osvquant,,
	movw	r1, #:lower16:.LC22	@,
	bfi	r3, r2, #19, #5	@ tmp253, <variable>.sliceqp,,
	str	r3, [fp, #-48]	@ tmp253,
	str	r3, [lr, #16]	@ tmp253,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r4, [fp, #-48]	@ movhi	@ tmp223, <variable>.slice_start_mbn
	mov	r0, #4	@,
	sub	r1, r3, #1	@ tmp261, <variable>.first_mb_in_slice,
	strh	r1, [fp, #-46]	@ movhi	@ tmp261, <variable>.slice_end_mbn
	ldr	r2, [fp, #-48]	@ D32.686, D32
	movw	r1, #:lower16:.LC23	@,
	ldr	ip, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC23	@,
	str	r2, [ip, #20]	@ D32.686,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	mov	r0, #4	@,
	add	r1, r3, #256	@ tmp266,,
	str	r1, [fp, #-48]	@ tmp266, <variable>.next_slice_para_addr
	str	r1, [lr, #252]	@ tmp266,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	b	.L16	@
.L32:
	movw	r1, #:lower16:.LC16	@,
	movw	r2, #501	@,
	movt	r1, #:upper16:.LC16	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L24	@
	.fnend
	.size	RV9HAL_V200R003MPW_WriteSliceMsg, .-RV9HAL_V200R003MPW_WriteSliceMsg
	.align	2
	.global	RV9HAL_V200R003MPW_WritePicMsg
	.type	RV9HAL_V200R003MPW_WritePicMsg, %function
RV9HAL_V200R003MPW_WritePicMsg:
	.fnstart
.LFB1349:
	@ args = 0, pretend = 0, frame = 32
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
	mov	r6, r0	@ pHwMem, pHwMem
	mov	r4, r1	@ pRv9DecParam, pRv9DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L41	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp192,
	mov	r8, r5	@ p32, pMsgBase
	mov	sl, r7	@ tmp194, tmp192
	bfi	sl, r0, #0, #2	@ tmp194, <variable>.PicCodingType,,
	str	sl, [fp, #-48]	@ tmp194,
	str	sl, [r8], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	add	sl, r8, r0	@ p32.782, p32,
	bl	dprint_vfmw	@
	ldmib	r4, {r1, r3}	@ phole ldm
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp203, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC19	@,
	sub	ip, r3, #1	@, <variable>.PicHeightInMb,
	str	ip, [fp, #-72]	@, %sfp
	mov	r2, r9, asl #23	@ tmp208, tmp203,
	add	r9, sl, r0	@ p32.787, p32.782,
	add	r3, r9, r0	@ p32.792, p32.787,
	movt	r1, #:upper16:.LC19	@,
	add	lr, r3, r0	@, p32.792,
	str	lr, [fp, #-56]	@, %sfp
	ldr	lr, [fp, #-72]	@, %sfp
	mov	r2, r2, lsr #23	@ tmp208, tmp208,
	sub	ip, fp, #48	@ tmp193,,
	bfi	r2, lr, #16, #9	@ tmp208,,,
	str	r2, [fp, #-48]	@ tmp208,
	str	r2, [r5, #4]	@ tmp208,
	ldr	r2, [fp, #-48]	@, D32
	str	r3, [fp, #-64]	@,
	str	ip, [fp, #-60]	@,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #12]	@, <variable>.Ratio0
	mov	r0, #4	@,
	strh	r1, [fp, #-48]	@ movhi	@, <variable>.Ratio0
	movw	r1, #:lower16:.LC20	@,
	ldrh	r2, [r4, #16]	@, <variable>.Ratio1
	movt	r1, #:upper16:.LC20	@,
	strh	r2, [fp, #-46]	@ movhi	@, <variable>.Ratio1
	ldr	lr, [fp, #-48]	@ D32.785, D32
	str	lr, [r8, #4]	@ D32.785,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ tmp218, tmp192
	bfi	r0, r7, #1, #3	@ tmp218, tmp192,,
	str	r0, [fp, #-48]	@ tmp218,
	str	r0, [sl, #4]	@ tmp218,
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC21	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r3, r7	@ tmp224, tmp192
	mov	r0, #4	@,
	bfi	r3, ip, #0, #5	@ tmp224, <variable>.PQUANT,,
	str	r3, [fp, #-48]	@ tmp224,
	str	r3, [r9, #4]	@ tmp224,
	movw	r1, #:lower16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-64]	@,
	ldr	r1, [r4, #24]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	ip, r7	@ tmp230, tmp192
	mov	r0, #4	@,
	bfi	ip, r1, #0, #5	@ tmp230, <variable>.PrevPicQP,,
	str	ip, [fp, #-48]	@ tmp230,
	str	ip, [r2, #4]	@ tmp230,
	movw	r1, #:lower16:.LC23	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@,
	str	r7, [fp, #-48]	@ tmp192, D32
	mov	r0, #4	@,
	ldr	r2, [r4, #28]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	movw	r1, #:lower16:.LC26	@,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@,
	movt	r1, #:upper16:.LC26	@,
	bfi	r3, r2, #0, #5	@ tmp244, <variable>.PrevPicMb0QP,,
	strb	r3, [ip, #0]	@ tmp244,
	ldr	r3, [fp, #-48]	@ D32.807, D32
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, #4]	@ D32.807,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #56]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC27	@,
	bic	r2, ip, #15	@ tmp251, <variable>.DispFramePhyAddr,
	str	r2, [fp, #-48]	@ tmp251, <variable>.curr_rcn_addr
	str	r2, [r5, #64]	@ tmp251,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bic	ip, r3, #15	@ tmp257, <variable>.FwdRefPhyAddr,
	str	ip, [fp, #-48]	@ tmp257, <variable>.fwd_ref_addr
	str	ip, [r5, #68]	@ tmp257,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bic	r3, r2, #15	@ tmp263, <variable>.BwdRefPhyAddr,
	str	r3, [fp, #-48]	@ tmp263, <variable>.bwd_ref_addr
	str	r3, [r5, #72]	@ tmp263,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #68]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	str	ip, [fp, #-48]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	ip, [r5, #76]	@ <variable>.CurrPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #72]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	r2, [fp, #-48]	@ <variable>.ColPmvPhyAddr, <variable>.bwd_colmb_addr
	str	r2, [r5, #80]	@ <variable>.ColPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [fp, #-48]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #84]	@ tmp279,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [fp, #-48]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #88]	@ tmp285,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	r2, ip, #15	@ tmp291, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp291, <variable>.rcn_top_addr
	str	r2, [r5, #92]	@ tmp291,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	str	r3, [fp, #-48]	@ <variable>.DblkTopAddr, <variable>.dblk_top_addr
	str	r3, [r5, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #4	@,
	bic	r2, ip, #15	@ tmp301, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:.LC24	@,
	add	r3, r2, #256	@ tmp303, tmp301,
	str	r3, [fp, #-48]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
.L40:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L41:
	movw	r1, #:lower16:.LC16	@,
	movw	r2, #271	@,
	movt	r1, #:upper16:.LC16	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L40	@
	.fnend
	.size	RV9HAL_V200R003MPW_WritePicMsg, .-RV9HAL_V200R003MPW_WritePicMsg
	.align	2
	.global	RV9HAL_V200R003MPW_StartDec
	.type	RV9HAL_V200R003MPW_StartDec, %function
RV9HAL_V200R003MPW_StartDec:
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
	mov	r4, r0	@ pRv9DecParam, pRv9DecParam
	bls	.L51	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L51:
	movw	r8, #1148	@ tmp144,
	movw	r7, #:lower16:g_HwMem	@ tmp145,
	mul	r8, r8, r1	@ tmp143, tmp144, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp145,
	add	r6, r7, r8	@ pHwMem, tmp145, tmp143
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L52	@,
.L46:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp153,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp153,
	movw	r2, #:lower16:.LANCHOR0	@ tmp149,
	movt	r2, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r3, [lr, #36]	@ D.31135, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	ldr	ip, [r2, #0]	@ FrameNum, FrameNum
	cmp	r3, #0	@ D.31135,
	add	r0, ip, #1	@ tmp152, FrameNum,
	str	r0, [r2, #0]	@ tmp152, FrameNum
	beq	.L48	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.31135
.L49:
	mov	r2, r5	@, VdhId
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pRv9DecParam
	bl	RV9HAL_V200R003MPW_WriteReg	@
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pRv9DecParam
	bl	RV9HAL_V200R003MPW_WritePicMsg	@
	mov	r0, r6	@, pHwMem
	mov	r1, r4	@, pRv9DecParam
	bl	RV9HAL_V200R003MPW_WriteSliceMsg	@
	mov	r0, r4	@, pRv9DecParam
	bl	RV9HAL_V200R003MPW_StartVDH	@
	mov	r0, #0	@ D.31124,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L48:
	mov	r0, r3	@, D.31135
	movw	r1, #:lower16:.LC38	@,
	mov	r2, #92	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	b	.L49	@
.L52:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31128,
	strne	r1, [r7, r8]	@ D.31128, <variable>.pVdmRegVirAddr
	bne	.L46	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	RV9HAL_V200R003MPW_StartDec, .-RV9HAL_V200R003MPW_StartDec
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
	.ascii	"configuring Slice Msg...\012\000"
	.space	2
.LC16:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC17:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC18:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D63 = 0x%x\012\000"
.LC25:
	.ascii	"configuring Pic Msg...\012\000"
.LC26:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D16 = 0x%x\012\000"
.LC28:
	.ascii	"D17 = 0x%x\012\000"
.LC29:
	.ascii	"D18 = 0x%x\012\000"
.LC30:
	.ascii	"D19 = 0x%x\012\000"
.LC31:
	.ascii	"D20 = 0x%x\012\000"
.LC32:
	.ascii	"D21 = 0x%x\012\000"
.LC33:
	.ascii	"D22 = 0x%x\012\000"
.LC34:
	.ascii	"D23 = 0x%x\012\000"
.LC35:
	.ascii	"D024 = 0x%x\012\000"
	.space	3
.LC36:
	.ascii	"VdhId is wrong! RV9HAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC37:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC38:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
