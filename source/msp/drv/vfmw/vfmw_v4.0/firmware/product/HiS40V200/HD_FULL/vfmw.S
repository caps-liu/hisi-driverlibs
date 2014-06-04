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
	.file	"vfmw.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vfmw) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/.vfmw.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/vfmw.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/vfmw.o -O2 -Wall
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
	.global	VFMW_set_dbgopt
	.type	VFMW_set_dbgopt, %function
VFMW_set_dbgopt:
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
	bl	VCTRL_SetDbgOption	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VFMW_set_dbgopt, .-VFMW_set_dbgopt
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
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
	bl	VCTRL_Resume	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
	.align	2
	.global	VDEC_Suspend
	.type	VDEC_Suspend, %function
VDEC_Suspend:
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
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_Suspend, .-VDEC_Suspend
	.align	2
	.global	GetVdecCapability
	.type	GetVdecCapability, %function
GetVdecCapability:
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
	mov	r1, #148	@,
	mov	r4, r0	@ pCap, pCap
	bl	__memzero	@
	mov	r2, #2	@ tmp134,
	mov	r0, #50	@ tmp135,
	mov	r3, #1920	@ tmp136,
	mov	ip, #1088	@ tmp137,
	str	r2, [r4, #28]	@ tmp134, <variable>.SupportedStd
	movw	r1, #:lower16:94003200	@ tmp157,
	str	r0, [r4, #4]	@ tmp135, <variable>.s32MaxBitRate
	movt	r1, #:upper16:94003200	@ tmp157,
	mov	r0, #0	@ tmp139,
	str	r3, [r4, #8]	@ tmp136, <variable>.s32MaxFrameWidth
	str	ip, [r4, #12]	@ tmp137, <variable>.s32MaxFrameHeight
	mov	r3, #3	@ tmp140,
	mov	ip, #6	@ tmp142,
	str	r2, [r4, #0]	@ tmp134, <variable>.s32MaxChanNum
	str	r1, [r4, #16]	@ tmp157, <variable>.s32MaxPixelPerSec
	mov	r2, #8	@ tmp143,
	mov	r1, #9	@ tmp144,
	str	r0, [r4, #20]	@ tmp139, <variable>.SupportedStd
	str	r3, [r4, #24]	@ tmp140, <variable>.SupportedStd
	mov	r0, #1	@ tmp145,
	mov	r3, #5	@ tmp146,
	str	ip, [r4, #32]	@ tmp142, <variable>.SupportedStd
	str	r2, [r4, #36]	@ tmp143, <variable>.SupportedStd
	mov	ip, #4	@ tmp147,
	mov	r2, #10	@ tmp148,
	str	r1, [r4, #40]	@ tmp144, <variable>.SupportedStd
	str	r0, [r4, #44]	@ tmp145, <variable>.SupportedStd
	mov	r1, #14	@ tmp149,
	mov	r0, #11	@ tmp150,
	str	r3, [r4, #48]	@ tmp146, <variable>.SupportedStd
	str	ip, [r4, #52]	@ tmp147, <variable>.SupportedStd
	mov	r3, #12	@ tmp151,
	str	r2, [r4, #56]	@ tmp148, <variable>.SupportedStd
	mov	ip, #13	@ tmp152,
	str	r1, [r4, #60]	@ tmp149, <variable>.SupportedStd
	mov	r2, #15	@ tmp153,
	str	r0, [r4, #64]	@ tmp150, <variable>.SupportedStd
	mov	r1, #17	@ tmp154,
	str	r3, [r4, #68]	@ tmp151, <variable>.SupportedStd
	mov	r0, #18	@ tmp155,
	mov	r3, #19	@ tmp156,
	str	ip, [r4, #72]	@ tmp152, <variable>.SupportedStd
	str	r2, [r4, #76]	@ tmp153, <variable>.SupportedStd
	str	r1, [r4, #80]	@ tmp154, <variable>.SupportedStd
	str	r0, [r4, #84]	@ tmp155, <variable>.SupportedStd
	str	r3, [r4, #88]	@ tmp156, <variable>.SupportedStd
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVdecCapability, .-GetVdecCapability
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 56
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	mov	r4, r2	@ pArgs, pArgs
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L10	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC2	@,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
.L11:
	mov	r0, r6	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L10:
	cmp	r1, #54	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L57	@
.L34:
	.word	.L13
	.word	.L14
	.word	.L13
	.word	.L13
	.word	.L15
	.word	.L16
	.word	.L13
	.word	.L13
	.word	.L17
	.word	.L18
	.word	.L13
	.word	.L13
	.word	.L13
	.word	.L13
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L57
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L13
	.word	.L13
	.word	.L26
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L27
	.word	.L28
	.word	.L57
	.word	.L29
	.word	.L30
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L13
	.word	.L13
	.word	.L31
	.word	.L32
	.word	.L33
.L61:
	bl	VCTRL_DestroyChan	@
	subs	r6, r0, #0	@ ret,
	beq	.L11	@,
.L57:
	mvn	r6, #0	@ ret,
	b	.L11	@
.L14:
	cmp	r2, #0	@ pArgs,
	beq	.L111	@,
.L35:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r6, #0	@ ret,
	bl	VCTRL_MaskAllInt	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L33:
	cmp	r2, #0	@ pArgs,
	beq	.L112	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigPVRInfo	@
.L106:
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
.L107:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L32:
	cmp	r2, #0	@ pArgs,
	beq	.L113	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	BTL_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	bne	.L90	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigFFFBSpeed	@
	subs	r6, r0, #0	@ ret,
	beq	.L107	@,
.L90:
	mvn	r6, #0	@ ret,
	b	.L107	@
.L15:
	cmp	r2, #0	@ pArgs,
	beq	.L114	@,
	ldr	r0, [r2, #0]	@ prephitmp.596,* pArgs
	cmp	r0, #27	@ prephitmp.596,
	bgt	.L115	@,
.L38:
	add	r1, r4, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	mov	r5, r0	@ ret.629,
	mov	r0, #2	@,
	mov	r2, r5	@, ret.629
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ret.629,
	str	r5, [r4, #0]	@ ret.629,* pArgs
	blt	.L57	@,
.L58:
	mov	r6, #0	@ ret,
	b	.L11	@
.L16:
	cmp	r2, #0	@ pArgs,
	beq	.L116	@,
	ldr	r0, [r2, #0]	@ prephitmp.592,* pArgs
	cmp	r0, #27	@ prephitmp.592,
	bgt	.L117	@,
.L40:
	ldr	r1, [r4, #4]	@,
	mov	r2, #2	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.633,
	str	r0, [r4, #0]	@ ret.633,* pArgs
	blt	.L57	@,
	mov	r6, #0	@ ret,
	b	.L11	@
.L27:
	cmp	r2, #0	@ pArgs,
	beq	.L118	@,
.L51:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r6, [fp, #-72]	@ stMem.Length, stMem.Length
	ldr	r2, [fp, #-80]	@ stMem.PhyAddr, stMem.PhyAddr
	stmia	r4, {r2, r6}	@ phole stm
	b	.L106	@
.L17:
	cmp	r2, #0	@ pArgs,
	beq	.L119	@,
.L41:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L28:
	cmp	r2, #0	@ pArgs,
	beq	.L120	@,
.L52:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_PutUsrdecFrame	@
	b	.L106	@
.L18:
	cmp	r2, #0	@ pArgs,
	beq	.L121	@,
.L42:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigChan	@
	b	.L106	@
.L22:
	cmp	r2, #0	@ pArgs,
	beq	.L122	@,
.L46:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r0, [r4, #0]	@,* pArgs
	sub	r1, fp, #40	@,,
	sub	r2, fp, #52	@,,
	bl	VCTRL_GetChanMemSize	@
	subs	r6, r0, #0	@ D.36579,
	bne	.L90	@,
	ldr	r2, [fp, #-40]	@ VdmMem, VdmMem
	ldr	lr, [fp, #-52]	@ ScdMem, ScdMem
	ldr	r1, [fp, #-44]	@ ScdMem, ScdMem
	ldr	r3, [fp, #-36]	@ VdmMem, VdmMem
	add	r0, lr, r2	@ tmp222, ScdMem, VdmMem
	ldr	ip, [fp, #-48]	@ ScdMem, ScdMem
	ldr	r2, [fp, #-32]	@ VdmMem, VdmMem
	add	lr, ip, r3	@ tmp225, ScdMem, VdmMem
	str	r0, [r4, #0]	@ tmp222, <variable>.MinMemSize
	add	r2, r1, r2	@ tmp228, ScdMem, VdmMem
	str	lr, [r4, #4]	@ tmp225, <variable>.NormalMemSize
	str	r2, [r4, #8]	@ tmp228, <variable>.FluentMemSize
	b	.L107	@
.L31:
	cmp	r2, #0	@ pArgs,
	beq	.L123	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	mov	ip, #1	@ tmp256,
	mov	r3, #0	@ tmp257,
	str	ip, [fp, #-80]	@ tmp256, option.s32KeepBS
	str	r3, [fp, #-76]	@ tmp257, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	bne	.L90	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r6, r0, #0	@ ret,
	mvnne	r6, #0	@ ret,
	b	.L107	@
.L20:
	cmp	r2, #0	@ pArgs,
	beq	.L124	@,
.L44:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r6, #0	@ ret,
	bl	VCTRL_MaskAllInt	@
	str	r5, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	movw	r1, #:lower16:BTL_ReceiveImage	@ tmp211,
	movw	r0, #:lower16:BTL_ReleaseImage	@ tmp212,
	movt	r1, #:upper16:BTL_ReceiveImage	@ tmp211,
	movt	r0, #:upper16:BTL_ReleaseImage	@ tmp212,
	str	r1, [r4, #4]	@ tmp211, <variable>.read_image
	str	r0, [r4, #8]	@ tmp212, <variable>.release_image
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L30:
	cmp	r2, #0	@ pArgs,
	beq	.L125	@,
.L56:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r2, r4	@, pArgs
	mov	r1, #1	@,
	bl	BTL_SetDataSource	@
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
	b	.L107	@
.L24:
	cmp	r2, #0	@ pArgs,
	beq	.L126	@,
.L48:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetChanMemInfo	@
	subs	r6, r0, #0	@ ret,
	bne	.L127	@,
	ldr	lr, [fp, #-76]	@ D.36604, MemRec.VirAddr
	ldr	r2, [fp, #-80]	@ D.36603, MemRec.PhyAddr
	ldr	ip, [fp, #-72]	@ MemRec.Length, MemRec.Length
	cmp	lr, #0	@ D.36604,
	stmia	r4, {r2, lr}	@ phole stm
	str	ip, [r4, #8]	@ MemRec.Length, <variable>.Length
	beq	.L90	@,
	cmp	r2, #0	@ D.36603,
	mvneq	r6, #0	@ ret,
	b	.L107	@
.L26:
	cmp	r2, #0	@ pArgs,
	beq	.L128	@,
.L36:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r6, #0	@ ret,
	bl	VCTRL_MaskAllInt	@
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L19:
	cmp	r2, #0	@ pArgs,
	beq	.L129	@,
.L43:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetStreamInterface	@
	b	.L106	@
.L29:
	cmp	r2, #0	@ pArgs,
	beq	.L130	@,
.L50:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetDiscardPicParam	@
	mov	r6, r0	@ ret,
	b	.L107	@
.L23:
	cmp	r2, #0	@ pArgs,
	beq	.L131	@,
.L47:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldmia	r4, {r0, r1}	@ phole ldm
	sub	r2, fp, #64	@,,
	mov	r3, #1	@,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.36592,
	bne	.L90	@,
	ldr	r3, [fp, #-60]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	r0, [fp, #-56]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r1, [fp, #-64]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	str	r3, [r4, #4]	@ DetailMemSize.ScdDetailMem,
	str	r0, [r4, #8]	@ DetailMemSize.ChanCtxDetailMem,
	str	r1, [r4, #0]	@ DetailMemSize.VdhDetailMem,* pArgs
	b	.L107	@
.L21:
	cmp	r2, #0	@ pArgs,
	beq	.L132	@,
.L45:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r6, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L25:
	cmp	r2, #0	@ pArgs,
	beq	.L133	@,
.L49:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.36612,
	str	r0, [r4, #0]	@ D.36612,* pArgs
	moveq	r6, r0	@, ret, D.36612
	movne	r6, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L13:
	cmp	r1, #51	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L57	@
.L69:
	.word	.L58
	.word	.L35
	.word	.L58
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L41
	.word	.L42
	.word	.L63
	.word	.L64
	.word	.L65
	.word	.L66
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L57
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L49
	.word	.L67
	.word	.L68
	.word	.L36
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L51
	.word	.L52
	.word	.L57
	.word	.L50
	.word	.L56
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L58
	.word	.L58
.L68:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ResetChanWithOption	@
	b	.L106	@
.L67:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ReleaseStream	@
	b	.L106	@
.L66:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	b	.L106	@
.L65:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	b	.L106	@
.L64:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L106	@
.L63:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r6, #0	@ ret,
	bl	VCTRL_MaskAllInt	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L62:
	bl	VCTRL_DestroyChanWithOption	@
	subs	r6, r0, #0	@ ret,
	beq	.L11	@,
	b	.L57	@
.L115:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #479	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L117:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #495	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L127:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mvn	r6, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L11	@
.L112:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #674	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L118:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #645	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L120:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #653	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L122:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #589	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L111:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #448	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L133:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #621	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L116:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #487	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L126:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #613	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L124:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #574	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L129:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #566	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L113:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #667	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L114:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #471	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L119:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #532	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L128:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #462	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L123:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #660	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L131:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #596	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L121:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #540	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L130:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #630	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L125:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #683	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L132:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #581	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L11	@
.L60:
	ldr	r0, [r2, #0]	@ prephitmp.592,* pArgs
	b	.L40	@
.L59:
	ldr	r0, [r2, #0]	@ prephitmp.596,* pArgs
	b	.L38	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.421, g_VfmwInitCount,
	str	r3, [r4, #4]	@ g_VfmwInitCount.421, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.421,
	ble	.L138	@,
.L135:
	mov	r0, #0	@ D.36359,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L138:
	bl	VCTRL_CloseVfmw	@
	mov	r5, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	cmp	r5, #0	@ ret,
	mov	r1, #0	@ tmp141,
	str	r1, [r4, #0]	@ tmp141, g_VfmwEnableFlag
	mvnne	r0, #0	@ D.36359,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	b	.L135	@
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
.LFB1356:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	mov	r5, r0	@ pArgs, pArgs
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L146	@,
	cmp	r0, #0	@ pArgs,
	beq	.L147	@,
	mov	r1, #48	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mov	r6, #0	@ tmp156,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLockIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLockIsr_DnrImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_DnrImage	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	__memzero	@
	mov	r1, #48	@,
	movw	r0, #:lower16:g_SpinLockIsr_BtlIsr	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlIsr	@,
	bl	__memzero	@
	movw	r2, #:lower16:AcceleratorCharacter	@ tmp155,
	movw	r1, #:lower16:.LANCHOR1	@ tmp157,
	movt	r2, #:upper16:AcceleratorCharacter	@ tmp155,
	movt	r1, #:upper16:.LANCHOR1	@ tmp157,
	mov	r3, #8	@ tmp158,
	str	r6, [r2, #0]	@ tmp156, AcceleratorCharacter
	movw	ip, #:lower16:BTL_OpenHardware	@ tmp160,
	str	r3, [r1, #0]	@ tmp158, g_chipID
	movt	ip, #:upper16:BTL_OpenHardware	@ tmp160,
	movw	r0, #:lower16:BTLHAL_V100_Start	@ tmp162,
	str	ip, [r4, #8]	@ tmp160, g_btl_hal_fun_ptr.pfun_BTLDRV_OpenHardware
	movt	r0, #:upper16:BTLHAL_V100_Start	@ tmp162,
	movw	r2, #:lower16:BTLHAL_V100_GetInfo	@ tmp164,
	str	r0, [r4, #28]	@ tmp162, g_btl_hal_fun_ptr.pfun_BTLHAL_Start
	movt	r2, #:upper16:BTLHAL_V100_GetInfo	@ tmp164,
	movw	r1, #:lower16:BTLHAL_V100_GetInfo_Capture	@ tmp166,
	str	r2, [r4, #12]	@ tmp164, g_btl_hal_fun_ptr.pfun_BTLHAL_GetInfo
	movt	r1, #:upper16:BTLHAL_V100_GetInfo_Capture	@ tmp166,
	movw	r3, #:lower16:BTLHAL_V100_Reset	@ tmp168,
	str	r1, [r4, #16]	@ tmp166, g_btl_hal_fun_ptr.pfun_BTLHAL_GetInfo_Capture
	movt	r3, #:upper16:BTLHAL_V100_Reset	@ tmp168,
	movw	ip, #:lower16:BTLHAL_V100_ClearIntState	@ tmp170,
	str	r3, [r4, #24]	@ tmp168, g_btl_hal_fun_ptr.pfun_BTLHAL_Reset
	movt	ip, #:upper16:BTLHAL_V100_ClearIntState	@ tmp170,
	movw	r0, #:lower16:BTLHAL_V100_MaskInt	@ tmp172,
	str	ip, [r4, #32]	@ tmp170, g_btl_hal_fun_ptr.pfun_BTLHAL_ClearIntState
	movt	r0, #:upper16:BTLHAL_V100_MaskInt	@ tmp172,
	movw	r2, #:lower16:BTLHAL_V100_EnableInt	@ tmp174,
	str	r0, [r4, #36]	@ tmp172, g_btl_hal_fun_ptr.pfun_BTLHAL_MaskInt
	movt	r2, #:upper16:BTLHAL_V100_EnableInt	@ tmp174,
	movw	r1, #:lower16:BTLHAL_V100_CfgReg	@ tmp176,
	str	r2, [r4, #40]	@ tmp174, g_btl_hal_fun_ptr.pfun_BTLHAL_EnableInt
	movt	r1, #:upper16:BTLHAL_V100_CfgReg	@ tmp176,
	movw	r3, #:lower16:VDM_OpenHardware	@ tmp178,
	str	r1, [r4, #20]	@ tmp176, g_btl_hal_fun_ptr.pfun_BTLHAL_CfgReg
	movt	r3, #:upper16:VDM_OpenHardware	@ tmp178,
	movw	ip, #:lower16:SCD_OpenHardware	@ tmp180,
	str	r3, [r4, #44]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	movt	ip, #:upper16:SCD_OpenHardware	@ tmp180,
	movw	r0, #:lower16:BPD_OpenHardware	@ tmp182,
	str	ip, [r4, #48]	@ tmp180, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movt	r0, #:upper16:BPD_OpenHardware	@ tmp182,
	movw	r2, #:lower16:VDMHAL_V200R003MPW_GetHalMemSize	@ tmp184,
	str	r0, [r4, #52]	@ tmp182, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	movt	r2, #:upper16:VDMHAL_V200R003MPW_GetHalMemSize	@ tmp184,
	movw	r1, #:lower16:VDMHAL_V200R003MPW_OpenHAL	@ tmp186,
	str	r2, [r4, #60]	@ tmp184, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movt	r1, #:upper16:VDMHAL_V200R003MPW_OpenHAL	@ tmp186,
	movw	r3, #:lower16:VDMHAL_V200R003MPW_CloseHAL	@ tmp188,
	str	r1, [r4, #64]	@ tmp186, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	movt	r3, #:upper16:VDMHAL_V200R003MPW_CloseHAL	@ tmp188,
	movw	ip, #:lower16:VDMHAL_V200R003MPW_ArrangeMem	@ tmp190,
	str	r3, [r4, #68]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movt	ip, #:upper16:VDMHAL_V200R003MPW_ArrangeMem	@ tmp190,
	movw	r0, #:lower16:VDMHAL_V200R003MPW_ArrangeMem_BTL	@ tmp192,
	str	ip, [r4, #72]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r0, #:upper16:VDMHAL_V200R003MPW_ArrangeMem_BTL	@ tmp192,
	movw	r2, #:lower16:VDMHAL_V200R003MPW_ResetVdm	@ tmp194,
	str	r0, [r4, #76]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	movt	r2, #:upper16:VDMHAL_V200R003MPW_ResetVdm	@ tmp194,
	movw	r1, #:lower16:VDMHAL_V200R003MPW_ClearIntState	@ tmp196,
	str	r2, [r4, #80]	@ tmp194, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	movt	r1, #:upper16:VDMHAL_V200R003MPW_ClearIntState	@ tmp196,
	movw	r3, #:lower16:VDMHAL_V200R003MPW_MaskInt	@ tmp198,
	str	r1, [r4, #88]	@ tmp196, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	movt	r3, #:upper16:VDMHAL_V200R003MPW_MaskInt	@ tmp198,
	movw	ip, #:lower16:VDMHAL_V200R003MPW_EnableInt	@ tmp200,
	str	r3, [r4, #92]	@ tmp198, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movt	ip, #:upper16:VDMHAL_V200R003MPW_EnableInt	@ tmp200,
	movw	r0, #:lower16:VDMHAL_V200R003MPW_CheckInt	@ tmp202,
	str	ip, [r4, #96]	@ tmp200, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	movt	r0, #:upper16:VDMHAL_V200R003MPW_CheckInt	@ tmp202,
	movw	r2, #:lower16:VDMHAL_V200R003MPW_StartHwRepair	@ tmp204,
	str	r0, [r4, #100]	@ tmp202, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckInt
	movt	r2, #:upper16:VDMHAL_V200R003MPW_StartHwRepair	@ tmp204,
	movw	r1, #:lower16:VDMHAL_V200R003MPW_StartHwDecode	@ tmp206,
	str	r2, [r4, #104]	@ tmp204, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	movt	r1, #:upper16:VDMHAL_V200R003MPW_StartHwDecode	@ tmp206,
	movw	r3, #:lower16:VDMHAL_V200R003MPW_PrepareDec	@ tmp208,
	str	r1, [r4, #108]	@ tmp206, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movt	r3, #:upper16:VDMHAL_V200R003MPW_PrepareDec	@ tmp208,
	movw	ip, #:lower16:VDMHAL_V200R003MPW_IsVdmReady	@ tmp210,
	str	r3, [r4, #112]	@ tmp208, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	movt	ip, #:upper16:VDMHAL_V200R003MPW_IsVdmReady	@ tmp210,
	movw	r0, #:lower16:VDMHAL_V200R003MPW_IsVdmRun	@ tmp212,
	str	ip, [r4, #116]	@ tmp210, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movt	r0, #:upper16:VDMHAL_V200R003MPW_IsVdmRun	@ tmp212,
	movw	r2, #:lower16:VDMHAL_V200R003MPW_PrepareRepair	@ tmp214,
	str	r0, [r4, #120]	@ tmp212, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	movt	r2, #:upper16:VDMHAL_V200R003MPW_PrepareRepair	@ tmp214,
	movw	r1, #:lower16:VDMHAL_V200R003MPW_MakeDecReport	@ tmp216,
	str	r2, [r4, #124]	@ tmp214, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r1, #:upper16:VDMHAL_V200R003MPW_MakeDecReport	@ tmp216,
	movw	r3, #:lower16:VDMHAL_V200R003MPW_BackupInfo	@ tmp218,
	str	r1, [r4, #128]	@ tmp216, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	movt	r3, #:upper16:VDMHAL_V200R003MPW_BackupInfo	@ tmp218,
	movw	ip, #:lower16:VDMHAL_V200R003MPW_GetCharacter	@ tmp220,
	str	r3, [r4, #132]	@ tmp218, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movt	ip, #:upper16:VDMHAL_V200R003MPW_GetCharacter	@ tmp220,
	movw	r0, #:lower16:VDMHAL_V200R003MPW_WriteBigTitle1DYuv	@ tmp222,
	str	ip, [r4, #56]	@ tmp220, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	movt	r0, #:upper16:VDMHAL_V200R003MPW_WriteBigTitle1DYuv	@ tmp222,
	str	r0, [r4, #136]	@ tmp222, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	bl	VDMHAL_V200R003MPW_GetCharacter	@
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	ldr	r0, [r5, #0]	@, <variable>.VdecCallback
	bl	VCTRL_OpenVfmw	@
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r5, r0	@ ret,
	mov	r0, #2	@,
	mov	r2, r5	@, ret
	bl	dprint_vfmw	@
	cmp	r5, r6	@ ret,
	strne	r6, [r4, #4]	@ tmp156, g_VfmwInitCount
	moveq	r3, #1	@ tmp226,
	moveq	r0, r5	@ D.36276, ret
	mvnne	r0, #0	@ D.36276,
	strne	r6, [r4, #0]	@ tmp156, g_VfmwEnableFlag
	streq	r3, [r4, #4]	@ tmp226, g_VfmwInitCount
	streq	r3, [r4, #0]	@ tmp226, g_VfmwEnableFlag
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L146:
	ldr	r2, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	mov	r0, #0	@ D.36276,
	add	r1, r2, #1	@ tmp142, g_VfmwInitCount,
	str	r1, [r4, #4]	@ tmp142, g_VfmwInitCount
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L147:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36276,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
.LFB1355:
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
	sub	r4, fp, #32	@ tmp137,,
	mov	r5, r0	@ VdecCallback, VdecCallback
	mov	r1, #12	@,
	mov	r0, r4	@, tmp137
	bl	__memzero	@
	mov	r0, r4	@, tmp137
	mov	r3, #0	@ tmp138,
	str	r5, [fp, #-32]	@ VdecCallback, Args.VdecCallback
	str	r3, [fp, #-24]	@ tmp138, Args.mem_free
	str	r3, [fp, #-28]	@ tmp138, Args.mem_malloc
	bl	VDEC_InitWithOperation	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	VDEC_Init, .-VDEC_Init
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
	.fnstart
.LFB1354:
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
	movw	r0, #:lower16:-123592568	@,
	movt	r0, #:upper16:-123592568	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36198
	beq	.L153	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp137,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp137,
	ldr	r3, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #2	@ g_VdmCharacter,
	ldrne	r3, [r0, #0]	@ tmp141,* D.36198
	orrne	r3, r3, #1	@ tmp140, tmp141,
	bicne	r3, r3, #16	@ tmp142, tmp140,
	strne	r3, [r0, #0]	@ tmp142,* D.36198
.L153:
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	BTL_OpenHardware
	.type	BTL_OpenHardware, %function
BTL_OpenHardware:
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
	movw	r0, #:lower16:-123592336	@,
	movt	r0, #:upper16:-123592336	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36188
	ldrne	r3, [r0, #0]	@ tmp137,* D.36188
	orrne	r3, r3, #1	@ tmp136, tmp137,
	bicne	r3, r3, #16	@ tmp138, tmp136,
	strne	r3, [r0, #0]	@ tmp138,* D.36188
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_OpenHardware, .-BTL_OpenHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
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
	movw	r0, #:lower16:-123592468	@,
	movt	r0, #:upper16:-123592468	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36178
	ldrne	r3, [r0, #0]	@ tmp137,* D.36178
	orrne	r3, r3, #1	@ tmp136, tmp137,
	bicne	r3, r3, #16	@ tmp138, tmp136,
	strne	r3, [r0, #0]	@ tmp138,* D.36178
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
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
	cmp	r0, #1	@ VdhId,
	bls	.L166	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L166:
	movw	r0, #:lower16:-123592584	@,
	movt	r0, #:upper16:-123592584	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36167
	ldrne	r3, [r0, #0]	@ tmp140,* D.36167
	orrne	r3, r3, #256	@ tmp139, tmp140,
	orrne	r3, r3, #1	@ tmp139, tmp139,
	bicne	r3, r3, #16	@ tmp142, tmp139,
	strne	r3, [r0, #0]	@ tmp142,* D.36167
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
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
	bl	vfmw_proc_exit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
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
	bl	vfmw_proc_init	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_OpenModule, .-VDEC_OpenModule
	.global	g_VfmwEnableFlag
	.global	g_VfmwInitCount
	.global	g_chipID
	.global	g_ChipMaxWidth
	.global	g_ChipMaxHeight
	.global	g_vdm_hal_fun_ptr
	.global	g_btl_hal_fun_ptr
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VDEC_Control, %object
	.size	__kstrtab_VDEC_Control, 13
__kstrtab_VDEC_Control:
	.ascii	"VDEC_Control\000"
	.type	__kstrtab_VDEC_Exit, %object
	.size	__kstrtab_VDEC_Exit, 10
__kstrtab_VDEC_Exit:
	.ascii	"VDEC_Exit\000"
	.type	__kstrtab_VDEC_Init, %object
	.size	__kstrtab_VDEC_Init, 10
__kstrtab_VDEC_Init:
	.ascii	"VDEC_Init\000"
	.section	___ksymtab+VDEC_Control,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Control, %object
	.size	__ksymtab_VDEC_Control, 8
__ksymtab_VDEC_Control:
@ value:
	.word	VDEC_Control
@ name:
	.word	__kstrtab_VDEC_Control
	.section	___ksymtab+VDEC_Exit,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Exit, %object
	.size	__ksymtab_VDEC_Exit, 8
__ksymtab_VDEC_Exit:
@ value:
	.word	VDEC_Exit
@ name:
	.word	__kstrtab_VDEC_Exit
	.section	___ksymtab+VDEC_Init,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Init, %object
	.size	__ksymtab_VDEC_Init, 8
__ksymtab_VDEC_Init:
@ value:
	.word	VDEC_Init
@ name:
	.word	__kstrtab_VDEC_Init
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	4
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDEC_Resume ok !\012\000"
	.space	2
.LC1:
	.ascii	"VDEC_Suspend ok !\012\000"
	.space	1
.LC2:
	.ascii	"VFMW has been destroyed, so any operation is unusef"
	.ascii	"ul!\012\000"
.LC3:
	.ascii	"vfmw.c,L%d: pArgs is NULL!\012\000"
.LC4:
	.ascii	"vfmw.c, L%d: pArgs is NULL!\012\000"
	.space	3
.LC5:
	.ascii	"vfmw.c,L%d: capability level out of range\012\000"
	.space	1
.LC6:
	.ascii	"VCTRL_CreateChan() return %d\012\000"
	.space	2
.LC7:
	.ascii	"VDEC_InitWithOperation has NULL parameter, error!\012"
	.ascii	"\000"
	.space	1
.LC8:
	.ascii	"VCTRL_OpenVfmw() return %d\012\000"
.LC9:
	.ascii	"VdhId is wrong! VDMDRV_V100_OpenHardware\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_VfmwEnableFlag, %object
	.size	g_VfmwEnableFlag, 4
g_VfmwEnableFlag:
	.space	4
	.type	g_VfmwInitCount, %object
	.size	g_VfmwInitCount, 4
g_VfmwInitCount:
	.space	4
	.type	g_btl_hal_fun_ptr, %object
	.size	g_btl_hal_fun_ptr, 36
g_btl_hal_fun_ptr:
	.space	36
	.type	g_vdm_hal_fun_ptr, %object
	.size	g_vdm_hal_fun_ptr, 96
g_vdm_hal_fun_ptr:
	.space	96
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
