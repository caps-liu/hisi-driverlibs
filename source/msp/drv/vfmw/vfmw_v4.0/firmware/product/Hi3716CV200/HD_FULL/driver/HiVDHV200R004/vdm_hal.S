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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.o -O2
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
	.global	VDMHAL_V200R004_GetHalMemSize
	.type	VDMHAL_V200R004_GetHalMemSize, %function
VDMHAL_V200R004_GetHalMemSize:
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
	mov	r0, #655360	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_GetHalMemSize, .-VDMHAL_V200R004_GetHalMemSize
	.align	2
	.global	VDMHAL_V200R004_MakeRpMsg
	.type	VDMHAL_V200R004_MakeRpMsg, %function
VDMHAL_V200R004_MakeRpMsg:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpMsg, .-VDMHAL_V200R004_MakeRpMsg
	.align	2
	.global	VDMHAL_V200R004_MakeRpReg
	.type	VDMHAL_V200R004_MakeRpReg, %function
VDMHAL_V200R004_MakeRpReg:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpReg, .-VDMHAL_V200R004_MakeRpReg
	.align	2
	.global	VDMHAL_V200R004_GetCharacter
	.type	VDMHAL_V200R004_GetCharacter, %function
VDMHAL_V200R004_GetCharacter:
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
	.size	VDMHAL_V200R004_GetCharacter, .-VDMHAL_V200R004_GetCharacter
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
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
	movw	r1, #1148	@ tmp141,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	ldr	r4, [r2, r3]	@ D.40976, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.40976,
	beq	.L14	@,
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.40980, Data32,
	movne	r0, #1	@ D.40980
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L14:
	mov	r0, r4	@, D.40976
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.40980, D.40976
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmRun, .-VDMHAL_V200R004_IsVdmRun
	.align	2
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
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
	movw	r1, #1148	@ tmp142,
	mul	r2, r1, r0	@ tmp141, tmp142, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp140,
	movt	r3, #:upper16:g_HwMem	@ tmp140,
	ldr	r0, [r2, r3]	@ D.40962, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ D.40962,
	beq	.L19	@,
	ldr	r0, [r0, #28]	@ Data32.631,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.631,,
	ldmfd	sp, {fp, sp, pc}	@
.L19:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1203	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_WriteMsgSlot
	.type	VDMHAL_V200R004_WriteMsgSlot, %function
VDMHAL_V200R004_WriteMsgSlot:
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
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	beq	.L21	@,
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L21	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.41151, tmp151
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L21:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41151,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_WriteMsgSlot, .-VDMHAL_V200R004_WriteMsgSlot
	.align	2
	.global	VDMHAL_V200R004_ReadMsgSlot
	.type	VDMHAL_V200R004_ReadMsgSlot, %function
VDMHAL_V200R004_ReadMsgSlot:
	.fnstart
.LFB1374:
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
	beq	.L26	@,
	cmp	r2, #512	@ upmsg_size,
	bhi	.L26	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.41134, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L26:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41134,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_ReadMsgSlot, .-VDMHAL_V200R004_ReadMsgSlot
	.align	2
	.global	VDMHAL_V200R004_WriteBigTitle1DYuv
	.type	VDMHAL_V200R004_WriteBigTitle1DYuv, %function
VDMHAL_V200R004_WriteBigTitle1DYuv:
	.fnstart
.LFB1385:
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
	ubfx	r8, r3, #29, #2	@ PicStructure.822, Height,,
	cmp	r8, #1	@ PicStructure.822,
	mov	r6, r3	@ Height, Height
	str	r0, [fp, #-92]	@ fpYuv, %sfp
	mov	r4, r1	@ Yaddress, Yaddress
	mov	r7, r2	@ Width, Width
	moveq	r8, #0	@ PicStructure,
	beq	.L32	@,
	cmp	r8, #2	@ PicStructure.822,
	moveq	r8, #1	@ PicStructure,
	movne	r8, #2	@ PicStructure,
.L32:
	ldr	r1, [fp, #-92]	@, %sfp
	cmp	r1, #0	@,
	beq	.L68	@,
	sub	r3, fp, #56	@ tmp241,,
	sub	r2, fp, #68	@,,
	add	lr, r3, #4	@ tmp397, tmp241,
	add	r5, r2, #4	@ tmp395,,
	mov	ip, #0	@ tmp238,
	movw	r0, #:lower16:.LC5	@,
	str	ip, [r5], #4	@ tmp238, MemRecord_ul
	mov	r1, ip	@, tmp238
	str	ip, [lr], #4	@ tmp238, MemRecord_y
	movt	r0, #:upper16:.LC5	@,
	str	ip, [r5, #0]	@ tmp238, MemRecord_ul
	mov	r2, #4194304	@,
	str	ip, [lr, #0]	@ tmp238, MemRecord_y
	str	ip, [fp, #-68]	@ tmp238, MemRecord_ul
	str	ip, [fp, #-56]	@ tmp238, MemRecord_y
	str	ip, [sp, #0]	@ tmp238,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L130	@,
.L35:
	mov	r9, #0	@ tmp251,
	movw	r0, #:lower16:.LC7	@,
	mov	r1, r9	@, tmp251
	movt	r0, #:upper16:.LC7	@,
	mov	r2, #4194304	@,
	sub	r3, fp, #68	@,,
	str	r9, [sp, #0]	@ tmp251,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L131	@,
.L36:
	add	r5, r7, #15	@ tmp253, Width,
	add	r2, r6, #15	@ tmp255, Height,
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp253,
	bic	lr, r2, #15	@, tmp255,
	add	ip, r5, #255	@ tmp257, ImgWidthInPixAln,
	ldr	r9, [fp, #-64]	@, MemRecord_ul.VirAddr
	bic	r3, ip, #255	@ tmp258, tmp257,
	str	lr, [fp, #-80]	@, %sfp
	ldr	r1, [fp, #-52]	@, MemRecord_y.VirAddr
	add	r2, r9, #2097152	@,,
	mov	r0, r3, asl #4	@, tmp258,
	str	r0, [fp, #-84]	@, %sfp
	ldr	lr, [fp, #-84]	@, %sfp
	mov	r7, r7, lsr #1	@, Width,
	str	r2, [fp, #-108]	@, %sfp
	mov	r6, r6, lsr #1	@, Height,
	cmp	lr, #0	@,
	ldr	r2, [fp, #-80]	@, %sfp
	add	ip, lr, #15	@ tmp261,,
	str	r1, [fp, #-88]	@, %sfp
	movge	ip, lr	@ Stride,
	adds	r1, r2, #31	@ tmp263,,
	addmi	r1, r2, #62	@, tmp265,,
	mov	r3, ip, asr #4	@ tmp262, Stride,
	cmp	r8, #0	@ PicStructure,
	str	r9, [fp, #-100]	@, %sfp
	mov	r0, r1, asr #5	@ tmp267, tmp265,
	str	r7, [fp, #-112]	@, %sfp
	str	r6, [fp, #-96]	@, %sfp
	mla	r9, r0, r3, r4	@ Caddress, tmp267, tmp262, Yaddress
	bne	.L37	@,
	cmp	r2, #0	@,
	beq	.L38	@,
	ldr	sl, [fp, #-88]	@, %sfp
	str	r9, [fp, #-104]	@ Caddress, %sfp
	mov	r9, r8	@ i, i
	str	sl, [fp, #-72]	@, %sfp
	str	sl, [fp, #-76]	@, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L39:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L42	@,
	ldr	r7, [fp, #-84]	@, %sfp
	mov	r6, r9, lsr #4	@ pretmp.728, i,
	and	r3, r9, #15	@ pretmp.871, i,
	mov	r2, #256	@,
	ldr	r0, [fp, #-76]	@, %sfp
	sub	r5, sl, #1	@ tmp368, ImgWidthInPixAln,
	mul	r8, r7, r6	@ tmp278,, pretmp.728
	ubfx	r7, r5, #8, #1	@ tmp369, tmp368,,
	mla	r8, r3, r2, r8	@ pretmp.729, pretmp.871,, tmp278
	mov	r5, r2	@ j,
	add	r6, r0, r2	@ ivtmp.778,,
	add	r1, r4, r8	@, Yaddress, pretmp.729
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bls	.L42	@,
	cmp	r7, #0	@ tmp369,
	beq	.L40	@,
	add	lr, r8, #4096	@ tmp481, pretmp.729,
	mov	r2, r5	@, j
	mov	r0, r6	@, ivtmp.778
	add	r1, r4, lr	@, Yaddress, tmp481
	bl	memcpy	@
	mov	r5, #512	@ j,
	cmp	sl, r5	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.778, ivtmp.778,
	bls	.L42	@,
.L40:
	mov	ip, r5, lsr #8	@ tmp269, j,
	add	r7, r5, #256	@ tmp370, j,
	mov	r2, #256	@,
	add	r5, r7, r2	@ j, tmp370,
	add	r1, r8, ip, asl #12	@, tmp271, pretmp.729, tmp269,
	mov	r7, r7, lsr #8	@ tmp400, tmp370,
	mov	r0, r6	@, ivtmp.778
	add	r1, r4, r1	@, Yaddress, tmp271
	add	r6, r6, r2	@ tmp371, ivtmp.778,
	bl	memcpy	@
	add	r3, r8, r7, asl #12	@, tmp402, pretmp.729, tmp400,
	mov	r2, #256	@,
	mov	r0, r6	@, tmp371
	add	r1, r4, r3	@, Yaddress, tmp402
	add	r6, r6, r2	@ ivtmp.778, tmp371,
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bhi	.L40	@,
.L42:
	ldr	r0, [fp, #-80]	@, %sfp
	add	r9, r9, #1	@ i, i,
	ldr	r2, [fp, #-76]	@, %sfp
	cmp	r0, r9	@, i
	add	lr, r2, sl	@,, ImgWidthInPixAln
	str	lr, [fp, #-76]	@, %sfp
	bhi	.L39	@,
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
	ldr	r0, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	mul	r1, sl, ip	@, ImgWidthInPixAln,
	ldr	r9, [fp, #-104]	@ Caddress, %sfp
	bl	klib_fwrite	@
	ldr	r1, [fp, #-80]	@, %sfp
	movs	r4, r1, lsr #1	@,,
	str	r4, [fp, #-76]	@, %sfp
	beq	.L43	@,
	ldr	r0, [fp, #-84]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	sl, r0, asr #1	@,,
	str	sl, [fp, #-80]	@, %sfp
	mov	sl, #0	@ i.834,
.L44:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L46	@,
	ldr	lr, [fp, #-80]	@, %sfp
	mov	r6, sl, lsr #3	@ pretmp.864, i.834,
	and	r3, sl, #7	@ pretmp.873, i.834,
	mov	r2, #256	@,
	ldr	r0, [fp, #-72]	@, %sfp
	sub	r5, r8, #1	@ tmp362, ImgWidthInPixAln,
	mul	r7, lr, r6	@ tmp292,, pretmp.864
	mov	r4, r2	@ j.833,
	mla	r7, r3, r2, r7	@ pretmp.733, pretmp.873,, tmp292
	ubfx	r6, r5, #8, #1	@ tmp363, tmp362,,
	add	r5, r0, r2	@ ivtmp.829,,
	add	r1, r9, r7	@, Caddress, pretmp.733
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.833
	bls	.L46	@,
	cmp	r6, #0	@ tmp363,
	beq	.L45	@,
	add	r0, r7, #2048	@ tmp477, pretmp.733,
	mov	r2, r4	@, j.833
	add	r1, r9, r0	@, Caddress, tmp477
	mov	r0, r5	@, ivtmp.829
	bl	memcpy	@
	mov	r4, #512	@ j.833,
	cmp	r8, r4	@ ImgWidthInPixAln, j.833
	add	r5, r5, #256	@ ivtmp.829, ivtmp.829,
	bls	.L46	@,
.L45:
	mov	r1, r4, lsr #8	@ tmp283, j.833,
	add	r6, r4, #256	@ tmp364, j.833,
	mov	r2, #256	@,
	add	r4, r6, r2	@ j.833, tmp364,
	add	lr, r7, r1, asl #11	@, tmp285, pretmp.733, tmp283,
	mov	r6, r6, lsr #8	@ tmp412, tmp364,
	add	r1, r9, lr	@, Caddress, tmp285
	mov	r0, r5	@, ivtmp.829
	add	r5, r5, r2	@ tmp365, ivtmp.829,
	bl	memcpy	@
	add	r3, r7, r6, asl #11	@, tmp414, pretmp.733, tmp412,
	mov	r2, #256	@,
	mov	r0, r5	@, tmp365
	add	r1, r9, r3	@, Caddress, tmp414
	add	r5, r5, r2	@ ivtmp.829, tmp365,
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.833
	bhi	.L45	@,
.L46:
	ldr	r2, [fp, #-76]	@, %sfp
	add	sl, sl, #1	@ i.834, i.834,
	ldr	ip, [fp, #-72]	@, %sfp
	cmp	sl, r2	@ i.834,
	add	r4, ip, r8	@,, ImgWidthInPixAln
	str	r4, [fp, #-72]	@, %sfp
	bcc	.L44	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L43:
	ldr	r0, [fp, #4]	@, chroma_idc
	cmp	r0, #1	@,
	beq	.L132	@,
	ldr	r2, [fp, #4]	@, chroma_idc
	cmp	r2, #0	@,
	beq	.L133	@,
.L48:
	ldr	r0, [fp, #-112]	@, %sfp
	ldr	lr, [fp, #-96]	@, %sfp
	mul	r4, r0, lr	@ D.41777,,
.L129:
	ldr	r2, [fp, #-92]	@, %sfp
	mov	r1, r4	@, temp.860
	ldr	r0, [fp, #-100]	@, %sfp
	bl	klib_fwrite	@
	ldr	r2, [fp, #-92]	@, %sfp
	mov	r1, r4	@, temp.860
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
.L68:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L37:
	ldr	r1, [fp, #-80]	@, %sfp
	subs	r8, r8, #1	@, PicStructure,
	movne	r8, #1	@
	str	r8, [fp, #-104]	@, %sfp
	cmp	r1, r8	@,
	bls	.L53	@,
	str	r9, [fp, #-72]	@ Caddress, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	r9, r8	@ i.844, i.844
.L54:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L56	@,
	and	r6, r9, #15	@ pretmp.870, i.844,
	ldr	r1, [fp, #-84]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	mov	r3, r9, lsr #4	@ pretmp.724, i.844,
	mov	r8, r6, asl #8	@ tmp308, pretmp.870,
	mov	r0, r9, lsr #1	@ pretmp.880, i.844,
	mov	r2, #256	@,
	sub	ip, sl, #1	@ tmp391, ImgWidthInPixAln,
	mla	r8, r1, r3, r8	@ pretmp.725,, pretmp.724, tmp308
	mov	r5, r2	@ j.843,
	mla	r0, sl, r0, r7	@ ivtmp.817, ImgWidthInPixAln, pretmp.880,
	ubfx	r7, ip, #8, #1	@ tmp392, tmp391,,
	add	r1, r4, r8	@, Yaddress, pretmp.725
	add	r6, r0, r2	@ ivtmp.817, ivtmp.817,
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.843
	bls	.L56	@,
	cmp	r7, #0	@ tmp392,
	beq	.L55	@,
	add	ip, r8, #4096	@ tmp492, pretmp.725,
	mov	r2, r5	@, j.843
	mov	r0, r6	@, ivtmp.817
	add	r1, r4, ip	@, Yaddress, tmp492
	bl	memcpy	@
	mov	r5, #512	@ j.843,
	cmp	sl, r5	@ ImgWidthInPixAln, j.843
	add	r6, r6, #256	@ ivtmp.817, ivtmp.817,
	bls	.L56	@,
.L55:
	mov	lr, r5, lsr #8	@ tmp299, j.843,
	add	r7, r5, #256	@ tmp393, j.843,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.817
	add	r5, r8, lr, asl #12	@, tmp301, pretmp.725, tmp299,
	add	r6, r6, r2	@ tmp394, ivtmp.817,
	add	r1, r4, r5	@, Yaddress, tmp301
	add	r5, r7, r2	@ j.843, tmp393,
	mov	r7, r7, lsr #8	@ tmp436, tmp393,
	bl	memcpy	@
	mov	r0, r6	@, tmp394
	mov	r2, #256	@,
	add	ip, r8, r7, asl #12	@, tmp438, pretmp.725, tmp436,
	add	r6, r6, r2	@ ivtmp.817, tmp394,
	add	r1, r4, ip	@, Yaddress, tmp438
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.843
	bhi	.L55	@,
.L56:
	ldr	r2, [fp, #-80]	@, %sfp
	add	r9, r9, #2	@ i.844, i.844,
	cmp	r2, r9	@, i.844
	bhi	.L54	@,
	ldr	r9, [fp, #-72]	@ Caddress, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
.L53:
	ldr	r1, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	ldr	r0, [fp, #-88]	@, %sfp
	mul	lr, r5, r1	@ tmp310, ImgWidthInPixAln,
	mov	r1, lr, lsr #1	@, tmp310,
	bl	klib_fwrite	@
	ldr	r2, [fp, #-80]	@, %sfp
	movs	r4, r2, lsr #1	@,,
	str	r4, [fp, #-76]	@, %sfp
	beq	.L57	@,
	ldr	sl, [fp, #-88]	@, %sfp
	ldr	r3, [fp, #-84]	@, %sfp
	str	sl, [fp, #-72]	@, %sfp
	mov	sl, #0	@ i.851,
	mov	r8, r3, asr #1	@,,
	str	r8, [fp, #-80]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L58:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L60	@,
	ldr	r6, [fp, #-80]	@, %sfp
	mov	r5, sl, lsr #3	@ pretmp.865, i.851,
	and	r3, sl, #7	@ pretmp.722, i.851,
	mov	r2, #256	@,
	ldr	r0, [fp, #-72]	@, %sfp
	sub	ip, r8, #1	@ tmp385, ImgWidthInPixAln,
	mul	r7, r6, r5	@ tmp324,, pretmp.865
	mov	r4, r2	@ j.850,
	mla	r7, r3, r2, r7	@ pretmp.723, pretmp.722,, tmp324
	ubfx	r6, ip, #8, #1	@ tmp386, tmp385,,
	add	r5, r0, r2	@ ivtmp.855,,
	add	r1, r9, r7	@, Caddress, pretmp.723
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.850
	bls	.L60	@,
	cmp	r6, #0	@ tmp386,
	beq	.L59	@,
	add	r3, r7, #2048	@ tmp488, pretmp.723,
	mov	r2, r4	@, j.850
	mov	r0, r5	@, ivtmp.855
	add	r1, r9, r3	@, Caddress, tmp488
	bl	memcpy	@
	mov	r4, #512	@ j.850,
	cmp	r8, r4	@ ImgWidthInPixAln, j.850
	add	r5, r5, #256	@ ivtmp.855, ivtmp.855,
	bls	.L60	@,
.L59:
	mov	lr, r4, lsr #8	@ tmp315, j.850,
	add	r6, r4, #256	@ tmp388, j.850,
	mov	r2, #256	@,
	mov	r0, r5	@, ivtmp.855
	add	r4, r7, lr, asl #11	@, tmp317, pretmp.723, tmp315,
	add	r5, r5, r2	@ tmp387, ivtmp.855,
	add	r1, r9, r4	@, Caddress, tmp317
	add	r4, r6, r2	@ j.850, tmp388,
	mov	r6, r6, lsr #8	@ tmp448, tmp388,
	bl	memcpy	@
	mov	r0, r5	@, tmp387
	mov	r2, #256	@,
	add	ip, r7, r6, asl #11	@, tmp450, pretmp.723, tmp448,
	add	r5, r5, r2	@ ivtmp.855, tmp387,
	add	r1, r9, ip	@, Caddress, tmp450
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.850
	bhi	.L59	@,
.L60:
	ldr	r0, [fp, #-76]	@, %sfp
	add	sl, sl, #1	@ i.851, i.851,
	ldr	r1, [fp, #-72]	@, %sfp
	cmp	sl, r0	@ i.851,
	add	r2, r1, r8	@,, ImgWidthInPixAln
	str	r2, [fp, #-72]	@, %sfp
	bcc	.L58	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L57:
	ldr	r4, [fp, #4]	@, chroma_idc
	cmp	r4, #1	@,
	beq	.L134	@,
	ldr	r0, [fp, #4]	@, chroma_idc
	cmp	r0, #0	@,
	bne	.L62	@,
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-104]	@, %sfp
	cmp	ip, r1	@,
	bls	.L66	@,
	add	r3, r1, #2	@ i.838,,
	mvn	r4, r1	@ tmp379,
	ldr	r1, [fp, #-96]	@, %sfp
	cmp	r1, r3	@, i.838
	add	lr, r4, r1	@ tmp380, tmp379,
	ubfx	r2, lr, #1, #1	@ tmp381, tmp380,,
	bls	.L66	@,
	cmp	r2, #0	@ tmp381,
	beq	.L124	@,
	ldr	r2, [fp, #-96]	@, %sfp
	add	r3, r3, #2	@ i.838, i.838,
	cmp	r2, r3	@, i.838
	bls	.L66	@,
.L124:
	ldr	r2, [fp, #-96]	@ chrom_height, %sfp
.L69:
	add	r3, r3, #4	@ i.838, i.838,
	cmp	r2, r3	@ chrom_height, i.838
	bhi	.L69	@,
.L66:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [fp, #-108]	@, %sfp
	bl	memset	@
	ldr	r0, [fp, #-100]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
.L62:
	ldr	r2, [fp, #-112]	@, %sfp
	ldr	r3, [fp, #-96]	@, %sfp
	mul	r4, r2, r3	@ temp.860,,
	b	.L129	@
.L131:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L36	@
.L130:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L35	@
.L134:
	ldr	lr, [fp, #-96]	@, %sfp
	cmp	lr, #0	@,
	beq	.L62	@,
	ldr	r2, [fp, #-104]	@, %sfp
	mov	ip, #0	@ i.858,
	ldr	r1, [fp, #-88]	@, %sfp
	ldr	r7, [fp, #-100]	@ ul, %sfp
	ldr	lr, [fp, #-112]	@ chrom_width, %sfp
	mla	r0, r5, r2, r1	@ tmp.852, ImgWidthInPixAln,,
	mov	r5, r5, asl #1	@ D.41795, ImgWidthInPixAln,
.L63:
	cmp	lr, #0	@ chrom_width,
	beq	.L65	@,
	mov	r2, ip, lsr #1	@ pretmp.877, i.858,
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ tmp468,* tmp.852
	mov	r1, #1	@ j.857,
	cmp	lr, r1	@ chrom_width, j.857
	mul	r6, lr, r2	@ tmp331, chrom_width, pretmp.877
	sub	r9, lr, #1	@ tmp372, chrom_width,
	and	r9, r9, r1	@ tmp374, tmp372,
	add	r3, r0, #2	@ ivtmp.785, tmp.852,
	add	r4, r7, r6	@ ivtmp.788, ul, tmp331
	add	r8, r4, #2097152	@ tmp467, ivtmp.788,
	add	r2, r4, r1	@ ivtmp.788, ivtmp.788,
	strb	sl, [r8, #0]	@ tmp468,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp469,
	strb	r8, [r7, r6]	@ tmp469,
	bls	.L65	@,
	cmp	r9, #0	@ tmp374,
	beq	.L64	@,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp484,* ivtmp.785
	add	r6, r2, #2097152	@ tmp483, ivtmp.788,
	mov	r1, #2	@ j.857,
	cmp	lr, r1	@ chrom_width, j.857
	add	r2, r2, #1	@ ivtmp.788, ivtmp.788,
	strb	r8, [r6, #0]	@ tmp484,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp485,
	add	r3, r3, r1	@ ivtmp.785, ivtmp.785,
	strb	r6, [r4, #1]	@ tmp485,
	bls	.L65	@,
.L64:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp327,* ivtmp.785
	add	r8, r2, #2097152	@ tmp326, ivtmp.788,
	mov	r4, r2	@ tmp377, ivtmp.788
	add	r6, r3, #2	@ tmp376, ivtmp.785,
	add	r1, r1, #2	@ j.857, j.857,
	strb	sl, [r8, #0]	@ tmp327,
	cmp	lr, r1	@ chrom_width, j.857
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp329,
	strb	sl, [r4], #1	@ tmp329,
	add	r8, r4, #2097152	@ tmp461, tmp377,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp462,
	add	r3, r6, #2	@ ivtmp.785, tmp376,
	strb	sl, [r8, #0]	@ tmp462,
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ tmp463,
	strb	r6, [r2, #1]	@ tmp463,
	add	r2, r4, #1	@ ivtmp.788, tmp377,
	bhi	.L64	@,
.L65:
	ldr	r3, [fp, #-96]	@, %sfp
	add	ip, ip, #2	@ i.858, i.858,
	cmp	r3, ip	@, i.858
	bls	.L62	@,
	add	r0, r0, r5	@ tmp.852, tmp.852, D.41795
	b	.L63	@
.L132:
	ldr	r1, [fp, #-96]	@, %sfp
	cmp	r1, #0	@,
	beq	.L48	@,
	ldr	r6, [fp, #-88]	@ tmp, %sfp
	mov	r8, #0	@ i.837,
	ldr	r7, [fp, #-100]	@ ivtmp.835, %sfp
	mov	r9, r1	@ chrom_height,
	ldr	lr, [fp, #-112]	@ chrom_width, %sfp
.L49:
	cmp	lr, #0	@ chrom_width,
	beq	.L51	@,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ tmp432,* tmp
	add	r4, r7, #2097152	@ tmp431, ivtmp.835,
	mov	r0, #1	@ j.836,
	cmp	lr, r0	@ chrom_width, j.836
	sub	r3, lr, #1	@ tmp354, chrom_width,
	mov	r2, r7	@ ivtmp.750, ivtmp.835
	strb	ip, [r4, #0]	@ tmp432,
	and	ip, r3, r0	@ tmp356, tmp354,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@ tmp433,
	add	r3, r6, #2	@ ivtmp.747, tmp,
	strb	r1, [r2], #1	@ tmp433,
	bls	.L51	@,
	cmp	ip, #0	@ tmp356,
	beq	.L50	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp473,* ivtmp.747
	add	r4, r2, #2097152	@ tmp472, ivtmp.750,
	mov	r0, #2	@ j.836,
	cmp	lr, r0	@ chrom_width, j.836
	strb	r1, [r4, #0]	@ tmp473,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp474,
	add	r3, r3, r0	@ ivtmp.747, ivtmp.747,
	strb	ip, [r2], #1	@ tmp474,
	bls	.L51	@,
.L50:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp294,* ivtmp.747
	add	r4, r2, #2097152	@ tmp293, ivtmp.750,
	mov	r1, r2	@ tmp359, ivtmp.750
	add	ip, r3, #2	@ tmp358, ivtmp.747,
	add	r0, r0, #2	@ j.836, j.836,
	strb	sl, [r4, #0]	@ tmp294,
	cmp	lr, r0	@ chrom_width, j.836
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp296,
	strb	sl, [r1], #1	@ tmp296,
	add	r4, r1, #2097152	@ tmp425, tmp359,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp426,
	add	r3, ip, #2	@ ivtmp.747, tmp358,
	strb	sl, [r4, #0]	@ tmp426,
	ldrb	r4, [ip, #1]	@ zero_extendqisi2	@ tmp427,
	strb	r4, [r2, #1]	@ tmp427,
	add	r2, r1, #1	@ ivtmp.750, tmp359,
	bhi	.L50	@,
.L51:
	add	r8, r8, #1	@ i.837, i.837,
	add	r7, r7, lr	@ ivtmp.835, ivtmp.835, chrom_width
	cmp	r9, r8	@ chrom_height, i.837
	bls	.L48	@,
	add	r6, r6, r5	@ tmp, tmp, ImgWidthInPixAln
	b	.L49	@
.L133:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [fp, #-108]	@, %sfp
	bl	memset	@
	ldr	r0, [fp, #-100]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L48	@
.L38:
	mov	r1, r8	@, PicStructure
	ldr	r0, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	bl	klib_fwrite	@
	b	.L43	@
	.fnend
	.size	VDMHAL_V200R004_WriteBigTitle1DYuv, .-VDMHAL_V200R004_WriteBigTitle1DYuv
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V200R004_ArrangeMem_BTL
	.type	VDMHAL_V200R004_ArrangeMem_BTL, %function
VDMHAL_V200R004_ArrangeMem_BTL:
	.fnstart
.LFB1363:
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
	beq	.L196	@,
	ldr	r3, [fp, #16]	@ UserDec, UserDec
	cmp	r3, #1	@ UserDec,
	beq	.L197	@,
	cmp	r6, #31	@ Height,
	movgt	ip, #0	@, tmp237
	movle	ip, #1	@, tmp237
	sub	r0, r2, #32	@ tmp232, Width,
	movw	r3, #8160	@ tmp234,
	cmp	r0, r3	@ tmp232, tmp234
	movls	lr, ip	@, tmp240, tmp237
	orrhi	lr, ip, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L141	@,
	cmp	r6, #8192	@ Height,
	bgt	.L141	@,
.L140:
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L198	@,
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #628	@,
	ldr	sl, [fp, #4]	@ PmvNum, PmvNum
	bl	__memzero	@
	add	r1, r6, #15	@ tmp247, Height,
	add	r0, r5, #15	@ D.40646, Width,
	movw	r2, #:lower16:g_not_direct_8x8_inference_flag	@ tmp255,
	movt	r2, #:upper16:g_not_direct_8x8_inference_flag	@ tmp255,
	mov	r3, r1, asr #4	@ ImgHeightInMb, tmp247,
	mov	r1, r0, asr #4	@ ImgWidthInMb, D.40646,
	ldrb	r6, [r2, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	sl, #20	@ PmvNum,
	movge	sl, #20	@ PmvNum.943,
	mul	r2, r1, r3	@ tmp257, ImgWidthInMb, ImgHeightInMb
	cmp	r3, #36	@ ImgHeightInMb,
	cmple	r1, #45	@, ImgWidthInMb,
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	r6, #1	@ g_not_direct_8x8_inference_flag,
	moveq	ip, #64	@ ColMbSize,
	mul	r2, ip, r2	@ tmp258, ColMbSize, tmp257
	ldr	ip, [fp, #-52]	@, %sfp
	add	r6, r2, #127	@ tmp259, tmp258,
	bic	r6, r6, #127	@ PmvSlotLen, tmp259,
	mul	r2, sl, r6	@, PmvNum.943, PmvSlotLen
	cmp	r2, ip	@,
	str	r2, [fp, #-56]	@, %sfp
	bge	.L199	@,
	mov	r1, r1, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	add	r9, r4, #1020	@ tmp266, MemAddr,
	add	ip, r9, #3	@ tmp266, tmp266,
	add	r8, r1, #255	@ tmp270, ImgWidthInPixAln,
	sub	r9, r1, #1	@ tmp272, ImgWidthInPixAln,
	bic	lr, ip, #1020	@ tmp268, tmp266,
	bic	ip, r8, #255	@ SlotWidth, tmp270,
	movw	r8, #2047	@ tmp273,
	cmp	r9, r8	@ tmp272, tmp273
	bic	r2, lr, #3	@ tmp268, tmp268,
	rsb	lr, r4, r2	@, MemAddr, tmp268
	str	sl, [r7, #624]	@ PmvNum.943, <variable>.ValidPMVNum
	mov	r2, r6, asr #1	@ tmp265, PmvSlotLen,
	str	lr, [fp, #-48]	@, %sfp
	mov	lr, ip, asl #4	@ tmp271, SlotWidth,
	str	r2, [r7, #620]	@ tmp265, <variable>.HafPmvOffset
	str	lr, [r7, #0]	@ tmp271, <variable>.VahbStride
	bhi	.L200	@,
.L147:
	mov	r9, #16	@ level,
.L149:
	mov	r3, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	ldr	r1, [fp, #28]	@, BtlDbdrEnable
	adds	lr, r3, #31	@ tmp283, ImgHeightInPixAln,
	addmi	lr, r3, #62	@, tmp284, ImgHeightInPixAln,
	cmp	r1, #0	@,
	mov	r8, lr, asr #5	@ tmp286, tmp284,
	mul	r9, r8, r9	@ D.40691, tmp286, level
	mul	r8, ip, r8	@ D.40686, SlotWidth, tmp286
	add	ip, r9, r8	@ tmp287, D.40691, D.40686
	mov	r2, ip, asl #5	@ tmp288, tmp287,
	str	r2, [r7, #264]	@ tmp288, <variable>.ChromOffset
	ldreq	r2, [fp, #28]	@ DbdrInfoSlotLen, BtlDbdrEnable
	bne	.L201	@,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r1, #0	@,
	moveq	r5, r1	@ ImgInfoSlotLen,
	bne	.L202	@,
.L154:
	ldr	r1, [fp, #12]	@, s32DisplayFrameNum
	cmp	r1, #0	@,
	bne	.L155	@,
.L204:
	str	r1, [r7, #536]	@, <variable>.ValidBTLFrameNum
	ldr	r5, [fp, #12]	@ prephitmp.903, s32DisplayFrameNum
.L156:
	ldr	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r2, #0	@,
	add	r5, r5, r3	@ Offset.946, prephitmp.903,
	bne	.L161	@,
.L203:
	str	r2, [r7, #276]	@, <variable>.ValidFrameNum
	ldr	sl, [fp, #8]	@ prephitmp.952, s32MaxRefFrameNum
.L162:
	ldr	r9, [r7, #624]	@ D.40749, <variable>.ValidPMVNum
	add	r5, sl, r5	@ Offset.949, prephitmp.952, Offset.946
	add	r2, r5, r4	@ MemAddr.950, Offset.949, MemAddr
	cmp	r9, #0	@ D.40749,
	ble	.L167	@,
	cmp	r9, #1	@ D.40749,
	sub	r1, r9, #1	@ tmp354, D.40749,
	and	r0, r1, #1	@ tmp356, tmp354,
	str	r2, [r7, #540]	@ MemAddr.950, <variable>.PMVAddr
	mov	r1, #1	@ i.951,
	add	r2, r2, r6	@ ivtmp.916, MemAddr.950, PmvSlotLen
	add	r3, r7, #4	@ ivtmp.920, pVdmMemArrange,
	ble	.L167	@,
	cmp	r0, #0	@ tmp356,
	beq	.L168	@,
	mov	r1, #2	@ i.951,
	cmp	r9, r1	@ D.40749, i.951
	str	r2, [r3, #540]	@ ivtmp.916, <variable>.PMVAddr
	add	r2, r2, r6	@ ivtmp.916, ivtmp.916, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.920, ivtmp.920,
	ble	.L167	@,
.L168:
	add	r1, r1, #2	@ i.951, i.951,
	add	lr, r3, #4	@ tmp358, ivtmp.920,
	cmp	r9, r1	@ D.40749, i.951
	add	r0, r2, r6	@ ivtmp.916, ivtmp.916, PmvSlotLen
	str	r2, [r3, #540]	@ ivtmp.916, <variable>.PMVAddr
	add	r2, r0, r6	@ ivtmp.916, ivtmp.916, PmvSlotLen
	str	r0, [lr, #540]	@ ivtmp.916, <variable>.PMVAddr
	add	r3, lr, #4	@ ivtmp.920, tmp358,
	bgt	.L168	@,
.L167:
	mla	r5, r9, r6, r5	@ tmp352, D.40749, PmvSlotLen, Offset.949
	mov	r0, #0	@ D.40624,
	str	r5, [r7, #4]	@ tmp352, <variable>.TotalMemUsed
.L137:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L155:
	ldr	r3, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r3, #0	@,
	beq	.L158	@,
	ldr	r0, [fp, #12]	@, s32DisplayFrameNum
	str	r0, [r7, #536]	@, <variable>.ValidBTLFrameNum
	ldr	r3, [fp, #12]	@ s32DisplayFrameNum.945, s32DisplayFrameNum
.L159:
	cmp	r3, #0	@ s32DisplayFrameNum.945,
	addle	r2, r5, r2	@ tmp330, ImgInfoSlotLen, DbdrInfoSlotLen
	mulle	r5, r2, r3	@ prephitmp.903, tmp330, s32DisplayFrameNum.945
	ble	.L156	@,
	ldr	sl, [r7, #536]	@ D.40731, <variable>.ValidBTLFrameNum
	add	r5, r5, r2	@ pretmp.955, ImgInfoSlotLen, DbdrInfoSlotLen
	ldr	ip, [fp, #-48]	@, %sfp
	add	r3, r7, #4	@ ivtmp.934, pVdmMemArrange,
	cmp	sl, #1	@ D.40731,
	sub	r1, sl, #1	@ tmp364, D.40731,
	add	r2, ip, r4	@ ivtmp.930,, MemAddr
	and	r0, r1, #1	@ tmp366, tmp364,
	str	r2, [r7, #280]	@ ivtmp.930, <variable>.BtlAddr
	mov	r1, #1	@ i,
	add	r2, r2, r5	@ ivtmp.930, ivtmp.930, pretmp.955
	ble	.L188	@,
	cmp	r0, #0	@ tmp366,
	beq	.L160	@,
	mov	r1, #2	@ i,
	cmp	sl, r1	@ D.40731, i
	str	r2, [r3, #280]	@ ivtmp.930, <variable>.BtlAddr
	add	r2, r2, r5	@ ivtmp.930, ivtmp.930, pretmp.955
	add	r3, r3, #4	@ ivtmp.934, ivtmp.934,
	ble	.L188	@,
.L160:
	add	r1, r1, #2	@ i, i,
	add	lr, r3, #4	@ tmp368, ivtmp.934,
	cmp	sl, r1	@ D.40731, i
	add	r0, r2, r5	@ ivtmp.930, ivtmp.930, pretmp.955
	str	r2, [r3, #280]	@ ivtmp.930, <variable>.BtlAddr
	add	r2, r0, r5	@ ivtmp.930, ivtmp.930, pretmp.955
	str	r0, [lr, #280]	@ ivtmp.930, <variable>.BtlAddr
	add	r3, lr, #4	@ ivtmp.934, tmp368,
	bgt	.L160	@,
.L188:
	mul	r5, r5, sl	@ prephitmp.903, pretmp.955, D.40731
	ldr	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r2, #0	@,
	add	r5, r5, r3	@ Offset.946, prephitmp.903,
	beq	.L203	@,
.L161:
	ldr	lr, [fp, #24]	@, Btl1Dt2DEnable
	add	r8, r8, r8, asl #1	@, tmp340, D.40686, D.40686,
	add	r0, r9, r9, asl #1	@, tmp335, D.40691, D.40691,
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	lr, #0	@,
	ldreq	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldreq	r3, [fp, #12]	@, s32DisplayFrameNum
	ldrne	r1, [fp, #8]	@, s32MaxRefFrameNum
	addeq	sl, r2, #2	@ tmp332,,
	addeq	sl, sl, r3	@ ValidFrameNum, tmp332,
	mov	r3, r8, asl #5	@ tmp341, tmp340,
	addne	sl, r1, #2	@ ValidFrameNum,,
	mov	r8, r0, asl #5	@ tmp336, tmp335,
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r9, r3, asr #1	@ tmp345, tmp341,
	ldr	r2, [fp, #-48]	@, %sfp
	add	r8, r9, r8, lsr #1	@, ImgSlotLen, tmp345, tmp336,
	rsb	lr, r1, ip	@ tmp346,,
	rsb	r1, r2, lr	@ FramePoolSize,, tmp346
	rsb	r0, r5, r1	@, Offset.946, FramePoolSize
	mov	r1, r8	@, ImgSlotLen
	bl	__aeabi_idiv	@
	cmp	r0, #64	@,
	movge	r0, #64	@ D.40742,
	cmp	r0, sl	@ D.40742, ValidFrameNum
	movlt	sl, r0	@ D.40742, D.40742
	movge	sl, sl	@ D.40742, ValidFrameNum
	str	sl, [r7, #276]	@ D.40742, <variable>.ValidFrameNum
	cmp	sl, #0	@ D.40742,
	ble	.L189	@,
	cmp	sl, #1	@ D.40742,
	add	r9, r5, r4	@ ivtmp.923, Offset.946, MemAddr
	sub	r3, sl, #1	@ tmp359, D.40742,
	str	r9, [r7, #8]	@ ivtmp.923, <variable>.FrameAddr
	and	r0, r3, #1	@ tmp361, tmp359,
	add	r2, r9, r8	@ ivtmp.923, ivtmp.923, ImgSlotLen
	mov	r1, #1	@ i.948,
	add	r3, r7, #4	@ ivtmp.927, pVdmMemArrange,
	ble	.L189	@,
	cmp	r0, #0	@ tmp361,
	beq	.L166	@,
	mov	r1, #2	@ i.948,
	cmp	sl, r1	@ D.40742, i.948
	str	r2, [r3, #8]	@ ivtmp.923, <variable>.FrameAddr
	add	r2, r2, r8	@ ivtmp.923, ivtmp.923, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.927, ivtmp.927,
	ble	.L189	@,
.L166:
	add	r1, r1, #2	@ i.948, i.948,
	add	r0, r3, #4	@ tmp363, ivtmp.927,
	cmp	sl, r1	@ D.40742, i.948
	add	ip, r2, r8	@ ivtmp.923, ivtmp.923, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.923, <variable>.FrameAddr
	add	r2, ip, r8	@ ivtmp.923, ivtmp.923, ImgSlotLen
	str	ip, [r0, #8]	@ ivtmp.923, <variable>.FrameAddr
	add	r3, r0, #4	@ ivtmp.927, tmp363,
	bgt	.L166	@,
.L189:
	mul	sl, sl, r8	@ prephitmp.952, D.40742, ImgSlotLen
	b	.L162	@
.L202:
	adds	lr, r5, #127	@ tmp316, Width,
	ldr	r1, [fp, #12]	@, s32DisplayFrameNum
	addmi	lr, r5, #254	@, tmp318, Width,
	cmp	r1, #0	@,
	mov	ip, lr, asr #7	@ tmp320, tmp318,
	add	r0, ip, ip, asl #1	@, tmp323, tmp320, tmp320,
	mov	r5, r0, asl #7	@ tmp324, tmp323,
	mul	r3, r3, r5	@ tmp325, ImgHeightInPixAln, tmp324
	mov	r5, r3, asr #1	@ ImgInfoSlotLen, tmp325,
	bne	.L155	@,
	b	.L204	@
.L201:
	cmp	r0, #0	@ D.40646,
	add	lr, r0, #15	@ tmp291, D.40646,
	movge	lr, r0	@ D.40646, D.40646
	mov	r2, lr, asr #4	@ tmp292, D.40646,
	adds	ip, r2, #7	@ tmp293, tmp292,
	addmi	r0, r2, #14	@, tmp295, tmp292,
	movpl	r0, ip	@, tmp295, tmp293
	mov	r1, r0, asr #3	@ tmp297, tmp295,
	mul	lr, r1, r3	@ tmp298, tmp297, ImgHeightInPixAln
	mov	r2, lr, asl #4	@ tmp299, tmp298,
	add	ip, r2, #7	@ tmp302, tmp299,
	cmp	r2, #0	@ tmp299,
	movlt	r2, ip	@ tmp301, tmp302
	mov	r0, r2, asr #3	@ tmp303, tmp301,
	add	r1, r0, r0, asl #1	@, tmp306, tmp303, tmp303,
	add	lr, r1, r1, lsr #31	@, tmp309, tmp306, tmp306,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	mov	r2, lr, asr #1	@ tmp310, tmp309,
	adds	ip, r2, #127	@ tmp311, tmp310,
	addmi	r0, r2, #254	@, tmp313, tmp310,
	movpl	r0, ip	@, tmp313, tmp311
	cmp	r1, #0	@,
	bic	r2, r0, #127	@ DbdrInfoSlotLen, tmp313,
	moveq	r5, r1	@ ImgInfoSlotLen,
	beq	.L154	@,
	b	.L202	@
.L200:
	sub	lr, r1, #2048	@ tmp274, ImgWidthInPixAln,
	sub	r2, lr, #1	@ tmp274, tmp274,
	cmp	r2, r8	@ tmp274, tmp273
	movls	r9, #32	@ level,
	bls	.L149	@,
	sub	lr, r1, #4096	@ tmp277, ImgWidthInPixAln,
	sub	r2, lr, #1	@ tmp277, tmp277,
	cmp	r2, r8	@ tmp277, tmp273
	movls	r9, #48	@ level,
	bls	.L149	@,
	sub	r2, r1, #6144	@ tmp280, ImgWidthInPixAln,
	sub	r1, r2, #1	@ tmp280, tmp280,
	cmp	r1, r8	@ tmp280, tmp273
	movls	r9, #64	@ level,
	bls	.L149	@,
	b	.L147	@
.L197:
	cmp	r6, #31	@ Height,
	movgt	r2, #0	@, tmp225
	movle	r2, #1	@, tmp225
	sub	r1, r5, #32	@ tmp220, Width,
	movw	ip, #8160	@ tmp222,
	cmp	r1, ip	@ tmp220, tmp222
	movls	r0, r2	@, tmp228, tmp225
	orrhi	r0, r2, #1	@,, tmp228, tmp225
	cmp	r0, #0	@ tmp228,
	bne	.L139	@,
	cmp	r6, #16384	@ Height,
	ble	.L140	@,
.L139:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #517	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40624,
	b	.L137	@
.L158:
	ldr	r3, [fp, #12]	@ s32DisplayFrameNum.945, s32DisplayFrameNum
	cmp	r3, #6	@ s32DisplayFrameNum.945,
	movlt	r3, #6	@ s32DisplayFrameNum.945,
	str	r3, [r7, #536]	@ s32DisplayFrameNum.945, <variable>.ValidBTLFrameNum
	b	.L159	@
.L141:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #522	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40624,
	b	.L137	@
.L199:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #554	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40624,
	b	.L137	@
.L196:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #509	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40624,
	b	.L137	@
.L198:
	mov	r0, r7	@, pVdmMemArrange
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #525	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40624,
	b	.L137	@
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem_BTL, .-VDMHAL_V200R004_ArrangeMem_BTL
	.align	2
	.global	VDMHAL_V200R004_StartHwDecode
	.type	VDMHAL_V200R004_StartHwDecode, %function
VDMHAL_V200R004_StartHwDecode:
	.fnstart
.LFB1383:
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
	subs	r4, r0, #0	@ VdhId, VdhId
	bne	.L213	@,
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp138,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp138,
	mov	r1, #3	@,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr,
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L209:
#APP
@ 2045 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	movw	r1, #:lower16:outer_cache	@ tmp145,
	movt	r1, #:upper16:outer_cache	@ tmp145,
	ldr	r3, [r1, #24]	@ D.41850, outer_cache.sync
	cmp	r3, #0	@ D.41850,
	beq	.L210	@,
	blx	r3	@ D.41850
.L210:
	movw	lr, #1148	@ tmp148,
	movw	r3, #:lower16:g_HwMem	@ tmp146,
	mul	r4, lr, r4	@ tmp147, tmp148, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp146,
	mov	lr, #0	@ tmp150,
	mov	r2, #1	@ tmp155,
	ldr	r1, [r4, r3]	@ D.41601, <variable>.pVdmRegVirAddr
	str	lr, [r1, #0]	@ tmp150,* D.41601
	ldr	ip, [r4, r3]	@ temp.981, <variable>.pVdmRegVirAddr
	str	r2, [ip, #0]	@ tmp155,* temp.981
	ldr	r0, [r4, r3]	@ temp.983, <variable>.pVdmRegVirAddr
	str	lr, [r0, #0]	@ tmp150,* temp.983
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L213:
	cmp	r4, #1	@ VdhId,
	beq	.L214	@,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	b	.L209	@
.L214:
	movw	ip, #:lower16:s_RegPhyBaseAddr_1	@ tmp141,
	movt	ip, #:upper16:s_RegPhyBaseAddr_1	@ tmp141,
	mov	r1, #3	@,
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr_1,
	add	r0, r2, #12	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L209	@
	.fnend
	.size	VDMHAL_V200R004_StartHwDecode, .-VDMHAL_V200R004_StartHwDecode
	.align	2
	.global	VDMHAL_V200R004_StartHwRepair
	.type	VDMHAL_V200R004_StartHwRepair, %function
VDMHAL_V200R004_StartHwRepair:
	.fnstart
.LFB1382:
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
	movw	r6, #1148	@ tmp145,
	mul	r6, r6, r0	@ tmp144, tmp145, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp175,
	movt	r4, #:upper16:g_HwMem	@ tmp175,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r7, [ip, #8]	@ dat,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r1, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	orr	r7, r7, #67108864	@ dat.1008, dat,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp152,
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r0, #8]	@ dat.1008,
#APP
@ 2009 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	movw	r3, #:lower16:outer_cache	@ tmp159,
	movt	r3, #:upper16:outer_cache	@ tmp159,
	ldr	r3, [r3, #24]	@ D.41851, outer_cache.sync
	cmp	r3, #0	@ D.41851,
	beq	.L216	@,
	blx	r3	@ D.41851
.L216:
	movw	ip, #1148	@ tmp162,
	mov	r3, #0	@ tmp164,
	mul	r5, ip, r5	@ tmp161, tmp162, VdhId
	mov	r0, #1	@ tmp169,
	ldr	r1, [r5, r4]	@ D.41586, <variable>.pVdmRegVirAddr
	str	r3, [r1, #0]	@ tmp164,* D.41586
	ldr	r2, [r5, r4]	@ temp.1016, <variable>.pVdmRegVirAddr
	str	r0, [r2, #0]	@ tmp169,* temp.1016
	ldr	lr, [r5, r4]	@ temp.1018, <variable>.pVdmRegVirAddr
	str	r3, [lr, #0]	@ tmp164,* temp.1018
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_StartHwRepair, .-VDMHAL_V200R004_StartHwRepair
	.align	2
	.global	VDMHAL_V200R004_CfgRpReg
	.type	VDMHAL_V200R004_CfgRpReg, %function
VDMHAL_V200R004_CfgRpReg:
	.fnstart
.LFB1379:
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
	mov	r0, #0	@ tmp152,
	str	r0, [fp, #-24]	@ tmp152, D32
	bls	.L225	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41359,
.L221:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L225:
	ldr	r2, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r2, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L226	@,
.L222:
	movw	ip, #1148	@ tmp164,
	movw	r2, #:lower16:g_HwMem	@ tmp162,
	mul	r3, ip, r3	@ tmp163, tmp164, VdhId
	movt	r2, #:upper16:g_HwMem	@ tmp162,
	ldr	r0, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	ip, #:lower16:536920579	@ tmp174,
	movt	ip, #:upper16:536920579	@ tmp174,
	movw	r1, #:lower16:3148803	@ tmp181,
	bic	r5, r0, #15	@ tmp161, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:3148803	@ tmp181,
	mov	r0, #0	@ D.41359,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #16]	@ tmp161,
	mov	r5, #7	@ tmp167,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #36]	@ tmp167,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r4, #12]	@ tmp174,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp181,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp181,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp181,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp181,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp181,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp181,
	ldr	r3, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp181,
	b	.L221	@
.L226:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	str	r3, [fp, #-36]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	ldr	r3, [fp, #-36]	@,
	subs	ip, r0, #0	@ D.41363,
	strne	ip, [r1, #0]	@ D.41363, <variable>.pVdmRegVirAddr
	bne	.L222	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41359,
	b	.L221	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpReg, .-VDMHAL_V200R004_CfgRpReg
	.global	__aeabi_idivmod
	.align	2
	.global	VDMHAL_V200R004_CfgRpMsg
	.type	VDMHAL_V200R004_CfgRpMsg, %function
VDMHAL_V200R004_CfgRpMsg:
	.fnstart
.LFB1377:
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
	beq	.L259	@,
	ldr	r2, [r7, #552]	@ D.41196, <variable>.ValidGroupNum
	sub	r3, r2, #1	@ tmp229, D.41196,
	cmp	r3, #127	@ tmp229,
	bhi	.L260	@,
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
	mul	r9, r3, r4	@ D.41219, tmp249, tmp239
	add	r2, r9, lr, asl #5	@, ChromaOffset, D.41219, tmp250,
	add	r0, r2, ip	@ tmp258, ChromaOffset, <variable>.RefImageAddr
	ldr	ip, [fp, #-56]	@, %sfp
	str	r0, [ip, #4]	@ tmp258,
	ldr	lr, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	lr, [ip, #8]	@ <variable>.ImageAddr,
	ldr	r0, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	lr, r2, r0	@ tmp265, ChromaOffset, <variable>.ImageAddr
	str	lr, [ip, #12]	@ tmp265,
	str	r1, [ip, #16]	@ tmp268,
	str	r9, [ip, #20]	@ D.41219,
	ldr	r3, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r2, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	lr, r3, #1	@ tmp274, <variable>.ImageWidth,
	sub	r1, r2, #1	@ tmp278, <variable>.ImageHeight,
	mov	r9, lr, asl #23	@ tmp279, tmp274,
	mov	r0, r9, lsr #23	@ tmp279, tmp279,
	bfi	r0, r1, #16, #9	@ tmp279, tmp278,,
	str	r0, [fp, #-48]	@ tmp279,
	str	r0, [ip, #24]	@ tmp279,
	ldr	r9, [r7, #568]	@ prephitmp.1088, <variable>.FullRepair
	cmp	r9, #0	@ prephitmp.1088,
	movne	r8, #0	@ actual_repairTime,
	bne	.L232	@,
	ldr	sl, [r7, #552]	@ temp.1141, <variable>.ValidGroupNum
	cmp	sl, #0	@ temp.1141,
	movle	r8, r9	@ actual_repairTime, prephitmp.1088
	ble	.L234	@,
	ldrsh	lr, [r7, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	mov	r6, r9	@ i, actual_repairTime.1142
	ldrsh	r3, [r7, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	cmp	lr, #0	@ <variable>.StartMbn,
	add	ip, lr, #7	@ tmp412, <variable>.StartMbn,
	str	r9, [fp, #-64]	@ actual_repairTime.1142, %sfp
	movlt	lr, ip	@ <variable>.StartMbn, tmp412
	adds	r2, r3, #7	@ tmp416, <variable>.EndMbn,
	addmi	r0, r3, #14	@, tmp418, <variable>.EndMbn,
	movpl	r0, r2	@, tmp418, tmp416
	bic	r1, lr, #7	@, <variable>.StartMbn,
	bic	r3, r0, #7	@ cur_EndMb, tmp418,
	str	r1, [fp, #-60]	@, %sfp
.L247:
	ldr	r2, [fp, #-64]	@, %sfp
	cmp	r3, r2	@ cur_EndMb,
	movgt	lr, #0	@, tmp317
	movle	lr, #1	@, tmp317
	cmp	r6, #0	@ i,
	moveq	lr, #0	@, tmp317,
	cmp	lr, #0	@ tmp317,
	addne	r4, r6, #1	@ i.1117, i,
	movne	r8, r9	@ actual_repairTime, actual_repairTime.1142
	bne	.L237	@,
	add	r5, r6, #10	@ tmp318, i,
	mvn	r4, r6	@ tmp425, i
	add	r8, r4, sl	@ tmp424, tmp425, temp.1141
	tst	r8, #1	@ tmp424,
	add	r2, r7, r5, asl #2	@, tmp320, pRepairParam, tmp318,
	add	r3, r2, #2	@ ivtmp.1111, tmp320,
	beq	.L238	@,
	add	r4, r6, #1	@ i.1117, i,
	cmp	r4, sl	@ i.1117, temp.1141
	bge	.L256	@,
	ldrsh	r1, [r2, #2]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r8, [r3, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r5, r1, #7	@ tmp442, <variable>.EndMbn,
	addmi	r5, r1, #14	@, tmp444, <variable>.EndMbn,
	add	r0, r8, #7	@ tmp447, <variable>.StartMbn,
	cmp	r8, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp444,
	movlt	r8, r0	@ <variable>.StartMbn, tmp447
	bic	r2, r8, #7	@ D.41289, <variable>.StartMbn,
	cmp	r5, r2	@ end_Mb, D.41289
	bgt	.L250	@,
	add	lr, r2, #1	@ tmp452, D.41289,
	cmp	r5, lr	@ end_Mb, tmp452
	beq	.L250	@,
	ldrsh	r8, [r3, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, r8, #7	@ tmp454, <variable>.EndMbn,
	addmi	ip, r8, #14	@, tmp456, <variable>.EndMbn,
	movpl	ip, r0	@, tmp456, tmp454
	bic	r2, ip, #7	@ tmp458, tmp456,
	cmp	r5, r2	@ end_Mb, tmp458
	bgt	.L240	@,
.L250:
	add	r3, r3, #4	@ ivtmp.1111, ivtmp.1111,
	mov	r6, r4	@ i, i.1117
	b	.L238	@
.L239:
	ldrsh	lr, [r3, #0]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r2, [r3, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r8, lr, #7	@ tmp431, <variable>.EndMbn,
	addmi	r1, lr, #14	@, tmp433, <variable>.EndMbn,
	movpl	r1, r8	@, tmp433, tmp431
	add	r5, r2, #7	@ tmp436, <variable>.StartMbn,
	cmp	r2, #0	@ <variable>.StartMbn,
	bic	r1, r1, #7	@ end_Mb, tmp433,
	movlt	r2, r5	@ <variable>.StartMbn, tmp436
	bic	lr, r2, #7	@ D.41289, <variable>.StartMbn,
	cmp	r1, lr	@ end_Mb, D.41289
	add	r5, lr, #1	@ tmp342, D.41289,
	bgt	.L241	@,
	cmp	r1, r5	@ end_Mb, tmp342
	beq	.L241	@,
	ldrsh	r8, [r3, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r5, r8, #7	@ tmp344, <variable>.EndMbn,
	addmi	lr, r8, #14	@, tmp346, <variable>.EndMbn,
	movpl	lr, r5	@, tmp346, tmp344
	bic	r2, lr, #7	@ tmp349, tmp346,
	cmp	r1, r2	@ end_Mb, tmp349
	bgt	.L258	@,
.L241:
	ldrsh	r2, [r3, #4]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r6, r4	@ i, i.1117
	ldrsh	r3, [r0, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r4, r4, #1	@ i.1117, i.1117,
	adds	r1, r2, #7	@ tmp331, <variable>.EndMbn,
	add	lr, r3, #7	@ tmp339, <variable>.StartMbn,
	addmi	r1, r2, #14	@, tmp333, <variable>.EndMbn,
	cmp	r3, #0	@ <variable>.StartMbn,
	bic	r1, r1, #7	@ end_Mb, tmp333,
	movlt	r3, lr	@ <variable>.StartMbn, tmp339
	bic	r3, r3, #7	@ D.41289, <variable>.StartMbn,
	cmp	r1, r3	@ end_Mb, D.41289
	bgt	.L253	@,
	add	r3, r3, #1	@ tmp459, D.41289,
	cmp	r1, r3	@ end_Mb, tmp459
	beq	.L253	@,
	ldrsh	r8, [r0, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r2, r8, #7	@ tmp461, <variable>.EndMbn,
	addmi	lr, r8, #14	@, tmp463, <variable>.EndMbn,
	movpl	lr, r2	@, tmp463, tmp461
	bic	r5, lr, #7	@ tmp465, tmp463,
	cmp	r1, r5	@ end_Mb, tmp465
	bgt	.L258	@,
.L253:
	add	r3, r0, #4	@ ivtmp.1111, tmp427,
	add	r6, ip, #1	@ i, i.1117,
.L238:
	add	r4, r6, #1	@ i.1117, i,
	add	r0, r3, #4	@ tmp427, ivtmp.1111,
	cmp	r4, sl	@ i.1117, temp.1141
	mov	ip, r4	@ i.1117, i.1117
	blt	.L239	@,
.L256:
	add	r8, r7, r6, asl #2	@, tmp324, pRepairParam, i,
	ldrsh	r0, [r8, #42]	@ pretmp.1093, <variable>.EndMbn
	adds	r5, r0, #7	@ pretmp.1121, pretmp.1093,
	addmi	ip, r0, #14	@, pretmp.1121, pretmp.1093,
	movpl	ip, r5	@, pretmp.1121, pretmp.1121
	bic	r5, ip, #7	@ end_Mb, pretmp.1121,
.L240:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	r8, r9, #1	@ actual_repairTime, actual_repairTime.1142,
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r3, r0, ip	@ D.41294, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r5, r3	@ end_Mb, D.41294
	subge	r5, r3, #1	@ end_Mb, D.41294,
	cmp	r8, #252	@ actual_repairTime,
	bgt	.L261	@,
.L243:
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
	add	r1, r9, #4	@ tmp366, actual_repairTime.1142,
	mov	ip, #0	@,
	bfi	sl, r0, #16, #9	@ tmp365,,,
	mov	r0, r5	@, end_Mb
	str	sl, [r2, r1, asl #3]	@ D32.1153,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	str	ip, [fp, #-48]	@, D32
	bl	__aeabi_idivmod	@
	ldr	sl, [fp, #-48]	@ tmp375,
	mov	r0, r5	@, end_Mb
	bfi	sl, r1, #0, #9	@ tmp375,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	mov	r3, r9, asl #3	@ tmp381, actual_repairTime.1142,
	ldr	r2, [fp, #-56]	@, %sfp
	add	r9, r3, #36	@ tmp382, tmp381,
	bfi	sl, r0, #16, #9	@ tmp380,,,
	str	sl, [fp, #-48]	@ tmp380,
	str	sl, [r2, r9]	@ D32.1158,
	ldr	sl, [r7, #552]	@ temp.1141, <variable>.ValidGroupNum
.L237:
	cmp	r4, sl	@ i.1117, temp.1141
	bge	.L262	@,
	add	r1, r4, #10	@ tmp280, i.1117,
	cmp	r4, #0	@ i.1117,
	mov	lr, r1, asl #2	@ tmp281, tmp280,
	add	ip, lr, r7	@ tmp282, tmp281, pRepairParam
	ldrh	r2, [lr, r7]	@ D.41257, <variable>.StartMbn
	ldrh	r3, [ip, #2]	@ D.41260, <variable>.EndMbn
	ble	.L235	@,
	add	lr, r7, r6, asl #2	@, tmp291, pRepairParam, i,
	ldrsh	ip, [lr, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, ip, #7	@ tmp294, <variable>.EndMbn,
	addmi	r9, ip, #14	@, tmp296, <variable>.EndMbn,
	movpl	r9, r0	@, tmp296, tmp294
	bic	r6, r9, #7	@, tmp296,
	str	r6, [fp, #-64]	@, %sfp
.L235:
	sxth	r6, r2	@ D.41257, D.41257
	sxth	ip, r3	@ D.41260, D.41260
	cmp	r6, #0	@ D.41257,
	add	r0, r6, #7	@ tmp302, D.41257,
	mov	r9, r8	@ actual_repairTime.1142, actual_repairTime
	movlt	r6, r0	@ D.41257, tmp302
	adds	r1, ip, #7	@ tmp306, D.41260,
	addmi	r3, ip, #14	@, tmp308, D.41260,
	movpl	r3, r1	@, tmp308, tmp306
	bic	r2, r6, #7	@, D.41257,
	bic	r3, r3, #7	@ cur_EndMb, tmp308,
	str	r2, [fp, #-60]	@, %sfp
	mov	r6, r4	@ i, i.1117
	b	.L247	@
.L262:
	ldr	r9, [r7, #568]	@ prephitmp.1088, <variable>.FullRepair
.L232:
	cmp	r9, #1	@ prephitmp.1088,
	beq	.L244	@,
.L234:
	sub	r0, r8, #1	@ tmp384, actual_repairTime,
	uxth	r1, r0	@ prephitmp.1086, tmp384
.L246:
	mov	r0, #0	@ tmp398,
	str	r0, [fp, #-48]	@ tmp398, D32
	ldr	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r2, [fp, #-46]	@ zero_extendqisi2	@,
	ldr	lr, [r7, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r2, ip, #0, #1	@ tmp400, <variable>.Compress_en,,
	strh	r1, [fp, #-48]	@ movhi	@ prephitmp.1086, <variable>.total_grp_num_minus1
	ldr	r1, [fp, #-56]	@, %sfp
	uxtb	r3, r2	@ tmp403, tmp400
	bfi	r3, lr, #4, #2	@ tmp403, <variable>.Pic_type,,
	bfi	r3, lr, #6, #2	@ tmp406, <variable>.Pic_type,,
	strb	r3, [fp, #-46]	@ tmp406,
	ldr	r2, [fp, #-48]	@ D32.1181, D32
	str	r2, [r1, #28]	@ D32.1181,
.L229:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L258:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r5, r1	@ end_Mb, end_Mb
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r8, r9, #1	@ actual_repairTime, actual_repairTime.1142,
	mul	r3, r0, ip	@ D.41294, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r5, r3	@ end_Mb, D.41294
	subge	r5, r3, #1	@ end_Mb, D.41294,
	cmp	r8, #252	@ actual_repairTime,
	ble	.L243	@,
.L261:
	mov	r1, #1	@ tmp352,
	str	r1, [r7, #568]	@ tmp352, <variable>.FullRepair
.L244:
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
	b	.L246	@
.L260:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41195,
	b	.L229	@
.L259:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1400	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41195,
	b	.L229	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpMsg, .-VDMHAL_V200R004_CfgRpMsg
	.align	2
	.global	VDMHAL_V200R004_PrepareRepair
	.type	VDMHAL_V200R004_PrepareRepair, %function
VDMHAL_V200R004_PrepareRepair:
	.fnstart
.LFB1381:
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
	bls	.L278	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41530,
.L266:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L278:
	movw	sl, #1148	@ tmp152,
	movw	r6, #:lower16:g_HwMem	@ tmp153,
	mul	sl, sl, r3	@ tmp151, tmp152, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp153,
	add	r5, r6, sl	@ pHwMem, tmp153, tmp151
	ldr	r3, [r6, sl]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L280	@,
.L267:
	cmp	r2, #0	@ RepairTime,
	movw	ip, #1144	@ tmp157,
	movw	r1, #:lower16:g_RepairParam	@ g_RepairParam.485,
	movt	r1, #:upper16:g_RepairParam	@ g_RepairParam.485,
	mul	r3, ip, r4	@ tmp185, tmp157, VdhId
	bne	.L269	@,
	add	r6, r1, r3	@ pRepairParam, g_RepairParam.485, tmp185
	ldr	r0, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L270	@,
	cmp	r8, #6	@ VidStd,
	bne	.L271	@,
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r2, #1	@ <variable>.PicStruct,
	movne	r2, #0	@, tmp186,
	str	r2, [r6, #1136]	@ tmp186, <variable>.Pic_type
.L271:
	mov	r0, r8	@, VidStd
	mov	r2, r7	@, pDecParam
	mov	r3, r4	@, VdhId
.L279:
	mov	r1, r5	@, pHwMem
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r0, r6	@, pRepairParam
	mov	r1, r5	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, #0	@ D.41530,
	b	.L266	@
.L269:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.41530,
	bne	.L266	@,
	cmp	r8, #6	@ VidStd,
	bne	.L274	@,
	ldrb	ip, [r7, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	bne	.L274	@,
	add	lr, r3, r1	@ tmp169, tmp185, g_RepairParam.485
	ldr	r0, [lr, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L274	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp181,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp181,
	add	r6, r3, #572	@ tmp172, tmp185,
	ldr	r3, [r2, #44]	@ D.41566, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	add	r6, r1, r6	@ pRepairParam, g_RepairParam.485, tmp172
	mov	r1, #2	@ tmp173,
	cmp	r3, #0	@ D.41566,
	str	r1, [r6, #564]	@ tmp173, <variable>.Pic_type
	beq	.L275	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.41566
.L276:
	mov	r2, r7	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r0, #6	@,
	b	.L279	@
.L280:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r2, [fp, #-40]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-40]	@,
	subs	r1, r0, #0	@ D.41534,
	strne	r1, [r6, sl]	@ D.41534, <variable>.pVdmRegVirAddr
	bne	.L267	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41530,
	b	.L266	@
.L274:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41530,
	b	.L266	@
.L275:
	mov	r0, r3	@, D.41566
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #1969	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L276	@
.L270:
	mov	r0, r2	@, RepairTime
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41530,
	b	.L266	@
	.fnend
	.size	VDMHAL_V200R004_PrepareRepair, .-VDMHAL_V200R004_PrepareRepair
	.align	2
	.global	VDMHAL_V200R004_BackupInfo
	.type	VDMHAL_V200R004_BackupInfo, %function
VDMHAL_V200R004_BackupInfo:
	.fnstart
.LFB1373:
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
	cmp	r1, #1	@ VdhId,
	mov	r8, r0	@ pMb0QpInCurrPic, pMb0QpInCurrPic
	bls	.L300	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41011,
.L284:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L300:
	movw	r3, #:lower16:g_DSPState	@ tmp384,
	movt	r3, #:upper16:g_DSPState	@ tmp384,
	ldr	r2, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r0, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r4, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	r4, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r5, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	r5, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r6, [r3, #16]	@ g_DSPState, g_DSPState
	cmp	r6, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	ip, [r3, #20]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r2, [r3, #24]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r0, [r3, #28]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r4, [r3, #32]	@ g_DSPState, g_DSPState
	cmp	r4, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r5, [r3, #36]	@ g_DSPState, g_DSPState
	movw	r3, #:lower16:g_DSPState	@ tmp209,
	movt	r3, #:upper16:g_DSPState	@ tmp209,
	cmp	r5, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r6, [r3, #40]	@ g_DSPState, g_DSPState
	cmp	r6, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	ip, [r3, #44]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r2, [r3, #48]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r0, [r3, #52]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r4, [r3, #56]	@ g_DSPState, g_DSPState
	cmp	r4, #1	@ g_DSPState,
	beq	.L285	@,
	ldr	r5, [r3, #60]	@ g_DSPState, g_DSPState
	cmp	r5, #1	@ g_DSPState,
	movne	r6, #0	@, LowdlyFlag
	moveq	r6, #1	@, LowdlyFlag
.L286:
	movw	r3, #1148	@ tmp227,
	movw	r5, #:lower16:g_HwMem	@ tmp386,
	mul	r4, r3, r1	@ tmp226, tmp227, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp386,
	ldr	r3, [r4, r5]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L301	@,
.L287:
	mov	r2, #180	@ tmp237,
	ldr	ip, [r3, #12]	@ D.41028,
	mul	r7, r2, r1	@ tmp236, tmp237, VdhId
	movw	r4, #:lower16:g_BackUp	@ tmp387,
	movt	r4, #:upper16:g_BackUp	@ tmp387,
	cmp	r6, #1	@ LowdlyFlag,
	add	r2, r7, r4	@ tmp238, tmp236, tmp387
	str	ip, [r7, r4]	@ D.41028, <variable>.BasicCfg1
	ldr	r7, [r3, #28]	@ D.41032,
	str	r7, [r2, #4]	@ D.41032, <variable>.VdmState
	beq	.L302	@,
	add	r7, r3, #4096	@ D.41060, D.41025,
	ldr	ip, [r7, #0]	@ D.41061,* D.41060
	str	ip, [r2, #16]	@ D.41061, <variable>.SedSta
	ldr	sl, [r7, #20]	@ D.41065,
	str	sl, [r2, #20]	@ D.41065, <variable>.SedEnd0
	ldr	r5, [r3, #208]	@ temp.1263,
	str	r5, [r2, #8]	@ temp.1263, <variable>.Mb0QpInCurrPic
	ldr	r0, [r3, #212]	@ temp.1266,
	str	r0, [r2, #12]	@ temp.1266, <variable>.SwitchRounding
	ldr	ip, [r3, #176]	@ D.41079,
	str	ip, [r2, #24]	@ D.41079, <variable>.DecCyclePerPic
	ldr	r7, [r3, #180]	@ D.41083,
	str	r7, [r2, #28]	@ D.41083, <variable>.RdBdwidthPerPic
	ldr	sl, [r3, #184]	@ D.41087,
	str	sl, [r2, #32]	@ D.41087, <variable>.WrBdWidthPerPic
	ldr	r5, [r3, #188]	@ D.41091,
	str	r5, [r2, #36]	@ D.41091, <variable>.RdReqPerPic
	ldr	r0, [r3, #192]	@ D.41095,
	str	r0, [r2, #40]	@ D.41095, <variable>.WrReqPerPic
.L293:
	add	sl, r3, #33024	@ tmp385, D.41025,
	mov	r3, #180	@ tmp344,
	mla	ip, r3, r1, r4	@ ivtmp.1259, tmp344, VdhId, tmp387
	add	r3, sl, #128	@ D.42681, tmp385,
	mov	r2, sl	@ ivtmp.1255, tmp385
.L294:
	mov	r0, r2	@ tmp388, ivtmp.1255
	add	r5, ip, #4	@ tmp389, ivtmp.1259,
	ldr	r7, [r0], #4	@ D.41101,
	str	r7, [ip, #52]	@ D.41101, <variable>.LumaHistorgam
	add	ip, r5, #4	@ ivtmp.1259, tmp389,
	ldr	r7, [r2, #4]	@ D.41101,
	add	r2, r0, #4	@ ivtmp.1255, tmp388,
	cmp	r2, r3	@ ivtmp.1255, D.42681
	str	r7, [r5, #52]	@ D.41101, <variable>.LumaHistorgam
	bne	.L294	@,
	cmp	r6, #0	@ LowdlyFlag,
	bne	.L295	@,
	mov	r3, #180	@ tmp351,
	ldr	r2, [sl, #128]	@ D.41107,
	mla	ip, r3, r1, r4	@ tmp352, tmp351, VdhId, tmp387
	str	r2, [ip, #48]	@ D.41107, <variable>.LumaSumLow
	ldr	r2, [sl, #132]	@ D.41111,
	str	r2, [ip, #44]	@ D.41111, <variable>.LumaSumHigh
.L295:
	mov	r3, #180	@ tmp363,
	mul	r1, r3, r1	@ tmp362, tmp363, VdhId
	add	ip, r1, r4	@ tmp364, tmp362, tmp387
	ldr	r2, [r1, r4]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	and	r1, r2, #15	@ tmp365, <variable>.BasicCfg1,
	cmp	r1, #5	@ tmp365,
	ldreq	ip, [ip, #12]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	moveq	r0, #0	@ D.41011,
	ldrne	ip, [ip, #8]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	movne	r0, #0	@ D.41011,
	andeq	ip, ip, #1	@ tmp374, <variable>.SwitchRounding,
	andne	ip, ip, #31	@ tmp382, <variable>.Mb0QpInCurrPic,
	str	ip, [r8, #0]	@ tmp382,* pMb0QpInCurrPic
	b	.L284	@
.L285:
	mov	r6, #1	@ LowdlyFlag,
	b	.L286	@
.L302:
	movw	r0, #1148	@ tmp246,
	mla	lr, r0, r1, r5	@ tmp247, tmp246, VdhId, tmp386
	ldr	r0, [lr, #28]	@, <variable>.MsgSlotAddr
	str	r1, [fp, #-40]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-40]	@,
	subs	r3, r0, #0	@ pMsgBase,
	beq	.L303	@,
	bic	lr, r7, #-16777216	@ DecSliceNum, D.41032,
	movw	sl, #1148	@ tmp274,
	bic	r7, lr, #16646144	@ DecSliceNum, DecSliceNum,
	mov	r2, #180	@ tmp261,
	sub	ip, r7, #1	@ tmp254, DecSliceNum,
	cmp	ip, #127	@ tmp254,
	subls	ip, r7, #-1073741823	@ tmp255, DecSliceNum,
	movls	r0, r7, asl #4	@ tmp257, DecSliceNum,
	movhi	ip, #0	@ prephitmp.1235,
	subls	r0, r0, #8	@ prephitmp.1237, tmp257,
	movls	ip, ip, asl #4	@ prephitmp.1235, tmp255,
	movhi	r0, #8	@ prephitmp.1237,
	mla	r2, r2, r1, r4	@ tmp262, tmp261, VdhId, tmp387
	ldr	lr, [r3, ip]	@ tmp264,* prephitmp.1235
	mul	ip, sl, r1	@ tmp273, tmp274, VdhId
	str	lr, [r2, #16]	@ tmp264, <variable>.SedSta
	ldr	r7, [r3, r0]	@ tmp271,* prephitmp.1237
	ldr	r3, [ip, r5]	@ D.41025, <variable>.pVdmRegVirAddr
	str	r7, [r2, #20]	@ tmp271, <variable>.SedEnd0
	ldr	r5, [r3, #208]	@ D.41069,
	str	r5, [r2, #8]	@ D.41069, <variable>.Mb0QpInCurrPic
	ldr	sl, [r3, #212]	@ D.41073,
	str	sl, [r2, #12]	@ D.41073, <variable>.SwitchRounding
	b	.L293	@
.L301:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-40]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-40]	@,
	subs	r3, r0, #0	@ p32,
	strne	r3, [r4, r5]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L287	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41011,
	b	.L284	@
.L303:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1292	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41011,
	b	.L284	@
	.fnend
	.size	VDMHAL_V200R004_BackupInfo, .-VDMHAL_V200R004_BackupInfo
	.align	2
	.global	VDMHAL_V200R004_CheckInt
	.type	VDMHAL_V200R004_CheckInt, %function
VDMHAL_V200R004_CheckInt:
	.fnstart
.LFB1369:
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
	bls	.L311	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L311:
	movw	r6, #1148	@ tmp143,
	movw	r5, #:lower16:g_HwMem	@ tmp141,
	mul	r6, r6, r0	@ tmp142, tmp143, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp141,
	ldr	r4, [r6, r5]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ p32,
	beq	.L312	@,
.L308:
	ldr	r0, [r4, #32]	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L312:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ p32,
	strne	r4, [r6, r5]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L308	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ dat, p32
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_CheckInt, .-VDMHAL_V200R004_CheckInt
	.align	2
	.global	VDMHAL_V200R004_EnableInt
	.type	VDMHAL_V200R004_EnableInt, %function
VDMHAL_V200R004_EnableInt:
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
	cmp	r0, #1	@ VdhId,
	bls	.L320	@,
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L320:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L321	@,
.L317:
	mvn	r2, #1	@ tmp149,
	str	r2, [r3, #36]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L321:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L317	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_EnableInt, .-VDMHAL_V200R004_EnableInt
	.align	2
	.global	VDMHAL_V200R004_MaskInt
	.type	VDMHAL_V200R004_MaskInt, %function
VDMHAL_V200R004_MaskInt:
	.fnstart
.LFB1367:
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
	bls	.L329	@,
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L329:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L330	@,
.L326:
	mvn	r2, #0	@ tmp149,
	str	r2, [r3, #36]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L330:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L326	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_MaskInt, .-VDMHAL_V200R004_MaskInt
	.align	2
	.global	VDMHAL_V200R004_ClearIntState
	.type	VDMHAL_V200R004_ClearIntState, %function
VDMHAL_V200R004_ClearIntState:
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
	cmp	r0, #1	@ VdhId,
	bls	.L338	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L338:
	movw	r5, #1148	@ tmp141,
	movw	r4, #:lower16:g_HwMem	@ tmp139,
	mul	r5, r5, r0	@ tmp140, tmp141, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp139,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L339	@,
.L335:
	mvn	r2, #0	@ tmp149,
	str	r2, [r3, #32]	@ tmp149,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L339:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L335	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_ClearIntState, .-VDMHAL_V200R004_ClearIntState
	.align	2
	.global	VDMHAL_V200R004_GlbReset
	.type	VDMHAL_V200R004_GlbReset, %function
VDMHAL_V200R004_GlbReset:
	.fnstart
.LFB1365:
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
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.40798,
	beq	.L351	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp157,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp157,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp158,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.433, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #16	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1399, g_pstRegCrg
	b	.L344	@
.L352:
	ldr	lr, [r1, #372]	@ D.40805, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ i, i,
	tst	lr, #1	@ D.40805,
	str	lr, [fp, #-24]	@ D.40805, u32TmpValue_93.u32
	bne	.L343	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp158
	beq	.L345	@,
.L344:
	ldr	ip, [r1, #372]	@ D.40805, <variable>.PERI_CRG93.u32
	tst	ip, #1	@ D.40805,
	str	ip, [fp, #-24]	@ D.40805, u32TmpValue_93.u32
	beq	.L352	@,
.L343:
	movw	r0, #8999	@ tmp154,
	cmp	r3, r0	@ i, tmp154
	bgt	.L345	@,
.L346:
	bfc	r5, #4, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
.L347:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L345:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1399, g_pstRegCrg
	b	.L346	@
.L351:
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L347	@
	.fnend
	.size	VDMHAL_V200R004_GlbReset, .-VDMHAL_V200R004_GlbReset
	.align	2
	.global	VDMHAL_V200R004_ResetVdm
	.type	VDMHAL_V200R004_ResetVdm, %function
VDMHAL_V200R004_ResetVdm:
	.fnstart
.LFB1364:
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
	subs	r6, r0, #0	@ VdhId, VdhId
	beq	.L356	@,
	cmp	r6, #1	@ VdhId,
	beq	.L356	@,
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	b	.L362	@
.L356:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pVdmRegVirAddr,
	beq	.L368	@,
	movw	r3, #1148	@ tmp154,
	movw	r5, #:lower16:g_HwMem	@ tmp173,
	mul	r0, r3, r6	@ tmp153, tmp154, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp173,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp174,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp174,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp175,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.432, g_pstRegCrg
	ldr	r1, [r0, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r1, #36]	@ tmp,
	ldr	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r7, r7, #64	@ u32TmpValue, u32TmpValue,
	str	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1431, g_pstRegCrg
	b	.L361	@
.L370:
	ldr	lr, [r1, #372]	@ D.40781, <variable>.PERI_CRG93.u32
	and	r0, lr, #4	@ tmp182, D.40781,
	str	lr, [fp, #-40]	@ D.40781, u32TmpValue_93.u32
	uxtb	r0, r0	@ tmp183, tmp182
	cmp	r0, #0	@ tmp183,
	bne	.L360	@,
	cmp	r3, ip	@ i, tmp175
	beq	.L369	@,
.L361:
	ldr	lr, [r1, #372]	@ D.40781, <variable>.PERI_CRG93.u32
	add	r2, r3, #1	@ tmp176, i,
	add	r3, r2, #1	@ i, tmp176,
	tst	lr, #4	@ D.40781,
	str	lr, [fp, #-40]	@ D.40781, u32TmpValue_93.u32
	beq	.L370	@,
.L360:
	movw	r3, #1148	@ tmp170,
	bfc	r7, #6, #1	@ u32TmpValue,,
	mul	r6, r3, r6	@ tmp169, tmp170, VdhId
	str	r7, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [ip, #36]	@ tmp,
.L362:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L369:
	movw	r1, #:lower16:.LC31	@,
	mov	r2, r6	@, VdhId
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1431, g_pstRegCrg
	b	.L360	@
.L368:
	movw	r1, #:lower16:.LC28	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L362	@
	.fnend
	.size	VDMHAL_V200R004_ResetVdm, .-VDMHAL_V200R004_ResetVdm
	.align	2
	.global	VDMHAL_V200R004_CloseHAL
	.type	VDMHAL_V200R004_CloseHAL, %function
VDMHAL_V200R004_CloseHAL:
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
	cmp	r0, #1	@ VdhId,
	mov	r4, r0	@ VdhId, VdhId
	bls	.L377	@,
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L377:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	ldr	r3, [r3, #44]	@ D.40384, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.40384,
	beq	.L375	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.40384
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L375:
	mov	r0, r3	@, D.40384
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #275	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_CloseHAL, .-VDMHAL_V200R004_CloseHAL
	.align	2
	.global	VDMHAL_V200R004_MakeDecReport
	.type	VDMHAL_V200R004_MakeDecReport, %function
VDMHAL_V200R004_MakeDecReport:
	.fnstart
.LFB1380:
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
	beq	.L403	@,
	movw	r0, #1148	@ tmp160,
	movw	r3, #:lower16:g_HwMem	@ tmp161,
	mul	r2, r0, r2	@ tmp159, tmp160, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp161,
	add	r5, r3, r2	@ pHwMem, tmp161, tmp159
	ldr	r0, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L404	@,
	movw	r3, #:lower16:g_DSPState	@ tmp291,
	movt	r3, #:upper16:g_DSPState	@ tmp291,
	ldr	r1, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r7, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	r7, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	ip, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	lr, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r2, [r3, #16]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r0, [r3, #20]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r1, [r3, #24]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r7, [r3, #28]	@ g_DSPState, g_DSPState
	cmp	r7, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	ip, [r3, #32]	@ g_DSPState, g_DSPState
	movw	r3, #:lower16:g_DSPState	@ tmp182,
	movt	r3, #:upper16:g_DSPState	@ tmp182,
	cmp	ip, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	lr, [r3, #36]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r2, [r3, #40]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r0, [r3, #44]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r1, [r3, #48]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	r7, [r3, #52]	@ g_DSPState, g_DSPState
	cmp	r7, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	ip, [r3, #56]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L382	@,
	ldr	lr, [r3, #60]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	movne	r7, #0	@, LowdlyFlag
	moveq	r7, #1	@, LowdlyFlag
.L383:
	mov	r0, r6	@, pDecReport
	mov	r1, #528	@,
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp290,
	movt	r3, #:upper16:g_BackUp	@ tmp290,
	mov	r0, #180	@ tmp204,
	ldr	r1, [r5, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	ip, r0, r8, r3	@ tmp205, tmp204, VdhId, tmp290
	str	r1, [r6, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r2, [ip, #4]	@ D.41445, <variable>.VdmState
	mov	r2, r2, lsr #17	@ tmp207, D.41445,
	and	r0, r2, #3	@ tmp208, tmp207,
	cmp	r0, #1	@ tmp208,
	moveq	r2, #0	@ prephitmp.1494,
	beq	.L385	@,
	eor	lr, r2, #1	@ tmp212, tmp207,
	and	r2, lr, #1	@ tmp214, tmp212,
	cmp	r4, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1494, tmp214
.L385:
	mov	r1, #180	@ tmp220,
	str	r2, [r6, #0]	@ prephitmp.1494, <variable>.RetType
	mla	r3, r1, r8, r3	@ tmp221, tmp220, VdhId, tmp290
	cmp	r4, #0	@ VidStd,
	cmpne	r4, #15	@, VidStd,
	ldr	ip, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, ip, #-16777216	@ D.41455, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.41455, D.41455,
	str	r2, [r6, #8]	@ D.41455, <variable>.DecSliceNum
	bne	.L386	@,
	cmp	r7, #1	@ LowdlyFlag,
	beq	.L405	@,
	ldrb	lr, [r3, #19]	@ zero_extendqisi2	@ tmp252, <variable>.SedSta
	and	r3, lr, #3	@ tmp254, tmp252,
	cmp	r3, #2	@ tmp254,
	beq	.L406	@,
.L386:
	cmp	r2, #128	@ D.41455,
	movhi	r3, #0	@ tmp260,
	strhi	r3, [r6, #8]	@ tmp260, <variable>.DecSliceNum
	ldr	r7, [r5, #28]	@ D.41477, <variable>.MsgSlotAddr
	mov	r0, r7	@, D.41477
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.41479,
	beq	.L407	@,
	ldr	r3, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r8, r8, asl #11	@ tmp292, VdhId,
	movw	r4, #:lower16:g_UpMsg	@ tmp289,
	movt	r4, #:upper16:g_UpMsg	@ tmp289,
	add	r5, r4, r8	@ tmp265, tmp289, tmp292
	mov	r2, r3, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp265
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r6, #8]	@ temp.1539, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1539,
	beq	.L390	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1539
	sub	lr, ip, #1	@ tmp295, temp.1539,
	add	r3, r6, #4	@ ivtmp.1524, pDecReport,
	strh	r2, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, lr, r0	@ tmp297, tmp295,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1521, tmp265,
	strh	r1, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L390	@,
	cmp	r2, #0	@ tmp297,
	beq	.L391	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1539
	strh	r2, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1521, ivtmp.1521,
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1524, ivtmp.1524,
	bcs	.L390	@,
.L391:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r1, r5, #16	@ tmp299, ivtmp.1521,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1539
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp300, ivtmp.1524,
	ldrh	r2, [r5, #8]	@, g_UpMsg
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r1, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r1, #16	@ ivtmp.1521, tmp299,
	ldrh	r3, [r1, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1524, tmp300,
	bcc	.L391	@,
.L390:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.41493
	bne	.L408	@,
.L380:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L382:
	mov	r7, #1	@ LowdlyFlag,
	b	.L383	@
.L408:
	ldr	r2, [r6, #8]	@, <variable>.DecSliceNum
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.41477
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r0, ip, asl #2	@ tmp276, <variable>.DecSliceNum,
	cmp	r0, #3	@ tmp276,
	beq	.L393	@,
	add	r4, r4, r8	@ ivtmp.1511, tmp289, tmp292
	mov	r5, #0	@ i_cnt,
.L394:
	ldr	lr, [r4, #4]	@ tmp281, g_UpMsg
	mov	r2, r5	@, i_cnt
	ldr	ip, [r4, #8]	@ tmp282, g_UpMsg
	mov	r0, #6	@,
	ldr	r7, [r4, #12]	@ tmp283, g_UpMsg
	movw	r1, #:lower16:.LC36	@,
	ldr	r3, [r4, #0]	@ tmp280, g_UpMsg
	movt	r1, #:upper16:.LC36	@,
	str	lr, [sp, #0]	@ tmp281,
	add	r5, r5, #4	@ i_cnt, i_cnt,
	str	ip, [sp, #4]	@ tmp282,
	add	r4, r4, #16	@ ivtmp.1511, ivtmp.1511,
	str	r7, [sp, #8]	@ tmp283,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r1, r2, asl #2	@ tmp284, <variable>.DecSliceNum,
	sub	r3, r1, #3	@ tmp286, tmp284,
	cmp	r3, r5	@ tmp286, i_cnt
	bhi	.L394	@,
.L393:
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.41426,
	b	.L380	@
.L405:
	ldr	r3, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r3, #21, #2	@ tmp240, <variable>.SedSta,,
	cmp	r3, #2	@ tmp240,
	bne	.L386	@,
	mov	r0, #0	@ movhi	@,
	str	r7, [r6, #8]	@ LowdlyFlag, <variable>.DecSliceNum
	strh	r0, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r0, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.41426,
	b	.L380	@
.L406:
	mov	ip, #0	@ movhi	@,
	mov	r2, #1	@ tmp255,
	strh	ip, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.41426,
	strh	ip, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [r6, #8]	@ tmp255, <variable>.DecSliceNum
	b	.L380	@
.L407:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1861	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41426,
	b	.L380	@
.L404:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1796	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41426,
	b	.L380	@
.L403:
	mov	r0, r6	@, pDecReport
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1795	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r3, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41426,
	b	.L380	@
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareDec
	.type	VDMHAL_V200R004_PrepareDec, %function
VDMHAL_V200R004_PrepareDec:
	.fnstart
.LFB1370:
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
	subs	r5, r1, #0	@ pDecParam, pDecParam
	mov	r4, r0	@ VidStd, VidStd
	mov	r6, r2	@ VdhId, VdhId
	bne	.L430	@,
.L410:
	mvn	r0, #0	@ D.40928,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L430:
	cmp	r0, #6	@ VidStd,
	movw	r7, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r7, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	moveq	r1, #1	@,
	movne	r1, #0	@,
	ldr	r0, [r7, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	cmp	r6, #0	@ VdhId,
	bne	.L431	@,
	ldr	r0, [r7, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L413:
	cmp	r4, #15	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L410	@
.L427:
	.word	.L426
	.word	.L417
	.word	.L418
	.word	.L419
	.word	.L410
	.word	.L420
	.word	.L421
	.word	.L410
	.word	.L422
	.word	.L423
	.word	.L424
	.word	.L424
	.word	.L424
	.word	.L425
	.word	.L410
	.word	.L426
.L431:
	cmp	r6, #1	@ VdhId,
	bne	.L413	@,
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp145,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp145,
	mov	r1, r6	@, VdhId
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r2, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L413	@
.L426:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	H264HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L425:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	VP8HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L424:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	VP6HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L423:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	RV9HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L422:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	RV8HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L421:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	AVSHAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L420:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	DIVX3HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L419:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	MP2HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L418:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	MP4HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L417:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	bl	VC1HAL_V200R004_StartDec	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
	.align	2
	.global	VDMHAL_V200R004_ArrangeMem
	.type	VDMHAL_V200R004_ArrangeMem, %function
VDMHAL_V200R004_ArrangeMem:
	.fnstart
.LFB1362:
	@ args = 20, pretend = 0, frame = 32
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
	subs	r4, r0, #0	@ MemAddr, MemAddr
	str	r1, [fp, #-52]	@ MemSize, %sfp
	mov	r5, r2	@ Width, Width
	mov	r6, r3	@ Height, Height
	ldr	r8, [fp, #12]	@ UserDec, UserDec
	ldr	r7, [fp, #20]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L482	@,
	cmp	r8, #1	@ UserDec,
	beq	.L483	@,
	cmp	r3, #31	@ Height,
	movgt	r0, #0	@, tmp200
	movle	r0, #1	@, tmp200
	sub	r3, r2, #32	@ tmp195, Width,
	movw	lr, #8160	@ tmp197,
	cmp	r3, lr	@ tmp195, tmp197
	movls	ip, r0	@, tmp203, tmp200
	orrhi	ip, r0, #1	@,, tmp203, tmp200
	cmp	ip, #0	@ tmp203,
	bne	.L438	@,
	cmp	r6, #8192	@ Height,
	bgt	.L438	@,
.L437:
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L484	@,
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #628	@,
	ldr	sl, [fp, #4]	@ PmvNum, PmvNum
	bl	__memzero	@
	add	r1, r6, #15	@ tmp211, Height,
	add	r2, r5, #15	@ tmp210, Width,
	movw	r0, #:lower16:g_not_direct_8x8_inference_flag	@ tmp219,
	movt	r0, #:upper16:g_not_direct_8x8_inference_flag	@ tmp219,
	mov	r2, r2, asr #4	@ ImgWidthInMb, tmp210,
	mov	r1, r1, asr #4	@ ImgHeightInMb, tmp211,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	sl, #20	@ PmvNum,
	movge	sl, #20	@ PmvNum.1628,
	mul	r3, r2, r1	@ tmp221, ImgWidthInMb, ImgHeightInMb
	cmp	r1, #36	@ ImgHeightInMb,
	cmple	r2, #45	@, ImgWidthInMb,
	movle	r6, #64	@, ColMbSize,
	movgt	r6, #32	@, ColMbSize,
	cmp	ip, #1	@ g_not_direct_8x8_inference_flag,
	movne	ip, r6	@ ColMbSize, ColMbSize
	moveq	ip, #64	@ ColMbSize,
	mul	r0, ip, r3	@ tmp222, ColMbSize, tmp221
	ldr	ip, [fp, #-52]	@, %sfp
	add	r6, r0, #127	@ tmp223, tmp222,
	bic	r6, r6, #127	@ PmvSlotLen, tmp223,
	mul	r3, sl, r6	@ PmvPoolSize, PmvNum.1628, PmvSlotLen
	cmp	r3, ip	@ PmvPoolSize,
	bge	.L485	@,
	mov	r2, r2, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movw	r0, #2047	@ tmp232,
	add	r9, r2, #255	@ tmp229, ImgWidthInPixAln,
	sub	ip, r2, #1	@ tmp231, ImgWidthInPixAln,
	bic	r9, r9, #255	@ SlotWidth, tmp229,
	cmp	ip, r0	@ tmp231, tmp232
	str	sl, [r7, #624]	@ PmvNum.1628, <variable>.ValidPMVNum
	mov	lr, r6, asr #1	@ tmp228, PmvSlotLen,
	mov	sl, r9, asl #4	@ tmp230, SlotWidth,
	str	lr, [r7, #620]	@ tmp228, <variable>.HafPmvOffset
	str	sl, [r7, #0]	@ tmp230, <variable>.VahbStride
	bhi	.L486	@,
.L444:
	mov	r2, #16	@ level,
.L446:
	cmp	r8, #1	@ UserDec,
	mov	sl, r1, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	addeq	r1, sl, r1, asl #5	@, tmp244, ImgHeightInPixAln, ImgHeightInMb,
	muleq	r5, r9, r1	@ ImgSlotLen, SlotWidth, tmp244
	beq	.L449	@,
	adds	r5, sl, #31	@ tmp245, ImgHeightInPixAln,
	add	lr, r9, r9, asl #1	@, tmp257, SlotWidth, SlotWidth,
	addmi	r5, sl, #62	@, tmp246, ImgHeightInPixAln,
	mov	ip, lr, asl #5	@ tmp258, tmp257,
	mov	r1, r5, asr #5	@ tmp248, tmp246,
	add	r0, r1, r1, asl #1	@, tmp251, tmp248, tmp248,
	mul	r5, r1, ip	@ tmp259, tmp248, tmp258
	mov	lr, r0, asl #5	@ tmp252, tmp251,
	mul	r0, r2, lr	@ tmp253, level, tmp252
	mov	r1, r5, asr #1	@ tmp263, tmp259,
	add	r5, r1, r0, lsr #1	@, ImgSlotLen, tmp263, tmp253,
.L449:
	ldr	r1, [fp, #16]	@, ChanID
	cmp	r1, #0	@,
	blt	.L450	@,
	mov	r0, r1	@,
	str	r2, [fp, #-56]	@,
	str	r3, [fp, #-60]	@,
	bl	VCTRL_GetChanWidth	@
	mov	r3, r0	@ ChanWidth,
	ldr	r0, [fp, #16]	@, ChanID
	str	r3, [fp, #-64]	@,
	bl	VCTRL_GetChanHeight	@
	ldr	r1, [fp, #-64]	@,
	ldr	r2, [fp, #-56]	@,
	ldr	r3, [fp, #-60]	@,
	cmn	r0, #1	@ ChanHeight,
	cmnne	r1, #1	@, ChanWidth,
	beq	.L487	@,
	add	r1, r1, #15	@ tmp272, ChanWidth,
	add	r0, r0, #15	@, ChanHeight,
	bic	r1, r1, #15	@ ChanImgWidthInPixAln, tmp272,
	str	r0, [fp, #-72]	@, %sfp
	sub	r0, r1, #1	@ tmp277, ChanImgWidthInPixAln,
	movw	ip, #2047	@ tmp278,
	cmp	r0, ip	@ tmp277, tmp278
	ldr	r0, [fp, #-72]	@, %sfp
	add	lr, r1, #255	@, ChanImgWidthInPixAln,
	str	lr, [fp, #-48]	@, %sfp
	bic	lr, r0, #15	@ ChanImgHeightInPixAln,,
	ldr	r0, [fp, #-48]	@, %sfp
	bic	r0, r0, #255	@,,
	str	r0, [fp, #-48]	@, %sfp
	bls	.L452	@,
	sub	r0, r1, #2048	@ tmp279, ChanImgWidthInPixAln,
	sub	r0, r0, #1	@ tmp279, tmp279,
	cmp	r0, ip	@ tmp279, tmp278
	movls	r1, #32	@ Chanlevel,
	bhi	.L488	@,
.L454:
	cmp	r8, #1	@ UserDec,
	beq	.L489	@,
.L456:
	adds	ip, lr, #31	@ tmp291, ChanImgHeightInPixAln,
	addmi	ip, lr, #62	@, tmp292, ChanImgHeightInPixAln,
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r0, ip, asr #5	@ tmp294, tmp292,
	mul	ip, r0, lr	@ tmp301, tmp294,
	add	lr, r0, r0, asl #1	@, tmp297, tmp294, tmp294,
	mov	r0, lr, asl #5	@ tmp298, tmp297,
	mul	r1, r1, r0	@ tmp299, Chanlevel, tmp298
	add	ip, ip, ip, asl #1	@, tmp304, tmp301, tmp301,
	mov	lr, ip, asl #5	@ tmp305, tmp304,
	mov	r0, lr, asr #1	@ tmp309, tmp305,
	add	r1, r0, r1, lsr #1	@, ChanSlotLen, tmp309, tmp299,
.L457:
	cmp	r1, r5	@ ChanSlotLen, ImgSlotLen
	blt	.L490	@,
.L450:
	adds	ip, sl, #31	@ tmp312, ImgHeightInPixAln,
	ldr	r0, [fp, #8]	@, FrameNum
	addmi	ip, sl, #62	@, tmp313, ImgHeightInPixAln,
	cmp	r0, #0	@,
	mov	r1, ip, asr #5	@ tmp315, tmp313,
	streq	r0, [r7, #276]	@, <variable>.ValidFrameNum
	mul	r9, r9, r1	@ tmp317, SlotWidth, tmp315
	mla	lr, r1, r2, r9	@ tmp318, tmp315, level, tmp317
	mov	r2, lr, asl #5	@ tmp319, tmp318,
	str	r2, [r7, #264]	@ tmp319, <variable>.ChromOffset
	beq	.L459	@,
	add	r2, r4, #1020	@ tmp321, MemAddr,
	ldr	lr, [fp, #-52]	@, %sfp
	add	sl, r2, #3	@ tmp321, tmp321,
	mov	r1, r5	@, ImgSlotLen
	bic	r0, sl, #1020	@ tmp323, tmp321,
	rsb	r3, r3, lr	@ tmp325, PmvPoolSize,
	bic	r8, r0, #3	@ tmp323, tmp323,
	ldr	sl, [fp, #8]	@ D.40565, FrameNum
	rsb	r8, r4, r8	@ Offset, MemAddr, tmp323
	rsb	r0, r8, r3	@, Offset, tmp325
	cmp	sl, #64	@ D.40565,
	movge	sl, #64	@ D.40565,
	bl	__aeabi_idiv	@
	cmp	sl, r0	@ D.40565,
	movlt	r0, sl	@ D.40565, D.40565
	movge	r0, r0	@ D.40565,
	str	r0, [r7, #276]	@ D.40565, <variable>.ValidFrameNum
	cmp	r0, #0	@ D.40565,
	beq	.L459	@,
	ble	.L461	@,
	cmp	r0, #1	@ D.40565,
	add	r1, r8, r4	@ ivtmp.1615, Offset, MemAddr
	sub	r3, r0, #1	@ tmp343, D.40565,
	str	r1, [r7, #8]	@ ivtmp.1615, <variable>.FrameAddr
	and	ip, r3, #1	@ tmp345, tmp343,
	add	r2, r1, r5	@ ivtmp.1615, ivtmp.1615, ImgSlotLen
	add	r3, r7, #4	@ ivtmp.1619, pVdmMemArrange,
	mov	r1, #1	@ i,
	ble	.L461	@,
	cmp	ip, #0	@ tmp345,
	beq	.L462	@,
	mov	r1, #2	@ i,
	cmp	r0, r1	@ D.40565, i
	str	r2, [r3, #8]	@ ivtmp.1615, <variable>.FrameAddr
	add	r2, r2, r5	@ ivtmp.1615, ivtmp.1615, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1619, ivtmp.1619,
	ble	.L461	@,
.L462:
	add	r1, r1, #2	@ i, i,
	add	ip, r3, #4	@ tmp347, ivtmp.1619,
	cmp	r0, r1	@ D.40565, i
	add	sl, r2, r5	@ ivtmp.1615, ivtmp.1615, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1615, <variable>.FrameAddr
	add	r2, sl, r5	@ ivtmp.1615, ivtmp.1615, ImgSlotLen
	str	sl, [ip, #8]	@ ivtmp.1615, <variable>.FrameAddr
	add	r3, ip, #4	@ ivtmp.1619, tmp347,
	bgt	.L462	@,
.L461:
	mla	r0, r0, r5, r8	@ Offset.1638, D.40565, ImgSlotLen, Offset
	ldr	sl, [r7, #624]	@ D.40576, <variable>.ValidPMVNum
	cmp	sl, #0	@ D.40576,
	add	r2, r0, r4	@ MemAddr.1639, Offset.1638, MemAddr
	ble	.L463	@,
	mov	r1, #1	@ i.1630,
	cmp	r1, sl	@ i.1630, D.40576
	sub	lr, sl, #1	@ tmp338, D.40576,
	str	r2, [r7, #540]	@ MemAddr.1639, <variable>.PMVAddr
	and	ip, lr, r1	@ tmp340, tmp338,
	add	r2, r2, r6	@ ivtmp.1608, MemAddr.1639, PmvSlotLen
	add	r3, r7, #4	@ ivtmp.1612, pVdmMemArrange,
	bge	.L463	@,
	cmp	ip, #0	@ tmp340,
	beq	.L464	@,
	mov	r1, #2	@ i.1630,
	cmp	r1, sl	@ i.1630, D.40576
	str	r2, [r3, #540]	@ ivtmp.1608, <variable>.PMVAddr
	add	r2, r2, r6	@ ivtmp.1608, ivtmp.1608, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.1612, ivtmp.1612,
	bge	.L463	@,
.L464:
	add	r1, r1, #2	@ i.1630, i.1630,
	add	ip, r3, #4	@ tmp342, ivtmp.1612,
	cmp	r1, sl	@ i.1630, D.40576
	add	r4, r2, r6	@ ivtmp.1608, ivtmp.1608, PmvSlotLen
	str	r2, [r3, #540]	@ ivtmp.1608, <variable>.PMVAddr
	add	r2, r4, r6	@ ivtmp.1608, ivtmp.1608, PmvSlotLen
	str	r4, [ip, #540]	@ ivtmp.1608, <variable>.PMVAddr
	add	r3, ip, #4	@ ivtmp.1612, tmp342,
	blt	.L464	@,
.L463:
	mla	r6, sl, r6, r0	@ tmp336, D.40576, PmvSlotLen, Offset.1638
	mov	r0, #0	@ D.40433,
	str	r6, [r7, #4]	@ tmp336, <variable>.TotalMemUsed
.L434:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L486:
	sub	lr, r2, #2048	@ tmp233, ImgWidthInPixAln,
	sub	sl, lr, #1	@ tmp233, tmp233,
	cmp	sl, r0	@ tmp233, tmp232
	movls	r2, #32	@ level,
	bls	.L446	@,
	sub	sl, r2, #4096	@ tmp236, ImgWidthInPixAln,
	sub	ip, sl, #1	@ tmp236, tmp236,
	cmp	ip, r0	@ tmp236, tmp232
	movls	r2, #48	@ level,
	bls	.L446	@,
	sub	r2, r2, #6144	@ tmp239, ImgWidthInPixAln,
	sub	r2, r2, #1	@ tmp239, tmp239,
	cmp	r2, r0	@ tmp239, tmp232
	movls	r2, #64	@ level,
	bls	.L446	@,
	b	.L444	@
.L483:
	cmp	r3, #31	@ Height,
	movgt	r2, #0	@, tmp188
	movle	r2, #1	@, tmp188
	sub	r1, r5, #32	@ tmp183, Width,
	movw	r0, #8160	@ tmp185,
	cmp	r1, r0	@ tmp183, tmp185
	movls	r3, r2	@, tmp191, tmp188
	orrhi	r3, r2, #1	@,, tmp191, tmp188
	cmp	r3, #0	@ tmp191,
	bne	.L436	@,
	cmp	r6, #8192	@ Height,
	ble	.L437	@,
.L436:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #313	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L488:
	sub	r0, r1, #4096	@ tmp282, ChanImgWidthInPixAln,
	sub	r0, r0, #1	@ tmp282, tmp282,
	cmp	r0, ip	@ tmp282, tmp278
	movls	r1, #48	@ Chanlevel,
	bls	.L454	@,
	sub	r1, r1, #6144	@ tmp285, ChanImgWidthInPixAln,
	sub	r1, r1, #1	@ tmp285, tmp285,
	cmp	r1, ip	@ tmp285, tmp278
	movls	r1, #64	@ Chanlevel,
	bls	.L454	@,
.L452:
	cmp	r8, #1	@ UserDec,
	mov	r1, #16	@ Chanlevel,
	bne	.L456	@,
.L489:
	ldr	ip, [fp, #-48]	@, %sfp
	add	lr, lr, lr, asl #1	@, tmp290, ChanImgHeightInPixAln, ChanImgHeightInPixAln,
	mul	r1, ip, lr	@ ChanSlotLen,, tmp290
	b	.L457	@
.L459:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #469	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC40	@,
	movt	r3, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L490:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #452	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC39	@,
	movt	r3, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L438:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #317	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L485:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #348	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L482:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #303	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L484:
	mov	r0, r7	@, pVdmMemArrange
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #319	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
.L487:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40433,
	b	.L434	@
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem, .-VDMHAL_V200R004_ArrangeMem
	.align	2
	.global	VDMHAL_V200R004_OpenHAL
	.type	VDMHAL_V200R004_OpenHAL, %function
VDMHAL_V200R004_OpenHAL:
	.fnstart
.LFB1360:
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
	rsbs	sl, r0, #1	@ tmp177, MemBaseAddr
	movcc	sl, #0	@ tmp177
	cmp	r1, #655360	@ Size,
	orrlt	sl, sl, #1	@,, tmp180, tmp177
	mov	r6, r0	@ MemBaseAddr, MemBaseAddr
	cmp	sl, #0	@ tmp180,
	mov	r8, r1	@ Size, Size
	mov	r7, r2	@ VdhId, VdhId
	bne	.L513	@,
	cmp	r2, #1	@ VdhId,
	bhi	.L514	@,
	movw	r1, #1148	@ tmp186,
	movw	r5, #:lower16:g_HwMem	@ tmp370,
	mul	r9, r1, r2	@ tmp185, tmp186, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp370,
	add	r4, r5, r9	@ __p, tmp370, tmp185
	mov	r0, r4	@, __p
	bl	__memzero	@
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	mov	r3, r0	@ D.40312,
	mov	r2, r0	@, D.40312
	str	r3, [r5, r9]	@ D.40312, <variable>.pVdmRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:-121241600	@,
	movt	r0, #:upper16:-121241600	@,
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	mov	ip, r0	@ D.40316,
	mov	r2, r0	@, D.40316
	str	ip, [r4, #8]	@ D.40316, <variable>.pBpdRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	r1, r6, #1020	@ tmp202, MemBaseAddr,
	add	r3, r1, #3	@ tmp202, tmp202,
	add	ip, r8, r6	@ tmp217, Size, MemBaseAddr
	bic	r2, r3, #1020	@ D.40321, tmp202,
	mov	r3, r4	@ ivtmp.1674, __p
	bic	r2, r2, #3	@ D.40321, D.40321,
	mov	r1, #1024	@ tmp225,
	rsb	r0, r2, ip	@ tmp218, D.40321, tmp217
	str	r2, [r4, #16]	@ D.40321, <variable>.HALMemBaseAddr
	str	r0, [r4, #20]	@ tmp218, <variable>.HALMemSize
	str	r1, [r4, #24]	@ tmp225, <variable>.VahbStride
.L496:
	add	r0, sl, #1024	@ tmp371, ivtmp.1671,
	add	lr, sl, r2	@ tmp235, ivtmp.1671, D.40321
	add	sl, sl, #3072	@ ivtmp.1671, ivtmp.1671,
	add	r1, r3, #4	@ tmp372, ivtmp.1674,
	cmp	sl, #144384	@ ivtmp.1671,
	add	ip, r0, #1024	@ ivtmp.1671, tmp371,
	str	lr, [r3, #28]	@ tmp235, <variable>.MsgSlotAddr
	add	ip, ip, r2	@ tmp378, ivtmp.1671, D.40321
	add	lr, r0, r2	@ tmp375, tmp371, D.40321
	str	ip, [r1, #32]	@ tmp378, <variable>.MsgSlotAddr
	add	r3, r3, #12	@ ivtmp.1674, ivtmp.1674,
	str	lr, [r1, #28]	@ tmp375, <variable>.MsgSlotAddr
	bne	.L496	@,
	movw	lr, #:lower16:177151	@ D.40328,
	movt	lr, #:upper16:177151	@ D.40328,
	add	r1, r2, lr	@ D.40328, D.40321, D.40328
	movw	ip, #1148	@ tmp239,
	bic	r0, r1, #32512	@ PhyAddr.1675, D.40328,
	rsb	r2, r6, #4096	@ tmp324, MemBaseAddr,
	mla	r5, ip, r7, r5	@ tmp240, tmp239, VdhId, tmp370
	bic	r3, r0, #255	@ PhyAddr.1675, PhyAddr.1675,
	add	r1, r3, #299008	@ PhyAddr.1681, PhyAddr.1675,
	add	lr, r3, #83968	@ PhyAddr.1678, PhyAddr.1675,
	add	r0, r1, #52224	@ PhyAddr.1684, PhyAddr.1681,
	add	ip, r1, #19456	@ PhyAddr.1683, PhyAddr.1681,
	add	r2, r2, r0	@ D.40329, tmp324, PhyAddr.1684
	add	r6, r3, #5120	@ PhyAddr.1676, PhyAddr.1675,
	cmp	r8, r2	@ Size, D.40329
	mov	sl, #141	@ tmp242,
	str	r6, [r5, #1080]	@ PhyAddr.1676, <variable>.SedTopAddr
	add	r6, r3, #129024	@ PhyAddr.1679, PhyAddr.1675,
	str	sl, [r5, #1052]	@ tmp242, <variable>.ValidMsgSlotNum
	add	sl, r3, #38912	@ PhyAddr.1677, PhyAddr.1675,
	str	r6, [r5, #1096]	@ PhyAddr.1679, <variable>.DblkTopAddr
	add	r6, r1, #3072	@ PhyAddr.1682, PhyAddr.1681,
	str	sl, [r5, #1084]	@ PhyAddr.1677, <variable>.PmvTopAddr
	add	sl, r3, #196608	@ PhyAddr.1680, PhyAddr.1675,
	str	lr, [r5, #1092]	@ PhyAddr.1678, <variable>.ItransTopAddr
	str	sl, [r5, #1100]	@ PhyAddr.1680, <variable>.PpfdBufAddr
	movw	sl, #799	@ tmp293,
	str	r6, [r5, #1116]	@ PhyAddr.1682, <variable>.BitplaneInfoAddr
	str	sl, [r5, #1104]	@ tmp293, <variable>.PpfdBufLen
	str	ip, [r5, #1124]	@ PhyAddr.1683, <variable>.Vp8TabAddr
	str	r3, [r5, #1076]	@ PhyAddr.1675, <variable>.H264MnAddr
	str	lr, [r5, #1088]	@ PhyAddr.1678, <variable>.RcnTopAddr
	str	r1, [r5, #1112]	@ PhyAddr.1681, <variable>.IntensityConvTabAddr
	str	ip, [r5, #1128]	@ PhyAddr.1683, <variable>.DnrMbInfoAddr
	str	r0, [r5, #1120]	@ PhyAddr.1684, <variable>.Vp6TabAddr
	blt	.L497	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, __p
	bl	H264HAL_V200R004_InitHal	@
	mov	r1, r7	@, VdhId
	subs	r6, r0, #0	@ D.40334,
	ldr	r0, [r5, #1060]	@, <variable>.MPEG2TabAddr
	mvnne	r6, #0	@, Ret,
	bl	MP2HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1064]	@, <variable>.MPEG4TabAddr
	mvnne	r6, #0	@, Ret,
	bl	MP4HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1068]	@, <variable>.AVSTabAddr
	mvnne	r6, #0	@, Ret,
	bl	AVSHAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	mvnne	r6, #0	@, Ret,
	bl	RV8HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	mvnne	r6, #0	@, Ret,
	bl	RV9HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1072]	@, <variable>.VC1TabAddr
	mvnne	r6, #0	@, Ret,
	bl	VC1HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1120]	@, <variable>.Vp6TabAddr
	mvnne	r6, #0	@, Ret,
	bl	VP6HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r5, #1124]	@, <variable>.Vp8TabAddr
	moveq	r5, r6	@, Ret, Ret
	mvnne	r5, #0	@, Ret,
	bl	VP8HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	mov	r0, r4	@, __p
	moveq	r4, r5	@, Ret, Ret
	mvnne	r4, #0	@, Ret,
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@,
	moveq	r0, r4	@, Ret, Ret
	mvnne	r0, #0	@, Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L514:
	mov	r0, sl	@, tmp180
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L497:
	mov	r3, r8	@, Size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L513:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #94	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC41	@,
	movt	r3, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V200R004_OpenHAL, .-VDMHAL_V200R004_OpenHAL
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
	.ascii	"VdhId is wrong! VDMHAL_V200R003MPW_StartHwDecode\012"
	.ascii	"\000"
	.space	2
.LC13:
	.ascii	"VdhId is wrong! VDMHAL_V300_CfgRpReg\012\000"
	.space	2
.LC14:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC15:
	.ascii	"can not map repair msg virtual address!\000"
.LC16:
	.ascii	"ValidGroupNum=%d out of range!\012\000"
.LC17:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_PrepareRepair\012\000"
	.space	1
.LC18:
	.ascii	"vdm register virtual address not mapped, VDMHAL_V20"
	.ascii	"0R003_PrepareRepair failed!\012\000"
.LC19:
	.ascii	"FIRST_REPAIR Parameter Error!\012\000"
	.space	1
.LC20:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC21:
	.ascii	"SECOND_REPAIR Parameter Error!\012\000"
.LC22:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_BackupInfo\012\000"
.LC23:
	.ascii	"can NOT map vir addr for up-msg\000"
.LC24:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_CheckInt\012\000"
	.space	2
.LC25:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_EnableInt\012\000"
	.space	1
.LC26:
	.ascii	"VdhId is wrong! VDMHAL_V200_MaskInt\012\000"
	.space	3
.LC27:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_ClearIntState\012\000"
	.space	1
.LC28:
	.ascii	"VDMHAL_V200R004_ResetVdm: map vdm register fail, vi"
	.ascii	"r(reg) = (%p)\012\000"
	.space	2
.LC29:
	.ascii	"GLB Reset failed!\012\000"
	.space	1
.LC30:
	.ascii	"VdhId is wrong! VDMHAL_V200R004_ResetVdm\012\000"
	.space	2
.LC31:
	.ascii	"VDH: %d VDMHAL_V200R004_ResetVdm ERROR!!!\012\000"
	.space	1
.LC32:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_CloseHAL\012\000"
	.space	2
.LC33:
	.ascii	"'pDecReport' is NULL\000"
	.space	3
.LC34:
	.ascii	"\012***** UpMsg DecSliceNum=%d\012\000"
	.space	3
.LC35:
	.ascii	"\012***** Up Msg (phy addr: %#8x) *****\012\000"
	.space	2
.LC36:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC37:
	.ascii	"\012***** Up Msg print finished *****\012\000"
.LC38:
	.ascii	"VDMHAL_V200R003_ArrangeMem get ChanWidth/ChanHeight"
	.ascii	" failed!\012\000"
	.space	3
.LC39:
	.ascii	"ImgSlotLen > ChanSlotLen\000"
	.space	3
.LC40:
	.ascii	"cann't allocate img slot\000"
	.space	3
.LC41:
	.ascii	"VDMHAL_V200R004_OpenHAL: input error!\000"
	.space	2
.LC42:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_OpenHAL\012\000"
	.space	3
.LC43:
	.ascii	"g_VdmRegVirAddr, g_VdmResetVirAddr = %p\012\000"
	.space	3
.LC44:
	.ascii	"BPDRegVirAddr %p\012\000"
	.space	2
.LC45:
	.ascii	"mem is enough!\012\000"
.LC46:
	.ascii	"!!!!!! HAL memory not enouph! need %d, have %d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
