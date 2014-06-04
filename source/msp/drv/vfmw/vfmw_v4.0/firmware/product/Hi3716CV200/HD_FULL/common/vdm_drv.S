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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
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
.LFB1361:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp198,
	movt	r2, #:upper16:.LANCHOR0	@ tmp198,
	mov	r3, #0	@ i,
	mov	ip, r3	@ MaxPrioChanID, i
	mov	r6, r3	@ MaxPrio.540, i
	mov	r4, r2	@ ivtmp.537, tmp198
	b	.L2	@
.L3:
	add	r3, r3, #1	@ i, i,
	str	ip, [r4, #64]	@ MaxPrioChanID,
	cmp	r3, #16	@ i,
	str	r6, [r0, ip, asl #2]	@ MaxPrio.540,* pPrioArray
	add	r4, r4, #4	@ ivtmp.537, ivtmp.537,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2:
	ldmia	r0, {r1, r5}	@ phole ldm
	cmp	r1, #0	@ MaxPrio.540,
	movle	r1, #0	@ MaxPrio.540,
	movgt	ip, #0	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.542
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.542
	ldr	r5, [r0, #8]	@ MaxPrio.544,
	movlt	ip, #1	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.544
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.544
	ldr	r5, [r0, #12]	@ MaxPrio.546,
	movlt	ip, #2	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.546
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.546
	ldr	r5, [r0, #16]	@ MaxPrio.548,
	movlt	ip, #3	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.548
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.548
	ldr	r5, [r0, #20]	@ MaxPrio.550,
	movlt	ip, #4	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.550
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.550
	ldr	r5, [r0, #24]	@ MaxPrio.552,
	movlt	ip, #5	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.552
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.552
	ldr	r5, [r0, #28]	@ MaxPrio.554,
	movlt	ip, #6	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.554
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.554
	ldr	r5, [r0, #32]	@ MaxPrio.556,
	movlt	ip, #7	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.556
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.556
	ldr	r5, [r0, #36]	@ MaxPrio.558,
	movlt	ip, #8	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.558
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.558
	ldr	r5, [r0, #40]	@ MaxPrio.560,
	movlt	ip, #9	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.560
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.560
	ldr	r5, [r0, #44]	@ MaxPrio.562,
	movlt	ip, #10	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.562
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.562
	ldr	r5, [r0, #48]	@ MaxPrio.564,
	movlt	ip, #11	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.564
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.564
	ldr	r5, [r0, #52]	@ MaxPrio.566,
	movlt	ip, #12	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.566
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.566
	ldr	r5, [r0, #56]	@ MaxPrio.568,
	movlt	ip, #13	@ MaxPrioChanID,
	cmp	r1, r5	@ MaxPrio.540, MaxPrio.568
	movlt	r1, r5	@ MaxPrio.540, MaxPrio.568
	ldr	r5, [r0, #60]	@ MaxPrio,
	movlt	ip, #14	@ MaxPrioChanID,
	cmp	r5, r1	@ MaxPrio, MaxPrio.540
	movgt	r1, r5	@ MaxPrio.540, MaxPrio
	movgt	ip, #15	@ MaxPrioChanID,
	cmp	r1, #0	@ MaxPrio.540,
	bgt	.L3	@,
	cmp	r3, #15	@ i,
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r3, asl #2	@ ivtmp.520, i,
	add	r1, r3, #1	@ j.539, i,
	add	r4, r0, r2	@ tmp194, ivtmp.520, tmp198
	cmp	r1, #15	@ j.539,
	rsb	r3, r3, #15	@ tmp208, i,
	mvn	ip, #0	@ tmp199,
	add	r0, r0, #4	@ ivtmp.520, ivtmp.520,
	and	r3, r3, #1	@ tmp209, tmp208,
	str	ip, [r4, #64]	@ tmp199,
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r3, #0	@ tmp209,
	beq	.L5	@,
	add	r1, r1, #1	@ j.539, j.539,
	add	r3, r0, r2	@ tmp222, ivtmp.520, tmp198
	cmp	r1, #15	@ j.539,
	add	r0, r0, #4	@ ivtmp.520, ivtmp.520,
	str	ip, [r3, #64]	@ tmp199,
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L5:
	add	r3, r0, #4	@ tmp211, ivtmp.520,
	add	r1, r1, #2	@ j.539, j.539,
	add	r5, r0, r2	@ tmp214, ivtmp.520, tmp198
	add	r4, r3, r2	@ tmp219, tmp211, tmp198
	cmp	r1, #15	@ j.539,
	add	r0, r3, #4	@ ivtmp.520, tmp211,
	str	ip, [r5, #64]	@ tmp199,
	str	ip, [r4, #64]	@ tmp199,
	ble	.L5	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_SetPriority, .-VDMDRV_SetPriority
	.align	2
	.global	VDMDRV_AdjustPriorityAfterDec
	.type	VDMDRV_AdjustPriorityAfterDec, %function
VDMDRV_AdjustPriorityAfterDec:
	.fnstart
.LFB1362:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp189,
	movt	r3, #:upper16:.LANCHOR0	@ tmp189,
	ldr	r2, [r3, #64]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #0	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r1, [r3, #68]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #1	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r8, [r3, #72]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r8, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #2	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	ip, [r3, #76]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #3	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r2, [r3, #80]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #4	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r1, [r3, #84]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #5	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r8, [r3, #88]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r8, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #6	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	ip, [r3, #92]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #7	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r2, [r3, #96]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #8	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r1, [r3, #100]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #9	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	ip, [r3, #104]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	movw	r8, #:lower16:.LANCHOR0	@ tmp162,
	movt	r8, #:upper16:.LANCHOR0	@ tmp162,
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #10	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r2, [r8, #108]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #11	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r1, [r8, #112]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #12	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	ip, [r8, #116]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #13	@ i.424,
	moveq	r4, r6	@ i, i.424
	beq	.L34	@,
	ldr	r2, [r8, #120]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L48	@,
	ldr	r1, [r8, #124]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L54	@,
	mov	r6, #0	@ i.424,
	add	r8, r8, #68	@ D.35386, tmp162,
	mov	r4, r6	@ i, i.424
	b	.L53	@
.L52:
	ldr	ip, [r2, r1]	@ D.35387,* ivtmp.620
	add	r1, r5, #4	@ ivtmp.620, tmp192,
	cmp	ip, #0	@ D.35387,
	blt	.L54	@,
	ldr	r7, [r2, r0, asl #2]	@ temp.622,
	ldr	sl, [r3, ip, asl #2]	@,
	ldr	r9, [r3, r7, asl #2]	@,
	cmp	sl, r9	@,
	strge	ip, [r2, r0, asl #2]	@ D.35387,
	ldrge	sl, [fp, #-48]	@, %sfp
	strge	r7, [sl, #0]	@ temp.622,
	ldr	ip, [r2, r5]	@ D.35387,
	cmp	ip, #0	@ D.35387,
	blt	.L54	@,
.L50:
	ldr	r7, [r2, r6, asl #2]	@ temp.622,
	add	r9, r2, r1	@, tmp188, ivtmp.620
	str	r9, [fp, #-48]	@, %sfp
	add	r0, r4, #1	@ tmp193, i,
	ldr	sl, [r3, ip, asl #2]	@,
	add	r4, r0, #1	@ i, tmp193,
	ldr	r9, [r3, r7, asl #2]	@,
	add	r5, r1, #4	@ tmp192, ivtmp.620,
	cmp	sl, r9	@,
	strge	ip, [r2, r6, asl #2]	@ D.35387,
	strge	r7, [r8, #0]	@ temp.622,* D.35386
	cmp	r0, #14	@ tmp193,
	mov	r6, r4	@ i.424, i
	add	r8, r2, r5	@ D.35386, tmp188, tmp192
	ble	.L52	@,
.L54:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L48:
	mov	r6, #14	@ i.424,
	mov	r4, r6	@ i, i.424
.L34:
	add	r8, r6, #1	@ pretmp.603, i.424,
	ldr	ip, .L64	@ tmp199,
	add	r8, ip, r8, asl #2	@, D.35386, tmp199, pretmp.603,
.L53:
	ldr	ip, [r8, #0]	@ D.35387,* D.35386
	cmp	ip, #0	@ D.35387,
	blt	.L54	@,
	add	r0, r6, #2	@ tmp175, i.424,
	tst	r4, #1	@ i,
	ldr	r2, .L64	@ tmp188,
	mov	r1, r0, asl #2	@ ivtmp.620, tmp175,
	beq	.L50	@,
	add	r6, r2, r6, asl #2	@, D.35379, tmp188, i.424,
	ldr	r7, [r3, ip, asl #2]	@ tmp203,
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r6, #0]	@ temp.622,* D.35379
	ldr	r5, [r3, r0, asl #2]	@ tmp204,
	cmp	r7, r5	@ tmp203, tmp204
	strge	ip, [r6, #0]	@ D.35387,* D.35379
	strge	r0, [r8, #0]	@ temp.622,* D.35386
	cmp	r4, #14	@ i,
	bgt	.L54	@,
	add	r8, r2, r1	@ D.35386, tmp188, ivtmp.620
	mov	r6, r4	@ i.424, i
	add	r1, r1, #4	@ ivtmp.620, ivtmp.620,
	ldr	ip, [r8, #0]	@ D.35387,* D.35386
	cmp	ip, #0	@ D.35387,
	bge	.L50	@,
	b	.L54	@
.L65:
	.align	2
.L64:
	.word	.LANCHOR0+64
	.fnend
	.size	VDMDRV_AdjustPriorityAfterDec, .-VDMDRV_AdjustPriorityAfterDec
	.align	2
	.global	VDMDRV_GetSleepStage
	.type	VDMDRV_GetSleepStage, %function
VDMDRV_GetSleepStage:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #192]	@, s_eVdmDrvSleepState
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_GetSleepStage, .-VDMDRV_GetSleepStage
	.align	2
	.global	VDMDRV_IsChanDec
	.type	VDMDRV_IsChanDec, %function
VDMDRV_IsChanDec:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r1, r0, #32	@ tmp137, ChanID,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	add	r2, r0, #32	@ tmp136, ChanID,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	add	r0, r0, #32	@ tmp135, ChanID,
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #196]	@, s_VdmIsInISR
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVdmInISR, .-VDMDRV_IsVdmInISR
	.align	2
	.global	VDMDRV_IsVdmIdle
	.type	VDMDRV_IsVdmIdle, %function
VDMDRV_IsVdmIdle:
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
	add	r2, r0, r0, asl #1	@, tmp140, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r2, asl #4	@, tmp142, tmp136, tmp140,
	ldr	r0, [r3, #200]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
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
	add	r0, r0, r0, asl #1	@, tmp139, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #4	@, tmp143, tmp136, tmp139,
	ldr	r0, [r3, #208]	@, <variable>.ChanId
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_GetCurrChanID, .-VDMDRV_GetCurrChanID
	.align	2
	.global	VDMDRV_H264NeedMoreStart
	.type	VDMDRV_H264NeedMoreStart, %function
VDMDRV_H264NeedMoreStart:
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
	cmp	r0, #0	@ VidStd,
	cmpne	r0, #15	@, VidStd,
	movne	r0, #0	@, tmp144
	moveq	r0, #1	@, tmp144
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r2, [r1, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	ip, [r1, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r3, [r1, #920]	@ <variable>.mbtodec, <variable>.mbtodec
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
	cmp	r0, #0	@ VidStd,
	cmpne	r0, #15	@, VidStd,
	bne	.L85	@,
	ldr	ip, [r1, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r0, [r1, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r3, [r1, #920]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r2, r0, ip	@ tmp145, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r2, r3	@ tmp145, <variable>.mbtodec
	bgt	.L85	@,
	ldrsb	r2, [r1, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	r0, r2, #1	@ H264FinishedMultiStart, <variable>.NewPicFlag
	movcc	r0, #0	@ H264FinishedMultiStart
	ldmfd	sp, {fp, sp, pc}	@
.L85:
	mov	r0, #0	@ H264FinishedMultiStart,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMDRV_H264FinishedMultiStart, .-VDMDRV_H264FinishedMultiStart
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
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
	cmp	r0, #6	@ VidStd,
	beq	.L92	@,
.L89:
	mov	r0, #0	@ D.36108,
	ldmfd	sp, {fp, sp, pc}	@
.L92:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L89	@,
	ldr	ip, .L93	@ tmp140,
	movw	r1, #1144	@ tmp142,
	mla	r2, r1, r2, ip	@ tmp143, tmp142, VdhId, tmp140
	ldr	r0, [r2, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.36108
	movgt	r0, #1	@, D.36108
	ldmfd	sp, {fp, sp, pc}	@
.L94:
	.align	2
.L93:
	.word	.LANCHOR0+248
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
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
	cmp	r0, #6	@ VidStd,
	beq	.L99	@,
.L96:
	mov	r0, #0	@ D.36126,
	ldmfd	sp, {fp, sp, pc}	@
.L99:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L96	@,
	ldr	ip, .L100	@ tmp140,
	movw	r1, #1144	@ tmp143,
	mla	r2, r1, r2, ip	@ tmp144, tmp143, VdhId, tmp140
	ldr	r0, [r2, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.36126
	movgt	r0, #1	@, D.36126
	ldmfd	sp, {fp, sp, pc}	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR0+248
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsVp6NvopCopy
	.type	VDMDRV_IsVp6NvopCopy, %function
VDMDRV_IsVp6NvopCopy:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L107	@,
	cmp	r0, #10	@ VidStd,
	cmpne	r0, #12	@, VidStd,
	movne	r3, #0	@, tmp144
	moveq	r3, #1	@, tmp144
	bne	.L108	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36161
	moveq	r0, #1	@, D.36161
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L108:
	cmp	r0, #11	@ VidStd,
	movne	r0, r3	@ D.36161, tmp144
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36161
	moveq	r0, #1	@, D.36161
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L107:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36161, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVp6NvopCopy, .-VDMDRV_IsVp6NvopCopy
	.align	2
	.global	VDMDRV_IsVc1SkpicCopy
	.type	VDMDRV_IsVc1SkpicCopy, %function
VDMDRV_IsVc1SkpicCopy:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L114	@,
	cmp	r0, #1	@ VidStd,
	movne	r0, #0	@ D.36148,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsSkpicCopy, <variable>.IsSkpicCopy
	cmp	r0, #1	@ <variable>.IsSkpicCopy,
	movne	r0, #0	@, D.36148
	moveq	r0, #1	@, D.36148
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L114:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36148, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsVc1SkpicCopy, .-VDMDRV_IsVc1SkpicCopy
	.align	2
	.global	VDMDRV_IsMpeg4NvopCopy
	.type	VDMDRV_IsMpeg4NvopCopy, %function
VDMDRV_IsMpeg4NvopCopy:
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
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L120	@,
	cmp	r0, #2	@ VidStd,
	movne	r0, #0	@ D.36135,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldrb	r0, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36135
	moveq	r0, #1	@, D.36135
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L120:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36135, pDecParam
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_IsMpeg4NvopCopy, .-VDMDRV_IsMpeg4NvopCopy
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
.LFB1366:
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
	ldr	r3, [r3, #0]	@ D.35431, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35431,
	beq	.L122	@,
	blx	r3	@ D.35431
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #192]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L122:
	mov	r0, r3	@, D.35431
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #229	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #192]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_WaitVdmReadyIfNoIsr
	.type	VDMDRV_WaitVdmReadyIfNoIsr, %function
VDMDRV_WaitVdmReadyIfNoIsr:
	.fnstart
.LFB1380:
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
	b	.L128	@
.L126:
	ldr	r3, [r4, #80]	@ D.36036, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	mov	r0, r5	@, VdhId
	cmp	r3, #0	@ D.36036,
	beq	.L135	@,
	blx	r3	@ D.36036
	cmp	r0, #0	@,
	bne	.L127	@,
.L135:
	add	r6, r6, #1	@ cnt_wait, tmp146,
	cmp	r6, #400	@ cnt_wait,
	beq	.L140	@,
.L128:
	ldr	r3, [r4, #80]	@ D.36036, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	mov	r0, r5	@, VdhId
	add	r6, r6, #1	@ tmp146, cnt_wait,
	cmp	r3, #0	@ D.36036,
	beq	.L126	@,
	blx	r3	@ D.36036
	cmp	r0, #0	@,
	beq	.L126	@,
.L127:
	bl	OSAL_GetTimeInMs	@
	mov	r0, #0	@ D.36044,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L140:
	bl	OSAL_GetTimeInMs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #44]	@ D.36046, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.36046,
	beq	.L141	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.36046
	mov	r0, #1	@ D.36044,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L141:
	mov	r0, r3	@, D.36046
	movw	r2, #1257	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36044,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDMDRV_WaitVdmReadyIfNoIsr, .-VDMDRV_WaitVdmReadyIfNoIsr
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1368:
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
	ldr	r3, [r3, #72]	@ D.35452, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	cmp	r3, #0	@ D.35452,
	beq	.L143	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35452
.L144:
	add	r4, r4, r4, asl #1	@, tmp142, VdhId, VdhId,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	mov	r2, #1	@ tmp146,
	add	r1, ip, r4, asl #4	@, tmp144, tmp138, tmp142,
	mov	r0, r5	@, tmp148
	str	r2, [r1, #200]	@ tmp146, <variable>.VdmStateMachine
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L143:
	mov	r0, r3	@, D.35452
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #252	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L144	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1367:
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
	ldr	r3, [r3, #68]	@ D.35442, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.35442,
	beq	.L147	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35442
.L148:
	add	r4, r4, r4, asl #1	@, tmp143, VdhId, VdhId,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, r5	@, tmp148
	add	r1, r2, r4, asl #4	@, tmp145, tmp139, tmp143,
	str	r6, [r1, #200]	@ StateAfterRepair, <variable>.VdmStateMachine
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L147:
	mov	r0, r3	@, D.35442
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #240	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L148	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1363:
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
	ldr	r1, [r2, #192]	@ tmp142, s_eVdmDrvSleepState
	cmp	r1, #0	@ tmp142,
	mvnne	r4, #0	@ ret,
	bne	.L152	@,
	add	r4, r4, r4, asl #1	@, tmp147, VdhId, VdhId,
	add	r3, r3, r4, asl #4	@, tmp149, tmp137, tmp147,
	ldr	r4, [r3, #200]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r4, #0	@ <variable>.VdmStateMachine,
	movne	r4, r1	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r2, #192]	@ tmp163, s_eVdmDrvSleepState
.L152:
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
	ldr	r3, .L157	@ tmp135,
	add	r0, r0, r0, asl #1	@, tmp138, VdhId, VdhId,
	mov	r1, #48	@,
	add	r0, r3, r0, asl #4	@,, tmp135, tmp138,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
.L158:
	.align	2
.L157:
	.word	.LANCHOR0+200
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_ForeceSleep
	.type	VDMDRV_ForeceSleep, %function
VDMDRV_ForeceSleep:
	.fnstart
.LFB1365:
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
	ldr	r3, [r5, #192]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L160	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #192]	@ tmp146, s_eVdmDrvSleepState
.L160:
	mov	r0, r4	@, tmp149
	bl	OSAL_UnLockIRQ	@
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3, #0]	@ D.35304, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35304,
	beq	.L163	@,
	blx	r3	@ D.35304
.L164:
	add	r2, r4, r4, asl #1	@, tmp141, VdhId, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	mov	r1, #48	@,
	add	ip, r5, #200	@ tmp138, tmp137,
	add	r4, r5, r4, asl #2	@, tmp147, tmp137, VdhId,
	add	r0, ip, r2, asl #4	@,, tmp138, tmp141,
	bl	__memzero	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #192]	@ tmp149, s_eVdmDrvSleepState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L163:
	mov	r0, r3	@, D.35304
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #89	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L164	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
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
	mov	r2, r0, asl #1	@, VdhId,
	add	r7, r2, r0	@ tmp650,, VdhId
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	str	r2, [fp, #-64]	@, %sfp
	bl	OSAL_SpinLockIRQ	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp645,
	movt	r4, #:upper16:.LANCHOR0	@ tmp645,
	add	r8, r4, r7, asl #4	@, tmp653, tmp645, tmp650,
	movw	sl, #:lower16:AcceleratorCharacter	@ tmp655,
	add	r8, r8, #216	@ tmp654, tmp653,
	movt	sl, #:upper16:AcceleratorCharacter	@ tmp655,
	mov	r6, r4	@ ivtmp.1182, tmp645
	mov	r9, r4	@ tmp648, tmp645
.L177:
	ldr	r2, [r6, #64]	@ D.35502,
	cmp	r2, #0	@ D.35502,
	blt	.L167	@,
	add	r1, r4, r7, asl #4	@, tmp173, tmp645, tmp650,
	mov	r0, r2	@, D.35502
	add	r3, r1, #8	@ tmp174, tmp173,
	str	r2, [r3, #200]	@ D.35502, <variable>.ChanId
	str	r3, [fp, #-72]	@,
	bl	VCTRL_IsChanActive	@
	ldr	r3, [fp, #-72]	@,
	cmp	r0, #0	@,
	bne	.L194	@,
	ldr	r2, [r3, #200]	@ temp.1184, <variable>.ChanId
	add	r0, r2, #32	@ tmp199, temp.1184,
	ldr	r1, [r9, r0, asl #2]	@ tmp200, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r1, #0	@ tmp200,
	beq	.L170	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L169:
	add	r6, r6, #4	@ tmp656, ivtmp.1182,
	ldr	r2, [r6, #64]	@ D.35502,
	cmp	r2, #0	@ D.35502,
	blt	.L167	@,
	add	r1, r4, r7, asl #4	@, tmp663, tmp645, tmp650,
	mov	r0, r2	@, D.35502
	add	r3, r1, #8	@ tmp664, tmp663,
	str	r2, [r3, #200]	@ D.35502, <variable>.ChanId
	str	r3, [fp, #-72]	@,
	bl	VCTRL_IsChanActive	@
	ldr	r3, [fp, #-72]	@,
	cmp	r0, #0	@,
	bne	.L189	@,
	ldr	r2, [r3, #200]	@ temp.1184, <variable>.ChanId
	add	r0, r2, #32	@ tmp668, temp.1184,
	ldr	r1, [r9, r0, asl #2]	@ tmp669, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r1, #0	@ tmp669,
	bne	.L190	@,
	str	r1, [r8, #0]	@ tmp669, <variable>.pDecParam
	mov	r0, r2	@, temp.1184
	str	r3, [fp, #-72]	@,
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35513,
	str	r0, [r8, #0]	@ D.35513, <variable>.pDecParam
	ldr	r3, [fp, #-72]	@,
	beq	.L195	@,
	ldr	r0, [r3, #200]	@, <variable>.ChanId
	add	r2, r3, #204	@, tmp664,
	str	r3, [fp, #-72]	@,
	str	r2, [fp, #-68]	@, %sfp
	bl	VCTRL_GetVidStd	@
	ldr	r2, [sl, #0]	@ AcceleratorCharacter.436, AcceleratorCharacter
	ldr	r3, [fp, #-72]	@,
	cmp	r2, #0	@ AcceleratorCharacter.436,
	mov	r1, r0	@ prephitmp.1163,
	str	r0, [r3, #204]	@ prephitmp.1163, <variable>.VidStd
	beq	.L171	@,
	ldr	ip, [r3, #200]	@ <variable>.ChanId, <variable>.ChanId
	sub	r0, fp, #56	@,,
	ldr	lr, [r8, #0]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r1, [fp, #-52]	@ prephitmp.1163, DecparamInfo.VidStd
	str	ip, [fp, #-56]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	lr, [fp, #-48]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r2	@ AcceleratorCharacter.436
	cmp	r0, #1	@,
	beq	.L185	@,
.L191:
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r1, [r6, #0]	@ prephitmp.1163, <variable>.VidStd
.L171:
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r0, r1	@, prephitmp.1163
	add	sl, r7, r5	@ tmp259,, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp256,
	add	r2, sl, #1	@ tmp260, tmp259,
	movt	r7, #:upper16:.LANCHOR0	@ tmp256,
	add	r6, r4, r2, asl #4	@, tmp263, tmp645, tmp260,
	ldr	r1, [r6, #200]	@, <variable>.pDecParam
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L196	@,
	add	r8, r7, sl, asl #4	@, tmp331, tmp256, tmp259,
	ldr	r1, [r6, #200]	@, <variable>.pDecParam
	add	r8, r8, #8	@ tmp332, tmp331,
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L197	@,
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	ldr	r1, [r6, #200]	@, <variable>.pDecParam
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L198	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp484,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp484,
	ldr	r3, [r3, #76]	@ D.35583, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.35583,
	beq	.L175	@,
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	mov	r2, r5	@, VdhId
	ldr	r1, [r6, #200]	@, <variable>.pDecParam
	blx	r3	@ D.35583
	cmp	r0, #0	@,
	beq	.L176	@,
.L175:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r7, r0	@ tmp515,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r0, #100	@ tmp524,
	mov	r3, r7	@, tmp515
	add	r1, r2, r5	@ tmp511,, VdhId
	mov	r2, #15	@,
	add	r6, r4, r1, asl #4	@, tmp532, tmp645, tmp511,
	mov	r1, r0	@, tmp524
	mov	ip, r6	@ tmp513, tmp532
	add	r6, r6, #8	@ tmp533, tmp532,
	str	r0, [ip, #204]	@ tmp524, <variable>.ErrRatio
	str	r7, [ip, #200]	@ tmp515, <variable>.VdmStateMachine
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	ip, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, ip, #32	@ tmp547, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp515, g_ChanCtx.ChanDecByVdhPlusOne
.L167:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L170:
	str	r1, [r8, #0]	@ tmp200, <variable>.pDecParam
	mov	r0, r2	@, temp.1184
	str	r3, [fp, #-72]	@,
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35513,
	str	r0, [r8, #0]	@ D.35513, <variable>.pDecParam
	ldr	r3, [fp, #-72]	@,
	beq	.L199	@,
	ldr	r0, [r3, #200]	@, <variable>.ChanId
	add	ip, r3, #204	@, tmp174,
	str	r3, [fp, #-72]	@,
	str	ip, [fp, #-68]	@, %sfp
	bl	VCTRL_GetVidStd	@
	ldr	r2, [sl, #0]	@ AcceleratorCharacter.436, AcceleratorCharacter
	ldr	r3, [fp, #-72]	@,
	cmp	r2, #0	@ AcceleratorCharacter.436,
	mov	r1, r0	@ prephitmp.1163,
	str	r0, [r3, #204]	@ prephitmp.1163, <variable>.VidStd
	beq	.L171	@,
	ldr	ip, [r3, #200]	@ <variable>.ChanId, <variable>.ChanId
	sub	r0, fp, #56	@,,
	ldr	lr, [r8, #0]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r1, [fp, #-52]	@ prephitmp.1163, DecparamInfo.VidStd
	str	ip, [fp, #-56]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	lr, [fp, #-48]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r2	@ AcceleratorCharacter.436
	cmp	r0, #1	@,
	bne	.L191	@,
	b	.L169	@
.L190:
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L185:
	ldr	r3, .L200	@,
	add	r6, r6, #4	@ ivtmp.1182, tmp656,
	cmp	r6, r3	@ ivtmp.1182,
	bne	.L177	@,
	b	.L167	@
.L194:
	ldr	r2, [r3, #200]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L169	@
.L189:
	ldr	r2, [r3, #200]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L185	@
.L196:
	ldr	r0, [r6, #200]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ D.35532,
	bne	.L167	@,
	add	lr, r7, sl, asl #4	@, tmp282, tmp256, tmp259,
	add	sl, r7, sl, asl #4	@, tmp292, tmp256, tmp259,
	add	sl, sl, #8	@ tmp293, tmp292,
	mov	r0, #2	@,
	str	r3, [lr, #204]	@ D.35532, <variable>.ErrRatio
	mov	r1, r5	@, VdhId
	bl	VDMDRV_StartRepair	@
	mov	r1, r5	@, VdhId
	ldr	r0, [sl, #200]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L167	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, #200]	@ temp.1191, <variable>.ChanId
	add	r7, r7, r2, asl #2	@, tmp309, tmp256, temp.1191,
	ldr	ip, [r7, #1392]	@ tmp312, last_rec_pos_time
	mov	r3, r0	@ currtime,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp313,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp313,
	ldr	r1, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r0, ip, r3	@ tmp311, tmp312, currtime
	cmp	r0, r1	@ tmp311, g_TraceFramePeriod
	bls	.L167	@,
	add	r2, r5, r2, asl #24	@, tmp322, VdhId, temp.1191,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r2, #458752	@, tmp322,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #362	@,
	str	r3, [r7, #1392]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L167	@
.L197:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #200]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vc1	@
	subs	r3, r0, #0	@ D.35556,
	bne	.L167	@,
	add	sl, r7, sl, asl #4	@, tmp362, tmp256, tmp259,
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	str	r3, [sl, #204]	@ D.35556, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L167	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #200]	@ temp.1196, <variable>.ChanId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp393,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp393,
	add	r7, r7, r2, asl #2	@, tmp389, tmp256, temp.1196,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1195,
	ldr	r0, [r7, #1392]	@ tmp392, last_rec_pos_time
	rsb	ip, r0, r3	@ tmp391, tmp392, currtime.1195
	cmp	ip, r1	@ tmp391, g_TraceFramePeriod
	bls	.L167	@,
	add	lr, r5, r2, asl #24	@, tmp402, VdhId, temp.1196,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, lr, #458752	@, tmp402,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #385	@,
	str	r3, [r7, #1392]	@ currtime.1195, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L167	@
.L176:
	bl	OSAL_GetTimeInMs	@
	mov	r3, r0	@ D.35589,
	movw	r0, #:lower16:g_VfmwGlobalStat	@ tmp559,
	movt	r0, #:upper16:g_VfmwGlobalStat	@ tmp559,
	str	r3, [r6, #204]	@ D.35589, <variable>.StartTime
	add	ip, r0, r5, asl #6	@, tmp562, tmp559, VdhId,
	mov	r0, r5	@, VdhId
	str	r3, [ip, #4]	@ D.35589, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L167	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #200]	@ temp.1224, <variable>.ChanId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp592,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp592,
	add	r7, r7, r2, asl #2	@, tmp588, tmp256, temp.1224,
	ldr	r1, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1223,
	ldr	r0, [r7, #1392]	@ tmp591, last_rec_pos_time
	rsb	ip, r0, r3	@ tmp590, tmp591, currtime.1223
	cmp	ip, r1	@ tmp590, g_TraceFramePeriod
	bls	.L167	@,
	add	lr, r5, r2, asl #24	@, tmp601, VdhId, temp.1224,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, lr, #327680	@, tmp601,
	movt	r0, #:upper16:.LANCHOR1	@,
	movw	r1, #443	@,
	str	r3, [r7, #1392]	@ currtime.1223, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L167	@
.L199:
	ldr	r0, [r3, #200]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L169	@
.L195:
	ldr	r0, [r3, #200]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L185	@
.L198:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #200]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vp6	@
	subs	r3, r0, #0	@ D.35570,
	bne	.L167	@,
	add	sl, r7, sl, asl #4	@, tmp442, tmp256, tmp259,
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	str	r3, [sl, #204]	@ D.35570, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L167	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #200]	@ temp.1211, <variable>.ChanId
	add	r7, r7, r2, asl #2	@, tmp469, tmp256, temp.1211,
	ldr	ip, [r7, #1392]	@ tmp472, last_rec_pos_time
	mov	r3, r0	@ currtime.1210,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp473,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp473,
	ldr	r1, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r0, ip, r3	@ tmp471, tmp472, currtime.1210
	cmp	r0, r1	@ tmp471, g_TraceFramePeriod
	bls	.L167	@,
	add	r2, r5, r2, asl #24	@, tmp482, VdhId, temp.1211,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r2, #458752	@, tmp482,
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r1, #408	@,
	str	r3, [r7, #1392]	@ currtime.1210, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L167	@
.L201:
	.align	2
.L200:
	.word	.LANCHOR0+64
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1373:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #164
	sub	sp, sp, #164	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r1, #136	@,
	mov	r5, r0	@ VdhId, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp1491,
	sub	r0, fp, #184	@,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp1491,
	bl	__memzero	@
	mov	r1, #180	@ tmp189,
	mla	r3, r1, r5, r4	@ tmp190, tmp189, VdhId, tmp1491
	mov	sl, r5, asl #1	@ tmp1490, VdhId,
	add	r9, sl, r5	@ tmp213, tmp1490, VdhId
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp209,
	add	r6, r4, r9, asl #4	@, tmp215, tmp1491, tmp213,
	movt	r7, #:upper16:.LANCHOR0	@ tmp209,
	ldr	r0, [r3, #1456]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	and	r2, r0, #15	@ tmp192, <variable>.BasicCfg1,
	mov	r0, #2	@,
	cmp	r2, #5	@ tmp192,
	ldreq	r3, [r3, #1468]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r3, [r3, #1464]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r3, r3, #1	@, <variable>.SwitchRounding,
	andne	r3, r3, #31	@, <variable>.Mb0QpInCurrPic,
	str	r3, [fp, #-192]	@, %sfp
	ldr	ip, [r6, #204]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r2, [r6, #200]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	ldr	r3, [r6, #236]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	str	ip, [sp, #0]	@ <variable>.ErrRatio,
	bl	dprint_vfmw	@
	ldr	r8, [r6, #200]	@ temp.1262, <variable>.VdmStateMachine
	cmp	r8, #1	@ temp.1262,
	beq	.L236	@,
	cmp	r8, #2	@ temp.1262,
	beq	.L237	@,
	cmp	r8, #3	@ temp.1262,
	beq	.L238	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, r8	@, temp.1262
	movt	r1, #:upper16:.LC14	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L233:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L238:
	add	sl, sl, r5	@ tmp1429, tmp1490, VdhId
	ldr	r2, [r6, #236]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	sub	r3, fp, #184	@,,
	add	lr, r4, sl, asl #4	@, tmp1431, tmp1491, tmp1429,
	cmp	r2, #1	@ <variable>.VdmTimeOut,
	add	sl, lr, #8	@ tmp1459, tmp1458,
	ldr	r1, [lr, #204]	@ <variable>.ErrRatio, <variable>.ErrRatio
	moveq	r2, #0	@ tmp1424,
	streq	r2, [r6, #236]	@ tmp1424, <variable>.VdmTimeOut
	mov	r6, #0	@ tmp1433,
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.458,
	ldr	r2, [fp, #-192]	@, %sfp
	bic	r1, r1, r1, asr #31	@ iftmp.1357, iftmp.458
	ldr	r0, [sl, #200]	@, <variable>.ChanId
	str	r6, [lr, #200]	@ tmp1433, <variable>.VdmStateMachine
	str	r1, [lr, #204]	@ iftmp.1357, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [sl, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r3, ip, #32	@ tmp1474, <variable>.ChanId,
	str	r6, [r4, r3, asl #2]	@ tmp1433, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L233	@
.L236:
	ldr	lr, [r6, #236]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	lr, #1	@ <variable>.VdmTimeOut,
	beq	.L239	@,
	add	r1, r7, r9, asl #4	@, tmp310, tmp209, tmp213,
	mov	r2, r5	@, VdhId
	add	r9, r1, #8	@ tmp311, tmp310,
	ldr	r1, [r1, #216]	@, <variable>.pDecParam
	ldr	r0, [r9, #204]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, r0	@, D.35655
	mov	r7, r0	@ D.35655,
	mov	r0, r8	@, temp.1262
	str	r7, [r6, #204]	@ D.35655, <variable>.ErrRatio
	bl	dprint_vfmw	@
	ldr	r0, [r9, #204]	@ prephitmp.1251, <variable>.VidStd
	sub	r2, r0, #8	@ tmp343, prephitmp.1251,
	cmp	r0, #5	@ prephitmp.1251,
	cmpne	r2, #1	@, tmp343,
	movls	r2, #0	@ tmp359,
	strls	r2, [r6, #204]	@ tmp359, <variable>.ErrRatio
	bls	.L207	@,
	ldr	r1, [r6, #204]	@ temp.1266, <variable>.ErrRatio
	cmp	r1, #0	@ temp.1266,
	beq	.L207	@,
	movw	r6, #:lower16:g_event_report	@ tmp378,
	movt	r6, #:upper16:g_event_report	@ tmp378,
	ldr	r3, [r6, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L207	@,
	sub	r2, fp, #44	@ tmp392,,
	ldr	r0, [r9, #200]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ temp.1266, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report
	ldr	r0, [r9, #204]	@ prephitmp.1251, <variable>.VidStd
.L207:
	add	r7, sl, r5	@ tmp407, tmp1490, VdhId
	add	lr, r7, #1	@ tmp408, tmp407,
	add	r6, r4, lr, asl #4	@, tmp411, tmp1491, tmp408,
	ldr	r1, [r6, #200]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	add	ip, r4, r7, asl #4	@, tmp421, tmp1491, tmp407,
	ldr	r2, [r6, #200]	@ temp.1270, <variable>.pDecParam
	ldr	r8, [ip, #212]	@ temp.1269, <variable>.VidStd
	cmp	r8, #0	@ temp.1269,
	cmpne	r8, #15	@, temp.1269,
	movne	r3, #0	@, tmp439
	moveq	r3, #1	@, tmp439
	mov	r9, r0	@ eRpStratage,
	bne	.L210	@,
	ldr	r0, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r1, [r2, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r2, [r2, #920]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r3, r1, r0	@ tmp440, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r3, r2	@ tmp440, <variable>.mbtodec
	movle	r3, #0	@, H264NeedMoreStart
	movgt	r3, #1	@, H264NeedMoreStart
.L210:
	add	lr, sl, r5	@ tmp449, tmp1490, VdhId
	add	r7, r4, lr, asl #4	@, tmp460, tmp1491, tmp449,
	ldr	ip, [r7, #212]	@ temp.1271, <variable>.VidStd
	str	r3, [r7, #228]	@ H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	ip, #0	@ temp.1271,
	cmpne	ip, #15	@, temp.1271,
	ldr	r3, [r7, #216]	@ temp.1272, <variable>.pDecParam
	beq	.L240	@,
.L211:
	mov	ip, #0	@ H264FinishedMultiStart,
.L212:
	add	r8, sl, r5	@ tmp489, tmp1490, VdhId
	mov	r3, ip	@, H264FinishedMultiStart
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC13	@,
	add	r6, r4, r8, asl #4	@, tmp491, tmp1491, tmp489,
	movt	r1, #:upper16:.LC13	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp485,
	movt	r7, #:upper16:.LANCHOR0	@ tmp485,
	ldr	r2, [r6, #228]	@, <variable>.H264NeedMoreStart
	str	ip, [r6, #232]	@ H264FinishedMultiStart, <variable>.H264FinishedMultiStart
	bl	dprint_vfmw	@
	ldr	r3, [r6, #228]	@ <variable>.H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	r3, #1	@ <variable>.H264NeedMoreStart,
	beq	.L241	@,
	ldr	lr, [r6, #232]	@ <variable>.H264FinishedMultiStart, <variable>.H264FinishedMultiStart
	cmp	lr, #1	@ <variable>.H264FinishedMultiStart,
	beq	.L242	@,
	ldr	ip, [r6, #204]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	ip, #0	@ <variable>.ErrRatio,
	cmpne	r9, #1	@, eRpStratage,
	movne	r9, #0	@, tmp624
	moveq	r9, #1	@, tmp624
	beq	.L243	@,
	add	r6, r7, r8, asl #4	@, tmp693, tmp485, tmp489,
	add	r2, r8, #1	@ tmp681, tmp489,
	add	r6, r6, #8	@ tmp694, tmp693,
	add	r8, r7, r2, asl #4	@, tmp684, tmp485, tmp681,
	ldr	r1, [r6, #204]	@ <variable>.VidStd, <variable>.VidStd
	ldr	r2, [r8, #200]	@ temp.1283, <variable>.pDecParam
	cmp	r1, #6	@ <variable>.VidStd,
	beq	.L244	@,
.L217:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp1487,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp1487,
	add	r8, sl, r5	@ tmp1481, tmp1490, VdhId
	add	r7, r8, #1	@ tmp1482, tmp1481,
	movw	r6, #:lower16:.LANCHOR0	@ tmp1478,
	ldr	ip, [r3, #88]	@ temp.1305, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r6, #:upper16:.LANCHOR0	@ tmp1478,
	add	r7, r4, r7, asl #4	@, tmp1485, tmp1491, tmp1482,
	cmp	ip, #0	@ temp.1305,
	str	r0, [r7, #204]	@, <variable>.StartTime
	beq	.L225	@,
	add	r8, r6, r8, asl #4	@, tmp932, tmp1478, tmp1481,
	ldr	r1, [r7, #200]	@, <variable>.pDecParam
	add	r8, r8, #8	@ tmp933, tmp932,
	mov	r2, #0	@,
	mov	r3, r5	@, VdhId
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	blx	ip	@ temp.1305
	cmp	r0, #0	@,
	beq	.L245	@,
.L225:
	add	r5, sl, r5	@ tmp1149, tmp1490, VdhId
	sub	r3, fp, #184	@,,
	mov	r1, #100	@,
	ldr	r2, [fp, #-192]	@, %sfp
	add	r6, r4, r5, asl #4	@, tmp1153, tmp1491, tmp1149,
	add	r5, r4, r5, asl #4	@, tmp1178, tmp1491, tmp1149,
	add	r6, r6, #8	@ tmp1154, tmp1153,
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r1, #0	@ tmp1171,
	add	r3, ip, #32	@ tmp1169, <variable>.ChanId,
	str	r1, [r4, r3, asl #2]	@ tmp1171, g_ChanCtx.ChanDecByVdhPlusOne
	str	r1, [r5, #200]	@ tmp1171, <variable>.VdmStateMachine
	b	.L233	@
.L237:
	add	r8, sl, r5	@ tmp1046, tmp1490, VdhId
	ldr	r3, [r6, #236]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	add	r7, r8, #1	@ tmp1057, tmp1046,
	add	r1, r4, r8, asl #4	@, tmp1050, tmp1491, tmp1046,
	cmp	r3, #1	@ <variable>.VdmTimeOut,
	add	r8, r1, #8	@ tmp1051, tmp1050,
	add	r7, r4, r7, asl #4	@, tmp1060, tmp1491, tmp1057,
	moveq	r3, #0	@ tmp1042,
	streq	r3, [r6, #236]	@ tmp1042, <variable>.VdmTimeOut
	ldr	r0, [r8, #204]	@ temp.1322, <variable>.VidStd
	movw	r6, #:lower16:.LANCHOR0	@ tmp1043,
	ldr	r1, [r7, #200]	@ temp.1323, <variable>.pDecParam
	movt	r6, #:upper16:.LANCHOR0	@ tmp1043,
	cmp	r0, #6	@ temp.1322,
	beq	.L246	@,
.L224:
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L247	@,
	add	sl, sl, r5	@ tmp1228, tmp1490, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp1225,
	add	r3, sl, #1	@ tmp1240, tmp1228,
	movt	r7, #:upper16:.LANCHOR0	@ tmp1225,
	add	lr, r4, sl, asl #4	@, tmp1232, tmp1491, tmp1228,
	add	r6, lr, #8	@ tmp1233, tmp1232,
	add	r4, r4, r3, asl #4	@, tmp1243, tmp1491, tmp1240,
	ldr	r0, [r6, #204]	@, <variable>.VidStd
	ldr	r1, [r4, #200]	@, <variable>.pDecParam
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L248	@,
	ldr	r1, [r4, #200]	@, <variable>.pDecParam
	ldr	r0, [r6, #204]	@, <variable>.VidStd
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L249	@,
	add	sl, r7, sl, asl #4	@, tmp1361, tmp1225, tmp1228,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	ldr	r1, [sl, #204]	@ <variable>.ErrRatio, <variable>.ErrRatio
	mov	r4, #0	@ tmp1363,
	str	r4, [sl, #200]	@ tmp1363, <variable>.VdmStateMachine
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.1351,
	bic	r1, r1, r1, asr #31	@ iftmp.457, iftmp.1351
	str	r1, [sl, #204]	@ iftmp.457, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
.L235:
	add	r2, r3, #32	@ tmp1404, <variable>.ChanId,
	mov	r0, r5	@, VdhId
	str	r4, [r7, r2, asl #2]	@ tmp1363, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L233	@
.L240:
	ldr	r8, [r3, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r0, [r3, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r2, [r3, #920]	@ <variable>.mbtodec, <variable>.mbtodec
	mul	r1, r0, r8	@ tmp479, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	cmp	r1, r2	@ tmp479, <variable>.mbtodec
	bgt	.L211	@,
	ldrsb	ip, [r3, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	ip, ip, #1	@ H264FinishedMultiStart, <variable>.NewPicFlag
	movcc	ip, #0	@ H264FinishedMultiStart
	b	.L212	@
.L243:
	cmp	ip, #100	@ <variable>.ErrRatio,
	movge	ip, #100	@ iftmp.448,
	add	r8, r7, r8, asl #4	@, tmp658, tmp485, tmp489,
	bic	r4, ip, ip, asr #31	@ iftmp.1359, iftmp.448
	add	r8, r8, #8	@ tmp659, tmp658,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	mov	r1, r4	@, iftmp.1359
	str	r4, [r6, #204]	@ iftmp.1359, <variable>.ErrRatio
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	mov	r4, #0	@ tmp633,
	str	r4, [r6, #200]	@ tmp633, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r8, #200]	@ <variable>.ChanId, <variable>.ChanId
	b	.L235	@
.L246:
	ldrb	r9, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r9, #1	@ <variable>.PicStruct,
	bne	.L224	@,
	movw	lr, #1144	@ tmp1067,
	mla	r2, lr, r5, r6	@ tmp1068, tmp1067, VdhId, tmp1043
	ldr	ip, [r2, #1372]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	ip, #0	@ <variable>.ValidGroupNum,
	ble	.L224	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp1080,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp1080,
	ldr	ip, [r1, #88]	@ temp.1324, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ temp.1324,
	str	r0, [r7, #204]	@, <variable>.StartTime
	beq	.L225	@,
	mov	r2, r9	@, <variable>.PicStruct
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	ldr	r1, [r7, #200]	@, <variable>.pDecParam
	mov	r3, r5	@, VdhId
	blx	ip	@ temp.1324
	cmp	r0, #0	@,
	bne	.L225	@,
	ldr	ip, [r7, #204]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp1102,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp1102,
	mov	r0, #3	@,
	add	r3, r2, r5, asl #6	@, tmp1105, tmp1102, VdhId,
	mov	r1, r5	@, VdhId
	str	ip, [r3, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L233	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r8, #200]	@ temp.1329, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp1134,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp1134,
	add	r6, r6, r1, asl #2	@, tmp1130, tmp1043, temp.1329,
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1328,
	ldr	r0, [r6, #1636]	@ tmp1133, last_rec_pos_time
	rsb	r0, r0, r3	@ tmp1132, tmp1133, currtime.1328
	cmp	r0, ip	@ tmp1132, g_TraceFramePeriod
	bls	.L233	@,
	add	lr, r5, r1, asl #24	@, tmp1144, VdhId, temp.1329,
	ldr	r0, .L250	@,
	add	r2, lr, #458752	@, tmp1144,
	mov	r1, #740	@,
	str	r3, [r6, #1636]	@ currtime.1328, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L233	@
.L239:
	add	r3, r7, r9, asl #4	@, tmp260, tmp209, tmp213,
	mov	r2, r5	@, VdhId
	add	r8, r3, #8	@ tmp261, tmp260,
	mov	r9, #0	@ tmp291,
	ldr	r1, [r3, #216]	@, <variable>.pDecParam
	mov	r7, #100	@ tmp282,
	ldr	r0, [r8, #204]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	r0, r9	@, tmp291
	movw	r1, #:lower16:.LC11	@,
	str	r9, [r6, #236]	@ tmp291, <variable>.VdmTimeOut
	movt	r1, #:upper16:.LC11	@,
	str	r7, [r6, #204]	@ tmp282, <variable>.ErrRatio
	bl	dprint_vfmw	@
	ldr	r0, [r8, #204]	@ prephitmp.1251, <variable>.VidStd
	b	.L207	@
.L245:
	ldr	ip, [r7, #204]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp946,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp946,
	mov	r0, #2	@,
	add	r3, r2, r5, asl #6	@, tmp949, tmp946, VdhId,
	mov	r1, r5	@, VdhId
	str	ip, [r3, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L233	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r8, #200]	@ temp.1310, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp978,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp978,
	add	r6, r6, r1, asl #2	@, tmp974, tmp1478, temp.1310,
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.1309,
	ldr	r0, [r6, #1636]	@ tmp977, last_rec_pos_time
	rsb	r0, r0, r3	@ tmp976, tmp977, currtime.1309
	cmp	r0, ip	@ tmp976, g_TraceFramePeriod
	bls	.L233	@,
	add	lr, r5, r1, asl #24	@, tmp988, VdhId, temp.1310,
	ldr	r0, .L250	@,
	add	r2, lr, #458752	@, tmp988,
	mov	r1, #704	@,
	str	r3, [r6, #1636]	@ currtime.1309, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L233	@
.L244:
	ldrb	r2, [r2, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	add	lr, r7, #248	@ tmp698, tmp485,
	movw	ip, #1144	@ tmp700,
	cmp	r2, #1	@ <variable>.PicStruct,
	mla	r3, ip, r5, lr	@ pRepairParam, tmp700, VdhId, tmp698
	bne	.L217	@,
	ldr	r0, [r3, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L218	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp712,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp712,
	ldr	ip, [r3, #88]	@ D.35700, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.35700,
	str	r0, [r8, #204]	@, <variable>.StartTime
	beq	.L225	@,
	mov	r2, r9	@, tmp624
	ldr	r0, [r6, #204]	@, <variable>.VidStd
	ldr	r1, [r8, #200]	@, <variable>.pDecParam
	mov	r3, r5	@, VdhId
	blx	ip	@ D.35700
	cmp	r0, #0	@,
	bne	.L225	@,
	ldr	r2, [r8, #204]	@ <variable>.StartTime, <variable>.StartTime
	movw	r1, #:lower16:g_VfmwGlobalStat	@ tmp734,
	movt	r1, #:upper16:g_VfmwGlobalStat	@ tmp734,
	mov	r0, #2	@,
	add	lr, r1, r5, asl #6	@, tmp737, tmp734, VdhId,
	mov	r1, r5	@, VdhId
	str	r2, [lr, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L233	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, #200]	@ temp.1286, <variable>.ChanId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp766,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp766,
	ldr	r2, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime,
	mov	r0, r1, asl #2	@ tmp1489, temp.1286,
	add	r7, r0, r7	@ tmp762, tmp1489, tmp485
	ldr	ip, [r7, #1636]	@ tmp765, last_rec_pos_time
	rsb	ip, ip, r3	@ tmp764, tmp765, currtime
	cmp	ip, r2	@ tmp764, g_TraceFramePeriod
	bls	.L233	@,
	add	r4, r0, r4	@ tmp771, tmp1489, tmp1491
	add	r0, r5, r1, asl #24	@, tmp777, VdhId, temp.1286,
	add	r2, r0, #458752	@, tmp777,
	movw	r1, #649	@,
	ldr	r0, .L250	@,
	str	r3, [r4, #1636]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L233	@
.L247:
	add	sl, sl, r5	@ tmp1185, tmp1490, VdhId
	mov	r7, #0	@ tmp1189,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	add	r0, r4, sl, asl #4	@, tmp1206, tmp1491, tmp1185,
	mov	r1, r7	@, tmp1189
	add	r6, r0, #8	@ tmp1207, tmp1206,
	mov	sl, r0	@ tmp1187, tmp1206
	str	r7, [r0, #204]	@ tmp1189, <variable>.ErrRatio
	str	r7, [sl, #200]	@ tmp1189, <variable>.VdmStateMachine
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r1, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r2, r1, #32	@ tmp1222, <variable>.ChanId,
	str	r7, [r4, r2, asl #2]	@ tmp1189, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L233	@
.L241:
	add	r4, r7, r8, asl #4	@, tmp537, tmp485, tmp489,
	mov	r5, #0	@ tmp520,
	add	r4, r4, #8	@ tmp538, tmp537,
	ldr	r2, [fp, #-192]	@, %sfp
	mov	r1, r5	@, tmp520
	sub	r3, fp, #184	@,,
	ldr	r0, [r4, #200]	@, <variable>.ChanId
	str	r5, [r6, #204]	@ tmp520, <variable>.ErrRatio
	str	r5, [r6, #200]	@ tmp520, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r4, #200]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #32	@ tmp553, <variable>.ChanId,
	str	r5, [r7, r1, asl #2]	@ tmp520, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L233	@
.L242:
	add	r0, r7, r8, asl #4	@, tmp590, tmp485, tmp489,
	mov	sl, #0	@ tmp573,
	add	r4, r0, #8	@ tmp591, tmp590,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	mov	r1, sl	@, tmp573
	ldr	r0, [r4, #200]	@, <variable>.ChanId
	str	sl, [r6, #204]	@ tmp573, <variable>.ErrRatio
	str	sl, [r6, #200]	@ tmp573, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r4, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	ip, r3, #32	@ tmp606, <variable>.ChanId,
	str	sl, [r7, ip, asl #2]	@ tmp573, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L233	@
.L248:
	add	sl, r7, sl, asl #4	@, tmp1252, tmp1225, tmp1228,
	mov	r4, #0	@ tmp1254,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	mov	r1, r4	@, tmp1254
	str	r4, [sl, #204]	@ tmp1254, <variable>.ErrRatio
	str	r4, [sl, #200]	@ tmp1254, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	b	.L235	@
.L249:
	add	ip, r7, sl, asl #4	@, tmp1317, tmp1225, tmp1228,
	mov	r4, #0	@ tmp1319,
	ldr	r2, [fp, #-192]	@, %sfp
	sub	r3, fp, #184	@,,
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	mov	r1, r4	@, tmp1319
	str	r4, [ip, #204]	@ tmp1319, <variable>.ErrRatio
	str	r4, [ip, #200]	@ tmp1319, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	b	.L235	@
.L218:
	ldr	r3, [r3, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	ble	.L217	@,
	str	r2, [fp, #-196]	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp824,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp824,
	ldr	ip, [r1, #88]	@ temp.1289, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ temp.1289,
	str	r0, [r8, #204]	@, <variable>.StartTime
	ldr	r2, [fp, #-196]	@,
	beq	.L225	@,
	ldr	r0, [r6, #204]	@, <variable>.VidStd
	mov	r3, r5	@, VdhId
	ldr	r1, [r8, #200]	@, <variable>.pDecParam
	blx	ip	@ temp.1289
	cmp	r0, #0	@,
	bne	.L225	@,
	ldr	lr, [r8, #204]	@ <variable>.StartTime, <variable>.StartTime
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp846,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp846,
	mov	r0, #3	@,
	add	ip, r2, r5, asl #6	@, tmp849, tmp846, VdhId,
	mov	r1, r5	@, VdhId
	str	lr, [ip, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L233	@,
	bl	OSAL_GetTimeInMs	@
	add	r1, sl, r5	@ tmp864, tmp1490, VdhId
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp878,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp878,
	mov	r3, r0	@ currtime.1293,
	add	r0, r4, r1, asl #4	@, tmp868, tmp1491, tmp864,
	ldr	r1, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r0, #208]	@ temp.1294, <variable>.ChanId
	add	r4, r4, r2, asl #2	@, tmp874, tmp1491, temp.1294,
	ldr	ip, [r4, #1636]	@ tmp877, last_rec_pos_time
	rsb	r0, ip, r3	@ tmp876, tmp877, currtime.1293
	cmp	r0, r1	@ tmp876, g_TraceFramePeriod
	bls	.L233	@,
	add	lr, r5, r2, asl #24	@, tmp888, VdhId, temp.1294,
	ldr	r0, .L250	@,
	add	r2, lr, #458752	@, tmp888,
	movw	r1, #677	@,
	str	r3, [r4, #1636]	@ currtime.1293, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L233	@
.L251:
	.align	2
.L250:
	.word	.LANCHOR1+20
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_VdmIntServProc
	.type	VDMDRV_VdmIntServProc, %function
VDMDRV_VdmIntServProc:
	.fnstart
.LFB1375:
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
	subs	r4, r0, #0	@ VdhId, VdhId
	mov	r3, #15	@ tmp149,
	str	r3, [fp, #-48]	@ tmp149, Mb0QpInCurrPic
	ble	.L253	@,
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #995	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L271:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L253:
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp556,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp556,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r6, #64]	@ D.35919, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckInt
	cmp	r3, #0	@ D.35919,
	beq	.L274	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35919
	tst	r0, #1	@,
	beq	.L274	@,
	ldr	r3, [r6, #96]	@ D.35927, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movw	r5, #:lower16:.LANCHOR0	@ tmp553,
	mov	r7, r4, asl #2	@ tmp559, VdhId,
	movt	r5, #:upper16:.LANCHOR0	@ tmp553,
	add	r2, r7, r5	@ tmp158, tmp559, tmp553
	cmp	r3, #0	@ D.35927,
	mov	r1, #1	@ tmp160,
	str	r1, [r2, #196]	@ tmp160, s_VdmIsInISR
	beq	.L257	@,
	sub	r0, fp, #48	@,,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.35927
.L258:
	ldr	r3, [r6, #52]	@ D.35932, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.35932,
	beq	.L259	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35932
.L260:
	mov	r0, #6	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	r6, r4, asl #1	@ tmp558, VdhId,
	bne	.L275	@,
.L261:
	add	ip, r6, r4	@ tmp199, tmp558, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp195,
	movt	r3, #:upper16:.LANCHOR0	@ tmp195,
	add	r2, r5, ip, asl #4	@, tmp201, tmp553, tmp199,
	ldr	r0, [r2, #244]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	cmp	r0, #1	@ <variable>.ChanResetFlag,
	beq	.L276	@,
	mov	r8, #180	@ tmp250,
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp555,
	mla	ip, r8, r4, r3	@ tmp251, tmp250, VdhId, tmp195
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp555,
	mov	r8, r4, asl #6	@ tmp554, VdhId,
	add	r3, r7, r3	@ tmp240, tmp559, tmp195
	add	r9, r8, sl	@ tmp259, tmp554, tmp555
	ldr	r1, [r3, #1764]	@ tmp253, cycle
	ldr	r0, [r9, #4]	@ <variable>.u32VaLastStartTime, <variable>.u32VaLastStartTime
	ldr	lr, [ip, #1480]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	cmp	r0, #0	@ <variable>.u32VaLastStartTime,
	add	r2, r1, lr	@ tmp255, tmp253, <variable>.DecCyclePerPic
	str	r2, [r3, #1764]	@ tmp255, cycle
	bne	.L277	@,
.L263:
	add	sl, r6, r4	@ tmp380, tmp558, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp376,
	movt	r8, #:upper16:.LANCHOR0	@ tmp376,
	add	r0, r5, sl, asl #4	@, tmp382, tmp553, tmp380,
	ldr	r2, [r0, #200]	@ D.35978, <variable>.VdmStateMachine
	cmp	r2, #0	@ D.35978,
	beq	.L266	@,
	add	r1, r8, sl, asl #4	@, tmp391, tmp376, tmp380,
	ldr	r9, [r1, #216]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r9, #0	@ <variable>.pDecParam,
	beq	.L278	@,
.L266:
	add	r9, r6, r4	@ tmp445, tmp558, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp442,
	movt	r8, #:upper16:.LANCHOR0	@ tmp442,
	add	sl, r5, r9, asl #4	@, tmp449, tmp553, tmp445,
	add	sl, sl, #8	@ tmp450, tmp449,
	ldr	r0, [sl, #200]	@, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L279	@,
	ldr	r0, [sl, #200]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	subs	r3, r0, #0	@ D.35993,
	beq	.L280	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L269:
	add	r4, r6, r4	@ tmp543, tmp558, VdhId
	add	r7, r7, r5	@ tmp537, tmp559, tmp553
	mov	lr, #0	@ tmp539,
	add	r5, r5, r4, asl #4	@, tmp547, tmp553, tmp543,
	str	lr, [r7, #196]	@ tmp539, s_VdmIsInISR
	ldr	r0, [r5, #208]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
.L274:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L271	@
.L279:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	ldr	r2, [sl, #200]	@, <variable>.ChanId
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldr	r3, [sl, #200]	@ <variable>.ChanId, <variable>.ChanId
	add	r9, r8, r9, asl #4	@, tmp485, tmp442, tmp445,
	mov	r0, #0	@ tmp478,
	add	r1, r3, #32	@ tmp476, <variable>.ChanId,
	str	r0, [r8, r1, asl #2]	@ tmp478, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [r9, #200]	@ tmp478, <variable>.VdmStateMachine
	b	.L269	@
.L277:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sl, r4, asl #6]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	r3, [r9, #4]	@ prephitmp.1386, <variable>.u32VaLastStartTime
	mov	r9, r4, asl #3	@ tmp552, VdhId,
	add	ip, r1, #49920	@ tmp268, <variable>.u32VaBeginTime,
	add	r8, r8, sl	@ tmp292, tmp554, tmp555
	add	r2, ip, #80	@ tmp268, tmp268,
	cmp	r2, r3	@ tmp268, prephitmp.1386
	strcc	r3, [sl, r4, asl #6]	@ prephitmp.1386, <variable>.u32VaBeginTime
	addcc	r1, r9, #1	@ tmp277, tmp552,
	addcs	r2, r9, #1	@ tmp273, tmp552,
	movcc	r2, #0	@ tmp278,
	add	r9, r9, #1	@ tmp286, tmp552,
	strcc	r2, [sl, r1, asl #3]	@ tmp278, <variable>.u32VaVdmWorkTime
	mov	r1, #180	@ tmp303,
	mla	r1, r1, r4, r5	@ tmp304, tmp303, VdhId, tmp553
	ldrcs	ip, [sl, r2, asl #3]	@ prephitmp.1375, <variable>.u32VaVdmWorkTime
	movcc	ip, r2	@ prephitmp.1375, tmp278
	ldr	r2, [sl, r4, asl #6]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	lr, [r8, #48]	@ <variable>.u32PicNum, <variable>.u32PicNum
	rsb	r2, r2, r0	@ Period, <variable>.u32VaBeginTime, CurTime
	add	r0, ip, r0	@ tmp287, prephitmp.1375, CurTime
	rsb	r0, r3, r0	@ tmp288, prephitmp.1386, tmp287
	str	r0, [sl, r9, asl #3]	@ tmp288, <variable>.u32VaVdmWorkTime
	ldr	r1, [r1, #1480]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	cmp	r2, #1000	@ Period,
	ldr	ip, [r8, #52]	@, <variable>.u32AccVdmKiloCycle
	add	sl, lr, #1	@ tmp326, <variable>.u32PicNum,
	mov	r3, #0	@ tmp294,
	str	sl, [r8, #48]	@ tmp326, <variable>.u32PicNum
	add	lr, ip, r1, lsr #10	@,,, <variable>.DecCyclePerPic,
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp284,
	str	lr, [fp, #-56]	@, %sfp
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp284,
	str	r3, [r8, #4]	@ tmp294, <variable>.u32VaLastStartTime
	str	lr, [r8, #52]	@, <variable>.u32AccVdmKiloCycle
	bcc	.L263	@,
	mov	ip, #1000	@ tmp342,
	mov	r1, r2	@, Period
	mul	r0, ip, r0	@, tmp342, tmp288
	str	r3, [fp, #-60]	@,
	str	r2, [fp, #-64]	@,
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-60]	@,
	add	r9, sl, r9, asl #3	@, tmp335, tmp284, tmp286,
	str	r3, [r8, #48]	@ tmp294, <variable>.u32PicNum
	str	r3, [sl, r4, asl #6]	@ tmp294, <variable>.u32VaBeginTime
	ldr	lr, [fp, #-56]	@, %sfp
	str	lr, [r8, #56]	@, <variable>.u32VaVdmKiloCycle
	ldr	sl, [fp, #-64]	@,
	str	r3, [r8, #52]	@ tmp294, <variable>.u32AccVdmKiloCycle
	str	sl, [r8, #60]	@ Period, <variable>.u32StatTime
	str	r0, [r9, #4]	@, <variable>.u32VaVdmLoad
	b	.L263	@
.L275:
	bl	OSAL_GetTimeInMs	@
	mov	r6, r4, asl #1	@ tmp558, VdhId,
	add	r1, r6, r4	@ tmp169, tmp558, VdhId
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp183,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp183,
	add	r2, r5, r1, asl #4	@, tmp173, tmp553, tmp169,
	ldr	r1, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r2, #208]	@ D.35940, <variable>.ChanId
	add	r3, r5, r2, asl #2	@, tmp179, tmp553, D.35940,
	mov	ip, r0	@ currtime,
	ldr	r0, [r3, #1700]	@ tmp182, last_rec_pos_time
	rsb	r0, r0, ip	@ tmp181, tmp182, currtime
	cmp	r0, r1	@ tmp181, g_TraceFramePeriod
	bls	.L261	@,
	add	lr, r4, r2, asl #24	@, tmp193, VdhId, D.35940,
	ldr	r0, .L281	@,
	add	r2, lr, #393216	@, tmp193,
	movw	r1, #1077	@,
	str	ip, [r3, #1700]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L261	@
.L278:
	add	r7, r8, sl, asl #4	@, tmp402, tmp376, tmp380,
	mov	r0, r9	@, <variable>.pDecParam
	add	r7, r7, #8	@ tmp403, tmp402,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #200]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L267	@,
	ldr	r0, [r7, #200]	@, <variable>.ChanId
	mov	r3, r9	@, <variable>.pDecParam
	mov	r1, #100	@,
	ldr	r2, [fp, #-48]	@, Mb0QpInCurrPic
	bl	VCTRL_VdmPostProc	@
.L267:
	add	r4, r6, r4	@ tmp422, tmp558, VdhId
	mov	r3, #0	@ tmp431,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	ip, r5, r4, asl #4	@, tmp426, tmp553, tmp422,
	ldr	lr, [ip, #208]	@ <variable>.ChanId, <variable>.ChanId
	mov	r4, ip	@ tmp438, tmp426
	add	r2, lr, #32	@ tmp429, <variable>.ChanId,
	str	r3, [r5, r2, asl #2]	@ tmp431, g_ChanCtx.ChanDecByVdhPlusOne
	str	r3, [ip, #200]	@ tmp431, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L271	@
.L259:
	mov	r0, r3	@, D.35932
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1066	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L260	@
.L257:
	mov	r0, r3	@, D.35927
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1065	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L258	@
.L276:
	add	ip, r3, ip, asl #4	@, tmp221, tmp195, tmp199,
	mov	r1, #0	@ tmp212,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r1, [r2, #244]	@ tmp212, <variable>.ChanResetFlag
	ldr	lr, [ip, #208]	@ <variable>.ChanId, <variable>.ChanId
	movt	r0, #:upper16:g_TaskLock	@,
	add	ip, lr, #32	@ tmp224, <variable>.ChanId,
	str	r1, [r3, ip, asl #2]	@ tmp212, g_ChanCtx.ChanDecByVdhPlusOne
	str	r1, [r2, #200]	@ tmp212, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L271	@
.L280:
	ldr	r2, [sl, #200]	@, <variable>.ChanId
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r3, [fp, #-60]	@,
	bl	dprint_vfmw	@
	ldr	r0, [sl, #200]	@ <variable>.ChanId, <variable>.ChanId
	ldr	ip, [fp, #-60]	@,
	add	r9, r8, r9, asl #4	@, tmp531, tmp442, tmp445,
	add	r2, r0, #32	@ tmp522, <variable>.ChanId,
	str	ip, [r8, r2, asl #2]	@ D.35993, g_ChanCtx.ChanDecByVdhPlusOne
	str	ip, [r9, #200]	@ D.35993, <variable>.VdmStateMachine
	b	.L269	@
.L282:
	.align	2
.L281:
	.word	.LANCHOR1+36
	.fnend
	.size	VDMDRV_VdmIntServProc, .-VDMDRV_VdmIntServProc
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1374:
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
	mov	r7, r0, asl #1	@ tmp577, VdhId,
	add	r5, r7, r0	@ tmp157, tmp577, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp578,
	movt	r4, #:upper16:.LANCHOR0	@ tmp578,
	mov	r6, r0	@ VdhId, VdhId
	add	r3, r4, r5, asl #4	@, tmp161, tmp578, tmp157,
	ldr	r0, [r3, #208]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L305	@,
.L284:
	add	r8, r7, r6	@ tmp222, tmp577, VdhId
	movw	r5, #:lower16:.LANCHOR0	@ tmp218,
	movt	r5, #:upper16:.LANCHOR0	@ tmp218,
	add	sl, r4, r8, asl #4	@, tmp224, tmp578, tmp222,
	ldr	lr, [sl, #200]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	lr, #0	@ <variable>.VdmStateMachine,
	bne	.L306	@,
.L285:
	add	r5, r7, r6	@ tmp340, tmp577, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp336,
	movt	r3, #:upper16:.LANCHOR0	@ tmp336,
	add	r5, r4, r5, asl #4	@, tmp342, tmp578, tmp340,
	ldr	r0, [r5, #228]	@ <variable>.H264NeedMoreStart, <variable>.H264NeedMoreStart
	cmp	r0, #1	@ <variable>.H264NeedMoreStart,
	beq	.L307	@,
	add	r6, r3, r6, asl #2	@, tmp568, tmp336, VdhId,
	ldr	r0, [r6, #192]	@ D.35893, s_eVdmDrvSleepState
	cmp	r0, #0	@ D.35893,
	beq	.L290	@,
	cmp	r0, #1	@ D.35893,
	moveq	r3, #2	@ tmp575,
	streq	r3, [r6, #192]	@ tmp575, s_eVdmDrvSleepState
	beq	.L290	@,
.L291:
	mov	r0, #1	@ D.35858,
.L290:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L306:
	bl	OSAL_GetTimeInMs	@
	add	r1, r8, #1	@ tmp239, tmp222,
	add	r2, r5, r1, asl #4	@, tmp242, tmp218, tmp239,
	ldr	r1, [r2, #204]	@ D.35836, <variable>.StartTime
	cmp	r0, r1	@ D.35834, D.35836
	mov	r3, r0	@ D.35834,
	str	r0, [sl, #224]	@ D.35834, <variable>.CurrTime
	strcc	r0, [r2, #204]	@ D.35834, <variable>.StartTime
	movcc	r0, #1	@ D.35858,
	bcc	.L290	@,
	subs	r2, r3, r1	@ TimeElapse, D.35834, D.35836
	bmi	.L288	@,
	cmp	r1, #0	@ D.35836,
	beq	.L288	@,
	cmp	r2, #500	@ TimeElapse,
	bls	.L291	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp263,
	movt	r3, #:upper16:g_event_report	@ tmp263,
	ldr	r3, [r3, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L292	@,
	add	r5, r5, r8, asl #4	@, tmp271, tmp218, tmp222,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [r5, #208]	@, <variable>.ChanId
	blx	r3	@ g_event_report.462
.L292:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp275,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp275,
	ldr	r3, [r0, #44]	@ D.35850, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35850,
	beq	.L293	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.35850
.L294:
	add	r7, r7, r6	@ tmp281, tmp577, VdhId
	mov	r5, #1	@ tmp285,
	movw	r3, #:lower16:.LANCHOR0	@ tmp277,
	movt	r3, #:upper16:.LANCHOR0	@ tmp277,
	add	r4, r4, r7, asl #4	@, tmp283, tmp578, tmp281,
	ldr	ip, [r4, #244]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r5, [r4, #236]	@ tmp285, <variable>.VdmTimeOut
	cmp	ip, r5	@ <variable>.ChanResetFlag,
	bne	.L295	@,
	add	r7, r3, r7, asl #4	@, tmp330, tmp277, tmp281,
	mov	r2, #0	@ tmp303,
	mov	r0, r2	@ D.35858, tmp303
	str	r2, [r4, #236]	@ tmp303, <variable>.VdmTimeOut
	ldr	r1, [r7, #208]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #244]	@ tmp303, <variable>.ChanResetFlag
	add	lr, r1, #32	@ tmp333, <variable>.ChanId,
	str	r2, [r4, #200]	@ tmp303, <variable>.VdmStateMachine
	str	r2, [r3, lr, asl #2]	@ tmp303, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L290	@
.L307:
	ldr	r9, [r5, #240]	@ <variable>.LastWaitMoreStartTime, <variable>.LastWaitMoreStartTime
	cmp	r9, #0	@ <variable>.LastWaitMoreStartTime,
	beq	.L308	@,
.L297:
	add	r9, r7, r6	@ tmp365, tmp577, VdhId
	mov	ip, #0	@ tmp371,
	add	lr, r9, #1	@ tmp366, tmp365,
	movw	sl, #:lower16:.LANCHOR0	@ tmp362,
	add	r8, r4, r9, asl #4	@, tmp379, tmp578, tmp365,
	movt	sl, #:upper16:.LANCHOR0	@ tmp362,
	add	r5, r4, lr, asl #4	@, tmp369, tmp578, tmp366,
	add	r8, r8, #8	@ tmp380, tmp379,
	str	ip, [r5, #200]	@ tmp371, <variable>.pDecParam
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	str	ip, [fp, #-48]	@,
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35866,
	str	r0, [r5, #200]	@ D.35866, <variable>.pDecParam
	ldr	r3, [fp, #-48]	@,
	beq	.L298	@,
	add	sl, sl, r9, asl #4	@, tmp398, tmp362, tmp365,
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	str	r3, [sl, #240]	@ tmp371, <variable>.LastWaitMoreStartTime
	bl	VCTRL_GetVidStd	@
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp422,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp422,
	ldr	r3, [r2, #76]	@ D.35874, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.35874,
	str	r0, [r8, #204]	@, <variable>.VidStd
	beq	.L299	@,
	ldr	r1, [r5, #200]	@, <variable>.pDecParam
	mov	r2, r6	@, VdhId
	blx	r3	@ D.35874
	cmp	r0, #0	@,
	beq	.L300	@,
.L299:
	add	r6, r7, r6	@ tmp438, tmp577, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	mov	r5, r0	@ tmp442,
	bl	dprint_vfmw	@
	add	r0, r4, r6, asl #4	@, tmp459, tmp578, tmp438,
	mov	r1, r5	@, tmp442
	add	r8, r0, #8	@ tmp460, tmp459,
	mov	r3, r5	@, tmp442
	mov	r6, r0	@ tmp440, tmp459
	str	r5, [r0, #204]	@ tmp442, <variable>.ErrRatio
	mov	r2, #15	@,
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	str	r5, [r6, #200]	@ tmp442, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r3, [r8, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #1	@ D.35858,
	add	r1, r3, #32	@ tmp474, <variable>.ChanId,
	str	r5, [r4, r1, asl #2]	@ tmp442, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L290	@
.L305:
	add	r5, r4, r5, asl #4	@, tmp171, tmp578, tmp157,
	ldr	r0, [r5, #200]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r0, #0	@ <variable>.VdmStateMachine,
	beq	.L285	@,
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp174,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp174,
	ldr	r3, [r1, #84]	@ D.35826, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.35826,
	beq	.L286	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.35826
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp183,
	strne	r3, [r5, #244]	@ tmp183, <variable>.ChanResetFlag
	bne	.L284	@,
.L286:
	add	sl, r7, r6	@ tmp188, tmp577, VdhId
	mov	r1, #852	@,
	ldr	r0, .L309	@,
	mov	r5, #0	@ tmp192,
	add	ip, r4, sl, asl #4	@, tmp190, tmp578, tmp188,
	add	r8, r4, sl, asl #4	@, tmp212, tmp578, tmp188,
	ldr	r2, [ip, #200]	@, <variable>.VdmStateMachine
	str	r5, [ip, #244]	@ tmp192, <variable>.ChanResetFlag
	bl	DBG_AddTrace	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	sl, [r8, #208]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, sl, #32	@ tmp215, <variable>.ChanId,
	str	r5, [r4, r2, asl #2]	@ tmp192, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L284	@
.L288:
	add	r6, r7, r6	@ tmp247, tmp577, VdhId
	mov	r0, #1	@ D.35858,
	add	r4, r4, r6, asl #4	@, tmp251, tmp578, tmp247,
	str	r3, [r4, #220]	@ D.35834, <variable>.StartTime
	b	.L290	@
.L295:
	mov	r0, r6	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r5	@ D.35858, tmp285
	b	.L290	@
.L308:
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #240]	@, <variable>.LastWaitMoreStartTime
	b	.L297	@
.L300:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp486,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp486,
	add	ip, r2, r6, asl #6	@, tmp489, tmp486, VdhId,
	mov	r1, r0	@ D.35881,
	mov	r0, r6	@, VdhId
	str	r1, [r5, #204]	@ D.35881, <variable>.StartTime
	str	r1, [ip, #4]	@ D.35881, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	ldr	r0, [r8, #200]	@, <variable>.ChanId
	mov	r1, r6	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #1	@ D.35858,
	b	.L290	@
.L298:
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	add	sl, sl, r9, asl #4	@, tmp509, tmp362, tmp365,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sl, #240]	@ temp.1437, <variable>.LastWaitMoreStartTime
	cmp	r0, r3	@ CurTime, temp.1437
	rsbcc	r3, r0, r3	@ tmp511, CurTime, temp.1437
	rsbcs	r3, r3, r0	@ TimeDiff, temp.1437, CurTime
	mvncc	r3, r3	@ TimeDiff, tmp511
	cmp	r3, #200	@ TimeDiff,
	bls	.L291	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r5, r0	@ tmp521,
	bl	dprint_vfmw	@
	add	r3, r7, r6	@ tmp517, tmp577, VdhId
	mov	r0, #100	@ tmp539,
	mov	r2, #15	@,
	add	r6, r4, r3, asl #4	@, tmp547, tmp578, tmp517,
	mov	r1, r0	@, tmp539
	mov	r3, r5	@, tmp521
	mov	ip, r6	@ tmp519, tmp547
	add	r6, r6, #8	@ tmp548, tmp547,
	str	r0, [ip, #204]	@ tmp539, <variable>.ErrRatio
	str	r5, [ip, #240]	@ tmp521, <variable>.LastWaitMoreStartTime
	ldr	r0, [r6, #200]	@, <variable>.ChanId
	str	r5, [ip, #200]	@ tmp521, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r1, [r6, #200]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #1	@ D.35858,
	add	ip, r1, #32	@ tmp562, <variable>.ChanId,
	str	r5, [r4, ip, asl #2]	@ tmp521, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L290	@
.L293:
	mov	r0, r3	@, D.35850
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #890	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L294	@
.L310:
	.align	2
.L309:
	.word	.LANCHOR1+60
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1377:
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
	beq	.L314	@,
.L312:
	mov	r0, r4	@, tmp136
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L314:
	bl	VDMDRV_ActivateVDH	@
	b	.L312	@
	.fnend
	.size	VDMDRV_WakeUpVdm, .-VDMDRV_WakeUpVdm
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	g_HwMem
	.global	g_UpMsg
	.global	g_RepairParam
	.global	g_DecReport
	.global	g_BackUp
	.global	g_VdmDrvParam
	.global	g_ChanCtx
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35495, %object
	.size	__func__.35495, 19
__func__.35495:
	.ascii	"VDMDRV_ActivateVDH\000"
	.space	1
	.type	__func__.35627, %object
	.size	__func__.35627, 16
__func__.35627:
	.ascii	"VDMDRV_AfterDec\000"
	.type	__func__.35910, %object
	.size	__func__.35910, 22
__func__.35910:
	.ascii	"VDMDRV_VdmIntServProc\000"
	.space	2
	.type	__func__.35815, %object
	.size	__func__.35815, 19
__func__.35815:
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
	.ascii	"====== forece VDM sleep! ======\012\000"
	.space	3
.LC6:
	.ascii	"The channel %d is not active\012\000"
	.space	2
.LC7:
	.ascii	"The channel %d is deced\012\000"
	.space	3
.LC8:
	.ascii	"---SKIP REPAIR!---\012\000"
.LC9:
	.ascii	"VDM Start Fail 2 !\012\000"
.LC10:
	.ascii	"isr begin: *pVdmStateMachine = %d, timeout = %d, Er"
	.ascii	"rRatio = %d\012\000"
.LC11:
	.ascii	"ISR process vdm timeout!\012\000"
	.space	2
.LC12:
	.ascii	"*pErrRatio = %d\012\000"
	.space	3
.LC13:
	.ascii	"*pH264NeedMoreStart, *pH264FinishedMultiStart = %d,"
	.ascii	"%d\012\000"
	.space	1
.LC14:
	.ascii	"VdmStateMachine=%d Error!\012\000"
	.space	1
.LC15:
	.ascii	"line: %d\012\000"
	.space	2
.LC16:
	.ascii	"vdm state machine = %d, but DecParam is null!\012\000"
	.space	1
.LC17:
	.ascii	"ISR called but chan %d is not active!\012\000"
	.space	1
.LC18:
	.ascii	"Vdm Time Out(%d ms), Reset Vdm!\012\000"
	.space	3
.LC19:
	.ascii	"VDM Start Fail 1 !\012\000"
.LC20:
	.ascii	"h264 more start need parameter\012\000"
.LC21:
	.ascii	"wait more start time out!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_ChanCtx, %object
	.size	g_ChanCtx, 192
g_ChanCtx:
	.space	192
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
	.type	last_rec_pos_time.35489, %object
	.size	last_rec_pos_time.35489, 64
last_rec_pos_time.35489:
	.space	64
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	last_rec_pos_time.35620, %object
	.size	last_rec_pos_time.35620, 64
last_rec_pos_time.35620:
	.space	64
	.type	last_rec_pos_time.35908, %object
	.size	last_rec_pos_time.35908, 64
last_rec_pos_time.35908:
	.space	64
	.type	cycle.35907, %object
	.size	cycle.35907, 8
cycle.35907:
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
