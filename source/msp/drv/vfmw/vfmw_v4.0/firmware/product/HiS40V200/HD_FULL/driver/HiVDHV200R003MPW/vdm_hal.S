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
	.file	"vdm_hal.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal.o -O2
@ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	VDMHAL_V200R003MPW_GetHalMemSize
	.type	VDMHAL_V200R003MPW_GetHalMemSize, %function
VDMHAL_V200R003MPW_GetHalMemSize:
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
	mov	r0, #655360	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_GetHalMemSize, .-VDMHAL_V200R003MPW_GetHalMemSize
	.align	2
	.global	VDMHAL_V200R003MPW_MakeRpMsg
	.type	VDMHAL_V200R003MPW_MakeRpMsg, %function
VDMHAL_V200R003MPW_MakeRpMsg:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_MakeRpMsg, .-VDMHAL_V200R003MPW_MakeRpMsg
	.align	2
	.global	VDMHAL_V200R003MPW_MakeRpReg
	.type	VDMHAL_V200R003MPW_MakeRpReg, %function
VDMHAL_V200R003MPW_MakeRpReg:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_MakeRpReg, .-VDMHAL_V200R003MPW_MakeRpReg
	.align	2
	.global	VDMHAL_V200R003MPW_StartHwRepair
	.type	VDMHAL_V200R003MPW_StartHwRepair, %function
VDMHAL_V200R003MPW_StartHwRepair:
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
	movw	r1, #1148	@ tmp139,
	mul	r2, r1, r0	@ tmp138, tmp139, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp137,
	movt	r3, #:upper16:g_HwMem	@ tmp137,
	mov	r1, #0	@ tmp142,
	mov	ip, #1	@ tmp148,
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #4]	@ tmp142,
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #4]	@ tmp148,
	ldr	r3, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #4]	@ tmp142,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_StartHwRepair, .-VDMHAL_V200R003MPW_StartHwRepair
	.align	2
	.global	VDMHAL_V200R003MPW_StartHwDecode
	.type	VDMHAL_V200R003MPW_StartHwDecode, %function
VDMHAL_V200R003MPW_StartHwDecode:
	.fnstart
