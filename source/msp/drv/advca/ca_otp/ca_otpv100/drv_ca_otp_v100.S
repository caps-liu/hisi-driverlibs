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
	.file	"drv_ca_otp_v100.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(drv_ca_otp_v100)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./ca_otp/ca_otpv100/.drv_ca_otp_v100.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./ca_otp/ca_otpv100/drv_ca_otp_v100.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./ca_otp/ca_otpv100/drv_ca_otp_v100.o -O2 -Wall -Wundef
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
	.global	DRV_CA_OTP_V100_SetJtagProtectMode
	.type	DRV_CA_OTP_V100_SetJtagProtectMode, %function
DRV_CA_OTP_V100_SetJtagProtectMode:
	.fnstart
.LFB788:
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
	cmp	r0, #1	@ JtagMode,
	beq	.L3	@,
	cmp	r0, #2	@ JtagMode,
	beq	.L8	@,
.L2:
	mov	r4, #0	@ Ret,
.L5:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L8:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp143,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp143,
	mov	r0, #4	@,
	mov	r1, #255	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L2	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r3, #178	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	ip, #:lower16:.LC0	@ tmp146,
	movt	ip, #:upper16:.LC0	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	b	.L5	@
.L3:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #3	@,
	mov	r1, #0	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L5	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r3, #175	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	ip, #:lower16:.LC0	@ tmp141,
	movt	ip, #:upper16:.LC0	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	b	.L5	@
	.fnend
	.size	DRV_CA_OTP_V100_SetJtagProtectMode, .-DRV_CA_OTP_V100_SetJtagProtectMode
	.align	2
	.global	DRV_CA_OTP_V100_SetSCSActive
	.type	DRV_CA_OTP_V100_SetSCSActive, %function
DRV_CA_OTP_V100_SetSCSActive:
	.fnstart
.LFB787:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp136,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp136,
	mov	r0, #2	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L10	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L12	@,
	mov	r3, #163	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
.L10:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR0+36
	.fnend
	.size	DRV_CA_OTP_V100_SetSCSActive, .-DRV_CA_OTP_V100_SetSCSActive
	.align	2
	.global	DRV_CA_OTP_V100_SetBootMode
	.type	DRV_CA_OTP_V100_SetBootMode, %function
DRV_CA_OTP_V100_SetBootMode:
	.fnstart
.LFB786:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ type,
	beq	.L16	@,
	cmp	r0, #3	@ type,
	beq	.L21	@,
.L15:
	mov	r4, #0	@ Ret,
.L18:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L21:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp145,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp145,
	mov	r0, #0	@,
	mov	r1, #255	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L22	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1	@,
	mov	r1, r4	@, Ret
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	beq	.L15	@,
	mov	r0, r4	@, Ret
	mov	r1, #97	@,
	ldr	r2, .L23	@,
	mov	r3, #150	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp155,
	movt	lr, #:upper16:.LC0	@ tmp155,
	str	lr, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L18	@
.L16:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L18	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L23	@,
	mov	r3, #144	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L18	@
.L22:
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L23	@,
	mov	r3, #149	@,
	movw	ip, #:lower16:.LC0	@ tmp149,
	movt	ip, #:upper16:.LC0	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	b	.L18	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0+68
	.fnend
	.size	DRV_CA_OTP_V100_SetBootMode, .-DRV_CA_OTP_V100_SetBootMode
	.align	2
	.global	DRV_CA_OTP_V100_DisableSelfBoot
	.type	DRV_CA_OTP_V100_DisableSelfBoot, %function
DRV_CA_OTP_V100_DisableSelfBoot:
	.fnstart
.LFB785:
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
	subs	r4, r0, #0	@ selfBoot, selfBoot
	bne	.L29	@,
.L27:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L29:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp137,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp137,
	mov	r0, #25	@,
	mov	r1, #0	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L27	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L30	@,
	mov	r3, #131	@,
	movw	ip, #:lower16:.LC0	@ tmp141,
	movt	ip, #:upper16:.LC0	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	b	.L27	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0+96
	.fnend
	.size	DRV_CA_OTP_V100_DisableSelfBoot, .-DRV_CA_OTP_V100_DisableSelfBoot
	.align	2
	.global	DRV_CA_OTP_V100_DisableLinkProtect
	.type	DRV_CA_OTP_V100_DisableLinkProtect, %function
