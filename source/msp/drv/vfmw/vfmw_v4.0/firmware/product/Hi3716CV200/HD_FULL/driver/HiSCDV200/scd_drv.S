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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o -O2 -Wall
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	ldr	r2, [r3, #652]	@ temp.707, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.707,
	beq	.L2	@,
	add	r2, r2, #168	@ tmp153, temp.707,
	cmp	r2, r0	@ tmp153, pRawArray
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L2:
	ldr	r2, [r3, #656]	@ temp.709, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.709,
	beq	.L4	@,
	add	r1, r2, #168	@ tmp155, temp.709,
	cmp	r1, r0	@ tmp155, pRawArray
	moveq	r0, #1	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L4:
	ldr	r2, [r3, #660]	@ temp.711, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.711,
	beq	.L5	@,
	add	ip, r2, #168	@ tmp157, temp.711,
	cmp	ip, r0	@ tmp157, pRawArray
	moveq	r0, #2	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L5:
	ldr	r2, [r3, #664]	@ temp.713, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.713,
	beq	.L6	@,
	add	r2, r2, #168	@ tmp159, temp.713,
	cmp	r2, r0	@ tmp159, pRawArray
	moveq	r0, #3	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L6:
	ldr	r2, [r3, #668]	@ temp.715, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.715,
	beq	.L7	@,
	add	r1, r2, #168	@ tmp161, temp.715,
	cmp	r1, r0	@ tmp161, pRawArray
	moveq	r0, #4	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L7:
	ldr	r2, [r3, #672]	@ temp.717, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.717,
	beq	.L8	@,
	add	ip, r2, #168	@ tmp163, temp.717,
	cmp	ip, r0	@ tmp163, pRawArray
	moveq	r0, #5	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L8:
	ldr	r2, [r3, #676]	@ temp.719, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.719,
	beq	.L9	@,
	add	r2, r2, #168	@ tmp165, temp.719,
	cmp	r2, r0	@ tmp165, pRawArray
	moveq	r0, #6	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L9:
	ldr	r2, [r3, #680]	@ temp.721, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.721,
	beq	.L10	@,
	add	r1, r2, #168	@ tmp167, temp.721,
	cmp	r1, r0	@ tmp167, pRawArray
	moveq	r0, #7	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L10:
	ldr	r2, [r3, #684]	@ temp.723, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.723,
	beq	.L11	@,
	add	ip, r2, #168	@ tmp169, temp.723,
	cmp	ip, r0	@ tmp169, pRawArray
	moveq	r0, #8	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L11:
	ldr	r2, [r3, #688]	@ temp.725, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.725,
	beq	.L12	@,
	add	r2, r2, #168	@ tmp171, temp.725,
	cmp	r2, r0	@ tmp171, pRawArray
	moveq	r0, #9	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L12:
	ldr	r2, [r3, #692]	@ temp.727, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.727,
	beq	.L13	@,
	add	r1, r2, #168	@ tmp173, temp.727,
	cmp	r1, r0	@ tmp173, pRawArray
	moveq	r0, #10	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L13:
	ldr	r2, [r3, #696]	@ temp.729, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.729,
	beq	.L14	@,
	add	ip, r2, #168	@ tmp175, temp.729,
	cmp	ip, r0	@ tmp175, pRawArray
	moveq	r0, #11	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L14:
	ldr	r2, [r3, #700]	@ temp.731, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.731,
	beq	.L15	@,
	add	r2, r2, #168	@ tmp177, temp.731,
	cmp	r2, r0	@ tmp177, pRawArray
	moveq	r0, #12	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L15:
	ldr	r2, [r3, #704]	@ temp.733, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.733,
	beq	.L16	@,
	add	r1, r2, #168	@ tmp179, temp.733,
	cmp	r1, r0	@ tmp179, pRawArray
	moveq	r0, #13	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L16:
	ldr	r2, [r3, #708]	@ temp.735, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.735,
	beq	.L17	@,
	add	ip, r2, #168	@ tmp181, temp.735,
	cmp	ip, r0	@ tmp181, pRawArray
	moveq	r0, #14	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L17:
	ldr	r3, [r3, #712]	@ D.38429, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38429,
	beq	.L18	@,
	add	r3, r3, #168	@ tmp183, D.38429,
	cmp	r3, r0	@ tmp183, pRawArray
	moveq	r0, #15	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L18:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
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
	cmp	r0, #15	@ SmID,
	bls	.L25	@,
.L22:
	mvn	r0, #3	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L25:
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp141, tmp137, SmID,
	ldr	r3, [r3, #652]	@ D.38516, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38516,
	beq	.L22	@,
	movw	ip, #:lower16:73900	@ tmp143,
	movt	ip, #:upper16:73900	@ tmp143,
	movw	r2, #:lower16:73904	@ tmp153,
	movt	r2, #:upper16:73904	@ tmp153,
	ldr	r0, [r3, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r3, r0, #1	@ tmp144, <variable>.RawPacketArray.Tail,
	mov	r2, r3, asr #31	@ tmp147, tmp144,
	mov	r2, r2, lsr #22	@ tmp148, tmp147,
	add	r1, r3, r2	@ tmp149, tmp144, tmp148
	mov	r3, r1, asl #22	@ tmp150, tmp149,
	mov	r1, r3, lsr #22	@ tmp150, tmp150,
	rsb	r3, r2, r1	@ tmp152, tmp148, tmp150
	cmp	r3, ip	@ tmp152, <variable>.RawPacketArray.History
	movne	r0, #0	@ Ret,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L22	@
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L31	@,
.L27:
	mvn	r0, #0	@ D.38572,
	ldmfd	sp, {fp, sp, pc}	@
.L31:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.38573, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.38573, <variable>.Tail
	mvneq	r0, #2	@ D.38572,
	ldmeqfd	sp, {fp, sp, pc}	@
	add	ip, r2, r2, asl #3	@, tmp146, D.38573, D.38573,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.38572,
	ldmltfd	sp, {fp, sp, pc}	@
	b	.L27	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1371:
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
	mvneq	r0, #0	@ D.38592,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.38592,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	GetRawStreamSize
	.type	GetRawStreamSize, %function
GetRawStreamSize:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L41	@,
.L38:
	mvn	r0, #0	@ D.38816,
	ldmfd	sp, {fp, sp, pc}	@
.L41:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.38817, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.38817,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.38820, <variable>.FirstPacketOffset, D.38817
	str	r3, [r1, #0]	@ D.38820,* pStreamSize
	cmp	r3, #0	@ D.38820,
	movge	r0, #0	@ D.38816,
	ldmgefd	sp, {fp, sp, pc}	@
	b	.L38	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.38829,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.38829,
	rsb	r3, r2, ip	@ D.38832, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.38832,* pStreamNum
	cmp	r3, #0	@ D.38832,
	addlt	r3, r3, #1024	@ tmp142, D.38832,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetRawStreamNumInBuffer
	.type	GetRawStreamNumInBuffer, %function
GetRawStreamNumInBuffer:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.38843,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:73732	@ tmp138,
	movw	r3, #:lower16:73736	@ tmp139,
	movt	ip, #:upper16:73732	@ tmp138,
	movt	r3, #:upper16:73736	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.History, <variable>.History
	mov	r0, #0	@ D.38843,
	rsb	r3, ip, r2	@ D.38846, <variable>.History, <variable>.Tail
	str	r3, [r1, #0]	@ D.38846,* pStreamNum
	cmp	r3, #0	@ D.38846,
	addlt	r3, r3, #1024	@ tmp142, D.38846,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNumInBuffer, .-GetRawStreamNumInBuffer
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
	.fnstart
.LFB1382:
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
	movw	ip, #:lower16:92184	@ tmp143,
	movt	ip, #:upper16:92184	@ tmp143,
	movw	r3, #:lower16:92188	@ tmp145,
	movt	r3, #:upper16:92188	@ tmp145,
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
.LFB1383:
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
	movw	ip, #:lower16:92196	@ tmp147,
	movt	ip, #:upper16:92196	@ tmp147,
	movw	r4, #:lower16:92192	@ tmp151,
	movt	r4, #:upper16:92192	@ tmp151,
	ldr	r5, [r0, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	str	r5, [r1, #0]	@ <variable>.SegBufWriteAddr,* pAddr
	str	r3, [r2, #0]	@ tmp146,* pLength
	ldr	r1, [r0, ip]	@ temp.923, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.38919, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.923, D.38919
	bgt	.L61	@,
	movw	r3, #:lower16:92188	@ tmp156,
	movt	r3, #:upper16:92188	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.38919,
	ldrge	r3, [r0, r3]	@ prephitmp.912, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.923, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.912, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.912,
	cmp	r1, r3	@ Len, prephitmp.912
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L61:
	movw	r3, #:lower16:92188	@ tmp152,
	movt	r3, #:upper16:92188	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.912, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.38919, prephitmp.912
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.923, tmp154
	cmp	r1, r3	@ Len, prephitmp.912
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
	.fnstart
.LFB1387:
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
	movwne	r2, #:lower16:92200	@ tmp137,
	movtne	r2, #:upper16:92200	@ tmp137,
	mvneq	r0, #0	@ D.39080,
	movne	r0, #0	@ D.39080,
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
	cmp	r0, #0	@ pSegStreamArray
	mvneq	r0, #0	@ D.39088,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:92172	@ tmp138,
	movw	r3, #:lower16:92168	@ tmp139,
	movt	ip, #:upper16:92172	@ tmp138,
	movt	r3, #:upper16:92168	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.39088,
	rsb	r3, ip, r2	@ D.39091, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.39091,* pStreamNum
	cmp	r3, #0	@ D.39091,
	addlt	r3, r3, #1152	@ tmp142, D.39091,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
	.fnstart
.LFB1389:
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
	movw	ip, #:lower16:92208	@ tmp136,
	movt	ip, #:upper16:92208	@ tmp136,
	movw	r3, #:lower16:92204	@ tmp138,
	movt	r3, #:upper16:92204	@ tmp138,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #800]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r2, [r3, #788]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp142,
	moveq	r2, #2	@ tmp140,
	strne	r2, [r3, #800]	@ tmp142, s_eScdDrvSleepStage
	streq	r2, [r3, #800]	@ tmp140, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
	.fnstart
.LFB1391:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #800]	@, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForeceSleep
	.type	SCDDRV_ForeceSleep, %function
SCDDRV_ForeceSleep:
	.fnstart
.LFB1392:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	ldr	r2, [r3, #800]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #800]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ForeceSleep, .-SCDDRV_ForeceSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1402:
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
	add	r0, r3, r0, asl #2	@, tmp143, tmp139, SmID,
	ldr	r1, [r0, #652]	@ D.39426, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.39426,
	beq	.L85	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L91	@,
.L85:
	mov	r0, #0	@ D.39429,
	ldmfd	sp, {fp, sp, pc}	@
.L91:
	mov	r0, #0	@ tmp148,
	str	r0, [r1, r2]	@ tmp148, <variable>.Mode
	ldr	r3, [r3, #804]	@ s_SCDInISR, s_SCDInISR
	cmp	r3, r0	@ s_SCDInISR,
	beq	.L85	@,
	mov	r3, r0	@ i, tmp148
.L86:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L86	@,
	mvn	r0, #6	@ D.39429,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1403:
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
	cmp	r0, #15	@ SmID,
	bhi	.L93	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	add	r0, r3, r0, asl #2	@, tmp145, tmp141, SmID,
	ldr	r3, [r0, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L99	@,
	movw	r2, #:lower16:166252	@ tmp149,
	movt	r2, #:upper16:166252	@ tmp149,
	movw	ip, #:lower16:180116	@ tmp152,
	movt	ip, #:upper16:180116	@ tmp152,
	ldr	r4, [r3, r2]	@ <variable>.Mode, <variable>.Mode
	movw	r0, #:lower16:73900	@ tmp154,
	movw	r2, #:lower16:73896	@ tmp155,
	movt	r0, #:upper16:73900	@ tmp154,
	movt	r2, #:upper16:73896	@ tmp155,
	strb	r4, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	r4, [r3, ip]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	str	r4, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:73916	@ tmp159,
	ldr	r0, [r3, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:73916	@ tmp159,
	rsb	r4, ip, r0	@ D.41747, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r4, [r1, #4]	@ D.41747, <variable>.RawNum
	cmp	r4, #0	@ D.41747,
	movw	ip, #:lower16:73908	@ tmp160,
	addlt	r4, r4, #1024	@ tmp158, D.41747,
	strlt	r4, [r1, #4]	@ tmp158, <variable>.RawNum
	ldr	r4, [r3, r2]	@ D.41757, <variable>.RawPacketArray.RawTotalSize
	movt	ip, #:upper16:73908	@ tmp160,
	movw	r0, #:lower16:166092	@ tmp163,
	movw	r2, #:lower16:166088	@ tmp164,
	movt	r0, #:upper16:166092	@ tmp163,
	movt	r2, #:upper16:166088	@ tmp164,
	str	r4, [r1, #12]	@ D.41757, <variable>.TotalRawSize
	ldr	ip, [r3, ip]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp162, <variable>.RawPacketArray.FirstPacketOffset, D.41757
	str	r4, [r1, #12]	@ tmp162, <variable>.TotalRawSize
	ldr	r0, [r3, r0]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r2, [r3, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	rsb	ip, r2, r0	@ D.41764, <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Tail
	movw	r2, #:lower16:166120	@ tmp168,
	movt	r2, #:upper16:166120	@ tmp168,
	cmp	ip, #0	@ D.41764,
	str	ip, [r1, #8]	@ D.41764, <variable>.SegNum
	addlt	ip, ip, #1152	@ tmp167, D.41764,
	strlt	ip, [r1, #8]	@ tmp167, <variable>.SegNum
	mov	r0, #0	@ D.39442,
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L99:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.39442,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
.L93:
	mvn	r0, #0	@ D.39442,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	sub	r2, r1, #1	@ tmp144, Mode,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, ip, r0, asl #2	@, tmp142, tmp138, SmID,
	cmp	r2, #1	@ tmp144,
	ldr	r3, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bls	.L104	@,
.L101:
	mvn	r0, #0	@ D.39824,
	ldmfd	sp, {fp, sp, pc}	@
.L104:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L101	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	mov	r0, #0	@ D.39824,
	str	r1, [r3, r2]	@ Mode, <variable>.Mode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
	.fnstart
.LFB1417:
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
	ldr	r3, [r0, #16]	@ <variable>.ScdRollAddr, <variable>.ScdRollAddr
	cmp	r3, #0	@ <variable>.ScdRollAddr,
	mvneq	r0, #6	@,,
	movne	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CheckScdStateReg, .-CheckScdStateReg
	.align	2
	.global	ScdParseUpMsgInfo
	.type	ScdParseUpMsgInfo, %function
ScdParseUpMsgInfo:
	.fnstart
.LFB1418:
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
	mvneq	r5, #0	@ D.40077,
	beq	.L111	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.40083, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #72]	@ tmp146,
	mov	r5, #0	@ D.40077,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.40083,
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	ldr	r3, [r3, r2, asl #2]	@ tmp150,* <variable>.pScdUpMsg
	mov	r3, r3, lsr #31	@ tmp149, tmp150,
	bfi	r4, r3, #1, #1	@ tmp151, tmp149,,
	strb	r4, [r1, #72]	@ tmp151,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r4	@ tmp163, tmp151
	ldr	r2, [r2, ip, asl #2]	@ tmp156,* <variable>.pScdUpMsg
	ubfx	r2, r2, #16, #1	@ tmp158, tmp156,,
	bfi	r3, r2, #2, #1	@ tmp163, tmp158,,
	strb	r3, [r1, #72]	@ tmp163,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r3	@ tmp174, tmp163
	ldr	r2, [r2, ip, asl #2]	@ tmp167,* <variable>.pScdUpMsg
	ubfx	r2, r2, #4, #3	@ tmp171, tmp167,,
	bfi	r3, r2, #3, #4	@ tmp174, tmp171,,
	strb	r3, [r1, #72]	@ tmp174,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldrh	r3, [r1, #72]	@,
	ldr	r0, [r2, ip, asl #2]	@ tmp177,* <variable>.pScdUpMsg
	and	r2, r0, #7	@ tmp181, tmp177,
	bfi	r3, r2, #7, #4	@ tmp184, tmp181,,
	strh	r3, [r1, #72]	@ movhi	@ tmp184,
.L111:
	mov	r0, r5	@, D.40077
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
.LFB1420:
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
	mvneq	r0, #0	@ D.40231,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L120	@,
.L118:
	mvn	r0, #6	@ D.40231,
	ldmfd	sp, {fp, sp, pc}	@
.L120:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L118	@,
	ldr	ip, [r0, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movle	r0, #0	@ D.40231,
	ldmlefd	sp, {fp, sp, pc}	@
	b	.L118	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	SM_GetExteriorState
	.type	SM_GetExteriorState, %function
SM_GetExteriorState:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_GetExteriorState, .-SM_GetExteriorState
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1425:
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
	cmp	r0, #15	@ InstID,
	bhi	.L124	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r3, r0, asl #2	@, tmp141, tmp137, InstID,
	ldr	r2, [r0, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L124	@,
	movw	ip, #:lower16:166252	@ tmp143,
	movt	ip, #:upper16:166252	@ tmp143,
	ldr	r1, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	beq	.L124	@,
	ldr	r0, [r2, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	r0, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.40656
	moveq	r0, #1	@, D.40656
	ldmfd	sp, {fp, sp, pc}	@
.L124:
	mov	r0, #0	@ D.40656,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1427:
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
	cmp	r0, #15	@ InstID,
	bls	.L132	@,
.L128:
	mov	r0, #0	@ D.40693,
.L130:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L132:
	sub	r1, fp, #36	@,,
	bl	SM_GetInfo	@
	ldrsb	r3, [fp, #-36]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L128	@,
	ldr	ip, [fp, #-24]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [fp, #-20]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.40693,
	blt	.L130	@,
	ldr	r0, [fp, #-28]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L128	@,
	ldr	lr, [fp, #-32]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.40693
	movle	r0, #1	@, D.40693
	b	.L130	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	PrintScdInputRawAfterStart
	.type	PrintScdInputRawAfterStart, %function
PrintScdInputRawAfterStart:
	.fnstart
.LFB1439:
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
.LFB1441:
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
	movw	r7, #:lower16:.LANCHOR0	@ tmp147,
	movt	r7, #:upper16:.LANCHOR0	@ tmp147,
	sub	r1, fp, #68	@ tmp140,,
	add	r2, r7, r0, asl #2	@, tmp151, tmp147, SmID,
	add	r3, r1, #4	@ tmp279, tmp140,
	mov	r5, #0	@ tmp141,
	mov	r6, r0	@ SmID, SmID
	ldr	r4, [r2, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	str	r5, [r3], #4	@ tmp141, SmInstInfo
	str	r5, [r3], #4	@ tmp141, SmInstInfo
	str	r5, [r3], #4	@ tmp141, SmInstInfo
	str	r5, [r3], #4	@ tmp141, SmInstInfo
	str	r5, [r3, #0]	@ tmp141, SmInstInfo
	str	r5, [fp, #-68]	@ tmp141, SmInstInfo
	bl	SM_GetInfo	@
	cmp	r4, r5	@ pSmInstArray,
	beq	.L141	@,
	mov	r2, r6	@, SmID
	movw	r6, #:lower16:166252	@ tmp156,
	movt	r6, #:upper16:166252	@ tmp156,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@, <variable>.Mode
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r8, #:lower16:73904	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #52]	@ zero_extendqisi2	@, <variable>.Config.Priority
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC3	@,
	movt	r8, #:upper16:73904	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #56]	@, <variable>.Config.VidStd
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC4	@,
	movw	r6, #:lower16:73900	@ tmp271,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #60]	@, <variable>.Config.BufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	movw	sl, #:lower16:1717986919	@ tmp275,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@, <variable>.Config.pBufVirAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC7	@,
	movt	r6, #:upper16:73900	@ tmp271,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #64]	@, <variable>.Config.BufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC8	@,
	movt	sl, #:upper16:1717986919	@ tmp275,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #68]	@, <variable>.Config.RegPhyBaseAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166136	@ tmp171,
	movt	r3, #:upper16:166136	@ tmp171,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.SmPushRaw.PushRawNum
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:166140	@ tmp174,
	movt	r2, #:upper16:166140	@ tmp174,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.SmPushRaw.PushRawTotalLen
	movw	r2, #:lower16:.LC11	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:166152	@ tmp177,
	movt	ip, #:upper16:166152	@ tmp177,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC12	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166160	@ tmp180,
	movt	r3, #:upper16:166160	@ tmp180,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.BufAddrCfg.DownMsgSize
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:166164	@ tmp183,
	movt	r2, #:upper16:166164	@ tmp183,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	movw	r2, #:lower16:.LC14	@,
	movt	r2, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:166176	@ tmp186,
	movt	ip, #:upper16:166176	@ tmp186,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC15	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.UpMsgNum
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166172	@ tmp189,
	movt	r3, #:upper16:166172	@ tmp189,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.BufAddrCfg.UpMsgSize
	movt	r2, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:166240	@ tmp192,
	movt	r2, #:upper16:166240	@ tmp192,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r4, r2]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	movw	r2, #:lower16:.LC17	@,
	movt	r2, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:166244	@ tmp195,
	movt	ip, #:upper16:166244	@ tmp195,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC18	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.SegBufSize
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-52]	@, SmInstInfo.TotalSegSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, SmInstInfo.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-56]	@, SmInstInfo.TotalRawSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-64]	@, SmInstInfo.RawNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@, <variable>.SegFilter.ProtocolType
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #20]	@, <variable>.SegFilter.ModeFlag
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #24]	@, <variable>.SegFilter.LastH263Num
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@, <variable>.SegFilter.SegBufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #32]	@, <variable>.SegFilter.SegBufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@, <variable>.SegFilter.SegBufRollAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #12]	@, <variable>.SegFilter.pScdUpMsg
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #40]	@, <variable>.SegFilter.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:180080	@ tmp222,
	movt	r3, #:upper16:180080	@ tmp222,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.BlockTimeInMs
	movt	r2, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:180084	@ tmp225,
	movt	r2, #:upper16:180084	@ tmp225,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.LastBlockTime
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:180088	@ tmp229,
	movt	ip, #:upper16:180088	@ tmp229,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldrd	r2, [r4, ip]	@, pSmInstArray, tmp229
	strd	r2, [sp]	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #784]	@, s_SmIIS.ThisInstID
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #788]	@, s_SmIIS.SCDState
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC36	@,
	movw	r7, #:lower16:73908	@ tmp244,
	bl	dprint_vfmw	@
	ldr	ip, [r4, r8]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	movw	r3, #:lower16:73896	@ tmp239,
	movt	r3, #:upper16:73896	@ tmp239,
	movt	r7, #:upper16:73908	@ tmp244,
	mov	r0, #32	@,
	ldr	r3, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC37	@,
	movt	r2, #:upper16:.LC36	@,
	str	ip, [sp, #0]	@ <variable>.RawPacketArray.History,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r7]	@, <variable>.RawPacketArray.FirstPacketOffset
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r7, [r4, r8]	@ idx, <variable>.RawPacketArray.History
.L152:
	ldr	r2, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r2, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L138	@,
.L155:
	add	r3, r7, r7, asl #3	@, tmp263, idx, idx,
	mov	r0, #32	@,
	add	r7, r7, #1	@ idx, idx,
	movw	r1, #:lower16:.LC40	@,
	add	r8, r4, r3, asl #3	@, tmp265, pSmInstArray, tmp263,
	movt	r1, #:upper16:.LC40	@,
	add	r5, r5, #1	@ tmp277, i,
	ldr	r2, [r8, #176]	@, <variable>.Length
	movw	r8, #1023	@,
	bl	dprint_vfmw	@
	cmp	r7, r8	@ idx,
	subgt	r7, r7, #1024	@ idx, idx,
	cmp	r5, #1024	@ tmp277,
	beq	.L138	@,
	smull	r3, ip, sl, r5	@, tmp248, tmp275, tmp277
	mov	lr, r5, asr #31	@ tmp251, tmp277,
	rsb	r1, lr, ip, asr #2	@, tmp247, tmp251, tmp248,
	add	r0, r1, r1, asl #2	@, tmp254, tmp247, tmp247,
	cmp	r5, r0, asl #1	@ tmp277, tmp254,
	beq	.L153	@,
.L149:
	ldr	r0, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L138	@,
	add	lr, r7, r7, asl #3	@, tmp288, idx, idx,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	add	r9, r4, lr, asl #3	@, tmp290, pSmInstArray, tmp288,
	add	r7, r7, #1	@ idx, idx,
	ldr	r2, [r9, #176]	@, <variable>.Length
	movw	r9, #1023	@,
	bl	dprint_vfmw	@
	add	r3, r5, #1	@ i, tmp277,
	cmp	r7, r9	@ idx,
	smull	ip, r0, sl, r3	@, tmp297, tmp275, i
	mov	r2, r3, asr #31	@ tmp299, i,
	subgt	r7, r7, #1024	@ idx, idx,
	rsb	ip, r2, r0, asr #2	@, tmp300, tmp299, tmp297,
	add	r1, ip, ip, asl #2	@, tmp302, tmp300, tmp300,
	cmp	r3, r1, asl #1	@ i, tmp302,
	beq	.L154	@,
.L150:
	ldr	r1, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r1, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L138	@,
	add	r3, r7, r7, asl #3	@, tmp308, idx, idx,
	add	r5, r5, #2	@ i, tmp277,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC40	@,
	add	lr, r4, r3, asl #3	@, tmp310, pSmInstArray, tmp308,
	movt	r1, #:upper16:.LC40	@,
	add	r7, r7, #1	@ idx, idx,
	ldr	r2, [lr, #176]	@, <variable>.Length
	bl	dprint_vfmw	@
	smull	r3, r2, sl, r5	@, tmp315, tmp275, i
	mov	r0, r5, asr #31	@ tmp317, i,
	movw	r1, #1023	@,
	cmp	r7, r1	@ idx,
	subgt	r7, r7, #1024	@ idx, idx,
	rsb	ip, r0, r2, asr #2	@, tmp318, tmp317, tmp315,
	add	r3, ip, ip, asl #2	@, tmp320, tmp318, tmp318,
	cmp	r5, r3, asl #1	@ i, tmp320,
	bne	.L152	@,
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r2, r7	@ <variable>.RawPacketArray.Tail, idx
	bne	.L155	@,
.L138:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
.L141:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L153:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L149	@
.L154:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L150	@
	.fnend
	.size	PrintSmInfo, .-PrintSmInfo
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1438:
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
.LFB1437:
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
	add	r5, r7, #12	@ ivtmp.1408, pDownMsgVirAddr,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	sl, #0	@ tmp190,
	beq	.L160	@,
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1408
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
	add	r5, r7, #24	@ ivtmp.1408, pDownMsgVirAddr,
	mov	r4, #6	@ j,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L160:
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1408
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
	add	r7, r5, #12	@ tmp192, ivtmp.1408,
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
	add	r5, r5, #24	@ ivtmp.1408, ivtmp.1408,
	bgt	.L160	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1426:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	bhi	.L174	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r2, r0, asl #2	@, tmp142, tmp138, InstID,
	ldr	ip, [r0, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	rsbs	r3, ip, #1	@ tmp151, pSmInstArray
	movcc	r3, #0	@ tmp151
	orrs	r3, r3, r1, lsr #31	@,, tmp151, Flag,
	bne	.L175	@,
	movw	r2, #:lower16:166252	@ tmp153,
	movt	r2, #:upper16:166252	@ tmp153,
	ldr	r3, [ip, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	strne	r1, [ip, #84]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	r3, [ip, #84]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	moveq	r0, #1	@ D.40674,
	movne	r0, #1	@ D.40674,
	b	.L170	@
.L175:
	mov	r3, r1	@, Flag
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC52	@,
	movw	r2, #3505	@,
	movt	r1, #:upper16:.LC52	@,
	str	ip, [sp, #0]	@ pSmInstArray,
	bl	dprint_vfmw	@
.L174:
	mov	r0, #0	@ D.40674,
.L170:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
.LFB1393:
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
	ldr	r0, [r3, #8]	@ D.39131, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.39131,
	beq	.L177	@,
	blx	r0	@ D.39131
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #800]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
.L177:
	movw	r2, #1267	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #800]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1386:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pStreamSegArray, pStreamSegArray
	mov	r4, r1	@ StreamID, StreamID
	bne	.L207	@,
.L181:
	mvn	r0, #0	@ Ret,
.L195:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L207:
	sub	r2, r1, #1152	@ tmp148, StreamID,
	movw	r3, #:lower16:-1154	@ tmp150,
	movt	r3, #:upper16:-1154	@ tmp150,
	cmp	r2, r3	@ tmp148, tmp150
	bls	.L181	@,
	cmn	r1, #1	@ StreamID,
	beq	.L208	@,
	movw	r3, #:lower16:92168	@ tmp199,
	movw	r1, #:lower16:92172	@ tmp200,
	movt	r3, #:upper16:92168	@ tmp199,
	movt	r1, #:upper16:92172	@ tmp200,
	ldr	r3, [r5, r3]	@ i, <variable>.Head
	ldr	ip, [r5, r1]	@ temp.1505, <variable>.Tail
	cmp	ip, r3	@ temp.1505, i
	beq	.L183	@,
	cmp	r3, r4	@ i, StreamID
	movwne	r0, #:lower16:954437177	@ tmp296,
	movtne	r0, #:upper16:954437177	@ tmp296,
	bne	.L199	@,
	b	.L187	@
.L204:
	cmp	r3, r4	@ i, StreamID
	beq	.L187	@,
.L199:
	add	lr, r3, #1	@ D.39053, i,
	smull	r2, r1, r0, lr	@, tmp217, tmp296, D.39053
	mov	r2, lr, asr #31	@ tmp220, D.39053,
	rsb	r2, r2, r1, asr #8	@, i, tmp220, tmp217,
	add	r1, r2, r2, asl #3	@, tmp223, i, i,
	sub	r3, lr, r1, asl #7	@ i, D.39053, tmp223,
	cmp	ip, r3	@ temp.1505, i
	bne	.L204	@,
.L183:
	mov	r2, r4	@, StreamID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC57	@,
	movw	r3, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r3, #:upper16:.LANCHOR1	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ Ret,
	b	.L195	@
.L187:
	add	ip, r3, r3, asl #2	@, tmp203, i, i,
	add	r0, r5, ip, asl #4	@, tmp207, pStreamSegArray, tmp203,
	add	r6, r0, #8	@ tmp208, tmp207,
	ldrsb	r2, [r6, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #2	@ <variable>.SegState,
	bne	.L183	@,
.L186:
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	mov	lr, #0	@ tmp225,
	ldr	r3, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #26	@,
	ldr	r2, [r6, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC56	@,
	strb	lr, [r6, #4]	@ tmp225, <variable>.SegState
	movt	r1, #:upper16:.LC56	@,
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	str	r4, [sp, #4]	@ StreamID,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:92168	@ tmp231,
	movt	r3, #:upper16:92168	@ tmp231,
	ldr	r3, [r5, r3]	@ i.1509, <variable>.Head
	cmp	r3, r4	@ i.1509, StreamID
	beq	.L209	@,
.L190:
	movw	r3, #:lower16:92200	@ tmp272,
	movt	r3, #:upper16:92200	@ tmp272,
	ldr	ip, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r5, r3]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	r2, ip, r1	@ tmp276, <variable>.LenInByte, <variable>.SegTotalSize
	bic	ip, r2, r2, asr #31	@ tmp277, tmp276
	str	ip, [r5, r3]	@ tmp277, <variable>.SegTotalSize
	b	.L195	@
.L208:
	movw	ip, #:lower16:92168	@ tmp151,
	movw	r1, #:lower16:92172	@ tmp152,
	movt	ip, #:upper16:92168	@ tmp151,
	movt	r1, #:upper16:92172	@ tmp152,
	ldr	sl, [r5, ip]	@ D.39023, <variable>.Head
	ldr	r0, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	sl, r0	@ D.39023, <variable>.Tail
	beq	.L183	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC54	@,
	mov	r2, sl	@, D.39023
	movt	r1, #:upper16:.LC54	@,
	mov	r9, sl, asl #2	@ tmp282, D.39023,
	bl	dprint_vfmw	@
	add	r3, r9, sl	@ tmp157, tmp282, D.39023
	mov	r4, sl	@ StreamID, D.39023
	add	r8, r3, #1	@ tmp158, tmp157,
	add	r8, r5, r8, asl #4	@, tmp161, pStreamSegArray, tmp158,
	ldr	r6, [r8, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #0	@ <variable>.LenInByte,
	ble	.L184	@,
	mov	lr, r3, asl #1	@ tmp288, tmp157,
	add	r8, r8, #4	@ tmp295, tmp161,
	add	r7, lr, #1	@ tmp289, tmp288,
	mov	r6, #0	@ i.1507,
.L185:
	ldr	ip, [r5, r7, asl #3]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	ldrb	r2, [ip, r6]	@ zero_extendqisi2	@,* i.1507
	add	r6, r6, #1	@ i.1507, i.1507,
	bl	dprint_vfmw	@
	ldr	r0, [r8, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #15	@ i.1507,
	movgt	r2, #0	@,
	movle	r2, #1	@,
	cmp	r0, r6	@ <variable>.LenInByte, i.1507
	movle	r2, #0	@,,
	cmp	r2, #0	@ tmp191,
	bne	.L185	@,
.L184:
	add	lr, r9, sl	@ tmp194, tmp282, D.39023
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC39	@,
	add	r6, r5, lr, asl #4	@, tmp197, pStreamSegArray, tmp194,
	add	r6, r6, #8	@ pSeg, tmp197,
	bl	dprint_vfmw	@
	b	.L186	@
.L209:
	movw	r2, #:lower16:92172	@ tmp232,
	movt	r2, #:upper16:92172	@ tmp232,
	ldr	r0, [r5, r2]	@ temp.1516, <variable>.Tail
	cmp	r4, r0	@ StreamID, temp.1516
	beq	.L191	@,
	mov	r2, r4, asl #2	@ tmp234, StreamID,
	add	r4, r2, r4	@ tmp235, tmp234, StreamID
	add	r4, r5, r4, asl #4	@, tmp239, pStreamSegArray, tmp235,
	ldrsb	r1, [r4, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r1, #0	@ <variable>.SegState,
	movweq	ip, #:lower16:954437177	@ tmp286,
	movteq	ip, #:upper16:954437177	@ tmp286,
	beq	.L198	@,
	b	.L192	@
.L206:
	add	r1, r5, r1, asl #4	@, tmp253, pStreamSegArray, tmp249,
	ldrsb	r1, [r1, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r1, #0	@ <variable>.SegState,
	bne	.L192	@,
.L198:
	add	r3, r3, #1	@ temp.1511, i.1509,
	smull	r2, r1, ip, r3	@, tmp264, tmp286, temp.1511
	mov	r2, r3, asr #31	@ tmp267, temp.1511,
	rsb	r2, r2, r1, asr #8	@, i.1509, tmp267, tmp264,
	add	r1, r2, r2, asl #3	@, tmp270, i.1509, i.1509,
	sub	r3, r3, r1, asl #7	@ i.1509, temp.1511, tmp270,
	cmp	r3, r0	@ i.1509, temp.1516
	mov	r2, r3, asl #2	@ tmp281, i.1509,
	add	r1, r2, r3	@ tmp249, tmp281, i.1509
	bne	.L206	@,
.L191:
	movw	r1, #:lower16:92196	@ tmp245,
	movt	r1, #:upper16:92196	@ tmp245,
	movw	r2, #:lower16:92168	@ tmp243,
	movw	r3, #:lower16:92192	@ tmp244,
	ldr	ip, [r5, r1]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:92168	@ tmp243,
	movt	r3, #:upper16:92192	@ tmp244,
	str	r0, [r5, r2]	@ temp.1516, <variable>.Head
	str	ip, [r5, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L190	@
.L192:
	add	r2, r2, r3	@ tmp261, tmp281, i.1509
	movw	r1, #:lower16:92168	@ tmp257,
	add	r0, r2, #1	@ tmp262, tmp261,
	movt	r1, #:upper16:92168	@ tmp257,
	movw	ip, #:lower16:92192	@ tmp258,
	movt	ip, #:upper16:92192	@ tmp258,
	str	r3, [r5, r1]	@ i.1509, <variable>.Head
	ldr	r3, [r5, r0, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, ip]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L190	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
.LFB1374:
	@ args = 32, pretend = 0, frame = 32
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
	rsbs	ip, r0, #1	@ tmp161, pRawStreamArray
	movcc	ip, #0	@ tmp161
	ldr	r9, [fp, #4]	@ pPts, pPts
	orrs	ip, ip, r1, lsr #31	@,, tmp161, Len,
	ldr	r7, [fp, #32]	@ pRawPts, pRawPts
	beq	.L223	@,
.L211:
	mvn	ip, #0	@ D.38725,
.L219:
	mov	r0, ip	@, D.38725
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L223:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L211	@,
	mov	ip, #73728	@ tmp173,
	movw	sl, #:lower16:73732	@ tmp179,
	ldr	ip, [r0, ip]	@ D.38731, <variable>.Head
	movt	sl, #:upper16:73732	@ tmp179,
	movw	r4, #:lower16:73740	@ tmp178,
	movt	r4, #:upper16:73740	@ tmp178,
	ldr	r6, [r0, sl]	@ <variable>.Tail, <variable>.Tail
	mov	r5, ip, asl #3	@ tmp332, D.38731,
	ldr	sl, [r0, r4]	@ D.38733, <variable>.FirstPacketOffset
	add	r8, r5, ip	@ tmp176, tmp332, D.38731
	subs	r6, r6, ip	@ RawNum, <variable>.Tail, D.38731
	add	r5, r5, ip	@ tmp184, tmp332, D.38731
	add	r4, r8, #1	@ tmp177, tmp176,
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	ldr	r8, [r0, r4, asl #3]	@ D.38732, <variable>.Length
	add	ip, r6, ip	@, RawNum, D.38731
	str	ip, [fp, #-48]	@, %sfp
	add	ip, r0, r5, asl #3	@, tmp186, pRawStreamArray, tmp184,
	ldrd	r4, [ip, #16]	@ <variable>.Pts, tmp186,
	strd	r4, [r9]	@ <variable>.Pts,* pPts
	ldr	r6, [fp, #8]	@, pUsertag
	ldrd	r4, [ip, #32]	@ <variable>.UserTag, tmp186,
	strd	r4, [r6]	@ <variable>.UserTag,
	ldrd	r4, [ip, #16]	@ <variable>.Pts, tmp186,
	strd	r4, [r7]	@ <variable>.Pts,* pRawPts
	ldr	r6, [fp, #12]	@, pDisptime
	ldrd	r4, [ip, #40]	@ <variable>.DispTime, tmp186,
	strd	r4, [r6]	@ <variable>.DispTime,
	ldr	r5, [fp, #16]	@, pDispEnableFlag
	ldr	r6, [ip, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r6, [r5, #0]	@ <variable>.DispEnableFlag,
	ldr	r4, [fp, #20]	@, pDispFrameDistance
	ldr	r5, [ip, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r5, [r4, #0]	@ <variable>.DispFrameDistance,
	ldr	r5, [fp, #24]	@, pDistanceBeforeFirstFrame
	ldr	r6, [ip, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r6, [r5, #0]	@ <variable>.DistanceBeforeFirstFrame,
	ldr	r6, [fp, #28]	@, pGopNum
	ldr	r4, [ip, #68]	@ <variable>.GopNum, <variable>.GopNum
	mov	ip, #73728	@ tmp245,
	str	r4, [r6, #0]	@ <variable>.GopNum,
	ldr	r4, [r0, ip]	@ i, <variable>.Head
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	ip, r4	@, i
	ble	.L213	@,
	rsb	r8, sl, r8	@ TotalLen, D.38733, D.38732
	cmp	r1, r8	@ Len, TotalLen
	blt	.L213	@,
	str	r8, [fp, #-72]	@ TotalLen, %sfp
	mov	ip, r9	@ pPts, pPts
	str	r2, [fp, #-52]	@ pNum, %sfp
	str	r3, [fp, #-56]	@ pOffset, %sfp
	str	r7, [fp, #-76]	@ pRawPts, %sfp
	b	.L222	@
.L216:
	ldrd	r8, [fp, #-68]	@,,
	ldr	r7, [fp, #-48]	@, %sfp
	strd	r8, [ip]	@,* pPts
	cmp	r7, r4	@, i
	ldr	r9, [fp, #8]	@, pUsertag
	ldrd	r6, [r3, #32]	@ <variable>.UserTag, tmp270,
	strd	r6, [r9]	@ <variable>.UserTag,
	ldr	r8, [fp, #-76]	@, %sfp
	ldrd	r6, [r3, #16]	@ <variable>.Pts, tmp270,
	strd	r6, [r8]	@ <variable>.Pts,
	ldr	r2, [fp, #12]	@, pDisptime
	ldrd	r6, [r3, #40]	@ <variable>.DispTime, tmp270,
	strd	r6, [r2]	@ <variable>.DispTime,
	ldr	r6, [fp, #16]	@, pDispEnableFlag
	ldr	r9, [r3, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r9, [r6, #0]	@ <variable>.DispEnableFlag,
	ldr	r7, [fp, #20]	@, pDispFrameDistance
	ldr	r8, [r3, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r8, [r7, #0]	@ <variable>.DispFrameDistance,
	ldr	r2, [fp, #24]	@, pDistanceBeforeFirstFrame
	ldr	r9, [r3, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r9, [r2, #0]	@ <variable>.DistanceBeforeFirstFrame,
	ldr	r9, [fp, #28]	@, pGopNum
	ldr	r3, [r3, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r9, #0]	@ <variable>.GopNum,
	ble	.L224	@,
	ldr	r2, [fp, #-72]	@, %sfp
	cmp	r1, r2	@ Len,
	blt	.L225	@,
.L222:
	add	r4, r4, #1	@ i, i,
	mov	r8, r4, asr #31	@ tmp246, i,
	mov	r5, r8, lsr #22	@ tmp247, tmp246,
	add	r2, r4, r5	@ tmp248, i, tmp247
	mov	r9, r2, asl #22	@ tmp249, tmp248,
	mov	sl, r9, lsr #22	@ tmp249, tmp249,
	ldr	r9, [fp, #-72]	@, %sfp
	rsb	r5, r5, sl	@ Index, tmp247, tmp249
	mov	sl, r5, asl #3	@ tmp331, Index,
	add	r3, sl, r5	@ tmp268, tmp331, Index
	add	r7, r3, #1	@ tmp255, tmp254,
	add	r3, r0, r3, asl #3	@, tmp270, pRawStreamArray, tmp268,
	ldr	r2, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	ldrd	r6, [r3, #16]	@, tmp262,
	strd	r6, [fp, #-68]	@,,
	add	r7, r9, r2	@,, <variable>.Length
	ldrd	r8, [fp, #-68]	@,,
	mvn	r6, #0	@,
	str	r7, [fp, #-72]	@, %sfp
	mvn	r7, #0	@,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	ldreqd	r8, [ip]	@,* pPts
	streqd	r8, [fp, #-68]	@,,
	b	.L216	@
.L224:
	ldr	r8, [fp, #-72]	@ TotalLen, %sfp
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
.L215:
	mov	ip, #73728	@ tmp321,
	ldr	ip, [r0, ip]	@ temp.1553, <variable>.Head
	cmp	ip, r4	@ temp.1553, i
	beq	.L213	@,
	add	r5, sl, r5	@ tmp325, tmp331, Index
	rsb	r4, ip, r4	@ tmp328, temp.1553, i
	add	r5, r5, #1	@ tmp326, tmp325,
	mov	ip, #0	@ D.38725,
	ldr	r0, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	str	r4, [r2, #0]	@ tmp328,* pNum
	rsb	r8, r0, r8	@ TotalLen.1555, <variable>.Length, TotalLen
	rsb	r1, r8, r1	@ tmp329, TotalLen.1555, Len
	str	r1, [r3, #0]	@ tmp329,* pOffset
	b	.L219	@
.L225:
	mov	r8, r2	@ TotalLen,
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	b	.L215	@
.L213:
	mov	ip, #0	@ tmp322,
	str	ip, [r2, #0]	@ tmp322,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L219	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1421:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r3	@ pSegPacket, pSegPacket
	mvn	r9, #0	@ tmp144,
	mvn	r6, #0	@ tmp140,
	str	r9, [r3, #68]	@ tmp144, <variable>.GopNum
	mvn	r7, #0	@,
	str	r9, [r4, #56]	@ tmp144, <variable>.DispEnableFlag
	mov	r5, r2	@ pLastPts, pLastPts
	strd	r6, [r3, #24]	@ tmp140, pSegPacket,
	sub	r2, fp, #48	@,,
	strd	r6, [r3, #40]	@ tmp140, pSegPacket,
	mov	lr, #0	@ tmp138,
	strd	r6, [r3, #32]	@ tmp140, pSegPacket,
	sub	r3, fp, #52	@,,
	str	r9, [r4, #60]	@ tmp144, <variable>.DispFrameDistance
	add	r8, r4, #24	@ tmp150, pSegPacket,
	str	r9, [r4, #64]	@ tmp144, <variable>.DistanceBeforeFirstFrame
	add	sl, r4, #40	@ tmp151, pSegPacket,
	strd	r6, [r4, #48]	@ tmp140, pSegPacket,
	add	ip, r4, #48	@ tmp152, pSegPacket,
	str	r8, [sp, #0]	@ tmp150,
	add	r9, r4, #56	@ tmp153, pSegPacket,
	add	r8, r4, #60	@, pSegPacket,
	str	sl, [sp, #4]	@ tmp151,
	str	r8, [sp, #16]	@,
	add	sl, r4, #64	@ tmp155, pSegPacket,
	str	ip, [sp, #8]	@ tmp152,
	add	r8, r4, #68	@ tmp156, pSegPacket,
	add	ip, r4, #32	@ tmp157, pSegPacket,
	str	lr, [fp, #-52]	@ tmp138, Offset
	str	r9, [sp, #12]	@ tmp153,
	str	sl, [sp, #20]	@ tmp155,
	str	r8, [sp, #24]	@ tmp156,
	str	ip, [sp, #28]	@ tmp157,
	str	lr, [fp, #-48]	@ tmp138, Num
	bl	GetRawNumOffsert	@
	ldrd	r2, [r4, #24]	@ D.40258, pSegPacket,
	ldrd	r0, [r5]	@ tmp158,* pLastPts
	cmp	r1, r3	@ tmp158, D.40258
	cmpeq	r0, r2	@ tmp158, D.40258
	beq	.L230	@,
	strd	r2, [r5]	@ D.40258,* pLastPts
.L229:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L230:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L229	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1372:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	mov	r9, r1	@ DelNum, DelNum
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r3, #0	@, tmp170
	moveq	r3, #1	@, tmp170
	beq	.L267	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp255,
	movt	r1, #:upper16:.LANCHOR0	@ tmp255,
	ldr	r2, [r1, #652]	@ D.41786, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ D.41786,
	beq	.L234	@,
	add	r2, r2, #168	@ tmp172, D.41786,
	cmp	r0, r2	@ pRawStreamArray, tmp172
	moveq	r6, r3	@ SmID, tmp170
	beq	.L235	@,
.L234:
	ldr	r3, [r1, #656]	@ temp.1618, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1618,
	beq	.L236	@,
	add	r3, r3, #168	@ tmp174, temp.1618,
	cmp	r4, r3	@ pRawStreamArray, tmp174
	moveq	r6, #1	@ SmID,
	beq	.L235	@,
.L236:
	ldr	r3, [r1, #660]	@ temp.1620, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1620,
	beq	.L237	@,
	add	r0, r3, #168	@ tmp176, temp.1620,
	cmp	r4, r0	@ pRawStreamArray, tmp176
	moveq	r6, #2	@ SmID,
	beq	.L235	@,
.L237:
	ldr	r3, [r1, #664]	@ temp.1622, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1622,
	beq	.L238	@,
	add	ip, r3, #168	@ tmp178, temp.1622,
	cmp	r4, ip	@ pRawStreamArray, tmp178
	moveq	r6, #3	@ SmID,
	beq	.L235	@,
.L238:
	ldr	r3, [r1, #668]	@ temp.1624, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1624,
	beq	.L239	@,
	add	lr, r3, #168	@ tmp180, temp.1624,
	cmp	r4, lr	@ pRawStreamArray, tmp180
	moveq	r6, #4	@ SmID,
	beq	.L235	@,
.L239:
	ldr	r3, [r1, #672]	@ temp.1626, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1626,
	beq	.L240	@,
	add	r2, r3, #168	@ tmp182, temp.1626,
	cmp	r4, r2	@ pRawStreamArray, tmp182
	moveq	r6, #5	@ SmID,
	beq	.L235	@,
.L240:
	ldr	r3, [r1, #676]	@ temp.1628, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1628,
	beq	.L241	@,
	add	r3, r3, #168	@ tmp184, temp.1628,
	cmp	r4, r3	@ pRawStreamArray, tmp184
	moveq	r6, #6	@ SmID,
	beq	.L235	@,
.L241:
	ldr	r3, [r1, #680]	@ temp.1630, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1630,
	beq	.L242	@,
	add	r0, r3, #168	@ tmp186, temp.1630,
	cmp	r4, r0	@ pRawStreamArray, tmp186
	moveq	r6, #7	@ SmID,
	beq	.L235	@,
.L242:
	ldr	r3, [r1, #684]	@ temp.1632, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1632,
	beq	.L243	@,
	add	ip, r3, #168	@ tmp188, temp.1632,
	cmp	r4, ip	@ pRawStreamArray, tmp188
	moveq	r6, #8	@ SmID,
	beq	.L235	@,
.L243:
	ldr	r3, [r1, #688]	@ temp.1634, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1634,
	beq	.L244	@,
	add	lr, r3, #168	@ tmp190, temp.1634,
	cmp	r4, lr	@ pRawStreamArray, tmp190
	moveq	r6, #9	@ SmID,
	beq	.L235	@,
.L244:
	ldr	r3, [r1, #692]	@ temp.1636, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1636,
	beq	.L245	@,
	add	r2, r3, #168	@ tmp192, temp.1636,
	cmp	r4, r2	@ pRawStreamArray, tmp192
	moveq	r6, #10	@ SmID,
	beq	.L235	@,
.L245:
	ldr	r3, [r1, #696]	@ temp.1638, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1638,
	beq	.L246	@,
	add	r3, r3, #168	@ tmp194, temp.1638,
	cmp	r4, r3	@ pRawStreamArray, tmp194
	moveq	r6, #11	@ SmID,
	beq	.L235	@,
.L246:
	ldr	r3, [r1, #700]	@ temp.1640, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1640,
	beq	.L247	@,
	add	r0, r3, #168	@ tmp196, temp.1640,
	cmp	r4, r0	@ pRawStreamArray, tmp196
	moveq	r6, #12	@ SmID,
	beq	.L235	@,
.L247:
	ldr	r3, [r1, #704]	@ temp.1642, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1642,
	beq	.L248	@,
	add	ip, r3, #168	@ tmp198, temp.1642,
	cmp	r4, ip	@ pRawStreamArray, tmp198
	moveq	r6, #13	@ SmID,
	beq	.L235	@,
.L248:
	ldr	r3, [r1, #708]	@ temp.1644, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1644,
	beq	.L249	@,
	add	lr, r3, #168	@ tmp200, temp.1644,
	cmp	r4, lr	@ pRawStreamArray, tmp200
	moveq	r6, #14	@ SmID,
	beq	.L235	@,
.L249:
	ldr	r3, [r1, #712]	@ temp.1616, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1616,
	beq	.L250	@,
	add	r2, r3, #168	@ tmp202, temp.1616,
	cmp	r4, r2	@ pRawStreamArray, tmp202
	beq	.L251	@,
.L250:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movw	r2, #494	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38614,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L251:
	mov	r6, #15	@ SmID,
.L235:
	movw	r0, #:lower16:73732	@ tmp205,
	movt	r0, #:upper16:73732	@ tmp205,
	mov	ip, #73728	@ tmp204,
	ldr	r3, [r4, r0]	@ D.38621, <variable>.Tail
	ldr	r7, [r4, ip]	@ D.38620, <variable>.Head
	cmp	r7, r3	@ D.38620, D.38621
	addgt	r3, r3, #1024	@ tmp206, D.38621,
	rsb	r2, r7, r3	@ PacketNum, D.38620, tmp206
	cmp	r2, r9	@ PacketNum, DelNum
	bcc	.L268	@,
	add	sl, r7, r7, asl #3	@, tmp210, D.38620, D.38620,
	add	r6, r6, #162	@ tmp256, SmID,
	add	r8, sl, #1	@ tmp217, tmp210,
	mov	r0, #26	@,
	add	r6, r1, r6, asl #2	@, tmp262, tmp255, tmp256,
	ldr	r2, [r4, sl, asl #3]	@, <variable>.PhyAddr
	ldr	r3, [r4, r8, asl #3]	@, <variable>.Length
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	sub	r5, r9, #1	@ tmp264, DelNum,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #4]!	@ D.38636, s_SmIIS.pSmInstArray
	and	sl, r5, #1	@ tmp266, tmp264,
	movw	r5, #:lower16:73916	@ tmp263,
	movt	r5, #:upper16:73916	@ tmp263,
	ldr	r3, [r4, r8, asl #3]	@ <variable>.Length, <variable>.Length
	add	r2, r7, #1	@ D.38640, D.38620,
	cmp	r9, #1	@ DelNum,
	ldr	r1, [ip, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r8, #1	@ i,
	mov	r7, r2, asl #22	@ j, D.38640,
	rsb	r0, r3, r1	@ tmp233, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [ip, r5]	@ tmp233, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r6, #0]	@ temp.1614, s_SmIIS.pSmInstArray
	mov	r7, r7, lsr #22	@ j, j,
	ldr	r2, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r1, r2, r2, asr #31	@ tmp243, <variable>.RawPacketArray.RawTotalSize
	str	r1, [r3, r5]	@ tmp243, <variable>.RawPacketArray.RawTotalSize
	bls	.L264	@,
	cmp	sl, #0	@ tmp266,
	beq	.L255	@,
	add	ip, r7, r7, asl #3	@, tmp313, j, j,
	movw	r1, #:lower16:.LC60	@,
	add	sl, ip, #1	@ tmp317, tmp313,
	mov	r0, #26	@,
	ldr	r2, [r4, ip, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC60	@,
	ldr	r3, [r4, sl, asl #3]	@, <variable>.Length
	mov	r8, #2	@ i,
	b	.L266	@
.L255:
	add	lr, r7, r7, asl #3	@, tmp271, j, j,
	mov	r0, #26	@,
	add	sl, lr, #1	@ tmp275, tmp271,
	movw	r1, #:lower16:.LC60	@,
	ldr	r2, [r4, lr, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC60	@,
	ldr	r3, [r4, sl, asl #3]	@, <variable>.Length
	add	r7, r7, #1	@ D.38640, j,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #0]	@ D.38636, s_SmIIS.pSmInstArray
	ldr	r2, [r4, sl, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r7, r7, asl #22	@ j, D.38640,
	add	r8, r8, #1	@ tmp267, i,
	movw	r1, #:lower16:.LC60	@,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r7, r7, lsr #22	@ j, j,
	movt	r1, #:upper16:.LC60	@,
	add	r8, r8, #1	@ i, tmp267,
	rsb	sl, r2, ip	@ tmp284, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	sl, [r3, r5]	@ tmp284, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r6, #0]	@ temp.1614, s_SmIIS.pSmInstArray
	add	r3, r7, r7, asl #3	@, tmp293, j, j,
	add	sl, r3, #1	@ tmp297, tmp293,
	mov	r0, #26	@,
	ldr	ip, [r2, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	ip, ip, ip, asr #31	@ tmp287, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r2, r5]	@ tmp287, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r4, r3, asl #3]	@, <variable>.PhyAddr
	ldr	r3, [r4, sl, asl #3]	@, <variable>.Length
.L266:
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ D.38636, s_SmIIS.pSmInstArray
	ldr	r3, [r4, sl, asl #3]	@ <variable>.Length, <variable>.Length
	add	r0, r7, #1	@ D.38640, j,
	cmp	r9, r8	@ DelNum, i
	ldr	r1, [ip, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r7, r0, asl #22	@ j, D.38640,
	rsb	r2, r3, r1	@ tmp326, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r2, [ip, r5]	@ tmp326, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r6, #0]	@ temp.1614, s_SmIIS.pSmInstArray
	mov	r7, r7, lsr #22	@ j, j,
	ldr	r0, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r1, r0, r0, asr #31	@ tmp329, <variable>.RawPacketArray.RawTotalSize
	str	r1, [r3, r5]	@ tmp329, <variable>.RawPacketArray.RawTotalSize
	bhi	.L255	@,
.L264:
	mov	r0, #73728	@ tmp245,
	movw	r3, #:lower16:73740	@ tmp252,
	ldr	r2, [r4, r0]	@ <variable>.Head, <variable>.Head
	movt	r3, #:upper16:73740	@ tmp252,
	mov	r1, #0	@ tmp253,
	add	r9, r9, r2	@ D.38643, DelNum, <variable>.Head
	str	r1, [r4, r3]	@ tmp253, <variable>.FirstPacketOffset
	cmp	r9, #1024	@ D.38643,
	str	r9, [r4, r0]	@ D.38643, <variable>.Head
	subge	r9, r9, #1024	@ tmp251, D.38643,
	strge	r9, [r4, r0]	@ tmp251, <variable>.Head
	mov	r0, r1	@ D.38614, tmp253
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L268:
	movw	r1, #:lower16:.LC59	@,
	mov	r3, r9	@, DelNum
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
.L267:
	mvn	r0, #0	@ D.38614,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1375:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	rsbs	r6, r0, #1	@ tmp144, pRawStreamArray
	movcc	r6, #0	@ tmp144
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	orrs	r6, r6, r1, lsr #31	@, tmp148, tmp144, DelLen,
	bne	.L270	@,
	movw	r2, #:lower16:73748	@ tmp151,
	movw	r4, #:lower16:73740	@ tmp152,
	movt	r2, #:upper16:73748	@ tmp151,
	movt	r4, #:upper16:73740	@ tmp152,
	str	r6, [fp, #-32]	@ tmp148, DelNum
	str	r6, [fp, #-36]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L270	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L279	@,
.L270:
	mvn	r0, #0	@ Ret,
.L273:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L279:
	sub	r2, fp, #32	@,,
	sub	r3, fp, #36	@,,
	sub	ip, fp, #60	@ tmp157,,
	sub	lr, fp, #68	@ tmp158,,
	str	ip, [sp, #0]	@ tmp157,
	sub	ip, fp, #76	@ tmp159,,
	str	lr, [sp, #4]	@ tmp158,
	sub	lr, fp, #40	@ tmp160,,
	str	ip, [sp, #8]	@ tmp159,
	sub	ip, fp, #44	@ tmp161,,
	str	lr, [sp, #12]	@ tmp160,
	sub	lr, fp, #48	@ tmp162,,
	str	ip, [sp, #16]	@ tmp161,
	sub	ip, fp, #52	@ tmp163,,
	str	lr, [sp, #20]	@ tmp162,
	sub	lr, fp, #84	@ tmp164,,
	str	ip, [sp, #24]	@ tmp163,
	str	lr, [sp, #28]	@ tmp164,
	bl	GetRawNumOffsert	@
	ldr	r1, [fp, #-32]	@, DelNum
	mov	r0, r5	@, pRawStreamArray
	bl	DeleteRawPacket	@
	movw	r1, #:lower16:73732	@ tmp167,
	movt	r1, #:upper16:73732	@ tmp167,
	mov	ip, #73728	@ tmp166,
	ldr	r2, [r5, ip]	@ D.41804, <variable>.Head
	ldr	r3, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r1, [fp, #-36]	@ RawPacketOffSet.458, RawPacketOffSet
	cmp	r2, r3	@ D.41804, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L273	@,
	add	ip, r2, r2, asl #3	@, tmp173, D.41804, D.41804,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	lr, ip, #1	@ tmp174, tmp173,
	add	r2, r1, r0	@ TargetOffset, RawPacketOffSet.458, <variable>.FirstPacketOffset
	ldr	r3, [r5, lr, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r2, r3	@ TargetOffset, <variable>.Length
	strlt	r2, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp148
	blt	.L273	@,
	b	.L270	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1376:
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
	cmp	r0, #15	@ SmID,
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	add	r0, r3, r0, asl #2	@, tmp140, tmp136, SmID,
	ldr	r5, [r0, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L284	@,
	movw	r4, #:lower16:166136	@ tmp143,
	movt	r4, #:upper16:166136	@ tmp143,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r5, #168	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r1, #0	@ tmp146,
	str	r1, [r5, r4]	@ tmp146, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L284:
	mov	r0, r5	@, pSmInstArray
	movw	r1, #:lower16:.LC61	@,
	mov	r2, #760	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
.LFB1443:
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
	bhi	.L292	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L293	@,
	sub	r0, r0, #13	@ D.41808, eCapLevel,
	cmp	r0, #10	@ D.41808,
	bls	.L294	@,
.L290:
	mov	r0, #2097152	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L294:
	movw	r1, #:lower16:.LANCHOR1	@ tmp151,
	movt	r1, #:upper16:.LANCHOR1	@ tmp151,
	add	r0, r1, r0, asl #2	@, tmp154, tmp151, D.41808,
	ldr	r0, [r0, #20]	@ MaxSegSize, CSWTCH.671
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L293:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L295	@,
	mul	r5, r5, r0	@ tmp149, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp150,
	movt	r3, #:upper16:2088960	@ tmp150,
	cmp	r5, r3	@ tmp149, tmp150
	movgt	r0, #6291456	@ MaxSegSize,
	ldmgtfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L290	@
.L292:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L295:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
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
.LFB1442:
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
	mov	r4, r0	@ SmID, SmID
	mov	r0, #26	@,
	mov	r7, r1	@ PrintDetail, PrintDetail
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp209,
	movt	r1, #:upper16:.LANCHOR0	@ tmp209,
	add	r0, r1, r4, asl #2	@, tmp213, tmp209, SmID,
	movw	r6, #:lower16:166088	@ tmp216,
	movt	r6, #:upper16:166088	@ tmp216,
	movw	r5, #:lower16:166092	@ tmp219,
	ldr	r4, [r0, #652]	@ D.41563, s_SmIIS.pSmInstArray
	movt	r5, #:upper16:166092	@ tmp219,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	ldr	r2, [r4, r6]	@, <variable>.StreamSegArray.Head
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5]	@, <variable>.StreamSegArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:166100	@ tmp222,
	movt	ip, #:upper16:166100	@ tmp222,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.Current
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166104	@ tmp225,
	movt	r3, #:upper16:166104	@ tmp225,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufPhyAddr
	bl	dprint_vfmw	@
	movw	ip, #:lower16:73920	@ tmp228,
	movt	ip, #:upper16:73920	@ tmp228,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.pSegBufVirAddr
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166108	@ tmp231,
	movt	r3, #:upper16:166108	@ tmp231,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufSize
	bl	dprint_vfmw	@
	movw	ip, #:lower16:166112	@ tmp234,
	movt	ip, #:upper16:166112	@ tmp234,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.SegBufReadAddr
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166116	@ tmp237,
	movt	r3, #:upper16:166116	@ tmp237,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufWriteAddr
	bl	dprint_vfmw	@
	cmp	r7, #1	@ PrintDetail,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	lr, r4, #73728	@ tmp239, D.41563,
	add	r2, lr, #192	@ tmp239, tmp239,
	cmp	r2, #0	@ tmp239,
	beq	.L298	@,
	ldr	r3, [r4, r6]	@ D.41820, <variable>.StreamSegArray.Head
	ldr	r7, [r4, r5]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r7, r7, r3	@ SegNum, <variable>.StreamSegArray.Tail, D.41820
	addmi	r7, r7, #1152	@ SegNum, SegNum,
	cmp	r7, #0	@ SegNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, r3, asl #2	@, tmp256, D.41820, D.41820,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	mov	ip, r2, asl #4	@ tmp258, tmp256,
	mov	r6, #1	@ i,
	add	r3, ip, #73728	@ tmp259, tmp258,
	sub	r8, r7, #1	@ tmp269, SegNum,
	add	r5, r3, #216	@ tmp259, tmp259,
	and	r8, r8, #1	@ tmp271, tmp269,
	add	r5, r4, r5	@ ivtmp.1749, D.41563, tmp259
	add	r4, r5, #80	@ ivtmp.1749, ivtmp.1749,
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	ldrd	r2, [r5, #8]	@, ivtmp.1749,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	ldmgefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r8, #0	@ tmp271,
	beq	.L300	@,
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1749,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	add	r4, r5, #160	@ ivtmp.1749, ivtmp.1749,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	ldmgefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L300:
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	add	r5, r4, #80	@ tmp273, ivtmp.1749,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	add	r6, r6, #1	@ tmp272, i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	add	r6, r6, #1	@ i, tmp272,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1749,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-16]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #80]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	add	r4, r4, #160	@ ivtmp.1749, ivtmp.1749,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #-12]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #-11]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #8]	@, tmp273,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	blt	.L300	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L298:
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, .L308	@,
	movt	r1, #:upper16:.LC72	@,
	movw	r3, #4935	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L309:
	.align	2
.L308:
	.word	.LANCHOR1+64
	.fnend
	.size	PrintScdSegState, .-PrintScdSegState
	.align	2
	.global	PrintScdRawState
	.type	PrintScdRawState, %function
PrintScdRawState:
	.fnstart
.LFB1440:
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
	mov	r4, r0	@ SmID, SmID
	mov	r0, #26	@,
	mov	r7, r1	@ PrintDetail, PrintDetail
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp149,
	movt	r1, #:upper16:.LANCHOR0	@ tmp149,
	add	r0, r1, r4, asl #2	@, tmp153, tmp149, SmID,
	movw	r6, #:lower16:73896	@ tmp156,
	movt	r6, #:upper16:73896	@ tmp156,
	movw	r5, #:lower16:73900	@ tmp159,
	ldr	r4, [r0, #652]	@ D.41450, s_SmIIS.pSmInstArray
	movt	r5, #:upper16:73900	@ tmp159,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	ldr	r2, [r4, r6]	@, <variable>.RawPacketArray.Head
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5]	@, <variable>.RawPacketArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73904	@ tmp162,
	movt	r3, #:upper16:73904	@ tmp162,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	ldr	r2, [r4, r3]	@, <variable>.RawPacketArray.History
	bl	dprint_vfmw	@
	movw	ip, #:lower16:73908	@ tmp165,
	movt	ip, #:upper16:73908	@ tmp165,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	ldr	r2, [r4, ip]	@, <variable>.RawPacketArray.FirstPacketOffset
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73912	@ tmp168,
	movt	r3, #:upper16:73912	@ tmp168,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	ldr	r2, [r4, r3]	@, <variable>.RawPacketArray.CurShowIndex
	bl	dprint_vfmw	@
	cmp	r7, #1	@ PrintDetail,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmn	r4, #168	@ D.41450,
	beq	.L312	@,
	ldr	r3, [r4, r6]	@ D.41829, <variable>.RawPacketArray.Head
	ldr	r7, [r4, r5]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	subs	r7, r7, r3	@ RawNum, <variable>.RawPacketArray.Tail, D.41829
	addmi	r7, r7, #1024	@ RawNum, RawNum,
	cmp	r7, #0	@ RawNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, r3, asl #3	@, tmp183, D.41829, D.41829,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	add	r4, r4, r2, asl #3	@, tmp185, D.41450, tmp183,
	mov	r6, #1	@ i,
	add	r5, r4, #176	@ ivtmp.1792, tmp185,
	sub	r8, r7, #1	@ tmp191, RawNum,
	and	r8, r8, #1	@ tmp193, tmp191,
	add	r4, r5, #72	@ ivtmp.1792, ivtmp.1792,
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC89	@,
	ldrd	r2, [r5, #8]	@, ivtmp.1792,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	ldmgefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r8, #0	@ tmp193,
	beq	.L314	@,
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1792,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	add	r4, r5, #144	@ ivtmp.1792, ivtmp.1792,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	ldmgefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L314:
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	add	r5, r4, #72	@ tmp195, ivtmp.1792,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	add	r6, r6, #1	@ tmp194, i,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.1792,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	add	r6, r6, #1	@ i, tmp194,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #72]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	add	r4, r4, #144	@ ivtmp.1792, ivtmp.1792,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #8]	@, tmp195,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	blt	.L314	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L312:
	movw	r1, #:lower16:.LC85	@,
	ldr	r2, .L322	@,
	movt	r1, #:upper16:.LC85	@,
	movw	r3, #4801	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L323:
	.align	2
.L322:
	.word	.LANCHOR1+84
	.fnend
	.size	PrintScdRawState, .-PrintScdRawState
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1436:
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
	movw	r0, #:lower16:-121387004	@ tmp141,
	movt	r0, #:upper16:-121387004	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.41365,
	movw	r0, #:lower16:-121387000	@ tmp142,
	movt	r0, #:upper16:-121387000	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.41366,
	movw	r0, #:lower16:-121386996	@ tmp143,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.41367,
	movw	r0, #:lower16:-121386992	@ tmp144,
	movt	r0, #:upper16:-121386992	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.41368,
	movw	r0, #:lower16:-121386988	@ tmp145,
	movt	r0, #:upper16:-121386988	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.41369,
	movw	r0, #:lower16:-121386984	@ tmp146,
	movt	r0, #:upper16:-121386984	@,
	bl	MEM_ReadPhyWord	@
	mov	r4, r0	@ D.41370,
	movw	r0, #:lower16:-121386976	@ tmp147,
	movt	r0, #:upper16:-121386976	@,
	bl	MEM_ReadPhyWord	@
	mov	sl, r0	@ D.41371,
	movw	r0, #:lower16:-121387008	@ tmp148,
	movt	r0, #:upper16:-121387008	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	mov	r2, r0	@ D.41372,
	mov	r0, #24	@,
	str	r2, [fp, #-48]	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.41365
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.41366
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.41367
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.41368
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.41369
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.41370
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D.41371
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-48]	@,
	movw	r1, #:lower16:.LC98	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC98	@,
	sxtb	r2, r3	@, D.41372
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
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #:lower16:-121386944	@ tmp140,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:-121386932	@ tmp153,
	movt	r5, #:upper16:-121386932	@ tmp153,
	and	ip, r0, #1	@ tmp141,,
	movw	r0, #:lower16:-121386940	@ tmp142,
	str	ip, [r4, #0]	@ tmp141, <variable>.Scdover
	movt	r0, #:upper16:-121386940	@,
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
	movw	r0, #:lower16:-121386928	@ tmp149,
	bic	r3, r1, #12582912	@ tmp148, tmp148,
	movt	r0, #:upper16:-121386928	@,
	str	r3, [r4, #12]	@ tmp148, <variable>.ScdNum
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, <variable>.ScdRollAddr
	movw	r0, #:lower16:-121386924	@ tmp150,
	movt	r0, #:upper16:-121386924	@,
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
.LFB1422:
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
	mov	r6, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	mov	r4, r2	@ pStreamSegArray, pStreamSegArray
	mov	r7, r3	@ Seg_num, Seg_num
	mov	sl, r1	@ pUsedSeg, pUsedSeg
	mov	r1, #0	@ tmp156,
	str	r1, [fp, #-48]	@ tmp156, SegNum
	bl	MEM_ReadPhyWord	@
	sub	r0, fp, #72	@,,
	bl	ReadScdStateReg	@
	ldr	r3, [fp, #-56]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r5, #6	@, Ret,
	movne	r5, #0	@, Ret,
	cmp	r4, #0	@ pStreamSegArray,
	beq	.L331	@,
	movw	r2, #:lower16:92172	@ tmp160,
	movw	ip, #:lower16:92168	@ tmp161,
	movt	r2, #:upper16:92172	@ tmp160,
	movt	ip, #:upper16:92168	@ tmp161,
	ldr	r8, [r4, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	r0, [r4, ip]	@ <variable>.Head, <variable>.Head
	subs	r8, r8, r0	@ prephitmp.1885, <variable>.Tail, <variable>.Head
	addmi	r8, r8, #1152	@ prephitmp.1885, prephitmp.1885,
.L332:
	cmp	r5, #0	@ Ret,
	rsb	r8, r8, #1152	@ SegNum.563, prephitmp.1885,
	str	r8, [fp, #-48]	@ SegNum.563, SegNum
	bne	.L333	@,
	subs	r3, r7, #1	@ i, Seg_num,
	movmi	r5, r7	@ Ret, Seg_num
	bmi	.L333	@,
	movw	r1, #:lower16:180124	@ tmp169,
	movt	r1, #:upper16:180124	@ tmp169,
	ldr	r9, [r6, #20]	@ pretmp.1881, <variable>.SegFilter.ModeFlag
	movw	r0, #:lower16:92184	@ tmp170,
	ldr	lr, [r6, r1]	@ pretmp.1874, <variable>.UpMsgStepNum
	movt	r0, #:upper16:92184	@ tmp170,
	cmp	r9, #1	@ pretmp.1881,
	movne	ip, #0	@, pretmp.1882
	moveq	ip, #1	@, pretmp.1882
	tst	r3, #1	@ i,
	ldr	r6, [r4, r0]	@ pretmp.1880, <variable>.SegBufPhyAddr
	movw	r1, #:lower16:-1241448448	@ tmp185,
	mov	r7, lr, asl #2	@ pretmp.1904, pretmp.1874,
	movt	r1, #:upper16:-1241448448	@ tmp185,
	ldr	r4, [r4, #0]	@ pretmp.1876, <variable>.pSegBufVirAddr
	rsb	r0, r7, #0	@ D.43504, pretmp.1904
	mla	r2, r7, r3, sl	@ ivtmp.1900, pretmp.1904, i, pUsedSeg
	beq	.L353	@,
	ldr	sl, [r2, #0]	@ tmp198,* ivtmp.1900
	rsb	r7, r6, sl	@ tmp199, pretmp.1880, tmp198
	ldr	sl, [r4, r7]	@ start_code,
	cmp	sl, r1	@ start_code, tmp185
	movne	r7, #0	@, tmp205
	andeq	r7, ip, #1	@,, tmp205, pretmp.1882
	cmp	r7, #0	@ tmp205,
	bne	.L340	@,
	cmp	r9, #2	@ pretmp.1881,
	beq	.L354	@,
.L341:
	subs	r7, r3, #1	@ i.1903, i,
	add	r2, r2, r0	@ ivtmp.1900, ivtmp.1900, D.43504
	movpl	r3, r7	@ i, i.1903
	movpl	sl, r8	@ SegNum.563, SegNum.563
	bmi	.L337	@,
.L338:
	ldr	r7, [r2, #0]	@ tmp175,* ivtmp.1900
	rsb	r8, r6, r7	@ tmp174, pretmp.1880, tmp175
	ldr	r7, [r4, r8]	@ start_code,
	cmp	r7, r1	@ start_code, tmp185
	movne	r8, #0	@, tmp181
	andeq	r8, ip, #1	@,, tmp181, pretmp.1882
	cmp	r8, #0	@ tmp181,
	bne	.L335	@,
.L357:
	cmp	r9, #2	@ pretmp.1881,
	beq	.L355	@,
.L336:
	subs	r7, r3, #1	@ i.1903, i,
	add	r8, r2, r0	@, ivtmp.1900, D.43504
	str	r8, [fp, #-80]	@, %sfp
	bmi	.L337	@,
	ldr	r8, [r2, r0]	@ tmp190,* D.43504
	mov	r3, r7	@ i, i.1903
	rsb	lr, r6, r8	@ tmp191, pretmp.1880, tmp190
	ldr	r8, [r4, lr]	@ start_code,
	cmp	r8, r1	@ start_code, tmp185
	movne	r2, #0	@, tmp197
	andeq	r2, ip, #1	@,, tmp197, pretmp.1882
	cmp	r2, #0	@ tmp197,
	beq	.L356	@,
.L343:
	add	r5, r5, #1	@ count, count,
	cmp	r5, #0	@ count,
	ble	.L344	@,
	cmp	sl, r7	@ SegNum.563, i.1903
	bcs	.L337	@,
.L344:
	ldr	r3, [fp, #-80]	@, %sfp
	add	r2, r3, r0	@ ivtmp.1900,, D.43504
	sub	r3, r7, #1	@ i, i.1903,
	ldr	r7, [r2, #0]	@ tmp175,* ivtmp.1900
	rsb	r8, r6, r7	@ tmp174, pretmp.1880, tmp175
	ldr	r7, [r4, r8]	@ start_code,
	cmp	r7, r1	@ start_code, tmp185
	movne	r8, #0	@, tmp181
	andeq	r8, ip, #1	@,, tmp181, pretmp.1882
	cmp	r8, #0	@ tmp181,
	beq	.L357	@,
.L335:
	add	r5, r5, #1	@ count, count,
	cmp	r5, #0	@ count,
	ble	.L336	@,
	cmp	sl, r3	@ SegNum.563, i
	bcc	.L336	@,
.L337:
	mov	r5, r3	@ Ret, i
.L333:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L354:
	ubfx	sl, sl, #16, #8	@ D.40315, start_code,,
	cmp	sl, #127	@ D.40315,
	bls	.L341	@,
	cmp	sl, #131	@ D.40315,
	bhi	.L341	@,
.L340:
	cmp	r8, r3	@ SegNum.563, i
	mov	r5, #1	@ count,
	bcc	.L341	@,
	mov	r5, r3	@ Ret, i
	b	.L333	@
.L353:
	mov	sl, r8	@ SegNum.563, SegNum.563
	b	.L338	@
.L356:
	cmp	r9, #2	@ pretmp.1881,
	bne	.L344	@,
	ubfx	r8, r8, #16, #8	@ D.40315, start_code,,
	cmp	r8, #127	@ D.40315,
	bls	.L344	@,
	cmp	r8, #131	@ D.40315,
	bls	.L343	@,
	b	.L344	@
.L355:
	ubfx	r7, r7, #16, #8	@ D.40315, start_code,,
	cmp	r7, #127	@ D.40315,
	bls	.L336	@,
	cmp	r7, #131	@ D.40315,
	bhi	.L336	@,
	b	.L335	@
.L331:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC99	@,
	ldr	r2, .L358	@,
	movt	r1, #:upper16:.LC99	@,
	movw	r3, #2984	@,
	bl	dprint_vfmw	@
	ldr	r8, [fp, #-48]	@ prephitmp.1885, SegNum
	b	.L332	@
.L359:
	.align	2
.L358:
	.word	.LANCHOR1+104
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	WaitSCDFinish
	.type	WaitSCDFinish, %function
WaitSCDFinish:
	.fnstart
.LFB1435:
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
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r0, #788]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L377	@,
.L361:
	mov	r0, #0	@ D.41352,
.L365:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L377:
	bl	OSAL_GetTimeInMs	@
	movw	r6, #:lower16:500000	@ tmp150,
	mov	r5, #0	@ i,
	movt	r6, #:upper16:500000	@ tmp150,
	mov	r4, r0	@ t_start,
	b	.L366	@
.L379:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp144, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp144
	cmp	ip, #1000	@ t_wait,
	bhi	.L375	@,
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	add	r5, r5, #1	@ tmp151, i,
	tst	r0, #1	@,
	bne	.L361	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp156, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp156
	cmp	ip, #1000	@ t_wait,
	bhi	.L375	@,
	add	r5, r5, #1	@ i, tmp151,
	cmp	r5, r6	@ i, tmp150
	beq	.L378	@,
.L366:
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L379	@,
	b	.L361	@
.L375:
	mov	r3, r0	@, t_now
	mov	r2, r4	@, t_start
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	str	ip, [sp, #0]	@ t_wait,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.41352,
	b	.L365	@
.L378:
	mvn	r0, #6	@ D.41352,
	b	.L365	@
	.fnend
	.size	WaitSCDFinish, .-WaitSCDFinish
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1410:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	mov	r5, r1	@ FirstCalc, FirstCalc
	add	r3, r2, r0, asl #2	@, tmp145, tmp141, SmID,
	ldr	r4, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	moveq	r0, r4	@ prephitmp.1949, pSmInstArray
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r3, r0	@ CurTime,
	beq	.L383	@,
	movw	r1, #:lower16:180080	@ tmp147,
	movw	ip, #:lower16:180084	@ tmp149,
	movt	r1, #:upper16:180080	@ tmp147,
	movt	ip, #:upper16:180084	@ tmp149,
	mov	r0, #0	@ tmp148,
	str	r0, [r4, r1]	@ tmp148, <variable>.BlockTimeInMs
	str	r3, [r4, ip]	@ CurTime,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L383:
	movw	r2, #:lower16:180084	@ tmp150,
	movt	r2, #:upper16:180084	@ tmp150,
	ldr	r1, [r4, r2]	@ D.39808, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTime, D.39808
	bls	.L384	@,
	rsb	r3, r1, r0	@ D.39811, D.39808, CurTime
	movw	lr, #:lower16:180080	@ tmp151,
	movt	lr, #:upper16:180080	@ tmp151,
	mov	r0, r3	@ prephitmp.1949, D.39811
	str	r3, [r4, lr]	@ D.39811,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L384:
	movw	ip, #:lower16:180080	@ tmp152,
	movt	ip, #:upper16:180080	@ tmp152,
	mov	r0, r5	@ prephitmp.1949, FirstCalc
	str	r3, [r4, r2]	@ CurTime, <variable>.LastBlockTime
	str	r5, [r4, ip]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
.LFB1413:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp134,
	movt	r4, #:upper16:.LANCHOR0	@ tmp134,
	mov	r5, r0	@ pSmCtrlReg, pSmCtrlReg
	ldr	r1, [r0, #4]	@, <variable>.DownMsgPhyAddr
	ldr	r2, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, r2, #2048	@, s_RegPhyBaseAddr,
	add	r0, lr, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #12]	@, <variable>.UpMsgPhyAddr
	add	ip, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, ip, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #20]	@, <variable>.UpLen
	add	r2, r3, #2048	@, s_RegPhyBaseAddr,
	add	r0, r2, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #24]	@, <variable>.BufferFirst
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #28]	@, <variable>.BufferLast
	add	r3, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r3, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #32]	@, <variable>.BufferIni
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	ip, [r5, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	r2, [r5, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	ldr	r1, [r5, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	mov	r3, ip, asl #4	@ tmp172, <variable>.SliceCheckFlag,
	ldr	ip, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r0, r1, #15	@ tmp166, <variable>.ScdProtocol,
	and	r3, r3, #16	@ tmp173, tmp172,
	orr	r1, r0, r2, asl #8	@, tmp170, tmp166, <variable>.ScdLowdlyEnable,
	add	r0, ip, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, tmp170, tmp173
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #808]	@, s_RegPhyBaseAddr
	ldr	r1, [r5, #108]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
	bl	PrintScdVtrlReg	@
	ldr	r2, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r2, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.ScdStart, <variable>.ScdStart
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #0	@,
	ldr	r2, [r3, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_EnableInt, .-SCDDRV_EnableInt
	.align	2
	.global	SCDDRV_MaskInt
	.type	SCDDRV_MaskInt, %function
SCDDRV_MaskInt:
	.fnstart
.LFB1363:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #1	@,
	ldr	r2, [r3, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_MaskInt, .-SCDDRV_MaskInt
	.align	2
	.global	ResetSCD
	.type	ResetSCD, %function
ResetSCD:
	.fnstart
.LFB1362:
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
	movw	r0, #:lower16:-121386980	@,
	movt	r0, #:upper16:-121386980	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp161,
	bl	MEM_ReadPhyWord	@
	movt	r4, #:upper16:g_pstRegCrg	@ tmp161,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp162,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.430, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #32	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.2051, g_pstRegCrg
	mov	r6, r0	@ D.38446,
	b	.L394	@
.L402:
	ldr	r2, [r1, #372]	@ D.38450, <variable>.PERI_CRG93.u32
	and	lr, r2, #2	@ tmp169, D.38450,
	str	r2, [fp, #-32]	@ D.38450, u32TmpValue_93.u32
	uxtb	r0, lr	@ tmp170, tmp169
	cmp	r0, #0	@ tmp170,
	bne	.L393	@,
	cmp	r3, ip	@ i, tmp162
	beq	.L401	@,
.L394:
	ldr	r0, [r1, #372]	@ D.38450, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp163, i,
	add	r3, r3, #1	@ i, tmp163,
	tst	r0, #2	@ D.38450,
	str	r0, [fp, #-32]	@ D.38450, u32TmpValue_93.u32
	beq	.L402	@,
.L393:
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	bfc	r5, #5, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r0, [r3, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r6, #1	@, D.38446,
	add	ip, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, ip, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L401:
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.2051, g_pstRegCrg
	b	.L393	@
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1430:
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
	beq	.L408	@,
	ldr	r3, [ip, #8]	@ D.40924, <variable>.release_stream
	cmp	r3, #0	@ D.40924,
	beq	.L406	@,
	ldr	r0, [ip, #0]	@, <variable>.stream_provider_inst_id
	mov	r1, r4	@, pRawPacket
	blx	r3	@ D.40924
	cmp	r0, #0	@ ret
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
.L406:
	mvn	r0, #6	@ ret,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L408:
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC102	@,
	movt	r1, #:upper16:.LC102	@,
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
.LFB1373:
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
	cmp	r0, #15	@ SmID,
	mov	r4, r0	@ SmID, SmID
	bhi	.L429	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r0, r4, asl #2	@, tmp152, tmp148, SmID,
	ldr	r5, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L412	@,
	cmp	r1, #0	@ ResetFlag,
	bne	.L413	@,
	movw	r2, #:lower16:166252	@ tmp154,
	movt	r2, #:upper16:166252	@ tmp154,
	ldr	r1, [r5, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L413	@,
.L412:
	mvn	r0, #0	@ D.38666,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L429:
	mov	r2, r0	@, SmID
	movw	r1, #:lower16:.LC103	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38666,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L413:
	movw	r6, #:lower16:73896	@ tmp156,
	movw	ip, #:lower16:73904	@ tmp157,
	movt	r6, #:upper16:73896	@ tmp156,
	movt	ip, #:upper16:73904	@ tmp157,
	ldr	sl, [r5, r6]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r6, [r5, ip]	@ D.38678, <variable>.RawPacketArray.History
	cmp	sl, r6	@ RawHead, D.38678
	addlt	sl, sl, #1024	@ tmp158, RawHead,
	rsb	sl, r6, sl	@ DelNum, D.38678, tmp158
	cmp	sl, #0	@ DelNum,
	beq	.L412	@,
	add	r8, r6, r6, asl #3	@, tmp162, D.38678, D.38678,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	mov	r8, r8, asl #3	@ tmp163, tmp162,
	mov	r7, #1	@ i,
	add	lr, r8, r5	@ tmp164, tmp163, pSmInstArray
	sub	r9, sl, #1	@ tmp193, DelNum,
	and	r9, r9, #1	@ tmp195, tmp193,
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r1, r8, #168	@ tmp179, tmp163,
	add	r1, r5, r1	@, pSmInstArray, tmp179
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r0, r6, r7	@ D.38692, D.38678,
	cmp	r7, sl	@ i, DelNum
	mov	r3, r0, asl #22	@ j, D.38692,
	mov	r6, r3, lsr #22	@ j, j,
	bcs	.L425	@,
	cmp	r9, #0	@ tmp195,
	beq	.L416	@,
	add	ip, r6, r6, asl #3	@, tmp226, j, j,
	movw	r1, #:lower16:.LC60	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC60	@,
	mov	r8, ip, asl #3	@ tmp227, tmp226,
	mov	r7, #2	@ i,
	b	.L427	@
.L416:
	add	r2, r6, r6, asl #3	@, tmp200, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	mov	r8, r2, asl #3	@ tmp201, tmp200,
	add	r6, r6, #1	@ D.38692, j,
	add	lr, r8, r5	@ tmp202, tmp201, pSmInstArray
	add	r7, r7, #1	@ tmp196, i,
	add	r7, r7, #1	@ i, tmp196,
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r3, r8, #168	@ tmp207, tmp201,
	add	r1, r5, r3	@, pSmInstArray, tmp207
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	mov	ip, r6, asl #22	@ j, D.38692,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	mov	r6, ip, lsr #22	@ j, j,
	mov	r0, #26	@,
	add	r2, r6, r6, asl #3	@, tmp214, j, j,
	mov	r8, r2, asl #3	@ tmp215, tmp214,
.L427:
	add	lr, r8, r5	@ tmp228, tmp227, pSmInstArray
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r2, r8, #168	@ tmp233, tmp227,
	add	r1, r5, r2	@, pSmInstArray, tmp233
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r3, r6, #1	@ D.38692, j,
	cmp	r7, sl	@ i, DelNum
	mov	r6, r3, asl #22	@ j, D.38692,
	mov	r6, r6, lsr #22	@ j, j,
	bcc	.L416	@,
.L425:
	movw	r0, #:lower16:73904	@ tmp182,
	movt	r0, #:upper16:73904	@ tmp182,
	ldr	r1, [r5, r0]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	sl, sl, r1	@ D.38694, DelNum, <variable>.RawPacketArray.History
	str	sl, [r5, r0]	@ D.38694, <variable>.RawPacketArray.History
	cmp	sl, #1024	@ D.38694,
	subge	sl, sl, #1024	@ tmp188, D.38694,
	strge	sl, [r5, r0]	@ tmp188, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.38666,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1429:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	mov	r6, r0	@ InstID, InstID
	add	r3, r2, r0, asl #2	@, tmp143, tmp139, InstID,
	mov	r7, r1	@ pRawPacket, pRawPacket
	ldr	r5, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L434	@,
	bl	VCTRL_GetStreamInterface	@
	subs	r4, r0, #0	@ pStreamIntf,
	beq	.L437	@,
	ldr	r0, [r4, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r0, #0	@ <variable>.read_stream,
	bne	.L438	@,
.L434:
	mvn	r4, #6	@ ret,
.L432:
	mov	r0, r4	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L438:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmia	r4, {r0, ip}	@ phole ldm
	mov	r1, r7	@, pRawPacket
	blx	ip	@ <variable>.read_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #0	@ ret,
	bne	.L434	@,
	movw	r3, #:lower16:73916	@ tmp152,
	movt	r3, #:upper16:73916	@ tmp152,
	ldr	r1, [r7, #8]	@ <variable>.Length, <variable>.Length
	mov	r0, r4	@, ret
	ldr	r2, [r5, r3]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	lr, r1, r2	@ tmp156, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	lr, [r5, r3]	@ tmp156, <variable>.RawPacketArray.RawTotalSize
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L437:
	mov	r2, r6	@, InstID
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L432	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
.LFB1399:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp151,
	movt	r2, #:upper16:.LANCHOR0	@ tmp151,
	movw	r0, #:lower16:166252	@ tmp152,
	add	ip, r2, #64	@ D.43796, ivtmp.2186,
	movt	r0, #:upper16:166252	@ tmp152,
	ldr	r4, [r2, #804]	@ pretmp.2160, s_SCDInISR
	mov	lr, #0	@ tmp153,
	b	.L442	@
.L440:
	add	r2, r2, #4	@ ivtmp.2186, ivtmp.2186,
	cmp	r2, ip	@ ivtmp.2186, D.43796
	beq	.L451	@,
.L442:
	ldr	r3, [r2, #652]	@ D.41864, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.41864,
	beq	.L440	@,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	beq	.L440	@,
	cmp	r4, #0	@ pretmp.2160,
	str	lr, [r3, r0]	@ tmp153, <variable>.Mode
	beq	.L440	@,
	mov	r3, #2	@ i,
.L441:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L441	@,
	add	r2, r2, #4	@ ivtmp.2186, ivtmp.2186,
	cmp	r2, ip	@ ivtmp.2186, D.43796
	bne	.L442	@,
.L451:
	bl	ResetSCD	@
	mov	r1, #800	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1395:
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
	cmp	r0, #15	@ SmID,
	mvnhi	r0, #0	@ D.39187,
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	add	r5, r0, #162	@ tmp137, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:180128	@,
	add	r4, r0, r5, asl #2	@, tmp140, tmp136, tmp137,
	movt	r1, #:upper16:180128	@,
	mvn	r5, #0	@,
	ldr	r0, [r4, #4]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r2, [r4, #4]	@ tmp150, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:180088	@ tmp151,
	movt	r3, #:upper16:180088	@ tmp151,
	mvn	r4, #0	@ tmp152,
	mov	r0, #0	@ D.39187,
	strd	r4, [r2, r3]	@ tmp152, tmp150, tmp151
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
.LFB1381:
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
	mov	r1, #92160	@,
	bl	__memzero	@
	movw	r0, #:lower16:92184	@ tmp142,
	movt	r0, #:upper16:92184	@ tmp142,
	movw	r1, #:lower16:92168	@ tmp135,
	movw	r3, #:lower16:92172	@ tmp137,
	movt	r1, #:upper16:92168	@ tmp135,
	ldr	r5, [r4, r0]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	movt	r3, #:upper16:92172	@ tmp137,
	movw	r0, #:lower16:92176	@ tmp139,
	movw	r2, #:lower16:92192	@ tmp141,
	movt	r0, #:upper16:92176	@ tmp139,
	movt	r2, #:upper16:92192	@ tmp141,
	movw	ip, #:lower16:92196	@ tmp144,
	movt	ip, #:upper16:92196	@ tmp144,
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
.LFB1406:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp148,
	movt	r1, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r1, r0, asl #2	@, tmp152, tmp148, SmID,
	ldr	r4, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.39636,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r3, #:lower16:73896	@ tmp154,
	movw	ip, #:lower16:73900	@ tmp155,
	movt	r3, #:upper16:73896	@ tmp154,
	movt	ip, #:upper16:73900	@ tmp155,
	ldr	r5, [r4, r3]	@ D.39643, <variable>.RawPacketArray.Head
	ldr	r2, [r4, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r2, r5	@ <variable>.RawPacketArray.Tail, D.39643
	mvneq	r0, #3	@ D.39636,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r7, r4, #73728	@, pSmInstArray,
	mov	r6, r5, asl #3	@ tmp219, D.39643,
	add	r0, r7, #192	@,,
	add	r7, r4, #168	@ pRawPacketArray, pSmInstArray,
	bl	ResetStreamSegArray	@
	add	r0, r6, r5	@ tmp162, tmp219, D.39643
	add	r1, r4, r0, asl #3	@, tmp164, pSmInstArray, tmp162,
	ldr	r3, [r1, #172]	@ pu32tmp, <variable>.VirAddr
	ldmia	r3, {r0, r2}	@ phole ldm
	sub	ip, r0, #32	@ tmp168, D.39651,
	cmp	ip, #1888	@ tmp168,
	movls	ip, #0	@, tmp170
	movhi	ip, #1	@, tmp170
	cmp	r2, #31	@ h,
	orrle	ip, ip, #1	@,, tmp173, tmp170
	cmp	ip, #0	@ tmp173,
	bne	.L463	@,
	cmp	r2, #1088	@ h,
	bgt	.L463	@,
	ldr	r1, [r1, #176]	@ D.39663, <variable>.Length
	cmp	r1, #1552	@ D.39663,
	blt	.L463	@,
	movw	lr, #:lower16:3133456	@ tmp182,
	movt	lr, #:upper16:3133456	@ tmp182,
	cmp	r1, lr	@ D.39663, tmp182
	bgt	.L463	@,
	mov	lr, #3	@ tmp184,
	movw	ip, #:lower16:166108	@ tmp186,
	mul	r0, lr, r0	@ tmp183, tmp184, D.39651
	movt	ip, #:upper16:166108	@ tmp186,
	ldr	lr, [r4, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	ip, lr, #262144	@ tmp187, <variable>.StreamSegArray.SegBufSize,
	mul	r2, r2, r0	@ tmp185, h, tmp183
	mov	r2, r2, asr #1	@ D.39668, tmp185,
	cmp	r2, ip	@ D.39668, tmp187
	bgt	.L463	@,
	add	r2, r2, #16	@ tmp189, D.39668,
	cmp	r1, r2	@ D.39663, tmp189
	blt	.L463	@,
	ldr	r2, [r3, #8]	@ tmp203,
	movw	lr, #1916	@ tmp205,
	ldr	r3, [r3, #12]	@ disp_h,
	sub	r0, r2, #4	@ tmp202, tmp203,
	cmp	r0, lr	@ tmp202, tmp205
	movls	ip, #0	@, tmp206
	movhi	ip, #1	@, tmp206
	cmp	r3, #3	@ disp_h,
	orrle	ip, ip, #1	@,, tmp209, tmp206
	cmp	ip, #0	@ tmp209,
	bne	.L466	@,
	cmp	r3, #1088	@ disp_h,
	ble	.L467	@,
.L466:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mov	r1, #72	@ tmp213,
	mla	r4, r1, r5, r4	@ tmp214, tmp213, D.39643, pSmInstArray
	mov	r0, r7	@, pRawPacketArray
	ldr	r1, [r4, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L469	@,
.L465:
	mov	r0, #0	@ D.39636,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L463:
	add	r5, r6, r5	@ tmp194, tmp219, D.39643
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	add	r4, r4, r5, asl #3	@, tmp196, pSmInstArray, tmp194,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pRawPacketArray
	ldr	r1, [r4, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L465	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC106	@,
	movw	r2, #2054	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39636,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L467:
	mov	r0, r7	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.39636,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L469:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC106	@,
	movw	r2, #2065	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39636,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	ConfigStreamSegArray
	.type	ConfigStreamSegArray, %function
ConfigStreamSegArray:
	.fnstart
.LFB1380:
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
	bne	.L474	@,
.L471:
	mvn	r0, #0	@ D.38869,
.L472:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L474:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L471	@,
	movw	r1, #:lower16:92216	@,
	movt	r1, #:upper16:92216	@,
	str	r2, [fp, #-32]	@,
	movw	r7, #:lower16:92184	@ tmp156,
	str	r3, [fp, #-36]	@,
	movt	r7, #:upper16:92184	@ tmp156,
	bl	__memzero	@
	movw	r0, #:lower16:92196	@ tmp158,
	movt	r0, #:upper16:92196	@ tmp158,
	str	r4, [r5, r7]	@ BufPhyAddr, <variable>.SegBufPhyAddr
	movw	ip, #:lower16:92188	@ tmp159,
	movt	ip, #:upper16:92188	@ tmp159,
	str	r4, [r5, r0]	@ BufPhyAddr, <variable>.SegBufWriteAddr
	movw	r1, #:lower16:92192	@ tmp157,
	ldr	r3, [fp, #-36]	@,
	movt	r1, #:upper16:92192	@ tmp157,
	mov	r0, r6	@ D.38869, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [fp, #-32]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L472	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
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
	cmp	r0, #0	@ pRawStreamArray,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:73752	@,
	movt	r1, #:upper16:73752	@,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ResetRawStreamArray, .-ResetRawStreamArray
	.align	2
	.global	ScdReturnSegFilter
	.type	ScdReturnSegFilter, %function
ScdReturnSegFilter:
	.fnstart
.LFB1419:
	@ args = 4, pretend = 0, frame = 32
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
	mov	sl, r1	@ pTransFormSeg, pTransFormSeg
	ldr	r1, [r0, #32]	@, <variable>.SegNum
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	mov	r5, #0	@ tmp169,
	mov	r0, #24	@,
	str	r1, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC108	@,
	str	r5, [r2, #0]	@ tmp169,* pExtraSrcBack
	movt	r1, #:upper16:.LC108	@,
	str	r3, [fp, #-56]	@ pSegNum, %sfp
	ldr	r6, [fp, #4]	@ UpMsgStepNum, UpMsgStepNum
	bl	dprint_vfmw	@
	ldr	r7, [r4, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	cmp	r7, #2	@ <variable>.ProtocolType,
	beq	.L479	@,
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r5	@,
	ble	.L480	@,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r5	@, tmp169
	ldr	r5, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	ip, [r3, #0]	@ tmp174,* <variable>.pScdUpMsg
	and	r7, r5, #-2147483648	@ tmp175, <variable>.SegBufPhyAddr,
	mov	r5, r6, asl #2	@ D.43961, UpMsgStepNum,
	sub	r9, r1, #1	@ tmp258,,
	bic	r8, ip, #-2147483648	@ tmp173, tmp174,
	movw	r1, #:lower16:.LC109	@,
	orr	r6, r8, r7	@ tmp177, tmp173, tmp175
	str	r6, [sl, #0]	@ tmp177,* pTransFormSeg
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	movt	r1, #:upper16:.LC109	@,
	mov	r7, #1	@ i.2369,
	and	r9, r9, #1	@ tmp260, tmp258,
	add	r6, sl, r5	@ ivtmp.2348, pTransFormSeg, D.43961
	mov	r8, r5	@ ivtmp.2347, D.43961
	ldr	ip, [lr, #4]	@ tmp182,
	str	ip, [sl, #4]	@ tmp182,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #0]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-52]	@, %sfp
	cmp	r0, r7	@,
	ble	.L480	@,
	cmp	r9, #0	@ tmp260,
	beq	.L481	@,
	ldr	r8, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r7	@, i.2369
	ldr	r7, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	ldr	r3, [r8, r5]	@ tmp293,* D.43961
	and	ip, r7, #-2147483648	@ tmp296, <variable>.SegBufPhyAddr,
	mov	r7, #2	@ i.2369,
	mov	r8, r5, asl #1	@ ivtmp.2347, D.43961,
	bic	lr, r3, #-2147483648	@ tmp294, tmp293,
	orr	r3, lr, ip	@ tmp297, tmp294, tmp296
	str	r3, [r6, #0]	@ tmp297,* ivtmp.2348
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r3, r5, lr	@ tmp299, D.43961, <variable>.pScdUpMsg
	ldr	ip, [r3, #4]	@ tmp301,
	str	ip, [r6, #4]	@ tmp301,
	add	r6, r6, r5	@ ivtmp.2348, ivtmp.2348, D.43961
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, #4]	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-52]	@, %sfp
	cmp	r3, r7	@, i.2369
	ble	.L480	@,
.L481:
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	lr, r6, r5	@, ivtmp.2348, D.43961
	ldr	sl, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r2, r7	@, i.2369
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC109	@,
	ldr	r9, [r3, r8]	@ tmp266,* ivtmp.2347
	and	ip, sl, #-2147483648	@ tmp269, <variable>.SegBufPhyAddr,
	str	lr, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC109	@,
	bic	lr, r9, #-2147483648	@ tmp267, tmp266,
	add	sl, r8, r5	@ ivtmp.2347, ivtmp.2347, D.43961
	orr	r3, lr, ip	@ tmp270, tmp267, tmp269
	str	r3, [r6, #0]	@ tmp270,* ivtmp.2348
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r9, r7, #1	@ tmp261, i.2369,
	add	ip, r8, lr	@ tmp272, ivtmp.2347, <variable>.pScdUpMsg
	add	r8, sl, r5	@ ivtmp.2347, ivtmp.2347, D.43961
	ldr	r3, [ip, #4]	@ tmp274,
	str	r3, [r6, #4]	@ tmp274,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, r7, asl #2]	@,* <variable>.pScdUpMsg
	add	r7, r9, #1	@ i.2369, tmp261,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	ldr	r3, [ip, sl]	@ tmp281,* ivtmp.2347
	and	ip, r2, #-2147483648	@ tmp284, <variable>.SegBufPhyAddr,
	mov	r2, r9	@, tmp261
	bic	r3, r3, #-2147483648	@ tmp282, tmp281,
	orr	r3, r3, ip	@ tmp285, tmp282, tmp284
	str	r3, [r6, r5]	@ tmp285,* D.43961
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	ip, [fp, #-48]	@, %sfp
	add	sl, sl, r3	@ tmp287, ivtmp.2347, <variable>.pScdUpMsg
	add	r6, ip, r5	@ ivtmp.2348,, D.43961
	ldr	r3, [sl, #4]	@ tmp289,
	str	r3, [ip, #4]	@ tmp289,
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [ip, r9, asl #2]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r7	@, i.2369
	bgt	.L481	@,
.L480:
	mov	r0, #0	@ tmp185,
	str	r0, [r4, #16]	@ tmp185, <variable>.LastH263Num
	str	r0, [r4, #12]	@ tmp185, <variable>.ModeFlag
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	r2, [fp, #-56]	@, %sfp
	str	r1, [r2, #0]	@,
.L482:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L479:
	ldr	r0, [r4, #20]	@, <variable>.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.40158,
	bne	.L503	@,
.L483:
	mvn	r0, #6	@ D.40161,
	b	.L482	@
.L503:
	ldrb	lr, [r3, #1]	@ zero_extendqisi2	@ D.40166,
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ D.40171,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	ldrb	r9, [r3, #3]	@ zero_extendqisi2	@ D.40176,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ D.40162,* D.40158
	str	lr, [fp, #-72]	@,
	str	ip, [fp, #-68]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-72]	@,
	ldr	r3, [fp, #-68]	@,
	cmp	r0, #0	@ D.40179
	beq	.L483	@,
	orr	r8, r9, r8, asl #24	@, tmp188, D.40176, D.40162,
	mov	ip, r6, asl #2	@ D.43980, UpMsgStepNum,
	orr	lr, r8, r2, asl #16	@, tmp190, tmp188, D.40166,
	mov	r9, sl	@ ivtmp.2362, pTransFormSeg
	mov	sl, r5	@ i, tmp169
	orr	r5, lr, r3, asl #8	@, Data32, tmp190, D.40171,
	movw	r6, #:lower16:g_event_report	@,
	strb	r5, [r0, #3]	@ Data32,
	mov	r7, r5, lsr #8	@ tmp196, Data32,
	mov	r2, r5, lsr #24	@ tmp192, Data32,
	strb	r7, [r0, #2]	@ tmp196,
	mov	r1, r5, lsr #16	@ tmp194, Data32,
	strb	r2, [r0, #0]	@ tmp192,* D.40179
	movt	r6, #:upper16:g_event_report	@,
	strb	r1, [r0, #1]	@ tmp194,
	mov	r7, r9	@ ivtmp.2420, ivtmp.2362
	str	r6, [fp, #-48]	@, %sfp
	movw	r0, #:lower16:.LANCHOR0	@,
	add	r6, r9, #4	@ ivtmp.2365, ivtmp.2362,
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r9, [fp, #-64]	@ ivtmp.2362, %sfp
	mov	r5, #4	@ ivtmp.2364,
	str	r0, [fp, #-60]	@, %sfp
	mov	r9, ip	@ D.43980, D.43980
	b	.L484	@
.L505:
	mov	r1, #1	@,
	mov	lr, #0	@,
	str	r1, [r4, #12]	@, <variable>.ModeFlag
	str	lr, [r4, #16]	@, <variable>.LastH263Num
	str	r8, [r7, #0]	@ TmpPhyAddr.2384,* ivtmp.2420
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [ip, r5]	@ tmp227,* ivtmp.2364
	str	r0, [r6, #0]	@ tmp227,* ivtmp.2365
.L486:
	add	sl, sl, #1	@ i, i,
	add	r7, r7, r9	@ ivtmp.2420, ivtmp.2420, D.43980
	add	r5, r5, r9	@ ivtmp.2364, ivtmp.2364, D.43980
	add	r6, r6, r9	@ ivtmp.2365, ivtmp.2365, D.43980
.L484:
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	sl, r2	@ i,
	bge	.L504	@,
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r1, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r0, r5, r2	@ tmp201, ivtmp.2364, <variable>.pScdUpMsg
	and	r3, r1, #-2147483648	@ tmp205, <variable>.SegBufPhyAddr,
	ldr	ip, [r0, #-4]	@ tmp204,
	bic	r8, ip, #-2147483648	@ tmp203, tmp204,
	orrs	r8, r8, r3	@ TmpPhyAddr.2384, tmp203, tmp205
	beq	.L483	@,
	mov	r0, r8	@, TmpPhyAddr.2384
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.40191
	beq	.L483	@,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp208,* D.40191
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ tmp207,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp211,
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ tmp214,
	orr	lr, r3, r2, asl #24	@, tmp210, tmp207, tmp208,
	orr	r3, lr, r1, asl #16	@, tmp213, tmp210, tmp211,
	movw	lr, #438	@,
	orr	r0, r3, ip, asl #8	@, Data32.2403, tmp213, tmp214,
	cmp	r0, lr	@ Data32.2403,
	cmpne	r0, #288	@, Data32.2403,
	movne	r2, #0	@, tmp223
	moveq	r2, #1	@, tmp223
	beq	.L505	@,
	bic	r0, r0, #1020	@ tmp228, Data32.2403,
	bic	r3, r0, #3	@ tmp228, tmp228,
	cmp	r3, #32768	@ tmp228,
	beq	.L506	@,
.L487:
	str	r8, [r7, #0]	@ TmpPhyAddr.2384,* ivtmp.2420
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [ip, r5]	@ tmp243,* ivtmp.2364
	str	r0, [r6, #0]	@ tmp243,* ivtmp.2365
	b	.L486	@
.L506:
	ldr	ip, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	ip, #1	@ <variable>.ModeFlag,
	beq	.L488	@,
	mov	r1, #2	@,
	str	r1, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.2384,* ivtmp.2420
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [lr, r5]	@ tmp233,* ivtmp.2364
	str	r2, [r6, #0]	@ tmp233,* ivtmp.2365
	b	.L486	@
.L504:
	ldr	r4, [fp, #-56]	@, %sfp
	mov	r1, r9	@ D.43980, D.43980
	mov	r5, r1	@ D.43980, D.43980
	ldr	r9, [fp, #-64]	@ ivtmp.2362, %sfp
	str	sl, [r4, #0]	@ i,
	mov	r4, #0	@ i.2366,
	b	.L492	@
.L493:
	ldr	r3, [r3, #0]	@,
	bl	dprint_vfmw	@
.L492:
	cmp	r4, sl	@ i.2366, i
	add	r9, r9, r5	@ ivtmp.2362, ivtmp.2362, D.43980
	mov	r2, r4	@, i.2366
	movw	r1, #:lower16:.LC109	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC109	@,
	add	r4, r4, #1	@ i.2366, i.2366,
	rsb	r3, r5, r9	@ tmp245, D.43980, ivtmp.2362
	blt	.L493	@,
	mov	r0, #0	@ D.40161,
	b	.L482	@
.L488:
	ldr	r0, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r3, r0, #1	@ D.40215, <variable>.LastH263Num,
	str	r3, [r4, #16]	@ D.40215, <variable>.LastH263Num
	cmp	r3, #12	@ D.40215,
	ble	.L487	@,
	ldr	ip, [fp, #-48]	@, %sfp
	ldr	r3, [ip, #0]	@ g_event_report.559, g_event_report
	cmp	r3, #0	@ g_event_report.559,
	beq	.L490	@,
	ldr	lr, [fp, #-60]	@, %sfp
	mov	r1, #102	@,
	ldr	r0, [lr, #784]	@, s_SmIIS.ThisInstID
	blx	r3	@ g_event_report.559
.L490:
	mov	r3, #2	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.2384,* ivtmp.2420
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r1, r5]	@ tmp239,* ivtmp.2364
	str	r2, [r6, #0]	@ tmp239,* ivtmp.2365
	b	.L486	@
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	WriteCabacTabDsp
	.type	WriteCabacTabDsp, %function
WriteCabacTabDsp:
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
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p
	addne	r4, r0, #5120	@ D.44099, p,
	movwne	r3, #:lower16:g_CabacMN	@ ivtmp.2463,
	movtne	r3, #:upper16:g_CabacMN	@ ivtmp.2463,
	beq	.L514	@,
.L509:
	ldr	ip, [r3, #0]	@ tmp144, g_CabacMN
	add	lr, r3, #32	@ tmp153, ivtmp.2463,
	add	r2, r0, #32	@ tmp152, p,
	str	ip, [r0, #0]	@ tmp144,* p
	ldr	r1, [r3, #4]	@ tmp145, g_CabacMN
	str	r1, [r0, #4]	@ tmp145,
	ldr	ip, [r3, #8]	@ tmp146, g_CabacMN
	str	ip, [r0, #8]	@ tmp146,
	ldr	r1, [r3, #12]	@ tmp147, g_CabacMN
	str	r1, [r0, #12]	@ tmp147,
	ldr	ip, [r3, #16]	@ tmp148, g_CabacMN
	str	ip, [r0, #16]	@ tmp148,
	ldr	r1, [r3, #20]	@ tmp149, g_CabacMN
	str	r1, [r0, #20]	@ tmp149,
	ldr	ip, [r3, #24]	@ tmp150, g_CabacMN
	str	ip, [r0, #24]	@ tmp150,
	ldr	r1, [r3, #28]	@ tmp151, g_CabacMN
	str	r1, [r0, #28]	@ tmp151,
	ldr	ip, [r3, #32]	@ tmp156, g_CabacMN
	add	r3, lr, #32	@ ivtmp.2463, tmp153,
	str	ip, [r0, #32]	@ tmp156,
	add	r0, r2, #32	@ p, tmp152,
	ldr	r1, [lr, #4]	@ tmp157, g_CabacMN
	cmp	r0, r4	@ p, D.44099
	str	r1, [r2, #4]	@ tmp157,
	ldr	ip, [lr, #8]	@ tmp158, g_CabacMN
	str	ip, [r2, #8]	@ tmp158,
	ldr	r1, [lr, #12]	@ tmp159, g_CabacMN
	str	r1, [r2, #12]	@ tmp159,
	ldr	ip, [lr, #16]	@ tmp160, g_CabacMN
	str	ip, [r2, #16]	@ tmp160,
	ldr	r1, [lr, #20]	@ tmp161, g_CabacMN
	str	r1, [r2, #20]	@ tmp161,
	ldr	ip, [lr, #24]	@ tmp162, g_CabacMN
	str	ip, [r2, #24]	@ tmp162,
	ldr	r1, [lr, #28]	@ tmp163, g_CabacMN
	str	r1, [r2, #28]	@ tmp163,
	bne	.L509	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L514:
	movw	r1, #:lower16:.LC110	@,
	mov	r2, #75	@,
	movt	r1, #:upper16:.LC110	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1409:
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
	mov	r6, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	add	r3, r4, r6, asl #2	@, tmp145, tmp158, SmID,
	ldr	r3, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	mov	r5, r0	@ CurTime,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldrsb	r7, [r3, #3]	@ <variable>.InsertNewSegFlag, <variable>.InsertNewSegFlag
	cmp	r7, #1	@ <variable>.InsertNewSegFlag,
	beq	.L522	@,
.L517:
	mov	r7, #0	@ prephitmp.2511,
.L518:
	ldr	r2, [r4, #812]	@ LastEventTime.524, LastEventTime
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	cmp	r5, r2	@ CurTime, LastEventTime.524
	strls	r5, [r0, #812]	@ CurTime, LastEventTime
	movls	r2, #1	@ prephitmp.2500,
	bls	.L520	@,
	rsb	r2, r2, r5	@ tmp149, LastEventTime.524, CurTime
	cmp	r2, #1	@ tmp149,
	movls	r2, #0	@, prephitmp.2500
	movhi	r2, #1	@, prephitmp.2500
.L520:
	tst	r2, r7	@ prephitmp.2500, prephitmp.2511
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #812]	@ CurTime, LastEventTime
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L522:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L517	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L518	@,
	b	.L517	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1408:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	mov	r6, r1	@ StreamID, StreamID
	add	r0, r4, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r5, [r0, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	mvneq	r5, #0	@ ret,
	beq	.L525	@,
	add	r0, r4, #796	@, tmp138,
	bl	OSAL_LockIRQ	@
	add	r1, r5, #73728	@, pSmInstArray,
	add	r0, r1, #192	@,,
	mov	r1, r6	@, StreamID
	bl	ReleaseStreamSeg	@
	mov	r5, r0	@ ret,
	add	r0, r4, #796	@, tmp138,
	bl	OSAL_UnLockIRQ	@
.L525:
	mov	r0, r5	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
.LFB1401:
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
	sub	r4, fp, #24	@ tmp150,,
	mov	r5, r0	@ SmID, SmID
	mov	r0, r4	@, tmp150
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r5, r3, r5, asl #2	@, tmp141, tmp137, SmID,
	ldr	r3, [r5, #652]	@ D.39409, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.39409,
	beq	.L528	@,
	ldr	r2, [r3, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L528	@,
	movw	r0, #:lower16:166252	@ tmp144,
	movt	r0, #:upper16:166252	@ tmp144,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp147,
	streq	r1, [r3, r0]	@ tmp147, <variable>.Mode
.L528:
	mov	r0, r4	@, tmp150
	bl	OSAL_UnLockIRQ	@
	mvn	r0, #6	@,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	SM_Start, .-SM_Start
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1400:
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
	cmp	r0, #15	@ SmID,
	movls	r2, #0	@, tmp149
	movhi	r2, #1	@, tmp149
	cmp	r1, #0	@ pSmCfg,
	orreq	r2, r2, #1	@,, tmp152, tmp149
	mov	r3, r0	@ SmID, SmID
	cmp	r2, #0	@ tmp152,
	mov	r4, r1	@ pSmCfg, pSmCfg
	bne	.L544	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp217,
	movt	r6, #:upper16:.LANCHOR0	@ tmp217,
	add	r3, r6, r0, asl #2	@, tmp158, tmp217, SmID,
	ldr	r5, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L533	@,
	ldr	r3, [r1, #12]	@ D.39357, <variable>.BufPhyAddr
	ldr	r1, [r5, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r1, r3	@ <variable>.Config.BufPhyAddr, D.39357
	addeq	r7, r5, #48	@ tmp215, pSmInstArray,
	bne	.L545	@,
.L534:
	mov	r0, r7	@, tmp215
	mov	r1, r4	@, pSmCfg
	mov	r2, #120	@,
	bl	memcpy	@
	movw	r3, #:lower16:180124	@ tmp209,
	movt	r3, #:upper16:180124	@ tmp209,
	mov	ip, #2	@ tmp210,
	str	ip, [r5, r3]	@ tmp210, <variable>.UpMsgStepNum
	ldr	r0, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r0, #2	@ <variable>.VidStd,
	moveq	r0, #3	@ tmp213,
	streq	r0, [r5, r3]	@ tmp213, <variable>.UpMsgStepNum
	mov	r0, #0	@ D.39352,
.L532:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L544:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC111	@,
	movw	r2, #1556	@,
	movt	r1, #:upper16:.LC111	@,
	str	r4, [sp, #0]	@ pSmCfg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39352,
	b	.L532	@
.L545:
	cmp	r3, #0	@ D.39357,
	bne	.L546	@,
.L533:
	mvn	r0, #0	@ D.39352,
	b	.L532	@
.L546:
	ldr	ip, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	ip, #0	@ <variable>.pBufVirAddr,
	beq	.L533	@,
	ldr	r2, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r2, #18	@ <variable>.VidStd,
	bhi	.L533	@,
	ldr	lr, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r1, #:lower16:166152	@ tmp163,
	movt	r1, #:upper16:166152	@ tmp163,
	movw	r2, #:lower16:166156	@ tmp166,
	movt	r2, #:upper16:166156	@ tmp166,
	movw	r3, #:lower16:166160	@ tmp169,
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r3, #:upper16:166160	@ tmp169,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r7, #:lower16:166164	@ tmp172,
	movt	r7, #:upper16:166164	@ tmp172,
	movw	lr, #:lower16:166168	@ tmp175,
	movt	lr, #:upper16:166168	@ tmp175,
	movw	r1, #:lower16:166172	@ tmp178,
	str	ip, [r5, r2]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r1, #:upper16:166172	@ tmp178,
	ldr	r8, [r6, #16]	@, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	ip, #:lower16:166176	@ tmp181,
	movt	ip, #:upper16:166176	@ tmp181,
	movw	r2, #:lower16:166240	@ tmp185,
	movt	r2, #:upper16:166240	@ tmp185,
	str	r8, [r5, r3]	@, <variable>.BufAddrCfg.DownMsgSize
	movw	r3, #:lower16:166148	@ tmp187,
	ldr	r8, [r6, #20]	@, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movt	r3, #:upper16:166148	@ tmp187,
	str	r8, [r5, r7]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r7, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r7, [r5, lr]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r7, #1152	@ tmp182,
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r7, [r5, ip]	@ tmp182, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r7, [r4, #12]	@ temp.2583, <variable>.BufPhyAddr
	ldr	lr, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	add	r1, r7, #3	@ tmp183, temp.2583,
	bic	ip, r1, #3	@ TmpPhyAddr, tmp183,
	rsb	r7, r7, ip	@ ByteOffsetInWord, temp.2583, TmpPhyAddr
	add	r1, ip, #131072	@ tmp186, TmpPhyAddr,
	add	ip, r7, lr	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	str	r1, [r5, r2]	@ tmp186, <variable>.BufAddrCfg.SegBufPhyAddr
	add	lr, ip, #131072	@ tmp188, pTmpVirAddr,
	str	lr, [r5, r3]	@ tmp188, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r3, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r3, r7, r3	@ D.39383, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r3	@ SmMaxSegBufSize, D.39383
	bge	.L536	@,
	movw	r7, #:lower16:166244	@ tmp190,
	movt	r7, #:upper16:166244	@ tmp190,
	sub	r3, r0, #132096	@ prephitmp.2572, SmMaxSegBufSize,
	str	r3, [r5, r7]	@ prephitmp.2572, <variable>.BufAddrCfg.SegBufSize
.L537:
	movw	r1, #:lower16:166240	@ tmp195,
	movw	r2, #:lower16:166148	@ tmp196,
	movt	r1, #:upper16:166240	@ tmp195,
	movt	r2, #:upper16:166148	@ tmp196,
	add	ip, r5, #73728	@, pSmInstArray,
	add	r7, r5, #48	@ tmp215, pSmInstArray,
	ldr	r1, [r5, r1]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	add	r0, ip, #192	@,,
	ldr	r2, [r5, r2]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	ConfigStreamSegArray	@
	ldr	r3, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	mov	r0, r7	@, tmp215
	mov	r1, r4	@, pSmCfg
	mov	r2, #120	@,
	str	r3, [r6, #808]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
	b	.L534	@
.L536:
	sub	r3, r3, #132096	@ prephitmp.2572, D.39383,
	movw	r0, #:lower16:166244	@ tmp191,
	cmp	r3, #32768	@ prephitmp.2572,
	movt	r0, #:upper16:166244	@ tmp191,
	str	r3, [r5, r0]	@ prephitmp.2572, <variable>.BufAddrCfg.SegBufSize
	bge	.L537	@,
	mvn	r0, #0	@ D.39352,
	b	.L532	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1394:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #124
	sub	sp, sp, #124	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ SmID,
	mov	r5, r0	@ SmID, SmID
	bhi	.L559	@,
	add	r7, r0, #162	@ tmp191, SmID,
	movw	r6, #:lower16:.LANCHOR0	@ tmp189,
	movt	r6, #:upper16:.LANCHOR0	@ tmp189,
	add	r3, r6, r7, asl #2	@, tmp145, tmp189, tmp191,
	ldr	r4, [r3, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L561	@,
	ldr	r2, [r4, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r1, r2, #1	@ tmp149, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r1, #1	@ tmp149,
	bls	.L562	@,
.L551:
	sub	r8, fp, #164	@ tmp188,,
	add	r6, r6, r7, asl #2	@, tmp163, tmp189, tmp191,
	mov	sl, #0	@ tmp152,
	mvn	r0, #0	@ tmp153,
	add	r1, r4, #48	@, pSmInstArray,
	str	r0, [r4, #80]	@ tmp153, <variable>.Config.LastRawDisContinueCount
	mov	r2, #120	@,
	str	sl, [r4, #84]	@ tmp152, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, r8	@, tmp188
	bl	memcpy	@
	ldr	r1, [r6, #4]	@ D.41871, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:166252	@ tmp158,
	movt	r3, #:upper16:166252	@ tmp158,
	cmp	r1, sl	@ D.41871,
	movw	r2, #:lower16:.LANCHOR0	@ tmp159,
	ldr	r6, [r4, r3]	@ TmpMode, <variable>.Mode
	movt	r2, #:upper16:.LANCHOR0	@ tmp159,
	beq	.L552	@,
	ldr	r9, [r1, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r9, sl	@ <variable>.Mode,
	bne	.L563	@,
.L552:
	movw	r9, #:lower16:73900	@ tmp171,
	movw	r1, #:lower16:73896	@ tmp172,
	movt	r9, #:upper16:73900	@ tmp171,
	movt	r1, #:upper16:73896	@ tmp172,
	sub	r6, r6, #1	@ tmp182, TmpMode,
	ldr	lr, [r4, r9]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	mvn	r9, #0	@,
	ldr	r0, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	r1, lr, r0	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	add	r0, r4, #168	@, pSmInstArray,
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, pSmInstArray
	movw	r1, #:lower16:180128	@,
	movt	r1, #:upper16:180128	@,
	bl	__memzero	@
	movw	ip, #:lower16:180088	@ tmp177,
	movw	r3, #:lower16:180124	@ tmp179,
	movt	ip, #:upper16:180088	@ tmp177,
	movt	r3, #:upper16:180124	@ tmp179,
	mov	r2, #2	@ tmp180,
	mov	r1, r8	@, tmp188
	mov	r0, r5	@, SmID
	str	r2, [r4, r3]	@ tmp180, <variable>.UpMsgStepNum
	mvn	r8, #0	@ tmp178,
	strd	r8, [r4, ip]	@ tmp178, pSmInstArray, tmp177
	bl	SM_Config	@
	cmp	r6, #1	@ tmp182,
	movwls	r3, #:lower16:166252	@ tmp183,
	movhi	r2, #0	@ tmp186,
	movwhi	r3, #:lower16:166252	@ tmp185,
	movls	r0, #0	@ D.39150,
	movls	r2, #1	@ tmp184,
	movtls	r3, #:upper16:166252	@ tmp183,
	movthi	r3, #:upper16:166252	@ tmp185,
	movhi	r0, r2	@ D.39150, tmp186
	str	r2, [r4, r3]	@ tmp186, <variable>.Mode
.L549:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L563:
	str	sl, [r1, r3]	@ tmp152, <variable>.Mode
	ldr	ip, [r2, #804]	@ s_SCDInISR, s_SCDInISR
	cmp	ip, sl	@ s_SCDInISR,
	beq	.L552	@,
.L553:
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	beq	.L552	@,
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	bne	.L553	@,
	b	.L552	@
.L561:
	movw	r1, #:lower16:.LC112	@,
	mov	r0, r4	@, pSmInstArray
	movt	r1, #:upper16:.LC112	@,
	movw	r2, #1293	@,
	bl	dprint_vfmw	@
.L559:
	mvn	r0, #0	@ D.39150,
	b	.L549	@
.L562:
	add	r1, r4, #96	@, pSmInstArray,
	bl	ReleaseRawStreamData	@
	b	.L551	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
.LFB1385:
	@ args = 0, pretend = 0, frame = 0
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
	cmpne	r1, #0	@, pStreamSeg,
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mvneq	r0, #0	@ Ret,
	beq	.L566	@,
	movw	r2, #:lower16:92168	@ tmp151,
	movw	r3, #:lower16:92172	@ tmp152,
	movt	r2, #:upper16:92168	@ tmp151,
	movt	r3, #:upper16:92172	@ tmp152,
	ldr	r6, [r4, r2]	@ i, <variable>.Head
	ldr	ip, [r4, r3]	@ D.38977, <variable>.Tail
	cmp	r6, ip	@ i, D.38977
	beq	.L567	@,
	mov	r3, r6, asl #2	@ tmp238, i,
	add	r2, r3, r6	@ tmp155, tmp238, i
	add	r2, r4, r2, asl #4	@, tmp159, pStreamSegArray, tmp155,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp239,
	movtne	r0, #:upper16:954437177	@ tmp239,
	bne	.L572	@,
	b	.L568	@
.L570:
	add	r2, r4, r2, asl #4	@, tmp169, pStreamSegArray, tmp165,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L568	@,
.L572:
	add	r6, r6, #1	@ D.38986, i,
	smull	r3, r2, r0, r6	@, tmp228, tmp239, D.38986
	mov	r3, r6, asr #31	@ tmp231, D.38986,
	rsb	r3, r3, r2, asr #8	@, i, tmp231, tmp228,
	add	r2, r3, r3, asl #3	@, tmp234, i, i,
	sub	r6, r6, r2, asl #7	@ i, D.38986, tmp234,
	cmp	r6, ip	@ i, D.38977
	mov	r3, r6, asl #2	@ tmp238, i,
	add	r2, r3, r6	@ tmp165, tmp238, i
	bne	.L570	@,
.L567:
	mvn	r0, #2	@ Ret,
.L566:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L568:
	add	r6, r3, r6	@ tmp175, tmp238, i
	mov	r0, r1	@, pStreamSeg
	mov	r2, #80	@,
	add	r5, r4, r6, asl #4	@, tmp178, pStreamSegArray, tmp175,
	add	r6, r6, #1	@ tmp198, tmp175,
	add	r5, r5, #8	@ tmp179, tmp178,
	mov	r1, r5	@, tmp179
	bl	memcpy	@
	movw	ip, #:lower16:92204	@ tmp203,
	add	r3, r4, r6, asl #4	@, tmp201, pStreamSegArray, tmp198,
	movt	ip, #:upper16:92204	@ tmp203,
	movw	r2, #:lower16:92208	@ tmp206,
	movt	r2, #:upper16:92208	@ tmp206,
	ldr	r3, [r3, #4]	@ D.38990, <variable>.LenInByte
	mov	r1, #2	@ tmp193,
	strb	r1, [r5, #4]	@ tmp193, <variable>.SegState
	mov	r0, #26	@,
	ldr	r7, [r4, ip]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	movw	r1, #:lower16:.LC113	@,
	ldr	lr, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	movt	r1, #:upper16:.LC113	@,
	rsb	r7, r3, r7	@ D.38991, D.38990, <variable>.SegFreshSize
	sub	lr, lr, #1	@ D.38993, <variable>.SegFreshNum,
	bic	r7, r7, r7, asr #31	@ tmp209, D.38991
	str	r7, [r4, ip]	@ tmp209, <variable>.SegFreshSize
	bic	ip, lr, lr, asr #31	@ tmp211, D.38993
	str	ip, [r4, r2]	@ tmp211, <variable>.SegFreshNum
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r2, [r4, r6, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Ret,
	b	.L566	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mov	r7, r1	@ pStreamSeg, pStreamSeg
	movne	sl, #0	@, tmp145
	moveq	sl, #1	@, tmp145
	mvneq	r0, #0	@ Ret,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r5, #:lower16:92172	@ tmp146,
	movt	r5, #:upper16:92172	@ tmp146,
	movw	r6, #:lower16:954437177	@ tmp150,
	movt	r6, #:upper16:954437177	@ tmp150,
	ldr	r8, [r4, r5]	@ D.38943, <variable>.Tail
	movw	r2, #:lower16:92168	@ tmp158,
	movt	r2, #:upper16:92168	@ tmp158,
	add	r3, r8, #1	@ tmp147, D.38943,
	ldr	r2, [r4, r2]	@ <variable>.Head, <variable>.Head
	smull	r0, ip, r6, r3	@, tmp149, tmp150, tmp147
	mov	r0, r3, asr #31	@ tmp152, tmp147,
	rsb	r0, r0, ip, asr #8	@, tmp148, tmp152, tmp149,
	add	r0, r0, r0, asl #3	@, tmp155, tmp148, tmp148,
	sub	r3, r3, r0, asl #7	@ tmp157, tmp147, tmp155,
	cmp	r3, r2	@ tmp157, <variable>.Head
	mvneq	r0, #3	@ Ret,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	add	r8, r8, r8, asl #2	@, tmp162, D.38943, D.38943,
	mov	r2, #80	@,
	add	lr, r4, r8, asl #4	@, tmp165, pStreamSegArray, tmp162,
	add	r9, r4, r8, asl #4	@, tmp189, pStreamSegArray, tmp162,
	add	r0, lr, #8	@, tmp165,
	mov	r8, #1	@ tmp182,
	bl	memcpy	@
	ldr	r3, [r4, r5]	@ <variable>.Tail, <variable>.Tail
	movw	ip, #:lower16:92196	@ tmp206,
	movw	r1, #:lower16:92200	@ tmp210,
	movt	ip, #:upper16:92196	@ tmp206,
	movt	r1, #:upper16:92200	@ tmp210,
	add	r2, r3, r3, asl #2	@, tmp175, <variable>.Tail, <variable>.Tail,
	movw	r3, #:lower16:92204	@ tmp215,
	movt	r3, #:upper16:92204	@ tmp215,
	add	r0, r4, r2, asl #4	@, tmp179, pStreamSegArray, tmp175,
	movw	r2, #:lower16:92208	@ tmp220,
	movt	r2, #:upper16:92208	@ tmp220,
	strb	r8, [r0, #12]	@ tmp182, <variable>.SegState
	mov	r0, sl	@ Ret, tmp145
	ldr	sl, [r4, r5]	@ <variable>.Tail, <variable>.Tail
	str	sl, [r9, #24]	@ <variable>.Tail, <variable>.StreamID
	ldr	r8, [r4, r5]	@ <variable>.Tail, <variable>.Tail
	ldr	r9, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	add	r8, r8, #1	@ tmp194, <variable>.Tail,
	add	r9, r9, #1	@ tmp223, <variable>.SegFreshNum,
	smull	sl, r6, r6, r8	@, tmp196, tmp150, tmp194
	mov	sl, r8, asr #31	@ tmp199, tmp194,
	rsb	r6, sl, r6, asr #8	@, tmp200, tmp199, tmp196,
	add	sl, r6, r6, asl #3	@, tmp203, tmp200, tmp200,
	sub	r6, r8, sl, asl #7	@ tmp205, tmp194, tmp203,
	str	r6, [r4, r5]	@ tmp205, <variable>.Tail
	ldr	sl, [r7, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r6, [r7, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r5, r6, sl	@ tmp209, <variable>.LenInByte, <variable>.PhyAddr
	str	r5, [r4, ip]	@ tmp209, <variable>.SegBufWriteAddr
	ldr	r5, [r4, r1]	@, <variable>.SegTotalSize
	ldr	ip, [r7, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	sl, ip, r5	@ tmp214, <variable>.LenInByte,
	str	sl, [r4, r1]	@ tmp214, <variable>.SegTotalSize
	ldr	sl, [r4, r3]	@, <variable>.SegFreshSize
	ldr	r1, [r7, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r9, [r4, r2]	@ tmp223, <variable>.SegFreshNum
	add	ip, r1, sl	@ tmp219, <variable>.LenInByte,
	str	ip, [r4, r3]	@ tmp219, <variable>.SegFreshSize
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.global	__aeabi_uidiv
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
.LFB1423:
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #300
	sub	sp, sp, #300	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrsb	r3, [r0, #5]	@ <variable>.IsWaitSCD, <variable>.IsWaitSCD
	mov	r5, #0	@ tmp188,
	mov	r4, r0	@ pScdInstance, pScdInstance
	cmp	r3, r5	@ <variable>.IsWaitSCD,
	str	r5, [fp, #-52]	@ tmp188, SegBufAddr
	str	r5, [fp, #-56]	@ tmp188, SegBufLength
	beq	.L581	@,
	movw	r6, #:lower16:166144	@ tmp191,
	movt	r6, #:upper16:166144	@ tmp191,
	ldr	r0, [r0, r6]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	moveq	r0, #2	@ tmp194,
	mvneq	r5, #6	@ Ret,
	streq	r0, [r4, r6]	@ tmp194, <variable>.SmPushRaw.PushRawOver
	beq	.L583	@,
	sub	r7, fp, #172	@ tmp497,,
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	sub	r8, fp, #92	@ tmp200,,
	bl	MEM_ReadPhyWord	@
	mov	r3, #2	@ tmp197,
	mov	r0, r7	@, tmp497
	str	r3, [r4, r6]	@ tmp197, <variable>.SmPushRaw.PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	sub	r0, fp, #252	@,,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, r8	@, tmp200
	bl	__memzero	@
	movw	ip, #:lower16:180124	@ tmp203,
	movt	ip, #:upper16:180124	@ tmp203,
	str	r5, [fp, #-64]	@ tmp188, TmpAddr
	str	r5, [fp, #-60]	@ tmp188, SegFreeBufLen
	mov	r0, r8	@, tmp200
	ldr	r2, [r4, ip]	@, <variable>.UpMsgStepNum
	str	r2, [fp, #-256]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	r1, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r1, #0	@ SmStateReg.ScdRollAddr,
	bne	.L634	@,
.L581:
	mvn	r5, #6	@ Ret,
.L583:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L634:
	add	r9, r4, #73728	@ pStreamSegArray, pScdInstance,
	ldr	r5, [fp, #-80]	@, SmStateReg.ScdNum
	add	r6, r9, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r6, #0	@ pStreamSegArray,
	str	r5, [fp, #-272]	@, %sfp
	str	r5, [fp, #-48]	@, ScdSegNum
	beq	.L625	@,
	movw	lr, #:lower16:166104	@ tmp207,
	movw	r9, #:lower16:166108	@ tmp210,
	movt	lr, #:upper16:166104	@ tmp207,
	movt	r9, #:upper16:166108	@ tmp210,
	ldr	r8, [r4, lr]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, r9]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r8, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r5, [fp, #-56]	@ <variable>.StreamSegArray.SegBufSize,
.L625:
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	bl	MEM_ReadPhyWord	@
	movw	r8, #:lower16:166168	@ tmp214,
	movw	r3, #:lower16:166104	@ tmp218,
	movt	r8, #:upper16:166168	@ tmp214,
	movt	r3, #:upper16:166104	@ tmp218,
	movw	r5, #:lower16:73920	@ tmp217,
	movt	r5, #:upper16:73920	@ tmp217,
	ldr	r9, [fp, #-56]	@ SegBufLength, SegBufLength
	ldr	r2, [r4, r8]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	r1, [r4, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r8, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r3, [fp, #-52]	@ SegBufAddr, SegBufAddr
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r1, r1, r3	@ tmp219, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	ldr	r5, [fp, #-48]	@ ScdSegNum, ScdSegNum
	add	r1, ip, r1	@ tmp223, <variable>.StreamSegArray.pSegBufVirAddr, tmp219
	str	r2, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	str	r1, [r4, #8]	@ tmp223, <variable>.SegFilter.pSegBufVirAddr
	cmp	r5, #1152	@ ScdSegNum,
	movge	r5, #1152	@ D.40418,
	str	r3, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	str	r9, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	str	r8, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	and	r0, r0, #15	@ tmp213,,
	str	r0, [r4, #16]	@ tmp213, <variable>.SegFilter.ProtocolType
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-256]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.40418,
	bhi	.L635	@,
	ldr	r0, [fp, #-48]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ iftmp.574,
.L586:
	add	lr, r4, #165888	@ D.40429, pScdInstance,
	add	r9, r4, #8	@, pScdInstance,
	str	r9, [fp, #-292]	@, %sfp
	add	r8, lr, #368	@ D.40429, D.40429,
	str	r0, [r4, #40]	@ iftmp.574, <variable>.SegFilter.SegNum
	sub	r2, fp, #68	@,,
	ldr	r9, [fp, #-256]	@, %sfp
	mov	r1, r8	@, D.40429
	ldr	r0, [fp, #-292]	@, %sfp
	sub	r3, fp, #48	@,,
	str	r9, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	subs	r5, r0, #0	@ Ret,
	bne	.L581	@,
	ldr	sl, [fp, #-48]	@ ScdSegNum.2730, ScdSegNum
	add	r0, r4, #168	@, pScdInstance,
	str	r0, [fp, #-296]	@, %sfp
	cmp	sl, #1	@ ScdSegNum.2730,
	ble	.L636	@,
	strb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-256]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	sl, r0	@ ScdSegNum.2730,
	bcs	.L593	@,
	ldr	r3, [fp, #-48]	@ ScdSegNum, ScdSegNum
	ldr	ip, [fp, #-256]	@, %sfp
	sub	r3, r3, #1	@ prephitmp.2703, ScdSegNum,
	str	r3, [fp, #-48]	@ prephitmp.2703, ScdSegNum
	mul	lr, ip, r3	@ tmp272,, prephitmp.2703
	add	r2, lr, #41472	@ tmp273, tmp272,
	add	r0, r2, #93	@ tmp273, tmp273,
	ldr	r9, [r4, r0, asl #2]	@ tmp275, <variable>.TransFormSeg
	bic	sl, r9, #-2147483648	@, tmp275,
	str	sl, [fp, #-320]	@, %sfp
.L594:
	ldr	r0, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r0, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L597	@,
	ldr	r8, [fp, #-48]	@, ScdSegNum
	str	r8, [fp, #-308]	@, %sfp
.L598:
	movw	r3, #:lower16:166092	@ tmp288,
	movt	r3, #:upper16:166092	@ tmp288,
	add	sl, r4, #179200	@, pScdInstance,
	movw	r9, #:lower16:73920	@,
	add	r8, sl, #888	@,,
	movt	r9, #:upper16:73920	@,
	str	r8, [fp, #-288]	@, %sfp
	movw	r1, #:lower16:166104	@,
	str	r9, [fp, #-280]	@, %sfp
	movt	r1, #:upper16:166104	@,
	movw	ip, #:lower16:166088	@,
	str	r1, [fp, #-284]	@, %sfp
	movt	ip, #:upper16:166088	@,
	str	ip, [fp, #-304]	@, %sfp
	ldr	lr, [r4, r3]	@, <variable>.StreamSegArray.Tail
	mov	r2, #0	@ ivtmp.2724,
	ldr	r3, [fp, #-308]	@ prephitmp.2842, %sfp
	mov	sl, r2	@ i.2782, ivtmp.2724
	str	r2, [fp, #-300]	@ ivtmp.2724, %sfp
	str	lr, [fp, #-316]	@, %sfp
	str	r6, [fp, #-276]	@ pStreamSegArray, %sfp
	str	r5, [fp, #-312]	@ Ret, %sfp
.L599:
	cmp	sl, r3	@ i.2782, prephitmp.2842
	bge	.L637	@,
	ldr	r9, [fp, #-256]	@, %sfp
	add	r6, r2, r9	@ ivtmp.2736, ivtmp.2724,
	add	r9, r2, #1	@ D.40496, ivtmp.2724,
	add	r8, r6, #41472	@ tmp292, ivtmp.2736,
	add	ip, r9, #41472	@, D.40496,
	add	r1, r8, #92	@ tmp292, tmp292,
	str	ip, [fp, #-260]	@, %sfp
	add	r0, ip, #92	@ tmp294,,
	ldr	ip, [fp, #-52]	@ prephitmp.2760, SegBufAddr
	ldr	r3, [r4, r1, asl #2]	@, <variable>.TransFormSeg
	add	r2, r2, #41472	@ tmp290, ivtmp.2724,
	add	r2, r2, #92	@ tmp290, tmp290,
	add	r1, sl, #1	@, i.2782,
	str	r3, [fp, #-328]	@, %sfp
	ldr	r8, [fp, #-328]	@, %sfp
	ldr	r3, [r4, r0, asl #2]	@ tmp297, <variable>.TransFormSeg
	cmp	ip, r8	@ prephitmp.2760,
	str	r1, [fp, #-268]	@, %sfp
	ldr	r8, [r4, r2, asl #2]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldreq	r5, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r0, r3, lsr #31	@ tmp296, tmp297,
	ldrne	r2, [fp, #-328]	@, %sfp
	rsbeq	r5, r8, r5	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	strb	r0, [fp, #-165]	@ tmp296, SegPacket.DspCheckPicOverFlag
	rsbne	r5, r8, r2	@ SegPacketLen, CurrSegPhyAddr,
	cmp	r5, #3	@ SegPacketLen,
	ble	.L602	@,
	ldr	lr, [fp, #-244]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	lr, #0	@ LastSegPacket.PhyAddr,
	bne	.L638	@,
	ldr	r3, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r3, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L639	@,
.L608:
	ldr	r0, [fp, #-284]	@, %sfp
	ldr	r1, [fp, #-280]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r1, fp, #64	@,,
	rsb	r3, r2, r8	@ tmp336, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [fp, #-276]	@, %sfp
	sub	r2, fp, #60	@,,
	add	lr, ip, r3	@ tmp339, <variable>.StreamSegArray.pSegBufVirAddr, tmp336
	str	r5, [fp, #-160]	@ SegPacketLen, SegPacket.LenInByte
	mov	ip, #1	@,
	str	lr, [fp, #-172]	@ tmp339, SegPacket.VirAddr
	strb	ip, [fp, #-167]	@, SegPacket.IsLastSeg
	str	r8, [fp, #-164]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r5, [fp, #-164]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.2755, SegFreeBufLen
	cmp	r5, #0	@ SegPacket.PhyAddr,
	bne	.L640	@,
.L609:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-320]	@, %sfp
	ldr	r2, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC117	@,
	mov	r0, #0	@,
	ldr	r2, [fp, #-164]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC117	@,
	ldr	r3, [fp, #-160]	@, SegPacket.LenInByte
	mov	r6, #1	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L606:
	movw	r3, #:lower16:166092	@ tmp469,
	movt	r3, #:upper16:166092	@ tmp469,
	ldr	r0, [fp, #-316]	@, %sfp
	ldr	r2, [r4, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	cmp	r2, r0	@ <variable>.StreamSegArray.Tail,
	movne	r2, #1	@ tmp471,
	moveq	r2, #0	@ tmp473,
	cmp	sl, #0	@ i.2782,
	strb	r2, [r4, #3]	@ tmp473, <variable>.InsertNewSegFlag
	bgt	.L641	@,
	ldr	r1, [fp, #-308]	@, %sfp
	ldr	r8, [fp, #-272]	@, %sfp
	rsbs	r3, r1, #1	@ tmp486,
	movcc	r3, #0	@ tmp486
	cmp	r8, #1152	@,
	movls	r3, #0	@, tmp486,
	cmp	r3, #0	@ tmp486,
	bne	.L642	@,
.L624:
	cmp	r6, #1	@ ScdErrFlag,
	bne	.L583	@,
	b	.L581	@
.L602:
	sub	r3, r5, #1	@ tmp372, SegPacketLen,
	cmp	r3, #2	@ tmp372,
	bhi	.L611	@,
	ldr	r2, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r2, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L643	@,
.L607:
	ldr	r3, [fp, #-48]	@ prephitmp.2842, ScdSegNum
	mov	r2, r6	@ ivtmp.2724, ivtmp.2736
	ldr	sl, [fp, #-268]	@ i.2782, %sfp
	b	.L599	@
.L611:
	cmp	r5, #0	@ SegPacketLen,
	beq	.L607	@,
	ldr	r9, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r9, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L644	@,
.L612:
	ldr	r5, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r9, [fp, #-328]	@, %sfp
	ldr	r1, [fp, #-284]	@, %sfp
	add	r3, r9, r5	@ tmp411,, SmStateReg.ScdRollAddr
	ldr	r9, [fp, #-280]	@, %sfp
	rsb	lr, r8, r3	@ tmp413, CurrSegPhyAddr, tmp411
	ldr	r0, [fp, #-276]	@, %sfp
	ldr	r2, [r4, r1]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	sub	r1, fp, #64	@,,
	ldr	r5, [r4, r9]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, lr	@ tmp414, prephitmp.2760, tmp413
	rsb	r3, r2, r8	@ tmp407, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	add	r3, r5, r3	@ tmp410, <variable>.StreamSegArray.pSegBufVirAddr, tmp407
	mov	lr, #0	@,
	str	r3, [fp, #-172]	@ tmp410, SegPacket.VirAddr
	str	ip, [fp, #-160]	@ tmp414, SegPacket.LenInByte
	strb	lr, [fp, #-167]	@, SegPacket.IsLastSeg
	str	r8, [fp, #-164]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r3, [fp, #-160]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, #3	@ SegPacket.LenInByte,
	ble	.L607	@,
	ldr	r0, [fp, #-276]	@, %sfp
	cmp	r0, #0	@,
	beq	.L613	@,
	ldr	r2, [fp, #-304]	@, %sfp
	movw	r3, #:lower16:166092	@,
	movt	r3, #:upper16:166092	@,
	ldr	ip, [r4, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	ldr	lr, [r4, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r3, lr, ip	@, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	str	r3, [fp, #-300]	@, %sfp
	addmi	r3, r3, #1152	@,,
	strmi	r3, [fp, #-300]	@, %sfp
.L614:
	ldr	lr, [fp, #-164]	@ D.41924, SegPacket.PhyAddr
	ldr	r1, [fp, #-300]	@, %sfp
	cmp	lr, #0	@ D.41924,
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.2791, SegFreeBufLen
	rsb	r5, r1, #1152	@,,
	str	r5, [fp, #-300]	@, %sfp
	bne	.L645	@,
.L615:
	ldr	r6, [fp, #-300]	@, %sfp
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	cmp	r6, #1	@,
	ldrle	r3, [fp, #-160]	@ prephitmp.2705, SegPacket.LenInByte
	ble	.L616	@,
	movw	r2, #3407	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-320]	@, %sfp
	mov	r2, #3408	@,
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC119	@,
	str	lr, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	mov	r0, #1	@,
	movw	r2, #3409	@,
.L632:
	ldr	lr, [fp, #-240]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r6, r0	@ ScdErrFlag,
	ldr	r3, [fp, #-244]	@, LastSegPacket.PhyAddr
	str	ip, [sp, #4]	@ LastSegPacket.IsLastSeg,
	str	lr, [sp, #0]	@ LastSegPacket.LenInByte,
	bl	dprint_vfmw	@
	b	.L606	@
.L640:
	ldr	r5, [fp, #-172]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r5, #0	@ SegPacket.VirAddr,
	beq	.L609	@,
	ldr	lr, [fp, #-160]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r2, lr	@ SegFreeBufLen.2755, SegPacket.LenInByte
	blt	.L609	@,
	ldr	r8, [fp, #-260]	@, %sfp
	mov	r3, r7	@, tmp497
	ldr	r2, [fp, #-288]	@, %sfp
	add	r5, r8, #92	@ tmp345,,
	ldr	r0, [fp, #-296]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp348, <variable>.TransFormSeg
	bic	r1, ip, #-2147483648	@, tmp348,
	bl	GetSegPts	@
	ldr	r0, [fp, #-276]	@, %sfp
	mov	r1, r7	@, tmp497
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L646	@,
	ldr	sl, [r4, r5, asl #2]	@ tmp359, <variable>.TransFormSeg
	movw	r1, #:lower16:.LC121	@,
	ldrd	r8, [fp, #-148]	@ SegPacket.Pts,,
	mov	r0, #26	@,
	bic	r2, sl, #-2147483648	@, tmp359,
	movt	r1, #:upper16:.LC121	@,
	strd	r8, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
.L618:
	ldrb	sl, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC117	@,
	ldr	r2, [fp, #-164]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC117	@,
	ldr	r3, [fp, #-160]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	str	sl, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L607	@
.L638:
	ldr	ip, [fp, #-240]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	sub	r2, fp, #60	@,,
	ldr	r0, [fp, #-276]	@, %sfp
	sub	r1, fp, #64	@,,
	add	r3, ip, r5	@ tmp302, LastSegPacket.LenInByte, SegPacketLen
	str	r3, [fp, #-240]	@ tmp302, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r5, [fp, #-244]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.584, SegFreeBufLen
	cmp	r5, #0	@ LastSegPacket.PhyAddr,
	bne	.L647	@,
.L604:
	movw	r2, #3265	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	r9, [fp, #-320]	@, %sfp
	movw	r2, #3266	@,
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC119	@,
	str	r9, [sp, #0]	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC120	@,
	mov	r0, #1	@,
	ldrb	ip, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movt	r1, #:upper16:.LC120	@,
	movw	r2, #3267	@,
	b	.L632	@
.L647:
	ldr	r0, [fp, #-252]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r0, #0	@ LastSegPacket.VirAddr,
	beq	.L604	@,
	ldr	r1, [fp, #-240]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r2, r1	@ SegFreeBufLen.584, LastSegPacket.LenInByte
	blt	.L604	@,
	sub	r1, fp, #252	@,,
	ldr	r0, [fp, #-276]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r5, r0	@ Ret.2738,
	sub	r0, fp, #252	@,,
	bl	__memzero	@
	cmp	r5, #0	@ Ret.2738,
	bne	.L648	@,
	ldr	r8, [fp, #-260]	@, %sfp
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	add	r9, r8, #92	@ tmp313,,
	ldr	r2, [r4, r9, asl #2]	@ tmp316, <variable>.TransFormSeg
	ldrd	r8, [fp, #-228]	@ LastSegPacket.Pts,,
	bic	r2, r2, #-2147483648	@, tmp316,
	strd	r8, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	sl, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC117	@,
	ldr	r2, [fp, #-244]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC117	@,
	ldr	r3, [fp, #-240]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	str	sl, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L607	@
.L639:
	ldr	r0, [fp, #-292]	@, %sfp
	mov	r1, r7	@, tmp497
	mov	r2, sl	@, i.2782
	ldr	r3, [fp, #-256]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L608	@
.L635:
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-256]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L586	@
.L637:
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	mov	r6, #0	@ ScdErrFlag,
	b	.L606	@
.L645:
	ldr	r3, [fp, #-172]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L615	@,
	ldr	r3, [fp, #-160]	@ prephitmp.2705, SegPacket.LenInByte
	cmp	r2, r3	@ SegFreeBufLen.2791, prephitmp.2705
	blt	.L615	@,
	ldr	r8, [fp, #-300]	@, %sfp
	cmp	r8, #1	@,
	ble	.L631	@,
	ldr	r9, [fp, #-260]	@, %sfp
	mov	r3, r7	@, tmp497
	ldr	r1, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	r5, r9, #92	@ tmp428,,
	ldr	r2, [fp, #-288]	@, %sfp
	rsb	r1, lr, r1	@ tmp427, D.41924, SmStateReg.ScdRollAddr
	ldr	r0, [fp, #-296]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp431, <variable>.TransFormSeg
	str	r1, [fp, #-160]	@ tmp427, SegPacket.LenInByte
	bic	r1, ip, #-2147483648	@, tmp431,
	bl	GetSegPts	@
	ldr	r0, [fp, #-276]	@, %sfp
	mov	r1, r7	@, tmp497
	bl	InsertStreamSeg	@
	cmp	r0, #0	@
	str	r0, [fp, #-260]	@, %sfp
	bne	.L649	@,
	ldr	r8, [r4, r5, asl #2]	@ tmp440, <variable>.TransFormSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bic	r2, r8, #-2147483648	@, tmp440,
	ldrd	r8, [fp, #-148]	@,,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r2, [fp, #-164]	@, SegPacket.PhyAddr
	movw	r1, #:lower16:.LC117	@,
	ldr	r3, [fp, #-160]	@, SegPacket.LenInByte
	movt	r1, #:upper16:.LC117	@,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-284]	@, %sfp
	ldr	lr, [fp, #-280]	@, %sfp
	ldr	r2, [fp, #-52]	@ SegBufAddr.2811, SegBufAddr
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r7	@, tmp497
	ldr	ip, [r4, lr]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	ldr	r8, [fp, #-328]	@, %sfp
	rsb	lr, r3, r2	@ tmp449, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.2811
	ldr	r0, [fp, #-276]	@, %sfp
	rsb	r9, r2, r8	@ tmp453, SegBufAddr.2811,
	str	r2, [fp, #-164]	@ SegBufAddr.2811, SegPacket.PhyAddr
	str	r9, [fp, #-160]	@ tmp453, SegPacket.LenInByte
	add	r9, ip, lr	@ tmp452, <variable>.StreamSegArray.pSegBufVirAddr, tmp449
	str	r9, [fp, #-172]	@ tmp452, SegPacket.VirAddr
	mov	r9, #1	@,
	strb	r9, [fp, #-167]	@, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L618	@,
	ldrb	lr, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC115	@,
	ldr	r2, [fp, #-164]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC115	@,
	ldr	r3, [fp, #-160]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r6, [fp, #-260]	@ Ret.2796, %sfp
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	str	lr, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L606	@
.L593:
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-256]	@, %sfp
	rsb	r0, r1, r0	@,,
	bl	__aeabi_uidiv	@
	sub	r3, r0, #1	@ prephitmp.2703,,
	str	r3, [fp, #-48]	@ prephitmp.2703, ScdSegNum
	cmp	r3, #0	@ prephitmp.2703,
	strlt	r5, [fp, #-48]	@ Ret, ScdSegNum
	ldr	r9, [r4, #12]	@ <variable>.SegFilter.pScdUpMsg, <variable>.SegFilter.pScdUpMsg
	ldrge	r2, [fp, #-256]	@, %sfp
	movlt	r1, #4	@ prephitmp.2710,
	movlt	r3, r5	@ prephitmp.2703, Ret
	mulge	r1, r2, r3	@ tmp282,, prephitmp.2703
	addge	r1, r1, #1	@ tmp283, tmp282,
	movge	r1, r1, asl #2	@ prephitmp.2710, tmp283,
	ldr	sl, [r9, r1]	@ tmp286,* prephitmp.2710
	bic	r1, sl, #-2147483648	@, tmp286,
	str	r1, [fp, #-320]	@, %sfp
	b	.L594	@
.L642:
	mov	r2, r8	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-296]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L624	@
.L644:
	ldr	r0, [fp, #-292]	@, %sfp
	mov	r1, r7	@, tmp497
	mov	r2, sl	@, i.2782
	ldr	r3, [fp, #-256]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [fp, #-52]	@ prephitmp.2760, SegBufAddr
	b	.L612	@
.L646:
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	mov	r0, #26	@,
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC115	@,
.L633:
	movt	r1, #:upper16:.LC115	@,
	ldr	r2, [fp, #-164]	@, SegPacket.PhyAddr
	ldr	r3, [fp, #-160]	@, SegPacket.LenInByte
	mov	r6, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L606	@
.L597:
	mov	r1, r8	@, D.40429
	mov	r0, r4	@, pScdInstance
	mov	r2, r6	@, pStreamSegArray
	bl	GetNextVop	@
	str	r0, [fp, #-308]	@, %sfp
	str	r0, [fp, #-48]	@, ScdSegNum
	b	.L598	@
.L613:
	movw	r1, #:lower16:.LC124	@,
	ldr	r2, .L650	@,
	movt	r1, #:upper16:.LC124	@,
	movw	r3, #3364	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L614	@
.L648:
	ldrb	lr, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC115	@,
	ldr	r2, [fp, #-244]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC115	@,
	ldr	r3, [fp, #-240]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	mov	r6, #0	@ ScdErrFlag,
	str	lr, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L606	@
.L641:
	ldr	r0, [fp, #-256]	@, %sfp
	mul	r2, r0, sl	@ tmp475,, i.2782
	ldr	r0, [fp, #-296]	@, %sfp
	add	lr, r2, #41472	@ tmp476, tmp475,
	add	ip, lr, #93	@ tmp476, tmp476,
	ldr	r1, [r4, ip, asl #2]	@ tmp479, <variable>.TransFormSeg
	bic	r1, r1, #-2147483648	@, tmp479,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L624	@,
	b	.L581	@
.L643:
	ldr	r0, [fp, #-328]	@, %sfp
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.40566
	beq	.L581	@,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ tmp375,* D.40566
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp378,
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp374,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp381,
	orr	r3, r2, lr, asl #24	@, tmp377, tmp374, tmp375,
	orr	ip, r3, r1, asl #16	@, tmp380, tmp377, tmp378,
	orr	lr, ip, r0, asl #8	@, tmp383, tmp380, tmp381,
	bic	r1, lr, #255	@ tmp384, tmp383,
	cmp	r1, #256	@ tmp384,
	beq	.L607	@,
	mov	r2, sl	@, i.2782
	ldr	r3, [fp, #-256]	@, %sfp
	sub	r1, fp, #252	@,,
	ldr	r0, [fp, #-292]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r2, [fp, #-284]	@, %sfp
	ldr	r0, [fp, #-280]	@, %sfp
	mov	lr, #1	@,
	ldr	r1, [r4, r2]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	sub	r2, fp, #60	@,,
	ldr	ip, [r4, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, r1, r8	@ tmp390, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [fp, #-276]	@, %sfp
	sub	r1, fp, #64	@,,
	add	sl, ip, r3	@ tmp393, <variable>.StreamSegArray.pSegBufVirAddr, tmp390
	str	r5, [fp, #-240]	@ SegPacketLen, LastSegPacket.LenInByte
	str	sl, [fp, #-252]	@ tmp393, LastSegPacket.VirAddr
	strb	lr, [fp, #-247]	@, LastSegPacket.IsLastSeg
	str	r8, [fp, #-244]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	add	r3, r9, #41472	@ tmp396, D.40496,
	ldr	r0, [fp, #-296]	@, %sfp
	add	ip, r3, #92	@ tmp396, tmp396,
	ldr	r2, [fp, #-288]	@, %sfp
	sub	r3, fp, #252	@,,
	ldr	sl, [r4, ip, asl #2]	@ tmp399, <variable>.TransFormSeg
	bic	r1, sl, #-2147483648	@, tmp399,
	bl	GetSegPts	@
	b	.L607	@
.L636:
	movw	r3, #:lower16:180096	@ tmp241,
	movw	r1, #:lower16:180100	@ tmp242,
	movt	r3, #:upper16:180096	@ tmp241,
	movt	r1, #:upper16:180100	@ tmp242,
	ldr	r2, [r4, r3]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	ip, [r4, r1]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	r2, ip	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	strleb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movgt	ip, #1	@ tmp245,
	strgtb	ip, [r4, #0]	@ tmp245, <variable>.SegFullFlag
	cmp	sl, #0	@ ScdSegNum.2730,
	bne	.L590	@,
	movw	r5, #:lower16:166140	@ tmp249,
	movt	r5, #:upper16:166140	@ tmp249,
	ldr	r1, [r4, r5]	@ SrcEaten.2731, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten.2731,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten.2731,
	bgt	.L592	@,
.L591:
	mov	r1, #0	@ SrcEaten,
.L592:
	ldr	r0, [fp, #-296]	@, %sfp
	bl	DeleteRawLen	@
	subs	r5, r0, #0	@ Ret,
	bne	.L581	@,
	b	.L583	@
.L590:
	cmp	sl, #1	@ ScdSegNum.2730,
	bne	.L591	@,
	movw	r1, #:lower16:166108	@ tmp251,
	movt	r1, #:upper16:166108	@ tmp251,
	movw	ip, #:lower16:166260	@ tmp250,
	movt	ip, #:upper16:166260	@ tmp250,
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	mov	lr, #3	@ tmp254,
	ldr	r1, [r4, ip]	@ SrcEaten, <variable>.TransFormSeg
	movw	r5, #:lower16:166140	@ tmp259,
	movt	r5, #:upper16:166140	@ tmp259,
	mul	ip, lr, r3	@ tmp252, tmp254, <variable>.StreamSegArray.SegBufSize
	ldr	r2, [r4, r5]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	rsb	lr, r1, r2	@ tmp260, SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	cmp	ip, #0	@ tmp252,
	add	r0, ip, #3	@ tmp257, tmp252,
	movlt	ip, r0	@ tmp256, tmp257
	cmp	lr, ip, asr #2	@ tmp260, tmp256,
	ble	.L592	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	b	.L592	@
.L649:
	ldr	r5, [fp, #-312]	@ Ret, %sfp
	mov	r0, #26	@,
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC115	@,
	b	.L633	@
.L631:
	ldr	r5, [fp, #-312]	@ Ret, %sfp
.L616:
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r2, lr	@, D.41924
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	mov	r6, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L606	@
.L651:
	.align	2
.L650:
	.word	.LANCHOR1+116
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1405:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp167,
	movt	r2, #:upper16:.LANCHOR0	@ tmp167,
	mov	r5, r1	@ pStreamSeg, pStreamSeg
	add	r3, r2, r0, asl #2	@, tmp171, tmp167, SmID,
	ldr	r4, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	bne	.L675	@,
.L653:
	mvn	r0, #0	@ D.39514,
.L659:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L675:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L653	@,
	movw	ip, #:lower16:73900	@ tmp173,
	movw	r1, #:lower16:73896	@ tmp174,
	movt	ip, #:upper16:73900	@ tmp173,
	movt	r1, #:upper16:73896	@ tmp174,
	ldr	r0, [r4, ip]	@ D.39521, <variable>.RawPacketArray.Tail
	ldr	r3, [r4, r1]	@, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ D.39521,
	str	r3, [fp, #-48]	@, %sfp
	beq	.L654	@,
	mov	r1, r3, asl #3	@ tmp411,,
	mov	r6, #1	@ rawnum,
	add	r8, r1, r3	@ tmp178, tmp411, index
	mov	r9, r5	@ pStreamSeg, pStreamSeg
	add	r7, r4, r8, asl #3	@, tmp180, pSmInstArray, tmp178,
	ldr	r8, [r7, #176]	@ TotalSrcLength, <variable>.Length
	b	.L655	@
.L656:
	mov	r2, r2, lsr #22	@ index, index,
	cmp	r0, ip	@ D.39521, index
	add	r3, r2, #1	@ D.39529, index,
	add	r6, r6, #1	@ rawnum, rawnum,
	add	ip, r2, r2, asl #3	@, tmp432, index, index,
	ldr	r1, [r7, #176]	@ D.39531, <variable>.Length
	mov	r3, r3, asl #22	@ index, D.39529,
	beq	.L654	@,
	movw	r5, #1025	@,
	cmp	r6, r5	@ rawnum,
	add	ip, r4, ip, asl #3	@, tmp434, pSmInstArray, tmp432,
	mov	r3, r3, lsr #22	@ index, index,
	add	r8, r8, r1	@ TotalSrcLength, TotalSrcLength, D.39531
	mov	r5, r6	@ tmp420, rawnum
	beq	.L654	@,
	ldrb	sl, [r7, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r1, r3, asl #3	@ tmp410, index,
	add	r7, r1, r3	@ tmp445, tmp410, index
	cmp	sl, #0	@ <variable>.is_not_last_packet_flag,
	add	r7, r4, r7, asl #3	@, tmp447, pSmInstArray, tmp445,
	beq	.L674	@,
	cmp	r0, r2	@ D.39521, index
	add	r6, r6, #1	@ rawnum, rawnum,
	ldr	r2, [ip, #176]	@ D.39531, <variable>.Length
	beq	.L654	@,
	ldrb	ip, [ip, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r8, r8, r2	@ TotalSrcLength, TotalSrcLength, D.39531
	cmp	ip, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L674	@,
	cmp	r0, r3	@ D.39521, index
	add	r6, r5, #2	@ rawnum, tmp420,
	ldr	r2, [r7, #176]	@ D.39531, <variable>.Length
	beq	.L654	@,
	add	r8, r8, r2	@ TotalSrcLength, TotalSrcLength, D.39531
.L655:
	add	r2, r1, r3	@ tmp423, tmp410, index
	add	r7, r3, #1	@ D.39529, index,
	mov	ip, r7, asl #22	@ index, D.39529,
	add	r7, r4, r2, asl #3	@, tmp425, pSmInstArray, tmp423,
	mov	ip, ip, lsr #22	@ index, index,
	ldrb	r3, [r7, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r2, ip, #1	@ D.39529, index,
	add	r1, ip, ip, asl #3	@, tmp186, index, index,
	cmp	r3, #0	@ <variable>.is_not_last_packet_flag,
	mov	r2, r2, asl #22	@ index, D.39529,
	add	r7, r4, r1, asl #3	@, tmp188, pSmInstArray, tmp186,
	bne	.L656	@,
.L674:
	add	ip, r4, #73728	@, pSmInstArray,
	add	r2, r4, #168	@, pSmInstArray,
	add	lr, ip, #192	@,,
	str	r2, [fp, #-64]	@, %sfp
	str	lr, [fp, #-52]	@, %sfp
	movw	r7, #:lower16:73920	@ tmp199,
	mov	r0, lr	@,
	mov	r5, r9	@ pStreamSeg, pStreamSeg
	bl	ResetStreamSegArray	@
	movw	r3, #:lower16:166108	@ tmp200,
	movt	r3, #:upper16:166108	@ tmp200,
	movt	r7, #:upper16:73920	@ tmp199,
	ldr	r1, [r4, r3]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, r1, #262144	@ tmp201, <variable>.StreamSegArray.SegBufSize,
	cmp	r0, r8	@ tmp201, TotalSrcLength
	blt	.L676	@,
	ldr	r3, [r4, #56]	@ prephitmp.2862, <variable>.Config.VidStd
	movw	r0, #:lower16:166104	@ tmp206,
	movt	r0, #:upper16:166104	@ tmp206,
	ldr	sl, [r4, r7]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	cmp	r3, #10	@ prephitmp.2862,
	cmpne	r3, #12	@, prephitmp.2862,
	ldr	ip, [r4, r0]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L660	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp408,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp408,
	ldr	r2, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	lr, r2, #1	@ tmp216, g_VdmCharacter,
	streqb	lr, [sl], #1	@ tmp216,
	ldr	r7, [fp, #-48]	@, %sfp
	mov	r2, #72	@ tmp222,
	ldreq	r3, [r4, #56]	@ prephitmp.2862, <variable>.Config.VidStd
	mla	r1, r2, r7, r4	@ tmp223, tmp222,, pSmInstArray
	cmp	r3, #12	@ prephitmp.2862,
	movw	r3, #:lower16:73896	@ tmp230,
	movt	r3, #:upper16:73896	@ tmp230,
	ldr	r7, [r4, r3]	@ index.2889, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #172]	@, <variable>.VirAddr
	str	r1, [fp, #-88]	@, %sfp
	bne	.L662	@,
	ldr	r0, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L662	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L663	@,
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@,,
	str	r1, [fp, #-88]	@, %sfp
.L662:
	str	ip, [r5, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, ip	@, TmpPhyAddr
	str	r3, [fp, #-80]	@,
	bl	MEM_Phy2Vir	@
	mov	ip, #72	@ tmp294,
	cmp	r6, #0	@ rawnum,
	str	r0, [r5, #0]	@ D.39590, <variable>.VirAddr
	rsb	r1, r0, sl	@ tmp291, D.39590, TmpVirAddr
	ldr	r3, [fp, #-48]	@, %sfp
	str	r1, [r5, #12]	@ tmp291, <variable>.LenInByte
	mla	ip, ip, r3, r4	@ tmp295, tmp294,, pSmInstArray
	ldrd	r0, [ip, #184]	@, tmp295,
	strd	r0, [r5, #24]	@, pStreamSeg,
	ldrd	r2, [ip, #184]	@, tmp295,
	strd	r2, [r5, #32]	@, pStreamSeg,
	mov	r3, #1	@ tmp310,
	ldrd	r0, [ip, #200]	@, tmp295,
	strb	r3, [r5, #5]	@ tmp310, <variable>.IsLastSeg
	strd	r0, [r5, #40]	@, pStreamSeg,
	ldr	r3, [fp, #-80]	@,
	beq	.L665	@,
	ldr	r1, [fp, #-88]	@, %sfp
	cmp	r1, #0	@,
	cmpne	sl, #0	@, TmpVirAddr,
	beq	.L654	@,
	mov	lr, #0	@,
	add	r2, ip, #224	@ tmp417, tmp295,
	str	lr, [fp, #-48]	@, %sfp
	mov	lr, r7, asl #3	@ tmp409, index.2889,
	add	r0, ip, #208	@, tmp295,
	add	r9, ip, #232	@ tmp418, tmp295,
	str	r0, [fp, #-56]	@, %sfp
	mov	ip, lr	@ tmp409, tmp409
	str	r8, [fp, #-68]	@ TotalSrcLength, %sfp
	mov	r0, r3	@ SrcLength, SrcLength
	mov	r8, r4	@ pSmInstArray, pSmInstArray
	str	r6, [fp, #-60]	@ rawnum, %sfp
	mov	r4, r2	@ tmp417, tmp417
	b	.L666	@
.L667:
	adds	sl, sl, r6	@ TmpVirAddr, TmpVirAddr, SrcLength.509
	moveq	r3, #0	@, tmp320
	movne	r3, #1	@, tmp320
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r3, #0	@, tmp325
	andne	r3, r3, #1	@,, tmp325, tmp320
	cmp	r3, #0	@ tmp325,
	beq	.L654	@,
.L666:
	mov	r6, r0	@ SrcLength.509, SrcLength
	mov	r0, sl	@, TmpVirAddr
	mov	r2, r6	@, SrcLength.509
	str	ip, [fp, #-80]	@,
	bl	memcpy	@
	ldr	ip, [fp, #-80]	@,
	ldr	r3, [fp, #-48]	@, %sfp
	add	r1, r7, #1	@ temp.2908, index.2889,
	add	r0, ip, r7	@ tmp333, tmp409, index.2889
	ldr	ip, [fp, #-60]	@, %sfp
	mov	r7, r1, asl #22	@ index.2889, temp.2908,
	add	r1, r3, #1	@,,
	add	r3, r8, r0, asl #3	@, tmp335, pSmInstArray, tmp333,
	ldr	r2, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@,
	str	r1, [fp, #-48]	@, %sfp
	ldrb	r1, [r3, #221]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	add	r0, r2, r6	@ tmp340, <variable>.LenInByte, SrcLength.509
	str	r0, [r5, #12]	@ tmp340, <variable>.LenInByte
	mov	r7, r7, lsr #22	@ index.2889, index.2889,
	strb	r1, [r5, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	mov	ip, r7, asl #3	@ tmp409, index.2889,
	ldr	r1, [fp, #-56]	@, %sfp
	add	r2, ip, r7	@ tmp345, tmp409, index.2889
	add	r3, r8, r2, asl #3	@, tmp347, pSmInstArray, tmp345,
	ldrd	r0, [r1]	@, <variable>.DispTime
	strd	r0, [fp, #-76]	@,,
	ldr	r0, [r3, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r3, #172]	@ SrcVirAddr, <variable>.VirAddr
	ldrd	r2, [fp, #-76]	@,,
	strd	r2, [r5, #48]	@, pStreamSeg,
	ldr	r2, [r4, #0]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r5, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [r4, #4]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r5, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r9, #0]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r2, [r5, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r9, #4]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r5, #68]	@ <variable>.GopNum, <variable>.GopNum
	bhi	.L667	@,
	ldr	r8, [fp, #-68]	@ TotalSrcLength, %sfp
.L665:
	mov	r1, r5	@, pStreamSeg
	ldr	r0, [fp, #-52]	@, %sfp
	bl	InsertStreamSeg	@
	ldr	r0, [fp, #-64]	@, %sfp
	mov	r1, r8	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.39514,
	b	.L659	@
.L654:
	mvn	r0, #3	@ D.39514,
	b	.L659	@
.L660:
	ldr	r0, [fp, #-48]	@, %sfp
	mov	r7, #72	@ tmp399,
	movw	r3, #:lower16:73896	@ tmp407,
	movt	r3, #:upper16:73896	@ tmp407,
	mla	r2, r7, r0, r4	@ tmp400, tmp399,, pSmInstArray
	ldr	r7, [r4, r3]	@ index.2889, <variable>.RawPacketArray.Head
	ldr	lr, [r2, #172]	@, <variable>.VirAddr
	ldr	r3, [r2, #176]	@ SrcLength, <variable>.Length
	str	lr, [fp, #-88]	@, %sfp
	b	.L662	@
.L676:
	mov	r2, r8	@, TotalSrcLength
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-64]	@, %sfp
	mov	r1, r8	@, TotalSrcLength
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.39543
	beq	.L659	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC106	@,
	movw	r2, #1852	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39514,
	b	.L659	@
.L663:
	cmp	r6, #1	@ rawnum,
	beq	.L654	@,
	add	r1, r7, #1	@ temp.2894, index.2889,
	mov	r7, r1, asl #22	@ index.2889, temp.2894,
	mov	r7, r7, lsr #22	@ index.2889, index.2889,
	mla	r0, r2, r7, r4	@ tmp238, tmp222, index.2889, pSmInstArray
	ldr	lr, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r1, [r0, #172]	@ SrcVirAddr.2897, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2896, SrcLength, <variable>.Length
	cmp	r3, #2	@ SrcLength.2896,
	ble	.L664	@,
	add	r0, r7, #1020	@ tmp246, index.2889,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2896,
	add	lr, r0, #3	@ tmp246, tmp246,
	sub	r6, r6, #1	@ rawnum, rawnum,
	mov	r0, lr, asl #22	@ tmp248, tmp246,
	mov	lr, r0, lsr #22	@ tmp248, tmp248,
	mla	r2, r2, lr, r4	@ tmp253, tmp222, tmp248, pSmInstArray
	ldr	r0, [r2, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r0, #3	@ tmp255, <variable>.Length,
	add	r2, r1, lr	@, SrcVirAddr.2897, tmp255
	str	r2, [fp, #-88]	@, %sfp
	b	.L662	@
.L664:
	cmp	r6, #2	@ rawnum,
	beq	.L654	@,
	add	r7, r7, #1	@ temp.2898, index.2889,
	mov	r9, r7, asl #22	@ index.2889, temp.2898,
	mov	r7, r9, lsr #22	@ index.2889, index.2889,
	mla	r1, r2, r7, r4	@ tmp261, tmp222, index.2889, pSmInstArray
	ldr	lr, [r1, #176]	@ <variable>.Length, <variable>.Length
	ldr	r9, [r1, #172]	@ SrcVirAddr.2901, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2900, SrcLength.2896, <variable>.Length
	cmp	r3, #2	@ SrcLength.2900,
	ble	.L654	@,
	add	lr, r7, #1020	@ tmp269, index.2889,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2900,
	add	r0, lr, #3	@ tmp269, tmp269,
	add	lr, lr, #2	@ tmp280, tmp280,
	sub	r6, r6, #2	@ rawnum, rawnum,
	mov	r0, r0, asl #22	@ tmp271, tmp269,
	mov	r1, lr, asl #22	@ tmp282, tmp280,
	mov	lr, r0, lsr #22	@ tmp271, tmp271,
	mov	r1, r1, lsr #22	@ tmp282, tmp282,
	mla	r0, r2, lr, r4	@ tmp276, tmp222, tmp271, pSmInstArray
	mla	lr, r2, r1, r4	@ tmp287, tmp222, tmp282, pSmInstArray
	ldr	r1, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r2, [lr, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r1, #3	@ tmp278, <variable>.Length,
	rsb	r0, r2, lr	@ tmp289, <variable>.Length, tmp278
	add	r2, r9, r0	@, SrcVirAddr.2901, tmp289
	str	r2, [fp, #-88]	@, %sfp
	b	.L662	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadStreamSeg
	.type	SM_ReadStreamSeg, %function
SM_ReadStreamSeg:
	.fnstart
.LFB1407:
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
	mov	r7, r0	@ SmID, SmID
	movw	r0, #:lower16:.LANCHOR0	@ tmp179,
	movt	r0, #:upper16:.LANCHOR0	@ tmp179,
	add	r3, r0, r7, asl #2	@, tmp144, tmp179, SmID,
	subs	r6, r1, #0	@ pStreamSeg, pStreamSeg
	ldr	r5, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L685	@,
.L678:
	mvn	r4, #0	@ ret,
.L683:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L685:
	cmp	r5, #0	@ pSmInstArray,
	beq	.L678	@,
	ldr	r3, [r5, #56]	@ D.39714, <variable>.Config.VidStd
	sub	r2, r3, #8	@ tmp146, D.39714,
	cmp	r3, #5	@ D.39714,
	cmpne	r2, #1	@, tmp146,
	bls	.L679	@,
	cmp	r3, #4	@ D.39714,
	beq	.L679	@,
	cmp	r3, #10	@ D.39714,
	beq	.L679	@,
	cmp	r3, #14	@ D.39714,
	beq	.L679	@,
	cmp	r3, #11	@ D.39714,
	beq	.L679	@,
	cmp	r3, #12	@ D.39714,
	beq	.L679	@,
	cmp	r3, #13	@ D.39714,
	beq	.L679	@,
	cmp	r3, #1	@ D.39714,
	bne	.L680	@,
	ldr	r1, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L680	@,
.L679:
	mov	r0, r7	@, SmID
	mov	r1, r6	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L686	@,
.L680:
	add	r4, r5, #73728	@, pSmInstArray,
	ldr	r0, .L689	@,
	bl	OSAL_LockIRQ	@
	add	r0, r4, #192	@,,
	mov	r1, r6	@, pStreamSeg
	bl	GetStreamSeg	@
	mov	r4, r0	@ ret,
	ldr	r0, .L689	@,
	bl	OSAL_UnLockIRQ	@
	cmp	r4, #0	@ ret,
	beq	.L687	@,
.L681:
	movw	r1, #:lower16:180116	@ tmp172,
	movt	r1, #:upper16:180116	@ tmp172,
	ldr	r2, [r5, r1]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, r2, #1	@ tmp175, <variable>.numReadSegFail,
	str	r0, [r5, r1]	@ tmp175, <variable>.numReadSegFail
	b	.L683	@
.L687:
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp162,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp162,
	ldr	ip, [r8, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	ip, #0	@ vfmw_save_seg_file,
	beq	.L682	@,
	movw	r3, #:lower16:save_seg_chan_num	@ tmp164,
	movt	r3, #:upper16:save_seg_chan_num	@ tmp164,
	ldr	lr, [r3, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, lr	@ SmID, save_seg_chan_num
	beq	.L688	@,
.L682:
	movw	lr, #:lower16:180116	@ tmp177,
	movt	lr, #:upper16:180116	@ tmp177,
	mov	ip, #0	@ tmp178,
	str	ip, [r5, lr]	@ tmp178, <variable>.numReadSegFail
	b	.L683	@
.L688:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, [r6, #12]	@, <variable>.LenInByte
	ldr	r2, [r8, #0]	@, vfmw_save_seg_file
	ldr	r0, [r6, #0]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L682	@
.L686:
	movw	r1, #:lower16:.LC128	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC128	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L681	@
.L690:
	.align	2
.L689:
	.word	.LANCHOR0+796
	.fnend
	.size	SM_ReadStreamSeg, .-SM_ReadStreamSeg
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.38554,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r2, #:lower16:73744	@ tmp145,
	movt	r2, #:upper16:73744	@ tmp145,
	movw	r0, #:lower16:73732	@ tmp154,
	movt	r0, #:upper16:73732	@ tmp154,
	ldr	ip, [r3, r2]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	ldr	r5, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	add	r0, ip, #1	@ tmp146, <variable>.CurShowIndex,
	mov	ip, r0, asr #31	@ tmp148, tmp146,
	mov	ip, ip, lsr #22	@ tmp149, tmp148,
	add	r0, r0, ip	@ tmp150, tmp146, tmp149
	mov	r0, r0, asl #22	@ tmp151, tmp150,
	mov	r0, r0, lsr #22	@ tmp151, tmp151,
	rsb	r0, ip, r0	@ tmp153, tmp149, tmp151
	cmp	r5, r0	@ <variable>.Tail, tmp153
	mvneq	r0, #2	@ D.38554,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	lr, r0, r0, asl #3	@, tmp159, tmp153, tmp153,
	str	r0, [r3, r2]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r3, lr, asl #3	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.38554, tmp144
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
.LFB1368:
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
	mvneq	r0, #0	@ D.38535,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:73732	@ tmp146,
	movt	r2, #:upper16:73732	@ tmp146,
	mov	r0, #73728	@ tmp145,
	ldr	ip, [r3, r0]	@ D.38536, <variable>.Head
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ D.38536, <variable>.Tail
	mvneq	r0, #2	@ D.38535,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	add	r2, ip, ip, asl #3	@, tmp151, D.38536, D.38536,
	movw	lr, #:lower16:73744	@ tmp148,
	movt	lr, #:upper16:73744	@ tmp148,
	mov	r0, r1	@, pRawPacket
	add	r1, r3, r2, asl #3	@,, pRawStreamArray, tmp151,
	mov	r2, #72	@,
	str	ip, [r3, lr]	@ D.38536, <variable>.CurShowIndex
	bl	memcpy	@
	mov	r0, r4	@ D.38535, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1414:
	@ args = 8, pretend = 0, frame = 88
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
	sub	r9, fp, #116	@ tmp219,,
	mov	r4, r2	@ pRawStreamArray, pRawStreamArray
	str	r1, [fp, #-120]	@ SegStreamSize, %sfp
	mov	sl, r0	@ pSmPushRaw, pSmPushRaw
	mov	r1, #0	@,
	mov	r0, r9	@, tmp219
	mov	r2, #72	@,
	mov	r6, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r4, #0	@ pRawStreamArray,
	beq	.L702	@,
	movw	r0, #:lower16:73732	@ tmp159,
	movt	r0, #:upper16:73732	@ tmp159,
	mov	r1, #73728	@ tmp158,
	ldr	r2, [r4, r1]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r4, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ <variable>.Head, <variable>.Tail
	beq	.L702	@,
	movw	r7, #:lower16:73740	@ tmp162,
	movt	r7, #:upper16:73740	@ tmp162,
	ldr	r5, [r4, r7]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	r8, r5	@ prephitmp.2998, FirstRawOffset
.L703:
	mov	r1, r9	@, tmp219
	mov	r0, r4	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r0, [fp, #-108]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [fp, #-112]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp169,
	rsb	r7, r5, r0	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r0, [fp, #-120]	@, %sfp
	ldr	r1, [fp, #-116]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r8, r3, r8	@ tmp167, RawPacket.VirAddr, prephitmp.2998
	cmp	r7, r0	@ RawShowTotalLen,
	movgt	ip, #0	@, tmp177
	movle	ip, #1	@, tmp177
	str	r8, [fp, #-112]	@ tmp167, RawPacket.VirAddr
	cmp	ip, r2	@ tmp177,
	add	r5, r1, r5	@ tmp165, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r7	@ RawPacket.Length, RawShowTotalLen
	str	r5, [fp, #-116]	@ tmp165, RawPacket.PhyAddr
	moveq	r8, ip	@ j.3041, tmp177
	str	r2, [r6, #0]	@ tmp169,* pDownMsgVirAddr
	str	r2, [r6, #4]	@ tmp169,
	moveq	r5, r8	@ PushRawNum, j.3041
	str	r2, [r6, #8]	@ tmp169,
	str	r7, [fp, #-108]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [sl, #4]	@ tmp169, <variable>.PushRawTotalLen
	beq	.L705	@,
	mov	r8, r2	@ j.3041, tmp169
	str	r4, [fp, #-128]	@ pRawStreamArray, %sfp
	mov	r2, r7	@ prephitmp.3000, RawShowTotalLen
	mov	r5, r8	@ PushRawNum, j.3041
	b	.L707	@
.L714:
	ldr	r3, [fp, #-108]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	ldr	r2, [fp, #-120]	@, %sfp
	cmp	r5, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp194
	movle	r1, #1	@, tmp194
	add	r7, r7, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	r2, r7	@, RawShowTotalLen
	mov	r2, r3	@ prephitmp.3000, RawPacket.Length
	movlt	r1, #0	@, tmp194,
	cmp	r1, #0	@ tmp194,
	beq	.L705	@,
.L707:
	cmp	r2, #0	@ prephitmp.3000,
	add	ip, r8, #1	@ j, j.3041,
	ldr	r0, [fp, #-128]	@, %sfp
	mov	r1, r9	@, tmp219
	add	r2, ip, #1	@ j.3019, j,
	add	r5, r5, #1	@ PushRawNum, PushRawNum,
	ble	.L706	@,
	ldr	lr, [fp, #-116]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r4, #0	@,
	str	r4, [fp, #-108]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp179, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r6, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r3, r3, #1	@ tmp182, tmp179,
	str	r3, [r6, ip, asl #2]	@ tmp182,* pDownMsgVirAddr
	add	r8, r2, #1	@ j.3041, j.3019,
	ldr	ip, [fp, #4]	@, DownMsgPhyAddr
	add	lr, ip, r8, asl #2	@, tmp184,, j.3041,
	str	lr, [r6, r2, asl #2]	@ tmp184,* pDownMsgVirAddr
.L706:
	str	r7, [sl, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L714	@,
.L705:
	ldr	ip, [fp, #8]	@, LowdlyFlag
	cmp	ip, #0	@,
	bne	.L708	@,
	ldr	r3, [fp, #-108]	@ temp.3024, RawPacket.Length
	cmp	r3, #0	@ temp.3024,
	bne	.L715	@,
.L708:
	cmp	r5, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.40027,
	bne	.L709	@,
.L710:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L715:
	ldr	r4, [fp, #-120]	@, %sfp
	ldr	r2, [sl, #4]	@ D.40012, <variable>.PushRawTotalLen
	sub	lr, r4, #16	@ tmp197,,
	cmp	r4, r7	@, RawShowTotalLen
	cmplt	r2, lr	@, D.40012, tmp197
	bge	.L708	@,
	cmp	r5, #1024	@ PushRawNum,
	bge	.L709	@,
	rsb	r2, r2, r4	@ D.40021, D.40012,
	cmp	r3, r2	@ temp.3024, D.40021
	blt	.L708	@,
	ldr	r0, [fp, #-116]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r4, r8, #1	@ j.3029, j.3041,
	ldr	ip, [fp, #8]	@, LowdlyFlag
	add	r3, r4, #1	@ j.3037, j.3029,
	add	r1, r0, r2	@ tmp205, RawPacket.PhyAddr, D.40021
	add	r5, r5, #1	@ PushRawNum, PushRawNum,
	sub	lr, r1, #1	@ tmp208, tmp205,
	str	ip, [fp, #-108]	@, RawPacket.Length
	str	r0, [r6, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	add	r8, r3, #1	@ j.3041, j.3037,
	str	lr, [r6, r4, asl #2]	@ tmp208,* pDownMsgVirAddr
	ldr	ip, [fp, #4]	@, DownMsgPhyAddr
	add	r1, ip, r8, asl #2	@, tmp210,, j.3041,
	str	r1, [r6, r3, asl #2]	@ tmp210,* pDownMsgVirAddr
	ldr	r0, [sl, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	add	r4, r0, r2	@ tmp213, <variable>.PushRawTotalLen, D.40021
	str	r4, [sl, #4]	@ tmp213, <variable>.PushRawTotalLen
.L709:
	sub	r8, r8, #1	@ tmp215, j.3041,
	ldr	r0, [fp, #4]	@, DownMsgPhyAddr
	mov	r4, #0	@ tmp216,
	mov	r3, #1	@ tmp217,
	str	r4, [r6, r8, asl #2]	@ tmp216,* pDownMsgVirAddr
	mov	r1, r6	@, pDownMsgVirAddr
	mov	r2, r5	@, PushRawNum
	str	r5, [sl, #0]	@ PushRawNum, <variable>.PushRawNum
	str	r3, [sl, #8]	@ tmp217, <variable>.PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r4	@ D.40027, tmp216
	b	.L710	@
.L702:
	mov	r8, #0	@ prephitmp.2998,
	mov	r5, r8	@ FirstRawOffset, prephitmp.2998
	b	.L703	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
.LFB1415:
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
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	mov	r5, r1	@ pSmPushRaw, pSmPushRaw
	mov	r7, r2	@ SegStreamSize, SegStreamSize
	mov	r6, r3	@ pRawStreamArray, pRawStreamArray
	bl	ResetSCD	@
	ldr	ip, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	mov	r0, r5	@, pSmPushRaw
	ldr	lr, [fp, #8]	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r1, r7	@, SegStreamSize
	mov	r2, r6	@, pRawStreamArray
	ldr	r3, [fp, #4]	@, pDownMsgVirAddr
	str	ip, [sp, #4]	@ <variable>.ScdLowdlyEnable,
	str	lr, [sp, #0]	@ DownMsgPhyAddr,
	bl	WriteScdMsg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L717	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L717:
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
.LFB1412:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #172
	sub	sp, sp, #172	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	adds	r6, r0, #168	@ pRawStreamArray, pScdInstance,
	mov	r3, #0	@ tmp149,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r3, [fp, #-56]	@ tmp149, SegBufSize
	ldr	r5, [r0, #56]	@ StdType, <variable>.Config.VidStd
	ldr	r7, [r0, #88]	@ D.39847, <variable>.Config.ScdLowdlyEnable
	bne	.L739	@,
.L720:
	mvn	r5, #0	@ Ret,
.L731:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L739:
	add	r8, r0, #73728	@ pStreamSegArray, pScdInstance,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r8, r3	@ pStreamSegArray,
	beq	.L720	@,
	add	lr, r0, #165888	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, lr, #248	@,,
	str	r3, [fp, #-52]	@ tmp149, FreeSegBufAddr
	str	r3, [fp, #-48]	@ tmp149, SegStreamSize
	movw	r9, #:lower16:73900	@ tmp155,
	bl	__memzero	@
	movt	r9, #:upper16:73900	@ tmp155,
	movw	ip, #:lower16:73896	@ tmp156,
	movt	ip, #:upper16:73896	@ tmp156,
	ldr	sl, [r4, r9]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	mov	r0, #26	@,
	ldr	r1, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	sl, sl, r1	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC129	@,
	addmi	sl, sl, #1024	@ StreamNum, StreamNum,
	movt	r1, #:upper16:.LC129	@,
	mov	r2, sl	@, StreamNum
	bl	dprint_vfmw	@
	movw	r2, #:lower16:73916	@ tmp160,
	movw	r0, #:lower16:73908	@ tmp161,
	movt	r2, #:upper16:73916	@ tmp160,
	movt	r0, #:upper16:73908	@ tmp161,
	ldr	r9, [r4, r2]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	subs	r9, r9, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L720	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC132	@,
	mov	r2, r9	@, RawStreamSize
	movt	r1, #:upper16:.LC132	@,
	bl	dprint_vfmw	@
	cmp	sl, #0	@ StreamNum,
	bgt	.L740	@,
.L723:
	mvn	r5, #4	@ Ret,
	b	.L731	@
.L740:
	cmp	r9, #3	@ RawStreamSize,
	ble	.L723	@,
	movw	r2, #:lower16:166092	@ tmp164,
	movw	r1, #:lower16:166088	@ tmp165,
	movt	r2, #:upper16:166092	@ tmp164,
	movt	r1, #:upper16:166088	@ tmp165,
	ldr	sl, [r4, r2]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	subs	r0, sl, r3	@ StreamNum.3110, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	addmi	r0, r0, #1152	@ StreamNum.3110, StreamNum.3110,
	rsb	sl, r0, #1152	@ StreamNum.534, StreamNum.3110,
	mov	r0, #26	@,
	mov	r2, sl	@, StreamNum.534
	bl	dprint_vfmw	@
	cmp	sl, #288	@ StreamNum.534,
	bgt	.L741	@,
.L725:
	mvn	r5, #5	@ Ret,
	b	.L731	@
.L741:
	mov	r0, r8	@, pStreamSegArray
	sub	r1, fp, #52	@,,
	sub	r2, fp, #48	@,,
	bl	GetFreeSegBuf	@
	ldr	r1, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r2, [fp, #-52]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	ip, r1, #79	@ SegStreamSize.539, SegStreamSize,
	movw	r1, #:lower16:.LC131	@,
	add	r3, r2, #3	@ tmp171, FreeSegBufAddr,
	movt	r1, #:upper16:.LC131	@,
	mov	r2, ip	@, SegStreamSize.539
	bic	r3, r3, #3	@ tmp173, tmp171,
	str	ip, [fp, #-48]	@ SegStreamSize.539, SegStreamSize
	str	r3, [fp, #-52]	@ tmp173, FreeSegBufAddr
	bl	dprint_vfmw	@
	movw	r0, #:lower16:166108	@ tmp176,
	movt	r0, #:upper16:166108	@ tmp176,
	ldr	ip, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r3, [r4, r0]	@ D.39885, <variable>.StreamSegArray.SegBufSize
	cmp	ip, r3, asr #3	@ SegStreamSize, D.39885,
	ble	.L725	@,
	movw	r2, #:lower16:180124	@ tmp183,
	movt	r2, #:upper16:180124	@ tmp183,
	movw	r1, #:lower16:166156	@ tmp191,
	movt	r1, #:upper16:166156	@ tmp191,
	ldr	lr, [r4, r2]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movw	r0, #:lower16:166104	@ tmp179,
	movw	ip, #:lower16:166152	@ tmp189,
	movt	r0, #:upper16:166104	@ tmp179,
	movt	ip, #:upper16:166152	@ tmp189,
	movw	r2, #:lower16:166164	@ tmp193,
	mov	r8, lr, asl #2	@ tmp184, <variable>.UpMsgStepNum,
	movt	r2, #:upper16:166164	@ tmp193,
	mul	lr, lr, sl	@, <variable>.UpMsgStepNum, StreamNum.534
	mul	r8, sl, r8	@ tmp186, StreamNum.534, tmp184
	str	lr, [fp, #-180]	@, %sfp
	ldr	r1, [r4, r1]	@, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	lr, [r4, ip]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	cmp	r5, #6	@ StdType,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	ldr	r0, [r4, r0]	@ D.41968, <variable>.StreamSegArray.SegBufPhyAddr
	cmp	r5, #1	@ StdType,
	cmpne	r5, #15	@, StdType,
	str	ip, [fp, #-192]	@, %sfp
	str	r1, [fp, #-200]	@, %sfp
	add	ip, r0, r3	@, D.41968, D.39885
	ldr	r1, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	moveq	r5, #0	@ prephitmp.3089,
	ldr	r2, [fp, #-52]	@, FreeSegBufAddr
	str	ip, [fp, #-184]	@, %sfp
	str	r1, [fp, #-176]	@, %sfp
	movw	r1, #:lower16:166176	@ tmp181,
	str	r2, [fp, #-188]	@, %sfp
	movt	r1, #:upper16:166176	@ tmp181,
	movw	r2, #:lower16:166172	@ tmp182,
	movt	r2, #:upper16:166172	@ tmp182,
	str	sl, [r4, r1]	@ StreamNum.534, <variable>.BufAddrCfg.UpMsgNum
	mov	r1, #1	@ tmp187,
	str	r8, [r4, r2]	@ tmp186, <variable>.BufAddrCfg.UpMsgSize
	ldr	r2, [fp, #-200]	@, %sfp
	ldr	ip, [fp, #-176]	@, %sfp
	str	lr, [fp, #-164]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, ScdCtrlReg.DownMsgPhyAddr
	ldr	lr, [fp, #-180]	@, %sfp
	str	r2, [fp, #-160]	@, ScdCtrlReg.pDownMsgVirAddr
	str	ip, [fp, #-156]	@, ScdCtrlReg.UpMsgPhyAddr
	str	lr, [fp, #-148]	@, ScdCtrlReg.UpLen
	ldr	r2, [fp, #-184]	@, %sfp
	ldr	ip, [fp, #-188]	@, %sfp
	ldr	lr, [fp, #-192]	@, %sfp
	str	r2, [fp, #-140]	@, ScdCtrlReg.BufferLast
	str	ip, [fp, #-136]	@, ScdCtrlReg.BufferIni
	str	r7, [fp, #-64]	@ D.39847, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [fp, #-60]	@, ScdCtrlReg.reg_avs_flag
	str	r3, [fp, #-56]	@ D.39885,
	strb	r1, [fp, #-166]	@ tmp187, ScdCtrlReg.ScdStart
	str	r0, [fp, #-144]	@ D.41968, ScdCtrlReg.BufferFirst
	strb	r1, [fp, #-168]	@ tmp187, ScdCtrlReg.ScdIntMask
	beq	.L730	@,
	cmp	r5, #6	@ StdType,
	beq	.L738	@,
	sub	r3, r5, #2	@ tmp215, StdType,
	cmp	r3, #1	@ tmp215,
	bls	.L738	@,
.L730:
	mov	r1, #0	@ tmp218,
	strb	r1, [fp, #-167]	@ tmp218, ScdCtrlReg.SliceCheckFlag
.L728:
	movw	r2, #:lower16:166156	@ tmp224,
	movw	r3, #:lower16:166152	@ tmp226,
	movt	r2, #:upper16:166156	@ tmp224,
	movt	r3, #:upper16:166152	@ tmp226,
	add	r0, r4, #165888	@, pScdInstance,
	ldr	ip, [r4, r2]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	add	r1, r0, #248	@,,
	ldr	lr, [r4, r3]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	sub	r0, fp, #168	@,,
	mov	r3, r6	@, pRawStreamArray
	ldr	r2, [fp, #-48]	@, SegStreamSize
	str	r5, [fp, #-132]	@ prephitmp.3089, ScdCtrlReg.ScdProtocol
	mov	r6, #1	@ tmp220,
	stmia	sp, {ip, lr}	@ phole stm
	str	r6, [fp, #-128]	@ tmp220, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r5, r0, #0	@ Ret,
	bne	.L731	@,
	ldr	lr, [fp, #-48]	@ SegStreamSize, SegStreamSize
	movw	r0, #:lower16:180096	@ tmp230,
	movw	ip, #:lower16:180100	@ tmp231,
	movt	r0, #:upper16:180096	@ tmp230,
	movt	ip, #:upper16:180100	@ tmp231,
	cmp	lr, r9	@ SegStreamSize, RawStreamSize
	strb	r6, [r4, #5]	@ tmp220, <variable>.IsWaitSCD
	strgeb	r6, [r4, #2]	@ tmp220, <variable>.LastCfgAllRawFlag
	mov	r6, #0	@ tmp238,
	str	r9, [r4, r0]	@ RawStreamSize, <variable>.PrevCfgRawSize
	str	lr, [r4, ip]	@ SegStreamSize, <variable>.PrevCfgSegSize
	strltb	r5, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r6, [r4, #4]	@ tmp238, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:180120	@ tmp240,
	movt	r1, #:upper16:180120	@ tmp240,
	strb	r6, [r4, #3]	@ tmp238, <variable>.InsertNewSegFlag
	str	r0, [r4, r1]	@, <variable>.LastSCDStartTime
	b	.L731	@
.L738:
	strb	r1, [fp, #-167]	@ tmp187, ScdCtrlReg.SliceCheckFlag
	b	.L728	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1432:
	@ args = 0, pretend = 0, frame = 64
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
	movw	sl, #:lower16:.LANCHOR0	@ tmp258,
	movt	sl, #:upper16:.LANCHOR0	@ tmp258,
	str	r0, [fp, #-108]	@ pNextInstId, %sfp
	ldr	r3, [sl, #800]	@ s_eScdDrvSleepStage.631, s_eScdDrvSleepStage
	cmp	r3, #0	@ s_eScdDrvSleepStage.631,
	beq	.L743	@,
	cmp	r3, #1	@ s_eScdDrvSleepStage.631,
	moveq	r3, #2	@ tmp157,
	mvneq	r0, #2	@ D.41160,
	streq	r3, [sl, #800]	@ tmp157, s_eScdDrvSleepStage
	beq	.L745	@,
.L744:
	mvn	r0, #2	@ D.41160,
.L745:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L743:
	movw	r8, #:lower16:180120	@ tmp260,
	movw	r4, #:lower16:166128	@,
	movw	r1, #:lower16:166124	@,
	movt	r4, #:upper16:166128	@,
	movt	r1, #:upper16:166124	@,
	movw	r0, #:lower16:166104	@,
	movw	r2, #:lower16:166108	@,
	movt	r0, #:upper16:166104	@,
	movt	r2, #:upper16:166108	@,
	ldr	r5, [sl, #784]	@ NextInstId, s_SmIIS.ThisInstID
	str	r3, [fp, #-84]	@ s_eScdDrvSleepStage.631, %sfp
	movt	r8, #:upper16:180120	@ tmp260,
	str	r4, [fp, #-88]	@, %sfp
	sub	r9, fp, #76	@ tmp257,,
	str	r1, [fp, #-92]	@, %sfp
	mov	r6, r3	@ i, s_eScdDrvSleepStage.631
	str	r0, [fp, #-96]	@, %sfp
	str	r2, [fp, #-100]	@, %sfp
	str	r3, [fp, #-104]	@ s_eScdDrvSleepStage.631, %sfp
	str	r3, [fp, #-48]	@ s_eScdDrvSleepStage.631, SegBufTotalSize
	str	r3, [fp, #-52]	@ s_eScdDrvSleepStage.631, SegBufAddr
	b	.L759	@
.L747:
	cmp	r3, #11	@ D.41169,
	beq	.L746	@,
	cmp	r3, #14	@ D.41169,
	beq	.L746	@,
	cmp	r3, #4	@ D.41169,
	beq	.L746	@,
	cmp	r3, #12	@ D.41169,
	beq	.L746	@,
	cmp	r3, #10	@ D.41169,
	beq	.L746	@,
	cmp	r3, #13	@ D.41169,
	beq	.L746	@,
	cmp	r3, #18	@ D.41169,
	beq	.L746	@,
	cmp	r3, #17	@ D.41169,
	beq	.L762	@,
.L749:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	PrintScdRawState	@
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, r8]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	ldrsb	ip, [r4, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	subs	r3, r0, r2	@ WaitTime, D.41190, <variable>.LastSCDStartTime
	strmi	r0, [r4, r8]	@ D.41190, <variable>.LastSCDStartTime
	movmi	r3, #200	@ WaitTime,
	cmp	ip, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L763	@,
	ldrsb	r0, [r4, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r0, #1	@ <variable>.SegFullFlag,
	movne	r0, #0	@ tmp224,
	strneb	r0, [r4, #1]	@ tmp224, <variable>.IsCounting
	beq	.L764	@,
.L755:
	mov	r0, r4	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r2, #1	@,
	streqb	r2, [r4, #0]	@, <variable>.SegFullFlag
	beq	.L746	@,
	cmp	r0, #0	@ Ret,
	mov	lr, #0	@ tmp228,
	strb	lr, [r4, #0]	@ tmp228, <variable>.SegFullFlag
	beq	.L765	@,
.L746:
	add	r6, r6, #1	@ i, i,
	cmp	r6, #16	@ i,
	beq	.L744	@,
.L759:
	add	r2, r5, #1	@ D.41161, NextInstId,
	mov	r1, r9	@, tmp257
	mov	r0, r2, asr #31	@ tmp161, D.41161,
	mov	r7, r0, lsr #28	@ tmp162, tmp161,
	add	lr, r2, r7	@ tmp163, D.41161, tmp162
	and	r5, lr, #15	@ tmp164, tmp163,
	rsb	r5, r7, r5	@ NextInstId, tmp162, tmp164
	add	r7, r5, #162	@ tmp259, NextInstId,
	mov	r0, r5	@, NextInstId
	add	ip, sl, r7, asl #2	@, tmp170, tmp258, tmp259,
	ldr	r4, [ip, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [fp, #-76]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L746	@,
	ldr	r3, [r4, #56]	@ D.41169, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp174, D.41169,
	cmp	r3, #5	@ D.41169,
	cmpne	r1, #1	@, tmp174,
	bls	.L746	@,
	cmp	r3, #1	@ D.41169,
	bne	.L747	@,
	ldr	r3, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L749	@,
	b	.L746	@
.L763:
	ldrsb	lr, [r4, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	lr, #0	@, <variable>.FillNewRawFlag,
	beq	.L746	@,
	ldrsb	r0, [r4, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r0, #1	@ <variable>.SegFullFlag,
	movne	r0, #0	@ tmp224,
	strneb	r0, [r4, #1]	@ tmp224, <variable>.IsCounting
	bne	.L755	@,
.L764:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	add	r2, r4, #73728	@, pSmInstArray,
	str	r2, [fp, #-80]	@, %sfp
	bl	PrintScdRawState	@
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	add	r3, ip, #192	@,,
	str	r3, [fp, #-80]	@, %sfp
	bl	PrintScdSegState	@
	ldr	r1, [fp, #-80]	@, %sfp
	cmp	r1, #0	@,
	beq	.L753	@,
	sub	r0, fp, #96
	ldmia	r0, {r0, ip, lr}	@ phole ldm
	ldr	r2, [r4, lr]	@, <variable>.StreamSegArray.SegFreshNum
	ldr	r1, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r0, [fp, #-100]	@, %sfp
	str	r2, [fp, #-84]	@, %sfp
	ldr	r3, [r4, ip]	@, <variable>.StreamSegArray.SegFreshSize
	str	r1, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r3, [fp, #-104]	@, %sfp
	ldr	lr, [r4, r0]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	lr, [fp, #-48]	@ <variable>.StreamSegArray.SegBufSize,
.L753:
	ldrsb	r1, [r4, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L754	@,
	ldr	r2, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	ldr	ip, [fp, #-104]	@, %sfp
	add	r3, r2, r2, lsr #31	@, tmp210, SegBufTotalSize, SegBufTotalSize,
	cmp	ip, r3, asr #1	@, tmp210,
	bge	.L755	@,
	ldr	lr, [fp, #-84]	@, %sfp
	cmp	lr, #127	@,
	bgt	.L755	@,
	mov	r0, #1	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1]	@, <variable>.IsCounting
	mov	r0, r5	@, NextInstId
	bl	CalcInstBlockTime	@
	b	.L755	@
.L754:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	ble	.L755	@,
	ldr	ip, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	ldr	r1, [fp, #-104]	@, %sfp
	cmp	ip, #0	@ SegBufTotalSize,
	add	r3, ip, #3	@ tmp217, SegBufTotalSize,
	movlt	ip, r3	@ SegBufTotalSize, tmp217
	cmp	r1, ip, asr #2	@, SegBufTotalSize,
	bge	.L755	@,
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r2, #63	@,
	bgt	.L755	@,
	mov	r2, r0	@, WaitSegTime
	movw	r1, #:lower16:.LC134	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC134	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-80]	@, %sfp
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r0, #0	@ tmp220,
	strb	r0, [r4, #0]	@ tmp220, <variable>.SegFullFlag
	strb	r0, [r4, #1]	@ tmp220, <variable>.IsCounting
	b	.L755	@
.L765:
	ldr	r3, [fp, #-108]	@, %sfp
	add	r7, sl, r7, asl #2	@, tmp234, tmp258, tmp259,
	mov	r0, #1	@,
	str	r5, [r3, #0]	@ NextInstId,
	ldr	ip, [r7, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	ip, #0	@ pSmInstArray,
	movwne	r3, #:lower16:166252	@ tmp236,
	movtne	r3, #:upper16:166252	@ tmp236,
	movne	r1, #1	@ tmp237,
	strne	r1, [ip, r3]	@ tmp237, <variable>.Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L766	@,
.L758:
	mov	r0, #0	@ D.41160,
	b	.L745	@
.L766:
	bl	OSAL_GetTimeInMs	@
	add	sl, sl, r5, asl #2	@, tmp241, tmp258, NextInstId,
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp245,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp245,
	ldr	r2, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r3, r0	@ D.41240,
	ldr	r0, [sl, #816]	@ tmp244, last_rec_pos_time
	rsb	r1, r0, r3	@ tmp243, tmp244, D.41240
	cmp	r1, r2	@ tmp243, g_TraceBsPeriod
	bls	.L758	@,
	mov	lr, r5, asl #24	@ tmp254, NextInstId,
	ldr	r0, .L767	@,
	add	r2, lr, #65536	@, tmp254,
	movw	r1, #4368	@,
	str	r3, [sl, #816]	@ D.41240, last_rec_pos_time
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.41160,
	b	.L745	@
.L762:
	mov	r0, r5	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L746	@,
	movw	r1, #:lower16:.LC133	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC133	@,
	bl	dprint_vfmw	@
	b	.L746	@
.L768:
	.align	2
.L767:
	.word	.LANCHOR1+136
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1433:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L779	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp210,
	movt	r4, #:upper16:.LANCHOR0	@ tmp210,
	mov	r1, #1	@,
	ldr	r2, [r4, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp149,
	str	r3, [r4, #804]	@ tmp149, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L772	@,
.L778:
	ldr	r6, [r4, #784]	@ prephitmp.3172, s_SmIIS.ThisInstID
.L773:
	add	r3, r4, r6, asl #2	@, tmp175, tmp210, prephitmp.3172,
	ldr	ip, [r4, #780]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r5, #:lower16:.LANCHOR0	@ tmp171,
	movt	r5, #:upper16:.LANCHOR0	@ tmp171,
	ldr	r7, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	ip, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r7, #0	@, pSmInstArray,
	movne	r8, #0	@, tmp185
	moveq	r8, #1	@, tmp185
	beq	.L780	@,
	ldr	r0, [r5, #788]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r0, #1	@ s_SmIIS.SCDState,
	beq	.L781	@,
.L775:
	mov	r0, r6	@, prephitmp.3172
	mov	r2, #0	@ tmp208,
	str	r2, [r4, #804]	@ tmp208, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L779:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L777:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L772:
	bl	OSAL_GetTimeInMs	@
	ldr	r6, [r4, #784]	@ prephitmp.3172, s_SmIIS.ThisInstID
	movw	r8, #:lower16:g_TraceBsPeriod	@ tmp159,
	movt	r8, #:upper16:g_TraceBsPeriod	@ tmp159,
	add	r3, r4, r6, asl #2	@, tmp155, tmp210, prephitmp.3172,
	ldr	r5, [r8, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r7, [r3, #880]	@ tmp158, last_rec_pos_time
	rsb	r1, r7, r0	@ tmp157, tmp158, CurTimeInMs
	mov	ip, r0	@ CurTimeInMs,
	cmp	r1, r5	@ tmp157, g_TraceBsPeriod
	bls	.L773	@,
	mov	lr, r6, asl #24	@ tmp168, prephitmp.3172,
	ldr	r0, .L783	@,
	add	r2, lr, #131072	@, tmp168,
	movw	r1, #4431	@,
	str	ip, [r3, #880]	@ CurTimeInMs, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L778	@
.L781:
	movw	lr, #:lower16:166252	@ tmp191,
	movt	lr, #:upper16:166252	@ tmp191,
	ldr	r1, [r7, lr]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #1	@ <variable>.Mode,
	beq	.L782	@,
.L776:
	sub	r0, fp, #40	@,,
	mov	r5, #0	@ tmp200,
	str	r5, [r4, #788]	@ tmp200, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp199,
	movt	r5, #:upper16:.LANCHOR0	@ tmp199,
	cmp	r0, #0	@,
	bne	.L775	@,
	ldr	ip, [fp, #-40]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp205,
	str	r3, [r5, #788]	@ tmp205, s_SmIIS.SCDState
	str	ip, [r5, #784]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #792]	@, s_SmIIS.LastProcessTime
	b	.L775	@
.L780:
	mov	r2, #0	@ tmp187,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r5, #804]	@ tmp187, s_SCDInISR
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L777	@
.L782:
	mov	r0, r6	@, prephitmp.3172
	mov	r1, r8	@, tmp185
	bl	PrintScdRawState	@
	mov	r1, r8	@, tmp185
	ldr	r0, [r5, #784]	@, s_SmIIS.ThisInstID
	bl	PrintScdSegState	@
	mov	r0, r7	@, pSmInstArray
	bl	ProcessScdReturn	@
	ldr	r0, [r5, #784]	@, s_SmIIS.ThisInstID
	mov	r1, r8	@, tmp185
	bl	PrintScdRawState	@
	ldr	r0, [r5, #784]	@, s_SmIIS.ThisInstID
	mov	r1, r8	@, tmp185
	bl	PrintScdSegState	@
	b	.L776	@
.L784:
	.align	2
.L783:
	.word	.LANCHOR1+156
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r5, #0	@, tmp144
	moveq	r5, #1	@, tmp144
	mvneq	r0, #0	@ D.38495,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r6, #:lower16:73732	@ tmp145,
	movt	r6, #:upper16:73732	@ tmp145,
	movw	r3, #:lower16:73736	@ tmp154,
	movt	r3, #:upper16:73736	@ tmp154,
	ldr	r2, [r4, r6]	@ D.38496, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.38496,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.38495,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	lr, r2, r2, asl #3	@, tmp158, D.38496, D.38496,
	mov	r2, #72	@,
	add	r0, r4, lr, asl #3	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.38495, tmp144
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
.LFB1404:
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
	ldr	ip, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r3, r0, asl #2	@, tmp142, tmp138, SmID,
	cmp	ip, #0	@ <variable>.PhyAddr,
	ldr	r0, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L794	@,
.L791:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L794:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L791	@,
	cmp	r0, #0	@ pSmInstArray,
	beq	.L791	@,
	add	r0, r0, #168	@, pSmInstArray,
	bl	InsertRawPacket	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1428:
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
	mov	r5, r0	@ InstID, InstID
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	add	r3, r0, r5, asl #2	@, tmp160,, InstID,
	sub	r7, fp, #116	@ tmp356,,
	str	r0, [fp, #-120]	@, %sfp
	mov	r1, #72	@,
	ldr	r4, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r7	@, tmp356
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L817	@,
	ldr	r2, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r2, #18	@ <variable>.Config.VidStd,
	beq	.L817	@,
	ldr	r3, [r4, #84]	@ D.40735, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.40735,
	beq	.L817	@,
	cmp	r3, #2	@ D.40735,
	movne	r1, r5, asl #24	@, InstID,
	strne	r1, [fp, #-136]	@, %sfp
	beq	.L829	@,
.L825:
	ldr	r2, [fp, #-120]	@, %sfp
	movw	r6, #:lower16:180104	@ tmp357,
	movw	sl, #:lower16:180108	@ tmp358,
	movt	r6, #:upper16:180104	@ tmp357,
	add	r8, r2, r5, asl #2	@, tmp360,, InstID,
	movt	sl, #:upper16:180108	@ tmp358,
	add	r3, r8, #944	@, tmp360,
	movw	r8, #:lower16:save_str_chan_num	@ tmp363,
	movt	r8, #:upper16:save_str_chan_num	@ tmp363,
	movw	lr, #:lower16:g_TraceBsPeriod	@,
	movw	ip, #:lower16:vfmw_save_str_file	@,
	movt	lr, #:upper16:g_TraceBsPeriod	@,
	movt	ip, #:upper16:vfmw_save_str_file	@,
	str	r3, [fp, #-128]	@, %sfp
	str	lr, [fp, #-124]	@, %sfp
	str	ip, [fp, #-132]	@, %sfp
.L823:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L806	@,
.L833:
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp356
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L817	@,
	ldr	r1, [r4, #80]	@ prephitmp.3260, <variable>.Config.LastRawDisContinueCount
	cmn	r1, #1	@ prephitmp.3260,
	ldreq	r1, [fp, #-68]	@ prephitmp.3260, RawPacket.discontinue_count
	streq	r1, [r4, #80]	@ prephitmp.3260, <variable>.Config.LastRawDisContinueCount
	ldr	r0, [fp, #-68]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	r0, r1	@ RawPacket.discontinue_count, prephitmp.3260
	beq	.L808	@,
	ldr	ip, [r4, #56]	@ D.40822, <variable>.Config.VidStd
	cmp	ip, #3	@ D.40822,
	cmpne	ip, #1	@, D.40822,
	beq	.L830	@,
.L808:
	ldr	lr, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	r3, [fp, #-108]	@ RawPacket.Length, RawPacket.Length
	add	r9, r3, lr	@ tmp273, RawPacket.Length, <variable>.TotalRawSize
	str	r9, [r4, r6]	@ tmp273, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, sl]	@ temp.3283, <variable>.LastStatTime
	cmp	r1, #0	@ temp.3283,
	mov	r9, r0	@ ThisTime.3282,
	streq	r0, [r4, sl]	@ ThisTime.3282, <variable>.LastStatTime
	beq	.L810	@,
	rsb	r1, r1, r0	@ TimePeriod.3284, temp.3283, ThisTime.3282
	cmp	r1, #2000	@ TimePeriod.3284,
	bls	.L810	@,
	ldr	r2, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	lr, #:lower16:180112	@ tmp276,
	movt	lr, #:upper16:180112	@ tmp276,
	str	lr, [fp, #-140]	@,
	mov	r0, r2, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	ip, #1000	@ tmp285,
	str	r9, [r4, sl]	@ ThisTime.3282, <variable>.LastStatTime
	mov	r3, #0	@ tmp288,
	str	r3, [r4, r6]	@ tmp288, <variable>.TotalRawSize
	mul	r1, ip, r0	@ tmp284, tmp285,
	ldr	r0, [fp, #-140]	@,
	mov	r2, r1, lsr #10	@ tmp286, tmp284,
	str	r2, [r4, r0]	@ tmp286, <variable>.BitRate
.L810:
	ldrd	r2, [fp, #-100]	@,,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-116]	@, RawPacket.PhyAddr
	ldr	r3, [fp, #-108]	@, RawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	ldrd	r0, [fp, #-100]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp296,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp296
	cmpeq	r0, r2	@ RawPacket.Pts, tmp296
	beq	.L831	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp356
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L828	@,
.L812:
	mov	r1, #1	@ tmp300,
	strb	r1, [r4, #4]	@ tmp300, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L832	@,
.L813:
	ldr	r3, [r8, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r3	@ InstID, save_str_chan_num
	bne	.L823	@,
	ldr	r1, [fp, #-132]	@, %sfp
	ldr	r2, [r1, #0]	@ prephitmp.3262, vfmw_save_str_file
	cmp	r2, #0	@ prephitmp.3262,
	beq	.L823	@,
	ldr	r3, [r4, #56]	@ eStd, <variable>.Config.VidStd
	sub	ip, r3, #10	@ tmp321, eStd,
	cmp	r3, #4	@ eStd,
	cmpne	ip, #3	@, tmp321,
	bls	.L815	@,
	cmp	r3, #14	@ eStd,
	cmpne	r3, #17	@, eStd,
	beq	.L815	@,
	cmp	r3, #8	@ eStd,
	cmpne	r3, #9	@, eStd,
	beq	.L815	@,
	cmp	r3, #5	@ eStd,
	beq	.L815	@,
	cmp	r3, #1	@ eStd,
	bne	.L816	@,
	ldr	r0, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L816	@,
.L815:
	add	r0, r7, #8	@, tmp356,
	mov	r1, #4	@,
	bl	klib_fwrite	@
	ldr	r3, [fp, #-132]	@, %sfp
	ldr	r2, [r3, #0]	@ prephitmp.3262, vfmw_save_str_file
.L816:
	ldr	r1, [fp, #-108]	@, RawPacket.Length
	ldr	r0, [fp, #-112]	@, RawPacket.VirAddr
	bl	klib_fwrite	@
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	beq	.L833	@,
.L806:
	mov	r2, r5	@, InstID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC139	@,
	movt	r1, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-120]	@, %sfp
	mov	r1, #0	@,
	ldr	r0, [r2, #784]	@, s_SmIIS.ThisInstID
	bl	PrintScdRawState	@
.L817:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L832:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #-124]	@, %sfp
	ldr	r2, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r3, r0	@ ThisTime.3296,
	ldr	r0, [fp, #-128]	@, %sfp
	ldr	r1, [r0, #0]	@ tmp308, last_rec_pos_time
	rsb	r0, r1, r3	@ tmp307, tmp308, ThisTime.3296
	cmp	r0, r2	@ tmp307, g_TraceBsPeriod
	bls	.L813	@,
	ldr	lr, [fp, #-128]	@, %sfp
	movw	r1, #3751	@,
	ldr	r0, .L838	@,
	ldr	r2, [fp, #-136]	@, %sfp
	str	r3, [lr, #0]	@ ThisTime.3296, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L813	@
.L831:
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp356
	mvn	r2, #0	@ tmp297,
	mvn	r3, #0	@,
	strd	r2, [fp, #-100]	@ tmp297,,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	beq	.L812	@,
.L828:
	movw	r1, #:lower16:.LC137	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	b	.L817	@
.L829:
	movw	r6, #:lower16:180104	@ tmp164,
	movt	r6, #:upper16:180104	@ tmp164,
	ldr	ip, [r4, #104]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	movw	r8, #:lower16:180108	@ tmp169,
	ldr	sl, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	r8, #:upper16:180108	@ tmp169,
	add	r1, ip, sl	@ tmp168, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	r1, [r4, r6]	@ tmp168, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r8]	@ D.40744, <variable>.LastStatTime
	cmp	r3, #0	@ D.40744,
	mov	sl, r0	@ ThisTime,
	streq	r0, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	beq	.L799	@,
	rsb	r1, r3, r0	@ TimePeriod, D.40744, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L799	@,
	ldr	lr, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	r9, #:lower16:180112	@ tmp171,
	movt	r9, #:upper16:180112	@ tmp171,
	mov	r0, lr, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@ tmp180,
	mov	ip, #0	@ tmp183,
	str	sl, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	str	ip, [r4, r6]	@ tmp183, <variable>.TotalRawSize
	mul	r2, r1, r0	@ tmp179, tmp180,
	mov	r3, r2, lsr #10	@ tmp181, tmp179,
	str	r3, [r4, r9]	@ tmp181, <variable>.BitRate
.L799:
	ldrd	r2, [r4, #112]	@, pSmInstArray,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #96]	@, <variable>.Config.DisContinueRawPacket.PhyAddr
	ldr	r3, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	ldrd	r0, [r4, #112]	@ <variable>.Config.DisContinueRawPacket.Pts, pSmInstArray,
	mvn	r2, #0	@ tmp191,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp191
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp191
	beq	.L834	@,
.L800:
	mov	r0, r5	@, InstID
	add	r1, r4, #96	@, pSmInstArray,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L828	@,
	mov	r6, #1	@ tmp195,
	strb	r6, [r4, #4]	@ tmp195, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	r2, r5, asl #24	@, InstID,
	streq	r2, [fp, #-136]	@, %sfp
	bne	.L835	@,
.L802:
	movw	r2, #:lower16:save_str_chan_num	@ tmp214,
	movt	r2, #:upper16:save_str_chan_num	@ tmp214,
	ldr	r3, [r2, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r3	@ InstID, save_str_chan_num
	beq	.L836	@,
.L803:
	ldr	r6, [r4, #144]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	mov	r1, #0	@ tmp251,
	str	r1, [r4, #84]	@ tmp251, <variable>.Config.DisContinueRawPacketFlag
	str	r6, [r4, #80]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L825	@
.L830:
	mov	r1, r7	@, tmp356
	add	r0, r4, #96	@, pSmInstArray,
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #1	@ tmp265,
	str	r0, [r4, #84]	@ tmp265, <variable>.Config.DisContinueRawPacketFlag
	movw	r1, #:lower16:.LC138	@,
	ldr	r2, [r4, #80]	@, <variable>.Config.LastRawDisContinueCount
	movt	r1, #:upper16:.LC138	@,
	ldr	r3, [fp, #-68]	@, RawPacket.discontinue_count
	bl	dprint_vfmw	@
	b	.L817	@
.L834:
	mvn	r2, #0	@ tmp192,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp192, pSmInstArray,
	b	.L800	@
.L836:
	movw	r6, #:lower16:vfmw_save_str_file	@ tmp355,
	movt	r6, #:upper16:vfmw_save_str_file	@ tmp355,
	ldr	r8, [r6, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r8, #0	@ vfmw_save_str_file,
	beq	.L803	@,
	ldr	r8, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	sub	sl, r8, #10	@ tmp219, eStd,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r8, #4	@ eStd,
	cmpne	sl, #3	@, tmp219,
	bls	.L804	@,
	cmp	r8, #14	@ eStd,
	cmpne	r8, #17	@, eStd,
	beq	.L804	@,
	cmp	r8, #8	@ eStd,
	cmpne	r8, #9	@, eStd,
	beq	.L804	@,
	cmp	r8, #5	@ eStd,
	beq	.L804	@,
	cmp	r8, #1	@ eStd,
	beq	.L837	@,
.L805:
	ldr	r2, [r6, #0]	@, vfmw_save_str_file
	ldr	r0, [r4, #100]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	ldr	r1, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L803	@
.L835:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #-120]	@, %sfp
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp204,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp204,
	add	r3, ip, r5, asl #2	@, tmp200,, InstID,
	ldr	sl, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r2, r0	@ ThisTime.3276,
	ldr	r0, [r3, #944]	@ tmp203, last_rec_pos_time
	rsb	r8, r0, r2	@ tmp202, tmp203, ThisTime.3276
	cmp	r8, sl	@ tmp202, g_TraceBsPeriod
	movls	r8, r5, asl #24	@, InstID,
	strls	r8, [fp, #-136]	@, %sfp
	bls	.L802	@,
	mov	lr, r5, asl #24	@, InstID,
	str	lr, [fp, #-136]	@, %sfp
	str	r2, [r3, #944]	@ ThisTime.3276, last_rec_pos_time
	movw	r1, #3630	@,
	ldr	r0, .L838	@,
	ldr	r2, [fp, #-136]	@, %sfp
	bl	DBG_AddTrace	@
	b	.L802	@
.L837:
	ldr	r0, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L805	@,
.L804:
	add	r0, r4, #104	@, pSmInstArray,
	mov	r1, #4	@,
	ldr	r2, [r6, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L805	@
.L839:
	.align	2
.L838:
	.word	.LANCHOR1+176
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1434:
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
	mov	r3, #0	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp165,
	movw	r5, #:lower16:166252	@ tmp166,
	movt	r4, #:upper16:.LANCHOR0	@ tmp165,
	movt	r5, #:upper16:166252	@ tmp166,
	mov	r0, r3	@ NextInstID.652, tmp140
	str	r3, [fp, #-24]	@ tmp140, NextInstID
	b	.L842	@
.L841:
	ldr	r0, [fp, #-24]	@ NextInstID.3331, NextInstID
	add	r0, r0, #1	@ NextInstID.652, NextInstID.3331,
	str	r0, [fp, #-24]	@ NextInstID.652, NextInstID
	cmp	r0, #15	@ NextInstID.652,
	bgt	.L848	@,
.L842:
	add	r1, r4, r0, asl #2	@, tmp145, tmp165, NextInstID.652,
	ldr	r3, [r1, #652]	@ D.41309, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.41309,
	beq	.L841	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L841	@,
	bl	FillRawData	@
	ldr	r0, [fp, #-24]	@ NextInstID.3331, NextInstID
	add	r0, r0, #1	@ NextInstID.652, NextInstID.3331,
	str	r0, [fp, #-24]	@ NextInstID.652, NextInstID
	cmp	r0, #15	@ NextInstID.652,
	ble	.L842	@,
.L848:
	ldr	ip, [r4, #788]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L843	@,
	sub	r0, fp, #24	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L849	@,
.L846:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L843:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #792]	@ D.41325, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.41325
	strcc	r0, [r4, #792]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L846	@,
	rsb	r1, r3, r0	@ tmp159, D.41325, CurTime
	cmp	r1, #2000	@ tmp159,
	bls	.L846	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #784]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp162,
	str	r2, [r4, #788]	@ tmp162, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L846	@
.L849:
	ldr	lr, [fp, #-24]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp155,
	str	r3, [r4, #788]	@ tmp155, s_SmIIS.SCDState
	str	lr, [r4, #784]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #792]	@, s_SmIIS.LastProcessTime
	b	.L846	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1431:
	@ args = 0, pretend = 0, frame = 56
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp210,
	movt	r2, #:upper16:.LANCHOR0	@ tmp210,
	str	r0, [fp, #-56]	@ ChanID, %sfp
	add	r3, r2, r0, asl #2	@, tmp214, tmp210, ChanID,
	str	r1, [fp, #-60]	@ pArgs, %sfp
	ldr	r4, [r3, #652]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.40970,
	bne	.L937	@,
.L852:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L937:
	ldr	r1, [fp, #-60]	@, %sfp
	movw	sl, #:lower16:166144	@ tmp217,
	movt	sl, #:upper16:166144	@ tmp217,
	ldr	r7, [fp, #-60]	@, %sfp
	movw	r5, #:lower16:166088	@ tmp221,
	movt	r5, #:upper16:166088	@ tmp221,
	ldrd	r0, [r1]	@,
	add	r8, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	r3, #:lower16:166096	@ tmp220,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	movt	r3, #:upper16:166096	@ tmp220,
	strd	r0, [fp, #-52]	@,,
	ldr	r9, [r4, sl]	@, <variable>.SmPushRaw.PushRawOver
	ldr	r1, [fp, #-60]	@, %sfp
	cmp	r9, #1	@,
	str	r9, [fp, #-64]	@, %sfp
	ldrd	r6, [r7, #8]	@,,
	moveq	r9, #3	@ tmp219,
	strd	r6, [fp, #-92]	@,,
	ldrd	r0, [r1, #16]	@,,
	strd	r0, [fp, #-76]	@,,
	streq	r9, [r4, sl]	@ tmp219, <variable>.SmPushRaw.PushRawOver
	movw	r9, #:lower16:166092	@ tmp224,
	movt	r9, #:upper16:166092	@ tmp224,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movw	sl, #:lower16:954437177	@ tmp634,
	movt	sl, #:upper16:954437177	@ tmp634,
	ldr	r7, [r4, r9]	@ prephitmp.3347, <variable>.StreamSegArray.Tail
	mov	r5, ip	@ i.3421, <variable>.StreamSegArray.Head
	str	ip, [r4, r3]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
.L927:
	cmp	r5, r7	@ i.3421, prephitmp.3347
	mov	r6, r5, asl #2	@ tmp590, i.3421,
	mov	r1, r5	@, i.3421
	mov	r0, r8	@, pStreamSegArray
	add	r3, r6, r5	@ tmp266, tmp590, i.3421
	beq	.L938	@,
.L854:
	add	r3, r4, r3, asl #4	@, tmp268, pSmInstArray, tmp266,
	movw	ip, #:lower16:73960	@ tmp271,
	add	r2, r3, #73728	@ tmp277, tmp268,
	movt	ip, #:upper16:73960	@ tmp271,
	add	r3, r2, #200	@ tmp269, tmp269,
	add	r2, r2, #232	@ tmp277, tmp277,
	ldrsb	r3, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #1	@ <variable>.SegState,
	bne	.L857	@,
	ldrd	r2, [r2]	@ D.40998, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.40998,
	cmpeq	r2, r0	@ D.40998,
	beq	.L939	@,
	add	r0, r5, #1	@, i.3421,
	str	r0, [fp, #-80]	@, %sfp
	ldrd	r0, [fp, #-52]	@,,
	cmp	r1, r3	@, D.40998
	cmpeq	r0, r2	@, D.40998
	ldr	r1, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-80]	@, %sfp
	smull	r1, r2, sl, r1	@, tmp288, tmp634,
	mov	r3, r0, asr #31	@ tmp291,,
	bls	.L860	@,
	rsb	r3, r3, r2, asr #8	@, i.3421, tmp291, tmp288,
	movw	r7, #:lower16:166096	@,
	movt	r7, #:upper16:166096	@,
	add	r2, r3, r3, asl #3	@, tmp294, i.3421, i.3421,
	str	r5, [r4, r7]	@ i.3421, <variable>.StreamSegArray.History
	ldr	r7, [r4, r9]	@ prephitmp.3347, <variable>.StreamSegArray.Tail
	sub	r5, r0, r2, asl #7	@ i.3421,, tmp294,
	mov	r0, r8	@, pStreamSegArray
	cmp	r5, r7	@ i.3421, prephitmp.3347
	mov	r6, r5, asl #2	@ tmp590, i.3421,
	mov	r1, r5	@, i.3421
	add	r3, r6, r5	@ tmp266, tmp590, i.3421
	bne	.L854	@,
.L938:
	movw	r0, #:lower16:166088	@ tmp225,
	movt	r0, #:upper16:166088	@ tmp225,
	ldr	r6, [r4, r0]	@ j, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3421, j
	beq	.L855	@,
	movw	r7, #:lower16:166124	@ tmp616,
	movw	r5, #:lower16:166128	@ tmp618,
	movw	r9, #:lower16:954437177	@ tmp619,
	movw	sl, #:lower16:166092	@ tmp620,
	movt	r7, #:upper16:166124	@ tmp616,
	movt	r5, #:upper16:166128	@ tmp618,
	movt	r9, #:upper16:954437177	@ tmp619,
	movt	sl, #:upper16:166092	@ tmp620,
.L930:
	add	ip, r6, r6, asl #2	@, tmp229, j, j,
	mov	r1, r6	@, j
	add	r6, r6, #1	@ D.40993, j,
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp231, pSmInstArray, tmp229,
	mov	ip, #2	@,
	add	r3, lr, #73728	@ tmp242, tmp231,
	add	lr, r3, #200	@ tmp232, tmp232,
	add	r3, r3, #208	@ tmp242, tmp242,
	strb	ip, [lr, #4]	@, <variable>.SegState
	ldr	ip, [r3, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	lr, [r4, r5]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r3, ip, r2	@ D.40987, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, lr, #1	@ D.40989, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, r3, r3, asr #31	@ tmp250, D.40987
	bic	lr, ip, ip, asr #31	@ tmp252, D.40989
	str	r2, [r4, r7]	@ tmp250, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r5]	@ tmp252, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp253, tmp619, D.40993
	mov	r3, r6, asr #31	@ tmp256, D.40993,
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r2, r3, r1, asr #8	@, j, tmp256, tmp253,
	add	r1, r2, r2, asl #3	@, tmp259, j, j,
	sub	r6, r6, r1, asl #7	@ j, D.40993, tmp259,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L930	@,
.L855:
	mov	r1, #0	@,
	ldr	r0, [fp, #-56]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	movw	ip, #:lower16:73896	@ tmp407,
	movw	r0, #:lower16:73900	@ tmp408,
	movt	ip, #:upper16:73896	@ tmp407,
	movt	r0, #:upper16:73900	@ tmp408,
	add	r1, r4, #168	@, pSmInstArray,
	str	r1, [fp, #-96]	@, %sfp
	movw	r9, #:lower16:73896	@ tmp411,
	ldr	r1, [r4, ip]	@ D.41027, <variable>.RawPacketArray.Head
	movt	r9, #:upper16:73896	@ tmp411,
	ldr	r3, [r4, r0]	@ D.41028, <variable>.RawPacketArray.Tail
	movw	r7, #:lower16:73904	@ tmp410,
	movt	r7, #:upper16:73904	@ tmp410,
	cmp	r1, r3	@ D.41027, D.41028
	addgt	r3, r3, #1024	@ tmp409, D.41028,
	rsb	sl, r1, r3	@, D.41027, tmp409
	str	sl, [fp, #-80]	@, %sfp
	movw	sl, #:lower16:73900	@ tmp412,
	movt	sl, #:upper16:73900	@ tmp412,
	ldr	r3, [r4, r9]	@ i, <variable>.RawPacketArray.Head
	mov	r9, r7	@ tmp612, tmp410
	ldr	ip, [r4, sl]	@ prephitmp.3352, <variable>.RawPacketArray.Tail
	str	r1, [r4, r7]	@ D.41027, <variable>.RawPacketArray.History
.L928:
	add	lr, r3, r3, asl #3	@, tmp420, i, i,
	cmp	r3, ip	@ i, prephitmp.3352
	add	r2, r4, lr, asl #3	@, tmp422, pSmInstArray, tmp420,
	beq	.L940	@,
.L871:
	ldrd	r0, [r2, #184]	@ temp.3400, tmp422,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	r8, r2, #184	@ tmp423, tmp422,
	cmp	r1, r7	@ temp.3400,
	cmpeq	r0, r6	@ temp.3400,
	beq	.L941	@,
	ldrd	r6, [fp, #-52]	@,,
	add	r2, r3, #1	@ temp.3402, i,
	cmp	r7, r1	@, temp.3400
	cmpeq	r6, r0	@, temp.3400
	mov	r5, r2, asr #31	@ tmp432, temp.3402,
	bls	.L878	@,
	mov	r5, r5, lsr #22	@ tmp433, tmp432,
	str	r3, [r4, r9]	@ i, <variable>.RawPacketArray.History
	add	r0, r2, r5	@ tmp434, temp.3402, tmp433
	ldr	ip, [r4, sl]	@ prephitmp.3352, <variable>.RawPacketArray.Tail
	mov	r3, r0, asl #22	@ tmp435, tmp434,
	mov	r2, r3, lsr #22	@ tmp435, tmp435,
	rsb	r3, r5, r2	@ i, tmp433, tmp435
	cmp	r3, ip	@ i, prephitmp.3352
	add	lr, r3, r3, asl #3	@, tmp420, i, i,
	add	r2, r4, lr, asl #3	@, tmp422, pSmInstArray, tmp420,
	bne	.L871	@,
.L940:
	movw	r6, #:lower16:73896	@ tmp413,
	movt	r6, #:upper16:73896	@ tmp413,
	ldr	r2, [r4, r6]	@ temp.3376, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3376
	rsblt	r1, r2, #1024	@ tmp414, temp.3376,
	rsbge	r1, r2, r3	@ DelNum.3369, temp.3376, i
	addlt	r1, r1, r3	@ DelNum.3369, tmp414, i
	cmp	r1, #0	@ DelNum.3369,
	movweq	r3, #:lower16:73904	@ tmp415,
	movteq	r3, #:upper16:73904	@ tmp415,
	streq	r2, [r4, r3]	@ temp.3376, <variable>.RawPacketArray.History
	bne	.L942	@,
.L875:
	ldr	r9, [fp, #-80]	@, %sfp
	ldrd	r0, [fp, #-76]	@,,
	mov	r6, r9	@ RawNumInVfmw,
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r1, r7	@, RawNumInVfmw
	cmpeq	r0, r6	@, RawNumInVfmw
	bls	.L943	@,
	ldrd	r2, [fp, #-76]	@,,
	movw	lr, #1023	@ tmp503,
	mov	r0, #0	@,
	subs	r6, r2, r6	@ RawNumToSeek,, RawNumInVfmw
	sbc	r7, r3, r7	@ RawNumToSeek,, RawNumInVfmw
	and	r2, lr, r6	@ tmp502, tmp503, RawNumToSeek
	and	r3, r0, r7	@,, RawNumToSeek
	mov	r9, r6, lsr #10	@ tmp582, RawNumToSeek,
	orrs	r8, r2, r3	@, tmp502
	orr	r8, r9, r7, asl #22	@, tmp645, tmp582, RawNumToSeek,
	addne	r8, r8, #1	@, tmp645,
	str	r8, [fp, #-100]	@, %sfp
	ldr	r9, [fp, #-100]	@, %sfp
	cmp	r9, #0	@,
	ble	.L894	@,
	movw	sl, #:lower16:73904	@ tmp604,
	movt	sl, #:upper16:73904	@ tmp604,
	movw	ip, #:lower16:73896	@,
	movw	r6, #:lower16:73900	@,
	movt	ip, #:upper16:73896	@,
	movt	r6, #:upper16:73900	@,
	mov	r7, #0	@,
	str	ip, [fp, #-76]	@, %sfp
	str	r6, [fp, #-64]	@, %sfp
	str	r7, [fp, #-80]	@, %sfp
.L913:
	mov	r1, #0	@,
	ldr	r0, [fp, #-56]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [fp, #-56]	@, %sfp
	bl	FillRawData	@
	ldr	r3, [fp, #-76]	@, %sfp
	ldr	r6, [fp, #-64]	@, %sfp
	ldr	r2, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	ldr	r0, [r4, r6]	@ prephitmp.3356, <variable>.RawPacketArray.Tail
	mov	r3, r2	@ i.3372, <variable>.RawPacketArray.Head
	str	r2, [r4, sl]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
.L929:
	add	r9, r3, r3, asl #3	@, tmp522, i.3372, i.3372,
	cmp	r3, r0	@ i.3372, prephitmp.3356
	add	r2, r4, r9, asl #3	@, tmp524, pSmInstArray, tmp522,
	beq	.L944	@,
.L895:
	ldrd	r8, [r2, #184]	@ D.41042, tmp524,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	r5, r2, #184	@ tmp525, tmp524,
	cmp	r9, r7	@ D.41042,
	cmpeq	r8, r6	@ D.41042,
	beq	.L945	@,
	ldrd	r6, [fp, #-52]	@,,
	add	r1, r3, #1	@ temp.3384, i.3372,
	cmp	r7, r9	@, D.41042
	cmpeq	r6, r8	@, D.41042
	mov	ip, r1, asr #31	@ tmp534, temp.3384,
	bls	.L902	@,
	mov	ip, ip, lsr #22	@ tmp535, tmp534,
	str	r3, [r4, sl]	@ i.3372, <variable>.RawPacketArray.History
	add	r3, r1, ip	@ tmp536, temp.3384, tmp535
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r7, r3, asl #22	@ tmp537, tmp536,
	ldr	r0, [r4, r9]	@ prephitmp.3356, <variable>.RawPacketArray.Tail
	mov	lr, r7, lsr #22	@ tmp537, tmp537,
	rsb	r3, ip, lr	@ i.3372, tmp535, tmp537
	cmp	r3, r0	@ i.3372, prephitmp.3356
	add	r9, r3, r3, asl #3	@, tmp522, i.3372, i.3372,
	add	r2, r4, r9, asl #3	@, tmp524, pSmInstArray, tmp522,
	bne	.L895	@,
.L944:
	ldr	r7, [fp, #-76]	@, %sfp
	ldr	r2, [r4, r7]	@ temp.3380, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.3372, temp.3380
	rsblt	r1, r2, #1024	@ tmp516, temp.3380,
	rsbge	r1, r2, r3	@ DelNum.3370, temp.3380, i.3372
	addlt	r1, r1, r3	@ DelNum.3370, tmp516, i.3372
	cmp	r1, #0	@ DelNum.3370,
	streq	r2, [r4, sl]	@ temp.3380, <variable>.RawPacketArray.History
	bne	.L946	@,
.L899:
	ldr	r9, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-100]	@, %sfp
	add	r9, r9, #1	@,,
	str	r9, [fp, #-80]	@, %sfp
	cmp	r0, r9	@,
	bgt	.L913	@,
.L894:
	mvn	r0, #1	@ D.40970,
	b	.L852	@
.L857:
	add	r5, r5, #1	@ temp.3444, i.3421,
	bl	ReleaseStreamSeg	@
	ldr	r7, [r4, r9]	@ prephitmp.3347, <variable>.StreamSegArray.Tail
	smull	r3, r2, sl, r5	@, tmp398, tmp634, temp.3444
	mov	ip, r5, asr #31	@ tmp401, temp.3444,
	rsb	r0, ip, r2, asr #8	@, i.3421, tmp401, tmp398,
	add	r6, r0, r0, asl #3	@, tmp404, i.3421, i.3421,
	sub	r5, r5, r6, asl #7	@ i.3421, temp.3444, tmp404,
	b	.L927	@
.L878:
	beq	.L947	@,
	bcs	.L928	@,
	movw	r2, #:lower16:73904	@ tmp457,
	movt	r2, #:upper16:73904	@ tmp457,
	mov	ip, r8	@ tmp423, tmp423
	ldr	r1, [r4, r2]	@ i.3408, <variable>.RawPacketArray.History
	add	r9, r1, r1, asl #3	@, tmp461, i.3408, i.3408,
	add	r8, r4, r9, asl #3	@, tmp463, pSmInstArray, tmp461,
	ldrd	r6, [r8, #184]	@, tmp463,
	strd	r6, [fp, #-76]	@,,
	mvn	r6, #0	@ tmp424,
	ldrd	r8, [fp, #-76]	@,,
	mvn	r7, #0	@,
	cmp	r9, r7	@, tmp424
	cmpeq	r8, r6	@, tmp424
	beq	.L933	@,
	ldrd	r6, [fp, #-52]	@,,
	ldrd	r8, [fp, #-76]	@,,
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bls	.L886	@,
	subs	r6, r6, r8	@ tmp474, tmp474,
	sbc	r7, r7, r9	@ tmp474, tmp474,
	ldrd	r8, [fp, #-92]	@,,
	cmp	r9, r7	@, tmp474
	cmpeq	r8, r6	@, tmp474
	bcs	.L886	@,
.L933:
	str	r3, [r4, r2]	@ i, <variable>.RawPacketArray.History
	ldrd	r0, [ip]	@, <variable>.Pts
	strd	r0, [fp, #-76]	@,,
.L885:
	movw	r6, #:lower16:73896	@ tmp483,
	movt	r6, #:upper16:73896	@ tmp483,
	ldr	r1, [r4, r6]	@ temp.3410, <variable>.RawPacketArray.Head
	cmp	r1, r3	@ temp.3410, i
	rsbgt	r1, r1, #1024	@ tmp484, temp.3410,
	rsble	r3, r1, r3	@ DelNum, temp.3410, i
	addgt	r3, r1, r3	@ DelNum, tmp484, i
	cmp	r3, #0	@ DelNum,
	beq	.L889	@,
	movw	r5, #:lower16:166136	@ tmp485,
	movt	r5, #:upper16:166136	@ tmp485,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	lr, [r4, r5]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, lr	@ DelNum, <variable>.SmPushRaw.PushRawNum
	cmple	r0, #1	@,,
	movne	r5, #0	@, tmp493
	moveq	r5, #1	@, tmp493
	bne	.L890	@,
.L889:
	ldrd	r6, [fp, #-76]	@,,
	movw	r2, #:lower16:73896	@ tmp495,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r2, #:upper16:73896	@ tmp495,
	strd	r6, [r8]	@,
.L936:
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r3, #:lower16:73904	@ tmp494,
	ldr	r9, [fp, #-64]	@, %sfp
	movt	r3, #:upper16:73904	@ tmp494,
	movw	r2, #:lower16:166144	@ tmp497,
	movt	r2, #:upper16:166144	@ tmp497,
	mov	r0, #0	@ D.40970,
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r9, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	b	.L852	@
.L860:
	beq	.L948	@,
	bcs	.L927	@,
	movw	r3, #:lower16:166096	@ tmp341,
	movt	r3, #:upper16:166096	@ tmp341,
	mvn	r1, #0	@,
	ldr	r2, [r4, r3]	@ i.3433, <variable>.StreamSegArray.History
	add	r6, r2, r2, asl #2	@, tmp345, i.3433, i.3433,
	add	r0, r4, r6, asl #4	@, tmp347, pSmInstArray, tmp345,
	ldrd	r6, [r0, ip]	@ D.41012, tmp347, tmp271
	mvn	r0, #0	@ tmp278,
	cmp	r7, r1	@ D.41012, tmp278
	cmpeq	r6, r0	@ D.41012, tmp278
	beq	.L931	@,
	ldrd	r0, [fp, #-52]	@,,
	cmp	r1, r7	@, D.41012
	cmpeq	r0, r6	@, D.41012
	bls	.L866	@,
	subs	r6, r0, r6	@ tmp351,, D.41012
	sbc	r7, r1, r7	@ tmp351,, D.41012
	ldrd	r0, [fp, #-92]	@,,
	cmp	r1, r7	@, tmp351
	cmpeq	r0, r6	@, tmp351
	bcc	.L931	@,
.L866:
	mov	r5, r2	@ i.3421, i.3433
.L865:
	movw	r3, #:lower16:166088	@ tmp353,
	movt	r3, #:upper16:166088	@ tmp353,
	ldr	r6, [r4, r3]	@ j.3385, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3421, j.3385
	moveq	r3, r5	@ j.3375, i.3421
	beq	.L868	@,
	movw	sl, #:lower16:166124	@ tmp629,
	movw	r7, #:lower16:166128	@ tmp631,
	movw	r5, #:lower16:954437177	@ tmp632,
	movw	r9, #:lower16:166096	@ tmp633,
	movt	sl, #:upper16:166124	@ tmp629,
	movt	r7, #:upper16:166128	@ tmp631,
	movt	r5, #:upper16:954437177	@ tmp632,
	movt	r9, #:upper16:166096	@ tmp633,
.L920:
	add	ip, r6, r6, asl #2	@, tmp357, j.3385, j.3385,
	mov	r1, r6	@, j.3385
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp359, pSmInstArray, tmp357,
	mov	ip, #2	@,
	add	r3, lr, #73728	@ tmp370, tmp359,
	add	lr, r3, #200	@ tmp360, tmp360,
	add	r3, r3, #208	@ tmp370, tmp370,
	strb	ip, [lr, #4]	@, <variable>.SegState
	ldr	lr, [r3, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, sl]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, r7]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r3, lr, r2	@ temp.3437, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	lr, ip, #1	@ temp.3439, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, r3, r3, asr #31	@ tmp378, temp.3437
	bic	r3, lr, lr, asr #31	@ tmp380, temp.3439
	str	r2, [r4, sl]	@ tmp378, <variable>.StreamSegArray.SegFreshSize
	str	r3, [r4, r7]	@ tmp380, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	add	ip, r6, #1	@ temp.3442, j.3385,
	ldr	r3, [r4, r9]	@ j.3375, <variable>.StreamSegArray.History
	smull	r0, r1, r5, ip	@, tmp381, tmp632, temp.3442
	mov	r2, ip, asr #31	@ tmp384, temp.3442,
	rsb	r0, r2, r1, asr #8	@, j.3385, tmp384, tmp381,
	add	r2, r0, r0, asl #3	@, tmp387, j.3385, j.3385,
	sub	r6, ip, r2, asl #7	@ j.3385, temp.3442, tmp387,
	cmp	r3, r6	@ j.3375, j.3385
	bne	.L920	@,
.L868:
	add	r3, r3, r3, asl #2	@, tmp393, j.3375, j.3375,
	movw	r2, #:lower16:73960	@ tmp390,
	movt	r2, #:upper16:73960	@ tmp390,
	ldr	r1, [fp, #-60]	@, %sfp
	add	r4, r4, r3, asl #4	@, tmp395, pSmInstArray, tmp393,
	mov	r0, #0	@ D.40970,
	ldrd	r2, [r2, r4]	@ <variable>.RawPts, tmp390, tmp395
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L852	@
.L941:
	add	r6, r3, #1	@ temp.3401, i,
	mov	r7, r6, asr #31	@ tmp425, temp.3401,
	mov	r2, r7, lsr #22	@ tmp426, tmp425,
	add	lr, r6, r2	@ tmp427, temp.3401, tmp426
	mov	r0, lr, asl #22	@ tmp428, tmp427,
	mov	r3, r0, lsr #22	@ tmp428, tmp428,
	rsb	r3, r2, r3	@ i, tmp426, tmp428
	b	.L928	@
.L939:
	add	r5, r5, #1	@ temp.3420, i.3421,
	smull	r1, ip, sl, r5	@, tmp279, tmp634, temp.3420
	mov	r1, r5, asr #31	@ tmp282, temp.3420,
	rsb	r6, r1, ip, asr #8	@, i.3421, tmp282, tmp279,
	add	r0, r6, r6, asl #3	@, tmp285, i.3421, i.3421,
	sub	r5, r5, r0, asl #7	@ i.3421, temp.3420, tmp285,
	b	.L927	@
.L943:
	mov	r2, r0	@,
	mov	r3, r1	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	strd	r6, [sp]	@ RawNumInVfmw,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.40970,
	b	.L852	@
.L942:
	movw	r7, #:lower16:73904	@ tmp416,
	movt	r7, #:upper16:73904	@ tmp416,
	ldr	r0, [fp, #-96]	@, %sfp
	str	r2, [r4, r7]	@ temp.3376, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L875	@
.L931:
	str	r5, [r4, r3]	@ i.3421, <variable>.StreamSegArray.History
	b	.L865	@
.L902:
	beq	.L949	@,
	bcs	.L929	@,
	movw	r1, #:lower16:73904	@ tmp549,
	movt	r1, #:upper16:73904	@ tmp549,
	ldr	r0, [r4, r1]	@ i.3391, <variable>.RawPacketArray.History
	add	r6, r0, r0, asl #3	@, tmp553, i.3391, i.3391,
	add	r8, r4, r6, asl #3	@, tmp555, pSmInstArray, tmp553,
	ldrd	r6, [r8, #184]	@, tmp555,
	strd	r6, [fp, #-76]	@,,
	mvn	r6, #0	@ tmp526,
	ldrd	r8, [fp, #-76]	@,,
	mvn	r7, #0	@,
	cmp	r9, r7	@, tmp526
	cmpeq	r8, r6	@, tmp526
	beq	.L950	@,
	ldrd	r6, [fp, #-52]	@,,
	ldrd	r8, [fp, #-76]	@,,
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bls	.L909	@,
	subs	r6, r6, r8	@,,
	sbc	r7, r7, r9	@,,
	ldrd	r8, [fp, #-92]	@,,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	bcs	.L909	@,
	str	r3, [r4, r1]	@ i.3372, <variable>.RawPacketArray.History
	ldrd	r0, [r2, #184]	@, tmp524,
	strd	r0, [fp, #-76]	@,,
.L908:
	movw	lr, #:lower16:73896	@ tmp573,
	movt	lr, #:upper16:73896	@ tmp573,
	ldr	r7, [r4, lr]	@ temp.3392, <variable>.RawPacketArray.Head
	cmp	r7, r3	@ temp.3392, i.3372
	rsbgt	r7, r7, #1024	@ tmp574, temp.3392,
	rsble	r0, r7, r3	@ DelNum.3374, temp.3392, i.3372
	addgt	r0, r7, r3	@ DelNum.3374, tmp574, i.3372
	cmp	r0, #0	@ DelNum.3374,
	bne	.L912	@,
	ldrd	r6, [fp, #-76]	@,,
	movw	r1, #:lower16:73896	@ tmp576,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r1, #:upper16:73896	@ tmp576,
	movw	r3, #:lower16:73904	@ tmp575,
	movt	r3, #:upper16:73904	@ tmp575,
	strd	r6, [r8]	@,
	ldr	ip, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L852	@
.L945:
	add	r9, r3, #1	@ D.41001, i.3372,
	mov	r2, r9, asr #31	@ tmp527, D.41001,
	mov	r7, r2, lsr #22	@ tmp528, tmp527,
	add	r3, r9, r7	@ tmp529, D.41001, tmp528
	mov	ip, r3, asl #22	@ tmp530, tmp529,
	mov	lr, ip, lsr #22	@ tmp530, tmp530,
	rsb	r3, r7, lr	@ i.3372, tmp528, tmp530
	b	.L929	@
.L947:
	movw	lr, #:lower16:73896	@ tmp439,
	movt	lr, #:upper16:73896	@ tmp439,
	ldr	ip, [r4, lr]	@ temp.3403, <variable>.RawPacketArray.Head
	cmp	r3, ip	@ i, temp.3403
	rsblt	ip, ip, #1024	@ tmp440, temp.3403,
	rsbge	r3, ip, r3	@ DelNum.3371, temp.3403, i
	addlt	r3, ip, r3	@ DelNum.3371, tmp440, i
	cmp	r3, #0	@ DelNum.3371,
	beq	.L882	@,
	movw	r7, #:lower16:166136	@ tmp441,
	movt	r7, #:upper16:166136	@ tmp441,
	ldr	r5, [r4, r7]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r3, r5	@ DelNum.3371, <variable>.SmPushRaw.PushRawNum
	cmple	r7, #1	@,,
	movne	r5, #0	@, tmp449
	moveq	r5, #1	@, tmp449
	bne	.L883	@,
.L882:
	ldr	r8, [fp, #-60]	@, %sfp
	movw	r2, #:lower16:73896	@ tmp451,
	movt	r2, #:upper16:73896	@ tmp451,
	strd	r0, [r8]	@ temp.3400,
	b	.L936	@
.L949:
	movw	r2, #:lower16:73896	@ tmp541,
	movt	r2, #:upper16:73896	@ tmp541,
	ldr	r1, [r4, r2]	@ temp.3386, <variable>.RawPacketArray.Head
	cmp	r1, r3	@ temp.3386, i.3372
	rsbgt	r1, r1, #1024	@ tmp542, temp.3386,
	rsble	r0, r1, r3	@ DelNum.3373, temp.3386, i.3372
	addgt	r0, r1, r3	@ DelNum.3373, tmp542, i.3372
	cmp	r0, #0	@ DelNum.3373,
	bne	.L906	@,
	ldr	r1, [fp, #-60]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp544,
	movt	r3, #:upper16:73896	@ tmp544,
	movw	ip, #:lower16:73904	@ tmp543,
	movt	ip, #:upper16:73904	@ tmp543,
	strd	r8, [r1]	@ D.41042,
	ldr	lr, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	lr, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L852	@
.L948:
	movw	ip, #:lower16:166088	@ tmp297,
	movt	ip, #:upper16:166088	@ tmp297,
	ldr	r7, [r4, ip]	@ j.3412, <variable>.StreamSegArray.Head
	cmp	r5, r7	@ i.3421, j.3412
	beq	.L862	@,
	movw	lr, #:lower16:954437177	@ tmp626,
	movt	lr, #:upper16:954437177	@ tmp626,
	movw	r9, #:lower16:166124	@ tmp623,
	movw	sl, #:lower16:166128	@ tmp625,
	movt	r9, #:upper16:166124	@ tmp623,
	movt	sl, #:upper16:166128	@ tmp625,
	str	r6, [fp, #-52]	@ tmp590, %sfp
	mov	r6, lr	@ tmp626, tmp626
.L919:
	add	ip, r7, r7, asl #2	@, tmp301, j.3412, j.3412,
	mov	r1, r7	@, j.3412
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp303, pSmInstArray, tmp301,
	mov	ip, #2	@,
	add	r3, r2, #73728	@ tmp314, tmp303,
	add	r2, r3, #200	@ tmp304, tmp304,
	add	lr, r3, #208	@ tmp314, tmp314,
	strb	ip, [r2, #4]	@, <variable>.SegState
	ldr	r2, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, r9]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	lr, [r4, sl]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r2, r2, r3	@ temp.3426, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	r3, lr, #1	@ temp.3428, <variable>.StreamSegArray.SegFreshNum,
	bic	ip, r2, r2, asr #31	@ tmp322, temp.3426
	bic	lr, r3, r3, asr #31	@ tmp324, temp.3428
	str	ip, [r4, r9]	@ tmp322, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, sl]	@ tmp324, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r7, #1	@ temp.3431, j.3412,
	smull	r0, r2, r6, r1	@, tmp325, tmp626, temp.3431
	mov	ip, r1, asr #31	@ tmp328, temp.3431,
	rsb	r3, ip, r2, asr #8	@, j.3412, tmp328, tmp325,
	add	r0, r3, r3, asl #3	@, tmp331, j.3412, j.3412,
	sub	r7, r1, r0, asl #7	@ j.3412, temp.3431, tmp331,
	cmp	r5, r7	@ i.3421, j.3412
	bne	.L919	@,
	ldr	r6, [fp, #-52]	@ tmp590, %sfp
.L862:
	add	r5, r6, r5	@ tmp336, tmp590, i.3421
	movw	r3, #:lower16:73960	@ tmp333,
	movt	r3, #:upper16:73960	@ tmp333,
	ldr	r1, [fp, #-60]	@, %sfp
	add	r4, r4, r5, asl #4	@, tmp338, pSmInstArray, tmp336,
	mov	r0, #0	@ D.40970,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp333, tmp338
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L852	@
.L946:
	str	r2, [r4, sl]	@ temp.3380, <variable>.RawPacketArray.History
	ldr	r0, [fp, #-96]	@, %sfp
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L899	@
.L886:
	mov	r3, r1	@ i, i.3408
	b	.L885	@
.L909:
	mov	r3, r0	@ i.3372, i.3391
	b	.L908	@
.L912:
	ldrd	r6, [fp, #-76]	@,,
	movw	r3, #:lower16:73896	@ tmp579,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r3, #:upper16:73896	@ tmp579,
	strd	r6, [r8]	@,
.L934:
	ldr	lr, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:73904	@ tmp578,
	movt	r2, #:upper16:73904	@ tmp578,
	mov	r1, r0	@, DelNum.3374
	ldr	r0, [fp, #-96]	@, %sfp
	str	lr, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.40970,
	b	.L852	@
.L906:
	ldr	r2, [fp, #-60]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp547,
	movt	r3, #:upper16:73896	@ tmp547,
	strd	r8, [r2]	@ D.41042,
	b	.L934	@
.L950:
	str	r3, [r4, r1]	@ i.3372, <variable>.RawPacketArray.History
	ldrd	r0, [r5]	@, <variable>.Pts
	strd	r0, [fp, #-76]	@,,
	b	.L908	@
.L890:
	ldrd	r6, [fp, #-76]	@,,
	movw	r1, #:lower16:73896	@ tmp499,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r1, #:upper16:73896	@ tmp499,
	movw	r2, #:lower16:73904	@ tmp498,
	strd	r6, [r8]	@,
	ldr	ip, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L935:
	movt	r2, #:upper16:73904	@ tmp498,
	mov	r1, r3	@, DelNum
	ldr	r0, [fp, #-96]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, r5	@, tmp493
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@ D.40970, tmp493
	b	.L852	@
.L883:
	ldr	r2, [fp, #-60]	@, %sfp
	movw	ip, #:lower16:73896	@ tmp455,
	movt	ip, #:upper16:73896	@ tmp455,
	strd	r0, [r2]	@ temp.3400,
	movw	r2, #:lower16:73904	@ tmp454,
	ldr	ip, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L935	@
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1398:
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
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp149,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp149,
	mov	r4, r0	@ MemAddr, MemAddr
	mov	r5, r1	@ MemSize, MemSize
	mov	r6, r2	@ RegAddr, RegAddr
	ldr	r0, [ip, #8]	@ D.39275, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r7, r3	@ ResetRegAddr, ResetRegAddr
	cmp	r0, #0	@ D.39275,
	beq	.L952	@,
	blx	r0	@ D.39275
.L953:
	movw	r8, #:lower16:.LANCHOR0	@ tmp151,
	movt	r8, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r3, [r8, #780]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	bne	.L957	@,
.L954:
	mvn	r0, #6	@ D.39283,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L952:
	movw	r1, #:lower16:.LC53	@,
	mov	r2, #1440	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	b	.L953	@
.L957:
	bl	ResetSCD	@
	add	r9, r4, #3	@ tmp156, MemAddr,
	mov	r1, #800	@,
	mov	r0, r8	@, tmp151
	bl	__memzero	@
	bic	r0, r9, #3	@ tmp157, tmp156,
	rsb	r9, r4, r0	@ Offset, MemAddr, tmp157
	str	r4, [r8, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	add	r0, r9, r4	@ D.39291, Offset, MemAddr
	mov	sl, #0	@ tmp155,
	str	r5, [r8, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	sl, [r8, #800]	@ tmp155, s_eScdDrvSleepStage
	str	r0, [r8, #8]	@ D.39291, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	ip, r9, #12288	@ D.39296, Offset,
	mov	r2, #12288	@ tmp163,
	add	r1, ip, r4	@ temp.3473, D.39296, MemAddr
	str	r2, [r8, #16]	@ tmp163, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r1, [r8, #20]	@ temp.3473, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r8, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r1	@, temp.3473
	bl	MEM_Phy2Vir	@
	add	r3, r9, r4	@ tmp168, Offset, MemAddr
	add	ip, r3, #21504	@ tmp169, tmp168,
	mov	r2, #9216	@ tmp167,
	add	r4, ip, #127	@ tmp169, tmp169,
	str	r2, [r8, #28]	@ tmp167, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r4, r4, #127	@ g_hex_base_addr.484, tmp169,
	str	r4, [r8, #1008]	@ g_hex_base_addr.484, g_hex_base_addr
	add	r9, r9, #39424	@ tmp177, Offset,
	str	r0, [r8, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r4	@, g_hex_base_addr.484
	bl	MEM_Phy2Vir	@
	cmp	r5, r9	@ MemSize, tmp177
	mov	r1, #17920	@ tmp174,
	str	r6, [r8, #68]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r7, [r8, #72]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r1, [r8, #1016]	@ tmp174, g_hex_len
	str	r0, [r8, #1012]	@, g_hex_base_vir_addr
	blt	.L954	@,
	ldr	lr, [r8, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	lr, sl	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L954	@,
	ldr	r3, [r8, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, sl	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L954	@,
	add	r0, r8, #796	@, tmp151,
	mov	r1, #1	@ tmp183,
	str	r1, [r8, #780]	@ tmp183, s_SmIIS.IsScdDrvOpen
	bl	OSAL_InitIntrMutex	@
	mov	r0, sl	@ D.39283, tmp155
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	SM_DeletDSPCtxMem
	.type	SM_DeletDSPCtxMem, %function
SM_DeletDSPCtxMem:
	.fnstart
.LFB1397:
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
	ldr	r5, .L963	@ tmp137,
	add	r6, r0, r0, asl #3	@, tmp140, SmID, SmID,
	add	r4, r5, r6, asl #2	@, pstDSPMem, tmp137, tmp140,
	ldr	r0, [r4, #12]	@ D.39256, <variable>.DspSpsMsgMemAddr
	cmp	r0, #0	@ D.39256,
	bne	.L962	@,
	ldr	r0, [r4, #16]	@, <variable>.pDspSpsMsgMemVirAddr
	bl	KernelMunmap	@
	ldr	r0, [r5, r6, asl #2]	@, <variable>.stBaseMemInfo.PhyAddr
	ldmib	r4, {r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L962:
	ldr	r1, [r4, #16]	@, <variable>.pDspSpsMsgMemVirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r5, r6, asl #2]	@, <variable>.stBaseMemInfo.PhyAddr
	ldmib	r4, {r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L964:
	.align	2
.L963:
	.word	.LANCHOR0+76
	.fnend
	.size	SM_DeletDSPCtxMem, .-SM_DeletDSPCtxMem
	.align	2
	.global	SM_AllocDSPCtxMem
	.type	SM_AllocDSPCtxMem, %function
SM_AllocDSPCtxMem:
	.fnstart
.LFB1396:
	@ args = 0, pretend = 0, frame = 16
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
	sub	r4, fp, #40	@ tmp147,,
	mov	r5, #0	@ tmp148,
	mov	r6, r0	@ SmID, SmID
	mov	r1, r5	@, tmp148
	movw	r0, #:lower16:.LC142	@,
	movw	r2, #9248	@,
	movt	r0, #:upper16:.LC142	@,
	mov	r3, r4	@, tmp147
	str	r5, [sp, #0]	@ tmp148,
	bl	MEM_AllocMemBlock	@
	subs	r7, r0, #0	@ D.39213,
	bne	.L966	@,
	ldr	r0, .L975	@ tmp150,
	add	r6, r6, r6, asl #3	@, tmp153, SmID, SmID,
	ldr	r1, [fp, #-36]	@, stTempMem.VirAddr
	add	r6, r0, r6, asl #2	@, pstDSPMem, tmp150, tmp153,
	ldr	r2, [fp, #-32]	@, stTempMem.Length
	ldr	r0, [fp, #-40]	@, stTempMem.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r5, [fp, #-40]	@ MemAddr, stTempMem.PhyAddr
	ldmia	r4, {r0, r1, r2}	@ tmp147,,,
	add	r3, r5, #3	@ tmp160, MemAddr,
	bic	r4, r3, #3	@ tmp161, tmp160,
	rsb	r4, r5, r4	@ Offset, MemAddr, tmp161
	add	ip, r4, r5	@ D.39225, Offset, MemAddr
	str	ip, [r6, #12]	@ D.39225, <variable>.DspSpsMsgMemAddr
	stmia	r6, {r0, r1, r2}	@ pstDSPMem,,,
	mov	r0, ip	@, D.39225
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.39227,
	str	r0, [r6, #16]	@ D.39227, <variable>.pDspSpsMsgMemVirAddr
	beq	.L973	@,
	mov	r1, #1024	@ tmp164,
	add	r5, r5, #1024	@ tmp165, MemAddr,
	str	r1, [r6, #20]	@ tmp164, <variable>.DspSpsMsgMemSize
	bl	__memzero	@
	add	r0, r5, r4	@ temp.3536, tmp165, Offset
	str	r0, [r6, #24]	@ temp.3536, <variable>.DspPpsMsgMemAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.39239,
	str	r0, [r6, #28]	@ D.39239, <variable>.pDspPpsMsgMemVirAddr
	beq	.L974	@,
	mov	r1, #8192	@ tmp167,
	str	r1, [r6, #32]	@ tmp167, <variable>.DspPpsMsgMemSize
	bl	__memzero	@
	mov	r0, r7	@ D.39221, D.39213
.L969:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L966:
	mov	r0, r5	@, tmp148
	movw	r1, #:lower16:.LC143	@,
	movw	r2, #1374	@,
	movt	r1, #:upper16:.LC143	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.39221,
	b	.L969	@
.L974:
	movw	r1, #:lower16:.LC145	@,
	movw	r2, #1397	@,
	movt	r1, #:upper16:.LC145	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.39221,
	b	.L969	@
.L973:
	movw	r1, #:lower16:.LC144	@,
	movw	r2, #1386	@,
	movt	r1, #:upper16:.LC144	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.39221,
	b	.L969	@
.L976:
	.align	2
.L975:
	.word	.LANCHOR0+76
	.fnend
	.size	SM_AllocDSPCtxMem, .-SM_AllocDSPCtxMem
	.align	2
	.global	WriteHexFile
	.type	WriteHexFile, %function
WriteHexFile:
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
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:kmalloc_caches	@ tmp154,
	movt	r3, #:upper16:kmalloc_caches	@ tmp154,
	movw	r6, #:lower16:.LANCHOR0	@ tmp200,
	mov	r4, r0	@ eVidStd, eVidStd
	movt	r6, #:upper16:.LANCHOR0	@ tmp200,
	ldr	r3, [r3, #24]	@ s, kmalloc_caches
	mov	r0, #0	@ tmp151,
	movw	r2, #:lower16:-121389056	@ tmp153,
	str	r0, [fp, #-48]	@ tmp151, dataInt
	cmp	r3, r0	@ s,
	movt	r2, #:upper16:-121389056	@ tmp153,
	str	r2, [r6, #808]	@ tmp153, s_RegPhyBaseAddr
	moveq	r7, #16	@ prephitmp.3551,
	beq	.L979	@,
	mov	r0, r3	@, s
	mov	r1, #32	@,
	mov	r2, #20	@,
	bl	kmem_cache_alloc_trace	@
	mov	r7, r0	@ prephitmp.3551,
.L979:
	mov	r9, sp	@,
	bic	r8, r9, #8128	@ tmp155,,
	bic	r1, r8, #63	@ tmp155, tmp155,
	cmp	r4, #6	@ eVidStd,
	mov	r9, #0	@ tmp159,
	ldr	r8, [r1, #8]	@, <variable>.addr_limit
	str	r8, [fp, #-72]	@, %sfp
	str	r9, [r1, #8]	@ tmp159, <variable>.addr_limit
	beq	.L990	@,
	cmp	r4, #0	@ eVidStd,
	beq	.L991	@,
	movw	r1, #:lower16:.LC148	@,
	mov	r2, r4	@, eVidStd
	mov	r0, r9	@, tmp159
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
.L983:
	mov	sl, sp	@,
	bic	r4, sl, #8128	@ tmp165,,
	bic	ip, r4, #63	@ tmp165, tmp165,
	sub	sl, fp, #44	@ tmp201,,
	mov	r5, #0	@ tmp167,
	mov	r2, #0	@ tmp168,
	str	r5, [ip, #8]	@ tmp167, <variable>.addr_limit
	mov	r3, #0	@,
	mov	r4, r5	@ ivtmp.3572, tmp167
	strd	r2, [sl, #-16]!	@ tmp168, tmp201,
	str	r9, [fp, #-80]	@ fp, %sfp
	b	.L985	@
.L986:
	ldrd	r8, [fp, #-68]	@,,
	strd	r8, [fp, #-60]	@,,
	bl	sscanf	@
	ldr	r2, [r6, #1008]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [fp, #-48]	@, dataInt
	add	r0, r5, r2	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L985:
	mov	r1, r7	@, prephitmp.3551
	mov	r2, #10	@,
	mov	r3, sl	@, tmp201
	ldr	r0, [fp, #-80]	@, %sfp
	bl	vfs_read	@
	add	r4, r4, #10	@ ivtmp.3572, ivtmp.3572,
	movw	r1, #:lower16:.LC150	@,
	sub	r2, fp, #48	@,,
	mov	r8, r4	@, ivtmp.3572
	mov	r9, r8, asr #31	@
	strd	r8, [fp, #-68]	@,,
	movt	r1, #:upper16:.LC150	@,
	subs	r8, r0, #0	@ D.38410,
	mov	r0, r7	@, prephitmp.3551
	bne	.L986	@,
	ldr	lr, [fp, #-80]	@ fp, %sfp
	mov	r1, r8	@, D.38410
	mov	r9, sp	@,
	mov	r0, lr	@, fp
	bl	filp_close	@
	ldr	r2, [fp, #-72]	@, %sfp
	ldr	r1, [r6, #1016]	@ g_hex_len, g_hex_len
	bic	ip, r9, #8128	@ tmp177,,
	bic	r3, ip, #63	@ tmp177, tmp177,
	ldr	r0, [r6, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r2, [r3, #8]	@, <variable>.addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r6, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r6, #1008]	@, g_hex_base_addr
	add	r0, ip, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r6, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r8	@, D.38410
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, #808]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L987:
	movw	r0, #:lower16:-121388796	@,
	movt	r0, #:upper16:-121388796	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L987	@,
	mov	r0, r7	@, prephitmp.3551
	bl	kfree	@
.L988:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L991:
	movw	r0, #:lower16:.LC147	@,
	mov	r1, r4	@, eVidStd
	movt	r0, #:upper16:.LC147	@,
	movw	r2, #438	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L981:
	cmn	r9, #4096	@ fp,
	bls	.L983	@,
	mov	r2, r4	@, eVidStd
	movw	r1, #:lower16:.LC149	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	b	.L988	@
.L990:
	mov	r1, r9	@, tmp159
	movw	r0, #:lower16:.LC146	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC146	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L981	@
	.fnend
	.size	WriteHexFile, .-WriteHexFile
	.global	g_hex_flag
	.global	ForeceRelease
	.global	s_RegPhyBaseAddr
	.global	s_RegPhyBaseAddr_1
	.global	g_pSmIIS
	.global	g_hex_base_vir_addr
	.global	g_hex_base_addr
	.global	g_hex_len
	.global	s_SmIIS
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.39015, %object
	.size	__func__.39015, 17
__func__.39015:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	CSWTCH.671, %object
	.size	CSWTCH.671, 44
CSWTCH.671:
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
	.type	__func__.41555, %object
	.size	__func__.41555, 17
__func__.41555:
	.ascii	"PrintScdSegState\000"
	.space	3
	.type	__func__.41442, %object
	.size	__func__.41442, 17
__func__.41442:
	.ascii	"PrintScdRawState\000"
	.space	3
	.type	__func__.40278, %object
	.size	__func__.40278, 11
__func__.40278:
	.ascii	"GetNextVop\000"
	.space	1
	.type	__func__.40372, %object
	.size	__func__.40372, 17
__func__.40372:
	.ascii	"ProcessScdReturn\000"
	.space	3
	.type	__func__.41151, %object
	.size	__func__.41151, 18
__func__.41151:
	.ascii	"SM_DoNextInstance\000"
	.space	2
	.type	__func__.41261, %object
	.size	__func__.41261, 19
__func__.41261:
	.ascii	"SM_SCDIntServeProc\000"
	.space	1
	.type	__func__.40719, %object
	.size	__func__.40719, 12
__func__.40719:
	.ascii	"FillRawData\000"
	.data
	.align	2
	.type	g_hex_flag, %object
	.size	g_hex_flag, 4
g_hex_flag:
	.word	1
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
	.ascii	"line; %d, Flag = %d, pSmInstArray = %p\012\000"
.LC53:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC54:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC55:
	.ascii	"0x%02x,\000"
.LC56:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC57:
	.ascii	"Release Err StreamID %d in function %s\012\000"
.LC58:
	.ascii	"line: %d Get SmID fail!\000"
.LC59:
	.ascii	"DelRaw err PacketNum=%d,DelNum=%d\012\000"
	.space	1
.LC60:
	.ascii	"Release RawPhyAddr=0x%x,Len=%d\012\000"
.LC61:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC62:
	.ascii	"SetMaxSegSize get eCapLevel failed!\012\000"
	.space	3
.LC63:
	.ascii	"SetMaxSegSize get ChanWidth/ChanHeight failed!\012\000"
.LC64:
	.ascii	"SegHead=%d\012\000"
.LC65:
	.ascii	"SegTail=%d\012\000"
.LC66:
	.ascii	"SegCurrent=%d\012\000"
	.space	1
.LC67:
	.ascii	"SegBufPhyAddr=%p\012\000"
	.space	2
.LC68:
	.ascii	"SegBufVirAddr=%p\012\000"
	.space	2
.LC69:
	.ascii	"SegBufSize=%d\012\000"
	.space	1
.LC70:
	.ascii	"SegBufReadAddr=%p\012\000"
	.space	1
.LC71:
	.ascii	"SegBufWriteAddr=%pd\012\000"
	.space	3
.LC72:
	.ascii	"%s %d FMW_OK !=  GetSegStreamNum\012\000"
	.space	2
.LC73:
	.ascii	"SegPhyAddr=0x%x\012\000"
	.space	3
.LC74:
	.ascii	"SegVirAddr=0x%x\012\000"
	.space	3
.LC75:
	.ascii	"SegLength=%d\012\000"
	.space	2
.LC76:
	.ascii	"SegStreamID=%d\012\000"
.LC77:
	.ascii	"SegState=%d\012\000"
	.space	3
.LC78:
	.ascii	"SegIsLastSeg=%d\012\000"
	.space	3
.LC79:
	.ascii	"SegPts=%lld\012\000"
	.space	3
.LC80:
	.ascii	"RawHead=%d\012\000"
.LC81:
	.ascii	"RawTail=%d\012\000"
.LC82:
	.ascii	"RawHistory=%d\012\000"
	.space	1
.LC83:
	.ascii	"RawFirstPacketOffset=%d\012\000"
	.space	3
.LC84:
	.ascii	"CurShowIndex=%d\012\000"
	.space	3
.LC85:
	.ascii	"%s %d FMW_OK !=  GetRawStreamNum!!\012\000"
.LC86:
	.ascii	"RawPhyAddr=0x%x\012\000"
	.space	3
.LC87:
	.ascii	"RawVirAddr=0x%x\012\000"
	.space	3
.LC88:
	.ascii	"RawLength=%d\012\000"
	.space	2
.LC89:
	.ascii	"RawPts=%ld\012\000"
.LC90:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC91:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC92:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC93:
	.ascii	"UpLen = %x\012\000"
.LC94:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC95:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC96:
	.ascii	"BufferIni = %x\012\000"
.LC97:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC98:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC99:
	.ascii	"%s %d FMW_OK !=  GetSegStreamNum!!\012\000"
.LC100:
	.ascii	"scd time out: t_start,t_now,t_wait = %d,%d,%d\012\000"
	.space	1
.LC101:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC102:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC103:
	.ascii	"SmID = %d is not expected!\012\000"
.LC104:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC105:
	.ascii	"Raw packet(VFMW_RAW YUV) TOO BIG(maybe caused by w/"
	.ascii	"h... err)! can't copy to seg!\012\000"
	.space	2
.LC106:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC107:
	.ascii	"VFMW_RAW YUV disp w/h err)! discard raw packet!\012"
	.ascii	"\000"
	.space	3
.LC108:
	.ascii	"***Print Up Msg Now\012\000"
	.space	3
.LC109:
	.ascii	"ScdUpMsg[%d] = 0x%x\012\000"
	.space	3
.LC110:
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC111:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC112:
	.ascii	"line: %d, pSmInstArray is NULL!\012\000"
	.space	3
.LC113:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC114:
	.ascii	"Error! (PushRawTotalLen - SrcEaten) > SM_RAW_DISCAR"
	.ascii	"D_SIZE, packet discard...\012\000"
	.space	2
.LC115:
	.ascii	"Insert err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,Is"
	.ascii	"LastSeg=%d\012\000"
	.space	1
.LC116:
	.ascii	"RawLen = %d, Pts = %ld, \012\000"
	.space	2
.LC117:
	.ascii	"Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg=%d\012"
	.ascii	"\000"
.LC118:
	.ascii	"line %d CheckSeg err\012\000"
	.space	2
.LC119:
	.ascii	"line %d SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC120:
	.ascii	"line %d Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLas"
	.ascii	"tSeg=%d\012\000"
.LC121:
	.ascii	"RawLen = %d, Pts =  %lld, \012\000"
.LC122:
	.ascii	"CheckSeg err\012\000"
	.space	2
.LC123:
	.ascii	"SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC124:
	.ascii	"%s %d FMW_OK != GetSegStreamNum!!\012\000"
	.space	1
.LC125:
	.ascii	"Insert 2 err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,"
	.ascii	"IsLastSeg=%d\012\000"
	.space	3
.LC126:
	.ascii	"ReadScdSegNum = %d, FilterScdSegNum = 0 release raw"
	.ascii	" packet anyway!\012\000"
.LC127:
	.ascii	"Raw packet TOO BIG! can't copy to seg! Len: %#x\012"
	.ascii	"\000"
	.space	3
.LC128:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC129:
	.ascii	"RawStreamNum=%d\012\000"
	.space	3
.LC130:
	.ascii	"SegStreamNum=%d\012\000"
	.space	3
.LC131:
	.ascii	"SegStreamSize=%d\012\000"
	.space	2
.LC132:
	.ascii	"RawStreamSize=%d\012\000"
	.space	2
.LC133:
	.ascii	"VFMW_RAW SM_CopyYuvToDnr fail\012\000"
	.space	1
.LC134:
	.ascii	"long time(%d ms) not release stream seg, release an"
	.ascii	"yway!\012\000"
	.space	2
.LC135:
	.ascii	"raw_pts: %lld\012\000"
	.space	1
.LC136:
	.ascii	"Get RawPhyAddr=0x%x,Len=%d\012\000"
.LC137:
	.ascii	"!!!push raw err!!!\012\000"
.LC138:
	.ascii	"DisContinueRawPacket found! %d ---> %d\012\000"
.LC139:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC140:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC141:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC142:
	.ascii	"VFMW_DspCtxMem\000"
	.space	1
.LC143:
	.ascii	"Line: %d  Alloc mem for DSP (SPS PPS) failed!\012\000"
	.space	1
.LC144:
	.ascii	"Line: %d  pDspSpsMsgMemVirAddr is NULL!\012\000"
	.space	3
.LC145:
	.ascii	"Line: %d  pDspPpsMsgMemVirAddr is NULL!\012\000"
	.space	3
.LC146:
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC147:
	.ascii	"/kmod/h264_vfmw.hex\000"
.LC148:
	.ascii	"eVidStd = %d not have DSP code\012\000"
.LC149:
	.ascii	"Cannot open DSP code for eVidStd(%d)\012\000"
	.space	2
.LC150:
	.ascii	"%x\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_SmIIS, %object
	.size	s_SmIIS, 800
s_SmIIS:
	.space	800
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
	.type	LastEventTime.39767, %object
	.size	LastEventTime.39767, 4
LastEventTime.39767:
	.space	4
	.type	last_rec_pos_time.41147, %object
	.size	last_rec_pos_time.41147, 64
last_rec_pos_time.41147:
	.space	64
	.type	last_rec_pos_time.41260, %object
	.size	last_rec_pos_time.41260, 64
last_rec_pos_time.41260:
	.space	64
	.type	last_rec_pos_time.40712, %object
	.size	last_rec_pos_time.40712, 64
last_rec_pos_time.40712:
	.space	64
	.type	g_hex_base_addr, %object
	.size	g_hex_base_addr, 4
g_hex_base_addr:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	g_hex_len, %object
	.size	g_hex_len, 4
g_hex_len:
	.space	4
	.type	ForeceRelease, %object
	.size	ForeceRelease, 4
ForeceRelease:
	.space	4
	.type	s_RegPhyBaseAddr_1, %object
	.size	s_RegPhyBaseAddr_1, 4
s_RegPhyBaseAddr_1:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
