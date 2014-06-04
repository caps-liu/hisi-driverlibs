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
@ -DKBUILD_BASENAME=KBUILD_STR(fsp) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/fsp.c
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
	cmp	r1, #0	@ PhyNum
	movle	r5, #0	@ LeastFsID,
	ble	.L5	@,
	tst	r1, #1	@ PhyNum,
	mov	r5, #0	@ LeastFsID,
	mvn	ip, #0	@ LeastTick.604,
	mov	r2, r5	@ i, LeastFsID
	bne	.L6	@,
	ldr	r3, [r0, #36]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #40	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #40	@ tmp176, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.604
	mov	ip, r3	@ LeastTick.604, LeastTick
	ldr	r3, [r0, #36]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.604
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp177, i,
	movcs	r3, ip	@ LeastTick, LeastTick.604
	cmp	r2, r1	@ tmp177, PhyNum
	beq	.L5	@,
.L19:
	ldr	ip, [r4, #36]	@ LeastTick, <variable>.u32Tick
	cmp	ip, r3	@ LeastTick, LeastTick
	movcs	ip, r3	@ LeastTick, LeastTick
	movcc	r5, r2	@ LeastFsID, tmp177
.L17:
	add	r2, r2, #1	@ i, tmp177,
	add	r0, r4, #40	@ pstPhyFs, tmp176,
.L6:
	ldr	r3, [r0, #36]	@ LeastTick, <variable>.u32Tick
	add	r4, r0, #40	@ tmp176, pstPhyFs,
	cmp	r3, ip	@ LeastTick, LeastTick.604
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp177, i,
	movcs	r3, ip	@ LeastTick, LeastTick.604
	cmp	r2, r1	@ tmp177, PhyNum
	bne	.L19	@,
.L5:
	mov	r0, r5	@, LeastFsID
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_FirstFsCheck
	.type	FSP_FirstFsCheck, %function
FSP_FirstFsCheck:
	.fnstart
.LFB1363:
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
	add	r2, r0, r0, asl #5	@, tmp148, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp195,
	movt	r3, #:upper16:.LANCHOR0	@ tmp195,
	add	ip, r3, r2, asl #3	@, tmp150, tmp195, tmp148,
	ldrsh	r4, [ip, #2]	@ D.36254, <variable>.history
	cmn	r4, #1	@ D.36254,
	beq	.L21	@,
	ldrh	r6, [ip, #4]	@ i, <variable>.head
	cmp	r6, r4	@ i, D.36254
	beq	.L21	@,
	movw	r5, #35112	@ tmp161,
	movw	r7, #35544	@ tmp179,
	mla	r0, r5, r0, r3	@ tmp162, tmp161, InstID, tmp195
	add	ip, r0, #30208	@ tmp163, tmp162,
	add	r5, ip, #184	@ tmp163, tmp163,
	add	ip, ip, #144	@ tmp169, tmp169,
	ldr	r8, [r0, r7]	@ <variable>.eFspInstState, <variable>.eFspInstState
	ldr	ip, [ip, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r7, [r5, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r8, #1	@ <variable>.eFspInstState,
	ldr	r5, [r0, #568]	@ PreSlotLen, <variable>.stPreInfo.s32PreDecSlotLen
	rsb	r7, ip, r7	@ SlotLen, <variable>.PhyAddr, <variable>.PhyAddr
	beq	.L28	@,
.L22:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L21:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L28:
	and	r0, r6, #63	@ i.628, i,
	cmp	r4, r0	@ D.36254, i.628
	beq	.L22	@,
	mov	r6, r2, asl #1	@ tmp198, tmp148,
	add	r7, r1, r7	@ tmp199, DecPhyAddr, SlotLen
.L27:
	add	r2, r6, r0	@ tmp190, tmp198, i.628
	add	r0, r0, #1	@ i.629, i.628,
	add	ip, r2, #2	@ tmp191, tmp190,
	and	r0, r0, #63	@ i.628, i.629,
	ldr	ip, [r3, ip, asl #2]	@ D.36267, <variable>.Addr
	add	r2, ip, r5	@ tmp192, D.36267, PreSlotLen
	cmp	r2, r1	@ tmp192, DecPhyAddr
	blt	.L23	@,
	cmp	ip, r7	@ D.36267, tmp199
	ble	.L29	@,
.L23:
	cmp	r4, r0	@ D.36254, i.628
	bne	.L27	@,
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L29:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	FSP_FirstFsCheck, .-FSP_FirstFsCheck
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
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
	movw	r3, #40368	@ tmp140,
	mul	r2, r3, r0	@ tmp139, tmp140, InstID
	movw	r3, #:lower16:.LANCHOR1	@ tmp137,
	movt	r3, #:upper16:.LANCHOR1	@ tmp137,
	add	ip, r2, r3	@ tmp141, tmp139, tmp137
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp158,
	moveq	r0, #464	@ tmp148,
	mulne	r0, r3, r0	@ tmp157, tmp158, InstID
	movne	r3, #464	@ tmp156,
	mlaeq	r2, r0, r1, r2	@ tmp151, tmp148, LogicFrameID, tmp139
	ldrne	ip, .L34	@ tmp160,
	mlane	r3, r3, r1, r0	@ tmp159, tmp156, LogicFrameID, tmp157
	addeq	r3, r3, r2	@ tmp152, tmp137, tmp151
	subeq	r3, r3, #376	@ pstLogicFs, tmp152,
	addne	r3, r3, ip	@ pstLogicFs, tmp159, tmp160
	ldrsb	r0, [r3, #0]	@, <variable>.s32IsRef
	ldmfd	sp, {fp, sp, pc}	@
.L35:
	.align	2
.L34:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
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
	movw	r3, #40368	@ tmp140,
	mul	r2, r3, r0	@ tmp139, tmp140, InstID
	movw	r3, #:lower16:.LANCHOR1	@ tmp137,
	movt	r3, #:upper16:.LANCHOR1	@ tmp137,
	add	ip, r2, r3	@ tmp141, tmp139, tmp137
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp158,
	moveq	r0, #464	@ tmp148,
	mulne	r0, r3, r0	@ tmp157, tmp158, InstID
	movne	r3, #464	@ tmp156,
	mlaeq	r2, r0, r1, r2	@ tmp151, tmp148, LogicFrameID, tmp139
	ldrne	ip, .L40	@ tmp160,
	mlane	r3, r3, r1, r0	@ tmp159, tmp156, LogicFrameID, tmp157
	addeq	r3, r3, r2	@ tmp152, tmp137, tmp151
	subeq	r3, r3, #376	@ pstLogicFs, tmp152,
	addne	r3, r3, ip	@ pstLogicFs, tmp159, tmp160
	ldrsb	r0, [r3, #1]	@, <variable>.s32DispState
	ldmfd	sp, {fp, sp, pc}	@
.L41:
	.align	2
.L40:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_GetLogicFs
	.type	FSP_GetLogicFs, %function
FSP_GetLogicFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #1	@, InstID,
	movhi	r3, #0	@, tmp144
	movls	r3, #1	@, tmp144
	movhi	r0, r3	@ pstLogicFs, tmp144
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #40368	@ tmp148,
	movw	r3, #:lower16:.LANCHOR1	@ tmp145,
	mul	r2, r2, r0	@ tmp147, tmp148, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp145,
	add	ip, r2, r3	@ tmp149, tmp147, tmp145
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	beq	.L47	@,
	movw	ip, #35112	@ tmp166,
	mov	r3, #464	@ tmp164,
	mul	r0, ip, r0	@ tmp165, tmp166, InstID
	ldr	r2, .L48	@ tmp168,
	mla	ip, r3, r1, r0	@ tmp167, tmp164, LogicFrameID, tmp165
	add	r0, ip, r2	@ pstLogicFs, tmp167, tmp168
	ldmfd	sp, {fp, sp, pc}	@
.L47:
	mov	r0, #464	@ tmp156,
	mla	r1, r0, r1, r2	@ tmp159, tmp156, LogicFrameID, tmp147
	add	r3, r3, r1	@ tmp160, tmp145, tmp159
	sub	r0, r3, #376	@ pstLogicFs, tmp160,
	ldmfd	sp, {fp, sp, pc}	@
.L49:
	.align	2
.L48:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
	.fnstart
.LFB1374:
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
	cmpls	r0, #1	@, InstID,
	movhi	r3, #0	@, tmp145
	movls	r3, #1	@, tmp145
	movhi	r0, r3	@ D.36863, tmp145
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #40368	@ tmp149,
	movw	r3, #:lower16:.LANCHOR1	@ tmp146,
	mul	r2, r2, r0	@ tmp148, tmp149, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp146,
	add	ip, r2, r3	@ tmp150, tmp148, tmp146
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp167,
	moveq	r0, #464	@ tmp157,
	mulne	r0, r3, r0	@ tmp166, tmp167, InstID
	movne	r3, #464	@ tmp165,
	mlaeq	r0, r0, r1, r2	@ tmp160, tmp157, LogicFrameID, tmp148
	mlane	r0, r3, r1, r0	@ tmp168, tmp165, LogicFrameID, tmp166
	ldrne	r3, .L56	@ tmp169,
	addeq	r0, r3, r0	@ tmp161, tmp146, tmp160
	subeq	r0, r0, #376	@ pstLogicFs, tmp161,
	addne	r0, r0, r3	@ pstLogicFs, tmp168, tmp169
	add	r0, r0, #8	@ D.36863, pstLogicFs,
	ldmfd	sp, {fp, sp, pc}	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDecPhyFs
	.type	FSP_GetDecPhyFs, %function
FSP_GetDecPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #1	@, InstID,
	movhi	r3, #0	@, tmp145
	movls	r3, #1	@, tmp145
	movhi	r0, r3	@ D.36884, tmp145
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #40368	@ tmp149,
	movw	r3, #:lower16:.LANCHOR1	@ tmp146,
	mul	r2, r2, r0	@ tmp148, tmp149, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp146,
	add	ip, r2, r3	@ tmp150, tmp148, tmp146
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp167,
	moveq	r0, #464	@ tmp157,
	mulne	r0, r3, r0	@ tmp166, tmp167, InstID
	movne	r3, #464	@ tmp165,
	mlaeq	r1, r0, r1, r2	@ tmp160, tmp157, LogicFrameID, tmp148
	mlane	r1, r3, r1, r0	@ tmp168, tmp165, LogicFrameID, tmp166
	ldrne	r3, .L64	@ tmp169,
	addeq	r1, r3, r1	@ tmp161, tmp146, tmp160
	subeq	r1, r1, #376	@ pstLogicFs, tmp161,
	addne	r1, r1, r3	@ pstLogicFs, tmp168, tmp169
	ldr	r0, [r1, #440]	@ D.36884, <variable>.pstDecodeFs
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	.align	2
.L64:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetDecPhyFs, .-FSP_GetDecPhyFs
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #1	@, InstID,
	movhi	r3, #0	@, tmp145
	movls	r3, #1	@, tmp145
	movhi	r0, r3	@ D.36905, tmp145
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #40368	@ tmp149,
	movw	r3, #:lower16:.LANCHOR1	@ tmp146,
	mul	r2, r2, r0	@ tmp148, tmp149, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp146,
	add	ip, r2, r3	@ tmp150, tmp148, tmp146
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp167,
	moveq	r0, #464	@ tmp157,
	mulne	r0, r3, r0	@ tmp166, tmp167, InstID
	movne	r3, #464	@ tmp165,
	mlaeq	r1, r0, r1, r2	@ tmp160, tmp157, LogicFrameID, tmp148
	mlane	r1, r3, r1, r0	@ tmp168, tmp165, LogicFrameID, tmp166
	ldrne	r3, .L72	@ tmp169,
	addeq	r1, r3, r1	@ tmp161, tmp146, tmp160
	subeq	r1, r1, #376	@ pstLogicFs, tmp161,
	addne	r1, r1, r3	@ pstLogicFs, tmp168, tmp169
	ldr	r0, [r1, #444]	@ D.36905, <variable>.pstDispOutFs
	ldmfd	sp, {fp, sp, pc}	@
.L73:
	.align	2
.L72:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #1	@, InstID,
	movhi	r3, #0	@, tmp145
	movls	r3, #1	@, tmp145
	movhi	r0, r3	@ D.36926, tmp145
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r2, #40368	@ tmp149,
	movw	r3, #:lower16:.LANCHOR1	@ tmp146,
	mul	r2, r2, r0	@ tmp148, tmp149, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp146,
	add	ip, r2, r3	@ tmp150, tmp148, tmp146
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	movwne	r3, #35112	@ tmp167,
	moveq	r0, #464	@ tmp157,
	mulne	r0, r3, r0	@ tmp166, tmp167, InstID
	movne	r3, #464	@ tmp165,
	mlaeq	r1, r0, r1, r2	@ tmp160, tmp157, LogicFrameID, tmp148
	mlane	r1, r3, r1, r0	@ tmp168, tmp165, LogicFrameID, tmp166
	ldrne	r3, .L80	@ tmp169,
	addeq	r1, r3, r1	@ tmp161, tmp146, tmp160
	subeq	r1, r1, #376	@ pstLogicFs, tmp161,
	addne	r1, r1, r3	@ pstLogicFs, tmp168, tmp169
	ldr	r0, [r1, #452]	@ D.36926, <variable>.PmvAddr
	ldmfd	sp, {fp, sp, pc}	@
.L81:
	.align	2
.L80:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_IsFsInVO
	.type	FSP_IsFsInVO, %function
FSP_IsFsInVO:
	.fnstart
.LFB1385:
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
	mov	ip, r0, asl #5	@ tmp240, InstID,
	add	r2, ip, r0	@ tmp155, tmp240, InstID
	movw	r3, #:lower16:.LANCHOR0	@ tmp239,
	movt	r3, #:upper16:.LANCHOR0	@ tmp239,
	add	r5, r3, r2, asl #3	@, tmp157, tmp239, tmp155,
	ldrsh	r4, [r5, #2]	@ D.37300, <variable>.history
	cmn	r4, #1	@ D.37300,
	beq	.L85	@,
	ldrh	r5, [r5, #4]	@ i, <variable>.head
	cmp	r5, r4	@ i, D.37300
	beq	.L85	@,
	movw	r7, #35112	@ tmp168,
	movw	r6, #35544	@ tmp166,
	mla	r7, r7, r0, r3	@ tmp169, tmp168, InstID, tmp239
	ldr	r6, [r7, r6]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L113	@,
	movw	r6, #40368	@ tmp191,
	movw	r2, #:lower16:.LANCHOR1	@ tmp188,
	mul	r6, r6, r0	@ tmp190, tmp191, InstID
	movt	r2, #:upper16:.LANCHOR1	@ tmp188,
	add	r7, r6, r2	@ tmp192, tmp190, tmp188
	ldr	r7, [r7, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r7, #1	@ <variable>.eFspInstState,
	beq	.L114	@,
.L85:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L113:
	and	r0, r5, #63	@ i.832, i,
	cmp	r4, r0	@ D.37300, i.832
	beq	.L85	@,
	mov	r2, r2, asl #1	@ tmp176, tmp155,
	add	ip, r2, r0	@ tmp177, tmp176, i.832
	add	ip, ip, #2	@ tmp178, tmp177,
	ldr	ip, [r3, ip, asl #2]	@ tmp179, <variable>.Addr
	cmp	ip, r1	@ tmp179, DecPhyAddr
	bne	.L103	@,
	b	.L86	@
.L104:
	ldr	ip, [r3, ip, asl #2]	@ tmp187, <variable>.Addr
	cmp	ip, r1	@ tmp187, DecPhyAddr
	beq	.L86	@,
.L103:
	add	r0, r0, #1	@ i.827, i.832,
	and	r0, r0, #63	@ i.832, i.827,
	cmp	r4, r0	@ D.37300, i.832
	add	ip, r2, r0	@ tmp185, tmp242, i.832
	add	ip, ip, #2	@ tmp186, tmp185,
	bne	.L104	@,
	b	.L85	@
.L114:
	sub	r8, r2, #528	@ tmp196, tmp188,
	add	r2, r8, r6	@ pstTreeInst, tmp196, tmp190
	movw	r6, #30020	@ tmp200,
	ldr	r7, [r2, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r6, #29980	@ tmp201,
	ldrsb	r8, [r2, #2]	@ <variable>.s8LevelChange, <variable>.s8LevelChange
	ldr	r6, [r2, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r2, r8, #2	@ tmp205, <variable>.s8LevelChange,
	rsb	r6, r6, r7	@ HDSlotLen, <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #3	@ tmp205,
	ldrls	pc, [pc, r2, asl #2]	@ tmp205
	b	.L85	@
.L92:
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L89
.L86:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L91:
	and	r2, r5, #63	@ i.825, i,
	cmp	r4, r2	@ D.37300, i.825
	addne	ip, ip, r0	@ tmp247, tmp240, InstID
	addne	r6, r1, r6	@ tmp249, DecPhyAddr, HDSlotLen
	movne	ip, ip, asl #1	@ tmp248, tmp247,
	beq	.L85	@,
.L109:
	add	r0, ip, r2	@ tmp219, tmp248, i.825
	add	r2, r2, #1	@ i.833, i.825,
	add	r0, r0, #2	@ tmp220, tmp219,
	and	r2, r2, #63	@ i.825, i.833,
	ldr	r0, [r3, r0, asl #2]	@ temp.831, <variable>.Addr
	cmp	r1, r0	@ DecPhyAddr, temp.831
	bgt	.L97	@,
	cmp	r0, r6	@ temp.831, tmp249
	blt	.L86	@,
.L97:
	cmp	r4, r2	@ D.37300, i.825
	bne	.L109	@,
	b	.L85	@
.L90:
	and	r2, r5, #63	@ i.824, i,
	cmp	r4, r2	@ D.37300, i.824
	addne	r0, ip, r0	@ tmp245, tmp240, InstID
	movne	r5, r0, asl #1	@ tmp246, tmp245,
	beq	.L85	@,
.L108:
	add	r0, r5, r2	@ tmp211, tmp246, i.824
	add	r2, r2, #1	@ i.829, i.824,
	add	ip, r0, #2	@ tmp212, tmp211,
	and	r2, r2, #63	@ i.824, i.829,
	ldr	r0, [r3, ip, asl #2]	@ temp.828, <variable>.Addr
	cmp	r1, r0	@ DecPhyAddr, temp.828
	add	ip, r0, r6	@ tmp213, temp.828, HDSlotLen
	blt	.L96	@,
	cmp	r1, ip	@ DecPhyAddr, tmp213
	blt	.L86	@,
.L96:
	cmp	r4, r2	@ D.37300, i.824
	bne	.L108	@,
	b	.L85	@
.L89:
	and	r5, r5, #63	@ i.834, i,
	cmp	r4, r5	@ D.37300, i.834
	beq	.L85	@,
	add	r0, ip, r0	@ tmp225, tmp240, InstID
	mov	r0, r0, asl #1	@ tmp226, tmp225,
	add	ip, r0, r5	@ tmp227, tmp226, i.834
	add	r2, ip, #2	@ tmp228, tmp227,
	ldr	ip, [r3, r2, asl #2]	@ tmp229, <variable>.Addr
	cmp	ip, r1	@ tmp229, DecPhyAddr
	bne	.L111	@,
	b	.L86	@
.L112:
	ldr	r2, [r3, r2, asl #2]	@ tmp237, <variable>.Addr
	cmp	r2, r1	@ tmp237, DecPhyAddr
	beq	.L86	@,
.L111:
	add	r5, r5, #1	@ i.836, i.834,
	and	r5, r5, #63	@ i.834, i.836,
	cmp	r4, r5	@ D.37300, i.834
	add	ip, r0, r5	@ tmp235, tmp244, i.834
	add	r2, ip, #2	@ tmp236, tmp235,
	bne	.L112	@,
	b	.L85	@
	.fnend
	.size	FSP_IsFsInVO, .-FSP_IsFsInVO
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
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
	movw	r2, #40368	@ tmp178,
	mul	r2, r2, r0	@ tmp177, tmp178, InstID
	movw	ip, #:lower16:.LANCHOR1	@ tmp243,
	movt	ip, #:upper16:.LANCHOR1	@ tmp243,
	add	r1, r2, ip	@ tmp179, tmp177, tmp243
	ldr	r3, [r1, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L135	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp242,
	movt	ip, #:upper16:.LANCHOR0	@ tmp242,
	movw	r1, #35112	@ tmp215,
	mov	r3, #63	@ i.877,
	mla	r2, r1, r0, ip	@ tmp216, tmp215, InstID, tmp242
	add	r1, r2, #29696	@ ivtmp.874, tmp216,
	add	r2, r1, #145	@ ivtmp.874, ivtmp.874,
	b	.L123	@
.L137:
	ldrb	r1, [r2, #-464]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i.877, i.877,
	sub	r2, r2, #928	@ ivtmp.874, ivtmp.874,
	cmp	r1, #0	@ <variable>.s32DispState,
	beq	.L122	@,
	subs	r3, r3, #1	@ i.877, i.877,
	bcc	.L136	@,
.L123:
	ldrsb	r1, [r2, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.s32DispState,
	bne	.L137	@,
.L122:
	movw	r1, #35112	@ tmp226,
	mov	r2, #464	@ tmp224,
	mul	r0, r1, r0	@ tmp225, tmp226, InstID
	mov	r1, #0	@ tmp230,
	mla	r0, r2, r3, r0	@ tmp227, tmp224, ret_id, tmp225
	add	ip, r0, ip	@ tmp228, tmp227, tmp242
	add	r2, ip, #1040	@ tmp229, tmp228,
	add	r0, r2, #8	@ tmp229, tmp229,
	str	r1, [ip, #1048]	@ tmp230, <variable>.pstDecodeFs
	str	r1, [r0, #4]	@ tmp230, <variable>.pstDispOutFs
	mov	r0, r3	@, ret_id
	ldmfd	sp, {fp, sp, pc}	@
.L135:
	add	r2, r2, ip	@ tmp187, tmp177, tmp243
	mov	r3, #63	@ i,
	add	r1, r2, #28672	@ ivtmp.866, tmp187,
	add	r2, r1, #185	@ ivtmp.866, ivtmp.866,
	b	.L119	@
.L139:
	ldrb	r1, [r2, #-464]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r2, r2, #928	@ ivtmp.866, ivtmp.866,
	cmp	r1, #0	@ <variable>.s32DispState,
	beq	.L118	@,
	subs	r3, r3, #1	@ i, i,
	bcc	.L138	@,
.L119:
	ldrsb	r1, [r2, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.s32DispState,
	bne	.L139	@,
.L118:
	movw	r2, #40368	@ tmp197,
	mov	r1, #464	@ tmp195,
	mul	r0, r2, r0	@ tmp196, tmp197, InstID
	mov	r2, #0	@ tmp201,
	mla	r0, r1, r3, r0	@ tmp198, tmp195, ret_id, tmp196
	add	ip, r0, ip	@ tmp199, tmp198, tmp243
	add	r0, ip, #64	@ tmp200, tmp199,
	str	r2, [ip, #64]	@ tmp201, <variable>.pstDecodeFs
	str	r2, [r0, #4]	@ tmp201, <variable>.pstDispOutFs
	mov	r0, r3	@, ret_id
	ldmfd	sp, {fp, sp, pc}	@
.L136:
	mov	r3, #0	@ ret_id,
	b	.L122	@
.L138:
	mov	r3, #0	@ ret_id,
	b	.L118	@
	.fnend
	.size	FSP_GetNullLogicFs, .-FSP_GetNullLogicFs
	.align	2
	.global	Tree_FSP_RenewFs
	.type	Tree_FSP_RenewFs, %function
Tree_FSP_RenewFs:
	.fnstart
.LFB1394:
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
	movw	r2, #40368	@ tmp142,
	mul	r2, r2, r0	@ tmp141, tmp142, InstID
	movw	r3, #:lower16:.LANCHOR1	@ tmp280,
	movt	r3, #:upper16:.LANCHOR1	@ tmp280,
	add	ip, r2, r3	@ tmp143, tmp141, tmp280
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	sub	r4, r3, #528	@ tmp147, tmp280,
	add	ip, r4, r2	@ pstTreeInst, tmp147, tmp141
	add	r5, ip, r1	@ tmp152, pstTreeInst, LogicFrameID
	ldrsb	r4, [ip, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	ldrb	r5, [r5, #45]	@ zero_extendqisi2	@ tmp154, <variable>.LogicFsRecord
	cmp	r5, r4	@ tmp154, <variable>.s8LevelID
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r4, #464	@ tmp159,
	mla	r2, r4, r1, r2	@ tmp162, tmp159, LogicFrameID, tmp141
	add	r2, r2, r3	@ tmp163, tmp162, tmp280
	ldr	r4, [r2, #64]	@ D.38010, <variable>.pstDecodeFs
	cmp	r4, #0	@ D.38010,
	beq	.L142	@,
	ldr	r2, [r4, #0]	@ tmp167,* D.38010
	bic	r2, r2, #-16777216	@ tmp165, tmp167,
	bic	r2, r2, #65280	@ tmp165, tmp165,
	cmp	r2, #196608	@ tmp165,
	beq	.L146	@,
.L142:
	movw	r4, #40368	@ tmp223,
	mul	r2, r4, r0	@ tmp222, tmp223, InstID
	mov	r4, #464	@ tmp221,
	mla	r2, r4, r1, r2	@ tmp224, tmp221, LogicFrameID, tmp222
	add	r2, r2, r3	@ tmp225, tmp224, tmp280
	ldr	r2, [r2, #68]	@ D.38027, <variable>.pstDispOutFs
	cmp	r2, #0	@ D.38027,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r4, [r2, #0]	@ tmp229,* D.38027
	bic	r4, r4, #-16777216	@ tmp227, tmp229,
	bic	r4, r4, #65280	@ tmp227, tmp227,
	cmp	r4, #196608	@ tmp227,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r5, [r2, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	ldr	r4, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r5, r4	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L147	@,
.L144:
	movw	r4, #40368	@ tmp241,
	mul	r0, r4, r0	@ tmp240, tmp241, InstID
	mov	r4, #464	@ tmp239,
	mla	r1, r4, r1, r0	@ tmp242, tmp239, LogicFrameID, tmp240
	mov	r4, #0	@ tmp234,
	strb	r4, [r2, #1]	@ tmp234, <variable>.IsTfRef
	ldr	r4, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r3, r1, r3	@ tmp243, tmp242, tmp280
	add	r0, r3, #64	@ tmp244, tmp243,
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
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L146:
	ldr	r5, [r4, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	ldr	r2, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	r5, r2	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L148	@,
.L143:
	movw	r2, #40368	@ tmp179,
	mov	r5, #464	@ tmp177,
	mul	r2, r2, r0	@ tmp178, tmp179, InstID
	mla	r2, r5, r1, r2	@ tmp180, tmp177, LogicFrameID, tmp178
	mov	r5, #0	@ tmp172,
	strb	r5, [r4, #1]	@ tmp172, <variable>.IsTfRef
	ldr	r5, [ip, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r2, r2, r3	@ tmp181, tmp180, tmp280
	ldr	r4, [r2, #64]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r5, [r4, #24]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r4, [r2, #64]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r5, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r5, [r4, #28]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r4, [r2, #64]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r5, [ip, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r5, [r4, #20]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r2, [r2, #64]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [ip, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r4, [r2, #32]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	b	.L142	@
.L147:
	ldr	r5, [r2, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r4, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r5, r4	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L144	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L148:
	ldr	r5, [r4, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r2, [ip, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r5, r2	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L143	@,
	b	.L142	@
	.fnend
	.size	Tree_FSP_RenewFs, .-Tree_FSP_RenewFs
	.align	2
	.global	Tree_FSP_SynState
	.type	Tree_FSP_SynState, %function
Tree_FSP_SynState:
	.fnstart
.LFB1393:
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
	cmp	r0, #1	@ InstID,
	bhi	.L170	@,
	sub	ip, r1, #1	@ tmp155, LevelID,
	uxtb	ip, ip	@ tmp156, tmp155
	cmp	ip, #1	@ tmp156,
	bhi	.L171	@,
	cmp	r2, #63	@ FsID,
	bhi	.L172	@,
	uxtb	ip, r3	@ Flag, Flag
	cmp	ip, #1	@ Flag,
	bhi	.L173	@,
	movw	r5, #40368	@ tmp167,
	movw	ip, #:lower16:.LANCHOR1	@ tmp319,
	mul	r0, r5, r0	@ tmp166, tmp167, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp319,
	add	r4, r0, ip	@ tmp168, tmp166, tmp319
	sub	r4, r4, #416	@ tmp169, tmp168,
	ldrsb	r5, [r4, #7]	@ <variable>.stInstCfg.s8SubLevelEnable, <variable>.stInstCfg.s8SubLevelEnable
	cmp	r5, #0	@ <variable>.stInstCfg.s8SubLevelEnable,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldrsb	r4, [r4, #4]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r4, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	moveq	r3, #0	@ Flag,
	cmp	r1, #2	@ LevelID,
	beq	.L157	@,
	cmp	r3, #0	@ Flag,
	beq	.L174	@,
	add	r2, r2, r2, asl #2	@, tmp207, FsID, FsID,
	add	r3, r0, #37632	@ tmp219, tmp166,
	sub	ip, ip, #528	@ tmp203, tmp319,
	add	r3, r3, #104	@ tmp219, tmp219,
	add	r1, r0, r2, asl #3	@, tmp211, tmp166, tmp207,
	mov	r2, r2, asl #4	@ tmp224, tmp207,
	add	r0, r1, #32512	@ tmp212, tmp211,
.L168:
	add	r0, r0, #16	@ tmp212, tmp212,
	add	r1, ip, r3	@ D.37958, tmp203, tmp219
	add	ip, ip, r0	@ pstFs0, tmp203, tmp212
	add	r3, r2, #40	@ tmp225, tmp224,
	add	r3, r1, r3	@ pstFs2, D.37958, tmp225
	add	r2, r1, r2	@ pstFs1, D.37958, tmp224
	ldrb	r0, [ip, #2]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	ldrb	r1, [ip, #0]	@ zero_extendqisi2	@ <variable>.IsDecRef, <variable>.IsDecRef
	strb	r0, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	strb	r1, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	ldrb	r0, [ip, #2]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	ldrb	r1, [ip, #0]	@ zero_extendqisi2	@ <variable>.IsDecRef, <variable>.IsDecRef
	strb	r0, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	strb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L171:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3223	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L170:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3222	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L173:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3225	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L172:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3224	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L174:
	add	r2, r2, r2, asl #2	@, tmp183, FsID, FsID,
	add	r3, r0, #35072	@ tmp195, tmp166,
	sub	ip, ip, #528	@ tmp179, tmp319,
	add	r3, r3, #104	@ tmp195, tmp195,
	add	r0, r0, r2, asl #3	@, tmp187, tmp166, tmp183,
	mov	r2, r2, asl #4	@ tmp200, tmp183,
	add	r0, r0, #29952	@ tmp188, tmp187,
	b	.L168	@
.L157:
	tst	r2, #1	@ FsID,
	mov	r4, r2, asr #1	@ tmp262, FsID,
	sub	ip, ip, #528	@ tmp236, tmp319,
	mvnne	r1, #0	@, iftmp.561,
	moveq	r1, #1	@, iftmp.561,
	cmp	r3, #0	@ Flag,
	add	r3, r1, r2	@ ColFsID, iftmp.561, FsID
	add	r2, r2, r2, asl #2	@, tmp240, FsID, FsID,
	add	r4, r4, r4, asl #2	@, tmp265, tmp262, tmp262,
	add	r3, r3, r3, asl #2	@, tmp252, ColFsID, ColFsID,
	add	r1, r0, r3, asl #3	@, tmp256, tmp166, tmp252,
	add	r3, r0, r2, asl #3	@, tmp244, tmp166, tmp240,
	addeq	r3, r3, #35072	@ tmp245, tmp244,
	addne	r3, r3, #37632	@ tmp282, tmp281,
	add	r3, r3, #104	@ tmp282, tmp282,
	addeq	r0, r0, r4, asl #3	@, tmp269, tmp166, tmp265,
	add	r3, ip, r3	@ pstFs0.942, tmp273, tmp282
	addne	r0, r0, r4, asl #3	@, tmp306, tmp166, tmp302,
	addeq	r1, r1, #35072	@ tmp257, tmp256,
	addeq	r2, r0, #29952	@ tmp270, tmp269,
	addne	r1, r1, #37632	@ tmp294, tmp293,
	addne	r2, r0, #32512	@ tmp307, tmp306,
	add	r2, r2, #16	@ tmp307, tmp307,
	add	r0, r1, #104	@ tmp294, tmp294,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ temp.956, <variable>.IsDecRef
	add	r2, ip, r2	@ pstFs2.944, tmp273, tmp307
	add	ip, ip, r0	@ pstFs1.943, tmp273, tmp294
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ temp.957, <variable>.DispState
	cmp	r1, #0	@ temp.956,
	strneb	r1, [r2, #0]	@ temp.956, <variable>.IsDecRef
	cmp	r0, #0	@ temp.957,
	ldrsb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	strneb	r0, [r2, #2]	@ temp.957, <variable>.DispState
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L166	@,
	ldrsb	r0, [ip, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	streqb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
.L166:
	ldrsb	r3, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldrsb	r1, [ip, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	streqb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Tree_FSP_SynState, .-Tree_FSP_SynState
	.global	__aeabi_idiv
	.align	2
	.global	Tree_FSP_PartitionFsMemory
	.type	Tree_FSP_PartitionFsMemory, %function
Tree_FSP_PartitionFsMemory:
	.fnstart
.LFB1391:
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
	movw	r6, #40368	@ tmp180,
	mul	r6, r6, r0	@ tmp179, tmp180, InstID
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp183,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp183,
	movw	r5, #:lower16:.LANCHOR1	@ tmp391,
	movt	r5, #:upper16:.LANCHOR1	@ tmp391,
	str	r1, [fp, #-688]	@ pUsedMemSize, %sfp
	ldr	ip, [r2, #28]	@ D.37603, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	sub	r4, r5, #528	@ tmp177, tmp391,
	add	r4, r4, r6	@ pstInst, tmp177, tmp179
	movw	r1, #30020	@ tmp181,
	cmp	ip, #0	@ D.37603,
	movw	r3, #29980	@ tmp182,
	str	r0, [fp, #-672]	@ InstID, %sfp
	ldr	sl, [r4, r1]	@ D.37600, <variable>.PhyAddr
	ldr	r9, [r4, r3]	@ D.37601, <variable>.PhyAddr
	beq	.L176	@,
	add	r6, r6, r5	@ tmp188, tmp179, tmp391
	str	r0, [sp, #12]	@ InstID,
	sub	r8, r6, #408	@ tmp189, tmp188,
	sub	r7, r6, #400	@ tmp196, tmp188,
	mov	r3, #10	@ tmp198,
	mov	r1, #40	@ tmp199,
	str	r3, [sp, #0]	@ tmp198,
	mov	lr, #0	@ tmp200,
	ldr	r3, [r7, #4]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	sub	r0, fp, #664	@ tmp202,,
	ldr	r2, [r8, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r1, [sp, #4]	@ tmp199,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #16]	@ tmp202,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp200,
	blx	ip	@ D.37603
	subs	r3, r0, #0	@ Ret,
	bne	.L177	@,
	ldrb	ip, [r6, #-409]	@ zero_extendqisi2	@ <variable>.stInstCfg.s8SubLevelEnable, <variable>.stInstCfg.s8SubLevelEnable
	rsb	sl, r9, sl	@, D.37601, D.37600
	str	sl, [fp, #-676]	@, %sfp
	cmp	ip, #0	@ <variable>.stInstCfg.s8SubLevelEnable,
	bne	.L288	@,
.L178:
	mov	r8, #1	@,
	str	r8, [fp, #-680]	@, %sfp
.L180:
	ldr	r8, [fp, #-672]	@, %sfp
	movw	r6, #40368	@ tmp240,
	ldr	lr, [fp, #-664]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r1, [fp, #-680]	@, %sfp
	mla	r2, r6, r8, r5	@ tmp241, tmp240,, tmp391
	str	lr, [r4, #8]	@ MemArrange.VahbStride, <variable>.s32Stride
	ldr	ip, [fp, #-400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	sxtb	r6, r1	@ CurLevel,
	ldrsb	r3, [r4, #1]	@ D.37633, <variable>.s8LevelID
	str	ip, [r4, #20]	@ MemArrange.ChromOffset, <variable>.s32ChromOffset
	cmp	r3, r6	@ D.37633, CurLevel
	ldr	r0, [fp, #-52]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r2, #-396]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	lr, [r2, #-400]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r0, [r4, #24]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r4, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.s32FsHeight
	str	lr, [r4, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.s32FsWidth
	beq	.L289	@,
	cmp	r6, #1	@ CurLevel,
	beq	.L194	@,
	cmp	r6, #2	@ CurLevel,
	beq	.L290	@,
	mov	r3, r6	@, CurLevel
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #2872	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37629,
.L181:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L288:
	add	r2, sl, sl, lsr #31	@, tmp213,,,
	ldr	lr, [fp, #-656]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	r1, [fp, #-652]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r2, r2, asr #1	@ tmp214, tmp213,
	rsb	r3, lr, r1	@ CurSlotLen, MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r3, sl	@ CurSlotLen,
	cmple	r2, r3	@, tmp214, CurSlotLen
	blt	.L178	@,
	cmp	r3, r2	@ CurSlotLen, tmp214
	movle	r1, #2	@,
	strle	r1, [fp, #-680]	@, %sfp
	ble	.L180	@,
	ldr	ip, [r7, #4]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r1, #:lower16:.LC5	@,
	ldr	r3, [r8, #8]	@, <variable>.stInstCfg.s32DecFsWidth
	movt	r1, #:upper16:.LC5	@,
	movw	r2, #2795	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37629,
	b	.L181	@
.L290:
	add	ip, r4, #35072	@ pTreeFs, pstInst,
	add	r7, r4, #29696	@, pstInst,
	str	r7, [fp, #-684]	@, %sfp
	add	r7, ip, #56	@ pTreeFs, pTreeFs,
.L196:
	ldr	r9, [r7, #0]	@ temp.1085, <variable>.s32DecFsNum
	cmp	r9, #0	@ temp.1085,
	ble	.L197	@,
	cmp	r6, #1	@ CurLevel,
	add	r2, r4, #35072	@ ivtmp.1044, pstInst,
	sub	r1, r9, #1	@ tmp418, temp.1085,
	add	r0, r2, #140	@ ivtmp.1044, ivtmp.1044,
	and	r1, r1, #1	@ tmp420, tmp418,
	mov	r8, #0	@ tmp396,
	beq	.L291	@,
	add	ip, r4, #29952	@ tmp542, pstInst,
	add	r3, ip, #48	@ tmp542, tmp542,
	ldr	r3, [r3, #4]	@ iftmp.545, <variable>.u32Tick
.L273:
	str	r3, [r7, #84]	@ iftmp.545, <variable>.u32Tick
	mov	ip, #1	@ i.1061,
	strb	r8, [r7, #49]	@ tmp396, <variable>.IsTfRef
	cmp	ip, r9	@ i.1061, temp.1085
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r0, r0, #80	@ ivtmp.1044, ivtmp.1044,
	add	r3, r7, #40	@ ivtmp.1038, pTreeFs,
	str	lr, [r7, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r2, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r2, [r7, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r7, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r7, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L197	@,
	cmp	r1, #0	@ tmp420,
	beq	.L200	@,
	cmp	r6, ip	@ CurLevel,
	beq	.L274	@,
	add	sl, r4, #29952	@ tmp556, pstInst,
	add	r1, sl, #48	@ tmp556, tmp556,
	ldr	r2, [r1, #4]	@ iftmp.545, <variable>.u32Tick
.L275:
	str	r2, [r3, #84]	@ iftmp.545, <variable>.u32Tick
	add	ip, ip, #1	@ i.1061, i.1061,
	strb	r8, [r3, #49]	@ tmp396, <variable>.IsTfRef
	cmp	ip, r9	@ i.1061, temp.1085
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r0, r0, #80	@ ivtmp.1044, ivtmp.1044,
	str	lr, [r3, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r3, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r2, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r2, [r3, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	add	r3, r3, #40	@ ivtmp.1038, ivtmp.1038,
	blt	.L200	@,
	b	.L197	@
.L198:
	add	lr, r4, r2, asl #3	@, tmp295, pstInst, tmp293,
	add	r1, lr, #29952	@ tmp296, tmp295,
	add	r2, r1, #48	@ tmp296, tmp296,
	ldr	r1, [r2, #4]	@ iftmp.545, <variable>.u32Tick
.L199:
	str	r1, [r3, #84]	@ iftmp.545, <variable>.u32Tick
	add	ip, ip, #1	@ tmp421, i.1061,
	strb	r8, [r3, #49]	@ tmp396, <variable>.IsTfRef
	cmp	r6, #1	@ CurLevel,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	mov	r1, ip, asr #1	@ tmp565, tmp421,
	add	r2, r3, #40	@ tmp422, ivtmp.1038,
	add	lr, r0, #80	@ tmp423, ivtmp.1044,
	add	r1, r1, r1, asl #2	@, tmp567, tmp565, tmp565,
	str	sl, [r3, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	add	r1, r4, r1, asl #3	@, tmp569, pstInst, tmp567,
	add	r1, r1, #29952	@ tmp570, tmp569,
	add	r1, r1, #48	@ tmp570, tmp570,
	str	sl, [r3, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	ldrne	r3, [r1, #4]	@ iftmp.545, <variable>.u32Tick
	beq	.L292	@,
.L276:
	str	r3, [r2, #84]	@ iftmp.545, <variable>.u32Tick
	add	r0, lr, #80	@ ivtmp.1044, tmp423,
	strb	r8, [r2, #49]	@ tmp396, <variable>.IsTfRef
	add	ip, ip, #1	@ i.1061, tmp421,
	ldr	r1, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	ip, r9	@ i.1061, temp.1085
	add	r3, r2, #40	@ ivtmp.1038, tmp422,
	str	r1, [r2, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r2, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r2, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r1, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r1, [r2, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L197	@,
.L200:
	mov	lr, ip, asr #1	@ tmp289, i.1061,
	cmp	r6, #1	@ CurLevel,
	add	r2, lr, lr, asl #2	@, tmp293, tmp289, tmp289,
	bne	.L198	@,
	ldr	r1, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	sl, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, sl	@ <variable>.u32Tick, <variable>.u32Tick
	movcc	r1, sl	@ iftmp.545, <variable>.u32Tick
	b	.L199	@
.L292:
	ldr	r3, [r0, #80]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r0, [lr, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, r0	@ iftmp.545, <variable>.u32Tick
	b	.L276	@
.L197:
	ldr	r9, [r7, #4]	@ temp.1084, <variable>.s32DispFsNum
	cmp	r9, #0	@ temp.1084,
	ble	.L190	@,
	cmp	r6, #1	@ CurLevel,
	sub	r8, r9, #1	@ tmp412, temp.1084,
	add	r3, r7, #2608	@ ivtmp.1025, pTreeFs,
	add	r0, r4, #35072	@ ivtmp.1030, pstInst,
	and	r1, r8, #1	@ tmp414, tmp412,
	add	r2, r3, #1	@ ivtmp.1025, ivtmp.1025,
	add	r0, r0, #140	@ ivtmp.1030, ivtmp.1030,
	mov	r8, #0	@ tmp395,
	beq	.L293	@,
	add	lr, r4, #29952	@ tmp500, pstInst,
	add	ip, lr, #48	@ tmp500, tmp500,
	ldr	r3, [ip, #4]	@ iftmp.546, <variable>.u32Tick
.L269:
	str	r3, [r2, #35]	@ iftmp.546, <variable>.u32Tick
	mov	ip, #1	@ i.1070,
	strb	r8, [r2, #0]	@ tmp395, <variable>.IsTfRef
	cmp	ip, r9	@ i.1070, temp.1084
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r3, r2, #40	@ ivtmp.1025, ivtmp.1025,
	add	r0, r0, #80	@ ivtmp.1030, ivtmp.1030,
	str	sl, [r2, #23]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r2, #27]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r2, #19]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r2, #31]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L190	@,
	cmp	r1, #0	@ tmp414,
	beq	.L203	@,
	cmp	r6, ip	@ CurLevel,
	beq	.L270	@,
	add	r2, r4, #29952	@ tmp514, pstInst,
	add	r1, r2, #48	@ tmp514, tmp514,
	ldr	r2, [r1, #4]	@ iftmp.546, <variable>.u32Tick
.L271:
	str	r2, [r3, #35]	@ iftmp.546, <variable>.u32Tick
	add	ip, ip, #1	@ i.1070, i.1070,
	strb	r8, [r3, #0]	@ tmp395, <variable>.IsTfRef
	cmp	ip, r9	@ i.1070, temp.1084
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r0, r0, #80	@ ivtmp.1030, ivtmp.1030,
	str	lr, [r3, #23]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r2, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r2, [r3, #27]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r3, #19]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #31]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	add	r3, r3, #40	@ ivtmp.1025, ivtmp.1025,
	blt	.L203	@,
	b	.L190	@
.L201:
	add	r2, r4, r2, asl #3	@, tmp314, pstInst, tmp312,
	add	r1, r2, #29952	@ tmp315, tmp314,
	add	sl, r1, #48	@ tmp315, tmp315,
	ldr	r1, [sl, #4]	@ iftmp.546, <variable>.u32Tick
.L202:
	str	r1, [r3, #35]	@ iftmp.546, <variable>.u32Tick
	add	ip, ip, #1	@ tmp415, i.1070,
	strb	r8, [r3, #0]	@ tmp395, <variable>.IsTfRef
	cmp	r6, #1	@ CurLevel,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	mov	r1, ip, asr #1	@ tmp523, tmp415,
	add	r2, r3, #40	@ tmp416, ivtmp.1025,
	add	lr, r0, #80	@ tmp417, ivtmp.1030,
	add	r1, r1, r1, asl #2	@, tmp525, tmp523, tmp523,
	str	sl, [r3, #23]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	add	r1, r4, r1, asl #3	@, tmp527, pstInst, tmp525,
	add	r1, r1, #29952	@ tmp528, tmp527,
	add	r1, r1, #48	@ tmp528, tmp528,
	str	sl, [r3, #27]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #19]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #31]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	ldrne	r3, [r1, #4]	@ iftmp.546, <variable>.u32Tick
	beq	.L294	@,
.L272:
	str	r3, [r2, #35]	@ iftmp.546, <variable>.u32Tick
	add	r0, lr, #80	@ ivtmp.1030, tmp417,
	strb	r8, [r2, #0]	@ tmp395, <variable>.IsTfRef
	add	ip, ip, #1	@ i.1070, tmp415,
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	cmp	ip, r9	@ i.1070, temp.1084
	add	r3, r2, #40	@ ivtmp.1025, tmp416,
	str	sl, [r2, #23]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	lr, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	lr, [r2, #27]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r2, #19]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r2, #31]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
	bge	.L190	@,
.L203:
	mov	r2, ip, asr #1	@ tmp308, i.1070,
	cmp	r6, #1	@ CurLevel,
	add	r2, r2, r2, asl #2	@, tmp312, tmp308, tmp308,
	bne	.L201	@,
	ldr	r1, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	lr, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r1, lr	@ <variable>.u32Tick, <variable>.u32Tick
	movcc	r1, lr	@ iftmp.546, <variable>.u32Tick
	b	.L202	@
.L294:
	ldr	r3, [r0, #80]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r0, [lr, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, r0	@ iftmp.546, <variable>.u32Tick
	b	.L272	@
.L289:
	cmp	r3, #1	@ D.37633,
	bne	.L295	@,
	add	sl, r4, #29696	@, pstInst,
	str	sl, [fp, #-684]	@, %sfp
	add	r7, sl, #224	@ pTreeFs,,
.L186:
	ldr	ip, [r7, #0]	@ temp.1083, <variable>.s32DecFsNum
	cmp	ip, #0	@ temp.1083,
	ble	.L187	@,
	ldrsb	r8, [r7, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	sub	r0, ip, #1	@ tmp407, temp.1083,
	and	r2, r0, #1	@ tmp409, tmp407,
	cmp	r8, #0	@ <variable>.IsDecRef,
	bne	.L231	@,
	ldrsb	r3, [r7, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L231	@,
	strb	r3, [r7, #49]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r7, #84]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r7, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r3, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r3, [r7, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r7, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r1, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r1, [r7, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L231:
	mov	r1, #1	@ i,
	cmp	r1, ip	@ i, temp.1083
	add	r3, r7, #40	@ ivtmp.1012, pTreeFs,
	bge	.L187	@,
	cmp	r2, #0	@ tmp409,
	beq	.L189	@,
	ldrsb	r2, [r3, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L233	@,
	ldrsb	r2, [r3, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L233	@,
	strb	r2, [r3, #49]	@ <variable>.DispState, <variable>.IsTfRef
	str	r2, [r3, #84]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r3, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r8, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r8, [r3, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	sl, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	sl, [r3, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r0, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r3, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L233:
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #40	@ ivtmp.1012, ivtmp.1012,
	cmp	r1, ip	@ i, temp.1083
	bge	.L187	@,
.L189:
	ldrsb	lr, [r3, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #40	@ tmp411, ivtmp.1012,
	add	r1, r1, #1	@ tmp410, i,
	cmp	lr, #0	@ <variable>.IsDecRef,
	bne	.L188	@,
	ldrsb	r0, [r3, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	bne	.L188	@,
	strb	r0, [r3, #49]	@ <variable>.DispState, <variable>.IsTfRef
	str	r0, [r3, #84]	@ <variable>.DispState, <variable>.u32Tick
	ldr	lr, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	lr, [r3, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r0, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r3, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r3, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r3, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L188:
	ldrsb	r3, [r2, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #0	@ <variable>.IsDecRef,
	bne	.L236	@,
	ldrsb	r3, [r2, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L236	@,
	strb	r3, [r2, #49]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r2, #84]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r2, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r2, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r2, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r3, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r3, [r2, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L236:
	add	r1, r1, #1	@ i, tmp410,
	add	r3, r2, #40	@ ivtmp.1012, tmp411,
	cmp	r1, ip	@ i, temp.1083
	blt	.L189	@,
.L187:
	ldr	ip, [r7, #4]	@ temp.1082, <variable>.s32DispFsNum
	cmp	ip, #0	@ temp.1082,
	ble	.L190	@,
	add	sl, r7, #2624	@ ivtmp.1006, pTreeFs,
	sub	r2, ip, #1	@ tmp402, temp.1082,
	add	r3, sl, #4	@ ivtmp.1006, ivtmp.1006,
	and	r2, r2, #1	@ tmp404, tmp402,
	ldrsb	r1, [r3, #-20]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L224	@,
	ldrsb	r1, [r3, #-18]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L224	@,
	strb	r1, [r3, #-19]	@ <variable>.DispState, <variable>.IsTfRef
	str	r1, [r3, #16]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #4]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #8]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r3, #0]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r1, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r1, [r3, #12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L224:
	mov	r1, #1	@ i.1056,
	cmp	r1, ip	@ i.1056, temp.1082
	add	r3, r3, #40	@ ivtmp.1006, ivtmp.1006,
	bge	.L190	@,
	cmp	r2, #0	@ tmp404,
	beq	.L192	@,
	ldrsb	r2, [r3, #-20]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L226	@,
	ldrsb	r2, [r3, #-18]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L226	@,
	strb	r2, [r3, #-19]	@ <variable>.DispState, <variable>.IsTfRef
	str	r2, [r3, #16]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #4]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #8]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r0, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r0, [r3, #0]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r3, #12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L226:
	add	r1, r1, #1	@ i.1056, i.1056,
	add	r3, r3, #40	@ ivtmp.1006, ivtmp.1006,
	cmp	r1, ip	@ i.1056, temp.1082
	bge	.L190	@,
.L192:
	ldrsb	r8, [r3, #-20]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #40	@ tmp406, ivtmp.1006,
	add	r1, r1, #1	@ tmp405, i.1056,
	cmp	r8, #0	@ <variable>.IsDecRef,
	bne	.L191	@,
	ldrsb	r0, [r3, #-18]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	bne	.L191	@,
	strb	r0, [r3, #-19]	@ <variable>.DispState, <variable>.IsTfRef
	str	r0, [r3, #16]	@ <variable>.DispState, <variable>.u32Tick
	ldr	r8, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r8, [r3, #4]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	sl, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	sl, [r3, #8]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	lr, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	lr, [r3, #0]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r0, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r0, [r3, #12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L191:
	ldrsb	r3, [r2, #-20]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #0	@ <variable>.IsDecRef,
	bne	.L229	@,
	ldrsb	r3, [r2, #-18]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	bne	.L229	@,
	strb	r3, [r2, #-19]	@ <variable>.DispState, <variable>.IsTfRef
	str	r3, [r2, #16]	@ <variable>.DispState, <variable>.u32Tick
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	sl, [r2, #4]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r0, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r2, #8]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	lr, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	lr, [r2, #0]	@ <variable>.s32Stride, <variable>.Stride
	ldr	r3, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r3, [r2, #12]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L229:
	add	r1, r1, #1	@ i.1056, tmp405,
	add	r3, r2, #40	@ ivtmp.1006, tmp406,
	cmp	r1, ip	@ i.1056, temp.1082
	blt	.L192	@,
.L190:
	ldr	r0, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	movw	r1, #5192	@ tmp326,
	ldr	r3, [fp, #-672]	@, %sfp
	movw	lr, #40368	@ tmp338,
	str	r0, [r7, #32]	@ <variable>.s32FsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #29848	@ tmp343,
	ldr	ip, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	mla	r5, lr, r3, r5	@ tmp339, tmp338,, tmp391
	movw	r3, #5196	@ tmp328,
	str	ip, [r7, #36]	@ <variable>.s32FsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r2, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	sub	lr, r5, #408	@ tmp340, tmp339,
	movw	r5, #40364	@ tmp347,
	str	r2, [r7, #28]	@ <variable>.s32Stride, <variable>.stDummyPhyFs.Stride
	movw	r2, #5188	@ tmp330,
	ldr	r8, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	r8, [r7, #40]	@ <variable>.s32ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	ldr	sl, [r4, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	sl, [r7, r1]	@ <variable>.s32FsWidth, <variable>.stTfFs.FsWidth
	movw	r1, #5200	@ tmp332,
	ldr	ip, [r4, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	ip, [r7, r3]	@ <variable>.s32FsHeight, <variable>.stTfFs.FsHeight
	movw	r3, #29848	@ tmp346,
	ldr	r8, [r4, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r8, [r7, r2]	@ <variable>.s32Stride, <variable>.stTfFs.Stride
	ldr	sl, [r4, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	sl, [r7, r1]	@ <variable>.s32ChromOffset, <variable>.stTfFs.ChromOffset
	movw	sl, #29852	@ tmp394,
	ldrsb	r1, [lr, #4]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	cmp	r1, #17	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	movge	r1, #17	@ prephitmp.979,
	str	r1, [r4, r0]	@ prephitmp.979, <variable>.stTreePMV.s32PmvNum
	cmp	r1, #0	@ prephitmp.979,
	movle	r1, #1	@ tmp345,
	strle	r1, [r4, r0]	@ tmp345, <variable>.stTreePMV.s32PmvNum
	ldr	r0, [r4, r5]	@, <variable>.stTreeParam.PmvTotalSize
	ldr	r5, [r4, r3]	@ D.37678, <variable>.stTreePMV.s32PmvNum
	bl	__aeabi_idiv	@
	ldr	r2, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	r1, #1	@ i.1062,
	ldr	r8, [fp, #-684]	@, %sfp
	cmp	r5, #1	@ D.37678,
	sub	ip, r5, #1	@ tmp397, D.37678,
	and	r3, ip, r1	@ tmp399, tmp397,
	str	r2, [r8, #156]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	add	r2, r8, #160	@ ivtmp.993,,
	mov	ip, r0	@ ivtmp.992, D.38542
	ble	.L267	@,
	cmp	r3, #0	@ tmp399,
	beq	.L278	@,
	ldr	lr, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	r1, #2	@ i.1062,
	cmp	r5, r1	@ D.37678, i.1062
	mov	ip, r0, asl #1	@ ivtmp.992, D.38542,
	add	r3, lr, r0	@ tmp462, <variable>.stTreePMV.PmvAddr, D.38542
	str	r3, [r2, #0]	@ tmp462, <variable>.stTreePMV.PmvAddr
	ldr	r8, [fp, #-684]	@, %sfp
	add	r2, r8, #164	@ ivtmp.993,,
	ble	.L267	@,
.L278:
	mov	r9, r7	@ pTreeFs, pTreeFs
.L205:
	ldr	r3, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	mov	lr, r2	@ tmp401, ivtmp.993
	add	r1, r1, #2	@ i.1062, i.1062,
	add	r7, r3, ip	@ tmp453, <variable>.stTreePMV.PmvAddr, ivtmp.992
	cmp	r5, r1	@ D.37678, i.1062
	str	r7, [lr], #4	@ tmp453, <variable>.stTreePMV.PmvAddr
	add	r3, ip, r0	@ ivtmp.992, ivtmp.992, D.38542
	ldr	r8, [r4, sl]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	add	ip, r3, r0	@ ivtmp.992, ivtmp.992, D.38542
	add	r7, r8, r3	@ tmp459, <variable>.stTreePMV.PmvAddr, ivtmp.992
	str	r7, [r2, #4]	@ tmp459, <variable>.stTreePMV.PmvAddr
	add	r2, lr, #4	@ ivtmp.993, tmp401,
	bgt	.L205	@,
	mov	r7, r9	@ pTreeFs, pTreeFs
.L267:
	ldrsb	r3, [r4, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r3, #1	@ <variable>.s8LevelID,
	beq	.L208	@,
	cmp	r3, #2	@ <variable>.s8LevelID,
	beq	.L209	@,
	cmp	r3, #0	@ <variable>.s8LevelID,
	mvnne	r3, #0	@ tmp371,
	beq	.L296	@,
.L287:
	strb	r3, [r4, #2]	@ tmp371, <variable>.s8LevelChange
.L211:
	ldr	sl, [fp, #-680]	@, %sfp
	movw	r0, #29856	@ tmp374,
	movw	r2, #29852	@ tmp375,
	ldr	r1, [r4, r0]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	ldr	r8, [r4, r2]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	movw	r3, #29848	@ tmp379,
	strb	sl, [r4, #1]	@, <variable>.s8LevelID
	mov	r0, #0	@ D.37629,
	ldr	lr, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	rsb	r2, r8, r1	@ tmp376, <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	ldr	ip, [r7, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r8, [fp, #-676]	@, %sfp
	add	sl, ip, lr	@ tmp382, <variable>.s32DispFsNum, <variable>.s32DecFsNum
	ldr	lr, [r4, r3]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	ldr	r1, [fp, #-688]	@, %sfp
	mul	sl, r8, sl	@ tmp385,, tmp382
	mla	ip, lr, r2, sl	@ tmp386, <variable>.stTreePMV.s32PmvNum, tmp376, tmp385
	str	ip, [r1, #0]	@ tmp386,
	b	.L181	@
.L176:
	mvn	r3, #0	@ Ret,
.L177:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #2978	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37629,
	b	.L181	@
.L194:
	add	r9, r4, #29696	@, pstInst,
	str	r9, [fp, #-684]	@, %sfp
	add	r7, r9, #224	@ pTreeFs,,
	b	.L196	@
.L295:
	cmp	r3, #2	@ D.37633,
	beq	.L297	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #2821	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37629,
	b	.L181	@
.L296:
	cmp	r6, #1	@ CurLevel,
	movne	r3, #1	@ tmp359,
	strneb	r3, [r4, #2]	@ tmp359, <variable>.s8LevelChange
	bne	.L211	@,
	b	.L287	@
.L208:
	cmp	r6, #1	@ CurLevel,
	moveq	r3, #2	@ tmp362,
	movne	r3, #3	@ tmp364,
	strb	r3, [r4, #2]	@ tmp364, <variable>.s8LevelChange
	b	.L211	@
.L209:
	cmp	r6, #1	@ CurLevel,
	moveq	r3, #4	@ tmp367,
	movne	r3, #5	@ tmp369,
	strb	r3, [r4, #2]	@ tmp369, <variable>.s8LevelChange
	b	.L211	@
.L293:
	ldr	sl, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, sl	@ iftmp.546, <variable>.u32Tick
	b	.L269	@
.L291:
	ldr	r2, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r2, r3	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r3, r2	@ iftmp.545, <variable>.u32Tick
	b	.L273	@
.L270:
	ldr	lr, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	lr, r2	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r2, lr	@ iftmp.546, <variable>.u32Tick
	b	.L271	@
.L274:
	ldr	lr, [r0, #40]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r0, #0]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	lr, r2	@ <variable>.u32Tick, <variable>.u32Tick
	movcs	r2, lr	@ iftmp.545, <variable>.u32Tick
	b	.L275	@
.L297:
	add	r7, r4, #35072	@ pTreeFs, pstInst,
	add	r3, r4, #29696	@, pstInst,
	add	r7, r7, #56	@ pTreeFs, pTreeFs,
	str	r3, [fp, #-684]	@, %sfp
	b	.L186	@
	.fnend
	.size	Tree_FSP_PartitionFsMemory, .-Tree_FSP_PartitionFsMemory
	.align	2
	.global	FSP_GetFspType
	.type	FSP_GetFspType, %function
FSP_GetFspType:
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
	cmp	r0, #1	@ InstID,
	bhi	.L304	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	movw	r3, #35112	@ tmp141,
	movw	r2, #35544	@ tmp139,
	mla	r1, r3, r0, ip	@ tmp142, tmp141, InstID, tmp138
	ldr	r3, [r1, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@ D.37449,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r2, #:lower16:.LANCHOR1	@ tmp145,
	movt	r2, #:upper16:.LANCHOR1	@ tmp145,
	movw	r1, #40368	@ tmp148,
	mla	r0, r1, r0, r2	@ tmp149, tmp148, InstID, tmp145
	ldr	r0, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	mvnne	r0, #0	@, D.37449,
	ldmfd	sp, {fp, sp, pc}	@
.L304:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2597	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37449,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.align	2
	.global	FSP_ProcFspQue
	.type	FSP_ProcFspQue, %function
FSP_ProcFspQue:
	.fnstart
.LFB1386:
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
	beq	.L324	@,
	cmp	r2, #1	@ Flag,
	bhi	.L325	@,
	beq	.L326	@,
	mov	r9, r0, asl #5	@ tmp268, InstID,
	movw	ip, #:lower16:.LANCHOR0	@ tmp269,
	add	r4, r9, r0	@ tmp184, tmp268, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp269,
	add	r8, ip, r4, asl #3	@, tmp186, tmp269, tmp184,
	ldrh	r2, [r8, #4]	@ prephitmp.1129, <variable>.head
	ldrh	r5, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r2, #63	@ i.1145, prephitmp.1129,
	cmp	r5, r3	@ <variable>.tail, i.1145
	beq	.L310	@,
	mov	r4, r4, asl #1	@ tmp276, tmp184,
.L320:
	add	r2, r4, r3	@ tmp199, tmp276, i.1145
	ldr	r5, [r1, #68]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, r2, #2	@ tmp200, tmp199,
	ldr	r2, [ip, r2, asl #2]	@ D.37370, <variable>.Addr
	cmp	r5, r2	@ <variable>.top_luma_phy_addr, D.37370
	moveq	sl, #1	@ SameImageFlag,
	beq	.L322	@,
	cmp	r2, #0	@ D.37370,
	addne	r3, r3, #1	@ i.1144, i.1145,
	bne	.L313	@,
	mov	sl, #2	@ SameImageFlag,
	b	.L322	@
.L327:
	mov	r3, r2	@ i.1145, j
.L322:
	cmp	r3, #0	@ i.1145,
	sub	r2, r3, #1	@ j, i.1145,
	add	r5, r4, r3	@ tmp207, tmp276, i.1145
	moveq	r2, #63	@ j,
	add	r7, r4, r2	@ tmp214, tmp276, j
	add	r6, r7, #2	@ tmp215, tmp214,
	ldrh	r7, [r8, #4]	@ D.37366, <variable>.head
	add	r5, r5, #2	@ tmp208, tmp207,
	ldr	r6, [ip, r6, asl #2]	@ tmp216, <variable>.Addr
	cmp	r7, r3	@ D.37366, i.1145
	str	r6, [ip, r5, asl #2]	@ tmp216, <variable>.Addr
	bne	.L327	@,
	cmp	sl, #1	@ SameImageFlag,
	add	r3, r3, #1	@ i.1144, i.1145,
	and	r2, r3, #63	@ prephitmp.1129, i.1144,
	strh	r2, [r8, #4]	@ movhi	@ prephitmp.1129, <variable>.head
	beq	.L310	@,
.L313:
	ldrh	r2, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r3, #63	@ i.1145, i.1144,
	cmp	r2, r3	@ <variable>.tail, i.1145
	bne	.L320	@,
	ldrh	r2, [r8, #4]	@ prephitmp.1129, <variable>.head
.L310:
	add	r0, r9, r0	@ tmp247, tmp268, InstID
	movw	r3, #:lower16:.LANCHOR0	@ tmp244,
	movt	r3, #:upper16:.LANCHOR0	@ tmp244,
	add	ip, ip, r0, asl #3	@, tmp249, tmp269, tmp247,
	ldrsh	r1, [ip, #2]	@ <variable>.history, <variable>.history
	cmp	r2, r1	@ prephitmp.1129, <variable>.history
	mvneq	r2, #0	@ movhi	@,
	streqh	r2, [ip, #2]	@ movhi	@, <variable>.history
	moveq	r2, #0	@ tmp257,
	streqb	r2, [r3, r0, asl #3]	@ tmp257, <variable>.SwitchFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L325:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2445	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L326:
	add	r0, r0, r0, asl #5	@, tmp153, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	ip, [r1, #68]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, r3, r0, asl #3	@, tmp155, tmp149, tmp153,
	ldrh	r1, [r2, #6]	@ <variable>.tail, <variable>.tail
	add	r0, r1, r0, asl #1	@, tmp161, <variable>.tail, tmp153,
	add	r1, r1, #1	@ tmp178, <variable>.tail,
	add	r0, r0, #2	@ tmp162, tmp161,
	and	r1, r1, #63	@ tmp180, tmp178,
	strh	r1, [r2, #6]	@ movhi	@ tmp180, <variable>.tail
	str	ip, [r3, r0, asl #2]	@ <variable>.top_luma_phy_addr, <variable>.Addr
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L324:
	mov	r0, r1	@, p_image
	movw	r2, #2444	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_ProcFspQue, .-FSP_ProcFspQue
	.align	2
	.global	FSP_SetQueSwitchFlag
	.type	FSP_SetQueSwitchFlag, %function
FSP_SetQueSwitchFlag:
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
	cmp	r0, #1	@ InstID,
	bhi	.L332	@,
	add	r0, r0, r0, asl #5	@, tmp139, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp142,
	strb	r2, [r3, r0, asl #3]	@ tmp142, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
.L332:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2325	@,
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
	cmp	r0, #1	@ InstID,
	bls	.L334	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2315	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #255	@ D.37265,
	ldmfd	sp, {fp, sp, pc}	@
.L334:
	add	r0, r0, r0, asl #5	@, tmp141, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldrb	r0, [r3, r0, asl #3]	@ zero_extendqisi2	@ D.37265, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetQueSwitchFlag, .-FSP_GetQueSwitchFlag
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
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
	cmp	r0, #1	@ InstID,
	mov	r3, r0	@ InstID, InstID
	bhi	.L355	@,
	movw	ip, #40368	@ tmp147,
	movw	r2, #:lower16:.LANCHOR1	@ tmp144,
	mul	ip, ip, r0	@ tmp146, tmp147, InstID
	movt	r2, #:upper16:.LANCHOR1	@ tmp144,
	add	r0, ip, r2	@ tmp148, tmp146, tmp144
	ldr	r0, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	beq	.L356	@,
	ldr	r2, .L357	@ tmp158,
	movw	ip, #35112	@ tmp160,
	mov	r0, #0	@ i,
	mla	r3, ip, r3, r2	@ ivtmp.1235, tmp160, InstID, tmp158
.L345:
	add	r2, r3, #464	@ tmp166, ivtmp.1235,
	ldr	r3, [r3, #520]	@ D.37077, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37077,
	beq	.L344	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L344:
	ldr	r3, [r2, #520]	@ D.37077, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.37077,
	mov	ip, r0	@ tmp165, i
	beq	.L351	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L351:
	add	r0, ip, #1	@ i, tmp165,
	add	r3, r2, #464	@ ivtmp.1235, tmp166,
	cmp	r0, #64	@ i,
	bne	.L345	@,
.L343:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L356:
	sub	r3, r2, #528	@ tmp152, tmp144,
	mov	r0, #0	@ i,
	add	r3, r3, ip	@ ivtmp.1227, tmp152, tmp146
.L342:
	add	r2, r3, #464	@ tmp164, ivtmp.1227,
	ldr	r3, [r3, #592]	@ D.37071, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37071,
	beq	.L341	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L341:
	ldr	r3, [r2, #592]	@ D.37071, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.37071,
	mov	ip, r0	@ tmp163, i
	beq	.L349	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L349:
	add	r0, ip, #1	@ i, tmp163,
	add	r3, r2, #464	@ ivtmp.1227, tmp164,
	cmp	r0, #64	@ i,
	bne	.L342	@,
	b	.L343	@
.L355:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2130	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L358:
	.align	2
.L357:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
.LFB1379:
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
	cmp	r0, #1	@ InstID,
	bhi	.L370	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L371	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L372	@,
	movw	r5, #40368	@ tmp150,
	movw	ip, #:lower16:.LANCHOR1	@ tmp216,
	mul	r5, r5, r0	@ tmp149, tmp150, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp216,
	mov	r3, #0	@ tmp146,
	str	r3, [r1, #0]	@ tmp146,* PmvNum
	add	r4, r5, ip	@ tmp151, tmp149, tmp216
	ldr	r6, [r4, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L373	@,
	movw	r4, #35112	@ tmp188,
	movw	ip, #:lower16:.LANCHOR0	@ tmp215,
	mul	r4, r4, r0	@ tmp187, tmp188, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp215,
	add	r5, r4, ip	@ tmp189, tmp187, tmp215
	add	r0, r5, #528	@ tmp190, tmp189,
	ldrsb	r5, [r0, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r5, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [r0, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r1, r4, ip	@ tmp203, tmp187, tmp215
	add	ip, r1, #35328	@ ivtmp.1271, tmp203,
	add	r1, ip, #228	@ ivtmp.1271, ivtmp.1271,
.L366:
	ldr	ip, [r1], #4	@ tmp207, <variable>.PmvAddr
	str	ip, [r2, r3, asl #2]	@ tmp207,* PmvAddrTab
	add	r3, r3, #1	@ i.1279, i.1279,
	ldrsb	ip, [r0, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	ip, r3	@ <variable>.s32PmvNum, i.1279
	bgt	.L366	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L370:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2052	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L373:
	movw	r0, #29320	@ tmp155,
	ldr	r6, [r4, r0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	str	r6, [r1, #0]	@ <variable>.stTreePMV.s32PmvNum,* PmvNum
	ldr	r1, [r4, r0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r1, r3	@ <variable>.stTreePMV.s32PmvNum,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	ip, r4, #29184	@ tmp220, tmp151,
	mov	r1, ip	@ ivtmp.1265, tmp220
	add	ip, ip, #136	@ tmp220, tmp220,
	add	r1, r1, #140	@ ivtmp.1265, ivtmp.1265,
.L365:
	ldr	r0, [r1], #4	@ tmp177, <variable>.stTreePMV.PmvAddr
	str	r0, [r2, r3, asl #2]	@ tmp177,* PmvAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	r0, [ip, #0]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r0, r3	@ <variable>.stTreePMV.s32PmvNum, i
	bgt	.L365	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L371:
	mov	r0, r2	@, PmvAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2053	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L372:
	mov	r0, r1	@, PmvNum
	movw	r2, #2054	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
.LFB1378:
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
	cmp	r0, #1	@ InstID,
	bhi	.L390	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L391	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L392	@,
	movw	r5, #40368	@ tmp159,
	movw	ip, #:lower16:.LANCHOR1	@ tmp156,
	mul	r5, r5, r0	@ tmp158, tmp159, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp156,
	mov	r4, #0	@ tmp155,
	str	r4, [r1, #0]	@ tmp155,* DecFsNum
	add	r3, r5, ip	@ tmp160, tmp158, tmp156
	ldr	r6, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L393	@,
	movw	r3, #35112	@ tmp192,
	movw	ip, #:lower16:.LANCHOR0	@ tmp189,
	mul	r0, r3, r0	@ tmp191, tmp192, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp189,
	add	r3, r0, ip	@ tmp193, tmp191, tmp189
	add	r3, r3, #544	@ tmp194, tmp193,
	ldrsb	r3, [r3, #5]	@ D.36970, <variable>.s32DecFsNum
	cmp	r3, #0	@ D.36970,
	str	r3, [r1, #0]	@ D.36970,* DecFsNum
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	ip, ip, r0	@ tmp199, tmp189, tmp191
	mov	r3, r4	@ i.1327, tmp155
	add	r0, ip, #30208	@ ivtmp.1319, tmp199,
	add	ip, r0, #148	@ ivtmp.1319, ivtmp.1319,
.L385:
	ldr	r0, [ip], #40	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i.1327, i.1327,
	ldr	r0, [r1, #0]	@ tmp204,* DecFsNum
	cmp	r0, r3	@ tmp204, i.1327
	bgt	.L385	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L390:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1989	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L393:
	ldrb	r3, [r3, #-527]	@ zero_extendqisi2	@ D.36958, <variable>.s8LevelID
	sxtb	r3, r3	@ D.36958, D.36958
	cmp	r3, #1	@ D.36958,
	beq	.L381	@,
	cmp	r3, #2	@ D.36958,
	beq	.L394	@,
	mov	r0, r4	@, tmp155
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #2009	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L381:
	add	r3, ip, r5	@ tmp175, tmp156, tmp158
	add	r0, r3, #29184	@ pTreeFs, tmp175,
	add	r0, r0, #208	@ pTreeFs, pTreeFs,
.L383:
	ldr	r3, [r0, #0]	@ D.36961, <variable>.s32DecFsNum
	cmp	r3, #0	@ D.36961,
	str	r3, [r1, #0]	@ D.36961,* DecFsNum
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r3, #0	@ i,
.L384:
	ldr	ip, [r0, #60]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, #40	@ ivtmp.1314, ivtmp.1314,
	str	ip, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp188,* DecFsNum
	cmp	ip, r3	@ tmp188, i
	bgt	.L384	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L394:
	add	r0, ip, r5	@ tmp182, tmp156, tmp158
	add	ip, r0, #34560	@ pTreeFs, tmp182,
	add	r0, ip, #40	@ pTreeFs, pTreeFs,
	b	.L383	@
.L391:
	mov	r0, r2	@, DecFsAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1990	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L392:
	mov	r0, r1	@, DecFsNum
	movw	r2, #1991	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
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
	cmp	r0, #1	@ InstID,
	bls	.L396	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1752	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L396:
	movw	r4, #40368	@ tmp145,
	movw	ip, #:lower16:.LANCHOR1	@ tmp142,
	mul	r4, r4, r0	@ tmp144, tmp145, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp142,
	add	r3, r4, ip	@ tmp146, tmp144, tmp142
	ldr	r5, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L408	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L405	@,
	movw	r1, #35112	@ tmp191,
	movw	r3, #:lower16:.LANCHOR0	@ tmp188,
	mul	r0, r1, r0	@ tmp190, tmp191, InstID
	movt	r3, #:upper16:.LANCHOR0	@ tmp188,
	add	ip, r0, r3	@ tmp192, tmp190, tmp188
	add	r1, ip, #544	@ tmp193, tmp192,
	ldrsb	ip, [r1, #5]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, ip	@ PhyFsID, <variable>.s32DecFsNum
	bge	.L404	@,
	add	ip, r2, r2, asl #2	@, tmp199, PhyFsID, PhyFsID,
	movw	r2, #30352	@ tmp196,
	add	r0, r0, ip, asl #3	@, tmp203, tmp190, tmp199,
	add	r3, r0, r3	@ tmp204, tmp203, tmp188
	ldr	r0, [r3, r2]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L405:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L409	@,
.L404:
	mov	r0, #2	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L408:
	ldrb	r3, [r3, #-527]	@ zero_extendqisi2	@ D.36769, <variable>.s8LevelID
	sxtb	r3, r3	@ D.36769, D.36769
	cmp	r3, #1	@ D.36769,
	beq	.L400	@,
	cmp	r3, #2	@ D.36769,
	beq	.L410	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movw	r2, #1768	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L410:
	add	ip, ip, r4	@ tmp168, tmp142, tmp144
	add	r3, ip, #34560	@ pTreeFs, tmp168,
	add	ip, r3, #40	@ pTreeFs, pTreeFs,
.L402:
	cmp	r1, #0	@ ePhyFsType,
	bne	.L403	@,
	ldr	r1, [ip, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L404	@,
	add	r2, r2, r2, asl #2	@, tmp176, PhyFsID, PhyFsID,
	add	r3, ip, r2, asl #3	@, tmp178, pTreeFs, tmp176,
	ldr	r0, [r3, #56]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L409:
	movw	ip, #35112	@ tmp209,
	movw	r3, #:lower16:.LANCHOR0	@ tmp206,
	mul	r0, ip, r0	@ tmp208, tmp209, InstID
	movt	r3, #:upper16:.LANCHOR0	@ tmp206,
	add	r1, r0, r3	@ tmp210, tmp208, tmp206
	add	ip, r1, #544	@ tmp211, tmp210,
	ldrsb	r1, [ip, #6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r1	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L404	@,
	add	r1, r2, r2, asl #2	@, tmp217, PhyFsID, PhyFsID,
	movw	r2, #32912	@ tmp214,
	add	r0, r0, r1, asl #3	@, tmp221, tmp208, tmp217,
	add	r3, r0, r3	@ tmp222, tmp221, tmp206
	ldr	r0, [r3, r2]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L400:
	add	r0, ip, r4	@ tmp161, tmp142, tmp144
	add	ip, r0, #29184	@ pTreeFs, tmp161,
	add	ip, ip, #208	@ pTreeFs, pTreeFs,
	b	.L402	@
.L403:
	cmp	r1, #1	@ ePhyFsType,
	bne	.L404	@,
	ldr	r0, [ip, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L404	@,
	add	r1, r2, r2, asl #2	@, tmp184, PhyFsID, PhyFsID,
	add	ip, ip, r1, asl #3	@, tmp186, pTreeFs, tmp184,
	ldr	r0, [ip, #2616]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
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
	cmp	r0, #1	@ InstID,
	bhi	.L424	@,
	movw	r5, #40368	@ tmp146,
	movw	ip, #:lower16:.LANCHOR1	@ tmp143,
	mul	r5, r5, r0	@ tmp145, tmp146, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp143,
	add	r4, r5, ip	@ tmp147, tmp145, tmp143
	ldr	r6, [r4, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L425	@,
	cmp	r1, #0	@ ePhyFsType,
	beq	.L426	@,
	cmp	r1, #1	@ ePhyFsType,
	beq	.L427	@,
.L420:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L426:
	movw	r4, #35112	@ tmp192,
	movw	ip, #:lower16:.LANCHOR0	@ tmp189,
	mul	r4, r4, r0	@ tmp191, tmp192, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp189,
	add	r0, r4, ip	@ tmp193, tmp191, tmp189
	add	r0, r0, #544	@ tmp194, tmp193,
	ldrsb	r0, [r0, #5]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DecFsNum
	bge	.L420	@,
	add	r2, r2, r2, asl #2	@, tmp200, PhyFsID, PhyFsID,
	mov	r0, r1	@ Ret, ePhyFsType
	add	r4, r4, r2, asl #3	@, tmp204, tmp191, tmp200,
	movw	r2, #30352	@ tmp197,
	add	ip, r4, ip	@ tmp205, tmp204, tmp189
	str	r3, [ip, r2]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L425:
	ldrb	r0, [r4, #-527]	@ zero_extendqisi2	@ D.36720, <variable>.s8LevelID
	sxtb	r0, r0	@ D.36720, D.36720
	cmp	r0, #1	@ D.36720,
	beq	.L416	@,
	cmp	r0, #2	@ D.36720,
	beq	.L428	@,
	mov	r3, r0	@, D.36720
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC16	@,
	movw	r2, #1698	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L416:
	add	r0, ip, r5	@ tmp162, tmp143, tmp145
	add	ip, r0, #29184	@ pTreeFs, tmp162,
	add	ip, ip, #208	@ pTreeFs, pTreeFs,
.L418:
	cmp	r1, #0	@ ePhyFsType,
	bne	.L419	@,
	ldr	r0, [ip, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L420	@,
	add	r2, r2, r2, asl #2	@, tmp177, PhyFsID, PhyFsID,
	mov	r0, r1	@ Ret, ePhyFsType
	add	r1, ip, r2, asl #3	@, tmp179, pTreeFs, tmp177,
	str	r3, [r1, #56]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L427:
	movw	ip, #35112	@ tmp210,
	movw	r1, #:lower16:.LANCHOR0	@ tmp207,
	mul	ip, ip, r0	@ tmp209, tmp210, InstID
	movt	r1, #:upper16:.LANCHOR0	@ tmp207,
	add	r0, ip, r1	@ tmp211, tmp209, tmp207
	add	r0, r0, #544	@ tmp212, tmp211,
	ldrsb	r0, [r0, #6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L420	@,
	add	r2, r2, r2, asl #2	@, tmp218, PhyFsID, PhyFsID,
	mov	r0, #0	@ Ret,
	add	ip, ip, r2, asl #3	@, tmp222, tmp209, tmp218,
	movw	r2, #32912	@ tmp215,
	add	r1, ip, r1	@ tmp223, tmp222, tmp207
	str	r3, [r1, r2]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L428:
	add	r0, ip, r5	@ tmp169, tmp143, tmp145
	add	ip, r0, #34560	@ pTreeFs, tmp169,
	add	ip, ip, #40	@ pTreeFs, pTreeFs,
	b	.L418	@
.L419:
	cmp	r1, #1	@ ePhyFsType,
	bne	.L420	@,
	ldr	r0, [ip, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L420	@,
	add	r1, r2, r2, asl #2	@, tmp185, PhyFsID, PhyFsID,
	mov	r0, #0	@ Ret,
	add	ip, ip, r1, asl #3	@, tmp187, pTreeFs, tmp185,
	str	r3, [ip, #2616]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L424:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1682	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1366:
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
	cmp	r0, #1	@ InstID,
	mov	r5, r0	@ InstID, InstID
	mov	r6, r2	@ IsRef, IsRef
	bhi	.L449	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L450	@,
	movw	r2, #40368	@ tmp151,
	movw	r7, #:lower16:.LANCHOR1	@ tmp281,
	mul	r3, r2, r0	@ tmp150, tmp151, InstID
	movt	r7, #:upper16:.LANCHOR1	@ tmp281,
	add	ip, r3, r7	@ tmp152, tmp150, tmp281
	ldr	r0, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	moveq	r4, #464	@ tmp159,
	movwne	r4, #35112	@ tmp169,
	mlaeq	r4, r4, r1, r3	@ tmp162, tmp159, LogicFrameID, tmp150
	movne	r3, #464	@ tmp167,
	mulne	r4, r4, r5	@ tmp168, tmp169, InstID
	mlane	r4, r3, r1, r4	@ tmp170, tmp167, LogicFrameID, tmp168
	ldrne	r3, .L458	@ tmp171,
	addeq	r4, r4, r7	@ tmp163, tmp162, tmp281
	subeq	r4, r4, #376	@ pstLogicFs, tmp163,
	addne	r4, r4, r3	@ pstLogicFs, tmp170, tmp171
	uxtb	r3, r6	@ D.36548, IsRef
	ldrsb	r2, [r4, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r3, [r4, #0]	@ D.36548, <variable>.s32IsRef
	cmp	r2, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r2, [r4, #440]	@ D.36552, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36552,
	beq	.L435	@,
	ldr	r1, [r4, #432]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r0, [r2, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r1	@ <variable>.u32Tick, <variable>.u32Tick
	streqb	r3, [r2, #0]	@ D.36548, <variable>.IsDecRef
.L435:
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.36559, <variable>.PmvIdc
	cmp	r2, #19	@ D.36559,
	bhi	.L436	@,
	cmp	r6, #1	@ IsRef,
	beq	.L451	@,
	cmp	r6, #0	@ IsRef,
	bne	.L438	@,
	ldr	ip, [r4, #436]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	beq	.L452	@,
.L441:
	ldr	r3, [r4, #444]	@ D.36583, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36583,
	beq	.L444	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #1	@ <variable>.DispState,
	beq	.L453	@,
.L445:
	ldr	r0, [r3, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r1, [r4, #432]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L454	@,
.L444:
	movw	r2, #40368	@ tmp252,
	mla	r1, r2, r5, r7	@ tmp253, tmp252, InstID, tmp281
	ldr	r3, [r1, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L455	@,
.L446:
	cmp	r6, #0	@ IsRef,
	streq	r6, [r4, #440]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L449:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1442	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L450:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1443	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L451:
	ldr	r3, [r4, #436]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r3, #1	@ <variable>.eLfsPmvState,
	beq	.L456	@,
.L438:
	ldr	r3, [r4, #444]	@ D.36583, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36583,
	bne	.L445	@,
	b	.L444	@
.L436:
	sxtb	r2, r2	@, D.36559
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ IsRef,
	beq	.L441	@,
	b	.L438	@
.L455:
	ldr	r3, [r4, #440]	@ temp.1414, <variable>.pstDecodeFs
	cmp	r3, #0	@ temp.1414,
	beq	.L447	@,
	ldr	r0, [r3, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r4, #432]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, ip	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L457	@,
.L447:
	ldr	r3, [r4, #444]	@ temp.1417, <variable>.pstDispOutFs
	cmp	r3, #0	@ temp.1417,
	beq	.L446	@,
	ldr	r0, [r3, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r4, #432]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r2	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L446	@,
	movw	r0, #40368	@ tmp274,
	ldrsb	ip, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mla	r7, r0, r5, r7	@ tmp275, tmp274, InstID, tmp281
	ldr	r2, [r3, #4]	@, <variable>.PhyFsID
	mov	r0, r5	@, InstID
	mov	r3, #1	@,
	add	r1, r7, ip	@ tmp276, tmp275, <variable>.s32LogicFsID
	sub	lr, r1, #488	@ tmp277, tmp276,
	ldrsb	r1, [lr, #5]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L446	@
.L454:
	cmp	r6, #1	@ IsRef,
	bne	.L444	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #1	@ <variable>.DispState,
	moveq	ip, #2	@ tmp245,
	streqb	ip, [r3, #2]	@ tmp245, <variable>.DispState
	streqb	ip, [r4, #1]	@ tmp245, <variable>.s32DispState
	b	.L444	@
.L456:
	movw	r3, #40368	@ tmp182,
	mov	ip, #2	@ tmp206,
	mla	r0, r3, r5, r7	@ tmp183, tmp182, InstID, tmp281
	ldr	r1, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	sxtabeq	r0, r0, r2	@ tmp192, tmp183, D.36559
	movwne	r0, #:lower16:.LANCHOR0	@ tmp196,
	movtne	r0, #:upper16:.LANCHOR0	@ tmp196,
	movwne	r1, #35112	@ tmp200,
	streqb	r6, [r0, #-500]	@ IsRef, <variable>.IsPmvInUse
	mlane	r0, r1, r5, r0	@ tmp201, tmp200, InstID, tmp196
	sxtabne	r2, r0, r2	@ tmp202, tmp201, D.36559
	strneb	r6, [r2, #529]	@ IsRef, <variable>.IsPmvInUse
	str	ip, [r4, #436]	@ tmp206, <variable>.eLfsPmvState
	b	.L438	@
.L453:
	mov	r2, #0	@ tmp240,
	strb	r2, [r3, #2]	@ tmp240, <variable>.DispState
	b	.L438	@
.L452:
	movw	r3, #40368	@ tmp211,
	mla	r0, r3, r5, r7	@ tmp212, tmp211, InstID, tmp281
	ldr	r1, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	sxtabeq	r0, r0, r2	@ tmp221, tmp212, D.36559
	movwne	r0, #:lower16:.LANCHOR0	@ tmp225,
	movtne	r0, #:upper16:.LANCHOR0	@ tmp225,
	movwne	r1, #35112	@ tmp229,
	streqb	r6, [r0, #-500]	@ IsRef, <variable>.IsPmvInUse
	mlane	r0, r1, r5, r0	@ tmp230, tmp229, InstID, tmp225
	sxtabne	r2, r0, r2	@ tmp231, tmp230, D.36559
	strneb	r6, [r2, #529]	@ IsRef, <variable>.IsPmvInUse
	mov	r2, #0	@ tmp235,
	str	r2, [r4, #436]	@ tmp235, <variable>.eLfsPmvState
	str	r2, [r4, #452]	@ tmp235, <variable>.PmvAddr
	b	.L441	@
.L457:
	ldrsb	ip, [r4, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mov	r0, r5	@, InstID
	ldr	r2, [r3, #4]	@, <variable>.PhyFsID
	mov	r3, #0	@,
	add	r1, r1, ip	@ tmp264, tmp253, <variable>.s32LogicFsID
	sub	lr, r1, #488	@ tmp265, tmp264,
	ldrsb	r1, [lr, #5]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L447	@
.L459:
	.align	2
.L458:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
.LFB1365:
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
	cmp	r0, #1	@ InstID,
	bhi	.L468	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L469	@,
	movw	r2, #40368	@ tmp145,
	movw	r3, #:lower16:.LANCHOR1	@ tmp230,
	mul	r2, r2, r0	@ tmp144, tmp145, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp230,
	add	ip, r2, r3	@ tmp146, tmp144, tmp230
	ldr	r4, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L470	@,
	movw	r3, #35112	@ tmp194,
	mov	r2, #464	@ tmp192,
	mul	ip, r3, r0	@ tmp193, tmp194, InstID
	movw	r3, #:lower16:.LANCHOR0	@ tmp229,
	mla	r4, r2, r1, ip	@ tmp195, tmp192, LogicFrameID, tmp193
	movt	r3, #:upper16:.LANCHOR0	@ tmp229,
	add	r2, r4, r3	@ tmp196, tmp195, tmp229
	ldr	r4, [r2, #1044]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r4, #2	@ <variable>.eLfsPmvState,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r2, [r2, #612]	@ zero_extendqisi2	@ temp.1449, <variable>.PmvIdc
	cmp	r2, #19	@ temp.1449,
	addls	ip, ip, r3	@ tmp214, tmp193, tmp229
	sxtabls	r2, ip, r2	@ tmp215, tmp214, temp.1449
	movls	ip, #0	@ tmp217,
	strlsb	ip, [r2, #529]	@ tmp217, <variable>.IsPmvInUse
	movw	ip, #35112	@ tmp224,
	mul	r0, ip, r0	@ tmp223, tmp224, InstID
	mov	r2, #464	@ tmp222,
	mla	ip, r2, r1, r0	@ tmp225, tmp222, LogicFrameID, tmp223
	mov	r1, #0	@ tmp228,
	add	r0, ip, r3	@ tmp226, tmp225, tmp229
	str	r1, [r0, #1044]	@ tmp228, <variable>.eLfsPmvState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L468:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1398	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L469:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1399	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L470:
	mov	r4, #464	@ tmp152,
	mla	r2, r4, r1, r2	@ tmp155, tmp152, LogicFrameID, tmp144
	add	r2, r2, r3	@ tmp156, tmp155, tmp230
	ldr	r4, [r2, #60]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r4, #2	@ <variable>.eLfsPmvState,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r2, [r2, #-372]	@ zero_extendqisi2	@ D.36516, <variable>.PmvIdc
	cmp	r2, #16	@ D.36516,
	sxtabls	r2, ip, r2	@ tmp175, tmp146, D.36516
	subls	r2, r2, #504	@ tmp176, tmp175,
	movls	ip, #0	@ tmp177,
	strlsb	ip, [r2, #4]	@ tmp177, <variable>.IsPmvInUse
	movw	ip, #40368	@ tmp184,
	mul	r0, ip, r0	@ tmp183, tmp184, InstID
	mov	r2, #464	@ tmp182,
	mla	r1, r2, r1, r0	@ tmp185, tmp182, LogicFrameID, tmp183
	mov	r0, #0	@ tmp188,
	add	ip, r1, r3	@ tmp186, tmp185, tmp230
	add	r3, ip, #56	@ tmp187, tmp186,
	str	r0, [r3, #4]	@ tmp188, <variable>.eLfsPmvState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_GetDecodePmvTable
	.type	FSP_GetDecodePmvTable, %function
FSP_GetDecodePmvTable:
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
	cmp	r0, #1	@ InstID,
	bhi	.L482	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L483	@,
	cmp	r2, #0	@ pPmvNum,
	beq	.L484	@,
	movw	r4, #40368	@ tmp153,
	movw	r3, #:lower16:.LANCHOR1	@ tmp150,
	mul	r4, r4, r0	@ tmp152, tmp153, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp150,
	add	ip, r4, r3	@ tmp154, tmp152, tmp150
	ldr	ip, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	beq	.L485	@,
	movw	r4, #35112	@ tmp171,
	ldr	r3, .L486	@ tmp169,
	mul	r0, r4, r0	@ tmp170, tmp171, InstID
	add	ip, r3, r0	@ pstInst, tmp169, tmp170
	ldrsb	r4, [r3, r0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r4, [r2, #0]	@ <variable>.s32PmvNum,* pPmvNum
	ldrsb	r2, [r3, r0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r2, #0	@ <variable>.s32PmvNum,
	ldmlefd	sp, {r3, r4, fp, sp, pc}	@
	mov	r3, #0	@ ivtmp.1488,
	mov	r2, r3	@ i.1494, ivtmp.1488
.L478:
	add	r0, ip, r3	@ tmp174, pstInst, ivtmp.1488
	add	r2, r2, #1	@ i.1494, i.1494,
	add	r0, r0, #34816	@ tmp176, tmp174,
	ldr	r0, [r0, #212]	@ tmp177, <variable>.PmvAddr
	str	r0, [r1, r3]	@ tmp177,* ivtmp.1488
	add	r3, r3, #4	@ ivtmp.1488, ivtmp.1488,
	ldrsb	r0, [ip, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r2	@ <variable>.s32PmvNum, i.1494
	bgt	.L478	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L482:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #691	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L485:
	sub	ip, r3, #528	@ tmp158, tmp150,
	movw	r0, #29848	@ tmp162,
	add	r4, ip, r4	@ pstTreeInst, tmp158, tmp152
	ldr	r3, [r4, r0]	@ D.36084, <variable>.stTreePMV.s32PmvNum
	cmp	r3, #0	@ D.36084,
	str	r3, [r2, #0]	@ D.36084,* pPmvNum
	ldmlefd	sp, {r3, r4, fp, sp, pc}	@
	mov	r3, #0	@ ivtmp.1482,
	mov	ip, r3	@ i, ivtmp.1482
.L477:
	add	r0, r4, r3	@ tmp163, pstTreeInst, ivtmp.1482
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #29696	@ tmp165, tmp163,
	ldr	r0, [r0, #156]	@ tmp166, <variable>.stTreePMV.PmvAddr
	str	r0, [r1, r3]	@ tmp166,* ivtmp.1482
	add	r3, r3, #4	@ ivtmp.1482, ivtmp.1482,
	ldr	r0, [r2, #0]	@ tmp167,* pPmvNum
	cmp	r0, ip	@ tmp167, i
	bgt	.L477	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L483:
	mov	r0, r1	@, PhyAddr
	mov	r2, #692	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L484:
	mov	r0, r2	@, pPmvNum
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #693	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L487:
	.align	2
.L486:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_GetDecodePmvTable, .-FSP_GetDecodePmvTable
	.align	2
	.global	FSP_GetDecodeFrameTable
	.type	FSP_GetDecodeFrameTable, %function
FSP_GetDecodeFrameTable:
	.fnstart
.LFB1358:
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
	cmp	r0, #1	@ InstID,
	bhi	.L504	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L505	@,
	cmp	r2, #0	@ pFsNum,
	beq	.L506	@,
	movw	r4, #40368	@ tmp154,
	movw	ip, #:lower16:.LANCHOR1	@ tmp151,
	mul	r4, r4, r0	@ tmp153, tmp154, InstID
	movt	ip, #:upper16:.LANCHOR1	@ tmp151,
	add	r3, r4, ip	@ tmp155, tmp153, tmp151
	ldr	r5, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #1	@ <variable>.eFspInstState,
	beq	.L507	@,
	ldr	r3, .L509	@ tmp185,
	movw	ip, #35112	@ tmp187,
	mla	r0, ip, r0, r3	@ pstInst, tmp187, InstID, tmp185
	ldrsb	r3, [r0, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	r3, [r2, #0]	@ <variable>.s32DecFsNum,* pFsNum
	ldrsb	r2, [r0, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	r2, r0, #29696	@ ivtmp.1533, pstInst,
	mov	r3, #0	@ i.1541,
	add	r2, r2, #132	@ ivtmp.1533, ivtmp.1533,
.L499:
	ldr	ip, [r2], #40	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r1, r3, asl #2]	@ <variable>.PhyAddr,* PhyAddr
	add	r3, r3, #1	@ i.1541, i.1541,
	ldrsb	ip, [r0, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, i.1541
	bgt	.L499	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L504:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #635	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L507:
	ldrb	r3, [r3, #-527]	@ zero_extendqisi2	@ D.36041, <variable>.s8LevelID
	sxtb	r3, r3	@ D.36041, D.36041
	cmp	r3, #1	@ D.36041,
	beq	.L495	@,
	cmp	r3, #2	@ D.36041,
	beq	.L508	@,
	movw	r1, #:lower16:.LC21	@,
	movw	r2, #653	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L495:
	add	r0, ip, r4	@ tmp170, tmp151, tmp153
	add	ip, r0, #29184	@ pTreeFs, tmp170,
	add	ip, ip, #208	@ pTreeFs, pTreeFs,
.L497:
	ldr	r0, [ip, #0]	@ D.36044, <variable>.s32DecFsNum
	cmp	r0, #0	@ D.36044,
	str	r0, [r2, #0]	@ D.36044,* pFsNum
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r3, #0	@ i,
.L498:
	ldr	r0, [ip, #60]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	ip, ip, #40	@ ivtmp.1528, ivtmp.1528,
	str	r0, [r1, r3, asl #2]	@ <variable>.PhyAddr,* PhyAddr
	add	r3, r3, #1	@ i, i,
	ldr	r0, [r2, #0]	@ tmp183,* pFsNum
	cmp	r0, r3	@ tmp183, i
	bgt	.L498	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L508:
	add	ip, ip, r4	@ tmp177, tmp151, tmp153
	add	r3, ip, #34560	@ pTreeFs, tmp177,
	add	ip, r3, #40	@ pTreeFs, pTreeFs,
	b	.L497	@
.L505:
	mov	r0, r1	@, PhyAddr
	mov	r2, #636	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L506:
	mov	r0, r2	@, pFsNum
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #637	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L510:
	.align	2
.L509:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_GetDecodeFrameTable, .-FSP_GetDecodeFrameTable
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
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
	cmp	r0, #1	@ InstID,
	bhi	.L516	@,
	movw	r1, #:lower16:.LANCHOR1	@ tmp136,
	movt	r1, #:upper16:.LANCHOR1	@ tmp136,
	movw	ip, #40368	@ tmp139,
	mla	r3, ip, r0, r1	@ tmp140, tmp139, InstID, tmp136
	movw	ip, #:lower16:.LANCHOR0	@ tmp150,
	movt	ip, #:upper16:.LANCHOR0	@ tmp150,
	movw	r1, #35112	@ tmp153,
	mla	r0, r1, r0, ip	@ tmp154, tmp153, InstID, tmp150
	ldr	r2, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	moveq	r2, #0	@ tmp149,
	streq	r2, [r3, #-416]	@ tmp149, <variable>.eFspInstState
	movw	r2, #35544	@ tmp151,
	ldr	r3, [r0, r2]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	moveq	r3, #0	@ tmp163,
	streq	r3, [r0, r2]	@ tmp163, <variable>.eFspInstState
	ldmfd	sp, {fp, sp, pc}	@
.L516:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #103	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
.LFB1350:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	movw	r0, #35544	@ tmp134,
	ldr	r3, [r5, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L523	@,
.L518:
	movw	r4, #:lower16:.LANCHOR1	@ tmp145,
	movt	r4, #:upper16:.LANCHOR1	@ tmp145,
	ldr	r1, [r4, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L524	@,
.L519:
	mov	ip, #70656	@ tmp139,
	ldr	r2, [r5, ip]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L525	@,
	movw	r0, #39952	@ tmp142,
	ldr	r3, [r4, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
.L526:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L525:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	movw	r0, #39952	@ tmp142,
	ldr	r3, [r4, r0]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L526	@
.L524:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L519	@
.L523:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L518	@
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
.LFB1361:
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
	movw	r1, #40368	@ tmp149,
	mul	r1, r1, r0	@ tmp148, tmp149, InstID
	movw	r2, #:lower16:.LANCHOR1	@ tmp146,
	movt	r2, #:upper16:.LANCHOR1	@ tmp146,
	add	r3, r1, r2	@ tmp150, tmp148, tmp146
	ldr	r4, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L565	@,
	ldr	r1, .L569	@ tmp179,
	movw	r4, #35112	@ tmp181,
	mla	r2, r4, r0, r1	@ pstInst, tmp181, InstID, tmp179
	ldrsb	r4, [r2, #21]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L534	@,
	add	r2, r2, #29696	@ ivtmp.1624, pstInst,
	sub	r3, r4, #1	@ tmp201, TotalFsNum,
	and	ip, r3, #1	@ tmp203, tmp201,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #120]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L566	@,
.L551:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #40	@ ivtmp.1624, ivtmp.1624,
	ble	.L534	@,
	cmp	ip, #0	@ tmp203,
	beq	.L539	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L553	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L536	@,
.L553:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #40	@ ivtmp.1624, ivtmp.1624,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L534	@,
.L539:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #40	@ tmp205, ivtmp.1624,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L538	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L536	@,
.L538:
	ldrsb	r2, [r2, #40]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp204, i
	bne	.L556	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L536	@,
.L556:
	add	r3, r2, #1	@ i, tmp204,
	add	r2, r1, #40	@ ivtmp.1624, tmp205,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L539	@,
.L534:
	sub	r1, fp, #20	@ tmp188,,
	mov	r5, #0	@ tmp185,
	sub	r2, fp, #32	@,,
	sub	r3, fp, #28	@,,
	str	r5, [r1, #-4]!	@ tmp185, RefNum
	str	r5, [fp, #-28]	@ tmp185, NewNum
	str	r5, [fp, #-32]	@ tmp185, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [fp, #-24]	@ RefNum.451, RefNum
	ldr	r3, [fp, #-32]	@ ReadNum.450, ReadNum
	ldr	ip, [fp, #-28]	@ NewNum.449, NewNum
	add	r0, r2, r3	@ tmp191, RefNum.451, ReadNum.450
	add	r1, r0, #2	@ tmp192, tmp191,
	add	r0, r1, ip	@ tmp193, tmp192, NewNum.449
	cmp	r0, r4	@ tmp193, TotalFsNum
	blt	.L567	@,
.L540:
	mov	r0, #0	@ D.36198,
.L533:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L566:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L551	@,
.L536:
	cmp	r3, r4	@ i, TotalFsNum
	blt	.L540	@,
	b	.L534	@
.L565:
	ldrb	r3, [r3, #-527]	@ zero_extendqisi2	@ D.36195, <variable>.s8LevelID
	sxtb	r3, r3	@ D.36195, D.36195
	cmp	r3, #1	@ D.36195,
	beq	.L530	@,
	cmp	r3, #2	@ D.36195,
	beq	.L568	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	mov	r2, #968	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36198, <variable>.eFspInstState
	b	.L533	@
.L567:
	mov	r0, r5	@, tmp185
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	ip, [sp, #0]	@ NewNum.449,
	str	r4, [sp, #4]	@ TotalFsNum,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36198,
	b	.L533	@
.L568:
	add	r3, r2, r1	@ tmp172, tmp146, tmp148
	add	ip, r3, #34560	@ pTreeFs, tmp172,
	add	r2, ip, #40	@ pTreeFs, pTreeFs,
.L532:
	ldr	r4, [r2, #0]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L534	@,
	ldrsb	r1, [r2, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	sub	r3, r4, #1	@ tmp196, TotalFsNum,
	and	ip, r3, #1	@ tmp198, tmp196,
	mov	r3, #0	@ i,
	cmp	r1, r3	@ <variable>.IsDecRef,
	bne	.L544	@,
	ldrsb	r1, [r2, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L536	@,
.L544:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #40	@ ivtmp.1620, pTreeFs,
	ble	.L534	@,
	cmp	ip, #0	@ tmp198,
	beq	.L537	@,
	ldrsb	ip, [r2, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L546	@,
	ldrsb	r1, [r2, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L536	@,
.L546:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #40	@ ivtmp.1620, ivtmp.1620,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L534	@,
.L537:
	ldrsb	ip, [r2, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #40	@ tmp200, ivtmp.1620,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L535	@,
	ldrsb	r2, [r2, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L536	@,
.L535:
	ldrsb	ip, [r1, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	ip, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp199, i
	bne	.L549	@,
	ldrsb	ip, [r1, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L536	@,
.L549:
	add	r3, r2, #1	@ i, tmp199,
	add	r2, r1, #40	@ ivtmp.1620, tmp200,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L537	@,
	b	.L534	@
.L530:
	add	r4, r2, r1	@ tmp165, tmp146, tmp148
	add	r2, r4, #29184	@ pTreeFs, tmp165,
	add	r2, r2, #208	@ pTreeFs, pTreeFs,
	b	.L532	@
.L570:
	.align	2
.L569:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
.LFB1360:
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
	cmp	r0, #1	@ InstID,
	mov	r6, r0	@ InstID, InstID
	bhi	.L601	@,
	movw	r1, #40368	@ tmp153,
	movw	r3, #:lower16:.LANCHOR1	@ tmp150,
	mul	r1, r1, r0	@ tmp152, tmp153, InstID
	movt	r3, #:upper16:.LANCHOR1	@ tmp150,
	add	r2, r1, r3	@ tmp154, tmp152, tmp150
	ldr	r0, [r2, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	beq	.L602	@,
	ldr	r3, .L603	@ tmp191,
	movw	r0, #35112	@ tmp193,
	mla	r2, r0, r6, r3	@ pstInst, tmp193, InstID, tmp191
	ldrb	ip, [r2, #21]	@ zero_extendqisi2	@ D.36149, <variable>.s32DecFsNum
	cmp	ip, #0	@ D.36149,
	beq	.L575	@,
	sxtb	ip, ip	@ D.36157, D.36149
	cmp	ip, #0	@ D.36157,
	ble	.L579	@,
	add	r2, r2, #29696	@ ivtmp.1661, pstInst,
	sub	r3, ip, #1	@ tmp204, D.36157,
	and	r0, r3, #1	@ tmp206, tmp204,
	mov	r3, #0	@ i.1667,
	ldrsb	r1, [r2, #120]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	bne	.L591	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L584	@,
.L591:
	mov	r3, #1	@ i.1667,
	cmp	r3, ip	@ i.1667, D.36157
	add	r2, r2, #40	@ ivtmp.1661, ivtmp.1661,
	bge	.L579	@,
	cmp	r0, #0	@ tmp206,
	beq	.L585	@,
	ldrsb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	bne	.L593	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L584	@,
.L593:
	add	r3, r3, #1	@ i.1667, i.1667,
	add	r2, r2, #40	@ ivtmp.1661, ivtmp.1661,
	cmp	r3, ip	@ i.1667, D.36157
	bge	.L579	@,
.L585:
	ldrsb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #40	@ tmp208, ivtmp.1661,
	cmp	r0, #0	@ <variable>.IsDecRef,
	bne	.L583	@,
	ldrsb	r0, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	beq	.L584	@,
.L583:
	ldrsb	r2, [r2, #40]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i.1667, i.1667,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp207, i.1667
	bne	.L596	@,
	ldrsb	r0, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #0	@ <variable>.DispState,
	beq	.L584	@,
.L596:
	add	r3, r2, #1	@ i.1667, tmp207,
	add	r2, r1, #40	@ ivtmp.1661, tmp208,
	cmp	r3, ip	@ i.1667, D.36157
	blt	.L585	@,
.L579:
	mov	r0, r6	@, InstID
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@ D.36159
	mvnne	r0, #0	@, D.36125,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L584:
	cmp	r3, ip	@ i.1667, D.36157
	bge	.L579	@,
.L575:
	mov	r0, #1	@ D.36125,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L602:
	sub	r2, r2, #528	@ tmp162, tmp154,
	ldrsb	r2, [r2, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r2, #1	@ <variable>.s8LevelID,
	beq	.L576	@,
	cmp	r2, #2	@ <variable>.s8LevelID,
	bne	.L575	@,
	add	r0, r3, r1	@ tmp176, tmp150, tmp152
	add	ip, r0, #34560	@ pTreeFs, tmp176,
	add	r7, ip, #40	@ pTreeFs, pTreeFs,
.L578:
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	beq	.L575	@,
	ble	.L579	@,
	add	r8, r6, r6, asl #5	@, tmp201, InstID, InstID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp199,
	movt	r5, #:upper16:.LANCHOR0	@ tmp199,
	mov	r4, r7	@ ivtmp.1656, pTreeFs
	add	r8, r5, r8, asl #3	@, tmp203, tmp199, tmp201,
	mov	r5, #0	@ i,
.L582:
	ldrsb	r1, [r4, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L580	@,
	ldrsb	r2, [r4, #50]	@ <variable>.DispState, <variable>.DispState
	mov	r0, r6	@, InstID
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L580	@,
	ldrb	ip, [r8, #0]	@ zero_extendqisi2	@ <variable>.SwitchFlag, <variable>.SwitchFlag
	cmp	ip, #1	@ <variable>.SwitchFlag,
	bne	.L581	@,
	ldr	r1, [r4, #60]	@, <variable>.PhyAddr
	bl	FSP_IsFsInVO	@
	cmp	r0, #0	@,
	beq	.L588	@,
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L580:
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #40	@ ivtmp.1656, ivtmp.1656,
	cmp	r3, r5	@ <variable>.s32DecFsNum, i
	bgt	.L582	@,
	b	.L579	@
.L576:
	add	r3, r3, r1	@ tmp169, tmp150, tmp152
	add	r7, r3, #29184	@ pTreeFs, tmp169,
	add	r7, r7, #208	@ pTreeFs, pTreeFs,
	b	.L578	@
.L601:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #734	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36125,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L588:
	ldr	r3, [r7, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L581:
	cmp	r3, r5	@ <variable>.s32DecFsNum, i
	bgt	.L575	@,
	b	.L579	@
.L604:
	.align	2
.L603:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
	.fnstart
.LFB1351:
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
	cmp	r0, #1	@ InstID,
	bls	.L606	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #86	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35659,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L606:
	movw	r1, #35112	@ tmp142,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	mul	r0, r1, r0	@ tmp141, tmp142, InstID
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	movw	r4, #35544	@ tmp140,
	add	r5, r0, r3	@ tmp143, tmp141, tmp139
	ldr	r6, [r5, r4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.35659,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r2, r3, #528	@ tmp147, tmp139,
	add	r0, r2, r0	@, tmp147, tmp141
	bl	__memzero	@
	mov	r3, #1	@ tmp157,
	mov	r0, r6	@ D.35659, <variable>.eFspInstState
	str	r3, [r5, r4]	@ tmp157, <variable>.eFspInstState
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1356:
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
	cmp	r0, #1	@ InstID,
	mov	r5, r0	@ InstID, InstID
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bhi	.L619	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L620	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp203,
	movt	r8, #:upper16:.LANCHOR0	@ tmp203,
	movw	r0, #35112	@ tmp144,
	movw	r3, #35544	@ tmp142,
	mla	r2, r0, r5, r8	@ tmp145, tmp144, InstID, tmp203
	ldr	r3, [r2, r3]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	movweq	r3, #:lower16:.LANCHOR1	@ tmp204,
	movteq	r3, #:upper16:.LANCHOR1	@ tmp204,
	beq	.L614	@,
	movw	r3, #:lower16:.LANCHOR1	@ tmp204,
	movt	r3, #:upper16:.LANCHOR1	@ tmp204,
	movw	ip, #40368	@ tmp151,
	mla	r6, ip, r5, r3	@ tmp152, tmp151, InstID, tmp204
	ldr	r1, [r6, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	bne	.L621	@,
.L614:
	movw	r2, #40368	@ tmp162,
	mov	r6, #0	@ tmp157,
	mla	ip, r2, r5, r3	@ tmp163, tmp162, InstID, tmp204
	strb	r6, [r4, #0]	@ tmp157, <variable>.s32DispLoopEnable
	ldr	r3, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L622	@,
	movw	sl, #35112	@ tmp178,
	sub	r7, fp, #52	@ tmp181,,
	mul	sl, sl, r5	@ tmp177, tmp178, InstID
	add	r8, sl, r8	@ tmp179, tmp177, tmp203
	add	lr, r8, #556	@ tmp182, tmp179,
	add	r8, r8, #572	@ tmp199, tmp179,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp182,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp181,,,,
	mov	r0, r5	@, InstID
	bl	FSP_DisableInstance	@
	mov	r0, r5	@, InstID
	bl	FSP_EnableInstance	@
	ldmia	r7, {r0, r1, r2, r3}	@ tmp181,,,,
	ldr	ip, .L623	@ tmp189,
	add	ip, sl, ip	@ tmp190, tmp177, tmp189
	stmia	ip, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	ip, r8	@ tmp209, tmp199
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp209,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp209,,,,
	ldr	r2, [r4, #0]	@ tmp201,* pstFspInstCfg
	str	r2, [ip, #0]	@ tmp201,
.L612:
	mov	r0, r6	@, D.35843
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L622:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	sub	ip, ip, #412	@ tmp172, tmp163,
	mov	r5, ip	@ tmp206, tmp172
	stmia	r5!, {r0, r1, r2, r3}	@ tmp206,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp206,,,,
	ldr	r0, [r4, #0]	@ tmp174,* pstFspInstCfg
	str	r0, [r5, #0]	@ tmp174,
	b	.L612	@
.L619:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #337	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35843,
	b	.L612	@
.L621:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #340	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35843,
	b	.L612	@
.L620:
	mov	r0, r1	@, pstFspInstCfg
	movw	r2, #338	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35843,
	b	.L612	@
.L624:
	.align	2
.L623:
	.word	.LANCHOR0+556
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	movw	r1, #:lower16:70224	@,
	add	r0, r4, #528	@, tmp133,
	movt	r1, #:upper16:70224	@,
	bl	__memzero	@
	ldr	r0, .L627	@,
	movw	r1, #:lower16:80736	@,
	movt	r1, #:upper16:80736	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp133
	mov	r1, #528	@,
	bl	__memzero	@
	movw	r2, #266	@ tmp145,
	mvn	r3, #0	@ tmp143,
	strh	r3, [r4, r2]	@ movhi	@ tmp143, <variable>.history
	strh	r3, [r4, #2]	@ movhi	@ tmp143, <variable>.history
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L628:
	.align	2
.L627:
	.word	.LANCHOR1-528
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	Tree_FSP_InitInstance
	.type	Tree_FSP_InitInstance, %function
Tree_FSP_InitInstance:
	.fnstart
.LFB1390:
	@ args = 0, pretend = 0, frame = 640
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #668
	sub	sp, sp, #668	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #40368	@ tmp180,
	mul	r6, r3, r0	@ tmp179, tmp180, InstID
	ldr	r8, .L666	@ tmp177,
	str	r1, [fp, #-672]	@ pTreeParam, %sfp
	mov	r7, r0	@ InstID, InstID
	add	r4, r8, r6	@ pstTreeFsp, tmp177, tmp179
	ldr	r5, [r4, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	beq	.L630	@,
.L658:
	mvn	ip, #0	@ D.37529,
.L631:
	mov	r0, ip	@, D.37529
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L630:
	mov	r1, r3	@, tmp180
	mov	r0, r4	@, pstTreeFsp
	bl	__memzero	@
	strb	r7, [r8, r6]	@ InstID, <variable>.s8InstID
	ldr	r0, [fp, #-672]	@, %sfp
	movw	sl, #:lower16:g_vdm_hal_fun_ptr	@ tmp190,
	movt	sl, #:upper16:g_vdm_hal_fun_ptr	@ tmp190,
	movw	r8, #29920	@ tmp187,
	movw	r3, #35128	@ tmp188,
	ldr	r9, [r0, #16]	@ <variable>.s32DecNum, <variable>.s32DecNum
	ldrsb	r1, [r0, #1]	@ <variable>.s8Btl1Dt2DDisable, <variable>.s8Btl1Dt2DDisable
	ldr	r6, [r0, #12]	@ <variable>.s32DispNum, <variable>.s32DispNum
	ldr	ip, [sl, #28]	@ D.37502, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	mla	r6, r6, r1, r9	@ D.37495, <variable>.s32DispNum, <variable>.s8Btl1Dt2DDisable, <variable>.s32DecNum
	cmp	ip, #0	@ D.37502,
	str	r6, [r4, r8]	@ D.37495, <variable>.stTreeHD_1.s32DecFsNum
	mov	r2, r6, asl #1	@ tmp189, D.37495,
	str	r2, [r4, r3]	@ tmp189, <variable>.stTreeHD_2.s32DecFsNum
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ D.37498, <variable>.s8DispLoopEnable
	ldr	r9, [r0, #12]	@ temp.1809, <variable>.s32DispNum
	beq	.L632	@,
	ldr	r2, [fp, #-672]	@, %sfp
	mov	lr, #40	@ tmp196,
	ldr	r3, [fp, #-672]	@, %sfp
	ldr	r1, [r2, #24]	@ <variable>.TotalSize, <variable>.TotalSize
	ldr	r0, [r2, #20]	@ <variable>.MemAddr, <variable>.MemAddr
	ldmib	r3, {r2, r3}	@ phole ldm
	str	r5, [sp, #8]	@ <variable>.eFspInstState,
	str	r5, [sp, #0]	@ <variable>.eFspInstState,
	sub	r5, fp, #664	@,,
	str	lr, [sp, #4]	@ tmp196,
	str	r7, [sp, #12]	@ InstID,
	str	r5, [sp, #16]	@,
	blx	ip	@ D.37502
	sxtb	r1, r0	@ D.37509,
	cmp	r1, #0	@ D.37509,
	bne	.L632	@,
	sxtb	sl, sl	@ D.37498, D.37498
	ldr	ip, [fp, #-396]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mla	r6, r9, sl, r6	@ tmp204, temp.1809, D.37498, D.37495
	cmp	r6, ip	@ tmp204, MemArrange.ValidFrameNum
	bgt	.L632	@,
	ldr	r3, [fp, #-652]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r6, #1	@ ivtmp.1806,
	ldr	ip, [fp, #-656]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r7, r4, #35072	@ ivtmp.1802, pstTreeFsp,
	add	sl, r4, #29952	@ ivtmp.1794, pstTreeFsp,
	ldr	r8, [r4, r8]	@ D.37496, <variable>.stTreeHD_1.s32DecFsNum
	rsb	r0, ip, r3	@, MemArrange.FrameAddr, MemArrange.FrameAddr
	add	sl, sl, #20	@ ivtmp.1794, ivtmp.1794,
	str	r0, [fp, #-676]	@, %sfp
	add	r3, r7, #108	@ ivtmp.1802, ivtmp.1802,
	add	r5, r0, r0, lsr #31	@, tmp210,, tmp9,
	sub	r7, fp, #664	@ ivtmp.1799,,
	mov	r0, r1	@ tmp340, ivtmp.1789
	str	r4, [fp, #-684]	@ pstTreeFsp, %sfp
	mov	r2, r5, asr r6	@, tmp210,
	mov	r5, r6	@ ivtmp.1806, ivtmp.1806
	str	r2, [fp, #-680]	@, %sfp
	mov	r9, r2	@ D.37525,
	b	.L635	@
.L660:
	str	r1, [sl, #0]	@ ivtmp.1789, <variable>.PhyFsID
	add	r1, r1, #1	@ tmp345, ivtmp.1789,
	ldr	r2, [r7, #8]	@ tmp215, MemArrange.FrameAddr
	cmp	r8, r1	@ D.37496, tmp345
	str	r4, [r3, #0]	@ tmp216, <variable>.PhyFsID
	add	r7, r7, #4	@ tmp347, ivtmp.1799,
	add	r4, r9, r2	@ tmp219, D.37525, tmp215
	str	r5, [r3, #40]	@ ivtmp.1806, <variable>.PhyFsID
	str	r2, [sl, #8]	@ tmp215, <variable>.PhyAddr
	add	r5, r5, #2	@ tmp349, ivtmp.1806,
	str	r4, [r3, #48]	@ tmp219, <variable>.PhyAddr
	add	r4, sl, #40	@ tmp346, ivtmp.1794,
	str	r2, [r3, #8]	@ tmp215, <variable>.PhyAddr
	add	r2, r3, #80	@ tmp348, ivtmp.1802,
	ble	.L648	@,
.L661:
	str	r1, [sl, #40]	@ tmp345, <variable>.PhyFsID
	mov	sl, r1, asl #1	@ tmp407, tmp345,
	ldr	r6, [r7, #8]	@ tmp406, MemArrange.FrameAddr
	add	r1, r1, #1	@ ivtmp.1789, tmp345,
	cmp	r1, #64	@ ivtmp.1789,
	str	sl, [r3, #80]	@ tmp407, <variable>.PhyFsID
	add	r7, r7, #4	@ ivtmp.1799, tmp347,
	add	r3, r9, r6	@ tmp408, D.37525, tmp406
	str	r6, [r4, #8]	@ tmp406, <variable>.PhyAddr
	add	sl, r4, #40	@ ivtmp.1794, tmp346,
	str	r5, [r2, #40]	@ tmp349, <variable>.PhyFsID
	add	r5, r5, #2	@ ivtmp.1806, tmp349,
	str	r3, [r2, #48]	@ tmp408, <variable>.PhyAddr
	add	r3, r2, #80	@ ivtmp.1802, tmp348,
	str	r6, [r2, #8]	@ tmp406, <variable>.PhyAddr
	beq	.L659	@,
.L635:
	cmp	r8, r1	@ D.37496, ivtmp.1789
	mov	r4, r1, asl #1	@ tmp216, ivtmp.1789,
	bgt	.L660	@,
	add	r1, r1, #1	@ tmp345, ivtmp.1789,
	str	ip, [sl, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	cmp	r8, r1	@ D.37496, tmp345
	str	r0, [sl, #0]	@ tmp340, <variable>.PhyFsID
	str	ip, [r3, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r7, r7, #4	@ tmp347, ivtmp.1799,
	str	ip, [r3, #48]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r5, r5, #2	@ tmp349, ivtmp.1806,
	str	r0, [r3, #0]	@ tmp340, <variable>.PhyFsID
	add	r2, r3, #80	@ tmp348, ivtmp.1802,
	str	r0, [r3, #40]	@ tmp340, <variable>.PhyFsID
	add	r4, sl, #40	@ tmp346, ivtmp.1794,
	bgt	.L661	@,
.L648:
	add	r1, r1, #1	@ ivtmp.1789, tmp345,
	str	r0, [sl, #40]	@ tmp340, <variable>.PhyFsID
	cmp	r1, #64	@ ivtmp.1789,
	str	r0, [r3, #80]	@ tmp340, <variable>.PhyFsID
	str	ip, [r4, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	sl, r4, #40	@ ivtmp.1794, tmp346,
	str	r0, [r2, #40]	@ tmp340, <variable>.PhyFsID
	add	r7, r7, #4	@ ivtmp.1799, tmp347,
	str	ip, [r2, #8]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r3, r2, #80	@ ivtmp.1802, tmp348,
	str	ip, [r2, #48]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	add	r5, r5, #2	@ ivtmp.1806, tmp349,
	bne	.L635	@,
.L659:
	ldr	r4, [fp, #-684]	@ pstTreeFsp, %sfp
	movw	ip, #29920	@ tmp231,
	movw	r2, #35128	@ tmp246,
	movw	sl, #29980	@ tmp241,
	movw	r1, #35188	@ tmp256,
	ldr	r8, [r4, ip]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	ldr	r0, [r4, r2]	@ <variable>.stTreeHD_2.s32DecFsNum, <variable>.stTreeHD_2.s32DecFsNum
	sub	r6, r8, #1	@ tmp229, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r8, [r4, sl]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r3, r0, #1	@ tmp244, <variable>.stTreeHD_2.s32DecFsNum,
	ldr	r1, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	ip, r6, r6, asl #2	@, tmp235, tmp229, tmp229,
	add	sl, r3, r3, asl #2	@, tmp250, tmp244, tmp244,
	add	r2, r4, ip, asl #3	@, tmp237, pstTreeFsp, tmp235,
	add	r0, r2, #29952	@ tmp238, tmp237,
	add	r6, r4, sl, asl #3	@, tmp252, pstTreeFsp, tmp250,
	add	ip, r0, #24	@ tmp238, tmp238,
	add	r3, r6, #35072	@ tmp253, tmp252,
	add	r6, r3, #112	@ tmp253, tmp253,
	movw	r2, #29940	@ tmp240,
	ldr	r0, [ip, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	sl, #35100	@ tmp228,
	str	r8, [r4, r2]	@ <variable>.PhyAddr, <variable>.stTreeHD_1.stDummyPhyFs.PhyAddr
	movw	ip, #35148	@ tmp255,
	movw	r8, #40308	@ tmp243,
	str	r0, [r4, sl]	@ <variable>.PhyAddr, <variable>.stTreeHD_1.stTfFs.PhyAddr
	ldr	r2, [r6, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, ip]	@ <variable>.PhyAddr, <variable>.stTreeHD_2.stDummyPhyFs.PhyAddr
	str	r2, [r4, r8]	@ <variable>.PhyAddr, <variable>.stTreeHD_2.stTfFs.PhyAddr
	ldr	r8, [fp, #-672]	@, %sfp
	ldrsb	r6, [r8, #0]	@ <variable>.s8DispLoopEnable, <variable>.s8DispLoopEnable
	cmp	r6, #0	@ <variable>.s8DispLoopEnable,
	moveq	r2, r6	@ DispFsNum, prephitmp.1757
	beq	.L639	@,
	ldr	sl, [fp, #-672]	@, %sfp
	ldr	r2, [sl, #12]	@ <variable>.s32DispNum, <variable>.s32DispNum
	cmp	r2, #25	@ <variable>.s32DispNum,
	movge	r2, #25	@ DispFsNum,
	cmp	r2, #3	@ DispFsNum,
	movgt	r6, r2, asl #1	@ prephitmp.1757, DispFsNum,
	ble	.L662	@,
.L639:
	movw	r9, #29924	@ tmp261,
	movw	sl, #35132	@ tmp262,
	add	r7, r4, #32512	@ ivtmp.1777, pstTreeFsp,
	add	r5, r4, #37632	@ ivtmp.1782, pstTreeFsp,
	mov	r0, #0	@ ivtmp.1772,
	str	r6, [r4, sl]	@ prephitmp.1757, <variable>.stTreeHD_2.s32DispFsNum
	str	r2, [r4, r9]	@ DispFsNum, <variable>.stTreeHD_1.s32DispFsNum
	add	r8, r7, #20	@ ivtmp.1777, ivtmp.1777,
	add	r3, r5, #108	@ ivtmp.1782, ivtmp.1782,
	mov	r7, #1	@ ivtmp.1786,
	mov	r5, r0	@ tmp337, ivtmp.1772
	movw	r1, #29920	@ tmp338,
	ldr	r9, [fp, #-680]	@ D.37525, %sfp
	b	.L642	@
.L664:
	str	r0, [r8, #0]	@ ivtmp.1772, <variable>.PhyFsID
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r6, r0, sl	@ tmp265, ivtmp.1772, <variable>.stTreeHD_1.s32DecFsNum
	sub	sl, fp, #44	@,,
	add	r6, sl, r6, asl #2	@, tmp271,, tmp265,
	ldr	r6, [r6, #-612]	@ tmp273, MemArrange.FrameAddr
	str	ip, [r3, #0]	@ tmp274, <variable>.PhyFsID
	str	r6, [r8, #8]	@ tmp273, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, r0, ip	@ tmp275, ivtmp.1772, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, sl, ip, asl #2	@, tmp281, tmp6, tmp275,
	ldr	ip, [ip, #-612]	@ tmp283, MemArrange.FrameAddr
	str	r7, [r3, #40]	@ ivtmp.1786, <variable>.PhyFsID
	add	r7, r7, #2	@ tmp344, ivtmp.1786,
	str	ip, [r3, #8]	@ tmp283, <variable>.PhyAddr
	ldr	r6, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, r0, r6	@ tmp284, ivtmp.1772, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ tmp341, ivtmp.1772,
	cmp	r2, r0	@ DispFsNum, tmp341
	add	r6, sl, ip, asl #2	@, tmp290,, tmp284,
	ldr	ip, [r6, #-612]	@ tmp292, MemArrange.FrameAddr
	add	r6, r9, ip	@ tmp293, D.37525, tmp292
	add	ip, r3, #80	@ tmp343, ivtmp.1782,
	str	r6, [r3, #48]	@ tmp293, <variable>.PhyAddr
	add	r6, r8, #40	@ tmp342, ivtmp.1777,
	ble	.L646	@,
.L665:
	str	r0, [r8, #40]	@ tmp341, <variable>.PhyFsID
	mov	r8, r0, asl #1	@, tmp341,
	str	r8, [fp, #-684]	@, %sfp
	sub	r8, fp, #44	@,,
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r0, sl	@ tmp382, tmp341, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r8, sl, asl #2	@, tmp386,, tmp382,
	ldr	r8, [fp, #-684]	@, %sfp
	ldr	sl, [sl, #-612]	@ tmp388, MemArrange.FrameAddr
	str	r8, [r3, #80]	@, <variable>.PhyFsID
	str	sl, [r6, #8]	@ tmp388, <variable>.PhyAddr
	ldr	sl, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r8, r0, sl	@ tmp391, tmp341, <variable>.stTreeHD_1.s32DecFsNum
	sub	sl, fp, #44	@,,
	add	r3, sl, r8, asl #2	@, tmp394,, tmp391,
	ldr	r8, [r3, #-612]	@ tmp396, MemArrange.FrameAddr
	str	r7, [ip, #40]	@ tmp344, <variable>.PhyFsID
	add	r7, r7, #2	@ ivtmp.1786, tmp344,
	str	r8, [ip, #8]	@ tmp396, <variable>.PhyAddr
	add	r8, r6, #40	@ ivtmp.1777, tmp342,
	ldr	r3, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, r0, r3	@ tmp398, tmp341, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ ivtmp.1772, tmp341,
	cmp	r0, #64	@ ivtmp.1772,
	add	sl, sl, r3, asl #2	@, tmp401, tmp8, tmp398,
	ldr	r3, [sl, #-612]	@ tmp403, MemArrange.FrameAddr
	add	sl, r9, r3	@ tmp404, D.37525, tmp403
	add	r3, ip, #80	@ ivtmp.1782, tmp343,
	str	sl, [ip, #48]	@ tmp404, <variable>.PhyAddr
	beq	.L663	@,
.L642:
	cmp	r2, r0	@ DispFsNum, ivtmp.1772
	mov	ip, r0, asl #1	@ tmp274, ivtmp.1772,
	bgt	.L664	@,
	str	r5, [r8, #0]	@ tmp337, <variable>.PhyFsID
	sub	r6, fp, #44	@,,
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ tmp341, ivtmp.1772,
	cmp	r2, r0	@ DispFsNum, tmp341
	add	r7, r7, #2	@ tmp344, ivtmp.1786,
	add	sl, r6, ip, asl #2	@, tmp300,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	ip, [sl, #-612]	@ tmp302, MemArrange.FrameAddr
	str	r5, [r3, #0]	@ tmp337, <variable>.PhyFsID
	str	ip, [r8, #8]	@ tmp302, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	ip, r6, ip, asl #2	@, tmp309, tmp10, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	sl, [ip, #-612]	@ tmp311, MemArrange.FrameAddr
	str	r5, [r3, #40]	@ tmp337, <variable>.PhyFsID
	str	sl, [r3, #8]	@ tmp311, <variable>.PhyAddr
	ldr	ip, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	sl, r6, ip, asl #2	@, tmp318,, <variable>.stTreeHD_1.s32DecFsNum,
	add	r6, r8, #40	@ tmp342, ivtmp.1777,
	ldr	ip, [sl, #-612]	@ tmp320, MemArrange.FrameAddr
	str	ip, [r3, #48]	@ tmp320, <variable>.PhyAddr
	add	ip, r3, #80	@ tmp343, ivtmp.1782,
	bgt	.L665	@,
.L646:
	str	r5, [r8, #40]	@ tmp337, <variable>.PhyFsID
	sub	sl, fp, #44	@,,
	ldr	r8, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r0, r0, #1	@ ivtmp.1772, tmp341,
	cmp	r0, #64	@ ivtmp.1772,
	add	r7, r7, #2	@ ivtmp.1786, tmp344,
	add	r8, sl, r8, asl #2	@, tmp365,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r8, [r8, #-612]	@ tmp367, MemArrange.FrameAddr
	str	r5, [r3, #80]	@ tmp337, <variable>.PhyFsID
	str	r8, [r6, #8]	@ tmp367, <variable>.PhyAddr
	ldr	r3, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, sl, r3, asl #2	@, tmp371, tmp8, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r3, [r3, #-612]	@ tmp373, MemArrange.FrameAddr
	str	r5, [ip, #40]	@ tmp337, <variable>.PhyFsID
	str	r3, [ip, #8]	@ tmp373, <variable>.PhyAddr
	ldr	r8, [r4, r1]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r3, sl, r8, asl #2	@, tmp377,, <variable>.stTreeHD_1.s32DecFsNum,
	ldr	r8, [r3, #-612]	@ tmp379, MemArrange.FrameAddr
	add	r3, ip, #80	@ ivtmp.1782, tmp343,
	str	r8, [ip, #48]	@ tmp379, <variable>.PhyAddr
	add	r8, r6, #40	@ ivtmp.1777, tmp342,
	bne	.L642	@,
.L663:
	movw	r5, #29920	@ tmp321,
	add	sl, r4, #40192	@ tmp329, pstTreeFsp,
	ldr	ip, [r4, r5]	@ <variable>.stTreeHD_1.s32DecFsNum, <variable>.stTreeHD_1.s32DecFsNum
	add	r5, sl, #144	@ tmp329, tmp329,
	ldr	sl, [fp, #-676]	@, %sfp
	add	r1, r2, ip	@ tmp322, DispFsNum, <variable>.stTreeHD_1.s32DecFsNum
	ldr	r8, [fp, #-672]	@, %sfp
	mov	ip, #0	@ D.37529,
	mul	r7, sl, r1	@ offset,, tmp322
	ldr	r6, [r8, #24]	@ <variable>.TotalSize, <variable>.TotalSize
	ldr	r0, [r8, #20]	@ <variable>.MemAddr, <variable>.MemAddr
	movw	r1, #29852	@ tmp326,
	rsb	r3, r7, r6	@ tmp325, offset, <variable>.TotalSize
	mov	r6, r8	@ pTreeParam,
	str	r3, [r8, #28]	@ tmp325, <variable>.PmvTotalSize
	add	r2, r7, r0	@ tmp328, offset, <variable>.MemAddr
	str	r2, [r4, r1]	@ tmp328, <variable>.stTreePMV.PmvAddr
	mov	r7, r5	@ tmp331, tmp329
	ldmia	r6!, {r0, r1, r2, r3}	@ pTreeParam,,,,
	mov	r5, #1	@ tmp333,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp331,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ pTreeParam,,,,
	str	r5, [r4, #112]	@ tmp333, <variable>.eFspInstState
	stmia	r7, {r0, r1, r2, r3}	@ tmp331,,,,
	b	.L631	@
.L632:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #2670	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L658	@
.L662:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.37529,
	b	.L631	@
.L667:
	.align	2
.L666:
	.word	.LANCHOR1-528
	.fnend
	.size	Tree_FSP_InitInstance, .-Tree_FSP_InitInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
.LFB1353:
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
	cmp	r0, #1	@ InstID,
	mov	r6, r0	@ InstID, InstID
	bhi	.L674	@,
	movw	ip, #40368	@ tmp145,
	movw	sl, #:lower16:.LANCHOR1	@ tmp142,
	mul	lr, ip, r0	@ tmp144, tmp145, InstID
	movt	sl, #:upper16:.LANCHOR1	@ tmp142,
	add	r8, lr, sl	@ tmp146, tmp144, tmp142
	ldr	r4, [r8, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L675	@,
	movw	ip, #35112	@ tmp181,
	movw	r0, #:lower16:.LANCHOR0	@ tmp178,
	mul	r6, ip, r6	@ tmp180, tmp181, InstID
	movt	r0, #:upper16:.LANCHOR0	@ tmp178,
	add	r7, r0, #528	@ tmp193, tmp178,
	sub	r4, fp, #76	@ tmp184,,
	movw	r8, #35544	@ tmp187,
	add	r5, r6, r0	@ tmp182, tmp180, tmp178
	add	lr, r5, #556	@ tmp185, tmp182,
	ldr	sl, [r5, r8]	@ enOrigState, <variable>.eFspInstState
	ldmia	lr, {r0, r1, r2, r3}	@ tmp185,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp184,,,,
	mov	r1, ip	@, tmp181
	add	r0, r7, r6	@, tmp193, tmp180
	add	r6, r6, r7	@ tmp203, tmp180, tmp193
	bl	__memzero	@
	ldmia	r4, {r0, r1, r2, r3}	@ tmp184,,,,
	add	r6, r6, #28	@ tmp204, tmp203,
	mov	ip, #0	@ D.35701,
	stmia	r6, {r0, r1, r2, r3}	@ tmp204,,,,
	str	sl, [r5, r8]	@ enOrigState, <variable>.eFspInstState
.L670:
	mov	r0, ip	@, D.35701
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L675:
	add	r9, r8, #39680	@ tmp160, tmp146,
	sub	r8, r8, #528	@ tmp154, tmp146,
	add	r9, r9, #128	@ tmp160, tmp160,
	sub	r7, fp, #76	@ tmp161,,
	ldrb	r5, [r8, #1]	@ zero_extendqisi2	@, <variable>.s8LevelID
	sub	sl, sl, #528	@ tmp164, tmp142,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp162,,,,
	str	r5, [fp, #-80]	@, %sfp
	mov	r5, r7	@ tmp214, tmp161
	stmia	r5!, {r0, r1, r2, r3}	@ tmp214,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp162,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp214,,,,
	mov	r1, ip	@, tmp145
	add	r0, sl, lr	@, tmp164, tmp144
	bl	__memzero	@
	mov	r0, r6	@, InstID
	mov	r1, r7	@, tmp161
	bl	Tree_FSP_InitInstance	@
	subs	ip, r0, #0	@ D.35712,
	bne	.L676	@,
	ldr	r3, [fp, #-80]	@, %sfp
	strb	r3, [r8, #1]	@, <variable>.s8LevelID
	b	.L670	@
.L674:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #127	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35701,
	b	.L670	@
.L676:
	mov	r0, r4	@, <variable>.eFspInstState
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35701,
	b	.L670	@
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1382:
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
	cmp	r0, #1	@ InstID,
	mov	r3, r0	@ InstID, InstID
	bhi	.L727	@,
	movw	r2, #40368	@ tmp171,
	movw	sl, #:lower16:.LANCHOR1	@ tmp503,
	mul	r4, r2, r0	@ tmp170, tmp171, InstID
	movt	sl, #:upper16:.LANCHOR1	@ tmp503,
	add	r5, r4, sl	@ tmp172, tmp170, tmp503
	ldr	r1, [r5, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	beq	.L728	@,
	movw	sl, #:lower16:.LANCHOR0	@ tmp501,
	movt	sl, #:upper16:.LANCHOR0	@ tmp501,
	add	r8, sl, #528	@ tmp511, tmp501,
	movw	r1, #35112	@ tmp351,
	mov	r2, r1	@, tmp351
	ldr	r0, .L736	@,
	mla	r1, r1, r3, r8	@, tmp351, InstID, tmp511
	bl	memcpy	@
	movw	r5, #:lower16:105768	@ tmp360,
	mov	r0, #0	@,
	movt	r5, #:upper16:105768	@ tmp360,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	movw	r7, #:lower16:70796	@ tmp364,
	mov	r0, #0	@,
	movt	r7, #:upper16:70796	@ tmp364,
	ldr	r3, [sl, r5]	@, <variable>.eFspInstState
	movw	r1, #:lower16:.LC31	@,
	mov	r5, r0	@ ivtmp.1936,
	movt	r1, #:upper16:.LC31	@,
	movw	r2, #:lower16:.LC32	@,
	movw	r4, #:lower16:70797	@ tmp368,
	movt	r2, #:upper16:.LC32	@,
	movt	r4, #:upper16:70797	@ tmp368,
	bl	dprint_vfmw	@
	movw	r6, #:lower16:70798	@ tmp372,
	ldrsb	r3, [sl, r7]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, r5	@, ivtmp.1936
	movt	r6, #:upper16:70798	@ tmp372,
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC33	@,
	mov	r7, #1	@ ivtmp.1934,
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r4]	@, <variable>.stInstCfg.s32TfEnable
	mov	r0, r5	@, ivtmp.1936
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC34	@,
	mov	r4, r5	@ ivtmp.1933, ivtmp.1936
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r6]	@, <variable>.stInstCfg.s32RprEnable
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC35	@,
	movw	r6, #:lower16:70828	@ tmp388,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:70808	@ tmp376,
	movt	r2, #:upper16:70808	@ tmp376,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldr	r3, [sl, r2]	@, <variable>.stInstCfg.s32DecFsWidth
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	movt	r6, #:upper16:70828	@ tmp388,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:70812	@ tmp380,
	movt	ip, #:upper16:70812	@ tmp380,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC37	@,
	ldr	r3, [sl, ip]	@, <variable>.stInstCfg.s32DecFsHeight
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:70824	@ tmp384,
	movt	r3, #:upper16:70824	@ tmp384,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC38	@,
	ldr	r3, [sl, r3]	@, <variable>.stInstCfg.s32DispFsWidth
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, r6]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC39	@,
	movw	r6, #:lower16:70804	@ tmp404,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:70801	@ tmp392,
	movt	r2, #:upper16:70801	@ tmp392,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC40	@,
	movt	r2, #:upper16:.LC40	@,
	movt	r6, #:upper16:70804	@ tmp404,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:70802	@ tmp396,
	movt	ip, #:upper16:70802	@ tmp396,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC41	@,
	ldrsb	r3, [sl, ip]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:70803	@ tmp400,
	movt	r3, #:upper16:70803	@ tmp400,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC42	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r6]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC43	@,
	movw	r6, #:lower16:70752	@ tmp420,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:70773	@ tmp408,
	movt	r2, #:upper16:70773	@ tmp408,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldrsb	r3, [sl, r2]	@, <variable>.s32DecFsNum
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	movt	r6, #:upper16:70752	@ tmp420,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:70774	@ tmp412,
	movt	ip, #:upper16:70774	@ tmp412,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC45	@,
	ldrsb	r3, [sl, ip]	@, <variable>.s32DispFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:70775	@ tmp416,
	movt	r3, #:upper16:70775	@ tmp416,
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC46	@,
	ldrsb	r3, [sl, r3]	@, <variable>.s32TfFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, ivtmp.1933
	ldrsb	r3, [sl, r6]	@, <variable>.s32PmvNum
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, ivtmp.1933
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	b	.L700	@
.L731:
	ands	r0, r4, #7	@ tmp423, ivtmp.1933,
	beq	.L729	@,
.L702:
	add	r1, r8, r5	@ D.39542, tmp511, ivtmp.1936
	movw	lr, #:lower16:70305	@ tmp430,
	add	r0, r1, #69632	@ tmp427, D.39542,
	movt	lr, #:upper16:70305	@ tmp430,
	add	r3, r1, lr	@ tmp430, D.39542, tmp430
	add	r2, r0, #672	@ tmp427, tmp427,
	movw	r1, #:lower16:.LC49	@,
	mov	r0, #0	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	movt	r1, #:upper16:.LC49	@,
	ldrsb	r3, [r3, #0]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.1934,
	bgt	.L730	@,
.L703:
	add	r4, r4, #1	@ ivtmp.1933, ivtmp.1933,
	add	r7, r7, #1	@ ivtmp.1934, ivtmp.1934,
	add	r5, r5, #464	@ ivtmp.1936, ivtmp.1936,
.L700:
	add	ip, r8, r5	@ D.39538, tmp511, ivtmp.1936
	cmp	r4, #0	@ ivtmp.1933,
	add	r0, ip, #69632	@ tmp494, D.39538,
	movw	lr, #:lower16:70305	@ tmp497,
	movt	lr, #:upper16:70305	@ tmp497,
	add	r2, r0, #672	@ tmp494, tmp494,
	movw	r1, #:lower16:.LC49	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp425,
	add	r3, ip, lr	@ tmp497, D.39538, tmp497
	mov	r0, r4	@, ivtmp.1933
	movt	r1, #:upper16:.LC49	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp425,
	bne	.L731	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	ldrsb	r3, [r3, #0]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L703	@
.L729:
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L702	@
.L730:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:70773	@ tmp435,
	movt	r3, #:upper16:70773	@ tmp435,
	ldrsb	r5, [r6, r3]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r5, #0	@ <variable>.s32DecFsNum,
	ble	.L704	@,
	mov	r6, r3	@ tmp541, tmp435
	ldr	r5, .L736+4	@ ivtmp.1930,
	mov	r4, #0	@ i.1970,
	ldr	r2, .L736+8	@ pstPhy,
	b	.L705	@
.L706:
	mov	r2, r5	@ pstPhy, ivtmp.1930
	add	r5, r5, #40	@ ivtmp.1930, ivtmp.1930,
.L705:
	ldrsb	r3, [r2, #2]	@, <variable>.DispState
	mov	r0, #0	@,
	ldrsb	r2, [r2, #0]	@, <variable>.IsDecRef
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r4, r4, #1	@ i.1970, i.1970,
	bl	dprint_vfmw	@
	ldrsb	ip, [sl, r6]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r4	@ <variable>.s32DecFsNum, i.1970
	ble	.L704	@,
	ands	r0, r4, #7	@ tmp443, i.1970,
	bne	.L706	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L706	@
.L704:
	movw	r6, #:lower16:70774	@ tmp452,
	movt	r6, #:upper16:70774	@ tmp452,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r3, #0	@ <variable>.s32DispFsNum,
	ble	.L708	@,
	ldr	r5, .L736+12	@ ivtmp.1925,
	mov	r4, #0	@ i.1979,
	sub	r2, r5, #40	@ pstPhy.2000, ivtmp.1925,
	b	.L709	@
.L710:
	mov	r2, r5	@ pstPhy.2000, ivtmp.1925
	add	r5, r5, #40	@ ivtmp.1925, ivtmp.1925,
.L709:
	ldrsb	r3, [r2, #2]	@, <variable>.DispState
	mov	r0, #0	@,
	ldrsb	r2, [r2, #0]	@, <variable>.IsDecRef
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r4, r4, #1	@ i.1979, i.1979,
	bl	dprint_vfmw	@
	ldrsb	r2, [sl, r6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r4	@ <variable>.s32DispFsNum, i.1979
	ble	.L708	@,
	ands	r0, r4, #7	@ tmp460, i.1979,
	bne	.L710	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L710	@
.L708:
	movw	r5, #:lower16:70752	@ tmp469,
	movt	r5, #:upper16:70752	@ tmp469,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [sl, r5]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, #0	@ <variable>.s32PmvNum,
	movgt	r4, #0	@ i.1985,
	ble	.L712	@,
.L725:
	add	r3, r8, r4	@ tmp475, tmp511, i.1985
	movw	ip, #:lower16:70225	@ tmp476,
	movt	ip, #:upper16:70225	@ tmp476,
	mov	r0, #0	@,
	add	lr, r3, ip	@ tmp476, tmp475, tmp476
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	add	r4, r4, #1	@ i.1985, i.1985,
	ldrsb	r2, [lr, #0]	@, <variable>.IsPmvInUse
	bl	dprint_vfmw	@
	ldrsb	r1, [sl, r5]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, r4	@ <variable>.s32PmvNum, i.1985
	ble	.L712	@,
	ands	r0, r4, #15	@ tmp471, i.1985,
	bne	.L725	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L725	@
.L712:
	movw	r1, #:lower16:.LC55	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L727:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2183	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L728:
	sub	r8, sl, #528	@ tmp509, tmp503,
	sub	r5, r5, #528	@ tmp195, tmp172,
	ldr	r0, .L736+16	@,
	add	r1, r8, r4	@, tmp509, tmp170
	bl	memcpy	@
	ldrsb	r3, [r5, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r3, #1	@ <variable>.s8LevelID,
	beq	.L682	@,
	cmp	r3, #2	@ <variable>.s8LevelID,
	beq	.L732	@,
	movw	ip, #:lower16:80209	@ tmp213,
	movt	ip, #:upper16:80209	@ tmp213,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #2202	@,
	movt	r1, #:upper16:.LC29	@,
	ldrsb	r3, [sl, ip]	@, <variable>.s8LevelID
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L682:
	add	r0, r4, #29696	@ tmp202, tmp170,
	add	r4, r0, #224	@ tmp202, tmp202,
	add	r5, r8, r4	@ pTreeFs, tmp509, tmp202
.L684:
	mov	r0, #0	@,
	movw	r7, #:lower16:80320	@ tmp218,
	movt	r7, #:upper16:80320	@ tmp218,
	mov	r6, r0	@ ivtmp.1916,
	movw	r1, #:lower16:.LC30	@,
	movw	r4, #:lower16:80324	@ tmp222,
	movt	r1, #:upper16:.LC30	@,
	movt	r4, #:upper16:80324	@ tmp222,
	bl	dprint_vfmw	@
	ldr	r3, [sl, r7]	@, <variable>.eFspInstState
	mov	r0, r6	@, ivtmp.1916
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC32	@,
	mov	r7, #1	@ ivtmp.1914,
	bl	dprint_vfmw	@
	ldrsb	r3, [sl, r4]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, r6	@, ivtmp.1916
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC33	@,
	mov	r4, r6	@ ivtmp.1913, ivtmp.1916
	bl	dprint_vfmw	@
	movw	r3, #:lower16:80325	@ tmp226,
	movt	r3, #:upper16:80325	@ tmp226,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC34	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32TfEnable
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:80326	@ tmp230,
	movt	r2, #:upper16:80326	@ tmp230,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32RprEnable
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:80336	@ tmp234,
	movt	ip, #:upper16:80336	@ tmp234,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC36	@,
	ldr	r3, [sl, ip]	@, <variable>.stInstCfg.s32DecFsWidth
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:80340	@ tmp238,
	movt	r3, #:upper16:80340	@ tmp238,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC37	@,
	ldr	r3, [sl, r3]	@, <variable>.stInstCfg.s32DecFsHeight
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:80352	@ tmp242,
	movt	r2, #:upper16:80352	@ tmp242,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldr	r3, [sl, r2]	@, <variable>.stInstCfg.s32DispFsWidth
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:80356	@ tmp246,
	movt	ip, #:upper16:80356	@ tmp246,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC39	@,
	ldr	r3, [sl, ip]	@, <variable>.stInstCfg.s32DispFsHeight
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:80329	@ tmp250,
	movt	r3, #:upper16:80329	@ tmp250,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC40	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:80330	@ tmp254,
	movt	r2, #:upper16:80330	@ tmp254,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldrsb	r3, [sl, r2]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	movw	r2, #:lower16:.LC41	@,
	movt	r2, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:80331	@ tmp258,
	movt	ip, #:upper16:80331	@ tmp258,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC42	@,
	ldrsb	r3, [sl, ip]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:80332	@ tmp262,
	movt	r3, #:upper16:80332	@ tmp262,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC43	@,
	ldrsb	r3, [sl, r3]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@, <variable>.s32DecFsNum
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, <variable>.s32DispFsNum
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r3, r7	@, ivtmp.1914
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC31	@,
	movt	r2, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:110056	@ tmp271,
	movt	r2, #:upper16:110056	@ tmp271,
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	ldr	r3, [sl, r2]	@, <variable>.stTreePMV.s32PmvNum
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ivtmp.1913
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	b	.L685	@
.L735:
	ands	r0, r4, #7	@ tmp274, ivtmp.1913,
	beq	.L733	@,
.L687:
	add	r0, r8, r6	@ D.39511, tmp509, ivtmp.1916
	movw	r3, #:lower16:80889	@ tmp282,
	add	lr, r0, #79872	@ tmp279, D.39511,
	movt	r3, #:upper16:80889	@ tmp282,
	add	ip, r0, r3	@ tmp282, D.39511, tmp282
	add	r2, lr, #1016	@ tmp279, tmp279,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	movt	r1, #:upper16:.LC49	@,
	ldrsb	r3, [ip, #0]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.1914,
	bgt	.L734	@,
.L688:
	add	r4, r4, #1	@ ivtmp.1913, ivtmp.1913,
	add	r7, r7, #1	@ ivtmp.1914, ivtmp.1914,
	add	r6, r6, #464	@ ivtmp.1916, ivtmp.1916,
.L685:
	add	r1, r8, r6	@ D.39507, tmp509, ivtmp.1916
	cmp	r4, #0	@ ivtmp.1913,
	add	lr, r1, #79872	@ tmp486, D.39507,
	movw	r0, #:lower16:80889	@ tmp489,
	movt	r0, #:upper16:80889	@ tmp489,
	add	r2, lr, #1016	@ tmp486, tmp486,
	add	r3, r1, r0	@ tmp489, D.39507, tmp489
	movw	r1, #:lower16:.LC49	@,
	mov	r0, r4	@, ivtmp.1913
	movt	r1, #:upper16:.LC49	@,
	bne	.L735	@,
	ldrsb	r2, [r2, #0]	@, <variable>.s32IsRef
	ldrsb	r3, [r3, #0]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L688	@
.L733:
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L687	@
.L734:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i,
	ble	.L689	@,
.L722:
	add	lr, r4, r4, asl #2	@, tmp292, i, i,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r2, r5, lr, asl #3	@, tmp294, pTreeFs, tmp292,
	add	r4, r4, #1	@ i, i,
	ldrsb	r3, [r2, #50]	@, <variable>.DispState
	ldrsb	r2, [r2, #48]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r4	@ <variable>.s32DecFsNum, i
	ble	.L689	@,
	cmp	r4, #0	@ i,
	beq	.L722	@,
	ands	r0, r4, #7	@ tmp287, i,
	bne	.L722	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L722	@
.L689:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r3, #0	@ <variable>.s32DispFsNum,
	movgt	r4, #0	@ i.1950,
	ble	.L693	@,
.L723:
	add	lr, r4, r4, asl #2	@, tmp313, i.1950, i.1950,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r2, r5, lr, asl #3	@, tmp315, pTreeFs, tmp313,
	add	r4, r4, #1	@ i.1950, i.1950,
	add	ip, r2, #2608	@ tmp316, tmp315,
	ldrsb	r3, [ip, #2]	@, <variable>.DispState
	ldrsb	r2, [ip, #0]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldr	r0, [r5, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, r4	@ <variable>.s32DispFsNum, i.1950
	ble	.L693	@,
	cmp	r4, #0	@ i.1950,
	beq	.L723	@,
	ands	r0, r4, #7	@ tmp308, i.1950,
	bne	.L723	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L723	@
.L693:
	movw	r5, #:lower16:110056	@ tmp329,
	movt	r5, #:upper16:110056	@ tmp329,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	ldr	r1, [sl, r5]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r1, #0	@ <variable>.stTreePMV.s32PmvNum,
	movgt	r4, #0	@ i.1953,
	ble	.L712	@,
.L724:
	add	lr, r8, r4	@ tmp336, tmp509, i.1953
	mov	r0, #0	@,
	add	r2, lr, #79872	@ tmp337, tmp336,
	movw	r1, #:lower16:.LC54	@,
	add	ip, r2, #892	@ tmp337, tmp337,
	movt	r1, #:upper16:.LC54	@,
	add	r4, r4, #1	@ i.1953, i.1953,
	ldrsb	r2, [ip, #0]	@, <variable>.IsPmvInUse
	bl	dprint_vfmw	@
	ldr	r3, [sl, r5]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	cmp	r3, r4	@ <variable>.stTreePMV.s32PmvNum, i.1953
	ble	.L712	@,
	cmp	r4, #0	@ i.1953,
	beq	.L724	@,
	ands	r0, r4, #15	@ tmp331, i.1953,
	bne	.L724	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	b	.L724	@
.L732:
	add	r3, r4, #35072	@ tmp209, tmp170,
	add	r2, r3, #56	@ tmp209, tmp209,
	add	r5, r8, r2	@ pTreeFs, tmp509, tmp209
	b	.L684	@
.L737:
	.align	2
.L736:
	.word	.LANCHOR0+70752
	.word	.LANCHOR0+100608
	.word	.LANCHOR0+100568
	.word	.LANCHOR0+103168
	.word	.LANCHOR1+80208
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	Tree_FSP_NewLogicFs
	.type	Tree_FSP_NewLogicFs, %function
Tree_FSP_NewLogicFs:
	.fnstart
.LFB1392:
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
	movw	r2, #40368	@ tmp195,
	mul	r2, r2, r0	@ tmp194, tmp195, InstID
	movw	r5, #:lower16:.LANCHOR1	@ tmp191,
	movt	r5, #:upper16:.LANCHOR1	@ tmp191,
	mov	sl, r0	@ InstID, InstID
	sub	r0, r5, #528	@ tmp192, tmp191,
	add	ip, r2, r5	@ tmp200, tmp194, tmp191
	add	r5, r0, r2	@ pstTreeInst, tmp192, tmp194
	sub	r3, ip, #528	@ tmp201, tmp200,
	ldrsb	r3, [r3, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	cmp	r3, #1	@ <variable>.s8LevelID,
	beq	.L740	@,
	cmp	r3, #2	@ <variable>.s8LevelID,
	beq	.L834	@,
	ldrsb	r3, [r5, #1]	@, <variable>.s8LevelID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movw	r2, #3012	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37750,
.L743:
	mov	r0, r3	@, D.37750
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L740:
	add	r6, r2, #29696	@ tmp208, tmp194,
	add	r4, r6, #224	@ tmp208, tmp208,
	add	r6, r0, r4	@ pTreeFs, tmp192, tmp208
.L742:
	mov	r3, r5	@ ivtmp.2145, pstTreeInst
	mov	r4, #0	@ i.2129,
	b	.L747	@
.L744:
	ldrsb	r0, [r2, #152]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r4, r4, #1	@ i.2129, i.2129,
	cmp	r0, #0	@ <variable>.s32IsRef,
	mov	r3, r4	@ tmp791, i.2129
	bne	.L815	@,
	ldrsb	r8, [r2, #153]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r8, #0	@ <variable>.s32DispState,
	beq	.L831	@,
.L815:
	add	r4, r3, #1	@ i.2129, tmp791,
	add	r3, r2, #464	@ ivtmp.2145, tmp792,
	cmp	r4, #64	@ i.2129,
	beq	.L745	@,
.L747:
	ldrsb	r0, [r3, #152]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r2, r3, #464	@ tmp792, ivtmp.2145,
	cmp	r0, #0	@ <variable>.s32IsRef,
	bne	.L744	@,
	ldrsb	r8, [r3, #153]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r8, #0	@ <variable>.s32DispState,
	bne	.L744	@,
.L831:
	mov	r3, #464	@ tmp223,
	mul	lr, r3, r4	@ tmp222, tmp223, i.2129
	add	r2, lr, #152	@ tmp236, tmp222,
	add	r3, lr, r5	@ tmp224, tmp222, pstTreeInst
	add	ip, r5, r2	@ tmp237, pstTreeInst, tmp236
	add	r2, r3, #152	@ tmp225, tmp224,
	cmp	ip, #0	@ tmp237,
	strb	r4, [r2, #3]	@ i.2129, <variable>.s32LogicFsID
	strb	r8, [r2, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L745	@,
	cmp	r1, #0	@ NeedPhyFs,
	add	r0, r3, #592	@ tmp243, tmp224,
	add	r1, r3, #600	@ tmp255, tmp224,
	str	r8, [r3, #592]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r8, [r0, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r8, [r3, #600]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r8, [r1, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L748	@,
	ldr	r2, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	ble	.L750	@,
	add	lr, sl, sl, asl #5	@, tmp767, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp765,
	movt	r3, #:upper16:.LANCHOR0	@ tmp765,
	mov	r0, r8	@ invalid_flag, <variable>.s32DispState
	add	r9, r3, lr, asl #3	@, tmp769, tmp765, tmp767,
	mov	r7, r6	@ ivtmp.2087, pTreeFs
.L755:
	ldrsb	r1, [r7, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L752	@,
	ldrsb	ip, [r7, #50]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	bne	.L752	@,
	ldrb	r2, [r9, #0]	@ zero_extendqisi2	@ <variable>.SwitchFlag, <variable>.SwitchFlag
	cmp	r2, #1	@ <variable>.SwitchFlag,
	beq	.L835	@,
.L753:
	cmp	r0, #0	@ invalid_flag,
	beq	.L836	@,
	cmp	r0, #1	@ invalid_flag,
	ldr	r2, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	moveq	r0, #0	@ invalid_flag,
.L752:
	add	r8, r8, #1	@ i.2132, i.2132,
	add	r7, r7, #40	@ ivtmp.2087, ivtmp.2087,
	cmp	r2, r8	@ <variable>.s32DecFsNum, i.2132
	bgt	.L755	@,
	mov	ip, #464	@ tmp331,
	mla	r1, ip, r4, r5	@ tmp332, tmp331, i.2129, pstTreeInst
	ldr	r8, [r1, #592]	@ prephitmp.2025, <variable>.pstDecodeFs
.L750:
	cmp	r8, #0	@ prephitmp.2025,
	beq	.L837	@,
.L756:
	mov	ip, #464	@ tmp411,
	add	r7, r6, #5120	@ tmp414, pTreeFs,
	mla	r2, ip, r4, r5	@ tmp412, tmp411, i.2129, pstTreeInst
	add	r3, r7, #48	@ tmp414, tmp414,
	str	r3, [r2, #600]	@ tmp414, <variable>.pstTfOutFs
	movw	r3, #29848	@ tmp416,
	ldr	ip, [r5, r3]	@ prephitmp.2027, <variable>.stTreePMV.s32PmvNum
	cmp	ip, #0	@ prephitmp.2027,
	movle	r3, #0	@ i.2108,
	ble	.L768	@,
	ldrsb	r3, [r5, #28]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r0, r3	@ prephitmp.2032, <variable>.IsPmvInUse
	beq	.L770	@,
	tst	ip, #1	@ prephitmp.2027,
	mov	r2, r5	@ ivtmp.2142, pstTreeInst
	mov	r3, #0	@ i.2108,
	bne	.L771	@,
	ldrb	r7, [r5, #29]	@ zero_extendqisi2	@ D.37813, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2108,
	add	r2, r5, r3	@ ivtmp.2142, pstTreeInst,
	cmp	r7, #0	@ D.37813,
	bne	.L771	@,
.L828:
	uxtb	r0, r3	@ prephitmp.2032, i.2108
.L770:
	mov	r2, #464	@ tmp420,
	add	r7, r3, #7424	@ tmp429, i.2108,
	mla	r2, r2, r4, r5	@ tmp421, tmp420, i.2129, pstTreeInst
	add	r1, r7, #38	@ tmp429, tmp429,
	mov	r7, #1	@ tmp447,
	add	lr, r5, r1, asl #2	@, tmp433, pstTreeInst, tmp429,
	strb	r0, [r2, #156]	@ prephitmp.2032, <variable>.PmvIdc
	movw	r0, #29848	@ tmp448,
	ldr	ip, [lr, #4]	@ tmp435, <variable>.stTreePMV.PmvAddr
	str	ip, [r2, #604]	@ tmp435, <variable>.PmvAddr
	ldr	r1, [r5, #24]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r7, [r2, #588]	@ tmp447, <variable>.eLfsPmvState
	str	r1, [r2, #608]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	ip, [r5, r0]	@ prephitmp.2027, <variable>.stTreePMV.s32PmvNum
.L768:
	mov	r1, #464	@ tmp451,
	mla	lr, r1, r4, r5	@ tmp452, tmp451, i.2129, pstTreeInst
	ldr	r0, [lr, #604]	@ <variable>.PmvAddr, <variable>.PmvAddr
	cmp	r0, #0	@ <variable>.PmvAddr,
	bne	.L773	@,
.L776:
	cmp	ip, #0	@ prephitmp.2027,
	ble	.L775	@,
	movw	r3, #29848	@ tmp455,
	mov	r2, #1	@ i.2110,
	ldr	ip, [r5, r3]	@ temp.2109, <variable>.stTreePMV.s32PmvNum
	mov	r0, #0	@ tmp762,
	add	r3, r5, r2	@ ivtmp.2097, pstTreeInst,
	strb	r0, [r5, #28]	@ tmp762, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.2109,
	sub	r7, ip, #1	@ tmp776, temp.2109,
	and	r1, r7, r2	@ tmp778, tmp776,
	ble	.L775	@,
	cmp	r1, #0	@ tmp778,
	beq	.L778	@,
	mov	r2, #2	@ i.2110,
	cmp	ip, r2	@ temp.2109, i.2110
	strb	r0, [r3, #28]	@ tmp762, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.2097, ivtmp.2097,
	ble	.L775	@,
.L778:
	add	r2, r2, #2	@ i.2110, i.2110,
	add	lr, r3, #1	@ tmp780, ivtmp.2097,
	cmp	ip, r2	@ temp.2109, i.2110
	strb	r0, [r3, #28]	@ tmp762, <variable>.IsPmvInUse
	strb	r0, [lr, #28]	@ tmp762, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.2097, tmp780,
	bgt	.L778	@,
.L775:
	mov	r0, #464	@ tmp460,
	mov	lr, #0	@ tmp463,
	mla	r7, r0, r4, r5	@ tmp461, tmp460, i.2129, pstTreeInst
	movw	r2, #29852	@ tmp470,
	mov	r0, lr	@, tmp463
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	add	ip, r7, #152	@ tmp462, tmp461,
	strb	lr, [ip, #4]	@ tmp463, <variable>.PmvIdc
	mov	ip, #1	@ tmp483,
	ldr	lr, [r5, r2]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	str	lr, [r7, #604]	@ <variable>.stTreePMV.PmvAddr, <variable>.PmvAddr
	ldr	r2, [r5, #24]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [r7, #588]	@ tmp483, <variable>.eLfsPmvState
	str	r2, [r7, #608]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
.L777:
	ldrsb	r1, [r5, #116]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r1, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L779	@,
	ldr	r7, [r6, #4]	@ temp.2121, <variable>.s32DispFsNum
	cmp	r7, #0	@ temp.2121,
	ble	.L832	@,
	ldr	r3, [r6, #2608]	@ tmp492,
	add	r0, r6, #2608	@ D.37829, pTreeFs,
	bics	r3, r3, #-16777216	@ tmp491, tmp492,
	beq	.L783	@,
	tst	r7, #1	@ temp.2121,
	add	r1, r0, #40	@ ivtmp.2054, D.37829,
	mov	r2, #0	@ i.2114,
	bne	.L784	@,
	cmp	r1, #0	@ ivtmp.2054,
	mov	r2, #1	@ i.2114,
	mov	r3, r2	@ i.2107, i.2114
	beq	.L783	@,
	ldr	ip, [r6, #2648]	@ tmp813,
	add	r1, r0, #80	@ ivtmp.2054, D.37829,
	bic	r0, ip, #-16777216	@ tmp814, tmp813,
	cmp	r0, #0	@ tmp814,
	bne	.L784	@,
	b	.L783	@
.L785:
	add	ip, r2, r2, asl #2	@, tmp816, i.2114, i.2114,
	cmp	r1, #0	@ ivtmp.2054,
	add	r0, r6, r0, asl #3	@, tmp509, pTreeFs, tmp507,
	add	r1, r1, #80	@ ivtmp.2054, ivtmp.2054,
	add	ip, r6, ip, asl #3	@, tmp818, pTreeFs, tmp816,
	beq	.L783	@,
	ldr	r0, [r0, #2608]	@ tmp512,
	bic	r0, r0, #-16777216	@ tmp511, tmp512,
	cmp	r0, #0	@ tmp511,
	beq	.L783	@,
	cmp	lr, #0	@ tmp774,
	mov	r3, r2	@ i.2107, i.2114
	beq	.L783	@,
	ldr	r0, [ip, #2608]	@ tmp820,
	bic	lr, r0, #-16777216	@ tmp821, tmp820,
	cmp	lr, #0	@ tmp821,
	beq	.L783	@,
.L784:
	add	r3, r2, #1	@ tmp775, i.2114,
	add	lr, r1, #40	@ tmp774, ivtmp.2054,
	cmp	r3, r7	@ tmp775, temp.2121
	add	r2, r3, #1	@ i.2114, i.2107,
	add	r0, r3, r3, asl #2	@, tmp507, i.2107, i.2107,
	blt	.L785	@,
.L832:
	mov	ip, #464	@ tmp525,
	mla	r3, ip, r4, r5	@ tmp526, tmp525, i.2129, pstTreeInst
	ldr	r7, [r3, #596]	@ prephitmp.2029, <variable>.pstDispOutFs
.L781:
	cmp	r7, #0	@ prephitmp.2029,
	bne	.L751	@,
	mov	r0, r7	@, prephitmp.2029
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@ tmp532,,
	mov	r0, sl	@, InstID
	sub	r2, fp, #56	@,,
	str	r7, [r1, #-4]!	@ prephitmp.2029, RefNum
	sub	r3, fp, #52	@,,
	str	r7, [fp, #-52]	@ prephitmp.2029, NewNum
	str	r7, [fp, #-56]	@ prephitmp.2029, ReadNum
	bl	VCTRL_GetChanImgNum	@
	movw	ip, #:lower16:.LANCHOR0	@ tmp541,
	movt	ip, #:upper16:.LANCHOR0	@ tmp541,
	movw	r0, #35112	@ tmp544,
	ldr	r2, [fp, #-56]	@ ReadNum, ReadNum
	mla	r3, r0, sl, ip	@ tmp545, tmp544, InstID, tmp541
	ldr	r1, [fp, #-48]	@ RefNum, RefNum
	add	r0, r1, r2	@ tmp535, RefNum, ReadNum
	ldr	r2, [fp, #-52]	@ NewNum, NewNum
	add	r3, r3, #544	@ tmp546, tmp545,
	add	ip, r0, #2	@ tmp538, tmp535,
	add	r0, ip, r2	@ tmp539, tmp538, NewNum
	ldrsb	r1, [r3, #6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, r1	@ tmp539, <variable>.s32DispFsNum
	bge	.L833	@,
	mov	r0, r7	@, prephitmp.2029
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	lr, [fp, #-52]	@ NewNum, NewNum
	mov	r0, r7	@, prephitmp.2029
	ldr	r2, [fp, #-48]	@, RefNum
	movw	r1, #:lower16:.LC68	@,
	ldr	r3, [fp, #-56]	@, ReadNum
	movt	r1, #:upper16:.LC68	@,
	str	lr, [sp, #0]	@ NewNum,
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, sl	@, InstID
	bl	FSP_PrintContext	@
.L833:
	mvn	r3, #0	@ D.37750,
	b	.L743	@
.L772:
	ldrb	lr, [r2, #29]	@ zero_extendqisi2	@ D.37813, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.2142, tmp785,
	cmp	lr, #0	@ D.37813,
	beq	.L828	@,
	ldrb	r1, [r1, #29]	@ zero_extendqisi2	@ D.37813, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.2108, i.2108,
	cmp	r1, #0	@ D.37813,
	beq	.L828	@,
.L771:
	add	r3, r3, #1	@ i.2108, i.2108,
	add	r1, r2, #1	@ tmp785, ivtmp.2142,
	cmp	r3, ip	@ i.2108, prephitmp.2027
	blt	.L772	@,
	b	.L768	@
.L834:
	add	r3, r2, #35072	@ tmp215, tmp194,
	add	lr, r3, #56	@ tmp215, tmp215,
	add	r6, r0, lr	@ pTreeFs, tmp192, tmp215
	b	.L742	@
.L748:
	add	ip, r6, #8	@ D.37767, pTreeFs,
	movw	r6, #29852	@ tmp289,
	str	ip, [r3, #600]	@ D.37767, <variable>.pstTfOutFs
	movw	r9, #29848	@ tmp296,
	str	ip, [r0, #4]	@ D.37767, <variable>.pstDispOutFs
	mov	r8, #1	@ tmp306,
	str	ip, [r3, #592]	@ D.37767, <variable>.pstDecodeFs
	ldr	sl, [r5, r6]	@ <variable>.stTreePMV.PmvAddr, <variable>.stTreePMV.PmvAddr
	str	sl, [r1, #4]	@ <variable>.stTreePMV.PmvAddr, <variable>.PmvAddr
	ldr	r7, [r5, r9]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	strb	r8, [r2, #2]	@ tmp306, <variable>.IsDummyFs
	sub	r1, r7, #1	@ tmp299, <variable>.stTreePMV.s32PmvNum,
	strb	r1, [r2, #4]	@ tmp299, <variable>.PmvIdc
.L751:
	mov	r6, #464	@ tmp554,
	mov	ip, #1	@ tmp557,
	mul	sl, r6, r4	@ tmp553, tmp554, i.2129
	mov	r1, #424	@,
	add	r6, sl, r5	@ tmp555, tmp553, pstTreeInst
	add	r8, sl, #160	@ tmp609, tmp553,
	add	r9, r6, #592	@ tmp563, tmp555,
	add	r7, r6, #152	@ tmp556, tmp555,
	add	lr, r6, #200	@, tmp555,
	add	r0, r5, r8	@, pstTreeInst, tmp609
	ldr	r3, [r9, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r2, r6, #248	@ tmp649, tmp555,
	strb	ip, [r7, #1]	@ tmp557, <variable>.s32DispState
	add	sl, r6, #192	@ tmp656, tmp555,
	str	lr, [fp, #-64]	@, %sfp
	add	r8, r6, #208	@ tmp709, tmp555,
	strb	ip, [r3, #2]	@ tmp557, <variable>.DispState
	ldr	r4, [r5, #4]	@ D.37854, <variable>.u32InstTick
	ldr	ip, [r6, #592]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r4, [r6, #584]	@ D.37854, <variable>.u32Tick
	str	r4, [ip, #36]	@ D.37854, <variable>.u32Tick
	ldr	lr, [r9, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r6, #584]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r3, [lr, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r5, #4]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	r4, ip, #1	@ tmp591, <variable>.u32InstTick,
	str	r4, [r5, #4]	@ tmp591, <variable>.u32InstTick
	ldr	lr, [r6, #600]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [r9, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	r9, [r6, #592]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [fp, #-68]	@,
	str	r2, [fp, #-72]	@,
	bl	__memzero	@
	ldrsb	r1, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r1, [r6, #316]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r3, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r3, [r6, #284]	@ <variable>.s32FsWidth, <variable>.stDispImg.image_width
	ldr	r0, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r6, #288]	@ <variable>.s32FsHeight, <variable>.stDispImg.image_height
	ldr	ip, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	ip, [r6, #312]	@ <variable>.s32Stride, <variable>.stDispImg.image_stride
	ldr	r1, [r9, #12]	@ D.37867, <variable>.PhyAddr
	str	r1, [r6, #244]	@ D.37867, <variable>.stDispImg.luma_phy_addr
	mov	r0, r1	@, D.37867
	ldr	r2, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r2, r1	@ tmp651, <variable>.s32ChromOffset, D.37867
	str	r3, [r6, #248]	@ tmp651, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #192]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r6, #248]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [sl, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.37879, <variable>.PhyAddr
	str	r2, [r6, #228]	@ D.37879, <variable>.stDispImg.top_luma_phy_addr
	ldr	r0, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r2, r0	@ D.37881, D.37879, <variable>.s32ChromOffset
	str	r3, [r6, #232]	@ D.37881, <variable>.stDispImg.top_chrom_phy_addr
	ldr	ip, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	add	r1, ip, r2	@ tmp685, <variable>.s32Stride, D.37879
	str	r1, [r6, #236]	@ tmp685, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	add	r0, r3, ip	@ tmp692, D.37881, <variable>.s32Stride
	str	r0, [r6, #240]	@ tmp692, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r1, [r4, #12]	@ temp.2131, <variable>.PhyAddr
	str	r1, [r6, #260]	@ temp.2131, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r1	@, temp.2131
	ldr	r2, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r2, r1	@ tmp704, <variable>.s32ChromOffset, temp.2131
	str	r3, [r6, #264]	@ tmp704, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #208]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [r6, #264]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	ip, [fp, #-68]	@,
	ldr	r0, [fp, #-72]	@,
	ldr	r1, [ip, #12]	@ D.37895, <variable>.PhyAddr
	str	r1, [r0, #4]	@ D.37895, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r1	@, D.37895
	ldr	r2, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	add	r3, r2, r1	@ tmp732, <variable>.s32ChromOffset, D.37895
	str	r3, [r6, #256]	@ tmp732, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #200]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r6, #256]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [fp, #-64]	@, %sfp
	ldrsb	r3, [r7, #3]	@ D.37750, <variable>.s32LogicFsID
	add	r2, r5, r3	@ tmp755, pstTreeInst, D.37750
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ <variable>.s8LevelID, <variable>.s8LevelID
	strb	r1, [r2, #45]	@ <variable>.s8LevelID, <variable>.LogicFsRecord
	b	.L743	@
.L779:
	mov	r6, #464	@ tmp495,
	mla	sl, r6, r4, r5	@ tmp496, tmp495, i.2129, pstTreeInst
	ldr	r9, [sl, #592]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r9, [sl, #596]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
	b	.L751	@
.L773:
	cmp	ip, r3	@ prephitmp.2027, i.2108
	ble	.L776	@,
	b	.L777	@
.L835:
	ldr	r1, [r7, #60]	@, <variable>.PhyAddr
	mov	r0, sl	@, InstID
	bl	FSP_IsFsInVO	@
	b	.L753	@
.L783:
	mov	r1, #464	@ tmp520,
	add	lr, r3, r3, asl #2	@, tmp515, i.2107, i.2107,
	mla	r2, r1, r4, r5	@ tmp521, tmp520, i.2129, pstTreeInst
	add	r7, r6, lr, asl #3	@, tmp517, pTreeFs, tmp515,
	add	r7, r7, #2608	@ prephitmp.2029, tmp517,
	str	r7, [r2, #596]	@ prephitmp.2029, <variable>.pstDispOutFs
	b	.L781	@
.L836:
	mov	r3, #464	@ tmp325,
	add	lr, r8, r8, asl #2	@, tmp320, i.2132, i.2132,
	mla	r7, r3, r4, r5	@ tmp326, tmp325, i.2129, pstTreeInst
	add	r8, r6, lr, asl #3	@, tmp322, pTreeFs, tmp320,
	add	r8, r8, #48	@ prephitmp.2025, tmp322,
	str	r8, [r7, #592]	@ prephitmp.2025, <variable>.pstDecodeFs
	b	.L750	@
.L837:
	mov	r0, r8	@, prephitmp.2025
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ble	.L757	@,
	mov	r7, r6	@ ivtmp.2081, pTreeFs
.L758:
	ldrsb	r2, [r7, #48]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r7, #50]	@, <variable>.DispState
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r8, r8, #1	@ i.2103, i.2103,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #40	@ ivtmp.2081, ivtmp.2081,
	cmp	r2, r8	@ <variable>.s32DecFsNum, i.2103
	bgt	.L758	@,
.L757:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	ldr	lr, [r6, #0]	@ temp.2104, <variable>.s32DecFsNum
	add	r1, r6, #48	@ pstPhyFs, pTreeFs,
	cmp	lr, #0	@ temp.2104,
	movle	ip, #0	@ prephitmp.2034,
	movle	r2, ip	@ i.2137, prephitmp.2034
	ble	.L760	@,
	tst	lr, #1	@ temp.2104,
	mov	r2, #0	@ i.2137,
	mov	ip, r2	@ i.2140, i.2137
	mvn	r0, #0	@ LeastTick.2146,
	bne	.L764	@,
	ldr	r3, [r1, #36]	@ LeastTick, <variable>.u32Tick
	mov	ip, #1	@ i.2140,
	add	r1, r1, #40	@ pstPhyFs, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r0	@, LeastTick, LeastTick.2146
	mov	r0, r3	@ LeastTick.2146, LeastTick
	b	.L764	@
.L838:
	ldr	r0, [r1, #36]	@ LeastTick, <variable>.u32Tick
	cmp	r0, r3	@ LeastTick, LeastTick
	movcs	r0, r3	@ LeastTick, LeastTick
	movcc	r2, ip	@ i.2137, tmp789
.L830:
	add	ip, ip, #1	@ i.2140, tmp789,
	add	r1, r1, #40	@ pstPhyFs, tmp790,
.L764:
	ldr	r3, [r1, #36]	@ LeastTick, <variable>.u32Tick
	add	r1, r1, #40	@ tmp790, pstPhyFs,
	cmp	r3, r0	@ LeastTick, LeastTick.2146
	movcc	r2, ip	@ i.2137, i.2140
	add	ip, ip, #1	@ tmp789, i.2140,
	movcs	r3, r0	@ LeastTick, LeastTick.2146
	cmp	ip, lr	@ tmp789, temp.2104
	bne	.L838	@,
	mov	ip, r2	@ prephitmp.2034, i.2137
.L760:
	mov	r3, r2, asl #2	@ tmp760, i.2137,
	ldr	r7, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	add	r1, r3, r2	@ tmp343, tmp760, i.2137
	add	r1, r6, r1, asl #3	@, tmp345, pTreeFs, tmp343,
	ldr	lr, [r1, #72]	@ <variable>.FsWidth, <variable>.FsWidth
	cmp	lr, r7	@ <variable>.FsWidth, <variable>.s32FsWidth
	beq	.L839	@,
.L765:
	add	r3, r3, r2	@ tmp359, tmp760, i.2137
	mov	lr, #0	@ tmp363,
	add	r3, r6, r3, asl #3	@, tmp361, pTreeFs, tmp359,
	add	r1, r3, #48	@ tmp362, tmp361,
	strb	lr, [r1, #1]	@ tmp363, <variable>.IsTfRef
	ldr	r7, [r5, #12]	@ <variable>.s32FsWidth, <variable>.s32FsWidth
	str	r7, [r3, #72]	@ <variable>.s32FsWidth, <variable>.FsWidth
	ldr	r0, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	str	r0, [r3, #76]	@ <variable>.s32FsHeight, <variable>.FsHeight
	ldr	r1, [r5, #8]	@ <variable>.s32Stride, <variable>.s32Stride
	str	r1, [r3, #68]	@ <variable>.s32Stride, <variable>.Stride
	ldr	lr, [r5, #20]	@ <variable>.s32ChromOffset, <variable>.s32ChromOffset
	str	lr, [r3, #80]	@ <variable>.s32ChromOffset, <variable>.ChromOffset
.L766:
	mov	r1, #464	@ tmp399,
	add	r0, ip, ip, asl #2	@, tmp404, prephitmp.2034, prephitmp.2034,
	mla	r7, r1, r4, r5	@ tmp400, tmp399, i.2129, pstTreeInst
	add	lr, r6, r0, asl #3	@, tmp406, pTreeFs, tmp404,
	add	ip, lr, #48	@ tmp407, tmp406,
	movw	r1, #:lower16:.LC64	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC64	@,
	str	ip, [r7, #592]	@ tmp407, <variable>.pstDecodeFs
	bl	dprint_vfmw	@
	b	.L756	@
.L839:
	ldr	r0, [r1, #76]	@ <variable>.FsHeight, <variable>.FsHeight
	ldr	r7, [r5, #16]	@ <variable>.s32FsHeight, <variable>.s32FsHeight
	cmp	r0, r7	@ <variable>.FsHeight, <variable>.s32FsHeight
	bne	.L765	@,
	b	.L766	@
.L745:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37750,
	b	.L743	@
	.fnend
	.size	Tree_FSP_NewLogicFs, .-Tree_FSP_NewLogicFs
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
.LFB1380:
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
	movw	lr, #40368	@ tmp140,
	mul	lr, lr, r0	@ tmp139, tmp140, InstID
	movw	r2, #:lower16:.LANCHOR1	@ tmp263,
	movt	r2, #:upper16:.LANCHOR1	@ tmp263,
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	add	r3, lr, r2	@ tmp141, tmp139, tmp263
	ldr	r1, [r3, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	beq	.L849	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp198,
	movt	r3, #:upper16:.LANCHOR0	@ tmp198,
	movw	r2, #35112	@ tmp201,
	mov	lr, ip	@ tmp259, pFspInstInfo
	mla	r3, r2, r0, r3	@ tmp202, tmp201, InstID, tmp198
	mov	r2, #2560	@,
	add	r0, r3, #30208	@ tmp211, tmp202,
	add	r1, r3, #30208	@, tmp202,
	add	r4, r0, #184	@ tmp211, tmp211,
	add	r0, r0, #144	@ tmp217, tmp217,
	ldrb	r5, [r3, #549]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r1, r1, #136	@,,
	strb	r5, [ip, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r4, [r4, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r0, [r0, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	r0, r0, r4	@ tmp220, <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [ip, #2568]	@ tmp220, <variable>.s32DecFsSize
	ldrb	r0, [r3, #550]	@ zero_extendqisi2	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	strb	r0, [ip, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	r0, [r3, #551]	@ zero_extendqisi2	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	strb	r0, [ip, #3]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrb	r0, [r3, #552]	@ zero_extendqisi2	@ <variable>.s32InstID, <variable>.s32InstID
	strb	r0, [ip, #4]	@ <variable>.s32InstID, <variable>.s32InstID
	ldrb	r0, [r3, #528]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r0, [lr], #8	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	mov	r0, lr	@, tmp259
	bl	memcpy	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L849:
	ldrb	r3, [r3, #-527]	@ zero_extendqisi2	@ D.37022, <variable>.s8LevelID
	sxtb	r3, r3	@ D.37022, D.37022
	cmp	r3, #1	@ D.37022,
	beq	.L843	@,
	cmp	r3, #2	@ D.37022,
	beq	.L850	@,
	movw	r1, #:lower16:.LC69	@,
	movw	r2, #2099	@,
	movt	r1, #:upper16:.LC69	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L843:
	add	r5, lr, r2	@ tmp156, tmp139, tmp263
	add	r4, r5, #29184	@ pTreeFs, tmp156,
	add	lr, r4, #208	@ pTreeFs, pTreeFs,
.L845:
	ldr	r5, [lr, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r1, #40368	@ tmp179,
	mla	r3, r1, r0, r2	@ tmp180, tmp179, InstID, tmp263
	add	r1, lr, #48	@, pTreeFs,
	strb	r5, [ip, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	mov	r0, ip	@ tmp192, pFspInstInfo
	ldr	r5, [lr, #100]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2560	@,
	ldr	r4, [lr, #60]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	r4, r4, r5	@ tmp171, <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [ip, #2568]	@ tmp171, <variable>.s32DecFsSize
	ldr	lr, [lr, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	mov	r4, #1	@ tmp174,
	strb	r4, [ip, #3]	@ tmp174, <variable>.s32TfFsNum
	strb	lr, [ip, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	lr, [r3, #-528]	@ zero_extendqisi2	@ <variable>.s8InstID, <variable>.s8InstID
	strb	lr, [ip, #4]	@ <variable>.s8InstID, <variable>.s32InstID
	movw	ip, #29320	@ tmp185,
	ldr	r3, [r3, ip]	@ <variable>.stTreePMV.s32PmvNum, <variable>.stTreePMV.s32PmvNum
	strb	r3, [r0], #8	@ <variable>.stTreePMV.s32PmvNum, <variable>.s32PmvNum
	bl	memcpy	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L850:
	add	lr, lr, r2	@ tmp163, tmp139, tmp263
	add	r1, lr, #34560	@ pTreeFs, tmp163,
	add	lr, r1, #40	@ pTreeFs, pTreeFs,
	b	.L845	@
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_SwitchNotify
	.type	FSP_SwitchNotify, %function
FSP_SwitchNotify:
	.fnstart
.LFB1388:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ InstID,
	mov	r4, r0	@ InstID, InstID
	bls	.L852	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r2, #2569	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L855:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L852:
	sub	r1, fp, #88	@,,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L855	@,
	ldr	r1, [fp, #-44]	@ stCfg.s32Btl1Dt2DEnable, stCfg.s32Btl1Dt2DEnable
	cmp	r1, #0	@ stCfg.s32Btl1Dt2DEnable,
	bne	.L855	@,
	add	r4, r4, r4, asl #5	@, tmp143, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	lr, #1	@ tmp146,
	add	r2, r3, r4, asl #3	@, tmp145, tmp140, tmp143,
	strb	lr, [r3, r4, asl #3]	@ tmp146, <variable>.SwitchFlag
	ldrh	r0, [r2, #6]	@ D.37437, <variable>.tail
	ldrh	ip, [r2, #4]	@ <variable>.head, <variable>.head
	cmp	ip, r0	@ <variable>.head, D.37437
	strneh	r0, [r2, #2]	@ movhi	@ D.37437, <variable>.history
	streqb	r1, [r3, r4, asl #3]	@ stCfg.s32Btl1Dt2DEnable, <variable>.SwitchFlag
	mvneq	r0, #0	@ movhi	@,
	streqh	r0, [r2, #2]	@ movhi	@, <variable>.history
	b	.L855	@
	.fnend
	.size	FSP_SwitchNotify, .-FSP_SwitchNotify
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
.LFB1368:
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
	cmp	r0, #1	@ InstID,
	mov	r6, r0	@ InstID, InstID
	mov	r7, r1	@ LogicFrameID, LogicFrameID
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	bhi	.L872	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L873	@,
	ldr	r0, .L876	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #40368	@ tmp153,
	mul	r0, r1, r6	@ tmp152, tmp153, InstID
	movw	r1, #:lower16:.LANCHOR1	@ tmp219,
	movt	r1, #:upper16:.LANCHOR1	@ tmp219,
	add	ip, r0, r1	@ tmp154, tmp152, tmp219
	ldr	r2, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	moveq	r5, #464	@ tmp161,
	movwne	r5, #35112	@ tmp171,
	mlaeq	r5, r5, r7, r0	@ tmp164, tmp161, LogicFrameID, tmp152
	movne	r0, #464	@ tmp169,
	mulne	r5, r5, r6	@ tmp170, tmp171, InstID
	mlane	r5, r0, r7, r5	@ tmp172, tmp169, LogicFrameID, tmp170
	ldrne	r0, .L876+4	@ tmp173,
	addeq	r5, r5, r1	@ tmp165, tmp164, tmp219
	subeq	r5, r5, #376	@ pstLogicFs, tmp165,
	addne	r5, r5, r0	@ pstLogicFs, tmp172, tmp173
	cmp	r4, #0	@ IsWaitDisp,
	ldrsb	r0, [r5, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	moveq	r3, r4	@, iftmp.476, IsWaitDisp
	movne	r3, #3	@, iftmp.476,
	strb	r3, [r5, #1]	@ iftmp.476, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.IsDummyFs,
	bne	.L870	@,
	ldr	ip, [r5, #444]	@ D.36661, <variable>.pstDispOutFs
	cmp	ip, #0	@ D.36661,
	beq	.L870	@,
	ldr	r3, [ip, #36]	@ D.36662, <variable>.u32Tick
	ldr	r2, [r5, #432]	@ D.36663, <variable>.u32Tick
	cmp	r3, r2	@ D.36662, D.36663
	bne	.L874	@,
	movw	lr, #40368	@ tmp196,
	cmp	r4, #0	@ IsWaitDisp,
	mla	r1, lr, r6, r1	@ tmp197, tmp196, InstID, tmp219
	movne	r3, #3	@ tmp188,
	streqb	r4, [r5, #1]	@ IsWaitDisp, <variable>.s32DispState
	strneb	r3, [r5, #1]	@ tmp188, <variable>.s32DispState
	streqb	r4, [ip, #2]	@ IsWaitDisp, <variable>.DispState
	strneb	r3, [ip, #2]	@ tmp188, <variable>.DispState
	ldr	r3, [r1, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L875	@,
.L869:
	cmp	r4, #0	@ IsWaitDisp,
	streq	r4, [r5, #444]	@ IsWaitDisp, <variable>.pstDispOutFs
.L870:
	ldr	r0, .L876	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L873:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1589	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L872:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1588	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L874:
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r0, .L876	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L875:
	ldr	r2, [r5, #444]	@ temp.2227, <variable>.pstDispOutFs
	cmp	r2, #0	@ temp.2227,
	beq	.L869	@,
	ldr	ip, [r2, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r0, [r5, #432]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r0	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L869	@,
	ldrsb	ip, [r5, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	mov	r0, r6	@, InstID
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	add	lr, r1, ip	@ tmp208, tmp197, <variable>.s32LogicFsID
	sub	r1, lr, #488	@ tmp209, tmp208,
	ldrsb	r1, [r1, #5]	@, <variable>.LogicFsRecord
	bl	Tree_FSP_SynState	@
	b	.L869	@
.L877:
	.align	2
.L876:
	.word	.LANCHOR2-2184
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
	.fnstart
.LFB1372:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #1	@, InstID,
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	movw	r3, #40368	@ tmp148,
	mul	r2, r3, r4	@ tmp147, tmp148, InstID
	movw	r0, #:lower16:.LANCHOR1	@ tmp145,
	movt	r0, #:upper16:.LANCHOR1	@ tmp145,
	add	ip, r2, r0	@ tmp149, tmp147, tmp145
	ldr	r1, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	movwne	r0, #35112	@ tmp166,
	moveq	r1, #464	@ tmp156,
	mulne	r0, r0, r4	@ tmp165, tmp166, InstID
	movne	r2, #464	@ tmp164,
	mlaeq	r2, r1, r5, r2	@ tmp159, tmp156, LogicFrameID, tmp147
	mlane	r0, r2, r5, r0	@ tmp167, tmp164, LogicFrameID, tmp165
	ldrne	r2, .L883	@ tmp168,
	addeq	r0, r0, r2	@ tmp160, tmp145, tmp159
	subeq	r0, r0, #376	@ pstLogic, tmp160,
	addne	r0, r0, r2	@ pstLogic, tmp167, tmp168
	ldrsb	r3, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #3	@ <variable>.s32DispState,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@, InstID
	mov	r1, r5	@, LogicFrameID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L884:
	.align	2
.L883:
	.word	.LANCHOR0+608
	.fnend
	.size	FSP_ClearLogicFs, .-FSP_ClearLogicFs
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
.LFB1364:
	@ args = 0, pretend = 0, frame = 24
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
	cmp	r0, #1	@ InstID,
	mov	r8, r0	@ InstID, InstID
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bhi	.L991	@,
	ldr	r0, .L997	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #:lower16:.LANCHOR1	@ tmp194,
	movt	r1, #:upper16:.LANCHOR1	@ tmp194,
	movw	r2, #40368	@ tmp197,
	mla	r0, r2, r8, r1	@ tmp198, tmp197, InstID, tmp194
	ldr	r3, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L992	@,
	movw	r9, #35112	@ tmp211,
	ldr	ip, .L997+4	@,
	mul	r9, r9, r8	@ tmp210, tmp211, InstID
	movw	sl, #:lower16:.LANCHOR0	@ tmp710,
	mov	r4, #0	@ i.2364,
	movt	sl, #:upper16:.LANCHOR0	@ tmp710,
	add	r5, ip, r9	@ pstInst,, tmp210
	mov	r3, r5	@ ivtmp.2340, pstInst
	b	.L893	@
.L890:
	ldrsb	ip, [r2, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r4, r4, #1	@ i.2364, i.2364,
	cmp	ip, #0	@ <variable>.s32IsRef,
	mov	r3, r4	@ tmp742, i.2364
	bne	.L958	@,
	ldrsb	r7, [r2, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	beq	.L979	@,
.L958:
	add	r4, r3, #1	@ i.2364, tmp742,
	add	r3, r2, #464	@ ivtmp.2340, tmp743,
	cmp	r4, #64	@ i.2364,
	beq	.L891	@,
.L893:
	ldrsb	lr, [r3, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r2, r3, #464	@ tmp743, ivtmp.2340,
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L890	@,
	ldrsb	r7, [r3, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	bne	.L890	@,
.L979:
	mov	r2, #464	@ tmp216,
	mul	r3, r2, r4	@ tmp215, tmp216, i.2364
	add	r1, r3, #80	@ tmp229, tmp215,
	add	r3, r3, r5	@ tmp217, tmp215, pstInst
	add	r0, r5, r1	@ tmp230, pstInst, tmp229
	add	r1, r3, #80	@ tmp218, tmp217,
	cmp	r0, #0	@ tmp230,
	strb	r4, [r1, #3]	@ i.2364, <variable>.s32LogicFsID
	strb	r7, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L891	@,
	add	ip, r3, #520	@ tmp239, tmp217,
	add	r0, r3, #528	@ tmp251, tmp217,
	cmp	r6, #0	@ NeedPhyFs,
	str	r7, [r3, #520]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r7, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r7, [r3, #528]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r7, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L894	@,
	ldrsb	r0, [r5, #21]	@ temp.2383, <variable>.s32DecFsNum
	cmp	r0, #0	@ temp.2383,
	ble	.L896	@,
	add	r3, r5, #29696	@ ivtmp.2329, pstInst,
	sub	lr, r0, #1	@ tmp737, temp.2383,
	and	r1, lr, #1	@ tmp739, tmp737,
	ldrsb	ip, [r3, #120]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L993	@,
.L951:
	mov	r7, #1	@ i.2365,
	cmp	r7, r0	@ i.2365, temp.2383
	add	r3, r3, #40	@ ivtmp.2329, ivtmp.2329,
	bge	.L978	@,
	cmp	r1, #0	@ tmp739,
	beq	.L899	@,
	ldrsb	r6, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r6, #0	@ <variable>.IsDecRef,
	bne	.L953	@,
	ldrsb	r2, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L977	@,
.L953:
	add	r7, r7, #1	@ i.2365, i.2365,
	add	r3, r3, #40	@ ivtmp.2329, ivtmp.2329,
	cmp	r7, r0	@ i.2365, temp.2383
	bge	.L978	@,
.L899:
	ldrsb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #40	@ tmp741, ivtmp.2329,
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L898	@,
	ldrsb	r6, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r6, #0	@ <variable>.DispState,
	beq	.L977	@,
.L898:
	ldrsb	r1, [r3, #40]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r7, r7, #1	@ i.2365, i.2365,
	cmp	r1, #0	@ <variable>.IsDecRef,
	mov	r3, r7	@ tmp740, i.2365
	bne	.L956	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L977	@,
.L956:
	add	r7, r3, #1	@ i.2365, tmp740,
	add	r3, r2, #40	@ ivtmp.2329, tmp741,
	cmp	r7, r0	@ i.2365, temp.2383
	blt	.L899	@,
.L978:
	mov	r0, #464	@ tmp319,
	mla	r6, r0, r4, r5	@ tmp320, tmp319, i.2364, pstInst
	ldr	r7, [r6, #520]	@ prephitmp.2345, <variable>.pstDecodeFs
.L896:
	cmp	r7, #0	@ prephitmp.2345,
	beq	.L994	@,
.L900:
	mov	lr, #464	@ tmp344,
	ldr	r6, .L997+4	@,
	mla	r1, lr, r4, r5	@ tmp345, tmp344, i.2364, pstInst
	add	ip, r5, #34816	@ tmp347, pstInst,
	add	r0, ip, #120	@ tmp347, tmp347,
	str	r0, [r1, #528]	@ tmp347, <variable>.pstTfOutFs
	ldrsb	r1, [r6, r9]	@ temp.2350, <variable>.s32PmvNum
	cmp	r1, #0	@ temp.2350,
	ble	.L909	@,
	ldrsb	r3, [r5, #1]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.2276, <variable>.IsPmvInUse
	beq	.L911	@,
	tst	r1, #1	@ temp.2350,
	mov	r3, #0	@ i.2351,
	bne	.L912	@,
	ldrsb	r6, [r5, #2]	@ tmp780, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2351,
	cmp	r6, #0	@ tmp780,
	bne	.L912	@,
.L974:
	uxtb	r1, r3	@ prephitmp.2276, i.2351
.L911:
	mov	r2, #464	@ tmp355,
	add	r0, r3, #8704	@ tmp364, i.2351,
	mla	r6, r2, r4, r5	@ tmp356, tmp355, i.2364, pstInst
	add	r3, r0, #52	@ tmp364, tmp364,
	movw	r0, #35024	@ tmp376,
	add	lr, r5, r3, asl #2	@, tmp368, pstInst, tmp364,
	strb	r1, [r6, #84]	@ prephitmp.2276, <variable>.PmvIdc
	mov	r1, #1	@ tmp383,
	ldr	ip, [lr, #4]	@ tmp370, <variable>.PmvAddr
	str	ip, [r6, #532]	@ tmp370, <variable>.PmvAddr
	ldr	r3, [r5, r0]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r6, #516]	@ tmp383, <variable>.eLfsPmvState
	str	r3, [r6, #536]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
.L913:
	mov	r1, #464	@ tmp386,
	mla	r6, r1, r4, r5	@ tmp387, tmp386, i.2364, pstInst
	ldr	r1, [r6, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	cmp	r1, #0	@ <variable>.PmvAddr,
	bne	.L909	@,
	ldr	lr, .L997+4	@,
	ldrsb	ip, [lr, r9]	@ D.36347, <variable>.s32PmvNum
	cmp	ip, #0	@ D.36347,
	ble	.L915	@,
	cmp	ip, #1	@ D.36347,
	sub	r3, ip, #1	@ tmp724, D.36347,
	and	r2, r3, #1	@ tmp726, tmp724,
	strb	r1, [r5, #1]	@ tmp716, <variable>.IsPmvInUse
	mov	r3, #1	@ i,
	ble	.L915	@,
	cmp	r2, #0	@ tmp726,
	beq	.L916	@,
	mov	r3, #2	@ i,
	cmp	ip, r3	@ D.36347, i
	strb	r1, [r5, #2]	@ tmp716, <variable>.IsPmvInUse
	ble	.L915	@,
.L916:
	add	r6, r3, #1	@ tmp727, i,
	add	r0, r5, r3	@ tmp756, pstInst, i
	add	r3, r6, #1	@ i, tmp727,
	add	r2, r5, r6	@ tmp759, pstInst, tmp727
	cmp	ip, r3	@ D.36347, i
	strb	r1, [r0, #1]	@ tmp716, <variable>.IsPmvInUse
	strb	r1, [r2, #1]	@ tmp716, <variable>.IsPmvInUse
	bgt	.L916	@,
.L915:
	mov	r1, #464	@ tmp396,
	movw	lr, #35028	@ tmp406,
	mla	r3, r1, r4, r5	@ tmp397, tmp396, i.2364, pstInst
	mov	r2, #0	@ tmp399,
	mov	r0, r2	@, tmp399
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	add	ip, r3, #80	@ tmp398, tmp397,
	strb	r2, [ip, #4]	@ tmp399, <variable>.PmvIdc
	movw	r2, #35024	@ tmp413,
	ldr	r6, [r5, lr]	@ <variable>.PmvAddr, <variable>.PmvAddr
	mov	ip, #1	@ tmp420,
	str	r6, [r3, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	lr, [r5, r2]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [r3, #516]	@ tmp420, <variable>.eLfsPmvState
	str	lr, [r3, #536]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
.L909:
	ldrsb	r0, [r5, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L917	@,
	ldrsb	r6, [r5, #22]	@ D.36403, <variable>.s32DispFsNum
	cmp	r6, #0	@ D.36403,
	ble	.L989	@,
	add	r0, r5, #32256	@ tmp428, pstInst,
	cmn	r0, #120	@ tmp428,
	beq	.L920	@,
	movw	r2, #32376	@ tmp429,
	ldr	lr, [r5, r2]	@ tmp431,
	bic	r3, lr, #-16777216	@ tmp430, tmp431,
	cmp	r3, #0	@ tmp430,
	beq	.L920	@,
	tst	r6, #1	@ D.36403,
	add	r1, r0, #160	@ ivtmp.2298, tmp428,
	mov	r2, #0	@ i.2354,
	bne	.L923	@,
	cmp	r1, #0	@ ivtmp.2298,
	mov	r2, #1	@ i.2354,
	mov	r3, r2	@ i.2343, i.2354
	beq	.L922	@,
	add	lr, r5, #32256	@ tmp767, pstInst,
	add	r1, r0, #200	@ ivtmp.2298, tmp428,
	add	ip, lr, #160	@ tmp767, tmp767,
	ldr	lr, [ip, #0]	@ tmp768,
	bic	r0, lr, #-16777216	@ tmp769, tmp768,
	cmp	r0, #0	@ tmp769,
	bne	.L923	@,
	b	.L922	@
.L924:
	add	ip, r2, r2, asl #2	@, tmp771, i.2354, i.2354,
	cmp	r1, #0	@ ivtmp.2298,
	add	r0, r5, r0, asl #3	@, tmp448, pstInst, tmp446,
	add	r1, r1, #80	@ ivtmp.2298, ivtmp.2298,
	add	ip, r5, ip, asl #3	@, tmp773, pstInst, tmp771,
	add	r0, r0, #32256	@ tmp449, tmp448,
	add	ip, ip, #32256	@ tmp774, tmp773,
	add	r0, r0, #120	@ tmp449, tmp449,
	add	ip, ip, #120	@ tmp774, tmp774,
	beq	.L922	@,
	ldr	r0, [r0, #0]	@ tmp451,
	bic	r0, r0, #-16777216	@ tmp450, tmp451,
	cmp	r0, #0	@ tmp450,
	beq	.L922	@,
	cmp	lr, #0	@ tmp722,
	mov	r3, r2	@ i.2343, i.2354
	beq	.L922	@,
	ldr	lr, [ip, #0]	@ tmp775,
	bic	r0, lr, #-16777216	@ tmp776, tmp775,
	cmp	r0, #0	@ tmp776,
	beq	.L922	@,
.L923:
	add	r3, r2, #1	@ tmp723, i.2354,
	add	lr, r1, #40	@ tmp722, ivtmp.2298,
	cmp	r3, r6	@ tmp723, D.36403
	add	r2, r3, #1	@ i.2354, i.2343,
	add	r0, r3, r3, asl #2	@, tmp446, i.2343, i.2343,
	blt	.L924	@,
.L989:
	mov	r1, #464	@ tmp465,
	mla	r0, r1, r4, r5	@ tmp466, tmp465, i.2364, pstInst
	ldr	r6, [r0, #524]	@ prephitmp.2273, <variable>.pstDispOutFs
.L919:
	cmp	r6, #0	@ prephitmp.2273,
	bne	.L897	@,
	mov	r0, r6	@, prephitmp.2273
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@ tmp472,,
	mov	r0, r8	@, InstID
	sub	r2, fp, #56	@,,
	str	r6, [r1, #-4]!	@ prephitmp.2273, RefNum
	sub	r3, fp, #52	@,,
	str	r6, [fp, #-52]	@ prephitmp.2273, NewNum
	str	r6, [fp, #-56]	@ prephitmp.2273, ReadNum
	bl	VCTRL_GetChanImgNum	@
	movw	r2, #35112	@ tmp484,
	ldr	r3, [fp, #-56]	@ ReadNum, ReadNum
	mla	r4, r2, r8, sl	@ tmp485, tmp484, InstID, tmp710
	ldr	ip, [fp, #-48]	@ RefNum, RefNum
	ldr	r0, [fp, #-52]	@ NewNum, NewNum
	add	r1, ip, r3	@ tmp475, RefNum, ReadNum
	add	r4, r4, #544	@ tmp486, tmp485,
	add	r2, r1, #2	@ tmp478, tmp475,
	add	ip, r2, r0	@ tmp479, tmp478, NewNum
	ldrsb	r3, [r4, #6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	ip, r3	@ tmp479, <variable>.s32DispFsNum
	bge	.L925	@,
	mov	r0, r6	@, prephitmp.2273
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldrsb	ip, [r4, #6]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	lr, [fp, #-52]	@ NewNum, NewNum
	mov	r0, r6	@, prephitmp.2273
	movw	r1, #:lower16:.LC68	@,
	ldr	r2, [fp, #-48]	@, RefNum
	movt	r1, #:upper16:.LC68	@,
	ldr	r3, [fp, #-56]	@, ReadNum
	str	lr, [sp, #0]	@ NewNum,
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, r8	@, InstID
	bl	FSP_PrintContext	@
.L925:
	ldr	r0, .L997	@,
	mvn	r4, #0	@ RetID,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L887	@
.L914:
	ldrsb	r2, [r2, #1]	@ tmp352, <variable>.IsPmvInUse
	cmp	r2, #0	@ tmp352,
	beq	.L974	@,
	add	r3, r3, #1	@ i.2351, i.2351,
	add	ip, r5, r3	@ tmp781, pstInst, i.2351
	ldrsb	r2, [ip, #1]	@ tmp782, <variable>.IsPmvInUse
	cmp	r2, #0	@ tmp782,
	beq	.L974	@,
.L912:
	add	r3, r3, #1	@ i.2351, i.2351,
	cmp	r3, r1	@ i.2351, temp.2350
	add	r2, r5, r3	@ tmp351, pstInst, i.2351
	blt	.L914	@,
	b	.L913	@
.L894:
	add	r6, r5, #29696	@ D.36345, pstInst,
	ldr	sl, .L997+4	@,
	add	r2, r6, #80	@ D.36345, D.36345,
	str	r2, [r3, #528]	@ D.36345, <variable>.pstTfOutFs
	str	r2, [r3, #520]	@ D.36345, <variable>.pstDecodeFs
	movw	r3, #35028	@ tmp285,
	str	r2, [ip, #4]	@ D.36345, <variable>.pstDispOutFs
	mov	r8, #1	@ tmp301,
	ldr	lr, [r5, r3]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	lr, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r7, [sl, r9]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r8, [r1, #2]	@ tmp301, <variable>.IsDummyFs
	sub	r6, r7, #1	@ tmp294, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp294, <variable>.PmvIdc
.L897:
	mov	sl, #464	@ tmp503,
	movw	r2, #35020	@ tmp516,
	mul	r7, sl, r4	@ tmp502, tmp503, i.2364
	mov	r3, #1	@ tmp506,
	mov	r1, #424	@,
	add	r6, r7, r5	@ tmp504, tmp502, pstInst
	add	r8, r7, #88	@ tmp561, tmp502,
	add	r9, r6, #520	@ tmp512, tmp504,
	add	r7, r6, #80	@ tmp505, tmp504,
	add	lr, r6, #176	@, tmp504,
	add	r4, r6, #128	@, tmp504,
	ldr	ip, [r9, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r5, r8	@, pstInst, tmp561
	strb	r3, [r7, #1]	@ tmp506, <variable>.s32DispState
	add	sl, r6, #120	@ tmp608, tmp504,
	str	lr, [fp, #-64]	@, %sfp
	add	r8, r6, #136	@ tmp661, tmp504,
	str	r4, [fp, #-68]	@, %sfp
	strb	r3, [ip, #2]	@ tmp506, <variable>.DispState
	ldr	r4, [r5, r2]	@ D.36420, <variable>.u32InstTick
	ldr	lr, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r4, [r6, #512]	@ D.36420, <variable>.u32Tick
	str	r4, [lr, #36]	@ D.36420, <variable>.u32Tick
	ldr	ip, [r9, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r6, #512]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r3, [ip, #36]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r4, [r5, r2]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	lr, r4, #1	@ tmp543, <variable>.u32InstTick,
	str	lr, [r5, r2]	@ tmp543, <variable>.u32InstTick
	ldr	r4, [r9, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #520]	@ pstDecFs, <variable>.pstDecodeFs
	ldr	r9, [r6, #528]	@ pstTfFs, <variable>.pstTfOutFs
	bl	__memzero	@
	ldrsb	ip, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	ip, [r6, #244]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r3, [r5, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r3, [r6, #212]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	r2, [r5, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	r2, [r6, #216]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #240]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	ip, [r5, #12]	@ D.36436, <variable>.PhyAddr
	str	ip, [r6, #172]	@ D.36436, <variable>.stDispImg.luma_phy_addr
	mov	r0, ip	@, D.36436
	ldr	r1, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, ip	@ tmp603, <variable>.ChromOffset, D.36436
	str	r3, [r6, #176]	@ tmp603, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #120]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r6, #176]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [sl, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	ip, [r4, #12]	@ D.36449, <variable>.PhyAddr
	str	ip, [r6, #156]	@ D.36449, <variable>.stDispImg.top_luma_phy_addr
	ldr	r2, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r0, ip, r2	@ D.36452, D.36449, <variable>.ChromOffset
	str	r0, [r6, #160]	@ D.36452, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r3, r1, ip	@ tmp637, <variable>.Stride, D.36449
	str	r3, [r6, #164]	@ tmp637, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r0, ip	@ tmp644, D.36452, <variable>.Stride
	str	r2, [r6, #168]	@ tmp644, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r1, [r4, #12]	@ temp.2368, <variable>.PhyAddr
	str	r1, [r6, #188]	@ temp.2368, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r1	@, temp.2368
	ldr	r3, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r3, r1	@ tmp656, <variable>.ChromOffset, temp.2368
	str	ip, [r6, #192]	@ tmp656, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [r6, #192]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r3, [r9, #12]	@ D.36467, <variable>.PhyAddr
	str	r3, [r0, #4]	@ D.36467, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r3	@, D.36467
	ldr	r2, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r4, r2, r3	@ tmp684, <variable>.ChromOffset, D.36467
	str	r4, [r6, #184]	@ tmp684, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #128]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r6, #184]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-68]	@, %sfp
	str	r0, [r1, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, .L997	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r4, [r7, #3]	@ RetID, <variable>.s32LogicFsID
.L887:
	mov	r0, r4	@, RetID
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L917:
	mov	sl, #464	@ tmp434,
	mla	r8, sl, r4, r5	@ tmp435, tmp434, i.2364, pstInst
	ldr	r9, [r8, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r9, [r8, #524]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
	b	.L897	@
.L993:
	ldrsb	lr, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	bne	.L951	@,
.L977:
	mov	r3, #464	@ tmp314,
	add	lr, r7, r7, asl #2	@, tmp308, i.2365, i.2365,
	mla	r0, r3, r4, r5	@ tmp315, tmp314, i.2364, pstInst
	mov	ip, lr, asl #3	@ tmp309, tmp308,
	add	r2, ip, #29696	@ tmp310, tmp309,
	add	r7, r2, #120	@ tmp310, tmp310,
	add	r7, r5, r7	@ prephitmp.2345, pstInst, tmp310
	str	r7, [r0, #520]	@ prephitmp.2345, <variable>.pstDecodeFs
	b	.L896	@
.L920:
	mov	r3, #0	@ i.2343,
.L922:
	mov	r2, #464	@ tmp460,
	add	ip, r3, r3, asl #2	@, tmp454, i.2343, i.2343,
	mla	r1, r2, r4, r5	@ tmp461, tmp460, i.2364, pstInst
	mov	lr, ip, asl #3	@ tmp455, tmp454,
	add	r3, lr, #32256	@ tmp456, tmp455,
	add	r6, r3, #120	@ tmp456, tmp456,
	add	r6, r5, r6	@ prephitmp.2273, pstInst, tmp456
	str	r6, [r1, #524]	@ prephitmp.2273, <variable>.pstDispOutFs
	b	.L919	@
.L992:
	mov	r0, r8	@, InstID
	mov	r1, r6	@, NeedPhyFs
	bl	Tree_FSP_NewLogicFs	@
	cmn	r0, #1	@ RetID,
	mov	r4, r0	@ RetID,
	beq	.L995	@,
.L990:
	ldr	r0, .L997	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L887	@
.L991:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1112	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ RetID,
	b	.L887	@
.L994:
	mov	r0, r7	@, prephitmp.2345
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	addle	r2, r5, #29696	@, pstInst,
	addle	r2, r2, #120	@,,
	strle	r2, [fp, #-64]	@, %sfp
	ble	.L901	@,
	add	lr, r5, #29696	@, pstInst,
	add	ip, lr, #120	@,,
	str	ip, [fp, #-64]	@, %sfp
	mov	r6, ip	@ ivtmp.2323,
.L902:
	ldrsb	r3, [r6, #2]	@, <variable>.DispState
	mov	r0, #0	@,
	ldrsb	r2, [r6, #0]	@, <variable>.IsDecRef
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r7, r7, #1	@ i.2348, i.2348,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #40	@ ivtmp.2323, ivtmp.2323,
	cmp	r3, r7	@ <variable>.s32DecFsNum, i.2348
	bgt	.L902	@,
.L901:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	ldrsb	lr, [r5, #21]	@ D.36373, <variable>.s32DecFsNum
	ldr	r0, [fp, #-64]	@ pstPhyFs, %sfp
	cmp	lr, #0	@ D.36373,
	movle	ip, #0	@ prephitmp.2278,
	ble	.L904	@,
	tst	lr, #1	@ D.36373,
	mov	ip, #0	@ i.2361,
	mov	r1, ip	@ i.2373, i.2361
	mvn	r2, #0	@ LeastTick.2380,
	bne	.L908	@,
	ldr	r1, [fp, #-64]	@, %sfp
	add	r0, r1, #40	@ pstPhyFs,,
	ldr	r3, [r1, #36]	@ LeastTick, <variable>.u32Tick
	mov	r1, #1	@ i.2373,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r2	@, LeastTick, LeastTick.2380
	mov	r2, r3	@ LeastTick.2380, LeastTick
	b	.L908	@
.L996:
	ldr	r2, [r0, #36]	@ LeastTick, <variable>.u32Tick
	cmp	r2, r3	@ LeastTick, LeastTick
	movcs	r2, r3	@ LeastTick, LeastTick
	movcc	ip, r1	@ i.2361, tmp735
.L976:
	add	r1, r1, #1	@ i.2373, tmp735,
	add	r0, r0, #40	@ pstPhyFs, tmp736,
.L908:
	ldr	r3, [r0, #36]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #40	@ tmp736, pstPhyFs,
	cmp	r3, r2	@ LeastTick, LeastTick.2380
	movcc	ip, r1	@ i.2361, i.2373
	add	r1, r1, #1	@ tmp735, i.2373,
	movcs	r3, r2	@ LeastTick, LeastTick.2380
	cmp	lr, r1	@ D.36373, tmp735
	bgt	.L996	@,
.L904:
	mov	r2, #464	@ tmp332,
	add	r3, ip, ip, asl #2	@, tmp337, prephitmp.2278, prephitmp.2278,
	mla	r1, r2, r4, r5	@ tmp333, tmp332, i.2364, pstInst
	mov	lr, r3, asl #3	@ tmp338, tmp337,
	add	ip, lr, #29696	@ tmp339, tmp338,
	add	r0, ip, #120	@ tmp339, tmp339,
	add	r6, r5, r0	@ tmp341, pstInst, tmp339
	str	r6, [r1, #520]	@ tmp341, <variable>.pstDecodeFs
	b	.L900	@
.L891:
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC72	@,
	mvn	r4, #0	@ RetID,
	bl	dprint_vfmw	@
	b	.L990	@
.L995:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	ldr	r0, .L997	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L887	@
.L998:
	.align	2
.L997:
	.word	.LANCHOR2-2184
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #700
	sub	sp, sp, #700	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ InstID,
	str	r0, [fp, #-688]	@ InstID, %sfp
	mov	r7, r1	@ MemPhyAddr, MemPhyAddr
	mov	r8, r2	@ MemSize, MemSize
	str	r3, [fp, #-704]	@ UsedMemSize, %sfp
	bhi	.L1063	@,
	ldr	r1, [fp, #-688]	@, %sfp
	movw	lr, #:lower16:.LANCHOR1	@ tmp176,
	movt	lr, #:upper16:.LANCHOR1	@ tmp176,
	movw	r2, #40368	@ tmp179,
	mla	ip, r2, r1, lr	@ tmp180, tmp179,, tmp176
	ldr	r3, [ip, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L1064	@,
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #26	@ eChanCapLevel,
	movwhi	r2, #:lower16:.LANCHOR0	@,
	movthi	r2, #:upper16:.LANCHOR0	@,
	strhi	r2, [fp, #-692]	@, %sfp
	bls	.L1065	@,
.L1004:
	ldr	r6, [fp, #-688]	@, %sfp
	movw	r2, #35112	@ tmp223,
	ldr	r9, [fp, #-692]	@, %sfp
	mla	r2, r2, r6, r9	@ tmp224, tmp223,,
	ldrb	ip, [r2, #576]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	ip, #1	@ <variable>.stInstCfg.s32UserDec,
	bne	.L1066	@,
	ldr	sl, [fp, #-688]	@, %sfp
	movw	r0, #35112	@ tmp254,
	ldr	r6, [fp, #-692]	@, %sfp
	mla	r3, r0, sl, r6	@ tmp255, tmp254,,
	ldr	r2, [r3, #604]	@ D.35918, <variable>.stInstCfg.s32DispFsHeight
	cmp	r2, #0	@ D.35918,
	bne	.L1006	@,
.L1056:
	ldrb	r6, [r3, #572]	@ zero_extendqisi2	@ prephitmp.2403, <variable>.stInstCfg.s32DispLoopEnable
.L1007:
	ldr	lr, [fp, #-688]	@, %sfp
	movw	ip, #35112	@ tmp300,
	ldr	r5, [fp, #-692]	@, %sfp
	movw	r4, #:lower16:g_vdm_hal_fun_ptr	@ tmp304,
	movt	r4, #:upper16:g_vdm_hal_fun_ptr	@ tmp304,
	sxtb	r1, r6	@ prephitmp.2403, prephitmp.2403
	mul	r0, ip, lr	@, tmp300,
	ldr	ip, [r4, #28]	@ D.35930, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.35930,
	add	r4, r0, r5	@ tmp301,,
	add	r5, r4, #568	@ tmp302, tmp301,
	str	r0, [fp, #-696]	@, %sfp
	ldrsb	r3, [r5, #9]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	add	r6, r3, r1, asl #2	@, MinFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum, prephitmp.2403,
	beq	.L1010	@,
	ldr	r9, [r4, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	add	r3, r4, #576	@ tmp310, tmp301,
	ldrsb	sl, [r5, #8]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	mov	r0, r7	@, MemPhyAddr
	ldrsb	lr, [r3, #4]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r1, r8	@, MemSize
	ldr	r2, [r3, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r3, r9	@, <variable>.stInstCfg.s32DecFsHeight
	sub	r9, fp, #664	@ tmp335,,
	str	r9, [sp, #16]	@ tmp335,
	ldr	r9, [fp, #-688]	@, %sfp
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp326,
	str	sl, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	str	lr, [sp, #4]	@ tmp326,
	str	r9, [sp, #12]	@,
	blx	ip	@ D.35930
	subs	r2, r0, #0	@ Ret.2533,
	ldrne	ip, [fp, #-396]	@ prephitmp.2405, MemArrange.ValidFrameNum
	bne	.L1012	@,
	ldr	sl, [fp, #-396]	@, MemArrange.ValidFrameNum
	cmp	r6, sl	@ MinFsNum,
	str	sl, [fp, #-700]	@, %sfp
	mov	ip, sl	@ prephitmp.2405,
	bgt	.L1012	@,
	ldr	r8, [fp, #-696]	@, %sfp
	ldrsb	sl, [r5, #4]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	ldr	r7, .L1072	@,
	cmp	sl, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	add	r3, r7, r8	@ pstInst,,
	strb	r2, [r3, #23]	@ Ret.2533, <variable>.s32TfFsNum
	strb	r2, [r3, #22]	@ Ret.2533, <variable>.s32DispFsNum
	bne	.L1013	@,
	ldr	r6, [fp, #-700]	@ tmp351, %sfp
	cmp	r6, #40	@ tmp351,
	movge	r6, #40	@ tmp351,
	uxtb	sl, r6	@ prephitmp.2406, tmp351
	strb	sl, [r3, #21]	@ prephitmp.2406, <variable>.s32DecFsNum
.L1014:
	ldr	r0, [fp, #-688]	@, %sfp
	movw	r5, #35112	@ tmp699,
	ldr	r4, [fp, #-692]	@, %sfp
	add	ip, r3, #29696	@ tmp361, pstInst,
	ldr	r1, [fp, #-664]	@, MemArrange.VahbStride
	sub	r6, fp, #664	@ ivtmp.2581,,
	ldr	r2, [fp, #-400]	@, MemArrange.ChromOffset
	mla	r7, r5, r0, r4	@ tmp701, tmp699,,
	mov	r4, #0	@ ivtmp.2498,
	str	r1, [fp, #-672]	@, %sfp
	add	r0, ip, #140	@ ivtmp.2510, tmp361,
	str	r2, [fp, #-676]	@, %sfp
	add	r5, ip, #124	@ ivtmp.2496, tmp361,
	add	r8, r7, #584	@ tmp703, tmp701,
	add	ip, ip, #132	@ ivtmp.2508, tmp361,
	add	r7, r7, #576	@ tmp702, tmp701,
	mov	r1, r4	@ i, ivtmp.2498
	mov	r2, r4	@ tmp698, ivtmp.2498
	b	.L1018	@
.L1067:
	str	r1, [r5, #0]	@ tmp707, <variable>.PhyFsID
	add	sl, r3, r4	@ D.40185, pstInst, tmp709
	ldr	r9, [r6, #8]	@, MemArrange.FrameAddr
.L1059:
	str	r9, [ip, #0]	@, <variable>.PhyAddr
	add	sl, sl, #29696	@ tmp764, D.40185,
	ldr	r9, [fp, #-672]	@, %sfp
	str	r9, [r0, #0]	@, <variable>.Stride
	ldr	r9, [r7, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [sl, #144]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r9, [r8, #4]	@, <variable>.stInstCfg.s32DecFsHeight
	strb	r2, [sl, #122]	@ tmp698, <variable>.DispState
	str	r9, [sl, #148]	@, <variable>.FsHeight
	ldr	r9, [fp, #-676]	@, %sfp
	strb	r2, [sl, #120]	@ tmp698, <variable>.IsDecRef
	strb	r2, [sl, #121]	@ tmp698, <variable>.IsTfRef
	str	r9, [sl, #152]	@, <variable>.ChromOffset
	add	r9, r4, #40	@, tmp709,
	ldrsb	sl, [r3, #21]	@, <variable>.s32DecFsNum
	add	r4, r4, #80	@ ivtmp.2498, tmp709,
	str	r9, [fp, #-680]	@, %sfp
	add	r9, r6, #4	@, tmp710,
	str	r9, [fp, #-684]	@, %sfp
	add	r6, r6, #8	@ ivtmp.2581, tmp710,
	str	sl, [fp, #-712]	@, %sfp
	add	sl, r1, #1	@ i, tmp707,
	ldr	r9, [fp, #-712]	@, %sfp
	add	r1, r1, #2	@ i, tmp707,
	cmp	r9, sl	@, i
	strgt	sl, [r5, #40]	@ i, <variable>.PhyFsID
	strle	r2, [r5, #40]	@ tmp698, <variable>.PhyFsID
	add	r5, r5, #80	@ ivtmp.2496, tmp708,
	ldrgt	r9, [fp, #-680]	@, %sfp
	ldrle	r9, [fp, #-680]	@, %sfp
	addgt	sl, r3, r9	@ D.40185, pstInst,
	ldrgt	r9, [fp, #-684]	@, %sfp
	addle	sl, r3, r9	@ D.40197, pstInst,
	ldrle	r9, [fp, #-656]	@, MemArrange.FrameAddr
	add	sl, sl, #29696	@ tmp806, D.40185,
	ldrgt	r9, [r9, #8]	@, MemArrange.FrameAddr
	str	r9, [ip, #40]	@, <variable>.PhyAddr
	add	ip, ip, #80	@ ivtmp.2508, tmp711,
	ldr	r9, [fp, #-672]	@, %sfp
	str	r9, [r0, #40]	@, <variable>.Stride
	add	r0, r0, #80	@ ivtmp.2510, tmp712,
	ldr	r9, [r7, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [sl, #144]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r9, [r8, #4]	@, <variable>.stInstCfg.s32DecFsHeight
	strb	r2, [sl, #122]	@ tmp698, <variable>.DispState
	str	r9, [sl, #148]	@, <variable>.FsHeight
	ldr	r9, [fp, #-676]	@, %sfp
	str	r9, [sl, #152]	@, <variable>.ChromOffset
	strb	r2, [sl, #120]	@ tmp698, <variable>.IsDecRef
	strb	r2, [sl, #121]	@ tmp698, <variable>.IsTfRef
	ldrb	sl, [r3, #21]	@ zero_extendqisi2	@ prephitmp.2406, <variable>.s32DecFsNum
.L1018:
	sxtb	sl, sl	@ prephitmp.2406, prephitmp.2406
	cmp	sl, r1	@ prephitmp.2406, i
	strgt	r1, [r5, #0]	@ i, <variable>.PhyFsID
	strle	r2, [r5, #0]	@ tmp698, <variable>.PhyFsID
	addgt	sl, r3, r4	@ D.40185, pstInst, ivtmp.2498
	ldrgt	r9, [r6, #8]	@, MemArrange.FrameAddr
	addle	sl, r3, r4	@ D.40197, pstInst, ivtmp.2498
	ldrle	r9, [fp, #-656]	@, MemArrange.FrameAddr
	add	sl, sl, #29696	@ tmp405, D.40197,
	add	r1, r1, #1	@ tmp707, i,
	add	r5, r5, #40	@ tmp708, ivtmp.2496,
	cmp	r1, #64	@ tmp707,
	add	r4, r4, #40	@ tmp709, ivtmp.2498,
	str	r9, [ip, #0]	@, <variable>.PhyAddr
	add	r6, r6, #4	@ tmp710, ivtmp.2581,
	ldr	r9, [fp, #-672]	@, %sfp
	add	ip, ip, #40	@ tmp711, ivtmp.2508,
	str	r9, [r0, #0]	@, <variable>.Stride
	add	r0, r0, #40	@ tmp712, ivtmp.2510,
	ldr	r9, [r7, #8]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [sl, #144]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r9, [r8, #4]	@, <variable>.stInstCfg.s32DecFsHeight
	strb	r2, [sl, #122]	@ tmp698, <variable>.DispState
	str	r9, [sl, #148]	@, <variable>.FsHeight
	ldr	r9, [fp, #-676]	@, %sfp
	strb	r2, [sl, #120]	@ tmp698, <variable>.IsDecRef
	strb	r2, [sl, #121]	@ tmp698, <variable>.IsTfRef
	str	r9, [sl, #152]	@, <variable>.ChromOffset
	beq	.L1017	@,
	ldrsb	r9, [r3, #21]	@ prephitmp.2406, <variable>.s32DecFsNum
	cmp	r9, r1	@ prephitmp.2406, tmp707
	bgt	.L1067	@,
	str	r2, [r5, #0]	@ tmp698, <variable>.PhyFsID
	add	sl, r3, r4	@ D.40197, pstInst, tmp709
	ldr	r9, [fp, #-656]	@, MemArrange.FrameAddr
	b	.L1059	@
.L1065:
	ldr	r4, [fp, #-688]	@, %sfp
	movw	r6, #:lower16:.LANCHOR0	@,
	movt	r6, #:upper16:.LANCHOR0	@,
	movw	r1, #35112	@ tmp189,
	rsb	lr, r0, r0, asl #3	@, tmp204, eChanCapLevel, eChanCapLevel,
	movw	r3, #:lower16:CapItem	@ tmp201,
	mla	r2, r1, r4, r6	@ tmp190, tmp189,,
	movt	r3, #:upper16:CapItem	@ tmp201,
	add	r4, lr, #1	@ tmp205, tmp204,
	str	r6, [fp, #-692]	@, %sfp
	ldr	ip, [r3, lr, asl #2]	@ tmp214, CapItem
	ldr	r6, [r3, r4, asl #2]	@ tmp213, CapItem
	ldr	r1, [r2, #584]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	lr, [r2, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mul	r3, ip, r6	@ tmp212, tmp214, tmp213
	mul	r6, r1, lr	@ tmp198, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r6, r3	@, tmp198, tmp212
	bgt	.L1004	@,
	ldr	sl, [fp, #-688]	@, %sfp
	movw	r0, #35112	@ tmp254,
	ldr	r6, [fp, #-692]	@, %sfp
	mla	r3, r0, sl, r6	@ tmp255, tmp254,,
	ldr	r2, [r3, #604]	@ D.35918, <variable>.stInstCfg.s32DispFsHeight
	cmp	r2, #0	@ D.35918,
	beq	.L1056	@,
.L1006:
	ldr	r1, [r3, #600]	@ D.35920, <variable>.stInstCfg.s32DispFsWidth
	cmp	r1, #0	@ D.35920,
	beq	.L1056	@,
	ldrb	r6, [r3, #572]	@ zero_extendqisi2	@ prephitmp.2403, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r6, #0	@ prephitmp.2403,
	beq	.L1007	@,
	ldr	lr, [r3, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r2, lr	@ D.35918, <variable>.stInstCfg.s32DecFsHeight
	beq	.L1068	@,
	mvn	r0, #0	@ D.35888,
.L1001:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1010:
	ldr	ip, [fp, #-396]	@ prephitmp.2405, MemArrange.ValidFrameNum
	mvn	r2, #0	@ Ret.2533,
.L1012:
	mov	r3, r6	@, MinFsNum
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	str	ip, [sp, #0]	@ prephitmp.2405,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1017:
	ldr	r9, [fp, #-692]	@, %sfp
	sub	r0, fp, #44	@,,
	ldr	sl, [fp, #-688]	@, %sfp
	movw	r2, #35112	@ tmp455,
	ldrsb	r5, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #34940	@ tmp439,
	movw	ip, #34956	@ tmp449,
	mla	r2, r2, sl, r9	@ tmp456, tmp455,,
	add	r1, r0, r5, asl #2	@, tmp446,, <variable>.s32DecFsNum,
	mov	r0, #0	@ tmp440,
	ldr	r9, [r1, #-612]	@ tmp448, MemArrange.FrameAddr
	movw	r1, #34948	@ tmp441,
	str	r0, [r3, r4]	@ tmp440, <variable>.PhyFsID
	add	r4, r2, #568	@ tmp681, tmp456,
	ldr	r6, [fp, #-672]	@, %sfp
	str	r9, [r3, r1]	@ tmp448, <variable>.PhyAddr
	str	r6, [r3, ip]	@, <variable>.Stride
	movw	r6, #34960	@ tmp451,
	ldr	r9, [r2, #584]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	ip, #1	@ tmp437,
	strb	ip, [r3, #23]	@ tmp437, <variable>.s32TfFsNum
	movw	ip, #34968	@ tmp467,
	str	r9, [r3, r6]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r9, #34936	@ tmp469,
	ldr	r1, [fp, #-676]	@, %sfp
	ldr	r6, [r2, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	strb	r0, [r3, r9]	@ tmp440, <variable>.IsDecRef
	str	r1, [r3, ip]	@, <variable>.ChromOffset
	movw	r1, #34964	@ tmp459,
	str	r6, [r3, r1]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	movw	ip, #34937	@ tmp472,
	movw	r6, #34938	@ tmp475,
	strb	r0, [r3, ip]	@ tmp440, <variable>.IsTfRef
	strb	r0, [r3, r6]	@ tmp440, <variable>.DispState
	ldrsb	r1, [r4, #4]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r1, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L1019	@,
	mov	r9, r1	@ prephitmp.2412, <variable>.stInstCfg.s32DispLoopEnable
	strb	r1, [r3, #22]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L1021:
	ldr	sl, [fp, #-688]	@, %sfp
	movw	r7, #35112	@ tmp693,
	ldr	r5, [fp, #-692]	@, %sfp
	add	r4, r3, #32256	@ tmp487, pstInst,
	mov	r1, #0	@ ivtmp.2466,
	add	r6, r4, #124	@ ivtmp.2464, tmp487,
	mov	r2, r1	@ i.2567, ivtmp.2466
	mov	r0, r1	@ tmp691, ivtmp.2466
	mla	ip, r7, sl, r5	@ tmp695, tmp693,,
	add	r7, r4, #144	@ ivtmp.2474, tmp487,
	add	r5, r4, #132	@ ivtmp.2470, tmp487,
	add	r4, r4, #140	@ ivtmp.2472, tmp487,
	add	r8, ip, #592	@, tmp695,
	add	sl, ip, #600	@ tmp697, tmp695,
	str	r8, [fp, #-680]	@, %sfp
	b	.L1020	@
.L1070:
	str	r2, [r6, #0]	@ i.2567, <variable>.PhyFsID
	add	r1, r1, #40	@ ivtmp.2466, ivtmp.2466,
	ldrsb	r9, [r3, #21]	@, <variable>.s32DecFsNum
	add	r6, r6, #40	@ ivtmp.2464, ivtmp.2464,
	ldrsb	r8, [r3, #23]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	str	r9, [fp, #-684]	@, %sfp
	add	r8, r2, r8	@ tmp517, i.2567, <variable>.s32TfFsNum
	ldr	r9, [fp, #-672]	@, %sfp
	add	r2, r2, #1	@ i.2567, i.2567,
	cmp	r2, #64	@ i.2567,
	str	r9, [r4, #0]	@, <variable>.Stride
	add	r4, r4, #40	@ ivtmp.2472, ivtmp.2472,
	ldr	r9, [fp, #-684]	@, %sfp
	add	r8, r8, r9	@ tmp518, tmp517,
	sub	r9, fp, #44	@,,
	add	r8, r9, r8, asl #2	@, tmp522,, tmp518,
	ldr	r8, [r8, #-612]	@ tmp524, MemArrange.FrameAddr
	str	r8, [r5, #0]	@ tmp524, <variable>.PhyAddr
	add	r5, r5, #40	@ ivtmp.2470, ivtmp.2470,
	ldr	r9, [fp, #-680]	@, %sfp
	ldr	r8, [r9, #8]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r8, [r7, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	add	r7, r7, #40	@ ivtmp.2474, ivtmp.2474,
	ldr	r8, [sl, #4]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	strb	r0, [ip, #122]	@ tmp691, <variable>.DispState
	ldr	r9, [fp, #-676]	@, %sfp
	str	r8, [ip, #148]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	strb	r0, [ip, #120]	@ tmp691, <variable>.IsDecRef
	str	r9, [ip, #152]	@, <variable>.ChromOffset
	strb	r0, [ip, #121]	@ tmp691, <variable>.IsTfRef
	beq	.L1069	@,
.L1024:
	ldrsb	r9, [r3, #22]	@ prephitmp.2412, <variable>.s32DispFsNum
.L1020:
	add	r8, r3, r1	@ D.40124, pstInst, ivtmp.2466
	cmp	r9, r2	@ prephitmp.2412, i.2567
	add	ip, r8, #32256	@ tmp534, D.40124,
	mov	r8, ip	@ tmp576, tmp534
	bgt	.L1070	@,
	str	r0, [r6, #0]	@ tmp691, <variable>.PhyFsID
	add	r2, r2, #1	@ i.2567, i.2567,
	ldrsb	ip, [r3, #23]	@, <variable>.s32TfFsNum
	cmp	r2, #64	@ i.2567,
	ldr	r9, [fp, #-672]	@, %sfp
	add	r6, r6, #40	@ ivtmp.2464, ivtmp.2464,
	add	r1, r1, #40	@ ivtmp.2466, ivtmp.2466,
	str	ip, [fp, #-684]	@, %sfp
	ldrsb	ip, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	r9, [r4, #0]	@, <variable>.Stride
	add	r4, r4, #40	@ ivtmp.2472, ivtmp.2472,
	ldr	r9, [fp, #-684]	@, %sfp
	add	ip, r9, ip	@ tmp560,, <variable>.s32DecFsNum
	sub	r9, fp, #44	@,,
	add	ip, r9, ip, asl #2	@, tmp564,, tmp560,
	ldr	ip, [ip, #-612]	@ tmp566, MemArrange.FrameAddr
	str	ip, [r5, #0]	@ tmp566, <variable>.PhyAddr
	add	r5, r5, #40	@ ivtmp.2470, ivtmp.2470,
	ldr	r9, [fp, #-680]	@, %sfp
	ldr	ip, [r9, #8]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r7, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	add	r7, r7, #40	@ ivtmp.2474, ivtmp.2474,
	ldr	ip, [sl, #4]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	strb	r0, [r8, #122]	@ tmp691, <variable>.DispState
	ldr	r9, [fp, #-676]	@, %sfp
	str	ip, [r8, #148]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	strb	r0, [r8, #120]	@ tmp691, <variable>.IsDecRef
	str	r9, [r8, #152]	@, <variable>.ChromOffset
	strb	r0, [r8, #121]	@ tmp691, <variable>.IsTfRef
	bne	.L1024	@,
.L1069:
	ldr	sl, [fp, #-48]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r1, #0	@ tmp690,
	ldr	r5, .L1072	@,
	add	r0, r3, #34816	@ ivtmp.2446, pstInst,
	cmp	sl, #20	@ MemArrange.ValidPMVNum,
	movge	sl, #20	@ tmp599,
	add	r0, r0, #212	@ ivtmp.2446, ivtmp.2446,
	uxtb	r4, sl	@ prephitmp.2568, tmp599
	ldr	sl, [fp, #-696]	@, %sfp
	sxtb	r6, r4	@ prephitmp.2568, prephitmp.2568
	cmp	r6, r1	@ prephitmp.2568,
	strb	r4, [r5, sl]	@ prephitmp.2568, <variable>.s32PmvNum
	ble	.L1036	@,
	ldr	r6, [fp, #-132]	@ tmp736, MemArrange.PMVAddr
	strb	r1, [r3, #1]	@ tmp690, <variable>.IsPmvInUse
	str	r6, [r0, #0]	@ tmp736, <variable>.PmvAddr
.L1051:
	sub	r4, fp, #664	@,,
	add	r0, r0, #4	@ ivtmp.2446, ivtmp.2446,
	add	ip, r4, #4	@ ivtmp.2506,,
	mov	r2, #1	@ i.2569,
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ prephitmp.2568, <variable>.s32PmvNum
	b	.L1028	@
.L1071:
	ldr	r6, [ip, #532]	@ tmp742, MemArrange.PMVAddr
	add	r4, r3, r2	@ tmp743, pstInst, tmp704
	strb	r1, [r4, #1]	@ tmp690, <variable>.IsPmvInUse
	str	r6, [r0, #0]	@ tmp742, <variable>.PmvAddr
.L1052:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ prephitmp.2568, <variable>.s32PmvNum
	add	r2, r2, #1	@ i.2569, tmp704,
	add	ip, ip, #4	@ ivtmp.2506, tmp705,
	add	r0, r0, #4	@ ivtmp.2446, tmp706,
.L1028:
	add	r5, r3, r2	@ tmp605, pstInst, i.2569
	sxtb	r4, r4	@ prephitmp.2568, prephitmp.2568
	cmp	r4, r2	@ prephitmp.2568, i.2569
	add	r2, r2, #1	@ tmp704, i.2569,
	mov	r6, r5	@ tmp609, tmp605
	add	r4, r3, r2	@ tmp740, pstInst, tmp704
	ldrgt	r6, [ip, #532]	@ tmp604, MemArrange.PMVAddr
	add	ip, ip, #4	@ tmp705, ivtmp.2506,
	strleb	r1, [r6, #1]	@ tmp690, <variable>.IsPmvInUse
	ldrle	r6, [fp, #-132]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strgtb	r1, [r5, #1]	@ tmp690, <variable>.IsPmvInUse
	cmp	r2, #20	@ tmp704,
	str	r6, [r0, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r0, r0, #4	@ tmp706, ivtmp.2446,
	beq	.L1027	@,
	ldrsb	r5, [r3, #0]	@ prephitmp.2568, <variable>.s32PmvNum
	cmp	r5, r2	@ prephitmp.2568, tmp704
	bgt	.L1071	@,
	strb	r1, [r4, #1]	@ tmp690, <variable>.IsPmvInUse
	ldr	r5, [fp, #-132]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	str	r5, [r0, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L1052	@
.L1027:
	ldr	r0, [fp, #-688]	@, %sfp
	movw	ip, #35112	@ tmp625,
	ldr	r6, [fp, #-692]	@, %sfp
	movw	r1, #29828	@ tmp617,
	ldr	r4, [r3, #28]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	mla	r2, ip, r0, r6	@ tmp626, tmp625,,
	ldr	r6, [fp, #-52]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	ip, [r3, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r1, [r2, #584]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r0, [r2, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r2, #35024	@ tmp612,
	cmp	r1, r4	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	movw	r4, #29788	@ tmp616,
	str	r6, [r3, r2]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	movw	r6, #29796	@ tmp619,
	str	ip, [r3, r4]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	ip, #29808	@ tmp637,
	ldr	r4, [fp, #-672]	@, %sfp
	mov	r2, #0	@ tmp615,
	str	r4, [r3, r6]	@, <variable>.stDummyPhyFs.Stride
	ldr	r6, [fp, #-676]	@, %sfp
	str	r6, [r3, ip]	@, <variable>.stDummyPhyFs.ChromOffset
	movw	ip, #29778	@ tmp645,
	strb	r2, [r3, ip]	@ tmp615, <variable>.stDummyPhyFs.DispState
	movw	ip, #29780	@ tmp614,
	str	r2, [r3, ip]	@ tmp615, <variable>.stDummyPhyFs.PhyFsID
	movw	ip, #29800	@ tmp621,
	str	r1, [r3, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	ip, #29804	@ tmp629,
	str	r0, [r3, ip]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	ip, #29776	@ tmp639,
	strb	r2, [r3, ip]	@ tmp615, <variable>.stDummyPhyFs.IsDecRef
	movw	ip, #29777	@ tmp642,
	strb	r2, [r3, ip]	@ tmp615, <variable>.stDummyPhyFs.IsTfRef
	beq	.L1049	@,
.L1058:
	ldrsb	r2, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L1029:
	ldr	r9, [fp, #-688]	@, %sfp
	movw	r4, #35112	@ tmp668,
	ldr	sl, [fp, #-692]	@, %sfp
	movw	ip, #29868	@ tmp673,
	mla	r0, r4, r9, sl	@ tmp669, tmp668,,
	ldr	r4, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	ip, #29828	@ tmp674,
	ldr	ip, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r3, #28]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	rsb	r1, ip, r4	@ tmp677, <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r3, #40]	@ tmp677, <variable>.stPreInfo.s32PreDecSlotLen
	ldr	r1, [r0, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #36]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r1, [r3, #32]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
.L1030:
	ldr	r3, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.35888,
	ldr	r2, [fp, #-704]	@, %sfp
	str	r3, [r2, #0]	@ MemArrange.TotalMemUsed,
	b	.L1001	@
.L1019:
	ldr	r6, [fp, #-700]	@, %sfp
	ldrb	r9, [r2, #579]	@ zero_extendqisi2	@ D.35968, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	ip, r6, #1	@ tmp492,,
	rsb	r2, r5, ip	@ tmp491, <variable>.s32DecFsNum, tmp492
	cmp	r2, #25	@ tmp491,
	movge	r2, #25	@ tmp721,
	sxtb	ip, r9	@ D.35968, D.35968
	uxtb	r1, r2	@ prephitmp.2412, tmp721
	strb	r1, [r3, #22]	@ prephitmp.2412, <variable>.s32DispFsNum
	sxtb	r9, r1	@ prephitmp.2412, prephitmp.2412
	cmp	r9, ip	@ prephitmp.2412, D.35968
	bge	.L1021	@,
	ldrsb	r3, [r4, #9]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, r9	@, prephitmp.2412
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	str	ip, [sp, #0]	@ D.35968,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1013:
	ldrb	sl, [r4, #577]	@ zero_extendqisi2	@ prephitmp.2406, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	sl, [r3, #21]	@ prephitmp.2406, <variable>.s32DecFsNum
	b	.L1014	@
.L1036:
	strb	r1, [r3, #1]	@ tmp690, <variable>.IsPmvInUse
	ldr	r5, [fp, #-132]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	str	r5, [r0, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L1051	@
.L1064:
	ldr	r1, [fp, #-704]	@, %sfp
	bl	Tree_FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	beq	.L1001	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1049:
	ldr	r2, [r3, #32]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r0, r2	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L1058	@,
	ldrsb	r2, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	ip, [r3, #36]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	r2, ip	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L1029	@,
	b	.L1030	@
.L1063:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #397	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1066:
	mov	ip, #7	@ tmp234,
	mov	r5, #28	@ tmp230,
	mul	r4, ip, r0	@ tmp233, tmp234, eChanCapLevel
	movw	r3, #:lower16:CapItem	@ tmp228,
	mul	r5, r5, r0	@ tmp229, tmp230, eChanCapLevel
	movt	r3, #:upper16:CapItem	@ tmp228,
	add	r1, r4, #1	@ tmp235, tmp233,
	ldr	ip, [r2, #588]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	lr, [r2, #584]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r2, r0	@, eChanCapLevel
	ldr	r4, [r3, r1, asl #2]	@ tmp236, CapItem
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r5, r3]	@, CapItem
	stmia	sp, {r4, lr}	@ phole stm
	str	ip, [sp, #8]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1068:
	ldr	r2, [r3, #584]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r1, r2	@ D.35920, <variable>.stInstCfg.s32DecFsWidth
	beq	.L1007	@,
	mvn	r0, #0	@ D.35888,
	b	.L1001	@
.L1073:
	.align	2
.L1072:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
.LFB1355:
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
	cmp	r0, #1	@ InstID,
	mov	r5, r0	@ InstID, InstID
	mov	sl, r1	@ pstVoQue, pstVoQue
	bhi	.L1093	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L1094	@,
	sub	r0, fp, #48	@,,
	bl	OSAL_LockIRQ	@
	movw	r2, #40368	@ tmp155,
	mul	r2, r2, r5	@ tmp154, tmp155, InstID
	movw	r3, #:lower16:.LANCHOR1	@ tmp152,
	movt	r3, #:upper16:.LANCHOR1	@ tmp152,
	add	r0, r2, r3	@ tmp156, tmp154, tmp152
	ldr	r1, [r0, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	beq	.L1095	@,
	ldr	r7, .L1098	@ tmp171,
	movw	r9, #35112	@ tmp173,
	mov	r4, #0	@ i.2633,
	mla	r9, r9, r5, r7	@ pstInst, tmp173, InstID, tmp171
	mov	r6, r9	@ ivtmp.2624, pstInst
	b	.L1083	@
.L1082:
	mov	r0, r5	@, InstID
	ldr	r1, [r7, #244]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	mov	r3, #464	@,
	mla	ip, r3, r8, r9	@ tmp205,, tmp189, pstInst
	mov	r0, sl	@, pstVoQue
	add	r1, ip, #88	@, tmp205,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L1096	@,
	add	r4, r8, #1	@ i.2633, tmp189,
	add	r6, r7, #464	@ ivtmp.2624, tmp190,
	cmp	r4, #64	@ i.2633,
	beq	.L1081	@,
.L1083:
	ldr	r1, [r6, #244]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	add	r7, r6, #464	@ tmp190, ivtmp.2624,
	bl	FSP_SetRef	@
	mov	r0, #464	@,
	mla	r2, r0, r4, r9	@ tmp178,, i.2633, pstInst
	mov	r0, sl	@, pstVoQue
	add	r8, r4, #1	@ tmp189, i.2633,
	add	r1, r2, #88	@, tmp178,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L1082	@,
	ldr	r1, [r6, #244]	@, <variable>.stDispImg.image_id
	mov	r0, r5	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L1082	@
.L1096:
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	ldr	r1, [r7, #244]	@, <variable>.stDispImg.image_id
	add	r4, r8, #1	@ i.2633, tmp189,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i.2633,
	add	r6, r7, #464	@ ivtmp.2624, tmp190,
	bne	.L1083	@,
.L1081:
	sub	r0, fp, #48	@,,
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.35815,
.L1076:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1095:
	sub	r3, r3, #528	@ tmp160, tmp152,
	mov	r4, #0	@ i,
	add	r9, r3, r2	@ pstTreeInst, tmp160, tmp154
	mov	r6, r9	@ ivtmp.2616, pstTreeInst
	b	.L1080	@
.L1079:
	mov	r6, #464	@,
	mov	r0, r5	@, InstID
	mla	r4, r6, r8, r9	@ tmp197,, tmp187, pstTreeInst
	ldr	r1, [r7, #316]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	mov	r0, sl	@, pstVoQue
	add	r1, r4, #160	@, tmp197,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L1097	@,
.L1087:
	add	r4, r8, #1	@ i, tmp187,
	add	r6, r7, #464	@ ivtmp.2616, tmp188,
	cmp	r4, #64	@ i,
	beq	.L1081	@,
.L1080:
	ldr	r1, [r6, #316]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	add	r7, r6, #464	@ tmp188, ivtmp.2616,
	bl	FSP_SetRef	@
	mov	r1, #464	@,
	mla	ip, r1, r4, r9	@ tmp168,, i, pstTreeInst
	mov	r0, sl	@, pstVoQue
	add	r8, r4, #1	@ tmp187, i,
	add	r1, ip, #160	@, tmp168,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L1079	@,
	ldr	r1, [r6, #316]	@, <variable>.stDispImg.image_id
	mov	r0, r5	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L1079	@
.L1097:
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	ldr	r1, [r7, #316]	@, <variable>.stDispImg.image_id
	bl	FSP_SetDisplay	@
	b	.L1087	@
.L1093:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #285	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35815,
	b	.L1076	@
.L1094:
	mov	r0, r1	@, pstVoQue
	movw	r2, #286	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35815,
	b	.L1076	@
.L1099:
	.align	2
.L1098:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
.LFB1354:
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
	cmp	r0, #1	@ InstID,
	mov	r7, r0	@ InstID, InstID
	bhi	.L1170	@,
	sub	r5, fp, #40	@ tmp240,,
	movw	r4, #:lower16:.LANCHOR1	@ tmp168,
	movt	r4, #:upper16:.LANCHOR1	@ tmp168,
	mov	r0, r5	@, tmp240
	bl	OSAL_LockIRQ	@
	movw	r3, #40368	@ tmp171,
	mul	r3, r3, r7	@ tmp170, tmp171, InstID
	add	r2, r3, r4	@ tmp172, tmp170, tmp168
	ldr	r6, [r2, #-416]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r6, #1	@ <variable>.eFspInstState,
	beq	.L1171	@,
	movw	r4, #35112	@ tmp216,
	ldr	r6, .L1172	@ tmp214,
	mul	r7, r4, r7	@ tmp215, tmp216, InstID
	mov	r1, #29696	@,
	add	r4, r6, r7	@ pstInst, tmp214, tmp215
	add	r0, r4, #80	@, pstInst,
	bl	__memzero	@
	ldrsb	ip, [r4, #21]	@ D.35790, <variable>.s32DecFsNum
	cmp	ip, #0	@ D.35790,
	ble	.L1115	@,
	add	lr, r4, #29696	@ tmp219, pstInst,
	cmp	ip, #1	@ D.35790,
	add	r1, lr, #156	@ ivtmp.2707, tmp219,
	sub	r2, ip, #1	@ tmp283, D.35790,
	mov	r3, #0	@ tmp248,
	and	r8, r2, #1	@ tmp285, tmp283,
	str	r3, [r1, #0]	@ tmp248, <variable>.u32Tick
	mov	r0, #1	@ i.2712,
	strb	r3, [r1, #-36]	@ tmp248, <variable>.IsDecRef
	add	r2, lr, #196	@ ivtmp.2707, tmp219,
	strb	r3, [r1, #-34]	@ tmp248, <variable>.DispState
	ble	.L1115	@,
	cmp	r8, #0	@ tmp285,
	beq	.L1116	@,
	mov	r0, #2	@ i.2712,
	cmp	ip, r0	@ D.35790, i.2712
	str	r3, [r2, #0]	@ tmp248, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp248, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp248, <variable>.DispState
	add	r2, lr, #236	@ ivtmp.2707, tmp219,
	ble	.L1115	@,
.L1116:
	add	r0, r0, #2	@ i.2712, i.2712,
	mov	lr, r2	@ tmp286, ivtmp.2707
	cmp	ip, r0	@ D.35790, i.2712
	str	r3, [lr], #40	@ tmp248, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp248, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp248, <variable>.DispState
	str	r3, [r2, #40]	@ tmp248, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2707, ivtmp.2707,
	strb	r3, [lr, #-34]	@ tmp248, <variable>.DispState
	strb	r3, [lr, #-36]	@ tmp248, <variable>.IsDecRef
	bgt	.L1116	@,
.L1115:
	ldrsb	ip, [r4, #22]	@ D.35792, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.35792,
	ble	.L1117	@,
	add	lr, r4, #32256	@ tmp226, pstInst,
	cmp	ip, #1	@ D.35792,
	add	r1, lr, #156	@ ivtmp.2700, tmp226,
	sub	r0, ip, #1	@ tmp278, D.35792,
	mov	r3, #0	@ tmp247,
	and	r8, r0, #1	@ tmp280, tmp278,
	str	r3, [r1, #0]	@ tmp247, <variable>.u32Tick
	mov	r0, #1	@ i.2713,
	strb	r3, [r1, #-36]	@ tmp247, <variable>.IsDecRef
	add	r2, lr, #196	@ ivtmp.2700, tmp226,
	strb	r3, [r1, #-34]	@ tmp247, <variable>.DispState
	ble	.L1117	@,
	cmp	r8, #0	@ tmp280,
	beq	.L1118	@,
	mov	r0, #2	@ i.2713,
	cmp	ip, r0	@ D.35792, i.2713
	str	r3, [r2, #0]	@ tmp247, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp247, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp247, <variable>.DispState
	add	r2, lr, #236	@ ivtmp.2700, tmp226,
	ble	.L1117	@,
.L1118:
	add	r0, r0, #2	@ i.2713, i.2713,
	mov	lr, r2	@ tmp282, ivtmp.2700
	cmp	ip, r0	@ D.35792, i.2713
	str	r3, [lr], #40	@ tmp247, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp247, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp247, <variable>.DispState
	str	r3, [r2, #40]	@ tmp247, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2700, ivtmp.2700,
	strb	r3, [lr, #-34]	@ tmp247, <variable>.DispState
	strb	r3, [lr, #-36]	@ tmp247, <variable>.IsDecRef
	bgt	.L1118	@,
.L1117:
	ldrsb	ip, [r6, r7]	@ D.35794, <variable>.s32PmvNum
	cmp	ip, #0	@ D.35794,
	ble	.L1119	@,
	cmp	ip, #1	@ D.35794,
	sub	r3, ip, #1	@ tmp274, D.35794,
	and	r2, r3, #1	@ tmp276, tmp274,
	mov	r1, #0	@ tmp246,
	mov	r3, #1	@ i.2714,
	strb	r1, [r4, #1]	@ tmp246, <variable>.IsPmvInUse
	ble	.L1119	@,
	cmp	r2, #0	@ tmp276,
	beq	.L1120	@,
	add	r2, r4, #1	@ tmp341, pstInst,
	mov	r3, #2	@ i.2714,
	cmp	ip, r3	@ D.35794, i.2714
	strb	r1, [r2, #1]	@ tmp246, <variable>.IsPmvInUse
	ble	.L1119	@,
.L1120:
	add	lr, r3, #1	@ tmp277, i.2714,
	add	r0, r4, r3	@ tmp331, pstInst, i.2714
	add	r3, lr, #1	@ i.2714, tmp277,
	add	r2, r4, lr	@ tmp334, pstInst, tmp277
	cmp	ip, r3	@ D.35794, i.2714
	strb	r1, [r0, #1]	@ tmp246, <variable>.IsPmvInUse
	strb	r1, [r2, #1]	@ tmp246, <variable>.IsPmvInUse
	bgt	.L1120	@,
.L1119:
	movw	r1, #35020	@ tmp236,
	mov	ip, #0	@ tmp237,
	str	ip, [r4, r1]	@ tmp237, <variable>.u32InstTick
.L1114:
	mov	r0, r5	@, tmp240
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.35766,
.L1102:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1171:
	sub	r4, r4, #528	@ tmp176, tmp168,
	mov	r1, #29696	@,
	add	r4, r4, r3	@ pstTreeInst, tmp176, tmp170
	add	r0, r4, #152	@, pstTreeInst,
	bl	__memzero	@
	movw	r1, #29920	@ tmp181,
	ldr	r0, [r4, r1]	@ D.35778, <variable>.stTreeHD_1.s32DecFsNum
	cmp	r0, #0	@ D.35778,
	ble	.L1104	@,
	add	r1, r4, #29952	@ tmp182, pstTreeInst,
	cmp	r6, r0	@ i, D.35778
	add	ip, r1, #52	@ ivtmp.2689, tmp182,
	sub	lr, r0, #1	@ tmp269, D.35778,
	mov	r3, #0	@ tmp245,
	and	lr, lr, #1	@ tmp271, tmp269,
	str	r3, [ip, #0]	@ tmp245, <variable>.u32Tick
	add	r2, r1, #92	@ ivtmp.2689, tmp182,
	strb	r3, [ip, #-36]	@ tmp245, <variable>.IsDecRef
	strb	r3, [ip, #-34]	@ tmp245, <variable>.DispState
	bge	.L1104	@,
	cmp	lr, #0	@ tmp271,
	beq	.L1105	@,
	mov	r6, #2	@ i,
	cmp	r6, r0	@ i, D.35778
	str	r3, [r2, #0]	@ tmp245, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp245, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp245, <variable>.DispState
	add	r2, r1, #132	@ ivtmp.2689, tmp182,
	bge	.L1104	@,
.L1105:
	add	r6, r6, #2	@ i, i,
	mov	r1, r2	@ tmp272, ivtmp.2689
	cmp	r6, r0	@ i, D.35778
	str	r3, [r1], #40	@ tmp245, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp245, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp245, <variable>.DispState
	str	r3, [r2, #40]	@ tmp245, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2689, ivtmp.2689,
	strb	r3, [r1, #-34]	@ tmp245, <variable>.DispState
	strb	r3, [r1, #-36]	@ tmp245, <variable>.IsDecRef
	blt	.L1105	@,
.L1104:
	movw	r0, #35128	@ tmp188,
	ldr	ip, [r4, r0]	@ D.35779, <variable>.stTreeHD_2.s32DecFsNum
	cmp	ip, #0	@ D.35779,
	ble	.L1106	@,
	add	r1, r4, #35072	@ tmp189, pstTreeInst,
	mov	r0, #1	@ i.2708,
	add	lr, r1, #140	@ ivtmp.2682, tmp189,
	cmp	r0, ip	@ i.2708, D.35779
	sub	r6, ip, #1	@ tmp264, D.35779,
	mov	r3, #0	@ tmp244,
	and	r6, r6, r0	@ tmp266, tmp264,
	str	r3, [lr, #0]	@ tmp244, <variable>.u32Tick
	strb	r3, [lr, #-36]	@ tmp244, <variable>.IsDecRef
	add	r2, r1, #180	@ ivtmp.2682, tmp189,
	strb	r3, [lr, #-34]	@ tmp244, <variable>.DispState
	bge	.L1106	@,
	cmp	r6, #0	@ tmp266,
	beq	.L1107	@,
	mov	r0, #2	@ i.2708,
	cmp	r0, ip	@ i.2708, D.35779
	str	r3, [r2, #0]	@ tmp244, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp244, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp244, <variable>.DispState
	add	r2, r1, #220	@ ivtmp.2682, tmp189,
	bge	.L1106	@,
.L1107:
	add	r0, r0, #2	@ i.2708, i.2708,
	mov	r1, r2	@ tmp268, ivtmp.2682
	cmp	r0, ip	@ i.2708, D.35779
	str	r3, [r1], #40	@ tmp244, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp244, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp244, <variable>.DispState
	str	r3, [r2, #40]	@ tmp244, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2682, ivtmp.2682,
	strb	r3, [r1, #-34]	@ tmp244, <variable>.DispState
	strb	r3, [r1, #-36]	@ tmp244, <variable>.IsDecRef
	blt	.L1107	@,
.L1106:
	movw	r2, #29924	@ tmp195,
	ldr	ip, [r4, r2]	@ D.35780, <variable>.stTreeHD_1.s32DispFsNum
	cmp	ip, #0	@ D.35780,
	ble	.L1108	@,
	add	r1, r4, #32512	@ tmp196, pstTreeInst,
	mov	r0, #1	@ i.2709,
	add	lr, r1, #52	@ ivtmp.2675, tmp196,
	cmp	r0, ip	@ i.2709, D.35780
	sub	r6, ip, #1	@ tmp259, D.35780,
	mov	r3, #0	@ tmp243,
	and	r6, r6, r0	@ tmp261, tmp259,
	str	r3, [lr, #0]	@ tmp243, <variable>.u32Tick
	strb	r3, [lr, #-36]	@ tmp243, <variable>.IsDecRef
	add	r2, r1, #92	@ ivtmp.2675, tmp196,
	strb	r3, [lr, #-34]	@ tmp243, <variable>.DispState
	bge	.L1108	@,
	cmp	r6, #0	@ tmp261,
	beq	.L1109	@,
	mov	r0, #2	@ i.2709,
	cmp	r0, ip	@ i.2709, D.35780
	str	r3, [r2, #0]	@ tmp243, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp243, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp243, <variable>.DispState
	add	r2, r1, #132	@ ivtmp.2675, tmp196,
	bge	.L1108	@,
.L1109:
	add	r0, r0, #2	@ i.2709, i.2709,
	mov	r1, r2	@ tmp263, ivtmp.2675
	cmp	r0, ip	@ i.2709, D.35780
	str	r3, [r1], #40	@ tmp243, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp243, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp243, <variable>.DispState
	str	r3, [r2, #40]	@ tmp243, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2675, ivtmp.2675,
	strb	r3, [r1, #-34]	@ tmp243, <variable>.DispState
	strb	r3, [r1, #-36]	@ tmp243, <variable>.IsDecRef
	blt	.L1109	@,
.L1108:
	movw	r3, #35132	@ tmp202,
	ldr	ip, [r4, r3]	@ D.35781, <variable>.stTreeHD_2.s32DispFsNum
	cmp	ip, #0	@ D.35781,
	ble	.L1110	@,
	add	r1, r4, #37632	@ tmp203, pstTreeInst,
	mov	r0, #1	@ i.2710,
	add	lr, r1, #140	@ ivtmp.2668, tmp203,
	cmp	r0, ip	@ i.2710, D.35781
	sub	r2, ip, #1	@ tmp254, D.35781,
	mov	r3, #0	@ tmp242,
	and	r6, r2, r0	@ tmp256, tmp254,
	str	r3, [lr, #0]	@ tmp242, <variable>.u32Tick
	strb	r3, [lr, #-36]	@ tmp242, <variable>.IsDecRef
	add	r2, r1, #180	@ ivtmp.2668, tmp203,
	strb	r3, [lr, #-34]	@ tmp242, <variable>.DispState
	bge	.L1110	@,
	cmp	r6, #0	@ tmp256,
	beq	.L1111	@,
	mov	r0, #2	@ i.2710,
	cmp	r0, ip	@ i.2710, D.35781
	str	r3, [r2, #0]	@ tmp242, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp242, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp242, <variable>.DispState
	add	r2, r1, #220	@ ivtmp.2668, tmp203,
	bge	.L1110	@,
.L1111:
	add	r0, r0, #2	@ i.2710, i.2710,
	mov	r1, r2	@ tmp258, ivtmp.2668
	cmp	r0, ip	@ i.2710, D.35781
	str	r3, [r1], #40	@ tmp242, <variable>.u32Tick
	strb	r3, [r2, #-36]	@ tmp242, <variable>.IsDecRef
	strb	r3, [r2, #-34]	@ tmp242, <variable>.DispState
	str	r3, [r2, #40]	@ tmp242, <variable>.u32Tick
	add	r2, r2, #80	@ ivtmp.2668, ivtmp.2668,
	strb	r3, [r1, #-34]	@ tmp242, <variable>.DispState
	strb	r3, [r1, #-36]	@ tmp242, <variable>.IsDecRef
	blt	.L1111	@,
.L1110:
	movw	r0, #29848	@ tmp209,
	ldr	ip, [r4, r0]	@ D.35782, <variable>.stTreePMV.s32PmvNum
	cmp	ip, #0	@ D.35782,
	ble	.L1112	@,
	mov	r2, #1	@ i.2711,
	cmp	r2, ip	@ i.2711, D.35782
	sub	r3, ip, #1	@ tmp249, D.35782,
	mov	r0, #0	@ tmp241,
	and	r1, r3, r2	@ tmp251, tmp249,
	strb	r0, [r4, #28]	@ tmp241, <variable>.IsPmvInUse
	add	r3, r4, r2	@ ivtmp.2661, pstTreeInst,
	bge	.L1112	@,
	cmp	r1, #0	@ tmp251,
	beq	.L1113	@,
	mov	r2, #2	@ i.2711,
	cmp	r2, ip	@ i.2711, D.35782
	strb	r0, [r3, #28]	@ tmp241, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.2661, ivtmp.2661,
	bge	.L1112	@,
.L1113:
	add	r2, r2, #2	@ i.2711, i.2711,
	add	lr, r3, #1	@ tmp253, ivtmp.2661,
	cmp	r2, ip	@ i.2711, D.35782
	strb	r0, [r3, #28]	@ tmp241, <variable>.IsPmvInUse
	strb	r0, [lr, #28]	@ tmp241, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.2661, tmp253,
	blt	.L1113	@,
.L1112:
	mov	ip, #0	@ tmp212,
	str	ip, [r4, #4]	@ tmp212, <variable>.u32InstTick
	b	.L1114	@
.L1170:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #183	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35766,
	b	.L1102	@
.L1173:
	.align	2
.L1172:
	.word	.LANCHOR0+528
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.global	g_pstFsp
	.global	g_pstTreeFsp
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
	.data
	.align	2
	.type	g_pstFsp, %object
	.size	g_pstFsp, 4
g_pstFsp:
	.word	s_FspInst
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
	.ascii	"Tree_FSP_PartitionFsMemory failed L%d: unsupport fo"
	.ascii	"rmat(width: %d, height: %d)\012\000"
.LC6:
	.ascii	"Tree_FSP_PartitionFsMemory L(%d): unkown LevelID(%d"
	.ascii	")\012\000"
	.space	2
.LC7:
	.ascii	"Tree_FSP_PartitionFsMemory L(%d): unkown CurLevelID"
	.ascii	"(%d)\012\000"
	.space	3
.LC8:
	.ascii	"Tree_FSP_InitInstance failed L%d: VDMHAL_ArrangeMem"
	.ascii	" return %d\012\000"
	.space	1
.LC9:
	.ascii	"p_image NULL\000"
	.space	3
.LC10:
	.ascii	"Flag Invalid\000"
	.space	3
.LC11:
	.ascii	"PmvAddrTab is NULL\012\000"
.LC12:
	.ascii	"PmvNum is NULL\012\000"
.LC13:
	.ascii	"DecFsAddrTab is NULL\012\000"
	.space	2
.LC14:
	.ascii	"DecFsNum is NULL\012\000"
	.space	2
.LC15:
	.ascii	"FSP_GetDecFsAddrTab L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC16:
	.ascii	"FSP_SetStoreType L(%d): unkown LevelID(%d)\012\000"
.LC17:
	.ascii	"LogicFrameID out of range\000"
	.space	2
.LC18:
	.ascii	"fsp.c, line %d: pstLogicFs->PmvIdc out of range(=%d"
	.ascii	")\012\000"
	.space	2
.LC19:
	.ascii	"PhyAddr is NULL\012\000"
	.space	3
.LC20:
	.ascii	"pFsNum is NULL\012\000"
.LC21:
	.ascii	"FSP_GetDecodeFrameTable L(%d): unkown LevelID(%d)\012"
	.ascii	"\000"
	.space	1
.LC22:
	.ascii	"FSP_IsFsLeak L(%d): unkown LevelID(%d)\012\000"
.LC23:
	.ascii	"ref=%d,read=%d,new=%d,total=%d\012\000"
.LC24:
	.ascii	"pstFspInstCfg = NULL\000"
	.space	3
.LC25:
	.ascii	"This inst is not active\000"
.LC26:
	.ascii	"Tree_FSP_InitInstance L%d: fs arrange return failur"
	.ascii	"e\012\000"
	.space	2
.LC27:
	.ascii	"Tree_FSP_InitInstance err, disp fs(=%d) less than 4"
	.ascii	"!\012\000"
	.space	2
.LC28:
	.ascii	"FSP_ResetInstance: can NOT init tree fs\012\000"
	.space	3
.LC29:
	.ascii	"FSP_PrintContext L(%d): unkown LevelID(%d)\012\000"
.LC30:
	.ascii	"TREE FSP CONTEXT:\012\000"
	.space	1
.LC31:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC32:
	.ascii	"eFspInstState\000"
	.space	2
.LC33:
	.ascii	"s32DispLoopEnable\000"
	.space	2
.LC34:
	.ascii	"s32TfEnable\000"
.LC35:
	.ascii	"s32RprEnable\000"
	.space	3
.LC36:
	.ascii	"s32DecFsWidth\000"
	.space	2
.LC37:
	.ascii	"s32DecFsHeight\000"
	.space	1
.LC38:
	.ascii	"s32DispFsWidth\000"
	.space	1
.LC39:
	.ascii	"s32DispFsHeight\000"
.LC40:
	.ascii	"s32ExpectedDecFsNum\000"
.LC41:
	.ascii	"s32ExpectedTfFsNum\000"
	.space	1
.LC42:
	.ascii	"s32ExpectedDispFsNum\000"
	.space	3
.LC43:
	.ascii	"s32ExpectedPmvNum\000"
	.space	2
.LC44:
	.ascii	"s32DecFsNum\000"
.LC45:
	.ascii	"s32DispFsNum\000"
	.space	3
.LC46:
	.ascii	"s32TfFsNum\000"
	.space	1
.LC47:
	.ascii	"s32PmvNum\000"
	.space	2
.LC48:
	.ascii	"tree logic fs state:\012\000"
	.space	2
.LC49:
	.ascii	"%d%d \000"
	.space	2
.LC50:
	.ascii	"\012\000"
	.space	2
.LC51:
	.ascii	"\012tree dec fs state:\012\000"
	.space	3
.LC52:
	.ascii	"\012tree disp fs state:\012\000"
	.space	2
.LC53:
	.ascii	"\012tree pmv state:\012\000"
	.space	2
.LC54:
	.ascii	"%d \000"
.LC55:
	.ascii	"\012\012\000"
	.space	1
.LC56:
	.ascii	"FSP CONTEXT:\012\000"
	.space	2
.LC57:
	.ascii	"logic fs state:\012\000"
	.space	3
.LC58:
	.ascii	"\012dec fs state:\012\000"
.LC59:
	.ascii	"\012disp fs state:\012\000"
	.space	3
.LC60:
	.ascii	"\012pmv state:\012\000"
	.space	3
.LC61:
	.ascii	"Tree_FSP_NewLogicFs L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC62:
	.ascii	"Tree_FSP_NewLogicFs: no logic frame store!!!\012\000"
	.space	2
.LC63:
	.ascii	"Tree_FSP_NewLogicFs: no decode phy fs\012\000"
	.space	1
.LC64:
	.ascii	"LeastTickPhyFs ID: %d\012\000"
	.space	1
.LC65:
	.ascii	"Tree_FSP_NewLogicFs: no pmv memory\012\000"
.LC66:
	.ascii	"Tree_FSP_NewLogicFs: no display phy fs\012\000"
.LC67:
	.ascii	"Tree_FSP_NewLogicFs: can not find disp fs\012\000"
	.space	1
.LC68:
	.ascii	"RefNum,ReadNum,NewNum,Total = %d,%d,%d,%d\012\000"
	.space	1
.LC69:
	.ascii	"FSP_GetInstInfo L(%d): unkown LevelID(%d)\012\000"
	.space	1
.LC70:
	.ascii	"FSP_SetDisplay: LogicTick=%d, DispTick=%d!\012\000"
.LC71:
	.ascii	"FSP_NewLogicFs failed!\012\000"
.LC72:
	.ascii	"no logic frame store!!!\012\000"
	.space	3
.LC73:
	.ascii	"no decode phy fs\012\000"
	.space	2
.LC74:
	.ascii	"no pmv memory\012\000"
	.space	1
.LC75:
	.ascii	"no display phy fs\012\000"
	.space	1
.LC76:
	.ascii	"can not find disp fs\012\000"
	.space	2
.LC77:
	.ascii	"Tree_FSP_PartitionFsMemory failed!\012\000"
.LC78:
	.ascii	"decode channel CapLevel is %d(w=%d,h=%d), this stre"
	.ascii	"am (w=%d,h=%d) can NOT be decoded!\012\000"
	.space	1
.LC79:
	.ascii	"disp fs(=%d) less than expected(=%d+%d)!\012\000"
	.space	2
.LC80:
	.ascii	"arrange ret %d, min = %d, actual = %d\012\000"
	.space	1
.LC81:
	.ascii	"pstVoQue is NULL\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 106392
.LANCHOR2 = . + 229152
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 528
s_FspVoQue:
	.space	528
	.type	s_FspInst, %object
	.size	s_FspInst, 105336
s_FspInst:
	.space	105336
	.type	s_TreeFspInst, %object
	.size	s_TreeFspInst, 121104
s_TreeFspInst:
	.space	121104
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 48
g_SpinLock_fsp:
	.space	48
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