DRV_CA_OTP_V100_DisableLinkProtect:
	.fnstart
.LFB784:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp136,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp136,
	mov	r0, #18	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L33	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L35	@,
	mov	r3, #119	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
.L33:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L36:
	.align	2
.L35:
	.word	.LANCHOR0+128
	.fnend
	.size	DRV_CA_OTP_V100_DisableLinkProtect, .-DRV_CA_OTP_V100_DisableLinkProtect
	.align	2
	.global	DRV_CA_OTP_V100_LockR2RHardKey
	.type	DRV_CA_OTP_V100_LockR2RHardKey, %function
DRV_CA_OTP_V100_LockR2RHardKey:
	.fnstart
.LFB783:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp136,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp136,
	mov	r0, #24	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L38	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L40	@,
	mov	r3, #109	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
.L38:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L41:
	.align	2
.L40:
	.word	.LANCHOR0+164
	.fnend
	.size	DRV_CA_OTP_V100_LockR2RHardKey, .-DRV_CA_OTP_V100_LockR2RHardKey
	.align	2
	.global	DRV_CA_OTP_V100_LockBootDecEn
	.type	DRV_CA_OTP_V100_LockBootDecEn, %function
DRV_CA_OTP_V100_LockBootDecEn:
	.fnstart
.LFB782:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp136,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp136,
	mov	r0, #16	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L43	@,
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L45	@,
	mov	r3, #99	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
.L43:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L46:
	.align	2
.L45:
	.word	.LANCHOR0+196
	.fnend
	.size	DRV_CA_OTP_V100_LockBootDecEn, .-DRV_CA_OTP_V100_LockBootDecEn
	.align	2
	.global	DRV_CA_OTP_V100_LockHardCwSel
	.type	DRV_CA_OTP_V100_LockHardCwSel, %function
DRV_CA_OTP_V100_LockHardCwSel:
	.fnstart
.LFB781:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp145,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp145,
	mvn	r1, #0	@ tmp143,
	mov	r0, #88	@,
	str	r1, [fp, #-24]	@ tmp143, Value
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	uxtb	r1, r1	@, tmp143
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-23]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.447,
	mov	r0, #89	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.450,, Ret.447
	mov	r0, #90	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-21]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.453, Ret.450,
	mov	r0, #91	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.453,
	bne	.L51	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #15	@,
	mov	r1, r4	@, Ret
	ldr	r5, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r5	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r5, r0, #0	@ Ret,
	bne	.L52	@,
.L49:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L52:
	mov	r0, r4	@, Ret
	mov	r1, #97	@,
	ldr	r2, .L53	@,
	mov	r3, #89	@,
	movw	r4, #:lower16:.LC0	@ tmp168,
	movt	r4, #:upper16:.LC0	@ tmp168,
	str	r4, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	mov	r4, r5	@ Ret, Ret
	b	.L49	@
.L51:
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L53	@,
	mov	r3, #88	@,
	movw	ip, #:lower16:.LC0	@ tmp162,
	movt	ip, #:upper16:.LC0	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	b	.L49	@
.L54:
	.align	2
.L53:
	.word	.LANCHOR0+228
	.fnend
	.size	DRV_CA_OTP_V100_LockHardCwSel, .-DRV_CA_OTP_V100_LockHardCwSel
	.align	2
	.global	DRV_CA_OTP_V100_Set_STBSN
	.type	DRV_CA_OTP_V100_Set_STBSN, %function
DRV_CA_OTP_V100_Set_STBSN:
	.fnstart
