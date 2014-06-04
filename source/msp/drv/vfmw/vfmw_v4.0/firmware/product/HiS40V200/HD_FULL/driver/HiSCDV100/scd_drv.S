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
	.file	"scd_drv.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV100/.scd_drv.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV100/scd_drv.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV100/scd_drv.o -O2 -Wall
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
	.global	GetInstIDByRawArray
	.type	GetInstIDByRawArray, %function
GetInstIDByRawArray:
	.fnstart
.LFB1349:
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
	ldr	r3, .L7	@ tmp137,
	cmp	r0, r3	@ pRawArray, tmp137
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, .L7+4	@ tmp139,
	cmp	r0, r1	@ pRawArray, tmp139
	moveq	r0, #1	@, i,
	mvnne	r0, #0	@, i,
	ldmfd	sp, {fp, sp, pc}	@
.L8:
	.align	2
.L7:
	.word	.LANCHOR0+184
	.word	.LANCHOR0+145416
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
	.fnstart
.LFB1355:
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
	cmp	r0, #1	@ SmID,
	bls	.L13	@,
.L10:
	mvn	r0, #3	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L13:
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:145232	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:145232	@ tmp139,
	mla	r2, r1, r0, r3	@ tmp140, tmp139, SmID, tmp136
	movw	r1, #57536	@ tmp152,
	add	ip, r2, #57344	@ tmp141, tmp140,
	add	r3, ip, #184	@ tmp141, tmp141,
	ldr	r1, [r2, r1]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	ldr	ip, [r3, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	add	r3, ip, #1	@ tmp142, <variable>.RawPacketArray.Tail,
	mov	r2, r3, asr #31	@ tmp145, tmp142,
	mov	r2, r2, lsr #22	@ tmp146, tmp145,
	add	ip, r3, r2	@ tmp147, tmp142, tmp146
	mov	r3, ip, asl #22	@ tmp148, tmp147,
	mov	ip, r3, lsr #22	@ tmp148, tmp148,
	rsb	r3, r2, ip	@ tmp150, tmp146, tmp148
	cmp	r3, r1	@ tmp150, <variable>.RawPacketArray.History
	movne	r0, #0	@ Ret,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L10	@
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L19	@,
.L15:
	mvn	r0, #0	@ D.35477,
	ldmfd	sp, {fp, sp, pc}	@
.L19:
	mov	r3, #57344	@ tmp139,
	movw	ip, #57348	@ tmp140,
	ldr	r3, [r0, r3]	@ D.35478, <variable>.Head
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r3, r2	@ D.35478, <variable>.Tail
	mvneq	r0, #2	@ D.35477,
	ldmeqfd	sp, {fp, sp, pc}	@
	rsb	ip, r3, r3, asl #3	@, tmp146, D.35478, D.35478,
	movw	r2, #57356	@ tmp142,
	add	r3, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r3, [r0, r3, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r3	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r2]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.35477,
	ldmltfd	sp, {fp, sp, pc}	@
	b	.L15	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1359:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pOffset,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r0, #0	@, tmp143
	moveq	r0, #1	@, tmp143
	mvneq	r0, #0	@ D.35497,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r2, #57344	@ tmp144,
	ldr	ip, [r3, r2]	@ <variable>.Head, <variable>.Head
	movw	r2, #57348	@ tmp145,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #57356	@ tmp148,
	mvneq	r0, #2	@ D.35497,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
.LFB1362:
	@ args = 16, pretend = 0, frame = 32
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
	rsbs	ip, r0, #1	@ tmp158, pRawStreamArray
	movcc	ip, #0	@ tmp158
	orrs	ip, ip, r1, lsr #31	@,, tmp158, Len,
	beq	.L47	@,
.L26:
	mvn	r7, #0	@ D.35617,
.L34:
	mov	r0, r7	@, D.35617
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L47:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L26	@,
	mov	ip, #57344	@ tmp170,
	movw	r8, #57348	@ tmp176,
	ldr	sl, [r0, ip]	@ Index, <variable>.Head
	movw	r6, #57356	@ tmp175,
	ldr	r9, [r0, r8]	@ <variable>.Tail, <variable>.Tail
	ldr	r8, [r0, r6]	@ D.35625, <variable>.FirstPacketOffset
	mov	r4, sl, asl #3	@ tmp265, Index,
	subs	r6, r9, sl	@ RawNum, <variable>.Tail, Index
	rsb	r7, sl, r4	@ tmp173, Index, tmp265
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	add	r5, r7, #1	@ tmp174, tmp173,
	rsb	r7, sl, r4	@ tmp181, Index, tmp265
	add	r9, r6, sl	@, RawNum, Index
	add	r4, r0, r7, asl #3	@, tmp183, pRawStreamArray, tmp181,
	ldr	r5, [r0, r5, asl #3]	@ D.35624, <variable>.Length
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #4]	@, pPts
	ldrd	r6, [r4, #16]	@ <variable>.Pts, tmp183,
	strd	r6, [r9]	@ <variable>.Pts,
	ldr	sl, [fp, #8]	@, pUsertag
	ldrd	r6, [r4, #32]	@ <variable>.UserTag, tmp183,
	strd	r6, [sl]	@ <variable>.UserTag,
	ldr	ip, [fp, #16]	@, pRawPts
	ldrd	r6, [r4, #16]	@ <variable>.Pts, tmp183,
	strd	r6, [ip]	@ <variable>.Pts,
	mov	ip, #57344	@ tmp210,
	ldrd	r6, [r4, #40]	@ <variable>.DispTime, tmp183,
	ldr	r4, [fp, #12]	@, pDisptime
	strd	r6, [r4]	@ <variable>.DispTime,
	ldr	r6, [fp, #-48]	@, %sfp
	ldr	ip, [r0, ip]	@ i, <variable>.Head
	cmp	r6, ip	@, i
	ble	.L28	@,
	rsb	r5, r8, r5	@ TotalLen, D.35625, D.35624
	cmp	r1, r5	@ Len, TotalLen
	blt	.L28	@,
	ldr	r7, [fp, #-48]	@, %sfp
	mvn	r4, ip	@ tmp268, i
	add	sl, r4, r7	@ tmp267, tmp268,
	tst	sl, #1	@ tmp267,
	beq	.L45	@,
	add	ip, ip, #1	@ i, i,
	mov	r8, ip, asr #31	@ tmp271, i,
	mov	r6, r8, lsr #22	@ tmp272, tmp271,
	add	r9, ip, r6	@ tmp273, i, tmp272
	mov	sl, r9, asl #22	@ tmp275, tmp273,
	mov	r4, sl, lsr #22	@ tmp275, tmp275,
	rsb	r4, r6, r4	@ Index.772, tmp272, tmp275
	mov	r7, r4, asl #3	@, Index.772,
	str	r7, [fp, #-52]	@, %sfp
	rsb	r8, r4, r7	@ tmp276, Index.772,
	mvn	r7, #0	@,
	add	r9, r8, #1	@ tmp277, tmp276,
	add	sl, r0, r8, asl #3	@, tmp280, pRawStreamArray, tmp276,
	ldr	r6, [r0, r9, asl #3]	@ <variable>.Length, <variable>.Length
	ldrd	r8, [sl, #16]	@, tmp280,
	add	r5, r5, r6	@ TotalLen, TotalLen, <variable>.Length
	mvn	r6, #0	@,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	strd	r8, [fp, #-68]	@,,
	beq	.L48	@,
.L36:
	ldr	r9, [fp, #-52]	@, %sfp
	cmp	r1, r5	@ Len, TotalLen
	ldr	sl, [fp, #4]	@, pPts
	rsb	r7, r4, r9	@ tmp284, Index.772,
	ldrd	r8, [fp, #-68]	@,,
	add	r7, r0, r7, asl #3	@, tmp286, pRawStreamArray, tmp284,
	strd	r8, [sl]	@,
	ldr	r6, [fp, #8]	@, pUsertag
	ldrd	r8, [r7, #32]	@ <variable>.UserTag, tmp286,
	strd	r8, [r6]	@ <variable>.UserTag,
	ldr	sl, [fp, #16]	@, pRawPts
	ldrd	r8, [r7, #16]	@ <variable>.Pts, tmp286,
	strd	r8, [sl]	@ <variable>.Pts,
	ldr	r6, [fp, #12]	@, pDisptime
	ldrd	r8, [r7, #40]	@ <variable>.DispTime, tmp286,
	strd	r8, [r6]	@ <variable>.DispTime,
	blt	.L30	@,
.L45:
	str	r2, [fp, #-52]	@ pNum, %sfp
	str	r3, [fp, #-56]	@ pOffset, %sfp
	ldr	sl, [fp, #4]	@ pPts, pPts
	b	.L41	@
.L31:
	ldr	r6, [fp, #-48]	@, %sfp
	cmp	r6, r2	@, tmp270
	ldrd	r6, [fp, #-68]	@,,
	strd	r6, [sl]	@,* pPts
	ldr	r7, [fp, #8]	@, pUsertag
	ldrd	r8, [r3, #32]	@ <variable>.UserTag, tmp235,
	strd	r8, [r7]	@ <variable>.UserTag,
	ldr	r6, [fp, #16]	@, pRawPts
	ldrd	r8, [r3, #16]	@ <variable>.Pts, tmp235,
	strd	r8, [r6]	@ <variable>.Pts,
	ldr	r7, [fp, #12]	@, pDisptime
	ldrd	r8, [r3, #40]	@ <variable>.DispTime, tmp235,
	strd	r8, [r7]	@ <variable>.DispTime,
	ble	.L49	@,
	cmp	r1, r5	@ Len, TotalLen
	blt	.L46	@,
	add	ip, r2, #1	@ i, tmp270,
	mvn	r7, #0	@,
	mov	r3, ip, asr #31	@ tmp293, i,
	mov	r4, r3, lsr #22	@ tmp294, tmp293,
	add	r8, ip, r4	@ tmp295, i, tmp294
	mov	r6, r8, asl #22	@ tmp297, tmp295,
	mov	r2, r6, lsr #22	@ tmp297, tmp297,
	mvn	r6, #0	@,
	rsb	r4, r4, r2	@ Index.772, tmp294, tmp297
	mov	r9, r4, asl #3	@, Index.772,
	str	r9, [fp, #-72]	@, %sfp
	rsb	r3, r4, r9	@ tmp306, Index.772,
	add	r8, r3, #1	@ tmp299, tmp298,
	add	r3, r0, r3, asl #3	@, tmp308, pRawStreamArray, tmp306,
	ldr	r2, [r0, r8, asl #3]	@ <variable>.Length, <variable>.Length
	ldrd	r8, [r3, #16]	@, tmp302,
	add	r5, r5, r2	@ TotalLen, TotalLen, <variable>.Length
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	strd	r8, [fp, #-68]	@,,
	beq	.L50	@,
.L39:
	ldrd	r6, [fp, #-68]	@,,
	cmp	r1, r5	@ Len, TotalLen
	strd	r6, [sl]	@,* pPts
	ldr	r2, [fp, #8]	@, pUsertag
	ldrd	r8, [r3, #32]	@ <variable>.UserTag, tmp308,
	strd	r8, [r2]	@ <variable>.UserTag,
	ldr	r7, [fp, #16]	@, pRawPts
	ldrd	r8, [r3, #16]	@ <variable>.Pts, tmp308,
	strd	r8, [r7]	@ <variable>.Pts,
	ldr	r6, [fp, #12]	@, pDisptime
	ldrd	r2, [r3, #40]	@ <variable>.DispTime, tmp308,
	strd	r2, [r6]	@ <variable>.DispTime,
	blt	.L46	@,
.L41:
	add	ip, ip, #1	@ i, i,
	mov	r8, ip, asr #31	@ tmp211, i,
	mov	r2, ip	@ tmp270, i
	mov	r4, r8, lsr #22	@ tmp212, tmp211,
	add	r3, ip, r4	@ tmp213, i, tmp212
	mov	r9, r3, asl #22	@ tmp214, tmp213,
	mov	r6, r9, lsr #22	@ tmp214, tmp214,
	rsb	r4, r4, r6	@ Index.772, tmp212, tmp214
	mvn	r6, #0	@,
	mov	r7, r4, asl #3	@, Index.772,
	str	r7, [fp, #-72]	@, %sfp
	rsb	r3, r4, r7	@ tmp233, Index.772,
	add	r9, r3, #1	@ tmp220, tmp219,
	add	r3, r0, r3, asl #3	@, tmp235, pRawStreamArray, tmp233,
	ldr	r7, [r0, r9, asl #3]	@ <variable>.Length, <variable>.Length
	ldrd	r8, [r3, #16]	@, tmp227,
	add	r5, r5, r7	@ TotalLen, TotalLen, <variable>.Length
	mvn	r7, #0	@,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	strd	r8, [fp, #-68]	@,,
	ldreqd	r8, [sl]	@,* pPts
	streqd	r8, [fp, #-68]	@,,
	b	.L31	@
.L50:
	ldrd	r8, [sl]	@,* pPts
	strd	r8, [fp, #-68]	@,,
	b	.L39	@
.L46:
	ldr	r7, [fp, #-72]	@, %sfp
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	str	r7, [fp, #-52]	@, %sfp
.L30:
	mov	r7, #57344	@ tmp254,
	ldr	r7, [r0, r7]	@ D.35623, <variable>.Head
	cmp	r7, ip	@ D.35623, i
	beq	.L28	@,
	ldr	r9, [fp, #-52]	@, %sfp
	rsb	ip, r7, ip	@ tmp261, D.35623, i
	mov	r7, #0	@ D.35617,
	rsb	r4, r4, r9	@ tmp258, Index.772,
	add	r4, r4, #1	@ tmp259, tmp258,
	ldr	r0, [r0, r4, asl #3]	@ <variable>.Length, <variable>.Length
	str	ip, [r2, #0]	@ tmp261,* pNum
	rsb	r5, r0, r5	@ TotalLen.778, <variable>.Length, TotalLen
	rsb	r1, r5, r1	@ tmp262, TotalLen.778, Len
	str	r1, [r3, #0]	@ tmp262,* pOffset
	b	.L34	@
.L48:
	ldr	r9, [fp, #4]	@, pPts
	ldrd	r8, [r9]	@,
	strd	r8, [fp, #-68]	@,,
	b	.L36	@
.L49:
	ldr	r8, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
	str	r8, [fp, #-52]	@, %sfp
	b	.L30	@
.L28:
	mov	r7, #0	@ tmp255,
	str	r7, [r2, #0]	@ tmp255,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L34	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	GetRawStreamSize
	.type	GetRawStreamSize, %function
GetRawStreamSize:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L55	@,
.L52:
	mvn	r0, #0	@ D.35692,
	ldmfd	sp, {fp, sp, pc}	@
.L55:
	movw	r3, #57364	@ tmp139,
	movw	r2, #57356	@ tmp140,
	ldr	ip, [r0, r3]	@ D.35693, <variable>.RawTotalSize
	str	ip, [r1, #0]	@ D.35693,* pStreamSize
	ldr	r2, [r0, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, r2, ip	@ D.35696, <variable>.FirstPacketOffset, D.35693
	str	r3, [r1, #0]	@ D.35696,* pStreamSize
	cmp	r3, #0	@ D.35696,
	movge	r0, #0	@ D.35692,
	ldmgefd	sp, {fp, sp, pc}	@
	b	.L52	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.35705,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r3, #57344	@ tmp139,
	movw	r2, #57348	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.Head, <variable>.Head
	ldr	r2, [r0, r2]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.35705,
	rsb	r3, ip, r2	@ D.35708, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.35708,* pStreamNum
	cmp	r3, #0	@ D.35708,
	addlt	r3, r3, #1024	@ tmp142, D.35708,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetRawStreamNumInBuffer
	.type	GetRawStreamNumInBuffer, %function
GetRawStreamNumInBuffer:
	.fnstart
.LFB1367:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.35719,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r3, #57352	@ tmp139,
	movw	r2, #57348	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.History, <variable>.History
	ldr	r2, [r0, r2]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.35719,
	rsb	r3, ip, r2	@ D.35722, <variable>.History, <variable>.Tail
	str	r3, [r1, #0]	@ D.35722,* pStreamNum
	cmp	r3, #0	@ D.35722,
	addlt	r3, r3, #1024	@ tmp142, D.35722,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNumInBuffer, .-GetRawStreamNumInBuffer
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pBufAddr,
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r2, #0	@ pBufLength,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:73752	@ tmp143,
	movt	ip, #:upper16:73752	@ tmp143,
	movw	r3, #:lower16:73756	@ tmp145,
	movt	r3, #:upper16:73756	@ tmp145,
	ldr	ip, [r0, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	str	ip, [r1, #0]	@ <variable>.SegBufPhyAddr,* pBufAddr
	ldr	r3, [r0, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	str	r3, [r2, #0]	@ <variable>.SegBufSize,* pBufLength
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegBuf, .-GetSegBuf
	.align	2
	.global	GetFreeSegBuf
	.type	GetFreeSegBuf, %function
GetFreeSegBuf:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pAddr,
	movne	r3, #0	@, tmp146
	moveq	r3, #1	@, tmp146
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #0	@ pLength,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	ip, #:lower16:73764	@ tmp147,
	movt	ip, #:upper16:73764	@ tmp147,
	movw	r4, #:lower16:73760	@ tmp151,
	movt	r4, #:upper16:73760	@ tmp151,
	ldr	r5, [r0, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	str	r5, [r1, #0]	@ <variable>.SegBufWriteAddr,* pAddr
	str	r3, [r2, #0]	@ tmp146,* pLength
	ldr	r1, [r0, ip]	@ temp.896, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.35795, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.896, D.35795
	bgt	.L75	@,
	movw	r3, #:lower16:73756	@ tmp156,
	movt	r3, #:upper16:73756	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.35795,
	ldrge	r3, [r0, r3]	@ prephitmp.885, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.896, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.885, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.885,
	cmp	r1, r3	@ Len, prephitmp.885
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L75:
	movw	r3, #:lower16:73756	@ tmp152,
	movt	r3, #:upper16:73756	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.885, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.35795, prephitmp.885
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.896, tmp154
	cmp	r1, r3	@ Len, prephitmp.885
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
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
	subs	r3, r0, #0	@ pSegStreamArray, pSegStreamArray
	movwne	r2, #:lower16:73768	@ tmp137,
	movtne	r2, #:upper16:73768	@ tmp137,
	mvneq	r0, #0	@ D.35956,
	movne	r0, #0	@ D.35956,
	ldrne	r3, [r3, r2]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	strne	r3, [r1, #0]	@ <variable>.SegTotalSize,* pStreamSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegStreamSize, .-GetSegStreamSize
	.align	2
	.global	GetSegStreamNum
	.type	GetSegStreamNum, %function
GetSegStreamNum:
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
	cmp	r0, #0	@ pSegStreamArray
	mvneq	r0, #0	@ D.35964,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:73740	@ tmp138,
	movw	r3, #:lower16:73736	@ tmp139,
	movt	ip, #:upper16:73740	@ tmp138,
	movt	r3, #:upper16:73736	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.35964,
	rsb	r3, ip, r2	@ D.35967, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.35967,* pStreamNum
	cmp	r3, #0	@ D.35967,
	addlt	r3, r3, #1152	@ tmp142, D.35967,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
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
	cmp	r0, #0	@ pSegStreamArray
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:73776	@ tmp136,
	movt	ip, #:upper16:73776	@ tmp136,
	movw	r3, #:lower16:73772	@ tmp138,
	movt	r3, #:upper16:73772	@ tmp138,
	ldr	ip, [r0, ip]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	str	ip, [r1, #0]	@ <variable>.SegFreshNum,* pFreshNum
	ldr	r3, [r0, r3]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	str	r3, [r2, #0]	@ <variable>.SegFreshSize,* pFreshSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetFreshSegStream, .-GetFreshSegStream
	.align	2
	.global	SCDDRV_PrepareSleep
	.type	SCDDRV_PrepareSleep, %function
SCDDRV_PrepareSleep:
	.fnstart
.LFB1378:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r0, [r3, #-4088]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movw	ip, #:lower16:290520	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	movt	ip, #:upper16:290520	@ tmp138,
	ldr	r2, [r1, ip]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp143,
	moveq	r2, #2	@ tmp141,
	strne	r2, [r3, #-4088]	@ tmp143, s_eScdDrvSleepStage
	streq	r2, [r3, #-4088]	@ tmp141, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r0, [r3, #-4088]	@, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForeceSleep
	.type	SCDDRV_ForeceSleep, %function
SCDDRV_ForeceSleep:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp133,
	movt	r3, #:upper16:.LANCHOR1	@ tmp133,
	ldr	r2, [r3, #-4088]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #-4088]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ForeceSleep, .-SCDDRV_ForeceSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1388:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	movw	ip, #:lower16:145232	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	movt	ip, #:upper16:145232	@ tmp140,
	movw	r3, #:lower16:131392	@ tmp138,
	movt	r3, #:upper16:131392	@ tmp138,
	mla	r2, ip, r0, r2	@ tmp141, tmp140, SmID, tmp137
	ldr	r1, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L105	@,
.L99:
	mov	r0, #0	@ D.36213,
	ldmfd	sp, {fp, sp, pc}	@
.L105:
	movw	r1, #:lower16:.LANCHOR1	@ tmp151,
	movt	r1, #:upper16:.LANCHOR1	@ tmp151,
	mov	r0, #0	@ tmp150,
	str	r0, [r2, r3]	@ tmp150, <variable>.Mode
	ldr	r3, [r1, #-4084]	@ s_SCDInISR, s_SCDInISR
	cmp	r3, r0	@ s_SCDInISR,
	beq	.L99	@,
	mov	r3, r0	@ i, tmp150
.L100:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L100	@,
	mvn	r0, #6	@ D.36213,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1389:
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
	cmp	r0, #1	@ SmID,
	mvnhi	r0, #0	@ D.36225,
	ldmhifd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp207,
	movw	r2, #:lower16:145232	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp207,
	movt	r2, #:upper16:145232	@ tmp143,
	movw	r6, #:lower16:131392	@ tmp141,
	movt	r6, #:upper16:131392	@ tmp141,
	mla	r2, r2, r0, r3	@ tmp144, tmp143, SmID, tmp207
	add	r4, r2, #144384	@ tmp153, tmp144,
	add	ip, r2, #57344	@ tmp160, tmp144,
	add	r4, r4, #872	@ tmp153, tmp153,
	add	ip, ip, #184	@ tmp160, tmp160,
	ldr	r5, [r2, r6]	@ <variable>.Mode, <variable>.Mode
	strb	r5, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	r6, [r4, #4]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	r4, #57528	@ tmp156,
	str	r6, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	ldr	r6, [r2, r4]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:145232	@ tmp173,
	movt	r2, #:upper16:145232	@ tmp173,
	ldr	r5, [ip, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	mla	r2, r2, r0, r3	@ tmp174, tmp173, SmID, tmp207
	rsb	r4, r6, r5	@ D.38388, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	cmp	r4, #0	@ D.38388,
	str	r4, [r1, #4]	@ D.38388, <variable>.RawNum
	addlt	r4, r4, #1024	@ tmp169, D.38388,
	strlt	r4, [r1, #4]	@ tmp169, <variable>.RawNum
	add	ip, r2, #57344	@ tmp175, tmp174,
	movw	r4, #:lower16:131288	@ tmp185,
	add	r6, ip, #200	@ tmp175, tmp175,
	add	r5, ip, #192	@ tmp181, tmp181,
	add	ip, r2, #131072	@ tmp189, tmp174,
	movt	r4, #:upper16:131288	@ tmp185,
	ldr	r6, [r6, #4]	@ D.38398, <variable>.RawPacketArray.RawTotalSize
	add	ip, ip, #216	@ tmp189, tmp189,
	str	r6, [r1, #12]	@ D.38398, <variable>.TotalRawSize
	ldr	r5, [r5, #4]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	rsb	r6, r5, r6	@ tmp183, <variable>.RawPacketArray.FirstPacketOffset, D.38398
	str	r6, [r1, #12]	@ tmp183, <variable>.TotalRawSize
	ldr	ip, [ip, #4]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r2, [r2, r4]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	rsb	r2, r2, ip	@ D.38405, <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Tail
	movw	ip, #:lower16:145232	@ tmp202,
	movt	ip, #:upper16:145232	@ tmp202,
	cmp	r2, #0	@ D.38405,
	str	r2, [r1, #8]	@ D.38405, <variable>.SegNum
	addlt	r2, r2, #1152	@ tmp198, D.38405,
	mla	r3, ip, r0, r3	@ tmp203, tmp202, SmID, tmp207
	strlt	r2, [r1, #8]	@ tmp198, <variable>.SegNum
	movw	r2, #:lower16:131320	@ tmp200,
	movt	r2, #:upper16:131320	@ tmp200,
	mov	r0, #0	@ D.36225,
	ldr	r3, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	r3, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
.LFB1397:
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
	sub	r3, r1, #1	@ tmp137, Mode,
	cmp	r3, #1	@ tmp137,
	mvnhi	r0, #0	@ D.36565,
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movw	ip, #:lower16:145232	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:145232	@ tmp141,
	movw	r3, #:lower16:131392	@ tmp139,
	movt	r3, #:upper16:131392	@ tmp139,
	mla	r2, ip, r0, r2	@ tmp142, tmp141, SmID, tmp138
	mov	r0, #0	@ D.36565,
	str	r1, [r2, r3]	@ Mode, <variable>.Mode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
	.fnstart
.LFB1403:
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
	ldr	r3, [r0, #0]	@ <variable>.Scdover, <variable>.Scdover
	cmp	r3, #0	@ <variable>.Scdover,
	bne	.L120	@,
.L117:
	mvn	r0, #6	@ D.36795,
	ldmfd	sp, {fp, sp, pc}	@
.L120:
	ldr	r1, [r0, #16]	@ <variable>.ScdRollAddr, <variable>.ScdRollAddr
	cmp	r1, #0	@ <variable>.ScdRollAddr,
	movne	r0, #0	@ D.36795,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L117	@
	.fnend
	.size	CheckScdStateReg, .-CheckScdStateReg
	.align	2
	.global	ScdParseUpMsgInfo
	.type	ScdParseUpMsgInfo, %function
ScdParseUpMsgInfo:
	.fnstart
.LFB1404:
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
	cmp	r1, #0	@ ParseUpMsgInfo
	mvneq	r5, #0	@ D.36807,
	beq	.L123	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #56]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.36813, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #56]	@ tmp146,
	mov	r5, #0	@ D.36807,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.36813,
	ldrb	r4, [r1, #56]	@ zero_extendqisi2	@,
	ldr	r3, [r3, r2, asl #2]	@ tmp150,* <variable>.pScdUpMsg
	mov	r3, r3, lsr #31	@ tmp149, tmp150,
	bfi	r4, r3, #1, #1	@ tmp151, tmp149,,
	strb	r4, [r1, #56]	@ tmp151,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r4	@ tmp163, tmp151
	ldr	r2, [r2, ip, asl #2]	@ tmp156,* <variable>.pScdUpMsg
	ubfx	r2, r2, #16, #1	@ tmp158, tmp156,,
	bfi	r3, r2, #2, #1	@ tmp163, tmp158,,
	strb	r3, [r1, #56]	@ tmp163,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r3	@ tmp174, tmp163
	ldr	r2, [r2, ip, asl #2]	@ tmp167,* <variable>.pScdUpMsg
	ubfx	r2, r2, #4, #3	@ tmp171, tmp167,,
	bfi	r3, r2, #3, #4	@ tmp174, tmp171,,
	strb	r3, [r1, #56]	@ tmp174,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldrh	r3, [r1, #56]	@,
	ldr	r0, [r2, ip, asl #2]	@ tmp177,* <variable>.pScdUpMsg
	and	r2, r0, #7	@ tmp181, tmp177,
	bfi	r3, r2, #7, #4	@ tmp184, tmp181,,
	strh	r3, [r1, #56]	@ movhi	@ tmp184,
.L123:
	mov	r0, r5	@, D.36807
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
.LFB1406:
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
	cmp	r0, #0	@ pSegPacket
	mvneq	r0, #0	@ D.36953,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L132	@,
.L130:
	mvn	r0, #6	@ D.36953,
	ldmfd	sp, {fp, sp, pc}	@
.L132:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L130	@,
	ldr	ip, [r0, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movle	r0, #0	@ D.36953,
	ldmlefd	sp, {fp, sp, pc}	@
	b	.L130	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1407:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r3	@ pSegPacket, pSegPacket
	mvn	r6, #0	@ tmp140,
	mvn	r7, #0	@,
	mov	r5, r2	@ pLastPts, pLastPts
	strd	r6, [r3, #24]	@ tmp140, pSegPacket,
	strd	r6, [r3, #40]	@ tmp140, pSegPacket,
	sub	r2, fp, #32	@,,
	strd	r6, [r3, #32]	@ tmp140, pSegPacket,
	sub	r3, fp, #36	@,,
	strd	r6, [r4, #48]	@ tmp140, pSegPacket,
	mov	ip, #0	@ tmp138,
	add	lr, r4, #24	@ tmp146, pSegPacket,
	str	ip, [fp, #-36]	@ tmp138, Offset
	str	lr, [sp, #0]	@ tmp146,
	add	lr, r4, #40	@ tmp147, pSegPacket,
	str	ip, [fp, #-32]	@ tmp138, Num
	str	lr, [sp, #4]	@ tmp147,
	add	lr, r4, #48	@ tmp148, pSegPacket,
	str	lr, [sp, #8]	@ tmp148,
	add	lr, r4, #32	@ tmp149, pSegPacket,
	str	lr, [sp, #12]	@ tmp149,
	bl	GetRawNumOffsert	@
	ldrd	r2, [r4, #24]	@ D.36976, pSegPacket,
	ldrd	r0, [r5]	@ tmp150,* pLastPts
	cmp	r1, r3	@ tmp150, D.36976
	cmpeq	r0, r2	@ tmp150, D.36976
	beq	.L137	@,
	strd	r2, [r5]	@ D.36976,* pLastPts
.L136:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L137:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L136	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	SM_GetExteriorState
	.type	SM_GetExteriorState, %function
SM_GetExteriorState:
	.fnstart
.LFB1410:
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
	.size	SM_GetExteriorState, .-SM_GetExteriorState
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1411:
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
	cmp	r0, #1	@ InstID,
	bls	.L144	@,
.L141:
	mov	r0, #0	@ D.37317,
	ldmfd	sp, {fp, sp, pc}	@
.L144:
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:145232	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:145232	@ tmp139,
	movw	ip, #:lower16:131392	@ tmp137,
	movt	ip, #:upper16:131392	@ tmp137,
	mla	r0, r1, r0, r2	@ tmp140, tmp139, InstID, tmp136
	ldr	r3, [r0, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	beq	.L141	@,
	ldr	r0, [r0, #124]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	r0, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.37317
	moveq	r0, #1	@, D.37317
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1412:
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
	cmp	r0, #1	@ InstID,
	bls	.L150	@,
.L146:
	mov	r0, #0	@ D.37332,
	ldmfd	sp, {fp, sp, pc}	@
.L150:
	cmp	r1, #0	@ Flag,
	blt	.L146	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	movw	ip, #:lower16:145232	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	movt	ip, #:upper16:145232	@ tmp140,
	movw	r3, #:lower16:131392	@ tmp138,
	movt	r3, #:upper16:131392	@ tmp138,
	mla	r0, ip, r0, r2	@ tmp141, tmp140, InstID, tmp137
	ldr	r3, [r0, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	strne	r1, [r0, #124]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	r3, [r0, #124]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, #1	@ D.37332,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1413:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ InstID,
	bls	.L156	@,
.L152:
	mov	r0, #0	@ D.37347,
.L154:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L156:
	sub	r1, fp, #36	@,,
	bl	SM_GetInfo	@
	ldrsb	r3, [fp, #-36]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L152	@,
	ldr	ip, [fp, #-24]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [fp, #-20]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.37347,
	blt	.L154	@,
	ldr	r0, [fp, #-28]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L152	@,
	ldr	lr, [fp, #-32]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.37347
	movle	r0, #1	@, D.37347
	b	.L154	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	SM_GetBasePhyVir
	.type	SM_GetBasePhyVir, %function
SM_GetBasePhyVir:
	.fnstart
.LFB1422:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movw	ip, #:lower16:145232	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:145232	@ tmp150,
	mla	r3, ip, r0, r3	@ tmp140, tmp150, SmID, tmp136
	ldr	r0, [r3, #100]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	str	r0, [r1, #0]	@ <variable>.Config.BufPhyAddr,* pBasePhyAddr
	ldr	r3, [r3, #88]	@ <variable>.Config.pBufVirAddr, <variable>.Config.pBufVirAddr
	str	r3, [r2, #0]	@ <variable>.Config.pBufVirAddr,* pBaseVirAddr
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_GetBasePhyVir, .-SM_GetBasePhyVir
	.align	2
	.global	SM_PhyToVir
	.type	SM_PhyToVir, %function
SM_PhyToVir:
	.fnstart
.LFB1423:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r1, #100]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	ldr	r3, [r1, #88]	@ <variable>.Config.pBufVirAddr, <variable>.Config.pBufVirAddr
	rsb	r0, r2, r0	@ tmp138, <variable>.Config.BufPhyAddr, PhyAddr
	add	r0, r0, r3	@, tmp138, <variable>.Config.pBufVirAddr
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_PhyToVir, .-SM_PhyToVir
	.align	2
	.global	SM_ScdPhyToVir
	.type	SM_ScdPhyToVir, %function
SM_ScdPhyToVir:
	.fnstart
.LFB1424:
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
	rsb	r0, r0, r2	@ tmp138, BasePhyAddr, PhyAddr
	add	r0, r1, r0	@, pBaseVirAddr, tmp138
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_ScdPhyToVir, .-SM_ScdPhyToVir
	.align	2
	.global	PrintScdInputRawAfterStart
	.type	PrintScdInputRawAfterStart, %function
PrintScdInputRawAfterStart:
	.fnstart
.LFB1428:
	@ args = 4, pretend = 0, frame = 0
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
	.size	PrintScdInputRawAfterStart, .-PrintScdInputRawAfterStart
	.align	2
	.global	PrintSmInfo
	.type	PrintSmInfo, %function
PrintSmInfo:
	.fnstart
.LFB1430:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r7, #:lower16:145232	@ tmp152,
	movt	r7, #:upper16:145232	@ tmp152,
	sub	r1, fp, #68	@ tmp139,,
	add	lr, r1, #4	@ tmp459, tmp139,
	mov	r9, #0	@ tmp140,
	mul	sl, r7, r0	@ tmp151, tmp152, tmp12
	str	r9, [lr], #4	@ tmp140, SmInstInfo
	str	r9, [lr], #4	@ tmp140, SmInstInfo
	movw	r5, #:lower16:.LANCHOR0	@,
	str	r9, [lr], #4	@ tmp140, SmInstInfo
	movt	r5, #:upper16:.LANCHOR0	@,
	str	r9, [lr], #4	@ tmp140, SmInstInfo
	str	r9, [lr, #0]	@ tmp140, SmInstInfo
	str	r5, [fp, #-72]	@, %sfp
	str	r9, [fp, #-68]	@ tmp140, SmInstInfo
	str	r7, [fp, #-96]	@,
	add	r7, sl, r5	@ tmp153, tmp151,
	str	r0, [fp, #-76]	@ SmID, %sfp
	bl	SM_GetInfo	@
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:131392	@ tmp150,
	movt	r3, #:upper16:131392	@ tmp150,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	ldr	r3, [r7, r3]	@, <variable>.Mode
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	add	r4, r7, #96	@ tmp170, tmp153,
	bl	dprint_vfmw	@
	ldrb	r3, [r7, #92]	@ zero_extendqisi2	@, <variable>.Config.Priority
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC3	@,
	add	r6, r7, #104	@ tmp194, tmp153,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #96]	@, <variable>.Config.VidStd
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC4	@,
	add	r8, r7, #131072	@ tmp210, tmp153,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #4]	@, <variable>.Config.BufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	movw	r4, #:lower16:131336	@ tmp206,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #88]	@, <variable>.Config.pBufVirAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC7	@,
	movt	r4, #:upper16:131336	@ tmp206,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #104]	@, <variable>.Config.BufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC8	@,
	add	r8, r8, #264	@ tmp210, tmp210,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #4]	@, <variable>.Config.RegPhyBaseAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC9	@,
	add	r5, r7, #131072	@ tmp250, tmp153,
	bl	dprint_vfmw	@
	ldr	r3, [r7, r4]	@, <variable>.SmPushRaw.PushRawNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC10	@,
	add	r4, r7, #72	@, tmp153,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #4]	@, <variable>.SmPushRaw.PushRawTotalLen
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC11	@,
	add	r5, r5, #296	@ tmp250, tmp250,
	bl	dprint_vfmw	@
	add	r0, r7, #131072	@ tmp226, tmp153,
	add	r2, r0, #272	@ tmp226, tmp226,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r2, #8]	@, <variable>.BufAddrCfg.DownMsgPhyAddr
	movw	r2, #:lower16:.LC12	@,
	movt	r2, #:upper16:.LC12	@,
	add	ip, r7, #64	@, tmp153,
	str	ip, [fp, #-88]	@, %sfp
	bl	dprint_vfmw	@
	add	r1, r7, #131072	@ tmp234, tmp153,
	mov	r0, #32	@,
	add	r3, r1, #280	@ tmp234, tmp234,
	movw	r2, #:lower16:.LC13	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC13	@,
	ldr	r3, [r3, #8]	@, <variable>.BufAddrCfg.DownMsgSize
	movt	r1, #:upper16:.LC1	@,
	str	r4, [fp, #-92]	@, %sfp
	bl	dprint_vfmw	@
	add	r0, r7, #131072	@ tmp242, tmp153,
	movw	r1, #:lower16:.LC5	@,
	add	r2, r0, #288	@ tmp242, tmp242,
	movt	r1, #:upper16:.LC5	@,
	mov	r0, #32	@,
	add	r6, r7, #131072	@ tmp266, tmp153,
	ldr	r3, [r2, #4]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	movw	r2, #:lower16:.LC14	@,
	movt	r2, #:upper16:.LC14	@,
	add	r8, r6, #304	@ tmp266, tmp266,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@, <variable>.BufAddrCfg.UpMsgNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC15	@,
	add	lr, r7, #57344	@, tmp153,
	str	lr, [fp, #-80]	@, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r0, #32	@,
	ldr	r3, [r5, #4]	@, <variable>.BufAddrCfg.UpMsgSize
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC16	@,
	add	r4, ip, #192	@,,
	str	r4, [fp, #-80]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [r8, #4]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC17	@,
	add	r5, r7, #57344	@, tmp153,
	str	r5, [fp, #-108]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [r8, #8]	@, <variable>.BufAddrCfg.SegBufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC18	@,
	str	r9, [fp, #-104]	@ tmp140, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-52]	@, SmInstInfo.TotalSegSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC19	@,
	movw	r8, #:lower16:1717986919	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, SmInstInfo.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC20	@,
	movt	r8, #:upper16:1717986919	@,
	bl	dprint_vfmw	@
	ldr	r6, [fp, #-108]	@, %sfp
	ldr	r3, [fp, #-56]	@, SmInstInfo.TotalRawSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC21	@,
	add	ip, r6, #184	@,,
	str	ip, [fp, #-108]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-64]	@, SmInstInfo.RawNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r4, [fp, #-76]	@, %sfp
	movw	r1, #9077	@ tmp287,
	str	r8, [fp, #-84]	@, %sfp
	ldr	r8, [fp, #-72]	@ tmp448, %sfp
	mov	r0, #32	@,
	mul	r9, r1, r4	@ tmp286, tmp287,
	movw	r2, #:lower16:.LC23	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC23	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r4, #:lower16:145224	@ tmp362,
	add	r3, r9, #1	@ tmp288, tmp286,
	movt	r4, #:upper16:145224	@ tmp362,
	movw	r9, #1023	@ tmp454,
	add	lr, r8, r3, asl #4	@, tmp291, tmp448, tmp288,
	add	r5, lr, #40	@ tmp292, tmp291,
	ldr	r3, [lr, #40]	@, <variable>.SegFilter.ProtocolType
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, <variable>.SegFilter.ModeFlag
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #64]	@, <variable>.SegFilter.LastH263Num
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r6, [fp, #-88]	@, %sfp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r6, #4]	@, <variable>.SegFilter.SegBufPhyAddr
	movt	r2, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #72]	@, <variable>.SegFilter.SegBufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-92]	@, %sfp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [ip, #4]	@, <variable>.SegFilter.SegBufRollAddr
	movt	r2, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #52]	@, <variable>.SegFilter.pScdUpMsg
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #80]	@, <variable>.SegFilter.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	add	r0, r7, #144384	@ tmp358, tmp153,
	add	r2, r0, #832	@ tmp358, tmp358,
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r2, #4]	@, <variable>.BlockTimeInMs
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, r4]	@, <variable>.LastBlockTime
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-96]	@,
	ldr	r5, [fp, #-76]	@, %sfp
	mov	r0, #32	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	mla	r6, r5, r1, r1	@ tmp372,, tmp152, tmp152
	ldr	r5, [fp, #-72]	@, %sfp
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldrd	r4, [r5, r6]	@,, tmp372
	movw	r6, #:lower16:290520	@ tmp382,
	movt	r6, #:upper16:290520	@ tmp382,
	strd	r4, [sp]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-72]	@, %sfp
	movw	r3, #:lower16:290516	@ tmp378,
	movt	r3, #:upper16:290516	@ tmp378,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC35	@,
	ldr	r3, [ip, r3]	@, s_SmIIS.ThisInstID
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC35	@,
	movw	r4, #57536	@,
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-72]	@, %sfp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [lr, r6]	@, s_SmIIS.SCDState
	movt	r2, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	movw	r2, #57536	@,
	ldr	ip, [r7, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	movw	r0, #57528	@ tmp387,
	ldr	r3, [r7, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC37	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC37	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	str	ip, [sp, #0]	@ <variable>.RawPacketArray.History,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-80]	@, %sfp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	ldr	r2, [r3, #4]	@, <variable>.RawPacketArray.FirstPacketOffset
	bl	dprint_vfmw	@
	ldr	r6, [r7, r4]	@ idx, <variable>.RawPacketArray.History
	ldr	r5, [fp, #-108]	@ tmp452, %sfp
	ldr	r4, [fp, #-104]	@ i, %sfp
	ldr	r7, [fp, #-84]	@ tmp455, %sfp
.L181:
	ldr	lr, [r5, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	lr, r6	@ <variable>.RawPacketArray.Tail, idx
	beq	.L167	@,
.L184:
	rsb	r2, r6, r6, asl #3	@, tmp436, idx, idx,
	mov	r0, #32	@,
	add	r6, r6, #1	@ idx, idx,
	movw	r1, #:lower16:.LC40	@,
	add	r3, sl, r2, asl #3	@, tmp440, tmp450, tmp436,
	movt	r1, #:upper16:.LC40	@,
	add	ip, r3, r8	@ tmp441, tmp440, tmp448
	add	r4, r4, #1	@ tmp457, i,
	ldr	r2, [ip, #192]	@, <variable>.Length
	bl	dprint_vfmw	@
	cmp	r6, r9	@ idx, tmp454
	subgt	r6, r6, #1024	@ idx, idx,
	cmp	r4, #1024	@ tmp457,
	beq	.L167	@,
	smull	ip, r2, r7, r4	@, tmp415, tmp455, tmp457
	mov	r3, r4, asr #31	@ tmp418, tmp457,
	rsb	r0, r3, r2, asr #2	@, tmp414, tmp418, tmp415,
	add	r1, r0, r0, asl #2	@, tmp421, tmp414, tmp414,
	cmp	r4, r1, asl #1	@ tmp457, tmp421,
	beq	.L182	@,
.L178:
	ldr	r1, [r5, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r1, r6	@ <variable>.RawPacketArray.Tail, idx
	beq	.L167	@,
	rsb	r3, r6, r6, asl #3	@, tmp472, idx, idx,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	add	lr, sl, r3, asl #3	@, tmp474, tmp450, tmp472,
	add	r6, r6, #1	@ idx, idx,
	add	ip, lr, r8	@ tmp475, tmp474, tmp448
	ldr	r2, [ip, #192]	@, <variable>.Length
	bl	dprint_vfmw	@
	add	ip, r4, #1	@ i, tmp457,
	cmp	r6, r9	@ idx, tmp454
	smull	lr, r2, r7, ip	@, tmp482, tmp455, i
	mov	r3, ip, asr #31	@ tmp484, i,
	subgt	r6, r6, #1024	@ idx, idx,
	rsb	lr, r3, r2, asr #2	@, tmp485, tmp484, tmp482,
	add	r0, lr, lr, asl #2	@, tmp487, tmp485, tmp485,
	cmp	ip, r0, asl #1	@ i, tmp487,
	beq	.L183	@,
.L179:
	ldr	r1, [r5, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r1, r6	@ <variable>.RawPacketArray.Tail, idx
	beq	.L167	@,
	rsb	r3, r6, r6, asl #3	@, tmp497, idx, idx,
	add	r4, r4, #2	@ i, tmp457,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC40	@,
	add	ip, sl, r3, asl #3	@, tmp499, tmp450, tmp497,
	movt	r1, #:upper16:.LC40	@,
	add	lr, ip, r8	@ tmp500, tmp499, tmp448
	add	r6, r6, #1	@ idx, idx,
	ldr	r2, [lr, #192]	@, <variable>.Length
	bl	dprint_vfmw	@
	smull	r3, r2, r7, r4	@, tmp505, tmp455, i
	mov	r3, r4, asr #31	@ tmp507, i,
	cmp	r6, r9	@ idx, tmp454
	subgt	r6, r6, #1024	@ idx, idx,
	rsb	ip, r3, r2, asr #2	@, tmp508, tmp507, tmp505,
	add	r0, ip, ip, asl #2	@, tmp510, tmp508, tmp508,
	cmp	r4, r0, asl #1	@ i, tmp510,
	bne	.L181	@,
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	ldr	lr, [r5, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	lr, r6	@ <variable>.RawPacketArray.Tail, idx
	bne	.L184	@,
.L167:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L182:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L178	@
.L183:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L179	@
	.fnend
	.size	PrintSmInfo, .-PrintSmInfo
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1427:
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
	movw	r1, #:lower16:.LC41	@,
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movt	r1, #:upper16:.LC41	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Scdover
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, <variable>.ScdInt
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, <variable>.ShortScdNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, <variable>.ScdNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, <variable>.ScdRollAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, <variable>.SrcEaten
	movw	r1, #:lower16:.LC47	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
.LFB1426:
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
	mov	r4, r0	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r7, r1	@ pDownMsgVirAddr, pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	mov	r8, r2	@ PushRawNum, PushRawNum
	bl	dprint_vfmw	@
	mov	r2, r7	@, pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, DownMsgPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ PushRawNum,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r2, #0	@,
	ldr	r3, [r7, #0]	@,* pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	sub	sl, r8, #1	@ tmp188, PushRawNum,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r2, #2	@,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	cmp	r8, #1	@ PushRawNum,
	and	sl, sl, #1	@ tmp190, tmp188,
	mov	r4, #3	@ j,
	mov	r6, #1	@ i,
	add	r5, r7, #12	@ ivtmp.1489, pDownMsgVirAddr,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	sl, #0	@ tmp190,
	beq	.L189	@,
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1489
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@,
	mov	r2, #4	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@,
	mov	r2, #5	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r7, #24	@ ivtmp.1489, pDownMsgVirAddr,
	mov	r4, #6	@ j,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L189:
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1489
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	add	sl, r4, #3	@ tmp193, j,
	bl	dprint_vfmw	@
	add	r2, r4, #1	@, j,
	ldr	r3, [r5, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #2	@, j,
	ldr	r3, [r5, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r7, r5, #12	@ tmp192, ivtmp.1489,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	add	r6, r6, #1	@ tmp191, i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #12]	@,
	mov	r2, sl	@, tmp193
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #4	@, j,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #5	@, j,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r6, r6, #1	@ i, tmp191,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	add	r4, r4, #6	@ j, j,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r5, #24	@ ivtmp.1489, ivtmp.1489,
	bgt	.L189	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r0, [r3, #4]	@ D.36007, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.36007,
	beq	.L198	@,
	blx	r0	@ D.36007
	movw	r0, #:lower16:.LANCHOR1	@ tmp136,
	movt	r0, #:upper16:.LANCHOR1	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #-4088]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
.L198:
	movw	r2, #1087	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR1	@ tmp136,
	movt	r0, #:upper16:.LANCHOR1	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #-4088]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
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
	subs	r5, r0, #0	@ pStreamSegArray, pStreamSegArray
	mov	r4, r1	@ StreamID, StreamID
	bne	.L229	@,
.L202:
	mvn	r0, #0	@ Ret,
.L216:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L229:
	sub	r2, r1, #1152	@ tmp148, StreamID,
	movw	r3, #:lower16:-1154	@ tmp150,
	movt	r3, #:upper16:-1154	@ tmp150,
	cmp	r2, r3	@ tmp148, tmp150
	bls	.L202	@,
	cmn	r1, #1	@ StreamID,
	beq	.L230	@,
	movw	ip, #:lower16:73736	@ tmp189,
	movw	r2, #:lower16:73740	@ tmp190,
	movt	ip, #:upper16:73736	@ tmp189,
	movt	r2, #:upper16:73740	@ tmp190,
	ldr	r3, [r5, ip]	@ i, <variable>.Head
	ldr	ip, [r5, r2]	@ temp.1563, <variable>.Tail
	cmp	ip, r3	@ temp.1563, i
	beq	.L204	@,
	cmp	r3, r1	@ i, StreamID
	movwne	r0, #:lower16:954437177	@ tmp270,
	movtne	r0, #:upper16:954437177	@ tmp270,
	bne	.L220	@,
	b	.L208	@
.L226:
	cmp	r3, r4	@ i, StreamID
	beq	.L208	@,
.L220:
	add	lr, r3, #1	@ D.35929, i,
	smull	r2, r1, r0, lr	@, tmp201, tmp270, D.35929
	mov	r2, lr, asr #31	@ tmp204, D.35929,
	rsb	r2, r2, r1, asr #8	@, i, tmp204, tmp201,
	add	r1, r2, r2, asl #3	@, tmp207, i, i,
	sub	r3, lr, r1, asl #7	@ i, D.35929, tmp207,
	cmp	ip, r3	@ temp.1563, i
	bne	.L226	@,
.L204:
	mov	r2, r4	@, StreamID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC56	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC56	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ Ret,
	b	.L216	@
.L208:
	add	r0, r5, r3, asl #6	@, tmp194, pStreamSegArray, i,
	add	sl, r0, #8	@ tmp195, tmp194,
	ldrsb	r3, [sl, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #2	@ <variable>.SegState,
	bne	.L204	@,
.L207:
	ldrb	ip, [sl, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	mov	lr, #0	@ tmp209,
	ldr	r3, [sl, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #26	@,
	ldr	r2, [sl, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC55	@,
	strb	lr, [sl, #4]	@ tmp209, <variable>.SegState
	movt	r1, #:upper16:.LC55	@,
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	str	r4, [sp, #4]	@ StreamID,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:73736	@ tmp215,
	movt	ip, #:upper16:73736	@ tmp215,
	ldr	r3, [r5, ip]	@ i.1567, <variable>.Head
	cmp	r3, r4	@ i.1567, StreamID
	beq	.L231	@,
.L211:
	movw	r3, #:lower16:73768	@ tmp248,
	movt	r3, #:upper16:73768	@ tmp248,
	ldr	ip, [sl, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r5, r3]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	r2, ip, r1	@ tmp252, <variable>.LenInByte, <variable>.SegTotalSize
	bic	ip, r2, r2, asr #31	@ tmp253, tmp252
	str	ip, [r5, r3]	@ tmp253, <variable>.SegTotalSize
	b	.L216	@
.L230:
	movw	ip, #:lower16:73736	@ tmp151,
	movw	r1, #:lower16:73740	@ tmp152,
	movt	ip, #:upper16:73736	@ tmp151,
	movt	r1, #:upper16:73740	@ tmp152,
	ldr	r2, [r5, ip]	@ D.35899, <variable>.Head
	ldr	r0, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r0	@ D.35899, <variable>.Tail
	beq	.L204	@,
	mov	r4, r2	@ StreamID, D.35899
	mov	r0, #0	@,
	add	r8, r5, r4, asl #6	@, tmp158, pStreamSegArray, StreamID,
	movw	r1, #:lower16:.LC53	@,
	add	r8, r8, #16	@ tmp159, tmp158,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r2, #0	@ <variable>.LenInByte,
	movle	sl, r4, asl #3	@ tmp259, StreamID,
	ble	.L205	@,
	mov	sl, r4, asl #3	@ tmp259, StreamID,
	add	r8, r8, #4	@ tmp269, tmp159,
	add	r7, sl, #1	@ tmp263, tmp259,
	mov	r6, #0	@ i.1565,
.L206:
	ldr	lr, [r5, r7, asl #3]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	ldrb	r2, [lr, r6]	@ zero_extendqisi2	@,* i.1565
	add	r6, r6, #1	@ i.1565, i.1565,
	bl	dprint_vfmw	@
	ldr	r1, [r8, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #15	@ i.1565,
	movgt	r0, #0	@,
	movle	r0, #1	@,
	cmp	r1, r6	@ <variable>.LenInByte, i.1565
	movle	r0, #0	@,,
	cmp	r0, #0	@ tmp184,
	bne	.L206	@,
.L205:
	add	sl, sl, #1	@ tmp186, tmp259,
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC39	@,
	add	sl, r5, sl, asl #3	@, pSeg, pStreamSegArray, tmp186,
	bl	dprint_vfmw	@
	b	.L207	@
.L231:
	movw	r2, #:lower16:73740	@ tmp216,
	movt	r2, #:upper16:73740	@ tmp216,
	ldr	r0, [r5, r2]	@ temp.1574, <variable>.Tail
	cmp	r4, r0	@ StreamID, temp.1574
	beq	.L212	@,
	add	r4, r5, r4, asl #6	@, tmp220, pStreamSegArray, StreamID,
	ldrsb	r1, [r4, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r1, #0	@ <variable>.SegState,
	movweq	ip, #:lower16:954437177	@ tmp262,
	movteq	ip, #:upper16:954437177	@ tmp262,
	beq	.L219	@,
	b	.L213	@
.L228:
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #0	@ <variable>.SegState,
	bne	.L213	@,
.L219:
	add	r3, r3, #1	@ temp.1569, i.1567,
	smull	r2, r1, ip, r3	@, tmp240, tmp262, temp.1569
	mov	r2, r3, asr #31	@ tmp243, temp.1569,
	rsb	r2, r2, r1, asr #8	@, i.1567, tmp243, tmp240,
	add	r2, r2, r2, asl #3	@, tmp246, i.1567, i.1567,
	sub	r3, r3, r2, asl #7	@ i.1567, temp.1569, tmp246,
	cmp	r3, r0	@ i.1567, temp.1574
	add	r2, r5, r3, asl #6	@, tmp231, pStreamSegArray, i.1567,
	bne	.L228	@,
.L212:
	movw	r1, #:lower16:73764	@ tmp226,
	movt	r1, #:upper16:73764	@ tmp226,
	movw	r2, #:lower16:73736	@ tmp224,
	movw	r3, #:lower16:73760	@ tmp225,
	ldr	ip, [r5, r1]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:73736	@ tmp224,
	movt	r3, #:upper16:73760	@ tmp225,
	str	r0, [r5, r2]	@ temp.1574, <variable>.Head
	str	ip, [r5, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L211	@
.L213:
	add	r0, r5, r3, asl #6	@, tmp238, pStreamSegArray, i.1567,
	movw	r1, #:lower16:73736	@ tmp235,
	movt	r1, #:upper16:73736	@ tmp235,
	movw	ip, #:lower16:73760	@ tmp236,
	movt	ip, #:upper16:73760	@ tmp236,
	str	r3, [r5, r1]	@ i.1567, <variable>.Head
	ldr	r3, [r0, #16]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, ip]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L211	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
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
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	mov	sl, r1	@ DelNum, DelNum
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r3, #0	@, tmp152
	moveq	r3, #1	@, tmp152
	beq	.L253	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp205,
	movt	r1, #:upper16:.LANCHOR0	@ tmp205,
	add	r2, r1, #184	@ tmp154, tmp205,
	cmp	r0, r2	@ pRawStreamArray, tmp154
	moveq	r6, r3	@ prephitmp.1591, tmp152
	beq	.L236	@,
	ldr	r3, .L255	@ tmp156,
	cmp	r0, r3	@ pRawStreamArray, tmp156
	moveq	r6, #1	@, prephitmp.1591,
	mvnne	r6, #0	@, prephitmp.1591,
.L236:
	mov	lr, #57344	@ tmp158,
	movw	ip, #57348	@ tmp159,
	ldr	r0, [r4, ip]	@ D.35526, <variable>.Tail
	ldr	r5, [r4, lr]	@ D.35525, <variable>.Head
	cmp	r5, r0	@ D.35525, D.35526
	addgt	r0, r0, #1024	@ tmp160, D.35526,
	rsb	r2, r5, r0	@ PacketNum, D.35525, tmp160
	cmp	r2, sl	@ PacketNum, DelNum
	bcc	.L254	@,
	movw	r0, #:lower16:145232	@ tmp208,
	movt	r0, #:upper16:145232	@ tmp208,
	rsb	r3, r5, r5, asl #3	@, tmp164, D.35525, D.35525,
	sub	lr, sl, #1	@ tmp212, DelNum,
	mla	r8, r0, r6, r1	@ tmp210, tmp208, prephitmp.1591, tmp205
	add	r7, r3, #1	@ tmp171, tmp164,
	ldr	r2, [r4, r3, asl #3]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	ldr	r3, [r4, r7, asl #3]	@, <variable>.Length
	movw	r1, #:lower16:.LC58	@,
	add	r6, r8, #57344	@ tmp211, tmp210,
	movt	r1, #:upper16:.LC58	@,
	add	r6, r6, #200	@ tmp211, tmp211,
	and	r8, lr, #1	@ tmp214, tmp212,
	bl	dprint_vfmw	@
	add	ip, r5, #1	@ D.35544, D.35525,
	ldr	r0, [r4, r7, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	sl, #1	@ DelNum,
	ldr	r2, [r6, #4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r5, ip, asl #22	@ j, D.35544,
	mov	r7, #1	@ i,
	rsb	r3, r0, r2	@ tmp191, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	mov	r5, r5, lsr #22	@ j, j,
	bic	r1, r3, r3, asr #31	@ tmp192, tmp191
	str	r1, [r6, #4]	@ tmp192, <variable>.RawPacketArray.RawTotalSize
	bls	.L250	@,
	cmp	r8, #0	@ tmp214,
	beq	.L241	@,
	rsb	r7, r5, r5, asl #3	@, tmp255, j, j,
	movw	r1, #:lower16:.LC58	@,
	add	r8, r7, #1	@ tmp259, tmp255,
	mov	r0, #26	@,
	ldr	r2, [r4, r7, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC58	@,
	ldr	r3, [r4, r8, asl #3]	@, <variable>.Length
	mov	r7, #2	@ i,
	b	.L252	@
.L241:
	rsb	lr, r5, r5, asl #3	@, tmp219, j, j,
	mov	r0, #26	@,
	add	r8, lr, #1	@ tmp223, tmp219,
	movw	r1, #:lower16:.LC58	@,
	ldr	r2, [r4, lr, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC58	@,
	ldr	r3, [r4, r8, asl #3]	@, <variable>.Length
	add	r7, r7, #1	@ tmp215, i,
	bl	dprint_vfmw	@
	add	r1, r5, #1	@ D.35544, j,
	ldr	r3, [r4, r8, asl #3]	@ <variable>.Length, <variable>.Length
	add	r7, r7, #1	@ i, tmp215,
	mov	r5, r1, asl #22	@ j, D.35544,
	ldr	ip, [r6, #4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	mov	r5, r5, lsr #22	@ j, j,
	rsb	r8, r3, ip	@ tmp231, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	bic	r2, r8, r8, asr #31	@ tmp232, tmp231
	str	r2, [r6, #4]	@ tmp232, <variable>.RawPacketArray.RawTotalSize
	rsb	ip, r5, r5, asl #3	@, tmp238, j, j,
	mov	r0, #26	@,
	add	r8, ip, #1	@ tmp242, tmp238,
	ldr	r2, [r4, ip, asl #3]	@, <variable>.PhyAddr
	ldr	r3, [r4, r8, asl #3]	@, <variable>.Length
.L252:
	bl	dprint_vfmw	@
	add	ip, r5, #1	@ D.35544, j,
	ldr	r0, [r4, r8, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	sl, r7	@ DelNum, i
	ldr	r2, [r6, #4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r5, ip, asl #22	@ j, D.35544,
	rsb	r3, r0, r2	@ tmp267, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	mov	r5, r5, lsr #22	@ j, j,
	bic	r1, r3, r3, asr #31	@ tmp268, tmp267
	str	r1, [r6, #4]	@ tmp268, <variable>.RawPacketArray.RawTotalSize
	bhi	.L241	@,
.L250:
	mov	r0, #57344	@ tmp194,
	mov	r3, #0	@ tmp202,
	ldr	ip, [r4, r0]	@ <variable>.Head, <variable>.Head
	movw	r2, #57356	@ tmp201,
	str	r3, [r4, r2]	@ tmp202, <variable>.FirstPacketOffset
	add	sl, sl, ip	@ D.35547, DelNum, <variable>.Head
	str	sl, [r4, r0]	@ D.35547, <variable>.Head
	cmp	sl, #1024	@ D.35547,
	subge	sl, sl, #1024	@ tmp200, D.35547,
	strge	sl, [r4, r0]	@ tmp200, <variable>.Head
	mov	r0, r3	@ D.35519, tmp202
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L254:
	movw	r1, #:lower16:.LC57	@,
	mov	r3, sl	@, DelNum
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
.L253:
	mvn	r0, #0	@ D.35519,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L256:
	.align	2
.L255:
	.word	.LANCHOR0+145416
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1364:
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
	cmp	r0, #1	@ SmID,
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	movw	r2, #:lower16:145232	@ tmp138,
	movt	r2, #:upper16:145232	@ tmp138,
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mul	r0, r2, r0	@ tmp137, tmp138, SmID
	movw	r4, #:lower16:131336	@ tmp136,
	movt	r4, #:upper16:131336	@ tmp136,
	add	r5, r0, r3	@ tmp139, tmp137, tmp135
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r0, #184	@ tmp144, tmp137,
	add	r0, r3, r0	@, tmp135, tmp144
	bl	DeleteRawPacket	@
	mov	r3, #0	@ tmp152,
	str	r3, [r5, r4]	@ tmp152, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1363:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	rsbs	r5, r0, #1	@ tmp144, pRawStreamArray
	movcc	r5, #0	@ tmp144
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	orrs	r5, r5, r1, lsr #31	@, tmp148, tmp144, DelLen,
	bne	.L261	@,
	movw	r2, #57364	@ tmp151,
	movw	r6, #57356	@ tmp152,
	str	r5, [fp, #-32]	@ tmp148, DelNum
	str	r5, [fp, #-36]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r6]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L261	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L270	@,
.L261:
	mvn	r0, #0	@ Ret,
.L264:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L270:
	sub	r3, fp, #36	@,,
	sub	r2, fp, #32	@,,
	sub	ip, fp, #44	@ tmp157,,
	sub	lr, fp, #52	@ tmp158,,
	str	ip, [sp, #0]	@ tmp157,
	sub	ip, fp, #60	@ tmp159,,
	str	lr, [sp, #4]	@ tmp158,
	sub	lr, fp, #68	@ tmp160,,
	str	ip, [sp, #8]	@ tmp159,
	str	lr, [sp, #12]	@ tmp160,
	bl	GetRawNumOffsert	@
	ldr	r1, [fp, #-32]	@, DelNum
	mov	r0, r4	@, pRawStreamArray
	bl	DeleteRawPacket	@
	movw	r1, #57348	@ tmp163,
	mov	r3, #57344	@ tmp162,
	ldr	ip, [r4, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r3, [r4, r3]	@ D.38435, <variable>.Head
	ldr	r1, [fp, #-36]	@ RawPacketOffSet.439, RawPacketOffSet
	cmp	r3, ip	@ D.38435, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L264	@,
	rsb	ip, r3, r3, asl #3	@, tmp169, D.38435, D.38435,
	ldr	lr, [r4, r6]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	r3, ip, #1	@ tmp170, tmp169,
	add	r1, r1, lr	@ TargetOffset, RawPacketOffSet.439, <variable>.FirstPacketOffset
	ldr	r2, [r4, r3, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r4, r6]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r5	@ Ret, tmp148
	blt	.L264	@,
	b	.L261	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
.LFB1432:
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
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #26	@ eCapLevel,
	bhi	.L278	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L279	@,
	sub	r0, r0, #13	@ D.38439, eCapLevel,
	cmp	r0, #10	@ D.38439,
	bls	.L280	@,
.L276:
	mov	r0, #2097152	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L280:
	movw	r1, #:lower16:.LANCHOR2	@ tmp151,
	movt	r1, #:upper16:.LANCHOR2	@ tmp151,
	add	r0, r1, r0, asl #2	@, tmp154, tmp151, D.38439,
	ldr	r0, [r0, #20]	@ MaxSegSize, CSWTCH.642
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L279:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L281	@,
	mul	r5, r5, r0	@ tmp149, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp150,
	movt	r3, #:upper16:2088960	@ tmp150,
	cmp	r5, r3	@ tmp149, tmp150
	movgt	r0, #6291456	@ MaxSegSize,
	ldmgtfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L276	@
.L278:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L281:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	PrintScdSegState
	.type	PrintScdSegState, %function
PrintScdSegState:
	.fnstart
.LFB1431:
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
	mov	r9, r0	@ SmID, SmID
	mov	r0, #26	@,
	str	r1, [fp, #-48]	@ PrintDetail, %sfp
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	bne	.L293	@,
.L286:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L293:
	movw	sl, #:lower16:.LANCHOR0	@ tmp298,
	movw	r4, #:lower16:145232	@ tmp209,
	movt	sl, #:upper16:.LANCHOR0	@ tmp298,
	movt	r4, #:upper16:145232	@ tmp209,
	movw	r6, #:lower16:131288	@ tmp207,
	movt	r6, #:upper16:131288	@ tmp207,
	mla	r4, r4, r9, sl	@ tmp210, tmp209, SmID, tmp298
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	add	r5, r4, #131072	@ tmp211, tmp210,
	add	r7, r4, #131072	@ tmp259, tmp210,
	add	r7, r7, #240	@ tmp259, tmp259,
	mov	r8, r5	@ tmp235, tmp211
	add	r5, r5, #216	@ tmp211, tmp211,
	ldr	r2, [r4, r6]	@, <variable>.StreamSegArray.Head
	add	r8, r8, #232	@ tmp235, tmp235,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@, <variable>.StreamSegArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	add	r1, r4, #131072	@ tmp227, tmp210,
	add	ip, r1, #224	@ tmp227, tmp227,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	ldr	r2, [ip, #4]	@, <variable>.StreamSegArray.Current
	bl	dprint_vfmw	@
	movw	r3, #:lower16:131304	@ tmp231,
	movt	r3, #:upper16:131304	@ tmp231,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufPhyAddr
	bl	dprint_vfmw	@
	movw	r0, #57552	@ tmp239,
	ldr	r2, [r4, r0]	@, <variable>.StreamSegArray.pSegBufVirAddr
	movw	r1, #:lower16:.LC65	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #4]	@, <variable>.StreamSegArray.SegBufSize
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:131312	@ tmp255,
	movt	ip, #:upper16:131312	@ tmp255,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.SegBufReadAddr
	bl	dprint_vfmw	@
	ldr	r2, [r7, #4]	@, <variable>.StreamSegArray.SegBufWriteAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, #1	@,
	bne	.L286	@,
	ldr	r3, [r4, r6]	@ SegIndex, <variable>.StreamSegArray.Head
	ldr	r2, [r5, #4]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r7, r2, r3	@ SegNum, <variable>.StreamSegArray.Tail, SegIndex
	addmi	r7, r7, #1152	@ SegNum, SegNum,
	cmp	r7, #0	@ SegNum,
	ble	.L286	@,
	movw	r1, #:lower16:145232	@ tmp287,
	movt	r1, #:upper16:145232	@ tmp287,
	add	r0, r3, #896	@ tmp283, SegIndex,
	sub	ip, r7, #1	@ tmp307, SegNum,
	mul	r9, r1, r9	@ tmp286, tmp287, SmID
	add	r6, r0, #3	@ tmp283, tmp283,
	movw	r1, #:lower16:.LC69	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC69	@,
	and	r5, ip, #1	@ tmp309, tmp307,
	add	r3, r9, r6, asl #6	@, tmp288, tmp286, tmp283,
	mov	r6, #1	@ i,
	add	lr, r3, #40	@ tmp289, tmp288,
	add	sl, sl, lr	@ ivtmp.1715, tmp298, tmp289
	add	r4, sl, #64	@ ivtmp.1715, ivtmp.1715,
	ldr	r2, [sl, #-8]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	ldr	r2, [sl, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r2, [sl, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	ldr	r2, [sl, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [sl, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldrb	r2, [sl, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	ldrd	r2, [sl, #8]	@, ivtmp.1715,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ SegNum,
	ble	.L286	@,
	cmp	r5, #0	@ tmp309,
	beq	.L285	@,
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1715,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	add	r4, r4, #64	@ ivtmp.1715, ivtmp.1715,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ SegNum, i
	ble	.L286	@,
.L285:
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	add	r5, r4, #64	@ tmp311, ivtmp.1715,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	add	r6, r6, #1	@ tmp310, i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	add	r6, r6, #1	@ i, tmp310,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1715,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #64]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	add	r4, r5, #64	@ ivtmp.1715, tmp311,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	ldrd	r2, [r5, #8]	@, tmp311,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ SegNum, i
	bgt	.L285	@,
	b	.L286	@
	.fnend
	.size	PrintScdSegState, .-PrintScdSegState
	.align	2
	.global	PrintScdRawState
	.type	PrintScdRawState, %function
PrintScdRawState:
	.fnstart
.LFB1429:
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
	mov	sl, r0	@ SmID, SmID
	mov	r0, #26	@,
	mov	r7, r1	@ PrintDetail, PrintDetail
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r8, #:lower16:.LANCHOR0	@ tmp214,
	movw	r4, #:lower16:145232	@ tmp152,
	movt	r8, #:upper16:.LANCHOR0	@ tmp214,
	movt	r4, #:upper16:145232	@ tmp152,
	movw	r9, #57528	@ tmp150,
	mov	r0, #26	@,
	mla	r4, r4, sl, r8	@ tmp153, tmp152, SmID, tmp214
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	add	r5, r4, #57344	@ tmp154, tmp153,
	mov	r6, r5	@ tmp170, tmp154
	add	r5, r5, #184	@ tmp154, tmp154,
	ldr	r2, [r4, r9]	@, <variable>.RawPacketArray.Head
	add	r6, r6, #192	@ tmp170, tmp170,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@, <variable>.RawPacketArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	movw	r0, #57536	@ tmp166,
	ldr	r2, [r4, r0]	@, <variable>.RawPacketArray.History
	movw	r1, #:lower16:.LC78	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #4]	@, <variable>.RawPacketArray.FirstPacketOffset
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	movw	r3, #57544	@ tmp182,
	ldr	r2, [r4, r3]	@, <variable>.RawPacketArray.CurShowIndex
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	cmp	r7, #1	@ PrintDetail,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	ldr	r3, [r4, r9]	@ RawIndex, <variable>.RawPacketArray.Head
	ldr	r7, [r5, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	subs	r7, r7, r3	@ RawNum, <variable>.RawPacketArray.Tail, RawIndex
	addmi	r7, r7, #1024	@ RawNum, RawNum,
	cmp	r7, #0	@ RawNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r1, #:lower16:145232	@ tmp207,
	movt	r1, #:upper16:145232	@ tmp207,
	rsb	lr, r3, r3, asl #3	@, tmp204, RawIndex, RawIndex,
	mov	r0, #26	@,
	mul	sl, r1, sl	@ tmp206, tmp207, SmID
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	sub	r6, r7, #1	@ tmp221, RawNum,
	and	r5, r6, #1	@ tmp223, tmp221,
	mov	r6, #1	@ i,
	add	ip, sl, lr, asl #3	@, tmp208, tmp206, tmp204,
	add	r2, ip, #192	@ tmp209, tmp208,
	add	r8, r8, r2	@ ivtmp.1758, tmp214, tmp209
	add	r4, r8, #56	@ ivtmp.1758, ivtmp.1758,
	ldr	r2, [r8, #-8]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	ldr	r2, [r8, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	ldrd	r2, [r8, #8]	@, ivtmp.1758,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ RawNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	cmp	r5, #0	@ tmp223,
	beq	.L297	@,
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1758,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	add	r4, r8, #112	@ ivtmp.1758, ivtmp.1758,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ RawNum, i
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L297:
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	add	r5, r4, #56	@ tmp225, ivtmp.1758,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	add	r6, r6, #1	@ tmp224, i,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1758,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	add	r6, r6, #1	@ i, tmp224,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #56]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	add	r4, r4, #112	@ ivtmp.1758, ivtmp.1758,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #8]	@, tmp225,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	cmp	r7, r6	@ RawNum, i
	bgt	.L297	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	PrintScdRawState, .-PrintScdRawState
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1425:
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
	movw	r0, #:lower16:-104726524	@ tmp141,
	movt	r0, #:upper16:-104726524	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.38033,
	movw	r0, #:lower16:-104726520	@ tmp142,
	movt	r0, #:upper16:-104726520	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.38034,
	movw	r0, #:lower16:-104726516	@ tmp143,
	movt	r0, #:upper16:-104726516	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.38035,
	movw	r0, #:lower16:-104726512	@ tmp144,
	movt	r0, #:upper16:-104726512	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.38036,
	movw	r0, #:lower16:-104726508	@ tmp145,
	movt	r0, #:upper16:-104726508	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.38037,
	movw	r0, #:lower16:-104726504	@ tmp146,
	movt	r0, #:upper16:-104726504	@,
	bl	MEM_ReadPhyWord	@
	mov	r4, r0	@ D.38038,
	movw	r0, #:lower16:-104726496	@ tmp147,
	movt	r0, #:upper16:-104726496	@,
	bl	MEM_ReadPhyWord	@
	mov	sl, r0	@ D.38039,
	movw	r0, #:lower16:-104726528	@,
	movt	r0, #:upper16:-104726528	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	mov	r2, r0	@ D.38040,
	mov	r0, #24	@,
	str	r2, [fp, #-48]	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.38033
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.38034
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.38035
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.38036
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.38037
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.38038
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D.38039
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-48]	@,
	movw	r1, #:lower16:.LC93	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC93	@,
	sxtb	r2, r3	@, D.38040
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	ReadScdStateReg
	.type	ReadScdStateReg, %function
ReadScdStateReg:
	.fnstart
.LFB1402:
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
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #:lower16:-104726464	@ tmp140,
	movt	r0, #:upper16:-104726464	@,
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:-104726452	@ tmp153,
	movt	r5, #:upper16:-104726452	@ tmp153,
	and	ip, r0, #1	@ tmp141,,
	movw	r0, #:lower16:-104726460	@ tmp142,
	str	ip, [r4, #0]	@ tmp141, <variable>.Scdover
	movt	r0, #:upper16:-104726460	@,
	bl	MEM_ReadPhyWord	@
	and	r2, r0, #1	@ tmp143,,
	mov	r0, r5	@, tmp153
	str	r2, [r4, #4]	@ tmp143, <variable>.ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r0, r0, lsr #22	@ tmp145,,
	str	r0, [r4, #8]	@ tmp145, <variable>.ShortScdNum
	mov	r0, r5	@, tmp153
	bl	MEM_ReadPhyWord	@
	bic	r1, r0, #-16777216	@ tmp148,,
	movw	r0, #:lower16:-104726448	@ tmp149,
	bic	r3, r1, #12582912	@ tmp148, tmp148,
	movt	r0, #:upper16:-104726448	@,
	str	r3, [r4, #12]	@ tmp148, <variable>.ScdNum
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, <variable>.ScdRollAddr
	movw	r0, #:lower16:-104726444	@ tmp150,
	movt	r0, #:upper16:-104726444	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, <variable>.SrcEaten
	mov	r0, r4	@, pSmStateReg
	bl	PrintScdStateReg	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
.LFB1408:
	@ args = 0, pretend = 0, frame = 40
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
	mov	r4, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:-104726496	@,
	movt	r0, #:upper16:-104726496	@,
	mov	sl, r3	@ Seg_num, Seg_num
	mov	r8, r1	@ pUsedSeg, pUsedSeg
	mov	r5, r2	@ pStreamSegArray, pStreamSegArray
	mov	r6, #0	@ tmp156,
	str	r6, [fp, #-48]	@ tmp156, SegNum
	bl	MEM_ReadPhyWord	@
	sub	r0, fp, #72	@,,
	bl	ReadScdStateReg	@
	ldr	r3, [fp, #-72]	@ SmStateReg.Scdover, SmStateReg.Scdover
	cmp	r3, r6	@ SmStateReg.Scdover,
	beq	.L310	@,
	ldr	r1, [fp, #-56]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r1, r6	@ SmStateReg.ScdRollAddr,
	movne	r0, r6	@ Ret, tmp156
	beq	.L310	@,
.L311:
	cmp	r5, #0	@ pStreamSegArray,
	ldreq	r7, [fp, #-48]	@ prephitmp.1841, SegNum
	beq	.L313	@,
	movw	lr, #:lower16:73740	@ tmp161,
	movw	ip, #:lower16:73736	@ tmp162,
	movt	lr, #:upper16:73740	@ tmp161,
	movt	ip, #:upper16:73736	@ tmp162,
	ldr	r7, [r5, lr]	@ <variable>.Tail, <variable>.Tail
	ldr	r2, [r5, ip]	@ <variable>.Head, <variable>.Head
	subs	r7, r7, r2	@ prephitmp.1841, <variable>.Tail, <variable>.Head
	addmi	r7, r7, #1152	@ prephitmp.1841, prephitmp.1841,
.L313:
	cmp	r0, #0	@ Ret,
	rsb	r7, r7, #1152	@ SegNum.535, prephitmp.1841,
	str	r7, [fp, #-48]	@ SegNum.535, SegNum
	bne	.L314	@,
	subs	r2, sl, #1	@ i, Seg_num,
	movmi	r0, sl	@ Ret, Seg_num
	bmi	.L314	@,
	movw	r6, #:lower16:145228	@ tmp167,
	movt	r6, #:upper16:145228	@ tmp167,
	ldr	r9, [r4, #20]	@ pretmp.1849, <variable>.SegFilter.ModeFlag
	movw	r3, #:lower16:73752	@ tmp168,
	ldr	ip, [r4, r6]	@ pretmp.1842, <variable>.UpMsgStepNum
	movt	r3, #:upper16:73752	@ tmp168,
	cmp	r9, #1	@ pretmp.1849,
	movne	r4, #0	@, pretmp.1850
	moveq	r4, #1	@, pretmp.1850
	tst	r2, #1	@ i,
	ldr	r6, [r5, r3]	@ pretmp.1848, <variable>.SegBufPhyAddr
	movw	r1, #:lower16:-1241448448	@ tmp183,
	mov	sl, ip, asl #2	@ pretmp.1870, pretmp.1842,
	movt	r1, #:upper16:-1241448448	@ tmp183,
	ldr	r5, [r5, #0]	@ pretmp.1844, <variable>.pSegBufVirAddr
	rsb	ip, sl, #0	@ D.39858, pretmp.1870
	mla	r3, sl, r2, r8	@ ivtmp.1866, pretmp.1870, i, pUsedSeg
	beq	.L334	@,
	ldr	sl, [r3, #0]	@ tmp196,* ivtmp.1866
	rsb	lr, r6, sl	@ tmp197, pretmp.1848, tmp196
	ldr	sl, [r5, lr]	@ start_code,
	cmp	sl, r1	@ start_code, tmp183
	movne	r8, #0	@, tmp203
	andeq	r8, r4, #1	@,, tmp203, pretmp.1850
	cmp	r8, #0	@ tmp203,
	bne	.L321	@,
	cmp	r9, #2	@ pretmp.1849,
	beq	.L335	@,
.L322:
	subs	r8, r2, #1	@ i.1869, i,
	add	r3, r3, ip	@ ivtmp.1866, ivtmp.1866, D.39858
	movpl	r2, r8	@ i, i.1869
	movpl	sl, r7	@ SegNum.535, SegNum.535
	bmi	.L318	@,
.L319:
	ldr	r7, [r3, #0]	@ tmp173,* ivtmp.1866
	rsb	r8, r6, r7	@ tmp172, pretmp.1848, tmp173
	ldr	r7, [r5, r8]	@ start_code,
	cmp	r7, r1	@ start_code, tmp183
	movne	r8, #0	@, tmp179
	andeq	r8, r4, #1	@,, tmp179, pretmp.1850
	cmp	r8, #0	@ tmp179,
	bne	.L316	@,
.L338:
	cmp	r9, #2	@ pretmp.1849,
	beq	.L336	@,
.L317:
	subs	r7, r2, #1	@ i.1869, i,
	add	r8, r3, ip	@, ivtmp.1866, D.39858
	str	r8, [fp, #-80]	@, %sfp
	bmi	.L318	@,
	ldr	r8, [r3, ip]	@ tmp188,* D.39858
	mov	r2, r7	@ i, i.1869
	rsb	r3, r6, r8	@ tmp189, pretmp.1848, tmp188
	ldr	r8, [r5, r3]	@ start_code,
	cmp	r8, r1	@ start_code, tmp183
	movne	lr, #0	@, tmp195
	andeq	lr, r4, #1	@,, tmp195, pretmp.1850
	cmp	lr, #0	@ tmp195,
	beq	.L337	@,
.L324:
	add	r0, r0, #1	@ count, count,
	cmp	r0, #0	@ count,
	ble	.L325	@,
	cmp	sl, r7	@ SegNum.535, i.1869
	bcs	.L318	@,
.L325:
	ldr	r2, [fp, #-80]	@, %sfp
	add	r3, r2, ip	@ ivtmp.1866,, D.39858
	sub	r2, r7, #1	@ i, i.1869,
	ldr	r7, [r3, #0]	@ tmp173,* ivtmp.1866
	rsb	r8, r6, r7	@ tmp172, pretmp.1848, tmp173
	ldr	r7, [r5, r8]	@ start_code,
	cmp	r7, r1	@ start_code, tmp183
	movne	r8, #0	@, tmp179
	andeq	r8, r4, #1	@,, tmp179, pretmp.1850
	cmp	r8, #0	@ tmp179,
	beq	.L338	@,
.L316:
	add	r0, r0, #1	@ count, count,
	cmp	r0, #0	@ count,
	ble	.L317	@,
	cmp	sl, r2	@ SegNum.535, i
	bcc	.L317	@,
.L318:
	mov	r0, r2	@ Ret, i
.L314:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L310:
	mvn	r0, #6	@ Ret,
	b	.L311	@
.L335:
	ubfx	sl, sl, #16, #8	@ D.37028, start_code,,
	cmp	sl, #127	@ D.37028,
	bls	.L322	@,
	cmp	sl, #131	@ D.37028,
	bhi	.L322	@,
.L321:
	cmp	r7, r2	@ SegNum.535, i
	mov	r0, #1	@ count,
	bcc	.L322	@,
	mov	r0, r2	@ Ret, i
	b	.L314	@
.L334:
	mov	sl, r7	@ SegNum.535, SegNum.535
	b	.L319	@
.L337:
	cmp	r9, #2	@ pretmp.1849,
	bne	.L325	@,
	ubfx	r8, r8, #16, #8	@ D.37028, start_code,,
	cmp	r8, #127	@ D.37028,
	bls	.L325	@,
	cmp	r8, #131	@ D.37028,
	bls	.L324	@,
	b	.L325	@
.L336:
	ubfx	r7, r7, #16, #8	@ D.37028, start_code,,
	cmp	r7, #127	@ D.37028,
	bls	.L317	@,
	cmp	r7, #131	@ D.37028,
	bhi	.L317	@,
	b	.L316	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	WaitSCDFinish
	.type	WaitSCDFinish, %function
WaitSCDFinish:
	.fnstart
.LFB1421:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movw	r0, #:lower16:290520	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	movt	r0, #:upper16:290520	@ tmp141,
	ldr	r3, [r2, r0]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L356	@,
.L340:
	mov	r0, #0	@ D.37994,
.L344:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L356:
	bl	OSAL_GetTimeInMs	@
	movw	r6, #:lower16:500000	@ tmp151,
	mov	r5, #0	@ i,
	movt	r6, #:upper16:500000	@ tmp151,
	mov	r4, r0	@ t_start,
	b	.L345	@
.L358:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp145, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp145
	cmp	ip, #1000	@ t_wait,
	bhi	.L354	@,
	movw	r0, #:lower16:-104726464	@,
	movt	r0, #:upper16:-104726464	@,
	bl	MEM_ReadPhyWord	@
	add	r5, r5, #1	@ tmp152, i,
	tst	r0, #1	@,
	bne	.L340	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp157, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp157
	cmp	ip, #1000	@ t_wait,
	bhi	.L354	@,
	add	r5, r5, #1	@ i, tmp152,
	cmp	r5, r6	@ i, tmp151
	beq	.L357	@,
.L345:
	movw	r0, #:lower16:-104726464	@,
	movt	r0, #:upper16:-104726464	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L358	@,
	b	.L340	@
.L354:
	mov	r3, r0	@, t_now
	mov	r2, r4	@, t_start
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	str	ip, [sp, #0]	@ t_wait,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.37994,
	b	.L344	@
.L357:
	mvn	r0, #6	@ D.37994,
	b	.L344	@
	.fnend
	.size	WaitSCDFinish, .-WaitSCDFinish
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1396:
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
	mov	r4, r1	@ FirstCalc, FirstCalc
	mov	r5, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	cmp	r4, #0	@ FirstCalc,
	mov	r2, r0	@ CurTime,
	bne	.L364	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp158,
	movw	lr, #:lower16:145232	@ tmp161,
	movt	ip, #:upper16:.LANCHOR0	@ tmp158,
	movt	lr, #:upper16:145232	@ tmp161,
	movw	r1, #:lower16:145224	@ tmp159,
	movt	r1, #:upper16:145224	@ tmp159,
	mla	r5, lr, r5, ip	@ tmp162, tmp161, SmID, tmp158
	ldr	r0, [r5, r1]	@ D.36550, <variable>.LastBlockTime
	cmp	r2, r0	@ CurTime, D.36550
	strls	r2, [r5, r1]	@ CurTime, <variable>.LastBlockTime
	addhi	r5, r5, #144384	@ tmp169, tmp162,
	addls	ip, r5, #144384	@ tmp175, tmp162,
	addhi	r5, r5, #832	@ tmp169, tmp169,
	addls	ip, ip, #832	@ tmp175, tmp175,
	rsbhi	r0, r0, r2	@ prephitmp.1913, D.36550, CurTime
	movls	r0, r4	@ prephitmp.1913, FirstCalc
	strhi	r0, [r5, #4]	@ prephitmp.1913, <variable>.BlockTimeInMs
	strls	r4, [ip, #4]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L364:
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movw	r0, #:lower16:145232	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	movt	r0, #:upper16:145232	@ tmp142,
	movw	r1, #:lower16:145224	@ tmp147,
	movt	r1, #:upper16:145224	@ tmp147,
	mla	r5, r0, r5, r3	@ tmp143, tmp142, SmID, tmp139
	mov	ip, #0	@ tmp145,
	mov	r0, ip	@ prephitmp.1913, tmp145
	add	lr, r5, #144384	@ tmp144, tmp143,
	add	r3, lr, #832	@ tmp144, tmp144,
	str	r2, [r5, r1]	@ CurTime, <variable>.LastBlockTime
	str	ip, [r3, #4]	@ tmp145, <variable>.BlockTimeInMs
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
.LFB1399:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp134,
	movt	r4, #:upper16:.LANCHOR1	@ tmp134,
	mov	r5, r0	@ pSmCtrlReg, pSmCtrlReg
	ldr	r1, [r0, #4]	@, <variable>.DownMsgPhyAddr
	ldr	lr, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, lr, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #12]	@, <variable>.UpMsgPhyAddr
	add	r0, r3, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #20]	@, <variable>.UpLen
	add	r0, r2, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #24]	@, <variable>.BufferFirst
	add	r0, ip, #16	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #28]	@, <variable>.BufferLast
	add	r0, r0, #20	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #32]	@, <variable>.BufferIni
	add	r0, r3, #24	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldrsb	r1, [r5, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	r2, [r5, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	ldr	r0, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	ip, r1, asl #4	@ tmp162, <variable>.SliceCheckFlag,
	and	r3, r2, #15	@ tmp164, <variable>.ScdProtocol,
	and	r2, ip, #16	@ tmp163, tmp162,
	add	r0, r0, #32	@, s_RegPhyBaseAddr,
	orr	r1, r2, r3	@, tmp163, tmp164
	bl	MEM_WritePhyWord	@
	bl	PrintScdVtrlReg	@
	ldr	r0, [r4, #-4080]	@, s_RegPhyBaseAddr
	mov	r1, #0	@,
	bl	MEM_WritePhyWord	@
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.ScdStart, <variable>.ScdStart
	ldr	r0, [r4, #-4080]	@, s_RegPhyBaseAddr
	and	r1, r1, #1	@, <variable>.ScdStart,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
	.align	2
	.global	SCDDRV_EnableInt
	.type	SCDDRV_EnableInt, %function
SCDDRV_EnableInt:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp133,
	movt	r3, #:upper16:.LANCHOR1	@ tmp133,
	mov	r1, #0	@,
	ldr	r0, [r3, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #28	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_EnableInt, .-SCDDRV_EnableInt
	.align	2
	.global	SCDDRV_MaskInt
	.type	SCDDRV_MaskInt, %function
SCDDRV_MaskInt:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp133,
	movt	r3, #:upper16:.LANCHOR1	@ tmp133,
	mov	r1, #1	@,
	ldr	r0, [r3, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #28	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_MaskInt, .-SCDDRV_MaskInt
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1416:
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
	mov	r4, r1	@ pRawPacket, pRawPacket
	mov	r5, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	ip, r0, #0	@ pStreamIntf,
	beq	.L376	@,
	ldr	r3, [ip, #8]	@ D.37572, <variable>.release_stream
	cmp	r3, #0	@ D.37572,
	beq	.L374	@,
	ldr	r0, [ip, #0]	@, <variable>.stream_provider_inst_id
	mov	r1, r4	@, pRawPacket
	blx	r3	@ D.37572
	cmp	r0, #0	@ ret
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
.L374:
	mvn	r0, #6	@ ret,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L376:
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ ret,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
.LFB1361:
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
	cmp	r1, #0	@ ResetFlag,
	mov	r6, r0	@ SmID, SmID
	movwne	r5, #:lower16:.LANCHOR0	@ tmp224,
	movtne	r5, #:upper16:.LANCHOR0	@ tmp224,
	bne	.L378	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp224,
	movw	r1, #:lower16:145232	@ tmp149,
	movt	r5, #:upper16:.LANCHOR0	@ tmp224,
	movt	r1, #:upper16:145232	@ tmp149,
	movw	r0, #:lower16:131392	@ tmp147,
	movt	r0, #:upper16:131392	@ tmp147,
	mla	r2, r1, r6, r5	@ tmp150, tmp149, SmID, tmp224
	ldr	r3, [r2, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	bne	.L378	@,
.L379:
	mvn	r0, #0	@ D.35571,
.L384:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L378:
	movw	r4, #:lower16:145232	@ tmp156,
	movt	r4, #:upper16:145232	@ tmp156,
	movw	r1, #57536	@ tmp160,
	movw	r2, #57528	@ tmp154,
	mla	r0, r4, r6, r5	@ tmp157, tmp156, SmID, tmp224
	ldr	r4, [r0, r1]	@ D.35575, <variable>.RawPacketArray.History
	ldr	r3, [r0, r2]	@ RawHead, <variable>.RawPacketArray.Head
	cmp	r3, r4	@ RawHead, D.35575
	addlt	r3, r3, #1024	@ tmp165, RawHead,
	rsb	ip, r4, r3	@, D.35575, tmp165
	str	ip, [fp, #-48]	@, %sfp
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #0	@,
	beq	.L379	@,
	movw	r9, #:lower16:145232	@ tmp227,
	movt	r9, #:upper16:145232	@ tmp227,
	rsb	sl, r4, r4, asl #3	@, tmp170, D.35575, D.35575,
	sub	r8, r1, #1	@ tmp231,,
	mul	r9, r9, r6	@ tmp228, tmp227, SmID
	and	r7, r8, #1	@, tmp231,
	mov	r0, #26	@,
	str	r7, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	add	sl, r9, sl, asl #3	@, tmp174, tmp228, tmp170,
	mov	r8, #1	@ i,
	add	lr, sl, r5	@ tmp175, tmp174, tmp224
	movw	r7, #:lower16:.LANCHOR0	@ tmp166,
	movt	r7, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r3, [lr, #192]	@, <variable>.Length
	ldr	r2, [lr, #184]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r2, sl, #184	@ tmp198, tmp174,
	add	r1, r5, r2	@, tmp224, tmp198
	mov	r0, r6	@, SmID
	bl	ReleaseRawStreamData	@
	add	r3, r4, r8	@ D.35589, D.35575,
	ldr	r0, [fp, #-48]	@, %sfp
	mov	ip, r3, asl #22	@ j, D.35589,
	cmp	r0, r8	@,
	mov	r4, ip, lsr #22	@ j, j,
	bls	.L394	@,
	ldr	sl, [fp, #-52]	@, %sfp
	cmp	sl, #0	@,
	beq	.L396	@,
	rsb	r8, r4, r4, asl #3	@, tmp270, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	add	sl, r9, r8, asl #3	@, tmp273, tmp228, tmp270,
	mov	r8, #2	@ i,
	add	lr, sl, r5	@ tmp274, tmp273, tmp224
	ldr	r3, [lr, #192]	@, <variable>.Length
	ldr	r2, [lr, #184]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	ip, sl, #184	@ tmp279, tmp273,
	add	r1, r5, ip	@, tmp224, tmp279
	mov	r0, r6	@, SmID
	bl	ReleaseRawStreamData	@
	add	r2, r4, #1	@ D.35589, j,
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r4, r2, asl #22	@ j, D.35589,
	cmp	r3, r8	@, i
	mov	r4, r4, lsr #22	@ j, j,
	bls	.L394	@,
.L396:
	mov	sl, r6	@ SmID, SmID
.L382:
	rsb	r3, r4, r4, asl #3	@, tmp239, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	add	r6, r9, r3, asl #3	@, tmp243, tmp228, tmp239,
	add	r4, r4, #1	@ D.35589, j,
	add	lr, r6, r5	@ tmp244, tmp243, tmp224
	add	r7, r8, #1	@ tmp234, i,
	add	r8, r7, #1	@ i, tmp234,
	movw	r7, #:lower16:.LANCHOR0	@ tmp166,
	ldr	r3, [lr, #192]	@, <variable>.Length
	movt	r7, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r2, [lr, #184]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r0, r6, #184	@ tmp249, tmp243,
	add	r1, r5, r0	@, tmp224, tmp249
	mov	r0, sl	@, SmID
	bl	ReleaseRawStreamData	@
	mov	ip, r4, asl #22	@ j, D.35589,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC58	@,
	mov	r4, ip, lsr #22	@ j, j,
	movt	r1, #:upper16:.LC58	@,
	rsb	r6, r4, r4, asl #3	@, tmp256, j, j,
	add	r4, r4, #1	@ D.35589, j,
	add	r6, r9, r6, asl #3	@, tmp259, tmp228, tmp256,
	add	r2, r6, r5	@ tmp260, tmp259, tmp224
	ldr	r3, [r2, #192]	@, <variable>.Length
	ldr	r2, [r2, #184]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r3, r6, #184	@ tmp265, tmp259,
	add	r1, r5, r3	@, tmp224, tmp265
	mov	r0, sl	@, SmID
	bl	ReleaseRawStreamData	@
	ldr	ip, [fp, #-48]	@, %sfp
	mov	r1, r4, asl #22	@ j, D.35589,
	cmp	ip, r8	@, i
	mov	r4, r1, lsr #22	@ j, j,
	bhi	.L382	@,
.L394:
	add	r7, r9, r7	@ tmp205, tmp228, tmp166
	movw	ip, #57536	@ tmp202,
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r0, [r7, ip]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r2, r1, r0	@ D.35591,, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.35571,
	cmp	r2, #1024	@ D.35591,
	str	r2, [r7, ip]	@ D.35591, <variable>.RawPacketArray.History
	subge	r2, r2, #1024	@ tmp222, D.35591,
	strge	r2, [r7, ip]	@ tmp222, <variable>.RawPacketArray.History
	b	.L384	@
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1415:
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
	mov	r5, r1	@ pRawPacket, pRawPacket
	mov	r6, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r4, r0, #0	@ pStreamIntf,
	beq	.L405	@,
	ldr	r3, [r4, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r3, #0	@ <variable>.read_stream,
	bne	.L406	@,
.L402:
	mvn	r4, #6	@ ret,
.L401:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L406:
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r4, #4]	@ <variable>.read_stream, <variable>.read_stream
	mov	r1, r5	@, pRawPacket
	ldr	r0, [r4, #0]	@, <variable>.stream_provider_inst_id
	blx	r2	@ <variable>.read_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #0	@ ret,
	bne	.L402	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movw	r2, #:lower16:145232	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	movt	r2, #:upper16:145232	@ tmp150,
	ldr	r1, [r5, #8]	@ <variable>.Length, <variable>.Length
	mla	lr, r2, r6, r3	@ tmp151, tmp150, InstID, tmp147
	add	r6, lr, #57344	@ tmp152, tmp151,
	add	r6, r6, #200	@ tmp152, tmp152,
	ldr	ip, [r6, #4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	r0, r1, ip	@ tmp161, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [r6, #4]	@ tmp161, <variable>.RawPacketArray.RawTotalSize
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L405:
	mov	r2, r6	@, InstID
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L401	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1383:
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
	cmp	r0, #1	@ SmID,
	mov	r4, r0	@ SmID, SmID
	mvnhi	r0, #0	@ D.36055,
	ldmhifd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp137,
	movt	r6, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r6, #40	@ tmp138, tmp137,
	movw	r5, #:lower16:145232	@ tmp140,
	movt	r5, #:upper16:145232	@ tmp140,
	mla	r0, r5, r4, r0	@, tmp140, SmID, tmp138
	mov	r1, r5	@, tmp140
	mla	r5, r4, r5, r5	@ tmp145, SmID, tmp140, tmp140
	bl	__memzero	@
	mvn	r2, #0	@ tmp148,
	mvn	r3, #0	@,
	mov	r0, #0	@ D.36055,
	strd	r2, [r5, r6]	@ tmp148, tmp145, tmp137
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
.LFB1369:
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
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r4, #8	@, pStreamSegArray,
	mov	r1, #73728	@,
	bl	__memzero	@
	movw	r0, #:lower16:73752	@ tmp142,
	movt	r0, #:upper16:73752	@ tmp142,
	movw	r1, #:lower16:73736	@ tmp135,
	movw	r3, #:lower16:73740	@ tmp137,
	movt	r1, #:upper16:73736	@ tmp135,
	ldr	r5, [r4, r0]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	movt	r3, #:upper16:73740	@ tmp137,
	movw	r0, #:lower16:73744	@ tmp139,
	movw	r2, #:lower16:73760	@ tmp141,
	movt	r0, #:upper16:73744	@ tmp139,
	movt	r2, #:upper16:73760	@ tmp141,
	movw	ip, #:lower16:73764	@ tmp144,
	movt	ip, #:upper16:73764	@ tmp144,
	str	r5, [r4, r2]	@ <variable>.SegBufPhyAddr, <variable>.SegBufReadAddr
	mov	r2, #0	@ tmp136,
	str	r5, [r4, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufWriteAddr
	str	r2, [r4, r0]	@ tmp136, <variable>.History
	str	r2, [r4, r1]	@ tmp136, <variable>.Head
	str	r2, [r4, r3]	@ tmp136, <variable>.Tail
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ResetStreamSegArray, .-ResetStreamSegArray
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
	.fnstart
.LFB1392:
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
	movw	sl, #:lower16:145232	@ tmp148,
	movt	sl, #:upper16:145232	@ tmp148,
	movw	r4, #:lower16:.LANCHOR0	@ tmp253,
	movt	r4, #:upper16:.LANCHOR0	@ tmp253,
	movw	r2, #57528	@ tmp146,
	mul	r9, sl, r0	@ tmp147, tmp148, SmID
	mov	r6, r0	@ SmID, SmID
	add	sl, r9, r4	@ tmp149, tmp147, tmp253
	add	r5, sl, #57344	@ tmp150, tmp149,
	add	r1, r5, #184	@ tmp150, tmp150,
	ldr	r5, [sl, r2]	@ D.36405, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r3, r5	@ <variable>.RawPacketArray.Tail, D.36405
	mvneq	r0, #3	@ D.36403,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	add	r7, r9, #57344	@ tmp165, tmp147,
	add	r8, r9, #184	@ tmp161, tmp147,
	add	lr, r7, #208	@ tmp165, tmp165,
	mov	r7, r5, asl #3	@ tmp251, D.36405,
	add	r0, r4, lr	@, tmp253, tmp165
	add	r8, r4, r8	@ pRawPacketArray, tmp253, tmp161
	bl	ResetStreamSegArray	@
	rsb	r0, r5, r7	@ tmp172, D.36405, tmp251
	add	r9, r9, r0, asl #3	@, tmp176, tmp147, tmp172,
	add	r9, r9, r4	@ tmp177, tmp176, tmp253
	ldr	r3, [r9, #188]	@ pu32tmp, <variable>.VirAddr
	ldmia	r3, {r0, r2}	@ phole ldm
	sub	r1, r0, #32	@ tmp181, D.36413,
	cmp	r1, #1888	@ tmp181,
	movls	ip, #0	@, tmp183
	movhi	ip, #1	@, tmp183
	cmp	r2, #31	@ h,
	orrle	ip, ip, #1	@,, tmp186, tmp183
	cmp	ip, #0	@ tmp186,
	bne	.L417	@,
	cmp	r2, #1088	@ h,
	bgt	.L417	@,
	ldr	r1, [r9, #192]	@ D.36425, <variable>.Length
	cmp	r1, #1552	@ D.36425,
	blt	.L417	@,
	movw	ip, #:lower16:3133456	@ tmp199,
	movt	ip, #:upper16:3133456	@ tmp199,
	cmp	r1, ip	@ D.36425, tmp199
	bgt	.L417	@,
	add	ip, r0, r0, asl #1	@, tmp202, D.36413, D.36413,
	add	sl, sl, #131072	@ tmp209, tmp149,
	add	sl, sl, #232	@ tmp209, tmp209,
	mul	r2, r2, ip	@ tmp203, h, tmp202
	ldr	lr, [sl, #4]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, lr, #131072	@ tmp210, <variable>.StreamSegArray.SegBufSize,
	mov	r2, r2, asr #1	@ D.36430, tmp203,
	cmp	r2, r0	@ D.36430, tmp210
	bgt	.L417	@,
	add	r0, r2, #16	@ tmp213, D.36430,
	cmp	r1, r0	@ D.36425, tmp213
	blt	.L417	@,
	ldr	ip, [r3, #8]	@ tmp230,
	movw	r2, #1916	@ tmp232,
	ldr	r3, [r3, #12]	@ disp_h,
	sub	lr, ip, #4	@ tmp229, tmp230,
	cmp	lr, r2	@ tmp229, tmp232
	movls	sl, #0	@, tmp233
	movhi	sl, #1	@, tmp233
	cmp	r3, #3	@ disp_h,
	orrle	sl, sl, #1	@,, tmp236, tmp233
	cmp	sl, #0	@ tmp236,
	bne	.L419	@,
	cmp	r3, #1088	@ disp_h,
	ble	.L420	@,
.L419:
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	mov	r0, #0	@,
.L422:
	bl	dprint_vfmw	@
	movw	r2, #:lower16:145232	@ tmp245,
	movt	r2, #:upper16:145232	@ tmp245,
	rsb	r5, r5, r7	@ tmp242, D.36405, tmp251
	mov	r0, r8	@, pRawPacketArray
	mul	r1, r2, r6	@ tmp244, tmp245, SmID
	add	r3, r1, r5, asl #3	@, tmp246, tmp244, tmp242,
	add	r4, r3, r4	@ tmp247, tmp246, tmp253
	ldr	r1, [r4, #192]	@, <variable>.Length
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36403,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L417:
	movw	r1, #:lower16:.LC97	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC97	@,
	b	.L422	@
.L420:
	mov	r0, r8	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, sl	@ D.36403, tmp236
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	ConfigStreamSegArray
	.type	ConfigStreamSegArray, %function
ConfigStreamSegArray:
	.fnstart
.LFB1368:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, BufPhyAddr,
	mov	r4, r1	@ BufPhyAddr, BufPhyAddr
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	bne	.L427	@,
.L424:
	mvn	r0, #0	@ D.35745,
.L425:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L427:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #131072	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L424	@,
	movw	r1, #:lower16:73784	@,
	movt	r1, #:upper16:73784	@,
	str	r2, [fp, #-32]	@,
	movw	r7, #:lower16:73752	@ tmp156,
	str	r3, [fp, #-36]	@,
	movt	r7, #:upper16:73752	@ tmp156,
	bl	__memzero	@
	movw	r0, #:lower16:73764	@ tmp158,
	movt	r0, #:upper16:73764	@ tmp158,
	str	r4, [r5, r7]	@ BufPhyAddr, <variable>.SegBufPhyAddr
	movw	ip, #:lower16:73756	@ tmp159,
	movt	ip, #:upper16:73756	@ tmp159,
	str	r4, [r5, r0]	@ BufPhyAddr, <variable>.SegBufWriteAddr
	movw	r1, #:lower16:73760	@ tmp157,
	ldr	r3, [fp, #-36]	@,
	movt	r1, #:upper16:73760	@ tmp157,
	mov	r0, r6	@ D.35745, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [fp, #-32]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L425	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1386:
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
	cmp	r0, #2	@ SmID,
	movls	r3, #0	@, tmp149
	movhi	r3, #1	@, tmp149
	cmp	r1, #0	@ pSmCfg,
	orreq	r3, r3, #1	@,, tmp152, tmp149
	mov	r5, r0	@ SmID, SmID
	cmp	r3, #0	@ tmp152,
	mov	r4, r1	@ pSmCfg, pSmCfg
	bne	.L429	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp303,
	movw	ip, #:lower16:145232	@ tmp156,
	movt	r6, #:upper16:.LANCHOR0	@ tmp303,
	movt	ip, #:upper16:145232	@ tmp156,
	ldr	r2, [r1, #12]	@ D.36145, <variable>.BufPhyAddr
	mla	r3, ip, r0, r6	@ tmp157, tmp156, SmID, tmp303
	ldr	r1, [r3, #100]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r1, r2	@ <variable>.Config.BufPhyAddr, D.36145
	bne	.L439	@,
.L431:
	movw	ip, #:lower16:145232	@ tmp280,
	movt	ip, #:upper16:145232	@ tmp280,
	mov	r1, r4	@, pSmCfg
	mov	r2, #96	@,
	mla	r5, ip, r5, r6	@ tmp281, tmp280, SmID, tmp303
	add	r0, r5, #88	@, tmp281,
	add	r5, r5, #144384	@ tmp292, tmp281,
	add	r5, r5, #880	@ tmp292, tmp292,
	bl	memcpy	@
	mov	r1, #2	@ tmp293,
	mov	r0, #0	@ D.36142,
	str	r1, [r5, #4]	@ tmp293, <variable>.UpMsgStepNum
	ldr	r3, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r3, #2	@ <variable>.VidStd,
	moveq	r3, #3	@ tmp301,
	streq	r3, [r5, #4]	@ tmp301, <variable>.UpMsgStepNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L439:
	cmp	r2, #0	@ D.36145,
	bne	.L440	@,
.L429:
	mvn	r0, #0	@ D.36142,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L440:
	ldr	r2, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r2, #0	@ <variable>.pBufVirAddr,
	beq	.L429	@,
	ldr	r1, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r1, #18	@ <variable>.VidStd,
	bhi	.L429	@,
	ldr	r7, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	add	r2, r3, #131072	@ tmp167, tmp157,
	add	r2, r2, #272	@ tmp167, tmp167,
	add	lr, r3, #131072	@ tmp175, tmp157,
	add	lr, lr, #280	@ tmp175, tmp175,
	add	ip, r3, #131072	@ tmp191, tmp157,
	str	r7, [r2, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	add	r1, r3, #131072	@ tmp207, tmp157,
	ldr	r8, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	add	r7, r3, #131072	@ tmp224, tmp157,
	add	ip, ip, #288	@ tmp191, tmp191,
	add	r1, r1, #296	@ tmp207, tmp207,
	add	r7, r7, #304	@ tmp224, tmp224,
	str	r8, [lr, #4]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	r8, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r8, [lr, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	ldr	r3, [r6, #20]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r3, [ip, #4]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [ip, #8]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	ip, #1152	@ tmp216,
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	ip, [r1, #8]	@ tmp216, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [r1, #4]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2202, <variable>.BufPhyAddr
	ldr	ip, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	add	r3, r8, #3	@ tmp217, temp.2202,
	bic	lr, r3, #3	@ TmpPhyAddr, tmp217,
	rsb	r8, r8, lr	@ ByteOffsetInWord, temp.2202, TmpPhyAddr
	add	r1, lr, #131072	@ tmp225, TmpPhyAddr,
	add	r3, r8, ip	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	str	r1, [r7, #4]	@ tmp225, <variable>.BufAddrCfg.SegBufPhyAddr
	add	lr, r3, #131072	@ tmp232, pTmpVirAddr,
	str	lr, [r2, #4]	@ tmp232, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r3, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r3, r8, r3	@ D.36171, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r3	@ SmMaxSegBufSize, D.36171
	sublt	r3, r0, #132096	@ prephitmp.2191, SmMaxSegBufSize,
	strlt	r3, [r7, #8]	@ prephitmp.2191, <variable>.BufAddrCfg.SegBufSize
	bge	.L441	@,
.L434:
	movw	r7, #:lower16:145232	@ tmp249,
	movt	r7, #:upper16:145232	@ tmp249,
	mul	r0, r7, r5	@ tmp248, tmp249, SmID
	add	r7, r0, r6	@ tmp257, tmp248, tmp303
	add	ip, r0, #57344	@ tmp250, tmp248,
	add	lr, r7, #131072	@ tmp258, tmp257,
	add	r0, ip, #208	@ tmp250, tmp250,
	add	r1, lr, #304	@ tmp258, tmp258,
	add	lr, lr, #272	@ tmp264, tmp264,
	add	r0, r6, r0	@, tmp303, tmp250
	ldr	r2, [lr, #4]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	ldr	r1, [r1, #4]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	bl	ConfigStreamSegArray	@
	ldr	ip, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	movw	r3, #:lower16:.LANCHOR1	@ tmp265,
	movt	r3, #:upper16:.LANCHOR1	@ tmp265,
	add	r0, r7, #88	@, tmp257,
	mov	r1, r4	@, pSmCfg
	mov	r2, #96	@,
	str	ip, [r3, #-4080]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
	b	.L431	@
.L441:
	sub	r3, r3, #132096	@ prephitmp.2191, D.36171,
	str	r3, [r7, #8]	@ prephitmp.2191, <variable>.BufAddrCfg.SegBufSize
	cmp	r3, #32768	@ prephitmp.2191,
	bge	.L434	@,
	b	.L429	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1382:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #100
	sub	sp, sp, #100	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ SmID,
	mov	r4, r0	@ SmID, SmID
	mvnhi	r0, #0	@ D.36024,
	bls	.L453	@,
.L444:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L453:
	movw	r3, #:lower16:145232	@ tmp143,
	movt	r3, #:upper16:145232	@ tmp143,
	movw	r5, #:lower16:.LANCHOR0	@ tmp242,
	movt	r5, #:upper16:.LANCHOR0	@ tmp242,
	mul	r3, r3, r4	@ tmp142, tmp143, SmID
	add	r6, r3, r5	@ tmp144, tmp142, tmp242
	ldr	r1, [r6, #124]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r2, r1, #1	@ tmp146, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r2, #1	@ tmp146,
	bls	.L454	@,
.L445:
	movw	r0, #:lower16:145232	@ tmp156,
	movt	r0, #:upper16:145232	@ tmp156,
	sub	r7, fp, #140	@ tmp243,,
	mov	r8, #0	@ tmp159,
	mla	r6, r0, r4, r5	@ tmp157, tmp156, SmID, tmp242
	mov	r2, #96	@,
	mov	r0, r7	@, tmp243
	mvn	r9, #0	@ tmp166,
	add	sl, r6, #120	@ tmp158, tmp157,
	add	r1, r6, #88	@, tmp157,
	str	r8, [sl, #4]	@ tmp159, <variable>.Config.DisContinueRawPacketFlag
	str	r9, [r6, #120]	@ tmp166, <variable>.Config.LastRawDisContinueCount
	bl	memcpy	@
	movw	r3, #:lower16:131392	@ tmp178,
	movt	r3, #:upper16:131392	@ tmp178,
	ldr	sl, [r6, r3]	@ TmpMode, <variable>.Mode
	cmp	sl, r8	@ TmpMode,
	beq	.L446	@,
	movw	lr, #:lower16:.LANCHOR1	@ tmp190,
	movt	lr, #:upper16:.LANCHOR1	@ tmp190,
	str	r8, [r6, r3]	@ tmp159, <variable>.Mode
	ldr	ip, [lr, #-4084]	@ s_SCDInISR, s_SCDInISR
	cmp	ip, r8	@ s_SCDInISR,
	beq	.L446	@,
.L447:
	add	r8, r8, #2	@ i, i,
	cmp	r8, #50	@ i,
	bne	.L447	@,
.L446:
	movw	r6, #:lower16:145232	@ tmp195,
	movt	r6, #:upper16:145232	@ tmp195,
	movw	lr, #57528	@ tmp193,
	sub	sl, sl, #1	@ tmp224, TmpMode,
	mla	ip, r6, r4, r5	@ tmp196, tmp195, SmID, tmp242
	movw	r6, #:lower16:145232	@ tmp208,
	movt	r6, #:upper16:145232	@ tmp208,
	add	r8, ip, #57344	@ tmp197, tmp196,
	add	r0, r8, #184	@ tmp197, tmp197,
	movw	r8, #:lower16:.LANCHOR0	@ tmp206,
	ldr	r9, [ip, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movt	r8, #:upper16:.LANCHOR0	@ tmp206,
	ldr	r1, [r0, #4]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	subs	r1, r1, r9	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	mul	r9, r6, r4	@ tmp207, tmp208, SmID
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	add	r3, r9, #184	@ tmp209, tmp207,
	add	r0, r5, r3	@, tmp242, tmp209
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r4	@, SmID
	bl	DeleteRawPacketInBuffer	@
	mov	r1, r6	@, tmp208
	mla	r6, r4, r6, r6	@ tmp219, SmID, tmp208, tmp208
	add	r2, r8, #40	@ tmp212, tmp206,
	add	r0, r2, r9	@, tmp212, tmp207
	add	r8, r9, r8	@ tmp229, tmp207, tmp206
	bl	__memzero	@
	mov	r0, r4	@, SmID
	mov	r1, r7	@, tmp243
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp222,
	strd	r2, [r6, r5]	@ tmp222, tmp219, tmp242
	bl	SM_Config	@
	cmp	sl, #1	@ tmp224,
	movwls	r3, #:lower16:131392	@ tmp226,
	movwhi	r3, #:lower16:131392	@ tmp233,
	movhi	r2, #0	@ tmp238,
	movls	r2, #1	@ tmp231,
	movls	r0, #0	@ D.36024,
	movtls	r3, #:upper16:131392	@ tmp226,
	movthi	r3, #:upper16:131392	@ tmp233,
	movhi	r0, r2	@ D.36024, tmp238
	str	r2, [r8, r3]	@ tmp238, <variable>.Mode
	b	.L444	@
.L454:
	add	r7, r3, #128	@ tmp151, tmp142,
	add	r1, r5, r7	@, tmp242, tmp151
	bl	ReleaseRawStreamData	@
	b	.L445	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
	.fnstart
.LFB1353:
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
	cmp	r0, #0	@ pRawStreamArray,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r1, #57368	@,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ResetRawStreamArray, .-ResetRawStreamArray
	.align	2
	.global	ScdReturnSegFilter
	.type	ScdReturnSegFilter, %function
ScdReturnSegFilter:
	.fnstart
.LFB1405:
	@ args = 4, pretend = 0, frame = 16
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
	str	r1, [fp, #-48]	@ pTransFormSeg, %sfp
	ldr	r1, [r0, #32]	@, <variable>.SegNum
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	mov	r5, #0	@ tmp166,
	mov	r0, #24	@,
	str	r1, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC99	@,
	str	r5, [r2, #0]	@ tmp166,* pExtraSrcBack
	movt	r1, #:upper16:.LC99	@,
	str	r3, [fp, #-60]	@ pSegNum, %sfp
	bl	dprint_vfmw	@
	ldr	r6, [r4, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	cmp	r6, #2	@ <variable>.ProtocolType,
	beq	.L459	@,
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r5	@,
	ble	.L460	@,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r5	@, tmp166
	ldr	r5, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	ip, [r3, #0]	@ tmp171,* <variable>.pScdUpMsg
	and	r7, r5, #-2147483648	@ tmp172, <variable>.SegBufPhyAddr,
	ldr	lr, [fp, #4]	@, UpMsgStepNum
	sub	sl, r1, #1	@ tmp263,,
	bic	r8, ip, #-2147483648	@ tmp170, tmp171,
	ldr	ip, [fp, #-48]	@, %sfp
	orr	r6, r8, r7	@ tmp174, tmp170, tmp172
	movw	r1, #:lower16:.LC100	@,
	mov	r5, lr, asl #2	@ D.40318,,
	movt	r1, #:upper16:.LC100	@,
	str	r6, [ip, #0]	@ tmp174,
	add	r6, ip, r5	@ ivtmp.2308,, D.40318
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r7, #1	@ i,
	and	sl, sl, #1	@ tmp265, tmp263,
	mov	r8, r5	@ ivtmp.2307, D.40318
	ldr	lr, [r3, #4]	@ tmp179,
	str	lr, [ip, #4]	@ tmp179,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #0]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-52]	@, %sfp
	cmp	r0, r7	@,
	ble	.L460	@,
	cmp	sl, #0	@ tmp265,
	beq	.L461	@,
	ldr	r8, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r7	@, i
	ldr	r7, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	ldr	r3, [r8, r5]	@ tmp308,* D.40318
	and	ip, r7, #-2147483648	@ tmp311, <variable>.SegBufPhyAddr,
	mov	r7, #2	@ i,
	mov	r8, r5, asl #1	@ ivtmp.2307, D.40318,
	bic	lr, r3, #-2147483648	@ tmp309, tmp308,
	orr	r3, lr, ip	@ tmp312, tmp309, tmp311
	str	r3, [r6, #0]	@ tmp312,* ivtmp.2308
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r5, lr	@ tmp314, D.40318, <variable>.pScdUpMsg
	ldr	r3, [ip, #4]	@ tmp316,
	str	r3, [r6, #4]	@ tmp316,
	add	r6, r6, r5	@ ivtmp.2308, ivtmp.2308, D.40318
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, #4]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	ip, r7	@, i
	ble	.L460	@,
.L461:
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	lr, r6, r5	@, ivtmp.2308, D.40318
	ldr	sl, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r2, r7	@, i
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	ldr	r9, [r3, r8]	@ tmp275,* ivtmp.2307
	and	ip, sl, #-2147483648	@ tmp278, <variable>.SegBufPhyAddr,
	str	lr, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC100	@,
	bic	lr, r9, #-2147483648	@ tmp276, tmp275,
	add	sl, r8, r5	@ ivtmp.2307, ivtmp.2307, D.40318
	orr	r3, lr, ip	@ tmp279, tmp276, tmp278
	str	r3, [r6, #0]	@ tmp279,* ivtmp.2308
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r9, r7, #1	@ tmp266, i,
	add	ip, r8, lr	@ tmp281, ivtmp.2307, <variable>.pScdUpMsg
	add	r8, sl, r5	@ ivtmp.2307, ivtmp.2307, D.40318
	ldr	r3, [ip, #4]	@ tmp283,
	str	r3, [r6, #4]	@ tmp283,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, r7, asl #2]	@,* <variable>.pScdUpMsg
	add	r7, r9, #1	@ i, tmp266,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	ldr	r3, [ip, sl]	@ tmp290,* ivtmp.2307
	and	ip, r2, #-2147483648	@ tmp293, <variable>.SegBufPhyAddr,
	mov	r2, r9	@, tmp266
	bic	r3, r3, #-2147483648	@ tmp291, tmp290,
	orr	r3, r3, ip	@ tmp294, tmp291, tmp293
	str	r3, [r6, r5]	@ tmp294,* D.40318
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	ip, [fp, #-48]	@, %sfp
	add	sl, sl, r3	@ tmp296, ivtmp.2307, <variable>.pScdUpMsg
	add	r6, ip, r5	@ ivtmp.2308,, D.40318
	ldr	r3, [sl, #4]	@ tmp298,
	str	r3, [ip, #4]	@ tmp298,
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [ip, r9, asl #2]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r7	@, i
	bgt	.L461	@,
.L460:
	mov	r5, #0	@ tmp182,
	str	r5, [r4, #16]	@ tmp182, <variable>.LastH263Num
	str	r5, [r4, #12]	@ tmp182, <variable>.ModeFlag
	mov	r0, r5	@ D.36916, tmp182
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	r2, [fp, #-60]	@, %sfp
	str	r1, [r2, #0]	@,
.L462:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L459:
	ldr	r0, [r4, #20]	@, <variable>.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp186,* D.36888
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ tmp185,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp189,
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ tmp192,
	orr	r7, r3, r1, asl #24	@, tmp188, tmp185, tmp186,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	orr	r3, r7, r2, asl #16	@, tmp191, tmp188, tmp189,
	orr	r7, r3, ip, asl #8	@, Data32, tmp191, tmp192,
	bl	MEM_Phy2Vir	@
	ldr	ip, [fp, #-52]	@, %sfp
	mov	r1, r7, lsr #24	@ tmp195, Data32,
	mov	r3, r7, lsr #16	@ tmp197, Data32,
	cmp	ip, #0	@,
	strb	r7, [r0, #3]	@ Data32,
	mov	r7, r7, lsr #8	@ tmp199, Data32,
	strb	r1, [r0, #0]	@ tmp195,* D.36906
	strb	r3, [r0, #1]	@ tmp197,
	strb	r7, [r0, #2]	@ tmp199,
	movle	r0, r5	@ D.36916, tmp166
	ldrle	ip, [fp, #-60]	@, %sfp
	strle	r5, [ip, #0]	@ tmp166,
	ble	.L462	@,
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	ip, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	ldr	r8, [r2, #0]	@ tmp204,* <variable>.pScdUpMsg
	and	lr, ip, #-2147483648	@ tmp205, <variable>.SegBufPhyAddr,
	bic	r0, r8, #-2147483648	@ tmp203, tmp204,
	orrs	r8, r0, lr	@ TmpPhyAddr, tmp203, tmp205
	beq	.L464	@,
	ldr	r7, [fp, #-48]	@, %sfp
	mov	r3, r5	@ temp.2394, tmp166
	ldr	r9, [fp, #4]	@, UpMsgStepNum
	mov	r5, #1	@ ivtmp.2317,
	str	r3, [fp, #-56]	@ temp.2394, %sfp
	mov	sl, r7	@ ivtmp.2395,
	mov	r6, r9, asl #2	@ D.40334,,
	add	r9, r7, #4	@ ivtmp.2323,,
	mov	r7, r3	@ D.36864, temp.2394
	b	.L465	@
.L493:
	mov	r3, #1	@,
	mov	r2, #0	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	add	r7, r7, r3	@ tmp231, D.36864,
	str	r2, [r4, #16]	@, <variable>.LastH263Num
	str	r8, [sl, #0]	@ TmpPhyAddr,* ivtmp.2395
	ldr	r0, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	lr, [r0, r7, asl #2]	@ tmp233,* <variable>.pScdUpMsg
	str	lr, [r9, #0]	@ tmp233,* ivtmp.2323
.L467:
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r5	@, ivtmp.2317
	ble	.L492	@,
	ldr	r2, [fp, #-56]	@, %sfp
	add	r5, r5, #1	@ ivtmp.2317, ivtmp.2317,
	ldr	ip, [fp, #4]	@, UpMsgStepNum
	add	sl, sl, r6	@ ivtmp.2395, ivtmp.2395, D.40334
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r9, r9, r6	@ ivtmp.2323, ivtmp.2323, D.40334
	add	r7, r2, ip	@ D.36864,,
	ldr	r8, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	ldr	lr, [r3, r7, asl #2]	@ tmp209,* <variable>.pScdUpMsg
	and	r0, r8, #-2147483648	@ tmp210, <variable>.SegBufPhyAddr,
	bic	r1, lr, #-2147483648	@ tmp208, tmp209,
	orrs	r8, r1, r0	@ TmpPhyAddr, tmp208, tmp210
	beq	.L464	@,
	str	r7, [fp, #-56]	@ D.36864, %sfp
.L465:
	mov	r0, r8	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36917
	beq	.L464	@,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp213,* D.36917
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp212,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ tmp216,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp219,
	orr	r2, ip, r1, asl #24	@, tmp215, tmp212, tmp213,
	movw	r1, #438	@,
	orr	lr, r2, r3, asl #16	@, tmp218, tmp215, tmp216,
	orr	r2, lr, r0, asl #8	@, Data32.2363, tmp218, tmp219,
	cmp	r2, r1	@ Data32.2363,
	cmpne	r2, #288	@, Data32.2363,
	beq	.L493	@,
	bic	r1, r2, #1020	@ tmp234, Data32.2363,
	bic	ip, r1, #3	@ tmp234, tmp234,
	cmp	ip, #32768	@ tmp234,
	beq	.L494	@,
.L468:
	str	r8, [sl, #0]	@ TmpPhyAddr,* ivtmp.2395
	add	r7, r7, #1	@ tmp249, D.36864,
	ldr	r0, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	lr, [r0, r7, asl #2]	@ tmp251,* <variable>.pScdUpMsg
	str	lr, [r9, #0]	@ tmp251,* ivtmp.2323
	b	.L467	@
.L494:
	ldr	lr, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	lr, #1	@ <variable>.ModeFlag,
	movne	ip, #2	@,
	strne	ip, [r4, #12]	@, <variable>.ModeFlag
	beq	.L495	@,
.L491:
	str	r8, [sl, #0]	@ TmpPhyAddr,* ivtmp.2395
	add	r7, r7, #1	@ tmp243, D.36864,
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	ip, [r1, r7, asl #2]	@ tmp245,* <variable>.pScdUpMsg
	str	ip, [r9, #0]	@ tmp245,* ivtmp.2323
	b	.L467	@
.L464:
	mvn	r0, #6	@ D.36916,
	b	.L462	@
.L495:
	ldr	r2, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r0, r2, #1	@ D.36941, <variable>.LastH263Num,
	str	r0, [r4, #16]	@ D.36941, <variable>.LastH263Num
	cmp	r0, #12	@ D.36941,
	ble	.L468	@,
	mov	r3, #2	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	b	.L491	@
.L492:
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r5, #0	@ ivtmp.2317,
	str	r5, [r3, #0]	@ ivtmp.2317,
	ble	.L472	@,
	ldr	r8, [fp, #-48]	@ ivtmp.2322, %sfp
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC100	@,
	sub	r4, r5, #1	@ tmp267, ivtmp.2317,
	ldr	r3, [r8], r6	@,
	and	r7, r4, #1	@ tmp269, tmp267,
	bl	dprint_vfmw	@
	cmp	r5, #1	@ ivtmp.2317,
	mov	r4, #1	@ i.2381,
	ble	.L472	@,
	cmp	r7, #0	@ tmp269,
	beq	.L490	@,
	mov	r2, r4	@, i.2381
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	ldr	r3, [r8], r6	@,
	movt	r1, #:upper16:.LC100	@,
	mov	r4, #2	@ i.2381,
	bl	dprint_vfmw	@
	cmp	r5, r4	@ ivtmp.2317, i.2381
	ble	.L472	@,
.L490:
	mov	sl, r5	@ ivtmp.2317, ivtmp.2317
.L473:
	add	r7, r4, #1	@ tmp270, i.2381,
	mov	r5, r8	@ ivtmp.2322, ivtmp.2322
	mov	r2, r4	@, i.2381
	ldr	r3, [r5], r6	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	add	r4, r7, #1	@ i.2381, tmp270,
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@,* D.40334
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	mov	r2, r7	@, tmp270
	movt	r1, #:upper16:.LC100	@,
	bl	dprint_vfmw	@
	cmp	sl, r4	@ ivtmp.2317, i.2381
	add	r8, r5, r6	@ ivtmp.2322, ivtmp.2322, D.40334
	bgt	.L473	@,
.L472:
	mov	r0, #0	@ D.36916,
	b	.L462	@
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	ResetSCD
	.type	ResetSCD, %function
ResetSCD:
	.fnstart
.LFB1350:
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
	movw	r0, #:lower16:-123592468	@,
	movt	r0, #:upper16:-123592468	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp160,
	bl	MEM_Phy2Vir	@
	movt	r4, #:upper16:.LANCHOR1	@ tmp160,
	cmp	r0, #0	@ D.35350,
	str	r0, [r4, #-4076]	@ D.35350, pScdResetReg
	beq	.L506	@,
	movw	r0, #:lower16:-104726500	@,
	movt	r0, #:upper16:-104726500	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, #0	@ i,
	movw	r8, #10000	@ tmp163,
	mov	r6, r0	@ D.35357,
	ldr	r0, [r4, #-4076]	@ pScdResetReg.413, pScdResetReg
	ldr	r5, [r0, #0]	@ reg,* pScdResetReg.413
	orr	r2, r5, #16	@ tmp147, reg,
	str	r2, [r0, #0]	@ tmp147,* pScdResetReg.413
	b	.L500	@
.L508:
	bl	MEM_ReadPhyWord	@
	tst	r0, #2	@,
	beq	.L499	@,
	cmp	r7, r8	@ i, tmp163
	beq	.L507	@,
.L500:
	movw	r0, #:lower16:-104726464	@,
	movt	r0, #:upper16:-104726464	@,
	bl	MEM_ReadPhyWord	@
	add	r7, r7, #1	@ tmp164, i,
	add	r7, r7, #1	@ i, tmp164,
	tst	r0, #2	@,
	movw	r0, #:lower16:-104726464	@,
	movt	r0, #:upper16:-104726464	@,
	bne	.L508	@,
.L499:
	ldr	lr, [r4, #-4076]	@ pScdResetReg, pScdResetReg
	bic	r5, r5, #16	@ tmp154, reg,
	and	r1, r6, #1	@, D.35357,
	str	r5, [lr, #0]	@ tmp154,* pScdResetReg
	ldr	ip, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, ip, #28	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@ D.35356,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L507:
	movw	r1, #:lower16:.LC102	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC102	@,
	bl	dprint_vfmw	@
	b	.L499	@
.L506:
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35356,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
.LFB1385:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp142,
	movt	r3, #:upper16:.LANCHOR1	@ tmp142,
	mov	r2, #0	@ ivtmp.2473,
	movw	r0, #:lower16:.LANCHOR0	@ tmp156,
	movw	r1, #:lower16:290464	@ tmp160,
	ldr	r4, [r3, #-4084]	@ pretmp.2448, s_SCDInISR
	movt	r0, #:upper16:.LANCHOR0	@ tmp156,
	movt	r1, #:upper16:290464	@ tmp160,
	mov	lr, r2	@ tmp158, ivtmp.2473
.L512:
	add	ip, r0, r2	@ tmp144, tmp156, ivtmp.2473
	add	r3, ip, #131072	@ D.40490, tmp144,
	add	r3, r3, #320	@ D.40490, D.40490,
	ldr	ip, [r3, #0]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	beq	.L510	@,
	cmp	r4, #0	@ pretmp.2448,
	str	lr, [r3, #0]	@ tmp158, <variable>.Mode
	bne	.L521	@,
.L510:
	add	r2, r2, #144384	@ ivtmp.2473, ivtmp.2473,
	add	r2, r2, #848	@ ivtmp.2473, ivtmp.2473,
	cmp	r2, r1	@ ivtmp.2473, tmp160
	bne	.L512	@,
	bl	ResetSCD	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movw	r1, #:lower16:290536	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	movt	r1, #:upper16:290536	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L521:
	mov	r3, #2	@ i,
.L511:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L511	@,
	b	.L510	@
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1395:
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
	mov	r4, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:145232	@ tmp143,
	movt	r2, #:upper16:145232	@ tmp143,
	mov	r5, r0	@ CurTime,
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	mla	r3, r2, r4, r0	@ tmp144, tmp143, SmID, tmp140
	ldrsb	r6, [r3, #43]	@ <variable>.InsertNewSegFlag, <variable>.InsertNewSegFlag
	cmp	r6, #1	@ <variable>.InsertNewSegFlag,
	beq	.L529	@,
.L523:
	mov	r6, #0	@ prephitmp.2499,
.L524:
	movw	r4, #:lower16:.LANCHOR1	@ tmp157,
	movt	r4, #:upper16:.LANCHOR1	@ tmp157,
	ldr	r3, [r4, #-4072]	@ LastEventTime.498, LastEventTime
	cmp	r5, r3	@ CurTime, LastEventTime.498
	strls	r5, [r4, #-4072]	@ CurTime, LastEventTime
	movls	r3, #1	@ prephitmp.2488,
	bls	.L526	@,
	rsb	r1, r3, r5	@ tmp148, LastEventTime.498, CurTime
	cmp	r1, #1	@ tmp148,
	movls	r3, #0	@, prephitmp.2488
	movhi	r3, #1	@, prephitmp.2488
.L526:
	tst	r3, r6	@ prephitmp.2488, prephitmp.2499
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-4072]	@ CurTime, LastEventTime
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L529:
	mov	r0, r4	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L523	@,
	mov	r0, r4	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L524	@,
	b	.L523	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1394:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	mov	r6, r0	@ SmID, SmID
	add	r4, r5, #286720	@ tmp138, tmp137,
	mov	r7, r1	@ StreamID, StreamID
	add	r4, r4, #3808	@ tmp138, tmp138,
	mov	r0, r4	@, tmp138
	bl	OSAL_LockIRQ	@
	movw	ip, #:lower16:145232	@ tmp151,
	movt	ip, #:upper16:145232	@ tmp151,
	mov	r1, r7	@, StreamID
	mul	r3, ip, r6	@ tmp141, tmp151, SmID
	add	r2, r3, #57344	@ tmp143, tmp141,
	add	r0, r2, #208	@ tmp143, tmp143,
	add	r0, r5, r0	@, tmp137, tmp143
	bl	ReleaseStreamSeg	@
	mov	r5, r0	@ ret,
	mov	r0, r4	@, tmp138
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
.LFB1387:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #24	@ tmp159,,
	mov	r5, r0	@ SmID, SmID
	mov	r0, r4	@, tmp159
	bl	OSAL_LockIRQ	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movw	r2, #:lower16:145232	@ tmp139,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:145232	@ tmp139,
	mla	r5, r2, r5, r0	@ tmp140, tmp139, SmID, tmp136
	ldr	r3, [r5, #104]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r3, #0	@ <variable>.Config.BufSize,
	beq	.L533	@,
	movw	ip, #:lower16:131392	@ tmp144,
	movt	ip, #:upper16:131392	@ tmp144,
	ldr	r1, [r5, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp156,
	streq	r1, [r5, ip]	@ tmp156, <variable>.Mode
.L533:
	mov	r0, r4	@, tmp159
	bl	OSAL_UnLockIRQ	@
	mvn	r0, #6	@,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	SM_Start, .-SM_Start
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
.LFB1373:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	mov	ip, r0	@ pStreamSegArray, pStreamSegArray
	mov	r4, r1	@ pStreamSeg, pStreamSeg
	mvneq	r0, #0	@ Ret,
	beq	.L537	@,
	movw	r2, #:lower16:73736	@ tmp151,
	movw	r3, #:lower16:73740	@ tmp152,
	movt	r2, #:upper16:73736	@ tmp151,
	movt	r3, #:upper16:73740	@ tmp152,
	ldr	r7, [ip, r2]	@ i, <variable>.Head
	ldr	r0, [ip, r3]	@ D.35853, <variable>.Tail
	cmp	r7, r0	@ i, D.35853
	beq	.L538	@,
	mov	r3, r7, asl #3	@ tmp217, i,
	add	r2, ip, r3, asl #3	@, tmp157, pStreamSegArray, tmp217,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r1, #:lower16:954437177	@ tmp218,
	movtne	r1, #:upper16:954437177	@ tmp218,
	bne	.L543	@,
	b	.L539	@
.L541:
	add	r2, ip, r3, asl #3	@, tmp164, pStreamSegArray, tmp217,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L539	@,
.L543:
	add	r7, r7, #1	@ D.35862, i,
	smull	r3, r2, r1, r7	@, tmp207, tmp218, D.35862
	mov	r3, r7, asr #31	@ tmp210, D.35862,
	rsb	r3, r3, r2, asr #8	@, i, tmp210, tmp207,
	add	r3, r3, r3, asl #3	@, tmp213, i, i,
	sub	r7, r7, r3, asl #7	@ i, D.35862, tmp213,
	cmp	r7, r0	@ i, D.35853
	mov	r3, r7, asl #3	@ tmp217, i,
	bne	.L541	@,
.L538:
	mvn	r0, #2	@ Ret,
.L537:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L539:
	add	r9, r3, #1	@ tmp168, tmp217,
	mov	r7, r7, asl #2	@ tmp181, i,
	add	r7, r7, #1	@ tmp182, tmp181,
	mov	sl, r4	@ pStreamSeg, pStreamSeg
	add	lr, ip, r9, asl #3	@, tmp170, pStreamSegArray, tmp168,
	movw	r6, #:lower16:73772	@ tmp187,
	add	r5, ip, r7, asl #4	@,, pStreamSegArray, tmp182,
	str	r5, [fp, #-48]	@, %sfp
	mov	r8, lr	@ tmp172, tmp170
	movt	r6, #:upper16:73772	@ tmp187,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp172,,,,
	movw	r5, #:lower16:73776	@ tmp190,
	movt	r5, #:upper16:73776	@ tmp190,
	mov	r4, r8	@ tmp219, tmp172
	stmia	sl!, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	mov	r9, sl	@ pStreamSeg, pStreamSeg
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp219,,,,
	mov	r8, r4	@ tmp221, tmp219
	stmia	r9!, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	mov	r4, r9	@ pStreamSeg, pStreamSeg
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	r4, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	mov	r1, #2	@ tmp179,
	strb	r1, [lr, #4]	@ tmp179, <variable>.SegState
	movw	r1, #:lower16:.LC103	@,
	ldr	r0, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC103	@,
	ldr	r4, [ip, r6]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	ldr	r2, [ip, r5]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	ldr	r3, [r0, #4]	@ D.35866, <variable>.LenInByte
	mov	r0, #26	@,
	sub	r2, r2, #1	@ D.35869, <variable>.SegFreshNum,
	rsb	r4, r3, r4	@ D.35867, D.35866, <variable>.SegFreshSize
	bic	r2, r2, r2, asr #31	@ tmp195, D.35869
	bic	r4, r4, r4, asr #31	@ tmp193, D.35867
	str	r2, [ip, r5]	@ tmp195, <variable>.SegFreshNum
	str	r4, [ip, r6]	@ tmp193, <variable>.SegFreshSize
	ldr	r2, [ip, r7, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldrb	ip, [lr, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Ret,
	b	.L537	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
.LFB1372:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	mov	r4, r1	@ pStreamSeg, pStreamSeg
	mov	ip, r0	@ pStreamSegArray, pStreamSegArray
	movne	r2, #0	@,
	moveq	r2, #1	@,
	mvneq	r8, #0	@ Ret,
	str	r2, [fp, #-52]	@, %sfp
	beq	.L548	@,
	movw	r6, #:lower16:73740	@ tmp146,
	movt	r6, #:upper16:73740	@ tmp146,
	movw	r7, #:lower16:954437177	@ tmp150,
	movw	r5, #:lower16:73736	@ tmp158,
	ldr	r8, [r0, r6]	@ D.35819, <variable>.Tail
	movt	r5, #:upper16:73736	@ tmp158,
	movt	r7, #:upper16:954437177	@ tmp150,
	add	r3, r8, #1	@ tmp147, D.35819,
	ldr	r1, [r0, r5]	@ <variable>.Head, <variable>.Head
	smull	r5, r0, r7, r3	@, tmp149, tmp150, tmp147
	mov	r2, r3, asr #31	@ tmp152, tmp147,
	rsb	r5, r2, r0, asr #8	@, tmp148, tmp152, tmp149,
	add	r0, r5, r5, asl #3	@, tmp155, tmp148, tmp148,
	sub	r3, r3, r0, asl #7	@ tmp157, tmp147, tmp155,
	cmp	r3, r1	@ tmp157, <variable>.Head
	mvneq	r8, #3	@ Ret,
	beq	.L548	@,
	mov	r9, r4	@ pStreamSeg, pStreamSeg
	add	r5, ip, r8, asl #6	@, tmp162, pStreamSegArray, D.35819,
	ldmia	r9!, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	add	r5, r5, #8	@ tmp163, tmp162,
	add	r8, ip, r8, asl #6	@,, pStreamSegArray, D.35819,
	movw	sl, #:lower16:73764	@,
	str	r8, [fp, #-64]	@, %sfp
	movt	sl, #:upper16:73764	@,
	str	sl, [fp, #-60]	@, %sfp
	movw	r8, #:lower16:73772	@,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp163,,,,
	str	r5, [fp, #-48]	@ tmp163, %sfp
	ldmia	r9!, {r0, r1, r2, r3}	@ pStreamSeg,,,,
	ldr	r5, [fp, #-48]	@, %sfp
	movt	r8, #:upper16:73772	@,
	str	r8, [fp, #-56]	@, %sfp
	ldr	r8, [fp, #-52]	@ Ret, %sfp
	movw	sl, #:lower16:73768	@ tmp200,
	movt	sl, #:upper16:73768	@ tmp200,
	str	r9, [fp, #-72]	@ pStreamSeg, %sfp
	movw	r9, #:lower16:73776	@ tmp210,
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	str	r5, [fp, #-52]	@, %sfp
	ldr	r5, [fp, #-72]	@, %sfp
	movt	r9, #:upper16:73776	@ tmp210,
	ldmia	r5!, {r0, r1, r2, r3}	@,,,,
	str	r5, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-52]	@, %sfp
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	str	r5, [fp, #-72]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	ldmia	r5, {r0, r1, r2, r3}	@,,,,
	ldr	r5, [fp, #-72]	@, %sfp
	stmia	r5, {r0, r1, r2, r3}	@,,,,
	ldr	r5, [ip, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r1, #1	@ tmp174,
	add	r2, ip, r5, asl #6	@, tmp171, pStreamSegArray, <variable>.Tail,
	strb	r1, [r2, #12]	@ tmp174, <variable>.SegState
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r3, [ip, r6]	@ <variable>.Tail, <variable>.Tail
	str	r3, [r0, #24]	@ <variable>.Tail, <variable>.StreamID
	ldr	r5, [ip, r6]	@ <variable>.Tail, <variable>.Tail
	ldr	r2, [fp, #-56]	@, %sfp
	add	r3, r5, #1	@ tmp184, <variable>.Tail,
	ldr	r0, [ip, sl]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	ldr	r1, [ip, r9]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	ldr	r5, [ip, r2]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	smull	r2, r7, r7, r3	@, tmp186, tmp150, tmp184
	mov	r2, r3, asr #31	@ tmp189, tmp184,
	add	r1, r1, #1	@ tmp213, <variable>.SegFreshNum,
	rsb	r7, r2, r7, asr #8	@, tmp190, tmp189, tmp186,
	add	r7, r7, r7, asl #3	@, tmp193, tmp190, tmp190,
	sub	r7, r3, r7, asl #7	@ tmp195, tmp184, tmp193,
	str	r7, [ip, r6]	@ tmp195, <variable>.Tail
	ldr	r2, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r2, r3	@ tmp199, <variable>.LenInByte, <variable>.PhyAddr
	ldr	r2, [fp, #-60]	@, %sfp
	str	r3, [ip, r2]	@ tmp199, <variable>.SegBufWriteAddr
	ldr	r3, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, r3, r0	@ tmp204, <variable>.LenInByte, <variable>.SegTotalSize
	str	r2, [ip, sl]	@ tmp204, <variable>.SegTotalSize
	ldr	r3, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r1, [ip, r9]	@ tmp213, <variable>.SegFreshNum
	ldr	r1, [fp, #-56]	@, %sfp
	add	r5, r3, r5	@ tmp209, <variable>.LenInByte, <variable>.SegFreshSize
	str	r5, [ip, r1]	@ tmp209, <variable>.SegFreshSize
.L548:
	mov	r0, r8	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
.LFB1409:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #268
	sub	sp, sp, #268	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrsb	r3, [r0, #5]	@ <variable>.IsWaitSCD, <variable>.IsWaitSCD
	mov	r4, r0	@ pScdInstance, pScdInstance
	cmp	r3, #0	@ <variable>.IsWaitSCD,
	beq	.L552	@,
	movw	r5, #:lower16:131304	@ tmp183,
	movt	r5, #:upper16:131304	@ tmp183,
	ldr	r0, [r0, r5]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	moveq	r0, #2	@ tmp186,
	streq	r0, [r4, r5]	@ tmp186, <variable>.SmPushRaw.PushRawOver
	mvneq	r5, #6	@ Ret,
	beq	.L554	@,
	sub	r7, fp, #156	@ tmp497,,
	movw	r0, #:lower16:-104726496	@,
	movt	r0, #:upper16:-104726496	@,
	sub	r6, fp, #92	@ tmp192,,
	bl	MEM_ReadPhyWord	@
	mov	r3, #2	@ tmp189,
	mov	r0, r7	@, tmp497
	str	r3, [r4, r5]	@ tmp189, <variable>.SmPushRaw.PushRawOver
	mov	r1, #64	@,
	movw	r5, #:lower16:145228	@ tmp195,
	bl	__memzero	@
	movt	r5, #:upper16:145228	@ tmp195,
	sub	r0, fp, #220	@,,
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, r6	@, tmp192
	bl	__memzero	@
	mov	ip, #0	@ tmp193,
	str	ip, [fp, #-64]	@ tmp193, TmpAddr
	mov	r0, r6	@, tmp192
	str	ip, [fp, #-60]	@ tmp193, SegFreeBufLen
	ldr	r2, [r4, r5]	@, <variable>.UpMsgStepNum
	str	r2, [fp, #-228]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	r1, [fp, #-92]	@ SmStateReg.Scdover, SmStateReg.Scdover
	cmp	r1, #0	@ SmStateReg.Scdover,
	bne	.L601	@,
.L552:
	mvn	r5, #6	@ Ret,
.L554:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L601:
	ldr	lr, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	lr, #0	@ SmStateReg.ScdRollAddr,
	beq	.L552	@,
	add	sl, r4, #57344	@, pScdInstance,
	ldr	r5, [fp, #-80]	@, SmStateReg.ScdNum
	add	r9, sl, #168	@,,
	str	r9, [fp, #-232]	@, %sfp
	cmp	r9, #0	@,
	str	r5, [fp, #-240]	@, %sfp
	str	r5, [fp, #-48]	@, ScdSegNum
	beq	.L593	@,
	movw	r0, #:lower16:131264	@ tmp200,
	movw	sl, #:lower16:131268	@ tmp203,
	movt	r0, #:upper16:131264	@ tmp200,
	movt	sl, #:upper16:131268	@ tmp203,
	ldr	r8, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r6, [r4, sl]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r8, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r6, [fp, #-56]	@ <variable>.StreamSegArray.SegBufSize,
.L593:
	movw	r0, #:lower16:-104726496	@,
	movt	r0, #:upper16:-104726496	@,
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:131328	@ tmp207,
	movw	sl, #:lower16:131264	@ tmp211,
	movt	r5, #:upper16:131328	@ tmp207,
	movt	sl, #:upper16:131264	@ tmp211,
	ldr	r3, [fp, #-52]	@ SegBufAddr, SegBufAddr
	ldr	r1, [r4, r5]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	movw	r2, #57512	@ tmp210,
	ldr	r5, [fp, #-56]	@ SegBufLength, SegBufLength
	ldr	r8, [r4, sl]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	sl, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	lr, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r6, r8, r3	@ tmp212, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	ldr	r8, [fp, #-48]	@ ScdSegNum, ScdSegNum
	add	ip, lr, r6	@ tmp216, <variable>.StreamSegArray.pSegBufVirAddr, tmp212
	str	r1, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	str	ip, [r4, #8]	@ tmp216, <variable>.SegFilter.pSegBufVirAddr
	cmp	r8, #1152	@ ScdSegNum,
	movlt	r6, r8	@ D.37125, ScdSegNum
	movge	r6, #1152	@ D.37125,
	str	r5, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	str	sl, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	str	r3, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	and	r2, r0, #15	@ tmp206,,
	movw	r0, #:lower16:-104726516	@,
	str	r2, [r4, #16]	@ tmp206, <variable>.SegFilter.ProtocolType
	movt	r0, #:upper16:-104726516	@,
	bl	MEM_ReadPhyWord	@
	add	r1, r0, r0, lsr #31	@, tmp223,,,
	cmp	r6, r1, asr #1	@ D.37125, tmp223,
	bgt	.L602	@,
	ldr	r3, [fp, #-48]	@ ScdSegNum, ScdSegNum
	cmp	r3, #1152	@ ScdSegNum,
	movge	r3, #1152	@ iftmp.546,
.L557:
	add	ip, r4, #131072	@ D.37133, pScdInstance,
	add	r1, r4, #8	@, pScdInstance,
	str	r1, [fp, #-256]	@, %sfp
	add	r6, ip, #284	@ D.37133, D.37133,
	str	r3, [r4, #40]	@ iftmp.546, <variable>.SegFilter.SegNum
	sub	r2, fp, #68	@,,
	ldr	r8, [fp, #-228]	@, %sfp
	mov	r1, r6	@, D.37133
	ldr	r0, [fp, #-256]	@, %sfp
	sub	r3, fp, #48	@,,
	str	r8, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	subs	r5, r0, #0	@ Ret,
	bne	.L552	@,
	ldr	r3, [fp, #-48]	@ ScdSegNum.2652, ScdSegNum
	add	r9, r4, #144	@, pScdInstance,
	str	r9, [fp, #-260]	@, %sfp
	cmp	r3, #1	@ ScdSegNum.2652,
	ble	.L603	@,
	strb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movw	r0, #:lower16:-104726516	@,
	movt	r0, #:upper16:-104726516	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, [fp, #-48]	@ ScdSegNum.2654, ScdSegNum
	add	r9, r0, r0, lsr #31	@, tmp262,,,
	cmp	r3, r9, asr #1	@ ScdSegNum.2654, tmp262,
	bge	.L564	@,
	ldr	lr, [fp, #-228]	@, %sfp
	sub	r3, r3, #1	@ prephitmp.2627, ScdSegNum.2654,
	str	r3, [fp, #-48]	@ prephitmp.2627, ScdSegNum
	mul	r2, lr, r3	@ tmp264,, prephitmp.2627
	add	r0, r2, #32768	@ tmp265, tmp264,
	add	r1, r0, #71	@ tmp265, tmp265,
	add	sl, r4, r1, asl #2	@, tmp269, pScdInstance, tmp265,
	ldr	r8, [sl, #4]	@, <variable>.TransFormSeg
	str	r8, [fp, #-280]	@, %sfp
.L565:
	ldr	r1, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r1, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L568	@,
	ldr	r6, [fp, #-48]	@, ScdSegNum
	str	r6, [fp, #-268]	@, %sfp
.L569:
	movw	r3, #:lower16:131252	@ tmp282,
	movt	r3, #:upper16:131252	@ tmp282,
	add	r9, r4, #144384	@, pScdInstance,
	mov	r2, #0	@,
	add	r8, r9, #808	@,,
	str	r2, [fp, #-252]	@, %sfp
	str	r8, [fp, #-248]	@, %sfp
	movw	r9, #:lower16:131264	@,
	movw	ip, #:lower16:131248	@,
	movt	r9, #:upper16:131264	@,
	movt	ip, #:upper16:131248	@,
	str	r9, [fp, #-244]	@, %sfp
	str	ip, [fp, #-264]	@, %sfp
	mov	r0, #1	@ ivtmp.2645,
	ldr	lr, [r4, r3]	@, <variable>.StreamSegArray.Tail
	mov	sl, r2	@ i,
	ldr	r3, [fp, #-268]	@ prephitmp.2693, %sfp
	mov	ip, r0	@ ivtmp.2645, ivtmp.2645
	str	r5, [fp, #-272]	@ Ret, %sfp
	mov	r5, r4	@ pScdInstance, pScdInstance
	str	lr, [fp, #-276]	@, %sfp
.L570:
	cmp	sl, r3	@ i, prephitmp.2693
	bge	.L604	@,
	ldr	r3, [fp, #-228]	@, %sfp
	add	r2, ip, r3	@, ivtmp.2645,
	add	ip, ip, #32768	@ tmp492, ivtmp.2645,
	add	r8, r2, #32768	@ tmp291,,
	str	r2, [fp, #-224]	@, %sfp
	add	r6, r8, #69	@ tmp291, tmp291,
	add	r1, r5, ip, asl #2	@, tmp288, pScdInstance, tmp492,
	ldr	r3, [fp, #-52]	@ prephitmp.2704, SegBufAddr
	add	r8, sl, #1	@, i,
	add	r0, r5, r6, asl #2	@, tmp295, pScdInstance, tmp291,
	str	r8, [fp, #-236]	@, %sfp
	ldr	r6, [r1, #280]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldr	r1, [r0, #4]	@, <variable>.TransFormSeg
	cmp	r3, r1	@ prephitmp.2704,
	str	r1, [fp, #-296]	@, %sfp
	ldreq	r4, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldrne	r9, [fp, #-296]	@, %sfp
	rsbeq	r4, r6, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	rsbne	r4, r6, r9	@ SegPacketLen, CurrSegPhyAddr,
	cmp	r4, #3	@ SegPacketLen,
	ble	.L573	@,
	ldr	lr, [fp, #-212]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	lr, #0	@ LastSegPacket.PhyAddr,
	bne	.L605	@,
	ldr	r1, [r5, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r1, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L606	@,
.L579:
	ldr	r0, [fp, #-244]	@, %sfp
	movw	r1, #57512	@,
	ldr	lr, [r5, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r1, fp, #64	@,,
	ldr	r2, [r5, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r0, [fp, #-232]	@, %sfp
	rsb	r3, r2, r6	@ tmp336, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	add	r3, lr, r3	@ tmp339, <variable>.StreamSegArray.pSegBufVirAddr, tmp336
	str	r4, [fp, #-144]	@ SegPacketLen, SegPacket.LenInByte
	str	r3, [fp, #-156]	@ tmp339, SegPacket.VirAddr
	mov	r3, #1	@,
	str	ip, [fp, #-288]	@,
	strb	r3, [fp, #-151]	@, SegPacket.IsLastSeg
	str	r6, [fp, #-148]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r4, [fp, #-148]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.2674, SegFreeBufLen
	cmp	r4, #0	@ SegPacket.PhyAddr,
	ldr	ip, [fp, #-288]	@,
	bne	.L607	@,
.L580:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC112	@,
	movt	r1, #:upper16:.LC112	@,
	mov	r4, r5	@ pScdInstance, pScdInstance
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-280]	@, %sfp
	mov	r0, #0	@,
	ldr	r2, [fp, #-60]	@, SegFreeBufLen
	movw	r1, #:lower16:.LC113	@,
	movt	r1, #:upper16:.LC113	@,
	mov	r6, #1	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-151]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC107	@,
	mov	r0, #0	@,
	ldr	r2, [fp, #-148]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC107	@,
	ldr	r3, [fp, #-144]	@, SegPacket.LenInByte
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L577:
	movw	r1, #:lower16:131252	@ tmp466,
	movt	r1, #:upper16:131252	@ tmp466,
	ldr	r0, [fp, #-276]	@, %sfp
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	cmp	r3, r0	@ <variable>.StreamSegArray.Tail,
	movne	r3, #1	@ tmp468,
	moveq	r3, #0	@ tmp470,
	cmp	sl, #0	@ i,
	strb	r3, [r4, #3]	@ tmp470, <variable>.InsertNewSegFlag
	bgt	.L608	@,
	ldr	r2, [fp, #-268]	@, %sfp
	ldr	r8, [fp, #-240]	@, %sfp
	rsbs	r1, r2, #1	@ tmp485,
	movcc	r1, #0	@ tmp485
	cmp	r8, #1152	@,
	movls	r1, #0	@, tmp485,
	cmp	r1, #0	@ tmp485,
	bne	.L609	@,
.L592:
	cmp	r6, #1	@ ScdErrFlag,
	bne	.L554	@,
	b	.L552	@
.L573:
	sub	r2, r4, #1	@ tmp378, SegPacketLen,
	cmp	r2, #2	@ tmp378,
	bhi	.L582	@,
	ldr	r3, [r5, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r3, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L610	@,
.L578:
	ldr	r3, [fp, #-48]	@ prephitmp.2693, ScdSegNum
	ldr	ip, [fp, #-224]	@ ivtmp.2645, %sfp
	ldr	sl, [fp, #-236]	@ i, %sfp
	b	.L570	@
.L582:
	cmp	r4, #0	@ SegPacketLen,
	beq	.L578	@,
	ldr	r8, [r5, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r8, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L611	@,
.L583:
	ldr	r8, [fp, #-244]	@, %sfp
	movw	lr, #57512	@,
	ldr	r9, [fp, #-296]	@, %sfp
	ldr	r2, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r4, [r5, r8]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	rsb	r1, r6, r9	@ tmp409, CurrSegPhyAddr,
	ldr	r9, [r5, lr]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	lr, r1, r2	@ tmp410, tmp409, SmStateReg.ScdRollAddr
	ldr	r0, [fp, #-232]	@, %sfp
	sub	r1, fp, #64	@,,
	rsb	r4, r4, r6	@ tmp405, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	rsb	r3, r3, lr	@ tmp412, prephitmp.2704, tmp410
	str	ip, [fp, #-288]	@,
	mov	lr, #0	@,
	add	r4, r9, r4	@ tmp408, <variable>.StreamSegArray.pSegBufVirAddr, tmp405
	str	r3, [fp, #-144]	@ tmp412, SegPacket.LenInByte
	str	r4, [fp, #-156]	@ tmp408, SegPacket.VirAddr
	strb	lr, [fp, #-151]	@, SegPacket.IsLastSeg
	str	r6, [fp, #-148]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r1, [fp, #-144]	@ D.37246, SegPacket.LenInByte
	ldr	ip, [fp, #-288]	@,
	cmp	r1, #3	@ D.37246,
	ble	.L578	@,
	ldr	r8, [fp, #-232]	@, %sfp
	cmp	r8, #0	@,
	beq	.L584	@,
	ldr	r2, [fp, #-264]	@, %sfp
	movw	r9, #:lower16:131252	@,
	movt	r9, #:upper16:131252	@,
	ldr	r0, [r5, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	ldr	r3, [r5, r9]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r6, r3, r0	@, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	str	r6, [fp, #-252]	@, %sfp
	addmi	r6, r6, #1152	@,,
	strmi	r6, [fp, #-252]	@, %sfp
.L584:
	ldr	r0, [fp, #-148]	@ D.38555, SegPacket.PhyAddr
	ldr	lr, [fp, #-252]	@, %sfp
	cmp	r0, #0	@ D.38555,
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.2706, SegFreeBufLen
	rsb	r4, lr, #1152	@,,
	str	r4, [fp, #-252]	@, %sfp
	bne	.L612	@,
.L585:
	ldr	r2, [fp, #-252]	@, %sfp
	mov	r4, r5	@ pScdInstance, pScdInstance
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	cmp	r2, #1	@,
	ble	.L586	@,
	movw	r2, #2929	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	ldr	r6, [fp, #-280]	@, %sfp
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	movw	r2, #2930	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	str	r6, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-215]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	lr, [fp, #-208]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC110	@,
	movw	r2, #2931	@,
	movt	r1, #:upper16:.LC110	@,
	ldr	r3, [fp, #-212]	@, LastSegPacket.PhyAddr
	mov	r6, r0	@ ScdErrFlag,
	str	lr, [sp, #0]	@ LastSegPacket.LenInByte,
	str	ip, [sp, #4]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L577	@
.L607:
	ldr	r6, [fp, #-156]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r6, #0	@ SegPacket.VirAddr,
	beq	.L580	@,
	ldr	r4, [fp, #-144]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r2, r4	@ SegFreeBufLen.2674, SegPacket.LenInByte
	blt	.L580	@,
	add	ip, ip, #70	@ tmp345, tmp492,
	ldr	r2, [fp, #-248]	@, %sfp
	mov	r3, r7	@, tmp497
	ldr	r0, [fp, #-260]	@, %sfp
	add	r4, r5, ip, asl #2	@, tmp349, pScdInstance, tmp345,
	ldr	r1, [r4, #4]	@, <variable>.TransFormSeg
	bl	GetSegPts	@
	ldr	r0, [fp, #-232]	@, %sfp
	mov	r1, r7	@, tmp497
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L613	@,
	ldrd	r8, [fp, #-132]	@,,
	movw	r1, #:lower16:.LC111	@,
	ldr	r2, [r4, #4]	@ tmp365, <variable>.TransFormSeg
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC111	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
.L600:
	ldrb	ip, [fp, #-151]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC107	@,
	ldr	r2, [fp, #-148]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC107	@,
	ldr	r3, [fp, #-144]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L578	@
.L605:
	ldr	r3, [fp, #-208]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	sub	r2, fp, #60	@,,
	ldr	r0, [fp, #-232]	@, %sfp
	sub	r1, fp, #64	@,,
	add	r6, r3, r4	@ tmp300, LastSegPacket.LenInByte, SegPacketLen
	str	ip, [fp, #-288]	@,
	str	r6, [fp, #-208]	@ tmp300, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r4, [fp, #-212]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.556, SegFreeBufLen
	cmp	r4, #0	@ LastSegPacket.PhyAddr,
	bne	.L614	@,
.L575:
	movw	r2, #2822	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	mov	r4, r5	@ pScdInstance, pScdInstance
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	r6, [fp, #-280]	@, %sfp
	movw	r2, #2823	@,
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	str	r6, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-215]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	lr, [fp, #-208]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC110	@,
	ldr	r3, [fp, #-212]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC110	@,
	movw	r2, #2824	@,
	str	lr, [sp, #0]	@ LastSegPacket.LenInByte,
	mov	r6, #1	@ ScdErrFlag,
	str	ip, [sp, #4]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L577	@
.L614:
	ldr	ip, [fp, #-220]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	ip, #0	@ LastSegPacket.VirAddr,
	beq	.L575	@,
	ldr	r0, [fp, #-208]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r2, r0	@ SegFreeBufLen.556, LastSegPacket.LenInByte
	blt	.L575	@,
	sub	r1, fp, #220	@,,
	ldr	r0, [fp, #-232]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, #64	@,
	mov	r4, r0	@ Ret.2658,
	sub	r0, fp, #220	@,,
	bl	__memzero	@
	cmp	r4, #0	@ Ret.2658,
	ldr	ip, [fp, #-288]	@,
	bne	.L615	@,
	add	r9, r5, ip, asl #2	@, tmp315, pScdInstance, tmp492,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC106	@,
	ldr	r6, [r9, #284]	@ tmp317, <variable>.TransFormSeg
	ldrd	r8, [fp, #-196]	@ LastSegPacket.Pts,,
	mov	r2, r6	@, tmp317
	strd	r8, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	sl, [fp, #-215]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC107	@,
	ldr	r2, [fp, #-212]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC107	@,
	ldr	r3, [fp, #-208]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	str	sl, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L578	@
.L606:
	ldr	r0, [fp, #-256]	@, %sfp
	mov	r1, r7	@, tmp497
	mov	r2, sl	@, i
	ldr	r3, [fp, #-228]	@, %sfp
	str	ip, [fp, #-288]	@,
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [fp, #-288]	@,
	b	.L579	@
.L610:
	mov	r2, sl	@, i
	ldr	r3, [fp, #-228]	@, %sfp
	sub	r1, fp, #220	@,,
	ldr	r0, [fp, #-256]	@, %sfp
	str	ip, [fp, #-288]	@,
	bl	ScdParseUpMsgInfo	@
	ldr	r9, [fp, #-244]	@, %sfp
	movw	r0, #57512	@,
	ldr	sl, [r5, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r1, fp, #64	@,,
	ldr	r0, [fp, #-232]	@, %sfp
	mov	lr, #1	@,
	ldr	r2, [r5, r9]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	str	r4, [fp, #-208]	@ SegPacketLen, LastSegPacket.LenInByte
	rsb	r3, r2, r6	@ tmp385, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	add	ip, sl, r3	@ tmp388, <variable>.StreamSegArray.pSegBufVirAddr, tmp385
	strb	lr, [fp, #-215]	@, LastSegPacket.IsLastSeg
	str	ip, [fp, #-220]	@ tmp388, LastSegPacket.VirAddr
	str	r6, [fp, #-212]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r1, [fp, #-288]	@,
	sub	r3, fp, #220	@,,
	ldr	r0, [fp, #-260]	@, %sfp
	ldr	r2, [fp, #-248]	@, %sfp
	add	sl, r5, r1, asl #2	@, tmp395, pScdInstance, tmp492,
	ldr	r1, [sl, #284]	@, <variable>.TransFormSeg
	bl	GetSegPts	@
	b	.L578	@
.L604:
	mov	r4, r5	@ pScdInstance, pScdInstance
	mov	r6, #0	@ ScdErrFlag,
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	b	.L577	@
.L602:
	movw	r0, #:lower16:-104726516	@,
	movt	r0, #:upper16:-104726516	@,
	bl	MEM_ReadPhyWord	@
	add	r0, r0, r0, lsr #31	@, tmp227,,,
	mov	r3, r0, asr #1	@ iftmp.546, tmp227,
	b	.L557	@
.L612:
	ldr	r6, [fp, #-156]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r6, #0	@ SegPacket.VirAddr,
	beq	.L585	@,
	cmp	r1, r2	@ D.37246, SegFreeBufLen.2706
	bgt	.L585	@,
	ldr	r3, [fp, #-252]	@, %sfp
	cmp	r3, #1	@,
	ble	.L599	@,
	add	r9, ip, #70	@ tmp422, tmp492,
	ldr	r1, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r3, r7	@, tmp497
	ldr	r2, [fp, #-248]	@, %sfp
	add	r4, r5, r9, asl #2	@, tmp426, pScdInstance, tmp422,
	rsb	r8, r0, r1	@ tmp421, D.38555, SmStateReg.ScdRollAddr
	ldr	r0, [fp, #-260]	@, %sfp
	str	r8, [fp, #-144]	@ tmp421, SegPacket.LenInByte
	ldr	r1, [r4, #4]	@, <variable>.TransFormSeg
	bl	GetSegPts	@
	mov	r1, r7	@, tmp497
	ldr	r0, [fp, #-232]	@, %sfp
	bl	InsertStreamSeg	@
	ldrd	r8, [fp, #-132]	@,,
	ldr	r2, [r4, #4]	@ tmp438, <variable>.TransFormSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	ldrb	sl, [fp, #-151]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r2, [fp, #-148]	@, SegPacket.PhyAddr
	movw	r1, #:lower16:.LC107	@,
	ldr	r3, [fp, #-144]	@, SegPacket.LenInByte
	movt	r1, #:upper16:.LC107	@,
	str	sl, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-244]	@, %sfp
	movw	r3, #57512	@,
	ldr	sl, [fp, #-52]	@ SegBufAddr.2718, SegBufAddr
	mov	r1, r7	@, tmp497
	ldr	ip, [r5, r3]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	ldr	r6, [r5, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r8, [fp, #-296]	@, %sfp
	rsb	r2, r6, sl	@ tmp447, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.2718
	ldr	r0, [fp, #-232]	@, %sfp
	add	r9, ip, r2	@ tmp450, <variable>.StreamSegArray.pSegBufVirAddr, tmp447
	rsb	lr, sl, r8	@ tmp451, SegBufAddr.2718,
	str	r9, [fp, #-156]	@ tmp450, SegPacket.VirAddr
	mov	r9, #1	@,
	str	lr, [fp, #-144]	@ tmp451, SegPacket.LenInByte
	strb	r9, [fp, #-151]	@, SegPacket.IsLastSeg
	str	sl, [fp, #-148]	@ SegBufAddr.2718, SegPacket.PhyAddr
	bl	InsertStreamSeg	@
	b	.L600	@
.L564:
	movw	r0, #:lower16:-104726516	@,
	movt	r0, #:upper16:-104726516	@,
	bl	MEM_ReadPhyWord	@
	sub	sl, r0, #2	@ tmp272,,
	add	r8, sl, sl, lsr #31	@, tmp275, tmp272, tmp272,
	mov	r3, r8, asr #1	@ tmp276, tmp275,
	sub	r3, r3, #1	@ prephitmp.2627, tmp276,
	str	r3, [fp, #-48]	@ prephitmp.2627, ScdSegNum
	cmp	r3, #0	@ prephitmp.2627,
	strlt	r5, [fp, #-48]	@ Ret, ScdSegNum
	ldr	r9, [r4, #12]	@ <variable>.SegFilter.pScdUpMsg, <variable>.SegFilter.pScdUpMsg
	ldrge	r8, [fp, #-228]	@, %sfp
	movlt	r1, #4	@ prephitmp.2632,
	movlt	r3, r5	@ prephitmp.2627, Ret
	mulge	r2, r8, r3	@ tmp277,, prephitmp.2627
	addge	r2, r2, #1	@ tmp278, tmp277,
	movge	r1, r2, asl #2	@ prephitmp.2632, tmp278,
	ldr	ip, [r9, r1]	@,* prephitmp.2632
	str	ip, [fp, #-280]	@, %sfp
	b	.L565	@
.L609:
	mov	r2, r8	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-260]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L592	@
.L611:
	ldr	r3, [fp, #-228]	@, %sfp
	mov	r1, r7	@, tmp497
	ldr	r0, [fp, #-256]	@, %sfp
	mov	r2, sl	@, i
	str	ip, [fp, #-288]	@,
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [fp, #-52]	@ prephitmp.2704, SegBufAddr
	ldr	ip, [fp, #-288]	@,
	b	.L583	@
.L613:
	ldrb	lr, [fp, #-151]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC105	@,
	ldr	r2, [fp, #-148]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC105	@,
	ldr	r3, [fp, #-144]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	mov	r4, r5	@ pScdInstance, pScdInstance
	mov	r6, #0	@ ScdErrFlag,
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	str	lr, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L577	@
.L568:
	mov	r1, r6	@, D.37133
	mov	r0, r4	@, pScdInstance
	ldr	r2, [fp, #-232]	@, %sfp
	bl	GetNextVop	@
	str	r0, [fp, #-268]	@, %sfp
	str	r0, [fp, #-48]	@, ScdSegNum
	b	.L569	@
.L615:
	ldrb	lr, [fp, #-215]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC105	@,
	ldr	r2, [fp, #-212]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC105	@,
	ldr	r3, [fp, #-208]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	mov	r4, r5	@ pScdInstance, pScdInstance
	mov	r6, #0	@ ScdErrFlag,
	ldr	r5, [fp, #-272]	@ Ret, %sfp
	str	lr, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L577	@
.L608:
	ldr	r0, [fp, #-228]	@, %sfp
	mul	r3, r0, sl	@ tmp472,, i
	ldr	r0, [fp, #-260]	@, %sfp
	add	lr, r3, #32768	@ tmp473, tmp472,
	add	ip, lr, #71	@ tmp473, tmp473,
	add	r2, r4, ip, asl #2	@, tmp477, pScdInstance, tmp473,
	ldr	r1, [r2, #4]	@, <variable>.TransFormSeg
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L592	@,
	b	.L552	@
.L603:
	movw	ip, #:lower16:145200	@ tmp234,
	movw	r2, #:lower16:145204	@ tmp235,
	movt	ip, #:upper16:145200	@ tmp234,
	movt	r2, #:upper16:145204	@ tmp235,
	ldr	r0, [r4, ip]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	lr, [r4, r2]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	r0, lr	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	strleb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movgt	lr, #1	@ tmp238,
	strgtb	lr, [r4, #0]	@ tmp238, <variable>.SegFullFlag
	cmp	r3, #0	@ ScdSegNum.2652,
	bne	.L561	@,
	movw	r3, #:lower16:131300	@ tmp242,
	movt	r3, #:upper16:131300	@ tmp242,
	ldr	r1, [r4, r3]	@ SrcEaten.2653, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten.2653,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten.2653,
	bgt	.L563	@,
.L562:
	mov	r1, #0	@ SrcEaten,
.L563:
	ldr	r0, [fp, #-260]	@, %sfp
	bl	DeleteRawLen	@
	subs	r5, r0, #0	@ Ret,
	bne	.L552	@,
	b	.L554	@
.L561:
	cmp	r3, #1	@ ScdSegNum.2652,
	bne	.L562	@,
	movw	r5, #:lower16:131268	@ tmp244,
	movt	r5, #:upper16:131268	@ tmp244,
	movw	ip, #:lower16:131360	@ tmp243,
	movt	ip, #:upper16:131360	@ tmp243,
	ldr	r3, [r4, r5]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	mov	lr, #3	@ tmp247,
	ldr	r1, [r4, ip]	@ SrcEaten, <variable>.TransFormSeg
	movw	r5, #:lower16:131300	@ tmp252,
	movt	r5, #:upper16:131300	@ tmp252,
	mul	ip, lr, r3	@ tmp245, tmp247, <variable>.StreamSegArray.SegBufSize
	ldr	r2, [r4, r5]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	rsb	lr, r1, r2	@ tmp253, SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	cmp	ip, #0	@ tmp245,
	add	r0, ip, #3	@ tmp250, tmp245,
	movlt	ip, r0	@ tmp249, tmp250
	cmp	lr, ip, asr #2	@ tmp253, tmp249,
	ble	.L563	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	b	.L563	@
.L599:
	mov	r4, r5	@ pScdInstance, pScdInstance
	ldr	r5, [fp, #-272]	@ Ret, %sfp
.L586:
	ldrb	lr, [fp, #-151]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r2, r0	@, D.38555
	mov	r3, r1	@, D.37246
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	str	lr, [sp, #0]	@ SegPacket.IsLastSeg,
	mov	r6, #0	@ ScdErrFlag,
	bl	dprint_vfmw	@
	b	.L577	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1391:
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
	subs	r4, r1, #0	@ pStreamSeg, pStreamSeg
	mov	r8, r0	@ SmID, SmID
	mvneq	r0, #0	@ D.36293,
	bne	.L638	@,
.L618:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L638:
	movw	r2, #:lower16:145232	@ tmp168,
	movt	r2, #:upper16:145232	@ tmp168,
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	mul	r2, r2, r8	@ tmp167, tmp168, SmID
	movw	r0, #57528	@ tmp166,
	str	r1, [fp, #-52]	@, %sfp
	add	ip, r2, r1	@ tmp169, tmp167,
	add	r3, ip, #57344	@ tmp170, tmp169,
	ldr	r1, [ip, r0]	@, <variable>.RawPacketArray.Head
	add	r3, r3, #184	@ tmp170, tmp170,
	str	r1, [fp, #-60]	@, %sfp
	ldr	r1, [r3, #4]	@ D.36294, <variable>.RawPacketArray.Tail
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r1, r3	@ D.36294,
	beq	.L619	@,
	mov	r0, r3, asl #3	@,,
	str	r0, [fp, #-64]	@, %sfp
	rsb	r9, r3, r0	@ tmp181,,
	mov	sl, r2	@ tmp534, tmp167
	mov	ip, r0	@ tmp524,
	ldr	r0, [fp, #-52]	@ tmp532, %sfp
	add	r6, r2, r9, asl #3	@, tmp185, tmp167, tmp181,
	mov	r5, #1	@ rawnum,
	add	r7, r6, r0	@ tmp186, tmp185, tmp532
	ldr	r6, [r7, #192]	@ TotalSrcLength, <variable>.Length
	str	r8, [fp, #-68]	@ SmID, %sfp
	str	r4, [fp, #-72]	@ pStreamSeg, %sfp
	b	.L620	@
.L621:
	rsb	r8, r2, r2, asl #3	@, tmp550, index, index,
	cmp	r1, r9	@ D.36294, index
	ldr	r9, [r7, #192]	@, <variable>.Length
	mov	ip, r3, asl #22	@ index, D.36302,
	add	r8, sl, r8, asl #3	@, tmp552, tmp534, tmp550,
	add	r5, r5, #1	@ rawnum, rawnum,
	mov	r3, ip, lsr #22	@ index, index,
	add	r8, r8, r0	@ tmp553, tmp552, tmp532
	str	r9, [fp, #-56]	@, %sfp
	beq	.L619	@,
	mov	ip, r3, asl #3	@ tmp524, index,
	movw	r9, #1025	@,
	cmp	r5, r9	@ rawnum,
	rsb	r9, r3, ip	@, index, tmp524
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-56]	@, %sfp
	str	r5, [fp, #-56]	@ rawnum, %sfp
	add	r6, r6, r9	@ TotalSrcLength, TotalSrcLength,
	beq	.L619	@,
	ldrb	r7, [r7, #236]	@ zero_extendqisi2	@, <variable>.is_not_last_packet_flag
	ldr	r9, [fp, #-48]	@, %sfp
	str	r7, [fp, #-88]	@, %sfp
	add	r7, sl, r9, asl #3	@, tmp568, tmp534,,
	ldr	r9, [fp, #-88]	@, %sfp
	add	r7, r7, r0	@ tmp569, tmp568, tmp532
	cmp	r9, #0	@,
	beq	.L637	@,
	cmp	r1, r2	@ D.36294, index
	add	r5, r5, #1	@ rawnum, rawnum,
	ldr	r2, [r8, #192]	@ D.36304, <variable>.Length
	beq	.L619	@,
	ldrb	r8, [r8, #236]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r6, r6, r2	@ TotalSrcLength, TotalSrcLength, D.36304
	cmp	r8, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L637	@,
	ldr	r2, [fp, #-56]	@, %sfp
	cmp	r1, r3	@ D.36294, index
	add	r5, r2, #2	@ rawnum,,
	ldr	r2, [r7, #192]	@ D.36304, <variable>.Length
	beq	.L619	@,
	add	r6, r6, r2	@ TotalSrcLength, TotalSrcLength, D.36304
.L620:
	add	r7, r3, #1	@ D.36302, index,
	rsb	r8, r3, ip	@ tmp539, index, tmp524
	ldr	ip, [fp, #-52]	@, %sfp
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	mov	r9, r7, asl #22	@ index, D.36302,
	add	r2, sl, r8, asl #3	@, tmp542, tmp534, tmp539,
	add	r3, r2, ip	@ tmp543, tmp542,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	mov	r9, r9, lsr #22	@ index, index,
	add	r7, r9, #1	@ D.36302, index,
	ldrb	r8, [r3, #236]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	rsb	ip, r9, r9, asl #3	@, tmp193, index, index,
	mov	r2, r7, asl #22	@ index, D.36302,
	cmp	r8, #0	@ <variable>.is_not_last_packet_flag,
	add	r3, sl, ip, asl #3	@, tmp197, tmp534, tmp193,
	mov	r2, r2, lsr #22	@ index, index,
	add	r7, r3, r0	@ tmp198, tmp197, tmp532
	add	r3, r2, #1	@ D.36302, index,
	bne	.L621	@,
.L637:
	add	r2, sl, #57344	@ tmp220, tmp534,
	mov	lr, r4	@ tmp201, tmp201
	add	r3, r2, #208	@ tmp220, tmp220,
	add	r0, sl, #184	@ tmp216, tmp534,
	add	r1, lr, r3	@, tmp201, tmp220
	add	ip, lr, r0	@, tmp201, tmp216
	ldr	r8, [fp, #-68]	@ SmID, %sfp
	mov	r0, r1	@,
	ldr	r4, [fp, #-72]	@ pStreamSeg, %sfp
	str	r1, [fp, #-68]	@, %sfp
	str	ip, [fp, #-72]	@, %sfp
	str	lr, [fp, #-76]	@,
	bl	ResetStreamSegArray	@
	ldr	ip, [fp, #-76]	@,
	movw	r1, #:lower16:131304	@ tmp223,
	movt	r1, #:upper16:131304	@ tmp223,
	add	r3, sl, ip	@ tmp226, tmp534, tmp201
	add	r2, r3, #131072	@ tmp227, tmp226,
	add	r0, r2, #232	@ tmp227, tmp227,
	ldr	r2, [r0, #4]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, r2, #131072	@ tmp228, <variable>.StreamSegArray.SegBufSize,
	cmp	r0, r6	@ tmp228, TotalSrcLength
	blt	.L639	@,
	ldr	r2, [r3, #96]	@ prephitmp.2763, <variable>.Config.VidStd
	movw	r7, #57552	@ tmp239,
	ldr	r9, [r3, r1]	@, <variable>.StreamSegArray.SegBufPhyAddr
	cmp	r2, #10	@ prephitmp.2763,
	cmpne	r2, #12	@, prephitmp.2763,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [r3, r7]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	bne	.L623	@,
	movw	sl, #:lower16:g_VdmCharacter	@ tmp522,
	movt	sl, #:upper16:g_VdmCharacter	@ tmp522,
	movw	ip, #:lower16:145232	@ tmp275,
	movt	ip, #:upper16:145232	@ tmp275,
	ldr	lr, [sl, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r7, lr, #1	@ tmp258, g_VdmCharacter,
	streqb	r7, [r9], #1	@ tmp258,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldreq	r2, [r3, #96]	@ prephitmp.2763, <variable>.Config.VidStd
	rsb	r3, r1, r0	@ tmp272,,
	ldr	r7, [fp, #-52]	@, %sfp
	mul	r0, ip, r8	@ tmp274, tmp275, SmID
	cmp	r2, #12	@ prephitmp.2763,
	movw	ip, #:lower16:.LANCHOR0	@ tmp268,
	movt	ip, #:upper16:.LANCHOR0	@ tmp268,
	add	lr, r0, r3, asl #3	@, tmp276, tmp274, tmp272,
	add	r1, r0, r7	@ tmp294, tmp274,
	add	r2, lr, r7	@ tmp277, tmp276,
	movw	r3, #57528	@ tmp291,
	ldr	r7, [r1, r3]	@ index.2790, <variable>.RawPacketArray.Head
	ldr	lr, [r2, #188]	@, <variable>.VirAddr
	ldr	r3, [r2, #192]	@ SrcLength, <variable>.Length
	str	lr, [fp, #-88]	@, %sfp
	bne	.L625	@,
	ldr	r2, [sl, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L625	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L626	@,
	ldr	ip, [fp, #-88]	@, %sfp
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	sl, ip, #3	@,,
	str	sl, [fp, #-88]	@, %sfp
.L625:
	ldr	lr, [fp, #-48]	@, %sfp
	str	lr, [r4, #8]	@, <variable>.PhyAddr
	ldr	r0, [fp, #-48]	@, %sfp
	str	r3, [fp, #-76]	@,
	bl	MEM_Phy2Vir	@
	movw	r2, #:lower16:145232	@ tmp392,
	movt	r2, #:upper16:145232	@ tmp392,
	ldr	ip, [fp, #-60]	@, %sfp
	cmp	r5, #0	@ rawnum,
	ldr	sl, [fp, #-64]	@, %sfp
	mul	r2, r2, r8	@ tmp391, tmp392, SmID
	rsb	r3, ip, sl	@ tmp389,,
	add	ip, r2, r3, asl #3	@, tmp393, tmp391, tmp389,
	str	r0, [r4, #0]	@ D.36359, <variable>.VirAddr
	rsb	r0, r0, r9	@ tmp384, D.36359, TmpVirAddr
	str	r0, [r4, #12]	@ tmp384, <variable>.LenInByte
	ldr	r1, [fp, #-52]	@, %sfp
	add	ip, ip, r1	@ tmp394, tmp393,
	ldrd	r0, [ip, #200]	@, tmp394,
	strd	r0, [r4, #24]	@, pStreamSeg,
	ldrd	r0, [ip, #200]	@, tmp394,
	strd	r0, [r4, #32]	@, pStreamSeg,
	ldrd	r0, [ip, #216]	@, tmp394,
	strd	r0, [r4, #40]	@, pStreamSeg,
	mov	r0, #1	@ tmp421,
	strb	r0, [r4, #5]	@ tmp421, <variable>.IsLastSeg
	ldrb	r3, [ip, #237]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	strb	r3, [r4, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	ldr	r3, [fp, #-76]	@,
	beq	.L628	@,
	ldr	r1, [fp, #-88]	@, %sfp
	cmp	r1, #0	@,
	cmpne	r9, #0	@, TmpVirAddr,
	beq	.L619	@,
	str	r2, [fp, #-56]	@ tmp391, %sfp
	add	r2, ip, #224	@ tmp531, tmp394,
	str	r6, [fp, #-60]	@ TotalSrcLength, %sfp
	mov	sl, #0	@ i,
	mov	r8, r5	@ rawnum, rawnum
	mov	r0, r3	@ SrcLength, SrcLength
	mov	r6, r2	@ tmp531, tmp531
	b	.L629	@
.L630:
	adds	r9, r9, r5	@ TmpVirAddr, TmpVirAddr, SrcLength.483
	moveq	r3, #0	@, tmp444
	movne	r3, #1	@, tmp444
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r3, #0	@, tmp449
	andne	r3, r3, #1	@,, tmp449, tmp444
	cmp	r3, #0	@ tmp449,
	beq	.L619	@,
.L629:
	mov	r5, r0	@ SrcLength.483, SrcLength
	mov	r0, r9	@, TmpVirAddr
	mov	r2, r5	@, SrcLength.483
	add	sl, sl, #1	@ i, i,
	bl	memcpy	@
	add	r0, r7, #1	@ temp.2809, index.2790,
	ldr	r1, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r8, sl	@ rawnum, i
	mov	r7, r0, asl #22	@ index.2790, temp.2809,
	add	r2, r1, r5	@ tmp455, <variable>.LenInByte, SrcLength.483
	str	r2, [r4, #12]	@ tmp455, <variable>.LenInByte
	mov	r7, r7, lsr #22	@ index.2790, index.2790,
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-52]	@, %sfp
	rsb	ip, r7, r7, asl #3	@, tmp461, index.2790, index.2790,
	add	r1, r3, ip, asl #3	@, tmp465,, tmp461,
	add	r2, r1, r0	@ tmp466, tmp465,
	ldr	r0, [r2, #192]	@ SrcLength, <variable>.Length
	ldr	r1, [r2, #188]	@ SrcVirAddr, <variable>.VirAddr
	ldrd	r2, [r6]	@, <variable>.DispTime
	strd	r2, [r4, #48]	@, pStreamSeg,
	bhi	.L630	@,
	ldr	r6, [fp, #-60]	@ TotalSrcLength, %sfp
.L628:
	mov	r1, r4	@, pStreamSeg
	ldr	r0, [fp, #-68]	@, %sfp
	bl	InsertStreamSeg	@
	ldr	r0, [fp, #-72]	@, %sfp
	mov	r1, r6	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36293,
	b	.L618	@
.L619:
	mvn	r0, #3	@ D.36293,
	b	.L618	@
.L623:
	ldr	r7, [fp, #-64]	@, %sfp
	movw	r2, #57528	@ tmp515,
	ldr	r0, [fp, #-60]	@, %sfp
	rsb	r1, r0, r7	@ tmp496,,
	ldr	r7, [r3, r2]	@ index.2790, <variable>.RawPacketArray.Head
	add	r3, sl, r1, asl #3	@, tmp500, tmp534, tmp496,
	add	lr, r3, ip	@ tmp501, tmp500, tmp201
	ldr	sl, [lr, #188]	@, <variable>.VirAddr
	ldr	r3, [lr, #192]	@ SrcLength, <variable>.Length
	str	sl, [fp, #-88]	@, %sfp
	b	.L625	@
.L639:
	mov	r2, r6	@, TotalSrcLength
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-72]	@, %sfp
	mov	r1, r6	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36293,
	b	.L618	@
.L626:
	cmp	r5, #1	@ rawnum,
	beq	.L619	@,
	add	r2, r7, #1	@ temp.2795, index.2790,
	mov	r1, #56	@ tmp303,
	mov	r7, r2, asl #22	@ index.2790, temp.2795,
	mov	r7, r7, lsr #22	@ index.2790, index.2790,
	mla	lr, r1, r7, r0	@ tmp306, tmp303, index.2790, tmp274
	add	sl, lr, ip	@ tmp307, tmp306, tmp268
	ldr	lr, [sl, #192]	@ <variable>.Length, <variable>.Length
	ldr	r2, [sl, #188]	@, <variable>.VirAddr
	add	sl, r3, lr	@ SrcLength.2797, SrcLength, <variable>.Length
	cmp	sl, #2	@ SrcLength.2797,
	str	r2, [fp, #-56]	@, %sfp
	ble	.L627	@,
	add	lr, r7, #1020	@ tmp320, index.2790,
	sub	r3, sl, #3	@ SrcLength, SrcLength.2797,
	add	r2, lr, #3	@ tmp320, tmp320,
	sub	r5, r5, #1	@ rawnum, rawnum,
	mov	lr, r2, asl #22	@ tmp322, tmp320,
	mov	sl, lr, lsr #22	@ tmp322, tmp322,
	mla	r2, r1, sl, r0	@ tmp329, tmp303, tmp322, tmp274
	add	lr, r2, ip	@ tmp330, tmp329, tmp268
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	sl, [lr, #192]	@ <variable>.Length, <variable>.Length
	rsb	r1, sl, #3	@ tmp332, <variable>.Length,
	add	r0, ip, r1	@,, tmp332
	str	r0, [fp, #-88]	@, %sfp
	b	.L625	@
.L627:
	cmp	r5, #2	@ rawnum,
	beq	.L619	@,
	add	r3, r7, #1	@ temp.2799, index.2790,
	mov	r7, r3, asl #22	@ index.2790, temp.2799,
	mov	r7, r7, lsr #22	@ index.2790, index.2790,
	mla	r2, r1, r7, r0	@ tmp341, tmp303, index.2790, tmp274
	add	lr, r2, ip	@ tmp342, tmp341, tmp268
	ldr	r3, [lr, #188]	@, <variable>.VirAddr
	ldr	r2, [lr, #192]	@ <variable>.Length, <variable>.Length
	str	r3, [fp, #-56]	@, %sfp
	add	r3, sl, r2	@ SrcLength.2801, SrcLength.2797, <variable>.Length
	cmp	r3, #2	@ SrcLength.2801,
	ble	.L619	@,
	add	sl, r7, #1020	@ tmp355, index.2790,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2801,
	add	r2, sl, #3	@ tmp355, tmp355,
	add	sl, sl, #2	@ tmp370, tmp370,
	sub	r5, r5, #2	@ rawnum, rawnum,
	mov	r2, r2, asl #22	@ tmp357, tmp355,
	mov	lr, sl, asl #22	@ tmp372, tmp370,
	mov	sl, r2, lsr #22	@ tmp357, tmp357,
	mov	lr, lr, lsr #22	@ tmp372, tmp372,
	mla	r2, r1, sl, r0	@ tmp364, tmp303, tmp357, tmp274
	mla	sl, r1, lr, r0	@ tmp379, tmp303, tmp372, tmp274
	add	r0, r2, ip	@ tmp365, tmp364, tmp268
	add	r1, sl, ip	@ tmp380, tmp379, tmp268
	ldr	r2, [r0, #192]	@ <variable>.Length, <variable>.Length
	ldr	r0, [fp, #-56]	@, %sfp
	ldr	sl, [r1, #192]	@ <variable>.Length, <variable>.Length
	rsb	lr, r2, #3	@ tmp367, <variable>.Length,
	rsb	ip, sl, lr	@ tmp382, <variable>.Length, tmp367
	add	r1, r0, ip	@,, tmp382
	str	r1, [fp, #-88]	@, %sfp
	b	.L625	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadStreamSeg
	.type	SM_ReadStreamSeg, %function
SM_ReadStreamSeg:
	.fnstart
.LFB1393:
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
	subs	r7, r1, #0	@ pStreamSeg, pStreamSeg
	mov	r5, r0	@ SmID, SmID
	mvneq	r6, #0	@ ret,
	beq	.L642	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp208,
	movw	r3, #:lower16:145232	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp208,
	movt	r3, #:upper16:145232	@ tmp142,
	mla	r2, r3, r0, r4	@ tmp143, tmp142, SmID, tmp208
	ldr	r3, [r2, #96]	@ D.36466, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp145, D.36466,
	cmp	r3, #5	@ D.36466,
	cmpne	r1, #1	@, tmp145,
	bls	.L643	@,
	cmp	r3, #4	@ D.36466,
	beq	.L643	@,
	cmp	r3, #10	@ D.36466,
	beq	.L643	@,
	cmp	r3, #14	@ D.36466,
	beq	.L643	@,
	cmp	r3, #11	@ D.36466,
	beq	.L643	@,
	cmp	r3, #12	@ D.36466,
	beq	.L643	@,
	cmp	r3, #13	@ D.36466,
	beq	.L643	@,
	cmp	r3, #1	@ D.36466,
	bne	.L644	@,
	ldr	r0, [r2, #112]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L644	@,
.L643:
	mov	r0, r5	@, SmID
	mov	r1, r7	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L648	@,
.L644:
	ldr	r0, .L650	@,
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:145232	@ tmp166,
	movt	r3, #:upper16:145232	@ tmp166,
	mov	r1, r7	@, pStreamSeg
	mul	ip, r3, r5	@ tmp165, tmp166, SmID
	add	r6, ip, #57344	@ tmp167, tmp165,
	add	r2, r6, #208	@ tmp167, tmp167,
	add	r0, r4, r2	@, tmp208, tmp167
	bl	GetStreamSeg	@
	mov	r6, r0	@ ret,
	ldr	r0, .L650	@,
	bl	OSAL_UnLockIRQ	@
	cmp	r6, #0	@ ret,
	bne	.L645	@,
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp173,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp173,
	ldr	lr, [r8, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	lr, #0	@ vfmw_save_seg_file,
	beq	.L646	@,
	movw	r0, #:lower16:save_seg_chan_num	@ tmp175,
	movt	r0, #:upper16:save_seg_chan_num	@ tmp175,
	ldr	r1, [r0, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r5, r1	@ SmID, save_seg_chan_num
	beq	.L649	@,
.L646:
	movw	ip, #:lower16:145232	@ tmp203,
	movt	ip, #:upper16:145232	@ tmp203,
	mov	r1, #0	@ tmp206,
	mla	r2, ip, r5, r4	@ tmp204, tmp203, SmID, tmp208
	add	r0, r2, #144384	@ tmp205, tmp204,
	add	r4, r0, #872	@ tmp205, tmp205,
	str	r1, [r4, #4]	@ tmp206, <variable>.numReadSegFail
.L642:
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L648:
	movw	r1, #:lower16:.LC117	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC117	@,
	mvn	r6, #6	@ ret,
	bl	dprint_vfmw	@
.L645:
	movw	r3, #:lower16:145232	@ tmp188,
	movt	r3, #:upper16:145232	@ tmp188,
	mov	r0, r6	@, ret
	mla	lr, r3, r5, r4	@ tmp189, tmp188, SmID, tmp208
	add	r4, lr, #144384	@ tmp190, tmp189,
	add	r4, r4, #872	@ tmp190, tmp190,
	ldr	ip, [r4, #4]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r2, ip, #1	@ tmp198, <variable>.numReadSegFail,
	str	r2, [r4, #4]	@ tmp198, <variable>.numReadSegFail
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L649:
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, [r7, #12]	@, <variable>.LenInByte
	ldr	r2, [r8, #0]	@, vfmw_save_seg_file
	ldr	r0, [r7, #0]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L646	@
.L651:
	.align	2
.L650:
	.word	.LANCHOR0+290528
	.fnend
	.size	SM_ReadStreamSeg, .-SM_ReadStreamSeg
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
	.fnstart
.LFB1357:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.35459,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r5, #57360	@ tmp145,
	movw	r0, #57348	@ tmp154,
	ldr	r2, [r3, r5]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	ldr	ip, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	add	r2, r2, #1	@ tmp146, <variable>.CurShowIndex,
	mov	r0, r2, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r2, r2, r0	@ tmp150, tmp146, tmp149
	mov	r2, r2, asl #22	@ tmp151, tmp150,
	mov	r2, r2, lsr #22	@ tmp151, tmp151,
	rsb	r2, r0, r2	@ tmp153, tmp149, tmp151
	cmp	ip, r2	@ <variable>.Tail, tmp153
	mvneq	r0, #2	@ D.35459,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	rsb	lr, r2, r2, asl #3	@, tmp159, tmp153, tmp153,
	str	r2, [r3, r5]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #56	@,
	add	r1, r3, lr, asl #3	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.35459, tmp144
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
.LFB1356:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.35440,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	mov	r2, #57344	@ tmp145,
	movw	r0, #57348	@ tmp146,
	ldr	r0, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	ldr	r2, [r3, r2]	@ D.35441, <variable>.Head
	cmp	r2, r0	@ D.35441, <variable>.Tail
	mvneq	r0, #2	@ D.35440,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	rsb	ip, r2, r2, asl #3	@, tmp151, D.35441, D.35441,
	movw	lr, #57360	@ tmp148,
	str	r2, [r3, lr]	@ D.35441, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #56	@,
	add	r1, r3, ip, asl #3	@,, pRawStreamArray, tmp151,
	bl	memcpy	@
	mov	r0, r4	@ D.35440, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1400:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #100	@,,
	add	lr, r4, #4	@ tmp233,,
	subs	r6, r2, #0	@ pRawStreamArray, pRawStreamArray
	mov	ip, #0	@ tmp154,
	mov	sl, r0	@ pSmPushRaw, pSmPushRaw
	str	ip, [lr], #4	@ tmp154, RawPacket
	mov	r2, lr	@ tmp234, tmp233
	str	ip, [r2], #4	@ tmp154, RawPacket
	mov	r9, r1	@ SegStreamSize, SegStreamSize
	str	ip, [r2], #4	@ tmp154, RawPacket
	mov	r5, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [fp, #-100]	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2], #4	@ tmp154, RawPacket
	str	ip, [r2, #0]	@ tmp154, RawPacket
	beq	.L663	@,
	mov	r7, #57344	@ tmp168,
	movw	r1, #57348	@ tmp169,
	ldr	r0, [r6, r7]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r6, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	r0, r3	@ <variable>.Head, <variable>.Tail
	beq	.L663	@,
	movw	ip, #57356	@ tmp172,
	ldr	r8, [r6, ip]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	r4, r8	@ prephitmp.2900, FirstRawOffset
.L664:
	sub	r1, fp, #100	@,,
	mov	r0, r6	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r7, [fp, #-92]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [fp, #-96]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp179,
	rsb	r7, r8, r7	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	ip, [fp, #-100]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	cmp	r7, r9	@ RawShowTotalLen, SegStreamSize
	movgt	r1, #0	@, tmp187
	movle	r1, #1	@, tmp187
	add	r4, r3, r4	@ tmp177, RawPacket.VirAddr, prephitmp.2900
	cmp	r1, r2	@ tmp187,
	str	r4, [fp, #-96]	@ tmp177, RawPacket.VirAddr
	add	r8, ip, r8	@ tmp175, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r7	@ RawPacket.Length, RawShowTotalLen
	moveq	r4, r1	@ PushRawNum, tmp187
	str	r8, [fp, #-100]	@ tmp175, RawPacket.PhyAddr
	str	r2, [r5, #0]	@ tmp179,* pDownMsgVirAddr
	moveq	r8, r4	@ j.2942, PushRawNum
	str	r2, [r5, #4]	@ tmp179,
	str	r2, [r5, #8]	@ tmp179,
	str	r7, [fp, #-92]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [sl, #4]	@ tmp179, <variable>.PushRawTotalLen
	moveq	r2, r7	@ prephitmp.2902, RawShowTotalLen
	beq	.L666	@,
	mov	r4, r2	@ PushRawNum, tmp179
	str	r6, [fp, #-104]	@ pRawStreamArray, %sfp
	mov	r2, r7	@ prephitmp.2902, RawShowTotalLen
	mov	r8, r4	@ j.2942, PushRawNum
	b	.L669	@
.L668:
	ldr	r3, [fp, #-92]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	cmp	r4, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp204
	movle	r1, #1	@, tmp204
	add	r7, r7, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	r9, r7	@ SegStreamSize, RawShowTotalLen
	mov	r2, r3	@ prephitmp.2902, RawPacket.Length
	movlt	r1, #0	@, tmp204,
	cmp	r1, #0	@ tmp204,
	beq	.L666	@,
.L669:
	cmp	r2, #0	@ prephitmp.2902,
	add	ip, r8, #1	@ j, j.2942,
	ldr	r0, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	add	r2, ip, #1	@ j.2921, j,
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	ble	.L667	@,
	ldr	lr, [fp, #-100]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r6, #0	@,
	str	r6, [fp, #-92]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp189, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r5, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	lr, r3, #1	@ tmp192, tmp189,
	str	lr, [r5, ip, asl #2]	@ tmp192,* pDownMsgVirAddr
	add	r8, r2, #1	@ j.2942, j.2921,
	ldr	r3, [fp, #4]	@, DownMsgPhyAddr
	add	lr, r3, r8, asl #2	@, tmp194,, j.2942,
	str	lr, [r5, r2, asl #2]	@ tmp194,* pDownMsgVirAddr
.L667:
	str	r7, [sl, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L668	@,
	ldr	r2, [fp, #-92]	@ prephitmp.2902, RawPacket.Length
.L666:
	cmp	r2, #0	@ prephitmp.2902,
	beq	.L670	@,
	ldr	r3, [sl, #4]	@ D.36740, <variable>.PushRawTotalLen
	sub	ip, r9, #16	@ tmp207, SegStreamSize,
	cmp	r9, r7	@ SegStreamSize, RawShowTotalLen
	cmplt	r3, ip	@, D.36740, tmp207
	blt	.L675	@,
.L670:
	cmp	r4, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.36755,
	bne	.L671	@,
.L672:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L675:
	cmp	r4, #1024	@ PushRawNum,
	bge	.L671	@,
	rsb	r3, r3, r9	@ D.36749, D.36740, SegStreamSize
	cmp	r3, r2	@ D.36749, prephitmp.2902
	bgt	.L670	@,
	ldr	r0, [fp, #-100]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	lr, r8, #1	@ j.2930, j.2942,
	add	r2, lr, #1	@ j.2938, j.2930,
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	add	ip, r0, r3	@ tmp215, RawPacket.PhyAddr, D.36749
	str	r0, [r5, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r6, ip, #1	@ tmp218, tmp215,
	str	r6, [r5, lr, asl #2]	@ tmp218,* pDownMsgVirAddr
	add	r8, r2, #1	@ j.2942, j.2938,
	ldr	r1, [fp, #4]	@, DownMsgPhyAddr
	mov	r0, #0	@ tmp224,
	add	lr, r1, r8, asl #2	@, tmp220,, j.2942,
	str	lr, [r5, r2, asl #2]	@ tmp220,* pDownMsgVirAddr
	ldr	r2, [sl, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	str	r0, [fp, #-92]	@ tmp224, RawPacket.Length
	add	r6, r2, r3	@ tmp223, <variable>.PushRawTotalLen, D.36749
	str	r6, [sl, #4]	@ tmp223, <variable>.PushRawTotalLen
.L671:
	sub	r8, r8, #1	@ tmp225, j.2942,
	ldr	r0, [fp, #4]	@, DownMsgPhyAddr
	mov	r6, #0	@ tmp226,
	mov	r3, #1	@ tmp227,
	str	r6, [r5, r8, asl #2]	@ tmp226,* pDownMsgVirAddr
	mov	r1, r5	@, pDownMsgVirAddr
	mov	r2, r4	@, PushRawNum
	str	r4, [sl, #0]	@ PushRawNum, <variable>.PushRawNum
	str	r3, [sl, #8]	@ tmp227, <variable>.PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r6	@ D.36755, tmp226
	b	.L672	@
.L663:
	mov	r4, #0	@ prephitmp.2900,
	mov	r8, r4	@ FirstRawOffset, prephitmp.2900
	b	.L664	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
.LFB1401:
	@ args = 8, pretend = 0, frame = 0
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
	mov	r5, r1	@ pSmPushRaw, pSmPushRaw
	mov	r7, r2	@ SegStreamSize, SegStreamSize
	mov	r6, r3	@ pRawStreamArray, pRawStreamArray
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	bl	ResetSCD	@
	ldr	ip, [fp, #8]	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r0, r5	@, pSmPushRaw
	mov	r1, r7	@, SegStreamSize
	mov	r2, r6	@, pRawStreamArray
	ldr	r3, [fp, #4]	@, pDownMsgVirAddr
	str	ip, [sp, #0]	@ DownMsgPhyAddr,
	bl	WriteScdMsg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L677	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L677:
	mov	r0, r5	@, Ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	ScdDriver, .-ScdDriver
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
.LFB1398:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	adds	r6, r0, #144	@ pRawStreamArray, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	ldr	r5, [r0, #56]	@ StdType, <variable>.Config.VidStd
	bne	.L699	@,
.L680:
	mvn	r5, #0	@ Ret,
.L691:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L699:
	add	r7, r0, #57344	@ pStreamSegArray, pScdInstance,
	add	r7, r7, #168	@ pStreamSegArray, pStreamSegArray,
	cmp	r7, #0	@ pStreamSegArray,
	beq	.L680	@,
	add	r3, r0, #131072	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, r3, #224	@,,
	mov	lr, #0	@ tmp149,
	movw	sl, #57492	@ tmp153,
	str	lr, [fp, #-52]	@ tmp149, FreeSegBufAddr
	str	lr, [fp, #-48]	@ tmp149, SegStreamSize
	bl	__memzero	@
	movw	ip, #57488	@ tmp154,
	ldr	r8, [r4, sl]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	r2, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	subs	r8, r8, r2	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	addmi	r8, r8, #1024	@ StreamNum, StreamNum,
	mov	r2, r8	@, StreamNum
	bl	dprint_vfmw	@
	movw	r1, #57508	@ tmp158,
	movw	r0, #57500	@ tmp159,
	ldr	sl, [r4, r1]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	subs	sl, sl, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L680	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC121	@,
	mov	r2, sl	@, RawStreamSize
	movt	r1, #:upper16:.LC121	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ StreamNum,
	bgt	.L700	@,
.L683:
	mvn	r5, #4	@ Ret,
	b	.L691	@
.L700:
	cmp	sl, #3	@ RawStreamSize,
	ble	.L683	@,
	movw	r2, #:lower16:131252	@ tmp162,
	movw	ip, #:lower16:131248	@ tmp163,
	movt	r2, #:upper16:131252	@ tmp162,
	movt	ip, #:upper16:131248	@ tmp163,
	ldr	r1, [r4, r2]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r8, [r4, ip]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	subs	r0, r1, r8	@ StreamNum.3011, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	movw	r1, #:lower16:.LC119	@,
	addmi	r0, r0, #1152	@ StreamNum.3011, StreamNum.3011,
	movt	r1, #:upper16:.LC119	@,
	rsb	r8, r0, #1152	@ StreamNum.508, StreamNum.3011,
	mov	r0, #26	@,
	mov	r2, r8	@, StreamNum.508
	bl	dprint_vfmw	@
	cmp	r8, #288	@ StreamNum.508,
	bgt	.L701	@,
.L685:
	mvn	r5, #5	@ Ret,
	b	.L691	@
.L701:
	mov	r0, r7	@, pStreamSegArray
	sub	r1, fp, #52	@,,
	sub	r2, fp, #48	@,,
	bl	GetFreeSegBuf	@
	ldr	r1, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r2, [fp, #-52]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	r3, r1, #79	@ SegStreamSize.513, SegStreamSize,
	movw	r1, #:lower16:.LC120	@,
	add	ip, r2, #3	@ tmp169, FreeSegBufAddr,
	movt	r1, #:upper16:.LC120	@,
	mov	r2, r3	@, SegStreamSize.513
	bic	ip, ip, #3	@ tmp171, tmp169,
	str	r3, [fp, #-48]	@ SegStreamSize.513, SegStreamSize
	str	ip, [fp, #-52]	@ tmp171, FreeSegBufAddr
	bl	dprint_vfmw	@
	movw	r3, #:lower16:131268	@ tmp174,
	movt	r3, #:upper16:131268	@ tmp174,
	ldr	r0, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r3, [r4, r3]	@ D.36623, <variable>.StreamSegArray.SegBufSize
	cmp	r0, r3, asr #3	@ SegStreamSize, D.36623,
	ble	.L685	@,
	movw	r2, #:lower16:145228	@ tmp181,
	movt	r2, #:upper16:145228	@ tmp181,
	movw	r1, #:lower16:131316	@ tmp189,
	movt	r1, #:upper16:131316	@ tmp189,
	ldr	lr, [r4, r2]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movw	r2, #:lower16:131324	@ tmp191,
	movt	r2, #:upper16:131324	@ tmp191,
	movw	r7, #:lower16:131264	@ tmp177,
	movw	ip, #:lower16:131312	@ tmp187,
	movt	r7, #:upper16:131264	@ tmp177,
	mul	r0, lr, r8	@, <variable>.UpMsgStepNum, StreamNum.508
	mov	r9, lr, asl #2	@ tmp182, <variable>.UpMsgStepNum,
	movt	ip, #:upper16:131312	@ tmp187,
	cmp	r5, #1	@ StdType,
	cmpne	r5, #15	@, StdType,
	mul	r9, r8, r9	@ tmp184, StreamNum.508, tmp182
	moveq	r5, #0	@ prephitmp.2990,
	str	r0, [fp, #-104]	@, %sfp
	ldr	lr, [r4, r1]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	r1, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r2, [fp, #-52]	@, FreeSegBufAddr
	ldr	r0, [r4, r7]	@ D.38599, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r7, [r4, ip]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	str	r1, [fp, #-120]	@, %sfp
	movw	r1, #:lower16:131336	@ tmp179,
	str	r2, [fp, #-112]	@, %sfp
	movt	r1, #:upper16:131336	@ tmp179,
	movw	r2, #:lower16:131332	@ tmp180,
	movt	r2, #:upper16:131332	@ tmp180,
	add	ip, r0, r3	@, D.38599, D.36623
	str	ip, [fp, #-108]	@, %sfp
	str	r9, [r4, r2]	@ tmp184, <variable>.BufAddrCfg.UpMsgSize
	mov	r2, #1	@ tmp185,
	str	r8, [r4, r1]	@ StreamNum.508, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [fp, #-92]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, ScdCtrlReg.pDownMsgVirAddr
	ldr	lr, [fp, #-120]	@, %sfp
	ldr	r1, [fp, #-104]	@, %sfp
	ldr	ip, [fp, #-108]	@, %sfp
	str	lr, [fp, #-88]	@, ScdCtrlReg.UpMsgPhyAddr
	ldr	lr, [fp, #-112]	@, %sfp
	str	r7, [fp, #-96]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, ScdCtrlReg.DownMsgPhyAddr
	str	r1, [fp, #-80]	@, ScdCtrlReg.UpLen
	str	ip, [fp, #-72]	@, ScdCtrlReg.BufferLast
	str	lr, [fp, #-68]	@, ScdCtrlReg.BufferIni
	str	r3, [fp, #-56]	@ D.36623,
	strb	r2, [fp, #-98]	@ tmp185, ScdCtrlReg.ScdStart
	str	r0, [fp, #-76]	@ D.38599, ScdCtrlReg.BufferFirst
	strb	r2, [fp, #-100]	@ tmp185, ScdCtrlReg.ScdIntMask
	beq	.L690	@,
	cmp	r5, #6	@ StdType,
	beq	.L698	@,
	sub	r3, r5, #2	@ tmp212, StdType,
	cmp	r3, #1	@ tmp212,
	bls	.L698	@,
.L690:
	mov	r1, #0	@ tmp215,
	strb	r1, [fp, #-99]	@ tmp215, ScdCtrlReg.SliceCheckFlag
.L688:
	movw	r2, #:lower16:131316	@ tmp221,
	movw	r3, #:lower16:131312	@ tmp223,
	movt	r2, #:upper16:131316	@ tmp221,
	movt	r3, #:upper16:131312	@ tmp223,
	add	r0, r4, #131072	@, pScdInstance,
	ldr	ip, [r4, r2]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	add	r1, r0, #224	@,,
	ldr	lr, [r4, r3]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	sub	r0, fp, #100	@,,
	mov	r3, r6	@, pRawStreamArray
	ldr	r2, [fp, #-48]	@, SegStreamSize
	str	r5, [fp, #-64]	@ prephitmp.2990, ScdCtrlReg.ScdProtocol
	mov	r6, #1	@ tmp217,
	stmia	sp, {ip, lr}	@ phole stm
	str	r6, [fp, #-60]	@ tmp217, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r5, r0, #0	@ Ret,
	bne	.L691	@,
	ldr	lr, [fp, #-48]	@ SegStreamSize, SegStreamSize
	movw	r0, #:lower16:145200	@ tmp227,
	movw	ip, #:lower16:145204	@ tmp228,
	movt	r0, #:upper16:145200	@ tmp227,
	movt	ip, #:upper16:145204	@ tmp228,
	cmp	lr, sl	@ SegStreamSize, RawStreamSize
	strb	r6, [r4, #5]	@ tmp217, <variable>.IsWaitSCD
	strgeb	r6, [r4, #2]	@ tmp217, <variable>.LastCfgAllRawFlag
	mov	r6, #0	@ tmp235,
	str	sl, [r4, r0]	@ RawStreamSize, <variable>.PrevCfgRawSize
	str	lr, [r4, ip]	@ SegStreamSize, <variable>.PrevCfgSegSize
	strltb	r5, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r6, [r4, #4]	@ tmp235, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:145224	@ tmp237,
	movt	r1, #:upper16:145224	@ tmp237,
	strb	r6, [r4, #3]	@ tmp235, <variable>.InsertNewSegFlag
	str	r0, [r4, r1]	@, <variable>.LastSCDStartTime
	b	.L691	@
.L698:
	strb	r2, [fp, #-99]	@ tmp185, ScdCtrlReg.SliceCheckFlag
	b	.L688	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1418:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #:lower16:.LANCHOR1	@ tmp547,
	movt	r6, #:upper16:.LANCHOR1	@ tmp547,
	str	r0, [fp, #-80]	@ pNextInstId, %sfp
	ldr	r3, [r6, #-4088]	@ s_eScdDrvSleepStage.601, s_eScdDrvSleepStage
	cmp	r3, #0	@ s_eScdDrvSleepStage.601,
	beq	.L703	@,
	cmp	r3, #1	@ s_eScdDrvSleepStage.601,
	moveq	r3, #2	@ tmp161,
	mvneq	r0, #2	@ D.37804,
	streq	r3, [r6, #-4088]	@ tmp161, s_eScdDrvSleepStage
	beq	.L705	@,
.L704:
	mvn	r0, #2	@ D.37804,
.L705:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L703:
	movw	r5, #:lower16:.LANCHOR0	@ tmp546,
	movw	r1, #:lower16:290516	@ tmp163,
	movt	r5, #:upper16:.LANCHOR0	@ tmp546,
	movt	r1, #:upper16:290516	@ tmp163,
	sub	r7, fp, #76	@ tmp543,,
	ldr	lr, [r5, r1]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	mov	r1, r7	@, tmp543
	add	ip, lr, #1	@ tmp164, s_SmIIS.ThisInstID,
	mov	r0, ip, lsr #31	@ tmp167, tmp164,
	add	r2, ip, r0	@ tmp168, tmp164, tmp167
	and	r4, r2, #1	@ tmp169, tmp168,
	rsb	r4, r0, r4	@ NextInstId, tmp167, tmp169
	mov	r0, r4	@, NextInstId
	bl	SM_GetInfo	@
	ldrsb	r3, [fp, #-76]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L706	@,
	movw	r3, #:lower16:145232	@ tmp176,
	movt	r3, #:upper16:145232	@ tmp176,
	mla	r2, r3, r4, r5	@ tmp177, tmp176, NextInstId, tmp546
	ldr	r3, [r2, #96]	@ temp.3044, <variable>.Config.VidStd
	sub	r0, r3, #8	@ tmp179, temp.3044,
	cmp	r3, #5	@ temp.3044,
	cmpne	r0, #1	@, tmp179,
	bls	.L706	@,
	cmp	r3, #1	@ temp.3044,
	beq	.L741	@,
	cmp	r3, #11	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #14	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #4	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #12	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #10	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #13	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #18	@ temp.3044,
	beq	.L706	@,
	cmp	r3, #17	@ temp.3044,
	beq	.L709	@,
.L736:
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	bl	PrintScdRawState	@
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	bl	PrintScdSegState	@
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:145232	@ tmp190,
	movt	r3, #:upper16:145232	@ tmp190,
	movw	ip, #:lower16:145264	@ tmp188,
	movt	ip, #:upper16:145264	@ tmp188,
	mla	r2, r3, r4, r5	@ tmp191, tmp190, NextInstId, tmp546
	ldr	r1, [r2, ip]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r1, r0, r1	@ WaitTime.3052, temp.3049, <variable>.LastSCDStartTime
	strmi	r0, [r2, ip]	@ temp.3049, <variable>.LastSCDStartTime
	movw	r0, #:lower16:145232	@ tmp197,
	movt	r0, #:upper16:145232	@ tmp197,
	movmi	r1, #200	@ WaitTime.3052,
	mla	lr, r0, r4, r5	@ tmp198, tmp197, NextInstId, tmp546
	add	r3, lr, #40	@ tmp199, tmp198,
	ldrsb	r2, [r3, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	cmp	r2, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L711	@,
.L718:
	movw	r8, #:lower16:145232	@ tmp204,
	movt	r8, #:upper16:145232	@ tmp204,
	movw	sl, #:lower16:.LANCHOR0	@ tmp201,
	movt	sl, #:upper16:.LANCHOR0	@ tmp201,
	mul	ip, r8, r4	@ tmp203, tmp204, NextInstId
	add	r8, ip, r5	@ tmp205, tmp203, tmp546
	add	r3, r8, #40	@ tmp545, tmp205,
	ldrsb	r9, [r8, #40]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r9, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp235,
	strneb	r2, [r3, #1]	@ tmp235, <variable>.IsCounting
	beq	.L742	@,
.L716:
	movw	sl, #:lower16:145232	@ tmp211,
	movt	sl, #:upper16:145232	@ tmp211,
	movw	r8, #:lower16:.LANCHOR0	@ tmp208,
	movt	r8, #:upper16:.LANCHOR0	@ tmp208,
	mul	sl, sl, r4	@ tmp210, tmp211, NextInstId
	add	r2, r8, #40	@ tmp209, tmp208,
	add	r0, r2, sl	@, tmp209, tmp210
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.3058,
	beq	.L714	@,
	add	r8, sl, r8	@ tmp217, tmp210, tmp208
	cmp	r0, #0	@ Ret.3058,
	mov	ip, #0	@ tmp219,
	strb	ip, [r8, #40]	@ tmp219, <variable>.SegFullFlag
	beq	.L715	@,
.L706:
	add	lr, r4, #1	@ D.37805, NextInstId,
	mov	r1, r7	@, tmp543
	mov	r3, lr, lsr #31	@ tmp342, D.37805,
	add	ip, lr, r3	@ tmp343, D.37805, tmp342
	and	r4, ip, #1	@ tmp344, tmp343,
	rsb	r4, r3, r4	@ NextInstId, tmp342, tmp344
	mov	r0, r4	@, NextInstId
	bl	SM_GetInfo	@
	ldrsb	r2, [fp, #-76]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r2, #0	@ stInstInfo.InstMode,
	beq	.L704	@,
	movw	r1, #:lower16:145232	@ tmp351,
	movt	r1, #:upper16:145232	@ tmp351,
	mla	r2, r1, r4, r5	@ tmp352, tmp351, NextInstId, tmp546
	ldr	r3, [r2, #96]	@ D.37813, <variable>.Config.VidStd
	sub	r0, r3, #8	@ tmp354, D.37813,
	cmp	r3, #5	@ D.37813,
	cmpne	r0, #1	@, tmp354,
	bls	.L704	@,
	cmp	r3, #1	@ D.37813,
	beq	.L743	@,
	cmp	r3, #11	@ D.37813,
	beq	.L704	@,
	cmp	r3, #14	@ D.37813,
	beq	.L704	@,
	cmp	r3, #4	@ D.37813,
	beq	.L704	@,
	cmp	r3, #12	@ D.37813,
	beq	.L704	@,
	cmp	r3, #10	@ D.37813,
	beq	.L704	@,
	cmp	r3, #13	@ D.37813,
	beq	.L704	@,
	cmp	r3, #18	@ D.37813,
	beq	.L704	@,
	cmp	r3, #17	@ D.37813,
	beq	.L744	@,
.L724:
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	bl	PrintScdRawState	@
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	bl	PrintScdSegState	@
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:145232	@ tmp373,
	movt	ip, #:upper16:145232	@ tmp373,
	movw	r3, #:lower16:145264	@ tmp371,
	movt	r3, #:upper16:145264	@ tmp371,
	mla	r2, ip, r4, r5	@ tmp374, tmp373, NextInstId, tmp546
	ldr	r1, [r2, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r1, r0, r1	@ WaitTime, D.37834, <variable>.LastSCDStartTime
	strmi	r0, [r2, r3]	@ D.37834, <variable>.LastSCDStartTime
	movw	r0, #:lower16:145232	@ tmp386,
	movt	r0, #:upper16:145232	@ tmp386,
	movmi	r1, #200	@ WaitTime,
	mla	ip, r0, r4, r5	@ tmp387, tmp386, NextInstId, tmp546
	add	r3, ip, #40	@ tmp388, tmp387,
	ldrsb	r2, [r3, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	cmp	r2, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L745	@,
.L726:
	movw	r7, #:lower16:145232	@ tmp407,
	movt	r7, #:upper16:145232	@ tmp407,
	movw	r8, #:lower16:.LANCHOR0	@ tmp404,
	movt	r8, #:upper16:.LANCHOR0	@ tmp404,
	mul	r3, r7, r4	@ tmp406, tmp407, NextInstId
	add	r7, r3, r5	@ tmp408, tmp406, tmp546
	add	sl, r7, #40	@ tmp544, tmp408,
	ldrsb	r9, [r7, #40]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r9, #1	@ <variable>.SegFullFlag,
	movne	r3, #0	@ tmp493,
	strneb	r3, [sl, #1]	@ tmp493, <variable>.IsCounting
	beq	.L746	@,
.L729:
	movw	r8, #:lower16:145232	@ tmp498,
	movt	r8, #:upper16:145232	@ tmp498,
	movw	r7, #:lower16:.LANCHOR0	@ tmp495,
	movt	r7, #:upper16:.LANCHOR0	@ tmp495,
	mul	r8, r8, r4	@ tmp497, tmp498, NextInstId
	add	r1, r7, #40	@ tmp496, tmp495,
	add	r0, r1, r8	@, tmp496, tmp497
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	beq	.L747	@,
	add	r7, r8, r7	@ tmp512, tmp497, tmp495
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp514,
	strb	r3, [r7, #40]	@ tmp514, <variable>.SegFullFlag
	bne	.L704	@,
.L715:
	movw	r1, #:lower16:145232	@ tmp519,
	movt	r1, #:upper16:145232	@ tmp519,
	ldr	r0, [fp, #-80]	@, %sfp
	movw	ip, #:lower16:131392	@ tmp517,
	mla	r5, r1, r4, r5	@ tmp520, tmp519, NextInstId, tmp546
	movt	ip, #:upper16:131392	@ tmp517,
	mov	r2, #1	@ tmp522,
	str	r4, [r0, #0]	@ NextInstId,
	mov	r0, r2	@, tmp522
	str	r2, [r5, ip]	@ tmp522, <variable>.Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L748	@,
.L731:
	mov	r0, #0	@ D.37804,
	b	.L705	@
.L741:
	ldr	r1, [r2, #112]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L736	@,
	b	.L706	@
.L743:
	ldr	r3, [r2, #112]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L724	@,
	b	.L704	@
.L711:
	ldrsb	r0, [r3, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r1, #199	@ WaitTime.3052,
	cmple	r0, #0	@, <variable>.FillNewRawFlag,
	bne	.L718	@,
	b	.L706	@
.L714:
	add	r8, sl, r8	@ tmp225, tmp210, tmp208
	mov	r1, #1	@ tmp227,
	strb	r1, [r8, #40]	@ tmp227, <variable>.SegFullFlag
	b	.L706	@
.L745:
	ldrsb	lr, [r3, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r1, #199	@ WaitTime,
	cmple	lr, #0	@, <variable>.FillNewRawFlag,
	bne	.L726	@,
	b	.L704	@
.L747:
	add	r7, r8, r7	@ tmp504, tmp497, tmp495
	mov	lr, #1	@ tmp506,
	mvn	r0, #2	@ D.37804,
	strb	lr, [r7, #40]	@ tmp506, <variable>.SegFullFlag
	b	.L705	@
.L742:
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	str	r3, [fp, #-88]	@,
	str	ip, [fp, #-92]	@,
	bl	PrintScdRawState	@
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	add	r3, r8, #131072	@ tmp255, tmp205,
	add	r2, r3, #232	@ tmp255, tmp255,
	movw	r1, #:lower16:131304	@ tmp251,
	movt	r1, #:upper16:131304	@ tmp251,
	ldr	r3, [fp, #-88]	@,
	ldr	r0, [r2, #4]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	add	r2, r8, #131072	@ tmp248, tmp205,
	ldr	ip, [r8, r1]	@, <variable>.StreamSegArray.SegBufPhyAddr
	movw	r1, #:lower16:131328	@ tmp238,
	movt	r1, #:upper16:131328	@ tmp238,
	ldrsb	lr, [r3, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	str	r0, [fp, #-48]	@ <variable>.StreamSegArray.SegBufSize,
	str	ip, [fp, #-52]	@,
	cmp	lr, #0	@ <variable>.IsCounting,
	ldr	ip, [r8, r1]	@, <variable>.StreamSegArray.SegFreshNum
	add	lr, r2, #248	@ tmp248, tmp248,
	str	ip, [fp, #-84]	@, %sfp
	ldr	r2, [lr, #4]	@ temp.3060, <variable>.StreamSegArray.SegFreshSize
	bne	.L749	@,
	add	sl, r0, r0, lsr #31	@, tmp303, <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize,
	cmp	r2, sl, asr #1	@ temp.3060, tmp303,
	bge	.L716	@,
	ldr	lr, [fp, #-84]	@, %sfp
	cmp	lr, #127	@,
	bgt	.L716	@,
	mov	r1, r9	@, <variable>.SegFullFlag
	mov	r0, r4	@, NextInstId
	strb	r9, [r3, #1]	@ <variable>.SegFullFlag, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L716	@
.L746:
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	str	r3, [fp, #-88]	@,
	bl	PrintScdRawState	@
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	add	r0, r7, #131072	@ tmp429, tmp408,
	add	ip, r0, #232	@ tmp429, tmp429,
	movw	r2, #:lower16:131304	@ tmp425,
	movt	r2, #:upper16:131304	@ tmp425,
	ldrsb	r3, [sl, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	ldr	r0, [ip, #4]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	add	r1, r7, #131072	@ tmp422, tmp408,
	ldr	ip, [r7, r2]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	cmp	r3, #0	@ <variable>.IsCounting,
	movw	r2, #:lower16:131328	@ tmp412,
	add	r3, r1, #248	@ tmp422, tmp422,
	movt	r2, #:upper16:131328	@ tmp412,
	str	r0, [fp, #-48]	@ <variable>.StreamSegArray.SegBufSize,
	str	ip, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	ip, [r3, #4]	@ D.38606, <variable>.StreamSegArray.SegFreshSize
	ldr	r2, [r7, r2]	@ D.38607, <variable>.StreamSegArray.SegFreshNum
	ldr	r3, [fp, #-88]	@,
	bne	.L728	@,
	add	r8, r0, r0, lsr #31	@, tmp449, <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize,
	cmp	ip, r8, asr #1	@ D.38606, tmp449,
	bge	.L729	@,
	cmp	r2, #127	@ D.38607,
	bgt	.L729	@,
	mov	r1, r9	@, <variable>.SegFullFlag
	mov	r0, r4	@, NextInstId
	strb	r9, [sl, #1]	@ <variable>.SegFullFlag, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L729	@
.L749:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r2, [fp, #-96]	@,
	bl	CalcInstBlockTime	@
	ldr	r2, [fp, #-96]	@,
	cmp	r0, #1000	@ WaitSegTime.3068,
	ble	.L716	@,
	ldr	lr, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	cmp	lr, #0	@ SegBufTotalSize,
	add	ip, lr, #3	@ tmp275, SegBufTotalSize,
	movlt	lr, ip	@ SegBufTotalSize, tmp275
	cmp	r2, lr, asr #2	@ temp.3060, SegBufTotalSize,
	bge	.L716	@,
	ldr	r1, [fp, #-84]	@, %sfp
	cmp	r1, #63	@,
	bgt	.L716	@,
	mov	r2, r0	@, WaitSegTime.3068
	movw	r1, #:lower16:.LC122	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC122	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-92]	@,
	mvn	r1, #0	@,
	add	r3, ip, #57344	@ tmp281, tmp203,
	add	r2, r3, #208	@ tmp281, tmp281,
	add	r0, sl, r2	@, tmp201, tmp281
	bl	ReleaseStreamSeg	@
	mov	r0, #0	@ tmp290,
	strb	r0, [r8, #40]	@ tmp290, <variable>.SegFullFlag
	ldr	r8, [fp, #-88]	@,
	strb	r0, [r8, #1]	@ tmp290, <variable>.IsCounting
	b	.L716	@
.L728:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r2, [fp, #-96]	@,
	str	ip, [fp, #-92]	@,
	str	r3, [fp, #-88]	@,
	bl	CalcInstBlockTime	@
	ldr	r2, [fp, #-96]	@,
	ldr	ip, [fp, #-92]	@,
	cmp	r0, #1000	@ WaitSegTime,
	ble	.L729	@,
	ldr	r1, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	cmp	r1, #0	@ SegBufTotalSize,
	add	lr, r1, #3	@ tmp462, SegBufTotalSize,
	movlt	r1, lr	@ SegBufTotalSize, tmp462
	cmp	ip, r1, asr #2	@ D.38606, SegBufTotalSize,
	bge	.L729	@,
	cmp	r2, #63	@ D.38607,
	bgt	.L729	@,
	mov	r2, r0	@, WaitSegTime
	movw	r1, #:lower16:.LC122	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC122	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-88]	@,
	mvn	r1, #0	@,
	add	ip, r0, #57344	@ tmp468, tmp406,
	add	r2, ip, #208	@ tmp468, tmp468,
	add	r0, r8, r2	@, tmp404, tmp468
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp477,
	strb	r3, [r7, #40]	@ tmp477, <variable>.SegFullFlag
	strb	r3, [sl, #1]	@ tmp477, <variable>.IsCounting
	b	.L729	@
.L748:
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, r4, asl #2	@, tmp526, tmp547, NextInstId,
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp530,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp530,
	ldr	r2, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r3, r0	@ D.37887,
	ldr	r0, [r6, #-4068]	@ tmp529, last_rec_pos_time
	rsb	ip, r0, r3	@ tmp528, tmp529, D.37887
	cmp	ip, r2	@ tmp528, g_TraceBsPeriod
	bls	.L731	@,
	mov	lr, r4, asl #24	@ tmp539, NextInstId,
	ldr	r0, .L750	@,
	add	r2, lr, #65536	@, tmp539,
	movw	r1, #3860	@,
	str	r3, [r6, #-4068]	@ D.37887, last_rec_pos_time
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.37804,
	b	.L705	@
.L709:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L706	@,
	movw	r1, #:lower16:.LC123	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	b	.L706	@
.L744:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L704	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.37804,
	b	.L705	@
.L751:
	.align	2
.L750:
	.word	.LANCHOR2+64
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1419:
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
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:-104726460	@,
	movt	r0, #:upper16:-104726460	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L762	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp227,
	movt	r4, #:upper16:.LANCHOR1	@ tmp227,
	mov	r1, #1	@,
	ldr	r0, [r4, #-4080]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #36	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp150,
	str	r3, [r4, #-4084]	@ tmp150, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	movweq	r5, #:lower16:.LANCHOR0	@ tmp226,
	movteq	r5, #:upper16:.LANCHOR0	@ tmp226,
	bne	.L763	@,
.L755:
	movw	ip, #:lower16:290512	@ tmp172,
	movt	ip, #:upper16:290512	@ tmp172,
	movw	r6, #:lower16:.LANCHOR0	@ tmp171,
	movt	r6, #:upper16:.LANCHOR0	@ tmp171,
	ldr	r3, [r5, ip]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	cmp	r3, #0	@ s_SmIIS.IsScdDrvOpen,
	beq	.L764	@,
	movw	r8, #:lower16:290520	@ tmp181,
	movt	r8, #:upper16:290520	@ tmp181,
	movw	r7, #:lower16:290516	@ tmp179,
	movt	r7, #:upper16:290516	@ tmp179,
	ldr	r1, [r6, r8]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r8, [r6, r7]	@ SmID, s_SmIIS.ThisInstID
	cmp	r1, #1	@ s_SmIIS.SCDState,
	beq	.L765	@,
.L757:
	mov	r0, r8	@, SmID
	mov	r1, #0	@ tmp220,
	str	r1, [r4, #-4084]	@ tmp220, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L762:
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
.L759:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L763:
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp226,
	movw	r2, #:lower16:290516	@ tmp152,
	movt	r5, #:upper16:.LANCHOR0	@ tmp226,
	movt	r2, #:upper16:290516	@ tmp152,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp160,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp160,
	ldr	r2, [r5, r2]	@ D.37918, s_SmIIS.ThisInstID
	ldr	r1, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	add	r3, r4, r2, asl #2	@, tmp156, tmp227, D.37918,
	mov	ip, r0	@ CurTimeInMs,
	ldr	r0, [r3, #-4060]	@ tmp159, last_rec_pos_time
	rsb	r6, r0, ip	@ tmp158, tmp159, CurTimeInMs
	cmp	r6, r1	@ tmp158, g_TraceBsPeriod
	bls	.L755	@,
	mov	lr, r2, asl #24	@ tmp169, D.37918,
	ldr	r0, .L767	@,
	add	r2, lr, #131072	@, tmp169,
	movw	r1, #3909	@,
	str	ip, [r3, #-4060]	@ CurTimeInMs, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L755	@
.L764:
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	str	r3, [r4, #-4084]	@ s_SmIIS.IsScdDrvOpen, s_SCDInISR
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L759	@
.L765:
	movw	sl, #:lower16:145232	@ tmp186,
	movt	sl, #:upper16:145232	@ tmp186,
	movw	r3, #:lower16:131392	@ tmp184,
	movt	r3, #:upper16:131392	@ tmp184,
	mla	r2, sl, r8, r6	@ tmp187, tmp186, SmID, tmp171
	ldr	r0, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L766	@,
.L758:
	movw	r6, #:lower16:290520	@ tmp208,
	movt	r6, #:upper16:290520	@ tmp208,
	sub	r0, fp, #40	@,,
	mov	lr, #0	@ tmp209,
	str	lr, [r5, r6]	@ tmp209, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp207,
	movt	r5, #:upper16:.LANCHOR0	@ tmp207,
	cmp	r0, #0	@,
	bne	.L757	@,
	ldr	r0, [fp, #-40]	@ NextInstID, NextInstID
	movw	ip, #:lower16:290516	@ tmp212,
	movt	ip, #:upper16:290516	@ tmp212,
	mov	r2, #1	@ tmp216,
	str	r2, [r5, r6]	@ tmp216, s_SmIIS.SCDState
	str	r0, [r5, ip]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:290524	@ tmp218,
	movt	r3, #:upper16:290524	@ tmp218,
	str	r0, [r5, r3]	@, s_SmIIS.LastProcessTime
	b	.L757	@
.L766:
	mov	r0, r8	@, SmID
	mov	r1, #0	@,
	bl	PrintScdRawState	@
	ldr	r0, [r6, r7]	@, s_SmIIS.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	ldr	ip, [r6, r7]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	add	r1, r6, #40	@ tmp194, tmp171,
	mla	r0, ip, sl, r1	@, s_SmIIS.ThisInstID, tmp186, tmp194
	bl	ProcessScdReturn	@
	ldr	r0, [r6, r7]	@, s_SmIIS.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdRawState	@
	ldr	r0, [r6, r7]	@, s_SmIIS.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	b	.L758	@
.L768:
	.align	2
.L767:
	.word	.LANCHOR2+84
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
	.fnstart
.LFB1354:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r5, #0	@, tmp144
	moveq	r5, #1	@, tmp144
	mvneq	r0, #0	@ D.35403,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r6, #57348	@ tmp145,
	movw	r3, #57352	@ tmp154,
	ldr	r2, [r4, r6]	@ D.35404, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.35404,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.35403,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	rsb	lr, r2, r2, asl #3	@, tmp158, D.35404, D.35404,
	mov	r2, #56	@,
	add	r0, r4, lr, asl #3	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.35403, tmp144
	add	ip, r3, #1	@ tmp167, <variable>.Tail,
	mov	r2, ip, asr #31	@ tmp169, tmp167,
	mov	r2, r2, lsr #22	@ tmp170, tmp169,
	add	r1, ip, r2	@ tmp171, tmp167, tmp170
	mov	r3, r1, asl #22	@ tmp172, tmp171,
	mov	ip, r3, lsr #22	@ tmp172, tmp172,
	rsb	r1, r2, ip	@ tmp174, tmp170, tmp172
	str	r1, [r4, r6]	@ tmp174, <variable>.Tail
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	InsertRawPacket, .-InsertRawPacket
	.align	2
	.global	SM_PushRaw
	.type	SM_PushRaw, %function
SM_PushRaw:
	.fnstart
.LFB1390:
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
	ldr	r2, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #0	@ <variable>.PhyAddr,
	bne	.L778	@,
.L775:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L778:
	ldr	r3, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L775	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp139,
	movw	ip, #:lower16:145232	@ tmp141,
	movt	lr, #:upper16:.LANCHOR0	@ tmp139,
	movt	ip, #:upper16:145232	@ tmp141,
	mla	r0, ip, r0, lr	@ tmp143, tmp141, SmID, tmp139
	add	r0, r0, #184	@, tmp143,
	bl	InsertRawPacket	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.global	__aeabi_uidiv
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1414:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r7, fp, #100	@ tmp585,,
	mov	r4, r0	@ InstID, InstID
	mov	r1, #56	@,
	mov	r0, r7	@, tmp585
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r2, [fp, #-104]	@, %sfp
	bl	__memzero	@
	ldr	r0, [fp, #-104]	@, %sfp
	movw	r5, #:lower16:145232	@ tmp160,
	movt	r5, #:upper16:145232	@ tmp160,
	mla	r5, r5, r4, r0	@ tmp161, tmp160, InstID,
	ldr	r3, [r5, #96]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r3, #18	@ <variable>.Config.VidStd,
	beq	.L801	@,
	ldr	r3, [r5, #124]	@ D.37386, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.37386,
	beq	.L801	@,
	cmp	r3, #2	@ D.37386,
	movne	r5, r4, asl #24	@, InstID,
	strne	r5, [fp, #-108]	@, %sfp
	beq	.L813	@,
.L809:
	movw	sl, #:lower16:145232	@ tmp589,
	movt	sl, #:upper16:145232	@ tmp589,
	movw	lr, #:lower16:.LANCHOR1	@ tmp593,
	movt	lr, #:upper16:.LANCHOR1	@ tmp593,
	mul	r2, sl, r4	@, tmp589, InstID
	add	r6, lr, r4, asl #2	@, tmp595, tmp593, InstID,
	ldr	r1, [fp, #-104]	@, %sfp
	sub	r5, r6, #4048	@ tmp596, tmp595,
	sub	sl, r5, #4	@ tmp596, tmp596,
	add	r5, r2, r1	@ tmp591,,
	add	r0, r5, #144384	@ tmp592, tmp591,
	add	r6, r0, #864	@ tmp592, tmp592,
	str	r2, [fp, #-112]	@, %sfp
.L807:
	mov	r0, r4	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L790	@,
.L818:
	mov	r0, r4	@, InstID
	mov	r1, r7	@, tmp585
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L801	@,
	ldr	r3, [r5, #120]	@ D.37467, <variable>.Config.LastRawDisContinueCount
	movw	ip, #:lower16:.LANCHOR0	@ tmp385,
	add	r8, r5, #120	@ tmp390, tmp591,
	movt	ip, #:upper16:.LANCHOR0	@ tmp385,
	cmn	r3, #1	@ D.37467,
	beq	.L814	@,
	ldr	lr, [fp, #-52]	@ temp.3194, RawPacket.discontinue_count
	cmp	r3, lr	@ D.37467, temp.3194
	beq	.L792	@,
	ldr	r3, [r5, #96]	@ D.37473, <variable>.Config.VidStd
	cmp	r3, #3	@ D.37473,
	cmpne	r3, #1	@, D.37473,
	beq	.L815	@,
.L792:
	ldr	r1, [r6, #0]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	lr, [fp, #-92]	@ RawPacket.Length, RawPacket.Length
	add	r0, lr, r1	@ tmp446, RawPacket.Length, <variable>.TotalRawSize
	str	r0, [r6, #0]	@ tmp446, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, #4]	@ temp.3198, <variable>.LastStatTime
	cmp	r1, #0	@ temp.3198,
	mov	r8, r0	@ ThisTime.3197,
	streq	r0, [r6, #4]	@ ThisTime.3197, <variable>.LastStatTime
	beq	.L794	@,
	rsb	r1, r1, r0	@ TimePeriod.3199, temp.3198, ThisTime.3197
	cmp	r1, #2000	@ TimePeriod.3199,
	bls	.L794	@,
	ldr	r0, [r6, #0]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	add	r9, r5, #144384	@ tmp464, tmp591,
	add	r9, r9, #872	@ tmp464, tmp464,
	mov	r0, r0, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	ip, #1000	@ tmp478,
	mov	r1, #0	@ tmp486,
	stmia	r6, {r1, r8}	@ phole stm
	mul	r2, ip, r0	@ tmp477, tmp478,
	mov	r3, r2, lsr #10	@ tmp479, tmp477,
	str	r3, [r9, #0]	@ tmp479, <variable>.BitRate
.L794:
	ldrd	r2, [fp, #-84]	@,,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-100]	@, RawPacket.PhyAddr
	ldr	r3, [fp, #-92]	@, RawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	bl	dprint_vfmw	@
	ldrd	r0, [fp, #-84]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp499,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp499
	cmpeq	r0, r2	@ RawPacket.Pts, tmp499
	beq	.L816	@,
	mov	r0, r4	@, InstID
	mov	r1, r7	@, tmp585
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L812	@,
.L796:
	mov	lr, #1	@ tmp509,
	strb	lr, [r5, #44]	@ tmp509, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L817	@,
.L797:
	movw	lr, #:lower16:save_str_chan_num	@ tmp527,
	movt	lr, #:upper16:save_str_chan_num	@ tmp527,
	ldr	r3, [lr, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r4, r3	@ InstID, save_str_chan_num
	bne	.L807	@,
	movw	r8, #:lower16:vfmw_save_str_file	@ tmp602,
	movt	r8, #:upper16:vfmw_save_str_file	@ tmp602,
	ldr	ip, [r8, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L807	@,
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r5, #96]	@ eStd, <variable>.Config.VidStd
	sub	r2, r3, #10	@ tmp539, eStd,
	cmp	r3, #4	@ eStd,
	cmpne	r2, #3	@, tmp539,
	bls	.L799	@,
	cmp	r3, #14	@ eStd,
	cmpne	r3, #17	@, eStd,
	beq	.L799	@,
	cmp	r3, #8	@ eStd,
	cmpne	r3, #9	@, eStd,
	beq	.L799	@,
	cmp	r3, #5	@ eStd,
	beq	.L799	@,
	cmp	r3, #1	@ eStd,
	bne	.L800	@,
	ldr	r1, [r5, #112]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L800	@,
.L799:
	add	r0, r7, #8	@, tmp585,
	mov	r1, #4	@,
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
.L800:
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	ldr	r1, [fp, #-92]	@, RawPacket.Length
	ldr	r0, [fp, #-96]	@, RawPacket.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	beq	.L818	@,
.L790:
	mov	r2, r4	@, InstID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-104]	@, %sfp
	movw	r3, #:lower16:290516	@ tmp580,
	movt	r3, #:upper16:290516	@ tmp580,
	mov	r1, #0	@,
	ldr	r0, [ip, r3]	@, s_SmIIS.ThisInstID
	bl	PrintScdRawState	@
.L801:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L814:
	ldr	r8, [fp, #-52]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r8, [r5, #120]	@ RawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L792	@
.L817:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sl, #0]	@ tmp517, last_rec_pos_time
	mov	r3, r0	@ ThisTime.3211,
	movw	r0, #:lower16:g_TraceBsPeriod	@ tmp518,
	movt	r0, #:upper16:g_TraceBsPeriod	@ tmp518,
	rsb	ip, r1, r3	@ tmp516, tmp517, ThisTime.3211
	ldr	r2, [r0, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	cmp	ip, r2	@ tmp516, g_TraceBsPeriod
	bls	.L797	@,
	ldr	r0, .L824	@,
	mov	r1, #3248	@,
	ldr	r2, [fp, #-108]	@, %sfp
	str	r3, [sl, #0]	@ ThisTime.3211, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L797	@
.L816:
	mov	r0, r4	@, InstID
	mov	r1, r7	@, tmp585
	mvn	r2, #0	@ tmp500,
	mvn	r3, #0	@,
	strd	r2, [fp, #-84]	@ tmp500,,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	beq	.L796	@,
.L812:
	movw	r1, #:lower16:.LC126	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	b	.L801	@
.L815:
	ldr	r5, [fp, #-112]	@, %sfp
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp416,,,,
	add	r4, r5, #128	@ tmp414,,
	add	ip, ip, r4	@ tmp415, tmp385, tmp414
	mov	r5, #1	@ tmp423,
	mov	r4, ip	@ tmp597, tmp415
	stmia	r4!, {r0, r1, r2, r3}	@ tmp597,,,,
	mov	ip, r4	@ tmp599, tmp597
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp598,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp599,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp600,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp599,,,,
	ldmia	r7, {r0, r1}	@ tmp600,,
	mov	r3, lr	@, temp.3194
	stmia	ip, {r0, r1}	@ tmp601,,
	mov	r0, r5	@, tmp423
	ldr	r2, [r8, #0]	@, <variable>.Config.LastRawDisContinueCount
	movw	r1, #:lower16:.LC127	@,
	str	r5, [r8, #4]	@ tmp423, <variable>.Config.DisContinueRawPacketFlag
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	b	.L801	@
.L813:
	movw	ip, #:lower16:145248	@ tmp171,
	movt	ip, #:upper16:145248	@ tmp171,
	ldr	r1, [r5, #136]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	add	r6, r5, #144384	@ tmp175, tmp161,
	ldr	lr, [r5, ip]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	add	r6, r6, #864	@ tmp175, tmp175,
	add	r8, r1, lr	@ tmp190, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	r8, [r5, ip]	@ tmp190, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r6, #4]	@ D.37395, <variable>.LastStatTime
	cmp	r3, #0	@ D.37395,
	mov	r8, r0	@ ThisTime,
	streq	r0, [r6, #4]	@ ThisTime, <variable>.LastStatTime
	bne	.L819	@,
.L783:
	ldr	lr, [fp, #-104]	@, %sfp
	movw	r5, #:lower16:145232	@ tmp241,
	movt	r5, #:upper16:145232	@ tmp241,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC124	@,
	mla	r5, r5, r4, lr	@ tmp242, tmp241, InstID,
	ldrd	r2, [r5, #144]	@, tmp242,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #128]	@, <variable>.Config.DisContinueRawPacket.PhyAddr
	ldr	r3, [r5, #136]	@, <variable>.Config.DisContinueRawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	bl	dprint_vfmw	@
	ldrd	r0, [r5, #144]	@ <variable>.Config.DisContinueRawPacket.Pts, tmp242,
	mvn	r2, #0	@ tmp267,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp267
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp267
	beq	.L820	@,
.L784:
	movw	r6, #:lower16:145232	@ tmp277,
	movt	r6, #:upper16:145232	@ tmp277,
	ldr	r3, [fp, #-104]	@, %sfp
	mov	r0, r4	@, InstID
	mul	r6, r6, r4	@ tmp276, tmp277, InstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp275,
	movt	r5, #:upper16:.LANCHOR0	@ tmp275,
	add	r2, r6, #128	@ tmp278, tmp276,
	add	r1, r3, r2	@,, tmp278
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L812	@,
	add	sl, r6, r5	@ tmp285, tmp276, tmp275
	mov	ip, #1	@ tmp287,
	strb	ip, [sl, #44]	@ tmp287, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	sl, r4, asl #24	@, InstID,
	streq	sl, [fp, #-108]	@, %sfp
	bne	.L821	@,
.L786:
	movw	sl, #:lower16:save_str_chan_num	@ tmp306,
	movt	sl, #:upper16:save_str_chan_num	@ tmp306,
	ldr	r2, [sl, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r4, r2	@ InstID, save_str_chan_num
	beq	.L822	@,
.L787:
	ldr	ip, [fp, #-104]	@, %sfp
	movw	r3, #:lower16:145232	@ tmp367,
	movt	r3, #:upper16:145232	@ tmp367,
	mov	lr, #0	@ tmp383,
	mla	r6, r3, r4, ip	@ tmp368, tmp367, InstID,
	add	sl, r6, #120	@ tmp369, tmp368,
	ldr	r2, [r6, #176]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	str	lr, [sl, #4]	@ tmp383, <variable>.Config.DisContinueRawPacketFlag
	str	r2, [r6, #120]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L809	@
.L819:
	rsb	r1, r3, r0	@ TimePeriod, D.37395, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L783	@,
	ldr	r0, [r6, #0]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	sl, #:lower16:145256	@ tmp204,
	movt	sl, #:upper16:145256	@ tmp204,
	mov	r0, r0, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	ip, #1000	@ tmp222,
	mov	r1, #0	@ tmp230,
	stmia	r6, {r1, r8}	@ phole stm
	mul	r2, ip, r0	@ tmp221, tmp222,
	mov	r3, r2, lsr #10	@ tmp223, tmp221,
	str	r3, [r5, sl]	@ tmp223, <variable>.BitRate
	b	.L783	@
.L821:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp289,
	movt	r3, #:upper16:.LANCHOR1	@ tmp289,
	movw	r6, #:lower16:g_TraceBsPeriod	@ tmp296,
	add	r3, r3, r4, asl #2	@, tmp292, tmp289, InstID,
	movt	r6, #:upper16:g_TraceBsPeriod	@ tmp296,
	ldr	r5, [r3, #-4052]	@ tmp295, last_rec_pos_time
	ldr	r1, [r6, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r2, r0	@ ThisTime.3192,
	rsb	r0, r5, r0	@ tmp294, tmp295, ThisTime.3192
	cmp	r0, r1	@ tmp294, g_TraceBsPeriod
	movls	r0, r4, asl #24	@, InstID,
	strls	r0, [fp, #-108]	@, %sfp
	bls	.L786	@,
	mov	lr, r4, asl #24	@, InstID,
	str	lr, [fp, #-108]	@, %sfp
	str	r2, [r3, #-4052]	@ ThisTime.3192, last_rec_pos_time
	movw	r1, #3133	@,
	ldr	r0, .L824	@,
	ldr	r2, [fp, #-108]	@, %sfp
	bl	DBG_AddTrace	@
	b	.L786	@
.L822:
	movw	r5, #:lower16:vfmw_save_str_file	@ tmp582,
	movt	r5, #:upper16:vfmw_save_str_file	@ tmp582,
	ldr	r2, [r5, #0]	@ prephitmp.3178, vfmw_save_str_file
	cmp	r2, #0	@ prephitmp.3178,
	beq	.L787	@,
	ldr	r0, [fp, #-104]	@, %sfp
	movw	r6, #:lower16:145232	@ tmp312,
	movt	r6, #:upper16:145232	@ tmp312,
	mla	r1, r6, r4, r0	@ tmp313, tmp312, InstID,
	ldr	r3, [r1, #96]	@ eStd, <variable>.Config.VidStd
	sub	ip, r3, #10	@ tmp315, eStd,
	cmp	r3, #4	@ eStd,
	cmpne	ip, #3	@, tmp315,
	bls	.L788	@,
	cmp	r3, #14	@ eStd,
	cmpne	r3, #17	@, eStd,
	beq	.L788	@,
	cmp	r3, #8	@ eStd,
	cmpne	r3, #9	@, eStd,
	beq	.L788	@,
	cmp	r3, #5	@ eStd,
	beq	.L788	@,
	cmp	r3, #1	@ eStd,
	beq	.L823	@,
.L789:
	ldr	r1, [fp, #-104]	@, %sfp
	movw	r0, #:lower16:145232	@ tmp353,
	movt	r0, #:upper16:145232	@ tmp353,
	mla	r5, r0, r4, r1	@ tmp354, tmp353, InstID,
	ldr	r1, [r5, #136]	@, <variable>.Config.DisContinueRawPacket.Length
	ldr	r0, [r5, #132]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	b	.L787	@
.L820:
	mvn	r2, #0	@ tmp274,
	mvn	r3, #0	@,
	strd	r2, [r5, #144]	@ tmp274, tmp242,
	b	.L784	@
.L823:
	ldr	r3, [r1, #112]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L789	@,
.L788:
	ldr	ip, [fp, #-104]	@, %sfp
	movw	sl, #:lower16:145232	@ tmp346,
	movt	sl, #:upper16:145232	@ tmp346,
	mov	r1, #4	@,
	mla	lr, sl, r4, ip	@ tmp348, tmp346, InstID,
	add	r0, lr, #136	@, tmp348,
	bl	klib_fwrite	@
	ldr	r2, [r5, #0]	@ prephitmp.3178, vfmw_save_str_file
	b	.L789	@
.L825:
	.align	2
.L824:
	.word	.LANCHOR2+104
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1420:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r3, #0	@ tmp139,
	movw	r6, #:lower16:.LANCHOR0	@ tmp171,
	movw	r4, #:lower16:145232	@ tmp175,
	movt	r6, #:upper16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:145232	@ tmp175,
	mov	r0, r3	@ NextInstID.3248, tmp139
	str	r3, [fp, #-32]	@ tmp139, NextInstID
	b	.L828	@
.L827:
	ldr	r0, [fp, #-32]	@ NextInstID.622, NextInstID
	add	r0, r0, #1	@ NextInstID.3248, NextInstID.622,
	str	r0, [fp, #-32]	@ NextInstID.3248, NextInstID
	cmp	r0, #1	@ NextInstID.3248,
	bgt	.L834	@,
.L828:
	mla	ip, r4, r0, r6	@ tmp144, tmp175, NextInstID.3248, tmp171
	add	r5, ip, #131072	@ tmp145, tmp144,
	add	r2, r5, #320	@ tmp145, tmp145,
	ldr	r1, [r2, #0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #1	@ <variable>.Mode,
	bne	.L827	@,
	bl	FillRawData	@
	ldr	r0, [fp, #-32]	@ NextInstID.622, NextInstID
	add	r0, r0, #1	@ NextInstID.3248, NextInstID.622,
	str	r0, [fp, #-32]	@ NextInstID.3248, NextInstID
	cmp	r0, #1	@ NextInstID.3248,
	ble	.L828	@,
.L834:
	movw	r5, #:lower16:290520	@ tmp148,
	movt	r5, #:upper16:290520	@ tmp148,
	movw	r4, #:lower16:.LANCHOR0	@ tmp147,
	movt	r4, #:upper16:.LANCHOR0	@ tmp147,
	ldr	lr, [r6, r5]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	lr, #0	@ s_SmIIS.SCDState,
	bne	.L829	@,
	sub	r0, fp, #32	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L835	@,
.L832:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L829:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:290524	@ tmp160,
	movt	r3, #:upper16:290524	@ tmp160,
	ldr	r2, [r4, r3]	@ D.37967, s_SmIIS.LastProcessTime
	cmp	r0, r2	@ CurTime, D.37967
	strcc	r0, [r4, r3]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L832	@,
	rsb	lr, r2, r0	@ tmp163, D.37967, CurTime
	cmp	lr, #500	@ tmp163,
	bls	.L832	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	movw	r1, #:lower16:290516	@ tmp169,
	movt	r1, #:upper16:290516	@ tmp169,
	mov	r0, #0	@ tmp167,
	str	r0, [r4, r5]	@ tmp167, s_SmIIS.SCDState
	ldr	r0, [r4, r1]	@, s_SmIIS.ThisInstID
	bl	DeleteLastSendRaw	@
	b	.L832	@
.L835:
	ldr	r1, [fp, #-32]	@ NextInstID, NextInstID
	movw	ip, #:lower16:290516	@ tmp152,
	movt	ip, #:upper16:290516	@ tmp152,
	mov	r2, #1	@ tmp156,
	str	r2, [r4, r5]	@ tmp156, s_SmIIS.SCDState
	str	r1, [r4, ip]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:290524	@ tmp158,
	movt	r3, #:upper16:290524	@ tmp158,
	str	r0, [r4, r3]	@, s_SmIIS.LastProcessTime
	b	.L832	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1417:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:145232	@ tmp205,
	movt	r4, #:upper16:145232	@ tmp205,
	str	r1, [fp, #-76]	@ pArgs, %sfp
	str	r0, [fp, #-68]	@ ChanID, %sfp
	movw	r5, #:lower16:.LANCHOR0	@ tmp1102,
	mul	r8, r4, r0	@ tmp204, tmp205, ChanID
	movt	r5, #:upper16:.LANCHOR0	@ tmp1102,
	ldrd	r0, [r1]	@,
	movw	r3, #:lower16:131344	@ tmp209,
	movt	r3, #:upper16:131344	@ tmp209,
	add	ip, r8, r5	@ tmp212, tmp204, tmp1102
	add	r7, r8, #57344	@ tmp206, tmp204,
	strd	r0, [fp, #-60]	@,,
	add	sl, r7, #208	@ tmp206, tmp206,
	ldr	r9, [ip, r3]	@, <variable>.SmPushRaw.PushRawOver
	movw	r0, #:lower16:131288	@ tmp228,
	ldr	r7, [fp, #-76]	@, %sfp
	movt	r0, #:upper16:131288	@ tmp228,
	cmp	r9, #1	@,
	add	sl, r5, sl	@ pStreamSegArray, tmp1102, tmp206
	str	r9, [fp, #-80]	@, %sfp
	ldr	r9, [fp, #-76]	@, %sfp
	moveq	r1, #3	@ tmp220,
	ldrd	r6, [r7, #8]	@,,
	strd	r6, [fp, #-100]	@,,
	movw	r6, #:lower16:145232	@ tmp224,
	ldrd	r8, [r9, #16]	@,,
	movt	r6, #:upper16:145232	@ tmp224,
	strd	r8, [fp, #-92]	@,,
	movw	r9, #:lower16:.LANCHOR0	@ tmp1165,
	streq	r1, [ip, r3]	@ tmp220, <variable>.SmPushRaw.PushRawOver
	movt	r9, #:upper16:.LANCHOR0	@ tmp1165,
	ldr	r2, [fp, #-68]	@, %sfp
	mul	r6, r6, r2	@ tmp223, tmp224,
	movw	r2, #:lower16:131296	@ tmp222,
	movt	r2, #:upper16:131296	@ tmp222,
	add	r3, r6, r5	@ tmp225, tmp223, tmp1102
	add	r1, r3, #131072	@ tmp232, tmp225,
	ldr	r0, [r3, r0]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	mov	ip, r1	@, tmp232
	add	r1, r1, #216	@ tmp232, tmp232,
	add	r4, ip, #224	@,,
	str	r4, [fp, #-72]	@, %sfp
	ldr	r8, [r1, #4]	@ prephitmp.3265, <variable>.StreamSegArray.Tail
	mov	r4, r0	@ i.3308, <variable>.StreamSegArray.Head
	str	r1, [fp, #-64]	@ tmp232, %sfp
	str	r0, [r3, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
	str	r8, [fp, #-104]	@ prephitmp.3265, %sfp
	str	r9, [fp, #-112]	@ tmp1165, %sfp
.L912:
	add	r2, r6, r4, asl #6	@, tmp347, tmp1167, i.3308,
	mov	r7, r4, asl #1	@ tmp1110, i.3308,
	add	r9, r2, r5	@ tmp348, tmp347, tmp1102
	add	ip, r7, #1	@ tmp353, tmp1110,
	add	r3, r9, #57344	@ tmp349, tmp348,
	ldr	r8, [fp, #-112]	@, %sfp
	ldr	r9, [fp, #-104]	@, %sfp
	add	r2, r6, ip, asl #5	@, tmp358, tmp1167, tmp353,
	add	ip, r2, r8	@ tmp359, tmp358,
	mov	r1, r4	@, i.3308
	cmp	r4, r9	@ i.3308,
	add	r2, ip, #57344	@ tmp360, tmp359,
	mov	r0, sl	@, pStreamSegArray
	add	r3, r3, #216	@ tmp349, tmp349,
	add	ip, r2, #216	@ tmp360, tmp360,
	beq	.L919	@,
	ldrsb	r9, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	movw	r2, #:lower16:.LANCHOR0	@ tmp342,
	movt	r2, #:upper16:.LANCHOR0	@ tmp342,
	cmp	r9, #1	@ <variable>.SegState,
	bne	.L841	@,
	ldrd	r8, [ip]	@, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strd	r8, [fp, #-52]	@,,
	beq	.L920	@,
	ldrd	r0, [fp, #-52]	@,,
	add	ip, r4, #1	@ temp.3341, i.3308,
	ldrd	r8, [fp, #-60]	@,,
	movw	r3, #:lower16:954437177	@ tmp377,
	movt	r3, #:upper16:954437177	@ tmp377,
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	mov	r0, ip, asr #31	@ tmp379, temp.3341,
	smull	r1, r3, r3, ip	@, tmp376, tmp377, temp.3341
	bls	.L844	@,
	ldr	r7, [fp, #-72]	@, %sfp
	str	r4, [r7, #0]	@ i.3308, <variable>.StreamSegArray.History
	rsb	r4, r0, r3, asr #8	@, i.3308, tmp379, tmp376,
	ldr	r8, [fp, #-64]	@, %sfp
	add	r0, r4, r4, asl #3	@, tmp382, i.3308, i.3308,
	ldr	r9, [r8, #4]	@, <variable>.StreamSegArray.Tail
	sub	r4, ip, r0, asl #7	@ i.3308, temp.3341, tmp382,
	str	r9, [fp, #-104]	@, %sfp
	b	.L912	@
.L841:
	bl	ReleaseStreamSeg	@
	add	r9, r4, #1	@ temp.3368, i.3308,
	movw	r2, #:lower16:954437177	@ tmp627,
	movt	r2, #:upper16:954437177	@ tmp627,
	ldr	r0, [fp, #-64]	@, %sfp
	mov	ip, r9, asr #31	@ tmp629, temp.3368,
	smull	r8, r1, r2, r9	@, tmp626, tmp627, temp.3368
	ldr	r3, [r0, #4]	@, <variable>.StreamSegArray.Tail
	str	r3, [fp, #-104]	@, %sfp
	rsb	r7, ip, r1, asr #8	@, i.3308, tmp629, tmp626,
	add	r8, r7, r7, asl #3	@, tmp632, i.3308, i.3308,
	sub	r4, r9, r8, asl #7	@ i.3308, temp.3368, tmp632,
	b	.L912	@
.L844:
	beq	.L921	@,
	bcs	.L912	@,
	add	ip, r6, r2	@ tmp494, tmp1167, tmp342
	movw	r3, #:lower16:131296	@ tmp491,
	movt	r3, #:upper16:131296	@ tmp491,
	movw	r9, #57560	@ tmp343,
	add	r7, ip, #131072	@ tmp495, tmp494,
	ldr	r1, [ip, r3]	@, <variable>.StreamSegArray.History
	add	r7, r7, #224	@ tmp495, tmp495,
	add	r0, r6, r1, asl #6	@, tmp500, tmp1167,,
	str	r1, [fp, #-52]	@, %sfp
	add	r8, r0, #32	@ tmp503, tmp500,
	add	r1, r8, r2	@ tmp504, tmp503, tmp342
	mvn	r8, #0	@,
	ldrd	r0, [r1, r9]	@ D.37657, tmp504, tmp343
	mvn	r9, #0	@,
	cmp	r1, r9	@ D.37657,
	cmpeq	r0, r8	@ D.37657,
	streq	r4, [ip, r3]	@ i.3308, <variable>.StreamSegArray.History
	beq	.L850	@,
	ldrd	r2, [fp, #-60]	@,,
	cmp	r3, r1	@, D.37657
	cmpeq	r2, r0	@, D.37657
	bhi	.L922	@,
.L851:
	ldr	r4, [fp, #-52]	@ i.3308, %sfp
.L850:
	ldr	r9, [fp, #-68]	@, %sfp
	movw	r6, #:lower16:145232	@ tmp523,
	movt	r6, #:upper16:145232	@ tmp523,
	movw	r2, #:lower16:131288	@ tmp521,
	movt	r2, #:upper16:131288	@ tmp521,
	mul	r3, r6, r9	@ tmp522, tmp523,
	add	r7, r3, r5	@ tmp524, tmp522, tmp1102
	ldr	r6, [r7, r2]	@ j.3307, <variable>.StreamSegArray.Head
	cmp	r4, r6	@ i.3308, j.3307
	moveq	r3, r4	@ j.3355, i.3308
	beq	.L853	@,
	add	lr, r7, #131072	@ tmp1164, tmp524,
	movw	r9, #:lower16:954437177	@ tmp1162,
	add	r8, lr, #248	@ tmp1159, tmp1159,
	add	r7, lr, #256	@ tmp1161, tmp1161,
	add	r4, lr, #224	@ tmp1164, tmp1164,
	movt	r9, #:upper16:954437177	@ tmp1162,
	str	r3, [fp, #-52]	@ tmp522, %sfp
.L905:
	ldr	r1, [fp, #-52]	@, %sfp
	mov	ip, #2	@,
	add	r0, r1, r6, asl #6	@, tmp531,, j.3307,
	mov	r1, r6	@, j.3307
	add	lr, r0, r5	@ tmp532, tmp531, tmp1102
	add	r6, r6, #1	@ temp.3366, j.3307,
	add	r3, lr, #57344	@ tmp555, tmp532,
	add	r2, lr, #57344	@ tmp533, tmp533,
	add	lr, r2, #216	@ tmp533, tmp533,
	add	r3, r3, #224	@ tmp555, tmp555,
	mov	r0, sl	@, pStreamSegArray
	strb	ip, [lr, #4]	@, <variable>.SegState
	ldr	lr, [r3, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r8, #4]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r7, #0]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r3, lr, r2	@ tmp558, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	lr, ip, #1	@ tmp572, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, r3, r3, asr #31	@ tmp586, tmp558
	bic	r3, lr, lr, asr #31	@ tmp600, tmp572
	str	r2, [r8, #4]	@ tmp586, <variable>.StreamSegArray.SegFreshSize
	str	r3, [r7, #0]	@ tmp600, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp601, tmp1162, temp.3366
	mov	ip, r6, asr #31	@ tmp604, temp.3366,
	ldr	r3, [r4, #0]	@ j.3355, <variable>.StreamSegArray.History
	rsb	r2, ip, r1, asr #8	@, j.3307, tmp604, tmp601,
	add	r0, r2, r2, asl #3	@, tmp607, j.3307, j.3307,
	sub	r6, r6, r0, asl #7	@ j.3307, temp.3366, tmp607,
	cmp	r3, r6	@ j.3355, j.3307
	bne	.L905	@,
.L853:
	ldr	r2, [fp, #-68]	@, %sfp
	mov	r0, r3, asl #6	@ tmp617, j.3355,
	add	r3, r0, #32	@ tmp619, tmp617,
	movw	ip, #:lower16:145232	@ tmp621,
	movt	ip, #:upper16:145232	@ tmp621,
	mov	r0, #0	@ D.37617,
	mla	r4, ip, r2, r3	@ tmp622, tmp621,, tmp619
	movw	r3, #57560	@ tmp618,
	add	r5, r4, r5	@ tmp623, tmp622, tmp1102
	ldr	r4, [fp, #-76]	@, %sfp
	ldrd	r2, [r3, r5]	@ <variable>.RawPts, tmp618, tmp623
	strd	r2, [r4]	@ <variable>.RawPts,
.L848:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L920:
	add	r8, r4, #1	@ temp.3340, i.3308,
	movw	ip, #:lower16:954437177	@ tmp363,
	movt	ip, #:upper16:954437177	@ tmp363,
	mov	r2, r8, asr #31	@ tmp365, temp.3340,
	smull	r1, r3, ip, r8	@, tmp362, tmp363, temp.3340
	rsb	r1, r2, r3, asr #8	@, i.3308, tmp365, tmp362,
	add	r7, r1, r1, asl #3	@, tmp368, i.3308, i.3308,
	sub	r4, r8, r7, asl #7	@ i.3308, temp.3340, tmp368,
	b	.L912	@
.L919:
	ldr	r1, [fp, #-68]	@, %sfp
	movw	r0, #:lower16:145232	@ tmp249,
	movt	r0, #:upper16:145232	@ tmp249,
	movw	lr, #:lower16:131288	@ tmp247,
	movt	lr, #:upper16:131288	@ tmp247,
	mul	r3, r0, r1	@ tmp248, tmp249,
	add	r2, r3, r5	@ tmp250, tmp248, tmp1102
	ldr	r6, [r2, lr]	@ j, <variable>.StreamSegArray.Head
	cmp	r4, r6	@ i.3308, j
	beq	.L839	@,
	add	r8, r2, #131072	@ tmp1144, tmp250,
	str	r3, [fp, #-52]	@ tmp248, %sfp
	add	r7, r8, #248	@ tmp1139, tmp1139,
	add	r4, r8, #256	@ tmp1141, tmp1141,
	add	r9, r8, #216	@ tmp1144, tmp1144,
	movw	r8, #:lower16:954437177	@ tmp1142,
	movt	r8, #:upper16:954437177	@ tmp1142,
.L915:
	ldr	r0, [fp, #-52]	@, %sfp
	mov	r1, r6	@, j
	add	ip, r0, r6, asl #6	@, tmp257,, j,
	add	r6, r6, #1	@ D.37638, j,
	add	r2, ip, r5	@ tmp258, tmp257, tmp1102
	mov	ip, #2	@,
	add	r3, r2, #57344	@ tmp281, tmp258,
	add	lr, r2, #57344	@ tmp259, tmp259,
	add	r2, lr, #216	@ tmp259, tmp259,
	add	lr, r3, #224	@ tmp281, tmp281,
	mov	r0, sl	@, pStreamSegArray
	strb	ip, [r2, #4]	@, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r7, #4]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, #0]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r3, r2	@ tmp284, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, ip, #1	@ tmp298, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp312, tmp284
	bic	lr, ip, ip, asr #31	@ tmp326, tmp298
	str	r3, [r7, #4]	@ tmp312, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, #0]	@ tmp326, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r8, r6	@, tmp327, tmp1142, D.37638
	mov	r0, r6, asr #31	@ tmp330, D.37638,
	ldr	ip, [r9, #4]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r2, r0, r1, asr #8	@, j, tmp330, tmp327,
	add	r3, r2, r2, asl #3	@, tmp333, j, j,
	sub	r6, r6, r3, asl #7	@ j, D.37638, tmp333,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L915	@,
.L839:
	mov	r1, #0	@,
	ldr	r0, [fp, #-68]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r9, [fp, #-68]	@, %sfp
	movw	r3, #:lower16:145232	@ tmp642,
	movt	r3, #:upper16:145232	@ tmp642,
	movw	r1, #57528	@ tmp645,
	mul	r2, r3, r9	@ tmp641, tmp642,
	ldr	r3, [fp, #-68]	@, %sfp
	add	ip, r2, r5	@ tmp648, tmp641, tmp1102
	add	r4, r2, #184	@ tmp643, tmp641,
	add	r7, ip, #57344	@ tmp649, tmp648,
	add	sl, r5, r4	@, tmp1102, tmp643
	add	r8, r7, #184	@ tmp649, tmp649,
	str	sl, [fp, #-104]	@, %sfp
	ldr	r7, [ip, r1]	@ D.37672, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:145232	@ tmp660,
	ldr	r6, [r8, #4]	@ D.37673, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:145232	@ tmp660,
	movw	r4, #57528	@ tmp664,
	movw	r8, #57536	@ tmp658,
	cmp	r7, r6	@ D.37672, D.37673
	addgt	r6, r6, #1024	@ tmp656, D.37673,
	rsb	r0, r7, r6	@, D.37672, tmp656
	str	r0, [fp, #-52]	@, %sfp
	mul	r6, r2, r3	@ tmp659, tmp660,
	add	ip, r6, r5	@ tmp661, tmp659, tmp1102
	add	r9, ip, #57344	@ tmp668, tmp661,
	ldr	r3, [ip, r4]	@ i, <variable>.RawPacketArray.Head
	mov	sl, r9	@ tmp1132, tmp668
	add	r9, r9, #184	@ tmp668, tmp668,
	add	sl, sl, #192	@ tmp1132, tmp1132,
	str	r7, [ip, r8]	@ D.37672, <variable>.RawPacketArray.History
	ldr	r4, [r9, #4]	@ prephitmp.3270, <variable>.RawPacketArray.Tail
	str	r6, [fp, #-64]	@ tmp1129, %sfp
.L913:
	rsb	lr, r3, r3, asl #3	@, tmp698, i, i,
	ldr	r0, [fp, #-64]	@, %sfp
	cmp	r3, r4	@ i, prephitmp.3270
	movw	r2, #:lower16:.LANCHOR0	@ tmp694,
	add	r1, r0, lr, asl #3	@, tmp702,, tmp698,
	beq	.L923	@,
.L856:
	add	r1, r1, r5	@ tmp703, tmp702, tmp1102
	mvn	r6, #0	@,
	add	r8, r1, #200	@ tmp704, tmp703,
	mvn	r7, #0	@,
	ldrd	r0, [r1, #200]	@ temp.3321, tmp703,
	movt	r2, #:upper16:.LANCHOR0	@ tmp694,
	cmp	r1, r7	@ temp.3321,
	cmpeq	r0, r6	@ temp.3321,
	beq	.L924	@,
	ldrd	r6, [fp, #-60]	@,,
	add	ip, r3, #1	@ temp.3323, i,
	cmp	r7, r1	@, temp.3321
	cmpeq	r6, r0	@, temp.3321
	mov	r7, ip, asr #31	@ tmp718, temp.3323,
	bls	.L863	@,
	mov	r8, r7, lsr #22	@ tmp719, tmp718,
	str	r3, [sl, #0]	@ i, <variable>.RawPacketArray.History
	add	r2, ip, r8	@ tmp720, temp.3323, tmp719
	ldr	r4, [r9, #4]	@ prephitmp.3270, <variable>.RawPacketArray.Tail
	mov	r0, r2, asl #22	@ tmp721, tmp720,
	movw	r2, #:lower16:.LANCHOR0	@ tmp694,
	mov	r3, r0, lsr #22	@ tmp721, tmp721,
	ldr	r0, [fp, #-64]	@, %sfp
	rsb	r3, r8, r3	@ i, tmp719, tmp721
	cmp	r3, r4	@ i, prephitmp.3270
	rsb	lr, r3, r3, asl #3	@, tmp698, i, i,
	add	r1, r0, lr, asl #3	@, tmp702,, tmp698,
	bne	.L856	@,
.L923:
	ldr	ip, [fp, #-68]	@, %sfp
	movw	r8, #:lower16:145232	@ tmp678,
	movt	r8, #:upper16:145232	@ tmp678,
	movw	r6, #57528	@ tmp676,
	mla	r1, r8, ip, r5	@ tmp679, tmp678,, tmp1102
	ldr	r2, [r1, r6]	@ temp.3295, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3295
	rsblt	r1, r2, #1024	@ tmp681, temp.3295,
	rsbge	r1, r2, r3	@ DelNum.3289, temp.3295, i
	addlt	r1, r1, r3	@ DelNum.3289, tmp681, i
	cmp	r1, #0	@ DelNum.3289,
	bne	.L859	@,
	ldr	r3, [fp, #-68]	@, %sfp
	movw	lr, #:lower16:145232	@ tmp685,
	movt	lr, #:upper16:145232	@ tmp685,
	movw	r7, #57536	@ tmp683,
	mla	r1, lr, r3, r5	@ tmp686, tmp685,, tmp1102
	str	r2, [r1, r7]	@ temp.3295, <variable>.RawPacketArray.History
	ldr	r8, [fp, #-52]	@, %sfp
	ldrd	r0, [fp, #-92]	@,,
	mov	r6, r8	@ RawNumInVfmw,
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r1, r7	@, RawNumInVfmw
	cmpeq	r0, r6	@, RawNumInVfmw
	bls	.L925	@,
.L876:
	ldrd	r2, [fp, #-92]	@,,
	mov	r4, #0	@,
	subs	r6, r2, r6	@ RawNumToSeek,, RawNumInVfmw
	sbc	r7, r3, r7	@ RawNumToSeek,, RawNumInVfmw
	movw	r2, #1023	@ tmp891,
	and	r3, r4, r7	@,, RawNumToSeek
	and	r2, r2, r6	@ tmp890, tmp891, RawNumToSeek
	mov	lr, r6, lsr #10	@ tmp1098, RawNumToSeek,
	orrs	r4, r2, r3	@, tmp890
	orr	r1, lr, r7, asl #22	@, tmp1179, tmp1098, RawNumToSeek,
	addne	r1, r1, #1	@, tmp1179,
	str	r1, [fp, #-80]	@, %sfp
	ldr	r6, [fp, #-80]	@, %sfp
	cmp	r6, #0	@,
	ble	.L879	@,
	ldr	r3, [fp, #-68]	@, %sfp
	movw	r6, #:lower16:145232	@ tmp1118,
	movt	r6, #:upper16:145232	@ tmp1118,
	mov	ip, #0	@,
	str	ip, [fp, #-72]	@, %sfp
	mul	r4, r6, r3	@ tmp1119, tmp1118,
	add	sl, r4, r5	@ tmp1120, tmp1119, tmp1102
	str	sl, [fp, #-92]	@ tmp1120, %sfp
	add	r9, sl, #57344	@, tmp1120,
	mov	r7, r9	@,
	add	r9, r9, #192	@,,
	add	r8, r7, #184	@,,
	str	r9, [fp, #-64]	@, %sfp
	str	r8, [fp, #-52]	@, %sfp
.L898:
	mov	r1, #0	@,
	ldr	r0, [fp, #-68]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [fp, #-68]	@, %sfp
	bl	FillRawData	@
	ldr	r0, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	ldr	r6, [fp, #-64]	@, %sfp
	ldr	r2, [r0, #0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	add	sl, r1, #57344	@ tmp1117,,
	ldr	r0, [r0, #4]	@ prephitmp.3274, <variable>.RawPacketArray.Tail
	add	sl, sl, #184	@ tmp1117, tmp1117,
	mov	r3, r2	@ i.3292, <variable>.RawPacketArray.Head
	str	r2, [r6, #0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r0, [fp, #-112]	@ prephitmp.3274, %sfp
	str	r9, [fp, #-116]	@ tmp1125, %sfp
.L914:
	ldr	r8, [fp, #-112]	@, %sfp
	rsb	lr, r3, r3, asl #3	@, tmp946, i.3292, i.3292,
	movw	r2, #:lower16:.LANCHOR0	@ tmp942,
	cmp	r3, r8	@ i.3292,
	add	r1, r4, lr, asl #3	@, tmp950, tmp1119, tmp946,
	beq	.L926	@,
.L880:
	add	r9, r1, r5	@ tmp951, tmp950, tmp1102
	mvn	r8, #0	@,
	add	r6, r9, #200	@, tmp951,
	str	r6, [fp, #-120]	@, %sfp
	ldrd	r6, [r9, #200]	@ D.37687, tmp951,
	mvn	r9, #0	@,
	movt	r2, #:upper16:.LANCHOR0	@ tmp942,
	cmp	r7, r9	@ D.37687,
	cmpeq	r6, r8	@ D.37687,
	beq	.L927	@,
	ldrd	r8, [fp, #-60]	@,,
	add	r1, r3, #1	@ temp.3304, i.3292,
	cmp	r9, r7	@, D.37687
	cmpeq	r8, r6	@, D.37687
	mov	ip, r1, asr #31	@ tmp966, temp.3304,
	bls	.L887	@,
	ldr	r0, [fp, #-116]	@, %sfp
	mov	r9, ip, lsr #22	@ tmp967, tmp966,
	add	r2, r1, r9	@ tmp968, temp.3304, tmp967
	str	r3, [r0, #0]	@ i.3292, <variable>.RawPacketArray.History
	mov	r1, r2, asl #22	@ tmp969, tmp968,
	ldr	r0, [sl, #4]	@, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:.LANCHOR0	@ tmp942,
	mov	r3, r1, lsr #22	@ tmp969, tmp969,
	rsb	r3, r9, r3	@ i.3292, tmp967, tmp969
	str	r0, [fp, #-112]	@, %sfp
	ldr	r8, [fp, #-112]	@, %sfp
	rsb	lr, r3, r3, asl #3	@, tmp946, i.3292, i.3292,
	cmp	r3, r8	@ i.3292,
	add	r1, r4, lr, asl #3	@, tmp950, tmp1119, tmp946,
	bne	.L880	@,
.L926:
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r9, [fp, #-116]	@ tmp1125, %sfp
	ldr	r2, [r7, #0]	@ temp.3299, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.3292, temp.3299
	rsblt	r1, r2, #1024	@ tmp929, temp.3299,
	rsbge	r1, r2, r3	@ DelNum, temp.3299, i.3292
	addlt	r1, r1, r3	@ DelNum, tmp929, i.3292
	cmp	r1, #0	@ DelNum,
	bne	.L883	@,
	ldr	r3, [fp, #-64]	@, %sfp
	str	r2, [r3, #0]	@ temp.3299, <variable>.RawPacketArray.History
.L884:
	ldr	r8, [fp, #-72]	@, %sfp
	add	r7, r8, #1	@,,
	ldr	r8, [fp, #-80]	@, %sfp
	str	r7, [fp, #-72]	@, %sfp
	cmp	r8, r7	@,
	bgt	.L898	@,
.L879:
	mvn	r0, #1	@ D.37617,
	b	.L848	@
.L863:
	beq	.L928	@,
	bcs	.L913	@,
	ldr	r6, [fp, #-64]	@ tmp1129, %sfp
	movw	sl, #57536	@ tmp784,
	str	r8, [fp, #-72]	@ tmp704, %sfp
	add	r4, r6, r2	@ tmp787, tmp1129, tmp694
	ldr	ip, [r4, sl]	@ i.3329, <variable>.RawPacketArray.History
	rsb	r1, ip, ip, asl #3	@, tmp793, i.3329, i.3329,
	add	r0, r6, r1, asl #3	@, tmp797, tmp1129, tmp793,
	mvn	r6, #0	@ tmp705,
	add	r7, r0, r2	@ tmp798, tmp797, tmp694
	ldrd	r0, [r7, #200]	@ prephitmp.3268, tmp798,
	mvn	r7, #0	@,
	cmp	r1, r7	@ prephitmp.3268, tmp705
	cmpeq	r0, r6	@ prephitmp.3268, tmp705
	beq	.L929	@,
	ldrd	r8, [fp, #-60]	@,,
	cmp	r9, r1	@, prephitmp.3268
	cmpeq	r8, r0	@, prephitmp.3268
	bls	.L871	@,
	ldrd	r6, [fp, #-100]	@,,
	subs	r8, r8, r0	@,, prephitmp.3268
	sbc	r9, r9, r1	@,, prephitmp.3268
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bcc	.L930	@,
.L871:
	mov	r3, ip	@ i, i.3329
.L870:
	ldr	r8, [fp, #-68]	@, %sfp
	movw	r2, #:lower16:145232	@ tmp839,
	movt	r2, #:upper16:145232	@ tmp839,
	movw	ip, #57528	@ tmp837,
	mla	lr, r2, r8, r5	@ tmp840, tmp839,, tmp1102
	ldr	r4, [lr, ip]	@ temp.3331, <variable>.RawPacketArray.Head
	cmp	r4, r3	@ temp.3331, i
	rsbgt	r4, r4, #1024	@ tmp842, temp.3331,
	rsble	r3, r4, r3	@ DelNum.3290, temp.3331, i
	addgt	r3, r4, r3	@ DelNum.3290, tmp842, i
	cmp	r3, #0	@ DelNum.3290,
	beq	.L874	@,
	ldr	r9, [fp, #-68]	@, %sfp
	movw	r2, #:lower16:145232	@ tmp846,
	movt	r2, #:upper16:145232	@ tmp846,
	movw	ip, #:lower16:131336	@ tmp844,
	movt	ip, #:upper16:131336	@ tmp844,
	ldr	lr, [fp, #-80]	@, %sfp
	mla	r2, r2, r9, r5	@ tmp847, tmp846,, tmp1102
	ldr	r4, [r2, ip]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r4	@ DelNum.3290, <variable>.SmPushRaw.PushRawNum
	cmple	lr, #1	@,,
	movne	r4, #0	@, tmp856
	moveq	r4, #1	@, tmp856
	bne	.L875	@,
.L874:
	ldr	r4, [fp, #-76]	@, %sfp
	movw	lr, #:lower16:145232	@ tmp860,
	movt	lr, #:upper16:145232	@ tmp860,
	movw	r6, #57528	@ tmp864,
	movw	ip, #:lower16:131344	@ tmp871,
	movt	ip, #:upper16:131344	@ tmp871,
	strd	r0, [r4]	@ prephitmp.3268,
	movw	r3, #57536	@ tmp858,
	ldr	r4, [fp, #-68]	@, %sfp
	mov	r0, #0	@ D.37617,
	mla	r5, lr, r4, r5	@ tmp861, tmp860,, tmp1102
	ldr	lr, [r5, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	ldr	r6, [fp, #-80]	@, %sfp
	str	lr, [r5, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r6, [r5, ip]	@, <variable>.SmPushRaw.PushRawOver
	b	.L848	@
.L924:
	add	lr, r3, #1	@ temp.3322, i,
	mov	r6, lr, asr #31	@ tmp706, temp.3322,
	mov	r2, r6, lsr #22	@ tmp707, tmp706,
	add	r7, lr, r2	@ tmp708, temp.3322, tmp707
	mov	r1, r7, asl #22	@ tmp709, tmp708,
	mov	ip, r1, lsr #22	@ tmp709, tmp709,
	rsb	r3, r2, ip	@ i, tmp707, tmp709
	b	.L913	@
.L887:
	beq	.L931	@,
	bcs	.L914	@,
	ldr	sl, [fp, #-120]	@, %sfp
	add	ip, r4, r2	@ tmp1015, tmp1119, tmp942
	mvn	r0, #0	@ tmp953,
	mvn	r1, #0	@,
	str	sl, [fp, #-72]	@, %sfp
	movw	sl, #57536	@ tmp1012,
	ldr	r8, [ip, sl]	@, <variable>.RawPacketArray.History
	rsb	r7, r8, r8, asl #3	@, tmp1021,,,
	str	r8, [fp, #-64]	@, %sfp
	add	r6, r4, r7, asl #3	@, tmp1025, tmp1119, tmp1021,
	add	lr, r6, r2	@ tmp1026, tmp1025, tmp942
	ldrd	r6, [lr, #200]	@ prephitmp.3272, tmp1026,
	cmp	r7, r1	@ prephitmp.3272, tmp953
	cmpeq	r6, r0	@ prephitmp.3272, tmp953
	beq	.L917	@,
	ldrd	r0, [fp, #-60]	@,,
	cmp	r1, r7	@, prephitmp.3272
	cmpeq	r0, r6	@, prephitmp.3272
	bls	.L894	@,
	ldrd	r8, [fp, #-100]	@,,
	subs	r0, r0, r6	@,, prephitmp.3272
	sbc	r1, r1, r7	@,, prephitmp.3272
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	bcc	.L917	@,
.L894:
	ldr	r3, [fp, #-64]	@ i.3292, %sfp
.L893:
	ldr	r2, [fp, #-68]	@, %sfp
	movw	r0, #:lower16:145232	@ tmp1067,
	movt	r0, #:upper16:145232	@ tmp1067,
	movw	ip, #57528	@ tmp1065,
	mla	r1, r0, r2, r5	@ tmp1068, tmp1067,, tmp1102
	ldr	r0, [r1, ip]	@ temp.3313, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ temp.3313, i.3292
	rsbgt	r0, r0, #1024	@ tmp1070, temp.3313,
	rsble	r0, r0, r3	@ DelNum.3287, temp.3313, i.3292
	addgt	r0, r0, r3	@ DelNum.3287, tmp1070, i.3292
	cmp	r0, #0	@ DelNum.3287,
	bne	.L897	@,
	ldr	ip, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:145232	@ tmp1074,
	movt	r2, #:upper16:145232	@ tmp1074,
	movw	r1, #57528	@ tmp1078,
	movw	r3, #57536	@ tmp1072,
	strd	r6, [ip]	@ prephitmp.3272,
	ldr	lr, [fp, #-68]	@, %sfp
	mla	ip, r2, lr, r5	@ tmp1075, tmp1074,, tmp1102
	ldr	lr, [ip, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	lr, [ip, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L848	@
.L927:
	add	r7, r3, #1	@ D.37646, i.3292,
	mov	ip, r7, asr #31	@ tmp954, D.37646,
	mov	r2, ip, lsr #22	@ tmp955, tmp954,
	add	r8, r7, r2	@ tmp956, D.37646, tmp955
	mov	lr, r8, asl #22	@ tmp957, tmp956,
	mov	r1, lr, lsr #22	@ tmp957, tmp957,
	rsb	r3, r2, r1	@ i.3292, tmp955, tmp957
	b	.L914	@
.L917:
	str	r3, [ip, sl]	@ i.3292, <variable>.RawPacketArray.History
	ldr	r9, [fp, #-72]	@, %sfp
	ldrd	r6, [r9]	@ prephitmp.3272, <variable>.Pts
	b	.L893	@
.L928:
	ldr	r6, [fp, #-64]	@ tmp1129, %sfp
	movw	ip, #57528	@ tmp731,
	add	r2, r6, r2	@ tmp734, tmp1129, tmp694
	ldr	lr, [r2, ip]	@ temp.3324, <variable>.RawPacketArray.Head
	cmp	r3, lr	@ i, temp.3324
	rsblt	lr, lr, #1024	@ tmp736, temp.3324,
	rsbge	r3, lr, r3	@ DelNum.3291, temp.3324, i
	addlt	r3, lr, r3	@ DelNum.3291, tmp736, i
	cmp	r3, #0	@ DelNum.3291,
	beq	.L867	@,
	ldr	r7, [fp, #-68]	@, %sfp
	movw	lr, #:lower16:145232	@ tmp740,
	movt	lr, #:upper16:145232	@ tmp740,
	movw	r8, #:lower16:131336	@ tmp738,
	movt	r8, #:upper16:131336	@ tmp738,
	mla	r2, lr, r7, r5	@ tmp741, tmp740,, tmp1102
	ldr	r4, [r2, r8]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	ldr	r8, [fp, #-80]	@, %sfp
	cmp	r3, r4	@ DelNum.3291, <variable>.SmPushRaw.PushRawNum
	cmple	r8, #1	@,,
	movne	r4, #0	@, tmp750
	moveq	r4, #1	@, tmp750
	bne	.L868	@,
.L867:
	ldr	r9, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:145232	@ tmp754,
	movt	r2, #:upper16:145232	@ tmp754,
	movw	lr, #57528	@ tmp758,
	movw	r3, #:lower16:131344	@ tmp765,
	movt	r3, #:upper16:131344	@ tmp765,
	strd	r0, [r9]	@ temp.3321,
	movw	r1, #57536	@ tmp752,
	ldr	ip, [fp, #-68]	@, %sfp
	mov	r0, #0	@ D.37617,
	mla	r5, r2, ip, r5	@ tmp755, tmp754,, tmp1102
	ldr	ip, [fp, #-80]	@, %sfp
	ldr	r2, [r5, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r5, r3]	@, <variable>.SmPushRaw.PushRawOver
	str	r2, [r5, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L848	@
.L931:
	add	ip, r4, r2	@ tmp982, tmp1119, tmp942
	movw	r1, #57528	@ tmp979,
	ldr	lr, [ip, r1]	@ temp.3306, <variable>.RawPacketArray.Head
	cmp	lr, r3	@ temp.3306, i.3292
	rsbgt	lr, lr, #1024	@ tmp984, temp.3306,
	rsble	r0, lr, r3	@ DelNum.3288, temp.3306, i.3292
	addgt	r0, lr, r3	@ DelNum.3288, tmp984, i.3292
	cmp	r0, #0	@ DelNum.3288,
	bne	.L897	@,
	ldr	r2, [fp, #-76]	@, %sfp
	movw	lr, #:lower16:145232	@ tmp988,
	movt	lr, #:upper16:145232	@ tmp988,
	movw	ip, #57528	@ tmp992,
	strd	r6, [r2]	@ D.37687,
	movw	r2, #57536	@ tmp986,
	ldr	r1, [fp, #-68]	@, %sfp
	mla	r3, lr, r1, r5	@ tmp989, tmp988,, tmp1102
	ldr	lr, [r3, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	lr, [r3, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L848	@
.L859:
	ldr	r4, [fp, #-68]	@, %sfp
	movw	r0, #:lower16:145232	@ tmp691,
	movt	r0, #:upper16:145232	@ tmp691,
	movw	r6, #57536	@ tmp689,
	mla	r8, r0, r4, r5	@ tmp692, tmp691,, tmp1102
	ldr	r0, [fp, #-104]	@, %sfp
	str	r2, [r8, r6]	@ temp.3295, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [fp, #-68]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r8, [fp, #-52]	@, %sfp
	ldrd	r0, [fp, #-92]	@,,
	mov	r6, r8	@ RawNumInVfmw,
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r1, r7	@, RawNumInVfmw
	cmpeq	r0, r6	@, RawNumInVfmw
	bhi	.L876	@,
.L925:
	mov	r2, r0	@,
	mov	r3, r1	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	strd	r6, [sp]	@ RawNumInVfmw,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.37617,
	b	.L848	@
.L921:
	add	r1, r6, r2	@ tmp394, tmp1167, tmp342
	movw	ip, #:lower16:131288	@ tmp391,
	movt	ip, #:upper16:131288	@ tmp391,
	ldr	r6, [r1, ip]	@ j.3305, <variable>.StreamSegArray.Head
	cmp	r4, r6	@ i.3308, j.3305
	beq	.L846	@,
	ldr	r8, [fp, #-68]	@, %sfp
	movw	r1, #:lower16:145232	@ tmp1145,
	movt	r1, #:upper16:145232	@ tmp1145,
	movw	lr, #:lower16:954437177	@ tmp1153,
	movt	lr, #:upper16:954437177	@ tmp1153,
	str	r7, [fp, #-60]	@ tmp1110, %sfp
	mul	r9, r1, r8	@, tmp1145,
	mov	r7, lr	@ tmp1153, tmp1153
	add	r0, r9, r5	@ tmp1149,, tmp1102
	add	r2, r0, #131072	@ tmp1152, tmp1149,
	str	r9, [fp, #-52]	@, %sfp
	add	r8, r2, #256	@ tmp1152, tmp1152,
	add	r9, r2, #248	@ tmp1150, tmp1150,
.L904:
	ldr	r1, [fp, #-52]	@, %sfp
	mov	ip, #2	@,
	add	r0, r1, r6, asl #6	@, tmp401,, j.3305,
	mov	r1, r6	@, j.3305
	add	r2, r0, r5	@ tmp402, tmp401, tmp1102
	add	r6, r6, #1	@ temp.3352, j.3305,
	add	r3, r2, #57344	@ tmp425, tmp402,
	add	lr, r2, #57344	@ tmp403, tmp403,
	add	r2, lr, #216	@ tmp403, tmp403,
	add	lr, r3, #224	@ tmp425, tmp425,
	mov	r0, sl	@, pStreamSegArray
	strb	ip, [r2, #4]	@, <variable>.SegState
	ldr	r2, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	ip, [r9, #4]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	r3, [r8, #0]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r2, ip	@ tmp428, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, r3, #1	@ tmp442, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, lr, lr, asr #31	@ tmp456, tmp428
	bic	lr, ip, ip, asr #31	@ tmp470, tmp442
	str	r2, [r9, #4]	@ tmp456, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r8, #0]	@ tmp470, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r2, r7, r6	@, tmp471, tmp1153, temp.3352
	mov	r0, r6, asr #31	@ tmp474, temp.3352,
	rsb	r3, r0, r2, asr #8	@, j.3305, tmp474, tmp471,
	add	ip, r3, r3, asl #3	@, tmp477, j.3305, j.3305,
	sub	r6, r6, ip, asl #7	@ j.3305, temp.3352, tmp477,
	cmp	r4, r6	@ i.3308, j.3305
	bne	.L904	@,
	ldr	r7, [fp, #-60]	@ tmp1110, %sfp
.L846:
	ldr	r2, [fp, #-68]	@, %sfp
	movw	r3, #:lower16:145232	@ tmp485,
	movt	r3, #:upper16:145232	@ tmp485,
	add	r7, r7, #1	@ tmp481, tmp1110,
	mov	r0, #0	@ D.37617,
	mul	ip, r3, r2	@ tmp484, tmp485,
	movw	r3, #57560	@ tmp482,
	add	r4, ip, r7, asl #5	@, tmp486, tmp484, tmp481,
	add	r5, r4, r5	@ tmp487, tmp486, tmp1102
	ldr	r4, [fp, #-76]	@, %sfp
	ldrd	r2, [r3, r5]	@ <variable>.RawPts, tmp482, tmp487
	strd	r2, [r4]	@ <variable>.RawPts,
	b	.L848	@
.L883:
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r0, [fp, #-104]	@, %sfp
	str	r2, [ip, #0]	@ temp.3299, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-68]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L884	@
.L897:
	ldr	r4, [fp, #-76]	@, %sfp
	movw	r1, #:lower16:145232	@ tmp1087,
	movt	r1, #:upper16:145232	@ tmp1087,
	movw	lr, #57528	@ tmp1091,
	movw	r3, #57536	@ tmp1085,
	strd	r6, [r4]	@ prephitmp.3272,
	ldr	r6, [fp, #-68]	@, %sfp
	mla	r5, r1, r6, r5	@ tmp1088, tmp1087,, tmp1102
	mov	r1, r0	@, DelNum.3287
	ldr	r0, [fp, #-104]	@, %sfp
	ldr	r2, [r5, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	r2, [r5, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-68]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.37617,
	b	.L848	@
.L922:
	ldrd	r8, [fp, #-100]	@,,
	subs	r0, r2, r0	@ tmp513,, D.37657
	sbc	r1, r3, r1	@ tmp513,, D.37657
	cmp	r9, r1	@, tmp513
	cmpeq	r8, r0	@, tmp513
	strcc	r4, [r7, #0]	@ i.3308, <variable>.StreamSegArray.History
	bcc	.L850	@,
	b	.L851	@
.L930:
	str	r3, [r4, sl]	@ i, <variable>.RawPacketArray.History
	ldr	r7, [fp, #-72]	@, %sfp
	ldrd	r0, [r7]	@ prephitmp.3268, <variable>.Pts
	b	.L870	@
.L929:
	str	r3, [r4, sl]	@ i, <variable>.RawPacketArray.History
	ldrd	r0, [r8]	@ prephitmp.3268, <variable>.Pts
	b	.L870	@
.L875:
	ldr	r7, [fp, #-76]	@, %sfp
	strd	r0, [r7]	@ prephitmp.3268,
.L918:
	movw	r0, #57528	@ tmp883,
	mov	r1, r3	@, DelNum.3290
	ldr	ip, [r2, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r3, #57536	@ tmp877,
	ldr	r0, [fp, #-104]	@, %sfp
	str	ip, [r2, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-68]	@, %sfp
	mov	r1, r4	@, tmp856
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.37617, tmp856
	b	.L848	@
.L868:
	ldr	r6, [fp, #-76]	@, %sfp
	strd	r0, [r6]	@ temp.3321,
	b	.L918	@
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1384:
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
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp147,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp147,
	mov	r4, r0	@ MemAddr, MemAddr
	mov	r5, r1	@ MemSize, MemSize
	mov	r6, r2	@ RegAddr, RegAddr
	ldr	r0, [ip, #4]	@ D.36077, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r7, r3	@ ResetRegAddr, ResetRegAddr
	cmp	r0, #0	@ D.36077,
	beq	.L933	@,
	blx	r0	@ D.36077
.L934:
	movw	r8, #:lower16:.LANCHOR0	@ tmp149,
	movw	sl, #:lower16:290512	@ tmp150,
	movt	r8, #:upper16:.LANCHOR0	@ tmp149,
	movt	sl, #:upper16:290512	@ tmp150,
	ldr	r3, [r8, sl]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	bne	.L938	@,
.L935:
	mvn	r0, #6	@ D.36085,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L933:
	movw	r1, #:lower16:.LC52	@,
	movw	r2, #1167	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	b	.L934	@
.L938:
	bl	ResetSCD	@
	add	r9, r4, #3	@ tmp156, MemAddr,
	mov	r0, r8	@, tmp149
	movw	r1, #:lower16:290536	@,
	movt	r1, #:upper16:290536	@,
	bl	__memzero	@
	bic	r0, r9, #3	@ tmp157, tmp156,
	rsb	r9, r4, r0	@ Offset, MemAddr, tmp157
	movw	r1, #:lower16:.LANCHOR1	@ tmp154,
	add	r2, r9, r4	@ D.36093, Offset, MemAddr
	movt	r1, #:upper16:.LANCHOR1	@ tmp154,
	mov	ip, #0	@,
	str	r2, [r8, #8]	@ D.36093, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	str	ip, [r1, #-4088]	@, s_eScdDrvSleepStage
	mov	r0, r2	@, D.36093
	stmia	r8, {r4, r5}	@ phole stm
	bl	MEM_Phy2Vir	@
	add	r3, r9, #12288	@ D.36098, Offset,
	mov	r1, #12288	@ tmp163,
	add	r4, r3, r4	@ temp.3397, D.36098, MemAddr
	str	r1, [r8, #16]	@ tmp163, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r4, [r8, #20]	@ temp.3397, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r9, r9, #21504	@ tmp176, Offset,
	str	r0, [r8, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r4	@, temp.3397
	bl	MEM_Phy2Vir	@
	movw	r2, #:lower16:145268	@ tmp171,
	movw	r3, #:lower16:290500	@ tmp174,
	movt	r2, #:upper16:145268	@ tmp171,
	movt	r3, #:upper16:290500	@ tmp174,
	cmp	r5, r9	@ MemSize, tmp176
	str	r6, [r8, #32]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	mov	r1, #2	@ tmp172,
	str	r7, [r8, #36]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	mov	ip, #9216	@ tmp167,
	str	ip, [r8, #28]	@ tmp167, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r8, #24]	@ D.36100, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r1, [r8, r2]	@ tmp172, <variable>.UpMsgStepNum
	str	r1, [r8, r3]	@ tmp172, <variable>.UpMsgStepNum
	blt	.L935	@,
	ldr	lr, [r8, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	lr, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L935	@,
	cmp	r0, #0	@ D.36100,
	beq	.L935	@,
	ldr	r0, .L939	@,
	mov	r3, #1	@ tmp181,
	str	r3, [r8, sl]	@ tmp181, s_SmIIS.IsScdDrvOpen
	bl	OSAL_InitIntrMutex	@
	mov	r0, #0	@ D.36085,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L940:
	.align	2
.L939:
	.word	.LANCHOR0+290528
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.global	ForeceRelease
	.global	g_pSmIIS
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.35891, %object
	.size	__func__.35891, 17
__func__.35891:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	CSWTCH.642, %object
	.size	CSWTCH.642, 44
CSWTCH.642:
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	6291456
	.word	6291456
	.word	10485760
	.word	10485760
	.word	10485760
	.word	20971520
	.type	__func__.37795, %object
	.size	__func__.37795, 18
__func__.37795:
	.ascii	"SM_DoNextInstance\000"
	.space	2
	.type	__func__.37907, %object
	.size	__func__.37907, 19
__func__.37907:
	.ascii	"SM_SCDIntServeProc\000"
	.space	1
	.type	__func__.37373, %object
	.size	__func__.37373, 12
__func__.37373:
	.ascii	"FillRawData\000"
	.data
	.align	2
	.type	g_pSmIIS, %object
	.size	g_pSmIIS, 4
g_pSmIIS:
	.word	s_SmIIS
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"------------------ s_SmIIS.SmInstArray[%d] --------"
	.ascii	"------------\012\000"
	.space	3
.LC1:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC2:
	.ascii	"Mode\000"
	.space	3
.LC3:
	.ascii	"Priority\000"
	.space	3
.LC4:
	.ascii	"VidStd\000"
	.space	1
.LC5:
	.ascii	"%-25s :0x%x\012\000"
	.space	3
.LC6:
	.ascii	"BufPhyAddr\000"
	.space	1
.LC7:
	.ascii	"pBufVirAddr\000"
.LC8:
	.ascii	"BufSize\000"
.LC9:
	.ascii	"RegPhyBaseAddr\000"
	.space	1
.LC10:
	.ascii	"SmPushRaw.PushRawNum\000"
	.space	3
.LC11:
	.ascii	"SmPushRaw.PushRawTotalLen\000"
	.space	2
.LC12:
	.ascii	"DownMsgPhyAddr\000"
	.space	1
.LC13:
	.ascii	"DownMsgSize\000"
.LC14:
	.ascii	"UpMsgPhyAddr\000"
	.space	3
.LC15:
	.ascii	"UpMsgNum\000"
	.space	3
.LC16:
	.ascii	"UpMsgSize\000"
	.space	2
.LC17:
	.ascii	"seg BufPhyAddr\000"
	.space	1
.LC18:
	.ascii	"seg BufSize\000"
.LC19:
	.ascii	"seg BufUsed\000"
.LC20:
	.ascii	"seg BufItemNum\000"
	.space	1
.LC21:
	.ascii	"raw StreamHold\000"
	.space	1
.LC22:
	.ascii	"raw StreamPacketNum\000"
.LC23:
	.ascii	"filter ProtocolType\000"
.LC24:
	.ascii	"filter ModeFlag\000"
.LC25:
	.ascii	"filter LastH263Num\000"
	.space	1
.LC26:
	.ascii	"filter SegBufPhyAddr\000"
	.space	3
.LC27:
	.ascii	"filter SegBufSize\000"
	.space	2
.LC28:
	.ascii	"filter SegBufRollAddr\000"
	.space	2
.LC29:
	.ascii	"filter pScdUpMsg\000"
	.space	3
.LC30:
	.ascii	"filter SegNum\000"
	.space	2
.LC31:
	.ascii	"BlockTimeInMs\000"
	.space	2
.LC32:
	.ascii	"LastBlockTime\000"
	.space	2
.LC33:
	.ascii	"%-25s :%lld\012\000"
	.space	3
.LC34:
	.ascii	"LastPts\000"
.LC35:
	.ascii	"ThisInstID\000"
	.space	1
.LC36:
	.ascii	"SCDState\000"
	.space	3
.LC37:
	.ascii	"\012raw packets Head : %d, Histroy : %d\012\000"
	.space	2
.LC38:
	.ascii	"\012raw packets length is(first packet %d bytes use"
	.ascii	"d):\012\000"
	.space	3
.LC39:
	.ascii	"\012\000"
	.space	2
.LC40:
	.ascii	"%5d \000"
	.space	3
.LC41:
	.ascii	"***Print Scd State Reg\012\000"
.LC42:
	.ascii	"Scdover = %d \012\000"
	.space	1
.LC43:
	.ascii	"ScdInt = %d \012\000"
	.space	2
.LC44:
	.ascii	"ShortScdNum = %d \012\000"
	.space	1
.LC45:
	.ascii	"ScdNum = %d \012\000"
	.space	2
.LC46:
	.ascii	"ScdRollAddr = %0x \012\000"
.LC47:
	.ascii	"SrcEaten = %d \012\000"
.LC48:
	.ascii	"***Print Down Msg Now\012\000"
	.space	1
.LC49:
	.ascii	"DownMsgVirAddr = %x   \012\000"
.LC50:
	.ascii	"DownMsgPhyAddr = %x   \012\000"
.LC51:
	.ascii	"DownMsg[%d] = %x   \000"
.LC52:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC53:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC54:
	.ascii	"0x%02x,\000"
.LC55:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC56:
	.ascii	"Release Err StreamID %d in function %s\012\000"
.LC57:
	.ascii	"DelRaw err PacketNum=%d,DelNum=%d\012\000"
	.space	1
.LC58:
	.ascii	"Release RawPhyAddr=0x%x,Len=%d\012\000"
.LC59:
	.ascii	"SetMaxSegSize get eCapLevel failed!\012\000"
	.space	3
.LC60:
	.ascii	"SetMaxSegSize get ChanWidth/ChanHeight failed!\012\000"
.LC61:
	.ascii	"SegHead=%d\012\000"
.LC62:
	.ascii	"SegTail=%d\012\000"
.LC63:
	.ascii	"SegCurrent=%d\012\000"
	.space	1
.LC64:
	.ascii	"SegBufPhyAddr=%p\012\000"
	.space	2
.LC65:
	.ascii	"SegBufVirAddr=%p\012\000"
	.space	2
.LC66:
	.ascii	"SegBufSize=%d\012\000"
	.space	1
.LC67:
	.ascii	"SegBufReadAddr=%p\012\000"
	.space	1
.LC68:
	.ascii	"SegBufWriteAddr=%pd\012\000"
	.space	3
.LC69:
	.ascii	"SegPhyAddr=0x%x\012\000"
	.space	3
.LC70:
	.ascii	"SegVirAddr=0x%x\012\000"
	.space	3
.LC71:
	.ascii	"SegLength=%d\012\000"
	.space	2
.LC72:
	.ascii	"SegStreamID=%d\012\000"
.LC73:
	.ascii	"SegState=%d\012\000"
	.space	3
.LC74:
	.ascii	"SegIsLastSeg=%d\012\000"
	.space	3
.LC75:
	.ascii	"SegPts=%lld\012\000"
	.space	3
.LC76:
	.ascii	"RawHead=%d\012\000"
.LC77:
	.ascii	"RawTail=%d\012\000"
.LC78:
	.ascii	"RawHistory=%d\012\000"
	.space	1
.LC79:
	.ascii	"RawFirstPacketOffset=%d\012\000"
	.space	3
.LC80:
	.ascii	"CurShowIndex=%d\012\000"
	.space	3
.LC81:
	.ascii	"RawPhyAddr=0x%x\012\000"
	.space	3
.LC82:
	.ascii	"RawVirAddr=0x%x\012\000"
	.space	3
.LC83:
	.ascii	"RawLength=%d\012\000"
	.space	2
.LC84:
	.ascii	"RawPts=%ld\012\000"
.LC85:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC86:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC87:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC88:
	.ascii	"UpLen = %x\012\000"
.LC89:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC90:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC91:
	.ascii	"BufferIni = %x\012\000"
.LC92:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC93:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC94:
	.ascii	"scd time out: t_start,t_now,t_wait = %d,%d,%d\012\000"
	.space	1
.LC95:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC96:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC97:
	.ascii	"Raw packet(VFMW_RAW YUV) TOO BIG(maybe caused by w/"
	.ascii	"h... err)! can't copy to seg!\012\000"
	.space	2
.LC98:
	.ascii	"VFMW_RAW YUV disp w/h err)! discard raw packet!\012"
	.ascii	"\000"
	.space	3
.LC99:
	.ascii	"***Print Up Msg Now\012\000"
	.space	3
.LC100:
	.ascii	"ScdUpMsg[%d] = 0x%x\012\000"
	.space	3
.LC101:
	.ascii	"scd reset register map fail!\012\000"
	.space	2
.LC102:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC103:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC104:
	.ascii	"Error! (PushRawTotalLen - SrcEaten) > SM_RAW_DISCAR"
	.ascii	"D_SIZE, packet discard...\012\000"
	.space	2
.LC105:
	.ascii	"Insert err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,Is"
	.ascii	"LastSeg=%d\012\000"
	.space	1
.LC106:
	.ascii	"RawLen = %d, Pts = %ld, \012\000"
	.space	2
.LC107:
	.ascii	"Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg=%d\012"
	.ascii	"\000"
.LC108:
	.ascii	"line %d CheckSeg err\012\000"
	.space	2
.LC109:
	.ascii	"line %d SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC110:
	.ascii	"line %d Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLas"
	.ascii	"tSeg=%d\012\000"
.LC111:
	.ascii	"RawLen = %d, Pts =  %lld, \012\000"
.LC112:
	.ascii	"CheckSeg err\012\000"
	.space	2
.LC113:
	.ascii	"SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC114:
	.ascii	"Insert 2 err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,"
	.ascii	"IsLastSeg=%d\012\000"
	.space	3
.LC115:
	.ascii	"ReadScdSegNum = %d, FilterScdSegNum = 0 release raw"
	.ascii	" packet anyway!\012\000"
.LC116:
	.ascii	"Raw packet TOO BIG! can't copy to seg! Len: %#x\012"
	.ascii	"\000"
	.space	3
.LC117:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC118:
	.ascii	"RawStreamNum=%d\012\000"
	.space	3
.LC119:
	.ascii	"SegStreamNum=%d\012\000"
	.space	3
.LC120:
	.ascii	"SegStreamSize=%d\012\000"
	.space	2
.LC121:
	.ascii	"RawStreamSize=%d\012\000"
	.space	2
.LC122:
	.ascii	"long time(%d ms) not release stream seg, release an"
	.ascii	"yway!\012\000"
	.space	2
.LC123:
	.ascii	"VFMW_RAW SM_CopyYuvToDnr fail\012\000"
	.space	1
.LC124:
	.ascii	"raw_pts: %lld\012\000"
	.space	1
.LC125:
	.ascii	"Get RawPhyAddr=0x%x,Len=%d\012\000"
.LC126:
	.ascii	"!!!push raw err!!!\012\000"
.LC127:
	.ascii	"DisContinueRawPacket found! %d ---> %d\012\000"
.LC128:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC129:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC130:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 294624
	.type	s_SmIIS, %object
	.size	s_SmIIS, 290536
s_SmIIS:
	.space	290536
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	s_RegPhyBaseAddr, %object
	.size	s_RegPhyBaseAddr, 4
s_RegPhyBaseAddr:
	.space	4
	.type	pScdResetReg.35344, %object
	.size	pScdResetReg.35344, 4
pScdResetReg.35344:
	.space	4
	.type	LastEventTime.36516, %object
	.size	LastEventTime.36516, 4
LastEventTime.36516:
	.space	4
	.type	last_rec_pos_time.37792, %object
	.size	last_rec_pos_time.37792, 8
last_rec_pos_time.37792:
	.space	8
	.type	last_rec_pos_time.37906, %object
	.size	last_rec_pos_time.37906, 8
last_rec_pos_time.37906:
	.space	8
	.type	last_rec_pos_time.37366, %object
	.size	last_rec_pos_time.37366, 8
last_rec_pos_time.37366:
	.space	8
	.type	ForeceRelease, %object
	.size	ForeceRelease, 4
ForeceRelease:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
