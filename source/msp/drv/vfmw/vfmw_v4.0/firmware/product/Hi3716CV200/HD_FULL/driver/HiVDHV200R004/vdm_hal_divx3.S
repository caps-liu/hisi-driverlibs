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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_InitHal
	.type	DIVX3HAL_V200R004_InitHal, %function
DIVX3HAL_V200R004_InitHal:
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
	.size	DIVX3HAL_V200R004_InitHal, .-DIVX3HAL_V200R004_InitHal
	.align	2
	.global	DIVX3HAL_V200R004_StartVDH
	.type	DIVX3HAL_V200R004_StartVDH, %function
DIVX3HAL_V200R004_StartVDH:
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
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1360:
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
	beq	.L26	@,
	ldr	r0, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	streq	r0, [fp, #-56]	@ <variable>.slice_start_mbn, %sfp
	bne	.L27	@,
.L9:
	ldr	r1, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r1, #0	@ <variable>.TotalSliceNum,
	beq	.L17	@,
	ldr	r2, [r6, #56]	@ prephitmp.547, <variable>.slice_start_mbn
	sub	r9, fp, #48	@ tmp260,,
	mov	r3, r1	@ prephitmp.600, <variable>.TotalSliceNum
	mov	r5, #0	@ i,
	b	.L16	@
.L10:
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.TotalSliceNum, i
	bls	.L17	@,
.L28:
	add	r2, r5, #14	@ tmp256, i,
	add	r3, r5, #13	@ tmp257, i,
	ldr	r2, [r6, r2, asl #2]	@ prephitmp.547, <variable>.slice_start_mbn
	ldr	r3, [r6, r3, asl #2]	@ prephitmp.600, <variable>.slice_start_mbn
.L16:
	subs	r0, r5, #0	@, i,
	movne	r0, #1	@
	cmp	r2, r3	@ prephitmp.547, prephitmp.600
	movhi	r0, #0	@,,
	cmp	r0, #0	@ tmp221,
	mov	r3, r0	@ tmp221,
	bne	.L10	@,
	ldr	r4, [fp, #-56]	@, %sfp
	add	r7, r5, #14	@ tmp224, i,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	ldr	lr, [r6, r7, asl #2]	@ tmp226, <variable>.slice_start_mbn
	add	r8, r5, r4	@ D.31184, i,
	movt	r1, #:upper16:.LC3	@,
	add	r4, r5, #1	@ j, i,
	bfi	r3, lr, #0, #20	@ tmp225, tmp226,,
	mov	r2, r8, asl #8	@, D.31184,
	str	r3, [r9, #0]	@ tmp225,
	str	r2, [fp, #-60]	@, %sfp
	str	r3, [sl, r8, asl #8]	@ D32.578,* pMsgBase
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #52]	@ temp.590, <variable>.TotalSliceNum
	cmp	r4, r2	@ j, temp.590
	bcs	.L11	@,
	add	r5, r5, #15	@ tmp230, i,
	ldr	r1, [r6, r7, asl #2]	@ temp.597, <variable>.slice_start_mbn
	ldr	r3, [r6, r5, asl #2]	@ tmp231, <variable>.slice_start_mbn
	cmp	r1, r3	@ temp.597, tmp231
	bcc	.L11	@,
	mvn	r3, r4	@ tmp267, j
	add	r3, r3, r2	@ tmp266, tmp267, temp.590
	tst	r3, #1	@ tmp266,
	add	r7, r6, r7, asl #2	@, ivtmp.565, pDivx3DecParam, tmp224,
	beq	.L12	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r2	@ j, temp.590
	bcs	.L11	@,
	ldr	r3, [r7, #8]	@ D.31219, <variable>.slice_start_mbn
	add	r7, r7, #4	@ ivtmp.565, ivtmp.565,
	cmp	r3, r1	@ D.31219, temp.597
	bls	.L12	@,
	b	.L11	@
.L13:
	ldr	r0, [r7, #8]	@ D.31219, <variable>.slice_start_mbn
	add	r7, r3, #4	@ ivtmp.565, tmp269,
	cmp	r0, r1	@ D.31219, temp.597
	bhi	.L11	@,
	ldr	r3, [r3, #8]	@ D.31219, <variable>.slice_start_mbn
	add	r4, r4, #1	@ j, j,
	cmp	r3, r1	@ D.31219, temp.597
	bhi	.L11	@,
.L12:
	add	r4, r4, #1	@ j, j,
	add	r3, r7, #4	@ tmp269, ivtmp.565,
	cmp	r4, r2	@ j, temp.590
	bcc	.L13	@,
.L11:
	cmp	r4, r2	@ j, temp.590
	mov	r8, r8, asl #6	@ tmp245, D.31184,
	addne	r3, r4, #14	@ tmp237, j,
	add	r8, r8, #1	@ tmp246, tmp245,
	ldreq	r2, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	lr, #0	@ tmp244,
	ldreq	r3, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC4	@,
	ldrne	r2, [r6, r3, asl #2]	@ tmp238, <variable>.slice_start_mbn
	movt	r1, #:upper16:.LC4	@,
	ldrne	r0, [fp, #-56]	@, %sfp
	moveq	r7, #0	@ prephitmp.545,
	muleq	r2, r2, r3	@ tmp234, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r7, r0, r4, asl #2	@, tmp240,, j,
	ldrne	r3, [fp, #-64]	@, %sfp
	sub	r5, r4, #1	@ i, j,
	add	r5, r5, #1	@ i, i,
	sub	r0, r2, #1	@ last_mb_in_slice, tmp238,
	addne	r7, r3, r7, asl #6	@, prephitmp.545,, tmp240,
	bfi	lr, r0, #0, #20	@ tmp244, last_mb_in_slice,,
	str	lr, [r9, #0]	@ tmp244,
	str	lr, [sl, r8, asl #2]	@ D32.586,* pMsgBase
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@, %sfp
	str	r7, [r9, #0]	@ prephitmp.545, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	add	r1, ip, #252	@ tmp252,,
	str	r7, [sl, r1]	@ D32.594,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r1, r5	@ <variable>.TotalSliceNum, i
	bhi	.L28	@,
.L17:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L27:
	mov	r4, #0	@ tmp197,
	mov	r0, #4	@,
	mov	ip, r4	@ tmp199, tmp197
	bfi	ip, r4, #0, #20	@ tmp199, tmp197,,
	str	ip, [fp, #-48]	@ tmp199,
	movw	r1, #:lower16:.LC3	@,
	str	ip, [sl, #0]	@ tmp199,* pMsgBase
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	lr, #1	@,
	str	lr, [fp, #-56]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
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
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L9	@
.L26:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #487	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L17	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteSliceMsg, .-DIVX3HAL_V200R004_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R004_WritePicMsg
	.type	DIVX3HAL_V200R004_WritePicMsg, %function
DIVX3HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1359:
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
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.31043,
	beq	.L33	@,
	ldr	r0, [r4, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp191,
	mov	r7, r5	@ p32, D.31043
	mov	sl, r8	@ tmp194, tmp191
	bfi	sl, r0, #0, #1	@ tmp194, <variable>.prediction_type,,
	str	sl, [fp, #-40]	@ tmp194,
	str	sl, [r7], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [fp, #-40]	@, D32
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	sl, r7, r0	@ p32.630, p32,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	ip, r1, #1	@ tmp200, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC4	@,
	sub	r2, r2, #1	@ tmp204, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC4	@,
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
	movw	r1, #:lower16:.LC7	@,
	bfi	ip, r2, #6, #1	@ tmp214, <variable>.has_skips,,
	str	ip, [fp, #-40]	@ tmp214,
	str	ip, [r7, #4]	@ tmp214,
	movt	r1, #:upper16:.LC7	@,
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
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, r2, #8, #1	@ tmp229, <variable>.alternative_MV,,
	str	r3, [fp, #-40]	@ tmp229,
	str	r3, [sl, #4]	@ tmp229,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
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
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r2, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r5, #72]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r3, [fp, #-40]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r3, [r5, #76]	@ <variable>.StreamPhyAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bfi	r8, r1, #0, #7	@ tmp256, <variable>.StreamBitOffset,,
	str	r8, [fp, #-40]	@ tmp256,
	str	r8, [r5, #80]	@ tmp256,
	movw	r1, #:lower16:.LC13	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	ip, [r5, #84]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp267, <variable>.DispFramePhyAddr,
	str	r3, [fp, #-40]	@ tmp267, <variable>.curr_rcn_addr
	str	r3, [r5, #128]	@ tmp267,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	bic	r2, ip, #15	@ tmp273, <variable>.FwdRefPhyAddr,
	str	r2, [fp, #-40]	@ tmp273, <variable>.fwd_ref_addr
	str	r2, [r5, #132]	@ tmp273,
	movt	r1, #:upper16:.LC16	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [fp, #-40]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #136]	@ tmp279,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [fp, #-40]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #140]	@ tmp285,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r2, ip, #15	@ tmp291, <variable>.ItransTopAddr,
	str	r2, [fp, #-40]	@ tmp291, <variable>.it_top_addr
	str	r2, [r5, #144]	@ tmp291,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	ip, r3, #15	@ tmp297, <variable>.CurrPmvPhyAddr,
	str	ip, [fp, #-40]	@ tmp297, <variable>.pmv_colmb_addr
	str	ip, [r5, #148]	@ tmp297,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp303, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
.L32:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L33:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #293	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L32	@
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
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
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r8, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r7, r2	@ VdhId, VdhId
	movw	r4, #1148	@ tmp201,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	sl, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r1, #:lower16:.LC22	@,
	mul	r6, r4, r7	@ tmp200, tmp201, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp403,
	mul	ip, sl, r0	@ tmp188, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r4, #:upper16:g_HwMem	@ tmp403,
	mov	sl, #0	@ tmp187,
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #3	@,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	sub	r3, ip, #1	@ tmp191, tmp188,
	bic	ip, r3, #-16777216	@ tmp198, tmp191,
	bic	r3, ip, #15728640	@ tmp198, tmp198,
	bfi	r3, sl, #25, #1	@ tmp198, tmp187,,
	str	r3, [fp, #-40]	@ tmp198,
	str	r3, [r2, #8]	@ tmp198,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r3, #5	@ tmp211,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #152]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp209, <variable>.DDRStride,
	movw	r1, #:lower16:.LC23	@,
	bfi	r3, ip, #4, #10	@ tmp211, tmp209,,
	movt	r1, #:upper16:.LC23	@,
	orr	ip, r3, #49152	@ tmp216, tmp211,
	bfi	ip, sl, #16, #12	@ tmp216, tmp187,,
	bic	r3, ip, #805306368	@ tmp217, tmp216,
	orr	ip, r3, #536870912	@ tmp221, tmp217,
	bfi	ip, r2, #30, #1	@ tmp221, <variable>.Compress_en,,
	bfi	ip, sl, #31, #1	@ tmp222, tmp187,,
	str	ip, [fp, #-40]	@ tmp222,
	str	ip, [lr, #12]	@ tmp222,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bic	r3, r2, #15	@ tmp233, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp233, <variable>.av_msg_addr
	str	r3, [ip, #16]	@ tmp233,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, r2, #15	@ tmp244, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp244, <variable>.va_msg_addr
	str	r3, [ip, #20]	@ tmp244,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r5, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	r6, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r6, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	sl, [fp, #-40]	@ tmp187, D32
	movls	r3, #65536	@ tmp264,
	strls	r3, [fp, #-40]	@ tmp264, D32
	cmp	r7, #0	@ VdhId,
	bne	.L46	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp267,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp267,
.L45:
	ldr	r6, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	lr, [fp, #-40]	@ D32, D32
	orr	r1, r0, lr	@ temp.763,, D32
	add	r0, r6, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L37:
	movw	r0, #1148	@ tmp278,
	movw	r2, #:lower16:3148803	@ tmp275,
	mul	r6, r0, r7	@ tmp277, tmp278, VdhId
	movt	r2, #:upper16:3148803	@ tmp275,
	str	r2, [fp, #-40]	@ tmp275, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [lr, #60]	@ tmp275,
	ldr	ip, [fp, #-40]	@ D32.770, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #64]	@ D32.770,
	ldr	lr, [fp, #-40]	@ D32.774, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #68]	@ D32.774,
	ldr	ip, [fp, #-40]	@ D32.778, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.778,
	ldr	lr, [fp, #-40]	@ D32.782, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #76]	@ D32.782,
	ldr	ip, [fp, #-40]	@ D32.786, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.786,
	ldr	lr, [fp, #-40]	@ D32.790, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #84]	@ D32.790,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bic	ip, r3, #15	@ D32.433, <variable>.CurPicPhyAddr,
	str	ip, [fp, #-40]	@ D32.433, D32
	str	ip, [r2, #96]	@ D32.433,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #136]	@ D32.796, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r6, [r5, #12]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	str	r3, [fp, #-40]	@ D32.796, D32
	str	r3, [ip, #100]	@ D32.796,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp331,
	mov	r2, r2, asl #4	@ D.30982, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp330, D.30982,
	cmp	r1, r3	@ tmp330, tmp331
	bls	.L40	@,
	sub	ip, r2, #2048	@ tmp332, D.30982,
	sub	r1, ip, #1	@ tmp332, tmp332,
	cmp	r1, r3	@ tmp332, tmp331
	movls	sl, #32	@ level,
	bls	.L42	@,
	sub	r0, r2, #4096	@ tmp335, D.30982,
	sub	lr, r0, #1	@ tmp335, tmp335,
	cmp	lr, r3	@ tmp335, tmp331
	movls	sl, #48	@ level,
	bls	.L42	@,
	sub	r1, r2, #6144	@ tmp338, D.30982,
	sub	r2, r1, #1	@ tmp338, tmp338,
	cmp	r2, r3	@ tmp338, tmp331
	movls	sl, #64	@ level,
	bhi	.L40	@,
.L42:
	ldr	ip, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r6, #1	@ tmp347, height_in_mb,
	ldr	r2, [r5, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	movw	r5, #1148	@ tmp354,
	mul	r7, r5, r7	@ tmp353, tmp354, VdhId
	mov	r1, ip, asl #4	@ tmp341, <variable>.PicHeightInMb,
	add	r3, r1, #31	@ tmp343, tmp341,
	mov	lr, r0, lsr #1	@ tmp348, tmp347,
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #3	@,
	mov	r5, r3, lsr #5	@ tmp344, tmp343,
	movt	r1, #:upper16:.LC30	@,
	mul	ip, r2, lr	@ tmp349, <variable>.DDRStride, tmp348
	mov	r2, r5, asl #4	@ tmp345, tmp344,
	ldr	lr, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r5, #0	@ tmp368,
	mla	r3, sl, r2, ip	@ tmp351, level, tmp345, tmp349
	mov	r2, r3, asl #1	@ D32.435, tmp351,
	str	r2, [fp, #-40]	@ D32.435, D32
	str	r2, [lr, #104]	@ D32.435,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r6, asl #4	@ tmp359, height_in_mb,
	add	r6, r0, #31	@ tmp360, tmp359,
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r6, r6, #31	@ tmp362, tmp360,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mul	sl, sl, r6	@ D32.436, level, tmp362
	str	sl, [ip, #108]	@ D32.436,
	ldr	r3, [r8, #1128]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [fp, #-40]	@ tmp368, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	str	r5, [ip, #148]	@ tmp368,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r5	@ tmp389, tmp368
	bfi	r1, r5, #0, #1	@ tmp389, tmp368,,
	str	r1, [fp, #-40]	@ tmp389,
	mov	r0, #3	@,
	str	r1, [r2, #152]	@ tmp389,
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp402,
	str	ip, [r3, #32]	@ tmp402,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L46:
	cmp	r7, #1	@ VdhId,
	bne	.L37	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp272,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp272,
	b	.L45	@
.L40:
	mov	sl, #16	@ level,
	b	.L42	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteReg, .-DIVX3HAL_V200R004_WriteReg
	.align	2
	.global	DIVX3HAL_V200R004_StartDec
	.type	DIVX3HAL_V200R004_StartDec, %function
DIVX3HAL_V200R004_StartDec:
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
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L54	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30878,
.L50:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L54:
	movw	r7, #1148	@ tmp143,
	movw	r6, #:lower16:g_HwMem	@ tmp144,
	mul	r7, r7, r1	@ tmp142, tmp143, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp144,
	add	r5, r6, r7	@ pHwMem, tmp144, tmp142
	ldr	r3, [r6, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L55	@,
.L51:
	movw	lr, #:lower16:.LANCHOR0	@ tmp148,
	movt	lr, #:upper16:.LANCHOR0	@ tmp148,
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	ldr	r3, [lr, #0]	@ FrameNum, FrameNum
	mov	r1, r4	@, pDivx3DecParam
	add	ip, r3, #1	@ tmp151, FrameNum,
	str	ip, [lr, #0]	@ tmp151, FrameNum
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.30878,
	b	.L50	@
.L55:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	subs	r2, r0, #0	@ D.30882,
	strne	r2, [r6, r7]	@ D.30882, <variable>.pVdmRegVirAddr
	bne	.L51	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30878,
	b	.L50	@
	.fnend
	.size	DIVX3HAL_V200R004_StartDec, .-DIVX3HAL_V200R004_StartDec
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
	.ascii	"L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC3:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D63 = 0x%x\012\000"
.LC6:
	.ascii	"configuring Pic Msg...\012\000"
.LC7:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D16 = 0x%x\012\000"
.LC10:
	.ascii	"D17 = 0x%x\012\000"
.LC11:
	.ascii	"D18 = 0x%x\012\000"
.LC12:
	.ascii	"D19 = 0x%x\012\000"
.LC13:
	.ascii	"D20 = 0x%x\012\000"
.LC14:
	.ascii	"D21 = 0x%x\012\000"
.LC15:
	.ascii	"D32 = 0x%x\012\000"
.LC16:
	.ascii	"D33 = 0x%x\012\000"
.LC17:
	.ascii	"D34 = 0x%x\012\000"
.LC18:
	.ascii	"D35 = 0x%x\012\000"
.LC19:
	.ascii	"D36 = 0x%x\012\000"
.LC20:
	.ascii	"D37 = 0x%x\012\000"
.LC21:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC22:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC23:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC24:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC25:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC26:
	.ascii	"STREAM_V200R003_BASE_ADDR=0x%x\012\000"
.LC27:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC28:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC29:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC30:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC31:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC32:
	.ascii	"REF_V200R004_PIC_TYPE=0x%x\012\000"
.LC33:
	.ascii	"FF_V200R004_APT_EN=0x%x\012\000"
	.space	3
.LC34:
	.ascii	"VdhId is wrong! DIVX3HAL_V200R004_StartDec\012\000"
.LC35:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
