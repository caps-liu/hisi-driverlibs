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
	.file	"bitplane.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(bitplane)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.bitplane.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/bitplane.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/bitplane.o
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
	.global	BPD_Start
	.type	BPD_Start, %function
BPD_Start:
	.fnstart
.LFB1348:
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
	movw	ip, #:lower16:g_HwMem	@ tmp136,
	movt	ip, #:upper16:g_HwMem	@ tmp136,
	mov	r2, #0	@ tmp137,
	mov	r0, #1	@ tmp139,
	ldr	r3, [ip, #8]	@ D.31472, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* D.31472
	ldr	r1, [ip, #8]	@ temp.457, <variable>.pBpdRegVirAddr
	str	r0, [r1, #0]	@ tmp139,* temp.457
	ldr	r3, [ip, #8]	@ temp.459, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* temp.459
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BPD_Start, .-BPD_Start
	.align	2
	.global	IsBpd_Ready
	.type	IsBpd_Ready, %function
IsBpd_Ready:
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
	movw	r3, #:lower16:g_HwMem	@ tmp138,
	movt	r3, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r3, #8]	@ D.31477, <variable>.pBpdRegVirAddr
	cmp	r0, #0	@ D.31477,
	beq	.L8	@,
	ldr	r0, [r0, #64]	@ Data32.483,
	and	r0, r0, #1	@ Data32, Data32.483,
	ldmfd	sp, {fp, sp, pc}	@
.L8:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #227	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsBpd_Ready, .-IsBpd_Ready
	.align	2
	.global	BPD_GetParam
	.type	BPD_GetParam, %function
BPD_GetParam:
	.fnstart
.LFB1351:
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
	movw	r3, #:lower16:g_HwMem	@ tmp147,
	movt	r3, #:upper16:g_HwMem	@ tmp147,
	ldr	r4, [r2, #16]	@ D.31525, <variable>.BsLen
	ldr	lr, [r3, #8]	@ D.31515, <variable>.pBpdRegVirAddr
	ldr	r3, [r2, #24]	@ D.31527, <variable>.TotalPos
	ldr	ip, [lr, #80]	@ D.31518,
	rsb	r5, r3, r4, asl #3	@, tmp149, D.31527, D.31525,
	ldr	lr, [lr, #84]	@ D.31522,
	cmp	ip, r5	@ D.31518, tmp149
	bcs	.L15	@,
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L16	@,
	ubfx	r3, lr, #4, #4	@ tmp176, D.31522,,
	and	r0, lr, #15	@ tmp172, D.31522,
	str	r3, [r1, #336]	@ tmp176, <variable>.SMPPicSyntax.SKIPMBMode
	ubfx	lr, lr, #8, #4	@ tmp174, D.31522,,
	str	r0, [r1, #328]	@ tmp172, <variable>.SMPPicSyntax.MVTYPEMBMode
	mov	r0, r2	@, pBS
	str	lr, [r1, #332]	@ tmp174, <variable>.SMPPicSyntax.DIRECTMBMode
	mov	r1, ip	@, D.31518
	bl	BsLongSkip	@
	mov	r0, #0	@ D.31534,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L16:
	ubfx	r3, lr, #28, #2	@ tmp169, D.31522,,
	ubfx	r0, lr, #0, #4	@ tmp155, D.31522,,
	strb	r3, [r1, #378]	@ tmp169, <variable>.AdvPicSyntax.CONDOVER
	ubfx	r3, lr, #12, #4	@ tmp157, D.31522,,
	strb	r0, [r1, #382]	@ tmp155, <variable>.AdvPicSyntax.MVTYPEMBMode
	ubfx	r0, lr, #16, #4	@ tmp159, D.31522,,
	strb	r3, [r1, #385]	@ tmp157, <variable>.AdvPicSyntax.ACPREDMode
	ubfx	r3, lr, #20, #4	@ tmp161, D.31522,,
	strb	r0, [r1, #386]	@ tmp159, <variable>.AdvPicSyntax.OVERFLAGSMode
	ubfx	r0, lr, #8, #4	@ tmp163, D.31522,,
	strb	r3, [r1, #387]	@ tmp161, <variable>.AdvPicSyntax.FIELDTXMode
	ubfx	r3, lr, #24, #4	@ tmp165, D.31522,,
	strb	r0, [r1, #383]	@ tmp163, <variable>.AdvPicSyntax.DIRECTMBMode
	ubfx	r0, lr, #4, #4	@ tmp167, D.31522,,
	strb	r3, [r1, #388]	@ tmp165, <variable>.AdvPicSyntax.FORWARDMBMode
	strb	r0, [r1, #384]	@ tmp167, <variable>.AdvPicSyntax.SKIPMBMode
	mov	r0, r2	@, pBS
	mov	r1, ip	@, D.31518
	bl	BsLongSkip	@
	mov	r0, #0	@ D.31534,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L15:
	rsb	r3, r3, r4	@, D.31527, D.31525
	mov	r2, ip	@, D.31518
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.31534,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BPD_GetParam, .-BPD_GetParam
	.align	2
	.global	BPDDRV_WaitBpdReadyIfNoIsr
	.type	BPDDRV_WaitBpdReadyIfNoIsr, %function
BPDDRV_WaitBpdReadyIfNoIsr:
	.fnstart
.LFB1350:
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
	sub	r7, fp, #32	@ tmp145,,
	movw	r6, #3999	@ tmp146,
	mov	r0, r7	@, tmp145
	bl	OSAL_LockIRQ	@
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ StartTimeInMs,
.L20:
	bl	IsBpd_Ready	@
	subs	r5, r0, #0	@ D.31496,
	bne	.L18	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r0, r4	@ CurTimeInMs, StartTimeInMs
	movcc	r4, #0	@ StartTimeInMs,
	rsb	r0, r4, r0	@ tmp139, StartTimeInMs, CurTimeInMs
	cmp	r0, r6	@ tmp139, tmp146
	bls	.L20	@,
	mov	r0, r7	@, tmp145
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, D.31496
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.31503,
.L22:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L18:
	mov	r0, r7	@, tmp145
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.31503,
	b	.L22	@
	.fnend
	.size	BPDDRV_WaitBpdReadyIfNoIsr, .-BPDDRV_WaitBpdReadyIfNoIsr
	.align	2
	.global	BPD_Reset
	.type	BPD_Reset, %function
BPD_Reset:
	.fnstart
.LFB1347:
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
	movw	r0, #:lower16:-123592568	@,
	movt	r0, #:upper16:-123592568	@,
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ D.31444,
	movw	r0, #:lower16:-121241600	@,
	movt	r0, #:upper16:-121241600	@,
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ D.31444,
	cmpne	r0, #0	@, D.31445,
	movne	r7, #0	@, tmp155
	moveq	r7, #1	@, tmp155
	beq	.L37	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r5, #:lower16:g_HwMem	@ tmp165,
	bl	dprint_vfmw	@
	movt	r5, #:upper16:g_HwMem	@ tmp165,
	ldr	r6, [r4, #0]	@ reg,* D.31444
	movw	r1, #10000	@ tmp166,
	orr	r0, r6, #16	@ D.31454, reg,
	str	r0, [r4, #0]	@ D.31454,* D.31444
	ldr	r3, [r5, #8]	@ pretmp.568, <variable>.pBpdRegVirAddr
	add	r3, r3, #64	@ pretmp.549, pretmp.568,
	b	.L30	@
.L39:
	ldr	ip, [r3, #0]	@ dat,* pretmp.549
	tst	ip, #65536	@ dat,
	beq	.L29	@,
	cmp	r7, r1	@ i, tmp166
	beq	.L38	@,
.L30:
	ldr	r2, [r3, #0]	@ dat,* pretmp.549
	add	r7, r7, #1	@ tmp167, i,
	add	r7, r7, #1	@ i, tmp167,
	tst	r2, #65536	@ dat,
	bne	.L39	@,
.L29:
	bic	r6, r6, #16	@ D.31465, reg,
	str	r6, [r4, #0]	@ D.31465,* D.31444
	ldr	lr, [r5, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mvn	r1, #1	@ tmp163,
	str	r1, [lr, #52]	@ tmp163,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L37:
	mov	r2, r0	@, D.31445
	mov	r3, r4	@, D.31444
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L38:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	bic	r6, r6, #16	@ D.31465, reg,
	bl	dprint_vfmw	@
	str	r6, [r4, #0]	@ D.31465,* D.31444
	ldr	lr, [r5, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mvn	r1, #1	@ tmp163,
	str	r1, [lr, #52]	@ tmp163,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	BPD_Reset, .-BPD_Reset
	.align	2
	.global	BPD_CfgReg
	.type	BPD_CfgReg, %function
BPD_CfgReg:
	.fnstart
.LFB1346:
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
	ldr	ip, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mov	r4, r0	@ pCodecInfo, pCodecInfo
	mov	r0, #0	@ tmp179,
	cmp	ip, #0	@ <variable>.pBpdRegVirAddr,
	str	r0, [fp, #-48]	@ tmp179, D32
	beq	.L67	@,
.L41:
	movw	r3, #:lower16:g_HwMem	@ tmp414,
	movt	r3, #:upper16:g_HwMem	@ tmp414,
	mvn	sl, #0	@ tmp185,
	mvn	r8, #1	@ tmp188,
	ldr	r9, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mov	r6, #0	@ tmp189,
	str	sl, [r9, #68]	@ tmp185,
	ldr	r7, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r8, [r7, #68]	@ tmp188,
	ldrb	ip, [r4, #3096]	@ zero_extendqisi2	@ <variable>.PreParseInfo.IsAdvProfile, <variable>.PreParseInfo.IsAdvProfile
	str	r6, [fp, #-48]	@ tmp189, D32
	ldr	r5, [r1, #0]	@, <variable>.pHead
	cmp	ip, r6	@ <variable>.PreParseInfo.IsAdvProfile,
	ldr	r0, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	str	r5, [fp, #-56]	@, %sfp
	ldr	r5, [r1, #20]	@ D.31289, <variable>.BufPos
	beq	.L44	@,
	ldrb	r1, [r2, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L45	@,
	movw	r6, #362	@ tmp194,
	ldrh	r1, [r2, r6]	@ tmp195,
	cmp	r1, #4	@ tmp195,
	subne	r1, fp, #48	@ prephitmp.598,,
	beq	.L45	@,
	ldrb	r9, [r2, #197]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.OVERLAP, <variable>.AdvEntSyntax.OVERLAP
	cmp	r9, #1	@ <variable>.AdvEntSyntax.OVERLAP,
	beq	.L63	@,
.L65:
	ldr	r6, [r1, #0]	@ tmp412,* prephitmp.598
.L47:
	ldrb	r8, [r2, #349]	@ zero_extendqisi2	@ D.31319, <variable>.AdvPicSyntax.PTYPE
	ldr	r9, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r8, #4	@ D.31319,
	ldrb	r7, [r2, #16]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PROFILE, <variable>.AdvSeqSyntax.PROFILE
	andne	r8, r8, #3	@ iftmp.412, D.31319,
	moveq	r8, #3	@ iftmp.412,
	bfi	r6, r8, #14, #2	@ tmp204, iftmp.412,,
	mov	r8, r6	@ tmp206, tmp204
	bfi	r8, r9, #16, #2	@ tmp206, <variable>.AdvPicSyntax.FCM,,
	bfi	r8, r7, #18, #2	@ tmp207, <variable>.AdvSeqSyntax.PROFILE,,
	str	r8, [r1, #0]	@ tmp420,* prephitmp.598
.L50:
	cmp	ip, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L56	@,
	ldr	ip, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	ip, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L68	@,
.L56:
	movw	ip, #18148	@ tmp242,
	movw	r6, #:lower16:1431655766	@ tmp246,
	ldr	r9, [r4, ip]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	r6, #:upper16:1431655766	@ tmp246,
	smull	r7, sl, r6, r9	@, tmp245, tmp246, <variable>.MbHeight
	sub	r6, sl, r9, asr #31	@ tmp243, tmp245, <variable>.MbHeight,
	add	sl, r6, r6, asl #1	@, tmp250, tmp243, tmp243,
	rsb	r7, sl, r9	@ tmp251, tmp250, <variable>.MbHeight
	bfi	r8, r7, #10, #2	@ tmp252, tmp251,,
	str	r8, [r1, #0]	@ tmp423,* prephitmp.598
.L57:
	adds	r6, r0, #31	@ tmp265, <variable>.TotalPos,
	rsb	r7, r0, r5	@ tmp264, <variable>.TotalPos, D.31289
	addmi	r6, r0, #62	@, tmp267, <variable>.TotalPos,
	movw	ip, #18144	@ tmp253,
	bic	sl, r6, #31	@ tmp270, tmp267,
	ldr	ip, [r4, ip]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r5, r7, sl	@ tmp271, tmp264, tmp270
	movw	r9, #:lower16:1431655766	@ tmp257,
	movt	r9, #:upper16:1431655766	@ tmp257,
	cmp	r0, #0	@ <variable>.TotalPos,
	mov	r6, r5, asr #31	@ tmp273, tmp271,
	add	sl, r0, #7	@ tmp284, <variable>.TotalPos,
	smull	r7, r9, r9, ip	@, tmp256, tmp257, <variable>.MbWidth
	mov	r6, r6, lsr #27	@ tmp274, tmp273,
	add	r7, r5, r6	@ tmp275, tmp271, tmp274
	movge	sl, r0	@ D.31290, <variable>.TotalPos
	and	r5, r7, #31	@ tmp276, tmp275,
	mov	sl, sl, asr #3	@, D.31290,
	rsb	r5, r6, r5	@ tmp277, tmp274, tmp276
	str	sl, [fp, #-60]	@, %sfp
	cmp	r5, #0	@ tmp277,
	add	sl, r5, #7	@ tmp280, tmp277,
	sub	r9, r9, ip, asr #31	@ tmp254, tmp256, <variable>.MbWidth,
	movw	r7, #30524	@ tmp287,
	movlt	r5, sl	@ tmp279, tmp280
	ldr	sl, [fp, #-60]	@, %sfp
	and	r0, r0, #7	@, <variable>.TotalPos,
	str	r0, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	movw	r6, #30536	@ tmp290,
	add	r5, sl, r5, asr #3	@, tmp286,, tmp279,
	add	r9, r9, r9, asl #1	@, tmp261, tmp254, tmp254,
	ldr	sl, [r4, r7]	@, <variable>.stCurPacket.BsVirAddr
	add	r5, r0, r5	@ pCurStreamVirAddr.414,, tmp286
	rsb	r9, r9, ip	@ tmp262, tmp261, <variable>.MbWidth
	ldr	ip, [r4, r6]	@, <variable>.stCurPacket.BsPhyAddr
	rsb	r0, sl, r5	@ tmp288,, pCurStreamVirAddr.414
	bfi	r8, r9, #8, #2	@ tmp263, tmp262,,
	add	sl, r0, ip	@ tmp291, tmp288,
	str	r8, [r1, #0]	@ tmp263,* prephitmp.598
	ldr	r8, [fp, #-80]	@, %sfp
	and	r0, sl, #15	@ tmp294, tmp291,
	ldr	ip, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	add	sl, r8, r0, asl #3	@, tmp302,, tmp294,
	strb	sl, [r1, #0]	@ tmp302, <variable>.bit_offset
	ldr	r0, [fp, #-48]	@ D32.415, D32
	str	r0, [ip, #4]	@ D32.415,
	ldr	r7, [r4, r7]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	ldr	ip, [r4, r6]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	ldr	r6, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	rsb	r5, r7, r5	@ tmp309, <variable>.stCurPacket.BsVirAddr, pCurStreamVirAddr.414
	add	r0, r5, ip	@ tmp312, tmp309, <variable>.stCurPacket.BsPhyAddr
	mov	r5, #0	@ tmp306,
	bic	r7, r0, #15	@ tmp314, tmp312,
	str	r7, [r6, #8]	@ tmp314,
	ldrb	r0, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	str	r5, [fp, #-48]	@ tmp306, D32
	cmp	r0, r5	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L58	@,
	ldr	r2, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L69	@,
.L58:
	movw	r7, #18148	@ tmp331,
	ldr	r5, [r4, r7]	@ <variable>.MbHeight, <variable>.MbHeight
	sub	r0, r5, #1	@ tmp334, <variable>.MbHeight,
	strh	r0, [fp, #-46]	@ movhi	@ tmp334, <variable>.pic_mbheight_m1
.L59:
	movw	r7, #18144	@ tmp335,
	ldr	r5, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	ldr	r6, [r4, r7]	@ <variable>.MbWidth, <variable>.MbWidth
	mov	r0, #0	@ tmp341,
	mov	ip, r0	@ tmp358, tmp341
	sub	r2, r6, #1	@ tmp338, <variable>.MbWidth,
	strh	r2, [r1, #0]	@ movhi	@ tmp338, <variable>.pic_mbwidth_m1
	ldr	r6, [fp, #-48]	@ D32.639, D32
	str	r6, [r5, #12]	@ D32.639,
	mov	r5, #3	@ tmp406,
	ldr	r2, [r4, r7]	@ <variable>.MbWidth, <variable>.MbWidth
	mov	r1, r5, asl #4	@ tmp407, tmp406,
	ldr	r6, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	bfi	r1, r5, #8, #4	@ tmp407, tmp406,,
	adds	r7, r2, #127	@ tmp344, <variable>.MbWidth,
	addmi	r2, r2, #254	@, tmp347, <variable>.MbWidth,
	movpl	r2, r7	@, tmp347, tmp344
	mov	r2, r2, lsr r5	@ tmp357, tmp347,
	and	r2, r2, #4080	@ tmp356, tmp357,
	bfi	ip, r2, #0, #12	@ tmp358, tmp356,,
	movw	r2, #30608	@ tmp363,
	str	ip, [r6, #16]	@ tmp358,
	ldr	ip, [r4, r2]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #20]	@ <variable>.MVTYPEMB_ADDR,
	movw	r2, #30612	@ tmp369,
	ldr	ip, [r4, r2]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #24]	@ <variable>.SKIPMB_ADDR,
	movw	r2, #30616	@ tmp375,
	ldr	ip, [r4, r2]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #28]	@ <variable>.DIRECTMB_ADDR,
	movw	r2, #30620	@ tmp381,
	ldr	ip, [r4, r2]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #32]	@ <variable>.ACPRED_ADDR,
	movw	r2, #30624	@ tmp387,
	ldr	ip, [r4, r2]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #36]	@ <variable>.OVERFLAGS_ADDR,
	movw	r2, #30628	@ tmp393,
	ldr	ip, [r4, r2]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #40]	@ <variable>.FIELDTX_ADDR,
	movw	r2, #30632	@ tmp399,
	ldr	ip, [r4, r2]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #44]	@ <variable>.FORWARDMB_ADDR,
	ldr	r3, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r1, [r3, #48]	@ tmp407,
.L43:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L44:
	ldrb	r1, [r2, #259]	@ zero_extendqisi2	@ D.31332, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #0	@ D.31332,
	beq	.L51	@,
	cmp	r1, #4	@ D.31332,
	beq	.L52	@,
.L66:
	sub	r1, fp, #48	@ prephitmp.598,,
.L53:
	ldrb	r8, [r2, #251]	@ zero_extendqisi2	@ D.31337, <variable>.SMPPicSyntax.PTYPE
	ldr	r9, [r1, #0]	@ tmp216,* prephitmp.598
	cmp	r8, #4	@ D.31337,
	ldrb	r7, [r2, #0]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	andne	r8, r8, #3	@ iftmp.413, D.31337,
	moveq	r8, #3	@ iftmp.413,
	bfi	r9, r8, #14, #2	@ tmp216, iftmp.413,,
	bic	r8, r9, #196608	@ tmp218, tmp216,
	bfi	r8, r7, #18, #2	@ tmp218, <variable>.SMPSeqSyntax.PROFILE,,
	str	r8, [r1, #0]	@ tmp420,* prephitmp.598
	b	.L50	@
.L45:
	ldr	r8, [fp, #-48]	@ tmp196,
	sub	r1, fp, #48	@ prephitmp.598,,
	orr	r7, r8, #4096	@ tmp418, tmp196,
	str	r7, [fp, #-48]	@ tmp418,
	ldrb	r9, [r2, #197]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.OVERLAP, <variable>.AdvEntSyntax.OVERLAP
	cmp	r9, #1	@ <variable>.AdvEntSyntax.OVERLAP,
	bne	.L65	@,
	b	.L63	@
.L52:
	ldrb	r1, [r2, #260]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.MVMODE2, <variable>.SMPPicSyntax.MVMODE2
	cmp	r1, #0	@ <variable>.SMPPicSyntax.MVMODE2,
	bne	.L66	@,
.L51:
	ldr	r6, [fp, #-48]	@ tmp212,
	sub	r1, fp, #48	@ prephitmp.598,,
	orr	sl, r6, #4096	@ tmp421, tmp212,
	str	sl, [fp, #-48]	@ tmp421,
	b	.L53	@
.L63:
	ldr	sl, [r2, #464]	@ <variable>.AdvPicSyntax.PQUANT, <variable>.AdvPicSyntax.PQUANT
	cmp	sl, #8	@ <variable>.AdvPicSyntax.PQUANT,
	bgt	.L65	@,
	ldr	r6, [r1, #0]	@ tmp419,* prephitmp.598
	orr	r6, r6, #8192	@ tmp412, tmp419,
	str	r6, [r1, #0]	@ tmp412,* prephitmp.598
	b	.L47	@
.L69:
	movw	r2, #18148	@ tmp322,
	ldr	r6, [r4, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	add	ip, r6, #1	@ tmp323, <variable>.MbHeight,
	add	r7, ip, ip, lsr #31	@, tmp327, tmp323, tmp323,
	mov	r5, r7, asr #1	@ tmp328, tmp327,
	sub	r0, r5, #1	@ tmp330, tmp328,
	strh	r0, [r1, #2]	@ movhi	@ tmp330, <variable>.pic_mbheight_m1
	b	.L59	@
.L68:
	movw	r6, #18148	@ tmp226,
	movw	r9, #:lower16:1431655766	@ tmp235,
	ldr	ip, [r4, r6]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	r9, #:upper16:1431655766	@ tmp235,
	add	sl, ip, #1	@ tmp227, <variable>.MbHeight,
	add	r7, sl, sl, lsr #31	@, tmp231, tmp227, tmp227,
	mov	r6, r7, asr #1	@ tmp232, tmp231,
	smull	sl, ip, r9, r6	@, tmp234, tmp235, tmp232
	sub	r9, ip, r7, asr #31	@ tmp233, tmp234, tmp231,
	add	r7, r9, r9, asl #1	@, tmp239, tmp233, tmp233,
	rsb	sl, r7, r6	@ tmp240, tmp239, tmp232
	bfi	r8, sl, #10, #2	@ tmp241, tmp240,,
	str	r8, [r1, #0]	@ tmp423,* prephitmp.598
	b	.L57	@
.L67:
	movw	r0, #:lower16:-121241600	@,
	movt	r0, #:upper16:-121241600	@,
	str	r1, [fp, #-64]	@,
	str	r2, [fp, #-68]	@,
	str	r3, [fp, #-72]	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [fp, #-72]	@,
	ldr	r1, [fp, #-64]	@,
	ldr	r2, [fp, #-68]	@,
	subs	ip, r0, #0	@ D.31278,
	strne	ip, [r3, #8]	@ D.31278, <variable>.pBpdRegVirAddr
	bne	.L41	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31283,
	b	.L43	@
	.fnend
	.size	BPD_CfgReg, .-BPD_CfgReg
	.align	2
	.global	BPD_Drv
	.type	BPD_Drv, %function
BPD_Drv:
	.fnstart
.LFB1352:
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
	movw	r3, #18148	@ tmp146,
	ldr	r3, [r1, r3]	@ D.31568, <variable>.MbHeight
	mov	r4, r1	@ pCodecInfo, pCodecInfo
	mov	r5, r0	@ pBs, pBs
	mov	r6, r2	@ pSyntax, pSyntax
	cmp	r3, #2	@ D.31568,
	ble	.L78	@,
	movw	r0, #18144	@ tmp148,
	ldr	r2, [r1, r0]	@ prephitmp.682, <variable>.MbWidth
	cmp	r2, #2	@ prephitmp.682,
	ble	.L72	@,
	cmp	r2, #128	@ prephitmp.682,
	bgt	.L72	@,
	cmp	r3, #128	@ D.31568,
	ble	.L73	@,
.L72:
	mov	r2, r2, asl #4	@, prephitmp.682,
	mov	r3, r3, asl #4	@, D.31568,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L78:
	movw	r2, #18144	@ tmp147,
	ldr	r2, [r1, r2]	@ prephitmp.682, <variable>.MbWidth
	b	.L72	@
.L73:
	movw	r7, #:lower16:g_HwMem	@ tmp153,
	movt	r7, #:upper16:g_HwMem	@ tmp153,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	bl	BPD_Reset	@
	mov	r0, r4	@, pCodecInfo
	mov	r1, r5	@, pBs
	mov	r2, r6	@, pSyntax
	mov	r3, r7	@, tmp153
	bl	BPD_CfgReg	@
	cmn	r0, #1	@,
	beq	.L79	@,
	ldr	r3, [r7, #8]	@ D.31594, <variable>.pBpdRegVirAddr
	mov	ip, #0	@ tmp156,
	mov	r8, #1	@ tmp158,
	str	ip, [r3, #0]	@ tmp156,* D.31594
	ldr	lr, [r7, #8]	@ temp.694, <variable>.pBpdRegVirAddr
	str	r8, [lr, #0]	@ tmp158,* temp.694
	ldr	r1, [r7, #8]	@ temp.696, <variable>.pBpdRegVirAddr
	str	ip, [r1, #0]	@ tmp156,* temp.696
	bl	BPDDRV_WaitBpdReadyIfNoIsr	@
	cmp	r0, #0	@,
	movne	r0, r8	@ ret, tmp158
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r4	@, pCodecInfo
	mov	r1, r6	@, pSyntax
	mov	r2, r5	@, pBs
	bl	BPD_GetParam	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L79:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	BPD_Drv, .-BPD_Drv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"BPD register not mapped yet!\000"
	.space	3
.LC2:
	.ascii	" BPD ERROR: EAT TOO MUCH BS %#x, but available bs n"
	.ascii	"um %#x!!!\012\000"
	.space	2
.LC3:
	.ascii	"======>>>>> BPD TimeOut!!!\012\000"
.LC4:
	.ascii	"VDMHAL_ResetBPD: map BPD register fail, vir(reg,res"
	.ascii	"et_reg) = (%p,%p)\012\000"
	.space	2
.LC5:
	.ascii	"*****************reset BPD!!!!******************\012"
	.ascii	"\000"
	.space	2
.LC6:
	.ascii	"Reset BPD Err______________________________________"
	.ascii	"_-\012\000"
	.space	1
.LC7:
	.ascii	"BPD register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC8:
	.ascii	"NOT SUPPORT SIZE %d*%d\012\000"
.LC9:
	.ascii	"----------------BPD_V200_DRV\012\000"
	.space	2
.LC10:
	.ascii	"BPD error: no map reg!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
