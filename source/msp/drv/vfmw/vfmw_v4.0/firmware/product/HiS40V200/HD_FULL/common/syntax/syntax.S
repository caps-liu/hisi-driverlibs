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
@ -DKBUILD_BASENAME=KBUILD_STR(syntax) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
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
.LFB1352:
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
	ldrd	r6, [r0, r3]	@ D.35662, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.35662
	sbc	r9, r9, r7	@ tmp141, tmp141, D.35662
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.35662, tmp142
	cmpeq	r6, r8	@ D.35662, tmp142
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
	ldr	ip, [r1, #120]	@ <variable>.format, <variable>.format
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
.LFB1354:
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
	ldrh	r3, [r0, #6]	@ D.35849, <variable>.head
	ldrh	ip, [r0, #4]	@ D.35850, <variable>.history
	ldrh	r0, [r0, #8]	@ D.35858, <variable>.tail
	cmp	r3, ip	@ D.35849, D.35850
	addcc	r4, r3, #64	@ tmp142, D.35849,
	rsbcs	ip, ip, r3	@ ReadNum, D.35850, D.35849
	rsbcc	ip, ip, r4	@ ReadNum, D.35850, tmp142
	cmp	r3, r0	@ D.35849, D.35858
	addhi	r0, r0, #64	@ tmp143, D.35858,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.35849, tmp143
	str	r3, [r2, #0]	@ NewNum,* pNewImgNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetQueueImgNum, .-GetQueueImgNum
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.37037, pstVdecUsdPool
	cmp	ip, #0	@ D.37037,
	beq	.L24	@,
.L18:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.614, D.37037
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L20:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.614,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.614, ivtmp.614,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L20	@,
	ldmfd	sp, {fp, sp, pc}	@
.L24:
	cmp	r1, #0	@ D.37037,
	str	r1, [r3, r0, asl #2]	@ D.37037, pstVdecUsdPool
	mov	ip, r1	@ D.37037, Viraddr
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.36910, pstVdecUsdPool
	cmp	r1, #0	@ D.36910,
	mvneq	r0, #0	@ D.36914,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.671, D.36910
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L31:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.671,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.671, ivtmp.671,
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
.LFB1367:
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
	ldr	r0, [r3, r0, asl #2]	@ D.36925, pstVdecUsdPool
	cmp	r0, #0	@ D.36925,
	bne	.L46	@,
.L36:
	mov	r0, #0	@ pstUsrDat,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L46:
	mov	r2, r0	@ ivtmp.704, D.36925
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
	add	r2, r1, #1072	@ ivtmp.704, tmp204,
	cmp	r3, #48	@ i,
	beq	.L36	@,
.L39:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.704,
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
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.36925
	add	r5, ip, r0	@ tmp181, tmp179, D.36925
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.36925, tmp146,
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
.LFB1369:
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
.LFB1370:
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
.LFB1373:
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
	ldr	r0, [r0, #296]	@ D.37001, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.37001,
	mvnls	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1372:
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
	str	ip, [r0, #56]	@ tmp145, <variable>.u32AspectWidth
	str	r1, [r0, #60]	@ tmp146, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L60:
	mov	r2, r1	@, Code
	mov	lr, #0	@ tmp147,
	mov	r0, #1	@ tmp148,
	str	lr, [r3, #56]	@ tmp147, <variable>.u32AspectWidth
	str	r0, [r3, #60]	@ tmp148, <variable>.u32AspectHeight
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L61:
	mov	r0, #0	@ tmp135,
	mov	r2, #1	@ tmp136,
	str	r0, [r3, #56]	@ tmp135, <variable>.u32AspectWidth
	str	r2, [r3, #60]	@ tmp136, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L62:
	mov	ip, #4	@ tmp137,
	mov	r1, #3	@ tmp138,
	str	ip, [r0, #56]	@ tmp137, <variable>.u32AspectWidth
	str	r1, [r0, #60]	@ tmp138, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	mov	r0, #16	@ tmp139,
	mov	r2, #9	@ tmp140,
	str	r0, [r3, #56]	@ tmp139, <variable>.u32AspectWidth
	str	r2, [r3, #60]	@ tmp140, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L64:
	mov	ip, #221	@ tmp141,
	mov	r1, #100	@ tmp142,
	str	ip, [r0, #56]	@ tmp141, <variable>.u32AspectWidth
	str	r1, [r0, #60]	@ tmp142, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	mov	r0, #235	@ tmp143,
	mov	r2, #100	@ tmp144,
	str	r0, [r3, #56]	@ tmp143, <variable>.u32AspectWidth
	str	r2, [r3, #60]	@ tmp144, <variable>.u32AspectHeight
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
.LFB1371:
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
	ldrh	r4, [r0, #8]	@ D.36971, <variable>.tail
	and	r3, r3, #63	@ i.844, i,
	cmp	r4, r3	@ D.36971, i.844
	bne	.L77	@,
	b	.L73	@
.L74:
	cmp	r3, r4	@ i.844, D.36971
	beq	.L73	@,
.L77:
	add	r2, r0, r3, asl #2	@, tmp146, pstVoQue, i.844,
	add	ip, r3, #1	@ i.845, i.844,
	and	r3, ip, #63	@ i.844, i.845,
	ldr	r2, [r2, #12]	@ D.36974, <variable>.image_ptr
	cmp	r2, #0	@ D.36974,
	beq	.L74	@,
	ldr	ip, [r2, #156]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #156]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L74	@,
	mov	r0, #0	@ D.36968,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L73:
	mvn	r0, #0	@ D.36968,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L79:
	mov	r0, r1	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36968,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	InitVoQueue
	.type	InitVoQueue, %function
InitVoQueue:
	.fnstart
.LFB1349:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.36879, pstVdecUsdPool
	cmp	r0, #0	@ D.36879,
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.37043, pstVdecUsdPool
	cmp	r0, #0	@ D.37043,
	beq	.L92	@,
.L86:
	mov	r1, #0	@ tmp142,
	mov	r3, r0	@ ivtmp.924, D.37043
	str	r1, [r0, #0]	@ tmp142, <variable>.s32AccessIdx
	mov	r2, r1	@ i, tmp142
	mov	r0, r1	@ tmp146, i
.L88:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp148, ivtmp.924,
	cmp	r2, #48	@ i,
	str	r0, [r3, #1044]	@ tmp146, <variable>.from
	str	r0, [r3, #1040]	@ tmp146, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.924, ivtmp.924,
	str	r0, [ip, #1040]	@ tmp146, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp146, <variable>.from
	bne	.L88	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L92:
	movw	r0, #51464	@,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@ D.37043,
	str	r0, [r4, r5, asl #2]	@ D.37043, pstVdecUsdPool
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
.LFB1361:
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
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ D.36787,* pu8
	cmp	r2, #0	@ D.36787,
	bne	.L127	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.942,
	cmp	r3, #0	@ prephitmp.942,
	ldrneb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.946,
	bne	.L97	@,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.946,
	cmp	ip, #1	@ prephitmp.946,
	beq	.L99	@,
.L97:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	ip, [sp, #0]	@ prephitmp.946,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
.L100:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L126:
	ldrb	r3, [r2, #56]	@ zero_extendqisi2	@ tmp155,
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
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ prephitmp.961,
	cmp	r2, #0	@ prephitmp.961,
	cmpne	r2, #179	@, prephitmp.961,
	beq	.L110	@,
	cmp	r2, #184	@ prephitmp.961,
	beq	.L110	@,
	cmp	r2, #183	@ prephitmp.961,
	bne	.L101	@,
.L110:
	ldr	r3, [r0, #0]	@ tmp167,* pNewPicDetector
	cmp	r3, #0	@ tmp167,
	moveq	r2, #1	@ tmp168,
	streq	r2, [r0, #0]	@ tmp168,* pNewPicDetector
	ldreqb	r2, [r4, #3]	@ zero_extendqisi2	@ prephitmp.961,
	mvnne	r3, #0	@ ret,
	cmp	r2, #0	@ prephitmp.961,
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
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.946,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.942,
	b	.L97	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
.LFB1359:
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
.L133:
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
.L134:
	ldr	r5, [r4, #0]	@ D.36612, <variable>.pstExtraData
	ldrb	r1, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L147	@,
.L145:
	add	r0, r5, #176	@, D.36653,
	mov	r1, #128	@,
	bl	__memzero	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L135:
	ldr	r5, [r1, #0]	@ D.36622, <variable>.pstExtraData
	ldrb	lr, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L145	@,
	movw	r3, #:lower16:70032	@ tmp166,
	movt	r3, #:upper16:70032	@ tmp166,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, r3]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L137:
	ldr	r5, [r1, #0]	@ D.36642, <variable>.pstExtraData
	movw	ip, #8504	@ tmp175,
	ldr	r0, [r1, ip]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L145	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L145	@
.L131:
	movw	r0, #22028	@ tmp147,
	ldr	r5, [r1, r0]	@ D.36593, <variable>.pstExtraData
	ldrb	r3, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L148	@,
	movw	r6, #22896	@ tmp152,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #256]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L136:
	ldr	r5, [r1, #0]	@ D.36653, <variable>.pstExtraData
	movw	lr, #13000	@ tmp181,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L145	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L145	@
.L132:
	ldr	r5, [r1, #0]	@ D.36632, <variable>.pstExtraData
	ldrb	r0, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L145	@,
	movw	r2, #57728	@ tmp171,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L147:
	movw	ip, #:lower16:70056	@ tmp161,
	movt	ip, #:upper16:70056	@ tmp161,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
.L148:
	movw	r2, #22896	@ tmp149,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L145	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1360:
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
	movw	r3, #:lower16:109232	@ tmp164,
	movt	r3, #:upper16:109232	@ tmp164,
	add	r2, r1, #77824	@, pCtx,
	add	r0, r2, #384	@,,
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
	ldr	r5, [r1, #0]	@ D.36727, <variable>.pstExtraData
	ldrb	r1, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L170	@,
.L168:
	add	r0, r5, #176	@, D.36751,
	mov	r1, #128	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L156:
	mov	r0, r1	@, pCtx
	bl	AVS_ClearCurPic	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L157:
	ldr	r5, [r1, #0]	@ D.36705, <variable>.pstExtraData
	ldrb	r3, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	bne	.L168	@,
	movw	r2, #:lower16:70056	@ tmp148,
	movt	r2, #:upper16:70056	@ tmp148,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L168	@
.L158:
	ldr	r5, [r1, #0]	@ D.36717, <variable>.pstExtraData
	ldrb	r0, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L168	@,
	movw	ip, #:lower16:70032	@ tmp153,
	movt	ip, #:upper16:70032	@ tmp153,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L168	@
.L159:
	ldr	r5, [r1, #0]	@ D.36751, <variable>.pstExtraData
	movw	lr, #13000	@ tmp172,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L168	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L168	@
.L160:
	ldr	r5, [r1, #0]	@ D.36740, <variable>.pstExtraData
	movw	ip, #8504	@ tmp166,
	ldr	r0, [r1, ip]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r0, [r5, #181]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L168	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L168	@
.L170:
	movw	lr, #57728	@ tmp158,
	ldr	r1, [r5, #192]	@, <variable>.StreamID
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
.LFB1358:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
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
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.36486, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.36486,
	beq	.L182	@,
	cmp	r5, #0	@ D.36486,
	beq	.L183	@,
.L177:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L183:
	add	ip, r4, #8	@ tmp153, pSegMan,
	add	r7, r4, #72	@ temp.1057, pSegMan,
	add	r8, r4, #136	@ __p, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp155,,,,
	mov	lr, r7	@ temp.1057, temp.1057
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1057,,,,
	mov	sl, lr	@ temp.1057, temp.1057
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp206,,,,
	stmia	sl!, {r0, r1, r2, r3}	@ temp.1057,,,,
	mov	lr, sl	@ temp.1057, temp.1057
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp208,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1057,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp208,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1057,,,,
	mov	r0, r8	@, __p
	mov	r1, #64	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp158, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.36504, tmp158
	strb	r0, [r4, #2]	@ D.36504, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.36504,
	bls	.L177	@,
	ldr	r1, [r4, #88]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #152]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r7	@, temp.1057
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, r8	@, __p
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp163,
	movt	r3, #:upper16:g_event_report	@ tmp163,
	ldr	r3, [r3, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	beq	.L178	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.36486
	mov	r1, #113	@,
	blx	r3	@ g_event_report.497
.L178:
	mov	r0, #0	@ tmp164,
	strb	r0, [r4, #2]	@ tmp164, <variable>.ConvolutionPacketNum
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L182:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.36488, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.36488,
	beq	.L184	@,
	cmp	r5, #1	@ D.36488,
	bne	.L177	@,
	ldr	r1, [r4, #84]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r1, #1024	@ <variable>.LenInByte,
	blt	.L185	@,
	add	r6, r4, #8	@ tmp196, pSegMan,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp198,,,,
	add	r5, r4, #136	@ tmp195, pSegMan,
	mov	ip, r5	@ tmp197, tmp195
	stmia	ip!, {r0, r1, r2, r3}	@ tmp197,,,,
	mov	r5, ip	@ tmp211, tmp197
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp210,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp211,,,,
	mov	ip, r5	@ tmp213, tmp211
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp212,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp213,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp212,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp213,,,,
.L180:
	mov	r0, #0	@ tmp199,
	strb	r0, [r4, #2]	@ tmp199, <variable>.ConvolutionPacketNum
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L184:
	add	lr, r4, #8	@ tmp147, pSegMan,
	add	ip, r4, #72	@ D.36490, pSegMan,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp149,,,,
	mov	r6, ip	@ D.36490, D.36490
	stmia	r6!, {r0, r1, r2, r3}	@ D.36490,,,,
	mov	ip, r6	@ D.36490, D.36490
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp202,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ D.36490,,,,
	mov	r6, ip	@ D.36490, D.36490
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp204,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ D.36490,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp204,,,,
	stmia	r6, {r0, r1, r2, r3}	@ D.36490,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.36488, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.36488
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L185:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #84]	@ D.36532, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #72]	@, <variable>.VirAddr
	mov	r2, r3	@, D.36532
	rsb	r0, r3, r0	@, D.36532, <variable>.CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r3, [r4, #84]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	rsb	r1, r3, r1	@ tmp180, <variable>.LenInByte, <variable>.CurrSeg.VirAddr
	rsb	r2, r3, r2	@ tmp183, <variable>.LenInByte, <variable>.CurrSeg.PhyAddr
	str	r1, [r4, #72]	@ tmp180, <variable>.VirAddr
	add	r3, r3, ip	@ tmp186, <variable>.LenInByte, <variable>.CurrSeg.LenInByte
	str	r2, [r4, #80]	@ tmp183, <variable>.PhyAddr
	ldr	r1, [r4, #88]	@, <variable>.StreamID
	strb	r5, [r4, #77]	@ D.36488, <variable>.IsLastSeg
	str	r3, [r4, #84]	@ tmp186, <variable>.LenInByte
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	str	r2, [r4, #88]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L180	@
.L172:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1357:
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
	ldr	r3, [r5, #0]	@ D.36210, <variable>.pstExtraData
	ldr	r2, [r3, #308]	@ D.36211, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ D.36211,
	bhi	.L245	@,
	ldr	r0, [r3, #312]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r0, #8	@ <variable>.StdExt.Vc1Ext.CodecVersion,
	bgt	.L246	@,
	movw	lr, #:lower16:81304	@ tmp243,
	movt	lr, #:upper16:81304	@ tmp243,
	uxtb	r2, r2	@ D.36220, D.36211
	movw	ip, #:lower16:81306	@ tmp245,
	strb	r2, [r5, lr]	@ D.36220, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	movt	ip, #:upper16:81306	@ tmp245,
	ldr	r3, [r3, #312]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r2, #1	@ D.36220,
	strb	r3, [r5, ip]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	beq	.L247	@,
	ldrb	r6, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r6, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L236	@,
	add	ip, r4, #8	@ tmp268, pSegMan,
	add	r6, r4, #72	@ D.36250, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp270,,,,
	mov	lr, r6	@ D.36250, D.36250
	stmia	lr!, {r0, r1, r2, r3}	@ D.36250,,,,
	mov	r7, lr	@ D.36250, D.36250
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp456,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ D.36250,,,,
	mov	lr, r7	@ D.36250, D.36250
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp458,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.36250,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp458,,,,
	stmia	lr, {r0, r1, r2, r3}	@ D.36250,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r0, [r4, #84]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #15	@ <variable>.LenInByte,
	bgt	.L211	@,
	movw	r6, #:lower16:109232	@ tmp274,
	movw	r1, #:lower16:.LC20	@,
	movt	r6, #:upper16:109232	@ tmp274,
	movt	r1, #:upper16:.LC20	@,
	mov	r0, #0	@,
.L235:
	bl	dprint_vfmw	@
	ldr	r1, [r4, #88]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp293,
	movt	r1, #:upper16:g_event_report	@ tmp293,
	ldr	r3, [r1, #0]	@ g_event_report.1124, g_event_report
	cmp	r3, #0	@ g_event_report.1124,
	beq	.L229	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.1124
.L229:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L192:
	add	r7, r4, #8	@ tmp445, pSegMan,
	add	ip, r4, #72	@ tmp444, pSegMan,
	mov	r8, #1	@ tmp442,
	strb	r8, [r4, #1]	@ tmp442, <variable>.IsCurrSegWaitDec
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp447,,,,
	mov	lr, ip	@ tmp446, tmp444
	movw	r6, #:lower16:g_SdecFunc	@ tmp448,
	movt	r6, #:upper16:g_SdecFunc	@ tmp448,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp446,,,,
	mov	r8, lr	@ tmp485, tmp446
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp484,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp485,,,,
	mov	lr, r8	@ tmp487, tmp485
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp486,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp487,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp486,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp487,,,,
	ldr	r3, [r6, #12]	@ temp.1197, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ temp.1197,
	beq	.L228	@,
	mov	r1, ip	@, tmp444
	mov	r0, r5	@, pstCtx
	blx	r3	@ temp.1197
	cmn	r0, #2	@,
	beq	.L229	@,
.L228:
	ldr	r0, [r5, #0]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #0	@ tmp452,
	strb	r0, [r4, #1]	@ tmp452, <variable>.IsCurrSegWaitDec
	b	.L229	@
.L193:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r2, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #57728	@ tmp373,
	beq	.L230	@,
	add	ip, r0, #8	@ tmp378, pSegMan,
	add	r6, r0, #72	@ temp.1160, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp380,,,,
	mov	lr, r6	@ temp.1160, temp.1160
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1160,,,,
	mov	r7, lr	@ temp.1160, temp.1160
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp468,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ temp.1160,,,,
	mov	lr, r7	@ temp.1160, temp.1160
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp470,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1160,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp470,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1160,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1160
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pDivx3DecParam, <variable>.pDivx3DecParam
	cmp	r7, #0	@ <variable>.pDivx3DecParam,
	moveq	r0, r6	@, temp.1160
	moveq	r1, #128	@,
	movweq	r6, #57728	@ tmp383,
	bne	.L229	@,
	b	.L240	@
.L194:
	mov	r0, r2	@, pstCtx
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	beq	.L248	@,
.L217:
	movw	r3, #16104	@ tmp326,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L249	@,
.L218:
	ldr	r4, [r5, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r4, #0	@ <variable>.pAvsDecParam,
	bne	.L229	@,
	movw	r6, #16356	@ tmp330,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	movw	ip, #16104	@ tmp333,
	ldr	r0, [r5, ip]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pAvsDecParam,
	b	.L229	@
.L195:
	ldrb	r6, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r6, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L250	@,
	add	ip, r0, #8	@ tmp344, pSegMan,
	add	r6, r0, #72	@ temp.1138, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp346,,,,
	mov	lr, r6	@ temp.1138, temp.1138
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1138,,,,
	mov	r7, lr	@ temp.1138, temp.1138
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp460,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ temp.1138,,,,
	mov	lr, r7	@ temp.1138, temp.1138
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp462,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1138,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp462,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1138,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1138
	bl	REAL8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv8DecParam, <variable>.pRv8DecParam
	cmp	r7, #0	@ <variable>.pRv8DecParam,
	movweq	r8, #:lower16:70056	@ tmp349,
	movteq	r8, #:upper16:70056	@ tmp349,
	bne	.L229	@,
.L238:
	mov	r0, r6	@, temp.1149
	mov	r1, #128	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r8]	@,
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp369,
	movt	r1, #:upper16:g_event_report	@ tmp369,
	ldr	r3, [r1, #0]	@ g_event_report.1155, g_event_report
	cmp	r3, #0	@ g_event_report.1155,
	beq	.L229	@,
	ldr	r0, [r5, r8]	@,
	mov	r2, r7	@, <variable>.pRv9DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.1155
	b	.L229	@
.L196:
	ldrb	r0, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r0, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #:lower16:70032	@ tmp356,
	movteq	r6, #:upper16:70032	@ tmp356,
	beq	.L230	@,
	add	ip, r4, #8	@ tmp361, pSegMan,
	add	r6, r4, #72	@ temp.1149, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp363,,,,
	mov	lr, r6	@ temp.1149, temp.1149
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1149,,,,
	mov	r7, lr	@ temp.1149, temp.1149
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp464,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ temp.1149,,,,
	mov	lr, r7	@ temp.1149, temp.1149
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp466,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1149,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp466,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1149,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1149
	bl	REAL9DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv9DecParam, <variable>.pRv9DecParam
	cmp	r7, #0	@ <variable>.pRv9DecParam,
	bne	.L229	@,
	movw	r8, #:lower16:70032	@ tmp366,
	movt	r8, #:upper16:70032	@ tmp366,
	b	.L238	@
.L197:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp406,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp406,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r0, r0, #1	@ tmp407, g_VdmCharacter,
	beq	.L223	@,
	ldrb	r2, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r2, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #13000	@ tmp410,
	beq	.L230	@,
	add	ip, r4, #8	@ tmp415, pSegMan,
	add	r6, r4, #72	@ temp.1182, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp417,,,,
	mov	lr, r6	@ temp.1182, temp.1182
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1182,,,,
	mov	r7, lr	@ temp.1182, temp.1182
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp476,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ temp.1182,,,,
	mov	lr, r7	@ temp.1182, temp.1182
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp478,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1182,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp478,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1182,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1182
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp6DecParam, <variable>.pVp6DecParam
	cmp	r7, #0	@ <variable>.pVp6DecParam,
	bne	.L229	@,
	mov	r0, r6	@, temp.1182
	mov	r1, #128	@,
	movw	r6, #13000	@ tmp420,
.L240:
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@,
	bl	SM_ReleaseStreamSeg	@
	movw	r3, #:lower16:g_event_report	@ tmp423,
	movt	r3, #:upper16:g_event_report	@ tmp423,
	ldr	r3, [r3, #0]	@ g_event_report.1188, g_event_report
	cmp	r3, #0	@ g_event_report.1188,
	beq	.L229	@,
	ldr	r0, [r5, r6]	@,
	mov	r2, r7	@, <variable>.pVp6DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.1188
	b	.L229	@
.L198:
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r3, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L236	@,
	add	ip, r0, #8	@ tmp395, pSegMan,
	add	r6, r0, #72	@ temp.1173, pSegMan,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp397,,,,
	mov	lr, r6	@ temp.1173, temp.1173
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1173,,,,
	mov	r7, lr	@ temp.1173, temp.1173
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp472,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ temp.1173,,,,
	mov	lr, r7	@ temp.1173, temp.1173
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp474,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ temp.1173,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp474,,,,
	stmia	lr, {r0, r1, r2, r3}	@ temp.1173,,,,
	add	r0, r4, #136	@, pSegMan,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1173
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp8DecParam, <variable>.pVp8DecParam
	cmp	r7, #0	@ <variable>.pVp8DecParam,
	moveq	r0, r6	@, temp.1173
	moveq	r1, #128	@,
	movweq	r6, #8504	@ tmp400,
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
	moveq	r3, #1	@ tmp221,
	movne	r3, #0	@ tmp223,
	strb	r3, [r4, #1]	@ tmp223, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pMvcDecParam, <variable>.pMvcDecParam
	cmp	r4, #0	@ <variable>.pMvcDecParam,
	bne	.L229	@,
	movw	r6, #13556	@ tmp226,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:11198040	@ tmp229,
	movt	r1, #:upper16:11198040	@ tmp229,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMvcDecParam,
	b	.L229	@
.L188:
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	sub	r1, fp, #68	@,,
	ldrd	r8, [r0, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	lr, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsLastSeg, <variable>.CurrSeg.IsLastSeg
	str	r3, [fp, #-52]	@ <variable>.CurrSeg.StreamID, H264Pack.StreamID
	strd	r8, [fp, #-44]	@ <variable>.CurrSeg.Pts,,
	str	r6, [fp, #-64]	@ <variable>.CurrSeg.VirAddr, H264Pack.p_stream
	str	lr, [fp, #-60]	@ <variable>.CurrSeg.PhyAddr, H264Pack.strm_phy_addr
	str	ip, [fp, #-56]	@ <variable>.CurrSeg.LenInByte, H264Pack.stream_len
	strb	r2, [fp, #-68]	@ <variable>.CurrSeg.IsLastSeg, H264Pack.last_pack_in_nal
	bl	H264DEC_DecodePacket	@
	cmn	r0, #2	@,
	moveq	r3, #1	@ tmp200,
	movne	r3, #0	@ tmp202,
	strb	r3, [r4, #1]	@ tmp202, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pH264DecParam, <variable>.pH264DecParam
	cmp	r4, #0	@ <variable>.pH264DecParam,
	bne	.L229	@,
	movw	r6, #13556	@ tmp205,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r1, #54168	@ tmp208,
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
	movw	lr, #22896	@ tmp312,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L252	@,
.L216:
	ldr	r4, [r5, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r4, #0	@ <variable>.pMp4DecParam,
	bne	.L229	@,
	movw	r6, #51624	@ tmp316,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	movw	r1, #22896	@ tmp319,
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
	movw	r2, #:lower16:104384	@ tmp298,
	movt	r2, #:upper16:104384	@ tmp298,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L254	@,
.L214:
	ldr	r4, [r5, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r4, #0	@ <variable>.pMp2DecParam,
	bne	.L229	@,
	movw	r6, #:lower16:104401	@ tmp302,
	movt	r6, #:upper16:104401	@ tmp302,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:104384	@ tmp305,
	movt	r3, #:upper16:104384	@ tmp305,
	ldr	r0, [r5, r3]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp2DecParam,
	b	.L229	@
.L250:
	movw	r6, #:lower16:70056	@ tmp339,
	movt	r6, #:upper16:70056	@ tmp339,
.L230:
	ldr	r0, [r5, r6]	@,
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@,
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L229	@
.L223:
	movw	ip, #22008	@ tmp427,
	ldr	r2, [r2, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #308]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r1, #1	@ <variable>.StdExt.Vp6Ext.bReversed,
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
	add	r2, r5, #15936	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r2, #40	@,,
	bl	AVSDEC_Decode	@
	b	.L217	@
.L249:
	add	r1, r4, #72	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L218	@
.L254:
	add	r1, r4, #72	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L214	@
.L252:
	add	r1, r4, #72	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L216	@
.L236:
	movw	r6, #:lower16:109232	@ tmp390,
	movt	r6, #:upper16:109232	@ tmp390,
	b	.L230	@
.L211:
	add	r2, r5, #80896	@, pstCtx,
	ldr	r0, [r4, #72]	@, <variable>.VirAddr
	add	r2, r2, #408	@,,
	mov	r1, #16	@,
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	beq	.L255	@,
	movw	r6, #:lower16:109232	@ tmp290,
	movw	r1, #:lower16:.LC21	@,
	movt	r6, #:upper16:109232	@ tmp290,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC21	@,
	b	.L235	@
.L253:
	add	lr, r5, #74752	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, lr, #80	@,,
	bl	MPEG2DEC_Decode	@
	b	.L213	@
.L251:
	add	ip, r5, #15680	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, ip, #24	@,,
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
	movw	ip, #:lower16:109232	@ tmp252,
	movt	ip, #:upper16:109232	@ tmp252,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L257	@,
.L209:
	ldr	r4, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	cmp	r4, #0	@ <variable>.pVc1DecParam,
	bne	.L229	@,
	movw	r6, #:lower16:78215	@ tmp255,
	movt	r6, #:upper16:78215	@ tmp255,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.IsStreamEndFlag, <variable>.CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.CodecInfo.IsStreamEndFlag,
	bne	.L229	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:109232	@ tmp258,
	movt	r3, #:upper16:109232	@ tmp258,
	ldr	r0, [r5, r3]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pVc1DecParam,
	b	.L229	@
.L255:
	ldr	ip, [r4, #84]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r6	@, D.36250
	ldr	r2, [r4, #72]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, r5	@, pstCtx
	ldr	lr, [r4, #80]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r3, ip, #16	@ tmp284, <variable>.LenInByte,
	add	ip, r2, #16	@ tmp286, <variable>.VirAddr,
	str	r3, [r4, #84]	@ tmp284, <variable>.LenInByte
	str	ip, [r4, #72]	@ tmp286, <variable>.VirAddr
	add	r3, lr, #16	@ tmp288, <variable>.PhyAddr,
	str	r3, [r4, #80]	@ tmp288, <variable>.PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r6	@, D.36250
	mov	r1, #128	@,
	bl	__memzero	@
	b	.L229	@
.L257:
	add	r4, r4, #72	@ D.36233, pSegMan,
	mov	r0, r5	@, pstCtx
	mov	r1, r4	@, D.36233
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.36233
	mov	r1, #128	@,
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
	.global	ReturnImageToSyntax
	.type	ReturnImageToSyntax, %function
ReturnImageToSyntax:
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
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L275	@
.L273:
	.word	.L260
	.word	.L261
	.word	.L262
	.word	.L263
	.word	.L264
	.word	.L265
	.word	.L266
	.word	.L275
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L269
	.word	.L269
	.word	.L270
	.word	.L264
	.word	.L271
	.word	.L275
	.word	.L275
	.word	.L272
.L272:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	USERDEC_RecycleImage	@
.L275:
	ldmfd	sp, {fp, sp, pc}	@
.L269:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp150,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp150,
	ldr	r3, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L278	@,
.L264:
	movw	ip, #:lower16:g_SdecFunc	@ tmp156,
	movt	ip, #:upper16:g_SdecFunc	@ tmp156,
	ldr	r3, [ip, #16]	@ temp.1236, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1236,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	blx	r3	@ temp.1236
	ldmfd	sp, {fp, sp, pc}	@
.L265:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	DIVX3DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L266:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	AVSDEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L267:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	REAL8DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L268:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	REAL9DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L270:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	VP8DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L271:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	MVC_DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L260:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L261:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	VC1DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L262:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	MPEG4DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L263:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
.L278:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #156]	@, <variable>.image_id
	bl	VP6DEC_RecycleImage	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ReturnImageToSyntax, .-ReturnImageToSyntax
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
.LFB1356:
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
	bne	.L343	@,
.L280:
	mvn	r4, #1	@ ret,
.L324:
	mov	r0, r4	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L343:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L280	@
.L294:
	.word	.L293
	.word	.L282
	.word	.L283
	.word	.L284
	.word	.L285
	.word	.L286
	.word	.L287
	.word	.L280
	.word	.L288
	.word	.L289
	.word	.L290
	.word	.L290
	.word	.L290
	.word	.L291
	.word	.L285
	.word	.L293
	.word	.L280
	.word	.L280
	.word	.L293
.L293:
	add	r7, r0, #16	@ pstVoQue, pSynCtx,
.L295:
	ldr	r0, .L344	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r7, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	rsb	r6, ip, r3	@ tmp174, <variable>.ResetMagicWord, <variable>.image_id
	str	r6, [r4, #156]	@ tmp174, <variable>.image_id
	ldrh	r2, [r7, #4]	@ i, <variable>.history
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	and	r6, r2, #63	@ i.1297, i,
	cmp	r3, r6	@ <variable>.head, i.1297
	bne	.L327	@,
	b	.L297	@
.L300:
	add	r6, r6, #1	@ i.1296, i.1297,
	and	r6, r6, #63	@ i.1297, i.1296,
	cmp	r3, r6	@ <variable>.head, i.1297
	beq	.L297	@,
.L327:
	add	r8, r6, #2	@ tmp228, i.1297,
	add	lr, r7, r8, asl #2	@, tmp179, pstVoQue, tmp228,
	ldr	r2, [lr, #4]	@ D.35984, <variable>.image_ptr
	cmp	r2, #0	@ D.35984,
	beq	.L298	@,
	ldr	r1, [r2, #156]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, r1	@ <variable>.image_id, <variable>.image_id
	bne	.L300	@,
	mov	sl, #1	@ SameImageFlag,
.L301:
	ldrh	lr, [r7, #4]	@ temp.1267, <variable>.history
	b	.L325	@
.L304:
	mov	r6, r2	@ i.1297, j
.L325:
	cmp	r6, #0	@ i.1297,
	sub	r2, r6, #1	@ j, i.1297,
	add	r0, r7, r8, asl #2	@, tmp187, pstVoQue, tmp228,
	moveq	r2, #63	@ j,
	add	r1, r2, #2	@ tmp189, j,
	cmp	lr, r6	@ temp.1267, i.1297
	add	ip, r7, r1, asl #2	@, tmp192, pstVoQue, tmp189,
	mov	r8, r1	@ tmp228, tmp189
	ldr	r1, [ip, #4]	@ tmp194, <variable>.image_ptr
	str	r1, [r0, #4]	@ tmp194, <variable>.image_ptr
	bne	.L304	@,
	cmp	sl, #1	@ SameImageFlag,
	add	lr, lr, #1	@ tmp195, temp.1267,
	and	r2, lr, #63	@ D.35979, tmp195,
	strh	r2, [r7, #4]	@ movhi	@ D.35979, <variable>.history
	bne	.L300	@,
	ldrh	lr, [r7, #8]	@ <variable>.tail, <variable>.tail
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	lr, [sp, #0]	@ <variable>.tail,
	ldr	ip, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	movw	r3, #54176	@ tmp200,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	ldr	r0, [r5, r3]	@, <variable>.unSyntax.stH264Ctx.ChanID
	bl	Tree_FSP_RenewFs	@
	ldr	r2, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L297	@
.L318:
	.word	.L305
	.word	.L306
	.word	.L307
	.word	.L308
	.word	.L309
	.word	.L310
	.word	.L311
	.word	.L297
	.word	.L312
	.word	.L313
	.word	.L314
	.word	.L314
	.word	.L314
	.word	.L315
	.word	.L309
	.word	.L316
	.word	.L297
	.word	.L297
	.word	.L317
.L290:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp164,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp164,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	addne	r7, r5, #12608	@ pstVoQue, pSynCtx,
	addne	r7, r7, #48	@ pstVoQue, pstVoQue,
	bne	.L295	@,
.L285:
	add	r7, r5, #22016	@ pstVoQue, pSynCtx,
	add	r7, r7, #8	@ pstVoQue, pstVoQue,
	b	.L295	@
.L284:
	add	r7, r0, #74752	@ pstVoQue, pSynCtx,
	add	r7, r7, #600	@ pstVoQue, pstVoQue,
	b	.L295	@
.L291:
	add	r3, r0, #8128	@ pstVoQue, pSynCtx,
	add	r7, r3, #32	@ pstVoQue, pstVoQue,
	b	.L295	@
.L289:
	add	ip, r0, #40960	@ pstVoQue, pSynCtx,
	add	r7, ip, #40	@ pstVoQue, pstVoQue,
	b	.L295	@
.L288:
	add	r6, r0, #40960	@ pstVoQue, pSynCtx,
	add	r7, r6, #64	@ pstVoQue, pstVoQue,
	b	.L295	@
.L287:
	add	r1, r0, #15616	@ pstVoQue, pSynCtx,
	add	r7, r1, #8	@ pstVoQue, pstVoQue,
	b	.L295	@
.L286:
	add	lr, r0, #28672	@ pstVoQue, pSynCtx,
	add	r7, lr, #24	@ pstVoQue, pstVoQue,
	b	.L295	@
.L283:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r7, r0, #24	@ pstVoQue, pstVoQue,
	b	.L295	@
.L282:
	add	r2, r0, #108544	@ pstVoQue, pSynCtx,
	add	r7, r2, #344	@ pstVoQue, pstVoQue,
	b	.L295	@
.L297:
	mvn	r4, #1	@ ret,
.L321:
	ldr	r0, .L344	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L324	@
.L309:
	movw	r2, #:lower16:g_SdecFunc	@ tmp220,
	movt	r2, #:upper16:g_SdecFunc	@ tmp220,
	ldr	r3, [r2, #16]	@ temp.1291, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1291,
	beq	.L320	@,
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	blx	r3	@ temp.1291
	cmp	r0, #0	@,
	bne	.L320	@,
	mov	r4, #1	@ ret,
	b	.L321	@
.L310:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L321	@,
.L320:
	mvn	r4, #19	@ ret,
	b	.L321	@
.L316:
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	bl	MVC_DEC_RecycleImage	@
	cmp	r0, #0	@,
	bne	.L320	@,
	mov	r4, #1	@ ret,
	b	.L321	@
.L315:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L314:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp214,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp214,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L309	@,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L313:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	REAL9DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L317:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L312:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	REAL8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L311:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L308:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L307:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L306:
	ldr	r1, [r4, #156]	@, <variable>.image_id
	add	r0, r5, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L321	@
.L305:
	add	r0, r5, #8	@, pSynCtx,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	cmp	r0, #0	@,
	bne	.L320	@,
	mov	r4, #1	@ ret,
	b	.L321	@
.L298:
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC26	@,
	mov	r2, r6	@, i.1297
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	sl, #2	@ SameImageFlag,
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	b	.L301	@
.L345:
	.align	2
.L344:
	.word	.LANCHOR0+8
	.fnend
	.size	SYNTAX_ReleaseImage, .-SYNTAX_ReleaseImage
	.align	2
	.global	SYNTAX_ReceiveImage
	.type	SYNTAX_ReceiveImage, %function
SYNTAX_ReceiveImage:
	.fnstart
.LFB1355:
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
	bne	.L368	@,
.L347:
	mvn	r5, #1	@ ret,
.L366:
	mov	r0, r5	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L368:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L347	@
.L361:
	.word	.L360
	.word	.L349
	.word	.L350
	.word	.L351
	.word	.L352
	.word	.L353
	.word	.L354
	.word	.L347
	.word	.L355
	.word	.L356
	.word	.L357
	.word	.L357
	.word	.L357
	.word	.L358
	.word	.L352
	.word	.L360
	.word	.L347
	.word	.L347
	.word	.L360
.L360:
	add	r6, r0, #16	@ pstVoQue, pSynCtx,
.L362:
	ldr	r0, .L369	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r6, #6]	@ D.35901, <variable>.head
	ldrh	r0, [r6, #8]	@ <variable>.tail, <variable>.tail
	cmp	r0, r3	@ <variable>.tail, D.35901
	mvneq	r5, #2	@ ret,
	beq	.L365	@,
	add	lr, r6, r3, asl #2	@, tmp167, pstVoQue, D.35901,
	mov	r2, #424	@,
	mov	r0, r4	@, p_image
	mov	r5, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	ldrh	ip, [r6, #8]	@ <variable>.tail, <variable>.tail
	ldrh	r2, [r6, #4]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	ldrh	r3, [r6, #6]	@ <variable>.head, <variable>.head
	movw	r1, #:lower16:.LC28	@,
	str	ip, [sp, #0]	@ <variable>.tail,
	movt	r1, #:upper16:.LC28	@,
	ldr	ip, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	add	ip, r3, r0	@ tmp181, <variable>.image_id, <variable>.ResetMagicWord
	str	ip, [r4, #156]	@ tmp181, <variable>.image_id
	ldrh	r2, [r6, #6]	@ <variable>.head, <variable>.head
	add	r1, r2, r5	@ tmp184, <variable>.head,
	and	r3, r1, #63	@ tmp186, tmp184,
	strh	r3, [r6, #6]	@ movhi	@ tmp186, <variable>.head
.L365:
	ldr	r0, .L369	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L366	@
.L357:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp155,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp155,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	addne	r6, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r6, r6, #48	@ pstVoQue, pstVoQue,
	bne	.L362	@,
.L352:
	add	lr, r0, #22016	@ pstVoQue, pSynCtx,
	add	r6, lr, #8	@ pstVoQue, pstVoQue,
	b	.L362	@
.L351:
	add	r6, r0, #74752	@ pstVoQue, pSynCtx,
	add	r6, r6, #600	@ pstVoQue, pstVoQue,
	b	.L362	@
.L358:
	add	r1, r0, #8128	@ pstVoQue, pSynCtx,
	add	r6, r1, #32	@ pstVoQue, pstVoQue,
	b	.L362	@
.L350:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r6, r1, #24	@ pstVoQue, pstVoQue,
	b	.L362	@
.L349:
	add	ip, r0, #108544	@ pstVoQue, pSynCtx,
	add	r6, ip, #344	@ pstVoQue, pstVoQue,
	b	.L362	@
.L356:
	add	r3, r0, #40960	@ pstVoQue, pSynCtx,
	add	r6, r3, #40	@ pstVoQue, pstVoQue,
	b	.L362	@
.L355:
	add	lr, r0, #40960	@ pstVoQue, pSynCtx,
	add	r6, lr, #64	@ pstVoQue, pstVoQue,
	b	.L362	@
.L354:
	add	r2, r0, #15616	@ pstVoQue, pSynCtx,
	add	r6, r2, #8	@ pstVoQue, pstVoQue,
	b	.L362	@
.L353:
	add	r6, r0, #28672	@ pstVoQue, pSynCtx,
	add	r6, r6, #24	@ pstVoQue, pstVoQue,
	b	.L362	@
.L370:
	.align	2
.L369:
	.word	.LANCHOR0+8
	.fnend
	.size	SYNTAX_ReceiveImage, .-SYNTAX_ReceiveImage
	.align	2
	.global	ResetVoQueue
	.type	ResetVoQueue, %function
ResetVoQueue:
	.fnstart
.LFB1350:
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
	ldr	r5, .L373	@ tmp135,
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
.L374:
	.align	2
.L373:
	.word	.LANCHOR0+8
	.fnend
	.size	ResetVoQueue, .-ResetVoQueue
	.global	__aeabi_uidiv
	.align	2
	.global	InsertImgToVoQueue
	.type	InsertImgToVoQueue, %function
InsertImgToVoQueue:
	.fnstart
.LFB1353:
	@ args = 4, pretend = 0, frame = 24
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
	ldr	r4, [fp, #4]	@ p_image, p_image
	str	r0, [fp, #-56]	@ ChanID, %sfp
	mov	sl, r1	@ eVidStd, eVidStd
	cmp	r4, #0	@ p_image,
	mov	r9, r2	@ pCtx, pCtx
	mov	r5, r3	@ pstVoQue, pstVoQue
	beq	.L408	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp316,
	movt	r1, #:upper16:.LC29	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp316,
	bl	dprint_vfmw	@
	add	r0, r6, #8	@, tmp316,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r7, [r5, #4]	@ i, <variable>.history
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r7, r7, #63	@ i.1397, i,
	cmp	r1, r7	@ <variable>.tail, i.1397
	beq	.L378	@,
	mov	r8, #1000	@ tmp323,
	b	.L406	@
.L379:
	add	ip, r7, #1	@ i.1386, i.1397,
	and	r7, ip, #63	@ i.1397, i.1386,
	cmp	r1, r7	@ <variable>.tail, i.1397
	beq	.L378	@,
.L406:
	add	r0, r5, r7, asl #2	@, tmp176, pstVoQue, i.1397,
	ldr	r3, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r0, #12]	@ tmp173, <variable>.image_ptr
	ldr	r2, [r2, #156]	@ D.35709, <variable>.image_id
	cmp	r2, r3	@ D.35709, <variable>.image_id
	bne	.L379	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	str	r8, [r4, #160]	@ tmp323, <variable>.error_level
	add	ip, r7, #1	@ i.1386, i.1397,
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r7, ip, #63	@ i.1397, i.1386,
	cmp	r1, r7	@ <variable>.tail, i.1397
	bne	.L406	@,
.L378:
	ldr	r2, [r4, #160]	@ D.35716, <variable>.error_level
	cmp	r2, #100	@ D.35716,
	bhi	.L409	@,
	ldr	r3, [r4, #124]	@ prephitmp.1375, <variable>.image_width
	cmp	r3, #31	@ prephitmp.1375,
	ldrls	ip, [r4, #128]	@ prephitmp.1421, <variable>.image_height
	bhi	.L410	@,
.L382:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	ip, [sp, #0]	@ prephitmp.1421,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #1000	@ <variable>.error_level,
	beq	.L385	@,
	mov	r0, sl	@, eVidStd
	mov	r1, r9	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L385:
	ldr	r0, .L414	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.35701,
.L377:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L410:
	ldr	ip, [r4, #128]	@ prephitmp.1421, <variable>.image_height
	cmp	ip, #31	@ prephitmp.1421,
	bls	.L382	@,
	ldrd	r8, [r4, #8]	@ <variable>.PTS, p_image,
	mov	r2, sl	@, eVidStd
	mov	r0, r5	@, pstVoQue
	mov	r1, r4	@, p_image
	strd	r8, [r4]	@ <variable>.PTS, <variable>.SrcPts
	bl	ProduceTimeStamp	@
	ldrd	r2, [r4, #16]	@, p_image,
	strd	r2, [fp, #-68]	@,,
	ldrd	r2, [r4]	@, <variable>.SrcPts
	mov	r8, r0	@ D.35725,
	mov	r9, r1	@ D.35725,
	strd	r8, [r4, #8]	@ D.35725, p_image,
	mov	r0, #29	@,
	strd	r8, [sp]	@ D.35725,
	movw	r1, #:lower16:.LC32	@,
	ldrd	r8, [fp, #-68]	@,,
	movt	r1, #:upper16:.LC32	@,
	strd	r8, [sp, #8]	@,,
	bl	dprint_vfmw	@
	ldr	r7, [r4, #132]	@ <variable>.disp_width, <variable>.disp_width
	cmp	r7, #0	@ <variable>.disp_width,
	beq	.L388	@,
	ldr	r3, [r4, #136]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L411	@,
.L388:
	ldr	r3, [r4, #124]	@ <variable>.image_width, <variable>.image_width
	ldr	sl, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	mov	r9, r3, lsr #1	@ tmp206, <variable>.image_width,
	str	r3, [r4, #132]	@ <variable>.image_width, <variable>.disp_width
	mov	r8, sl, lsr #1	@ tmp208, <variable>.image_height,
	str	sl, [r4, #136]	@ <variable>.image_height, <variable>.disp_height
	str	r9, [r4, #140]	@ tmp206, <variable>.disp_center_x
	str	r8, [r4, #144]	@ tmp208, <variable>.disp_center_y
.L389:
	str	r3, [r5, #300]	@ <variable>.image_width, <variable>.SideInfo.ImageWidth
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r8, [r5, #280]	@ <variable>.SideInfo.OldSeqCnt, <variable>.SideInfo.OldSeqCnt
	str	r0, [r5, #304]	@ <variable>.image_height, <variable>.SideInfo.ImageHeight
	ldr	r3, [r4, #120]	@ <variable>.format, <variable>.format
	ubfx	lr, r3, #5, #3	@ tmp215, <variable>.format,,
	str	lr, [r5, #308]	@ tmp215, <variable>.SideInfo.VideoFormat
	ldr	sl, [r4, #120]	@ <variable>.format, <variable>.format
	ldr	r3, [r5, #316]	@ D.35759, <variable>.SideInfo.SeqImgCnt
	str	sl, [r5, #312]	@ <variable>.format, <variable>.SideInfo.ImageFormat
	add	lr, r3, #1	@ tmp230, D.35759,
	ldr	r9, [r4, #136]	@ <variable>.disp_height, <variable>.disp_height
	ldr	r0, [r4, #164]	@ D.35755, <variable>.seq_cnt
	ldr	ip, [r4, #140]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #144]	@ tmp224, <variable>.disp_center_y
	cmp	r0, r8	@ D.35755, <variable>.SideInfo.OldSeqCnt
	ldrh	r1, [r4, #132]	@ tmp219, <variable>.disp_width
	ldr	r7, [r4, #120]	@ temp.1394, <variable>.format
	orr	sl, r1, r9, asl #16	@, dsize, tmp219, <variable>.disp_height,
	strne	r0, [r5, #320]	@ D.35755, <variable>.SideInfo.SeqCnt
	orr	r9, r2, ip, asl #16	@, dcenter, tmp224, <variable>.disp_center_x,
	str	r3, [r4, #168]	@ D.35759, <variable>.seq_img_cnt
	ldr	r2, [r5, #272]	@ D.35761, <variable>.SideInfo.OldAspectRatio
	ubfx	r8, r7, #8, #2	@ ScanType, temp.1394,,
	ubfx	r7, r7, #14, #3	@ AspectRatio, temp.1394,,
	str	lr, [r5, #316]	@ tmp230, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r7	@ D.35761, AspectRatio
	beq	.L391	@,
	movw	ip, #:lower16:g_event_report	@ tmp231,
	movt	ip, #:upper16:g_event_report	@ tmp231,
	ldr	r3, [ip, #0]	@ g_event_report.429, g_event_report
	cmp	r3, #0	@ g_event_report.429,
	beq	.L392	@,
	strb	r2, [fp, #-52]	@ D.35761, para
	mov	r1, #7	@,
	ldr	r0, [fp, #-56]	@, %sfp
	sub	r2, fp, #52	@,,
	strb	r7, [fp, #-51]	@ AspectRatio, para
	blx	r3	@ g_event_report.429
.L392:
	str	r7, [r5, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L391:
	ldr	r2, [r5, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	r2, r8	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L393	@,
	movw	r7, #:lower16:g_event_report	@ tmp236,
	movt	r7, #:upper16:g_event_report	@ tmp236,
	ldr	r3, [r7, #0]	@ g_event_report.1398, g_event_report
	cmp	r3, #0	@ g_event_report.1398,
	beq	.L394	@,
	sub	r2, fp, #44	@ tmp238,,
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #4	@,
	strb	r8, [r2, #-8]!	@ ScanType, para
	blx	r3	@ g_event_report.1398
.L394:
	str	r8, [r5, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L393:
	ldr	r1, [r5, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	r1, sl	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L412	@,
.L395:
	movw	lr, #:lower16:g_event_report	@ tmp241,
	movt	lr, #:upper16:g_event_report	@ tmp241,
	str	sl, [r5, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	r9, [r5, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [lr, #0]	@ g_event_report.1399, g_event_report
	cmp	r3, #0	@ g_event_report.1399,
	beq	.L396	@,
	ldrh	ip, [r4, #132]	@, <variable>.disp_width
	mov	r1, #1	@,
	sub	r2, fp, #52	@,,
	strh	ip, [fp, #-52]	@ movhi	@, para
	ldrh	r0, [r4, #136]	@, <variable>.disp_height
	strh	r0, [fp, #-50]	@ movhi	@, para
	ldrh	sl, [r4, #140]	@, <variable>.disp_center_x
	ldr	r0, [fp, #-56]	@, %sfp
	strh	sl, [fp, #-48]	@ movhi	@, para
	ldrh	r9, [r4, #144]	@, <variable>.disp_center_y
	strh	r9, [fp, #-46]	@ movhi	@, para
	blx	r3	@ g_event_report.1399
.L396:
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	lr, #300	@ tmp248,
	ldr	ip, [r4, #88]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	mov	r0, #12	@,
	ldr	r7, [r4, #152]	@ <variable>.image_stride, <variable>.image_stride
	movw	r1, #:lower16:.LC33	@,
	ldr	r9, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC33	@,
	str	ip, [r4, #72]	@ <variable>.chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r7, ip	@ tmp257, <variable>.image_stride, <variable>.chrom_phy_addr
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	r8, r7, r3	@ tmp253, <variable>.image_stride, <variable>.luma_phy_addr
	str	r2, [r4, #80]	@ tmp257, <variable>.btm_chrom_phy_addr
	str	r8, [r4, #76]	@ tmp253, <variable>.btm_luma_phy_addr
	movw	r8, #:lower16:g_VfmwChanStat	@ tmp249,
	ldrh	r2, [r5, #4]	@ <variable>.history, <variable>.history
	movt	r8, #:upper16:g_VfmwChanStat	@ tmp249,
	ldrh	r3, [r5, #6]	@ <variable>.head, <variable>.head
	ldrh	sl, [r5, #8]	@ <variable>.tail, <variable>.tail
	str	r9, [sp, #4]	@ <variable>.image_id,
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [sp, #0]	@ <variable>.tail,
	mul	sl, lr, r9	@ tmp247, tmp248,
	bl	dprint_vfmw	@
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	ldr	r0, .L414	@,
	add	r2, r1, #1	@ tmp271, <variable>.tail,
	add	r3, r5, r1, asl #2	@, tmp267, pstVoQue, <variable>.tail,
	and	r7, r2, #63	@ tmp273, tmp271,
	strh	r7, [r5, #8]	@ movhi	@ tmp273, <variable>.tail
	add	r7, r8, sl	@ pVfmwChanStat, tmp249, tmp247
	str	r4, [r3, #12]	@ p_image, <variable>.image_ptr
	ldr	ip, [r4, #108]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	ip, [r7, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	ldr	r1, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	add	r3, r1, #2	@ tmp276, <variable>.image_id,
	str	r3, [r5, #296]	@ tmp276, <variable>.SideInfo.LastImageIdPlus2
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4, #308]	@ D.35806, <variable>.ImageDnr.video_standard
	sub	r2, r3, #10	@ tmp279, D.35806,
	cmp	r2, #2	@ tmp279,
	bhi	.L397	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp280,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp280,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L399	@,
.L398:
	movw	lr, #:lower16:g_event_report	@ tmp283,
	movt	lr, #:upper16:g_event_report	@ tmp283,
	ldr	r3, [lr, #0]	@ g_event_report.1415, g_event_report
	cmp	r3, #0	@ g_event_report.1415,
	beq	.L400	@,
	sub	r2, fp, #44	@ tmp284,,
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #5	@,
	str	r4, [r2, #-8]!	@ p_image, para
	blx	r3	@ g_event_report.1415
.L400:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L413	@,
.L401:
	ldr	r4, [r7, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r4, #1	@ tmp304, <variable>.u32FrImgNum,
	str	lr, [r7, #4]	@ tmp304, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, sl]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, r3, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1416
	mov	r4, r0	@ CurTime.1416,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.35701,
	bcc	.L377	@,
	ldr	r3, [r7, #4]	@ temp.1417, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1417,
	beq	.L403	@,
	movw	ip, #10000	@ tmp308,
	mul	r0, ip, r3	@, tmp308, temp.1417
	bl	__aeabi_uidiv	@
	str	r0, [r7, #8]	@, <variable>.u32FrFrameRate
.L403:
	mov	r2, #0	@ tmp312,
	mov	r0, #1	@ D.35701,
	str	r4, [r8, sl]	@ CurTime.1416, <variable>.u32FrBeginTime
	str	r2, [r7, #4]	@ tmp312, <variable>.u32FrImgNum
	b	.L377	@
.L409:
	ldr	r3, [r4, #124]	@ prephitmp.1375, <variable>.image_width
	ldr	ip, [r4, #128]	@ prephitmp.1421, <variable>.image_height
	b	.L382	@
.L397:
	cmp	r3, #4	@ D.35806,
	beq	.L398	@,
	cmp	r3, #14	@ D.35806,
	beq	.L398	@,
.L399:
	cmp	r3, #18	@ D.35806,
	bne	.L400	@,
	b	.L398	@
.L411:
	cmp	sl, #15	@ eVidStd,
	cmpne	sl, #0	@, eVidStd,
	ldreq	r3, [r4, #124]	@ <variable>.image_width, <variable>.image_width
	beq	.L389	@,
	b	.L388	@
.L413:
	bl	OSAL_GetTimeInMs	@
	ldr	lr, [fp, #-56]	@, %sfp
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp292,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp292,
	add	r6, r6, lr, asl #2	@, tmp288, tmp316,,
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ CurTime,
	ldr	r0, [r6, #56]	@ tmp291, last_rec_pos_time
	rsb	r4, r0, r3	@ tmp290, tmp291, CurTime
	cmp	r4, ip	@ tmp290, g_TraceFramePeriod
	bls	.L401	@,
	mov	r1, lr, asl #24	@ tmp301,,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r1, #524288	@, tmp301,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #531	@,
	str	r3, [r6, #56]	@ CurTime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L401	@
.L412:
	ldr	r8, [r5, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	r8, r9	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L395	@,
	b	.L396	@
.L408:
	mov	r0, r4	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.35701,
	b	.L377	@
.L415:
	.align	2
.L414:
	.word	.LANCHOR0+8
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.global	g_DnrEnable
	.global	pstVdecUsdPool
	.global	g_SpinLock
	.global	g_SpinLockIrq_Destroy
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35695, %object
	.size	__func__.35695, 19
__func__.35695:
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
	.ascii	"image[%d] null\012\000"
.LC27:
	.ascii	"Queue=(%02d,%02d,%02d) x F%d\012\000"
	.space	2
.LC28:
	.ascii	"Queue=(%02d,%02d,%02d) - F%d\012\000"
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
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	pstVdecUsdPool, %object
	.size	pstVdecUsdPool, 8
pstVdecUsdPool:
	.space	8
	.type	g_SpinLock, %object
	.size	g_SpinLock, 48
g_SpinLock:
	.space	48
	.type	last_rec_pos_time.35686, %object
	.size	last_rec_pos_time.35686, 8
last_rec_pos_time.35686:
	.space	8
	.type	g_DnrEnable, %object
	.size	g_DnrEnable, 4
g_DnrEnable:
	.space	4
	.type	g_SpinLockIrq_Destroy, %object
	.size	g_SpinLockIrq_Destroy, 48
g_SpinLockIrq_Destroy:
	.space	48
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
