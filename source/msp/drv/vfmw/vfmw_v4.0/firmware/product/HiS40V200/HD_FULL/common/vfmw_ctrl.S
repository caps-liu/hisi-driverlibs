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
@ -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36636, s_pstVfmwChan
	cmp	r0, #0	@ D.36636,
	addne	r0, r0, #104	@ D.36639, D.36636,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36657, s_pstVfmwChan
	cmp	r0, #0	@ D.36657,
	addne	r0, r0, #128	@ D.36660, D.36657,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetSyntaxCtx
	.type	VCTRL_GetSyntaxCtx, %function
VCTRL_GetSyntaxCtx:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36709, s_pstVfmwChan
	cmp	r0, #0	@ D.36709,
	addne	r0, r0, #904	@ D.36712, D.36709,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetSyntaxCtx, .-VCTRL_GetSyntaxCtx
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36762, s_pstVfmwChan
	cmp	r0, #0	@ D.36762,
	addne	r0, r0, #116	@ D.36765, D.36762,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.37418, s_pstVfmwChan
	ldr	r2, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	bne	.L24	@,
.L18:
	mvn	r0, #0	@ D.37471,
	ldmfd	sp, {fp, sp, pc}	@
.L24:
	ldr	r2, [r3, #36]	@ D.37423, <variable>.stChanCfg.eVidStd
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, r0	@ D.37423, <variable>.eVidStd
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
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r0, [r1, #48]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L18	@,
	ldr	ip, [r3, #96]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #60]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L18	@,
	ldr	ip, [r3, #92]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r0, [r1, #56]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L18	@,
	ldr	ip, [r3, #88]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	r0, [r1, #52]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L18	@,
	ldr	ip, [r3, #100]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r0, [r1, #64]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	ip, r0	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	bne	.L18	@,
	cmp	r2, #1	@ D.37423,
	beq	.L25	@,
	sub	r0, r2, #10	@ tmp170, D.37423,
	cmp	r0, #2	@ tmp170,
	bhi	.L20	@,
	ldr	r2, [r3, #40]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	ip, [r1, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, ip	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L18	@,
.L20:
	mov	r0, #0	@ D.37471,
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
.LFB1407:
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
	ldr	r0, [r3, #688]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
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
.LFB1408:
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
	cmp	r0, #1	@ ChanID,
	bls	.L32	@,
.L29:
	mvn	r0, #0	@ D.38414,
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.38413, s_pstVfmwChan
	cmp	r3, #0	@ D.38413,
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
	ldr	r3, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	movne	r0, #0	@ D.38414,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L29	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanMemSizeByResolution
	.type	VCTRL_GetChanMemSizeByResolution, %function
VCTRL_GetChanMemSizeByResolution:
	.fnstart
.LFB1417:
	@ args = 0, pretend = 0, frame = 624
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #648
	sub	sp, sp, #648	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp141,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp141,
	mov	r5, r2	@ VdmMemSize, VdmMemSize
	mov	r4, r3	@ ScdMemSize, ScdMemSize
	ldr	ip, [ip, #28]	@ D.38893, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38893,
	beq	.L34	@,
	mov	r2, r0	@, MaxWidth
	mov	r3, r1	@, MaxHeight
	mov	r0, #6	@ tmp142,
	mov	r1, #16	@ tmp143,
	str	r0, [sp, #0]	@ tmp142,
	mov	lr, #0	@ tmp144,
	str	r1, [sp, #4]	@ tmp143,
	mvn	r0, #0	@ tmp145,
	sub	r1, fp, #640	@ tmp147,,
	str	r0, [sp, #12]	@ tmp145,
	str	r1, [sp, #16]	@ tmp147,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp144,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38893
	cmp	r0, #0	@ ret
	bne	.L34	@,
	ldr	r2, [fp, #-636]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
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
	mvn	r0, #0	@ D.38906,
	b	.L35	@
	.fnend
	.size	VCTRL_GetChanMemSizeByResolution, .-VCTRL_GetChanMemSizeByResolution
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, #0]	@ D.39400, s_pstVfmwChan
	cmp	r2, #0	@ D.39400,
	beq	.L38	@,
	add	r2, r2, #912	@ tmp139, D.39400,
	cmp	r2, r0	@ tmp139, pCtx
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L38:
	ldr	r3, [r3, #4]	@ temp.1025, s_pstVfmwChan
	cmp	r3, #0	@ temp.1025,
	beq	.L40	@,
	add	r3, r3, #912	@ tmp141, temp.1025,
	cmp	r3, r0	@ tmp141, pCtx
	moveq	r0, #1	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L40:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r3, #0]	@ temp.1051, s_pstVfmwChan
	cmp	r2, #0	@ temp.1051,
	beq	.L43	@,
	ldr	r1, [r2, #168]	@ temp.1053, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1053
	bge	.L44	@,
.L46:
	ldr	r1, [r2, #180]	@ temp.1052, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1052
	blt	.L43	@,
	ldr	r2, [r2, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp143, temp.1052, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp143
	blt	.L50	@,
.L43:
	ldr	r3, [r3, #4]	@ D.39416, s_pstVfmwChan
	cmp	r3, #0	@ D.39416,
	beq	.L47	@,
	ldr	r2, [r3, #168]	@ D.39419, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.39419, PhyAddr
	ble	.L52	@,
.L48:
	ldr	r2, [r3, #180]	@ D.39427, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.39427
	blt	.L47	@,
	ldr	r3, [r3, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp150, D.39427, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp150
	blt	.L51	@,
.L47:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L44:
	ldr	ip, [r2, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp145, temp.1053, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp145
	bge	.L46	@,
.L50:
	mov	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L52:
	ldr	r1, [r3, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp148, D.39419, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp148
	bge	.L48	@,
.L51:
	mov	r0, #1	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
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
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp154,
	movt	r3, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r0, [r3, r0, asl #2]	@ D.39599, s_pstVfmwChan
	cmp	r0, #0	@ D.39599,
	beq	.L54	@,
	ldr	r2, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L54	@
.L68:
	.word	.L67
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L54
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L64
	.word	.L64
	.word	.L65
	.word	.L59
	.word	.L67
	.word	.L54
	.word	.L54
	.word	.L67
.L67:
	add	r0, r0, #920	@ pstVoQue, D.39599,
	ldmfd	sp, {fp, sp, pc}	@
.L54:
	mov	r0, #0	@ pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L64:
	ldr	r3, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r0, r0, #13504	@ pstVoQue, D.39599,
	addne	r0, r0, #56	@ pstVoQue, pstVoQue,
	ldmnefd	sp, {fp, sp, pc}	@
.L59:
	add	ip, r0, #22784	@ pstVoQue, D.39599,
	add	r0, ip, #144	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L60:
	add	r0, r0, #29440	@ pstVoQue, D.39599,
	add	r0, r0, #160	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L61:
	add	r3, r0, #16384	@ pstVoQue, D.39599,
	add	r0, r3, #144	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L62:
	add	ip, r0, #41728	@ pstVoQue, D.39599,
	add	r0, ip, #200	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	add	r2, r0, #9024	@ pstVoQue, D.39599,
	add	r0, r2, #40	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L58:
	add	r0, r0, #75776	@ pstVoQue, D.39599,
	add	r0, r0, #480	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	add	r2, r0, #41728	@ pstVoQue, D.39599,
	add	r0, r2, #176	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L56:
	add	r1, r0, #109568	@ pstVoQue, D.39599,
	add	r0, r1, #224	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L57:
	add	r1, r0, #23296	@ pstVoQue, D.39599,
	add	r0, r1, #160	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1444:
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
	ldr	r3, [r3, #12]	@ g_event_report.744, g_event_report
	cmp	r3, #0	@ g_event_report.744,
	beq	.L74	@,
	sub	r2, fp, #12	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.744
.L74:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	str2val
	.type	str2val, %function
str2val:
	.fnstart
.LFB1454:
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
	beq	.L118	@,
.L76:
	mov	r4, #10	@ weight,
	mov	r5, #0	@ i,
.L77:
	add	r0, r0, r5	@ ivtmp.1131, str, i
	mov	ip, #0	@ dat,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40950,* ivtmp.1131
	cmp	r3, #31	@ D.40950,
	bls	.L78	@,
	cmp	r4, #16	@ weight,
	beq	.L107	@,
.L88:
	sub	ip, r3, #48	@ tmp194, D.40950,
	uxtb	r3, ip	@ tmp195, tmp194
	cmp	r3, #9	@ tmp195,
	bhi	.L108	@,
.L109:
	mov	r2, #1	@ tmp185,
	cmp	r2, #0	@ tmp185,
	add	r0, r0, r2	@ ivtmp.1131, ivtmp.1131,
	add	r5, r5, r2	@ i, i,
	beq	.L85	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40950,* ivtmp.1131
	cmp	r3, #31	@ D.40950,
	bls	.L78	@,
	cmp	r4, #16	@ weight,
	beq	.L111	@,
.L93:
	sub	r3, r3, #48	@ tmp199, D.40950,
	uxtb	r2, r3	@ tmp200, tmp199
	cmp	r2, #9	@ tmp200,
	bhi	.L108	@,
.L112:
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1131, ivtmp.1131,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L85	@,
.L78:
	mov	r0, #0	@ D.40970,
	str	ip, [r1, #0]	@ dat,* data
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L80:
	cmp	r3, #64	@ D.40950,
	bhi	.L81	@,
.L79:
	sub	r3, r3, #48	@ tmp181, D.40950,
	uxtb	r2, r3	@ tmp182, tmp181
	cmp	r2, #9	@ tmp182,
	bhi	.L108	@,
.L82:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40950,
	add	r5, r5, #1	@ tmp186, i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	cmp	r2, #31	@ D.40950,
	add	r0, r0, #1	@ tmp187, ivtmp.1131,
	bls	.L78	@,
	cmp	r4, #16	@ weight,
	beq	.L114	@,
.L99:
	sub	r2, r2, #48	@ tmp203, D.40950,
	uxtb	r3, r2	@ tmp204, tmp203
	cmp	r3, #9	@ tmp204,
	bhi	.L108	@,
.L115:
	add	r5, r5, #1	@ i, tmp186,
	add	r0, r0, #1	@ ivtmp.1131, tmp187,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r2	@ dat, weight, dat, d
	bhi	.L78	@,
.L85:
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.40950,* ivtmp.1131
	cmp	r3, #31	@ D.40950,
	bls	.L78	@,
	cmp	r4, #16	@ weight,
	bne	.L79	@,
	cmp	r3, #96	@ D.40950,
	bls	.L80	@,
	cmp	r3, #102	@ D.40950,
	subls	r3, r3, #87	@ d, D.40950,
	bls	.L82	@,
.L81:
	cmp	r3, #70	@ D.40950,
	subls	r3, r3, #55	@ d, D.40950,
	bls	.L82	@,
	b	.L79	@
.L114:
	cmp	r2, #96	@ D.40950,
	bls	.L101	@,
	cmp	r2, #102	@ D.40950,
	bhi	.L102	@,
	sub	r2, r2, #87	@ d, D.40950,
	b	.L115	@
.L101:
	cmp	r2, #64	@ D.40950,
	bls	.L99	@,
.L102:
	cmp	r2, #70	@ D.40950,
	subls	r2, r2, #55	@ d, D.40950,
	bls	.L115	@,
	b	.L99	@
.L118:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40944,
	cmp	r2, #120	@ D.40944,
	cmpne	r2, #88	@, D.40944,
	moveq	r4, #16	@ weight,
	moveq	r5, #2	@ i,
	beq	.L77	@,
	b	.L76	@
.L107:
	cmp	r3, #96	@ D.40950,
	bls	.L90	@,
	cmp	r3, #102	@ D.40950,
	bhi	.L91	@,
	sub	ip, r3, #87	@ d, D.40950,
	b	.L109	@
.L90:
	cmp	r3, #64	@ D.40950,
	bls	.L88	@,
.L91:
	cmp	r3, #70	@ D.40950,
	subls	ip, r3, #55	@ d, D.40950,
	bls	.L109	@,
	b	.L88	@
.L111:
	cmp	r3, #96	@ D.40950,
	bls	.L95	@,
	cmp	r3, #102	@ D.40950,
	bhi	.L96	@,
	sub	r3, r3, #87	@ d, D.40950,
	b	.L112	@
.L95:
	cmp	r3, #64	@ D.40950,
	bls	.L93	@,
.L96:
	cmp	r3, #70	@ D.40950,
	subls	r3, r3, #55	@ d, D.40950,
	bhi	.L93	@,
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1131, ivtmp.1131,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L85	@,
	b	.L78	@
.L108:
	mvn	r0, #0	@ D.40970,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	str2val, .-str2val
	.align	2
	.global	getPstVoQueByChanId
	.type	getPstVoQueByChanId, %function
getPstVoQueByChanId:
	.fnstart
.LFB1458:
	@ args = 0, pretend = 0, frame = 352
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #356
	sub	sp, sp, #356	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp208,
	movt	r3, #:upper16:.LANCHOR0	@ tmp208,
	mov	r4, r0	@ D.41765, D.41765
	ldr	r1, [r3, r1, asl #2]	@ D.41159, s_pstVfmwChan
	ldr	r2, [r1, #904]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r2, #18	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L119	@
.L134:
	.word	.L133
	.word	.L122
	.word	.L123
	.word	.L124
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L119
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L130
	.word	.L130
	.word	.L131
	.word	.L125
	.word	.L133
	.word	.L119
	.word	.L119
	.word	.L133
.L133:
	add	r1, r1, #920	@, D.41159,
	mov	r2, #352	@,
	bl	memcpy	@
.L119:
	mov	r0, r4	@, D.41765
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L130:
	ldr	r0, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L137	@,
.L125:
	add	r2, r1, #22784	@, D.41159,
	mov	r0, r4	@, D.41765
	add	r1, r2, #144	@,,
	mov	r2, #352	@,
	bl	memcpy	@
	b	.L119	@
.L126:
	add	r3, r1, #29440	@, D.41159,
	mov	r2, #352	@,
	add	r1, r3, #160	@,,
	bl	memcpy	@
	b	.L119	@
.L127:
	add	ip, r1, #16384	@, D.41159,
	mov	r2, #352	@,
	add	r1, ip, #144	@,,
	bl	memcpy	@
	b	.L119	@
.L128:
	add	r2, r1, #41728	@, D.41159,
	add	r1, r2, #200	@,,
	mov	r2, #352	@,
	bl	memcpy	@
	b	.L119	@
.L129:
	add	r1, r1, #41728	@, D.41159,
	mov	r2, #352	@,
	add	r1, r1, #176	@,,
	bl	memcpy	@
	b	.L119	@
.L122:
	add	lr, r1, #109568	@, D.41159,
	mov	r2, #352	@,
	add	r1, lr, #224	@,,
	bl	memcpy	@
	b	.L119	@
.L123:
	add	r3, r1, #23296	@, D.41159,
	mov	r2, #352	@,
	add	r1, r3, #160	@,,
	bl	memcpy	@
	b	.L119	@
.L131:
	add	ip, r1, #9024	@, D.41159,
	mov	r2, #352	@,
	add	r1, ip, #40	@,,
	bl	memcpy	@
	b	.L119	@
.L124:
	add	r1, r1, #75776	@, D.41159,
	mov	r2, #352	@,
	add	r1, r1, #480	@,,
	bl	memcpy	@
	b	.L119	@
.L137:
	add	lr, r1, #13504	@, D.41159,
	mov	r0, r4	@, D.41765
	add	r1, lr, #56	@,,
	mov	r2, #352	@,
	bl	memcpy	@
	b	.L119	@
	.fnend
	.size	getPstVoQueByChanId, .-getPstVoQueByChanId
	.align	2
	.global	getChanCfg
	.type	getChanCfg, %function
getChanCfg:
	.fnstart
.LFB1459:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mov	r4, r0	@ D.41832, D.41832
	mov	r2, #68	@,
	ldr	r1, [r3, r1, asl #2]	@ tmp136, s_pstVfmwChan
	add	r1, r1, #36	@, tmp136,
	bl	memcpy	@
	mov	r0, r4	@, D.41832
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	getChanCfg, .-getChanCfg
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1460:
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
	b	.L141	@
.L149:
	.word	.L142
	.word	.L143
	.word	.L144
	.word	.L145
	.word	.L146
	.word	.L147
	.word	.L148
.L148:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L141:
	mov	r3, r1	@, enFmt
	movw	r2, #8347	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L142:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L143:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L144:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L145:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L146:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L147:
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
.LFB1442:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L163	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.40185, s_pstVfmwChan
	cmp	r3, #0	@ D.40185,
	strne	r1, [r3, #692]	@ Value, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
.L163:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #7130	@,
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
.LFB1441:
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
	cmp	r0, #1	@ ChanID,
	bls	.L165	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #7118	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40171,
	ldmfd	sp, {fp, sp, pc}	@
.L165:
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.40173, s_pstVfmwChan
	cmp	r3, #0	@ D.40173,
	mvneq	r0, #0	@ D.40171,
	ldrne	r0, [r3, #692]	@ D.40171, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1431:
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
	str	r0, [r4, #16]	@ new_extra_ref, extra_ref
	bhi	.L173	@,
.L170:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.633, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.633, tmp145
	strge	r0, [r4, #16]	@, iftmp.633, extra_ref
	strlt	r6, [r4, #16]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #20]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L174	@,
.L171:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1276, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1276, tmp155
	strge	r5, [r4, #20]	@, iftmp.1276, extra_disp
	strlt	r3, [r4, #20]	@, tmp155, extra_disp
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L173:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #16]	@ new_extra_ref, extra_ref
	b	.L170	@
.L174:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #20]	@ new_extra_disp, extra_disp
	b	.L171	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1430:
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
	cmp	r0, #1	@ ChanID,
	bls	.L176	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6296	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39670,
	ldmfd	sp, {fp, sp, pc}	@
.L176:
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.39672, s_pstVfmwChan
	cmp	r3, #0	@ D.39672,
	moveq	r0, #27	@ D.39670,
	ldrne	r0, [r3, #28]	@ D.39670, <variable>.eChanCapLevel
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1429:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L185	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.39660, s_pstVfmwChan
	cmp	r0, #0	@ D.39660,
	beq	.L186	@,
	movw	r1, #:lower16:11199468	@ tmp142,
	movt	r1, #:upper16:11199468	@ tmp142,
	ldr	r0, [r0, r1]	@ D.39658, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp, {fp, sp, pc}	@
.L185:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6288	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39658,
	ldmfd	sp, {fp, sp, pc}	@
.L186:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6289	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39658,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1428:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L192	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.39648, s_pstVfmwChan
	cmp	r0, #0	@ D.39648,
	beq	.L193	@,
	movw	r1, #:lower16:11199464	@ tmp142,
	movt	r1, #:upper16:11199464	@ tmp142,
	ldr	r0, [r0, r1]	@ D.39646, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp, {fp, sp, pc}	@
.L192:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6280	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39646,
	ldmfd	sp, {fp, sp, pc}	@
.L193:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6281	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39646,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1421:
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
	beq	.L201	@,
	cmp	r4, r7	@ Threshould, StreamAmount
	blt	.L198	@,
.L200:
	mov	r4, r5	@ NextMode, CurMode
.L197:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L198:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L197	@
.L201:
	cmp	r6, r7	@ tmp141, StreamAmount
	ble	.L200	@,
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L197	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1418:
	@ args = 0, pretend = 0, frame = 648
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
	mov	sl, r0, asl #3	@ tmp313, eCapLevel,
	rsb	r8, r0, sl	@ tmp169, eCapLevel, tmp313
	movw	r6, #:lower16:CapItem	@ tmp312,
	movt	r6, #:upper16:CapItem	@ tmp312,
	sub	r3, r0, #18	@ D.41334, eCapLevel,
	add	r4, r6, r8, asl #2	@, tmp171, tmp312, tmp169,
	cmp	r3, #7	@ D.41334,
	mov	r5, r0	@ eCapLevel, eCapLevel
	str	r2, [fp, #-676]	@ ScdMemSize, %sfp
	ldr	r8, [r4, #12]	@ TempMinFrame, CapItem
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	ldr	r0, [r4, #20]	@, CapItem
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	ldr	ip, [r4, #8]	@ TempPmv, CapItem
	movhi	r3, #6	@ MinDnrFspNum,
	ldr	r9, [r4, #16]	@ TempMiddleFrame, CapItem
	movw	r4, #:lower16:.LANCHOR0	@ tmp314,
	movt	r4, #:upper16:.LANCHOR0	@ tmp314,
	str	r1, [fp, #-672]	@ VdmMemSize, %sfp
	ldrls	r3, [r2, r3, asl #2]	@ MinDnrFspNum, CSWTCH.811
	sub	r2, r8, #2	@ tmp198, TempMinFrame,
	ldr	r1, [r4, #16]	@ extra_ref, extra_ref
	rsb	r3, r3, r2	@ s32MaxRefFrameNum, MinDnrFspNum, tmp198
	str	r0, [fp, #-688]	@, %sfp
	cmp	r1, #0	@ extra_ref,
	movlt	r2, #0	@ tmp202,
	strlt	r2, [r4, #16]	@ tmp202, extra_ref
	cmp	r3, #15	@ s32MaxRefFrameNum,
	movgt	r7, #0	@ extra_ref_tmp,
	bgt	.L207	@,
	ldr	r7, [r4, #16]	@ extra_ref_tmp, extra_ref
	add	r2, r3, r7	@ D.38945, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r2, #16	@ D.38945,
	addgt	r7, r7, #16	@ D.38948, extra_ref_tmp,
	rsbgt	r7, r2, r7	@ extra_ref_tmp, D.38945, D.38948
.L207:
	add	r3, r7, ip	@ TempPmv.1398, extra_ref_tmp, TempPmv
	ldr	r1, [r4, #20]	@, extra_disp
	cmp	r3, #0	@ TempPmv.1398,
	str	r1, [fp, #-680]	@, %sfp
	ble	.L223	@,
	cmp	r3, #17	@ TempPmv.1398,
	movge	r3, #17	@ TempPmv.1398,
	str	r3, [fp, #-684]	@ TempPmv.1398, %sfp
.L209:
	cmp	r5, #23	@ eCapLevel,
	bhi	.L210	@,
	ldr	ip, [fp, #-680]	@, %sfp
	add	r3, r7, ip	@ D.38951, extra_ref_tmp,
	add	r2, r3, r8	@ TempMinFrame.1395, D.38951, TempMinFrame
	add	r1, r3, r9	@ TempMiddleFrame.1396, D.38951, TempMiddleFrame
	cmp	r2, #0	@ TempMinFrame.1395,
	cmpgt	r1, #0	@, TempMiddleFrame.1396,
	ble	.L211	@,
	ldr	r0, [fp, #-688]	@, %sfp
	add	lr, r3, r0	@ TempFluentFrame.1397, D.38951,
	cmp	lr, #0	@ TempFluentFrame.1397,
	strgt	lr, [fp, #-692]	@ TempFluentFrame.1397, %sfp
	strgt	r1, [fp, #-680]	@ TempMiddleFrame.1396, %sfp
	movgt	r8, r2	@ nMinFrame, TempMinFrame.1395
	ble	.L211	@,
.L213:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp215,
	ldr	ip, [r7, #28]	@ D.38969, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38969,
	beq	.L216	@,
.L224:
	rsb	r5, r5, sl	@ tmp219, eCapLevel, tmp313
	ldr	sl, [fp, #-684]	@, %sfp
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
	sub	r9, fp, #664	@ tmp232,,
	str	sl, [sp, #12]	@ tmp230,
	movt	r4, #:upper16:CapItem	@ tmp216,
	str	r9, [sp, #16]	@ tmp232,
	add	r6, r6, r5, asl #2	@, tmp221, tmp312, tmp219,
	blx	ip	@ D.38969
	subs	r3, r0, #0	@ ret,
	bne	.L216	@,
	ldr	r2, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [fp, #-672]	@, %sfp
	add	r1, r2, #47104	@ tmp234, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp234, tmp234,
	str	ip, [lr, #0]	@ tmp234,
	ldr	r1, [fp, #-676]	@, %sfp
	ldr	r0, [r6, #24]	@ tmp244, CapItem
	add	r2, r0, #32768	@ tmp245, tmp244,
	str	r2, [r1, #0]	@ tmp245,
	ldr	ip, [r7, #28]	@ temp.1400, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1400,
	beq	.L218	@,
	ldr	lr, [r4, r8, asl #2]	@ tmp260, CapItem
	mov	r0, #1	@,
	ldr	r2, [fp, #-680]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [fp, #-684]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r4, r5, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp260
	str	sl, [sp, #12]	@ tmp230,
	str	r9, [sp, #16]	@ tmp232,
	blx	ip	@ temp.1400
	subs	lr, r0, #0	@ ret.1403,
	bne	.L218	@,
	ldr	ip, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [fp, #-672]	@, %sfp
	add	r0, ip, #47104	@ tmp266, MemArrange.TotalMemUsed,
	add	r3, r0, #16	@ tmp266, tmp266,
	str	r3, [r2, #4]	@ tmp266,
	ldr	r0, [fp, #-676]	@, %sfp
	ldr	r1, [r6, #24]	@ tmp276, CapItem
	add	ip, r1, #32768	@ tmp277, tmp276,
	str	ip, [r0, #4]	@ tmp277,
	ldr	ip, [r7, #28]	@ temp.1407, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1407,
	beq	.L220	@,
	ldr	r3, [r4, r8, asl #2]	@ tmp292, CapItem
	mov	r0, #1	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp286, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r4, [fp, #-684]	@, %sfp
	str	lr, [sp, #8]	@ ret.1403,
	str	sl, [sp, #12]	@ tmp230,
	str	r4, [sp, #0]	@,
	ldr	r4, [fp, #-692]	@, %sfp
	str	r9, [sp, #16]	@ tmp232,
	str	r4, [sp, #4]	@,
	blx	ip	@ temp.1407
	cmp	r0, #0	@ ret.1410
	bne	.L220	@,
	ldr	r1, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	ip, [fp, #-672]	@, %sfp
	add	lr, r1, #47104	@ tmp298, MemArrange.TotalMemUsed,
	add	r2, lr, #16	@ tmp298, tmp298,
	str	r2, [ip, #8]	@ tmp298,
	ldr	lr, [fp, #-676]	@, %sfp
	ldr	r3, [r6, #24]	@ tmp308, CapItem
	add	r1, r3, #32768	@ tmp309, tmp308,
	str	r1, [lr, #8]	@ tmp309,
	b	.L215	@
.L210:
	cmp	r5, #26	@ eCapLevel,
	bls	.L214	@,
.L222:
	mvn	r0, #0	@ D.38987,
.L215:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L211:
	ldr	ip, [r4, #20]	@ extra_disp.1399, extra_disp
	mov	r3, r7	@, extra_ref_tmp
	ldr	lr, [fp, #-688]	@, %sfp
	mov	r0, #32	@,
	str	r7, [sp, #8]	@ extra_ref_tmp,
	movw	r1, #:lower16:.LC12	@,
	str	r7, [sp, #20]	@ extra_ref_tmp,
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp215,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, r8	@, TempMinFrame
	str	ip, [sp, #24]	@ extra_disp.1399,
	str	ip, [sp, #0]	@ extra_disp.1399,
	mov	r4, lr	@,
	str	ip, [sp, #12]	@ extra_disp.1399,
	str	lr, [fp, #-692]	@, %sfp
	str	r9, [fp, #-680]	@ TempMiddleFrame, %sfp
	str	r9, [sp, #4]	@ TempMiddleFrame,
	str	lr, [sp, #16]	@ tmp4,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #28]	@ D.38969, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38969,
	bne	.L224	@,
.L216:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5302	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38987,
	b	.L215	@
.L214:
	ldr	r7, [fp, #-688]	@, %sfp
	str	r9, [fp, #-680]	@ TempMiddleFrame, %sfp
	str	r7, [fp, #-692]	@, %sfp
	b	.L213	@
.L223:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC11	@,
	mov	r3, r7	@, extra_ref_tmp
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [fp, #-684]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L209	@
.L218:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5321	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38987,
	b	.L215	@
.L220:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #5340	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L222	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_GetChanMemSizeWithTreeFs
	.type	VCTRL_GetChanMemSizeWithTreeFs, %function
VCTRL_GetChanMemSizeWithTreeFs:
	.fnstart
.LFB1415:
	@ args = 0, pretend = 0, frame = 632
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
	str	r2, [fp, #-672]	@, %sfp
	beq	.L226	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp156,
	movt	r1, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r2, [r4, #28]	@ D.38670, <variable>.s32MaxRefFrameNum
	ldr	r6, [r1, #20]	@ extra_disp.583, extra_disp
	ldr	ip, [r4, #52]	@ D.38672, <variable>.s32DisplayFrameNum
	ldr	r1, [r1, #16]	@ extra_ref.582, extra_ref
	add	r7, r6, ip	@ TempDispNum, extra_disp.583, D.38672
	add	r8, r1, r2	@ TempRefNum, extra_ref.582, D.38670
	orrs	sl, r8, r7	@, TempRefNum, TempDispNum
	bmi	.L244	@,
	add	sl, r8, r7	@ tmp168, TempRefNum, TempDispNum
	add	sl, sl, #2	@ tmp169, tmp168,
	cmp	sl, #10	@ tmp169,
	ble	.L244	@,
	rsbs	r3, r3, #1	@ tmp177, flag
	movcc	r3, #0	@ tmp177
	cmp	r0, #25	@ eCapLevel,
	str	r8, [r4, #28]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp177,
	cmp	r3, #0	@ tmp177,
	str	r7, [r4, #52]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L246	@,
.L226:
	ldr	r3, [r4, #0]	@ D.38691, <variable>.Purpose
	cmp	r3, #2	@ D.38691,
	bhi	.L247	@,
	bne	.L231	@,
	ldr	r3, [r4, #56]	@ D.38699, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38699,
	beq	.L232	@,
	ldr	r2, [r4, #60]	@ D.38701, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.38701,
	beq	.L232	@,
	mul	r2, r2, r3	@ tmp181, D.38701, D.38699
	ldr	r1, [r4, #52]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	movw	ip, #:lower16:11253104	@ tmp187,
	movt	ip, #:upper16:11253104	@ tmp187,
	str	ip, [r5, #8]	@ tmp187, <variable>.ChanCtxDetailMem
	mov	r0, #0	@ tmp186,
	str	r0, [r5, #4]	@ tmp186, <variable>.ScdDetailMem
	mov	r3, r2, asl #1	@ tmp182, tmp181,
	mla	ip, r1, r3, r3	@ tmp185, <variable>.s32DisplayFrameNum, tmp182, tmp182
	str	ip, [r5, #0]	@ tmp185, <variable>.VdhDetailMem
.L228:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L231:
	cmp	r3, #1	@ D.38691,
	mvnne	r0, #0	@ D.38680,
	bne	.L228	@
.L234:
	ldr	r0, [r4, #28]	@ temp.1441, <variable>.s32MaxRefFrameNum
	cmp	r0, #0	@ temp.1441,
	blt	.L235	@,
	cmp	r9, #31	@ <variable>.s32MaxWidth,
	ble	.L235	@,
	ldr	lr, [fp, #-672]	@, %sfp
	cmp	lr, #31	@,
	ble	.L235	@,
	ldr	r3, [r4, #48]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	r3, #262144	@ <variable>.s32SCDBufSize,
	blt	.L235	@,
	ldr	r1, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r1, #1	@ <variable>.s32SupportH264,
	beq	.L248	@,
.L236:
	ldr	sl, [r4, #36]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp198,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp198,
	cmp	sl, #0	@ <variable>.s32SupportBFrame,
	ldr	ip, [r6, #32]	@ D.38732, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	moveq	sl, #1	@ PmvNum,
	movne	sl, #17	@ PmvNum,
	cmp	ip, #0	@ D.38732,
	beq	.L239	@,
	ldr	r1, [r4, #52]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r2, r9	@, <variable>.s32MaxWidth
	ldr	r8, [r4, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	mov	lr, #0	@ tmp199,
	ldr	r9, [r4, #64]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	sub	r7, fp, #664	@ tmp203,,
	str	r0, [sp, #4]	@ temp.1441,
	mov	r0, #1024	@,
	str	r1, [sp, #8]	@ <variable>.s32DisplayFrameNum,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #12]	@ tmp199,
	str	lr, [sp, #0]	@ tmp199,
	ldr	r3, [fp, #-672]	@, %sfp
	str	r8, [sp, #20]	@ <variable>.s32Btl1Dt2DEnable,
	str	r9, [sp, #24]	@ <variable>.s32BtlDbdrEnable,
	str	r7, [sp, #16]	@ tmp203,
	blx	ip	@ D.38732
	subs	lr, r0, #0	@ ret,
	bne	.L239	@,
	ldr	r0, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r5, #0]	@ MemArrange.TotalMemUsed, <variable>.VdhDetailMem
	ldr	ip, [r6, #32]	@ temp.1443, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	cmp	ip, #0	@ temp.1443,
	beq	.L241	@,
	ldr	r6, [r4, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	mov	r0, #1024	@,
	ldr	r8, [r4, #64]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	mvn	r1, #-2147483648	@,
	str	sl, [sp, #0]	@ PmvNum,
	mov	r2, #720	@,
	str	lr, [sp, #12]	@ ret,
	mov	r3, #576	@,
	str	r7, [sp, #16]	@ tmp203,
	str	r6, [sp, #20]	@ <variable>.s32Btl1Dt2DEnable,
	str	r8, [sp, #24]	@ <variable>.s32BtlDbdrEnable,
	str	lr, [sp, #4]	@ ret,
	str	lr, [sp, #8]	@ ret,
	blx	ip	@ temp.1443
	cmp	r0, #0	@ ret.1446
	bne	.L241	@,
	ldr	r3, [fp, #-660]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [r5, #0]	@ <variable>.VdhDetailMem, <variable>.VdhDetailMem
	add	r1, r2, r3	@ tmp217, <variable>.VdhDetailMem, MemArrange.TotalMemUsed
	add	lr, r1, #47104	@ tmp220, tmp217,
	add	ip, lr, #16	@ tmp220, tmp220,
	str	ip, [r5, #0]	@ tmp220, <variable>.VdhDetailMem
	ldr	r2, [r4, #48]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	r3, r2, #32768	@ tmp223, <variable>.s32SCDBufSize,
	str	r3, [r5, #4]	@ tmp223, <variable>.ScdDetailMem
	ldr	r3, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L242	@,
	movw	ip, #:lower16:11253104	@ tmp225,
	mov	r0, r3	@ D.38680, <variable>.s32SupportH264
	movt	ip, #:upper16:11253104	@ tmp225,
	str	ip, [r5, #8]	@ tmp225, <variable>.ChanCtxDetailMem
	b	.L228	@
.L232:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L244:
	mov	r3, r1	@, extra_ref.582
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.38672,
	str	r6, [sp, #4]	@ extra_disp.583,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L246:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L247:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L242:
	ldr	r1, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	movw	lr, #:lower16:11253104	@ tmp233,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movt	lr, #:upper16:11253104	@ tmp233,
	ldr	r2, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	movw	r4, #3992	@ tmp231,
	mul	ip, r4, r1	@ tmp229, tmp231, <variable>.s32MaxSpsNum
	movw	r4, #4060	@ tmp228,
	mla	r1, r4, r3, ip	@ tmp232, tmp228, <variable>.s32MaxSliceNum, tmp229
	add	r3, r1, lr	@ tmp233, tmp232, tmp233
	mov	r1, #2208	@ tmp237,
	mla	lr, r1, r2, r3	@ tmp238, tmp237, <variable>.s32MaxPpsNum, tmp233
	str	lr, [r5, #8]	@ tmp238, <variable>.ChanCtxDetailMem
	b	.L228	@
.L248:
	ldr	r2, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r2, #0	@ <variable>.s32MaxSliceNum,
	ble	.L235	@,
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	ip, #0	@ <variable>.s32MaxSpsNum,
	ble	.L235	@,
	ldr	lr, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	lr, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L236	@,
.L235:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L241:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #4936	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
.L239:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #4906	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38680,
	b	.L228	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithTreeFs, .-VCTRL_GetChanMemSizeWithTreeFs
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1416:
	@ args = 0, pretend = 0, frame = 624
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
	beq	.L270	@,
	cmp	r3, #2	@ flag,
	beq	.L253	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp158,
	movt	r3, #:upper16:.LANCHOR0	@ tmp158,
	ldr	ip, [r1, #52]	@ D.38795, <variable>.s32DisplayFrameNum
	ldr	sl, [r3, #20]	@ extra_disp.587, extra_disp
	ldr	r2, [r1, #28]	@ D.38793, <variable>.s32MaxRefFrameNum
	ldr	r3, [r3, #16]	@ extra_ref.586, extra_ref
	add	r6, sl, ip	@ TempDispNum, extra_disp.587, D.38795
	add	r1, r3, r2	@ TempRefNum, extra_ref.586, D.38793
	orrs	r0, r6, r1	@, TempDispNum, TempRefNum
	bmi	.L271	@,
	cmp	r1, #16	@ TempRefNum,
	strle	r1, [r4, #28]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	strle	r6, [r4, #52]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bgt	.L272	@,
.L256:
	rsbs	r7, r7, #1	@ tmp178, flag
	movcc	r7, #0	@ tmp178
	cmp	r8, #25	@ eCapLevel,
	moveq	r7, #0	@, tmp178,
	cmp	r7, #0	@ tmp178,
	bne	.L273	@,
.L253:
	ldr	r3, [r4, #0]	@ D.38813, <variable>.Purpose
	cmp	r3, #2	@ D.38813,
	bhi	.L274	@,
	bne	.L258	@,
	ldr	r3, [r4, #56]	@ D.38821, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38821,
	beq	.L259	@,
	ldr	r2, [r4, #60]	@ D.38823, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.38823,
	beq	.L259	@,
	mul	r2, r2, r3	@ tmp182, D.38823, D.38821
	ldr	r1, [r4, #52]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r0, #0	@ tmp187,
	movw	r3, #:lower16:11253104	@ tmp188,
	str	r0, [r5, #4]	@ tmp187, <variable>.ScdDetailMem
	movt	r3, #:upper16:11253104	@ tmp188,
	str	r3, [r5, #8]	@ tmp188, <variable>.ChanCtxDetailMem
	mov	ip, r2, asl #1	@ tmp183, tmp182,
	mla	r2, r1, ip, ip	@ tmp186, <variable>.s32DisplayFrameNum, tmp183, tmp183
	str	r2, [r5, #0]	@ tmp186, <variable>.VdhDetailMem
.L252:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L272:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #16	@ tmp171,
	str	r6, [r4, #52]	@ TempDispNum, <variable>.s32DisplayFrameNum
	str	r0, [r4, #28]	@ tmp171, <variable>.s32MaxRefFrameNum
	b	.L256	@
.L270:
	bl	VCTRL_GetChanMemSizeWithTreeFs	@
	cmp	r0, #0	@ D.38786
	beq	.L252	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #4960	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L258:
	cmp	r3, #1	@ D.38813,
	mvnne	r0, #0	@ D.38790,
	bne	.L252	@
.L261:
	ldr	r0, [r4, #28]	@ temp.1478, <variable>.s32MaxRefFrameNum
	cmp	r0, #0	@ temp.1478,
	blt	.L262	@,
	ldr	r2, [r4, #8]	@ D.38834, <variable>.s32MaxWidth
	cmp	r2, #31	@ D.38834,
	ble	.L262	@,
	ldr	r3, [r4, #12]	@ D.38836, <variable>.s32MaxHeight
	cmp	r3, #31	@ D.38836,
	ble	.L262	@,
	ldr	lr, [r4, #48]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L262	@,
	ldr	ip, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	ip, #1	@ <variable>.s32SupportH264,
	beq	.L275	@,
.L263:
	ldr	r1, [r4, #36]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r1, #0	@ <variable>.s32SupportBFrame,
	moveq	r6, #1	@ PmvNum,
	beq	.L265	@,
	add	r6, r0, #1	@ PmvNum.1479, temp.1478,
	cmp	r6, #17	@ PmvNum.1479,
	movge	r6, #17	@ PmvNum,
.L265:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp197,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp197,
	ldr	ip, [lr, #32]	@ D.38854, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	cmp	ip, #0	@ D.38854,
	beq	.L266	@,
	ldr	r1, [r4, #52]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	ldr	lr, [r4, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	ldr	r7, [r4, #64]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	str	r6, [sp, #0]	@ PmvNum,
	mov	r6, #0	@ tmp199,
	str	r0, [sp, #4]	@ temp.1478,
	mov	r0, #1	@,
	str	r1, [sp, #8]	@ <variable>.s32DisplayFrameNum,
	mvn	r1, #-2147483648	@,
	str	r6, [sp, #12]	@ tmp199,
	sub	r6, fp, #656	@ tmp201,,
	str	lr, [sp, #20]	@ <variable>.s32Btl1Dt2DEnable,
	str	r6, [sp, #16]	@ tmp201,
	str	r7, [sp, #24]	@ <variable>.s32BtlDbdrEnable,
	blx	ip	@ D.38854
	cmp	r0, #0	@ ret
	bne	.L266	@,
	ldr	r2, [fp, #-652]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, r2, #47104	@ tmp205, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp205, tmp205,
	str	ip, [r5, #0]	@ tmp205, <variable>.VdhDetailMem
	ldr	r3, [r4, #48]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	r2, r3, #32768	@ tmp208, <variable>.s32SCDBufSize,
	str	r2, [r5, #4]	@ tmp208, <variable>.ScdDetailMem
	ldr	r3, [r4, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L267	@,
	mov	r0, r3	@ D.38790, <variable>.s32SupportH264
	movw	r3, #:lower16:11253104	@ tmp210,
	movt	r3, #:upper16:11253104	@ tmp210,
	str	r3, [r5, #8]	@ tmp210, <variable>.ChanCtxDetailMem
	b	.L252	@
.L259:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L273:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L274:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L267:
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	movw	r3, #:lower16:11253104	@ tmp218,
	ldr	r1, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movt	r3, #:upper16:11253104	@ tmp218,
	ldr	r2, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	movw	r4, #3992	@ tmp216,
	mul	ip, r4, ip	@ tmp214, tmp216, <variable>.s32MaxSpsNum
	movw	r4, #4060	@ tmp213,
	mla	r1, r4, r1, ip	@ tmp217, tmp213, <variable>.s32MaxSliceNum, tmp214
	add	r3, r1, r3	@ tmp218, tmp217, tmp218
	mov	r1, #2208	@ tmp222,
	mla	ip, r1, r2, r3	@ tmp223, tmp222, <variable>.s32MaxPpsNum, tmp218
	str	ip, [r5, #8]	@ tmp223, <variable>.ChanCtxDetailMem
	b	.L252	@
.L271:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.38795,
	str	sl, [sp, #4]	@ extra_disp.587,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L275:
	ldr	r1, [r4, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L262	@,
	ldr	lr, [r4, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	lr, #0	@ <variable>.s32MaxSpsNum,
	ble	.L262	@,
	ldr	ip, [r4, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L263	@,
.L262:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
.L266:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #5110	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38790,
	b	.L252	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L282	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [ip, r0, asl #2]	@ D.38341, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L283	@,
	cmp	r1, #0	@ pArgs,
	beq	.L284	@,
	ldr	r1, [r1, #0]	@ tmp147,* pArgs
	movw	r3, #:lower16:11199432	@ tmp146,
	movt	r3, #:upper16:11199432	@ tmp146,
	mov	r0, #0	@ D.38339,
	str	r1, [r2, r3]	@ tmp147, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp, {fp, sp, pc}	@
.L282:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4243	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38339,
	ldmfd	sp, {fp, sp, pc}	@
.L283:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4244	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38339,
	ldmfd	sp, {fp, sp, pc}	@
.L284:
	mov	r0, r1	@, pArgs
	movw	r2, #4245	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38339,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
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
	cmp	r0, #1	@ ChanId,
	bhi	.L291	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.38141, s_pstVfmwChan
	cmp	r0, #0	@ D.38141,
	beq	.L292	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L293	@,
.L289:
	mvn	r0, #0	@ D.38139,
	ldmfd	sp, {fp, sp, pc}	@
.L292:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3913	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38139,
	ldmfd	sp, {fp, sp, pc}	@
.L291:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3912	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38139,
	ldmfd	sp, {fp, sp, pc}	@
.L293:
	ldr	r2, [r0, #152]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L289	@,
	add	r2, r0, #156
	ldmia	r2, {r2, r3, ip}	@ phole ldm
	cmp	r3, #0	@ D.38153,
	stmib	r1, {r3, ip}	@ phole stm
	movne	r0, #0	@ D.38139,
	str	r2, [r1, #0]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L289	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
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
	cmp	r0, #1	@ ChanId,
	bls	.L300	@,
.L295:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #3732	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38042,
	ldmfd	sp, {fp, sp, pc}	@
.L300:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.38040, s_pstVfmwChan
	cmp	r3, #0	@ D.38040,
	beq	.L295	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L298	@,
	mov	r3, r0	@, ChanId
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC27	@,
	movw	r2, #3739	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38042,
	ldmfd	sp, {fp, sp, pc}	@
.L298:
	ldr	r0, [r3, #896]	@ D.38042, <variable>.eVidStd
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1388:
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
	movw	r2, #:lower16:11199464	@ tmp144,
	ldr	r0, [ip, r0, asl #2]	@ D.37503, s_pstVfmwChan
	movt	r2, #:upper16:11199464	@ tmp144,
	ldr	ip, [r4, #0]	@ g_chipID.476, g_chipID
	movw	r3, #:lower16:11199468	@ tmp145,
	movt	r3, #:upper16:11199468	@ tmp145,
	ldr	r4, [r0, r2]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldr	r3, [r0, r3]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	cmp	ip, #10	@ g_chipID.476,
	ldrls	pc, [pc, ip, asl #2]	@ g_chipID.476
	b	.L302	@
.L305:
	.word	.L303
	.word	.L303
	.word	.L303
	.word	.L303
	.word	.L303
	.word	.L304
	.word	.L304
	.word	.L304
	.word	.L304
	.word	.L304
	.word	.L304
.L304:
	movw	r0, #:lower16:g_ChipMaxWidth	@ tmp153,
	movt	r0, #:upper16:g_ChipMaxWidth	@ tmp153,
	ldr	r2, [r0, #0]	@ g_ChipMaxWidth.1581, g_ChipMaxWidth
	cmp	r4, r2	@ ChanMaxWidth, g_ChipMaxWidth.1581
	ble	.L311	@,
	ldr	r3, [r1, #0]	@ D.37517, <variable>.eVidStd
	cmp	r3, #13	@ D.37517,
	cmpne	r3, #0	@, D.37517,
	beq	.L307	@,
.L315:
	cmp	r3, #15	@ D.37517,
	beq	.L307	@,
	cmp	r3, #18	@ D.37517,
	bne	.L312	@,
.L307:
	mov	r0, #0	@ ret,
	b	.L308	@
.L303:
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp147,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp147,
	ldr	r0, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r4, r0	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L313	@,
	ldr	r3, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L307	@,
.L314:
	mov	r2, ip	@, g_chipID.476
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L308	@
.L302:
	mov	r2, ip	@, g_chipID.476
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L308:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L313:
	movw	r2, #:lower16:g_ChipMaxHeight	@ tmp149,
	movt	r2, #:upper16:g_ChipMaxHeight	@ tmp149,
	ldr	r0, [r2, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r3, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L307	@,
	ldr	r3, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L307	@,
	b	.L314	@
.L311:
	movw	r0, #:lower16:g_ChipMaxHeight	@ tmp154,
	movt	r0, #:upper16:g_ChipMaxHeight	@ tmp154,
	ldr	r0, [r0, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r3, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L307	@,
	ldr	r3, [r1, #0]	@ D.37517, <variable>.eVidStd
	cmp	r3, #13	@ D.37517,
	cmpne	r3, #0	@, D.37517,
	bne	.L315	@,
	b	.L307	@
.L312:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp164,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp164,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	str	ip, [sp, #0]	@ g_chipID.476,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L308	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1386:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp189,
	movt	r4, #:upper16:.LANCHOR0	@ tmp189,
	movw	r6, #:lower16:11199584	@ tmp146,
	movt	r6, #:upper16:11199584	@ tmp146,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r2, [r4, r0, asl #2]	@ D.37377, s_pstVfmwChan
	ldr	ip, [r2, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r2, r6]	@ eOldDecCore, <variable>.eDecCore
	sub	r3, ip, #4	@ tmp148, <variable>.eVidStd,
	cmp	r3, #10	@ tmp148,
	ldrls	pc, [pc, r3, asl #2]	@ tmp148
	b	.L317	@
.L323:
	.word	.L318
	.word	.L317
	.word	.L317
	.word	.L317
	.word	.L317
	.word	.L317
	.word	.L319
	.word	.L320
	.word	.L321
	.word	.L317
	.word	.L322
.L317:
	movw	r3, #:lower16:11199584	@ tmp174,
	movt	r3, #:upper16:11199584	@ tmp174,
	mov	r6, #0	@ tmp175,
	str	r6, [r2, r3]	@ tmp175, <variable>.eDecCore
.L324:
	ldr	ip, [r4, r5, asl #2]	@ prephitmp.1600, s_pstVfmwChan
	movw	r6, #:lower16:11199584	@ tmp177,
	movt	r6, #:upper16:11199584	@ tmp177,
	movw	r7, #:lower16:.LANCHOR0	@ tmp176,
	movt	r7, #:upper16:.LANCHOR0	@ tmp176,
	ldr	r2, [ip, r6]	@ prephitmp.1602, <variable>.eDecCore
	cmp	r2, r0	@ prephitmp.1602, eOldDecCore
	beq	.L328	@,
	sub	r0, r0, #1	@ tmp178, eOldDecCore,
	cmp	r0, #4	@ tmp178,
	bhi	.L329	@,
	ldr	r3, [r7, #28]	@ D.37397, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37397,
	beq	.L329	@,
	add	r0, ip, #912	@, prephitmp.1600,
	str	r1, [fp, #-32]	@,
	blx	r3	@ D.37397
	ldr	ip, [r7, r5, asl #2]	@ prephitmp.1600, s_pstVfmwChan
	ldr	r1, [fp, #-32]	@,
	ldr	r2, [ip, r6]	@ prephitmp.1602, <variable>.eDecCore
.L329:
	sub	r2, r2, #1	@ tmp183, prephitmp.1602,
	cmp	r2, #4	@ tmp183,
	bhi	.L328	@,
	ldr	r3, [r4, #24]	@ D.37408, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.37408,
	beq	.L330	@,
	ldr	r2, [ip, #896]	@, <variable>.eVidStd
	add	r0, ip, #912	@, prephitmp.1600,
	blx	r3	@ D.37408
	cmp	r0, #0	@,
	bne	.L330	@,
.L328:
	mov	r0, #0	@ D.37412,
.L331:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L322:
	movw	r6, #:lower16:11199584	@ tmp151,
	movt	r6, #:upper16:11199584	@ tmp151,
	mov	ip, #2	@ tmp152,
	str	ip, [r2, r6]	@ tmp152, <variable>.eDecCore
	b	.L324	@
.L318:
	movw	r7, #:lower16:11199584	@ tmp149,
	movt	r7, #:upper16:11199584	@ tmp149,
	mov	r3, #1	@ tmp150,
	str	r3, [r2, r7]	@ tmp150, <variable>.eDecCore
	b	.L324	@
.L319:
	ldr	r7, [r4, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r7, #1	@ g_VdmCharacter,
	bne	.L317	@,
	movw	r3, #:lower16:11199584	@ tmp156,
	movt	r3, #:upper16:11199584	@ tmp156,
	mov	r6, #3	@ tmp157,
	str	r6, [r2, r3]	@ tmp157, <variable>.eDecCore
	b	.L324	@
.L320:
	ldr	ip, [r4, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	bne	.L317	@,
	movw	r7, #:lower16:11199584	@ tmp163,
	movt	r7, #:upper16:11199584	@ tmp163,
	mov	r3, #4	@ tmp164,
	str	r3, [r2, r7]	@ tmp164, <variable>.eDecCore
	b	.L324	@
.L321:
	ldr	r6, [r4, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	bne	.L317	@,
	movw	r7, #:lower16:11199584	@ tmp170,
	movt	r7, #:upper16:11199584	@ tmp170,
	mov	ip, #5	@ tmp171,
	str	ip, [r2, r7]	@ tmp171, <variable>.eDecCore
	b	.L324	@
.L330:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37412,
	b	.L331	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_SetMoreGapEnable
	.type	VCTRL_SetMoreGapEnable, %function
VCTRL_SetMoreGapEnable:
	.fnstart
.LFB1362:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L340	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36523, s_pstVfmwChan
	cmp	r3, #0	@ D.36523,
	beq	.L341	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L342	@,
	cmp	r1, #1	@ MoreGapEnable,
	movw	ip, #:lower16:11199428	@ tmp146,
	movt	ip, #:upper16:11199428	@ tmp146,
	movhi	r1, #0	@ tmp148,
	movls	r0, #0	@ D.36521,
	strls	r1, [r3, ip]	@ MoreGapEnable, <variable>.stSynExtraData.s32MoreGapEnable
	mvnhi	r0, #0	@ D.36521,
	strhi	r1, [r3, ip]	@ tmp148, <variable>.stSynExtraData.s32MoreGapEnable
	ldmfd	sp, {fp, sp, pc}	@
.L340:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #837	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36521,
	ldmfd	sp, {fp, sp, pc}	@
.L342:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #839	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36521,
	ldmfd	sp, {fp, sp, pc}	@
.L341:
	mov	r0, r3	@, D.36523
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #838	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36521,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetMoreGapEnable, .-VCTRL_SetMoreGapEnable
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1349:
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
	beq	.L353	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L354	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L355	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L356	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L357	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L358	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L359	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L360	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.36278,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L345:
	mov	r0, r5	@, D.36278
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L353:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC34	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L358:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC39	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L357:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC38	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L356:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC37	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L355:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC36	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L354:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC35	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L359:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC33	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC33	@,
	movt	r2, #:upper16:.LC40	@,
	mvn	r5, #0	@ D.36278,
	bl	dprint_vfmw	@
	b	.L345	@
.L361:
	.align	2
.L360:
	.word	.LANCHOR0+24
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	vfmw_proc_exit
	.type	vfmw_proc_exit, %function
vfmw_proc_exit:
	.fnstart
.LFB1457:
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
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC41	@,
	movt	r0, #:upper16:.LC41	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC42	@,
	movt	r0, #:upper16:.LC42	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC43	@,
	movt	r0, #:upper16:.LC43	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC44	@,
	movt	r0, #:upper16:.LC44	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC45	@,
	movt	r0, #:upper16:.LC45	@,
	bl	remove_proc_entry	@
	mov	r1, #0	@,
	movw	r0, #:lower16:.LC46	@,
	movt	r0, #:upper16:.LC46	@,
	bl	remove_proc_entry	@
	movw	r0, #:lower16:.LC47	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC47	@,
	bl	remove_proc_entry	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	vfmw_proc_exit, .-vfmw_proc_exit
	.align	2
	.global	vfmw_proc_init
	.type	vfmw_proc_init, %function
vfmw_proc_init:
	.fnstart
.LFB1456:
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
	movw	r0, #:lower16:.LC41	@,
	mov	r1, #420	@,
	movt	r0, #:upper16:.LC41	@,
	mov	r2, #0	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p
	bne	.L368	@,
.L365:
	mvn	r0, #0	@ D.41113,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L368:
	movw	r3, #:lower16:vfmw_read_proc	@ tmp143,
	movw	r4, #:lower16:vfmw_write_proc	@ tmp144,
	movt	r3, #:upper16:vfmw_read_proc	@ tmp143,
	movt	r4, #:upper16:vfmw_write_proc	@ tmp144,
	str	r3, [r0, #48]	@ tmp143, <variable>.read_proc
	mov	r1, #420	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	mov	r2, #0	@,
	movw	r0, #:lower16:.LC42	@,
	movt	r0, #:upper16:.LC42	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1746
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	r1, #:lower16:vfmw_read_proc_dbg	@ tmp146,
	mov	r2, #0	@,
	movt	r1, #:upper16:vfmw_read_proc_dbg	@ tmp146,
	str	r1, [r0, #48]	@ tmp146, <variable>.read_proc
	movw	r0, #:lower16:.LC43	@,
	mov	r1, #420	@,
	movt	r0, #:upper16:.LC43	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1747
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	r2, #:lower16:vfmw_read_proc_prn	@ tmp149,
	mov	r1, #420	@,
	movt	r2, #:upper16:vfmw_read_proc_prn	@ tmp149,
	str	r2, [r0, #48]	@ tmp149, <variable>.read_proc
	movw	r0, #:lower16:.LC46	@,
	mov	r2, #0	@,
	movt	r0, #:upper16:.LC46	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1748
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	ip, #:lower16:vfmw_read_proc_scd	@ tmp152,
	mov	r1, #420	@,
	movt	ip, #:upper16:vfmw_read_proc_scd	@ tmp152,
	mov	r2, #0	@,
	str	ip, [r0, #48]	@ tmp152, <variable>.read_proc
	movw	r0, #:lower16:.LC45	@,
	movt	r0, #:upper16:.LC45	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1749
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	lr, #:lower16:vfmw_read_proc_dec	@ tmp155,
	mov	r1, #420	@,
	movt	lr, #:upper16:vfmw_read_proc_dec	@ tmp155,
	mov	r2, #0	@,
	str	lr, [r0, #48]	@ tmp155, <variable>.read_proc
	movw	r0, #:lower16:.LC44	@,
	movt	r0, #:upper16:.LC44	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1750
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	r3, #:lower16:vfmw_read_proc_btl	@ tmp158,
	mov	r1, #420	@,
	movt	r3, #:upper16:vfmw_read_proc_btl	@ tmp158,
	mov	r2, #0	@,
	str	r3, [r0, #48]	@ tmp158, <variable>.read_proc
	movw	r0, #:lower16:.LC47	@,
	movt	r0, #:upper16:.LC47	@,
	bl	create_proc_entry	@
	cmp	r0, #0	@ p.1751
	beq	.L365	@,
	str	r4, [r0, #52]	@ tmp144, <variable>.write_proc
	movw	r1, #:lower16:vfmw_read_proc_chn	@ tmp161,
	movt	r1, #:upper16:vfmw_read_proc_chn	@ tmp161,
	str	r1, [r0, #48]	@ tmp161, <variable>.read_proc
	mov	r0, #0	@ D.41113,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	vfmw_proc_init, .-vfmw_proc_init
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1353:
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
	mov	r1, #24	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #12]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #8]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	vfmw_read_proc_btl
	.type	vfmw_read_proc_btl, %function
vfmw_read_proc_btl:
	.fnstart
.LFB1453:
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
	movw	r2, #:lower16:.LC48	@,
	str	r1, [fp, #-52]	@ start, %sfp
	movt	r2, #:upper16:.LC48	@,
	mov	r1, r3	@, count
	mov	r7, r3	@ count, count
	mov	r8, r0	@ page, page
	bl	snprintf	@
	movw	r4, #:lower16:s_BtlCtrl	@ tmp225,
	movt	r4, #:upper16:s_BtlCtrl	@ tmp225,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC50	@,
	ldr	r5, [r4, #20]	@ s_BtlCtrl.BTLState, s_BtlCtrl.BTLState
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC50	@,
	str	r5, [sp, #0]	@ s_BtlCtrl.BTLState,
	movw	r5, #:lower16:.LANCHOR0	@ tmp245,
	movt	r5, #:upper16:.LANCHOR0	@ tmp245,
	rsb	r1, r0, r7	@, D.40875, count
	mov	r6, r0	@ D.40875,
	add	r0, r8, r0	@, page, D.40875
	bl	snprintf	@
	ldr	r9, [r4, #16]	@ s_BtlCtrl.ThisInstID, s_BtlCtrl.ThisInstID
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC51	@,
	str	r9, [sp, #0]	@ s_BtlCtrl.ThisInstID,
	movw	r9, #:lower16:s_BtlChan	@ tmp474,
	movt	r9, #:upper16:s_BtlChan	@ tmp474,
	add	r6, r0, r6	@ len.1819,, D.40875
	rsb	r1, r6, r7	@, len.1819, count
	add	r0, r8, r6	@, page, len.1819
	bl	snprintf	@
	ldr	r1, [r4, #12]	@ s_BtlCtrl.s32ThisChanIDPlus1, s_BtlCtrl.s32ThisChanIDPlus1
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC52	@,
	str	r1, [sp, #0]	@ s_BtlCtrl.s32ThisChanIDPlus1,
	add	r6, r6, r0	@ len.1824, len.1819,
	rsb	r1, r6, r7	@, len.1824, count
	add	r0, r8, r6	@, page, len.1824
	bl	snprintf	@
	ldr	ip, [r4, #24]	@ s_BtlCtrl.LastProcessTime, s_BtlCtrl.LastProcessTime
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC53	@,
	str	ip, [sp, #0]	@ s_BtlCtrl.LastProcessTime,
	add	r4, r6, r0	@ len.1829, len.1824,
	rsb	r1, r4, r7	@, len.1829, count
	add	r0, r8, r4	@, page, len.1829
	bl	snprintf	@
	ldr	ip, [r5, #96]	@ D.40884, <variable>.u32BaBtlLoad
	movw	r1, #:lower16:-858993459	@ tmp252,
	movt	r1, #:upper16:-858993459	@ tmp252,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	umull	r3, r6, r1, ip	@, tmp251, tmp252, D.40884
	movw	r3, #:lower16:.LC55	@,
	movt	r3, #:upper16:.LC55	@,
	mov	r1, r6, lsr #3	@ tmp250, tmp251,
	str	r1, [sp, #0]	@ tmp250,
	add	r6, r1, r1, asl #2	@, tmp258, tmp250, tmp250,
	sub	r1, ip, r6, asl #1	@ tmp260, D.40884, tmp258,
	str	r1, [sp, #4]	@ tmp260,
	movw	r6, #18120	@ tmp265,
	add	r4, r4, r0	@ len.1834, len.1829,
	add	r0, r8, r4	@, page, len.1834
	rsb	r1, r4, r7	@, len.1834, count
	bl	snprintf	@
	ldr	r5, [r5, #116]	@, g_CurProcChan
	mul	r6, r6, r5	@ tmp264, tmp265,
	str	r5, [fp, #-48]	@, %sfp
	add	r5, r6, r9	@ tmp266, tmp264, tmp474
	ldr	r3, [r5, #24]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r3, #0	@ <variable>.InstMode,
	add	r4, r4, r0	@ len, len.1834,
	bne	.L380	@,
.L372:
	mov	r0, r4	@, len
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L380:
	rsb	r1, r4, r7	@, len, count
	ldr	r3, [fp, #-48]	@, %sfp
	add	r0, r8, r4	@, page, len
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	add	sl, r5, #488	@ tmp330, tmp266,
	bl	snprintf	@
	ldr	r1, [r5, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC57	@,
	str	r1, [sp, #0]	@ <variable>.s32IsOpen,
	add	r4, r0, r4	@ len.1844,, len
	rsb	r1, r4, r7	@, len.1844, count
	add	r0, r8, r4	@, page, len.1844
	bl	snprintf	@
	ldr	ip, [r5, #4]	@ <variable>.u32Is1D, <variable>.u32Is1D
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC58	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC58	@,
	str	ip, [sp, #0]	@ <variable>.u32Is1D,
	add	r4, r4, r0	@ len.1849, len.1844,
	rsb	r1, r4, r7	@, len.1849, count
	add	r0, r8, r4	@, page, len.1849
	bl	snprintf	@
	ldr	r2, [fp, #-48]	@, %sfp
	movw	r3, #2265	@ tmp298,
	mul	r1, r3, r2	@ tmp297, tmp298,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC59	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC59	@,
	add	ip, r1, #1	@ tmp299, tmp297,
	ldr	r1, [r9, ip, asl #3]	@ <variable>.u32IsCompress, <variable>.u32IsCompress
	str	r1, [sp, #0]	@ <variable>.u32IsCompress,
	add	r4, r4, r0	@ len.1854, len.1849,
	rsb	r1, r4, r7	@, len.1854, count
	add	r0, r8, r4	@, page, len.1854
	bl	snprintf	@
	ldr	ip, [r6, r9]	@ <variable>.u32DNROpen, <variable>.u32DNROpen
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC60	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC60	@,
	str	ip, [sp, #0]	@ <variable>.u32DNROpen,
	add	r4, r4, r0	@ len.1859, len.1854,
	rsb	r1, r4, r7	@, len.1859, count
	add	r0, r8, r4	@, page, len.1859
	bl	snprintf	@
	ldr	r1, [r5, #24]	@ <variable>.InstMode, <variable>.InstMode
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC61	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC61	@,
	str	r1, [sp, #0]	@ <variable>.InstMode,
	add	r4, r4, r0	@ len.1864, len.1859,
	rsb	r1, r4, r7	@, len.1864, count
	add	r0, r8, r4	@, page, len.1864
	bl	snprintf	@
	ldr	ip, [r5, #488]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC62	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC62	@,
	str	ip, [sp, #0]	@ <variable>.s321DFrameIsProc,
	add	r4, r4, r0	@ len.1870, len.1864,
	rsb	r1, r4, r7	@, len.1870, count
	add	r0, r8, r4	@, page, len.1870
	bl	snprintf	@
	ldr	r1, [r5, #408]	@ <variable>.Cur1DImage.BTLInfo.u32IsCompress, <variable>.Cur1DImage.BTLInfo.u32IsCompress
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC63	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC63	@,
	str	r1, [sp, #0]	@ <variable>.Cur1DImage.BTLInfo.u32IsCompress,
	add	r4, r4, r0	@ len.1875, len.1870,
	rsb	r1, r4, r7	@, len.1875, count
	add	r0, r8, r4	@, page, len.1875
	bl	snprintf	@
	ldr	ip, [sl, #4]	@ <variable>.s32OldImgWidth, <variable>.s32OldImgWidth
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC64	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC64	@,
	str	ip, [sp, #0]	@ <variable>.s32OldImgWidth,
	add	r4, r4, r0	@ len.1880, len.1875,
	rsb	r1, r4, r7	@, len.1880, count
	add	r0, r8, r4	@, page, len.1880
	bl	snprintf	@
	ldr	r1, [r5, #496]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC65	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC65	@,
	str	r1, [sp, #0]	@ <variable>.s32OldImgHeight,
	add	r4, r4, r0	@ len.1885, len.1880,
	rsb	r1, r4, r7	@, len.1885, count
	add	r0, r8, r4	@, page, len.1885
	bl	snprintf	@
	ldr	ip, [r5, #180]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC66	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC66	@,
	str	ip, [sp, #0]	@ <variable>.Cur1DImage.image_width,
	add	r4, r4, r0	@ len.1890, len.1885,
	rsb	r1, r4, r7	@, len.1890, count
	add	r0, r8, r4	@, page, len.1890
	bl	snprintf	@
	ldr	r1, [r5, #184]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC67	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC67	@,
	str	r1, [sp, #0]	@ <variable>.Cur1DImage.image_height,
	add	r4, r4, r0	@ len.1895, len.1890,
	rsb	r1, r4, r7	@, len.1895, count
	add	r0, r8, r4	@, page, len.1895
	bl	snprintf	@
	ldr	ip, [r5, #504]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC68	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC68	@,
	str	ip, [sp, #0]	@ <variable>.s32ValidImgNum,
	add	r4, r4, r0	@ len.1900, len.1895,
	add	r0, r8, r4	@, page, len.1900
	rsb	r1, r4, r7	@, len.1900, count
	bl	snprintf	@
	ldr	r2, [r5, #504]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r2, #0	@ <variable>.s32ValidImgNum,
	add	r4, r4, r0	@ len.1839, len.1900,
	ble	.L373	@,
	add	sl, r5, #504	@ tmp486, ivtmp.1817,
	mov	r6, #0	@ j,
.L374:
	ldr	r3, [r5, #1236]	@, <variable>.luma_2d_phy_addr
	add	r0, r8, r4	@, page, len.1839
	rsb	r1, r4, r7	@, len.1839, count
	movw	r2, #:lower16:.LC69	@,
	movt	r2, #:upper16:.LC69	@,
	add	r6, r6, #1	@ j, j,
	bl	snprintf	@
	ldr	r3, [sl, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r5, r5, #424	@ ivtmp.1817, ivtmp.1817,
	cmp	r3, r6	@ <variable>.s32ValidImgNum, j
	add	r4, r4, r0	@ len.1839, len.1839,
	bgt	.L374	@,
.L373:
	add	r0, r8, r4	@, page, len.1839
	rsb	r1, r4, r7	@, len.1839, count
	movw	r2, #:lower16:.LC70	@,
	movt	r2, #:upper16:.LC70	@,
	bl	snprintf	@
	ldr	ip, [fp, #-48]	@, %sfp
	movw	r5, #18120	@ tmp425,
	mla	r5, r5, ip, r9	@ tmp426, tmp425,, tmp474
	ldr	r2, [r5, #504]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r2, #0	@ <variable>.s32ValidImgNum,
	add	r4, r0, r4	@ len.1914,, len.1839
	ble	.L375	@,
	add	sl, r5, #504	@ tmp481, ivtmp.1812,
	mov	r6, #0	@ j.1920,
.L376:
	rsb	r1, r4, r7	@, len.1914, count
	add	r0, r8, r4	@, page, len.1914
	ldr	r3, [r5, #600]	@, <variable>.LogicInfoIsUsed
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	add	r6, r6, #1	@ j.1920, j.1920,
	bl	snprintf	@
	ldr	r1, [sl, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r5, r5, #4	@ ivtmp.1812, ivtmp.1812,
	cmp	r1, r6	@ <variable>.s32ValidImgNum, j.1920
	add	r4, r4, r0	@ len.1914, len.1914,
	bgt	.L376	@,
.L375:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r5, #18120	@ tmp450,
	rsb	r1, r4, r7	@, len.1914, count
	movw	r2, #:lower16:.LC72	@,
	movw	r3, #:lower16:.LC73	@,
	movt	r2, #:upper16:.LC72	@,
	mla	r9, r5, r0, r9	@ tmp451, tmp450,, tmp474
	movt	r3, #:upper16:.LC73	@,
	add	r0, r8, r4	@, page, len.1914
	mov	ip, r9	@ tmp466, tmp451
	ldr	lr, [r9, #1108]	@ <variable>.LogicImageQue.history, <variable>.LogicImageQue.history
	ldr	r5, [ip, #1112]!	@ <variable>.LogicImageQue.head, <variable>.LogicImageQue.head
	str	lr, [sp, #0]	@ <variable>.LogicImageQue.history,
	ldr	lr, [ip, #4]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	stmib	sp, {r5, lr}	@ phole stm
	bl	snprintf	@
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	add	r4, r4, r0	@ len.1925, len.1914,
	rsb	r1, r4, r7	@, len.1925, count
	add	r0, r8, r4	@, page, len.1925
	bl	snprintf	@
	ldr	ip, [fp, #-52]	@, %sfp
	mov	r1, #0	@ tmp471,
	mov	r2, #1	@ tmp472,
	str	r1, [ip, #0]	@ tmp471,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp472,* eof
	add	r4, r4, r0	@ len, len.1925,
	b	.L372	@
	.fnend
	.size	vfmw_read_proc_btl, .-vfmw_read_proc_btl
	.align	2
	.global	vfmw_read_proc_chn
	.type	vfmw_read_proc_chn, %function
vfmw_read_proc_chn:
	.fnstart
.LFB1451:
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
	movw	r2, #:lower16:.LC75	@,
	mov	sl, r1	@ start, start
	movt	r2, #:upper16:.LC75	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r2, #:lower16:.LC76	@,
	movt	r2, #:upper16:.LC76	@,
	movw	r7, #:lower16:g_ChanCtx	@ tmp179,
	movt	r7, #:upper16:g_ChanCtx	@ tmp179,
	movw	r8, #:lower16:.LANCHOR0	@ tmp246,
	movt	r8, #:upper16:.LANCHOR0	@ tmp246,
	rsb	r1, r0, r4	@, D.40548, count
	mov	r6, r0	@ D.40548,
	add	r0, r5, r0	@, page, D.40548
	bl	snprintf	@
	ldr	r1, [r7, #16]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	sub	r3, r1, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r0, r6	@ len.1971,, D.40548
	rsb	r1, r6, r4	@, len.1971, count
	add	r0, r5, r6	@, page, len.1971
	bl	snprintf	@
	ldr	r3, [r7, #20]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	sub	r3, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	add	r6, r6, r0	@ len.2025, len.1971,
	rsb	r1, r6, r4	@, len.2025, count
	add	r0, r5, r6	@, page, len.2025
	bl	snprintf	@
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	add	r6, r0, r6	@ len.1976,, len.2025
	rsb	r1, r6, r4	@, len.1976, count
	add	r0, r5, r6	@, page, len.1976
	bl	snprintf	@
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	add	r6, r6, r0	@ len.1981, len.1976,
	rsb	r1, r6, r4	@, len.1981, count
	add	r0, r5, r6	@, page, len.1981
	bl	snprintf	@
	ldr	r3, [r7, #8]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	add	r6, r6, r0	@ len.1986, len.1981,
	rsb	r1, r6, r4	@, len.1986, count
	add	r0, r5, r6	@, page, len.1986
	bl	snprintf	@
	ldr	r3, [r7, #12]	@, g_ChanCtx.ChanIdTabByPrior
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	add	r6, r6, r0	@ len.2037, len.1986,
	rsb	r1, r6, r4	@, len.2037, count
	add	r0, r5, r6	@, page, len.2037
	bl	snprintf	@
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	add	r6, r0, r6	@ len.1991,, len.2037
	rsb	r1, r6, r4	@, len.1991, count
	add	r0, r5, r6	@, page, len.1991
	bl	snprintf	@
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	add	r6, r6, r0	@ len.1996, len.1991,
	rsb	r1, r6, r4	@, len.1996, count
	add	r0, r5, r6	@, page, len.1996
	bl	snprintf	@
	ldr	r3, [r7, #0]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	add	r6, r6, r0	@ len.2001, len.1996,
	rsb	r1, r6, r4	@, len.2001, count
	add	r0, r5, r6	@, page, len.2001
	bl	snprintf	@
	ldr	r3, [r7, #4]	@, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	add	r6, r6, r0	@ len.2044, len.2001,
	rsb	r1, r6, r4	@, len.2044, count
	add	r0, r5, r6	@, page, len.2044
	bl	snprintf	@
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	add	r6, r0, r6	@ len.2006,, len.2044
	rsb	r1, r6, r4	@, len.2006, count
	add	r0, r5, r6	@, page, len.2006
	bl	snprintf	@
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	add	r6, r6, r0	@ len.2011, len.2006,
	add	r0, r5, r6	@, page, len.2011
	rsb	r1, r6, r4	@, len.2011, count
	bl	snprintf	@
	ldr	ip, [r8, #0]	@ temp.2045, s_pstVfmwChan
	cmp	ip, #0	@ temp.2045,
	add	r6, r6, r0	@ len, len.2011,
	beq	.L382	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len, count
	movw	r2, #:lower16:.LC80	@,
	movt	r2, #:upper16:.LC80	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len, len,
.L382:
	ldr	ip, [r8, #4]	@ D.40564, s_pstVfmwChan
	cmp	ip, #0	@ D.40564,
	beq	.L383	@,
	ldr	lr, [ip, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	add	r0, r5, r6	@, page, len
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	rsb	r1, r6, r4	@, len, count
	movw	r2, #:lower16:.LC80	@,
	movt	r2, #:upper16:.LC80	@,
	str	lr, [sp, #0]	@ <variable>.s32IsRun,
	ldr	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [sp, #4]	@ <variable>.s32Priority,
	bl	snprintf	@
	add	r6, r6, r0	@ len, len,
.L383:
	rsb	r1, r6, r4	@, len, count
	add	r0, r5, r6	@, page, len
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	mov	r1, #0	@ tmp243,
	str	r1, [sl, #0]	@ tmp243,* start
	mov	r2, #1	@ tmp244,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp244,* eof
	add	r0, r6, r0	@, len,
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_chn, .-vfmw_read_proc_chn
	.align	2
	.global	vfmw_read_proc_prn
	.type	vfmw_read_proc_prn, %function
vfmw_read_proc_prn:
	.fnstart
.LFB1449:
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
	movw	r2, #:lower16:.LC81	@,
	mov	sl, r1	@ start, start
	movt	r2, #:upper16:.LC81	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r7, #:lower16:.LC82	@ tmp199,
	movt	r7, #:upper16:.LC82	@ tmp199,
	movw	r6, #:lower16:.LC92	@ tmp235,
	movt	r6, #:upper16:.LC92	@ tmp235,
	mov	r2, r7	@, tmp199
	rsb	r1, r0, r4	@, D.40419, count
	mov	r8, r0	@ D.40419,
	add	r0, r5, r0	@, page, D.40419
	bl	snprintf	@
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	add	r8, r0, r8	@ len,, D.40419
	rsb	r1, r8, r4	@, len, count
	add	r0, r5, r8	@, page, len
	bl	snprintf	@
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	add	r8, r8, r0	@ len.2084, len,
	rsb	r1, r8, r4	@, len.2084, count
	add	r0, r5, r8	@, page, len.2084
	bl	snprintf	@
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	add	r8, r8, r0	@ len.2089, len.2084,
	rsb	r1, r8, r4	@, len.2089, count
	add	r0, r5, r8	@, page, len.2089
	bl	snprintf	@
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	add	r8, r8, r0	@ len.2094, len.2089,
	rsb	r1, r8, r4	@, len.2094, count
	add	r0, r5, r8	@, page, len.2094
	bl	snprintf	@
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	add	r8, r8, r0	@ len.2099, len.2094,
	rsb	r1, r8, r4	@, len.2099, count
	add	r0, r5, r8	@, page, len.2099
	bl	snprintf	@
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	add	r8, r8, r0	@ len.2104, len.2099,
	rsb	r1, r8, r4	@, len.2104, count
	add	r0, r5, r8	@, page, len.2104
	bl	snprintf	@
	movw	r2, #:lower16:.LC89	@,
	movt	r2, #:upper16:.LC89	@,
	add	r8, r8, r0	@ len.2109, len.2104,
	rsb	r1, r8, r4	@, len.2109, count
	add	r0, r5, r8	@, page, len.2109
	bl	snprintf	@
	movw	r2, #:lower16:.LC90	@,
	movt	r2, #:upper16:.LC90	@,
	add	r8, r8, r0	@ len.2114, len.2109,
	rsb	r1, r8, r4	@, len.2114, count
	add	r0, r5, r8	@, page, len.2114
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2119, len.2114,
	rsb	r1, r8, r4	@, len.2119, count
	add	r0, r5, r8	@, page, len.2119
	bl	snprintf	@
	movw	r2, #:lower16:.LC91	@,
	movt	r2, #:upper16:.LC91	@,
	add	r8, r8, r0	@ len.2124, len.2119,
	rsb	r1, r8, r4	@, len.2124, count
	add	r0, r5, r8	@, page, len.2124
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2129, len.2124,
	rsb	r1, r8, r4	@, len.2129, count
	add	r0, r5, r8	@, page, len.2129
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2134, len.2129,
	rsb	r1, r8, r4	@, len.2134, count
	add	r0, r5, r8	@, page, len.2134
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2139, len.2134,
	rsb	r1, r8, r4	@, len.2139, count
	add	r0, r5, r8	@, page, len.2139
	bl	snprintf	@
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	add	r8, r8, r0	@ len.2144, len.2139,
	rsb	r1, r8, r4	@, len.2144, count
	add	r0, r5, r8	@, page, len.2144
	bl	snprintf	@
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	add	r8, r8, r0	@ len.2149, len.2144,
	rsb	r1, r8, r4	@, len.2149, count
	add	r0, r5, r8	@, page, len.2149
	bl	snprintf	@
	movw	r2, #:lower16:.LC95	@,
	movt	r2, #:upper16:.LC95	@,
	add	r8, r8, r0	@ len.2154, len.2149,
	rsb	r1, r8, r4	@, len.2154, count
	add	r0, r5, r8	@, page, len.2154
	bl	snprintf	@
	movw	r2, #:lower16:.LC96	@,
	movt	r2, #:upper16:.LC96	@,
	add	r8, r8, r0	@ len.2159, len.2154,
	rsb	r1, r8, r4	@, len.2159, count
	add	r0, r5, r8	@, page, len.2159
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2164, len.2159,
	rsb	r1, r8, r4	@, len.2164, count
	add	r0, r5, r8	@, page, len.2164
	bl	snprintf	@
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	add	r8, r8, r0	@ len.2169, len.2164,
	rsb	r1, r8, r4	@, len.2169, count
	add	r0, r5, r8	@, page, len.2169
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2174, len.2169,
	rsb	r1, r8, r4	@, len.2174, count
	add	r0, r5, r8	@, page, len.2174
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2179, len.2174,
	rsb	r1, r8, r4	@, len.2179, count
	add	r0, r5, r8	@, page, len.2179
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2184, len.2179,
	rsb	r1, r8, r4	@, len.2184, count
	add	r0, r5, r8	@, page, len.2184
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2189, len.2184,
	rsb	r1, r8, r4	@, len.2189, count
	add	r0, r5, r8	@, page, len.2189
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2194, len.2189,
	rsb	r1, r8, r4	@, len.2194, count
	add	r0, r5, r8	@, page, len.2194
	bl	snprintf	@
	mov	r2, r6	@, tmp235
	add	r8, r8, r0	@ len.2199, len.2194,
	rsb	r1, r8, r4	@, len.2199, count
	add	r0, r5, r8	@, page, len.2199
	bl	snprintf	@
	movw	r2, #:lower16:.LC98	@,
	movt	r2, #:upper16:.LC98	@,
	add	r8, r8, r0	@ len.2204, len.2199,
	rsb	r1, r8, r4	@, len.2204, count
	add	r0, r5, r8	@, page, len.2204
	bl	snprintf	@
	mov	r2, r7	@, tmp199
	add	r8, r8, r0	@ len.2209, len.2204,
	rsb	r1, r8, r4	@, len.2209, count
	add	r0, r5, r8	@, page, len.2209
	bl	snprintf	@
	mov	r1, #0	@ tmp281,
	str	r1, [sl, #0]	@ tmp281,* start
	mov	r2, #1	@ tmp282,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp282,* eof
	add	r0, r8, r0	@, len.2209,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	vfmw_read_proc_prn, .-vfmw_read_proc_prn
	.align	2
	.global	vfmw_read_proc_dbg
	.type	vfmw_read_proc_dbg, %function
vfmw_read_proc_dbg:
	.fnstart
.LFB1448:
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
	movw	r2, #:lower16:.LC99	@,
	mov	r9, r1	@ start, start
	movt	r2, #:upper16:.LC99	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r6, #:lower16:.LC100	@ tmp213,
	movt	r6, #:upper16:.LC100	@ tmp213,
	movw	r3, #:lower16:.LC101	@,
	movt	r3, #:upper16:.LC101	@,
	mov	r2, r6	@, tmp213
	movw	sl, #:lower16:.LANCHOR2	@ tmp221,
	movt	sl, #:upper16:.LANCHOR2	@ tmp221,
	movw	r7, #:lower16:.LC106	@ tmp236,
	movt	r7, #:upper16:.LC106	@ tmp236,
	mov	r8, r0	@ D.40363,
	movw	r0, #:lower16:TracerPhyAddr	@ tmp215,
	movt	r0, #:upper16:TracerPhyAddr	@ tmp215,
	rsb	r1, r8, r4	@, D.40363, count
	ldr	ip, [r0, #0]	@ TracerPhyAddr, TracerPhyAddr
	add	r0, r5, r8	@, page, D.40363
	str	ip, [sp, #0]	@ TracerPhyAddr,
	bl	snprintf	@
	movw	r2, #:lower16:.LC102	@,
	movw	r3, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC102	@,
	movt	r3, #:upper16:.LC103	@,
	str	sl, [sp, #0]	@ tmp221,
	movw	sl, #:lower16:.LC82	@ tmp254,
	movt	sl, #:upper16:.LC82	@ tmp254,
	add	r8, r0, r8	@ len,, D.40363
	rsb	r1, r8, r4	@, len, count
	add	r0, r5, r8	@, page, len
	bl	snprintf	@
	movw	r1, #:lower16:g_PrintEnable	@ tmp226,
	movt	r1, #:upper16:g_PrintEnable	@ tmp226,
	mov	r2, r6	@, tmp213
	movw	r3, #:lower16:.LC104	@,
	movt	r3, #:upper16:.LC104	@,
	ldr	ip, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	str	ip, [sp, #0]	@ g_PrintEnable,
	add	r8, r8, r0	@ len.2245, len,
	rsb	r1, r8, r4	@, len.2245, count
	add	r0, r5, r8	@, page, len.2245
	bl	snprintf	@
	movw	r1, #:lower16:g_TraceCtrl	@ tmp232,
	movt	r1, #:upper16:g_TraceCtrl	@ tmp232,
	mov	r2, r6	@, tmp213
	movw	r3, #:lower16:.LC105	@,
	movt	r3, #:upper16:.LC105	@,
	ldr	r6, [r1, #0]	@ g_TraceCtrl, g_TraceCtrl
	str	r6, [sp, #0]	@ g_TraceCtrl,
	add	r6, r8, r0	@ len.2250, len.2245,
	rsb	r1, r6, r4	@, len.2250, count
	add	r0, r5, r6	@, page, len.2250
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp238,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp238,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC107	@,
	movt	r3, #:upper16:.LC107	@,
	ldr	r1, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	str	r1, [sp, #0]	@ g_TraceBsPeriod,
	add	r6, r6, r0	@ len.2255, len.2250,
	rsb	r1, r6, r4	@, len.2255, count
	add	r0, r5, r6	@, page, len.2255
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp244,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp244,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC108	@,
	movt	r3, #:upper16:.LC108	@,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	str	r1, [sp, #0]	@ g_TraceFramePeriod,
	add	r6, r6, r0	@ len.2260, len.2255,
	rsb	r1, r6, r4	@, len.2260, count
	add	r0, r5, r6	@, page, len.2260
	bl	snprintf	@
	movw	ip, #:lower16:g_TraceImgPeriod	@ tmp250,
	movt	ip, #:upper16:g_TraceImgPeriod	@ tmp250,
	mov	r2, r7	@, tmp236
	movw	r3, #:lower16:.LC109	@,
	movt	r3, #:upper16:.LC109	@,
	ldr	r1, [ip, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	str	r1, [sp, #0]	@ g_TraceImgPeriod,
	add	r6, r6, r0	@ len.2265, len.2260,
	rsb	r1, r6, r4	@, len.2265, count
	add	r0, r5, r6	@, page, len.2265
	bl	snprintf	@
	mov	r2, sl	@, tmp254
	add	r6, r6, r0	@ len.2270, len.2265,
	rsb	r1, r6, r4	@, len.2270, count
	add	r0, r5, r6	@, page, len.2270
	bl	snprintf	@
	movw	r2, #:lower16:.LC110	@,
	movt	r2, #:upper16:.LC110	@,
	add	r6, r6, r0	@ len.2275, len.2270,
	rsb	r1, r6, r4	@, len.2275, count
	add	r0, r5, r6	@, page, len.2275
	bl	snprintf	@
	movw	r2, #:lower16:.LC111	@,
	movt	r2, #:upper16:.LC111	@,
	add	r6, r6, r0	@ len.2280, len.2275,
	rsb	r1, r6, r4	@, len.2280, count
	add	r0, r5, r6	@, page, len.2280
	bl	snprintf	@
	movw	r2, #:lower16:.LC112	@,
	movt	r2, #:upper16:.LC112	@,
	add	r6, r6, r0	@ len.2285, len.2280,
	rsb	r1, r6, r4	@, len.2285, count
	add	r0, r5, r6	@, page, len.2285
	bl	snprintf	@
	movw	r2, #:lower16:.LC113	@,
	movt	r2, #:upper16:.LC113	@,
	add	r6, r6, r0	@ len.2290, len.2285,
	rsb	r1, r6, r4	@, len.2290, count
	add	r0, r5, r6	@, page, len.2290
	bl	snprintf	@
	movw	r2, #:lower16:.LC114	@,
	movt	r2, #:upper16:.LC114	@,
	add	r6, r6, r0	@ len.2295, len.2290,
	rsb	r1, r6, r4	@, len.2295, count
	add	r0, r5, r6	@, page, len.2295
	bl	snprintf	@
	movw	r2, #:lower16:.LC115	@,
	movt	r2, #:upper16:.LC115	@,
	add	r6, r6, r0	@ len.2300, len.2295,
	rsb	r1, r6, r4	@, len.2300, count
	add	r0, r5, r6	@, page, len.2300
	bl	snprintf	@
	movw	r2, #:lower16:.LC116	@,
	movt	r2, #:upper16:.LC116	@,
	add	r6, r6, r0	@ len.2305, len.2300,
	rsb	r1, r6, r4	@, len.2305, count
	add	r0, r5, r6	@, page, len.2305
	bl	snprintf	@
	movw	r2, #:lower16:.LC117	@,
	movt	r2, #:upper16:.LC117	@,
	add	r6, r6, r0	@ len.2310, len.2305,
	rsb	r1, r6, r4	@, len.2310, count
	add	r0, r5, r6	@, page, len.2310
	bl	snprintf	@
	movw	r2, #:lower16:.LC118	@,
	movt	r2, #:upper16:.LC118	@,
	add	r6, r6, r0	@ len.2315, len.2310,
	rsb	r1, r6, r4	@, len.2315, count
	add	r0, r5, r6	@, page, len.2315
	bl	snprintf	@
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	add	r6, r6, r0	@ len.2320, len.2315,
	rsb	r1, r6, r4	@, len.2320, count
	add	r0, r5, r6	@, page, len.2320
	bl	snprintf	@
	movw	r2, #:lower16:.LC120	@,
	movt	r2, #:upper16:.LC120	@,
	add	r6, r6, r0	@ len.2325, len.2320,
	rsb	r1, r6, r4	@, len.2325, count
	add	r0, r5, r6	@, page, len.2325
	bl	snprintf	@
	movw	r2, #:lower16:.LC121	@,
	movt	r2, #:upper16:.LC121	@,
	add	r6, r6, r0	@ len.2330, len.2325,
	rsb	r1, r6, r4	@, len.2330, count
	add	r0, r5, r6	@, page, len.2330
	bl	snprintf	@
	movw	ip, #:lower16:.LC123	@ tmp294,
	movt	ip, #:upper16:.LC123	@ tmp294,
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	str	ip, [sp, #0]	@ tmp294,
	mov	r3, ip	@, tmp294
	str	ip, [sp, #4]	@ tmp294,
	str	ip, [sp, #8]	@ tmp294,
	str	ip, [sp, #12]	@ tmp294,
	add	r6, r6, r0	@ len.2335, len.2330,
	rsb	r1, r6, r4	@, len.2335, count
	add	r0, r5, r6	@, page, len.2335
	bl	snprintf	@
	movw	r2, #:lower16:.LC124	@,
	movt	r2, #:upper16:.LC124	@,
	add	r6, r6, r0	@ len.2340, len.2335,
	rsb	r1, r6, r4	@, len.2340, count
	add	r0, r5, r6	@, page, len.2340
	bl	snprintf	@
	movw	r2, #:lower16:.LC125	@,
	movt	r2, #:upper16:.LC125	@,
	add	r6, r6, r0	@ len.2345, len.2340,
	rsb	r1, r6, r4	@, len.2345, count
	add	r0, r5, r6	@, page, len.2345
	bl	snprintf	@
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	add	r6, r6, r0	@ len.2350, len.2345,
	rsb	r1, r6, r4	@, len.2350, count
	add	r0, r5, r6	@, page, len.2350
	bl	snprintf	@
	movw	r2, #:lower16:.LC127	@,
	movt	r2, #:upper16:.LC127	@,
	add	r6, r6, r0	@ len.2355, len.2350,
	rsb	r1, r6, r4	@, len.2355, count
	add	r0, r5, r6	@, page, len.2355
	bl	snprintf	@
	movw	r2, #:lower16:.LC128	@,
	movt	r2, #:upper16:.LC128	@,
	add	r6, r6, r0	@ len.2360, len.2355,
	rsb	r1, r6, r4	@, len.2360, count
	add	r0, r5, r6	@, page, len.2360
	bl	snprintf	@
	movw	r2, #:lower16:.LC129	@,
	movt	r2, #:upper16:.LC129	@,
	add	r6, r6, r0	@ len.2365, len.2360,
	rsb	r1, r6, r4	@, len.2365, count
	add	r0, r5, r6	@, page, len.2365
	bl	snprintf	@
	movw	r2, #:lower16:.LC130	@,
	movt	r2, #:upper16:.LC130	@,
	add	r6, r6, r0	@ len.2370, len.2365,
	rsb	r1, r6, r4	@, len.2370, count
	add	r0, r5, r6	@, page, len.2370
	bl	snprintf	@
	movw	r2, #:lower16:.LC131	@,
	movt	r2, #:upper16:.LC131	@,
	add	r6, r6, r0	@ len.2375, len.2370,
	rsb	r1, r6, r4	@, len.2375, count
	add	r0, r5, r6	@, page, len.2375
	bl	snprintf	@
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	add	r6, r6, r0	@ len.2380, len.2375,
	rsb	r1, r6, r4	@, len.2380, count
	add	r0, r5, r6	@, page, len.2380
	bl	snprintf	@
	movw	r2, #:lower16:.LC133	@,
	movt	r2, #:upper16:.LC133	@,
	add	r6, r6, r0	@ len.2385, len.2380,
	rsb	r1, r6, r4	@, len.2385, count
	add	r0, r5, r6	@, page, len.2385
	bl	snprintf	@
	movw	r2, #:lower16:.LC134	@,
	movt	r2, #:upper16:.LC134	@,
	add	r6, r6, r0	@ len.2390, len.2385,
	rsb	r1, r6, r4	@, len.2390, count
	add	r0, r5, r6	@, page, len.2390
	bl	snprintf	@
	movw	r2, #:lower16:.LC135	@,
	movt	r2, #:upper16:.LC135	@,
	add	r6, r6, r0	@ len.2395, len.2390,
	rsb	r1, r6, r4	@, len.2395, count
	add	r0, r5, r6	@, page, len.2395
	bl	snprintf	@
	movw	r2, #:lower16:.LC136	@,
	movt	r2, #:upper16:.LC136	@,
	add	r6, r6, r0	@ len.2400, len.2395,
	rsb	r1, r6, r4	@, len.2400, count
	add	r0, r5, r6	@, page, len.2400
	bl	snprintf	@
	mov	r2, sl	@, tmp254
	add	r6, r6, r0	@ len.2405, len.2400,
	rsb	r1, r6, r4	@, len.2405, count
	add	r0, r5, r6	@, page, len.2405
	bl	snprintf	@
	mov	r1, #0	@ tmp341,
	str	r1, [r9, #0]	@ tmp341,* start
	mov	r2, #1	@ tmp342,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp342,* eof
	add	r0, r6, r0	@, len.2405,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_dbg, .-vfmw_read_proc_dbg
	.align	2
	.global	vfmw_read_proc
	.type	vfmw_read_proc, %function
vfmw_read_proc:
	.fnstart
.LFB1447:
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
	movw	r2, #:lower16:.LC137	@,
	str	r1, [fp, #-48]	@ start, %sfp
	movt	r2, #:upper16:.LC137	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r7, r0	@ page, page
	bl	snprintf	@
	movw	r5, #:lower16:.LC49	@ tmp165,
	movt	r5, #:upper16:.LC49	@ tmp165,
	movw	r3, #:lower16:.LC138	@,
	movt	r3, #:upper16:.LC138	@,
	mov	r2, r5	@, tmp165
	movw	r6, #:lower16:2013062501	@ tmp167,
	movt	r6, #:upper16:2013062501	@ tmp167,
	str	r6, [sp, #0]	@ tmp167,
	movw	r6, #:lower16:.LANCHOR0	@ tmp168,
	movt	r6, #:upper16:.LANCHOR0	@ tmp168,
	movw	r8, #:lower16:-858993459	@ tmp247,
	movt	r8, #:upper16:-858993459	@ tmp247,
	mov	r9, #0	@ tmp173,
	rsb	r1, r0, r4	@, D.40323, count
	mov	sl, r0	@ D.40323,
	add	r0, r7, r0	@, page, D.40323
	bl	snprintf	@
	ldr	ip, [r6, #64]	@ D.40326, <variable>.u32VaVdmLoad
	movw	r2, #:lower16:.LC139	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r2, #:upper16:.LC139	@,
	movt	r3, #:upper16:.LC140	@,
	umull	lr, r1, r8, ip	@, tmp175, tmp247, D.40326
	str	r9, [sp, #0]	@ tmp173,
	mov	lr, r1, lsr #3	@ tmp174, tmp175,
	str	lr, [sp, #4]	@ tmp174,
	add	r1, lr, lr, asl #2	@, tmp182, tmp174, tmp174,
	sub	lr, ip, r1, asl #1	@ tmp184, D.40326, tmp182,
	str	lr, [sp, #8]	@ tmp184,
	add	sl, r0, sl	@ len,, D.40323
	rsb	r1, sl, r4	@, len, count
	add	r0, r7, sl	@, page, len
	bl	snprintf	@
	ldr	r1, [r6, #80]	@ D.40330, <variable>.u32DaDnrLoad
	movw	r2, #:lower16:.LC54	@,
	movw	r3, #:lower16:.LC141	@,
	movt	r2, #:upper16:.LC54	@,
	movt	r3, #:upper16:.LC141	@,
	umull	ip, r8, r8, r1	@, tmp191, tmp247, D.40330
	mov	ip, r8, lsr #3	@ tmp190, tmp191,
	str	ip, [sp, #0]	@ tmp190,
	add	r8, ip, ip, asl #2	@, tmp198, tmp190, tmp190,
	sub	ip, r1, r8, asl #1	@ tmp200, D.40330, tmp198,
	str	ip, [sp, #4]	@ tmp200,
	add	r8, sl, r0	@ len.2481, len,
	rsb	r1, r8, r4	@, len.2481, count
	add	r0, r7, r8	@, page, len.2481
	bl	snprintf	@
	ldr	r1, [r6, #16]	@ extra_ref, extra_ref
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC142	@,
	movt	r3, #:upper16:.LC142	@,
	str	r1, [sp, #0]	@ extra_ref,
	add	r8, r8, r0	@ len.2441, len.2481,
	rsb	r1, r8, r4	@, len.2441, count
	add	r0, r7, r8	@, page, len.2441
	bl	snprintf	@
	ldr	ip, [r6, #20]	@ extra_disp, extra_disp
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC143	@,
	movt	r3, #:upper16:.LC143	@,
	str	ip, [sp, #0]	@ extra_disp,
	add	r8, r8, r0	@ len.2446, len.2441,
	rsb	r1, r8, r4	@, len.2446, count
	add	r0, r7, r8	@, page, len.2446
	bl	snprintf	@
	ldr	r1, [r6, #120]	@ extra_cmd, extra_cmd
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC144	@,
	movt	r3, #:upper16:.LC144	@,
	str	r1, [sp, #0]	@ extra_cmd,
	add	r8, r8, r0	@ len.2451, len.2446,
	rsb	r1, r8, r4	@, len.2451, count
	add	r0, r7, r8	@, page, len.2451
	bl	snprintf	@
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp223,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp223,
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC145	@,
	movt	r3, #:upper16:.LC145	@,
	ldr	r1, [ip, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	str	r1, [sp, #0]	@ USE_FF_APT_EN,
	add	r8, r8, r0	@ len.2456, len.2451,
	rsb	r1, r8, r4	@, len.2456, count
	add	r0, r7, r8	@, page, len.2456
	bl	snprintf	@
	ldr	ip, [r6, #124]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC146	@,
	movt	r3, #:upper16:.LC146	@,
	str	ip, [sp, #0]	@ g_ResetCreateNewSave,
	add	r8, r8, r0	@ len.2461, len.2456,
	rsb	r1, r8, r4	@, len.2461, count
	add	r0, r7, r8	@, page, len.2461
	bl	snprintf	@
	ldr	r1, [r6, #108]	@ <variable>.u32VaVdmKiloCycle, <variable>.u32VaVdmKiloCycle
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC147	@,
	movt	r3, #:upper16:.LC147	@,
	str	r1, [sp, #0]	@ <variable>.u32VaVdmKiloCycle,
	add	r8, r8, r0	@ len.2466, len.2461,
	rsb	r1, r8, r4	@, len.2466, count
	add	r0, r7, r8	@, page, len.2466
	bl	snprintf	@
	ldr	ip, [r6, #112]	@ <variable>.u32StatTime, <variable>.u32StatTime
	mov	r2, r5	@, tmp165
	movw	r3, #:lower16:.LC148	@,
	movt	r3, #:upper16:.LC148	@,
	str	ip, [sp, #0]	@ <variable>.u32StatTime,
	add	r8, r8, r0	@ len.2471, len.2466,
	rsb	r1, r8, r4	@, len.2471, count
	add	r0, r7, r8	@, page, len.2471
	bl	snprintf	@
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r2, #1	@ tmp244,
	str	r9, [r1, #0]	@ tmp173,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r2, [r3, #0]	@ tmp244,* eof
	add	r0, r8, r0	@, len.2471,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc, .-vfmw_read_proc
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1405:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L397	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r2, r0, asl #2]	@ D.38358, s_pstVfmwChan
	ldr	r3, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L398	@,
	cmp	r1, #0	@ pArgs,
	beq	.L399	@,
	ldmia	r1, {r0, r1, r2}	@ pArgs,,,
	movw	r3, #:lower16:11199444	@ tmp146,
	movt	r3, #:upper16:11199444	@ tmp146,
	mov	r4, #0	@ D.38356,
	add	r3, ip, r3	@ tmp146, D.38358, tmp146
	stmia	r3, {r0, r1, r2}	@ tmp146,,,
.L393:
	mov	r0, r4	@, D.38356
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L397:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4255	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38356,
	b	.L393	@
.L398:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4256	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38356,
	b	.L393	@
.L399:
	mov	r0, r1	@, pArgs
	movw	r2, #4257	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38356,
	b	.L393	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
.LFB1385:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L406	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L407	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.37360, s_pstVfmwChan
	cmp	r3, #0	@ D.37360,
	beq	.L408	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #68	@,
	add	r1, r3, #36	@, D.37360,
	bl	memcpy	@
	mov	r0, #0	@ D.37356,
	ldmfd	sp, {fp, sp, pc}	@
.L406:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2649	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37356,
	ldmfd	sp, {fp, sp, pc}	@
.L408:
	mov	r0, r3	@, D.37360
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2651	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37356,
	ldmfd	sp, {fp, sp, pc}	@
.L407:
	mov	r0, r1	@, pstCfg
	movw	r2, #2650	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37356,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
.LFB1372:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L416	@,
	cmp	r1, #0	@ pArgs,
	beq	.L417	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp143,
	movt	r2, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r2, r0, asl #2]	@ D.36696, s_pstVfmwChan
	cmp	ip, #0	@ D.36696,
	beq	.L418	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	movw	r3, #:lower16:11199576	@ tmp146,
	movt	r3, #:upper16:11199576	@ tmp146,
	add	r3, ip, r3	@ tmp146, D.36696, tmp146
	movw	ip, #:lower16:11199576	@ tmp147,
	movt	ip, #:upper16:11199576	@ tmp147,
	stmia	r3, {r0, r1}	@ tmp146,,
	ldr	r3, [r2, r4, asl #2]	@ temp.2557, s_pstVfmwChan
	ldr	r0, [r3, ip]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp152, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.36692,
	cmp	r2, #1	@ tmp152,
	strhi	r0, [r3, ip]	@ tmp155, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L416:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1316	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36692,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L418:
	mov	r0, ip	@, D.36696
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1318	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36692,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L417:
	mov	r0, r1	@, pArgs
	movw	r2, #1317	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC150	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC150	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36692,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
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
	cmp	r1, #0	@ pstFrameIntf
	beq	.L424	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36649, s_pstVfmwChan
	cmp	r3, #0	@ D.36649,
	beq	.L425	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp143, D.36649,
	mov	ip, #0	@ D.36647,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L421:
	mov	r0, ip	@, D.36647
	ldmfd	sp, {fp, sp, pc}	@
.L425:
	mov	r0, r3	@, D.36649
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1278	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36647,
	b	.L421	@
.L424:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1277	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36647,
	b	.L421	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
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
	cmp	r1, #0	@ pstStreamIntf
	beq	.L431	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36628, s_pstVfmwChan
	cmp	r3, #0	@ D.36628,
	beq	.L432	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp143, D.36628,
	mov	ip, #0	@ D.36626,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L428:
	mov	r0, ip	@, D.36626
	ldmfd	sp, {fp, sp, pc}	@
.L432:
	mov	r0, r3	@, D.36628
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1253	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36626,
	b	.L428	@
.L431:
	mov	r0, r1	@, pstStreamIntf
	movw	r2, #1252	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36626,
	b	.L428	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L439	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r3, r0, asl #2]	@ D.36673, s_pstVfmwChan
	cmp	r3, #0	@ D.36673,
	beq	.L440	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L441	@,
	movw	r2, #:lower16:145232	@ tmp149,
	movt	r2, #:upper16:145232	@ tmp149,
	movw	r3, #:lower16:g_pSmIIS	@ tmp147,
	movt	r3, #:upper16:g_pSmIIS	@ tmp147,
	mul	r0, r2, r0	@ tmp148, tmp149, ChanID
	ldr	ip, [r3, #0]	@ g_pSmIIS, g_pSmIIS
	add	lr, r0, #57344	@ tmp150, tmp148,
	add	r0, lr, #208	@ tmp150, tmp150,
	add	r0, r0, ip	@, tmp150, g_pSmIIS
	bl	GetSegStreamSize	@
	ldmfd	sp, {fp, sp, pc}	@
.L441:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1304	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC153	@,
	movt	r3, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L439:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1302	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L440:
	mov	r0, r3	@, D.36673
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1303	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC152	@,
	movt	r3, #:upper16:.LC152	@,
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
.LFB1450:
	@ args = 8, pretend = 0, frame = 40
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
	movw	r2, #:lower16:.LC154	@,
	str	r1, [fp, #-64]	@ start, %sfp
	movt	r2, #:upper16:.LC154	@,
	mov	r1, r3	@, count
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r6, #:lower16:g_pSmIIS	@ tmp195,
	movt	r6, #:upper16:g_pSmIIS	@ tmp195,
	movw	r2, #:lower16:290512	@ tmp196,
	movt	r2, #:upper16:290512	@ tmp196,
	ldr	r8, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r3, #:lower16:.LC155	@,
	movt	r3, #:upper16:.LC155	@,
	ldr	sl, [r8, r2]	@ <variable>.IsScdDrvOpen, <variable>.IsScdDrvOpen
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	movw	r8, #:lower16:131392	@ tmp252,
	movt	r8, #:upper16:131392	@ tmp252,
	str	sl, [sp, #0]	@ <variable>.IsScdDrvOpen,
	movw	sl, #:lower16:290516	@ tmp212,
	movt	sl, #:upper16:290516	@ tmp212,
	mov	r7, r0	@ D.40469,
	rsb	r1, r0, r4	@, D.40469, count
	add	r0, r5, r0	@, page, D.40469
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r1, #:lower16:290520	@ tmp204,
	movt	r1, #:upper16:290520	@ tmp204,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC156	@,
	ldr	r9, [ip, r1]	@ <variable>.SCDState, <variable>.SCDState
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC156	@,
	str	r9, [sp, #0]	@ <variable>.SCDState,
	add	r9, r0, r7	@ len.2657,, D.40469
	rsb	r1, r9, r4	@, len.2657, count
	add	r0, r5, r9	@, page, len.2657
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC51	@,
	ldr	r1, [ip, sl]	@ <variable>.ThisInstID, <variable>.ThisInstID
	str	r1, [sp, #0]	@ <variable>.ThisInstID,
	add	r7, r9, r0	@ len.2663, len.2657,
	rsb	r1, r7, r4	@, len.2663, count
	add	r0, r5, r7	@, page, len.2663
	bl	snprintf	@
	ldr	sl, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r3, #:lower16:290524	@ tmp220,
	movt	r3, #:upper16:290524	@ tmp220,
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	ldr	ip, [sl, r3]	@ <variable>.LastProcessTime, <variable>.LastProcessTime
	movw	r3, #:lower16:.LC53	@,
	movt	r3, #:upper16:.LC53	@,
	str	ip, [sp, #0]	@ <variable>.LastProcessTime,
	add	sl, r7, r0	@ len.2669, len.2663,
	rsb	r1, sl, r4	@, len.2669, count
	add	r0, r5, sl	@, page, len.2669
	bl	snprintf	@
	ldr	r1, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC158	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC158	@,
	ldr	r9, [r1, #0]	@ <variable>.ScdDrvMem.HwMemAddr, <variable>.ScdDrvMem.HwMemAddr
	str	r9, [sp, #0]	@ <variable>.ScdDrvMem.HwMemAddr,
	add	r7, sl, r0	@ len.2675, len.2669,
	rsb	r1, r7, r4	@, len.2675, count
	add	r0, r5, r7	@, page, len.2675
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC159	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC159	@,
	ldr	r1, [ip, #4]	@ <variable>.ScdDrvMem.HwMemSize, <variable>.ScdDrvMem.HwMemSize
	str	r1, [sp, #0]	@ <variable>.ScdDrvMem.HwMemSize,
	add	r7, r7, r0	@ len.2681, len.2675,
	rsb	r1, r7, r4	@, len.2681, count
	add	r0, r5, r7	@, page, len.2681
	bl	snprintf	@
	ldr	r9, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC160	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC160	@,
	ldr	sl, [r9, #8]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.ScdDrvMem.DownMsgMemAddr
	str	sl, [sp, #0]	@ <variable>.ScdDrvMem.DownMsgMemAddr,
	movw	sl, #:lower16:145232	@ tmp254,
	movt	sl, #:upper16:145232	@ tmp254,
	add	r9, r7, r0	@ len.2687, len.2681,
	rsb	r1, r9, r4	@, len.2687, count
	add	r0, r5, r9	@, page, len.2687
	bl	snprintf	@
	ldr	ip, [r6, #0]	@ g_pSmIIS, g_pSmIIS
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC161	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC161	@,
	ldr	r1, [ip, #20]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.ScdDrvMem.UpMsgMemAddr
	str	r1, [sp, #0]	@ <variable>.ScdDrvMem.UpMsgMemAddr,
	add	r7, r9, r0	@ len.2693, len.2687,
	add	r0, r5, r7	@, page, len.2693
	rsb	r1, r7, r4	@, len.2693, count
	bl	snprintf	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp250,
	movt	r3, #:upper16:.LANCHOR0	@ tmp250,
	ldr	r9, [r6, #0]	@ g_pSmIIS.2699, g_pSmIIS
	ldr	r3, [r3, #116]	@ i, g_CurProcChan
	mul	sl, sl, r3	@ tmp253, tmp254, i
	add	r6, sl, r9	@ tmp255, tmp253, g_pSmIIS.2699
	ldr	r2, [r6, r8]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #0	@ <variable>.Mode,
	add	r7, r7, r0	@ len, len.2693,
	beq	.L443	@,
	add	lr, sl, #184	@ tmp260, tmp253,
	add	ip, r6, #131072	@ tmp350, tmp255,
	add	r2, r9, lr	@ D.40494, g_pSmIIS.2699, tmp260
	sub	r1, fp, #52	@,,
	add	r0, r6, #96	@, tmp255,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, r2	@, D.40494
	add	lr, ip, #240	@ tmp350, tmp350,
	str	r2, [fp, #-80]	@,
	str	lr, [fp, #-72]	@,
	str	r3, [fp, #-76]	@,
	bl	GetRawStreamSize	@
	ldr	r3, [fp, #-80]	@,
	sub	r1, fp, #48	@,,
	mov	r0, r3	@, D.40494
	bl	GetRawStreamNum	@
	add	r0, sl, #57344	@ tmp265, tmp253,
	add	sl, r0, #208	@ tmp265, tmp265,
	sub	r1, fp, #60	@,,
	add	r9, r9, sl	@ D.40495, g_pSmIIS.2699, tmp265
	mov	r0, r9	@, D.40495
	bl	GetSegStreamSize	@
	sub	r1, fp, #56	@,,
	mov	r0, r9	@, D.40495
	bl	GetSegStreamNum	@
	rsb	r1, r7, r4	@, len, count
	ldr	r3, [fp, #-76]	@,
	add	r0, r5, r7	@, page, len
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	bl	snprintf	@
	ldr	ip, [r6, r8]	@ <variable>.Mode, <variable>.Mode
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC162	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC162	@,
	str	ip, [sp, #0]	@ <variable>.Mode,
	add	r7, r0, r7	@ len.2704,, len
	rsb	r1, r7, r4	@, len.2704, count
	add	r0, r5, r7	@, page, len.2704
	bl	snprintf	@
	ldr	r1, [r6, #96]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC163	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC163	@,
	str	r1, [sp, #0]	@ <variable>.Config.VidStd,
	add	r7, r7, r0	@ len.2710, len.2704,
	rsb	r1, r7, r4	@, len.2710, count
	add	r0, r5, r7	@, page, len.2710
	bl	snprintf	@
	ldrsb	ip, [r6, #41]	@ <variable>.IsCounting, <variable>.IsCounting
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC164	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC164	@,
	str	ip, [sp, #0]	@ <variable>.IsCounting,
	add	r7, r7, r0	@ len.2715, len.2710,
	rsb	r1, r7, r4	@, len.2715, count
	add	r0, r5, r7	@, page, len.2715
	bl	snprintf	@
	ldr	r2, [fp, #-68]	@, %sfp
	movw	r3, #:lower16:.LC165	@,
	movt	r3, #:upper16:.LC165	@,
	ldr	r1, [r2, #4]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	movw	r2, #:lower16:.LC157	@,
	movt	r2, #:upper16:.LC157	@,
	str	r1, [sp, #0]	@ <variable>.Config.BufPhyAddr,
	add	r7, r7, r0	@ len.2720, len.2715,
	rsb	r1, r7, r4	@, len.2720, count
	add	r0, r5, r7	@, page, len.2720
	bl	snprintf	@
	ldr	ip, [r6, #104]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC166	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC166	@,
	str	ip, [sp, #0]	@ <variable>.Config.BufSize,
	add	r7, r7, r0	@ len.2725, len.2720,
	rsb	r1, r7, r4	@, len.2725, count
	add	r0, r5, r7	@, page, len.2725
	bl	snprintf	@
	ldr	r1, [fp, #-52]	@ RawSize, RawSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC167	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC167	@,
	str	r1, [sp, #0]	@ RawSize,
	add	r7, r7, r0	@ len.2730, len.2725,
	rsb	r1, r7, r4	@, len.2730, count
	add	r0, r5, r7	@, page, len.2730
	bl	snprintf	@
	ldr	ip, [fp, #-48]	@ RawNum, RawNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC168	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC168	@,
	str	ip, [sp, #0]	@ RawNum,
	add	r7, r7, r0	@ len.2735, len.2730,
	rsb	r1, r7, r4	@, len.2735, count
	add	r0, r5, r7	@, page, len.2735
	bl	snprintf	@
	ldr	r1, [fp, #-60]	@ SegSize, SegSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC169	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC169	@,
	str	r1, [sp, #0]	@ SegSize,
	add	r7, r7, r0	@ len.2740, len.2735,
	rsb	r1, r7, r4	@, len.2740, count
	add	r0, r5, r7	@, page, len.2740
	bl	snprintf	@
	ldr	ip, [fp, #-56]	@ SegNum, SegNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC170	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC170	@,
	str	ip, [sp, #0]	@ SegNum,
	add	r7, r7, r0	@ len.2745, len.2740,
	rsb	r1, r7, r4	@, len.2745, count
	add	r0, r5, r7	@, page, len.2745
	bl	snprintf	@
	movw	r1, #:lower16:131312	@ tmp346,
	movt	r1, #:upper16:131312	@ tmp346,
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC171	@,
	movt	r2, #:upper16:.LC157	@,
	ldr	ip, [r6, r1]	@ <variable>.StreamSegArray.SegBufReadAddr, <variable>.StreamSegArray.SegBufReadAddr
	movt	r3, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ <variable>.StreamSegArray.SegBufReadAddr,
	add	r7, r7, r0	@ len.2750, len.2745,
	rsb	r1, r7, r4	@, len.2750, count
	add	r0, r5, r7	@, page, len.2750
	bl	snprintf	@
	ldr	r3, [fp, #-72]	@,
	movw	r2, #:lower16:.LC157	@,
	movt	r2, #:upper16:.LC157	@,
	ldr	r1, [r3, #4]	@ <variable>.StreamSegArray.SegBufWriteAddr, <variable>.StreamSegArray.SegBufWriteAddr
	movw	r3, #:lower16:.LC172	@,
	movt	r3, #:upper16:.LC172	@,
	str	r1, [sp, #0]	@ <variable>.StreamSegArray.SegBufWriteAddr,
	add	r7, r7, r0	@ len.2755, len.2750,
	rsb	r1, r7, r4	@, len.2755, count
	add	r0, r5, r7	@, page, len.2755
	bl	snprintf	@
	movw	ip, #:lower16:145256	@ tmp366,
	movt	ip, #:upper16:145256	@ tmp366,
	movw	r2, #:lower16:.LC173	@,
	movw	r3, #:lower16:.LC174	@,
	movt	r2, #:upper16:.LC173	@,
	ldr	r1, [r6, ip]	@ <variable>.BitRate, <variable>.BitRate
	movt	r3, #:upper16:.LC174	@,
	str	r1, [sp, #0]	@ <variable>.BitRate,
	add	r7, r7, r0	@ len.2760, len.2755,
	rsb	r1, r7, r4	@, len.2760, count
	add	r0, r5, r7	@, page, len.2760
	bl	snprintf	@
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	add	r7, r7, r0	@ len.2765, len.2760,
	rsb	r1, r7, r4	@, len.2765, count
	add	r0, r5, r7	@, page, len.2765
	bl	snprintf	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r2, #0	@ tmp375,
	mov	r1, #1	@ tmp376,
	str	r2, [ip, #0]	@ tmp375,
	ldr	r3, [fp, #4]	@ eof, eof
	str	r1, [r3, #0]	@ tmp376,* eof
	add	r7, r7, r0	@ len, len.2765,
.L443:
	mov	r0, r7	@, len
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_scd, .-vfmw_read_proc_scd
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1443:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp184,
	movt	r5, #:upper16:.LANCHOR0	@ tmp184,
	mov	r6, r0	@ ChanId, ChanId
	ldr	r0, [r5, r0, asl #2]	@ D.40228, s_pstVfmwChan
	ldr	r3, [r0, #904]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #15	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L446	@
.L458:
	.word	.L447
	.word	.L448
	.word	.L449
	.word	.L450
	.word	.L446
	.word	.L451
	.word	.L452
	.word	.L446
	.word	.L453
	.word	.L454
	.word	.L455
	.word	.L455
	.word	.L455
	.word	.L456
	.word	.L446
	.word	.L457
.L457:
	add	r0, r0, #912	@, D.40228,
	bl	MVC_DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L459:
	cmn	r4, #1	@ ret,
	beq	.L461	@,
	cmp	r4, #0	@ ret,
	bne	.L473	@,
	ldr	r3, [r5, #12]	@ g_event_report.2793, g_event_report
	cmp	r3, #0	@ g_event_report.2793,
	beq	.L465	@,
	sub	r2, fp, #28	@ tmp160,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2793
.L465:
	movw	r1, #:lower16:.LC176	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC176	@,
	bl	dprint_vfmw	@
.L464:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L446:
	mvn	r4, #0	@ ret,
.L461:
	ldr	r3, [r5, #12]	@ g_event_report.741, g_event_report
	cmp	r3, #0	@ g_event_report.741,
	beq	.L468	@,
	sub	r2, fp, #28	@ tmp156,,
	mov	r1, #1	@ tmp155,
	mov	r0, r6	@, ChanId
	str	r1, [r2, #-4]!	@ tmp155,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.741
.L468:
	movw	r1, #:lower16:.LC175	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC175	@,
	bl	dprint_vfmw	@
	b	.L464	@
.L447:
	add	r0, r0, #912	@, D.40228,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L448:
	add	r0, r0, #912	@, D.40228,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L449:
	add	r0, r0, #912	@, D.40228,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L450:
	add	r0, r0, #912	@, D.40228,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L451:
	add	r0, r0, #912	@, D.40228,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L452:
	add	r0, r0, #912	@, D.40228,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L453:
	add	r0, r0, #912	@, D.40228,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L454:
	add	r0, r0, #912	@, D.40228,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L455:
	add	r0, r0, #912	@, D.40228,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L456:
	add	r0, r0, #912	@, D.40228,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L459	@
.L473:
	movw	r0, #:lower16:g_chipID	@ tmp162,
	movt	r0, #:upper16:g_chipID	@ tmp162,
	ldr	r3, [r0, #0]	@ g_chipID, g_chipID
	cmp	r3, #10	@ g_chipID,
	bhi	.L464	@,
	mov	r1, #1	@ tmp165,
	mov	r3, r1, asl r3	@ tmp164, tmp165,
	tst	r3, #1856	@ tmp164,
	bne	.L467	@,
	tst	r3, #63	@ tmp164,
	beq	.L464	@,
	ldr	r3, [r5, #12]	@ g_event_report.2794, g_event_report
	cmp	r3, #0	@ g_event_report.2794,
	beq	.L468	@,
	sub	r2, fp, #28	@ tmp171,,
	mov	r0, r6	@, ChanId
	str	r1, [r2, #-4]!	@ tmp165,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2794
	b	.L468	@
.L467:
	ldr	r3, [r5, r6, asl #2]	@ tmp174, s_pstVfmwChan
	movw	lr, #:lower16:11199524	@ tmp175,
	movt	lr, #:upper16:11199524	@ tmp175,
	movw	r2, #:lower16:.LANCHOR0	@ tmp173,
	movt	r2, #:upper16:.LANCHOR0	@ tmp173,
	ldr	ip, [r3, lr]	@ <variable>.stSynExtraData.stChanOption.s32Btl1Dt2DEnable, <variable>.stSynExtraData.stChanOption.s32Btl1Dt2DEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.stChanOption.s32Btl1Dt2DEnable,
	beq	.L474	@,
	ldr	r3, [r2, #12]	@ g_event_report.2797, g_event_report
	cmp	r3, #0	@ g_event_report.2797,
	beq	.L470	@,
	sub	r2, fp, #28	@ tmp180,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2797
.L470:
	movw	r1, #:lower16:.LC178	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC178	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L464	@
.L474:
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	movw	r1, #:lower16:.LC177	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC177	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L464	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1436:
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
	beq	.L486	@,
	mul	r4, sl, r6	@ D.39834, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.39834, D.39834,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [fp, #-56]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [fp, #-48]	@, %sfp
	beq	.L477	@,
	cmp	r6, #0	@ Height,
	ble	.L478	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39834
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	r9, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L478	@,
	cmp	r9, #0	@ tmp187,
	beq	.L479	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39834
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L478	@,
.L479:
	mov	r1, r4	@, D.39834
	mov	r2, r8	@, fp
	add	r9, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, r9, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39834
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L479	@,
.L478:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	r9, r6, asr #1	@ D.39849, tmp165,
	cmp	r9, #0	@ D.39849,
	ble	.L480	@,
	ldr	r6, [fp, #-52]	@, %sfp
	add	r2, r4, #3	@ tmp169, D.39834,
	cmp	r4, #0	@ D.39834,
	ldr	r5, [fp, #-48]	@ pU, %sfp
	add	sl, sl, sl, lsr #31	@, tmp172, Width, Width,
	str	r7, [fp, #-52]	@ pFrameStore, %sfp
	movlt	r4, r2	@ D.39834, tmp169
	add	r2, r7, r6	@ pChrom, pFrameStore,
	ldr	r7, [fp, #4]	@ Stride, Stride
	add	lr, r5, r4, asr #2	@, pV, pU, D.39834,
	mov	r6, sl, asr #1	@ pretmp.2816, tmp172,
	mov	sl, #0	@ y.2849,
.L481:
	cmp	r6, #0	@ pretmp.2816,
	ble	.L484	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.2816
	sub	ip, r6, #1	@ tmp180, pretmp.2816,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.2832,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L499	@,
	cmp	ip, #0	@ tmp182,
	beq	.L482	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.2816
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.2832
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.2832
	mov	r0, #3	@ ivtmp.2832,
	beq	.L499	@,
.L482:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.2832,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.2832
	add	r0, ip, #1	@ ivtmp.2832, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.2816
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L482	@,
.L499:
	add	r5, r5, r6	@ pU, pU, pretmp.2816
	add	lr, lr, r6	@ pV, pV, pretmp.2816
.L484:
	add	sl, sl, #1	@ y.2849, y.2849,
	cmp	sl, r9	@ y.2849, D.39849
	addne	r2, r2, r7	@ pChrom, pChrom, Stride
	bne	.L481	@
.L500:
	ldr	r7, [fp, #-52]	@ pFrameStore, %sfp
.L480:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [fp, #-48]	@, %sfp
	bl	klib_fwrite	@
.L477:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, #0	@,
	beq	.L486	@,
	ldr	r0, [fp, #-48]	@, %sfp
	bl	OSAL_FreeVirMem	@
.L486:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1435:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	ldr	r3, [r3, #52]	@ D.39791, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39791,
	beq	.L511	@,
	mov	r0, #0	@,
	blx	r3	@ D.39791
.L507:
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_btl_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_btl_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #32]	@ D.39796, g_btl_hal_fun_ptr.pfun_BTLHAL_EnableInt
	cmp	r0, #0	@ D.39796,
	beq	.L508	@,
	blx	r0	@ D.39796
	ldmfd	sp, {fp, sp, pc}	@
.L508:
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #6529	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L511:
	mov	r0, r3	@, D.39791
	movw	r1, #:lower16:.LC179	@,
	movw	r2, #6516	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L507	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
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
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	ldr	r3, [r3, #48]	@ D.39774, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.39774,
	beq	.L518	@,
	mov	r0, #0	@,
	blx	r3	@ D.39774
.L514:
	bl	SCDDRV_MaskInt	@
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #:lower16:g_btl_hal_fun_ptr	@ tmp140,
	movt	r1, #:upper16:g_btl_hal_fun_ptr	@ tmp140,
	ldr	r0, [r1, #28]	@ D.39779, g_btl_hal_fun_ptr.pfun_BTLHAL_MaskInt
	cmp	r0, #0	@ D.39779,
	beq	.L515	@,
	blx	r0	@ D.39779
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {fp, sp, pc}	@
.L515:
	movw	r2, #6502	@,
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {fp, sp, pc}	@
.L518:
	mov	r0, r3	@, D.39774
	movw	r1, #:lower16:.LC179	@,
	movw	r2, #6485	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L514	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1427:
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
	beq	.L526	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.2919, s_pstVfmwChan
	ldr	r3, [r2, #896]	@ D.39625, <variable>.eVidStd
	cmp	r3, #0	@ D.39625,
	beq	.L527	@,
	cmp	r3, #15	@ D.39625,
	movweq	r3, #:lower16:11169396	@ tmp147,
	movteq	r3, #:upper16:11169396	@ tmp147,
	movne	r3, #2	@ tmp149,
	ldreq	r3, [r2, r3]	@ <variable>.stSynCtx.unSyntax.stMvcCtx.DPB.size,
	str	r3, [r6, #0]	@ tmp149,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L527:
	movw	r1, #27528	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L526:
	mov	r0, ip	@, tmp141
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #6242	@,
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
.LFB1452:
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
	mov	r4, r3	@ count, count
	mov	r5, r0	@ page, page
	bl	snprintf	@
	movw	r8, #:lower16:USE_FF_APT_EN	@ tmp318,
	movt	r8, #:upper16:USE_FF_APT_EN	@ tmp318,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC145	@,
	ldr	ip, [r8, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC145	@,
	movw	sl, #:lower16:.LANCHOR0	@,
	movt	sl, #:upper16:.LANCHOR0	@,
	str	sl, [fp, #-68]	@, %sfp
	str	ip, [sp, #0]	@ USE_FF_APT_EN,
	mov	r6, r0	@ D.40622,
	add	r0, r5, r0	@, page, D.40622
	rsb	r1, r6, r4	@, D.40622, count
	bl	snprintf	@
	movw	r1, #:lower16:g_pstTreeFsp	@,
	movt	r1, #:upper16:g_pstTreeFsp	@,
	str	r1, [fp, #-72]	@, %sfp
	mov	r8, r0	@ D.40624,
	ldr	r0, [fp, #-68]	@, %sfp
	ldr	r2, [r0, #116]	@, g_CurProcChan
	ldr	r0, [r1, #0]	@ g_pstTreeFsp.771, g_pstTreeFsp
	str	r2, [fp, #-64]	@, %sfp
	movw	r2, #40368	@ tmp322,
	ldr	r9, [fp, #-64]	@, %sfp
	mul	r9, r2, r9	@, tmp322,
	add	r1, r0, r9	@ D.40628, g_pstTreeFsp.771,
	str	r9, [fp, #-80]	@, %sfp
	ldr	r3, [r1, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #1	@ <variable>.eFspInstState,
	beq	.L562	@,
	movw	r7, #:lower16:g_pstFsp	@ tmp337,
	movt	r7, #:upper16:g_pstFsp	@ tmp337,
	ldr	r3, [fp, #-64]	@, %sfp
	movw	lr, #35112	@ tmp341,
	ldr	ip, [r7, #0]	@ g_pstFsp.773, g_pstFsp
	mov	r2, lr	@, tmp341
	mov	sl, #0	@ pTreeFs,
	str	sl, [fp, #-76]	@ pTreeFs, %sfp
	add	r0, ip, #69632	@, g_pstFsp.773,
	mla	r1, lr, r3, ip	@, tmp341,, g_pstFsp.773
	add	r0, r0, #592	@,,
	bl	memcpy	@
	ldr	r1, [r7, #0]	@ g_pstFsp, g_pstFsp
	add	r9, r1, #69632	@, g_pstFsp,
	add	r9, r9, #592	@,,
	str	r9, [fp, #-104]	@, %sfp
.L533:
	ldr	ip, [fp, #-64]	@, %sfp
	add	r6, r8, r6	@ len.3029, D.40624, D.40622
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	r7, [r2, ip, asl #2]	@ pChan, s_pstVfmwChan
	cmp	r7, #0	@ pChan,
	beq	.L534	@,
	add	r8, ip, #4	@ tmp352,,
	movw	lr, #:lower16:g_ChanCtx	@ tmp351,
	movt	lr, #:upper16:g_ChanCtx	@ tmp351,
	sub	r2, fp, #52	@,,
	sub	r3, fp, #56	@,,
	sub	r1, fp, #48	@,,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r9, [lr, r8, asl #2]	@ D.40646, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [fp, #-64]	@, %sfp
	bl	VCTRL_GetChanVoQue	@
	rsb	r1, r6, r4	@, len.3029, count
	cmp	r0, #0	@ pstDecQue
	streq	r0, [fp, #-88]	@ pstDecQue, %sfp
	streq	r0, [fp, #-92]	@ pstDecQue, %sfp
	ldrneh	r2, [r0, #8]	@, <variable>.tail
	streq	r0, [fp, #-96]	@ pstDecQue, %sfp
	strne	r2, [fp, #-88]	@, %sfp
	movw	r2, #:lower16:.LC183	@,
	ldrneh	r3, [r0, #4]	@, <variable>.history
	movt	r2, #:upper16:.LC183	@,
	strne	r3, [fp, #-96]	@, %sfp
	ldrneh	r0, [r0, #6]	@, <variable>.head
	ldr	r3, [fp, #-64]	@, %sfp
	strne	r0, [fp, #-92]	@, %sfp
	add	r0, r5, r6	@, page, len.3029
	bl	snprintf	@
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC184	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC184	@,
	sub	ip, r9, #1	@ tmp363, D.40646,
	str	ip, [sp, #0]	@ tmp363,
	add	r6, r0, r6	@ len.3041,, len.3029
	rsb	r1, r6, r4	@, len.3041, count
	add	r0, r5, r6	@, page, len.3041
	bl	snprintf	@
	ldr	r8, [r7, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC57	@,
	str	r8, [sp, #0]	@ <variable>.s32IsOpen,
	add	r9, r6, r0	@ len.3046, len.3041,
	rsb	r1, r9, r4	@, len.3046, count
	add	r0, r5, r9	@, page, len.3046
	bl	snprintf	@
	ldr	r1, [r7, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC185	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC185	@,
	str	r1, [sp, #0]	@ <variable>.s32IsRun,
	add	r8, r9, r0	@ len.3051, len.3046,
	rsb	r1, r8, r4	@, len.3051, count
	add	r0, r5, r8	@, page, len.3051
	bl	snprintf	@
	ldr	ip, [r7, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC186	@,
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	add	r6, r8, r0	@ len.3056, len.3051,
	rsb	r1, r6, r4	@, len.3056, count
	add	r0, r5, r6	@, page, len.3056
	bl	snprintf	@
	ldr	r1, [r7, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC187	@,
	str	r1, [sp, #0]	@ <variable>.eVidStd,
	add	r8, r6, r0	@ len.3061, len.3056,
	rsb	r1, r8, r4	@, len.3061, count
	add	r0, r5, r8	@, page, len.3061
	bl	snprintf	@
	ldr	r9, [r7, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC188	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC188	@,
	str	r9, [sp, #0]	@ <variable>.stChanCfg.s32ChanErrThr,
	add	r6, r8, r0	@ len.3066, len.3061,
	rsb	r1, r6, r4	@, len.3066, count
	add	r0, r5, r6	@, page, len.3066
	bl	snprintf	@
	ldr	ip, [r7, #56]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC189	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC189	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	add	r9, r6, r0	@ len.3071, len.3066,
	rsb	r1, r9, r4	@, len.3071, count
	add	r0, r5, r9	@, page, len.3071
	bl	snprintf	@
	ldr	r1, [r7, #60]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC190	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC190	@,
	str	r1, [sp, #0]	@ <variable>.stChanCfg.s32DecMode,
	add	r6, r9, r0	@ len.3076, len.3071,
	rsb	r1, r6, r4	@, len.3076, count
	add	r0, r5, r6	@, page, len.3076
	bl	snprintf	@
	ldr	r8, [r7, #64]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC191	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC191	@,
	str	r8, [sp, #0]	@ <variable>.stChanCfg.s32DecOrderOutput,
	add	r9, r6, r0	@ len.3081, len.3076,
	rsb	r1, r9, r4	@, len.3081, count
	add	r0, r5, r9	@, page, len.3081
	bl	snprintf	@
	ldr	ip, [r7, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC192	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC192	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile,
	add	r8, r9, r0	@ len.3086, len.3081,
	rsb	r1, r8, r4	@, len.3086, count
	add	r0, r5, r8	@, page, len.3086
	bl	snprintf	@
	ldr	r1, [r7, #44]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC193	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC193	@,
	str	r1, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion,
	add	r6, r8, r0	@ len.3091, len.3086,
	rsb	r1, r6, r4	@, len.3091, count
	add	r0, r5, r6	@, page, len.3091
	bl	snprintf	@
	ldr	ip, [r7, #40]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC194	@,
	str	ip, [sp, #0]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed,
	add	r8, r6, r0	@ len.3096, len.3091,
	rsb	r1, r8, r4	@, len.3096, count
	add	r0, r5, r8	@, page, len.3096
	bl	snprintf	@
	ldr	r9, [r7, #168]	@ <variable>.stChanMem_vdh.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC195	@,
	str	r9, [sp, #0]	@ <variable>.stChanMem_vdh.PhyAddr,
	add	r6, r8, r0	@ len.3101, len.3096,
	rsb	r1, r6, r4	@, len.3101, count
	add	r0, r5, r6	@, page, len.3101
	bl	snprintf	@
	ldr	r1, [r7, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC196	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC196	@,
	str	r1, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	add	r9, r6, r0	@ len.3106, len.3101,
	rsb	r1, r9, r4	@, len.3106, count
	add	r0, r5, r9	@, page, len.3106
	bl	snprintf	@
	ldr	ip, [r7, #180]	@ <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC197	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC197	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.PhyAddr,
	add	r6, r9, r0	@ len.3111, len.3106,
	rsb	r1, r6, r4	@, len.3111, count
	add	r0, r5, r6	@, page, len.3111
	bl	snprintf	@
	ldr	r8, [r7, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC198	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC198	@,
	str	r8, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	add	r9, r6, r0	@ len.3116, len.3111,
	rsb	r1, r9, r4	@, len.3116, count
	add	r0, r5, r9	@, page, len.3116
	bl	snprintf	@
	ldr	r1, [r7, #236]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC199	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC199	@,
	str	r1, [sp, #0]	@ <variable>.s32SdecMemAddr,
	add	r8, r9, r0	@ len.3121, len.3116,
	rsb	r1, r8, r4	@, len.3121, count
	add	r0, r5, r8	@, page, len.3121
	bl	snprintf	@
	ldr	ip, [r7, #240]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC200	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC200	@,
	str	ip, [sp, #0]	@ <variable>.s32SdecMemSize,
	add	r6, r8, r0	@ len.3126, len.3121,
	rsb	r1, r6, r4	@, len.3126, count
	add	r0, r5, r6	@, page, len.3126
	bl	snprintf	@
	ldr	r1, [r7, #224]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC201	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC201	@,
	str	r1, [sp, #0]	@ <variable>.s32OffLineDnrMemAddr,
	add	r8, r6, r0	@ len.3131, len.3126,
	rsb	r1, r8, r4	@, len.3131, count
	add	r0, r5, r8	@, page, len.3131
	bl	snprintf	@
	ldr	r9, [r7, #228]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC202	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC202	@,
	str	r9, [sp, #0]	@ <variable>.s32OffLineDNRMemSize,
	add	r6, r8, r0	@ len.3136, len.3131,
	rsb	r1, r6, r4	@, len.3136, count
	add	r0, r5, r6	@, page, len.3136
	bl	snprintf	@
	ldr	ip, [r7, #216]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC203	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC203	@,
	str	ip, [sp, #0]	@ <variable>.s32VdmChanMemAddr,
	add	r9, r6, r0	@ len.3141, len.3136,
	rsb	r1, r9, r4	@, len.3141, count
	add	r0, r5, r9	@, page, len.3141
	bl	snprintf	@
	ldr	r1, [r7, #220]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC204	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC204	@,
	str	r1, [sp, #0]	@ <variable>.s32VdmChanMemSize,
	add	r6, r9, r0	@ len.3146, len.3141,
	add	r0, r5, r6	@, page, len.3146
	rsb	r1, r6, r4	@, len.3146, count
	bl	snprintf	@
	ldr	r8, [r7, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	add	r6, r6, r0	@ len, len.3146,
	beq	.L563	@,
.L537:
	ldr	lr, [r7, #232]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	rsb	r1, r6, r4	@, len, count
	add	r0, r5, r6	@, page, len
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC206	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC206	@,
	str	lr, [sp, #0]	@ <variable>.s32ScdChanMemAddr,
	bl	snprintf	@
	ldr	r8, [r7, #244]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC207	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC207	@,
	str	r8, [sp, #0]	@ <variable>.s32ScdChanMemSize,
	movw	r8, #:lower16:-858993459	@ tmp546,
	movt	r8, #:upper16:-858993459	@ tmp546,
	add	r6, r0, r6	@ len.3160,, len
	rsb	r1, r6, r4	@, len.3160, count
	add	r0, r5, r6	@, page, len.3160
	bl	snprintf	@
	ldr	r1, [fp, #-52]	@ ReadNum, ReadNum
	ldr	ip, [fp, #-56]	@ NewNum, NewNum
	movw	r2, #:lower16:.LC208	@,
	ldr	r9, [fp, #-48]	@ RefNum, RefNum
	movt	r2, #:upper16:.LC208	@,
	str	r1, [sp, #4]	@ ReadNum,
	movw	r3, #:lower16:.LC209	@,
	movt	r3, #:upper16:.LC209	@,
	str	ip, [sp, #8]	@ NewNum,
	str	r9, [sp, #0]	@ RefNum,
	add	r6, r6, r0	@ len.3165, len.3160,
	rsb	r1, r6, r4	@, len.3165, count
	add	r0, r5, r6	@, page, len.3165
	bl	snprintf	@
	ldr	r1, [fp, #-92]	@, %sfp
	ldr	lr, [fp, #-88]	@, %sfp
	movw	r2, #:lower16:.LC210	@,
	ldr	r9, [fp, #-96]	@, %sfp
	movt	r2, #:upper16:.LC210	@,
	str	r1, [sp, #4]	@,
	movw	r3, #:lower16:.LC211	@,
	movt	r3, #:upper16:.LC211	@,
	str	lr, [sp, #8]	@,
	str	r9, [sp, #0]	@,
	add	r6, r6, r0	@ len.3170, len.3165,
	rsb	r1, r6, r4	@, len.3170, count
	add	r0, r5, r6	@, page, len.3170
	bl	snprintf	@
	movw	ip, #:lower16:11199000	@ tmp505,
	movt	ip, #:upper16:11199000	@ tmp505,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC212	@,
	movt	r2, #:upper16:.LC49	@,
	ldr	r9, [r7, ip]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	movt	r3, #:upper16:.LC212	@,
	str	r9, [sp, #0]	@ <variable>.stSynExtraData.s32DecMode,
	add	r9, r6, r0	@ len.3175, len.3170,
	rsb	r1, r9, r4	@, len.3175, count
	add	r0, r5, r9	@, page, len.3175
	bl	snprintf	@
	movw	r1, #:lower16:11199004	@ tmp511,
	movt	r1, #:upper16:11199004	@ tmp511,
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC213	@,
	movt	r2, #:upper16:.LC49	@,
	ldr	ip, [r7, r1]	@ <variable>.stSynExtraData.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	movt	r3, #:upper16:.LC213	@,
	str	ip, [sp, #0]	@ <variable>.stSynExtraData.s32DecOrderOutput,
	add	r6, r9, r0	@ len.3180, len.3175,
	rsb	r1, r6, r4	@, len.3180, count
	add	r0, r5, r6	@, page, len.3180
	bl	snprintf	@
	ldr	r1, [r7, #384]	@ <variable>.stRecentImg.format, <variable>.stRecentImg.format
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC214	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC214	@,
	str	r1, [sp, #0]	@ <variable>.stRecentImg.format,
	add	r6, r6, r0	@ len.3185, len.3180,
	rsb	r1, r6, r4	@, len.3185, count
	add	r0, r5, r6	@, page, len.3185
	bl	snprintf	@
	ldr	r9, [r7, #552]	@ <variable>.stRecentImg.eFramePackingType, <variable>.stRecentImg.eFramePackingType
	movw	r2, #:lower16:.LC157	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r2, #:upper16:.LC157	@,
	movt	r3, #:upper16:.LC215	@,
	str	r9, [sp, #0]	@ <variable>.stRecentImg.eFramePackingType,
	add	r9, r6, r0	@ len.3190, len.3185,
	mov	r6, #300	@ tmp537,
	rsb	r1, r9, r4	@, len.3190, count
	add	r0, r5, r9	@, page, len.3190
	bl	snprintf	@
	ldr	ip, [r7, #412]	@ D.40723, <variable>.stRecentImg.frame_rate
	movw	r2, #:lower16:.LC216	@,
	movw	r3, #:lower16:.LC217	@,
	movt	r2, #:upper16:.LC216	@,
	movt	r3, #:upper16:.LC217	@,
	mov	r1, ip, asl #22	@ tmp528, D.40723,
	mov	r7, ip, lsr #10	@ tmp527, D.40723,
	str	r7, [sp, #0]	@ tmp527,
	mov	ip, #100	@ tmp531,
	mov	r7, r1, lsr #22	@ tmp528, tmp528,
	mul	r1, ip, r7	@ tmp530, tmp531, tmp528
	add	ip, r1, #512	@ tmp532, tmp530,
	mov	r7, ip, lsr #10	@ tmp533, tmp532,
	str	r7, [sp, #4]	@ tmp533,
	add	r7, r9, r0	@ len.3195, len.3190,
	rsb	r1, r7, r4	@, len.3195, count
	add	r0, r5, r7	@, page, len.3195
	bl	snprintf	@
	ldr	r3, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-68]	@, %sfp
	mla	r6, r6, r3, r2	@ tmp538, tmp537,,
	movw	r2, #:lower16:.LC218	@,
	movw	r3, #:lower16:.LC219	@,
	movt	r2, #:upper16:.LC218	@,
	movt	r3, #:upper16:.LC219	@,
	ldr	ip, [r6, #136]	@ D.40730, <variable>.u32FrFrameRate
	umull	r9, r1, r8, ip	@, tmp545, tmp546, D.40730
	mov	r9, r1, lsr #3	@ tmp544, tmp545,
	str	r9, [sp, #0]	@ tmp544,
	add	r1, r9, r9, asl #2	@, tmp552, tmp544, tmp544,
	sub	r9, ip, r1, asl #1	@ tmp554, D.40730, tmp552,
	str	r9, [sp, #4]	@ tmp554,
	add	r7, r7, r0	@ len.3201, len.3195,
	rsb	r1, r7, r4	@, len.3201, count
	add	r0, r5, r7	@, page, len.3201
	bl	snprintf	@
	ldr	r3, [fp, #-68]	@, %sfp
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	ldr	ip, [r3, #64]	@ D.40734, <variable>.u32VaVdmLoad
	movw	r3, #:lower16:.LC220	@,
	movt	r3, #:upper16:.LC220	@,
	umull	r9, r1, r8, ip	@, tmp561, tmp546, D.40734
	mov	r9, r1, lsr #3	@ tmp560, tmp561,
	str	r9, [sp, #0]	@ tmp560,
	add	lr, r9, r9, asl #2	@, tmp568, tmp560, tmp560,
	sub	r1, ip, lr, asl #1	@ tmp570, D.40734, tmp568,
	str	r1, [sp, #4]	@ tmp570,
	add	r7, r7, r0	@ len.3206, len.3201,
	rsb	r1, r7, r4	@, len.3206, count
	add	r0, r5, r7	@, page, len.3206
	bl	snprintf	@
	ldr	r9, [fp, #-68]	@, %sfp
	movw	r2, #:lower16:.LC54	@,
	movw	r3, #:lower16:.LC221	@,
	movt	r2, #:upper16:.LC54	@,
	movt	r3, #:upper16:.LC221	@,
	ldr	ip, [r9, #128]	@ D.40738, <variable>.u32VaVdmLoad
	umull	r9, lr, r8, ip	@, tmp577, tmp546, D.40738
	mov	r1, lr, lsr #3	@ tmp576, tmp577,
	str	r1, [sp, #0]	@ tmp576,
	add	r8, r1, r1, asl #2	@, tmp584, tmp576, tmp576,
	sub	lr, ip, r8, asl #1	@ tmp586, D.40738, tmp584,
	str	lr, [sp, #4]	@ tmp586,
	add	r8, r7, r0	@ len.3212, len.3206,
	rsb	r1, r8, r4	@, len.3212, count
	add	r0, r5, r8	@, page, len.3212
	bl	snprintf	@
	ldr	r1, [r6, #140]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC222	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC222	@,
	str	r1, [sp, #0]	@ <variable>.u32SkipFind,
	add	r7, r8, r0	@ len.3218, len.3212,
	rsb	r1, r7, r4	@, len.3218, count
	add	r0, r5, r7	@, page, len.3218
	bl	snprintf	@
	ldr	ip, [r6, #144]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC223	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC223	@,
	str	ip, [sp, #0]	@ <variable>.u32SkipDiscard,
	add	r6, r7, r0	@ len.3223, len.3218,
	rsb	r1, r6, r4	@, len.3223, count
	add	r0, r5, r6	@, page, len.3223
	bl	snprintf	@
	ldr	r8, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-80]	@, %sfp
	ldr	r2, [r8, #0]	@ g_pstTreeFsp, g_pstTreeFsp
	add	r3, r2, r1	@ tmp612, g_pstTreeFsp,
	ldr	r7, [r3, #112]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r7, #1	@ <variable>.eFspInstState,
	add	r6, r6, r0	@ len.3228, len.3223,
	beq	.L564	@,
	ldr	r0, [fp, #-104]	@, %sfp
	rsb	r1, r6, r4	@, len.3228, count
	movw	r2, #:lower16:.LC224	@,
	movw	r3, #:lower16:.LC238	@,
	movt	r2, #:upper16:.LC224	@,
	movt	r3, #:upper16:.LC238	@,
	ldrsb	r8, [r0, #44]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	add	r0, r5, r6	@, page, len.3228
	str	r8, [sp, #0]	@ <variable>.stInstCfg.s32DispLoopEnable,
	bl	snprintf	@
	ldr	r7, [fp, #-104]	@, %sfp
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC239	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC239	@,
	mov	r8, #0	@ ivtmp.3021,
	ldr	sl, [r7, #56]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	sl, [sp, #0]	@ <variable>.stInstCfg.s32DecFsWidth,
	mov	sl, #1	@ ivtmp.3022,
	add	r6, r0, r6	@ len.3306,, len.3228
	rsb	r1, r6, r4	@, len.3306, count
	add	r0, r5, r6	@, page, len.3306
	bl	snprintf	@
	ldr	r7, [fp, #-104]	@ ivtmp.3025, %sfp
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC240	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC240	@,
	ldr	r1, [r7, #60]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	add	r9, r6, r0	@ len.3311, len.3306,
	rsb	r1, r9, r4	@, len.3311, count
	add	r0, r5, r9	@, page, len.3311
	bl	snprintf	@
	ldr	r3, [fp, #-104]	@, %sfp
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	ldr	ip, [r3, #72]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	movw	r3, #:lower16:.LC241	@,
	movt	r3, #:upper16:.LC241	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsWidth,
	add	r6, r9, r0	@ len.3316, len.3311,
	rsb	r1, r6, r4	@, len.3316, count
	add	r0, r5, r6	@, page, len.3316
	bl	snprintf	@
	ldr	r9, [fp, #-104]	@, %sfp
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC242	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC242	@,
	ldr	r1, [r9, #76]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DispFsHeight,
	add	r6, r6, r0	@ len.3321, len.3316,
	rsb	r1, r6, r4	@, len.3321, count
	add	r0, r5, r6	@, page, len.3321
	bl	snprintf	@
	ldrsb	ip, [r9, #49]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC243	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC243	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDecFsNum,
	add	r6, r6, r0	@ len.3326, len.3321,
	rsb	r1, r6, r4	@, len.3326, count
	add	r0, r5, r6	@, page, len.3326
	bl	snprintf	@
	ldrsb	r1, [r9, #51]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC244	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC244	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDispFsNum,
	add	r6, r6, r0	@ len.3331, len.3326,
	rsb	r1, r6, r4	@, len.3331, count
	add	r0, r5, r6	@, page, len.3331
	bl	snprintf	@
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC245	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC245	@,
	mov	ip, #64	@ tmp744,
	str	ip, [sp, #0]	@ tmp744,
	add	r9, r6, r0	@ len.3336, len.3331,
	add	r0, r5, r9	@, page, len.3336
	rsb	r1, r9, r4	@, len.3336, count
	bl	snprintf	@
	add	r6, r9, r0	@ len.3027, len.3336,
	ldr	r9, [fp, #-104]	@ pFsp, %sfp
	b	.L545	@
.L567:
	tst	r8, #15	@ ivtmp.3021,
	beq	.L565	@,
.L547:
	ldrsb	lr, [r7, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	add	r0, r5, r6	@, page, len.3027
	ldrsb	r3, [r7, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	rsb	r1, r6, r4	@, len.3027, count
	movw	r2, #:lower16:.LC235	@,
	movt	r2, #:upper16:.LC235	@,
	str	lr, [sp, #0]	@ <variable>.s32DispState,
	bl	snprintf	@
	cmp	sl, #63	@ ivtmp.3022,
	add	r6, r6, r0	@ len.3027, len.3027,
	bgt	.L566	@,
.L548:
	add	r8, r8, #1	@ ivtmp.3021, ivtmp.3021,
	add	sl, sl, #1	@ ivtmp.3022, ivtmp.3022,
	add	r7, r7, #464	@ ivtmp.3025, ivtmp.3025,
.L545:
	cmp	r8, #0	@ ivtmp.3021,
	movw	r2, #:lower16:.LC235	@,
	add	r0, r5, r6	@, page, len.3027
	rsb	r1, r6, r4	@, len.3027, count
	movt	r2, #:upper16:.LC235	@,
	bne	.L567	@,
	ldrsb	lr, [r7, #81]	@ <variable>.s32DispState, <variable>.s32DispState
	ldrsb	r3, [r7, #80]	@ <variable>.s32IsRef, <variable>.s32IsRef
	str	lr, [sp, #0]	@ <variable>.s32DispState,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3027, len.3027,
	b	.L548	@
.L565:
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3027, len.3027,
	b	.L547	@
.L569:
	str	r9, [fp, #-104]	@ pFsp, %sfp
.L553:
	ldr	r7, [fp, #-104]	@, %sfp
	rsb	r1, r6, r4	@, len.3217, count
	add	r0, r5, r6	@, page, len.3217
	movw	r2, #:lower16:.LC224	@,
	movw	r3, #:lower16:.LC249	@,
	movt	r2, #:upper16:.LC224	@,
	ldrsb	lr, [r7, #0]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	movt	r3, #:upper16:.LC249	@,
	str	lr, [sp, #0]	@ <variable>.s32PmvNum,
	bl	snprintf	@
	ldr	r3, [fp, #-104]	@, %sfp
	movw	r2, #:lower16:.LC224	@,
	movt	r2, #:upper16:.LC224	@,
	ldrsb	r1, [r3, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r3, #:lower16:.LC247	@,
	movt	r3, #:upper16:.LC247	@,
	str	r1, [sp, #0]	@ <variable>.s32DecFsNum,
	add	r6, r0, r6	@ len.3385,, len.3217
	add	r0, r5, r6	@, page, len.3385
	rsb	r1, r6, r4	@, len.3385, count
	bl	snprintf	@
	add	r7, r6, r0	@ len.3028, len.3385,
.L542:
	add	r0, r5, r7	@, page, len.3028
	rsb	r1, r7, r4	@, len.3028, count
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	ldr	r8, [fp, #-84]	@, %sfp
	mov	r6, #0	@ tmp801,
	mov	r2, #1	@ tmp802,
	str	r6, [r8, #0]	@ tmp801,
	ldr	ip, [fp, #4]	@ eof, eof
	str	r2, [ip, #0]	@ tmp802,* eof
	add	r6, r0, r7	@ len.3029,, len.3028
.L534:
	mov	r0, r6	@, len.3029
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L566:
	str	r9, [fp, #-104]	@ pFsp, %sfp
	add	r0, r5, r6	@, page, len.3027
	ldrsb	ip, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	rsb	r1, r6, r4	@, len.3027, count
	movw	r2, #:lower16:.LC246	@,
	movw	r3, #:lower16:.LC247	@,
	movt	r2, #:upper16:.LC246	@,
	movt	r3, #:upper16:.LC247	@,
	str	ip, [sp, #0]	@ <variable>.s32DecFsNum,
	bl	snprintf	@
	ldrsb	r2, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	add	r6, r0, r6	@ len.3211,, len.3027
	ble	.L549	@,
	add	r3, r9, #29696	@ ivtmp.3017, pFsp,
	ldr	r9, [fp, #-104]	@ pFsp, %sfp
	add	r7, r3, #120	@ ivtmp.3017, ivtmp.3017,
	mov	r8, #0	@ j.3034,
.L550:
	ldrsb	lr, [r7, #2]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r6, r4	@, len.3211, count
	ldrsb	r3, [r7, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r5, r6	@, page, len.3211
	movw	r2, #:lower16:.LC235	@,
	movt	r2, #:upper16:.LC235	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldrsb	r1, [r9, #21]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r8, r8, #1	@ j.3034, j.3034,
	add	r7, r7, #40	@ ivtmp.3017, ivtmp.3017,
	cmp	r1, r8	@ <variable>.s32DecFsNum, j.3034
	add	r6, r6, r0	@ len.3211, len.3211,
	ble	.L568	@,
	tst	r8, #15	@ j.3034,
	bne	.L550	@,
	add	r0, r5, r6	@, page, len.3211
	rsb	r1, r6, r4	@, len.3211, count
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3211, len.3211,
	b	.L550	@
.L568:
	str	r9, [fp, #-104]	@ pFsp, %sfp
.L549:
	ldr	r0, [fp, #-104]	@, %sfp
	rsb	r1, r6, r4	@, len.3211, count
	movw	r2, #:lower16:.LC224	@,
	movw	r3, #:lower16:.LC248	@,
	movt	r2, #:upper16:.LC224	@,
	movt	r3, #:upper16:.LC248	@,
	ldrsb	r8, [r0, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r0, r5, r6	@, page, len.3211
	str	r8, [sp, #0]	@ <variable>.s32DispFsNum,
	bl	snprintf	@
	ldr	r1, [fp, #-104]	@, %sfp
	ldrsb	r7, [r1, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r7, #0	@ <variable>.s32DispFsNum,
	add	r6, r0, r6	@ len.3217,, len.3211
	ble	.L553	@,
	add	r9, r1, #32256	@ ivtmp.3011,,
	mov	r8, #0	@ j.3035,
	add	r7, r9, #120	@ ivtmp.3011, ivtmp.3011,
	mov	r9, r1	@ pFsp,
.L554:
	ldrsb	ip, [r7, #2]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r6, r4	@, len.3217, count
	ldrsb	r3, [r7, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r5, r6	@, page, len.3217
	movw	r2, #:lower16:.LC235	@,
	movt	r2, #:upper16:.LC235	@,
	str	ip, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldrsb	r2, [r9, #22]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r8, r8, #1	@ j.3035, j.3035,
	add	r7, r7, #40	@ ivtmp.3011, ivtmp.3011,
	cmp	r2, r8	@ <variable>.s32DispFsNum, j.3035
	add	r6, r6, r0	@ len.3217, len.3217,
	ble	.L569	@,
	tst	r8, #15	@ j.3035,
	bne	.L554	@,
	add	r0, r5, r6	@, page, len.3217
	rsb	r1, r6, r4	@, len.3217, count
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	add	r6, r6, r0	@ len.3217, len.3217,
	b	.L554	@
.L562:
	add	lr, r0, #79872	@, g_pstTreeFsp.771,
	add	r0, lr, #864	@,,
	bl	memcpy	@
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r2, [r0, #0]	@ g_pstTreeFsp.3032, g_pstTreeFsp
	add	sl, r2, r9	@ temp.3033, g_pstTreeFsp.3032,
	add	r1, r2, #79872	@, g_pstTreeFsp.3032,
	add	r3, r1, #864	@,,
	str	r3, [fp, #-76]	@, %sfp
	ldrsb	r3, [sl, #1]	@ D.40634, <variable>.s8LevelID
	cmp	r3, #1	@ D.40634,
	beq	.L531	@,
	cmp	r3, #2	@ D.40634,
	beq	.L570	@,
	movw	r1, #:lower16:.LC182	@,
	movw	r2, #7614	@,
	movt	r1, #:upper16:.LC182	@,
	mov	r0, #0	@,
	mvn	r6, #0	@ len.3029,
	bl	dprint_vfmw	@
	b	.L534	@
.L564:
	ldr	r0, [fp, #-76]	@, %sfp
	rsb	r1, r6, r4	@, len.3228, count
	movw	r2, #:lower16:.LC224	@,
	movw	r3, #:lower16:.LC225	@,
	movt	r2, #:upper16:.LC224	@,
	movt	r3, #:upper16:.LC225	@,
	ldrsb	lr, [r0, #116]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	add	r0, r5, r6	@, page, len.3228
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32DispLoopEnable,
	bl	snprintf	@
	ldr	r3, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	ldr	ip, [r3, #128]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movw	r3, #:lower16:.LC226	@,
	movt	r3, #:upper16:.LC226	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsWidth,
	add	r8, r0, r6	@ len.3237,, len.3228
	rsb	r1, r8, r4	@, len.3237, count
	add	r0, r5, r8	@, page, len.3237
	bl	snprintf	@
	ldr	r2, [fp, #-76]	@, %sfp
	movw	r3, #:lower16:.LC227	@,
	movt	r3, #:upper16:.LC227	@,
	ldr	r7, [r2, #132]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	str	r7, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	add	r6, r8, r0	@ len.3242, len.3237,
	rsb	r1, r6, r4	@, len.3242, count
	add	r0, r5, r6	@, page, len.3242
	bl	snprintf	@
	ldr	r8, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC228	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC228	@,
	ldr	r1, [r8, #144]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32DispFsWidth,
	add	r7, r6, r0	@ len.3247, len.3242,
	rsb	r1, r7, r4	@, len.3247, count
	add	r0, r5, r7	@, page, len.3247
	bl	snprintf	@
	ldr	ip, [r8, #148]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC229	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC229	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsHeight,
	add	r6, r7, r0	@ len.3252, len.3247,
	rsb	r1, r6, r4	@, len.3252, count
	add	r0, r5, r6	@, page, len.3252
	bl	snprintf	@
	ldrsb	r1, [r8, #121]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC230	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC230	@,
	str	r1, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDecFsNum,
	add	r7, r6, r0	@ len.3257, len.3252,
	rsb	r1, r7, r4	@, len.3257, count
	add	r0, r5, r7	@, page, len.3257
	bl	snprintf	@
	ldrsb	ip, [r8, #123]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC231	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC231	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDispFsNum,
	add	r6, r7, r0	@ len.3262, len.3257,
	rsb	r1, r6, r4	@, len.3262, count
	add	r0, r5, r6	@, page, len.3262
	bl	snprintf	@
	ldrsb	r1, [r8, #1]	@ <variable>.s8LevelID, <variable>.s8LevelID
	movw	r2, #:lower16:.LC49	@,
	movw	r3, #:lower16:.LC232	@,
	movt	r2, #:upper16:.LC49	@,
	movt	r3, #:upper16:.LC232	@,
	str	r1, [sp, #0]	@ <variable>.s8LevelID,
	add	r7, r6, r0	@ len.3267, len.3262,
	rsb	r1, r7, r4	@, len.3267, count
	add	r0, r5, r7	@, page, len.3267
	bl	snprintf	@
	ldr	ip, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	movw	r2, #:lower16:.LC233	@,
	movw	r3, #:lower16:.LC234	@,
	movt	r2, #:upper16:.LC233	@,
	movt	r3, #:upper16:.LC234	@,
	str	ip, [sp, #0]	@ <variable>.s32DispFsNum,
	add	r6, r7, r0	@ len.3272, len.3267,
	add	r0, r5, r6	@, page, len.3272
	rsb	r1, r6, r4	@, len.3272, count
	bl	snprintf	@
	ldr	r3, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r3, #0	@ <variable>.s32DispFsNum,
	add	r7, r6, r0	@ len.3200, len.3272,
	ble	.L539	@,
	movw	r9, #:lower16:1717986919	@ tmp821,
	add	r8, sl, #2608	@ ivtmp.3005, pTreeFs,
	movt	r9, #:upper16:1717986919	@ tmp821,
	mov	r6, #0	@ j,
	b	.L541	@
.L540:
	ldrsb	lr, [r8, #2]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r7, r4	@, len.3200, count
	ldrsb	r3, [r8, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r5, r7	@, page, len.3200
	movw	r2, #:lower16:.LC235	@,
	movt	r2, #:upper16:.LC235	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldr	r1, [sl, #4]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r8, r8, #40	@ ivtmp.3005, ivtmp.3005,
	cmp	r1, r6	@ <variable>.s32DispFsNum, j
	add	r7, r7, r0	@ len.3200, len.3200,
	ble	.L539	@,
.L541:
	smull	ip, r2, r9, r6	@, tmp662, tmp821, j
	mov	r3, r6, asr #31	@ tmp665, j,
	rsb	ip, r3, r2, asr #2	@, tmp661, tmp665, tmp662,
	add	r1, ip, ip, asl #2	@, tmp668, tmp661, tmp661,
	cmp	r6, r1, asl #1	@ j, tmp668,
	add	r6, r6, #1	@ j, j,
	bne	.L540	@,
	rsb	r1, r7, r4	@, len.3200, count
	add	r0, r5, r7	@, page, len.3200
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	add	r7, r7, r0	@ len.3200, len.3200,
	b	.L540	@
.L539:
	ldr	r8, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r5, r7	@, page, len.3200
	rsb	r1, r7, r4	@, len.3200, count
	movw	r2, #:lower16:.LC236	@,
	movw	r3, #:lower16:.LC237	@,
	movt	r2, #:upper16:.LC236	@,
	movt	r3, #:upper16:.LC237	@,
	str	r8, [sp, #0]	@ <variable>.s32DecFsNum,
	bl	snprintf	@
	ldr	r6, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r6, #0	@ <variable>.s32DecFsNum,
	add	r7, r0, r7	@ len.3028,, len.3200
	ble	.L542	@,
	movw	r9, #:lower16:1717986919	@ tmp818,
	mov	r8, sl	@ ivtmp.3001, pTreeFs
	movt	r9, #:upper16:1717986919	@ tmp818,
	mov	r6, #0	@ j.3230,
	b	.L544	@
.L543:
	ldrsb	lr, [r8, #50]	@ <variable>.DispState, <variable>.DispState
	rsb	r1, r7, r4	@, len.3028, count
	ldrsb	r3, [r8, #48]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r0, r5, r7	@, page, len.3028
	movw	r2, #:lower16:.LC235	@,
	movt	r2, #:upper16:.LC235	@,
	str	lr, [sp, #0]	@ <variable>.DispState,
	bl	snprintf	@
	ldr	r1, [sl, #0]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r8, r8, #40	@ ivtmp.3001, ivtmp.3001,
	cmp	r1, r6	@ <variable>.s32DecFsNum, j.3230
	add	r7, r7, r0	@ len.3028, len.3028,
	ble	.L542	@,
.L544:
	smull	lr, r2, r9, r6	@, tmp687, tmp818, j.3230
	mov	r3, r6, asr #31	@ tmp690, j.3230,
	rsb	ip, r3, r2, asr #2	@, tmp686, tmp690, tmp687,
	add	r0, ip, ip, asl #2	@, tmp693, tmp686, tmp686,
	cmp	r6, r0, asl #1	@ j.3230, tmp693,
	add	r6, r6, #1	@ j.3230, j.3230,
	bne	.L543	@,
	rsb	r1, r7, r4	@, len.3028, count
	add	r0, r5, r7	@, page, len.3028
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	bl	snprintf	@
	add	r7, r7, r0	@ len.3028, len.3028,
	b	.L543	@
.L570:
	add	sl, sl, #35072	@ pTreeFs, temp.3033,
	mov	r3, #0	@,
	add	sl, sl, #56	@ pTreeFs, pTreeFs,
	str	r3, [fp, #-104]	@, %sfp
	b	.L533	@
.L563:
	ldr	ip, [r7, #860]	@ <variable>.stRecentUsrdecFrame.s32YWidth, <variable>.stRecentUsrdecFrame.s32YWidth
	add	r0, r5, r6	@, page, len
	ldr	r3, [r7, #840]	@ <variable>.stRecentUsrdecFrame.enFmt, <variable>.stRecentUsrdecFrame.enFmt
	rsb	r1, r6, r4	@, len, count
	movw	r2, #:lower16:.LC205	@,
	movt	r2, #:upper16:.LC205	@,
	str	ip, [sp, #0]	@ <variable>.stRecentUsrdecFrame.s32YWidth,
	mov	ip, #848	@ tmp478,
	ldr	lr, [r7, #864]	@ <variable>.stRecentUsrdecFrame.s32YHeight, <variable>.stRecentUsrdecFrame.s32YHeight
	str	lr, [sp, #4]	@ <variable>.stRecentUsrdecFrame.s32YHeight,
	ldr	r8, [r7, #872]	@ <variable>.stRecentUsrdecFrame.s32LumaStride, <variable>.stRecentUsrdecFrame.s32LumaStride
	str	r8, [sp, #8]	@ <variable>.stRecentUsrdecFrame.s32LumaStride,
	ldr	r9, [r7, #884]	@ <variable>.stRecentUsrdecFrame.s32ChromStride, <variable>.stRecentUsrdecFrame.s32ChromStride
	str	r9, [sp, #12]	@ <variable>.stRecentUsrdecFrame.s32ChromStride,
	ldrd	r8, [r7, ip]	@, pChan, tmp478
	strd	r8, [sp, #16]	@,,
	bl	snprintf	@
	add	r6, r6, r0	@ len, len,
	b	.L537	@
.L531:
	add	r7, sl, #29696	@ pTreeFs, temp.3033,
	mov	ip, #0	@,
	add	sl, r7, #224	@ pTreeFs, pTreeFs,
	str	ip, [fp, #-104]	@, %sfp
	b	.L533	@
	.fnend
	.size	vfmw_read_proc_dec, .-vfmw_read_proc_dec
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
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
	cmp	r0, #1	@ ChanId,
	bhi	.L572	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp147,
	movt	r2, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r5, [r2, r0, asl #2]	@ D.38074, s_pstVfmwChan
	cmp	r5, #0	@ D.38074,
	beq	.L572	@,
	ldr	r3, [r5, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	beq	.L592	@,
.L575:
	mov	r4, #0	@ pDecParam,
.L574:
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L572:
	mov	r3, r0	@, ChanId
	movw	r2, #3756	@,
	mov	r4, #0	@ pDecParam,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC250	@,
	movt	r1, #:upper16:.LC250	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L592:
	ldr	r0, [r5, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #1	@ <variable>.s32IsRun,
	bne	.L575	@,
	ldr	r1, [r5, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L575	@
.L588:
	.word	.L587
	.word	.L591
	.word	.L579
	.word	.L591
	.word	.L575
	.word	.L591
	.word	.L591
	.word	.L575
	.word	.L591
	.word	.L591
	.word	.L585
	.word	.L585
	.word	.L585
	.word	.L591
	.word	.L575
	.word	.L587
.L585:
	ldr	r4, [r2, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r4, #1	@ g_VdmCharacter,
	beq	.L575	@,
.L591:
	ldr	r4, [r5, #916]	@ pDecParam,
.L589:
	cmp	r4, #0	@ pDecParam,
	beq	.L574	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #32]	@, <variable>.u32timeLastDecParamReady
	b	.L574	@
.L587:
	ldr	r4, [r5, #1272]	@ pDecParam,
	b	.L589	@
.L579:
	ldr	r4, [r5, #1948]	@ pDecParam, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	b	.L589	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ExtAccGetDecParam
	.type	VCTRL_ExtAccGetDecParam, %function
VCTRL_ExtAccGetDecParam:
	.fnstart
.LFB1433:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp247,
	movt	r4, #:upper16:.LANCHOR0	@ tmp247,
	mov	r5, r0	@ pDecParamInfo, pDecParamInfo
	add	r0, r4, #728	@, tmp247,
	bl	OSAL_SpinLock	@
	add	r0, r4, #776	@, tmp247,
	bl	OSAL_SpinLock	@
	ldr	r7, [r5, #0]	@ D.39715, <variable>.ChanID
	cmn	r7, #1	@ D.39715,
	beq	.L623	@,
	cmp	r7, #1	@ D.39715,
	bls	.L624	@,
.L609:
	mov	r2, r7	@, D.39715
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC251	@,
	movt	r1, #:upper16:.LC251	@,
	bl	dprint_vfmw	@
	mov	ip, #0	@ tmp202,
	str	ip, [r5, #8]	@ tmp202, <variable>.pDecParam
.L595:
	ldr	r0, .L632	@,
	bl	OSAL_SpinUnLock	@
	ldr	r0, .L632+4	@,
	bl	OSAL_SpinUnLock	@
	mvn	r0, #0	@ D.39750,
.L608:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L623:
	movw	r6, #:lower16:g_ChanCtx	@ tmp250,
	movt	r6, #:upper16:g_ChanCtx	@ tmp250,
	ldr	r7, [r6, #8]	@ D.39721, g_ChanCtx.ChanIdTabByPrior
	cmp	r7, #0	@ D.39721,
	blt	.L595	@,
	cmp	r7, #1	@ D.39721,
	bls	.L596	@,
.L598:
	movw	r1, #:lower16:.LC251	@,
	mov	r2, r7	@, D.39721
	movt	r1, #:upper16:.LC251	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L597:
	ldr	r7, [r6, #12]	@ D.39721, g_ChanCtx.ChanIdTabByPrior
	cmp	r7, #0	@ D.39721,
	blt	.L595	@,
	cmp	r7, #1	@ D.39721,
	bls	.L625	@,
.L603:
	mov	r2, r7	@, D.39721
	movw	r1, #:lower16:.LC251	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC251	@,
	bl	dprint_vfmw	@
	b	.L595	@
.L596:
	ldr	r3, [r4, r7, asl #2]	@ D.41353, s_pstVfmwChan
	cmp	r3, #0	@ D.41353,
	beq	.L598	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L598	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L598	@,
	ldr	r1, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L598	@,
	ldr	r3, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L598	@,
	mov	r0, r7	@, D.39721
	bl	VDMDRV_IsChanDec	@
	cmp	r0, #1	@,
	beq	.L599	@,
	mov	r0, r7	@, D.39721
	bl	VCTRL_GetDecParam	@
	subs	r2, r0, #0	@ pDecParam.3488,
	beq	.L600	@,
	ldr	r1, [r4, r7, asl #2]	@ temp.3489, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	cmp	r1, #0	@ temp.3489,
	beq	.L601	@,
	str	r7, [fp, #-40]	@ D.39721, DecParamInfo.ChanID
	sub	r0, fp, #40	@,,
	ldr	lr, [r1, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r3, #824]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r2, [fp, #-32]	@ pDecParam.3488, DecParamInfo.pDecParam
	str	lr, [fp, #-36]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	ip	@ AcceleratorCharacter
	cmp	r0, #1	@,
	movne	r3, #0	@ tmp169,
	strne	r3, [r5, #8]	@ tmp169, <variable>.pDecParam
	bne	.L597	@,
	b	.L621	@
.L624:
	ldr	r3, [r4, r7, asl #2]	@ D.41362, s_pstVfmwChan
	cmp	r3, #0	@ D.41362,
	beq	.L609	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L609	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L609	@,
	ldr	r1, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L609	@,
	ldr	r3, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L609	@,
	mov	r0, r7	@, D.39715
	bl	VDMDRV_IsChanDec	@
	cmp	r0, #1	@,
	beq	.L626	@,
	mov	r0, r7	@, D.39715
	bl	VCTRL_GetDecParam	@
	subs	r6, r0, #0	@ pDecParam.3471,
	beq	.L627	@,
	ldr	r3, [r4, r7, asl #2]	@ temp.3473, s_pstVfmwChan
	cmp	r3, #0	@ temp.3473,
	beq	.L628	@,
	str	r7, [fp, #-40]	@ D.39715, DecParamInfo.ChanID
	sub	r0, fp, #40	@,,
	ldr	lr, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r1, [r4, #824]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r6, [fp, #-32]	@ pDecParam.3471, DecParamInfo.pDecParam
	str	lr, [fp, #-36]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	r1	@ AcceleratorCharacter
	cmp	r0, #1	@,
	bne	.L613	@,
.L621:
	ldr	r2, [fp, #-40]	@ DecParamInfo.ChanID, DecParamInfo.ChanID
	mov	r1, #4	@,
	ldr	ip, [fp, #-36]	@ DecParamInfo.VidStd, DecParamInfo.VidStd
	mov	r0, r7	@, D.39715
	ldr	r3, [fp, #-32]	@ DecParamInfo.pDecParam, DecParamInfo.pDecParam
	stmia	r5, {r2, ip}	@ phole stm
	str	r3, [r5, #8]	@ DecParamInfo.pDecParam, <variable>.pDecParam
	bl	VDMDRV_SetChanIsDec	@
	ldr	r0, .L632	@,
	bl	OSAL_SpinUnLock	@
	ldr	r0, .L632+4	@,
	bl	OSAL_SpinUnLock	@
	mov	r0, #0	@ D.39750,
	b	.L608	@
.L625:
	ldr	r3, [r4, r7, asl #2]	@ temp.3481, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp174,
	movt	r6, #:upper16:.LANCHOR0	@ tmp174,
	cmp	r3, #0	@ temp.3481,
	beq	.L603	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L603	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L603	@,
	ldr	r1, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L603	@,
	ldr	r3, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L603	@,
	mov	r0, r7	@, D.39721
	bl	VDMDRV_IsChanDec	@
	cmp	r0, #1	@,
	beq	.L629	@,
	mov	r0, r7	@, D.39721
	bl	VCTRL_GetDecParam	@
	subs	r3, r0, #0	@ pDecParam,
	beq	.L630	@,
	ldr	r2, [r6, r7, asl #2]	@ D.39740, s_pstVfmwChan
	cmp	r2, #0	@ D.39740,
	beq	.L631	@,
	str	r7, [fp, #-40]	@ D.39721, DecParamInfo.ChanID
	sub	r0, fp, #40	@,,
	ldr	lr, [r2, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r4, #824]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r3, [fp, #-32]	@ pDecParam, DecParamInfo.pDecParam
	str	lr, [fp, #-36]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	ip	@ AcceleratorCharacter
	cmp	r0, #1	@,
	beq	.L621	@,
.L613:
	mov	r0, #0	@ tmp237,
	str	r0, [r5, #8]	@ tmp237, <variable>.pDecParam
	b	.L595	@
.L601:
	mov	r3, r7	@, D.39721
	movw	r1, #:lower16:.LC250	@,
	movw	r2, #6383	@,
	movt	r1, #:upper16:.LC250	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L597	@
.L631:
	mov	r3, r7	@, D.39721
	movw	r1, #:lower16:.LC250	@,
	movw	r2, #6383	@,
	movt	r1, #:upper16:.LC250	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L595	@
.L628:
	mov	r3, r7	@, D.39715
	movw	r2, #6442	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC250	@,
	movt	r1, #:upper16:.LC250	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp221,
	str	r0, [r5, #8]	@ tmp221, <variable>.pDecParam
	b	.L595	@
.L599:
	mov	r2, r7	@, D.39721
	movw	r1, #:lower16:.LC253	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	b	.L597	@
.L629:
	mov	r2, r7	@, D.39721
	movw	r1, #:lower16:.LC253	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	b	.L595	@
.L626:
	mov	r2, r7	@, D.39715
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC253	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp208,
	str	r2, [r5, #8]	@ tmp208, <variable>.pDecParam
.L622:
	add	r0, r4, #776	@, tmp247,
	bl	OSAL_SpinUnLock	@
	add	r0, r4, #728	@, tmp247,
	bl	OSAL_SpinUnLock	@
	mvn	r0, #0	@ D.39750,
	b	.L608	@
.L600:
	mov	r2, r7	@, D.39721
	movw	r1, #:lower16:.LC252	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	b	.L597	@
.L630:
	mov	r2, r7	@, D.39721
	movw	r1, #:lower16:.LC252	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	b	.L595	@
.L627:
	mov	r2, r7	@, D.39715
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	str	r6, [r5, #8]	@ pDecParam.3471, <variable>.pDecParam
	b	.L622	@
.L633:
	.align	2
.L632:
	.word	.LANCHOR0+776
	.word	.LANCHOR0+728
	.fnend
	.size	VCTRL_ExtAccGetDecParam, .-VCTRL_ExtAccGetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1398:
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
	cmp	r0, #1	@ ChanId,
	mov	r3, r0	@ ChanId, ChanId
	bhi	.L635	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r2, [r4, r0, asl #2]	@ D.38101, s_pstVfmwChan
	cmp	r2, #0	@ D.38101,
	beq	.L635	@,
	ldr	r1, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L638	@,
	ldr	r5, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	beq	.L639	@,
.L638:
	mov	r2, r3	@, ChanId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC254	@,
	movt	r1, #:upper16:.LC254	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ D.38103,
.L637:
	mov	r0, r2	@, D.38103
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L635:
	movw	r2, #3860	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC250	@,
	movt	r1, #:upper16:.LC250	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ D.38103,
	b	.L637	@
.L639:
	str	r0, [fp, #-32]	@ tmp3,
	bl	VCTRL_GetDecParam	@
	ldr	r3, [fp, #-32]	@,
	subs	r6, r0, #0	@ pDecParam,
	beq	.L645	@,
	ldr	r0, [r4, r3, asl #2]	@ tmp154, s_pstVfmwChan
	mov	ip, #0	@ tmp155,
	mov	r2, ip	@ D.38103, tmp155
	str	ip, [r0, #696]	@ tmp155, <variable>.s32CountNoDecparamFlag
	ldr	r3, [r4, r3, asl #2]	@ tmp157, s_pstVfmwChan
	str	ip, [r3, #700]	@ tmp155, <variable>.u32NoDecparamStartTime
	b	.L637	@
.L645:
	ldr	r1, [r4, r3, asl #2]	@ temp.3519, s_pstVfmwChan
	ldr	r2, [r1, #696]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r2, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L646	@,
	str	r3, [fp, #-32]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [fp, #-32]	@,
	ldr	r2, [r4, r3, asl #2]	@ temp.3523, s_pstVfmwChan
	ldr	r1, [r2, #700]	@ D.38124, <variable>.u32NoDecparamStartTime
	cmp	r0, r1	@ tmp, D.38124
	bls	.L642	@,
	rsb	lr, r1, r0	@ tmp160, D.38124, tmp
	cmp	lr, #40	@ tmp160,
	movls	r2, r6	@ D.38103, pDecParam
	bls	.L637	@,
.L642:
	str	r6, [r2, #696]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r2, r5	@ D.38103, <variable>.s32IsRun
	ldr	r1, [r4, r3, asl #2]	@ tmp167, s_pstVfmwChan
	str	r6, [r1, #700]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L637	@
.L646:
	str	r5, [r1, #696]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r3, asl #2]	@ temp.3520, s_pstVfmwChan
	str	r2, [fp, #-32]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [fp, #-32]	@,
	str	r0, [r4, #700]	@, <variable>.u32NoDecparamStartTime
	b	.L637	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1420:
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
	beq	.L648	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp157,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp157,
	ldr	r3, [r3, #24]	@ D.39247, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.39247,
	beq	.L649	@,
	mov	r0, #0	@,
	blx	r3	@ D.39247
.L650:
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #12	@,
	bl	__memzero	@
.L648:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #20]	@ Length.3553, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #12]	@ PhyAddr.3551, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.3553,
	ldr	r6, [r4, #16]	@ VirAddr.3552, <variable>.stScdCmnMem.VirAddr
	bne	.L658	@,
.L651:
	mov	r0, r7	@, PhyAddr.3551
	mov	r1, r6	@, VirAddr.3552
	mov	r2, r5	@, Length.3553
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.3560, <variable>.Length
	ldr	r7, [r4, #36]	@ PhyAddr.3558, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3560,
	ldr	r6, [r4, #40]	@ VirAddr.3559, <variable>.VirAddr
	bne	.L659	@,
.L652:
	mov	r0, r7	@, PhyAddr.3558
	mov	r1, r6	@, VirAddr.3559
	mov	r2, r5	@, Length.3560
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #80]	@ Length.3565, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.3563, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.3565,
	ldr	r6, [r4, #76]	@ VirAddr.3564, <variable>.stBpdReg.VirAddr
	bne	.L660	@,
.L653:
	mov	r0, r7	@, PhyAddr.3563
	mov	r1, r6	@, VirAddr.3564
	mov	r2, r5	@, Length.3565
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #68]	@ Length.3570, <variable>.Length
	ldr	r7, [r4, #60]	@ PhyAddr.3568, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3570,
	ldr	r6, [r4, #64]	@ VirAddr.3569, <variable>.VirAddr
	bne	.L661	@,
.L654:
	mov	r0, r7	@, PhyAddr.3568
	mov	r1, r6	@, VirAddr.3569
	mov	r2, r5	@, Length.3570
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #56]	@ Length.3575, <variable>.stFodReg.Length
	ldr	r7, [r4, #48]	@ PhyAddr.3573, <variable>.stFodReg.PhyAddr
	cmp	r5, #0	@ Length.3575,
	ldr	r6, [r4, #52]	@ VirAddr.3574, <variable>.stFodReg.VirAddr
	bne	.L662	@,
.L655:
	mov	r0, r7	@, PhyAddr.3573
	mov	r1, r6	@, VirAddr.3574
	mov	r2, r5	@, Length.3575
	bl	MEM_DelMemRecord	@
	ldr	r7, [r4, #92]	@ Length.3580, <variable>.stSystemReg.Length
	ldr	r5, [r4, #84]	@ PhyAddr.3578, <variable>.stSystemReg.PhyAddr
	cmp	r7, #0	@ Length.3580,
	ldr	r6, [r4, #88]	@ VirAddr.3579, <variable>.stSystemReg.VirAddr
	beq	.L656	@,
	mov	r0, r5	@, PhyAddr.3578
	mov	r1, r6	@, VirAddr.3579
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #84	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
.L656:
	mov	r2, r7	@, Length.3580
	mov	r1, r6	@, VirAddr.3579
	mov	r0, r5	@, PhyAddr.3578
	bl	MEM_DelMemRecord	@
	mov	r0, #127	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #132	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #135	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L662:
	mov	r0, r7	@, PhyAddr.3573
	mov	r1, r6	@, VirAddr.3574
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L655	@
.L661:
	mov	r0, r7	@, PhyAddr.3568
	mov	r1, r6	@, VirAddr.3569
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #60	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L654	@
.L660:
	mov	r0, r7	@, PhyAddr.3563
	mov	r1, r6	@, VirAddr.3564
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #72	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L653	@
.L659:
	mov	r0, r7	@, PhyAddr.3558
	mov	r1, r6	@, VirAddr.3559
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #36	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L652	@
.L658:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #12]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #16]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #12	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	b	.L651	@
.L649:
	mov	r0, r3	@, D.39247
	movw	r1, #:lower16:.LC179	@,
	movw	r2, #5596	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L650	@
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1419:
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
	add	r5, r0, #84	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r1, #1048576	@,
	movw	r0, #:lower16:-123592704	@,
	mov	r2, r5	@, pstMem
	movt	r0, #:upper16:-123592704	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L687	@,
	add	r5, r4, #36	@ pstMem.3606, pstDrvMem,
	add	r0, r4, #84
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121438208	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121438208	@,
	mov	r2, r5	@, pstMem.3606
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L687	@,
	add	r6, r4, #72	@ pstMem.3610, pstDrvMem,
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121241600	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121241600	@,
	mov	r2, r6	@, pstMem.3610
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L691	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp167,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp167,
	ldr	r3, [r5, #8]	@ D.39104, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.39104,
	beq	.L691	@,
	blx	r3	@ D.39104
	cmp	r0, #0	@,
	bne	.L691	@,
	add	r8, r4, #60	@ pstMem.3614, pstDrvMem,
	add	r0, r4, #72
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-104726528	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-104726528	@,
	mov	r2, r8	@, pstMem.3614
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.39118,
	bne	.L675	@,
	sub	r7, fp, #56	@ tmp175,,
	add	r0, r4, #60
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	mov	r0, r7	@, tmp175
	movw	r1, #:lower16:.LC255	@,
	mov	r2, r6	@, D.39118
	movt	r1, #:upper16:.LC255	@,
	bl	sprintf	@
	ldr	r3, [r5, #16]	@ D.39129, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.39129,
	beq	.L675	@,
	blx	r3	@ D.39129
	subs	r2, r0, #0	@ Size,
	ble	.L675	@,
	mov	r0, r7	@, tmp175
	mov	r1, r6	@, D.39118
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.39118,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L677	@,
	ldmia	r4, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #20]	@ D.39147, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.39147,
	beq	.L677	@,
	ldr	r0, [r4, #0]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #8]	@, <variable>.Length
	blx	r3	@ D.39147
	subs	r5, r0, #0	@ D.39149,
	bne	.L677	@,
	add	r6, r4, #12	@ pstMem.3624, pstDrvMem,
	bl	VDMDRV_Init	@
	mov	r1, r5	@, D.39149
	movw	r0, #:lower16:.LC256	@,
	mov	r2, #131072	@,
	movt	r0, #:upper16:.LC256	@,
	mov	r3, r6	@, pstMem.3624
	str	r5, [sp, #0]	@ D.39149,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L691	@,
	add	r0, r4, #12
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r0, [r4, #12]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.Length
	movw	r2, #:lower16:-104726528	@,
	movw	r3, #:lower16:-123592468	@,
	movt	r2, #:upper16:-104726528	@,
	movt	r3, #:upper16:-123592468	@,
	bl	SM_OpenSCDDrv	@
	subs	ip, r0, #0	@ D.39165,
	bne	.L691	@,
	mov	r2, ip	@, D.39165
	mov	r0, #127	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	str	ip, [sp, #4]	@ D.39165,
	movw	ip, #:lower16:.LC257	@ tmp196,
	movt	ip, #:upper16:.LC257	@ tmp196,
	str	ip, [sp, #0]	@ tmp196,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.41369,
	bne	.L691	@,
	mov	r2, ip	@, D.41369
	mov	r0, #132	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	str	ip, [sp, #4]	@ D.41369,
	movw	lr, #:lower16:.LC258	@ tmp199,
	movt	lr, #:upper16:.LC258	@ tmp199,
	str	lr, [sp, #0]	@ tmp199,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.41376,
	bne	.L691	@,
	mov	r2, ip	@, D.41376
	mov	r0, #135	@,
	movw	r1, #:lower16:VCTRL_Btl_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Btl_Isr	@,
	str	ip, [sp, #4]	@ D.41376,
	movw	ip, #:lower16:.LC259	@ tmp202,
	movt	ip, #:upper16:.LC259	@ tmp202,
	str	ip, [sp, #0]	@ tmp202,
	bl	request_threaded_irq	@
	cmp	r0, #0	@ D.41383
	bne	.L691	@,
.L667:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L691:
	mov	r0, r6	@, pstMem.3624
.L692:
	mov	r1, #12	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39085,
	b	.L667	@
.L687:
	mov	r0, r5	@, pstMem.3606
	b	.L692	@
.L675:
	mov	r0, r8	@, pstMem.3614
	b	.L692	@
.L677:
	mov	r1, #12	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39085,
	b	.L667	@
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1412:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pMem, pMem
	ldr	r3, [r4, r0, asl #2]	@ D.38538, s_pstVfmwChan
	cmp	r3, #0	@ D.38538,
	beq	.L702	@,
	ldr	r8, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L703	@,
	ldr	r3, [r3, #836]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L704	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38551,
	bne	.L705	@,
	mov	r1, r0	@, D.38551
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L706	@,
	mov	r1, sl	@, id
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, sl	@, id
	movw	r1, #:lower16:.LC264	@,
	movt	r1, #:upper16:.LC264	@,
	mov	r6, r0	@ pLf,
	mov	r0, r8	@, <variable>.eVidStd
	bl	dprint_vfmw	@
	ldr	r2, [r6, #440]	@ D.38563, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38563,
	beq	.L700	@,
	ldr	r3, [r6, #444]	@ D.38565, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.38565,
	beq	.L700	@,
	ldr	ip, [r6, #448]	@ D.38567, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.38567,
	beq	.L700	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC265	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC265	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.38542,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp161, s_pstVfmwChan
	ldr	r1, [r2, #832]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L695:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L705:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC262	@,
	movt	r1, #:upper16:.LC262	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
.L703:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC260	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
.L704:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC261	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
.L700:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
.L706:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC263	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
.L702:
	mov	r0, r3	@, D.38538
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4572	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38542,
	b	.L695	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1411:
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
	beq	.L715	@,
	ldr	r3, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L710	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38472,
.L709:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L710:
	ldr	r0, [r8, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L716	@,
.L711:
	mov	r1, r5	@, PicBufID
	mov	r0, r6	@, ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r7, #0	@ tmp171,
	mov	sl, #1	@ tmp179,
	mov	r4, r0	@ pLogic,
	str	r5, [r0, #156]	@ PicBufID, <variable>.image_id
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	ldr	ip, [r8, #28]	@ temp.3689, <variable>.s32LumaPhyAddr
	str	ip, [r4, #68]	@ temp.3689, <variable>.top_luma_phy_addr
	mov	r0, ip	@, temp.3689
	str	ip, [r4, #100]	@ temp.3689, <variable>.luma_2d_phy_addr
	str	ip, [r4, #84]	@ temp.3689, <variable>.luma_phy_addr
	ldr	r1, [r8, #36]	@ temp.3690, <variable>.s32CbPhyAddr
	str	r1, [r4, #88]	@ temp.3690, <variable>.chrom_phy_addr
	str	r1, [r4, #72]	@ temp.3690, <variable>.top_chrom_phy_addr
	str	r1, [r4, #104]	@ temp.3690, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.38492, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.38492, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #72]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #68]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #36]	@ D.38495, <variable>.chrom_vir_addr
	str	r0, [r4, #52]	@ D.38495, <variable>.chrom_2d_vir_addr
	ldr	r3, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp167, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #76]	@ tmp167, <variable>.btm_luma_phy_addr
	ldr	r1, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r7, [r4, #108]	@ tmp171, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp170, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #80]	@ tmp170, <variable>.btm_chrom_phy_addr
	ldr	ip, [r8, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #124]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r8, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #128]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp180,
	ldr	r0, [r8, #20]	@ temp.3694, <variable>.s32YWidth
	str	r0, [r4, #132]	@ temp.3694, <variable>.disp_width
	mov	r1, r0, lsr sl	@ tmp174, temp.3694,
	ldr	r3, [r8, #24]	@ temp.3696, <variable>.s32YHeight
	str	r1, [r4, #140]	@ tmp174, <variable>.disp_center_x
	str	r3, [r4, #136]	@ temp.3696, <variable>.disp_height
	mov	ip, r3, lsr sl	@ tmp175, temp.3696,
	str	ip, [r4, #144]	@ tmp175, <variable>.disp_center_y
	ldr	r0, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #120]	@ tmp180, <variable>.format
	str	r7, [r4, #148]	@ tmp171, <variable>.frame_rate
	str	r0, [r4, #152]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r7, [r4, #160]	@ tmp171, <variable>.error_level
	str	sl, [r4, #188]	@ tmp179, <variable>.chroma_idc
	ldr	r0, [r8, #16]	@, <variable>.s32IsSemiPlanar
	ldr	r1, [r8, #0]	@, <variable>.enFmt
	bl	Get_YuvFormat	@
	cmp	r0, #13	@ eYuvFormat,
	mov	r2, r0	@ eYuvFormat,
	beq	.L717	@,
	str	r0, [r4, #400]	@ eYuvFormat, <variable>.BTLInfo.YUVFormat
	mov	r2, sl	@, tmp179
	ldr	r3, [r8, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	mov	sl, #18	@ tmp187,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, PicBufID
	str	r3, [r4, #376]	@ <variable>.s32ChromStride, <variable>.BTLInfo.u32CStride
	ldr	ip, [r8, #48]	@ <variable>.s32ChromCrStride, <variable>.s32ChromCrStride
	str	ip, [r4, #372]	@ <variable>.s32ChromCrStride, <variable>.BTLInfo.u32CrStride
	ldr	lr, [r8, #40]	@ <variable>.s32CrPhyAddr, <variable>.s32CrPhyAddr
	str	sl, [r4, #308]	@ tmp187, <variable>.ImageDnr.video_standard
	str	lr, [r4, #380]	@ <variable>.s32CrPhyAddr, <variable>.BTLInfo.u32CrAddr
	bl	FSP_SetDisplay	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp188,
	movt	r3, #:upper16:.LANCHOR0	@ tmp188,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, sl	@, tmp187
	mov	r0, r6	@, ChanID
	ldr	ip, [r3, r6, asl #2]	@ D.38523, s_pstVfmwChan
	add	r3, ip, #920	@, D.38523,
	add	r2, ip, #912	@, D.38523,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r7	@ D.38472, tmp171
	beq	.L709	@,
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #176]	@, <variable>.p_usrdat
	str	r7, [r4, #172]	@ tmp171, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	str	r7, [r4, #176]	@ tmp171, <variable>.p_usrdat
	mov	r1, r5	@, PicBufID
	mov	r2, r7	@, tmp171
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38472,
	b	.L709	@
.L716:
	ldr	r1, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L711	@,
	ldr	r2, [r8, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC268	@,
	movt	r1, #:upper16:.LC268	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38472,
	b	.L709	@
.L715:
	ldr	r2, [r8, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38472, PicBufID
	b	.L709	@
.L717:
	mov	r0, sl	@, tmp179
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38472,
	b	.L709	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1413:
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
	ldr	lr, [r3, r0, asl #2]	@ D.38580, s_pstVfmwChan
	cmp	lr, #0	@ D.38580,
	beq	.L725	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L726	@,
	ldr	r2, [lr, #896]	@ D.38587, <variable>.eVidStd
	cmp	r2, #18	@ D.38587,
	bne	.L727	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #840	@ tmp146, D.38580,
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
	cmp	r0, #0	@ D.38592
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC272	@,
	movt	r1, #:upper16:.LC272	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38584,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L727:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38584,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L726:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #4649	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC270	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38584,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L725:
	mov	r0, lr	@, D.38580
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4648	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38584,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
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
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L729	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #172]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #176]	@ tmp142, <variable>.p_usrdat
.L729:
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1409:
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
	ldr	r6, [r0, #352]	@ D.38432, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.38432, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ D.41390, s_pstVfmwChan
	cmp	r2, #0	@ D.41390,
	beq	.L732	@,
	add	r2, r2, #912	@ tmp143, D.41390,
	cmp	r4, r2	@ pCtx, tmp143
	moveq	r3, #0	@ i,
	beq	.L733	@,
.L732:
	ldr	r3, [r3, #4]	@ temp.3775, s_pstVfmwChan
	cmp	r3, #0	@ temp.3775,
	beq	.L734	@,
	add	r3, r3, #912	@ tmp145, temp.3775,
	cmp	r4, r3	@ pCtx, tmp145
	beq	.L737	@,
.L734:
	mvn	r0, #0	@ tmp147,
	movw	r1, #:lower16:.LC273	@,
	str	r0, [r4, #360]	@ tmp147, <variable>.ChanID
	movt	r1, #:upper16:.LC273	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.38445,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L737:
	mov	r3, #1	@ i,
.L733:
	mov	r0, #1	@ D.38445,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp190,
	movt	r3, #:upper16:.LANCHOR0	@ tmp190,
	ldr	r0, [r3, r0, asl #2]	@ D.38618, s_pstVfmwChan
	cmp	r0, #0	@ D.38618,
	beq	.L759	@,
	ldr	r2, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L756	@
.L754:
	.word	.L741
	.word	.L742
	.word	.L743
	.word	.L744
	.word	.L745
	.word	.L746
	.word	.L747
	.word	.L756
	.word	.L748
	.word	.L749
	.word	.L750
	.word	.L750
	.word	.L750
	.word	.L751
	.word	.L745
	.word	.L752
	.word	.L756
	.word	.L756
	.word	.L753
.L753:
	movw	r2, #:lower16:11198992	@,
	movt	r2, #:upper16:11198992	@,
	add	r1, r0, r2	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	USERDEC_Init	@
.L756:
	ldmfd	sp, {fp, sp, pc}	@
.L750:
	ldr	r2, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	movw	r3, #:lower16:.LANCHOR0	@ tmp167,
	movt	r3, #:upper16:.LANCHOR0	@ tmp167,
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L760	@,
.L745:
	ldr	r3, [r3, #32]	@ temp.3809, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ temp.3809,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:11198992	@,
	movt	r1, #:upper16:11198992	@,
	add	r1, r0, r1	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	blx	r3	@ temp.3809
	ldmfd	sp, {fp, sp, pc}	@
.L746:
	movw	r3, #:lower16:11198992	@,
	movt	r3, #:upper16:11198992	@,
	add	r1, r0, r3	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	DIVX3DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L747:
	movw	lr, #:lower16:11198992	@,
	movt	lr, #:upper16:11198992	@,
	add	r1, r0, lr	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	AVSDEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L748:
	movw	r2, #:lower16:11198992	@,
	movt	r2, #:upper16:11198992	@,
	add	r1, r0, r2	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	REAL8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L749:
	movw	r1, #:lower16:11198992	@,
	movt	r1, #:upper16:11198992	@,
	add	r1, r0, r1	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	REAL9DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L751:
	movw	r3, #:lower16:11198992	@,
	movt	r3, #:upper16:11198992	@,
	add	r1, r0, r3	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	VP8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L752:
	movw	ip, #:lower16:11198992	@,
	movt	ip, #:upper16:11198992	@,
	add	r1, r0, ip	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	MVC_DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L741:
	movw	ip, #:lower16:11198992	@,
	movt	ip, #:upper16:11198992	@,
	add	r1, r0, ip	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	H264DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L742:
	movw	ip, #:lower16:11198992	@,
	movt	ip, #:upper16:11198992	@,
	add	r1, r0, ip	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	VC1DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L743:
	movw	r3, #:lower16:11198992	@,
	movt	r3, #:upper16:11198992	@,
	add	r1, r0, r3	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	MPEG4DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L744:
	movw	r1, #:lower16:11198992	@,
	movt	r1, #:upper16:11198992	@,
	add	r1, r0, r1	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	MPEG2DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L760:
	movw	lr, #:lower16:11198992	@,
	movt	lr, #:upper16:11198992	@,
	add	r1, r0, lr	@, D.38618,
	add	r0, r0, #912	@, D.38618,
	bl	VP6DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L759:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4676	@,
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
	cmp	r0, #1	@ ChanId,
	bhi	.L781	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp161,
	movt	r3, #:upper16:.LANCHOR0	@ tmp161,
	ldr	r0, [r3, r0, asl #2]	@ D.38297, s_pstVfmwChan
	cmp	r0, #0	@ D.38297,
	beq	.L782	@,
	ldr	r2, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L783	@,
	ldr	r1, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L766	@
.L779:
	.word	.L767
	.word	.L768
	.word	.L769
	.word	.L770
	.word	.L771
	.word	.L772
	.word	.L773
	.word	.L766
	.word	.L774
	.word	.L775
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L777
	.word	.L771
	.word	.L778
.L776:
	ldr	r3, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L784	@,
.L771:
	mov	r0, #1	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L772:
	add	r0, r0, #912	@, D.38297,
	bl	DIVX3DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L773:
	add	r0, r0, #912	@, D.38297,
	bl	AVSDEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L774:
	add	r0, r0, #912	@, D.38297,
	bl	REAL8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L775:
	add	r0, r0, #912	@, D.38297,
	bl	REAL9DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L777:
	add	r0, r0, #912	@, D.38297,
	bl	VP8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L778:
	add	r0, r0, #912	@, D.38297,
	bl	MVC_DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L766:
	mov	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L767:
	add	r0, r0, #912	@, D.38297,
	bl	H264DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L768:
	add	r0, r0, #912	@, D.38297,
	bl	VC1DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L769:
	add	r0, r0, #912	@, D.38297,
	bl	MPEG4DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L770:
	add	r0, r0, #912	@, D.38297,
	bl	MPEG2DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L784:
	add	r0, r0, #912	@, D.38297,
	bl	VP6DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L781:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4152	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L783:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4154	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC275	@,
	movt	r3, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L782:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4153	@,
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
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L817	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp318,
	movt	r5, #:upper16:.LANCHOR0	@ tmp318,
	ldr	r0, [r5, r0, asl #2]	@ D.39453, s_pstVfmwChan
	cmp	r0, #0	@ D.39453,
	beq	.L818	@,
	ldr	r8, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r8, #1	@ <variable>.s32IsRun,
	bne	.L819	@,
	ldr	r6, [r0, #24]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r6, #0	@ <variable>.s32StopSyntax,
	bne	.L820	@,
	str	r6, [r0, #688]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r7, r4, asl #2	@ tmp324, ChanID,
	bl	OSAL_GetTimeInMs	@
	add	ip, r7, r5	@ tmp176, tmp324, tmp318
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp180,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp180,
	ldr	r2, [ip, #828]	@ tmp179, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r2, r0	@ tmp178, tmp179, currtime
	ldr	r2, [r5, r4, asl #2]	@ tmp188, s_pstVfmwChan
	cmp	r1, r3	@ tmp178, g_TraceBsPeriod
	strhi	r0, [ip, #828]	@ currtime, last_rec_pos_time
	movw	r3, #:lower16:.LANCHOR0	@ tmp187,
	movt	r3, #:upper16:.LANCHOR0	@ tmp187,
	ldr	r2, [r2, #896]	@ D.39472, <variable>.eVidStd
	movls	sl, r6	@ rec_pos_print_flag, <variable>.s32StopSyntax
	movhi	sl, r8	@ rec_pos_print_flag, <variable>.s32IsRun
	sub	r1, r2, #10	@ tmp189, D.39472,
	cmp	r1, #2	@ tmp189,
	bls	.L821	@,
	cmp	r2, #14	@ D.39472,
	beq	.L795	@,
	cmp	r2, #4	@ D.39472,
	bne	.L794	@,
.L795:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L822	@,
	ldr	r6, [r5, r4, asl #2]	@ temp.3881, s_pstVfmwChan
	movw	ip, #:lower16:11199097	@ tmp196,
	movt	ip, #:upper16:11199097	@ tmp196,
	ldrb	lr, [r6, ip]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	lr, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	beq	.L823	@,
.L799:
	movw	lr, #:lower16:11199144	@ tmp207,
	movt	lr, #:upper16:11199144	@ tmp207,
	movw	r3, #:lower16:11199128	@ tmp205,
	movt	r3, #:upper16:11199128	@ tmp205,
	ldrd	r8, [r6, lr]	@, temp.3881, tmp207
	mov	r0, #29	@,
	ldrd	r2, [r3, r6]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, tmp205, temp.3881
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	ldr	lr, [r5, r4, asl #2]	@ prephitmp.3864, s_pstVfmwChan
	ldr	r1, [lr, #36]	@ D.39512, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.39512,
	beq	.L824	@,
	sub	r0, r1, #2	@ tmp218, D.39512,
	cmp	r1, #6	@ D.39512,
	cmpne	r0, #1	@, tmp218,
	bls	.L803	@,
.L802:
	movw	r9, #:lower16:11199128	@ tmp270,
	movt	r9, #:upper16:11199128	@ tmp270,
	mvn	r2, #0	@ tmp271,
	mvn	r3, #0	@,
	ldrd	r0, [r6, r9]	@ temp.3883, temp.3881, tmp270
	cmp	r1, r3	@ temp.3883, tmp271
	cmpeq	r0, r2	@ temp.3883, tmp271
	movwne	r2, #:lower16:11199048	@ tmp272,
	movtne	r2, #:upper16:11199048	@ tmp272,
	strned	r0, [lr, r2]	@ temp.3883, prephitmp.3864, tmp272
	ldrne	lr, [r5, r4, asl #2]	@ prephitmp.3864, s_pstVfmwChan
.L808:
	movw	r9, #:lower16:11199144	@ tmp275,
	movt	r9, #:upper16:11199144	@ tmp275,
	movw	r3, #:lower16:11199064	@ tmp274,
	movt	r3, #:upper16:11199064	@ tmp274,
	ldrd	r0, [r6, r9]	@, temp.3881, tmp275
	movw	ip, #:lower16:11199080	@ tmp279,
	movt	ip, #:upper16:11199080	@ tmp279,
	movw	r2, #:lower16:11199048	@ tmp284,
	movt	r2, #:upper16:11199048	@ tmp284,
	strd	r0, [lr, r3]	@, prephitmp.3864, tmp274
	movw	r1, #:lower16:11199152	@ tmp280,
	movt	r1, #:upper16:11199152	@ tmp280,
	ldr	lr, [r5, r4, asl #2]	@ tmp278, s_pstVfmwChan
	mov	r0, #29	@,
	ldrd	r8, [r6, r1]	@, temp.3881, tmp280
	movw	r1, #:lower16:.LC283	@,
	movt	r1, #:upper16:.LC283	@,
	strd	r8, [lr, ip]	@, tmp278, tmp279
	ldr	ip, [r5, r4, asl #2]	@ temp.3886, s_pstVfmwChan
	ldrd	r8, [ip, r3]	@, temp.3886, tmp274
	ldrd	r2, [r2, ip]	@ <variable>.stSynExtraData.pts, tmp284, temp.3886
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
.L807:
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L809	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L825	@,
.L809:
	ldr	r3, [r5, r4, asl #2]	@ temp.3901, s_pstVfmwChan
	movw	r0, #:lower16:11199096	@,
	movt	r0, #:upper16:11199096	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp292,
	add	r0, r6, r0	@, temp.3881,
	add	r2, r3, #912	@, temp.3901,
	ldr	r1, [r3, #896]	@, <variable>.eVidStd
	movt	r5, #:upper16:.LANCHOR0	@ tmp292,
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L826	@,
.L810:
	mov	r0, #0	@ D.39451,
.L787:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L821:
	ldr	r0, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L795	@,
.L794:
	cmp	r2, #18	@ D.39472,
	beq	.L795	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L795	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L796	@,
	mvn	r0, #1	@ D.39451,
	b	.L787	@
.L826:
	bl	OSAL_GetTimeInMs	@
	add	r7, r7, r5	@ tmp300, tmp324, tmp292
	ldr	r1, [r7, #836]	@ tmp303, last_rec_pos_decparam_time
	mov	r3, r0	@ currtime.3903,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp304,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp304,
	rsb	ip, r1, r3	@ tmp302, tmp303, currtime.3903
	ldr	r2, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	cmp	ip, r2	@ tmp302, g_TraceFramePeriod
	bls	.L810	@,
	mov	r0, r4	@, ChanID
	str	r3, [r7, #836]	@ currtime.3903, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L810	@,
	mov	lr, r4, asl #24	@ tmp313, ChanID,
	ldr	r0, .L828	@,
	add	r2, lr, #262144	@, tmp313,
	movw	r1, #6138	@,
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.39451,
	b	.L787	@
.L824:
	ldr	r9, [lr, #912]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r8, [r9, #308]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r8, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L802	@,
.L803:
	movw	r3, #:lower16:11199296	@,
	movw	ip, #:lower16:11199104	@,
	movt	r3, #:upper16:11199296	@,
	movt	ip, #:upper16:11199104	@,
	add	r0, lr, r3	@, prephitmp.3864,
	add	r2, r6, ip	@, temp.3881,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L804	@,
	ldr	r3, [r5, r4, asl #2]	@ prephitmp.3860, s_pstVfmwChan
	movw	r2, #:lower16:11199056	@ tmp231,
	movt	r2, #:upper16:11199056	@ tmp231,
	mvn	r8, #0	@,
	mvn	r9, #0	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp230,
	ldrd	r0, [r3, r2]	@, prephitmp.3860, tmp231
	movt	ip, #:upper16:.LANCHOR0	@ tmp230,
	cmp	r1, r9	@,
	cmpeq	r0, r8	@,
	strd	r0, [fp, #-52]	@,,
	movwne	lr, #:lower16:11199048	@ tmp233,
	movtne	lr, #:upper16:11199048	@ tmp233,
	strned	r0, [r3, lr]	@, prephitmp.3860, tmp233
	ldrne	r3, [ip, r4, asl #2]	@ prephitmp.3860, s_pstVfmwChan
.L805:
	movw	r2, #:lower16:11199056	@ tmp235,
	movt	r2, #:upper16:11199056	@ tmp235,
	mvn	r8, #0	@,
	mvn	r9, #0	@,
	strd	r8, [r3, r2]	@, prephitmp.3860, tmp235
	movw	r1, #:lower16:11199072	@ tmp239,
	ldr	ip, [r5, r4, asl #2]	@ temp.3889, s_pstVfmwChan
	movt	r1, #:upper16:11199072	@ tmp239,
	movw	r0, #:lower16:11199064	@ tmp238,
	movt	r0, #:upper16:11199064	@ tmp238,
	movw	lr, #:lower16:11199088	@ tmp243,
	movt	lr, #:upper16:11199088	@ tmp243,
	ldrd	r8, [ip, r1]	@, temp.3889, tmp239
	movw	r2, #:lower16:11199080	@ tmp242,
	movt	r2, #:upper16:11199080	@ tmp242,
	movw	r3, #:lower16:11199048	@ tmp248,
	movt	r3, #:upper16:11199048	@ tmp248,
	movw	r1, #:lower16:.LC281	@,
	strd	r8, [ip, r0]	@, temp.3889, tmp238
	movt	r1, #:upper16:.LC281	@,
	ldr	ip, [r5, r4, asl #2]	@ temp.3890, s_pstVfmwChan
	mov	r0, #29	@,
	ldrd	r8, [ip, lr]	@, temp.3890, tmp243
	strd	r8, [ip, r2]	@, temp.3890, tmp242
	ldr	ip, [r5, r4, asl #2]	@ tmp247, s_pstVfmwChan
	add	r2, ip, r3	@, tmp247, tmp248
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
.L804:
	movw	r9, #:lower16:11199128	@ tmp250,
	movt	r9, #:upper16:11199128	@ tmp250,
	mvn	r2, #0	@ tmp251,
	mvn	r3, #0	@,
	ldrd	r0, [r6, r9]	@ temp.3893, temp.3881, tmp250
	cmp	r1, r3	@ temp.3893, tmp251
	cmpeq	r0, r2	@ temp.3893, tmp251
	ldrne	r8, [r5, r4, asl #2]	@ tmp253, s_pstVfmwChan
	movwne	r3, #:lower16:11199056	@ tmp254,
	movtne	r3, #:upper16:11199056	@ tmp254,
	strned	r0, [r8, r3]	@ temp.3893, tmp253, tmp254
.L806:
	movw	r3, #:lower16:11199144	@ tmp258,
	movt	r3, #:upper16:11199144	@ tmp258,
	ldr	r0, [r5, r4, asl #2]	@ tmp256, s_pstVfmwChan
	movw	lr, #:lower16:11199072	@ tmp257,
	ldrd	r8, [r6, r3]	@, temp.3881, tmp258
	movt	lr, #:upper16:11199072	@ tmp257,
	movw	r1, #:lower16:11199152	@ tmp263,
	movt	r1, #:upper16:11199152	@ tmp263,
	movw	r2, #:lower16:11199088	@ tmp262,
	movt	r2, #:upper16:11199088	@ tmp262,
	strd	r8, [r0, lr]	@, tmp256, tmp257
	movw	r3, #:lower16:11199064	@ tmp268,
	ldrd	r8, [r6, r1]	@, temp.3881, tmp263
	movt	r3, #:upper16:11199064	@ tmp268,
	ldr	ip, [r5, r4, asl #2]	@ tmp261, s_pstVfmwChan
	movw	r1, #:lower16:.LC282	@,
	mov	r0, #29	@,
	movt	r1, #:upper16:.LC282	@,
	strd	r8, [ip, r2]	@, tmp261, tmp262
	ldr	lr, [r5, r4, asl #2]	@ tmp267, s_pstVfmwChan
	add	r2, lr, r3	@, tmp267, tmp268
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
	b	.L807	@
.L823:
	movw	r3, #:lower16:11199104	@,
	movt	r3, #:upper16:11199104	@,
	add	r1, r6, r3	@, temp.3881,
	mov	r0, r4	@, ChanID
	bl	SM_ReadStreamSeg	@
	cmp	r0, #0	@,
	beq	.L799	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L827	@,
.L800:
	ldr	r1, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	mov	r2, #1	@ tmp203,
	mvn	r0, #3	@ D.39451,
	str	r2, [r1, #688]	@ tmp203, <variable>.s32NoStreamFlag
	b	.L787	@
.L822:
	cmp	sl, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.39451,
	bne	.L787	@
.L798:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.39451,
	b	.L787	@
.L796:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC277	@,
	movt	r1, #:upper16:.LC277	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.39451,
	b	.L787	@
.L825:
	mov	r2, r4, asl #24	@ tmp290, ChanID,
	ldr	r0, .L828	@,
	add	r2, r2, #196608	@, tmp290,
	movw	r1, #6122	@,
	bl	DBG_AddTrace	@
	b	.L809	@
.L817:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5949	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39451,
	b	.L787	@
.L819:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5951	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC275	@,
	movt	r3, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39451,
	b	.L787	@
.L820:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #5952	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC276	@,
	movt	r3, #:upper16:.LC276	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39451,
	b	.L787	@
.L827:
	movw	r1, #:lower16:.LC279	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC279	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L800	@
.L818:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5950	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39451,
	b	.L787	@
.L829:
	.align	2
.L828:
	.word	.LANCHOR1+32
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1422:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp199,
	movt	r5, #:upper16:.LANCHOR0	@ tmp199,
	movw	r3, #:lower16:.LANCHOR0	@ tmp154,
	movt	r3, #:upper16:.LANCHOR0	@ tmp154,
	movw	r6, #:lower16:.LANCHOR0	@ tmp203,
	ldr	r0, [r5, #0]	@ D.39350, s_pstVfmwChan
	movw	sl, #:lower16:11199000	@ tmp205,
	ldr	r1, [r5, #4]	@ temp.3947, s_pstVfmwChan
	movw	r9, #:lower16:11198996	@ tmp206,
	cmp	r0, #0	@ D.39350,
	movt	r6, #:upper16:.LANCHOR0	@ tmp203,
	movt	sl, #:upper16:11199000	@ tmp205,
	movt	r9, #:upper16:11198996	@ tmp206,
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.3947,
	mov	r7, #0	@ MaxPriChan,
	str	r0, [r5, #844]	@ <variable>.s32Priority, ChanPriTab
	mvn	r0, #0	@ ret,
	ldrne	r1, [r1, #20]	@ MaxPri.3939, <variable>.s32Priority
	str	r1, [r3, #848]	@ MaxPri.3939, ChanPriTab
	movw	r3, #:lower16:11198992	@ tmp207,
	movt	r3, #:upper16:11198992	@ tmp207,
.L848:
	ldr	r2, [r5, #844]	@ MaxPri, ChanPriTab
	cmp	r2, r1	@ MaxPri, MaxPri.3939
	movlt	r4, #1	@ MaxPriChan,
	movge	r4, #0	@ MaxPriChan,
	movlt	r2, r1	@ MaxPri, MaxPri.3939
	movlt	ip, #2	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.3932,
	movge	ip, #1	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.3932,
	add	r1, r5, r4, asl #2	@, tmp162, tmp199, MaxPriChan,
	cmp	r2, #0	@ MaxPri,
	movw	r2, #:lower16:.LANCHOR0	@ tmp159,
	str	r7, [r1, #844]	@ MaxPriChan, ChanPriTab
	movt	r2, #:upper16:.LANCHOR0	@ tmp159,
	ble	.L837	@,
	ldr	r2, [r6, r4, asl #2]	@ D.39361, s_pstVfmwChan
	cmp	r2, #0	@ D.39361,
	bne	.L838	@,
.L852:
	ldr	r1, [r6, #848]	@ MaxPri.3939, ChanPriTab
	b	.L848	@
.L838:
	str	ip, [r6, #980]	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.3932, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r1, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L852	@,
	ldr	r8, [r2, #56]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r8, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L841	@,
	ldr	ip, [r2, #60]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	ip, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L853	@,
.L841:
	mov	r8, #0	@ i,
.L845:
	mov	r0, r4	@, MaxPriChan
	str	r3, [fp, #-72]	@,
	bl	DecChanSyntax	@
	ldr	r3, [fp, #-72]	@,
	cmp	r0, #0	@ ret
	beq	.L844	@,
	ldr	r1, [r5, #848]	@ MaxPri.3939, ChanPriTab
	b	.L848	@
.L837:
	str	r7, [r2, #980]	@ MaxPriChan, s_VfmwCTrl.s32ThisChanIDPlus1
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L853:
	mov	r0, r4	@, MaxPriChan
	sub	r1, fp, #68	@,,
	str	r3, [fp, #-72]	@,
	bl	SM_GetInfo	@
	ldr	r3, [fp, #-72]	@,
	cmp	r0, #0	@,
	bne	.L854	@,
.L842:
	ldr	r8, [r5, r4, asl #2]	@ temp.3940, s_pstVfmwChan
	ldr	r1, [fp, #-56]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r8, #56]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r8, sl]	@, <variable>.stSynExtraData.s32DecMode
	str	r3, [fp, #-72]	@,
	bl	GetNextDecodeMode	@
	str	r0, [r8, sl]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [r5, r4, asl #2]	@ temp.3942, s_pstVfmwChan
	ldr	r3, [fp, #-72]	@,
	ldr	r0, [r2, sl]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [r2, r9]	@ MaxPriChan, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r0, [r2, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	r2, [r6, r4, asl #2]	@ tmp186, s_pstVfmwChan
	streq	r0, [r2, r9]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r2, [r6, r4, asl #2]	@ temp.3945, s_pstVfmwChan
	strne	r7, [r2, r3]	@ MaxPriChan, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r0, [r2, #52]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r0, [r2, r3]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L841	@
.L844:
	add	r8, r8, #1	@ i, i,
	cmp	r8, #200	@ i,
	bne	.L845	@,
	ldr	r1, [r5, #848]	@ MaxPri.3939, ChanPriTab
	b	.L848	@
.L854:
	sub	r0, fp, #68	@,,
	mov	r1, #24	@,
	bl	__memzero	@
	ldr	r3, [fp, #-72]	@,
	b	.L842	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1406:
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
	beq	.L858	@,
	sub	r1, fp, #44	@,,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L858	@,
	ldr	r0, [fp, #-36]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L859	@,
	ldr	r1, [fp, #-28]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L859	@,
.L858:
	mvn	r0, #0	@ ret,
.L857:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L859:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L858	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #32]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L857	@,
	b	.L858	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_FlushDecoder
	.type	VCTRL_FlushDecoder, %function
VCTRL_FlushDecoder:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp159,
	movt	r4, #:upper16:.LANCHOR0	@ tmp159,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.38251, s_pstVfmwChan
	cmp	r0, #0	@ D.38251,
	beq	.L880	@,
	ldr	r3, [r0, #904]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #15	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L879	@
.L877:
	.word	.L866
	.word	.L867
	.word	.L868
	.word	.L869
	.word	.L879
	.word	.L870
	.word	.L871
	.word	.L879
	.word	.L872
	.word	.L873
	.word	.L874
	.word	.L874
	.word	.L874
	.word	.L875
	.word	.L879
	.word	.L876
.L869:
	add	r0, r0, #912	@, D.38251,
	bl	MPEG2DEC_GetRemainImg	@
.L879:
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L866:
	add	r0, r0, #912	@, D.38251,
	bl	H264_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r0, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	add	r0, r0, #912	@, tmp146,
	bl	FlushDPB	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L867:
	add	r0, r0, #912	@, D.38251,
	bl	VC1DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L868:
	add	r0, r0, #912	@, D.38251,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L870:
	add	r0, r0, #912	@, D.38251,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L871:
	add	r0, r0, #912	@, D.38251,
	bl	AVSDEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L872:
	add	r0, r0, #912	@, D.38251,
	bl	REAL8DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L873:
	add	r0, r0, #912	@, D.38251,
	bl	REAL9DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L874:
	add	r0, r0, #912	@, D.38251,
	bl	VP6DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L875:
	add	r0, r0, #912	@, D.38251,
	bl	VP8DEC_GetRemainImg	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L876:
	add	r0, r0, #912	@, D.38251,
	bl	MVC_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r2, [r4, r5, asl #2]	@ tmp150, s_pstVfmwChan
	mvn	r1, #0	@,
	add	r0, r2, #912	@, tmp150,
	bl	MVC_FlushDPB	@
	mov	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L880:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4073	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38255,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_FlushDecoder, .-VCTRL_FlushDecoder
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1400:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp233,
	movt	r4, #:upper16:.LANCHOR0	@ tmp233,
	mov	r5, r0	@ ChanId, ChanId
	ldr	r0, [r4, r0, asl #2]	@ D.38180, s_pstVfmwChan
	cmp	r0, #0	@ D.38180,
	beq	.L907	@,
	ldr	r3, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #15	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L902	@
.L895:
	.word	.L884
	.word	.L885
	.word	.L886
	.word	.L887
	.word	.L902
	.word	.L888
	.word	.L889
	.word	.L902
	.word	.L890
	.word	.L891
	.word	.L892
	.word	.L892
	.word	.L892
	.word	.L893
	.word	.L902
	.word	.L894
.L894:
	add	r0, r0, #912	@, D.38180,
	mov	r2, #1	@,
	bl	MVC_DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4060, s_pstVfmwChan
	movw	r6, #14468	@ tmp224,
	movw	r4, #:lower16:.LANCHOR0	@ tmp223,
	movt	r4, #:upper16:.LANCHOR0	@ tmp223,
	ldrb	r1, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag,
	beq	.L908	@,
.L901:
	mov	lr, #0	@ tmp232,
	str	lr, [r3, #1272]	@ tmp232, <variable>.stSynCtx.unSyntax.stMvcCtx.pMvcDecParam
.L902:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L884:
	mov	r2, #1	@,
	add	r0, r0, #912	@, D.38180,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4025, s_pstVfmwChan
	movw	r6, #14468	@ tmp149,
	movw	r4, #:lower16:.LANCHOR0	@ tmp148,
	movt	r4, #:upper16:.LANCHOR0	@ tmp148,
	ldrb	r2, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L909	@,
.L896:
	mov	ip, #0	@ tmp157,
	str	ip, [r3, #1272]	@ tmp157, <variable>.stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L885:
	add	r0, r0, #912	@, D.38180,
	bl	VC1DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4057, s_pstVfmwChan
	movw	r4, #:lower16:79127	@ tmp205,
	movt	r4, #:upper16:79127	@ tmp205,
.L906:
	ldrb	lr, [r3, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r6, #:lower16:.LANCHOR0	@ tmp204,
	movt	r6, #:upper16:.LANCHOR0	@ tmp204,
	cmp	lr, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	beq	.L910	@,
.L903:
	mov	ip, #0	@ tmp217,
	str	ip, [r3, #916]	@ tmp217,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L886:
	add	r0, r0, #912	@, D.38180,
	movw	r6, #52536	@ tmp171,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4051, s_pstVfmwChan
	movw	r4, #:lower16:.LANCHOR0	@ tmp170,
	movt	r4, #:upper16:.LANCHOR0	@ tmp170,
	ldrb	r2, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r2, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L911	@,
.L898:
	mov	lr, #0	@ tmp179,
	str	lr, [r3, #1948]	@ tmp179, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L887:
	add	r0, r0, #912	@, D.38180,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4048, s_pstVfmwChan
	movw	r4, #:lower16:105313	@ tmp160,
	movt	r4, #:upper16:105313	@ tmp160,
	b	.L906	@
.L888:
	add	r0, r0, #912	@, D.38180,
	bl	DIVX3DEC_VDMPostProc	@
	ldr	r0, [r4, r5, asl #2]	@ tmp201, s_pstVfmwChan
	mov	r2, #0	@ tmp202,
	str	r2, [r0, #916]	@ tmp202,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L889:
	add	r0, r0, #912	@, D.38180,
	movw	r6, #17268	@ tmp182,
	bl	AVSDEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4054, s_pstVfmwChan
	movw	r4, #:lower16:.LANCHOR0	@ tmp181,
	movt	r4, #:upper16:.LANCHOR0	@ tmp181,
	ldrb	r1, [r3, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	bne	.L903	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r2, [r4, r5, asl #2]	@ tmp185, s_pstVfmwChan
	mov	ip, #0	@ tmp187,
	strb	ip, [r2, r6]	@ tmp187, <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4054, s_pstVfmwChan
	b	.L903	@
.L890:
	add	r0, r0, #912	@, D.38180,
	bl	REAL8DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp193, s_pstVfmwChan
	mov	r0, #0	@ tmp194,
	str	r0, [r3, #916]	@ tmp194,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L891:
	add	r0, r0, #912	@, D.38180,
	bl	REAL9DEC_VDMPostProc	@
	ldr	ip, [r4, r5, asl #2]	@ tmp197, s_pstVfmwChan
	mov	r1, #0	@ tmp198,
	str	r1, [ip, #916]	@ tmp198,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L892:
	add	r0, r0, #912	@, D.38180,
	bl	VP6DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp216, s_pstVfmwChan
	b	.L903	@
.L893:
	add	r0, r0, #912	@, D.38180,
	bl	VP8DEC_VDMPostProc	@
	ldr	r0, [r4, r5, asl #2]	@ tmp220, s_pstVfmwChan
	mov	r2, #0	@ tmp221,
	str	r2, [r0, #916]	@ tmp221,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L907:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #3940	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L910:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp208, s_pstVfmwChan
	mov	r1, #0	@ tmp210,
	strb	r1, [r3, r4]	@ tmp210,
	ldr	r3, [r6, r5, asl #2]	@ prephitmp.4057, s_pstVfmwChan
	b	.L903	@
.L909:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, r5, asl #2]	@ tmp152, s_pstVfmwChan
	mov	r0, #0	@ tmp154,
	strb	r0, [r1, r6]	@ tmp154, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4025, s_pstVfmwChan
	b	.L896	@
.L911:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp174, s_pstVfmwChan
	mov	r0, #0	@ tmp176,
	strb	r0, [r3, r6]	@ tmp176, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4051, s_pstVfmwChan
	b	.L898	@
.L908:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp227, s_pstVfmwChan
	mov	ip, #0	@ tmp229,
	strb	ip, [r3, r6]	@ tmp229, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4060, s_pstVfmwChan
	b	.L901	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1401:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r0, #1	@ ChanId,
	mov	r4, r0	@ ChanId, ChanId
	bhi	.L918	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38223, s_pstVfmwChan
	cmp	r3, #0	@ D.38223,
	beq	.L919	@,
	ldr	ip, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	ip, #1	@ <variable>.s32IsRun,
	beq	.L916	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC275	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r2, #4058	@,
	movt	r3, #:upper16:.LC275	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L917:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L916:
	str	r1, [fp, #-24]	@,
	str	r2, [fp, #-28]	@,
	bl	VCTRL_GetDecParam	@
	ldr	r1, [fp, #-24]	@,
	ldr	r2, [fp, #-28]	@,
	cmp	r0, #0	@,
	beq	.L917	@,
	mov	r0, r4	@, ChanId
	bl	VCTRL_PostProc	@
	b	.L917	@
.L918:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4056	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC25	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L917	@
.L919:
	mov	r0, r3	@, D.38223
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4057	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	b	.L917	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ExtAccPostProcess
	.type	VCTRL_ExtAccPostProcess, %function
VCTRL_ExtAccPostProcess:
	.fnstart
.LFB1432:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	mov	r6, r0	@ ChanID, ChanID
	add	r4, r5, #728	@ tmp136, tmp135,
	add	r5, r5, #776	@ tmp138, tmp135,
	mov	r7, r1	@ ErrorRatio, ErrorRatio
	mov	r0, r4	@, tmp136
	bl	OSAL_SpinLock	@
	mov	r0, r5	@, tmp138
	bl	OSAL_SpinLock	@
	mov	r1, r7	@, ErrorRatio
	mov	r2, #0	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_VdmPostProc	@
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, tmp138
	bl	OSAL_SpinUnLock	@
	mov	r0, r4	@, tmp136
	bl	OSAL_SpinUnLock	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VCTRL_ExtAccPostProcess, .-VCTRL_ExtAccPostProcess
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L935	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r0, [r5, r0, asl #2]	@ D.37994, s_pstVfmwChan
	cmp	r0, #0	@ D.37994,
	beq	.L936	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L937	@,
	cmp	r1, #0	@ pImage,
	beq	.L938	@,
	mov	r2, r4	@, ChanID
	ldr	r3, [r1, #156]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ temp.4137, s_pstVfmwChan
	cmp	r0, #0	@ temp.4137,
	movweq	r1, #:lower16:.LC286	@,
	movweq	r2, #3667	@,
	movteq	r1, #:upper16:.LC286	@,
	beq	.L934	@,
	ldr	r1, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L939	@,
	mov	r1, r6	@, pImage
	add	r0, r0, #904	@, temp.4137,
	bl	SYNTAX_ReleaseImage	@
	mov	r6, r0	@ ret.4139,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L940	@,
.L930:
	cmp	r6, #1	@ ret.4139,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L924:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L940:
	bl	OSAL_GetTimeInMs	@
	add	r5, r5, r4, asl #2	@, tmp165, tmp144, ChanID,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp169,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp169,
	ldr	ip, [r5, #1084]	@ tmp168, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	mov	r3, r0	@ currtime,
	rsb	r0, ip, r0	@ tmp167, tmp168, currtime
	cmp	r0, r2	@ tmp167, g_TraceImgPeriod
	bls	.L930	@,
	mov	r4, r4, asl #24	@ tmp178, ChanID,
	ldr	r0, .L941	@,
	add	r2, r4, #851968	@ tmp179, tmp178,
	movw	r1, #3694	@,
	cmp	r6, #1	@ ret.4139,
	addeq	r2, r2, #1	@,,, tmp179
	str	r3, [r5, #1084]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L930	@
.L939:
	movw	r1, #:lower16:.LC287	@,
	movt	r1, #:upper16:.LC287	@,
	movw	r2, #3673	@,
	mov	r0, #0	@,
.L934:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L924	@
.L935:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3657	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L924	@
.L937:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3659	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L924	@
.L938:
	mov	r0, r1	@, pImage
	movw	r2, #3660	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC284	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC284	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L924	@
.L936:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3658	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L924	@
.L942:
	.align	2
.L941:
	.word	.LANCHOR1+48
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1394:
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
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC288	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC288	@,
	bl	dprint_vfmw	@
	cmp	r4, #1	@ ChanID,
	bhi	.L955	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp145,
	movt	r6, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r6, r4, asl #2]	@ D.37945, s_pstVfmwChan
	cmp	r0, #0	@ D.37945,
	beq	.L956	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L957	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, r4, asl #2]	@ temp.4166, s_pstVfmwChan
	cmp	r0, #0	@ temp.4166,
	movweq	r1, #:lower16:.LC286	@,
	movweq	r2, #3555	@,
	movteq	r1, #:upper16:.LC286	@,
	beq	.L954	@,
	ldr	r1, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L958	@,
	mov	r1, r5	@, pImage
	add	r0, r0, #904	@, temp.4166,
	bl	SYNTAX_ReceiveImage	@
	mov	r5, r0	@ ret.4168,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L959	@,
.L950:
	cmp	r5, #1	@ ret.4168,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L945:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L959:
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, r4, asl #2	@, tmp162, tmp145, ChanID,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp166,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp166,
	ldr	ip, [r6, #1092]	@ tmp165, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	mov	r3, r0	@ currtime,
	rsb	r0, ip, r0	@ tmp164, tmp165, currtime
	cmp	r0, r2	@ tmp164, g_TraceImgPeriod
	bls	.L950	@,
	mov	r4, r4, asl #24	@ tmp175, ChanID,
	ldr	r0, .L960	@,
	add	r2, r4, #786432	@ tmp176, tmp175,
	movw	r1, #3581	@,
	cmp	r5, #1	@ ret.4168,
	addeq	r2, r2, #1	@,,, tmp176
	str	r3, [r6, #1092]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L950	@
.L957:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3548	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC274	@,
	movt	r3, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L945	@
.L958:
	movw	r1, #:lower16:.LC287	@,
	movt	r1, #:upper16:.LC287	@,
	movw	r2, #3561	@,
	mov	r0, #0	@,
.L954:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L945	@
.L955:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3544	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L945	@
.L956:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3545	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L945	@
.L961:
	.align	2
.L960:
	.word	.LANCHOR1+72
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L967	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.37878,
	ldmfd	sp, {fp, sp, pc}	@
.L967:
	mov	r0, r3	@, tmp138
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #3440	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37878,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r3, r0, asl #2]	@ D.37797, s_pstVfmwChan
	cmp	r2, #0	@ D.37797,
	beq	.L975	@,
	ldr	r2, [r2, #896]	@ D.37805, <variable>.eVidStd
	sub	ip, r2, #10	@ tmp143, D.37805,
	cmp	ip, #2	@ tmp143,
	bls	.L976	@,
	cmp	r2, #4	@ D.37805,
	bne	.L977	@,
.L972:
	mvn	r0, #0	@ D.37801,
	ldmfd	sp, {fp, sp, pc}	@
.L976:
	ldr	r3, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L972	@,
.L973:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp, {fp, sp, pc}	@
	b	.L972	@
.L977:
	cmp	r2, #14	@ D.37805,
	beq	.L972	@,
	b	.L973	@
.L975:
	mov	r0, r2	@, D.37797
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3317	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37801,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
.LFB1378:
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
	beq	.L987	@,
.L979:
	ldr	r0, [r4, #16]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #52]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L988	@,
.L981:
	ldr	r1, [r4, #32]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L989	@,
.L982:
	add	r0, r4, #12
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r2, [r4, #32]	@ temp.4245, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.4245,
	bne	.L990	@,
.L983:
	ldr	r2, [r4, #56]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L991	@,
.L984:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L987:
	ldr	r0, [r1, #12]	@ D.36852, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36852,
	beq	.L979	@,
	ldr	r1, [r1, #16]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #52]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L981	@,
.L988:
	ldr	r0, [r4, #24]	@ D.36860, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36860,
	beq	.L981	@,
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L982	@
.L991:
	ldr	r0, [r4, #36]	@ D.36874, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36874,
	beq	.L984	@,
	ldr	r1, [r4, #40]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #36
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L990:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	b	.L983	@
.L989:
	ldr	r0, [r4, #28]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L982	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1384:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L998	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp139,
	movt	r5, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r5, r0, asl #2]	@ D.37342, s_pstVfmwChan
	cmp	r3, #0	@ D.37342,
	beq	.L999	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1000	@,
	str	r2, [r3, #24]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r6, #0	@ tmp148,
	ldr	r1, [r5, r0, asl #2]	@ tmp147, s_pstVfmwChan
	str	r6, [r1, #16]	@ tmp148, <variable>.s32IsRun
	bl	SM_Stop	@
	mov	r0, r4	@, ChanID
	bl	BTL_StopChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mov	r0, r6	@ D.37340, tmp148
	str	r6, [r3, #24]	@ tmp148, <variable>.s32StopSyntax
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1000:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2597	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC290	@,
	movt	r3, #:upper16:.LC290	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37340,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L998:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2595	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37340,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L999:
	mov	r0, r3	@, D.37342
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2596	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC289	@,
	movt	r3, #:upper16:.LC289	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37340,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1383:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L1013	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp184,
	movt	r5, #:upper16:.LANCHOR0	@ tmp184,
	ldr	r3, [r5, r0, asl #2]	@ D.37315, s_pstVfmwChan
	cmp	r3, #0	@ D.37315,
	beq	.L1014	@,
	ldr	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1015	@,
	ldr	r3, [r3, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1016	@,
	bl	SM_Start	@
	ldr	ip, [r5, r4, asl #2]	@ tmp152, s_pstVfmwChan
	mov	r0, #0	@ tmp156,
	str	r6, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r5, r4, asl #2]	@ tmp155, s_pstVfmwChan
	str	r0, [r1, #24]	@ tmp156, <variable>.s32StopSyntax
	ldr	r3, [r5, r4, asl #2]	@ temp.4309, s_pstVfmwChan
	ldr	r2, [r3, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	beq	.L1017	@,
.L1007:
	mov	r0, r4	@, ChanID
	bl	BTL_StartChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37313,
.L1003:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1017:
	sub	r7, fp, #32	@ tmp185,,
	str	r6, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32Priority
	mov	r0, r7	@, tmp185
	bl	OSAL_LockIRQ	@
	ldr	ip, [r5, #0]	@ temp.4311, s_pstVfmwChan
	movw	r2, #:lower16:.LANCHOR0	@ tmp170,
	movt	r2, #:upper16:.LANCHOR0	@ tmp170,
	cmp	ip, #0	@ temp.4311,
	streq	ip, [r5, #1100]	@ temp.4311, PrioArray
	ldrne	r1, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp186,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp186,
	strne	r1, [r5, #1100]	@ <variable>.s32Priority, PrioArray
	movteq	r3, #:upper16:g_ChanCtx	@ tmp186,
	ldr	r1, [r5, #4]	@ D.37328, s_pstVfmwChan
	movtne	r3, #:upper16:g_ChanCtx	@ tmp186,
	ldrne	ip, [ip, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ D.37328,
	streq	r1, [r3, #4]	@ D.37328, g_ChanCtx.PriorByChanId
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #1104]	@ D.37328, PrioArray
	strne	r0, [r2, #1104]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r1, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1018	@,
	strne	r2, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r7	@, tmp185
	bl	OSAL_UnLockIRQ	@
	b	.L1007	@
.L1013:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2527	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37313,
	b	.L1003	@
.L1015:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2529	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37313,
	b	.L1003	@
.L1016:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2530	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC291	@,
	movt	r3, #:upper16:.LC291	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37313,
	b	.L1003	@
.L1014:
	mov	r0, r3	@, D.37315
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #2528	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC152	@,
	movt	r3, #:upper16:.LC152	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37313,
	b	.L1003	@
.L1019:
	.align	2
.L1018:
	.word	.LANCHOR0+1100
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1377:
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
	bl	BTL_DisableChan	@
	mov	r0, r4	@, ChanID
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
.LFB1376:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp152,
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r2, #31	@, MaxHeight,
	movt	r4, #:upper16:.LANCHOR0	@ tmp152,
	mov	r7, r1	@ MaxWidth, MaxWidth
	mov	r8, r2	@ MaxHeight, MaxHeight
	movgt	r1, #0	@, tmp159
	movle	r1, #1	@, tmp159
	mov	r6, r0	@ ChanID, ChanID
	mov	r9, r3	@ MemAddr, MemAddr
	ldr	r2, [fp, #4]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L1038	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp167
	moveq	sl, #1	@, tmp167
	beq	.L1039	@,
	sub	ip, fp, #84	@ tmp169,,
	mov	r1, #36	@,
	str	r2, [fp, #-88]	@,
	mov	r0, ip	@, tmp169
	str	ip, [fp, #-92]	@,
	bl	__memzero	@
	ldr	r0, [fp, #-92]	@,
	str	r7, [fp, #-56]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	mov	r3, #1	@,
	str	r7, [fp, #-72]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	mov	r1, r0	@, tmp169
	mov	r0, r6	@, ChanID
	str	r8, [fp, #-52]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	sl, [fp, #-84]	@ tmp167, FspInstCfg.s32DispLoopEnable
	strb	sl, [fp, #-82]	@ tmp167, FspInstCfg.s32RprEnable
	str	r8, [fp, #-68]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	sl, [fp, #-79]	@ tmp167, FspInstCfg.s32ExpectedDecFsNum
	strb	sl, [fp, #-77]	@ tmp167, FspInstCfg.s32ExpectedDispFsNum
	strb	sl, [fp, #-76]	@ tmp167, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [fp, #-80]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [fp, #-88]	@,
	subs	r7, r0, #0	@ D.36811,
	bne	.L1026	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r6	@, ChanID
	sub	r3, fp, #48	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r8, r0, #0	@ Ret,
	bne	.L1040	@,
	add	lr, r4, #1104	@, tmp152,
	mov	r0, r6	@, ChanID
	add	r1, lr, #4	@,,
	bl	FSP_GetInstInfo	@
	ldrb	r2, [r4, #1109]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r1, r2	@ D.36821, FspInstInfo.s32DecFsNum
	cmp	r1, #16	@ D.36821,
	movge	r1, #16	@ D.36821,
	str	r1, [r5, #836]	@ D.36821, <variable>.s32UsrdecFrameNum
	cmp	r1, #2	@ D.36821,
	ble	.L1041	@,
	ldr	r3, [r4, #3676]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #768	@, pstChan,
	mov	r1, #64	@,
	str	r3, [r5, #832]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #704	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	ip, [r5, #836]	@ D.36820, <variable>.s32UsrdecFrameNum
	cmp	ip, #0	@ D.36820,
	ble	.L1029	@,
	ldr	r1, [r4, #1128]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, ip	@ i, D.36820
	sub	r0, ip, #1	@ tmp204, D.36820,
	add	lr, r4, #1136	@ ivtmp.4364, tmp152,
	and	r0, r0, r2	@ tmp206, tmp204,
	str	r1, [r5, #768]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, lr, #12	@ ivtmp.4364, ivtmp.4364,
	add	r5, r5, #4	@ ivtmp.4367, pstChan,
	bge	.L1029	@,
	cmp	r0, #0	@ tmp206,
	beq	.L1030	@,
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.36820
	add	r3, r4, #1184	@ ivtmp.4364, tmp152,
	add	r3, r3, #4	@ ivtmp.4364, ivtmp.4364,
	str	lr, [r5, #768]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r5, r5, #4	@ ivtmp.4367, ivtmp.4367,
	bge	.L1029	@,
.L1030:
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r1, r5, #4	@ tmp209, ivtmp.4367,
	cmp	r2, ip	@ i, D.36820
	str	r0, [r5, #768]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r5, r1, #4	@ ivtmp.4367, tmp209,
	ldr	lr, [r3, #60]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #80	@ ivtmp.4364, ivtmp.4364,
	str	lr, [r1, #768]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1030	@,
.L1029:
	mov	r0, #0	@ D.36799,
.L1024:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1039:
	mov	r0, r1	@, tmp159
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36799,
	b	.L1024	@
.L1026:
	mov	r0, sl	@, tmp167
	movw	r1, #:lower16:.LC296	@,
	movt	r1, #:upper16:.LC296	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36799,
	b	.L1024	@
.L1040:
	mov	r0, r7	@, D.36811
	movw	r1, #:lower16:.LC294	@,
	movt	r1, #:upper16:.LC294	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36799,
	b	.L1024	@
.L1041:
	mov	r0, r8	@, Ret
	movw	r1, #:lower16:.LC295	@,
	ldr	r2, .L1042	@,
	movt	r1, #:upper16:.LC295	@,
	movw	r3, #1524	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36799,
	b	.L1024	@
.L1038:
	mov	r2, r7	@, MaxWidth
	mov	r3, r8	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC292	@,
	movt	r1, #:upper16:.LC292	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36799,
	b	.L1024	@
.L1043:
	.align	2
.L1042:
	.word	.LANCHOR1+92
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1374:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #148
	sub	sp, sp, #148	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r1, #0	@ pstChanState, pstChanState
	mov	r5, r0	@ ChanID, ChanID
	beq	.L1046	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp136,
	movt	r6, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, r4	@, pstChanState
	mov	r1, #104	@,
	bl	__memzero	@
	ldr	r3, [r6, r5, asl #2]	@ D.36734, s_pstVfmwChan
	cmp	r3, #0	@ D.36734,
	beq	.L1046	@,
	movw	lr, #:lower16:11199308	@,
	movt	lr, #:upper16:11199308	@,
	add	r1, r3, lr	@, D.36734,
	mov	r2, #104	@,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #168	@,,
	bl	BTL_GetState	@
	ldr	ip, [fp, #-96]	@ BtlChanState.new_frame_num, BtlChanState.new_frame_num
	ldr	r1, [fp, #-92]	@ BtlChanState.read_out_frame_num, BtlChanState.read_out_frame_num
	sub	r2, fp, #36	@,,
	sub	r3, fp, #40	@,,
	mov	r0, r5	@, ChanID
	add	r1, ip, r1	@ tmp146, BtlChanState.new_frame_num, BtlChanState.read_out_frame_num
	str	r1, [r4, #88]	@ tmp146, <variable>.wait_disp_frame_num
	ldr	ip, [fp, #-100]	@ BtlChanState.total_frame_num, BtlChanState.total_frame_num
	sub	r1, fp, #32	@,,
	str	ip, [r4, #96]	@ BtlChanState.total_frame_num, <variable>.total_disp_frame_num
	bl	VCTRL_GetChanImgNum	@
	mov	r1, #300	@ tmp157,
	mla	r3, r1, r5, r6	@ tmp158, tmp157, ChanID, tmp136
	ldr	ip, [fp, #-40]	@ NewNum, NewNum
	ldr	r2, [fp, #-36]	@ ReadNum, ReadNum
	sub	r1, fp, #88	@,,
	mov	r0, r5	@, ChanID
	add	r2, ip, r2	@ tmp153, NewNum, ReadNum
	str	r2, [r4, #52]	@ tmp153, <variable>.decoded_1d_frame_num
	ldr	ip, [r3, #148]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	ip, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	r3, [r3, #136]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	r3, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [fp, #-72]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	sub	r1, fp, #64	@,,
	mov	r0, r5	@, ChanID
	str	r2, [r4, #56]	@ SmInstInfo.TotalSegSize, <variable>.buffered_stream_size
	ldr	ip, [fp, #-80]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	str	ip, [r4, #60]	@ SmInstInfo.SegNum, <variable>.buffered_stream_num
	bl	SM_GetInfo	@
	ldr	r0, [fp, #-44]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movw	ip, #16744	@ tmp176,
	cmp	r0, #10	@ ScdInstInfo.numReadSegFail,
	movle	r3, #0	@, tmp173
	movgt	r3, #1	@, tmp173
	str	r3, [r4, #84]	@ tmp173, <variable>.stream_not_enough
	ldr	r2, [r6, r5, asl #2]	@ tmp175, s_pstVfmwChan
	ldrb	r1, [r2, ip]	@ zero_extendqisi2	@ tmp178,
	and	r0, r1, #1	@ tmp180, tmp178,
	add	r3, r0, #1	@ tmp181, tmp180,
	str	r3, [r4, #92]	@ tmp181, <variable>.mpeg4_shorthead
.L1046:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
.LFB1365:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #852]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #968]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1052	@
.L1050:
	bl	msleep	@
	ldr	r1, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1057	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1059	@,
.L1052:
	ldr	r3, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1050	@,
.L1057:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #968]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1059:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #968]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #852]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #968]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1065	@
.L1063:
	bl	msleep	@
	ldr	r2, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1070	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1072	@,
.L1065:
	ldr	r1, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1063	@,
.L1070:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #968]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1072:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #968]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1363:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp253,
	movt	r4, #:upper16:.LANCHOR0	@ tmp253,
	mov	r6, r0	@ event_report, event_report
	ldr	r5, [r4, #852]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1091	@,
.L1074:
	mvn	r0, #0	@ D.36548,
.L1089:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1091:
	movw	r7, #:lower16:saved_command_line	@ tmp254,
	movt	r7, #:upper16:saved_command_line	@ tmp254,
	mov	r2, #1024	@,
	add	r0, r4, #3680	@, tmp253,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r5, [fp, #-40]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3680	@, tmp253,
	movw	r1, #:lower16:.LC297	@,
	movt	r1, #:upper16:.LC297	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp169,
	str	r0, [fp, #-40]	@ tmp169, p
	beq	.L1075	@,
	sub	r8, fp, #40	@ p.652,,
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	mov	r0, r8	@, p.652
	bl	strsep	@
	subs	r3, r0, #0	@ D.45153,
	beq	.L1078	@,
	mov	r0, r8	@, p.652
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	strsep	@
	mov	r1, r5	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #16]	@ prephitmp.4503, extra_ref
.L1077:
	add	r1, r0, #4992	@ tmp176, prephitmp.4503,
	movw	r2, #10000	@ tmp178,
	add	r3, r1, #8	@ tmp176, tmp176,
	cmp	r3, r2	@ tmp176, tmp178
	bhi	.L1079	@,
	movw	r8, #5000	@ tmp179,
	movw	r5, #:lower16:-5000	@ tmp180,
	cmp	r0, r8	@ prephitmp.4503, tmp179
	movge	r0, r8	@ prephitmp.4482, tmp179
	movt	r5, #:upper16:-5000	@ tmp180,
	cmp	r0, r5	@ prephitmp.4482, tmp180
	movge	r3, r0	@ prephitmp.4482, prephitmp.4482
	movlt	r3, r5	@ prephitmp.4482, tmp180
.L1078:
	movw	r5, #:lower16:.LANCHOR0	@ tmp185,
	movt	r5, #:upper16:.LANCHOR0	@ tmp185,
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	str	r3, [r4, #16]	@ prephitmp.4482, extra_ref
	add	r0, r5, #3680	@, tmp185,
	mov	r8, #0	@ tmp186,
	str	r8, [fp, #-40]	@ tmp186, p
	bl	strlcpy	@
	add	r0, r5, #3680	@, tmp185,
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	bl	strstr	@
	cmp	r0, r8	@ tmp190,
	str	r0, [fp, #-40]	@ tmp190, p
	beq	.L1080	@,
	sub	sl, fp, #40	@ p.663,,
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	mov	r0, sl	@, p.663
	bl	strsep	@
	subs	r3, r0, #0	@ D.45172,
	beq	.L1083	@,
	mov	r0, sl	@, p.663
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	strsep	@
	mov	r1, r8	@, tmp186
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [r5, #20]	@ prephitmp.4486, extra_disp
.L1082:
	add	r5, r0, #4992	@ tmp197, prephitmp.4486,
	movw	lr, #10000	@ tmp199,
	add	r1, r5, #8	@ tmp197, tmp197,
	cmp	r1, lr	@ tmp197, tmp199
	bhi	.L1084	@,
	movw	r2, #5000	@ tmp200,
	movw	ip, #:lower16:-5000	@ tmp201,
	cmp	r0, r2	@ prephitmp.4486, tmp200
	movge	r0, r2	@ prephitmp.4502, tmp200
	movt	ip, #:upper16:-5000	@ tmp201,
	cmp	r0, ip	@ prephitmp.4502, tmp201
	movge	r3, r0	@ prephitmp.4502, prephitmp.4502
	movlt	r3, ip	@ prephitmp.4502, tmp201
.L1083:
	movw	r5, #:lower16:.LANCHOR0	@ tmp206,
	movt	r5, #:upper16:.LANCHOR0	@ tmp206,
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	str	r3, [r4, #20]	@ prephitmp.4502, extra_disp
	add	r0, r5, #3680	@, tmp206,
	mov	r7, #0	@ tmp207,
	str	r7, [fp, #-40]	@ tmp207, p
	bl	strlcpy	@
	add	r0, r5, #3680	@, tmp206,
	movw	r1, #:lower16:.LC302	@,
	movt	r1, #:upper16:.LC302	@,
	bl	strstr	@
	cmp	r0, r7	@ tmp211,
	str	r0, [fp, #-40]	@ tmp211, p
	beq	.L1085	@,
	sub	r8, fp, #40	@ p.674,,
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	mov	r0, r8	@, p.674
	bl	strsep	@
	cmp	r0, r7	@,
	ldreq	r0, [r5, #120]	@ prephitmp.4484, extra_cmd
	beq	.L1087	@,
	mov	r0, r8	@, p.674
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	strsep	@
	mov	r1, r7	@, tmp207
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r5, #120]	@ prephitmp.4484, extra_cmd
.L1087:
	movw	ip, #:lower16:.LANCHOR3	@ tmp216,
	movt	ip, #:upper16:.LANCHOR3	@ tmp216,
	ubfx	r2, r0, #1, #1	@ tmp223, prephitmp.4484,,
	and	lr, r0, #1	@ tmp218, prephitmp.4484,
	strb	r2, [ip, #-3479]	@ tmp223, g_not_direct_8x8_inference_flag
	strb	lr, [ip, #-3480]	@ tmp218, g_allow_B_before_P
.L1085:
	movw	r5, #:lower16:.LANCHOR0	@ tmp225,
	movt	r5, #:upper16:.LANCHOR0	@ tmp225,
	mov	r1, #232	@,
	add	r0, r5, #852	@, tmp225,
	bl	__memzero	@
	mov	r0, r5	@, tmp225
	mov	r1, #8	@,
	bl	__memzero	@
	mov	r0, #134217728	@,
	mov	r1, #75497472	@,
	str	r6, [r4, #12]	@ event_report, g_event_report
	str	r6, [r4, #1080]	@ event_report, s_VfmwCTrl.event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r5, #984	@, tmp225,
	bl	OpenDrivers	@
	subs	r4, r0, #0	@ D.36559,
	bne	.L1074	@,
	bl	DBG_CreateTracer	@
	mov	r0, r4	@, D.36559
	bl	BTL_Init	@
	add	r0, r5, #856	@, tmp225,
	bl	OSAL_InitIntrMutex	@
	mov	r1, #1	@,
	ldr	r0, .L1092	@,
	bl	OSAL_InitEvent	@
	add	r0, r5, #972	@, tmp225,
	movw	r1, #:lower16:.LC303	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC303	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r4, r0, #0	@ D.36563,
	bne	.L1088	@,
	add	r0, r5, #972	@, tmp225,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp248,
	mov	r0, r4	@ D.36548, D.36563
	str	r3, [r5, #852]	@ tmp248, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1089	@
.L1080:
	ldr	r0, [r5, #20]	@ prephitmp.4486, extra_disp
	b	.L1082	@
.L1075:
	ldr	r0, [r4, #16]	@ prephitmp.4503, extra_ref
	b	.L1077	@
.L1079:
	mov	r2, r0	@, prephitmp.4503
	movw	r1, #:lower16:.LC299	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC299	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ pretmp.4500, extra_ref
	movw	r0, #:lower16:-5000	@ tmp184,
	movw	r2, #5000	@ tmp183,
	movt	r0, #:upper16:-5000	@ tmp184,
	cmp	r3, r2	@ pretmp.4500, tmp183
	movlt	ip, r3	@ prephitmp.4482, pretmp.4500
	movge	ip, r2	@ prephitmp.4482, tmp183
	cmp	ip, r0	@ prephitmp.4482, tmp184
	movge	r3, ip	@ prephitmp.4482, prephitmp.4482
	movlt	r3, r0	@ prephitmp.4482, tmp184
	b	.L1078	@
.L1084:
	mov	r2, r0	@, prephitmp.4486
	movw	r1, #:lower16:.LC301	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC301	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #20]	@ pretmp.4481, extra_disp
	movw	r3, #5000	@ tmp204,
	movw	r0, #:lower16:-5000	@ tmp205,
	cmp	r1, r3	@ pretmp.4481, tmp204
	movlt	r5, r1	@ prephitmp.4502, pretmp.4481
	movge	r5, r3	@ prephitmp.4502, tmp204
	movt	r0, #:upper16:-5000	@ tmp205,
	cmp	r5, r0	@ prephitmp.4502, tmp205
	movge	r3, r5	@ prephitmp.4502, prephitmp.4502
	movlt	r3, r0	@ prephitmp.4502, tmp205
	b	.L1083	@
.L1088:
	add	r0, r5, #984	@, tmp225,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36548,
	b	.L1089	@
.L1093:
	.align	2
.L1092:
	.word	.LANCHOR3-3476
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_ExtraWakeUpThread
	.type	VCTRL_ExtraWakeUpThread, %function
VCTRL_ExtraWakeUpThread:
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
	ldr	r0, .L1096	@,
	bl	OSAL_GiveEvent	@
	ldmfd	sp, {fp, sp, pc}	@
.L1097:
	.align	2
.L1096:
	.word	.LANCHOR3-3476
	.fnend
	.size	VCTRL_ExtraWakeUpThread, .-VCTRL_ExtraWakeUpThread
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	movt	r4, #:upper16:.LANCHOR3	@ tmp143,
	ldr	r3, [r4, #-3424]	@ LastEventTime.431, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.431
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3424]	@ CurTime, LastEventTime
	bhi	.L1103	@,
.L1100:
	ldr	r0, .L1104	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3424]	@ CurTime, LastEventTime
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1103:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.431, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L1100	@
.L1105:
	.align	2
.L1104:
	.word	.LANCHOR3-3476
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Btl_Isr
	.type	VCTRL_Btl_Isr, %function
VCTRL_Btl_Isr:
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
	bl	BTL_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Btl_Isr, .-VCTRL_Btl_Isr
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
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
.LFB1357:
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
.LFB1352:
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
	movw	r3, #:lower16:g_btl_hal_fun_ptr	@ tmp138,
	movt	r3, #:upper16:g_btl_hal_fun_ptr	@ tmp138,
	ldr	r0, [r3, #0]	@ D.36368, g_btl_hal_fun_ptr.pfun_BTLDRV_OpenHardware
	cmp	r0, #0	@ D.36368,
	beq	.L1115	@,
	blx	r0	@ D.36368
.L1116:
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	subs	r4, r0, #0	@ D.36373,
	bne	.L1121	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1122	@,
	bl	VCTRL_StartVfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1121:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	mov	r2, r0	@ D.36377,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1122:
	bl	SCDDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC305	@,
	movt	r1, #:upper16:.LC305	@,
	mov	r2, r0	@ D.36382,
	mov	r0, r4	@, D.36373
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1115:
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #523	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1116	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1351:
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
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i,
	mvn	r6, r4	@ tmp156, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1128	@
.L1127:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp160, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1124	@,
.L1145:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp156
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	cmp	r7, #200	@ WaitTime,
	bhi	.L1151	@,
.L1143:
	add	r5, r5, #1	@ i, tmp160,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1124	@,
.L1128:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1124	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp156
	cmp	r7, #200	@ WaitTime,
	bls	.L1127	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp160, i,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC306	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC306	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1145	@,
.L1124:
	bl	OSAL_GetTimeInMs	@
	mov	r6, #0	@ i.4697,
	bl	SCDDRV_PrepareSleep	@
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r7, r0	@ tmp151, BeginTime
	b	.L1133	@
.L1132:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp159, i.4697,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1129	@,
.L1146:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.4695
	addhi	r8, r0, r7	@ WaitTime.4694, CurTime.4695, tmp151
	rsbls	r8, r5, r0	@ WaitTime.4694, BeginTime, CurTime.4695
	cmp	r8, #200	@ WaitTime.4694,
	bhi	.L1152	@,
.L1140:
	add	r6, r6, #1	@ i.4697, tmp159,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.4697,
	beq	.L1129	@,
.L1133:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1129	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.4695
	rsbls	r8, r5, r0	@ WaitTime.4694, BeginTime, CurTime.4695
	addhi	r8, r0, r7	@ WaitTime.4694, CurTime.4695, tmp151
	cmp	r8, #200	@ WaitTime.4694,
	bls	.L1132	@,
	bl	SCDDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.4694
	movw	r1, #:lower16:.LC307	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC307	@,
	add	r6, r6, #1	@ tmp159, i.4697,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1146	@,
.L1129:
	bl	OSAL_GetTimeInMs	@
	bl	OSAL_GetTimeInMs	@
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	cmp	r4, r0	@ EntrTime, CurTime.4698
	rsbls	r2, r4, r0	@ iftmp.423, EntrTime, CurTime.4698
	mvnhi	r4, r4	@ tmp149, EntrTime
	addhi	r2, r0, r4	@ iftmp.423, CurTime.4698, tmp149
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1151:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC306	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC306	@,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1152:
	bl	SCDDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.4694
	movw	r1, #:lower16:.LC307	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC307	@,
	bl	dprint_vfmw	@
	b	.L1140	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1440:
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #284
	sub	sp, sp, #284	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r3, r1, #0	@ p_args, p_args
	bne	.L1215	@,
.L1154:
	mvn	r0, #1	@ D.40018,
.L1192:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1215:
	movw	r2, #513	@ tmp184,
	cmp	r0, r2	@ opt, tmp184
	ldr	r6, [r3, #0]	@ dat,* p_args
	beq	.L1167	@,
	bhi	.L1184	@,
	cmp	r0, #7	@ opt,
	beq	.L1160	@,
	bhi	.L1185	@,
	cmp	r0, #3	@ opt,
	beq	.L1156	@,
	bhi	.L1186	@,
	cmp	r0, #1	@ opt,
	beq	.L1156	@,
	bls	.L1216	@,
	bic	r4, r6, #-16777216	@ Thr, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #104	@ tmp326,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Thr
	movw	r1, #:lower16:.LC309	@,
	movt	r1, #:upper16:.LC309	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp326
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	beq	.L1217	@,
.L1156:
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1184:
	movw	r1, #898	@ tmp187,
	cmp	r0, r1	@ opt, tmp187
	beq	.L1213	@,
	bhi	.L1188	@,
	cmp	r0, #768	@ opt,
	beq	.L1171	@,
	bhi	.L1189	@,
	movw	ip, #515	@ tmp189,
	cmp	r0, ip	@ opt, tmp189
	beq	.L1169	@,
	bcc	.L1168	@,
	cmp	r0, #516	@ opt,
	bne	.L1154	@,
	mov	r0, r6	@, dat
	mov	r1, #5242880	@,
	mov	r2, #0	@,
	ldmib	r3, {r7, r8}	@ phole ldm
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ ptr,
	beq	.L1214	@,
	sub	r4, fp, #104	@ tmp328,,
	mov	r3, r6	@, dat
	movw	r1, #:lower16:.LC336	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC336	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	mov	r0, r4	@, tmp328
	bl	sprintf	@
	mov	r0, r4	@, tmp328
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L1207	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp296,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp296,
	ldr	ip, [r2, #92]	@ D.40132, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.40132,
	beq	.L1208	@,
	mov	r1, #1	@ tmp297,
	mov	r2, r7	@, D.40122
	str	r1, [sp, #0]	@ tmp297,
	mov	r3, r8	@, D.40124
	mov	r1, r5	@, ptr
	blx	ip	@ D.40132
.L1209:
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC337	@,
	mov	r2, r4	@, tmp328
	movt	r1, #:upper16:.LC337	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1206:
	mov	r0, r5	@, ptr
	bl	__arm_iounmap	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1188:
	movw	r3, #1026	@ tmp192,
	cmp	r0, r3	@ opt, tmp192
	beq	.L1179	@,
	bhi	.L1190	@,
	cmp	r0, #1024	@ opt,
	beq	.L1177	@,
	bhi	.L1178	@,
	movw	r1, #899	@ tmp194,
	cmp	r0, r1	@ opt, tmp194
	bne	.L1154	@,
	mov	r0, r6	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	mov	r3, r0	@ ret.4746,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, dat
	bl	VCTRL_ResetChan	@
	movw	r1, #:lower16:.LC339	@,
	mov	r2, r6	@, dat
	movt	r1, #:upper16:.LC339	@,
	mov	r3, r0	@ ret.4748,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1213:
	mov	r0, r6	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC340	@,
	movt	r1, #:upper16:.LC340	@,
	mov	r3, r0	@ ret.4750,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1160:
	bic	r4, r6, #-16777216	@ Thr, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #308	@ tmp210,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Thr
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp210
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1156	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp210
	str	r4, [fp, #-288]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1217:
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp326
	str	r4, [fp, #-88]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1185:
	cmp	r0, #13	@ opt,
	beq	.L1163	@,
	bhi	.L1187	@,
	cmp	r0, #11	@ opt,
	beq	.L1161	@,
	bhi	.L1162	@,
	cmp	r0, #8	@ opt,
	bne	.L1154	@,
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1186:
	cmp	r0, #5	@ opt,
	beq	.L1159	@,
	bhi	.L1156	@,
	and	r4, r6, #3	@ DecOrderOutput, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #172	@ tmp325,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, DecOrderOutput
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp325
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1156	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp325
	str	r4, [fp, #-144]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1190:
	movw	ip, #1281	@ tmp195,
	cmp	r0, ip	@ opt, tmp195
	beq	.L1181	@,
	bhi	.L1191	@,
	cmp	r0, #1280	@ opt,
	bne	.L1154	@,
	movw	lr, #:lower16:g_TraceCtrl	@ tmp316,
	movt	lr, #:upper16:g_TraceCtrl	@ tmp316,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC344	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC344	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1187:
	movw	r3, #257	@ tmp186,
	cmp	r0, r3	@ opt, tmp186
	beq	.L1165	@,
	cmp	r0, #512	@ opt,
	beq	.L1166	@,
	cmp	r0, #256	@ opt,
	bne	.L1154	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, dat
	bl	DBG_PrintTracer	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1189:
	cmp	r0, #896	@ opt,
	beq	.L1173	@,
	bhi	.L1174	@,
	movw	r2, #769	@ tmp191,
	cmp	r0, r2	@ opt, tmp191
	bne	.L1154	@,
	bl	VCTRL_Resume	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1169:
	mov	r0, r6	@, dat
	mov	r1, #5242880	@,
	mov	r2, #0	@,
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ ptr,
	beq	.L1214	@,
	sub	r4, fp, #104	@ tmp327,,
	mov	r3, r6	@, dat
	movw	r1, #:lower16:.LC333	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC333	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	mov	r0, r4	@, tmp327
	bl	sprintf	@
	mov	r0, r4	@, tmp327
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L1207	@,
	mov	r2, r6	@, fp
	mov	r1, #3145728	@,
	mov	r0, r5	@, ptr
	bl	klib_fwrite	@
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	mov	r2, r4	@, tmp327
	movw	r1, #:lower16:.LC334	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC334	@,
	bl	dprint_vfmw	@
	b	.L1206	@
.L1174:
	mov	r0, r6	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC339	@,
	movt	r1, #:upper16:.LC339	@,
	mov	r3, r0	@ ret.4742,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1173:
	mov	r0, r6	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1216:
	movw	r1, #:lower16:g_PrintEnable	@ tmp199,
	movt	r1, #:upper16:g_PrintEnable	@ tmp199,
	mov	r0, #1	@ D.40018,
	str	r6, [r1, #0]	@ dat, g_PrintEnable
	b	.L1192	@
.L1163:
	cmp	r6, #2	@ dat,
	bls	.L1195	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1168:
	cmp	r6, #1	@ dat,
	bhi	.L1156	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp264,
	movt	r4, #:upper16:.LANCHOR3	@ tmp264,
	ldr	r7, [r4, #-3396]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r7, #0	@ vfmw_save_yuv_file,
	beq	.L1218	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC331	@,
	movt	r1, #:upper16:.LC331	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #-3396]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp281,
	mov	r0, #1	@ D.40018,
	str	r3, [r4, #-3396]	@ tmp281, vfmw_save_yuv_file
	b	.L1192	@
.L1178:
	movw	ip, #:lower16:.LANCHOR3	@ tmp312,
	movt	ip, #:upper16:.LANCHOR3	@ tmp312,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC342	@,
	str	r6, [ip, #-3380]	@ dat, g_DnrSleepTime
	movt	r1, #:upper16:.LC342	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1162:
	cmp	r6, #1	@ dat,
	bls	.L1219	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC316	@,
	movt	r1, #:upper16:.LC316	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1161:
	cmp	r6, #1	@ dat,
	bls	.L1220	@,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1181:
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp318,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp318,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC345	@,
	str	r6, [ip, #0]	@ dat,
	movt	r1, #:upper16:.LC345	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1167:
	cmp	r6, #1	@ dat,
	bhi	.L1156	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp246,
	movt	r4, #:upper16:.LANCHOR3	@ tmp246,
	ldr	r7, [r4, #-3408]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r7, #0	@ vfmw_save_seg_file,
	beq	.L1221	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC327	@,
	movt	r1, #:upper16:.LC327	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #-3408]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r1, #0	@ tmp263,
	mov	r0, #1	@ D.40018,
	str	r1, [r4, #-3408]	@ tmp263, vfmw_save_seg_file
	b	.L1192	@
.L1171:
	bl	VCTRL_Suspend	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1179:
	movw	r3, #:lower16:.LANCHOR3	@ tmp314,
	movt	r3, #:upper16:.LANCHOR3	@ tmp314,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC343	@,
	str	r6, [r3, #-3376]	@ dat, g_StopDec
	movt	r1, #:upper16:.LC343	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1159:
	and	r4, r6, #3	@ Mode, dat,
	mov	r6, r6, lsr #24	@ ChanID, dat,
	sub	r5, fp, #240	@ tmp207,,
	mov	r0, #32	@,
	mov	r2, r6	@, ChanID
	mov	r3, r4	@, Mode
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp207
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1156	@,
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp207
	str	r4, [fp, #-216]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1177:
	movw	lr, #:lower16:.LANCHOR3	@ tmp310,
	movt	lr, #:upper16:.LANCHOR3	@ tmp310,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC341	@,
	str	r6, [lr, #-3384]	@ dat, g_SleepTime
	movt	r1, #:upper16:.LC341	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1166:
	cmp	r6, #1	@ dat,
	bhi	.L1156	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp228,
	movt	r4, #:upper16:.LANCHOR3	@ tmp228,
	ldr	r7, [r4, #-3420]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r7, #0	@ vfmw_save_str_file,
	beq	.L1222	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #-3420]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r0, #0	@ tmp245,
	str	r0, [r4, #-3420]	@ tmp245, vfmw_save_str_file
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1165:
	movw	r4, #:lower16:g_PrintEnable	@ tmp224,
	movt	r4, #:upper16:g_PrintEnable	@ tmp224,
	mov	r0, r6	@, dat
	mov	r2, #67108864	@ tmp226,
	ldr	r5, [r4, #0]	@ TmpPrintEnable, g_PrintEnable
	mov	r1, #1	@,
	str	r2, [r4, #0]	@ tmp226, g_PrintEnable
	bl	PrintScdRawState	@
	mov	r0, #1	@ D.40018,
	str	r5, [r4, #0]	@ TmpPrintEnable, g_PrintEnable
	b	.L1192	@
.L1195:
	movw	r3, #:lower16:.LANCHOR0	@ tmp221,
	movt	r3, #:upper16:.LANCHOR0	@ tmp221,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC318	@,
	str	r6, [r3, #116]	@ dat, g_CurProcChan
	movt	r1, #:upper16:.LC318	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1191:
	movw	r2, #1282	@ tmp197,
	cmp	r0, r2	@ opt, tmp197
	beq	.L1182	@,
	movw	r3, #1283	@ tmp198,
	cmp	r0, r3	@ opt, tmp198
	bne	.L1154	@,
	movw	lr, #:lower16:g_TraceImgPeriod	@ tmp322,
	movt	lr, #:upper16:g_TraceImgPeriod	@ tmp322,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC347	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC347	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1182:
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp320,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp320,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC346	@,
	str	r6, [r3, #0]	@ dat,
	movt	r1, #:upper16:.LC346	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1214:
	mov	r2, r6	@, dat
	movw	r1, #:lower16:.LC332	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC332	@,
	bl	dprint_vfmw	@
	b	.L1206	@
.L1220:
	movw	lr, #:lower16:USE_FF_APT_EN	@ tmp214,
	movt	lr, #:upper16:USE_FF_APT_EN	@ tmp214,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC313	@,
	str	r6, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC313	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1219:
	movw	ip, #:lower16:.LANCHOR0	@ tmp217,
	movt	ip, #:upper16:.LANCHOR0	@ tmp217,
	mov	r2, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC315	@,
	str	r6, [ip, #124]	@ dat, g_ResetCreateNewSave
	movt	r1, #:upper16:.LC315	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1207:
	mov	r2, r4	@, tmp328
	movw	r1, #:lower16:.LC335	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC335	@,
	bl	dprint_vfmw	@
	b	.L1206	@
.L1208:
	mov	r0, ip	@, D.40132
	movw	r1, #:lower16:.LC179	@,
	movw	r2, #7033	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L1209	@
.L1221:
	ldr	ip, [r4, #-3404]	@ save_file_cnt.696, save_file_cnt
	sub	r5, fp, #104	@ str.693,,
	movw	r1, #:lower16:.LC324	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	add	lr, ip, #1	@ tmp250, save_file_cnt.696,
	movt	r1, #:upper16:.LC324	@,
	mov	r3, ip	@, save_file_cnt.696
	movt	r2, #:upper16:.LANCHOR2	@,
	str	lr, [r4, #-3404]	@ tmp250, save_file_cnt
	mov	r0, r5	@, str.693
	bl	sprintf	@
	mov	r0, r5	@, str.693
	mov	r2, r7	@, vfmw_save_seg_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #-3400]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ vfmw_save_seg_file.698,
	str	r0, [r4, #-3408]	@ vfmw_save_seg_file.698, vfmw_save_seg_file
	beq	.L1199	@,
	mov	r2, r5	@, str.693
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC325	@,
	movt	r1, #:upper16:.LC325	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1218:
	ldr	ip, [r4, #-3392]	@ save_file_cnt.704, save_file_cnt
	sub	r5, fp, #104	@ str.701,,
	movw	r1, #:lower16:.LC328	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	add	lr, ip, #1	@ tmp268, save_file_cnt.704,
	movt	r1, #:upper16:.LC328	@,
	mov	r3, ip	@, save_file_cnt.704
	movt	r2, #:upper16:.LANCHOR2	@,
	str	lr, [r4, #-3392]	@ tmp268, save_file_cnt
	mov	r0, r5	@, str.701
	bl	sprintf	@
	mov	r0, r5	@, str.701
	mov	r2, r7	@, vfmw_save_yuv_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #-3388]	@ dat, save_yuv_chan_num
	cmp	r0, #0	@ vfmw_save_yuv_file.706,
	str	r0, [r4, #-3396]	@ vfmw_save_yuv_file.706, vfmw_save_yuv_file
	beq	.L1201	@,
	mov	r2, r5	@, str.701
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC329	@,
	movt	r1, #:upper16:.LC329	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1222:
	ldr	ip, [r4, #-3416]	@ save_file_cnt.688, save_file_cnt
	sub	r5, fp, #104	@ str.685,,
	movw	r1, #:lower16:.LC320	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	add	lr, ip, #1	@ tmp232, save_file_cnt.688,
	movt	r1, #:upper16:.LC320	@,
	mov	r3, ip	@, save_file_cnt.688
	movt	r2, #:upper16:.LANCHOR2	@,
	str	lr, [r4, #-3416]	@ tmp232, save_file_cnt
	mov	r0, r5	@, str.685
	bl	sprintf	@
	mov	r0, r5	@, str.685
	mov	r2, r7	@, vfmw_save_str_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #-3412]	@ dat, save_str_chan_num
	cmp	r0, #0	@ vfmw_save_str_file.690,
	str	r0, [r4, #-3420]	@ vfmw_save_str_file.690, vfmw_save_str_file
	beq	.L1197	@,
	mov	r2, r5	@, str.685
	mov	r3, r6	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1199:
	mov	r2, r5	@, str.693
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC326	@,
	movt	r1, #:upper16:.LC326	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1201:
	mov	r2, r5	@, str.701
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC330	@,
	movt	r1, #:upper16:.LC330	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
.L1197:
	mov	r2, r5	@, str.685
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC322	@,
	movt	r1, #:upper16:.LC322	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40018,
	b	.L1192	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	vfmw_write_proc
	.type	vfmw_write_proc, %function
vfmw_write_proc:
	.fnstart
.LFB1455:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #255	@ count,
	mov	r4, r2	@ count, count
	mov	r7, r1	@ buffer, buffer
	bhi	.L1392	@,
	ldr	r6, .L1401	@ tmp325,
	mov	r1, #256	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp323,
	movt	r5, #:upper16:.LANCHOR3	@ tmp323,
	mov	r0, r6	@, tmp325
	bl	__memzero	@
	mov	r2, sp	@,
	bic	r1, r2, #8128	@ tmp168,,
	bic	r0, r1, #63	@ tmp168, tmp168,
	ldr	r3, [r0, #8]	@ <variable>.addr_limit, <variable>.addr_limit
#APP
@ 420 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include/asm/uaccess.h" 1
	adds r2, r7, r4; sbcccs r2, r2, r3; movcc r3, #0	@ roksum, buffer, count, flag
@ 0 "" 2
	cmp	r3, #0	@ flag,
	beq	.L1393	@,
	cmp	r4, #0	@ count,
	streqb	r4, [r5, #-3372]	@ count, buf
	bne	.L1394	@,
.L1390:
	mov	r7, r4	@ i, count
	mov	r3, r4	@ j, count
.L1231:
	ldr	r8, .L1401+4	@ tmp324,
	add	lr, r3, r5	@ tmp197, j, tmp323
	mov	ip, #0	@ tmp199,
	sub	r1, fp, #40	@,,
	strb	ip, [lr, #-3116]	@ tmp199, str
	mov	r0, r8	@, tmp324
	bl	str2val	@
	subs	r3, r0, #0	@ D.41037,
	bne	.L1237	@,
	cmp	r4, r7	@ count, i
	bls	.L1239	@,
	add	r2, r6, r7	@ ivtmp.4803, tmp325, i
	mvn	r1, r7	@ tmp350, i
	add	r0, r1, r4	@ tmp349, tmp350, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4827, buf
	and	r0, r0, #1	@ tmp351, tmp349,
	cmp	r1, #32	@ prephitmp.4827,
	beq	.L1320	@,
	movhi	r3, #1	@ j.4808,
	strhib	r1, [r8, #0]	@ prephitmp.4827, str
.L1320:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4803, ivtmp.4803,
	cmp	r7, r4	@ i, count
	bcs	.L1239	@,
	cmp	r0, #0	@ tmp351,
	beq	.L1244	@,
	cmp	r3, #0	@ j.4808,
	bne	.L1395	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4827, buf
	cmp	r1, #32	@ prephitmp.4827,
	beq	.L1324	@,
.L1382:
	cmp	r1, #32	@ prephitmp.4827,
	addhi	r0, r3, r5	@ tmp410, j.4808, tmp323
	addhi	r3, r3, #1	@ j.4808, j.4808,
	strhib	r1, [r0, #-3116]	@ prephitmp.4827, str
	cmp	r3, #0	@ j.4808,
	beq	.L1324	@,
	cmp	r1, #32	@ prephitmp.4827,
	beq	.L1239	@,
.L1324:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4803, ivtmp.4803,
	cmp	r7, r4	@ i, count
	bcc	.L1244	@,
	b	.L1239	@
.L1327:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4827, buf
	cmp	r2, #32	@ prephitmp.4827,
	beq	.L1329	@,
.L1384:
	cmp	r2, #32	@ prephitmp.4827,
	addhi	ip, r3, r5	@ tmp414, j.4808, tmp323
	addhi	r3, r3, #1	@ j.4808, j.4808,
	strhib	r2, [ip, #-3116]	@ prephitmp.4827, str
	cmp	r3, #0	@ j.4808,
	beq	.L1329	@,
	cmp	r2, #32	@ prephitmp.4827,
	beq	.L1239	@,
.L1329:
	add	r7, r0, #1	@ i, tmp353,
	add	r2, r1, #1	@ ivtmp.4803, tmp352,
	cmp	r7, r4	@ i, count
	bcs	.L1239	@,
.L1244:
	cmp	r3, #0	@ j.4808,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4827, buf
	bne	.L1241	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4827, buf
	cmp	r1, #32	@ prephitmp.4827,
	beq	.L1242	@,
.L1241:
	cmp	r1, #32	@ prephitmp.4827,
	addhi	r0, r3, r5	@ tmp214, j.4808, tmp323
	addhi	r3, r3, #1	@ j.4808, j.4808,
	strhib	r1, [r0, #-3116]	@ prephitmp.4827, str
	cmp	r3, #0	@ j.4808,
	beq	.L1242	@,
	cmp	r1, #32	@ prephitmp.4827,
	beq	.L1239	@,
.L1242:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.4808,
	add	r1, r2, #1	@ tmp352, ivtmp.4803,
	mov	r0, r7	@ tmp353, i
	beq	.L1327	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4827, buf
	b	.L1384	@
.L1239:
	add	r3, r3, r5	@ tmp219, j.4808, tmp323
	mov	r2, #0	@ tmp221,
	ldr	r0, .L1401+4	@,
	sub	r1, fp, #44	@,,
	strb	r2, [r3, #-3116]	@ tmp221, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.41050,
	bne	.L1263	@,
	ldr	r2, [fp, #-40]	@ prephitmp.4775, dat1
	sub	ip, r2, #512	@ tmp231, prephitmp.4775,
	cmp	ip, #255	@ tmp231,
	bhi	.L1246	@,
	cmp	r2, #516	@ prephitmp.4775,
	beq	.L1396	@,
.L1247:
	cmp	r4, r7	@ count, i
	movls	r3, #0	@ j.4811,
	bls	.L1265	@,
	add	r6, r6, r7	@ ivtmp.4791, tmp325, i
	mvn	r3, r7	@ tmp335, i
	add	ip, r3, r4	@ tmp334, tmp335, count
	mov	r3, #0	@ j.4811,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4814, buf
	and	r1, ip, #1	@ tmp336, tmp334,
	cmp	r2, #32	@ prephitmp.4814,
	beq	.L1281	@,
	ldrhi	r0, .L1401+4	@ tmp371,
	movhi	r3, #1	@ j.4811,
	strhib	r2, [r0, #0]	@ prephitmp.4814, str
.L1281:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #1	@ ivtmp.4791, ivtmp.4791,
	cmp	r4, r7	@ count, i
	bls	.L1265	@,
	cmp	r1, #0	@ tmp336,
	beq	.L1270	@,
	cmp	r3, #0	@ j.4811,
	bne	.L1397	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4814, buf
	cmp	r2, #32	@ prephitmp.4814,
	beq	.L1285	@,
.L1367:
	cmp	r2, #32	@ prephitmp.4814,
	addhi	r1, r3, r5	@ tmp374, j.4811, tmp323
	addhi	r3, r3, #1	@ j.4811, j.4811,
	strhib	r2, [r1, #-3116]	@ prephitmp.4814, str
	cmp	r3, #0	@ j.4811,
	beq	.L1285	@,
	cmp	r2, #32	@ prephitmp.4814,
	bls	.L1265	@,
.L1285:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #1	@ ivtmp.4791, ivtmp.4791,
	cmp	r4, r7	@ count, i
	bhi	.L1270	@,
	b	.L1265	@
.L1288:
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ prephitmp.4814, buf
	cmp	r2, #32	@ prephitmp.4814,
	beq	.L1290	@,
.L1369:
	cmp	r2, #32	@ prephitmp.4814,
	addhi	r0, r3, r5	@ tmp378, j.4811, tmp323
	addhi	r3, r3, #1	@ j.4811, j.4811,
	strhib	r2, [r0, #-3116]	@ prephitmp.4814, str
	cmp	r3, #0	@ j.4811,
	beq	.L1290	@,
	cmp	r2, #32	@ prephitmp.4814,
	bls	.L1265	@,
.L1290:
	add	r7, r7, #1	@ i, tmp337,
	add	r6, r1, #1	@ ivtmp.4791, tmp338,
	cmp	r4, r7	@ count, i
	bls	.L1265	@,
.L1270:
	cmp	r3, #0	@ j.4811,
	ldrneb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4814, buf
	bne	.L1267	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4814, buf
	cmp	r2, #32	@ prephitmp.4814,
	beq	.L1268	@,
.L1267:
	cmp	r2, #32	@ prephitmp.4814,
	addhi	r1, r3, r5	@ tmp282, j.4811, tmp323
	addhi	r3, r3, #1	@ j.4811, j.4811,
	strhib	r2, [r1, #-3116]	@ prephitmp.4814, str
	cmp	r3, #0	@ j.4811,
	beq	.L1268	@,
	cmp	r2, #32	@ prephitmp.4814,
	bls	.L1265	@,
.L1268:
	cmp	r3, #0	@ j.4811,
	add	r7, r7, #1	@ tmp337, i,
	add	r1, r6, #1	@ tmp338, ivtmp.4791,
	beq	.L1288	@,
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ prephitmp.4814, buf
	b	.L1369	@
.L1265:
	add	lr, r3, r5	@ tmp287, j.4811, tmp323
	mov	r1, #0	@ tmp289,
	movw	r2, #:lower16:.LANCHOR3	@ tmp285,
	movt	r2, #:upper16:.LANCHOR3	@ tmp285,
	strb	r1, [lr, #-3116]	@ tmp289, str
	ldrb	r0, [r5, #-3116]	@ zero_extendqisi2	@ str, str
	cmp	r0, #47	@ str,
	bne	.L1391	@,
	sub	r3, r3, #1	@ D.41095, j.4811,
	mov	r0, #32	@,
	add	r2, r3, r2	@ tmp295, D.41095, tmp285
	ldrb	ip, [r2, #-3116]	@ zero_extendqisi2	@ tmp297, str
	cmp	ip, #47	@ tmp297,
	streqb	r1, [r2, #-3116]	@ tmp289, str
	ldr	r2, .L1401+4	@,
	movw	r1, #:lower16:.LC351	@,
	movt	r1, #:upper16:.LC351	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR2	@,
	ldr	r1, .L1401+4	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	strcpy	@
.L1391:
	ldr	r2, [fp, #-40]	@ prephitmp.4775, dat1
.L1246:
	ldr	r3, [fp, #-44]	@, dat2
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC352	@,
	movt	r1, #:upper16:.LC352	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-44]	@ dat2, dat2
	ldr	ip, [fp, #-48]	@ dat3, dat3
	sub	r1, fp, #84	@,,
	ldr	r2, [fp, #-52]	@ dat4, dat4
	ldr	r0, [fp, #-40]	@, dat1
	str	r3, [fp, #-84]	@ dat2, args
	str	ip, [fp, #-80]	@ dat3, args
	str	r2, [fp, #-76]	@ dat4, args
	bl	VCTRL_SetDbgOption	@
	mov	r0, r4	@ D.41013, count
.L1225:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1395:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4827, buf
	b	.L1382	@
.L1397:
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4814, buf
	b	.L1367	@
.L1393:
	mov	r1, r7	@, buffer
	mov	r0, r6	@, tmp325
	mov	r2, r4	@, count
	bl	__copy_from_user	@
	subs	r3, r0, #0	@ count.4822,
	bne	.L1227	@,
	add	r7, r4, r5	@ tmp180, count, tmp323
	cmp	r4, #0	@ count,
	strb	r3, [r7, #-3372]	@ count.4822, buf
	beq	.L1390	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.4777, buf
	sub	r8, r4, #1	@ tmp354, count,
	and	r1, r8, #1	@ tmp356, tmp354,
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1333	@,
	ldrhi	r0, .L1401+4	@ tmp419,
	movhi	r3, #1	@ j,
	strhib	r2, [r0, #0]	@ prephitmp.4777, str
.L1333:
	mov	r7, #1	@ i,
	cmp	r4, r7	@ count, i
	bls	.L1231	@,
	cmp	r1, #0	@ tmp356,
	beq	.L1236	@,
	cmp	r3, #0	@ j,
	bne	.L1398	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1337	@,
.L1387:
	cmp	r2, #32	@ prephitmp.4777,
	addhi	r1, r3, r5	@ tmp422, j, tmp323
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #-3116]	@ prephitmp.4777, str
	cmp	r3, #0	@ j,
	beq	.L1337	@,
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1231	@,
.L1337:
	add	r7, r7, #1	@ i, i,
	cmp	r4, r7	@ count, i
	bhi	.L1236	@,
	b	.L1231	@
.L1340:
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1342	@,
.L1389:
	cmp	r2, #32	@ prephitmp.4777,
	addhi	r0, r3, r5	@ tmp426, j, tmp323
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r0, #-3116]	@ prephitmp.4777, str
	cmp	r3, #0	@ j,
	beq	.L1342	@,
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1231	@,
.L1342:
	add	r7, r1, #1	@ i, tmp357,
	cmp	r4, r7	@ count, i
	bls	.L1231	@,
.L1236:
	cmp	r3, #0	@ j,
	ldrneb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	bne	.L1233	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1234	@,
.L1233:
	cmp	r2, #32	@ prephitmp.4777,
	addhi	r1, r3, r5	@ tmp192, j, tmp323
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #-3116]	@ prephitmp.4777, str
	cmp	r3, #0	@ j,
	beq	.L1234	@,
	cmp	r2, #32	@ prephitmp.4777,
	beq	.L1231	@,
.L1234:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j,
	mov	r1, r7	@ tmp357, i
	beq	.L1340	@,
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	b	.L1389	@
.L1398:
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@ prephitmp.4777, buf
	b	.L1387	@
.L1394:
	mov	r0, r6	@, tmp325
	mov	r1, r4	@, count
	bl	__memzero	@
.L1227:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC349	@,
	movt	r1, #:upper16:.LC349	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.41013,
	b	.L1225	@
.L1396:
	cmp	r4, r7	@ count, i
	bls	.L1249	@,
	add	r2, r6, r7	@ ivtmp.4799, tmp325, i
	mvn	r0, r7	@ tmp345, i
	add	lr, r0, r4	@ tmp344, tmp345, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4825, buf
	and	r0, lr, #1	@ tmp346, tmp344,
	cmp	r1, #32	@ prephitmp.4825,
	beq	.L1307	@,
	ldrhi	ip, .L1401+4	@ tmp395,
	movhi	r3, #1	@ j.4809,
	strhib	r1, [ip, #0]	@ prephitmp.4825, str
.L1307:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4799, ivtmp.4799,
	cmp	r4, r7	@ count, i
	bls	.L1249	@,
	cmp	r0, #0	@ tmp346,
	beq	.L1254	@,
	cmp	r3, #0	@ j.4809,
	bne	.L1399	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4825, buf
	cmp	r1, #32	@ prephitmp.4825,
	beq	.L1311	@,
.L1377:
	cmp	r1, #32	@ prephitmp.4825,
	addhi	r0, r3, r5	@ tmp398, j.4809, tmp323
	addhi	r3, r3, #1	@ j.4809, j.4809,
	strhib	r1, [r0, #-3116]	@ prephitmp.4825, str
	cmp	r3, #0	@ j.4809,
	beq	.L1311	@,
	cmp	r1, #32	@ prephitmp.4825,
	bls	.L1249	@,
.L1311:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4799, ivtmp.4799,
	cmp	r4, r7	@ count, i
	bhi	.L1254	@,
	b	.L1249	@
.L1314:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4825, buf
	cmp	r2, #32	@ prephitmp.4825,
	beq	.L1316	@,
.L1379:
	cmp	r2, #32	@ prephitmp.4825,
	addhi	ip, r3, r5	@ tmp402, j.4809, tmp323
	addhi	r3, r3, #1	@ j.4809, j.4809,
	strhib	r2, [ip, #-3116]	@ prephitmp.4825, str
	cmp	r3, #0	@ j.4809,
	beq	.L1316	@,
	cmp	r2, #32	@ prephitmp.4825,
	bls	.L1249	@,
.L1316:
	add	r7, r0, #1	@ i, tmp347,
	add	r2, r1, #1	@ ivtmp.4799, tmp348,
	cmp	r4, r7	@ count, i
	bls	.L1249	@,
.L1254:
	cmp	r3, #0	@ j.4809,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4825, buf
	bne	.L1251	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4825, buf
	cmp	r1, #32	@ prephitmp.4825,
	beq	.L1252	@,
.L1251:
	cmp	r1, #32	@ prephitmp.4825,
	addhi	r0, r3, r5	@ tmp238, j.4809, tmp323
	addhi	r3, r3, #1	@ j.4809, j.4809,
	strhib	r1, [r0, #-3116]	@ prephitmp.4825, str
	cmp	r3, #0	@ j.4809,
	beq	.L1252	@,
	cmp	r1, #32	@ prephitmp.4825,
	bls	.L1249	@,
.L1252:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.4809,
	add	r1, r2, #1	@ tmp348, ivtmp.4799,
	mov	r0, r7	@ tmp347, i
	beq	.L1314	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4825, buf
	b	.L1379	@
.L1249:
	add	r3, r3, r5	@ tmp243, j.4809, tmp323
	mov	r2, #0	@ tmp245,
	ldr	r0, .L1401+4	@,
	sub	r1, fp, #48	@,,
	strb	r2, [r3, #-3116]	@ tmp245, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.41068,
	bne	.L1263	@,
	cmp	r4, r7	@ count, i
	bls	.L1257	@,
	add	r2, r6, r7	@ ivtmp.4795, tmp325, i
	mvn	r1, r7	@ tmp340, i
	add	ip, r1, r4	@ tmp339, tmp340, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4826, buf
	and	r0, ip, #1	@ tmp341, tmp339,
	cmp	r1, #32	@ prephitmp.4826,
	beq	.L1294	@,
	ldrhi	ip, .L1401+4	@ tmp383,
	movhi	r3, #1	@ j.4810,
	strhib	r1, [ip, #0]	@ prephitmp.4826, str
.L1294:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4795, ivtmp.4795,
	cmp	r4, r7	@ count, i
	bls	.L1257	@,
	cmp	r0, #0	@ tmp341,
	beq	.L1262	@,
	cmp	r3, #0	@ j.4810,
	bne	.L1400	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4826, buf
	cmp	r1, #32	@ prephitmp.4826,
	beq	.L1298	@,
.L1372:
	cmp	r1, #32	@ prephitmp.4826,
	addhi	r0, r3, r5	@ tmp386, j.4810, tmp323
	addhi	r3, r3, #1	@ j.4810, j.4810,
	strhib	r1, [r0, #-3116]	@ prephitmp.4826, str
	cmp	r3, #0	@ j.4810,
	beq	.L1298	@,
	cmp	r1, #32	@ prephitmp.4826,
	bls	.L1257	@,
.L1298:
	add	r7, r7, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.4795, ivtmp.4795,
	cmp	r4, r7	@ count, i
	bhi	.L1262	@,
	b	.L1257	@
.L1301:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4826, buf
	cmp	r2, #32	@ prephitmp.4826,
	beq	.L1303	@,
.L1374:
	cmp	r2, #32	@ prephitmp.4826,
	addhi	ip, r3, r5	@ tmp390, j.4810, tmp323
	addhi	r3, r3, #1	@ j.4810, j.4810,
	strhib	r2, [ip, #-3116]	@ prephitmp.4826, str
	cmp	r3, #0	@ j.4810,
	beq	.L1303	@,
	cmp	r2, #32	@ prephitmp.4826,
	bls	.L1257	@,
.L1303:
	add	r7, r0, #1	@ i, tmp342,
	add	r2, r1, #1	@ ivtmp.4795, tmp343,
	cmp	r4, r7	@ count, i
	bls	.L1257	@,
.L1262:
	cmp	r3, #0	@ j.4810,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4826, buf
	bne	.L1259	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4826, buf
	cmp	r1, #32	@ prephitmp.4826,
	beq	.L1260	@,
.L1259:
	cmp	r1, #32	@ prephitmp.4826,
	addhi	r0, r3, r5	@ tmp260, j.4810, tmp323
	addhi	r3, r3, #1	@ j.4810, j.4810,
	strhib	r1, [r0, #-3116]	@ prephitmp.4826, str
	cmp	r3, #0	@ j.4810,
	beq	.L1260	@,
	cmp	r1, #32	@ prephitmp.4826,
	bls	.L1257	@,
.L1260:
	add	r7, r7, #1	@ i, i,
	cmp	r3, #0	@ j.4810,
	add	r1, r2, #1	@ tmp343, ivtmp.4795,
	mov	r0, r7	@ tmp342, i
	beq	.L1301	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.4826, buf
	b	.L1374	@
.L1257:
	add	r2, r3, r5	@ tmp265, j.4810, tmp323
	mov	lr, #0	@ tmp267,
	ldr	r0, .L1401+4	@,
	sub	r1, fp, #52	@,,
	strb	lr, [r2, #-3116]	@ tmp267, str
	bl	str2val	@
	cmp	r0, #0	@,
	beq	.L1247	@,
.L1263:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC350	@,
	ldr	r2, .L1401	@,
	movt	r1, #:upper16:.LC350	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41013,
	b	.L1225	@
.L1399:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4825, buf
	b	.L1377	@
.L1400:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.4826, buf
	b	.L1372	@
.L1392:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.41013,
	b	.L1225	@
.L1237:
	sub	r2, r8, #256	@, tmp324,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC350	@,
	movt	r1, #:upper16:.LC350	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41013,
	b	.L1225	@
.L1402:
	.align	2
.L1401:
	.word	.LANCHOR3-3372
	.word	.LANCHOR3-3116
	.fnend
	.size	vfmw_write_proc, .-vfmw_write_proc
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1393:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp191,
	movt	r5, #:upper16:.LANCHOR0	@ tmp191,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.37896, s_pstVfmwChan
	cmp	r3, #0	@ D.37896,
	beq	.L1414	@,
	ldr	r7, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r8, [r5, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r6, #0	@ tmp144,
	add	r0, r5, #128	@ tmp149, tmp191,
	mov	r2, #300	@ tmp151,
	mov	r1, r2	@, tmp151
	str	r6, [r8, #696]	@ tmp144, <variable>.s32CountNoDecparamFlag
	movw	r8, #:lower16:11199096	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp146, s_pstVfmwChan
	movt	r8, #:upper16:11199096	@,
	mla	r0, r2, r4, r0	@, tmp151, ChanID, tmp149
	str	r6, [r3, #700]	@ tmp144, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	BTL_InformDecChanReset	@
	add	r0, r5, #856	@, tmp191,
	bl	OSAL_LockIRQ	@
	ldr	ip, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	movw	r1, #:lower16:11199436	@ tmp158,
	movt	r1, #:upper16:11199436	@ tmp158,
	mov	r0, r4	@, ChanID
	str	r6, [ip, r1]	@ tmp144, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r9, [r5, r4, asl #2]	@ tmp163, s_pstVfmwChan
	mov	r1, #200	@,
	add	r0, r9, r8	@, tmp163,
	mvn	r8, #0	@ tmp167,
	bl	__memzero	@
	ldr	r0, [r5, r4, asl #2]	@ tmp165, s_pstVfmwChan
	movw	r3, #:lower16:11199048	@ tmp166,
	movt	r3, #:upper16:11199048	@ tmp166,
	mvn	r9, #0	@,
	movw	r2, #:lower16:11199056	@ tmp170,
	strd	r8, [r0, r3]	@ tmp167, tmp165, tmp166
	movt	r2, #:upper16:11199056	@ tmp170,
	ldr	r1, [r5, r4, asl #2]	@ tmp169, s_pstVfmwChan
	movw	ip, #:lower16:11199296	@ tmp174,
	movt	ip, #:upper16:11199296	@ tmp174,
	add	r0, r5, #856	@, tmp191,
	strd	r8, [r1, r2]	@ tmp167, tmp169, tmp170
	ldr	r2, [r5, r4, asl #2]	@ tmp173, s_pstVfmwChan
	str	r6, [r2, ip]	@ tmp144, <variable>.stSynExtraData.s32NewPicSegDetector
	bl	OSAL_UnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	FSP_SwitchNotify	@
	ldr	r0, [r5, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1406	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1407:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	ip, [r5, #124]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	ip, #0	@ g_ResetCreateNewSave,
	beq	.L1408	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp185,
	movt	r5, #:upper16:.LANCHOR3	@ tmp185,
	mov	r1, #0	@ tmp184,
	str	r1, [fp, #-40]	@ tmp184, data
	ldr	lr, [r5, #-3420]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	subeq	r6, fp, #40	@ prephitmp.4844,,
	beq	.L1410	@,
	sub	r6, fp, #40	@ prephitmp.4844,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.4844
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #-3420]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1410	@,
.L1411:
	movw	r1, #:lower16:.LC353	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC353	@,
	bl	dprint_vfmw	@
.L1408:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1415	@,
.L1412:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37900,
.L1405:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L1415:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1412	@
.L1406:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1407	@
.L1410:
	mov	r1, r6	@, prephitmp.4844
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1411	@
.L1414:
	mov	r0, r3	@, D.37896
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3453	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37900,
	b	.L1405	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1389:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pstCfg, pstCfg
	bhi	.L1485	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp497,
	movt	r5, #:upper16:.LANCHOR0	@ tmp497,
	ldr	r3, [r5, r0, asl #2]	@ D.37567, s_pstVfmwChan
	cmp	r3, #0	@ D.37567,
	beq	.L1486	@,
	ldr	r3, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1487	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L1488	@,
	ldr	r0, .L1500	@,
	movw	r8, #:lower16:.LANCHOR3	@ tmp498,
	bl	GetVdecCapability	@
	movt	r8, #:upper16:.LANCHOR3	@ tmp498,
	ldr	r3, .L1500	@ ivtmp.4906,
	ldr	r0, .L1500+4	@ D.45682,
	b	.L1424	@
.L1489:
	ldr	r7, [r6, #0]	@ D.37581, <variable>.eVidStd
	cmp	r2, r7	@ D.37578, D.37581
	beq	.L1423	@,
	ldr	r2, [r1, #20]	@ D.37578, Capability.SupportedStd
	cmp	r2, #18	@ D.37578,
	bhi	.L1422	@,
	cmp	r2, r7	@ D.37578, D.37581
	beq	.L1423	@,
	cmp	r3, r0	@ ivtmp.4906, D.45682
	beq	.L1423	@,
.L1424:
	ldr	r2, [r3, #20]	@ D.37578, Capability.SupportedStd
	add	r1, r3, #4	@ tmp501, ivtmp.4906,
	add	r3, r1, #4	@ ivtmp.4906, tmp501,
	cmp	r2, #18	@ D.37578,
	bls	.L1489	@,
.L1422:
	mvn	r0, #0	@ D.37565,
.L1418:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1423:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	sl, r0, #0	@ D.37584,
	beq	.L1490	@,
	sub	r0, r7, #10	@ tmp219, D.37581,
	cmp	r0, #2	@ tmp219,
	bhi	.L1426	@,
	ldr	r1, [r5, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L1427	@,
.L1428:
	cmp	r7, #14	@ D.37581,
	movne	r1, #0	@, prephitmp.4970
	moveq	r1, #1	@, prephitmp.4970
.L1429:
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.4883, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp225,
	movt	r3, #:upper16:.LANCHOR0	@ tmp225,
	ldr	r2, [r7, #36]	@ D.37604, <variable>.stChanCfg.eVidStd
	sub	r9, r2, #10	@ tmp226, D.37604,
	cmp	r9, #2	@ tmp226,
	bhi	.L1430	@,
	ldr	ip, [r3, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L1431	@,
.L1432:
	cmp	r2, #14	@ D.37604,
	movne	r2, #0	@, prephitmp.4881
	moveq	r2, #1	@, prephitmp.4881
.L1433:
	cmp	r2, r1	@ prephitmp.4881, prephitmp.4970
	beq	.L1434	@,
	ldr	r2, [r7, #152]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #0	@ <variable>.s32OneChanMem,
	bne	.L1435	@,
	ldr	sl, [r7, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	sl, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1491	@,
.L1436:
	ldr	r0, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r6, #0]	@ temp.4912, <variable>.eVidStd
	sub	r0, r3, #10	@ tmp239, temp.4912,
	cmp	r0, #2	@ tmp239,
	bls	.L1492	@,
	cmp	r3, #4	@ temp.4912,
	beq	.L1438	@,
	cmp	r3, #14	@ temp.4912,
	bne	.L1439	@,
.L1438:
	ldr	r1, [r7, #176]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #188]	@ temp.4922, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ temp.4922,
	mov	sl, r0	@ pVir_vdh,
	bne	.L1493	@,
.L1440:
	mov	r9, #0	@ pVir_scd,
.L1441:
	cmp	sl, #0	@ pVir_vdh,
	beq	.L1442	@,
	ldr	r3, [r7, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	rsbs	r1, r9, #1	@, pVir_scd
	movcc	r1, #0	@
	cmp	r3, #0	@ <variable>.stChanMem_scd.Length,
	moveq	r1, #0	@,,
	cmp	r1, #0	@ tmp256,
	mov	r3, r1	@ tmp256,
	bne	.L1442	@,
	add	r0, r7, #168
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	r3, [fp, #-220]	@,
	bl	MEM_DelMemRecord	@
	ldr	r3, [fp, #-220]	@,
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	bne	.L1494	@,
	str	sl, [r7, #172]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, sl	@, pVir_vdh
	ldr	r0, [r7, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #176]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.37657,
	bne	.L1495	@,
	ldr	r2, [r7, #188]	@ temp.4939, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.4939,
	bne	.L1446	@,
.L1478:
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.4883, s_pstVfmwChan
.L1434:
	add	r0, r7, #36	@, prephitmp.4883,
	mov	r2, #68	@,
	mov	r1, r6	@, pstCfg
	sub	r7, fp, #180	@ tmp345,,
	bl	memcpy	@
	ldr	r9, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	r3, [r5, r4, asl #2]	@ tmp340, s_pstVfmwChan
	movw	ip, #:lower16:.LANCHOR0	@,
	str	r6, [fp, #-184]	@ pstCfg, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r1, #96	@,
	mov	r0, r7	@, tmp345
	str	r9, [r3, #20]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	str	ip, [fp, #-208]	@, %sfp
	ldr	r2, [r5, r4, asl #2]	@ tmp343, s_pstVfmwChan
	ldr	sl, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	sl, [r2, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ tmp347, s_pstVfmwChan
	ldr	r0, [r3, #232]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r0, [fp, #-168]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [r3, #232]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-184]	@, %sfp
	ldr	lr, [r5, r4, asl #2]	@ tmp353, s_pstVfmwChan
	sub	r2, fp, #156	@ tmp361,,
	movw	r3, #:lower16:-104726528	@ tmp358,
	movt	r3, #:upper16:-104726528	@ tmp358,
	ldr	sl, [r1], #4	@ <variable>.eVidStd, <variable>.eVidStd
	str	r1, [fp, #-184]	@, %sfp
	ldr	r9, [fp, #-184]	@, %sfp
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	str	r0, [fp, #-180]	@, ScdInstCfg.pBufVirAddr
	ldmia	r9, {r0, r1}	@,,
	ldr	r9, [lr, #244]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	mov	lr, #0	@,
	strb	ip, [fp, #-176]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	stmia	r2, {r0, r1}	@ tmp361,,
	mov	r1, r7	@, tmp345
	mov	r0, r4	@, ChanID
	str	r9, [fp, #-164]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	sl, [fp, #-172]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	mvn	sl, #0	@ tmp360,
	str	r3, [fp, #-160]	@ tmp358, ScdInstCfg.RegPhyBaseAddr
	movw	r9, #:lower16:11199020	@ tmp374,
	str	sl, [fp, #-148]	@ tmp360, ScdInstCfg.LastRawDisContinueCount
	movt	r9, #:upper16:11199020	@ tmp374,
	str	lr, [fp, #-144]	@, ScdInstCfg.DisContinueRawPacketFlag
	bl	SM_Config	@
	ldr	r7, [r5, r4, asl #2]	@ temp.5021, s_pstVfmwChan
	movw	r0, #:lower16:11199416	@ tmp365,
	movt	r0, #:upper16:11199416	@ tmp365,
	movw	r1, #:lower16:11199040	@,
	movt	r1, #:upper16:11199040	@,
	movw	r3, #:lower16:11199420	@ tmp368,
	ldr	ip, [r7, #192]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	movt	r3, #:upper16:11199420	@ tmp368,
	movw	r2, #:lower16:11199016	@ tmp371,
	movt	r2, #:upper16:11199016	@ tmp371,
	movw	sl, #:lower16:11199028	@ tmp377,
	movt	sl, #:upper16:11199028	@ tmp377,
	str	ip, [r7, r0]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	movw	r0, #:lower16:11198996	@,
	ldr	ip, [r5, r4, asl #2]	@ temp.5022, s_pstVfmwChan
	movt	r0, #:upper16:11198996	@,
	str	r1, [fp, #-224]	@, %sfp
	movw	r1, #:lower16:11198992	@,
	str	r0, [fp, #-228]	@, %sfp
	movt	r1, #:upper16:11198992	@,
	str	r1, [fp, #-192]	@, %sfp
	movw	r1, #:lower16:11199000	@,
	ldr	r0, [ip, #200]	@, <variable>.stChanMem_ctx.Length
	movt	r1, #:upper16:11199000	@,
	movw	r7, #:lower16:11199032	@ tmp380,
	movt	r7, #:upper16:11199032	@ tmp380,
	movw	lr, #:lower16:11199036	@ tmp383,
	movt	lr, #:upper16:11199036	@ tmp383,
	str	r0, [ip, r3]	@, <variable>.stSynExtraData.s32ContextMemSize
	movw	r3, #:lower16:11199008	@,
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	movt	r3, #:upper16:11199008	@,
	str	r1, [fp, #-196]	@, %sfp
	movw	ip, #:lower16:11199424	@,
	str	r3, [fp, #-188]	@, %sfp
	movt	ip, #:upper16:11199424	@,
	ldr	r0, [r0, #216]	@, <variable>.s32VdmChanMemAddr
	movw	r3, #:lower16:11199440	@,
	str	ip, [fp, #-200]	@, %sfp
	movt	r3, #:upper16:11199440	@,
	ldr	ip, [r5, r4, asl #2]	@, s_pstVfmwChan
	movw	r1, #:lower16:11199004	@ tmp402,
	str	r3, [fp, #-204]	@, %sfp
	movt	r1, #:upper16:11199004	@ tmp402,
	movw	r3, #:lower16:11199300	@ tmp418,
	movt	r3, #:upper16:11199300	@ tmp418,
	str	r0, [ip, r2]	@, <variable>.stSynExtraData.s32SyntaxMemAddr
	movw	r2, #:lower16:11199012	@ tmp426,
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	movt	r2, #:upper16:11199012	@ tmp426,
	ldr	ip, [r5, r4, asl #2]	@, s_pstVfmwChan
	ldr	r0, [r0, #220]	@, <variable>.s32VdmChanMemSize
	str	r0, [ip, r9]	@, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r9, [r5, r4, asl #2]	@ temp.5025, s_pstVfmwChan
	ldr	r0, [r9, #248]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r0, [r9, sl]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	sl, [r5, r4, asl #2]	@ temp.5026, s_pstVfmwChan
	ldr	ip, [sl, #252]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	ip, [sl, r7]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r7, [r5, r4, asl #2]	@ temp.5027, s_pstVfmwChan
	ldr	sl, [r7, #256]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	sl, [r7, lr]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	lr, [r5, r4, asl #2]	@ temp.5028, s_pstVfmwChan
	ldr	r0, [fp, #-224]	@, %sfp
	ldr	r7, [lr, #260]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	r7, [lr, r0]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r9, [r5, r4, asl #2]	@ tmp389, s_pstVfmwChan
	ldr	ip, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	ldr	r0, [fp, #-228]	@, %sfp
	str	ip, [r9, r0]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	lr, [fp, #-192]	@, %sfp
	ldr	r9, [r5, r4, asl #2]	@ tmp393, s_pstVfmwChan
	ldr	r0, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r0, [r9, lr]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r9, [fp, #-196]	@, %sfp
	ldr	ip, [r5, r4, asl #2]	@ tmp397, s_pstVfmwChan
	ldr	r0, [r6, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r0, [ip, r9]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	lr, [r5, r4, asl #2]	@ tmp401, s_pstVfmwChan
	ldr	r0, [r6, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	r0, [lr, r1]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	ip, [fp, #-188]	@, %sfp
	ldr	r1, [r5, r4, asl #2]	@ tmp405, s_pstVfmwChan
	ldr	r9, [r6, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r9, [r1, ip]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	lr, [fp, #-200]	@, %sfp
	ldr	r0, [r5, r4, asl #2]	@ tmp409, s_pstVfmwChan
	ldr	ip, [r6, #48]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	ip, [r0, lr]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r9, [r6, #64]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	ldr	r1, [r5, r4, asl #2]	@ tmp413, s_pstVfmwChan
	cmp	r9, #1	@ <variable>.s32SupportAllP,
	movne	r0, #0	@, tmp416
	moveq	r0, #1	@, tmp416
	ldr	r9, [fp, #-204]	@, %sfp
	str	r0, [r1, r9]	@ tmp416, <variable>.stSynExtraData.s32SupportAllP
	ldr	lr, [fp, #-184]	@, %sfp
	ldr	ip, [r5, r4, asl #2]	@ tmp420, s_pstVfmwChan
	ldmia	lr, {r0, r1}	@,,
	add	lr, ip, r3	@ tmp418, tmp420, tmp418
	stmia	lr, {r0, r1}	@ tmp418,,
	mov	lr, #1	@ tmp427,
	ldr	r3, [r5, r4, asl #2]	@ tmp425, s_pstVfmwChan
	mov	r0, #0	@,
	str	lr, [r3, r2]	@ tmp427, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	ip, [r5, r4, asl #2]	@ tmp429, s_pstVfmwChan
	str	r0, [ip, r2]	@, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.5000, s_pstVfmwChan
	ldr	r3, [r0, #904]	@ prephitmp.4885, <variable>.stSynCtx.eVidStd
	ldr	r1, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, r1	@ prephitmp.4885, <variable>.eVidStd
	beq	.L1459	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r1, [fp, #-208]	@, %sfp
	cmp	r2, #18	@ <variable>.eVidStd,
	ldr	r0, [r1, r4, asl #2]	@ prephitmp.5000, s_pstVfmwChan
	bne	.L1479	@,
	movw	r3, #:lower16:11199456	@ tmp436,
	movt	r3, #:upper16:11199456	@ tmp436,
	ldr	lr, [r0, #240]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	ldr	ip, [r0, r3]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	r3, [r0, #236]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	cmp	ip, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	movwne	r2, #:lower16:11199464	@ tmp438,
	movweq	r2, #:lower16:11199512	@ tmp440,
	movtne	r2, #:upper16:11199464	@ tmp438,
	movwne	ip, #:lower16:11199468	@ tmp439,
	movteq	r2, #:upper16:11199512	@ tmp440,
	movweq	ip, #:lower16:11199516	@ tmp441,
	movtne	ip, #:upper16:11199468	@ tmp439,
	movteq	ip, #:upper16:11199516	@ tmp441,
	ldr	r1, [r0, r2]	@ MaxWidth,
	ldr	r2, [r0, ip]	@ MaxHeight,
	mov	r0, r4	@, ChanID
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1463	@,
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.5000, s_pstVfmwChan
.L1479:
	ldr	r3, [r0, #896]	@ prephitmp.4885, <variable>.eVidStd
.L1459:
	str	r3, [r0, #904]	@ prephitmp.4885, <variable>.stSynCtx.eVidStd
	movw	r7, #:lower16:.LANCHOR0	@ tmp446,
	ldr	r0, [r5, r4, asl #2]	@ tmp447, s_pstVfmwChan
	movt	r7, #:upper16:.LANCHOR0	@ tmp446,
	ldr	r1, [r0, #236]	@ temp.5042, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.5042
	str	r1, [fp, #-64]	@ temp.5042, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r5, r4, asl #2]	@ tmp449, s_pstVfmwChan
	sub	r1, fp, #64	@,,
	str	r0, [fp, #-60]	@, stMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	r2, [ip, #240]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r2, [fp, #-56]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	cmp	r0, #0	@ D.37761
	bne	.L1422	@,
	ldr	r3, [r6, #0]	@ temp.5046, <variable>.eVidStd
	ldr	ip, [r6, #44]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	ldr	r1, [r6, #40]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	sub	lr, r3, #10	@ tmp456, temp.5046,
	ldr	r2, [r6, #48]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	rsbs	ip, ip, #1	@ tmp454, <variable>.s32Btl1Dt2DEnable
	movcc	ip, #0	@ tmp454
	cmp	lr, #2	@ tmp456,
	str	ip, [fp, #-76]	@ tmp454, BtlChanCfgArgs.u32Is1D
	str	r1, [fp, #-80]	@ <variable>.s32BtlDbdrEnable, BtlChanCfgArgs.u32DNROpen
	str	r2, [fp, #-72]	@ <variable>.s32VcmpEn, BtlChanCfgArgs.u32IsCompress
	strhi	r0, [fp, #-68]	@ D.37761, BtlChanCfgArgs.u32Reversed
	bhi	.L1466	@,
	ldr	r0, [r7, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L1480	@,
	cmp	r3, #12	@ temp.5046,
	beq	.L1480	@,
	ldr	ip, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	lr, ip, #1	@ tmp464, <variable>.StdExt.Vp6Ext.bReversed,
	and	r1, lr, #1	@ tmp466, tmp464,
	str	r1, [fp, #-68]	@ tmp466, BtlChanCfgArgs.u32Reversed
.L1466:
	mov	r0, r4	@, ChanID
	sub	r1, fp, #80	@,,
	bl	BTL_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1422	@,
	sub	r6, fp, #48	@ tmp499,,
	mov	r0, r6	@, tmp499
	bl	OSAL_LockIRQ	@
	ldr	r2, [r5, #0]	@ D.37786, s_pstVfmwChan
	ldr	r0, [r5, #4]	@ temp.5055, s_pstVfmwChan
	cmp	r2, #0	@ D.37786,
	streq	r2, [r8, #-2712]	@ D.37786, PrioArray
	ldrne	r1, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp500,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp500,
	strne	r1, [r8, #-2712]	@ <variable>.s32Priority, PrioArray
	movteq	r3, #:upper16:g_ChanCtx	@ tmp500,
	ldrne	r2, [r2, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	movtne	r3, #:upper16:g_ChanCtx	@ tmp500,
	cmp	r0, #0	@ temp.5055,
	streq	r0, [r8, #-2708]	@ temp.5055, PrioArray
	streq	r0, [r3, #4]	@ temp.5055, g_ChanCtx.PriorByChanId
	str	r2, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r8, #-2708]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #20]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r0, .L1500+8	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r6	@, tmp499
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.37565,
	b	.L1418	@
.L1430:
	cmp	r2, #4	@ D.37604,
	bne	.L1432	@,
.L1431:
	mov	r2, #1	@ prephitmp.4881,
	b	.L1433	@
.L1426:
	cmp	r7, #4	@ D.37581,
	bne	.L1428	@,
.L1427:
	mov	r1, #1	@ prephitmp.4970,
	b	.L1429	@
.L1490:
	movw	r1, #:lower16:.LC355	@,
	movt	r1, #:upper16:.LC355	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.37565, D.37584
	b	.L1418	@
.L1492:
	ldr	lr, [r5, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1438	@,
.L1439:
	ldr	r1, [r7, #176]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #188]	@ temp.4917, <variable>.stChanMem_scd.Length
	cmp	r1, #0	@ temp.4917,
	mov	sl, r0	@ pVir_vdh,
	beq	.L1440	@,
	ldr	r0, [r7, #180]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	mov	r9, r0	@ pVir_scd,
	b	.L1441	@
.L1491:
	ldr	r0, [r7, #184]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L1436	@
.L1446:
	ldr	r0, [r7, #180]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #184]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	movne	r0, sl	@, D.37657
	ldrne	r3, [r7, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	bne	.L1483	@,
	str	r9, [r7, #184]	@ pVir_scd, <variable>.stChanMem_scd.VirAddr
	mov	r1, r9	@, pVir_scd
	ldr	r0, [r7, #180]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r7, #188]	@, <variable>.stChanMem_scd.Length
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1478	@,
	ldr	r3, [r7, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	ldr	r0, [fp, #-184]	@, %sfp
.L1483:
	str	r3, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	movw	r1, #:lower16:.LC358	@,
	ldr	r3, [r7, #184]	@, <variable>.stChanMem_scd.VirAddr
	movt	r1, #:upper16:.LC358	@,
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1463:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC359	@,
	movt	r1, #:upper16:.LC359	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1487:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2899	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1435:
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r6, #0]	@ temp.4955, <variable>.eVidStd
	sub	r9, r3, #10	@ tmp283, temp.4955,
	cmp	r9, #2	@ tmp283,
	bls	.L1496	@,
	cmp	r3, #4	@ temp.4955,
	beq	.L1450	@,
	cmp	r3, #14	@ temp.4955,
	bne	.L1451	@,
.L1450:
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	r9, r0	@ pVir,
.L1452:
	cmp	r9, #0	@ pVir,
	beq	.L1497	@,
	ldr	lr, [r5, r4, asl #2]	@ temp.4969, s_pstVfmwChan
	movw	sl, #:lower16:.LANCHOR0	@ tmp295,
	movt	sl, #:upper16:.LANCHOR0	@ tmp295,
	add	r0, lr, #180
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-192]	@, %sfp
	ldrne	r2, [sl, r4, asl #2]	@ temp.4972, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L1482	@,
	ldr	r3, [sl, r4, asl #2]	@ temp.4976, s_pstVfmwChan
	add	r0, r3, #168
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-184]	@, %sfp
	ldrne	r2, [sl, r4, asl #2]	@ temp.4978, s_pstVfmwChan
	ldrne	r0, [fp, #-192]	@, %sfp
	bne	.L1481	@,
	str	r9, [r7, #160]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, r9	@, pVir
	ldr	lr, [sl, r4, asl #2]	@ tmp310, s_pstVfmwChan
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.PhyAddr
	ldr	r2, [r7, #164]	@, <variable>.stChanMem.Length
	str	r9, [lr, #184]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	ip, [sl, r4, asl #2]	@ temp.4983, s_pstVfmwChan
	ldr	r3, [ip, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	lr, r9, r3	@ tmp313, pVir, <variable>.stChanMem_scd.Length
	str	lr, [ip, #172]	@ tmp313, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r9, r0, #0	@ D.37701,
	bne	.L1498	@,
	ldr	r7, [sl, r4, asl #2]	@ temp.4992, s_pstVfmwChan
	add	r0, r7, #180
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	subs	r7, r0, #0	@ D.37704,
	bne	.L1499	@,
	ldr	r3, [sl, r4, asl #2]	@ temp.5002, s_pstVfmwChan
	add	r0, r3, #168
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	ldreq	r7, [sl, r4, asl #2]	@ prephitmp.4883, s_pstVfmwChan
	beq	.L1434	@,
	ldr	r2, [sl, r4, asl #2]	@ temp.5007, s_pstVfmwChan
	mov	r0, r7	@, D.37704
.L1481:
	ldr	lr, [r2, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r2, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r2, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1493:
	ldr	r0, [r7, #180]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	mov	r9, r0	@ pVir_scd,
	b	.L1441	@
.L1496:
	ldr	r0, [r5, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L1450	@,
.L1451:
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	r9, r0	@ pVir,
	b	.L1452	@
.L1485:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2897	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1488:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC354	@,
	movt	r1, #:upper16:.LC354	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1442:
	mov	r2, r4	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC356	@,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4, asl #2]	@ tmp260, s_pstVfmwChan
	ldr	r3, [r6, #0]	@, <variable>.eVidStd
	mov	r0, #0	@,
.L1484:
	movw	r1, #:lower16:.LC357	@,
	ldr	r2, [r2, #36]	@, <variable>.stChanCfg.eVidStd
	movt	r1, #:upper16:.LC357	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1494:
	ldr	ip, [r7, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	mov	r0, r3	@, tmp256
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1499:
	ldr	r2, [sl, r4, asl #2]	@ temp.4997, s_pstVfmwChan
	mov	r0, r9	@, D.37701
.L1482:
	ldr	ip, [r2, #188]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r2, #184]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r2, #180]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1480:
	ldr	r2, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r2, #1	@ tmp463, <variable>.StdExt.Vp6Ext.bReversed,
	str	r3, [fp, #-68]	@ tmp463, BtlChanCfgArgs.u32Reversed
	b	.L1466	@
.L1486:
	mov	r0, r3	@, D.37567
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2898	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1495:
	ldr	r2, [r7, #176]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC358	@,
	ldr	r0, [fp, #-184]	@, %sfp
	movt	r1, #:upper16:.LC358	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #168]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1498:
	ldr	r2, [r7, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	movw	r1, #:lower16:.LC358	@,
	ldr	r0, [fp, #-184]	@, %sfp
	movt	r1, #:upper16:.LC358	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem.Length,
	ldr	r3, [r7, #160]	@, <variable>.stChanMem.VirAddr
	ldr	r2, [r7, #156]	@, <variable>.stChanMem.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37565,
	b	.L1418	@
.L1497:
	mov	r2, r4	@, ChanID
	mov	r0, r9	@, pVir
	movw	r1, #:lower16:.LC356	@,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4, asl #2]	@ tmp294, s_pstVfmwChan
	mov	r0, r9	@, pVir
	ldr	r3, [r6, #0]	@, <variable>.eVidStd
	b	.L1484	@
.L1501:
	.align	2
.L1500:
	.word	.LANCHOR3-2860
	.word	.LANCHOR3-2732
	.word	.LANCHOR3-2712
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1382:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp187,
	movt	r4, #:upper16:.LANCHOR0	@ tmp187,
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r4, #728	@, tmp187,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	cmp	r5, #1	@ ChanID,
	bhi	.L1512	@,
	ldr	r6, [r4, r5, asl #2]	@ D.37275, s_pstVfmwChan
	cmp	r6, #0	@ D.37275,
	beq	.L1513	@,
	ldr	r3, [r6, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1514	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r3, [r6, #896]	@ D.37284, <variable>.eVidStd
	cmp	r3, #4	@ D.37284,
	beq	.L1507	@,
	sub	r2, r3, #10	@ tmp158, D.37284,
	cmp	r2, #2	@ tmp158,
	bhi	.L1508	@,
	ldr	r0, [r4, #8]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L1507	@,
.L1509:
	mov	r0, r5	@, ChanID
	sub	r7, fp, #56	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r2, [r4, r5, asl #2]	@ temp.5086, s_pstVfmwChan
	sub	r6, fp, #116	@ tmp168,,
	sub	ip, fp, #80	@ tmp170,,
	add	r9, r2, #104	@, temp.5086,
	add	r3, r2, #168	@ tmp173, temp.5086,
	ldr	r0, [r2, #212]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	lr, r2, #192	@ tmp171, temp.5086,
	str	r9, [fp, #-120]	@, %sfp
	add	r1, r2, #156	@ tmp169, temp.5086,
	str	r7, [fp, #-128]	@, %sfp
	add	sl, r2, #180	@ tmp175, temp.5086,
	str	r0, [fp, #-60]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	sub	r8, fp, #104	@ tmp172,,
	ldr	r0, [r2, #204]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	sub	r9, fp, #92	@ tmp174,,
	mov	r7, #0	@ tmp179,
	str	r0, [fp, #-68]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r2, [r2, #208]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r2, [fp, #-64]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldmia	r1, {r0, r1, r2}	@ tmp169,,,
	stmia	r6, {r0, r1, r2}	@ tmp168,,,
	ldmia	lr, {r0, r1, r2}	@ tmp171,,,
	ldr	lr, [fp, #-120]	@, %sfp
	stmia	ip, {r0, r1, r2}	@ tmp170,,,
	ldr	ip, [fp, #-128]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@ tmp173,,,
	stmia	r8, {r0, r1, r2}	@ tmp172,,,
	ldmia	sl, {r0, r1, r2}	@ tmp175,,,
	stmia	r9, {r0, r1, r2}	@ tmp174,,,
	ldmia	lr, {r0, r1, r2}	@,,,
	stmia	ip, {r0, r1, r2}	@,,,
	mov	r0, r5	@, ChanID
	str	r7, [r4, r5, asl #2]	@ tmp179, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1515	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, tmp168
	bl	VCTRL_FreeChanResource	@
	mov	r0, r7	@ D.37273, tmp179
.L1504:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1508:
	cmp	r3, #14	@ D.37284,
	bne	.L1509	@,
.L1507:
	ldr	r3, [r4, #28]	@ D.37291, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37291,
	beq	.L1509	@,
	add	r0, r6, #912	@, D.37275,
	blx	r3	@ D.37291
	b	.L1509	@
.L1514:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC290	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC290	@,
	movw	r2, #2386	@,
	mov	r0, #0	@,
.L1511:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r4, #728	@, tmp187,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37273,
	b	.L1504	@
.L1512:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r2, #2368	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC2	@,
	b	.L1511	@
.L1513:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC289	@,
	mov	r0, r6	@, D.37275
	movw	r2, #2375	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC289	@,
	b	.L1511	@
.L1516:
	.align	2
.L1515:
	.word	.LANCHOR0+728
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
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
	bl	VCTRL_DestroyChanWithOption	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r3, [r4, #852]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36611,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1522	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
.L1522:
	ldr	r1, [r4, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1523	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChanWithOption	@
.L1523:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r2, #3	@ tmp143,
	str	r2, [r4, #968]	@ tmp143, s_VfmwCTrl.eTaskCommand
	b	.L1525	@
.L1530:
	bl	msleep	@
	ldr	r3, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1524	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1524	@,
.L1525:
	ldr	ip, [r4, #964]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp156, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp156,
	cmp	ip, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1530	@,
.L1524:
	mov	r5, #0	@ tmp147,
	str	r5, [r4, #968]	@ tmp147, s_VfmwCTrl.eTaskCommand
	bl	BTL_Close	@
	ldr	r0, .L1531	@,
	bl	CloseDrivers	@
	bl	DBG_DestroyTracer	@
	mov	r0, r5	@ D.36611, tmp147
	str	r5, [r4, #852]	@ tmp147, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1532:
	.align	2
.L1531:
	.word	.LANCHOR0+984
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1380:
	@ args = 0, pretend = 0, frame = 832
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #868
	sub	sp, sp, #868	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r7, r0	@ eCapLevel, eCapLevel
	rsbs	r0, r2, #1	@ tmp188, flag
	movcc	r0, #0	@ tmp188
	cmp	r7, #25	@ eCapLevel,
	movw	ip, #:lower16:.LANCHOR3	@ tmp181,
	movt	ip, #:upper16:.LANCHOR3	@ tmp181,
	moveq	r0, #0	@, tmp188,
	cmp	r0, #0	@ tmp188,
	mov	r6, r1	@ pChanOption, pChanOption
	mov	sl, r3	@ OneChanMemFlag, OneChanMemFlag
	str	r1, [ip, #-2704]	@ pChanOption, pOption
	bne	.L1602	@,
	ldr	r3, [r1, #0]	@ D.37007, <variable>.Purpose
	cmp	r3, #2	@ D.37007,
	bhi	.L1603	@,
	beq	.L1604	@,
	cmp	r3, #1	@ D.37007,
	bne	.L1539	@,
	ldr	r1, [r1, #28]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r1, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L1540	@,
	ldr	r4, [r6, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r4, #31	@ <variable>.s32MaxWidth,
	ble	.L1540	@,
	ldr	lr, [r6, #12]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	lr, #31	@ <variable>.s32MaxHeight,
	ble	.L1540	@,
	ldr	ip, [r6, #48]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L1540	@,
	ldr	r3, [r6, #40]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	beq	.L1605	@,
.L1539:
	mov	r3, r2	@, flag
	mov	r0, r7	@, eCapLevel
	mov	r1, r6	@, pChanOption
	sub	r2, fp, #68	@,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r8, r0, #0	@ D.37039,
	bne	.L1606	@,
	ldr	r3, [r6, #4]	@ D.37043, <variable>.MemAllocMode
	cmp	r3, #1	@ D.37043,
	beq	.L1607	@,
	cmp	r3, #2	@ D.37043,
	beq	.L1608	@,
	cmp	r3, #3	@ D.37043,
	bne	.L1556	@,
	ldr	r4, [r6, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	r4, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L1557	@,
	ldr	lr, [r6, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	beq	.L1557	@,
	add	lr, r6, #104	@ tmp285, pChanOption,
	sub	r4, fp, #132	@ tmp284,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp285,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp284,,,,
	ldr	r1, [fp, #-60]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r2, [fp, #-124]	@ temp.5208, ChanMemCtx.Length
	cmp	r2, r1	@ temp.5208, DetailMemSize.ChanCtxDetailMem
	blt	.L1609	@,
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_AddMemRecord	@
.L1560:
	ldr	r0, [r6, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L1562	@,
	ldr	r3, [r6, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	beq	.L1562	@,
	add	r3, r6, #72	@ tmp309, pChanOption,
	sub	r4, fp, #100	@ tmp308,,
	ldr	ip, [fp, #-68]	@ prephitmp.5285, DetailMemSize.VdhDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp309,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp308,,,,
	ldr	r2, [fp, #-92]	@ prephitmp.5363, ChanMemVDH.Length
	cmp	r2, ip	@ prephitmp.5363, prephitmp.5285
	blt	.L1610	@,
	ldr	r0, [fp, #-100]	@, ChanMemVDH.PhyAddr
	mov	ip, #0	@,
	ldr	r1, [fp, #-96]	@, ChanMemVDH.VirAddr
	str	ip, [fp, #-864]	@, %sfp
	bl	MEM_AddMemRecord	@
.L1566:
	ldr	r0, [r6, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L1569	@,
	ldr	r2, [r6, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	beq	.L1569	@,
	add	r3, r6, #88	@ tmp341, pChanOption,
	ldr	lr, [r6, #0]	@ temp.5243, <variable>.Purpose
	sub	r4, fp, #116	@ tmp340,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp341,,,,
	cmp	lr, #2	@ temp.5243,
	stmia	r4, {r0, r1, r2, r3}	@ tmp340,,,,
	beq	.L1575	@,
	ldr	r1, [fp, #-112]	@ temp.5244, ChanMemScd.VirAddr
	cmp	r1, #0	@ temp.5244,
	beq	.L1576	@,
	ldr	r2, [fp, #-108]	@ prephitmp.5156, ChanMemScd.Length
	ldr	ip, [fp, #-64]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	cmp	r2, ip	@ prephitmp.5156, DetailMemSize.ScdDetailMem
	bge	.L1577	@,
.L1576:
	cmp	lr, #1	@ temp.5243,
	ldrne	r2, [fp, #-108]	@ prephitmp.5156, ChanMemScd.Length
	beq	.L1611	@,
.L1577:
	ldr	r0, [fp, #-116]	@, ChanMemScd.PhyAddr
	mov	r9, #0	@ s32SelfAllocChanMem_scd,
	bl	MEM_AddMemRecord	@
	b	.L1550	@
.L1569:
	ldr	r1, [r6, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #2	@ <variable>.Purpose,
	beq	.L1571	@,
	mov	lr, #0	@ tmp324,
	movw	r0, #:lower16:.LC369	@,
	mov	r1, lr	@, tmp324
	movt	r0, #:upper16:.LC369	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-64]	@, DetailMemSize.ScdDetailMem
	str	lr, [sp, #0]	@ tmp324,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1612	@,
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	mov	r9, #1	@ s32SelfAllocChanMem_scd,
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	ldr	r2, [fp, #-48]	@, MemRecord.Length
.L1601:
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r5, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	ip, [fp, #-116]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	r3, [fp, #-112]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r5, [fp, #-108]	@ MemRecord.Length, ChanMemScd.Length
	b	.L1550	@
.L1557:
	movw	r0, #:lower16:.LC365	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC365	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-60]	@, DetailMemSize.ChanCtxDetailMem
	mov	r8, #1	@ tmp276,
	str	r8, [sp, #0]	@ tmp276,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1613	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	ip, [fp, #-132]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	r2, [fp, #-128]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	r3, [fp, #-124]	@ MemRecord.Length, ChanMemCtx.Length
	b	.L1560	@
.L1604:
	ldr	r3, [r1, #56]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r3, #0	@ <variable>.s32SlotWidth,
	beq	.L1538	@,
	ldr	r0, [r1, #60]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r0, #0	@ <variable>.s32SlotHeight,
	bne	.L1539	@,
.L1538:
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC17	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1562:
	mov	ip, #0	@ tmp295,
	movw	r0, #:lower16:.LC367	@,
	mov	r1, ip	@, tmp295
	movt	r0, #:upper16:.LC367	@,
	sub	r3, fp, #56	@,,
	ldr	r2, [fp, #-68]	@, DetailMemSize.VdhDetailMem
	str	ip, [sp, #0]	@ tmp295,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1614	@,
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	mov	lr, #1	@,
	ldr	r2, [fp, #-48]	@, MemRecord.Length
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	str	lr, [fp, #-864]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r4, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r4, [fp, #-100]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	r1, [fp, #-96]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	r2, [fp, #-92]	@ MemRecord.Length, ChanMemVDH.Length
	b	.L1566	@
.L1607:
	add	r8, r6, #72	@ tmp207, pChanOption,
	sub	lr, fp, #100	@ tmp206,,
	add	r4, r6, #88	@ tmp209, pChanOption,
	sub	r5, fp, #116	@ tmp208,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp207,,,,
	add	r8, r6, #104	@ tmp211, pChanOption,
	sub	ip, fp, #132	@ tmp210,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp206,,,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp209,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp208,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp211,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp210,,,,
	ldr	r1, [fp, #-128]	@ D.37048, ChanMemCtx.VirAddr
	cmp	r1, #0	@ D.37048,
	beq	.L1543	@,
	ldr	r2, [fp, #-124]	@ D.37050, ChanMemCtx.Length
	ldr	r3, [fp, #-60]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	cmp	r2, r3	@ D.37050, DetailMemSize.ChanCtxDetailMem
	blt	.L1543	@,
	ldr	r0, [fp, #-112]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	cmp	r0, #0	@ ChanMemScd.VirAddr,
	beq	.L1545	@,
	ldr	r4, [fp, #-64]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	ip, [fp, #-108]	@ ChanMemScd.Length, ChanMemScd.Length
	cmp	ip, r4	@ ChanMemScd.Length, DetailMemSize.ScdDetailMem
	bge	.L1546	@,
.L1545:
	ldr	r0, [r6, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	beq	.L1615	@,
.L1546:
	ldr	lr, [fp, #-96]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	cmp	lr, #0	@ ChanMemVDH.VirAddr,
	beq	.L1547	@,
	ldr	r3, [fp, #-68]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	ldr	r0, [fp, #-92]	@ ChanMemVDH.Length, ChanMemVDH.Length
	cmp	r0, r3	@ ChanMemVDH.Length, DetailMemSize.VdhDetailMem
	blt	.L1547	@,
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	bl	MEM_AddMemRecord	@
	sub	r0, fp, #100
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r2, [r6, #0]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r2, #2	@ <variable>.Purpose,
	moveq	r8, #0	@ s32SelfAllocChanMem_ctx,
	streq	r8, [fp, #-864]	@ s32SelfAllocChanMem_ctx, %sfp
	moveq	r9, r8	@ s32SelfAllocChanMem_scd, s32SelfAllocChanMem_ctx
	beq	.L1550	@,
	mov	r8, #0	@ s32SelfAllocChanMem_ctx,
	ldr	r0, [fp, #-116]	@, ChanMemScd.PhyAddr
	ldr	r1, [fp, #-112]	@, ChanMemScd.VirAddr
	mov	r9, r8	@ s32SelfAllocChanMem_scd, s32SelfAllocChanMem_ctx
	ldr	r2, [fp, #-108]	@, ChanMemScd.Length
	str	r8, [fp, #-864]	@ s32SelfAllocChanMem_ctx, %sfp
	bl	MEM_AddMemRecord	@
.L1550:
	movw	r5, #:lower16:.LANCHOR0	@ tmp583,
	movt	r5, #:upper16:.LANCHOR0	@ tmp583,
	add	r0, r5, #728	@, tmp583,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r4, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r4, #0	@ s_pstVfmwChan,
	beq	.L1582	@,
	ldr	r0, [r5, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1616	@,
	mov	r2, #2	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC380	@,
	movt	r1, #:upper16:.LC380	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #728	@, tmp583,
	bl	OSAL_SpinUnLockIRQ	@
.L1535:
	mov	r0, r4	@, ChanID
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1571:
	ldr	r2, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r1, #0	@ tmp339,
	ldr	r0, [fp, #-96]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	mov	r9, r1	@ s32SelfAllocChanMem_scd, tmp339
	str	r1, [fp, #-108]	@ tmp339, ChanMemScd.Length
	str	r2, [fp, #-116]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	r0, [fp, #-112]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L1550	@
.L1605:
	ldr	r0, [r6, #16]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r0, #0	@ <variable>.s32MaxSliceNum,
	ble	.L1540	@,
	ldr	r1, [r6, #20]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r1, #0	@ <variable>.s32MaxSpsNum,
	ble	.L1540	@,
	ldr	r4, [r6, #24]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r4, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L1539	@,
.L1540:
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC18	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1608:
	sub	r4, fp, #56	@ tmp234,,
	mov	r1, r8	@, D.37039
	movw	r0, #:lower16:.LC365	@,
	ldr	r2, [fp, #-60]	@, DetailMemSize.ChanCtxDetailMem
	movt	r0, #:upper16:.LC365	@,
	mov	r3, r4	@, tmp234
	mov	r8, #1	@ tmp235,
	str	r8, [sp, #0]	@ tmp235,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.37078,
	bne	.L1617	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-56]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r5	@, D.37078
	movw	r0, #:lower16:.LC367	@,
	ldr	r2, [fp, #-68]	@, DetailMemSize.VdhDetailMem
	movt	r0, #:upper16:.LC367	@,
	str	ip, [fp, #-132]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	mov	r3, r4	@, tmp234
	ldr	ip, [fp, #-52]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r5, [sp, #0]	@ D.37078,
	str	ip, [fp, #-128]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	ldr	ip, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	ip, [fp, #-124]	@ MemRecord.Length, ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.37086,
	bne	.L1618	@,
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r0, [r6, #0]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [fp, #-56]	@ temp.5186, MemRecord.PhyAddr
	ldr	r3, [fp, #-52]	@ temp.5187, MemRecord.VirAddr
	cmp	r0, #2	@ <variable>.Purpose,
	ldr	r1, [fp, #-48]	@ MemRecord.Length, MemRecord.Length
	str	r2, [fp, #-100]	@ temp.5186, ChanMemVDH.PhyAddr
	str	r3, [fp, #-96]	@ temp.5187, ChanMemVDH.VirAddr
	str	r1, [fp, #-92]	@ MemRecord.Length, ChanMemVDH.Length
	beq	.L1554	@,
	mov	r1, r5	@, D.37086
	mov	r3, r4	@, tmp234
	movw	r0, #:lower16:.LC369	@,
	ldr	r2, [fp, #-64]	@, DetailMemSize.ScdDetailMem
	movt	r0, #:upper16:.LC369	@,
	str	r5, [sp, #0]	@ D.37086,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1619	@,
	ldr	r0, [fp, #-56]	@, MemRecord.PhyAddr
	mov	r9, r8	@ s32SelfAllocChanMem_scd, s32SelfAllocChanMem_ctx
	ldr	r1, [fp, #-52]	@, MemRecord.VirAddr
	ldr	r2, [fp, #-48]	@, MemRecord.Length
	str	r8, [fp, #-864]	@ s32SelfAllocChanMem_ctx, %sfp
	b	.L1601	@
.L1575:
	mov	r9, #0	@ s32SelfAllocChanMem_scd,
	b	.L1550	@
.L1554:
	str	r2, [fp, #-116]	@ temp.5186, ChanMemScd.PhyAddr
	mov	r9, r5	@ s32SelfAllocChanMem_scd, D.37086
	str	r3, [fp, #-112]	@ temp.5187, ChanMemScd.VirAddr
	str	r5, [fp, #-108]	@ D.37086, ChanMemScd.Length
	str	r8, [fp, #-864]	@ s32SelfAllocChanMem_ctx, %sfp
	b	.L1550	@
.L1616:
	mov	r4, #1	@ ChanID,
.L1582:
	ldr	r3, [fp, #-128]	@ D.37167, ChanMemCtx.VirAddr
	movw	r1, #:lower16:11199592	@,
	movt	r1, #:upper16:11199592	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp353,
	movt	lr, #:upper16:.LANCHOR0	@ tmp353,
	mov	r0, r3	@, D.37167
	str	r3, [r5, r4, asl #2]	@ D.37167, s_pstVfmwChan
	str	lr, [fp, #-868]	@,
	bl	__memzero	@
	ldr	r2, [r5, r4, asl #2]	@ tmp358, s_pstVfmwChan
	movw	r0, #:lower16:11199456	@,
	movt	r0, #:upper16:11199456	@,
	mov	r1, r6	@, pChanOption
	add	r0, r2, r0	@, tmp358,
	mov	r2, #120	@,
	bl	memcpy	@
	ldr	r3, [r5, r4, asl #2]	@ tmp364, s_pstVfmwChan
	movw	r1, #:lower16:11199412	@ tmp365,
	movt	r1, #:upper16:11199412	@ tmp365,
	movw	ip, #:lower16:11253104	@ tmp366,
	movt	ip, #:upper16:11253104	@ tmp366,
	str	ip, [r3, r1]	@ tmp366, <variable>.stSynExtraData.s32BasicCtxSize
	movw	r2, #:lower16:11199024	@ tmp371,
	ldr	r0, [r5, r4, asl #2]	@ tmp368, s_pstVfmwChan
	movt	r2, #:upper16:11199024	@ tmp371,
	movw	ip, #:lower16:11199428	@ tmp374,
	movt	ip, #:upper16:11199428	@ tmp374,
	mov	r3, #0	@ tmp375,
	mov	lr, #19	@ tmp378,
	str	r7, [r0, #28]	@ eCapLevel, <variable>.eChanCapLevel
	mov	r0, r4	@, ChanID
	ldr	r1, [r5, r4, asl #2]	@ tmp370, s_pstVfmwChan
	str	r7, [r1, r2]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r1, [r5, r4, asl #2]	@ tmp373, s_pstVfmwChan
	str	r3, [r1, ip]	@ tmp375, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	r2, [r5, r4, asl #2]	@ tmp377, s_pstVfmwChan
	str	lr, [r2, #896]	@ tmp378, <variable>.eVidStd
	ldr	ip, [r5, r4, asl #2]	@ tmp380, s_pstVfmwChan
	str	lr, [ip, #904]	@ tmp378, <variable>.stSynCtx.eVidStd
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5, r4, asl #2]	@ tmp383, s_pstVfmwChan
	ldr	r1, [fp, #-864]	@, %sfp
	str	r1, [r3, #204]	@, <variable>.s32SelfAllocChanMem_vdh
	ldr	r2, [r5, r4, asl #2]	@ tmp385, s_pstVfmwChan
	str	r9, [r2, #208]	@ s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	ldr	r9, [r5, r4, asl #2]	@ tmp387, s_pstVfmwChan
	str	r8, [r9, #212]	@ s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	ldr	r2, [r6, #4]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	ldr	r3, [fp, #-868]	@,
	cmp	r2, #3	@ <variable>.MemAllocMode,
	ldrne	r2, [r3, r4, asl #2]	@ prephitmp.5154, s_pstVfmwChan
	beq	.L1620	@,
.L1585:
	mov	r1, #0	@ tmp415,
	str	r1, [r2, #152]	@ tmp415, <variable>.s32OneChanMem
.L1586:
	sub	r2, fp, #100	@ tmp419,,
	ldr	sl, [r5, r4, asl #2]	@ tmp418, s_pstVfmwChan
	sub	lr, fp, #116	@ tmp425,,
	sub	ip, fp, #132	@ tmp431,,
	ldmia	r2, {r0, r1, r2}	@ tmp419,,,
	add	r3, sl, #168	@ tmp417, tmp418,
	cmp	r7, #24	@ eCapLevel,
	stmia	r3, {r0, r1, r2}	@ tmp417,,,
	ldr	r8, [r5, r4, asl #2]	@ tmp424, s_pstVfmwChan
	ldmia	lr, {r0, r1, r2}	@ tmp425,,,
	add	r9, r8, #180	@ tmp423, tmp424,
	stmia	r9, {r0, r1, r2}	@ tmp423,,,
	ldr	sl, [r5, r4, asl #2]	@ tmp430, s_pstVfmwChan
	ldmia	ip, {r0, r1, r2}	@ tmp431,,,
	add	r3, sl, #192	@ tmp429, tmp430,
	moveq	ip, #1	@ BtlImgNum,
	stmia	r3, {r0, r1, r2}	@ tmp429,,,
	ldr	r8, [r5, r4, asl #2]	@ tmp435, s_pstVfmwChan
	ldr	lr, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp443,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp443,
	str	lr, [r8, #236]	@ ChanMemVDH.PhyAddr, <variable>.s32SdecMemAddr
	ldr	r2, [fp, #-92]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r9, [r5, r4, asl #2]	@ tmp438, s_pstVfmwChan
	str	r2, [r9, #240]	@ ChanMemVDH.Length, <variable>.s32SdecMemSize
	ldr	sl, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	r0, [r5, r4, asl #2]	@ tmp441, s_pstVfmwChan
	str	sl, [r0, #0]	@ ChanMemVDH.PhyAddr, <variable>.s32BtlMemAddr
	ldr	r8, [r3, #32]	@ D.37199, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	ldrne	ip, [r6, #52]	@ BtlImgNum, <variable>.s32DisplayFrameNum
	cmp	r8, #0	@ D.37199,
	beq	.L1589	@,
	ldr	sl, [r6, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	mov	lr, #0	@ tmp448,
	ldr	r9, [r6, #64]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	ldr	r2, [r6, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	ldr	r3, [r6, #12]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	ldr	r0, [fp, #-100]	@, ChanMemVDH.PhyAddr
	str	ip, [sp, #8]	@ BtlImgNum,
	sub	ip, fp, #856	@ tmp452,,
	ldr	r1, [fp, #-92]	@, ChanMemVDH.Length
	str	lr, [sp, #12]	@ tmp448,
	str	ip, [sp, #16]	@ tmp452,
	str	sl, [sp, #20]	@ <variable>.s32Btl1Dt2DEnable,
	str	r9, [sp, #24]	@ <variable>.s32BtlDbdrEnable,
	str	lr, [sp, #0]	@ tmp448,
	str	lr, [sp, #4]	@ tmp448,
	blx	r8	@ D.37199
	cmp	r0, #0	@ D.37203
	bne	.L1589	@,
	ldr	r2, [r5, r4, asl #2]	@ tmp457, s_pstVfmwChan
	ldr	lr, [fp, #-852]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	lr, [r2, #4]	@ stMemArrange.TotalMemUsed, <variable>.s32BtlMemSize
	ldr	lr, [r5, r4, asl #2]	@ temp.5320, s_pstVfmwChan
	ldr	r3, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	ip, [lr, #228]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r1, [lr, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	add	r2, ip, r3	@ tmp460, <variable>.s32OffLineDNRMemSize, ChanMemVDH.PhyAddr
	add	ip, r2, r1	@ tmp464, tmp460, <variable>.s32BtlMemSize
	str	ip, [lr, #216]	@ tmp464, <variable>.s32VdmChanMemAddr
	ldr	lr, [r5, r4, asl #2]	@ temp.5322, s_pstVfmwChan
	ldr	ip, [fp, #-92]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r3, [lr, #228]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r1, [lr, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	rsb	r2, r3, ip	@ tmp466, <variable>.s32OffLineDNRMemSize, ChanMemVDH.Length
	rsb	r3, r1, r2	@ tmp469, <variable>.s32BtlMemSize, tmp466
	sub	r2, r3, #16	@ tmp471, tmp469,
	str	r2, [lr, #220]	@ tmp471, <variable>.s32VdmChanMemSize
	ldr	lr, [r5, r4, asl #2]	@ temp.5325, s_pstVfmwChan
	ldr	r3, [lr, #220]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r1, r3, #14336	@ tmp475, <variable>.s32VdmChanMemSize,
	str	r1, [lr, #220]	@ tmp475, <variable>.s32VdmChanMemSize
	ldr	r3, [r5, r4, asl #2]	@ temp.5326, s_pstVfmwChan
	ldr	r2, [r3, #220]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	lr, r2, #32768	@ tmp479, <variable>.s32VdmChanMemSize,
	str	lr, [r3, #220]	@ tmp479, <variable>.s32VdmChanMemSize
	ldr	lr, [r5, r4, asl #2]	@ temp.5328, s_pstVfmwChan
	ldr	r1, [lr, #216]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [lr, #220]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	r3, r1, r2	@ tmp481, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r1, r3, #15	@ tmp484, tmp481,
	bic	r2, r1, #15	@ tmp485, tmp484,
	str	r2, [lr, #248]	@ tmp485, <variable>.s32BpdChanMemAddr
	ldr	r3, [r5, r4, asl #2]	@ tmp487, s_pstVfmwChan
	mov	lr, #14336	@ tmp488,
	str	lr, [r3, #252]	@ tmp488, <variable>.s32BpdChanMemSize
	ldr	r3, [r5, r4, asl #2]	@ temp.5331, s_pstVfmwChan
	ldr	r1, [r3, #248]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	ldr	r2, [r3, #252]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	lr, r1, r2	@ tmp490, <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemSize
	add	r2, lr, #15	@ tmp493, tmp490,
	bic	r1, r2, #15	@ tmp494, tmp493,
	str	r1, [r3, #256]	@ tmp494, <variable>.s32Vp8SegIdChanMemAddr
	ldr	lr, [r5, r4, asl #2]	@ tmp496, s_pstVfmwChan
	mov	r2, #32768	@ tmp497,
	str	r2, [lr, #260]	@ tmp497, <variable>.s32Vp8SegIdChanMemSize
	ldr	r1, [fp, #-116]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r3, [r5, r4, asl #2]	@ tmp499, s_pstVfmwChan
	str	r1, [r3, #232]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	lr, [r5, r4, asl #2]	@ tmp502, s_pstVfmwChan
	ldr	r2, [fp, #-108]	@ ChanMemScd.Length, ChanMemScd.Length
	str	r2, [lr, #244]	@ ChanMemScd.Length, <variable>.s32ScdChanMemSize
	ldr	r3, [r5, r4, asl #2]	@ tmp505, s_pstVfmwChan
	str	r4, [r3, #140]	@ ChanID, <variable>.s32SCDInstID
	ldr	r1, [r5, r4, asl #2]	@ tmp507, s_pstVfmwChan
	str	r4, [r1, #148]	@ ChanID, <variable>.s32FODInstID
	ldr	r3, [r6, #32]	@ <variable>.s32TreeFsEnable, <variable>.s32TreeFsEnable
	cmp	r3, #1	@ <variable>.s32TreeFsEnable,
	bne	.L1592	@,
	ldr	r1, [r6, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	strb	r0, [fp, #-164]	@ D.37203, TreeParam.s8DispLoopEnable
	cmp	r1, #0	@ <variable>.s32Btl1Dt2DEnable,
	strneb	r0, [fp, #-163]	@ D.37203, TreeParam.s8Btl1Dt2DDisable
	streqb	r3, [fp, #-163]	@ <variable>.s32TreeFsEnable, TreeParam.s8Btl1Dt2DDisable
	cmp	r7, #24	@ eCapLevel,
	ldr	r3, [r5, r4, asl #2]	@ temp.5341, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	ldrne	ip, [r6, #52]	@ iftmp.458, <variable>.s32DisplayFrameNum
	moveq	ip, #1	@ iftmp.458,
	ldr	r2, [r6, #28]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	sub	r1, fp, #164	@,,
	str	ip, [fp, #-152]	@ iftmp.458, TreeParam.s32DispNum
	add	r7, r2, #2	@ tmp517, <variable>.s32MaxRefFrameNum,
	str	r7, [fp, #-148]	@ tmp517, TreeParam.s32DecNum
	ldr	lr, [r3, #216]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	ip, [r6, #8]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	ldr	r2, [r6, #12]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	str	lr, [fp, #-144]	@ <variable>.s32VdmChanMemAddr, TreeParam.MemAddr
	ldr	r7, [r3, #220]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	ip, [fp, #-160]	@ <variable>.s32MaxWidth, TreeParam.ChanWidth
	str	r2, [fp, #-156]	@ <variable>.s32MaxHeight, TreeParam.ChanHeight
	str	r7, [fp, #-140]	@ <variable>.s32VdmChanMemSize, TreeParam.TotalSize
	bl	Tree_FSP_InitInstance	@
	cmp	r0, #0	@,
	bne	.L1621	@,
.L1597:
	ldr	r0, [r5, r4, asl #2]	@ tmp527, s_pstVfmwChan
	movw	r7, #:lower16:.LANCHOR0	@ tmp526,
	movt	r7, #:upper16:.LANCHOR0	@ tmp526,
	ldr	lr, [r0, #0]	@ D.37245, <variable>.s32BtlMemAddr
	mov	r0, lr	@, D.37245
	str	lr, [fp, #-84]	@ D.37245, BtlMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp529, s_pstVfmwChan
	mov	r2, r6	@, pChanOption
	sub	r1, fp, #84	@,,
	str	r0, [fp, #-80]	@, BtlMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	ip, [r3, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	str	ip, [fp, #-76]	@ <variable>.s32BtlMemSize, BtlMem.Length
	bl	BTL_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1622	@,
	mov	r0, r4	@, ChanID
	bl	BTL_StartChan	@
	cmp	r0, #0	@,
	bne	.L1623	@,
	mov	r0, r4	@, ChanID
	bl	SM_ClearInst	@
	ldr	r2, [r7, r4, asl #2]	@ tmp535, s_pstVfmwChan
	movw	ip, #:lower16:11201640	@,
	movt	ip, #:upper16:11201640	@,
	mov	r0, r4	@, ChanID
	ldr	r3, [r2, #196]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r1, r3, ip	@, <variable>.stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r1, [r7, r4, asl #2]	@ tmp540, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	mov	r2, #1	@ tmp541,
	str	r2, [r1, #12]	@ tmp541, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r7, #728	@, tmp526,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1535	@
.L1592:
	mov	r0, r4	@, ChanID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	beq	.L1597	@,
	movw	r1, #:lower16:.LC377	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC377	@,
	bl	dprint_vfmw	@
.L1591:
	mov	r0, r4	@, ChanID
	sub	r6, fp, #236	@ tmp555,,
	bl	VCTRL_UnInstallChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp545, s_pstVfmwChan
	sub	r0, fp, #176	@,,
	str	r0, [fp, #-872]	@, %sfp
	add	r1, r2, #156	@ tmp556, tmp545,
	add	r7, r2, #192	@ tmp560, tmp545,
	ldr	r0, [r2, #212]	@, <variable>.s32SelfAllocChanMem_ctx
	add	ip, r2, #168	@ tmp564, tmp545,
	add	r8, r2, #180	@ tmp568, tmp545,
	add	r9, r2, #104	@ tmp572, tmp545,
	sub	lr, fp, #200	@ tmp559,,
	sub	r3, fp, #224	@ tmp563,,
	str	r0, [fp, #-180]	@, ChanMem.s32SelfAllocChanMem_ctx
	sub	sl, fp, #212	@ tmp567,,
	ldr	r0, [r2, #204]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	str	r0, [fp, #-188]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r0, [r2, #208]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r0, [fp, #-184]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldmia	r1, {r0, r1, r2}	@ tmp556,,,
	stmia	r6, {r0, r1, r2}	@ tmp555,,,
	ldmia	r7, {r0, r1, r2}	@ tmp560,,,
	stmia	lr, {r0, r1, r2}	@ tmp559,,,
	mov	lr, #0	@ tmp574,
	ldmia	ip, {r0, r1, r2}	@ tmp564,,,
	ldr	ip, [fp, #-872]	@, %sfp
	stmia	r3, {r0, r1, r2}	@ tmp563,,,
	ldmia	r8, {r0, r1, r2}	@ tmp568,,,
	stmia	sl, {r0, r1, r2}	@ tmp567,,,
	ldmia	r9, {r0, r1, r2}	@ tmp572,,,
	stmia	ip, {r0, r1, r2}	@,,,
	str	lr, [r5, r4, asl #2]	@ tmp574, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1630	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp555
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_FreeChanResource	@
	b	.L1535	@
.L1620:
	ldr	r2, [r3, r4, asl #2]	@ prephitmp.5154, s_pstVfmwChan
	ldr	r1, [r2, #212]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r1, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L1585	@,
	ldr	r8, [r2, #204]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r8, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L1585	@,
	ldr	r9, [r2, #208]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r9, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1585	@,
	ldr	r0, [fp, #-116]	@ temp.5296, ChanMemScd.PhyAddr
	ldr	r8, [fp, #-108]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	ip, [fp, #-100]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	add	lr, r0, r8	@ tmp395, temp.5296, ChanMemScd.Length
	cmp	sl, #1	@ OneChanMemFlag,
	cmpeq	lr, ip	@, tmp395, ChanMemVDH.PhyAddr
	bne	.L1585	@,
	str	r0, [r2, #156]	@ temp.5296, <variable>.stChanMem.PhyAddr
	ldr	lr, [fp, #-112]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	r8, [r3, r4, asl #2]	@ tmp404, s_pstVfmwChan
	str	lr, [r8, #160]	@ ChanMemScd.VirAddr, <variable>.stChanMem.VirAddr
	ldr	r2, [r3, r4, asl #2]	@ tmp407, s_pstVfmwChan
	ldr	r9, [fp, #-108]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	ip, [fp, #-92]	@ ChanMemVDH.Length, ChanMemVDH.Length
	add	r0, ip, r9	@ tmp410, ChanMemVDH.Length, ChanMemScd.Length
	str	r0, [r2, #164]	@ tmp410, <variable>.stChanMem.Length
	ldr	sl, [r3, r4, asl #2]	@ tmp412, s_pstVfmwChan
	str	r1, [sl, #152]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L1586	@
.L1589:
	movw	r1, #:lower16:.LC375	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC375	@,
	bl	dprint_vfmw	@
	b	.L1591	@
.L1614:
	cmp	r8, #1	@ s32SelfAllocChanMem_ctx,
	beq	.L1624	@,
.L1565:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC368	@,
	movw	r2, #1975	@,
	movt	r1, #:upper16:.LC368	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1622:
	movw	r1, #:lower16:.LC378	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC378	@,
	bl	dprint_vfmw	@
	b	.L1591	@
.L1623:
	movw	r1, #:lower16:.LC379	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC379	@,
	bl	dprint_vfmw	@
	b	.L1591	@
.L1556:
	movw	r1, #:lower16:.LC374	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC374	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1547:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC364	@,
	movw	r2, #1869	@,
	movt	r1, #:upper16:.LC364	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1610:
	cmp	r8, #1	@ s32SelfAllocChanMem_ctx,
	beq	.L1625	@,
.L1568:
	mov	r3, r2	@, prephitmp.5363
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC373	@,
	movw	r2, #1996	@,
	movt	r1, #:upper16:.LC373	@,
	str	ip, [sp, #0]	@ prephitmp.5285,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1602:
	movw	r1, #:lower16:.LC360	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC360	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1603:
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1606:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC361	@,
	movw	r2, #1847	@,
	movt	r1, #:upper16:.LC361	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1612:
	cmp	r8, #1	@ s32SelfAllocChanMem_ctx,
	beq	.L1626	@,
.L1573:
	ldr	r4, [fp, #-864]	@, %sfp
	cmp	r4, #1	@,
	beq	.L1627	@,
.L1574:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC370	@,
	movw	r2, #2022	@,
	movt	r1, #:upper16:.LC370	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1613:
	mov	r0, r8	@, tmp276
	movw	r1, #:lower16:.LC371	@,
	movw	r2, #1944	@,
	movt	r1, #:upper16:.LC371	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1543:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC362	@,
	movw	r2, #1859	@,
	movt	r1, #:upper16:.LC362	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1609:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC372	@,
	movw	r2, #1958	@,
	movt	r1, #:upper16:.LC372	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1621:
	movw	r1, #:lower16:.LC376	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC376	@,
	bl	dprint_vfmw	@
	b	.L1591	@
.L1624:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1565	@
.L1625:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r2, [fp, #-92]	@ prephitmp.5363, ChanMemVDH.Length
	ldr	ip, [fp, #-68]	@ prephitmp.5285, DetailMemSize.VdhDetailMem
	b	.L1568	@
.L1618:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r8	@, tmp235
	movw	r1, #:lower16:.LC368	@,
	movw	r2, #1900	@,
	movt	r1, #:upper16:.LC368	@,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1617:
	mov	r0, r8	@, tmp235
	movw	r1, #:lower16:.LC366	@,
	movw	r2, #1884	@,
	movt	r1, #:upper16:.LC366	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1627:
	ldr	r0, [fp, #-100]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-96]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #100
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1574	@
.L1626:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1573	@
.L1619:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [fp, #-100]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-96]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	sub	r0, fp, #100
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r8	@, tmp235
	movw	r1, #:lower16:.LC370	@,
	movw	r2, #1921	@,
	movt	r1, #:upper16:.LC370	@,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1611:
	cmp	r8, #1	@ s32SelfAllocChanMem_ctx,
	beq	.L1628	@,
.L1579:
	ldr	lr, [fp, #-864]	@, %sfp
	cmp	lr, #1	@,
	beq	.L1629	@,
.L1580:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC363	@,
	movw	r2, #2060	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1535	@
.L1615:
	movw	r1, #:lower16:.LC363	@,
	movw	r2, #1864	@,
	movt	r1, #:upper16:.LC363	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1535	@
.L1629:
	ldr	r0, [fp, #-100]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-96]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #100
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1580	@
.L1628:
	ldr	r0, [fp, #-132]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-128]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #132
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L1579	@
.L1631:
	.align	2
.L1630:
	.word	.LANCHOR0+728
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1379:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #24	@ eCapLevel,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L1645	@,
	sub	r6, fp, #220	@ tmp236,,
	sub	r5, fp, #84	@ tmp237,,
	mov	r1, #120	@,
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
	sub	r0, r4, #18	@ D.41411, eCapLevel,
	cmp	r0, #7	@ D.41411,
	add	ip, r1, #1	@ tmp163, tmp155,
	ldr	r1, [r3, r1, asl #2]	@ tmp158, CapItem
	mov	lr, #1	@ tmp150,
	str	lr, [fp, #-220]	@ tmp150, stChanOption.Purpose
	mov	lr, #2	@ tmp151,
	str	lr, [fp, #-216]	@ tmp151, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp166,
	str	lr, [fp, #-200]	@ tmp166, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp167,
	str	lr, [fp, #-196]	@ tmp167, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp168,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp168,
	str	r1, [fp, #-212]	@ tmp158, stChanOption.s32MaxWidth
	addls	r0, lr, r0, asl #2	@, tmp171, tmp168, D.41411,
	mov	r1, #136	@ tmp165,
	str	r1, [fp, #-204]	@ tmp165, stChanOption.s32MaxSliceNum
	rsb	r1, r4, r2	@ tmp177, eCapLevel, tmp234
	ldr	ip, [r3, ip, asl #2]	@ tmp164, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #124]	@ MinDispFspNum, CSWTCH.814
	add	r0, r3, r1, asl #2	@, tmp179, tmp233, tmp177,
	ldr	r1, [r0, #12]	@ D.36934, CapItem
	rsb	r0, r4, r2	@ tmp191, eCapLevel, tmp234
	str	ip, [fp, #-208]	@ tmp164, stChanOption.s32MaxHeight
	addls	ip, lr, #2	@ prephitmp.5379, MinDispFspNum,
	movhi	ip, #8	@ prephitmp.5379,
	cmp	r1, ip	@ D.36934, prephitmp.5379
	add	ip, r3, r0, asl #2	@, tmp193, tmp233, tmp191,
	subgt	r1, r1, #2	@ tmp182, D.36934,
	mov	r2, #1	@ tmp184,
	rsbgt	r1, lr, r1	@ tmp183, MinDispFspNum, tmp182
	ldr	r3, [ip, #24]	@ tmp195, CapItem
	movle	r1, #1	@ tmp181,
	str	lr, [fp, #-168]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	cmp	r4, #24	@ eCapLevel,
	str	r1, [fp, #-192]	@ tmp183, stChanOption.s32MaxRefFrameNum
	mov	r0, r4	@, eCapLevel
	mov	r1, #0	@ tmp196,
	streq	r2, [fp, #-168]	@ tmp184, stChanOption.s32DisplayFrameNum
	streq	r1, [fp, #-192]	@ tmp196, stChanOption.s32MaxRefFrameNum
	str	r2, [fp, #-184]	@ tmp184, stChanOption.s32SupportBFrame
	str	r2, [fp, #-180]	@ tmp184, stChanOption.s32SupportH264
	str	r2, [fp, #-176]	@ tmp184, stChanOption.s32ReRangeEn
	sub	r2, fp, #68	@,,
	str	r1, [fp, #-164]	@ tmp196, stChanOption.s32SlotWidth
	str	r1, [fp, #-160]	@ tmp196, stChanOption.s32SlotHeight
	sub	r1, fp, #56	@,,
	str	r3, [fp, #-172]	@ tmp195, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1646	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1641	@,
	ldr	r3, [r8, #8]	@ D.36950, <variable>.Length
	cmp	r3, #0	@ D.36950,
	beq	.L1641	@,
	ldr	ip, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, #0	@ <variable>.PhyAddr,
	beq	.L1642	@,
	ldr	sl, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	sl, #0	@ <variable>.VirAddr,
	beq	.L1642	@,
	ldr	r0, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	lr, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	add	r2, lr, r0	@ tmp205, ScdChanMemSize, VdmChanMemSize
	cmp	r3, r2	@ D.36950, tmp205
	blt	.L1642	@,
	ldr	lr, [fp, #-64]	@ D.36963, ScdChanMemSize
	sub	r8, fp, #148	@,,
	str	ip, [fp, #-100]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	sub	r9, fp, #132	@ tmp217,,
	str	r8, [fp, #-224]	@, %sfp
	rsb	r8, lr, r3	@ tmp216, D.36963, D.36950
	str	lr, [fp, #-92]	@ D.36963, scd_MemRecord.Length
	add	ip, ip, lr	@ tmp212, <variable>.PhyAddr, D.36963
	str	sl, [fp, #-96]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, sl, lr	@ tmp214, <variable>.VirAddr, D.36963
	ldmia	r7, {r0, r1, r2, r3}	@ tmp235,,,,
	str	ip, [fp, #-84]	@ tmp212, vdh_MemRecord.PhyAddr
	str	lr, [fp, #-80]	@ tmp214, vdh_MemRecord.VirAddr
	mov	ip, #3	@ tmp208,
	str	r8, [fp, #-76]	@ tmp216, vdh_MemRecord.Length
	ldr	lr, [fp, #-224]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp217,,,,
	str	ip, [fp, #-216]	@ tmp208, stChanOption.MemAllocMode
	ldmia	r5, {r0, r1, r2, r3}	@ tmp237,,,,
	mov	ip, #1	@ OneChanMemFlag,
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	b	.L1643	@
.L1641:
	mov	ip, #0	@ OneChanMemFlag,
.L1643:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp236
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.36915,
.L1634:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1645:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC381	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC381	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36915,
	b	.L1634	@
.L1642:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC383	@,
	movt	r1, #:upper16:.LC383	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #1	@,
	ldr	r3, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r1, #:lower16:.LC384	@,
	movt	r1, #:upper16:.LC384	@,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC385	@,
	movt	r1, #:upper16:.LC385	@,
	add	r2, r2, r3	@, ScdChanMemSize, VdmChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36915,
	b	.L1634	@
.L1646:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36915,
	b	.L1634	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1355:
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
	movw	r6, #:lower16:.LANCHOR3	@ tmp198,
	movt	r6, #:upper16:.LANCHOR3	@ tmp198,
	movw	r4, #:lower16:.LANCHOR0	@ tmp197,
	movt	r4, #:upper16:.LANCHOR0	@ tmp197,
	mov	r3, #100	@ tmp147,
	ldr	r0, [r6, #-3384]	@ g_SleepTime.425, g_SleepTime
	str	r3, [r4, #976]	@ tmp147, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.425,
	ble	.L1648	@,
	bl	msleep	@
.L1648:
	ldr	r0, .L1670	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp201,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp201,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #48]	@ D.36446, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.36446,
	beq	.L1665	@,
	mov	r0, #0	@,
	blx	r3	@ D.36446
.L1650:
	bl	SCDDRV_MaskInt	@
	bl	SM_Wakeup	@
	ldr	r0, [r6, #-3376]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp157,
	str	r2, [r4, #976]	@ tmp157, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r7, #0	@ ret,
	beq	.L1666	@,
.L1652:
	movw	r6, #:lower16:g_btl_hal_fun_ptr	@ tmp200,
	movt	r6, #:upper16:g_btl_hal_fun_ptr	@ tmp200,
	mov	r1, #102	@ tmp161,
	str	r1, [r4, #976]	@ tmp161, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, #28]	@ D.36455, g_btl_hal_fun_ptr.pfun_BTLHAL_MaskInt
	cmp	r0, #0	@ D.36455,
	beq	.L1653	@,
	blx	r0	@ D.36455
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	BTL_Wakeup	@
	ldr	r0, [r6, #32]	@ D.36460, g_btl_hal_fun_ptr.pfun_BTLHAL_EnableInt
	cmp	r0, #0	@ D.36460,
	beq	.L1655	@,
.L1669:
	blx	r0	@ D.36460
.L1656:
	ldr	r3, [r5, #52]	@ D.36464, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.36464,
	beq	.L1657	@,
	mov	r0, #0	@,
	blx	r3	@ D.36464
.L1658:
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1670	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1670	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L1667	@,
.L1659:
	mov	r0, #1	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@ D.36468,
	mov	r5, r0	@ D.36468,
	beq	.L1668	@,
.L1662:
	ldr	r0, .L1670	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1670+8	@,
	mov	ip, #105	@ tmp192,
	str	ip, [r4, #976]	@ tmp192, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r7	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1657:
	mov	r0, r3	@, D.36464
	movw	r1, #:lower16:.LC179	@,
	mov	r2, #712	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L1658	@
.L1666:
	bl	DecSyntax	@
	mov	r7, r0	@ ret,
	b	.L1652	@
.L1665:
	mov	r0, r3	@, D.36446
	movw	r1, #:lower16:.LC179	@,
	movw	r2, #657	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	b	.L1650	@
.L1653:
	movw	r2, #701	@,
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	BTL_Wakeup	@
	ldr	r0, [r6, #32]	@ D.36460, g_btl_hal_fun_ptr.pfun_BTLHAL_EnableInt
	cmp	r0, #0	@ D.36460,
	bne	.L1669	@,
.L1655:
	movw	r1, #:lower16:.LC180	@,
	movw	r2, #705	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	b	.L1656	@
.L1667:
	mov	r0, #0	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r5, r0	@ tmp.5431,
	mov	r0, #0	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1661	@,
	cmp	r5, #1	@ tmp.5431,
	bne	.L1659	@,
.L1661:
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, #3	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #0	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1659	@
.L1668:
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp,
	mov	r0, r5	@, D.36468
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1663	@,
	cmp	r6, #1	@ tmp,
	bne	.L1662	@,
.L1663:
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, #3	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #1	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	ldr	r0, .L1670+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1662	@
.L1671:
	.align	2
.L1670:
	.word	.LANCHOR0+728
	.word	.LANCHOR3-2700
	.word	.LANCHOR3-3476
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1354:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
.L1673:
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp167,
	movt	r4, #:upper16:.LANCHOR0	@ tmp167,
	mov	r6, #0	@ tmp176,
	mov	r8, #1	@ tmp177,
	mov	r7, #5	@ tmp181,
.L1678:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC386	@,
	movt	r1, #:upper16:.LC386	@,
	str	r6, [r4, #976]	@ tmp176, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #968]	@ temp.5459, s_VfmwCTrl.eTaskCommand
	mov	r5, #2	@ tmp144,
	str	r5, [r4, #964]	@ tmp144, s_VfmwCTrl.eTaskState
	cmp	r3, r5	@ temp.5459,
	bne	.L1677	@,
	b	.L1674	@
.L1684:
	str	r5, [r4, #976]	@ tmp172, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC387	@,
	movt	r1, #:upper16:.LC387	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #968]	@ D.36411, s_VfmwCTrl.eTaskCommand
	cmp	r3, #2	@ D.36411,
	beq	.L1674	@,
.L1677:
	cmp	r3, #3	@ D.36411,
	bne	.L1684	@,
.L1675:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC390	@,
	movt	r1, #:upper16:.LC390	@,
	mov	r2, #6	@ tmp162,
	str	r2, [r4, #976]	@ tmp162, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp165,
	str	r0, [r4, #964]	@ tmp165, s_VfmwCTrl.eTaskState
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1674:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC388	@,
	movt	r1, #:upper16:.LC388	@,
	mov	r3, #4	@ tmp154,
	str	r3, [r4, #976]	@ tmp154, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r8, [r4, #964]	@ tmp177, s_VfmwCTrl.eTaskState
.L1679:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC389	@,
	movt	r1, #:upper16:.LC389	@,
	str	r7, [r4, #976]	@ tmp181, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #968]	@ temp.5456, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.5456,
	beq	.L1678	@,
	cmp	r3, #3	@ temp.5456,
	mov	r0, #10	@,
	beq	.L1675	@,
	bl	msleep	@
	b	.L1679	@
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1391:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp199,
	movt	r5, #:upper16:.LANCHOR0	@ tmp199,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.37827, s_pstVfmwChan
	cmp	r3, #0	@ D.37827,
	beq	.L1698	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L1699	@,
	ldr	sl, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r8, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r7, #0	@ tmp148,
	add	r0, r5, #128	@ tmp153, tmp199,
	mov	ip, #300	@ tmp155,
	mov	r1, ip	@, tmp155
	str	r7, [r8, #696]	@ tmp148, <variable>.s32CountNoDecparamFlag
	ldr	r9, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mla	r0, ip, r4, r0	@, tmp155, ChanID, tmp153
	str	r7, [r9, #700]	@ tmp148, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	BTL_InformDecChanReset	@
	add	r0, r5, #856	@, tmp199,
	bl	OSAL_LockIRQ	@
	ldr	r2, [r5, r4, asl #2]	@ tmp161, s_pstVfmwChan
	ldr	r8, [r6, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	movw	r3, #:lower16:11199436	@ tmp162,
	movt	r3, #:upper16:11199436	@ tmp162,
	mov	r0, r4	@, ChanID
	str	r8, [r2, r3]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	movw	r8, #:lower16:11199048	@ tmp173,
	bl	InitSyntaxCtx	@
	ldr	ip, [r5, r4, asl #2]	@ temp.5489, s_pstVfmwChan
	movt	r8, #:upper16:11199048	@ tmp173,
	add	r1, ip, #912	@, temp.5489,
	ldr	r0, [ip, #896]	@, <variable>.eVidStd
	bl	ReleaseCurPic	@
	ldr	r1, [r5, r4, asl #2]	@ tmp170, s_pstVfmwChan
	movw	r0, #:lower16:11199096	@,
	movt	r0, #:upper16:11199096	@,
	add	r0, r1, r0	@, tmp170,
	mov	r1, #200	@,
	bl	__memzero	@
	ldr	r9, [r5, r4, asl #2]	@ tmp172, s_pstVfmwChan
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	movw	r2, #:lower16:11199056	@ tmp177,
	movt	r2, #:upper16:11199056	@ tmp177,
	strd	r0, [r9, r8]	@, tmp172, tmp173
	mvn	r8, #0	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp176, s_pstVfmwChan
	mvn	r9, #0	@,
	movw	ip, #:lower16:11199296	@ tmp181,
	movt	ip, #:upper16:11199296	@ tmp181,
	add	r0, r5, #856	@, tmp199,
	strd	r8, [r3, r2]	@, tmp176, tmp177
	ldr	r1, [r5, r4, asl #2]	@ tmp180, s_pstVfmwChan
	str	r7, [r1, ip]	@ tmp148, <variable>.stSynExtraData.s32NewPicSegDetector
	bl	OSAL_UnLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ tmp187, s_pstVfmwChan
	ldr	r3, [r0, #896]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1689	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1690:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r6, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L1700	@,
.L1691:
	ldr	lr, [r5, #124]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L1692	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp193,
	movt	r5, #:upper16:.LANCHOR3	@ tmp193,
	mov	r3, #0	@ tmp192,
	str	r3, [fp, #-48]	@ tmp192, data
	ldr	r2, [r5, #-3420]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r2, #0	@ vfmw_save_str_file,
	subeq	r6, fp, #48	@ prephitmp.5475,,
	beq	.L1694	@,
	sub	r6, fp, #48	@ prephitmp.5475,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.5475
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r5, #-3420]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	beq	.L1694	@,
.L1695:
	movw	r1, #:lower16:.LC353	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC353	@,
	bl	dprint_vfmw	@
.L1692:
	cmp	sl, #0	@ ChanIsRun,
	bne	.L1701	@,
.L1696:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37831,
.L1687:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1700:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1691	@
.L1701:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1696	@
.L1689:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1690	@
.L1699:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC391	@,
	movw	r2, #3347	@,
	movt	r1, #:upper16:.LC391	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37831,
	b	.L1687	@
.L1694:
	mov	r1, r6	@, prephitmp.5475
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1695	@
.L1698:
	mov	r0, r3	@, D.37827
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3343	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37831,
	b	.L1687	@
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
.LFB1350:
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
	ldr	r0, .L1704	@,
	mov	r1, #28	@,
	bl	__memzero	@
	bl	VCTRL_Resume	@
	ldmfd	sp, {fp, sp, pc}	@
.L1705:
	.align	2
.L1704:
	.word	.LANCHOR0+24
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
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
	.global	g_TaskIrqLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSWTCH.811, %object
	.size	CSWTCH.811, 32
CSWTCH.811:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.39446, %object
	.size	__func__.39446, 14
__func__.39446:
	.ascii	"DecChanSyntax\000"
	.space	2
	.type	__func__.37987, %object
	.size	__func__.37987, 23
__func__.37987:
	.ascii	"VCTRL_ReleaseChanImage\000"
	.space	1
	.type	__func__.37937, %object
	.size	__func__.37937, 19
__func__.37937:
	.ascii	"VCTRL_GetChanImage\000"
	.space	1
	.type	__func__.36782, %object
	.size	__func__.36782, 29
__func__.36782:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	CSWTCH.814, %object
	.size	CSWTCH.814, 32
CSWTCH.814:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
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
	.ascii	"vfmw\000"
	.space	3
.LC42:
	.ascii	"vfmw_dbg\000"
	.space	3
.LC43:
	.ascii	"vfmw_prn\000"
	.space	3
.LC44:
	.ascii	"vfmw_btl\000"
	.space	3
.LC45:
	.ascii	"vfmw_dec\000"
	.space	3
.LC46:
	.ascii	"vfmw_scd\000"
	.space	3
.LC47:
	.ascii	"vfmw_chn\000"
	.space	3
.LC48:
	.ascii	"=============== btl info =========================="
	.ascii	"====\012\000"
	.space	3
.LC49:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC50:
	.ascii	"BTLState\000"
	.space	3
.LC51:
	.ascii	"ThisInstID\000"
	.space	1
.LC52:
	.ascii	"s32ThisChanIDPlus1\000"
	.space	1
.LC53:
	.ascii	"LastProcessTime\000"
.LC54:
	.ascii	"%-25s :%d.%d%%\012\000"
.LC55:
	.ascii	"BTL load\000"
	.space	3
.LC56:
	.ascii	"--------------- inst[%d] -------------\012\000"
.LC57:
	.ascii	"s32IsOpen\000"
	.space	2
.LC58:
	.ascii	"Is1D\000"
	.space	3
.LC59:
	.ascii	"IsCompress\000"
	.space	1
.LC60:
	.ascii	"DNROpen\000"
.LC61:
	.ascii	"InstMode\000"
	.space	3
.LC62:
	.ascii	"s321DFrameIsProc\000"
	.space	3
.LC63:
	.ascii	"VCMP enable\000"
.LC64:
	.ascii	"OldImgWidth\000"
.LC65:
	.ascii	"OldImgHeight\000"
	.space	3
.LC66:
	.ascii	"Cur_ImgWidth\000"
	.space	3
.LC67:
	.ascii	"Cur_ImgHeight\000"
	.space	2
.LC68:
	.ascii	"btl frame num\000"
	.space	2
.LC69:
	.ascii	"%x \000"
.LC70:
	.ascii	"\012btl_usage: \000"
	.space	3
.LC71:
	.ascii	"%d \000"
.LC72:
	.ascii	"\012%-25s :(%d,%d,%d)\012\000"
.LC73:
	.ascii	"queue detail\000"
	.space	3
.LC74:
	.ascii	"\012\000"
	.space	2
.LC75:
	.ascii	"=============== chn info =========================="
	.ascii	"====\012\000"
	.space	3
.LC76:
	.ascii	"=============== chn by vdh ========================"
	.ascii	"====\012\000"
	.space	3
.LC77:
	.ascii	"=============== chanid by prior ==================="
	.ascii	"====\012\000"
	.space	3
.LC78:
	.ascii	"=============== chan prior ========================"
	.ascii	"====\012\000"
	.space	3
.LC79:
	.ascii	"=============== chan isopen isrun ================="
	.ascii	"====\012\000"
	.space	3
.LC80:
	.ascii	"%d %d %d\012\000"
	.space	2
.LC81:
	.ascii	"'print_enable_word' definition, from bit31 to bit0:"
	.ascii	"\012\000"
	.space	3
.LC82:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.space	3
.LC83:
	.ascii	"<not used>  DEC_MODE    PTS         DNR\012\000"
	.space	3
.LC84:
	.ascii	"FOD         SCD_INFO    SCD_STREAM  SCD_REGMSG\012\000"
.LC85:
	.ascii	"BLOCK       DBG         SE          SEI\012\000"
	.space	3
.LC86:
	.ascii	"SLICE       PIC         SEQ         MARK_MMCO\012\000"
	.space	1
.LC87:
	.ascii	"POC         DPB         REF         QUEUE\012\000"
	.space	1
.LC88:
	.ascii	"IMAGE       STR_BODY    STR_TAIL    STR_HEAD\012\000"
	.space	2
.LC89:
	.ascii	"STREAM      UPMSG       RPMSG       DNMSG\012\000"
	.space	1
.LC90:
	.ascii	"VDMREG      CTRL        ERROR       FATAL\012\000"
	.space	1
.LC91:
	.ascii	"'vfmw_state' definition, from bit31 to bit0:\012\000"
	.space	2
.LC92:
	.ascii	"<not used>       <not used>       <not used>    <no"
	.ascii	"t used>\012\000"
.LC93:
	.ascii	"<not used>       <not used>       <VO_REL_IMG>  <VO"
	.ascii	"_RCV_IMG>\012\000"
	.space	2
.LC94:
	.ascii	"<2D_TO_QUEUE>    <DNR_INTERRUPT>  <DNR_START>   <1D"
	.ascii	"_TO_QUEUE>\012\000"
	.space	1
.LC95:
	.ascii	"<VDH_REPAIR>     <VDH_INTERRUPT>  <VDH_START>   <GE"
	.ascii	"NERATE_DECPARAM>\012\000"
	.space	3
.LC96:
	.ascii	"<DECSYNTAX_SEG>  <SCD_INTERRUPT>  <SCD_START>   <RC"
	.ascii	"V_RAW>\012\000"
	.space	1
.LC97:
	.ascii	"'extra_cmd' definition, from bit31 to bit0:\012\000"
	.space	3
.LC98:
	.ascii	"<not used>       <not used>      <direct 8x8>   <B "
	.ascii	"before P>\012\000"
	.space	2
.LC99:
	.ascii	"------------------------debug options--------------"
	.ascii	"------------\012\000"
	.space	3
.LC100:
	.ascii	"%-27s :%#x\012\000"
.LC101:
	.ascii	"tracer address\000"
	.space	1
.LC102:
	.ascii	"%-27s :%s\012\000"
	.space	1
.LC103:
	.ascii	"path to save debug data\000"
.LC104:
	.ascii	"print enable word\000"
	.space	2
.LC105:
	.ascii	"vfmw_state enable word\000"
	.space	1
.LC106:
	.ascii	"%-27s :%d\012\000"
	.space	1
.LC107:
	.ascii	"bitstream control period\000"
	.space	3
.LC108:
	.ascii	"frame control period\000"
	.space	3
.LC109:
	.ascii	"rcv/rls img control period\000"
	.space	1
.LC110:
	.ascii	"you can perform vfmw debug with such commond:\012\000"
	.space	1
.LC111:
	.ascii	"echo [arg1] [arg2] > /proc/vfmw\012\012\000"
	.space	2
.LC112:
	.ascii	"debug action                    arg1       arg2\012"
	.ascii	"\000"
	.space	3
.LC113:
	.ascii	"------------------------------  --------  ---------"
	.ascii	"------------\012\000"
	.space	3
.LC114:
	.ascii	"set print enable                0x0       print_ena"
	.ascii	"ble_word\012\000"
	.space	3
.LC115:
	.ascii	"set err_thr                     0x2       (chan_id<"
	.ascii	"<24)|err_thr\012\000"
	.space	3
.LC116:
	.ascii	"set dec order output            0x4       (chan_id<"
	.ascii	"<24)|dec_order_output_enable\012\000"
	.space	3
.LC117:
	.ascii	"set dec_mode(0/1/2=IPB/IP/I)    0x5       (chan_id<"
	.ascii	"<24)|dec_mode\012\000"
	.space	2
.LC118:
	.ascii	"set discard_before_dec_thr      0x7       (chan_id<"
	.ascii	"<24)|stream_size_thr\012\000"
	.space	3
.LC119:
	.ascii	"set postprocess options         0xa       (dc<<8)|("
	.ascii	"db<<4)|dr, 0000=auto,0001=on,0010=off\012\000"
	.space	2
.LC120:
	.ascii	"set frame/adaptive storage      0xb       0:frame o"
	.ascii	"nly, 1:adaptive\012\000"
.LC121:
	.ascii	"pay attention to the channel    0xd       channel n"
	.ascii	"umber\012\000"
	.space	2
.LC122:
	.ascii	"channel vcmp config             0xe       chanId: a"
	.ascii	"rg2>>27,\012%42smirror_en: (arg2>>26)&1,\012%42svcm"
	.ascii	"p_en: (arg2>>25)&1,\012%42swm_en: (arg2>>24)&1,\012"
	.ascii	"%42swm_start: (arg2>>12)&0xfff,\012%42swm_end: (arg"
	.ascii	"2)&0xfff\012\000"
	.space	1
.LC123:
	.ascii	" \000"
	.space	2
.LC124:
	.ascii	"print tracer                    0x100     tracer ad"
	.ascii	"dress. do not care if vfmw still running\012\000"
	.space	3
.LC125:
	.ascii	"start/stop raw stream saving    0x200     chan_id\012"
	.ascii	"\000"
	.space	1
.LC126:
	.ascii	"start/stop stream seg saving    0x201     chan_id\012"
	.ascii	"\000"
	.space	1
.LC127:
	.ascii	"start/stop 2D yuv saving        0x202     chan_id\012"
	.ascii	"\000"
	.space	1
.LC128:
	.ascii	"save a single 2D frame          0x203     frame phy"
	.ascii	" addr\012\000"
	.space	2
.LC129:
	.ascii	"save a single 1D frame          0x204     frame phy"
	.ascii	" addr width height=(height+PicStructure)\012\000"
	.space	3
.LC130:
	.ascii	"set dec_task_schedule_delay     0x400     schedual_"
	.ascii	"delay_time(ms)\012\000"
	.space	1
.LC131:
	.ascii	"set dnr_active_interval         0x401     dnr_activ"
	.ascii	"e_interval(ms)\012\000"
	.space	1
.LC132:
	.ascii	"stop/start syntax dec           0x402     do not ca"
	.ascii	"re\012\000"
	.space	1
.LC133:
	.ascii	"set trace controller            0x500     vfmw_stat"
	.ascii	"e_word in /proc/vfmw_prn\012\000"
	.space	3
.LC134:
	.ascii	"set bitstream control period    0x501     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC135:
	.ascii	"set frame control period        0x502     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC136:
	.ascii	"set rcv/rls img control period  0x503     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC137:
	.ascii	"=============== vfmw info =============\012\000"
	.space	3
.LC138:
	.ascii	"version num\000"
.LC139:
	.ascii	"%-25s %d:%d.%d%%\012\000"
	.space	2
.LC140:
	.ascii	"VDM load\000"
	.space	3
.LC141:
	.ascii	"DNR load\000"
	.space	3
.LC142:
	.ascii	"extra_ref\000"
	.space	2
.LC143:
	.ascii	"extra_disp\000"
	.space	1
.LC144:
	.ascii	"extra_cmd\000"
	.space	2
.LC145:
	.ascii	"USE_FF_APT_EN\000"
	.space	2
.LC146:
	.ascii	"g_ResetCreateNewSave\000"
	.space	3
.LC147:
	.ascii	"u32VdmKiloCycle\000"
.LC148:
	.ascii	"u32StatPeriod\000"
	.space	2
.LC149:
	.ascii	"pstCfg is null\000"
	.space	1
.LC150:
	.ascii	"pArgs is null\000"
	.space	2
.LC151:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC152:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC153:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC154:
	.ascii	"=============== scd info =========================="
	.ascii	"====\012\000"
	.space	3
.LC155:
	.ascii	"IsScdDrvOpen\000"
	.space	3
.LC156:
	.ascii	"SCDState\000"
	.space	3
.LC157:
	.ascii	"%-25s :%#x\012\000"
.LC158:
	.ascii	"HwMemAddr\000"
	.space	2
.LC159:
	.ascii	"HwMemSize\000"
	.space	2
.LC160:
	.ascii	"DownMsgMemAddr\000"
	.space	1
.LC161:
	.ascii	"UpMsgMemAddr\000"
	.space	3
.LC162:
	.ascii	"Mode\000"
	.space	3
.LC163:
	.ascii	"cfg VidStd\000"
	.space	1
.LC164:
	.ascii	"is wait seg ext\000"
.LC165:
	.ascii	"cfg BufPhyAddr\000"
	.space	1
.LC166:
	.ascii	"cfg BufSize\000"
.LC167:
	.ascii	"raw Total size\000"
	.space	1
.LC168:
	.ascii	"raw Total num\000"
	.space	2
.LC169:
	.ascii	"seg Total size\000"
	.space	1
.LC170:
	.ascii	"seg Total num\000"
	.space	2
.LC171:
	.ascii	"seg read_addr\000"
	.space	2
.LC172:
	.ascii	"seg write_addr\000"
	.space	1
.LC173:
	.ascii	"%-25s :%d Kbps\012\000"
.LC174:
	.ascii	"actual bitrate\000"
	.space	1
.LC175:
	.ascii	"Last frame output failed!\012\000"
	.space	1
.LC176:
	.ascii	"Last frame output successed!\012\000"
	.space	2
.LC177:
	.ascii	"Last frame already output, vdhQ ID: %d\012\000"
.LC178:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC179:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC180:
	.ascii	"BTLHAL_NULL_FUN_RETURN,L%d\012\000"
.LC181:
	.ascii	"=============== dec info =========================="
	.ascii	"====\012\000"
	.space	3
.LC182:
	.ascii	"vfmw_read_proc_dec L(%d): unkown LevelID(%d)\012\000"
	.space	2
.LC183:
	.ascii	"--------------- chan[%d] -------------\012\000"
.LC184:
	.ascii	"deced by vdh\000"
	.space	3
.LC185:
	.ascii	"s32IsRun\000"
	.space	3
.LC186:
	.ascii	"s32Priority\000"
.LC187:
	.ascii	"eVidStd\000"
.LC188:
	.ascii	"cfg s32ChanErrThr\000"
	.space	2
.LC189:
	.ascii	"cfg s32ChanStrmOFThr\000"
	.space	3
.LC190:
	.ascii	"cfg s32DecMode\000"
	.space	1
.LC191:
	.ascii	"cfg s32DecOrderOutput\000"
	.space	2
.LC192:
	.ascii	"cfg stdext AP\000"
	.space	2
.LC193:
	.ascii	"cfg stdext CodecVer\000"
.LC194:
	.ascii	"cfg stdext bReversed\000"
	.space	3
.LC195:
	.ascii	"ChanMem_vdh mem phy\000"
.LC196:
	.ascii	"ChanMem_vdh mem size\000"
	.space	3
.LC197:
	.ascii	"ChanMem_scd mem phy\000"
.LC198:
	.ascii	"ChanMem_scd mem size\000"
	.space	3
.LC199:
	.ascii	"s32SdecMemAddr\000"
	.space	1
.LC200:
	.ascii	"s32SdecMemSize\000"
	.space	1
.LC201:
	.ascii	"s32OffLineDnrMemAddr\000"
	.space	3
.LC202:
	.ascii	"s32OffLineDNRMemSize\000"
	.space	3
.LC203:
	.ascii	"s32VdmChanMemAddr\000"
	.space	2
.LC204:
	.ascii	"s32VdmChanMemSize\000"
	.space	2
.LC205:
	.ascii	"Recent UsrdecFrame: enFmt=%d,w=%d,h=%d,Ystride=%d,C"
	.ascii	"stride=%d,PTS=%lld\012\000"
	.space	1
.LC206:
	.ascii	"s32ScdChanMemAddr\000"
	.space	2
.LC207:
	.ascii	"s32ScdChanMemSize\000"
	.space	2
.LC208:
	.ascii	"%-25s :%d,%d,%d\012\000"
	.space	3
.LC209:
	.ascii	"ref,read,new\000"
	.space	3
.LC210:
	.ascii	"%-25s :(%d,%d,%d)\012\000"
	.space	1
.LC211:
	.ascii	"decQue detail\000"
	.space	2
.LC212:
	.ascii	"actual DecMode\000"
	.space	1
.LC213:
	.ascii	"actual DecOrderOutput\000"
	.space	2
.LC214:
	.ascii	"image format\000"
	.space	3
.LC215:
	.ascii	"frame packing type\000"
	.space	1
.LC216:
	.ascii	"%-25s :%d.%02d fps\012\000"
.LC217:
	.ascii	"stream frame rate\000"
	.space	2
.LC218:
	.ascii	"%-25s :%d.%d fps\012\000"
	.space	2
.LC219:
	.ascii	"actual frame rate\000"
	.space	2
.LC220:
	.ascii	"VDH 0 load\000"
	.space	1
.LC221:
	.ascii	"VDH 1 load\000"
	.space	1
.LC222:
	.ascii	"skip frame found\000"
	.space	3
.LC223:
	.ascii	"skip frame discarded\000"
	.space	3
.LC224:
	.ascii	"\012%-25s :%d\012\000"
.LC225:
	.ascii	"tree fsp s32DispLoopEnable\000"
	.space	1
.LC226:
	.ascii	"tree fsp s32DecFsWidth\000"
	.space	1
.LC227:
	.ascii	"tree fsp s32DecFsHeight\000"
.LC228:
	.ascii	"tree fsp s32DispFsWidth\000"
.LC229:
	.ascii	"tree fsp s32DispFsHeight\000"
	.space	3
.LC230:
	.ascii	"tree fsp s32ExpectedDecFsNum\000"
	.space	3
.LC231:
	.ascii	"tree fsp s32ExpectedDispFsNum\000"
	.space	2
.LC232:
	.ascii	"tree fsp s8LevelID\000"
	.space	1
.LC233:
	.ascii	"\012\012%-25s :%d\012disp_usage: \000"
	.space	3
.LC234:
	.ascii	"tree fsp s32DispFsNum\000"
	.space	2
.LC235:
	.ascii	"%d%d \000"
	.space	2
.LC236:
	.ascii	"\012\012%-25s :%d\012dec_usage: \000"
.LC237:
	.ascii	"tree fsp s32DecFsNum\000"
	.space	3
.LC238:
	.ascii	"fsp s32DispLoopEnable\000"
	.space	2
.LC239:
	.ascii	"fsp s32DecFsWidth\000"
	.space	2
.LC240:
	.ascii	"fsp s32DecFsHeight\000"
	.space	1
.LC241:
	.ascii	"fsp s32DispFsWidth\000"
	.space	1
.LC242:
	.ascii	"fsp s32DispFsHeight\000"
.LC243:
	.ascii	"fsp s32ExpectedDecFsNum\000"
.LC244:
	.ascii	"fsp s32ExpectedDispFsNum\000"
	.space	3
.LC245:
	.ascii	"fsp Logic fs num\000"
	.space	3
.LC246:
	.ascii	"\012%-25s :%d\012dec_usage: \000"
	.space	1
.LC247:
	.ascii	"fsp s32DecFsNum\000"
.LC248:
	.ascii	"fsp s32DispFsNum\000"
	.space	3
.LC249:
	.ascii	"fsp s32PmvNum\000"
	.space	2
.LC250:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC251:
	.ascii	"The channel %d is not active\012\000"
	.space	2
.LC252:
	.ascii	"The pDecParam of channel %d is NULL\012\000"
	.space	3
.LC253:
	.ascii	"The channel %d is deced\012\000"
	.space	3
.LC254:
	.ascii	"Chan %d is not open or not running\012\000"
.LC255:
	.ascii	"VFMW_Hal_%d\000"
.LC256:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC257:
	.ascii	"VDEC_interrupt\000"
	.space	1
.LC258:
	.ascii	"SCD_interrupt\000"
	.space	2
.LC259:
	.ascii	"BTL_interrupt\000"
	.space	2
.LC260:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC261:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC262:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC263:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC264:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC265:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC266:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC267:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC268:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
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
	.ascii	"pImage is NULL\000"
	.space	1
.LC285:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC286:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC287:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC288:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC289:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC290:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC291:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC292:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC293:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC294:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC295:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC296:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC297:
	.ascii	"extra_ref=\000"
	.space	1
.LC298:
	.ascii	"=\000"
	.space	2
.LC299:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC300:
	.ascii	"extra_disp=\000"
.LC301:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC302:
	.ascii	"extra_cmd=\000"
	.space	1
.LC303:
	.ascii	"VideoDec\000"
	.space	3
.LC304:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC305:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC306:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC307:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC308:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC309:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC310:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC311:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC312:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC313:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC314:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC315:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC316:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC317:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC318:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC319:
	.ascii	"print memory tracer...\012\000"
.LC320:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC321:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC322:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC323:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC324:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC325:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC326:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC327:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC328:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC329:
	.ascii	"OK create file '%s' for channel %d yuv save\012\000"
	.space	3
.LC330:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC331:
	.ascii	">>>> close yuv saving >>>>\012\000"
.LC332:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC333:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC334:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC335:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC336:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC337:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC338:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC339:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC340:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC341:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC342:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC343:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC344:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC345:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC346:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC347:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC348:
	.ascii	"MMZ: your parameter string is too long!\012\000"
	.space	3
.LC349:
	.ascii	"MMZ: copy_from_user failed!\012\000"
	.space	3
.LC350:
	.ascii	"error echo cmd '%s'!\012\000"
	.space	2
.LC351:
	.ascii	"******* vfmw save path: %s ********\012\000"
	.space	3
.LC352:
	.ascii	"\012vfmw debug: arg1=%#x, arg2=%#x\012\000"
	.space	3
.LC353:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC354:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC355:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC356:
	.ascii	"====== fatal error: can NOT re-map vir address for "
	.ascii	"channel %d ======\012\000"
	.space	2
.LC357:
	.ascii	"= previous standard: %d, new standard: %d\012\000"
	.space	1
.LC358:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC359:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC360:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC361:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC362:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC363:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC364:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC365:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC366:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	"\012\000"
	.space	3
.LC367:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC368:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC369:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC370:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC371:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC372:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC373:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC374:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC375:
	.ascii	"CreateChanWidthOption: arrange mem for btl failed\012"
	.ascii	"\000"
	.space	1
.LC376:
	.ascii	"can NOT init tree fs\012\000"
	.space	2
.LC377:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC378:
	.ascii	"can NOT enable BTL instance\012\000"
	.space	3
.LC379:
	.ascii	"can NOT start BTL instance\012\000"
.LC380:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC381:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC382:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC383:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC384:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC385:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC386:
	.ascii	"Thread running...\012\000"
	.space	1
.LC387:
	.ascii	"thread running...\012\000"
	.space	1
.LC388:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC389:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC390:
	.ascii	"Thread killed!\012\000"
.LC391:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.section	__param,"a",%progbits
	.align	2
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
	.size	s_pstVfmwChan, 8
s_pstVfmwChan:
	.space	8
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
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 600
g_VfmwChanStat:
	.space	600
	.type	g_TaskLock, %object
	.size	g_TaskLock, 48
g_TaskLock:
	.space	48
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 48
g_ActivateLock:
	.space	48
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	last_rec_pos_time.39440, %object
	.size	last_rec_pos_time.39440, 8
last_rec_pos_time.39440:
	.space	8
	.type	last_rec_pos_decparam_time.39441, %object
	.size	last_rec_pos_decparam_time.39441, 8
last_rec_pos_decparam_time.39441:
	.space	8
	.type	ChanPriTab.39329, %object
	.size	ChanPriTab.39329, 8
ChanPriTab.39329:
	.space	8
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 232
s_VfmwCTrl:
	.space	232
	.type	last_rec_pos_time.37984, %object
	.size	last_rec_pos_time.37984, 8
last_rec_pos_time.37984:
	.space	8
	.type	last_rec_pos_time.37934, %object
	.size	last_rec_pos_time.37934, 8
last_rec_pos_time.37934:
	.space	8
	.type	PrioArray.37305, %object
	.size	PrioArray.37305, 8
PrioArray.37305:
	.space	8
	.type	FspInstInfo.36775, %object
	.size	FspInstInfo.36775, 2572
FspInstInfo.36775:
	.space	2572
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.space	1
	.space	2
	.type	g_IntEvent, %object
	.size	g_IntEvent, 52
g_IntEvent:
	.space	52
	.type	LastEventTime.36500, %object
	.size	LastEventTime.36500, 4
LastEventTime.36500:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.39985, %object
	.size	save_file_cnt.39985, 4
save_file_cnt.39985:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.39988, %object
	.size	save_file_cnt.39988, 4
save_file_cnt.39988:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.39991, %object
	.size	save_file_cnt.39991, 4
save_file_cnt.39991:
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
	.type	buf.40978, %object
	.size	buf.40978, 256
buf.40978:
	.space	256
	.type	str.40979, %object
	.size	str.40979, 256
str.40979:
	.space	256
	.type	Capability.37538, %object
	.size	Capability.37538, 148
Capability.37538:
	.space	148
	.type	PrioArray.37537, %object
	.size	PrioArray.37537, 8
PrioArray.37537:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_TaskIrqLock, %object
	.size	g_TaskIrqLock, 48
g_TaskIrqLock:
	.space	48
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
