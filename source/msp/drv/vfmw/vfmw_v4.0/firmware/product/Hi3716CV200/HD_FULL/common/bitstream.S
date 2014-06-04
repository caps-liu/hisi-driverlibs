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
	.file	"bitstream.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(bitstream)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.bitstream.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/bitstream.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/bitstream.o -O2 -Wall -Wundef
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
	.global	ZerosMS_32
	.type	ZerosMS_32, %function
ZerosMS_32:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldrb	r2, [r3, r0, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.452, CalcZeroNum
	cmp	r2, #8	@ tmpZeroNum.452,
	bne	.L3	@,
	mov	ip, r0, asl #8	@ data.453, data,
	ldrb	r1, [r3, ip, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.456, CalcZeroNum
	cmp	r1, #8	@ tmpZeroNum.456,
	add	r2, r2, r1	@ ZeroNum, tmpZeroNum.452, tmpZeroNum.456
	bne	.L3	@,
	mov	ip, r0, asl #16	@ data.457, data,
	ldrb	r1, [r3, ip, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.460, CalcZeroNum
	cmp	r1, #8	@ tmpZeroNum.460,
	add	r2, r2, r1	@ ZeroNum, ZeroNum, tmpZeroNum.460
	moveq	r0, r0, asl #24	@ tmp149, data,
	ldreqb	r3, [r3, r0, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum, CalcZeroNum
	addeq	r2, r2, r3	@ ZeroNum, ZeroNum, tmpZeroNum
.L3:
	mov	r0, r2	@, ZeroNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ZerosMS_32, .-ZerosMS_32
	.align	2
	.global	BsInit
	.type	BsInit, %function
BsInit:
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
	bic	r3, r1, #3	@ D.30386, pInput,
	add	ip, r3, #8	@ tmp141, D.30386,
	str	r2, [r0, #16]	@ length, <variable>.BsLen
	str	ip, [r0, #4]	@ tmp141, <variable>.pTail
	and	r5, r1, #3	@ tmp160, pInput,
	str	r3, [r0, #0]	@ D.30386, <variable>.pHead
	ldr	r2, [r3, #0]	@ Data,* D.30386
	mov	r1, r5, asl #3	@ tmp161, tmp160,
	and	r4, r2, #65280	@ tmp145, Data,
	and	ip, r2, #16711680	@ tmp148, Data,
	mov	r5, r2, asl #24	@ tmp143, Data,
	orr	r2, r5, r2, lsr #24	@, tmp144, tmp143, Data,
	orr	r2, r2, r4, asl #8	@, tmp147, tmp144, tmp145,
	mov	r4, #0	@ tmp162,
	orr	r2, r2, ip, lsr #8	@, tmp150, tmp147, tmp148,
	str	r2, [r0, #8]	@ tmp150, <variable>.Bufa
	ldr	r3, [r3, #4]	@ Data.485,
	str	r4, [r0, #24]	@ tmp162, <variable>.TotalPos
	and	ip, r3, #65280	@ tmp154, Data.485,
	and	r2, r3, #16711680	@ tmp157, Data.485,
	mov	r4, r3, asl #24	@ tmp152, Data.485,
	str	r1, [r0, #20]	@ tmp161, <variable>.BufPos
	orr	r3, r4, r3, lsr #24	@, tmp153, tmp152, Data.485,
	orr	r1, r3, ip, asl #8	@, tmp156, tmp153, tmp154,
	orr	r3, r1, r2, lsr #8	@, tmp159, tmp156, tmp157,
	str	r3, [r0, #12]	@ tmp159, <variable>.Bufb
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BsInit, .-BsInit
	.align	2
	.global	BsPos
	.type	BsPos, %function
BsPos:
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
	ldr	r0, [r0, #24]	@, <variable>.TotalPos
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BsPos, .-BsPos
	.align	2
	.global	BsGet
	.type	BsGet, %function
BsGet:
	.fnstart
.LFB1359:
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
	ldr	r2, [r0, #20]	@ D.30647, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	add	ip, r1, r2	@ ABBufPos, nBits, D.30647
	cmp	ip, #32	@ ABBufPos,
	ble	.L11	@,
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsb	r0, r2, #32	@ tmp143, D.30647,
	ldr	r7, [r3, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r5, r1, #32	@ tmp146, nBits,
	ldr	r6, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	mov	r0, r4, lsr r0	@ tmp144, <variable>.Bufb,
	orr	r2, r0, r7, asl r2	@, Data.541, tmp144, <variable>.Bufa,
	add	r1, r6, r1	@ tmp148, <variable>.TotalPos, nBits
	str	r1, [r3, #24]	@ tmp148, <variable>.TotalPos
	mov	r0, r2, lsr r5	@ D.30640, Data.541,
.L12:
	ldr	r1, [r3, #4]	@ tmp167, <variable>.pTail
	sub	r5, ip, #32	@ tmp154, ABBufPos,
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	str	r5, [r3, #20]	@ tmp154, <variable>.BufPos
	ldr	r2, [r1], #4	@ Data1,
	and	r4, r2, #65280	@ tmp160, Data1,
	and	ip, r2, #16711680	@ tmp163, Data1,
	mov	r5, r2, asl #24	@ tmp158, Data1,
	str	r1, [r3, #4]	@ tmp167, <variable>.pTail
	orr	r2, r5, r2, lsr #24	@, tmp159, tmp158, Data1,
	orr	r1, r2, r4, asl #8	@, tmp162, tmp159, tmp160,
	orr	r2, r1, ip, lsr #8	@, tmp165, tmp162, tmp163,
	str	r2, [r3, #12]	@ tmp165, <variable>.Bufb
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L11:
	ldr	r0, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r4, r1, #32	@ tmp151, nBits,
	ldr	r5, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	mov	r2, r0, asl r2	@ tmp149, <variable>.Bufa,
	add	r1, r5, r1	@ tmp153, <variable>.TotalPos, nBits
	str	r1, [r3, #24]	@ tmp153, <variable>.TotalPos
	mov	r0, r2, lsr r4	@ D.30640, tmp149,
	beq	.L16	@,
	str	ip, [r3, #20]	@ ABBufPos, <variable>.BufPos
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L16:
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	b	.L12	@
	.fnend
	.size	BsGet, .-BsGet
	.align	2
	.global	BsShow
	.type	BsShow, %function
BsShow:
	.fnstart
.LFB1360:
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
	ldr	r3, [r0, #20]	@ D.30421, <variable>.BufPos
	add	r2, r1, r3	@ tmp140, nBits, D.30421
	cmp	r2, #32	@ tmp140,
	bgt	.L21	@,
	ldr	r0, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r1, r1, #32	@ tmp148, nBits,
	mov	r3, r0, asl r3	@ tmp146, <variable>.Bufa,
	mov	r0, r3, lsr r1	@ Data, tmp146,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L21:
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsb	ip, r3, #32	@ tmp142, D.30421,
	ldr	r2, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r1, r1, #32	@ tmp145, nBits,
	mov	r0, r4, lsr ip	@ tmp143, <variable>.Bufb,
	orr	r3, r0, r2, asl r3	@, Data.573, tmp143, <variable>.Bufa,
	mov	r0, r3, lsr r1	@ Data, Data.573,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BsShow, .-BsShow
	.align	2
	.global	BsSkip
	.type	BsSkip, %function
BsSkip:
	.fnstart
.LFB1361:
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
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	ldr	ip, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	mov	r3, r0	@ pBS, pBS
	add	r2, r1, r2	@ ABBufPos, nBits, <variable>.BufPos
	cmp	r2, #31	@ ABBufPos,
	add	r0, ip, r1	@ tmp140, <variable>.TotalPos, nBits
	strle	r2, [r3, #20]	@ ABBufPos, <variable>.BufPos
	str	r0, [r3, #24]	@ tmp140, <variable>.TotalPos
	ble	.L24	@,
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r2, #32	@ tmp141, ABBufPos,
	ldr	r0, [r3, #4]	@ tmp154, <variable>.pTail
	str	r5, [r3, #20]	@ tmp141, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [r0], #4	@ Data1,
	and	r4, r2, #65280	@ tmp147, Data1,
	and	ip, r2, #16711680	@ tmp150, Data1,
	mov	r5, r2, asl #24	@ tmp145, Data1,
	str	r0, [r3, #4]	@ tmp154, <variable>.pTail
	orr	r0, r5, r2, lsr #24	@, tmp146, tmp145, Data1,
	orr	r2, r0, r4, asl #8	@, tmp149, tmp146, tmp147,
	orr	r0, r2, ip, lsr #8	@, tmp152, tmp149, tmp150,
	str	r0, [r3, #12]	@ tmp152, <variable>.Bufb
.L24:
	mov	r0, r1	@, nBits
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BsSkip, .-BsSkip
	.align	2
	.global	BsBack
	.type	BsBack, %function
BsBack:
	.fnstart
.LFB1362:
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
	ldr	r2, [r0, #24]	@ D.30465, <variable>.TotalPos
	ldr	ip, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	cmp	r1, r2	@ nBits, D.30465
	movlt	r0, r1	@ nBits.624, nBits
	movge	r0, r2	@ nBits.624, D.30465
	subs	ip, ip, r0	@ PredBufPos, <variable>.BufPos, nBits.624
	rsb	r2, r0, r2	@ tmp142, nBits.624, D.30465
	strpl	ip, [r3, #20]	@ PredBufPos, <variable>.BufPos
	str	r2, [r3, #24]	@ tmp142, <variable>.TotalPos
	ldmplfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r2, [r3, #4]	@ <variable>.pTail, <variable>.pTail
	add	r4, ip, #32	@ tmp154, PredBufPos,
	ldr	r1, [r3, #8]	@ <variable>.Bufa, <variable>.Bufa
	sub	r2, r2, #4	@ D.30474, <variable>.pTail,
	str	r2, [r3, #4]	@ D.30474, <variable>.pTail
	str	r1, [r3, #12]	@ <variable>.Bufa, <variable>.Bufb
	ldr	r2, [r2, #-8]	@ Data1,
	str	r4, [r3, #20]	@ tmp154, <variable>.BufPos
	and	ip, r2, #65280	@ tmp148, Data1,
	and	r1, r2, #16711680	@ tmp151, Data1,
	mov	r4, r2, asl #24	@ tmp146, Data1,
	orr	r2, r4, r2, lsr #24	@, tmp147, tmp146, Data1,
	orr	r2, r2, ip, asl #8	@, tmp150, tmp147, tmp148,
	orr	r2, r2, r1, lsr #8	@, tmp153, tmp150, tmp151,
	str	r2, [r3, #8]	@ tmp153, <variable>.Bufa
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BsBack, .-BsBack
	.align	2
	.global	BsBitsToNextByte
	.type	BsBitsToNextByte, %function
BsBitsToNextByte:
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
	ldr	r3, [r0, #24]	@ D.30494, <variable>.TotalPos
	add	r1, r3, #7	@ tmp137, D.30494,
	bic	r0, r1, #7	@ tmp138, tmp137,
	rsb	r0, r3, r0	@, D.30494, tmp138
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BsBitsToNextByte, .-BsBitsToNextByte
	.align	2
	.global	BsToNextByte
	.type	BsToNextByte, %function
BsToNextByte:
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
	ldr	ip, [r0, #24]	@ D.30502, <variable>.TotalPos
	mov	r3, r0	@ pBS, pBS
	ldr	r1, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	add	r2, ip, #7	@ tmp139, D.30502,
	bic	r0, r2, #7	@ tmp140, tmp139,
	rsb	r0, ip, r0	@ SkipLen, D.30502, tmp140
	add	r1, r0, r1	@ ABBufPos, SkipLen, <variable>.BufPos
	add	r2, r0, ip	@ tmp142, SkipLen, D.30502
	cmp	r1, #31	@ ABBufPos,
	str	r2, [r3, #24]	@ tmp142, <variable>.TotalPos
	bgt	.L36	@,
	str	r1, [r3, #20]	@ ABBufPos, <variable>.BufPos
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L36:
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r1, #32	@ tmp143, ABBufPos,
	ldr	ip, [r3, #4]	@ tmp156, <variable>.pTail
	str	r5, [r3, #20]	@ tmp143, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [ip], #4	@ Data1,
	and	r4, r2, #65280	@ tmp149, Data1,
	and	r1, r2, #16711680	@ tmp152, Data1,
	mov	r5, r2, asl #24	@ tmp147, Data1,
	str	ip, [r3, #4]	@ tmp156, <variable>.pTail
	orr	ip, r5, r2, lsr #24	@, tmp148, tmp147, Data1,
	orr	r2, ip, r4, asl #8	@, tmp151, tmp148, tmp149,
	orr	ip, r2, r1, lsr #8	@, tmp154, tmp151, tmp152,
	str	ip, [r3, #12]	@ tmp154, <variable>.Bufb
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BsToNextByte, .-BsToNextByte
	.align	2
	.global	BsResidBits
	.type	BsResidBits, %function
BsResidBits:
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
	ldr	r2, [r0, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r0, r3, r2, asl #3	@,, <variable>.TotalPos, <variable>.BsLen,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BsResidBits, .-BsResidBits
	.align	2
	.global	BsIsByteAligned
	.type	BsIsByteAligned, %function
BsIsByteAligned:
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
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	tst	r3, #7	@ <variable>.TotalPos,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BsIsByteAligned, .-BsIsByteAligned
	.align	2
	.global	BsNextBitsByteAligned
	.type	BsNextBitsByteAligned, %function
BsNextBitsByteAligned:
	.fnstart
.LFB1367:
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
	ldr	lr, [r0, #24]	@ D.30526, <variable>.TotalPos
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	and	r3, lr, #7	@ tmp145, D.30526,
	rsb	r3, r3, #8	@ D.30528, tmp145,
	add	r2, r3, r2	@ ABBufPos, D.30528, <variable>.BufPos
	add	ip, r3, lr	@ tmp147, D.30528, D.30526
	cmp	r2, #31	@ ABBufPos,
	str	ip, [r0, #24]	@ tmp147, <variable>.TotalPos
	ble	.L42	@,
	ldr	ip, [r0, #12]	@ prephitmp.734, <variable>.Bufb
	sub	r2, r2, #32	@ prephitmp.733, ABBufPos,
	ldr	r4, [r0, #4]	@ tmp159, <variable>.pTail
	str	r2, [r0, #20]	@ prephitmp.733, <variable>.BufPos
	str	ip, [r0, #8]	@ prephitmp.734, <variable>.Bufa
	ldr	lr, [r4], #4	@ Data1,
	and	r6, lr, #65280	@ tmp152, Data1,
	and	r5, lr, #16711680	@ tmp155, Data1,
	mov	r7, lr, asl #24	@ tmp150, Data1,
	str	r4, [r0, #4]	@ tmp159, <variable>.pTail
	orr	lr, r7, lr, lsr #24	@, tmp151, tmp150, Data1,
	orr	lr, lr, r6, asl #8	@, tmp154, tmp151, tmp152,
	orr	lr, lr, r5, lsr #8	@, tmp157, tmp154, tmp155,
	str	lr, [r0, #12]	@ tmp157, <variable>.Bufb
.L43:
	add	lr, r2, r1	@ tmp161, prephitmp.733, nBits
	cmp	lr, #32	@ tmp161,
	rsbgt	lr, r2, #32	@ tmp162, prephitmp.733,
	movle	r4, ip, asl r2	@ tmp166, prephitmp.734,
	ldrgt	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsbgt	r1, r1, #32	@ tmp165, nBits,
	rsble	r1, r1, #32	@ tmp167, nBits,
	movgt	r4, r4, lsr lr	@ tmp163, <variable>.Bufb,
	orrgt	r4, r4, ip, asl r2	@, Data.747, tmp163, prephitmp.734,
	mov	r4, r4, lsr r1	@ Data.748, tmp166,
	mov	r1, r3	@, D.30528
	bl	BsBack	@
	mov	r0, r4	@, Data.748
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L42:
	ldr	ip, [r0, #8]	@ prephitmp.734, <variable>.Bufa
	str	r2, [r0, #20]	@ prephitmp.733, <variable>.BufPos
	b	.L43	@
	.fnend
	.size	BsNextBitsByteAligned, .-BsNextBitsByteAligned
	.align	2
	.global	BsLongSkip
	.type	BsLongSkip, %function
BsLongSkip:
	.fnstart
.LFB1368:
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
	cmp	r1, #0	@ nBits
	beq	.L48	@,
	cmp	r1, #64	@ nBits,
	bgt	.L49	@,
	cmp	r1, #32	@ nBits,
	bgt	.L50	@,
	ldr	r3, [r0, #20]	@ prephitmp.764, <variable>.BufPos
	ldr	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r3, r3, r1	@ ABBufPos, prephitmp.764, nBits
	cmp	r3, #31	@ ABBufPos,
	add	r2, r2, r1	@ tmp169, <variable>.TotalPos, nBits
	str	r2, [r0, #24]	@ tmp169, <variable>.TotalPos
	ble	.L54	@,
.L56:
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r3, #32	@ tmp170, ABBufPos,
	ldr	r2, [r0, #4]	@ tmp183, <variable>.pTail
	str	r5, [r0, #20]	@ tmp170, <variable>.BufPos
	str	r4, [r0, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r3, [r2], #4	@ Data1,
	and	r4, r3, #65280	@ tmp176, Data1,
	and	ip, r3, #16711680	@ tmp179, Data1,
	mov	r5, r3, asl #24	@ tmp174, Data1,
	str	r2, [r0, #4]	@ tmp183, <variable>.pTail
	orr	r3, r5, r3, lsr #24	@, tmp175, tmp174, Data1,
	orr	r2, r3, r4, asl #8	@, tmp178, tmp175, tmp176,
	orr	r3, r2, ip, lsr #8	@, tmp181, tmp178, tmp179,
	str	r3, [r0, #12]	@ tmp181, <variable>.Bufb
.L48:
	mov	r0, r1	@, nBits
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L49:
	ldr	ip, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r7, #0	@ tmp188,
	ldr	r8, [r0, #4]	@ <variable>.pTail, <variable>.pTail
	rsb	r5, ip, #32	@ bits, <variable>.BufPos,
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r1, r5, r1	@ nBits, bits, nBits
	str	r7, [r0, #20]	@ tmp188, <variable>.BufPos
	cmp	r1, #0	@ nBits,
	add	r6, r1, #31	@ tmp190, nBits,
	add	r2, r5, r3	@ D.30555, bits, <variable>.TotalPos
	str	r2, [r0, #24]	@ D.30555, <variable>.TotalPos
	movge	r6, r1	@ nBits, nBits
	ands	r5, r1, #31	@ bits.775, nBits,
	mov	r4, r6, asr #5	@ tmp191, nBits,
	sub	ip, r4, #-1073741823	@ tmp192, tmp191,
	add	r4, r2, r4, asl #5	@, D.30578, D.30555, tmp191,
	add	r2, r8, ip, asl #2	@, D.30563, <variable>.pTail, tmp192,
	str	r2, [r0, #4]	@ D.30563, <variable>.pTail
	ldr	r3, [r8, ip, asl #2]	@ D.30565,* <variable>.pTail
	add	r7, r2, #4	@ D.30575, D.30563,
	add	ip, r7, #4	@ tmp213, D.30575,
	str	r7, [r0, #4]	@ D.30575, <variable>.pTail
	and	r7, r3, #65280	@ tmp198, D.30565,
	and	r6, r3, #16711680	@ tmp201, D.30565,
	mov	r8, r3, asl #24	@ tmp196, D.30565,
	orr	r3, r8, r3, lsr #24	@, tmp197, tmp196, D.30565,
	orr	r3, r3, r7, asl #8	@, tmp200, tmp197, tmp198,
	orr	r3, r3, r6, lsr #8	@, tmp203, tmp200, tmp201,
	str	r3, [r0, #8]	@ tmp203, <variable>.Bufa
	ldr	r3, [r2, #4]	@ temp.777,
	str	ip, [r0, #4]	@ tmp213, <variable>.pTail
	and	ip, r3, #65280	@ tmp207, temp.777,
	and	r2, r3, #16711680	@ tmp210, temp.777,
	mov	r6, r3, asl #24	@ tmp205, temp.777,
	str	r4, [r0, #24]	@ D.30578, <variable>.TotalPos
	orr	r3, r6, r3, lsr #24	@, tmp206, tmp205, temp.777,
	strne	r5, [r0, #20]	@ bits.775, <variable>.BufPos
	orr	r3, r3, ip, asl #8	@, tmp209, tmp206, tmp207,
	addne	r4, r4, r5	@ tmp215, D.30578, bits.775
	orr	ip, r3, r2, lsr #8	@, tmp212, tmp209, tmp210,
	strne	r4, [r0, #24]	@ tmp215, <variable>.TotalPos
	str	ip, [r0, #12]	@ tmp212, <variable>.Bufb
	mov	r0, r1	@, nBits
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L50:
	ldr	r3, [r0, #20]	@ prephitmp.764, <variable>.BufPos
	ldr	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	ip, r3, #32	@ tmp153, prephitmp.764,
	cmp	ip, #31	@ tmp153,
	add	r2, r2, #32	@ <variable>.TotalPos, <variable>.TotalPos,
	str	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movle	r3, ip	@ prephitmp.764, tmp153
	strle	r3, [r0, #20]	@ prephitmp.764, <variable>.BufPos
	ble	.L53	@,
	ldr	r5, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	ldr	r4, [r0, #4]	@ tmp166, <variable>.pTail
	str	r5, [r0, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	ip, [r4], #4	@ Data1,
	and	r6, ip, #65280	@ tmp159, Data1,
	and	r5, ip, #16711680	@ tmp162, Data1,
	mov	r7, ip, asl #24	@ tmp157, Data1,
	str	r4, [r0, #4]	@ tmp166, <variable>.pTail
	orr	ip, r7, ip, lsr #24	@, tmp158, tmp157, Data1,
	orr	ip, ip, r6, asl #8	@, tmp161, tmp158, tmp159,
	orr	ip, ip, r5, lsr #8	@, tmp164, tmp161, tmp162,
	str	ip, [r0, #12]	@ tmp164, <variable>.Bufb
.L53:
	sub	r1, r1, #32	@ nBits, nBits,
	add	r3, r3, r1	@ ABBufPos, prephitmp.764, nBits
	add	r2, r2, r1	@ tmp169, <variable>.TotalPos, nBits
	cmp	r3, #31	@ ABBufPos,
	str	r2, [r0, #24]	@ tmp169, <variable>.TotalPos
	bgt	.L56	@,
.L54:
	ldr	r3, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	add	ip, r3, r1	@ tmp185, <variable>.BufPos, nBits
	str	ip, [r0, #20]	@ tmp185, <variable>.BufPos
	mov	r0, r1	@, nBits
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	BsLongSkip, .-BsLongSkip
	.align	2
	.global	BsSkipWithoutCount
	.type	BsSkipWithoutCount, %function
BsSkipWithoutCount:
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
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	add	r2, r1, r2	@ ABBufPos, nBits, <variable>.BufPos
	cmp	r2, #31	@ ABBufPos,
	strle	r2, [r0, #20]	@ ABBufPos, <variable>.BufPos
	ble	.L59	@,
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r2, #32	@ tmp139, ABBufPos,
	ldr	r0, [r0, #4]	@ tmp152, <variable>.pTail
	str	r5, [r3, #20]	@ tmp139, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [r0], #4	@ Data1,
	and	r4, r2, #65280	@ tmp145, Data1,
	and	ip, r2, #16711680	@ tmp148, Data1,
	mov	r5, r2, asl #24	@ tmp143, Data1,
	str	r0, [r3, #4]	@ tmp152, <variable>.pTail
	orr	r0, r5, r2, lsr #24	@, tmp144, tmp143, Data1,
	orr	r2, r0, r4, asl #8	@, tmp147, tmp144, tmp145,
	orr	r0, r2, ip, lsr #8	@, tmp150, tmp147, tmp148,
	str	r0, [r3, #12]	@ tmp150, <variable>.Bufb
.L59:
	mov	r0, r1	@, nBits
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BsSkipWithoutCount, .-BsSkipWithoutCount
	.align	2
	.global	BsGetNextBytePtr
	.type	BsGetNextBytePtr, %function
BsGetNextBytePtr:
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
	ldr	r1, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	ldr	r2, [r0, #4]	@ <variable>.pTail, <variable>.pTail
	rsb	r3, r1, #32	@ tmp136, <variable>.BufPos,
	mvn	r1, #3	@ tmp146,
	add	ip, r3, #7	@ tmp140, tmp136,
	cmp	r3, #0	@ tmp136,
	movlt	r3, ip	@ tmp145, tmp140
	sub	r0, r1, r3, asr #3	@ tmp142, tmp146, tmp145,
	add	r0, r0, r2	@, tmp142, <variable>.pTail
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BsGetNextBytePtr, .-BsGetNextBytePtr
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CalcZeroNum, %object
	.size	CalcZeroNum, 256
CalcZeroNum:
	.byte	8
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
