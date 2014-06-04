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
	.file	"drv_advca_common.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca
@ -Idrivers/msp/advca
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca/V200
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca/V300
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca/ca_otp
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca/ca_otp/ca_otpv100
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/advca/ca_otp/ca_otpv200
@ -I/drv/include -I/include -I/include -I/include -I/drv/include -I/include
@ -I/drv -I/drv/V200 -I/drv/V300 -I/drv/ca_otp -I/drv/ca_otp/ca_otpv100
@ -I/drv/ca_otp/ca_otpv200 -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DSDK_SECURITY_ARCH_VERSION_V3
@ -DCHIP_TYPE_hi3716cv200 -DSDK_VERSION=HiSTBLinuxV100R002C00SPC020
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT
@ -DHI_SCI_SUPPORT -DHI_VI_SUPPORT -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(drv_advca_common)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./.drv_advca_common.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./drv_advca_common.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./drv_advca_common.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fverbose-asm
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
	.global	DRV_ADVCA_GetRevision
	.type	DRV_ADVCA_GetRevision, %function
DRV_ADVCA_GetRevision:
	.fnstart
.LFB788:
	@ args = 0, pretend = 0, frame = 8
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
	subs	r5, r0, #0	@ u8Revision, u8Revision
	mov	r3, #0	@ tmp136,
	str	r3, [fp, #-24]	@ tmp136, u32VendorId
	beq	.L8	@,
	sub	r0, fp, #24	@,,
	bl	DRV_ADVCA_GetVendorId	@
	subs	r4, r0, #0	@ ret,
	bne	.L9	@,
	ldr	r3, [fp, #-24]	@ u32VendorId, u32VendorId
	mov	r0, r5	@, u8Revision
	cmp	r3, #1	@ u32VendorId,
	movweq	r2, #:lower16:.LC2	@,
	movwne	r2, #:lower16:.LC2	@,
	moveq	r1, #18	@,
	movteq	r2, #:upper16:.LC2	@,
	ldreq	r3, .L10	@,
	movtne	r2, #:upper16:.LC2	@,
	movne	r1, #18	@,
	ldrne	r3, .L10+4	@,
	bl	ca_snprintf	@
.L3:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L9:
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r3, #149	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r4, #:lower16:.LC1	@ tmp141,
	movt	r4, #:upper16:.LC1	@ tmp141,
	str	r4, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L3	@
.L8:
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r3, #142	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	ip, #:lower16:.LC0	@ tmp138,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC0	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	b	.L3	@
.L11:
	.align	2
.L10:
	.word	.LANCHOR0+24
	.word	.LANCHOR0+44
	.fnend
	.size	DRV_ADVCA_GetRevision, .-DRV_ADVCA_GetRevision
	.align	2
	.global	DRV_ADVCA_Wait
	.type	DRV_ADVCA_Wait, %function
DRV_ADVCA_Wait:
	.fnstart
.LFB787:
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
	bl	ca_udelay	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_Wait, .-DRV_ADVCA_Wait
	.align	2
	.global	DRV_ADVCA_SysReadReg
	.type	DRV_ADVCA_SysReadReg, %function
DRV_ADVCA_SysReadReg:
	.fnstart
.LFB786:
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
	sub	r1, fp, #16	@,,
	bl	CA_readReg	@
	ldr	r0, [fp, #-16]	@, val
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	DRV_ADVCA_SysReadReg, .-DRV_ADVCA_SysReadReg
	.align	2
	.global	DRV_ADVCA_ReadReg
	.type	DRV_ADVCA_ReadReg, %function
DRV_ADVCA_ReadReg:
	.fnstart
.LFB784:
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
	movw	lr, #:lower16:.LANCHOR1	@ tmp135,
	movt	lr, #:upper16:.LANCHOR1	@ tmp135,
	sub	r1, fp, #16	@,,
	ldr	ip, [lr, #0]	@ g_CaVirAddr, g_CaVirAddr
	add	r2, ip, #122683392	@ tmp136, g_CaVirAddr,
	add	r3, r2, #458752	@ tmp136, tmp136,
	add	r0, r3, r0	@, tmp136, addr
	bl	CA_readReg	@
	ldr	r0, [fp, #-16]	@, val
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	DRV_ADVCA_ReadReg, .-DRV_ADVCA_ReadReg
	.align	2
	.global	DRV_ADVCA_SysWriteReg
	.type	DRV_ADVCA_SysWriteReg, %function
DRV_ADVCA_SysWriteReg:
	.fnstart
.LFB785:
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
	bl	CA_writeReg	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_SysWriteReg, .-DRV_ADVCA_SysWriteReg
	.align	2
	.global	DRV_ADVCA_WriteReg
	.type	DRV_ADVCA_WriteReg, %function
DRV_ADVCA_WriteReg:
	.fnstart
.LFB783:
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
	movw	lr, #:lower16:.LANCHOR1	@ tmp135,
	movt	lr, #:upper16:.LANCHOR1	@ tmp135,
	ldr	ip, [lr, #0]	@ g_CaVirAddr, g_CaVirAddr
	add	r2, ip, #122683392	@ tmp136, g_CaVirAddr,
	add	r3, r2, #458752	@ tmp136, tmp136,
	add	r0, r3, r0	@, tmp136, addr
	bl	CA_writeReg	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_WriteReg, .-DRV_ADVCA_WriteReg
	.align	2
	.global	DRV_ADVCA_RegisterUnMap
	.type	DRV_ADVCA_RegisterUnMap, %function
DRV_ADVCA_RegisterUnMap:
	.fnstart
.LFB782:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp134,
	movt	r4, #:upper16:.LANCHOR1	@ tmp134,
	ldr	r0, [r4, #4]	@ g_pCaReg.233, g_pCaReg
	cmp	r0, #0	@ g_pCaReg.233,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	bl	ca_iounmap	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #4]	@ tmp136, g_pCaReg
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_RegisterUnMap, .-DRV_ADVCA_RegisterUnMap
	.align	2
	.global	DRV_ADVCA_RegisterMap
	.type	DRV_ADVCA_RegisterMap, %function
DRV_ADVCA_RegisterMap:
	.fnstart
.LFB781:
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
	movw	r0, #:lower16:-123142144	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-123142144	@,
	bl	ca_ioremap_nocache	@
	cmp	r0, #0	@ ptr
	movwne	r3, #:lower16:.LANCHOR1	@ tmp135,
	movtne	r3, #:upper16:.LANCHOR1	@ tmp135,
	strne	r0, [r3, #4]	@ ptr, g_pCaReg
	strne	r0, [r3, #0]	@ ptr, g_CaVirAddr
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_RegisterMap, .-DRV_ADVCA_RegisterMap
	.align	2
	.global	DRV_ADVCA_SystemSetReset
	.type	DRV_ADVCA_SystemSetReset, %function
DRV_ADVCA_SystemSetReset:
	.fnstart
.LFB780:
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
	movw	r4, #:lower16:-123592512	@ tmp150,
	movt	r4, #:upper16:-123592512	@ tmp150,
	sub	r5, fp, #28	@ tmp139,,
	mov	r6, #0	@ tmp137,
	mov	r0, r4	@, tmp150
	str	r6, [r5, #-4]!	@ tmp137, unCRG.u32
	bl	ca_io_address	@
	mov	r1, r5	@, tmp139
	bl	CA_readReg	@
	ldr	r2, [fp, #-32]	@ tmp140,
	mov	r0, r4	@, tmp150
	orr	r1, r2, #256	@ tmp151, tmp140,
	str	r1, [fp, #-32]	@ tmp151,
	bl	ca_io_address	@
	ldr	r1, [fp, #-32]	@, unCRG.u32
	bl	CA_writeReg	@
	mov	r0, r4	@, tmp150
	str	r6, [fp, #-32]	@ tmp137, unCRG.u32
	bl	ca_io_address	@
	mov	r1, r5	@, tmp139
	bl	CA_readReg	@
	ldr	r3, [fp, #-32]	@ tmp147,
	mov	r0, r4	@, tmp150
	bfi	r3, r6, #8, #1	@ tmp147, tmp137,,
	str	r3, [fp, #-32]	@ tmp147,
	bl	ca_io_address	@
	ldr	r1, [fp, #-32]	@, unCRG.u32
	bl	CA_writeReg	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	DRV_ADVCA_SystemSetReset, .-DRV_ADVCA_SystemSetReset
	.align	2
	.global	DRV_ADVCA_SystemSetClock
	.type	DRV_ADVCA_SystemSetClock, %function
DRV_ADVCA_SystemSetClock:
	.fnstart
.LFB779:
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
	movw	r4, #:lower16:-123592512	@ tmp141,
	movt	r4, #:upper16:-123592512	@ tmp141,
	sub	r6, fp, #28	@ tmp137,,
	mov	r5, #0	@ tmp135,
	mov	r0, r4	@, tmp141
	str	r5, [r6, #-4]!	@ tmp135, unCRG.u32
	bl	ca_io_address	@
	mov	r1, r6	@, tmp137
	bl	CA_readReg	@
	ldr	r3, [fp, #-32]	@ tmp138,
	mov	r0, r4	@, tmp141
	bfi	r3, r5, #8, #1	@ tmp138, tmp135,,
	str	r3, [fp, #-32]	@ tmp138,
	bl	ca_io_address	@
	ldr	r1, [fp, #-32]	@, unCRG.u32
	bl	CA_writeReg	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	DRV_ADVCA_SystemSetClock, .-DRV_ADVCA_SystemSetClock
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.19747, %object
	.size	__func__.19747, 22
__func__.19747:
	.ascii	"DRV_ADVCA_GetRevision\000"
	.space	2
.LC3:
	.ascii	"V1.0.1.4_20130607\000\000"
	.space	1
.LC4:
	.ascii	"V1.0.1.8_20130604\000\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Invalid Parameters.\012\000"
	.space	3
.LC1:
	.ascii	"CA_GetVendorId failed.\012\000"
.LC2:
	.ascii	"%s\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_CaVirAddr, %object
	.size	g_CaVirAddr, 4
g_CaVirAddr:
	.space	4
	.type	g_pCaReg, %object
	.size	g_pCaReg, 4
g_pCaReg:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
