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
	.file	"vdm_drv.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o -O2 -Wall -Wundef
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
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
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
	ldr	r3, [r0, #0]	@ MaxPrio.519,* pPrioArray
	ldr	r2, [r0, #4]	@ MaxPrio.521,
	bic	r3, r3, r3, asr #31	@ MaxPrio.518, MaxPrio.519
	cmp	r3, r2	@ MaxPrio.518, MaxPrio.521
	movlt	r3, r2	@ MaxPrio.518, MaxPrio.521
	movge	r2, #0	@ MaxPrioChanID,
	movlt	r2, #1	@ MaxPrioChanID,
	cmp	r3, #0	@ MaxPrio.518,
	movwle	r3, #:lower16:.LANCHOR0	@ tmp156,
	movle	r1, #0	@ total,
	movtle	r3, #:upper16:.LANCHOR0	@ tmp156,
	ble	.L5	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	mov	ip, #0	@ tmp147,
	str	r2, [r3, #8]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	str	ip, [r0, r2, asl #2]	@ tmp147,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.517,* pPrioArray
	cmp	r1, ip	@ MaxPrio.517,
	movle	r1, ip	@ MaxPrio.517, tmp147
	bgt	.L16	@,
	ldr	ip, [r0, #4]	@ tmp155,
	cmp	ip, r1	@ tmp155, MaxPrio.517
	movgt	r2, #1	@ MaxPrioChanID,
	ble	.L17	@,
.L8:
	str	r2, [r3, #12]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	mov	r1, #0	@ tmp154,
	str	r1, [r0, r2, asl #2]	@ tmp154,* pPrioArray
	ldmfd	sp, {fp, sp, pc}	@
.L16:
	mov	r2, ip	@ MaxPrioChanID, tmp147
	ldr	ip, [r0, #4]	@ tmp155,
	cmp	ip, r1	@ tmp155, MaxPrio.517
	movgt	r2, #1	@ MaxPrioChanID,
	bgt	.L8	@,
.L17:
	cmp	r1, #0	@ MaxPrio.517,
	bne	.L8	@,
	mov	r1, #1	@ total,
.L5:
	mov	r2, r1, asl #2	@ ivtmp.514, total,
	mvn	ip, #0	@ tmp157,
.L10:
	add	r0, r2, r3	@ tmp150, ivtmp.514, tmp156
	cmp	r1, #0	@ j,
	add	r2, r2, #4	@ ivtmp.514, ivtmp.514,
	mov	r1, #1	@ j,
	str	ip, [r0, #8]	@ tmp157,
	ldmnefd	sp, {fp, sp, pc}	@
	add	r0, r2, r3	@ tmp150, ivtmp.514, tmp156
	cmp	r1, #0	@ j,
	add	r2, r2, #4	@ ivtmp.514, ivtmp.514,
	mov	r1, #1	@ j,
	str	ip, [r0, #8]	@ tmp157,
	beq	.L10	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_SetPriority, .-VDMDRV_SetPriority
	.align	2
	.global	VDMDRV_AdjustPriorityAfterDec
	.type	VDMDRV_AdjustPriorityAfterDec, %function
VDMDRV_AdjustPriorityAfterDec:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r4, [r3, #8]	@ D.35430, g_ChanCtx.ChanIdTabByPrior
	cmp	r4, r0	@ D.35430, CurChanId
	ldreq	ip, [r3, #12]	@ prephitmp.539, g_ChanCtx.ChanIdTabByPrior
	beq	.L20	@,
	ldr	ip, [r3, #12]	@ prephitmp.539, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ prephitmp.539, CurChanId
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
.L20:
	cmp	ip, #0	@ prephitmp.539,
	ldmltfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r1, [r3, r4, asl #2]	@ tmp142,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, ip, asl #2]	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	cmp	r3, r1	@ tmp141, tmp142
	strge	r4, [r2, #12]	@ D.35430, g_ChanCtx.ChanIdTabByPrior
	strge	ip, [r2, #8]	@ prephitmp.539, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_AdjustPriorityAfterDec, .-VDMDRV_AdjustPriorityAfterDec
	.align	2
	.global	VDMDRV_GetSleepStage
	.type	VDMDRV_GetSleepStage, %function
VDMDRV_GetSleepStage:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #24]	@, s_eVdmDrvSleepState
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_GetSleepStage, .-VDMDRV_GetSleepStage
	.align	2
	.global	VDMDRV_IsChanDec
	.type	VDMDRV_IsChanDec, %function
VDMDRV_IsChanDec:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r1, r0, #4	@ tmp137, ChanID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r0, [r3, r1, asl #2]	@ tmp138, g_ChanCtx.ChanDecByVdhPlusOne
	subs	r0, r0, #0	@, tmp138,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsChanDec, .-VDMDRV_IsChanDec
	.align	2
	.global	VDMDRV_SetChanIsDec
	.type	VDMDRV_SetChanIsDec, %function
VDMDRV_SetChanIsDec:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	add	r2, r0, #4	@ tmp136, ChanID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	add	r1, r1, #1	@ tmp137, VdhID,
	str	r1, [r3, r2, asl #2]	@ tmp137, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_AdjustPriorityAfterDec	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_SetChanIsDec, .-VDMDRV_SetChanIsDec
	.align	2
	.global	VDMDRV_ClearChanIsDec
	.type	VDMDRV_ClearChanIsDec, %function
VDMDRV_ClearChanIsDec:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	add	r0, r0, #4	@ tmp135, ChanID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp136,
	str	r2, [r3, r0, asl #2]	@ tmp136, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_ClearChanIsDec, .-VDMDRV_ClearChanIsDec
	.align	2
	.global	VDMDRV_IsVdmInISR
	.type	VDMDRV_IsVdmInISR, %function
VDMDRV_IsVdmInISR:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #28]	@, s_VdmIsInISR
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVdmInISR, .-VDMDRV_IsVdmInISR
	.align	2
	.global	VDMDRV_IsVdmIdle
	.type	VDMDRV_IsVdmIdle, %function
VDMDRV_IsVdmIdle:
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
	add	r2, r0, r0, asl #1	@, tmp140, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r2, asl #4	@, tmp142, tmp136, tmp140,
	ldr	r0, [r3, #32]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	subs	r0, r0, #0	@, <variable>.VdmStateMachine,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVdmIdle, .-VDMDRV_IsVdmIdle
	.align	2
	.global	VDMDRV_GetCurrChanID
	.type	VDMDRV_GetCurrChanID, %function
VDMDRV_GetCurrChanID:
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
	add	r0, r0, r0, asl #1	@, tmp139, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #4	@, tmp143, tmp136, tmp139,
	ldr	r0, [r3, #40]	@, <variable>.ChanId
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_GetCurrChanID, .-VDMDRV_GetCurrChanID
	.align	2
	.global	VDMDRV_H264NeedMoreStart
	.type	VDMDRV_H264NeedMoreStart, %function
VDMDRV_H264NeedMoreStart:
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
	cmp	r0, #0	@ VidStd,
	cmpne	r0, #15	@, VidStd,
	movne	r0, #0	@, tmp144
	moveq	r0, #1	@, tmp144
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r2, [r1, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	ip, [r1, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r3, [r1, #916]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r0, ip, r2	@ tmp145, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r0, r3	@ tmp145, <variable>.mbtodec
	movle	r0, #0	@, H264NeedMoreStart
	movgt	r0, #1	@, H264NeedMoreStart
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_H264NeedMoreStart, .-VDMDRV_H264NeedMoreStart
	.align	2
	.global	VDMDRV_H264FinishedMultiStart
	.type	VDMDRV_H264FinishedMultiStart, %function
VDMDRV_H264FinishedMultiStart:
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
	cmp	r0, #0	@ VidStd,
	cmpne	r0, #15	@, VidStd,
	bne	.L42	@,
	ldr	ip, [r1, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r0, [r1, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r3, [r1, #916]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r2, r0, ip	@ tmp145, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r2, r3	@ tmp145, <variable>.mbtodec
	bgt	.L42	@,
	ldrsb	r2, [r1, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	r0, r2, #1	@ H264FinishedMultiStart, <variable>.NewPicFlag
	movcc	r0, #0	@ H264FinishedMultiStart
	ldmfd	sp, {fp, sp, pc}	@
.L42:
	mov	r0, #0	@ H264FinishedMultiStart,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_H264FinishedMultiStart, .-VDMDRV_H264FinishedMultiStart
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
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
	cmp	r0, #6	@ VidStd,
	beq	.L49	@,
.L46:
	mov	r0, #0	@ D.36146,
	ldmfd	sp, {fp, sp, pc}	@
.L49:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L46	@,
	ldr	ip, .L50	@ tmp140,
	movw	r1, #1144	@ tmp142,
	mla	r2, r1, r2, ip	@ tmp143, tmp142, VdhId, tmp140
	ldr	r0, [r2, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.36146
	movgt	r0, #1	@, D.36146
	ldmfd	sp, {fp, sp, pc}	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0+80
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
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
	cmp	r0, #6	@ VidStd,
	beq	.L56	@,
.L53:
	mov	r0, #0	@ D.36164,
	ldmfd	sp, {fp, sp, pc}	@
.L56:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L53	@,
	ldr	ip, .L57	@ tmp140,
	movw	r1, #1144	@ tmp143,
	mla	r2, r1, r2, ip	@ tmp144, tmp143, VdhId, tmp140
	ldr	r0, [r2, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.36164
	movgt	r0, #1	@, D.36164
	ldmfd	sp, {fp, sp, pc}	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR0+80
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsVp6NvopCopy
	.type	VDMDRV_IsVp6NvopCopy, %function
VDMDRV_IsVp6NvopCopy:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L64	@,
	cmp	r0, #10	@ VidStd,
	cmpne	r0, #12	@, VidStd,
	movne	r3, #0	@, tmp144
	moveq	r3, #1	@, tmp144
	bne	.L65	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36199
	moveq	r0, #1	@, D.36199
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L65:
	cmp	r0, #11	@ VidStd,
	movne	r0, r3	@ D.36199, tmp144
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36199
	moveq	r0, #1	@, D.36199
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L64:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36199, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVp6NvopCopy, .-VDMDRV_IsVp6NvopCopy
	.align	2
	.global	VDMDRV_IsVc1SkpicCopy
	.type	VDMDRV_IsVc1SkpicCopy, %function
VDMDRV_IsVc1SkpicCopy:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L71	@,
	cmp	r0, #1	@ VidStd,
	movne	r0, #0	@ D.36186,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsSkpicCopy, <variable>.IsSkpicCopy
	cmp	r0, #1	@ <variable>.IsSkpicCopy,
	movne	r0, #0	@, D.36186
	moveq	r0, #1	@, D.36186
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L71:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36186, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVc1SkpicCopy, .-VDMDRV_IsVc1SkpicCopy
	.align	2
	.global	VDMDRV_IsMpeg4NvopCopy
	.type	VDMDRV_IsMpeg4NvopCopy, %function
VDMDRV_IsMpeg4NvopCopy:
	.fnstart
.LFB1375:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L77	@,
	cmp	r0, #2	@ VidStd,
	movne	r0, #0	@ D.36173,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36173
	moveq	r0, #1	@, D.36173
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L77:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36173, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsMpeg4NvopCopy, .-VDMDRV_IsMpeg4NvopCopy
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3, #0]	@ D.35481, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35481,
	beq	.L79	@,
	blx	r3	@ D.35481
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #24]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L79:
	mov	r0, r3	@, D.35481
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #230	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #24]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_WaitVdmReadyIfNoIsr
	.type	VDMDRV_WaitVdmReadyIfNoIsr, %function
VDMDRV_WaitVdmReadyIfNoIsr:
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
	movw	r4, #:lower16:g_vdm_hal_fun_ptr	@ tmp145,
	mov	r5, r0	@ VdhId, VdhId
	movt	r4, #:upper16:g_vdm_hal_fun_ptr	@ tmp145,
	bl	OSAL_GetTimeInMs	@
	mov	r6, #0	@ cnt_wait,
	b	.L85	@
.L83:
	ldr	r3, [r4, #72]	@ D.36074, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	mov	r0, r5	@, VdhId
	cmp	r3, #0	@ D.36074,
	beq	.L92	@,
	blx	r3	@ D.36074
	cmp	r0, #0	@,
	bne	.L84	@,
.L92:
	add	r6, r6, #1	@ cnt_wait, tmp146,
	cmp	r6, #400	@ cnt_wait,
	beq	.L97	@,
.L85:
	ldr	r3, [r4, #72]	@ D.36074, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	mov	r0, r5	@, VdhId
	add	r6, r6, #1	@ tmp146, cnt_wait,
	cmp	r3, #0	@ D.36074,
	beq	.L83	@,
	blx	r3	@ D.36074
	cmp	r0, #0	@,
	beq	.L83	@,
.L84:
	bl	OSAL_GetTimeInMs	@
	mov	r0, #0	@ D.36082,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L97:
	bl	OSAL_GetTimeInMs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.36084, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.36084,
	beq	.L98	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.36084
	mov	r0, #1	@ D.36082,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L98:
	mov	r0, r3	@, D.36084
	movw	r2, #1234	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36082,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_WaitVdmReadyIfNoIsr, .-VDMDRV_WaitVdmReadyIfNoIsr
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1358:
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
	sub	r5, fp, #24	@ tmp148,,
	mov	r4, r0	@ VdhId, VdhId
	mov	r0, r5	@, tmp148
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	ldr	r3, [r3, #64]	@ D.35502, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	cmp	r3, #0	@ D.35502,
	beq	.L100	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35502
.L101:
	add	r4, r4, r4, asl #1	@, tmp142, VdhId, VdhId,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	mov	r2, #1	@ tmp146,
	add	r1, ip, r4, asl #4	@, tmp144, tmp138, tmp142,
	mov	r0, r5	@, tmp148
	str	r2, [r1, #32]	@ tmp146, <variable>.VdmStateMachine
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L100:
	mov	r0, r3	@, D.35502
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #253	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L101	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1357:
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
	sub	r5, fp, #32	@ tmp148,,
	mov	r6, r0	@ StateAfterRepair, StateAfterRepair
	mov	r4, r1	@ VdhId, VdhId
	mov	r0, r5	@, tmp148
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp137,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp137,
	ldr	r3, [r3, #60]	@ D.35492, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.35492,
	beq	.L104	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35492
.L105:
	add	r4, r4, r4, asl #1	@, tmp143, VdhId, VdhId,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, r5	@, tmp148
	add	r1, r2, r4, asl #4	@, tmp145, tmp139, tmp143,
	str	r6, [r1, #32]	@ StateAfterRepair, <variable>.VdmStateMachine
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L104:
	mov	r0, r3	@, D.35492
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #241	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L105	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1353:
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
	sub	r5, fp, #24	@ tmp166,,
	mov	r4, r0	@ VdhId, VdhId
	mov	r0, r5	@, tmp166
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r2, r3, r4, asl #2	@, tmp140, tmp137, VdhId,
	ldr	r1, [r2, #24]	@ tmp142, s_eVdmDrvSleepState
	cmp	r1, #0	@ tmp142,
	mvnne	r4, #0	@ ret,
	bne	.L109	@,
	add	r4, r4, r4, asl #1	@, tmp147, VdhId, VdhId,
	add	r3, r3, r4, asl #4	@, tmp149, tmp137, tmp147,
	ldr	r4, [r3, #32]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r4, #0	@ <variable>.VdmStateMachine,
	movne	r4, r1	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r2, #24]	@ tmp163, s_eVdmDrvSleepState
.L109:
	mov	r0, r5	@, tmp166
	bl	OSAL_UnLockIRQ	@
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
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
	ldr	r3, .L114	@ tmp135,
	add	r0, r0, r0, asl #1	@, tmp138, VdhId, VdhId,
	mov	r1, #48	@,
	add	r0, r3, r0, asl #4	@,, tmp135, tmp138,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
.L115:
	.align	2
.L114:
	.word	.LANCHOR0+32
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
.LFB1362:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp772,
	movt	r4, #:upper16:.LANCHOR0	@ tmp772,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #8]	@ temp.1090, g_ChanCtx.ChanIdTabByPrior
	cmp	r3, #0	@ temp.1090,
	blt	.L117	@,
	mov	r6, r5, asl #1	@ tmp774, VdhId,
	mov	r0, r3	@, temp.1090
	add	r8, r6, r5	@ tmp173, tmp774, VdhId
	add	r7, r4, r8, asl #4	@, tmp177, tmp772, tmp173,
	add	r7, r7, #8	@ tmp178, tmp177,
	str	r3, [r7, #32]	@ temp.1090, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L118	@,
	ldr	r2, [r7, #32]	@ temp.1092, <variable>.ChanId
	add	r3, r2, #4	@ tmp191, temp.1092,
	ldr	r3, [r4, r3, asl #2]	@ tmp192, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp192,
	bne	.L119	@,
	add	r8, r8, #1	@ tmp197, tmp173,
	mov	r0, r2	@, temp.1092
	add	r8, r4, r8, asl #4	@, tmp200, tmp772, tmp197,
	str	r3, [r8, #32]	@ tmp192, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1095,
	str	r0, [r8, #32]	@ temp.1095, <variable>.pDecParam
	beq	.L135	@,
	ldr	r0, [r7, #32]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.35567,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp255,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp255,
	str	r2, [r7, #36]	@ D.35567, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.1098, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1098,
	beq	.L122	@,
	ldr	ip, [r7, #32]	@ <variable>.ChanId, <variable>.ChanId
	sub	r0, fp, #56	@,,
	ldr	r1, [r8, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r2, [fp, #-52]	@ D.35567, DecparamInfo.VidStd
	str	ip, [fp, #-56]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	r1, [fp, #-48]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.1098
	cmp	r0, #1	@,
	beq	.L121	@,
.L123:
	add	r7, r6, r5	@ tmp375, tmp774, VdhId
	add	r9, r4, r7, asl #4	@, tmp379, tmp772, tmp375,
	ldr	r2, [r9, #44]	@ D.35567, <variable>.VidStd
.L122:
	add	r9, r6, r5	@ tmp385, tmp774, VdhId
	mov	r0, r2	@, D.35567
	add	r2, r9, #1	@ tmp386, tmp385,
	movw	r8, #:lower16:.LANCHOR0	@ tmp382,
	movt	r8, #:upper16:.LANCHOR0	@ tmp382,
	add	r7, r4, r2, asl #4	@, tmp389, tmp772, tmp386,
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L136	@,
	add	sl, r8, r9, asl #4	@, tmp457, tmp382, tmp385,
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	add	sl, sl, #8	@ tmp458, tmp457,
	ldr	r0, [sl, #36]	@, <variable>.VidStd
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L137	@,
	ldr	r0, [sl, #36]	@, <variable>.VidStd
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L138	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp611,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp611,
	ldr	r3, [r3, #68]	@ D.35633, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.35633,
	beq	.L129	@,
	ldr	r0, [sl, #36]	@, <variable>.VidStd
	mov	r2, r5	@, VdhId
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	blx	r3	@ D.35633
	cmp	r0, #0	@,
	beq	.L130	@,
.L129:
	add	r6, r6, r5	@ tmp638, tmp774, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	r8, r4, r6, asl #4	@, tmp659, tmp772, tmp638,
	mov	r7, r0	@ tmp642,
	bl	dprint_vfmw	@
	mov	ip, #100	@ tmp651,
	mov	r6, r8	@ tmp640, tmp659
	add	r8, r8, #8	@ tmp660, tmp659,
	mov	r1, ip	@, tmp651
	mov	r2, #15	@,
	str	ip, [r6, #36]	@ tmp651, <variable>.ErrRatio
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	str	r7, [r6, #32]	@ tmp642, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	r0, [r8, #32]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r0, #4	@ tmp674, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp642, g_ChanCtx.ChanDecByVdhPlusOne
.L117:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L119:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
.L121:
	ldr	r3, [r4, #12]	@ D.35552, g_ChanCtx.ChanIdTabByPrior
	movw	r7, #:lower16:.LANCHOR0	@ tmp291,
	movt	r7, #:upper16:.LANCHOR0	@ tmp291,
	cmp	r3, #0	@ D.35552,
	blt	.L117	@,
	add	sl, r6, r5	@ tmp295, tmp774, VdhId
	mov	r0, r3	@, D.35552
	add	r2, r7, sl, asl #4	@, tmp299, tmp291, tmp295,
	add	r8, r2, #8	@ tmp300, tmp299,
	str	r3, [r8, #32]	@ D.35552, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L139	@,
	ldr	r2, [r8, #32]	@ temp.1040, <variable>.ChanId
	add	lr, r2, #4	@ tmp325, temp.1040,
	ldr	r3, [r7, lr, asl #2]	@ tmp326, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp326,
	beq	.L125	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L117	@
.L118:
	ldr	r2, [r7, #32]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L121	@
.L125:
	add	sl, sl, #1	@ tmp746, tmp295,
	mov	r0, r2	@, temp.1040
	add	r7, r7, sl, asl #4	@, tmp749, tmp291, tmp746,
	str	r3, [r7, #32]	@ tmp326, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35563,
	str	r0, [r7, #32]	@ D.35563, <variable>.pDecParam
	beq	.L140	@,
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	movw	r3, #:lower16:AcceleratorCharacter	@ tmp349,
	movt	r3, #:upper16:AcceleratorCharacter	@ tmp349,
	str	r0, [r8, #36]	@ D.35567, <variable>.VidStd
	mov	r2, r0	@ D.35567,
	ldr	r3, [r3, #0]	@ AcceleratorCharacter.430, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.430,
	beq	.L122	@,
	ldr	ip, [r8, #32]	@ <variable>.ChanId, <variable>.ChanId
	sub	r0, fp, #56	@,,
	ldr	r1, [r7, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r2, [fp, #-52]	@ D.35567, DecparamInfo.VidStd
	str	ip, [fp, #-56]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	r1, [fp, #-48]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.430
	cmp	r0, #1	@,
	bne	.L123	@,
	b	.L117	@
.L137:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #32]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vc1	@
	subs	r3, r0, #0	@ D.35606,
	bne	.L117	@,
	add	r9, r8, r9, asl #4	@, tmp488, tmp382, tmp385,
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	str	r3, [r9, #36]	@ D.35606, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L117	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, #32]	@ temp.1052, <variable>.ChanId
	add	r8, r8, r2, asl #2	@, tmp515, tmp382, temp.1052,
	ldr	ip, [r8, #1224]	@ tmp518, last_rec_pos_time
	mov	r3, r0	@ currtime.1051,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp519,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp519,
	ldr	r1, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r0, ip, r3	@ tmp517, tmp518, currtime.1051
	cmp	r0, r1	@ tmp517, g_TraceFramePeriod
	bls	.L117	@,
	add	lr, r5, r2, asl #24	@, tmp528, VdhId, temp.1052,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, lr, #458752	@, tmp528,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #386	@,
	str	r3, [r8, #1224]	@ currtime.1051, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L117	@
.L140:
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L117	@
.L139:
	ldr	r2, [r8, #32]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L117	@
.L136:
	ldr	r0, [r7, #32]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ D.35582,
	bne	.L117	@,
	add	lr, r8, r9, asl #4	@, tmp408, tmp382, tmp385,
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	str	r3, [lr, #36]	@ D.35582, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	add	r0, r8, r9, asl #4	@, tmp418, tmp382, tmp385,
	add	r9, r0, #8	@ tmp419, tmp418,
	mov	r1, r5	@, VdhId
	ldr	r0, [r9, #32]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L117	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r9, #32]	@ temp.1047, <variable>.ChanId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp439,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp439,
	add	r8, r8, r2, asl #2	@, tmp435, tmp382, temp.1047,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime,
	ldr	r0, [r8, #1224]	@ tmp438, last_rec_pos_time
	rsb	ip, r0, r3	@ tmp437, tmp438, currtime
	cmp	ip, r1	@ tmp437, g_TraceFramePeriod
	bls	.L117	@,
	add	r2, r5, r2, asl #24	@, tmp448, VdhId, temp.1047,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r2, #458752	@, tmp448,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #363	@,
	str	r3, [r8, #1224]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L117	@
.L135:
	ldr	r0, [r7, #32]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L121	@
.L130:
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_VfmwGlobalStat	@ tmp686,
	movt	r1, #:upper16:g_VfmwGlobalStat	@ tmp686,
	add	r2, r1, r5, asl #6	@, tmp689, tmp686, VdhId,
	mov	r3, r0	@ D.35639,
	mov	r0, r5	@, VdhId
	str	r3, [r7, #36]	@ D.35639, <variable>.StartTime
	str	r3, [r2, #4]	@ D.35639, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L117	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, #32]	@ temp.1080, <variable>.ChanId
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp719,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp719,
	add	r8, r8, r2, asl #2	@, tmp715, tmp382, temp.1080,
	ldr	ip, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1079,
	ldr	r0, [r8, #1224]	@ tmp718, last_rec_pos_time
	rsb	r0, r0, r3	@ tmp717, tmp718, currtime.1079
	cmp	r0, ip	@ tmp717, g_TraceFramePeriod
	bls	.L117	@,
	add	lr, r5, r2, asl #24	@, tmp728, VdhId, temp.1080,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, lr, #327680	@, tmp728,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #443	@,
	str	r3, [r8, #1224]	@ currtime.1079, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L117	@
.L138:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #32]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vp6	@
	subs	r3, r0, #0	@ D.35620,
	bne	.L117	@,
	add	r9, r8, r9, asl #4	@, tmp568, tmp382, tmp385,
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	str	r3, [r9, #36]	@ D.35620, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L117	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, #32]	@ temp.1067, <variable>.ChanId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp599,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp599,
	add	r8, r8, r2, asl #2	@, tmp595, tmp382, temp.1067,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1066,
	ldr	r0, [r8, #1224]	@ tmp598, last_rec_pos_time
	rsb	ip, r0, r3	@ tmp597, tmp598, currtime.1066
	cmp	ip, r1	@ tmp597, g_TraceFramePeriod
	bls	.L117	@,
	add	r2, r5, r2, asl #24	@, tmp609, VdhId, temp.1067,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r2, #458752	@, tmp609,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #409	@,
	str	r3, [r8, #1224]	@ currtime.1066, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L117	@
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1363:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp1473,
	movt	r4, #:upper16:.LANCHOR0	@ tmp1473,
	mov	r1, #180	@ tmp188,
	mov	r5, r0	@ VdhId, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp208,
	mla	r3, r1, r0, r4	@ tmp189, tmp188, VdhId, tmp1473
	mov	sl, r5, asl #1	@ tmp1475, VdhId,
	add	r9, sl, r5	@ tmp212, tmp1475, VdhId
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	movt	r7, #:upper16:.LANCHOR0	@ tmp208,
	add	r6, r4, r9, asl #4	@, tmp214, tmp1473, tmp212,
	ldr	r0, [r3, #1232]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	and	r2, r0, #15	@ tmp191, <variable>.BasicCfg1,
	mov	r0, #2	@,
	cmp	r2, #5	@ tmp191,
	ldreq	r3, [r3, #1244]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r3, [r3, #1240]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r3, r3, #1	@, <variable>.SwitchRounding,
	andne	r3, r3, #31	@, <variable>.Mb0QpInCurrPic,
	str	r3, [fp, #-48]	@, %sfp
	ldr	ip, [r6, #36]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r2, [r6, #32]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	ldr	r3, [r6, #68]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	str	ip, [sp, #0]	@ <variable>.ErrRatio,
	bl	dprint_vfmw	@
	ldr	r8, [r6, #32]	@ temp.1133, <variable>.VdmStateMachine
	cmp	r8, #1	@ temp.1133,
	beq	.L178	@,
	cmp	r8, #2	@ temp.1133,
	beq	.L179	@,
	cmp	r8, #3	@ temp.1133,
	beq	.L180	@,
	movw	r1, #:lower16:.LC13	@,
	mov	r2, r8	@, temp.1133
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L172:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L180:
	add	r0, sl, r5	@ tmp1415, tmp1475, VdhId
	ldr	r2, [r6, #68]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	add	ip, r4, r0, asl #4	@, tmp1417, tmp1473, tmp1415,
	cmp	r2, #1	@ <variable>.VdmTimeOut,
	add	sl, ip, #8	@ tmp1445, tmp1444,
	ldr	lr, [ip, #36]	@ <variable>.ErrRatio, <variable>.ErrRatio
	moveq	r2, #0	@ tmp1410,
	streq	r2, [r6, #68]	@ tmp1410, <variable>.VdmTimeOut
	mov	r6, #0	@ tmp1419,
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.452,
	ldr	r2, [fp, #-48]	@, %sfp
	bic	r1, lr, lr, asr #31	@ iftmp.1228, iftmp.452
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	str	r6, [ip, #32]	@ tmp1419, <variable>.VdmStateMachine
	str	r1, [ip, #36]	@ iftmp.1228, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [sl, #32]	@ <variable>.ChanId, <variable>.ChanId
.L176:
	add	r1, r3, #4	@ tmp1459, <variable>.ChanId,
	mov	r0, r5	@, VdhId
	str	r6, [r4, r1, asl #2]	@ tmp1419, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L172	@
.L178:
	ldr	lr, [r6, #68]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	lr, #1	@ <variable>.VdmTimeOut,
	beq	.L181	@,
	add	r1, r7, r9, asl #4	@, tmp309, tmp208, tmp212,
	mov	r2, r5	@, VdhId
	add	r9, r1, #8	@ tmp310, tmp309,
	ldr	r1, [r1, #48]	@, <variable>.pDecParam
	ldr	r0, [r9, #36]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, r0	@, D.35696
	mov	r7, r0	@ D.35696,
	mov	r0, r8	@, temp.1133
	str	r7, [r6, #36]	@ D.35696, <variable>.ErrRatio
	bl	dprint_vfmw	@
	ldr	r0, [r9, #36]	@ prephitmp.1122, <variable>.VidStd
	sub	r2, r0, #8	@ tmp342, prephitmp.1122,
	cmp	r0, #5	@ prephitmp.1122,
	cmpne	r2, #1	@, tmp342,
	movls	r2, #0	@ tmp358,
	strls	r2, [r6, #36]	@ tmp358, <variable>.ErrRatio
	bls	.L146	@,
	ldr	r2, [r6, #36]	@ temp.1137, <variable>.ErrRatio
	cmp	r2, #0	@ temp.1137,
	beq	.L146	@,
	movw	r6, #:lower16:g_event_report	@ tmp377,
	movt	r6, #:upper16:g_event_report	@ tmp377,
	ldr	r3, [r6, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L146	@,
	str	r2, [fp, #-44]	@ temp.1137, para
	mov	r1, #114	@,
	ldr	r0, [r9, #32]	@, <variable>.ChanId
	sub	r2, fp, #44	@,,
	blx	r3	@ g_event_report
	ldr	r0, [r9, #36]	@ prephitmp.1122, <variable>.VidStd
.L146:
	add	r7, sl, r5	@ tmp405, tmp1475, VdhId
	add	lr, r7, #1	@ tmp406, tmp405,
	add	r6, r4, lr, asl #4	@, tmp409, tmp1473, tmp406,
	ldr	r1, [r6, #32]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	add	ip, r4, r7, asl #4	@, tmp419, tmp1473, tmp405,
	ldr	r2, [r6, #32]	@ temp.1141, <variable>.pDecParam
	ldr	r8, [ip, #44]	@ temp.1140, <variable>.VidStd
	cmp	r8, #0	@ temp.1140,
	cmpne	r8, #15	@, temp.1140,
	movne	r3, #0	@, tmp437
	moveq	r3, #1	@, tmp437
	mov	r9, r0	@ eRpStratage,
	bne	.L149	@,
	ldr	r0, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r1, [r2, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r2, [r2, #916]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r3, r1, r0	@ tmp438, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r3, r2	@ tmp438, <variable>.mbtodec
	movle	r3, #0	@, H264NeedMoreStart
	movgt	r3, #1	@, H264NeedMoreStart
.L149:
	add	lr, sl, r5	@ tmp447, tmp1475, VdhId
	add	r7, r4, lr, asl #4	@, tmp458, tmp1473, tmp447,
	ldr	ip, [r7, #44]	@ temp.1142, <variable>.VidStd
	str	r3, [r7, #60]	@ H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	ip, #0	@ temp.1142,
	cmpne	ip, #15	@, temp.1142,
	ldr	r3, [r7, #48]	@ temp.1143, <variable>.pDecParam
	beq	.L182	@,
.L150:
	mov	ip, #0	@ H264FinishedMultiStart,
.L151:
	add	r8, sl, r5	@ tmp487, tmp1475, VdhId
	mov	r3, ip	@, H264FinishedMultiStart
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC12	@,
	add	r6, r4, r8, asl #4	@, tmp489, tmp1473, tmp487,
	movt	r1, #:upper16:.LC12	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp483,
	movt	r7, #:upper16:.LANCHOR0	@ tmp483,
	ldr	r2, [r6, #60]	@, <variable>.H264NeedMoreStart
	str	ip, [r6, #64]	@ H264FinishedMultiStart, <variable>.H264FinishedMultiStart
	bl	dprint_vfmw	@
	ldr	r3, [r6, #60]	@ <variable>.H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	r3, #1	@ <variable>.H264NeedMoreStart,
	beq	.L183	@,
	ldr	r0, [r6, #64]	@ <variable>.H264FinishedMultiStart, <variable>.H264FinishedMultiStart
	cmp	r0, #1	@ <variable>.H264FinishedMultiStart,
	beq	.L184	@,
	ldr	r1, [r6, #36]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r1, #0	@ <variable>.ErrRatio,
	cmpne	r9, #1	@, eRpStratage,
	movne	r9, #0	@, tmp620
	moveq	r9, #1	@, tmp620
	beq	.L185	@,
	add	r6, r7, r8, asl #4	@, tmp688, tmp483, tmp487,
	add	r2, r8, #1	@ tmp676, tmp487,
	add	r6, r6, #8	@ tmp689, tmp688,
	add	r8, r7, r2, asl #4	@, tmp679, tmp483, tmp676,
	ldr	r1, [r6, #36]	@ <variable>.VidStd, <variable>.VidStd
	ldr	r2, [r8, #32]	@ temp.1154, <variable>.pDecParam
	cmp	r1, #6	@ <variable>.VidStd,
	beq	.L186	@,
.L156:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp1472,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp1472,
	add	r8, sl, r5	@ tmp1466, tmp1475, VdhId
	add	r7, r8, #1	@ tmp1467, tmp1466,
	movw	r6, #:lower16:.LANCHOR0	@ tmp1463,
	ldr	ip, [r3, #80]	@ temp.1176, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r6, #:upper16:.LANCHOR0	@ tmp1463,
	add	r7, r4, r7, asl #4	@, tmp1470, tmp1473, tmp1467,
	cmp	ip, #0	@ temp.1176,
	str	r0, [r7, #36]	@, <variable>.StartTime
	beq	.L164	@,
	add	r8, r6, r8, asl #4	@, tmp924, tmp1463, tmp1466,
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	add	r8, r8, #8	@ tmp925, tmp924,
	mov	r2, #0	@,
	mov	r3, r5	@, VdhId
	ldr	r0, [r8, #36]	@, <variable>.VidStd
	blx	ip	@ temp.1176
	cmp	r0, #0	@,
	beq	.L187	@,
.L164:
	add	r5, sl, r5	@ tmp1140, tmp1475, VdhId
	mov	r1, #100	@,
	ldr	r2, [fp, #-48]	@, %sfp
	add	r6, r4, r5, asl #4	@, tmp1144, tmp1473, tmp1140,
	add	r5, r4, r5, asl #4	@, tmp1168, tmp1473, tmp1140,
	add	r6, r6, #8	@ tmp1145, tmp1144,
	ldr	r0, [r6, #32]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r6, #32]	@ <variable>.ChanId, <variable>.ChanId
	mov	r1, #0	@ tmp1161,
	add	r3, ip, #4	@ tmp1159, <variable>.ChanId,
	str	r1, [r4, r3, asl #2]	@ tmp1161, g_ChanCtx.ChanDecByVdhPlusOne
	str	r1, [r5, #32]	@ tmp1161, <variable>.VdmStateMachine
	b	.L172	@
.L179:
	add	r8, sl, r5	@ tmp1037, tmp1475, VdhId
	ldr	r3, [r6, #68]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	add	r7, r8, #1	@ tmp1048, tmp1037,
	add	r1, r4, r8, asl #4	@, tmp1041, tmp1473, tmp1037,
	cmp	r3, #1	@ <variable>.VdmTimeOut,
	add	r8, r1, #8	@ tmp1042, tmp1041,
	add	r7, r4, r7, asl #4	@, tmp1051, tmp1473, tmp1048,
	moveq	r3, #0	@ tmp1033,
	streq	r3, [r6, #68]	@ tmp1033, <variable>.VdmTimeOut
	ldr	r0, [r8, #36]	@ temp.1193, <variable>.VidStd
	movw	r6, #:lower16:.LANCHOR0	@ tmp1034,
	ldr	r1, [r7, #32]	@ temp.1194, <variable>.pDecParam
	movt	r6, #:upper16:.LANCHOR0	@ tmp1034,
	cmp	r0, #6	@ temp.1193,
	beq	.L188	@,
.L163:
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L189	@,
	add	sl, sl, r5	@ tmp1217, tmp1475, VdhId
	movw	r6, #:lower16:.LANCHOR0	@ tmp1214,
	add	r2, sl, #1	@ tmp1229, tmp1217,
	movt	r6, #:upper16:.LANCHOR0	@ tmp1214,
	add	r0, r4, sl, asl #4	@, tmp1221, tmp1473, tmp1217,
	add	r7, r0, #8	@ tmp1222, tmp1221,
	add	r4, r4, r2, asl #4	@, tmp1232, tmp1473, tmp1229,
	ldr	r0, [r7, #36]	@, <variable>.VidStd
	ldr	r1, [r4, #32]	@, <variable>.pDecParam
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L177	@,
	ldr	r1, [r4, #32]	@, <variable>.pDecParam
	ldr	r0, [r7, #36]	@, <variable>.VidStd
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L177	@,
	add	sl, r6, sl, asl #4	@, tmp1348, tmp1214, tmp1217,
	ldr	r0, [r7, #32]	@, <variable>.ChanId
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r4, #0	@ tmp1350,
	ldr	lr, [sl, #36]	@ <variable>.ErrRatio, <variable>.ErrRatio
	str	r4, [sl, #32]	@ tmp1350, <variable>.VdmStateMachine
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.1222,
	bic	r1, lr, lr, asr #31	@ iftmp.451, iftmp.1222
	str	r1, [sl, #36]	@ iftmp.451, <variable>.ErrRatio
.L175:
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r7, #32]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r1, r3, #4	@ tmp1390, <variable>.ChanId,
	str	r4, [r6, r1, asl #2]	@ tmp1350, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L172	@
.L182:
	ldr	r8, [r3, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r0, [r3, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r2, [r3, #916]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r1, r0, r8	@ tmp477, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r1, r2	@ tmp477, <variable>.mbtodec
	bgt	.L150	@,
	ldrsb	ip, [r3, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	ip, ip, #1	@ H264FinishedMultiStart, <variable>.NewPicFlag
	movcc	ip, #0	@ H264FinishedMultiStart
	b	.L151	@
.L185:
	add	r4, r7, r8, asl #4	@, tmp654, tmp483, tmp487,
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.442,
	add	r8, r4, #8	@ tmp655, tmp654,
	mov	r4, #0	@ tmp629,
	bic	r1, r1, r1, asr #31	@ iftmp.1230, iftmp.442
	ldr	r2, [fp, #-48]	@, %sfp
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	str	r1, [r6, #36]	@ iftmp.1230, <variable>.ErrRatio
.L174:
	str	r4, [r6, #32]	@ tmp629, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r8, #32]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	ip, r3, #4	@ tmp669, <variable>.ChanId,
	str	r4, [r7, ip, asl #2]	@ tmp629, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L172	@
.L188:
	ldrb	r9, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r9, #1	@ <variable>.PicStruct,
	bne	.L163	@,
	movw	lr, #1144	@ tmp1058,
	mla	r2, lr, r5, r6	@ tmp1059, tmp1058, VdhId, tmp1034
	ldr	ip, [r2, #1204]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	ip, #0	@ <variable>.ValidGroupNum,
	ble	.L163	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp1071,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp1071,
	ldr	ip, [r1, #80]	@ temp.1195, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ temp.1195,
	str	r0, [r7, #36]	@, <variable>.StartTime
	beq	.L164	@,
	mov	r2, r9	@, <variable>.PicStruct
	ldr	r0, [r8, #36]	@, <variable>.VidStd
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	mov	r3, r5	@, VdhId
	blx	ip	@ temp.1195
	cmp	r0, #0	@,
	bne	.L164	@,
	ldr	ip, [r7, #36]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp1093,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp1093,
	mov	r0, #3	@,
	add	r3, r2, r5, asl #6	@, tmp1096, tmp1093, VdhId,
	mov	r1, r5	@, VdhId
	str	ip, [r3, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L172	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r8, #32]	@ temp.1200, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp1125,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp1125,
	add	r6, r6, r1, asl #2	@, tmp1121, tmp1034, temp.1200,
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1199,
	ldr	r0, [r6, #1412]	@ tmp1124, last_rec_pos_time
	rsb	r0, r0, r3	@ tmp1123, tmp1124, currtime.1199
	cmp	r0, ip	@ tmp1123, g_TraceFramePeriod
	bls	.L172	@,
	add	lr, r5, r1, asl #24	@, tmp1135, VdhId, temp.1200,
	ldr	r0, .L190	@,
	add	r2, lr, #458752	@, tmp1135,
	movw	r1, #695	@,
	str	r3, [r6, #1412]	@ currtime.1199, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L172	@
.L181:
	add	r3, r7, r9, asl #4	@, tmp259, tmp208, tmp212,
	mov	r2, r5	@, VdhId
	add	r8, r3, #8	@ tmp260, tmp259,
	mov	r9, #0	@ tmp290,
	ldr	r1, [r3, #48]	@, <variable>.pDecParam
	mov	r7, #100	@ tmp281,
	ldr	r0, [r8, #36]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	r0, r9	@, tmp290
	movw	r1, #:lower16:.LC10	@,
	str	r9, [r6, #68]	@ tmp290, <variable>.VdmTimeOut
	movt	r1, #:upper16:.LC10	@,
	str	r7, [r6, #36]	@ tmp281, <variable>.ErrRatio
	bl	dprint_vfmw	@
	ldr	r0, [r8, #36]	@ prephitmp.1122, <variable>.VidStd
	b	.L146	@
.L187:
	ldr	ip, [r7, #36]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp938,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp938,
	mov	r0, #2	@,
	add	r3, r2, r5, asl #6	@, tmp941, tmp938, VdhId,
	mov	r1, r5	@, VdhId
	str	ip, [r3, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L172	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r8, #32]	@ temp.1181, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp970,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp970,
	add	r6, r6, r1, asl #2	@, tmp966, tmp1463, temp.1181,
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1180,
	ldr	r0, [r6, #1412]	@ tmp969, last_rec_pos_time
	rsb	r0, r0, r3	@ tmp968, tmp969, currtime.1180
	cmp	r0, ip	@ tmp968, g_TraceFramePeriod
	bls	.L172	@,
	add	lr, r5, r1, asl #24	@, tmp980, VdhId, temp.1181,
	ldr	r0, .L190	@,
	add	r2, lr, #458752	@, tmp980,
	movw	r1, #659	@,
	str	r3, [r6, #1412]	@ currtime.1180, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L172	@
.L186:
	ldrb	r2, [r2, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	add	lr, r7, #80	@ tmp693, tmp483,
	movw	r0, #1144	@ tmp695,
	cmp	r2, #1	@ <variable>.PicStruct,
	mla	r3, r0, r5, lr	@ pRepairParam, tmp695, VdhId, tmp693
	bne	.L156	@,
	ldr	ip, [r3, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	ip, #0	@ <variable>.ValidGroupNum,
	ble	.L157	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp707,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp707,
	ldr	ip, [r3, #80]	@ D.35741, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.35741,
	str	r0, [r8, #36]	@, <variable>.StartTime
	beq	.L164	@,
	mov	r2, r9	@, tmp620
	ldr	r0, [r6, #36]	@, <variable>.VidStd
	ldr	r1, [r8, #32]	@, <variable>.pDecParam
	mov	r3, r5	@, VdhId
	blx	ip	@ D.35741
	cmp	r0, #0	@,
	bne	.L164	@,
	ldr	r2, [r8, #36]	@ <variable>.StartTime, <variable>.StartTime
	movw	r1, #:lower16:g_VfmwGlobalStat	@ tmp729,
	movt	r1, #:upper16:g_VfmwGlobalStat	@ tmp729,
	mov	r0, #2	@,
	add	lr, r1, r5, asl #6	@, tmp732, tmp729, VdhId,
	mov	r1, r5	@, VdhId
	str	r2, [lr, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L172	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, #32]	@ temp.1157, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp761,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp761,
	ldr	r2, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime,
	mov	r0, r1, asl #2	@ tmp1474, temp.1157,
	add	r7, r0, r7	@ tmp757, tmp1474, tmp483
	ldr	ip, [r7, #1412]	@ tmp760, last_rec_pos_time
	rsb	ip, ip, r3	@ tmp759, tmp760, currtime
	cmp	ip, r2	@ tmp759, g_TraceFramePeriod
	bls	.L172	@,
	add	r4, r0, r4	@ tmp766, tmp1474, tmp1473
	add	r0, r5, r1, asl #24	@, tmp771, VdhId, temp.1157,
	add	r2, r0, #458752	@, tmp771,
	mov	r1, #604	@,
	ldr	r0, .L190	@,
	str	r3, [r4, #1412]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L172	@
.L177:
	add	sl, r6, sl, asl #4	@, tmp1305, tmp1214, tmp1217,
	mov	r4, #0	@ tmp1307,
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, tmp1307
	ldr	r0, [r7, #32]	@, <variable>.ChanId
	str	r4, [sl, #36]	@ tmp1307, <variable>.ErrRatio
	str	r4, [sl, #32]	@ tmp1307, <variable>.VdmStateMachine
	b	.L175	@
.L189:
	add	sl, sl, r5	@ tmp1175, tmp1475, VdhId
	mov	r6, #0	@ tmp1179,
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r6	@, tmp1179
	add	r7, r4, sl, asl #4	@, tmp1196, tmp1473, tmp1175,
	mov	sl, r7	@ tmp1177, tmp1196
	add	r7, r7, #8	@ tmp1197, tmp1196,
	str	r6, [sl, #36]	@ tmp1179, <variable>.ErrRatio
	ldr	r0, [r7, #32]	@, <variable>.ChanId
	str	r6, [sl, #32]	@ tmp1179, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r7, #32]	@ <variable>.ChanId, <variable>.ChanId
	b	.L176	@
.L183:
	add	lr, r7, r8, asl #4	@, tmp535, tmp483, tmp487,
	mov	r4, #0	@ tmp518,
	add	r8, lr, #8	@ tmp536, tmp535,
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, tmp518
	str	r4, [r6, #36]	@ tmp518, <variable>.ErrRatio
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	str	r4, [r6, #32]	@ tmp518, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r8, #32]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #4	@ tmp550, <variable>.ChanId,
	str	r4, [r7, r1, asl #2]	@ tmp518, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L172	@
.L184:
	add	r8, r7, r8, asl #4	@, tmp587, tmp483, tmp487,
	mov	r4, #0	@ tmp570,
	add	r8, r8, #8	@ tmp588, tmp587,
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, tmp570
	str	r4, [r6, #36]	@ tmp570, <variable>.ErrRatio
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	b	.L174	@
.L157:
	ldr	r3, [r3, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	ble	.L156	@,
	str	r2, [fp, #-52]	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp817,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp817,
	ldr	ip, [r1, #80]	@ temp.1160, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ temp.1160,
	str	r0, [r8, #36]	@, <variable>.StartTime
	ldr	r2, [fp, #-52]	@,
	beq	.L164	@,
	ldr	r0, [r6, #36]	@, <variable>.VidStd
	mov	r3, r5	@, VdhId
	ldr	r1, [r8, #32]	@, <variable>.pDecParam
	blx	ip	@ temp.1160
	cmp	r0, #0	@,
	bne	.L164	@,
	ldr	lr, [r8, #36]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp839,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp839,
	mov	r0, #3	@,
	add	ip, r2, r5, asl #6	@, tmp842, tmp839, VdhId,
	mov	r1, r5	@, VdhId
	str	lr, [ip, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L172	@,
	bl	OSAL_GetTimeInMs	@
	add	r1, sl, r5	@ tmp857, tmp1475, VdhId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp871,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp871,
	mov	r3, r0	@ currtime.1164,
	add	r0, r4, r1, asl #4	@, tmp861, tmp1473, tmp857,
	ldr	r1, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r0, #40]	@ temp.1165, <variable>.ChanId
	add	r4, r4, r2, asl #2	@, tmp867, tmp1473, temp.1165,
	ldr	ip, [r4, #1412]	@ tmp870, last_rec_pos_time
	rsb	r0, ip, r3	@ tmp869, tmp870, currtime.1164
	cmp	r0, r1	@ tmp869, g_TraceFramePeriod
	bls	.L172	@,
	add	lr, r5, r2, asl #24	@, tmp881, VdhId, temp.1165,
	ldr	r0, .L190	@,
	add	r2, lr, #458752	@, tmp881,
	mov	r1, #632	@,
	str	r3, [r4, #1412]	@ currtime.1164, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L172	@
.L191:
	.align	2
.L190:
	.word	.LANCHOR1+20
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_VdmIntServProc
	.type	VDMDRV_VdmIntServProc, %function
VDMDRV_VdmIntServProc:
	.fnstart
.LFB1365:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp572,
	movt	r5, #:upper16:.LANCHOR0	@ tmp572,
	mov	r4, r0	@ VdhId, VdhId
	add	r0, r5, #1408	@, tmp572,
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp570,
	add	r0, r0, #12	@,,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp570,
	mov	r3, #15	@ tmp149,
	str	r3, [fp, #-48]	@ tmp149, Mb0QpInCurrPic
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r6, #56]	@ D.35957, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckInt
	cmp	r3, #0	@ D.35957,
	beq	.L213	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35957
	tst	r0, #1	@,
	beq	.L213	@,
	ldr	r3, [r6, #88]	@ D.35965, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	mov	r7, r4, asl #2	@ tmp567, VdhId,
	add	r2, r7, r5	@ tmp163, tmp567, tmp572
	mov	r1, #1	@ tmp165,
	cmp	r3, #0	@ D.35965,
	str	r1, [r2, #28]	@ tmp165, s_VdmIsInISR
	beq	.L196	@,
	sub	r0, fp, #48	@,,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.35965
	ldr	r3, [r6, #44]	@ D.35970, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.35970,
	beq	.L198	@,
.L220:
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35970
.L199:
	mov	r0, #6	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	r6, r4, asl #1	@ tmp566, VdhId,
	bne	.L214	@,
.L200:
	add	r1, r6, r4	@ tmp204, tmp566, VdhId
	movw	r9, #:lower16:.LANCHOR0	@ tmp200,
	movt	r9, #:upper16:.LANCHOR0	@ tmp200,
	add	r3, r5, r1, asl #4	@, tmp206, tmp572, tmp204,
	ldr	ip, [r3, #76]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	cmp	ip, #1	@ <variable>.ChanResetFlag,
	beq	.L215	@,
	mov	r8, #180	@ tmp258,
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp574,
	mla	r1, r8, r4, r9	@ tmp259, tmp258, VdhId, tmp200
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp574,
	mov	r8, r4, asl #6	@ tmp569, VdhId,
	add	r3, r7, r9	@ tmp248, tmp567, tmp200
	add	r9, r8, sl	@ tmp267, tmp569, tmp574
	ldr	lr, [r3, #1476]	@ tmp261, cycle
	ldr	ip, [r9, #4]	@ <variable>.u32VaLastStartTime, <variable>.u32VaLastStartTime
	ldr	r2, [r1, #1256]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	cmp	ip, #0	@ <variable>.u32VaLastStartTime,
	add	r0, lr, r2	@ tmp263, tmp261, <variable>.DecCyclePerPic
	str	r0, [r3, #1476]	@ tmp263, cycle
	bne	.L216	@,
.L202:
	add	sl, r6, r4	@ tmp388, tmp566, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp384,
	movt	r8, #:upper16:.LANCHOR0	@ tmp384,
	add	r0, r5, sl, asl #4	@, tmp390, tmp572, tmp388,
	ldr	r2, [r0, #32]	@ D.36016, <variable>.VdmStateMachine
	cmp	r2, #0	@ D.36016,
	beq	.L205	@,
	add	r1, r8, sl, asl #4	@, tmp399, tmp384, tmp388,
	ldr	r0, [r1, #48]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r0, #0	@ <variable>.pDecParam,
	beq	.L217	@,
.L205:
	add	r9, r6, r4	@ tmp456, tmp566, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp453,
	movt	r8, #:upper16:.LANCHOR0	@ tmp453,
	add	sl, r5, r9, asl #4	@, tmp460, tmp572, tmp456,
	add	sl, sl, #8	@ tmp461, tmp460,
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L218	@,
	ldr	r0, [sl, #32]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	subs	r3, r0, #0	@ D.36031,
	beq	.L219	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L208:
	add	r4, r6, r4	@ tmp554, tmp566, VdhId
	add	r7, r7, r5	@ tmp548, tmp567, tmp572
	mov	lr, #0	@ tmp550,
	add	r5, r5, r4, asl #4	@, tmp558, tmp572, tmp554,
	str	lr, [r7, #28]	@ tmp550, s_VdmIsInISR
	ldr	r0, [r5, #40]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
.L213:
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L221	@,
	bl	OSAL_SpinUnLockIRQ	@
.L210:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L218:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, [sl, #32]	@, <variable>.ChanId
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, #32]	@ <variable>.ChanId, <variable>.ChanId
	add	r9, r8, r9, asl #4	@, tmp496, tmp453, tmp456,
	mov	r0, #0	@ tmp489,
	add	r1, r3, #4	@ tmp487, <variable>.ChanId,
	str	r0, [r8, r1, asl #2]	@ tmp489, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [r9, #32]	@ tmp489, <variable>.VdmStateMachine
	b	.L208	@
.L214:
	bl	OSAL_GetTimeInMs	@
	mov	r6, r4, asl #1	@ tmp566, VdhId,
	add	r9, r6, r4	@ tmp174, tmp566, VdhId
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp188,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp188,
	add	r2, r5, r9, asl #4	@, tmp178, tmp572, tmp174,
	ldr	r1, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r2, #40]	@ D.35978, <variable>.ChanId
	add	r3, r5, r2, asl #2	@, tmp184, tmp572, D.35978,
	mov	ip, r0	@ currtime,
	ldr	r0, [r3, #1468]	@ tmp187, last_rec_pos_time
	rsb	r9, r0, ip	@ tmp186, tmp187, currtime
	cmp	r9, r1	@ tmp186, g_TraceFramePeriod
	bls	.L200	@,
	add	lr, r4, r2, asl #24	@, tmp198, VdhId, D.35978,
	ldr	r0, .L221+4	@,
	add	r2, lr, #393216	@, tmp198,
	movw	r1, #1049	@,
	str	ip, [r3, #1468]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L200	@
.L216:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sl, r4, asl #6]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	r3, [r9, #4]	@ prephitmp.1246, <variable>.u32VaLastStartTime
	mov	r9, r4, asl #3	@ tmp568, VdhId,
	add	ip, r1, #49920	@ tmp276, <variable>.u32VaBeginTime,
	add	r8, r8, sl	@ tmp300, tmp569, tmp574
	add	r2, ip, #80	@ tmp276, tmp276,
	cmp	r2, r3	@ tmp276, prephitmp.1246
	strcc	r3, [sl, r4, asl #6]	@ prephitmp.1246, <variable>.u32VaBeginTime
	addcc	r1, r9, #1	@ tmp285, tmp568,
	addcs	r2, r9, #1	@ tmp281, tmp568,
	movcc	r2, #0	@ tmp286,
	add	r9, r9, #1	@ tmp294, tmp568,
	strcc	r2, [sl, r1, asl #3]	@ tmp286, <variable>.u32VaVdmWorkTime
	mov	r1, #180	@ tmp311,
	mla	r1, r1, r4, r5	@ tmp312, tmp311, VdhId, tmp572
	ldrcs	ip, [sl, r2, asl #3]	@ prephitmp.1273, <variable>.u32VaVdmWorkTime
	movcc	ip, r2	@ prephitmp.1273, tmp286
	ldr	r2, [sl, r4, asl #6]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	lr, [r8, #48]	@ <variable>.u32PicNum, <variable>.u32PicNum
	rsb	r2, r2, r0	@ Period, <variable>.u32VaBeginTime, CurTime
	add	r0, ip, r0	@ tmp295, prephitmp.1273, CurTime
	rsb	r0, r3, r0	@ tmp296, prephitmp.1246, tmp295
	str	r0, [sl, r9, asl #3]	@ tmp296, <variable>.u32VaVdmWorkTime
	ldr	r1, [r1, #1256]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	cmp	r2, #1000	@ Period,
	ldr	ip, [r8, #52]	@, <variable>.u32AccVdmKiloCycle
	add	sl, lr, #1	@ tmp334, <variable>.u32PicNum,
	mov	r3, #0	@ tmp302,
	str	sl, [r8, #48]	@ tmp334, <variable>.u32PicNum
	add	lr, ip, r1, lsr #10	@,,, <variable>.DecCyclePerPic,
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp292,
	str	lr, [fp, #-56]	@, %sfp
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp292,
	str	r3, [r8, #4]	@ tmp302, <variable>.u32VaLastStartTime
	str	lr, [r8, #52]	@, <variable>.u32AccVdmKiloCycle
	bcc	.L202	@,
	mov	ip, #1000	@ tmp350,
	mov	r1, r2	@, Period
	mul	r0, ip, r0	@, tmp350, tmp296
	str	r3, [fp, #-60]	@,
	str	r2, [fp, #-64]	@,
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-60]	@,
	add	r9, sl, r9, asl #3	@, tmp343, tmp292, tmp294,
	str	r3, [r8, #48]	@ tmp302, <variable>.u32PicNum
	str	r3, [sl, r4, asl #6]	@ tmp302, <variable>.u32VaBeginTime
	ldr	lr, [fp, #-56]	@, %sfp
	str	lr, [r8, #56]	@, <variable>.u32VaVdmKiloCycle
	ldr	sl, [fp, #-64]	@,
	str	r3, [r8, #52]	@ tmp302, <variable>.u32AccVdmKiloCycle
	str	sl, [r8, #60]	@ Period, <variable>.u32StatTime
	str	r0, [r9, #4]	@, <variable>.u32VaVdmLoad
	b	.L202	@
.L196:
	mov	r0, r3	@, D.35965
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #995	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #44]	@ D.35970, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.35970,
	bne	.L220	@,
.L198:
	mov	r0, r3	@, D.35970
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1038	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L199	@
.L215:
	add	r1, r9, r1, asl #4	@, tmp226, tmp200, tmp204,
	mov	r2, #0	@ tmp217,
	movw	r0, #:lower16:g_TaskIrqLock	@,
	str	r2, [r3, #76]	@ tmp217, <variable>.ChanResetFlag
	ldr	ip, [r1, #40]	@ <variable>.ChanId, <variable>.ChanId
	movt	r0, #:upper16:g_TaskIrqLock	@,
	add	lr, ip, #4	@ tmp229, <variable>.ChanId,
	str	r2, [r9, lr, asl #2]	@ tmp217, g_ChanCtx.ChanDecByVdhPlusOne
	str	r2, [r3, #32]	@ tmp217, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, r9, #1408	@, tmp200,
	add	r0, r1, #12	@,,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L210	@
.L219:
	ldr	r2, [sl, #32]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	r3, [fp, #-60]	@,
	bl	dprint_vfmw	@
	ldr	r0, [sl, #32]	@ <variable>.ChanId, <variable>.ChanId
	ldr	ip, [fp, #-60]	@,
	add	r9, r8, r9, asl #4	@, tmp542, tmp453, tmp456,
	add	r2, r0, #4	@ tmp533, <variable>.ChanId,
	str	ip, [r8, r2, asl #2]	@ D.36031, g_ChanCtx.ChanDecByVdhPlusOne
	str	ip, [r9, #32]	@ D.36031, <variable>.VdmStateMachine
	b	.L208	@
.L217:
	add	r8, r8, sl, asl #4	@, tmp410, tmp384, tmp388,
	movw	r1, #:lower16:.LC14	@,
	add	r8, r8, #8	@ tmp411, tmp410,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L206	@,
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	mov	r1, #100	@,
	ldr	r2, [fp, #-48]	@, Mb0QpInCurrPic
	bl	VCTRL_VdmPostProc	@
.L206:
	add	r4, r6, r4	@ tmp430, tmp566, VdhId
	mov	r3, #0	@ tmp439,
	movw	r0, #:lower16:g_TaskIrqLock	@,
	movt	r0, #:upper16:g_TaskIrqLock	@,
	add	ip, r5, r4, asl #4	@, tmp434, tmp572, tmp430,
	ldr	lr, [ip, #40]	@ <variable>.ChanId, <variable>.ChanId
	mov	r4, ip	@ tmp446, tmp434
	add	r2, lr, #4	@ tmp437, <variable>.ChanId,
	str	r3, [r5, r2, asl #2]	@ tmp439, g_ChanCtx.ChanDecByVdhPlusOne
	str	r3, [ip, #32]	@ tmp439, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L221	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L210	@
.L222:
	.align	2
.L221:
	.word	.LANCHOR0+1420
	.word	.LANCHOR1+36
	.fnend
	.size	VDMDRV_VdmIntServProc, .-VDMDRV_VdmIntServProc
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1364:
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
	mov	r6, r0, asl #1	@ tmp577, VdhId,
	add	r7, r6, r0	@ tmp157, tmp577, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp578,
	movt	r4, #:upper16:.LANCHOR0	@ tmp578,
	mov	r5, r0	@ VdhId, VdhId
	add	r3, r4, r7, asl #4	@, tmp161, tmp578, tmp157,
	ldr	r0, [r3, #40]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L245	@,
.L224:
	add	r8, r6, r5	@ tmp222, tmp577, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp218,
	movt	r7, #:upper16:.LANCHOR0	@ tmp218,
	add	sl, r4, r8, asl #4	@, tmp224, tmp578, tmp222,
	ldr	lr, [sl, #32]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	lr, #0	@ <variable>.VdmStateMachine,
	bne	.L246	@,
.L225:
	add	r7, r6, r5	@ tmp340, tmp577, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp336,
	movt	r3, #:upper16:.LANCHOR0	@ tmp336,
	add	r7, r4, r7, asl #4	@, tmp342, tmp578, tmp340,
	ldr	r0, [r7, #60]	@ <variable>.H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	r0, #1	@ <variable>.H264NeedMoreStart,
	beq	.L247	@,
	add	r5, r3, r5, asl #2	@, tmp568, tmp336, VdhId,
	ldr	r0, [r5, #24]	@ D.35934, s_eVdmDrvSleepState
	cmp	r0, #0	@ D.35934,
	beq	.L230	@,
	cmp	r0, #1	@ D.35934,
	moveq	r3, #2	@ tmp575,
	streq	r3, [r5, #24]	@ tmp575, s_eVdmDrvSleepState
	beq	.L230	@,
.L231:
	mov	r0, #1	@ D.35899,
.L230:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L246:
	bl	OSAL_GetTimeInMs	@
	add	r1, r8, #1	@ tmp239, tmp222,
	add	r2, r7, r1, asl #4	@, tmp242, tmp218, tmp239,
	ldr	r1, [r2, #36]	@ D.35877, <variable>.StartTime
	cmp	r0, r1	@ D.35875, D.35877
	mov	r3, r0	@ D.35875,
	str	r0, [sl, #56]	@ D.35875, <variable>.CurrTime
	strcc	r0, [r2, #36]	@ D.35875, <variable>.StartTime
	movcc	r0, #1	@ D.35899,
	bcc	.L230	@,
	subs	r2, r3, r1	@ TimeElapse, D.35875, D.35877
	bmi	.L228	@,
	cmp	r1, #0	@ D.35877,
	beq	.L228	@,
	cmp	r2, #500	@ TimeElapse,
	bls	.L231	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp263,
	movt	r3, #:upper16:g_event_report	@ tmp263,
	ldr	r3, [r3, #0]	@ g_event_report.456, g_event_report
	cmp	r3, #0	@ g_event_report.456,
	beq	.L232	@,
	add	r7, r7, r8, asl #4	@, tmp271, tmp218, tmp222,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [r7, #40]	@, <variable>.ChanId
	blx	r3	@ g_event_report.456
.L232:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp275,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp275,
	ldr	r3, [r0, #36]	@ D.35891, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35891,
	beq	.L233	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.35891
.L234:
	add	r6, r6, r5	@ tmp281, tmp577, VdhId
	mov	r7, #1	@ tmp285,
	movw	r3, #:lower16:.LANCHOR0	@ tmp277,
	movt	r3, #:upper16:.LANCHOR0	@ tmp277,
	add	r4, r4, r6, asl #4	@, tmp283, tmp578, tmp281,
	ldr	ip, [r4, #76]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #68]	@ tmp285, <variable>.VdmTimeOut
	cmp	ip, r7	@ <variable>.ChanResetFlag,
	bne	.L235	@,
	add	r6, r3, r6, asl #4	@, tmp330, tmp277, tmp281,
	mov	r2, #0	@ tmp303,
	mov	r0, r2	@ D.35899, tmp303
	str	r2, [r4, #68]	@ tmp303, <variable>.VdmTimeOut
	ldr	r1, [r6, #40]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #76]	@ tmp303, <variable>.ChanResetFlag
	add	lr, r1, #4	@ tmp333, <variable>.ChanId,
	str	r2, [r4, #32]	@ tmp303, <variable>.VdmStateMachine
	str	r2, [r3, lr, asl #2]	@ tmp303, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L230	@
.L247:
	ldr	r9, [r7, #72]	@ <variable>.LastWaitMoreStartTime, <variable>.LastWaitMoreStartTime
	cmp	r9, #0	@ <variable>.LastWaitMoreStartTime,
	beq	.L248	@,
.L237:
	add	r9, r6, r5	@ tmp365, tmp577, VdhId
	mov	ip, #0	@ tmp371,
	add	lr, r9, #1	@ tmp366, tmp365,
	movw	sl, #:lower16:.LANCHOR0	@ tmp362,
	add	r8, r4, r9, asl #4	@, tmp379, tmp578, tmp365,
	movt	sl, #:upper16:.LANCHOR0	@ tmp362,
	add	r7, r4, lr, asl #4	@, tmp369, tmp578, tmp366,
	add	r8, r8, #8	@ tmp380, tmp379,
	str	ip, [r7, #32]	@ tmp371, <variable>.pDecParam
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	str	ip, [fp, #-48]	@,
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35907,
	str	r0, [r7, #32]	@ D.35907, <variable>.pDecParam
	ldr	r3, [fp, #-48]	@,
	beq	.L238	@,
	add	sl, sl, r9, asl #4	@, tmp398, tmp362, tmp365,
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	str	r3, [sl, #72]	@ tmp371, <variable>.LastWaitMoreStartTime
	bl	VCTRL_GetVidStd	@
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp422,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp422,
	ldr	r3, [r2, #68]	@ D.35915, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.35915,
	str	r0, [r8, #36]	@, <variable>.VidStd
	beq	.L239	@,
	ldr	r1, [r7, #32]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	blx	r3	@ D.35915
	cmp	r0, #0	@,
	beq	.L240	@,
.L239:
	add	r5, r6, r5	@ tmp438, tmp577, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r7, r0	@ tmp442,
	bl	dprint_vfmw	@
	add	r0, r4, r5, asl #4	@, tmp459, tmp578, tmp438,
	mov	r1, r7	@, tmp442
	add	r8, r0, #8	@ tmp460, tmp459,
	mov	r2, #15	@,
	mov	r5, r0	@ tmp440, tmp459
	str	r7, [r0, #36]	@ tmp442, <variable>.ErrRatio
	str	r7, [r5, #32]	@ tmp442, <variable>.VdmStateMachine
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r8, #32]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #1	@ D.35899,
	add	r1, r3, #4	@ tmp474, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp442, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L230	@
.L245:
	add	r7, r4, r7, asl #4	@, tmp171, tmp578, tmp157,
	ldr	r0, [r7, #32]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r0, #0	@ <variable>.VdmStateMachine,
	beq	.L225	@,
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp174,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp174,
	ldr	r3, [r1, #76]	@ D.35867, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.35867,
	beq	.L226	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.35867
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp183,
	strne	r3, [r7, #76]	@ tmp183, <variable>.ChanResetFlag
	bne	.L224	@,
.L226:
	add	sl, r6, r5	@ tmp188, tmp577, VdhId
	movw	r1, #807	@,
	ldr	r0, .L249	@,
	mov	r7, #0	@ tmp192,
	add	ip, r4, sl, asl #4	@, tmp190, tmp578, tmp188,
	add	r8, r4, sl, asl #4	@, tmp212, tmp578, tmp188,
	ldr	r2, [ip, #32]	@, <variable>.VdmStateMachine
	str	r7, [ip, #76]	@ tmp192, <variable>.ChanResetFlag
	bl	DBG_AddTrace	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	sl, [r8, #40]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, sl, #4	@ tmp215, <variable>.ChanId,
	str	r7, [r4, r2, asl #2]	@ tmp192, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L224	@
.L228:
	add	r5, r6, r5	@ tmp247, tmp577, VdhId
	mov	r0, #1	@ D.35899,
	add	r4, r4, r5, asl #4	@, tmp251, tmp578, tmp247,
	str	r3, [r4, #52]	@ D.35875, <variable>.StartTime
	b	.L230	@
.L235:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.35899, tmp285
	b	.L230	@
.L248:
	bl	OSAL_GetTimeInMs	@
	str	r0, [r7, #72]	@, <variable>.LastWaitMoreStartTime
	b	.L237	@
.L240:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp486,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp486,
	add	ip, r2, r5, asl #6	@, tmp489, tmp486, VdhId,
	mov	r1, r0	@ D.35922,
	mov	r0, r5	@, VdhId
	str	r1, [r7, #36]	@ D.35922, <variable>.StartTime
	str	r1, [ip, #4]	@ D.35922, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	ldr	r0, [r8, #32]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #1	@ D.35899,
	b	.L230	@
.L238:
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	add	sl, sl, r9, asl #4	@, tmp509, tmp362, tmp365,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sl, #72]	@ temp.1308, <variable>.LastWaitMoreStartTime
	cmp	r0, r3	@ CurTime, temp.1308
	rsbcc	r3, r0, r3	@ tmp511, CurTime, temp.1308
	rsbcs	r3, r3, r0	@ TimeDiff, temp.1308, CurTime
	mvncc	r3, r3	@ TimeDiff, tmp511
	cmp	r3, #200	@ TimeDiff,
	bls	.L231	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	mov	r7, r0	@ tmp521,
	bl	dprint_vfmw	@
	add	ip, r6, r5	@ tmp517, tmp577, VdhId
	mov	r0, #100	@ tmp539,
	mov	r2, #15	@,
	add	r5, r4, ip, asl #4	@, tmp547, tmp578, tmp517,
	mov	r1, r0	@, tmp539
	mov	r3, r5	@ tmp519, tmp547
	add	r5, r5, #8	@ tmp548, tmp547,
	str	r0, [r3, #36]	@ tmp539, <variable>.ErrRatio
	str	r7, [r3, #72]	@ tmp521, <variable>.LastWaitMoreStartTime
	ldr	r0, [r5, #32]	@, <variable>.ChanId
	str	r7, [r3, #32]	@ tmp521, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r1, [r5, #32]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #1	@ D.35899,
	add	ip, r1, #4	@ tmp562, <variable>.ChanId,
	str	r7, [r4, ip, asl #2]	@ tmp521, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L230	@
.L233:
	mov	r0, r3	@, D.35891
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #845	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L234	@
.L250:
	.align	2
.L249:
	.word	.LANCHOR1+60
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1367:
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
	sub	r4, fp, #24	@ tmp136,,
	mov	r0, r4	@, tmp136
	bl	OSAL_LockIRQ	@
	mov	r0, #0	@,
	bl	VDMDRV_CheckDevice	@
	cmp	r0, #0	@,
	beq	.L254	@,
.L252:
	mov	r0, r4	@, tmp136
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L254:
	bl	VDMDRV_ActivateVDH	@
	b	.L252	@
	.fnend
	.size	VDMDRV_WakeUpVdm, .-VDMDRV_WakeUpVdm
	.align	2
	.global	VDMDRV_ForeceSleep
	.type	VDMDRV_ForeceSleep, %function
VDMDRV_ForeceSleep:
	.fnstart
.LFB1355:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	mov	r6, r0	@ VdhId, VdhId
	sub	r4, fp, #32	@ tmp149,,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r5, r5, r6, asl #2	@, tmp138, tmp135, VdhId,
	mov	r0, r4	@, tmp149
	bl	OSAL_LockIRQ	@
	ldr	r3, [r5, #24]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L256	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #24]	@ tmp146, s_eVdmDrvSleepState
.L256:
	mov	r0, r4	@, tmp149
	bl	OSAL_UnLockIRQ	@
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3, #0]	@ D.35354, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35354,
	beq	.L259	@,
	blx	r3	@ D.35354
.L260:
	add	r2, r4, r4, asl #1	@, tmp141, VdhId, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	mov	r1, #48	@,
	add	ip, r5, #32	@ tmp138, tmp137,
	add	r4, r5, r4, asl #2	@, tmp147, tmp137, VdhId,
	add	r0, ip, r2, asl #4	@,, tmp138, tmp141,
	bl	__memzero	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #24]	@ tmp149, s_eVdmDrvSleepState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L259:
	mov	r0, r3	@, D.35354
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #90	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L260	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	g_HwMem
	.global	g_UpMsg
	.global	g_RepairParam
	.global	g_DecReport
	.global	g_BackUp
	.global	g_VdmDrvParam
	.global	g_ChanCtx
	.global	g_SpinLockIsr
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35545, %object
	.size	__func__.35545, 19
__func__.35545:
	.ascii	"VDMDRV_ActivateVDH\000"
	.space	1
	.type	__func__.35673, %object
	.size	__func__.35673, 16
__func__.35673:
	.ascii	"VDMDRV_AfterDec\000"
	.type	__func__.35951, %object
	.size	__func__.35951, 22
__func__.35951:
	.ascii	"VDMDRV_VdmIntServProc\000"
	.space	2
	.type	__func__.35856, %object
	.size	__func__.35856, 19
__func__.35856:
	.ascii	"VDMDRV_CheckDevice\000"
	.data
	.align	2
	.type	CapItem, %object
	.size	CapItem, 756
CapItem:
	.word	176
	.word	144
	.word	4
	.word	10
	.word	11
	.word	12
	.word	524288
	.word	352
	.word	288
	.word	4
	.word	10
	.word	11
	.word	12
	.word	786432
	.word	720
	.word	576
	.word	4
	.word	10
	.word	11
	.word	12
	.word	1048576
	.word	1280
	.word	720
	.word	4
	.word	10
	.word	11
	.word	12
	.word	2097152
	.word	1920
	.word	1088
	.word	4
	.word	10
	.word	11
	.word	12
	.word	3145728
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	5632
	.word	4224
	.word	1
	.word	3
	.word	3
	.word	3
	.word	16777216
	.word	1280
	.word	800
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	800
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1488
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	1280
	.word	1488
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	2160
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	1280
	.word	2160
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	2160
	.word	2160
	.word	4
	.word	11
	.word	11
	.word	11
	.word	4194304
	.word	4096
	.word	2160
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	2160
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	4096
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	8388608
	.word	8192
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	4096
	.word	8192
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	8192
	.word	8192
	.word	1
	.word	3
	.word	3
	.word	3
	.word	20971520
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	17
	.word	26
	.word	26
	.word	26
	.word	2097152
	.type	USE_FF_APT_EN, %object
	.size	USE_FF_APT_EN, 4
USE_FF_APT_EN:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMDRV_IsVp6NvopCopy point of picture para null, wa"
	.ascii	"it forever!!!\012\000"
	.space	2
.LC1:
	.ascii	"VDMDRV_IsVc1SkpicCopy point of picture para null, w"
	.ascii	"ait forever!!!\012\000"
	.space	1
.LC2:
	.ascii	"VDMHAL_V200_IsMpeg4NvopCopy point of picture para n"
	.ascii	"ull, wait forever!!!\012\000"
	.space	3
.LC3:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC4:
	.ascii	"wait vdm time out\012\000"
	.space	1
.LC5:
	.ascii	"The channel %d is deced\012\000"
	.space	3
.LC6:
	.ascii	"The channel %d is not active\012\000"
	.space	2
.LC7:
	.ascii	"---SKIP REPAIR!---\012\000"
.LC8:
	.ascii	"VDM Start Fail 2 !\012\000"
.LC9:
	.ascii	"isr begin: *pVdmStateMachine = %d, timeout = %d, Er"
	.ascii	"rRatio = %d\012\000"
.LC10:
	.ascii	"ISR process vdm timeout!\012\000"
	.space	2
.LC11:
	.ascii	"*pErrRatio = %d\012\000"
	.space	3
.LC12:
	.ascii	"*pH264NeedMoreStart, *pH264FinishedMultiStart = %d,"
	.ascii	"%d\012\000"
	.space	1
.LC13:
	.ascii	"VdmStateMachine=%d Error!\012\000"
	.space	1
.LC14:
	.ascii	"vdm state machine = %d, but DecParam is null!\012\000"
	.space	1
.LC15:
	.ascii	"ISR called but chan %d is not active!\012\000"
	.space	1
.LC16:
	.ascii	"Vdm Time Out(%d ms), Reset Vdm!\012\000"
	.space	3
.LC17:
	.ascii	"VDM Start Fail 1 !\012\000"
.LC18:
	.ascii	"h264 more start need parameter\012\000"
.LC19:
	.ascii	"wait more start time out!\012\000"
	.space	1
.LC20:
	.ascii	"====== forece VDM sleep! ======\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_ChanCtx, %object
	.size	g_ChanCtx, 24
g_ChanCtx:
	.space	24
	.type	s_eVdmDrvSleepState, %object
	.size	s_eVdmDrvSleepState, 4
s_eVdmDrvSleepState:
	.space	4
	.type	s_VdmIsInISR, %object
	.size	s_VdmIsInISR, 4
s_VdmIsInISR:
	.space	4
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 48
g_VdmDrvParam:
	.space	48
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
	.type	last_rec_pos_time.35539, %object
	.size	last_rec_pos_time.35539, 8
last_rec_pos_time.35539:
	.space	8
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	last_rec_pos_time.35669, %object
	.size	last_rec_pos_time.35669, 8
last_rec_pos_time.35669:
	.space	8
	.type	g_SpinLockIsr, %object
	.size	g_SpinLockIsr, 48
g_SpinLockIsr:
	.space	48
	.type	last_rec_pos_time.35949, %object
	.size	last_rec_pos_time.35949, 8
last_rec_pos_time.35949:
	.space	8
	.type	cycle.35948, %object
	.size	cycle.35948, 8
cycle.35948:
	.space	8
	.type	g_HwMem, %object
	.size	g_HwMem, 1148
g_HwMem:
	.space	1148
	.type	g_UpMsg, %object
	.size	g_UpMsg, 2048
g_UpMsg:
	.space	2048
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
