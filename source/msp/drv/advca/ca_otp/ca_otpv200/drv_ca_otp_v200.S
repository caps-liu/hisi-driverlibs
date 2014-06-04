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
	.file	"drv_ca_otp_v200.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(drv_ca_otp_v200)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./ca_otp/ca_otpv200/.drv_ca_otp_v200.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./ca_otp/ca_otpv200/drv_ca_otp_v200.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./ca_otp/ca_otpv200/drv_ca_otp_v200.o -O2 -Wall -Wundef
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
	.global	DRV_CA_OTP_V200_GetECFlag
	.type	DRV_CA_OTP_V200_GetECFlag, %function
DRV_CA_OTP_V200_GetECFlag:
	.fnstart
.LFB780:
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
	subs	r5, r0, #0	@ pbEnECFlag, pbEnECFlag
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #5	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r7, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r7	@ <variable>.HAL_OTP_V200_ReadByte
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r6, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	mov	r7, r0	@ tmp143,
	mov	r0, #26	@,
	blx	r6	@ <variable>.HAL_OTP_V200_ReadByte
	ldr	r8, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	and	r7, r7, #127	@ tmp156, tmp143,
	ldr	r2, [r8, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	mov	r6, r0	@ tmp147,
	mov	r0, #28	@,
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	mov	r8, r0	@ tmp151,
	mov	r0, #30	@,
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, #83	@ tmp156,
	cmpeq	r6, #233	@, tmp147,
	bne	.L4	@,
	cmp	r0, #110	@ tmp155,
	cmpeq	r8, #219	@, tmp151,
	moveq	r3, #1	@ tmp171,
	moveq	r0, #0	@ ret,
	streq	r3, [r5, #0]	@ tmp171,* pbEnECFlag
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L4:
	mov	r0, #0	@ tmp172,
	str	r0, [r5, #0]	@ tmp172,* pbEnECFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetECFlag, .-DRV_CA_OTP_V200_GetECFlag
	.align	2
	.global	DRV_CA_OTP_V200_MarketId
	.type	DRV_CA_OTP_V200_MarketId, %function
DRV_CA_OTP_V200_MarketId:
	.fnstart
.LFB783:
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
	subs	r4, r0, #0	@ pu32MarketID, pu32MarketID
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L9	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #160	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	str	r0, [r4, #0]	@,* pu32MarketID
.L9:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_MarketId, .-DRV_CA_OTP_V200_MarketId
	.align	2
	.global	DRV_CA_OTP_V200_Get_UniqueMarketId
	.type	DRV_CA_OTP_V200_Get_UniqueMarketId, %function
DRV_CA_OTP_V200_Get_UniqueMarketId:
	.fnstart
.LFB784:
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
	subs	r5, r0, #0	@ pu8MarketID, pu8MarketID
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L13	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #160	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #0]	@,* pu8MarketID
	mov	r0, #161	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #1]	@,
	mov	r0, #162	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #2]	@,
	mov	r0, #163	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, #0	@ ret,
	strb	r0, [r5, #3]	@,
.L13:
	mov	r0, r3	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_Get_UniqueMarketId, .-DRV_CA_OTP_V200_Get_UniqueMarketId
	.align	2
	.global	DRV_CA_OTP_V200_GetSTBSN
	.type	DRV_CA_OTP_V200_GetSTBSN, %function
DRV_CA_OTP_V200_GetSTBSN:
	.fnstart
.LFB787:
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
	subs	r4, r0, #0	@ pu32SN, pu32SN
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L17	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #144	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	str	r0, [r4, #0]	@,* pu32SN
.L17:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSTBSN, .-DRV_CA_OTP_V200_GetSTBSN
	.align	2
	.global	DRV_CA_OTP_V200_Get_UniqueSTBSN
	.type	DRV_CA_OTP_V200_Get_UniqueSTBSN, %function
DRV_CA_OTP_V200_Get_UniqueSTBSN:
	.fnstart
.LFB788:
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
	subs	r5, r0, #0	@ pu8SN, pu8SN
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L21	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #144	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #0]	@,* pu8SN
	mov	r0, #145	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #1]	@,
	mov	r0, #146	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #2]	@,
	mov	r0, #147	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, #0	@ ret,
	strb	r0, [r5, #3]	@,
.L21:
	mov	r0, r3	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_Get_UniqueSTBSN, .-DRV_CA_OTP_V200_Get_UniqueSTBSN
	.align	2
	.global	DRV_CA_OTP_V200_Get_UniqueVersionId
	.type	DRV_CA_OTP_V200_Get_UniqueVersionId, %function
DRV_CA_OTP_V200_Get_UniqueVersionId:
	.fnstart
.LFB790:
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
	subs	r5, r0, #0	@ pu8VersionID, pu8VersionID
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L25	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #164	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #0]	@,* pu8VersionID
	mov	r0, #165	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #1]	@,
	mov	r0, #166	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #2]	@,
	mov	r0, #167	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, #0	@ ret,
	strb	r0, [r5, #3]	@,
.L25:
	mov	r0, r3	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_Get_UniqueVersionId, .-DRV_CA_OTP_V200_Get_UniqueVersionId
	.align	2
	.global	DRV_CA_OTP_V200_GetKlDPAFilterClkEn
	.type	DRV_CA_OTP_V200_GetKlDPAFilterClkEn, %function
DRV_CA_OTP_V200_GetKlDPAFilterClkEn:
	.fnstart
.LFB801:
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
	subs	r4, r0, #0	@ pbValue, pbValue
	movweq	r0, #:lower16:-2142371835	@ D.20177,
	movteq	r0, #:upper16:-2142371835	@ D.20177,
	beq	.L29	@,
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	ip, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	and	r1, r0, #128	@ tmp143,,
	uxtb	r3, r1	@ tmp144, tmp143
	cmp	r3, #0	@ tmp144,
	streq	r3, [r4, #0]	@ tmp144,* pbValue
	movne	r0, #0	@ D.20177,
	moveq	r0, r3	@ D.20177, tmp144
	movne	r3, #1	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* pbValue
.L29:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetKlDPAFilterClkEn, .-DRV_CA_OTP_V200_GetKlDPAFilterClkEn
	.align	2
	.global	DRV_CA_OTP_V200_GetMcDPAClkSelEn
	.type	DRV_CA_OTP_V200_GetMcDPAClkSelEn, %function
DRV_CA_OTP_V200_GetMcDPAClkSelEn:
	.fnstart
.LFB803:
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
	subs	r4, r0, #0	@ pbValue, pbValue
	movweq	r0, #:lower16:-2142371835	@ D.20219,
	movteq	r0, #:upper16:-2142371835	@ D.20219,
	beq	.L34	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r2, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #8, #1	@ tmp144,,,
	cmp	r3, #0	@ tmp144,
	streq	r3, [r4, #0]	@ tmp144,* pbValue
	movne	r0, #0	@ D.20219,
	moveq	r0, r3	@ D.20219, tmp144
	movne	r3, #1	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* pbValue
.L34:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetMcDPAClkSelEn, .-DRV_CA_OTP_V200_GetMcDPAClkSelEn
	.align	2
	.global	DRV_CA_OTP_V200_GetPvrDPAFilterClkEn
	.type	DRV_CA_OTP_V200_GetPvrDPAFilterClkEn, %function
DRV_CA_OTP_V200_GetPvrDPAFilterClkEn:
	.fnstart
.LFB805:
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
	subs	r4, r0, #0	@ pbValue, pbValue
	movweq	r0, #:lower16:-2142371835	@ D.20261,
	movteq	r0, #:upper16:-2142371835	@ D.20261,
	beq	.L39	@,
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	lr, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp141,,,
	and	r1, r2, #2	@ tmp143, tmp141,
	uxtb	r3, r1	@ tmp144, tmp143
	cmp	r3, #0	@ tmp144,
	streq	r3, [r4, #0]	@ tmp144,* pbValue
	movne	r0, #0	@ D.20261,
	moveq	r0, r3	@ D.20261, tmp144
	movne	r3, #1	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* pbValue
.L39:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetPvrDPAFilterClkEn, .-DRV_CA_OTP_V200_GetPvrDPAFilterClkEn
	.align	2
	.global	DRV_CA_OTP_V200_GetDDRScrambleEn
	.type	DRV_CA_OTP_V200_GetDDRScrambleEn, %function
DRV_CA_OTP_V200_GetDDRScrambleEn:
	.fnstart
.LFB807:
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
	subs	r4, r0, #0	@ pu32Mode, pu32Mode
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L44	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #30, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Mode
.L44:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetDDRScrambleEn, .-DRV_CA_OTP_V200_GetDDRScrambleEn
	.align	2
	.global	DRV_CA_OTP_V200_LockR2RHardKey
	.type	DRV_CA_OTP_V200_LockR2RHardKey, %function
DRV_CA_OTP_V200_LockR2RHardKey:
	.fnstart
.LFB808:
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
	.size	DRV_CA_OTP_V200_LockR2RHardKey, .-DRV_CA_OTP_V200_LockR2RHardKey
	.align	2
	.global	DRV_CA_OTP_V200_GetSelfBoot
	.type	DRV_CA_OTP_V200_GetSelfBoot, %function
DRV_CA_OTP_V200_GetSelfBoot:
	.fnstart
.LFB813:
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
	subs	r5, r0, #0	@ pu32SelfBoot, pu32SelfBoot
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r0, #0	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #3, #1	@ tmp143,,,
	str	r0, [r5, #0]	@ tmp143,* pu32SelfBoot
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	ldr	r2, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ tmp150,* pu32SelfBoot
	cmp	r1, #1	@ tmp150,
	movne	r3, #0	@, tmp151
	moveq	r3, #1	@, tmp151
	cmp	r0, #17	@,
	orrne	r3, r3, #1	@,, tmp154, tmp151
	cmp	r3, #0	@ tmp154,
	streq	r3, [r5, #0]	@ tmp154,* pu32SelfBoot
	movne	r3, #1	@ tmp155,
	movne	r0, #0	@ ret,
	strne	r3, [r5, #0]	@ tmp155,* pu32SelfBoot
	moveq	r0, r3	@ ret, tmp154
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSelfBoot, .-DRV_CA_OTP_V200_GetSelfBoot
	.align	2
	.global	DRV_CA_OTP_V200_GetJtagWriteDisable
	.type	DRV_CA_OTP_V200_GetJtagWriteDisable, %function
DRV_CA_OTP_V200_GetJtagWriteDisable:
	.fnstart
.LFB815:
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
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r4, r0	@ pu32Disable, pu32Disable
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #8, #1	@ tmp141,,,
	str	r0, [r4, #0]	@ tmp141,* pu32Disable
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetJtagWriteDisable, .-DRV_CA_OTP_V200_GetJtagWriteDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetBootMode
	.type	DRV_CA_OTP_V200_GetBootMode, %function
DRV_CA_OTP_V200_GetBootMode:
	.fnstart
.LFB817:
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
	subs	r4, r0, #0	@ pType, pType
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #3	@ tmp140,,
	cmp	r0, #1	@ tmp140,
	beq	.L61	@,
	movcc	r0, #0	@ tmp141,
	strcc	r0, [r4, #0]	@ tmp141,* pType
	ldmccfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3	@ tmp140,
	beq	.L61	@,
	mov	ip, #4	@ tmp144,
	mov	r0, #0	@ ret,
	str	ip, [r4, #0]	@ tmp144,* pType
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L61:
	str	r0, [r4, #0]	@ tmp140,* pType
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBootMode, .-DRV_CA_OTP_V200_GetBootMode
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA2LadderLevel
	.type	DRV_CA_OTP_V200_GetCSA2LadderLevel, %function
DRV_CA_OTP_V200_GetCSA2LadderLevel:
	.fnstart
.LFB823:
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
	subs	r4, r0, #0	@ pLevel, pLevel
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #32	@ tmp143,,
	uxtb	r0, r0	@ tmp144, tmp143
	cmp	r0, #0	@ tmp144,
	movne	r3, #2	@ tmp145,
	moveq	r3, #1	@ tmp146,
	strne	r3, [r4, #0]	@ tmp145,* pLevel
	movne	r0, #0	@ ret,
	streq	r3, [r4, #0]	@ tmp146,* pLevel
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA2LadderLevel, .-DRV_CA_OTP_V200_GetCSA2LadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA3LadderLevel
	.type	DRV_CA_OTP_V200_GetCSA3LadderLevel, %function
DRV_CA_OTP_V200_GetCSA3LadderLevel:
	.fnstart
.LFB825:
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
	subs	r4, r0, #0	@ pLevel, pLevel
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #8, #1	@ tmp144,,,
	cmp	r0, #0	@ tmp144,
	movne	r3, #2	@ tmp145,
	moveq	r3, #1	@ tmp146,
	strne	r3, [r4, #0]	@ tmp145,* pLevel
	movne	r0, #0	@ ret,
	streq	r3, [r4, #0]	@ tmp146,* pLevel
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA3LadderLevel, .-DRV_CA_OTP_V200_GetCSA3LadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_GetR2RLadderLevel
	.type	DRV_CA_OTP_V200_GetR2RLadderLevel, %function
DRV_CA_OTP_V200_GetR2RLadderLevel:
	.fnstart
.LFB827:
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
	subs	r4, r0, #0	@ pLevel, pLevel
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #64	@ tmp143,,
	uxtb	r0, r0	@ tmp144, tmp143
	cmp	r0, #0	@ tmp144,
	movne	r3, #2	@ tmp145,
	moveq	r3, #1	@ tmp146,
	strne	r3, [r4, #0]	@ tmp145,* pLevel
	movne	r0, #0	@ ret,
	streq	r3, [r4, #0]	@ tmp146,* pLevel
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetR2RLadderLevel, .-DRV_CA_OTP_V200_GetR2RLadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_GetSPLadderLevel
	.type	DRV_CA_OTP_V200_GetSPLadderLevel, %function
DRV_CA_OTP_V200_GetSPLadderLevel:
	.fnstart
.LFB829:
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
	subs	r4, r0, #0	@ pLevel, pLevel
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	bic	r0, r0, #127	@ tmp143,,
	uxtb	r0, r0	@ tmp144, tmp143
	cmp	r0, #0	@ tmp144,
	movne	r3, #2	@ tmp145,
	moveq	r3, #1	@ tmp146,
	strne	r3, [r4, #0]	@ tmp145,* pLevel
	movne	r0, #0	@ ret,
	streq	r3, [r4, #0]	@ tmp146,* pLevel
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSPLadderLevel, .-DRV_CA_OTP_V200_GetSPLadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_GetSecureChipId
	.type	DRV_CA_OTP_V200_GetSecureChipId, %function
DRV_CA_OTP_V200_GetSecureChipId:
	.fnstart
.LFB831:
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
	subs	r4, r0, #0	@ pu32SecureChipId, pu32SecureChipId
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #172	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #12	@ tmp140,
	ldrls	pc, [pc, r0, asl #2]	@ tmp140
	b	.L87	@
.L101:
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L93
	.word	.L94
	.word	.L95
	.word	.L96
	.word	.L97
	.word	.L98
	.word	.L99
	.word	.L100
.L100:
	mov	r2, #12	@ tmp153,
	mov	r0, #0	@ ret,
	str	r2, [r4, #0]	@ tmp153,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L87:
	mov	ip, #13	@ tmp154,
	mov	r0, #0	@ ret,
	str	ip, [r4, #0]	@ tmp154,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L88:
	mov	r0, #0	@ tmp141,
	str	r0, [r4, #0]	@ tmp141,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L89:
	mov	ip, #1	@ tmp142,
	mov	r0, #0	@ ret,
	str	ip, [r4, #0]	@ tmp142,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L90:
	mov	lr, #2	@ tmp143,
	mov	r0, #0	@ ret,
	str	lr, [r4, #0]	@ tmp143,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L91:
	mov	r0, #3	@ tmp144,
	str	r0, [r4, #0]	@ tmp144,* pu32SecureChipId
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L92:
	mov	r3, #4	@ tmp145,
	mov	r0, #0	@ ret,
	str	r3, [r4, #0]	@ tmp145,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L93:
	mov	r1, #5	@ tmp146,
	mov	r0, #0	@ ret,
	str	r1, [r4, #0]	@ tmp146,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L94:
	mov	r2, #6	@ tmp147,
	mov	r0, #0	@ ret,
	str	r2, [r4, #0]	@ tmp147,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L95:
	mov	ip, #7	@ tmp148,
	mov	r0, #0	@ ret,
	str	ip, [r4, #0]	@ tmp148,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L96:
	mov	lr, #8	@ tmp149,
	mov	r0, #0	@ ret,
	str	lr, [r4, #0]	@ tmp149,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L97:
	mov	r0, #9	@ tmp150,
	str	r0, [r4, #0]	@ tmp150,* pu32SecureChipId
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L98:
	mov	r3, #10	@ tmp151,
	mov	r0, #0	@ ret,
	str	r3, [r4, #0]	@ tmp151,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L99:
	mov	r1, #11	@ tmp152,
	mov	r0, #0	@ ret,
	str	r1, [r4, #0]	@ tmp152,* pu32SecureChipId
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSecureChipId, .-DRV_CA_OTP_V200_GetSecureChipId
	.align	2
	.global	DRV_CA_OTP_V200_GetSecureChipP
	.type	DRV_CA_OTP_V200_GetSecureChipP, %function
DRV_CA_OTP_V200_GetSecureChipP:
	.fnstart
.LFB833:
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
	subs	r4, r0, #0	@ pu32SecureChipP, pu32SecureChipP
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L105	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #11, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32SecureChipP
.L105:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSecureChipP, .-DRV_CA_OTP_V200_GetSecureChipP
	.align	2
	.global	DRV_CA_OTP_V200_GetSecureChipFlag
	.type	DRV_CA_OTP_V200_GetSecureChipFlag, %function
DRV_CA_OTP_V200_GetSecureChipFlag:
	.fnstart
.LFB835:
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
	subs	r4, r0, #0	@ pu32SecureChipFlag, pu32SecureChipFlag
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L109	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	and	r0, r0, #1	@ tmp143,,
	str	r0, [r4, #0]	@ tmp143,* pu32SecureChipFlag
.L109:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetSecureChipFlag, .-DRV_CA_OTP_V200_GetSecureChipFlag
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA2Deactive
	.type	DRV_CA_OTP_V200_GetCSA2Deactive, %function
DRV_CA_OTP_V200_GetCSA2Deactive:
	.fnstart
.LFB839:
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
	subs	r4, r0, #0	@ pu32CSA2Deactive, pu32CSA2Deactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L113	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #3, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32CSA2Deactive
.L113:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA2Deactive, .-DRV_CA_OTP_V200_GetCSA2Deactive
	.align	2
	.global	DRV_CA_OTP_V200_GetR2RDeactive
	.type	DRV_CA_OTP_V200_GetR2RDeactive, %function
DRV_CA_OTP_V200_GetR2RDeactive:
	.fnstart
.LFB841:
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
	subs	r4, r0, #0	@ pu32R2RDeactive, pu32R2RDeactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L117	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #5, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32R2RDeactive
.L117:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetR2RDeactive, .-DRV_CA_OTP_V200_GetR2RDeactive
	.align	2
	.global	DRV_CA_OTP_V200_GetSPDeactive
	.type	DRV_CA_OTP_V200_GetSPDeactive, %function
DRV_CA_OTP_V200_GetSPDeactive:
	.fnstart
.LFB843:
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
	subs	r4, r0, #0	@ pu32SPDeactive, pu32SPDeactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L121	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #6, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32SPDeactive
.L121:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSPDeactive, .-DRV_CA_OTP_V200_GetSPDeactive
	.align	2
	.global	DRV_CA_OTP_V200_GetESCKLock
	.type	DRV_CA_OTP_V200_GetESCKLock, %function
DRV_CA_OTP_V200_GetESCKLock:
	.fnstart
.LFB858:
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
	subs	r4, r0, #0	@ pbLock, pbLock
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #2, #1	@ tmp142,,,
	cmp	r0, #0	@ tmp142,
	streq	r0, [r4, #0]	@ tmp142,* pbLock
	movne	r3, #1	@ tmp144,
	movne	r0, #0	@ ret,
	strne	r3, [r4, #0]	@ tmp144,* pbLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetESCKLock, .-DRV_CA_OTP_V200_GetESCKLock
	.align	2
	.global	DRV_CA_OTP_V200_GetMISCRootKeyLock
	.type	DRV_CA_OTP_V200_GetMISCRootKeyLock, %function
DRV_CA_OTP_V200_GetMISCRootKeyLock:
	.fnstart
.LFB861:
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
	subs	r4, r0, #0	@ pbLock, pbLock
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #15, #1	@ tmp142,,,
	cmp	r0, #0	@ tmp142,
	streq	r0, [r4, #0]	@ tmp142,* pbLock
	movne	r3, #1	@ tmp144,
	movne	r0, #0	@ ret,
	strne	r3, [r4, #0]	@ tmp144,* pbLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetMISCRootKeyLock, .-DRV_CA_OTP_V200_GetMISCRootKeyLock
	.align	2
	.global	DRV_CA_OTP_V200_GetOEMRootKeyLock
	.type	DRV_CA_OTP_V200_GetOEMRootKeyLock, %function
DRV_CA_OTP_V200_GetOEMRootKeyLock:
	.fnstart
.LFB864:
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
	subs	r4, r0, #0	@ pbLock, pbLock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L135	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #17, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pbLock
.L135:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetOEMRootKeyLock, .-DRV_CA_OTP_V200_GetOEMRootKeyLock
	.align	2
	.global	DRV_CA_OTP_V200_GetRSAKeyLock
	.type	DRV_CA_OTP_V200_GetRSAKeyLock, %function
DRV_CA_OTP_V200_GetRSAKeyLock:
	.fnstart
.LFB873:
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
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r4, r0	@ pu32Lock, pu32Lock
	mov	r0, #20	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #1	@ tmp141,,
	str	r0, [r4, #0]	@ tmp141,* pu32Lock
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetRSAKeyLock, .-DRV_CA_OTP_V200_GetRSAKeyLock
	.align	2
	.global	DRV_CA_OTP_V200_GetChipId
	.type	DRV_CA_OTP_V200_GetChipId, %function
DRV_CA_OTP_V200_GetChipId:
	.fnstart
.LFB876:
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
	subs	r4, r0, #0	@ pu32ChipID, pu32ChipID
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L141	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #104	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	str	r0, [r4, #0]	@,* pu32ChipID
.L141:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetChipId, .-DRV_CA_OTP_V200_GetChipId
	.align	2
	.global	DRV_CA_OTP_V200_GetUniqueChipId
	.type	DRV_CA_OTP_V200_GetUniqueChipId, %function
DRV_CA_OTP_V200_GetUniqueChipId:
	.fnstart
.LFB877:
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
	subs	r5, r0, #0	@ pu8ChipID, pu8ChipID
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L145	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #104	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #0]	@,* pu8ChipID
	mov	r0, #105	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #1]	@,
	mov	r0, #106	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #2]	@,
	mov	r0, #107	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, #0	@ ret,
	strb	r0, [r5, #3]	@,
.L145:
	mov	r0, r3	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetUniqueChipId, .-DRV_CA_OTP_V200_GetUniqueChipId
	.align	2
	.global	DRV_CA_OTP_V200_GetChipIdLock
	.type	DRV_CA_OTP_V200_GetChipIdLock, %function
DRV_CA_OTP_V200_GetChipIdLock:
	.fnstart
.LFB879:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L149	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #1, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L149:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetChipIdLock, .-DRV_CA_OTP_V200_GetChipIdLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLowPowerDisable
	.type	DRV_CA_OTP_V200_GetLowPowerDisable, %function
DRV_CA_OTP_V200_GetLowPowerDisable:
	.fnstart
.LFB883:
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
	subs	r4, r0, #0	@ pu32Flag, pu32Flag
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L153	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #4, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Flag
.L153:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetLowPowerDisable, .-DRV_CA_OTP_V200_GetLowPowerDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetCsa3En
	.type	DRV_CA_OTP_V200_GetCsa3En, %function
DRV_CA_OTP_V200_GetCsa3En:
	.fnstart
.LFB885:
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
	subs	r4, r0, #0	@ pu32CSA3Disable, pu32CSA3Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L157	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #4, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32CSA3Disable
.L157:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCsa3En, .-DRV_CA_OTP_V200_GetCsa3En
	.align	2
	.global	DRV_CA_OTP_V200_GetLpcEn
	.type	DRV_CA_OTP_V200_GetLpcEn, %function
DRV_CA_OTP_V200_GetLpcEn:
	.fnstart
.LFB887:
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
	subs	r4, r0, #0	@ pu32LpcDisable, pu32LpcDisable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L161	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #16, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32LpcDisable
.L161:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetLpcEn, .-DRV_CA_OTP_V200_GetLpcEn
	.align	2
	.global	DRV_CA_OTP_V200_GetLpcMasterEn
	.type	DRV_CA_OTP_V200_GetLpcMasterEn, %function
DRV_CA_OTP_V200_GetLpcMasterEn:
	.fnstart
.LFB889:
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
	subs	r4, r0, #0	@ pu32LpcMasterDisable, pu32LpcMasterDisable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L165	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #17, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32LpcMasterDisable
.L165:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetLpcMasterEn, .-DRV_CA_OTP_V200_GetLpcMasterEn
	.align	2
	.global	DRV_CA_OTP_V200_GetBootSelLock_0
	.type	DRV_CA_OTP_V200_GetBootSelLock_0, %function
DRV_CA_OTP_V200_GetBootSelLock_0:
	.fnstart
.LFB891:
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
	subs	r4, r0, #0	@ pu32BootSelLock, pu32BootSelLock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L169	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	and	r0, r0, #1	@ tmp142,,
	str	r0, [r4, #0]	@ tmp142,* pu32BootSelLock
.L169:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBootSelLock_0, .-DRV_CA_OTP_V200_GetBootSelLock_0
	.align	2
	.global	DRV_CA_OTP_V200_GetBootSelLock_1
	.type	DRV_CA_OTP_V200_GetBootSelLock_1, %function
DRV_CA_OTP_V200_GetBootSelLock_1:
	.fnstart
.LFB893:
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
	subs	r4, r0, #0	@ pu32BootSelLock, pu32BootSelLock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L173	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #1, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32BootSelLock
.L173:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBootSelLock_1, .-DRV_CA_OTP_V200_GetBootSelLock_1
	.align	2
	.global	DRV_CA_OTP_V200_GetMktIdP
	.type	DRV_CA_OTP_V200_GetMktIdP, %function
DRV_CA_OTP_V200_GetMktIdP:
	.fnstart
.LFB895:
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
	subs	r4, r0, #0	@ pu32mktIdP, pu32mktIdP
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L177	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #8, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32mktIdP
.L177:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetMktIdP, .-DRV_CA_OTP_V200_GetMktIdP
	.align	2
	.global	DRV_CA_OTP_V200_GetStbSnP
	.type	DRV_CA_OTP_V200_GetStbSnP, %function
DRV_CA_OTP_V200_GetStbSnP:
	.fnstart
.LFB897:
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
	subs	r4, r0, #0	@ pu32StbSnP, pu32StbSnP
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L181	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #4, #4	@ tmp154,,,
	str	r0, [r4, #0]	@ tmp154,* pu32StbSnP
.L181:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetStbSnP, .-DRV_CA_OTP_V200_GetStbSnP
	.align	2
	.global	DRV_CA_OTP_V200_GetSelfbootLock
	.type	DRV_CA_OTP_V200_GetSelfbootLock, %function
DRV_CA_OTP_V200_GetSelfbootLock:
	.fnstart
.LFB899:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L185	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #3, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L185:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSelfbootLock, .-DRV_CA_OTP_V200_GetSelfbootLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLowPowerDisableLock
	.type	DRV_CA_OTP_V200_GetLowPowerDisableLock, %function
DRV_CA_OTP_V200_GetLowPowerDisableLock:
	.fnstart
.LFB901:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L189	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #4, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L189:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetLowPowerDisableLock, .-DRV_CA_OTP_V200_GetLowPowerDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_GetDVBLadderLock
	.type	DRV_CA_OTP_V200_GetDVBLadderLock, %function
DRV_CA_OTP_V200_GetDVBLadderLock:
	.fnstart
.LFB903:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L193	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #5, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L193:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetDVBLadderLock, .-DRV_CA_OTP_V200_GetDVBLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_GetR2RLadderLock
	.type	DRV_CA_OTP_V200_GetR2RLadderLock, %function
DRV_CA_OTP_V200_GetR2RLadderLock:
	.fnstart
.LFB905:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L197	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #6, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L197:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetR2RLadderLock, .-DRV_CA_OTP_V200_GetR2RLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_GetSPLadderLock
	.type	DRV_CA_OTP_V200_GetSPLadderLock, %function
DRV_CA_OTP_V200_GetSPLadderLock:
	.fnstart
.LFB907:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L201	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #7, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L201:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetSPLadderLock, .-DRV_CA_OTP_V200_GetSPLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA3LadderLock
	.type	DRV_CA_OTP_V200_GetCSA3LadderLock, %function
DRV_CA_OTP_V200_GetCSA3LadderLock:
	.fnstart
.LFB909:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L205	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #8, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L205:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA3LadderLock, .-DRV_CA_OTP_V200_GetCSA3LadderLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCWDeactive
	.type	DRV_CA_OTP_V200_GetTSCWDeactive, %function
DRV_CA_OTP_V200_GetTSCWDeactive:
	.fnstart
.LFB911:
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
	subs	r4, r0, #0	@ pu32Deactive, pu32Deactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L209	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #16, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Deactive
.L209:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCWDeactive, .-DRV_CA_OTP_V200_GetTSCWDeactive
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCWDeactiveLock
	.type	DRV_CA_OTP_V200_GetTSCWDeactiveLock, %function
DRV_CA_OTP_V200_GetTSCWDeactiveLock:
	.fnstart
.LFB913:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L213	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #16, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L213:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCWDeactiveLock, .-DRV_CA_OTP_V200_GetTSCWDeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSSPDeactive
	.type	DRV_CA_OTP_V200_GetTSSPDeactive, %function
DRV_CA_OTP_V200_GetTSSPDeactive:
	.fnstart
.LFB915:
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
	subs	r4, r0, #0	@ pu32Deactive, pu32Deactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L217	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #17, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Deactive
.L217:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSSPDeactive, .-DRV_CA_OTP_V200_GetTSSPDeactive
	.align	2
	.global	DRV_CA_OTP_V200_GetTSSPDeactiveLock
	.type	DRV_CA_OTP_V200_GetTSSPDeactiveLock, %function
DRV_CA_OTP_V200_GetTSSPDeactiveLock:
	.fnstart
.LFB917:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L221	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #17, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L221:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSSPDeactiveLock, .-DRV_CA_OTP_V200_GetTSSPDeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCSA3Deactive
	.type	DRV_CA_OTP_V200_GetTSCSA3Deactive, %function
DRV_CA_OTP_V200_GetTSCSA3Deactive:
	.fnstart
.LFB919:
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
	subs	r4, r0, #0	@ pu32Deactive, pu32Deactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L225	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #20, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Deactive
.L225:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCSA3Deactive, .-DRV_CA_OTP_V200_GetTSCSA3Deactive
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCSA3DeactiveLock
	.type	DRV_CA_OTP_V200_GetTSCSA3DeactiveLock, %function
DRV_CA_OTP_V200_GetTSCSA3DeactiveLock:
	.fnstart
.LFB921:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L229	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #20, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L229:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCSA3DeactiveLock, .-DRV_CA_OTP_V200_GetTSCSA3DeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTsOutDisable
	.type	DRV_CA_OTP_V200_GetTsOutDisable, %function
DRV_CA_OTP_V200_GetTsOutDisable:
	.fnstart
.LFB931:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L233	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #15, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Disable
.L233:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetTsOutDisable, .-DRV_CA_OTP_V200_GetTsOutDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetTsOutDisableLock
	.type	DRV_CA_OTP_V200_GetTsOutDisableLock, %function
DRV_CA_OTP_V200_GetTsOutDisableLock:
	.fnstart
.LFB933:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L237	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #15, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L237:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetTsOutDisableLock, .-DRV_CA_OTP_V200_GetTsOutDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLpcEnLock
	.type	DRV_CA_OTP_V200_GetLpcEnLock, %function
DRV_CA_OTP_V200_GetLpcEnLock:
	.fnstart
.LFB935:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L241	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #16, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L241:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetLpcEnLock, .-DRV_CA_OTP_V200_GetLpcEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLpcMasterEnLock
	.type	DRV_CA_OTP_V200_GetLpcMasterEnLock, %function
DRV_CA_OTP_V200_GetLpcMasterEnLock:
	.fnstart
.LFB937:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L245	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #17, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L245:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetLpcMasterEnLock, .-DRV_CA_OTP_V200_GetLpcMasterEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetSecureChipFlagLock
	.type	DRV_CA_OTP_V200_GetSecureChipFlagLock, %function
DRV_CA_OTP_V200_GetSecureChipFlagLock:
	.fnstart
.LFB939:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L249	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	and	r0, r0, #1	@ tmp143,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L249:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetSecureChipFlagLock, .-DRV_CA_OTP_V200_GetSecureChipFlagLock
	.align	2
	.global	DRV_CA_OTP_V200_GetBootSelCtrl
	.type	DRV_CA_OTP_V200_GetBootSelCtrl, %function
DRV_CA_OTP_V200_GetBootSelCtrl:
	.fnstart
.LFB941:
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
	subs	r4, r0, #0	@ pu32BootSel, pu32BootSel
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L253	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #18, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32BootSel
.L253:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetBootSelCtrl, .-DRV_CA_OTP_V200_GetBootSelCtrl
	.align	2
	.global	DRV_CA_OTP_V200_GetBootSelCtrlLock
	.type	DRV_CA_OTP_V200_GetBootSelCtrlLock, %function
DRV_CA_OTP_V200_GetBootSelCtrlLock:
	.fnstart
.LFB943:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L257	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #18, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L257:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetBootSelCtrlLock, .-DRV_CA_OTP_V200_GetBootSelCtrlLock
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA3Deactive
	.type	DRV_CA_OTP_V200_GetCSA3Deactive, %function
DRV_CA_OTP_V200_GetCSA3Deactive:
	.fnstart
.LFB945:
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
	subs	r4, r0, #0	@ pu32Deactive, pu32Deactive
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L261	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #4, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Deactive
.L261:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA3Deactive, .-DRV_CA_OTP_V200_GetCSA3Deactive
	.align	2
	.global	DRV_CA_OTP_V200_GetJtagReadDisable
	.type	DRV_CA_OTP_V200_GetJtagReadDisable, %function
DRV_CA_OTP_V200_GetJtagReadDisable:
	.fnstart
.LFB947:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L265	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #7, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Disable
.L265:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetJtagReadDisable, .-DRV_CA_OTP_V200_GetJtagReadDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetDebugDisable
	.type	DRV_CA_OTP_V200_GetDebugDisable, %function
DRV_CA_OTP_V200_GetDebugDisable:
	.fnstart
.LFB949:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L269	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #9, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Disable
.L269:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetDebugDisable, .-DRV_CA_OTP_V200_GetDebugDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetRigthCtrlEn
	.type	DRV_CA_OTP_V200_GetRigthCtrlEn, %function
DRV_CA_OTP_V200_GetRigthCtrlEn:
	.fnstart
.LFB951:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L273	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #11, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L273:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetRigthCtrlEn, .-DRV_CA_OTP_V200_GetRigthCtrlEn
	.align	2
	.global	DRV_CA_OTP_V200_GetMiscKlLevel
	.type	DRV_CA_OTP_V200_GetMiscKlLevel, %function
DRV_CA_OTP_V200_GetMiscKlLevel:
	.fnstart
.LFB971:
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
	subs	r4, r0, #0	@ penValue, penValue
	movweq	r0, #:lower16:-2142371835	@ D.24345,
	movteq	r0, #:upper16:-2142371835	@ D.24345,
	beq	.L277	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r2, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp141,,
	and	r0, r1, #2	@ tmp143, tmp141,
	uxtb	r0, r0	@ tmp144, tmp143
	cmp	r0, #0	@ tmp144,
	movne	r0, #0	@ D.24345,
	moveq	r3, #1	@ tmp145,
	movne	r3, #2	@ tmp146,
	str	r3, [r4, #0]	@ tmp146,* penValue
.L277:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetMiscKlLevel, .-DRV_CA_OTP_V200_GetMiscKlLevel
	.align	2
	.global	DRV_CA_OTP_V200_GetVersionIdCheckLock
	.type	DRV_CA_OTP_V200_GetVersionIdCheckLock, %function
DRV_CA_OTP_V200_GetVersionIdCheckLock:
	.fnstart
.LFB984:
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
	subs	r4, r0, #0	@ pu32VersionIdCheckP, pu32VersionIdCheckP
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L282	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #16	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #9, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32VersionIdCheckP
.L282:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetVersionIdCheckLock, .-DRV_CA_OTP_V200_GetVersionIdCheckLock
	.align	2
	.global	DRV_CA_OTP_V200_GetBloadDecEn
	.type	DRV_CA_OTP_V200_GetBloadDecEn, %function
DRV_CA_OTP_V200_GetBloadDecEn:
	.fnstart
.LFB985:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L286	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #2, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L286:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBloadDecEn, .-DRV_CA_OTP_V200_GetBloadDecEn
	.align	2
	.global	DRV_CA_OTP_V200_GetBloadDecEnLock
	.type	DRV_CA_OTP_V200_GetBloadDecEnLock, %function
DRV_CA_OTP_V200_GetBloadDecEnLock:
	.fnstart
.LFB986:
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
	subs	r4, r0, #0	@ pu32BloadDecEncLock, pu32BloadDecEncLock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L290	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #2, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32BloadDecEncLock
.L290:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBloadDecEnLock, .-DRV_CA_OTP_V200_GetBloadDecEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLinkProtectDisableLock
	.type	DRV_CA_OTP_V200_GetLinkProtectDisableLock, %function
DRV_CA_OTP_V200_GetLinkProtectDisableLock:
	.fnstart
.LFB987:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L294	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #9, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Disable
.L294:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetLinkProtectDisableLock, .-DRV_CA_OTP_V200_GetLinkProtectDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCSA3HardonlyEn
	.type	DRV_CA_OTP_V200_GetTSCSA3HardonlyEn, %function
DRV_CA_OTP_V200_GetTSCSA3HardonlyEn:
	.fnstart
.LFB988:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L298	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #14, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L298:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCSA3HardonlyEn, .-DRV_CA_OTP_V200_GetTSCSA3HardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock
	.type	DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock, %function
DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock:
	.fnstart
.LFB989:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L302	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #14, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L302:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock, .-DRV_CA_OTP_V200_GetTSCSA3HardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSSPHardonlyEn
	.type	DRV_CA_OTP_V200_GetTSSPHardonlyEn, %function
DRV_CA_OTP_V200_GetTSSPHardonlyEn:
	.fnstart
.LFB990:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L306	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #11, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L306:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSSPHardonlyEn, .-DRV_CA_OTP_V200_GetTSSPHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_GetTSSPHardonlyEnLock
	.type	DRV_CA_OTP_V200_GetTSSPHardonlyEnLock, %function
DRV_CA_OTP_V200_GetTSSPHardonlyEnLock:
	.fnstart
.LFB991:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L310	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #11, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L310:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSSPHardonlyEnLock, .-DRV_CA_OTP_V200_GetTSSPHardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetBlMSIDCheckEn
	.type	DRV_CA_OTP_V200_GetBlMSIDCheckEn, %function
DRV_CA_OTP_V200_GetBlMSIDCheckEn:
	.fnstart
.LFB992:
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
	subs	r4, r0, #0	@ pu32BlMSIDCheckEn, pu32BlMSIDCheckEn
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L314	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #27, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32BlMSIDCheckEn
.L314:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetBlMSIDCheckEn, .-DRV_CA_OTP_V200_GetBlMSIDCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_GetBlMSIDCheckEnLock
	.type	DRV_CA_OTP_V200_GetBlMSIDCheckEnLock, %function
DRV_CA_OTP_V200_GetBlMSIDCheckEnLock:
	.fnstart
.LFB993:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L318	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #27, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L318:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetBlMSIDCheckEnLock, .-DRV_CA_OTP_V200_GetBlMSIDCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetVersionIDCheckEn
	.type	DRV_CA_OTP_V200_GetVersionIDCheckEn, %function
DRV_CA_OTP_V200_GetVersionIDCheckEn:
	.fnstart
.LFB994:
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
	subs	r4, r0, #0	@ pu32VersionIDCheckEn, pu32VersionIDCheckEn
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L322	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #26, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32VersionIDCheckEn
.L322:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetVersionIDCheckEn, .-DRV_CA_OTP_V200_GetVersionIDCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_GetVersionIDCheckEnLock
	.type	DRV_CA_OTP_V200_GetVersionIDCheckEnLock, %function
DRV_CA_OTP_V200_GetVersionIDCheckEnLock:
	.fnstart
.LFB995:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L326	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #26, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L326:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetVersionIDCheckEnLock, .-DRV_CA_OTP_V200_GetVersionIDCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetWakeupDDRCheckEn
	.type	DRV_CA_OTP_V200_GetWakeupDDRCheckEn, %function
DRV_CA_OTP_V200_GetWakeupDDRCheckEn:
	.fnstart
.LFB996:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L330	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #24, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Disable
.L330:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetWakeupDDRCheckEn, .-DRV_CA_OTP_V200_GetWakeupDDRCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock
	.type	DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock, %function
DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock:
	.fnstart
.LFB997:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L334	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #24, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L334:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock, .-DRV_CA_OTP_V200_GetWakeupDDRCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetRuntimeCheckEn
	.type	DRV_CA_OTP_V200_GetRuntimeCheckEn, %function
DRV_CA_OTP_V200_GetRuntimeCheckEn:
	.fnstart
.LFB998:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L338	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #20, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Disable
.L338:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetRuntimeCheckEn, .-DRV_CA_OTP_V200_GetRuntimeCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_GetRuntimeCheckEnLock
	.type	DRV_CA_OTP_V200_GetRuntimeCheckEnLock, %function
DRV_CA_OTP_V200_GetRuntimeCheckEnLock:
	.fnstart
.LFB999:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L342	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #20, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L342:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetRuntimeCheckEnLock, .-DRV_CA_OTP_V200_GetRuntimeCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetOtpGlobalLockEn
	.type	DRV_CA_OTP_V200_GetOtpGlobalLockEn, %function
DRV_CA_OTP_V200_GetOtpGlobalLockEn:
	.fnstart
.LFB1000:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L346	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	mov	r0, r0, lsr #31	@ tmp142,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L346:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetOtpGlobalLockEn, .-DRV_CA_OTP_V200_GetOtpGlobalLockEn
	.align	2
	.global	DRV_CA_OTP_V200_GetOtpGlobalLockEnLock
	.type	DRV_CA_OTP_V200_GetOtpGlobalLockEnLock, %function
DRV_CA_OTP_V200_GetOtpGlobalLockEnLock:
	.fnstart
.LFB1001:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L350	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	mov	r0, r0, lsr #31	@ tmp142,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L350:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetOtpGlobalLockEnLock, .-DRV_CA_OTP_V200_GetOtpGlobalLockEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetDDRScrambleEnLock
	.type	DRV_CA_OTP_V200_GetDDRScrambleEnLock, %function
DRV_CA_OTP_V200_GetDDRScrambleEnLock:
	.fnstart
.LFB1002:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L354	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #30, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L354:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetDDRScrambleEnLock, .-DRV_CA_OTP_V200_GetDDRScrambleEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetBloadModeSel
	.type	DRV_CA_OTP_V200_GetBloadModeSel, %function
DRV_CA_OTP_V200_GetBloadModeSel:
	.fnstart
.LFB1003:
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
	subs	r4, r0, #0	@ pu32Mode, pu32Mode
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L358	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #29, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Mode
.L358:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBloadModeSel, .-DRV_CA_OTP_V200_GetBloadModeSel
	.align	2
	.global	DRV_CA_OTP_V200_GetBloadModeSelLock
	.type	DRV_CA_OTP_V200_GetBloadModeSelLock, %function
DRV_CA_OTP_V200_GetBloadModeSelLock:
	.fnstart
.LFB1004:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L362	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #29, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Lock
.L362:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetBloadModeSelLock, .-DRV_CA_OTP_V200_GetBloadModeSelLock
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCsa2HardonlyEn
	.type	DRV_CA_OTP_V200_GetTSCsa2HardonlyEn, %function
DRV_CA_OTP_V200_GetTSCsa2HardonlyEn:
	.fnstart
.LFB1011:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L366	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #10, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L366:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCsa2HardonlyEn, .-DRV_CA_OTP_V200_GetTSCsa2HardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock
	.type	DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock, %function
DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock:
	.fnstart
.LFB1012:
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
	subs	r4, r0, #0	@ pu32Enable, pu32Enable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L370	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #8	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #10, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Enable
.L370:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock, .-DRV_CA_OTP_V200_GetTSCsa2HardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetLinkProtectDisable
	.type	DRV_CA_OTP_V200_GetLinkProtectDisable, %function
DRV_CA_OTP_V200_GetLinkProtectDisable:
	.fnstart
.LFB1013:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L374	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #9, #1	@ tmp142,,,
	str	r0, [r4, #0]	@ tmp142,* pu32Disable
.L374:
	mov	r0, r3	@, ret
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DRV_CA_OTP_V200_GetLinkProtectDisable, .-DRV_CA_OTP_V200_GetLinkProtectDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetDcasKLDisable
	.type	DRV_CA_OTP_V200_GetDcasKLDisable, %function
DRV_CA_OTP_V200_GetDcasKLDisable:
	.fnstart
.LFB1015:
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
	subs	r4, r0, #0	@ pu32Disable, pu32Disable
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L378	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #5, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Disable
.L378:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetDcasKLDisable, .-DRV_CA_OTP_V200_GetDcasKLDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetDcasKLDisableLock
	.type	DRV_CA_OTP_V200_GetDcasKLDisableLock, %function
DRV_CA_OTP_V200_GetDcasKLDisableLock:
	.fnstart
.LFB1016:
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
	subs	r4, r0, #0	@ pu32Lock, pu32Lock
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L382	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #12	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	ubfx	r0, r0, #5, #1	@ tmp143,,,
	str	r0, [r4, #0]	@ tmp143,* pu32Lock
.L382:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_GetDcasKLDisableLock, .-DRV_CA_OTP_V200_GetDcasKLDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetDcasKLDisableLock
	.type	DRV_CA_OTP_V200_SetDcasKLDisableLock, %function
DRV_CA_OTP_V200_SetDcasKLDisableLock:
	.fnstart
.LFB1014:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #32	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-28]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L385	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r0, #1	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r1, #97	@,
	movw	r3, #7656	@,
	movw	ip, #:lower16:.LC0	@ tmp145,
	movt	ip, #:upper16:.LC0	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
.L385:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	DRV_CA_OTP_V200_SetDcasKLDisableLock, .-DRV_CA_OTP_V200_SetDcasKLDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetBlMSIDCheckEnLock
	.type	DRV_CA_OTP_V200_SetBlMSIDCheckEnLock, %function
DRV_CA_OTP_V200_SetBlMSIDCheckEnLock:
	.fnstart
.LFB983:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #8	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-25]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L388	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L390	@,
	movw	r3, #7061	@,
	movw	ip, #:lower16:.LC0	@ tmp146,
	movt	ip, #:upper16:.LC0	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
.L388:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L391:
	.align	2
.L390:
	.word	.LANCHOR0+40
	.fnend
	.size	DRV_CA_OTP_V200_SetBlMSIDCheckEnLock, .-DRV_CA_OTP_V200_SetBlMSIDCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetVersionIdCheckEnLock
	.type	DRV_CA_OTP_V200_SetVersionIdCheckEnLock, %function
DRV_CA_OTP_V200_SetVersionIdCheckEnLock:
	.fnstart
.LFB982:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #4	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-25]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L393	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L395	@,
	movw	r3, #7043	@,
	movw	ip, #:lower16:.LC0	@ tmp146,
	movt	ip, #:upper16:.LC0	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
.L393:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L396:
	.align	2
.L395:
	.word	.LANCHOR0+80
	.fnend
	.size	DRV_CA_OTP_V200_SetVersionIdCheckEnLock, .-DRV_CA_OTP_V200_SetVersionIdCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock
	.type	DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock, %function
DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock:
	.fnstart
.LFB981:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #1	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-25]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L398	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L400	@,
	movw	r3, #7025	@,
	movw	ip, #:lower16:.LC0	@ tmp146,
	movt	ip, #:upper16:.LC0	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
.L398:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L401:
	.align	2
.L400:
	.word	.LANCHOR0+120
	.fnend
	.size	DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock, .-DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetRuntimeCheckEnLock
	.type	DRV_CA_OTP_V200_SetRuntimeCheckEnLock, %function
DRV_CA_OTP_V200_SetRuntimeCheckEnLock:
	.fnstart
.LFB980:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #16	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-26]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L403	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L405	@,
	movw	r3, #7007	@,
	movw	ip, #:lower16:.LC0	@ tmp146,
	movt	ip, #:upper16:.LC0	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
.L403:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L406:
	.align	2
.L405:
	.word	.LANCHOR0+160
	.fnend
	.size	DRV_CA_OTP_V200_SetRuntimeCheckEnLock, .-DRV_CA_OTP_V200_SetRuntimeCheckEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetOtpGlobalLockEnLock
	.type	DRV_CA_OTP_V200_SetOtpGlobalLockEnLock, %function
DRV_CA_OTP_V200_SetOtpGlobalLockEnLock:
	.fnstart
.LFB979:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #-2147483648	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L408	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L410	@,
	movw	r3, #6988	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L408:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L411:
	.align	2
.L410:
	.word	.LANCHOR0+200
	.fnend
	.size	DRV_CA_OTP_V200_SetOtpGlobalLockEnLock, .-DRV_CA_OTP_V200_SetOtpGlobalLockEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetDDRScrambleEnLock
	.type	DRV_CA_OTP_V200_SetDDRScrambleEnLock, %function
DRV_CA_OTP_V200_SetDDRScrambleEnLock:
	.fnstart
.LFB978:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #1073741824	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L413	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L415	@,
	movw	r3, #6970	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L413:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L416:
	.align	2
.L415:
	.word	.LANCHOR0+240
	.fnend
	.size	DRV_CA_OTP_V200_SetDDRScrambleEnLock, .-DRV_CA_OTP_V200_SetDDRScrambleEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetBloadModeSelLock
	.type	DRV_CA_OTP_V200_SetBloadModeSelLock, %function
DRV_CA_OTP_V200_SetBloadModeSelLock:
	.fnstart
.LFB977:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #536870912	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L418	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L420	@,
	movw	r3, #6953	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L418:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L421:
	.align	2
.L420:
	.word	.LANCHOR0+280
	.fnend
	.size	DRV_CA_OTP_V200_SetBloadModeSelLock, .-DRV_CA_OTP_V200_SetBloadModeSelLock
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock
	.type	DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock, %function
DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock:
	.fnstart
.LFB976:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #16384	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L423	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L425	@,
	movw	r3, #6936	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L423:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L426:
	.align	2
.L425:
	.word	.LANCHOR0+316
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock, .-DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetVersionIdLock
	.type	DRV_CA_OTP_V200_SetVersionIdLock, %function
DRV_CA_OTP_V200_SetVersionIdLock:
	.fnstart
.LFB975:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #16	@,
	mov	r1, #512	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L428	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L430	@,
	movw	r3, #6918	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L428:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L431:
	.align	2
.L430:
	.word	.LANCHOR0+356
	.fnend
	.size	DRV_CA_OTP_V200_SetVersionIdLock, .-DRV_CA_OTP_V200_SetVersionIdLock
	.align	2
	.global	DRV_CA_OTP_V200_SetSelftestDisable
	.type	DRV_CA_OTP_V200_SetSelftestDisable, %function
DRV_CA_OTP_V200_SetSelftestDisable:
	.fnstart
.LFB974:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #1024	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L433	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L435	@,
	movw	r3, #6900	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L433:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L436:
	.align	2
.L435:
	.word	.LANCHOR0+392
	.fnend
	.size	DRV_CA_OTP_V200_SetSelftestDisable, .-DRV_CA_OTP_V200_SetSelftestDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetBlMSIDCheckEn
	.type	DRV_CA_OTP_V200_SetBlMSIDCheckEn, %function
DRV_CA_OTP_V200_SetBlMSIDCheckEn:
	.fnstart
.LFB973:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L444	@,
.L439:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L444:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp142, D.24399,
	str	r0, [fp, #-44]	@ D.24399, PVLOCK_1.u32
	and	r2, r1, #8	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L445	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L446	@,
.L442:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #8	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-41]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L439	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L447	@,
	movw	r3, #6881	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L439	@
.L445:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp180,
	movt	r2, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #27, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L439	@
.L446:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	ip, #8	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	ip, [fp, #-33]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L442	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L447	@,
	movw	r3, #6870	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L439	@
.L448:
	.align	2
.L447:
	.word	.LANCHOR0+428
	.fnend
	.size	DRV_CA_OTP_V200_SetBlMSIDCheckEn, .-DRV_CA_OTP_V200_SetBlMSIDCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_SetVersionIdCheckEn
	.type	DRV_CA_OTP_V200_SetVersionIdCheckEn, %function
DRV_CA_OTP_V200_SetVersionIdCheckEn:
	.fnstart
.LFB972:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L456	@,
.L451:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L456:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp142, D.24366,
	str	r0, [fp, #-44]	@ D.24366, PVLOCK_1.u32
	and	r2, r1, #4	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L457	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L458	@,
.L454:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #4	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-41]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L451	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L459	@,
	movw	r3, #6828	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L451	@
.L457:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp180,
	movt	r2, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #26, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L451	@
.L458:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	strb	r0, [fp, #-33]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L454	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L459	@,
	movw	r3, #6817	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L451	@
.L460:
	.align	2
.L459:
	.word	.LANCHOR0+464
	.fnend
	.size	DRV_CA_OTP_V200_SetVersionIdCheckEn, .-DRV_CA_OTP_V200_SetVersionIdCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_SetMiscKlLevel
	.type	DRV_CA_OTP_V200_SetMiscKlLevel, %function
DRV_CA_OTP_V200_SetMiscKlLevel:
	.fnstart
.LFB970:
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
	cmp	r0, #1	@ bValue,
	mov	r5, r0	@ bValue, bValue
	bls	.L462	@,
.L467:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
.L463:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L462:
	beq	.L468	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp157,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp157,
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #33554432	@ D.24336,
	str	r0, [fp, #-28]	@ D.24336, PV_1.u32
	bne	.L469	@,
.L465:
	mov	r4, #0	@ ret,
	b	.L463	@
.L468:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r2, r0, lsr #24	@ tmp142, D.24325,
	str	r0, [fp, #-28]	@ D.24325, PV_1.u32
	tst	r2, #2	@ tmp142,
	bne	.L465	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orr	r0, r2, #2	@ tmp147, tmp142,
	strb	r0, [fp, #-25]	@ tmp147,
	mov	r0, #4	@,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L463	@,
	mov	r0, r5	@, bValue
	mov	r1, #97	@,
	ldr	r2, .L470	@,
	movw	r3, #6735	@,
	movw	lr, #:lower16:.LC0	@ tmp155,
	movt	lr, #:upper16:.LC0	@ tmp155,
	str	lr, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L463	@
.L469:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L470	@,
	movw	r3, #6751	@,
	movw	ip, #:lower16:.LC1	@ tmp165,
	movt	ip, #:upper16:.LC1	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L467	@
.L471:
	.align	2
.L470:
	.word	.LANCHOR0+500
	.fnend
	.size	DRV_CA_OTP_V200_SetMiscKlLevel, .-DRV_CA_OTP_V200_SetMiscKlLevel
	.align	2
	.global	DRV_CA_OTP_V200_SetWakeupDDRCheckEn
	.type	DRV_CA_OTP_V200_SetWakeupDDRCheckEn, %function
DRV_CA_OTP_V200_SetWakeupDDRCheckEn:
	.fnstart
.LFB969:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L479	@,
.L474:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L479:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #24, #1	@ tmp145, D.24291,,
	str	r0, [fp, #-44]	@ D.24291, PVLOCK_1.u32
	cmp	r2, #0	@ tmp145,
	bne	.L480	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L481	@,
.L477:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #1	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-41]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L474	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	r3, #6703	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L474	@
.L480:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp180,
	movt	r2, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #24, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L474	@
.L481:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	r1, [fp, #-33]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L477	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	r3, #6692	@,
	movw	ip, #:lower16:.LC0	@ tmp164,
	movt	ip, #:upper16:.LC0	@ tmp164,
	str	ip, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L474	@
.L483:
	.align	2
.L482:
	.word	.LANCHOR0+532
	.fnend
	.size	DRV_CA_OTP_V200_SetWakeupDDRCheckEn, .-DRV_CA_OTP_V200_SetWakeupDDRCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_SetRuntimeCheckEn
	.type	DRV_CA_OTP_V200_SetRuntimeCheckEn, %function
DRV_CA_OTP_V200_SetRuntimeCheckEn:
	.fnstart
.LFB968:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L491	@,
.L486:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L491:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp142, D.24258,,
	str	r0, [fp, #-44]	@ D.24258, PVLOCK_1.u32
	and	r2, r1, #16	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L492	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L493	@,
.L489:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #16	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-42]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L486	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L494	@,
	movw	r3, #6650	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L486	@
.L492:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp180,
	movt	r2, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #20, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L486	@
.L493:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	ip, #16	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	ip, [fp, #-34]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L489	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L494	@,
	movw	r3, #6639	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L486	@
.L495:
	.align	2
.L494:
	.word	.LANCHOR0+568
	.fnend
	.size	DRV_CA_OTP_V200_SetRuntimeCheckEn, .-DRV_CA_OTP_V200_SetRuntimeCheckEn
	.align	2
	.global	DRV_CA_OTP_V200_SetOtpGlobalLockEn
	.type	DRV_CA_OTP_V200_SetOtpGlobalLockEn, %function
DRV_CA_OTP_V200_SetOtpGlobalLockEn:
	.fnstart
.LFB967:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L503	@,
.L498:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L503:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp143,,
	and	r0, r1, #128	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L504	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L505	@,
.L501:
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #-2147483648	@,
	ldr	r2, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L498	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L506	@,
	movw	r3, #6597	@,
	movw	lr, #:lower16:.LC0	@ tmp165,
	movt	lr, #:upper16:.LC0	@ tmp165,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L498	@
.L504:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r4, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	movw	r4, #:lower16:-2142371830	@ tmp169,
	movt	r4, #:upper16:-2142371830	@ tmp169,
	cmp	r5, r0, lsr #31	@ u32Enable,,
	moveq	r4, #0	@, ret,
	b	.L498	@
.L505:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #-2147483648	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L501	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L506	@,
	movw	r3, #6586	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L498	@
.L507:
	.align	2
.L506:
	.word	.LANCHOR0+604
	.fnend
	.size	DRV_CA_OTP_V200_SetOtpGlobalLockEn, .-DRV_CA_OTP_V200_SetOtpGlobalLockEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCSA3HardonlyEn
	.type	DRV_CA_OTP_V200_SetTSCSA3HardonlyEn, %function
DRV_CA_OTP_V200_SetTSCSA3HardonlyEn:
	.fnstart
.LFB963:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L515	@,
.L510:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L515:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp143,,,
	and	r0, r1, #64	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L516	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L517	@,
.L513:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #16384	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L510	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L518	@,
	movw	r3, #6340	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L510	@
.L516:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #14, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Enable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L510	@
.L517:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #16384	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L513	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L518	@,
	movw	r3, #6329	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L510	@
.L519:
	.align	2
.L518:
	.word	.LANCHOR0+640
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCSA3HardonlyEn, .-DRV_CA_OTP_V200_SetTSCSA3HardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSNVHardonlyEn
	.type	DRV_CA_OTP_V200_SetTSNVHardonlyEn, %function
DRV_CA_OTP_V200_SetTSNVHardonlyEn:
	.fnstart
.LFB962:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L527	@,
.L522:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L527:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp143,,,
	and	r0, r1, #32	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L528	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L529	@,
.L525:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #8192	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L522	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L530	@,
	movw	r3, #6287	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L522	@
.L528:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #13, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Enable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L522	@
.L529:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #8192	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L525	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L530	@,
	movw	r3, #6276	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L522	@
.L531:
	.align	2
.L530:
	.word	.LANCHOR0+676
	.fnend
	.size	DRV_CA_OTP_V200_SetTSNVHardonlyEn, .-DRV_CA_OTP_V200_SetTSNVHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSSPEHardonlyEn
	.type	DRV_CA_OTP_V200_SetTSSPEHardonlyEn, %function
DRV_CA_OTP_V200_SetTSSPEHardonlyEn:
	.fnstart
.LFB960:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L539	@,
.L534:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L539:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp143,,,
	and	r0, r1, #8	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L540	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L541	@,
.L537:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #2048	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L534	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L542	@,
	movw	r3, #6166	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L534	@
.L540:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #11, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Enable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L534	@
.L541:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #2048	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L537	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L542	@,
	movw	r3, #6155	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L534	@
.L543:
	.align	2
.L542:
	.word	.LANCHOR0+712
	.fnend
	.size	DRV_CA_OTP_V200_SetTSSPEHardonlyEn, .-DRV_CA_OTP_V200_SetTSSPEHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCsa2HardonlyEn
	.type	DRV_CA_OTP_V200_SetTSCsa2HardonlyEn, %function
DRV_CA_OTP_V200_SetTSCsa2HardonlyEn:
	.fnstart
.LFB959:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L551	@,
.L546:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L551:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp143,,,
	and	r0, r1, #4	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L552	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L553	@,
.L549:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #1024	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L546	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L554	@,
	movw	r3, #6113	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L546	@
.L552:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #10, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Enable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L546	@
.L553:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1024	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L549	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L554	@,
	movw	r3, #6102	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L546	@
.L555:
	.align	2
.L554:
	.word	.LANCHOR0+748
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCsa2HardonlyEn, .-DRV_CA_OTP_V200_SetTSCsa2HardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetBloadDecEn
	.type	DRV_CA_OTP_V200_SetBloadDecEn, %function
DRV_CA_OTP_V200_SetBloadDecEn:
	.fnstart
.LFB958:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L563	@,
.L558:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L563:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #4	@ tmp145,,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L564	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L565	@,
.L561:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #4	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L558	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L566	@,
	movw	r3, #6060	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L558	@
.L564:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp169,
	movt	r2, #:upper16:-2142371830	@ tmp169,
	ubfx	ip, r0, #2, #1	@ tmp151,,,
	cmp	ip, r5	@ tmp151, u32Enable
	movne	r4, r2	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L558	@
.L565:
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #4	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L561	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L566	@,
	movw	r3, #6049	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L558	@
.L567:
	.align	2
.L566:
	.word	.LANCHOR0+784
	.fnend
	.size	DRV_CA_OTP_V200_SetBloadDecEn, .-DRV_CA_OTP_V200_SetBloadDecEn
	.align	2
	.global	DRV_CA_OTP_V200_SetBloadEncDisable
	.type	DRV_CA_OTP_V200_SetBloadEncDisable, %function
DRV_CA_OTP_V200_SetBloadEncDisable:
	.fnstart
.LFB956:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L575	@,
.L570:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L575:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp142, D.23807,,
	str	r0, [fp, #-44]	@ D.23807, PVLOCK_1.u32
	and	r2, r1, #8	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L576	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L577	@,
.L573:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #8	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-42]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L570	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L578	@,
	movw	r3, #5939	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L570	@
.L576:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp180,
	movt	r2, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #19, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L570	@
.L577:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	ip, #8	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	ip, [fp, #-34]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L573	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L578	@,
	movw	r3, #5928	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L570	@
.L579:
	.align	2
.L578:
	.word	.LANCHOR0+816
	.fnend
	.size	DRV_CA_OTP_V200_SetBloadEncDisable, .-DRV_CA_OTP_V200_SetBloadEncDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetDcasKLDisable
	.type	DRV_CA_OTP_V200_SetDcasKLDisable, %function
DRV_CA_OTP_V200_SetDcasKLDisable:
	.fnstart
.LFB955:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L587	@,
.L582:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L587:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp178,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp178,
	mov	r0, #12	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r2, r0, #32	@ tmp144, D.23774,
	str	r0, [fp, #-44]	@ D.23774, PVLOCK_1.u32
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L588	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L589	@,
.L585:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp165,
	mov	r0, #32	@ tmp168,
	str	r4, [fp, #-44]	@ tmp165, PVLOCK_1.u32
	strb	r0, [fp, #-44]	@ tmp168,
	mov	r0, #12	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L582	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L590	@,
	movw	r3, #5886	@,
	movw	ip, #:lower16:.LC0	@ tmp176,
	movt	ip, #:upper16:.LC0	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L582	@
.L588:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp180,
	movt	ip, #:upper16:-2142371830	@ tmp180,
	ubfx	r0, r0, #5, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, ip	@ ret, tmp180
	moveq	r4, #0	@ ret,
	b	.L582	@
.L589:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #32	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	r1, [fp, #-36]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L585	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L590	@,
	movw	r3, #5875	@,
	movw	ip, #:lower16:.LC0	@ tmp164,
	movt	ip, #:upper16:.LC0	@ tmp164,
	str	ip, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L582	@
.L591:
	.align	2
.L590:
	.word	.LANCHOR0+852
	.fnend
	.size	DRV_CA_OTP_V200_SetDcasKLDisable, .-DRV_CA_OTP_V200_SetDcasKLDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetTSKLNVDisable
	.type	DRV_CA_OTP_V200_SetTSKLNVDisable, %function
DRV_CA_OTP_V200_SetTSKLNVDisable:
	.fnstart
.LFB953:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L599	@,
.L594:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L599:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp143,,,
	and	r0, r1, #8	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L600	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L601	@,
.L597:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #524288	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L594	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L602	@,
	movw	r3, #5765	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L594	@
.L600:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #19, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Disable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L594	@
.L601:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #524288	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L597	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L602	@,
	movw	r3, #5754	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L594	@
.L603:
	.align	2
.L602:
	.word	.LANCHOR0+888
	.fnend
	.size	DRV_CA_OTP_V200_SetTSKLNVDisable, .-DRV_CA_OTP_V200_SetTSKLNVDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetLinkProtectDisable
	.type	DRV_CA_OTP_V200_SetLinkProtectDisable, %function
DRV_CA_OTP_V200_SetLinkProtectDisable:
	.fnstart
.LFB952:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L611	@,
.L606:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L611:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp143,,,
	and	r0, r1, #2	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L612	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L613	@,
.L609:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #512	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L606	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L614	@,
	movw	r3, #5712	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L606	@
.L612:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp169,
	movt	ip, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #9, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Disable
	movne	r4, ip	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L606	@
.L613:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #512	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L609	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L614	@,
	movw	r3, #5701	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L606	@
.L615:
	.align	2
.L614:
	.word	.LANCHOR0+924
	.fnend
	.size	DRV_CA_OTP_V200_SetLinkProtectDisable, .-DRV_CA_OTP_V200_SetLinkProtectDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetRigthCtrlEn
	.type	DRV_CA_OTP_V200_SetRigthCtrlEn, %function
DRV_CA_OTP_V200_SetRigthCtrlEn:
	.fnstart
.LFB950:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #2048	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L617	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L619	@,
	movw	r3, #5643	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L617:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L620:
	.align	2
.L619:
	.word	.LANCHOR0+964
	.fnend
	.size	DRV_CA_OTP_V200_SetRigthCtrlEn, .-DRV_CA_OTP_V200_SetRigthCtrlEn
	.align	2
	.global	DRV_CA_OTP_V200_SetDebugDisable
	.type	DRV_CA_OTP_V200_SetDebugDisable, %function
DRV_CA_OTP_V200_SetDebugDisable:
	.fnstart
.LFB948:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #512	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L622	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L624	@,
	movw	r3, #5608	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L622:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L625:
	.align	2
.L624:
	.word	.LANCHOR0+996
	.fnend
	.size	DRV_CA_OTP_V200_SetDebugDisable, .-DRV_CA_OTP_V200_SetDebugDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetJtagReadDisable
	.type	DRV_CA_OTP_V200_SetJtagReadDisable, %function
DRV_CA_OTP_V200_SetJtagReadDisable:
	.fnstart
.LFB946:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #128	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L627	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L629	@,
	movw	r3, #5573	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L627:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L630:
	.align	2
.L629:
	.word	.LANCHOR0+1028
	.fnend
	.size	DRV_CA_OTP_V200_SetJtagReadDisable, .-DRV_CA_OTP_V200_SetJtagReadDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA3Deactive
	.type	DRV_CA_OTP_V200_SetCSA3Deactive, %function
DRV_CA_OTP_V200_SetCSA3Deactive:
	.fnstart
.LFB944:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #16	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L632	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L634	@,
	movw	r3, #5538	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L632:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L635:
	.align	2
.L634:
	.word	.LANCHOR0+1064
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA3Deactive, .-DRV_CA_OTP_V200_SetCSA3Deactive
	.align	2
	.global	DRV_CA_OTP_V200_SetBootSelCtrlLock
	.type	DRV_CA_OTP_V200_SetBootSelCtrlLock, %function
DRV_CA_OTP_V200_SetBootSelCtrlLock:
	.fnstart
.LFB942:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #4	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-26]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L637	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L639	@,
	movw	r3, #5501	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L637:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L640:
	.align	2
.L639:
	.word	.LANCHOR0+1096
	.fnend
	.size	DRV_CA_OTP_V200_SetBootSelCtrlLock, .-DRV_CA_OTP_V200_SetBootSelCtrlLock
	.align	2
	.global	DRV_CA_OTP_V200_SetBootSelCtrl
	.type	DRV_CA_OTP_V200_SetBootSelCtrl, %function
DRV_CA_OTP_V200_SetBootSelCtrl:
	.fnstart
.LFB940:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32BootSel,
	mov	r5, r0	@ u32BootSel, u32BootSel
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L648	@,
.L643:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L648:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp142, D.23488,,
	str	r0, [fp, #-44]	@ D.23488, PVLOCK_1.u32
	and	r2, r1, #4	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L649	@,
	cmp	r5, #1	@ u32BootSel,
	beq	.L650	@,
.L646:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp166,
	mov	r0, #4	@ tmp169,
	str	r4, [fp, #-44]	@ tmp166, PVLOCK_1.u32
	strb	r0, [fp, #-42]	@ tmp169,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L643	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L651	@,
	movw	r3, #5467	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L643	@
.L649:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	ubfx	r0, r0, #18, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32BootSel
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L643	@
.L650:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	strb	r0, [fp, #-34]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L646	@,
	mov	r0, r5	@, u32BootSel
	mov	r1, #97	@,
	ldr	r2, .L651	@,
	movw	r3, #5456	@,
	movw	lr, #:lower16:.LC0	@ tmp165,
	movt	lr, #:upper16:.LC0	@ tmp165,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L643	@
.L652:
	.align	2
.L651:
	.word	.LANCHOR0+1132
	.fnend
	.size	DRV_CA_OTP_V200_SetBootSelCtrl, .-DRV_CA_OTP_V200_SetBootSelCtrl
	.align	2
	.global	DRV_CA_OTP_V200_SetSecureChipFlagLock
	.type	DRV_CA_OTP_V200_SetSecureChipFlagLock, %function
DRV_CA_OTP_V200_SetSecureChipFlagLock:
	.fnstart
.LFB938:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #1	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-28]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L654	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L656	@,
	movw	r3, #5396	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L654:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L657:
	.align	2
.L656:
	.word	.LANCHOR0+1164
	.fnend
	.size	DRV_CA_OTP_V200_SetSecureChipFlagLock, .-DRV_CA_OTP_V200_SetSecureChipFlagLock
	.align	2
	.global	DRV_CA_OTP_V200_SetLpcMasterEnLock
	.type	DRV_CA_OTP_V200_SetLpcMasterEnLock, %function
DRV_CA_OTP_V200_SetLpcMasterEnLock:
	.fnstart
.LFB936:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #2	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-26]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L659	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L661	@,
	movw	r3, #5361	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L659:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L662:
	.align	2
.L661:
	.word	.LANCHOR0+1204
	.fnend
	.size	DRV_CA_OTP_V200_SetLpcMasterEnLock, .-DRV_CA_OTP_V200_SetLpcMasterEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetLpcEnLock
	.type	DRV_CA_OTP_V200_SetLpcEnLock, %function
DRV_CA_OTP_V200_SetLpcEnLock:
	.fnstart
.LFB934:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #1	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-26]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L664	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L666	@,
	movw	r3, #5326	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L664:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L667:
	.align	2
.L666:
	.word	.LANCHOR0+1240
	.fnend
	.size	DRV_CA_OTP_V200_SetLpcEnLock, .-DRV_CA_OTP_V200_SetLpcEnLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTsOutDisableLock
	.type	DRV_CA_OTP_V200_SetTsOutDisableLock, %function
DRV_CA_OTP_V200_SetTsOutDisableLock:
	.fnstart
.LFB932:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #128	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PVLOCK_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@,
	strb	r2, [fp, #-27]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PVLOCK_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L669	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L671	@,
	movw	r3, #5291	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L669:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L672:
	.align	2
.L671:
	.word	.LANCHOR0+1272
	.fnend
	.size	DRV_CA_OTP_V200_SetTsOutDisableLock, .-DRV_CA_OTP_V200_SetTsOutDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTsOutDisable
	.type	DRV_CA_OTP_V200_SetTsOutDisable, %function
DRV_CA_OTP_V200_SetTsOutDisable:
	.fnstart
.LFB930:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L680	@,
.L675:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L680:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #12	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp142, D.23338,,
	str	r0, [fp, #-44]	@ D.23338, PVLOCK_1.u32
	and	r2, r1, #128	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L681	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L682	@,
.L678:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp166,
	mov	r0, #128	@ tmp169,
	str	r4, [fp, #-44]	@ tmp166, PVLOCK_1.u32
	strb	r0, [fp, #-43]	@ tmp169,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L675	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L683	@,
	movw	r3, #5257	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L675	@
.L681:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	ubfx	r0, r0, #15, #1	@ tmp152,,,
	cmp	r0, r5	@ tmp152, u32Disable
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L675	@
.L682:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	ip, #128	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	ip, [fp, #-35]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L678	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L683	@,
	movw	r3, #5246	@,
	movw	lr, #:lower16:.LC0	@ tmp165,
	movt	lr, #:upper16:.LC0	@ tmp165,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L675	@
.L684:
	.align	2
.L683:
	.word	.LANCHOR0+1308
	.fnend
	.size	DRV_CA_OTP_V200_SetTsOutDisable, .-DRV_CA_OTP_V200_SetTsOutDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCSA3DeactiveLock
	.type	DRV_CA_OTP_V200_SetTSCSA3DeactiveLock, %function
DRV_CA_OTP_V200_SetTSCSA3DeactiveLock:
	.fnstart
.LFB920:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #1048576	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L686	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L688	@,
	movw	r3, #4853	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L686:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L689:
	.align	2
.L688:
	.word	.LANCHOR0+1340
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCSA3DeactiveLock, .-DRV_CA_OTP_V200_SetTSCSA3DeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCSA3Deactive
	.type	DRV_CA_OTP_V200_SetTSCSA3Deactive, %function
DRV_CA_OTP_V200_SetTSCSA3Deactive:
	.fnstart
.LFB918:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Deactive,
	mov	r5, r0	@ u32Deactive, u32Deactive
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L697	@,
.L692:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L697:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp169,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp169,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp143,,,
	and	r0, r1, #16	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L698	@,
	cmp	r5, #1	@ u32Deactive,
	beq	.L699	@,
.L695:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #1048576	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L692	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L700	@,
	movw	r3, #4818	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L692	@
.L698:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp171,
	movt	ip, #:upper16:-2142371830	@ tmp171,
	ubfx	r0, r0, #20, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Deactive
	movne	r4, ip	@ ret, tmp171
	moveq	r4, #0	@ ret,
	b	.L692	@
.L699:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1048576	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L695	@,
	mov	r0, r5	@, u32Deactive
	mov	r1, #97	@,
	ldr	r2, .L700	@,
	movw	r3, #4807	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L692	@
.L701:
	.align	2
.L700:
	.word	.LANCHOR0+1380
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCSA3Deactive, .-DRV_CA_OTP_V200_SetTSCSA3Deactive
	.align	2
	.global	DRV_CA_OTP_V200_SetTSSPDeactiveLock
	.type	DRV_CA_OTP_V200_SetTSSPDeactiveLock, %function
DRV_CA_OTP_V200_SetTSSPDeactiveLock:
	.fnstart
.LFB916:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #131072	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L703	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L705	@,
	movw	r3, #4747	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L703:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L706:
	.align	2
.L705:
	.word	.LANCHOR0+1416
	.fnend
	.size	DRV_CA_OTP_V200_SetTSSPDeactiveLock, .-DRV_CA_OTP_V200_SetTSSPDeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTSSPDeactive
	.type	DRV_CA_OTP_V200_SetTSSPDeactive, %function
DRV_CA_OTP_V200_SetTSSPDeactive:
	.fnstart
.LFB914:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Deactive,
	mov	r5, r0	@ u32Deactive, u32Deactive
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L714	@,
.L709:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L714:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp169,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp169,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp143,,,
	and	r0, r1, #2	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L715	@,
	cmp	r5, #1	@ u32Deactive,
	beq	.L716	@,
.L712:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #131072	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L709	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L717	@,
	movw	r3, #4712	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L709	@
.L715:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp171,
	movt	ip, #:upper16:-2142371830	@ tmp171,
	ubfx	r0, r0, #17, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Deactive
	movne	r4, ip	@ ret, tmp171
	moveq	r4, #0	@ ret,
	b	.L709	@
.L716:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #131072	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L712	@,
	mov	r0, r5	@, u32Deactive
	mov	r1, #97	@,
	ldr	r2, .L717	@,
	movw	r3, #4701	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L709	@
.L718:
	.align	2
.L717:
	.word	.LANCHOR0+1452
	.fnend
	.size	DRV_CA_OTP_V200_SetTSSPDeactive, .-DRV_CA_OTP_V200_SetTSSPDeactive
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCWDeactiveLock
	.type	DRV_CA_OTP_V200_SetTSCWDeactiveLock, %function
DRV_CA_OTP_V200_SetTSCWDeactiveLock:
	.fnstart
.LFB912:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #65536	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L720	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L722	@,
	movw	r3, #4641	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L720:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L723:
	.align	2
.L722:
	.word	.LANCHOR0+1484
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCWDeactiveLock, .-DRV_CA_OTP_V200_SetTSCWDeactiveLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTSCWDeactive
	.type	DRV_CA_OTP_V200_SetTSCWDeactive, %function
DRV_CA_OTP_V200_SetTSCWDeactive:
	.fnstart
.LFB910:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Deactive,
	mov	r5, r0	@ u32Deactive, u32Deactive
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L731	@,
.L726:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L731:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp167,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp167,
	mov	r0, #8	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #16, #1	@ tmp146,,,
	cmp	r0, #0	@ tmp146,
	bne	.L732	@,
	cmp	r5, #1	@ u32Deactive,
	beq	.L733	@,
.L729:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #65536	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L726	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L734	@,
	movw	r3, #4606	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L726	@
.L732:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp169,
	movt	r2, #:upper16:-2142371830	@ tmp169,
	ubfx	r0, r0, #16, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Deactive
	movne	r4, r2	@ ret, tmp169
	moveq	r4, #0	@ ret,
	b	.L726	@
.L733:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #65536	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L729	@,
	mov	r0, r5	@, u32Deactive
	mov	r1, #97	@,
	ldr	r2, .L734	@,
	movw	r3, #4595	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L726	@
.L735:
	.align	2
.L734:
	.word	.LANCHOR0+1520
	.fnend
	.size	DRV_CA_OTP_V200_SetTSCWDeactive, .-DRV_CA_OTP_V200_SetTSCWDeactive
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA3LadderLock
	.type	DRV_CA_OTP_V200_SetCSA3LadderLock, %function
DRV_CA_OTP_V200_SetCSA3LadderLock:
	.fnstart
.LFB908:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #256	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L737	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L739	@,
	movw	r3, #4535	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L737:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L740:
	.align	2
.L739:
	.word	.LANCHOR0+1552
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA3LadderLock, .-DRV_CA_OTP_V200_SetCSA3LadderLock
	.align	2
	.global	DRV_CA_OTP_V200_SetSPLadderLock
	.type	DRV_CA_OTP_V200_SetSPLadderLock, %function
DRV_CA_OTP_V200_SetSPLadderLock:
	.fnstart
.LFB906:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #128	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L742	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L744	@,
	movw	r3, #4500	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L742:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L745:
	.align	2
.L744:
	.word	.LANCHOR0+1588
	.fnend
	.size	DRV_CA_OTP_V200_SetSPLadderLock, .-DRV_CA_OTP_V200_SetSPLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_SetR2RLadderLock
	.type	DRV_CA_OTP_V200_SetR2RLadderLock, %function
DRV_CA_OTP_V200_SetR2RLadderLock:
	.fnstart
.LFB904:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #64	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L747	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L749	@,
	movw	r3, #4465	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L747:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L750:
	.align	2
.L749:
	.word	.LANCHOR0+1620
	.fnend
	.size	DRV_CA_OTP_V200_SetR2RLadderLock, .-DRV_CA_OTP_V200_SetR2RLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_SetDVBLadderLock
	.type	DRV_CA_OTP_V200_SetDVBLadderLock, %function
DRV_CA_OTP_V200_SetDVBLadderLock:
	.fnstart
.LFB902:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #32	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L752	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L754	@,
	movw	r3, #4430	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L752:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L755:
	.align	2
.L754:
	.word	.LANCHOR0+1656
	.fnend
	.size	DRV_CA_OTP_V200_SetDVBLadderLock, .-DRV_CA_OTP_V200_SetDVBLadderLock
	.align	2
	.global	DRV_CA_OTP_V200_SetLowPowerDisableLock
	.type	DRV_CA_OTP_V200_SetLowPowerDisableLock, %function
DRV_CA_OTP_V200_SetLowPowerDisableLock:
	.fnstart
.LFB900:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #16	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L757	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L759	@,
	movw	r3, #4395	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L757:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L760:
	.align	2
.L759:
	.word	.LANCHOR0+1692
	.fnend
	.size	DRV_CA_OTP_V200_SetLowPowerDisableLock, .-DRV_CA_OTP_V200_SetLowPowerDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetSelfbootLock
	.type	DRV_CA_OTP_V200_SetSelfbootLock, %function
DRV_CA_OTP_V200_SetSelfbootLock:
	.fnstart
.LFB898:
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
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	ldr	r2, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r0	@,
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L762	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L764	@,
	movw	r3, #4360	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L762:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L765:
	.align	2
.L764:
	.word	.LANCHOR0+1732
	.fnend
	.size	DRV_CA_OTP_V200_SetSelfbootLock, .-DRV_CA_OTP_V200_SetSelfbootLock
	.align	2
	.global	DRV_CA_OTP_V200_SetStbSnP
	.type	DRV_CA_OTP_V200_SetStbSnP, %function
DRV_CA_OTP_V200_SetStbSnP:
	.fnstart
.LFB896:
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
	cmp	r0, #15	@ u32StbSnP,
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L770	@,
.L768:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L770:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp144,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp144,
	mov	r1, #0	@ DataLock_0,
	bfi	r1, r0, #4, #1	@ DataLock_0, u32StbSnP,,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	bfc	r1, #5, #1	@ DataLock_0,,
	bfc	r1, #6, #1	@ DataLock_0,,
	mov	r0, #16	@,
	bic	r1, r1, #128	@, DataLock_0,
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L768	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L771	@,
	movw	r3, #4322	@,
	movw	ip, #:lower16:.LC0	@ tmp149,
	movt	ip, #:upper16:.LC0	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	b	.L768	@
.L772:
	.align	2
.L771:
	.word	.LANCHOR0+1764
	.fnend
	.size	DRV_CA_OTP_V200_SetStbSnP, .-DRV_CA_OTP_V200_SetStbSnP
	.align	2
	.global	DRV_CA_OTP_V200_SetMktIdP
	.type	DRV_CA_OTP_V200_SetMktIdP, %function
DRV_CA_OTP_V200_SetMktIdP:
	.fnstart
.LFB894:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #16	@,
	mov	r1, #256	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L774	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L776	@,
	movw	r3, #4279	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L774:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L777:
	.align	2
.L776:
	.word	.LANCHOR0+1792
	.fnend
	.size	DRV_CA_OTP_V200_SetMktIdP, .-DRV_CA_OTP_V200_SetMktIdP
	.align	2
	.global	DRV_CA_OTP_V200_SetBootSelLock_1
	.type	DRV_CA_OTP_V200_SetBootSelLock_1, %function
DRV_CA_OTP_V200_SetBootSelLock_1:
	.fnstart
.LFB892:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #2	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L779	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L781	@,
	movw	r3, #4244	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L779:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L782:
	.align	2
.L781:
	.word	.LANCHOR0+1820
	.fnend
	.size	DRV_CA_OTP_V200_SetBootSelLock_1, .-DRV_CA_OTP_V200_SetBootSelLock_1
	.align	2
	.global	DRV_CA_OTP_V200_SetBootSelLock_0
	.type	DRV_CA_OTP_V200_SetBootSelLock_0, %function
DRV_CA_OTP_V200_SetBootSelLock_0:
	.fnstart
.LFB890:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #8	@,
	mov	r1, #1	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L784	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L786	@,
	movw	r3, #4209	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L784:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L787:
	.align	2
.L786:
	.word	.LANCHOR0+1856
	.fnend
	.size	DRV_CA_OTP_V200_SetBootSelLock_0, .-DRV_CA_OTP_V200_SetBootSelLock_0
	.align	2
	.global	DRV_CA_OTP_V200_SetLpcMasterEn
	.type	DRV_CA_OTP_V200_SetLpcMasterEn, %function
DRV_CA_OTP_V200_SetLpcMasterEn:
	.fnstart
.LFB888:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32LpcMasterDisable,
	mov	r4, r0	@ u32LpcMasterDisable, u32LpcMasterDisable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L795	@,
.L790:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L795:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #12	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp142, D.22564,,
	str	r0, [fp, #-36]	@ D.22564, PVLOCK_1.u32
	and	r2, r1, #2	@ tmp144, tmp142,
	uxtb	r2, r2	@ tmp145, tmp144
	cmp	r2, #0	@ tmp145,
	bne	.L796	@,
	cmp	r4, #0	@ u32LpcMasterDisable,
	beq	.L793	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	ip, #2	@ tmp156,
	str	r2, [fp, #-28]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	ip, [fp, #-26]	@ tmp156,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L797	@,
.L793:
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp166,
	mov	r0, #2	@ tmp169,
	str	r4, [fp, #-36]	@ tmp166, PVLOCK_1.u32
	strb	r0, [fp, #-34]	@ tmp169,
	mov	r0, #12	@,
	ldr	r2, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-36]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L790	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L798	@,
	movw	r3, #4174	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L790	@
.L796:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	ubfx	r0, r0, #17, #1	@ tmp152,,,
	cmp	r0, r4	@ tmp152, u32LpcMasterDisable
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L790	@
.L797:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L798	@,
	movw	r3, #4163	@,
	movw	lr, #:lower16:.LC0	@ tmp165,
	movt	lr, #:upper16:.LC0	@ tmp165,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L790	@
.L799:
	.align	2
.L798:
	.word	.LANCHOR0+1892
	.fnend
	.size	DRV_CA_OTP_V200_SetLpcMasterEn, .-DRV_CA_OTP_V200_SetLpcMasterEn
	.align	2
	.global	DRV_CA_OTP_V200_SetLpcEn
	.type	DRV_CA_OTP_V200_SetLpcEn, %function
DRV_CA_OTP_V200_SetLpcEn:
	.fnstart
.LFB886:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32LpcDisable,
	mov	r4, r0	@ u32LpcDisable, u32LpcDisable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L807	@,
.L802:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L807:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #12	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #16, #1	@ tmp145, D.22518,,
	str	r0, [fp, #-36]	@ D.22518, PVLOCK_1.u32
	cmp	r2, #0	@ tmp145,
	bne	.L808	@,
	cmp	r4, #0	@ u32LpcDisable,
	beq	.L805	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@ tmp156,
	str	r2, [fp, #-28]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	r1, [fp, #-26]	@ tmp156,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L809	@,
.L805:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp166,
	mov	r0, #1	@ tmp169,
	str	r4, [fp, #-36]	@ tmp166, PVLOCK_1.u32
	strb	r0, [fp, #-34]	@ tmp169,
	mov	r0, #12	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-36]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L802	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L810	@,
	movw	r3, #4103	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L802	@
.L808:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	ubfx	r0, r0, #16, #1	@ tmp152,,,
	cmp	r0, r4	@ tmp152, u32LpcDisable
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L802	@
.L809:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L810	@,
	movw	r3, #4092	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L802	@
.L811:
	.align	2
.L810:
	.word	.LANCHOR0+1924
	.fnend
	.size	DRV_CA_OTP_V200_SetLpcEn, .-DRV_CA_OTP_V200_SetLpcEn
	.align	2
	.global	DRV_CA_OTP_V200_SetCsa3En
	.type	DRV_CA_OTP_V200_SetCsa3En, %function
DRV_CA_OTP_V200_SetCsa3En:
	.fnstart
.LFB884:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #16	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L813	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L815	@,
	movw	r3, #4034	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L813:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L816:
	.align	2
.L815:
	.word	.LANCHOR0+1952
	.fnend
	.size	DRV_CA_OTP_V200_SetCsa3En, .-DRV_CA_OTP_V200_SetCsa3En
	.align	2
	.global	DRV_CA_OTP_V200_SetLowPowerDisable
	.type	DRV_CA_OTP_V200_SetLowPowerDisable, %function
DRV_CA_OTP_V200_SetLowPowerDisable:
	.fnstart
.LFB882:
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
	cmp	r0, #1	@ u32Flag,
	mov	r4, r0	@ u32Flag, u32Flag
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L824	@,
.L819:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L824:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp169,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp169,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #16	@ tmp145,,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L825	@,
	cmp	r4, #0	@ u32Flag,
	beq	.L822	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #16	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L826	@,
.L822:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #16	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L819	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L827	@,
	movw	r3, #3999	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L819	@
.L825:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp171,
	movt	r2, #:upper16:-2142371830	@ tmp171,
	ubfx	ip, r0, #4, #1	@ tmp151,,,
	cmp	ip, r4	@ tmp151, u32Flag
	movne	r4, r2	@ ret, tmp171
	moveq	r4, #0	@ ret,
	b	.L819	@
.L826:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L827	@,
	movw	r3, #3988	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L819	@
.L828:
	.align	2
.L827:
	.word	.LANCHOR0+1980
	.fnend
	.size	DRV_CA_OTP_V200_SetLowPowerDisable, .-DRV_CA_OTP_V200_SetLowPowerDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetChipIdLock
	.type	DRV_CA_OTP_V200_SetChipIdLock, %function
DRV_CA_OTP_V200_SetChipIdLock:
	.fnstart
.LFB878:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #16	@,
	mov	r1, #2	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L830	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L832	@,
	movw	r3, #3829	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L830:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L833:
	.align	2
.L832:
	.word	.LANCHOR0+2016
	.fnend
	.size	DRV_CA_OTP_V200_SetChipIdLock, .-DRV_CA_OTP_V200_SetChipIdLock
	.align	2
	.global	DRV_CA_OTP_V200_SetUniqueChipId
	.type	DRV_CA_OTP_V200_SetUniqueChipId, %function
DRV_CA_OTP_V200_SetUniqueChipId:
	.fnstart
.LFB875:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r6, r0	@ pu8Id, pu8Id
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2	@,
	movwne	r4, #:lower16:-2142371830	@ ret,
	movtne	r4, #:upper16:-2142371830	@ ret,
	bne	.L836	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #104	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@,* pu8Id
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #105	@,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #106	@,
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #107	@,
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #108	@,
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #109	@,
	ldrb	r1, [r6, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #110	@,
	ldrb	r1, [r6, #6]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #111	@,
	ldrb	r1, [r6, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L837	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #2	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L840	@,
.L836:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L840:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L841	@,
	movw	r3, #3781	@,
	movw	lr, #:lower16:.LC0	@ tmp186,
	movt	lr, #:upper16:.LC0	@ tmp186,
	str	lr, [sp, #0]	@ tmp186,
	bl	HI_LogOut	@
	b	.L836	@
.L837:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L841	@,
	movw	r3, #3769	@,
	movw	ip, #:lower16:.LC0	@ tmp179,
	movt	ip, #:upper16:.LC0	@ tmp179,
	str	ip, [sp, #0]	@ tmp179,
	bl	HI_LogOut	@
	b	.L836	@
.L842:
	.align	2
.L841:
	.word	.LANCHOR0+2048
	.fnend
	.size	DRV_CA_OTP_V200_SetUniqueChipId, .-DRV_CA_OTP_V200_SetUniqueChipId
	.align	2
	.global	DRV_CA_OTP_V200_SetChipId
	.type	DRV_CA_OTP_V200_SetChipId, %function
DRV_CA_OTP_V200_SetChipId:
	.fnstart
.LFB874:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r4, r0	@ u32Id, u32Id
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2	@,
	beq	.L844	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #104	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp164,
	movt	r2, #:upper16:-2142371830	@ tmp164,
	cmp	r0, r4	@, u32Id
	movne	r4, r2	@ ret, tmp164
	moveq	r4, #0	@ ret,
.L846:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L844:
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@, u32Id
	mov	r0, #104	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L849	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #2	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L846	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L850	@,
	movw	r3, #3743	@,
	movw	ip, #:lower16:.LC0	@ tmp161,
	movt	ip, #:upper16:.LC0	@ tmp161,
	str	ip, [sp, #0]	@ tmp161,
	bl	HI_LogOut	@
	b	.L846	@
.L849:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L850	@,
	movw	r3, #3733	@,
	movw	ip, #:lower16:.LC0	@ tmp154,
	movt	ip, #:upper16:.LC0	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	b	.L846	@
.L851:
	.align	2
.L850:
	.word	.LANCHOR0+2080
	.fnend
	.size	DRV_CA_OTP_V200_SetChipId, .-DRV_CA_OTP_V200_SetChipId
	.align	2
	.global	DRV_CA_OTP_V200_LockRSAKey
	.type	DRV_CA_OTP_V200_LockRSAKey, %function
DRV_CA_OTP_V200_LockRSAKey:
	.fnstart
.LFB872:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #20	@,
	mov	r1, #1	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L853	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L855	@,
	movw	r3, #3688	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L853:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L856:
	.align	2
.L855:
	.word	.LANCHOR0+2108
	.fnend
	.size	DRV_CA_OTP_V200_LockRSAKey, .-DRV_CA_OTP_V200_LockRSAKey
	.align	2
	.global	DRV_CA_OTP_V200_GetRSAKeyN
	.type	DRV_CA_OTP_V200_GetRSAKeyN, %function
DRV_CA_OTP_V200_GetRSAKeyN:
	.fnstart
.LFB871:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r7, r0, #0	@ pu8Key, pu8Key
	movweq	r0, #:lower16:-2142371835	@ ret,
	movteq	r0, #:upper16:-2142371835	@ ret,
	beq	.L859	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp188,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp188,
	mov	r0, #20	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ands	r4, r0, #1	@ tmp175,,
	bne	.L865	@,
.L861:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r4, #768	@, i,
	add	r5, r4, #1	@ tmp189, i,
	ldr	r1, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r7, r4]	@,* i
	add	r0, r5, #768	@, tmp189,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r4, r5, #1	@ i, tmp189,
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r4, #256	@ i,
	strb	r0, [r7, r5]	@,
	bne	.L861	@,
	mov	r0, #0	@ ret,
.L859:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L865:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L866	@,
	movw	r3, #3665	@,
	movw	ip, #:lower16:.LC2	@ tmp180,
	movt	ip, #:upper16:.LC2	@ tmp180,
	str	ip, [sp, #0]	@ tmp180,
	bl	HI_LogOut	@
	mvn	r0, #0	@ ret,
	b	.L859	@
.L867:
	.align	2
.L866:
	.word	.LANCHOR0+2136
	.fnend
	.size	DRV_CA_OTP_V200_GetRSAKeyN, .-DRV_CA_OTP_V200_GetRSAKeyN
	.align	2
	.global	DRV_CA_OTP_V200_SetRSAKeyN
	.type	DRV_CA_OTP_V200_SetRSAKeyN, %function
DRV_CA_OTP_V200_SetRSAKeyN:
	.fnstart
.LFB870:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r8, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L870	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp161,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp161,
	mov	r0, #20	@,
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ands	r5, r0, #1	@ tmp145,,
	beq	.L873	@,
	b	.L880	@
.L872:
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [r8, r6]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L878	@,
	cmp	r5, #256	@ i,
	beq	.L870	@,
.L873:
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, #768	@, i,
	ldrb	r1, [r8, r5]	@ zero_extendqisi2	@,* i
	add	r6, r5, #1	@ tmp162, i,
	add	r5, r6, #1	@ i, tmp162,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	add	r0, r6, #768	@, tmp162,
	beq	.L872	@,
.L878:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L881	@,
	movw	r3, #3643	@,
	movw	lr, #:lower16:.LC0	@ tmp159,
	movt	lr, #:upper16:.LC0	@ tmp159,
	str	lr, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
.L870:
	mov	r0, r4	@, ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L880:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L881	@,
	movw	r3, #3633	@,
	movw	ip, #:lower16:.LC3	@ tmp150,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC3	@ tmp150,
	str	ip, [sp, #0]	@ tmp150,
	bl	HI_LogOut	@
	b	.L870	@
.L882:
	.align	2
.L881:
	.word	.LANCHOR0+2164
	.fnend
	.size	DRV_CA_OTP_V200_SetRSAKeyN, .-DRV_CA_OTP_V200_SetRSAKeyN
	.align	2
	.global	DRV_CA_OTP_V200_GetRSAKeyE
	.type	DRV_CA_OTP_V200_GetRSAKeyE, %function
DRV_CA_OTP_V200_GetRSAKeyE:
	.fnstart
.LFB869:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L885	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp155,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp155,
	mov	r0, #20	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ands	r6, r0, #1	@ tmp160,,
	bne	.L888	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #752	@,
	ldr	r1, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #0]	@,* pu8Key
	movw	r0, #753	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #1]	@,
	movw	r0, #754	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #2]	@,
	movw	r0, #755	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #3]	@,
	mov	r0, #756	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #4]	@,
	movw	r0, #757	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #5]	@,
	movw	r0, #758	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #6]	@,
	movw	r0, #759	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #7]	@,
	mov	r0, #760	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #8]	@,
	movw	r0, #761	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #9]	@,
	movw	r0, #762	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #10]	@,
	movw	r0, #763	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #11]	@,
	mov	r0, #764	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #12]	@,
	movw	r0, #765	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #13]	@,
	movw	r0, #766	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #14]	@,
	movw	r0, #767	@,
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp160
	strb	r0, [r5, #15]	@,
.L885:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L888:
	movw	r3, #3606	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L889	@,
	movw	ip, #:lower16:.LC4	@ tmp163,
	movt	ip, #:upper16:.LC4	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L885	@
.L890:
	.align	2
.L889:
	.word	.LANCHOR0+2192
	.fnend
	.size	DRV_CA_OTP_V200_GetRSAKeyE, .-DRV_CA_OTP_V200_GetRSAKeyE
	.align	2
	.global	DRV_CA_OTP_V200_SetRSAKeyE
	.type	DRV_CA_OTP_V200_SetRSAKeyE, %function
DRV_CA_OTP_V200_SetRSAKeyE:
	.fnstart
.LFB868:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L893	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp218,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp218,
	mov	r0, #20	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #1	@,
	bne	.L897	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #752	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #753	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #754	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #755	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #756	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #757	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #758	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #759	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #760	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp182,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp182,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #761	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #762	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #763	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #764	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #765	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #766	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #767	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L895	@,
.L893:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L895:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L898	@,
	mov	r3, #3584	@,
	movw	lr, #:lower16:.LC0	@ tmp216,
	movt	lr, #:upper16:.LC0	@ tmp216,
	str	lr, [sp, #0]	@ tmp216,
	bl	HI_LogOut	@
	b	.L893	@
.L897:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L898	@,
	movw	r3, #3574	@,
	movw	ip, #:lower16:.LC5	@ tmp148,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC5	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	b	.L893	@
.L899:
	.align	2
.L898:
	.word	.LANCHOR0+2220
	.fnend
	.size	DRV_CA_OTP_V200_SetRSAKeyE, .-DRV_CA_OTP_V200_SetRSAKeyE
	.align	2
	.global	DRV_CA_OTP_V200_LockOTPTzData
	.type	DRV_CA_OTP_V200_LockOTPTzData, %function
DRV_CA_OTP_V200_LockOTPTzData:
	.fnstart
.LFB867:
	@ args = 136, pretend = 16, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp181,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp181,
	add	ip, fp, #4	@ tmp180,,
	mov	r7, r0	@ stInputParam$u32Addr,
	sub	r6, r7, #256	@ tmp151, stInputParam$u32Addr,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	stmia	ip, {r0, r1, r2, r3}	@ tmp180,,,,
	mov	r0, #28	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	mov	r6, r6, lsr #4	@ u32Offset, tmp151,
	ldr	r5, [fp, #8]	@ stInputParam$u32Len, stInputParam.u32Len
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r5, r5, lsr #4	@ u32LockLen, stInputParam$u32Len,
	cmp	r6, r5	@ u32Offset, u32LockLen
	mov	r1, r0	@ unOTPTZLock,
	bcs	.L901	@,
	ubfx	r2, r0, #8, #8	@ unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, unOTPTZLock,,
	mvn	r3, r6	@ tmp188, u32Offset
	add	r0, r3, r5	@ tmp187, tmp188, u32LockLen
	mov	lr, #1	@ tmp182,
	mov	r7, r2, asr r6	@ tmp153, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777,
	and	r0, r0, lr	@ tmp189, tmp187,
	tst	r7, #1	@ tmp153,
	beq	.L932	@,
.L918:
	add	r3, r6, #1	@ i, u32Offset,
	cmp	r5, r3	@ u32LockLen, i
	bls	.L931	@,
	cmp	r0, #0	@ tmp189,
	beq	.L903	@,
	mov	r0, r2, asr r3	@ tmp206, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777,
	tst	r0, #1	@ tmp206,
	orreq	r2, r2, lr, asl r3	@, tmp210, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp182,
	add	r3, r3, #1	@ i, i,
	uxtbeq	r2, r2	@ unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp210
	cmp	r5, r3	@ u32LockLen, i
	bls	.L931	@,
.L903:
	add	ip, r3, #1	@ tmp190, i,
	orr	r0, r2, lr, asl r3	@, tmp159, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp182,
	mov	r3, r2, asr r3	@ tmp192, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777,
	tst	r3, #1	@ tmp192,
	uxtbeq	r2, r0	@ unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp159
	mov	r7, r2, asr ip	@ tmp195, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777,
	tst	r7, #1	@ tmp195,
	orreq	r2, r2, lr, asl ip	@, tmp214, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp182,
	uxtbeq	r2, r2	@ unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp214
.L923:
	add	r3, ip, #1	@ i, tmp190,
	cmp	r5, r3	@ u32LockLen, i
	bhi	.L903	@,
.L931:
	bfi	r1, r2, #8, #8	@ unOTPTZLock, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777,,
.L901:
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp161,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp161,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L933	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	ldr	r1, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	cmp	r6, r5	@ u32Offset, u32LockLen
	bcs	.L905	@,
	ubfx	r0, r0, #8, #8	@ temp.4792, D.22128,,
	mov	r2, r0, asr r6	@ tmp171, temp.4792,
	tst	r2, #1	@ tmp171,
	beq	.L906	@,
	mvn	ip, r6	@ tmp184, i.4789
	add	lr, ip, r5	@ tmp183, tmp184, u32LockLen
	tst	lr, #1	@ tmp183,
	beq	.L908	@,
	add	r6, r6, #1	@ i.4789, i.4789,
	cmp	r5, r6	@ u32LockLen, i.4789
	bls	.L905	@,
	mov	r1, r0, asr r6	@ tmp198, temp.4792,
	tst	r1, #1	@ tmp198,
	bne	.L908	@,
.L906:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L934	@,
	mov	r3, #3552	@,
	movw	r4, #:lower16:.LC6	@ tmp178,
	movt	r4, #:upper16:.LC6	@ tmp178,
	str	r4, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
.L905:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L909:
	tst	r2, #1	@ tmp173,
	beq	.L906	@,
	tst	r1, #1	@ tmp200,
	beq	.L906	@,
.L908:
	add	r3, r6, #1	@ tmp186, i.4789,
	cmp	r5, r3	@ u32LockLen, tmp186
	add	r6, r3, #1	@ i.4789, tmp186,
	mov	r2, r0, asr r3	@ tmp173, temp.4792,
	mov	r1, r0, asr r6	@ tmp200, temp.4792,
	bhi	.L909	@,
	b	.L905	@
.L932:
	orr	r7, r2, lr, asl r6	@, tmp204, unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp182,
	uxtb	r2, r7	@ unOTPTZLock__bitsunOTPTZLock_I____bits_I.4777, tmp204
	b	.L918	@
.L933:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L934	@,
	movw	r3, #3539	@,
	movw	ip, #:lower16:.LC0	@ tmp166,
	movt	ip, #:upper16:.LC0	@ tmp166,
	str	ip, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L905	@
.L935:
	.align	2
.L934:
	.word	.LANCHOR0+2248
	.fnend
	.size	DRV_CA_OTP_V200_LockOTPTzData, .-DRV_CA_OTP_V200_LockOTPTzData
	.align	2
	.global	DRV_CA_OTP_V200_GetOTPTzData
	.type	DRV_CA_OTP_V200_GetOTPTzData, %function
DRV_CA_OTP_V200_GetOTPTzData:
	.fnstart
.LFB866:
	@ args = 0, pretend = 0, frame = 0
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
	ldr	r8, [r0, #0]	@ u32Addr, <variable>.u32Addr
	mov	r6, r0	@ pstInputParam, pstInputParam
	ldr	r9, [r0, #4]	@ u32Len, <variable>.u32Len
	cmp	r8, #255	@ u32Addr,
	bls	.L937	@,
	add	r3, r9, r8	@ tmp141, u32Len, u32Addr
	cmp	r3, #376	@ tmp141,
	bhi	.L937	@,
	cmp	r9, #0	@ u32Len,
	beq	.L939	@,
	movw	sl, #:lower16:g_pOTPExportFunctionList	@ tmp154,
	movt	sl, #:upper16:g_pOTPExportFunctionList	@ tmp154,
	mov	r0, r8	@, u32Addr
	mov	r4, #1	@ i,
	ldr	r2, [sl, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	sub	r7, r9, #1	@ tmp155, u32Len,
	and	r7, r7, #1	@ tmp157, tmp155,
	add	r5, r6, #1	@ ivtmp.4824, pstInputParam,
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r9, r4	@ u32Len,
	strb	r0, [r6, #8]	@, <variable>.u8Buf
	bls	.L939	@,
	cmp	r7, #0	@ tmp157,
	beq	.L941	@,
	ldr	r3, [sl, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r8, #1	@, u32Addr,
	mov	r4, #2	@ i,
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r9, r4	@ u32Len, i
	strb	r0, [r5, #8]	@, <variable>.u8Buf
	add	r5, r5, #1	@ ivtmp.4824, ivtmp.4824,
	bls	.L939	@,
.L941:
	ldr	lr, [sl, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r4, r8	@, i, u32Addr
	add	r7, r4, #1	@ tmp159, i,
	add	r6, r5, #1	@ tmp158, ivtmp.4824,
	add	r4, r7, #1	@ i, tmp159,
	ldr	r1, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r5, #8]	@, <variable>.u8Buf
	add	r0, r7, r8	@, tmp159, u32Addr
	ldr	ip, [sl, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r5, r6, #1	@ ivtmp.4824, tmp158,
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r9, r4	@ u32Len, i
	strb	r0, [r6, #8]	@, <variable>.u8Buf
	bhi	.L941	@,
.L939:
	mov	r0, #0	@ D.22083,
.L940:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L937:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L949	@,
	movw	r3, #3501	@,
	movw	ip, #:lower16:.LC7	@ tmp146,
	movt	ip, #:upper16:.LC7	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.22083,
	b	.L940	@
.L950:
	.align	2
.L949:
	.word	.LANCHOR0+2280
	.fnend
	.size	DRV_CA_OTP_V200_GetOTPTzData, .-DRV_CA_OTP_V200_GetOTPTzData
	.align	2
	.global	DRV_CA_OTP_V200_SetSPDeactive
	.type	DRV_CA_OTP_V200_SetSPDeactive, %function
DRV_CA_OTP_V200_SetSPDeactive:
	.fnstart
.LFB842:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #64	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L952	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L954	@,
	movw	r3, #2242	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L952:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L955:
	.align	2
.L954:
	.word	.LANCHOR0+2312
	.fnend
	.size	DRV_CA_OTP_V200_SetSPDeactive, .-DRV_CA_OTP_V200_SetSPDeactive
	.align	2
	.global	DRV_CA_OTP_V200_SetR2RDeactive
	.type	DRV_CA_OTP_V200_SetR2RDeactive, %function
DRV_CA_OTP_V200_SetR2RDeactive:
	.fnstart
.LFB840:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #32	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L957	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L959	@,
	movw	r3, #2210	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L957:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L960:
	.align	2
.L959:
	.word	.LANCHOR0+2344
	.fnend
	.size	DRV_CA_OTP_V200_SetR2RDeactive, .-DRV_CA_OTP_V200_SetR2RDeactive
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA2Deactive
	.type	DRV_CA_OTP_V200_SetCSA2Deactive, %function
DRV_CA_OTP_V200_SetCSA2Deactive:
	.fnstart
.LFB838:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #8	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L962	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L964	@,
	movw	r3, #2177	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L962:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L965:
	.align	2
.L964:
	.word	.LANCHOR0+2376
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA2Deactive, .-DRV_CA_OTP_V200_SetCSA2Deactive
	.align	2
	.global	DRV_CA_OTP_V200_GetTZEnStatus
	.type	DRV_CA_OTP_V200_GetTZEnStatus, %function
DRV_CA_OTP_V200_GetTZEnStatus:
	.fnstart
.LFB837:
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
	subs	r4, r0, #0	@ pbEn, pbEn
	beq	.L971	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp142,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp142,
	mov	r0, #4	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #6	@ tmp147,,
	cmp	r0, #6	@ tmp147,
	moveq	r0, #0	@ D.21095,
	moveq	r3, #1	@ tmp148,
	movne	r0, #0	@ tmp149,
	streq	r3, [r4, #0]	@ tmp148,* pbEn
	strne	r0, [r4, #0]	@ tmp149,* pbEn
.L968:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L971:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L972	@,
	movw	r3, #2149	@,
	movw	ip, #:lower16:.LC8	@ tmp140,
	movt	ip, #:upper16:.LC8	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21095,
	b	.L968	@
.L973:
	.align	2
.L972:
	.word	.LANCHOR0+2408
	.fnend
	.size	DRV_CA_OTP_V200_GetTZEnStatus, .-DRV_CA_OTP_V200_GetTZEnStatus
	.align	2
	.global	DRV_CA_OTP_V200_SetTZEnable
	.type	DRV_CA_OTP_V200_SetTZEnable, %function
DRV_CA_OTP_V200_SetTZEnable:
	.fnstart
.LFB836:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp170,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp170,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	uxtb	r3, r0	@ tmp171, D.21071
	str	r0, [fp, #-28]	@ D.21071, PV_1.u32
	and	r2, r3, #6	@ tmp142, tmp171,
	cmp	r2, #6	@ tmp142,
	beq	.L981	@,
	tst	r3, #2	@ tmp171,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orreq	r3, r3, #2	@ tmp152, tmp171,
	streqb	r3, [fp, #-28]	@ tmp152,
	tst	r3, #4	@ tmp171,
	mov	r0, #4	@,
	orreq	r3, r3, #4	@ tmp159, tmp171,
	streqb	r3, [fp, #-28]	@ tmp159,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	cmp	r0, #0	@ ret
	bne	.L982	@,
.L976:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L981:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L983	@,
	movw	r3, #2119	@,
	movw	ip, #:lower16:.LC9	@ tmp146,
	movt	ip, #:upper16:.LC9	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	mov	r0, #0	@ D.21076,
	b	.L976	@
.L982:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L983	@,
	movw	r3, #2136	@,
	movw	ip, #:lower16:.LC0	@ tmp168,
	movt	ip, #:upper16:.LC0	@ tmp168,
	str	ip, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21076,
	b	.L976	@
.L984:
	.align	2
.L983:
	.word	.LANCHOR0+2440
	.fnend
	.size	DRV_CA_OTP_V200_SetTZEnable, .-DRV_CA_OTP_V200_SetTZEnable
	.align	2
	.global	DRV_CA_OTP_V200_SetSecureChipFlag
	.type	DRV_CA_OTP_V200_SetSecureChipFlag, %function
DRV_CA_OTP_V200_SetSecureChipFlag:
	.fnstart
.LFB834:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Flag,
	mov	r5, r0	@ u32Flag, u32Flag
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L992	@,
.L987:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L992:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #12	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ands	r2, r0, #1	@ tmp145, D.21029,
	str	r0, [fp, #-44]	@ D.21029, PVLOCK_1.u32
	bne	.L993	@,
	cmp	r5, #1	@ u32Flag,
	beq	.L994	@,
.L990:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r4, #0	@ tmp166,
	mov	r0, #1	@ tmp169,
	str	r4, [fp, #-44]	@ tmp166, PVLOCK_1.u32
	strb	r0, [fp, #-44]	@ tmp169,
	mov	r0, #12	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-44]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L987	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L995	@,
	movw	r3, #2087	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L987	@
.L993:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	and	r0, r0, #1	@ tmp152,,
	cmp	r0, r5	@ tmp152, u32Flag
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L987	@
.L994:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@ tmp156,
	str	r2, [fp, #-36]	@ tmp145, PV_1.u32
	mov	r0, #4	@,
	strb	r1, [fp, #-36]	@ tmp156,
	ldr	r1, [fp, #-36]	@, PV_1.u32
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L990	@,
	mov	r0, r5	@, u32Flag
	mov	r1, #97	@,
	ldr	r2, .L995	@,
	movw	r3, #2076	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L987	@
.L996:
	.align	2
.L995:
	.word	.LANCHOR0+2468
	.fnend
	.size	DRV_CA_OTP_V200_SetSecureChipFlag, .-DRV_CA_OTP_V200_SetSecureChipFlag
	.align	2
	.global	DRV_CA_OTP_V200_SetSecureChipP
	.type	DRV_CA_OTP_V200_SetSecureChipP, %function
DRV_CA_OTP_V200_SetSecureChipP:
	.fnstart
.LFB832:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #16	@,
	mov	r1, #2048	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L998	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1000	@,
	movw	r3, #2018	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L998:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1001:
	.align	2
.L1000:
	.word	.LANCHOR0+2504
	.fnend
	.size	DRV_CA_OTP_V200_SetSecureChipP, .-DRV_CA_OTP_V200_SetSecureChipP
	.align	2
	.global	DRV_CA_OTP_V200_SetSecureChipId
	.type	DRV_CA_OTP_V200_SetSecureChipId, %function
DRV_CA_OTP_V200_SetSecureChipId:
	.fnstart
.LFB830:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r4, r0	@ secureChipId, secureChipId
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2048	@,
	beq	.L1003	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #172	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp166,
	movt	r2, #:upper16:-2142371830	@ tmp166,
	cmp	r0, r4	@, secureChipId
	movne	r4, r2	@ ret, tmp166
	moveq	r4, #0	@ ret,
.L1005:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1003:
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@, secureChipId
	mov	r0, #172	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1008	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #2048	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1005	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1009	@,
	movw	r3, #1911	@,
	movw	ip, #:lower16:.LC0	@ tmp163,
	movt	ip, #:upper16:.LC0	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L1005	@
.L1008:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1009	@,
	movw	r3, #1901	@,
	movw	ip, #:lower16:.LC0	@ tmp155,
	movt	ip, #:upper16:.LC0	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1005	@
.L1010:
	.align	2
.L1009:
	.word	.LANCHOR0+2536
	.fnend
	.size	DRV_CA_OTP_V200_SetSecureChipId, .-DRV_CA_OTP_V200_SetSecureChipId
	.align	2
	.global	DRV_CA_OTP_V200_SetSPLadderLevel
	.type	DRV_CA_OTP_V200_SetSPLadderLevel, %function
DRV_CA_OTP_V200_SetSPLadderLevel:
	.fnstart
.LFB828:
	@ args = 0, pretend = 0, frame = 0
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
	sub	r6, r0, #1	@ D.20895, level,
	cmp	r6, #1	@ D.20895,
	mov	r4, r0	@ level, level
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1018	@,
.L1013:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1018:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp170,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp170,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	bic	r0, r0, #127	@ tmp146,,
	uxtb	r0, r0	@ tmp147, tmp146
	cmp	r0, #0	@ tmp147,
	bne	.L1019	@,
	cmp	r4, #2	@ level,
	beq	.L1020	@,
.L1016:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #128	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1013	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1021	@,
	movw	r3, #1846	@,
	movw	ip, #:lower16:.LC0	@ tmp168,
	movt	ip, #:upper16:.LC0	@ tmp168,
	str	ip, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	b	.L1013	@
.L1019:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp172,
	movt	r2, #:upper16:-2142371830	@ tmp172,
	ubfx	ip, r0, #7, #1	@ tmp152,,,
	cmp	r6, ip	@ D.20895, tmp152
	movne	r4, r2	@ ret, tmp172
	moveq	r4, #0	@ ret,
	b	.L1013	@
.L1020:
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #128	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1016	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1021	@,
	movw	r3, #1831	@,
	movw	ip, #:lower16:.LC0	@ tmp160,
	movt	ip, #:upper16:.LC0	@ tmp160,
	str	ip, [sp, #0]	@ tmp160,
	bl	HI_LogOut	@
	b	.L1013	@
.L1022:
	.align	2
.L1021:
	.word	.LANCHOR0+2568
	.fnend
	.size	DRV_CA_OTP_V200_SetSPLadderLevel, .-DRV_CA_OTP_V200_SetSPLadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_SetR2RLadderLevel
	.type	DRV_CA_OTP_V200_SetR2RLadderLevel, %function
DRV_CA_OTP_V200_SetR2RLadderLevel:
	.fnstart
.LFB826:
	@ args = 0, pretend = 0, frame = 0
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
	sub	r6, r0, #1	@ D.20845, level,
	cmp	r6, #1	@ D.20845,
	mov	r4, r0	@ level, level
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1030	@,
.L1025:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1030:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp170,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp170,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #64	@ tmp146,,
	uxtb	r0, r0	@ tmp147, tmp146
	cmp	r0, #0	@ tmp147,
	bne	.L1031	@,
	cmp	r4, #2	@ level,
	beq	.L1032	@,
.L1028:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #64	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1025	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1033	@,
	movw	r3, #1766	@,
	movw	ip, #:lower16:.LC0	@ tmp168,
	movt	ip, #:upper16:.LC0	@ tmp168,
	str	ip, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	b	.L1025	@
.L1031:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp172,
	movt	r2, #:upper16:-2142371830	@ tmp172,
	ubfx	ip, r0, #6, #1	@ tmp152,,,
	cmp	r6, ip	@ D.20845, tmp152
	movne	r4, r2	@ ret, tmp172
	moveq	r4, #0	@ ret,
	b	.L1025	@
.L1032:
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #64	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1028	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1033	@,
	movw	r3, #1755	@,
	movw	ip, #:lower16:.LC0	@ tmp160,
	movt	ip, #:upper16:.LC0	@ tmp160,
	str	ip, [sp, #0]	@ tmp160,
	bl	HI_LogOut	@
	b	.L1025	@
.L1034:
	.align	2
.L1033:
	.word	.LANCHOR0+2604
	.fnend
	.size	DRV_CA_OTP_V200_SetR2RLadderLevel, .-DRV_CA_OTP_V200_SetR2RLadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA3LadderLevel
	.type	DRV_CA_OTP_V200_SetCSA3LadderLevel, %function
DRV_CA_OTP_V200_SetCSA3LadderLevel:
	.fnstart
.LFB824:
	@ args = 0, pretend = 0, frame = 0
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
	sub	r6, r0, #1	@ D.20795, level,
	cmp	r6, #1	@ D.20795,
	mov	r4, r0	@ level, level
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1042	@,
.L1037:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1042:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp168,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp168,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r0, r0, #8, #1	@ tmp147,,,
	cmp	r0, #0	@ tmp147,
	bne	.L1043	@,
	cmp	r4, #2	@ level,
	beq	.L1044	@,
.L1040:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #256	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1037	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1045	@,
	movw	r3, #1690	@,
	movw	ip, #:lower16:.LC0	@ tmp166,
	movt	ip, #:upper16:.LC0	@ tmp166,
	str	ip, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L1037	@
.L1043:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp170,
	movt	r2, #:upper16:-2142371830	@ tmp170,
	ubfx	r0, r0, #8, #1	@ tmp152,,,
	cmp	r6, r0	@ D.20795, tmp152
	movne	r4, r2	@ ret, tmp170
	moveq	r4, #0	@ ret,
	b	.L1037	@
.L1044:
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #256	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1040	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1045	@,
	movw	r3, #1679	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L1037	@
.L1046:
	.align	2
.L1045:
	.word	.LANCHOR0+2640
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA3LadderLevel, .-DRV_CA_OTP_V200_SetCSA3LadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA2LadderLevel
	.type	DRV_CA_OTP_V200_SetCSA2LadderLevel, %function
DRV_CA_OTP_V200_SetCSA2LadderLevel:
	.fnstart
.LFB822:
	@ args = 0, pretend = 0, frame = 0
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
	sub	r6, r0, #1	@ D.20745, level,
	cmp	r6, #1	@ D.20745,
	mov	r4, r0	@ level, level
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1054	@,
.L1049:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1054:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp170,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp170,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #32	@ tmp146,,
	uxtb	r0, r0	@ tmp147, tmp146
	cmp	r0, #0	@ tmp147,
	bne	.L1055	@,
	cmp	r4, #2	@ level,
	beq	.L1056	@,
.L1052:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #32	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1049	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1057	@,
	movw	r3, #1614	@,
	movw	ip, #:lower16:.LC0	@ tmp168,
	movt	ip, #:upper16:.LC0	@ tmp168,
	str	ip, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	b	.L1049	@
.L1055:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp172,
	movt	r2, #:upper16:-2142371830	@ tmp172,
	ubfx	ip, r0, #5, #1	@ tmp152,,,
	cmp	r6, ip	@ D.20745, tmp152
	movne	r4, r2	@ ret, tmp172
	moveq	r4, #0	@ ret,
	b	.L1049	@
.L1056:
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #32	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1052	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1057	@,
	movw	r3, #1603	@,
	movw	ip, #:lower16:.LC0	@ tmp160,
	movt	ip, #:upper16:.LC0	@ tmp160,
	str	ip, [sp, #0]	@ tmp160,
	bl	HI_LogOut	@
	b	.L1049	@
.L1058:
	.align	2
.L1057:
	.word	.LANCHOR0+2676
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA2LadderLevel, .-DRV_CA_OTP_V200_SetCSA2LadderLevel
	.align	2
	.global	DRV_CA_OTP_V200_SetBootMode
	.type	DRV_CA_OTP_V200_SetBootMode, %function
DRV_CA_OTP_V200_SetBootMode:
	.fnstart
.LFB816:
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
	cmp	r0, #3	@ type,
	mov	r4, r0	@ type, type
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1071	@,
.L1061:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1071:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp177,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp177,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #3	@ tmp146,,
	cmp	r0, #3	@ tmp146,
	beq	.L1072	@,
	cmp	r4, #2	@ type,
	beq	.L1067	@,
	cmp	r4, #3	@ type,
	beq	.L1067	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	cmp	r4, #1	@ type,
	mov	r0, #0	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp161,
	moveq	r1, r4	@, prephitmp.5153, type
	movne	r1, #0	@, prephitmp.5153,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp161,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1073	@,
.L1069:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #3	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1061	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1074	@,
	movw	r3, #1179	@,
	movw	ip, #:lower16:.LC0	@ tmp175,
	movt	ip, #:upper16:.LC0	@ tmp175,
	str	ip, [sp, #0]	@ tmp175,
	bl	HI_LogOut	@
	b	.L1061	@
.L1067:
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@ prephitmp.5153, type
	mov	r0, #0	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp161,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp161,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1069	@,
.L1073:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1074	@,
	movw	r3, #1167	@,
	movw	ip, #:lower16:.LC0	@ tmp166,
	movt	ip, #:upper16:.LC0	@ tmp166,
	str	ip, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L1061	@
.L1072:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp179,
	movt	r2, #:upper16:-2142371830	@ tmp179,
	and	ip, r0, #3	@ tmp155,,
	cmp	ip, r4	@ tmp155, type
	movne	r4, r2	@ ret, tmp179
	moveq	r4, #0	@ ret,
	b	.L1061	@
.L1075:
	.align	2
.L1074:
	.word	.LANCHOR0+2712
	.fnend
	.size	DRV_CA_OTP_V200_SetBootMode, .-DRV_CA_OTP_V200_SetBootMode
	.align	2
	.global	DRV_CA_OTP_V200_DisableJtagWrite
	.type	DRV_CA_OTP_V200_DisableJtagWrite, %function
DRV_CA_OTP_V200_DisableJtagWrite:
	.fnstart
.LFB814:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	mov	r1, #256	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1077	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1079	@,
	movw	r3, #1097	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1077:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1080:
	.align	2
.L1079:
	.word	.LANCHOR0+2740
	.fnend
	.size	DRV_CA_OTP_V200_DisableJtagWrite, .-DRV_CA_OTP_V200_DisableJtagWrite
	.align	2
	.global	DRV_CA_OTP_V200_DisableSelfBoot
	.type	DRV_CA_OTP_V200_DisableSelfBoot, %function
DRV_CA_OTP_V200_DisableSelfBoot:
	.fnstart
.LFB812:
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
	cmp	r0, #1	@ u32SelfBoot,
	mov	r4, r0	@ u32SelfBoot, u32SelfBoot
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1092	@,
.L1083:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1092:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp142,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp142,
	mov	r0, #8	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	and	r0, r0, #8	@ tmp146,,
	uxtb	r0, r0	@ tmp147, tmp146
	cmp	r0, #0	@ tmp147,
	bne	.L1093	@,
	cmp	r4, #0	@ u32SelfBoot,
	beq	.L1083	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #8	@,
	ldr	r4, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1094	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, r0	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1095	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	mov	r1, #255	@,
	ldr	r4, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1096	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	ldr	r1, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	cmp	r0, #255	@,
	beq	.L1083	@,
	ldr	r2, .L1097	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #1050	@,
.L1091:
	movw	lr, #:lower16:.LC10	@ tmp184,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC10	@ tmp184,
	str	lr, [sp, #0]	@ tmp184,
	bl	HI_LogOut	@
	b	.L1083	@
.L1093:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp187,
	movt	r2, #:upper16:-2142371830	@ tmp187,
	ubfx	ip, r0, #3, #1	@ tmp152,,,
	cmp	ip, r4	@ tmp152, u32SelfBoot
	movne	r4, r2	@ ret, tmp187
	moveq	r4, #0	@ ret,
	b	.L1083	@
.L1094:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1097	@,
	movw	r3, #1025	@,
	movw	ip, #:lower16:.LC0	@ tmp160,
	movt	ip, #:upper16:.LC0	@ tmp160,
	str	ip, [sp, #0]	@ tmp160,
	bl	HI_LogOut	@
	b	.L1083	@
.L1095:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1097	@,
	movw	r3, #1035	@,
	movw	ip, #:lower16:.LC0	@ tmp168,
	movt	ip, #:upper16:.LC0	@ tmp168,
	str	ip, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	b	.L1083	@
.L1096:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1097	@,
	movw	r3, #1043	@,
	b	.L1091	@
.L1098:
	.align	2
.L1097:
	.word	.LANCHOR0+2776
	.fnend
	.size	DRV_CA_OTP_V200_DisableSelfBoot, .-DRV_CA_OTP_V200_DisableSelfBoot
	.align	2
	.global	DRV_CA_OTP_V200_DisableRuntimeCheck
	.type	DRV_CA_OTP_V200_DisableRuntimeCheck, %function
DRV_CA_OTP_V200_DisableRuntimeCheck:
	.fnstart
.LFB811:
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
	movw	r0, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r0, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r1, #0	@ tmp135,
	mov	r2, #16	@ tmp138,
	str	r1, [fp, #-28]	@ tmp135, PV_1.u32
	ldr	r4, [r0, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	strb	r2, [fp, #-26]	@ tmp138,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1100	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1102	@,
	movw	r3, #982	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L1100:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1103:
	.align	2
.L1102:
	.word	.LANCHOR0+2808
	.fnend
	.size	DRV_CA_OTP_V200_DisableRuntimeCheck, .-DRV_CA_OTP_V200_DisableRuntimeCheck
	.align	2
	.global	DRV_CA_OTP_V200_DisableLinkProtect
	.type	DRV_CA_OTP_V200_DisableLinkProtect, %function
DRV_CA_OTP_V200_DisableLinkProtect:
	.fnstart
.LFB810:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #512	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1105	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1107	@,
	mov	r3, #964	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1105:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1108:
	.align	2
.L1107:
	.word	.LANCHOR0+2844
	.fnend
	.size	DRV_CA_OTP_V200_DisableLinkProtect, .-DRV_CA_OTP_V200_DisableLinkProtect
	.align	2
	.global	DRV_CA_OTP_V200_DisableNV
	.type	DRV_CA_OTP_V200_DisableNV, %function
DRV_CA_OTP_V200_DisableNV:
	.fnstart
.LFB809:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #524288	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1110	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1112	@,
	movw	r3, #946	@,
	movw	ip, #:lower16:.LC0	@ tmp142,
	movt	ip, #:upper16:.LC0	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
.L1110:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1113:
	.align	2
.L1112:
	.word	.LANCHOR0+2880
	.fnend
	.size	DRV_CA_OTP_V200_DisableNV, .-DRV_CA_OTP_V200_DisableNV
	.align	2
	.global	DRV_CA_OTP_V200_SetDDRScrambleEn
	.type	DRV_CA_OTP_V200_SetDDRScrambleEn, %function
DRV_CA_OTP_V200_SetDDRScrambleEn:
	.fnstart
.LFB806:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Mode,
	mov	r5, r0	@ u32Mode, u32Mode
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1121	@,
.L1116:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1121:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp169,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp169,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp143,,
	and	r0, r1, #64	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L1122	@,
	cmp	r5, #1	@ u32Mode,
	beq	.L1123	@,
.L1119:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #1073741824	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1116	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1124	@,
	movw	r3, #902	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1116	@
.L1122:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp171,
	movt	ip, #:upper16:-2142371830	@ tmp171,
	ubfx	r0, r0, #30, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Mode
	movne	r4, ip	@ ret, tmp171
	moveq	r4, #0	@ ret,
	b	.L1116	@
.L1123:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1073741824	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1119	@,
	mov	r0, r5	@, u32Mode
	mov	r1, #97	@,
	ldr	r2, .L1124	@,
	movw	r3, #891	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L1116	@
.L1125:
	.align	2
.L1124:
	.word	.LANCHOR0+2908
	.fnend
	.size	DRV_CA_OTP_V200_SetDDRScrambleEn, .-DRV_CA_OTP_V200_SetDDRScrambleEn
	.align	2
	.global	DRV_CA_OTP_V200_SetPvrDPAFilterClkEn
	.type	DRV_CA_OTP_V200_SetPvrDPAFilterClkEn, %function
DRV_CA_OTP_V200_SetPvrDPAFilterClkEn:
	.fnstart
.LFB804:
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
	cmp	r0, #1	@ bValue,
	mov	r5, r0	@ bValue, bValue
	bls	.L1127	@,
.L1132:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
.L1128:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1127:
	beq	.L1133	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp157,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp157,
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #512	@ D.20252,
	str	r0, [fp, #-28]	@ D.20252, PV_1.u32
	bne	.L1134	@,
.L1130:
	mov	r4, #0	@ ret,
	b	.L1128	@
.L1133:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp142, D.20241,,
	str	r0, [fp, #-28]	@ D.20241, PV_1.u32
	tst	r2, #2	@ tmp142,
	bne	.L1130	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orr	r0, r2, #2	@ tmp147, tmp142,
	strb	r0, [fp, #-27]	@ tmp147,
	mov	r0, #4	@,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1128	@,
	mov	r0, r5	@, bValue
	mov	r1, #97	@,
	ldr	r2, .L1135	@,
	movw	r3, #809	@,
	movw	lr, #:lower16:.LC0	@ tmp155,
	movt	lr, #:upper16:.LC0	@ tmp155,
	str	lr, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1128	@
.L1134:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1135	@,
	movw	r3, #825	@,
	movw	ip, #:lower16:.LC1	@ tmp165,
	movt	ip, #:upper16:.LC1	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L1132	@
.L1136:
	.align	2
.L1135:
	.word	.LANCHOR0+2944
	.fnend
	.size	DRV_CA_OTP_V200_SetPvrDPAFilterClkEn, .-DRV_CA_OTP_V200_SetPvrDPAFilterClkEn
	.align	2
	.global	DRV_CA_OTP_V200_SetMcDPAClkSelEn
	.type	DRV_CA_OTP_V200_SetMcDPAClkSelEn, %function
DRV_CA_OTP_V200_SetMcDPAClkSelEn:
	.fnstart
.LFB802:
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
	cmp	r0, #1	@ bValue,
	mov	r5, r0	@ bValue, bValue
	bls	.L1138	@,
.L1143:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
.L1139:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1138:
	beq	.L1144	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp158,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp158,
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #256	@ D.20210,
	str	r0, [fp, #-28]	@ D.20210, PV_1.u32
	bne	.L1145	@,
.L1141:
	mov	r4, #0	@ ret,
	b	.L1139	@
.L1144:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp142, D.20199,,
	str	r0, [fp, #-28]	@ D.20199, PV_1.u32
	tst	r2, #1	@ tmp142,
	bne	.L1141	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orr	r0, r2, #1	@ tmp147, tmp142,
	strb	r0, [fp, #-27]	@ tmp147,
	mov	r0, #4	@,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1139	@,
	mov	r0, r5	@, bValue
	mov	r1, #97	@,
	ldr	r2, .L1146	@,
	mov	r3, #736	@,
	movw	lr, #:lower16:.LC0	@ tmp156,
	movt	lr, #:upper16:.LC0	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1139	@
.L1145:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1146	@,
	mov	r3, #752	@,
	movw	ip, #:lower16:.LC1	@ tmp167,
	movt	ip, #:upper16:.LC1	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1143	@
.L1147:
	.align	2
.L1146:
	.word	.LANCHOR0+2984
	.fnend
	.size	DRV_CA_OTP_V200_SetMcDPAClkSelEn, .-DRV_CA_OTP_V200_SetMcDPAClkSelEn
	.align	2
	.global	DRV_CA_OTP_V200_SetKlDPAFilterClkEn
	.type	DRV_CA_OTP_V200_SetKlDPAFilterClkEn, %function
DRV_CA_OTP_V200_SetKlDPAFilterClkEn:
	.fnstart
.LFB800:
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
	cmp	r0, #1	@ bValue,
	mov	r5, r0	@ bValue, bValue
	bls	.L1149	@,
.L1154:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
.L1150:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1149:
	beq	.L1155	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp158,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp158,
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #128	@ D.20168,
	str	r0, [fp, #-28]	@ D.20168, PV_1.u32
	bne	.L1156	@,
.L1152:
	mov	r4, #0	@ ret,
	b	.L1150	@
.L1155:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	uxtb	r2, r0	@ tmp142, D.20157
	str	r0, [fp, #-28]	@ D.20157, PV_1.u32
	movs	r3, r2, lsr #7	@, tmp142,
	bne	.L1152	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orr	r0, r2, #128	@ tmp147, tmp142,
	strb	r0, [fp, #-28]	@ tmp147,
	mov	r0, #4	@,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1150	@,
	mov	r0, r5	@, bValue
	mov	r1, #97	@,
	ldr	r2, .L1157	@,
	movw	r3, #663	@,
	movw	lr, #:lower16:.LC0	@ tmp156,
	movt	lr, #:upper16:.LC0	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1150	@
.L1156:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1157	@,
	movw	r3, #679	@,
	movw	ip, #:lower16:.LC1	@ tmp167,
	movt	ip, #:upper16:.LC1	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1154	@
.L1158:
	.align	2
.L1157:
	.word	.LANCHOR0+3020
	.fnend
	.size	DRV_CA_OTP_V200_SetKlDPAFilterClkEn, .-DRV_CA_OTP_V200_SetKlDPAFilterClkEn
	.align	2
	.global	DRV_CA_OTP_V200_GetKlDPAClkSelEn
	.type	DRV_CA_OTP_V200_GetKlDPAClkSelEn, %function
DRV_CA_OTP_V200_GetKlDPAClkSelEn:
	.fnstart
.LFB799:
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
	subs	r4, r0, #0	@ pbValue, pbValue
	beq	.L1164	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #4	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	and	r1, r0, #64	@ tmp146,,
	uxtb	r3, r1	@ tmp147, tmp146
	cmp	r3, #0	@ tmp147,
	streq	r3, [r4, #0]	@ tmp147,* pbValue
	movne	r0, #0	@ D.20135,
	moveq	r0, r3	@ D.20135, tmp147
	movne	r3, #1	@ tmp148,
	strne	r3, [r4, #0]	@ tmp148,* pbValue
.L1161:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1164:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1165	@,
	mov	r3, #620	@,
	movw	ip, #:lower16:.LC11	@ tmp139,
	movt	ip, #:upper16:.LC11	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20135,
	movt	r0, #:upper16:-2142371835	@ D.20135,
	b	.L1161	@
.L1166:
	.align	2
.L1165:
	.word	.LANCHOR0+3056
	.fnend
	.size	DRV_CA_OTP_V200_GetKlDPAClkSelEn, .-DRV_CA_OTP_V200_GetKlDPAClkSelEn
	.align	2
	.global	DRV_CA_OTP_V200_SetKlDPAClkSelEn
	.type	DRV_CA_OTP_V200_SetKlDPAClkSelEn, %function
DRV_CA_OTP_V200_SetKlDPAClkSelEn:
	.fnstart
.LFB798:
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
	cmp	r0, #1	@ bValue,
	mov	r5, r0	@ bValue, bValue
	bls	.L1168	@,
.L1173:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
.L1169:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1168:
	beq	.L1174	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp158,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp158,
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r4	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #64	@ D.20125,
	str	r0, [fp, #-28]	@ D.20125, PV_1.u32
	bne	.L1175	@,
.L1171:
	mov	r4, #0	@ ret,
	b	.L1169	@
.L1174:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #4	@,
	ldr	r1, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	uxtb	r2, r0	@ tmp142, D.20114
	str	r0, [fp, #-28]	@ D.20114, PV_1.u32
	tst	r2, #64	@ tmp142,
	bne	.L1171	@,
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	orr	r0, r2, #64	@ tmp147, tmp142,
	strb	r0, [fp, #-28]	@ tmp147,
	mov	r0, #4	@,
	ldr	r1, [fp, #-28]	@, PV_1.u32
	ldr	r2, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1169	@,
	mov	r0, r5	@, bValue
	mov	r1, #97	@,
	ldr	r2, .L1176	@,
	movw	r3, #590	@,
	movw	lr, #:lower16:.LC0	@ tmp156,
	movt	lr, #:upper16:.LC0	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1169	@
.L1175:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1176	@,
	movw	r3, #606	@,
	movw	ip, #:lower16:.LC1	@ tmp167,
	movt	ip, #:upper16:.LC1	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1173	@
.L1177:
	.align	2
.L1176:
	.word	.LANCHOR0+3092
	.fnend
	.size	DRV_CA_OTP_V200_SetKlDPAClkSelEn, .-DRV_CA_OTP_V200_SetKlDPAClkSelEn
	.align	2
	.global	DRV_CA_OTP_V200_SetBootDecMode
	.type	DRV_CA_OTP_V200_SetBootDecMode, %function
DRV_CA_OTP_V200_SetBootDecMode:
	.fnstart
.LFB797:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ u32Mode,
	mov	r5, r0	@ u32Mode, u32Mode
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1185	@,
.L1180:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1185:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp169,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp169,
	mov	r0, #8	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp143,,
	and	r0, r1, #32	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	bne	.L1186	@,
	cmp	r5, #1	@ u32Mode,
	beq	.L1187	@,
.L1183:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #536870912	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1180	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1188	@,
	movw	r3, #558	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1180	@
.L1186:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp171,
	movt	ip, #:upper16:-2142371830	@ tmp171,
	ubfx	r0, r0, #29, #1	@ tmp151,,,
	cmp	r0, r5	@ tmp151, u32Mode
	movne	r4, ip	@ ret, tmp171
	moveq	r4, #0	@ ret,
	b	.L1180	@
.L1187:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #536870912	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1183	@,
	mov	r0, r5	@, u32Mode
	mov	r1, #97	@,
	ldr	r2, .L1188	@,
	movw	r3, #547	@,
	movw	ip, #:lower16:.LC0	@ tmp159,
	movt	ip, #:upper16:.LC0	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	b	.L1180	@
.L1189:
	.align	2
.L1188:
	.word	.LANCHOR0+3128
	.fnend
	.size	DRV_CA_OTP_V200_SetBootDecMode, .-DRV_CA_OTP_V200_SetBootDecMode
	.align	2
	.global	DRV_CA_OTP_V200_LockBootDecEn
	.type	DRV_CA_OTP_V200_LockBootDecEn, %function
DRV_CA_OTP_V200_LockBootDecEn:
	.fnstart
.LFB796:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #4	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1191	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1193	@,
	movw	r3, #505	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1191:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1194:
	.align	2
.L1193:
	.word	.LANCHOR0+3160
	.fnend
	.size	DRV_CA_OTP_V200_LockBootDecEn, .-DRV_CA_OTP_V200_LockBootDecEn
	.align	2
	.global	DRV_CA_OTP_V200_LockHardNVSel
	.type	DRV_CA_OTP_V200_LockHardNVSel, %function
DRV_CA_OTP_V200_LockHardNVSel:
	.fnstart
.LFB793:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #8192	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1196	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1198	@,
	movw	r3, #423	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1196:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1199:
	.align	2
.L1198:
	.word	.LANCHOR0+3192
	.fnend
	.size	DRV_CA_OTP_V200_LockHardNVSel, .-DRV_CA_OTP_V200_LockHardNVSel
	.align	2
	.global	DRV_CA_OTP_V200_LockHardSPESel
	.type	DRV_CA_OTP_V200_LockHardSPESel, %function
DRV_CA_OTP_V200_LockHardSPESel:
	.fnstart
.LFB792:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #2048	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1201	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1203	@,
	movw	r3, #406	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1201:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1204:
	.align	2
.L1203:
	.word	.LANCHOR0+3224
	.fnend
	.size	DRV_CA_OTP_V200_LockHardSPESel, .-DRV_CA_OTP_V200_LockHardSPESel
	.align	2
	.global	DRV_CA_OTP_V200_LockHardCwSel
	.type	DRV_CA_OTP_V200_LockHardCwSel, %function
DRV_CA_OTP_V200_LockHardCwSel:
	.fnstart
.LFB791:
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
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #0	@,
	mov	r1, #1024	@,
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1206	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1208	@,
	movw	r3, #389	@,
	movw	ip, #:lower16:.LC0	@ tmp143,
	movt	ip, #:upper16:.LC0	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
.L1206:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1209:
	.align	2
.L1208:
	.word	.LANCHOR0+3256
	.fnend
	.size	DRV_CA_OTP_V200_LockHardCwSel, .-DRV_CA_OTP_V200_LockHardCwSel
	.align	2
	.global	DRV_CA_OTP_V200_Set_UniqueVersionId
	.type	DRV_CA_OTP_V200_Set_UniqueVersionId, %function
DRV_CA_OTP_V200_Set_UniqueVersionId:
	.fnstart
.LFB789:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r6, r0	@ pu8Id, pu8Id
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #512	@,
	movwne	r4, #:lower16:-2142371830	@ ret,
	movtne	r4, #:upper16:-2142371830	@ ret,
	bne	.L1212	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #164	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@,* pu8Id
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1213	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #165	@,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1213	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #166	@,
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1213	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #167	@,
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1213	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #512	@,
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1216	@,
.L1212:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1216:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1217	@,
	movw	r3, #353	@,
	movw	ip, #:lower16:.LC0	@ tmp172,
	movt	ip, #:upper16:.LC0	@ tmp172,
	str	ip, [sp, #0]	@ tmp172,
	bl	HI_LogOut	@
	b	.L1212	@
.L1213:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1217	@,
	movw	r3, #342	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L1212	@
.L1218:
	.align	2
.L1217:
	.word	.LANCHOR0+3288
	.fnend
	.size	DRV_CA_OTP_V200_Set_UniqueVersionId, .-DRV_CA_OTP_V200_Set_UniqueVersionId
	.align	2
	.global	DRV_CA_OTP_V200_Set_UniqueSTBSN
	.type	DRV_CA_OTP_V200_Set_UniqueSTBSN, %function
DRV_CA_OTP_V200_Set_UniqueSTBSN:
	.fnstart
.LFB786:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r6, r0	@ pu8SN, pu8SN
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #16	@,
	movwne	r4, #:lower16:-2142371830	@ ret,
	movtne	r4, #:upper16:-2142371830	@ ret,
	bne	.L1221	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #144	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@,* pu8SN
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1222	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #145	@,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1222	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #146	@,
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1222	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #147	@,
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1222	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, r0	@,
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1225	@,
.L1221:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1225:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1226	@,
	mov	r3, #284	@,
	movw	ip, #:lower16:.LC0	@ tmp172,
	movt	ip, #:upper16:.LC0	@ tmp172,
	str	ip, [sp, #0]	@ tmp172,
	bl	HI_LogOut	@
	b	.L1221	@
.L1222:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1226	@,
	movw	r3, #273	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L1221	@
.L1227:
	.align	2
.L1226:
	.word	.LANCHOR0+3324
	.fnend
	.size	DRV_CA_OTP_V200_Set_UniqueSTBSN, .-DRV_CA_OTP_V200_Set_UniqueSTBSN
	.align	2
	.global	DRV_CA_OTP_V200_Set_STBSN
	.type	DRV_CA_OTP_V200_Set_STBSN, %function
DRV_CA_OTP_V200_Set_STBSN:
	.fnstart
.LFB785:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r4, r0	@ u32SN, u32SN
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #16	@,
	beq	.L1229	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #144	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp166,
	movt	r2, #:upper16:-2142371830	@ tmp166,
	cmp	r0, r4	@, u32SN
	movne	r4, r2	@ ret, tmp166
	moveq	r4, #0	@ ret,
.L1231:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1229:
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@, u32SN
	mov	r0, #144	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1234	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, r0	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1231	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1235	@,
	mov	r3, #247	@,
	movw	ip, #:lower16:.LC0	@ tmp163,
	movt	ip, #:upper16:.LC0	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L1231	@
.L1234:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1235	@,
	mov	r3, #237	@,
	movw	ip, #:lower16:.LC0	@ tmp155,
	movt	ip, #:upper16:.LC0	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1231	@
.L1236:
	.align	2
.L1235:
	.word	.LANCHOR0+3356
	.fnend
	.size	DRV_CA_OTP_V200_Set_STBSN, .-DRV_CA_OTP_V200_Set_STBSN
	.align	2
	.global	DRV_CA_OTP_V200_Set_UniqueMarketId
	.type	DRV_CA_OTP_V200_Set_UniqueMarketId, %function
DRV_CA_OTP_V200_Set_UniqueMarketId:
	.fnstart
.LFB782:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r6, r0	@ pu8Id, pu8Id
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #256	@,
	movwne	r4, #:lower16:-2142371830	@ ret,
	movtne	r4, #:upper16:-2142371830	@ ret,
	bne	.L1239	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #160	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@,* pu8Id
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1240	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #161	@,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1240	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #162	@,
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1240	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #163	@,
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1240	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #256	@,
	ldr	r3, [r2, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1243	@,
.L1239:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1243:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1244	@,
	mov	r3, #172	@,
	movw	ip, #:lower16:.LC0	@ tmp172,
	movt	ip, #:upper16:.LC0	@ tmp172,
	str	ip, [sp, #0]	@ tmp172,
	bl	HI_LogOut	@
	b	.L1239	@
.L1240:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1244	@,
	mov	r3, #161	@,
	movw	lr, #:lower16:.LC0	@ tmp164,
	movt	lr, #:upper16:.LC0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	HI_LogOut	@
	b	.L1239	@
.L1245:
	.align	2
.L1244:
	.word	.LANCHOR0+3384
	.fnend
	.size	DRV_CA_OTP_V200_Set_UniqueMarketId, .-DRV_CA_OTP_V200_Set_UniqueMarketId
	.align	2
	.global	DRV_CA_OTP_V200_Set_MarketId
	.type	DRV_CA_OTP_V200_Set_MarketId, %function
DRV_CA_OTP_V200_Set_MarketId:
	.fnstart
.LFB781:
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
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r4, r0	@ u32Id, u32Id
	mov	r0, #16	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #256	@,
	beq	.L1247	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #160	@,
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp166,
	movt	r2, #:upper16:-2142371830	@ tmp166,
	cmp	r0, r4	@, u32Id
	movne	r4, r2	@ ret, tmp166
	moveq	r4, #0	@ ret,
.L1249:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1247:
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@, u32Id
	mov	r0, #160	@,
	ldr	r4, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1252	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #256	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1249	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1253	@,
	mov	r3, #135	@,
	movw	ip, #:lower16:.LC0	@ tmp163,
	movt	ip, #:upper16:.LC0	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L1249	@
.L1252:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1253	@,
	mov	r3, #125	@,
	movw	ip, #:lower16:.LC0	@ tmp155,
	movt	ip, #:upper16:.LC0	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1249	@
.L1254:
	.align	2
.L1253:
	.word	.LANCHOR0+3420
	.fnend
	.size	DRV_CA_OTP_V200_Set_MarketId, .-DRV_CA_OTP_V200_Set_MarketId
	.align	2
	.global	DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock
	.type	DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock, %function
DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock:
	.fnstart
.LFB1010:
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
	subs	r5, r0, #0	@ pu32Lock, pu32Lock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1257	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1261	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1262	@,
.L1259:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #8	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #26, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Lock
.L1257:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1262:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1259	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1263	@,
	movw	r3, #7588	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1257	@
.L1261:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1263	@,
	movw	r3, #7582	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1257	@
.L1264:
	.align	2
.L1263:
	.word	.LANCHOR0+3452
	.fnend
	.size	DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock, .-DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetMCK1DESHardonlyEn
	.type	DRV_CA_OTP_V200_GetMCK1DESHardonlyEn, %function
DRV_CA_OTP_V200_GetMCK1DESHardonlyEn:
	.fnstart
.LFB1009:
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
	subs	r5, r0, #0	@ pu32Enable, pu32Enable
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1267	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1271	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1272	@,
.L1269:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #26, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Enable
.L1267:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1272:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1269	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1273	@,
	movw	r3, #7556	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1267	@
.L1271:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1273	@,
	movw	r3, #7550	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1267	@
.L1274:
	.align	2
.L1273:
	.word	.LANCHOR0+3496
	.fnend
	.size	DRV_CA_OTP_V200_GetMCK1DESHardonlyEn, .-DRV_CA_OTP_V200_GetMCK1DESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock
	.type	DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock, %function
DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock:
	.fnstart
.LFB1008:
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
	subs	r5, r0, #0	@ pu32Lock, pu32Lock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1277	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1281	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1282	@,
.L1279:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp151,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp151,
	mov	r0, #8	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #23, #1	@ tmp154,,,
	str	r3, [r5, #0]	@ tmp154,* pu32Lock
.L1277:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1282:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1279	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1283	@,
	movw	r3, #7525	@,
	movw	r4, #:lower16:.LC13	@ tmp149,
	movt	r4, #:upper16:.LC13	@ tmp149,
	str	r4, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1277	@
.L1281:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1283	@,
	movw	r3, #7519	@,
	movw	ip, #:lower16:.LC12	@ tmp144,
	movt	ip, #:upper16:.LC12	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L1277	@
.L1284:
	.align	2
.L1283:
	.word	.LANCHOR0+3536
	.fnend
	.size	DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock, .-DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetMCTDESHardonlyEn
	.type	DRV_CA_OTP_V200_GetMCTDESHardonlyEn, %function
DRV_CA_OTP_V200_GetMCTDESHardonlyEn:
	.fnstart
.LFB1007:
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
	subs	r5, r0, #0	@ pu32Enable, pu32Enable
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1287	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1291	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1292	@,
.L1289:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #23, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Enable
.L1287:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1292:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1289	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1293	@,
	movw	r3, #7493	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1287	@
.L1291:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1293	@,
	movw	r3, #7487	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1287	@
.L1294:
	.align	2
.L1293:
	.word	.LANCHOR0+3576
	.fnend
	.size	DRV_CA_OTP_V200_GetMCTDESHardonlyEn, .-DRV_CA_OTP_V200_GetMCTDESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_GetMCAESHardonlyEnLock
	.type	DRV_CA_OTP_V200_GetMCAESHardonlyEnLock, %function
DRV_CA_OTP_V200_GetMCAESHardonlyEnLock:
	.fnstart
.LFB1006:
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
	subs	r5, r0, #0	@ pu32Lock, pu32Lock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1297	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1301	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1302	@,
.L1299:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #8	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #22, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Lock
.L1297:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1302:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1299	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1303	@,
	movw	r3, #7462	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1297	@
.L1301:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1303	@,
	movw	r3, #7456	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1297	@
.L1304:
	.align	2
.L1303:
	.word	.LANCHOR0+3612
	.fnend
	.size	DRV_CA_OTP_V200_GetMCAESHardonlyEnLock, .-DRV_CA_OTP_V200_GetMCAESHardonlyEnLock
	.align	2
	.global	DRV_CA_OTP_V200_GetMCAESHardonlyEn
	.type	DRV_CA_OTP_V200_GetMCAESHardonlyEn, %function
DRV_CA_OTP_V200_GetMCAESHardonlyEn:
	.fnstart
.LFB1005:
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
	subs	r5, r0, #0	@ pu32Enable, pu32Enable
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1307	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1311	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1312	@,
.L1309:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #22, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Enable
.L1307:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1312:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1309	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1313	@,
	movw	r3, #7430	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1307	@
.L1311:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1313	@,
	mov	r3, #7424	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1307	@
.L1314:
	.align	2
.L1313:
	.word	.LANCHOR0+3652
	.fnend
	.size	DRV_CA_OTP_V200_GetMCAESHardonlyEn, .-DRV_CA_OTP_V200_GetMCAESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetMCTDESHardonlyEn
	.type	DRV_CA_OTP_V200_SetMCTDESHardonlyEn, %function
DRV_CA_OTP_V200_SetMCTDESHardonlyEn:
	.fnstart
.LFB966:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1323	@,
.L1317:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1323:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1324	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1319	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1325	@,
.L1319:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp158,,,
	and	r3, r1, #128	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1326	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L1327	@,
.L1321:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #8388608	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1317	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1328	@,
	movw	r3, #6544	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1317	@
.L1326:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #23, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Enable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1317	@
.L1324:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1328	@,
	movw	r3, #6499	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1317	@
.L1327:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #8388608	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1321	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L1328	@,
	movw	r3, #6533	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1317	@
.L1325:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1328	@,
	movw	r3, #6505	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1317	@
.L1329:
	.align	2
.L1328:
	.word	.LANCHOR0+3688
	.fnend
	.size	DRV_CA_OTP_V200_SetMCTDESHardonlyEn, .-DRV_CA_OTP_V200_SetMCTDESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetMCAESHardonlyEn
	.type	DRV_CA_OTP_V200_SetMCAESHardonlyEn, %function
DRV_CA_OTP_V200_SetMCAESHardonlyEn:
	.fnstart
.LFB965:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1338	@,
.L1332:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1338:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1339	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1334	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1340	@,
.L1334:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp158,,,
	and	r3, r1, #64	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1341	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L1342	@,
.L1336:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #4194304	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1332	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1343	@,
	movw	r3, #6476	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1332	@
.L1341:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #22, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Enable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1332	@
.L1339:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1343	@,
	movw	r3, #6431	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1332	@
.L1342:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #4194304	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1336	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L1343	@,
	movw	r3, #6465	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1332	@
.L1340:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1343	@,
	movw	r3, #6437	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1332	@
.L1344:
	.align	2
.L1343:
	.word	.LANCHOR0+3724
	.fnend
	.size	DRV_CA_OTP_V200_SetMCAESHardonlyEn, .-DRV_CA_OTP_V200_SetMCAESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSOthersHardonlyEn
	.type	DRV_CA_OTP_V200_SetTSOthersHardonlyEn, %function
DRV_CA_OTP_V200_SetTSOthersHardonlyEn:
	.fnstart
.LFB964:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1353	@,
.L1347:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1353:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1354	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1349	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1355	@,
.L1349:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp180,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp156,,,
	and	r3, r1, #128	@ tmp158, tmp156,
	uxtb	r0, r3	@ tmp159, tmp158
	cmp	r0, #0	@ tmp159,
	bne	.L1356	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L1357	@,
.L1351:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #32768	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1347	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1358	@,
	movw	r3, #6408	@,
	movw	ip, #:lower16:.LC0	@ tmp178,
	movt	ip, #:upper16:.LC0	@ tmp178,
	str	ip, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L1347	@
.L1356:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp182,
	movt	r2, #:upper16:-2142371830	@ tmp182,
	ubfx	r0, r0, #15, #1	@ tmp164,,,
	cmp	r0, r5	@ tmp164, u32Enable
	movne	r4, r2	@ ret, tmp182
	moveq	r4, #0	@ ret,
	b	.L1347	@
.L1354:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1358	@,
	movw	r3, #6363	@,
	movw	ip, #:lower16:.LC12	@ tmp146,
	movt	ip, #:upper16:.LC12	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	b	.L1347	@
.L1357:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #32768	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1351	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L1358	@,
	movw	r3, #6397	@,
	movw	lr, #:lower16:.LC0	@ tmp171,
	movt	lr, #:upper16:.LC0	@ tmp171,
	str	lr, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L1347	@
.L1355:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1358	@,
	movw	r3, #6369	@,
	movw	r4, #:lower16:.LC13	@ tmp152,
	movt	r4, #:upper16:.LC13	@ tmp152,
	str	r4, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1347	@
.L1359:
	.align	2
.L1358:
	.word	.LANCHOR0+3760
	.fnend
	.size	DRV_CA_OTP_V200_SetTSOthersHardonlyEn, .-DRV_CA_OTP_V200_SetTSOthersHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetTSDESHardonlyEn
	.type	DRV_CA_OTP_V200_SetTSDESHardonlyEn, %function
DRV_CA_OTP_V200_SetTSDESHardonlyEn:
	.fnstart
.LFB961:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Enable,
	mov	r5, r0	@ u32Enable, u32Enable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1368	@,
.L1362:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1368:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1369	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1364	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1370	@,
.L1364:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp158,,,
	and	r3, r1, #16	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1371	@,
	cmp	r5, #1	@ u32Enable,
	beq	.L1372	@,
.L1366:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #4096	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1362	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1373	@,
	movw	r3, #6234	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1362	@
.L1371:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #12, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Enable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1362	@
.L1369:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1373	@,
	movw	r3, #6189	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1362	@
.L1372:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #4096	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1366	@,
	mov	r0, r5	@, u32Enable
	mov	r1, #97	@,
	ldr	r2, .L1373	@,
	movw	r3, #6223	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1362	@
.L1370:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1373	@,
	movw	r3, #6195	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1362	@
.L1374:
	.align	2
.L1373:
	.word	.LANCHOR0+3800
	.fnend
	.size	DRV_CA_OTP_V200_SetTSDESHardonlyEn, .-DRV_CA_OTP_V200_SetTSDESHardonlyEn
	.align	2
	.global	DRV_CA_OTP_V200_SetNfRNGDisable
	.type	DRV_CA_OTP_V200_SetNfRNGDisable, %function
DRV_CA_OTP_V200_SetNfRNGDisable:
	.fnstart
.LFB957:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1383	@,
.L1377:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1383:
	sub	r0, fp, #28	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-36]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1384	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1379	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1385	@,
.L1379:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp195,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp195,
	mov	r0, #12	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp157, D.23851,
	str	r0, [fp, #-52]	@ D.23851, PVLOCK_1.u32
	and	r3, r1, #16	@ tmp159, tmp157,
	uxtb	r2, r3	@ tmp160, tmp159
	cmp	r2, #0	@ tmp160,
	bne	.L1386	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L1387	@,
.L1381:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #0	@ tmp181,
	mov	r0, #16	@ tmp184,
	str	r1, [fp, #-52]	@ tmp181, PVLOCK_1.u32
	strb	r0, [fp, #-49]	@ tmp184,
	mov	r0, #12	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	ldr	r1, [fp, #-52]	@, PVLOCK_1.u32
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1377	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1388	@,
	movw	r3, #6007	@,
	movw	lr, #:lower16:.LC0	@ tmp193,
	movt	lr, #:upper16:.LC0	@ tmp193,
	str	lr, [sp, #0]	@ tmp193,
	bl	HI_LogOut	@
	b	.L1377	@
.L1386:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #4	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp197,
	movt	r2, #:upper16:-2142371830	@ tmp197,
	ubfx	r0, r0, #28, #1	@ tmp167,,,
	cmp	r0, r5	@ tmp167, u32Disable
	movne	r4, r2	@ ret, tmp197
	moveq	r4, #0	@ ret,
	b	.L1377	@
.L1384:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1388	@,
	movw	r3, #5962	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1377	@
.L1387:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	lr, #16	@ tmp171,
	str	r2, [fp, #-44]	@ tmp160, PV_1.u32
	mov	r0, #4	@,
	strb	lr, [fp, #-41]	@ tmp171,
	ldr	r1, [fp, #-44]	@, PV_1.u32
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1381	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L1388	@,
	movw	r3, #5996	@,
	movw	ip, #:lower16:.LC0	@ tmp180,
	movt	ip, #:upper16:.LC0	@ tmp180,
	str	ip, [sp, #0]	@ tmp180,
	bl	HI_LogOut	@
	b	.L1377	@
.L1385:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1388	@,
	movw	r3, #5968	@,
	movw	r4, #:lower16:.LC13	@ tmp152,
	movt	r4, #:upper16:.LC13	@ tmp152,
	str	r4, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1377	@
.L1389:
	.align	2
.L1388:
	.word	.LANCHOR0+3836
	.fnend
	.size	DRV_CA_OTP_V200_SetNfRNGDisable, .-DRV_CA_OTP_V200_SetNfRNGDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetTSKLOthersDisable
	.type	DRV_CA_OTP_V200_SetTSKLOthersDisable, %function
DRV_CA_OTP_V200_SetTSKLOthersDisable:
	.fnstart
.LFB954:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1398	@,
.L1392:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1398:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1399	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1394	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1400	@,
.L1394:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp158,,,
	and	r3, r1, #32	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1401	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L1402	@,
.L1396:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #2097152	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1392	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1403	@,
	movw	r3, #5833	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1392	@
.L1401:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #21, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Disable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1392	@
.L1399:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1403	@,
	movw	r3, #5788	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1392	@
.L1402:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #2097152	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1396	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L1403	@,
	movw	r3, #5822	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1392	@
.L1400:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1403	@,
	movw	r3, #5794	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1392	@
.L1404:
	.align	2
.L1403:
	.word	.LANCHOR0+3868
	.fnend
	.size	DRV_CA_OTP_V200_SetTSKLOthersDisable, .-DRV_CA_OTP_V200_SetTSKLOthersDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetDesHardDisableLock
	.type	DRV_CA_OTP_V200_GetDesHardDisableLock, %function
DRV_CA_OTP_V200_GetDesHardDisableLock:
	.fnstart
.LFB929:
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
	subs	r5, r0, #0	@ pu32Lock, pu32Lock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1407	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1411	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1412	@,
.L1409:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #8	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #26, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Lock
.L1407:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1412:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1409	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1413	@,
	movw	r3, #5199	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1407	@
.L1411:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1413	@,
	movw	r3, #5193	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1407	@
.L1414:
	.align	2
.L1413:
	.word	.LANCHOR0+3908
	.fnend
	.size	DRV_CA_OTP_V200_GetDesHardDisableLock, .-DRV_CA_OTP_V200_GetDesHardDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetDesHardDisableLock
	.type	DRV_CA_OTP_V200_SetDesHardDisableLock, %function
DRV_CA_OTP_V200_SetDesHardDisableLock:
	.fnstart
.LFB928:
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
	sub	r0, fp, #24	@,,
	sub	r1, fp, #28	@,,
	mov	r2, #12	@ tmp136,
	movw	r3, #769	@ tmp137,
	str	r2, [fp, #-24]	@ tmp136, enChipType
	str	r3, [fp, #-28]	@ tmp137, enChipVersion
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1420	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1421	@,
.L1418:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp152,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp152,
	mov	r0, #8	@,
	mov	r1, #67108864	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1422	@,
.L1417:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1421:
	ldr	r1, [fp, #-24]	@ enChipType, enChipType
	cmp	r1, #2	@ enChipType,
	bne	.L1418	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1423	@,
	movw	r3, #5162	@,
	movw	r4, #:lower16:.LC13	@ tmp149,
	movt	r4, #:upper16:.LC13	@ tmp149,
	str	r4, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1417	@
.L1422:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1423	@,
	movw	r3, #5171	@,
	movw	ip, #:lower16:.LC0	@ tmp157,
	movt	ip, #:upper16:.LC0	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	b	.L1417	@
.L1420:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1423	@,
	movw	r3, #5156	@,
	movw	ip, #:lower16:.LC12	@ tmp143,
	movt	ip, #:upper16:.LC12	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L1417	@
.L1424:
	.align	2
.L1423:
	.word	.LANCHOR0+3948
	.fnend
	.size	DRV_CA_OTP_V200_SetDesHardDisableLock, .-DRV_CA_OTP_V200_SetDesHardDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_GetDesHardDisable
	.type	DRV_CA_OTP_V200_GetDesHardDisable, %function
DRV_CA_OTP_V200_GetDesHardDisable:
	.fnstart
.LFB927:
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
	subs	r5, r0, #0	@ pu32Disable, pu32Disable
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1427	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1431	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1432	@,
.L1429:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #26, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Disable
.L1427:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1432:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1429	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1433	@,
	movw	r3, #5134	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1427	@
.L1431:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1433	@,
	movw	r3, #5128	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1427	@
.L1434:
	.align	2
.L1433:
	.word	.LANCHOR0+3988
	.fnend
	.size	DRV_CA_OTP_V200_GetDesHardDisable, .-DRV_CA_OTP_V200_GetDesHardDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetDesHardDisable
	.type	DRV_CA_OTP_V200_SetDesHardDisable, %function
DRV_CA_OTP_V200_SetDesHardDisable:
	.fnstart
.LFB926:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1443	@,
.L1437:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1443:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1444	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1439	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1445	@,
.L1439:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	mov	r1, r0, lsr #24	@ tmp158,,
	and	r3, r1, #4	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1446	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L1447	@,
.L1441:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #67108864	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1437	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1448	@,
	movw	r3, #5106	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1437	@
.L1446:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #26, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Disable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1437	@
.L1444:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1448	@,
	movw	r3, #5061	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1437	@
.L1447:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #67108864	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1441	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L1448	@,
	movw	r3, #5095	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1437	@
.L1445:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1448	@,
	movw	r3, #5067	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1437	@
.L1449:
	.align	2
.L1448:
	.word	.LANCHOR0+4024
	.fnend
	.size	DRV_CA_OTP_V200_SetDesHardDisable, .-DRV_CA_OTP_V200_SetDesHardDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetDesDisableLock
	.type	DRV_CA_OTP_V200_GetDesDisableLock, %function
DRV_CA_OTP_V200_GetDesDisableLock:
	.fnstart
.LFB925:
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
	subs	r5, r0, #0	@ pu32Lock, pu32Lock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1452	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1456	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1457	@,
.L1454:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #8	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #18, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Lock
.L1452:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1457:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1454	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1458	@,
	movw	r3, #5033	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1452	@
.L1456:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1458	@,
	movw	r3, #5027	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1452	@
.L1459:
	.align	2
.L1458:
	.word	.LANCHOR0+4060
	.fnend
	.size	DRV_CA_OTP_V200_GetDesDisableLock, .-DRV_CA_OTP_V200_GetDesDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_SetDesDisableLock
	.type	DRV_CA_OTP_V200_SetDesDisableLock, %function
DRV_CA_OTP_V200_SetDesDisableLock:
	.fnstart
.LFB924:
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
	sub	r0, fp, #24	@,,
	sub	r1, fp, #28	@,,
	mov	r2, #12	@ tmp136,
	movw	r3, #769	@ tmp137,
	str	r2, [fp, #-24]	@ tmp136, enChipType
	str	r3, [fp, #-28]	@ tmp137, enChipVersion
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1465	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1466	@,
.L1463:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp152,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp152,
	mov	r0, #8	@,
	mov	r1, #262144	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1467	@,
.L1462:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1466:
	ldr	r1, [fp, #-24]	@ enChipType, enChipType
	cmp	r1, #2	@ enChipType,
	bne	.L1463	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1468	@,
	movw	r3, #4996	@,
	movw	r4, #:lower16:.LC13	@ tmp149,
	movt	r4, #:upper16:.LC13	@ tmp149,
	str	r4, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1462	@
.L1467:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1468	@,
	movw	r3, #5005	@,
	movw	ip, #:lower16:.LC0	@ tmp157,
	movt	ip, #:upper16:.LC0	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	b	.L1462	@
.L1465:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1468	@,
	movw	r3, #4990	@,
	movw	ip, #:lower16:.LC12	@ tmp143,
	movt	ip, #:upper16:.LC12	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L1462	@
.L1469:
	.align	2
.L1468:
	.word	.LANCHOR1-4088
	.fnend
	.size	DRV_CA_OTP_V200_SetDesDisableLock, .-DRV_CA_OTP_V200_SetDesDisableLock
	.align	2
	.global	DRV_CA_OTP_V200_GetDesDisable
	.type	DRV_CA_OTP_V200_GetDesDisable, %function
DRV_CA_OTP_V200_GetDesDisable:
	.fnstart
.LFB923:
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
	subs	r5, r0, #0	@ pu32Disable, pu32Disable
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1472	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1476	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1477	@,
.L1474:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #18, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32Disable
.L1472:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1477:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1474	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1478	@,
	movw	r3, #4968	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1472	@
.L1476:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1478	@,
	movw	r3, #4962	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1472	@
.L1479:
	.align	2
.L1478:
	.word	.LANCHOR1-4052
	.fnend
	.size	DRV_CA_OTP_V200_GetDesDisable, .-DRV_CA_OTP_V200_GetDesDisable
	.align	2
	.global	DRV_CA_OTP_V200_SetDesDisable
	.type	DRV_CA_OTP_V200_SetDesDisable, %function
DRV_CA_OTP_V200_SetDesDisable:
	.fnstart
.LFB922:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32Disable,
	mov	r5, r0	@ u32Disable, u32Disable
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1488	@,
.L1482:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1488:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1489	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1484	@,
	ldr	r2, [fp, #-32]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	beq	.L1490	@,
.L1484:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #16, #8	@ tmp158,,,
	and	r3, r1, #4	@ tmp160, tmp158,
	uxtb	r0, r3	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1491	@,
	cmp	r5, #1	@ u32Disable,
	beq	.L1492	@,
.L1486:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #262144	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1482	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1493	@,
	movw	r3, #4940	@,
	movw	ip, #:lower16:.LC0	@ tmp182,
	movt	ip, #:upper16:.LC0	@ tmp182,
	str	ip, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1482	@
.L1491:
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	movw	r2, #:lower16:-2142371830	@ tmp186,
	movt	r2, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #18, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32Disable
	movne	r4, r2	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1482	@
.L1489:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1493	@,
	movw	r3, #4894	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1482	@
.L1492:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #262144	@,
	ldr	r4, [ip, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1486	@,
	mov	r0, r5	@, u32Disable
	mov	r1, #97	@,
	ldr	r2, .L1493	@,
	movw	r3, #4929	@,
	movw	lr, #:lower16:.LC0	@ tmp174,
	movt	lr, #:upper16:.LC0	@ tmp174,
	str	lr, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1482	@
.L1490:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1493	@,
	movw	r3, #4900	@,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1482	@
.L1494:
	.align	2
.L1493:
	.word	.LANCHOR1-4020
	.fnend
	.size	DRV_CA_OTP_V200_SetDesDisable, .-DRV_CA_OTP_V200_SetDesDisable
	.align	2
	.global	DRV_CA_OTP_V200_GetTdesLock
	.type	DRV_CA_OTP_V200_GetTdesLock, %function
DRV_CA_OTP_V200_GetTdesLock:
	.fnstart
.LFB881:
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
	subs	r5, r0, #0	@ pu32TdesLock, pu32TdesLock
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1497	@,
	sub	r0, fp, #20	@ tmp140,,
	mov	r1, #12	@ tmp139,
	movw	r3, #769	@ tmp138,
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	str	r1, [r0, #-4]!	@ tmp139, enChipType
	sub	r1, fp, #28	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1501	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1502	@,
.L1499:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #26, #1	@ tmp156,,,
	str	r3, [r5, #0]	@ tmp156,* pu32TdesLock
.L1497:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1502:
	ldr	r2, [fp, #-24]	@ enChipType, enChipType
	cmp	r2, #2	@ enChipType,
	bne	.L1499	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1503	@,
	movw	r3, #3941	@,
	movw	r4, #:lower16:.LC13	@ tmp151,
	movt	r4, #:upper16:.LC13	@ tmp151,
	str	r4, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1497	@
.L1501:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1503	@,
	movw	r3, #3935	@,
	movw	ip, #:lower16:.LC12	@ tmp145,
	movt	ip, #:upper16:.LC12	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	b	.L1497	@
.L1504:
	.align	2
.L1503:
	.word	.LANCHOR1-3988
	.fnend
	.size	DRV_CA_OTP_V200_GetTdesLock, .-DRV_CA_OTP_V200_GetTdesLock
	.align	2
	.global	DRV_CA_OTP_V200_SetTdesLock
	.type	DRV_CA_OTP_V200_SetTdesLock, %function
DRV_CA_OTP_V200_SetTdesLock:
	.fnstart
.LFB880:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ u32TdesLock,
	mov	r5, r0	@ u32TdesLock, u32TdesLock
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1513	@,
.L1507:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1513:
	sub	r0, fp, #28	@ tmp142,,
	mov	r1, #12	@ tmp141,
	movw	r3, #769	@ tmp140,
	str	r3, [fp, #-36]	@ tmp140, enChipVersion
	str	r1, [r0, #-4]!	@ tmp141, enChipType
	sub	r1, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1514	@,
	ldr	r0, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	bne	.L1509	@,
	ldr	r3, [fp, #-32]	@ enChipType, enChipType
	cmp	r3, #2	@ enChipType,
	beq	.L1515	@,
.L1509:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp184,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp184,
	mov	r0, #8	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	mov	r3, r0, lsr #24	@ tmp158,,
	and	r2, r3, #4	@ tmp160, tmp158,
	uxtb	r0, r2	@ tmp161, tmp160
	cmp	r0, #0	@ tmp161,
	bne	.L1516	@,
	cmp	r5, #0	@ u32TdesLock,
	beq	.L1511	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #67108864	@,
	ldr	r4, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1517	@,
.L1511:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #8	@,
	mov	r1, #67108864	@,
	ldr	r2, [r3, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1507	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1518	@,
	movw	r3, #3913	@,
	movw	lr, #:lower16:.LC0	@ tmp182,
	movt	lr, #:upper16:.LC0	@ tmp182,
	str	lr, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	b	.L1507	@
.L1517:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1518	@,
	movw	r3, #3902	@,
	movw	ip, #:lower16:.LC0	@ tmp174,
	movt	ip, #:upper16:.LC0	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1507	@
.L1516:
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #0	@,
	ldr	r2, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	movw	ip, #:lower16:-2142371830	@ tmp186,
	movt	ip, #:upper16:-2142371830	@ tmp186,
	ubfx	r0, r0, #26, #1	@ tmp166,,,
	cmp	r0, r5	@ tmp166, u32TdesLock
	movne	r4, ip	@ ret, tmp186
	moveq	r4, #0	@ ret,
	b	.L1507	@
.L1514:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1518	@,
	movw	r3, #3868	@,
	movw	ip, #:lower16:.LC12	@ tmp147,
	movt	ip, #:upper16:.LC12	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1507	@
.L1515:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1518	@,
	add	r3, r3, #3872	@,,
	movw	r4, #:lower16:.LC13	@ tmp154,
	movt	r4, #:upper16:.LC13	@ tmp154,
	str	r4, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1507	@
.L1519:
	.align	2
.L1518:
	.word	.LANCHOR1-3960
	.fnend
	.size	DRV_CA_OTP_V200_SetTdesLock, .-DRV_CA_OTP_V200_SetTdesLock
	.align	2
	.global	DRV_CA_OTP_V200_GetRootKeyLock
	.type	DRV_CA_OTP_V200_GetRootKeyLock, %function
DRV_CA_OTP_V200_GetRootKeyLock:
	.fnstart
.LFB855:
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
	mov	r4, r0	@ pu32Lock, pu32Lock
	sub	r1, fp, #28	@,,
	sub	r0, fp, #24	@,,
	movw	r3, #769	@ tmp139,
	mov	r2, #12	@ tmp138,
	str	r3, [fp, #-28]	@ tmp139, enChipVersion
	str	r2, [fp, #-24]	@ tmp138, enChip
	bl	DRV_ADVCA_GetChipVersion	@
	ldr	r3, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	bne	.L1521	@,
	ldr	r0, [fp, #-24]	@ enChip, enChip
	sub	r3, r0, #2	@ tmp143, enChip,
	cmp	r3, #1	@ tmp143,
	bhi	.L1521	@,
	movw	r3, #2962	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1525	@,
	movw	ip, #:lower16:.LC14	@ tmp148,
	movt	ip, #:upper16:.LC14	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	mov	r3, #0	@ ret,
.L1522:
	mov	r0, r3	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1521:
	cmp	r4, #0	@ pu32Lock,
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1522	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp150,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp150,
	mov	r0, #16	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	mov	r3, #0	@ ret,
	and	r1, r0, #1	@ tmp153,,
	str	r1, [r4, #0]	@ tmp153,* pu32Lock
	b	.L1522	@
.L1526:
	.align	2
.L1525:
	.word	.LANCHOR1-3932
	.fnend
	.size	DRV_CA_OTP_V200_GetRootKeyLock, .-DRV_CA_OTP_V200_GetRootKeyLock
	.align	2
	.global	DRV_CA_OTP_V200_SetRootKeyLock
	.type	DRV_CA_OTP_V200_SetRootKeyLock, %function
DRV_CA_OTP_V200_SetRootKeyLock:
	.fnstart
.LFB854:
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
	sub	r0, fp, #24	@,,
	sub	r1, fp, #28	@,,
	movw	r2, #769	@ tmp137,
	mov	r4, #12	@ tmp136,
	str	r2, [fp, #-28]	@ tmp137, enChipVersion
	str	r4, [fp, #-24]	@ tmp136, enChip
	bl	DRV_ADVCA_GetChipVersion	@
	ldr	r3, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1531	@,
.L1528:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp149,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp149,
	mov	r0, #16	@,
	mov	r1, #1	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1529	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1532	@,
	mov	r3, #2944	@,
	movw	ip, #:lower16:.LC0	@ tmp154,
	movt	ip, #:upper16:.LC0	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
.L1529:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1531:
	ldr	r1, [fp, #-24]	@ enChip, enChip
	sub	r0, r1, #2	@ tmp141, enChip,
	cmp	r0, #1	@ tmp141,
	bhi	.L1528	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1532	@,
	movw	r3, #2935	@,
	movw	ip, #:lower16:.LC14	@ tmp146,
	mov	r4, #0	@ ret,
	movt	ip, #:upper16:.LC14	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	b	.L1529	@
.L1533:
	.align	2
.L1532:
	.word	.LANCHOR1-3900
	.fnend
	.size	DRV_CA_OTP_V200_SetRootKeyLock, .-DRV_CA_OTP_V200_SetRootKeyLock
	.align	2
	.global	DRV_CA_OTP_V200_GetJtagProtectMode
	.type	DRV_CA_OTP_V200_GetJtagProtectMode, %function
DRV_CA_OTP_V200_GetJtagProtectMode:
	.fnstart
.LFB821:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r7, r0, #0	@ pJtagMode, pJtagMode
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1536	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp215,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp215,
	movw	r2, #769	@ tmp147,
	mov	r4, #0	@ tmp145,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@ tmp146,
	str	r4, [fp, #-32]	@ tmp145, bEcFlag
	str	r0, [fp, #-36]	@ tmp146, enChipType
	mov	r0, #24	@,
	str	r2, [fp, #-40]	@ tmp147, enChipVersion
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	sub	r1, fp, #40	@,,
	mov	r6, r0	@ D.20693,
	sub	r0, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1549	@,
	ldr	lr, [fp, #-40]	@ enChipVersion, enChipVersion
	cmp	lr, #768	@ enChipVersion,
	beq	.L1550	@,
.L1538:
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	ands	r6, r6, #6	@ temp.6384, D.20693,
	movne	r3, #0	@, tmp200
	moveq	r3, #1	@, tmp200
	cmp	r0, #66	@ tmp195,
	movne	r3, #0	@, tmp203
	andeq	r3, r3, #1	@,, tmp203, tmp200
	cmp	r3, #0	@ tmp203,
	movne	r3, #0	@ tmp204,
	strne	r3, [r7, #0]	@ tmp204,* pJtagMode
	bne	.L1536	@,
.L1544:
	cmp	r0, #99	@ tmp195,
	cmpeq	r6, #2	@, temp.6384,
	beq	.L1547	@,
.L1545:
	mov	ip, #2	@ tmp213,
	str	ip, [r7, #0]	@ tmp213,* pJtagMode
.L1536:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1550:
	ldr	r3, [fp, #-36]	@ enChipType, enChipType
	cmp	r3, #0	@ enChipType,
	bne	.L1538	@,
	sub	r0, fp, #32	@,,
	bl	DRV_CA_OTP_V200_GetECFlag	@
	ldr	r1, [fp, #-32]	@ bEcFlag, bEcFlag
	cmp	r1, #0	@ bEcFlag,
	bne	.L1551	@,
	uxtb	r6, r6	@ temp.6379, D.20693
	tst	r6, #4	@ temp.6379,
	bne	.L1545	@,
	tst	r6, #2	@ temp.6379,
	beq	.L1543	@,
.L1547:
	mov	r0, #1	@ tmp212,
	str	r0, [r7, #0]	@ tmp212,* pJtagMode
	b	.L1536	@
.L1549:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1552	@,
	movw	r3, #1506	@,
	movw	ip, #:lower16:.LC12	@ tmp156,
	movt	ip, #:upper16:.LC12	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1536	@
.L1551:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	ldr	ip, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	ands	r6, r6, #6	@ D.20709, D.20693,
	movne	r2, #0	@, tmp169
	moveq	r2, #1	@, tmp169
	cmp	r0, #66	@ tmp164,
	movne	r2, #0	@, tmp172
	andeq	r2, r2, #1	@,, tmp172, tmp169
	cmp	r2, #0	@ tmp172,
	beq	.L1544	@,
.L1543:
	str	r4, [r7, #0]	@ ret,* pJtagMode
	b	.L1536	@
.L1553:
	.align	2
.L1552:
	.word	.LANCHOR1-3868
	.fnend
	.size	DRV_CA_OTP_V200_GetJtagProtectMode, .-DRV_CA_OTP_V200_GetJtagProtectMode
	.align	2
	.global	DRV_CA_OTP_V200_SetJtagProtectMode
	.type	DRV_CA_OTP_V200_SetJtagProtectMode, %function
DRV_CA_OTP_V200_SetJtagProtectMode:
	.fnstart
.LFB820:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #2	@ JtagMode,
	mov	r5, r0	@ JtagMode, JtagMode
	movwhi	r4, #:lower16:-2142371835	@ ret,
	movthi	r4, #:upper16:-2142371835	@ ret,
	bls	.L1576	@,
.L1556:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1576:
	sub	r0, fp, #36	@,,
	sub	r1, fp, #40	@,,
	movw	r4, #769	@ tmp140,
	mov	r2, #12	@ tmp141,
	str	r4, [fp, #-40]	@ tmp140, enChipVersion
	mov	r3, #0	@ tmp142,
	str	r2, [fp, #-36]	@ tmp141, enChipType
	str	r3, [fp, #-32]	@ tmp142, bEcFlag
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1577	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp220,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp220,
	mov	r0, #24	@,
	ldr	r7, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r7, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	uxtb	r3, r0	@ D.20616, prephitmp.6408
	mov	r7, r0	@ prephitmp.6408,
	tst	r3, #4	@ D.20616,
	bne	.L1578	@,
	tst	r3, #2	@ D.20616,
	bne	.L1579	@,
.L1560:
	ldr	r3, [fp, #-40]	@ prephitmp.6406, enChipVersion
	cmp	r3, #768	@ prephitmp.6406,
	beq	.L1580	@,
.L1561:
	cmp	r5, #1	@ JtagMode,
	beq	.L1563	@,
	cmp	r5, #2	@ JtagMode,
	beq	.L1564	@,
	cmp	r3, #768	@ prephitmp.6406,
	beq	.L1581	@,
.L1565:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #66	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1582	@,
.L1566:
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r7	@, prephitmp.6408
	mov	r0, #24	@,
	ldr	r2, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1556	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1480	@,
	movw	lr, #:lower16:.LC0	@ tmp218,
	movt	lr, #:upper16:.LC0	@ tmp218,
	str	lr, [sp, #0]	@ tmp218,
	bl	HI_LogOut	@
	b	.L1556	@
.L1578:
	cmp	r5, #2	@ JtagMode,
	beq	.L1556	@,
.L1559:
	movw	r4, #:lower16:-2142371826	@ ret,
	movt	r4, #:upper16:-2142371826	@ ret,
	b	.L1556	@
.L1577:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1356	@,
	movw	ip, #:lower16:.LC12	@ tmp148,
	movt	ip, #:upper16:.LC12	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	b	.L1556	@
.L1581:
	ldr	lr, [fp, #-36]	@ enChipType, enChipType
	cmp	lr, #0	@ enChipType,
	bne	.L1565	@,
	ldr	r3, [fp, #-32]	@ bEcFlag, bEcFlag
	cmp	r3, #0	@ bEcFlag,
	beq	.L1566	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #66	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1566	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1403	@,
	movw	ip, #:lower16:.LC15	@ tmp169,
	movt	ip, #:upper16:.LC15	@ tmp169,
	str	ip, [sp, #0]	@ tmp169,
	bl	HI_LogOut	@
	b	.L1556	@
.L1580:
	ldr	r0, [fp, #-36]	@ enChipType, enChipType
	cmp	r0, #0	@ enChipType,
	bne	.L1561	@,
	sub	r0, fp, #32	@,,
	bl	DRV_CA_OTP_V200_GetECFlag	@
	ldr	r3, [fp, #-40]	@ prephitmp.6406, enChipVersion
	b	.L1561	@
.L1563:
	cmp	r3, #768	@ prephitmp.6406,
	orr	r7, r7, #2	@ OneWay_0, prephitmp.6408,
	bne	.L1567	@,
	ldr	r1, [fp, #-36]	@ enChipType, enChipType
	cmp	r1, #0	@ enChipType,
	bne	.L1567	@,
	ldr	r0, [fp, #-32]	@ bEcFlag, bEcFlag
	cmp	r0, #0	@ bEcFlag,
	beq	.L1566	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #99	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1566	@,
	mov	r0, r5	@, JtagMode
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1429	@,
	movw	lr, #:lower16:.LC15	@ tmp187,
	movt	lr, #:upper16:.LC15	@ tmp187,
	str	lr, [sp, #0]	@ tmp187,
	bl	HI_LogOut	@
	b	.L1556	@
.L1564:
	cmp	r3, #768	@ prephitmp.6406,
	orr	r7, r7, #4	@ OneWay_0, prephitmp.6408,
	bne	.L1571	@,
	ldr	r1, [fp, #-36]	@ enChipType, enChipType
	cmp	r1, #0	@ enChipType,
	bne	.L1571	@,
	ldr	r0, [fp, #-32]	@ bEcFlag, bEcFlag
	cmp	r0, #0	@ bEcFlag,
	beq	.L1566	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1566	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	mov	r3, #1456	@,
	movw	ip, #:lower16:.LC15	@ tmp204,
	movt	ip, #:upper16:.LC15	@ tmp204,
	str	ip, [sp, #0]	@ tmp204,
	bl	HI_LogOut	@
	b	.L1556	@
.L1567:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #99	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1566	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1439	@,
	movw	lr, #:lower16:.LC16	@ tmp194,
	movt	lr, #:upper16:.LC16	@ tmp194,
	str	lr, [sp, #0]	@ tmp194,
	bl	HI_LogOut	@
	b	.L1556	@
.L1571:
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #174	@,
	mov	r1, #255	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1566	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1466	@,
	movw	ip, #:lower16:.LC16	@ tmp211,
	movt	ip, #:upper16:.LC16	@ tmp211,
	str	ip, [sp, #0]	@ tmp211,
	bl	HI_LogOut	@
	b	.L1556	@
.L1579:
	cmp	r5, #0	@ JtagMode,
	beq	.L1559	@,
	cmp	r5, #1	@ JtagMode,
	bne	.L1560	@,
	b	.L1556	@
.L1582:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1583	@,
	movw	r3, #1413	@,
	movw	ip, #:lower16:.LC15	@ tmp176,
	movt	ip, #:upper16:.LC15	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	b	.L1556	@
.L1584:
	.align	2
.L1583:
	.word	.LANCHOR1-3832
	.fnend
	.size	DRV_CA_OTP_V200_SetJtagProtectMode, .-DRV_CA_OTP_V200_SetJtagProtectMode
	.align	2
	.global	DRV_CA_OTP_V200_GetSCSActive
	.type	DRV_CA_OTP_V200_GetSCSActive, %function
DRV_CA_OTP_V200_GetSCSActive:
	.fnstart
.LFB819:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r6, r0, #0	@ pu32ActiveFlag, pu32ActiveFlag
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1587	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp145,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp145,
	movw	r2, #769	@ tmp143,
	mov	r4, #0	@ tmp141,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #12	@ tmp142,
	str	r4, [fp, #-32]	@ tmp141, bEcFlag
	str	r0, [fp, #-36]	@ tmp142, enChipType
	mov	r0, #24	@,
	str	r2, [fp, #-40]	@ tmp143, enChipVersion
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	sub	r1, fp, #40	@,,
	mov	r7, r0	@ D.20559,
	sub	r0, fp, #36	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1598	@,
	ldr	r3, [fp, #-40]	@ enChipVersion.322, enChipVersion
	cmp	r3, #768	@ enChipVersion.322,
	beq	.L1599	@,
	cmp	r3, #512	@ enChipVersion.322,
	beq	.L1600	@,
.L1590:
	and	r7, r7, #1	@ tmp188, D.20559,
	str	r7, [r6, #0]	@ tmp188,* pu32ActiveFlag
.L1587:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1599:
	ldr	lr, [fp, #-36]	@ enChipType, enChipType
	cmp	lr, #0	@ enChipType,
	bne	.L1590	@,
	sub	r0, fp, #32	@,,
	bl	DRV_CA_OTP_V200_GetECFlag	@
	ldr	r3, [fp, #-32]	@ bEcFlag, bEcFlag
	cmp	r3, #0	@ bEcFlag,
	beq	.L1590	@,
.L1597:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #173	@,
	ldr	ip, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r0, #129	@,
	moveq	r2, r7	@, tmp184, D.20559
	orrne	r2, r7, #1	@,, tmp184, D.20559
	tst	r2, #1	@ tmp184,
	streq	r4, [r6, #0]	@ ret,* pu32ActiveFlag
	movne	r3, #1	@ tmp185,
	strne	r3, [r6, #0]	@ tmp185,* pu32ActiveFlag
	b	.L1587	@
.L1598:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1601	@,
	movw	r3, #1293	@,
	movw	ip, #:lower16:.LC17	@ tmp152,
	movt	ip, #:upper16:.LC17	@ tmp152,
	str	ip, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	b	.L1587	@
.L1600:
	ldr	r1, [fp, #-36]	@ enChipType, enChipType
	cmp	r1, #2	@ enChipType,
	bne	.L1590	@,
	b	.L1597	@
.L1602:
	.align	2
.L1601:
	.word	.LANCHOR1-3796
	.fnend
	.size	DRV_CA_OTP_V200_GetSCSActive, .-DRV_CA_OTP_V200_GetSCSActive
	.align	2
	.global	DRV_CA_OTP_V200_SetSCSActive
	.type	DRV_CA_OTP_V200_SetSCSActive, %function
DRV_CA_OTP_V200_SetSCSActive:
	.fnstart
.LFB818:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp142,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp142,
	mov	r4, #0	@ tmp137,
	mov	r0, #12	@ tmp138,
	str	r4, [fp, #-24]	@ tmp137, bEcFlag
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r2, #769	@ tmp139,
	str	r0, [fp, #-28]	@ tmp138, enChipType
	mov	r0, #24	@,
	str	r2, [fp, #-32]	@ tmp139, enChipVersion
	ldr	r3, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	mov	r1, #1	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1610	@,
	sub	r0, fp, #28	@,,
	sub	r1, fp, #32	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1611	@,
	ldr	r3, [fp, #-32]	@ enChipVersion.315, enChipVersion
	cmp	r3, #768	@ enChipVersion.315,
	beq	.L1612	@,
	cmp	r3, #512	@ enChipVersion.315,
	bne	.L1608	@,
	ldr	r0, [fp, #-28]	@ enChipType, enChipType
	cmp	r0, #2	@ enChipType,
	beq	.L1613	@,
.L1608:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1614	@,
	movw	r3, #1268	@,
	movw	lr, #:lower16:.LC13	@ tmp175,
	movt	lr, #:upper16:.LC13	@ tmp175,
	str	lr, [sp, #0]	@ tmp175,
	bl	HI_LogOut	@
.L1605:
	mov	r0, r4	@, ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1610:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1614	@,
	mov	r3, #1232	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L1605	@
.L1611:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1614	@,
	movw	r3, #1239	@,
	movw	lr, #:lower16:.LC17	@ tmp153,
	movt	lr, #:upper16:.LC17	@ tmp153,
	str	lr, [sp, #0]	@ tmp153,
	bl	HI_LogOut	@
	b	.L1605	@
.L1612:
	ldr	r3, [fp, #-28]	@ enChipType, enChipType
	cmp	r3, #0	@ enChipType,
	bne	.L1608	@,
	sub	r0, fp, #24	@,,
	bl	DRV_CA_OTP_V200_GetECFlag	@
	ldr	r1, [fp, #-24]	@ bEcFlag, bEcFlag
	cmp	r1, #0	@ bEcFlag,
	beq	.L1605	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #173	@,
	mov	r1, #255	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1605	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1614	@,
	movw	r3, #1252	@,
	movw	ip, #:lower16:.LC0	@ tmp163,
	movt	ip, #:upper16:.LC0	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L1605	@
.L1613:
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #173	@,
	mov	r1, #255	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L1605	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1614	@,
	movw	r3, #1262	@,
	movw	ip, #:lower16:.LC0	@ tmp171,
	movt	ip, #:upper16:.LC0	@ tmp171,
	str	ip, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L1605	@
.L1615:
	.align	2
.L1614:
	.word	.LANCHOR1-3764
	.fnend
	.size	DRV_CA_OTP_V200_SetSCSActive, .-DRV_CA_OTP_V200_SetSCSActive
	.align	2
	.global	DRV_CA_OTP_V200_LockHardTDESSel
	.type	DRV_CA_OTP_V200_LockHardTDESSel, %function
DRV_CA_OTP_V200_LockHardTDESSel:
	.fnstart
.LFB795:
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
	sub	r0, fp, #24	@,,
	sub	r1, fp, #28	@,,
	mov	r2, #12	@ tmp137,
	movw	r3, #769	@ tmp138,
	str	r2, [fp, #-24]	@ tmp137, enChipType
	str	r3, [fp, #-28]	@ tmp138, enChipVersion
	bl	DRV_ADVCA_GetChipVersion	@
	cmp	r0, #0	@,
	bne	.L1621	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1622	@,
.L1619:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp153,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp153,
	mov	r0, #0	@,
	mov	r1, #8388608	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1618	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1623	@,
	movw	r3, #487	@,
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
.L1618:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1622:
	ldr	r1, [fp, #-24]	@ enChipType, enChipType
	cmp	r1, #2	@ enChipType,
	bne	.L1619	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1623	@,
	movw	r3, #478	@,
	movw	r4, #:lower16:.LC13	@ tmp150,
	movt	r4, #:upper16:.LC13	@ tmp150,
	str	r4, [sp, #0]	@ tmp150,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1618	@
.L1621:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1623	@,
	mov	r3, #472	@,
	movw	ip, #:lower16:.LC12	@ tmp144,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC12	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L1618	@
.L1624:
	.align	2
.L1623:
	.word	.LANCHOR1-3732
	.fnend
	.size	DRV_CA_OTP_V200_LockHardTDESSel, .-DRV_CA_OTP_V200_LockHardTDESSel
	.align	2
	.global	DRV_CA_OTP_V200_LockHardAESSel
	.type	DRV_CA_OTP_V200_LockHardAESSel, %function
DRV_CA_OTP_V200_LockHardAESSel:
	.fnstart
.LFB794:
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
	sub	r0, fp, #24	@,,
	sub	r1, fp, #28	@,,
	mov	r2, #12	@ tmp136,
	movw	r3, #769	@ tmp137,
	str	r2, [fp, #-24]	@ tmp136, enChipType
	str	r3, [fp, #-28]	@ tmp137, enChipVersion
	bl	DRV_ADVCA_GetChipVersion	@
	subs	r4, r0, #0	@ ret,
	bne	.L1630	@,
	ldr	r0, [fp, #-28]	@ enChipVersion, enChipVersion
	cmp	r0, #512	@ enChipVersion,
	beq	.L1631	@,
.L1628:
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp152,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp152,
	mov	r0, #0	@,
	mov	r1, #4194304	@,
	ldr	lr, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1632	@,
.L1627:
	mov	r0, r4	@, ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1631:
	ldr	r1, [fp, #-24]	@ enChipType, enChipType
	cmp	r1, #2	@ enChipType,
	bne	.L1628	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1633	@,
	movw	r3, #446	@,
	movw	r4, #:lower16:.LC13	@ tmp149,
	movt	r4, #:upper16:.LC13	@ tmp149,
	str	r4, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1627	@
.L1632:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1633	@,
	movw	r3, #455	@,
	movw	ip, #:lower16:.LC0	@ tmp157,
	movt	ip, #:upper16:.LC0	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	b	.L1627	@
.L1630:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1633	@,
	mov	r3, #440	@,
	movw	ip, #:lower16:.LC12	@ tmp143,
	movt	ip, #:upper16:.LC12	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L1627	@
.L1634:
	.align	2
.L1633:
	.word	.LANCHOR1-3700
	.fnend
	.size	DRV_CA_OTP_V200_LockHardAESSel, .-DRV_CA_OTP_V200_LockHardAESSel
	.align	2
	.global	DRV_CA_OTP_V200_SetOTPTzData
	.type	DRV_CA_OTP_V200_SetOTPTzData, %function
DRV_CA_OTP_V200_SetOTPTzData:
	.fnstart
.LFB865:
	@ args = 136, pretend = 16, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #156
	sub	sp, sp, #156	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r6, fp, #4	@ ivtmp.6584,,
	stmia	r6, {r0, r1, r2, r3}	@ ivtmp.6584,,,,
	ldr	r4, [fp, #8]	@ temp.6594, stInputParam.u32Len
	cmp	r4, #0	@ temp.6594,
	beq	.L1636	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp193,
	mov	r5, #0	@ i,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp193,
	b	.L1639	@
.L1637:
	ldr	r4, [fp, #8]	@ temp.6594, stInputParam.u32Len
	cmp	r4, r5	@ temp.6594, i
	bls	.L1636	@,
.L1639:
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #28	@,
	ldr	lr, [fp, #4]	@ stInputParam.u32Addr, stInputParam.u32Addr
	add	r5, r5, #1	@ i, i,
	sub	r2, lr, #256	@ tmp146, stInputParam.u32Addr,
	ldr	r1, [ip, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	mov	r4, r2, lsr #4	@ u32LockArea, tmp146,
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ubfx	r3, r0, #8, #8	@ unOTPTZLock.bits.tz_area_lock, D.22037,,
	str	r0, [fp, #-48]	@ D.22037, unOTPTZLock.u32
	mov	r4, r3, asr r4	@ tmp152, unOTPTZLock.bits.tz_area_lock,
	tst	r4, #1	@ tmp152,
	beq	.L1637	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1666	@,
	movw	r3, #3444	@,
	movw	ip, #:lower16:.LC18	@ tmp157,
	movt	ip, #:upper16:.LC18	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	mvn	ip, #0	@ ret,
.L1638:
	mov	r0, ip	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1636:
	ldr	r7, [fp, #4]	@ u32Start, stInputParam.u32Addr
	cmp	r7, #255	@ u32Start,
	bls	.L1640	@,
	add	r0, r4, r7	@ tmp158, temp.6594, u32Start
	cmp	r0, #368	@ tmp158,
	bhi	.L1640	@,
	cmp	r4, #0	@ temp.6594,
	beq	.L1642	@,
	movw	r9, #:lower16:g_pOTPExportFunctionList	@ tmp204,
	movt	r9, #:upper16:g_pOTPExportFunctionList	@ tmp204,
	mov	r0, r7	@, u32Start
	ldrb	r1, [r6, #8]	@ zero_extendqisi2	@, stInputParam.u8Buf
	ldr	r2, [r9, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	sub	r8, r4, #1	@ tmp199, temp.6594,
	and	r8, r8, #1	@ tmp201, tmp199,
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	ip, r0, #0	@ ret,
	bne	.L1664	@,
	mov	r5, #1	@ i.6589,
	cmp	r5, r4	@ i.6589, temp.6594
	add	r6, r6, r5	@ ivtmp.6584, ivtmp.6584,
	bcs	.L1642	@,
	cmp	r8, #0	@ tmp201,
	beq	.L1644	@,
	ldr	lr, [r9, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, r7	@, i.6589, u32Start
	ldrb	r1, [r6, #8]	@ zero_extendqisi2	@, stInputParam.u8Buf
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	ip, r0, #0	@ ret,
	bne	.L1664	@,
	mov	r5, #2	@ i.6589,
	cmp	r5, r4	@ i.6589, temp.6594
	add	r6, r6, #1	@ ivtmp.6584, ivtmp.6584,
	bcc	.L1644	@,
	b	.L1642	@
.L1643:
	ldr	r2, [r9, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [sl, #8]	@ zero_extendqisi2	@, stInputParam.u8Buf
	ldr	r3, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	ip, r0, #0	@ ret,
	bne	.L1664	@,
	cmp	r5, r4	@ i.6589, temp.6594
	bcs	.L1642	@,
.L1644:
	ldr	lr, [r9, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, r7	@, i.6589, u32Start
	ldrb	r1, [r6, #8]	@ zero_extendqisi2	@, stInputParam.u8Buf
	add	r8, r5, #1	@ tmp202, i.6589,
	add	sl, r6, #1	@ tmp203, ivtmp.6584,
	add	r5, r8, #1	@ i.6589, tmp202,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	add	r6, sl, #1	@ ivtmp.6584, tmp203,
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	ip, r0, #0	@ ret,
	add	r0, r8, r7	@, tmp202, u32Start
	beq	.L1643	@,
.L1664:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1666	@,
	movw	r3, #3465	@,
	str	ip, [fp, #-184]	@,
	movw	lr, #:lower16:.LC0	@ tmp171,
	movt	lr, #:upper16:.LC0	@ tmp171,
	str	lr, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	ldr	ip, [fp, #-184]	@,
	b	.L1638	@
.L1642:
	sub	r4, fp, #176	@ tmp191,,
	mov	r1, #128	@,
	mov	r0, r4	@, tmp191
	bl	__memzero	@
	ldmib	fp, {r8, sl}	@ phole ldm
	cmp	sl, #0	@ u32Round,
	moveq	ip, sl	@ ret, u32Round
	beq	.L1638	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp217,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp217,
	mov	r0, r8	@, u32Start.6590
	mov	r5, #1	@ i.6592,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	sub	r6, sl, #1	@ tmp195, u32Round,
	and	r6, r6, #1	@ tmp197, tmp195,
	ldr	r1, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	sl, r5	@ u32Round,
	strb	r0, [r4, #0]	@, u8ReadBuf
	bls	.L1665	@,
	cmp	r6, #0	@ tmp197,
	beq	.L1646	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r8, #1	@, u32Start.6590,
	mov	r5, #2	@ i.6592,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	sl, r5	@ u32Round, i.6592
	strb	r0, [r4, #1]	@, u8ReadBuf
	bls	.L1665	@,
.L1646:
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, r8	@, i.6592, u32Start.6590
	add	r6, r5, #1	@ tmp198, i.6592,
	ldr	r1, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	strb	r0, [r4, r5]	@, u8ReadBuf
	add	r0, r6, r8	@, tmp198, u32Start.6590
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	add	r5, r6, #1	@ i.6592, tmp198,
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	sl, r5	@ u32Round, i.6592
	strb	r0, [r4, r6]	@, u8ReadBuf
	bhi	.L1646	@,
.L1665:
	mov	r0, r4	@, tmp191
	add	r1, fp, #12	@,,
	ldr	r2, [fp, #8]	@, stInputParam.u32Len
	bl	memcmp	@
	subs	ip, r0, #0	@ ret,
	beq	.L1638	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1666	@,
	movw	r3, #3481	@,
	movw	ip, #:lower16:.LC0	@ tmp188,
	movt	ip, #:upper16:.LC0	@ tmp188,
	str	ip, [sp, #0]	@ tmp188,
	bl	HI_LogOut	@
	mvn	ip, #0	@ ret,
	b	.L1638	@
.L1640:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1666	@,
	mov	r3, #3456	@,
	movw	lr, #:lower16:.LC7	@ tmp162,
	movt	lr, #:upper16:.LC7	@ tmp162,
	str	lr, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	ip, #0	@ ret,
	b	.L1638	@
.L1667:
	.align	2
.L1666:
	.word	.LANCHOR1-3668
	.fnend
	.size	DRV_CA_OTP_V200_SetOTPTzData, .-DRV_CA_OTP_V200_SetOTPTzData
	.align	2
	.global	DRV_CA_OTP_V200_GetOEMRootKey
	.type	DRV_CA_OTP_V200_GetOEMRootKey, %function
DRV_CA_OTP_V200_GetOEMRootKey:
	.fnstart
.LFB863:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1670	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1674	@,
.L1671:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp165,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp165,
	mov	r0, #16	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #16, #8	@ tmp167,,,
	and	r6, r2, #2	@ tmp169, tmp167,
	uxtb	r6, r6	@ tmp170, tmp169
	cmp	r6, #0	@ tmp170,
	bne	.L1675	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #208	@,
	ldr	r3, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #209	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #210	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #211	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #212	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #213	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #214	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #215	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #216	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #217	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #218	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #219	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #220	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #221	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #222	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #223	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp170
	strb	r0, [r4, #15]	@,
.L1670:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1674:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1671	@,
	movw	r3, #3389	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1676	@,
	movw	ip, #:lower16:.LC14	@ tmp163,
	movt	ip, #:upper16:.LC14	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1670	@
.L1675:
	movw	r3, #3396	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1676	@,
	movw	ip, #:lower16:.LC19	@ tmp174,
	movt	ip, #:upper16:.LC19	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1670	@
.L1677:
	.align	2
.L1676:
	.word	.LANCHOR1-3636
	.fnend
	.size	DRV_CA_OTP_V200_GetOEMRootKey, .-DRV_CA_OTP_V200_GetOEMRootKey
	.align	2
	.global	DRV_CA_OTP_V200_GetMISCRootKey
	.type	DRV_CA_OTP_V200_GetMISCRootKey, %function
DRV_CA_OTP_V200_GetMISCRootKey:
	.fnstart
.LFB860:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1680	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1684	@,
.L1681:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp165,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp165,
	mov	r0, #16	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp167,,,
	and	r6, r2, #128	@ tmp169, tmp167,
	uxtb	r6, r6	@ tmp170, tmp169
	cmp	r6, #0	@ tmp170,
	bne	.L1685	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #176	@,
	ldr	r3, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #177	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #178	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #179	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #180	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #181	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #182	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #183	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #184	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #185	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #186	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #187	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #188	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #189	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #190	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #191	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp170
	strb	r0, [r4, #15]	@,
.L1680:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1684:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1681	@,
	movw	r3, #3236	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1686	@,
	movw	ip, #:lower16:.LC14	@ tmp163,
	movt	ip, #:upper16:.LC14	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1680	@
.L1685:
	movw	r3, #3243	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1686	@,
	movw	ip, #:lower16:.LC20	@ tmp174,
	movt	ip, #:upper16:.LC20	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1680	@
.L1687:
	.align	2
.L1686:
	.word	.LANCHOR1-3604
	.fnend
	.size	DRV_CA_OTP_V200_GetMISCRootKey, .-DRV_CA_OTP_V200_GetMISCRootKey
	.align	2
	.global	DRV_CA_OTP_V200_GetESCK
	.type	DRV_CA_OTP_V200_GetESCK, %function
DRV_CA_OTP_V200_GetESCK:
	.fnstart
.LFB857:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1690	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1694	@,
.L1691:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp165,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp165,
	mov	r0, #16	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r6, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r6	@ <variable>.HAL_OTP_V200_Read
	and	r2, r0, #4	@ tmp169,,
	uxtb	r6, r2	@ tmp170, tmp169
	cmp	r6, #0	@ tmp170,
	bne	.L1695	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #112	@,
	ldr	r2, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #113	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #114	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #115	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #116	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #117	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #118	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #119	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #120	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #121	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #122	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #123	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #124	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #125	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #126	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #127	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp170
	strb	r0, [r4, #15]	@,
.L1690:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1694:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1691	@,
	movw	r3, #3084	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1696	@,
	movw	ip, #:lower16:.LC14	@ tmp163,
	movt	ip, #:upper16:.LC14	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1690	@
.L1695:
	movw	r3, #3091	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1696	@,
	movw	ip, #:lower16:.LC21	@ tmp174,
	movt	ip, #:upper16:.LC21	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1690	@
.L1697:
	.align	2
.L1696:
	.word	.LANCHOR1-3572
	.fnend
	.size	DRV_CA_OTP_V200_GetESCK, .-DRV_CA_OTP_V200_GetESCK
	.align	2
	.global	DRV_CA_OTP_V200_GetJtagKey
	.type	DRV_CA_OTP_V200_GetJtagKey, %function
DRV_CA_OTP_V200_GetJtagKey:
	.fnstart
.LFB853:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1700	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1704	@,
.L1701:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp157,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp157,
	mov	r0, #20	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp159,,,
	and	r6, r2, #8	@ tmp161, tmp159,
	uxtb	r6, r6	@ tmp162, tmp161
	cmp	r6, #0	@ tmp162,
	bne	.L1705	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #96	@,
	ldr	r3, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #97	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #98	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #99	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #100	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #101	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #102	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #103	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp162
	strb	r0, [r4, #7]	@,
.L1700:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1704:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp149, enChipType,
	cmp	r0, #1	@ tmp149,
	bhi	.L1701	@,
	movw	r3, #2904	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1706	@,
	movw	ip, #:lower16:.LC14	@ tmp155,
	movt	ip, #:upper16:.LC14	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1700	@
.L1705:
	movw	r3, #2911	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1706	@,
	movw	ip, #:lower16:.LC22	@ tmp166,
	movt	ip, #:upper16:.LC22	@ tmp166,
	str	ip, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1700	@
.L1707:
	.align	2
.L1706:
	.word	.LANCHOR1-3548
	.fnend
	.size	DRV_CA_OTP_V200_GetJtagKey, .-DRV_CA_OTP_V200_GetJtagKey
	.align	2
	.global	DRV_CA_OTP_V200_GetSPRootKey
	.type	DRV_CA_OTP_V200_GetSPRootKey, %function
DRV_CA_OTP_V200_GetSPRootKey:
	.fnstart
.LFB851:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1710	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1714	@,
.L1711:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp164,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp164,
	mov	r0, #20	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp166,,,
	and	r6, r2, #4	@ tmp168, tmp166,
	uxtb	r6, r6	@ tmp169, tmp168
	cmp	r6, #0	@ tmp169,
	bne	.L1715	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #64	@,
	ldr	r3, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #65	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #66	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #67	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #68	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #69	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #70	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #71	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #72	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #73	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #74	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #75	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #76	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #77	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #78	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #79	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp169
	strb	r0, [r4, #15]	@,
.L1710:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1714:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1711	@,
	movw	r3, #2762	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1716	@,
	movw	ip, #:lower16:.LC14	@ tmp162,
	movt	ip, #:upper16:.LC14	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1710	@
.L1715:
	movw	r3, #2769	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1716	@,
	movw	ip, #:lower16:.LC23	@ tmp173,
	movt	ip, #:upper16:.LC23	@ tmp173,
	str	ip, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1710	@
.L1717:
	.align	2
.L1716:
	.word	.LANCHOR1-3520
	.fnend
	.size	DRV_CA_OTP_V200_GetSPRootKey, .-DRV_CA_OTP_V200_GetSPRootKey
	.align	2
	.global	DRV_CA_OTP_V200_GetR2RRootKey
	.type	DRV_CA_OTP_V200_GetR2RRootKey, %function
DRV_CA_OTP_V200_GetR2RRootKey:
	.fnstart
.LFB849:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1720	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1724	@,
.L1721:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp164,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp164,
	mov	r0, #20	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	ubfx	r2, r0, #8, #8	@ tmp166,,,
	and	r6, r2, #2	@ tmp168, tmp166,
	uxtb	r6, r6	@ tmp169, tmp168
	cmp	r6, #0	@ tmp169,
	bne	.L1725	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #48	@,
	ldr	r3, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #49	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #50	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #51	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #52	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #53	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #54	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #55	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #56	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #57	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #58	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #59	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #60	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #61	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #62	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [ip, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #63	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp169
	strb	r0, [r4, #15]	@,
.L1720:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1724:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1721	@,
	movw	r3, #2633	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1726	@,
	movw	ip, #:lower16:.LC14	@ tmp162,
	movt	ip, #:upper16:.LC14	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1720	@
.L1725:
	mov	r3, #2640	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1726	@,
	movw	ip, #:lower16:.LC24	@ tmp173,
	movt	ip, #:upper16:.LC24	@ tmp173,
	str	ip, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1720	@
.L1727:
	.align	2
.L1726:
	.word	.LANCHOR1-3488
	.fnend
	.size	DRV_CA_OTP_V200_GetR2RRootKey, .-DRV_CA_OTP_V200_GetR2RRootKey
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA3RootKey
	.type	DRV_CA_OTP_V200_GetCSA3RootKey, %function
DRV_CA_OTP_V200_GetCSA3RootKey:
	.fnstart
.LFB847:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1730	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1734	@,
.L1731:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp164,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp164,
	mov	r0, #20	@,
	ldr	r6, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r6, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ubfx	r6, r0, #8, #1	@ tmp169,,,
	cmp	r6, #0	@ tmp169,
	bne	.L1735	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #80	@,
	ldr	ip, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #81	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #82	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #83	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #84	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #85	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #86	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #87	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #88	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #89	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #90	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #91	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #92	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #93	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #94	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #95	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp169
	strb	r0, [r4, #15]	@,
.L1730:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1734:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1731	@,
	movw	r3, #2503	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1736	@,
	movw	ip, #:lower16:.LC14	@ tmp162,
	movt	ip, #:upper16:.LC14	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1730	@
.L1735:
	movw	r3, #2510	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1736	@,
	movw	lr, #:lower16:.LC25	@ tmp173,
	movt	lr, #:upper16:.LC25	@ tmp173,
	str	lr, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1730	@
.L1737:
	.align	2
.L1736:
	.word	.LANCHOR1-3456
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA3RootKey, .-DRV_CA_OTP_V200_GetCSA3RootKey
	.align	2
	.global	DRV_CA_OTP_V200_GetCSA2RootKey
	.type	DRV_CA_OTP_V200_GetCSA2RootKey, %function
DRV_CA_OTP_V200_GetCSA2RootKey:
	.fnstart
.LFB845:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ pu8Key, pu8Key
	movweq	r3, #:lower16:-2142371835	@ ret,
	movteq	r3, #:upper16:-2142371835	@ ret,
	beq	.L1740	@,
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [fp, #-36]	@ enChipVersion, enChipVersion
	cmp	r3, #512	@ enChipVersion,
	beq	.L1744	@,
.L1741:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp164,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp164,
	mov	r0, #16	@,
	ldr	r6, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r6, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ands	r6, r0, #1	@ tmp169,,
	bne	.L1745	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #32	@,
	ldr	ip, [lr, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #0]	@,* pu8Key
	mov	r0, #33	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #1]	@,
	mov	r0, #34	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #2]	@,
	mov	r0, #35	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #3]	@,
	mov	r0, #36	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #4]	@,
	mov	r0, #37	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #5]	@,
	mov	r0, #38	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #6]	@,
	mov	r0, #39	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #7]	@,
	mov	r0, #40	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #8]	@,
	mov	r0, #41	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #9]	@,
	mov	r0, #42	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #10]	@,
	mov	r0, #43	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #11]	@,
	mov	r0, #44	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #12]	@,
	mov	r0, #45	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #13]	@,
	mov	r0, #46	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	ip	@ <variable>.HAL_OTP_V200_ReadByte
	strb	r0, [r4, #14]	@,
	mov	r0, #47	@,
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	mov	r3, r6	@ ret, tmp169
	strb	r0, [r4, #15]	@,
.L1740:
	mov	r0, r3	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1744:
	ldr	r1, [fp, #-32]	@ enChipType, enChipType
	sub	r0, r1, #2	@ tmp157, enChipType,
	cmp	r0, #1	@ tmp157,
	bhi	.L1741	@,
	movw	r3, #2375	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1746	@,
	movw	ip, #:lower16:.LC14	@ tmp162,
	movt	ip, #:upper16:.LC14	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1740	@
.L1745:
	movw	r3, #2382	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1746	@,
	movw	lr, #:lower16:.LC26	@ tmp173,
	movt	lr, #:upper16:.LC26	@ tmp173,
	str	lr, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	mvn	r3, #0	@ ret,
	b	.L1740	@
.L1747:
	.align	2
.L1746:
	.word	.LANCHOR1-3424
	.fnend
	.size	DRV_CA_OTP_V200_GetCSA2RootKey, .-DRV_CA_OTP_V200_GetCSA2RootKey
	.align	2
	.global	DRV_CA_OTP_CalculateCRC16
	.type	DRV_CA_OTP_CalculateCRC16, %function
DRV_CA_OTP_CalculateCRC16:
	.fnstart
.LFB779:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r5, r0, #0	@ pu8Data, pu8Data
	mov	r4, r1	@ u32DataLen, u32DataLen
	beq	.L1764	@,
	cmp	r1, #0	@ u32DataLen,
	bne	.L1751	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1765	@,
	mov	r3, #40	@,
	movw	lr, #:lower16:.LC28	@ tmp166,
	movt	lr, #:upper16:.LC28	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	mov	r0, #255	@ crc_value,
.L1750:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1751:
	sub	r6, fp, #48	@ tmp167,,
	mov	r1, #17	@,
	mov	r0, r6	@, tmp167
	bl	__memzero	@
	mov	r2, r4	@, u32DataLen
	add	r0, r6, #1	@, tmp167,
	mov	r1, r5	@, pu8Data
	mov	r3, #85	@ tmp168,
	strb	r3, [fp, #-48]	@ tmp168, au8CrcInput
	bl	memcpy	@
	adds	r4, r4, #1	@ u32DataLen.7290, u32DataLen,
	moveq	r0, #255	@ crc_value,
	beq	.L1750	@,
	movw	r1, #:lower16:-32763	@ tmp235,
	movt	r1, #:upper16:-32763	@ tmp235,
	mov	r3, #0	@ data_index,
	mov	r0, #255	@ crc_value,
.L1761:
	sub	ip, fp, #28	@,,
	add	lr, ip, r3	@ tmp177,, data_index
	ldrb	r2, [lr, #-20]	@ zero_extendqisi2	@ tmp180, au8CrcInput
	eor	ip, r0, r2, asl #8	@, crc_value.7291, crc_value, tmp180,
	tst	ip, #32768	@ crc_value.7291,
	mov	r0, ip, asl #17	@ temp.7294, crc_value.7291,
	mov	lr, r0, lsr #17	@ temp.7294, temp.7294,
	mov	r2, lr, asl #1	@ crc_value.7295, temp.7294,
	eorne	r2, r2, r1	@ tmp190, crc_value.7295, tmp235
	uxthne	r2, r2	@ crc_value.7295, tmp190
	tst	r2, #32768	@ crc_value.7295,
	mov	ip, r2, asl #17	@ temp.7297, crc_value.7295,
	mov	r0, ip, lsr #17	@ temp.7297, temp.7297,
	mov	lr, r0, asl #1	@ crc_value.7298, temp.7297,
	eorne	lr, lr, r1	@ tmp196, crc_value.7298, tmp235
	uxthne	lr, lr	@ crc_value.7298, tmp196
	tst	lr, #32768	@ crc_value.7298,
	mov	r2, lr, asl #17	@ temp.7300, crc_value.7298,
	mov	ip, r2, lsr #17	@ temp.7300, temp.7300,
	mov	r0, ip, asl #1	@ crc_value.7301, temp.7300,
	eorne	r0, r0, r1	@ tmp202, crc_value.7301, tmp235
	uxthne	r0, r0	@ crc_value.7301, tmp202
	tst	r0, #32768	@ crc_value.7301,
	mov	lr, r0, asl #17	@ temp.7303, crc_value.7301,
	mov	r2, lr, lsr #17	@ temp.7303, temp.7303,
	mov	ip, r2, asl #1	@ crc_value.7304, temp.7303,
	eorne	ip, ip, r1	@ tmp208, crc_value.7304, tmp235
	uxthne	ip, ip	@ crc_value.7304, tmp208
	tst	ip, #32768	@ crc_value.7304,
	mov	lr, ip, asl #17	@ temp.7306, crc_value.7304,
	mov	r0, lr, lsr #17	@ temp.7306, temp.7306,
	mov	ip, r0, asl #1	@ crc_value.7307, temp.7306,
	eorne	ip, ip, r1	@ tmp214, crc_value.7307, tmp235
	uxthne	ip, ip	@ crc_value.7307, tmp214
	tst	ip, #32768	@ crc_value.7307,
	mov	r2, ip, asl #17	@ temp.7309, crc_value.7307,
	mov	lr, r2, lsr #17	@ temp.7309, temp.7309,
	mov	r0, lr, asl #1	@ crc_value.7310, temp.7309,
	eorne	r0, r0, r1	@ tmp220, crc_value.7310, tmp235
	uxthne	r0, r0	@ crc_value.7310, tmp220
	tst	r0, #32768	@ crc_value.7310,
	mov	ip, r0, asl #17	@ temp.7312, crc_value.7310,
	mov	r2, ip, lsr #17	@ temp.7312, temp.7312,
	mov	lr, r2, asl #1	@ crc_value.7313, temp.7312,
	add	r2, r3, #1	@ tmp233, data_index,
	eorne	lr, lr, r1	@ tmp226, crc_value.7313, tmp235
	uxth	r3, r2	@ data_index, tmp233
	uxthne	lr, lr	@ crc_value.7313, tmp226
	tst	lr, #32768	@ crc_value.7313,
	mov	ip, lr, asl #17	@ D.19726, crc_value.7313,
	mov	r0, ip, lsr #17	@ D.19726, D.19726,
	mov	r0, r0, asl #1	@ crc_value, D.19726,
	eorne	r0, r0, r1	@ tmp232, crc_value, tmp235
	uxthne	r0, r0	@ crc_value, tmp232
	cmp	r4, r3	@ u32DataLen.7290, data_index
	bhi	.L1761	@,
	b	.L1750	@
.L1764:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1765	@,
	mov	r3, #34	@,
	movw	ip, #:lower16:.LC27	@ tmp162,
	movt	ip, #:upper16:.LC27	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mov	r0, #255	@ crc_value,
	b	.L1750	@
.L1766:
	.align	2
.L1765:
	.word	.LANCHOR1-3392
	.fnend
	.size	DRV_CA_OTP_CalculateCRC16, .-DRV_CA_OTP_CalculateCRC16
	.align	2
	.global	DRV_CA_OTP_V200_SetOEMRootKey
	.type	DRV_CA_OTP_V200_SetOEMRootKey, %function
DRV_CA_OTP_V200_SetOEMRootKey:
	.fnstart
.LFB862:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1769	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp283,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp283,
	mov	r0, #16	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #131072	@,
	bne	.L1779	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #512	@,
	bne	.L1780	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #208	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #209	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #210	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #211	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #212	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #213	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #214	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #215	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp196,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp196,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #216	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #217	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #218	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #219	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #220	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #221	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #222	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #223	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1772	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1065	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1781	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1065	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp244,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp244,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1782	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #512	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1783	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #512	@,
	beq	.L1784	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #131072	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1769	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3365	@,
	movw	ip, #:lower16:.LC0	@ tmp281,
	movt	ip, #:upper16:.LC0	@ tmp281,
	str	ip, [sp, #0]	@ tmp281,
	bl	HI_LogOut	@
.L1769:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1772:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3320	@,
	movw	lr, #:lower16:.LC0	@ tmp234,
	movt	lr, #:upper16:.LC0	@ tmp234,
	str	lr, [sp, #0]	@ tmp234,
	bl	HI_LogOut	@
	b	.L1769	@
.L1783:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3348	@,
	movw	lr, #:lower16:.LC32	@ tmp261,
	movt	lr, #:upper16:.LC32	@ tmp261,
	str	lr, [sp, #0]	@ tmp261,
	bl	HI_LogOut	@
	b	.L1769	@
.L1781:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3331	@,
	movw	ip, #:lower16:.LC31	@ tmp242,
	movt	ip, #:upper16:.LC31	@ tmp242,
	str	ip, [sp, #0]	@ tmp242,
	bl	HI_LogOut	@
	b	.L1769	@
.L1779:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3301	@,
	movw	ip, #:lower16:.LC29	@ tmp155,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC29	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1769	@
.L1782:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3337	@,
	movw	lr, #:lower16:.LC31	@ tmp250,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp250,
	str	lr, [sp, #0]	@ tmp250,
	bl	HI_LogOut	@
	b	.L1769	@
.L1780:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3310	@,
	movw	lr, #:lower16:.LC30	@ tmp166,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L1769	@
.L1784:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1785	@,
	movw	r3, #3355	@,
	movw	ip, #:lower16:.LC33	@ tmp273,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp273,
	str	ip, [sp, #0]	@ tmp273,
	bl	HI_LogOut	@
	b	.L1769	@
.L1786:
	.align	2
.L1785:
	.word	.LANCHOR1-3364
	.fnend
	.size	DRV_CA_OTP_V200_SetOEMRootKey, .-DRV_CA_OTP_V200_SetOEMRootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetMISCRootKey
	.type	DRV_CA_OTP_V200_SetMISCRootKey, %function
DRV_CA_OTP_V200_SetMISCRootKey:
	.fnstart
.LFB859:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1789	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp283,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp283,
	mov	r0, #16	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ubfx	r1, r0, #8, #8	@ tmp148,,,
	and	r3, r1, #128	@ tmp150, tmp148,
	cmp	r3, #0	@ tmp150,
	bne	.L1799	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	bic	r0, r0, #127	@ tmp161,,
	tst	r0, #255	@ tmp161
	bne	.L1800	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #176	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r2, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #177	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #178	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r4, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #179	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #180	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #181	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #182	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r3, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #183	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp196,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp196,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #184	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #185	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #186	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #187	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r3, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #188	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #189	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #190	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r4, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #191	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1792	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1063	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1801	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1063	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp244,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp244,
	ldr	r2, [r3, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r2	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1802	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #128	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1803	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r3, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	bic	r0, r0, #127	@ tmp267,,
	tst	r0, #255	@ tmp267
	beq	.L1804	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #32768	@,
	ldr	r2, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r2	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1789	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3212	@,
	movw	ip, #:lower16:.LC0	@ tmp281,
	movt	ip, #:upper16:.LC0	@ tmp281,
	str	ip, [sp, #0]	@ tmp281,
	bl	HI_LogOut	@
.L1789:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1792:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3167	@,
	movw	lr, #:lower16:.LC0	@ tmp234,
	movt	lr, #:upper16:.LC0	@ tmp234,
	str	lr, [sp, #0]	@ tmp234,
	bl	HI_LogOut	@
	b	.L1789	@
.L1803:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3195	@,
	movw	lr, #:lower16:.LC32	@ tmp261,
	movt	lr, #:upper16:.LC32	@ tmp261,
	str	lr, [sp, #0]	@ tmp261,
	bl	HI_LogOut	@
	b	.L1789	@
.L1801:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3178	@,
	movw	ip, #:lower16:.LC31	@ tmp242,
	movt	ip, #:upper16:.LC31	@ tmp242,
	str	ip, [sp, #0]	@ tmp242,
	bl	HI_LogOut	@
	b	.L1789	@
.L1799:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3148	@,
	movw	ip, #:lower16:.LC34	@ tmp155,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC34	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1789	@
.L1802:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	mov	r3, #3184	@,
	movw	lr, #:lower16:.LC31	@ tmp250,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp250,
	str	lr, [sp, #0]	@ tmp250,
	bl	HI_LogOut	@
	b	.L1789	@
.L1800:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3157	@,
	movw	r4, #:lower16:.LC30	@ tmp166,
	movt	r4, #:upper16:.LC30	@ tmp166,
	str	r4, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret,
	b	.L1789	@
.L1804:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1805	@,
	movw	r3, #3202	@,
	movw	ip, #:lower16:.LC33	@ tmp273,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp273,
	str	ip, [sp, #0]	@ tmp273,
	bl	HI_LogOut	@
	b	.L1789	@
.L1806:
	.align	2
.L1805:
	.word	.LANCHOR1-3332
	.fnend
	.size	DRV_CA_OTP_V200_SetMISCRootKey, .-DRV_CA_OTP_V200_SetMISCRootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetESCK
	.type	DRV_CA_OTP_V200_SetESCK, %function
DRV_CA_OTP_V200_SetESCK:
	.fnstart
.LFB856:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1809	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp283,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp283,
	mov	r0, #16	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #4	@,
	bne	.L1819	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #32	@,
	bne	.L1820	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #112	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #113	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #114	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #115	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #116	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #117	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #118	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #119	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp196,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp196,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #120	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #121	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #122	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #123	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #124	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #125	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #126	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #127	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1812	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1061	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1821	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1061	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp244,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp244,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1822	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #32	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1823	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #32	@,
	beq	.L1824	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	mov	r1, #4	@,
	ldr	r3, [lr, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1809	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3060	@,
	movw	ip, #:lower16:.LC0	@ tmp281,
	movt	ip, #:upper16:.LC0	@ tmp281,
	str	ip, [sp, #0]	@ tmp281,
	bl	HI_LogOut	@
.L1809:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1812:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3015	@,
	movw	lr, #:lower16:.LC0	@ tmp234,
	movt	lr, #:upper16:.LC0	@ tmp234,
	str	lr, [sp, #0]	@ tmp234,
	bl	HI_LogOut	@
	b	.L1809	@
.L1823:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3043	@,
	movw	lr, #:lower16:.LC32	@ tmp261,
	movt	lr, #:upper16:.LC32	@ tmp261,
	str	lr, [sp, #0]	@ tmp261,
	bl	HI_LogOut	@
	b	.L1809	@
.L1821:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3026	@,
	movw	ip, #:lower16:.LC31	@ tmp242,
	movt	ip, #:upper16:.LC31	@ tmp242,
	str	ip, [sp, #0]	@ tmp242,
	bl	HI_LogOut	@
	b	.L1809	@
.L1819:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #2996	@,
	movw	ip, #:lower16:.LC35	@ tmp155,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC35	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L1809	@
.L1822:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3032	@,
	movw	lr, #:lower16:.LC31	@ tmp250,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp250,
	str	lr, [sp, #0]	@ tmp250,
	bl	HI_LogOut	@
	b	.L1809	@
.L1820:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3005	@,
	movw	lr, #:lower16:.LC30	@ tmp166,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L1809	@
.L1824:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1825	@,
	movw	r3, #3050	@,
	movw	ip, #:lower16:.LC33	@ tmp273,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp273,
	str	ip, [sp, #0]	@ tmp273,
	bl	HI_LogOut	@
	b	.L1809	@
.L1826:
	.align	2
.L1825:
	.word	.LANCHOR1-3300
	.fnend
	.size	DRV_CA_OTP_V200_SetESCK, .-DRV_CA_OTP_V200_SetESCK
	.align	2
	.global	DRV_CA_OTP_V200_SetSPRootKey
	.type	DRV_CA_OTP_V200_SetSPRootKey, %function
DRV_CA_OTP_V200_SetSPRootKey:
	.fnstart
.LFB850:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1829	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp287,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp287,
	mov	r0, #20	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #1024	@,
	bne	.L1839	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #4	@,
	bne	.L1840	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #64	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #65	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #66	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #67	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #68	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #69	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #70	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #71	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp197,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp197,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #72	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #73	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #74	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #75	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #76	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #77	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #78	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #79	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1832	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1058	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1841	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1058	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp245,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp245,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1842	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #4	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1843	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #4	@,
	beq	.L1844	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #20	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #1024	@ DataLock_1,,
	mov	r0, #20	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1829	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2738	@,
	movw	ip, #:lower16:.LC37	@ tmp285,
	movt	ip, #:upper16:.LC37	@ tmp285,
	str	ip, [sp, #0]	@ tmp285,
	bl	HI_LogOut	@
.L1829:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1832:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2691	@,
	movw	lr, #:lower16:.LC0	@ tmp235,
	movt	lr, #:upper16:.LC0	@ tmp235,
	str	lr, [sp, #0]	@ tmp235,
	bl	HI_LogOut	@
	b	.L1829	@
.L1843:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2719	@,
	movw	lr, #:lower16:.LC32	@ tmp262,
	movt	lr, #:upper16:.LC32	@ tmp262,
	str	lr, [sp, #0]	@ tmp262,
	bl	HI_LogOut	@
	b	.L1829	@
.L1841:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2702	@,
	movw	ip, #:lower16:.LC31	@ tmp243,
	movt	ip, #:upper16:.LC31	@ tmp243,
	str	ip, [sp, #0]	@ tmp243,
	bl	HI_LogOut	@
	b	.L1829	@
.L1839:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	mov	r3, #2672	@,
	movw	ip, #:lower16:.LC36	@ tmp156,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC36	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1829	@
.L1842:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2708	@,
	movw	lr, #:lower16:.LC31	@ tmp251,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp251,
	str	lr, [sp, #0]	@ tmp251,
	bl	HI_LogOut	@
	b	.L1829	@
.L1840:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2681	@,
	movw	lr, #:lower16:.LC30	@ tmp167,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp167,
	str	lr, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1829	@
.L1844:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1845	@,
	movw	r3, #2726	@,
	movw	ip, #:lower16:.LC33	@ tmp274,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp274,
	str	ip, [sp, #0]	@ tmp274,
	bl	HI_LogOut	@
	b	.L1829	@
.L1846:
	.align	2
.L1845:
	.word	.LANCHOR1-3276
	.fnend
	.size	DRV_CA_OTP_V200_SetSPRootKey, .-DRV_CA_OTP_V200_SetSPRootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetR2RRootKey
	.type	DRV_CA_OTP_V200_SetR2RRootKey, %function
DRV_CA_OTP_V200_SetR2RRootKey:
	.fnstart
.LFB848:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1849	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp287,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp287,
	mov	r0, #20	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #512	@,
	bne	.L1859	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2	@,
	bne	.L1860	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #48	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #49	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #50	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #51	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #52	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #53	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #54	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #55	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp197,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp197,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #56	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #57	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #58	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #59	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #60	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #61	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #62	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #63	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1852	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1057	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1861	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1057	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp245,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp245,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1862	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #2	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1863	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2	@,
	beq	.L1864	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #20	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #512	@ DataLock_1,,
	mov	r0, #20	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1849	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2609	@,
	movw	ip, #:lower16:.LC40	@ tmp285,
	movt	ip, #:upper16:.LC40	@ tmp285,
	str	ip, [sp, #0]	@ tmp285,
	bl	HI_LogOut	@
.L1849:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1852:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2562	@,
	movw	lr, #:lower16:.LC39	@ tmp235,
	movt	lr, #:upper16:.LC39	@ tmp235,
	str	lr, [sp, #0]	@ tmp235,
	bl	HI_LogOut	@
	b	.L1849	@
.L1863:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2590	@,
	movw	lr, #:lower16:.LC32	@ tmp262,
	movt	lr, #:upper16:.LC32	@ tmp262,
	str	lr, [sp, #0]	@ tmp262,
	bl	HI_LogOut	@
	b	.L1849	@
.L1861:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2573	@,
	movw	ip, #:lower16:.LC31	@ tmp243,
	movt	ip, #:upper16:.LC31	@ tmp243,
	str	ip, [sp, #0]	@ tmp243,
	bl	HI_LogOut	@
	b	.L1849	@
.L1859:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2542	@,
	movw	ip, #:lower16:.LC38	@ tmp156,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC38	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1849	@
.L1862:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2579	@,
	movw	lr, #:lower16:.LC31	@ tmp251,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp251,
	str	lr, [sp, #0]	@ tmp251,
	bl	HI_LogOut	@
	b	.L1849	@
.L1860:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2552	@,
	movw	lr, #:lower16:.LC30	@ tmp167,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp167,
	str	lr, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1849	@
.L1864:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1865	@,
	movw	r3, #2597	@,
	movw	ip, #:lower16:.LC33	@ tmp274,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp274,
	str	ip, [sp, #0]	@ tmp274,
	bl	HI_LogOut	@
	b	.L1849	@
.L1866:
	.align	2
.L1865:
	.word	.LANCHOR1-3244
	.fnend
	.size	DRV_CA_OTP_V200_SetR2RRootKey, .-DRV_CA_OTP_V200_SetR2RRootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA3RootKey
	.type	DRV_CA_OTP_V200_SetCSA3RootKey, %function
DRV_CA_OTP_V200_SetCSA3RootKey:
	.fnstart
.LFB846:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1869	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp287,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp287,
	mov	r0, #20	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #256	@,
	bne	.L1879	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #8	@,
	bne	.L1880	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #80	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #81	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #82	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #83	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #84	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #85	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #86	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #87	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp197,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp197,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #88	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #89	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #90	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #91	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #92	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #93	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #94	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #95	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1872	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	movw	r0, #1059	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1881	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1059	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp245,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp245,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1882	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #8	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1883	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #8	@,
	beq	.L1884	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #20	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #256	@ DataLock_1,,
	mov	r0, #20	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1869	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2479	@,
	movw	ip, #:lower16:.LC42	@ tmp285,
	movt	ip, #:upper16:.LC42	@ tmp285,
	str	ip, [sp, #0]	@ tmp285,
	bl	HI_LogOut	@
.L1869:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1872:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2433	@,
	movw	lr, #:lower16:.LC0	@ tmp235,
	movt	lr, #:upper16:.LC0	@ tmp235,
	str	lr, [sp, #0]	@ tmp235,
	bl	HI_LogOut	@
	b	.L1869	@
.L1883:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2461	@,
	movw	lr, #:lower16:.LC32	@ tmp262,
	movt	lr, #:upper16:.LC32	@ tmp262,
	str	lr, [sp, #0]	@ tmp262,
	bl	HI_LogOut	@
	b	.L1869	@
.L1881:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2444	@,
	movw	ip, #:lower16:.LC31	@ tmp243,
	movt	ip, #:upper16:.LC31	@ tmp243,
	str	ip, [sp, #0]	@ tmp243,
	bl	HI_LogOut	@
	b	.L1869	@
.L1879:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2414	@,
	movw	ip, #:lower16:.LC41	@ tmp156,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC41	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1869	@
.L1882:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2450	@,
	movw	lr, #:lower16:.LC31	@ tmp251,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp251,
	str	lr, [sp, #0]	@ tmp251,
	bl	HI_LogOut	@
	b	.L1869	@
.L1880:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2423	@,
	movw	lr, #:lower16:.LC30	@ tmp167,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp167,
	str	lr, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1869	@
.L1884:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1885	@,
	movw	r3, #2468	@,
	movw	ip, #:lower16:.LC33	@ tmp274,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp274,
	str	ip, [sp, #0]	@ tmp274,
	bl	HI_LogOut	@
	b	.L1869	@
.L1886:
	.align	2
.L1885:
	.word	.LANCHOR1-3212
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA3RootKey, .-DRV_CA_OTP_V200_SetCSA3RootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetCSA2RootKey
	.type	DRV_CA_OTP_V200_SetCSA2RootKey, %function
DRV_CA_OTP_V200_SetCSA2RootKey:
	.fnstart
.LFB844:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r5, r0, #0	@ pu8Key, pu8Key
	movweq	r4, #:lower16:-2142371835	@ ret,
	movteq	r4, #:upper16:-2142371835	@ ret,
	beq	.L1889	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp287,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp287,
	mov	r0, #16	@,
	ldr	r1, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #1	@,
	bne	.L1899	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #1	@,
	bne	.L1900	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #32	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #33	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #34	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #35	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #36	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #37	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #38	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #39	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp197,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp197,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #40	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r3, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #41	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #42	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #43	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	ip, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #44	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r4, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #45	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #46	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #47	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1892	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pu8Key
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r1, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r7, r0	@ u8CheckSum,
	mov	r0, #1056	@,
	mov	r1, r7	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L1901	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1056	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp245,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp245,
	ldr	r3, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r3	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r7, r0	@ u8CheckSum,
	bne	.L1902	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	ip, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	ip	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #1	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r4	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	bne	.L1903	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r4, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #1	@,
	beq	.L1904	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #16	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #1	@ DataLock_0,,
	mov	r0, #16	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret,
	beq	.L1889	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2351	@,
	movw	ip, #:lower16:.LC0	@ tmp285,
	movt	ip, #:upper16:.LC0	@ tmp285,
	str	ip, [sp, #0]	@ tmp285,
	bl	HI_LogOut	@
.L1889:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1892:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	mov	r3, #2304	@,
	movw	lr, #:lower16:.LC0	@ tmp235,
	movt	lr, #:upper16:.LC0	@ tmp235,
	str	lr, [sp, #0]	@ tmp235,
	bl	HI_LogOut	@
	b	.L1889	@
.L1903:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2332	@,
	movw	lr, #:lower16:.LC32	@ tmp262,
	movt	lr, #:upper16:.LC32	@ tmp262,
	str	lr, [sp, #0]	@ tmp262,
	bl	HI_LogOut	@
	b	.L1889	@
.L1901:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2315	@,
	movw	ip, #:lower16:.LC31	@ tmp243,
	movt	ip, #:upper16:.LC31	@ tmp243,
	str	ip, [sp, #0]	@ tmp243,
	bl	HI_LogOut	@
	b	.L1889	@
.L1899:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2285	@,
	movw	ip, #:lower16:.LC43	@ tmp156,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC43	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L1889	@
.L1902:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2321	@,
	movw	lr, #:lower16:.LC31	@ tmp251,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC31	@ tmp251,
	str	lr, [sp, #0]	@ tmp251,
	bl	HI_LogOut	@
	b	.L1889	@
.L1900:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2294	@,
	movw	lr, #:lower16:.LC30	@ tmp167,
	mvn	r4, #0	@ ret,
	movt	lr, #:upper16:.LC30	@ tmp167,
	str	lr, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L1889	@
.L1904:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1905	@,
	movw	r3, #2339	@,
	movw	ip, #:lower16:.LC33	@ tmp274,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC33	@ tmp274,
	str	ip, [sp, #0]	@ tmp274,
	bl	HI_LogOut	@
	b	.L1889	@
.L1906:
	.align	2
.L1905:
	.word	.LANCHOR1-3180
	.fnend
	.size	DRV_CA_OTP_V200_SetCSA2RootKey, .-DRV_CA_OTP_V200_SetCSA2RootKey
	.align	2
	.global	DRV_CA_OTP_V200_SetJtagKey
	.type	DRV_CA_OTP_V200_SetJtagKey, %function
DRV_CA_OTP_V200_SetJtagKey:
	.fnstart
.LFB852:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r6, r0, #0	@ pu8Key, pu8Key
	mov	r3, #0	@ tmp147,
	str	r3, [fp, #-32]	@ tmp147, u32ChipID
	beq	.L1920	@,
	sub	r0, fp, #32	@,,
	bl	DRV_CA_OTP_V200_GetChipId	@
	cmp	r0, #0	@,
	movwne	r4, #:lower16:-2142371835	@ ret.8076,
	movtne	r4, #:upper16:-2142371835	@ ret.8076,
	beq	.L1921	@,
.L1909:
	mov	r0, r4	@, ret.8076
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L1921:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp270,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp270,
	mov	r0, #20	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #2048	@,
	bne	.L1922	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r3, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r3	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #16	@,
	bne	.L1923	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #96	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@,* pu8Key
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #97	@,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #98	@,
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #99	@,
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #100	@,
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #101	@,
	ldrb	r1, [r6, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #102	@,
	ldrb	r1, [r6, #6]	@ zero_extendqisi2	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp200,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp200,
	ldr	r3, [ip, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #103	@,
	ldrb	r1, [r6, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1913	@,
	sub	r4, fp, #48	@ tmp211,,
	mov	r1, #16	@,
	mov	r0, r4	@, tmp211
	bl	__memzero	@
	mov	r1, r6	@, pu8Key
	mov	r2, #8	@,
	mov	r0, r4	@, tmp211
	bl	memcpy	@
	ldr	r3, [fp, #-32]	@ u32ChipID, u32ChipID
	mov	r0, r4	@, tmp211
	mov	r1, #16	@,
	str	r3, [fp, #-40]	@ u32ChipID,
	bl	DRV_CA_OTP_CalculateCRC16	@
	ldr	r6, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r6, #12]	@ <variable>.HAL_OTP_V200_WriteByte, <variable>.HAL_OTP_V200_WriteByte
	uxtb	r6, r0	@ u8CheckSum,
	movw	r0, #1060	@,
	mov	r1, r6	@, u8CheckSum
	blx	r4	@ <variable>.HAL_OTP_V200_WriteByte
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1924	@,
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	movw	r0, #1060	@,
	ldr	r1, [r2, #4]	@ <variable>.HAL_OTP_V200_ReadByte, <variable>.HAL_OTP_V200_ReadByte
	blx	r1	@ <variable>.HAL_OTP_V200_ReadByte
	cmp	r6, r0	@ u8CheckSum,
	bne	.L1925	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r1, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r1	@ <variable>.HAL_OTP_V200_Read
	ldr	r4, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r4, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #16	@ ChecksumLock,,
	mov	r0, #1072	@,
	blx	r3	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret.8076,
	bne	.L1926	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #1072	@,
	ldr	r2, [r3, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	tst	r0, #16	@,
	beq	.L1927	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #20	@,
	ldr	r2, [lr, #0]	@ <variable>.HAL_OTP_V200_Read, <variable>.HAL_OTP_V200_Read
	blx	r2	@ <variable>.HAL_OTP_V200_Read
	ldr	r1, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r1, #8]	@ <variable>.HAL_OTP_V200_Write, <variable>.HAL_OTP_V200_Write
	orr	r1, r0, #2048	@ DataLock_1,,
	mov	r0, #20	@,
	blx	ip	@ <variable>.HAL_OTP_V200_Write
	subs	r4, r0, #0	@ ret.8076,
	beq	.L1909	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	mov	r3, #2880	@,
	movw	ip, #:lower16:.LC48	@ tmp268,
	movt	ip, #:upper16:.LC48	@ tmp268,
	str	ip, [sp, #0]	@ tmp268,
	bl	HI_LogOut	@
	b	.L1909	@
.L1924:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2844	@,
	movw	lr, #:lower16:.LC31	@ tmp227,
	movt	lr, #:upper16:.LC31	@ tmp227,
	str	lr, [sp, #0]	@ tmp227,
	bl	HI_LogOut	@
	b	.L1909	@
.L1920:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2796	@,
	movw	ip, #:lower16:.LC44	@ tmp151,
	mvn	r4, #0	@ ret.8076,
	movt	ip, #:upper16:.LC44	@ tmp151,
	str	ip, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	b	.L1909	@
.L1913:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2829	@,
	movw	ip, #:lower16:.LC46	@ tmp210,
	movt	ip, #:upper16:.LC46	@ tmp210,
	str	ip, [sp, #0]	@ tmp210,
	bl	HI_LogOut	@
	b	.L1909	@
.L1926:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2861	@,
	movw	ip, #:lower16:.LC47	@ tmp246,
	movt	ip, #:upper16:.LC47	@ tmp246,
	str	ip, [sp, #0]	@ tmp246,
	bl	HI_LogOut	@
	b	.L1909	@
.L1925:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2850	@,
	movw	ip, #:lower16:.LC31	@ tmp235,
	mvn	r4, #0	@ ret.8076,
	movt	ip, #:upper16:.LC31	@ tmp235,
	str	ip, [sp, #0]	@ tmp235,
	bl	HI_LogOut	@
	b	.L1909	@
.L1922:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2810	@,
	movw	r4, #:lower16:.LC45	@ tmp163,
	movt	r4, #:upper16:.LC45	@ tmp163,
	str	r4, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret.8076,
	b	.L1909	@
.L1923:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2819	@,
	movw	ip, #:lower16:.LC30	@ tmp174,
	mvn	r4, #0	@ ret.8076,
	movt	ip, #:upper16:.LC30	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L1909	@
.L1927:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L1928	@,
	movw	r3, #2868	@,
	movw	r4, #:lower16:.LC47	@ tmp257,
	movt	r4, #:upper16:.LC47	@ tmp257,
	str	r4, [sp, #0]	@ tmp257,
	bl	HI_LogOut	@
	mvn	r4, #0	@ ret.8076,
	b	.L1909	@
.L1929:
	.align	2
.L1928:
	.word	.LANCHOR1-3148
	.fnend
	.size	DRV_CA_OTP_V200_SetJtagKey, .-DRV_CA_OTP_V200_SetJtagKey
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LANCHOR1 = . + 8184
	.type	__func__.25017, %object
	.size	__func__.25017, 37
__func__.25017:
	.ascii	"DRV_CA_OTP_V200_SetDcasKLDisableLock\000"
	.space	3
	.type	__func__.24542, %object
	.size	__func__.24542, 37
__func__.24542:
	.ascii	"DRV_CA_OTP_V200_SetBlMSIDCheckEnLock\000"
	.space	3
	.type	__func__.24529, %object
	.size	__func__.24529, 40
__func__.24529:
	.ascii	"DRV_CA_OTP_V200_SetVersionIdCheckEnLock\000"
	.type	__func__.24516, %object
	.size	__func__.24516, 40
__func__.24516:
	.ascii	"DRV_CA_OTP_V200_SetWakeupDDRCheckEnLock\000"
	.type	__func__.24503, %object
	.size	__func__.24503, 38
__func__.24503:
	.ascii	"DRV_CA_OTP_V200_SetRuntimeCheckEnLock\000"
	.space	2
	.type	__func__.24490, %object
	.size	__func__.24490, 39
__func__.24490:
	.ascii	"DRV_CA_OTP_V200_SetOtpGlobalLockEnLock\000"
	.space	1
	.type	__func__.24477, %object
	.size	__func__.24477, 37
__func__.24477:
	.ascii	"DRV_CA_OTP_V200_SetDDRScrambleEnLock\000"
	.space	3
	.type	__func__.24464, %object
	.size	__func__.24464, 36
__func__.24464:
	.ascii	"DRV_CA_OTP_V200_SetBloadModeSelLock\000"
	.type	__func__.24451, %object
	.size	__func__.24451, 38
__func__.24451:
	.ascii	"DRV_CA_OTP_V200_SetCSA3HardOnlyEnLock\000"
	.space	2
	.type	__func__.24438, %object
	.size	__func__.24438, 33
__func__.24438:
	.ascii	"DRV_CA_OTP_V200_SetVersionIdLock\000"
	.space	3
	.type	__func__.24425, %object
	.size	__func__.24425, 35
__func__.24425:
	.ascii	"DRV_CA_OTP_V200_SetSelftestDisable\000"
	.space	1
	.type	__func__.24393, %object
	.size	__func__.24393, 33
__func__.24393:
	.ascii	"DRV_CA_OTP_V200_SetBlMSIDCheckEn\000"
	.space	3
	.type	__func__.24360, %object
	.size	__func__.24360, 36
__func__.24360:
	.ascii	"DRV_CA_OTP_V200_SetVersionIdCheckEn\000"
	.type	__func__.24317, %object
	.size	__func__.24317, 31
__func__.24317:
	.ascii	"DRV_CA_OTP_V200_SetMiscKlLevel\000"
	.space	1
	.type	__func__.24285, %object
	.size	__func__.24285, 36
__func__.24285:
	.ascii	"DRV_CA_OTP_V200_SetWakeupDDRCheckEn\000"
	.type	__func__.24252, %object
	.size	__func__.24252, 34
__func__.24252:
	.ascii	"DRV_CA_OTP_V200_SetRuntimeCheckEn\000"
	.space	2
	.type	__func__.24219, %object
	.size	__func__.24219, 35
__func__.24219:
	.ascii	"DRV_CA_OTP_V200_SetOtpGlobalLockEn\000"
	.space	1
	.type	__func__.24054, %object
	.size	__func__.24054, 36
__func__.24054:
	.ascii	"DRV_CA_OTP_V200_SetTSCSA3HardonlyEn\000"
	.type	__func__.24021, %object
	.size	__func__.24021, 34
__func__.24021:
	.ascii	"DRV_CA_OTP_V200_SetTSNVHardonlyEn\000"
	.space	2
	.type	__func__.23944, %object
	.size	__func__.23944, 35
__func__.23944:
	.ascii	"DRV_CA_OTP_V200_SetTSSPEHardonlyEn\000"
	.space	1
	.type	__func__.23911, %object
	.size	__func__.23911, 36
__func__.23911:
	.ascii	"DRV_CA_OTP_V200_SetTSCsa2HardonlyEn\000"
	.type	__func__.23878, %object
	.size	__func__.23878, 30
__func__.23878:
	.ascii	"DRV_CA_OTP_V200_SetBloadDecEn\000"
	.space	2
	.type	__func__.23801, %object
	.size	__func__.23801, 35
__func__.23801:
	.ascii	"DRV_CA_OTP_V200_SetBloadEncDisable\000"
	.space	1
	.type	__func__.23768, %object
	.size	__func__.23768, 33
__func__.23768:
	.ascii	"DRV_CA_OTP_V200_SetDcasKLDisable\000"
	.space	3
	.type	__func__.23691, %object
	.size	__func__.23691, 33
__func__.23691:
	.ascii	"DRV_CA_OTP_V200_SetTSKLNVDisable\000"
	.space	3
	.type	__func__.23658, %object
	.size	__func__.23658, 38
__func__.23658:
	.ascii	"DRV_CA_OTP_V200_SetLinkProtectDisable\000"
	.space	2
	.type	__func__.23631, %object
	.size	__func__.23631, 31
__func__.23631:
	.ascii	"DRV_CA_OTP_V200_SetRigthCtrlEn\000"
	.space	1
	.type	__func__.23605, %object
	.size	__func__.23605, 32
__func__.23605:
	.ascii	"DRV_CA_OTP_V200_SetDebugDisable\000"
	.type	__func__.23579, %object
	.size	__func__.23579, 35
__func__.23579:
	.ascii	"DRV_CA_OTP_V200_SetJtagReadDisable\000"
	.space	1
	.type	__func__.23553, %object
	.size	__func__.23553, 32
__func__.23553:
	.ascii	"DRV_CA_OTP_V200_SetCSA3Deactive\000"
	.type	__func__.23527, %object
	.size	__func__.23527, 35
__func__.23527:
	.ascii	"DRV_CA_OTP_V200_SetBootSelCtrlLock\000"
	.space	1
	.type	__func__.23482, %object
	.size	__func__.23482, 31
__func__.23482:
	.ascii	"DRV_CA_OTP_V200_SetBootSelCtrl\000"
	.space	1
	.type	__func__.23455, %object
	.size	__func__.23455, 38
__func__.23455:
	.ascii	"DRV_CA_OTP_V200_SetSecureChipFlagLock\000"
	.space	2
	.type	__func__.23429, %object
	.size	__func__.23429, 35
__func__.23429:
	.ascii	"DRV_CA_OTP_V200_SetLpcMasterEnLock\000"
	.space	1
	.type	__func__.23403, %object
	.size	__func__.23403, 29
__func__.23403:
	.ascii	"DRV_CA_OTP_V200_SetLpcEnLock\000"
	.space	3
	.type	__func__.23377, %object
	.size	__func__.23377, 36
__func__.23377:
	.ascii	"DRV_CA_OTP_V200_SetTsOutDisableLock\000"
	.type	__func__.23332, %object
	.size	__func__.23332, 32
__func__.23332:
	.ascii	"DRV_CA_OTP_V200_SetTsOutDisable\000"
	.type	__func__.23069, %object
	.size	__func__.23069, 38
__func__.23069:
	.ascii	"DRV_CA_OTP_V200_SetTSCSA3DeactiveLock\000"
	.space	2
	.type	__func__.23024, %object
	.size	__func__.23024, 34
__func__.23024:
	.ascii	"DRV_CA_OTP_V200_SetTSCSA3Deactive\000"
	.space	2
	.type	__func__.22997, %object
	.size	__func__.22997, 36
__func__.22997:
	.ascii	"DRV_CA_OTP_V200_SetTSSPDeactiveLock\000"
	.type	__func__.22952, %object
	.size	__func__.22952, 32
__func__.22952:
	.ascii	"DRV_CA_OTP_V200_SetTSSPDeactive\000"
	.type	__func__.22925, %object
	.size	__func__.22925, 36
__func__.22925:
	.ascii	"DRV_CA_OTP_V200_SetTSCWDeactiveLock\000"
	.type	__func__.22880, %object
	.size	__func__.22880, 32
__func__.22880:
	.ascii	"DRV_CA_OTP_V200_SetTSCWDeactive\000"
	.type	__func__.22853, %object
	.size	__func__.22853, 34
__func__.22853:
	.ascii	"DRV_CA_OTP_V200_SetCSA3LadderLock\000"
	.space	2
	.type	__func__.22827, %object
	.size	__func__.22827, 32
__func__.22827:
	.ascii	"DRV_CA_OTP_V200_SetSPLadderLock\000"
	.type	__func__.22801, %object
	.size	__func__.22801, 33
__func__.22801:
	.ascii	"DRV_CA_OTP_V200_SetR2RLadderLock\000"
	.space	3
	.type	__func__.22775, %object
	.size	__func__.22775, 33
__func__.22775:
	.ascii	"DRV_CA_OTP_V200_SetDVBLadderLock\000"
	.space	3
	.type	__func__.22749, %object
	.size	__func__.22749, 39
__func__.22749:
	.ascii	"DRV_CA_OTP_V200_SetLowPowerDisableLock\000"
	.space	1
	.type	__func__.22723, %object
	.size	__func__.22723, 32
__func__.22723:
	.ascii	"DRV_CA_OTP_V200_SetSelfbootLock\000"
	.type	__func__.22681, %object
	.size	__func__.22681, 26
__func__.22681:
	.ascii	"DRV_CA_OTP_V200_SetStbSnP\000"
	.space	2
	.type	__func__.22655, %object
	.size	__func__.22655, 26
__func__.22655:
	.ascii	"DRV_CA_OTP_V200_SetMktIdP\000"
	.space	2
	.type	__func__.22629, %object
	.size	__func__.22629, 33
__func__.22629:
	.ascii	"DRV_CA_OTP_V200_SetBootSelLock_1\000"
	.space	3
	.type	__func__.22603, %object
	.size	__func__.22603, 33
__func__.22603:
	.ascii	"DRV_CA_OTP_V200_SetBootSelLock_0\000"
	.space	3
	.type	__func__.22558, %object
	.size	__func__.22558, 31
__func__.22558:
	.ascii	"DRV_CA_OTP_V200_SetLpcMasterEn\000"
	.space	1
	.type	__func__.22512, %object
	.size	__func__.22512, 25
__func__.22512:
	.ascii	"DRV_CA_OTP_V200_SetLpcEn\000"
	.space	3
	.type	__func__.22485, %object
	.size	__func__.22485, 26
__func__.22485:
	.ascii	"DRV_CA_OTP_V200_SetCsa3En\000"
	.space	2
	.type	__func__.22440, %object
	.size	__func__.22440, 35
__func__.22440:
	.ascii	"DRV_CA_OTP_V200_SetLowPowerDisable\000"
	.space	1
	.type	__func__.22344, %object
	.size	__func__.22344, 30
__func__.22344:
	.ascii	"DRV_CA_OTP_V200_SetChipIdLock\000"
	.space	2
	.type	__func__.22289, %object
	.size	__func__.22289, 32
__func__.22289:
	.ascii	"DRV_CA_OTP_V200_SetUniqueChipId\000"
	.type	__func__.22263, %object
	.size	__func__.22263, 26
__func__.22263:
	.ascii	"DRV_CA_OTP_V200_SetChipId\000"
	.space	2
	.type	__func__.22238, %object
	.size	__func__.22238, 27
__func__.22238:
	.ascii	"DRV_CA_OTP_V200_LockRSAKey\000"
	.space	1
	.type	__func__.22215, %object
	.size	__func__.22215, 27
__func__.22215:
	.ascii	"DRV_CA_OTP_V200_GetRSAKeyN\000"
	.space	1
	.type	__func__.22188, %object
	.size	__func__.22188, 27
__func__.22188:
	.ascii	"DRV_CA_OTP_V200_SetRSAKeyN\000"
	.space	1
	.type	__func__.22164, %object
	.size	__func__.22164, 27
__func__.22164:
	.ascii	"DRV_CA_OTP_V200_GetRSAKeyE\000"
	.space	1
	.type	__func__.22137, %object
	.size	__func__.22137, 27
__func__.22137:
	.ascii	"DRV_CA_OTP_V200_SetRSAKeyE\000"
	.space	1
	.type	__func__.22100, %object
	.size	__func__.22100, 30
__func__.22100:
	.ascii	"DRV_CA_OTP_V200_LockOTPTzData\000"
	.space	2
	.type	__func__.22075, %object
	.size	__func__.22075, 29
__func__.22075:
	.ascii	"DRV_CA_OTP_V200_GetOTPTzData\000"
	.space	3
	.type	__func__.21161, %object
	.size	__func__.21161, 30
__func__.21161:
	.ascii	"DRV_CA_OTP_V200_SetSPDeactive\000"
	.space	2
	.type	__func__.21135, %object
	.size	__func__.21135, 31
__func__.21135:
	.ascii	"DRV_CA_OTP_V200_SetR2RDeactive\000"
	.space	1
	.type	__func__.21109, %object
	.size	__func__.21109, 32
__func__.21109:
	.ascii	"DRV_CA_OTP_V200_SetCSA2Deactive\000"
	.type	__func__.21092, %object
	.size	__func__.21092, 30
__func__.21092:
	.ascii	"DRV_CA_OTP_V200_GetTZEnStatus\000"
	.space	2
	.type	__func__.21068, %object
	.size	__func__.21068, 28
__func__.21068:
	.ascii	"DRV_CA_OTP_V200_SetTZEnable\000"
	.type	__func__.21023, %object
	.size	__func__.21023, 34
__func__.21023:
	.ascii	"DRV_CA_OTP_V200_SetSecureChipFlag\000"
	.space	2
	.type	__func__.20996, %object
	.size	__func__.20996, 31
__func__.20996:
	.ascii	"DRV_CA_OTP_V200_SetSecureChipP\000"
	.space	1
	.type	__func__.20945, %object
	.size	__func__.20945, 32
__func__.20945:
	.ascii	"DRV_CA_OTP_V200_SetSecureChipId\000"
	.type	__func__.20894, %object
	.size	__func__.20894, 33
__func__.20894:
	.ascii	"DRV_CA_OTP_V200_SetSPLadderLevel\000"
	.space	3
	.type	__func__.20844, %object
	.size	__func__.20844, 34
__func__.20844:
	.ascii	"DRV_CA_OTP_V200_SetR2RLadderLevel\000"
	.space	2
	.type	__func__.20794, %object
	.size	__func__.20794, 35
__func__.20794:
	.ascii	"DRV_CA_OTP_V200_SetCSA3LadderLevel\000"
	.space	1
	.type	__func__.20744, %object
	.size	__func__.20744, 35
__func__.20744:
	.ascii	"DRV_CA_OTP_V200_SetCSA2LadderLevel\000"
	.space	1
	.type	__func__.20458, %object
	.size	__func__.20458, 28
__func__.20458:
	.ascii	"DRV_CA_OTP_V200_SetBootMode\000"
	.type	__func__.20428, %object
	.size	__func__.20428, 33
__func__.20428:
	.ascii	"DRV_CA_OTP_V200_DisableJtagWrite\000"
	.space	3
	.type	__func__.20367, %object
	.size	__func__.20367, 32
__func__.20367:
	.ascii	"DRV_CA_OTP_V200_DisableSelfBoot\000"
	.type	__func__.20352, %object
	.size	__func__.20352, 36
__func__.20352:
	.ascii	"DRV_CA_OTP_V200_DisableRuntimeCheck\000"
	.type	__func__.20339, %object
	.size	__func__.20339, 35
__func__.20339:
	.ascii	"DRV_CA_OTP_V200_DisableLinkProtect\000"
	.space	1
	.type	__func__.20326, %object
	.size	__func__.20326, 26
__func__.20326:
	.ascii	"DRV_CA_OTP_V200_DisableNV\000"
	.space	2
	.type	__func__.20276, %object
	.size	__func__.20276, 33
__func__.20276:
	.ascii	"DRV_CA_OTP_V200_SetDDRScrambleEn\000"
	.space	3
	.type	__func__.20233, %object
	.size	__func__.20233, 37
__func__.20233:
	.ascii	"DRV_CA_OTP_V200_SetPvrDPAFilterClkEn\000"
	.space	3
	.type	__func__.20191, %object
	.size	__func__.20191, 33
__func__.20191:
	.ascii	"DRV_CA_OTP_V200_SetMcDPAClkSelEn\000"
	.space	3
	.type	__func__.20149, %object
	.size	__func__.20149, 36
__func__.20149:
	.ascii	"DRV_CA_OTP_V200_SetKlDPAFilterClkEn\000"
	.type	__func__.20132, %object
	.size	__func__.20132, 33
__func__.20132:
	.ascii	"DRV_CA_OTP_V200_GetKlDPAClkSelEn\000"
	.space	3
	.type	__func__.20106, %object
	.size	__func__.20106, 33
__func__.20106:
	.ascii	"DRV_CA_OTP_V200_SetKlDPAClkSelEn\000"
	.space	3
	.type	__func__.20074, %object
	.size	__func__.20074, 31
__func__.20074:
	.ascii	"DRV_CA_OTP_V200_SetBootDecMode\000"
	.space	1
	.type	__func__.20060, %object
	.size	__func__.20060, 30
__func__.20060:
	.ascii	"DRV_CA_OTP_V200_LockBootDecEn\000"
	.space	2
	.type	__func__.19999, %object
	.size	__func__.19999, 30
__func__.19999:
	.ascii	"DRV_CA_OTP_V200_LockHardNVSel\000"
	.space	2
	.type	__func__.19986, %object
	.size	__func__.19986, 31
__func__.19986:
	.ascii	"DRV_CA_OTP_V200_LockHardSPESel\000"
	.space	1
	.type	__func__.19973, %object
	.size	__func__.19973, 30
__func__.19973:
	.ascii	"DRV_CA_OTP_V200_LockHardCwSel\000"
	.space	2
	.type	__func__.19928, %object
	.size	__func__.19928, 36
__func__.19928:
	.ascii	"DRV_CA_OTP_V200_Set_UniqueVersionId\000"
	.type	__func__.19872, %object
	.size	__func__.19872, 32
__func__.19872:
	.ascii	"DRV_CA_OTP_V200_Set_UniqueSTBSN\000"
	.type	__func__.19846, %object
	.size	__func__.19846, 26
__func__.19846:
	.ascii	"DRV_CA_OTP_V200_Set_STBSN\000"
	.space	2
	.type	__func__.19790, %object
	.size	__func__.19790, 35
__func__.19790:
	.ascii	"DRV_CA_OTP_V200_Set_UniqueMarketId\000"
	.space	1
	.type	__func__.19764, %object
	.size	__func__.19764, 29
__func__.19764:
	.ascii	"DRV_CA_OTP_V200_Set_MarketId\000"
	.space	3
	.type	__func__.24955, %object
	.size	__func__.24955, 41
__func__.24955:
	.ascii	"DRV_CA_OTP_V200_GetMCK1DESHardonlyEnLock\000"
	.space	3
	.type	__func__.24930, %object
	.size	__func__.24930, 37
__func__.24930:
	.ascii	"DRV_CA_OTP_V200_GetMCK1DESHardonlyEn\000"
	.space	3
	.type	__func__.24905, %object
	.size	__func__.24905, 40
__func__.24905:
	.ascii	"DRV_CA_OTP_V200_GetMCTDESHardonlyEnLock\000"
	.type	__func__.24880, %object
	.size	__func__.24880, 36
__func__.24880:
	.ascii	"DRV_CA_OTP_V200_GetMCTDESHardonlyEn\000"
	.type	__func__.24855, %object
	.size	__func__.24855, 39
__func__.24855:
	.ascii	"DRV_CA_OTP_V200_GetMCAESHardonlyEnLock\000"
	.space	1
	.type	__func__.24830, %object
	.size	__func__.24830, 35
__func__.24830:
	.ascii	"DRV_CA_OTP_V200_GetMCAESHardonlyEn\000"
	.space	1
	.type	__func__.24177, %object
	.size	__func__.24177, 36
__func__.24177:
	.ascii	"DRV_CA_OTP_V200_SetMCTDESHardonlyEn\000"
	.type	__func__.24133, %object
	.size	__func__.24133, 35
__func__.24133:
	.ascii	"DRV_CA_OTP_V200_SetMCAESHardonlyEn\000"
	.space	1
	.type	__func__.24089, %object
	.size	__func__.24089, 38
__func__.24089:
	.ascii	"DRV_CA_OTP_V200_SetTSOthersHardonlyEn\000"
	.space	2
	.type	__func__.23979, %object
	.size	__func__.23979, 35
__func__.23979:
	.ascii	"DRV_CA_OTP_V200_SetTSDESHardonlyEn\000"
	.space	1
	.type	__func__.23836, %object
	.size	__func__.23836, 32
__func__.23836:
	.ascii	"DRV_CA_OTP_V200_SetNfRNGDisable\000"
	.type	__func__.23726, %object
	.size	__func__.23726, 37
__func__.23726:
	.ascii	"DRV_CA_OTP_V200_SetTSKLOthersDisable\000"
	.space	3
	.type	__func__.23308, %object
	.size	__func__.23308, 38
__func__.23308:
	.ascii	"DRV_CA_OTP_V200_GetDesHardDisableLock\000"
	.space	2
	.type	__func__.23284, %object
	.size	__func__.23284, 38
__func__.23284:
	.ascii	"DRV_CA_OTP_V200_SetDesHardDisableLock\000"
	.space	2
	.type	__func__.23259, %object
	.size	__func__.23259, 34
__func__.23259:
	.ascii	"DRV_CA_OTP_V200_GetDesHardDisable\000"
	.space	2
	.type	__func__.23216, %object
	.size	__func__.23216, 34
__func__.23216:
	.ascii	"DRV_CA_OTP_V200_SetDesHardDisable\000"
	.space	2
	.type	__func__.23190, %object
	.size	__func__.23190, 34
__func__.23190:
	.ascii	"DRV_CA_OTP_V200_GetDesDisableLock\000"
	.space	2
	.type	__func__.23166, %object
	.size	__func__.23166, 34
__func__.23166:
	.ascii	"DRV_CA_OTP_V200_SetDesDisableLock\000"
	.space	2
	.type	__func__.23141, %object
	.size	__func__.23141, 30
__func__.23141:
	.ascii	"DRV_CA_OTP_V200_GetDesDisable\000"
	.space	2
	.type	__func__.23098, %object
	.size	__func__.23098, 30
__func__.23098:
	.ascii	"DRV_CA_OTP_V200_SetDesDisable\000"
	.space	2
	.type	__func__.22416, %object
	.size	__func__.22416, 28
__func__.22416:
	.ascii	"DRV_CA_OTP_V200_GetTdesLock\000"
	.type	__func__.22373, %object
	.size	__func__.22373, 28
__func__.22373:
	.ascii	"DRV_CA_OTP_V200_SetTdesLock\000"
	.type	__func__.21679, %object
	.size	__func__.21679, 31
__func__.21679:
	.ascii	"DRV_CA_OTP_V200_GetRootKeyLock\000"
	.space	1
	.type	__func__.21657, %object
	.size	__func__.21657, 31
__func__.21657:
	.ascii	"DRV_CA_OTP_V200_SetRootKeyLock\000"
	.space	1
	.type	__func__.20687, %object
	.size	__func__.20687, 35
__func__.20687:
	.ascii	"DRV_CA_OTP_V200_GetJtagProtectMode\000"
	.space	1
	.type	__func__.20601, %object
	.size	__func__.20601, 35
__func__.20601:
	.ascii	"DRV_CA_OTP_V200_SetJtagProtectMode\000"
	.space	1
	.type	__func__.20553, %object
	.size	__func__.20553, 29
__func__.20553:
	.ascii	"DRV_CA_OTP_V200_GetSCSActive\000"
	.space	3
	.type	__func__.20513, %object
	.size	__func__.20513, 29
__func__.20513:
	.ascii	"DRV_CA_OTP_V200_SetSCSActive\000"
	.space	3
	.type	__func__.20038, %object
	.size	__func__.20038, 32
__func__.20038:
	.ascii	"DRV_CA_OTP_V200_LockHardTDESSel\000"
	.type	__func__.20014, %object
	.size	__func__.20014, 31
__func__.20014:
	.ascii	"DRV_CA_OTP_V200_LockHardAESSel\000"
	.space	1
	.type	__func__.22020, %object
	.size	__func__.22020, 29
__func__.22020:
	.ascii	"DRV_CA_OTP_V200_SetOTPTzData\000"
	.space	3
	.type	__func__.21972, %object
	.size	__func__.21972, 30
__func__.21972:
	.ascii	"DRV_CA_OTP_V200_GetOEMRootKey\000"
	.space	2
	.type	__func__.21866, %object
	.size	__func__.21866, 31
__func__.21866:
	.ascii	"DRV_CA_OTP_V200_GetMISCRootKey\000"
	.space	1
	.type	__func__.21760, %object
	.size	__func__.21760, 24
__func__.21760:
	.ascii	"DRV_CA_OTP_V200_GetESCK\000"
	.type	__func__.21625, %object
	.size	__func__.21625, 27
__func__.21625:
	.ascii	"DRV_CA_OTP_V200_GetJtagKey\000"
	.space	1
	.type	__func__.21521, %object
	.size	__func__.21521, 29
__func__.21521:
	.ascii	"DRV_CA_OTP_V200_GetSPRootKey\000"
	.space	3
	.type	__func__.21430, %object
	.size	__func__.21430, 30
__func__.21430:
	.ascii	"DRV_CA_OTP_V200_GetR2RRootKey\000"
	.space	2
	.type	__func__.21339, %object
	.size	__func__.21339, 31
__func__.21339:
	.ascii	"DRV_CA_OTP_V200_GetCSA3RootKey\000"
	.space	1
	.type	__func__.21248, %object
	.size	__func__.21248, 31
__func__.21248:
	.ascii	"DRV_CA_OTP_V200_GetCSA2RootKey\000"
	.space	1
	.type	__func__.19700, %object
	.size	__func__.19700, 26
__func__.19700:
	.ascii	"DRV_CA_OTP_CalculateCRC16\000"
	.space	2
	.type	__func__.21917, %object
	.size	__func__.21917, 30
__func__.21917:
	.ascii	"DRV_CA_OTP_V200_SetOEMRootKey\000"
	.space	2
	.type	__func__.21811, %object
	.size	__func__.21811, 31
__func__.21811:
	.ascii	"DRV_CA_OTP_V200_SetMISCRootKey\000"
	.space	1
	.type	__func__.21705, %object
	.size	__func__.21705, 24
__func__.21705:
	.ascii	"DRV_CA_OTP_V200_SetESCK\000"
	.type	__func__.21465, %object
	.size	__func__.21465, 29
__func__.21465:
	.ascii	"DRV_CA_OTP_V200_SetSPRootKey\000"
	.space	3
	.type	__func__.21374, %object
	.size	__func__.21374, 30
__func__.21374:
	.ascii	"DRV_CA_OTP_V200_SetR2RRootKey\000"
	.space	2
	.type	__func__.21283, %object
	.size	__func__.21283, 31
__func__.21283:
	.ascii	"DRV_CA_OTP_V200_SetCSA3RootKey\000"
	.space	1
	.type	__func__.21192, %object
	.size	__func__.21192, 31
__func__.21192:
	.ascii	"DRV_CA_OTP_V200_SetCSA2RootKey\000"
	.space	1
	.type	__func__.21558, %object
	.size	__func__.21558, 27
__func__.21558:
	.ascii	"DRV_CA_OTP_V200_SetJtagKey\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Fail to write OTP!\012\000"
.LC1:
	.ascii	"Can not set from 1 to 0!\012\000"
	.space	2
.LC2:
	.ascii	"RSA key N get ERROR! secret key lock!\012\000"
	.space	1
.LC3:
	.ascii	"RSA key N set ERROR! secret key lock!\012\000"
	.space	1
.LC4:
	.ascii	"RSA key E get ERROR! secret key lock!\012\000"
	.space	1
.LC5:
	.ascii	"RSA key E set ERROR! secret key lock!\012\000"
	.space	1
.LC6:
	.ascii	"Write lock flag failed!\012\000"
	.space	3
.LC7:
	.ascii	"Invalid address or length!\012\000"
.LC8:
	.ascii	"Invalid param, NULL pointer!\012\000"
	.space	2
.LC9:
	.ascii	"Soc and otp tz have already been enabled!\012\000"
	.space	1
.LC10:
	.ascii	"Fail to write selfboot_bak_disable!\012\000"
	.space	3
.LC11:
	.ascii	"Invalid param, NULL Pointer!\012\000"
	.space	2
.LC12:
	.ascii	"Fail to get Chip Version!\012\000"
	.space	1
.LC13:
	.ascii	"Not supported!\012\000"
.LC14:
	.ascii	"Not Supported!\012\000"
.LC15:
	.ascii	"Fail to write jtag_mod_bak!\012\000"
	.space	3
.LC16:
	.ascii	"Fail to write OTP jtag_mod_bak!\012\000"
	.space	3
.LC17:
	.ascii	"Fail to get chip version!\012\000"
	.space	1
.LC18:
	.ascii	"Write otp failed! Already locked!\012\000"
	.space	1
.LC19:
	.ascii	"OEM RootKey get ERROR! secret key lock!\012\000"
	.space	3
.LC20:
	.ascii	"MISC RootKey get ERROR! secret key lock!\012\000"
	.space	2
.LC21:
	.ascii	"ESCK get ERROR! secret key lock!\012\000"
	.space	2
.LC22:
	.ascii	"JTAG key get ERROR! Locked!\012\000"
	.space	3
.LC23:
	.ascii	"SP key get ERROR! Locked!\012\000"
	.space	1
.LC24:
	.ascii	"R2R key get ERROR! Locked!\012\000"
.LC25:
	.ascii	"CSA3 key get ERROR! Locked!\012\000"
	.space	3
.LC26:
	.ascii	"CSA2 key get ERROR! secret key lock!\012\000"
	.space	2
.LC27:
	.ascii	"Input param error, null pointer!\012\000"
	.space	2
.LC28:
	.ascii	"Input param error, length = 0!\012\000"
.LC29:
	.ascii	"OEM RootKey set ERROR! secret key lock!\012\000"
	.space	3
.LC30:
	.ascii	"Error! Checksum Locked before set key!\012\000"
.LC31:
	.ascii	"Fail to write checksum!\012\000"
	.space	3
.LC32:
	.ascii	"Fail to write checksum lock!\012\000"
	.space	2
.LC33:
	.ascii	"Fail to write checksum Lock!\012\000"
	.space	2
.LC34:
	.ascii	"MISC RootKey set ERROR! secret key lock!\012\000"
	.space	2
.LC35:
	.ascii	"ESCK set ERROR! esck key lock!\012\000"
.LC36:
	.ascii	"SP root key set ERROR! Locked!\012\000"
.LC37:
	.ascii	"Fail to set SP_RootKey_lock!\012\000"
	.space	2
.LC38:
	.ascii	"Failed to set R2R_RootKey, locked!\012\000"
.LC39:
	.ascii	"Fail to set R2R_RootKey!\012\000"
	.space	2
.LC40:
	.ascii	"Fail to set R2R_RootKey_lock!\012\000"
	.space	1
.LC41:
	.ascii	"CSA3 key set CSA3_RootKey, locked!\012\000"
.LC42:
	.ascii	"Fail to set CSA3_RootKey_lock!\012\000"
.LC43:
	.ascii	"CSA2 key set ERROR! secret key lock!\012\000"
	.space	2
.LC44:
	.ascii	"Get chipid ERROR!\012\000"
	.space	1
.LC45:
	.ascii	"JTAG key set ERROR! Locked!\012\000"
	.space	3
.LC46:
	.ascii	"Fail to write JTAG_Key!\012\000"
	.space	3
.LC47:
	.ascii	"Fail to write locker_JTAGKey_ChipID!\012\000"
	.space	2
.LC48:
	.ascii	"Fail to set JTAG_Key_lock!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
