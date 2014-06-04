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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real9.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.o
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
	.global	RV9HAL_V200R004_InitHal
	.type	RV9HAL_V200R004_InitHal, %function
RV9HAL_V200R004_InitHal:
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
	.size	RV9HAL_V200R004_InitHal, .-RV9HAL_V200R004_InitHal
	.align	2
	.global	RV9HAL_V200R004_StartVDH
	.type	RV9HAL_V200R004_StartVDH, %function
RV9HAL_V200R004_StartVDH:
	.fnstart
.LFB1361:
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
	.size	RV9HAL_V200R004_StartVDH, .-RV9HAL_V200R004_StartVDH
	.align	2
	.global	RV9HAL_V200R004_WriteSliceMsg
	.type	RV9HAL_V200R004_WriteSliceMsg, %function
RV9HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1360:
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
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r2, #15	@ tmp218, <variable>.MsgSlotAddr,
	add	r3, r0, #256	@, tmp218,
	str	r3, [fp, #-72]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@,
	str	r1, [fp, #-56]	@, %sfp
	beq	.L26	@,
	ldr	ip, [r7, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, #0	@ <variable>.first_mb_in_slice,
	streq	ip, [fp, #-68]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L27	@,
.L9:
	ldr	r2, [r7, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r2, #0	@ <variable>.TotalSliceNum,
	beq	.L17	@,
	ldr	r6, [r7, #112]	@ prephitmp.548, <variable>.first_mb_in_slice
	mov	r8, r7	@ pRv9DecParam, pRv9DecParam
	ldr	r3, [r7, #68]	@ prephitmp.581, <variable>.first_mb_in_slice
	sub	sl, fp, #48	@ tmp431,,
	mov	r5, #0	@ i,
	mov	r9, #44	@ tmp432,
	mov	r7, r6	@ prephitmp.548, prephitmp.548
	b	.L16	@
.L10:
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ <variable>.TotalSliceNum, i
	bls	.L17	@,
.L28:
	sub	r7, r5, #1	@ tmp423, i,
	mla	r1, r9, r5, r8	@ tmp421, tmp432, i, pRv9DecParam
	mla	r3, r9, r7, r8	@ tmp427, tmp432, tmp423, pRv9DecParam
	ldr	r7, [r1, #112]	@ prephitmp.548, <variable>.first_mb_in_slice
	ldr	r3, [r3, #112]	@ prephitmp.581, <variable>.first_mb_in_slice
.L16:
	subs	r0, r5, #0	@, i,
	movne	r0, #1	@
	cmp	r7, r3	@ prephitmp.548, prephitmp.581
	movgt	r0, #0	@,,
	cmp	r0, #0	@ tmp276,
	mov	r7, r0	@ tmp276,
	bne	.L10	@,
	mul	lr, r9, r5	@, tmp432, i
	ldr	r6, [fp, #-68]	@, %sfp
	str	r0, [fp, #-48]	@ tmp276, D32
	mov	r3, r0	@ tmp283, tmp276
	add	ip, r5, r6	@ D.31301, i,
	mov	r0, #4	@,
	add	r6, lr, r8	@ tmp281,, pRv9DecParam
	movw	r1, #:lower16:.LC4	@,
	mov	r4, ip, asl #8	@, D.31301,
	str	r4, [fp, #-60]	@, %sfp
	str	lr, [fp, #-64]	@, %sfp
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [r6, #92]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r4, r5, #1	@ j, i,
	bfi	r3, r2, #0, #24	@ tmp283, <variable>.StreamLength,,
	str	r3, [sl, #0]	@ tmp283,
	ldr	lr, [r6, #84]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, lr, #24, #7	@ tmp291, <variable>.StreamBitOffset,,
	str	r3, [sl, #0]	@ tmp291,
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, ip, asl #8]	@ D32.594,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-76]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-76]	@,
	mov	r3, r7	@ tmp301, tmp276
	str	r7, [fp, #-48]	@ tmp276, D32
	ldr	r0, [r6, #76]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, ip, asl #6	@ tmp303, D.31301,
	bfi	r3, r0, #0, #24	@ tmp301, <variable>.StreamPhyAddr,,
	str	r3, [sl, #0]	@ tmp301,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r2, r1, #1	@ tmp304, tmp303,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	str	r3, [lr, r2, asl #2]	@ D32.601,
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
	movw	r1, #:lower16:.LC6	@,
	mov	r2, ip, asl #5	@ tmp323, D.31301,
	movt	r1, #:upper16:.LC6	@,
	bfi	r3, lr, #24, #7	@ tmp322, <variable>.StreamBitOffset,,
	str	r3, [sl, #0]	@ tmp322,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r2, r2, #1	@ tmp324, tmp323,
	str	r3, [lr, r2, asl #3]	@ D32.609,
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
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r3, [lr, ip]	@ D32.616,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	str	r7, [fp, #-48]	@ tmp276, D32
	ldr	r2, [r6, #100]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r3, [sl, #0]	@ tmp347,
	ldr	r0, [fp, #-76]	@,
	bfi	r3, r2, #16, #1	@ tmp347, <variable>.dblk_filter_passthrough,,
	str	r3, [sl, #0]	@ tmp347,
	ldr	r2, [r6, #104]	@ <variable>.osvquant, <variable>.osvquant
	mov	r1, r0, asl #4	@ tmp362, D.31301,
	mov	r0, #4	@,
	bfi	r3, r2, #17, #2	@ tmp354, <variable>.osvquant,,
	str	r3, [sl, #0]	@ tmp354,
	ldr	r2, [r6, #108]	@ <variable>.sliceqp, <variable>.sliceqp
	add	ip, r1, #1	@ tmp363, tmp362,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #19, #5	@ tmp361, <variable>.sliceqp,,
	str	r3, [sl, #0]	@ tmp361,
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, ip, asl #4]	@ D32.630,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, #32]	@ temp.638, <variable>.TotalSliceNum
	str	r7, [fp, #-48]	@ tmp276, D32
	ldrh	r3, [r6, #112]	@, <variable>.first_mb_in_slice
	cmp	r4, r2	@ j, temp.638
	strh	r3, [sl, #0]	@ movhi	@, <variable>.slice_start_mbn
	bcs	.L11	@,
	mla	ip, r9, r4, r8	@ tmp382, tmp432, j, pRv9DecParam
	ldr	r1, [r6, #112]	@ temp.644, <variable>.first_mb_in_slice
	ldr	r3, [ip, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r3, r1	@ <variable>.first_mb_in_slice, temp.644
	bgt	.L11	@,
	ldr	r3, [fp, #-64]	@, %sfp
	mvn	r0, r4	@ tmp440, j
	add	ip, r0, r2	@ tmp439, tmp440, temp.638
	tst	ip, #1	@ tmp439,
	add	r0, r3, #72	@ tmp387,,
	add	r0, r8, r0	@ tmp388, pRv9DecParam, tmp387
	add	r3, r0, #4	@ ivtmp.566, tmp388,
	beq	.L12	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r2	@ j, temp.638
	bcs	.L11	@,
	ldr	ip, [r3, #124]	@ temp.636, <variable>.first_mb_in_slice
	add	r3, r0, #48	@ ivtmp.566, tmp388,
	cmp	ip, r1	@ temp.636, temp.644
	ble	.L12	@,
	b	.L11	@
.L13:
	ldr	ip, [r3, #124]	@ temp.636, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.566, ivtmp.566,
	cmp	ip, r1	@ temp.636, temp.644
	bgt	.L11	@,
	ldr	r0, [r0, #124]	@ temp.636, <variable>.first_mb_in_slice
	add	r4, r4, #1	@ j, j,
	cmp	r0, r1	@ temp.636, temp.644
	bgt	.L11	@,
.L12:
	add	r4, r4, #1	@ j, j,
	add	r0, r3, #44	@ tmp442, ivtmp.566,
	cmp	r4, r2	@ j, temp.638
	bcc	.L13	@,
.L11:
	cmp	r4, r2	@ j, temp.638
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	ldreq	r3, [r8, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r6, #0	@ prephitmp.546,
	ldreq	r2, [r8, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mlane	r3, r9, r4, r8	@ tmp396, tmp432, j, pRv9DecParam
	ldrne	lr, [fp, #-68]	@, %sfp
	muleq	r3, r2, r3	@ tmp389, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r0, [fp, #-72]	@, %sfp
	mla	r2, r9, r5, r8	@ tmp406, tmp432, i, pRv9DecParam
	addne	r6, lr, r4, asl #2	@, tmp401,, j,
	ldrne	r3, [r3, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	addne	r6, r0, r6, asl #6	@, prephitmp.546,, tmp401,
	sub	r0, r3, #1	@ tmp399, <variable>.first_mb_in_slice,
	str	r0, [r8, #116]	@ tmp399, <variable>.last_mb_in_slice
	ldr	r5, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	ldrh	lr, [r2, #116]	@, <variable>.last_mb_in_slice
	add	r3, r5, #20	@ tmp409,,
	sub	r5, r4, #1	@ i, j,
	add	r5, r5, #1	@ i, i,
	strh	lr, [sl, #2]	@ movhi	@, <variable>.slice_end_mbn
	ldr	r2, [fp, #-48]	@ D32.640, D32
	ldr	ip, [fp, #-56]	@, %sfp
	str	r2, [ip, r3]	@ D32.640,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-60]	@, %sfp
	str	r6, [sl, #0]	@ prephitmp.546, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	ldr	r1, [fp, #-56]	@, %sfp
	add	r2, lr, #252	@ tmp414,,
	str	r6, [r1, r2]	@ D32.646,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r2, r5	@ <variable>.TotalSliceNum, i
	bhi	.L28	@,
.L17:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L27:
	ldr	r4, [fp, #-56]	@, %sfp
	mov	lr, #0	@ tmp226,
	ldr	r3, [r7, #84]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
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
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r2, #0, #24	@ tmp231, <variable>.StreamPhyAddr,,
	str	r3, [fp, #-48]	@ tmp231,
	str	r3, [ip, #4]	@ tmp231,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r1, [r7, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, r4	@ tmp238, tmp223
	mov	r0, #4	@,
	bfi	r3, r1, #24, #7	@ tmp238, <variable>.StreamBitOffset,,
	str	r3, [fp, #-48]	@ tmp238,
	str	r3, [lr, #8]	@ tmp238,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r2, [r7, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	ip, r4	@ tmp243, tmp223
	mov	r0, #4	@,
	bfi	ip, r2, #0, #24	@ tmp243, <variable>.StreamPhyAddr,,
	str	ip, [fp, #-48]	@ tmp243,
	str	ip, [r1, #12]	@ tmp243,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC7	@,
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
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, r2, #19, #5	@ tmp253, <variable>.sliceqp,,
	str	r3, [fp, #-48]	@ tmp253,
	str	r3, [lr, #16]	@ tmp253,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #112]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r4, [fp, #-48]	@ movhi	@ tmp223, <variable>.slice_start_mbn
	mov	r0, #4	@,
	sub	r1, r3, #1	@ tmp261, <variable>.first_mb_in_slice,
	strh	r1, [fp, #-46]	@ movhi	@ tmp261, <variable>.slice_end_mbn
	ldr	r2, [fp, #-48]	@ D32.583, D32
	movw	r1, #:lower16:.LC9	@,
	ldr	ip, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC9	@,
	str	r2, [ip, #20]	@ D32.583,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	mov	r0, #4	@,
	add	r1, r3, #256	@ tmp266,,
	str	r1, [fp, #-48]	@ tmp266, <variable>.next_slice_para_addr
	str	r1, [lr, #252]	@ tmp266,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	b	.L9	@
.L26:
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #530	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L17	@
	.fnend
	.size	RV9HAL_V200R004_WriteSliceMsg, .-RV9HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV9HAL_V200R004_WritePicMsg
	.type	RV9HAL_V200R004_WritePicMsg, %function
RV9HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1359:
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
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L35	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp192,
	mov	r8, r5	@ p32, pMsgBase
	mov	sl, r7	@ tmp194, tmp192
	bfi	sl, r0, #0, #2	@ tmp194, <variable>.PicCodingType,,
	str	sl, [fp, #-48]	@ tmp194,
	str	sl, [r8], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	sl, r8, r0	@ p32.679, p32,
	bl	dprint_vfmw	@
	ldmib	r4, {r1, r3}	@ phole ldm
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp203, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC5	@,
	sub	ip, r3, #1	@, <variable>.PicHeightInMb,
	str	ip, [fp, #-72]	@, %sfp
	mov	r2, r9, asl #23	@ tmp208, tmp203,
	add	r9, sl, r0	@ p32.684, p32.679,
	add	r3, r9, r0	@ p32.689, p32.684,
	movt	r1, #:upper16:.LC5	@,
	add	lr, r3, r0	@, p32.689,
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
	movw	r1, #:lower16:.LC6	@,
	ldrh	r2, [r4, #16]	@, <variable>.Ratio1
	movt	r1, #:upper16:.LC6	@,
	strh	r2, [fp, #-46]	@ movhi	@, <variable>.Ratio1
	ldr	lr, [fp, #-48]	@ D32.682, D32
	str	lr, [r8, #4]	@ D32.682,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ tmp218, tmp192
	bfi	r0, r7, #1, #3	@ tmp218, tmp192,,
	str	r0, [fp, #-48]	@ tmp218,
	str	r0, [sl, #4]	@ tmp218,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r3, r7	@ tmp224, tmp192
	mov	r0, #4	@,
	bfi	r3, ip, #0, #5	@ tmp224, <variable>.PQUANT,,
	str	r3, [fp, #-48]	@ tmp224,
	str	r3, [r9, #4]	@ tmp224,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-64]	@,
	ldr	r1, [r4, #24]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	ip, r7	@ tmp230, tmp192
	mov	r0, #4	@,
	bfi	ip, r1, #0, #5	@ tmp230, <variable>.PrevPicQP,,
	str	ip, [fp, #-48]	@ tmp230,
	str	ip, [r2, #4]	@ tmp230,
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@,
	str	r7, [fp, #-48]	@ tmp192, D32
	mov	r0, #4	@,
	ldr	r2, [r4, #28]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	movw	r1, #:lower16:.LC12	@,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@,
	movt	r1, #:upper16:.LC12	@,
	bfi	r3, r2, #0, #5	@ tmp244, <variable>.PrevPicMb0QP,,
	strb	r3, [ip, #0]	@ tmp244,
	ldr	r3, [fp, #-48]	@ D32.704, D32
	ldr	r2, [fp, #-56]	@, %sfp
	str	r3, [r2, #4]	@ D32.704,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #56]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	bic	r2, ip, #15	@ tmp251, <variable>.DispFramePhyAddr,
	str	r2, [fp, #-48]	@ tmp251, <variable>.curr_rcn_addr
	str	r2, [r5, #64]	@ tmp251,
	movt	r1, #:upper16:.LC13	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	bic	ip, r3, #15	@ tmp257, <variable>.FwdRefPhyAddr,
	str	ip, [fp, #-48]	@ tmp257, <variable>.fwd_ref_addr
	str	ip, [r5, #68]	@ tmp257,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp263, <variable>.BwdRefPhyAddr,
	str	r3, [fp, #-48]	@ tmp263, <variable>.bwd_ref_addr
	str	r3, [r5, #72]	@ tmp263,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #68]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	ip, [fp, #-48]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	ip, [r5, #76]	@ <variable>.CurrPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #72]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r2, [fp, #-48]	@ <variable>.ColPmvPhyAddr, <variable>.bwd_colmb_addr
	str	r2, [r5, #80]	@ <variable>.ColPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [fp, #-48]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #84]	@ tmp279,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [fp, #-48]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #88]	@ tmp285,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	r2, ip, #15	@ tmp291, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp291, <variable>.rcn_top_addr
	str	r2, [r5, #92]	@ tmp291,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [fp, #-48]	@ <variable>.DblkTopAddr, <variable>.dblk_top_addr
	str	r3, [r5, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	bic	r2, ip, #15	@ tmp301, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:.LC10	@,
	add	r3, r2, #256	@ tmp303, tmp301,
	str	r3, [fp, #-48]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
.L34:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L35:
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #300	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L34	@
	.fnend
	.size	RV9HAL_V200R004_WritePicMsg, .-RV9HAL_V200R004_WritePicMsg
	.align	2
	.global	RV9HAL_V200R004_WriteReg
	.type	RV9HAL_V200R004_WriteReg, %function
RV9HAL_V200R004_WriteReg:
	.fnstart
.LFB1358:
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
	mov	r5, r1	@ pRv9DecParam, pRv9DecParam
	mov	r8, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r7, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	sl, [r5, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r4, #1148	@ tmp202,
	ldr	r1, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r0, #3	@,
	mul	r6, r4, r7	@ tmp201, tmp202, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp406,
	mul	ip, r1, sl	@ tmp188, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r4, #:upper16:g_HwMem	@ tmp406,
	mov	sl, #0	@ tmp187,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	sub	r2, ip, #1	@ tmp191, tmp188,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, r2, #-16777216	@ tmp196, tmp191,
	bic	r2, r3, #15728640	@ tmp196, tmp196,
	orr	r3, r2, #16777216	@ tmp199, tmp196,
	bfi	r3, sl, #25, #1	@ tmp199, tmp187,,
	str	r3, [fp, #-40]	@ tmp199,
	str	r3, [ip, #8]	@ tmp199,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	ip, [r5, #36]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r3, #9	@ tmp212,
	movw	r0, #11340	@ tmp221,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r2, lsr #6	@ tmp210, <variable>.DDRStride,
	ldr	r2, [r5, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, r1, #4, #10	@ tmp212, tmp210,,
	mov	r0, #3	@,
	bfi	r3, ip, #14, #1	@ tmp214, <variable>.FstSlcGrp,,
	movw	r1, #:lower16:.LC24	@,
	orr	ip, r3, #32768	@ tmp217, tmp214,
	movt	r1, #:upper16:.LC24	@,
	bfi	ip, sl, #16, #12	@ tmp217, tmp187,,
	bic	r3, ip, #805306368	@ tmp218, tmp217,
	orr	ip, r3, #536870912	@ tmp223, tmp218,
	bfi	ip, r2, #30, #1	@ tmp223, <variable>.Compress_en,,
	bfi	ip, sl, #31, #1	@ tmp224, tmp187,,
	str	ip, [fp, #-40]	@ tmp224,
	str	ip, [lr, #12]	@ tmp224,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, r2, #15	@ tmp235, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp235, <variable>.av_msg_addr
	str	r3, [ip, #16]	@ tmp235,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bic	r3, r2, #15	@ tmp246, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp246, <variable>.va_msg_addr
	str	r3, [ip, #20]	@ tmp246,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r5, #40]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	r6, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r6, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	sl, [fp, #-40]	@ tmp187, D32
	movls	r3, #65536	@ tmp266,
	strls	r3, [fp, #-40]	@ tmp266, D32
	cmp	r7, #0	@ VdhId,
	bne	.L48	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp269,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp269,
.L47:
	ldr	r6, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	lr, [fp, #-40]	@ D32, D32
	orr	r1, r0, lr	@ temp.815,, D32
	add	r0, r6, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L39:
	movw	r1, #1148	@ tmp280,
	movw	r2, #:lower16:3148803	@ tmp277,
	mul	r6, r1, r7	@ tmp279, tmp280, VdhId
	movt	r2, #:upper16:3148803	@ tmp277,
	str	r2, [fp, #-40]	@ tmp277, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [lr, #60]	@ tmp277,
	ldr	ip, [fp, #-40]	@ D32.822, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #64]	@ D32.822,
	ldr	lr, [fp, #-40]	@ D32.826, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #68]	@ D32.826,
	ldr	ip, [fp, #-40]	@ D32.830, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.830,
	ldr	lr, [fp, #-40]	@ D32.834, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #76]	@ D32.834,
	ldr	ip, [fp, #-40]	@ D32.838, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.838,
	ldr	lr, [fp, #-40]	@ D32.842, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #84]	@ D32.842,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bic	ip, r3, #15	@ D32.433, <variable>.CurPicPhyAddr,
	str	ip, [fp, #-40]	@ D32.433, D32
	str	ip, [r2, #96]	@ D32.433,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #60]	@ D32.848, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r6, [r5, #8]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	str	r3, [fp, #-40]	@ D32.848, D32
	str	r3, [ip, #100]	@ D32.848,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp333,
	mov	r2, r2, asl #4	@ D.31040, <variable>.PicWidthInMb,
	sub	r0, r2, #1	@ tmp332, D.31040,
	cmp	r0, r3	@ tmp332, tmp333
	bls	.L42	@,
	sub	ip, r2, #2048	@ tmp334, D.31040,
	sub	r0, ip, #1	@ tmp334, tmp334,
	cmp	r0, r3	@ tmp334, tmp333
	movls	sl, #32	@ level,
	bls	.L44	@,
	sub	r1, r2, #4096	@ tmp337, D.31040,
	sub	lr, r1, #1	@ tmp337, tmp337,
	cmp	lr, r3	@ tmp337, tmp333
	movls	sl, #48	@ level,
	bls	.L44	@,
	sub	r0, r2, #6144	@ tmp340, D.31040,
	sub	r2, r0, #1	@ tmp340, tmp340,
	cmp	r2, r3	@ tmp340, tmp333
	movls	sl, #64	@ level,
	bhi	.L42	@,
.L44:
	ldr	r3, [r5, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r6, #1	@ tmp349, height_in_mb,
	movw	lr, #1148	@ tmp356,
	ldr	ip, [r5, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	mul	r7, lr, r7	@ tmp355, tmp356, VdhId
	mov	r1, r3, asl #4	@ tmp343, <variable>.PicHeightInMb,
	add	r2, r1, #31	@ tmp345, tmp343,
	mov	r6, r0, lsr #1	@ tmp350, tmp349,
	movw	r1, #:lower16:.LC31	@,
	mov	r0, #3	@,
	mov	lr, r2, lsr #5	@ tmp346, tmp345,
	movt	r1, #:upper16:.LC31	@,
	mul	ip, ip, r6	@ tmp351, <variable>.DDRStride, tmp350
	mov	r3, lr, asl #4	@ tmp347, tmp346,
	ldr	lr, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r6, #0	@ tmp371,
	mla	r2, sl, r3, ip	@ tmp353, level, tmp347, tmp351
	mov	ip, r2, asl #1	@ D32.435, tmp353,
	str	ip, [fp, #-40]	@ D32.435, D32
	str	ip, [lr, #104]	@ D32.435,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r2, r3, asl #4	@ tmp361, <variable>.PicHeightInMb,
	add	r3, r2, #31	@ tmp363, tmp361,
	bic	r2, r3, #31	@ tmp365, tmp363,
	mul	sl, sl, r2	@ D32.436, level, tmp365
	str	sl, [ip, #108]	@ D32.436,
	ldr	r3, [r8, #1128]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [fp, #-40]	@ tmp371, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	r6, [ip, #148]	@ tmp371,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r6	@ tmp392, tmp371
	bfi	r2, r6, #0, #1	@ tmp392, tmp371,,
	str	r2, [fp, #-40]	@ tmp392,
	mov	r0, #3	@,
	str	r2, [r1, #152]	@ tmp392,
	movw	r1, #:lower16:.LC34	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp405,
	str	ip, [r3, #32]	@ tmp405,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L48:
	cmp	r7, #1	@ VdhId,
	bne	.L39	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp274,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp274,
	b	.L47	@
.L42:
	mov	sl, #16	@ level,
	b	.L44	@
	.fnend
	.size	RV9HAL_V200R004_WriteReg, .-RV9HAL_V200R004_WriteReg
	.align	2
	.global	RV9HAL_V200R004_StartDec
	.type	RV9HAL_V200R004_StartDec, %function
RV9HAL_V200R004_StartDec:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #1	@ VdhId,
	mov	r4, r0	@ pRv9DecParam, pRv9DecParam
	bls	.L56	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30933,
.L52:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L56:
	movw	r7, #1148	@ tmp143,
	movw	r6, #:lower16:g_HwMem	@ tmp144,
	mul	r7, r7, r1	@ tmp142, tmp143, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp144,
	add	r5, r6, r7	@ pHwMem, tmp144, tmp142
	ldr	r3, [r6, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L57	@,
.L53:
	movw	lr, #:lower16:.LANCHOR0	@ tmp148,
	movt	lr, #:upper16:.LANCHOR0	@ tmp148,
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	ldr	r3, [lr, #0]	@ FrameNum, FrameNum
	mov	r1, r4	@, pRv9DecParam
	add	ip, r3, #1	@ tmp151, FrameNum,
	str	ip, [lr, #0]	@ tmp151, FrameNum
	bl	RV9HAL_V200R004_WriteReg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r4	@, pRv9DecParam
	bl	RV9HAL_V200R004_WritePicMsg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r4	@, pRv9DecParam
	bl	RV9HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pRv9DecParam
	bl	RV9HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.30933,
	b	.L52	@
.L57:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	subs	r2, r0, #0	@ D.30937,
	strne	r2, [r6, r7]	@ D.30937, <variable>.pVdmRegVirAddr
	bne	.L53	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30933,
	b	.L52	@
	.fnend
	.size	RV9HAL_V200R004_StartDec, .-RV9HAL_V200R004_StartDec
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
	.ascii	"configuring Slice Msg...\012\000"
	.space	2
.LC2:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC3:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC4:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"D63 = 0x%x\012\000"
.LC11:
	.ascii	"configuring Pic Msg...\012\000"
.LC12:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"D16 = 0x%x\012\000"
.LC14:
	.ascii	"D17 = 0x%x\012\000"
.LC15:
	.ascii	"D18 = 0x%x\012\000"
.LC16:
	.ascii	"D19 = 0x%x\012\000"
.LC17:
	.ascii	"D20 = 0x%x\012\000"
.LC18:
	.ascii	"D21 = 0x%x\012\000"
.LC19:
	.ascii	"D22 = 0x%x\012\000"
.LC20:
	.ascii	"D23 = 0x%x\012\000"
.LC21:
	.ascii	"D024 = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC23:
	.ascii	"BASIC_V200R004_CFG0 = 0x%x\012\000"
.LC24:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"AVM_V200R003_ADDR=0x%x\012\000"
.LC26:
	.ascii	"VAM_V200R003_ADDR=0x%x\012\000"
.LC27:
	.ascii	"STREAM_V200R004_BASE_ADDR=0x%x\012\000"
.LC28:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC29:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC30:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC31:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC32:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC33:
	.ascii	"REF_V200R003_PIC_TYPE=0x%x\012\000"
.LC34:
	.ascii	"FF_V200R003_APT_EN=0x%x\012\000"
	.space	3
.LC35:
	.ascii	"VdhId is wrong! RV9HAL_V200R004_StartDec\012\000"
	.space	2
.LC36:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
