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
	.file	"vfmw_ctrl.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o -O2 -Wall -Wundef
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
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.35872, s_pstVfmwChan
	cmp	r0, #0	@ D.35872,
	addne	r0, r0, #112	@ D.35875, D.35872,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.35893, s_pstVfmwChan
	cmp	r0, #0	@ D.35893,
	addne	r0, r0, #136	@ D.35896, D.35893,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetSyntaxCtx
	.type	VCTRL_GetSyntaxCtx, %function
VCTRL_GetSyntaxCtx:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.35942, s_pstVfmwChan
	cmp	r0, #0	@ D.35942,
	addne	r0, r0, #944	@ D.35945, D.35942,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetSyntaxCtx, .-VCTRL_GetSyntaxCtx
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36001, s_pstVfmwChan
	cmp	r0, #0	@ D.36001,
	addne	r0, r0, #124	@ D.36004, D.36001,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
.LFB1396:
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
	ldr	r3, [r3, r0, asl #2]	@ D.36653, s_pstVfmwChan
	ldr	r2, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	bne	.L24	@,
.L18:
	mvn	r0, #0	@ D.36706,
	ldmfd	sp, {fp, sp, pc}	@
.L24:
	ldr	r2, [r3, #36]	@ D.36658, <variable>.stChanCfg.eVidStd
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, r0	@ D.36658, <variable>.eVidStd
	bne	.L18	@,
	ldr	ip, [r3, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r0, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L18	@,
	ldr	ip, [r3, #48]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r0, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L18	@,
	ldr	ip, [r3, #56]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L18	@,
	ldr	ip, [r3, #60]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	r0, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L18	@,
	ldr	ip, [r3, #64]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r0, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L18	@,
	ldr	ip, [r3, #72]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r0, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L18	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	r0, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L18	@,
	ldr	ip, [r3, #88]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r0, [r1, #52]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L18	@,
	ldr	ip, [r3, #100]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #64]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L18	@,
	ldr	ip, [r3, #96]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r0, [r1, #60]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L18	@,
	ldr	ip, [r3, #92]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	r0, [r1, #56]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L18	@,
	ldr	ip, [r3, #104]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r0, [r1, #68]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	ip, r0	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	bne	.L18	@,
	cmp	r2, #1	@ D.36658,
	beq	.L25	@,
	sub	r0, r2, #10	@ tmp170, D.36658,
	cmp	r0, #2	@ tmp170,
	bhi	.L20	@,
	ldr	r2, [r3, #40]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	ip, [r1, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, ip	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L18	@,
.L20:
	mov	r0, #0	@ D.36706,
	ldmfd	sp, {fp, sp, pc}	@
.L25:
	ldr	r0, [r3, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r2, [r1, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r2	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L18	@,
	ldr	ip, [r3, #44]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r3, [r1, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, r3	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L20	@,
	b	.L18	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #728]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
	subs	r0, r0, #1	@, <variable>.s32NoStreamFlag,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
.LFB1418:
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
	cmp	r0, #15	@ ChanID,
	bls	.L32	@,
.L29:
	mvn	r0, #0	@ D.37730,
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.37729, s_pstVfmwChan
	cmp	r3, #0	@ D.37729,
	beq	.L29	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L29	@,
	ldr	r1, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L29	@,
	ldr	ip, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L29	@,
	ldr	r3, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	movne	r0, #0	@ D.37730,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L29	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanMemSizeByResolution
	.type	VCTRL_GetChanMemSizeByResolution, %function
VCTRL_GetChanMemSizeByResolution:
	.fnstart
.LFB1427:
	@ args = 0, pretend = 0, frame = 632
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #656
	sub	sp, sp, #656	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp141,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp141,
	mov	r5, r2	@ VdmMemSize, VdmMemSize
	mov	r4, r3	@ ScdMemSize, ScdMemSize
	ldr	ip, [ip, #36]	@ D.38211, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38211,
	beq	.L34	@,
	mov	r2, r0	@, MaxWidth
	mov	r3, r1	@, MaxHeight
	mov	r0, #6	@ tmp142,
	mov	r1, #16	@ tmp143,
	str	r0, [sp, #0]	@ tmp142,
	mov	lr, #0	@ tmp144,
	str	r1, [sp, #4]	@ tmp143,
	mvn	r0, #0	@ tmp145,
	sub	r1, fp, #648	@ tmp147,,
	str	r0, [sp, #12]	@ tmp145,
	str	r1, [sp, #16]	@ tmp147,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp144,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38211
	cmp	r0, #0	@ ret
	bne	.L34	@,
	ldr	r2, [fp, #-644]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r3, #2129920	@ tmp149,
	str	r2, [r5, #0]	@ MemArrange.TotalMemUsed,* VdmMemSize
	str	r3, [r4, #0]	@ tmp149,* ScdMemSize
	str	r2, [r5, #4]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #4]	@ tmp149,
	str	r2, [r5, #8]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #8]	@ tmp149,
.L35:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L34:
	mvn	r0, #0	@ D.38224,
	b	.L35	@
	.fnend
	.size	VCTRL_GetChanMemSizeByResolution, .-VCTRL_GetChanMemSizeByResolution
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1433:
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
	ldr	r2, [r3, #0]	@ temp.1052, s_pstVfmwChan
	cmp	r2, #0	@ temp.1052,
	beq	.L38	@,
	add	r2, r2, #952	@ tmp153, temp.1052,
	cmp	r2, r0	@ tmp153, pCtx
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L38:
	ldr	r2, [r3, #4]	@ temp.1054, s_pstVfmwChan
	cmp	r2, #0	@ temp.1054,
	beq	.L40	@,
	add	r1, r2, #952	@ tmp155, temp.1054,
	cmp	r1, r0	@ tmp155, pCtx
	moveq	r0, #1	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L40:
	ldr	r2, [r3, #8]	@ temp.1056, s_pstVfmwChan
	cmp	r2, #0	@ temp.1056,
	beq	.L41	@,
	add	ip, r2, #952	@ tmp157, temp.1056,
	cmp	ip, r0	@ tmp157, pCtx
	moveq	r0, #2	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L41:
	ldr	r2, [r3, #12]	@ temp.1058, s_pstVfmwChan
	cmp	r2, #0	@ temp.1058,
	beq	.L42	@,
	add	r2, r2, #952	@ tmp159, temp.1058,
	cmp	r2, r0	@ tmp159, pCtx
	moveq	r0, #3	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L42:
	ldr	r2, [r3, #16]	@ temp.1060, s_pstVfmwChan
	cmp	r2, #0	@ temp.1060,
	beq	.L43	@,
	add	r1, r2, #952	@ tmp161, temp.1060,
	cmp	r1, r0	@ tmp161, pCtx
	moveq	r0, #4	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L43:
	ldr	r2, [r3, #20]	@ temp.1062, s_pstVfmwChan
	cmp	r2, #0	@ temp.1062,
	beq	.L44	@,
	add	ip, r2, #952	@ tmp163, temp.1062,
	cmp	ip, r0	@ tmp163, pCtx
	moveq	r0, #5	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L44:
	ldr	r2, [r3, #24]	@ temp.1064, s_pstVfmwChan
	cmp	r2, #0	@ temp.1064,
	beq	.L45	@,
	add	r2, r2, #952	@ tmp165, temp.1064,
	cmp	r2, r0	@ tmp165, pCtx
	moveq	r0, #6	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L45:
	ldr	r2, [r3, #28]	@ temp.1066, s_pstVfmwChan
	cmp	r2, #0	@ temp.1066,
	beq	.L46	@,
	add	r1, r2, #952	@ tmp167, temp.1066,
	cmp	r1, r0	@ tmp167, pCtx
	moveq	r0, #7	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L46:
	ldr	r2, [r3, #32]	@ temp.1068, s_pstVfmwChan
	cmp	r2, #0	@ temp.1068,
	beq	.L47	@,
	add	ip, r2, #952	@ tmp169, temp.1068,
	cmp	ip, r0	@ tmp169, pCtx
	moveq	r0, #8	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L47:
	ldr	r2, [r3, #36]	@ temp.1070, s_pstVfmwChan
	cmp	r2, #0	@ temp.1070,
	beq	.L48	@,
	add	r2, r2, #952	@ tmp171, temp.1070,
	cmp	r2, r0	@ tmp171, pCtx
	moveq	r0, #9	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L48:
	ldr	r2, [r3, #40]	@ temp.1072, s_pstVfmwChan
	cmp	r2, #0	@ temp.1072,
	beq	.L49	@,
	add	r1, r2, #952	@ tmp173, temp.1072,
	cmp	r1, r0	@ tmp173, pCtx
	moveq	r0, #10	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L49:
	ldr	r2, [r3, #44]	@ temp.1074, s_pstVfmwChan
	cmp	r2, #0	@ temp.1074,
	beq	.L50	@,
	add	ip, r2, #952	@ tmp175, temp.1074,
	cmp	ip, r0	@ tmp175, pCtx
	moveq	r0, #11	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L50:
	ldr	r2, [r3, #48]	@ temp.1076, s_pstVfmwChan
	cmp	r2, #0	@ temp.1076,
	beq	.L51	@,
	add	r2, r2, #952	@ tmp177, temp.1076,
	cmp	r2, r0	@ tmp177, pCtx
	moveq	r0, #12	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L51:
	ldr	r2, [r3, #52]	@ temp.1078, s_pstVfmwChan
	cmp	r2, #0	@ temp.1078,
	beq	.L52	@,
	add	r1, r2, #952	@ tmp179, temp.1078,
	cmp	r1, r0	@ tmp179, pCtx
	moveq	r0, #13	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L52:
	ldr	r2, [r3, #56]	@ temp.1080, s_pstVfmwChan
	cmp	r2, #0	@ temp.1080,
	beq	.L53	@,
	add	ip, r2, #952	@ tmp181, temp.1080,
	cmp	ip, r0	@ tmp181, pCtx
	moveq	r0, #14	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L53:
	ldr	r3, [r3, #60]	@ D.38713, s_pstVfmwChan
	cmp	r3, #0	@ D.38713,
	beq	.L54	@,
	add	r3, r3, #952	@ tmp183, D.38713,
	cmp	r3, r0	@ tmp183, pCtx
	moveq	r0, #15	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L54:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1434:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp265,
	movt	r3, #:upper16:.LANCHOR0	@ tmp265,
	ldr	r2, [r3, #0]	@ temp.1106, s_pstVfmwChan
	cmp	r2, #0	@ temp.1106,
	beq	.L57	@,
	ldr	r1, [r2, #176]	@ temp.1108, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1108
	bge	.L58	@,
.L60:
	ldr	r1, [r2, #188]	@ temp.1107, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1107
	blt	.L57	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp185, temp.1107, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp185
	blt	.L106	@,
.L57:
	ldr	r2, [r3, #4]	@ temp.1113, s_pstVfmwChan
	cmp	r2, #0	@ temp.1113,
	beq	.L61	@,
	ldr	r1, [r2, #176]	@ temp.1114, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1114
	bge	.L62	@,
.L63:
	ldr	r1, [r2, #188]	@ temp.1115, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1115
	blt	.L61	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp190, temp.1115, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp190
	blt	.L108	@,
.L61:
	ldr	r2, [r3, #8]	@ temp.1120, s_pstVfmwChan
	cmp	r2, #0	@ temp.1120,
	beq	.L64	@,
	ldr	r1, [r2, #176]	@ temp.1121, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1121
	bge	.L65	@,
.L66:
	ldr	r1, [r2, #188]	@ temp.1122, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1122
	blt	.L64	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp195, temp.1122, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp195
	blt	.L121	@,
.L64:
	ldr	r2, [r3, #12]	@ temp.1127, s_pstVfmwChan
	cmp	r2, #0	@ temp.1127,
	beq	.L67	@,
	ldr	r1, [r2, #176]	@ temp.1128, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1128
	bge	.L68	@,
.L69:
	ldr	r1, [r2, #188]	@ temp.1129, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1129
	blt	.L67	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp200, temp.1129, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp200
	blt	.L120	@,
.L67:
	ldr	r2, [r3, #16]	@ temp.1134, s_pstVfmwChan
	cmp	r2, #0	@ temp.1134,
	beq	.L70	@,
	ldr	r1, [r2, #176]	@ temp.1135, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1135
	bge	.L71	@,
.L72:
	ldr	r1, [r2, #188]	@ temp.1136, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1136
	blt	.L70	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp205, temp.1136, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp205
	blt	.L119	@,
.L70:
	ldr	r2, [r3, #20]	@ temp.1141, s_pstVfmwChan
	cmp	r2, #0	@ temp.1141,
	beq	.L73	@,
	ldr	r1, [r2, #176]	@ temp.1142, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1142
	bge	.L74	@,
.L75:
	ldr	r1, [r2, #188]	@ temp.1143, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1143
	blt	.L73	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp210, temp.1143, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp210
	blt	.L118	@,
.L73:
	ldr	r2, [r3, #24]	@ temp.1148, s_pstVfmwChan
	cmp	r2, #0	@ temp.1148,
	beq	.L76	@,
	ldr	r1, [r2, #176]	@ temp.1149, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1149
	bge	.L77	@,
.L78:
	ldr	r1, [r2, #188]	@ temp.1150, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1150
	blt	.L76	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp215, temp.1150, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp215
	blt	.L117	@,
.L76:
	ldr	r2, [r3, #28]	@ temp.1155, s_pstVfmwChan
	cmp	r2, #0	@ temp.1155,
	beq	.L79	@,
	ldr	r1, [r2, #176]	@ temp.1156, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1156
	bge	.L80	@,
.L81:
	ldr	r1, [r2, #188]	@ temp.1157, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1157
	blt	.L79	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp220, temp.1157, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp220
	blt	.L116	@,
.L79:
	ldr	r2, [r3, #32]	@ temp.1162, s_pstVfmwChan
	cmp	r2, #0	@ temp.1162,
	beq	.L82	@,
	ldr	r1, [r2, #176]	@ temp.1163, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1163
	bge	.L83	@,
.L84:
	ldr	r1, [r2, #188]	@ temp.1164, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1164
	blt	.L82	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp225, temp.1164, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp225
	blt	.L115	@,
.L82:
	ldr	r2, [r3, #36]	@ temp.1169, s_pstVfmwChan
	cmp	r2, #0	@ temp.1169,
	beq	.L85	@,
	ldr	r1, [r2, #176]	@ temp.1170, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1170
	bge	.L86	@,
.L87:
	ldr	r1, [r2, #188]	@ temp.1171, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1171
	blt	.L85	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp230, temp.1171, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp230
	blt	.L114	@,
.L85:
	ldr	r2, [r3, #40]	@ temp.1176, s_pstVfmwChan
	cmp	r2, #0	@ temp.1176,
	beq	.L88	@,
	ldr	r1, [r2, #176]	@ temp.1177, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1177
	bge	.L89	@,
.L90:
	ldr	r1, [r2, #188]	@ temp.1178, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1178
	blt	.L88	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp235, temp.1178, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp235
	blt	.L113	@,
.L88:
	ldr	r2, [r3, #44]	@ temp.1183, s_pstVfmwChan
	cmp	r2, #0	@ temp.1183,
	beq	.L91	@,
	ldr	r1, [r2, #176]	@ temp.1184, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1184
	bge	.L92	@,
.L93:
	ldr	r1, [r2, #188]	@ temp.1185, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1185
	blt	.L91	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp240, temp.1185, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp240
	blt	.L112	@,
.L91:
	ldr	r2, [r3, #48]	@ temp.1190, s_pstVfmwChan
	cmp	r2, #0	@ temp.1190,
	beq	.L94	@,
	ldr	r1, [r2, #176]	@ temp.1191, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1191
	bge	.L95	@,
.L96:
	ldr	r1, [r2, #188]	@ temp.1192, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1192
	blt	.L94	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp245, temp.1192, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp245
	blt	.L111	@,
.L94:
	ldr	r2, [r3, #52]	@ temp.1197, s_pstVfmwChan
	cmp	r2, #0	@ temp.1197,
	beq	.L97	@,
	ldr	r1, [r2, #176]	@ temp.1198, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1198
	bge	.L98	@,
.L99:
	ldr	r1, [r2, #188]	@ temp.1199, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1199
	blt	.L97	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp250, temp.1199, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp250
	blt	.L110	@,
.L97:
	ldr	r2, [r3, #56]	@ temp.1204, s_pstVfmwChan
	cmp	r2, #0	@ temp.1204,
	beq	.L100	@,
	ldr	r1, [r2, #176]	@ temp.1205, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1205
	bge	.L101	@,
.L102:
	ldr	r1, [r2, #188]	@ temp.1206, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1206
	blt	.L100	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp255, temp.1206, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp255
	blt	.L109	@,
.L100:
	ldr	r3, [r3, #60]	@ D.38729, s_pstVfmwChan
	cmp	r3, #0	@ D.38729,
	beq	.L103	@,
	ldr	r2, [r3, #176]	@ D.38732, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.38732, PhyAddr
	bgt	.L104	@,
	ldr	r1, [r3, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp260, D.38732, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp260
	blt	.L107	@,
.L104:
	ldr	r2, [r3, #188]	@ D.38740, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.38740
	blt	.L103	@,
	ldr	r3, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp262, D.38740, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp262
	blt	.L107	@,
.L103:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L58:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp187, temp.1108, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp187
	bge	.L60	@,
.L106:
	mov	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L62:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp192, temp.1114, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp192
	bge	.L63	@,
.L108:
	mov	r0, #1	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp197, temp.1121, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp197
	bge	.L66	@,
.L121:
	mov	r0, #2	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L68:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp202, temp.1128, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp202
	bge	.L69	@,
.L120:
	mov	r0, #3	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L71:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp207, temp.1135, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp207
	bge	.L72	@,
.L119:
	mov	r0, #4	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L74:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp212, temp.1142, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp212
	bge	.L75	@,
.L118:
	mov	r0, #5	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L77:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp217, temp.1149, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp217
	bge	.L78	@,
.L117:
	mov	r0, #6	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L80:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp222, temp.1156, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp222
	bge	.L81	@,
.L116:
	mov	r0, #7	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L83:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp227, temp.1163, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp227
	bge	.L84	@,
.L115:
	mov	r0, #8	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L86:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp232, temp.1170, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp232
	bge	.L87	@,
.L114:
	mov	r0, #9	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L89:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp237, temp.1177, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp237
	bge	.L90	@,
.L113:
	mov	r0, #10	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L92:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp242, temp.1184, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp242
	bge	.L93	@,
.L112:
	mov	r0, #11	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L95:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp247, temp.1191, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp247
	bge	.L96	@,
.L111:
	mov	r0, #12	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L98:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp252, temp.1198, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp252
	bge	.L99	@,
.L110:
	mov	r0, #13	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L101:
	ldr	ip, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp257, temp.1205, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp257
	bge	.L102	@,
.L109:
	mov	r0, #14	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L107:
	mov	r0, #15	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1436:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp154,
	movt	r3, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r0, [r3, r0, asl #2]	@ D.38920, s_pstVfmwChan
	cmp	r0, #0	@ D.38920,
	beq	.L123	@,
	ldr	r2, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L123	@
.L137:
	.word	.L136
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L123
	.word	.L131
	.word	.L132
	.word	.L133
	.word	.L133
	.word	.L133
	.word	.L134
	.word	.L128
	.word	.L136
	.word	.L123
	.word	.L123
	.word	.L136
.L136:
	add	r0, r0, #960	@ pstVoQue, D.38920,
	ldmfd	sp, {fp, sp, pc}	@
.L123:
	mov	r0, #0	@ pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L133:
	ldr	r3, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r0, r0, #13568	@ pstVoQue, D.38920,
	addne	r0, r0, #32	@ pstVoQue, pstVoQue,
	ldmnefd	sp, {fp, sp, pc}	@
.L128:
	add	ip, r0, #24320	@ pstVoQue, D.38920,
	add	r0, ip, #184	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L129:
	add	r0, r0, #31488	@ pstVoQue, D.38920,
	add	r0, r0, #200	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L130:
	add	r3, r0, #16896	@ pstVoQue, D.38920,
	add	r0, r3, #128	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L131:
	add	ip, r0, #43776	@ pstVoQue, D.38920,
	add	r0, ip, #240	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L134:
	add	r2, r0, #9088	@ pstVoQue, D.38920,
	add	r0, r2, #32	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L127:
	add	r0, r0, #77824	@ pstVoQue, D.38920,
	add	r0, r0, #552	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L132:
	add	r2, r0, #43776	@ pstVoQue, D.38920,
	add	r0, r2, #216	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L125:
	add	r1, r0, #113664	@ pstVoQue, D.38920,
	add	r0, r1, #1000	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L126:
	add	r1, r0, #23552	@ pstVoQue, D.38920,
	add	r0, r1, #8	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1454:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, #68]	@ g_event_report.759, g_event_report
	cmp	r3, #0	@ g_event_report.759,
	beq	.L143	@,
	sub	r2, fp, #12	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.759
.L143:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	str2val
	.type	str2val, %function
str2val:
	.fnstart
.LFB1465:
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp173,* str
	cmp	r3, #48	@ tmp173,
	beq	.L187	@,
.L145:
	mov	r4, #10	@ weight,
	mov	r5, #0	@ i,
.L146:
	add	r0, r0, r5	@ ivtmp.1284, str, i
	mov	ip, #0	@ dat,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40342,* ivtmp.1284
	cmp	r3, #31	@ D.40342,
	bls	.L147	@,
	cmp	r4, #16	@ weight,
	beq	.L176	@,
.L157:
	sub	ip, r3, #48	@ tmp194, D.40342,
	uxtb	r3, ip	@ tmp195, tmp194
	cmp	r3, #9	@ tmp195,
	bhi	.L177	@,
.L178:
	mov	r2, #1	@ tmp185,
	cmp	r2, #0	@ tmp185,
	add	r0, r0, r2	@ ivtmp.1284, ivtmp.1284,
	add	r5, r5, r2	@ i, i,
	beq	.L154	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40342,* ivtmp.1284
	cmp	r3, #31	@ D.40342,
	bls	.L147	@,
	cmp	r4, #16	@ weight,
	beq	.L180	@,
.L162:
	sub	r3, r3, #48	@ tmp199, D.40342,
	uxtb	r2, r3	@ tmp200, tmp199
	cmp	r2, #9	@ tmp200,
	bhi	.L177	@,
.L181:
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1284, ivtmp.1284,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L154	@,
.L147:
	mov	r0, #0	@ D.40362,
	str	ip, [r1, #0]	@ dat,* data
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L149:
	cmp	r3, #64	@ D.40342,
	bhi	.L150	@,
.L148:
	sub	r3, r3, #48	@ tmp181, D.40342,
	uxtb	r2, r3	@ tmp182, tmp181
	cmp	r2, #9	@ tmp182,
	bhi	.L177	@,
.L151:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40342,
	add	r5, r5, #1	@ tmp186, i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	cmp	r2, #31	@ D.40342,
	add	r0, r0, #1	@ tmp187, ivtmp.1284,
	bls	.L147	@,
	cmp	r4, #16	@ weight,
	beq	.L183	@,
.L168:
	sub	r2, r2, #48	@ tmp203, D.40342,
	uxtb	r3, r2	@ tmp204, tmp203
	cmp	r3, #9	@ tmp204,
	bhi	.L177	@,
.L184:
	add	r5, r5, #1	@ i, tmp186,
	add	r0, r0, #1	@ ivtmp.1284, tmp187,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r2	@ dat, weight, dat, d
	bhi	.L147	@,
.L154:
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40342,* ivtmp.1284
	cmp	r3, #31	@ D.40342,
	bls	.L147	@,
	cmp	r4, #16	@ weight,
	bne	.L148	@,
	cmp	r3, #96	@ D.40342,
	bls	.L149	@,
	cmp	r3, #102	@ D.40342,
	subls	r3, r3, #87	@ d, D.40342,
	bls	.L151	@,
.L150:
	cmp	r3, #70	@ D.40342,
	subls	r3, r3, #55	@ d, D.40342,
	bls	.L151	@,
	b	.L148	@
.L183:
	cmp	r2, #96	@ D.40342,
	bls	.L170	@,
	cmp	r2, #102	@ D.40342,
	bhi	.L171	@,
	sub	r2, r2, #87	@ d, D.40342,
	b	.L184	@
.L170:
	cmp	r2, #64	@ D.40342,
	bls	.L168	@,
.L171:
	cmp	r2, #70	@ D.40342,
	subls	r2, r2, #55	@ d, D.40342,
	bls	.L184	@,
	b	.L168	@
.L187:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40336,
	cmp	r2, #120	@ D.40336,
	cmpne	r2, #88	@, D.40336,
	moveq	r4, #16	@ weight,
	moveq	r5, #2	@ i,
	beq	.L146	@,
	b	.L145	@
.L176:
	cmp	r3, #96	@ D.40342,
	bls	.L159	@,
	cmp	r3, #102	@ D.40342,
	bhi	.L160	@,
	sub	ip, r3, #87	@ d, D.40342,
	b	.L178	@
.L159:
	cmp	r3, #64	@ D.40342,
	bls	.L157	@,
.L160:
	cmp	r3, #70	@ D.40342,
	subls	ip, r3, #55	@ d, D.40342,
	bls	.L178	@,
	b	.L157	@
.L180:
	cmp	r3, #96	@ D.40342,
	bls	.L164	@,
	cmp	r3, #102	@ D.40342,
	bhi	.L165	@,
	sub	r3, r3, #87	@ d, D.40342,
	b	.L181	@
.L164:
	cmp	r3, #64	@ D.40342,
	bls	.L162	@,
.L165:
	cmp	r3, #70	@ D.40342,
	subls	r3, r3, #55	@ d, D.40342,
	bhi	.L162	@,
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1284, ivtmp.1284,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L154	@,
	b	.L147	@
.L177:
	mvn	r0, #0	@ D.40362,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	str2val, .-str2val
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1469:
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
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L189	@
.L197:
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L195
	.word	.L196
.L196:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L189:
	mov	r3, r1	@, enFmt
	movw	r2, #8779	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L190:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L191:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L192:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L193:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L194:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L195:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB1452:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L211	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.39522, s_pstVfmwChan
	cmp	r3, #0	@ D.39522,
	strne	r1, [r3, #732]	@ Value, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
.L211:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #7383	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB1451:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L217	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.39510, s_pstVfmwChan
	cmp	r3, #0	@ D.39510,
	mvneq	r0, #0	@ D.39508,
	ldrne	r0, [r3, #732]	@ D.39508, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
.L217:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #7371	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39508,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1441:
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
	add	r4, r0, #4992	@ tmp138, new_extra_ref,
	add	r3, r4, #8	@ tmp138, tmp138,
	movw	r2, #10000	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	cmp	r3, r2	@ tmp138, tmp140
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	mov	r5, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r4, #72]	@ new_extra_ref, extra_ref
	bhi	.L222	@,
.L219:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.647, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.647, tmp145
	strge	r0, [r4, #72]	@, iftmp.647, extra_ref
	strlt	r6, [r4, #72]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #76]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L223	@,
.L220:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1383, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1383, tmp155
	strge	r5, [r4, #76]	@, iftmp.1383, extra_disp
	strlt	r3, [r4, #76]	@, tmp155, extra_disp
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L222:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #72]	@ new_extra_ref, extra_ref
	b	.L219	@
.L223:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #76]	@ new_extra_disp, extra_disp
	b	.L220	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1440:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L229	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.38993, s_pstVfmwChan
	cmp	r3, #0	@ D.38993,
	moveq	r0, #27	@ D.38991,
	ldrne	r0, [r3, #28]	@ D.38991, <variable>.eChanCapLevel
	ldmfd	sp, {fp, sp, pc}	@
.L229:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6514	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38991,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1439:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L235	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.38981, s_pstVfmwChan
	cmp	r0, #0	@ D.38981,
	beq	.L236	@,
	movw	r1, #:lower16:11201080	@ tmp142,
	movt	r1, #:upper16:11201080	@ tmp142,
	ldr	r0, [r0, r1]	@ D.38979, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp, {fp, sp, pc}	@
.L235:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6506	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38979,
	ldmfd	sp, {fp, sp, pc}	@
.L236:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6507	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38979,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1438:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L242	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.38969, s_pstVfmwChan
	cmp	r0, #0	@ D.38969,
	beq	.L243	@,
	movw	r1, #:lower16:11201076	@ tmp142,
	movt	r1, #:upper16:11201076	@ tmp142,
	ldr	r0, [r0, r1]	@ D.38967, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp, {fp, sp, pc}	@
.L242:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6498	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38967,
	ldmfd	sp, {fp, sp, pc}	@
.L243:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6499	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38967,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1431:
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
	movw	r7, #:lower16:1431655766	@ tmp146,
	mov	ip, r2, asl #1	@ tmp143, Threshould,
	movt	r7, #:upper16:1431655766	@ tmp146,
	mov	r4, r2	@ Threshould, Threshould
	add	r6, r2, #7	@ tmp140, Threshould,
	smull	r2, r3, r7, ip	@, tmp145, tmp146, tmp143
	cmp	r4, #0	@ Threshould,
	mov	r5, r0	@ CurMode, CurMode
	mov	r7, r1	@ StreamAmount, StreamAmount
	movge	r6, r4	@ Threshould, Threshould
	mov	r0, #30	@,
	mov	r6, r6, asr #3	@ tmp141, Threshould,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r4, [sp, #0]	@ Threshould,
	mov	r2, r6	@, tmp141
	sub	r3, r3, ip, asr #31	@, tmp145, tmp143,
	str	r7, [sp, #4]	@ StreamAmount,
	bl	dprint_vfmw	@
	cmp	r5, #3	@ CurMode,
	beq	.L251	@,
	cmp	r4, r7	@ Threshould, StreamAmount
	blt	.L248	@,
.L250:
	mov	r4, r5	@ NextMode, CurMode
.L247:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L248:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L247	@
.L251:
	cmp	r6, r7	@ tmp141, StreamAmount
	ble	.L250	@,
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L247	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1428:
	@ args = 0, pretend = 0, frame = 656
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #692
	sub	sp, sp, #692	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	sl, r0, asl #3	@ tmp313, eCapLevel,
	rsb	r8, r0, sl	@ tmp169, eCapLevel, tmp313
	movw	r6, #:lower16:CapItem	@ tmp312,
	movt	r6, #:upper16:CapItem	@ tmp312,
	sub	r3, r0, #18	@ D.40705, eCapLevel,
	add	r4, r6, r8, asl #2	@, tmp171, tmp312, tmp169,
	cmp	r3, #7	@ D.40705,
	mov	r5, r0	@ eCapLevel, eCapLevel
	str	r2, [fp, #-684]	@ ScdMemSize, %sfp
	ldr	r8, [r4, #12]	@ TempMinFrame, CapItem
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	ldr	r0, [r4, #20]	@, CapItem
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	ldr	ip, [r4, #8]	@ TempPmv, CapItem
	movhi	r3, #6	@ MinDnrFspNum,
	ldr	r9, [r4, #16]	@ TempMiddleFrame, CapItem
	movw	r4, #:lower16:.LANCHOR0	@ tmp314,
	movt	r4, #:upper16:.LANCHOR0	@ tmp314,
	str	r1, [fp, #-680]	@ VdmMemSize, %sfp
	ldrls	r3, [r2, r3, asl #2]	@ MinDnrFspNum, CSWTCH.837
	sub	r2, r8, #2	@ tmp198, TempMinFrame,
	ldr	r1, [r4, #72]	@ extra_ref, extra_ref
	rsb	r3, r3, r2	@ s32MaxRefFrameNum, MinDnrFspNum, tmp198
	str	r0, [fp, #-696]	@, %sfp
	cmp	r1, #0	@ extra_ref,
	movlt	r2, #0	@ tmp202,
	strlt	r2, [r4, #72]	@ tmp202, extra_ref
	cmp	r3, #15	@ s32MaxRefFrameNum,
	movgt	r7, #0	@ extra_ref_tmp,
	bgt	.L257	@,
	ldr	r7, [r4, #72]	@ extra_ref_tmp, extra_ref
	add	r2, r3, r7	@ D.38263, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r2, #16	@ D.38263,
	addgt	r7, r7, #16	@ D.38266, extra_ref_tmp,
	rsbgt	r7, r2, r7	@ extra_ref_tmp, D.38263, D.38266
.L257:
	add	r3, r7, ip	@ TempPmv.1505, extra_ref_tmp, TempPmv
	ldr	r1, [r4, #76]	@, extra_disp
	cmp	r3, #0	@ TempPmv.1505,
	str	r1, [fp, #-688]	@, %sfp
	ble	.L273	@,
	cmp	r3, #17	@ TempPmv.1505,
	movge	r3, #17	@ TempPmv.1505,
	str	r3, [fp, #-692]	@ TempPmv.1505, %sfp
.L259:
	cmp	r5, #23	@ eCapLevel,
	bhi	.L260	@,
	ldr	ip, [fp, #-688]	@, %sfp
	add	r3, r7, ip	@ D.38269, extra_ref_tmp,
	add	r2, r3, r8	@ TempMinFrame.1502, D.38269, TempMinFrame
	add	r1, r3, r9	@ TempMiddleFrame.1503, D.38269, TempMiddleFrame
	cmp	r2, #0	@ TempMinFrame.1502,
	cmpgt	r1, #0	@, TempMiddleFrame.1503,
	ble	.L261	@,
	ldr	r0, [fp, #-696]	@, %sfp
	add	lr, r3, r0	@ TempFluentFrame.1504, D.38269,
	cmp	lr, #0	@ TempFluentFrame.1504,
	strgt	lr, [fp, #-700]	@ TempFluentFrame.1504, %sfp
	strgt	r1, [fp, #-688]	@ TempMiddleFrame.1503, %sfp
	movgt	r8, r2	@ nMinFrame, TempMinFrame.1502
	ble	.L261	@,
.L263:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp215,
	ldr	ip, [r7, #36]	@ D.38287, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38287,
	beq	.L266	@,
.L274:
	rsb	r5, r5, sl	@ tmp219, eCapLevel, tmp313
	ldr	sl, [fp, #-692]	@, %sfp
	str	r8, [sp, #4]	@ nMinFrame,
	add	r8, r5, #1	@ tmp227, tmp219,
	mov	r9, #0	@ tmp229,
	mov	r0, #1	@,
	str	sl, [sp, #0]	@,
	mvn	r1, #-2147483648	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp228, CapItem
	mvn	sl, #0	@ tmp230,
	ldr	r2, [r6, r5, asl #2]	@ tmp222, CapItem
	movw	r4, #:lower16:CapItem	@ tmp216,
	str	r9, [sp, #8]	@ tmp229,
	sub	r9, fp, #672	@ tmp232,,
	str	sl, [sp, #12]	@ tmp230,
	movt	r4, #:upper16:CapItem	@ tmp216,
	str	r9, [sp, #16]	@ tmp232,
	add	r6, r6, r5, asl #2	@, tmp221, tmp312, tmp219,
	blx	ip	@ D.38287
	subs	r3, r0, #0	@ ret,
	bne	.L266	@,
	ldr	r2, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [fp, #-680]	@, %sfp
	add	r1, r2, #47104	@ tmp234, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp234, tmp234,
	str	ip, [lr, #0]	@ tmp234,
	ldr	r1, [fp, #-684]	@, %sfp
	ldr	r0, [r6, #24]	@ tmp244, CapItem
	add	r2, r0, #32768	@ tmp245, tmp244,
	str	r2, [r1, #0]	@ tmp245,
	ldr	ip, [r7, #36]	@ temp.1507, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1507,
	beq	.L268	@,
	ldr	lr, [r4, r8, asl #2]	@ tmp260, CapItem
	mov	r0, #1	@,
	ldr	r2, [fp, #-688]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [fp, #-692]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r4, r5, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp260
	str	sl, [sp, #12]	@ tmp230,
	str	r9, [sp, #16]	@ tmp232,
	blx	ip	@ temp.1507
	subs	lr, r0, #0	@ ret.1510,
	bne	.L268	@,
	ldr	ip, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [fp, #-680]	@, %sfp
	add	r0, ip, #47104	@ tmp266, MemArrange.TotalMemUsed,
	add	r3, r0, #16	@ tmp266, tmp266,
	str	r3, [r2, #4]	@ tmp266,
	ldr	r0, [fp, #-684]	@, %sfp
	ldr	r1, [r6, #24]	@ tmp276, CapItem
	add	ip, r1, #32768	@ tmp277, tmp276,
	str	ip, [r0, #4]	@ tmp277,
	ldr	ip, [r7, #36]	@ temp.1514, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1514,
	beq	.L270	@,
	ldr	r3, [r4, r8, asl #2]	@ tmp292, CapItem
	mov	r0, #1	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp286, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r4, [fp, #-692]	@, %sfp
	str	lr, [sp, #8]	@ ret.1510,
	str	sl, [sp, #12]	@ tmp230,
	str	r4, [sp, #0]	@,
	ldr	r4, [fp, #-700]	@, %sfp
	str	r9, [sp, #16]	@ tmp232,
	str	r4, [sp, #4]	@,
	blx	ip	@ temp.1514
	cmp	r0, #0	@ ret.1517
	bne	.L270	@,
	ldr	r1, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	ip, [fp, #-680]	@, %sfp
	add	lr, r1, #47104	@ tmp298, MemArrange.TotalMemUsed,
	add	r2, lr, #16	@ tmp298, tmp298,
	str	r2, [ip, #8]	@ tmp298,
	ldr	lr, [fp, #-684]	@, %sfp
	ldr	r3, [r6, #24]	@ tmp308, CapItem
	add	r1, r3, #32768	@ tmp309, tmp308,
	str	r1, [lr, #8]	@ tmp309,
	b	.L265	@
.L260:
	cmp	r5, #26	@ eCapLevel,
	bls	.L264	@,
.L272:
	mvn	r0, #0	@ D.38305,
.L265:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L261:
	ldr	ip, [r4, #76]	@ extra_disp.1506, extra_disp
	mov	r3, r7	@, extra_ref_tmp
	ldr	lr, [fp, #-696]	@, %sfp
	mov	r0, #32	@,
	str	r7, [sp, #8]	@ extra_ref_tmp,
	movw	r1, #:lower16:.LC12	@,
	str	r7, [sp, #20]	@ extra_ref_tmp,
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, r8	@, TempMinFrame
	str	ip, [sp, #24]	@ extra_disp.1506,
	str	ip, [sp, #0]	@ extra_disp.1506,
	mov	r4, lr	@,
	str	ip, [sp, #12]	@ extra_disp.1506,
	str	lr, [fp, #-700]	@, %sfp
	str	r9, [fp, #-688]	@ TempMiddleFrame, %sfp
	str	r9, [sp, #4]	@ TempMiddleFrame,
	str	lr, [sp, #16]	@ tmp4,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #36]	@ D.38287, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38287,
	bne	.L274	@,
.L266:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5499	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38305,
	b	.L265	@
.L264:
	ldr	r7, [fp, #-696]	@, %sfp
	str	r9, [fp, #-688]	@ TempMiddleFrame, %sfp
	str	r7, [fp, #-700]	@, %sfp
	b	.L263	@
.L273:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC11	@,
	mov	r3, r7	@, extra_ref_tmp
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [fp, #-692]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L259	@
.L268:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5518	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38305,
	b	.L265	@
.L270:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5537	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L272	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_GetChanMemSizeWithTreeFs
	.type	VCTRL_GetChanMemSizeWithTreeFs, %function
VCTRL_GetChanMemSizeWithTreeFs:
	.fnstart
.LFB1425:
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
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	ldr	r2, [r1, #12]	@, <variable>.s32MaxHeight
	cmp	r3, #2	@ flag,
	ldr	r9, [r1, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	r4, r1	@ pChanOption, pChanOption
	str	r2, [fp, #-680]	@, %sfp
	beq	.L276	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp157,
	movt	r1, #:upper16:.LANCHOR0	@ tmp157,
	ldr	r2, [r4, #28]	@ D.37992, <variable>.s32MaxRefFrameNum
	ldr	r6, [r1, #76]	@ extra_disp.598, extra_disp
	ldr	ip, [r4, #56]	@ D.37994, <variable>.s32DisplayFrameNum
	ldr	r1, [r1, #72]	@ extra_ref.597, extra_ref
	add	r7, r6, ip	@ TempDispNum, extra_disp.598, D.37994
	add	r8, r1, r2	@ TempRefNum, extra_ref.597, D.37992
	orrs	sl, r8, r7	@, TempRefNum, TempDispNum
	bmi	.L294	@,
	add	sl, r8, r7	@ tmp169, TempRefNum, TempDispNum
	add	sl, sl, #2	@ tmp170, tmp169,
	cmp	sl, #10	@ tmp170,
	ble	.L294	@,
	rsbs	r3, r3, #1	@ tmp178, flag
	movcc	r3, #0	@ tmp178
	cmp	r0, #25	@ eCapLevel,
	str	r8, [r4, #28]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp178,
	cmp	r3, #0	@ tmp178,
	str	r7, [r4, #56]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L296	@,
.L276:
	ldr	r3, [r4, #0]	@ D.38013, <variable>.Purpose
	cmp	r3, #2	@ D.38013,
	bhi	.L297	@,
	bne	.L281	@,
	ldr	r3, [r4, #60]	@ D.38021, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38021,
	beq	.L282	@,
	ldr	r2, [r4, #64]	@ D.38023, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.38023,
	beq	.L282	@,
	mul	r2, r2, r3	@ tmp182, D.38023, D.38021
	ldr	r1, [r4, #56]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	movw	ip, #:lower16:11473056	@ tmp188,
	movt	ip, #:upper16:11473056	@ tmp188,
	str	ip, [r5, #8]	@ tmp188, <variable>.ChanCtxDetailMem
	mov	r0, #0	@ tmp187,
	str	r0, [r5, #4]	@ tmp187, <variable>.ScdDetailMem
	mov	r3, r2, asl #1	@ tmp183, tmp182,
	mla	ip, r1, r3, r3	@ tmp186, <variable>.s32DisplayFrameNum, tmp183, tmp183
	str	ip, [r5, #0]	@ tmp186, <variable>.VdhDetailMem
.L278:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L281:
	cmp	r3, #1	@ D.38013,
	mvnne	r0, #0	@ D.38002,
	bne	.L278	@
.L284:
	ldr	r3, [r4, #28]	@ temp.1548, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ temp.1548,
	blt	.L285	@,
	cmp	r9, #31	@ <variable>.s32MaxWidth,
	ble	.L285	@,
	ldr	r0, [fp, #-680]	@, %sfp
	cmp	r0, #31	@,
	ble	.L285	@,
	ldr	lr, [r4, #52]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L285	@,
	ldr	r1, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r1, #1	@ <variable>.s32SupportH264,
	beq	.L298	@,
.L286:
	ldr	sl, [r4, #36]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp199,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp199,
	ldr	r2, [r4, #56]	@ temp.1549, <variable>.s32DisplayFrameNum
	cmp	sl, #0	@ <variable>.s32SupportBFrame,
	ldr	ip, [r6, #36]	@ D.38054, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	moveq	sl, #1	@ PmvNum,
	movne	sl, #17	@ PmvNum,
	cmp	ip, #0	@ D.38054,
	beq	.L289	@,
	add	r3, r3, r2	@ tmp201, temp.1548, temp.1549
	mov	r8, #0	@ tmp200,
	add	r7, r3, #2	@ tmp202, tmp201,
	stmib	sp, {r7, r8}	@ phole stm
	mov	r2, r9	@, <variable>.s32MaxWidth
	str	r8, [sp, #0]	@ tmp200,
	mvn	r7, #0	@ tmp204,
	ldr	r3, [fp, #-680]	@, %sfp
	sub	r8, fp, #672	@ tmp206,,
	str	r7, [sp, #12]	@ tmp204,
	mov	r0, #1024	@,
	str	r8, [sp, #16]	@ tmp206,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38054
	subs	lr, r0, #0	@ ret,
	bne	.L289	@,
	ldr	r1, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r1, [r5, #0]	@ MemArrange.TotalMemUsed, <variable>.VdhDetailMem
	ldr	ip, [r6, #36]	@ temp.1550, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1550,
	beq	.L291	@,
	str	sl, [sp, #0]	@ PmvNum,
	mov	r0, #1024	@,
	str	lr, [sp, #8]	@ ret,
	mvn	r1, #-2147483648	@,
	str	r7, [sp, #12]	@ tmp204,
	mov	r2, #720	@,
	str	r8, [sp, #16]	@ tmp206,
	mov	r3, #576	@,
	str	lr, [sp, #4]	@ ret,
	blx	ip	@ temp.1550
	cmp	r0, #0	@ ret.1551
	bne	.L291	@,
	ldr	lr, [fp, #-668]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [r5, #0]	@ <variable>.VdhDetailMem, <variable>.VdhDetailMem
	add	r1, r2, lr	@ tmp216, <variable>.VdhDetailMem, MemArrange.TotalMemUsed
	add	r3, r1, #47104	@ tmp219, tmp216,
	add	ip, r3, #16	@ tmp219, tmp219,
	str	ip, [r5, #0]	@ tmp219, <variable>.VdhDetailMem
	ldr	r2, [r4, #52]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	lr, r2, #32768	@ tmp222, <variable>.s32SCDBufSize,
	str	lr, [r5, #4]	@ tmp222, <variable>.ScdDetailMem
	ldr	r3, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L292	@,
	movw	ip, #:lower16:11473056	@ tmp224,
	mov	r0, r3	@ D.38002, <variable>.s32SupportH264
	movt	ip, #:upper16:11473056	@ tmp224,
	str	ip, [r5, #8]	@ tmp224, <variable>.ChanCtxDetailMem
	b	.L278	@
.L282:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L294:
	mov	r3, r1	@, extra_ref.597
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.37994,
	str	r6, [sp, #4]	@ extra_disp.598,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L296:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L297:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L292:
	ldr	r1, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	movw	r3, #:lower16:11473056	@ tmp232,
	ldr	lr, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movt	r3, #:upper16:11473056	@ tmp232,
	ldr	r2, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	movw	r4, #3992	@ tmp230,
	mul	ip, r4, r1	@ tmp228, tmp230, <variable>.s32MaxSpsNum
	movw	r4, #4060	@ tmp227,
	mla	r1, r4, lr, ip	@ tmp231, tmp227, <variable>.s32MaxSliceNum, tmp228
	add	lr, r1, r3	@ tmp232, tmp231, tmp232
	mov	r1, #2240	@ tmp236,
	mla	r3, r1, r2, lr	@ tmp237, tmp236, <variable>.s32MaxPpsNum, tmp232
	str	r3, [r5, #8]	@ tmp237, <variable>.ChanCtxDetailMem
	b	.L278	@
.L298:
	ldr	r2, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r2, #0	@ <variable>.s32MaxSliceNum,
	ble	.L285	@,
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	ip, #0	@ <variable>.s32MaxSpsNum,
	ble	.L285	@,
	ldr	r0, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r0, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L286	@,
.L285:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L291:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #5081	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
.L289:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #5048	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38002,
	b	.L278	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithTreeFs, .-VCTRL_GetChanMemSizeWithTreeFs
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1426:
	@ args = 0, pretend = 0, frame = 632
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #656
	sub	sp, sp, #656	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	ip, [r1, #32]	@ <variable>.s32TreeFsEnable, <variable>.s32TreeFsEnable
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r8, r0	@ eCapLevel, eCapLevel
	cmp	ip, #1	@ <variable>.s32TreeFsEnable,
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	mov	r7, r3	@ flag, flag
	beq	.L320	@,
	cmp	r3, #2	@ flag,
	beq	.L303	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	ldr	ip, [r1, #56]	@ D.38115, <variable>.s32DisplayFrameNum
	ldr	sl, [r3, #76]	@ extra_disp.602, extra_disp
	ldr	r2, [r1, #28]	@ D.38113, <variable>.s32MaxRefFrameNum
	ldr	r3, [r3, #72]	@ extra_ref.601, extra_ref
	add	r6, sl, ip	@ TempDispNum, extra_disp.602, D.38115
	add	r1, r3, r2	@ TempRefNum, extra_ref.601, D.38113
	orrs	r0, r6, r1	@, TempDispNum, TempRefNum
	bmi	.L321	@,
	cmp	r1, #16	@ TempRefNum,
	strle	r1, [r4, #28]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	strle	r6, [r4, #56]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bgt	.L322	@,
.L306:
	rsbs	r7, r7, #1	@ tmp179, flag
	movcc	r7, #0	@ tmp179
	cmp	r8, #25	@ eCapLevel,
	moveq	r7, #0	@, tmp179,
	cmp	r7, #0	@ tmp179,
	bne	.L323	@,
.L303:
	ldr	r3, [r4, #0]	@ D.38133, <variable>.Purpose
	cmp	r3, #2	@ D.38133,
	bhi	.L324	@,
	bne	.L308	@,
	ldr	r3, [r4, #60]	@ D.38141, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38141,
	beq	.L309	@,
	ldr	r2, [r4, #64]	@ D.38143, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.38143,
	beq	.L309	@,
	mul	r2, r2, r3	@ tmp183, D.38143, D.38141
	ldr	r1, [r4, #56]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r0, #0	@ tmp188,
	movw	r3, #:lower16:11473056	@ tmp189,
	str	r0, [r5, #4]	@ tmp188, <variable>.ScdDetailMem
	movt	r3, #:upper16:11473056	@ tmp189,
	str	r3, [r5, #8]	@ tmp189, <variable>.ChanCtxDetailMem
	mov	ip, r2, asl #1	@ tmp184, tmp183,
	mla	r2, r1, ip, ip	@ tmp187, <variable>.s32DisplayFrameNum, tmp184, tmp184
	str	r2, [r5, #0]	@ tmp187, <variable>.VdhDetailMem
.L302:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L322:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #16	@ tmp172,
	str	r6, [r4, #56]	@ TempDispNum, <variable>.s32DisplayFrameNum
	str	r0, [r4, #28]	@ tmp172, <variable>.s32MaxRefFrameNum
	b	.L306	@
.L320:
	bl	VCTRL_GetChanMemSizeWithTreeFs	@
	cmp	r0, #0	@ D.38106
	beq	.L302	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #5152	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L308:
	cmp	r3, #1	@ D.38133,
	mvnne	r0, #0	@ D.38110,
	bne	.L302	@
.L311:
	ldr	r0, [r4, #28]	@ temp.1583, <variable>.s32MaxRefFrameNum
	cmp	r0, #0	@ temp.1583,
	blt	.L312	@,
	ldr	r2, [r4, #8]	@ D.38154, <variable>.s32MaxWidth
	cmp	r2, #31	@ D.38154,
	ble	.L312	@,
	ldr	r3, [r4, #12]	@ D.38156, <variable>.s32MaxHeight
	cmp	r3, #31	@ D.38156,
	ble	.L312	@,
	ldr	ip, [r4, #52]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L312	@,
	ldr	r1, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r1, #1	@ <variable>.s32SupportH264,
	beq	.L325	@,
.L313:
	ldr	r6, [r4, #36]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r6, #0	@ <variable>.s32SupportBFrame,
	moveq	lr, #1	@ PmvNum,
	beq	.L315	@,
	add	lr, r0, #1	@ PmvNum.1584, temp.1583,
	cmp	lr, #17	@ PmvNum.1584,
	movge	lr, #17	@ PmvNum,
.L315:
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp198,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp198,
	ldr	r6, [r4, #56]	@ temp.1585, <variable>.s32DisplayFrameNum
	ldr	ip, [r1, #36]	@ D.38174, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38174,
	beq	.L316	@,
	add	r0, r0, r6	@ tmp199, temp.1583, temp.1585
	str	lr, [sp, #0]	@ PmvNum,
	mov	r1, #0	@ tmp201,
	add	lr, r0, #2	@ tmp200, tmp199,
	str	r1, [sp, #8]	@ tmp201,
	mvn	r0, #0	@ tmp202,
	str	lr, [sp, #4]	@ tmp200,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #12]	@ tmp202,
	sub	lr, fp, #664	@ tmp204,,
	mov	r0, #1	@,
	str	lr, [sp, #16]	@ tmp204,
	blx	ip	@ D.38174
	cmp	r0, #0	@ ret
	bne	.L316	@,
	ldr	lr, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, lr, #47104	@ tmp206, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp206, tmp206,
	str	ip, [r5, #0]	@ tmp206, <variable>.VdhDetailMem
	ldr	r3, [r4, #52]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	r2, r3, #32768	@ tmp209, <variable>.s32SCDBufSize,
	str	r2, [r5, #4]	@ tmp209, <variable>.ScdDetailMem
	ldr	r3, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L317	@,
	movw	r2, #:lower16:11473056	@ tmp211,
	mov	r0, r3	@ D.38110, <variable>.s32SupportH264
	movt	r2, #:upper16:11473056	@ tmp211,
	str	r2, [r5, #8]	@ tmp211, <variable>.ChanCtxDetailMem
	b	.L302	@
.L309:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L323:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L324:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L317:
	ldr	r3, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	movw	r2, #:lower16:11473056	@ tmp219,
	ldr	r1, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movt	r2, #:upper16:11473056	@ tmp219,
	ldr	lr, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	movw	r4, #3992	@ tmp217,
	mul	ip, r4, r3	@ tmp215, tmp217, <variable>.s32MaxSpsNum
	movw	r4, #4060	@ tmp214,
	mla	r3, r4, r1, ip	@ tmp218, tmp214, <variable>.s32MaxSliceNum, tmp215
	mov	r1, #2240	@ tmp223,
	add	ip, r3, r2	@ tmp219, tmp218, tmp219
	mla	r3, r1, lr, ip	@ tmp224, tmp223, <variable>.s32MaxPpsNum, tmp219
	str	r3, [r5, #8]	@ tmp224, <variable>.ChanCtxDetailMem
	b	.L302	@
.L321:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.38115,
	str	sl, [sp, #4]	@ extra_disp.602,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L325:
	ldr	ip, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	ip, #0	@ <variable>.s32MaxSliceNum,
	ble	.L312	@,
	ldr	r1, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r1, #0	@ <variable>.s32MaxSpsNum,
	ble	.L312	@,
	ldr	ip, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L313	@,
.L312:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
.L316:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #5271	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38110,
	b	.L302	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1414:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L332	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [ip, r0, asl #2]	@ D.37657, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L333	@,
	cmp	r1, #0	@ pArgs,
	beq	.L334	@,
	ldr	r1, [r1, #0]	@ tmp147,* pArgs
	movw	r3, #:lower16:11201032	@ tmp146,
	movt	r3, #:upper16:11201032	@ tmp146,
	mov	r0, #0	@ D.37655,
	str	r1, [r2, r3]	@ tmp147, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp, {fp, sp, pc}	@
.L333:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4403	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37655,
	ldmfd	sp, {fp, sp, pc}	@
.L332:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4402	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37655,
	ldmfd	sp, {fp, sp, pc}	@
.L334:
	mov	r0, r1	@, pArgs
	movw	r2, #4404	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37655,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1409:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L341	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.37446, s_pstVfmwChan
	cmp	r0, #0	@ D.37446,
	beq	.L342	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L343	@,
.L339:
	mvn	r0, #0	@ D.37444,
	ldmfd	sp, {fp, sp, pc}	@
.L342:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4067	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37444,
	ldmfd	sp, {fp, sp, pc}	@
.L343:
	ldr	r2, [r0, #160]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L339	@,
	add	r2, r0, #164
	ldmia	r2, {r2, r3, ip}	@ phole ldm
	cmp	r3, #0	@ D.37458,
	stmib	r1, {r3, ip}	@ phole stm
	movne	r0, #0	@ D.37444,
	str	r2, [r1, #0]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L339	@
.L341:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4066	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37444,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L345	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.37345, s_pstVfmwChan
	cmp	r3, #0	@ D.37345,
	beq	.L345	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L348	@,
	mov	r3, r0	@, ChanId
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC27	@,
	movw	r2, #3893	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37347,
	ldmfd	sp, {fp, sp, pc}	@
.L345:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #3886	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37347,
	ldmfd	sp, {fp, sp, pc}	@
.L348:
	ldr	r0, [r3, #936]	@ D.37347, <variable>.eVidStd
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1397:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp143,
	movt	ip, #:upper16:.LANCHOR0	@ tmp143,
	movw	r4, #:lower16:g_chipID	@ tmp146,
	movt	r4, #:upper16:g_chipID	@ tmp146,
	movw	r2, #:lower16:11201076	@ tmp144,
	ldr	r0, [ip, r0, asl #2]	@ D.36738, s_pstVfmwChan
	movt	r2, #:upper16:11201076	@ tmp144,
	ldr	ip, [r4, #0]	@ g_chipID.484, g_chipID
	movw	r3, #:lower16:11201080	@ tmp145,
	movt	r3, #:upper16:11201080	@ tmp145,
	ldr	r4, [r0, r2]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldr	r3, [r0, r3]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	cmp	ip, #10	@ g_chipID.484,
	ldrls	pc, [pc, ip, asl #2]	@ g_chipID.484
	b	.L351	@
.L354:
	.word	.L352
	.word	.L352
	.word	.L352
	.word	.L352
	.word	.L352
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
.L353:
	movw	r0, #:lower16:g_ChipMaxWidth	@ tmp153,
	movt	r0, #:upper16:g_ChipMaxWidth	@ tmp153,
	ldr	r2, [r0, #0]	@ g_ChipMaxWidth.1686, g_ChipMaxWidth
	cmp	r4, r2	@ ChanMaxWidth, g_ChipMaxWidth.1686
	ble	.L360	@,
	ldr	r3, [r1, #0]	@ D.36752, <variable>.eVidStd
	cmp	r3, #13	@ D.36752,
	cmpne	r3, #0	@, D.36752,
	beq	.L356	@,
.L364:
	cmp	r3, #15	@ D.36752,
	beq	.L356	@,
	cmp	r3, #18	@ D.36752,
	bne	.L361	@,
.L356:
	mov	r0, #0	@ ret,
	b	.L357	@
.L352:
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp147,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp147,
	ldr	r0, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r4, r0	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L362	@,
	ldr	r3, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L356	@,
.L363:
	mov	r2, ip	@, g_chipID.484
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L357	@
.L351:
	mov	r2, ip	@, g_chipID.484
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L357:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L362:
	movw	r2, #:lower16:g_ChipMaxHeight	@ tmp149,
	movt	r2, #:upper16:g_ChipMaxHeight	@ tmp149,
	ldr	r0, [r2, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r3, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L356	@,
	ldr	r3, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L356	@,
	b	.L363	@
.L360:
	movw	r0, #:lower16:g_ChipMaxHeight	@ tmp154,
	movt	r0, #:upper16:g_ChipMaxHeight	@ tmp154,
	ldr	r0, [r0, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r3, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L356	@,
	ldr	r3, [r1, #0]	@ D.36752, <variable>.eVidStd
	cmp	r3, #13	@ D.36752,
	cmpne	r3, #0	@, D.36752,
	bne	.L364	@,
	b	.L356	@
.L361:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp164,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp164,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	str	ip, [sp, #0]	@ g_chipID.484,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L357	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1395:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp190,
	movt	r4, #:upper16:.LANCHOR0	@ tmp190,
	movw	r6, #:lower16:11201200	@ tmp146,
	movt	r6, #:upper16:11201200	@ tmp146,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r2, [r4, r0, asl #2]	@ D.36612, s_pstVfmwChan
	ldr	ip, [r2, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r2, r6]	@ eOldDecCore, <variable>.eDecCore
	sub	r3, ip, #4	@ tmp148, <variable>.eVidStd,
	cmp	r3, #10	@ tmp148,
	ldrls	pc, [pc, r3, asl #2]	@ tmp148
	b	.L366	@
.L372:
	.word	.L367
	.word	.L366
	.word	.L366
	.word	.L366
	.word	.L366
	.word	.L366
	.word	.L368
	.word	.L369
	.word	.L370
	.word	.L366
	.word	.L371
.L366:
	movw	r3, #:lower16:11201200	@ tmp174,
	movt	r3, #:upper16:11201200	@ tmp174,
	mov	r6, #0	@ tmp175,
	str	r6, [r2, r3]	@ tmp175, <variable>.eDecCore
.L373:
	ldr	ip, [r4, r5, asl #2]	@ prephitmp.1705, s_pstVfmwChan
	movw	r6, #:lower16:11201200	@ tmp177,
	movt	r6, #:upper16:11201200	@ tmp177,
	movw	r7, #:lower16:.LANCHOR0	@ tmp176,
	movt	r7, #:upper16:.LANCHOR0	@ tmp176,
	ldr	r2, [ip, r6]	@ prephitmp.1707, <variable>.eDecCore
	cmp	r2, r0	@ prephitmp.1707, eOldDecCore
	beq	.L377	@,
	sub	r0, r0, #1	@ tmp178, eOldDecCore,
	cmp	r0, #4	@ tmp178,
	bhi	.L378	@,
	ldr	r3, [r7, #84]	@ D.36632, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.36632,
	beq	.L378	@,
	add	r0, ip, #952	@, prephitmp.1705,
	str	r1, [fp, #-32]	@,
	blx	r3	@ D.36632
	ldr	ip, [r7, r5, asl #2]	@ prephitmp.1705, s_pstVfmwChan
	ldr	r1, [fp, #-32]	@,
	ldr	r2, [ip, r6]	@ prephitmp.1707, <variable>.eDecCore
.L378:
	sub	r2, r2, #1	@ tmp183, prephitmp.1707,
	cmp	r2, #4	@ tmp183,
	bhi	.L377	@,
	ldr	r3, [r4, #80]	@ D.36643, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.36643,
	beq	.L379	@,
	ldr	r2, [ip, #936]	@, <variable>.eVidStd
	add	r0, ip, #952	@, prephitmp.1705,
	blx	r3	@ D.36643
	cmp	r0, #0	@,
	bne	.L379	@,
.L377:
	mov	r0, #0	@ D.36647,
.L380:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L371:
	movw	r6, #:lower16:11201200	@ tmp151,
	movt	r6, #:upper16:11201200	@ tmp151,
	mov	ip, #2	@ tmp152,
	str	ip, [r2, r6]	@ tmp152, <variable>.eDecCore
	b	.L373	@
.L367:
	movw	r7, #:lower16:11201200	@ tmp149,
	movt	r7, #:upper16:11201200	@ tmp149,
	mov	r3, #1	@ tmp150,
	str	r3, [r2, r7]	@ tmp150, <variable>.eDecCore
	b	.L373	@
.L368:
	ldr	r7, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r7, #1	@ g_VdmCharacter,
	bne	.L366	@,
	movw	r3, #:lower16:11201200	@ tmp156,
	movt	r3, #:upper16:11201200	@ tmp156,
	mov	r6, #3	@ tmp157,
	str	r6, [r2, r3]	@ tmp157, <variable>.eDecCore
	b	.L373	@
.L369:
	ldr	ip, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	bne	.L366	@,
	movw	r7, #:lower16:11201200	@ tmp163,
	movt	r7, #:upper16:11201200	@ tmp163,
	mov	r3, #4	@ tmp164,
	str	r3, [r2, r7]	@ tmp164, <variable>.eDecCore
	b	.L373	@
.L370:
	ldr	r6, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	bne	.L366	@,
	movw	r7, #:lower16:11201200	@ tmp170,
	movt	r7, #:upper16:11201200	@ tmp170,
	mov	ip, #5	@ tmp171,
	str	ip, [r2, r7]	@ tmp171, <variable>.eDecCore
	b	.L373	@
.L379:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36647,
	b	.L380	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_SetMoreGapEnable
	.type	VCTRL_SetMoreGapEnable, %function
VCTRL_SetMoreGapEnable:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L389	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.35743, s_pstVfmwChan
	cmp	r3, #0	@ D.35743,
	beq	.L390	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L391	@,
	cmp	r1, #1	@ MoreGapEnable,
	movw	ip, #:lower16:11201028	@ tmp146,
	movt	ip, #:upper16:11201028	@ tmp146,
	movhi	r1, #0	@ tmp148,
	movls	r0, #0	@ D.35741,
	strls	r1, [r3, ip]	@ MoreGapEnable, <variable>.stSynExtraData.s32MoreGapEnable
	mvnhi	r0, #0	@ D.35741,
	strhi	r1, [r3, ip]	@ tmp148, <variable>.stSynExtraData.s32MoreGapEnable
	ldmfd	sp, {fp, sp, pc}	@
.L391:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #836	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35741,
	ldmfd	sp, {fp, sp, pc}	@
.L389:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #834	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35741,
	ldmfd	sp, {fp, sp, pc}	@
.L390:
	mov	r0, r3	@, D.35743
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #835	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35741,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetMoreGapEnable, .-VCTRL_SetMoreGapEnable
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1359:
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
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	beq	.L402	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L403	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L404	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L405	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L406	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L407	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L408	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L409	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.35514,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L394:
	mov	r0, r5	@, D.35514
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L402:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC34	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L407:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC39	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L406:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC38	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L405:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC37	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L404:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC36	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L403:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC35	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L408:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC40	@,
	mvn	r5, #0	@ D.35514,
	bl	dprint_vfmw	@
	b	.L394	@
.L410:
	.align	2
.L409:
	.word	.LANCHOR0+80
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	vfmw_read_proc_chn
	.type	vfmw_read_proc_chn, %function
vfmw_read_proc_chn:
	.fnstart
.LFB1463:
	@ args = 8, pretend = 0, frame = 0
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
	movw	r2, #:lower16:.LC41	@,
	mov	sl, r1	@ start, start
	movt	r2, #:upper16:.LC41	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	movw	r7, #:lower16:g_ChanCtx	@ tmp291,
	movt	r7, #:upper16:g_ChanCtx	@ tmp291,
	movw	r8, #:lower16:.LANCHOR0	@ tmp680,
	movt	r8, #:upper16:.LANCHOR0	@ tmp680,
	rsb	r1, r0, r4	@, D.40008, count
	mov	r6, r0	@ D.40008,
	add	r0, r5, r0	@, page, D.40008
	bl	snprintf	@
	ldr	r3, [r7, #128]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r0, r6	@ len,, D.40008
	rsb	r1, r6, r4	@, len, count
	add	r0, r5, r6	@, page, len
	bl	snprintf	@
	ldr	ip, [r7, #132]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1871, len,
	rsb	r1, r6, r4	@, len.1871, count
	add	r0, r5, r6	@, page, len.1871
	bl	snprintf	@
	ldr	r1, [r7, #136]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1884, len.1871,
	rsb	r1, r6, r4	@, len.1884, count
	add	r0, r5, r6	@, page, len.1884
	bl	snprintf	@
	ldr	r3, [r7, #140]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1892, len.1884,
	rsb	r1, r6, r4	@, len.1892, count
	add	r0, r5, r6	@, page, len.1892
	bl	snprintf	@
	ldr	ip, [r7, #144]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1900, len.1892,
	rsb	r1, r6, r4	@, len.1900, count
	add	r0, r5, r6	@, page, len.1900
	bl	snprintf	@
	ldr	r1, [r7, #148]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1908, len.1900,
	rsb	r1, r6, r4	@, len.1908, count
	add	r0, r5, r6	@, page, len.1908
	bl	snprintf	@
	ldr	r3, [r7, #152]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1916, len.1908,
	rsb	r1, r6, r4	@, len.1916, count
	add	r0, r5, r6	@, page, len.1916
	bl	snprintf	@
	ldr	ip, [r7, #156]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1924, len.1916,
	rsb	r1, r6, r4	@, len.1924, count
	add	r0, r5, r6	@, page, len.1924
	bl	snprintf	@
	ldr	r1, [r7, #160]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1932, len.1924,
	rsb	r1, r6, r4	@, len.1932, count
	add	r0, r5, r6	@, page, len.1932
	bl	snprintf	@
	ldr	r3, [r7, #164]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1940, len.1932,
	rsb	r1, r6, r4	@, len.1940, count
	add	r0, r5, r6	@, page, len.1940
	bl	snprintf	@
	ldr	ip, [r7, #168]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1948, len.1940,
	rsb	r1, r6, r4	@, len.1948, count
	add	r0, r5, r6	@, page, len.1948
	bl	snprintf	@
	ldr	r1, [r7, #172]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1956, len.1948,
	rsb	r1, r6, r4	@, len.1956, count
	add	r0, r5, r6	@, page, len.1956
	bl	snprintf	@
	ldr	r3, [r7, #176]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1964, len.1956,
	rsb	r1, r6, r4	@, len.1964, count
	add	r0, r5, r6	@, page, len.1964
	bl	snprintf	@
	ldr	ip, [r7, #180]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1972, len.1964,
	rsb	r1, r6, r4	@, len.1972, count
	add	r0, r5, r6	@, page, len.1972
	bl	snprintf	@
	ldr	r1, [r7, #184]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1980, len.1972,
	rsb	r1, r6, r4	@, len.1980, count
	add	r0, r5, r6	@, page, len.1980
	bl	snprintf	@
	ldr	r3, [r7, #188]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.1988, len.1980,
	rsb	r1, r6, r4	@, len.1988, count
	add	r0, r5, r6	@, page, len.1988
	bl	snprintf	@
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	add	r6, r0, r6	@ len.1821,, len.1988
	rsb	r1, r6, r4	@, len.1821, count
	add	r0, r5, r6	@, page, len.1821
	bl	snprintf	@
	movw	r2, #:lower16:.LC45	@,
	movt	r2, #:upper16:.LC45	@,
	add	r6, r6, r0	@ len.1826, len.1821,
	rsb	r1, r6, r4	@, len.1826, count
	add	r0, r5, r6	@, page, len.1826
	bl	snprintf	@
	ldr	r3, [r7, #64]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.1831, len.1826,
	rsb	r1, r6, r4	@, len.1831, count
	add	r0, r5, r6	@, page, len.1831
	bl	snprintf	@
	ldr	r3, [r7, #68]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.1995, len.1831,
	rsb	r1, r6, r4	@, len.1995, count
	add	r0, r5, r6	@, page, len.1995
	bl	snprintf	@
	ldr	r3, [r7, #72]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2002, len.1995,
	rsb	r1, r6, r4	@, len.2002, count
	add	r0, r5, r6	@, page, len.2002
	bl	snprintf	@
	ldr	r3, [r7, #76]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2009, len.2002,
	rsb	r1, r6, r4	@, len.2009, count
	add	r0, r5, r6	@, page, len.2009
	bl	snprintf	@
	ldr	r3, [r7, #80]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2016, len.2009,
	rsb	r1, r6, r4	@, len.2016, count
	add	r0, r5, r6	@, page, len.2016
	bl	snprintf	@
	ldr	r3, [r7, #84]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2023, len.2016,
	rsb	r1, r6, r4	@, len.2023, count
	add	r0, r5, r6	@, page, len.2023
	bl	snprintf	@
	ldr	r3, [r7, #88]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2030, len.2023,
	rsb	r1, r6, r4	@, len.2030, count
	add	r0, r5, r6	@, page, len.2030
	bl	snprintf	@
	ldr	r3, [r7, #92]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2037, len.2030,
	rsb	r1, r6, r4	@, len.2037, count
	add	r0, r5, r6	@, page, len.2037
	bl	snprintf	@
	ldr	r3, [r7, #96]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2044, len.2037,
	rsb	r1, r6, r4	@, len.2044, count
	add	r0, r5, r6	@, page, len.2044
	bl	snprintf	@
	ldr	r3, [r7, #100]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2051, len.2044,
	rsb	r1, r6, r4	@, len.2051, count
	add	r0, r5, r6	@, page, len.2051
	bl	snprintf	@
	ldr	r3, [r7, #104]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2058, len.2051,
	rsb	r1, r6, r4	@, len.2058, count
	add	r0, r5, r6	@, page, len.2058
	bl	snprintf	@
	ldr	r3, [r7, #108]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2065, len.2058,
	rsb	r1, r6, r4	@, len.2065, count
	add	r0, r5, r6	@, page, len.2065
	bl	snprintf	@
	ldr	r3, [r7, #112]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2072, len.2065,
	rsb	r1, r6, r4	@, len.2072, count
	add	r0, r5, r6	@, page, len.2072
	bl	snprintf	@
	ldr	r3, [r7, #116]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2079, len.2072,
	rsb	r1, r6, r4	@, len.2079, count
	add	r0, r5, r6	@, page, len.2079
	bl	snprintf	@
	ldr	r3, [r7, #120]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2086, len.2079,
	rsb	r1, r6, r4	@, len.2086, count
	add	r0, r5, r6	@, page, len.2086
	bl	snprintf	@
	ldr	r3, [r7, #124]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2093, len.2086,
	rsb	r1, r6, r4	@, len.2093, count
	add	r0, r5, r6	@, page, len.2093
	bl	snprintf	@
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	add	r6, r0, r6	@ len.1836,, len.2093
	rsb	r1, r6, r4	@, len.1836, count
	add	r0, r5, r6	@, page, len.1836
	bl	snprintf	@
	movw	r2, #:lower16:.LC46	@,
	movt	r2, #:upper16:.LC46	@,
	add	r6, r6, r0	@ len.1841, len.1836,
	rsb	r1, r6, r4	@, len.1841, count
	add	r0, r5, r6	@, page, len.1841
	bl	snprintf	@
	ldr	r3, [r7, #0]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.1846, len.1841,
	rsb	r1, r6, r4	@, len.1846, count
	add	r0, r5, r6	@, page, len.1846
	bl	snprintf	@
	ldr	r3, [r7, #4]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2100, len.1846,
	rsb	r1, r6, r4	@, len.2100, count
	add	r0, r5, r6	@, page, len.2100
	bl	snprintf	@
	ldr	r3, [r7, #8]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2107, len.2100,
	rsb	r1, r6, r4	@, len.2107, count
	add	r0, r5, r6	@, page, len.2107
	bl	snprintf	@
	ldr	r3, [r7, #12]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2114, len.2107,
	rsb	r1, r6, r4	@, len.2114, count
	add	r0, r5, r6	@, page, len.2114
	bl	snprintf	@
	ldr	r3, [r7, #16]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2121, len.2114,
	rsb	r1, r6, r4	@, len.2121, count
	add	r0, r5, r6	@, page, len.2121
	bl	snprintf	@
	ldr	r3, [r7, #20]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2128, len.2121,
	rsb	r1, r6, r4	@, len.2128, count
	add	r0, r5, r6	@, page, len.2128
	bl	snprintf	@
	ldr	r3, [r7, #24]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2135, len.2128,
	rsb	r1, r6, r4	@, len.2135, count
	add	r0, r5, r6	@, page, len.2135
	bl	snprintf	@
	ldr	r3, [r7, #28]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2142, len.2135,
	rsb	r1, r6, r4	@, len.2142, count
	add	r0, r5, r6	@, page, len.2142
	bl	snprintf	@
	ldr	r3, [r7, #32]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2149, len.2142,
	rsb	r1, r6, r4	@, len.2149, count
	add	r0, r5, r6	@, page, len.2149
	bl	snprintf	@
	ldr	r3, [r7, #36]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2156, len.2149,
	rsb	r1, r6, r4	@, len.2156, count
	add	r0, r5, r6	@, page, len.2156
	bl	snprintf	@
	ldr	r3, [r7, #40]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2163, len.2156,
	rsb	r1, r6, r4	@, len.2163, count
	add	r0, r5, r6	@, page, len.2163
	bl	snprintf	@
	ldr	r3, [r7, #44]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2170, len.2163,
	rsb	r1, r6, r4	@, len.2170, count
	add	r0, r5, r6	@, page, len.2170
	bl	snprintf	@
	ldr	r3, [r7, #48]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2177, len.2170,
	rsb	r1, r6, r4	@, len.2177, count
	add	r0, r5, r6	@, page, len.2177
	bl	snprintf	@
	ldr	r3, [r7, #52]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2184, len.2177,
	rsb	r1, r6, r4	@, len.2184, count
	add	r0, r5, r6	@, page, len.2184
	bl	snprintf	@
	ldr	r3, [r7, #56]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2191, len.2184,
	rsb	r1, r6, r4	@, len.2191, count
	add	r0, r5, r6	@, page, len.2191
	bl	snprintf	@
	ldr	r3, [r7, #60]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	add	r6, r6, r0	@ len.2198, len.2191,
	rsb	r1, r6, r4	@, len.2198, count
	add	r0, r5, r6	@, page, len.2198
	bl	snprintf	@
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	add	r6, r0, r6	@ len.1851,, len.2198
	rsb	r1, r6, r4	@, len.1851, count
	add	r0, r5, r6	@, page, len.1851
	bl	snprintf	@
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	add	r6, r6, r0	@ len.1856, len.1851,
	add	r0, r5, r6	@, page, len.1856
	rsb	r1, r6, r4	@, len.1856, count
	bl	snprintf	@
	ldr	ip, [r8, #0]	@ temp.2199, s_pstVfmwChan
	cmp	ip, #0	@ temp.2199,
	add	r6, r6, r0	@ len.1861, len.1856,
	beq	.L412	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	lr, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L412:
	ldr	ip, [r8, #4]	@ temp.2208, s_pstVfmwChan
	cmp	ip, #0	@ temp.2208,
	beq	.L413	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L413:
	ldr	ip, [r8, #8]	@ temp.2217, s_pstVfmwChan
	cmp	ip, #0	@ temp.2217,
	beq	.L414	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L414:
	ldr	ip, [r8, #12]	@ temp.2226, s_pstVfmwChan
	cmp	ip, #0	@ temp.2226,
	beq	.L415	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L415:
	ldr	ip, [r8, #16]	@ temp.2235, s_pstVfmwChan
	cmp	ip, #0	@ temp.2235,
	beq	.L416	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L416:
	ldr	ip, [r8, #20]	@ temp.2244, s_pstVfmwChan
	cmp	ip, #0	@ temp.2244,
	beq	.L417	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L417:
	ldr	ip, [r8, #24]	@ temp.2253, s_pstVfmwChan
	cmp	ip, #0	@ temp.2253,
	beq	.L418	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L418:
	ldr	ip, [r8, #28]	@ temp.2262, s_pstVfmwChan
	cmp	ip, #0	@ temp.2262,
	beq	.L419	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L419:
	ldr	ip, [r8, #32]	@ temp.2271, s_pstVfmwChan
	cmp	ip, #0	@ temp.2271,
	beq	.L420	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L420:
	ldr	ip, [r8, #36]	@ temp.2280, s_pstVfmwChan
	cmp	ip, #0	@ temp.2280,
	beq	.L421	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L421:
	ldr	ip, [r8, #40]	@ temp.2289, s_pstVfmwChan
	cmp	ip, #0	@ temp.2289,
	beq	.L422	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L422:
	ldr	ip, [r8, #44]	@ temp.2298, s_pstVfmwChan
	cmp	ip, #0	@ temp.2298,
	beq	.L423	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L423:
	ldr	ip, [r8, #48]	@ temp.2307, s_pstVfmwChan
	cmp	ip, #0	@ temp.2307,
	beq	.L424	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L424:
	ldr	ip, [r8, #52]	@ temp.2316, s_pstVfmwChan
	cmp	ip, #0	@ temp.2316,
	beq	.L425	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L425:
	ldr	ip, [r8, #56]	@ temp.2325, s_pstVfmwChan
	cmp	ip, #0	@ temp.2325,
	beq	.L426	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L426:
	ldr	ip, [r8, #60]	@ D.40024, s_pstVfmwChan
	cmp	ip, #0	@ D.40024,
	beq	.L427	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len.1861
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len.1861, count
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len.1861, len.1861,
.L427:
	rsb	r1, r6, r4	@, len.1861, count
	add	r0, r5, r6	@, page, len.1861
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	mov	r3, #0	@ tmp677,
	str	r3, [sl, #0]	@ tmp677,* start
	mov	r2, #1	@ tmp678,
	ldr	r1, [fp, #4]	@ eof, eof
	str	r2, [r1, #0]	@ tmp678,* eof
	add	r0, r6, r0	@, len.1861,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_chn, .-vfmw_read_proc_chn
	.align	2
	.global	vfmw_read_proc_prn
	.type	vfmw_read_proc_prn, %function
vfmw_read_proc_prn:
	.fnstart
.LFB1461:
	@ args = 8, pretend = 0, frame = 0
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
	movw	r2, #:lower16:.LC49	@,
	mov	sl, r1	@ start, start
	movt	r2, #:upper16:.LC49	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r7, #:lower16:.LC50	@ tmp199,
	movt	r7, #:upper16:.LC50	@ tmp199,
	movw	r6, #:lower16:.LC60	@ tmp235,
	movt	r6, #:upper16:.LC60	@ tmp235,
	mov	r2, r7	@, tmp199
	rsb	r1, r0, r4	@, D.39865, count
	mov	r8, r0	@ D.39865,
	add	r0, r5, r0	@, page, D.39865
	bl	snprintf	@
	movw	r2, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC51	@,
	add	r8, r0, r8	@ len,, D.39865
	rsb	r1, r8, r4	@, len, count
	add	r0, r5, r8	@, page, len
	bl	snprintf	@
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	add	r8, r8, r0	@ len.2364, len,
	rsb	r1, r8, r4	@, len.2364, count
	add	r0, r5, r8	@, page, len.2364
	bl	snprintf	@
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	add	r8, r8, r0	@ len.2369, len.2364,
	rsb	r1, r8, r4	@, len.2369, count
	add	r0, r5, r8	@, page, len.2369
	bl	snprintf	@
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	add	r8, r8, r0	@ len.2374, len.2369,
	rsb	r1, r8, r4	@, len.2374, count
	add	r0, r5, r8	@, page, len.2374
	bl	snprintf	@
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	add	r8, r8, r0	@ len.2379, len.2374,
	rsb	r1, r8, r4	@, len.2379, count
	add	r0, r5, r8	@, page, len.2379
	bl	snprintf	@
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	add	r8, r8, r0	@ len.2384, len.2379,
	rsb	r1, r8, r4	@, len.2384, count
	add	r0, r5, r8	@, page, len.2384
	bl	snprintf	@
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	add	r8, r8, r0	@ len.2389, len.2384,
	rsb	r1, r8, r4	@, len.2389, count
	add	r0, r5, r8	@, page, len.2389
	bl	snprintf	@
	movw	r2, #:lower16:.LC58	@,
	movt	r2, #:upper16:.LC58	@,
	add	r8, r8, r0	@ len.2394, len.2389,
	rsb	r1, r8, r4	@, len.2394, count
	add	r0, r5, r8	@, page, len.2394
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2399, len.2394,
	rsb	r1, r8, r4	@, len.2399, count
	add	r0, r5, r8	@, page, len.2399
	bl	snprintf	@
	movw	r2, #:lower16:.LC59	@,
	movt	r2, #:upper16:.LC59	@,
	add	r8, r8, r0	@ len.2404, len.2399,
	rsb	r1, r8, r4	@, len.2404, count
	add	r0, r5, r8	@, page, len.2404
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2409, len.2404,
	rsb	r1, r8, r4	@, len.2409, count
	add	r0, r5, r8	@, page, len.2409
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2414, len.2409,
	rsb	r1, r8, r4	@, len.2414, count
	add	r0, r5, r8	@, page, len.2414
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2419, len.2414,
	rsb	r1, r8, r4	@, len.2419, count
	add	r0, r5, r8	@, page, len.2419
	bl	snprintf	@
	movw	r2, #:lower16:.LC61	@,
	movt	r2, #:upper16:.LC61	@,
	add	r8, r8, r0	@ len.2424, len.2419,
	rsb	r1, r8, r4	@, len.2424, count
	add	r0, r5, r8	@, page, len.2424
	bl	snprintf	@
	movw	r2, #:lower16:.LC62	@,
	movt	r2, #:upper16:.LC62	@,
	add	r8, r8, r0	@ len.2429, len.2424,
	rsb	r1, r8, r4	@, len.2429, count
	add	r0, r5, r8	@, page, len.2429
	bl	snprintf	@
	movw	r2, #:lower16:.LC63	@,
	movt	r2, #:upper16:.LC63	@,
	add	r8, r8, r0	@ len.2434, len.2429,
	rsb	r1, r8, r4	@, len.2434, count
	add	r0, r5, r8	@, page, len.2434
	bl	snprintf	@
	movw	r2, #:lower16:.LC64	@,
	movt	r2, #:upper16:.LC64	@,
	add	r8, r8, r0	@ len.2439, len.2434,
	rsb	r1, r8, r4	@, len.2439, count
	add	r0, r5, r8	@, page, len.2439
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2444, len.2439,
	rsb	r1, r8, r4	@, len.2444, count
	add	r0, r5, r8	@, page, len.2444
	bl	snprintf	@
	movw	r2, #:lower16:.LC65	@,
	movt	r2, #:upper16:.LC65	@,
	add	r8, r8, r0	@ len.2449, len.2444,
	rsb	r1, r8, r4	@, len.2449, count
	add	r0, r5, r8	@, page, len.2449
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2454, len.2449,
	rsb	r1, r8, r4	@, len.2454, count
	add	r0, r5, r8	@, page, len.2454
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2459, len.2454,
	rsb	r1, r8, r4	@, len.2459, count
	add	r0, r5, r8	@, page, len.2459
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2464, len.2459,
	rsb	r1, r8, r4	@, len.2464, count
	add	r0, r5, r8	@, page, len.2464
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2469, len.2464,
	rsb	r1, r8, r4	@, len.2469, count
	add	r0, r5, r8	@, page, len.2469
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2474, len.2469,
	rsb	r1, r8, r4	@, len.2474, count
	add	r0, r5, r8	@, page, len.2474
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2479, len.2474,
	rsb	r1, r8, r4	@, len.2479, count
	add	r0, r5, r8	@, page, len.2479
	bl	snprintf	@
	movw	r2, #:lower16:.LC66	@,
	movt	r2, #:upper16:.LC66	@,
	add	r8, r8, r0	@ len.2484, len.2479,
	rsb	r1, r8, r4	@, len.2484, count
	add	r0, r5, r8	@, page, len.2484
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2489, len.2484,
	rsb	r1, r8, r4	@, len.2489, count
	add	r0, r5, r8	@, page, len.2489
	bl	snprintf	@
	mov	r1, #0	@ tmp281,
	str	r1, [sl, #0]	@ tmp281,* start
	mov	r2, #1	@ tmp282,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp282,* eof
	add	r0, r8, r0	@, len.2489,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	vfmw_read_proc_prn, .-vfmw_read_proc_prn
	.align	2
	.global	vfmw_read_proc_dbg
	.type	vfmw_read_proc_dbg, %function
vfmw_read_proc_dbg:
	.fnstart
.LFB1460:
	@ args = 8, pretend = 0, frame = 0
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
	movw	r2, #:lower16:.LC67	@,
	mov	r9, r1	@ start, start
	movt	r2, #:upper16:.LC67	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r6, #:lower16:.LC68	@ tmp213,
	movt	r6, #:upper16:.LC68	@ tmp213,
	movw	r3, #:lower16:.LC69	@,
	movt	r3, #:upper16:.LC69	@,
	mov	r2, r6	@, tmp213
	movw	sl, #:lower16:.LANCHOR2	@ tmp221,
	movt	sl, #:upper16:.LANCHOR2	@ tmp221,
	movw	r7, #:lower16:.LC74	@ tmp236,
	movt	r7, #:upper16:.LC74	@ tmp236,
	mov	r8, r0	@ D.39808,
	movw	r0, #:lower16:TracerPhyAddr	@ tmp215,
	movt	r0, #:upper16:TracerPhyAddr	@ tmp215,
	rsb	r1, r8, r4	@, D.39808, count
	ldr	ip, [r0, #0]	@ TracerPhyAddr, TracerPhyAddr
	add	r0, r5, r8	@, page, D.39808
	str	ip, [sp, #0]	@ TracerPhyAddr,
	bl	snprintf	@
	movw	r2, #:lower16:.LC70	@,
	movw	r3, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC70	@,
	movt	r3, #:upper16:.LC71	@,
	str	sl, [sp, #0]	@ tmp221,
	movw	sl, #:lower16:.LC50	@ tmp254,
	movt	sl, #:upper16:.LC50	@ tmp254,
	add	r8, r0, r8	@ len,, D.39808
	rsb	r1, r8, r4	@, len, count
	add	r0, r5, r8	@, page, len
	bl	snprintf	@
	movw	r1, #:lower16:g_PrintEnable	@ tmp226,
	movt	r1, #:upper16:g_PrintEnable	@ tmp226,
	mov	r2, r6	@, tmp213
	movw	r3, #:lower16:.LC72	@,
	movt	r3, #:upper16:.LC72	@,
	ldr	ip, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	str	ip, [sp, #0]	@ g_PrintEnable,
	add	r8, r8, r0	@ len.2526, len,
	rsb	r1, r8, r4	@, len.2526, count
	add	r0, r5, r8	@, page, len.2526
	bl	snprintf	@
	movw	r1, #:lower16:g_TraceCtrl	@ tmp232,
	movt	r1, #:upper16:g_TraceCtrl	@ tmp232,
	mov	r2, r6	@, tmp213
	movw	r3, #:lower16:.LC73	@,
	movt	r3, #:upper16:.LC73	@,
	ldr	r6, [r1, #0]	@ g_TraceCtrl, g_TraceCtrl
	str	r6, [sp, #0]	@ g_TraceCtrl,
	add	r6, r8, r0	@ len.2531, len.2526,
	rsb	r1, r6, r4	@, len.2531, count
	add	r0, r5, r6	@, page, len.2531
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp238,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp238,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC75	@,
	movt	r3, #:upper16:.LC75	@,
	ldr	r1, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	str	r1, [sp, #0]	@ g_TraceBsPeriod,
	add	r6, r6, r0	@ len.2536, len.2531,
	rsb	r1, r6, r4	@, len.2536, count
	add	r0, r5, r6	@, page, len.2536
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp244,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp244,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC76	@,
	movt	r3, #:upper16:.LC76	@,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	str	r1, [sp, #0]	@ g_TraceFramePeriod,
	add	r6, r6, r0	@ len.2541, len.2536,
	rsb	r1, r6, r4	@, len.2541, count
	add	r0, r5, r6	@, page, len.2541
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceImgPeriod	@ tmp250,
	movt	ip, #:upper16:g_TraceImgPeriod	@ tmp250,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC77	@,
	movt	r3, #:upper16:.LC77	@,
	ldr	r1, [ip, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	str	r1, [sp, #0]	@ g_TraceImgPeriod,
	add	r6, r6, r0	@ len.2546, len.2541,
	rsb	r1, r6, r4	@, len.2546, count
	add	r0, r5, r6	@, page, len.2546
	bl	snprintf	@
	mov	r2, sl	@, tmp254
	add	r6, r6, r0	@ len.2551, len.2546,
	rsb	r1, r6, r4	@, len.2551, count
	add	r0, r5, r6	@, page, len.2551
	bl	snprintf	@
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	add	r6, r6, r0	@ len.2556, len.2551,
	rsb	r1, r6, r4	@, len.2556, count
	add	r0, r5, r6	@, page, len.2556
	bl	snprintf	@
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	add	r6, r6, r0	@ len.2561, len.2556,
	rsb	r1, r6, r4	@, len.2561, count
	add	r0, r5, r6	@, page, len.2561
	bl	snprintf	@
	movw	r2, #:lower16:.LC80	@,
	movt	r2, #:upper16:.LC80	@,
	add	r6, r6, r0	@ len.2566, len.2561,
	rsb	r1, r6, r4	@, len.2566, count
	add	r0, r5, r6	@, page, len.2566
	bl	snprintf	@
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	add	r6, r6, r0	@ len.2571, len.2566,
	rsb	r1, r6, r4	@, len.2571, count
	add	r0, r5, r6	@, page, len.2571
	bl	snprintf	@
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	add	r6, r6, r0	@ len.2576, len.2571,
	rsb	r1, r6, r4	@, len.2576, count
	add	r0, r5, r6	@, page, len.2576
	bl	snprintf	@
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	add	r6, r6, r0	@ len.2581, len.2576,
	rsb	r1, r6, r4	@, len.2581, count
	add	r0, r5, r6	@, page, len.2581
	bl	snprintf	@
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	add	r6, r6, r0	@ len.2586, len.2581,
	rsb	r1, r6, r4	@, len.2586, count
	add	r0, r5, r6	@, page, len.2586
	bl	snprintf	@
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	add	r6, r6, r0	@ len.2591, len.2586,
	rsb	r1, r6, r4	@, len.2591, count
	add	r0, r5, r6	@, page, len.2591
	bl	snprintf	@
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	add	r6, r6, r0	@ len.2596, len.2591,
	rsb	r1, r6, r4	@, len.2596, count
	add	r0, r5, r6	@, page, len.2596
	bl	snprintf	@
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	add	r6, r6, r0	@ len.2601, len.2596,
	rsb	r1, r6, r4	@, len.2601, count
	add	r0, r5, r6	@, page, len.2601
	bl	snprintf	@
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	add	r6, r6, r0	@ len.2606, len.2601,
	rsb	r1, r6, r4	@, len.2606, count
	add	r0, r5, r6	@, page, len.2606
	bl	snprintf	@
	movw	r2, #:lower16:.LC89	@,
	movt	r2, #:upper16:.LC89	@,
	add	r6, r6, r0	@ len.2611, len.2606,
	rsb	r1, r6, r4	@, len.2611, count
	add	r0, r5, r6	@, page, len.2611
	bl	snprintf	@
	movw	ip, #:lower16:.LC91	@ tmp294,
	movt	ip, #:upper16:.LC91	@ tmp294,
	movw	r2, #:lower16:.LC90	@,
	movt	r2, #:upper16:.LC90	@,
	str	ip, [sp, #0]	@ tmp294,
	mov	r3, ip	@, tmp294
	str	ip, [sp, #4]	@ tmp294,
	str	ip, [sp, #8]	@ tmp294,
	str	ip, [sp, #12]	@ tmp294,
	add	r6, r6, r0	@ len.2616, len.2611,
	rsb	r1, r6, r4	@, len.2616, count
	add	r0, r5, r6	@, page, len.2616
	bl	snprintf	@
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	add	r6, r6, r0	@ len.2621, len.2616,
	rsb	r1, r6, r4	@, len.2621, count
	add	r0, r5, r6	@, page, len.2621
	bl	snprintf	@
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	add	r6, r6, r0	@ len.2626, len.2621,
	rsb	r1, r6, r4	@, len.2626, count
	add	r0, r5, r6	@, page, len.2626
	bl	snprintf	@
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	add	r6, r6, r0	@ len.2631, len.2626,
	rsb	r1, r6, r4	@, len.2631, count
	add	r0, r5, r6	@, page, len.2631
	bl	snprintf	@
	movw	r2, #:lower16:.LC95	@,
	movt	r2, #:upper16:.LC95	@,
	add	r6, r6, r0	@ len.2636, len.2631,
	rsb	r1, r6, r4	@, len.2636, count
	add	r0, r5, r6	@, page, len.2636
	bl	snprintf	@
	movw	r2, #:lower16:.LC96	@,
	movt	r2, #:upper16:.LC96	@,
	add	r6, r6, r0	@ len.2641, len.2636,
	rsb	r1, r6, r4	@, len.2641, count
	add	r0, r5, r6	@, page, len.2641
	bl	snprintf	@
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	add	r6, r6, r0	@ len.2646, len.2641,
	rsb	r1, r6, r4	@, len.2646, count
	add	r0, r5, r6	@, page, len.2646
	bl	snprintf	@
	movw	r2, #:lower16:.LC98	@,
	movt	r2, #:upper16:.LC98	@,
	add	r6, r6, r0	@ len.2651, len.2646,
	rsb	r1, r6, r4	@, len.2651, count
	add	r0, r5, r6	@, page, len.2651
	bl	snprintf	@
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	add	r6, r6, r0	@ len.2656, len.2651,
	rsb	r1, r6, r4	@, len.2656, count
	add	r0, r5, r6	@, page, len.2656
	bl	snprintf	@
	movw	r2, #:lower16:.LC100	@,
	movt	r2, #:upper16:.LC100	@,
	add	r6, r6, r0	@ len.2661, len.2656,
	rsb	r1, r6, r4	@, len.2661, count
	add	r0, r5, r6	@, page, len.2661
	bl	snprintf	@
	movw	r2, #:lower16:.LC101	@,
	movt	r2, #:upper16:.LC101	@,
	add	r6, r6, r0	@ len.2666, len.2661,
	rsb	r1, r6, r4	@, len.2666, count
	add	r0, r5, r6	@, page, len.2666
	bl	snprintf	@
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	add	r6, r6, r0	@ len.2671, len.2666,
	rsb	r1, r6, r4	@, len.2671, count
	add	r0, r5, r6	@, page, len.2671
	bl	snprintf	@
	movw	r2, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC103	@,
	add	r6, r6, r0	@ len.2676, len.2671,
	rsb	r1, r6, r4	@, len.2676, count
	add	r0, r5, r6	@, page, len.2676
	bl	snprintf	@
	movw	r2, #:lower16:.LC104	@,
	movt	r2, #:upper16:.LC104	@,
	add	r6, r6, r0	@ len.2681, len.2676,
	rsb	r1, r6, r4	@, len.2681, count
	add	r0, r5, r6	@, page, len.2681
	bl	snprintf	@
	mov	r2, sl	@, tmp254
	add	r6, r6, r0	@ len.2686, len.2681,
	rsb	r1, r6, r4	@, len.2686, count
	add	r0, r5, r6	@, page, len.2686
	bl	snprintf	@
	mov	r1, #0	@ tmp341,
	str	r1, [r9, #0]	@ tmp341,* start
	mov	r2, #1	@ tmp342,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp342,* eof
	add	r0, r6, r0	@, len.2686,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_dbg, .-vfmw_read_proc_dbg
	.align	2
	.global	vfmw_read_proc
	.type	vfmw_read_proc, %function
vfmw_read_proc:
	.fnstart
.LFB1459:
	@ args = 8, pretend = 0, frame = 8
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
	movw	r2, #:lower16:.LC105	@,
	str	r1, [fp, #-48]	@ start, %sfp
	movt	r2, #:upper16:.LC105	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r7, r0	@ page, page
	bl	snprintf	@
	movw	r5, #:lower16:.LC106	@ tmp165,
	movt	r5, #:upper16:.LC106	@ tmp165,
	movw	r3, #:lower16:.LC107	@,
	movt	r3, #:upper16:.LC107	@,
	mov	r2, r5	@, tmp165
	movw	r6, #:lower16:2013092600	@ tmp167,
	movt	r6, #:upper16:2013092600	@ tmp167,
	str	r6, [sp, #0]	@ tmp167,
	movw	r6, #:lower16:.LANCHOR0	@ tmp168,
	movt	r6, #:upper16:.LANCHOR0	@ tmp168,
	movw	r8, #:lower16:-858993459	@ tmp247,
	movt	r8, #:upper16:-858993459	@ tmp247,
	mov	r9, #0	@ tmp173,
	rsb	r1, r0, r4	@, D.39768, count
	mov	sl, r0	@ D.39768,
	add	r0, r7, r0	@, page, D.39768
	bl	snprintf	@
	ldr	ip, [r6, #120]	@ D.39771, <variable>.u32VaVdmLoad
	movw	r2, #:lower16:.LC108	@,
	movw	r3, #:lower16:.LC109	@,
	movt	r2, #:upper16:.LC108	@,
	movt	r3, #:upper16:.LC109	@,
	umull	lr, r1, r8, ip	@, tmp175, tmp247, D.39771
	str	r9, [sp, #0]	@ tmp173,
	mov	lr, r1, lsr #3	@ tmp174, tmp175,
	str	lr, [sp, #4]	@ tmp174,
	add	r1, lr, lr, asl #2	@, tmp182, tmp174, tmp174,
	sub	lr, ip, r1, asl #1	@ tmp184, D.39771, tmp182,
	str	lr, [sp, #8]	@ tmp184,
	add	sl, r0, sl	@ len,, D.39768
	rsb	r1, sl, r4	@, len, count
	add	r0, r7, sl	@, page, len
	bl	snprintf	@
	ldr	r1, [r6, #136]	@ D.39775, <variable>.u32DaDnrLoad
	movw	r2, #:lower16:.LC110	@,
	movw	r3, #:lower16:.LC111	@,
	movt	r2, #:upper16:.LC110	@,
	movt	r3, #:upper16:.LC111	@,
	umull	ip, r8, r8, r1	@, tmp191, tmp247, D.39775
	mov	ip, r8, lsr #3	@ tmp190, tmp191,
	str	ip, [sp, #0]	@ tmp190,
	add	r8, ip, ip, asl #2	@, tmp198, tmp190, tmp190,
	sub	ip, r1, r8, asl #1	@ tmp200, D.39775, tmp198,
	str	ip, [sp, #4]	@ tmp200,
	add	r8, sl, r0	@ len.2762, len,
	rsb	r1, r8, r4	@, len.2762, count
	add	r0, r7, r8	@, page, len.2762
	bl	snprintf	@
	ldr	r1, [r6, #72]	@ extra_ref, extra_ref
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC112	@,
	movt	r3, #:upper16:.LC112	@,
	str	r1, [sp, #0]	@ extra_ref,
	add	r8, r8, r0	@ len.2722, len.2762,
	rsb	r1, r8, r4	@, len.2722, count
	add	r0, r7, r8	@, page, len.2722
	bl	snprintf	@
	ldr	ip, [r6, #76]	@ extra_disp, extra_disp
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC113	@,
	movt	r3, #:upper16:.LC113	@,
	str	ip, [sp, #0]	@ extra_disp,
	add	r8, r8, r0	@ len.2727, len.2722,
	rsb	r1, r8, r4	@, len.2727, count
	add	r0, r7, r8	@, page, len.2727
	bl	snprintf	@
	ldr	r1, [r6, #172]	@ extra_cmd, extra_cmd
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC114	@,
	movt	r3, #:upper16:.LC114	@,
	str	r1, [sp, #0]	@ extra_cmd,
	add	r8, r8, r0	@ len.2732, len.2727,
	rsb	r1, r8, r4	@, len.2732, count
	add	r0, r7, r8	@, page, len.2732
	bl	snprintf	@
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp223,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp223,
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC115	@,
	movt	r3, #:upper16:.LC115	@,
	ldr	r1, [ip, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	str	r1, [sp, #0]	@ USE_FF_APT_EN,
	add	r8, r8, r0	@ len.2737, len.2732,
	rsb	r1, r8, r4	@, len.2737, count
	add	r0, r7, r8	@, page, len.2737
	bl	snprintf	@
	ldr	ip, [r6, #176]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC116	@,
	movt	r3, #:upper16:.LC116	@,
	str	ip, [sp, #0]	@ g_ResetCreateNewSave,
	add	r8, r8, r0	@ len.2742, len.2737,
	rsb	r1, r8, r4	@, len.2742, count
	add	r0, r7, r8	@, page, len.2742
	bl	snprintf	@
	ldr	r1, [r6, #164]	@ <variable>.u32VaVdmKiloCycle, <variable>.u32VaVdmKiloCycle
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC117	@,
	movt	r3, #:upper16:.LC117	@,
	str	r1, [sp, #0]	@ <variable>.u32VaVdmKiloCycle,
	add	r8, r8, r0	@ len.2747, len.2742,
	rsb	r1, r8, r4	@, len.2747, count
	add	r0, r7, r8	@, page, len.2747
	bl	snprintf	@
	ldr	ip, [r6, #168]	@ <variable>.u32StatTime, <variable>.u32StatTime
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC118	@,
	movt	r3, #:upper16:.LC118	@,
	str	ip, [sp, #0]	@ <variable>.u32StatTime,
	add	r8, r8, r0	@ len.2752, len.2747,
	rsb	r1, r8, r4	@, len.2752, count
	add	r0, r7, r8	@, page, len.2752
	bl	snprintf	@
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r2, #1	@ tmp244,
	str	r9, [r1, #0]	@ tmp173,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp244,* eof
	add	r0, r8, r0	@, len.2752,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc, .-vfmw_read_proc
	.align	2
	.global	vfmw_proc_exit
	.type	vfmw_proc_exit, %function
vfmw_proc_exit:
	.fnstart
.LFB1468:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LC119	@ tmp134,
	sub	r4, fp, #36	@ tmp133,,
	movt	r5, #:upper16:.LC119	@ tmp134,
	mov	r3, #0	@,
	mov	r1, #16	@,
	mov	r2, r5	@, tmp134
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #1	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #2	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #3	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #4	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #5	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #6	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #7	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #8	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #9	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #10	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #11	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #12	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #13	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #14	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r2, r5	@, tmp134
	mov	r3, #15	@,
	mov	r0, r4	@, tmp133
	mov	r1, #16	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	mov	r1, #0	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC120	@,
	movt	r0, #:upper16:.LC120	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC121	@,
	movt	r0, #:upper16:.LC121	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC122	@,
	movt	r0, #:upper16:.LC122	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC123	@,
	movt	r0, #:upper16:.LC123	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC124	@,
	movt	r0, #:upper16:.LC124	@,
	bl	remove_proc_entry	@
	movw	r0, #:lower16:.LC125	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC125	@,
	bl	remove_proc_entry	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	vfmw_proc_exit, .-vfmw_proc_exit
	.align	2
	.global	vfmw_proc_init
	.type	vfmw_proc_init, %function
vfmw_proc_init:
	.fnstart
.LFB1467:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #44	@ tmp259,,
	mov	r1, #16	@,
	mov	r3, #0	@,
	movw	r2, #:lower16:.LC119	@,
	mov	r0, r4	@, tmp259
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2845
	beq	.L438	@,
	mov	r1, #16	@,
	mov	r3, #1	@,
	movw	r6, #:lower16:vfmw_read_proc_info	@ tmp258,
	movw	r5, #:lower16:vfmw_write_proc	@ tmp257,
	movt	r6, #:upper16:vfmw_read_proc_info	@ tmp258,
	movt	r5, #:upper16:vfmw_write_proc	@ tmp257,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	movw	r2, #:lower16:.LC119	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movt	r2, #:upper16:.LC119	@,
	mov	r0, r4	@, tmp259
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2846
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #2	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2847
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #3	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2848
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #4	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2849
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #5	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2850
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #6	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2851
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #7	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2852
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #8	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2853
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #9	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2854
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #10	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2855
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #11	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2856
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #12	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2857
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #13	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2858
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	mov	r3, #14	@,
	mov	r0, r4	@, tmp259
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2859
	beq	.L438	@,
	mov	r3, #15	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	mov	r1, #16	@,
	str	r6, [r0, #48]	@ tmp258, <variable>.read_proc
	movw	r2, #:lower16:.LC119	@,
	mov	r0, r4	@, tmp259
	movt	r2, #:upper16:.LC119	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp259
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	subs	r3, r0, #0	@ p,
	beq	.L438	@,
	str	r6, [r3, #48]	@ tmp258, <variable>.read_proc
	movw	r0, #:lower16:.LC120	@,
	str	r5, [r3, #52]	@ tmp257, <variable>.write_proc
	movt	r0, #:upper16:.LC120	@,
	mov	r1, #420	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2839
	bne	.L441	@,
.L438:
	mvn	r0, #0	@ D.40514,
.L439:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L441:
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	r3, #:lower16:vfmw_read_proc	@ tmp238,
	mov	r1, #420	@,
	movt	r3, #:upper16:vfmw_read_proc	@ tmp238,
	mov	r2, #0	@,
	str	r3, [r0, #48]	@ tmp238, <variable>.read_proc
	movw	r0, #:lower16:.LC121	@,
	movt	r0, #:upper16:.LC121	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2840
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	r1, #:lower16:vfmw_read_proc_dbg	@ tmp241,
	mov	r2, #0	@,
	movt	r1, #:upper16:vfmw_read_proc_dbg	@ tmp241,
	str	r1, [r0, #48]	@ tmp241, <variable>.read_proc
	movw	r0, #:lower16:.LC122	@,
	mov	r1, #420	@,
	movt	r0, #:upper16:.LC122	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2841
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	r2, #:lower16:vfmw_read_proc_prn	@ tmp244,
	mov	r1, #420	@,
	movt	r2, #:upper16:vfmw_read_proc_prn	@ tmp244,
	str	r2, [r0, #48]	@ tmp244, <variable>.read_proc
	movw	r0, #:lower16:.LC124	@,
	mov	r2, #0	@,
	movt	r0, #:upper16:.LC124	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2842
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	ip, #:lower16:vfmw_read_proc_scd	@ tmp247,
	mov	r1, #420	@,
	movt	ip, #:upper16:vfmw_read_proc_scd	@ tmp247,
	mov	r2, #0	@,
	str	ip, [r0, #48]	@ tmp247, <variable>.read_proc
	movw	r0, #:lower16:.LC123	@,
	movt	r0, #:upper16:.LC123	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2843
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	lr, #:lower16:vfmw_read_proc_dec	@ tmp250,
	mov	r1, #420	@,
	movt	lr, #:upper16:vfmw_read_proc_dec	@ tmp250,
	mov	r2, #0	@,
	str	lr, [r0, #48]	@ tmp250, <variable>.read_proc
	movw	r0, #:lower16:.LC125	@,
	movt	r0, #:upper16:.LC125	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.2844
	beq	.L438	@,
	str	r5, [r0, #52]	@ tmp257, <variable>.write_proc
	movw	r3, #:lower16:vfmw_read_proc_chn	@ tmp253,
	movt	r3, #:upper16:vfmw_read_proc_chn	@ tmp253,
	str	r3, [r0, #48]	@ tmp253, <variable>.read_proc
	mov	r0, #0	@ D.40514,
	b	.L439	@
	.fnend
	.size	vfmw_proc_init, .-vfmw_proc_init
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1363:
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
	movw	r4, #:lower16:g_ChanCtx	@ tmp133,
	movt	r4, #:upper16:g_ChanCtx	@ tmp133,
	mov	r1, #192	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #124]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #64]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #68]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #72]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #76]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #80]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #84]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #88]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #92]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #96]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #100]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #104]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #108]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #112]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #116]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #120]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L450	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r4, [r2, r0, asl #2]	@ D.37674, s_pstVfmwChan
	ldr	r3, [r4, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L451	@,
	cmp	r1, #0	@ pArgs,
	beq	.L452	@,
	mov	r5, r1	@ pArgs, pArgs
	movw	ip, #:lower16:11201048	@ tmp146,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	movt	ip, #:upper16:11201048	@ tmp146,
	add	ip, r4, ip	@ tmp146, D.37674, tmp146
	mov	r6, #0	@ D.37672,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldr	r0, [r5, #0]	@ tmp150,* pArgs
	str	r0, [ip, #0]	@ tmp150, <variable>.stSynExtraData.stPvrInfo
.L446:
	mov	r0, r6	@, D.37672
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L451:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4415	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.37672,
	b	.L446	@
.L450:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4414	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.37672,
	b	.L446	@
.L452:
	mov	r0, r1	@, pArgs
	mov	r2, #4416	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.37672,
	b	.L446	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L459	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L460	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.36595, s_pstVfmwChan
	cmp	r3, #0	@ D.36595,
	beq	.L461	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #76	@,
	add	r1, r3, #36	@, D.36595,
	bl	memcpy	@
	mov	r0, #0	@ D.36591,
	ldmfd	sp, {fp, sp, pc}	@
.L459:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2679	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36591,
	ldmfd	sp, {fp, sp, pc}	@
.L461:
	mov	r0, r3	@, D.36595
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2681	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36591,
	ldmfd	sp, {fp, sp, pc}	@
.L460:
	mov	r0, r1	@, pstCfg
	movw	r2, #2680	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36591,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
.LFB1381:
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
	cmp	r0, #15	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L469	@,
	cmp	r1, #0	@ pArgs,
	beq	.L470	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp143,
	movt	r2, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r2, r0, asl #2]	@ D.35929, s_pstVfmwChan
	cmp	ip, #0	@ D.35929,
	beq	.L471	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	movw	r3, #:lower16:11201192	@ tmp146,
	movt	r3, #:upper16:11201192	@ tmp146,
	add	r3, ip, r3	@ tmp146, D.35929, tmp146
	movw	ip, #:lower16:11201192	@ tmp147,
	movt	ip, #:upper16:11201192	@ tmp147,
	stmia	r3, {r0, r1}	@ tmp146,,
	ldr	r3, [r2, r4, asl #2]	@ temp.2962, s_pstVfmwChan
	ldr	r0, [r3, ip]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp152, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.35925,
	cmp	r2, #1	@ tmp152,
	strhi	r0, [r3, ip]	@ tmp155, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L469:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1333	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35925,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L471:
	mov	r0, ip	@, D.35929
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1335	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35925,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L470:
	mov	r0, r1	@, pArgs
	movw	r2, #1334	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35925,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
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
	cmp	r1, #0	@ pstFrameIntf
	beq	.L477	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.35885, s_pstVfmwChan
	cmp	r3, #0	@ D.35885,
	beq	.L478	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #136	@ tmp143, D.35885,
	mov	ip, #0	@ D.35883,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L474:
	mov	r0, ip	@, D.35883
	ldmfd	sp, {fp, sp, pc}	@
.L478:
	mov	r0, r3	@, D.35885
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1282	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35883,
	b	.L474	@
.L477:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1281	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35883,
	b	.L474	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
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
	cmp	r1, #0	@ pstStreamIntf
	beq	.L484	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.35864, s_pstVfmwChan
	cmp	r3, #0	@ D.35864,
	beq	.L485	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #112	@ tmp143, D.35864,
	mov	ip, #0	@ D.35862,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L481:
	mov	r0, ip	@, D.35862
	ldmfd	sp, {fp, sp, pc}	@
.L485:
	mov	r0, r3	@, D.35864
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1257	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35862,
	b	.L481	@
.L484:
	mov	r0, r1	@, pstStreamIntf
	movw	r2, #1256	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35862,
	b	.L481	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L492	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.35909, s_pstVfmwChan
	cmp	r3, #0	@ D.35909,
	beq	.L493	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L494	@,
	movw	r0, #:lower16:11275128	@,
	movt	r0, #:upper16:11275128	@,
	add	r0, r3, r0	@, D.35909,
	bl	GetSegStreamSize	@
	ldmfd	sp, {fp, sp, pc}	@
.L494:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1321	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC130	@,
	movt	r3, #:upper16:.LC130	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L492:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1319	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L493:
	mov	r0, r3	@, D.35909
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1320	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC129	@,
	movt	r3, #:upper16:.LC129	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	vfmw_read_proc_scd
	.type	vfmw_read_proc_scd, %function
vfmw_read_proc_scd:
	.fnstart
.LFB1462:
	@ args = 8, pretend = 0, frame = 16
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
	movw	r2, #:lower16:.LC131	@,
	mov	r9, r1	@ start, start
	movt	r2, #:upper16:.LC131	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r6, #:lower16:g_pSmIIS	@ tmp198,
	movt	r6, #:upper16:g_pSmIIS	@ tmp198,
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	ldr	r3, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	ldr	ip, [r3, #780]	@ <variable>.IsScdDrvOpen, <variable>.IsScdDrvOpen
	movw	r3, #:lower16:.LC133	@,
	movt	r3, #:upper16:.LC133	@,
	str	ip, [sp, #0]	@ <variable>.IsScdDrvOpen,
	mov	r8, r0	@ D.39917,
	rsb	r1, r0, r4	@, D.39917, count
	add	r0, r5, r0	@, page, D.39917
	bl	snprintf	@
	ldr	r7, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC134	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC134	@,
	ldr	sl, [r7, #788]	@ <variable>.SCDState, <variable>.SCDState
	str	sl, [sp, #0]	@ <variable>.SCDState,
	add	r7, r0, r8	@ len.3062,, D.39917
	rsb	r1, r7, r4	@, len.3062, count
	add	r0, r5, r7	@, page, len.3062
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC135	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC135	@,
	ldr	r1, [ip, #784]	@ <variable>.ThisInstID, <variable>.ThisInstID
	str	r1, [sp, #0]	@ <variable>.ThisInstID,
	add	r7, r7, r0	@ len.3068, len.3062,
	rsb	r1, r7, r4	@, len.3068, count
	add	r0, r5, r7	@, page, len.3068
	bl	snprintf	@
	ldr	sl, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC136	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC136	@,
	ldr	r8, [sl, #792]	@ <variable>.LastProcessTime, <variable>.LastProcessTime
	str	r8, [sp, #0]	@ <variable>.LastProcessTime,
	add	sl, r7, r0	@ len.3074, len.3068,
	rsb	r1, sl, r4	@, len.3074, count
	add	r0, r5, sl	@, page, len.3074
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC138	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC138	@,
	ldr	r1, [ip, #0]	@ <variable>.ScdDrvMem.HwMemAddr, <variable>.ScdDrvMem.HwMemAddr
	str	r1, [sp, #0]	@ <variable>.ScdDrvMem.HwMemAddr,
	add	r7, sl, r0	@ len.3080, len.3074,
	rsb	r1, r7, r4	@, len.3080, count
	add	r0, r5, r7	@, page, len.3080
	bl	snprintf	@
	ldr	r8, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC139	@,
	ldr	ip, [r8, #4]	@ <variable>.ScdDrvMem.HwMemSize, <variable>.ScdDrvMem.HwMemSize
	str	ip, [sp, #0]	@ <variable>.ScdDrvMem.HwMemSize,
	add	r8, r7, r0	@ len.3086, len.3080,
	rsb	r1, r8, r4	@, len.3086, count
	add	r0, r5, r8	@, page, len.3086
	bl	snprintf	@
	ldr	sl, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC140	@,
	ldr	r1, [sl, #8]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.ScdDrvMem.DownMsgMemAddr
	str	r1, [sp, #0]	@ <variable>.ScdDrvMem.DownMsgMemAddr,
	add	r7, r8, r0	@ len.3092, len.3086,
	rsb	r1, r7, r4	@, len.3092, count
	add	r0, r5, r7	@, page, len.3092
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC141	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC141	@,
	ldr	sl, [ip, #20]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.ScdDrvMem.UpMsgMemAddr
	str	sl, [sp, #0]	@ <variable>.ScdDrvMem.UpMsgMemAddr,
	add	r8, r7, r0	@ len.3098, len.3092,
	rsb	r1, r8, r4	@, len.3098, count
	add	r0, r5, r8	@, page, len.3098
	bl	snprintf	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp249,
	movt	r1, #:upper16:.LANCHOR0	@ tmp249,
	ldr	r2, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	ldr	sl, [r1, #180]	@ i, g_CurProcChan
	add	r3, r2, sl, asl #2	@, tmp255, g_pSmIIS, i,
	ldr	r7, [r3, #652]	@ pInst, <variable>.pSmInstArray
	cmp	r7, #0	@ pInst,
	add	r8, r8, r0	@ len, len.3098,
	beq	.L496	@,
	movw	lr, #:lower16:166252	@ tmp257,
	movt	lr, #:upper16:166252	@ tmp257,
	ldr	r0, [r7, lr]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L502	@,
.L496:
	mov	r0, r8	@, len
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L502:
	add	r6, r7, #168	@ D.39941, pInst,
	sub	r1, fp, #52	@,,
	mov	r0, r6	@, D.39941
	bl	GetRawStreamSize	@
	cmp	r0, #0	@,
	bne	.L503	@,
	mov	r0, r6	@, D.39941
	sub	r1, fp, #48	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	bne	.L504	@,
.L498:
	add	r6, r7, #73728	@ D.39949, pInst,
	sub	r1, fp, #60	@,,
	add	r6, r6, #192	@ D.39949, D.39949,
	mov	r0, r6	@, D.39949
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	bne	.L505	@,
.L499:
	mov	r0, r6	@, D.39949
	sub	r1, fp, #56	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	bne	.L506	@,
.L500:
	rsb	r1, r8, r4	@, len, count
	mov	r3, sl	@, i
	add	r0, r5, r8	@, page, len
	movw	r2, #:lower16:.LC143	@,
	movt	r2, #:upper16:.LC143	@,
	bl	snprintf	@
	movw	ip, #:lower16:166252	@ tmp283,
	movt	ip, #:upper16:166252	@ tmp283,
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC144	@,
	movt	r2, #:upper16:.LC132	@,
	ldr	r1, [r7, ip]	@ <variable>.Mode, <variable>.Mode
	movt	r3, #:upper16:.LC144	@,
	str	r1, [sp, #0]	@ <variable>.Mode,
	add	r8, r0, r8	@ len.3115,, len
	rsb	r1, r8, r4	@, len.3115, count
	add	r0, r5, r8	@, page, len.3115
	bl	snprintf	@
	ldr	ip, [r7, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC145	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC145	@,
	str	ip, [sp, #0]	@ <variable>.Config.VidStd,
	add	r8, r8, r0	@ len.3121, len.3115,
	rsb	r1, r8, r4	@, len.3121, count
	add	r0, r5, r8	@, page, len.3121
	bl	snprintf	@
	ldrsb	r1, [r7, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC146	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC146	@,
	str	r1, [sp, #0]	@ <variable>.IsCounting,
	add	r8, r8, r0	@ len.3126, len.3121,
	rsb	r1, r8, r4	@, len.3126, count
	add	r0, r5, r8	@, page, len.3126
	bl	snprintf	@
	ldr	ip, [r7, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC147	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC147	@,
	str	ip, [sp, #0]	@ <variable>.Config.BufPhyAddr,
	add	r8, r8, r0	@ len.3131, len.3126,
	rsb	r1, r8, r4	@, len.3131, count
	add	r0, r5, r8	@, page, len.3131
	bl	snprintf	@
	ldr	r1, [r7, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC148	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC148	@,
	str	r1, [sp, #0]	@ <variable>.Config.BufSize,
	add	r8, r8, r0	@ len.3136, len.3131,
	rsb	r1, r8, r4	@, len.3136, count
	add	r0, r5, r8	@, page, len.3136
	bl	snprintf	@
	ldr	ip, [fp, #-52]	@ RawSize, RawSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC149	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC149	@,
	str	ip, [sp, #0]	@ RawSize,
	add	r8, r8, r0	@ len.3141, len.3136,
	rsb	r1, r8, r4	@, len.3141, count
	add	r0, r5, r8	@, page, len.3141
	bl	snprintf	@
	ldr	r1, [fp, #-48]	@ RawNum, RawNum
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC150	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC150	@,
	str	r1, [sp, #0]	@ RawNum,
	add	r8, r8, r0	@ len.3146, len.3141,
	rsb	r1, r8, r4	@, len.3146, count
	add	r0, r5, r8	@, page, len.3146
	bl	snprintf	@
	ldr	ip, [fp, #-60]	@ SegSize, SegSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC151	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC151	@,
	str	ip, [sp, #0]	@ SegSize,
	add	r8, r8, r0	@ len.3151, len.3146,
	rsb	r1, r8, r4	@, len.3151, count
	add	r0, r5, r8	@, page, len.3151
	bl	snprintf	@
	ldr	r1, [fp, #-56]	@ SegNum, SegNum
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC152	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC152	@,
	str	r1, [sp, #0]	@ SegNum,
	add	r8, r8, r0	@ len.3156, len.3151,
	rsb	r1, r8, r4	@, len.3156, count
	add	r0, r5, r8	@, page, len.3156
	bl	snprintf	@
	movw	ip, #:lower16:166112	@ tmp329,
	movt	ip, #:upper16:166112	@ tmp329,
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC153	@,
	movt	r2, #:upper16:.LC137	@,
	ldr	r1, [r7, ip]	@ <variable>.StreamSegArray.SegBufReadAddr, <variable>.StreamSegArray.SegBufReadAddr
	movt	r3, #:upper16:.LC153	@,
	str	r1, [sp, #0]	@ <variable>.StreamSegArray.SegBufReadAddr,
	add	r8, r8, r0	@ len.3161, len.3156,
	rsb	r1, r8, r4	@, len.3161, count
	add	r0, r5, r8	@, page, len.3161
	bl	snprintf	@
	movw	ip, #:lower16:166116	@ tmp335,
	movt	ip, #:upper16:166116	@ tmp335,
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC154	@,
	movt	r2, #:upper16:.LC137	@,
	ldr	r1, [r7, ip]	@ <variable>.StreamSegArray.SegBufWriteAddr, <variable>.StreamSegArray.SegBufWriteAddr
	movt	r3, #:upper16:.LC154	@,
	str	r1, [sp, #0]	@ <variable>.StreamSegArray.SegBufWriteAddr,
	add	r8, r8, r0	@ len.3166, len.3161,
	rsb	r1, r8, r4	@, len.3166, count
	add	r0, r5, r8	@, page, len.3166
	bl	snprintf	@
	movw	ip, #:lower16:180112	@ tmp341,
	movt	ip, #:upper16:180112	@ tmp341,
	movw	r2, #:lower16:.LC155	@,
	movw	r3, #:lower16:.LC156	@,
	movt	r2, #:upper16:.LC155	@,
	ldr	r1, [r7, ip]	@ <variable>.BitRate, <variable>.BitRate
	movt	r3, #:upper16:.LC156	@,
	str	r1, [sp, #0]	@ <variable>.BitRate,
	add	r8, r8, r0	@ len.3171, len.3166,
	rsb	r1, r8, r4	@, len.3171, count
	add	r0, r5, r8	@, page, len.3171
	bl	snprintf	@
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	add	r8, r8, r0	@ len.3176, len.3171,
	rsb	r1, r8, r4	@, len.3176, count
	add	r0, r5, r8	@, page, len.3176
	bl	snprintf	@
	mov	ip, #0	@ tmp346,
	str	ip, [r9, #0]	@ tmp346,* start
	mov	r2, #1	@ tmp347,
	ldr	r1, [fp, #4]	@ eof, eof
	str	r2, [r1, #0]	@ tmp347,* eof
	add	r8, r8, r0	@ len, len.3176,
	b	.L496	@
.L503:
	ldr	r2, .L507	@,
	movw	r3, #7858	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.39941
	sub	r1, fp, #48	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	beq	.L498	@,
.L504:
	add	r6, r7, #73728	@ D.39949, pInst,
	ldr	r2, .L507	@,
	add	r6, r6, #192	@ D.39949, D.39949,
	movw	r3, #7863	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #60	@,,
	mov	r0, r6	@, D.39949
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	beq	.L499	@,
.L505:
	ldr	r2, .L507	@,
	movw	r3, #7868	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.39949
	sub	r1, fp, #56	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	beq	.L500	@,
.L506:
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L507	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #7873	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L500	@
.L508:
	.align	2
.L507:
	.word	.LANCHOR1+32
	.fnend
	.size	vfmw_read_proc_scd, .-vfmw_read_proc_scd
	.global	__aeabi_idiv
	.align	2
	.global	vfmw_read_proc_info
	.type	vfmw_read_proc_info, %function
vfmw_read_proc_info:
	.fnstart
.LFB1458:
	@ args = 8, pretend = 0, frame = 24
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
	movw	r4, #:lower16:g_pSmIIS	@ tmp195,
	movt	r4, #:upper16:g_pSmIIS	@ tmp195,
	movw	r7, #:lower16:.LANCHOR0	@ tmp321,
	movt	r7, #:upper16:.LANCHOR0	@ tmp321,
	str	r1, [fp, #-64]	@ start, %sfp
	ldr	ip, [r4, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:s_pFspInst	@ tmp193,
	ldr	r9, [r7, #180]	@ chanID, g_CurProcChan
	movt	r2, #:upper16:s_pFspInst	@ tmp193,
	mov	r4, r0	@ page, page
	mov	r5, r3	@ count, count
	ldr	sl, [ip, #652]	@ pInst, <variable>.pSmInstArray
	ldr	r8, [r2, r9, asl #2]	@ pFsp, s_pFspInst
	cmp	sl, #0	@ pInst,
	beq	.L510	@,
	movw	r0, #:lower16:166252	@ tmp196,
	movt	r0, #:upper16:166252	@ tmp196,
	ldr	r3, [sl, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	bne	.L538	@,
.L510:
	mov	r0, #0	@ len,
.L520:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L538:
	add	r6, sl, #168	@ D.39684, pInst,
	sub	r1, fp, #52	@,,
	mov	r0, r6	@, D.39684
	bl	GetRawStreamSize	@
	cmp	r0, #0	@,
	bne	.L539	@,
	mov	r0, r6	@, D.39684
	sub	r1, fp, #48	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	bne	.L540	@,
.L512:
	add	r6, sl, #73728	@ D.39692, pInst,
	sub	r1, fp, #60	@,,
	add	r6, r6, #192	@ D.39692, D.39692,
	mov	r0, r6	@, D.39692
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	bne	.L541	@,
.L513:
	mov	r0, r6	@, D.39692
	sub	r1, fp, #56	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	bne	.L542	@,
.L514:
	movw	ip, #:lower16:166108	@ tmp215,
	movt	ip, #:upper16:166108	@ tmp215,
	mov	r1, r5	@, count
	mov	r3, r9	@, chanID
	ldr	lr, [sl, ip]	@, <variable>.StreamSegArray.SegBufSize
	mov	r0, r4	@, page
	movw	r2, #:lower16:.LC157	@,
	movt	r2, #:upper16:.LC157	@,
	movw	sl, #:lower16:2013092600	@ tmp221,
	movt	sl, #:upper16:2013092600	@ tmp221,
	str	lr, [fp, #-68]	@, %sfp
	bl	snprintf	@
	movw	r2, #:lower16:.LC158	@,
	movw	r3, #:lower16:.LC159	@,
	movt	r2, #:upper16:.LC158	@,
	movt	r3, #:upper16:.LC159	@,
	str	sl, [sp, #0]	@ tmp221,
	movw	sl, #:lower16:-858993459	@ tmp261,
	movt	sl, #:upper16:-858993459	@ tmp261,
	rsb	r1, r0, r5	@, D.39703, count
	mov	r6, r0	@ D.39703,
	add	r0, r4, r0	@, page, D.39703
	bl	snprintf	@
	movw	r2, #:lower16:.LC158	@,
	movw	r3, #:lower16:.LC160	@,
	movt	r2, #:upper16:.LC158	@,
	movt	r3, #:upper16:.LC160	@,
	str	r9, [sp, #0]	@ chanID,
	add	r6, r0, r6	@ len.3221,, D.39703
	rsb	r1, r6, r5	@, len.3221, count
	add	r0, r4, r6	@, page, len.3221
	bl	snprintf	@
	movw	r2, #:lower16:.LC161	@,
	movt	r2, #:upper16:.LC161	@,
	add	r6, r6, r0	@ len.3226, len.3221,
	rsb	r1, r6, r5	@, len.3226, count
	add	r0, r4, r6	@, page, len.3226
	bl	snprintf	@
	ldr	r1, [fp, #-48]	@ RawNum, RawNum
	ldr	ip, [fp, #-52]	@ RawSize, RawSize
	movw	r2, #:lower16:.LC162	@,
	movw	r3, #:lower16:.LC163	@,
	movt	r2, #:upper16:.LC162	@,
	movt	r3, #:upper16:.LC163	@,
	str	r1, [sp, #4]	@ RawNum,
	str	ip, [sp, #0]	@ RawSize,
	add	r6, r6, r0	@ len.3231, len.3226,
	rsb	r1, r6, r5	@, len.3231, count
	add	r0, r4, r6	@, page, len.3231
	bl	snprintf	@
	ldr	r1, [fp, #-56]	@ SegNum, SegNum
	ldr	ip, [fp, #-60]	@ SegSize, SegSize
	movw	r2, #:lower16:.LC162	@,
	movw	r3, #:lower16:.LC164	@,
	movt	r2, #:upper16:.LC162	@,
	movt	r3, #:upper16:.LC164	@,
	str	r1, [sp, #4]	@ SegNum,
	str	ip, [sp, #0]	@ SegSize,
	add	r6, r6, r0	@ len.3236, len.3231,
	rsb	r1, r6, r5	@, len.3236, count
	add	r0, r4, r6	@, page, len.3236
	bl	snprintf	@
	ldr	r3, [fp, #-60]	@ SegSize.3246, SegSize
	ldr	r1, [fp, #-68]	@, %sfp
	mov	r2, #100	@ tmp246,
	stmia	sp, {r1, r3}	@ phole stm
	add	r6, r6, r0	@ len.3241, len.3236,
	mul	r0, r2, r3	@, tmp246, SegSize.3246
	bl	__aeabi_idiv	@
	add	ip, r4, r6	@ tmp241, page, len.3241
	rsb	r1, r6, r5	@ tmp242, len.3241, count
	movw	r2, #:lower16:.LC165	@,
	movw	r3, #:lower16:.LC166	@,
	movt	r2, #:upper16:.LC165	@,
	movt	r3, #:upper16:.LC166	@,
	str	r0, [sp, #8]	@,
	mov	r0, ip	@, tmp241
	bl	snprintf	@
	movw	r2, #:lower16:.LC167	@,
	movt	r2, #:upper16:.LC167	@,
	add	r6, r6, r0	@ len.3247, len.3241,
	rsb	r1, r6, r5	@, len.3247, count
	add	r0, r4, r6	@, page, len.3247
	bl	snprintf	@
	ldr	ip, [r7, #120]	@ D.39719, <variable>.u32VaVdmLoad
	movw	r2, #:lower16:.LC168	@,
	movw	r3, #:lower16:.LC169	@,
	movt	r2, #:upper16:.LC168	@,
	movt	r3, #:upper16:.LC169	@,
	umull	lr, r1, sl, ip	@, tmp260, tmp261, D.39719
	mov	lr, r1, lsr #3	@ tmp259, tmp260,
	str	lr, [sp, #0]	@ tmp259,
	add	r1, lr, lr, asl #2	@, tmp267, tmp259, tmp259,
	sub	lr, ip, r1, asl #1	@ tmp269, D.39719, tmp267,
	str	lr, [sp, #4]	@ tmp269,
	add	r6, r6, r0	@ len.3252, len.3247,
	rsb	r1, r6, r5	@, len.3252, count
	add	r0, r4, r6	@, page, len.3252
	bl	snprintf	@
	ldr	ip, [r8, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movw	r2, #:lower16:.LC170	@,
	movw	r3, #:lower16:.LC171	@,
	movt	r2, #:upper16:.LC170	@,
	movt	r3, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsWidth,
	ldr	r1, [r8, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [sp, #4]	@ <variable>.stInstCfg.s32DecFsHeight,
	add	r6, r6, r0	@ len.3258, len.3252,
	rsb	r1, r6, r5	@, len.3258, count
	add	r0, r4, r6	@, page, len.3258
	bl	snprintf	@
	ldr	ip, [r8, #72]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	movw	r2, #:lower16:.LC170	@,
	movw	r3, #:lower16:.LC172	@,
	movt	r2, #:upper16:.LC170	@,
	movt	r3, #:upper16:.LC172	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsWidth,
	ldr	r1, [r8, #76]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r1, [sp, #4]	@ <variable>.stInstCfg.s32DispFsHeight,
	add	r6, r6, r0	@ len.3263, len.3258,
	rsb	r1, r6, r5	@, len.3263, count
	add	r0, r4, r6	@, page, len.3263
	bl	snprintf	@
	ldr	r1, [r7, #192]	@ D.39735, <variable>.u32FrFrameRate
	movw	r2, #:lower16:.LC173	@,
	movw	r3, #:lower16:.LC174	@,
	movt	r2, #:upper16:.LC173	@,
	movt	r3, #:upper16:.LC174	@,
	umull	lr, r7, sl, r1	@, tmp288, tmp261, D.39735
	mov	ip, r7, lsr #3	@ tmp287, tmp288,
	str	ip, [sp, #0]	@ tmp287,
	add	lr, ip, ip, asl #2	@, tmp295, tmp287, tmp287,
	sub	r1, r1, lr, asl #1	@ tmp297, D.39735, tmp295,
	str	r1, [sp, #4]	@ tmp297,
	add	r7, r6, r0	@ len.3268, len.3263,
	add	r0, r4, r7	@, page, len.3268
	rsb	r1, r7, r5	@, len.3268, count
	bl	snprintf	@
	ldrsb	r2, [r8, #21]	@ D.39746, <variable>.s32DecFsNum
	cmp	r2, #0	@ D.39746,
	add	r6, r7, r0	@ len.3273, len.3268,
	movle	r0, #0	@ prephitmp.3196,
	movle	r3, r0	@ usedFrameNum, prephitmp.3196
	ble	.L516	@,
	add	r1, r8, #31744	@ ivtmp.3210, pFsp,
	add	r7, r2, r2, asl #1	@, tmp302, D.39746, D.39746,
	mov	r3, #0	@ usedFrameNum,
	ldrsb	lr, [r1, #130]!	@ <variable>.DispState, <variable>.DispState
	mov	r7, r7, asl #4	@ D.43177, tmp302,
	sub	r0, r7, #48	@ tmp325, D.43177,
	cmp	lr, #3	@ <variable>.DispState,
	ubfx	ip, r0, #4, #1	@ tmp329, tmp325,,
	beq	.L523	@,
	ldrsb	r0, [r1, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #1	@ <variable>.IsDecRef,
	beq	.L523	@,
.L524:
	mov	r0, #48	@ ivtmp.3211,
	cmp	r0, r7	@ ivtmp.3211, D.43177
	add	r1, r1, r0	@ ivtmp.3210, ivtmp.3210,
	beq	.L536	@,
	cmp	ip, #0	@ tmp329,
	beq	.L519	@,
	ldrsb	lr, [r1, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #3	@ <variable>.DispState,
	beq	.L526	@,
	ldrsb	ip, [r1, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #1	@ <variable>.IsDecRef,
	beq	.L526	@,
	add	r0, r0, #48	@ ivtmp.3211, ivtmp.3211,
	add	r1, r1, #48	@ ivtmp.3210, ivtmp.3210,
	cmp	r0, r7	@ ivtmp.3211, D.43177
	bne	.L519	@,
.L536:
	mov	ip, #100	@ tmp306,
	mul	r0, ip, r3	@ prephitmp.3196, tmp306, usedFrameNum
.L516:
	mov	r1, r2	@, D.39746
	stmia	sp, {r2, r3}	@ phole stm
	bl	__aeabi_idiv	@
	add	r7, r4, r6	@ tmp307, page, len.3273
	rsb	r1, r6, r5	@ tmp308, len.3273, count
	movw	r2, #:lower16:.LC165	@,
	movw	r3, #:lower16:.LC175	@,
	movt	r2, #:upper16:.LC165	@,
	movt	r3, #:upper16:.LC175	@,
	str	r0, [sp, #8]	@,
	mov	r0, r7	@, tmp307
	bl	snprintf	@
	movw	r2, #:lower16:.LC176	@,
	movt	r2, #:upper16:.LC176	@,
	add	r6, r0, r6	@ len.3278,, len.3273
	rsb	r1, r6, r5	@, len.3278, count
	add	r0, r4, r6	@, page, len.3278
	bl	snprintf	@
	ldr	r1, [fp, #-64]	@, %sfp
	mov	ip, #0	@ tmp318,
	mov	r2, #1	@ tmp319,
	str	ip, [r1, #0]	@ tmp318,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp319,* eof
	add	r0, r6, r0	@ len, len.3278,
	b	.L520	@
.L543:
	ldrsb	lr, [r1, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	lr, #1	@ <variable>.IsDecRef,
	beq	.L517	@,
	ldrsb	r1, [r1, #48]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	beq	.L530	@,
.L535:
	ldrsb	r1, [ip, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #1	@ <variable>.IsDecRef,
	beq	.L530	@,
.L531:
	add	r0, r0, #48	@ ivtmp.3211, tmp331,
	add	r1, ip, #48	@ ivtmp.3210, tmp330,
	cmp	r0, r7	@ ivtmp.3211, D.43177
	beq	.L536	@,
.L519:
	ldrsb	lr, [r1, #0]	@ <variable>.DispState, <variable>.DispState
	add	r0, r0, #48	@ tmp331, ivtmp.3211,
	add	ip, r1, #48	@ tmp330, ivtmp.3210,
	cmp	lr, #3	@ <variable>.DispState,
	bne	.L543	@,
.L517:
	ldrsb	r1, [r1, #48]	@ <variable>.DispState, <variable>.DispState
	add	r3, r3, #1	@ usedFrameNum, usedFrameNum,
	cmp	r1, #3	@ <variable>.DispState,
	bne	.L535	@,
.L530:
	add	r3, r3, #1	@ usedFrameNum, usedFrameNum,
	b	.L531	@
.L523:
	mov	r3, #1	@ usedFrameNum,
	b	.L524	@
.L526:
	add	r0, r0, #48	@ ivtmp.3211, ivtmp.3211,
	add	r3, r3, #1	@ usedFrameNum, usedFrameNum,
	cmp	r0, r7	@ ivtmp.3211, D.43177
	add	r1, r1, #48	@ ivtmp.3210, ivtmp.3210,
	bne	.L519	@,
	b	.L536	@
.L542:
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L544	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #7605	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L514	@
.L539:
	ldr	r2, .L544	@,
	movw	r3, #7590	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.39684
	sub	r1, fp, #48	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	beq	.L512	@,
.L540:
	add	r6, sl, #73728	@ D.39692, pInst,
	ldr	r2, .L544	@,
	add	r6, r6, #192	@ D.39692, D.39692,
	movw	r3, #7595	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #60	@,,
	mov	r0, r6	@, D.39692
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	beq	.L513	@,
.L541:
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L544	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #7600	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L513	@
.L545:
	.align	2
.L544:
	.word	.LANCHOR1+52
	.fnend
	.size	vfmw_read_proc_info, .-vfmw_read_proc_info
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1453:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp178,
	movt	r5, #:upper16:.LANCHOR0	@ tmp178,
	mov	r6, r0	@ ChanId, ChanId
	ldr	r0, [r5, r0, asl #2]	@ D.39565, s_pstVfmwChan
	ldr	r3, [r0, #944]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #15	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L547	@
.L559:
	.word	.L548
	.word	.L549
	.word	.L550
	.word	.L551
	.word	.L547
	.word	.L552
	.word	.L553
	.word	.L547
	.word	.L554
	.word	.L555
	.word	.L556
	.word	.L556
	.word	.L556
	.word	.L557
	.word	.L547
	.word	.L558
.L558:
	add	r0, r0, #952	@, D.39565,
	bl	MVC_DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L560:
	cmn	r4, #1	@ ret,
	beq	.L562	@,
	cmp	r4, #0	@ ret,
	bne	.L573	@,
	ldr	r3, [r5, #68]	@ g_event_report.3306, g_event_report
	cmp	r3, #0	@ g_event_report.3306,
	beq	.L566	@,
	sub	r2, fp, #28	@ tmp160,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.3306
.L566:
	movw	r1, #:lower16:.LC178	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC178	@,
	bl	dprint_vfmw	@
.L565:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L547:
	mvn	r4, #0	@ ret,
.L562:
	ldr	r3, [r5, #68]	@ g_event_report.756, g_event_report
	cmp	r3, #0	@ g_event_report.756,
	beq	.L564	@,
	sub	r2, fp, #28	@ tmp156,,
	mov	r1, #1	@ tmp155,
	mov	r0, r6	@, ChanId
	str	r1, [r2, #-4]!	@ tmp155, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.756
.L564:
	movw	r1, #:lower16:.LC177	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC177	@,
	bl	dprint_vfmw	@
	b	.L565	@
.L548:
	add	r0, r0, #952	@, D.39565,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L549:
	add	r0, r0, #952	@, D.39565,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L550:
	add	r0, r0, #952	@, D.39565,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L551:
	add	r0, r0, #952	@, D.39565,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L552:
	add	r0, r0, #952	@, D.39565,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L553:
	add	r0, r0, #952	@, D.39565,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L554:
	add	r0, r0, #952	@, D.39565,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L555:
	add	r0, r0, #952	@, D.39565,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L556:
	add	r0, r0, #952	@, D.39565,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L557:
	add	r0, r0, #952	@, D.39565,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L560	@
.L573:
	movw	r0, #:lower16:g_chipID	@ tmp162,
	movt	r0, #:upper16:g_chipID	@ tmp162,
	ldr	r3, [r0, #0]	@ g_chipID, g_chipID
	cmp	r3, #10	@ g_chipID,
	bhi	.L565	@,
	mov	r2, #1	@ tmp165,
	mov	r3, r2, asl r3	@ tmp164, tmp165,
	tst	r3, #1856	@ tmp164,
	bne	.L568	@,
	tst	r3, #63	@ tmp164,
	beq	.L565	@,
	ldr	r3, [r5, #68]	@ g_event_report.3307, g_event_report
	cmp	r3, #0	@ g_event_report.3307,
	beq	.L569	@,
	sub	r2, fp, #28	@ tmp170,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.3307
.L569:
	movw	r1, #:lower16:.LC179	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC179	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L565	@
.L568:
	ldr	r3, [r5, #68]	@ g_event_report.3308, g_event_report
	cmp	r3, #0	@ g_event_report.3308,
	beq	.L570	@,
	sub	r2, fp, #28	@ tmp174,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.3308
.L570:
	movw	r1, #:lower16:.LC179	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC179	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L565	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1446:
	@ args = 8, pretend = 0, frame = 16
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
	mov	r6, r3	@ Height, Height
	mov	r3, r2, asl #1	@ tmp158, Width,
	str	r1, [fp, #-52]	@ ChromOfst, %sfp
	mov	sl, r2	@ Width, Width
	mov	r2, #0	@,
	mul	r1, r6, r3	@, Height, tmp158
	ldr	r8, [fp, #8]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r7, r0, #0	@ pFrameStore,
	beq	.L585	@,
	mul	r4, sl, r6	@ D.39155, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.39155, D.39155,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [fp, #-56]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [fp, #-48]	@, %sfp
	beq	.L576	@,
	cmp	r6, #0	@ Height,
	ble	.L577	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39155
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	r9, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L577	@,
	cmp	r9, #0	@ tmp187,
	beq	.L578	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39155
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L577	@,
.L578:
	mov	r1, r4	@, D.39155
	mov	r2, r8	@, fp
	add	r9, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, r9, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39155
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L578	@,
.L577:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	r9, r6, asr #1	@ D.39170, tmp165,
	cmp	r9, #0	@ D.39170,
	ble	.L579	@,
	ldr	r6, [fp, #-52]	@, %sfp
	add	r2, r4, #3	@ tmp169, D.39155,
	cmp	r4, #0	@ D.39155,
	ldr	r5, [fp, #-48]	@ pU, %sfp
	add	sl, sl, sl, lsr #31	@, tmp172, Width, Width,
	str	r7, [fp, #-52]	@ pFrameStore, %sfp
	movlt	r4, r2	@ D.39155, tmp169
	add	r2, r7, r6	@ pChrom, pFrameStore,
	ldr	r7, [fp, #4]	@ Stride, Stride
	add	lr, r5, r4, asr #2	@, pV, pU, D.39155,
	mov	r6, sl, asr #1	@ pretmp.3329, tmp172,
	mov	sl, #0	@ y.3362,
.L580:
	cmp	r6, #0	@ pretmp.3329,
	ble	.L583	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.3329
	sub	ip, r6, #1	@ tmp180, pretmp.3329,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.3345,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L598	@,
	cmp	ip, #0	@ tmp182,
	beq	.L581	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.3329
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.3345
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.3345
	mov	r0, #3	@ ivtmp.3345,
	beq	.L598	@,
.L581:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.3345,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.3345
	add	r0, ip, #1	@ ivtmp.3345, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.3329
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L581	@,
.L598:
	add	r5, r5, r6	@ pU, pU, pretmp.3329
	add	lr, lr, r6	@ pV, pV, pretmp.3329
.L583:
	add	sl, sl, #1	@ y.3362, y.3362,
	cmp	sl, r9	@ y.3362, D.39170
	addne	r2, r2, r7	@ pChrom, pChrom, Stride
	bne	.L580	@
.L599:
	ldr	r7, [fp, #-52]	@ pFrameStore, %sfp
.L579:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [fp, #-48]	@, %sfp
	bl	klib_fwrite	@
.L576:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, #0	@,
	beq	.L585	@,
	ldr	r0, [fp, #-48]	@, %sfp
	bl	OSAL_FreeVirMem	@
.L585:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1445:
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
	ldr	r3, [r3, #60]	@ D.39117, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39117,
	beq	.L608	@,
	mov	r0, #0	@,
	blx	r3	@ D.39117
	bl	SCDDRV_EnableInt	@
	ldmfd	sp, {fp, sp, pc}	@
.L608:
	mov	r0, r3	@, D.39117
	movw	r2, #6745	@,
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	bl	SCDDRV_EnableInt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1444:
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
	ldr	r3, [r3, #56]	@ D.39105, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.39105,
	beq	.L613	@,
	mov	r0, #0	@,
	blx	r3	@ D.39105
	bl	SCDDRV_MaskInt	@
	ldmfd	sp, {fp, sp, pc}	@
.L613:
	mov	r0, r3	@, D.39105
	movw	r2, #6719	@,
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	bl	SCDDRV_MaskInt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1437:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r7, r2	@ pReadImgNum, pReadImgNum
	ldr	ip, [r4, r0, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r8, r3	@ pNewImgNum, pNewImgNum
	cmp	ip, #0	@ tmp141,
	beq	.L621	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.3432, s_pstVfmwChan
	ldr	r3, [r2, #936]	@ D.38946, <variable>.eVidStd
	cmp	r3, #0	@ D.38946,
	beq	.L622	@,
	cmp	r3, #15	@ D.38946,
	movweq	r3, #:lower16:11169564	@ tmp147,
	movteq	r3, #:upper16:11169564	@ tmp147,
	movne	r3, #2	@ tmp149,
	ldreq	r3, [r2, r3]	@ <variable>.stSynCtx.unSyntax.stMvcCtx.DPB.size,
	str	r3, [r6, #0]	@ tmp149,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L622:
	movw	r1, #27568	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L621:
	mov	r0, ip	@, tmp141
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #6460	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	vfmw_read_proc_dec
	.type	vfmw_read_proc_dec, %function
vfmw_read_proc_dec:
	.fnstart
.LFB1464:
	@ args = 8, pretend = 0, frame = 64
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
	movw	r2, #:lower16:.LC181	@,
	str	r1, [fp, #-84]	@ start, %sfp
	movt	r2, #:upper16:.LC181	@,
	mov	r1, r3	@, count
	str	r3, [fp, #-108]	@ count, %sfp
	mov	r8, r0	@ page, page
	bl	snprintf	@
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp310,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp310,
	ldr	r2, [fp, #-108]	@, %sfp
	movw	r4, #:lower16:.LANCHOR0	@,
	ldr	r7, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	movw	r3, #:lower16:.LC115	@,
	movt	r3, #:upper16:.LC115	@,
	movt	r4, #:upper16:.LANCHOR0	@,
	str	r4, [fp, #-64]	@, %sfp
	str	r7, [sp, #0]	@ USE_FF_APT_EN,
	mov	r5, r0	@ D.40083,
	add	r0, r8, r0	@, page, D.40083
	rsb	r1, r5, r2	@, D.40083,
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	bl	snprintf	@
	ldr	r7, [r4, #180]	@ i, g_CurProcChan
	movw	r2, #56800	@ tmp314,
	movw	ip, #:lower16:g_pstTreeFsp	@,
	movt	ip, #:upper16:g_pstTreeFsp	@,
	str	ip, [fp, #-72]	@, %sfp
	mul	r1, r2, r7	@, tmp314, i
	ldr	r3, [ip, #0]	@ g_pstTreeFsp.804, g_pstTreeFsp
	str	r1, [fp, #-80]	@, %sfp
	add	r1, r3, r1	@ D.40089, g_pstTreeFsp.804,
	ldr	ip, [r1, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	add	r5, r0, r5	@ len.3543,, D.40083
	beq	.L660	@,
	movw	r3, #:lower16:s_pFspInst	@ tmp329,
	movt	r3, #:upper16:s_pFspInst	@ tmp329,
	ldr	r9, [r3, r7, asl #2]	@ pFsp, s_pFspInst
	cmp	r9, #0	@ pFsp,
	movne	sl, #0	@ pTreeFs,
	strne	sl, [fp, #-76]	@ pTreeFs, %sfp
	beq	.L661	@,
.L628:
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	r6, [r2, r7, asl #2]	@ pChan, s_pstVfmwChan
	cmp	r6, #0	@ pChan,
	beq	.L629	@,
	add	ip, r7, #32	@ tmp333, i,
	movw	lr, #:lower16:g_ChanCtx	@ tmp332,
	movt	lr, #:upper16:g_ChanCtx	@ tmp332,
	sub	r1, fp, #48	@,,
	sub	r2, fp, #52	@,,
	sub	r3, fp, #56	@,,
	mov	r0, r7	@, i
	ldr	r4, [lr, ip, asl #2]	@ D.40106, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VCTRL_GetChanImgNum	@
	mov	r0, r7	@, i
	bl	VCTRL_GetChanVoQue	@
	mov	r3, r7	@, i
	movw	r2, #:lower16:.LC184	@,
	movt	r2, #:upper16:.LC184	@,
	cmp	r0, #0	@ pstDecQue
	streq	r0, [fp, #-88]	@ pstDecQue, %sfp
	streq	r0, [fp, #-92]	@ pstDecQue, %sfp
	ldrneh	lr, [r0, #8]	@, <variable>.tail
	streq	r0, [fp, #-96]	@ pstDecQue, %sfp
	strne	lr, [fp, #-88]	@, %sfp
	ldrneh	r1, [r0, #4]	@, <variable>.history
	strne	r1, [fp, #-96]	@, %sfp
	ldrneh	r0, [r0, #6]	@, <variable>.head
	strne	r0, [fp, #-92]	@, %sfp
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3543,
	add	r0, r8, r5	@, page, len.3543
	bl	snprintf	@
	sub	r1, r4, #1	@ tmp344, D.40106,
	ldr	r4, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	str	r1, [sp, #0]	@ tmp344,
	movt	r2, #:upper16:.LC132	@,
	movw	r3, #:lower16:.LC185	@,
	movt	r3, #:upper16:.LC185	@,
	add	r5, r0, r5	@ len.3554,, len.3543
	rsb	r1, r5, r4	@, len.3554,
	add	r0, r8, r5	@, page, len.3554
	bl	snprintf	@
	ldr	ip, [r6, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC186	@,
	str	ip, [sp, #0]	@ <variable>.s32IsOpen,
	add	r5, r5, r0	@ len.3559, len.3554,
	rsb	r1, r5, r4	@, len.3559,
	add	r0, r8, r5	@, page, len.3559
	bl	snprintf	@
	ldr	r1, [r6, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC187	@,
	str	r1, [sp, #0]	@ <variable>.s32IsRun,
	add	r5, r5, r0	@ len.3564, len.3559,
	rsb	r1, r5, r4	@, len.3564,
	add	r0, r8, r5	@, page, len.3564
	bl	snprintf	@
	ldr	ip, [r6, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC188	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC188	@,
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	add	r5, r5, r0	@ len.3569, len.3564,
	rsb	r1, r5, r4	@, len.3569,
	add	r0, r8, r5	@, page, len.3569
	bl	snprintf	@
	ldr	r1, [r6, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC189	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC189	@,
	str	r1, [sp, #0]	@ <variable>.eVidStd,
	add	r5, r5, r0	@ len.3574, len.3569,
	rsb	r1, r5, r4	@, len.3574,
	add	r0, r8, r5	@, page, len.3574
	bl	snprintf	@
	ldr	ip, [r6, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC190	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC190	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.s32ChanErrThr,
	add	r5, r5, r0	@ len.3579, len.3574,
	rsb	r1, r5, r4	@, len.3579,
	add	r0, r8, r5	@, page, len.3579
	bl	snprintf	@
	ldr	r1, [r6, #56]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC191	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC191	@,
	str	r1, [sp, #0]	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	add	r5, r5, r0	@ len.3584, len.3579,
	rsb	r1, r5, r4	@, len.3584,
	add	r0, r8, r5	@, page, len.3584
	bl	snprintf	@
	ldr	ip, [r6, #60]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC192	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC192	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.s32DecMode,
	add	r5, r5, r0	@ len.3589, len.3584,
	rsb	r1, r5, r4	@, len.3589,
	add	r0, r8, r5	@, page, len.3589
	bl	snprintf	@
	ldr	r1, [r6, #64]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC193	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC193	@,
	str	r1, [sp, #0]	@ <variable>.stChanCfg.s32DecOrderOutput,
	add	r5, r5, r0	@ len.3594, len.3589,
	rsb	r1, r5, r4	@, len.3594,
	add	r0, r8, r5	@, page, len.3594
	bl	snprintf	@
	ldr	ip, [r6, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC194	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile,
	add	r5, r5, r0	@ len.3599, len.3594,
	rsb	r1, r5, r4	@, len.3599,
	add	r0, r8, r5	@, page, len.3599
	bl	snprintf	@
	ldr	r1, [r6, #44]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC195	@,
	str	r1, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion,
	add	r5, r5, r0	@ len.3604, len.3599,
	rsb	r1, r5, r4	@, len.3604,
	add	r0, r8, r5	@, page, len.3604
	bl	snprintf	@
	ldr	ip, [r6, #40]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC196	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC196	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed,
	add	r5, r5, r0	@ len.3609, len.3604,
	rsb	r1, r5, r4	@, len.3609,
	add	r0, r8, r5	@, page, len.3609
	bl	snprintf	@
	ldr	r1, [r6, #176]	@ <variable>.stChanMem_vdh.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC197	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC197	@,
	str	r1, [sp, #0]	@ <variable>.stChanMem_vdh.PhyAddr,
	add	r5, r5, r0	@ len.3614, len.3609,
	rsb	r1, r5, r4	@, len.3614,
	add	r0, r8, r5	@, page, len.3614
	bl	snprintf	@
	ldr	ip, [r6, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC198	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC198	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	add	r5, r5, r0	@ len.3619, len.3614,
	rsb	r1, r5, r4	@, len.3619,
	add	r0, r8, r5	@, page, len.3619
	bl	snprintf	@
	ldr	r1, [r6, #188]	@ <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC199	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC199	@,
	str	r1, [sp, #0]	@ <variable>.stChanMem_scd.PhyAddr,
	add	r5, r5, r0	@ len.3624, len.3619,
	rsb	r1, r5, r4	@, len.3624,
	add	r0, r8, r5	@, page, len.3624
	bl	snprintf	@
	ldr	ip, [r6, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC200	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC200	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	add	r5, r5, r0	@ len.3629, len.3624,
	rsb	r1, r5, r4	@, len.3629,
	add	r0, r8, r5	@, page, len.3629
	bl	snprintf	@
	ldr	r1, [r6, #244]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC201	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC201	@,
	str	r1, [sp, #0]	@ <variable>.s32SdecMemAddr,
	add	r5, r5, r0	@ len.3634, len.3629,
	rsb	r1, r5, r4	@, len.3634,
	add	r0, r8, r5	@, page, len.3634
	bl	snprintf	@
	ldr	ip, [r6, #248]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC202	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC202	@,
	str	ip, [sp, #0]	@ <variable>.s32SdecMemSize,
	add	r5, r5, r0	@ len.3639, len.3634,
	rsb	r1, r5, r4	@, len.3639,
	add	r0, r8, r5	@, page, len.3639
	bl	snprintf	@
	ldr	r1, [r6, #232]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC203	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC203	@,
	str	r1, [sp, #0]	@ <variable>.s32OffLineDnrMemAddr,
	add	r5, r5, r0	@ len.3644, len.3639,
	rsb	r1, r5, r4	@, len.3644,
	add	r0, r8, r5	@, page, len.3644
	bl	snprintf	@
	ldr	ip, [r6, #236]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC204	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC204	@,
	str	ip, [sp, #0]	@ <variable>.s32OffLineDNRMemSize,
	add	r5, r5, r0	@ len.3649, len.3644,
	rsb	r1, r5, r4	@, len.3649,
	add	r0, r8, r5	@, page, len.3649
	bl	snprintf	@
	ldr	r1, [r6, #224]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC205	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC205	@,
	str	r1, [sp, #0]	@ <variable>.s32VdmChanMemAddr,
	add	r5, r5, r0	@ len.3654, len.3649,
	rsb	r1, r5, r4	@, len.3654,
	add	r0, r8, r5	@, page, len.3654
	bl	snprintf	@
	ldr	ip, [r6, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC206	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC206	@,
	str	ip, [sp, #0]	@ <variable>.s32VdmChanMemSize,
	add	r5, r5, r0	@ len.3659, len.3654,
	rsb	r1, r5, r4	@, len.3659,
	add	r0, r8, r5	@, page, len.3659
	bl	snprintf	@
	ldr	r1, [r6, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	add	r5, r5, r0	@, len.3659,
	str	r5, [fp, #-104]	@, %sfp
	beq	.L662	@,
.L633:
	ldr	r5, [r6, #240]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	ldr	r2, [fp, #-104]	@, %sfp
	ldr	r3, [fp, #-108]	@, %sfp
	add	r0, r8, r2	@, page,
	str	r5, [sp, #0]	@ <variable>.s32ScdChanMemAddr,
	rsb	r1, r2, r3	@,,
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC208	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC208	@,
	bl	snprintf	@
	ldr	ip, [fp, #-104]	@, %sfp
	ldr	r4, [r6, #252]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC209	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC209	@,
	str	r4, [sp, #0]	@ <variable>.s32ScdChanMemSize,
	movw	r4, #:lower16:-858993459	@ tmp527,
	movt	r4, #:upper16:-858993459	@ tmp527,
	add	r5, r0, ip	@ len.3673,,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3673,
	add	r0, r8, r5	@, page, len.3673
	bl	snprintf	@
	ldr	r1, [fp, #-48]	@ RefNum, RefNum
	ldr	ip, [fp, #-52]	@ ReadNum, ReadNum
	movw	r2, #:lower16:.LC210	@,
	movw	r3, #:lower16:.LC211	@,
	movt	r2, #:upper16:.LC210	@,
	str	r1, [sp, #0]	@ RefNum,
	movt	r3, #:upper16:.LC211	@,
	ldr	r1, [fp, #-56]	@ NewNum, NewNum
	str	ip, [sp, #4]	@ ReadNum,
	str	r1, [sp, #8]	@ NewNum,
	add	r5, r5, r0	@ len.3678, len.3673,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3678,
	add	r0, r8, r5	@, page, len.3678
	bl	snprintf	@
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	movw	r2, #:lower16:.LC212	@,
	ldr	lr, [fp, #-108]	@, %sfp
	movt	r2, #:upper16:.LC212	@,
	str	ip, [sp, #0]	@,
	movw	r3, #:lower16:.LC213	@,
	ldr	ip, [fp, #-88]	@, %sfp
	movt	r3, #:upper16:.LC213	@,
	stmib	sp, {r1, ip}	@ phole stm
	add	r5, r5, r0	@ len.3683, len.3678,
	rsb	r1, r5, lr	@, len.3683,
	add	r0, r8, r5	@, page, len.3683
	bl	snprintf	@
	movw	r1, #:lower16:11200520	@ tmp486,
	movt	r1, #:upper16:11200520	@ tmp486,
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC214	@,
	movt	r2, #:upper16:.LC132	@,
	ldr	ip, [r6, r1]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	movt	r3, #:upper16:.LC214	@,
	str	ip, [sp, #0]	@ <variable>.stSynExtraData.s32DecMode,
	add	r5, r5, r0	@ len.3688, len.3683,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3688,
	add	r0, r8, r5	@, page, len.3688
	bl	snprintf	@
	movw	r1, #:lower16:11200524	@ tmp492,
	movt	r1, #:upper16:11200524	@ tmp492,
	ldr	lr, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC215	@,
	ldr	ip, [r6, r1]	@ <variable>.stSynExtraData.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC215	@,
	str	ip, [sp, #0]	@ <variable>.stSynExtraData.s32DecOrderOutput,
	add	r5, r5, r0	@ len.3693, len.3688,
	rsb	r1, r5, lr	@, len.3693,
	add	r0, r8, r5	@, page, len.3693
	bl	snprintf	@
	ldr	r1, [r6, #412]	@ <variable>.stRecentImg.format, <variable>.stRecentImg.format
	ldr	ip, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC216	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC216	@,
	str	r1, [sp, #0]	@ <variable>.stRecentImg.format,
	add	r5, r5, r0	@ len.3698, len.3693,
	rsb	r1, r5, ip	@, len.3698,
	add	r0, r8, r5	@, page, len.3698
	bl	snprintf	@
	ldr	r1, [r6, #588]	@ <variable>.stRecentImg.eFramePackingType, <variable>.stRecentImg.eFramePackingType
	movw	r2, #:lower16:.LC137	@,
	movw	r3, #:lower16:.LC217	@,
	movt	r2, #:upper16:.LC137	@,
	movt	r3, #:upper16:.LC217	@,
	str	r1, [sp, #0]	@ <variable>.stRecentImg.eFramePackingType,
	add	r5, r5, r0	@ len.3703, len.3698,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3703,
	add	r0, r8, r5	@, page, len.3703
	bl	snprintf	@
	ldr	ip, [r6, #440]	@ D.40183, <variable>.stRecentImg.frame_rate
	movw	r2, #:lower16:.LC218	@,
	movw	r3, #:lower16:.LC219	@,
	movt	r2, #:upper16:.LC218	@,
	movt	r3, #:upper16:.LC219	@,
	mov	r1, ip, asl #22	@ tmp509, D.40183,
	mov	r6, ip, lsr #10	@ tmp508, D.40183,
	str	r6, [sp, #0]	@ tmp508,
	mov	ip, #100	@ tmp512,
	mov	r6, r1, lsr #22	@ tmp509, tmp509,
	mul	r1, ip, r6	@ tmp511, tmp512, tmp509
	add	ip, r1, #512	@ tmp513, tmp511,
	mov	r6, ip, lsr #10	@ tmp514, tmp513,
	str	r6, [sp, #4]	@ tmp514,
	add	r6, r5, r0	@ len.3708, len.3703,
	ldr	r5, [fp, #-108]	@, %sfp
	add	r0, r8, r6	@, page, len.3708
	rsb	r1, r6, r5	@, len.3708,
	bl	snprintf	@
	ldr	r3, [fp, #-64]	@, %sfp
	mov	r2, #300	@ tmp518,
	mla	r5, r2, r7, r3	@ tmp519, tmp518, i,
	movw	r2, #:lower16:.LC220	@,
	movw	r3, #:lower16:.LC221	@,
	movt	r2, #:upper16:.LC220	@,
	movt	r3, #:upper16:.LC221	@,
	ldr	ip, [r5, #192]	@ D.40190, <variable>.u32FrFrameRate
	umull	lr, r1, r4, ip	@, tmp526, tmp527, D.40190
	mov	lr, r1, lsr #3	@ tmp525, tmp526,
	str	lr, [sp, #0]	@ tmp525,
	add	r1, lr, lr, asl #2	@, tmp533, tmp525, tmp525,
	sub	lr, ip, r1, asl #1	@ tmp535, D.40190, tmp533,
	str	lr, [sp, #4]	@ tmp535,
	add	r6, r6, r0	@ len.3714, len.3708,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r6, r0	@, len.3714,
	add	r0, r8, r6	@, page, len.3714
	bl	snprintf	@
	ldr	r3, [fp, #-64]	@, %sfp
	movw	r2, #:lower16:.LC222	@,
	movt	r2, #:upper16:.LC222	@,
	ldr	ip, [r3, #120]	@ D.40196, <variable>.u32VaVdmLoad
	movw	r3, #:lower16:.LC169	@,
	movt	r3, #:upper16:.LC169	@,
	umull	lr, r1, r4, ip	@, tmp542, tmp527, D.40196
	mov	r4, r1, lsr #3	@ tmp541, tmp542,
	str	r4, [sp, #0]	@ tmp541,
	add	r1, r4, r4, asl #2	@, tmp549, tmp541, tmp541,
	sub	lr, ip, r1, asl #1	@ tmp551, D.40196, tmp549,
	str	lr, [sp, #4]	@ tmp551,
	add	r6, r6, r0	@ len.3719, len.3714,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r6, r0	@, len.3719,
	add	r0, r8, r6	@, page, len.3719
	bl	snprintf	@
	ldr	r4, [r5, #196]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC223	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC223	@,
	str	r4, [sp, #0]	@ <variable>.u32SkipFind,
	ldr	r4, [fp, #-108]	@, %sfp
	add	r6, r6, r0	@ len.3725, len.3719,
	rsb	r1, r6, r4	@, len.3725,
	add	r0, r8, r6	@, page, len.3725
	bl	snprintf	@
	ldr	r1, [r5, #200]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC224	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC224	@,
	str	r1, [sp, #0]	@ <variable>.u32SkipDiscard,
	add	r5, r6, r0	@ len.3730, len.3725,
	rsb	r1, r5, r4	@, len.3730,
	add	r0, r8, r5	@, page, len.3730
	bl	snprintf	@
	ldr	ip, [fp, #-72]	@, %sfp
	ldr	lr, [fp, #-80]	@, %sfp
	ldr	r2, [ip, #0]	@ g_pstTreeFsp, g_pstTreeFsp
	add	r3, r2, lr	@ tmp577, g_pstTreeFsp,
	ldr	r1, [r3, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	add	r5, r5, r0	@ len.3543, len.3730,
	beq	.L663	@,
	cmp	r9, #0	@ pFsp,
	beq	.L664	@,
	ldrsb	r6, [r9, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	add	r0, r8, r5	@, page, len.3543
	ldr	r7, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC226	@,
	movw	r3, #:lower16:.LC240	@,
	movt	r2, #:upper16:.LC226	@,
	rsb	r1, r5, r7	@, len.3543,
	movt	r3, #:upper16:.LC240	@,
	str	r6, [sp, #0]	@ <variable>.stInstCfg.s32DispLoopEnable,
	bl	snprintf	@
	ldr	r4, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	ldr	sl, [r9, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movt	r2, #:upper16:.LC132	@,
	movw	r3, #:lower16:.LC241	@,
	movt	r3, #:upper16:.LC241	@,
	mov	r6, r9	@ ivtmp.3539, pFsp
	mov	r7, #0	@ ivtmp.3535,
	str	sl, [sp, #0]	@ <variable>.stInstCfg.s32DecFsWidth,
	mov	sl, #1	@ ivtmp.3536,
	add	r5, r0, r5	@ len.3814,, len.3543
	rsb	r1, r5, r4	@, len.3814,
	add	r0, r8, r5	@, page, len.3814
	bl	snprintf	@
	ldr	ip, [r9, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC242	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC242	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	add	r5, r5, r0	@ len.3819, len.3814,
	rsb	r1, r5, r4	@, len.3819,
	add	r0, r8, r5	@, page, len.3819
	bl	snprintf	@
	ldr	r1, [r9, #72]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC243	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC243	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DispFsWidth,
	add	r5, r5, r0	@ len.3824, len.3819,
	rsb	r1, r5, r4	@, len.3824,
	add	r0, r8, r5	@, page, len.3824
	bl	snprintf	@
	ldr	ip, [r9, #76]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC244	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC244	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsHeight,
	add	r5, r5, r0	@ len.3829, len.3824,
	rsb	r1, r5, r4	@, len.3829,
	add	r0, r8, r5	@, page, len.3829
	bl	snprintf	@
	ldrsb	r1, [r9, #49]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC245	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC245	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDecFsNum,
	add	r5, r5, r0	@ len.3834, len.3829,
	rsb	r1, r5, r4	@, len.3834,
	add	r0, r8, r5	@, page, len.3834
	bl	snprintf	@
	ldrsb	ip, [r9, #51]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC246	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC246	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDispFsNum,
	add	r5, r5, r0	@ len.3839, len.3834,
	rsb	r1, r5, r4	@, len.3839,
	add	r0, r8, r5	@, page, len.3839
	bl	snprintf	@
	mov	r1, #64	@ tmp715,
	movw	r2, #:lower16:.LC132	@,
	str	r1, [sp, #0]	@ tmp715,
	movt	r2, #:upper16:.LC132	@,
	movw	r3, #:lower16:.LC247	@,
	movt	r3, #:upper16:.LC247	@,
	add	r5, r5, r0	@ len.3844, len.3839,
	rsb	r1, r5, r4	@, len.3844,
	add	r0, r8, r5	@, page, len.3844
	bl	snprintf	@
	ldr	r4, [fp, #-108]	@ count, %sfp
	add	r5, r5, r0	@ len.3541, len.3844,
	b	.L643	@
.L667:
	tst	r7, #15	@ ivtmp.3535,
	beq	.L665	@,
.L645:
	ldrsb	lr, [r6, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	add	r0, r8, r5	@, page, len.3541
	ldrsb	r3, [r6, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	rsb	r1, r5, r4	@, len.3541, count
	movw	r2, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC237	@,
	str	lr, [sp, #0]	@ <variable>.s32DispState,
	bl	snprintf	@
	cmp	sl, #63	@ ivtmp.3536,
	add	r5, r5, r0	@ len.3541, len.3541,
	bgt	.L666	@,
.L646:
	add	r7, r7, #1	@ ivtmp.3535, ivtmp.3535,
	add	sl, sl, #1	@ ivtmp.3536, ivtmp.3536,
	add	r6, r6, #496	@ ivtmp.3539, ivtmp.3539,
.L643:
	cmp	r7, #0	@ ivtmp.3535,
	movw	r2, #:lower16:.LC237	@,
	add	r0, r8, r5	@, page, len.3541
	rsb	r1, r5, r4	@, len.3541, count
	movt	r2, #:upper16:.LC237	@,
	bne	.L667	@,
	ldrsb	ip, [r6, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	ldrsb	r3, [r6, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	str	ip, [sp, #0]	@ <variable>.s32DispState,
	bl	snprintf	@
	add	r5, r5, r0	@ len.3541, len.3541,
	b	.L646	@
.L660:
	add	sl, r3, #905216	@, g_pstTreeFsp.804,
	add	r0, sl, #3584	@,,
	bl	memcpy	@
	ldr	r4, [fp, #-72]	@, %sfp
	ldr	ip, [r4, #0]	@ g_pstTreeFsp.3546, g_pstTreeFsp
	ldr	r4, [fp, #-80]	@, %sfp
	add	r1, ip, #905216	@, g_pstTreeFsp.3546,
	add	sl, ip, r4	@ temp.3547, g_pstTreeFsp.3546,
	add	r0, r1, #3584	@,,
	str	r0, [fp, #-76]	@, %sfp
	ldrsb	r3, [sl, #1]	@ D.40095, <variable>.s8LevelID
	cmp	r3, #1	@ D.40095,
	beq	.L626	@,
	cmp	r3, #2	@ D.40095,
	beq	.L668	@,
	movw	r1, #:lower16:.LC182	@,
	movw	r2, #7990	@,
	movt	r1, #:upper16:.LC182	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L629:
	mov	r0, r5	@, len.3543
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L665:
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	add	r5, r5, r0	@ len.3541, len.3541,
	b	.L645	@
.L666:
	str	r4, [fp, #-108]	@ count, %sfp
	add	r0, r8, r5	@, page, len.3541
	ldrsb	ip, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	rsb	r1, r5, r4	@, len.3541, count
	movw	r2, #:lower16:.LC248	@,
	movw	r3, #:lower16:.LC249	@,
	movt	r2, #:upper16:.LC248	@,
	movt	r3, #:upper16:.LC249	@,
	str	ip, [sp, #0]	@ <variable>.s32DecFsNum,
	bl	snprintf	@
	ldrsb	r3, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	add	r5, r0, r5	@ len.3724,, len.3541
	ble	.L647	@,
	add	r0, r9, #31744	@ ivtmp.3531, pFsp,
	ldr	r4, [fp, #-108]	@ count, %sfp
	add	r6, r0, #128	@ ivtmp.3531, ivtmp.3531,
	mov	r7, #0	@ j.3548,
.L648:
	ldrsb	lr, [r6, #2]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r5, r4	@, len.3724, count
	ldrsb	r3, [r6, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r8, r5	@, page, len.3724
	movw	r2, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC237	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldrsb	r2, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #1	@ j.3548, j.3548,
	add	r6, r6, #48	@ ivtmp.3531, ivtmp.3531,
	cmp	r2, r7	@ <variable>.s32DecFsNum, j.3548
	add	r5, r5, r0	@ len.3724, len.3724,
	ble	.L669	@,
	tst	r7, #15	@ j.3548,
	bne	.L648	@,
	add	r0, r8, r5	@, page, len.3724
	rsb	r1, r5, r4	@, len.3724, count
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	add	r5, r5, r0	@ len.3724, len.3724,
	b	.L648	@
.L669:
	str	r4, [fp, #-108]	@ count, %sfp
.L647:
	ldr	r3, [fp, #-108]	@, %sfp
	add	r0, r8, r5	@, page, len.3724
	ldrsb	r6, [r9, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	movw	r2, #:lower16:.LC226	@,
	rsb	r1, r5, r3	@, len.3724,
	movt	r2, #:upper16:.LC226	@,
	movw	r3, #:lower16:.LC250	@,
	movt	r3, #:upper16:.LC250	@,
	str	r6, [sp, #0]	@ <variable>.s32DispFsNum,
	bl	snprintf	@
	ldrsb	r4, [r9, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r4, #0	@ <variable>.s32DispFsNum,
	add	r5, r0, r5	@ len.3736,, len.3724
	ble	.L651	@,
	add	r1, r9, #34816	@ ivtmp.3525, pFsp,
	ldr	r4, [fp, #-108]	@ count, %sfp
	add	r6, r1, #128	@ ivtmp.3525, ivtmp.3525,
	mov	r7, #0	@ j.3549,
.L652:
	ldrsb	lr, [r6, #2]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r5, r4	@, len.3736, count
	ldrsb	r3, [r6, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r8, r5	@, page, len.3736
	movw	r2, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC237	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldrsb	ip, [r9, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r7, r7, #1	@ j.3549, j.3549,
	add	r6, r6, #48	@ ivtmp.3525, ivtmp.3525,
	cmp	ip, r7	@ <variable>.s32DispFsNum, j.3549
	add	r5, r5, r0	@ len.3736, len.3736,
	ble	.L670	@,
	tst	r7, #15	@ j.3549,
	bne	.L652	@,
	add	r0, r8, r5	@, page, len.3736
	rsb	r1, r5, r4	@, len.3736, count
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	add	r5, r5, r0	@ len.3736, len.3736,
	b	.L652	@
.L670:
	str	r4, [fp, #-108]	@ count, %sfp
.L651:
	ldrsb	r6, [r9, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	movw	r2, #:lower16:.LC226	@,
	ldr	r0, [fp, #-108]	@, %sfp
	movt	r2, #:upper16:.LC226	@,
	movw	r3, #:lower16:.LC251	@,
	movt	r3, #:upper16:.LC251	@,
	rsb	r1, r5, r0	@, len.3736,
	add	r0, r8, r5	@, page, len.3736
	str	r6, [sp, #0]	@ <variable>.s32PmvNum,
	bl	snprintf	@
	ldrsb	r4, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r2, #:lower16:.LC226	@,
	movw	r3, #:lower16:.LC249	@,
	movt	r2, #:upper16:.LC226	@,
	movt	r3, #:upper16:.LC249	@,
	str	r4, [sp, #0]	@ <variable>.s32DecFsNum,
	ldr	r4, [fp, #-108]	@, %sfp
	add	r5, r0, r5	@ len.3893,, len.3736
	add	r0, r8, r5	@, page, len.3893
	rsb	r1, r5, r4	@, len.3893,
	bl	snprintf	@
	add	r6, r5, r0	@ len.3542, len.3893,
.L639:
	ldr	lr, [fp, #-108]	@, %sfp
	add	r0, r8, r6	@, page, len.3542
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	rsb	r1, r6, lr	@, len.3542,
	bl	snprintf	@
	ldr	ip, [fp, #-84]	@, %sfp
	mov	r1, #0	@ tmp772,
	mov	r2, #1	@ tmp773,
	str	r1, [ip, #0]	@ tmp772,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp773,* eof
	add	r5, r0, r6	@ len.3543,, len.3542
	b	.L629	@
.L663:
	ldr	r0, [fp, #-76]	@, %sfp
	cmp	r0, #0	@,
	beq	.L671	@,
	ldr	r3, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC226	@,
	ldr	r0, [fp, #-108]	@, %sfp
	movt	r2, #:upper16:.LC226	@,
	ldrsb	lr, [r3, #116]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	rsb	r1, r5, r0	@, len.3543,
	movw	r3, #:lower16:.LC227	@,
	add	r0, r8, r5	@, page, len.3543
	movt	r3, #:upper16:.LC227	@,
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32DispLoopEnable,
	bl	snprintf	@
	ldr	ip, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC228	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC228	@,
	ldr	r6, [ip, #128]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r6, [sp, #0]	@ <variable>.stInstCfg.s32DecFsWidth,
	ldr	r6, [fp, #-108]	@, %sfp
	add	r4, r0, r5	@ len.3743,, len.3543
	rsb	r1, r4, r6	@, len.3743,
	add	r0, r8, r4	@, page, len.3743
	bl	snprintf	@
	ldr	r2, [fp, #-76]	@, %sfp
	movw	r3, #:lower16:.LC229	@,
	movt	r3, #:upper16:.LC229	@,
	ldr	r1, [r2, #132]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	add	r5, r4, r0	@ len.3748, len.3743,
	rsb	r1, r5, r6	@, len.3748,
	add	r0, r8, r5	@, page, len.3748
	bl	snprintf	@
	ldr	lr, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC230	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC230	@,
	ldr	r1, [lr, #144]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DispFsWidth,
	add	r4, r5, r0	@ len.3753, len.3748,
	rsb	r1, r4, r6	@, len.3753,
	add	r0, r8, r4	@, page, len.3753
	bl	snprintf	@
	ldr	r3, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	ldr	ip, [r3, #148]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	movw	r3, #:lower16:.LC231	@,
	movt	r3, #:upper16:.LC231	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsHeight,
	add	r5, r4, r0	@ len.3758, len.3753,
	rsb	r1, r5, r6	@, len.3758,
	add	r0, r8, r5	@, page, len.3758
	bl	snprintf	@
	ldr	r2, [fp, #-76]	@, %sfp
	movw	r3, #:lower16:.LC232	@,
	movt	r3, #:upper16:.LC232	@,
	ldrsb	r1, [r2, #121]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDecFsNum,
	add	r5, r5, r0	@ len.3763, len.3758,
	rsb	r1, r5, r6	@, len.3763,
	add	r0, r8, r5	@, page, len.3763
	bl	snprintf	@
	ldr	r6, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC233	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC233	@,
	ldrsb	r4, [r6, #123]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	str	r4, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDispFsNum,
	add	r5, r5, r0	@ len.3768, len.3763,
	ldr	r0, [fp, #-108]	@, %sfp
	rsb	r1, r5, r0	@, len.3768,
	add	r0, r8, r5	@, page, len.3768
	bl	snprintf	@
	ldrsb	ip, [r6, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	ldr	lr, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC132	@,
	movw	r3, #:lower16:.LC234	@,
	movt	r2, #:upper16:.LC132	@,
	movt	r3, #:upper16:.LC234	@,
	str	ip, [sp, #0]	@ <variable>.s8LevelID,
	add	r4, r5, r0	@ len.3773, len.3768,
	rsb	r1, r4, lr	@, len.3773,
	add	r0, r8, r4	@, page, len.3773
	bl	snprintf	@
	ldr	r1, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	movw	r2, #:lower16:.LC235	@,
	movw	r3, #:lower16:.LC236	@,
	movt	r2, #:upper16:.LC235	@,
	movt	r3, #:upper16:.LC236	@,
	str	r1, [sp, #0]	@ <variable>.s32DispFsNum,
	add	r5, r4, r0	@ len.3778, len.3773,
	ldr	r4, [fp, #-108]	@, %sfp
	add	r0, r8, r5	@, page, len.3778
	rsb	r1, r5, r4	@, len.3778,
	bl	snprintf	@
	ldr	r6, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r6, #0	@ <variable>.s32DispFsNum,
	add	r6, r5, r0	@ len.3713, len.3778,
	ble	.L636	@,
	add	r7, sl, #6144	@ ivtmp.3519, pTreeFs,
	movw	r9, #:lower16:1717986919	@ tmp792,
	add	r7, r7, #56	@ ivtmp.3519, ivtmp.3519,
	movt	r9, #:upper16:1717986919	@ tmp792,
	mov	r5, #0	@ j.3793,
	ldr	r4, [fp, #-108]	@ count, %sfp
	b	.L638	@
.L637:
	ldrsb	ip, [r7, #2]	@ <variable>.DispState, <variable>.DispState
	add	r0, r8, r6	@, page, len.3713
	ldrsb	r3, [r7, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	rsb	r1, r6, r4	@, len.3713, count
	movw	r2, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC237	@,
	str	ip, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldr	r3, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r7, r7, #48	@ ivtmp.3519, ivtmp.3519,
	cmp	r3, r5	@ <variable>.s32DispFsNum, j.3793
	add	r6, r6, r0	@ len.3713, len.3713,
	ble	.L672	@,
.L638:
	smull	ip, r2, r9, r5	@, tmp632, tmp792, j.3793
	mov	lr, r5, asr #31	@ tmp635, j.3793,
	rsb	ip, lr, r2, asr #2	@, tmp631, tmp635, tmp632,
	add	r1, ip, ip, asl #2	@, tmp638, tmp631, tmp631,
	cmp	r5, r1, asl #1	@ j.3793, tmp638,
	add	r5, r5, #1	@ j.3793, j.3793,
	bne	.L637	@,
	rsb	r1, r6, r4	@, len.3713, count
	add	r0, r8, r6	@, page, len.3713
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3713, len.3713,
	b	.L637	@
.L664:
	mov	r0, r9	@, pFsp
	mov	r3, r7	@, i
	movw	r1, #:lower16:.LC183	@,
	movw	r2, #8138	@,
	movt	r1, #:upper16:.LC183	@,
	bl	dprint_vfmw	@
	b	.L629	@
.L672:
	str	r4, [fp, #-108]	@ count, %sfp
.L636:
	ldr	ip, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r8, r6	@, page, len.3713
	ldr	lr, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:.LC238	@,
	movw	r3, #:lower16:.LC239	@,
	movt	r2, #:upper16:.LC238	@,
	rsb	r1, r6, lr	@, len.3713,
	movt	r3, #:upper16:.LC239	@,
	str	ip, [sp, #0]	@ <variable>.s32DecFsNum,
	bl	snprintf	@
	ldr	r5, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r5, #0	@ <variable>.s32DecFsNum,
	add	r6, r0, r6	@ len.3542,, len.3713
	ble	.L639	@,
	movw	r9, #:lower16:1717986919	@ tmp789,
	mov	r7, sl	@ ivtmp.3515, pTreeFs
	movt	r9, #:upper16:1717986919	@ tmp789,
	mov	r5, #0	@ j,
	ldr	r4, [fp, #-108]	@ count, %sfp
	b	.L641	@
.L640:
	ldrsb	lr, [r7, #58]	@ <variable>.DispState, <variable>.DispState
	add	r0, r8, r6	@, page, len.3542
	ldrsb	r3, [r7, #56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	rsb	r1, r6, r4	@, len.3542, count
	movw	r2, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC237	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldr	ip, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #48	@ ivtmp.3515, ivtmp.3515,
	cmp	ip, r5	@ <variable>.s32DecFsNum, j
	add	r6, r6, r0	@ len.3542, len.3542,
	ble	.L673	@,
.L641:
	smull	r0, r2, r9, r5	@, tmp657, tmp789, j
	mov	r3, r5, asr #31	@ tmp660, j,
	rsb	r1, r3, r2, asr #2	@, tmp656, tmp660, tmp657,
	add	r0, r1, r1, asl #2	@, tmp663, tmp656, tmp656,
	cmp	r5, r0, asl #1	@ j, tmp663,
	add	r5, r5, #1	@ j, j,
	bne	.L640	@,
	rsb	r1, r6, r4	@, len.3542, count
	add	r0, r8, r6	@, page, len.3542
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3542, len.3542,
	b	.L640	@
.L673:
	str	r4, [fp, #-108]	@ count, %sfp
	b	.L639	@
.L662:
	ldr	ip, [r6, #900]	@ <variable>.stRecentUsrdecFrame.s32YWidth, <variable>.stRecentUsrdecFrame.s32YWidth
	rsb	r1, r5, r4	@,,
	ldr	r3, [r6, #880]	@ <variable>.stRecentUsrdecFrame.enFmt, <variable>.stRecentUsrdecFrame.enFmt
	add	r0, r8, r5	@, page,
	movw	r2, #:lower16:.LC207	@,
	movt	r2, #:upper16:.LC207	@,
	str	ip, [sp, #0]	@ <variable>.stRecentUsrdecFrame.s32YWidth,
	mov	ip, #888	@ tmp459,
	ldr	lr, [r6, #904]	@ <variable>.stRecentUsrdecFrame.s32YHeight, <variable>.stRecentUsrdecFrame.s32YHeight
	str	lr, [sp, #4]	@ <variable>.stRecentUsrdecFrame.s32YHeight,
	ldr	r4, [r6, #912]	@ <variable>.stRecentUsrdecFrame.s32LumaStride, <variable>.stRecentUsrdecFrame.s32LumaStride
	str	r4, [sp, #8]	@ <variable>.stRecentUsrdecFrame.s32LumaStride,
	ldr	r5, [r6, #924]	@ <variable>.stRecentUsrdecFrame.s32ChromStride, <variable>.stRecentUsrdecFrame.s32ChromStride
	str	r5, [sp, #12]	@ <variable>.stRecentUsrdecFrame.s32ChromStride,
	ldrd	r4, [r6, ip]	@, pChan, tmp459
	strd	r4, [sp, #16]	@,,
	bl	snprintf	@
	ldr	r2, [fp, #-104]	@, %sfp
	add	r3, r2, r0	@,,
	str	r3, [fp, #-104]	@, %sfp
	b	.L633	@
.L671:
	movw	r1, #:lower16:.LC225	@,
	ldr	r2, .L674	@,
	movt	r1, #:upper16:.LC225	@,
	movw	r3, #8085	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L629	@
.L668:
	add	lr, sl, #44288	@ pTreeFs, temp.3547,
	mov	r9, #0	@ pFsp,
	add	sl, lr, #84	@ pTreeFs, pTreeFs,
	b	.L628	@
.L626:
	add	r6, sl, #31744	@ pTreeFs, temp.3547,
	mov	r9, #0	@ pFsp,
	add	sl, r6, #236	@ pTreeFs, pTreeFs,
	b	.L628	@
.L661:
	mov	r0, r9	@, pFsp
	mov	r3, r7	@, i
	movw	r1, #:lower16:.LC183	@,
	movw	r2, #8003	@,
	movt	r1, #:upper16:.LC183	@,
	bl	dprint_vfmw	@
	b	.L629	@
.L675:
	.align	2
.L674:
	.word	.LANCHOR1+72
	.fnend
	.size	vfmw_read_proc_dec, .-vfmw_read_proc_dec
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
.LFB1407:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L677	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp147,
	movt	r2, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r5, [r2, r0, asl #2]	@ D.37379, s_pstVfmwChan
	cmp	r5, #0	@ D.37379,
	beq	.L677	@,
	ldr	r3, [r5, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	beq	.L697	@,
.L680:
	mov	r4, #0	@ pDecParam,
.L679:
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L677:
	mov	r3, r0	@, ChanId
	movw	r2, #3910	@,
	mov	r4, #0	@ pDecParam,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L697:
	ldr	r0, [r5, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #1	@ <variable>.s32IsRun,
	bne	.L680	@,
	ldr	r1, [r5, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L680	@
.L693:
	.word	.L692
	.word	.L696
	.word	.L684
	.word	.L696
	.word	.L680
	.word	.L696
	.word	.L696
	.word	.L680
	.word	.L696
	.word	.L696
	.word	.L690
	.word	.L690
	.word	.L690
	.word	.L696
	.word	.L680
	.word	.L692
.L690:
	ldr	r4, [r2, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r4, #1	@ g_VdmCharacter,
	beq	.L680	@,
.L696:
	ldr	r4, [r5, #956]	@ pDecParam,
.L694:
	cmp	r4, #0	@ pDecParam,
	beq	.L679	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #32]	@, <variable>.u32timeLastDecParamReady
	b	.L679	@
.L692:
	ldr	r4, [r5, #1312]	@ pDecParam,
	b	.L694	@
.L684:
	ldr	r4, [r5, #1988]	@ pDecParam, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	b	.L694	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1408:
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
	cmp	r0, #15	@ ChanId,
	mov	r2, r0	@ ChanId, ChanId
	bhi	.L699	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, r0, asl #2]	@ D.37406, s_pstVfmwChan
	cmp	r3, #0	@ D.37406,
	beq	.L699	@,
	ldr	r1, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L702	@,
	ldr	r5, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	beq	.L703	@,
.L702:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC253	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.37408,
.L701:
	mov	r0, r3	@, D.37408
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L699:
	mov	r3, r2	@, ChanId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC252	@,
	movw	r2, #4014	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.37408,
	b	.L701	@
.L703:
	str	r0, [fp, #-32]	@ tmp2,
	bl	VCTRL_GetDecParam	@
	ldr	r2, [fp, #-32]	@,
	subs	r6, r0, #0	@ pDecParam,
	beq	.L709	@,
	ldr	r0, [r4, r2, asl #2]	@ tmp154, s_pstVfmwChan
	mov	ip, #0	@ tmp155,
	mov	r3, ip	@ D.37408, tmp155
	str	ip, [r0, #736]	@ tmp155, <variable>.s32CountNoDecparamFlag
	ldr	r2, [r4, r2, asl #2]	@ tmp157, s_pstVfmwChan
	str	ip, [r2, #740]	@ tmp155, <variable>.u32NoDecparamStartTime
	b	.L701	@
.L709:
	ldr	r3, [r4, r2, asl #2]	@ temp.3960, s_pstVfmwChan
	ldr	r7, [r3, #736]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r7, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L710	@,
	str	r2, [fp, #-32]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [fp, #-32]	@,
	ldr	r3, [r4, r2, asl #2]	@ temp.3964, s_pstVfmwChan
	ldr	r1, [r3, #740]	@ D.37429, <variable>.u32NoDecparamStartTime
	cmp	r0, r1	@ tmp, D.37429
	bls	.L706	@,
	rsb	lr, r1, r0	@ tmp160, D.37429, tmp
	cmp	lr, #40	@ tmp160,
	movls	r3, r6	@ D.37408, pDecParam
	bls	.L701	@,
.L706:
	str	r6, [r3, #736]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r5	@ D.37408, <variable>.s32IsRun
	ldr	r1, [r4, r2, asl #2]	@ tmp167, s_pstVfmwChan
	str	r6, [r1, #740]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L701	@
.L710:
	str	r5, [r3, #736]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r2, asl #2]	@ temp.3961, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r7	@ D.37408, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #740]	@, <variable>.u32NoDecparamStartTime
	b	.L701	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1383:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r1, #0	@ pstChanState, pstChanState
	mov	r5, r0	@ ChanID, ChanID
	beq	.L717	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp202,
	movt	r6, #:upper16:.LANCHOR0	@ tmp202,
	mov	r0, r4	@, pstChanState
	mov	r1, #104	@,
	mov	r7, #0	@ tmp142,
	str	r7, [fp, #-40]	@ tmp142, RefNum
	str	r7, [fp, #-44]	@ tmp142, ReadNum
	str	r7, [fp, #-48]	@ tmp142, NewNum
	bl	__memzero	@
	ldr	r3, [r6, r5, asl #2]	@ D.35973, s_pstVfmwChan
	cmp	r3, r7	@ D.35973,
	beq	.L717	@,
	movw	r1, #:lower16:11200908	@,
	movt	r1, #:upper16:11200908	@,
	add	r1, r3, r1	@, D.35973,
	mov	r0, r4	@, pstChanState
	mov	r2, #104	@,
	bl	memcpy	@
	ldr	r0, [r6, r5, asl #2]	@ temp.4001, s_pstVfmwChan
	movw	r3, #:lower16:11381357	@ tmp153,
	movt	r3, #:upper16:11381357	@ tmp153,
	ldrsb	lr, [r0, r3]	@ D.35981, <variable>.FspInst.s32DecFsNum
	cmp	lr, r7	@ D.35981,
	ble	.L714	@,
	movw	r1, #:lower16:11413210	@ tmp161,
	movt	r1, #:upper16:11413210	@ tmp161,
	add	r3, r0, r1	@ tmp161, temp.4001, tmp161
	add	lr, lr, lr, asl #1	@, tmp158, D.35981, D.35981,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	mov	lr, lr, asl #4	@ D.43981, tmp158,
	sub	ip, lr, #48	@ tmp208, D.43981,
	cmp	r2, #3	@ <variable>.DispState,
	ubfx	r2, ip, #4, #1	@ tmp212, tmp208,,
	beq	.L730	@,
.L719:
	mov	r3, #48	@ ivtmp.3996,
	cmp	r3, lr	@ ivtmp.3996, D.43981
	beq	.L714	@,
	cmp	r2, #0	@ tmp212,
	beq	.L716	@,
	movw	ip, #:lower16:11413258	@ tmp227,
	movt	ip, #:upper16:11413258	@ tmp227,
	add	r2, r0, ip	@ tmp227, temp.4001, tmp227
	add	r3, r3, #48	@ ivtmp.3996, ivtmp.3996,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, lr	@ ivtmp.3996, D.43981
	bne	.L716	@,
	b	.L714	@
.L724:
	add	r3, r1, #48	@ ivtmp.3996, tmp213,
	cmp	r3, lr	@ ivtmp.3996, D.43981
	beq	.L714	@,
.L716:
	movw	r2, #:lower16:11413210	@ tmp218,
	movt	r2, #:upper16:11413210	@ tmp218,
	add	r1, r3, #48	@ tmp213, ivtmp.3996,
	add	r8, r0, r3	@ tmp216, temp.4001, ivtmp.3996
	add	ip, r0, r1	@ tmp221, temp.4001, tmp213
	mov	r3, r2	@ tmp223, tmp218
	add	r2, r8, r2	@ tmp218, tmp216, tmp218
	add	r3, ip, r3	@ tmp223, tmp221, tmp223
	ldrsb	r2, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	ip, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	ip, #3	@ <variable>.DispState,
	bne	.L724	@,
	add	r3, r1, #48	@ ivtmp.3996, tmp213,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, lr	@ ivtmp.3996, D.43981
	bne	.L716	@,
.L714:
	str	r7, [r4, #88]	@ prephitmp.3981, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:11381357	@ tmp166,
	ldr	lr, [r6, r5, asl #2]	@ tmp165, s_pstVfmwChan
	movt	ip, #:upper16:11381357	@ tmp166,
	sub	r2, fp, #44	@,,
	sub	r3, fp, #48	@,,
	mov	r0, r5	@, ChanID
	sub	r1, fp, #40	@,,
	ldrsb	ip, [lr, ip]	@ <variable>.FspInst.s32DecFsNum, <variable>.FspInst.s32DecFsNum
	str	ip, [r4, #96]	@ <variable>.FspInst.s32DecFsNum, <variable>.total_disp_frame_num
	bl	VCTRL_GetChanImgNum	@
	mov	r0, #300	@ tmp177,
	mla	r3, r0, r5, r6	@ tmp178, tmp177, ChanID, tmp202
	ldr	ip, [fp, #-48]	@ NewNum, NewNum
	ldr	r2, [fp, #-44]	@ ReadNum, ReadNum
	sub	r1, fp, #96	@,,
	mov	r0, r5	@, ChanID
	add	r2, ip, r2	@ tmp173, NewNum, ReadNum
	str	r2, [r4, #52]	@ tmp173, <variable>.decoded_1d_frame_num
	ldr	ip, [r3, #204]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	ip, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	r2, [r3, #192]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	r2, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	ip, [fp, #-80]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	sub	r1, fp, #72	@,,
	mov	r0, r5	@, ChanID
	str	ip, [r4, #56]	@ SmInstInfo.TotalSegSize, <variable>.buffered_stream_size
	ldr	r3, [fp, #-88]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	str	r3, [r4, #60]	@ SmInstInfo.SegNum, <variable>.buffered_stream_num
	bl	SM_GetInfo	@
	ldr	r1, [fp, #-52]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movw	ip, #16816	@ tmp196,
	cmp	r1, #10	@ ScdInstInfo.numReadSegFail,
	movle	r0, #0	@, tmp193
	movgt	r0, #1	@, tmp193
	str	r0, [r4, #84]	@ tmp193, <variable>.stream_not_enough
	ldr	r2, [r6, r5, asl #2]	@ tmp195, s_pstVfmwChan
	ldrb	r3, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	and	r1, r3, #1	@ tmp200, tmp198,
	add	r0, r1, #1	@ tmp201, tmp200,
	str	r0, [r4, #92]	@ tmp201, <variable>.mpeg4_shorthead
.L717:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L730:
	mov	r7, #1	@ s32DecodedFrameNum,
	b	.L719	@
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1430:
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
	ldr	r5, [r0, #8]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #0]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L732	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp157,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp157,
	ldr	r3, [r3, #32]	@ D.38560, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.38560,
	beq	.L733	@,
	mov	r0, #0	@,
	blx	r3	@ D.38560
.L734:
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #12	@,
	bl	__memzero	@
.L732:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #20]	@ Length.4029, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #12]	@ PhyAddr.4027, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.4029,
	ldr	r6, [r4, #16]	@ VirAddr.4028, <variable>.stScdCmnMem.VirAddr
	bne	.L742	@,
.L735:
	mov	r0, r7	@, PhyAddr.4027
	mov	r1, r6	@, VirAddr.4028
	mov	r2, r5	@, Length.4029
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.4036, <variable>.Length
	ldr	r7, [r4, #36]	@ PhyAddr.4034, <variable>.PhyAddr
	cmp	r5, #0	@ Length.4036,
	ldr	r6, [r4, #40]	@ VirAddr.4035, <variable>.VirAddr
	bne	.L743	@,
.L736:
	mov	r0, r7	@, PhyAddr.4034
	mov	r1, r6	@, VirAddr.4035
	mov	r2, r5	@, Length.4036
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #80]	@ Length.4041, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.4039, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.4041,
	ldr	r6, [r4, #76]	@ VirAddr.4040, <variable>.stBpdReg.VirAddr
	bne	.L744	@,
.L737:
	mov	r0, r7	@, PhyAddr.4039
	mov	r1, r6	@, VirAddr.4040
	mov	r2, r5	@, Length.4041
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #68]	@ Length.4046, <variable>.Length
	ldr	r7, [r4, #60]	@ PhyAddr.4044, <variable>.PhyAddr
	cmp	r5, #0	@ Length.4046,
	ldr	r6, [r4, #64]	@ VirAddr.4045, <variable>.VirAddr
	bne	.L745	@,
.L738:
	mov	r0, r7	@, PhyAddr.4044
	mov	r1, r6	@, VirAddr.4045
	mov	r2, r5	@, Length.4046
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #56]	@ Length.4051, <variable>.stFodReg.Length
	ldr	r7, [r4, #48]	@ PhyAddr.4049, <variable>.stFodReg.PhyAddr
	cmp	r5, #0	@ Length.4051,
	ldr	r6, [r4, #52]	@ VirAddr.4050, <variable>.stFodReg.VirAddr
	bne	.L746	@,
.L739:
	mov	r0, r7	@, PhyAddr.4049
	mov	r1, r6	@, VirAddr.4050
	mov	r2, r5	@, Length.4051
	bl	MEM_DelMemRecord	@
	ldr	r7, [r4, #92]	@ Length.4056, <variable>.stSystemReg.Length
	ldr	r5, [r4, #84]	@ PhyAddr.4054, <variable>.stSystemReg.PhyAddr
	cmp	r7, #0	@ Length.4056,
	ldr	r6, [r4, #88]	@ VirAddr.4055, <variable>.stSystemReg.VirAddr
	beq	.L740	@,
	mov	r0, r5	@, PhyAddr.4054
	mov	r1, r6	@, VirAddr.4055
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #84	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
.L740:
	mov	r2, r7	@, Length.4056
	mov	r1, r6	@, VirAddr.4055
	mov	r0, r5	@, PhyAddr.4054
	bl	MEM_DelMemRecord	@
	mov	r0, #127	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #136	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L746:
	mov	r0, r7	@, PhyAddr.4049
	mov	r1, r6	@, VirAddr.4050
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L739	@
.L745:
	mov	r0, r7	@, PhyAddr.4044
	mov	r1, r6	@, VirAddr.4045
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #60	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L738	@
.L744:
	mov	r0, r7	@, PhyAddr.4039
	mov	r1, r6	@, VirAddr.4040
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #72	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L737	@
.L743:
	mov	r0, r7	@, PhyAddr.4034
	mov	r1, r6	@, VirAddr.4035
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #36	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L736	@
.L742:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #12]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #16]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #12	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L735	@
.L733:
	mov	r0, r3	@, D.38560
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #5802	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L734	@
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1429:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r5, r0, #36	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r1, #4096	@,
	movw	r0, #:lower16:-121438208	@,
	mov	r2, r5	@, pstMem
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L771	@,
	add	r6, r4, #72	@ pstMem.4082, pstDrvMem,
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121241600	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121241600	@,
	mov	r2, r6	@, pstMem.4082
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L768	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	r3, [r5, #16]	@ D.38426, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.38426,
	beq	.L768	@,
	blx	r3	@ D.38426
	cmp	r0, #0	@,
	bne	.L768	@,
	add	r8, r4, #60	@ pstMem.4086, pstDrvMem,
	add	r0, r4, #72
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121389056	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121389056	@,
	mov	r2, r8	@, pstMem.4086
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.38440,
	bne	.L757	@,
	sub	r7, fp, #56	@ tmp168,,
	add	r0, r4, #60
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.38440
	mov	r0, r7	@, tmp168
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC254	@,
	movt	r2, #:upper16:.LC254	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.38451, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.38451,
	beq	.L757	@,
	blx	r3	@ D.38451
	subs	r2, r0, #0	@ Size,
	ble	.L757	@,
	mov	r1, r6	@, D.38440
	mov	r0, r7	@, tmp168
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.38440,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.38464,
	bne	.L759	@,
	ldmia	r4, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.38469, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.38469,
	beq	.L759	@,
	mov	r2, r6	@, D.38464
	ldr	r0, [r4, #0]	@, <variable>.PhyAddr
	ldr	r1, [r4, #8]	@, <variable>.Length
	blx	r3	@ D.38469
	cmp	r0, #0	@,
	bne	.L759	@,
	mov	r0, #0	@,
	add	r5, r4, #12	@ pstMem.4096, pstDrvMem,
	bl	VDMDRV_Init	@
	mov	ip, #0	@ tmp180,
	mov	r1, ip	@, tmp180
	movw	r0, #:lower16:.LC255	@,
	mov	r2, #716800	@,
	movt	r0, #:upper16:.LC255	@,
	mov	r3, r5	@, pstMem.4096
	str	ip, [sp, #0]	@ tmp180,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.38484,
	bne	.L771	@,
	add	r0, r4, #12
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.38484
	ldr	r0, [r4, #12]	@, <variable>.stScdCmnMem.PhyAddr
	movw	r2, #:lower16:-121389056	@,
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.Length
	movt	r2, #:upper16:-121389056	@,
	bl	SM_OpenSCDDrv	@
	subs	ip, r0, #0	@ D.38487,
	bne	.L771	@,
	mov	r2, ip	@, D.38487
	mov	r0, #127	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	str	ip, [sp, #4]	@ D.38487,
	movw	lr, #:lower16:.LC256	@ tmp188,
	movt	lr, #:upper16:.LC256	@ tmp188,
	str	lr, [sp, #0]	@ tmp188,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.40722,
	bne	.L771	@,
	mov	r2, ip	@, D.40722
	mov	r0, #136	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	str	ip, [sp, #4]	@ D.40722,
	movw	ip, #:lower16:.LC257	@ tmp191,
	movt	ip, #:upper16:.LC257	@ tmp191,
	str	ip, [sp, #0]	@ tmp191,
	bl	request_threaded_irq	@
	cmp	r0, #0	@ D.40729
	bne	.L771	@,
.L751:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L768:
	mov	r0, r6	@, pstMem.4082
.L772:
	mov	r1, #12	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.38399,
	b	.L751	@
.L771:
	mov	r0, r5	@, pstMem.4096
	b	.L772	@
.L757:
	mov	r0, r8	@, pstMem.4086
	b	.L772	@
.L759:
	mov	r1, #12	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.38399,
	b	.L751	@
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1422:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	mov	r6, r0	@ ChanID, ChanID
	mov	r7, r1	@ pMem, pMem
	ldr	r3, [r5, r0, asl #2]	@ D.37857, s_pstVfmwChan
	cmp	r3, #0	@ D.37857,
	beq	.L783	@,
	ldr	r8, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L784	@,
	ldr	r3, [r3, #876]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L785	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37870,
	bne	.L786	@,
	mov	r1, r0	@, D.37870
	mov	r0, r6	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L787	@,
	mov	r1, sl	@, id
	mov	r0, r6	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, sl	@, id
	movw	r1, #:lower16:.LC262	@,
	movt	r1, #:upper16:.LC262	@,
	mov	r4, r0	@ pLf,
	mov	r0, r8	@, <variable>.eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L788	@,
	ldr	r2, [r4, #472]	@ D.37885, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.37885,
	beq	.L781	@,
	ldr	r3, [r4, #476]	@ D.37887, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.37887,
	beq	.L781	@,
	ldr	ip, [r4, #480]	@ D.37889, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.37889,
	beq	.L781	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC264	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC264	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.37861,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r5, r6, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r1, [r2, #872]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L775:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L786:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC260	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L784:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC258	@,
	movt	r1, #:upper16:.LC258	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L785:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC259	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L781:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC265	@,
	movt	r1, #:upper16:.LC265	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L787:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC261	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L783:
	mov	r0, r3	@, D.37857
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4753	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
.L788:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC263	@,
	movw	r2, #4784	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37861,
	b	.L775	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1421:
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
	mov	r8, r1	@ pstUsrdecFrame, pstUsrdecFrame
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r6, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r5, r0	@ PicBufID,
	beq	.L798	@,
	ldr	r3, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L792	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.37788,
.L791:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L792:
	ldr	r0, [r8, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L799	@,
.L793:
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L800	@,
	str	r5, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	r7, #0	@ tmp166,
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	sl, #1	@ tmp165,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	sl, [r4, #68]	@ tmp165, <variable>.DispEnableFlag
	str	r7, [r4, #72]	@ tmp166, <variable>.DispFrameDistance
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	str	r7, [r4, #76]	@ tmp166, <variable>.DistanceBeforeFirstFrame
	str	r7, [r4, #80]	@ tmp166, <variable>.GopNum
	ldr	r1, [r8, #28]	@ temp.4161, <variable>.s32LumaPhyAddr
	str	r1, [r4, #88]	@ temp.4161, <variable>.top_luma_phy_addr
	mov	r0, r1	@, temp.4161
	str	r1, [r4, #120]	@ temp.4161, <variable>.luma_2d_phy_addr
	str	r1, [r4, #104]	@ temp.4161, <variable>.luma_phy_addr
	ldr	lr, [r8, #36]	@ temp.4162, <variable>.s32CbPhyAddr
	str	lr, [r4, #108]	@ temp.4162, <variable>.chrom_phy_addr
	str	lr, [r4, #92]	@ temp.4162, <variable>.top_chrom_phy_addr
	str	lr, [r4, #124]	@ temp.4162, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.37811, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.37811, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #36]	@ D.37814, <variable>.chrom_vir_addr
	str	r0, [r4, #52]	@ D.37814, <variable>.chrom_2d_vir_addr
	ldr	r3, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp172, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #96]	@ tmp172, <variable>.btm_luma_phy_addr
	ldr	r1, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r7, [r4, #128]	@ tmp166, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp175, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #100]	@ tmp175, <variable>.btm_chrom_phy_addr
	ldr	ip, [r8, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #144]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r8, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #148]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp185,
	ldr	r0, [r8, #20]	@ temp.4166, <variable>.s32YWidth
	str	r0, [r4, #152]	@ temp.4166, <variable>.disp_width
	mov	r1, r0, lsr sl	@ tmp179, temp.4166,
	ldr	r3, [r8, #24]	@ temp.4168, <variable>.s32YHeight
	str	r1, [r4, #160]	@ tmp179, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.4168, <variable>.disp_height
	mov	ip, r3, lsr sl	@ tmp180, temp.4168,
	str	ip, [r4, #164]	@ tmp180, <variable>.disp_center_y
	ldr	r0, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #140]	@ tmp185, <variable>.format
	str	r7, [r4, #168]	@ tmp166, <variable>.frame_rate
	str	r0, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r7, [r4, #180]	@ tmp166, <variable>.error_level
	str	sl, [r4, #208]	@ tmp165, <variable>.chroma_idc
	ldr	r0, [r8, #16]	@, <variable>.s32IsSemiPlanar
	ldr	r1, [r8, #0]	@, <variable>.enFmt
	bl	Get_YuvFormat	@
	cmp	r0, #13	@ eYuvFormat,
	mov	r2, r0	@ eYuvFormat,
	beq	.L801	@,
	str	r0, [r4, #428]	@ eYuvFormat, <variable>.BTLInfo.YUVFormat
	mov	r2, sl	@, tmp165
	ldr	r3, [r8, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	mov	sl, #18	@ tmp192,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, PicBufID
	str	r3, [r4, #404]	@ <variable>.s32ChromStride, <variable>.BTLInfo.u32CStride
	ldr	ip, [r8, #48]	@ <variable>.s32ChromCrStride, <variable>.s32ChromCrStride
	str	ip, [r4, #400]	@ <variable>.s32ChromCrStride, <variable>.BTLInfo.u32CrStride
	ldr	lr, [r8, #40]	@ <variable>.s32CrPhyAddr, <variable>.s32CrPhyAddr
	str	sl, [r4, #336]	@ tmp192, <variable>.ImageDnr.video_standard
	str	lr, [r4, #408]	@ <variable>.s32CrPhyAddr, <variable>.BTLInfo.u32CrAddr
	bl	FSP_SetDisplay	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp193,
	movt	r3, #:upper16:.LANCHOR0	@ tmp193,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, sl	@, tmp192
	mov	r0, r6	@, ChanID
	ldr	ip, [r3, r6, asl #2]	@ D.37842, s_pstVfmwChan
	add	r3, ip, #960	@, D.37842,
	add	r2, ip, #952	@, D.37842,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r7	@ D.37788, tmp166
	beq	.L791	@,
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #196]	@, <variable>.p_usrdat
	str	r7, [r4, #192]	@ tmp166, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	str	r7, [r4, #196]	@ tmp166, <variable>.p_usrdat
	mov	r1, r5	@, PicBufID
	mov	r2, r7	@, tmp166
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37788,
	b	.L791	@
.L799:
	ldr	r1, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L793	@,
	ldr	r2, [r8, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37788,
	b	.L791	@
.L798:
	ldr	r2, [r8, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.37788, PicBufID
	b	.L791	@
.L801:
	mov	r0, sl	@, tmp165
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37788,
	b	.L791	@
.L800:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC268	@,
	movw	r2, #4588	@,
	movt	r1, #:upper16:.LC268	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37788,
	b	.L791	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1423:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	ldr	lr, [r3, r0, asl #2]	@ D.37902, s_pstVfmwChan
	cmp	lr, #0	@ D.37902,
	beq	.L809	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L810	@,
	ldr	r2, [lr, #936]	@ D.37909, <variable>.eVidStd
	cmp	r2, #18	@ D.37909,
	bne	.L811	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #880	@ tmp146, D.37902,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r5, lr	@ tmp147, tmp146
	stmia	r5!, {r0, r1, r2, r3}	@ tmp147,,,,
	mov	lr, r5	@ tmp152, tmp147
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4, {r0, r1}	@ pUsrdecFrame,,
	stmia	lr, {r0, r1}	@ tmp154,,
	mov	r0, r6	@, ChanID
	mov	r1, ip	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.37914
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC272	@,
	movt	r1, #:upper16:.LC272	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37906,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L811:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37906,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L810:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #4836	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC270	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37906,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L809:
	mov	r0, lr	@, D.37902
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4835	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37906,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1420:
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
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L813	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L813:
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1419:
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
	ldr	r6, [r0, #352]	@ D.37748, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.37748, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp191,
	movt	r3, #:upper16:.LANCHOR0	@ tmp191,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ temp.4248, s_pstVfmwChan
	cmp	r2, #0	@ temp.4248,
	beq	.L816	@,
	add	r2, r2, #952	@ tmp157, temp.4248,
	cmp	r4, r2	@ pCtx, tmp157
	moveq	r3, #0	@ i,
	beq	.L817	@,
.L816:
	ldr	r2, [r3, #4]	@ temp.4250, s_pstVfmwChan
	cmp	r2, #0	@ temp.4250,
	beq	.L818	@,
	add	r0, r2, #952	@ tmp159, temp.4250,
	cmp	r4, r0	@ pCtx, tmp159
	moveq	r3, #1	@ i,
	beq	.L817	@,
.L818:
	ldr	r2, [r3, #8]	@ temp.4252, s_pstVfmwChan
	cmp	r2, #0	@ temp.4252,
	beq	.L819	@,
	add	r1, r2, #952	@ tmp161, temp.4252,
	cmp	r4, r1	@ pCtx, tmp161
	moveq	r3, #2	@ i,
	beq	.L817	@,
.L819:
	ldr	r2, [r3, #12]	@ temp.4254, s_pstVfmwChan
	cmp	r2, #0	@ temp.4254,
	beq	.L820	@,
	add	ip, r2, #952	@ tmp163, temp.4254,
	cmp	r4, ip	@ pCtx, tmp163
	moveq	r3, #3	@ i,
	beq	.L817	@,
.L820:
	ldr	r2, [r3, #16]	@ temp.4256, s_pstVfmwChan
	cmp	r2, #0	@ temp.4256,
	beq	.L821	@,
	add	lr, r2, #952	@ tmp165, temp.4256,
	cmp	r4, lr	@ pCtx, tmp165
	moveq	r3, #4	@ i,
	beq	.L817	@,
.L821:
	ldr	r2, [r3, #20]	@ temp.4258, s_pstVfmwChan
	cmp	r2, #0	@ temp.4258,
	beq	.L822	@,
	add	r2, r2, #952	@ tmp167, temp.4258,
	cmp	r4, r2	@ pCtx, tmp167
	moveq	r3, #5	@ i,
	beq	.L817	@,
.L822:
	ldr	r2, [r3, #24]	@ temp.4260, s_pstVfmwChan
	cmp	r2, #0	@ temp.4260,
	beq	.L823	@,
	add	r0, r2, #952	@ tmp169, temp.4260,
	cmp	r4, r0	@ pCtx, tmp169
	moveq	r3, #6	@ i,
	beq	.L817	@,
.L823:
	ldr	r2, [r3, #28]	@ temp.4262, s_pstVfmwChan
	cmp	r2, #0	@ temp.4262,
	beq	.L824	@,
	add	r1, r2, #952	@ tmp171, temp.4262,
	cmp	r4, r1	@ pCtx, tmp171
	moveq	r3, #7	@ i,
	beq	.L817	@,
.L824:
	ldr	r2, [r3, #32]	@ temp.4264, s_pstVfmwChan
	cmp	r2, #0	@ temp.4264,
	beq	.L825	@,
	add	ip, r2, #952	@ tmp173, temp.4264,
	cmp	r4, ip	@ pCtx, tmp173
	moveq	r3, #8	@ i,
	beq	.L817	@,
.L825:
	ldr	r2, [r3, #36]	@ temp.4266, s_pstVfmwChan
	cmp	r2, #0	@ temp.4266,
	beq	.L826	@,
	add	lr, r2, #952	@ tmp175, temp.4266,
	cmp	r4, lr	@ pCtx, tmp175
	moveq	r3, #9	@ i,
	beq	.L817	@,
.L826:
	ldr	r2, [r3, #40]	@ temp.4268, s_pstVfmwChan
	cmp	r2, #0	@ temp.4268,
	beq	.L827	@,
	add	r2, r2, #952	@ tmp177, temp.4268,
	cmp	r4, r2	@ pCtx, tmp177
	moveq	r3, #10	@ i,
	beq	.L817	@,
.L827:
	ldr	r2, [r3, #44]	@ temp.4270, s_pstVfmwChan
	cmp	r2, #0	@ temp.4270,
	beq	.L828	@,
	add	r0, r2, #952	@ tmp179, temp.4270,
	cmp	r4, r0	@ pCtx, tmp179
	moveq	r3, #11	@ i,
	beq	.L817	@,
.L828:
	ldr	r2, [r3, #48]	@ temp.4272, s_pstVfmwChan
	cmp	r2, #0	@ temp.4272,
	beq	.L829	@,
	add	r1, r2, #952	@ tmp181, temp.4272,
	cmp	r4, r1	@ pCtx, tmp181
	moveq	r3, #12	@ i,
	beq	.L817	@,
.L829:
	ldr	r2, [r3, #52]	@ temp.4274, s_pstVfmwChan
	cmp	r2, #0	@ temp.4274,
	beq	.L830	@,
	add	ip, r2, #952	@ tmp183, temp.4274,
	cmp	r4, ip	@ pCtx, tmp183
	moveq	r3, #13	@ i,
	beq	.L817	@,
.L830:
	ldr	r2, [r3, #56]	@ temp.4276, s_pstVfmwChan
	cmp	r2, #0	@ temp.4276,
	beq	.L831	@,
	add	lr, r2, #952	@ tmp185, temp.4276,
	cmp	r4, lr	@ pCtx, tmp185
	moveq	r3, #14	@ i,
	beq	.L817	@,
.L831:
	ldr	r3, [r3, #60]	@ D.40736, s_pstVfmwChan
	cmp	r3, #0	@ D.40736,
	beq	.L832	@,
	add	r3, r3, #952	@ tmp187, D.40736,
	cmp	r4, r3	@ pCtx, tmp187
	beq	.L833	@,
.L832:
	mvn	r2, #0	@ tmp188,
	mov	r0, #0	@,
	str	r2, [r4, #360]	@ tmp188, <variable>.ChanID
	movw	r1, #:lower16:.LC273	@,
	movt	r1, #:upper16:.LC273	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37761,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L833:
	mov	r3, #15	@ i,
.L817:
	mov	r0, #1	@ D.37761,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp190,
	movt	r3, #:upper16:.LANCHOR0	@ tmp190,
	ldr	r0, [r3, r0, asl #2]	@ D.37940, s_pstVfmwChan
	cmp	r0, #0	@ D.37940,
	beq	.L857	@,
	ldr	r2, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L854	@
.L852:
	.word	.L839
	.word	.L840
	.word	.L841
	.word	.L842
	.word	.L843
	.word	.L844
	.word	.L845
	.word	.L854
	.word	.L846
	.word	.L847
	.word	.L848
	.word	.L848
	.word	.L848
	.word	.L849
	.word	.L843
	.word	.L850
	.word	.L854
	.word	.L854
	.word	.L851
.L851:
	add	r2, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r2, #59392	@,,
	bl	USERDEC_Init	@
.L854:
	ldmfd	sp, {fp, sp, pc}	@
.L848:
	ldr	r2, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	movw	r3, #:lower16:.LANCHOR0	@ tmp167,
	movt	r3, #:upper16:.LANCHOR0	@ tmp167,
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L858	@,
.L843:
	ldr	r3, [r3, #88]	@ temp.4310, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ temp.4310,
	ldmeqfd	sp, {fp, sp, pc}	@
	add	r1, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r1, #59392	@,,
	blx	r3	@ temp.4310
	ldmfd	sp, {fp, sp, pc}	@
.L844:
	add	r3, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r3, #59392	@,,
	bl	DIVX3DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L845:
	add	lr, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, lr, #59392	@,,
	bl	AVSDEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L846:
	add	r2, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r2, #59392	@,,
	bl	REAL8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L847:
	add	r1, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r1, #59392	@,,
	bl	REAL9DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L849:
	add	r3, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r3, #59392	@,,
	bl	VP8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L850:
	add	ip, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, ip, #59392	@,,
	bl	MVC_DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L839:
	add	ip, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, ip, #59392	@,,
	bl	H264DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L840:
	add	ip, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, ip, #59392	@,,
	bl	VC1DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L841:
	add	r3, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r3, #59392	@,,
	bl	MPEG4DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L842:
	add	r1, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, r1, #59392	@,,
	bl	MPEG2DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L858:
	add	lr, r0, #11141120	@, D.37940,
	add	r0, r0, #952	@, D.37940,
	add	r1, lr, #59392	@,,
	bl	VP6DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L857:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4863	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1413:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L879	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp161,
	movt	r3, #:upper16:.LANCHOR0	@ tmp161,
	ldr	r0, [r3, r0, asl #2]	@ D.37613, s_pstVfmwChan
	cmp	r0, #0	@ D.37613,
	beq	.L880	@,
	ldr	r2, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L881	@,
	ldr	r1, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L864	@
.L877:
	.word	.L865
	.word	.L866
	.word	.L867
	.word	.L868
	.word	.L869
	.word	.L870
	.word	.L871
	.word	.L864
	.word	.L872
	.word	.L873
	.word	.L874
	.word	.L874
	.word	.L874
	.word	.L875
	.word	.L869
	.word	.L876
.L874:
	ldr	r3, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L882	@,
.L869:
	mov	r0, #1	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L870:
	add	r0, r0, #952	@, D.37613,
	bl	DIVX3DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L871:
	add	r0, r0, #952	@, D.37613,
	bl	AVSDEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L872:
	add	r0, r0, #952	@, D.37613,
	bl	REAL8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L873:
	add	r0, r0, #952	@, D.37613,
	bl	REAL9DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L875:
	add	r0, r0, #952	@, D.37613,
	bl	VP8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L876:
	add	r0, r0, #952	@, D.37613,
	bl	MVC_DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L864:
	mov	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L865:
	add	r0, r0, #952	@, D.37613,
	bl	H264DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L866:
	add	r0, r0, #952	@, D.37613,
	bl	VC1DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L867:
	add	r0, r0, #952	@, D.37613,
	bl	MPEG4DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L868:
	add	r0, r0, #952	@, D.37613,
	bl	MPEG2DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L882:
	add	r0, r0, #952	@, D.37613,
	bl	VP6DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L881:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4313	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC275	@,
	movt	r3, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L879:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4311	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L880:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4312	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1435:
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
	cmp	r0, #15	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L915	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp388,
	movt	r5, #:upper16:.LANCHOR0	@ tmp388,
	ldr	r0, [r5, r0, asl #2]	@ D.38766, s_pstVfmwChan
	cmp	r0, #0	@ D.38766,
	beq	.L916	@,
	ldr	sl, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	sl, #1	@ <variable>.s32IsRun,
	bne	.L917	@,
	ldr	r6, [r0, #24]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r6, #0	@ <variable>.s32StopSyntax,
	bne	.L918	@,
	str	r6, [r0, #728]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r0, r4, asl #2	@, ChanID,
	str	r0, [fp, #-84]	@, %sfp
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [fp, #-84]	@, %sfp
	movw	r7, #:lower16:.LANCHOR3	@ tmp389,
	movt	r7, #:upper16:.LANCHOR3	@ tmp389,
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp184,
	add	ip, r3, r7	@ tmp180,, tmp389
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp184,
	ldr	r2, [ip, #-3200]	@ tmp183, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r2, r0	@ tmp182, tmp183, currtime
	ldr	r2, [r5, r4, asl #2]	@ tmp192, s_pstVfmwChan
	cmp	r1, r3	@ tmp182, g_TraceBsPeriod
	strls	r6, [fp, #-60]	@ <variable>.s32StopSyntax, %sfp
	strhi	sl, [fp, #-60]	@ <variable>.s32IsRun, %sfp
	movw	r3, #:lower16:.LANCHOR0	@ tmp191,
	strhi	r0, [ip, #-3200]	@ currtime, last_rec_pos_time
	movt	r3, #:upper16:.LANCHOR0	@ tmp191,
	ldr	r2, [r2, #936]	@ D.38785, <variable>.eVidStd
	sub	r1, r2, #10	@ tmp193, D.38785,
	cmp	r1, #2	@ tmp193,
	bls	.L919	@,
	cmp	r2, #14	@ D.38785,
	beq	.L893	@,
	cmp	r2, #4	@ D.38785,
	bne	.L892	@,
.L893:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L920	@,
	ldr	r6, [r5, r4, asl #2]	@ temp.4385, s_pstVfmwChan
	movw	r1, #:lower16:11200649	@ tmp200,
	movt	r1, #:upper16:11200649	@ tmp200,
	ldrb	r8, [r6, r1]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r8, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	beq	.L921	@,
.L897:
	movw	r0, #:lower16:11200680	@ tmp209,
	movw	sl, #:lower16:11200696	@ tmp211,
	movt	r0, #:upper16:11200680	@ tmp209,
	movt	sl, #:upper16:11200696	@ tmp211,
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	ldrd	r8, [r6, r0]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, temp.4385, tmp209
	mov	r0, #29	@,
	ldrd	r2, [r6, sl]	@, temp.4385, tmp211
	strd	r2, [sp]	@,
	mov	r2, r8	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts
	mov	r3, r9	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4, asl #2]	@ prephitmp.4368, s_pstVfmwChan
	ldr	r1, [ip, #36]	@ D.38825, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.38825,
	beq	.L922	@,
	sub	r8, r1, #2	@ tmp222, D.38825,
	cmp	r1, #6	@ D.38825,
	cmpne	r8, #1	@, tmp222,
	bls	.L901	@,
.L900:
	movw	r9, #:lower16:11200680	@ tmp310,
	movt	r9, #:upper16:11200680	@ tmp310,
	mvn	r2, #0	@ tmp311,
	mvn	r3, #0	@,
	ldrd	r0, [r6, r9]	@ temp.4387, temp.4385, tmp310
	cmp	r1, r3	@ temp.4387, tmp311
	cmpeq	r0, r2	@ temp.4387, tmp311
	movwne	sl, #:lower16:11200568	@ tmp312,
	movtne	sl, #:upper16:11200568	@ tmp312,
	strned	r0, [ip, sl]	@ temp.4387, prephitmp.4368, tmp312
	ldrne	ip, [r5, r4, asl #2]	@ prephitmp.4368, s_pstVfmwChan
.L906:
	movw	r8, #:lower16:11200696	@ tmp315,
	movt	r8, #:upper16:11200696	@ tmp315,
	movw	r3, #:lower16:11200584	@ tmp314,
	movw	sl, #:lower16:11200704	@ tmp320,
	ldrd	r0, [r6, r8]	@, temp.4385, tmp315
	movt	r3, #:upper16:11200584	@ tmp314,
	movt	sl, #:upper16:11200704	@ tmp320,
	movw	r2, #:lower16:11200600	@ tmp319,
	movt	r2, #:upper16:11200600	@ tmp319,
	movw	lr, #:lower16:11200616	@ tmp324,
	strd	r0, [ip, r3]	@, prephitmp.4368, tmp314
	movw	r1, #:lower16:11200712	@ tmp325,
	ldr	ip, [r5, r4, asl #2]	@ tmp318, s_pstVfmwChan
	movt	r1, #:upper16:11200712	@ tmp325,
	ldrd	r8, [r6, sl]	@, temp.4385, tmp320
	movt	lr, #:upper16:11200616	@ tmp324,
	ldr	sl, [r6, r1]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	movw	r0, #:lower16:11200716	@ tmp330,
	movt	r0, #:upper16:11200716	@ tmp330,
	movw	r1, #:lower16:11200620	@ tmp329,
	strd	r8, [ip, r2]	@, tmp318, tmp319
	movt	r1, #:upper16:11200620	@ tmp329,
	ldr	r9, [r5, r4, asl #2]	@ tmp323, s_pstVfmwChan
	movw	r2, #:lower16:11200720	@ tmp335,
	ldr	r0, [r6, r0]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	movt	r2, #:upper16:11200720	@ tmp335,
	movw	ip, #:lower16:11200624	@ tmp334,
	movt	ip, #:upper16:11200624	@ tmp334,
	str	sl, [r9, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	movw	lr, #:lower16:11200724	@ tmp340,
	ldr	sl, [r5, r4, asl #2]	@ tmp328, s_pstVfmwChan
	movt	lr, #:upper16:11200724	@ tmp340,
	ldr	r9, [r6, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	movw	r2, #:lower16:11200640	@ tmp339,
	ldr	r8, [r6, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	movt	r2, #:upper16:11200640	@ tmp339,
	str	r0, [sl, r1]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	movw	sl, #:lower16:11200568	@ tmp344,
	ldr	lr, [r5, r4, asl #2]	@ tmp333, s_pstVfmwChan
	movt	sl, #:upper16:11200568	@ tmp344,
	movw	r1, #:lower16:.LC283	@,
	mov	r0, #29	@,
	movt	r1, #:upper16:.LC283	@,
	str	r9, [lr, ip]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r5, r4, asl #2]	@ tmp338, s_pstVfmwChan
	str	r8, [lr, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	ldr	r2, [r5, r4, asl #2]	@ temp.4394, s_pstVfmwChan
	ldrd	r8, [r2, r3]	@, temp.4394, tmp314
	ldrd	r2, [r2, sl]	@ <variable>.stSynExtraData.pts, temp.4394, tmp344
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
.L905:
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L907	@,
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r9, #1	@,
	beq	.L923	@,
.L907:
	ldr	lr, [r5, r4, asl #2]	@ temp.4421, s_pstVfmwChan
	movw	r0, #:lower16:11200648	@,
	movt	r0, #:upper16:11200648	@,
	add	r0, r6, r0	@, temp.4385,
	add	r2, lr, #952	@, temp.4421,
	ldr	r1, [lr, #936]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L924	@,
.L908:
	mov	r0, #0	@ D.38764,
.L885:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L919:
	ldr	lr, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L893	@,
.L892:
	cmp	r2, #18	@ D.38785,
	beq	.L893	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L893	@,
	ldr	ip, [fp, #-60]	@, %sfp
	cmp	ip, #1	@,
	beq	.L894	@,
	mvn	r0, #1	@ D.38764,
	b	.L885	@
.L924:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #-84]	@, %sfp
	add	r7, ip, r7	@ tmp360,, tmp389
	ldr	r1, [r7, #-3136]	@ tmp363, last_rec_pos_decparam_time
	mov	r3, r0	@ currtime.4423,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp364,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp364,
	rsb	ip, r1, r3	@ tmp362, tmp363, currtime.4423
	ldr	r2, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	cmp	ip, r2	@ tmp362, g_TraceFramePeriod
	bls	.L908	@,
	mov	r0, r4	@, ChanID
	str	r3, [r7, #-3136]	@ currtime.4423, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L908	@,
	mov	r3, r4, asl #24	@ tmp373, ChanID,
	ldr	r0, .L926	@,
	add	r2, r3, #262144	@, tmp373,
	movw	r1, #6356	@,
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.38764,
	b	.L885	@
.L922:
	ldr	r2, [ip, #952]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r9, [r2, #388]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r9, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L900	@,
.L901:
	movw	lr, #:lower16:11200896	@,
	movw	r3, #:lower16:11200656	@,
	movt	lr, #:upper16:11200896	@,
	movt	r3, #:upper16:11200656	@,
	add	r0, ip, lr	@, prephitmp.4368,
	add	r2, r6, r3	@, temp.4385,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L902	@,
	ldr	r3, [r5, r4, asl #2]	@ prephitmp.4364, s_pstVfmwChan
	movw	r1, #:lower16:11200576	@ tmp235,
	movt	r1, #:upper16:11200576	@ tmp235,
	mvn	r0, #0	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp234,
	movt	ip, #:upper16:.LANCHOR0	@ tmp234,
	ldrd	r8, [r3, r1]	@, prephitmp.4364, tmp235
	mvn	r1, #0	@,
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strd	r8, [fp, #-52]	@,,
	movwne	sl, #:lower16:11200568	@ tmp237,
	movtne	sl, #:upper16:11200568	@ tmp237,
	strned	r8, [r3, sl]	@, prephitmp.4364, tmp237
	ldrne	r3, [ip, r4, asl #2]	@ prephitmp.4364, s_pstVfmwChan
.L903:
	movw	r2, #:lower16:11200576	@ tmp239,
	movt	r2, #:upper16:11200576	@ tmp239,
	mvn	r0, #0	@ tmp240,
	mvn	r1, #0	@,
	strd	r0, [r3, r2]	@ tmp240, prephitmp.4364, tmp239
	movw	ip, #:lower16:11200592	@ tmp243,
	ldr	sl, [r5, r4, asl #2]	@ temp.4396, s_pstVfmwChan
	movt	ip, #:upper16:11200592	@ tmp243,
	movw	r3, #:lower16:11200584	@ tmp242,
	movt	r3, #:upper16:11200584	@ tmp242,
	movw	r0, #:lower16:11200608	@ tmp247,
	movt	r0, #:upper16:11200608	@ tmp247,
	ldrd	r8, [sl, ip]	@, temp.4396, tmp243
	movw	r1, #:lower16:11200600	@ tmp246,
	movt	r1, #:upper16:11200600	@ tmp246,
	movw	lr, #:lower16:11200628	@ tmp251,
	movt	lr, #:upper16:11200628	@ tmp251,
	movw	ip, #:lower16:11200616	@ tmp250,
	strd	r8, [sl, r3]	@, temp.4396, tmp242
	movt	ip, #:upper16:11200616	@ tmp250,
	ldr	r9, [r5, r4, asl #2]	@, s_pstVfmwChan
	movw	r2, #:lower16:11200632	@ tmp255,
	movt	r2, #:upper16:11200632	@ tmp255,
	movw	r3, #:lower16:11200620	@ tmp254,
	movt	r3, #:upper16:11200620	@ tmp254,
	movw	sl, #:lower16:11200636	@ tmp259,
	ldrd	r8, [r9, r0]	@,, tmp247
	movw	r0, #:lower16:11200624	@,
	movt	r0, #:upper16:11200624	@,
	str	r0, [fp, #-80]	@, %sfp
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	movt	sl, #:upper16:11200636	@ tmp259,
	strd	r8, [fp, #-68]	@,,
	movw	r9, #:lower16:11200640	@,
	movw	r8, #:lower16:11200644	@,
	str	r9, [fp, #-52]	@, %sfp
	movt	r8, #:upper16:11200644	@,
	str	r8, [fp, #-72]	@, %sfp
	ldrd	r8, [fp, #-68]	@,,
	strd	r8, [r0, r1]	@,, tmp246
	movw	r9, #:lower16:11200568	@ tmp268,
	ldr	r8, [r5, r4, asl #2]	@, s_pstVfmwChan
	movt	r9, #:upper16:11200568	@ tmp268,
	ldr	r0, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC281	@,
	movt	r1, #:upper16:.LC281	@,
	movt	r0, #:upper16:11200640	@,
	str	r0, [fp, #-52]	@, %sfp
	ldr	lr, [r8, lr]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	mov	r0, #29	@,
	str	lr, [r8, ip]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	ip, [r5, r4, asl #2]	@ temp.4399, s_pstVfmwChan
	ldr	r8, [ip, r2]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	r8, [ip, r3]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	lr, [r5, r4, asl #2]	@ temp.4400, s_pstVfmwChan
	ldr	r2, [lr, sl]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	sl, [fp, #-80]	@, %sfp
	str	r2, [lr, sl]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	ip, [r5, r4, asl #2]	@ temp.4401, s_pstVfmwChan
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r2, [ip, r3]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	r2, [ip, r8]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	r3, [r5, r4, asl #2]	@ tmp267, s_pstVfmwChan
	ldrd	r2, [r3, r9]	@, tmp267, tmp268
	bl	dprint_vfmw	@
.L902:
	movw	lr, #:lower16:11200680	@ tmp270,
	movt	lr, #:upper16:11200680	@ tmp270,
	mvn	r2, #0	@ tmp271,
	mvn	r3, #0	@,
	ldrd	r0, [r6, lr]	@ temp.4404, temp.4385, tmp270
	cmp	r1, r3	@ temp.4404, tmp271
	cmpeq	r0, r2	@ temp.4404, tmp271
	ldrne	r9, [r5, r4, asl #2]	@ tmp273, s_pstVfmwChan
	movwne	r8, #:lower16:11200576	@ tmp274,
	movtne	r8, #:upper16:11200576	@ tmp274,
	strned	r0, [r9, r8]	@ temp.4404, tmp273, tmp274
.L904:
	movw	ip, #:lower16:11200696	@ tmp278,
	movt	ip, #:upper16:11200696	@ tmp278,
	ldr	r0, [r5, r4, asl #2]	@ tmp276, s_pstVfmwChan
	movw	lr, #:lower16:11200592	@ tmp277,
	ldrd	r8, [r6, ip]	@, temp.4385, tmp278
	movt	lr, #:upper16:11200592	@ tmp277,
	movw	r1, #:lower16:11200704	@ tmp283,
	movt	r1, #:upper16:11200704	@ tmp283,
	movw	r3, #:lower16:11200608	@ tmp282,
	movw	r2, #:lower16:11200712	@ tmp288,
	strd	r8, [r0, lr]	@, tmp276, tmp277
	movt	r3, #:upper16:11200608	@ tmp282,
	ldr	sl, [r5, r4, asl #2]	@ tmp281, s_pstVfmwChan
	movt	r2, #:upper16:11200712	@ tmp288,
	ldrd	r8, [r6, r1]	@, temp.4385, tmp283
	movw	ip, #:lower16:11200716	@ tmp293,
	ldr	lr, [r6, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	movt	ip, #:upper16:11200716	@ tmp293,
	movw	r1, #:lower16:11200628	@ tmp287,
	movt	r1, #:upper16:11200628	@ tmp287,
	strd	r8, [sl, r3]	@, tmp281, tmp282
	movw	r2, #:lower16:11200720	@ tmp298,
	ldr	r0, [r5, r4, asl #2]	@ tmp286, s_pstVfmwChan
	movt	r2, #:upper16:11200720	@ tmp298,
	ldr	sl, [r6, ip]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	movw	r3, #:lower16:11200632	@ tmp292,
	movt	r3, #:upper16:11200632	@ tmp292,
	movw	ip, #:lower16:11200636	@ tmp297,
	str	lr, [r0, r1]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	movt	ip, #:upper16:11200636	@ tmp297,
	ldr	r0, [r5, r4, asl #2]	@ tmp291, s_pstVfmwChan
	movw	r1, #:lower16:11200724	@ tmp303,
	ldr	lr, [r6, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	movt	r1, #:upper16:11200724	@ tmp303,
	movw	r2, #:lower16:11200644	@ tmp302,
	movt	r2, #:upper16:11200644	@ tmp302,
	str	sl, [r0, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	movw	r3, #:lower16:11200584	@ tmp308,
	ldr	r9, [r5, r4, asl #2]	@ tmp296, s_pstVfmwChan
	movt	r3, #:upper16:11200584	@ tmp308,
	ldr	sl, [r6, r1]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC282	@,
	movt	r1, #:upper16:.LC282	@,
	str	lr, [r9, ip]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	lr, [r5, r4, asl #2]	@ tmp301, s_pstVfmwChan
	str	sl, [lr, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldr	ip, [r5, r4, asl #2]	@ tmp307, s_pstVfmwChan
	add	r2, ip, r3	@, tmp307, tmp308
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
	b	.L905	@
.L921:
	movw	r3, #:lower16:11200656	@,
	movt	r3, #:upper16:11200656	@,
	add	r1, r6, r3	@, temp.4385,
	mov	r0, r4	@, ChanID
	bl	SM_ReadStreamSeg	@
	cmp	r0, #0	@,
	beq	.L897	@,
	ldr	r8, [fp, #-60]	@, %sfp
	cmp	r8, #1	@,
	beq	.L925	@,
.L898:
	ldr	ip, [r5, r4, asl #2]	@ tmp206, s_pstVfmwChan
	mov	lr, #1	@ tmp207,
	mvn	r0, #3	@ D.38764,
	str	lr, [ip, #728]	@ tmp207, <variable>.s32NoStreamFlag
	b	.L885	@
.L920:
	ldr	r2, [fp, #-60]	@, %sfp
	cmp	r2, #1	@,
	mvnne	r0, #2	@ D.38764,
	bne	.L885	@
.L896:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.38764,
	b	.L885	@
.L894:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC277	@,
	movt	r1, #:upper16:.LC277	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.38764,
	b	.L885	@
.L923:
	mov	r3, r4, asl #24	@ tmp350, ChanID,
	ldr	r0, .L926	@,
	add	r2, r3, #196608	@, tmp350,
	movw	r1, #6340	@,
	bl	DBG_AddTrace	@
	b	.L907	@
.L917:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6157	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC275	@,
	movt	r3, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	b	.L885	@
.L918:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6158	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC276	@,
	movt	r3, #:upper16:.LC276	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	b	.L885	@
.L915:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6155	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	b	.L885	@
.L925:
	movw	r1, #:lower16:.LC279	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC279	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L898	@
.L916:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6156	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	b	.L885	@
.L927:
	.align	2
.L926:
	.word	.LANCHOR1+92
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1432:
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
	movw	r6, #:lower16:.LANCHOR0	@ tmp307,
	movt	r6, #:upper16:.LANCHOR0	@ tmp307,
	movw	r4, #:lower16:.LANCHOR3	@ tmp308,
	movt	r4, #:upper16:.LANCHOR3	@ tmp308,
	ldr	sl, [r6, #0]	@ temp.4472, s_pstVfmwChan
	ldr	r9, [r6, #4]	@ temp.4470, s_pstVfmwChan
	cmp	sl, #0	@ temp.4472,
	ldr	r8, [r6, #8]	@ temp.4475, s_pstVfmwChan
	ldr	r7, [r6, #12]	@ temp.4477, s_pstVfmwChan
	ldrne	sl, [sl, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r9, #0	@ temp.4470,
	ldr	r2, [r6, #16]	@ temp.4479, s_pstVfmwChan
	ldr	r1, [r6, #20]	@ temp.4481, s_pstVfmwChan
	str	sl, [r4, #-3072]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r9, [r9, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r8, #0	@ temp.4475,
	ldr	r0, [r6, #24]	@ temp.4483, s_pstVfmwChan
	ldr	r3, [r6, #28]	@ temp.4485, s_pstVfmwChan
	str	r9, [r4, #-3068]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r8, [r8, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ temp.4477,
	ldr	ip, [r6, #32]	@ temp.4487, s_pstVfmwChan
	ldr	sl, [r6, #36]	@ temp.4489, s_pstVfmwChan
	str	r8, [r4, #-3064]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r7, [r7, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.4479,
	ldr	r9, [r6, #40]	@ temp.4491, s_pstVfmwChan
	ldr	r8, [r6, #44]	@ temp.4493, s_pstVfmwChan
	str	r7, [r4, #-3060]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.4481,
	str	r2, [r4, #-3056]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.4483,
	str	r1, [r4, #-3052]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r3, #0	@ temp.4485,
	str	r0, [r4, #-3048]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r3, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.4487,
	str	r3, [r4, #-3044]	@ <variable>.s32Priority, ChanPriTab
	movw	r3, #:lower16:11200516	@ tmp315,
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	sl, #0	@ temp.4489,
	movt	r3, #:upper16:11200516	@ tmp315,
	str	ip, [r4, #-3040]	@ <variable>.s32Priority, ChanPriTab
	movw	ip, #:lower16:11200512	@ tmp316,
	ldrne	sl, [sl, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r9, #0	@ temp.4491,
	movt	ip, #:upper16:11200512	@ tmp316,
	str	sl, [r4, #-3036]	@ <variable>.s32Priority, ChanPriTab
	movw	sl, #:lower16:.LANCHOR0	@ tmp313,
	ldrne	r9, [r9, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r8, #0	@ temp.4493,
	movt	sl, #:upper16:.LANCHOR0	@ tmp313,
	str	r9, [r4, #-3032]	@ <variable>.s32Priority, ChanPriTab
	movw	r9, #:lower16:11200520	@ tmp314,
	ldrne	r8, [r8, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r9, #:upper16:11200520	@ tmp314,
	str	r8, [r4, #-3028]	@ <variable>.s32Priority, ChanPriTab
	mvn	r8, #0	@ ret,
	ldr	r7, [r6, #48]	@ temp.4495, s_pstVfmwChan
	ldr	r2, [r6, #52]	@ temp.4497, s_pstVfmwChan
	cmp	r7, #0	@ temp.4495,
	ldr	r1, [r6, #56]	@ temp.4499, s_pstVfmwChan
	ldr	r0, [r6, #60]	@ D.38663, s_pstVfmwChan
	ldrne	r7, [r7, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.4497,
	str	r7, [r4, #-3024]	@ <variable>.s32Priority, ChanPriTab
	movw	r7, #:lower16:.LANCHOR3	@ tmp310,
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.4499,
	movt	r7, #:upper16:.LANCHOR3	@ tmp310,
	str	r2, [r4, #-3020]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ D.38663,
	str	r1, [r4, #-3016]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r3, [fp, #-72]	@ tmp315, %sfp
	str	r0, [r4, #-3012]	@ D.38663, ChanPriTab
.L987:
	ldr	r0, [r4, #-3072]	@ MaxPri, ChanPriTab
	ldr	r3, [r4, #-3068]	@ MaxPri.4501, ChanPriTab
	ldr	r2, [r4, #-3064]	@ MaxPri.4502, ChanPriTab
	cmp	r0, r3	@ MaxPri, MaxPri.4501
	ldr	r1, [r4, #-3060]	@ MaxPri.4503, ChanPriTab
	movlt	r0, r3	@ MaxPri, MaxPri.4501
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	cmp	r0, r2	@ MaxPri, MaxPri.4502
	ldr	r3, [r4, #-3056]	@ MaxPri.4504, ChanPriTab
	movlt	r0, r2	@ MaxPri, MaxPri.4502
	movlt	r5, #2	@ MaxPriChan,
	cmp	r0, r1	@ MaxPri, MaxPri.4503
	ldr	r2, [r4, #-3052]	@ MaxPri.4505, ChanPriTab
	movlt	r0, r1	@ MaxPri, MaxPri.4503
	movlt	r5, #3	@ MaxPriChan,
	cmp	r0, r3	@ MaxPri, MaxPri.4504
	ldr	r1, [r4, #-3048]	@ MaxPri.4506, ChanPriTab
	movlt	r0, r3	@ MaxPri, MaxPri.4504
	movlt	r5, #4	@ MaxPriChan,
	cmp	r0, r2	@ MaxPri, MaxPri.4505
	ldr	r3, [r4, #-3044]	@ MaxPri.4507, ChanPriTab
	movlt	r0, r2	@ MaxPri, MaxPri.4505
	movlt	r5, #5	@ MaxPriChan,
	cmp	r0, r1	@ MaxPri, MaxPri.4506
	ldr	r2, [r4, #-3040]	@ MaxPri.4508, ChanPriTab
	movlt	r0, r1	@ MaxPri, MaxPri.4506
	movlt	r5, #6	@ MaxPriChan,
	cmp	r0, r3	@ MaxPri, MaxPri.4507
	ldr	r1, [r4, #-3036]	@ MaxPri.4509, ChanPriTab
	movlt	r0, r3	@ MaxPri, MaxPri.4507
	movlt	r5, #7	@ MaxPriChan,
	cmp	r0, r2	@ MaxPri, MaxPri.4508
	ldr	r3, [r4, #-3032]	@ MaxPri.4510, ChanPriTab
	movlt	r0, r2	@ MaxPri, MaxPri.4508
	movlt	r5, #8	@ MaxPriChan,
	cmp	r0, r1	@ MaxPri, MaxPri.4509
	ldr	r2, [r4, #-3028]	@ MaxPri.4511, ChanPriTab
	movlt	r0, r1	@ MaxPri, MaxPri.4509
	movlt	r5, #9	@ MaxPriChan,
	cmp	r0, r3	@ MaxPri, MaxPri.4510
	ldr	r1, [r4, #-3024]	@ MaxPri.4512, ChanPriTab
	movlt	r0, r3	@ MaxPri, MaxPri.4510
	movlt	r5, #10	@ MaxPriChan,
	cmp	r0, r2	@ MaxPri, MaxPri.4511
	ldr	r3, [r4, #-3020]	@ MaxPri.4513, ChanPriTab
	movlt	r0, r2	@ MaxPri, MaxPri.4511
	movlt	r5, #11	@ MaxPriChan,
	cmp	r0, r1	@ MaxPri, MaxPri.4512
	ldr	r2, [r4, #-3016]	@ MaxPri.4514, ChanPriTab
	movlt	r0, r1	@ MaxPri, MaxPri.4512
	movlt	r5, #12	@ MaxPriChan,
	cmp	r0, r3	@ MaxPri, MaxPri.4513
	ldr	r1, [r4, #-3012]	@ MaxPri.4515, ChanPriTab
	movlt	r0, r3	@ MaxPri, MaxPri.4513
	movlt	r5, #13	@ MaxPriChan,
	cmp	r0, r2	@ MaxPri, MaxPri.4514
	movlt	r0, r2	@ MaxPri, MaxPri.4514
	movlt	r5, #14	@ MaxPriChan,
	cmp	r0, r1	@ MaxPri, MaxPri.4515
	movw	r2, #:lower16:.LANCHOR3	@ tmp273,
	movt	r2, #:upper16:.LANCHOR3	@ tmp273,
	movlt	r5, #15	@ MaxPriChan,
	movlt	r0, r1	@ MaxPri, MaxPri.4515
	add	r3, r4, r5, asl #2	@, tmp276, tmp308, MaxPriChan,
	cmp	r0, #0	@ MaxPri,
	mov	r1, #0	@ tmp278,
	str	r1, [r3, #-3072]	@ tmp278, ChanPriTab
	add	r3, r5, #1	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.4454, MaxPriChan,
	ble	.L977	@,
	ldr	r2, [r6, r5, asl #2]	@ D.38674, s_pstVfmwChan
	cmp	r2, r1	@ D.38674,
	beq	.L987	@,
	str	r3, [r7, #-2952]	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.4454, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #1	@ <variable>.s32IsRun,
	bne	.L987	@,
	ldr	lr, [r2, #56]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	lr, r1	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L979	@,
	ldr	r8, [r2, #60]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	r8, r1	@ <variable>.stChanCfg.s32DecMode,
	beq	.L1005	@,
.L979:
	mov	r1, #0	@ i,
	mov	r8, r7	@ tmp310, tmp310
	mov	r7, r4	@ tmp308, tmp308
	mov	r4, r1	@ i, i
.L982:
	mov	r0, r5	@, MaxPriChan
	str	ip, [fp, #-76]	@,
	bl	DecChanSyntax	@
	ldr	ip, [fp, #-76]	@,
	cmp	r0, #0	@ ret
	beq	.L1006	@,
.L989:
	mov	r4, r7	@ tmp308, tmp308
	mov	r7, r8	@ tmp310, tmp310
	mov	r8, r0	@ ret, ret
	b	.L987	@
.L977:
	str	r1, [r2, #-2952]	@ tmp278, s_VfmwCTrl.s32ThisChanIDPlus1
	mov	r0, r8	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1005:
	mov	r0, r5	@, MaxPriChan
	sub	r1, fp, #68	@,,
	str	ip, [fp, #-76]	@,
	bl	SM_GetInfo	@
	ldr	ip, [fp, #-76]	@,
	cmp	r0, #0	@,
	beq	.L980	@,
	sub	r0, fp, #68	@,,
	mov	r1, #24	@,
	bl	__memzero	@
	ldr	ip, [fp, #-76]	@,
.L980:
	ldr	r8, [r6, r5, asl #2]	@ temp.4463, s_pstVfmwChan
	ldr	r1, [fp, #-56]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r8, #56]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r8, r9]	@, <variable>.stSynExtraData.s32DecMode
	str	ip, [fp, #-76]	@,
	bl	GetNextDecodeMode	@
	str	r0, [r8, r9]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r6, r5, asl #2]	@ temp.4465, s_pstVfmwChan
	ldr	ip, [fp, #-76]	@,
	ldr	r2, [r3, r9]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r2, #0	@ <variable>.stSynExtraData.s32DecMode,
	ldreq	r2, [r3, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	movne	r2, #0	@ tmp293,
	ldreq	r1, [fp, #-72]	@, %sfp
	ldrne	r1, [fp, #-72]	@, %sfp
	streq	r2, [r3, r1]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r3, [sl, r5, asl #2]	@ temp.4468, s_pstVfmwChan
	strne	r2, [r3, r1]	@ tmp293, <variable>.stSynExtraData.s32OutErrThr
	ldrne	r3, [sl, r5, asl #2]	@ tmp295, s_pstVfmwChan
	ldreq	r2, [r3, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	str	r2, [r3, ip]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L979	@
.L1006:
	add	r4, r4, #1	@ i, i,
	cmp	r4, #200	@ i,
	beq	.L989	@,
	b	.L982	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1416:
	@ args = 0, pretend = 0, frame = 24
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ tmp140, s_pstVfmwChan
	cmp	r3, #0	@ tmp140,
	beq	.L1010	@,
	sub	r1, fp, #44	@,,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1010	@,
	ldr	r0, [fp, #-36]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L1011	@,
	ldr	r1, [fp, #-28]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L1011	@,
.L1010:
	mvn	r0, #0	@ ret,
.L1009:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1011:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L1010	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #32]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L1009	@,
	b	.L1010	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_FlushDecoder
	.type	VCTRL_FlushDecoder, %function
VCTRL_FlushDecoder:
	.fnstart
.LFB1412:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp165,
	movt	r4, #:upper16:.LANCHOR0	@ tmp165,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.37559, s_pstVfmwChan
	cmp	r0, #0	@ D.37559,
	beq	.L1031	@,
	ldr	r3, [r0, #944]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #15	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L1017	@
.L1029:
	.word	.L1018
	.word	.L1019
	.word	.L1020
	.word	.L1021
	.word	.L1017
	.word	.L1022
	.word	.L1023
	.word	.L1017
	.word	.L1024
	.word	.L1025
	.word	.L1026
	.word	.L1026
	.word	.L1026
	.word	.L1027
	.word	.L1017
	.word	.L1028
.L1018:
	add	r0, r0, #952	@, D.37559,
	bl	H264_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r0, [r4, r5, asl #2]	@ tmp148, s_pstVfmwChan
	add	r0, r0, #952	@, tmp148,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L1032	@,
.L1017:
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1028:
	add	r0, r0, #952	@, D.37559,
	bl	MVC_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r2, [r4, r5, asl #2]	@ tmp153, s_pstVfmwChan
	mvn	r1, #0	@,
	add	r0, r2, #952	@, tmp153,
	bl	MVC_FlushDPB	@
	cmp	r0, #0	@,
	beq	.L1017	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC285	@,
	ldr	r2, .L1033	@,
	movt	r1, #:upper16:.LC285	@,
	movw	r3, #4258	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1019:
	add	r0, r0, #952	@, D.37559,
	bl	VC1DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1020:
	add	r0, r0, #952	@, D.37559,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1021:
	add	r0, r0, #952	@, D.37559,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1022:
	add	r0, r0, #952	@, D.37559,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1023:
	add	r0, r0, #952	@, D.37559,
	bl	AVSDEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1024:
	add	r0, r0, #952	@, D.37559,
	bl	REAL8DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1025:
	add	r0, r0, #952	@, D.37559,
	bl	REAL9DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1026:
	add	r0, r0, #952	@, D.37559,
	bl	VP6DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1027:
	add	r0, r0, #952	@, D.37559,
	bl	VP8DEC_GetRemainImg	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1032:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC284	@,
	movw	r2, #4247	@,
	movt	r1, #:upper16:.LC284	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1031:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4226	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37563,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1034:
	.align	2
.L1033:
	.word	.LANCHOR1+108
	.fnend
	.size	VCTRL_FlushDecoder, .-VCTRL_FlushDecoder
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1410:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp234,
	movt	r4, #:upper16:.LANCHOR0	@ tmp234,
	mov	r5, r0	@ ChanId, ChanId
	ldr	r0, [r4, r0, asl #2]	@ D.37486, s_pstVfmwChan
	cmp	r0, #0	@ D.37486,
	beq	.L1061	@,
	ldr	ip, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, ip, asl #2]	@ <variable>.eVidStd
	b	.L1056	@
.L1049:
	.word	.L1038
	.word	.L1039
	.word	.L1040
	.word	.L1041
	.word	.L1056
	.word	.L1042
	.word	.L1043
	.word	.L1056
	.word	.L1044
	.word	.L1045
	.word	.L1046
	.word	.L1046
	.word	.L1046
	.word	.L1047
	.word	.L1056
	.word	.L1048
.L1048:
	add	r0, r0, #952	@, D.37486,
	mov	r2, #1	@,
	bl	MVC_DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4627, s_pstVfmwChan
	movw	r6, #14508	@ tmp225,
	movw	r4, #:lower16:.LANCHOR0	@ tmp224,
	movt	r4, #:upper16:.LANCHOR0	@ tmp224,
	ldrb	r0, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag,
	beq	.L1062	@,
.L1055:
	mov	lr, #0	@ tmp233,
	str	lr, [r3, #1312]	@ tmp233, <variable>.stSynCtx.unSyntax.stMvcCtx.pMvcDecParam
.L1056:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1038:
	mov	r2, #1	@,
	add	r0, r0, #952	@, D.37486,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4592, s_pstVfmwChan
	movw	r6, #14508	@ tmp150,
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	ldrb	r2, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1063	@,
.L1050:
	mov	r1, #0	@ tmp158,
	str	r1, [r3, #1312]	@ tmp158, <variable>.stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1039:
	add	r0, r0, #952	@, D.37486,
	bl	VC1DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4624, s_pstVfmwChan
	movw	r4, #:lower16:79199	@ tmp206,
	movt	r4, #:upper16:79199	@ tmp206,
.L1060:
	ldrb	lr, [r3, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r6, #:lower16:.LANCHOR0	@ tmp205,
	movt	r6, #:upper16:.LANCHOR0	@ tmp205,
	cmp	lr, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	beq	.L1064	@,
.L1057:
	mov	ip, #0	@ tmp218,
	str	ip, [r3, #956]	@ tmp218,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1040:
	mov	r2, r3	@, pLumaInfo
	add	r0, r0, #952	@, D.37486,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4618, s_pstVfmwChan
	movw	r6, #54688	@ tmp172,
	movw	r4, #:lower16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp171,
	ldrb	ip, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	ip, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L1065	@,
.L1052:
	mov	lr, #0	@ tmp180,
	str	lr, [r3, #1988]	@ tmp180, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1041:
	add	r0, r0, #952	@, D.37486,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4615, s_pstVfmwChan
	movw	r4, #:lower16:109481	@ tmp161,
	movt	r4, #:upper16:109481	@ tmp161,
	b	.L1060	@
.L1042:
	add	r0, r0, #952	@, D.37486,
	bl	DIVX3DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp202, s_pstVfmwChan
	mov	r2, #0	@ tmp203,
	str	r2, [r3, #956]	@ tmp203,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1043:
	add	r0, r0, #952	@, D.37486,
	movw	r6, #18060	@ tmp183,
	bl	AVSDEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4621, s_pstVfmwChan
	movw	r4, #:lower16:.LANCHOR0	@ tmp182,
	movt	r4, #:upper16:.LANCHOR0	@ tmp182,
	ldrb	r1, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	bne	.L1057	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp186, s_pstVfmwChan
	mov	ip, #0	@ tmp188,
	strb	ip, [r3, r6]	@ tmp188, <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4621, s_pstVfmwChan
	b	.L1057	@
.L1044:
	add	r0, r0, #952	@, D.37486,
	bl	REAL8DEC_VDMPostProc	@
	ldr	r0, [r4, r5, asl #2]	@ tmp194, s_pstVfmwChan
	mov	r2, #0	@ tmp195,
	str	r2, [r0, #956]	@ tmp195,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1045:
	add	r0, r0, #952	@, D.37486,
	bl	REAL9DEC_VDMPostProc	@
	ldr	ip, [r4, r5, asl #2]	@ tmp198, s_pstVfmwChan
	mov	r1, #0	@ tmp199,
	str	r1, [ip, #956]	@ tmp199,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1046:
	add	r0, r0, #952	@, D.37486,
	bl	VP6DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp217, s_pstVfmwChan
	b	.L1057	@
.L1047:
	add	r0, r0, #952	@, D.37486,
	bl	VP8DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp221, s_pstVfmwChan
	mov	r2, #0	@ tmp222,
	str	r2, [r3, #956]	@ tmp222,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1061:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4094	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1064:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r6, r5, asl #2]	@ tmp209, s_pstVfmwChan
	mov	r0, #0	@ tmp211,
	strb	r0, [r1, r4]	@ tmp211,
	ldr	r3, [r6, r5, asl #2]	@ prephitmp.4624, s_pstVfmwChan
	b	.L1057	@
.L1063:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp153, s_pstVfmwChan
	mov	r0, #0	@ tmp155,
	strb	r0, [r3, r6]	@ tmp155, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4592, s_pstVfmwChan
	b	.L1050	@
.L1065:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r4, r5, asl #2]	@ tmp175, s_pstVfmwChan
	mov	r2, #0	@ tmp177,
	strb	r2, [r0, r6]	@ tmp177, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4618, s_pstVfmwChan
	b	.L1052	@
.L1062:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	ip, [r4, r5, asl #2]	@ tmp228, s_pstVfmwChan
	mov	r1, #0	@ tmp230,
	strb	r1, [ip, r6]	@ tmp230, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4627, s_pstVfmwChan
	b	.L1055	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
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
	cmp	r0, #15	@ ChanId,
	mov	r4, r0	@ ChanId, ChanId
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r5, r3	@ pLumaInfo, pLumaInfo
	bhi	.L1072	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r3, r0, asl #2]	@ D.37530, s_pstVfmwChan
	cmp	r3, #0	@ D.37530,
	beq	.L1073	@,
	ldr	r1, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L1070	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4212	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC275	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1070:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r4	@, ChanId
	mov	r1, r7	@, ErrRatio
	mov	r2, r6	@, Mb0QpInCurrPic
	mov	r3, r5	@, pLumaInfo
	bl	VCTRL_PostProc	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1072:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4210	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC25	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1073:
	mov	r0, r3	@, D.37530
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4211	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ExtAccPostProcess
	.type	VCTRL_ExtAccPostProcess, %function
VCTRL_ExtAccPostProcess:
	.fnstart
.LFB1442:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #140
	sub	sp, sp, #140	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR3	@ tmp137,
	sub	r7, fp, #172	@ tmp136,,
	movt	r5, #:upper16:.LANCHOR3	@ tmp137,
	sub	r4, r5, #2832	@ tmp141, tmp137,
	sub	r5, r5, #2848	@ tmp138, tmp137,
	mov	r6, r0	@ ChanID, ChanID
	mov	r8, r1	@ ErrorRatio, ErrorRatio
	sub	r4, r4, #4	@ tmp141, tmp141,
	mov	r1, #136	@,
	mov	r0, r7	@, tmp136
	bl	__memzero	@
	mov	r0, r5	@, tmp138
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, tmp141
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r8	@, ErrorRatio
	mov	r3, r7	@, tmp136
	mov	r2, #0	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_VdmPostProc	@
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, tmp141
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, tmp138
	bl	OSAL_SpinUnLockIRQ	@
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	VCTRL_ExtAccPostProcess, .-VCTRL_ExtAccPostProcess
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1405:
	@ args = 0, pretend = 0, frame = 456
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #456
	sub	sp, sp, #456	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L1090	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp145,
	movt	r5, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r5, r0, asl #2]	@ D.37291, s_pstVfmwChan
	cmp	r0, #0	@ D.37291,
	beq	.L1091	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1092	@,
	cmp	r1, #0	@ pImage,
	beq	.L1093	@,
	mov	r2, r4	@, ChanID
	ldr	r3, [r1, #176]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC287	@,
	movt	r1, #:upper16:.LC287	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ temp.4705, s_pstVfmwChan
	cmp	r0, #0	@ temp.4705,
	movweq	r1, #:lower16:.LC288	@,
	movweq	r2, #3811	@,
	movteq	r1, #:upper16:.LC288	@,
	beq	.L1089	@,
	ldr	r1, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L1094	@,
	add	r0, r0, #944	@, temp.4705,
	mov	r1, r6	@, pImage
	bl	SYNTAX_ReleaseImage	@
	movw	r2, #:lower16:.LANCHOR2	@ tmp163,
	movt	r2, #:upper16:.LANCHOR2	@ tmp163,
	mov	r7, r0	@ ret.4701,
	ldr	r0, [r2, #64]	@ g_SupportMVC, g_SupportMVC
	cmp	r0, #1	@ g_SupportMVC,
	beq	.L1095	@,
.L1084:
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1096	@,
.L1085:
	cmp	r7, #1	@ ret.4701,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L1078:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1096:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp170,
	movt	r3, #:upper16:.LANCHOR3	@ tmp170,
	movw	r2, #:lower16:g_TraceImgPeriod	@ tmp177,
	add	r3, r3, r4, asl #2	@, tmp173, tmp170, ChanID,
	movt	r2, #:upper16:g_TraceImgPeriod	@ tmp177,
	ldr	r1, [r3, #-2824]	@ tmp176, last_rec_pos_time
	mov	ip, r0	@ currtime,
	ldr	r0, [r2, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, r1, ip	@ tmp175, tmp176, currtime
	cmp	r1, r0	@ tmp175, g_TraceImgPeriod
	bls	.L1085	@,
	mov	r4, r4, asl #24	@ tmp186, ChanID,
	ldr	r0, .L1097	@,
	add	r2, r4, #851968	@ tmp187, tmp186,
	movw	r1, #3848	@,
	cmp	r7, #1	@ ret.4701,
	addeq	r2, r2, #1	@,,, tmp187
	str	ip, [r3, #-2824]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L1085	@
.L1095:
	ldr	r3, [r6, #224]	@ D.37312, <variable>.image_id_1
	cmn	r3, #1	@ D.37312,
	beq	.L1084	@,
	ldr	r7, [r5, r4, asl #2]	@ tmp167, s_pstVfmwChan
	sub	r1, fp, #484	@,,
	str	r3, [fp, #-308]	@ D.37312, Image_1.image_id
	add	r0, r7, #944	@, tmp167,
	bl	SYNTAX_ReleaseImage	@
	mov	r7, r0	@ ret.4701,
	b	.L1084	@
.L1094:
	movw	r1, #:lower16:.LC289	@,
	movt	r1, #:upper16:.LC289	@,
	movw	r2, #3817	@,
	mov	r0, #0	@,
.L1089:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1078	@
.L1092:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3803	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L1078	@
.L1090:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3801	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L1078	@
.L1093:
	mov	r0, r1	@, pImage
	movw	r2, #3804	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC286	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L1078	@
.L1091:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3802	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L1078	@
.L1098:
	.align	2
.L1097:
	.word	.LANCHOR1+128
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1404:
	@ args = 0, pretend = 0, frame = 456
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #468
	sub	sp, sp, #468	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC290	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC290	@,
	bl	dprint_vfmw	@
	cmp	r4, #15	@ ChanID,
	bhi	.L1117	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp246,
	movt	r7, #:upper16:.LANCHOR0	@ tmp246,
	ldr	r0, [r7, r4, asl #2]	@ D.37206, s_pstVfmwChan
	cmp	r0, #0	@ D.37206,
	beq	.L1118	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1119	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r7, r4, asl #2]	@ temp.4736, s_pstVfmwChan
	cmp	r0, #0	@ temp.4736,
	movweq	r1, #:lower16:.LC288	@,
	moveq	r2, #3648	@,
	movteq	r1, #:upper16:.LC288	@,
	beq	.L1116	@,
	ldr	r8, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r8, #1	@ <variable>.s32IsOpen,
	bne	.L1120	@,
	mov	r1, r5	@, pImage
	add	r0, r0, #944	@, temp.4736,
	bl	SYNTAX_ReceiveImage	@
	movw	r1, #:lower16:.LANCHOR2	@ tmp164,
	movt	r1, #:upper16:.LANCHOR2	@ tmp164,
	mvn	r2, #0	@ tmp161,
	str	r2, [r5, #224]	@ tmp161, <variable>.image_id_1
	mov	r6, r0	@ ret.4733,
	ldr	r0, [r1, #64]	@ g_SupportMVC, g_SupportMVC
	cmp	r6, #1	@ ret.4733,
	cmpeq	r0, #1	@, g_SupportMVC,
	beq	.L1121	@,
.L1106:
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1122	@,
.L1112:
	cmp	r6, #1	@ ret.4733,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L1101:
	mov	r0, r4	@, ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1121:
	ldr	ip, [r5, #228]	@ <variable>.is_3D, <variable>.is_3D
	cmp	ip, #1	@ <variable>.is_3D,
	movne	r6, r8	@ ret.4733, <variable>.s32IsOpen
	bne	.L1106	@,
	ldr	r6, [r7, r4, asl #2]	@ tmp174, s_pstVfmwChan
	sub	r1, fp, #492	@,,
	add	r0, r6, #944	@, tmp174,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@ ret.4733,
	mov	r6, r0	@ ret.4733,
	beq	.L1108	@,
	ldr	lr, [r7, r4, asl #2]	@ tmp179, s_pstVfmwChan
	add	r0, lr, #944	@, tmp179,
	bl	SYNTAX_ReturnImage	@
	b	.L1106	@
.L1122:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp221,
	movt	r3, #:upper16:.LANCHOR3	@ tmp221,
	add	r3, r3, r4, asl #2	@, tmp224, tmp221, ChanID,
	ldr	r1, [r3, #-2760]	@ tmp227, last_rec_pos_time
	mov	ip, r0	@ currtime,
	movw	r0, #:lower16:g_TraceImgPeriod	@ tmp228,
	movt	r0, #:upper16:g_TraceImgPeriod	@ tmp228,
	ldr	r2, [r0, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r0, r1, ip	@ tmp226, tmp227, currtime
	cmp	r0, r2	@ tmp226, g_TraceImgPeriod
	bls	.L1112	@,
	mov	r4, r4, asl #24	@ tmp237, ChanID,
	ldr	r0, .L1124	@,
	add	r2, r4, #786432	@ tmp238, tmp237,
	movw	r1, #3738	@,
	cmp	r6, #1	@ ret.4733,
	addeq	r2, r2, #1	@,,, tmp238
	str	ip, [r3, #-2760]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L1112	@
.L1119:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3641	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L1101	@
.L1120:
	movw	r1, #:lower16:.LC289	@,
	movt	r1, #:upper16:.LC289	@,
	movw	r2, #3654	@,
	mov	r0, #0	@,
.L1116:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1101	@
.L1108:
	ldr	r3, [r5, #220]	@ D.37233, <variable>.view_id
	ldr	r0, [fp, #-272]	@ D.37234, Image_1.view_id
	cmp	r3, r0	@ D.37233, D.37234
	bge	.L1109	@,
	ldr	r7, [fp, #-400]	@ Image_1.top_chrom_phy_addr, Image_1.top_chrom_phy_addr
	sub	lr, fp, #120	@ tmp185,,
	add	ip, r5, #252	@ tmp184, pImage,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp247,,,,
	str	r7, [r5, #236]	@ Image_1.top_chrom_phy_addr, <variable>.top_chrom_phy_addr_1
	ldr	r7, [fp, #-404]	@ Image_1.top_luma_phy_addr, Image_1.top_luma_phy_addr
	str	r7, [r5, #232]	@ Image_1.top_luma_phy_addr, <variable>.top_luma_phy_addr_1
	ldr	r7, [fp, #-396]	@ Image_1.btm_luma_phy_addr, Image_1.btm_luma_phy_addr
	str	r7, [r5, #240]	@ Image_1.btm_luma_phy_addr, <variable>.btm_luma_phy_addr_1
	ldr	r7, [fp, #-392]	@ Image_1.btm_chrom_phy_addr, Image_1.btm_chrom_phy_addr
	str	r7, [r5, #244]	@ Image_1.btm_chrom_phy_addr, <variable>.btm_chrom_phy_addr_1
	mov	r7, ip	@ tmp248, tmp184
	stmia	r7!, {r0, r1, r2, r3}	@ tmp248,,,,
	mov	ip, r7	@ tmp250, tmp248
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp249,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp250,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp251,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp250,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp251,,,
	stmia	ip, {r0, r1, r2}	@ tmp252,,,
	ldr	r3, [fp, #-316]	@ Image_1.image_id, Image_1.image_id
	mov	r1, #3	@ tmp187,
	str	r1, [r5, #316]	@ tmp187, <variable>.eFramePackingType
	str	r3, [r5, #224]	@ Image_1.image_id, <variable>.image_id_1
	b	.L1106	@
.L1117:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3637	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L1101	@
.L1109:
	bgt	.L1123	@,
	cmp	r3, #0	@ D.37233,
	bne	.L1111	@,
	ldr	r1, [r7, r4, asl #2]	@ tmp201, s_pstVfmwChan
	mvn	r6, #1	@ ret.4733,
	add	r0, r1, #944	@, tmp201,
	bl	SYNTAX_ReturnImage	@
	ldr	r3, [r7, r4, asl #2]	@ tmp204, s_pstVfmwChan
	mov	r1, r5	@, pImage
	add	r0, r3, #944	@, tmp204,
	bl	SYNTAX_ReleaseImage	@
	ldr	r3, [r5, #220]	@, <variable>.view_id
	movw	r1, #:lower16:.LC292	@,
	ldr	r2, .L1124	@,
	movt	r1, #:upper16:.LC292	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1106	@
.L1111:
	ldr	lr, [r7, r4, asl #2]	@ tmp211, s_pstVfmwChan
	mov	r1, r5	@, pImage
	mvn	r6, #1	@ ret.4733,
	add	r0, lr, #944	@, tmp211,
	bl	SYNTAX_ReleaseImage	@
	ldr	ip, [r7, r4, asl #2]	@ tmp214, s_pstVfmwChan
	sub	r1, fp, #492	@,,
	add	r0, ip, #944	@, tmp214,
	bl	SYNTAX_ReleaseImage	@
	ldr	r3, [r5, #220]	@, <variable>.view_id
	movw	r1, #:lower16:.LC293	@,
	ldr	r2, .L1124	@,
	movt	r1, #:upper16:.LC293	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1106	@
.L1123:
	ldr	r0, [r7, r4, asl #2]	@ tmp190, s_pstVfmwChan
	mvn	r6, #1	@ ret.4733,
	add	r0, r0, #944	@, tmp190,
	bl	SYNTAX_ReturnImage	@
	ldr	r2, [r7, r4, asl #2]	@ tmp193, s_pstVfmwChan
	mov	r1, r5	@, pImage
	add	r0, r2, #944	@, tmp193,
	bl	SYNTAX_ReleaseImage	@
	ldr	ip, [fp, #-272]	@ Image_1.view_id, Image_1.view_id
	ldr	r3, [r5, #220]	@ <variable>.view_id, <variable>.view_id
	movw	r1, #:lower16:.LC291	@,
	ldr	r2, .L1124	@,
	movt	r1, #:upper16:.LC291	@,
	mov	r0, #1	@,
	str	ip, [sp, #0]	@ Image_1.view_id,
	bl	dprint_vfmw	@
	b	.L1106	@
.L1118:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3638	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L1101	@
.L1125:
	.align	2
.L1124:
	.word	.LANCHOR1+152
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
.LFB1402:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r0, #0	@ tmp138,
	beq	.L1131	@,
	ldr	r0, .L1132	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	mov	r4, r0	@ ret,
	ldr	r0, .L1132	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #0	@ ret,
	moveq	r0, r4	@, D.37138, ret
	mvnne	r0, #0	@, D.37138,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1131:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3524	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37138,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1133:
	.align	2
.L1132:
	.word	.LANCHOR3-2848
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
.LFB1400:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #88
	sub	sp, sp, #88	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #104	@ tmp140,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #76	@,
	mov	r0, r4	@, tmp140
	bl	__memzero	@
	mov	r1, r4	@, tmp140
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	ldr	r0, [fp, #-104]	@ D.37045, stCfgInfo.eVidStd
	movw	r3, #:lower16:.LANCHOR3	@ tmp196,
	movt	r3, #:upper16:.LANCHOR3	@ tmp196,
	cmp	r0, #0	@ D.37045,
	ldr	r4, [r3, #-2696]	@ eDSPState, g_DSPState
	movne	r2, #0	@ ScdLowdlyEnable,
	ldreq	r2, [fp, #-56]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2692]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2688]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2684]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2680]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2676]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2672]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2668]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2664]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2660]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2656]	@ eDSPState, g_DSPState
	mov	r6, r3	@ tmp152, tmp196
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2652]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2648]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2644]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2640]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	ldr	r4, [r3, #-2636]	@ eDSPState, g_DSPState
	cmp	r4, #0	@ eDSPState,
	bne	.L1137	@,
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	r7, #0	@, tmp171
	moveq	r7, #1	@, tmp171
	cmp	r0, #6	@ D.37045,
	movne	r3, #0	@, temp.4807
	moveq	r3, #1	@, temp.4807
	cmp	r7, #0	@ tmp171,
	bne	.L1148	@,
	cmp	r3, #0	@ temp.4807,
	beq	.L1143	@,
	mov	r0, #6	@,
	add	r5, r6, r5, asl #2	@, tmp192, tmp152, ChanID,
	bl	WriteHexFile	@
	mov	r0, r7	@ ret, tmp171
	mov	r1, #2	@ tmp194,
	str	r1, [r5, #-2696]	@ tmp194, g_DSPState
.L1144:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1137:
	cmp	r4, #2	@ eDSPState,
	cmpeq	r2, #1	@, ScdLowdlyEnable,
	beq	.L1139	@,
	cmp	r4, #1	@ eDSPState,
	cmpeq	r0, #6	@, D.37045,
	beq	.L1139	@,
.L1143:
	mov	r0, #0	@ ret,
	b	.L1144	@
.L1139:
	mov	r3, r0	@, D.37045
	movw	r1, #:lower16:.LC294	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC294	@,
	str	r4, [sp, #0]	@ eDSPState,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L1144	@
.L1148:
	add	r5, r6, r5, asl #2	@, tmp183, tmp152, ChanID,
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp185,
	mov	r0, r4	@ ret, eDSPState
	str	r3, [r5, #-2696]	@ tmp185, g_DSPState
	b	.L1144	@
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
.LFB1399:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r3, r0, asl #2]	@ D.37008, s_pstVfmwChan
	cmp	r2, #0	@ D.37008,
	beq	.L1156	@,
	ldr	r2, [r2, #936]	@ D.37016, <variable>.eVidStd
	sub	ip, r2, #10	@ tmp143, D.37016,
	cmp	ip, #2	@ tmp143,
	bls	.L1157	@,
	cmp	r2, #4	@ D.37016,
	bne	.L1158	@,
.L1153:
	mvn	r0, #0	@ D.37012,
	ldmfd	sp, {fp, sp, pc}	@
.L1157:
	ldr	r3, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L1153	@,
.L1154:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp, {fp, sp, pc}	@
	b	.L1153	@
.L1158:
	cmp	r2, #14	@ D.37016,
	beq	.L1153	@,
	b	.L1154	@
.L1156:
	mov	r0, r2	@, D.37008
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3338	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37012,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
.LFB1387:
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
	ldr	r3, [r1, #48]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	mov	r4, r1	@ pstChan, pstChan
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	beq	.L1168	@,
.L1160:
	ldr	r0, [r4, #16]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #52]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L1169	@,
.L1162:
	ldr	r1, [r4, #32]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1170	@,
.L1163:
	add	r0, r4, #12
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r2, [r4, #32]	@ temp.4862, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.4862,
	bne	.L1171	@,
.L1164:
	ldr	r2, [r4, #56]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L1172	@,
.L1165:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1168:
	ldr	r0, [r1, #12]	@ D.36091, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36091,
	beq	.L1160	@,
	ldr	r1, [r1, #16]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #52]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1162	@,
.L1169:
	ldr	r0, [r4, #24]	@ D.36099, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36099,
	beq	.L1162	@,
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1163	@
.L1172:
	ldr	r0, [r4, #36]	@ D.36113, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36113,
	beq	.L1165	@,
	ldr	r1, [r4, #40]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1171:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	b	.L1164	@
.L1170:
	ldr	r0, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L1163	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1393:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1179	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r4, r0, asl #2]	@ D.36577, s_pstVfmwChan
	cmp	r3, #0	@ D.36577,
	beq	.L1180	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1181	@,
	str	r2, [r3, #24]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r6, #0	@ tmp148,
	ldr	r1, [r4, r0, asl #2]	@ tmp147, s_pstVfmwChan
	str	r6, [r1, #16]	@ tmp148, <variable>.s32IsRun
	bl	SM_Stop	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ tmp150, s_pstVfmwChan
	mov	r0, r6	@ D.36575, tmp148
	str	r6, [r3, #24]	@ tmp148, <variable>.s32StopSyntax
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1181:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2627	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC296	@,
	movt	r3, #:upper16:.LC296	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36575,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1179:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2625	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36575,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1180:
	mov	r0, r3	@, D.36577
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2626	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC295	@,
	movt	r3, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36575,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1392:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1222	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp325,
	movt	r4, #:upper16:.LANCHOR0	@ tmp325,
	ldr	r3, [r4, r0, asl #2]	@ D.36550, s_pstVfmwChan
	cmp	r3, #0	@ D.36550,
	beq	.L1223	@,
	ldr	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1224	@,
	ldr	r3, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1225	@,
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp167, s_pstVfmwChan
	mov	r0, #0	@ tmp171,
	str	r6, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	str	r0, [r1, #24]	@ tmp171, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ temp.4926, s_pstVfmwChan
	ldr	r2, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	beq	.L1226	@,
.L1188:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36548,
.L1184:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1226:
	sub	r7, fp, #32	@ tmp326,,
	str	r6, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32Priority
	mov	r0, r7	@, tmp326
	bl	OSAL_LockIRQ	@
	ldr	r1, [r4, #0]	@ temp.4928, s_pstVfmwChan
	cmp	r1, #0	@ temp.4928,
	beq	.L1227	@,
	ldr	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r3, #:lower16:.LANCHOR3	@ tmp327,
	movt	r3, #:upper16:.LANCHOR3	@ tmp327,
	movw	r2, #:lower16:g_ChanCtx	@ tmp328,
	movt	r2, #:upper16:g_ChanCtx	@ tmp328,
	str	r0, [r3, #-2632]	@ <variable>.s32Priority, PrioArray
	ldr	lr, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L1190:
	ldr	lr, [r4, #4]	@ temp.4931, s_pstVfmwChan
	ldr	ip, [r4, #8]	@ temp.4934, s_pstVfmwChan
	cmp	lr, #0	@ temp.4931,
	ldr	r1, [r4, #12]	@ temp.4937, s_pstVfmwChan
	streq	lr, [r3, #-2628]	@ temp.4931, PrioArray
	ldrne	r0, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #4]	@ temp.4931, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2628]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4934,
	streq	ip, [r3, #-2624]	@ temp.4934, PrioArray
	ldrne	r0, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #8]	@ temp.4934, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #16]	@ temp.4940, s_pstVfmwChan
	strne	r0, [r3, #-2624]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4937,
	streq	r1, [r3, #-2620]	@ temp.4937, PrioArray
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #12]	@ temp.4937, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #20]	@ temp.4943, s_pstVfmwChan
	strne	r0, [r3, #-2620]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4940,
	streq	lr, [r3, #-2616]	@ temp.4940, PrioArray
	ldrne	r0, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #16]	@ temp.4940, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2616]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #16]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4943,
	streq	ip, [r3, #-2612]	@ temp.4943, PrioArray
	ldrne	r0, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #20]	@ temp.4943, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2612]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #20]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #24]	@ temp.4946, s_pstVfmwChan
	ldr	lr, [r4, #28]	@ temp.4949, s_pstVfmwChan
	cmp	r1, #0	@ temp.4946,
	ldr	ip, [r4, #32]	@ temp.4952, s_pstVfmwChan
	streq	r1, [r3, #-2608]	@ temp.4946, PrioArray
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #24]	@ temp.4946, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2608]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #24]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4949,
	streq	lr, [r3, #-2604]	@ temp.4949, PrioArray
	ldrne	r0, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #28]	@ temp.4949, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #36]	@ temp.4955, s_pstVfmwChan
	strne	r0, [r3, #-2604]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #28]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4952,
	streq	ip, [r3, #-2600]	@ temp.4952, PrioArray
	ldrne	r0, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #32]	@ temp.4952, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #40]	@ temp.4958, s_pstVfmwChan
	strne	r0, [r3, #-2600]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #32]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4955,
	streq	r1, [r3, #-2596]	@ temp.4955, PrioArray
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #36]	@ temp.4955, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2596]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #36]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4958,
	streq	lr, [r3, #-2592]	@ temp.4958, PrioArray
	ldrne	r0, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #40]	@ temp.4958, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-2592]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #40]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #44]	@ temp.4961, s_pstVfmwChan
	ldr	r1, [r4, #48]	@ temp.4964, s_pstVfmwChan
	cmp	ip, #0	@ temp.4961,
	ldr	lr, [r4, #52]	@ temp.4967, s_pstVfmwChan
	streq	ip, [r2, #44]	@ temp.4961, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-2588]	@ temp.4961, PrioArray
	strne	r0, [r3, #-2588]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #44]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4964,
	streq	r1, [r2, #48]	@ temp.4964, g_ChanCtx.PriorByChanId
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r3, #-2584]	@ temp.4964, PrioArray
	ldr	ip, [r4, #56]	@ temp.4970, s_pstVfmwChan
	strne	r0, [r3, #-2584]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #48]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4967,
	streq	lr, [r2, #52]	@ temp.4967, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r3, #-2580]	@ temp.4967, PrioArray
	ldr	r1, [r4, #60]	@ D.36563, s_pstVfmwChan
	strne	r0, [r3, #-2580]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #52]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4970,
	streq	ip, [r2, #56]	@ temp.4970, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-2576]	@ temp.4970, PrioArray
	strne	r0, [r3, #-2576]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #56]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ D.36563,
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #-2572]	@ <variable>.s32Priority, PrioArray
	ldrne	r3, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1228	@,
	strne	r3, [r2, #60]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	streq	r1, [r2, #60]	@ D.36563, g_ChanCtx.PriorByChanId
	streq	r1, [r3, #-2572]	@ D.36563, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r7	@, tmp326
	bl	OSAL_UnLockIRQ	@
	b	.L1188	@
.L1224:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2559	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36548,
	b	.L1184	@
.L1227:
	movw	r3, #:lower16:.LANCHOR3	@ tmp327,
	movw	r2, #:lower16:g_ChanCtx	@ tmp328,
	movt	r3, #:upper16:.LANCHOR3	@ tmp327,
	movt	r2, #:upper16:g_ChanCtx	@ tmp328,
	str	r1, [r3, #-2632]	@ temp.4928, PrioArray
	str	r1, [r2, #0]	@ temp.4928, g_ChanCtx.PriorByChanId
	b	.L1190	@
.L1222:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2557	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36548,
	b	.L1184	@
.L1225:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #2560	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC297	@,
	movt	r3, #:upper16:.LC297	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36548,
	b	.L1184	@
.L1223:
	mov	r0, r3	@, D.36550
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2558	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC129	@,
	movt	r3, #:upper16:.LC129	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36548,
	b	.L1184	@
.L1229:
	.align	2
.L1228:
	.word	.LANCHOR3-2632
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1386:
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
	mov	r4, r0	@ ChanID, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
.LFB1385:
	@ args = 4, pretend = 0, frame = 48
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
	mov	r7, r2	@ MaxHeight, MaxHeight
	movw	r2, #:lower16:.LANCHOR0	@ tmp180,
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r7, #31	@, MaxHeight,
	movt	r2, #:upper16:.LANCHOR0	@ tmp180,
	mov	r5, r1	@ MaxWidth, MaxWidth
	mov	r6, r0	@ ChanID, ChanID
	movgt	r1, #0	@, tmp187
	movle	r1, #1	@, tmp187
	ldr	r4, [r2, r0, asl #2]	@ pstChan, s_pstVfmwChan
	mov	sl, r3	@ MemAddr, MemAddr
	ldr	r2, [fp, #4]	@ MemSize, MemSize
	ble	.L1248	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	r8, #0	@, tmp195
	moveq	r8, #1	@, tmp195
	beq	.L1249	@,
	sub	r9, fp, #84	@ tmp197,,
	mov	r1, #36	@,
	str	r2, [fp, #-88]	@,
	mov	r0, r9	@, tmp197
	bl	__memzero	@
	mov	r1, r9	@, tmp197
	mov	r0, r6	@, ChanID
	str	r5, [fp, #-56]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r5, [fp, #-72]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	mov	r3, #1	@,
	str	r7, [fp, #-52]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	r8, [fp, #-84]	@ tmp195, FspInstCfg.s32DispLoopEnable
	strb	r8, [fp, #-82]	@ tmp195, FspInstCfg.s32RprEnable
	str	r7, [fp, #-68]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	r8, [fp, #-79]	@ tmp195, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [fp, #-77]	@ tmp195, FspInstCfg.s32ExpectedDispFsNum
	strb	r8, [fp, #-76]	@ tmp195, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [fp, #-80]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [fp, #-88]	@,
	subs	r5, r0, #0	@ D.36050,
	bne	.L1236	@,
	mov	r1, sl	@, MemAddr
	mov	r0, r6	@, ChanID
	sub	r3, fp, #48	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r7, r0, #0	@ Ret,
	bne	.L1250	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp213,
	movt	r5, #:upper16:.LANCHOR3	@ tmp213,
	mov	r0, r6	@, ChanID
	ldr	r1, .L1252	@,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r5, #-2567]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.36060, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.36060,
	movge	r0, #16	@ D.36060,
	str	r0, [r4, #876]	@ D.36060, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.36060,
	ble	.L1251	@,
	ldr	ip, [r5, #512]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r4, #808	@, pstChan,
	mov	r1, #64	@,
	str	ip, [r4, #872]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r4, #744	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r5, [r4, #876]	@ D.36059, <variable>.s32UsrdecFrameNum
	cmp	r5, #0	@ D.36059,
	ble	.L1239	@,
	ldr	r3, .L1252	@ ivtmp.5023,
	mov	r2, #1	@ i,
	cmp	r2, r5	@ i, D.36059
	sub	r0, r5, #1	@ tmp232, D.36059,
	and	ip, r0, r2	@ tmp234, tmp232,
	add	r1, r4, #4	@ ivtmp.5026, pstChan,
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, .L1252+4	@ ivtmp.5023,
	str	lr, [r4, #808]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	bge	.L1239	@,
	cmp	ip, #0	@ tmp234,
	beq	.L1240	@,
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r5	@ i, D.36059
	ldr	r3, .L1252+8	@ ivtmp.5023,
	str	lr, [r1, #808]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.5026, ivtmp.5026,
	bge	.L1239	@,
.L1240:
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	lr, r1, #4	@ tmp236, ivtmp.5026,
	cmp	r2, r5	@ i, D.36059
	str	r0, [r1, #808]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, lr, #4	@ ivtmp.5026, tmp236,
	ldr	ip, [r3, #68]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #96	@ ivtmp.5023, ivtmp.5023,
	str	ip, [lr, #808]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1240	@,
.L1239:
	mov	r0, #0	@ D.36038,
.L1234:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1249:
	mov	r0, r1	@, tmp187
	movw	r1, #:lower16:.LC299	@,
	movt	r1, #:upper16:.LC299	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36038,
	b	.L1234	@
.L1236:
	mov	r0, r8	@, tmp195
	movw	r1, #:lower16:.LC302	@,
	movt	r1, #:upper16:.LC302	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36038,
	b	.L1234	@
.L1250:
	mov	r0, r5	@, D.36050
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36038,
	b	.L1234	@
.L1251:
	mov	r0, r7	@, Ret
	movw	r1, #:lower16:.LC301	@,
	ldr	r2, .L1252+12	@,
	movt	r1, #:upper16:.LC301	@,
	movw	r3, #1558	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36038,
	b	.L1234	@
.L1248:
	mov	r2, r5	@, MaxWidth
	mov	r3, r7	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36038,
	b	.L1234	@
.L1253:
	.align	2
.L1252:
	.word	.LANCHOR3-2568
	.word	.LANCHOR3-2520
	.word	.LANCHOR3-2472
	.word	.LANCHOR1+172
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp145,
	movt	r4, #:upper16:.LANCHOR3	@ tmp145,
	ldr	r3, [r4, #-3008]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #-2964]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1259	@
.L1257:
	bl	msleep	@
	ldr	r1, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1264	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1266	@,
.L1259:
	ldr	r3, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1257	@,
.L1264:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #-2964]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1266:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #-2964]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp145,
	movt	r4, #:upper16:.LANCHOR3	@ tmp145,
	ldr	r3, [r4, #-3008]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #-2964]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1272	@
.L1270:
	bl	msleep	@
	ldr	r2, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1277	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1279	@,
.L1272:
	ldr	r1, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1270	@,
.L1277:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #-2964]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1279:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #-2964]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1372:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp288,
	movt	r4, #:upper16:.LANCHOR3	@ tmp288,
	mov	r5, r0	@ event_report, event_report
	ldr	r6, [r4, #-3008]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r6, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1304	@,
.L1281:
	mvn	r0, #0	@ D.35771,
.L1302:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1304:
	movw	r7, #:lower16:saved_command_line	@ tmp286,
	movt	r7, #:upper16:saved_command_line	@ tmp286,
	mov	r2, #1024	@,
	add	r0, r4, #516	@, tmp288,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r6, [fp, #-40]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #516	@, tmp288,
	movw	r1, #:lower16:.LC303	@,
	movt	r1, #:upper16:.LC303	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp172,
	str	r0, [fp, #-40]	@ tmp172, p
	beq	.L1282	@,
	sub	r8, fp, #40	@ p.666,,
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	mov	r0, r8	@, p.666
	bl	strsep	@
	cmp	r0, #0	@ D.45088
	beq	.L1283	@,
	mov	r0, r8	@, p.666
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1305	@,
	mov	r1, r6	@, s_VfmwCTrl.s32IsVCTRLOpen
	movw	r6, #:lower16:.LANCHOR0	@ tmp287,
	mov	r2, r1	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp287,
	bl	simple_strtol	@
	str	r0, [r6, #72]	@ prephitmp.5144, extra_ref
.L1286:
	add	r1, r0, #4992	@ tmp183, prephitmp.5144,
	movw	r2, #10000	@ tmp185,
	add	r3, r1, #8	@ tmp183, tmp183,
	cmp	r3, r2	@ tmp183, tmp185
	bhi	.L1288	@,
	movw	sl, #5000	@ tmp186,
	movw	r8, #:lower16:-5000	@ tmp187,
	cmp	r0, sl	@ prephitmp.5144, tmp186
	movge	r0, sl	@ pretmp.5141, tmp186
	movt	r8, #:upper16:-5000	@ tmp187,
	cmp	r0, r8	@ pretmp.5141, tmp187
	movge	r3, r0	@ prephitmp.5143, pretmp.5141
	movlt	r3, r8	@ prephitmp.5143, tmp187
.L1287:
	str	r3, [r6, #72]	@ prephitmp.5143, extra_ref
.L1285:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1308	@,
	mov	r8, #0	@ tmp193,
	str	r8, [fp, #-40]	@ tmp193, p
	bl	strlcpy	@
	ldr	r0, .L1308	@,
	movw	r1, #:lower16:.LC306	@,
	movt	r1, #:upper16:.LC306	@,
	bl	strstr	@
	cmp	r0, r8	@ tmp197,
	str	r0, [fp, #-40]	@ tmp197, p
	beq	.L1289	@,
	sub	sl, fp, #40	@ p.677,,
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	mov	r0, sl	@, p.677
	bl	strsep	@
	subs	r3, r0, #0	@ D.45108,
	beq	.L1290	@,
	mov	r0, sl	@, p.677
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1306	@,
	mov	r1, r8	@, tmp193
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [r6, #76]	@ prephitmp.5130, extra_disp
.L1293:
	add	r8, r0, #4992	@ tmp208, prephitmp.5130,
	movw	lr, #10000	@ tmp210,
	add	r1, r8, #8	@ tmp208, tmp208,
	cmp	r1, lr	@ tmp208, tmp210
	bhi	.L1295	@,
	movw	ip, #5000	@ tmp211,
	movw	sl, #:lower16:-5000	@ tmp212,
	cmp	r0, ip	@ prephitmp.5130, tmp211
	movge	r0, ip	@ pretmp.5138, tmp211
	movt	sl, #:upper16:-5000	@ tmp212,
	cmp	r0, sl	@ pretmp.5138, tmp212
	movge	r3, r0	@ prephitmp.5118, pretmp.5138
	movlt	r3, sl	@ prephitmp.5118, tmp212
.L1294:
	str	r3, [r6, #76]	@ prephitmp.5118, extra_disp
.L1292:
	ldr	r8, [r6, #172]	@ extra_cmd.683, extra_cmd
	mov	lr, #0	@ tmp218,
	movw	sl, #:lower16:.LANCHOR0	@ tmp219,
	str	lr, [fp, #-40]	@ tmp218, p
	cmp	r8, lr	@ extra_cmd.683,
	movt	sl, #:upper16:.LANCHOR0	@ tmp219,
	beq	.L1296	@,
	movw	ip, #:lower16:.LANCHOR2	@ tmp224,
	movt	ip, #:upper16:.LANCHOR2	@ tmp224,
	ubfx	r7, r8, #1, #1	@ tmp227, extra_cmd.683,,
	and	r8, r8, #1	@ tmp222, extra_cmd.683,
	strb	r7, [ip, #68]	@ tmp227, g_not_direct_8x8_inference_flag
	strb	r8, [r4, #1540]	@ tmp222, g_allow_B_before_P
.L1297:
	movw	r7, #:lower16:.LANCHOR3	@ tmp250,
	movt	r7, #:upper16:.LANCHOR3	@ tmp250,
	sub	r0, r7, #3008	@, tmp250,
	mov	r1, #160	@,
	bl	__memzero	@
	mov	r1, #64	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #134217728	@,
	mov	r1, #75497472	@,
	str	r5, [r6, #68]	@ event_report, g_event_report
	str	r5, [r4, #-2852]	@ event_report, s_VfmwCTrl.event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	ldr	r0, .L1308+4	@,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r0, .L1308+8	@,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1281	@,
	bl	DBG_CreateTracer	@
	add	r4, r7, #1536	@, tmp250,
	ldr	r0, .L1308+12	@,
	bl	OSAL_InitIntrMutex	@
	add	r0, r4, #8	@,,
	mov	r1, #1	@,
	bl	OSAL_InitEvent	@
	sub	r0, r7, #2960	@, tmp250,
	movw	r1, #:lower16:.LC309	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC309	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r4, r0, #0	@ D.35791,
	bne	.L1301	@,
	sub	r0, r7, #2960	@, tmp250,
	bl	OSAL_WakeupTask	@
	mov	r1, #1	@ tmp281,
	mov	r0, r4	@ D.35771, D.35791
	str	r1, [r7, #-3008]	@ tmp281, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1302	@
.L1296:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1308	@,
	bl	strlcpy	@
	ldr	r0, .L1308	@,
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp232,
	str	r0, [fp, #-40]	@ tmp232, p
	beq	.L1297	@,
	sub	r7, fp, #40	@ p.691,,
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	mov	r0, r7	@, p.691
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [sl, #172]	@ prephitmp.5116, extra_cmd
	beq	.L1299	@,
	mov	r0, r7	@, p.691
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1307	@,
	mov	r1, r8	@, extra_cmd.683
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [sl, #172]	@ prephitmp.5116, extra_cmd
.L1299:
	movw	r3, #:lower16:.LANCHOR2	@ tmp245,
	movt	r3, #:upper16:.LANCHOR2	@ tmp245,
	ubfx	r2, r0, #1, #1	@ tmp248, prephitmp.5116,,
	and	r0, r0, #1	@ tmp243, prephitmp.5116,
	strb	r2, [r3, #68]	@ tmp248, g_not_direct_8x8_inference_flag
	strb	r0, [r4, #1540]	@ tmp243, g_allow_B_before_P
	b	.L1297	@
.L1289:
	ldr	r0, [r6, #76]	@ prephitmp.5130, extra_disp
	b	.L1293	@
.L1282:
	movw	r6, #:lower16:.LANCHOR0	@ tmp287,
	movt	r6, #:upper16:.LANCHOR0	@ tmp287,
	ldr	r0, [r6, #72]	@ prephitmp.5144, extra_ref
	b	.L1286	@
.L1288:
	mov	r2, r0	@, prephitmp.5144
	movw	r1, #:lower16:.LC305	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC305	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #72]	@ pretmp.5140, extra_ref
	movw	r0, #:lower16:-5000	@ tmp191,
	movw	r2, #5000	@ tmp190,
	movt	r0, #:upper16:-5000	@ tmp191,
	cmp	r3, r2	@ pretmp.5140, tmp190
	movlt	ip, r3	@ prephitmp.5143, pretmp.5140
	movge	ip, r2	@ prephitmp.5143, tmp190
	cmp	ip, r0	@ prephitmp.5143, tmp191
	movge	r3, ip	@ prephitmp.5143, prephitmp.5143
	movlt	r3, r0	@ prephitmp.5143, tmp191
	b	.L1287	@
.L1295:
	mov	r2, r0	@, prephitmp.5130
	movw	r1, #:lower16:.LC307	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC307	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #76]	@ pretmp.5139, extra_disp
	movw	r3, #5000	@ tmp215,
	movw	r0, #:lower16:-5000	@ tmp216,
	cmp	r1, r3	@ pretmp.5139, tmp215
	movlt	r2, r1	@ prephitmp.5118, pretmp.5139
	movge	r2, r3	@ prephitmp.5118, tmp215
	movt	r0, #:upper16:-5000	@ tmp216,
	cmp	r2, r0	@ prephitmp.5118, tmp216
	movge	r3, r2	@ prephitmp.5118, prephitmp.5118
	movlt	r3, r0	@ prephitmp.5118, tmp216
	b	.L1294	@
.L1290:
	str	r3, [r6, #76]	@ D.45108, extra_disp
	b	.L1294	@
.L1283:
	movw	r6, #:lower16:.LANCHOR0	@ tmp287,
	movt	r6, #:upper16:.LANCHOR0	@ tmp287,
	mov	r3, r0	@ prephitmp.5143, D.45088
	str	r0, [r6, #72]	@ D.45088, extra_ref
	b	.L1287	@
.L1305:
	add	r0, r0, #22	@,,
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L1308+16	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #6844	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp287,
	bl	dprint_vfmw	@
	movt	r6, #:upper16:.LANCHOR0	@ tmp287,
	b	.L1285	@
.L1306:
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L1308+20	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #6879	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1292	@
.L1307:
	movw	r1, #:lower16:.LC142	@,
	ldr	r2, .L1308+24	@,
	movt	r1, #:upper16:.LC142	@,
	movw	r3, #6922	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1297	@
.L1301:
	ldr	r0, .L1308+8	@,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.35771,
	b	.L1302	@
.L1309:
	.align	2
.L1308:
	.word	.LANCHOR3+516
	.word	.LANCHOR3-2696
	.word	.LANCHOR3-2948
	.word	.LANCHOR3-3004
	.word	.LANCHOR1+204
	.word	.LANCHOR1+224
	.word	.LANCHOR1+244
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_ExtraWakeUpThread
	.type	VCTRL_ExtraWakeUpThread, %function
VCTRL_ExtraWakeUpThread:
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
	ldr	r0, .L1312	@,
	bl	OSAL_GiveEvent	@
	ldmfd	sp, {fp, sp, pc}	@
.L1313:
	.align	2
.L1312:
	.word	.LANCHOR3+1544
	.fnend
	.size	VCTRL_ExtraWakeUpThread, .-VCTRL_ExtraWakeUpThread
	.align	2
	.global	VCTRL_ExtAccGetDecParam
	.type	VCTRL_ExtAccGetDecParam, %function
VCTRL_ExtAccGetDecParam:
	.fnstart
.LFB1443:
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
	movw	r5, #:lower16:.LANCHOR3	@ tmp251,
	movt	r5, #:upper16:.LANCHOR3	@ tmp251,
	mov	r6, r0	@ pDecParamInfo, pDecParamInfo
	sub	r0, r5, #2848	@, tmp251,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L1362	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r6, #0]	@ D.39046, <variable>.ChanID
	cmn	r7, #1	@ D.39046,
	beq	.L1353	@,
	cmp	r7, #15	@ D.39046,
	bls	.L1354	@,
.L1325:
	mov	r2, r7	@, D.39046
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp190,
	str	r1, [r6, #8]	@ tmp190, <variable>.pDecParam
.L1316:
	ldr	r0, .L1362	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1362+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39081,
.L1323:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1354:
	movw	r8, #:lower16:.LANCHOR0	@ tmp184,
	movt	r8, #:upper16:.LANCHOR0	@ tmp184,
	ldr	r3, [r8, r7, asl #2]	@ D.40754, s_pstVfmwChan
	cmp	r3, #0	@ D.40754,
	beq	.L1325	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L1325	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L1325	@,
	ldr	ip, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L1325	@,
	ldr	r3, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1325	@,
	mov	r0, r7	@, D.39046
	bl	VDMDRV_IsChanDec	@
	cmp	r0, #1	@,
	beq	.L1355	@,
	mov	r0, r7	@, D.39046
	bl	VCTRL_GetDecParam	@
	subs	r4, r0, #0	@ pDecParam.5218,
	beq	.L1356	@,
	ldr	r3, [r8, r7, asl #2]	@ temp.5220, s_pstVfmwChan
	cmp	r3, #0	@ temp.5220,
	beq	.L1357	@,
	str	r7, [fp, #-56]	@ D.39046, DecParamInfo.ChanID
	sub	r0, fp, #56	@,,
	ldr	lr, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r5, #1560]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r4, [fp, #-48]	@ pDecParam.5218, DecParamInfo.pDecParam
	str	lr, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	ip	@ AcceleratorCharacter
	cmp	r0, #1	@,
	bne	.L1329	@,
	mov	r0, r7	@, D.39046
.L1351:
	ldr	ip, [fp, #-56]	@ DecParamInfo.ChanID, DecParamInfo.ChanID
	mov	r1, #4	@,
	ldr	r2, [fp, #-52]	@ DecParamInfo.VidStd, DecParamInfo.VidStd
	ldr	r3, [fp, #-48]	@ DecParamInfo.pDecParam, DecParamInfo.pDecParam
	str	ip, [r6, #0]	@ DecParamInfo.ChanID, <variable>.ChanID
	stmib	r6, {r2, r3}	@ phole stm
	bl	VDMDRV_SetChanIsDec	@
	ldr	r0, .L1362	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1362+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.39081,
	b	.L1323	@
.L1353:
	movw	r4, #:lower16:g_ChanCtx	@ ivtmp.5214,
	movt	r4, #:upper16:g_ChanCtx	@ ivtmp.5214,
	movw	r7, #:lower16:.LANCHOR0	@ tmp254,
	add	r8, r4, #64	@ D.45271, ivtmp.5214,
	movt	r7, #:upper16:.LANCHOR0	@ tmp254,
	sub	sl, fp, #56	@ tmp255,,
	mov	r9, #0	@ tmp256,
.L1324:
	ldr	r2, [r4, #64]	@ D.39052,
	cmp	r2, #0	@ D.39052,
	blt	.L1316	@,
	cmp	r2, #15	@ D.39052,
	bhi	.L1317	@,
	ldr	r3, [r7, r2, asl #2]	@ D.40745, s_pstVfmwChan
	cmp	r3, #0	@ D.40745,
	beq	.L1317	@,
	ldr	r1, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #0	@ <variable>.s32IsOpen,
	beq	.L1317	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	bne	.L1358	@,
.L1317:
	movw	r1, #:lower16:.LC310	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
.L1319:
	add	r4, r4, #4	@ tmp260, ivtmp.5214,
	ldr	r2, [r4, #64]	@ D.39052,
	cmp	r2, #0	@ D.39052,
	blt	.L1316	@,
	cmp	r2, #15	@ D.39052,
	bls	.L1346	@,
.L1336:
	movw	r1, #:lower16:.LC310	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
.L1347:
	add	r4, r4, #4	@ ivtmp.5214, tmp260,
	cmp	r4, r8	@ ivtmp.5214, D.45271
	bne	.L1324	@,
	b	.L1316	@
.L1346:
	ldr	r3, [r7, r2, asl #2]	@ D.40745, s_pstVfmwChan
	cmp	r3, #0	@ D.40745,
	beq	.L1336	@,
	ldr	r0, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #0	@ <variable>.s32IsOpen,
	beq	.L1336	@,
	ldr	lr, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	lr, #0	@ <variable>.s32IsRun,
	beq	.L1336	@,
	ldr	ip, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L1336	@,
	ldr	r3, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1336	@,
	mov	r0, r2	@, D.39052
	str	r2, [fp, #-64]	@,
	bl	VDMDRV_IsChanDec	@
	ldr	r2, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1338	@,
	mov	r0, r2	@, D.39052
	bl	VCTRL_GetDecParam	@
	ldr	r2, [fp, #-64]	@,
	subs	r1, r0, #0	@ pDecParam,
	beq	.L1348	@,
	ldr	r3, [r7, r2, asl #2]	@ D.39071, s_pstVfmwChan
	cmp	r3, #0	@ D.39071,
	beq	.L1349	@,
	str	r2, [fp, #-56]	@ D.39052, DecParamInfo.ChanID
	mov	r0, sl	@, tmp255
	ldr	lr, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r2, [r5, #1560]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r1, [fp, #-48]	@ pDecParam, DecParamInfo.pDecParam
	str	lr, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	r2	@ AcceleratorCharacter
	ldr	r2, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1350	@,
	str	r9, [r6, #8]	@ tmp256, <variable>.pDecParam
	b	.L1347	@
.L1358:
	ldr	ip, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L1317	@,
	ldr	r3, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1317	@,
	mov	r0, r2	@, D.39052
	str	r2, [fp, #-64]	@,
	bl	VDMDRV_IsChanDec	@
	ldr	r2, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1359	@,
	mov	r0, r2	@, D.39052
	str	r2, [fp, #-64]	@,
	bl	VCTRL_GetDecParam	@
	ldr	r2, [fp, #-64]	@,
	subs	r1, r0, #0	@ pDecParam,
	beq	.L1360	@,
	ldr	r3, [r7, r2, asl #2]	@ D.39071, s_pstVfmwChan
	cmp	r3, #0	@ D.39071,
	beq	.L1361	@,
	str	r2, [fp, #-56]	@ D.39052, DecParamInfo.ChanID
	mov	r0, sl	@, tmp255
	ldr	lr, [r3, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r1, [fp, #-48]	@ pDecParam, DecParamInfo.pDecParam
	str	r2, [fp, #-64]	@,
	ldr	r1, [r5, #1560]	@ AcceleratorCharacter, AcceleratorCharacter
	str	lr, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	r1	@ AcceleratorCharacter
	ldr	r2, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1350	@,
	str	r9, [r6, #8]	@ tmp256, <variable>.pDecParam
	b	.L1319	@
.L1361:
	mov	r3, r2	@, D.39052
	movw	r1, #:lower16:.LC252	@,
	movw	r2, #6615	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1319	@
.L1349:
	mov	r3, r2	@, D.39052
	movw	r1, #:lower16:.LC252	@,
	movw	r2, #6615	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1347	@
.L1359:
	movw	r1, #:lower16:.LC311	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	b	.L1319	@
.L1338:
	movw	r1, #:lower16:.LC311	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	b	.L1347	@
.L1329:
	mov	r1, #0	@ tmp234,
	str	r1, [r6, #8]	@ tmp234, <variable>.pDecParam
	b	.L1316	@
.L1350:
	mov	r0, r2	@, D.39052
	b	.L1351	@
.L1360:
	movw	r1, #:lower16:.LC312	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	b	.L1319	@
.L1348:
	movw	r1, #:lower16:.LC312	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	b	.L1347	@
.L1357:
	mov	r3, r7	@, D.39046
	movw	r2, #6676	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp214,
	str	r0, [r6, #8]	@ tmp214, <variable>.pDecParam
	b	.L1316	@
.L1355:
	mov	r2, r7	@, D.39046
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp198,
	str	r2, [r6, #8]	@ tmp198, <variable>.pDecParam
.L1352:
	ldr	r0, .L1362	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r0, r5, #2848	@, tmp251,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39081,
	b	.L1323	@
.L1356:
	bl	VCTRL_ExtraWakeUpThread	@
	mov	r2, r7	@, D.39046
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	str	r4, [r6, #8]	@ pDecParam.5218, <variable>.pDecParam
	b	.L1352	@
.L1363:
	.align	2
.L1362:
	.word	.LANCHOR3-2836
	.word	.LANCHOR3-2848
	.fnend
	.size	VCTRL_ExtAccGetDecParam, .-VCTRL_ExtAccGetDecParam
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	movt	r4, #:upper16:.LANCHOR3	@ tmp143,
	ldr	r3, [r4, #1564]	@ LastEventTime.438, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.438
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #1564]	@ CurTime, LastEventTime
	bhi	.L1369	@,
.L1366:
	ldr	r0, .L1370	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #1564]	@ CurTime, LastEventTime
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1369:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.438, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L1366	@
.L1371:
	.align	2
.L1370:
	.word	.LANCHOR3+1544
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
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
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
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
	mov	r0, #1	@,
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
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
	mov	r0, #0	@,
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
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
	bl	SCDDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	subs	r4, r0, #0	@ D.35614,
	bne	.L1379	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1385	@,
	bl	BPD_OpenHardware	@
	bl	VCTRL_StartVfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1385:
	bl	SCDDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	mov	r2, r0	@ D.35623,
	mov	r0, r4	@, D.35614
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1379:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	mov	r2, r0	@ D.35618,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1361:
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
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i.5374,
	mvn	r6, r4	@ tmp163, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1391	@
.L1390:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp167, i.5374,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1387	@,
.L1412:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp163
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	cmp	r7, #200	@ WaitTime,
	bhi	.L1418	@,
.L1410:
	add	r5, r5, #1	@ i.5374, tmp167,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.5374,
	beq	.L1387	@,
.L1391:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1387	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp163
	cmp	r7, #200	@ WaitTime,
	bls	.L1390	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp167, i.5374,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC315	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC315	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1412	@,
.L1387:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp157,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp157,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, #4]	@ D.35577, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.35577,
	beq	.L1392	@,
	mov	r0, #0	@,
	blx	r3	@ D.35577
.L1393:
	bl	SCDDRV_PrepareSleep	@
	mov	r6, #0	@ i,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r7, r0	@ tmp158, BeginTime
	b	.L1398	@
.L1397:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp166, i,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1394	@,
.L1413:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5375
	addhi	sl, r0, r7	@ WaitTime.5373, CurTime.5375, tmp158
	rsbls	sl, r5, r0	@ WaitTime.5373, BeginTime, CurTime.5375
	cmp	sl, #200	@ WaitTime.5373,
	bhi	.L1419	@,
.L1407:
	add	r6, r6, #1	@ i, tmp166,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i,
	beq	.L1394	@,
.L1398:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1394	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5375
	rsbls	sl, r5, r0	@ WaitTime.5373, BeginTime, CurTime.5375
	addhi	sl, r0, r7	@ WaitTime.5373, CurTime.5375, tmp158
	cmp	sl, #200	@ WaitTime.5373,
	bls	.L1397	@,
	bl	SCDDRV_ForeceSleep	@
	mov	r2, sl	@, WaitTime.5373
	movw	r1, #:lower16:.LC316	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC316	@,
	add	r6, r6, #1	@ tmp166, i,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1413	@,
.L1394:
	bl	OSAL_GetTimeInMs	@
	ldr	r0, [r8, #12]	@ D.35594, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.35594,
	beq	.L1399	@,
	blx	r0	@ D.35594
.L1400:
	bl	OSAL_GetTimeInMs	@
	bl	OSAL_GetTimeInMs	@
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	cmp	r4, r0	@ EntrTime, CurTime.5378
	rsbls	r2, r4, r0	@ iftmp.430, EntrTime, CurTime.5378
	mvnhi	r4, r4	@ tmp155, EntrTime
	addhi	r2, r0, r4	@ iftmp.430, CurTime.5378, tmp155
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1418:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC315	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC315	@,
	bl	dprint_vfmw	@
	b	.L1410	@
.L1419:
	bl	SCDDRV_ForeceSleep	@
	mov	r2, sl	@, WaitTime.5373
	movw	r1, #:lower16:.LC316	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC316	@,
	bl	dprint_vfmw	@
	b	.L1407	@
.L1392:
	mov	r0, r3	@, D.35577
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #450	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1393	@
.L1399:
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #473	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1400	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1450:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #316
	sub	sp, sp, #316	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #0	@ p_args
	bne	.L1482	@,
.L1421:
	mvn	r0, #1	@ D.39354,
.L1459:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1482:
	movw	r3, #513	@ tmp184,
	cmp	r0, r3	@ opt, tmp184
	ldr	r6, [r1, #0]	@ dat,* p_args
	beq	.L1434	@,
	bhi	.L1451	@,
	cmp	r0, #7	@ opt,
	beq	.L1427	@,
	bhi	.L1452	@,
	cmp	r0, #3	@ opt,
	beq	.L1423	@,
	bhi	.L1453	@,
	cmp	r0, #1	@ opt,
	beq	.L1423	@,
	bls	.L1483	@,
	bic	r4, r6, #-16777216	@ Thr, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #112	@ tmp326,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Thr
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp326
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	beq	.L1484	@,
.L1423:
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1451:
	movw	r2, #898	@ tmp187,
	cmp	r0, r2	@ opt, tmp187
	beq	.L1480	@,
	bhi	.L1455	@,
	cmp	r0, #768	@ opt,
	beq	.L1438	@,
	bhi	.L1456	@,
	movw	ip, #515	@ tmp189,
	cmp	r0, ip	@ opt, tmp189
	beq	.L1436	@,
	bcc	.L1435	@,
	cmp	r0, #516	@ opt,
	bne	.L1421	@,
#APP
@ 182 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r6, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	ldmib	r1, {r7, r8}	@ phole ldm
	beq	.L1481	@,
	sub	r5, fp, #112	@ tmp328,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC345	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC345	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp328
	str	r6, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp328
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L1474	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp296,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp296,
	ldr	ip, [r2, #100]	@ D.39469, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.39469,
	beq	.L1475	@,
	mov	r1, #1	@ tmp297,
	mov	r2, r7	@, D.39459
	str	r1, [sp, #0]	@ tmp297,
	mov	r3, r8	@, D.39461
	mov	r1, r4	@, ptr
	blx	ip	@ D.39469
.L1476:
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC346	@,
	mov	r2, r5	@, tmp328
	movt	r1, #:upper16:.LC346	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1473:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1455:
	movw	r1, #1026	@ tmp192,
	cmp	r0, r1	@ opt, tmp192
	beq	.L1446	@,
	bhi	.L1457	@,
	cmp	r0, #1024	@ opt,
	beq	.L1444	@,
	bhi	.L1445	@,
	movw	r2, #899	@ tmp194,
	cmp	r0, r2	@ opt, tmp194
	bne	.L1421	@,
	mov	r0, r6	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC347	@,
	movt	r1, #:upper16:.LC347	@,
	mov	r3, r0	@ ret.5431,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, dat
	bl	VCTRL_ResetChan	@
	movw	r1, #:lower16:.LC348	@,
	mov	r2, r6	@, dat
	movt	r1, #:upper16:.LC348	@,
	mov	r3, r0	@ ret.5433,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1480:
	mov	r0, r6	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC349	@,
	movt	r1, #:upper16:.LC349	@,
	mov	r3, r0	@ ret.5435,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1427:
	bic	r4, r6, #-16777216	@ Thr, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #340	@ tmp210,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Thr
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp210
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1423	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp210
	str	r4, [fp, #-320]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1484:
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp326
	str	r4, [fp, #-96]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1452:
	cmp	r0, #13	@ opt,
	beq	.L1430	@,
	bhi	.L1454	@,
	cmp	r0, #11	@ opt,
	beq	.L1428	@,
	bhi	.L1429	@,
	cmp	r0, #8	@ opt,
	bne	.L1421	@,
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1453:
	cmp	r0, #5	@ opt,
	beq	.L1426	@,
	bhi	.L1423	@,
	and	r4, r6, #3	@ DecOrderOutput, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #188	@ tmp325,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, DecOrderOutput
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp325
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1423	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp325
	str	r4, [fp, #-160]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1457:
	movw	ip, #1281	@ tmp195,
	cmp	r0, ip	@ opt, tmp195
	beq	.L1448	@,
	bhi	.L1458	@,
	cmp	r0, #1280	@ opt,
	bne	.L1421	@,
	movw	lr, #:lower16:g_TraceCtrl	@ tmp316,
	movt	lr, #:upper16:g_TraceCtrl	@ tmp316,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC353	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC353	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1454:
	movw	r1, #257	@ tmp186,
	cmp	r0, r1	@ opt, tmp186
	beq	.L1432	@,
	cmp	r0, #512	@ opt,
	beq	.L1433	@,
	cmp	r0, #256	@ opt,
	bne	.L1421	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC328	@,
	movt	r1, #:upper16:.LC328	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, dat
	bl	DBG_PrintTracer	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1456:
	cmp	r0, #896	@ opt,
	beq	.L1440	@,
	bhi	.L1441	@,
	movw	r3, #769	@ tmp191,
	cmp	r0, r3	@ opt, tmp191
	bne	.L1421	@,
	bl	VCTRL_Resume	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1436:
#APP
@ 182 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r6, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	beq	.L1481	@,
	sub	r5, fp, #112	@ tmp327,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC342	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC342	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp327
	str	r6, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp327
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L1474	@,
	mov	r2, r6	@, fp
	mov	r1, #3145728	@,
	mov	r0, r4	@, ptr
	bl	klib_fwrite	@
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	mov	r2, r5	@, tmp327
	movw	r1, #:lower16:.LC343	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC343	@,
	bl	dprint_vfmw	@
	b	.L1473	@
.L1441:
	mov	r0, r6	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	mov	r3, r0	@ ret.5427,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1440:
	mov	r0, r6	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC347	@,
	movt	r1, #:upper16:.LC347	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1483:
	movw	r2, #:lower16:g_PrintEnable	@ tmp199,
	movt	r2, #:upper16:g_PrintEnable	@ tmp199,
	mov	r0, #1	@ D.39354,
	str	r6, [r2, #0]	@ dat, g_PrintEnable
	b	.L1459	@
.L1430:
	cmp	r6, #16	@ dat,
	bls	.L1462	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC326	@,
	movt	r1, #:upper16:.LC326	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1435:
	cmp	r6, #15	@ dat,
	bhi	.L1423	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp264,
	movt	r4, #:upper16:.LANCHOR3	@ tmp264,
	ldr	r5, [r4, #1592]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r5, #0	@ vfmw_save_yuv_file,
	beq	.L1485	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC340	@,
	movt	r1, #:upper16:.LC340	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #1592]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp281,
	mov	r0, #1	@ D.39354,
	str	r3, [r4, #1592]	@ tmp281, vfmw_save_yuv_file
	b	.L1459	@
.L1445:
	movw	ip, #:lower16:.LANCHOR3	@ tmp312,
	movt	ip, #:upper16:.LANCHOR3	@ tmp312,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC351	@,
	str	r6, [ip, #1608]	@ dat, g_DnrSleepTime
	movt	r1, #:upper16:.LC351	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1429:
	cmp	r6, #1	@ dat,
	bls	.L1486	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC325	@,
	movt	r1, #:upper16:.LC325	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1428:
	cmp	r6, #1	@ dat,
	bls	.L1487	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1448:
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp318,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp318,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC354	@,
	str	r6, [ip, #0]	@ dat,
	movt	r1, #:upper16:.LC354	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1434:
	cmp	r6, #15	@ dat,
	bhi	.L1423	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp246,
	movt	r4, #:upper16:.LANCHOR3	@ tmp246,
	ldr	r5, [r4, #1580]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r5, #0	@ vfmw_save_seg_file,
	beq	.L1488	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC336	@,
	movt	r1, #:upper16:.LC336	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #1580]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r1, #0	@ tmp263,
	mov	r0, #1	@ D.39354,
	str	r1, [r4, #1580]	@ tmp263, vfmw_save_seg_file
	b	.L1459	@
.L1438:
	bl	VCTRL_Suspend	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1446:
	movw	r3, #:lower16:.LANCHOR3	@ tmp314,
	movt	r3, #:upper16:.LANCHOR3	@ tmp314,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC352	@,
	str	r6, [r3, #1612]	@ dat, g_StopDec
	movt	r1, #:upper16:.LC352	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1426:
	and	r4, r6, #3	@ Mode, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #264	@ tmp207,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Mode
	movw	r1, #:lower16:.LC320	@,
	movt	r1, #:upper16:.LC320	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp207
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1423	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp207
	str	r4, [fp, #-240]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1444:
	movw	lr, #:lower16:.LANCHOR3	@ tmp310,
	movt	lr, #:upper16:.LANCHOR3	@ tmp310,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC350	@,
	str	r6, [lr, #1604]	@ dat, g_SleepTime
	movt	r1, #:upper16:.LC350	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1433:
	cmp	r6, #15	@ dat,
	bhi	.L1423	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp228,
	movt	r4, #:upper16:.LANCHOR3	@ tmp228,
	ldr	r5, [r4, #1568]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r5, #0	@ vfmw_save_str_file,
	beq	.L1489	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC332	@,
	movt	r1, #:upper16:.LC332	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #1568]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r0, #0	@ tmp245,
	str	r0, [r4, #1568]	@ tmp245, vfmw_save_str_file
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1432:
	movw	r4, #:lower16:g_PrintEnable	@ tmp224,
	movt	r4, #:upper16:g_PrintEnable	@ tmp224,
	mov	r0, r6	@, dat
	mov	r2, #67108864	@ tmp226,
	ldr	r5, [r4, #0]	@ TmpPrintEnable, g_PrintEnable
	mov	r1, #1	@,
	str	r2, [r4, #0]	@ tmp226, g_PrintEnable
	bl	PrintScdRawState	@
	mov	r0, #1	@ D.39354,
	str	r5, [r4, #0]	@ TmpPrintEnable, g_PrintEnable
	b	.L1459	@
.L1462:
	movw	r3, #:lower16:.LANCHOR0	@ tmp221,
	movt	r3, #:upper16:.LANCHOR0	@ tmp221,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC327	@,
	str	r6, [r3, #180]	@ dat, g_CurProcChan
	movt	r1, #:upper16:.LC327	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1458:
	movw	r3, #1282	@ tmp197,
	cmp	r0, r3	@ opt, tmp197
	beq	.L1449	@,
	movw	r1, #1283	@ tmp198,
	cmp	r0, r1	@ opt, tmp198
	bne	.L1421	@,
	movw	lr, #:lower16:g_TraceImgPeriod	@ tmp322,
	movt	lr, #:upper16:g_TraceImgPeriod	@ tmp322,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC356	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1449:
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp320,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp320,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC355	@,
	str	r6, [r3, #0]	@ dat,
	movt	r1, #:upper16:.LC355	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1481:
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC341	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC341	@,
	bl	dprint_vfmw	@
	b	.L1473	@
.L1487:
	movw	lr, #:lower16:USE_FF_APT_EN	@ tmp214,
	movt	lr, #:upper16:USE_FF_APT_EN	@ tmp214,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC322	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC322	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1486:
	movw	ip, #:lower16:.LANCHOR0	@ tmp217,
	movt	ip, #:upper16:.LANCHOR0	@ tmp217,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC324	@,
	str	r6, [ip, #176]	@ dat, g_ResetCreateNewSave
	movt	r1, #:upper16:.LC324	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1474:
	mov	r2, r5	@, tmp328
	movw	r1, #:lower16:.LC344	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC344	@,
	bl	dprint_vfmw	@
	b	.L1473	@
.L1475:
	mov	r0, ip	@, D.39469
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #7286	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1476	@
.L1488:
	ldr	ip, [r4, #1584]	@ save_file_cnt.711, save_file_cnt
	sub	r7, fp, #112	@ str.708,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC333	@,
	add	lr, ip, #1	@ tmp250, save_file_cnt.711,
	movt	r2, #:upper16:.LC333	@,
	str	ip, [sp, #0]	@ save_file_cnt.711,
	mov	r0, r7	@, str.708
	str	lr, [r4, #1584]	@ tmp250, save_file_cnt
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	snprintf	@
	mov	r0, r7	@, str.708
	mov	r2, r5	@, vfmw_save_seg_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #1588]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ vfmw_save_seg_file.713,
	str	r0, [r4, #1580]	@ vfmw_save_seg_file.713, vfmw_save_seg_file
	beq	.L1466	@,
	mov	r2, r7	@, str.708
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC334	@,
	movt	r1, #:upper16:.LC334	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1485:
	ldr	ip, [r4, #1596]	@ save_file_cnt.719, save_file_cnt
	sub	r7, fp, #112	@ str.716,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC337	@,
	add	lr, ip, #1	@ tmp268, save_file_cnt.719,
	movt	r2, #:upper16:.LC337	@,
	str	ip, [sp, #0]	@ save_file_cnt.719,
	mov	r0, r7	@, str.716
	str	lr, [r4, #1596]	@ tmp268, save_file_cnt
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	snprintf	@
	mov	r0, r7	@, str.716
	mov	r2, r5	@, vfmw_save_yuv_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #1600]	@ dat, save_yuv_chan_num
	cmp	r0, #0	@ vfmw_save_yuv_file.721,
	str	r0, [r4, #1592]	@ vfmw_save_yuv_file.721, vfmw_save_yuv_file
	beq	.L1468	@,
	mov	r2, r7	@, str.716
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1489:
	ldr	ip, [r4, #1572]	@ save_file_cnt.703, save_file_cnt
	sub	r7, fp, #112	@ str.699,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC329	@,
	add	lr, ip, #1	@ tmp232, save_file_cnt.703,
	movt	r2, #:upper16:.LC329	@,
	str	ip, [sp, #0]	@ save_file_cnt.703,
	mov	r0, r7	@, str.699
	str	lr, [r4, #1572]	@ tmp232, save_file_cnt
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	snprintf	@
	mov	r0, r7	@, str.699
	mov	r2, r5	@, vfmw_save_str_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #1576]	@ dat, save_str_chan_num
	cmp	r0, #0	@ vfmw_save_str_file.705,
	str	r0, [r4, #1568]	@ vfmw_save_str_file.705, vfmw_save_str_file
	beq	.L1464	@,
	mov	r2, r7	@, str.699
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC330	@,
	movt	r1, #:upper16:.LC330	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1466:
	mov	r2, r7	@, str.708
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC335	@,
	movt	r1, #:upper16:.LC335	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1468:
	mov	r2, r7	@, str.716
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC339	@,
	movt	r1, #:upper16:.LC339	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
.L1464:
	mov	r2, r7	@, str.699
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC331	@,
	movt	r1, #:upper16:.LC331	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39354,
	b	.L1459	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	vfmw_write_proc
	.type	vfmw_write_proc, %function
vfmw_write_proc:
	.fnstart
.LFB1466:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #48
	sub	sp, sp, #48	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #255	@ count,
	mov	r3, #0	@ tmp166,
	mov	r4, r2	@ count, count
	mov	r7, r1	@ buffer, buffer
	str	r3, [fp, #-32]	@ tmp166, dat1
	str	r3, [fp, #-44]	@ tmp166, dat4
	str	r3, [fp, #-40]	@ tmp166, dat3
	str	r3, [fp, #-36]	@ tmp166, dat2
	bhi	.L1664	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp326,
	movt	r5, #:upper16:.LANCHOR3	@ tmp326,
	add	r6, r5, #1616	@ tmp327, tmp326,
	mov	r1, #256	@,
	mov	r0, r6	@, tmp327
	bl	__memzero	@
	mov	r2, sp	@,
	bic	ip, r2, #8128	@ tmp173,,
	bic	r1, ip, #63	@ tmp173, tmp173,
	ldr	r0, [r1, #8]	@ <variable>.addr_limit, <variable>.addr_limit
#APP
@ 420 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include/asm/uaccess.h" 1
	adds r2, r7, r4; sbcccs r2, r2, r0; movcc r0, #0	@ roksum, buffer, count, flag
@ 0 "" 2
	cmp	r0, #0	@ flag,
	beq	.L1665	@,
	cmp	r4, #0	@ count,
	streqb	r4, [r5, #1616]	@ count, buf
	bne	.L1666	@,
.L1662:
	mov	r7, r4	@ i, count
	mov	r3, r4	@ j, count
.L1498:
	add	r3, r3, r5	@ tmp198, j, tmp326
	mov	ip, #0	@ tmp200,
	ldr	r0, .L1674	@,
	sub	r1, fp, #32	@,,
	strb	ip, [r3, #1872]	@ tmp200, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.40433,
	bne	.L1530	@,
	cmp	r4, r7	@ count, i
	bls	.L1506	@,
	add	r2, r6, r7	@ ivtmp.5488, tmp327, i
	mvn	r1, r7	@ tmp345, i
	add	r0, r1, r4	@ tmp344, tmp345, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5499, buf
	and	r0, r0, #1	@ tmp346, tmp344,
	cmp	r1, #32	@ prephitmp.5499,
	beq	.L1590	@,
	movhi	r3, #1	@ j.5493,
	strhib	r1, [r5, #1872]	@ prephitmp.5499, str
.L1590:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5488, ivtmp.5488,
	cmp	r7, r4	@ i, count
	bcs	.L1506	@,
	cmp	r0, #0	@ tmp346,
	beq	.L1511	@,
	cmp	r3, #0	@ j.5493,
	bne	.L1667	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5499, buf
	cmp	r1, #32	@ prephitmp.5499,
	beq	.L1594	@,
.L1654:
	cmp	r1, #32	@ prephitmp.5499,
	addhi	r0, r3, r5	@ tmp394, j.5493, tmp326
	addhi	r3, r3, #1	@ j.5493, j.5493,
	strhib	r1, [r0, #1872]	@ prephitmp.5499, str
	cmp	r3, #0	@ j.5493,
	beq	.L1594	@,
	cmp	r1, #32	@ prephitmp.5499,
	beq	.L1506	@,
.L1594:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5488, ivtmp.5488,
	cmp	r7, r4	@ i, count
	bcc	.L1511	@,
	b	.L1506	@
.L1597:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5499, buf
	cmp	r2, #32	@ prephitmp.5499,
	beq	.L1599	@,
.L1656:
	cmp	r2, #32	@ prephitmp.5499,
	addhi	ip, r3, r5	@ tmp397, j.5493, tmp326
	addhi	r3, r3, #1	@ j.5493, j.5493,
	strhib	r2, [ip, #1872]	@ prephitmp.5499, str
	cmp	r3, #0	@ j.5493,
	beq	.L1599	@,
	cmp	r2, #32	@ prephitmp.5499,
	beq	.L1506	@,
.L1599:
	add	r7, r0, #1	@ i, tmp347,
	add	r2, r1, #1	@ ivtmp.5488, tmp348,
	cmp	r7, r4	@ i, count
	bcs	.L1506	@,
.L1511:
	cmp	r3, #0	@ j.5493,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5499, buf
	bne	.L1508	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5499, buf
	cmp	r1, #32	@ prephitmp.5499,
	beq	.L1509	@,
.L1508:
	cmp	r1, #32	@ prephitmp.5499,
	addhi	r0, r3, r5	@ tmp212, j.5493, tmp326
	addhi	r3, r3, #1	@ j.5493, j.5493,
	strhib	r1, [r0, #1872]	@ prephitmp.5499, str
	cmp	r3, #0	@ j.5493,
	beq	.L1509	@,
	cmp	r1, #32	@ prephitmp.5499,
	beq	.L1506	@,
.L1509:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.5493,
	add	r1, r2, #1	@ tmp348, ivtmp.5488,
	mov	r0, r7	@ tmp347, i
	beq	.L1597	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5499, buf
	b	.L1656	@
.L1506:
	add	lr, r3, r5	@ tmp217, j.5493, tmp326
	mov	r2, #0	@ tmp219,
	ldr	r0, .L1674	@,
	sub	r1, fp, #36	@,,
	strb	r2, [lr, #1872]	@ tmp219, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.40446,
	bne	.L1530	@,
	ldr	r2, [fp, #-32]	@ prephitmp.5460, dat1
	sub	ip, r2, #512	@ tmp227, prephitmp.5460,
	cmp	ip, #255	@ tmp227,
	bhi	.L1513	@,
	cmp	r2, #516	@ prephitmp.5460,
	beq	.L1668	@,
.L1514:
	cmp	r4, r7	@ count, i
	bls	.L1669	@,
	add	r6, r6, r7	@ ivtmp.5476, tmp327, i
	mvn	lr, r7	@ tmp330, i
	add	r1, lr, r4	@ tmp329, tmp330, count
	mov	r3, #0	@ j.5496,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5501, buf
	and	r1, r1, #1	@ tmp331, tmp329,
	cmp	r2, #32	@ prephitmp.5501,
	beq	.L1551	@,
	movhi	r3, #1	@ j.5496,
	strhib	r2, [r5, #1872]	@ prephitmp.5501, str
.L1551:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #1	@ ivtmp.5476, ivtmp.5476,
	cmp	r4, r7	@ count, i
	bls	.L1636	@,
	cmp	r1, #0	@ tmp331,
	beq	.L1538	@,
	cmp	r3, #0	@ j.5496,
	bne	.L1670	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5501, buf
	cmp	r2, #32	@ prephitmp.5501,
	beq	.L1555	@,
.L1639:
	cmp	r2, #32	@ prephitmp.5501,
	addhi	r1, r3, r5	@ tmp367, j.5496, tmp326
	addhi	r3, r3, #1	@ j.5496, j.5496,
	strhib	r2, [r1, #1872]	@ prephitmp.5501, str
	cmp	r3, #0	@ j.5496,
	beq	.L1555	@,
	cmp	r2, #32	@ prephitmp.5501,
	bls	.L1537	@,
.L1555:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #1	@ ivtmp.5476, ivtmp.5476,
	cmp	r4, r7	@ count, i
	bhi	.L1538	@,
	b	.L1636	@
.L1558:
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ prephitmp.5501, buf
	cmp	r2, #32	@ prephitmp.5501,
	beq	.L1560	@,
.L1641:
	cmp	r2, #32	@ prephitmp.5501,
	addhi	r0, r3, r5	@ tmp370, j.5496, tmp326
	addhi	r3, r3, #1	@ j.5496, j.5496,
	strhib	r2, [r0, #1872]	@ prephitmp.5501, str
	cmp	r3, #0	@ j.5496,
	beq	.L1560	@,
	cmp	r2, #32	@ prephitmp.5501,
	bls	.L1537	@,
.L1560:
	add	r7, r7, #1	@ i, tmp332,
	add	r6, r1, #1	@ ivtmp.5476, tmp333,
	cmp	r4, r7	@ count, i
	bls	.L1636	@,
.L1538:
	cmp	r3, #0	@ j.5496,
	ldrneb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5501, buf
	bne	.L1534	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5501, buf
	cmp	r2, #32	@ prephitmp.5501,
	beq	.L1535	@,
.L1534:
	cmp	r2, #32	@ prephitmp.5501,
	addhi	r1, r3, r5	@ tmp271, j.5496, tmp326
	addhi	r3, r3, #1	@ j.5496, j.5496,
	strhib	r2, [r1, #1872]	@ prephitmp.5501, str
	cmp	r3, #0	@ j.5496,
	beq	.L1535	@,
	cmp	r2, #32	@ prephitmp.5501,
	bls	.L1537	@,
.L1535:
	cmp	r3, #0	@ j.5496,
	add	r7, r7, #1	@ tmp332, i,
	add	r1, r6, #1	@ tmp333, ivtmp.5476,
	beq	.L1558	@,
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ prephitmp.5501, buf
	b	.L1641	@
.L1636:
	add	ip, r3, r5	@ tmp276, j.5496, tmp326
	cmp	r3, #0	@ j.5496,
	mov	r0, #0	@ tmp278,
	strb	r0, [ip, #1872]	@ tmp278, str
	beq	.L1542	@,
.L1539:
	ldrb	r1, [r5, #1872]	@ zero_extendqisi2	@ str, str
	movw	r2, #:lower16:.LANCHOR3	@ tmp284,
	movt	r2, #:upper16:.LANCHOR3	@ tmp284,
	cmp	r1, #47	@ str,
	ldrne	r2, [fp, #-32]	@ prephitmp.5460, dat1
	bne	.L1513	@,
	sub	r0, r3, #1	@ D.40494, j.5496,
	movw	r1, #:lower16:.LC361	@,
	add	r5, r0, r2	@ tmp288, D.40494, tmp284
	movt	r1, #:upper16:.LC361	@,
	ldr	r2, .L1674	@,
	mov	r0, #32	@,
	ldrb	lr, [r5, #1872]	@ zero_extendqisi2	@ tmp290, str
	cmp	lr, #47	@ tmp290,
	moveq	lr, #0	@ tmp295,
	streqb	lr, [r5, #1872]	@ tmp295, str
	movw	r5, #:lower16:.LANCHOR2	@ tmp300,
	movt	r5, #:upper16:.LANCHOR2	@ tmp300,
	bl	dprint_vfmw	@
	mov	r2, #64	@,
	mov	r0, r5	@, tmp300
	ldr	r1, .L1674	@,
	bl	strncpy	@
	ldr	r2, [fp, #-32]	@ prephitmp.5460, dat1
	mov	r3, #0	@ tmp304,
	strb	r3, [r5, #63]	@ tmp304, s_VfmwSavePath
.L1513:
	ldr	r3, [fp, #-36]	@, dat2
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC362	@,
	movt	r1, #:upper16:.LC362	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-36]	@ dat2, dat2
	ldr	ip, [fp, #-40]	@ dat3, dat3
	sub	r1, fp, #76	@,,
	ldr	r2, [fp, #-44]	@ dat4, dat4
	ldr	r0, [fp, #-32]	@, dat1
	str	r3, [fp, #-76]	@ dat2, args
	str	ip, [fp, #-72]	@ dat3, args
	str	r2, [fp, #-68]	@ dat4, args
	bl	VCTRL_SetDbgOption	@
	mov	r0, r4	@ D.40409, count
.L1492:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1667:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5499, buf
	b	.L1654	@
.L1670:
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5501, buf
	b	.L1639	@
.L1665:
	mov	r1, r7	@, buffer
	mov	r0, r6	@, tmp327
	mov	r2, r4	@, count
	bl	__copy_from_user	@
	subs	r3, r0, #0	@ count.5510,
	bne	.L1494	@,
	add	r7, r4, r5	@ tmp183, count, tmp326
	cmp	r4, #0	@ count,
	strb	r3, [r7, #1616]	@ count.5510, buf
	beq	.L1662	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.5462, buf
	sub	lr, r4, #1	@ tmp349, count,
	and	r1, lr, #1	@ tmp351, tmp349,
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1603	@,
	movhi	r3, #1	@ j,
	strhib	r2, [r5, #1872]	@ prephitmp.5462, str
.L1603:
	mov	r7, #1	@ i,
	cmp	r4, r7	@ count, i
	bls	.L1498	@,
	cmp	r1, #0	@ tmp351,
	beq	.L1503	@,
	cmp	r3, #0	@ j,
	bne	.L1671	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1607	@,
.L1659:
	cmp	r2, #32	@ prephitmp.5462,
	addhi	r1, r3, r5	@ tmp403, j, tmp326
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #1872]	@ prephitmp.5462, str
	cmp	r3, #0	@ j,
	beq	.L1607	@,
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1498	@,
.L1607:
	add	r7, r7, #1	@ i, i,
	cmp	r4, r7	@ count, i
	bhi	.L1503	@,
	b	.L1498	@
.L1610:
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1612	@,
.L1661:
	cmp	r2, #32	@ prephitmp.5462,
	addhi	r0, r3, r5	@ tmp406, j, tmp326
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r0, #1872]	@ prephitmp.5462, str
	cmp	r3, #0	@ j,
	beq	.L1612	@,
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1498	@,
.L1612:
	add	r7, r1, #1	@ i, tmp352,
	cmp	r4, r7	@ count, i
	bls	.L1498	@,
.L1503:
	cmp	r3, #0	@ j,
	ldrneb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	bne	.L1500	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1501	@,
.L1500:
	cmp	r2, #32	@ prephitmp.5462,
	addhi	r1, r3, r5	@ tmp193, j, tmp326
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #1872]	@ prephitmp.5462, str
	cmp	r3, #0	@ j,
	beq	.L1501	@,
	cmp	r2, #32	@ prephitmp.5462,
	beq	.L1498	@,
.L1501:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j,
	mov	r1, r7	@ tmp352, i
	beq	.L1610	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	b	.L1661	@
.L1671:
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.5462, buf
	b	.L1659	@
.L1537:
	add	lr, r3, r5	@ tmp316, j.5496, tmp326
	mov	r1, #0	@ tmp318,
	strb	r1, [lr, #1872]	@ tmp318, str
	b	.L1539	@
.L1666:
	mov	r0, r6	@, tmp327
	mov	r1, r4	@, count
	bl	__memzero	@
.L1494:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.40409,
	b	.L1492	@
.L1668:
	cmp	r4, r7	@ count, i
	bls	.L1516	@,
	add	r2, r6, r7	@ ivtmp.5484, tmp327, i
	mvn	r1, r7	@ tmp340, i
	add	r0, r1, r4	@ tmp339, tmp340, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5513, buf
	and	r0, r0, #1	@ tmp341, tmp339,
	cmp	r1, #32	@ prephitmp.5513,
	beq	.L1577	@,
	movhi	r3, #1	@ j.5494,
	strhib	r1, [r5, #1872]	@ prephitmp.5513, str
.L1577:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5484, ivtmp.5484,
	cmp	r4, r7	@ count, i
	bls	.L1516	@,
	cmp	r0, #0	@ tmp341,
	beq	.L1521	@,
	cmp	r3, #0	@ j.5494,
	bne	.L1672	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5513, buf
	cmp	r1, #32	@ prephitmp.5513,
	beq	.L1581	@,
.L1649:
	cmp	r1, #32	@ prephitmp.5513,
	addhi	r0, r3, r5	@ tmp385, j.5494, tmp326
	addhi	r3, r3, #1	@ j.5494, j.5494,
	strhib	r1, [r0, #1872]	@ prephitmp.5513, str
	cmp	r3, #0	@ j.5494,
	beq	.L1581	@,
	cmp	r1, #32	@ prephitmp.5513,
	bls	.L1516	@,
.L1581:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5484, ivtmp.5484,
	cmp	r4, r7	@ count, i
	bhi	.L1521	@,
	b	.L1516	@
.L1584:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5513, buf
	cmp	r2, #32	@ prephitmp.5513,
	beq	.L1586	@,
.L1651:
	cmp	r2, #32	@ prephitmp.5513,
	addhi	ip, r3, r5	@ tmp388, j.5494, tmp326
	addhi	r3, r3, #1	@ j.5494, j.5494,
	strhib	r2, [ip, #1872]	@ prephitmp.5513, str
	cmp	r3, #0	@ j.5494,
	beq	.L1586	@,
	cmp	r2, #32	@ prephitmp.5513,
	bls	.L1516	@,
.L1586:
	add	r7, r0, #1	@ i, tmp342,
	add	r2, r1, #1	@ ivtmp.5484, tmp343,
	cmp	r4, r7	@ count, i
	bls	.L1516	@,
.L1521:
	cmp	r3, #0	@ j.5494,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5513, buf
	bne	.L1518	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5513, buf
	cmp	r1, #32	@ prephitmp.5513,
	beq	.L1519	@,
.L1518:
	cmp	r1, #32	@ prephitmp.5513,
	addhi	r0, r3, r5	@ tmp233, j.5494, tmp326
	addhi	r3, r3, #1	@ j.5494, j.5494,
	strhib	r1, [r0, #1872]	@ prephitmp.5513, str
	cmp	r3, #0	@ j.5494,
	beq	.L1519	@,
	cmp	r1, #32	@ prephitmp.5513,
	bls	.L1516	@,
.L1519:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.5494,
	add	r1, r2, #1	@ tmp343, ivtmp.5484,
	mov	r0, r7	@ tmp342, i
	beq	.L1584	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5513, buf
	b	.L1651	@
.L1516:
	add	r3, r3, r5	@ tmp238, j.5494, tmp326
	mov	r2, #0	@ tmp240,
	ldr	r0, .L1674	@,
	sub	r1, fp, #40	@,,
	strb	r2, [r3, #1872]	@ tmp240, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.40464,
	bne	.L1530	@,
	cmp	r4, r7	@ count, i
	bls	.L1524	@,
	add	r2, r6, r7	@ ivtmp.5480, tmp327, i
	mvn	ip, r7	@ tmp335, i
	add	lr, ip, r4	@ tmp334, tmp335, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5503, buf
	and	r0, lr, #1	@ tmp336, tmp334,
	cmp	r1, #32	@ prephitmp.5503,
	beq	.L1564	@,
	movhi	r3, #1	@ j.5495,
	strhib	r1, [r5, #1872]	@ prephitmp.5503, str
.L1564:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5480, ivtmp.5480,
	cmp	r4, r7	@ count, i
	bls	.L1524	@,
	cmp	r0, #0	@ tmp336,
	beq	.L1529	@,
	cmp	r3, #0	@ j.5495,
	bne	.L1673	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5503, buf
	cmp	r1, #32	@ prephitmp.5503,
	beq	.L1568	@,
.L1644:
	cmp	r1, #32	@ prephitmp.5503,
	addhi	r0, r3, r5	@ tmp376, j.5495, tmp326
	addhi	r3, r3, #1	@ j.5495, j.5495,
	strhib	r1, [r0, #1872]	@ prephitmp.5503, str
	cmp	r3, #0	@ j.5495,
	beq	.L1568	@,
	cmp	r1, #32	@ prephitmp.5503,
	bls	.L1524	@,
.L1568:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5480, ivtmp.5480,
	cmp	r4, r7	@ count, i
	bhi	.L1529	@,
	b	.L1524	@
.L1571:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5503, buf
	cmp	r2, #32	@ prephitmp.5503,
	beq	.L1573	@,
.L1646:
	cmp	r2, #32	@ prephitmp.5503,
	addhi	ip, r3, r5	@ tmp379, j.5495, tmp326
	addhi	r3, r3, #1	@ j.5495, j.5495,
	strhib	r2, [ip, #1872]	@ prephitmp.5503, str
	cmp	r3, #0	@ j.5495,
	beq	.L1573	@,
	cmp	r2, #32	@ prephitmp.5503,
	bls	.L1524	@,
.L1573:
	add	r7, r0, #1	@ i, tmp337,
	add	r2, r1, #1	@ ivtmp.5480, tmp338,
	cmp	r4, r7	@ count, i
	bls	.L1524	@,
.L1529:
	cmp	r3, #0	@ j.5495,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5503, buf
	bne	.L1526	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5503, buf
	cmp	r1, #32	@ prephitmp.5503,
	beq	.L1527	@,
.L1526:
	cmp	r1, #32	@ prephitmp.5503,
	addhi	r0, r3, r5	@ tmp252, j.5495, tmp326
	addhi	r3, r3, #1	@ j.5495, j.5495,
	strhib	r1, [r0, #1872]	@ prephitmp.5503, str
	cmp	r3, #0	@ j.5495,
	beq	.L1527	@,
	cmp	r1, #32	@ prephitmp.5503,
	bls	.L1524	@,
.L1527:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.5495,
	add	r1, r2, #1	@ tmp338, ivtmp.5480,
	mov	r0, r7	@ tmp337, i
	beq	.L1571	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5503, buf
	b	.L1646	@
.L1524:
	add	r3, r3, r5	@ tmp257, j.5495, tmp326
	mov	r2, #0	@ tmp259,
	ldr	r0, .L1674	@,
	sub	r1, fp, #44	@,,
	strb	r2, [r3, #1872]	@ tmp259, str
	bl	str2val	@
	cmp	r0, #0	@,
	beq	.L1514	@,
.L1530:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC359	@,
	ldr	r2, .L1674+4	@,
	movt	r1, #:upper16:.LC359	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40409,
	b	.L1492	@
.L1672:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5513, buf
	b	.L1649	@
.L1673:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5503, buf
	b	.L1644	@
.L1664:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC357	@,
	movt	r1, #:upper16:.LC357	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.40409,
	b	.L1492	@
.L1669:
	mov	r0, #0	@ tmp324,
	strb	r0, [r5, #1872]	@ tmp324, str
.L1542:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC360	@,
	ldr	r2, .L1674+8	@,
	movt	r1, #:upper16:.LC360	@,
	movw	r3, #8505	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40409,
	b	.L1492	@
.L1675:
	.align	2
.L1674:
	.word	.LANCHOR3+1872
	.word	.LANCHOR3+1616
	.word	.LANCHOR1+260
	.fnend
	.size	vfmw_write_proc, .-vfmw_write_proc
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1403:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR0	@ tmp199,
	movt	r5, #:upper16:.LANCHOR0	@ tmp199,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.37156, s_pstVfmwChan
	cmp	r3, #0	@ D.37156,
	beq	.L1687	@,
	ldr	r7, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r8, [r5, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r6, #0	@ tmp144,
	add	r0, r5, #184	@ tmp149, tmp199,
	mov	r2, #300	@ tmp151,
	mov	r1, r2	@, tmp151
	str	r6, [r8, #736]	@ tmp144, <variable>.s32CountNoDecparamFlag
	movw	r8, #:lower16:11200648	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp146, s_pstVfmwChan
	movt	r8, #:upper16:11200648	@,
	mla	r0, r2, r4, r0	@, tmp151, ChanID, tmp149
	str	r6, [r3, #740]	@ tmp144, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	ldr	r0, .L1689	@,
	bl	OSAL_LockIRQ	@
	ldr	ip, [r5, r4, asl #2]	@ tmp158, s_pstVfmwChan
	movw	r1, #:lower16:11201036	@ tmp159,
	movt	r1, #:upper16:11201036	@ tmp159,
	mov	r0, r4	@, ChanID
	str	r6, [ip, r1]	@ tmp144, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r9, [r5, r4, asl #2]	@ tmp164, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r9, r8	@, tmp164,
	mvn	r8, #0	@ tmp168,
	bl	__memzero	@
	ldr	r0, [r5, r4, asl #2]	@ tmp166, s_pstVfmwChan
	movw	r3, #:lower16:11200568	@ tmp167,
	movt	r3, #:upper16:11200568	@ tmp167,
	mvn	r9, #0	@,
	movw	r2, #:lower16:11200576	@ tmp171,
	strd	r8, [r0, r3]	@ tmp168, tmp166, tmp167
	movt	r2, #:upper16:11200576	@ tmp171,
	ldr	r1, [r5, r4, asl #2]	@ tmp170, s_pstVfmwChan
	movw	ip, #:lower16:11200896	@ tmp175,
	movt	ip, #:upper16:11200896	@ tmp175,
	ldr	r0, .L1689	@,
	strd	r8, [r1, r2]	@ tmp168, tmp170, tmp171
	ldr	r2, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	str	r6, [r2, ip]	@ tmp144, <variable>.stSynExtraData.s32NewPicSegDetector
	bl	OSAL_UnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	FSP_SwitchNotify	@
	ldr	r0, [r5, r4, asl #2]	@ tmp182, s_pstVfmwChan
	ldr	r3, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1679	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1680:
	mov	r0, r4	@, ChanID
	movw	r6, #:lower16:.LANCHOR3	@ tmp184,
	movt	r6, #:upper16:.LANCHOR3	@ tmp184,
	bl	InitUsdPool	@
	sub	r0, r6, #2848	@, tmp184,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	sub	r0, r6, #2848	@, tmp184,
	bl	OSAL_SpinLockIRQ	@
	ldr	ip, [r5, #176]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	ip, #0	@ g_ResetCreateNewSave,
	beq	.L1681	@,
	ldr	r1, [r6, #1568]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	lr, #0	@ tmp192,
	str	lr, [fp, #-40]	@ tmp192, data
	cmp	r1, lr	@ vfmw_save_str_file,
	subeq	r5, fp, #40	@ prephitmp.5531,,
	beq	.L1683	@,
	sub	r5, fp, #40	@ prephitmp.5531,,
	mov	r0, #512	@,
	mov	r1, r5	@, prephitmp.5531
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r6, #1568]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1683	@,
.L1684:
	movw	r1, #:lower16:.LC363	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
.L1681:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1688	@,
.L1685:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37160,
.L1678:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L1688:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1685	@
.L1679:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1680	@
.L1683:
	mov	r1, r5	@, prephitmp.5531
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1684	@
.L1687:
	mov	r0, r3	@, D.37156
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3539	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37160,
	b	.L1678	@
.L1690:
	.align	2
.L1689:
	.word	.LANCHOR3-3004
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1398:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #220
	sub	sp, sp, #220	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	mov	r8, r1	@ pstCfg, pstCfg
	bhi	.L1783	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp640,
	movt	r4, #:upper16:.LANCHOR0	@ tmp640,
	ldr	r3, [r4, r0, asl #2]	@ D.36799, s_pstVfmwChan
	cmp	r3, #0	@ D.36799,
	beq	.L1784	@,
	ldr	r3, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1785	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L1786	@,
	movw	r6, #:lower16:.LANCHOR3	@ tmp641,
	movt	r6, #:upper16:.LANCHOR3	@ tmp641,
	add	r0, r6, #2128	@, tmp641,
	bl	GetVdecCapability	@
	add	r3, r6, #2128	@ ivtmp.5593, tmp641,
	add	r0, r6, #2256	@ D.45672, tmp641,
	b	.L1699	@
.L1787:
	ldr	r7, [r8, #0]	@ D.36813, <variable>.eVidStd
	cmp	r2, r7	@ D.36810, D.36813
	beq	.L1698	@,
	ldr	r2, [r1, #20]	@ D.36810, Capability.SupportedStd
	cmp	r2, #18	@ D.36810,
	bhi	.L1697	@,
	cmp	r2, r7	@ D.36810, D.36813
	beq	.L1698	@,
	cmp	r3, r0	@ ivtmp.5593, D.45672
	beq	.L1698	@,
.L1699:
	ldr	r2, [r3, #20]	@ D.36810, Capability.SupportedStd
	add	r1, r3, #4	@ tmp642, ivtmp.5593,
	add	r3, r1, #4	@ ivtmp.5593, tmp642,
	cmp	r2, #18	@ D.36810,
	bls	.L1787	@,
.L1697:
	mvn	r0, #0	@ D.36797,
.L1693:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1698:
	mov	r0, r5	@, ChanID
	mov	r1, r8	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	sl, r0, #0	@ D.36816,
	beq	.L1788	@,
	sub	r0, r7, #10	@ tmp225, D.36813,
	cmp	r0, #2	@ tmp225,
	bhi	.L1701	@,
	ldr	r1, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L1702	@,
.L1703:
	cmp	r7, #14	@ D.36813,
	movne	r1, #0	@, prephitmp.5568
	moveq	r1, #1	@, prephitmp.5568
.L1704:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.5570, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp231,
	movt	r3, #:upper16:.LANCHOR0	@ tmp231,
	ldr	r2, [r7, #36]	@ D.36836, <variable>.stChanCfg.eVidStd
	sub	r9, r2, #10	@ tmp232, D.36836,
	cmp	r9, #2	@ tmp232,
	bhi	.L1705	@,
	ldr	ip, [r3, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L1706	@,
.L1707:
	cmp	r2, #14	@ D.36836,
	movne	r2, #0	@, prephitmp.5660
	moveq	r2, #1	@, prephitmp.5660
.L1708:
	cmp	r2, r1	@ prephitmp.5660, prephitmp.5568
	beq	.L1709	@,
	ldr	r2, [r7, #160]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #0	@ <variable>.s32OneChanMem,
	bne	.L1710	@,
	ldr	sl, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	sl, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1789	@,
.L1711:
	ldr	r0, [r7, #180]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r8, #0]	@ temp.5599, <variable>.eVidStd
	sub	r0, r3, #10	@ tmp245, temp.5599,
	cmp	r0, #2	@ tmp245,
	bls	.L1790	@,
	cmp	r3, #4	@ temp.5599,
	beq	.L1713	@,
	cmp	r3, #14	@ temp.5599,
	bne	.L1714	@,
.L1713:
	ldr	r1, [r7, #184]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #196]	@ temp.5609, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ temp.5609,
	mov	sl, r0	@ pVir_vdh,
	bne	.L1791	@,
.L1715:
	mov	r9, #0	@ pVir_scd,
.L1716:
	cmp	sl, #0	@ pVir_vdh,
	beq	.L1717	@,
	ldr	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	rsbs	r1, r9, #1	@, pVir_scd
	movcc	r1, #0	@
	cmp	r3, #0	@ <variable>.stChanMem_scd.Length,
	moveq	r1, #0	@,,
	cmp	r1, #0	@ tmp262,
	mov	r3, r1	@ tmp262,
	bne	.L1717	@,
	add	r0, r7, #176
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	r3, [fp, #-224]	@,
	bl	MEM_DelMemRecord	@
	ldr	r3, [fp, #-224]	@,
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	bne	.L1792	@,
	str	sl, [r7, #180]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, sl	@, pVir_vdh
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #184]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.36889,
	bne	.L1793	@,
	ldr	r2, [r7, #196]	@ temp.5626, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.5626,
	bne	.L1721	@,
.L1777:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.5570, s_pstVfmwChan
.L1709:
	add	r0, r7, #36	@, prephitmp.5570,
	mov	r2, #76	@,
	mov	r1, r8	@, pstCfg
	sub	r7, fp, #180	@ tmp351,,
	bl	memcpy	@
	ldr	r3, [r8, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	r9, [r4, r5, asl #2]	@ tmp346, s_pstVfmwChan
	movw	ip, #:lower16:.LANCHOR0	@,
	str	r8, [fp, #-184]	@ pstCfg, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r1, #120	@,
	mov	r0, r7	@, tmp351
	str	r3, [r9, #20]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	str	ip, [fp, #-212]	@, %sfp
	ldr	sl, [r4, r5, asl #2]	@ tmp349, s_pstVfmwChan
	ldr	r2, [r8, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [sl, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	r3, [r4, r5, asl #2]	@ tmp353, s_pstVfmwChan
	ldr	r0, [r3, #240]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r0, [fp, #-168]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [r3, #240]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-184]	@, %sfp
	ldr	lr, [r4, r5, asl #2]	@ tmp359, s_pstVfmwChan
	sub	r2, fp, #156	@ tmp368,,
	movw	r3, #:lower16:-121389056	@ tmp364,
	movt	r3, #:upper16:-121389056	@ tmp364,
	ldr	sl, [r1], #4	@ <variable>.eVidStd, <variable>.eVidStd
	str	r1, [fp, #-184]	@, %sfp
	ldr	r9, [fp, #-184]	@, %sfp
	ldr	ip, [r8, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	str	r0, [fp, #-180]	@, ScdInstCfg.pBufVirAddr
	ldmia	r9, {r0, r1}	@,,
	ldr	r9, [lr, #252]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	mov	lr, #0	@,
	strb	ip, [fp, #-176]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	stmia	r2, {r0, r1}	@ tmp368,,
	mov	r1, r7	@, tmp351
	mov	r0, r5	@, ChanID
	str	r9, [fp, #-164]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	sl, [fp, #-172]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	mvn	sl, #0	@ tmp366,
	str	r3, [fp, #-160]	@ tmp364, ScdInstCfg.RegPhyBaseAddr
	movw	r9, #:lower16:11200540	@ tmp381,
	str	sl, [fp, #-148]	@ tmp366, ScdInstCfg.LastRawDisContinueCount
	movt	r9, #:upper16:11200540	@ tmp381,
	str	lr, [fp, #-144]	@, ScdInstCfg.DisContinueRawPacketFlag
	movw	sl, #:lower16:11200548	@ tmp384,
	str	lr, [fp, #-140]	@, ScdInstCfg.ScdLowdlyEnable
	bl	SM_Config	@
	ldr	r7, [r4, r5, asl #2]	@ temp.5708, s_pstVfmwChan
	movw	r1, #:lower16:11201016	@ tmp372,
	movt	r1, #:upper16:11201016	@ tmp372,
	movw	r2, #:lower16:11201020	@ tmp375,
	movt	r2, #:upper16:11201020	@ tmp375,
	movw	r3, #:lower16:11200536	@ tmp378,
	ldr	ip, [r7, #200]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	movt	r3, #:upper16:11200536	@ tmp378,
	movt	sl, #:upper16:11200548	@ tmp384,
	movw	lr, #:lower16:11200556	@ tmp390,
	movt	lr, #:upper16:11200556	@ tmp390,
	str	ip, [r7, r1]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	movw	r7, #:lower16:11200552	@ tmp387,
	ldr	r0, [r4, r5, asl #2]	@, s_pstVfmwChan
	movt	r7, #:upper16:11200552	@ tmp387,
	movw	ip, #:lower16:11200560	@ tmp393,
	movt	ip, #:upper16:11200560	@ tmp393,
	ldr	r1, [r0, #208]	@, <variable>.stChanMem_ctx.Length
	movw	r0, #:lower16:11200516	@,
	movt	r0, #:upper16:11200516	@,
	str	r0, [fp, #-248]	@, %sfp
	movw	r0, #:lower16:11200520	@,
	str	r0, [fp, #-200]	@, %sfp
	str	r1, [fp, #-240]	@, %sfp
	movw	r1, #:lower16:11200512	@,
	ldr	r0, [fp, #-240]	@, %sfp
	movt	r1, #:upper16:11200512	@,
	str	r1, [fp, #-196]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@, s_pstVfmwChan
	str	r0, [r1, r2]	@, <variable>.stSynExtraData.s32ContextMemSize
	movw	r2, #:lower16:11200524	@,
	ldr	r0, [fp, #-200]	@, %sfp
	movt	r2, #:upper16:11200524	@,
	movw	r1, #:lower16:11200528	@,
	str	r2, [fp, #-232]	@, %sfp
	movt	r0, #:upper16:11200520	@,
	str	r0, [fp, #-200]	@, %sfp
	ldr	r0, [r4, r5, asl #2]	@, s_pstVfmwChan
	movt	r1, #:upper16:11200528	@,
	str	r1, [fp, #-236]	@, %sfp
	movw	r1, #:lower16:11201040	@,
	movt	r1, #:upper16:11201040	@,
	movw	r2, #:lower16:11201024	@,
	ldr	r0, [r0, #224]	@, <variable>.s32VdmChanMemAddr
	movt	r2, #:upper16:11201024	@,
	str	r1, [fp, #-204]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@, s_pstVfmwChan
	str	r2, [fp, #-192]	@, %sfp
	movw	r2, #:lower16:11201044	@,
	movt	r2, #:upper16:11201044	@,
	str	r2, [fp, #-208]	@, %sfp
	str	r0, [r1, r3]	@, <variable>.stSynExtraData.s32SyntaxMemAddr
	movw	r0, #:lower16:11200532	@,
	ldr	r2, [r4, r5, asl #2]	@, s_pstVfmwChan
	movt	r0, #:upper16:11200532	@,
	ldr	r1, [r4, r5, asl #2]	@, s_pstVfmwChan
	movw	r3, #:lower16:11200900	@ tmp429,
	str	r0, [fp, #-188]	@, %sfp
	movt	r3, #:upper16:11200900	@ tmp429,
	ldr	r0, [r2, #228]	@, <variable>.s32VdmChanMemSize
	str	r0, [r1, r9]	@, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r9, [r4, r5, asl #2]	@ temp.5712, s_pstVfmwChan
	ldr	r2, [r9, #256]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r2, [r9, sl]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	sl, [r4, r5, asl #2]	@ temp.5713, s_pstVfmwChan
	ldr	r0, [sl, #260]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	r0, [sl, r7]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r7, [r4, r5, asl #2]	@ temp.5714, s_pstVfmwChan
	ldr	sl, [r7, #264]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	sl, [r7, lr]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r1, [r4, r5, asl #2]	@ temp.5715, s_pstVfmwChan
	ldr	r7, [r1, #268]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	r7, [r1, ip]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r2, [fp, #-248]	@, %sfp
	ldr	lr, [r4, r5, asl #2]	@ tmp396, s_pstVfmwChan
	ldr	ip, [r8, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	ip, [lr, r2]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r0, [fp, #-196]	@, %sfp
	ldr	r9, [r4, r5, asl #2]	@ tmp400, s_pstVfmwChan
	ldr	r1, [r8, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r1, [r9, r0]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r2, [fp, #-200]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp404, s_pstVfmwChan
	ldr	lr, [r8, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	lr, [ip, r2]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r0, [fp, #-232]	@, %sfp
	ldr	r9, [r4, r5, asl #2]	@ tmp408, s_pstVfmwChan
	ldr	r1, [r8, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	r1, [r9, r0]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r2, [fp, #-236]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp412, s_pstVfmwChan
	ldr	lr, [r8, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	lr, [ip, r2]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r9, [fp, #-192]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@ tmp416, s_pstVfmwChan
	ldr	r0, [r8, #52]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	r0, [r1, r9]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r9, [fp, #-204]	@, %sfp
	ldr	lr, [r4, r5, asl #2]	@ tmp420, s_pstVfmwChan
	ldr	r2, [r8, #68]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r2, #1	@ <variable>.s32SupportAllP,
	movne	ip, #0	@, tmp423
	moveq	ip, #1	@, tmp423
	str	ip, [lr, r9]	@ tmp423, <variable>.stSynExtraData.s32SupportAllP
	ldr	r0, [r4, r5, asl #2]	@ tmp425, s_pstVfmwChan
	ldr	r1, [r8, #72]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	ldr	r9, [fp, #-208]	@, %sfp
	str	r1, [r0, r9]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r2, [fp, #-184]	@, %sfp
	ldr	lr, [r4, r5, asl #2]	@ tmp431, s_pstVfmwChan
	ldmia	r2, {r0, r1}	@,,
	add	r3, lr, r3	@ tmp429, tmp431, tmp429
	mov	r2, #0	@,
	stmia	r3, {r0, r1}	@ tmp429,,
	ldr	r0, [fp, #-188]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp436, s_pstVfmwChan
	str	r2, [ip, r0]	@, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.5681, s_pstVfmwChan
	ldr	r3, [r0, #944]	@ prephitmp.5572, <variable>.stSynCtx.eVidStd
	ldr	r1, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, r1	@ prephitmp.5572, <variable>.eVidStd
	beq	.L1734	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r1, [r8, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r2, [fp, #-212]	@, %sfp
	cmp	r1, #18	@ <variable>.eVidStd,
	ldr	r0, [r2, r5, asl #2]	@ prephitmp.5681, s_pstVfmwChan
	bne	.L1778	@,
	movw	r3, #:lower16:11201068	@ tmp443,
	movt	r3, #:upper16:11201068	@ tmp443,
	ldr	lr, [r0, #248]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	ldr	ip, [r0, r3]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	r3, [r0, #244]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	cmp	ip, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	movwne	r2, #:lower16:11201076	@ tmp445,
	movweq	r2, #:lower16:11201128	@ tmp447,
	movtne	r2, #:upper16:11201076	@ tmp445,
	movwne	ip, #:lower16:11201080	@ tmp446,
	movteq	r2, #:upper16:11201128	@ tmp447,
	movweq	ip, #:lower16:11201132	@ tmp448,
	movtne	ip, #:upper16:11201080	@ tmp446,
	movteq	ip, #:upper16:11201132	@ tmp448,
	ldr	r1, [r0, r2]	@ MaxWidth,
	ldr	r2, [r0, ip]	@ MaxHeight,
	mov	r0, r5	@, ChanID
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1738	@,
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.5681, s_pstVfmwChan
.L1778:
	ldr	r3, [r0, #936]	@ prephitmp.5572, <variable>.eVidStd
.L1734:
	str	r3, [r0, #944]	@ prephitmp.5572, <variable>.stSynCtx.eVidStd
	movw	r7, #:lower16:.LANCHOR0	@ tmp453,
	ldr	r0, [r4, r5, asl #2]	@ tmp454, s_pstVfmwChan
	movt	r7, #:upper16:.LANCHOR0	@ tmp453,
	ldr	r1, [r0, #244]	@ temp.5729, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.5729
	str	r1, [fp, #-60]	@ temp.5729, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, r5, asl #2]	@ tmp456, s_pstVfmwChan
	sub	r1, fp, #60	@,,
	str	r0, [fp, #-56]	@, stMem.VirAddr
	mov	r0, r5	@, ChanID
	ldr	r2, [ip, #248]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r2, [fp, #-52]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	cmp	r0, #0	@,
	bne	.L1697	@,
	ldr	r0, [r7, #0]	@ D.36997, s_pstVfmwChan
	ldr	ip, [r4, #4]	@ temp.5738, s_pstVfmwChan
	cmp	r0, #0	@ D.36997,
	ldr	r2, [r4, #8]	@ temp.5742, s_pstVfmwChan
	streq	r0, [r6, #2276]	@ D.36997, PrioArray
	ldrne	r1, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp639,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp639,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp639,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp639,
	ldr	lr, [r4, #12]	@ temp.5746, s_pstVfmwChan
	strne	r1, [r6, #2276]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.5738,
	streq	ip, [r3, #4]	@ temp.5738, g_ChanCtx.PriorByChanId
	streq	ip, [r6, #2280]	@ temp.5738, PrioArray
	str	r0, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, [r4, #16]	@ temp.5750, s_pstVfmwChan
	strne	r1, [r6, #2280]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5742,
	streq	r2, [r3, #8]	@ temp.5742, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #2284]	@ temp.5742, PrioArray
	strne	r1, [r6, #2284]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5746,
	streq	lr, [r3, #12]	@ temp.5746, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #2288]	@ temp.5746, PrioArray
	strne	r1, [r6, #2288]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r0, #0	@ temp.5750,
	streq	r0, [r3, #16]	@ temp.5750, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #2292]	@ temp.5750, PrioArray
	strne	r1, [r6, #2292]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #16]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #20]	@ temp.5754, s_pstVfmwChan
	ldr	r2, [r4, #24]	@ temp.5758, s_pstVfmwChan
	cmp	ip, #0	@ temp.5754,
	ldr	lr, [r4, #28]	@ temp.5762, s_pstVfmwChan
	streq	ip, [r3, #20]	@ temp.5754, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #2296]	@ temp.5754, PrioArray
	ldr	r0, [r4, #32]	@ temp.5766, s_pstVfmwChan
	strne	r1, [r6, #2296]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #20]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5758,
	streq	r2, [r3, #24]	@ temp.5758, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #2300]	@ temp.5758, PrioArray
	ldr	ip, [r4, #36]	@ temp.5770, s_pstVfmwChan
	strne	r1, [r6, #2300]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #24]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5762,
	streq	lr, [r3, #28]	@ temp.5762, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #2304]	@ temp.5762, PrioArray
	strne	r1, [r6, #2304]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #28]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r0, #0	@ temp.5766,
	streq	r0, [r3, #32]	@ temp.5766, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #2308]	@ temp.5766, PrioArray
	strne	r1, [r6, #2308]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #32]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5770,
	streq	ip, [r3, #36]	@ temp.5770, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #2312]	@ temp.5770, PrioArray
	strne	r1, [r6, #2312]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #36]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r2, [r4, #40]	@ temp.5774, s_pstVfmwChan
	ldr	lr, [r4, #44]	@ temp.5778, s_pstVfmwChan
	cmp	r2, #0	@ temp.5774,
	ldr	r0, [r4, #48]	@ temp.5782, s_pstVfmwChan
	streq	r2, [r3, #40]	@ temp.5774, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #2316]	@ temp.5774, PrioArray
	ldr	ip, [r4, #52]	@ temp.5786, s_pstVfmwChan
	strne	r1, [r6, #2316]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #40]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5778,
	streq	lr, [r3, #44]	@ temp.5778, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #2320]	@ temp.5778, PrioArray
	ldr	r2, [r4, #56]	@ temp.5790, s_pstVfmwChan
	strne	r1, [r6, #2320]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #44]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r0, #0	@ temp.5782,
	streq	r0, [r3, #48]	@ temp.5782, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #2324]	@ temp.5782, PrioArray
	strne	r1, [r6, #2324]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #48]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5786,
	streq	ip, [r3, #52]	@ temp.5786, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #2328]	@ temp.5786, PrioArray
	ldr	r0, .L1798	@,
	strne	r1, [r6, #2328]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #52]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5790,
	streq	r2, [r3, #56]	@ temp.5790, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #2332]	@ temp.5790, PrioArray
	strne	r1, [r6, #2332]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #56]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #60]	@ temp.5732, s_pstVfmwChan
	cmp	lr, #0	@ temp.5732,
	streq	lr, [r3, #60]	@ temp.5732, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #2336]	@ temp.5732, PrioArray
	strne	r1, [r6, #2336]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #60]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36797,
	b	.L1693	@
.L1705:
	cmp	r2, #4	@ D.36836,
	bne	.L1707	@,
.L1706:
	mov	r2, #1	@ prephitmp.5660,
	b	.L1708	@
.L1701:
	cmp	r7, #4	@ D.36813,
	bne	.L1703	@,
.L1702:
	mov	r1, #1	@ prephitmp.5568,
	b	.L1704	@
.L1788:
	movw	r1, #:lower16:.LC365	@,
	movt	r1, #:upper16:.LC365	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.36797, D.36816
	b	.L1693	@
.L1790:
	ldr	lr, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1713	@,
.L1714:
	ldr	r1, [r7, #184]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #196]	@ temp.5604, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ temp.5604,
	mov	sl, r0	@ pVir_vdh,
	beq	.L1715	@,
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	mov	r9, r0	@ pVir_scd,
	b	.L1716	@
.L1789:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L1711	@
.L1721:
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #192]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	movne	r0, sl	@, D.36889
	ldrne	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	bne	.L1781	@,
	str	r9, [r7, #192]	@ pVir_scd, <variable>.stChanMem_scd.VirAddr
	mov	r1, r9	@, pVir_scd
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1777	@,
	ldr	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	ldr	r0, [fp, #-184]	@, %sfp
.L1781:
	str	r3, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	movw	r1, #:lower16:.LC368	@,
	ldr	r3, [r7, #192]	@, <variable>.stChanMem_scd.VirAddr
	movt	r1, #:upper16:.LC368	@,
	ldr	r2, [r7, #188]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1738:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC369	@,
	movt	r1, #:upper16:.LC369	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1785:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #2928	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1710:
	ldr	r0, [r7, #168]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r8, #0]	@ temp.5642, <variable>.eVidStd
	sub	r9, r3, #10	@ tmp289, temp.5642,
	cmp	r9, #2	@ tmp289,
	bls	.L1794	@,
	cmp	r3, #4	@ temp.5642,
	beq	.L1725	@,
	cmp	r3, #14	@ temp.5642,
	bne	.L1726	@,
.L1725:
	ldr	r0, [r7, #164]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #172]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	r9, r0	@ pVir,
.L1727:
	cmp	r9, #0	@ pVir,
	beq	.L1795	@,
	ldr	lr, [r4, r5, asl #2]	@ temp.5656, s_pstVfmwChan
	movw	sl, #:lower16:.LANCHOR0	@ tmp301,
	movt	sl, #:upper16:.LANCHOR0	@ tmp301,
	add	r0, lr, #188
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-196]	@, %sfp
	ldrne	r2, [sl, r5, asl #2]	@ temp.5658, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L1780	@,
	ldr	r3, [sl, r5, asl #2]	@ temp.5663, s_pstVfmwChan
	add	r0, r3, #176
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	ldrne	r2, [sl, r5, asl #2]	@ temp.5665, s_pstVfmwChan
	ldrne	r0, [fp, #-196]	@, %sfp
	bne	.L1779	@,
	str	r9, [r7, #168]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, r9	@, pVir
	ldr	lr, [sl, r5, asl #2]	@ tmp316, s_pstVfmwChan
	ldr	r0, [r7, #164]	@, <variable>.stChanMem.PhyAddr
	ldr	r2, [r7, #172]	@, <variable>.stChanMem.Length
	str	r9, [lr, #192]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	ip, [sl, r5, asl #2]	@ temp.5670, s_pstVfmwChan
	ldr	r3, [ip, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	lr, r9, r3	@ tmp319, pVir, <variable>.stChanMem_scd.Length
	str	lr, [ip, #180]	@ tmp319, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r9, r0, #0	@ D.36933,
	bne	.L1796	@,
	ldr	r7, [sl, r5, asl #2]	@ temp.5679, s_pstVfmwChan
	add	r0, r7, #188
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	subs	r7, r0, #0	@ D.36936,
	bne	.L1797	@,
	ldr	r3, [sl, r5, asl #2]	@ temp.5689, s_pstVfmwChan
	add	r0, r3, #176
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	ldreq	r7, [sl, r5, asl #2]	@ prephitmp.5570, s_pstVfmwChan
	beq	.L1709	@,
	ldr	r2, [sl, r5, asl #2]	@ temp.5694, s_pstVfmwChan
	mov	r0, r7	@, D.36936
.L1779:
	ldr	lr, [r2, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r2, #180]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r2, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1791:
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	mov	r9, r0	@ pVir_scd,
	b	.L1716	@
.L1794:
	ldr	r0, [r4, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L1725	@,
.L1726:
	ldr	r0, [r7, #164]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #172]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	r9, r0	@ pVir,
	b	.L1727	@
.L1786:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC364	@,
	movt	r1, #:upper16:.LC364	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1717:
	mov	r2, r5	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5, asl #2]	@ tmp266, s_pstVfmwChan
	ldr	r3, [r8, #0]	@, <variable>.eVidStd
	mov	r0, #0	@,
.L1782:
	movw	r1, #:lower16:.LC367	@,
	ldr	r2, [r2, #36]	@, <variable>.stChanCfg.eVidStd
	movt	r1, #:upper16:.LC367	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1783:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2926	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1792:
	ldr	ip, [r7, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	mov	r0, r3	@, tmp262
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #180]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1797:
	ldr	r2, [sl, r5, asl #2]	@ temp.5685, s_pstVfmwChan
	mov	r0, r9	@, D.36933
.L1780:
	ldr	ip, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r2, #192]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r2, #188]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1793:
	ldr	r2, [r7, #184]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC368	@,
	ldr	r0, [fp, #-184]	@, %sfp
	movt	r1, #:upper16:.LC368	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #180]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1796:
	ldr	r2, [r7, #172]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	movw	r1, #:lower16:.LC368	@,
	ldr	r0, [fp, #-184]	@, %sfp
	movt	r1, #:upper16:.LC368	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem.Length,
	ldr	r3, [r7, #168]	@, <variable>.stChanMem.VirAddr
	ldr	r2, [r7, #164]	@, <variable>.stChanMem.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1784:
	mov	r0, r3	@, D.36799
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2927	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36797,
	b	.L1693	@
.L1795:
	mov	r2, r5	@, ChanID
	mov	r0, r9	@, pVir
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5, asl #2]	@ tmp300, s_pstVfmwChan
	mov	r0, r9	@, pVir
	ldr	r3, [r8, #0]	@, <variable>.eVidStd
	b	.L1782	@
.L1799:
	.align	2
.L1798:
	.word	.LANCHOR3+2276
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1391:
	@ args = 0, pretend = 0, frame = 88
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
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L1813	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #15	@ ChanID,
	bhi	.L1810	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp203,
	movt	r5, #:upper16:.LANCHOR0	@ tmp203,
	ldr	r6, [r5, r4, asl #2]	@ D.36510, s_pstVfmwChan
	cmp	r6, #0	@ D.36510,
	beq	.L1811	@,
	ldr	r3, [r6, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1812	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r6, #936]	@ D.36519, <variable>.eVidStd
	cmp	r3, #4	@ D.36519,
	beq	.L1805	@,
	sub	r2, r3, #10	@ tmp164, D.36519,
	cmp	r2, #2	@ tmp164,
	bhi	.L1806	@,
	ldr	r0, [r5, #64]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L1805	@,
.L1807:
	mov	r0, r4	@, ChanID
	sub	r6, fp, #92	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r2, [r5, r4, asl #2]	@ temp.5819, s_pstVfmwChan
	sub	r7, fp, #116	@ tmp174,,
	sub	ip, fp, #80	@ tmp176,,
	add	r0, r2, #112	@, temp.5819,
	add	lr, r2, #200	@ tmp177, temp.5819,
	ldr	r3, [r2, #220]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r1, r2, #164	@ tmp175, temp.5819,
	str	r6, [fp, #-128]	@, %sfp
	add	r6, r4, #162	@ tmp185, ChanID,
	str	r0, [fp, #-120]	@, %sfp
	movw	r0, #:lower16:s_SmIIS	@ tmp184,
	movt	r0, #:upper16:s_SmIIS	@ tmp184,
	str	r3, [fp, #-60]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r6, r0, r6, asl #2	@,, tmp184, tmp185,
	sub	r3, fp, #56	@,,
	str	r6, [fp, #-124]	@, %sfp
	add	r8, r2, #176	@ tmp179, temp.5819,
	str	r3, [fp, #-132]	@, %sfp
	add	r9, r2, #188	@ tmp181, temp.5819,
	ldr	r6, [r2, #212]	@, <variable>.s32SelfAllocChanMem_vdh
	sub	sl, fp, #104	@ tmp178,,
	movw	r3, #:lower16:s_pFspInst	@ tmp191,
	movt	r3, #:upper16:s_pFspInst	@ tmp191,
	str	r6, [fp, #-68]	@, ChanMem.s32SelfAllocChanMem_vdh
	mov	r6, #0	@ tmp190,
	ldr	r2, [r2, #216]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r2, [fp, #-64]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldmia	r1, {r0, r1, r2}	@ tmp175,,,
	stmia	r7, {r0, r1, r2}	@ tmp174,,,
	ldmia	lr, {r0, r1, r2}	@ tmp177,,,
	stmia	ip, {r0, r1, r2}	@ tmp176,,,
	ldr	ip, [fp, #-128]	@, %sfp
	ldmia	r8, {r0, r1, r2}	@ tmp179,,,
	stmia	sl, {r0, r1, r2}	@ tmp178,,,
	ldmia	r9, {r0, r1, r2}	@ tmp181,,,
	stmia	ip, {r0, r1, r2}	@,,,
	ldr	lr, [fp, #-120]	@, %sfp
	ldr	ip, [fp, #-132]	@, %sfp
	ldmia	lr, {r0, r1, r2}	@,,,
	str	r6, [r3, r4, asl #2]	@ tmp190, s_pFspInst
	str	r6, [r5, r4, asl #2]	@ tmp190, s_pstVfmwChan
	stmia	ip, {r0, r1, r2}	@,,,
	ldr	r1, [fp, #-124]	@, %sfp
	mov	r0, r4	@, ChanID
	str	r6, [r1, #4]	@ tmp190, s_SmIIS.pSmInstArray
	bl	VDMDRV_ClearChanIsDec	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1813	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r7	@, tmp174
	bl	VCTRL_FreeChanResource	@
	mov	r0, r6	@ D.36508, tmp190
.L1802:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1806:
	cmp	r3, #14	@ D.36519,
	bne	.L1807	@,
.L1805:
	ldr	r3, [r5, #84]	@ D.36526, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.36526,
	beq	.L1807	@,
	add	r0, r6, #952	@, D.36510,
	blx	r3	@ D.36526
	b	.L1807	@
.L1812:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC296	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC296	@,
	movw	r2, #2435	@,
	mov	r0, #0	@,
.L1809:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1813	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36508,
	b	.L1802	@
.L1810:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movw	r2, #2417	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC2	@,
	b	.L1809	@
.L1811:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC295	@,
	mov	r0, r6	@, D.36510
	movw	r2, #2424	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC295	@,
	b	.L1809	@
.L1814:
	.align	2
.L1813:
	.word	.LANCHOR3-2848
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
.LFB1390:
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
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	movw	ip, #:lower16:.LANCHOR3	@ tmp136,
	movt	ip, #:upper16:.LANCHOR3	@ tmp136,
	movw	r3, #:lower16:-2696	@ tmp143,
	add	r2, ip, r4, asl #2	@, tmp139, tmp136, ChanID,
	movt	r3, #:upper16:-2696	@ tmp143,
	mov	r1, #0	@ tmp141,
	str	r1, [r2, r3]	@ tmp141, g_DSPState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp187,
	movt	r4, #:upper16:.LANCHOR3	@ tmp187,
	ldr	r3, [r4, #-3008]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.35842,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp186,
	movt	r5, #:upper16:.LANCHOR0	@ tmp186,
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1820	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1820:
	ldr	r1, [r5, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1821	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChan	@
.L1821:
	ldr	r2, [r5, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1822	@,
	mov	r0, #2	@,
	bl	VCTRL_DestroyChan	@
.L1822:
	ldr	ip, [r5, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L1823	@,
	mov	r0, #3	@,
	bl	VCTRL_DestroyChan	@
.L1823:
	ldr	lr, [r5, #16]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1824	@,
	mov	r0, #4	@,
	bl	VCTRL_DestroyChan	@
.L1824:
	ldr	r3, [r5, #20]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1825	@,
	mov	r0, #5	@,
	bl	VCTRL_DestroyChan	@
.L1825:
	ldr	r0, [r5, #24]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1826	@,
	mov	r0, #6	@,
	bl	VCTRL_DestroyChan	@
.L1826:
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1827	@,
	mov	r0, #7	@,
	bl	VCTRL_DestroyChan	@
.L1827:
	ldr	r2, [r5, #32]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1828	@,
	mov	r0, #8	@,
	bl	VCTRL_DestroyChan	@
.L1828:
	ldr	ip, [r5, #36]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L1829	@,
	mov	r0, #9	@,
	bl	VCTRL_DestroyChan	@
.L1829:
	ldr	lr, [r5, #40]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1830	@,
	mov	r0, #10	@,
	bl	VCTRL_DestroyChan	@
.L1830:
	ldr	r3, [r5, #44]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1831	@,
	mov	r0, #11	@,
	bl	VCTRL_DestroyChan	@
.L1831:
	ldr	r0, [r5, #48]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1832	@,
	mov	r0, #12	@,
	bl	VCTRL_DestroyChan	@
.L1832:
	ldr	r1, [r5, #52]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1833	@,
	mov	r0, #13	@,
	bl	VCTRL_DestroyChan	@
.L1833:
	ldr	r2, [r5, #56]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1834	@,
	mov	r0, #14	@,
	bl	VCTRL_DestroyChan	@
.L1834:
	ldr	ip, [r5, #60]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L1835	@,
	mov	r0, #15	@,
	bl	VCTRL_DestroyChan	@
.L1835:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r3, #3	@ tmp171,
	str	r3, [r4, #-2964]	@ tmp171, s_VfmwCTrl.eTaskCommand
	b	.L1837	@
.L1842:
	bl	msleep	@
	ldr	r1, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1836	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1836	@,
.L1837:
	ldr	lr, [r4, #-2968]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp189, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp189,
	cmp	lr, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1842	@,
.L1836:
	mov	r1, #64	@,
	ldr	r0, .L1843	@,
	mov	r5, #0	@ tmp175,
	str	r5, [r4, #-2964]	@ tmp175, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	ldr	r0, .L1843+4	@,
	bl	CloseDrivers	@
	bl	DBG_DestroyTracer	@
	mov	r0, r5	@ D.35842, tmp175
	str	r5, [r4, #-3008]	@ tmp175, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1844:
	.align	2
.L1843:
	.word	.LANCHOR3-2696
	.word	.LANCHOR3-2948
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1389:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #236
	sub	sp, sp, #236	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	sl, fp, #84	@ tmp580,,
	sub	r9, fp, #100	@ tmp579,,
	mov	r6, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r0, sl	@, tmp580
	mov	r1, #16	@,
	sub	r5, fp, #116	@ tmp578,,
	mov	r7, r2	@ flag, flag
	str	r3, [fp, #-244]	@ OneChanMemFlag, %sfp
	bl	__memzero	@
	mov	r0, r9	@, tmp579
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r5	@, tmp578
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r0, r7, #1	@ tmp186, flag
	movcc	r0, #0	@ tmp186
	cmp	r6, #25	@ eCapLevel,
	movw	r3, #:lower16:.LANCHOR3	@ tmp576,
	movt	r3, #:upper16:.LANCHOR3	@ tmp576,
	moveq	r0, #0	@, tmp186,
	cmp	r0, #0	@ tmp186,
	str	r4, [r3, #2340]	@ pChanOption, pOption
	bne	.L1921	@,
	ldr	r3, [r4, #0]	@ D.36267, <variable>.Purpose
	cmp	r3, #2	@ D.36267,
	bhi	.L1922	@,
	beq	.L1923	@,
	cmp	r3, #1	@ D.36267,
	bne	.L1851	@,
	ldr	r3, [r4, #28]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L1852	@,
	ldr	r2, [r4, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r2, #31	@ <variable>.s32MaxWidth,
	ble	.L1852	@,
	ldr	ip, [r4, #12]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	ip, #31	@ <variable>.s32MaxHeight,
	ble	.L1852	@,
	ldr	r0, [r4, #52]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	r0, #262144	@ <variable>.s32SCDBufSize,
	blt	.L1852	@,
	ldr	r1, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r1, #1	@ <variable>.s32SupportH264,
	beq	.L1924	@,
.L1851:
	mov	r3, r7	@, flag
	mov	r0, r6	@, eCapLevel
	mov	r1, r4	@, pChanOption
	sub	r2, fp, #68	@,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	ip, r0, #0	@ D.36299,
	bne	.L1925	@,
	ldr	r3, [r4, #4]	@ D.36303, <variable>.MemAllocMode
	cmp	r3, #1	@ D.36303,
	beq	.L1926	@,
	cmp	r3, #2	@ D.36303,
	beq	.L1927	@,
	cmp	r3, #3	@ D.36303,
	bne	.L1868	@,
	ldr	lr, [r4, #112]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L1869	@,
	ldr	r2, [r4, #116]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	beq	.L1869	@,
	add	r3, r4, #108	@ tmp279, pChanOption,
	ldr	lr, [fp, #-60]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp279,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp578,,,,
	ldr	r2, [fp, #-108]	@ temp.5958, ChanMemCtx.Length
	cmp	r2, lr	@ temp.5958, DetailMemSize.ChanCtxDetailMem
	blt	.L1928	@,
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	str	ip, [fp, #-228]	@ D.36299, %sfp
	bl	MEM_AddMemRecord	@
.L1872:
	ldr	ip, [r4, #80]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L1874	@,
	ldr	r0, [r4, #84]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	beq	.L1874	@,
	add	r3, r4, #76	@ tmp298, pChanOption,
	ldr	ip, [fp, #-68]	@ prephitmp.5971, DetailMemSize.VdhDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp298,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp580,,,,
	ldr	r2, [fp, #-76]	@ prephitmp.5970, ChanMemVDH.Length
	cmp	r2, ip	@ prephitmp.5970, prephitmp.5971
	blt	.L1929	@,
	ldr	r0, [fp, #-84]	@, ChanMemVDH.PhyAddr
	mov	ip, #0	@,
	ldr	r1, [fp, #-80]	@, ChanMemVDH.VirAddr
	str	ip, [fp, #-236]	@, %sfp
	bl	MEM_AddMemRecord	@
.L1878:
	ldr	r0, [r4, #96]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L1881	@,
	ldr	lr, [r4, #100]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	beq	.L1881	@,
	add	r3, r4, #92	@ tmp320, pChanOption,
	ldr	ip, [r4, #0]	@ temp.5995, <variable>.Purpose
	ldmia	r3, {r0, r1, r2, r3}	@ tmp320,,,,
	cmp	ip, #2	@ temp.5995,
	stmia	r9, {r0, r1, r2, r3}	@ tmp579,,,,
	beq	.L1887	@,
	ldr	r1, [fp, #-96]	@ temp.5996, ChanMemScd.VirAddr
	cmp	r1, #0	@ temp.5996,
	beq	.L1888	@,
	ldr	r2, [fp, #-92]	@ prephitmp.5905, ChanMemScd.Length
	ldr	lr, [fp, #-64]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	cmp	r2, lr	@ prephitmp.5905, DetailMemSize.ScdDetailMem
	bge	.L1889	@,
.L1888:
	cmp	ip, #1	@ temp.5995,
	ldrne	r2, [fp, #-92]	@ prephitmp.5905, ChanMemScd.Length
	beq	.L1930	@,
.L1889:
	ldr	r0, [fp, #-100]	@, ChanMemScd.PhyAddr
	mov	r7, #0	@,
	str	r7, [fp, #-240]	@, %sfp
	bl	MEM_AddMemRecord	@
	b	.L1862	@
.L1881:
	ldr	r3, [r4, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r3, #2	@ <variable>.Purpose,
	beq	.L1883	@,
	mov	ip, #0	@ tmp308,
	movw	r0, #:lower16:.LC379	@,
	mov	r1, ip	@, tmp308
	movt	r0, #:upper16:.LC379	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-64]	@, DetailMemSize.ScdDetailMem
	str	ip, [sp, #0]	@ tmp308,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1931	@,
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	mov	r7, #1	@,
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	ldr	r2, [fp, #-48]	@, MemRecord.Length
	str	r7, [fp, #-240]	@, %sfp
.L1919:
	bl	MEM_AddMemRecord	@
	ldr	r1, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r1, [fp, #-100]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	ip, [fp, #-96]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r3, [fp, #-92]	@ MemRecord.Length, ChanMemScd.Length
	b	.L1862	@
.L1869:
	movw	r0, #:lower16:.LC375	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC375	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-60]	@, DetailMemSize.ChanCtxDetailMem
	mov	r7, #1	@ tmp270,
	str	r7, [sp, #0]	@ tmp270,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1932	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	r7, [fp, #-228]	@ tmp270, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r3, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r0, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r3, [fp, #-116]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	r1, [fp, #-112]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	r0, [fp, #-108]	@ MemRecord.Length, ChanMemCtx.Length
	b	.L1872	@
.L1923:
	ldr	r0, [r4, #60]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r0, #0	@ <variable>.s32SlotWidth,
	beq	.L1850	@,
	ldr	r1, [r4, #64]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r1, #0	@ <variable>.s32SlotHeight,
	bne	.L1851	@,
.L1850:
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC17	@,
	mvn	lr, #0	@,
	str	lr, [fp, #-224]	@, %sfp
	bl	dprint_vfmw	@
	b	.L1847	@
.L1874:
	mov	lr, #0	@ tmp289,
	movw	r0, #:lower16:.LC377	@,
	mov	r1, lr	@, tmp289
	movt	r0, #:upper16:.LC377	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-68]	@, DetailMemSize.VdhDetailMem
	str	lr, [sp, #0]	@ tmp289,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1933	@,
	ldr	r2, [fp, #-48]	@, MemRecord.Length
	mov	lr, #1	@,
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	str	lr, [fp, #-236]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r0, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r0, [fp, #-84]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	ip, [fp, #-80]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	r2, [fp, #-76]	@ MemRecord.Length, ChanMemVDH.Length
	b	.L1878	@
.L1926:
	add	r3, r4, #76	@ tmp205, pChanOption,
	add	lr, r4, #92	@ tmp207, pChanOption,
	add	ip, r4, #108	@ tmp209, pChanOption,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp580,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp207,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp579,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp209,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp578,,,,
	ldr	r1, [fp, #-112]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	cmp	r1, #0	@ ChanMemCtx.VirAddr,
	beq	.L1855	@,
	ldr	r0, [fp, #-60]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r2, [fp, #-108]	@ ChanMemCtx.Length, ChanMemCtx.Length
	cmp	r2, r0	@ ChanMemCtx.Length, DetailMemSize.ChanCtxDetailMem
	blt	.L1855	@,
	ldr	ip, [fp, #-96]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	cmp	ip, #0	@ ChanMemScd.VirAddr,
	beq	.L1857	@,
	ldr	r3, [fp, #-64]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	lr, [fp, #-92]	@ ChanMemScd.Length, ChanMemScd.Length
	cmp	lr, r3	@ ChanMemScd.Length, DetailMemSize.ScdDetailMem
	bge	.L1858	@,
.L1857:
	ldr	r0, [r4, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	beq	.L1934	@,
.L1858:
	ldr	r1, [fp, #-80]	@ D.36324, ChanMemVDH.VirAddr
	cmp	r1, #0	@ D.36324,
	beq	.L1859	@,
	ldr	r2, [fp, #-76]	@ D.36326, ChanMemVDH.Length
	ldr	r0, [fp, #-68]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	cmp	r2, r0	@ D.36326, DetailMemSize.VdhDetailMem
	blt	.L1859	@,
	ldr	r0, [fp, #-84]	@, ChanMemVDH.PhyAddr
	bl	MEM_AddMemRecord	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r7, [r4, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r7, #2	@ <variable>.Purpose,
	bne	.L1861	@,
	mov	ip, #0	@,
	str	ip, [fp, #-228]	@, %sfp
	str	ip, [fp, #-240]	@, %sfp
	str	ip, [fp, #-236]	@, %sfp
.L1862:
	movw	r7, #:lower16:.LANCHOR0	@ tmp575,
	movt	r7, #:upper16:.LANCHOR0	@ tmp575,
	ldr	r0, .L1947	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r3, [r7, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1920	@,
	ldr	lr, [r7, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	moveq	ip, #1	@,
	streq	ip, [fp, #-224]	@, %sfp
	moveq	r8, ip	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r1, [r7, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	moveq	lr, #2	@,
	streq	lr, [fp, #-224]	@, %sfp
	moveq	r8, lr	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r2, [r7, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r0, #3	@,
	streq	r0, [fp, #-224]	@, %sfp
	moveq	r8, r0	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r3, [r7, #16]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	r1, #4	@,
	streq	r1, [fp, #-224]	@, %sfp
	moveq	r8, r1	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r2, [r7, #20]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r2, #5	@,
	streq	r2, [fp, #-224]	@, %sfp
	moveq	r8, r2	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r3, [r7, #24]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1935	@,
	ldr	r2, [r7, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	ip, #7	@,
	streq	ip, [fp, #-224]	@, %sfp
	moveq	r8, ip	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r3, [r7, #32]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	lr, #8	@,
	streq	lr, [fp, #-224]	@, %sfp
	moveq	r8, lr	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r2, [r7, #36]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r0, #9	@,
	streq	r0, [fp, #-224]	@, %sfp
	moveq	r8, r0	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r0, [r7, #40]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp349,
	movt	r3, #:upper16:.LANCHOR0	@ tmp349,
	cmp	r0, #0	@ s_pstVfmwChan,
	moveq	r1, #10	@,
	streq	r1, [fp, #-224]	@, %sfp
	moveq	r8, r1	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r1, [r3, #44]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	moveq	r1, #11	@,
	streq	r1, [fp, #-224]	@, %sfp
	moveq	r8, r1	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r2, [r3, #48]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r3, #12	@,
	streq	r3, [fp, #-224]	@, %sfp
	moveq	r8, r3	@ ChanID.6067,
	beq	.L1894	@,
	ldr	r0, [r3, #52]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	moveq	ip, #13	@,
	streq	ip, [fp, #-224]	@, %sfp
	moveq	r8, ip	@ ChanID.6067,
	beq	.L1894	@,
	ldr	ip, [r3, #56]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	moveq	lr, #14	@,
	streq	lr, [fp, #-224]	@, %sfp
	moveq	r8, lr	@ ChanID.6067,
	beq	.L1894	@,
	ldr	lr, [r3, #60]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1909	@,
	mov	r2, #16	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC385	@,
	movt	r1, #:upper16:.LC385	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@,
	str	r3, [fp, #-224]	@, %sfp
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1947	@,
	bl	OSAL_SpinUnLockIRQ	@
.L1847:
	ldr	r0, [fp, #-224]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1883:
	ldr	r2, [fp, #-84]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r0, #0	@ tmp318,
	ldr	lr, [fp, #-80]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	r0, [fp, #-240]	@ tmp318, %sfp
	str	r0, [fp, #-92]	@ tmp318, ChanMemScd.Length
	str	r2, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	lr, [fp, #-96]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L1862	@
.L1924:
	ldr	lr, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	lr, #0	@ <variable>.s32MaxSliceNum,
	ble	.L1852	@,
	ldr	r3, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r3, #0	@ <variable>.s32MaxSpsNum,
	ble	.L1852	@,
	ldr	r2, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r2, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L1851	@,
.L1852:
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC18	@,
	mvn	ip, #0	@,
	str	ip, [fp, #-224]	@, %sfp
	bl	dprint_vfmw	@
	b	.L1847	@
.L1909:
	mov	r1, #15	@,
	str	r1, [fp, #-224]	@, %sfp
	mov	r8, r1	@ ChanID.6067,
.L1894:
	ldr	lr, [fp, #-112]	@ D.36427, ChanMemCtx.VirAddr
	movw	r1, #:lower16:11419544	@,
	movt	r1, #:upper16:11419544	@,
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	str	ip, [fp, #-232]	@, %sfp
	mov	r0, lr	@, D.36427
	str	lr, [r7, r8, asl #2]	@ D.36427, s_pstVfmwChan
	bl	__memzero	@
	ldr	r3, [r7, r8, asl #2]	@ tmp370, s_pstVfmwChan
	movw	r0, #:lower16:11201068	@,
	movt	r0, #:upper16:11201068	@,
	add	r0, r3, r0	@, tmp370,
	mov	r1, r4	@, pChanOption
	mov	r2, #124	@,
	bl	memcpy	@
	ldr	ip, [r7, r8, asl #2]	@ tmp376, s_pstVfmwChan
	movw	r1, #:lower16:11201012	@ tmp377,
	movt	r1, #:upper16:11201012	@ tmp377,
	movw	r2, #:lower16:11473056	@ tmp378,
	movt	r2, #:upper16:11473056	@ tmp378,
	str	r2, [ip, r1]	@ tmp378, <variable>.stSynExtraData.s32BasicCtxSize
	movw	r2, #:lower16:11200544	@ tmp383,
	ldr	r0, [r7, r8, asl #2]	@ tmp380, s_pstVfmwChan
	movt	r2, #:upper16:11200544	@ tmp383,
	movw	r3, #:lower16:s_SmIIS	@ tmp395,
	movt	r3, #:upper16:s_SmIIS	@ tmp395,
	add	r1, r3, r8, asl #2	@,, tmp395, ChanID.6067,
	movw	r3, #:lower16:s_pFspInst	@,
	str	r6, [r0, #28]	@ eCapLevel, <variable>.eChanCapLevel
	movt	r3, #:upper16:s_pFspInst	@,
	ldr	r0, [r7, r8, asl #2]	@ tmp382, s_pstVfmwChan
	movw	ip, #:lower16:11201028	@,
	str	r1, [fp, #-248]	@, %sfp
	movt	ip, #:upper16:11201028	@,
	str	r3, [fp, #-264]	@, %sfp
	mov	lr, #0	@,
	str	r6, [r0, r2]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	movw	r2, #:lower16:11381336	@ tmp405,
	ldr	r1, [r7, r8, asl #2]	@, s_pstVfmwChan
	movt	r2, #:upper16:11381336	@ tmp405,
	movw	r3, #:lower16:11201208	@ tmp402,
	movt	r3, #:upper16:11201208	@ tmp402,
	mov	r0, r8	@, ChanID.6067
	str	lr, [r1, ip]	@, <variable>.stSynExtraData.s32MoreGapEnable
	mov	ip, #19	@,
	ldr	lr, [r7, r8, asl #2]	@ tmp389, s_pstVfmwChan
	str	ip, [lr, #936]	@, <variable>.eVidStd
	ldr	r1, [r7, r8, asl #2]	@ tmp392, s_pstVfmwChan
	str	ip, [r1, #944]	@, <variable>.stSynCtx.eVidStd
	ldr	lr, [fp, #-264]	@, %sfp
	ldr	r1, [r7, r8, asl #2]	@ temp.6044, s_pstVfmwChan
	add	r2, r1, r2	@ tmp405, temp.6044, tmp405
	str	r2, [lr, r8, asl #2]	@ tmp405, s_pFspInst
	ldr	lr, [fp, #-248]	@, %sfp
	add	ip, r1, r3	@ tmp402, temp.6044, tmp402
	str	ip, [lr, #652]	@ tmp402, s_SmIIS.pSmInstArray
	bl	VCTRL_ResetChan	@
	ldr	r0, [r7, r8, asl #2]	@ tmp407, s_pstVfmwChan
	ldr	r2, [fp, #-236]	@, %sfp
	str	r2, [r0, #212]	@, <variable>.s32SelfAllocChanMem_vdh
	ldr	r1, [fp, #-240]	@, %sfp
	ldr	r3, [r7, r8, asl #2]	@ tmp409, s_pstVfmwChan
	str	r1, [r3, #216]	@, <variable>.s32SelfAllocChanMem_scd
	ldr	ip, [fp, #-228]	@, %sfp
	ldr	r0, [r7, r8, asl #2]	@ tmp411, s_pstVfmwChan
	str	ip, [r0, #220]	@, <variable>.s32SelfAllocChanMem_ctx
	ldr	r2, [r4, #4]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r2, #3	@ <variable>.MemAllocMode,
	beq	.L1936	@,
	ldr	r2, [fp, #-224]	@, %sfp
	ldr	r1, [fp, #-232]	@, %sfp
	ldr	r3, [r1, r2, asl #2]	@ prephitmp.5903, s_pstVfmwChan
.L1911:
	mov	r0, #0	@ tmp439,
	str	r0, [r3, #160]	@ tmp439, <variable>.s32OneChanMem
.L1912:
	ldmia	sl, {r0, r1, r2}	@ tmp580,,,
	ldr	ip, [r7, r8, asl #2]	@ tmp442, s_pstVfmwChan
	add	r3, ip, #176	@ tmp441, tmp442,
	stmia	r3, {r0, r1, r2}	@ tmp441,,,
	ldr	lr, [r7, r8, asl #2]	@ tmp448, s_pstVfmwChan
	ldmia	r9, {r0, r1, r2}	@ tmp579,,,
	add	ip, lr, #188	@ tmp447, tmp448,
	stmia	ip, {r0, r1, r2}	@ tmp447,,,
	ldr	r3, [r7, r8, asl #2]	@ tmp454, s_pstVfmwChan
	ldmia	r5, {r0, r1, r2}	@ tmp578,,,
	add	lr, r3, #200	@ tmp453, tmp454,
	stmia	lr, {r0, r1, r2}	@ tmp453,,,
	ldr	ip, [r7, r8, asl #2]	@ tmp459, s_pstVfmwChan
	ldr	r2, [fp, #-84]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	str	r2, [ip, #244]	@ ChanMemVDH.PhyAddr, <variable>.s32SdecMemAddr
	ldr	lr, [fp, #-76]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r3, [r7, r8, asl #2]	@ tmp462, s_pstVfmwChan
	str	lr, [r3, #248]	@ ChanMemVDH.Length, <variable>.s32SdecMemSize
	ldr	r3, [r7, r8, asl #2]	@ temp.6066, s_pstVfmwChan
	ldr	r1, [fp, #-84]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	r0, [r3, #236]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	ip, [r3, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	add	r2, r0, r1	@ tmp465, <variable>.s32OffLineDNRMemSize, ChanMemVDH.PhyAddr
	add	lr, r2, ip	@ tmp469, tmp465, <variable>.s32BtlMemSize
	str	lr, [r3, #224]	@ tmp469, <variable>.s32VdmChanMemAddr
	ldr	r3, [r7, r8, asl #2]	@ temp.6069, s_pstVfmwChan
	ldr	r0, [fp, #-76]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r1, [r3, #236]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	ip, [r3, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	rsb	r2, r1, r0	@ tmp471, <variable>.s32OffLineDNRMemSize, ChanMemVDH.Length
	rsb	lr, ip, r2	@ tmp474, <variable>.s32BtlMemSize, tmp471
	sub	r1, lr, #16	@ tmp476, tmp474,
	str	r1, [r3, #228]	@ tmp476, <variable>.s32VdmChanMemSize
	ldr	ip, [r7, r8, asl #2]	@ temp.6072, s_pstVfmwChan
	ldr	r0, [ip, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r2, r0, #14336	@ tmp480, <variable>.s32VdmChanMemSize,
	str	r2, [ip, #228]	@ tmp480, <variable>.s32VdmChanMemSize
	ldr	r3, [r7, r8, asl #2]	@ temp.6073, s_pstVfmwChan
	ldr	lr, [r3, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r1, lr, #32768	@ tmp484, <variable>.s32VdmChanMemSize,
	str	r1, [r3, #228]	@ tmp484, <variable>.s32VdmChanMemSize
	ldr	r3, [r7, r8, asl #2]	@ temp.6075, s_pstVfmwChan
	ldr	r0, [r3, #224]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	ip, [r3, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	r2, r0, ip	@ tmp486, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	mov	ip, #14336	@ tmp493,
	add	lr, r2, #15	@ tmp489, tmp486,
	bic	r1, lr, #15	@ tmp490, tmp489,
	str	r1, [r3, #256]	@ tmp490, <variable>.s32BpdChanMemAddr
	ldr	r0, [r7, r8, asl #2]	@ tmp492, s_pstVfmwChan
	str	ip, [r0, #260]	@ tmp493, <variable>.s32BpdChanMemSize
	ldr	ip, [r7, r8, asl #2]	@ temp.6078, s_pstVfmwChan
	ldr	r2, [ip, #224]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	lr, [ip, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	ldr	r1, [ip, #260]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r3, r2, lr	@ tmp495, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r0, r3, #15	@ tmp498, tmp495,
	add	r2, r0, r1	@ tmp499, tmp498, <variable>.s32BpdChanMemSize
	bic	lr, r2, #15	@ tmp501, tmp499,
	str	lr, [ip, #264]	@ tmp501, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r3, [r7, r8, asl #2]	@ tmp503, s_pstVfmwChan
	mov	ip, #32768	@ tmp504,
	str	ip, [r3, #268]	@ tmp504, <variable>.s32Vp8SegIdChanMemSize
	ldr	r1, [fp, #-100]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r0, [r7, r8, asl #2]	@ tmp506, s_pstVfmwChan
	str	r1, [r0, #240]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	lr, [fp, #-92]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r2, [r7, r8, asl #2]	@ tmp509, s_pstVfmwChan
	str	lr, [r2, #252]	@ ChanMemScd.Length, <variable>.s32ScdChanMemSize
	ldr	ip, [r7, r8, asl #2]	@ tmp512, s_pstVfmwChan
	str	r8, [ip, #148]	@ ChanID.6067, <variable>.s32SCDInstID
	ldr	r3, [r7, r8, asl #2]	@ tmp514, s_pstVfmwChan
	str	r8, [r3, #156]	@ ChanID.6067, <variable>.s32FODInstID
	ldr	ip, [r4, #32]	@ <variable>.s32TreeFsEnable, <variable>.s32TreeFsEnable
	cmp	ip, #1	@ <variable>.s32TreeFsEnable,
	bne	.L1913	@,
	cmp	r6, #24	@ eCapLevel,
	ldr	r3, [r7, r8, asl #2]	@ temp.6090, s_pstVfmwChan
	mov	r1, #0	@ tmp516,
	strb	r1, [fp, #-148]	@ tmp516, TreeParam.s8DispLoopEnable
	ldrne	ip, [r4, #56]	@ iftmp.465, <variable>.s32DisplayFrameNum
	mov	r0, r8	@, ChanID.6067
	ldr	lr, [r4, #28]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	sub	r1, fp, #148	@,,
	str	ip, [fp, #-136]	@ iftmp.465, TreeParam.s32DispNum
	add	r2, lr, #2	@ tmp519, <variable>.s32MaxRefFrameNum,
	str	r2, [fp, #-132]	@ tmp519, TreeParam.s32DecNum
	ldr	lr, [r3, #224]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [r4, #12]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	ldr	ip, [r4, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	str	lr, [fp, #-128]	@ <variable>.s32VdmChanMemAddr, TreeParam.MemAddr
	ldr	lr, [r3, #228]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	ip, [fp, #-144]	@ <variable>.s32MaxWidth, TreeParam.ChanWidth
	str	r2, [fp, #-140]	@ <variable>.s32MaxHeight, TreeParam.ChanHeight
	str	lr, [fp, #-124]	@ <variable>.s32VdmChanMemSize, TreeParam.TotalSize
	bl	Tree_FSP_InitInstance	@
	cmp	r0, #0	@,
	bne	.L1937	@,
.L1916:
	mov	r0, r8	@, ChanID.6067
	bl	SM_ClearInst	@
	ldr	r1, [r7, r8, asl #2]	@ tmp529, s_pstVfmwChan
	movw	r2, #:lower16:11421592	@,
	movt	r2, #:upper16:11421592	@,
	mov	r0, r8	@, ChanID.6067
	ldr	ip, [r1, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r1, ip, r2	@, <variable>.stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r7, r8, asl #2]	@ tmp534, s_pstVfmwChan
	mov	r0, r8	@, ChanID.6067
	mov	ip, #1	@ tmp535,
	str	ip, [r3, #12]	@ tmp535, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1947	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1847	@
.L1913:
	mov	r0, r8	@, ChanID.6067
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	beq	.L1916	@,
	movw	r1, #:lower16:.LC387	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC387	@,
	bl	dprint_vfmw	@
.L1917:
	mov	r0, r8	@, ChanID.6067
	sub	r4, fp, #220	@ tmp550,,
	bl	VCTRL_UnInstallChan	@
	ldr	r2, [r7, r8, asl #2]	@ tmp540, s_pstVfmwChan
	sub	r0, fp, #160	@,,
	str	r0, [fp, #-256]	@, %sfp
	add	r1, r2, #164	@ tmp551, tmp540,
	add	lr, r2, #200	@ tmp555, tmp540,
	ldr	r0, [r2, #220]	@, <variable>.s32SelfAllocChanMem_ctx
	add	r3, r2, #176	@ tmp559, tmp540,
	add	r6, r2, #188	@ tmp563, tmp540,
	add	r9, r2, #112	@ tmp567, tmp540,
	sub	ip, fp, #184	@ tmp554,,
	sub	r5, fp, #208	@ tmp558,,
	str	r0, [fp, #-164]	@, ChanMem.s32SelfAllocChanMem_ctx
	mvn	r0, #0	@,
	str	r0, [fp, #-224]	@, %sfp
	sub	sl, fp, #196	@ tmp562,,
	ldr	r0, [r2, #212]	@, <variable>.s32SelfAllocChanMem_vdh
	str	r0, [fp, #-172]	@, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r0, [r2, #216]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r0, [fp, #-168]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldmia	r1, {r0, r1, r2}	@ tmp551,,,
	stmia	r4, {r0, r1, r2}	@ tmp550,,,
	ldmia	lr, {r0, r1, r2}	@ tmp555,,,
	mov	lr, #0	@ tmp569,
	stmia	ip, {r0, r1, r2}	@ tmp554,,,
	ldmia	r3, {r0, r1, r2}	@ tmp559,,,
	ldr	r3, [fp, #-256]	@, %sfp
	stmia	r5, {r0, r1, r2}	@ tmp558,,,
	ldmia	r6, {r0, r1, r2}	@ tmp563,,,
	stmia	sl, {r0, r1, r2}	@ tmp562,,,
	ldmia	r9, {r0, r1, r2}	@ tmp567,,,
	stmia	r3, {r0, r1, r2}	@,,,
	mov	r0, r8	@, ChanID.6067
	str	lr, [r7, r8, asl #2]	@ tmp569, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1947	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r8	@, ChanID.6067
	mov	r1, r4	@, tmp550
	bl	VCTRL_FreeChanResource	@
	b	.L1847	@
.L1936:
	ldr	r2, [fp, #-232]	@, %sfp
	ldr	r3, [r2, r8, asl #2]	@ prephitmp.5903, s_pstVfmwChan
	ldr	r2, [r3, #220]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L1911	@,
	ldr	r1, [r3, #212]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r1, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L1911	@,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1911	@,
	ldr	r1, [fp, #-92]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r0, [fp, #-100]	@ temp.6049, ChanMemScd.PhyAddr
	ldr	lr, [fp, #-244]	@, %sfp
	add	ip, r0, r1	@ tmp419, temp.6049, ChanMemScd.Length
	ldr	r1, [fp, #-84]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	cmp	lr, #1	@,
	cmpeq	ip, r1	@, tmp419, ChanMemVDH.PhyAddr
	bne	.L1911	@,
	str	r0, [r3, #164]	@ temp.6049, <variable>.stChanMem.PhyAddr
	ldr	r0, [fp, #-232]	@, %sfp
	ldr	ip, [fp, #-96]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	lr, [r0, r8, asl #2]	@ tmp428, s_pstVfmwChan
	str	ip, [lr, #168]	@ ChanMemScd.VirAddr, <variable>.stChanMem.VirAddr
	ldr	lr, [r0, r8, asl #2]	@ tmp431, s_pstVfmwChan
	ldr	r3, [fp, #-76]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r1, [fp, #-92]	@ ChanMemScd.Length, ChanMemScd.Length
	add	ip, r3, r1	@ tmp434, ChanMemVDH.Length, ChanMemScd.Length
	str	ip, [lr, #172]	@ tmp434, <variable>.stChanMem.Length
	ldr	r0, [fp, #-232]	@, %sfp
	ldr	r3, [r0, r8, asl #2]	@ tmp436, s_pstVfmwChan
	str	r2, [r3, #160]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L1912	@
.L1861:
	ldr	r0, [fp, #-100]	@, ChanMemScd.PhyAddr
	mov	lr, #0	@,
	ldr	r1, [fp, #-96]	@, ChanMemScd.VirAddr
	ldr	r2, [fp, #-92]	@, ChanMemScd.Length
	str	lr, [fp, #-228]	@, %sfp
	str	lr, [fp, #-240]	@, %sfp
	str	lr, [fp, #-236]	@, %sfp
	bl	MEM_AddMemRecord	@
	b	.L1862	@
.L1927:
	sub	r7, fp, #56	@ tmp231,,
	mov	r1, ip	@, D.36299
	movw	r0, #:lower16:.LC375	@,
	ldr	r2, [fp, #-60]	@, DetailMemSize.ChanCtxDetailMem
	movt	r0, #:upper16:.LC375	@,
	mov	r3, r7	@, tmp231
	mov	r8, #1	@ tmp232,
	str	r8, [sp, #0]	@ tmp232,
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.36338,
	bne	.L1938	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	ip, [fp, #-252]	@,
	bl	MEM_AddMemRecord	@
	ldr	lr, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	movw	r0, #:lower16:.LC377	@,
	ldr	ip, [fp, #-252]	@,
	movt	r0, #:upper16:.LC377	@,
	ldr	r2, [fp, #-68]	@, DetailMemSize.VdhDetailMem
	mov	r3, r7	@, tmp231
	str	lr, [fp, #-116]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	ldr	lr, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r1, ip	@, D.36338
	str	ip, [sp, #0]	@ D.36338,
	str	lr, [fp, #-112]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	ldr	lr, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	lr, [fp, #-108]	@ MemRecord.Length, ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.36346,
	bne	.L1939	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	ip, [fp, #-252]	@,
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #0]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [fp, #-56]	@ temp.5936, MemRecord.PhyAddr
	ldr	r3, [fp, #-52]	@ temp.5937, MemRecord.VirAddr
	cmp	r1, #2	@ <variable>.Purpose,
	ldr	r0, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r2, [fp, #-84]	@ temp.5936, ChanMemVDH.PhyAddr
	str	r3, [fp, #-80]	@ temp.5937, ChanMemVDH.VirAddr
	str	r0, [fp, #-76]	@ MemRecord.Length, ChanMemVDH.Length
	ldr	ip, [fp, #-252]	@,
	beq	.L1866	@,
	mov	r1, ip	@, D.36346
	mov	r3, r7	@, tmp231
	movw	r0, #:lower16:.LC379	@,
	ldr	r2, [fp, #-64]	@, DetailMemSize.ScdDetailMem
	movt	r0, #:upper16:.LC379	@,
	str	ip, [sp, #0]	@ D.36346,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1940	@,
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	str	r8, [fp, #-228]	@ tmp232, %sfp
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	str	r8, [fp, #-240]	@ tmp232, %sfp
	ldr	r2, [fp, #-48]	@, MemRecord.Length
	str	r8, [fp, #-236]	@ tmp232, %sfp
	b	.L1919	@
.L1935:
	mov	r3, #6	@,
.L1920:
	str	r3, [fp, #-224]	@, %sfp
	mov	r8, r3	@ ChanID.6067,
	b	.L1894	@
.L1887:
	mov	r0, #0	@,
	str	r0, [fp, #-240]	@, %sfp
	b	.L1862	@
.L1866:
	str	r8, [fp, #-228]	@ tmp232, %sfp
	str	r2, [fp, #-100]	@ temp.5936, ChanMemScd.PhyAddr
	str	r3, [fp, #-96]	@ temp.5937, ChanMemScd.VirAddr
	str	ip, [fp, #-240]	@ D.36346, %sfp
	str	ip, [fp, #-92]	@ D.36346, ChanMemScd.Length
	str	r8, [fp, #-236]	@ tmp7, %sfp
	b	.L1862	@
.L1933:
	ldr	r1, [fp, #-228]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1941	@,
.L1877:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC378	@,
	movw	r2, #2017	@,
	movt	r1, #:upper16:.LC378	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@,
	str	r3, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1868:
	movw	r1, #:lower16:.LC384	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC384	@,
	mvn	r3, #0	@,
	str	r3, [fp, #-224]	@, %sfp
	bl	dprint_vfmw	@
	b	.L1847	@
.L1859:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC374	@,
	movw	r2, #1910	@,
	movt	r1, #:upper16:.LC374	@,
	bl	dprint_vfmw	@
	mvn	r1, #0	@,
	str	r1, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1929:
	ldr	r1, [fp, #-228]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1942	@,
.L1880:
	mov	r3, r2	@, prephitmp.5970
	mov	r0, #1	@,
	movw	r2, #2038	@,
	movw	r1, #:lower16:.LC383	@,
	movt	r1, #:upper16:.LC383	@,
	str	ip, [sp, #0]	@ prephitmp.5971,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1922:
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mvn	ip, #0	@,
	str	ip, [fp, #-224]	@, %sfp
	bl	dprint_vfmw	@
	b	.L1847	@
.L1921:
	movw	r1, #:lower16:.LC370	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC370	@,
	mvn	r2, #0	@,
	str	r2, [fp, #-224]	@, %sfp
	bl	dprint_vfmw	@
	b	.L1847	@
.L1925:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC371	@,
	movw	r2, #1887	@,
	movt	r1, #:upper16:.LC371	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	str	r0, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1931:
	ldr	r1, [fp, #-228]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1943	@,
.L1885:
	ldr	r2, [fp, #-236]	@, %sfp
	cmp	r2, #1	@,
	beq	.L1944	@,
.L1886:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC380	@,
	mov	r2, #2064	@,
	movt	r1, #:upper16:.LC380	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	str	r0, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1932:
	mov	r0, r7	@, tmp270
	movw	r1, #:lower16:.LC381	@,
	movw	r2, #1986	@,
	movt	r1, #:upper16:.LC381	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@,
	str	ip, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1855:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC372	@,
	movw	r2, #1899	@,
	movt	r1, #:upper16:.LC372	@,
	bl	dprint_vfmw	@
	mvn	r1, #0	@,
	str	r1, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1928:
	mov	r2, #2000	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1937:
	movw	r1, #:lower16:.LC386	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC386	@,
	bl	dprint_vfmw	@
	b	.L1917	@
.L1941:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1877	@
.L1942:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r2, [fp, #-76]	@ prephitmp.5970, ChanMemVDH.Length
	ldr	ip, [fp, #-68]	@ prephitmp.5971, DetailMemSize.VdhDetailMem
	b	.L1880	@
.L1939:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	mvn	r2, #0	@,
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	str	r2, [fp, #-224]	@, %sfp
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r8	@, tmp232
	movw	r1, #:lower16:.LC378	@,
	movw	r2, #1942	@,
	movt	r1, #:upper16:.LC378	@,
	bl	dprint_vfmw	@
	b	.L1847	@
.L1938:
	mov	r0, r8	@, tmp232
	movw	r1, #:lower16:.LC376	@,
	movw	r2, #1926	@,
	movt	r1, #:upper16:.LC376	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@,
	str	r3, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1944:
	ldr	r0, [fp, #-84]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-80]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #84
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1886	@
.L1930:
	ldr	ip, [fp, #-228]	@, %sfp
	cmp	ip, #1	@,
	beq	.L1945	@,
.L1891:
	ldr	r1, [fp, #-236]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1946	@,
.L1892:
	movw	r2, #2102	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1943:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1885	@
.L1940:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	mvn	r3, #0	@,
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	str	r3, [fp, #-224]	@, %sfp
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [fp, #-84]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-80]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	sub	r0, fp, #84
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r8	@, tmp232
	movw	r1, #:lower16:.LC380	@,
	movw	r2, #1963	@,
	movt	r1, #:upper16:.LC380	@,
	bl	dprint_vfmw	@
	b	.L1847	@
.L1934:
	mov	r2, #1904	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-224]	@, %sfp
	b	.L1847	@
.L1946:
	ldr	r0, [fp, #-84]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-80]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #84
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1892	@
.L1945:
	ldr	r0, [fp, #-116]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #116
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1891	@
.L1948:
	.align	2
.L1947:
	.word	.LANCHOR3-2848
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1388:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #204
	sub	sp, sp, #204	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #24	@ eCapLevel,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L1962	@,
	sub	r6, fp, #224	@ tmp236,,
	sub	r5, fp, #84	@ tmp237,,
	mov	r1, #124	@,
	sub	r7, fp, #100	@ tmp235,,
	mov	r0, r6	@, tmp236
	bl	__memzero	@
	mov	r0, r5	@, tmp237
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp235
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r2, r4, asl #3	@ tmp234, eCapLevel,
	rsb	r1, r4, r2	@ tmp155, eCapLevel, tmp234
	movw	r3, #:lower16:CapItem	@ tmp233,
	movt	r3, #:upper16:CapItem	@ tmp233,
	sub	r0, r4, #18	@ D.40783, eCapLevel,
	cmp	r0, #7	@ D.40783,
	add	ip, r1, #1	@ tmp163, tmp155,
	ldr	r1, [r3, r1, asl #2]	@ tmp158, CapItem
	mov	lr, #1	@ tmp150,
	str	lr, [fp, #-224]	@ tmp150, stChanOption.Purpose
	mov	lr, #2	@ tmp151,
	str	lr, [fp, #-220]	@ tmp151, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp166,
	str	lr, [fp, #-204]	@ tmp166, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp167,
	str	lr, [fp, #-200]	@ tmp167, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp168,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp168,
	str	r1, [fp, #-216]	@ tmp158, stChanOption.s32MaxWidth
	addls	r0, lr, r0, asl #2	@, tmp171, tmp168, D.40783,
	mov	r1, #136	@ tmp165,
	str	r1, [fp, #-208]	@ tmp165, stChanOption.s32MaxSliceNum
	rsb	r1, r4, r2	@ tmp177, eCapLevel, tmp234
	ldr	ip, [r3, ip, asl #2]	@ tmp164, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #276]	@ MinDispFspNum, CSWTCH.840
	add	r0, r3, r1, asl #2	@, tmp179, tmp233, tmp177,
	ldr	r1, [r0, #12]	@ D.36173, CapItem
	rsb	r0, r4, r2	@ tmp191, eCapLevel, tmp234
	str	ip, [fp, #-212]	@ tmp164, stChanOption.s32MaxHeight
	addls	ip, lr, #2	@ prephitmp.6137, MinDispFspNum,
	movhi	ip, #8	@ prephitmp.6137,
	cmp	r1, ip	@ D.36173, prephitmp.6137
	add	ip, r3, r0, asl #2	@, tmp193, tmp233, tmp191,
	subgt	r1, r1, #2	@ tmp182, D.36173,
	mov	r2, #1	@ tmp184,
	rsbgt	r1, lr, r1	@ tmp183, MinDispFspNum, tmp182
	ldr	r3, [ip, #24]	@ tmp195, CapItem
	movle	r1, #1	@ tmp181,
	str	lr, [fp, #-168]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	cmp	r4, #24	@ eCapLevel,
	str	r1, [fp, #-196]	@ tmp183, stChanOption.s32MaxRefFrameNum
	mov	r0, r4	@, eCapLevel
	mov	r1, #0	@ tmp196,
	streq	r2, [fp, #-168]	@ tmp184, stChanOption.s32DisplayFrameNum
	streq	r1, [fp, #-196]	@ tmp196, stChanOption.s32MaxRefFrameNum
	str	r2, [fp, #-188]	@ tmp184, stChanOption.s32SupportBFrame
	str	r2, [fp, #-184]	@ tmp184, stChanOption.s32SupportH264
	str	r2, [fp, #-176]	@ tmp184, stChanOption.s32ReRangeEn
	sub	r2, fp, #68	@,,
	str	r1, [fp, #-164]	@ tmp196, stChanOption.s32SlotWidth
	str	r1, [fp, #-160]	@ tmp196, stChanOption.s32SlotHeight
	sub	r1, fp, #56	@,,
	str	r3, [fp, #-172]	@ tmp195, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1963	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1958	@,
	ldr	r3, [r8, #8]	@ D.36189, <variable>.Length
	cmp	r3, #0	@ D.36189,
	beq	.L1958	@,
	ldr	ip, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, #0	@ <variable>.PhyAddr,
	beq	.L1959	@,
	ldr	sl, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	sl, #0	@ <variable>.VirAddr,
	beq	.L1959	@,
	ldr	r0, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	lr, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	add	r2, lr, r0	@ tmp205, ScdChanMemSize, VdmChanMemSize
	cmp	r3, r2	@ D.36189, tmp205
	blt	.L1959	@,
	ldr	lr, [fp, #-64]	@ D.36202, ScdChanMemSize
	sub	r8, fp, #148	@,,
	str	ip, [fp, #-100]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	sub	r9, fp, #132	@ tmp217,,
	str	r8, [fp, #-232]	@, %sfp
	rsb	r8, lr, r3	@ tmp216, D.36202, D.36189
	str	lr, [fp, #-92]	@ D.36202, scd_MemRecord.Length
	add	ip, ip, lr	@ tmp212, <variable>.PhyAddr, D.36202
	str	sl, [fp, #-96]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, sl, lr	@ tmp214, <variable>.VirAddr, D.36202
	ldmia	r7, {r0, r1, r2, r3}	@ tmp235,,,,
	str	ip, [fp, #-84]	@ tmp212, vdh_MemRecord.PhyAddr
	str	lr, [fp, #-80]	@ tmp214, vdh_MemRecord.VirAddr
	mov	ip, #3	@ tmp208,
	str	r8, [fp, #-76]	@ tmp216, vdh_MemRecord.Length
	ldr	lr, [fp, #-232]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp217,,,,
	str	ip, [fp, #-220]	@ tmp208, stChanOption.MemAllocMode
	ldmia	r5, {r0, r1, r2, r3}	@ tmp237,,,,
	mov	ip, #1	@ OneChanMemFlag,
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	b	.L1960	@
.L1958:
	mov	ip, #0	@ OneChanMemFlag,
.L1960:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp236
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.36154,
.L1951:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1962:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC388	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC388	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36154,
	b	.L1951	@
.L1959:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC390	@,
	movt	r1, #:upper16:.LC390	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #1	@,
	ldr	r3, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r1, #:lower16:.LC391	@,
	movt	r1, #:upper16:.LC391	@,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC392	@,
	movt	r1, #:upper16:.LC392	@,
	add	r2, r2, r3	@, ScdChanMemSize, VdmChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36154,
	b	.L1951	@
.L1963:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC389	@,
	movt	r1, #:upper16:.LC389	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36154,
	b	.L1951	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1365:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp215,
	movt	r4, #:upper16:.LANCHOR3	@ tmp215,
	mov	r3, #100	@ tmp186,
	ldr	r0, [r4, #1604]	@ g_SleepTime.432, g_SleepTime
	str	r3, [r4, #-2956]	@ tmp186, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.432,
	ble	.L1965	@,
	bl	msleep	@
.L1965:
	ldr	r0, .L2036	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r4, #1612]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp192,
	str	r2, [r4, #-2956]	@ tmp192, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L2018	@,
.L1967:
	mov	r6, #102	@ tmp196,
	str	r6, [r4, #-2956]	@ tmp196, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp197,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp197,
	ldr	r3, [r1, #60]	@ D.35688, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.35688,
	beq	.L2019	@,
	mov	r0, #0	@,
	blx	r3	@ D.35688
.L1969:
	ldr	r0, .L2036	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #2	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #3	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #4	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #5	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #6	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #7	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #8	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #9	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #10	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #11	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #12	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #13	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #14	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #15	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L2036	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2020	@,
.L1970:
	mov	r0, #1	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@ temp.6188,
	mov	r6, r0	@ temp.6188,
	beq	.L2021	@,
.L1973:
	mov	r0, #2	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2022	@,
.L1976:
	mov	r0, #3	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2023	@,
.L1979:
	mov	r0, #4	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2024	@,
.L1982:
	mov	r0, #5	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2025	@,
.L1985:
	mov	r0, #6	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2026	@,
.L1988:
	mov	r0, #7	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2027	@,
.L1991:
	mov	r0, #8	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2028	@,
.L1994:
	mov	r0, #9	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2029	@,
.L1997:
	mov	r0, #10	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2030	@,
.L2000:
	mov	r0, #11	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2031	@,
.L2003:
	mov	r0, #12	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2032	@,
.L2006:
	mov	r0, #13	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2033	@,
.L2009:
	mov	r0, #14	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2034	@,
.L2012:
	mov	r0, #15	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2035	@,
.L2015:
	ldr	r0, .L2036	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L2036+4	@,
	mov	ip, #105	@ tmp209,
	str	ip, [r4, #-2956]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2018:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1967	@
.L2019:
	mov	r0, r3	@, D.35688
	movw	r1, #:lower16:.LC180	@,
	mov	r2, #712	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1969	@
.L2027:
	mov	r0, #7	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6207,
	mov	r0, #7	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1993	@,
	cmp	r6, #1	@ tmp.6207,
	bne	.L1991	@,
.L1993:
	mov	r1, #3	@,
	mov	r0, #7	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #7	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #7	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1991	@
.L2028:
	mov	r0, #8	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6210,
	mov	r0, #8	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1996	@,
	cmp	r6, #1	@ tmp.6210,
	bne	.L1994	@,
.L1996:
	mov	r1, #3	@,
	mov	r0, #8	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #8	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #8	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1994	@
.L2029:
	mov	r0, #9	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6213,
	mov	r0, #9	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1999	@,
	cmp	r6, #1	@ tmp.6213,
	bne	.L1997	@,
.L1999:
	mov	r1, #3	@,
	mov	r0, #9	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #9	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #9	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1997	@
.L2030:
	mov	r0, #10	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6216,
	mov	r0, #10	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2002	@,
	cmp	r6, #1	@ tmp.6216,
	bne	.L2000	@,
.L2002:
	mov	r1, #3	@,
	mov	r0, #10	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #10	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #10	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2000	@
.L2031:
	mov	r0, #11	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6219,
	mov	r0, #11	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2005	@,
	cmp	r6, #1	@ tmp.6219,
	bne	.L2003	@,
.L2005:
	mov	r1, #3	@,
	mov	r0, #11	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #11	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #11	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2003	@
.L2032:
	mov	r0, #12	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6222,
	mov	r0, #12	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2008	@,
	cmp	r6, #1	@ tmp.6222,
	bne	.L2006	@,
.L2008:
	mov	r1, #3	@,
	mov	r0, #12	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #12	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #12	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2006	@
.L2033:
	mov	r0, #13	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6225,
	mov	r0, #13	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2011	@,
	cmp	r6, #1	@ tmp.6225,
	bne	.L2009	@,
.L2011:
	mov	r1, #3	@,
	mov	r0, #13	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #13	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #13	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2009	@
.L2034:
	mov	r0, #14	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6228,
	mov	r0, #14	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2014	@,
	cmp	r6, #1	@ tmp.6228,
	bne	.L2012	@,
.L2014:
	mov	r1, #3	@,
	mov	r0, #14	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #14	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #14	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2012	@
.L2023:
	mov	r0, #3	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6195,
	mov	r0, #3	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1981	@,
	cmp	r6, #1	@ tmp.6195,
	bne	.L1979	@,
.L1981:
	mov	r0, #3	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #3	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #3	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1979	@
.L2024:
	mov	r0, #4	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6198,
	mov	r0, #4	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1984	@,
	cmp	r6, #1	@ tmp.6198,
	bne	.L1982	@,
.L1984:
	mov	r1, #3	@,
	mov	r0, #4	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #4	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #4	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1982	@
.L2025:
	mov	r0, #5	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6201,
	mov	r0, #5	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1987	@,
	cmp	r6, #1	@ tmp.6201,
	bne	.L1985	@,
.L1987:
	mov	r1, #3	@,
	mov	r0, #5	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #5	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #5	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1985	@
.L2026:
	mov	r0, #6	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6204,
	mov	r0, #6	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1990	@,
	cmp	r6, #1	@ tmp.6204,
	bne	.L1988	@,
.L1990:
	mov	r1, #3	@,
	mov	r0, #6	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #6	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #6	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1988	@
.L2021:
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r7, r0	@ tmp.6189,
	mov	r0, r6	@, temp.6188
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1975	@,
	cmp	r7, #1	@ tmp.6189,
	bne	.L1973	@,
.L1975:
	mov	r1, #3	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #1	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1973	@
.L2022:
	mov	r0, #2	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6192,
	mov	r0, #2	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1978	@,
	cmp	r6, #1	@ tmp.6192,
	bne	.L1976	@,
.L1978:
	mov	r1, #3	@,
	mov	r0, #2	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #2	@,
	bl	VCTRL_ResetChan	@
	mov	r0, #2	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1976	@
.L2020:
	mov	r0, #0	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6186,
	mov	r0, #0	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1972	@,
	cmp	r6, #1	@ tmp.6186,
	bne	.L1970	@,
.L1972:
	mov	r1, #3	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #0	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1970	@
.L2035:
	mov	r0, #15	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp,
	mov	r0, #15	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2016	@,
	cmp	r6, #1	@ tmp,
	bne	.L2015	@,
.L2016:
	mov	r1, #3	@,
	mov	r0, #15	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #15	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #15	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2015	@
.L2037:
	.align	2
.L2036:
	.word	.LANCHOR3-2848
	.word	.LANCHOR3+1544
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1364:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
.L2039:
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR3	@ tmp167,
	movt	r4, #:upper16:.LANCHOR3	@ tmp167,
	mov	r6, #0	@ tmp176,
	mov	r8, #1	@ tmp177,
	mov	r7, #5	@ tmp181,
.L2044:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC393	@,
	movt	r1, #:upper16:.LC393	@,
	str	r6, [r4, #-2956]	@ tmp176, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #-2964]	@ temp.6257, s_VfmwCTrl.eTaskCommand
	mov	r5, #2	@ tmp144,
	str	r5, [r4, #-2968]	@ tmp144, s_VfmwCTrl.eTaskState
	cmp	r3, r5	@ temp.6257,
	bne	.L2043	@,
	b	.L2040	@
.L2050:
	str	r5, [r4, #-2956]	@ tmp172, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC394	@,
	movt	r1, #:upper16:.LC394	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #-2964]	@ D.35652, s_VfmwCTrl.eTaskCommand
	cmp	r3, #2	@ D.35652,
	beq	.L2040	@,
.L2043:
	cmp	r3, #3	@ D.35652,
	bne	.L2050	@,
.L2041:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC397	@,
	movt	r1, #:upper16:.LC397	@,
	mov	r2, #6	@ tmp162,
	str	r2, [r4, #-2956]	@ tmp162, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp165,
	str	r0, [r4, #-2968]	@ tmp165, s_VfmwCTrl.eTaskState
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2040:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC395	@,
	movt	r1, #:upper16:.LC395	@,
	mov	r3, #4	@ tmp154,
	str	r3, [r4, #-2956]	@ tmp154, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r8, [r4, #-2968]	@ tmp177, s_VfmwCTrl.eTaskState
.L2045:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC396	@,
	movt	r1, #:upper16:.LC396	@,
	str	r7, [r4, #-2956]	@ tmp181, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #-2964]	@ temp.6254, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.6254,
	beq	.L2044	@,
	cmp	r3, #3	@ temp.6254,
	mov	r0, #10	@,
	beq	.L2041	@,
	bl	msleep	@
	b	.L2045	@
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1401:
	@ args = 0, pretend = 0, frame = 16
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp207,
	movt	r5, #:upper16:.LANCHOR0	@ tmp207,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.37087, s_pstVfmwChan
	cmp	r3, #0	@ D.37087,
	beq	.L2064	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L2065	@,
	ldr	sl, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r7, #0	@ tmp148,
	add	r0, r5, #184	@ tmp153, tmp207,
	mov	ip, #300	@ tmp155,
	mov	r1, ip	@, tmp155
	movw	r8, #:lower16:.LANCHOR3	@,
	str	r7, [r2, #736]	@ tmp148, <variable>.s32CountNoDecparamFlag
	movt	r8, #:upper16:.LANCHOR3	@,
	ldr	r9, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mla	r0, ip, r4, r0	@, tmp155, ChanID, tmp153
	str	r8, [fp, #-56]	@, %sfp
	str	r7, [r9, #740]	@ tmp148, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	ldr	r0, .L2068	@,
	bl	OSAL_LockIRQ	@
	ldr	r2, [r5, r4, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r8, [r6, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	movw	r3, #:lower16:11201036	@ tmp163,
	movt	r3, #:upper16:11201036	@ tmp163,
	mov	r0, r4	@, ChanID
	str	r8, [r2, r3]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	movw	r8, #:lower16:11200568	@ tmp174,
	bl	InitSyntaxCtx	@
	ldr	ip, [r5, r4, asl #2]	@ temp.6287, s_pstVfmwChan
	movt	r8, #:upper16:11200568	@ tmp174,
	add	r1, ip, #952	@, temp.6287,
	ldr	r0, [ip, #936]	@, <variable>.eVidStd
	bl	ReleaseCurPic	@
	ldr	r1, [r5, r4, asl #2]	@ tmp171, s_pstVfmwChan
	movw	r0, #:lower16:11200648	@,
	movt	r0, #:upper16:11200648	@,
	add	r0, r1, r0	@, tmp171,
	mov	r1, #248	@,
	bl	__memzero	@
	ldr	r9, [r5, r4, asl #2]	@ tmp173, s_pstVfmwChan
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	movw	r2, #:lower16:11200576	@ tmp178,
	movt	r2, #:upper16:11200576	@ tmp178,
	strd	r0, [r9, r8]	@, tmp173, tmp174
	mvn	r8, #0	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp177, s_pstVfmwChan
	mvn	r9, #0	@,
	movw	ip, #:lower16:11200896	@ tmp182,
	movt	ip, #:upper16:11200896	@ tmp182,
	ldr	r0, .L2068	@,
	strd	r8, [r3, r2]	@, tmp177, tmp178
	ldr	r1, [r5, r4, asl #2]	@ tmp181, s_pstVfmwChan
	str	r7, [r1, ip]	@ tmp148, <variable>.stSynExtraData.s32NewPicSegDetector
	bl	OSAL_UnLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ tmp189, s_pstVfmwChan
	ldr	r3, [r0, #936]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L2055	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L2056:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r6, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L2066	@,
.L2057:
	ldr	lr, [r5, #176]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L2058	@,
	ldr	r9, [fp, #-56]	@, %sfp
	mov	r0, #0	@ tmp200,
	movw	r5, #:lower16:.LANCHOR3	@ tmp201,
	str	r0, [fp, #-48]	@ tmp200, data
	movt	r5, #:upper16:.LANCHOR3	@ tmp201,
	ldr	r3, [r9, #1568]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, r0	@ vfmw_save_str_file,
	subeq	r6, fp, #48	@ prephitmp.6273,,
	beq	.L2060	@,
	sub	r6, fp, #48	@ prephitmp.6273,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.6273
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r5, #1568]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L2060	@,
.L2061:
	movw	r1, #:lower16:.LC363	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
.L2058:
	cmp	sl, #0	@ ChanIsRun,
	bne	.L2067	@,
.L2062:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37091,
.L2053:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2066:
	ldr	r0, .L2068+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r0, .L2068+4	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L2057	@
.L2067:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L2062	@
.L2055:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L2056	@
.L2065:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC398	@,
	movw	r2, #3429	@,
	movt	r1, #:upper16:.LC398	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37091,
	b	.L2053	@
.L2060:
	mov	r1, r6	@, prephitmp.6273
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L2061	@
.L2064:
	mov	r0, r3	@, D.37087
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3425	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37091,
	b	.L2053	@
.L2069:
	.align	2
.L2068:
	.word	.LANCHOR3-3004
	.word	.LANCHOR3-2848
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
.LFB1360:
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
	bl	VCTRL_Suspend	@
	ldr	r0, .L2072	@,
	mov	r1, #28	@,
	bl	__memzero	@
	bl	VCTRL_Resume	@
	ldmfd	sp, {fp, sp, pc}	@
.L2073:
	.align	2
.L2072:
	.word	.LANCHOR0+80
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.global	g_DSPState
	.global	g_SdecFunc
	.global	s_pstVfmwChan
	.global	extra_ref
	.global	extra_disp
	.global	extra_cmd
	.global	g_allow_B_before_P
	.global	g_not_direct_8x8_inference_flag
	.global	g_DbgMemPhy
	.global	g_pDbgMemVir
	.global	g_SupportMVC
	.global	vfmw_save_str_file
	.global	save_str_chan_num
	.global	vfmw_save_seg_file
	.global	save_seg_chan_num
	.global	vfmw_save_yuv_file
	.global	save_yuv_chan_num
	.global	g_ResetCreateNewSave
	.global	g_CurProcChan
	.global	g_VdmCharacter
	.global	g_SleepTime
	.global	g_DnrSleepTime
	.global	g_StopDec
	.global	g_VdecIrqHandle
	.global	g_DnrIrqHandle
	.global	g_event_report
	.global	g_VfmwChanStat
	.global	g_VfmwGlobalStat
	.global	g_eVdmVersion
	.global	AcceleratorCharacter
	.global	g_TaskLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSWTCH.837, %object
	.size	CSWTCH.837, 32
CSWTCH.837:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.39912, %object
	.size	__func__.39912, 19
__func__.39912:
	.ascii	"vfmw_read_proc_scd\000"
	.space	1
	.type	__func__.39672, %object
	.size	__func__.39672, 20
__func__.39672:
	.ascii	"vfmw_read_proc_info\000"
	.type	__func__.40063, %object
	.size	__func__.40063, 19
__func__.40063:
	.ascii	"vfmw_read_proc_dec\000"
	.space	1
	.type	__func__.38759, %object
	.size	__func__.38759, 14
__func__.38759:
	.ascii	"DecChanSyntax\000"
	.space	2
	.type	__func__.37547, %object
	.size	__func__.37547, 19
__func__.37547:
	.ascii	"VCTRL_FlushDecoder\000"
	.space	1
	.type	__func__.37284, %object
	.size	__func__.37284, 23
__func__.37284:
	.ascii	"VCTRL_ReleaseChanImage\000"
	.space	1
	.type	__func__.37195, %object
	.size	__func__.37195, 19
__func__.37195:
	.ascii	"VCTRL_GetChanImage\000"
	.space	1
	.type	__func__.36021, %object
	.size	__func__.36021, 29
__func__.36021:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.39181, %object
	.size	__func__.39181, 18
__func__.39181:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.39217, %object
	.size	__func__.39217, 19
__func__.39217:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.39253, %object
	.size	__func__.39253, 16
__func__.39253:
	.ascii	"GetExtraCtrlCmd\000"
	.type	__func__.40402, %object
	.size	__func__.40402, 16
__func__.40402:
	.ascii	"vfmw_write_proc\000"
	.type	CSWTCH.840, %object
	.size	CSWTCH.840, 32
CSWTCH.840:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 18
__param_str_extra_cmd:
	.ascii	"hi_vfmw.extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 19
__param_str_extra_disp:
	.ascii	"hi_vfmw.extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 18
__param_str_extra_ref:
	.ascii	"hi_vfmw.extra_ref\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	s_VfmwSavePath, %object
	.size	s_VfmwSavePath, 64
s_VfmwSavePath:
	.byte	47
	.byte	109
	.byte	110
	.byte	116
	.byte	0
	.space	59
	.type	g_SupportMVC, %object
	.size	g_SupportMVC, 4
g_SupportMVC:
	.word	1
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line %d can not know YuvFormat = %d\012\000"
	.space	3
.LC1:
	.ascii	"vfmw_ctrl.c,L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"ChanID out of range\000"
.LC3:
	.ascii	"vdm_ctrl.c,L%d: %s\012\000"
.LC4:
	.ascii	"SetVdecExtra ERROR: extra_ref = %d is out of [ -500"
	.ascii	"0, 5000 ]!\012\000"
	.space	1
.LC5:
	.ascii	"SetVdecExtra ERROR: extra_disp = %d is out of [ -50"
	.ascii	"00, 5000 ]!\012\000"
.LC6:
	.ascii	"Chan inactive\000"
	.space	2
.LC7:
	.ascii	"(safe,warn,danger) :amount = %d,%d,%d,%d\012\000"
	.space	2
.LC8:
	.ascii	"strm_ctrl: I->IPB\012\000"
	.space	1
.LC9:
	.ascii	"strm_ctrl: IPB->I\012\000"
	.space	1
.LC10:
	.ascii	"(CurrMode,NextMode) = %d,%d\012\000"
	.space	3
.LC11:
	.ascii	"ERROR: (nPmv(%d) + extra_ref(%d)) <= 0\012\000"
.LC12:
	.ascii	"ERROR: TempMinFrame(%d + %d + %d), TempMiddleFrame("
	.ascii	"%d + %d + %d), TempFluentFrame(%d + %d + %d)\012\000"
	.space	3
.LC13:
	.ascii	"VCTRL_GetChanMemSize L%d: arrange return failure\012"
	.ascii	"\000"
	.space	2
.LC14:
	.ascii	"ERROR: s32MaxRefFrameNum(%d), extra_ref(%d), s32Dis"
	.ascii	"playFrameNum(%d), extra_disp(%d)\012\000"
	.space	3
.LC15:
	.ascii	"VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_BY_OPTION is desig"
	.ascii	"ned for CAP_LEVEL_USER_DEFINE_WITH_OPTION, please c"
	.ascii	"hange channel's capability or use VDEC_CID_GET_CHAN"
	.ascii	"_MEMSIZE.\012\000"
.LC16:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION the purpose of cre"
	.ascii	"ating the channel is not clear.\012\000"
.LC17:
	.ascii	"s32SlotWidth or s32SlotHeight is 0.\012\000"
	.space	3
.LC18:
	.ascii	"CAP_LEVEL_USER_DEFINE_WITH_OPTION option is illegal"
	.ascii	".\012\000"
	.space	2
.LC19:
	.ascii	"VCTRL_GetChanMemSizeWithTreeFs L%d: arrange return "
	.ascii	"failure\012\000"
.LC20:
	.ascii	"line %d VCTRL_GetChanMemSizeForTreeFs failed!\012\000"
	.space	1
.LC21:
	.ascii	"ERROR: (MaxRefFrameNum(%d) + extra_ref(%d)) > 16\012"
	.ascii	"\000"
	.space	2
.LC22:
	.ascii	"VCTRL_GetChanMemSizeByOption L%d: arrange return fa"
	.ascii	"ilure\012\000"
	.space	2
.LC23:
	.ascii	"can NOT start a not-opened Chan\000"
.LC24:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC25:
	.ascii	"ChanId out of range\000"
.LC26:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range\012\000"
	.space	1
.LC27:
	.ascii	"vfmw_ctrl.c, line %d: Chan %d is not open or not ru"
	.ascii	"nning\012\000"
	.space	2
.LC28:
	.ascii	"Chip(id: %d) not support beyond 2032x2032 when Std "
	.ascii	"!= USER.\012\000"
	.space	3
.LC29:
	.ascii	"Chip(id: %d) not support beyond %dx%d when Std != H"
	.ascii	"264/VP8/MVC/USER.\012\000"
	.space	2
.LC30:
	.ascii	"Unknow Chip ID: %d\012\000"
.LC31:
	.ascii	"create soft-decoder fail!\012\000"
	.space	1
.LC32:
	.ascii	"can NOT config a not-opened Chan\000"
	.space	3
.LC33:
	.ascii	"register soft decoder fail: '%s' can not be NULL\012"
	.ascii	"\000"
	.space	2
.LC34:
	.ascii	"pfun_iMediaSoftDEC_Create\000"
	.space	2
.LC35:
	.ascii	"pfun_iMediaSoftDEC_Destroy\000"
	.space	1
.LC36:
	.ascii	"pfun_iMediaSoftDEC_Init\000"
.LC37:
	.ascii	"pfun_iMediaSoftDEC_Decode\000"
	.space	2
.LC38:
	.ascii	"pfun_iMediaSoftDEC_RecycleImage\000"
.LC39:
	.ascii	"pfun_iMediaSoftDEC_GetRemainImg\000"
.LC40:
	.ascii	"pfun_iMediaSoftDEC_GetImageBuffer\000"
	.space	2
.LC41:
	.ascii	"=============== chn info =========================="
	.ascii	"====\012\000"
	.space	3
.LC42:
	.ascii	"=============== chn by vdh ========================"
	.ascii	"====\012\000"
	.space	3
.LC43:
	.ascii	"%d \000"
.LC44:
	.ascii	"\012\000"
	.space	2
.LC45:
	.ascii	"=============== chanid by prior ==================="
	.ascii	"====\012\000"
	.space	3
.LC46:
	.ascii	"=============== chan prior ========================"
	.ascii	"====\012\000"
	.space	3
.LC47:
	.ascii	"=============== chan isopen isrun ================="
	.ascii	"====\012\000"
	.space	3
.LC48:
	.ascii	"%d %d %d\012\000"
	.space	2
.LC49:
	.ascii	"'print_enable_word' definition, from bit31 to bit0:"
	.ascii	"\012\000"
	.space	3
.LC50:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.space	3
.LC51:
	.ascii	"<not used>  DEC_MODE    PTS         DNR\012\000"
	.space	3
.LC52:
	.ascii	"FOD         SCD_INFO    SCD_STREAM  SCD_REGMSG\012\000"
.LC53:
	.ascii	"BLOCK       DBG         SE          SEI\012\000"
	.space	3
.LC54:
	.ascii	"SLICE       PIC         SEQ         MARK_MMCO\012\000"
	.space	1
.LC55:
	.ascii	"POC         DPB         REF         QUEUE\012\000"
	.space	1
.LC56:
	.ascii	"IMAGE       STR_BODY    STR_TAIL    STR_HEAD\012\000"
	.space	2
.LC57:
	.ascii	"STREAM      UPMSG       RPMSG       DNMSG\012\000"
	.space	1
.LC58:
	.ascii	"VDMREG      CTRL        ERROR       FATAL\012\000"
	.space	1
.LC59:
	.ascii	"'vfmw_state' definition, from bit31 to bit0:\012\000"
	.space	2
.LC60:
	.ascii	"<not used>       <not used>       <not used>    <no"
	.ascii	"t used>\012\000"
.LC61:
	.ascii	"<not used>       <not used>       <VO_REL_IMG>  <VO"
	.ascii	"_RCV_IMG>\012\000"
	.space	2
.LC62:
	.ascii	"<2D_TO_QUEUE>    <DNR_INTERRUPT>  <DNR_START>   <1D"
	.ascii	"_TO_QUEUE>\012\000"
	.space	1
.LC63:
	.ascii	"<VDH_REPAIR>     <VDH_INTERRUPT>  <VDH_START>   <GE"
	.ascii	"NERATE_DECPARAM>\012\000"
	.space	3
.LC64:
	.ascii	"<DECSYNTAX_SEG>  <SCD_INTERRUPT>  <SCD_START>   <RC"
	.ascii	"V_RAW>\012\000"
	.space	1
.LC65:
	.ascii	"'extra_cmd' definition, from bit31 to bit0:\012\000"
	.space	3
.LC66:
	.ascii	"<not used>       <not used>      <direct 8x8>   <B "
	.ascii	"before P>\012\000"
	.space	2
.LC67:
	.ascii	"------------------------debug options--------------"
	.ascii	"------------\012\000"
	.space	3
.LC68:
	.ascii	"%-27s :%#x\012\000"
.LC69:
	.ascii	"tracer address\000"
	.space	1
.LC70:
	.ascii	"%-27s :%s\012\000"
	.space	1
.LC71:
	.ascii	"path to save debug data\000"
.LC72:
	.ascii	"print enable word\000"
	.space	2
.LC73:
	.ascii	"vfmw_state enable word\000"
	.space	1
.LC74:
	.ascii	"%-27s :%d\012\000"
	.space	1
.LC75:
	.ascii	"bitstream control period\000"
	.space	3
.LC76:
	.ascii	"frame control period\000"
	.space	3
.LC77:
	.ascii	"rcv/rls img control period\000"
	.space	1
.LC78:
	.ascii	"you can perform vfmw debug with such commond:\012\000"
	.space	1
.LC79:
	.ascii	"echo [arg1] [arg2] > /proc/vfmw\012\012\000"
	.space	2
.LC80:
	.ascii	"debug action                    arg1       arg2\012"
	.ascii	"\000"
	.space	3
.LC81:
	.ascii	"------------------------------  --------  ---------"
	.ascii	"------------\012\000"
	.space	3
.LC82:
	.ascii	"set print enable                0x0       print_ena"
	.ascii	"ble_word\012\000"
	.space	3
.LC83:
	.ascii	"set err_thr                     0x2       (chan_id<"
	.ascii	"<24)|err_thr\012\000"
	.space	3
.LC84:
	.ascii	"set dec order output            0x4       (chan_id<"
	.ascii	"<24)|dec_order_output_enable\012\000"
	.space	3
.LC85:
	.ascii	"set dec_mode(0/1/2=IPB/IP/I)    0x5       (chan_id<"
	.ascii	"<24)|dec_mode\012\000"
	.space	2
.LC86:
	.ascii	"set discard_before_dec_thr      0x7       (chan_id<"
	.ascii	"<24)|stream_size_thr\012\000"
	.space	3
.LC87:
	.ascii	"set postprocess options         0xa       (dc<<8)|("
	.ascii	"db<<4)|dr, 0000=auto,0001=on,0010=off\012\000"
	.space	2
.LC88:
	.ascii	"set frame/adaptive storage      0xb       0:frame o"
	.ascii	"nly, 1:adaptive\012\000"
.LC89:
	.ascii	"pay attention to the channel    0xd       channel n"
	.ascii	"umber\012\000"
	.space	2
.LC90:
	.ascii	"channel vcmp config             0xe       chanId: a"
	.ascii	"rg2>>27,\012%42smirror_en: (arg2>>26)&1,\012%42svcm"
	.ascii	"p_en: (arg2>>25)&1,\012%42swm_en: (arg2>>24)&1,\012"
	.ascii	"%42swm_start: (arg2>>12)&0xfff,\012%42swm_end: (arg"
	.ascii	"2)&0xfff\012\000"
	.space	1
.LC91:
	.ascii	" \000"
	.space	2
.LC92:
	.ascii	"print tracer                    0x100     tracer ad"
	.ascii	"dress. do not care if vfmw still running\012\000"
	.space	3
.LC93:
	.ascii	"start/stop raw stream saving    0x200     chan_id\012"
	.ascii	"\000"
	.space	1
.LC94:
	.ascii	"start/stop stream seg saving    0x201     chan_id\012"
	.ascii	"\000"
	.space	1
.LC95:
	.ascii	"start/stop 2D yuv saving        0x202     chan_id\012"
	.ascii	"\000"
	.space	1
.LC96:
	.ascii	"save a single 2D frame          0x203     frame phy"
	.ascii	" addr\012\000"
	.space	2
.LC97:
	.ascii	"save a single 1D frame          0x204     frame phy"
	.ascii	" addr width height=(height+PicStructure)\012\000"
	.space	3
.LC98:
	.ascii	"set dec_task_schedule_delay     0x400     schedual_"
	.ascii	"delay_time(ms)\012\000"
	.space	1
.LC99:
	.ascii	"set dnr_active_interval         0x401     dnr_activ"
	.ascii	"e_interval(ms)\012\000"
	.space	1
.LC100:
	.ascii	"stop/start syntax dec           0x402     do not ca"
	.ascii	"re\012\000"
	.space	1
.LC101:
	.ascii	"set trace controller            0x500     vfmw_stat"
	.ascii	"e_word in /proc/vfmw_prn\012\000"
	.space	3
.LC102:
	.ascii	"set bitstream control period    0x501     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC103:
	.ascii	"set frame control period        0x502     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC104:
	.ascii	"set rcv/rls img control period  0x503     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC105:
	.ascii	"=============== vfmw info =============\012\000"
	.space	3
.LC106:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC107:
	.ascii	"version num\000"
.LC108:
	.ascii	"%-35s %d:%d.%d%%\012\000"
	.space	2
.LC109:
	.ascii	"VDM load\000"
	.space	3
.LC110:
	.ascii	"%-35s :%d.%d%%\012\000"
.LC111:
	.ascii	"DNR load\000"
	.space	3
.LC112:
	.ascii	"extra_ref\000"
	.space	2
.LC113:
	.ascii	"extra_disp\000"
	.space	1
.LC114:
	.ascii	"extra_cmd\000"
	.space	2
.LC115:
	.ascii	"USE_FF_APT_EN\000"
	.space	2
.LC116:
	.ascii	"g_ResetCreateNewSave\000"
	.space	3
.LC117:
	.ascii	"u32VdmKiloCycle\000"
.LC118:
	.ascii	"u32StatPeriod\000"
	.space	2
.LC119:
	.ascii	"vfmw%02d\000"
	.space	3
.LC120:
	.ascii	"vfmw\000"
	.space	3
.LC121:
	.ascii	"vfmw_dbg\000"
	.space	3
.LC122:
	.ascii	"vfmw_prn\000"
	.space	3
.LC123:
	.ascii	"vfmw_dec\000"
	.space	3
.LC124:
	.ascii	"vfmw_scd\000"
	.space	3
.LC125:
	.ascii	"vfmw_chn\000"
	.space	3
.LC126:
	.ascii	"pstCfg is null\000"
	.space	1
.LC127:
	.ascii	"pArgs is null\000"
	.space	2
.LC128:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC129:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC130:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC131:
	.ascii	"=============== scd info =========================="
	.ascii	"====\012\000"
	.space	3
.LC132:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC133:
	.ascii	"IsScdDrvOpen\000"
	.space	3
.LC134:
	.ascii	"SCDState\000"
	.space	3
.LC135:
	.ascii	"ThisInstID\000"
	.space	1
.LC136:
	.ascii	"LastProcessTime\000"
.LC137:
	.ascii	"%-25s :%#x\012\000"
.LC138:
	.ascii	"HwMemAddr\000"
	.space	2
.LC139:
	.ascii	"HwMemSize\000"
	.space	2
.LC140:
	.ascii	"DownMsgMemAddr\000"
	.space	1
.LC141:
	.ascii	"UpMsgMemAddr\000"
	.space	3
.LC142:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC143:
	.ascii	"--------------- inst[%d] -------------\012\000"
.LC144:
	.ascii	"Mode\000"
	.space	3
.LC145:
	.ascii	"cfg VidStd\000"
	.space	1
.LC146:
	.ascii	"is wait seg ext\000"
.LC147:
	.ascii	"cfg BufPhyAddr\000"
	.space	1
.LC148:
	.ascii	"cfg BufSize\000"
.LC149:
	.ascii	"raw Total size\000"
	.space	1
.LC150:
	.ascii	"raw Total num\000"
	.space	2
.LC151:
	.ascii	"seg Total size\000"
	.space	1
.LC152:
	.ascii	"seg Total num\000"
	.space	2
.LC153:
	.ascii	"seg read_addr\000"
	.space	2
.LC154:
	.ascii	"seg write_addr\000"
	.space	1
.LC155:
	.ascii	"%-25s :%d Kbps\012\000"
.LC156:
	.ascii	"actual bitrate\000"
	.space	1
.LC157:
	.ascii	"============================= vfmw%02d info ======="
	.ascii	"=======================\012\000"
.LC158:
	.ascii	"%-45s :%d\012\000"
	.space	1
.LC159:
	.ascii	"VersionNum\000"
	.space	1
.LC160:
	.ascii	"VfmwID\000"
	.space	1
.LC161:
	.ascii	"----------------------------- scd stream info -----"
	.ascii	"----------------------\012\000"
	.space	1
.LC162:
	.ascii	"%-45s :%d/%d\012\000"
	.space	2
.LC163:
	.ascii	"RawStream(Size/Num)\000"
.LC164:
	.ascii	"SCDSegStream(Size/Num)\000"
	.space	1
.LC165:
	.ascii	"%-45s :%d/%d/%d%%\012\000"
	.space	1
.LC166:
	.ascii	"SCDSegBuffer(Total/Use/Percent)\000"
.LC167:
	.ascii	"----------------------------- vdh frame info ------"
	.ascii	"----------------------\012\000"
	.space	1
.LC168:
	.ascii	"%-45s :%d.%d%%\012\000"
.LC169:
	.ascii	"VDH 0 load\000"
	.space	1
.LC170:
	.ascii	"%-45s :%d*%d\012\000"
	.space	2
.LC171:
	.ascii	"Decode(Width*Height)\000"
	.space	3
.LC172:
	.ascii	"Display(Width*Height)\000"
	.space	2
.LC173:
	.ascii	"%-45s :%d.%d fps\012\000"
	.space	2
.LC174:
	.ascii	"FrameRate\000"
	.space	2
.LC175:
	.ascii	"VDHFrameBuffer(Total/Use/Percent)\000"
	.space	2
.LC176:
	.ascii	"==================================================="
	.ascii	"========================\012\000"
	.space	3
.LC177:
	.ascii	"Last frame output failed!\012\000"
	.space	1
.LC178:
	.ascii	"Last frame output successed!\012\000"
	.space	2
.LC179:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC180:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC181:
	.ascii	"=============== dec info =========================="
	.ascii	"====\012\000"
	.space	3
.LC182:
	.ascii	"vfmw_read_proc_dec L(%d): unkown LevelID(%d)\012\000"
	.space	2
.LC183:
	.ascii	"vfmw_read_proc_dec L(%d): pFspInst[%d] null\012\000"
	.space	3
.LC184:
	.ascii	"--------------- chan[%d] -------------\012\000"
.LC185:
	.ascii	"deced by vdh\000"
	.space	3
.LC186:
	.ascii	"s32IsOpen\000"
	.space	2
.LC187:
	.ascii	"s32IsRun\000"
	.space	3
.LC188:
	.ascii	"s32Priority\000"
.LC189:
	.ascii	"eVidStd\000"
.LC190:
	.ascii	"cfg s32ChanErrThr\000"
	.space	2
.LC191:
	.ascii	"cfg s32ChanStrmOFThr\000"
	.space	3
.LC192:
	.ascii	"cfg s32DecMode\000"
	.space	1
.LC193:
	.ascii	"cfg s32DecOrderOutput\000"
	.space	2
.LC194:
	.ascii	"cfg stdext AP\000"
	.space	2
.LC195:
	.ascii	"cfg stdext CodecVer\000"
.LC196:
	.ascii	"cfg stdext bReversed\000"
	.space	3
.LC197:
	.ascii	"ChanMem_vdh mem phy\000"
.LC198:
	.ascii	"ChanMem_vdh mem size\000"
	.space	3
.LC199:
	.ascii	"ChanMem_scd mem phy\000"
.LC200:
	.ascii	"ChanMem_scd mem size\000"
	.space	3
.LC201:
	.ascii	"s32SdecMemAddr\000"
	.space	1
.LC202:
	.ascii	"s32SdecMemSize\000"
	.space	1
.LC203:
	.ascii	"s32OffLineDnrMemAddr\000"
	.space	3
.LC204:
	.ascii	"s32OffLineDNRMemSize\000"
	.space	3
.LC205:
	.ascii	"s32VdmChanMemAddr\000"
	.space	2
.LC206:
	.ascii	"s32VdmChanMemSize\000"
	.space	2
.LC207:
	.ascii	"Recent UsrdecFrame: enFmt=%d,w=%d,h=%d,Ystride=%d,C"
	.ascii	"stride=%d,PTS=%lld\012\000"
	.space	1
.LC208:
	.ascii	"s32ScdChanMemAddr\000"
	.space	2
.LC209:
	.ascii	"s32ScdChanMemSize\000"
	.space	2
.LC210:
	.ascii	"%-25s :%d,%d,%d\012\000"
	.space	3
.LC211:
	.ascii	"ref,read,new\000"
	.space	3
.LC212:
	.ascii	"%-25s :(%d,%d,%d)\012\000"
	.space	1
.LC213:
	.ascii	"decQue detail\000"
	.space	2
.LC214:
	.ascii	"actual DecMode\000"
	.space	1
.LC215:
	.ascii	"actual DecOrderOutput\000"
	.space	2
.LC216:
	.ascii	"image format\000"
	.space	3
.LC217:
	.ascii	"frame packing type\000"
	.space	1
.LC218:
	.ascii	"%-25s :%d.%02d fps\012\000"
.LC219:
	.ascii	"stream frame rate\000"
	.space	2
.LC220:
	.ascii	"%-25s :%d.%d fps\012\000"
	.space	2
.LC221:
	.ascii	"actual frame rate\000"
	.space	2
.LC222:
	.ascii	"%-25s :%d.%d%%\012\000"
.LC223:
	.ascii	"skip frame found\000"
	.space	3
.LC224:
	.ascii	"skip frame discarded\000"
	.space	3
.LC225:
	.ascii	"%s %d NULL == pTreeFsp!!\012\000"
	.space	2
.LC226:
	.ascii	"\012%-25s :%d\012\000"
.LC227:
	.ascii	"tree fsp s32DispLoopEnable\000"
	.space	1
.LC228:
	.ascii	"tree fsp s32DecFsWidth\000"
	.space	1
.LC229:
	.ascii	"tree fsp s32DecFsHeight\000"
.LC230:
	.ascii	"tree fsp s32DispFsWidth\000"
.LC231:
	.ascii	"tree fsp s32DispFsHeight\000"
	.space	3
.LC232:
	.ascii	"tree fsp s32ExpectedDecFsNum\000"
	.space	3
.LC233:
	.ascii	"tree fsp s32ExpectedDispFsNum\000"
	.space	2
.LC234:
	.ascii	"tree fsp s8LevelID\000"
	.space	1
.LC235:
	.ascii	"\012\012%-25s :%d\012disp_usage: \000"
	.space	3
.LC236:
	.ascii	"tree fsp s32DispFsNum\000"
	.space	2
.LC237:
	.ascii	"%d%d \000"
	.space	2
.LC238:
	.ascii	"\012\012%-25s :%d\012dec_usage: \000"
.LC239:
	.ascii	"tree fsp s32DecFsNum\000"
	.space	3
.LC240:
	.ascii	"fsp s32DispLoopEnable\000"
	.space	2
.LC241:
	.ascii	"fsp s32DecFsWidth\000"
	.space	2
.LC242:
	.ascii	"fsp s32DecFsHeight\000"
	.space	1
.LC243:
	.ascii	"fsp s32DispFsWidth\000"
	.space	1
.LC244:
	.ascii	"fsp s32DispFsHeight\000"
.LC245:
	.ascii	"fsp s32ExpectedDecFsNum\000"
.LC246:
	.ascii	"fsp s32ExpectedDispFsNum\000"
	.space	3
.LC247:
	.ascii	"fsp Logic fs num\000"
	.space	3
.LC248:
	.ascii	"\012%-25s :%d\012dec_usage: \000"
	.space	1
.LC249:
	.ascii	"fsp s32DecFsNum\000"
.LC250:
	.ascii	"fsp s32DispFsNum\000"
	.space	3
.LC251:
	.ascii	"fsp s32PmvNum\000"
	.space	2
.LC252:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC253:
	.ascii	"Chan %d is not open or not running\012\000"
.LC254:
	.ascii	"VFMW_Hal_%d\000"
.LC255:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC256:
	.ascii	"hi_vdec_vdh_irq\000"
.LC257:
	.ascii	"hi_vdec_scd_irq\000"
.LC258:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC259:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC260:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC261:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC262:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC263:
	.ascii	"line: %d, pLf is NULL!\012\000"
.LC264:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC265:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC266:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC267:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
.LC268:
	.ascii	"line: %d, pLogic is Null!\012\000"
	.space	1
.LC269:
	.ascii	"eYuvFormat %d is not support!!\012\000"
.LC270:
	.ascii	"pUsrdecFrame == NULL\000"
	.space	3
.LC271:
	.ascii	"VCTRL_PutUsrdecFrame: VidStd is %d\012\000"
.LC272:
	.ascii	"VCTRL_PutUsrdecFrame return err\012\000"
	.space	3
.LC273:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC274:
	.ascii	"This channel is not opened\000"
	.space	1
.LC275:
	.ascii	"This channel is not running\000"
.LC276:
	.ascii	"Syntax is stopped from This channel\000"
.LC277:
	.ascii	"[%d] vdm busy\012\000"
	.space	1
.LC278:
	.ascii	"[%d] no frame\012\000"
	.space	1
.LC279:
	.ascii	"[%d] no stream\012\000"
.LC280:
	.ascii	"seg_pts: %lld, seg_usertag = %lld\012\000"
	.space	1
.LC281:
	.ascii	"pic_pts: %lld\012\000"
	.space	1
.LC282:
	.ascii	"pic_usertag: %lld\012\000"
	.space	1
.LC283:
	.ascii	"pic_pts: %lld pic_usertag = %lld\012\000"
	.space	2
.LC284:
	.ascii	"line: %d Flush DPB failed!\012\000"
.LC285:
	.ascii	"fuction return value is null,%s %d MVC_OK != MVC_Fl"
	.ascii	"ushDPB!!\012\000"
	.space	3
.LC286:
	.ascii	"pImage is NULL\000"
	.space	1
.LC287:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC288:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC289:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC290:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC291:
	.ascii	"%s: view_0 id(%d) > view_1 id(%d), error!\012\000"
	.space	1
.LC292:
	.ascii	"%s: continuous view0 id(%d)!\012\000"
	.space	2
.LC293:
	.ascii	"%s: continuous view1 id(%d)!\012\000"
	.space	2
.LC294:
	.ascii	"WARNNING: ScdLowdlyEnable = %d, VidStd = %d, eDSPSt"
	.ascii	"ate = %d AVS(+) and LOWDLY  cannot supported in the"
	.ascii	" same time!!!\012\000"
	.space	3
.LC295:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC296:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC297:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC298:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC299:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC300:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC301:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC302:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC303:
	.ascii	"extra_ref=\000"
	.space	1
.LC304:
	.ascii	"=\000"
	.space	2
.LC305:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC306:
	.ascii	"extra_disp=\000"
.LC307:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC308:
	.ascii	"extra_cmd=\000"
	.space	1
.LC309:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC310:
	.ascii	"The channel %d is not active\012\000"
	.space	2
.LC311:
	.ascii	"The channel %d is deced\012\000"
	.space	3
.LC312:
	.ascii	"The pDecParam of channel %d is NULL\012\000"
	.space	3
.LC313:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC314:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC315:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC316:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC317:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC318:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC319:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC320:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC321:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC322:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC323:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC324:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC325:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC326:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC327:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC328:
	.ascii	"print memory tracer...\012\000"
.LC329:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC330:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC331:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC332:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC333:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC334:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC335:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC336:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC337:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC338:
	.ascii	"OK create file '%s' for channel %d yuv save\012\000"
	.space	3
.LC339:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC340:
	.ascii	">>>> close yuv saving >>>>\012\000"
.LC341:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC342:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC343:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC344:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC345:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC346:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC347:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC348:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC349:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC350:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC351:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC352:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC353:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC354:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC355:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC356:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC357:
	.ascii	"MMZ: your parameter string is too long!\012\000"
	.space	3
.LC358:
	.ascii	"MMZ: copy_from_user failed!\012\000"
	.space	3
.LC359:
	.ascii	"error echo cmd '%s'!\012\000"
	.space	2
.LC360:
	.ascii	"%s %d j < 1!!\012\000"
	.space	1
.LC361:
	.ascii	"******* vfmw save path: %s ********\012\000"
	.space	3
.LC362:
	.ascii	"\012vfmw debug: arg1=%#x, arg2=%#x\012\000"
	.space	3
.LC363:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC364:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC365:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC366:
	.ascii	"====== fatal error: can NOT re-map vir address for "
	.ascii	"channel %d ======\012\000"
	.space	2
.LC367:
	.ascii	"= previous standard: %d, new standard: %d\012\000"
	.space	1
.LC368:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC369:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC370:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC371:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC372:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC373:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC374:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC375:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC376:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	"\012\000"
	.space	3
.LC377:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC378:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC379:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC380:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC381:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC382:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC383:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC384:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC385:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC386:
	.ascii	"can NOT init tree fs\012\000"
	.space	2
.LC387:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC388:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC389:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC390:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC391:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC392:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC393:
	.ascii	"Thread running...\012\000"
	.space	1
.LC394:
	.ascii	"thread running...\012\000"
	.space	1
.LC395:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC396:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC397:
	.ascii	"Thread killed!\012\000"
.LC398:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 16
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 16
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 16
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_ref
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 64
s_pstVfmwChan:
	.space	64
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 64
g_VfmwGlobalStat:
	.space	64
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 4800
g_VfmwChanStat:
	.space	4800
	.type	last_rec_pos_time.38753, %object
	.size	last_rec_pos_time.38753, 64
last_rec_pos_time.38753:
	.space	64
	.type	last_rec_pos_decparam_time.38754, %object
	.size	last_rec_pos_decparam_time.38754, 64
last_rec_pos_decparam_time.38754:
	.space	64
	.type	ChanPriTab.38642, %object
	.size	ChanPriTab.38642, 64
ChanPriTab.38642:
	.space	64
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 160
s_VfmwCTrl:
	.space	160
	.type	g_TaskLock, %object
	.size	g_TaskLock, 12
g_TaskLock:
	.space	12
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 12
g_ActivateLock:
	.space	12
	.type	last_rec_pos_time.37281, %object
	.size	last_rec_pos_time.37281, 64
last_rec_pos_time.37281:
	.space	64
	.type	last_rec_pos_time.37196, %object
	.size	last_rec_pos_time.37196, 64
last_rec_pos_time.37196:
	.space	64
	.type	g_DSPState, %object
	.size	g_DSPState, 64
g_DSPState:
	.space	64
	.type	PrioArray.36540, %object
	.size	PrioArray.36540, 64
PrioArray.36540:
	.space	64
	.type	FspInstInfo.36014, %object
	.size	FspInstInfo.36014, 3084
FspInstInfo.36014:
	.space	3084
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.space	3
	.type	g_IntEvent, %object
	.size	g_IntEvent, 16
g_IntEvent:
	.space	16
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	LastEventTime.35720, %object
	.size	LastEventTime.35720, 4
LastEventTime.35720:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.39321, %object
	.size	save_file_cnt.39321, 4
save_file_cnt.39321:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.39324, %object
	.size	save_file_cnt.39324, 4
save_file_cnt.39324:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.39327, %object
	.size	save_file_cnt.39327, 4
save_file_cnt.39327:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	buf.40370, %object
	.size	buf.40370, 256
buf.40370:
	.space	256
	.type	str.40371, %object
	.size	str.40371, 256
str.40371:
	.space	256
	.type	Capability.36772, %object
	.size	Capability.36772, 148
Capability.36772:
	.space	148
	.type	PrioArray.36771, %object
	.size	PrioArray.36771, 64
PrioArray.36771:
	.space	64
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