.LFB780:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp144,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp144,
	uxtb	r1, r0	@ tmp145, SN
	str	r0, [fp, #-24]	@ SN, SN
	mov	r0, #80	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-23]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.482,
	mov	r0, #81	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.485,, Ret.482
	mov	r0, #82	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-21]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.488, Ret.485,
	mov	r0, #83	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.488,
	bne	.L59	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #11	@,
	mov	r1, r4	@, Ret
	ldr	r5, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r5	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r5, r0, #0	@ Ret,
	bne	.L60	@,
.L57:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L60:
	mov	r0, r4	@, Ret
	mov	r1, #97	@,
	ldr	r2, .L61	@,
	mov	r3, #76	@,
	movw	r4, #:lower16:.LC0	@ tmp167,
	movt	r4, #:upper16:.LC0	@ tmp167,
	str	r4, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	mov	r4, r5	@ Ret, Ret
	b	.L57	@
.L59:
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L61	@,
	mov	r3, #75	@,
	movw	ip, #:lower16:.LC0	@ tmp161,
	movt	ip, #:upper16:.LC0	@ tmp161,
	str	ip, [sp, #0]	@ tmp161,
	bl	HI_LogOut	@
	b	.L57	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR0+260
	.fnend
	.size	DRV_CA_OTP_V100_Set_STBSN, .-DRV_CA_OTP_V100_Set_STBSN
	.align	2
	.global	DRV_CA_OTP_V100_Set_MarketId
	.type	DRV_CA_OTP_V100_Set_MarketId, %function
DRV_CA_OTP_V100_Set_MarketId:
	.fnstart
.LFB779:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp144,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp144,
	uxtb	r1, r0	@ tmp145, Id
	str	r0, [fp, #-24]	@ Id, Id
	mov	r0, #44	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-23]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.517,
	mov	r0, #45	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.520,, Ret.517
	mov	r0, #46	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-21]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.523, Ret.520,
	mov	r0, #47	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.523,
	bne	.L67	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #10	@,
	mov	r1, #255	@,
	ldr	r5, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r5	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r5, r0, #0	@ Ret,
	bne	.L68	@,
.L65:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L68:
	mov	r0, r4	@, Ret
	mov	r1, #97	@,
	ldr	r2, .L69	@,
	mov	r3, #65	@,
	movw	r4, #:lower16:.LC0	@ tmp167,
	movt	r4, #:upper16:.LC0	@ tmp167,
	str	r4, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	mov	r4, r5	@ Ret, Ret
	b	.L65	@
.L67:
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L69	@,
	mov	r3, #64	@,
	movw	ip, #:lower16:.LC0	@ tmp161,
	movt	ip, #:upper16:.LC0	@ tmp161,
	str	ip, [sp, #0]	@ tmp161,
	bl	HI_LogOut	@
	b	.L65	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR0+288
	.fnend
	.size	DRV_CA_OTP_V100_Set_MarketId, .-DRV_CA_OTP_V100_Set_MarketId
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.19874, %object
	.size	__func__.19874, 35
__func__.19874:
	.ascii	"DRV_CA_OTP_V100_SetJtagProtectMode\000"
	.space	1
	.type	__func__.19861, %object
	.size	__func__.19861, 29
__func__.19861:
	.ascii	"DRV_CA_OTP_V100_SetSCSActive\000"
	.space	3
	.type	__func__.19836, %object
	.size	__func__.19836, 28
__func__.19836:
	.ascii	"DRV_CA_OTP_V100_SetBootMode\000"
	.type	__func__.19821, %object
	.size	__func__.19821, 32
__func__.19821:
	.ascii	"DRV_CA_OTP_V100_DisableSelfBoot\000"
	.type	__func__.19809, %object
	.size	__func__.19809, 35
__func__.19809:
	.ascii	"DRV_CA_OTP_V100_DisableLinkProtect\000"
	.space	1
	.type	__func__.19797, %object
	.size	__func__.19797, 31
__func__.19797:
	.ascii	"DRV_CA_OTP_V100_LockR2RHardKey\000"
	.space	1
	.type	__func__.19785, %object
	.size	__func__.19785, 30
__func__.19785:
	.ascii	"DRV_CA_OTP_V100_LockBootDecEn\000"
	.space	2
	.type	__func__.19755, %object
	.size	__func__.19755, 30
__func__.19755:
	.ascii	"DRV_CA_OTP_V100_LockHardCwSel\000"
	.space	2
	.type	__func__.19723, %object
	.size	__func__.19723, 26
__func__.19723:
	.ascii	"DRV_CA_OTP_V100_Set_STBSN\000"
	.space	2
	.type	__func__.19692, %object
	.size	__func__.19692, 29
__func__.19692:
	.ascii	"DRV_CA_OTP_V100_Set_MarketId\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Failed to write OTP!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
