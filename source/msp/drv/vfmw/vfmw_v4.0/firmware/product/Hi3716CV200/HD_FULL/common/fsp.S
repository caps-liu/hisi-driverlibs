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
	.file	"fsp.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(fsp)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/fsp.o -O2 -Wall -Wundef
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
	.global	FindLeastTickPhyFs
	.type	FindLeastTickPhyFs, %function
FindLeastTickPhyFs:
	.fnstart
.LFB1379:
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
	cmp	r1, #0	@ PhyNum
	movle	r5, #0	@ LeastFsID,
	ble	.L5	@,
	tst	r1, #1	@ PhyNum,
	mov	r5, #0	@ LeastFsID,
	mvn	ip, #0	@ LeastTick.616,
	mov	r2, r5	@ i, LeastFsID
	bne	.L6	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #48	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #48	@ tmp176, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.616
	mov	ip, r3	@ LeastTick.616, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.616
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp177, i,
	movcs	r3, ip	@ LeastTick, LeastTick.616
	cmp	r2, r1	@ tmp177, PhyNum
	beq	.L5	@,
.L19:
	ldr	ip, [r4, #44]	@ LeastTick, <variable>.u32Tick
	cmp	ip, r3	@ LeastTick, LeastTick
	movcs	ip, r3	@ LeastTick, LeastTick
	movcc	r5, r2	@ LeastFsID, tmp177
.L17:
	add	r2, r2, #1	@ i, tmp177,
	add	r0, r4, #48	@ pstPhyFs, tmp176,
.L6:
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r4, r0, #48	@ tmp176, pstPhyFs,
	cmp	r3, ip	@ LeastTick, LeastTick.616
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp177, i,
	movcs	r3, ip	@ LeastTick, LeastTick.616
	cmp	r2, r1	@ tmp177, PhyNum
	bne	.L19	@,
.L5:
	mov	r0, r5	@, LeastFsID
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_GetLogicFs
	.type	FSP_GetLogicFs, %function
FSP_GetLogicFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L25	@,
.L21:
	mov	r0, #0	@ pstLogicFs,
	ldmfd	sp, {fp, sp, pc}	@
.L25:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r2, [r3, r0, asl #2]	@ D.36768, s_pFspInst
	cmp	r2, #0	@ D.36768,
	beq	.L21	@,
	movw	ip, #56800	@ tmp150,
	rsb	r1, r1, r1, asl #5	@, tmp158, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp149, tmp150, InstID
	add	ip, r0, r3	@ tmp151, tmp149, tmp146
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp162, tmp149, tmp158,
	addne	r0, r2, r1, asl #4	@, tmp168, D.36768, tmp166,
	addeq	r0, r3, r0	@ tmp163, tmp146, tmp162
	addne	r0, r0, #80	@ pstLogicFs, tmp168,
	addeq	r0, r0, #216	@ pstLogicFs, tmp163,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L32	@,
.L27:
	mov	r0, #0	@ D.36802,
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r2, [r3, r0, asl #2]	@ D.36792, s_pFspInst
	cmp	r2, #0	@ D.36792,
	beq	.L27	@,
	movw	ip, #56800	@ tmp151,
	rsb	r1, r1, r1, asl #5	@, tmp159, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp150, tmp151, InstID
	add	ip, r0, r3	@ tmp152, tmp150, tmp147
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp163, tmp150, tmp159,
	addne	r0, r2, r1, asl #4	@, tmp169, D.36792, tmp167,
	addeq	r0, r3, r0	@ tmp164, tmp147, tmp163
	addne	r0, r0, #80	@ pstLogicFs, tmp169,
	addeq	r0, r0, #216	@ pstLogicFs, tmp164,
	add	r0, r0, #8	@ D.36802, pstLogicFs,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDecPhyFs
	.type	FSP_GetDecPhyFs, %function
FSP_GetDecPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L39	@,
.L34:
	mov	r0, #0	@ D.36826,
	ldmfd	sp, {fp, sp, pc}	@
.L39:
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r2, [r3, r0, asl #2]	@ D.36816, s_pFspInst
	cmp	r2, #0	@ D.36816,
	beq	.L34	@,
	movw	ip, #56800	@ tmp151,
	rsb	r1, r1, r1, asl #5	@, tmp159, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp150, tmp151, InstID
	add	ip, r0, r3	@ tmp152, tmp150, tmp147
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp163, tmp150, tmp159,
	addne	r2, r2, r1, asl #4	@, tmp169, D.36816, tmp167,
	addeq	r3, r3, r0	@ tmp164, tmp147, tmp163
	addne	r2, r2, #80	@ pstLogicFs, tmp169,
	addeq	r2, r3, #216	@ pstLogicFs, tmp164,
	ldr	r0, [r2, #472]	@ D.36826, <variable>.pstDecodeFs
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecPhyFs, .-FSP_GetDecPhyFs
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L46	@,
.L41:
	mov	r0, #0	@ D.36850,
	ldmfd	sp, {fp, sp, pc}	@
.L46:
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r2, [r3, r0, asl #2]	@ D.36840, s_pFspInst
	cmp	r2, #0	@ D.36840,
	beq	.L41	@,
	movw	ip, #56800	@ tmp151,
	rsb	r1, r1, r1, asl #5	@, tmp159, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp150, tmp151, InstID
	add	ip, r0, r3	@ tmp152, tmp150, tmp147
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp163, tmp150, tmp159,
	addne	r2, r2, r1, asl #4	@, tmp169, D.36840, tmp167,
	addeq	r3, r3, r0	@ tmp164, tmp147, tmp163
	addne	r2, r2, #80	@ pstLogicFs, tmp169,
	addeq	r2, r3, #216	@ pstLogicFs, tmp164,
	ldr	r0, [r2, #476]	@ D.36850, <variable>.pstDispOutFs
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
	.fnstart
.LFB1394:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bhi	.L48	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r2, [r3, r0, asl #2]	@ D.36864, s_pFspInst
	cmp	r2, #0	@ D.36864,
	beq	.L48	@,
	movw	ip, #56800	@ tmp151,
	rsb	r1, r1, r1, asl #5	@, tmp159, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp150, tmp151, InstID
	add	ip, r0, r3	@ tmp152, tmp150, tmp147
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp163, tmp150, tmp159,
	addne	r2, r2, r1, asl #4	@, tmp169, D.36864, tmp167,
	addeq	r3, r3, r0	@ tmp164, tmp147, tmp163
	addne	r2, r2, #80	@ pstLogicFs, tmp169,
	addeq	r2, r3, #216	@ pstLogicFs, tmp164,
	ldr	r0, [r2, #484]	@ D.36874, <variable>.PmvAddr
	ldmfd	sp, {fp, sp, pc}	@
.L48:
	mov	r0, #0	@ D.36874,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_IsFsInVO
	.type	FSP_IsFsInVO, %function
FSP_IsFsInVO:
	.fnstart
.LFB1402:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r4, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r4, #0	@ pstInst,
	beq	.L56	@,
	mov	r7, r0, asl #5	@ tmp263, InstID,
	movw	r2, #:lower16:.LANCHOR1	@ tmp264,
	add	r6, r7, r0	@ tmp158, tmp263, InstID
	movt	r2, #:upper16:.LANCHOR1	@ tmp264,
	add	r5, r2, r6, asl #3	@, tmp160, tmp264, tmp158,
	sub	r5, r5, #48	@ tmp161, tmp160,
	ldrsh	ip, [r5, #2]	@ D.37268, <variable>.history
	cmn	ip, #1	@ D.37268,
	beq	.L56	@,
	ldrh	r5, [r5, #4]	@ i.756, <variable>.head
	cmp	r5, ip	@ i.756, D.37268
	beq	.L56	@,
	movw	r8, #38112	@ tmp171,
	ldr	r4, [r4, r8]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L84	@,
	movw	r4, #56800	@ tmp200,
	mul	r4, r4, r0	@ tmp199, tmp200, InstID
	add	r6, r4, r3	@ tmp201, tmp199, tmp153
	ldr	r6, [r6, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L85	@,
.L56:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L84:
	and	r3, r5, #63	@ i.763, i.756,
	cmp	ip, r3	@ D.37268, i.763
	beq	.L56	@,
	mov	r6, r6, asl #1	@ tmp177, tmp158,
	add	r0, r6, r3	@ tmp178, tmp177, i.763
	add	r0, r2, r0, asl #2	@, tmp182, tmp264, tmp178,
	ldr	r0, [r0, #-40]	@ tmp184, <variable>.Addr
	cmp	r0, r1	@ tmp184, DecPhyAddr
	bne	.L74	@,
	b	.L57	@
.L75:
	ldr	r0, [r0, #-40]	@ tmp196, <variable>.Addr
	cmp	r0, r1	@ tmp196, DecPhyAddr
	beq	.L57	@,
.L74:
	add	r3, r3, #1	@ i.758, i.763,
	and	r3, r3, #63	@ i.763, i.758,
	add	r0, r6, r3	@ tmp190, tmp266, i.763
	cmp	ip, r3	@ D.37268, i.763
	add	r0, r2, r0, asl #2	@, tmp194, tmp264, tmp190,
	bne	.L75	@,
	b	.L56	@
.L85:
	add	r8, r3, #64	@ tmp205, tmp153,
	add	r3, r8, r4	@ pstTreeInst, tmp205, tmp199
	movw	r4, #32096	@ tmp208,
	ldr	r6, [r3, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r4, #32048	@ tmp209,
	ldrsb	r8, [r3, #2]	@ <variable>.s8LevelChange, <variable>.s8LevelChange
	ldr	r4, [r3, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r3, r8, #2	@ tmp213, <variable>.s8LevelChange,
	rsb	r4, r4, r6	@ HDSlotLen, <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #3	@ tmp213,
	ldrls	pc, [pc, r3, asl #2]	@ tmp213
	b	.L56	@
.L63:
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L60
.L57:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L62:
	and	r3, r5, #63	@ i.757, i.756,
	cmp	ip, r3	@ D.37268, i.757
	addne	r0, r7, r0	@ tmp271, tmp263, InstID
	addne	r4, r1, r4	@ tmp273, DecPhyAddr, HDSlotLen
	movne	r5, r0, asl #1	@ tmp272, tmp271,
	beq	.L56	@,
.L80:
	add	r0, r5, r3	@ tmp231, tmp272, i.757
	add	r3, r3, #1	@ i.765, i.757,
	and	r3, r3, #63	@ i.757, i.765,
	add	r0, r2, r0, asl #2	@, tmp235, tmp264, tmp231,
	ldr	r0, [r0, #-40]	@ temp.764, <variable>.Addr
	cmp	r1, r0	@ DecPhyAddr, temp.764
	bgt	.L68	@,
	cmp	r0, r4	@ temp.764, tmp273
	blt	.L57	@,
.L68:
	cmp	ip, r3	@ D.37268, i.757
	bne	.L80	@,
	b	.L56	@
.L61:
	and	r3, r5, #63	@ i.759, i.756,
	cmp	ip, r3	@ D.37268, i.759
	addne	r0, r7, r0	@ tmp269, tmp263, InstID
	movne	r6, r0, asl #1	@ tmp270, tmp269,
	beq	.L56	@,
.L79:
	add	r0, r6, r3	@ tmp219, tmp270, i.759
	add	r3, r3, #1	@ i.761, i.759,
	and	r3, r3, #63	@ i.759, i.761,
	add	r5, r2, r0, asl #2	@, tmp223, tmp264, tmp219,
	ldr	r0, [r5, #-40]	@ temp.760, <variable>.Addr
	cmp	r1, r0	@ DecPhyAddr, temp.760
	add	r5, r0, r4	@ tmp225, temp.760, HDSlotLen
	blt	.L67	@,
	cmp	r1, r5	@ DecPhyAddr, tmp225
	blt	.L57	@,
.L67:
	cmp	ip, r3	@ D.37268, i.759
	bne	.L79	@,
	b	.L56	@
.L60:
	and	r5, r5, #63	@ i, i.756,
	cmp	ip, r5	@ D.37268, i
	beq	.L56	@,
	add	r0, r7, r0	@ tmp241, tmp263, InstID
	mov	r0, r0, asl #1	@ tmp242, tmp241,
	add	r3, r0, r5	@ tmp243, tmp242, i
	add	r3, r2, r3, asl #2	@, tmp247, tmp264, tmp243,
	ldr	r3, [r3, #-40]	@ tmp249, <variable>.Addr
	cmp	r3, r1	@ tmp249, DecPhyAddr
	bne	.L82	@,
	b	.L57	@
.L83:
	ldr	r3, [r3, #-40]	@ tmp261, <variable>.Addr
	cmp	r3, r1	@ tmp261, DecPhyAddr
	beq	.L57	@,
.L82:
	add	r5, r5, #1	@ i.768, i,
	and	r5, r5, #63	@ i, i.768,
	add	r3, r0, r5	@ tmp255, tmp268, i
	cmp	ip, r5	@ D.37268, i
	add	r3, r2, r3, asl #2	@, tmp259, tmp264, tmp255,
	bne	.L83	@,
	b	.L56	@
	.fnend
	.size	FSP_IsFsInVO, .-FSP_IsFsInVO
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
.LFB1404:
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
	movw	r2, #56800	@ tmp181,
	mul	r2, r2, r0	@ tmp180, tmp181, InstID
	movw	r1, #:lower16:.LANCHOR0	@ tmp239,
	movt	r1, #:upper16:.LANCHOR0	@ tmp239,
	mov	r4, r0	@ InstID, InstID
	add	r0, r2, r1	@ tmp182, tmp180, tmp239
	ldr	r3, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L106	@,
	ldr	r1, [r1, r4, asl #2]	@ pstInst, s_pFspInst
	mov	r0, #63	@ i.814,
	add	r3, r1, #31232	@ ivtmp.811, pstInst,
	add	r3, r3, #97	@ ivtmp.811, ivtmp.811,
	b	.L94	@
.L108:
	ldrb	r2, [r3, #-496]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r0, r0, #1	@ i.814, i.814,
	sub	r3, r3, #992	@ ivtmp.811, ivtmp.811,
	cmp	r2, #0	@ <variable>.s32DispState,
	beq	.L93	@,
	subs	r0, r0, #1	@ i.814, i.814,
	bcc	.L107	@,
.L94:
	ldrsb	ip, [r3, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	bne	.L108	@,
.L93:
	rsb	r2, r0, r0, asl #5	@, tmp225, ret_id, ret_id,
	mov	r3, #0	@ tmp229,
	add	r1, r1, r2, asl #4	@, tmp227, pstInst, tmp225,
	add	ip, r1, #552	@ tmp228, tmp227,
	str	r3, [r1, #552]	@ tmp229, <variable>.pstDecodeFs
	str	r3, [ip, #4]	@ tmp229, <variable>.pstDispOutFs
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L106:
	add	r0, r2, r1	@ tmp189, tmp180, tmp239
	mov	r3, #63	@ i,
	add	ip, r0, #31232	@ ivtmp.803, tmp189,
	add	r2, ip, #233	@ ivtmp.803, ivtmp.803,
	b	.L90	@
.L88:
	ldrb	r0, [r2, #-496]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r2, r2, #992	@ ivtmp.803, ivtmp.803,
	cmp	r0, #0	@ <variable>.s32DispState,
	beq	.L102	@,
	subs	r3, r3, #1	@ i, i,
	bcc	.L109	@,
.L90:
	ldrsb	ip, [r2, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	bne	.L88	@,
.L102:
	mov	r0, r3	@ ret_id, i
.L89:
	movw	r2, #56800	@ tmp201,
	rsb	ip, r0, r0, asl #5	@, tmp198, ret_id, ret_id,
	mul	r4, r2, r4	@ tmp200, tmp201, InstID
	mov	r3, #0	@ tmp205,
	add	r4, r4, ip, asl #4	@, tmp202, tmp200, tmp198,
	add	r1, r4, r1	@ tmp203, tmp202, tmp239
	add	r2, r1, #688	@ tmp204, tmp203,
	str	r3, [r1, #688]	@ tmp205, <variable>.pstDecodeFs
	str	r3, [r2, #4]	@ tmp205, <variable>.pstDispOutFs
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L107:
	mov	r0, #0	@ ret_id,
	b	.L93	@
.L109:
	mov	r0, #0	@ ret_id,
	b	.L89	@
	.fnend
	.size	FSP_GetNullLogicFs, .-FSP_GetNullLogicFs
	.align	2
	.global	Tree_FSP_RenewFs
	.type	Tree_FSP_RenewFs, %function
Tree_FSP_RenewFs:
	.fnstart
.LFB1411:
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
	movw	r2, #56800	@ tmp142,
	mul	r2, r2, r0	@ tmp141, tmp142, InstID
	movw	r3, #:lower16:.LANCHOR0	@ tmp300,
	movt	r3, #:upper16:.LANCHOR0	@ tmp300,
	add	ip, r2, r3	@ tmp143, tmp141, tmp300
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r4, r3, #64	@ tmp147, tmp300,
	add	ip, r4, r2	@ pstTreeInst, tmp147, tmp141
	add	r5, ip, r1	@ tmp151, pstTreeInst, LogicFrameID
	ldrsb	r4, [ip, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	ldrb	r5, [r5, #48]	@ zero_extendqisi2	@ tmp153, <variable>.LogicFsRecord
	cmp	r5, r4	@ tmp153, <variable>.s8LevelID
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r5, r1, asl #5	@ tmp299, LogicFrameID,
	rsb	r4, r1, r5	@ tmp159, LogicFrameID, tmp299
	add	r2, r2, r4, asl #4	@, tmp163, tmp141, tmp159,
	add	r2, r2, r3	@ tmp164, tmp163, tmp300
	ldr	r4, [r2, #688]	@ D.37980, <variable>.pstDecodeFs
	cmp	r4, #0	@ D.37980,
	beq	.L112	@,
	ldr	r2, [r4, #0]	@ tmp168,* D.37980
	bic	r2, r2, #-16777216	@ tmp166, tmp168,
	bic	r2, r2, #65280	@ tmp166, tmp166,
	cmp	r2, #196608	@ tmp166,
	beq	.L116	@,
.L112:
	movw	r2, #56800	@ tmp234,
	rsb	r4, r1, r5	@ tmp231, LogicFrameID, tmp299
	mul	r2, r2, r0	@ tmp233, tmp234, InstID
	add	r2, r2, r4, asl #4	@, tmp235, tmp233, tmp231,
	add	r2, r2, r3	@ tmp236, tmp235, tmp300
	ldr	r2, [r2, #692]	@ D.37997, <variable>.pstDispOutFs
	cmp	r2, #0	@ D.37997,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r4, [r2, #0]	@ tmp240,* D.37997
	bic	r4, r4, #-16777216	@ tmp238, tmp240,
	bic	r4, r4, #65280	@ tmp238, tmp238,
	cmp	r4, #196608	@ tmp238,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r6, [r2, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	ldr	r4, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r6, r4	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L117	@,
.L114:
	movw	r4, #56800	@ tmp254,
	rsb	r1, r1, r5	@ tmp251, LogicFrameID, tmp299
	mul	r0, r4, r0	@ tmp253, tmp254, InstID
	mov	r4, #0	@ tmp245,
	strb	r4, [r2, #1]	@ tmp245, <variable>.IsTfRef
	ldr	r4, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r2, r0, r1, asl #4	@, tmp255, tmp253, tmp251,
	add	r3, r2, r3	@ tmp256, tmp255, tmp300
	add	r0, r3, #688	@ tmp257, tmp256,
	ldr	r1, [r0, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	r4, [r1, #24]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r2, [r0, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r1, [r2, #28]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r2, [r0, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [ip, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r2, #20]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r3, [r0, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [ip, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r3, #32]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L116:
	ldr	r6, [r4, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	ldr	r2, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r6, r2	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L118	@,
.L113:
	movw	r2, #56800	@ tmp182,
	rsb	r7, r1, r5	@ tmp179, LogicFrameID, tmp299
	mul	r2, r2, r0	@ tmp181, tmp182, InstID
	mov	r6, #0	@ tmp173,
	strb	r6, [r4, #1]	@ tmp173, <variable>.IsTfRef
	ldr	r6, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r2, r2, r7, asl #4	@, tmp183, tmp181, tmp179,
	add	r2, r2, r3	@ tmp184, tmp183, tmp300
	ldr	r4, [r2, #688]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [r4, #24]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r4, [r2, #688]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r6, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r6, [r4, #28]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r4, [r2, #688]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r6, [ip, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r6, [r4, #20]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r2, [r2, #688]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [ip, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r4, [r2, #32]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	b	.L112	@
.L117:
	ldr	r6, [r2, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r4, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r6, r4	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L114	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L118:
	ldr	r6, [r4, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r2, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r6, r2	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L113	@,
	b	.L112	@
	.fnend
	.size	Tree_FSP_RenewFs, .-Tree_FSP_RenewFs
	.align	2
	.global	Tree_FSP_SynState
	.type	Tree_FSP_SynState, %function
Tree_FSP_SynState:
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
	cmp	r0, #15	@ InstID,
	bhi	.L138	@,
	sub	ip, r1, #1	@ tmp155, LevelID,
	uxtb	ip, ip	@ tmp156, tmp155
	cmp	ip, #1	@ tmp156,
	bhi	.L139	@,
	cmp	r2, #63	@ FsID,
	bhi	.L140	@,
	uxtb	ip, r3	@ Flag, Flag
	cmp	ip, #1	@ Flag,
	bhi	.L141	@,
	movw	r5, #56800	@ tmp167,
	movw	ip, #:lower16:.LANCHOR0	@ tmp320,
	mul	r0, r5, r0	@ tmp166, tmp167, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp320,
	add	r4, r0, ip	@ tmp168, tmp166, tmp320
	add	r4, r4, #176	@ tmp169, tmp168,
	ldrsb	r5, [r4, #7]	@ <variable>.stInstCfg.s8SubLevelEnable, <variable>.stInstCfg.s8SubLevelEnable
	cmp	r5, #0	@ <variable>.stInstCfg.s8SubLevelEnable,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldrsb	r4, [r4, #4]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r4, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	moveq	r3, #0	@ Flag,
	cmp	r1, #1	@ LevelID,
	beq	.L142	@,
	tst	r2, #1	@ FsID,
	mvnne	r1, #0	@, iftmp.573,
	moveq	r1, #1	@, iftmp.573,
	add	r1, r1, r2	@ ColFsID, iftmp.573, FsID
	cmn	r1, #1	@ ColFsID,
	beq	.L143	@,
	cmp	r3, #0	@ Flag,
	mov	r3, r2, asr #1	@ tmp262, FsID,
	add	r2, r2, r2, asl #1	@, tmp240, FsID, FsID,
	add	r1, r1, r1, asl #1	@, tmp252, ColFsID, ColFsID,
	add	r3, r3, r3, asl #1	@, tmp265, tmp262, tmp262,
	add	ip, ip, #64	@ tmp237, tmp320,
	add	r2, r0, r2, asl #4	@, tmp244, tmp166, tmp240,
	add	r1, r0, r1, asl #4	@, tmp256, tmp166, tmp252,
	add	r0, r0, r3, asl #4	@, tmp269, tmp166, tmp265,
	add	r3, ip, r2	@ tmp247, tmp237, tmp244
	addeq	r3, r3, #44288	@ pstFs0.878, tmp247,
	addne	r3, r3, #50432	@ pstFs0.878, tmp284,
	add	r3, r3, #140	@ pstFs0.878, pstFs0.878,
	add	r1, ip, r1	@ tmp259, tmp237, tmp256
	add	ip, ip, r0	@ tmp272, tmp237, tmp269
	addeq	r1, r1, #44288	@ pstFs1.879, tmp259,
	addeq	r2, ip, #32000	@ pstFs2.880, tmp272,
	addne	r2, ip, #38144	@ pstFs2.880, tmp309,
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ temp.892, <variable>.IsDecRef
	add	r2, r2, #36	@ pstFs2.880, pstFs2.880,
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ temp.893, <variable>.DispState
	addne	r1, r1, #50432	@ pstFs1.879, tmp296,
	cmp	ip, #0	@ temp.892,
	add	r1, r1, #140	@ pstFs1.879, pstFs1.879,
	strneb	ip, [r2, #0]	@ temp.892, <variable>.IsDecRef
	cmp	r0, #0	@ temp.893,
	ldrsb	ip, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	strneb	r0, [r2, #2]	@ temp.893, <variable>.DispState
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L144	@,
.L136:
	ldrsb	r0, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldrsb	r3, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	streqb	r3, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L139:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3575	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L138:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3574	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L141:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3577	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L140:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3576	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L144:
	ldrsb	ip, [r1, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	streqb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	b	.L136	@
.L142:
	add	r2, r2, r2, asl #1	@, tmp182, FsID, FsID,
	add	r1, ip, #64	@ tmp179, tmp320,
	add	r4, r0, r1	@ tmp196, tmp166, tmp179
	cmp	r3, #0	@ Flag,
	add	r0, r0, r2, asl #4	@, tmp186, tmp166, tmp182,
	addeq	r4, r4, #44288	@ D.37914, tmp196,
	add	ip, r1, r0	@ tmp189, tmp179, tmp186
	addne	r4, r4, #50432	@ D.37920, tmp220,
	addeq	r3, ip, #32000	@ pstFs0, tmp189,
	addne	r3, ip, #38144	@ pstFs0, tmp213,
	add	r3, r3, #36	@ pstFs0, pstFs0,
	mov	r2, r2, asl #5	@ tmp200, tmp182,
	addeq	r4, r4, #140	@ D.37914, D.37914,
	addne	r4, r4, #140	@ D.37920, D.37920,
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	add	r1, r2, #48	@ tmp225, tmp224,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r4, r2	@ pstFs1, D.37920, tmp224
	add	r1, r4, r1	@ pstFs2, D.37920, tmp225
	strb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	strb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.IsDecRef, <variable>.IsDecRef
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	strb	r2, [r1, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	strb	r3, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L143:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3620	@,
	movt	r1, #:upper16:.LC5	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Tree_FSP_SynState, .-Tree_FSP_SynState
	.global	__aeabi_idiv
	.align	2
	.global	Tree_FSP_PartitionFsMemory
	.type	Tree_FSP_PartitionFsMemory, %function
Tree_FSP_PartitionFsMemory:
	.fnstart
.LFB1408:
	@ args = 0, pretend = 0, frame = 656
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #684
	sub	sp, sp, #684	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r7, fp, #672	@ tmp176,,
	str	r0, [fp, #-680]	@ InstID, %sfp
	mov	r2, #628	@,
	str	r1, [fp, #-696]	@ pUsedMemSize, %sfp
	mov	r0, r7	@, tmp176
	mov	r1, #0	@,
	movw	r6, #56800	@ tmp183,
	bl	memset	@
	ldr	r1, [fp, #-680]	@, %sfp
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp186,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp186,
	movw	r5, #:lower16:.LANCHOR0	@ tmp398,
	movt	r5, #:upper16:.LANCHOR0	@ tmp398,
	mul	r6, r6, r1	@ tmp182, tmp183,
	ldr	ip, [r2, #36]	@ D.37563, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	add	r4, r5, #64	@ tmp181, tmp398,
	movw	r0, #32096	@ tmp184,
	cmp	ip, #0	@ D.37563,
	movw	r3, #32048	@ tmp185,
	add	r4, r4, r6	@ pstInst, tmp181, tmp182
	ldr	sl, [r4, r0]	@ D.37560, <variable>.PhyAddr
	ldr	r9, [r4, r3]	@ D.37561, <variable>.PhyAddr
	beq	.L146	@,
	add	r6, r6, r5	@ tmp191, tmp182, tmp398
	str	r7, [sp, #16]	@ tmp176,
	add	r7, r6, #192	@ tmp397, tmp191,
	str	r1, [sp, #12]	@,
	add	r8, r6, #184	@ tmp395, tmp191,
	mov	r0, #10	@ tmp201,
	ldr	r1, [r7, #4]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r3, #40	@ tmp202,
	ldr	r2, [r8, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	lr, #0	@ tmp203,
	str	r0, [sp, #0]	@ tmp201,
	mov	r0, #1	@,
	str	r3, [sp, #4]	@ tmp202,
	mov	r3, r1	@, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #8]	@ tmp203,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.37563
	subs	r3, r0, #0	@ Ret,
	bne	.L147	@,
	ldrsb	ip, [r6, #183]	@ <variable>.stInstCfg.s8SubLevelEnable, <variable>.stInstCfg.s8SubLevelEnable
	rsb	sl, r9, sl	@, D.37561, D.37560
	str	sl, [fp, #-684]	@, %sfp
	cmp	ip, #0	@ <variable>.stInstCfg.s8SubLevelEnable,
	bne	.L256	@,
.L148:
	mov	r8, #1	@,
	str	r8, [fp, #-692]	@, %sfp
.L150:
	ldr	r8, [fp, #-680]	@, %sfp
	movw	r6, #56800	@ tmp243,
	ldr	lr, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r1, [fp, #-692]	@, %sfp
	mla	r2, r6, r8, r5	@ tmp244, tmp243,, tmp398
	str	lr, [r4, #8]	@ MemArrange.VahbStride, <variable>.s32Stride
	ldr	ip, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	sxtb	r6, r1	@ CurLevel,
	ldrsb	r3, [r4, #1]	@ D.37593, <variable>.s8LevelID
	str	ip, [r4, #20]	@ MemArrange.ChromOffset, <variable>.s32ChromOffset
	cmp	r3, r6	@ D.37593, CurLevel
	ldr	r0, [fp, #-52]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r2, #196]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	lr, [r2, #192]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r0, [r4, #24]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r4, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.s32FsHeight
	str	lr, [r4, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.s32FsWidth
	beq	.L257	@,
	cmp	r6, #1	@ CurLevel,
	addeq	r8, r4, #31744	@, pstInst,
	streq	r8, [fp, #-688]	@, %sfp
	addeq	r7, r8, #236	@ pTreeFs,,
	beq	.L164	@,
	cmp	r6, #2	@ CurLevel,
	bne	.L165	@,
	add	r9, r4, #44288	@ pTreeFs, pstInst,
	add	ip, r4, #31744	@, pstInst,
	add	r7, r9, #84	@ pTreeFs, pTreeFs,
	str	ip, [fp, #-688]	@, %sfp
.L164:
	ldr	r9, [r7, #0]	@ temp.1021, <variable>.s32DecFsNum
	cmp	r9, #0	@ temp.1021,
	ble	.L166	@,
	cmp	r6, #1	@ CurLevel,
	add	r2, r4, #44288	@ ivtmp.980, pstInst,
	sub	r1, r9, #1	@ tmp424, temp.1021,
	add	ip, r2, #184	@ ivtmp.980, ivtmp.980,
	mov	r8, #0	@ tmp402,
	and	r2, r1, #1	@ tmp426, tmp424,
	beq	.L258	@,
	add	r0, r4, #32000	@ tmp548, pstInst,
	add	r3, r0, #72	@ tmp548, tmp548,
	ldr	r3, [r3, #8]	@ iftmp.557, <variable>.u32Tick
.L241:
	str	r3, [r7, #100]	@ iftmp.557, <variable>.u32Tick
	mov	r0, #1	@ i.997,
	strb	r8, [r7, #57]	@ tmp402, <variable>.IsTfRef
	cmp	r0, r9	@ i.997, temp.1021
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	ip, ip, #96	@ ivtmp.980, ivtmp.980,
	add	r3, r7, #48	@ ivtmp.974, pTreeFs,
	str	sl, [r7, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r7, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r7, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r7, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L166	@,
	cmp	r2, #0	@ tmp426,
	beq	.L169	@,
	cmp	r6, r0	@ CurLevel,
	beq	.L242	@,
	add	r1, r4, #32000	@ tmp562, pstInst,
	add	r2, r1, #72	@ tmp562, tmp562,
	ldr	r2, [r2, #8]	@ iftmp.557, <variable>.u32Tick
.L243:
	str	r2, [r3, #100]	@ iftmp.557, <variable>.u32Tick
	add	r0, r0, #1	@ i.997, i.997,
	strb	r8, [r3, #57]	@ tmp402, <variable>.IsTfRef
	cmp	r0, r9	@ i.997, temp.1021
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	ip, ip, #96	@ ivtmp.980, ivtmp.980,
	str	lr, [r3, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r1, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r1, [r3, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r2, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r2, [r3, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	add	r3, r3, #48	@ ivtmp.974, ivtmp.974,
	blt	.L169	@,
	b	.L166	@
.L167:
	add	lr, r4, r2, asl #4	@, tmp300, pstInst, tmp298,
	add	r1, lr, #32000	@ tmp301, tmp300,
	add	r2, r1, #72	@ tmp301, tmp301,
	ldr	r1, [r2, #8]	@ iftmp.557, <variable>.u32Tick
.L168:
	str	r1, [r3, #100]	@ iftmp.557, <variable>.u32Tick
	add	r0, r0, #1	@ tmp427, i.997,
	strb	r8, [r3, #57]	@ tmp402, <variable>.IsTfRef
	cmp	r6, #1	@ CurLevel,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	mov	r1, r0, asr #1	@ tmp571, tmp427,
	add	r2, r3, #48	@ tmp428, ivtmp.974,
	add	lr, ip, #96	@ tmp429, ivtmp.980,
	add	r1, r1, r1, asl #1	@, tmp573, tmp571, tmp571,
	str	sl, [r3, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	add	r1, r4, r1, asl #4	@, tmp575, pstInst, tmp573,
	add	r1, r1, #32000	@ tmp576, tmp575,
	add	r1, r1, #72	@ tmp576, tmp576,
	str	sl, [r3, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	ldrne	r3, [r1, #8]	@ iftmp.557, <variable>.u32Tick
	beq	.L259	@,
.L244:
	str	r3, [r2, #100]	@ iftmp.557, <variable>.u32Tick
	add	ip, lr, #96	@ ivtmp.980, tmp429,
	strb	r8, [r2, #57]	@ tmp402, <variable>.IsTfRef
	add	r0, r0, #1	@ i.997, tmp427,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r0, r9	@ i.997, temp.1021
	add	r3, r2, #48	@ ivtmp.974, tmp428,
	str	sl, [r2, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r2, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r2, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r2, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L166	@,
.L169:
	mov	lr, r0, asr #1	@ tmp294, i.997,
	cmp	r6, #1	@ CurLevel,
	add	r2, lr, lr, asl #1	@, tmp298, tmp294, tmp294,
	bne	.L167	@,
	ldr	r1, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	sl, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, sl	@ <variable>.u32Tick, <variable>.u32Tick
	movcc	r1, sl	@ iftmp.557, <variable>.u32Tick
	b	.L168	@
.L166:
	ldr	r9, [r7, #4]	@ temp.1020, <variable>.s32DispFsNum
	cmp	r9, #0	@ temp.1020,
	ble	.L160	@,
	cmp	r6, #1	@ CurLevel,
	add	r8, r4, #44288	@ ivtmp.966, pstInst,
	add	r3, r7, #6208	@ ivtmp.958, pTreeFs,
	sub	r0, r9, #1	@ tmp418, temp.1020,
	add	ip, r8, #184	@ ivtmp.966, ivtmp.966,
	add	r2, r3, #36	@ ivtmp.958, ivtmp.958,
	and	r1, r0, #1	@ tmp420, tmp418,
	mov	r8, #0	@ tmp401,
	beq	.L260	@,
	add	r3, r4, #32000	@ tmp506, pstInst,
	add	lr, r3, #72	@ tmp506, tmp506,
	ldr	r3, [lr, #8]	@ iftmp.558, <variable>.u32Tick
.L237:
	str	r3, [r2, #0]	@ iftmp.558, <variable>.u32Tick
	mov	r0, #1	@ i.1006,
	strb	r8, [r2, #-43]	@ tmp401, <variable>.IsTfRef
	cmp	r0, r9	@ i.1006, temp.1020
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r3, r2, #48	@ ivtmp.958, ivtmp.958,
	add	ip, ip, #96	@ ivtmp.966, ivtmp.966,
	str	lr, [r2, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r2, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	lr, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	lr, [r2, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r2, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L160	@,
	cmp	r1, #0	@ tmp420,
	beq	.L172	@,
	cmp	r6, r0	@ CurLevel,
	beq	.L238	@,
	add	r2, r4, #32000	@ tmp520, pstInst,
	add	r1, r2, #72	@ tmp520, tmp520,
	ldr	r2, [r1, #8]	@ iftmp.558, <variable>.u32Tick
.L239:
	str	r2, [r3, #0]	@ iftmp.558, <variable>.u32Tick
	add	r0, r0, #1	@ i.1006, i.1006,
	strb	r8, [r3, #-43]	@ tmp401, <variable>.IsTfRef
	cmp	r0, r9	@ i.1006, temp.1020
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	ip, ip, #96	@ ivtmp.966, ivtmp.966,
	str	sl, [r3, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r2, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r2, [r3, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r3, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r3, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	add	r3, r3, #48	@ ivtmp.958, ivtmp.958,
	blt	.L172	@,
	b	.L160	@
.L170:
	add	r2, r4, r2, asl #4	@, tmp319, pstInst, tmp317,
	add	r1, r2, #32000	@ tmp320, tmp319,
	add	sl, r1, #72	@ tmp320, tmp320,
	ldr	r1, [sl, #8]	@ iftmp.558, <variable>.u32Tick
.L171:
	str	r1, [r3, #0]	@ iftmp.558, <variable>.u32Tick
	add	r0, r0, #1	@ tmp421, i.1006,
	strb	r8, [r3, #-43]	@ tmp401, <variable>.IsTfRef
	cmp	r6, #1	@ CurLevel,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	mov	r1, r0, asr #1	@ tmp529, tmp421,
	add	r2, r3, #48	@ tmp422, ivtmp.958,
	add	lr, ip, #96	@ tmp423, ivtmp.966,
	add	r1, r1, r1, asl #1	@, tmp531, tmp529, tmp529,
	str	sl, [r3, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	add	r1, r4, r1, asl #4	@, tmp533, pstInst, tmp531,
	add	r1, r1, #32000	@ tmp534, tmp533,
	add	r1, r1, #72	@ tmp534, tmp534,
	str	sl, [r3, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	ldrne	r3, [r1, #8]	@ iftmp.558, <variable>.u32Tick
	beq	.L261	@,
.L240:
	str	r3, [r2, #0]	@ iftmp.558, <variable>.u32Tick
	add	r0, r0, #1	@ i.1006, tmp421,
	strb	r8, [r2, #-43]	@ tmp401, <variable>.IsTfRef
	add	ip, lr, #96	@ ivtmp.966, tmp423,
	ldr	r1, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r0, r9	@ i.1006, temp.1020
	add	r3, r2, #48	@ ivtmp.958, tmp422,
	str	r1, [r2, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r2, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r2, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r2, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L160	@,
.L172:
	mov	r2, r0, asr #1	@ tmp313, i.1006,
	cmp	r6, #1	@ CurLevel,
	add	r2, r2, r2, asl #1	@, tmp317, tmp313, tmp313,
	bne	.L170	@,
	ldr	r1, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	lr, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, lr	@ <variable>.u32Tick, <variable>.u32Tick
	movcc	r1, lr	@ iftmp.558, <variable>.u32Tick
	b	.L171	@
.L257:
	cmp	r3, #1	@ D.37593,
	bne	.L262	@,
	add	sl, r4, #31744	@, pstInst,
	str	sl, [fp, #-688]	@, %sfp
	add	r7, sl, #236	@ pTreeFs,,
.L156:
	ldr	ip, [r7, #0]	@ temp.1019, <variable>.s32DecFsNum
	cmp	ip, #0	@ temp.1019,
	ble	.L157	@,
	ldrsb	r8, [r7, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	sub	r0, ip, #1	@ tmp413, temp.1019,
	and	r2, r0, #1	@ tmp415, tmp413,
	cmp	r8, #0	@ <variable>.IsDecRef,
	bne	.L200	@,
	ldrsb	r3, [r7, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L200	@,
	strb	r3, [r7, #57]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r7, #100]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r7, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r3, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r3, [r7, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r7, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r1, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r1, [r7, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L200:
	mov	r1, #1	@ i,
	cmp	r1, ip	@ i, temp.1019
	add	r3, r7, #48	@ ivtmp.948, pTreeFs,
	bge	.L157	@,
	cmp	r2, #0	@ tmp415,
	beq	.L159	@,
	ldrsb	r2, [r3, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L202	@,
	ldrsb	r2, [r3, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L202	@,
	strb	r2, [r3, #57]	@ <variable>.DispState, <variable>.IsTfRef
	str	r2, [r3, #100]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r3, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r8, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r8, [r3, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r0, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r3, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L202:
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #48	@ ivtmp.948, ivtmp.948,
	cmp	r1, ip	@ i, temp.1019
	bge	.L157	@,
.L159:
	ldrsb	lr, [r3, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #48	@ tmp417, ivtmp.948,
	add	r1, r1, #1	@ tmp416, i,
	cmp	lr, #0	@ <variable>.IsDecRef,
	bne	.L158	@,
	ldrsb	r0, [r3, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	bne	.L158	@,
	strb	r0, [r3, #57]	@ <variable>.DispState, <variable>.IsTfRef
	str	r0, [r3, #100]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r3, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r0, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r3, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r3, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L158:
	ldrsb	r3, [r2, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #0	@ <variable>.IsDecRef,
	bne	.L205	@,
	ldrsb	r3, [r2, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L205	@,
	strb	r3, [r2, #57]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r2, #100]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r2, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r2, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r2, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r3, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r3, [r2, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L205:
	add	r1, r1, #1	@ i, tmp416,
	add	r3, r2, #48	@ ivtmp.948, tmp417,
	cmp	r1, ip	@ i, temp.1019
	blt	.L159	@,
.L157:
	ldr	ip, [r7, #4]	@ temp.1018, <variable>.s32DispFsNum
	cmp	ip, #0	@ temp.1018,
	ble	.L160	@,
	add	sl, r7, #6208	@ ivtmp.938, pTreeFs,
	sub	r2, ip, #1	@ tmp408, temp.1018,
	add	r3, sl, #36	@ ivtmp.938, ivtmp.938,
	and	r2, r2, #1	@ tmp410, tmp408,
	ldrsb	r1, [r3, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L193	@,
	ldrsb	r1, [r3, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L193	@,
	strb	r1, [r3, #-43]	@ <variable>.DispState, <variable>.IsTfRef
	str	r1, [r3, #0]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r3, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r1, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r1, [r3, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L193:
	mov	r1, #1	@ i.992,
	cmp	r1, ip	@ i.992, temp.1018
	add	r3, r3, #48	@ ivtmp.938, ivtmp.938,
	bge	.L160	@,
	cmp	r2, #0	@ tmp410,
	beq	.L162	@,
	ldrsb	r2, [r3, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L195	@,
	ldrsb	r2, [r3, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L195	@,
	strb	r2, [r3, #-43]	@ <variable>.DispState, <variable>.IsTfRef
	str	r2, [r3, #0]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r3, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r3, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L195:
	add	r1, r1, #1	@ i.992, i.992,
	add	r3, r3, #48	@ ivtmp.938, ivtmp.938,
	cmp	r1, ip	@ i.992, temp.1018
	bge	.L160	@,
.L162:
	ldrsb	r8, [r3, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #48	@ tmp412, ivtmp.938,
	add	r1, r1, #1	@ tmp411, i.992,
	cmp	r8, #0	@ <variable>.IsDecRef,
	bne	.L161	@,
	ldrsb	r0, [r3, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	bne	.L161	@,
	strb	r0, [r3, #-43]	@ <variable>.DispState, <variable>.IsTfRef
	str	r0, [r3, #0]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	lr, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	lr, [r3, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r0, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r3, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L161:
	ldrsb	r3, [r2, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #0	@ <variable>.IsDecRef,
	bne	.L198	@,
	ldrsb	r3, [r2, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L198	@,
	strb	r3, [r2, #-43]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r2, #0]	@ <variable>.DispState, <variable>.u32Tick
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	sl, [r2, #-20]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r0, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r2, #-16]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	lr, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	lr, [r2, #-24]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r3, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r3, [r2, #-12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L198:
	add	r1, r1, #1	@ i.992, tmp411,
	add	r3, r2, #48	@ ivtmp.938, tmp412,
	cmp	r1, ip	@ i.992, temp.1018
	blt	.L162	@,
.L160:
	ldr	r0, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	movw	r3, #56800	@ tmp343,
	ldr	sl, [fp, #-680]	@, %sfp
	movw	r1, #12368	@ tmp331,
	str	r0, [r7, #32]	@ <variable>.s32FsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #31896	@ tmp348,
	ldr	ip, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	mla	lr, r3, sl, r5	@ tmp344, tmp343,, tmp398
	movw	r3, #12372	@ tmp333,
	str	ip, [r7, #36]	@ <variable>.s32FsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	r5, #56792	@ tmp352,
	ldr	r2, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r2, [r7, #28]	@ <variable>.s32Stride, <variable>.stDummyPhyFs.Stride
	movw	r2, #12364	@ tmp335,
	ldr	r8, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r8, [r7, #40]	@ <variable>.s32ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	sl, [r7, r1]	@ <variable>.s32FsWidth, <variable>.stTfFs.FsWidth
	movw	r1, #12376	@ tmp337,
	ldr	ip, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	ip, [r7, r3]	@ <variable>.s32FsHeight, <variable>.stTfFs.FsHeight
	movw	r3, #31896	@ tmp351,
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r7, r2]	@ <variable>.s32Stride, <variable>.stTfFs.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r7, r1]	@ <variable>.s32ChromOffset, <variable>.stTfFs.ChromOffset
	movw	sl, #31900	@ tmp400,
	ldrsb	r1, [lr, #188]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	cmp	r1, #20	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	movge	r1, #20	@ prephitmp.915,
	str	r1, [r4, r0]	@ prephitmp.915, <variable>.stTreePMV.s32PmvNum
	cmp	r1, #0	@ prephitmp.915,
	movle	r1, #1	@ tmp350,
	strle	r1, [r4, r0]	@ tmp350, <variable>.stTreePMV.s32PmvNum
	ldr	r0, [r4, r5]	@, <variable>.stTreeParam.PmvTotalSize
	ldr	r5, [r4, r3]	@ D.37642, <variable>.stTreePMV.s32PmvNum
	bl	__aeabi_idiv	@
	ldr	r2, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	r1, #1	@ i.998,
	ldr	r8, [fp, #-688]	@, %sfp
	cmp	r5, #1	@ D.37642,
	sub	ip, r5, #1	@ tmp403, D.37642,
	and	r3, ip, r1	@ tmp405, tmp403,
	str	r2, [r8, #156]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	add	r2, r8, #160	@ ivtmp.929,,
	mov	ip, r0	@ ivtmp.928, D.38513
	ble	.L235	@,
	cmp	r3, #0	@ tmp405,
	beq	.L246	@,
	ldr	lr, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	r1, #2	@ i.998,
	cmp	r5, r1	@ D.37642, i.998
	mov	ip, r0, asl #1	@ ivtmp.928, D.38513,
	add	r3, lr, r0	@ tmp468, <variable>.stTreePMV.PmvAddr, D.38513
	str	r3, [r2, #0]	@ tmp468, <variable>.stTreePMV.PmvAddr
	ldr	r8, [fp, #-688]	@, %sfp
	add	r2, r8, #164	@ ivtmp.929,,
	ble	.L235	@,
.L246:
	mov	r9, r7	@ pTreeFs, pTreeFs
.L174:
	ldr	r3, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	lr, r2	@ tmp407, ivtmp.929
	add	r1, r1, #2	@ i.998, i.998,
	add	r7, r3, ip	@ tmp459, <variable>.stTreePMV.PmvAddr, ivtmp.928
	cmp	r5, r1	@ D.37642, i.998
	str	r7, [lr], #4	@ tmp459, <variable>.stTreePMV.PmvAddr
	add	r3, ip, r0	@ ivtmp.928, ivtmp.928, D.38513
	ldr	r8, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	add	ip, r3, r0	@ ivtmp.928, ivtmp.928, D.38513
	add	r7, r8, r3	@ tmp465, <variable>.stTreePMV.PmvAddr, ivtmp.928
	str	r7, [r2, #4]	@ tmp465, <variable>.stTreePMV.PmvAddr
	add	r2, lr, #4	@ ivtmp.929, tmp407,
	bgt	.L174	@,
	mov	r7, r9	@ pTreeFs, pTreeFs
.L235:
	ldrsb	r3, [r4, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r3, #1	@ <variable>.s8LevelID,
	beq	.L177	@,
	cmp	r3, #2	@ <variable>.s8LevelID,
	beq	.L178	@,
	cmp	r3, #0	@ <variable>.s8LevelID,
	mvnne	r3, #0	@ tmp376,
	bne	.L255	@,
	cmp	r6, #1	@ CurLevel,
	movne	r3, #1	@ tmp364,
	strneb	r3, [r4, #2]	@ tmp364, <variable>.s8LevelChange
	bne	.L180	@,
.L255:
	strb	r3, [r4, #2]	@ tmp376, <variable>.s8LevelChange
	b	.L180	@
.L256:
	add	r2, sl, sl, lsr #31	@, tmp216,,,
	ldr	lr, [fp, #-664]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	r1, [fp, #-660]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r2, r2, asr #1	@ tmp217, tmp216,
	rsb	r3, lr, r1	@ CurSlotLen, MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r3, sl	@ CurSlotLen,
	cmple	r2, r3	@, tmp217, CurSlotLen
	blt	.L148	@,
	cmp	r3, r2	@ CurSlotLen, tmp217
	movle	r2, #2	@,
	strle	r2, [fp, #-692]	@, %sfp
	ble	.L150	@,
	ldr	ip, [r7, #4]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r1, #:lower16:.LC6	@,
	ldr	r3, [r8, #8]	@, <variable>.stInstCfg.s32DecFsWidth
	movt	r1, #:upper16:.LC6	@,
	movw	r2, #3153	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37589,
	b	.L151	@
.L178:
	cmp	r6, #1	@ CurLevel,
	moveq	r3, #4	@ tmp372,
	movne	r3, #5	@ tmp374,
	strb	r3, [r4, #2]	@ tmp374, <variable>.s8LevelChange
.L180:
	ldr	sl, [fp, #-692]	@, %sfp
	movw	r0, #31904	@ tmp379,
	movw	r2, #31900	@ tmp380,
	ldr	r1, [r4, r0]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	ldr	r8, [r4, r2]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	movw	r3, #31896	@ tmp384,
	strb	sl, [r4, #1]	@, <variable>.s8LevelID
	mov	r0, #0	@ D.37589,
	ldr	lr, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	rsb	r2, r8, r1	@ tmp381, <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	ldr	ip, [r7, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r8, [fp, #-684]	@, %sfp
	add	sl, ip, lr	@ tmp387, <variable>.s32DispFsNum, <variable>.s32DecFsNum
	ldr	lr, [r4, r3]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	ldr	r1, [fp, #-696]	@, %sfp
	mul	sl, r8, sl	@ tmp390,, tmp387
	mla	ip, lr, r2, sl	@ tmp391, <variable>.stTreePMV.s32PmvNum, tmp381, tmp390
	str	ip, [r1, #0]	@ tmp391,
.L151:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L259:
	ldr	r3, [ip, #96]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [lr, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, ip	@ iftmp.557, <variable>.u32Tick
	b	.L244	@
.L261:
	ldr	r3, [ip, #96]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [lr, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, ip	@ iftmp.558, <variable>.u32Tick
	b	.L240	@
.L146:
	mvn	r3, #0	@ Ret,
.L147:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #3330	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37589,
	b	.L151	@
.L177:
	cmp	r6, #1	@ CurLevel,
	moveq	r3, #2	@ tmp367,
	movne	r3, #3	@ tmp369,
	strb	r3, [r4, #2]	@ tmp369, <variable>.s8LevelChange
	b	.L180	@
.L262:
	cmp	r3, #2	@ D.37593,
	beq	.L263	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #3179	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37589,
	b	.L151	@
.L260:
	ldr	r0, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, r0	@ iftmp.558, <variable>.u32Tick
	b	.L237	@
.L258:
	ldr	lr, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	lr, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, lr	@ iftmp.557, <variable>.u32Tick
	b	.L241	@
.L238:
	ldr	sl, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, r2	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r2, sl	@ iftmp.558, <variable>.u32Tick
	b	.L239	@
.L242:
	ldr	lr, [ip, #48]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [ip, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	lr, r2	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r2, lr	@ iftmp.557, <variable>.u32Tick
	b	.L243	@
.L263:
	add	r7, r4, #44288	@ pTreeFs, pstInst,
	add	r3, r4, #31744	@, pstInst,
	add	r7, r7, #84	@ pTreeFs, pTreeFs,
	str	r3, [fp, #-688]	@, %sfp
	b	.L156	@
.L165:
	mov	r3, r6	@, CurLevel
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #3224	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37589,
	b	.L151	@
	.fnend
	.size	Tree_FSP_PartitionFsMemory, .-Tree_FSP_PartitionFsMemory
	.align	2
	.global	FSP_GetFspType
	.type	FSP_GetFspType, %function
FSP_GetFspType:
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
	cmp	r0, #15	@ InstID,
	bhi	.L271	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, r0, asl #2]	@ D.37405, s_pFspInst
	cmp	r2, #0	@ D.37405,
	beq	.L272	@,
	movw	r1, #38112	@ tmp142,
	ldr	r2, [r2, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@ D.37403,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #56800	@ tmp147,
	mla	r3, ip, r0, r3	@ tmp148, tmp147, InstID, tmp139
	ldr	r0, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	mvnne	r0, #0	@, D.37403,
	ldmfd	sp, {fp, sp, pc}	@
.L271:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2950	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37403,
	ldmfd	sp, {fp, sp, pc}	@
.L272:
	mov	r0, r2	@, D.37405
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2951	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37403,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.align	2
	.global	FSP_SwitchNotify
	.type	FSP_SwitchNotify, %function
FSP_SwitchNotify:
	.fnstart
.LFB1405:
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
	ldmlsfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	movw	r2, #2921	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_SwitchNotify, .-FSP_SwitchNotify
	.align	2
	.global	FSP_ProcFspQue
	.type	FSP_ProcFspQue, %function
FSP_ProcFspQue:
	.fnstart
.LFB1403:
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
	cmp	r1, #0	@ p_image
	beq	.L295	@,
	cmp	r2, #1	@ Flag,
	bhi	.L296	@,
	beq	.L297	@,
	mov	r9, r0, asl #5	@ tmp308, InstID,
	movw	ip, #:lower16:.LANCHOR1	@ tmp307,
	add	r4, r9, r0	@ tmp195, tmp308, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp307,
	add	r8, ip, r4, asl #3	@, tmp197, tmp307, tmp195,
	sub	r8, r8, #48	@ tmp198, tmp197,
	ldrh	r2, [r8, #4]	@ prephitmp.1089, <variable>.head
	ldrh	r5, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r2, #63	@ i.1105, prephitmp.1089,
	cmp	r5, r3	@ <variable>.tail, i.1105
	beq	.L281	@,
	mov	r4, r4, asl #1	@ tmp317, tmp195,
.L291:
	add	r2, r4, r3	@ tmp213, tmp317, i.1105
	ldr	r5, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, ip, r2, asl #2	@, tmp217, tmp307, tmp213,
	ldr	r2, [r2, #-40]	@ D.37337, <variable>.Addr
	cmp	r5, r2	@ <variable>.top_luma_phy_addr, D.37337
	moveq	sl, #1	@ SameImageFlag,
	beq	.L293	@,
	cmp	r2, #0	@ D.37337,
	addne	r3, r3, #1	@ i.1104, i.1105,
	bne	.L284	@,
	mov	sl, #2	@ SameImageFlag,
	b	.L293	@
.L298:
	mov	r3, r2	@ i.1105, j
.L293:
	cmp	r3, #0	@ i.1105,
	sub	r2, r3, #1	@ j, i.1105,
	add	r5, r4, r3	@ tmp225, tmp317, i.1105
	ldrh	r7, [r8, #4]	@ D.37333, <variable>.head
	moveq	r2, #63	@ j,
	add	r6, r4, r2	@ tmp236, tmp317, j
	add	r5, ip, r5, asl #2	@, tmp229, tmp307, tmp225,
	cmp	r7, r3	@ D.37333, i.1105
	add	r6, ip, r6, asl #2	@, tmp240, tmp307, tmp236,
	ldr	r6, [r6, #-40]	@ tmp242, <variable>.Addr
	str	r6, [r5, #-40]	@ tmp242, <variable>.Addr
	bne	.L298	@,
	cmp	sl, #1	@ SameImageFlag,
	add	r3, r3, #1	@ i.1104, i.1105,
	and	r2, r3, #63	@ prephitmp.1089, i.1104,
	strh	r2, [r8, #4]	@ movhi	@ prephitmp.1089, <variable>.head
	beq	.L281	@,
.L284:
	ldrh	r2, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r3, #63	@ i.1105, i.1104,
	cmp	r2, r3	@ <variable>.tail, i.1105
	bne	.L291	@,
	ldrh	r2, [r8, #4]	@ prephitmp.1089, <variable>.head
.L281:
	add	r0, r9, r0	@ tmp282, tmp308, InstID
	add	ip, ip, r0, asl #3	@, tmp284, tmp307, tmp282,
	sub	r3, ip, #48	@ tmp285, tmp284,
	ldrsh	r1, [r3, #2]	@ <variable>.history, <variable>.history
	cmp	r2, r1	@ prephitmp.1089, <variable>.history
	mvneq	r2, #0	@ movhi	@,
	streqh	r2, [r3, #2]	@ movhi	@, <variable>.history
	moveq	r3, #0	@ tmp295,
	streqb	r3, [ip, #-48]	@ tmp295, <variable>.SwitchFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L296:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2794	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L297:
	add	r0, r0, r0, asl #5	@, tmp154, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR1	@ tmp149,
	movt	r3, #:upper16:.LANCHOR1	@ tmp149,
	ldr	ip, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, r3, r0, asl #3	@, tmp156, tmp149, tmp154,
	sub	r2, r2, #48	@ tmp157, tmp156,
	ldrh	r1, [r2, #6]	@ <variable>.tail, <variable>.tail
	add	r0, r1, r0, asl #1	@, tmp163, <variable>.tail, tmp154,
	add	r1, r1, #1	@ tmp188, <variable>.tail,
	and	r1, r1, #63	@ tmp190, tmp188,
	strh	r1, [r2, #6]	@ movhi	@ tmp190, <variable>.tail
	add	r3, r3, r0, asl #2	@, tmp167, tmp149, tmp163,
	str	ip, [r3, #-40]	@ <variable>.top_luma_phy_addr, <variable>.Addr
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L295:
	mov	r0, r1	@, p_image
	movw	r2, #2793	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_ProcFspQue, .-FSP_ProcFspQue
	.align	2
	.global	FSP_SetQueSwitchFlag
	.type	FSP_SetQueSwitchFlag, %function
FSP_SetQueSwitchFlag:
	.fnstart
.LFB1401:
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
	bhi	.L303	@,
	add	r0, r0, r0, asl #5	@, tmp140, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR1	@ tmp136,
	movt	r1, #:upper16:.LANCHOR1	@ tmp136,
	mov	r2, #1	@ tmp144,
	add	r3, r1, r0, asl #3	@, tmp142, tmp136, tmp140,
	strb	r2, [r3, #-48]	@ tmp144, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
.L303:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2669	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_SetQueSwitchFlag, .-FSP_SetQueSwitchFlag
	.align	2
	.global	FSP_GetQueSwitchFlag
	.type	FSP_GetQueSwitchFlag, %function
FSP_GetQueSwitchFlag:
	.fnstart
.LFB1400:
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
	bhi	.L308	@,
	add	r0, r0, r0, asl #5	@, tmp142, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR1	@ tmp138,
	movt	r1, #:upper16:.LANCHOR1	@ tmp138,
	add	r3, r1, r0, asl #3	@, tmp144, tmp138, tmp142,
	ldrb	r0, [r3, #-48]	@ zero_extendqisi2	@ D.37229, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
.L308:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2659	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #255	@ D.37229,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetQueSwitchFlag, .-FSP_GetQueSwitchFlag
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
.LFB1398:
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
	bhi	.L328	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp145,
	movt	r2, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r2, r0, asl #2]	@ D.37027, s_pFspInst
	cmp	r3, #0	@ D.37027,
	beq	.L329	@,
	movw	ip, #56800	@ tmp152,
	mul	ip, ip, r0	@ tmp151, tmp152, InstID
	add	r0, ip, r2	@ tmp153, tmp151, tmp145
	ldr	r0, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	movne	r0, #0	@ i,
	beq	.L330	@,
.L318:
	ldr	r2, [r3, #552]	@ D.37040, <variable>.pstDecodeFs
	add	ip, r3, #496	@ tmp166, ivtmp.1195,
	cmp	r2, #0	@ D.37040,
	beq	.L317	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L317:
	ldr	r3, [r3, #1048]	@ D.37040, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.37040,
	mov	r2, r0	@ tmp165, i
	beq	.L324	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L324:
	add	r0, r2, #1	@ i, tmp165,
	add	r3, ip, #496	@ ivtmp.1195, tmp166,
	cmp	r0, #64	@ i,
	bne	.L318	@,
.L316:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L330:
	add	r3, r2, #64	@ tmp157, tmp145,
	mov	r0, #0	@ i,
	add	r3, r3, ip	@ ivtmp.1187, tmp157, tmp151
.L315:
	add	r2, r3, #496	@ tmp164, ivtmp.1187,
	ldr	r3, [r3, #624]	@ D.37034, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37034,
	beq	.L314	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L314:
	ldr	r3, [r2, #624]	@ D.37034, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.37034,
	mov	ip, r0	@ tmp163, i
	beq	.L322	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L322:
	add	r0, ip, #1	@ i, tmp163,
	add	r3, r2, #496	@ ivtmp.1187, tmp164,
	cmp	r0, #64	@ i,
	bne	.L315	@,
	b	.L316	@
.L328:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2470	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L329:
	mov	r0, r3	@, D.37027
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2471	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
.LFB1396:
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
	cmp	r0, #15	@ InstID,
	bhi	.L343	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L344	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L345	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp197,
	movt	ip, #:upper16:.LANCHOR0	@ tmp197,
	ldr	r3, [ip, r0, asl #2]	@ tmp148, s_pFspInst
	cmp	r3, #0	@ tmp148,
	beq	.L346	@,
	movw	r5, #56800	@ tmp155,
	mov	r3, #0	@ tmp151,
	mul	r5, r5, r0	@ tmp154, tmp155, InstID
	str	r3, [r1, #0]	@ tmp151,* PmvNum
	add	r4, r5, ip	@ tmp156, tmp154, tmp197
	ldr	r6, [r4, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L347	@,
	ldr	ip, [ip, r0, asl #2]	@ pstInst, s_pFspInst
	ldrsb	r0, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r0, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r3	@ i.1241, ivtmp.1233
.L339:
	add	r0, ip, r3	@ tmp192, pstInst, ivtmp.1233
	add	r1, r1, #1	@ i.1241, i.1241,
	add	r0, r0, #37888	@ tmp194, tmp192,
	ldr	r0, [r0, #236]	@ tmp195, <variable>.PmvAddr
	str	r0, [r2, r3]	@ tmp195,* ivtmp.1233
	add	r3, r3, #4	@ ivtmp.1233, ivtmp.1233,
	ldrsb	r0, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r1	@ <variable>.s32PmvNum, i.1241
	bgt	.L339	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L343:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2387	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L347:
	movw	r0, #31960	@ tmp160,
	ldr	r6, [r4, r0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	str	r6, [r1, #0]	@ <variable>.stTreePMV.s32PmvNum,* PmvNum
	ldr	r1, [r4, r0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r1, r3	@ <variable>.stTreePMV.s32PmvNum,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	ip, r4, #31744	@ tmp201, tmp156,
	mov	r1, ip	@ ivtmp.1226, tmp201
	add	ip, ip, #216	@ tmp201, tmp201,
	add	r1, r1, #220	@ ivtmp.1226, ivtmp.1226,
.L338:
	ldr	r0, [r1], #4	@ tmp181, <variable>.stTreePMV.PmvAddr
	str	r0, [r2, r3, asl #2]	@ tmp181,* PmvAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	r0, [ip, #0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r0, r3	@ <variable>.stTreePMV.s32PmvNum, i
	bgt	.L338	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L344:
	mov	r0, r2	@, PmvAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2388	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L345:
	mov	r0, r1	@, PmvNum
	movw	r2, #2389	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L346:
	mov	r0, r3	@, tmp148
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2390	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
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
	cmp	r0, #15	@ InstID,
	bhi	.L365	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L366	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L367	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp156,
	movt	ip, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r3, [ip, r0, asl #2]	@ tmp157, s_pFspInst
	cmp	r3, #0	@ tmp157,
	beq	.L368	@,
	movw	r5, #56800	@ tmp164,
	mov	r4, #0	@ tmp160,
	mul	r5, r5, r0	@ tmp163, tmp164, InstID
	str	r4, [r1, #0]	@ tmp160,* DecFsNum
	add	r3, r5, ip	@ tmp165, tmp163, tmp156
	ldr	r6, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L369	@,
	ldr	r3, [ip, r0, asl #2]	@ tmp195, s_pFspInst
	ldrsb	r3, [r3, #21]	@ D.36921, <variable>.s32DecFsNum
	cmp	r3, #0	@ D.36921,
	str	r3, [r1, #0]	@ D.36921,* DecFsNum
	ldr	ip, [ip, r0, asl #2]	@ temp.1290, s_pFspInst
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r0, ip, #31744	@ ivtmp.1281, temp.1290,
	mov	r3, r4	@ i.1292, tmp160
	add	ip, r0, #140	@ ivtmp.1281, ivtmp.1281,
.L360:
	ldr	r0, [ip], #48	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i.1292, i.1292,
	ldr	r0, [r1, #0]	@ tmp200,* DecFsNum
	cmp	r0, r3	@ tmp200, i.1292
	bgt	.L360	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L365:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2323	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L369:
	ldrsb	r3, [r3, #65]	@ D.36909, <variable>.s8LevelID
	cmp	r3, #1	@ D.36909,
	beq	.L356	@,
	cmp	r3, #2	@ D.36909,
	beq	.L370	@,
	mov	r0, r4	@, tmp160
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #2344	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L356:
	add	r3, ip, r5	@ tmp179, tmp156, tmp163
	add	r0, r3, #32000	@ pTreeFs, tmp179,
	add	r0, r0, #44	@ pTreeFs, pTreeFs,
.L358:
	ldr	r3, [r0, #0]	@ D.36912, <variable>.s32DecFsNum
	cmp	r3, #0	@ D.36912,
	str	r3, [r1, #0]	@ D.36912,* DecFsNum
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r3, #0	@ i,
.L359:
	ldr	ip, [r0, #68]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, #48	@ ivtmp.1276, ivtmp.1276,
	str	ip, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp193,* DecFsNum
	cmp	ip, r3	@ tmp193, i
	bgt	.L359	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L370:
	add	r0, ip, r5	@ tmp186, tmp156, tmp163
	add	ip, r0, #44288	@ pTreeFs, tmp186,
	add	r0, ip, #148	@ pTreeFs, pTreeFs,
	b	.L358	@
.L366:
	mov	r0, r2	@, DecFsAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2324	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L368:
	mov	r0, r3	@, tmp157
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2326	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L367:
	mov	r0, r1	@, DecFsNum
	movw	r2, #2325	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
	.fnstart
.LFB1388:
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
	cmp	r0, #15	@ InstID,
	bhi	.L385	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp143,
	movt	ip, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r3, [ip, r0, asl #2]	@ D.36692, s_pFspInst
	cmp	r3, #0	@ D.36692,
	beq	.L386	@,
	movw	r4, #56800	@ tmp149,
	mul	r0, r4, r0	@ tmp148, tmp149, InstID
	add	r4, r0, ip	@ tmp150, tmp148, tmp143
	ldr	r5, [r4, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L387	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L382	@,
	ldrsb	r0, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DecFsNum
	bge	.L381	@,
	add	r2, r2, r2, asl #1	@, tmp196, PhyFsID, PhyFsID,
	movw	ip, #31880	@ tmp193,
	add	r1, r3, r2, asl #4	@, tmp198, D.36692, tmp196,
	ldr	r0, [r1, ip]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L385:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2082	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L382:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L388	@,
.L381:
	mov	r0, #2	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L386:
	mov	r0, r3	@, D.36692
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2083	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L387:
	ldrsb	r3, [r4, #65]	@ D.36698, <variable>.s8LevelID
	cmp	r3, #1	@ D.36698,
	beq	.L377	@,
	cmp	r3, #2	@ D.36698,
	beq	.L389	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #2099	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L388:
	ldrsb	r0, [r3, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L381	@,
	add	r1, r2, r2, asl #1	@, tmp204, PhyFsID, PhyFsID,
	movw	ip, #34952	@ tmp201,
	add	r3, r3, r1, asl #4	@, tmp206, D.36692, tmp204,
	ldr	r0, [r3, ip]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L389:
	add	r0, ip, r0	@ tmp171, tmp143, tmp148
	add	ip, r0, #44288	@ pTreeFs, tmp171,
	add	r0, ip, #148	@ pTreeFs, pTreeFs,
.L379:
	cmp	r1, #0	@ ePhyFsType,
	bne	.L380	@,
	ldr	r1, [r0, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L381	@,
	add	r2, r2, r2, asl #1	@, tmp180, PhyFsID, PhyFsID,
	add	r3, r0, r2, asl #4	@, tmp182, pTreeFs, tmp180,
	ldr	r0, [r3, #64]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L377:
	add	r3, ip, r0	@ tmp164, tmp143, tmp148
	add	r0, r3, #32000	@ pTreeFs, tmp164,
	add	r0, r0, #44	@ pTreeFs, pTreeFs,
	b	.L379	@
.L380:
	cmp	r1, #1	@ ePhyFsType,
	bne	.L381	@,
	ldr	ip, [r0, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, ip	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L381	@,
	add	r2, r2, r2, asl #1	@, tmp188, PhyFsID, PhyFsID,
	add	r3, r0, r2, asl #4	@, tmp190, pTreeFs, tmp188,
	add	r1, r3, #6208	@ tmp191, tmp190,
	ldr	r0, [r1, #0]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
.LFB1387:
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
	cmp	r0, #15	@ InstID,
	bhi	.L404	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r4, [ip, r0, asl #2]	@ D.36639, s_pFspInst
	cmp	r4, #0	@ D.36639,
	beq	.L405	@,
	movw	r5, #56800	@ tmp150,
	mul	r0, r5, r0	@ tmp149, tmp150, InstID
	add	r5, r0, ip	@ tmp151, tmp149, tmp144
	ldr	r6, [r5, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L406	@,
	cmp	r1, #0	@ ePhyFsType,
	beq	.L407	@,
	cmp	r1, #1	@ ePhyFsType,
	beq	.L408	@,
.L400:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L407:
	ldrsb	r0, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DecFsNum
	bge	.L400	@,
	add	r2, r2, r2, asl #1	@, tmp197, PhyFsID, PhyFsID,
	movw	ip, #31880	@ tmp194,
	mov	r0, r1	@ Ret, ePhyFsType
	add	r4, r4, r2, asl #4	@, tmp199, D.36639, tmp197,
	str	r3, [r4, ip]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L406:
	ldrsb	r4, [r5, #65]	@ D.36645, <variable>.s8LevelID
	cmp	r4, #1	@ D.36645,
	beq	.L396	@,
	cmp	r4, #2	@ D.36645,
	beq	.L409	@,
	mov	r3, r4	@, D.36645
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #2027	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L396:
	add	ip, ip, r0	@ tmp165, tmp144, tmp149
	add	ip, ip, #32000	@ pTreeFs, tmp165,
	add	ip, ip, #44	@ pTreeFs, pTreeFs,
.L398:
	cmp	r1, #0	@ ePhyFsType,
	bne	.L399	@,
	ldr	r0, [ip, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L400	@,
	add	r2, r2, r2, asl #1	@, tmp181, PhyFsID, PhyFsID,
	mov	r0, r1	@ Ret, ePhyFsType
	add	r1, ip, r2, asl #4	@, tmp183, pTreeFs, tmp181,
	str	r3, [r1, #64]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L408:
	ldrsb	r1, [r4, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r1	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L400	@,
	add	r2, r2, r2, asl #1	@, tmp205, PhyFsID, PhyFsID,
	movw	ip, #34952	@ tmp202,
	mov	r0, #0	@ Ret,
	add	r4, r4, r2, asl #4	@, tmp207, D.36639, tmp205,
	str	r3, [r4, ip]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L409:
	add	ip, ip, r0	@ tmp172, tmp144, tmp149
	add	r0, ip, #44288	@ pTreeFs, tmp172,
	add	ip, r0, #148	@ pTreeFs, pTreeFs,
	b	.L398	@
.L399:
	cmp	r1, #1	@ ePhyFsType,
	bne	.L400	@,
	ldr	r0, [ip, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L400	@,
	add	r2, r2, r2, asl #1	@, tmp189, PhyFsID, PhyFsID,
	mov	r0, #0	@ Ret,
	add	r1, ip, r2, asl #4	@, tmp191, pTreeFs, tmp189,
	add	ip, r1, #6208	@ tmp192, tmp191,
	str	r3, [ip, #0]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L404:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2010	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L405:
	mov	r0, r4	@, D.36639
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2011	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
.LFB1386:
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
	ldr	r2, [r3, r0, asl #2]	@ D.36606, s_pFspInst
	cmp	r2, #0	@ D.36606,
	beq	.L416	@,
	movw	ip, #56800	@ tmp145,
	rsb	r1, r1, r1, asl #5	@, tmp153, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp144, tmp145, InstID
	add	ip, r0, r3	@ tmp146, tmp144, tmp139
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp157, tmp144, tmp153,
	addne	r2, r2, r1, asl #4	@, tmp163, D.36606, tmp161,
	addeq	r3, r3, r0	@ tmp158, tmp139, tmp157
	addne	r2, r2, #80	@ pstLogicFs, tmp163,
	addeq	r2, r3, #216	@ pstLogicFs, tmp158,
	ldrsb	r0, [r2, #1]	@ D.36610, <variable>.s32DispState
	ldmfd	sp, {fp, sp, pc}	@
.L416:
	mov	r0, r2	@, D.36606
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1983	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36610,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, r0, asl #2]	@ D.36515, s_pFspInst
	cmp	r2, #0	@ D.36515,
	beq	.L423	@,
	movw	ip, #56800	@ tmp145,
	rsb	r1, r1, r1, asl #5	@, tmp153, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp144, tmp145, InstID
	add	ip, r0, r3	@ tmp146, tmp144, tmp139
	ldr	ip, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r0, r0, r1, asl #4	@, tmp157, tmp144, tmp153,
	addne	r2, r2, r1, asl #4	@, tmp163, D.36515, tmp161,
	addeq	r3, r3, r0	@ tmp158, tmp139, tmp157
	addne	r2, r2, #80	@ pstLogicFs, tmp163,
	addeq	r2, r3, #216	@ pstLogicFs, tmp158,
	ldrsb	r0, [r2, #0]	@ D.36519, <variable>.s32IsRef
	ldmfd	sp, {fp, sp, pc}	@
.L423:
	mov	r0, r2	@, D.36515
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1879	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36519,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1383:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r0	@ InstID, InstID
	mov	r7, r2	@ IsRef, IsRef
	bhi	.L449	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L450	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp288,
	movt	r5, #:upper16:.LANCHOR0	@ tmp288,
	ldr	r8, [r5, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r8, #0	@ pstInst,
	beq	.L451	@,
	movw	ip, #56800	@ tmp158,
	rsb	r1, r1, r1, asl #5	@, tmp166, LogicFrameID, LogicFrameID,
	mul	r0, ip, r0	@ tmp157, tmp158, InstID
	add	sl, r0, r5	@ tmp159, tmp157, tmp288
	ldr	r2, [sl, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	uxtb	sl, r7	@ D.36426, IsRef
	cmp	r2, #1	@ <variable>.eFspInstState,
	addeq	r4, r0, r1, asl #4	@, tmp170, tmp157, tmp166,
	addne	r4, r8, r1, asl #4	@, tmp176, pstInst, tmp174,
	addeq	r4, r4, r5	@ tmp171, tmp170, tmp288
	addne	r4, r4, #80	@ pstLogicFs, tmp176,
	addeq	r4, r4, #216	@ pstLogicFs, tmp171,
	moveq	r8, #0	@ pstInst,
	ldrsb	r3, [r4, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	sl, [r4, #0]	@ D.36426, <variable>.s32IsRef
	cmp	r3, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	r2, [r4, #472]	@ prephitmp.1409, <variable>.pstDecodeFs
	cmp	r2, #0	@ prephitmp.1409,
	beq	.L431	@,
	ldr	r1, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r4, #464]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, r3	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L452	@,
.L431:
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.36446, <variable>.PmvIdc
	cmp	r2, #19	@ D.36446,
	bhi	.L434	@,
	cmp	r7, #1	@ IsRef,
	beq	.L453	@,
	cmp	r7, #0	@ IsRef,
	bne	.L436	@,
	ldr	r1, [r4, #468]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r1, #2	@ <variable>.eLfsPmvState,
	beq	.L454	@,
.L440:
	ldr	r3, [r4, #476]	@ D.36475, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36475,
	beq	.L444	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L455	@,
.L445:
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r4, #464]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r2	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L456	@,
.L444:
	movw	r0, #56800	@ tmp259,
	mla	r1, r0, r6, r5	@ tmp260, tmp259, InstID, tmp288
	ldr	r3, [r1, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L457	@,
.L446:
	cmp	r7, #0	@ IsRef,
	streq	r7, [r4, #472]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L449:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1733	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L453:
	ldr	r1, [r4, #468]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r1, #1	@ <variable>.eLfsPmvState,
	beq	.L458	@,
.L436:
	ldr	r3, [r4, #476]	@ D.36475, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36475,
	bne	.L445	@,
	b	.L444	@
.L450:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1734	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L434:
	sxtb	r2, r2	@, D.36446
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ IsRef,
	beq	.L440	@,
	b	.L436	@
.L457:
	ldr	r3, [r4, #472]	@ D.36430, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36430,
	beq	.L447	@,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r4, #464]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r2	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L459	@,
.L447:
	ldr	r3, [r4, #476]	@ temp.1436, <variable>.pstDispOutFs
	cmp	r3, #0	@ temp.1436,
	beq	.L446	@,
	ldr	r1, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r0, [r4, #464]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, r0	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L446	@,
	movw	r2, #56800	@ tmp281,
	ldrsb	ip, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mla	r5, r2, r6, r5	@ tmp282, tmp281, InstID, tmp288
	mov	r0, r6	@, InstID
	ldr	r2, [r3, #4]	@, <variable>.PhyFsID
	mov	r3, #1	@,
	add	lr, r5, ip	@ tmp283, tmp282, <variable>.s32LogicFsID
	ldrsb	r1, [lr, #112]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L446	@
.L452:
	ldrsb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, r7	@ <variable>.IsDecRef, IsRef
	beq	.L432	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp182,
	movt	r3, #:upper16:.LANCHOR2	@ tmp182,
	ldr	ip, [r3, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L432	@,
	ldr	r3, [r3, #-3992]	@ D.38073, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r2, #12]	@ D.36444, <variable>.PhyAddr
	cmp	r3, #0	@ D.38073,
	beq	.L460	@,
	mov	r2, r7	@, IsRef
	mov	r0, r6	@, InstID
	blx	r3	@ D.38073
	ldr	r2, [r4, #472]	@ prephitmp.1409, <variable>.pstDecodeFs
.L432:
	strb	sl, [r2, #0]	@ D.36426, <variable>.IsDecRef
	b	.L431	@
.L456:
	cmp	r7, #1	@ IsRef,
	bne	.L444	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	moveq	r1, #2	@ tmp252,
	streqb	r1, [r3, #2]	@ tmp252, <variable>.DispState
	streqb	r1, [r4, #1]	@ tmp252, <variable>.s32DispState
	b	.L444	@
.L455:
	mov	r0, #0	@ tmp247,
	strb	r0, [r3, #2]	@ tmp247, <variable>.DispState
	b	.L436	@
.L454:
	movw	ip, #56800	@ tmp220,
	mla	r3, ip, r6, r5	@ tmp221, tmp220, InstID, tmp288
	ldr	r0, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	sxtabeq	r3, r3, r2	@ tmp230, tmp221, D.36446
	streqb	r7, [r3, #92]	@ IsRef, <variable>.IsPmvInUse
	beq	.L442	@,
	cmp	r8, #0	@ pstInst,
	sxtabne	r2, r8, r2	@ tmp238, pstInst, D.36446
	strneb	r7, [r2, #1]	@ IsRef, <variable>.IsPmvInUse
	beq	.L461	@,
.L442:
	mov	r2, #0	@ tmp242,
	str	r2, [r4, #468]	@ tmp242, <variable>.eLfsPmvState
	str	r2, [r4, #484]	@ tmp242, <variable>.PmvAddr
	b	.L440	@
.L451:
	mov	r0, r8	@, pstInst
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1735	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L458:
	movw	ip, #56800	@ tmp192,
	mla	r3, ip, r6, r5	@ tmp193, tmp192, InstID, tmp288
	ldr	r0, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	sxtabeq	r3, r3, r2	@ tmp202, tmp193, D.36446
	streqb	r7, [r3, #92]	@ IsRef, <variable>.IsPmvInUse
	beq	.L438	@,
	cmp	r8, #0	@ pstInst,
	sxtabne	r2, r8, r2	@ tmp211, pstInst, D.36446
	strneb	r7, [r2, r7]	@ IsRef, <variable>.IsPmvInUse
	beq	.L462	@,
.L438:
	mov	r2, #2	@ tmp215,
	str	r2, [r4, #468]	@ tmp215, <variable>.eLfsPmvState
	b	.L436	@
.L459:
	ldrsb	ip, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mov	r0, r6	@, InstID
	ldr	r2, [r3, #4]	@, <variable>.PhyFsID
	mov	r3, #0	@,
	add	lr, r1, ip	@ tmp271, tmp260, <variable>.s32LogicFsID
	ldrsb	r1, [lr, #112]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L447	@
.L460:
	mov	r0, r3	@, D.38073
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #472]	@ prephitmp.1409, <variable>.pstDecodeFs
	strb	sl, [r2, #0]	@ D.36426, <variable>.IsDecRef
	b	.L431	@
.L461:
	movw	r1, #:lower16:.LC21	@,
	movw	r2, #:lower16:.LANCHOR3	@,
	movt	r1, #:upper16:.LC21	@,
	movt	r2, #:upper16:.LANCHOR3	@,
	movw	r3, #1816	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L462:
	movw	r1, #:lower16:.LC21	@,
	movw	r2, #:lower16:.LANCHOR3	@,
	movt	r1, #:upper16:.LC21	@,
	movt	r2, #:upper16:.LANCHOR3	@,
	movw	r3, #1796	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
.LFB1382:
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
	cmp	r0, #15	@ InstID,
	bhi	.L472	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L473	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp230,
	movt	r3, #:upper16:.LANCHOR0	@ tmp230,
	ldr	r2, [r3, r0, asl #2]	@ D.36375, s_pFspInst
	cmp	r2, #0	@ D.36375,
	beq	.L474	@,
	movw	ip, #56800	@ tmp149,
	mul	ip, ip, r0	@ tmp148, tmp149, InstID
	add	r4, ip, r3	@ tmp150, tmp148, tmp230
	ldr	r5, [r4, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L475	@,
	mov	r3, r1, asl #5	@ tmp231, LogicFrameID,
	rsb	r0, r1, r3	@ tmp202, LogicFrameID, tmp231
	add	r0, r2, r0, asl #4	@, tmp204, D.36375, tmp202,
	ldr	ip, [r0, #548]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldrb	r0, [r0, #84]	@ zero_extendqisi2	@ temp.1469, <variable>.PmvIdc
	rsb	r1, r1, r3	@ tmp224, LogicFrameID, tmp231
	mov	r3, #0	@ tmp228,
	cmp	r0, #19	@ temp.1469,
	sxtabls	r0, r2, r0	@ tmp217, D.36375, temp.1469
	movls	ip, #0	@ tmp219,
	strlsb	ip, [r0, #1]	@ tmp219, <variable>.IsPmvInUse
	add	ip, r2, r1, asl #4	@, tmp226, D.36375, tmp224,
	add	r2, ip, #544	@ tmp227, tmp226,
	str	r3, [r2, #4]	@ tmp228, <variable>.eLfsPmvState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L472:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1686	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L475:
	mov	r2, r1, asl #5	@ tmp229, LogicFrameID,
	rsb	r5, r1, r2	@ tmp157, LogicFrameID, tmp229
	add	ip, ip, r5, asl #4	@, tmp161, tmp148, tmp157,
	add	ip, ip, r3	@ tmp162, tmp161, tmp230
	ldr	r5, [ip, #684]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r5, #2	@ <variable>.eLfsPmvState,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldrb	ip, [ip, #220]	@ zero_extendqisi2	@ D.36386, <variable>.PmvIdc
	cmp	ip, #19	@ D.36386,
	sxtabls	ip, r4, ip	@ tmp183, tmp150, D.36386
	addls	ip, ip, #88	@ tmp184, tmp183,
	movls	r4, #0	@ tmp185,
	strlsb	r4, [ip, #4]	@ tmp185, <variable>.IsPmvInUse
	rsb	ip, r1, r2	@ tmp191, LogicFrameID, tmp229
	movw	r1, #56800	@ tmp194,
	mov	r2, #0	@ tmp198,
	mul	r0, r1, r0	@ tmp193, tmp194, InstID
	add	r1, r0, ip, asl #4	@, tmp195, tmp193, tmp191,
	add	r0, r1, r3	@ tmp196, tmp195, tmp230
	add	r3, r0, #680	@ tmp197, tmp196,
	str	r2, [r3, #4]	@ tmp198, <variable>.eLfsPmvState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L473:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1687	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L474:
	mov	r0, r2	@, D.36375
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1688	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_FirstFsCheck
	.type	FSP_FirstFsCheck, %function
FSP_FirstFsCheck:
	.fnstart
.LFB1380:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [r3, r0, asl #2]	@ D.36101, s_pFspInst
	cmp	ip, #0	@ D.36101,
	beq	.L485	@,
	add	r0, r0, r0, asl #5	@, tmp153, InstID, InstID,
	movw	r2, #:lower16:.LANCHOR1	@ tmp186,
	movt	r2, #:upper16:.LANCHOR1	@ tmp186,
	add	r4, r2, r0, asl #3	@, tmp155, tmp186, tmp153,
	sub	r3, r4, #48	@ tmp156, tmp155,
	ldrsh	r4, [r3, #2]	@ D.36108, <variable>.history
	cmn	r4, #1	@ D.36108,
	beq	.L479	@,
	ldrh	r3, [r3, #4]	@ i, <variable>.head
	cmp	r3, r4	@ i, D.36108
	beq	.L479	@,
	movw	r7, #38112	@ tmp170,
	movw	r6, #31932	@ tmp166,
	ldr	r5, [ip, r7]	@ <variable>.eFspInstState, <variable>.eFspInstState
	ldr	r7, [ip, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, #1	@ <variable>.eFspInstState,
	movw	r5, #31884	@ tmp167,
	ldr	r6, [ip, r5]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r5, [ip, #40]	@ PreSlotLen, <variable>.stPreInfo.s32PreDecSlotLen
	rsb	r7, r6, r7	@ SlotLen, <variable>.PhyAddr, <variable>.PhyAddr
	beq	.L486	@,
.L480:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L479:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L486:
	and	r3, r3, #63	@ i.1496, i,
	cmp	r4, r3	@ D.36108, i.1496
	beq	.L480	@,
	mov	r6, r0, asl #1	@ tmp189, tmp153,
	add	r7, r1, r7	@ tmp190, DecPhyAddr, SlotLen
.L484:
	add	r0, r6, r3	@ tmp177, tmp189, i.1496
	add	r3, r3, #1	@ i.1497, i.1496,
	and	r3, r3, #63	@ i.1496, i.1497,
	add	ip, r2, r0, asl #2	@, tmp181, tmp186, tmp177,
	ldr	ip, [ip, #-40]	@ D.36120, <variable>.Addr
	add	r0, ip, r5	@ tmp183, D.36120, PreSlotLen
	cmp	r0, r1	@ tmp183, DecPhyAddr
	blt	.L481	@,
	cmp	ip, r7	@ D.36120, tmp190
	ble	.L487	@,
.L481:
	cmp	r4, r3	@ D.36108, i.1496
	bne	.L484	@,
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L487:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L485:
	mov	r0, ip	@, D.36101
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1297	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	FSP_FirstFsCheck, .-FSP_FirstFsCheck
	.align	2
	.global	FSP_GetDecodePmvTable
	.type	FSP_GetDecodePmvTable, %function
FSP_GetDecodePmvTable:
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
	cmp	r0, #15	@ InstID,
	bhi	.L500	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L501	@,
	cmp	r2, #0	@ pPmvNum,
	beq	.L502	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp150,
	ldr	ip, [r3, r0, asl #2]	@ D.35917, s_pFspInst
	cmp	ip, #0	@ D.35917,
	beq	.L503	@,
	movw	r4, #56800	@ tmp156,
	mul	r0, r4, r0	@ tmp155, tmp156, InstID
	add	r4, r0, r3	@ tmp157, tmp155, tmp150
	ldr	r4, [r4, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L504	@,
	ldrsb	r3, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r3, [r2, #0]	@ <variable>.s32PmvNum,* pPmvNum
	ldrsb	r2, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r2, #0	@ <variable>.s32PmvNum,
	ldmlefd	sp, {r3, r4, fp, sp, pc}	@
	mov	r3, #0	@ ivtmp.1534,
	mov	r2, r3	@ i.1541, ivtmp.1534
.L496:
	add	r0, ip, r3	@ tmp172, D.35917, ivtmp.1534
	add	r2, r2, #1	@ i.1541, i.1541,
	add	r0, r0, #37888	@ tmp174, tmp172,
	ldr	r0, [r0, #236]	@ tmp175, <variable>.PmvAddr
	str	r0, [r1, r3]	@ tmp175,* ivtmp.1534
	add	r3, r3, #4	@ ivtmp.1534, ivtmp.1534,
	ldrsb	r0, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r2	@ <variable>.s32PmvNum, i.1541
	bgt	.L496	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L500:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #910	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L504:
	add	ip, r3, #64	@ tmp161, tmp150,
	add	r4, ip, r0	@ pstTreeInst, tmp161, tmp155
	movw	r0, #31896	@ tmp164,
	ldr	r3, [r4, r0]	@ D.35924, <variable>.stTreePMV.s32PmvNum
	cmp	r3, #0	@ D.35924,
	str	r3, [r2, #0]	@ D.35924,* pPmvNum
	ldmlefd	sp, {r3, r4, fp, sp, pc}	@
	mov	r3, #0	@ ivtmp.1528,
	mov	ip, r3	@ i, ivtmp.1528
.L495:
	add	r0, r4, r3	@ tmp165, pstTreeInst, ivtmp.1528
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #31744	@ tmp167, tmp165,
	ldr	r0, [r0, #156]	@ tmp168, <variable>.stTreePMV.PmvAddr
	str	r0, [r1, r3]	@ tmp168,* ivtmp.1528
	add	r3, r3, #4	@ ivtmp.1528, ivtmp.1528,
	ldr	r0, [r2, #0]	@ tmp169,* pPmvNum
	cmp	r0, ip	@ tmp169, i
	bgt	.L495	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L501:
	mov	r0, r1	@, PhyAddr
	movw	r2, #911	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L502:
	mov	r0, r2	@, pPmvNum
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #912	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L503:
	mov	r0, ip	@, D.35917
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #913	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecodePmvTable, .-FSP_GetDecodePmvTable
	.align	2
	.global	FSP_GetDecodeFrameTable
	.type	FSP_GetDecodeFrameTable, %function
FSP_GetDecodeFrameTable:
	.fnstart
.LFB1375:
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
	cmp	r0, #15	@ InstID,
	bhi	.L522	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L523	@,
	cmp	r2, #0	@ pFsNum,
	beq	.L524	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp150,
	movt	ip, #:upper16:.LANCHOR0	@ tmp150,
	ldr	r4, [ip, r0, asl #2]	@ D.35873, s_pFspInst
	cmp	r4, #0	@ D.35873,
	beq	.L525	@,
	movw	r3, #56800	@ tmp156,
	mul	r0, r3, r0	@ tmp155, tmp156, InstID
	add	r3, r0, ip	@ tmp157, tmp155, tmp150
	ldr	r5, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L526	@,
	ldrsb	r0, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	r0, [r2, #0]	@ <variable>.s32DecFsNum,* pFsNum
	ldrsb	r2, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	ip, r4, #31744	@ ivtmp.1580, D.35873,
	mov	r3, #0	@ i.1589,
	add	r2, ip, #140	@ ivtmp.1580, ivtmp.1580,
.L517:
	ldr	ip, [r2], #48	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r1, r3, asl #2]	@ <variable>.PhyAddr,* PhyAddr
	add	r3, r3, #1	@ i.1589, i.1589,
	ldrsb	r0, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r3	@ <variable>.s32DecFsNum, i.1589
	bgt	.L517	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L522:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #854	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L526:
	ldrsb	r3, [r3, #65]	@ D.35879, <variable>.s8LevelID
	cmp	r3, #1	@ D.35879,
	beq	.L513	@,
	cmp	r3, #2	@ D.35879,
	beq	.L527	@,
	movw	r1, #:lower16:.LC25	@,
	movw	r2, #873	@,
	movt	r1, #:upper16:.LC25	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L513:
	add	r3, ip, r0	@ tmp171, tmp150, tmp155
	add	ip, r3, #32000	@ pTreeFs, tmp171,
	add	ip, ip, #44	@ pTreeFs, pTreeFs,
.L515:
	ldr	r3, [ip, #0]	@ D.35882, <variable>.s32DecFsNum
	cmp	r3, #0	@ D.35882,
	str	r3, [r2, #0]	@ D.35882,* pFsNum
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r3, #0	@ i,
.L516:
	ldr	r4, [ip, #68]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	ip, ip, #48	@ ivtmp.1575, ivtmp.1575,
	str	r4, [r1, r3, asl #2]	@ <variable>.PhyAddr,* PhyAddr
	add	r3, r3, #1	@ i, i,
	ldr	r4, [r2, #0]	@ tmp185,* pFsNum
	cmp	r4, r3	@ tmp185, i
	bgt	.L516	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L527:
	add	ip, ip, r0	@ tmp178, tmp150, tmp155
	add	r0, ip, #44288	@ pTreeFs, tmp178,
	add	ip, r0, #148	@ pTreeFs, pTreeFs,
	b	.L515	@
.L523:
	mov	r0, r1	@, PhyAddr
	movw	r2, #855	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L525:
	mov	r0, r4	@, D.35873
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #857	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L524:
	mov	r0, r2	@, pFsNum
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #856	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecodeFrameTable, .-FSP_GetDecodeFrameTable
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
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
	cmp	r0, #15	@ InstID,
	bhi	.L534	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, r0, asl #2]	@ D.35460, s_pFspInst
	cmp	r2, #0	@ D.35460,
	beq	.L535	@,
	movw	r1, #56800	@ tmp143,
	mla	ip, r1, r0, r3	@ tmp144, tmp143, InstID, tmp137
	movw	r3, #38112	@ tmp154,
	ldr	r0, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@ tmp153,
	streq	r0, [ip, #176]	@ tmp153, <variable>.eFspInstState
	ldr	r1, [r2, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	moveq	r1, #0	@ tmp157,
	streq	r1, [r2, r3]	@ tmp157, <variable>.eFspInstState
	ldmfd	sp, {fp, sp, pc}	@
.L534:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #257	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L535:
	mov	r0, r2	@, D.35460
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #258	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp244,
	movt	r4, #:upper16:.LANCHOR0	@ tmp244,
	ldr	r3, [r4, #0]	@ temp.1640, s_pFspInst
	cmp	r3, #0	@ temp.1640,
	beq	.L537	@,
	movw	r2, #38112	@ tmp150,
	ldr	r3, [r3, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L570	@,
.L537:
	ldr	r0, [r4, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L571	@,
.L538:
	ldr	r3, [r4, #4]	@ temp.1643, s_pFspInst
	cmp	r3, #0	@ temp.1643,
	beq	.L539	@,
	movw	ip, #38112	@ tmp155,
	ldr	r1, [r3, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L572	@,
.L539:
	movw	r2, #56976	@ tmp158,
	ldr	r3, [r4, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L573	@,
.L540:
	ldr	r3, [r4, #8]	@ temp.1646, s_pFspInst
	cmp	r3, #0	@ temp.1646,
	beq	.L541	@,
	movw	r1, #38112	@ tmp161,
	ldr	r0, [r3, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L574	@,
.L541:
	movw	r3, #:lower16:113776	@ tmp164,
	movt	r3, #:upper16:113776	@ tmp164,
	ldr	ip, [r4, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L575	@,
.L542:
	ldr	r3, [r4, #12]	@ temp.1649, s_pFspInst
	cmp	r3, #0	@ temp.1649,
	beq	.L543	@,
	movw	r2, #38112	@ tmp167,
	ldr	r0, [r3, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L576	@,
.L543:
	movw	ip, #:lower16:170576	@ tmp170,
	movt	ip, #:upper16:170576	@ tmp170,
	ldr	r1, [r4, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L577	@,
.L544:
	ldr	r3, [r4, #16]	@ temp.1652, s_pFspInst
	cmp	r3, #0	@ temp.1652,
	beq	.L545	@,
	movw	r0, #38112	@ tmp173,
	ldr	r3, [r3, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L578	@,
.L545:
	movw	r1, #:lower16:227376	@ tmp176,
	movt	r1, #:upper16:227376	@ tmp176,
	ldr	r2, [r4, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L579	@,
.L546:
	ldr	r3, [r4, #20]	@ temp.1655, s_pFspInst
	cmp	r3, #0	@ temp.1655,
	beq	.L547	@,
	movw	r0, #38112	@ tmp179,
	ldr	ip, [r3, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L580	@,
.L547:
	movw	r2, #:lower16:284176	@ tmp182,
	movt	r2, #:upper16:284176	@ tmp182,
	ldr	r3, [r4, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L581	@,
.L548:
	ldr	r3, [r4, #24]	@ temp.1658, s_pFspInst
	cmp	r3, #0	@ temp.1658,
	beq	.L549	@,
	movw	ip, #38112	@ tmp185,
	ldr	r1, [r3, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L582	@,
.L549:
	movw	r3, #:lower16:340976	@ tmp188,
	movt	r3, #:upper16:340976	@ tmp188,
	ldr	r0, [r4, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L583	@,
.L550:
	ldr	r3, [r4, #28]	@ temp.1661, s_pFspInst
	cmp	r3, #0	@ temp.1661,
	beq	.L551	@,
	movw	r2, #38112	@ tmp191,
	ldr	r1, [r3, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L584	@,
.L551:
	movw	r0, #:lower16:397776	@ tmp194,
	movt	r0, #:upper16:397776	@ tmp194,
	ldr	ip, [r4, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L585	@,
.L552:
	ldr	r3, [r4, #32]	@ temp.1664, s_pFspInst
	cmp	r3, #0	@ temp.1664,
	beq	.L553	@,
	movw	r1, #38112	@ tmp197,
	ldr	r3, [r3, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L586	@,
.L553:
	movw	ip, #:lower16:454576	@ tmp200,
	movt	ip, #:upper16:454576	@ tmp200,
	ldr	r2, [r4, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L587	@,
.L554:
	ldr	r3, [r4, #36]	@ temp.1667, s_pFspInst
	cmp	r3, #0	@ temp.1667,
	beq	.L555	@,
	movw	r1, #38112	@ tmp203,
	ldr	r0, [r3, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L588	@,
.L555:
	movw	r2, #:lower16:511376	@ tmp206,
	movt	r2, #:upper16:511376	@ tmp206,
	ldr	r3, [r4, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L589	@,
.L556:
	ldr	r3, [r4, #40]	@ temp.1670, s_pFspInst
	cmp	r3, #0	@ temp.1670,
	beq	.L557	@,
	movw	r0, #38112	@ tmp209,
	ldr	ip, [r3, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L590	@,
.L557:
	movw	r3, #:lower16:568176	@ tmp212,
	movt	r3, #:upper16:568176	@ tmp212,
	ldr	r1, [r4, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L591	@,
.L558:
	ldr	r3, [r4, #44]	@ temp.1673, s_pFspInst
	cmp	r3, #0	@ temp.1673,
	beq	.L559	@,
	movw	r2, #38112	@ tmp215,
	ldr	ip, [r3, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L592	@,
.L559:
	movw	r1, #:lower16:624976	@ tmp218,
	movt	r1, #:upper16:624976	@ tmp218,
	ldr	r0, [r4, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L593	@,
.L560:
	ldr	r3, [r4, #48]	@ temp.1676, s_pFspInst
	cmp	r3, #0	@ temp.1676,
	beq	.L561	@,
	movw	ip, #38112	@ tmp221,
	ldr	r3, [r3, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L594	@,
.L561:
	movw	r0, #:lower16:681776	@ tmp224,
	movt	r0, #:upper16:681776	@ tmp224,
	ldr	r2, [r4, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L595	@,
.L562:
	ldr	r3, [r4, #52]	@ temp.1679, s_pFspInst
	cmp	r3, #0	@ temp.1679,
	beq	.L563	@,
	movw	ip, #38112	@ tmp227,
	ldr	r1, [r3, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L596	@,
.L563:
	movw	r2, #:lower16:738576	@ tmp230,
	movt	r2, #:upper16:738576	@ tmp230,
	ldr	r3, [r4, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L597	@,
.L564:
	ldr	r3, [r4, #56]	@ temp.1682, s_pFspInst
	cmp	r3, #0	@ temp.1682,
	beq	.L565	@,
	movw	r1, #38112	@ tmp233,
	ldr	r0, [r3, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L598	@,
.L565:
	movw	r3, #:lower16:795376	@ tmp236,
	movt	r3, #:upper16:795376	@ tmp236,
	ldr	ip, [r4, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L599	@,
.L566:
	ldr	r3, [r4, #60]	@ D.35418, s_pFspInst
	cmp	r3, #0	@ D.35418,
	beq	.L567	@,
	movw	r2, #38112	@ tmp239,
	ldr	r0, [r3, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L600	@,
.L567:
	movw	ip, #:lower16:852176	@ tmp242,
	movt	ip, #:upper16:852176	@ tmp242,
	ldr	r1, [r4, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
.L601:
	mov	r0, #15	@,
	bl	FSP_DisableInstance	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L599:
	mov	r0, #14	@,
	bl	FSP_DisableInstance	@
	b	.L566	@
.L597:
	mov	r0, #13	@,
	bl	FSP_DisableInstance	@
	b	.L564	@
.L595:
	mov	r0, #12	@,
	bl	FSP_DisableInstance	@
	b	.L562	@
.L593:
	mov	r0, #11	@,
	bl	FSP_DisableInstance	@
	b	.L560	@
.L591:
	mov	r0, #10	@,
	bl	FSP_DisableInstance	@
	b	.L558	@
.L589:
	mov	r0, #9	@,
	bl	FSP_DisableInstance	@
	b	.L556	@
.L587:
	mov	r0, #8	@,
	bl	FSP_DisableInstance	@
	b	.L554	@
.L585:
	mov	r0, #7	@,
	bl	FSP_DisableInstance	@
	b	.L552	@
.L583:
	mov	r0, #6	@,
	bl	FSP_DisableInstance	@
	b	.L550	@
.L581:
	mov	r0, #5	@,
	bl	FSP_DisableInstance	@
	b	.L548	@
.L579:
	mov	r0, #4	@,
	bl	FSP_DisableInstance	@
	b	.L546	@
.L577:
	mov	r0, #3	@,
	bl	FSP_DisableInstance	@
	b	.L544	@
.L575:
	mov	r0, #2	@,
	bl	FSP_DisableInstance	@
	b	.L542	@
.L573:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	b	.L540	@
.L571:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L538	@
.L572:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	b	.L539	@
.L570:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L537	@
.L576:
	mov	r0, #3	@,
	bl	FSP_DisableInstance	@
	b	.L543	@
.L574:
	mov	r0, #2	@,
	bl	FSP_DisableInstance	@
	b	.L541	@
.L580:
	mov	r0, #5	@,
	bl	FSP_DisableInstance	@
	b	.L547	@
.L578:
	mov	r0, #4	@,
	bl	FSP_DisableInstance	@
	b	.L545	@
.L584:
	mov	r0, #7	@,
	bl	FSP_DisableInstance	@
	b	.L551	@
.L582:
	mov	r0, #6	@,
	bl	FSP_DisableInstance	@
	b	.L549	@
.L588:
	mov	r0, #9	@,
	bl	FSP_DisableInstance	@
	b	.L555	@
.L586:
	mov	r0, #8	@,
	bl	FSP_DisableInstance	@
	b	.L553	@
.L592:
	mov	r0, #11	@,
	bl	FSP_DisableInstance	@
	b	.L559	@
.L590:
	mov	r0, #10	@,
	bl	FSP_DisableInstance	@
	b	.L557	@
.L596:
	mov	r0, #13	@,
	bl	FSP_DisableInstance	@
	b	.L563	@
.L594:
	mov	r0, #12	@,
	bl	FSP_DisableInstance	@
	b	.L561	@
.L600:
	mov	r0, #15	@,
	bl	FSP_DisableInstance	@
	movw	ip, #:lower16:852176	@ tmp242,
	movt	ip, #:upper16:852176	@ tmp242,
	ldr	r1, [r4, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	b	.L601	@
.L598:
	mov	r0, #14	@,
	bl	FSP_DisableInstance	@
	b	.L565	@
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_UdateInfo
	.type	FSP_UdateInfo, %function
FSP_UdateInfo:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 632
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #656
	sub	sp, sp, #656	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	mov	r5, r1	@ Width, Width
	mov	r4, r2	@ Height, Height
	bhi	.L611	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp153,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp153,
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	ldr	ip, [r2, #36]	@ D.35305, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r6, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	ip, #0	@ D.35305,
	beq	.L605	@,
	mov	r1, #10	@ tmp154,
	str	r0, [sp, #12]	@ InstID,
	str	r1, [sp, #4]	@ tmp154,
	mov	lr, #0	@ tmp156,
	sub	r0, fp, #656	@ tmp158,,
	str	r1, [sp, #0]	@ tmp154,
	str	r0, [sp, #16]	@ tmp158,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp156,
	mov	r0, #1024	@,
	mov	r2, r5	@, Width
	mov	r3, r4	@, Height
	blx	ip	@ D.35305
	cmp	r0, #0	@,
	bne	.L605	@,
	add	ip, r6, #34816	@ ivtmp.1723, pstInst,
	add	r7, r6, #31744	@ ivtmp.1715, pstInst,
	add	r2, ip, #148	@ ivtmp.1723, ivtmp.1723,
	add	r3, r7, #148	@ ivtmp.1715, ivtmp.1715,
	mov	ip, r2	@ D.39346, ivtmp.1723
.L607:
	ldr	r7, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	add	r0, r3, #48	@ tmp194, ivtmp.1715,
	str	r5, [r3, #4]	@ Width, <variable>.FsWidth
	add	r1, r2, #48	@ tmp195, ivtmp.1723,
	str	r4, [r3, #8]	@ Height, <variable>.FsHeight
	str	r7, [r3, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	lr, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r3, #12]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r3, #16]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	lr, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	lr, [r3, #20]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	r7, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r2, #4]	@ Width, <variable>.FsWidth
	str	r4, [r2, #8]	@ Height, <variable>.FsHeight
	str	r7, [r2, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	lr, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r2, #12]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r2, #16]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	lr, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	lr, [r2, #20]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	r7, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r0, #4]	@ Width, <variable>.FsWidth
	str	r4, [r0, #8]	@ Height, <variable>.FsHeight
	str	r7, [r3, #48]	@ MemArrange.VahbStride, <variable>.Stride
	add	r3, r3, #96	@ ivtmp.1715, ivtmp.1715,
	ldr	lr, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	cmp	r3, ip	@ ivtmp.1715, D.39346
	str	lr, [r0, #12]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r0, #16]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r7, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r7, [r0, #20]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	lr, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r1, #4]	@ Width, <variable>.FsWidth
	str	lr, [r2, #48]	@ MemArrange.VahbStride, <variable>.Stride
	add	r2, r2, #96	@ ivtmp.1723, ivtmp.1723,
	str	r4, [r1, #8]	@ Height, <variable>.FsHeight
	ldr	r0, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r1, #12]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	lr, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	lr, [r1, #16]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r0, [r1, #20]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	bne	.L607	@,
	ldr	lr, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	movw	r2, #38040	@ tmp173,
	movw	r3, #38036	@ tmp171,
	movw	r1, #38044	@ tmp174,
	str	r5, [r6, r2]	@ Width, <variable>.FsWidth
	movw	ip, #38048	@ tmp175,
	str	lr, [r6, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r2, #38052	@ tmp177,
	str	r4, [r6, r1]	@ Height, <variable>.FsHeight
	movw	r3, #38056	@ tmp179,
	ldr	r0, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r6, ip]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	ip, #38120	@ tmp181,
	ldr	lr, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	mov	r0, #0	@ D.35302,
	str	lr, [r6, r2]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	lr, #31848	@ tmp185,
	ldr	r1, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r6, r3]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	movw	r1, #31852	@ tmp186,
	ldr	r2, [fp, #-36]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	movw	r3, #31844	@ tmp183,
	str	r2, [r6, ip]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	movw	r2, #31856	@ tmp187,
	ldr	ip, [fp, #-656]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r4, [r6, r1]	@ Height, <variable>.stDummyPhyFs.FsHeight
	movw	r1, #31860	@ tmp189,
	str	r5, [r6, lr]	@ Width, <variable>.stDummyPhyFs.FsWidth
	str	ip, [r6, r3]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r3, #31864	@ tmp191,
	ldr	lr, [fp, #-392]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r6, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	ldr	ip, [fp, #-388]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	ip, [r6, r1]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	ldr	r2, [fp, #-384]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r6, r3]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
.L604:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L611:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #73	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35302,
	b	.L604	@
.L605:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35302,
	b	.L604	@
	.fnend
	.size	FSP_UdateInfo, .-FSP_UdateInfo
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
.LFB1378:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #56800	@ tmp149,
	mul	r1, r1, r0	@ tmp148, tmp149, InstID
	movw	r2, #:lower16:.LANCHOR0	@ tmp146,
	movt	r2, #:upper16:.LANCHOR0	@ tmp146,
	add	r3, r1, r2	@ tmp150, tmp148, tmp146
	ldr	r4, [r3, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L651	@,
	ldr	r2, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r2, #0	@ pstInst,
	beq	.L652	@,
	ldrsb	r4, [r2, #21]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L619	@,
	add	r2, r2, #31744	@ ivtmp.1773, pstInst,
	sub	r3, r4, #1	@ tmp199, TotalFsNum,
	and	ip, r3, #1	@ tmp201, tmp199,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #128]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L653	@,
.L637:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #48	@ ivtmp.1773, ivtmp.1773,
	ble	.L619	@,
	cmp	ip, #0	@ tmp201,
	beq	.L625	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L639	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L621	@,
.L639:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #48	@ ivtmp.1773, ivtmp.1773,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L619	@,
.L625:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #48	@ tmp203, ivtmp.1773,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L624	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L621	@,
.L624:
	ldrsb	r2, [r2, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp202, i
	bne	.L642	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L621	@,
.L642:
	add	r3, r2, #1	@ i, tmp202,
	add	r2, r1, #48	@ ivtmp.1773, tmp203,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L625	@,
.L619:
	sub	r1, fp, #20	@ tmp186,,
	mov	r5, #0	@ tmp183,
	sub	r2, fp, #32	@,,
	sub	r3, fp, #28	@,,
	str	r5, [r1, #-4]!	@ tmp183, RefNum
	str	r5, [fp, #-28]	@ tmp183, NewNum
	str	r5, [fp, #-32]	@ tmp183, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [fp, #-24]	@ RefNum.465, RefNum
	ldr	r3, [fp, #-32]	@ ReadNum.464, ReadNum
	ldr	ip, [fp, #-28]	@ NewNum.463, NewNum
	add	r0, r2, r3	@ tmp189, RefNum.465, ReadNum.464
	add	r1, r0, #2	@ tmp190, tmp189,
	add	r0, r1, ip	@ tmp191, tmp190, NewNum.463
	cmp	r0, r4	@ tmp191, TotalFsNum
	blt	.L654	@,
.L626:
	mov	r0, #0	@ D.36045,
.L618:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L653:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L637	@,
.L621:
	cmp	r3, r4	@ i, TotalFsNum
	blt	.L626	@,
	b	.L619	@
.L651:
	ldrsb	r3, [r3, #65]	@ D.36042, <variable>.s8LevelID
	cmp	r3, #1	@ D.36042,
	beq	.L615	@,
	cmp	r3, #2	@ D.36042,
	beq	.L655	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movw	r2, #1198	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36045, <variable>.eFspInstState
	b	.L618	@
.L654:
	mov	r0, r5	@, tmp183
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	str	ip, [sp, #0]	@ NewNum.463,
	str	r4, [sp, #4]	@ TotalFsNum,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36045,
	b	.L618	@
.L615:
	add	r3, r2, r1	@ tmp164, tmp146, tmp148
	add	r2, r3, #32000	@ pTreeFs, tmp164,
	add	r2, r2, #44	@ pTreeFs, pTreeFs,
.L617:
	ldr	r4, [r2, #0]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L619	@,
	ldrsb	r1, [r2, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	sub	r3, r4, #1	@ tmp194, TotalFsNum,
	and	ip, r3, #1	@ tmp196, tmp194,
	mov	r3, #0	@ i,
	cmp	r1, r3	@ <variable>.IsDecRef,
	bne	.L630	@,
	ldrsb	r1, [r2, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L621	@,
.L630:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #48	@ ivtmp.1769, pTreeFs,
	ble	.L619	@,
	cmp	ip, #0	@ tmp196,
	beq	.L622	@,
	ldrsb	ip, [r2, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L632	@,
	ldrsb	r1, [r2, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L621	@,
.L632:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #48	@ ivtmp.1769, ivtmp.1769,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L619	@,
.L622:
	ldrsb	ip, [r2, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #48	@ tmp198, ivtmp.1769,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L620	@,
	ldrsb	r2, [r2, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L621	@,
.L620:
	ldrsb	ip, [r1, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	ip, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp197, i
	bne	.L635	@,
	ldrsb	ip, [r1, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L621	@,
.L635:
	add	r3, r2, #1	@ i, tmp197,
	add	r2, r1, #48	@ ivtmp.1769, tmp198,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L622	@,
	b	.L619	@
.L655:
	add	ip, r2, r1	@ tmp171, tmp146, tmp148
	add	r4, ip, #44288	@ pTreeFs, tmp171,
	add	r2, r4, #148	@ pTreeFs, pTreeFs,
	b	.L617	@
.L652:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36045,
	b	.L618	@
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
.LFB1377:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r0	@ InstID, InstID
	bhi	.L689	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r5, [r3, r0, asl #2]	@ D.35966, s_pFspInst
	cmp	r5, #0	@ D.35966,
	beq	.L690	@,
	movw	r7, #56800	@ tmp158,
	mul	r7, r7, r0	@ tmp157, tmp158, InstID
	add	r2, r7, r3	@ tmp159, tmp157, tmp151
	ldr	r1, [r2, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	beq	.L691	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp197,
	movt	r3, #:upper16:.LANCHOR2	@ tmp197,
	ldr	r1, [r3, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r1, #0	@ g_IsFrameIntfValid,
	beq	.L669	@,
	ldr	r4, [r3, #-4004]	@ D.38081, g_FspFrameIntf.IsFrameAvalible
	cmp	r4, #0	@ D.38081,
	beq	.L692	@,
	blx	r4	@ D.38081
	cmp	r0, #0	@,
	bne	.L671	@,
.L669:
	ldrb	r0, [r5, #21]	@ zero_extendqisi2	@ D.35996, <variable>.s32DecFsNum
	cmp	r0, #0	@ D.35996,
	beq	.L661	@,
	sxtb	r0, r0	@ D.36004, D.35996
	cmp	r0, #0	@ D.36004,
	ble	.L665	@,
	add	r5, r5, #31744	@ ivtmp.1810, D.35966,
	sub	r3, r0, #1	@ tmp212, D.36004,
	and	r1, r3, #1	@ tmp214, tmp212,
	mov	r3, #0	@ i.1817,
	ldrsb	r2, [r5, #128]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, r3	@ <variable>.IsDecRef,
	beq	.L693	@,
.L679:
	mov	r3, #1	@ i.1817,
	cmp	r3, r0	@ i.1817, D.36004
	add	r5, r5, #48	@ ivtmp.1810, ivtmp.1810,
	bge	.L665	@,
	cmp	r1, #0	@ tmp214,
	beq	.L674	@,
	ldrsb	r1, [r5, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L681	@,
	ldrsb	ip, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L673	@,
.L681:
	add	r3, r3, #1	@ i.1817, i.1817,
	add	r5, r5, #48	@ ivtmp.1810, ivtmp.1810,
	cmp	r3, r0	@ i.1817, D.36004
	bge	.L665	@,
.L674:
	ldrsb	ip, [r5, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r5, #48	@ tmp216, ivtmp.1810,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L672	@,
	ldrsb	r1, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L673	@,
.L672:
	ldrsb	ip, [r5, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i.1817, i.1817,
	cmp	ip, #0	@ <variable>.IsDecRef,
	mov	r1, r3	@ tmp215, i.1817
	bne	.L684	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L673	@,
.L684:
	add	r3, r1, #1	@ i.1817, tmp215,
	add	r5, r2, #48	@ ivtmp.1810, tmp216,
	cmp	r3, r0	@ i.1817, D.36004
	blt	.L674	@,
.L665:
	mov	r0, r6	@, InstID
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.35964,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L671:
	mov	r0, #0	@ D.35964,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L693:
	ldrsb	r2, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L679	@,
.L673:
	cmp	r0, r3	@ D.36004, i.1817
	ble	.L665	@,
.L661:
	mov	r0, #1	@ D.35964,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L691:
	ldrsb	r2, [r2, #65]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r2, #1	@ <variable>.s8LevelID,
	beq	.L662	@,
	cmp	r2, #2	@ <variable>.s8LevelID,
	bne	.L661	@,
	add	ip, r3, r7	@ tmp180, tmp151, tmp157
	add	r3, ip, #44288	@ pTreeFs, tmp180,
	add	r7, r3, #148	@ pTreeFs, pTreeFs,
.L664:
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	beq	.L661	@,
	ble	.L665	@,
	add	r8, r6, r6, asl #5	@, tmp208, InstID, InstID,
	movw	r5, #:lower16:.LANCHOR1	@ tmp206,
	movt	r5, #:upper16:.LANCHOR1	@ tmp206,
	mov	r4, r7	@ ivtmp.1805, pTreeFs
	add	r1, r5, r8, asl #3	@, tmp210, tmp206, tmp208,
	mov	r5, #0	@ i,
	sub	r8, r1, #48	@ tmp211, tmp210,
.L668:
	ldrsb	r0, [r4, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	bne	.L666	@,
	ldrsb	r2, [r4, #58]	@ <variable>.DispState, <variable>.DispState
	mov	r0, r6	@, InstID
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L666	@,
	ldrb	ip, [r8, #0]	@ zero_extendqisi2	@ <variable>.SwitchFlag, <variable>.SwitchFlag
	cmp	ip, #1	@ <variable>.SwitchFlag,
	bne	.L667	@,
	ldr	r1, [r4, #68]	@, <variable>.PhyAddr
	bl	FSP_IsFsInVO	@
	cmp	r0, #0	@,
	beq	.L676	@,
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L666:
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #48	@ ivtmp.1805, ivtmp.1805,
	cmp	r3, r5	@ <variable>.s32DecFsNum, i
	bgt	.L668	@,
	b	.L665	@
.L662:
	add	r2, r3, r7	@ tmp173, tmp151, tmp157
	add	r0, r2, #32000	@ pTreeFs, tmp173,
	add	r7, r0, #44	@ pTreeFs, pTreeFs,
	b	.L664	@
.L692:
	mov	r0, r4	@, D.38081
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35964, D.38081
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L676:
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L667:
	cmp	r3, r5	@ <variable>.s32DecFsNum, i
	bgt	.L661	@,
	b	.L665	@
.L689:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #954	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35964,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L690:
	mov	r0, r5	@, D.35966
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #955	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35964,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
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
	cmp	r0, #15	@ InstID,
	bhi	.L700	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r3, r0, asl #2]	@ D.35440, s_pFspInst
	cmp	r4, #0	@ D.35440,
	beq	.L701	@,
	movw	r5, #38112	@ tmp142,
	ldr	r6, [r4, r5]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.35438,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r4	@, D.35440
	movw	r1, #38208	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp145,
	mov	r0, r6	@ D.35438, <variable>.eFspInstState
	str	r1, [r4, r5]	@ tmp145, <variable>.eFspInstState
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L701:
	mov	r0, r4	@, D.35440
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #238	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35438,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L700:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #237	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35438,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
	.fnstart
.LFB1366:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp133,
	movt	r5, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #64	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp137,
	movt	r4, #:upper16:.LANCHOR1	@ tmp137,
	mov	r0, r5	@, tmp133
	bl	__memzero	@
	add	r0, r5, #64	@, tmp133,
	movw	r1, #:lower16:908800	@,
	movt	r1, #:upper16:908800	@,
	bl	__memzero	@
	sub	r0, r4, #48	@, tmp137,
	mov	r1, #4224	@,
	bl	__memzero	@
	movw	ip, #3914	@ tmp198,
	mvn	r3, #0	@ tmp141,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #482	@ tmp146,
	movw	r2, #:lower16:.LANCHOR2	@ tmp201,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #746	@ tmp150,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #1010	@ tmp154,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #1274	@ tmp158,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #1538	@ tmp162,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #1802	@ tmp166,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #2066	@ tmp170,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #2330	@ tmp174,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #2594	@ tmp178,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #2858	@ tmp182,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #3122	@ tmp186,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movt	r2, #:upper16:.LANCHOR2	@ tmp201,
	movw	ip, #3386	@ tmp190,
	sub	r0, r2, #4000	@, tmp201,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	movw	ip, #3650	@ tmp194,
	strh	r3, [r4, ip]	@ movhi	@ tmp141, <variable>.history
	sub	r0, r0, #4	@,,
	mov	ip, #0	@ tmp202,
	mov	r1, #16	@,
	str	ip, [r2, #-4008]	@ tmp202, g_IsFrameIntfValid
	strh	r3, [r4, #-46]	@ movhi	@ tmp141, <variable>.history
	strh	r3, [r4, #218]	@ movhi	@ tmp141, <variable>.history
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	Tree_FSP_InitInstance
	.type	Tree_FSP_InitInstance, %function
Tree_FSP_InitInstance:
	.fnstart
.LFB1407:
	@ args = 0, pretend = 0, frame = 648
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #676
	sub	sp, sp, #676	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	mov	r7, r0	@ InstID, InstID
	str	r1, [fp, #-680]	@ pTreeParam, %sfp
	bhi	.L737	@,
	ldr	r0, [fp, #-680]	@, %sfp
	ldr	r3, [r0, #12]	@ D.37445, <variable>.s32DispNum
	ldrsb	r1, [r0, #1]	@ <variable>.s8Btl1Dt2DDisable, <variable>.s8Btl1Dt2DDisable
	ldr	ip, [r0, #16]	@ <variable>.s32DecNum, <variable>.s32DecNum
	mla	r2, r3, r1, ip	@ tmp182, D.37445, <variable>.s8Btl1Dt2DDisable, <variable>.s32DecNum
	cmp	r2, #64	@ tmp182,
	bgt	.L738	@,
	cmp	r3, #64	@ D.37445,
	bgt	.L739	@,
	movw	r1, #56800	@ tmp191,
	ldr	r8, .L747	@ tmp189,
	mul	r6, r1, r7	@ tmp190, tmp191, InstID
	add	r4, r8, r6	@ pstTreeFsp, tmp189, tmp190
	ldr	r5, [r4, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	beq	.L709	@,
.L736:
	mvn	ip, #0	@ D.37441,
.L706:
	mov	r0, ip	@, D.37441
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L709:
	mov	r0, r4	@, pstTreeFsp
	bl	__memzero	@
	strb	r7, [r8, r6]	@ InstID, <variable>.s8InstID
	ldr	r8, [fp, #-680]	@, %sfp
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp201,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp201,
	movw	r3, #44372	@ tmp199,
	ldrsb	sl, [r8, #1]	@ <variable>.s8Btl1Dt2DDisable, <variable>.s8Btl1Dt2DDisable
	ldr	r6, [r8, #12]	@ <variable>.s32DispNum, <variable>.s32DispNum
	ldr	r2, [r8, #16]	@ <variable>.s32DecNum, <variable>.s32DecNum
	movw	r8, #31980	@ tmp198,
	ldr	ip, [r1, #36]	@ D.37467, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	mla	r6, r6, sl, r2	@ temp.1941, <variable>.s32DispNum, <variable>.s8Btl1Dt2DDisable, <variable>.s32DecNum
	cmp	ip, #0	@ D.37467,
	str	r6, [r4, r8]	@ temp.1941, <variable>.stTreeHD_1.s32DecFsNum
	mov	r9, r6, asl #1	@ tmp200, temp.1941,
	str	r9, [r4, r3]	@ tmp200, <variable>.stTreeHD_2.s32DecFsNum
	ldr	r3, [fp, #-680]	@, %sfp
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ D.37463, <variable>.s8DispLoopEnable
	ldr	r9, [r3, #12]	@ temp.1942, <variable>.s32DispNum
	beq	.L710	@,
	ldr	r1, [r3, #24]	@ <variable>.TotalSize, <variable>.TotalSize
	mov	lr, #40	@ tmp207,
	ldr	r0, [r3, #20]	@ <variable>.MemAddr, <variable>.MemAddr
	ldmib	r3, {r2, r3}	@ phole ldm
	str	r5, [sp, #8]	@ <variable>.eFspInstState,
	str	r5, [sp, #0]	@ <variable>.eFspInstState,
	sub	r5, fp, #672	@,,
	str	lr, [sp, #4]	@ tmp207,
	str	r7, [sp, #12]	@ InstID,
	str	r5, [sp, #16]	@,
	blx	ip	@ D.37467
	sxtb	r1, r0	@ D.37474,
	cmp	r1, #0	@ D.37474,
	bne	.L710	@,
	sxtb	sl, sl	@ D.37463, D.37463
	ldr	ip, [fp, #-396]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mla	r6, r9, sl, r6	@ tmp215, temp.1942, D.37463, temp.1941
	cmp	r6, ip	@ tmp215, MemArrange.ValidFrameNum
	bgt	.L710	@,
	ldr	sl, [fp, #-660]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r9, #1	@ ivtmp.1931,
	ldr	ip, [fp, #-664]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r3, r4, #32000	@ ivtmp.1919, pstTreeFsp,
	add	r7, r4, #44288	@ ivtmp.1927, pstTreeFsp,
	ldr	r8, [r4, r8]	@ D.37461, <variable>.stTreeHD_1.s32DecFsNum
	rsb	r0, ip, sl	@, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r4, [fp, #-692]	@ pstTreeFsp, %sfp
	str	r0, [fp, #-684]	@, %sfp
	add	sl, r3, #40	@ ivtmp.1919, ivtmp.1919,
	add	r5, r0, r0, lsr #31	@, tmp221,, tmp6,
	add	r3, r7, #144	@ ivtmp.1927, ivtmp.1927,
	mov	r0, r1	@ tmp351, ivtmp.1914
	sub	r7, fp, #672	@ ivtmp.1924,,
	mov	r2, r5, asr r9	@, tmp221,
	mov	r5, r9	@ ivtmp.1931, ivtmp.1931
	str	r2, [fp, #-688]	@, %sfp
	mov	r9, r2	@ D.37490,
	b	.L713	@
.L741:
	str	r1, [sl, #0]	@ ivtmp.1914, <variable>.PhyFsID
	add	r1, r1, #1	@ tmp356, ivtmp.1914,
	ldr	r2, [r7, #8]	@ tmp226, MemArrange.FrameAddr
	cmp	r8, r1	@ D.37461, tmp356
	str	r4, [r3, #0]	@ tmp227, <variable>.PhyFsID
	add	r7, r7, #4	@ tmp358, ivtmp.1924,
	add	r4, r9, r2	@ tmp230, D.37490, tmp226
	str	r5, [r3, #48]	@ ivtmp.1931, <variable>.PhyFsID
	str	r2, [sl, #8]	@ tmp226, <variable>.PhyAddr
	add	r5, r5, #2	@ tmp360, ivtmp.1931,
	str	r4, [r3, #56]	@ tmp230, <variable>.PhyAddr
	add	r4, sl, #48	@ tmp357, ivtmp.1919,
	str	r2, [r3, #8]	@ tmp226, <variable>.PhyAddr
	add	r2, r3, #96	@ tmp359, ivtmp.1927,
	ble	.L726	@,
.L742:
	str	r1, [sl, #48]	@ tmp356, <variable>.PhyFsID
	mov	sl, r1, asl #1	@ tmp418, tmp356,
	ldr	r6, [r7, #8]	@ tmp417, MemArrange.FrameAddr
	add	r1, r1, #1	@ ivtmp.1914, tmp356,
	cmp	r1, #64	@ ivtmp.1914,
	str	sl, [r3, #96]	@ tmp418, <variable>.PhyFsID
	add	r7, r7, #4	@ ivtmp.1924, tmp358,
	add	r3, r9, r6	@ tmp419, D.37490, tmp417
	str	r6, [r4, #8]	@ tmp417, <variable>.PhyAddr
	add	sl, r4, #48	@ ivtmp.1919, tmp357,
	str	r5, [r2, #48]	@ tmp360, <variable>.PhyFsID
	add	r5, r5, #2	@ ivtmp.1931, tmp360,
	str	r3, [r2, #56]	@ tmp419, <variable>.PhyAddr
	add	r3, r2, #96	@ ivtmp.1927, tmp359,
	str	r6, [r2, #8]	@ tmp417, <variable>.PhyAddr
	beq	.L740	@,
.L713:
	cmp	r8, r1	@ D.37461, ivtmp.1914
	mov	r4, r1, asl #1	@ tmp227, ivtmp.1914,
	bgt	.L741	@,
	add	r1, r1, #1	@ tmp356, ivtmp.1914,
	str	ip, [sl, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	cmp	r8, r1	@ D.37461, tmp356
	str	r0, [sl, #0]	@ tmp351, <variable>.PhyFsID
	str	ip, [r3, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r7, r7, #4	@ tmp358, ivtmp.1924,
	str	ip, [r3, #56]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r5, r5, #2	@ tmp360, ivtmp.1931,
	str	r0, [r3, #0]	@ tmp351, <variable>.PhyFsID
	add	r2, r3, #96	@ tmp359, ivtmp.1927,
	str	r0, [r3, #48]	@ tmp351, <variable>.PhyFsID
	add	r4, sl, #48	@ tmp357, ivtmp.1919,
	bgt	.L742	@,
.L726:
	add	r1, r1, #1	@ ivtmp.1914, tmp356,
	str	r0, [sl, #48]	@ tmp351, <variable>.PhyFsID
	cmp	r1, #64	@ ivtmp.1914,
	str	r0, [r3, #96]	@ tmp351, <variable>.PhyFsID
	str	ip, [r4, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	sl, r4, #48	@ ivtmp.1919, tmp357,
	str	r0, [r2, #48]	@ tmp351, <variable>.PhyFsID
	add	r7, r7, #4	@ ivtmp.1924, tmp358,
	str	ip, [r2, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r3, r2, #96	@ ivtmp.1927, tmp359,
	str	ip, [r2, #56]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r5, r5, #2	@ ivtmp.1931, tmp360,
	bne	.L713	@,
.L740:
	ldr	r4, [fp, #-692]	@ pstTreeFsp, %sfp
	movw	r6, #31980	@ tmp242,
	movw	r2, #44372	@ tmp257,
	movw	sl, #32048	@ tmp252,
	movw	r1, #44440	@ tmp267,
	ldr	ip, [r4, r6]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	ldr	r3, [r4, r2]	@ <variable>.stTreeHD_2.s32DecFsNum, <variable>.stTreeHD_2.s32DecFsNum
	sub	r0, ip, #1	@ tmp240, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	ip, [r4, sl]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r8, r3, #1	@ tmp255, <variable>.stTreeHD_2.s32DecFsNum,
	add	r6, r0, r0, asl #1	@, tmp246, tmp240, tmp240,
	add	sl, r8, r8, asl #1	@, tmp261, tmp255, tmp255,
	ldr	r8, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r4, r6, asl #4	@, tmp248, pstTreeFsp, tmp246,
	movw	r1, #56728	@ tmp254,
	add	r0, r2, #32000	@ tmp249, tmp248,
	add	r6, r4, sl, asl #4	@, tmp263, pstTreeFsp, tmp261,
	add	sl, r0, #40	@ tmp249, tmp249,
	add	r3, r6, #44288	@ tmp264, tmp263,
	add	r6, r3, #144	@ tmp264, tmp264,
	mov	r2, #32000	@ tmp251,
	ldr	r0, [sl, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	sl, #44336	@ tmp239,
	str	ip, [r4, r2]	@ <variable>.PhyAddr, <variable>.stTreeHD_1.stDummyPhyFs.PhyAddr
	movw	ip, #44392	@ tmp266,
	str	r0, [r4, sl]	@ <variable>.PhyAddr, <variable>.stTreeHD_1.stTfFs.PhyAddr
	ldr	r2, [r6, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r8, [r4, ip]	@ <variable>.PhyAddr, <variable>.stTreeHD_2.stDummyPhyFs.PhyAddr
	str	r2, [r4, r1]	@ <variable>.PhyAddr, <variable>.stTreeHD_2.stTfFs.PhyAddr
	ldr	r8, [fp, #-680]	@, %sfp
	ldrsb	r6, [r8, #0]	@ <variable>.s8DispLoopEnable, <variable>.s8DispLoopEnable
	cmp	r6, #0	@ <variable>.s8DispLoopEnable,
	moveq	r2, r6	@ DispFsNum, prephitmp.1882
	beq	.L717	@,
	ldr	sl, [fp, #-680]	@, %sfp
	ldr	r2, [sl, #12]	@ <variable>.s32DispNum, <variable>.s32DispNum
	cmp	r2, #25	@ <variable>.s32DispNum,
	movge	r2, #25	@ DispFsNum,
	cmp	r2, #3	@ DispFsNum,
	movgt	r6, r2, asl #1	@ prephitmp.1882, DispFsNum,
	ble	.L743	@,
.L717:
	movw	r9, #31984	@ tmp272,
	movw	sl, #44376	@ tmp273,
	add	r7, r4, #38144	@ ivtmp.1902, pstTreeFsp,
	add	r5, r4, #50432	@ ivtmp.1907, pstTreeFsp,
	mov	r0, #0	@ ivtmp.1897,
	str	r6, [r4, sl]	@ prephitmp.1882, <variable>.stTreeHD_2.s32DispFsNum
	str	r2, [r4, r9]	@ DispFsNum, <variable>.stTreeHD_1.s32DispFsNum
	add	r8, r7, #40	@ ivtmp.1902, ivtmp.1902,
	add	r3, r5, #144	@ ivtmp.1907, ivtmp.1907,
	mov	r7, #1	@ ivtmp.1911,
	mov	r5, r0	@ tmp348, ivtmp.1897
	movw	r1, #31980	@ tmp349,
	ldr	r9, [fp, #-688]	@ D.37490, %sfp
	b	.L720	@
.L745:
	str	r0, [r8, #0]	@ ivtmp.1897, <variable>.PhyFsID
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r6, r0, sl	@ tmp276, ivtmp.1897, <variable>.stTreeHD_1.s32DecFsNum
	sub	sl, fp, #44	@,,
	add	r6, sl, r6, asl #2	@, tmp282,, tmp276,
	ldr	r6, [r6, #-620]	@ tmp284, MemArrange.FrameAddr
	str	ip, [r3, #0]	@ tmp285, <variable>.PhyFsID
	str	r6, [r8, #8]	@ tmp284, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, r0, ip	@ tmp286, ivtmp.1897, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, sl, ip, asl #2	@, tmp292, tmp6, tmp286,
	ldr	r6, [ip, #-620]	@ tmp294, MemArrange.FrameAddr
	str	r7, [r3, #48]	@ ivtmp.1911, <variable>.PhyFsID
	add	r7, r7, #2	@ tmp355, ivtmp.1911,
	str	r6, [r3, #8]	@ tmp294, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r6, r0, ip	@ tmp295, ivtmp.1897, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ tmp352, ivtmp.1897,
	cmp	r2, r0	@ DispFsNum, tmp352
	add	ip, sl, r6, asl #2	@, tmp301,, tmp295,
	ldr	r6, [ip, #-620]	@ tmp303, MemArrange.FrameAddr
	add	ip, r9, r6	@ tmp304, D.37490, tmp303
	add	r6, r8, #48	@ tmp353, ivtmp.1902,
	str	ip, [r3, #56]	@ tmp304, <variable>.PhyAddr
	add	ip, r3, #96	@ tmp354, ivtmp.1907,
	ble	.L724	@,
.L746:
	str	r0, [r8, #48]	@ tmp352, <variable>.PhyFsID
	mov	r8, r0, asl #1	@, tmp352,
	str	r8, [fp, #-692]	@, %sfp
	sub	r8, fp, #44	@,,
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r0, sl	@ tmp393, tmp352, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r8, sl, asl #2	@, tmp397,, tmp393,
	ldr	r8, [fp, #-692]	@, %sfp
	ldr	sl, [sl, #-620]	@ tmp399, MemArrange.FrameAddr
	str	r8, [r3, #96]	@, <variable>.PhyFsID
	str	sl, [r6, #8]	@ tmp399, <variable>.PhyAddr
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r8, r0, sl	@ tmp402, tmp352, <variable>.stTreeHD_1.s32DecFsNum
	sub	sl, fp, #44	@,,
	add	r3, sl, r8, asl #2	@, tmp405,, tmp402,
	ldr	r8, [r3, #-620]	@ tmp407, MemArrange.FrameAddr
	str	r7, [ip, #48]	@ tmp355, <variable>.PhyFsID
	add	r7, r7, #2	@ ivtmp.1911, tmp355,
	str	r8, [ip, #8]	@ tmp407, <variable>.PhyAddr
	add	r8, r6, #48	@ ivtmp.1902, tmp353,
	ldr	r3, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, r0, r3	@ tmp409, tmp352, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ ivtmp.1897, tmp352,
	cmp	r0, #64	@ ivtmp.1897,
	add	sl, sl, r3, asl #2	@, tmp412, tmp8, tmp409,
	ldr	r3, [sl, #-620]	@ tmp414, MemArrange.FrameAddr
	add	sl, r9, r3	@ tmp415, D.37490, tmp414
	add	r3, ip, #96	@ ivtmp.1907, tmp354,
	str	sl, [ip, #56]	@ tmp415, <variable>.PhyAddr
	beq	.L744	@,
.L720:
	cmp	r2, r0	@ DispFsNum, ivtmp.1897
	mov	ip, r0, asl #1	@ tmp285, ivtmp.1897,
	bgt	.L745	@,
	str	r5, [r8, #0]	@ tmp348, <variable>.PhyFsID
	sub	r6, fp, #44	@,,
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ tmp352, ivtmp.1897,
	cmp	r2, r0	@ DispFsNum, tmp352
	add	r7, r7, #2	@ tmp355, ivtmp.1911,
	add	sl, r6, ip, asl #2	@, tmp311,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	ip, [sl, #-620]	@ tmp313, MemArrange.FrameAddr
	str	r5, [r3, #0]	@ tmp348, <variable>.PhyFsID
	str	ip, [r8, #8]	@ tmp313, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, r6, ip, asl #2	@, tmp320, tmp10, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	sl, [ip, #-620]	@ tmp322, MemArrange.FrameAddr
	str	r5, [r3, #48]	@ tmp348, <variable>.PhyFsID
	str	sl, [r3, #8]	@ tmp322, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r6, ip, asl #2	@, tmp329,, <variable>.stTreeHD_1.s32DecFsNum,
	add	r6, r8, #48	@ tmp353, ivtmp.1902,
	ldr	ip, [sl, #-620]	@ tmp331, MemArrange.FrameAddr
	str	ip, [r3, #56]	@ tmp331, <variable>.PhyAddr
	add	ip, r3, #96	@ tmp354, ivtmp.1907,
	bgt	.L746	@,
.L724:
	str	r5, [r8, #48]	@ tmp348, <variable>.PhyFsID
	sub	sl, fp, #44	@,,
	ldr	r8, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ ivtmp.1897, tmp352,
	cmp	r0, #64	@ ivtmp.1897,
	add	r7, r7, #2	@ ivtmp.1911, tmp355,
	add	r8, sl, r8, asl #2	@, tmp376,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r8, [r8, #-620]	@ tmp378, MemArrange.FrameAddr
	str	r5, [r3, #96]	@ tmp348, <variable>.PhyFsID
	str	r8, [r6, #8]	@ tmp378, <variable>.PhyAddr
	ldr	r3, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, sl, r3, asl #2	@, tmp382, tmp8, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r3, [r3, #-620]	@ tmp384, MemArrange.FrameAddr
	str	r5, [ip, #48]	@ tmp348, <variable>.PhyFsID
	str	r3, [ip, #8]	@ tmp384, <variable>.PhyAddr
	ldr	r8, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, sl, r8, asl #2	@, tmp388,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r8, [r3, #-620]	@ tmp390, MemArrange.FrameAddr
	add	r3, ip, #96	@ ivtmp.1907, tmp354,
	str	r8, [ip, #56]	@ tmp390, <variable>.PhyAddr
	add	r8, r6, #48	@ ivtmp.1902, tmp353,
	bne	.L720	@,
.L744:
	movw	r5, #31980	@ tmp332,
	add	sl, r4, #56576	@ tmp340, pstTreeFsp,
	ldr	ip, [r4, r5]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r5, sl, #188	@ tmp340, tmp340,
	ldr	sl, [fp, #-684]	@, %sfp
	add	r1, r2, ip	@ tmp333, DispFsNum, <variable>.stTreeHD_1.s32DecFsNum
	ldr	r8, [fp, #-680]	@, %sfp
	mov	ip, #0	@ D.37441,
	mul	r3, sl, r1	@ offset,, tmp333
	ldr	r6, [r8, #20]	@ <variable>.MemAddr, <variable>.MemAddr
	ldr	r7, [r8, #24]	@ <variable>.TotalSize, <variable>.TotalSize
	movw	r1, #31900	@ tmp337,
	add	r2, r3, r6	@ tmp339, offset, <variable>.MemAddr
	mov	r6, r8	@ pTreeParam,
	rsb	r0, r3, r7	@ tmp336, offset, <variable>.TotalSize
	str	r0, [r8, #28]	@ tmp336, <variable>.PmvTotalSize
	str	r2, [r4, r1]	@ tmp339, <variable>.stTreePMV.PmvAddr
	mov	r7, r5	@ tmp342, tmp340
	ldmia	r6!, {r0, r1, r2, r3}	@ pTreeParam,,,,
	mov	r5, #1	@ tmp344,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp342,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ pTreeParam,,,,
	str	r5, [r4, #112]	@ tmp344, <variable>.eFspInstState
	stmia	r7, {r0, r1, r2, r3}	@ tmp342,,,,
	b	.L706	@
.L710:
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #3029	@,
	movt	r1, #:upper16:.LC33	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L736	@
.L738:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2987	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r3, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.37441,
	b	.L706	@
.L737:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2986	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC30	@,
	movt	r3, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.37441,
	b	.L706	@
.L739:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2988	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.37441,
	b	.L706	@
.L743:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.37441,
	b	.L706	@
.L748:
	.align	2
.L747:
	.word	.LANCHOR0+64
	.fnend
	.size	Tree_FSP_InitInstance, .-Tree_FSP_InitInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
.LFB1370:
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
	cmp	r0, #15	@ InstID,
	mov	r4, r0	@ InstID, InstID
	bhi	.L772	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	sl, [r3, r0, asl #2]	@ D.35493, s_pFspInst
	cmp	sl, #0	@ D.35493,
	beq	.L773	@,
	movw	ip, #56800	@ tmp158,
	mul	lr, ip, r0	@ tmp157, tmp158, InstID
	add	r8, lr, r3	@ tmp159, tmp157, tmp151
	ldr	r5, [r8, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L774	@,
	movw	r7, #:lower16:.LANCHOR2	@ tmp207,
	movt	r7, #:upper16:.LANCHOR2	@ tmp207,
	add	r5, sl, #31744	@ ivtmp.1998, D.35493,
	mov	r6, #0	@ i,
	add	r5, r5, #140	@ ivtmp.1998, ivtmp.1998,
	mov	r8, r7	@ tmp208, tmp207
	b	.L759	@
.L757:
	mov	r0, r4	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.38095
.L756:
	ldrsb	r1, [r5, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L755	@,
	ldr	r3, [r7, #-3996]	@ D.38101, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r5, #0]	@ temp.2004, <variable>.PhyAddr
	cmp	r3, #0	@ D.38101,
	beq	.L775	@,
	mov	r0, r4	@, InstID
	blx	r3	@ D.38101
.L755:
	ldr	r1, [r5, #48]	@ D.35511, <variable>.PhyAddr
	add	r6, r6, #1	@ tmp212, i,
	add	r5, r5, #48	@ tmp213, ivtmp.1998,
	cmp	r1, #0	@ D.35511,
	beq	.L762	@,
	ldr	ip, [r7, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L762	@,
	ldrsb	lr, [r5, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	lr, #0	@ <variable>.IsDecRef,
	beq	.L763	@,
	ldr	r3, [r8, #-3992]	@ D.38095, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.38095,
	beq	.L770	@,
	mov	r0, r4	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.38095
.L763:
	ldrsb	r3, [r5, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L762	@,
	ldr	r3, [r7, #-3996]	@ D.38101, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r5, #0]	@ temp.2004, <variable>.PhyAddr
	cmp	r3, #0	@ D.38101,
	beq	.L769	@,
	mov	r0, r4	@, InstID
	blx	r3	@ D.38101
.L762:
	add	r6, r6, #1	@ i, tmp212,
	add	r5, r5, #48	@ ivtmp.1998, tmp213,
	cmp	r6, #64	@ i,
	beq	.L776	@,
.L759:
	ldr	r1, [r5, #0]	@ D.35511, <variable>.PhyAddr
	cmp	r1, #0	@ D.35511,
	beq	.L755	@,
	ldr	r0, [r7, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L755	@,
	ldrsb	r2, [r5, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L756	@,
	ldr	r3, [r8, #-3992]	@ D.38095, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.38095,
	bne	.L757	@,
	mov	r0, r3	@, D.38095
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L756	@
.L776:
	add	r4, sl, #28	@ tmp200, D.35493,
	sub	r5, fp, #76	@ tmp199,,
	movw	r6, #38112	@ tmp201,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp200,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	r0, sl	@, D.35493
	movw	r1, #38208	@,
	ldr	r7, [sl, r6]	@ enOrigState, <variable>.eFspInstState
	bl	__memzero	@
	ldmia	r5, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	ip, #0	@ D.35491,
	stmia	r4, {r0, r1, r2, r3}	@ tmp200,,,,
	str	r7, [sl, r6]	@ enOrigState, <variable>.eFspInstState
.L751:
	mov	r0, ip	@, D.35491
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L775:
	mov	r0, r3	@, D.38101
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	b	.L755	@
.L770:
	mov	r0, r3	@, D.38095
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L763	@
.L769:
	mov	r0, r3	@, D.38101
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	b	.L762	@
.L774:
	add	r9, r8, #56576	@ tmp175, tmp159,
	add	r8, r8, #64	@ tmp167, tmp159,
	add	r9, r9, #252	@ tmp175, tmp175,
	add	sl, r3, #64	@ tmp177, tmp151,
	ldrb	r6, [r8, #1]	@ zero_extendqisi2	@, <variable>.s8LevelID
	sub	r7, fp, #76	@ tmp174,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp214,,,,
	str	r6, [fp, #-80]	@, %sfp
	mov	r6, r7	@ tmp215, tmp174
	stmia	r6!, {r0, r1, r2, r3}	@ tmp215,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp214,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp215,,,,
	mov	r1, ip	@, tmp158
	add	r0, sl, lr	@, tmp177, tmp157
	bl	__memzero	@
	mov	r0, r4	@, InstID
	mov	r1, r7	@, tmp174
	bl	Tree_FSP_InitInstance	@
	subs	ip, r0, #0	@ D.35505,
	bne	.L777	@,
	ldr	r3, [fp, #-80]	@, %sfp
	strb	r3, [r8, #1]	@, <variable>.s8LevelID
	b	.L751	@
.L772:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #284	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35491,
	b	.L751	@
.L773:
	mov	r0, sl	@, D.35493
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #285	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35491,
	b	.L751	@
.L777:
	mov	r0, r5	@, <variable>.eFspInstState
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35491,
	b	.L751	@
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1399:
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
	cmp	r0, #15	@ InstID,
	bhi	.L833	@,
	movw	sl, #:lower16:.LANCHOR0	@ tmp439,
	movt	sl, #:upper16:.LANCHOR0	@ tmp439,
	ldr	r5, [sl, r0, asl #2]	@ D.37088, s_pFspInst
	cmp	r5, #0	@ D.37088,
	beq	.L834	@,
	movw	r2, #56800	@ tmp171,
	mul	r4, r2, r0	@ tmp170, tmp171, InstID
	add	r6, r4, sl	@ tmp172, tmp170, tmp439
	ldr	r3, [r6, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L835	@,
	movw	r4, #38112	@ tmp342,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@, <variable>.eFspInstState
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC40	@,
	mov	r6, r5	@ ivtmp.2076, D.37088
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #44]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC41	@,
	mov	r7, #1	@ ivtmp.2073,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	mov	r4, r0	@ ivtmp.2072,
	ldrsb	r3, [r5, #45]	@, <variable>.stInstCfg.s32TfEnable
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #46]	@, <variable>.stInstCfg.s32RprEnable
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #56]	@, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #60]	@, <variable>.stInstCfg.s32DecFsHeight
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #72]	@, <variable>.stInstCfg.s32DispFsWidth
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #76]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #49]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #50]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #51]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #52]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #21]	@, <variable>.s32DecFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #22]	@, <variable>.s32DispFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #23]	@, <variable>.s32TfFsNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #0]	@, <variable>.s32PmvNum
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ivtmp.2072
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	b	.L802	@
.L838:
	ands	r0, r4, #7	@ tmp375, ivtmp.2072,
	beq	.L836	@,
	ldrsb	r2, [r6, #80]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #81]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.2073,
	bgt	.L837	@,
.L805:
	add	r4, r4, #1	@ ivtmp.2072, ivtmp.2072,
	add	r7, r7, #1	@ ivtmp.2073, ivtmp.2073,
	add	r6, r6, #496	@ ivtmp.2076, ivtmp.2076,
.L802:
	cmp	r4, #0	@ ivtmp.2072,
	movw	r1, #:lower16:.LC57	@,
	mov	r0, r4	@, ivtmp.2072
	movt	r1, #:upper16:.LC57	@,
	bne	.L838	@,
	ldrsb	r2, [r6, #80]	@, <variable>.s32IsRef
	ldrsb	r3, [r6, #81]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L805	@
.L836:
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r6, #80]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #81]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.2073,
	ble	.L805	@,
.L837:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i.2111,
	ble	.L806	@,
.L829:
	add	r3, r4, r4, asl #1	@, tmp386, i.2111, i.2111,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r2, r5, r3, asl #4	@, tmp388, D.37088, tmp386,
	add	r4, r4, #1	@ i.2111, i.2111,
	add	ip, r2, #31744	@ tmp389, tmp388,
	add	lr, ip, #128	@ tmp389, tmp389,
	ldrsb	r3, [lr, #2]	@, <variable>.DispState
	ldrsb	r2, [lr, #0]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r4	@ <variable>.s32DecFsNum, i.2111
	ble	.L806	@,
	ands	r0, r4, #7	@ tmp381, i.2111,
	bne	.L829	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L829	@
.L806:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r1, #0	@ <variable>.s32DispFsNum,
	movgt	r4, #0	@ i.2120,
	ble	.L810	@,
.L830:
	add	r3, r4, r4, asl #1	@, tmp407, i.2120, i.2120,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r2, r5, r3, asl #4	@, tmp409, D.37088, tmp407,
	add	r4, r4, #1	@ i.2120, i.2120,
	add	ip, r2, #34816	@ tmp410, tmp409,
	add	lr, ip, #128	@ tmp410, tmp410,
	ldrsb	r3, [lr, #2]	@, <variable>.DispState
	ldrsb	r2, [lr, #0]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, r4	@ <variable>.s32DispFsNum, i.2120
	ble	.L810	@,
	ands	r0, r4, #7	@ tmp402, i.2120,
	bne	.L830	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L830	@
.L810:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	movgt	r4, #0	@ i.2126,
	ble	.L814	@,
.L831:
	add	lr, r5, r4	@ tmp425, D.37088, i.2126
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	ldrsb	r2, [lr, #1]	@, <variable>.IsPmvInUse
	add	r4, r4, #1	@ i.2126, i.2126,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r4	@ <variable>.s32PmvNum, i.2126
	ble	.L814	@,
	ands	r0, r4, #15	@ tmp423, i.2126,
	bne	.L831	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L831	@
.L814:
	movw	r1, #:lower16:.LC63	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L835:
	add	r8, sl, #64	@ tmp444, tmp439,
	ldr	r0, .L843	@,
	add	r1, r8, r4	@, tmp444, tmp170
	bl	memcpy	@
	ldrsb	r3, [r6, #65]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r3, #1	@ <variable>.s8LevelID,
	beq	.L784	@,
	cmp	r3, #2	@ <variable>.s8LevelID,
	beq	.L839	@,
	movw	ip, #:lower16:908865	@ tmp211,
	movt	ip, #:upper16:908865	@ tmp211,
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #2545	@,
	movt	r1, #:upper16:.LC37	@,
	ldrsb	r3, [sl, ip]	@, <variable>.s8LevelID
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L833:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2525	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L784:
	add	r0, r4, r8	@ tmp201, tmp170, tmp444
	add	r4, r0, #31744	@ pTreeFs, tmp201,
	add	r4, r4, #236	@ pTreeFs, pTreeFs,
.L786:
	mov	r0, #0	@,
	movw	r7, #:lower16:908976	@ tmp216,
	movt	r7, #:upper16:908976	@ tmp216,
	mov	r6, r0	@ ivtmp.2061,
	movw	r1, #:lower16:.LC38	@,
	movw	r5, #:lower16:908980	@ tmp220,
	movt	r1, #:upper16:.LC38	@,
	movt	r5, #:upper16:908980	@ tmp220,
	bl	dprint_vfmw	@
	ldr	r3, [sl, r7]	@, <variable>.eFspInstState
	mov	r0, r6	@, ivtmp.2061
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC40	@,
	mov	r7, #1	@ ivtmp.2059,
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r5]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, r6	@, ivtmp.2061
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC41	@,
	mov	r5, r6	@ ivtmp.2058, ivtmp.2061
	bl	dprint_vfmw	@
	movw	r2, #:lower16:908981	@ tmp224,
	movt	r2, #:upper16:908981	@ tmp224,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32TfEnable
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:908982	@ tmp228,
	movt	r3, #:upper16:908982	@ tmp228,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC43	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32RprEnable
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:908992	@ tmp232,
	movt	ip, #:upper16:908992	@ tmp232,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC44	@,
	ldr	r3, [sl, ip]	@, <variable>.stInstCfg.s32DecFsWidth
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:908996	@ tmp236,
	movt	r2, #:upper16:908996	@ tmp236,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	r3, [sl, r2]	@, <variable>.stInstCfg.s32DecFsHeight
	movw	r2, #:lower16:.LC45	@,
	movt	r2, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:909008	@ tmp240,
	movt	r3, #:upper16:909008	@ tmp240,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC46	@,
	ldr	r3, [sl, r3]	@, <variable>.stInstCfg.s32DispFsWidth
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:909012	@ tmp244,
	movt	ip, #:upper16:909012	@ tmp244,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC47	@,
	ldr	r3, [sl, ip]	@, <variable>.stInstCfg.s32DispFsHeight
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:908985	@ tmp248,
	movt	r2, #:upper16:908985	@ tmp248,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:908986	@ tmp252,
	movt	r3, #:upper16:908986	@ tmp252,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC49	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:908987	@ tmp256,
	movt	ip, #:upper16:908987	@ tmp256,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC50	@,
	ldrsb	r3, [sl, ip]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:908988	@ tmp260,
	movt	r2, #:upper16:908988	@ tmp260,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	movw	r2, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #0]	@, <variable>.s32DecFsNum
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #4]	@, <variable>.s32DispFsNum
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r3, r7	@, ivtmp.2059
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC39	@,
	movt	r2, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:940760	@ tmp269,
	movt	r3, #:upper16:940760	@ tmp269,
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	r3, [sl, r3]	@, <variable>.stTreePMV.s32PmvNum
	movt	r2, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ivtmp.2058
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	b	.L787	@
.L842:
	ands	r0, r5, #7	@ tmp272, ivtmp.2058,
	beq	.L840	@,
.L789:
	add	lr, r8, r6	@ D.39699, tmp444, ivtmp.2061
	movw	r0, #:lower16:908952	@ tmp276,
	movw	r3, #:lower16:908953	@ tmp279,
	movt	r0, #:upper16:908952	@ tmp276,
	movt	r3, #:upper16:908953	@ tmp279,
	add	r2, lr, r0	@ tmp276, D.39699, tmp276
	add	ip, lr, r3	@ tmp279, D.39699, tmp279
	mov	r0, #0	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	movw	r1, #:lower16:.LC57	@,
	ldrsb	r3, [ip, #0]	@, <variable>.s32DispState
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.2059,
	bgt	.L841	@,
.L790:
	add	r5, r5, #1	@ ivtmp.2058, ivtmp.2058,
	add	r7, r7, #1	@ ivtmp.2059, ivtmp.2059,
	add	r6, r6, #496	@ ivtmp.2061, ivtmp.2061,
.L787:
	cmp	r5, #0	@ ivtmp.2058,
	add	r0, r8, r6	@ D.39695, tmp444, ivtmp.2061
	movw	r1, #:lower16:908952	@ tmp431,
	movw	lr, #:lower16:908953	@ tmp434,
	movt	r1, #:upper16:908952	@ tmp431,
	movt	lr, #:upper16:908953	@ tmp434,
	add	r2, r0, r1	@ tmp431, D.39695, tmp431
	add	r3, r0, lr	@ tmp434, D.39695, tmp434
	movw	r1, #:lower16:.LC57	@,
	mov	r0, r5	@, ivtmp.2058
	movt	r1, #:upper16:.LC57	@,
	bne	.L842	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	ldrsb	r3, [r3, #0]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L790	@
.L840:
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L789	@
.L841:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	movgt	r5, #0	@ i,
	ble	.L791	@,
.L826:
	add	r3, r5, r5, asl #1	@, tmp289, i, i,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r2, r4, r3, asl #4	@, tmp291, pTreeFs, tmp289,
	add	r5, r5, #1	@ i, i,
	ldrsb	r3, [r2, #58]	@, <variable>.DispState
	ldrsb	r2, [r2, #56]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldr	ip, [r4, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	ble	.L791	@,
	cmp	r5, #0	@ i,
	beq	.L826	@,
	ands	r0, r5, #7	@ tmp284, i,
	bne	.L826	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L826	@
.L791:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, #0	@ <variable>.s32DispFsNum,
	movgt	r5, #0	@ i.2091,
	ble	.L795	@,
.L827:
	add	r3, r5, r5, asl #1	@, tmp310, i.2091, i.2091,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r2, r4, r3, asl #4	@, tmp312, pTreeFs, tmp310,
	add	r5, r5, #1	@ i.2091, i.2091,
	add	ip, r2, #6144	@ tmp313, tmp312,
	add	lr, ip, #56	@ tmp313, tmp313,
	ldrsb	r3, [lr, #2]	@, <variable>.DispState
	ldrsb	r2, [lr, #0]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldr	r1, [r4, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r1, r5	@ <variable>.s32DispFsNum, i.2091
	ble	.L795	@,
	cmp	r5, #0	@ i.2091,
	beq	.L827	@,
	ands	r0, r5, #7	@ tmp305, i.2091,
	bne	.L827	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L827	@
.L795:
	movw	r5, #:lower16:940760	@ tmp326,
	movt	r5, #:upper16:940760	@ tmp326,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	ldr	r0, [sl, r5]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r0, #0	@ <variable>.stTreePMV.s32PmvNum,
	movgt	r4, #0	@ i.2094,
	ble	.L814	@,
.L828:
	add	r2, r8, r4	@ tmp332, tmp444, i.2094
	movw	ip, #:lower16:908828	@ tmp333,
	movt	ip, #:upper16:908828	@ tmp333,
	mov	r0, #0	@,
	add	lr, r2, ip	@ tmp333, tmp332, tmp333
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	add	r4, r4, #1	@ i.2094, i.2094,
	ldrsb	r2, [lr, #0]	@, <variable>.IsPmvInUse
	bl	dprint_vfmw	@
	ldr	r1, [sl, r5]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r1, r4	@ <variable>.stTreePMV.s32PmvNum, i.2094
	ble	.L814	@,
	cmp	r4, #0	@ i.2094,
	beq	.L828	@,
	ands	r0, r4, #15	@ tmp328, i.2094,
	bne	.L828	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	b	.L828	@
.L839:
	add	r2, r4, r8	@ tmp208, tmp170, tmp444
	add	r1, r2, #44288	@ pTreeFs, tmp208,
	add	r4, r1, #84	@ pTreeFs, pTreeFs,
	b	.L786	@
.L834:
	mov	r0, r5	@, D.37088
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2526	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L844:
	.align	2
.L843:
	.word	.LANCHOR0+908864
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	Tree_FSP_NewLogicFs
	.type	Tree_FSP_NewLogicFs, %function
Tree_FSP_NewLogicFs:
	.fnstart
.LFB1409:
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
	movw	r3, #56800	@ tmp194,
	mul	r3, r3, r0	@ tmp193, tmp194, InstID
	movw	sl, #:lower16:.LANCHOR0	@ tmp894,
	movt	sl, #:upper16:.LANCHOR0	@ tmp894,
	str	r0, [fp, #-64]	@ InstID, %sfp
	add	r6, sl, #64	@ tmp192, tmp894,
	add	r2, r3, sl	@ tmp199, tmp193, tmp894
	add	r5, r6, r3	@ pstTreeInst, tmp192, tmp193
	ldrsb	r2, [r2, #65]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r2, #1	@ <variable>.s8LevelID,
	beq	.L847	@,
	cmp	r2, #2	@ <variable>.s8LevelID,
	beq	.L946	@,
	ldrsb	r3, [r5, #1]	@, <variable>.s8LevelID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC69	@,
	movw	r2, #3364	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37714,
.L850:
	mov	r0, r3	@, D.37714
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L847:
	add	r0, r6, r3	@ tmp208, tmp192, tmp193
	add	r6, r0, #31744	@ pTreeFs, tmp208,
	add	r6, r6, #236	@ pTreeFs, pTreeFs,
.L849:
	mov	r3, r5	@ ivtmp.2286, pstTreeInst
	mov	r4, #0	@ i.2270,
	b	.L854	@
.L851:
	ldrsb	lr, [r2, #152]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r4, r4, #1	@ i.2270, i.2270,
	cmp	lr, #0	@ <variable>.s32IsRef,
	mov	r3, r4	@ tmp925, i.2270
	bne	.L922	@,
	ldrsb	r8, [r2, #153]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r8, #0	@ <variable>.s32DispState,
	beq	.L938	@,
.L922:
	add	r4, r3, #1	@ i.2270, tmp925,
	add	r3, r2, #496	@ ivtmp.2286, tmp926,
	cmp	r4, #64	@ i.2270,
	beq	.L852	@,
.L854:
	ldrsb	lr, [r3, #152]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r2, r3, #496	@ tmp926, ivtmp.2286,
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L851	@,
	ldrsb	r8, [r3, #153]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r8, #0	@ <variable>.s32DispState,
	bne	.L851	@,
.L938:
	mov	r9, r4, asl #5	@ tmp893, i.2270,
	rsb	ip, r4, r9	@ tmp223, i.2270, tmp893
	mov	r3, ip, asl #4	@ tmp224, tmp223,
	add	r2, r3, #152	@ tmp241, tmp224,
	add	r3, r3, r5	@ tmp225, tmp224, pstTreeInst
	add	r0, r5, r2	@ tmp242, pstTreeInst, tmp241
	add	r2, r3, #152	@ tmp226, tmp225,
	cmp	r0, #0	@ tmp242,
	strb	r4, [r2, #3]	@ i.2270, <variable>.s32LogicFsID
	strb	r8, [r2, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L852	@,
	cmp	r1, #0	@ NeedPhyFs,
	add	r0, r3, #624	@ tmp250, tmp225,
	add	r1, r3, #632	@ tmp266, tmp225,
	str	r8, [r3, #624]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r8, [r0, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r8, [r3, #632]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r8, [r1, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L855	@,
	ldr	r1, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	ble	.L857	@,
	ldr	r0, [fp, #-64]	@, %sfp
	movw	r7, #:lower16:.LANCHOR1	@ tmp898,
	movt	r7, #:upper16:.LANCHOR1	@ tmp898,
	add	ip, r0, r0, asl #5	@, tmp900,,,
	mov	r0, r8	@ invalid_flag, <variable>.s32DispState
	add	lr, r7, ip, asl #3	@, tmp902, tmp898, tmp900,
	mov	r7, r6	@ ivtmp.2228, pTreeFs
	sub	r3, lr, #48	@ tmp903, tmp902,
	mov	r2, r3	@ tmp903, tmp903
	mov	r3, r4	@ i.2270, i.2270
	mov	r4, r2	@ tmp903, tmp903
.L862:
	ldrsb	r2, [r7, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L859	@,
	ldrsb	lr, [r7, #58]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	bne	.L859	@,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.SwitchFlag, <variable>.SwitchFlag
	cmp	r1, #1	@ <variable>.SwitchFlag,
	beq	.L947	@,
.L860:
	cmp	r0, #0	@ invalid_flag,
	beq	.L948	@,
	cmp	r0, #1	@ invalid_flag,
	ldr	r1, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	moveq	r0, #0	@ invalid_flag,
.L859:
	add	r8, r8, #1	@ i.2273, i.2273,
	add	r7, r7, #48	@ ivtmp.2228, ivtmp.2228,
	cmp	r1, r8	@ <variable>.s32DecFsNum, i.2273
	bgt	.L862	@,
	rsb	lr, r3, r9	@ tmp361, i.2270, tmp893
	mov	r4, r3	@ i.2270, i.2270
	add	r2, r5, lr, asl #4	@, tmp363, pstTreeInst, tmp361,
	ldr	r8, [r2, #624]	@ prephitmp.2166, <variable>.pstDecodeFs
.L857:
	cmp	r8, #0	@ prephitmp.2166,
	beq	.L949	@,
.L863:
	rsb	ip, r4, r9	@ tmp446, i.2270, tmp893
	add	r3, r6, #12288	@ tmp450, pTreeFs,
	add	r1, r3, #56	@ tmp450, tmp450,
	movw	r3, #31896	@ tmp452,
	add	r2, r5, ip, asl #4	@, tmp448, pstTreeInst, tmp446,
	str	r1, [r2, #632]	@ tmp450, <variable>.pstTfOutFs
	ldr	ip, [r5, r3]	@ prephitmp.2168, <variable>.stTreePMV.s32PmvNum
	cmp	ip, #0	@ prephitmp.2168,
	movle	r3, #0	@ i.2249,
	ble	.L875	@,
	ldrsb	r3, [r5, #28]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r0, r3	@ prephitmp.2173, <variable>.IsPmvInUse
	beq	.L877	@,
	tst	ip, #1	@ prephitmp.2168,
	mov	r2, r5	@ ivtmp.2283, pstTreeInst
	mov	r3, #0	@ i.2249,
	bne	.L878	@,
	ldrb	r1, [r5, #29]	@ zero_extendqisi2	@ D.37777, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2249,
	add	r2, r5, r3	@ ivtmp.2283, pstTreeInst,
	cmp	r1, #0	@ D.37777,
	bne	.L878	@,
.L935:
	uxtb	r0, r3	@ prephitmp.2173, i.2249
.L877:
	add	r1, r3, #7936	@ tmp469, i.2249,
	rsb	r2, r4, r9	@ tmp457, i.2270, tmp893
	add	r7, r1, #38	@ tmp469, tmp469,
	mov	r1, #1	@ tmp491,
	add	r2, r5, r2, asl #4	@, tmp459, pstTreeInst, tmp457,
	add	lr, r5, r7, asl #2	@, tmp473, pstTreeInst, tmp469,
	strb	r0, [r2, #156]	@ prephitmp.2173, <variable>.PmvIdc
	movw	r0, #31896	@ tmp492,
	ldr	ip, [lr, #4]	@ tmp475, <variable>.stTreePMV.PmvAddr
	str	ip, [r2, #636]	@ tmp475, <variable>.PmvAddr
	ldr	r7, [r5, #24]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r2, #620]	@ tmp491, <variable>.eLfsPmvState
	str	r7, [r2, #640]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	ip, [r5, r0]	@ prephitmp.2168, <variable>.stTreePMV.s32PmvNum
.L875:
	rsb	r7, r4, r9	@ tmp496, i.2270, tmp893
	add	lr, r5, r7, asl #4	@, tmp498, pstTreeInst, tmp496,
	ldr	r0, [lr, #636]	@ <variable>.PmvAddr, <variable>.PmvAddr
	cmp	r0, #0	@ <variable>.PmvAddr,
	bne	.L880	@,
.L883:
	cmp	ip, #0	@ prephitmp.2168,
	ble	.L882	@,
	movw	r3, #31896	@ tmp501,
	mov	r2, #1	@ i.2251,
	ldr	ip, [r5, r3]	@ temp.2250, <variable>.stTreePMV.s32PmvNum
	mov	r0, #0	@ tmp895,
	add	r3, r5, r2	@ ivtmp.2238, pstTreeInst,
	strb	r0, [r5, #28]	@ tmp895, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.2250,
	sub	r1, ip, #1	@ tmp910, temp.2250,
	and	r1, r1, r2	@ tmp912, tmp910,
	ble	.L882	@,
	cmp	r1, #0	@ tmp912,
	beq	.L885	@,
	mov	r2, #2	@ i.2251,
	cmp	ip, r2	@ temp.2250, i.2251
	strb	r0, [r3, #28]	@ tmp895, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.2238, ivtmp.2238,
	ble	.L882	@,
.L885:
	add	r2, r2, #2	@ i.2251, i.2251,
	add	lr, r3, #1	@ tmp914, ivtmp.2238,
	cmp	ip, r2	@ temp.2250, i.2251
	strb	r0, [r3, #28]	@ tmp895, <variable>.IsPmvInUse
	strb	r0, [lr, #28]	@ tmp895, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.2238, tmp914,
	bgt	.L885	@,
.L882:
	rsb	r0, r4, r9	@ tmp507, i.2270, tmp893
	mov	lr, #0	@ tmp511,
	movw	r2, #31900	@ tmp520,
	movw	r1, #:lower16:.LC73	@,
	add	r7, r5, r0, asl #4	@, tmp509, pstTreeInst, tmp507,
	mov	r0, lr	@, tmp511
	add	ip, r7, #152	@ tmp510, tmp509,
	movt	r1, #:upper16:.LC73	@,
	strb	lr, [ip, #4]	@ tmp511, <variable>.PmvIdc
	mov	ip, #1	@ tmp537,
	ldr	lr, [r5, r2]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	str	lr, [r7, #636]	@ <variable>.stTreePMV.PmvAddr, <variable>.PmvAddr
	ldr	r2, [r5, #24]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [r7, #620]	@ tmp537, <variable>.eLfsPmvState
	str	r2, [r7, #640]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
.L884:
	ldrsb	r1, [r5, #116]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r1, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L886	@,
	ldr	r7, [r6, #4]	@ temp.2262, <variable>.s32DispFsNum
	cmp	r7, #0	@ temp.2262,
	ble	.L950	@,
	movw	lr, #6200	@ tmp546,
	add	ip, r6, #6144	@ tmp545, pTreeFs,
	ldr	r2, [r6, lr]	@ tmp548,
	bics	r3, r2, #-16777216	@ tmp547, tmp548,
	beq	.L890	@,
	tst	r7, #1	@ temp.2262,
	add	r1, ip, #104	@ ivtmp.2195, tmp545,
	mov	r2, #0	@ i.2255,
	bne	.L891	@,
	cmp	r1, #0	@ ivtmp.2195,
	mov	r2, #1	@ i.2255,
	mov	r3, r2	@ i.2248, i.2255
	beq	.L890	@,
	add	r0, r6, #6208	@ tmp946, pTreeFs,
	add	r1, ip, #152	@ ivtmp.2195, tmp545,
	add	lr, r0, #40	@ tmp946, tmp946,
	ldr	ip, [lr, #0]	@ tmp947,
	bic	r0, ip, #-16777216	@ tmp948, tmp947,
	cmp	r0, #0	@ tmp948,
	bne	.L891	@,
	b	.L890	@
.L892:
	add	ip, r2, r2, asl #1	@, tmp950, i.2255, i.2255,
	cmp	r1, #0	@ ivtmp.2195,
	add	r0, r6, r0, asl #4	@, tmp569, pTreeFs, tmp567,
	add	r1, r1, #96	@ ivtmp.2195, ivtmp.2195,
	add	ip, r6, ip, asl #4	@, tmp952, pTreeFs, tmp950,
	add	r0, r0, #6144	@ tmp570, tmp569,
	add	ip, ip, #6144	@ tmp953, tmp952,
	add	r0, r0, #56	@ tmp570, tmp570,
	add	ip, ip, #56	@ tmp953, tmp953,
	beq	.L890	@,
	ldr	r0, [r0, #0]	@ tmp572,
	bic	r0, r0, #-16777216	@ tmp571, tmp572,
	cmp	r0, #0	@ tmp571,
	beq	.L890	@,
	cmp	lr, #0	@ tmp908,
	mov	r3, r2	@ i.2248, i.2255
	beq	.L890	@,
	ldr	lr, [ip, #0]	@ tmp954,
	bic	ip, lr, #-16777216	@ tmp955, tmp954,
	cmp	ip, #0	@ tmp955,
	beq	.L890	@,
.L891:
	add	r3, r2, #1	@ tmp909, i.2255,
	add	lr, r1, #48	@ tmp908, ivtmp.2195,
	cmp	r3, r7	@ tmp909, temp.2262
	add	r2, r3, #1	@ i.2255, i.2248,
	add	r0, r3, r3, asl #1	@, tmp567, i.2248, i.2248,
	blt	.L892	@,
	rsb	r1, r4, r9	@ tmp589, i.2270, tmp893
	add	r0, r5, r1, asl #4	@, tmp591, pstTreeInst, tmp589,
	ldr	r7, [r0, #628]	@ prephitmp.2170, <variable>.pstDispOutFs
.L888:
	cmp	r7, #0	@ prephitmp.2170,
	bne	.L858	@,
	mov	r0, r7	@, prephitmp.2170
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@ tmp597,,
	ldr	r0, [fp, #-64]	@, %sfp
	sub	r2, fp, #56	@,,
	str	r7, [r1, #-4]!	@ prephitmp.2170, RefNum
	sub	r3, fp, #52	@,,
	str	r7, [fp, #-52]	@ prephitmp.2170, NewNum
	str	r7, [fp, #-56]	@ prephitmp.2170, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-56]	@ ReadNum, ReadNum
	ldr	ip, [fp, #-48]	@ RefNum, RefNum
	ldr	r3, [sl, r0, asl #2]	@ tmp607, s_pFspInst
	add	r1, ip, r2	@ tmp600, RefNum, ReadNum
	ldr	ip, [fp, #-52]	@ NewNum, NewNum
	add	r0, r1, #2	@ tmp603, tmp600,
	ldrsb	r3, [r3, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r2, r0, ip	@ tmp604, tmp603, NewNum
	cmp	r2, r3	@ tmp604, <variable>.s32DispFsNum
	bge	.L945	@,
	mov	r0, r7	@, prephitmp.2170
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	lr, [fp, #-52]	@ NewNum, NewNum
	mov	r0, r7	@, prephitmp.2170
	ldr	r2, [fp, #-48]	@, RefNum
	movw	r1, #:lower16:.LC76	@,
	ldr	r3, [fp, #-56]	@, ReadNum
	movt	r1, #:upper16:.LC76	@,
	str	lr, [sp, #0]	@ NewNum,
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-64]	@, %sfp
	bl	FSP_PrintContext	@
.L945:
	mvn	r3, #0	@ D.37714,
	b	.L850	@
.L879:
	ldrb	lr, [r2, #29]	@ zero_extendqisi2	@ D.37777, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.2283, tmp919,
	cmp	lr, #0	@ D.37777,
	beq	.L935	@,
	ldrb	r7, [r1, #29]	@ zero_extendqisi2	@ D.37777, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.2249, i.2249,
	cmp	r7, #0	@ D.37777,
	beq	.L935	@,
.L878:
	add	r3, r3, #1	@ i.2249, i.2249,
	add	r1, r2, #1	@ tmp919, ivtmp.2283,
	cmp	r3, ip	@ i.2249, prephitmp.2168
	blt	.L879	@,
	b	.L875	@
.L946:
	add	ip, r6, r3	@ tmp215, tmp192, tmp193
	add	r4, ip, #44288	@ pTreeFs, tmp215,
	add	r6, r4, #84	@ pTreeFs, pTreeFs,
	b	.L849	@
.L855:
	add	ip, r6, #8	@ D.37731, pTreeFs,
	str	ip, [r0, #4]	@ D.37731, <variable>.pstDispOutFs
	movw	r0, #31900	@ tmp310,
	str	ip, [r3, #632]	@ D.37731, <variable>.pstTfOutFs
	str	ip, [r3, #624]	@ D.37731, <variable>.pstDecodeFs
	movw	sl, #31896	@ tmp319,
	ldr	r6, [r5, r0]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	r8, #1	@ tmp331,
	str	r6, [r1, #4]	@ <variable>.stTreePMV.PmvAddr, <variable>.PmvAddr
	ldr	r7, [r5, sl]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	strb	r8, [r2, #2]	@ tmp331, <variable>.IsDummyFs
	sub	r1, r7, #1	@ tmp322, <variable>.stTreePMV.s32PmvNum,
	strb	r1, [r2, #4]	@ tmp322, <variable>.PmvIdc
.L858:
	rsb	r6, r4, r9	@ tmp616, i.2270, tmp893
	mov	r2, #1	@ tmp620,
	mov	r1, #456	@,
	mov	r4, r6, asl #4	@ tmp617, tmp616,
	add	r6, r4, r5	@ tmp618, tmp617, pstTreeInst
	add	r9, r4, #160	@ tmp690, tmp617,
	add	r3, r6, #624	@ tmp628, tmp618,
	add	r4, r6, #152	@ tmp619, tmp618,
	add	r8, r6, #192	@, tmp618,
	add	r7, r6, #208	@, tmp618,
	ldr	sl, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	lr, r6, #200	@, tmp618,
	str	r8, [fp, #-64]	@, %sfp
	add	r0, r5, r9	@, pstTreeInst, tmp690
	strb	r2, [r4, #1]	@ tmp620, <variable>.s32DispState
	add	r9, r6, #264	@ tmp737, tmp618,
	str	r7, [fp, #-68]	@, %sfp
	add	r8, r6, #280	@ tmp808, tmp618,
	strb	r2, [sl, #2]	@ tmp620, <variable>.DispState
	add	r7, r6, #272	@ tmp846, tmp618,
	str	lr, [fp, #-72]	@, %sfp
	ldr	sl, [r5, #4]	@ D.37819, <variable>.u32InstTick
	ldr	ip, [r6, #624]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	sl, [r6, #616]	@ D.37819, <variable>.u32Tick
	str	sl, [ip, #44]	@ D.37819, <variable>.u32Tick
	ldr	r2, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r6, #616]	@ <variable>.u32Tick, <variable>.u32Tick
	str	lr, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r5, #4]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	sl, ip, #1	@ tmp664, <variable>.u32InstTick,
	str	sl, [r5, #4]	@ tmp664, <variable>.u32InstTick
	ldr	lr, [r6, #624]	@ pstDecFs, <variable>.pstDecodeFs
	ldr	r2, [r6, #632]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	sl, [r3, #4]	@ pstDispFs, <variable>.pstDispOutFs
	str	lr, [fp, #-80]	@,
	str	r2, [fp, #-76]	@,
	bl	__memzero	@
	ldrsb	r1, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r1, [r6, #336]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	ip, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	ip, [r6, #304]	@ <variable>.s32FsWidth, <variable>.stDispImg.image_width
	ldr	r3, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r3, [r6, #308]	@ <variable>.s32FsHeight, <variable>.stDispImg.image_height
	ldr	r2, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r2, [r6, #332]	@ <variable>.s32Stride, <variable>.stDispImg.image_stride
	ldr	r0, [fp, #-80]	@,
	ldr	ip, [r0, #12]	@ D.37832, <variable>.PhyAddr
	str	ip, [r6, #264]	@ D.37832, <variable>.stDispImg.luma_phy_addr
	mov	r0, ip	@, D.37832
	ldr	r1, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r1, ip	@ tmp746, <variable>.s32ChromOffset, D.37832
	str	r3, [r9, #4]	@ tmp746, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #192]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-64]	@, %sfp
	str	r0, [r2, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	ip, [sl, #12]	@ D.37844, <variable>.PhyAddr
	str	ip, [r6, #248]	@ D.37844, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r2, ip, r1	@ D.37846, D.37844, <variable>.s32ChromOffset
	str	r2, [r6, #252]	@ D.37846, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	add	r3, r0, ip	@ tmp792, <variable>.s32Stride, D.37844
	str	r3, [r6, #256]	@ tmp792, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	add	r0, r2, ip	@ tmp801, D.37846, <variable>.s32Stride
	str	r0, [r6, #260]	@ tmp801, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r3, [sl, #12]	@ temp.2272, <variable>.PhyAddr
	str	r3, [r6, #280]	@ temp.2272, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r3	@, temp.2272
	ldr	r1, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	ip, r1, r3	@ tmp817, <variable>.s32ChromOffset, temp.2272
	str	ip, [r8, #4]	@ tmp817, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #208]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [r8, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-68]	@, %sfp
	str	r0, [r2, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [fp, #-76]	@,
	ldr	lr, [r0, #12]	@ D.37860, <variable>.PhyAddr
	str	lr, [r6, #272]	@ D.37860, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, lr	@, D.37860
	ldr	r1, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r1, lr	@ tmp855, <variable>.s32ChromOffset, D.37860
	str	r3, [r7, #4]	@ tmp855, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #200]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r7, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [fp, #-72]	@, %sfp
	ldrsb	r3, [r4, #3]	@ D.37714, <variable>.s32LogicFsID
	add	r2, r5, r3	@ tmp886, pstTreeInst, D.37714
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ <variable>.s8LevelID, <variable>.s8LevelID
	strb	r1, [r2, #48]	@ <variable>.s8LevelID, <variable>.LogicFsRecord
	b	.L850	@
.L886:
	rsb	r8, r4, r9	@ tmp552, i.2270, tmp893
	add	r6, r5, r8, asl #4	@, tmp554, pstTreeInst, tmp552,
	ldr	sl, [r6, #624]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	sl, [r6, #628]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
	b	.L858	@
.L880:
	cmp	ip, r3	@ prephitmp.2168, i.2249
	ble	.L883	@,
	b	.L884	@
.L947:
	ldr	r1, [r7, #68]	@, <variable>.PhyAddr
	ldr	r0, [fp, #-64]	@, %sfp
	str	r3, [fp, #-80]	@,
	bl	FSP_IsFsInVO	@
	ldr	r3, [fp, #-80]	@,
	b	.L860	@
.L890:
	add	ip, r3, r3, asl #1	@, tmp575, i.2248, i.2248,
	rsb	r2, r4, r9	@ tmp582, i.2270, tmp893
	mov	lr, ip, asl #4	@ tmp576, tmp575,
	add	r1, r5, r2, asl #4	@, tmp584, pstTreeInst, tmp582,
	add	r7, lr, #6144	@ tmp577, tmp576,
	add	r3, r7, #56	@ tmp577, tmp577,
	add	r7, r6, r3	@ prephitmp.2170, pTreeFs, tmp577
	str	r7, [r1, #628]	@ prephitmp.2170, <variable>.pstDispOutFs
	b	.L888	@
.L948:
	rsb	ip, r3, r9	@ tmp353, i.2270, tmp893
	add	r7, r8, r8, asl #1	@, tmp347, i.2273, i.2273,
	mov	r4, r3	@ i.2270, i.2270
	add	r3, r5, ip, asl #4	@, tmp355, pstTreeInst, tmp353,
	add	r8, r6, r7, asl #4	@, tmp349, pTreeFs, tmp347,
	add	r8, r8, #56	@ prephitmp.2166, tmp349,
	str	r8, [r3, #624]	@ prephitmp.2166, <variable>.pstDecodeFs
	b	.L857	@
.L949:
	mov	r0, r8	@, prephitmp.2166
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ble	.L864	@,
	mov	r7, r6	@ ivtmp.2222, pTreeFs
.L865:
	ldrsb	r2, [r7, #56]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r7, #58]	@, <variable>.DispState
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r8, r8, #1	@ i.2244, i.2244,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #48	@ ivtmp.2222, ivtmp.2222,
	cmp	r1, r8	@ <variable>.s32DecFsNum, i.2244
	bgt	.L865	@,
.L864:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldr	lr, [r6, #0]	@ temp.2245, <variable>.s32DecFsNum
	add	r1, r6, #56	@ pstPhyFs, pTreeFs,
	cmp	lr, #0	@ temp.2245,
	movle	r3, #0	@ prephitmp.2175,
	movle	r2, r3	@ i.2278, prephitmp.2175
	ble	.L867	@,
	tst	lr, #1	@ temp.2245,
	mov	r2, #0	@ i.2278,
	mov	ip, r2	@ i.2281, i.2278
	mvn	r0, #0	@ LeastTick.2287,
	bne	.L871	@,
	ldr	r3, [r1, #44]	@ LeastTick, <variable>.u32Tick
	mov	ip, #1	@ i.2281,
	add	r1, r1, #48	@ pstPhyFs, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r0	@, LeastTick, LeastTick.2287
	mov	r0, r3	@ LeastTick.2287, LeastTick
	b	.L871	@
.L951:
	ldr	r0, [r7, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r0, r3	@ LeastTick, LeastTick
	movcs	r0, r3	@ LeastTick, LeastTick
	movcc	r2, r1	@ i.2278, tmp923
.L937:
	add	ip, r1, #1	@ i.2281, tmp923,
	add	r1, r7, #48	@ pstPhyFs, tmp924,
.L871:
	ldr	r3, [r1, #44]	@ LeastTick, <variable>.u32Tick
	add	r7, r1, #48	@ tmp924, pstPhyFs,
	add	r1, ip, #1	@ tmp923, i.2281,
	cmp	r3, r0	@ LeastTick, LeastTick.2287
	movcc	r2, ip	@ i.2278, i.2281
	movcs	r3, r0	@ LeastTick, LeastTick.2287
	cmp	r1, lr	@ tmp923, temp.2245
	bne	.L951	@,
	mov	r3, r2	@ prephitmp.2175, i.2278
.L867:
	mov	r0, r2, asl #1	@ tmp892, i.2278,
	ldr	r7, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	lr, r0, r2	@ tmp374, tmp892, i.2278
	add	r1, r6, lr, asl #4	@, tmp376, pTreeFs, tmp374,
	ldr	ip, [r1, #80]	@ <variable>.FsWidth, <variable>.FsWidth
	cmp	ip, r7	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L952	@,
.L872:
	add	r7, r0, r2	@ tmp390, tmp892, i.2278
	mov	lr, #0	@ tmp394,
	add	r1, r6, r7, asl #4	@, tmp392, pTreeFs, tmp390,
	add	ip, r1, #56	@ tmp393, tmp392,
	strb	lr, [ip, #1]	@ tmp394, <variable>.IsTfRef
	ldr	r0, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r0, [r1, #80]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r1, #84]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	ip, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	ip, [r1, #76]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r0, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r1, #88]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L873:
	rsb	r7, r4, r9	@ tmp432, i.2270, tmp893
	add	r0, r3, r3, asl #1	@, tmp438, prephitmp.2175, prephitmp.2175,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	add	ip, r5, r7, asl #4	@, tmp434, pstTreeInst, tmp432,
	add	lr, r6, r0, asl #4	@, tmp440, pTreeFs, tmp438,
	add	r3, lr, #56	@ tmp441, tmp440,
	mov	r0, #0	@,
	str	r3, [ip, #624]	@ tmp441, <variable>.pstDecodeFs
	bl	dprint_vfmw	@
	b	.L863	@
.L952:
	ldr	r7, [r1, #84]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r1, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r7, r1	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L872	@,
	b	.L873	@
.L950:
	mov	r7, #496	@ tmp542,
	mla	r3, r7, r4, r5	@ tmp543, tmp542, i.2270, pstTreeInst
	ldr	r7, [r3, #628]	@ prephitmp.2170, <variable>.pstDispOutFs
	b	.L888	@
.L852:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37714,
	b	.L850	@
	.fnend
	.size	Tree_FSP_NewLogicFs, .-Tree_FSP_NewLogicFs
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
.LFB1397:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp224,
	movt	r2, #:upper16:.LANCHOR0	@ tmp224,
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	ldr	r3, [r2, r0, asl #2]	@ D.36975, s_pFspInst
	cmp	r3, #0	@ D.36975,
	beq	.L963	@,
	movw	lr, #56800	@ tmp144,
	mul	lr, lr, r0	@ tmp143, tmp144, InstID
	add	r1, lr, r2	@ tmp145, tmp143, tmp224
	ldr	r4, [r1, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L964	@,
	ldrb	r1, [r3, #21]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, r3, #31744	@, D.36975,
	movw	lr, #31932	@ tmp204,
	mov	r0, ip	@ tmp217, pFspInstInfo
	mov	r2, #3072	@,
	strb	r1, [ip, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r1, r4, #128	@,,
	ldr	r4, [r3, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	lr, #31884	@ tmp205,
	ldr	lr, [r3, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	lr, lr, r4	@ tmp208, <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [ip, #3080]	@ tmp208, <variable>.s32DecFsSize
	ldrb	lr, [r3, #22]	@ zero_extendqisi2	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	strb	lr, [ip, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	lr, [r3, #23]	@ zero_extendqisi2	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	strb	lr, [ip, #3]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrb	lr, [r3, #24]	@ zero_extendqisi2	@ <variable>.s32InstID, <variable>.s32InstID
	strb	lr, [ip, #4]	@ <variable>.s32InstID, <variable>.s32InstID
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	ip, [r0], #8	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	bl	memcpy	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L964:
	ldrsb	r3, [r1, #65]	@ D.36982, <variable>.s8LevelID
	cmp	r3, #1	@ D.36982,
	beq	.L958	@,
	cmp	r3, #2	@ D.36982,
	beq	.L965	@,
	movw	r1, #:lower16:.LC77	@,
	movw	r2, #2438	@,
	movt	r1, #:upper16:.LC77	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L958:
	add	r1, lr, r2	@ tmp159, tmp143, tmp224
	add	r3, r1, #32000	@ pTreeFs, tmp159,
	add	r3, r3, #44	@ pTreeFs, pTreeFs,
.L960:
	ldr	r1, [r3, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r5, #56800	@ tmp183,
	mla	lr, r5, r0, r2	@ tmp184, tmp183, InstID, tmp224
	mov	r0, ip	@ tmp196, pFspInstInfo
	strb	r1, [ip, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r1, r3, #56	@, pTreeFs,
	ldr	r5, [r3, #116]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #3072	@,
	ldr	r4, [r3, #68]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	r4, r4, r5	@ tmp175, <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [ip, #3080]	@ tmp175, <variable>.s32DecFsSize
	ldr	r3, [r3, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	mov	r4, #1	@ tmp178,
	strb	r4, [ip, #3]	@ tmp178, <variable>.s32TfFsNum
	strb	r3, [ip, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	r3, [lr, #64]	@ zero_extendqisi2	@ <variable>.s8InstID, <variable>.s8InstID
	strb	r3, [ip, #4]	@ <variable>.s8InstID, <variable>.s32InstID
	movw	r3, #31960	@ tmp189,
	ldr	ip, [lr, r3]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	strb	ip, [r0], #8	@ <variable>.stTreePMV.s32PmvNum, <variable>.s32PmvNum
	bl	memcpy	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L965:
	add	r5, lr, r2	@ tmp166, tmp143, tmp224
	add	r4, r5, #44288	@ pTreeFs, tmp166,
	add	r3, r4, #148	@ pTreeFs, pTreeFs,
	b	.L960	@
.L963:
	mov	r0, r3	@, D.36975
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2422	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1373:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	mov	r5, r0	@ InstID, InstID
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bhi	.L974	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L975	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp183,
	movt	r3, #:upper16:.LANCHOR0	@ tmp183,
	ldr	r2, [r3, r0, asl #2]	@ D.35673, s_pFspInst
	cmp	r2, #0	@ D.35673,
	beq	.L970	@,
	movw	r1, #38112	@ tmp144,
	ldr	r2, [r2, r1]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	beq	.L971	@,
.L970:
	movw	ip, #56800	@ tmp149,
	mla	r6, ip, r5, r3	@ tmp150, tmp149, InstID, tmp183
	ldr	r0, [r6, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	bne	.L976	@,
.L971:
	movw	r1, #56800	@ tmp160,
	mov	r6, #0	@ tmp155,
	mla	ip, r1, r5, r3	@ tmp161, tmp160, InstID, tmp183
	strb	r6, [r4, #0]	@ tmp155, <variable>.s32DispLoopEnable
	movw	r3, #:lower16:.LANCHOR0	@ tmp157,
	movt	r3, #:upper16:.LANCHOR0	@ tmp157,
	ldr	r2, [ip, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	beq	.L977	@,
	ldr	r8, [r3, r5, asl #2]	@ pstInst, s_pFspInst
	sub	r7, fp, #52	@ tmp174,,
	add	sl, r8, #28	@ tmp175, pstInst,
	add	r8, r8, #44	@ tmp178, pstInst,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp175,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp174,,,,
	mov	r0, r5	@, InstID
	bl	FSP_DisableInstance	@
	mov	r0, r5	@, InstID
	bl	FSP_EnableInstance	@
	ldmia	r7, {r0, r1, r2, r3}	@ tmp174,,,,
	mov	ip, r8	@ tmp179, tmp178
	stmia	sl, {r0, r1, r2, r3}	@ tmp175,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp179,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp179,,,,
	ldr	r2, [r4, #0]	@ tmp181,* pstFspInstCfg
	str	r2, [ip, #0]	@ tmp181,
.L968:
	mov	r0, r6	@, D.35667
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L977:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	add	ip, ip, #180	@ tmp170, tmp161,
	mov	r5, ip	@ tmp184, tmp170
	stmia	r5!, {r0, r1, r2, r3}	@ tmp184,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp184,,,,
	ldr	r0, [r4, #0]	@ tmp172,* pstFspInstCfg
	str	r0, [r5, #0]	@ tmp172,
	b	.L968	@
.L976:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #544	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC79	@,
	movt	r3, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35667,
	b	.L968	@
.L974:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #541	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35667,
	b	.L968	@
.L975:
	mov	r0, r1	@, pstFspInstCfg
	movw	r2, #542	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35667,
	b	.L968	@
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
.LFB1385:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r0	@ InstID, InstID
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r8, r2	@ IsWaitDisp, IsWaitDisp
	bhi	.L997	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L998	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp239,
	movt	r7, #:upper16:.LANCHOR0	@ tmp239,
	ldr	r0, [r7, r0, asl #2]	@ tmp153, s_pFspInst
	cmp	r0, #0	@ tmp153,
	beq	.L999	@,
	ldr	r0, .L1004	@,
	rsb	r4, r4, r4, asl #5	@, tmp170, LogicFrameID, LogicFrameID,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #56800	@ tmp162,
	mul	r3, r3, r6	@ tmp161, tmp162, InstID
	movw	sl, #:lower16:.LANCHOR2	@ tmp240,
	movt	sl, #:upper16:.LANCHOR2	@ tmp240,
	add	r0, r3, r7	@ tmp163, tmp161, tmp239
	ldr	r2, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	addeq	r4, r3, r4, asl #4	@, tmp174, tmp161, tmp170,
	movne	r4, r4, asl #4	@ tmp180, tmp179,
	ldrne	r3, [r7, r6, asl #2]	@ tmp182, s_pFspInst
	addeq	r4, r4, r7	@ tmp175, tmp174, tmp239
	addne	r4, r4, #80	@ tmp181, tmp180,
	addeq	r4, r4, #216	@ pstLogicFs, tmp175,
	addne	r4, r4, r3	@ pstLogicFs, tmp181, tmp182
	rsbs	r5, r8, #1	@ D.36556, IsWaitDisp
	movcc	r5, #0	@ D.36556
	ldrsb	r0, [r4, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r0, #0	@ <variable>.IsDummyFs,
	cmpeq	r8, #0	@, IsWaitDisp,
	beq	.L1000	@,
	cmp	r5, #0	@ D.36556,
	moveq	r3, #3	@ iftmp.490,
	bne	.L986	@,
.L988:
	cmp	r0, #0	@ <variable>.IsDummyFs,
	strb	r3, [r4, #1]	@ iftmp.490, <variable>.s32DispState
	bne	.L995	@,
	ldr	r1, [r4, #476]	@ temp.2374, <variable>.pstDispOutFs
	cmp	r1, #0	@ temp.2374,
	beq	.L995	@,
	ldr	r3, [r1, #44]	@ D.36578, <variable>.u32Tick
	ldr	r2, [r4, #464]	@ D.36579, <variable>.u32Tick
	cmp	r3, r2	@ D.36578, D.36579
	bne	.L1001	@,
	movw	lr, #56800	@ tmp218,
	cmp	r5, #0	@ D.36556,
	mla	r7, lr, r6, r7	@ tmp219, tmp218, InstID, tmp239
	moveq	r3, #3	@ tmp210,
	strneb	r0, [r4, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	streqb	r3, [r4, #1]	@ tmp210, <variable>.s32DispState
	strneb	r0, [r1, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	streqb	r3, [r1, #2]	@ tmp210, <variable>.DispState
	ldr	r3, [r7, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L1002	@,
.L994:
	cmp	r5, #0	@ D.36556,
	movne	r3, #0	@ tmp234,
	strne	r3, [r4, #476]	@ tmp234, <variable>.pstDispOutFs
.L995:
	ldr	r0, .L1004	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1000:
	ldr	r2, [r4, #476]	@ D.36560, <variable>.pstDispOutFs
	cmp	r2, #0	@ D.36560,
	beq	.L986	@,
	ldrsb	r1, [r4, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.s32DispState,
	beq	.L986	@,
	ldr	ip, [sl, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r3, #:lower16:.LANCHOR2	@ tmp192,
	movt	r3, #:upper16:.LANCHOR2	@ tmp192,
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L986	@,
	ldr	r3, [r3, #-3996]	@ D.38117, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r2, #12]	@ D.36569, <variable>.PhyAddr
	cmp	r3, #0	@ D.38117,
	beq	.L1003	@,
	mov	r0, r6	@, InstID
	blx	r3	@ D.38117
	ldrsb	r0, [r4, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
.L986:
	mov	r3, #0	@ iftmp.490,
	b	.L988	@
.L997:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #1904	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1002:
	ldr	r2, [r4, #476]	@ temp.2378, <variable>.pstDispOutFs
	cmp	r2, #0	@ temp.2378,
	beq	.L994	@,
	ldr	r0, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r1, [r4, #464]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r1	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L994	@,
	ldrsb	ip, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mov	r0, r6	@, InstID
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	add	r7, r7, ip	@ tmp230, tmp219, <variable>.s32LogicFsID
	ldrsb	r1, [r7, #112]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L994	@
.L998:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1905	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1001:
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r0, .L1004	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L999:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1906	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1003:
	mov	r0, r3	@, D.38117
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r4, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	mov	r3, #0	@ iftmp.490,
	b	.L988	@
.L1005:
	.align	2
.L1004:
	.word	.LANCHOR2-3988
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ LogicFrameID, LogicFrameID
	ldmhifd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp145,
	movt	r5, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r5, r0, asl #2]	@ tmp146, s_pFspInst
	cmp	r3, #0	@ tmp146,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	movw	r3, #56800	@ tmp150,
	mul	r1, r3, r4	@ tmp149, tmp150, InstID
	rsb	r2, r6, r6, asl #5	@, tmp158, LogicFrameID, LogicFrameID,
	add	r0, r1, r5	@ tmp151, tmp149, tmp145
	ldr	ip, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	addeq	r1, r1, r2, asl #4	@, tmp162, tmp149, tmp158,
	ldrne	r1, [r5, r4, asl #2]	@ tmp170, s_pFspInst
	movne	r5, r2, asl #4	@ tmp168, tmp167,
	addeq	r5, r5, r1	@ tmp163, tmp145, tmp162
	addne	r5, r5, #80	@ tmp169, tmp168,
	addeq	r5, r5, #216	@ pstLogic, tmp163,
	addne	r5, r5, r1	@ pstLogic, tmp169, tmp170
	ldrsb	r0, [r5, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #3	@ <variable>.s32DispState,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r4	@, InstID
	mov	r1, r6	@, LogicFrameID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_ClearLogicFs, .-FSP_ClearLogicFs
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
.LFB1381:
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
	cmp	r0, #15	@ InstID,
	mov	r8, r0	@ InstID, InstID
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bhi	.L1122	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp193,
	movt	r4, #:upper16:.LANCHOR0	@ tmp193,
	ldr	r0, [r4, r0, asl #2]	@ tmp194, s_pFspInst
	cmp	r0, #0	@ tmp194,
	beq	.L1123	@,
	ldr	r0, .L1132	@,
	movw	r9, #:lower16:.LANCHOR2	@ tmp847,
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #56800	@ tmp204,
	mla	r0, r1, r8, r4	@ tmp205, tmp204, InstID, tmp193
	movt	r9, #:upper16:.LANCHOR2	@ tmp847,
	ldr	r3, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L1124	@,
	ldr	r5, [r4, r8, asl #2]	@ pstInst, s_pFspInst
	mov	r4, #0	@ i.2521,
	mov	r3, r5	@ ivtmp.2490, pstInst
	b	.L1020	@
.L1017:
	ldrsb	r1, [r2, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r4, r4, #1	@ i.2521, i.2521,
	cmp	r1, #0	@ <variable>.s32IsRef,
	mov	r3, r4	@ tmp876, i.2521
	bne	.L1090	@,
	ldrsb	r7, [r2, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	beq	.L1111	@,
.L1090:
	add	r4, r3, #1	@ i.2521, tmp876,
	add	r3, r2, #496	@ ivtmp.2490, tmp877,
	cmp	r4, #64	@ i.2521,
	beq	.L1018	@,
.L1020:
	ldrsb	ip, [r3, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r2, r3, #496	@ tmp877, ivtmp.2490,
	cmp	ip, #0	@ <variable>.s32IsRef,
	bne	.L1017	@,
	ldrsb	r7, [r3, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	bne	.L1017	@,
.L1111:
	mov	sl, r4, asl #5	@ tmp848, i.2521,
	rsb	r0, r4, sl	@ tmp221, i.2521, tmp848
	mov	r3, r0, asl #4	@ tmp222, tmp221,
	add	lr, r3, #80	@ tmp239, tmp222,
	add	r3, r3, r5	@ tmp223, tmp222, pstInst
	add	r2, r5, lr	@ tmp240, pstInst, tmp239
	add	r1, r3, #80	@ tmp224, tmp223,
	cmp	r2, #0	@ tmp240,
	strb	r4, [r1, #3]	@ i.2521, <variable>.s32LogicFsID
	strb	r7, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L1018	@,
	add	ip, r3, #552	@ tmp251, tmp223,
	add	r0, r3, #560	@ tmp267, tmp223,
	cmp	r6, #0	@ NeedPhyFs,
	str	r7, [r3, #552]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r7, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r7, [r3, #560]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r7, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L1021	@,
	ldrsb	r0, [r5, #21]	@ temp.2537, <variable>.s32DecFsNum
	cmp	r0, #0	@ temp.2537,
	ble	.L1023	@,
	add	r3, r5, #31744	@ ivtmp.2479, pstInst,
	sub	r2, r0, #1	@ tmp871, temp.2537,
	and	r1, r2, #1	@ tmp873, tmp871,
	ldrsb	ip, [r3, #128]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L1083	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L1109	@,
.L1083:
	mov	r7, #1	@ i.2522,
	cmp	r7, r0	@ i.2522, temp.2537
	add	r3, r3, #48	@ ivtmp.2479, ivtmp.2479,
	bge	.L1110	@,
	cmp	r1, #0	@ tmp873,
	beq	.L1026	@,
	ldrsb	lr, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	lr, #0	@ <variable>.IsDecRef,
	bne	.L1085	@,
	ldrsb	r2, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L1109	@,
.L1085:
	add	r7, r7, #1	@ i.2522, i.2522,
	add	r3, r3, #48	@ ivtmp.2479, ivtmp.2479,
	cmp	r7, r0	@ i.2522, temp.2537
	bge	.L1110	@,
.L1026:
	ldrsb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #48	@ tmp875, ivtmp.2479,
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L1025	@,
	ldrsb	lr, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L1109	@,
.L1025:
	ldrsb	lr, [r3, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r7, r7, #1	@ i.2522, i.2522,
	cmp	lr, #0	@ <variable>.IsDecRef,
	mov	r3, r7	@ tmp874, i.2522
	bne	.L1088	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L1109	@,
.L1088:
	add	r7, r3, #1	@ i.2522, tmp874,
	add	r3, r2, #48	@ ivtmp.2479, tmp875,
	cmp	r7, r0	@ i.2522, temp.2537
	blt	.L1026	@,
.L1110:
	rsb	r0, r4, sl	@ tmp352, i.2521, tmp848
	add	r3, r5, r0, asl #4	@, tmp354, pstInst, tmp352,
	ldr	r7, [r3, #552]	@ prephitmp.2423, <variable>.pstDecodeFs
.L1023:
	cmp	r7, #0	@ prephitmp.2423,
	beq	.L1125	@,
.L1027:
	rsb	ip, r4, sl	@ tmp381, i.2521, tmp848
	add	r1, r5, #37888	@ tmp385, pstInst,
	add	r3, r1, #128	@ tmp385, tmp385,
	add	r0, r5, ip, asl #4	@, tmp383, pstInst, tmp381,
	str	r3, [r0, #560]	@ tmp385, <variable>.pstTfOutFs
	ldrsb	r1, [r5, #0]	@ temp.2498, <variable>.s32PmvNum
	cmp	r1, #0	@ temp.2498,
	ble	.L1036	@,
	ldrsb	r3, [r5, #1]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	r0, r1	@ D.36240, temp.2498
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r0, r3	@ prephitmp.2426, <variable>.IsPmvInUse
	beq	.L1038	@,
	tst	r1, #1	@ temp.2498,
	mov	r3, #0	@ i.2500,
	bne	.L1039	@,
	ldrsb	ip, [r5, #2]	@ tmp914, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2500,
	cmp	ip, #0	@ tmp914,
	bne	.L1039	@,
.L1106:
	uxtb	r0, r3	@ prephitmp.2426, i.2500
.L1038:
	add	ip, r3, #9472	@ tmp406, i.2500,
	rsb	r2, r4, sl	@ tmp394, i.2521, tmp848
	add	r1, ip, #58	@ tmp406, tmp406,
	add	ip, r5, r2, asl #4	@, tmp396, pstInst, tmp394,
	add	lr, r5, r1, asl #2	@, tmp410, pstInst, tmp406,
	strb	r0, [ip, #84]	@ prephitmp.2426, <variable>.PmvIdc
	movw	r0, #38120	@ tmp420,
	ldr	r1, [lr, #4]	@ tmp412, <variable>.PmvAddr
	str	r1, [ip, #564]	@ tmp412, <variable>.PmvAddr
	ldr	lr, [r5, r0]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	lr, [ip, #568]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	r0, [r5, #0]	@ D.36240, <variable>.s32PmvNum
	cmp	r0, r3	@ D.36240, i.2500
	ble	.L1040	@,
.L1036:
	ldrsb	r0, [r5, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L1044	@,
.L1127:
	ldrsb	r6, [r5, #22]	@ D.36259, <variable>.s32DispFsNum
	cmp	r6, #0	@ D.36259,
	ble	.L1126	@,
	add	r0, r5, #34816	@ tmp459, pstInst,
	cmn	r0, #128	@ tmp459,
	beq	.L1047	@,
	movw	r2, #34944	@ tmp460,
	ldr	lr, [r5, r2]	@ tmp462,
	bic	ip, lr, #-16777216	@ tmp461, tmp462,
	cmp	ip, #0	@ tmp461,
	beq	.L1047	@,
	tst	r6, #1	@ D.36259,
	add	r1, r0, #176	@ ivtmp.2448, tmp459,
	mov	r2, #0	@ i.2507,
	bne	.L1051	@,
	cmp	r1, #0	@ ivtmp.2448,
	mov	r2, #1	@ i.2507,
	mov	r3, r2	@ i.2494, i.2507
	beq	.L1050	@,
	add	lr, r5, #34816	@ tmp901, pstInst,
	add	r1, r0, #224	@ ivtmp.2448, tmp459,
	add	ip, lr, #176	@ tmp901, tmp901,
	ldr	lr, [ip, #0]	@ tmp902,
	bic	r0, lr, #-16777216	@ tmp903, tmp902,
	cmp	r0, #0	@ tmp903,
	bne	.L1051	@,
	b	.L1050	@
.L1052:
	add	ip, r2, r2, asl #1	@, tmp905, i.2507, i.2507,
	cmp	r1, #0	@ ivtmp.2448,
	add	r0, r5, r0, asl #4	@, tmp483, pstInst, tmp481,
	add	r1, r1, #96	@ ivtmp.2448, ivtmp.2448,
	add	ip, r5, ip, asl #4	@, tmp907, pstInst, tmp905,
	add	r0, r0, #34816	@ tmp484, tmp483,
	add	ip, ip, #34816	@ tmp908, tmp907,
	add	r0, r0, #128	@ tmp484, tmp484,
	add	ip, ip, #128	@ tmp908, tmp908,
	beq	.L1050	@,
	ldr	r0, [r0, #0]	@ tmp486,
	bic	r0, r0, #-16777216	@ tmp485, tmp486,
	cmp	r0, #0	@ tmp485,
	beq	.L1050	@,
	cmp	lr, #0	@ tmp856,
	mov	r3, r2	@ i.2494, i.2507
	beq	.L1050	@,
	ldr	lr, [ip, #0]	@ tmp909,
	bic	r0, lr, #-16777216	@ tmp910, tmp909,
	cmp	r0, #0	@ tmp910,
	beq	.L1050	@,
.L1051:
	add	r3, r2, #1	@ tmp857, i.2507,
	add	lr, r1, #48	@ tmp856, ivtmp.2448,
	cmp	r6, r3	@ D.36259, tmp857
	add	r2, r3, #1	@ i.2507, i.2494,
	add	r0, r3, r3, asl #1	@, tmp481, i.2494, i.2494,
	bgt	.L1052	@,
	rsb	lr, r4, sl	@ tmp503, i.2521, tmp848
	add	r0, r5, lr, asl #4	@, tmp505, pstInst, tmp503,
	ldr	r6, [r0, #556]	@ prephitmp.2499, <variable>.pstDispOutFs
.L1046:
	cmp	r6, #0	@ prephitmp.2499,
	bne	.L1049	@,
	mov	r0, r6	@, prephitmp.2499
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@ tmp511,,
	mov	r0, r8	@, InstID
	sub	r2, fp, #56	@,,
	str	r6, [r1, #-4]!	@ prephitmp.2499, RefNum
	sub	r3, fp, #52	@,,
	str	r6, [fp, #-52]	@ prephitmp.2499, NewNum
	str	r6, [fp, #-56]	@ prephitmp.2499, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r4, [fp, #-48]	@ RefNum, RefNum
	ldr	r3, [fp, #-56]	@ ReadNum, ReadNum
	ldr	r2, [fp, #-52]	@ NewNum, NewNum
	add	r0, r4, r3	@ tmp514, RefNum, ReadNum
	ldrsb	ip, [r5, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, r0, #2	@ tmp517, tmp514,
	add	r4, r1, r2	@ tmp518, tmp517, NewNum
	cmp	r4, ip	@ tmp518, <variable>.s32DispFsNum
	bge	.L1053	@,
	mov	r0, r6	@, prephitmp.2499
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	ldr	r4, [fp, #-52]	@ NewNum, NewNum
	mov	r0, r6	@, prephitmp.2499
	movw	r1, #:lower16:.LC76	@,
	ldr	r2, [fp, #-48]	@, RefNum
	movt	r1, #:upper16:.LC76	@,
	str	r4, [sp, #0]	@ NewNum,
	ldrsb	ip, [r5, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r3, [fp, #-56]	@, ReadNum
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, r8	@, InstID
	bl	FSP_PrintContext	@
.L1053:
	ldr	r0, .L1132	@,
	mvn	r4, #0	@ RetID,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1013	@
.L1041:
	ldrsb	r2, [r2, #1]	@ tmp390, <variable>.IsPmvInUse
	cmp	r2, #0	@ tmp390,
	beq	.L1106	@,
	add	r3, r3, #1	@ i.2500, i.2500,
	add	r2, r5, r3	@ tmp915, pstInst, i.2500
	ldrsb	lr, [r2, #1]	@ tmp916, <variable>.IsPmvInUse
	cmp	lr, #0	@ tmp916,
	beq	.L1106	@,
.L1039:
	add	r3, r3, #1	@ i.2500, i.2500,
	cmp	r3, r1	@ i.2500, temp.2498
	add	r2, r5, r3	@ tmp389, pstInst, i.2500
	blt	.L1041	@,
.L1040:
	cmp	r0, #0	@ D.36240,
	ble	.L1042	@,
	ldrsb	ip, [r5, #0]	@ temp.2503, <variable>.s32PmvNum
	mov	r3, #1	@ i.2504,
	mov	r1, #0	@ tmp850,
	strb	r1, [r5, #1]	@ tmp850, <variable>.IsPmvInUse
	cmp	ip, r3	@ temp.2503,
	sub	r0, ip, #1	@ tmp858, temp.2503,
	and	r2, r0, r3	@ tmp860, tmp858,
	ble	.L1042	@,
	cmp	r2, #0	@ tmp860,
	beq	.L1043	@,
	add	r2, r5, #1	@ tmp911, pstInst,
	mov	r3, #2	@ i.2504,
	cmp	ip, r3	@ temp.2503, i.2504
	strb	r1, [r2, #1]	@ tmp850, <variable>.IsPmvInUse
	ble	.L1042	@,
.L1043:
	add	r2, r3, #1	@ tmp861, i.2504,
	add	r0, r5, r3	@ tmp890, pstInst, i.2504
	add	r3, r2, #1	@ i.2504, tmp861,
	add	lr, r5, r2	@ tmp893, pstInst, tmp861
	cmp	ip, r3	@ temp.2503, i.2504
	strb	r1, [r0, #1]	@ tmp850, <variable>.IsPmvInUse
	strb	r1, [lr, #1]	@ tmp850, <variable>.IsPmvInUse
	bgt	.L1043	@,
.L1042:
	rsb	r1, r4, sl	@ tmp428, i.2521, tmp848
	movw	ip, #38124	@ tmp441,
	mov	lr, #0	@ tmp432,
	add	r3, r5, r1, asl #4	@, tmp430, pstInst, tmp428,
	mov	r0, lr	@, tmp432
	add	r2, r3, #80	@ tmp431, tmp430,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	strb	lr, [r2, #4]	@ tmp432, <variable>.PmvIdc
	movw	lr, #38120	@ tmp450,
	ldr	r2, [r5, ip]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r3, #564]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	ip, [r5, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [r3, #568]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L1127	@,
.L1044:
	rsb	r3, r4, sl	@ tmp466, i.2521, tmp848
	add	r0, r5, r3, asl #4	@, tmp468, pstInst, tmp466,
	ldr	r1, [r0, #552]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r1, [r0, #556]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L1049:
	ldr	lr, [r9, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r3, #:lower16:.LANCHOR2	@ tmp528,
	movt	r3, #:upper16:.LANCHOR2	@ tmp528,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L1024	@,
	ldr	r3, [r3, #-4000]	@ D.38133, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.38133,
	beq	.L1128	@,
	mov	r0, r8	@, InstID
	sub	r1, fp, #84	@,,
	blx	r3	@ D.38133
	cmp	r0, #0	@,
	bne	.L1055	@,
	ldr	r6, [fp, #-84]	@ D.36281, stInfo.stFrameInfo.PhyAddr
	cmp	r6, #0	@ D.36281,
	beq	.L1129	@,
	rsb	r2, r4, sl	@ tmp544, i.2521, tmp848
	add	r9, r5, r2, asl #4	@, tmp546, pstInst, tmp544,
	ldr	r7, [r9, #552]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [r7, #12]	@ D.36281, <variable>.PhyAddr
	ldr	r8, [fp, #-68]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r8, [r9, #564]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
	b	.L1024	@
.L1021:
	add	lr, r5, #31744	@ D.36202, pstInst,
	mov	r8, #1	@ tmp331,
	add	r2, lr, #80	@ D.36202, D.36202,
	str	r2, [ip, #4]	@ D.36202, <variable>.pstDispOutFs
	movw	ip, #38124	@ tmp311,
	str	r2, [r3, #560]	@ D.36202, <variable>.pstTfOutFs
	str	r2, [r3, #552]	@ D.36202, <variable>.pstDecodeFs
	ldr	r9, [r5, ip]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r9, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r7, [r5, #0]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r8, [r1, #2]	@ tmp331, <variable>.IsDummyFs
	sub	r6, r7, #1	@ tmp322, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp322, <variable>.PmvIdc
.L1024:
	rsb	r6, r4, sl	@ tmp560, i.2521, tmp848
	movw	r2, #38116	@ tmp584,
	mov	ip, #1	@ tmp564,
	mov	r1, #456	@,
	mov	r7, r6, asl #4	@ tmp561, tmp560,
	add	r6, r7, r5	@ tmp562, tmp561, pstInst
	add	r9, r7, #88	@ tmp645, tmp561,
	add	r3, r6, #552	@ tmp572, tmp562,
	add	r7, r6, #80	@ tmp563, tmp562,
	add	sl, r6, #120	@, tmp562,
	add	r8, r6, #136	@, tmp562,
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r5, r9	@, pstInst, tmp645
	str	sl, [fp, #-88]	@, %sfp
	add	r9, r6, #192	@ tmp692, tmp562,
	strb	ip, [r7, #1]	@ tmp564, <variable>.s32DispState
	add	sl, r6, #208	@ tmp763, tmp562,
	str	r8, [fp, #-92]	@, %sfp
	add	r8, r6, #200	@ tmp801, tmp562,
	strb	ip, [lr, #2]	@ tmp564, <variable>.DispState
	add	lr, r6, #128	@, tmp562,
	str	lr, [fp, #-96]	@, %sfp
	str	ip, [r6, #548]	@ tmp564, <variable>.eLfsPmvState
	ldr	r4, [r6, #552]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r5, r2]	@ D.36286, <variable>.u32InstTick
	str	ip, [r6, #544]	@ D.36286, <variable>.u32Tick
	str	ip, [r4, #44]	@ D.36286, <variable>.u32Tick
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [r6, #544]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r4, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r5, r2]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	r4, ip, #1	@ tmp619, <variable>.u32InstTick,
	str	r4, [r5, r2]	@ tmp619, <variable>.u32InstTick
	ldr	lr, [r6, #560]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [r3, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #552]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [fp, #-100]	@,
	bl	__memzero	@
	ldrsb	r2, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r2, [r6, #264]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	ip, [r5, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	ip, [r6, #232]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	r3, [r5, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	r3, [r6, #236]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #260]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	r2, [r5, #12]	@ D.36302, <variable>.PhyAddr
	str	r2, [r6, #192]	@ D.36302, <variable>.stDispImg.luma_phy_addr
	mov	r0, r2	@, D.36302
	ldr	r1, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r1, r2	@ tmp701, <variable>.ChromOffset, D.36302
	str	ip, [r9, #4]	@ tmp701, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #120]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [fp, #-88]	@, %sfp
	str	r0, [r3, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.36315, <variable>.PhyAddr
	str	r2, [r6, #176]	@ D.36315, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r2, r1	@ D.36318, D.36315, <variable>.ChromOffset
	str	r3, [r6, #180]	@ D.36318, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	ip, r0, r2	@ tmp747, <variable>.Stride, D.36315
	str	ip, [r6, #184]	@ tmp747, <variable>.stDispImg.btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, r3, r2	@ tmp756, D.36318, <variable>.Stride
	str	r0, [r6, #188]	@ tmp756, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	ip, [r4, #12]	@ temp.2525, <variable>.PhyAddr
	str	ip, [r6, #208]	@ temp.2525, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, ip	@, temp.2525
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, ip	@ tmp772, <variable>.ChromOffset, temp.2525
	str	r3, [sl, #4]	@ tmp772, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-92]	@, %sfp
	str	r0, [r2, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [fp, #-100]	@,
	ldr	ip, [r0, #12]	@ D.36333, <variable>.PhyAddr
	str	ip, [r6, #200]	@ D.36333, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, ip	@, D.36333
	ldr	r4, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r4, ip	@ tmp810, <variable>.ChromOffset, D.36333
	str	r3, [r8, #4]	@ tmp810, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #128]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-96]	@, %sfp
	str	r0, [r1, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, .L1132	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r4, [r7, #3]	@ RetID, <variable>.s32LogicFsID
.L1013:
	mov	r0, r4	@, RetID
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1109:
	add	r1, r7, r7, asl #1	@, tmp338, i.2522, i.2522,
	rsb	r2, r4, sl	@ tmp345, i.2521, tmp848
	mov	ip, r1, asl #4	@ tmp339, tmp338,
	add	r3, r5, r2, asl #4	@, tmp347, pstInst, tmp345,
	add	r7, ip, #31744	@ tmp340, tmp339,
	add	r0, r7, #128	@ tmp340, tmp340,
	add	r7, r5, r0	@ prephitmp.2423, pstInst, tmp340
	str	r7, [r3, #552]	@ prephitmp.2423, <variable>.pstDecodeFs
	b	.L1023	@
.L1047:
	mov	r3, #0	@ i.2494,
.L1050:
	add	r3, r3, r3, asl #1	@, tmp489, i.2494, i.2494,
	rsb	ip, r4, sl	@ tmp496, i.2521, tmp848
	mov	r1, r3, asl #4	@ tmp490, tmp489,
	add	lr, r5, ip, asl #4	@, tmp498, pstInst, tmp496,
	add	r2, r1, #34816	@ tmp491, tmp490,
	add	r6, r2, #128	@ tmp491, tmp491,
	add	r6, r5, r6	@ prephitmp.2499, pstInst, tmp491
	str	r6, [lr, #556]	@ prephitmp.2499, <variable>.pstDispOutFs
	b	.L1046	@
.L1124:
	mov	r0, r8	@, InstID
	mov	r1, r6	@, NeedPhyFs
	bl	Tree_FSP_NewLogicFs	@
	cmn	r0, #1	@ RetID,
	mov	r4, r0	@ RetID,
	beq	.L1130	@,
.L1121:
	ldr	r0, .L1132	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1013	@
.L1128:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, r3	@, D.38133
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
.L1055:
	ldr	r0, .L1132	@,
	mvn	r4, #0	@ RetID,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r1, #:lower16:.LC87	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L1013	@
.L1125:
	mov	r0, r7	@, prephitmp.2423
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, #0	@ <variable>.s32DecFsNum,
	addle	r1, r5, #31744	@, pstInst,
	addle	r1, r1, #128	@,,
	strle	r1, [fp, #-88]	@, %sfp
	ble	.L1028	@,
	add	r6, r5, #31744	@, pstInst,
	add	r2, r6, #128	@,,
	str	r2, [fp, #-88]	@, %sfp
	mov	r6, r2	@ ivtmp.2473,
.L1029:
	ldrsb	r2, [r6, #0]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	add	r7, r7, #1	@ i, i,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #48	@ ivtmp.2473, ivtmp.2473,
	cmp	r1, r7	@ <variable>.s32DecFsNum, i
	bgt	.L1029	@,
.L1028:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldrsb	lr, [r5, #21]	@ D.36230, <variable>.s32DecFsNum
	ldr	r0, [fp, #-88]	@ pstPhyFs, %sfp
	cmp	lr, #0	@ D.36230,
	movle	ip, #0	@ prephitmp.2428,
	ble	.L1031	@,
	tst	lr, #1	@ D.36230,
	mov	ip, #0	@ i.2531,
	mov	r1, ip	@ i.2530, i.2531
	mvn	r2, #0	@ LeastTick.2534,
	bne	.L1035	@,
	ldr	r1, [fp, #-88]	@, %sfp
	add	r0, r1, #48	@ pstPhyFs,,
	ldr	r3, [r1, #44]	@ LeastTick, <variable>.u32Tick
	mov	r1, #1	@ i.2530,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r2	@, LeastTick, LeastTick.2534
	mov	r2, r3	@ LeastTick.2534, LeastTick
	b	.L1035	@
.L1131:
	ldr	r2, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r2, r3	@ LeastTick, LeastTick
	movcs	r2, r3	@ LeastTick, LeastTick
	movcc	ip, r1	@ i.2531, tmp869
.L1108:
	add	r1, r1, #1	@ i.2530, tmp869,
	add	r0, r0, #48	@ pstPhyFs, tmp870,
.L1035:
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #48	@ tmp870, pstPhyFs,
	cmp	r3, r2	@ LeastTick, LeastTick.2534
	movcc	ip, r1	@ i.2531, i.2530
	add	r1, r1, #1	@ tmp869, i.2530,
	movcs	r3, r2	@ LeastTick, LeastTick.2534
	cmp	lr, r1	@ D.36230, tmp869
	bgt	.L1131	@,
.L1031:
	add	lr, ip, ip, asl #1	@, tmp373, prephitmp.2428, prephitmp.2428,
	rsb	r2, r4, sl	@ tmp367, i.2521, tmp848
	mov	r1, lr, asl #4	@ tmp374, tmp373,
	add	lr, r5, r2, asl #4	@, tmp369, pstInst, tmp367,
	add	ip, r1, #31744	@ tmp375, tmp374,
	add	r0, ip, #128	@ tmp375, tmp375,
	add	r3, r5, r0	@ tmp377, pstInst, tmp375
	str	r3, [lr, #552]	@ tmp377, <variable>.pstDecodeFs
	b	.L1027	@
.L1122:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1357	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ RetID,
	b	.L1013	@
.L1123:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1358	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	mvn	r4, #0	@ RetID,
	bl	dprint_vfmw	@
	b	.L1013	@
.L1126:
	mov	r6, #496	@ tmp456,
	mla	r3, r6, r4, r5	@ tmp457, tmp456, i.2521, pstInst
	ldr	r6, [r3, #556]	@ prephitmp.2499, <variable>.pstDispOutFs
	b	.L1046	@
.L1129:
	ldr	r0, .L1132	@,
	mvn	r4, #0	@ RetID,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, D.36281
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	b	.L1013	@
.L1018:
	movw	r1, #:lower16:.LC82	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC82	@,
	mvn	r4, #0	@ RetID,
	bl	dprint_vfmw	@
	b	.L1121	@
.L1130:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldr	r0, .L1132	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1013	@
.L1133:
	.align	2
.L1132:
	.word	.LANCHOR2-3988
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1374:
	@ args = 0, pretend = 0, frame = 648
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #676
	sub	sp, sp, #676	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ InstID, InstID
	mov	r6, r1	@ MemPhyAddr, MemPhyAddr
	mov	r7, r2	@ MemSize, MemSize
	sub	r0, fp, #672	@,,
	mov	r1, #0	@,
	mov	r2, #628	@,
	str	r3, [fp, #-684]	@ UsedMemSize, %sfp
	bl	memset	@
	cmp	r5, #15	@ InstID,
	bhi	.L1197	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp182,
	movt	r3, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r4, [r3, r5, asl #2]	@ D.35717, s_pFspInst
	cmp	r4, #0	@ D.35717,
	beq	.L1198	@,
	movw	r2, #56800	@ tmp189,
	mla	r0, r2, r5, r3	@ tmp190, tmp189, InstID, tmp182
	ldr	r3, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L1199	@,
	mov	r0, r5	@, InstID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #26	@ eChanCapLevel,
	bls	.L1200	@,
.L1140:
	ldrsb	r1, [r4, #48]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r1, #1	@ <variable>.stInstCfg.s32UserDec,
	beq	.L1141	@,
	cmp	r0, #26	@ eChanCapLevel,
	bls	.L1142	@,
	mov	r2, r0	@, eChanCapLevel
	movw	r1, #:lower16:.LC90	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1200:
	rsb	r2, r0, r0, asl #3	@, tmp202, eChanCapLevel, eChanCapLevel,
	movw	lr, #:lower16:CapItem	@ tmp199,
	add	r8, r2, #1	@ tmp203, tmp202,
	movt	lr, #:upper16:CapItem	@ tmp199,
	ldr	r1, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [lr, r2, asl #2]	@ tmp212, CapItem
	ldr	r3, [lr, r8, asl #2]	@ tmp211, CapItem
	ldr	r2, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	lr, ip, r3	@ tmp210, tmp212, tmp211
	mul	ip, r2, r1	@ tmp196, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	ip, lr	@, tmp196, tmp210
	bgt	.L1140	@,
.L1141:
	ldr	r3, [r4, #76]	@ D.35751, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.35751,
	bne	.L1143	@,
.L1191:
	ldrb	r8, [r4, #44]	@ zero_extendqisi2	@ prephitmp.2558, <variable>.stInstCfg.s32DispLoopEnable
.L1144:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp241,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp241,
	sxtb	r8, r8	@ prephitmp.2558, prephitmp.2558
	ldrsb	r2, [r4, #49]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r3, #36]	@ D.35763, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	add	r8, r2, r8, asl #2	@, MinFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum, prephitmp.2558,
	cmp	ip, #0	@ D.35763,
	beq	.L1147	@,
	ldrsb	lr, [r4, #52]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r6	@, MemPhyAddr
	ldr	r2, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r7	@, MemSize
	ldr	r3, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp245,
	str	lr, [sp, #4]	@ tmp245,
	ldrsb	lr, [r4, #48]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r5, [sp, #12]	@ InstID,
	sub	r5, fp, #672	@ tmp248,,
	str	r5, [sp, #16]	@ tmp248,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	blx	ip	@ D.35763
	subs	r2, r0, #0	@ Ret.2697,
	ldrne	ip, [fp, #-396]	@ prephitmp.2560, MemArrange.ValidFrameNum
	bne	.L1149	@,
	ldr	ip, [fp, #-396]	@ prephitmp.2560, MemArrange.ValidFrameNum
	cmp	r8, ip	@ MinFsNum, prephitmp.2560
	bgt	.L1149	@,
	ldrsb	r5, [r4, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #23]	@ Ret.2697, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r2, [r4, #22]	@ Ret.2697, <variable>.s32DispFsNum
	bne	.L1150	@,
	ldr	r6, [fp, #-396]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r6, #40	@ MemArrange.ValidFrameNum,
	movge	r6, #40	@ tmp254,
	uxtb	r8, r6	@ prephitmp.2561, tmp254
	strb	r8, [r4, #21]	@ prephitmp.2561, <variable>.s32DecFsNum
.L1151:
	add	r7, r4, #31744	@ tmp258, D.35717,
	mov	r5, #0	@ ivtmp.2657,
	add	r1, r7, #152	@ ivtmp.2671, tmp258,
	add	r6, r7, #132	@ ivtmp.2655, tmp258,
	add	ip, r7, #140	@ ivtmp.2667, tmp258,
	add	r0, r7, #148	@ ivtmp.2669, tmp258,
	mov	r2, r5	@ i, ivtmp.2657
	sub	r7, fp, #672	@ ivtmp.2755,,
	mov	r3, r5	@ tmp503, ivtmp.2657
	b	.L1155	@
.L1201:
	str	r3, [r6, #48]	@ tmp503, <variable>.PhyFsID
	ldr	sl, [fp, #-688]	@, %sfp
	add	r8, r4, sl	@ D.40399, D.35717,
	add	r9, r8, #31744	@ tmp595, D.40399,
	ldr	r8, [fp, #-664]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
.L1195:
	str	r8, [ip, #48]	@ tmp607, <variable>.PhyAddr
	add	r2, r2, #2	@ i, tmp507,
	ldr	r8, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	add	r6, r6, #96	@ ivtmp.2655, tmp508,
	add	r5, r5, #96	@ ivtmp.2657, tmp509,
	add	r7, r7, #8	@ ivtmp.2755, tmp510,
	add	ip, ip, #96	@ ivtmp.2667, tmp511,
	str	r8, [r0, #48]	@ MemArrange.VahbStride, <variable>.Stride
	add	r0, r0, #96	@ ivtmp.2669, tmp512,
	ldr	r8, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r8, [r1, #48]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	add	r1, r1, #96	@ ivtmp.2671, tmp513,
	ldr	r8, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r8, [r9, #156]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r8, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r8, [r9, #160]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r8, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r8, [r9, #164]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r8, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r9, #130]	@ tmp503, <variable>.DispState
	strb	r3, [r9, #128]	@ tmp503, <variable>.IsDecRef
	str	r8, [r9, #168]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r9, #129]	@ tmp503, <variable>.IsTfRef
	ldrb	r8, [r4, #21]	@ zero_extendqisi2	@ prephitmp.2561, <variable>.s32DecFsNum
.L1155:
	sxtb	r8, r8	@ prephitmp.2561, prephitmp.2561
	cmp	r8, r2	@ prephitmp.2561, i
	strgt	r2, [r6, #0]	@ i, <variable>.PhyFsID
	strle	r3, [r6, #0]	@ tmp503, <variable>.PhyFsID
	addgt	r8, r4, r5	@ D.40385, D.35717, ivtmp.2657
	ldrgt	sl, [r7, #8]	@ tmp264, MemArrange.FrameAddr
	addle	r8, r4, r5	@ D.40399, D.35717, ivtmp.2657
	ldrle	sl, [fp, #-664]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	addgt	r8, r8, #31744	@ tmp268, D.40385,
	addle	r8, r8, #31744	@ tmp296, D.40399,
	add	r2, r2, #1	@ tmp507, i,
	cmp	r2, #64	@ tmp507,
	add	r6, r6, #48	@ tmp508, ivtmp.2655,
	str	sl, [ip, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r5, r5, #48	@ tmp509, ivtmp.2657,
	ldr	sl, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	add	r7, r7, #4	@ tmp510, ivtmp.2755,
	add	ip, ip, #48	@ tmp511, ivtmp.2667,
	str	sl, [r0, #0]	@ MemArrange.VahbStride, <variable>.Stride
	add	r0, r0, #48	@ tmp512, ivtmp.2669,
	ldr	r9, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [r1, #0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	add	r1, r1, #48	@ tmp513, ivtmp.2671,
	ldr	sl, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	sl, [r8, #156]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r9, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r9, [r8, #160]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	sl, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	sl, [r8, #164]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	sl, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r8, #130]	@ tmp503, <variable>.DispState
	strb	r3, [r8, #128]	@ tmp503, <variable>.IsDecRef
	str	sl, [r8, #168]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r8, #129]	@ tmp503, <variable>.IsTfRef
	beq	.L1154	@,
	ldrsb	r8, [r4, #21]	@ prephitmp.2561, <variable>.s32DecFsNum
	cmp	r8, r2	@ prephitmp.2561, tmp507
	ble	.L1177	@,
	str	r2, [r6, #0]	@ tmp507, <variable>.PhyFsID
	add	r9, r4, r5	@ D.40385, D.35717, tmp509
	ldr	sl, [r7, #8]	@ tmp564, MemArrange.FrameAddr
	add	r8, r9, #31744	@ tmp568, D.40385,
.L1194:
	str	sl, [ip, #0]	@ tmp564, <variable>.PhyAddr
	ldr	r9, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r9, [r0, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	sl, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	sl, [r1, #0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r9, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r9, [r8, #156]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	sl, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	sl, [r8, #160]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r9, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r9, [r8, #164]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	add	r9, r5, #48	@, tmp509,
	ldr	sl, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r8, #130]	@ tmp503, <variable>.DispState
	strb	r3, [r8, #128]	@ tmp503, <variable>.IsDecRef
	str	sl, [r8, #168]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r8, #129]	@ tmp503, <variable>.IsTfRef
	add	r8, r2, #1	@ i, tmp507,
	ldrsb	sl, [r4, #21]	@ prephitmp.2561, <variable>.s32DecFsNum
	str	r9, [fp, #-688]	@, %sfp
	add	r9, r7, #4	@, tmp510,
	cmp	sl, r8	@ prephitmp.2561, i
	str	r9, [fp, #-680]	@, %sfp
	ble	.L1201	@,
	str	r8, [r6, #48]	@ i, <variable>.PhyFsID
	ldr	sl, [fp, #-688]	@, %sfp
	add	r9, r4, sl	@ D.40385, D.35717,
	ldr	sl, [fp, #-680]	@, %sfp
	add	r9, r9, #31744	@ tmp611, D.40385,
	ldr	r8, [sl, #8]	@ tmp607, MemArrange.FrameAddr
	b	.L1195	@
.L1199:
	mov	r0, r5	@, InstID
	ldr	r1, [fp, #-684]	@, %sfp
	bl	Tree_FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	bne	.L1202	@,
.L1136:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1142:
	rsb	ip, r0, r0, asl #3	@, tmp224, eChanCapLevel, eChanCapLevel,
	movw	r3, #:lower16:CapItem	@ tmp221,
	add	r1, ip, #1	@ tmp232, tmp224,
	movt	r3, #:upper16:CapItem	@ tmp221,
	mov	r2, r0	@, eChanCapLevel
	mov	r0, #0	@,
	ldr	lr, [r3, r1, asl #2]	@ tmp233, CapItem
	movw	r1, #:lower16:.LC91	@,
	ldr	r3, [r3, ip, asl #2]	@ tmp227, CapItem
	movt	r1, #:upper16:.LC91	@,
	str	lr, [sp, #0]	@ tmp233,
	ldr	lr, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	lr, [sp, #4]	@ <variable>.stInstCfg.s32DecFsWidth,
	ldr	ip, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [sp, #8]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1143:
	ldr	r2, [r4, #72]	@ D.35753, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.35753,
	beq	.L1191	@,
	ldrb	r8, [r4, #44]	@ zero_extendqisi2	@ prephitmp.2558, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r8, #0	@ prephitmp.2558,
	beq	.L1144	@,
	ldr	r0, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r0	@ D.35751, <variable>.stInstCfg.s32DecFsHeight
	beq	.L1203	@,
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1150:
	ldrb	r8, [r4, #49]	@ zero_extendqisi2	@ prephitmp.2561, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r8, [r4, #21]	@ prephitmp.2561, <variable>.s32DecFsNum
	b	.L1151	@
.L1177:
	str	r3, [r6, #0]	@ tmp503, <variable>.PhyFsID
	add	r8, r4, r5	@ D.40399, D.35717, tmp509
	add	r8, r8, #31744	@ tmp552, D.40399,
	ldr	sl, [fp, #-664]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	b	.L1194	@
.L1154:
	ldrsb	r2, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	sub	r5, fp, #44	@,,
	movw	r1, #38020	@ tmp321,
	mov	r0, #0	@ tmp322,
	mov	r3, #1	@ tmp319,
	str	r0, [r4, r1]	@ tmp322, <variable>.PhyFsID
	add	ip, r5, r2, asl #2	@, tmp328,, <variable>.s32DecFsNum,
	strb	r3, [r4, #23]	@ tmp319, <variable>.s32TfFsNum
	movw	r9, #38028	@ tmp323,
	ldr	r5, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [ip, #-620]	@ tmp330, MemArrange.FrameAddr
	movw	r3, #38040	@ tmp333,
	ldr	ip, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [r4, r9]	@ tmp330, <variable>.PhyAddr
	movw	r9, #38044	@ tmp335,
	ldr	r1, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r3]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r3, #38036	@ tmp331,
	str	ip, [r4, r9]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r1, [r4, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r1, #38048	@ tmp337,
	ldr	r9, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r3, [r4, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	r9, [r4, r1]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	r9, #38052	@ tmp339,
	ldr	ip, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r1, #38016	@ tmp343,
	cmp	r3, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, r9]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #38017	@ tmp346,
	ldr	r9, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r0, [r4, r1]	@ tmp322, <variable>.IsDecRef
	movw	r1, #38056	@ tmp341,
	strb	r0, [r4, ip]	@ tmp322, <variable>.IsTfRef
	movw	ip, #38018	@ tmp349,
	str	r9, [r4, r1]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r0, [r4, ip]	@ tmp322, <variable>.DispState
	bne	.L1156	@,
	mov	r9, r3	@ prephitmp.2567, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #22]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L1158:
	add	r0, r4, #34816	@ tmp355, D.35717,
	mov	r2, #0	@ ivtmp.2621,
	add	sl, r0, #156	@ ivtmp.2631, tmp355,
	add	r8, r0, #132	@ ivtmp.2619, tmp355,
	add	r7, r0, #140	@ ivtmp.2625, tmp355,
	add	r6, r0, #148	@ ivtmp.2627, tmp355,
	add	r5, r0, #152	@ ivtmp.2629, tmp355,
	mov	r3, r2	@ i.2719, ivtmp.2621
	mov	ip, r2	@ tmp501, ivtmp.2621
	b	.L1157	@
.L1205:
	str	r3, [r8, #0]	@ i.2719, <variable>.PhyFsID
	ldrsb	r1, [r4, #23]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r9, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r1, r3, r1	@ tmp374, i.2719, <variable>.s32TfFsNum
	add	r1, r1, r9	@ tmp375, tmp374, <variable>.s32DecFsNum
	sub	r9, fp, #44	@,,
	add	r1, r9, r1, asl #2	@, tmp379,, tmp375,
	ldr	r1, [r1, #-620]	@ tmp381, MemArrange.FrameAddr
	str	r1, [r7, #0]	@ tmp381, <variable>.PhyAddr
	ldr	r1, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r1, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r1, [r5, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r1, [sl, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r1, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r0, #160]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r1, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r0, #164]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r1, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	ip, [r0, #130]	@ tmp501, <variable>.DispState
	strb	ip, [r0, #128]	@ tmp501, <variable>.IsDecRef
	str	r1, [r0, #168]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	ip, [r0, #129]	@ tmp501, <variable>.IsTfRef
.L1160:
	add	r3, r3, #1	@ i.2719, i.2719,
	add	r8, r8, #48	@ ivtmp.2619, ivtmp.2619,
	cmp	r3, #64	@ i.2719,
	add	r2, r2, #48	@ ivtmp.2621, ivtmp.2621,
	add	r7, r7, #48	@ ivtmp.2625, ivtmp.2625,
	add	r6, r6, #48	@ ivtmp.2627, ivtmp.2627,
	add	r5, r5, #48	@ ivtmp.2629, ivtmp.2629,
	add	sl, sl, #48	@ ivtmp.2631, ivtmp.2631,
	beq	.L1204	@,
	ldrsb	r9, [r4, #22]	@ prephitmp.2567, <variable>.s32DispFsNum
.L1157:
	add	r0, r4, r2	@ D.40315, D.35717, ivtmp.2621
	cmp	r3, r9	@ i.2719, prephitmp.2567
	add	r0, r0, #34816	@ tmp386, D.40315,
	mov	r1, r0	@ tmp420, tmp386
	blt	.L1205	@,
	str	ip, [r8, #0]	@ tmp501, <variable>.PhyFsID
	ldrsb	r9, [r4, #23]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r0, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r9, r0	@ tmp409, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	sub	r9, fp, #44	@,,
	add	r0, r9, r0, asl #2	@, tmp413,, tmp409,
	ldr	r0, [r0, #-620]	@ tmp415, MemArrange.FrameAddr
	str	r0, [r7, #0]	@ tmp415, <variable>.PhyAddr
	ldr	r0, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r0, [r4, #72]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r0, [r5, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r4, #76]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [sl, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r0, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r1, #160]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [r1, #164]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	ip, [r1, #130]	@ tmp501, <variable>.DispState
	strb	ip, [r1, #128]	@ tmp501, <variable>.IsDecRef
	str	r0, [r1, #168]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	ip, [r1, #129]	@ tmp501, <variable>.IsTfRef
	b	.L1160	@
.L1204:
	ldr	ip, [fp, #-48]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r5, r4, #37888	@ ivtmp.2601, D.35717,
	add	r2, r5, #236	@ ivtmp.2601, ivtmp.2601,
	sub	r5, fp, #672	@,,
	cmp	ip, #20	@ MemArrange.ValidPMVNum,
	movge	ip, #20	@ tmp440,
	mov	r0, #0	@ tmp500,
	add	r1, r5, #4	@ ivtmp.2665,,
	uxtb	sl, ip	@ prephitmp.2740, tmp440
	strb	sl, [r4, #0]	@ prephitmp.2740, <variable>.s32PmvNum
	ldr	r3, [fp, #-132]	@ tmp538, MemArrange.PMVAddr
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ prephitmp.2740, <variable>.s32PmvNum
	strb	r0, [r4, #1]	@ tmp500, <variable>.IsPmvInUse
	str	r3, [r2, #0]	@ tmp538, <variable>.PmvAddr
	add	r2, r2, #4	@ ivtmp.2601, ivtmp.2601,
	mov	r3, #1	@ i.2741,
	b	.L1165	@
.L1206:
	ldr	sl, [r1, #540]	@ tmp544, MemArrange.PMVAddr
	add	r5, r4, r3	@ tmp545, D.35717, tmp504
	strb	r0, [r5, #1]	@ tmp500, <variable>.IsPmvInUse
	str	sl, [r2, #0]	@ tmp544, <variable>.PmvAddr
.L1187:
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ prephitmp.2740, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2741, tmp504,
	add	r1, r1, #4	@ ivtmp.2665, tmp505,
	add	r2, r2, #4	@ ivtmp.2601, tmp506,
.L1165:
	sxtb	r5, ip	@ prephitmp.2740, prephitmp.2740
	add	sl, r4, r3	@ tmp446, D.35717, i.2741
	cmp	r5, r3	@ prephitmp.2740, i.2741
	add	r3, r3, #1	@ tmp504, i.2741,
	mov	ip, sl	@ tmp450, tmp446
	add	r5, r4, r3	@ tmp542, D.35717, tmp504
	ldrgt	ip, [r1, #540]	@ tmp445, MemArrange.PMVAddr
	add	r1, r1, #4	@ tmp505, ivtmp.2665,
	ldrle	sl, [fp, #-132]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strgtb	r0, [sl, #1]	@ tmp500, <variable>.IsPmvInUse
	strgt	ip, [r2, #0]	@ tmp445, <variable>.PmvAddr
	strle	sl, [r2, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r2, r2, #4	@ tmp506, ivtmp.2601,
	strleb	r0, [ip, #1]	@ tmp500, <variable>.IsPmvInUse
	cmp	r3, #20	@ tmp504,
	beq	.L1164	@,
	ldrsb	sl, [r4, #0]	@ prephitmp.2740, <variable>.s32PmvNum
	cmp	sl, r3	@ prephitmp.2740, tmp504
	bgt	.L1206	@,
	ldr	ip, [fp, #-132]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	r0, [r5, #1]	@ tmp500, <variable>.IsPmvInUse
	str	ip, [r2, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L1187	@
.L1164:
	movw	sl, #31884	@ tmp458,
	ldr	ip, [fp, #-52]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r4, sl]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #38120	@ tmp453,
	movw	r5, #31836	@ tmp457,
	movw	r2, #31828	@ tmp455,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp456,
	str	r1, [r4, r5]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	sl, #31844	@ tmp460,
	str	r3, [r4, r2]	@ tmp456, <variable>.stDummyPhyFs.PhyFsID
	movw	ip, #31848	@ tmp462,
	ldr	r0, [fp, #-672]	@ MemArrange.VahbStride, MemArrange.VahbStride
	movw	r5, #31852	@ tmp464,
	ldr	r2, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r4, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r4, sl]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r0, #31856	@ tmp466,
	str	r2, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	str	r1, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r5, [fp, #-408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	sl, [r4, #28]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r5, [r4, r0]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r0, #31860	@ tmp468,
	ldr	ip, [fp, #-404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	cmp	r2, sl	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	movw	sl, #31826	@ tmp478,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	r0, #31824	@ tmp472,
	ldr	ip, [fp, #-400]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, sl]	@ tmp456, <variable>.stDummyPhyFs.DispState
	movw	sl, #31864	@ tmp470,
	strb	r3, [r4, r0]	@ tmp456, <variable>.stDummyPhyFs.IsDecRef
	movw	r0, #31825	@ tmp475,
	str	ip, [r4, sl]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp456, <variable>.stDummyPhyFs.IsTfRef
	beq	.L1184	@,
.L1193:
	ldrsb	r3, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L1166:
	movw	sl, #31932	@ tmp488,
	movw	r0, #31884	@ tmp489,
	ldr	ip, [r4, sl]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	sl, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, #28]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	str	r1, [r4, #32]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	rsb	r2, sl, ip	@ tmp492, <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #36]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r2, [r4, #40]	@ tmp492, <variable>.stPreInfo.s32PreDecSlotLen
.L1167:
	ldr	r1, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.35715,
	ldr	sl, [fp, #-684]	@, %sfp
	str	r1, [sl, #0]	@ MemArrange.TotalMemUsed,
	b	.L1136	@
.L1184:
	ldr	r0, [r4, #32]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r1, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L1193	@,
	ldrsb	r3, [r4, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	ip, [r4, #36]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	r3, ip	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L1166	@,
	b	.L1167	@
.L1156:
	ldr	r9, [fp, #-396]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #51]	@ D.35803, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r3, r9, #1	@ tmp361, MemArrange.ValidFrameNum,
	rsb	r1, r2, r3	@ tmp360, <variable>.s32DecFsNum, tmp361
	cmp	r1, #25	@ tmp360,
	movlt	r9, r1	@ tmp523, tmp360
	movge	r9, #25	@ tmp523,
	uxtb	r2, r9	@ prephitmp.2567, tmp523
	strb	r2, [r4, #22]	@ prephitmp.2567, <variable>.s32DispFsNum
	sxtb	r9, r2	@ prephitmp.2567, prephitmp.2567
	cmp	r9, ip	@ prephitmp.2567, D.35803
	bge	.L1158	@,
	ldrsb	r3, [r4, #49]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, r9	@, prephitmp.2567
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	str	ip, [sp, #0]	@ D.35803,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1147:
	ldr	ip, [fp, #-396]	@ prephitmp.2560, MemArrange.ValidFrameNum
	mvn	r2, #0	@ Ret.2697,
.L1149:
	mov	r3, r8	@, MinFsNum
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	str	ip, [sp, #0]	@ prephitmp.2560,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1197:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #602	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1202:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1198:
	mov	r0, r4	@, D.35717
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #603	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
.L1203:
	ldr	lr, [r4, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, lr	@ D.35753, <variable>.stInstCfg.s32DecFsWidth
	beq	.L1144	@,
	mvn	r0, #0	@ D.35715,
	b	.L1136	@
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
.LFB1372:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r0	@ InstID, InstID
	mov	sl, r1	@ pstVoQue, pstVoQue
	bhi	.L1227	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L1228	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp151,
	movt	r4, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r0, [r4, r0, asl #2]	@ tmp152, s_pFspInst
	cmp	r0, #0	@ tmp152,
	beq	.L1229	@,
	sub	r0, fp, #48	@,,
	bl	OSAL_LockIRQ	@
	movw	r3, #56800	@ tmp160,
	mul	r3, r3, r6	@ tmp159, tmp160, InstID
	add	r0, r3, r4	@ tmp161, tmp159, tmp151
	ldr	r2, [r0, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	beq	.L1230	@,
	ldr	r9, [r4, r6, asl #2]	@ pstInst, s_pFspInst
	mov	r4, #0	@ i.2808,
	mov	r7, r9	@ ivtmp.2798, pstInst
	b	.L1217	@
.L1216:
	rsb	r4, r5, r5, asl #5	@, tmp207, tmp192, tmp192,
	mov	r0, r6	@, InstID
	ldr	r1, [r8, #264]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	add	r1, r9, r4, asl #4	@, tmp209, pstInst, tmp207,
	mov	r0, sl	@, pstVoQue
	add	r1, r1, #88	@, tmp209,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L1231	@,
	add	r4, r5, #1	@ i.2808, tmp192,
	add	r7, r8, #496	@ ivtmp.2798, tmp193,
	cmp	r4, #64	@ i.2808,
	beq	.L1215	@,
.L1217:
	ldr	r1, [r7, #264]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r6	@, InstID
	add	r8, r7, #496	@ tmp193, ivtmp.2798,
	bl	FSP_SetRef	@
	rsb	r3, r4, r4, asl #5	@, tmp180, i.2808, i.2808,
	mov	r0, sl	@, pstVoQue
	add	r5, r4, #1	@ tmp192, i.2808,
	add	r2, r9, r3, asl #4	@, tmp182, pstInst, tmp180,
	add	r1, r2, #88	@, tmp182,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L1216	@,
	ldr	r1, [r7, #264]	@, <variable>.stDispImg.image_id
	mov	r0, r6	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L1216	@
.L1231:
	mov	r2, #0	@,
	mov	r0, r6	@, InstID
	ldr	r1, [r8, #264]	@, <variable>.stDispImg.image_id
	add	r4, r5, #1	@ i.2808, tmp192,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i.2808,
	add	r7, r8, #496	@ ivtmp.2798, tmp193,
	bne	.L1217	@,
.L1215:
	sub	r0, fp, #48	@,,
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.35636,
.L1209:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1230:
	add	r9, r4, #64	@ tmp165, tmp151,
	mov	r4, #0	@ i,
	add	r9, r9, r3	@ pstTreeInst, tmp165, tmp159
	mov	r7, r9	@ ivtmp.2790, pstTreeInst
	b	.L1214	@
.L1213:
	mov	r0, r6	@, InstID
	ldr	r1, [r8, #336]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	rsb	ip, r5, r5, asl #5	@, tmp198, tmp190, tmp190,
	mov	r0, sl	@, pstVoQue
	add	r7, r9, ip, asl #4	@, tmp200, pstTreeInst, tmp198,
	add	r1, r7, #160	@, tmp200,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L1232	@,
.L1221:
	add	r4, r5, #1	@ i, tmp190,
	add	r7, r8, #496	@ ivtmp.2790, tmp191,
	cmp	r4, #64	@ i,
	beq	.L1215	@,
.L1214:
	add	r5, r4, #1	@ tmp190, i,
	rsb	r4, r4, r4, asl #5	@, tmp171, i, i,
	ldr	r1, [r7, #336]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r6	@, InstID
	add	r8, r7, #496	@ tmp191, ivtmp.2790,
	bl	FSP_SetRef	@
	add	r1, r9, r4, asl #4	@, tmp173, pstTreeInst, tmp171,
	mov	r0, sl	@, pstVoQue
	add	r1, r1, #160	@, tmp173,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L1213	@,
	ldr	r1, [r7, #336]	@, <variable>.stDispImg.image_id
	mov	r0, r6	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L1213	@
.L1232:
	mov	r2, #0	@,
	mov	r0, r6	@, InstID
	ldr	r1, [r8, #336]	@, <variable>.stDispImg.image_id
	bl	FSP_SetDisplay	@
	b	.L1221	@
.L1227:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #488	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35636,
	b	.L1209	@
.L1229:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #490	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35636,
	b	.L1209	@
.L1228:
	mov	r0, r1	@, pstVoQue
	movw	r2, #489	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35636,
	b	.L1209	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
.LFB1371:
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
	cmp	r0, #15	@ InstID,
	mov	sl, r0	@ InstID, InstID
	bhi	.L1303	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp172,
	movt	r6, #:upper16:.LANCHOR0	@ tmp172,
	ldr	r0, [r6, r0, asl #2]	@ tmp173, s_pFspInst
	cmp	r0, #0	@ tmp173,
	beq	.L1304	@,
	sub	r0, fp, #48	@,,
	bl	OSAL_LockIRQ	@
	movw	r3, #56800	@ tmp181,
	mul	r3, r3, sl	@ tmp180, tmp181, InstID
	add	r2, r3, r6	@ tmp182, tmp180, tmp172
	ldr	r5, [r2, #176]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L1305	@,
	ldr	r7, [r6, sl, asl #2]	@ pstInst, s_pFspInst
	mov	r1, #31744	@,
	add	r0, r7, #80	@, pstInst,
	bl	__memzero	@
	ldrsb	r2, [r7, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	ble	.L1249	@,
	movw	r8, #:lower16:.LANCHOR2	@ tmp264,
	movt	r8, #:upper16:.LANCHOR2	@ tmp264,
	add	r6, r7, #31744	@ ivtmp.2883, pstInst,
	mov	r5, #0	@ i.2891,
	add	r4, r6, #172	@ ivtmp.2883, ivtmp.2883,
	mov	r9, r8	@ tmp265, tmp264
	mov	r6, r5	@ tmp267, i.2891
	b	.L1254	@
.L1252:
	mov	r0, sl	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.38144
.L1251:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L1250	@,
	ldr	r3, [r8, #-3996]	@ D.38150, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ temp.2889, <variable>.PhyAddr
	cmp	r3, #0	@ D.38150,
	beq	.L1306	@,
	mov	r0, sl	@, InstID
	blx	r3	@ D.38150
.L1250:
	strb	r6, [r4, #-44]	@ tmp267, <variable>.IsDecRef
	add	r5, r5, #1	@ i.2891, i.2891,
	strb	r6, [r4, #-42]	@ tmp267, <variable>.DispState
	str	r6, [r4], #48	@ tmp267, <variable>.u32Tick
	ldrsb	lr, [r7, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, r5	@ <variable>.s32DecFsNum, i.2891
	ble	.L1249	@,
.L1254:
	ldr	r1, [r4, #-32]	@ D.35598, <variable>.PhyAddr
	cmp	r1, #0	@ D.35598,
	beq	.L1250	@,
	ldr	r0, [r8, #-4008]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L1250	@,
	ldrsb	r3, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #0	@ <variable>.IsDecRef,
	beq	.L1251	@,
	ldr	r3, [r9, #-3992]	@ D.38144, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.38144,
	bne	.L1252	@,
	mov	r0, r3	@, D.38144
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L1251	@
.L1306:
	mov	r0, r3	@, D.38150
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	add	r5, r5, #1	@ i.2891, i.2891,
	bl	dprint_vfmw	@
	strb	r6, [r4, #-44]	@ tmp267, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp267, <variable>.DispState
	str	r6, [r4], #48	@ tmp267, <variable>.u32Tick
	ldrsb	lr, [r7, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, r5	@ <variable>.s32DecFsNum, i.2891
	bgt	.L1254	@,
.L1249:
	ldrsb	ip, [r7, #22]	@ D.35613, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.35613,
	ble	.L1255	@,
	add	lr, r7, #34816	@ tmp241, pstInst,
	cmp	ip, #1	@ D.35613,
	add	r1, lr, #172	@ ivtmp.2875, tmp241,
	sub	r2, ip, #1	@ tmp298, D.35613,
	mov	r3, #0	@ tmp263,
	and	r4, r2, #1	@ tmp300, tmp298,
	str	r3, [r1, #0]	@ tmp263, <variable>.u32Tick
	mov	r0, #1	@ i.2892,
	strb	r3, [r1, #-44]	@ tmp263, <variable>.IsDecRef
	add	r2, lr, #220	@ ivtmp.2875, tmp241,
	strb	r3, [r1, #-42]	@ tmp263, <variable>.DispState
	ble	.L1255	@,
	cmp	r4, #0	@ tmp300,
	beq	.L1256	@,
	mov	r0, #2	@ i.2892,
	cmp	ip, r0	@ D.35613, i.2892
	str	r3, [r2, #0]	@ tmp263, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp263, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp263, <variable>.DispState
	add	r2, lr, #268	@ ivtmp.2875, tmp241,
	ble	.L1255	@,
.L1256:
	add	r0, r0, #2	@ i.2892, i.2892,
	mov	lr, r2	@ tmp302, ivtmp.2875
	cmp	ip, r0	@ D.35613, i.2892
	str	r3, [lr], #48	@ tmp263, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp263, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp263, <variable>.DispState
	str	r3, [r2, #48]	@ tmp263, <variable>.u32Tick
	add	r2, r2, #96	@ ivtmp.2875, ivtmp.2875,
	strb	r3, [lr, #-42]	@ tmp263, <variable>.DispState
	strb	r3, [lr, #-44]	@ tmp263, <variable>.IsDecRef
	bgt	.L1256	@,
.L1255:
	ldrsb	ip, [r7, #0]	@ D.35615, <variable>.s32PmvNum
	cmp	ip, #0	@ D.35615,
	ble	.L1257	@,
	cmp	ip, #1	@ D.35615,
	sub	r0, ip, #1	@ tmp294, D.35615,
	mov	r1, #0	@ tmp262,
	and	r2, r0, #1	@ tmp296, tmp294,
	strb	r1, [r7, #1]	@ tmp262, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2893,
	ble	.L1257	@,
	cmp	r2, #0	@ tmp296,
	beq	.L1258	@,
	add	r2, r7, #1	@ tmp350, pstInst,
	mov	r3, #2	@ i.2893,
	cmp	ip, r3	@ D.35615, i.2893
	strb	r1, [r2, #1]	@ tmp262, <variable>.IsPmvInUse
	ble	.L1257	@,
.L1258:
	add	r0, r3, #1	@ tmp297, i.2893,
	add	lr, r7, r3	@ tmp340, pstInst, i.2893
	add	r3, r0, #1	@ i.2893, tmp297,
	add	r2, r7, r0	@ tmp343, pstInst, tmp297
	cmp	ip, r3	@ D.35615, i.2893
	strb	r1, [lr, #1]	@ tmp262, <variable>.IsPmvInUse
	strb	r1, [r2, #1]	@ tmp262, <variable>.IsPmvInUse
	bgt	.L1258	@,
.L1257:
	movw	r3, #38116	@ tmp251,
	mov	ip, #0	@ tmp252,
	str	ip, [r7, r3]	@ tmp252, <variable>.u32InstTick
.L1248:
	sub	r0, fp, #48	@,,
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.35572,
.L1235:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1305:
	add	r4, r6, #64	@ tmp186, tmp172,
	mov	r1, #31744	@,
	add	r4, r4, r3	@ pstTreeInst, tmp186, tmp180
	add	r0, r4, #152	@, pstTreeInst,
	bl	__memzero	@
	movw	r1, #31980	@ tmp190,
	ldr	r0, [r4, r1]	@ D.35587, <variable>.stTreeHD_1.s32DecFsNum
	cmp	r0, #0	@ D.35587,
	ble	.L1238	@,
	add	r1, r4, #32000	@ tmp191, pstTreeInst,
	cmp	r5, r0	@ i, D.35587
	add	ip, r1, #80	@ ivtmp.2864, tmp191,
	sub	lr, r0, #1	@ tmp289, D.35587,
	mov	r3, #0	@ tmp261,
	and	lr, lr, #1	@ tmp291, tmp289,
	str	r3, [ip, #0]	@ tmp261, <variable>.u32Tick
	add	r2, r1, #128	@ ivtmp.2864, tmp191,
	strb	r3, [ip, #-44]	@ tmp261, <variable>.IsDecRef
	strb	r3, [ip, #-42]	@ tmp261, <variable>.DispState
	bge	.L1238	@,
	cmp	lr, #0	@ tmp291,
	beq	.L1239	@,
	mov	r5, #2	@ i,
	cmp	r5, r0	@ i, D.35587
	str	r3, [r2, #0]	@ tmp261, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp261, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp261, <variable>.DispState
	add	r2, r1, #176	@ ivtmp.2864, tmp191,
	bge	.L1238	@,
.L1239:
	add	r5, r5, #2	@ i, i,
	mov	r1, r2	@ tmp293, ivtmp.2864
	cmp	r5, r0	@ i, D.35587
	str	r3, [r1], #48	@ tmp261, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp261, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp261, <variable>.DispState
	str	r3, [r2, #48]	@ tmp261, <variable>.u32Tick
	add	r2, r2, #96	@ ivtmp.2864, ivtmp.2864,
	strb	r3, [r1, #-42]	@ tmp261, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp261, <variable>.IsDecRef
	blt	.L1239	@,
.L1238:
	movw	r0, #44372	@ tmp197,
	ldr	ip, [r4, r0]	@ D.35588, <variable>.stTreeHD_2.s32DecFsNum
	cmp	ip, #0	@ D.35588,
	ble	.L1240	@,
	add	r1, r4, #44288	@ tmp198, pstTreeInst,
	mov	r0, #1	@ i.2885,
	add	lr, r1, #184	@ ivtmp.2857, tmp198,
	cmp	r0, ip	@ i.2885, D.35588
	sub	r5, ip, #1	@ tmp284, D.35588,
	mov	r3, #0	@ tmp260,
	and	r5, r5, r0	@ tmp286, tmp284,
	str	r3, [lr, #0]	@ tmp260, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp260, <variable>.IsDecRef
	add	r2, r1, #232	@ ivtmp.2857, tmp198,
	strb	r3, [lr, #-42]	@ tmp260, <variable>.DispState
	bge	.L1240	@,
	cmp	r5, #0	@ tmp286,
	beq	.L1241	@,
	mov	r0, #2	@ i.2885,
	cmp	r0, ip	@ i.2885, D.35588
	str	r3, [r2, #0]	@ tmp260, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp260, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp260, <variable>.DispState
	add	r2, r1, #280	@ ivtmp.2857, tmp198,
	bge	.L1240	@,
.L1241:
	add	r0, r0, #2	@ i.2885, i.2885,
	mov	r1, r2	@ tmp288, ivtmp.2857
	cmp	r0, ip	@ i.2885, D.35588
	str	r3, [r1], #48	@ tmp260, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp260, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp260, <variable>.DispState
	str	r3, [r2, #48]	@ tmp260, <variable>.u32Tick
	add	r2, r2, #96	@ ivtmp.2857, ivtmp.2857,
	strb	r3, [r1, #-42]	@ tmp260, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp260, <variable>.IsDecRef
	blt	.L1241	@,
.L1240:
	movw	r2, #31984	@ tmp204,
	ldr	ip, [r4, r2]	@ D.35589, <variable>.stTreeHD_1.s32DispFsNum
	cmp	ip, #0	@ D.35589,
	ble	.L1242	@,
	add	r1, r4, #38144	@ tmp205, pstTreeInst,
	mov	r0, #1	@ i.2886,
	add	lr, r1, #80	@ ivtmp.2850, tmp205,
	cmp	r0, ip	@ i.2886, D.35589
	sub	r5, ip, #1	@ tmp279, D.35589,
	mov	r3, #0	@ tmp259,
	and	r5, r5, r0	@ tmp281, tmp279,
	str	r3, [lr, #0]	@ tmp259, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp259, <variable>.IsDecRef
	add	r2, r1, #128	@ ivtmp.2850, tmp205,
	strb	r3, [lr, #-42]	@ tmp259, <variable>.DispState
	bge	.L1242	@,
	cmp	r5, #0	@ tmp281,
	beq	.L1243	@,
	mov	r0, #2	@ i.2886,
	cmp	r0, ip	@ i.2886, D.35589
	str	r3, [r2, #0]	@ tmp259, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp259, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp259, <variable>.DispState
	add	r2, r1, #176	@ ivtmp.2850, tmp205,
	bge	.L1242	@,
.L1243:
	add	r0, r0, #2	@ i.2886, i.2886,
	mov	r1, r2	@ tmp283, ivtmp.2850
	cmp	r0, ip	@ i.2886, D.35589
	str	r3, [r1], #48	@ tmp259, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp259, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp259, <variable>.DispState
	str	r3, [r2, #48]	@ tmp259, <variable>.u32Tick
	add	r2, r2, #96	@ ivtmp.2850, ivtmp.2850,
	strb	r3, [r1, #-42]	@ tmp259, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp259, <variable>.IsDecRef
	blt	.L1243	@,
.L1242:
	movw	r3, #44376	@ tmp211,
	ldr	ip, [r4, r3]	@ D.35590, <variable>.stTreeHD_2.s32DispFsNum
	cmp	ip, #0	@ D.35590,
	ble	.L1244	@,
	add	r1, r4, #50432	@ tmp212, pstTreeInst,
	mov	r0, #1	@ i.2887,
	add	lr, r1, #184	@ ivtmp.2843, tmp212,
	cmp	r0, ip	@ i.2887, D.35590
	sub	r2, ip, #1	@ tmp274, D.35590,
	mov	r3, #0	@ tmp258,
	and	r5, r2, r0	@ tmp276, tmp274,
	str	r3, [lr, #0]	@ tmp258, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp258, <variable>.IsDecRef
	add	r2, r1, #232	@ ivtmp.2843, tmp212,
	strb	r3, [lr, #-42]	@ tmp258, <variable>.DispState
	bge	.L1244	@,
	cmp	r5, #0	@ tmp276,
	beq	.L1245	@,
	mov	r0, #2	@ i.2887,
	cmp	r0, ip	@ i.2887, D.35590
	str	r3, [r2, #0]	@ tmp258, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp258, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp258, <variable>.DispState
	add	r2, r1, #280	@ ivtmp.2843, tmp212,
	bge	.L1244	@,
.L1245:
	add	r0, r0, #2	@ i.2887, i.2887,
	mov	r1, r2	@ tmp278, ivtmp.2843
	cmp	r0, ip	@ i.2887, D.35590
	str	r3, [r1], #48	@ tmp258, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp258, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp258, <variable>.DispState
	str	r3, [r2, #48]	@ tmp258, <variable>.u32Tick
	add	r2, r2, #96	@ ivtmp.2843, ivtmp.2843,
	strb	r3, [r1, #-42]	@ tmp258, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp258, <variable>.IsDecRef
	blt	.L1245	@,
.L1244:
	movw	r0, #31896	@ tmp218,
	ldr	ip, [r4, r0]	@ D.35591, <variable>.stTreePMV.s32PmvNum
	cmp	ip, #0	@ D.35591,
	ble	.L1246	@,
	mov	r2, #1	@ i.2888,
	cmp	r2, ip	@ i.2888, D.35591
	sub	r3, ip, #1	@ tmp269, D.35591,
	mov	r0, #0	@ tmp257,
	and	r1, r3, r2	@ tmp271, tmp269,
	strb	r0, [r4, #28]	@ tmp257, <variable>.IsPmvInUse
	add	r3, r4, r2	@ ivtmp.2836, pstTreeInst,
	bge	.L1246	@,
	cmp	r1, #0	@ tmp271,
	beq	.L1247	@,
	mov	r2, #2	@ i.2888,
	cmp	r2, ip	@ i.2888, D.35591
	strb	r0, [r3, #28]	@ tmp257, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.2836, ivtmp.2836,
	bge	.L1246	@,
.L1247:
	add	r2, r2, #2	@ i.2888, i.2888,
	add	lr, r3, #1	@ tmp273, ivtmp.2836,
	cmp	r2, ip	@ i.2888, D.35591
	strb	r0, [r3, #28]	@ tmp257, <variable>.IsPmvInUse
	strb	r0, [lr, #28]	@ tmp257, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.2836, tmp273,
	blt	.L1247	@,
.L1246:
	mov	ip, #0	@ tmp221,
	str	ip, [r4, #4]	@ tmp221, <variable>.u32InstTick
	b	.L1248	@
.L1303:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #373	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35572,
	b	.L1235	@
.L1304:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #374	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35572,
	b	.L1235	@
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.global	g_pstTreeFsp
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
	.section	.rodata
	.align	2
.LANCHOR3 = . + 0
	.type	__func__.36404, %object
	.size	__func__.36404, 11
__func__.36404:
	.ascii	"FSP_SetRef\000"
	.data
	.align	2
	.type	g_pstTreeFsp, %object
	.size	g_pstTreeFsp, 4
g_pstTreeFsp:
	.word	s_TreeFspInst
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"fsp.c,L%d: %s\012\000"
	.space	1
.LC1:
	.ascii	"InstID out of range\000"
.LC2:
	.ascii	"LevelID invalid\000"
.LC3:
	.ascii	"FsID out of range\000"
	.space	2
.LC4:
	.ascii	"Flag invalid\000"
	.space	3
.LC5:
	.ascii	"line: %d\012\000"
	.space	2
.LC6:
	.ascii	"Tree_FSP_PartitionFsMemory failed L%d: unsupport fo"
	.ascii	"rmat(width: %d, height: %d)\012\000"
.LC7:
	.ascii	"Tree_FSP_PartitionFsMemory L(%d): unkown LevelID(%d"
	.ascii	")\012\000"
	.space	2
.LC8:
	.ascii	"Tree_FSP_PartitionFsMemory L(%d): unkown CurLevelID"
	.ascii	"(%d)\012\000"
	.space	3
.LC9:
	.ascii	"Tree_FSP_InitInstance failed L%d: VDMHAL_ArrangeMem"
	.ascii	" return %d\012\000"
	.space	1
.LC10:
	.ascii	"fsp is not inited\000"
	.space	2
.LC11:
	.ascii	"p_image NULL\000"
	.space	3
.LC12:
	.ascii	"Flag Invalid\000"
	.space	3
.LC13:
	.ascii	"PmvAddrTab is NULL\012\000"
.LC14:
	.ascii	"PmvNum is NULL\012\000"
.LC15:
	.ascii	"DecFsAddrTab is NULL\012\000"
	.space	2
.LC16:
	.ascii	"DecFsNum is NULL\012\000"
	.space	2
.LC17:
	.ascii	"FSP_GetDecFsAddrTab L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC18:
	.ascii	"FSP_SetStoreType L(%d): unkown LevelID(%d)\012\000"
.LC19:
	.ascii	"LogicFrameID out of range\000"
	.space	2
.LC20:
	.ascii	"%s : AllocFrame func null\012\000"
	.space	1
.LC21:
	.ascii	"%s %d pstInst is null!!\012\000"
	.space	3
.LC22:
	.ascii	"fsp.c, line %d: pstLogicFs->PmvIdc out of range(=%d"
	.ascii	")\012\000"
	.space	2
.LC23:
	.ascii	"PhyAddr is NULL\012\000"
	.space	3
.LC24:
	.ascii	"pFsNum is NULL\012\000"
.LC25:
	.ascii	"FSP_GetDecodeFrameTable L(%d): unkown LevelID(%d)\012"
	.ascii	"\000"
	.space	1
.LC26:
	.ascii	"FSP_UdateInfo ArrangeMem failed!\012\000"
	.space	2
.LC27:
	.ascii	"FSP_IsFsLeak L(%d): unkown LevelID(%d)\012\000"
.LC28:
	.ascii	"FSP_IsFsLeak: fsp is not inited \012\000"
	.space	2
.LC29:
	.ascii	"ref=%d,read=%d,new=%d,total=%d\012\000"
.LC30:
	.ascii	"Tree_FSP_InitInstance InstID out of range\000"
	.space	2
.LC31:
	.ascii	"DecFsNum too large\000"
	.space	1
.LC32:
	.ascii	"DispFsNum too large\000"
.LC33:
	.ascii	"Tree_FSP_InitInstance L%d: fs arrange return failur"
	.ascii	"e\012\000"
	.space	2
.LC34:
	.ascii	"Tree_FSP_InitInstance err, disp fs(=%d) less than 4"
	.ascii	"!\012\000"
	.space	2
.LC35:
	.ascii	"FSP_ResetInstance: can NOT init tree fs\012\000"
	.space	3
.LC36:
	.ascii	"%s : RleaseFrame func null\012\000"
.LC37:
	.ascii	"FSP_PrintContext L(%d): unkown LevelID(%d)\012\000"
.LC38:
	.ascii	"TREE FSP CONTEXT:\012\000"
	.space	1
.LC39:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC40:
	.ascii	"eFspInstState\000"
	.space	2
.LC41:
	.ascii	"s32DispLoopEnable\000"
	.space	2
.LC42:
	.ascii	"s32TfEnable\000"
.LC43:
	.ascii	"s32RprEnable\000"
	.space	3
.LC44:
	.ascii	"s32DecFsWidth\000"
	.space	2
.LC45:
	.ascii	"s32DecFsHeight\000"
	.space	1
.LC46:
	.ascii	"s32DispFsWidth\000"
	.space	1
.LC47:
	.ascii	"s32DispFsHeight\000"
.LC48:
	.ascii	"s32ExpectedDecFsNum\000"
.LC49:
	.ascii	"s32ExpectedTfFsNum\000"
	.space	1
.LC50:
	.ascii	"s32ExpectedDispFsNum\000"
	.space	3
.LC51:
	.ascii	"s32ExpectedPmvNum\000"
	.space	2
.LC52:
	.ascii	"s32DecFsNum\000"
.LC53:
	.ascii	"s32DispFsNum\000"
	.space	3
.LC54:
	.ascii	"s32TfFsNum\000"
	.space	1
.LC55:
	.ascii	"s32PmvNum\000"
	.space	2
.LC56:
	.ascii	"tree logic fs state:\012\000"
	.space	2
.LC57:
	.ascii	"%d%d \000"
	.space	2
.LC58:
	.ascii	"\012\000"
	.space	2
.LC59:
	.ascii	"\012tree dec fs state:\012\000"
	.space	3
.LC60:
	.ascii	"\012tree disp fs state:\012\000"
	.space	2
.LC61:
	.ascii	"\012tree pmv state:\012\000"
	.space	2
.LC62:
	.ascii	"%d \000"
.LC63:
	.ascii	"\012\012\000"
	.space	1
.LC64:
	.ascii	"FSP CONTEXT:\012\000"
	.space	2
.LC65:
	.ascii	"logic fs state:\012\000"
	.space	3
.LC66:
	.ascii	"\012dec fs state:\012\000"
.LC67:
	.ascii	"\012disp fs state:\012\000"
	.space	3
.LC68:
	.ascii	"\012pmv state:\012\000"
	.space	3
.LC69:
	.ascii	"Tree_FSP_NewLogicFs L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC70:
	.ascii	"Tree_FSP_NewLogicFs: no logic frame store!!!\012\000"
	.space	2
.LC71:
	.ascii	"Tree_FSP_NewLogicFs: no decode phy fs\012\000"
	.space	1
.LC72:
	.ascii	"LeastTickPhyFs ID: %d\012\000"
	.space	1
.LC73:
	.ascii	"Tree_FSP_NewLogicFs: no pmv memory\012\000"
.LC74:
	.ascii	"Tree_FSP_NewLogicFs: no display phy fs\012\000"
.LC75:
	.ascii	"Tree_FSP_NewLogicFs: can not find disp fs\012\000"
	.space	1
.LC76:
	.ascii	"RefNum,ReadNum,NewNum,Total = %d,%d,%d,%d\012\000"
	.space	1
.LC77:
	.ascii	"FSP_GetInstInfo L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC78:
	.ascii	"pstFspInstCfg = NULL\000"
	.space	3
.LC79:
	.ascii	"This inst is not active\000"
.LC80:
	.ascii	"FSP_SetDisplay: LogicTick=%d, DispTick=%d!\012\000"
.LC81:
	.ascii	"FSP_NewLogicFs failed!\012\000"
.LC82:
	.ascii	"no logic frame store!!!\012\000"
	.space	3
.LC83:
	.ascii	"no decode phy fs\012\000"
	.space	2
.LC84:
	.ascii	"no pmv memory\012\000"
	.space	1
.LC85:
	.ascii	"no display phy fs\012\000"
	.space	1
.LC86:
	.ascii	"can not find disp fs\012\000"
	.space	2
.LC87:
	.ascii	"FSP_AllocFrame failed\012\000"
	.space	1
.LC88:
	.ascii	"invalid stFrameInfo PhyAddr\012\000"
	.space	3
.LC89:
	.ascii	"Tree_FSP_PartitionFsMemory failed!\012\000"
.LC90:
	.ascii	"eChanCapLevel = %d is not expected!\012\000"
	.space	3
.LC91:
	.ascii	"decode channel CapLevel is %d(w=%d,h=%d), this stre"
	.ascii	"am (w=%d,h=%d) can NOT be decoded!\012\000"
	.space	1
.LC92:
	.ascii	"disp fs(=%d) less than expected(=%d+%d)!\012\000"
	.space	2
.LC93:
	.ascii	"arrange ret %d, min = %d, actual = %d\012\000"
	.space	1
.LC94:
	.ascii	"pstVoQue is NULL\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 965712
.LANCHOR2 = . + 973896
	.type	s_pFspInst, %object
	.size	s_pFspInst, 64
s_pFspInst:
	.space	64
	.type	s_TreeFspInst, %object
	.size	s_TreeFspInst, 965600
s_TreeFspInst:
	.space	965600
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 4224
s_FspVoQue:
	.space	4224
	.type	g_IsFrameIntfValid, %object
	.size	g_IsFrameIntfValid, 4
g_IsFrameIntfValid:
	.space	4
	.type	g_FspFrameIntf, %object
	.size	g_FspFrameIntf, 16
g_FspFrameIntf:
	.space	16
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 12
g_SpinLock_fsp:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
