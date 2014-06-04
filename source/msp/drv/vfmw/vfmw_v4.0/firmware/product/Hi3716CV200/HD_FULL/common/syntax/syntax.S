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
	.file	"syntax.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(syntax)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.o -O2 -Wall
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
	.global	ProduceTimeStamp
	.type	ProduceTimeStamp, %function
ProduceTimeStamp:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #18	@ eVidStd,
	ldrd	r4, [r1, #8]	@ ThisFramePts, p_image,
	beq	.L2	@,
	mov	r3, #328	@ tmp140,
	mov	r8, r4	@ tmp141, ThisFramePts
	ldrd	r6, [r0, r3]	@ D.35344, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.35344
	sbc	r9, r9, r7	@ tmp141, tmp141, D.35344
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.35344, tmp142
	cmpeq	r6, r8	@ D.35344, tmp142
	beq	.L3	@,
	sub	r3, r2, #8	@ tmp146, eVidStd,
	cmp	r3, #1	@ tmp146,
	movhi	r1, r9	@ InferedPTS,
	movhi	r0, r8	@ InferedPTS, tmp154
	ldmhifd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L5:
	mvn	r4, #0	@ tmp147,
	mvn	r5, #0	@,
	mov	r0, r4	@ InferedPTS, tmp155
	strd	r4, [r1]	@ tmp147, <variable>.SrcPts
	mov	r1, r5	@ InferedPTS,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L3:
	sub	r2, r2, #8	@ tmp143, eVidStd,
	cmp	r2, #1	@ tmp143,
	bls	.L9	@,
.L2:
	mov	r1, r5	@ InferedPTS,
	mov	r0, r4	@ InferedPTS, tmp156
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L9:
	ldr	ip, [r1, #140]	@ <variable>.format, <variable>.format
	and	r0, ip, #3	@ tmp144, <variable>.format,
	cmp	r0, #2	@ tmp144,
	bne	.L2	@,
	b	.L5	@
	.fnend
	.size	ProduceTimeStamp, .-ProduceTimeStamp
	.align	2
	.global	GetQueueImgNum
	.type	GetQueueImgNum, %function
GetQueueImgNum:
	.fnstart
.LFB1364:
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
	ldrh	r3, [r0, #6]	@ D.35522, <variable>.head
	ldrh	ip, [r0, #4]	@ D.35523, <variable>.history
	ldrh	r0, [r0, #8]	@ D.35531, <variable>.tail
	cmp	r3, ip	@ D.35522, D.35523
	addcc	r4, r3, #64	@ tmp142, D.35522,
	rsbcs	ip, ip, r3	@ ReadNum, D.35523, D.35522
	rsbcc	ip, ip, r4	@ ReadNum, D.35523, tmp142
	cmp	r3, r0	@ D.35522, D.35531
	addhi	r0, r0, #64	@ tmp143, D.35531,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.35522, tmp143
	str	r3, [r2, #0]	@ NewNum,* pNewImgNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetQueueImgNum, .-GetQueueImgNum
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
.LFB1375:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.36745, pstVdecUsdPool
	cmp	ip, #0	@ D.36745,
	beq	.L24	@,
.L18:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.620, D.36745
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L20:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.620,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.620, ivtmp.620,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L20	@,
	ldmfd	sp, {fp, sp, pc}	@
.L24:
	cmp	r1, #0	@ D.36745,
	str	r1, [r3, r0, asl #2]	@ D.36745, pstVdecUsdPool
	mov	ip, r1	@ D.36745, Viraddr
	mvneq	r0, #0	@ ret,
	ldmeqfd	sp, {fp, sp, pc}	@
	b	.L18	@
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
.LFB1376:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r2, [r3, r0, asl #2]	@ tmp135, pstVdecUsdPool
	cmp	r2, #0	@ tmp135,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, r0, asl #2]	@ tmp137, pstVdecUsdPool
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CloseUsdPool_WithMem, .-CloseUsdPool_WithMem
	.align	2
	.global	InitUsdPool
	.type	InitUsdPool, %function
InitUsdPool:
	.fnstart
.LFB1377:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.36617, pstVdecUsdPool
	cmp	r1, #0	@ D.36617,
	mvneq	r0, #0	@ D.36621,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.677, D.36617
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L31:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.677,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.677, ivtmp.677,
	str	r0, [r1, #1040]	@ tmp144, <variable>.dnr_used_flag
	str	r0, [r1, #1044]	@ tmp144, <variable>.from
	bne	.L31	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
.LFB1378:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.36632, pstVdecUsdPool
	cmp	r0, #0	@ D.36632,
	bne	.L46	@,
.L36:
	mov	r0, #0	@ pstUsrDat,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L46:
	mov	r2, r0	@ ivtmp.710, D.36632
	mov	r3, #0	@ i,
	b	.L39	@
.L37:
	ldr	r2, [r1, #1044]	@ <variable>.from, <variable>.from
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.from,
	mov	ip, r3	@ tmp203, i
	bne	.L42	@,
	ldr	r2, [r1, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	beq	.L45	@,
.L42:
	add	r3, ip, #1	@ i, tmp203,
	add	r2, r1, #1072	@ ivtmp.710, tmp204,
	cmp	r3, #48	@ i,
	beq	.L36	@,
.L39:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.710,
	cmp	ip, #0	@ <variable>.from,
	bne	.L37	@,
	ldr	r2, [r2, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	bne	.L37	@,
.L45:
	mov	r1, #1072	@ tmp150,
	mov	r5, #134	@ tmp145,
	mla	ip, r3, r1, r1	@ tmp179, i, tmp150, tmp150
	mul	r4, r5, r3	@ tmp144, tmp145, i
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.36632
	add	r5, ip, r0	@ tmp181, tmp179, D.36632
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.36632, tmp146,
	strb	r2, [r5, #1]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code
	mov	r4, #0	@ tmp159,
	strb	r2, [r5, #2]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code_extension_byte
	mov	r5, #0	@,
	str	r2, [r3, #1048]	@ <variable>.dnr_used_flag, <variable>.seq_cnt
	strd	r4, [r3, r1]	@ tmp159, tmp151, tmp154
	str	r2, [r3, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	str	r2, [r3, #1056]	@ <variable>.dnr_used_flag, <variable>.data_size
	str	r2, [r3, #1052]	@ <variable>.dnr_used_flag, <variable>.seq_img_cnt
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
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
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp135,
	strne	r3, [r1, #1036]	@ tmp135, <variable>.from
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FreeUsdByDec, .-FreeUsdByDec
	.align	2
	.global	MarkUsdByDnr
	.type	MarkUsdByDnr, %function
MarkUsdByDnr:
	.fnstart
.LFB1380:
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
	cmp	r1, #0	@ pUsrdat
	movne	r3, #1	@ tmp135,
	strne	r3, [r1, #1032]	@ tmp135, <variable>.dnr_used_flag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MarkUsdByDnr, .-MarkUsdByDnr
	.align	2
	.global	UnMarkUsdByDnr
	.type	UnMarkUsdByDnr, %function
UnMarkUsdByDnr:
	.fnstart
.LFB1381:
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
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp135,
	strne	r3, [r1, #1032]	@ tmp135, <variable>.dnr_used_flag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UnMarkUsdByDnr, .-UnMarkUsdByDnr
	.align	2
	.global	GetVoLastImageID
	.type	GetVoLastImageID, %function
GetVoLastImageID:
	.fnstart
.LFB1384:
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
	ldr	r0, [r0, #296]	@ D.36708, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.36708,
	mvnls	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1383:
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
	mov	r3, r0	@ pImg, pImg
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L60	@
.L67:
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.word	.L66
.L66:
	mov	ip, #0	@ tmp145,
	mov	r1, #2	@ tmp146,
	str	ip, [r0, #60]	@ tmp145, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp146, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L60:
	mov	r2, r1	@, Code
	mov	lr, #0	@ tmp147,
	mov	r0, #1	@ tmp148,
	str	lr, [r3, #60]	@ tmp147, <variable>.u32AspectWidth
	str	r0, [r3, #64]	@ tmp148, <variable>.u32AspectHeight
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L61:
	mov	r0, #0	@ tmp135,
	mov	r2, #1	@ tmp136,
	str	r0, [r3, #60]	@ tmp135, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp136, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L62:
	mov	ip, #4	@ tmp137,
	mov	r1, #3	@ tmp138,
	str	ip, [r0, #60]	@ tmp137, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp138, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	mov	r0, #16	@ tmp139,
	mov	r2, #9	@ tmp140,
	str	r0, [r3, #60]	@ tmp139, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp140, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L64:
	mov	ip, #221	@ tmp141,
	mov	r1, #100	@ tmp142,
	str	ip, [r0, #60]	@ tmp141, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp142, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	mov	r0, #235	@ tmp143,
	mov	r2, #100	@ tmp144,
	str	r0, [r3, #60]	@ tmp143, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp144, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
.LFB1382:
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
	cmp	r1, #0	@ p_image
	beq	.L79	@,
	ldrh	r3, [r0, #4]	@ i, <variable>.history
	ldrh	r4, [r0, #8]	@ D.36678, <variable>.tail
	and	r3, r3, #63	@ i.850, i,
	cmp	r4, r3	@ D.36678, i.850
	bne	.L77	@,
	b	.L73	@
.L74:
	cmp	r3, r4	@ i.850, D.36678
	beq	.L73	@,
.L77:
	add	r2, r0, r3, asl #2	@, tmp146, pstVoQue, i.850,
	add	ip, r3, #1	@ i.851, i.850,
	and	r3, ip, #63	@ i.850, i.851,
	ldr	r2, [r2, #12]	@ D.36681, <variable>.image_ptr
	cmp	r2, #0	@ D.36681,
	beq	.L74	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L74	@,
	mov	r0, #0	@ D.36675,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L73:
	mvn	r0, #0	@ D.36675,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L79:
	mov	r0, r1	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36675,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	InitVoQueue
	.type	InitVoQueue, %function
InitVoQueue:
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
	movw	r1, #:lower16:.LC2	@,
	mov	r4, r0	@ pstVoQue, pstVoQue
	movt	r1, #:upper16:.LC2	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp139,
	mvn	r3, #0	@ tmp147,
	mov	r0, #64	@ movhi	@,
	str	r2, [r4, #316]	@ tmp139, <variable>.SideInfo.SeqImgCnt
	strh	r0, [r4, #0]	@ movhi	@, <variable>.max_queue_size
	mov	r0, #1	@,
	strh	r2, [r4, #2]	@ movhi	@ tmp139, <variable>.queue_size
	str	r3, [r4, #280]	@ tmp147, <variable>.SideInfo.OldSeqCnt
	strh	r2, [r4, #4]	@ movhi	@ tmp139, <variable>.history
	strh	r2, [r4, #6]	@ movhi	@ tmp139, <variable>.head
	strh	r2, [r4, #8]	@ movhi	@ tmp139, <variable>.tail
	str	r2, [r4, #344]	@ tmp139, <variable>.ResetMagicWord
	str	r3, [r4, #272]	@ tmp147, <variable>.SideInfo.OldAspectRatio
	str	r3, [r4, #292]	@ tmp147, <variable>.SideInfo.OldDispCenter
	str	r3, [r4, #288]	@ tmp147, <variable>.SideInfo.OldDispSize
	str	r3, [r4, #284]	@ tmp147, <variable>.SideInfo.OldFrameRate
	str	r3, [r4, #276]	@ tmp147, <variable>.SideInfo.OldScanType
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	InitVoQueue, .-InitVoQueue
	.align	2
	.global	CloseUsdPool
	.type	CloseUsdPool, %function
CloseUsdPool:
	.fnstart
.LFB1374:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.36586, pstVdecUsdPool
	cmp	r0, #0	@ D.36586,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	bl	OSAL_FreeVirMem	@
	mov	r3, #0	@ tmp137,
	str	r3, [r4, r5, asl #2]	@ tmp137, pstVdecUsdPool
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CloseUsdPool, .-CloseUsdPool
	.align	2
	.global	OpenUsdPool
	.type	OpenUsdPool, %function
OpenUsdPool:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.36751, pstVdecUsdPool
	cmp	r0, #0	@ D.36751,
	beq	.L92	@,
.L86:
	mov	r1, #0	@ tmp142,
	mov	r3, r0	@ ivtmp.930, D.36751
	str	r1, [r0, #0]	@ tmp142, <variable>.s32AccessIdx
	mov	r2, r1	@ i, tmp142
	mov	r0, r1	@ tmp146, i
.L88:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp148, ivtmp.930,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp146, <variable>.from
	str	r0, [r3, #1040]	@ tmp146, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.930, ivtmp.930,
	str	r0, [ip, #1040]	@ tmp146, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp146, <variable>.from
	bne	.L88	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L92:
	movw	r0, #51464	@,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@ D.36751,
	str	r0, [r4, r5, asl #2]	@ D.36751, pstVdecUsdPool
	mvneq	r0, #0	@ ret,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L86	@
	.fnend
	.size	OpenUsdPool, .-OpenUsdPool
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
.LFB1372:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #2	@ VidStd,
	ldr	r4, [r2, #0]	@ pu8, <variable>.VirAddr
	beq	.L126	@,
.L94:
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ D.36494,* pu8
	cmp	r2, #0	@ D.36494,
	bne	.L127	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.948,
	cmp	r3, #0	@ prephitmp.948,
	ldrneb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.952,
	bne	.L97	@,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.952,
	cmp	ip, #1	@ prephitmp.952,
	beq	.L99	@,
.L97:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	ip, [sp, #0]	@ prephitmp.952,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
.L100:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L126:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ tmp155,
	tst	r3, #1	@ tmp155,
	movne	r3, #1	@ IsShortHead,
	beq	.L94	@,
.L95:
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp212,
	add	ip, r2, #75	@ tmp170, tmp212,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r2, #179	@ tmp212,
	cmpne	r1, #1	@, tmp172,
	bls	.L113	@,
	cmp	r2, #176	@ tmp212,
	beq	.L113	@,
	cmp	r2, #47	@ tmp212,
	bls	.L113	@,
.L114:
	cmp	r3, #1	@ IsShortHead,
	mvnne	r3, #0	@ ret,
	beq	.L115	@,
.L116:
	cmp	r2, #182	@ tmp212,
	bne	.L100	@,
.L124:
	mov	r2, #0	@ tmp210,
.L125:
	str	r2, [r0, #0]	@ tmp210,* pNewPicDetector
	b	.L100	@
.L99:
	cmp	r1, #15	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L101	@
.L108:
	.word	.L102
	.word	.L103
	.word	.L104
	.word	.L105
	.word	.L101
	.word	.L101
	.word	.L106
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L101
	.word	.L107
.L102:
	mov	r1, r4	@, pu8
	bl	H264_IsNewPicNal	@
	cmp	r0, #0	@,
	beq	.L109	@,
.L101:
	mvn	r3, #0	@ ret,
	b	.L100	@
.L107:
	mov	r1, r4	@, pu8
	bl	MVC_IsNewPicNal	@
	cmp	r0, #0	@,
	bne	.L101	@,
.L109:
	mov	r3, #0	@ ret,
	b	.L100	@
.L106:
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp214,
	cmp	r2, #176	@ tmp214,
	cmpne	r2, #179	@, tmp214,
	beq	.L117	@,
	cmp	r2, #182	@ tmp214,
	beq	.L117	@,
	cmp	r2, #183	@ tmp214,
	beq	.L117	@,
.L118:
	mvn	r3, #0	@ ret,
.L119:
	cmp	r2, #179	@ tmp214,
	cmpne	r2, #182	@, tmp214,
	bne	.L100	@,
	mov	r2, #0	@ tmp210,
	b	.L125	@
.L105:
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ prephitmp.967,
	cmp	r2, #0	@ prephitmp.967,
	cmpne	r2, #179	@, prephitmp.967,
	beq	.L110	@,
	cmp	r2, #184	@ prephitmp.967,
	beq	.L110	@,
	cmp	r2, #183	@ prephitmp.967,
	bne	.L101	@,
.L110:
	ldr	r3, [r0, #0]	@ tmp167,* pNewPicDetector
	cmp	r3, #0	@ tmp167,
	moveq	r2, #1	@ tmp168,
	streq	r2, [r0, #0]	@ tmp168,* pNewPicDetector
	ldreqb	r2, [r4, #3]	@ zero_extendqisi2	@ prephitmp.967,
	mvnne	r3, #0	@ ret,
	cmp	r2, #0	@ prephitmp.967,
	streq	r2, [r0, #0]	@ tmp210,* pNewPicDetector
	b	.L100	@
.L103:
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp215,
	cmp	r2, #10	@ tmp215,
	cmpne	r2, #12	@, tmp215,
	beq	.L120	@,
	cmp	r2, #13	@ tmp215,
	beq	.L120	@,
	cmp	r2, #14	@ tmp215,
	beq	.L120	@,
	cmp	r2, #15	@ tmp215,
	bne	.L101	@,
.L120:
	ldr	r3, [r0, #0]	@ tmp207,* pNewPicDetector
	cmp	r3, #0	@ tmp207,
	moveq	r2, #1	@ tmp208,
	streq	r2, [r0, #0]	@ tmp208,* pNewPicDetector
	ldreqb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp215,
	mvnne	r3, #0	@ ret,
	cmp	r2, #13	@ tmp215,
	bne	.L100	@,
	b	.L124	@
.L104:
	mov	r3, #0	@ IsShortHead,
	b	.L95	@
.L117:
	ldr	r3, [r0, #0]	@ tmp190,* pNewPicDetector
	cmp	r3, #0	@ tmp190,
	bne	.L118	@,
	mov	r2, #1	@ tmp191,
	str	r2, [r0, #0]	@ tmp191,* pNewPicDetector
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp214,
	b	.L119	@
.L113:
	ldr	r1, [r0, #0]	@ tmp179,* pNewPicDetector
	cmp	r1, #0	@ tmp179,
	bne	.L114	@,
.L115:
	mov	r3, #1	@ tmp180,
	str	r3, [r0, #0]	@ tmp180,* pNewPicDetector
	mov	r3, #0	@ ret,
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp212,
	b	.L116	@
.L127:
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.952,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.948,
	b	.L97	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
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
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #15	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L129	@
.L138:
	.word	.L146
	.word	.L146
	.word	.L131
	.word	.L146
	.word	.L129
	.word	.L132
	.word	.L133
	.word	.L129
	.word	.L134
	.word	.L135
	.word	.L136
	.word	.L136
	.word	.L136
	.word	.L137
	.word	.L129
	.word	.L146
.L129:
	mov	r2, r0	@, VidStd
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L146:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L135:
	ldr	r5, [r1, #0]	@ D.36329, <variable>.pstExtraData
	ldrb	lr, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	beq	.L147	@,
.L145:
	add	r0, r5, #224	@, D.36360,
	mov	r1, #160	@,
	bl	__memzero	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L137:
	ldr	r5, [r1, #0]	@ D.36349, <variable>.pstExtraData
	movw	ip, #8520	@ tmp175,
	ldr	r0, [r1, ip]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L145	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L145	@
.L131:
	movw	r0, #22060	@ tmp147,
	ldr	r5, [r1, r0]	@ D.36300, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L148	@,
	movw	r6, #22960	@ tmp152,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #320]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L136:
	ldr	r5, [r1, #0]	@ D.36360, <variable>.pstExtraData
	movw	lr, #13000	@ tmp181,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L145	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L145	@
.L132:
	ldr	r5, [r1, #0]	@ D.36339, <variable>.pstExtraData
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L145	@,
	movw	r2, #61824	@ tmp171,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L133:
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L134:
	ldr	r5, [r1, #0]	@ D.36319, <variable>.pstExtraData
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	bne	.L145	@,
	movw	ip, #:lower16:74152	@ tmp161,
	movt	ip, #:upper16:74152	@ tmp161,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L148:
	movw	r2, #22960	@ tmp149,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L147:
	movw	r3, #:lower16:74128	@ tmp166,
	movt	r3, #:upper16:74128	@ tmp166,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r3]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1371:
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
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #15	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L150	@
.L162:
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L150
	.word	.L155
	.word	.L156
	.word	.L150
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L159
	.word	.L159
	.word	.L160
	.word	.L150
	.word	.L161
.L161:
	mov	r0, r1	@, pCtx
	bl	MVC_ClearCurrPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L150:
	mov	r2, r0	@, VidStd
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L151:
	mov	r0, r1	@, pCtx
	bl	H264_ClearCurrPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L152:
	movw	r3, #:lower16:114064	@ tmp164,
	movt	r3, #:upper16:114064	@ tmp164,
	add	r2, r1, #77824	@, pCtx,
	add	r0, r2, #416	@,,
	ldr	r1, [r1, r3]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L153:
	mov	r0, r1	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L154:
	mov	r0, r1	@, pCtx
	bl	MP2_ClearCurPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L155:
	ldr	r5, [r1, #0]	@ D.36434, <variable>.pstExtraData
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L170	@,
.L168:
	add	r0, r5, #224	@, D.36458,
	mov	r1, #160	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L156:
	mov	r0, r1	@, pCtx
	bl	AVS_ClearCurPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L157:
	ldr	r5, [r1, #0]	@ D.36412, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	bne	.L168	@,
	movw	r2, #:lower16:74152	@ tmp148,
	movt	r2, #:upper16:74152	@ tmp148,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L168	@
.L158:
	ldr	r5, [r1, #0]	@ D.36424, <variable>.pstExtraData
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L168	@,
	movw	ip, #:lower16:74128	@ tmp153,
	movt	ip, #:upper16:74128	@ tmp153,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L168	@
.L159:
	ldr	r5, [r1, #0]	@ D.36458, <variable>.pstExtraData
	movw	lr, #13000	@ tmp172,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L168	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L168	@
.L160:
	ldr	r5, [r1, #0]	@ D.36447, <variable>.pstExtraData
	movw	ip, #8520	@ tmp166,
	ldr	r0, [r1, ip]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L168	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L168	@
.L170:
	movw	lr, #61824	@ tmp158,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L168	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
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
	subs	r4, r1, #0	@ pSegMan, pSegMan
	mov	r6, r0	@ ChanID, ChanID
	beq	.L172	@,
	ldr	r3, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ <variable>.CurrSeg.VirAddr,
	beq	.L172	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.36193, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.36193,
	beq	.L182	@,
	cmp	r5, #0	@ D.36193,
	beq	.L183	@,
.L177:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L183:
	add	r8, r4, #88	@ temp.1062, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, temp.1062
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp162, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.36211, tmp162
	strb	r0, [r4, #2]	@ D.36211, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.36211,
	bls	.L177	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.1062
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp167,
	movt	ip, #:upper16:g_event_report	@ tmp167,
	ldr	r3, [ip, #0]	@ g_event_report.503, g_event_report
	cmp	r3, #0	@ g_event_report.503,
	beq	.L178	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.36193
	mov	r1, #113	@,
	blx	r3	@ g_event_report.503
.L178:
	mov	lr, #0	@ tmp168,
	mvn	r0, #0	@ ret,
	strb	lr, [r4, #2]	@ tmp168, <variable>.ConvolutionPacketNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L182:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.36195, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.36195,
	beq	.L184	@,
	cmp	r5, #1	@ D.36195,
	bne	.L177	@,
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #1024	@ <variable>.LenInByte,
	blt	.L185	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
.L180:
	mov	r0, #0	@ tmp205,
	strb	r0, [r4, #2]	@ tmp205, <variable>.ConvolutionPacketNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L184:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.36195, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.36195
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L185:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ D.36239, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	mov	r2, r3	@, D.36239
	rsb	r0, r3, r0	@, D.36239, <variable>.CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	rsb	r1, r3, r1	@ tmp184, <variable>.LenInByte, <variable>.CurrSeg.VirAddr
	rsb	r2, r3, r2	@ tmp187, <variable>.LenInByte, <variable>.CurrSeg.PhyAddr
	str	r1, [r4, #88]	@ tmp184, <variable>.VirAddr
	add	r3, r3, ip	@ tmp190, <variable>.LenInByte, <variable>.CurrSeg.LenInByte
	str	r2, [r4, #96]	@ tmp187, <variable>.PhyAddr
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	strb	r5, [r4, #93]	@ D.36195, <variable>.IsLastSeg
	str	r3, [r4, #100]	@ tmp190, <variable>.LenInByte
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r2, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L180	@
.L172:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1368:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #64
	sub	sp, sp, #64	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pSegMan, pSegMan
	mov	r5, r2	@ pstCtx, pstCtx
	cmp	r1, #15	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L229	@
.L200:
	.word	.L188
	.word	.L189
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L229
	.word	.L195
	.word	.L196
	.word	.L197
	.word	.L197
	.word	.L197
	.word	.L198
	.word	.L192
	.word	.L199
.L189:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@, <variable>.CurrSeg.IsLastSeg
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, <variable>.CurrSeg.PhyAddr
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, <variable>.CurrSeg.LenInByte
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ D.35917, <variable>.pstExtraData
	ldr	r2, [r3, #388]	@ D.35918, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ D.35918,
	bhi	.L245	@,
	ldr	r0, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r0, #8	@ <variable>.StdExt.Vc1Ext.CodecVersion,
	bgt	.L246	@,
	movw	lr, #:lower16:81336	@ tmp245,
	movt	lr, #:upper16:81336	@ tmp245,
	uxtb	r2, r2	@ D.35927, D.35918
	movw	ip, #:lower16:81338	@ tmp247,
	strb	r2, [r5, lr]	@ D.35927, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	movt	ip, #:upper16:81338	@ tmp247,
	ldr	r3, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r2, #1	@ D.35927,
	strb	r3, [r5, ip]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	beq	.L247	@,
	ldrb	r6, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r6, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L236	@,
	add	r6, r4, #88	@ D.35957, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	mov	r0, r6	@, D.35957
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r0, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #15	@ <variable>.LenInByte,
	bgt	.L211	@,
	movw	r6, #:lower16:114064	@ tmp278,
	movw	r1, #:lower16:.LC20	@,
	movt	r6, #:upper16:114064	@ tmp278,
	movt	r1, #:upper16:.LC20	@,
	mov	r0, #0	@,
.L235:
	bl	dprint_vfmw	@
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp297,
	movt	r1, #:upper16:g_event_report	@ tmp297,
	ldr	r3, [r1, #0]	@ g_event_report.1129, g_event_report
	cmp	r3, #0	@ g_event_report.1129,
	beq	.L229	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.1129
.L229:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L192:
	add	r6, r4, #88	@ tmp460, pSegMan,
	mov	r0, #1	@ tmp458,
	add	r1, r4, #8	@, pSegMan,
	strb	r0, [r4, #1]	@ tmp458, <variable>.IsCurrSegWaitDec
	mov	r2, #80	@,
	mov	r0, r6	@, tmp460
	bl	memcpy	@
	movw	r3, #:lower16:g_SdecFunc	@ tmp466,
	movt	r3, #:upper16:g_SdecFunc	@ tmp466,
	ldr	r3, [r3, #12]	@ temp.1202, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ temp.1202,
	beq	.L228	@,
	mov	r1, r6	@, tmp460
	mov	r0, r5	@, pstCtx
	blx	r3	@ temp.1202
	cmn	r0, #2	@,
	beq	.L229	@,
.L228:
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, #0]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r1, #0	@ tmp470,
	strb	r1, [r4, #1]	@ tmp470, <variable>.IsCurrSegWaitDec
	b	.L229	@
.L193:
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	lr, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #61824	@ tmp381,
	beq	.L230	@,
	add	r6, r0, #88	@ temp.1165, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1165
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1165
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pDivx3DecParam, <variable>.pDivx3DecParam
	cmp	r7, #0	@ <variable>.pDivx3DecParam,
	moveq	r0, r6	@, temp.1165
	moveq	r1, #160	@,
	movweq	r6, #61824	@ tmp393,
	bne	.L229	@,
	b	.L240	@
.L194:
	mov	r0, r2	@, pstCtx
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	beq	.L248	@,
.L217:
	movw	ip, #16592	@ tmp330,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L249	@,
.L218:
	ldr	r4, [r5, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r4, #0	@ <variable>.pAvsDecParam,
	bne	.L229	@,
	movw	r6, #17108	@ tmp334,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	movw	r3, #16592	@ tmp337,
	ldr	r0, [r5, r3]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pAvsDecParam,
	b	.L229	@
.L195:
	ldrb	r6, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r6, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L250	@,
	add	r6, r0, #88	@ temp.1143, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1143
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1143
	bl	REAL8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv8DecParam, <variable>.pRv8DecParam
	cmp	r7, #0	@ <variable>.pRv8DecParam,
	movweq	r8, #:lower16:74152	@ tmp355,
	movteq	r8, #:upper16:74152	@ tmp355,
	bne	.L229	@,
.L238:
	mov	r0, r6	@, temp.1154
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r8]	@,
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp377,
	movt	r1, #:upper16:g_event_report	@ tmp377,
	ldr	r3, [r1, #0]	@ g_event_report.1160, g_event_report
	cmp	r3, #0	@ g_event_report.1160,
	beq	.L229	@,
	ldr	r0, [r5, r8]	@,
	mov	r2, r7	@, <variable>.pRv9DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.1160
	b	.L229	@
.L196:
	ldrb	r0, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r0, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #:lower16:74128	@ tmp362,
	movteq	r6, #:upper16:74128	@ tmp362,
	beq	.L230	@,
	add	r6, r4, #88	@ temp.1154, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, temp.1154
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1154
	bl	REAL9DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv9DecParam, <variable>.pRv9DecParam
	cmp	r7, #0	@ <variable>.pRv9DecParam,
	bne	.L229	@,
	movw	r8, #:lower16:74128	@ tmp374,
	movt	r8, #:upper16:74128	@ tmp374,
	b	.L238	@
.L197:
	movw	r3, #:lower16:g_VdmCharacter	@ tmp418,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp418,
	ldr	ip, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r0, ip, #1	@ tmp419, g_VdmCharacter,
	beq	.L223	@,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r0, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #13000	@ tmp422,
	beq	.L230	@,
	add	r6, r4, #88	@ temp.1187, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, temp.1187
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1187
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp6DecParam, <variable>.pVp6DecParam
	cmp	r7, #0	@ <variable>.pVp6DecParam,
	bne	.L229	@,
	mov	r0, r6	@, temp.1187
	mov	r1, #160	@,
	movw	r6, #13000	@ tmp434,
.L240:
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@,
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp437,
	movt	r1, #:upper16:g_event_report	@ tmp437,
	ldr	r3, [r1, #0]	@ g_event_report.1193, g_event_report
	cmp	r3, #0	@ g_event_report.1193,
	beq	.L229	@,
	ldr	r0, [r5, r6]	@,
	mov	r2, r7	@, <variable>.pVp6DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.1193
	b	.L229	@
.L198:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r2, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L236	@,
	add	r6, r0, #88	@ temp.1178, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1178
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1178
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp8DecParam, <variable>.pVp8DecParam
	cmp	r7, #0	@ <variable>.pVp8DecParam,
	moveq	r0, r6	@, temp.1178
	moveq	r1, #160	@,
	movweq	r6, #8520	@ tmp412,
	bne	.L229	@,
	b	.L240	@
.L199:
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	sub	r1, fp, #100	@,,
	ldrd	r8, [r0, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	lr, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsLastSeg, <variable>.CurrSeg.IsLastSeg
	str	r3, [fp, #-84]	@ <variable>.CurrSeg.StreamID, MvcPack.StreamID
	strd	r8, [fp, #-76]	@ <variable>.CurrSeg.Pts,,
	str	r6, [fp, #-96]	@ <variable>.CurrSeg.VirAddr, MvcPack.p_stream
	str	lr, [fp, #-92]	@ <variable>.CurrSeg.PhyAddr, MvcPack.strm_phy_addr
	str	ip, [fp, #-88]	@ <variable>.CurrSeg.LenInByte, MvcPack.stream_len
	strb	r2, [fp, #-100]	@ <variable>.CurrSeg.IsLastSeg, MvcPack.last_pack_in_nal
	bl	MVC_DEC_DecodePacket	@
	cmn	r0, #2	@,
	moveq	r3, #1	@ tmp223,
	movne	r3, #0	@ tmp225,
	strb	r3, [r4, #1]	@ tmp225, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pMvcDecParam, <variable>.pMvcDecParam
	cmp	r4, #0	@ <variable>.pMvcDecParam,
	bne	.L229	@,
	movw	r6, #13556	@ tmp228,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:11199520	@ tmp231,
	movt	r1, #:upper16:11199520	@ tmp231,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMvcDecParam,
	b	.L229	@
.L188:
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ <variable>.CurrSeg.DspCheckPicOverFlag, <variable>.CurrSeg.DspCheckPicOverFlag
	sub	r1, fp, #68	@,,
	ldrd	r8, [r0, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	mov	r0, r2	@, pstCtx
	ldr	r7, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r6, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	lr, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsLastSeg, <variable>.CurrSeg.IsLastSeg
	ldr	r2, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	strb	r3, [fp, #-67]	@ <variable>.CurrSeg.DspCheckPicOverFlag, H264Pack.pack_is_pic_over_flag
	strd	r8, [fp, #-44]	@ <variable>.CurrSeg.Pts,,
	str	r7, [fp, #-64]	@ <variable>.CurrSeg.VirAddr, H264Pack.p_stream
	str	r6, [fp, #-60]	@ <variable>.CurrSeg.PhyAddr, H264Pack.strm_phy_addr
	str	lr, [fp, #-56]	@ <variable>.CurrSeg.LenInByte, H264Pack.stream_len
	strb	ip, [fp, #-68]	@ <variable>.CurrSeg.IsLastSeg, H264Pack.last_pack_in_nal
	str	r2, [fp, #-52]	@ <variable>.CurrSeg.StreamID, H264Pack.StreamID
	bl	H264DEC_DecodePacket	@
	cmn	r0, #2	@,
	moveq	r3, #1	@ tmp202,
	movne	r3, #0	@ tmp204,
	strb	r3, [r4, #1]	@ tmp204, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pH264DecParam, <variable>.pH264DecParam
	cmp	r4, #0	@ <variable>.pH264DecParam,
	bne	.L229	@,
	movw	r6, #13556	@ tmp207,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r1, #55520	@ tmp210,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam,
	b	.L229	@
.L190:
	mov	r0, r2	@, pstCtx
	bl	MP4_GetPacketState	@
	cmp	r0, #3	@,
	beq	.L251	@,
.L215:
	movw	r3, #22960	@ tmp316,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L252	@,
.L216:
	ldr	r4, [r5, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r4, #0	@ <variable>.pMp4DecParam,
	bne	.L229	@,
	movw	r6, #53736	@ tmp320,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	movw	r1, #22960	@ tmp323,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp4DecParam,
	b	.L229	@
.L191:
	mov	r0, r2	@, pstCtx
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L253	@,
.L213:
	movw	r2, #:lower16:108512	@ tmp302,
	movt	r2, #:upper16:108512	@ tmp302,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L254	@,
.L214:
	ldr	r4, [r5, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r4, #0	@ <variable>.pMp2DecParam,
	bne	.L229	@,
	movw	r6, #:lower16:108529	@ tmp306,
	movt	r6, #:upper16:108529	@ tmp306,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:108512	@ tmp309,
	movt	ip, #:upper16:108512	@ tmp309,
	ldr	r0, [r5, ip]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp2DecParam,
	b	.L229	@
.L250:
	movw	r6, #:lower16:74152	@ tmp343,
	movt	r6, #:upper16:74152	@ tmp343,
.L230:
	ldr	r0, [r5, r6]	@,
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@,
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L229	@
.L223:
	movw	ip, #23544	@ tmp441,
	ldr	r2, [r2, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #388]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	lr, #1	@ <variable>.StdExt.Vp6Ext.bReversed,
	bls	.L192	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L229	@
.L245:
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L229	@
.L248:
	add	r2, r5, #16384	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r2, #48	@,,
	bl	AVSDEC_Decode	@
	b	.L217	@
.L249:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L218	@
.L254:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L214	@
.L252:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L216	@
.L236:
	movw	r6, #:lower16:114064	@ tmp400,
	movt	r6, #:upper16:114064	@ tmp400,
	b	.L230	@
.L211:
	add	r2, r5, #80896	@, pstCtx,
	ldr	r0, [r4, #88]	@, <variable>.VirAddr
	add	r2, r2, #440	@,,
	mov	r1, #16	@,
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	beq	.L255	@,
	movw	r6, #:lower16:114064	@ tmp294,
	movw	r1, #:lower16:.LC21	@,
	movt	r6, #:upper16:114064	@ tmp294,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC21	@,
	b	.L235	@
.L253:
	add	r3, r5, #76800	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r3, #80	@,,
	bl	MPEG2DEC_Decode	@
	b	.L213	@
.L251:
	add	lr, r5, #15680	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, lr, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L215	@
.L246:
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L229	@
.L247:
	mov	r0, r5	@, pstCtx
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L256	@,
.L208:
	movw	ip, #:lower16:114064	@ tmp254,
	movt	ip, #:upper16:114064	@ tmp254,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L257	@,
.L209:
	ldr	r4, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	cmp	r4, #0	@ <variable>.pVc1DecParam,
	bne	.L229	@,
	movw	r6, #:lower16:78247	@ tmp257,
	movt	r6, #:upper16:78247	@ tmp257,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.IsStreamEndFlag, <variable>.CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.CodecInfo.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:114064	@ tmp260,
	movt	r3, #:upper16:114064	@ tmp260,
	ldr	r0, [r5, r3]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pVc1DecParam,
	b	.L229	@
.L255:
	ldr	ip, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r6	@, D.35957
	ldr	r2, [r4, #88]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, r5	@, pstCtx
	ldr	r3, [r4, #96]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	lr, ip, #16	@ tmp288, <variable>.LenInByte,
	add	ip, r2, #16	@ tmp290, <variable>.VirAddr,
	str	lr, [r4, #100]	@ tmp288, <variable>.LenInByte
	str	ip, [r4, #88]	@ tmp290, <variable>.VirAddr
	add	lr, r3, #16	@ tmp292, <variable>.PhyAddr,
	str	lr, [r4, #96]	@ tmp292, <variable>.PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r6	@, D.35957
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L229	@
.L257:
	add	r4, r4, #88	@ D.35940, pSegMan,
	mov	r0, r5	@, pstCtx
	mov	r1, r4	@, D.35940
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.35940
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L209	@
.L256:
	add	r1, r5, #77824	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r1, #256	@,,
	bl	VC1DEC_Decode	@
	b	.L208	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	SYNTAX_ReturnImage
	.type	SYNTAX_ReturnImage, %function
SYNTAX_ReturnImage:
	.fnstart
.LFB1367:
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
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L259	@
.L273:
	.word	.L272
	.word	.L261
	.word	.L262
	.word	.L263
	.word	.L264
	.word	.L265
	.word	.L266
	.word	.L259
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L269
	.word	.L269
	.word	.L270
	.word	.L264
	.word	.L272
	.word	.L259
	.word	.L259
	.word	.L272
.L272:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L275:
	ldr	r0, .L278	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r2, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L278	@,
	sub	r1, r2, #1	@ tmp156, <variable>.head,
	and	r3, r1, #63	@ tmp158, tmp156,
	strh	r3, [r4, #6]	@ movhi	@ tmp158, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.35809,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L269:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp146,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp146,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L275	@,
.L264:
	add	lr, r0, #23552	@ pstVoQue, pSynCtx,
	add	r4, lr, #8	@ pstVoQue, pstVoQue,
	b	.L275	@
.L265:
	add	r4, r0, #30720	@ pstVoQue, pSynCtx,
	add	r4, r4, #24	@ pstVoQue, pstVoQue,
	b	.L275	@
.L266:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #16	@ pstVoQue, pstVoQue,
	b	.L275	@
.L267:
	add	lr, r0, #43008	@ pstVoQue, pSynCtx,
	add	r4, lr, #64	@ pstVoQue, pstVoQue,
	b	.L275	@
.L268:
	add	r3, r0, #43008	@ pstVoQue, pSynCtx,
	add	r4, r3, #40	@ pstVoQue, pstVoQue,
	b	.L275	@
.L261:
	add	ip, r0, #113664	@ pstVoQue, pSynCtx,
	add	r4, ip, #56	@ pstVoQue, pstVoQue,
	b	.L275	@
.L262:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L275	@
.L263:
	add	r4, r0, #76800	@ pstVoQue, pSynCtx,
	add	r4, r4, #632	@ pstVoQue, pstVoQue,
	b	.L275	@
.L259:
	mvn	r0, #1	@ D.35809,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L270:
	add	r1, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r1, #48	@ pstVoQue, pstVoQue,
	b	.L275	@
.L279:
	.align	2
.L278:
	.word	.LANCHOR0+64
	.fnend
	.size	SYNTAX_ReturnImage, .-SYNTAX_ReturnImage
	.align	2
	.global	SYNTAX_ReceiveImage
	.type	SYNTAX_ReceiveImage, %function
SYNTAX_ReceiveImage:
	.fnstart
.LFB1365:
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
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	mov	r4, r1	@ p_image, p_image
	bne	.L302	@,
.L281:
	mvn	r5, #1	@ ret,
.L300:
	mov	r0, r5	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L302:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L281	@
.L295:
	.word	.L294
	.word	.L283
	.word	.L284
	.word	.L285
	.word	.L286
	.word	.L287
	.word	.L288
	.word	.L281
	.word	.L289
	.word	.L290
	.word	.L291
	.word	.L291
	.word	.L291
	.word	.L292
	.word	.L286
	.word	.L294
	.word	.L281
	.word	.L281
	.word	.L294
.L294:
	add	r6, r0, #16	@ pstVoQue, pSynCtx,
.L296:
	ldr	r0, .L303	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r6, #6]	@ D.35574, <variable>.head
	ldrh	r0, [r6, #8]	@ <variable>.tail, <variable>.tail
	cmp	r0, r3	@ <variable>.tail, D.35574
	mvneq	r5, #2	@ ret,
	beq	.L299	@,
	add	lr, r6, r3, asl #2	@, tmp167, pstVoQue, D.35574,
	mov	r2, #456	@,
	mov	r0, r4	@, p_image
	mov	r5, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	ldrh	ip, [r6, #8]	@ <variable>.tail, <variable>.tail
	ldrh	r2, [r6, #4]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	ldrh	r3, [r6, #6]	@ <variable>.head, <variable>.head
	movw	r1, #:lower16:.LC26	@,
	str	ip, [sp, #0]	@ <variable>.tail,
	movt	r1, #:upper16:.LC26	@,
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	add	ip, r3, r0	@ tmp181, <variable>.image_id, <variable>.ResetMagicWord
	str	ip, [r4, #176]	@ tmp181, <variable>.image_id
	ldrh	r2, [r6, #6]	@ <variable>.head, <variable>.head
	add	r1, r2, r5	@ tmp184, <variable>.head,
	and	r3, r1, #63	@ tmp186, tmp184,
	strh	r3, [r6, #6]	@ movhi	@ tmp186, <variable>.head
.L299:
	ldr	r0, .L303	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L300	@
.L291:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp155,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp155,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	addne	r6, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r6, r6, #48	@ pstVoQue, pstVoQue,
	bne	.L296	@,
.L286:
	add	lr, r0, #23552	@ pstVoQue, pSynCtx,
	add	r6, lr, #8	@ pstVoQue, pstVoQue,
	b	.L296	@
.L285:
	add	r6, r0, #76800	@ pstVoQue, pSynCtx,
	add	r6, r6, #632	@ pstVoQue, pstVoQue,
	b	.L296	@
.L292:
	add	r1, r0, #8128	@ pstVoQue, pSynCtx,
	add	r6, r1, #48	@ pstVoQue, pstVoQue,
	b	.L296	@
.L284:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r6, r1, #88	@ pstVoQue, pstVoQue,
	b	.L296	@
.L283:
	add	ip, r0, #113664	@ pstVoQue, pSynCtx,
	add	r6, ip, #56	@ pstVoQue, pstVoQue,
	b	.L296	@
.L290:
	add	r3, r0, #43008	@ pstVoQue, pSynCtx,
	add	r6, r3, #40	@ pstVoQue, pstVoQue,
	b	.L296	@
.L289:
	add	lr, r0, #43008	@ pstVoQue, pSynCtx,
	add	r6, lr, #64	@ pstVoQue, pstVoQue,
	b	.L296	@
.L288:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r6, r2, #16	@ pstVoQue, pstVoQue,
	b	.L296	@
.L287:
	add	r6, r0, #30720	@ pstVoQue, pSynCtx,
	add	r6, r6, #24	@ pstVoQue, pstVoQue,
	b	.L296	@
.L304:
	.align	2
.L303:
	.word	.LANCHOR0+64
	.fnend
	.size	SYNTAX_ReceiveImage, .-SYNTAX_ReceiveImage
	.align	2
	.global	ResetVoQueue
	.type	ResetVoQueue, %function
ResetVoQueue:
	.fnstart
.LFB1360:
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
	ldr	r5, .L307	@ tmp135,
	mov	r4, r0	@ pstVoQue, pstVoQue
	mov	r0, r5	@, tmp135
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	mov	ip, #328	@ tmp155,
	mov	r1, #336	@ tmp158,
	mov	r3, #0	@ tmp139,
	mvn	r2, #0	@ tmp148,
	add	r6, r7, #100	@ tmp147, <variable>.ResetMagicWord,
	mov	r0, #64	@ movhi	@,
	str	r6, [r4, #344]	@ tmp147, <variable>.ResetMagicWord
	mvn	r7, #0	@,
	strh	r0, [r4, #0]	@ movhi	@, <variable>.max_queue_size
	mvn	r6, #0	@ tmp156,
	mov	r0, r5	@, tmp135
	strd	r6, [r4, ip]	@ tmp156, pstVoQue, tmp155
	str	r3, [r4, #324]	@ tmp139, <variable>.SideInfo.PrevNumFramesBtwPTS
	mov	r6, #0	@ tmp159,
	mov	r7, #0	@,
	strh	r3, [r4, #2]	@ movhi	@ tmp139, <variable>.queue_size
	str	r2, [r4, #280]	@ tmp148, <variable>.SideInfo.OldSeqCnt
	strd	r6, [r4, r1]	@ tmp159, pstVoQue, tmp158
	strh	r3, [r4, #4]	@ movhi	@ tmp139, <variable>.history
	strh	r3, [r4, #6]	@ movhi	@ tmp139, <variable>.head
	strh	r3, [r4, #8]	@ movhi	@ tmp139, <variable>.tail
	str	r2, [r4, #272]	@ tmp148, <variable>.SideInfo.OldAspectRatio
	str	r2, [r4, #292]	@ tmp148, <variable>.SideInfo.OldDispCenter
	str	r2, [r4, #288]	@ tmp148, <variable>.SideInfo.OldDispSize
	str	r2, [r4, #284]	@ tmp148, <variable>.SideInfo.OldFrameRate
	str	r2, [r4, #276]	@ tmp148, <variable>.SideInfo.OldScanType
	str	r3, [r4, #316]	@ tmp139, <variable>.SideInfo.SeqImgCnt
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L308:
	.align	2
.L307:
	.word	.LANCHOR0+64
	.fnend
	.size	ResetVoQueue, .-ResetVoQueue
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
.LFB1366:
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
	subs	r4, r1, #0	@ p_image, p_image
	mov	r5, r0	@ pSynCtx, pSynCtx
	bne	.L373	@,
.L310:
	mvn	r4, #1	@ ret,
.L354:
	mov	r0, r4	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L373:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L310	@
.L324:
	.word	.L323
	.word	.L312
	.word	.L313
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L317
	.word	.L310
	.word	.L318
	.word	.L319
	.word	.L320
	.word	.L320
	.word	.L320
	.word	.L321
	.word	.L315
	.word	.L323
	.word	.L310
	.word	.L310
	.word	.L323
.L323:
	add	r7, r0, #16	@ pstVoQue, pSynCtx,
.L325:
	ldr	r0, .L374	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r7, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	rsb	r6, ip, r3	@ tmp174, <variable>.ResetMagicWord, <variable>.image_id
	str	r6, [r4, #176]	@ tmp174, <variable>.image_id
	ldrh	r2, [r7, #4]	@ i, <variable>.history
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	and	r6, r2, #63	@ i.1338, i,
	cmp	r3, r6	@ <variable>.head, i.1338
	bne	.L357	@,
	b	.L327	@
.L330:
	add	r6, r6, #1	@ i.1337, i.1338,
	and	r6, r6, #63	@ i.1338, i.1337,
	cmp	r3, r6	@ <variable>.head, i.1338
	beq	.L327	@,
.L357:
	add	r8, r6, #2	@ tmp228, i.1338,
	add	lr, r7, r8, asl #2	@, tmp179, pstVoQue, tmp228,
	ldr	r2, [lr, #4]	@ D.35657, <variable>.image_ptr
	cmp	r2, #0	@ D.35657,
	beq	.L328	@,
	ldr	r1, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, r1	@ <variable>.image_id, <variable>.image_id
	bne	.L330	@,
	mov	sl, #1	@ SameImageFlag,
.L331:
	ldrh	lr, [r7, #4]	@ temp.1308, <variable>.history
	b	.L355	@
.L334:
	mov	r6, r2	@ i.1338, j
.L355:
	cmp	r6, #0	@ i.1338,
	sub	r2, r6, #1	@ j, i.1338,
	add	r0, r7, r8, asl #2	@, tmp187, pstVoQue, tmp228,
	moveq	r2, #63	@ j,
	add	r1, r2, #2	@ tmp189, j,
	cmp	lr, r6	@ temp.1308, i.1338
	add	ip, r7, r1, asl #2	@, tmp192, pstVoQue, tmp189,
	mov	r8, r1	@ tmp228, tmp189
	ldr	r1, [ip, #4]	@ tmp194, <variable>.image_ptr
	str	r1, [r0, #4]	@ tmp194, <variable>.image_ptr
	bne	.L334	@,
	cmp	sl, #1	@ SameImageFlag,
	add	lr, lr, #1	@ tmp195, temp.1308,
	and	r2, lr, #63	@ D.35652, tmp195,
	strh	r2, [r7, #4]	@ movhi	@ D.35652, <variable>.history
	bne	.L330	@,
	ldrh	lr, [r7, #8]	@ <variable>.tail, <variable>.tail
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	str	lr, [sp, #0]	@ <variable>.tail,
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	movw	r3, #55528	@ tmp200,
	ldr	r1, [r4, #176]	@, <variable>.image_id
	ldr	r0, [r5, r3]	@, <variable>.unSyntax.stH264Ctx.ChanID
	bl	Tree_FSP_RenewFs	@
	ldr	r2, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L327	@
.L348:
	.word	.L335
	.word	.L336
	.word	.L337
	.word	.L338
	.word	.L339
	.word	.L340
	.word	.L341
	.word	.L327
	.word	.L342
	.word	.L343
	.word	.L344
	.word	.L344
	.word	.L344
	.word	.L345
	.word	.L339
	.word	.L346
	.word	.L327
	.word	.L327
	.word	.L347
.L320:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp164,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp164,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	addne	r7, r5, #12608	@ pstVoQue, pSynCtx,
	addne	r7, r7, #48	@ pstVoQue, pstVoQue,
	bne	.L325	@,
.L315:
	add	r7, r5, #23552	@ pstVoQue, pSynCtx,
	add	r7, r7, #8	@ pstVoQue, pstVoQue,
	b	.L325	@
.L314:
	add	r7, r0, #76800	@ pstVoQue, pSynCtx,
	add	r7, r7, #632	@ pstVoQue, pstVoQue,
	b	.L325	@
.L321:
	add	r3, r0, #8128	@ pstVoQue, pSynCtx,
	add	r7, r3, #48	@ pstVoQue, pstVoQue,
	b	.L325	@
.L319:
	add	ip, r0, #43008	@ pstVoQue, pSynCtx,
	add	r7, ip, #40	@ pstVoQue, pstVoQue,
	b	.L325	@
.L318:
	add	r6, r0, #43008	@ pstVoQue, pSynCtx,
	add	r7, r6, #64	@ pstVoQue, pstVoQue,
	b	.L325	@
.L317:
	add	r1, r0, #16064	@ pstVoQue, pSynCtx,
	add	r7, r1, #16	@ pstVoQue, pstVoQue,
	b	.L325	@
.L316:
	add	lr, r0, #30720	@ pstVoQue, pSynCtx,
	add	r7, lr, #24	@ pstVoQue, pstVoQue,
	b	.L325	@
.L313:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r7, r0, #88	@ pstVoQue, pstVoQue,
	b	.L325	@
.L312:
	add	r2, r0, #113664	@ pstVoQue, pSynCtx,
	add	r7, r2, #56	@ pstVoQue, pstVoQue,
	b	.L325	@
.L327:
	mvn	r4, #1	@ ret,
.L351:
	ldr	r0, .L374	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L354	@
.L339:
	movw	r2, #:lower16:g_SdecFunc	@ tmp220,
	movt	r2, #:upper16:g_SdecFunc	@ tmp220,
	ldr	r3, [r2, #16]	@ temp.1332, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1332,
	beq	.L350	@,
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #176]	@, <variable>.image_id
	blx	r3	@ temp.1332
	cmp	r0, #0	@,
	bne	.L350	@,
	mov	r4, #1	@ ret,
	b	.L351	@
.L340:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L351	@,
.L350:
	mvn	r4, #19	@ ret,
	b	.L351	@
.L346:
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #176]	@, <variable>.image_id
	bl	MVC_DEC_RecycleImage	@
	cmp	r0, #0	@,
	bne	.L350	@,
	mov	r4, #1	@ ret,
	b	.L351	@
.L345:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L344:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp214,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp214,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L339	@,
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L343:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	REAL9DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L347:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L342:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	REAL8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L341:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L338:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L337:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L336:
	ldr	r1, [r4, #176]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L351	@
.L335:
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #176]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	cmp	r0, #0	@,
	bne	.L350	@,
	mov	r4, #1	@ ret,
	b	.L351	@
.L328:
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r2, r6	@, i.1338
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	sl, #2	@ SameImageFlag,
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	b	.L331	@
.L375:
	.align	2
.L374:
	.word	.LANCHOR0+64
	.fnend
	.size	SYNTAX_ReleaseImage, .-SYNTAX_ReleaseImage
	.align	2
	.global	ReturnImageToSyntax
	.type	ReturnImageToSyntax, %function
ReturnImageToSyntax:
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
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L393	@
.L391:
	.word	.L378
	.word	.L379
	.word	.L380
	.word	.L381
	.word	.L382
	.word	.L383
	.word	.L384
	.word	.L393
	.word	.L385
	.word	.L386
	.word	.L387
	.word	.L387
	.word	.L387
	.word	.L388
	.word	.L382
	.word	.L389
	.word	.L393
	.word	.L393
	.word	.L390
.L390:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	USERDEC_RecycleImage	@
.L393:
	ldmfd	sp, {fp, sp, pc}	@
.L387:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp150,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp150,
	ldr	r3, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L396	@,
.L382:
	movw	ip, #:lower16:g_SdecFunc	@ tmp156,
	movt	ip, #:upper16:g_SdecFunc	@ tmp156,
	ldr	r3, [ip, #16]	@ temp.1376, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1376,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	blx	r3	@ temp.1376
	ldmfd	sp, {fp, sp, pc}	@
.L383:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	DIVX3DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L384:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	AVSDEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L385:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	REAL8DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L386:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	REAL9DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L388:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	VP8DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L389:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	MVC_DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L378:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L379:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	VC1DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L380:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	MPEG4DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L381:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L396:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	bl	VP6DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ReturnImageToSyntax, .-ReturnImageToSyntax
	.global	__aeabi_uidiv
	.align	2
	.global	InsertImgToVoQueue
	.type	InsertImgToVoQueue, %function
InsertImgToVoQueue:
	.fnstart
.LFB1363:
	@ args = 4, pretend = 0, frame = 32
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
	ldr	r4, [fp, #4]	@ p_image, p_image
	str	r0, [fp, #-56]	@ ChanID, %sfp
	mov	sl, r1	@ eVidStd, eVidStd
	cmp	r4, #0	@ p_image,
	mov	r9, r2	@ pCtx, pCtx
	mov	r5, r3	@ pstVoQue, pstVoQue
	beq	.L429	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp313,
	movt	r1, #:upper16:.LC29	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp313,
	bl	dprint_vfmw	@
	add	r0, r6, #64	@, tmp313,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r7, [r5, #4]	@ i, <variable>.history
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r7, r7, #63	@ i.1425, i,
	cmp	r1, r7	@ <variable>.tail, i.1425
	beq	.L400	@,
	mov	r8, #1000	@ tmp320,
	b	.L426	@
.L401:
	add	ip, r7, #1	@ i.1414, i.1425,
	and	r7, ip, #63	@ i.1425, i.1414,
	cmp	r1, r7	@ <variable>.tail, i.1425
	beq	.L400	@,
.L426:
	add	r0, r5, r7, asl #2	@, tmp175, pstVoQue, i.1425,
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r0, #12]	@ tmp172, <variable>.image_ptr
	ldr	r2, [r2, #176]	@ D.35391, <variable>.image_id
	cmp	r2, r3	@ D.35391, <variable>.image_id
	bne	.L401	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	str	r8, [r4, #180]	@ tmp320, <variable>.error_level
	add	ip, r7, #1	@ i.1414, i.1425,
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r7, ip, #63	@ i.1425, i.1414,
	cmp	r1, r7	@ <variable>.tail, i.1425
	bne	.L426	@,
.L400:
	ldr	r2, [r4, #180]	@ D.35398, <variable>.error_level
	cmp	r2, #100	@ D.35398,
	bhi	.L430	@,
	ldr	r3, [r4, #144]	@ prephitmp.1403, <variable>.image_width
	cmp	r3, #31	@ prephitmp.1403,
	ldrls	ip, [r4, #148]	@ prephitmp.1449, <variable>.image_height
	bhi	.L431	@,
.L404:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	ip, [sp, #0]	@ prephitmp.1449,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #1000	@ <variable>.error_level,
	beq	.L407	@,
	mov	r0, sl	@, eVidStd
	mov	r1, r9	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L407:
	ldr	r0, .L435	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.35383,
.L399:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L431:
	ldr	ip, [r4, #148]	@ prephitmp.1449, <variable>.image_height
	cmp	ip, #31	@ prephitmp.1449,
	bls	.L404	@,
	ldrd	r8, [r4, #8]	@ <variable>.PTS, p_image,
	mov	r2, sl	@, eVidStd
	mov	r0, r5	@, pstVoQue
	mov	r1, r4	@, p_image
	strd	r8, [r4]	@ <variable>.PTS, <variable>.SrcPts
	bl	ProduceTimeStamp	@
	ldrd	r2, [r4, #16]	@, p_image,
	strd	r2, [fp, #-68]	@,,
	ldrd	r2, [r4]	@, <variable>.SrcPts
	mov	r8, r0	@ D.35407,
	mov	r9, r1	@ D.35407,
	strd	r8, [r4, #8]	@ D.35407, p_image,
	mov	r0, #29	@,
	strd	r8, [sp]	@ D.35407,
	movw	r1, #:lower16:.LC32	@,
	ldrd	r8, [fp, #-68]	@,,
	movt	r1, #:upper16:.LC32	@,
	strd	r8, [sp, #8]	@,,
	bl	dprint_vfmw	@
	ldr	r7, [r4, #152]	@ <variable>.disp_width, <variable>.disp_width
	cmp	r7, #0	@ <variable>.disp_width,
	beq	.L410	@,
	ldr	r3, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L432	@,
.L410:
	ldr	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	lr, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r9, r3, lsr #1	@ tmp205, <variable>.image_width,
	str	r3, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	mov	r8, lr, lsr #1	@ tmp207, <variable>.image_height,
	str	lr, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r9, [r4, #160]	@ tmp205, <variable>.disp_center_x
	str	r8, [r4, #164]	@ tmp207, <variable>.disp_center_y
.L411:
	str	r3, [r5, #300]	@ <variable>.image_width, <variable>.SideInfo.ImageWidth
	ldr	ip, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r8, [r5, #280]	@ <variable>.SideInfo.OldSeqCnt, <variable>.SideInfo.OldSeqCnt
	str	ip, [r5, #304]	@ <variable>.image_height, <variable>.SideInfo.ImageHeight
	ldr	lr, [r4, #140]	@ <variable>.format, <variable>.format
	ubfx	r3, lr, #5, #3	@ tmp214, <variable>.format,,
	str	r3, [r5, #308]	@ tmp214, <variable>.SideInfo.VideoFormat
	ldr	r0, [r4, #140]	@ <variable>.format, <variable>.format
	ldr	r3, [r5, #316]	@ D.35441, <variable>.SideInfo.SeqImgCnt
	str	r0, [r5, #312]	@ <variable>.format, <variable>.SideInfo.ImageFormat
	add	r0, r3, #1	@ tmp229, D.35441,
	ldr	lr, [r4, #184]	@ D.35437, <variable>.seq_cnt
	ldr	ip, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp223, <variable>.disp_center_y
	cmp	lr, r8	@ D.35437, <variable>.SideInfo.OldSeqCnt
	ldr	r7, [r4, #140]	@ temp.1422, <variable>.format
	ldr	r9, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	ip, r2, ip, asl #16	@, dcenter, tmp223, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp218, <variable>.disp_width
	ubfx	r8, r7, #8, #2	@ ScanType, temp.1422,,
	strne	lr, [r5, #320]	@ D.35437, <variable>.SideInfo.SeqCnt
	ubfx	r7, r7, #14, #3	@ AspectRatio, temp.1422,,
	str	r3, [r4, #188]	@ D.35441, <variable>.seq_img_cnt
	orr	r9, r1, r9, asl #16	@, dsize, tmp218, <variable>.disp_height,
	ldr	r2, [r5, #272]	@ D.35443, <variable>.SideInfo.OldAspectRatio
	str	r0, [r5, #316]	@ tmp229, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r7	@ D.35443, AspectRatio
	movweq	sl, #:lower16:g_event_report	@ tmp311,
	movteq	sl, #:upper16:g_event_report	@ tmp311,
	beq	.L413	@,
	movw	sl, #:lower16:g_event_report	@ tmp311,
	movt	sl, #:upper16:g_event_report	@ tmp311,
	ldr	r3, [sl, #0]	@ g_event_report.435, g_event_report
	cmp	r3, #0	@ g_event_report.435,
	beq	.L414	@,
	strb	r2, [fp, #-52]	@ D.35443, para
	mov	r1, #7	@,
	str	ip, [fp, #-72]	@,
	sub	r2, fp, #52	@,,
	ldr	r0, [fp, #-56]	@, %sfp
	strb	r7, [fp, #-51]	@ AspectRatio, para
	blx	r3	@ g_event_report.435
	ldr	ip, [fp, #-72]	@,
.L414:
	str	r7, [r5, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L413:
	ldr	r2, [r5, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	r2, r8	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L415	@,
	ldr	r3, [sl, #0]	@ g_event_report.1427, g_event_report
	cmp	r3, #0	@ g_event_report.1427,
	beq	.L416	@,
	sub	r2, fp, #44	@ tmp237,,
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #4	@,
	strb	r8, [r2, #-8]!	@ ScanType, para
	str	ip, [fp, #-72]	@,
	blx	r3	@ g_event_report.1427
	ldr	ip, [fp, #-72]	@,
.L416:
	str	r8, [r5, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L415:
	ldr	r7, [r5, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	r7, r9	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L433	@,
.L417:
	str	r9, [r5, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	ip, [r5, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [sl, #0]	@ g_event_report.1428, g_event_report
	cmp	r3, #0	@ g_event_report.1428,
	beq	.L418	@,
	ldrh	lr, [r4, #152]	@, <variable>.disp_width
	mov	r1, #1	@,
	sub	r2, fp, #52	@,,
	strh	lr, [fp, #-52]	@ movhi	@, para
	ldrh	r0, [r4, #156]	@, <variable>.disp_height
	strh	r0, [fp, #-50]	@ movhi	@, para
	ldrh	r8, [r4, #160]	@, <variable>.disp_center_x
	ldr	r0, [fp, #-56]	@, %sfp
	strh	r8, [fp, #-48]	@ movhi	@, para
	ldrh	r9, [r4, #164]	@, <variable>.disp_center_y
	strh	r9, [fp, #-46]	@ movhi	@, para
	blx	r3	@ g_event_report.1428
.L418:
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r0, #12	@,
	ldr	r7, [r4, #108]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	movt	r1, #:upper16:.LC33	@,
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	r7, [r4, #92]	@ <variable>.chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	lr, r2, r7	@ tmp256, <variable>.image_stride, <variable>.chrom_phy_addr
	add	r8, r2, r3	@ tmp252, <variable>.image_stride, <variable>.luma_phy_addr
	str	lr, [r4, #100]	@ tmp256, <variable>.btm_chrom_phy_addr
	str	r8, [r4, #96]	@ tmp252, <variable>.btm_luma_phy_addr
	mov	r7, #300	@ tmp247,
	ldrh	ip, [r5, #8]	@ <variable>.tail, <variable>.tail
	movw	r8, #:lower16:g_VfmwChanStat	@ tmp248,
	ldr	r9, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r8, #:upper16:g_VfmwChanStat	@ tmp248,
	ldr	lr, [fp, #-56]	@, %sfp
	ldrh	r2, [r5, #4]	@ <variable>.history, <variable>.history
	ldrh	r3, [r5, #6]	@ <variable>.head, <variable>.head
	str	ip, [sp, #0]	@ <variable>.tail,
	str	r9, [sp, #4]	@ <variable>.image_id,
	mul	r9, r7, lr	@ tmp246, tmp247,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ <variable>.tail, <variable>.tail
	ldr	r0, .L435	@,
	add	ip, r3, #1	@ tmp270, <variable>.tail,
	add	r1, r5, r3, asl #2	@, tmp266, pstVoQue, <variable>.tail,
	and	r7, ip, #63	@ tmp272, tmp270,
	strh	r7, [r5, #8]	@ movhi	@ tmp272, <variable>.tail
	add	r7, r8, r9	@ pVfmwChanStat, tmp248, tmp246
	str	r4, [r1, #12]	@ p_image, <variable>.image_ptr
	ldr	r2, [r4, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	r2, [r7, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, ip, #2	@ tmp275, <variable>.image_id,
	str	r3, [r5, #296]	@ tmp275, <variable>.SideInfo.LastImageIdPlus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, #0]	@ g_event_report.1444, g_event_report
	cmp	r3, #0	@ g_event_report.1444,
	beq	.L419	@,
	sub	r2, fp, #44	@ tmp280,,
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #5	@,
	str	r4, [r2, #-8]!	@ p_image, para
	blx	r3	@ g_event_report.1444
.L419:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L434	@,
.L420:
	ldr	r1, [r7, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	r0, r1, #1	@ tmp300, <variable>.u32FrImgNum,
	str	r0, [r7, #4]	@ tmp300, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, r9]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, r3, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1445
	mov	r4, r0	@ CurTime.1445,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.35383,
	bcc	.L399	@,
	ldr	r3, [r7, #4]	@ temp.1446, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1446,
	beq	.L422	@,
	movw	ip, #10000	@ tmp304,
	mul	r0, ip, r3	@, tmp304, temp.1446
	bl	__aeabi_uidiv	@
	str	r0, [r7, #8]	@, <variable>.u32FrFrameRate
.L422:
	mov	r2, #0	@ tmp308,
	mov	r0, #1	@ D.35383,
	str	r4, [r8, r9]	@ CurTime.1445, <variable>.u32FrBeginTime
	str	r2, [r7, #4]	@ tmp308, <variable>.u32FrImgNum
	b	.L399	@
.L430:
	ldr	r3, [r4, #144]	@ prephitmp.1403, <variable>.image_width
	ldr	ip, [r4, #148]	@ prephitmp.1449, <variable>.image_height
	b	.L404	@
.L432:
	cmp	sl, #15	@ eVidStd,
	cmpne	sl, #0	@, eVidStd,
	ldreq	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	beq	.L411	@,
	b	.L410	@
.L434:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [fp, #-56]	@, %sfp
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp288,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp288,
	add	r6, r6, r2, asl #2	@, tmp284, tmp313,,
	ldr	r1, [r6, #76]	@ tmp287, last_rec_pos_time
	mov	r3, r0	@ CurTime,
	ldr	r0, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r4, r1, r3	@ tmp286, tmp287, CurTime
	cmp	r4, r0	@ tmp286, g_TraceFramePeriod
	bls	.L420	@,
	ldr	lr, [fp, #-56]	@, %sfp
	movw	r0, #:lower16:.LANCHOR1	@,
	movw	r1, #503	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	str	r3, [r6, #76]	@ CurTime, last_rec_pos_time
	mov	r4, lr, asl #24	@ tmp297,,
	add	r2, r4, #524288	@, tmp297,
	bl	DBG_AddTrace	@
	b	.L420	@
.L433:
	ldr	r1, [r5, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	r1, ip	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L417	@,
	b	.L418	@
.L429:
	mov	r0, r4	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.35383,
	b	.L399	@
.L436:
	.align	2
.L435:
	.word	.LANCHOR0+64
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.global	g_DnrEnable
	.global	pstVdecUsdPool
	.global	g_SpinLock
	.global	g_SpinLockIrq_Destroy
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35377, %object
	.size	__func__.35377, 19
__func__.35377:
	.ascii	"InsertImgToVoQueue\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"WARNNING: aspect ration (%d) is not expected!\012\000"
	.space	1
.LC1:
	.ascii	"image point NULL\012\000"
	.space	2
.LC2:
	.ascii	"Initializing VO queue\012\000"
	.space	1
.LC3:
	.ascii	"pu8[0] = %x,pu8[1] = %x, pu8[2] = %x\012\000"
	.space	2
.LC4:
	.ascii	"release segbuf together!\012\000"
	.space	2
.LC5:
	.ascii	"ERROR: VFMW_VP8 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC6:
	.ascii	"ERROR: VFMW_VP6 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC7:
	.ascii	"VidStd=%d Error!\012\000"
	.space	2
.LC8:
	.ascii	"pSegMan error!\012\000"
.LC9:
	.ascii	"More than two packet!!!ERROR!!!\012\000"
	.space	3
.LC10:
	.ascii	"*****************copy packets tobe one*************"
	.ascii	"****\012\000"
	.space	3
.LC11:
	.ascii	"*****************two packet*****************\012\000"
	.space	2
.LC12:
	.ascii	"H264 last frame decsyntax err!\012\000"
.LC13:
	.ascii	"Mvc last frame decsyntax err!\012\000"
	.space	1
.LC14:
	.ascii	"pSegMan->CurrSeg.IsLastSeg=%d\012\000"
	.space	1
.LC15:
	.ascii	"pSegMan->CurrSeg.PhyAddr=%#x\012\000"
	.space	2
.LC16:
	.ascii	"pSegMan->CurrSeg.LenInByte=%#x\012\000"
.LC17:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 IsAdvProfile!\012"
	.ascii	"\000"
	.space	1
.LC18:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 CodecVersion!\012"
	.ascii	"\000"
	.space	1
.LC19:
	.ascii	"VC1ap last frame decsyntax err!\012\000"
	.space	3
.LC20:
	.ascii	"LENTH ERROR: VC1 S/MP BS is wrong!\012\000"
.LC21:
	.ascii	"SYNTAX ERROR: VC1 S/MP BS is wrong!\012\000"
	.space	3
.LC22:
	.ascii	"MPEG2 last frame decsyntax err!\012\000"
	.space	3
.LC23:
	.ascii	"MPEG4 last frame decsyntax err!\012\000"
	.space	3
.LC24:
	.ascii	"AVS last frame decsyntax err!\012\000"
	.space	1
.LC25:
	.ascii	"ERROR: Wrong PreParseInfo about Vp6 bReversed!\012\000"
.LC26:
	.ascii	"Queue=(%02d,%02d,%02d) - F%d\012\000"
	.space	2
.LC27:
	.ascii	"image[%d] null\012\000"
.LC28:
	.ascii	"Queue=(%02d,%02d,%02d) x F%d\012\000"
	.space	2
.LC29:
	.ascii	"call InsertVOQueue\012\000"
.LC30:
	.ascii	"FATAL: p_image(id=%d) has already in the VoQueue!\012"
	.ascii	"\000"
	.space	1
.LC31:
	.ascii	"error=%d,W=%d,H=%d,not acceptable!\012\000"
.LC32:
	.ascii	"out_pts: %lld -> %lld Usertag %lld\012\000"
.LC33:
	.ascii	"Queue=(%02d,%02d,%02d) + F%d\012\000"
	.space	2
.LC34:
	.ascii	"REPORT_IMGRDY!!!in insert vo queue\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	pstVdecUsdPool, %object
	.size	pstVdecUsdPool, 64
pstVdecUsdPool:
	.space	64
	.type	g_SpinLock, %object
	.size	g_SpinLock, 12
g_SpinLock:
	.space	12
	.type	last_rec_pos_time.35368, %object
	.size	last_rec_pos_time.35368, 64
last_rec_pos_time.35368:
	.space	64
	.type	g_DnrEnable, %object
	.size	g_DnrEnable, 4
g_DnrEnable:
	.space	4
	.type	g_SpinLockIrq_Destroy, %object
	.size	g_SpinLockIrq_Destroy, 12
g_SpinLockIrq_Destroy:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
