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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200/.vfmw.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200/vfmw.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200/vfmw.o -O2 -Wall
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
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
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
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.417, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.38627, <variable>.PERI_CRG30.u32
	orr	r3, r0, #3	@ u32TmpValue, D.38627,
	bfc	r3, #4, #1	@ u32TmpValue,,
	bfc	r3, #6, #1	@ u32TmpValue,,
	bfc	r3, #8, #2	@ u32TmpValue,,
	bfc	r3, #12, #5	@ u32TmpValue,,
	bfc	r3, #17, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	VDM_CloseHardware
	.type	VDM_CloseHardware, %function
VDM_CloseHardware:
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
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.418, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.38634, <variable>.PERI_CRG30.u32
	orr	r3, r0, #80	@ u32TmpValue, D.38634,
	bfc	r3, #0, #1	@ u32TmpValue,,
	bfc	r3, #1, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDM_CloseHardware, .-VDM_CloseHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
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
	movw	r0, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r0, #0]	@ g_pstRegCrg.419, g_pstRegCrg
	ldr	r2, [r3, #120]	@ D.38641, <variable>.PERI_CRG30.u32
	bfc	r2, #5, #1	@ u32TmpValue,,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	SCD_CloseHardware
	.type	SCD_CloseHardware, %function
SCD_CloseHardware:
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
	movw	r1, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.420, g_pstRegCrg
	ldr	r0, [r3, #120]	@ D.38648, <variable>.PERI_CRG30.u32
	orr	r2, r0, #32	@ u32TmpValue, D.38648,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCD_CloseHardware, .-SCD_CloseHardware
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
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
	movw	ip, #:lower16:g_pstRegCrg	@ tmp138,
	movt	ip, #:upper16:g_pstRegCrg	@ tmp138,
	mov	r0, #0	@,
	ldr	r3, [ip, #0]	@ g_pstRegCrg.421, g_pstRegCrg
	ldr	r1, [r3, #136]	@ D.38655, <variable>.PERI_CRG34.u32
	orr	r2, r1, #1	@ u32TmpValue, D.38655,
	bfc	r2, #4, #1	@ u32TmpValue,,
	str	r2, [r3, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	VFMW_set_dbgopt
	.type	VFMW_set_dbgopt, %function
VFMW_set_dbgopt:
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
	bl	VCTRL_SetDbgOption	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VFMW_set_dbgopt, .-VFMW_set_dbgopt
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
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
.LFB1371:
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
	mov	r1, #16	@ tmp134,
	mov	r0, #50	@ tmp135,
	mov	r3, #1920	@ tmp136,
	mov	ip, #1088	@ tmp137,
	str	r1, [r4, #0]	@ tmp134, <variable>.s32MaxChanNum
	movw	r2, #:lower16:94003200	@ tmp157,
	mov	r1, #0	@ tmp139,
	movt	r2, #:upper16:94003200	@ tmp157,
	str	r0, [r4, #4]	@ tmp135, <variable>.s32MaxBitRate
	mov	r0, #3	@ tmp140,
	str	r3, [r4, #8]	@ tmp136, <variable>.s32MaxFrameWidth
	mov	r3, #2	@ tmp141,
	str	ip, [r4, #12]	@ tmp137, <variable>.s32MaxFrameHeight
	mov	ip, #6	@ tmp142,
	str	r2, [r4, #16]	@ tmp157, <variable>.s32MaxPixelPerSec
	mov	r2, #8	@ tmp143,
	str	r1, [r4, #20]	@ tmp139, <variable>.SupportedStd
	mov	r1, #9	@ tmp144,
	str	r0, [r4, #24]	@ tmp140, <variable>.SupportedStd
	mov	r0, #1	@ tmp145,
	str	r3, [r4, #28]	@ tmp141, <variable>.SupportedStd
	mov	r3, #5	@ tmp146,
	str	ip, [r4, #32]	@ tmp142, <variable>.SupportedStd
	mov	ip, #4	@ tmp147,
	str	r2, [r4, #36]	@ tmp143, <variable>.SupportedStd
	mov	r2, #10	@ tmp148,
	str	r1, [r4, #40]	@ tmp144, <variable>.SupportedStd
	mov	r1, #14	@ tmp149,
	str	r0, [r4, #44]	@ tmp145, <variable>.SupportedStd
	mov	r0, #11	@ tmp150,
	str	r3, [r4, #48]	@ tmp146, <variable>.SupportedStd
	mov	r3, #12	@ tmp151,
	str	ip, [r4, #52]	@ tmp147, <variable>.SupportedStd
	mov	ip, #13	@ tmp152,
	str	r2, [r4, #56]	@ tmp148, <variable>.SupportedStd
	mov	r2, #15	@ tmp153,
	str	r1, [r4, #60]	@ tmp149, <variable>.SupportedStd
	mov	r1, #17	@ tmp154,
	str	r0, [r4, #64]	@ tmp150, <variable>.SupportedStd
	mov	r0, #18	@ tmp155,
	str	r3, [r4, #68]	@ tmp151, <variable>.SupportedStd
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
.LFB1370:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	mov	r4, r2	@ pArgs, pArgs
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L20	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC2	@,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
.L21:
	mov	r0, r6	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L20:
	cmp	r1, #54	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L66	@
.L44:
	.word	.L23
	.word	.L24
	.word	.L23
	.word	.L23
	.word	.L25
	.word	.L26
	.word	.L23
	.word	.L23
	.word	.L27
	.word	.L28
	.word	.L23
	.word	.L23
	.word	.L23
	.word	.L23
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L66
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L23
	.word	.L23
	.word	.L36
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L37
	.word	.L38
	.word	.L66
	.word	.L39
	.word	.L40
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L23
	.word	.L23
	.word	.L41
	.word	.L42
	.word	.L43
.L70:
	bl	VCTRL_DestroyChan	@
	subs	r6, r0, #0	@ ret,
	beq	.L21	@,
.L66:
	mvn	r6, #0	@ ret,
	b	.L21	@
.L35:
	cmp	r2, #0	@ pArgs,
	beq	.L114	@,
.L59:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.39038,
	str	r0, [r4, #0]	@ D.39038,* pArgs
	moveq	r6, r0	@, ret, D.39038
	movne	r6, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L24:
	cmp	r2, #0	@ pArgs,
	beq	.L115	@,
.L45:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	mov	r6, #0	@ ret,
	b	.L110	@
.L43:
	cmp	r2, #0	@ pArgs,
	beq	.L116	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigPVRInfo	@
.L106:
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
.L110:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L42:
	cmp	r2, #0	@ pArgs,
	beq	.L117	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r6, #0	@ ret,
	b	.L110	@
.L25:
	cmp	r2, #0	@ pArgs,
	beq	.L118	@,
	ldr	r0, [r2, #0]	@ prephitmp.716,* pArgs
	cmp	r0, #27	@ prephitmp.716,
	bgt	.L119	@,
.L48:
	add	r1, r4, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	mov	r5, r0	@ ret.750,
	mov	r0, #2	@,
	mov	r2, r5	@, ret.750
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ret.750,
	str	r5, [r4, #0]	@ ret.750,* pArgs
	blt	.L66	@,
.L67:
	mov	r6, #0	@ ret,
	b	.L21	@
.L39:
	cmp	r2, #0	@ pArgs,
	beq	.L120	@,
.L60:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetDiscardPicParam	@
	mov	r6, r0	@ ret,
	b	.L110	@
.L29:
	cmp	r2, #0	@ pArgs,
	beq	.L121	@,
.L53:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetStreamInterface	@
	b	.L106	@
.L30:
	cmp	r2, #0	@ pArgs,
	beq	.L122	@,
.L54:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	movw	r1, #:lower16:VCTRL_GetChanImage	@ tmp209,
	movw	r0, #:lower16:VCTRL_ReleaseChanImage	@ tmp210,
	movt	r1, #:upper16:VCTRL_GetChanImage	@ tmp209,
	movt	r0, #:upper16:VCTRL_ReleaseChanImage	@ tmp210,
	str	r1, [r4, #4]	@ tmp209, <variable>.read_image
	mov	r6, #0	@ ret,
	str	r0, [r4, #8]	@ tmp210, <variable>.release_image
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L27:
	cmp	r2, #0	@ pArgs,
	beq	.L123	@,
.L51:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanCfg	@
.L108:
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L31:
	cmp	r2, #0	@ pArgs,
	beq	.L124	@,
.L55:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetStreamSize	@
	mov	r6, r0	@ ret,
	b	.L110	@
.L41:
	cmp	r2, #0	@ pArgs,
	beq	.L125	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	mov	ip, #1	@ tmp254,
	mov	r3, #0	@ tmp255,
	str	ip, [fp, #-80]	@ tmp254, option.s32KeepBS
	str	r3, [fp, #-76]	@ tmp255, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	bne	.L97	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r6, r0, #0	@ ret,
	beq	.L110	@,
.L97:
	mvn	r6, #0	@ ret,
	b	.L110	@
.L38:
	cmp	r2, #0	@ pArgs,
	beq	.L126	@,
.L62:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_PutUsrdecFrame	@
	b	.L106	@
.L36:
	cmp	r2, #0	@ pArgs,
	beq	.L127	@,
.L46:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	mov	r6, #0	@ ret,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L33:
	cmp	r2, #0	@ pArgs,
	beq	.L128	@,
.L57:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	sub	r2, fp, #64	@,,
	mov	r3, #1	@,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.39018,
	bne	.L97	@,
	ldr	r3, [fp, #-60]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	r0, [fp, #-56]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r1, [fp, #-64]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	str	r3, [r4, #4]	@ DetailMemSize.ScdDetailMem,
	str	r0, [r4, #8]	@ DetailMemSize.ChanCtxDetailMem,
	str	r1, [r4, #0]	@ DetailMemSize.VdhDetailMem,* pArgs
	b	.L110	@
.L26:
	cmp	r2, #0	@ pArgs,
	beq	.L129	@,
	ldr	r0, [r2, #0]	@ prephitmp.712,* pArgs
	cmp	r0, #27	@ prephitmp.712,
	bgt	.L130	@,
.L50:
	ldr	r1, [r4, #4]	@,
	mov	r2, #2	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.754,
	str	r0, [r4, #0]	@ ret.754,* pArgs
	blt	.L66	@,
	mov	r6, #0	@ ret,
	b	.L21	@
.L32:
	cmp	r2, #0	@ pArgs,
	beq	.L131	@,
.L56:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	sub	r1, fp, #40	@,,
	sub	r2, fp, #52	@,,
	bl	VCTRL_GetChanMemSize	@
	subs	r6, r0, #0	@ D.39005,
	bne	.L97	@,
	ldr	r2, [fp, #-40]	@ VdmMem, VdmMem
	ldr	lr, [fp, #-52]	@ ScdMem, ScdMem
	ldr	r1, [fp, #-44]	@ ScdMem, ScdMem
	ldr	r3, [fp, #-36]	@ VdmMem, VdmMem
	add	r0, lr, r2	@ tmp220, ScdMem, VdmMem
	ldr	ip, [fp, #-48]	@ ScdMem, ScdMem
	ldr	r2, [fp, #-32]	@ VdmMem, VdmMem
	add	lr, ip, r3	@ tmp223, ScdMem, VdmMem
	str	r0, [r4, #0]	@ tmp220, <variable>.MinMemSize
	add	r2, r1, r2	@ tmp226, ScdMem, VdmMem
	str	lr, [r4, #4]	@ tmp223, <variable>.NormalMemSize
	str	r2, [r4, #8]	@ tmp226, <variable>.FluentMemSize
	b	.L110	@
.L28:
	cmp	r2, #0	@ pArgs,
	beq	.L132	@,
.L52:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigChan	@
	cmp	r0, #0	@ ret
	moveq	r6, r0	@, ret, ret
	mvnne	r6, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_LoadDspCode	@
	b	.L21	@
.L34:
	cmp	r2, #0	@ pArgs,
	beq	.L133	@,
.L58:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetChanMemInfo	@
	subs	r6, r0, #0	@ ret,
	bne	.L134	@,
	ldr	lr, [fp, #-76]	@ D.39030, MemRec.VirAddr
	ldr	r2, [fp, #-80]	@ D.39029, MemRec.PhyAddr
	ldr	ip, [fp, #-72]	@ MemRec.Length, MemRec.Length
	cmp	lr, #0	@ D.39030,
	stmia	r4, {r2, lr}	@ phole stm
	str	ip, [r4, #8]	@ MemRec.Length, <variable>.Length
	beq	.L97	@,
	cmp	r2, #0	@ D.39029,
	mvneq	r6, #0	@ ret,
	b	.L110	@
.L37:
	cmp	r2, #0	@ pArgs,
	beq	.L135	@,
.L61:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r6, [fp, #-72]	@ stMem.Length, stMem.Length
	ldr	r2, [fp, #-80]	@ stMem.PhyAddr, stMem.PhyAddr
	stmia	r4, {r2, r6}	@ phole stm
	b	.L106	@
.L40:
	cmp	r2, #0	@ pArgs,
	bne	.L66	@,
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #708	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L23:
	cmp	r1, #51	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L66	@
.L78:
	.word	.L67
	.word	.L45
	.word	.L67
	.word	.L67
	.word	.L68
	.word	.L69
	.word	.L70
	.word	.L71
	.word	.L51
	.word	.L52
	.word	.L72
	.word	.L73
	.word	.L74
	.word	.L75
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L66
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L76
	.word	.L77
	.word	.L46
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L61
	.word	.L62
	.word	.L66
	.word	.L60
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L67
	.word	.L67
.L77:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ResetChanWithOption	@
	b	.L106	@
.L76:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ReleaseStream	@
	b	.L108	@
.L75:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	b	.L108	@
.L74:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	b	.L108	@
.L73:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L108	@
.L72:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	mov	r6, #0	@ ret,
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L71:
	bl	VCTRL_DestroyChanWithOption	@
	subs	r6, r0, #0	@ ret,
	beq	.L21	@,
	b	.L66	@
.L119:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #504	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L130:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #520	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L134:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mvn	r6, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L21	@
.L133:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #638	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L118:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #496	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L129:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #512	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L127:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #487	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L132:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #565	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L123:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #557	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L125:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #685	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L117:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #692	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L128:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #621	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L122:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #599	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L131:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #614	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L126:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #678	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L135:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #670	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L124:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #606	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L114:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #646	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L115:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #473	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L120:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #655	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L116:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #699	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L121:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #591	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L21	@
.L69:
	ldr	r0, [r2, #0]	@ prephitmp.712,* pArgs
	b	.L50	@
.L68:
	ldr	r0, [r2, #0]	@ prephitmp.716,* pArgs
	b	.L48	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	ldr	r0, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.433, g_VfmwInitCount,
	str	r3, [r4, #4]	@ g_VfmwInitCount.433, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.433,
	ble	.L137	@,
	bl	OSAL_UP	@
	mov	r0, #0	@ D.38786,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L137:
	bl	VCTRL_CloseVfmw	@
	mov	r5, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	mov	r1, #0	@ tmp141,
	str	r1, [r4, #0]	@ tmp141, g_VfmwEnableFlag
	bl	OSAL_UP	@
	cmp	r5, #0	@ ret,
	moveq	r0, r5	@, D.38786, ret
	mvnne	r0, #0	@, D.38786,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_SpinLockInit
	.type	VDEC_SpinLockInit, %function
VDEC_SpinLockInit:
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
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQInit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_SpinLockInit, .-VDEC_SpinLockInit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
.LFB1368:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp223,
	movt	r4, #:upper16:.LANCHOR0	@ tmp223,
	mov	r5, r0	@ pArgs, pArgs
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L152	@,
	cmp	r5, #0	@ pArgs,
	beq	.L153	@,
	mov	r1, #12	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	__memzero	@
	movw	r1, #:lower16:AcceleratorCharacter	@ tmp153,
	movw	r3, #:lower16:.LANCHOR1	@ tmp155,
	movt	r1, #:upper16:AcceleratorCharacter	@ tmp153,
	movt	r3, #:upper16:.LANCHOR1	@ tmp155,
	mov	r0, #0	@ tmp154,
	mov	ip, #9	@ tmp156,
	str	r0, [r1, #0]	@ tmp154, AcceleratorCharacter
	str	ip, [r3, #0]	@ tmp156, g_chipID
	movw	r2, #:lower16:VDM_OpenHardware	@ tmp158,
	movw	r1, #:lower16:VDM_CloseHardware	@ tmp160,
	movt	r2, #:upper16:VDM_OpenHardware	@ tmp158,
	movt	r1, #:upper16:VDM_CloseHardware	@ tmp160,
	str	r2, [r4, #8]	@ tmp158, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	str	r1, [r4, #12]	@ tmp160, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	movw	r0, #:lower16:SCD_OpenHardware	@ tmp162,
	movw	r3, #:lower16:SCD_CloseHardware	@ tmp164,
	movt	r0, #:upper16:SCD_OpenHardware	@ tmp162,
	movt	r3, #:upper16:SCD_CloseHardware	@ tmp164,
	str	r0, [r4, #16]	@ tmp162, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	str	r3, [r4, #20]	@ tmp164, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	movw	ip, #:lower16:BPD_OpenHardware	@ tmp166,
	movw	r2, #:lower16:VDMHAL_V200R004_GetHalMemSize	@ tmp168,
	movt	ip, #:upper16:BPD_OpenHardware	@ tmp166,
	movt	r2, #:upper16:VDMHAL_V200R004_GetHalMemSize	@ tmp168,
	str	ip, [r4, #24]	@ tmp166, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	str	r2, [r4, #32]	@ tmp168, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movw	r1, #:lower16:VDMHAL_V200R004_OpenHAL	@ tmp170,
	movw	r0, #:lower16:VDMHAL_V200R004_CloseHAL	@ tmp172,
	movt	r1, #:upper16:VDMHAL_V200R004_OpenHAL	@ tmp170,
	movt	r0, #:upper16:VDMHAL_V200R004_CloseHAL	@ tmp172,
	str	r1, [r4, #36]	@ tmp170, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	str	r0, [r4, #40]	@ tmp172, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movw	r3, #:lower16:VDMHAL_V200R004_ArrangeMem	@ tmp174,
	movw	ip, #:lower16:VDMHAL_V200R004_ArrangeMem_BTL	@ tmp176,
	movt	r3, #:upper16:VDMHAL_V200R004_ArrangeMem	@ tmp174,
	movt	ip, #:upper16:VDMHAL_V200R004_ArrangeMem_BTL	@ tmp176,
	str	r3, [r4, #44]	@ tmp174, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	str	ip, [r4, #48]	@ tmp176, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	movw	r2, #:lower16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	movw	r1, #:lower16:VDMHAL_V200R004_GlbReset	@ tmp180,
	movt	r2, #:upper16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	movt	r1, #:upper16:VDMHAL_V200R004_GlbReset	@ tmp180,
	str	r2, [r4, #52]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	str	r1, [r4, #56]	@ tmp180, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	movw	r0, #:lower16:VDMHAL_V200R004_ClearIntState	@ tmp182,
	movw	r3, #:lower16:VDMHAL_V200R004_MaskInt	@ tmp184,
	movt	r0, #:upper16:VDMHAL_V200R004_ClearIntState	@ tmp182,
	movt	r3, #:upper16:VDMHAL_V200R004_MaskInt	@ tmp184,
	str	r0, [r4, #60]	@ tmp182, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	str	r3, [r4, #64]	@ tmp184, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movw	ip, #:lower16:VDMHAL_V200R004_EnableInt	@ tmp186,
	movw	r2, #:lower16:VDMHAL_V200R004_CheckInt	@ tmp188,
	movt	ip, #:upper16:VDMHAL_V200R004_EnableInt	@ tmp186,
	movt	r2, #:upper16:VDMHAL_V200R004_CheckInt	@ tmp188,
	str	ip, [r4, #68]	@ tmp186, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	str	r2, [r4, #72]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckInt
	movw	r1, #:lower16:VDMHAL_V200R004_StartHwRepair	@ tmp190,
	movw	r0, #:lower16:VDMHAL_V200R004_StartHwDecode	@ tmp192,
	movt	r1, #:upper16:VDMHAL_V200R004_StartHwRepair	@ tmp190,
	movt	r0, #:upper16:VDMHAL_V200R004_StartHwDecode	@ tmp192,
	str	r1, [r4, #76]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	str	r0, [r4, #80]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movw	r3, #:lower16:VDMHAL_V200R004_PrepareDec	@ tmp194,
	movw	ip, #:lower16:VDMHAL_V200R004_IsVdmReady	@ tmp196,
	movt	r3, #:upper16:VDMHAL_V200R004_PrepareDec	@ tmp194,
	movt	ip, #:upper16:VDMHAL_V200R004_IsVdmReady	@ tmp196,
	str	r3, [r4, #84]	@ tmp194, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	str	ip, [r4, #88]	@ tmp196, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movw	r2, #:lower16:VDMHAL_V200R004_IsVdmRun	@ tmp198,
	movw	r1, #:lower16:VDMHAL_V200R004_PrepareRepair	@ tmp200,
	movt	r2, #:upper16:VDMHAL_V200R004_IsVdmRun	@ tmp198,
	movt	r1, #:upper16:VDMHAL_V200R004_PrepareRepair	@ tmp200,
	str	r2, [r4, #92]	@ tmp198, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	str	r1, [r4, #96]	@ tmp200, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movw	r0, #:lower16:VDMHAL_V200R004_MakeDecReport	@ tmp202,
	movw	r3, #:lower16:VDMHAL_V200R004_BackupInfo	@ tmp204,
	movt	r0, #:upper16:VDMHAL_V200R004_MakeDecReport	@ tmp202,
	movt	r3, #:upper16:VDMHAL_V200R004_BackupInfo	@ tmp204,
	str	r0, [r4, #100]	@ tmp202, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	str	r3, [r4, #104]	@ tmp204, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movw	ip, #:lower16:VDMHAL_V200R004_GetCharacter	@ tmp206,
	movw	r2, #:lower16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp208,
	movt	ip, #:upper16:VDMHAL_V200R004_GetCharacter	@ tmp206,
	movt	r2, #:upper16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp208,
	str	ip, [r4, #28]	@ tmp206, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	str	r2, [r4, #108]	@ tmp208, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	bl	VDEC_SpinLockInit	@
	ldr	r0, [r4, #56]	@ D.38758, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	cmp	r0, #0	@ D.38758,
	beq	.L147	@,
	blx	r0	@ D.38758
.L148:
	ldr	r3, [r4, #28]	@ D.38763, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.38763,
	beq	.L149	@,
	blx	r3	@ D.38763
.L149:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	ldr	r0, [r5, #0]	@, <variable>.VdecCallback
	bl	VCTRL_OpenVfmw	@
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r5, r0	@ ret,
	mov	r0, #2	@,
	mov	r2, r5	@, ret
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ret,
	bne	.L150	@,
	mov	lr, #1	@ tmp215,
	str	lr, [r4, #4]	@ tmp215, g_VfmwInitCount
	str	lr, [r4, #0]	@ tmp215, g_VfmwEnableFlag
	bl	OSAL_UP	@
	mov	r0, r5	@ D.38717, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L150:
	mov	r2, #0	@ tmp219,
	str	r2, [r4, #4]	@ tmp219, g_VfmwInitCount
	str	r2, [r4, #0]	@ tmp219, g_VfmwEnableFlag
	bl	OSAL_UP	@
	mvn	r0, #0	@ D.38717,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L147:
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #397	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	b	.L148	@
.L152:
	ldr	r1, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	add	r0, r1, #1	@ tmp144, g_VfmwInitCount,
	str	r0, [r4, #4]	@ tmp144, g_VfmwInitCount
	bl	OSAL_UP	@
	mov	r0, #0	@ D.38717,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L153:
	bl	OSAL_UP	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38717,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
.LFB1367:
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
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
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
	bl	vfmw_proc_exit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
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
	bl	OSAL_SEMA_INTIT	@
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
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC9:
	.ascii	"VCTRL_OpenVfmw() return %d\012\000"
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
	.type	g_vdm_hal_fun_ptr, %object
	.size	g_vdm_hal_fun_ptr, 104
g_vdm_hal_fun_ptr:
	.space	104
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
