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
	.file	"drv_advca_v300.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(drv_advca_v300)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./V300/.drv_advca_v300.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./V300/drv_advca_v300.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./V300/drv_advca_v300.o -O2 -Wall -Wundef
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
	.global	DRV_ADVCA_V300_ModeExit_0
	.type	DRV_ADVCA_V300_ModeExit_0, %function
DRV_ADVCA_V300_ModeExit_0:
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
	bl	DRV_ADVCA_RegisterUnMap	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_V300_ModeExit_0, .-DRV_ADVCA_V300_ModeExit_0
	.align	2
	.global	DRV_ADVCA_V300_ModeInit_0
	.type	DRV_ADVCA_V300_ModeInit_0, %function
DRV_ADVCA_V300_ModeInit_0:
	.fnstart
.LFB784:
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
	bl	DRV_ADVCA_SystemSetClock	@
	bl	DRV_ADVCA_SystemSetReset	@
	bl	DRV_ADVCA_RegisterMap	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_initMutex	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_V300_ModeInit_0, .-DRV_ADVCA_V300_ModeInit_0
	.align	2
	.global	DRV_ADVCA_V300_Release
	.type	DRV_ADVCA_V300_Release, %function
DRV_ADVCA_V300_Release:
	.fnstart
.LFB782:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, u32Value
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ s32Ret,
	mov	r4, r0	@ s32Ret,
	beq	.L12	@,
	sub	r0, fp, #24	@,,
	bl	ca_atomic_dec_return	@
	cmn	r0, #1	@ s32Ret.572,
	beq	.L7	@,
	ldr	r0, [fp, #-24]	@ u32Value, u32Value
	cmp	r0, #0	@ u32Value,
	beq	.L13	@,
.L9:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_up	@
	mov	r0, #0	@ D.20730,
.L7:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L12:
	movw	lr, #:lower16:.LANCHOR1	@ tmp139,
	movt	lr, #:upper16:.LANCHOR1	@ tmp139,
	mov	r0, #1	@,
	mov	r1, #97	@,
	mov	r2, lr	@, tmp139
	movw	r3, #1880	@,
	str	lr, [sp, #4]	@ tmp139,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mov	r0, r4	@ D.20730, s32Ret
	b	.L7	@
.L13:
	movw	lr, #:lower16:.LANCHOR1	@ tmp144,
	movt	lr, #:upper16:.LANCHOR1	@ tmp144,
	mov	r0, #3	@,
	mov	r1, #97	@,
	mov	r2, lr	@, tmp144
	movw	r3, #1892	@,
	str	lr, [sp, #4]	@ tmp144,
	movw	ip, #:lower16:.LC1	@ tmp145,
	movt	ip, #:upper16:.LC1	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L9	@
	.fnend
	.size	DRV_ADVCA_V300_Release, .-DRV_ADVCA_V300_Release
	.align	2
	.global	DRV_ADVCA_V300_Open
	.type	DRV_ADVCA_V300_Open, %function
DRV_ADVCA_V300_Open:
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
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	mov	r5, #0	@ tmp136,
	str	r5, [fp, #-24]	@ tmp136, u32Value
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ s32Ret,
	mov	r4, r0	@ s32Ret,
	beq	.L19	@,
	sub	r0, fp, #24	@,,
	bl	ca_atomic_inc_return	@
	ldr	r3, [fp, #-24]	@ u32Value, u32Value
	cmp	r3, #1	@ u32Value,
	beq	.L20	@,
.L17:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_up	@
	mov	r0, #0	@ D.20717,
.L16:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L20:
	mov	r0, r5	@, tmp136
	bl	HAL_ADVCA_V300_SetCWAlgorithm	@
	mov	r0, r5	@, tmp136
	bl	HAL_ADVCA_V300_SetR2RAlgorithm	@
	b	.L17	@
.L19:
	ldr	lr, .L21	@ tmp139,
	mov	r0, #1	@,
	mov	r1, #97	@,
	mov	r3, #1856	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	mov	r2, lr	@, tmp139
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mov	r0, r4	@ D.20717, s32Ret
	b	.L16	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR1+24
	.fnend
	.size	DRV_ADVCA_V300_Open, .-DRV_ADVCA_V300_Open
	.align	2
	.type	DRV_ADVCA_V300_Ioctl_Child, %function
DRV_ADVCA_V300_Ioctl_Child:
	.fnstart
.LFB779:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #260
	sub	sp, sp, #260	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pstCmdParam
	beq	.L60	@,
	ldr	r3, [r0, #0]	@ <variable>.enCmdChildID, <variable>.enCmdChildID
	cmp	r3, #29	@ <variable>.enCmdChildID,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.enCmdChildID
	b	.L26	@
.L57:
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L59
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
.L56:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetESCKLock	@
	mov	r0, #0	@ D.19754,
.L25:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L55:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetESCK	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L54:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_SetESCK	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L53:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetMISCRootKeyLock	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L52:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetMISCRootKey	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L51:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_SetMISCRootKey	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L50:
	add	r0, r0, #4	@, pstCmdParam,
	bl	HAL_ADVCA_V300_GetMiscAlgorithm	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L49:
	ldr	r0, [r0, #4]	@,
	bl	HAL_ADVCA_V300_SetMiscAlgorithm	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L59:
	add	r4, r0, #4	@ tmp194, pstCmdParam,
.L48:
	mov	r0, r4	@, tmp194
	bl	HAL_ADVCA_V300_GetCAStates	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L47:
	add	r4, r0, #4	@ tmp194, pstCmdParam,
	mov	r0, r4	@, tmp194
	bl	HAL_ADVCA_V300_GetSecretKeyChecksumFlag	@
	b	.L48	@
.L46:
	add	r4, r0, #4	@ tmp175, pstCmdParam,
	sub	ip, fp, #156	@ tmp174,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp195,,,,
	mov	lr, ip	@ tmp196, tmp174
	stmia	lr!, {r0, r1, r2, r3}	@ tmp196,,,,
	ldmia	r4, {r0, r1}	@ tmp195,,
	mov	r2, #0	@,
	mov	r3, #1	@,
	stmia	lr, {r0, r1}	@ tmp196,,
	add	r1, ip, #8	@, tmp174,
	ldr	lr, [fp, #-152]	@ stParam.enKlTarget, stParam.enKlTarget
	ldr	r0, [fp, #-156]	@, stParam.ladder
	str	lr, [sp, #0]	@ stParam.enKlTarget,
	bl	HAL_ADVCA_V300_CryptGDRM	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L45:
	sub	r4, fp, #156	@ tmp165,,
	add	r1, r0, #4	@, pstCmdParam,
	mov	r2, #136	@,
	mov	r0, r4	@, tmp165
	bl	memcpy	@
	sub	r1, fp, #140	@,,
	mov	r2, #120	@,
	mov	r0, sp	@,
	bl	memcpy	@
	ldmia	r4, {r0, r1, r2, r3}	@ tmp165,,,,
	bl	DRV_CA_OTP_V200_LockOTPTzData	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L44:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetOTPTzData	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L43:
	sub	r4, fp, #156	@ tmp155,,
	add	r1, r0, #4	@, pstCmdParam,
	mov	r2, #136	@,
	mov	r0, r4	@, tmp155
	bl	memcpy	@
	sub	r1, fp, #140	@,,
	mov	r2, #120	@,
	mov	r0, sp	@,
	bl	memcpy	@
	ldmia	r4, {r0, r1, r2, r3}	@ tmp155,,,,
	bl	DRV_CA_OTP_V200_SetOTPTzData	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L42:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetOEMRootKeyLock	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L41:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetOEMRootKey	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L40:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_SetOEMRootKey	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L39:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetMiscKlLevel	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L38:
	ldr	r0, [r0, #4]	@,
	bl	DRV_CA_OTP_V200_SetMiscKlLevel	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L37:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetPvrDPAFilterClkEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L36:
	ldr	r0, [r0, #4]	@,
	bl	DRV_CA_OTP_V200_SetPvrDPAFilterClkEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L35:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetMcDPAClkSelEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L34:
	ldr	r0, [r0, #4]	@,
	bl	DRV_CA_OTP_V200_SetMcDPAClkSelEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L33:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetKlDPAFilterClkEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L32:
	ldr	r0, [r0, #4]	@,
	bl	DRV_CA_OTP_V200_SetKlDPAFilterClkEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L31:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetKlDPAClkSelEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L30:
	ldr	r0, [r0, #4]	@,
	bl	DRV_CA_OTP_V200_SetKlDPAClkSelEn	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L29:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetTZEnStatus	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L28:
	bl	DRV_CA_OTP_V200_SetTZEnable	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L27:
	add	r0, r0, #4	@, pstCmdParam,
	bl	DRV_CA_OTP_V200_GetSecureChipId	@
	mov	r0, #0	@ D.19754,
	b	.L25	@
.L26:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L61	@,
	mov	r3, #220	@,
	movw	ip, #:lower16:.LC3	@ tmp192,
	movt	ip, #:upper16:.LC3	@ tmp192,
	str	ip, [sp, #0]	@ tmp192,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.19754,
	b	.L25	@
.L60:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L61	@,
	mov	r3, #34	@,
	movw	ip, #:lower16:.LC2	@ tmp138,
	movt	ip, #:upper16:.LC2	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.19754,
	b	.L25	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR1+44
	.fnend
	.size	DRV_ADVCA_V300_Ioctl_Child, .-DRV_ADVCA_V300_Ioctl_Child
	.align	2
	.global	DRV_ADVCA_V300_Ioctl
	.type	DRV_ADVCA_V300_Ioctl, %function
DRV_ADVCA_V300_Ioctl:
	.fnstart
.LFB780:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ cmd, cmd
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	mov	r3, #0	@ tmp161,
	mov	r6, r1	@ arg, arg
	str	r3, [fp, #-36]	@ tmp161, IDbuf
	str	r3, [fp, #-32]	@ tmp161, u32VendorId
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L382	@,
	sub	r0, fp, #32	@,,
	bl	DRV_CA_OTP_V200_GetSecureChipId	@
	subs	r4, r0, #0	@ ret.672,
	bne	.L383	@,
	movw	r0, #:lower16:1107321176	@ tmp175,
	movt	r0, #:upper16:1107321176	@ tmp175,
	cmp	r5, r0	@ cmd, tmp175
	beq	.L182	@,
	bls	.L384	@,
	movw	r1, #:lower16:-2147196525	@ tmp322,
	movt	r1, #:upper16:-2147196525	@ tmp322,
	cmp	r5, r1	@ cmd, tmp322
	beq	.L240	@,
	bhi	.L330	@,
	movw	r2, #:lower16:-2147196617	@ tmp324,
	movt	r2, #:upper16:-2147196617	@ tmp324,
	cmp	r5, r2	@ cmd, tmp324
	beq	.L211	@,
	bls	.L385	@,
	movw	r4, #:lower16:-2147196555	@ tmp361,
	movt	r4, #:upper16:-2147196555	@ tmp361,
	cmp	r5, r4	@ cmd, tmp361
	beq	.L225	@,
	bhi	.L339	@,
	movw	r3, #:lower16:-2147196587	@ tmp363,
	movt	r3, #:upper16:-2147196587	@ tmp363,
	cmp	r5, r3	@ cmd, tmp363
	beq	.L218	@,
	bhi	.L340	@,
	movw	lr, #:lower16:-2147196611	@ tmp365,
	movt	lr, #:upper16:-2147196611	@ tmp365,
	cmp	r5, lr	@ cmd, tmp365
	beq	.L214	@,
	bhi	.L341	@,
	movw	ip, #:lower16:-2147196614	@ tmp367,
	movt	ip, #:upper16:-2147196614	@ tmp367,
	cmp	r5, ip	@ cmd, tmp367
	beq	.L212	@,
	movw	r0, #:lower16:-2147196613	@ tmp368,
	movt	r0, #:upper16:-2147196613	@ tmp368,
	cmp	r5, r0	@ cmd, tmp368
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBootSelLock_1	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L384:
	movw	r1, #25072	@ tmp177,
	cmp	r5, r1	@ cmd, tmp177
	beq	.L124	@,
	bhi	.L299	@,
	movw	r2, #24964	@ tmp179,
	cmp	r5, r2	@ cmd, tmp179
	beq	.L95	@,
	bls	.L386	@,
	movw	lr, #25020	@ tmp215,
	cmp	r5, lr	@ cmd, tmp215
	beq	.L109	@,
	bhi	.L308	@,
	movw	ip, #24992	@ tmp217,
	cmp	r5, ip	@ cmd, tmp217
	beq	.L102	@,
	bhi	.L309	@,
	movw	r0, #24976	@ tmp219,
	cmp	r5, r0	@ cmd, tmp219
	beq	.L98	@,
	bhi	.L310	@,
	movw	r1, #24968	@ tmp221,
	cmp	r5, r1	@ cmd, tmp221
	beq	.L96	@,
	movw	r2, #24972	@ tmp222,
	cmp	r5, r2	@ cmd, tmp222
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_LockHardSPESel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L383:
	ldr	lr, .L394	@ tmp171,
	mov	r0, #1	@,
	mov	r1, #97	@,
	mov	r3, #246	@,
	movw	ip, #:lower16:.LC4	@ tmp172,
	movt	ip, #:upper16:.LC4	@ tmp172,
	mov	r2, lr	@, tmp171
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
.L65:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L299:
	movw	r0, #:lower16:1074028934	@ tmp250,
	movt	r0, #:upper16:1074028934	@ tmp250,
	cmp	r5, r0	@ cmd, tmp250
	beq	.L153	@,
	bls	.L387	@,
	movw	r1, #:lower16:1074028990	@ tmp287,
	movt	r1, #:upper16:1074028990	@ tmp287,
	cmp	r5, r1	@ cmd, tmp287
	beq	.L167	@,
	bhi	.L323	@,
	movw	r2, #:lower16:1074028962	@ tmp289,
	movt	r2, #:upper16:1074028962	@ tmp289,
	cmp	r5, r2	@ cmd, tmp289
	beq	.L160	@,
	bhi	.L324	@,
	movw	r4, #:lower16:1074028946	@ tmp291,
	movt	r4, #:upper16:1074028946	@ tmp291,
	cmp	r5, r4	@ cmd, tmp291
	beq	.L156	@,
	bhi	.L325	@,
	movw	r3, #:lower16:1074028938	@ tmp293,
	movt	r3, #:upper16:1074028938	@ tmp293,
	cmp	r5, r3	@ cmd, tmp293
	beq	.L154	@,
	movw	lr, #:lower16:1074028942	@ tmp294,
	movt	lr, #:upper16:1074028942	@ tmp294,
	cmp	r5, lr	@ cmd, tmp294
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSCWDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L330:
	movw	r4, #:lower16:-2147196467	@ tmp396,
	movt	r4, #:upper16:-2147196467	@ tmp396,
	cmp	r5, r4	@ cmd, tmp396
	beq	.L269	@,
	bls	.L388	@,
	movw	r3, #:lower16:-2147196428	@ tmp433,
	movt	r3, #:upper16:-2147196428	@ tmp433,
	cmp	r5, r3	@ cmd, tmp433
	beq	.L283	@,
	bhi	.L354	@,
	movw	lr, #:lower16:-2147196453	@ tmp435,
	movt	lr, #:upper16:-2147196453	@ tmp435,
	cmp	r5, lr	@ cmd, tmp435
	beq	.L276	@,
	bhi	.L355	@,
	movw	ip, #:lower16:-2147196461	@ tmp437,
	movt	ip, #:upper16:-2147196461	@ tmp437,
	cmp	r5, ip	@ cmd, tmp437
	beq	.L272	@,
	bhi	.L356	@,
	movw	r0, #:lower16:-2147196465	@ tmp439,
	movt	r0, #:upper16:-2147196465	@ tmp439,
	cmp	r5, r0	@ cmd, tmp439
	beq	.L270	@,
	movw	r1, #:lower16:-2147196463	@ tmp440,
	movt	r1, #:upper16:-2147196463	@ tmp440,
	cmp	r5, r1	@ cmd, tmp440
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetVersionIDCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L240:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCSA3Deactive	@
	mov	r4, r0	@ ret,
.L363:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_up	@
	cmp	r4, #0	@ ret,
	bne	.L65	@,
.L376:
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L394	@,
	movw	r3, #1841	@,
	str	r5, [sp, #4]	@ cmd,
	movw	ip, #:lower16:.LC13	@ tmp731,
	mov	r4, #0	@ ret,
	movt	ip, #:upper16:.LC13	@ tmp731,
	str	ip, [sp, #0]	@ tmp731,
	bl	HI_LogOut	@
	b	.L65	@
.L124:
	bl	HAL_ADVCA_V300_DCASClose	@
.L67:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_up	@
	b	.L376	@
.L385:
	movw	r4, #:lower16:-2147196653	@ tmp326,
	movt	r4, #:upper16:-2147196653	@ tmp326,
	cmp	r5, r4	@ cmd, tmp326
	beq	.L196	@,
	bhi	.L332	@,
	movw	r3, #:lower16:-2147196665	@ tmp328,
	movt	r3, #:upper16:-2147196665	@ tmp328,
	cmp	r5, r3	@ cmd, tmp328
	beq	.L189	@,
	bhi	.L333	@,
	movw	lr, #:lower16:1107321182	@ tmp330,
	movt	lr, #:upper16:1107321182	@ tmp330,
	cmp	r5, lr	@ cmd, tmp330
	beq	.L185	@,
	bhi	.L334	@,
	movw	ip, #:lower16:1107321178	@ tmp332,
	movt	ip, #:upper16:1107321178	@ tmp332,
	cmp	r5, ip	@ cmd, tmp332
	beq	.L183	@,
	movw	r0, #:lower16:1107321180	@ tmp333,
	movt	r0, #:upper16:1107321180	@ tmp333,
	cmp	r5, r0	@ cmd, tmp333
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetSPRootKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L386:
	movw	r4, #24882	@ tmp181,
	cmp	r5, r4	@ cmd, tmp181
	beq	.L81	@,
	bhi	.L301	@,
	movw	r3, #24852	@ tmp183,
	cmp	r5, r3	@ cmd, tmp183
	beq	.L74	@,
	bhi	.L302	@,
	movw	lr, #24840	@ tmp185,
	cmp	r5, lr	@ cmd, tmp185
	beq	.L70	@,
	bhi	.L303	@,
	movw	ip, #24836	@ tmp187,
	cmp	r5, ip	@ cmd, tmp187
	beq	.L68	@,
	movw	r0, #24837	@ tmp188,
	cmp	r5, r0	@ cmd, tmp188
	bne	.L67	@,
	bl	HAL_ADVCA_V300_ResetOTP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L387:
	movw	r1, #:lower16:1074028845	@ tmp252,
	movt	r1, #:upper16:1074028845	@ tmp252,
	cmp	r5, r1	@ cmd, tmp252
	beq	.L138	@,
	bhi	.L316	@,
	movw	r2, #:lower16:1074028810	@ tmp254,
	movt	r2, #:upper16:1074028810	@ tmp254,
	cmp	r5, r2	@ cmd, tmp254
	beq	.L131	@,
	bhi	.L317	@,
	movw	r4, #25079	@ tmp256,
	cmp	r5, r4	@ cmd, tmp256
	beq	.L127	@,
	bhi	.L318	@,
	movw	r3, #25074	@ tmp258,
	cmp	r5, r3	@ cmd, tmp258
	beq	.L125	@,
	movw	lr, #25075	@ tmp259,
	cmp	r5, lr	@ cmd, tmp259
	bne	.L67	@,
	bl	HAL_ADVCA_V300_SWPKKeyLadderClose	@
	b	.L67	@
.L388:
	movw	r3, #:lower16:-2147196497	@ tmp398,
	movt	r3, #:upper16:-2147196497	@ tmp398,
	cmp	r5, r3	@ cmd, tmp398
	beq	.L254	@,
	bhi	.L347	@,
	movw	lr, #:lower16:-2147196511	@ tmp400,
	movt	lr, #:upper16:-2147196511	@ tmp400,
	cmp	r5, lr	@ cmd, tmp400
	beq	.L247	@,
	bhi	.L348	@,
	movw	ip, #:lower16:-2147196519	@ tmp402,
	movt	ip, #:upper16:-2147196519	@ tmp402,
	cmp	r5, ip	@ cmd, tmp402
	beq	.L243	@,
	bhi	.L349	@,
	movw	r0, #:lower16:-2147196523	@ tmp404,
	movt	r0, #:upper16:-2147196523	@ tmp404,
	cmp	r5, r0	@ cmd, tmp404
	beq	.L241	@,
	movw	r1, #:lower16:-2147196521	@ tmp405,
	movt	r1, #:upper16:-2147196521	@ tmp405,
	cmp	r5, r1	@ cmd, tmp405
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSSPDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L382:
	ldr	lr, .L394	@ tmp165,
	mov	r0, #1	@,
	mov	r1, #97	@,
	mov	r3, #239	@,
	movw	ip, #:lower16:.LC0	@ tmp166,
	movt	ip, #:upper16:.LC0	@ tmp166,
	mov	r2, lr	@, tmp165
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L65	@
.L301:
	movw	r1, #24932	@ tmp199,
	cmp	r5, r1	@ cmd, tmp199
	beq	.L88	@,
	bhi	.L305	@,
	movw	r2, #24892	@ tmp201,
	cmp	r5, r2	@ cmd, tmp201
	beq	.L84	@,
	bhi	.L306	@,
	movw	r4, #24888	@ tmp203,
	cmp	r5, r4	@ cmd, tmp203
	beq	.L82	@,
	movw	r3, #24889	@ tmp204,
	cmp	r5, r3	@ cmd, tmp204
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetBootSelLock_1	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L323:
	movw	r1, #:lower16:1074815301	@ tmp305,
	movt	r1, #:upper16:1074815301	@ tmp305,
	cmp	r5, r1	@ cmd, tmp305
	beq	.L174	@,
	bhi	.L327	@,
	movw	r2, #:lower16:1074029002	@ tmp307,
	movt	r2, #:upper16:1074029002	@ tmp307,
	cmp	r5, r2	@ cmd, tmp307
	beq	.L170	@,
	bhi	.L328	@,
	movw	r4, #:lower16:1074028994	@ tmp309,
	movt	r4, #:upper16:1074028994	@ tmp309,
	cmp	r5, r4	@ cmd, tmp309
	beq	.L168	@,
	movw	r3, #:lower16:1074028998	@ tmp310,
	movt	r3, #:upper16:1074028998	@ tmp310,
	cmp	r5, r3	@ cmd, tmp310
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetRuntimeCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L316:
	movw	r1, #:lower16:1074028906	@ tmp270,
	movt	r1, #:upper16:1074028906	@ tmp270,
	cmp	r5, r1	@ cmd, tmp270
	beq	.L145	@,
	bhi	.L320	@,
	movw	r2, #:lower16:1074028854	@ tmp272,
	movt	r2, #:upper16:1074028854	@ tmp272,
	cmp	r5, r2	@ cmd, tmp272
	beq	.L361	@,
	bhi	.L321	@,
	movw	r4, #:lower16:1074028848	@ tmp274,
	movt	r4, #:upper16:1074028848	@ tmp274,
	cmp	r5, r4	@ cmd, tmp274
	beq	.L139	@,
	movw	r3, #:lower16:1074028852	@ tmp275,
	movt	r3, #:upper16:1074028852	@ tmp275,
	cmp	r5, r3	@ cmd, tmp275
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetCSA3Algorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L332:
	movw	r4, #:lower16:-2147196635	@ tmp344,
	movt	r4, #:upper16:-2147196635	@ tmp344,
	cmp	r5, r4	@ cmd, tmp344
	beq	.L203	@,
	bhi	.L336	@,
	movw	r3, #:lower16:-2147196644	@ tmp346,
	movt	r3, #:upper16:-2147196644	@ tmp346,
	cmp	r5, r3	@ cmd, tmp346
	beq	.L199	@,
	bhi	.L337	@,
	movw	lr, #:lower16:-2147196650	@ tmp348,
	movt	lr, #:upper16:-2147196650	@ tmp348,
	cmp	r5, lr	@ cmd, tmp348
	beq	.L197	@,
	movw	ip, #:lower16:-2147196647	@ tmp349,
	movt	ip, #:upper16:-2147196647	@ tmp349,
	cmp	r5, ip	@ cmd, tmp349
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTdesLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L347:
	movw	r3, #:lower16:-2147196483	@ tmp416,
	movt	r3, #:upper16:-2147196483	@ tmp416,
	cmp	r5, r3	@ cmd, tmp416
	beq	.L261	@,
	bhi	.L351	@,
	movw	lr, #:lower16:-2147196491	@ tmp418,
	movt	lr, #:upper16:-2147196491	@ tmp418,
	cmp	r5, lr	@ cmd, tmp418
	beq	.L257	@,
	bhi	.L352	@,
	movw	ip, #:lower16:-2147196495	@ tmp420,
	movt	ip, #:upper16:-2147196495	@ tmp420,
	cmp	r5, ip	@ cmd, tmp420
	beq	.L255	@,
	movw	r0, #:lower16:-2147196493	@ tmp421,
	movt	r0, #:upper16:-2147196493	@ tmp421,
	cmp	r5, r0	@ cmd, tmp421
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSecureChipFlag	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L308:
	movw	r4, #25046	@ tmp233,
	cmp	r5, r4	@ cmd, tmp233
	beq	.L116	@,
	bhi	.L312	@,
	movw	r3, #25032	@ tmp235,
	cmp	r5, r3	@ cmd, tmp235
	beq	.L112	@,
	bhi	.L313	@,
	movw	lr, #25024	@ tmp237,
	cmp	r5, lr	@ cmd, tmp237
	beq	.L110	@,
	movw	ip, #25028	@ tmp238,
	cmp	r5, ip	@ cmd, tmp238
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetLpcMasterEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L339:
	movw	r4, #:lower16:-2147196541	@ tmp379,
	movt	r4, #:upper16:-2147196541	@ tmp379,
	cmp	r5, r4	@ cmd, tmp379
	beq	.L232	@,
	bhi	.L343	@,
	movw	r3, #:lower16:-2147196549	@ tmp381,
	movt	r3, #:upper16:-2147196549	@ tmp381,
	cmp	r5, r3	@ cmd, tmp381
	beq	.L228	@,
	bhi	.L344	@,
	movw	lr, #:lower16:-2147196553	@ tmp383,
	movt	lr, #:upper16:-2147196553	@ tmp383,
	cmp	r5, lr	@ cmd, tmp383
	beq	.L226	@,
	movw	ip, #:lower16:-2147196551	@ tmp384,
	movt	ip, #:upper16:-2147196551	@ tmp384,
	cmp	r5, ip	@ cmd, tmp384
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSelfbootLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L354:
	movw	r3, #:lower16:-2113904293	@ tmp451,
	movt	r3, #:upper16:-2113904293	@ tmp451,
	cmp	r5, r3	@ cmd, tmp451
	beq	.L290	@,
	bhi	.L358	@,
	movw	lr, #:lower16:-2113904302	@ tmp453,
	movt	lr, #:upper16:-2113904302	@ tmp453,
	cmp	r5, lr	@ cmd, tmp453
	beq	.L286	@,
	bhi	.L359	@,
	movw	ip, #:lower16:-2147196424	@ tmp455,
	movt	ip, #:upper16:-2147196424	@ tmp455,
	cmp	r5, ip	@ cmd, tmp455
	beq	.L284	@,
	movw	r0, #:lower16:-2113904378	@ tmp456,
	movt	r0, #:upper16:-2113904378	@ tmp456,
	cmp	r5, r0	@ cmd, tmp456
	bne	.L67	@,
	ldr	r1, [fp, #-32]	@ u32VendorId, u32VendorId
	mov	r0, r6	@, arg
	mov	r2, #25	@,
	cmp	r1, #1	@ u32VendorId,
	ldreq	r1, .L394+4	@,
	ldrne	r1, .L394+8	@,
	bl	memcpy	@
	b	.L67	@
.L149:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_DisableSelfBoot	@
.L361:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBootMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L333:
	movw	r3, #:lower16:-2147196661	@ tmp337,
	movt	r3, #:upper16:-2147196661	@ tmp337,
	cmp	r5, r3	@ cmd, tmp337
	beq	.L192	@,
	bhi	.L335	@,
	movw	lr, #:lower16:-2147196664	@ tmp339,
	movt	lr, #:upper16:-2147196664	@ tmp339,
	cmp	r5, lr	@ cmd, tmp339
	beq	.L190	@,
	movw	ip, #:lower16:-2147196663	@ tmp340,
	movt	ip, #:upper16:-2147196663	@ tmp340,
	cmp	r5, ip	@ cmd, tmp340
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetMktIdP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L302:
	movw	r4, #24856	@ tmp192,
	cmp	r5, r4	@ cmd, tmp192
	beq	.L77	@,
	bhi	.L304	@,
	movw	r3, #24853	@ tmp194,
	cmp	r5, r3	@ cmd, tmp194
	beq	.L75	@,
	movw	lr, #24855	@ tmp195,
	cmp	r5, lr	@ cmd, tmp195
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_DisableLinkProtect	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L309:
	movw	lr, #25004	@ tmp226,
	cmp	r5, lr	@ cmd, tmp226
	beq	.L105	@,
	bhi	.L311	@,
	movw	ip, #24996	@ tmp228,
	cmp	r5, ip	@ cmd, tmp228
	beq	.L103	@,
	movw	r0, #25000	@ tmp229,
	cmp	r5, r0	@ cmd, tmp229
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetDesHardDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L317:
	movw	r2, #:lower16:1074028831	@ tmp263,
	movt	r2, #:upper16:1074028831	@ tmp263,
	cmp	r5, r2	@ cmd, tmp263
	beq	.L134	@,
	bhi	.L319	@,
	movw	r4, #:lower16:1074028814	@ tmp265,
	movt	r4, #:upper16:1074028814	@ tmp265,
	cmp	r5, r4	@ cmd, tmp265
	beq	.L132	@,
	movw	r3, #:lower16:1074028827	@ tmp266,
	movt	r3, #:upper16:1074028827	@ tmp266,
	cmp	r5, r3	@ cmd, tmp266
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetCWLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L340:
	movw	r3, #:lower16:-2147196571	@ tmp372,
	movt	r3, #:upper16:-2147196571	@ tmp372,
	cmp	r5, r3	@ cmd, tmp372
	beq	.L221	@,
	bhi	.L342	@,
	movw	lr, #:lower16:-2147196575	@ tmp374,
	movt	lr, #:upper16:-2147196575	@ tmp374,
	cmp	r5, lr	@ cmd, tmp374
	beq	.L219	@,
	movw	ip, #:lower16:-2147196573	@ tmp375,
	movt	ip, #:upper16:-2147196573	@ tmp375,
	cmp	r5, ip	@ cmd, tmp375
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSecureChipId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L324:
	movw	r2, #:lower16:1074028974	@ tmp298,
	movt	r2, #:upper16:1074028974	@ tmp298,
	cmp	r5, r2	@ cmd, tmp298
	beq	.L163	@,
	bhi	.L326	@,
	movw	r4, #:lower16:1074028966	@ tmp300,
	movt	r4, #:upper16:1074028966	@ tmp300,
	cmp	r5, r4	@ cmd, tmp300
	beq	.L161	@,
	movw	r3, #:lower16:1074028970	@ tmp301,
	movt	r3, #:upper16:1074028970	@ tmp301,
	cmp	r5, r3	@ cmd, tmp301
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetDDRScrambleEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L355:
	movw	lr, #:lower16:-2147196447	@ tmp444,
	movt	lr, #:upper16:-2147196447	@ tmp444,
	cmp	r5, lr	@ cmd, tmp444
	beq	.L279	@,
	bhi	.L357	@,
	movw	ip, #:lower16:-2147196451	@ tmp446,
	movt	ip, #:upper16:-2147196451	@ tmp446,
	cmp	r5, ip	@ cmd, tmp446
	beq	.L277	@,
	movw	r0, #:lower16:-2147196449	@ tmp447,
	movt	r0, #:upper16:-2147196449	@ tmp447,
	cmp	r5, r0	@ cmd, tmp447
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetCSA2Deactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L348:
	movw	lr, #:lower16:-2147196505	@ tmp409,
	movt	lr, #:upper16:-2147196505	@ tmp409,
	cmp	r5, lr	@ cmd, tmp409
	beq	.L250	@,
	bhi	.L350	@,
	movw	ip, #:lower16:-2147196509	@ tmp411,
	movt	ip, #:upper16:-2147196509	@ tmp411,
	cmp	r5, ip	@ cmd, tmp411
	beq	.L248	@,
	movw	r0, #:lower16:-2147196507	@ tmp412,
	movt	r0, #:upper16:-2147196507	@ tmp412,
	cmp	r5, r0	@ cmd, tmp412
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetMCAESHardonlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L320:
	movw	r1, #:lower16:1074028918	@ tmp279,
	movt	r1, #:upper16:1074028918	@ tmp279,
	cmp	r5, r1	@ cmd, tmp279
	beq	.L149	@,
	bhi	.L322	@,
	movw	r2, #:lower16:1074028911	@ tmp281,
	movt	r2, #:upper16:1074028911	@ tmp281,
	cmp	r5, r2	@ cmd, tmp281
	beq	.L147	@,
	movw	r4, #:lower16:1074028914	@ tmp282,
	movt	r4, #:upper16:1074028914	@ tmp282,
	cmp	r5, r4	@ cmd, tmp282
	beq	.L148	@,
	movw	r3, #:lower16:1074028910	@ tmp283,
	movt	r3, #:upper16:1074028910	@ tmp283,
	cmp	r5, r3	@ cmd, tmp283
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBloadEncDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L305:
	movw	r0, #24948	@ tmp208,
	cmp	r5, r0	@ cmd, tmp208
	beq	.L91	@,
	bhi	.L307	@,
	movw	r1, #24940	@ tmp210,
	cmp	r5, r1	@ cmd, tmp210
	beq	.L89	@,
	movw	r2, #24944	@ tmp211,
	cmp	r5, r2	@ cmd, tmp211
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetRootKeyLock	@
	mov	r4, r0	@ ret.725,
	bl	DRV_CA_OTP_V200_SetChipIdLock	@
	orr	r4, r0, r4	@ ret.726,, ret.725
	bl	DRV_CA_OTP_V200_LockRSAKey	@
	orr	r4, r4, r0	@ ret, ret.726,
	b	.L363	@
.L351:
	movw	r3, #:lower16:-2147196475	@ tmp425,
	movt	r3, #:upper16:-2147196475	@ tmp425,
	cmp	r5, r3	@ cmd, tmp425
	beq	.L265	@,
	bhi	.L353	@,
	movw	lr, #:lower16:-2147196479	@ tmp427,
	movt	lr, #:upper16:-2147196479	@ tmp427,
	cmp	r5, lr	@ cmd, tmp427
	beq	.L263	@,
	movw	ip, #:lower16:-2147196477	@ tmp428,
	movt	ip, #:upper16:-2147196477	@ tmp428,
	cmp	r5, ip	@ cmd, tmp428
	beq	.L264	@,
	movw	r0, #:lower16:-2147196481	@ tmp429,
	movt	r0, #:upper16:-2147196481	@ tmp429,
	cmp	r5, r0	@ cmd, tmp429
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLpcEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L327:
	movw	r1, #:lower16:1075339567	@ tmp314,
	movt	r1, #:upper16:1075339567	@ tmp314,
	cmp	r5, r1	@ cmd, tmp314
	beq	.L178	@,
	bhi	.L329	@,
	movw	r2, #:lower16:1075339553	@ tmp316,
	movt	r2, #:upper16:1075339553	@ tmp316,
	cmp	r5, r2	@ cmd, tmp316
	beq	.L176	@,
	movw	r4, #:lower16:1075339560	@ tmp317,
	movt	r4, #:upper16:1075339560	@ tmp317,
	cmp	r5, r4	@ cmd, tmp317
	beq	.L177	@,
	movw	r3, #:lower16:1075339546	@ tmp318,
	movt	r3, #:upper16:1075339546	@ tmp318,
	cmp	r5, r3	@ cmd, tmp318
	bne	.L67	@,
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	ip, fp, #68	@ tmp562,,
	mov	lr, ip	@ tmp737, tmp562
	stmia	lr!, {r0, r1, r2, r3}	@ tmp737,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, #0	@,
	mov	r3, r2	@,
	stmia	lr, {r0, r1}	@ tmp737,,
	add	r1, ip, #8	@, tmp562,
	ldr	r0, [fp, #-68]	@, CryptParam.ladder
	bl	HAL_ADVCA_V300_DecryptCw	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L312:
	movw	r2, #25054	@ tmp242,
	cmp	r5, r2	@ cmd, tmp242
	beq	.L120	@,
	bhi	.L314	@,
	movw	r4, #25050	@ tmp244,
	cmp	r5, r4	@ cmd, tmp244
	beq	.L118	@,
	movw	r3, #25052	@ tmp245,
	cmp	r5, r3	@ cmd, tmp245
	beq	.L119	@,
	sub	r3, r3, #4	@ tmp246, tmp246,
	cmp	r5, r3	@ cmd, tmp246
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_DisableJtagWrite	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L336:
	movw	r4, #:lower16:-2147196626	@ tmp353,
	movt	r4, #:upper16:-2147196626	@ tmp353,
	cmp	r5, r4	@ cmd, tmp353
	beq	.L207	@,
	bhi	.L338	@,
	movw	r3, #:lower16:-2147196630	@ tmp355,
	movt	r3, #:upper16:-2147196630	@ tmp355,
	cmp	r5, r3	@ cmd, tmp355
	beq	.L205	@,
	movw	lr, #:lower16:-2147196628	@ tmp356,
	movt	lr, #:upper16:-2147196628	@ tmp356,
	cmp	r5, lr	@ cmd, tmp356
	beq	.L206	@,
	movw	ip, #:lower16:-2147196633	@ tmp357,
	movt	ip, #:upper16:-2147196633	@ tmp357,
	cmp	r5, ip	@ cmd, tmp357
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetR2RAlgorithm	@
	b	.L67	@
.L343:
	movw	r4, #:lower16:-2147196533	@ tmp388,
	movt	r4, #:upper16:-2147196533	@ tmp388,
	cmp	r5, r4	@ cmd, tmp388
	beq	.L236	@,
	bhi	.L345	@,
	movw	r3, #:lower16:-2147196537	@ tmp390,
	movt	r3, #:upper16:-2147196537	@ tmp390,
	cmp	r5, r3	@ cmd, tmp390
	beq	.L234	@,
	movw	lr, #:lower16:-2147196535	@ tmp391,
	movt	lr, #:upper16:-2147196535	@ tmp391,
	cmp	r5, lr	@ cmd, tmp391
	beq	.L235	@,
	movw	ip, #:lower16:-2147196539	@ tmp392,
	movt	ip, #:upper16:-2147196539	@ tmp392,
	cmp	r5, ip	@ cmd, tmp392
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L358:
	movw	r3, #:lower16:-1072668346	@ tmp460,
	movt	r3, #:upper16:-1072668346	@ tmp460,
	cmp	r5, r3	@ cmd, tmp460
	beq	.L294	@,
	bhi	.L360	@,
	movw	lr, #:lower16:-2113904289	@ tmp462,
	movt	lr, #:upper16:-2113904289	@ tmp462,
	cmp	r5, lr	@ cmd, tmp462
	beq	.L292	@,
	movw	ip, #:lower16:-2113904147	@ tmp463,
	movt	ip, #:upper16:-2113904147	@ tmp463,
	cmp	r5, ip	@ cmd, tmp463
	beq	.L293	@,
	movw	r0, #:lower16:-2113904291	@ tmp464,
	movt	r0, #:upper16:-2113904291	@ tmp464,
	cmp	r5, r0	@ cmd, tmp464
	bne	.L67	@,
	mov	r1, #32	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetSPRootKey	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L290:
	mov	r1, #32	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetR2RRootKey	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L293:
	mov	r0, r6	@, arg
	mov	r1, #512	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetRSAKeyN	@
	mov	r2, #256	@,
	mov	r0, r6	@, arg
	movw	r1, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	bl	memcpy	@
	mov	r1, #512	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetRSAKeyE	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	add	r0, r6, #496	@, arg,
	bl	memcpy	@
	b	.L363	@
.L292:
	mov	r1, #16	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetJtagKey	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L294:
	mov	r0, r6	@, arg
	add	r1, r6, #8	@,,
	bl	HAL_ADVCA_V300_DecryptLPKProtectData	@
	subs	r4, r0, #0	@ ret,
	beq	.L67	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L394	@,
	movw	r3, #595	@,
	movw	ip, #:lower16:.LC5	@ tmp588,
	movt	ip, #:upper16:.LC5	@ tmp588,
	str	ip, [sp, #0]	@ tmp588,
	bl	HI_LogOut	@
.L368:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	ca_up	@
	b	.L65	@
.L286:
	mov	r1, #256	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetRSAKeyN	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #256	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L203:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetR2RLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L232:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCsa2HardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L228:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLowPowerDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L174:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_DecryptLpk	@
	subs	r4, r0, #0	@ ret,
	beq	.L67	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L394	@,
	mov	r3, #584	@,
	movw	lr, #:lower16:.LC5	@ tmp584,
	movt	lr, #:upper16:.LC5	@ tmp584,
	str	lr, [sp, #0]	@ tmp584,
	bl	HI_LogOut	@
	b	.L368	@
.L116:
	bl	DRV_CA_OTP_V200_SetJtagReadDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L112:
	bl	DRV_CA_OTP_V200_SetRuntimeCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L170:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetWakeupDDRCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L199:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetCWLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L225:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBloadModeSelLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L110:
	bl	DRV_CA_OTP_V200_SetLpcEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L167:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetLpcEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L82:
	bl	DRV_CA_OTP_V200_SetBootSelLock_0	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L283:
	sub	r0, fp, #44	@,,
	sub	r1, fp, #40	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	ldr	r3, [fp, #-40]	@ ChipVersion, ChipVersion
	cmp	r3, #512	@ ChipVersion,
	beq	.L372	@,
	bhi	.L374	@,
	sub	r2, r3, #256	@ tmp708, ChipVersion,
	cmp	r2, #1	@ tmp708,
	bls	.L389	@,
.L370:
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	bl	ca_snprintf	@
	b	.L67	@
.L226:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSelfBoot	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L254:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetOtpGlobalLockEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L197:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_StatR2RHardKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L189:
	ldr	r0, [fp, #-32]	@ u32VendorId, u32VendorId
	cmp	r0, #1	@ u32VendorId,
	beq	.L390	@,
	sub	r4, fp, #36	@ tmp499,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp499
	bl	__memzero	@
	mov	r0, r4	@, tmp499
	bl	DRV_CA_OTP_V200_Get_UniqueMarketId	@
	ldrb	ip, [fp, #-33]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r1, [fp, #-34]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r3, [fp, #-35]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2	@ IDbuf, IDbuf
	strb	ip, [r6, #0]	@ IDbuf, <variable>.KeyBuf
	strb	r1, [r6, #1]	@ IDbuf, <variable>.KeyBuf
	strb	r2, [r6, #3]	@ IDbuf, <variable>.KeyBuf
	strb	r3, [r6, #2]	@ IDbuf, <variable>.KeyBuf
	mov	r4, r0	@ ret,
	b	.L363	@
.L88:
	bl	DRV_CA_OTP_V200_SetSecureChipP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L284:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetCsa3En	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L257:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSecureChipFlagLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L84:
	bl	DRV_CA_OTP_V200_SetSCSActive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L68:
	bl	DRV_CA_OTP_V200_SetChipIdLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L125:
	bl	HAL_ADVCA_V300_SWPKKeyLadderOpen	@
	b	.L67	@
.L127:
	bl	DRV_CA_OTP_V200_SetCsa3En	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L96:
	bl	DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L183:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetR2RRootKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L185:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetJtagKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L269:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L241:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCSA3DeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L243:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSSPDeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L211:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBootMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L182:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetCSA3RootKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L98:
	bl	DRV_CA_OTP_V200_SetTSCWDeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L153:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSCSA3HardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L212:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBootSelLock_0	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L214:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSCSActive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L154:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSSPEHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L270:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetVersionIDCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L272:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBlMSIDCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L196:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_StatHardCwSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L139:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetCSA3LadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L95:
	bl	DRV_CA_OTP_V200_LockHardCwSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L81:
	bl	DRV_CA_OTP_V200_SetCSA3LadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L109:
	bl	DRV_CA_OTP_V200_SetTsOutDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L255:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetOtpGlobalLockEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L138:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetSPAlgorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L168:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetLpcMasterEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L70:
	bl	DRV_CA_OTP_V200_SetMktIdP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L156:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSCSA3Deactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L395:
	.align	2
.L394:
	.word	.LANCHOR1+72
	.word	.LANCHOR1+96
	.word	.LANCHOR1+116
.L74:
	mov	r0, #1	@,
	bl	DRV_CA_OTP_V200_SetBloadDecEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L190:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetSPDscMode	@
	b	.L67	@
.L192:
	ldr	r0, [fp, #-32]	@ u32VendorId, u32VendorId
	cmp	r0, #1	@ u32VendorId,
	beq	.L391	@,
	sub	r4, fp, #36	@ tmp521,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp521
	bl	__memzero	@
	mov	r0, r4	@, tmp521
	bl	DRV_CA_OTP_V200_Get_UniqueSTBSN	@
	ldrb	ip, [fp, #-33]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r1, [fp, #-34]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r3, [fp, #-35]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2	@ IDbuf, IDbuf
	strb	ip, [r6, #0]	@ IDbuf, <variable>.KeyBuf
	strb	r1, [r6, #1]	@ IDbuf, <variable>.KeyBuf
	strb	r2, [r6, #3]	@ IDbuf, <variable>.KeyBuf
	strb	r3, [r6, #2]	@ IDbuf, <variable>.KeyBuf
	mov	r4, r0	@ ret,
	b	.L363	@
.L160:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetMCTDESHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L148:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBootDecMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L147:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSDESHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L221:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSecureChipP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L219:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetRootKeyLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L131:
	ldr	lr, [fp, #-32]	@ u32VendorId, u32VendorId
	cmp	lr, #1	@ u32VendorId,
	beq	.L392	@,
	sub	r4, fp, #36	@ tmp510,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp510
	bl	__memzero	@
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	ip, [r6, #3]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	mov	r0, r4	@, tmp510
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	strb	ip, [fp, #-36]	@ <variable>.KeyBuf, IDbuf
	strb	r1, [fp, #-35]	@ <variable>.KeyBuf, IDbuf
	strb	r2, [fp, #-34]	@ <variable>.KeyBuf, IDbuf
	strb	r3, [fp, #-33]	@ <variable>.KeyBuf, IDbuf
	bl	DRV_CA_OTP_V200_Set_UniqueSTBSN	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L103:
	bl	DRV_CA_OTP_V200_LockHardTDESSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L102:
	bl	DRV_CA_OTP_V200_LockHardAESSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L75:
	bl	DRV_CA_OTP_V200_LockR2RHardKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L77:
	mov	r0, #1	@,
	bl	DRV_CA_OTP_V200_DisableSelfBoot	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L261:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTsOutDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L89:
	bl	DRV_CA_OTP_V200_LockBootDecEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L91:
	bl	DRV_CA_OTP_V200_SetBloadModeSelLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L276:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDebugDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L161:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetDesHardDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L163:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetOtpGlobalLockEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L206:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSPLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L205:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetSPLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L207:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetSPAlgorithm	@
	b	.L67	@
.L218:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetRSAKeyLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L132:
	sub	r4, fp, #36	@ tmp531,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp531
	bl	__memzero	@
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	ip, [r6, #3]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	mov	r0, r4	@, tmp531
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	strb	ip, [fp, #-36]	@ <variable>.KeyBuf, IDbuf
	strb	r1, [fp, #-35]	@ <variable>.KeyBuf, IDbuf
	strb	r2, [fp, #-34]	@ <variable>.KeyBuf, IDbuf
	strb	r3, [fp, #-33]	@ <variable>.KeyBuf, IDbuf
	bl	DRV_CA_OTP_V200_Set_UniqueVersionId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L134:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetCWAlgorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L177:
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	r4, fp, #68	@ tmp572,,
	mov	lr, r4	@ tmp739, tmp572
	stmia	lr!, {r0, r1, r2, r3}	@ tmp739,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, #0	@,
	mov	r3, r2	@,
	stmia	lr, {r0, r1}	@ tmp739,,
	add	r1, r4, #8	@, tmp572,
	ldr	r0, [fp, #-68]	@, CryptParam.ladder
	bl	HAL_ADVCA_V300_DecryptSP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L176:
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	r4, fp, #68	@ tmp567,,
	mov	ip, r4	@ tmp738, tmp567
	stmia	ip!, {r0, r1, r2, r3}	@ tmp738,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, #0	@,
	mov	r3, #1	@,
	stmia	ip, {r0, r1}	@ tmp738,,
	add	r1, r4, #8	@, tmp567,
	ldr	r0, [fp, #-68]	@, CryptParam.ladder
	bl	HAL_ADVCA_V300_CryptR2R	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L178:
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	ip, fp, #68	@ tmp577,,
	mov	r4, ip	@ tmp740, tmp577
	stmia	r4!, {r0, r1, r2, r3}	@ tmp740,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, #0	@,
	mov	r3, r2	@,
	stmia	r4, {r0, r1}	@ tmp740,,
	add	r1, ip, #8	@, tmp577,
	ldr	r0, [fp, #-68]	@, CryptParam.ladder
	bl	HAL_ADVCA_V300_DecryptCsa3	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L145:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBloadDecEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L248:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetMCAESHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L250:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDesHardDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L235:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L234:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCSA3HardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L236:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSSPHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L247:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetMCAESHardonlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L277:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetRigthCtrlEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L279:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetR2RDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L119:
	bl	DRV_CA_OTP_V200_SetRigthCtrlEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L118:
	bl	DRV_CA_OTP_V200_SetDebugDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L120:
	bl	DRV_CA_OTP_V200_SetCSA2Deactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L264:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLpcMasterEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L263:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLpcEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L265:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLpcMasterEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L105:
	bl	DRV_CA_OTP_V200_SetDDRScrambleEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L357:
	movw	r1, #:lower16:-2147196443	@ tmp448,
	movt	r1, #:upper16:-2147196443	@ tmp448,
	cmp	r5, r1	@ cmd, tmp448
	beq	.L281	@,
	movw	r2, #:lower16:-2147196434	@ tmp449,
	movt	r2, #:upper16:-2147196434	@ tmp449,
	cmp	r5, r2	@ cmd, tmp449
	beq	.L282	@,
	movw	r4, #:lower16:-2147196445	@ tmp450,
	movt	r4, #:upper16:-2147196445	@ tmp450,
	cmp	r5, r4	@ cmd, tmp450
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetCSA3Deactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L281:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSPDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L282:
	sub	r0, fp, #40	@,,
	bl	DRV_CA_OTP_V200_GetMktIdP	@
	ldr	r3, [fp, #-40]	@ u32MarketIdSet, u32MarketIdSet
	str	r3, [r6, #0]	@ u32MarketIdSet,* arg
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	b	.L363	@
.L314:
	movw	lr, #25058	@ tmp247,
	cmp	r5, lr	@ cmd, tmp247
	beq	.L122	@,
	movw	r3, #25060	@ tmp248,
	cmp	r5, r3	@ cmd, tmp248
	beq	.L123	@,
	sub	ip, r3, #4	@ tmp249, tmp249,
	cmp	r5, ip	@ cmd, tmp249
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetR2RDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L122:
	bl	DRV_CA_OTP_V200_SetCSA3Deactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L123:
	bl	DRV_CA_OTP_V200_SetSPDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L353:
	movw	r1, #:lower16:-2147196471	@ tmp430,
	movt	r1, #:upper16:-2147196471	@ tmp430,
	cmp	r5, r1	@ cmd, tmp430
	beq	.L267	@,
	movw	r2, #:lower16:-2147196469	@ tmp431,
	movt	r2, #:upper16:-2147196469	@ tmp431,
	cmp	r5, r2	@ cmd, tmp431
	beq	.L268	@,
	movw	r4, #:lower16:-2147196473	@ tmp432,
	movt	r4, #:upper16:-2147196473	@ tmp432,
	cmp	r5, r4	@ cmd, tmp432
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetRuntimeCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L267:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetRuntimeCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L268:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetWakeupDDRCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L311:
	movw	r1, #25012	@ tmp230,
	cmp	r5, r1	@ cmd, tmp230
	beq	.L107	@,
	movw	r3, #25016	@ tmp231,
	cmp	r5, r3	@ cmd, tmp231
	beq	.L108	@,
	sub	r2, r3, #8	@ tmp232, tmp232,
	cmp	r5, r2	@ cmd, tmp232
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetOtpGlobalLockEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L107:
	bl	DRV_CA_OTP_V200_SetSecureChipFlagLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L108:
	bl	DRV_CA_OTP_V200_SetDcasKLDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L350:
	movw	r1, #:lower16:-2147196501	@ tmp413,
	movt	r1, #:upper16:-2147196501	@ tmp413,
	cmp	r5, r1	@ cmd, tmp413
	beq	.L252	@,
	movw	r2, #:lower16:-2147196499	@ tmp414,
	movt	r2, #:upper16:-2147196499	@ tmp414,
	cmp	r5, r2	@ cmd, tmp414
	beq	.L253	@,
	movw	r4, #:lower16:-2147196503	@ tmp415,
	movt	r4, #:upper16:-2147196503	@ tmp415,
	cmp	r5, r4	@ cmd, tmp415
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDesHardDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L252:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDDRScrambleEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L253:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDDRScrambleEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L345:
	movw	r0, #:lower16:-2147196529	@ tmp393,
	movt	r0, #:upper16:-2147196529	@ tmp393,
	cmp	r5, r0	@ cmd, tmp393
	beq	.L238	@,
	movw	r1, #:lower16:-2147196527	@ tmp394,
	movt	r1, #:upper16:-2147196527	@ tmp394,
	cmp	r5, r1	@ cmd, tmp394
	beq	.L239	@,
	movw	r2, #:lower16:-2147196531	@ tmp395,
	movt	r2, #:upper16:-2147196531	@ tmp395,
	cmp	r5, r2	@ cmd, tmp395
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSSPHardonlyEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L238:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCWDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L239:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTSCWDeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L319:
	movw	lr, #:lower16:1074028838	@ tmp267,
	movt	lr, #:upper16:1074028838	@ tmp267,
	cmp	r5, lr	@ cmd, tmp267
	beq	.L136	@,
	movw	ip, #:lower16:1074028841	@ tmp268,
	movt	ip, #:upper16:1074028841	@ tmp268,
	cmp	r5, ip	@ cmd, tmp268
	beq	.L137	@,
	movw	r0, #:lower16:1074028834	@ tmp269,
	movt	r0, #:upper16:1074028834	@ tmp269,
	cmp	r5, r0	@ cmd, tmp269
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetR2RLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L136:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetR2RAlgorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L137:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetSPLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L329:
	movw	lr, #:lower16:1107321169	@ tmp319,
	movt	lr, #:upper16:1107321169	@ tmp319,
	cmp	r5, lr	@ cmd, tmp319
	beq	.L180	@,
	movw	ip, #:lower16:1107321174	@ tmp320,
	movt	ip, #:upper16:1107321174	@ tmp320,
	cmp	r5, ip	@ cmd, tmp320
	beq	.L181	@,
	movw	r0, #:lower16:1107321168	@ tmp321,
	movt	r0, #:upper16:1107321168	@ tmp321,
	cmp	r5, r0	@ cmd, tmp321
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetRSAKeyN	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L180:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetRSAKeyE	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L181:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_SetCSA2RootKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L326:
	movw	lr, #:lower16:1074028982	@ tmp302,
	movt	lr, #:upper16:1074028982	@ tmp302,
	cmp	r5, lr	@ cmd, tmp302
	beq	.L165	@,
	movw	ip, #:lower16:1074028986	@ tmp303,
	movt	ip, #:upper16:1074028986	@ tmp303,
	cmp	r5, ip	@ cmd, tmp303
	beq	.L166	@,
	movw	r0, #:lower16:1074028978	@ tmp304,
	movt	r0, #:upper16:1074028978	@ tmp304,
	cmp	r5, r0	@ cmd, tmp304
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetSecureChipFlag	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L165:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetDcasKLDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L166:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTsOutDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L338:
	movw	r0, #:lower16:-2147196621	@ tmp358,
	movt	r0, #:upper16:-2147196621	@ tmp358,
	cmp	r5, r0	@ cmd, tmp358
	beq	.L209	@,
	movw	r1, #:lower16:-2147196619	@ tmp359,
	movt	r1, #:upper16:-2147196619	@ tmp359,
	cmp	r5, r1	@ cmd, tmp359
	beq	.L210	@,
	movw	r2, #:lower16:-2147196623	@ tmp360,
	movt	r2, #:upper16:-2147196623	@ tmp360,
	cmp	r5, r2	@ cmd, tmp360
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetCSA3LadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L209:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetCSA3LadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L210:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetCSA3Algorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L304:
	movw	ip, #24868	@ tmp196,
	cmp	r5, ip	@ cmd, tmp196
	beq	.L79	@,
	movw	r3, #24875	@ tmp197,
	cmp	r5, r3	@ cmd, tmp197
	beq	.L80	@,
	sub	r0, r3, #14	@ tmp198, tmp198,
	cmp	r5, r0	@ cmd, tmp198
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetDVBLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L79:
	bl	DRV_CA_OTP_V200_SetR2RLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L80:
	bl	DRV_CA_OTP_V200_SetSPLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L307:
	movw	r4, #24956	@ tmp212,
	cmp	r5, r4	@ cmd, tmp212
	beq	.L93	@,
	movw	r3, #24960	@ tmp213,
	cmp	r5, r3	@ cmd, tmp213
	beq	.L94	@,
	sub	r3, r3, #8	@ tmp214, tmp214,
	cmp	r5, r3	@ cmd, tmp214
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetSelfbootLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L93:
	bl	DRV_CA_OTP_V200_SetLowPowerDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L94:
	bl	DRV_CA_OTP_V200_DisableLinkProtect	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L325:
	movw	ip, #:lower16:1074028954	@ tmp295,
	movt	ip, #:upper16:1074028954	@ tmp295,
	cmp	r5, ip	@ cmd, tmp295
	beq	.L158	@,
	movw	r0, #:lower16:1074028958	@ tmp296,
	movt	r0, #:upper16:1074028958	@ tmp296,
	cmp	r5, r0	@ cmd, tmp296
	beq	.L159	@,
	movw	r1, #:lower16:1074028950	@ tmp297,
	movt	r1, #:upper16:1074028950	@ tmp297,
	cmp	r5, r1	@ cmd, tmp297
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSSPDeactive	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L158:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetDesDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L159:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetMCAESHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L335:
	movw	r0, #:lower16:-2147196657	@ tmp341,
	movt	r0, #:upper16:-2147196657	@ tmp341,
	cmp	r5, r0	@ cmd, tmp341
	beq	.L194	@,
	movw	r1, #:lower16:-2147196655	@ tmp342,
	movt	r1, #:upper16:-2147196655	@ tmp342,
	cmp	r5, r1	@ cmd, tmp342
	beq	.L195	@,
	movw	r2, #:lower16:-2147196659	@ tmp343,
	movt	r2, #:upper16:-2147196659	@ tmp343,
	cmp	r5, r2	@ cmd, tmp343
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetStbSnP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L194:
	sub	r4, fp, #36	@ tmp541,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp541
	bl	__memzero	@
	mov	r0, r4	@, tmp541
	bl	DRV_CA_OTP_V200_Get_UniqueVersionId	@
	ldrb	r1, [fp, #-34]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r3, [fp, #-35]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2	@ IDbuf, IDbuf
	mov	r4, r0	@ ret,
	ldrb	r0, [fp, #-33]	@ zero_extendqisi2	@ IDbuf, IDbuf
	strb	r1, [r6, #1]	@ IDbuf, <variable>.KeyBuf
	strb	r2, [r6, #3]	@ IDbuf, <variable>.KeyBuf
	strb	r0, [r6, #0]	@ IDbuf, <variable>.KeyBuf
	strb	r3, [r6, #2]	@ IDbuf, <variable>.KeyBuf
	b	.L363	@
.L195:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetVersionIdCheckLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L322:
	movw	lr, #:lower16:1074028926	@ tmp284,
	movt	lr, #:upper16:1074028926	@ tmp284,
	cmp	r5, lr	@ cmd, tmp284
	beq	.L151	@,
	movw	ip, #:lower16:1074028930	@ tmp285,
	movt	ip, #:upper16:1074028930	@ tmp285,
	cmp	r5, ip	@ cmd, tmp285
	beq	.L152	@,
	movw	r0, #:lower16:1074028922	@ tmp286,
	movt	r0, #:upper16:1074028922	@ tmp286,
	cmp	r5, r0	@ cmd, tmp286
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetLowPowerDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L151:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetLinkProtectDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L152:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetTSCsa2HardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L342:
	movw	r0, #:lower16:-2147196563	@ tmp376,
	movt	r0, #:upper16:-2147196563	@ tmp376,
	cmp	r5, r0	@ cmd, tmp376
	beq	.L223	@,
	movw	r1, #:lower16:-2147196557	@ tmp377,
	movt	r1, #:upper16:-2147196557	@ tmp377,
	cmp	r5, r1	@ cmd, tmp377
	beq	.L224	@,
	movw	r2, #:lower16:-2147196565	@ tmp378,
	movt	r2, #:upper16:-2147196565	@ tmp378,
	cmp	r5, r2	@ cmd, tmp378
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBloadDecEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L223:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBloadDecEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L224:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBloadModeSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L310:
	movw	r4, #24984	@ tmp223,
	cmp	r5, r4	@ cmd, tmp223
	beq	.L100	@,
	movw	r3, #24988	@ tmp224,
	cmp	r5, r3	@ cmd, tmp224
	beq	.L101	@,
	sub	r3, r3, #8	@ tmp225, tmp225,
	cmp	r5, r3	@ cmd, tmp225
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetTSCSA3DeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L100:
	bl	DRV_CA_OTP_V200_SetTSSPDeactiveLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L101:
	bl	DRV_CA_OTP_V200_SetDesDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L341:
	movw	r1, #:lower16:-2147196595	@ tmp369,
	movt	r1, #:upper16:-2147196595	@ tmp369,
	cmp	r5, r1	@ cmd, tmp369
	beq	.L216	@,
	movw	r2, #:lower16:-2147196593	@ tmp370,
	movt	r2, #:upper16:-2147196593	@ tmp370,
	cmp	r5, r2	@ cmd, tmp370
	beq	.L217	@,
	movw	r4, #:lower16:-2147196609	@ tmp371,
	movt	r4, #:upper16:-2147196609	@ tmp371,
	cmp	r5, r4	@ cmd, tmp371
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetJtagProtectMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L216:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBootSelCtrl	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L217:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBootSelCtrlLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L356:
	movw	r2, #:lower16:-2147196457	@ tmp441,
	movt	r2, #:upper16:-2147196457	@ tmp441,
	cmp	r5, r2	@ cmd, tmp441
	beq	.L274	@,
	movw	r4, #:lower16:-2147196455	@ tmp442,
	movt	r4, #:upper16:-2147196455	@ tmp442,
	cmp	r5, r4	@ cmd, tmp442
	beq	.L275	@,
	movw	r3, #:lower16:-2147196459	@ tmp443,
	movt	r3, #:upper16:-2147196459	@ tmp443,
	cmp	r5, r3	@ cmd, tmp443
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetBlMSIDCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L274:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetJtagReadDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L275:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetJtagWriteDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L303:
	movw	r1, #24848	@ tmp189,
	cmp	r5, r1	@ cmd, tmp189
	beq	.L72	@,
	movw	r3, #24850	@ tmp190,
	cmp	r5, r3	@ cmd, tmp190
	beq	.L73	@,
	sub	r2, r3, #6	@ tmp191, tmp191,
	cmp	r5, r2	@ cmd, tmp191
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetStbSnP	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L72:
	bl	DRV_CA_OTP_V200_SetVersionIdLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L73:
	bl	DRV_CA_OTP_V200_LockHardCwSel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L321:
	movw	lr, #:lower16:1074028876	@ tmp276,
	movt	lr, #:upper16:1074028876	@ tmp276,
	cmp	r5, lr	@ cmd, tmp276
	beq	.L143	@,
	movw	ip, #:lower16:1074028898	@ tmp277,
	movt	ip, #:upper16:1074028898	@ tmp277,
	cmp	r5, ip	@ cmd, tmp277
	beq	.L144	@,
	movw	r0, #:lower16:1074028862	@ tmp278,
	movt	r0, #:upper16:1074028862	@ tmp278,
	cmp	r5, r0	@ cmd, tmp278
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetJtagProtectMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L143:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBootSelCtrl	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L144:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetSecureChipId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L352:
	movw	r1, #:lower16:-2147196487	@ tmp422,
	movt	r1, #:upper16:-2147196487	@ tmp422,
	cmp	r5, r1	@ cmd, tmp422
	beq	.L259	@,
	movw	r2, #:lower16:-2147196485	@ tmp423,
	movt	r2, #:upper16:-2147196485	@ tmp423,
	cmp	r5, r2	@ cmd, tmp423
	beq	.L260	@,
	movw	r4, #:lower16:-2147196489	@ tmp424,
	movt	r4, #:upper16:-2147196489	@ tmp424,
	cmp	r5, r4	@ cmd, tmp424
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDcasKLDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L259:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDcasKLDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L260:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetTsOutDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L334:
	movw	r1, #:lower16:-2147196670	@ tmp334,
	movt	r1, #:upper16:-2147196670	@ tmp334,
	cmp	r5, r1	@ cmd, tmp334
	beq	.L187	@,
	movw	r2, #:lower16:-2147196667	@ tmp335,
	movt	r2, #:upper16:-2147196667	@ tmp335,
	cmp	r5, r2	@ cmd, tmp335
	beq	.L188	@,
	movw	r4, #:lower16:1107321324	@ tmp336,
	movt	r4, #:upper16:1107321324	@ tmp336,
	cmp	r5, r4	@ cmd, tmp336
	bne	.L67	@,
	mov	r1, #512	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	mov	r2, #256	@,
	mov	r1, r6	@, arg
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	memcpy	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_SetRSAKeyN	@
	mov	r1, #32	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	add	r1, r6, #496	@, arg,
	mov	r2, #16	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	memcpy	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_SetRSAKeyE	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L187:
	ldr	r3, [fp, #-32]	@ u32VendorId.261, u32VendorId
	cmp	r3, #3	@ u32VendorId.261,
	cmpne	r3, #1	@, u32VendorId.261,
	bne	.L362	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetChipId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L188:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetChipIdLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L362:
	sub	r4, fp, #36	@ tmp475,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp475
	bl	__memzero	@
	mov	r0, r4	@, tmp475
	bl	DRV_CA_OTP_V200_GetUniqueChipId	@
	ldrb	r2, [fp, #-35]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2	@ IDbuf, IDbuf
	mov	ip, r2, asl #16	@ tmp480, IDbuf,
	ldrb	r2, [fp, #-34]	@ zero_extendqisi2	@ IDbuf, IDbuf
	mov	r4, r0	@ ret,
	ldrb	r0, [fp, #-36]	@ zero_extendqisi2	@ IDbuf, IDbuf
	add	r1, ip, r0, asl #24	@, tmp481, tmp480, IDbuf,
	add	r0, r1, r3	@ tmp483, tmp481, IDbuf
	add	ip, r0, r2, asl #8	@, tmp486, tmp483, IDbuf,
	str	ip, [r6, #0]	@ tmp486,* arg
	b	.L363	@
.L349:
	movw	r2, #:lower16:-2147196515	@ tmp406,
	movt	r2, #:upper16:-2147196515	@ tmp406,
	cmp	r5, r2	@ cmd, tmp406
	beq	.L245	@,
	movw	r4, #:lower16:-2147196513	@ tmp407,
	movt	r4, #:upper16:-2147196513	@ tmp407,
	cmp	r5, r4	@ cmd, tmp407
	beq	.L246	@,
	movw	r3, #:lower16:-2147196517	@ tmp408,
	movt	r3, #:upper16:-2147196517	@ tmp408,
	cmp	r5, r3	@ cmd, tmp408
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDesDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L245:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDesDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L246:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetMCAESHardonlyEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L306:
	movw	lr, #24916	@ tmp205,
	cmp	r5, lr	@ cmd, tmp205
	beq	.L86	@,
	movw	r3, #24928	@ tmp206,
	cmp	r5, r3	@ cmd, tmp206
	beq	.L87	@,
	sub	ip, r3, #18	@ tmp207, tmp207,
	cmp	r5, ip	@ cmd, tmp207
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetBootSelCtrlLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L86:
	bl	DRV_CA_OTP_V200_LockRSAKey	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L87:
	bl	DRV_CA_OTP_V200_SetRootKeyLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L318:
	movw	ip, #:lower16:1074028806	@ tmp260,
	movt	ip, #:upper16:1074028806	@ tmp260,
	cmp	r5, ip	@ cmd, tmp260
	beq	.L129	@,
	movw	r0, #:lower16:1074028807	@ tmp261,
	movt	r0, #:upper16:1074028807	@ tmp261,
	cmp	r5, r0	@ cmd, tmp261
	beq	.L130	@,
	movw	r1, #:lower16:1074028801	@ tmp262,
	movt	r1, #:upper16:1074028801	@ tmp262,
	cmp	r5, r1	@ cmd, tmp262
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetChipId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L129:
	ldr	lr, [fp, #-32]	@ u32VendorId, u32VendorId
	cmp	lr, #1	@ u32VendorId,
	beq	.L393	@,
	sub	r4, fp, #36	@ tmp488,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp488
	bl	__memzero	@
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	ip, [r6, #3]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	mov	r0, r4	@, tmp488
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	strb	ip, [fp, #-36]	@ <variable>.KeyBuf, IDbuf
	strb	r1, [fp, #-35]	@ <variable>.KeyBuf, IDbuf
	strb	r2, [fp, #-34]	@ <variable>.KeyBuf, IDbuf
	strb	r3, [fp, #-33]	@ <variable>.KeyBuf, IDbuf
	bl	DRV_CA_OTP_V200_Set_UniqueMarketId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L130:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_SetSPDscMode	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L328:
	movw	lr, #:lower16:1074029010	@ tmp311,
	movt	lr, #:upper16:1074029010	@ tmp311,
	cmp	r5, lr	@ cmd, tmp311
	beq	.L172	@,
	movw	ip, #:lower16:1074029039	@ tmp312,
	movt	ip, #:upper16:1074029039	@ tmp312,
	cmp	r5, ip	@ cmd, tmp312
	beq	.L173	@,
	movw	r0, #:lower16:1074029006	@ tmp313,
	movt	r0, #:upper16:1074029006	@ tmp313,
	cmp	r5, r0	@ cmd, tmp313
	bne	.L67	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetVersionIdCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L172:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_SetBlMSIDCheckEn	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L173:
	ldr	r0, [r6, #0]	@,* arg
	bl	HAL_ADVCA_V300_DCASOpen	@
	b	.L67	@
.L337:
	movw	r0, #:lower16:-2147196640	@ tmp350,
	movt	r0, #:upper16:-2147196640	@ tmp350,
	cmp	r5, r0	@ cmd, tmp350
	beq	.L201	@,
	movw	r1, #:lower16:-2147196637	@ tmp351,
	movt	r1, #:upper16:-2147196637	@ tmp351,
	cmp	r5, r1	@ cmd, tmp351
	beq	.L202	@,
	movw	r2, #:lower16:-2147196642	@ tmp352,
	movt	r2, #:upper16:-2147196642	@ tmp352,
	cmp	r5, r2	@ cmd, tmp352
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetDVBLadderLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L201:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetCWAlgorithm	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L202:
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_GetR2RLadderLevel	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L344:
	movw	r0, #:lower16:-2147196545	@ tmp385,
	movt	r0, #:upper16:-2147196545	@ tmp385,
	cmp	r5, r0	@ cmd, tmp385
	beq	.L230	@,
	movw	r1, #:lower16:-2147196543	@ tmp386,
	movt	r1, #:upper16:-2147196543	@ tmp386,
	cmp	r5, r1	@ cmd, tmp386
	beq	.L231	@,
	movw	r2, #:lower16:-2147196547	@ tmp387,
	movt	r2, #:upper16:-2147196547	@ tmp387,
	cmp	r5, r2	@ cmd, tmp387
	bne	.L67	@,
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLowPowerDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L230:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLinkProtectDisable	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L231:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetLinkProtectDisableLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L313:
	movw	r0, #25040	@ tmp239,
	cmp	r5, r0	@ cmd, tmp239
	beq	.L114	@,
	movw	r3, #25044	@ tmp240,
	cmp	r5, r3	@ cmd, tmp240
	beq	.L115	@,
	sub	r1, r3, #8	@ tmp241, tmp241,
	cmp	r5, r1	@ cmd, tmp241
	bne	.L67	@,
	bl	DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L114:
	bl	DRV_CA_OTP_V200_SetVersionIdCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L115:
	bl	DRV_CA_OTP_V200_SetBlMSIDCheckEnLock	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L360:
	movw	r1, #:lower16:-1071357455	@ tmp465,
	movt	r1, #:upper16:-1071357455	@ tmp465,
	cmp	r5, r1	@ cmd, tmp465
	beq	.L296	@,
	movw	r2, #:lower16:-1056415479	@ tmp466,
	movt	r2, #:upper16:-1056415479	@ tmp466,
	cmp	r5, r2	@ cmd, tmp466
	beq	.L297	@,
	movw	r4, #:lower16:-1071619769	@ tmp467,
	movt	r4, #:upper16:-1071619769	@ tmp467,
	cmp	r5, r4	@ cmd, tmp467
	bne	.L67	@,
	mov	r0, #1	@,
	bl	DRV_CA_OTP_V200_SetBootDecMode	@
	add	r1, r6, #16	@,,
	mov	r4, r0	@ ret.698,
	mov	r0, r6	@, arg
	bl	HAL_ADVCA_V300_EncryptSwpk	@
	orrs	r4, r0, r4	@ ret,, ret.698
	beq	.L67	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L396	@,
	movw	r3, #607	@,
	movw	lr, #:lower16:.LC6	@ tmp592,
	movt	lr, #:upper16:.LC6	@ tmp592,
	str	lr, [sp, #0]	@ tmp592,
	bl	HI_LogOut	@
	b	.L368	@
.L296:
	mov	r1, r6	@ tmp703, arg
	mov	r2, #0	@,
	ldr	r0, [r1], #4	@ <variable>.level, <variable>.level
	mov	r3, r2	@,
	add	r6, r6, #20	@ tmp704, arg,
	str	r6, [sp, #0]	@ tmp704,
	bl	HAL_ADVCA_V300_DecryptDCAS	@
	b	.L67	@
.L297:
	mov	r0, r6	@, arg
	bl	DRV_ADVCA_V300_Ioctl_Child	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L359:
	movw	r1, #:lower16:-2113904297	@ tmp457,
	movt	r1, #:upper16:-2113904297	@ tmp457,
	cmp	r5, r1	@ cmd, tmp457
	beq	.L288	@,
	movw	r2, #:lower16:-2113904295	@ tmp458,
	movt	r2, #:upper16:-2113904295	@ tmp458,
	cmp	r5, r2	@ cmd, tmp458
	beq	.L289	@,
	movw	r4, #:lower16:-2113904301	@ tmp459,
	movt	r4, #:upper16:-2113904301	@ tmp459,
	cmp	r5, r4	@ cmd, tmp459
	bne	.L67	@,
	mov	r1, #16	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetRSAKeyE	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L288:
	mov	r1, #32	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetCSA2RootKey	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L289:
	mov	r1, #32	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	DRV_CA_OTP_V200_GetCSA3RootKey	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #16	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L363	@
.L374:
	cmp	r3, #768	@ ChipVersion,
	bne	.L370	@,
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r2, #:upper16:.LC9	@,
	bl	ca_snprintf	@
	b	.L67	@
.L393:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_Set_MarketId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L391:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetSTBSN	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L392:
	ldr	r0, [r6, #0]	@,* arg
	bl	DRV_CA_OTP_V200_Set_STBSN	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L390:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_MarketId	@
	mov	r4, r0	@ ret,
	b	.L363	@
.L372:
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	bl	ca_snprintf	@
	b	.L67	@
.L389:
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	bl	ca_snprintf	@
	b	.L67	@
.L397:
	.align	2
.L396:
	.word	.LANCHOR1+72
	.fnend
	.size	DRV_ADVCA_V300_Ioctl, .-DRV_ADVCA_V300_Ioctl
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.20726, %object
	.size	__func__.20726, 23
__func__.20726:
	.ascii	"DRV_ADVCA_V300_Release\000"
	.space	1
	.type	__func__.20713, %object
	.size	__func__.20713, 20
__func__.20713:
	.ascii	"DRV_ADVCA_V300_Open\000"
	.type	__func__.19690, %object
	.size	__func__.19690, 27
__func__.19690:
	.ascii	"DRV_ADVCA_V300_Ioctl_Child\000"
	.space	1
	.type	__func__.19800, %object
	.size	__func__.19800, 21
__func__.19800:
	.ascii	"DRV_ADVCA_V300_Ioctl\000"
	.space	3
.LC11:
	.ascii	"V1.0.1.4_20130607\000\000"
	.space	1
.LC12:
	.ascii	"V1.0.1.8_20130604\000\000"
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	g_CaSem, %object
	.size	g_CaSem, 16
g_CaSem:
@ lock:
@ raw_lock:
@ lock:
	.word	0
@ count:
	.word	1
@ wait_list:
@ next:
	.word	g_CaSem+8
@ prev:
	.word	g_CaSem+8
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s:  down_interruptible err ! \012\000"
.LC1:
	.ascii	"%s:  ok ! \012\000"
.LC2:
	.ascii	"Null pointer input!\012\000"
	.space	3
.LC3:
	.ascii	"Invalid child cmd id!\012\000"
	.space	1
.LC4:
	.ascii	"%s:  get vendor type err ! \012\000"
	.space	3
.LC5:
	.ascii	"ca_DecryptLpk error\012\000"
	.space	3
.LC6:
	.ascii	"ca_EncryptSwpk error\012\000"
	.space	2
.LC7:
	.ascii	"11\000"
	.space	1
.LC8:
	.ascii	"20\000"
	.space	1
.LC9:
	.ascii	"30\000"
	.space	1
.LC10:
	.ascii	"xx\000"
	.space	1
.LC13:
	.ascii	"cmd = 0x%08x  ok !\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	keybuf.19798, %object
	.size	keybuf.19798, 512
keybuf.19798:
	.space	512
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