.LFB1372:
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
	movw	r1, #1148	@ tmp143,
	mul	r2, r1, r0	@ tmp142, tmp143, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp141,
	movt	r3, #:upper16:g_HwMem	@ tmp141,
	mov	r1, #0	@ tmp154,
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r0, #8]	@ D.38552,
	orr	ip, ip, #3145728	@ tmp148, D.38552,
	str	ip, [r0, #8]	@ tmp148,
	ldr	r0, [r2, r3]	@ D.38557, <variable>.pVdmRegVirAddr
	mov	ip, #1	@ tmp159,
	str	r1, [r0, #0]	@ tmp154,* D.38557
	ldr	r0, [r2, r3]	@ temp.608, <variable>.pVdmRegVirAddr
	str	ip, [r0, #0]	@ tmp159,* temp.608
	ldr	r3, [r2, r3]	@ temp.610, <variable>.pVdmRegVirAddr
	str	r1, [r3, #0]	@ tmp154,* temp.610
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	VDMHAL_V200R003MPW_StartHwDecode, .-VDMHAL_V200R003MPW_StartHwDecode
	.align	2
	.global	VDMHAL_V200R003MPW_GetCharacter
	.type	VDMHAL_V200R003MPW_GetCharacter, %function
VDMHAL_V200R003MPW_GetCharacter:
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
	movw	r0, #:lower16:g_VdmCharacter	@ tmp133,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp135,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp133,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp135,
	mov	r1, #15	@ tmp134,
	mov	r2, #4	@ tmp136,
	str	r1, [r0, #0]	@ tmp134, g_VdmCharacter
	str	r2, [r3, #0]	@ tmp136, g_eVdmVersion
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_GetCharacter, .-VDMHAL_V200R003MPW_GetCharacter
	.align	2
	.global	VDMHAL_V200R003MPW_IsVdmRun
	.type	VDMHAL_V200R003MPW_IsVdmRun, %function
VDMHAL_V200R003MPW_IsVdmRun:
	.fnstart
.LFB1361:
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
	movw	r1, #1148	@ tmp141,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	ldr	r4, [r2, r3]	@ D.38006, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.38006,
	beq	.L18	@,
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.38010, Data32,
	movne	r0, #1	@ D.38010
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L18:
	mov	r0, r4	@, D.38006
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38010, D.38006
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_IsVdmRun, .-VDMHAL_V200R003MPW_IsVdmRun
	.align	2
	.global	VDMHAL_V200R003MPW_IsVdmReady
	.type	VDMHAL_V200R003MPW_IsVdmReady, %function
VDMHAL_V200R003MPW_IsVdmReady:
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
	movw	r1, #1148	@ tmp142,
	mul	r2, r1, r0	@ tmp141, tmp142, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp140,
	movt	r3, #:upper16:g_HwMem	@ tmp140,
	ldr	r0, [r2, r3]	@ D.37992, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ D.37992,
	beq	.L23	@,
	ldr	r0, [r0, #28]	@ Data32.679,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.679,,
	ldmfd	sp, {fp, sp, pc}	@
.L23:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #926	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_IsVdmReady, .-VDMHAL_V200R003MPW_IsVdmReady
	.align	2
	.global	VDMHAL_V200R003MPW_WriteMsgSlot
	.type	VDMHAL_V200R003MPW_WriteMsgSlot, %function
VDMHAL_V200R003MPW_WriteMsgSlot:
	.fnstart
.LFB1364:
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
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	beq	.L25	@,
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L25	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.38120, tmp151
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L25:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38120,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_WriteMsgSlot, .-VDMHAL_V200R003MPW_WriteMsgSlot
	.align	2
	.global	VDMHAL_V200R003MPW_ReadMsgSlot
	.type	VDMHAL_V200R003MPW_ReadMsgSlot, %function
VDMHAL_V200R003MPW_ReadMsgSlot:
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
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	beq	.L30	@,
	cmp	r2, #512	@ upmsg_size,
	bhi	.L30	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.38103, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L30:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38103,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_ReadMsgSlot, .-VDMHAL_V200R003MPW_ReadMsgSlot
	.align	2
	.global	VDMHAL_V200R003MPW_WriteBigTitle1DYuv
	.type	VDMHAL_V200R003MPW_WriteBigTitle1DYuv, %function
VDMHAL_V200R003MPW_WriteBigTitle1DYuv:
	.fnstart
.LFB1374:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #84
	sub	sp, sp, #84	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ubfx	r8, r3, #29, #2	@ PicStructure.870, Height,,
	cmp	r8, #1	@ PicStructure.870,
	mov	r6, r3	@ Height, Height
	str	r0, [fp, #-92]	@ fpYuv, %sfp
	mov	r4, r1	@ Yaddress, Yaddress
	mov	r7, r2	@ Width, Width
	moveq	r8, #0	@ PicStructure,
	beq	.L36	@,
	cmp	r8, #2	@ PicStructure.870,
	moveq	r8, #1	@ PicStructure,
	movne	r8, #2	@ PicStructure,
.L36:
	ldr	r1, [fp, #-92]	@, %sfp
	cmp	r1, #0	@,
	beq	.L72	@,
	mov	ip, #0	@ tmp239,
	movw	r0, #:lower16:.LC5	@,
	mov	r1, ip	@, tmp239
	movt	r0, #:upper16:.LC5	@,
	mov	r2, #4194304	@,
	sub	r3, fp, #56	@,,
	str	ip, [sp, #0]	@ tmp239,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L134	@,
.L39:
	mov	r5, #0	@ tmp243,
	movw	r0, #:lower16:.LC7	@,
	mov	r1, r5	@, tmp243
	movt	r0, #:upper16:.LC7	@,
	mov	r2, #4194304	@,
	sub	r3, fp, #68	@,,
	str	r5, [sp, #0]	@ tmp243,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L135	@,
.L40:
	add	r5, r7, #15	@ tmp245, Width,
	add	r1, r6, #15	@ tmp247, Height,
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp245,
	bic	r2, r1, #15	@, tmp247,
	add	lr, r5, #255	@ tmp249, ImgWidthInPixAln,
	str	r2, [fp, #-80]	@, %sfp
	bic	r3, lr, #255	@ tmp250, tmp249,
	ldr	r0, [fp, #-52]	@, MemRecord_y.VirAddr
	ldr	r9, [fp, #-64]	@, MemRecord_ul.VirAddr
	mov	r7, r7, lsr #1	@, Width,
	mov	r1, r3, asl #4	@, tmp250,
	str	r1, [fp, #-84]	@, %sfp
	ldr	r2, [fp, #-84]	@, %sfp
	add	lr, r1, #15	@ tmp253,,
	str	r0, [fp, #-88]	@, %sfp
	add	ip, r9, #2097152	@,,
	cmp	r2, #0	@,
	str	r9, [fp, #-100]	@, %sfp
	mov	r6, r6, lsr #1	@, Height,
	str	r7, [fp, #-112]	@, %sfp
	movge	lr, r2	@ Stride,
	ldr	r2, [fp, #-80]	@, %sfp
	mov	r3, lr, asr #4	@ tmp254, Stride,
	str	r6, [fp, #-96]	@, %sfp
	adds	r0, r2, #31	@ tmp255,,
	str	ip, [fp, #-108]	@, %sfp
	addmi	r0, r2, #62	@, tmp257,,
	cmp	r8, #0	@ PicStructure,
	mov	r9, r0, asr #5	@ tmp259, tmp257,
	mla	r9, r9, r3, r4	@ Caddress, tmp259, tmp254, Yaddress
	bne	.L41	@,
	cmp	r2, #0	@,
	beq	.L42	@,
	ldr	sl, [fp, #-88]	@, %sfp
	str	r9, [fp, #-104]	@ Caddress, %sfp
	mov	r9, r8	@ i, i
	str	sl, [fp, #-72]	@, %sfp
	str	sl, [fp, #-76]	@, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L43:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L46	@,
	ldr	r7, [fp, #-84]	@, %sfp
	mov	r6, r9, lsr #4	@ pretmp.776, i,
	and	ip, r9, #15	@ pretmp.919, i,
	mov	r2, #256	@,
	ldr	r0, [fp, #-76]	@, %sfp
	sub	r5, sl, #1	@ tmp360, ImgWidthInPixAln,
	mul	r8, r7, r6	@ tmp270,, pretmp.776
	ubfx	r7, r5, #8, #1	@ tmp361, tmp360,,
	mla	r8, ip, r2, r8	@ pretmp.777, pretmp.919,, tmp270
	mov	r5, r2	@ j,
	add	r6, r0, r2	@ ivtmp.826,,
	add	r1, r4, r8	@, Yaddress, pretmp.777
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bls	.L46	@,
	cmp	r7, #0	@ tmp361,
	beq	.L44	@,
	add	lr, r8, #4096	@ tmp470, pretmp.777,
	mov	r2, r5	@, j
	mov	r0, r6	@, ivtmp.826
	add	r1, r4, lr	@, Yaddress, tmp470
	bl	memcpy	@
	mov	r5, #512	@ j,
	cmp	sl, r5	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.826, ivtmp.826,
	bls	.L46	@,
.L44:
	mov	lr, r5, lsr #8	@ tmp261, j,
	add	r7, r5, #256	@ tmp362, j,
	mov	r2, #256	@,
	add	r5, r7, r2	@ j, tmp362,
	add	r3, r8, lr, asl #12	@, tmp263, pretmp.777, tmp261,
	mov	r7, r7, lsr #8	@ tmp389, tmp362,
	add	r1, r4, r3	@, Yaddress, tmp263
	mov	r0, r6	@, ivtmp.826
	add	r6, r6, r2	@ tmp363, ivtmp.826,
	bl	memcpy	@
	add	ip, r8, r7, asl #12	@, tmp391, pretmp.777, tmp389,
	mov	r2, #256	@,
	mov	r0, r6	@, tmp363
	add	r1, r4, ip	@, Yaddress, tmp391
	add	r6, r6, r2	@ ivtmp.826, tmp363,
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bhi	.L44	@,
.L46:
	ldr	r0, [fp, #-80]	@, %sfp
	add	r9, r9, #1	@ i, i,
	ldr	r1, [fp, #-76]	@, %sfp
	cmp	r0, r9	@, i
	add	r2, r1, sl	@,, ImgWidthInPixAln
	str	r2, [fp, #-76]	@, %sfp
	bhi	.L43	@,
	ldr	lr, [fp, #-80]	@, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
	ldr	r0, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	mul	r1, sl, lr	@, ImgWidthInPixAln,
	ldr	r9, [fp, #-104]	@ Caddress, %sfp
	bl	klib_fwrite	@
	ldr	r3, [fp, #-80]	@, %sfp
	movs	r4, r3, lsr #1	@,,
	str	r4, [fp, #-76]	@, %sfp
	beq	.L47	@,
	ldr	r0, [fp, #-84]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	sl, r0, asr #1	@,,
	str	sl, [fp, #-80]	@, %sfp
	mov	sl, #0	@ i.882,
.L48:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L50	@,
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r6, sl, lsr #3	@ pretmp.912, i.882,
	and	r1, sl, #7	@ pretmp.921, i.882,
	mov	r2, #256	@,
	ldr	r0, [fp, #-72]	@, %sfp
	sub	r5, r8, #1	@ tmp354, ImgWidthInPixAln,
	mul	r7, ip, r6	@ tmp284,, pretmp.912
	mov	r4, r2	@ j.881,
	mla	r7, r1, r2, r7	@ pretmp.781, pretmp.921,, tmp284
	ubfx	r6, r5, #8, #1	@ tmp355, tmp354,,
	add	r5, r0, r2	@ ivtmp.877,,
	add	r1, r9, r7	@, Caddress, pretmp.781
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.881
	bls	.L50	@,
	cmp	r6, #0	@ tmp355,
	beq	.L49	@,
	add	r0, r7, #2048	@ tmp466, pretmp.781,
	mov	r2, r4	@, j.881
	add	r1, r9, r0	@, Caddress, tmp466
	mov	r0, r5	@, ivtmp.877
	bl	memcpy	@
	mov	r4, #512	@ j.881,
	cmp	r8, r4	@ ImgWidthInPixAln, j.881
	add	r5, r5, #256	@ ivtmp.877, ivtmp.877,
	bls	.L50	@,
.L49:
	mov	r3, r4, lsr #8	@ tmp275, j.881,
	add	r6, r4, #256	@ tmp356, j.881,
	mov	r2, #256	@,
	add	r4, r6, r2	@ j.881, tmp356,
	add	ip, r7, r3, asl #11	@, tmp277, pretmp.781, tmp275,
	mov	r6, r6, lsr #8	@ tmp401, tmp356,
	add	r1, r9, ip	@, Caddress, tmp277
	mov	r0, r5	@, ivtmp.877
	add	r5, r5, r2	@ tmp357, ivtmp.877,
	bl	memcpy	@
	add	r1, r7, r6, asl #11	@, tmp403, pretmp.781, tmp401,
	mov	r2, #256	@,
	mov	r0, r5	@, tmp357
	add	r1, r9, r1	@, Caddress, tmp403
	add	r5, r5, r2	@ ivtmp.877, tmp357,
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.881
	bhi	.L49	@,
.L50:
	ldr	r2, [fp, #-76]	@, %sfp
	add	sl, sl, #1	@ i.882, i.882,
	ldr	lr, [fp, #-72]	@, %sfp
	cmp	sl, r2	@ i.882,
	add	r4, lr, r8	@,, ImgWidthInPixAln
	str	r4, [fp, #-72]	@, %sfp
	bcc	.L48	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L47:
	ldr	r0, [fp, #4]	@, chroma_idc
	cmp	r0, #1	@,
	beq	.L136	@,
	ldr	r2, [fp, #4]	@, chroma_idc
	cmp	r2, #0	@,
	beq	.L137	@,
.L52:
	ldr	r0, [fp, #-112]	@, %sfp
	ldr	lr, [fp, #-96]	@, %sfp
	mul	r4, r0, lr	@ D.38733,,
.L133:
	ldr	r2, [fp, #-92]	@, %sfp
	mov	r1, r4	@, temp.908
	ldr	r0, [fp, #-100]	@, %sfp
	bl	klib_fwrite	@
	ldr	r2, [fp, #-92]	@, %sfp
	mov	r1, r4	@, temp.908
	ldr	r0, [fp, #-108]	@, %sfp
	bl	klib_fwrite	@
	ldr	r1, [fp, #-52]	@, MemRecord_y.VirAddr
	ldr	r0, [fp, #-56]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #56	@,,
	mov	r1, #12	@,
	bl	__memzero	@
	ldr	r1, [fp, #-64]	@, MemRecord_ul.VirAddr
	ldr	r0, [fp, #-68]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #68	@,,
	mov	r1, #12	@,
	bl	__memzero	@
.L72:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L41:
	ldr	r1, [fp, #-80]	@, %sfp
	subs	r8, r8, #1	@, PicStructure,
	movne	r8, #1	@
	str	r8, [fp, #-104]	@, %sfp
	cmp	r1, r8	@,
	bls	.L57	@,
	str	r9, [fp, #-72]	@ Caddress, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	r9, r8	@ i.892, i.892
.L58:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L60	@,
	and	r6, r9, #15	@ pretmp.918, i.892,
	ldr	r1, [fp, #-84]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	mov	r3, r9, lsr #4	@ pretmp.772, i.892,
	mov	r8, r6, asl #8	@ tmp300, pretmp.918,
	mov	r0, r9, lsr #1	@ pretmp.928, i.892,
	mov	r2, #256	@,
	sub	ip, sl, #1	@ tmp383, ImgWidthInPixAln,
	mla	r8, r1, r3, r8	@ pretmp.773,, pretmp.772, tmp300
	mov	r5, r2	@ j.891,
	mla	r0, sl, r0, r7	@ ivtmp.865, ImgWidthInPixAln, pretmp.928,
	ubfx	r7, ip, #8, #1	@ tmp384, tmp383,,
	add	r1, r4, r8	@, Yaddress, pretmp.773
	add	r6, r0, r2	@ ivtmp.865, ivtmp.865,
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.891
	bls	.L60	@,
	cmp	r7, #0	@ tmp384,
	beq	.L59	@,
	add	ip, r8, #4096	@ tmp481, pretmp.773,
	mov	r2, r5	@, j.891
	mov	r0, r6	@, ivtmp.865
	add	r1, r4, ip	@, Yaddress, tmp481
	bl	memcpy	@
	mov	r5, #512	@ j.891,
	cmp	sl, r5	@ ImgWidthInPixAln, j.891
	add	r6, r6, #256	@ ivtmp.865, ivtmp.865,
	bls	.L60	@,
.L59:
	mov	lr, r5, lsr #8	@ tmp291, j.891,
	add	r7, r5, #256	@ tmp385, j.891,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.865
	add	r5, r8, lr, asl #12	@, tmp293, pretmp.773, tmp291,
	add	r6, r6, r2	@ tmp386, ivtmp.865,
	add	r1, r4, r5	@, Yaddress, tmp293
	add	r5, r7, r2	@ j.891, tmp385,
	mov	r7, r7, lsr #8	@ tmp425, tmp385,
	bl	memcpy	@
	mov	r0, r6	@, tmp386
	mov	r2, #256	@,
	add	ip, r8, r7, asl #12	@, tmp427, pretmp.773, tmp425,
	add	r6, r6, r2	@ ivtmp.865, tmp386,
	add	r1, r4, ip	@, Yaddress, tmp427
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.891
	bhi	.L59	@,
.L60:
	ldr	r2, [fp, #-80]	@, %sfp
	add	r9, r9, #2	@ i.892, i.892,
	cmp	r2, r9	@, i.892
	bhi	.L58	@,
	ldr	r9, [fp, #-72]	@ Caddress, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
.L57:
	ldr	r1, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	ldr	r0, [fp, #-88]	@, %sfp
	mul	lr, r5, r1	@ tmp302, ImgWidthInPixAln,
	mov	r1, lr, lsr #1	@, tmp302,
	bl	klib_fwrite	@
	ldr	r2, [fp, #-80]	@, %sfp
	movs	r4, r2, lsr #1	@,,
	str	r4, [fp, #-76]	@, %sfp
	beq	.L61	@,
	ldr	sl, [fp, #-88]	@, %sfp
	ldr	r3, [fp, #-84]	@, %sfp
	str	sl, [fp, #-72]	@, %sfp
	mov	sl, #0	@ i.899,
	mov	r8, r3, asr #1	@,,
	str	r8, [fp, #-80]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L62:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L64	@,
	ldr	r6, [fp, #-80]	@, %sfp
	mov	r5, sl, lsr #3	@ pretmp.913, i.899,
	and	r3, sl, #7	@ pretmp.770, i.899,
	mov	r2, #256	@,
	ldr	r0, [fp, #-72]	@, %sfp
	sub	ip, r8, #1	@ tmp377, ImgWidthInPixAln,
	mul	r7, r6, r5	@ tmp316,, pretmp.913
	mov	r4, r2	@ j.898,
	mla	r7, r3, r2, r7	@ pretmp.771, pretmp.770,, tmp316
	ubfx	r6, ip, #8, #1	@ tmp378, tmp377,,
	add	r5, r0, r2	@ ivtmp.903,,
	add	r1, r9, r7	@, Caddress, pretmp.771
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.898
	bls	.L64	@,
	cmp	r6, #0	@ tmp378,
	beq	.L63	@,
	add	r3, r7, #2048	@ tmp477, pretmp.771,
	mov	r2, r4	@, j.898
	mov	r0, r5	@, ivtmp.903
	add	r1, r9, r3	@, Caddress, tmp477
	bl	memcpy	@
	mov	r4, #512	@ j.898,
	cmp	r8, r4	@ ImgWidthInPixAln, j.898
	add	r5, r5, #256	@ ivtmp.903, ivtmp.903,
	bls	.L64	@,
.L63:
	mov	lr, r4, lsr #8	@ tmp307, j.898,
	add	r6, r4, #256	@ tmp379, j.898,
	mov	r2, #256	@,
	mov	r0, r5	@, ivtmp.903
	add	r4, r7, lr, asl #11	@, tmp309, pretmp.771, tmp307,
	add	r5, r5, r2	@ tmp380, ivtmp.903,
	add	r1, r9, r4	@, Caddress, tmp309
	add	r4, r6, r2	@ j.898, tmp379,
	mov	r6, r6, lsr #8	@ tmp437, tmp379,
	bl	memcpy	@
	mov	r0, r5	@, tmp380
	mov	r2, #256	@,
	add	ip, r7, r6, asl #11	@, tmp439, pretmp.771, tmp437,
	add	r5, r5, r2	@ ivtmp.903, tmp380,
	add	r1, r9, ip	@, Caddress, tmp439
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.898
	bhi	.L63	@,
.L64:
	ldr	r0, [fp, #-76]	@, %sfp
	add	sl, sl, #1	@ i.899, i.899,
	ldr	r1, [fp, #-72]	@, %sfp
	cmp	sl, r0	@ i.899,
	add	r2, r1, r8	@,, ImgWidthInPixAln
	str	r2, [fp, #-72]	@, %sfp
	bcc	.L62	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L61:
	ldr	r4, [fp, #4]	@, chroma_idc
	cmp	r4, #1	@,
	beq	.L138	@,
	ldr	r0, [fp, #4]	@, chroma_idc
	cmp	r0, #0	@,
	bne	.L66	@,
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-104]	@, %sfp
	cmp	ip, r1	@,
	bls	.L70	@,
	add	r3, r1, #2	@ i.886,,
	mvn	r4, r1	@ tmp371,
	ldr	r1, [fp, #-96]	@, %sfp
	cmp	r1, r3	@, i.886
	add	lr, r4, r1	@ tmp372, tmp371,
	ubfx	r2, lr, #1, #1	@ tmp373, tmp372,,
	bls	.L70	@,
	cmp	r2, #0	@ tmp373,
	beq	.L128	@,
	ldr	r2, [fp, #-96]	@, %sfp
	add	r3, r3, #2	@ i.886, i.886,
	cmp	r2, r3	@, i.886
	bls	.L70	@,
.L128:
	ldr	r2, [fp, #-96]	@ chrom_height, %sfp
.L73:
	add	r3, r3, #4	@ i.886, i.886,
	cmp	r2, r3	@ chrom_height, i.886
	bhi	.L73	@,
.L70:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [fp, #-108]	@, %sfp
	bl	memset	@
	ldr	r0, [fp, #-100]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
.L66:
	ldr	r2, [fp, #-112]	@, %sfp
	ldr	r3, [fp, #-96]	@, %sfp
	mul	r4, r2, r3	@ temp.908,,
	b	.L133	@
.L135:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L40	@
.L134:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L39	@
.L138:
	ldr	lr, [fp, #-96]	@, %sfp
	cmp	lr, #0	@,
	beq	.L66	@,
	ldr	r2, [fp, #-104]	@, %sfp
	mov	ip, #0	@ i.906,
	ldr	r1, [fp, #-88]	@, %sfp
	ldr	r7, [fp, #-100]	@ ul, %sfp
	ldr	lr, [fp, #-112]	@ chrom_width, %sfp
	mla	r0, r5, r2, r1	@ tmp.900, ImgWidthInPixAln,,
	mov	r5, r5, asl #1	@ D.38751, ImgWidthInPixAln,
.L67:
	cmp	lr, #0	@ chrom_width,
	beq	.L69	@,
	mov	r2, ip, lsr #1	@ pretmp.925, i.906,
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ tmp457,* tmp.900
	mov	r1, #1	@ j.905,
	cmp	lr, r1	@ chrom_width, j.905
	mul	r6, lr, r2	@ tmp323, chrom_width, pretmp.925
	sub	r9, lr, #1	@ tmp364, chrom_width,
	and	r9, r9, r1	@ tmp366, tmp364,
	add	r3, r0, #2	@ ivtmp.833, tmp.900,
	add	r4, r7, r6	@ ivtmp.836, ul, tmp323
	add	r8, r4, #2097152	@ tmp456, ivtmp.836,
	add	r2, r4, r1	@ ivtmp.836, ivtmp.836,
	strb	sl, [r8, #0]	@ tmp457,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp458,
	strb	r8, [r7, r6]	@ tmp458,
	bls	.L69	@,
	cmp	r9, #0	@ tmp366,
	beq	.L68	@,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp473,* ivtmp.833
	add	r6, r2, #2097152	@ tmp472, ivtmp.836,
	mov	r1, #2	@ j.905,
	cmp	lr, r1	@ chrom_width, j.905
	add	r2, r2, #1	@ ivtmp.836, ivtmp.836,
	strb	r8, [r6, #0]	@ tmp473,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp474,
	add	r3, r3, r1	@ ivtmp.833, ivtmp.833,
	strb	r6, [r4, #1]	@ tmp474,
	bls	.L69	@,
.L68:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp319,* ivtmp.833
	add	r8, r2, #2097152	@ tmp318, ivtmp.836,
	mov	r4, r2	@ tmp369, ivtmp.836
	add	r6, r3, #2	@ tmp368, ivtmp.833,
	add	r1, r1, #2	@ j.905, j.905,
	strb	sl, [r8, #0]	@ tmp319,
	cmp	lr, r1	@ chrom_width, j.905
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp321,
	strb	sl, [r4], #1	@ tmp321,
	add	r8, r4, #2097152	@ tmp450, tmp369,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp451,
	add	r3, r6, #2	@ ivtmp.833, tmp368,
	strb	sl, [r8, #0]	@ tmp451,
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ tmp452,
	strb	r6, [r2, #1]	@ tmp452,
	add	r2, r4, #1	@ ivtmp.836, tmp369,
	bhi	.L68	@,
.L69:
	ldr	r3, [fp, #-96]	@, %sfp
	add	ip, ip, #2	@ i.906, i.906,
	cmp	r3, ip	@, i.906
	bls	.L66	@,
	add	r0, r0, r5	@ tmp.900, tmp.900, D.38751
	b	.L67	@
.L136:
	ldr	r1, [fp, #-96]	@, %sfp
	cmp	r1, #0	@,
	beq	.L52	@,
	ldr	r6, [fp, #-88]	@ tmp, %sfp
	mov	r8, #0	@ i.885,
	ldr	r7, [fp, #-100]	@ ivtmp.883, %sfp
	mov	r9, r1	@ chrom_height,
	ldr	lr, [fp, #-112]	@ chrom_width, %sfp
.L53:
	cmp	lr, #0	@ chrom_width,
	beq	.L55	@,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ tmp421,* tmp
	add	r4, r7, #2097152	@ tmp420, ivtmp.883,
	mov	r0, #1	@ j.884,
	cmp	lr, r0	@ chrom_width, j.884
	sub	r3, lr, #1	@ tmp346, chrom_width,
	mov	r2, r7	@ ivtmp.798, ivtmp.883
	strb	ip, [r4, #0]	@ tmp421,
	and	ip, r3, r0	@ tmp348, tmp346,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@ tmp422,
	add	r3, r6, #2	@ ivtmp.795, tmp,
	strb	r1, [r2], #1	@ tmp422,
	bls	.L55	@,
	cmp	ip, #0	@ tmp348,
	beq	.L54	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp462,* ivtmp.795
	add	r4, r2, #2097152	@ tmp461, ivtmp.798,
	mov	r0, #2	@ j.884,
	cmp	lr, r0	@ chrom_width, j.884
	strb	r1, [r4, #0]	@ tmp462,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp463,
	add	r3, r3, r0	@ ivtmp.795, ivtmp.795,
	strb	ip, [r2], #1	@ tmp463,
	bls	.L55	@,
.L54:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp286,* ivtmp.795
	add	r4, r2, #2097152	@ tmp285, ivtmp.798,
	mov	r1, r2	@ tmp351, ivtmp.798
	add	ip, r3, #2	@ tmp350, ivtmp.795,
	add	r0, r0, #2	@ j.884, j.884,
	strb	sl, [r4, #0]	@ tmp286,
	cmp	lr, r0	@ chrom_width, j.884
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp288,
	strb	sl, [r1], #1	@ tmp288,
	add	r4, r1, #2097152	@ tmp414, tmp351,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp415,
	add	r3, ip, #2	@ ivtmp.795, tmp350,
	strb	sl, [r4, #0]	@ tmp415,
	ldrb	r4, [ip, #1]	@ zero_extendqisi2	@ tmp416,
	strb	r4, [r2, #1]	@ tmp416,
	add	r2, r1, #1	@ ivtmp.798, tmp351,
	bhi	.L54	@,
.L55:
	add	r8, r8, #1	@ i.885, i.885,
	add	r7, r7, lr	@ ivtmp.883, ivtmp.883, chrom_width
	cmp	r9, r8	@ chrom_height, i.885
	bls	.L52	@,
	add	r6, r6, r5	@ tmp, tmp, ImgWidthInPixAln
	b	.L53	@
.L137:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [fp, #-108]	@, %sfp
	bl	memset	@
	ldr	r0, [fp, #-100]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L52	@
.L42:
	mov	r1, r8	@, PicStructure
	ldr	r0, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	bl	klib_fwrite	@
	b	.L47	@
	.fnend
	.size	VDMHAL_V200R003MPW_WriteBigTitle1DYuv, .-VDMHAL_V200R003MPW_WriteBigTitle1DYuv
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V200R003MPW_ArrangeMem_BTL
	.type	VDMHAL_V200R003MPW_ArrangeMem_BTL, %function
VDMHAL_V200R003MPW_ArrangeMem_BTL:
	.fnstart
.LFB1353:
	@ args = 28, pretend = 0, frame = 16
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
	subs	r4, r0, #0	@ MemAddr, MemAddr
	str	r1, [fp, #-52]	@ MemSize, %sfp
	mov	r5, r2	@ Width, Width
	mov	r6, r3	@ Height, Height
	ldr	r7, [fp, #20]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L200	@,
	ldr	r3, [fp, #16]	@ UserDec, UserDec
	cmp	r3, #1	@ UserDec,
	beq	.L201	@,
	cmp	r6, #31	@ Height,
	movgt	ip, #0	@, tmp235
	movle	ip, #1	@, tmp235
	sub	r0, r2, #32	@ tmp230, Width,
	movw	r3, #5600	@ tmp232,
	cmp	r0, r3	@ tmp230, tmp232
	movls	lr, ip	@, tmp238, tmp235
	orrhi	lr, ip, #1	@,, tmp238, tmp235
	cmp	lr, #0	@ tmp238,
	bne	.L145	@,
	cmp	r6, #4224	@ Height,
	bgt	.L145	@,
.L144:
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L202	@,
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #620	@,
	ldr	sl, [fp, #4]	@ PmvNum, PmvNum
	bl	__memzero	@
	add	r2, r6, #15	@ tmp244, Height,
	add	r0, r5, #15	@ D.37695, Width,
	movw	r1, #:lower16:g_not_direct_8x8_inference_flag	@ tmp252,
	movt	r1, #:upper16:g_not_direct_8x8_inference_flag	@ tmp252,
	mov	r2, r2, asr #4	@ ImgHeightInMb, tmp244,
	mov	r3, r0, asr #4	@ ImgWidthInMb, D.37695,
	ldrb	r6, [r1, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	sl, #20	@ PmvNum,
	movge	sl, #20	@ PmvNum.991,
	mul	r1, r3, r2	@ tmp254, ImgWidthInMb, ImgHeightInMb
	cmp	r2, #36	@ ImgHeightInMb,
	cmple	r3, #45	@, ImgWidthInMb,
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	r6, #1	@ g_not_direct_8x8_inference_flag,
	moveq	ip, #64	@ ColMbSize,
	mul	r1, ip, r1	@ tmp255, ColMbSize, tmp254
	ldr	ip, [fp, #-52]	@, %sfp
	add	r6, r1, #127	@ tmp256, tmp255,
	bic	r6, r6, #127	@ PmvSlotLen, tmp256,
	mul	r1, sl, r6	@, PmvNum.991, PmvSlotLen
	cmp	r1, ip	@,
	str	r1, [fp, #-56]	@, %sfp
	bge	.L203	@,
	mov	r3, r3, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	add	r1, r4, #1020	@ tmp262, MemAddr,
	add	ip, r1, #3	@ tmp262, tmp262,
	sub	r9, r3, #1	@ tmp268, ImgWidthInPixAln,
	add	r8, r3, #255	@ tmp266, ImgWidthInPixAln,
	bic	lr, ip, #1020	@ tmp264, tmp262,
	bic	r8, r8, #255	@ SlotWidth, tmp266,
	movw	ip, #2047	@ tmp269,
	cmp	r9, ip	@ tmp268, tmp269
	bic	r9, lr, #3	@ tmp264, tmp264,
	rsb	r1, r4, r9	@, MemAddr, tmp264
	str	sl, [r7, #616]	@ PmvNum.991, <variable>.ValidPMVNum
	mov	lr, r6, asr #1	@ tmp261, PmvSlotLen,
	str	r1, [fp, #-48]	@, %sfp
	mov	r9, r8, asl #4	@ tmp267, SlotWidth,
	str	lr, [r7, #612]	@ tmp261, <variable>.HafPmvOffset
	str	r9, [r7, #0]	@ tmp267, <variable>.VahbStride
	bhi	.L204	@,
.L151:
	mov	sl, #16	@ level,
.L153:
	mov	r2, r2, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	adds	r1, r2, #31	@ tmp279, ImgHeightInPixAln,
	addmi	r1, r2, #62	@, tmp280, ImgHeightInPixAln,
	adds	r9, r3, #127	@ tmp283, ImgWidthInPixAln,
	addmi	r3, r3, #254	@, tmp285, ImgWidthInPixAln,
	movpl	r3, r9	@, tmp285, tmp283
	mov	r9, r1, asr #5	@ tmp282, tmp280,
	mov	lr, r3, asr #7	@ tmp287, tmp285,
	adds	ip, lr, #15	@ tmp288, tmp287,
	addmi	r3, lr, #30	@, tmp290, tmp287,
	movpl	r3, ip	@, tmp290, tmp288
	ldr	ip, [fp, #28]	@, BtlDbdrEnable
	mul	r8, r8, r9	@ D.37735, SlotWidth, tmp282
	mov	lr, r3, asr #4	@ tmp292, tmp290,
	cmp	ip, #0	@,
	mul	ip, r9, lr	@ tmp293, tmp282, tmp292
	mul	r9, sl, ip	@ D.37746, level, tmp293
	add	r3, r9, r8	@ tmp294, D.37746, D.37735
	mov	r3, r3, asl #5	@ tmp295, tmp294,
	str	r3, [r7, #264]	@ tmp295, <variable>.ChromOffset
	ldreq	r3, [fp, #28]	@ DbdrInfoSlotLen, BtlDbdrEnable
	bne	.L205	@,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r1, #0	@,
	moveq	r5, r1	@ ImgInfoSlotLen,
	bne	.L206	@,
.L158:
	ldr	r2, [fp, #12]	@, s32DisplayFrameNum
	cmp	r2, #0	@,
	bne	.L159	@,
.L208:
	str	r2, [r7, #528]	@, <variable>.ValidBTLFrameNum
	ldr	r5, [fp, #12]	@ prephitmp.951, s32DisplayFrameNum
.L160:
	ldr	ip, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	ip, #0	@,
	add	r5, r5, r1	@ Offset.994, prephitmp.951,
	bne	.L165	@,
.L207:
	str	ip, [r7, #268]	@, <variable>.ValidFrameNum
	ldr	sl, [fp, #8]	@ prephitmp.1000, s32MaxRefFrameNum
.L166:
	ldr	r9, [r7, #616]	@ D.37804, <variable>.ValidPMVNum
	add	r5, sl, r5	@ Offset.997, prephitmp.1000, Offset.994
	add	r2, r5, r4	@ MemAddr.998, Offset.997, MemAddr
	cmp	r9, #0	@ D.37804,
	ble	.L171	@,
	cmp	r9, #1	@ D.37804,
	sub	r1, r9, #1	@ tmp361, D.37804,
	and	r0, r1, #1	@ tmp363, tmp361,
	str	r2, [r7, #532]	@ MemAddr.998, <variable>.PMVAddr
	mov	r1, #1	@ i.999,
	add	r2, r2, r6	@ ivtmp.964, MemAddr.998, PmvSlotLen
	add	r3, r7, #4	@ ivtmp.968, pVdmMemArrange,
	ble	.L171	@,
	cmp	r0, #0	@ tmp363,
	beq	.L172	@,
	mov	r1, #2	@ i.999,
	cmp	r9, r1	@ D.37804, i.999
	str	r2, [r3, #532]	@ ivtmp.964, <variable>.PMVAddr
	add	r2, r2, r6	@ ivtmp.964, ivtmp.964, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.968, ivtmp.968,
	ble	.L171	@,
.L172:
	add	r1, r1, #2	@ i.999, i.999,
	add	r0, r3, #4	@ tmp365, ivtmp.968,
	cmp	r9, r1	@ D.37804, i.999
	add	lr, r2, r6	@ ivtmp.964, ivtmp.964, PmvSlotLen
	str	r2, [r3, #532]	@ ivtmp.964, <variable>.PMVAddr
	add	r2, lr, r6	@ ivtmp.964, ivtmp.964, PmvSlotLen
	str	lr, [r0, #532]	@ ivtmp.964, <variable>.PMVAddr
	add	r3, r0, #4	@ ivtmp.968, tmp365,
	bgt	.L172	@,
.L171:
	mla	r5, r9, r6, r5	@ tmp359, D.37804, PmvSlotLen, Offset.997
	mov	r0, #0	@ D.37673,
	str	r5, [r7, #4]	@ tmp359, <variable>.TotalMemUsed
.L141:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L159:
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r1, #0	@,
	beq	.L162	@,
	ldr	r2, [fp, #12]	@, s32DisplayFrameNum
	str	r2, [r7, #528]	@, <variable>.ValidBTLFrameNum
	ldr	r2, [fp, #12]	@ s32DisplayFrameNum.993, s32DisplayFrameNum
.L163:
	cmp	r2, #0	@ s32DisplayFrameNum.993,
	addle	r3, r5, r3	@ tmp337, ImgInfoSlotLen, DbdrInfoSlotLen
	mulle	r5, r3, r2	@ prephitmp.951, tmp337, s32DisplayFrameNum.993
	ble	.L160	@,
	ldr	sl, [r7, #528]	@ D.37786, <variable>.ValidBTLFrameNum
	add	r5, r5, r3	@ pretmp.1003, ImgInfoSlotLen, DbdrInfoSlotLen
	ldr	r0, [fp, #-48]	@, %sfp
	mov	r1, #1	@ i,
	cmp	sl, #1	@ D.37786,
	sub	r3, sl, #1	@ tmp371, D.37786,
	add	lr, r0, r4	@ ivtmp.978,, MemAddr
	and	r0, r3, #1	@ tmp373, tmp371,
	str	lr, [r7, #272]	@ ivtmp.978, <variable>.BtlAddr
	add	r2, lr, r5	@ ivtmp.978, ivtmp.978, pretmp.1003
	add	r3, r7, #4	@ ivtmp.982, pVdmMemArrange,
	ble	.L192	@,
	cmp	r0, #0	@ tmp373,
	beq	.L164	@,
	mov	r1, #2	@ i,
	cmp	sl, r1	@ D.37786, i
	str	r2, [r3, #272]	@ ivtmp.978, <variable>.BtlAddr
	add	r2, r2, r5	@ ivtmp.978, ivtmp.978, pretmp.1003
	add	r3, r3, #4	@ ivtmp.982, ivtmp.982,
	ble	.L192	@,
.L164:
	add	r1, r1, #2	@ i, i,
	add	lr, r3, #4	@ tmp375, ivtmp.982,
	cmp	sl, r1	@ D.37786, i
	add	ip, r2, r5	@ ivtmp.978, ivtmp.978, pretmp.1003
	str	r2, [r3, #272]	@ ivtmp.978, <variable>.BtlAddr
	add	r2, ip, r5	@ ivtmp.978, ivtmp.978, pretmp.1003
	str	ip, [lr, #272]	@ ivtmp.978, <variable>.BtlAddr
	add	r3, lr, #4	@ ivtmp.982, tmp375,
	bgt	.L164	@,
.L192:
	mul	r5, r5, sl	@ prephitmp.951, pretmp.1003, D.37786
	ldr	ip, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	ip, #0	@,
	add	r5, r5, r1	@ Offset.994, prephitmp.951,
	beq	.L207	@,
.L165:
	ldr	r0, [fp, #24]	@, Btl1Dt2DEnable
	add	lr, r9, r9, asl #1	@, tmp342, D.37746, D.37746,
	ldr	r2, [fp, #-56]	@, %sfp
	cmp	r0, #0	@,
	ldreq	ip, [fp, #8]	@, s32MaxRefFrameNum
	ldreq	r1, [fp, #12]	@, s32DisplayFrameNum
	addeq	sl, ip, #2	@ tmp339,,
	add	ip, r8, r8, asl #1	@, tmp347, D.37735, D.37735,
	addeq	sl, sl, r1	@ ValidFrameNum, tmp339,
	ldr	r1, [fp, #-52]	@, %sfp
	ldrne	r3, [fp, #8]	@, s32MaxRefFrameNum
	mov	r8, lr, asl #5	@ tmp343, tmp342,
	rsb	r0, r2, r1	@ tmp353,,
	mov	r2, ip, asl #5	@ tmp348, tmp347,
	addne	sl, r3, #2	@ ValidFrameNum,,
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r9, r2, asr #1	@ tmp352, tmp348,
	add	r8, r9, r8, lsr #1	@, ImgSlotLen, tmp352, tmp343,
	rsb	r1, r3, r0	@ FramePoolSize,, tmp353
	rsb	r0, r5, r1	@, Offset.994, FramePoolSize
	mov	r1, r8	@, ImgSlotLen
	bl	__aeabi_idiv	@
	cmp	r0, #64	@,
	movge	r0, #64	@ D.37797,
	cmp	r0, sl	@ D.37797, ValidFrameNum
	movlt	sl, r0	@ D.37797, D.37797
	movge	sl, sl	@ D.37797, ValidFrameNum
	str	sl, [r7, #268]	@ D.37797, <variable>.ValidFrameNum
	cmp	sl, #0	@ D.37797,
	ble	.L193	@,
	cmp	sl, #1	@ D.37797,
	add	r9, r5, r4	@ ivtmp.971, Offset.994, MemAddr
	sub	r3, sl, #1	@ tmp366, D.37797,
	str	r9, [r7, #8]	@ ivtmp.971, <variable>.FrameAddr
	and	r0, r3, #1	@ tmp368, tmp366,
	add	r2, r9, r8	@ ivtmp.971, ivtmp.971, ImgSlotLen
	mov	r1, #1	@ i.996,
	add	r3, r7, #4	@ ivtmp.975, pVdmMemArrange,
	ble	.L193	@,
	cmp	r0, #0	@ tmp368,
	beq	.L170	@,
	mov	r1, #2	@ i.996,
	cmp	sl, r1	@ D.37797, i.996
	str	r2, [r3, #8]	@ ivtmp.971, <variable>.FrameAddr
	add	r2, r2, r8	@ ivtmp.971, ivtmp.971, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.975, ivtmp.975,
	ble	.L193	@,
.L170:
	add	r1, r1, #2	@ i.996, i.996,
	add	lr, r3, #4	@ tmp370, ivtmp.975,
	cmp	sl, r1	@ D.37797, i.996
	add	ip, r2, r8	@ ivtmp.971, ivtmp.971, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.971, <variable>.FrameAddr
	add	r2, ip, r8	@ ivtmp.971, ivtmp.971, ImgSlotLen
	str	ip, [lr, #8]	@ ivtmp.971, <variable>.FrameAddr
	add	r3, lr, #4	@ ivtmp.975, tmp370,
	bgt	.L170	@,
.L193:
	mul	sl, sl, r8	@ prephitmp.1000, D.37797, ImgSlotLen
	b	.L166	@
.L206:
	adds	ip, r5, #127	@ tmp323, Width,
	addmi	ip, r5, #254	@, tmp325, Width,
	mov	lr, ip, asr #7	@ tmp327, tmp325,
	add	r0, lr, lr, asl #1	@, tmp330, tmp327, tmp327,
	mov	r5, r0, asl #7	@ tmp331, tmp330,
	mul	r2, r2, r5	@ tmp332, ImgHeightInPixAln, tmp331
	mov	r5, r2, asr #1	@ ImgInfoSlotLen, tmp332,
	ldr	r2, [fp, #12]	@, s32DisplayFrameNum
	cmp	r2, #0	@,
	bne	.L159	@,
	b	.L208	@
.L205:
	cmp	r0, #0	@ D.37695,
	add	r3, r0, #15	@ tmp298, D.37695,
	movge	r3, r0	@ D.37695, D.37695
	mov	lr, r3, asr #4	@ tmp299, D.37695,
	adds	ip, lr, #7	@ tmp300, tmp299,
	addmi	r0, lr, #14	@, tmp302, tmp299,
	movpl	r0, ip	@, tmp302, tmp300
	mov	r1, r0, asr #3	@ tmp304, tmp302,
	mul	r3, r1, r2	@ tmp305, tmp304, ImgHeightInPixAln
	mov	lr, r3, asl #4	@ tmp306, tmp305,
	add	ip, lr, #7	@ tmp309, tmp306,
	cmp	lr, #0	@ tmp306,
	movlt	lr, ip	@ tmp308, tmp309
	mov	r0, lr, asr #3	@ tmp310, tmp308,
	add	r1, r0, r0, asl #1	@, tmp313, tmp310, tmp310,
	add	r3, r1, r1, lsr #31	@, tmp316, tmp313, tmp313,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	mov	lr, r3, asr #1	@ tmp317, tmp316,
	adds	ip, lr, #127	@ tmp318, tmp317,
	addmi	r0, lr, #254	@, tmp320, tmp317,
	movpl	r0, ip	@, tmp320, tmp318
	cmp	r1, #0	@,
	bic	r3, r0, #127	@ DbdrInfoSlotLen, tmp320,
	moveq	r5, r1	@ ImgInfoSlotLen,
	beq	.L158	@,
	b	.L206	@
.L204:
	sub	r9, r3, #2048	@ tmp270, ImgWidthInPixAln,
	sub	lr, r9, #1	@ tmp270, tmp270,
	cmp	lr, ip	@ tmp270, tmp269
	movls	sl, #32	@ level,
	bls	.L153	@,
	sub	lr, r3, #4096	@ tmp273, ImgWidthInPixAln,
	sub	r1, lr, #1	@ tmp273, tmp273,
	cmp	r1, ip	@ tmp273, tmp269
	movls	sl, #48	@ level,
	bls	.L153	@,
	sub	r1, r3, #6144	@ tmp276, ImgWidthInPixAln,
	sub	r9, r1, #1	@ tmp276, tmp276,
	cmp	r9, ip	@ tmp276, tmp269
	movls	sl, #64	@ level,
	bls	.L153	@,
	b	.L151	@
.L201:
	cmp	r6, #31	@ Height,
	movgt	r2, #0	@, tmp224
	movle	r2, #1	@, tmp224
	sub	r1, r5, #32	@ tmp219, Width,
	movw	ip, #5600	@ tmp221,
	cmp	r1, ip	@ tmp219, tmp221
	movls	r0, r2	@, tmp227, tmp224
	orrhi	r0, r2, #1	@,, tmp227, tmp224
	cmp	r0, #0	@ tmp227,
	bne	.L143	@,
	cmp	r6, #8448	@ Height,
	ble	.L144	@,
.L143:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #468	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37673,
	b	.L141	@
.L162:
	ldr	r2, [fp, #12]	@ s32DisplayFrameNum.993, s32DisplayFrameNum
	cmp	r2, #6	@ s32DisplayFrameNum.993,
	movlt	r2, #6	@ s32DisplayFrameNum.993,
	str	r2, [r7, #528]	@ s32DisplayFrameNum.993, <variable>.ValidBTLFrameNum
	b	.L163	@
.L145:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #473	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37673,
	b	.L141	@
.L203:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #504	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37673,
	b	.L141	@
.L200:
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #460	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37673,
	b	.L141	@
.L202:
	mov	r0, r7	@, pVdmMemArrange
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #476	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37673,
	b	.L141	@
	.fnend
	.size	VDMHAL_V200R003MPW_ArrangeMem_BTL, .-VDMHAL_V200R003MPW_ArrangeMem_BTL
	.align	2
	.global	VDMHAL_V200R003MPW_CfgRpReg
	.type	VDMHAL_V200R003MPW_CfgRpReg, %function
VDMHAL_V200R003MPW_CfgRpReg:
	.fnstart
.LFB1368:
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
	cmp	r3, #1	@ VdhId,
	mov	r0, #0	@ tmp154,
	str	r0, [fp, #-24]	@ tmp154, D32
	bls	.L216	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38328,
.L212:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L216:
	ldr	r2, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r2, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L217	@,
.L213:
	movw	ip, #1148	@ tmp166,
	movw	r2, #:lower16:g_HwMem	@ tmp164,
	mul	r3, ip, r3	@ tmp165, tmp166, VdhId
	movt	r2, #:upper16:g_HwMem	@ tmp164,
	ldr	r0, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	ip, #:lower16:536920579	@ tmp190,
	movt	ip, #:upper16:536920579	@ tmp190,
	movw	r1, #:lower16:3148803	@ tmp197,
	bic	r5, r0, #15	@ tmp163, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:3148803	@ tmp197,
	mov	r0, #0	@ D.38328,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #16]	@ tmp163,
	mov	r5, #13056	@ tmp169,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #48]	@ tmp169,
	mov	r5, #7	@ tmp176,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #36]	@ tmp176,
	mov	r5, #3145728	@ tmp183,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #8]	@ tmp183,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r4, #12]	@ tmp190,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp197,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp197,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp197,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp197,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp197,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp197,
	ldr	r3, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp197,
	b	.L212	@
.L217:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	str	r3, [fp, #-36]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	ldr	r3, [fp, #-36]	@,
	subs	ip, r0, #0	@ D.38332,
	strne	ip, [r1, #0]	@ D.38332, <variable>.pVdmRegVirAddr
	bne	.L213	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38328,
	b	.L212	@
	.fnend
	.size	VDMHAL_V200R003MPW_CfgRpReg, .-VDMHAL_V200R003MPW_CfgRpReg
	.global	__aeabi_idivmod
	.align	2
	.global	VDMHAL_V200R003MPW_CfgRpMsg
	.type	VDMHAL_V200R003MPW_CfgRpMsg, %function
VDMHAL_V200R003MPW_CfgRpMsg:
	.fnstart
.LFB1366:
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
	mov	r7, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #36]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@,
	str	r2, [fp, #-56]	@, %sfp
	beq	.L250	@,
	ldr	r2, [r7, #552]	@ D.38165, <variable>.ValidGroupNum
	sub	r3, r2, #1	@ tmp229, D.38165,
	cmp	r3, #127	@ tmp229,
	bhi	.L251	@,
	ldr	r2, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r4, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	ip, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r0, r2, asl #4	@ tmp233, <variable>.ImageHeight,
	mov	r9, r4, asl #4	@ pic_width, <variable>.ImageWidth,
	adds	r1, r0, #31	@ tmp235, tmp233,
	addmi	r1, r0, #62	@, tmp236, tmp233,
	adds	lr, r9, #127	@ tmp240, pic_width,
	addmi	lr, r9, #254	@, tmp242, pic_width,
	ldr	r4, [fp, #-56]	@, %sfp
	mov	r0, r1, asr #5	@ tmp238, tmp236,
	add	r3, r9, #255	@ tmp232, pic_width,
	mov	r2, lr, asr #7	@ tmp244, tmp242,
	bic	r9, r3, #255	@ SlotWidth, tmp232,
	adds	r1, r2, #15	@ tmp245, tmp244,
	str	ip, [r4, #0]	@ <variable>.RefImageAddr,
	addmi	r1, r2, #30	@, tmp247, tmp244,
	mov	r4, r0, asl #9	@ tmp239, tmp238,
	mul	lr, r0, r9	@ tmp250, tmp238, SlotWidth
	mov	r3, r1, asr #4	@ tmp249, tmp247,
	mov	r1, r9, asl #4	@ tmp268, SlotWidth,
	ldr	ip, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mul	r9, r3, r4	@ D.38188, tmp249, tmp239
	add	r2, r9, lr, asl #5	@, ChromaOffset, D.38188, tmp250,
	add	r0, r2, ip	@ tmp258, ChromaOffset, <variable>.RefImageAddr
	ldr	ip, [fp, #-56]	@, %sfp
	str	r0, [ip, #4]	@ tmp258,
	ldr	lr, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	lr, [ip, #8]	@ <variable>.ImageAddr,
	ldr	r0, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	lr, r2, r0	@ tmp265, ChromaOffset, <variable>.ImageAddr
	str	lr, [ip, #12]	@ tmp265,
	str	r1, [ip, #16]	@ tmp268,
	str	r9, [ip, #20]	@ D.38188,
	ldr	r3, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r2, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	lr, r3, #1	@ tmp274, <variable>.ImageWidth,
	sub	r1, r2, #1	@ tmp278, <variable>.ImageHeight,
	mov	r9, lr, asl #23	@ tmp279, tmp274,
	mov	r0, r9, lsr #23	@ tmp279, tmp279,
	bfi	r0, r1, #16, #9	@ tmp279, tmp278,,
	str	r0, [fp, #-48]	@ tmp279,
	str	r0, [ip, #24]	@ tmp279,
	ldr	r9, [r7, #568]	@ prephitmp.1077, <variable>.FullRepair
	cmp	r9, #0	@ prephitmp.1077,
	movne	r8, #0	@ actual_repairTime,
	bne	.L223	@,
	ldr	sl, [r7, #552]	@ temp.1130, <variable>.ValidGroupNum
	cmp	sl, #0	@ temp.1130,
	movle	r8, r9	@ actual_repairTime, prephitmp.1077
	ble	.L225	@,
	ldrsh	lr, [r7, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	mov	r6, r9	@ i, actual_repairTime.1131
	ldrsh	r3, [r7, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	cmp	lr, #0	@ <variable>.StartMbn,
	add	ip, lr, #7	@ tmp412, <variable>.StartMbn,
	str	r9, [fp, #-64]	@ actual_repairTime.1131, %sfp
	movlt	lr, ip	@ <variable>.StartMbn, tmp412
	adds	r2, r3, #7	@ tmp416, <variable>.EndMbn,
	addmi	r0, r3, #14	@, tmp418, <variable>.EndMbn,
	movpl	r0, r2	@, tmp418, tmp416
	bic	r1, lr, #7	@, <variable>.StartMbn,
	bic	r3, r0, #7	@ cur_EndMb, tmp418,
	str	r1, [fp, #-60]	@, %sfp
.L238:
	ldr	r2, [fp, #-64]	@, %sfp
	cmp	r3, r2	@ cur_EndMb,
	movgt	lr, #0	@, tmp317
	movle	lr, #1	@, tmp317
	cmp	r6, #0	@ i,
	moveq	lr, #0	@, tmp317,
	cmp	lr, #0	@ tmp317,
	addne	r4, r6, #1	@ i.1106, i,
	movne	r8, r9	@ actual_repairTime, actual_repairTime.1131
	bne	.L228	@,
	add	r5, r6, #10	@ tmp318, i,
	mvn	r4, r6	@ tmp425, i
	add	r8, r4, sl	@ tmp424, tmp425, temp.1130
	tst	r8, #1	@ tmp424,
	add	r2, r7, r5, asl #2	@, tmp320, pRepairParam, tmp318,
	add	r3, r2, #2	@ ivtmp.1100, tmp320,
	beq	.L229	@,
	add	r4, r6, #1	@ i.1106, i,
	cmp	r4, sl	@ i.1106, temp.1130
	bge	.L247	@,
	ldrsh	r1, [r2, #2]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r8, [r3, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r5, r1, #7	@ tmp442, <variable>.EndMbn,
	addmi	r5, r1, #14	@, tmp444, <variable>.EndMbn,
	add	r0, r8, #7	@ tmp447, <variable>.StartMbn,
	cmp	r8, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp444,
	movlt	r8, r0	@ <variable>.StartMbn, tmp447
	bic	r2, r8, #7	@ D.38258, <variable>.StartMbn,
	cmp	r5, r2	@ end_Mb, D.38258
	bgt	.L241	@,
	add	lr, r2, #1	@ tmp452, D.38258,
	cmp	r5, lr	@ end_Mb, tmp452
	beq	.L241	@,
	ldrsh	r8, [r3, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, r8, #7	@ tmp454, <variable>.EndMbn,
	addmi	ip, r8, #14	@, tmp456, <variable>.EndMbn,
	movpl	ip, r0	@, tmp456, tmp454
	bic	r2, ip, #7	@ tmp458, tmp456,
	cmp	r5, r2	@ end_Mb, tmp458
	bgt	.L231	@,
.L241:
	add	r3, r3, #4	@ ivtmp.1100, ivtmp.1100,
	mov	r6, r4	@ i, i.1106
	b	.L229	@
.L230:
	ldrsh	lr, [r3, #0]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r2, [r3, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r8, lr, #7	@ tmp431, <variable>.EndMbn,
	addmi	r1, lr, #14	@, tmp433, <variable>.EndMbn,
	movpl	r1, r8	@, tmp433, tmp431
	add	r5, r2, #7	@ tmp436, <variable>.StartMbn,
	cmp	r2, #0	@ <variable>.StartMbn,
	bic	r1, r1, #7	@ end_Mb, tmp433,
	movlt	r2, r5	@ <variable>.StartMbn, tmp436
	bic	lr, r2, #7	@ D.38258, <variable>.StartMbn,
	cmp	r1, lr	@ end_Mb, D.38258
	add	r5, lr, #1	@ tmp342, D.38258,
	bgt	.L232	@,
	cmp	r1, r5	@ end_Mb, tmp342
	beq	.L232	@,
	ldrsh	r8, [r3, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r5, r8, #7	@ tmp344, <variable>.EndMbn,
	addmi	lr, r8, #14	@, tmp346, <variable>.EndMbn,
	movpl	lr, r5	@, tmp346, tmp344
	bic	r2, lr, #7	@ tmp349, tmp346,
	cmp	r1, r2	@ end_Mb, tmp349
	bgt	.L249	@,
.L232:
	ldrsh	r2, [r3, #4]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r6, r4	@ i, i.1106
	ldrsh	r3, [r0, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r4, r4, #1	@ i.1106, i.1106,
	adds	r1, r2, #7	@ tmp331, <variable>.EndMbn,
	add	lr, r3, #7	@ tmp339, <variable>.StartMbn,
	addmi	r1, r2, #14	@, tmp333, <variable>.EndMbn,
	cmp	r3, #0	@ <variable>.StartMbn,
	bic	r1, r1, #7	@ end_Mb, tmp333,
	movlt	r3, lr	@ <variable>.StartMbn, tmp339
	bic	r3, r3, #7	@ D.38258, <variable>.StartMbn,
	cmp	r1, r3	@ end_Mb, D.38258
	bgt	.L244	@,
	add	r3, r3, #1	@ tmp459, D.38258,
	cmp	r1, r3	@ end_Mb, tmp459
	beq	.L244	@,
	ldrsh	r8, [r0, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r2, r8, #7	@ tmp461, <variable>.EndMbn,
	addmi	lr, r8, #14	@, tmp463, <variable>.EndMbn,
	movpl	lr, r2	@, tmp463, tmp461
	bic	r5, lr, #7	@ tmp465, tmp463,
	cmp	r1, r5	@ end_Mb, tmp465
	bgt	.L249	@,
.L244:
	add	r3, r0, #4	@ ivtmp.1100, tmp427,
	add	r6, ip, #1	@ i, i.1106,
.L229:
	add	r4, r6, #1	@ i.1106, i,
	add	r0, r3, #4	@ tmp427, ivtmp.1100,
	cmp	r4, sl	@ i.1106, temp.1130
	mov	ip, r4	@ i.1106, i.1106
	blt	.L230	@,
.L247:
	add	r8, r7, r6, asl #2	@, tmp324, pRepairParam, i,
	ldrsh	r0, [r8, #42]	@ pretmp.1082, <variable>.EndMbn
	adds	r5, r0, #7	@ pretmp.1110, pretmp.1082,
	addmi	ip, r0, #14	@, pretmp.1110, pretmp.1082,
	movpl	ip, r5	@, pretmp.1110, pretmp.1110
	bic	r5, ip, #7	@ end_Mb, pretmp.1110,
.L231:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	r8, r9, #1	@ actual_repairTime, actual_repairTime.1131,
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r3, r0, ip	@ D.38263, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r5, r3	@ end_Mb, D.38263
	subge	r5, r3, #1	@ end_Mb, D.38263,
	cmp	r8, #252	@ actual_repairTime,
	bgt	.L252	@,
.L234:
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	mov	lr, #0	@,
	ldr	r0, [fp, #-60]	@, %sfp
	str	lr, [fp, #-48]	@, D32
	bl	__aeabi_idivmod	@
	ldr	sl, [fp, #-48]	@ tmp360,
	ldr	r0, [fp, #-60]	@, %sfp
	bfi	sl, r1, #0, #9	@ tmp360,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	ldr	r2, [fp, #-56]	@, %sfp
	add	r1, r9, #4	@ tmp366, actual_repairTime.1131,
	mov	ip, #0	@,
	bfi	sl, r0, #16, #9	@ tmp365,,,
	mov	r0, r5	@, end_Mb
	str	sl, [r2, r1, asl #3]	@ D32.1142,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	str	ip, [fp, #-48]	@, D32
	bl	__aeabi_idivmod	@
	ldr	sl, [fp, #-48]	@ tmp375,
	mov	r0, r5	@, end_Mb
	bfi	sl, r1, #0, #9	@ tmp375,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	mov	r3, r9, asl #3	@ tmp381, actual_repairTime.1131,
	ldr	r2, [fp, #-56]	@, %sfp
	add	r9, r3, #36	@ tmp382, tmp381,
	bfi	sl, r0, #16, #9	@ tmp380,,,
	str	sl, [fp, #-48]	@ tmp380,
	str	sl, [r2, r9]	@ D32.1147,
	ldr	sl, [r7, #552]	@ temp.1130, <variable>.ValidGroupNum
.L228:
	cmp	r4, sl	@ i.1106, temp.1130
	bge	.L253	@,
	add	r1, r4, #10	@ tmp280, i.1106,
	cmp	r4, #0	@ i.1106,
	mov	lr, r1, asl #2	@ tmp281, tmp280,
	add	ip, lr, r7	@ tmp282, tmp281, pRepairParam
	ldrh	r2, [lr, r7]	@ D.38226, <variable>.StartMbn
	ldrh	r3, [ip, #2]	@ D.38229, <variable>.EndMbn
	ble	.L226	@,
	add	lr, r7, r6, asl #2	@, tmp291, pRepairParam, i,
	ldrsh	ip, [lr, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, ip, #7	@ tmp294, <variable>.EndMbn,
	addmi	r9, ip, #14	@, tmp296, <variable>.EndMbn,
	movpl	r9, r0	@, tmp296, tmp294
	bic	r6, r9, #7	@, tmp296,
	str	r6, [fp, #-64]	@, %sfp
.L226:
	sxth	r6, r2	@ D.38226, D.38226
	sxth	ip, r3	@ D.38229, D.38229
	cmp	r6, #0	@ D.38226,
	add	r0, r6, #7	@ tmp302, D.38226,
	mov	r9, r8	@ actual_repairTime.1131, actual_repairTime
	movlt	r6, r0	@ D.38226, tmp302
	adds	r1, ip, #7	@ tmp306, D.38229,
	addmi	r3, ip, #14	@, tmp308, D.38229,
	movpl	r3, r1	@, tmp308, tmp306
	bic	r2, r6, #7	@, D.38226,
	bic	r3, r3, #7	@ cur_EndMb, tmp308,
	str	r2, [fp, #-60]	@, %sfp
	mov	r6, r4	@ i, i.1106
	b	.L238	@
.L253:
	ldr	r9, [r7, #568]	@ prephitmp.1077, <variable>.FullRepair
.L223:
	cmp	r9, #1	@ prephitmp.1077,
	beq	.L235	@,
.L225:
	sub	r0, r8, #1	@ tmp384, actual_repairTime,
	uxth	r1, r0	@ prephitmp.1075, tmp384
.L237:
	mov	r0, #0	@ tmp398,
	str	r0, [fp, #-48]	@ tmp398, D32
	ldr	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r2, [fp, #-46]	@ zero_extendqisi2	@,
	ldr	lr, [r7, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r2, ip, #0, #1	@ tmp400, <variable>.Compress_en,,
	strh	r1, [fp, #-48]	@ movhi	@ prephitmp.1075, <variable>.total_grp_num_minus1
	ldr	r1, [fp, #-56]	@, %sfp
	uxtb	r3, r2	@ tmp403, tmp400
	bfi	r3, lr, #4, #2	@ tmp403, <variable>.Pic_type,,
	bfi	r3, lr, #6, #2	@ tmp406, <variable>.Pic_type,,
	strb	r3, [fp, #-46]	@ tmp406,
	ldr	r2, [fp, #-48]	@ D32.1170, D32
	str	r2, [r1, #28]	@ D32.1170,
.L220:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L249:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r5, r1	@ end_Mb, end_Mb
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r8, r9, #1	@ actual_repairTime, actual_repairTime.1131,
	mul	r3, r0, ip	@ D.38263, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r5, r3	@ end_Mb, D.38263
	subge	r5, r3, #1	@ end_Mb, D.38263,
	cmp	r8, #252	@ actual_repairTime,
	ble	.L234	@,
.L252:
	mov	r1, #1	@ tmp352,
	str	r1, [r7, #568]	@ tmp352, <variable>.FullRepair
.L235:
	mov	ip, #1	@ tmp385,
	str	ip, [r7, #552]	@ tmp385, <variable>.ValidGroupNum
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r1, #0	@ tmp386,
	mov	lr, r1	@ tmp388, tmp386
	bfi	lr, r1, #16, #9	@ tmp388, tmp386,,
	str	lr, [ip, #32]	@ tmp388,
	ldr	r3, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r2, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r0, r3, #1	@ tmp392, <variable>.ImageWidth,
	sub	r2, r2, #1	@ tmp396, <variable>.ImageHeight,
	mov	lr, r0, asl #23	@ tmp397, tmp392,
	mov	r3, lr, lsr #23	@ tmp397, tmp397,
	bfi	r3, r2, #16, #9	@ tmp397, tmp396,,
	str	r3, [ip, #36]	@ tmp397,
	b	.L237	@
.L251:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38164,
	b	.L220	@
.L250:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1061	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38164,
	b	.L220	@
	.fnend
	.size	VDMHAL_V200R003MPW_CfgRpMsg, .-VDMHAL_V200R003MPW_CfgRpMsg
	.align	2
	.global	VDMHAL_V200R003MPW_PrepareRepair
	.type	VDMHAL_V200R003MPW_PrepareRepair, %function
VDMHAL_V200R003MPW_PrepareRepair:
	.fnstart
.LFB1370:
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
	cmp	r3, #1	@ VdhId,
	mov	r4, r3	@ VdhId, VdhId
	mov	r8, r0	@ VidStd, VidStd
	mov	r7, r1	@ pDecParam, pDecParam
	bls	.L271	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38489,
.L257:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L271:
	movw	sl, #1148	@ tmp153,
	movw	r6, #:lower16:g_HwMem	@ tmp154,
	mul	sl, sl, r3	@ tmp152, tmp153, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp154,
	add	r5, r6, sl	@ pHwMem, tmp154, tmp152
	ldr	r3, [r6, sl]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L273	@,
.L258:
	cmp	r2, #0	@ RepairTime,
	movw	ip, #1144	@ tmp158,
	movw	r1, #:lower16:g_RepairParam	@ g_RepairParam.473,
	movt	r1, #:upper16:g_RepairParam	@ g_RepairParam.473,
	mul	r3, ip, r4	@ tmp188, tmp158, VdhId
	bne	.L260	@,
	add	r6, r1, r3	@ pRepairParam, g_RepairParam.473, tmp188
	ldr	r0, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L261	@,
	cmp	r8, #6	@ VidStd,
	beq	.L274	@,
.L262:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r3, #36]	@ D.38511, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.38511,
	beq	.L264	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.38511
.L265:
	mov	r0, r8	@, VidStd
	mov	r2, r7	@, pDecParam
	mov	r3, r4	@, VdhId
.L272:
	mov	r1, r5	@, pHwMem
	bl	VDMHAL_V200R003MPW_CfgRpReg	@
	mov	r0, r6	@, pRepairParam
	mov	r1, r5	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VDMHAL_V200R003MPW_CfgRpMsg	@
	mov	r0, #0	@ D.38489,
	b	.L257	@
.L260:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.38489,
	bne	.L257	@,
	cmp	r8, #6	@ VidStd,
	bne	.L267	@,
	ldrb	ip, [r7, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	bne	.L267	@,
	add	lr, r3, r1	@ tmp172, tmp188, g_RepairParam.473
	ldr	r0, [lr, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L267	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp184,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp184,
	add	r6, r3, #572	@ tmp175, tmp188,
	ldr	r3, [r2, #36]	@ temp.1198, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	add	r6, r1, r6	@ pRepairParam, g_RepairParam.473, tmp175
	mov	r1, #2	@ tmp176,
	cmp	r3, #0	@ temp.1198,
	str	r1, [r6, #564]	@ tmp176, <variable>.Pic_type
	beq	.L268	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ temp.1198
.L269:
	mov	r2, r7	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r0, #6	@,
	b	.L272	@
.L274:
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r2, #1	@ <variable>.PicStruct,
	movne	r2, #0	@, tmp189,
	str	r2, [r6, #1136]	@ tmp189, <variable>.Pic_type
	b	.L262	@
.L264:
	mov	r0, r3	@, D.38511
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #1578	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L265	@
.L273:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r2, [fp, #-40]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-40]	@,
	subs	r1, r0, #0	@ D.38493,
	strne	r1, [r6, sl]	@ D.38493, <variable>.pVdmRegVirAddr
	bne	.L258	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38489,
	b	.L257	@
.L267:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38489,
	b	.L257	@
.L268:
	mov	r0, r3	@, temp.1198
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #1598	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L269	@
.L261:
	mov	r0, r2	@, RepairTime
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38489,
	b	.L257	@
	.fnend
	.size	VDMHAL_V200R003MPW_PrepareRepair, .-VDMHAL_V200R003MPW_PrepareRepair
	.align	2
	.global	VDMHAL_V200R003MPW_BackupInfo
	.type	VDMHAL_V200R003MPW_BackupInfo, %function
VDMHAL_V200R003MPW_BackupInfo:
	.fnstart
.LFB1362:
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
	cmp	r1, #1	@ VdhId,
	mov	r6, r0	@ pMb0QpInCurrPic, pMb0QpInCurrPic
	bls	.L283	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38027,
.L278:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L283:
	movw	r5, #1148	@ tmp166,
	movw	r4, #:lower16:g_HwMem	@ tmp164,
	mul	r5, r5, r1	@ tmp165, tmp166, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp164,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L284	@,
.L279:
	mov	r5, #180	@ tmp176,
	ldr	r4, [r3, #12]	@ D.38040,
	mul	r1, r5, r1	@ tmp175, tmp176, VdhId
	movw	r0, #:lower16:g_BackUp	@ tmp174,
	movt	r0, #:upper16:g_BackUp	@ tmp174,
	add	ip, r3, #4096	@ D.38047, p32,
	and	r5, r4, #15	@ tmp243, D.38040,
	add	r2, r1, r0	@ tmp177, tmp175, tmp174
	cmp	r5, #5	@ tmp243,
	str	r4, [r1, r0]	@ D.38040, <variable>.BasicCfg1
	ldr	r0, [r3, #28]	@ D.38044,
	str	r0, [r2, #4]	@ D.38044, <variable>.VdmState
	ldr	r1, [ip, #0]	@ D.38048,* D.38047
	str	r1, [r2, #16]	@ D.38048, <variable>.SedSta
	ldr	r0, [ip, #20]	@ D.38052,
	str	r0, [r2, #20]	@ D.38052, <variable>.SedEnd0
	ldr	r1, [r3, #208]	@ D.38056,
	str	r1, [r2, #8]	@ D.38056, <variable>.Mb0QpInCurrPic
	andne	r1, r1, #31	@ tmp260, D.38056,
	ldr	r0, [r3, #212]	@ D.38060,
	str	r0, [r2, #12]	@ D.38060, <variable>.SwitchRounding
	andeq	r0, r0, #1	@ tmp252, D.38060,
	ldr	ip, [r3, #176]	@ D.38064,
	movne	r0, #0	@ D.38027,
	str	ip, [r2, #24]	@ D.38064, <variable>.DecCyclePerPic
	ldr	ip, [r3, #180]	@ D.38068,
	str	ip, [r2, #28]	@ D.38068, <variable>.RdBdwidthPerPic
	ldr	ip, [r3, #184]	@ D.38072,
	str	ip, [r2, #32]	@ D.38072, <variable>.WrBdWidthPerPic
	ldr	ip, [r3, #188]	@ D.38076,
	str	ip, [r2, #36]	@ D.38076, <variable>.RdReqPerPic
	ldr	r3, [r3, #192]	@ D.38080,
	str	r3, [r2, #40]	@ D.38080, <variable>.WrReqPerPic
	streq	r0, [r6, #0]	@ tmp252,* pMb0QpInCurrPic
	moveq	r0, #0	@ D.38027,
	strne	r1, [r6, #0]	@ tmp260,* pMb0QpInCurrPic
	b	.L278	@
.L284:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L279	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38027,
	b	.L278	@
	.fnend
	.size	VDMHAL_V200R003MPW_BackupInfo, .-VDMHAL_V200R003MPW_BackupInfo
	.align	2
	.global	VDMHAL_V200R003MPW_CheckInt
	.type	VDMHAL_V200R003MPW_CheckInt, %function
VDMHAL_V200R003MPW_CheckInt:
	.fnstart
.LFB1358:
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
	cmp	r0, #1	@ VdhId,
	bls	.L292	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L292:
	movw	r6, #1148	@ tmp143,
	movw	r5, #:lower16:g_HwMem	@ tmp141,
	mul	r6, r6, r0	@ tmp142, tmp143, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp141,
	ldr	r4, [r6, r5]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ p32,
	beq	.L293	@,
.L289:
	ldr	r0, [r4, #32]	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L293:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ p32,
	strne	r4, [r6, r5]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L289	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ dat, p32
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_CheckInt, .-VDMHAL_V200R003MPW_CheckInt
	.align	2
	.global	VDMHAL_V200R003MPW_EnableInt
	.type	VDMHAL_V200R003MPW_EnableInt, %function
VDMHAL_V200R003MPW_EnableInt:
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
	cmp	r0, #1	@ VdhId,
	bls	.L301	@,
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L301:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L302	@,
.L298:
	mvn	r2, #1	@ tmp149,
	str	r2, [r3, #36]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L302:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L298	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_EnableInt, .-VDMHAL_V200R003MPW_EnableInt
	.align	2
	.global	VDMHAL_V200R003MPW_MaskInt
	.type	VDMHAL_V200R003MPW_MaskInt, %function
VDMHAL_V200R003MPW_MaskInt:
	.fnstart
.LFB1356:
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
	cmp	r0, #1	@ VdhId,
	bls	.L310	@,
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L310:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L311	@,
.L307:
	mvn	r2, #0	@ tmp149,
	str	r2, [r3, #36]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L311:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L307	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_MaskInt, .-VDMHAL_V200R003MPW_MaskInt
	.align	2
	.global	VDMHAL_V200R003MPW_ClearIntState
	.type	VDMHAL_V200R003MPW_ClearIntState, %function
VDMHAL_V200R003MPW_ClearIntState:
	.fnstart
.LFB1355:
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
	cmp	r0, #1	@ VdhId,
	bls	.L319	@,
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L319:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L320	@,
.L316:
	mvn	r2, #0	@ tmp149,
	str	r2, [r3, #32]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L320:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L316	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_ClearIntState, .-VDMHAL_V200R003MPW_ClearIntState
	.align	2
	.global	VDMHAL_V200R003MPW_ResetVdm
	.type	VDMHAL_V200R003MPW_ResetVdm, %function
VDMHAL_V200R003MPW_ResetVdm:
	.fnstart
.LFB1354:
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
	subs	r6, r0, #0	@ VdhId, VdhId
	beq	.L324	@,
	cmp	r6, #1	@ VdhId,
	beq	.L324	@,
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L324:
	movw	r0, #:lower16:-123592584	@,
	movt	r0, #:upper16:-123592584	@,
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ pVdmResetVirAddr,
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ pVdmResetVirAddr,
	cmpne	r0, #0	@, pVdmRegVirAddr,
	movne	r3, #0	@, tmp162
	moveq	r3, #1	@, tmp162
	beq	.L336	@,
	movw	r0, #1148	@ tmp166,
	movw	r5, #:lower16:g_HwMem	@ tmp181,
	mul	lr, r0, r6	@ tmp165, tmp166, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp181,
	ldr	r7, [r4, #0]	@ reg,* pVdmResetVirAddr
	movw	r0, #10000	@ tmp182,
	orr	r1, r7, #16	@ D.37842, reg,
	ldr	ip, [lr, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [ip, #36]	@ tmp,
	str	r1, [r4, #0]	@ D.37842,* pVdmResetVirAddr
	ldr	r2, [lr, r5]	@ pretmp.1341, <variable>.pVdmRegVirAddr
	add	r2, r2, #28	@ pretmp.1342, pretmp.1341,
	b	.L329	@
.L338:
	ldr	r1, [r2, #0]	@ dat,* pretmp.1342
	tst	r1, #1048576	@ dat,
	beq	.L328	@,
	cmp	r3, r0	@ i, tmp182
	beq	.L337	@,
.L329:
	ldr	lr, [r2, #0]	@ dat,* pretmp.1342
	add	r3, r3, #1	@ tmp183, i,
	add	r3, r3, #1	@ i, tmp183,
	tst	lr, #1048576	@ dat,
	bne	.L338	@,
.L328:
	movw	ip, #1148	@ tmp178,
	bic	r7, r7, #16	@ D.37852, reg,
	mul	r6, ip, r6	@ tmp177, tmp178, VdhId
	str	r7, [r4, #0]	@ D.37852,* pVdmResetVirAddr
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r2, #36]	@ tmp,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L336:
	mov	r2, r0	@, pVdmRegVirAddr
	mov	r3, r4	@, pVdmResetVirAddr
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L337:
	movw	r1, #:lower16:.LC28	@,
	mov	r2, r6	@, VdhId
	movt	r1, #:upper16:.LC28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L328	@
	.fnend
	.size	VDMHAL_V200R003MPW_ResetVdm, .-VDMHAL_V200R003MPW_ResetVdm
	.align	2
	.global	VDMHAL_V200R003MPW_CloseHAL
	.type	VDMHAL_V200R003MPW_CloseHAL, %function
VDMHAL_V200R003MPW_CloseHAL:
	.fnstart
.LFB1351:
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
	cmp	r0, #1	@ VdhId,
	mov	r4, r0	@ VdhId, VdhId
	bls	.L345	@,
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L345:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	ldr	r3, [r3, #36]	@ D.37441, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.37441,
	beq	.L343	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.37441
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L343:
	mov	r0, r3	@, D.37441
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #269	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_CloseHAL, .-VDMHAL_V200R003MPW_CloseHAL
	.align	2
	.global	VDMHAL_V200R003MPW_MakeDecReport
	.type	VDMHAL_V200R003MPW_MakeDecReport, %function
VDMHAL_V200R003MPW_MakeDecReport:
	.fnstart
.LFB1369:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r6, r1, #0	@ pDecReport, pDecReport
	mov	r4, r0	@ VidStd, VidStd
	mov	r8, r2	@ VdhId, VdhId
	beq	.L368	@,
	movw	r0, #1148	@ tmp159,
	movw	r3, #:lower16:g_HwMem	@ tmp160,
	mul	r2, r0, r2	@ tmp158, tmp159, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp160,
	add	r5, r3, r2	@ pHwMem, tmp160, tmp158
	ldr	r0, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L369	@,
	mov	r0, r6	@, pDecReport
	mov	r1, #528	@,
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp240,
	movt	r3, #:upper16:g_BackUp	@ tmp240,
	mov	r1, #180	@ tmp168,
	ldr	r0, [r5, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	r2, r1, r8, r3	@ tmp169, tmp168, VdhId, tmp240
	str	r0, [r6, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	ip, [r2, #4]	@ D.38410, <variable>.VdmState
	mov	r2, ip, lsr #17	@ tmp171, D.38410,
	and	r1, r2, #3	@ tmp172, tmp171,
	cmp	r1, #1	@ tmp172,
	moveq	r2, #0	@ prephitmp.1406,
	beq	.L351	@,
	eor	lr, r2, #1	@ tmp176, tmp171,
	and	r2, lr, #1	@ tmp178, tmp176,
	cmp	r4, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1406, tmp178
.L351:
	mov	r0, #180	@ tmp184,
	str	r2, [r6, #0]	@ prephitmp.1406, <variable>.RetType
	mla	r3, r0, r8, r3	@ tmp185, tmp184, VdhId, tmp240
	cmp	r4, #0	@ VidStd,
	cmpne	r4, #15	@, VidStd,
	ldr	r2, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	ip, r2, #-16777216	@ D.38420, <variable>.VdmState,
	bic	r2, ip, #16646144	@ D.38420, D.38420,
	str	r2, [r6, #8]	@ D.38420, <variable>.DecSliceNum
	bne	.L352	@,
	ldrb	r3, [r3, #19]	@ zero_extendqisi2	@ tmp202, <variable>.SedSta
	and	r3, r3, #3	@ tmp204, tmp202,
	cmp	r3, #2	@ tmp204,
	beq	.L370	@,
.L352:
	cmp	r2, #128	@ D.38420,
	movhi	r3, #0	@ tmp210,
	strhi	r3, [r6, #8]	@ tmp210, <variable>.DecSliceNum
	ldr	r7, [r5, #28]	@ D.38435, <variable>.MsgSlotAddr
	mov	r0, r7	@, D.38435
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.38437,
	beq	.L371	@,
	ldr	ip, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r8, r8, asl #11	@ tmp241, VdhId,
	movw	r4, #:lower16:g_UpMsg	@ tmp239,
	movt	r4, #:upper16:g_UpMsg	@ tmp239,
	add	r5, r4, r8	@ tmp215, tmp239, tmp241
	mov	r2, ip, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp215
	bl	VDMHAL_V200R003MPW_ReadMsgSlot	@
	ldr	ip, [r6, #8]	@ temp.1446, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1446,
	beq	.L355	@,
	ldrh	r1, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1446
	sub	r2, ip, #1	@ tmp244, temp.1446,
	and	r2, r2, r0	@ tmp246, tmp244,
	strh	r1, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r3, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1432, tmp215,
	strh	r3, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r6, #4	@ ivtmp.1435, pDecReport,
	bcs	.L355	@,
	cmp	r2, #0	@ tmp246,
	beq	.L356	@,
	ldrh	r1, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1446
	strh	r1, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r2, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1432, ivtmp.1432,
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1435, ivtmp.1435,
	bcs	.L355	@,
.L356:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r2, r5, #16	@ tmp249, ivtmp.1432,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1446
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp247, ivtmp.1435,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r2, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r2, #16	@ ivtmp.1432, tmp249,
	ldrh	r3, [r2, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1435, tmp247,
	bcc	.L356	@,
.L355:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.38452
	bne	.L372	@,
.L348:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L372:
	ldr	r2, [r6, #8]	@, <variable>.DecSliceNum
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.38435
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r0, ip, asl #2	@ tmp226, <variable>.DecSliceNum,
	cmp	r0, #3	@ tmp226,
	beq	.L358	@,
	add	r4, r4, r8	@ ivtmp.1422, tmp239, tmp241
	mov	r5, #0	@ i_cnt,
.L359:
	ldr	lr, [r4, #4]	@ tmp231, g_UpMsg
	mov	r2, r5	@, i_cnt
	ldr	ip, [r4, #8]	@ tmp232, g_UpMsg
	mov	r0, #6	@,
	ldr	r7, [r4, #12]	@ tmp233, g_UpMsg
	movw	r1, #:lower16:.LC34	@,
	ldr	r3, [r4, #0]	@ tmp230, g_UpMsg
	movt	r1, #:upper16:.LC34	@,
	str	lr, [sp, #0]	@ tmp231,
	add	r5, r5, #4	@ i_cnt, i_cnt,
	str	ip, [sp, #4]	@ tmp232,
	add	r4, r4, #16	@ ivtmp.1422, ivtmp.1422,
	str	r7, [sp, #8]	@ tmp233,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r2, r1, asl #2	@ tmp234, <variable>.DecSliceNum,
	sub	r3, r2, #3	@ tmp236, tmp234,
	cmp	r3, r5	@ tmp236, i_cnt
	bhi	.L359	@,
.L358:
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38395,
	b	.L348	@
.L370:
	mov	lr, #0	@ movhi	@,
	mov	r1, #1	@ tmp205,
	strh	lr, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.38395,
	strh	lr, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r1, [r6, #8]	@ tmp205, <variable>.DecSliceNum
	b	.L348	@
.L369:
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #1456	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38395,
	b	.L348	@
.L371:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1493	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r3, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38395,
	b	.L348	@
.L368:
	mov	r0, r6	@, pDecReport
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1455	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC30	@,
	movt	r3, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38395,
	b	.L348	@
	.fnend
	.size	VDMHAL_V200R003MPW_MakeDecReport, .-VDMHAL_V200R003MPW_MakeDecReport
	.align	2
	.global	VDMHAL_V200R003MPW_PrepareDec
	.type	VDMHAL_V200R003MPW_PrepareDec, %function
VDMHAL_V200R003MPW_PrepareDec:
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
	subs	r3, r1, #0	@ pDecParam, pDecParam
	bne	.L389	@,
.L374:
	mvn	r0, #0	@ D.37965,
	ldmfd	sp, {fp, sp, pc}	@
.L389:
	cmp	r0, #15	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L374	@
.L386:
	.word	.L385
	.word	.L376
	.word	.L377
	.word	.L378
	.word	.L374
	.word	.L379
	.word	.L380
	.word	.L374
	.word	.L381
	.word	.L382
	.word	.L383
	.word	.L383
	.word	.L383
	.word	.L384
	.word	.L374
	.word	.L385
.L385:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	H264HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L384:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	VP8HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L383:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	VP6HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L382:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	RV9HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L381:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	RV8HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L380:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	AVSHAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L379:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	DIVX3HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L378:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	MP2HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L377:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	MP4HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
.L376:
	mov	r0, r3	@, pDecParam
	mov	r1, r2	@, VdhId
	bl	VC1HAL_V200R003MPW_StartDec	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_PrepareDec, .-VDMHAL_V200R003MPW_PrepareDec
	.align	2
	.global	VDMHAL_V200R003MPW_ArrangeMem
	.type	VDMHAL_V200R003MPW_ArrangeMem, %function
VDMHAL_V200R003MPW_ArrangeMem:
	.fnstart
.LFB1352:
	@ args = 20, pretend = 0, frame = 16
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
	subs	r4, r0, #0	@ MemAddr, MemAddr
	mov	r5, r1	@ MemSize, MemSize
	mov	r6, r2	@ Width, Width
	mov	r7, r3	@ Height, Height
	ldr	sl, [fp, #16]	@ ChanID, ChanID
	ldr	r8, [fp, #20]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L432	@,
	ldr	r3, [fp, #12]	@ UserDec, UserDec
	cmp	r3, #1	@ UserDec,
	beq	.L433	@,
	cmp	r7, #31	@ Height,
	movgt	ip, #0	@, tmp197
	movle	ip, #1	@, tmp197
	sub	r0, r2, #32	@ tmp192, Width,
	movw	r3, #5600	@ tmp194,
	cmp	r0, r3	@ tmp192, tmp194
	movls	lr, ip	@, tmp200, tmp197
	orrhi	lr, ip, #1	@,, tmp200, tmp197
	cmp	lr, #0	@ tmp200,
	bne	.L396	@,
	cmp	r7, #4224	@ Height,
	bgt	.L396	@,
.L395:
	cmp	r8, #0	@ pVdmMemArrange,
	beq	.L434	@,
	mov	r0, r8	@, pVdmMemArrange
	mov	r1, #620	@,
	ldr	r9, [fp, #4]	@ PmvNum, PmvNum
	add	r6, r6, #15	@ tmp207, Width,
	bl	__memzero	@
	add	r1, r7, #15	@ tmp208, Height,
	mov	r6, r6, asr #4	@ ImgWidthInMb, tmp207,
	movw	r7, #:lower16:g_not_direct_8x8_inference_flag	@ tmp216,
	mov	r1, r1, asr #4	@ ImgHeightInMb, tmp208,
	movt	r7, #:upper16:g_not_direct_8x8_inference_flag	@ tmp216,
	cmp	r9, #20	@ PmvNum,
	movge	r9, #20	@ PmvNum.1523,
	cmp	r1, #36	@ ImgHeightInMb,
	cmple	r6, #45	@, ImgWidthInMb,
	mul	r3, r6, r1	@ tmp218, ImgWidthInMb, ImgHeightInMb
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	r0, #1	@ g_not_direct_8x8_inference_flag,
	movne	r0, ip	@ ColMbSize, ColMbSize
	moveq	r0, #64	@ ColMbSize,
	mul	r2, r0, r3	@ tmp219, ColMbSize, tmp218
	add	r7, r2, #127	@ tmp220, tmp219,
	bic	r7, r7, #127	@ PmvSlotLen, tmp220,
	mul	r3, r9, r7	@ PmvPoolSize, PmvNum.1523, PmvSlotLen
	cmp	r3, r5	@ PmvPoolSize, MemSize
	bge	.L435	@,
	mov	r6, r6, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movw	r2, #2047	@ tmp230,
	add	r0, r6, #255	@ tmp227, ImgWidthInPixAln,
	sub	ip, r6, #1	@ tmp229, ImgWidthInPixAln,
	bic	r0, r0, #255	@ SlotWidth, tmp227,
	cmp	ip, r2	@ tmp229, tmp230
	str	r9, [r8, #616]	@ PmvNum.1523, <variable>.ValidPMVNum
	mov	lr, r7, asr #1	@ tmp226, PmvSlotLen,
	mov	r9, r0, asl #4	@ tmp228, SlotWidth,
	str	lr, [r8, #612]	@ tmp226, <variable>.HafPmvOffset
	str	r9, [r8, #0]	@ tmp228, <variable>.VahbStride
	bhi	.L436	@,
.L402:
	mov	ip, #16	@ level,
.L404:
	mov	r1, r1, asl #4	@ tmp240, ImgHeightInMb,
	adds	r9, r1, #31	@ tmp241, tmp240,
	addmi	r9, r1, #62	@, tmp242, tmp240,
	cmp	sl, #0	@ ChanID,
	mov	r2, r9, asr #5	@ tmp244, tmp242,
	mul	r9, r0, r2	@ D.37552, SlotWidth, tmp244
	mul	r2, r2, ip	@ D.37557, tmp244, level
	add	r6, r9, r9, asl #1	@, tmp252, D.37552, D.37552,
	add	lr, r2, r2, asl #1	@, tmp247, D.37557, D.37557,
	mov	ip, r6, asl #5	@ tmp253, tmp252,
	mov	r0, lr, asl #5	@ tmp248, tmp247,
	mov	r1, ip, asr #1	@ tmp257, tmp253,
	add	r6, r1, r0, lsr #1	@, ImgSlotLen, tmp257, tmp248,
	blt	.L406	@,
	mov	r0, sl	@, ChanID
	str	r2, [fp, #-52]	@,
	str	r3, [fp, #-48]	@,
	bl	VCTRL_GetChanWidth	@
	mov	r3, r0	@ ChanWidth,
	mov	r0, sl	@, ChanID
	str	r3, [fp, #-56]	@,
	bl	VCTRL_GetChanHeight	@
	sub	r1, fp, #56
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	cmn	r0, #1	@ ChanHeight,
	cmnne	r1, #1	@, ChanWidth,
	beq	.L437	@,
	add	r1, r1, #15	@ tmp266, ChanWidth,
	movw	lr, #2047	@ tmp269,
	bic	ip, r1, #15	@ ChanImgWidthInPixAln, tmp266,
	sub	r1, ip, #1	@ tmp268, ChanImgWidthInPixAln,
	cmp	r1, lr	@ tmp268, tmp269
	bls	.L408	@,
	sub	r1, ip, #2048	@ tmp270, ChanImgWidthInPixAln,
	sub	r1, r1, #1	@ tmp270, tmp270,
	cmp	r1, lr	@ tmp270, tmp269
	movls	lr, #32	@ Chanlevel,
	bls	.L410	@,
	sub	r1, ip, #4096	@ tmp273, ChanImgWidthInPixAln,
	sub	r1, r1, #1	@ tmp273, tmp273,
	cmp	r1, lr	@ tmp273, tmp269
	movls	lr, #48	@ Chanlevel,
	bls	.L410	@,
	sub	r1, ip, #6144	@ tmp276, ChanImgWidthInPixAln,
	sub	r1, r1, #1	@ tmp276, tmp276,
	cmp	r1, lr	@ tmp276, tmp269
	movls	lr, #64	@ Chanlevel,
	bls	.L410	@,
.L408:
	mov	lr, #16	@ Chanlevel,
.L410:
	add	r1, r0, #15	@ tmp279, ChanHeight,
	add	ip, ip, #255	@ tmp292, ChanImgWidthInPixAln,
	bic	r1, r1, #15	@ tmp281, tmp279,
	bic	r0, ip, #255	@ tmp293, tmp292,
	adds	ip, r1, #31	@ tmp282, tmp281,
	addmi	r1, r1, #62	@, tmp283, tmp281,
	movpl	r1, ip	@, tmp283, tmp282
	mov	r1, r1, asr #5	@ tmp285, tmp283,
	mul	ip, r1, r0	@ tmp294, tmp285, tmp293
	add	r1, r1, r1, asl #1	@, tmp288, tmp285, tmp285,
	mov	r1, r1, asl #5	@ tmp289, tmp288,
	mul	lr, lr, r1	@ tmp290, Chanlevel, tmp289
	add	r0, ip, ip, asl #1	@, tmp297, tmp294, tmp294,
	mov	r1, r0, asl #5	@ tmp298, tmp297,
	mov	ip, r1, asr #1	@ tmp302, tmp298,
	add	r0, ip, lr, lsr #1	@, tmp303, tmp302, tmp290,
	cmp	r6, r0	@ ImgSlotLen, tmp303
	bgt	.L438	@,
.L406:
	ldr	lr, [fp, #8]	@, FrameNum
	add	r0, r2, r9	@ tmp307, D.37557, D.37552
	cmp	lr, #0	@,
	mov	r2, r0, asl #5	@ tmp308, tmp307,
	streq	lr, [r8, #268]	@, <variable>.ValidFrameNum
	str	r2, [r8, #264]	@ tmp308, <variable>.ChromOffset
	beq	.L413	@,
	add	r1, r4, #1020	@ tmp310, MemAddr,
	rsb	r3, r3, r5	@ tmp314, PmvPoolSize, MemSize
	add	r9, r1, #3	@ tmp310, tmp310,
	mov	r1, r6	@, ImgSlotLen
	bic	ip, r9, #1020	@ tmp312, tmp310,
	ldr	r9, [fp, #8]	@ D.37614, FrameNum
	bic	sl, ip, #3	@ tmp312, tmp312,
	rsb	sl, r4, sl	@ Offset, MemAddr, tmp312
	cmp	r9, #64	@ D.37614,
	movge	r9, #64	@ D.37614,
	rsb	r0, sl, r3	@, Offset, tmp314
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ D.37614,
	movlt	r0, r9	@ D.37614, D.37614
	movge	r0, r0	@ D.37614,
	str	r0, [r8, #268]	@ D.37614, <variable>.ValidFrameNum
	cmp	r0, #0	@ D.37614,
	beq	.L413	@,
	ble	.L415	@,
	cmp	r0, #1	@ D.37614,
	add	r5, sl, r4	@ ivtmp.1510, Offset, MemAddr
	sub	lr, r0, #1	@ tmp331, D.37614,
	str	r5, [r8, #8]	@ ivtmp.1510, <variable>.FrameAddr
	and	ip, lr, #1	@ tmp333, tmp331,
	add	r2, r5, r6	@ ivtmp.1510, ivtmp.1510, ImgSlotLen
	mov	r1, #1	@ i.1527,
	add	r3, r8, #4	@ ivtmp.1514, pVdmMemArrange,
	ble	.L415	@,
	cmp	ip, #0	@ tmp333,
	beq	.L416	@,
	mov	r1, #2	@ i.1527,
	cmp	r0, r1	@ D.37614, i.1527
	str	r2, [r3, #8]	@ ivtmp.1510, <variable>.FrameAddr
	add	r2, r2, r6	@ ivtmp.1510, ivtmp.1510, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1514, ivtmp.1514,
	ble	.L415	@,
.L416:
	add	r1, r1, #2	@ i.1527, i.1527,
	add	ip, r3, #4	@ tmp335, ivtmp.1514,
	cmp	r0, r1	@ D.37614, i.1527
	add	r5, r2, r6	@ ivtmp.1510, ivtmp.1510, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1510, <variable>.FrameAddr
	add	r2, r5, r6	@ ivtmp.1510, ivtmp.1510, ImgSlotLen
	str	r5, [ip, #8]	@ ivtmp.1510, <variable>.FrameAddr
	add	r3, ip, #4	@ ivtmp.1514, tmp335,
	bgt	.L416	@,
.L415:
	mla	r0, r0, r6, sl	@ Offset.1528, D.37614, ImgSlotLen, Offset
	ldr	r5, [r8, #616]	@ D.37625, <variable>.ValidPMVNum
	cmp	r5, #0	@ D.37625,
	add	r2, r0, r4	@ MemAddr.1529, Offset.1528, MemAddr
	ble	.L417	@,
	mov	r1, #1	@ i,
	cmp	r1, r5	@ i, D.37625
	sub	r3, r5, #1	@ tmp326, D.37625,
	str	r2, [r8, #532]	@ MemAddr.1529, <variable>.PMVAddr
	and	ip, r3, r1	@ tmp328, tmp326,
	add	r2, r2, r7	@ ivtmp.1503, MemAddr.1529, PmvSlotLen
	add	r3, r8, #4	@ ivtmp.1507, pVdmMemArrange,
	bge	.L417	@,
	cmp	ip, #0	@ tmp328,
	beq	.L418	@,
	mov	r1, #2	@ i,
	cmp	r1, r5	@ i, D.37625
	str	r2, [r3, #532]	@ ivtmp.1503, <variable>.PMVAddr
	add	r2, r2, r7	@ ivtmp.1503, ivtmp.1503, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.1507, ivtmp.1507,
	bge	.L417	@,
.L418:
	add	r1, r1, #2	@ i, i,
	add	lr, r3, #4	@ tmp330, ivtmp.1507,
	cmp	r1, r5	@ i, D.37625
	add	r4, r2, r7	@ ivtmp.1503, ivtmp.1503, PmvSlotLen
	str	r2, [r3, #532]	@ ivtmp.1503, <variable>.PMVAddr
	add	r2, r4, r7	@ ivtmp.1503, ivtmp.1503, PmvSlotLen
	str	r4, [lr, #532]	@ ivtmp.1503, <variable>.PMVAddr
	add	r3, lr, #4	@ ivtmp.1507, tmp330,
	blt	.L418	@,
.L417:
	mla	r5, r5, r7, r0	@ tmp324, D.37625, PmvSlotLen, Offset.1528
	mov	r0, #0	@ D.37490,
	str	r5, [r8, #4]	@ tmp324, <variable>.TotalMemUsed
.L392:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L436:
	sub	r9, r6, #2048	@ tmp231, ImgWidthInPixAln,
	sub	ip, r9, #1	@ tmp231, tmp231,
	cmp	ip, r2	@ tmp231, tmp230
	movls	ip, #32	@ level,
	bls	.L404	@,
	sub	lr, r6, #4096	@ tmp234, ImgWidthInPixAln,
	sub	ip, lr, #1	@ tmp234, tmp234,
	cmp	ip, r2	@ tmp234, tmp230
	movls	ip, #48	@ level,
	bls	.L404	@,
	sub	r9, r6, #6144	@ tmp237, ImgWidthInPixAln,
	sub	r6, r9, #1	@ tmp237, tmp237,
	cmp	r6, r2	@ tmp237, tmp230
	movls	ip, #64	@ level,
	bls	.L404	@,
	b	.L402	@
.L433:
	cmp	r7, #31	@ Height,
	movgt	r2, #0	@, tmp185
	movle	r2, #1	@, tmp185
	sub	r1, r6, #32	@ tmp180, Width,
	movw	ip, #5600	@ tmp182,
	cmp	r1, ip	@ tmp180, tmp182
	movls	r0, r2	@, tmp188, tmp185
	orrhi	r0, r2, #1	@,, tmp188, tmp185
	cmp	r0, #0	@ tmp188,
	bne	.L394	@,
	cmp	r7, #4224	@ Height,
	ble	.L395	@,
.L394:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #307	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L413:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #428	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC38	@,
	movt	r3, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L438:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #414	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC37	@,
	movt	r3, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L396:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #311	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L432:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #297	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L435:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #342	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L434:
	mov	r0, r8	@, pVdmMemArrange
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #313	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
.L437:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37490,
	b	.L392	@
	.fnend
	.size	VDMHAL_V200R003MPW_ArrangeMem, .-VDMHAL_V200R003MPW_ArrangeMem
	.align	2
	.global	VDMHAL_V200R003MPW_OpenHAL
	.type	VDMHAL_V200R003MPW_OpenHAL, %function
VDMHAL_V200R003MPW_OpenHAL:
	.fnstart
.LFB1350:
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
	rsbs	r9, r0, #1	@ tmp183, MemBaseAddr
	movcc	r9, #0	@ tmp183
	cmp	r1, #655360	@ Size,
	orrlt	r9, r9, #1	@,, tmp186, tmp183
	mov	r6, r0	@ MemBaseAddr, MemBaseAddr
	cmp	r9, #0	@ tmp186,
	mov	r8, r1	@ Size, Size
	mov	r7, r2	@ VdhId, VdhId
	bne	.L461	@,
	cmp	r2, #1	@ VdhId,
	bhi	.L462	@,
	movw	r1, #1148	@ tmp192,
	movw	r5, #:lower16:g_HwMem	@ tmp402,
	mul	sl, r1, r2	@ tmp191, tmp192, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp402,
	add	r4, r5, sl	@ __p, tmp402, tmp191
	mov	r0, r4	@, __p
	bl	__memzero	@
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r5, sl]	@, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:-123592584	@,
	movt	r0, #:upper16:-123592584	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r5, sl]	@, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	mov	ip, r0	@ D.37365,
	mov	r3, r0	@, D.37365
	str	ip, [r4, #4]	@ D.37365, <variable>.pVdmResetVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:-121241600	@,
	movt	r0, #:upper16:-121241600	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #8]	@, <variable>.pBpdRegVirAddr
	movw	r0, #:lower16:-123592568	@,
	movt	r0, #:upper16:-123592568	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #8]	@, <variable>.pBpdRegVirAddr
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	mov	sl, r0	@ D.37372,
	mov	r3, r0	@, D.37372
	str	sl, [r4, #12]	@ D.37372, <variable>.pBpdResetVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	ip, r6, #1020	@ tmp234, MemBaseAddr,
	add	r3, ip, #3	@ tmp234, tmp234,
	add	sl, r8, r6	@ tmp249, Size, MemBaseAddr
	bic	r2, r3, #1020	@ D.37378, tmp234,
	mov	r3, r4	@ ivtmp.1564, __p
	bic	r2, r2, #3	@ D.37378, D.37378,
	mov	r1, #1024	@ tmp257,
	rsb	r0, r2, sl	@ tmp250, D.37378, tmp249
	str	r2, [r4, #16]	@ D.37378, <variable>.HALMemBaseAddr
	str	r0, [r4, #20]	@ tmp250, <variable>.HALMemSize
	str	r1, [r4, #24]	@ tmp257, <variable>.VahbStride
.L444:
	add	r0, r9, #1024	@ tmp403, ivtmp.1561,
	add	lr, r9, r2	@ tmp267, ivtmp.1561, D.37378
	add	r9, r9, #3072	@ ivtmp.1561, ivtmp.1561,
	add	r1, r3, #4	@ tmp404, ivtmp.1564,
	cmp	r9, #144384	@ ivtmp.1561,
	add	sl, r0, #1024	@ ivtmp.1561, tmp403,
	str	lr, [r3, #28]	@ tmp267, <variable>.MsgSlotAddr
	add	ip, sl, r2	@ tmp410, ivtmp.1561, D.37378
	add	lr, r0, r2	@ tmp407, tmp403, D.37378
	str	ip, [r1, #32]	@ tmp410, <variable>.MsgSlotAddr
	add	r3, r3, #12	@ ivtmp.1564, ivtmp.1564,
	str	lr, [r1, #28]	@ tmp407, <variable>.MsgSlotAddr
	bne	.L444	@,
	movw	lr, #:lower16:177151	@ D.37385,
	movt	lr, #:upper16:177151	@ D.37385,
	add	r1, r2, lr	@ D.37385, D.37378, D.37385
	movw	ip, #1148	@ tmp271,
	bic	r0, r1, #32512	@ PhyAddr.1565, D.37385,
	rsb	r2, r6, #4096	@ tmp356, MemBaseAddr,
	mla	r5, ip, r7, r5	@ tmp272, tmp271, VdhId, tmp402
	bic	r3, r0, #255	@ PhyAddr.1565, PhyAddr.1565,
	add	r1, r3, #299008	@ PhyAddr.1571, PhyAddr.1565,
	add	lr, r3, #83968	@ PhyAddr.1568, PhyAddr.1565,
	add	r0, r1, #52224	@ PhyAddr.1574, PhyAddr.1571,
	add	ip, r1, #19456	@ PhyAddr.1573, PhyAddr.1571,
	add	r2, r2, r0	@ D.37386, tmp356, PhyAddr.1574
	add	r6, r3, #5120	@ PhyAddr.1566, PhyAddr.1565,
	cmp	r8, r2	@ Size, D.37386
	mov	sl, #141	@ tmp274,
	str	r6, [r5, #1080]	@ PhyAddr.1566, <variable>.SedTopAddr
	add	r6, r3, #129024	@ PhyAddr.1569, PhyAddr.1565,
	str	sl, [r5, #1052]	@ tmp274, <variable>.ValidMsgSlotNum
	add	sl, r3, #38912	@ PhyAddr.1567, PhyAddr.1565,
	str	r6, [r5, #1096]	@ PhyAddr.1569, <variable>.DblkTopAddr
	add	r6, r1, #3072	@ PhyAddr.1572, PhyAddr.1571,
	str	sl, [r5, #1084]	@ PhyAddr.1567, <variable>.PmvTopAddr
	add	sl, r3, #196608	@ PhyAddr.1570, PhyAddr.1565,
	str	lr, [r5, #1092]	@ PhyAddr.1568, <variable>.ItransTopAddr
	str	sl, [r5, #1100]	@ PhyAddr.1570, <variable>.PpfdBufAddr
	movw	sl, #799	@ tmp325,
	str	r6, [r5, #1116]	@ PhyAddr.1572, <variable>.BitplaneInfoAddr
	str	sl, [r5, #1104]	@ tmp325, <variable>.PpfdBufLen
	str	ip, [r5, #1124]	@ PhyAddr.1573, <variable>.Vp8TabAddr
	str	r3, [r5, #1076]	@ PhyAddr.1565, <variable>.H264MnAddr
	str	lr, [r5, #1088]	@ PhyAddr.1568, <variable>.RcnTopAddr
	str	r1, [r5, #1112]	@ PhyAddr.1571, <variable>.IntensityConvTabAddr
	str	ip, [r5, #1128]	@ PhyAddr.1573, <variable>.DnrMbInfoAddr
	str	r0, [r5, #1120]	@ PhyAddr.1574, <variable>.Vp6TabAddr
	blt	.L445	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, __p
	bl	H264HAL_V200R003MPW_InitHal	@
	mov	r1, r7	@, VdhId
	subs	r6, r0, #0	@ D.37391,
	ldr	r0, [r5, #1060]	@, <variable>.MPEG2TabAddr
	mvnne	r6, #0	@, Ret,
	bl	MP2HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1064]	@, <variable>.MPEG4TabAddr
	mvnne	r6, #0	@, Ret,
	bl	MP4HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1068]	@, <variable>.AVSTabAddr
	mvnne	r6, #0	@, Ret,
	bl	AVSHAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	mvnne	r6, #0	@, Ret,
	bl	RV8HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	mvnne	r6, #0	@, Ret,
	bl	RV9HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1072]	@, <variable>.VC1TabAddr
	mvnne	r6, #0	@, Ret,
	bl	VC1HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1120]	@, <variable>.Vp6TabAddr
	mvnne	r6, #0	@, Ret,
	bl	VP6HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1124]	@, <variable>.Vp8TabAddr
	moveq	r5, r6	@, Ret, Ret
	mvnne	r5, #0	@, Ret,
	bl	VP8HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	mov	r0, r4	@, __p
	moveq	r4, r5	@, Ret, Ret
	mvnne	r4, #0	@, Ret,
	bl	H264HAL_V200R003MPW_InitHal	@
	cmp	r0, #0	@,
	moveq	r0, r4	@, Ret, Ret
	mvnne	r0, #0	@, Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L462:
	mov	r0, r9	@, tmp186
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L445:
	mov	r3, r8	@, Size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L461:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #88	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC39	@,
	movt	r3, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R003MPW_OpenHAL, .-VDMHAL_V200R003MPW_OpenHAL
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDM register not mapped yet!\012\000"
	.space	2
.LC1:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"VDM register not mapped yet!\000"
	.space	3
.LC3:
	.ascii	"WriteMsgSlot error!\012\000"
	.space	3
.LC4:
	.ascii	"ReadUpMsgSlot error!\012\000"
	.space	2
.LC5:
	.ascii	"BigTile1d_y\000"
.LC6:
	.ascii	"failed mem_allocMemBlock BigTile_yuv save!\012\000"
.LC7:
	.ascii	"BigTile1d_uv\000"
	.space	3
.LC8:
	.ascii	"Mem addr is 0\000"
	.space	2
.LC9:
	.ascii	"image size out of range\000"
.LC10:
	.ascii	"'pVdmMemArrange' is NULL\000"
	.space	3
.LC11:
	.ascii	"MemSize not enough for pmv slot\000"
.LC12:
	.ascii	"VdhId is wrong! VDMHAL_V300_CfgRpReg\012\000"
	.space	2
.LC13:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC14:
	.ascii	"can not map repair msg virtual address!\000"
.LC15:
	.ascii	"ValidGroupNum=%d out of range!\012\000"
.LC16:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_PrepareRepair\012"
	.ascii	"\000"
	.space	2
.LC17:
	.ascii	"vdm register virtual address not mapped, VDMHAL_V20"
	.ascii	"0R003MPW_PrepareRepair failed!\012\000"
	.space	1
.LC18:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC19:
	.ascii	"FIRST_REPAIR Parameter Error!\012\000"
	.space	1
.LC20:
	.ascii	"SECOND_REPAIR Parameter Error!\012\000"
.LC21:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_BackupInfo\012\000"
	.space	1
.LC22:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_CheckInt\012\000"
	.space	3
.LC23:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_EnableInt\012\000"
	.space	2
.LC24:
	.ascii	"VdhId is wrong! VDMHAL_V200_MaskInt\012\000"
	.space	3
.LC25:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_ClearIntState\012"
	.ascii	"\000"
	.space	2
.LC26:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_ResetVdm\012\000"
	.space	3
.LC27:
	.ascii	"VDMHAL_V200R003MPW_ResetVdm: map vdm register fail,"
	.ascii	" vir(reg,reset_reg) = (%p,%p)\012\000"
	.space	2
.LC28:
	.ascii	"VDH: %d VDMHAL_V200R003MPW_ResetVdm ERROR!!!\012\000"
	.space	2
.LC29:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_CloseHAL\012\000"
	.space	3
.LC30:
	.ascii	"'pDecReport' is NULL\000"
	.space	3
.LC31:
	.ascii	"can NOT map vir addr for up-msg\000"
.LC32:
	.ascii	"\012***** UpMsg DecSliceNum=%d\012\000"
	.space	3
.LC33:
	.ascii	"\012***** Up Msg (phy addr: %#8x) *****\012\000"
	.space	2
.LC34:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC35:
	.ascii	"\012***** Up Msg print finished *****\012\000"
.LC36:
	.ascii	"VDMHAL_V200R003MPW_ArrangeMem get ChanWidth/ChanHei"
	.ascii	"ght failed!\012\000"
.LC37:
	.ascii	"ImgSlotLen > ChanSlotLen\000"
	.space	3
.LC38:
	.ascii	"cann't allocate img slot\000"
	.space	3
.LC39:
	.ascii	"VDMHAL_V200R003MPW_OpenHAL: input error!\000"
	.space	3
.LC40:
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_OpenHAL\012\000"
.LC41:
	.ascii	"g_VdmRegVirAddr, g_VdmResetVirAddr = %p, %p\012\000"
	.space	3
.LC42:
	.ascii	"BPDRegVirAddr, BPDResetVirAddr = %p, %p\012\000"
	.space	3
.LC43:
	.ascii	"mem is enough!\012\000"
.LC44:
	.ascii	"!!!!!! HAL memory not enouph! need %d, have %d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
