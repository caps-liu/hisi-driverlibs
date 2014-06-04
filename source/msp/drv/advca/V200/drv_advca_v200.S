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
	.file	"drv_advca_v200.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(drv_advca_v200)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./V200/.drv_advca_v200.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./V200/drv_advca_v200.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./V200/drv_advca_v200.o -O2 -Wall -Wundef
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
	.global	ca_getMktIdP
	.type	ca_getMktIdP, %function
ca_getMktIdP:
	.fnstart
.LFB781:
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
	subs	r4, r0, #0	@ pMktIdP, pMktIdP
	movweq	r0, #:lower16:-2142371835	@ D.19765,
	movteq	r0, #:upper16:-2142371835	@ D.19765,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #10	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	streq	r0, [r4, #0]	@ tmp140,* pMktIdP
	movne	r3, #1	@ tmp142,
	movne	r0, #0	@ D.19765,
	strne	r3, [r4, #0]	@ tmp142,* pMktIdP
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getMktIdP, .-ca_getMktIdP
	.align	2
	.global	ca_getStbSnP
	.type	ca_getStbSnP, %function
ca_getStbSnP:
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
	subs	r4, r0, #0	@ pStbSnP, pStbSnP
	movweq	r0, #:lower16:-2142371835	@ D.19895,
	movteq	r0, #:upper16:-2142371835	@ D.19895,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #11	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pStbSnP
	strne	r0, [r4, #0]	@ tmp142,* pStbSnP
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getStbSnP, .-ca_getStbSnP
	.align	2
	.global	ca_StatHardCwSel
	.type	ca_StatHardCwSel, %function
ca_StatHardCwSel:
	.fnstart
.LFB793:
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
	movweq	r0, #:lower16:-2142371835	@ D.20027,
	movteq	r0, #:upper16:-2142371835	@ D.20027,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #15	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pbLock
	strne	r0, [r4, #0]	@ tmp142,* pbLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_StatHardCwSel, .-ca_StatHardCwSel
	.align	2
	.global	ca_StatR2RHardKey
	.type	ca_StatR2RHardKey, %function
ca_StatR2RHardKey:
	.fnstart
.LFB796:
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
	movweq	r0, #:lower16:-2142371835	@ D.20095,
	movteq	r0, #:upper16:-2142371835	@ D.20095,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #24	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	streq	r0, [r4, #0]	@ tmp140,* pbLock
	movne	r3, #1	@ tmp142,
	movne	r0, #0	@ D.20095,
	strne	r3, [r4, #0]	@ tmp142,* pbLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_StatR2RHardKey, .-ca_StatR2RHardKey
	.align	2
	.global	ca_getCWDeactive
	.type	ca_getCWDeactive, %function
ca_getCWDeactive:
	.fnstart
.LFB798:
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
	subs	r4, r0, #0	@ pdeActive, pdeActive
	movweq	r0, #:lower16:-2142371835	@ D.20124,
	movteq	r0, #:upper16:-2142371835	@ D.20124,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #5	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pdeActive
	strne	r0, [r4, #0]	@ tmp142,* pdeActive
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getCWDeactive, .-ca_getCWDeactive
	.align	2
	.global	ca_getR2RDeactive
	.type	ca_getR2RDeactive, %function
ca_getR2RDeactive:
	.fnstart
.LFB800:
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
	subs	r4, r0, #0	@ pdeActive, pdeActive
	movweq	r0, #:lower16:-2142371835	@ D.20153,
	movteq	r0, #:upper16:-2142371835	@ D.20153,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #6	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	streq	r0, [r4, #0]	@ tmp140,* pdeActive
	movne	r3, #1	@ tmp142,
	movne	r0, #0	@ D.20153,
	strne	r3, [r4, #0]	@ tmp142,* pdeActive
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getR2RDeactive, .-ca_getR2RDeactive
	.align	2
	.global	ca_getJtagKeyLen
	.type	ca_getJtagKeyLen, %function
ca_getJtagKeyLen:
	.fnstart
.LFB802:
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
	subs	r4, r0, #0	@ plenType, plenType
	movweq	r0, #:lower16:-2142371835	@ D.20182,
	movteq	r0, #:upper16:-2142371835	@ D.20182,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #9	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* plenType
	strne	r0, [r4, #0]	@ tmp142,* plenType
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getJtagKeyLen, .-ca_getJtagKeyLen
	.align	2
	.global	ca_setSR
	.type	ca_setSR, %function
ca_setSR:
	.fnstart
.LFB805:
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
	subs	r3, r0, #0	@ pSR, pSR
	moveq	r0, r3	@ D.20224, pSR
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, r1	@, pSRNumber
	ldr	r2, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #44]	@ <variable>.HAL_OTP_V100_SetSrBit, <variable>.HAL_OTP_V100_SetSrBit
	blx	r1	@ <variable>.HAL_OTP_V100_SetSrBit
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_setSR, .-ca_setSR
	.align	2
	.global	ca_StatLinkProtect
	.type	ca_StatLinkProtect, %function
ca_StatLinkProtect:
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
	subs	r4, r0, #0	@ pbDisable, pbDisable
	movweq	r0, #:lower16:-2142371835	@ D.20458,
	movteq	r0, #:upper16:-2142371835	@ D.20458,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #18	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	streq	r0, [r4, #0]	@ tmp140,* pbDisable
	movne	r3, #1	@ tmp142,
	movne	r0, #0	@ D.20458,
	strne	r3, [r4, #0]	@ tmp142,* pbDisable
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_StatLinkProtect, .-ca_StatLinkProtect
	.align	2
	.global	ca_getSelfBoot
	.type	ca_getSelfBoot, %function
ca_getSelfBoot:
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
	subs	r4, r0, #0	@ pSelfBoot, pSelfBoot
	movweq	r0, #:lower16:-2142371835	@ D.20487,
	movteq	r0, #:upper16:-2142371835	@ D.20487,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #25	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pSelfBoot
	strne	r0, [r4, #0]	@ tmp142,* pSelfBoot
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getSelfBoot, .-ca_getSelfBoot
	.align	2
	.global	ca_getBootSelLock
	.type	ca_getBootSelLock, %function
ca_getBootSelLock:
	.fnstart
.LFB819:
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
	subs	r4, r0, #0	@ pBootSelLock, pBootSelLock
	movweq	r0, #:lower16:-2142371835	@ D.20516,
	movteq	r0, #:upper16:-2142371835	@ D.20516,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #19	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pBootSelLock
	strne	r0, [r4, #0]	@ tmp142,* pBootSelLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getBootSelLock, .-ca_getBootSelLock
	.align	2
	.global	otp_getBootMode
	.type	otp_getBootMode, %function
otp_getBootMode:
	.fnstart
.LFB821:
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
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp137,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp137,
	mov	r4, r0	@ pSel, pSel
	mov	r0, #0	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxth	r0, r0	@ tmp139,
	cmp	r0, #65280	@ tmp139,
	moveq	r3, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp142,* pSel
	beq	.L61	@,
	movw	r3, #65535	@ tmp141,
	cmp	r0, r3	@ tmp139, tmp141
	moveq	r3, #1	@ tmp143,
	streq	r3, [r4, #0]	@ tmp143,* pSel
	beq	.L61	@,
	cmp	r0, #255	@ tmp139,
	movne	r3, #4	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* pSel
	beq	.L64	@,
.L61:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L64:
	mov	r0, #3	@ tmp144,
	str	r0, [r4, #0]	@ tmp144,* pSel
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	otp_getBootMode, .-otp_getBootMode
	.align	2
	.global	otp_getJtagPrtMode
	.type	otp_getJtagPrtMode, %function
otp_getJtagPrtMode:
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
	subs	r4, r0, #0	@ pjipm, pjipm
	movweq	r0, #:lower16:-2142371835	@ D.20633,
	movteq	r0, #:upper16:-2142371835	@ D.20633,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #3	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxth	r0, r0	@ tmp140,
	cmp	r0, #255	@ tmp140,
	moveq	r0, #0	@ tmp143,
	streq	r0, [r4, #0]	@ tmp143,* pjipm
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	bls	.L74	@,
	cmp	r0, #65280	@ tmp140,
	beq	.L71	@,
	movw	ip, #65535	@ tmp142,
	cmp	r0, ip	@ tmp140, tmp142
	beq	.L71	@,
	mov	lr, #3	@ tmp146,
	mov	r0, #0	@ D.20633,
	str	lr, [r4, #0]	@ tmp146,* pjipm
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L74:
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp144,
	streq	r3, [r4, #0]	@ tmp144,* pjipm
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	mov	lr, #3	@ tmp146,
	mov	r0, #0	@ D.20633,
	str	lr, [r4, #0]	@ tmp146,* pjipm
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L71:
	mov	r0, #2	@ tmp145,
	str	r0, [r4, #0]	@ tmp145,* pjipm
	mov	r0, #0	@ D.20633,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	otp_getJtagPrtMode, .-otp_getJtagPrtMode
	.align	2
	.global	ca_getCWAlg
	.type	ca_getCWAlg, %function
ca_getCWAlg:
	.fnstart
.LFB833:
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
	subs	r2, r0, #0	@ pu32CwAlgType, pu32CwAlgType
	movwne	r3, #:lower16:.LANCHOR0	@ tmp136,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp136,
	movweq	r0, #:lower16:-2142371835	@ D.20804,
	movne	r0, #0	@ D.20804,
	ldrne	r3, [r3, #0]	@ g_CwAlgType, g_CwAlgType
	movteq	r0, #:upper16:-2142371835	@ D.20804,
	strne	r3, [r2, #0]	@ g_CwAlgType,* pu32CwAlgType
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getCWAlg, .-ca_getCWAlg
	.align	2
	.global	ca_getR2RAlg
	.type	ca_getR2RAlg, %function
ca_getR2RAlg:
	.fnstart
.LFB834:
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
	subs	r2, r0, #0	@ pu32R2RAlgType, pu32R2RAlgType
	movwne	r3, #:lower16:.LANCHOR0	@ tmp136,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp136,
	movweq	r0, #:lower16:-2142371835	@ D.20811,
	movne	r0, #0	@ D.20811,
	ldrne	r3, [r3, #4]	@ g_R2RAlgType, g_R2RAlgType
	movteq	r0, #:upper16:-2142371835	@ D.20811,
	strne	r3, [r2, #0]	@ g_R2RAlgType,* pu32R2RAlgType
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getR2RAlg, .-ca_getR2RAlg
	.align	2
	.global	ca_StatTdesLock
	.type	ca_StatTdesLock, %function
ca_StatTdesLock:
	.fnstart
.LFB837:
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
	movweq	r0, #:lower16:-2142371835	@ D.20845,
	movteq	r0, #:upper16:-2142371835	@ D.20845,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #21	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pbLock
	strne	r0, [r4, #0]	@ tmp142,* pbLock
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_StatTdesLock, .-ca_StatTdesLock
	.align	2
	.global	ca_getLowPowerDisable
	.type	ca_getLowPowerDisable, %function
ca_getLowPowerDisable:
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
	subs	r4, r0, #0	@ pLowPowerDisable, pLowPowerDisable
	movweq	r0, #:lower16:-2142371835	@ D.20921,
	movteq	r0, #:upper16:-2142371835	@ D.20921,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #26	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp140,
	cmp	r0, #0	@ tmp140,
	streq	r0, [r4, #0]	@ tmp140,* pLowPowerDisable
	movne	r3, #1	@ tmp142,
	movne	r0, #0	@ D.20921,
	strne	r3, [r4, #0]	@ tmp142,* pLowPowerDisable
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getLowPowerDisable, .-ca_getLowPowerDisable
	.align	2
	.global	ca_getPcieEn
	.type	ca_getPcieEn, %function
ca_getPcieEn:
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
	subs	r4, r0, #0	@ pPcieEn, pPcieEn
	movweq	r0, #:lower16:-2142371835	@ D.20952,
	movteq	r0, #:upper16:-2142371835	@ D.20952,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #27	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	ands	r0, r0, #1	@ tmp140,,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pPcieEn
	strne	r0, [r4, #0]	@ tmp142,* pPcieEn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getPcieEn, .-ca_getPcieEn
	.align	2
	.global	ca_getCsa3En
	.type	ca_getCsa3En, %function
ca_getCsa3En:
	.fnstart
.LFB845:
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
	subs	r4, r0, #0	@ pCsa3En, pCsa3En
	movweq	r0, #:lower16:-2142371835	@ D.20983,
	movteq	r0, #:upper16:-2142371835	@ D.20983,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #27	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	ands	r0, r0, #2	@ tmp140,,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pCsa3En
	strne	r0, [r4, #0]	@ tmp142,* pCsa3En
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getCsa3En, .-ca_getCsa3En
	.align	2
	.global	ca_getLpcEn
	.type	ca_getLpcEn, %function
ca_getLpcEn:
	.fnstart
.LFB847:
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
	subs	r4, r0, #0	@ pLpcEn, pLpcEn
	movweq	r0, #:lower16:-2142371835	@ D.21012,
	movteq	r0, #:upper16:-2142371835	@ D.21012,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #27	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	ands	r0, r0, #4	@ tmp140,,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pLpcEn
	strne	r0, [r4, #0]	@ tmp142,* pLpcEn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getLpcEn, .-ca_getLpcEn
	.align	2
	.global	ca_getLpcMasterEn
	.type	ca_getLpcMasterEn, %function
ca_getLpcMasterEn:
	.fnstart
.LFB849:
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
	subs	r4, r0, #0	@ pLpcMasterEn, pLpcMasterEn
	movweq	r0, #:lower16:-2142371835	@ D.21043,
	movteq	r0, #:upper16:-2142371835	@ D.21043,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #27	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	ands	r0, r0, #8	@ tmp140,,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pLpcMasterEn
	strne	r0, [r4, #0]	@ tmp142,* pLpcMasterEn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getLpcMasterEn, .-ca_getLpcMasterEn
	.align	2
	.global	ca_setSR7
	.type	ca_setSR7, %function
ca_setSR7:
	.fnstart
.LFB851:
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
	mov	r1, #7	@,
	bl	ca_setSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_setSR7, .-ca_setSR7
	.align	2
	.global	ca_setSR6
	.type	ca_setSR6, %function
ca_setSR6:
	.fnstart
.LFB853:
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
	mov	r1, #6	@,
	bl	ca_setSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_setSR6, .-ca_setSR6
	.align	2
	.global	ca_setSR4
	.type	ca_setSR4, %function
ca_setSR4:
	.fnstart
.LFB855:
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
	mov	r1, #4	@,
	bl	ca_setSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_setSR4, .-ca_setSR4
	.align	2
	.global	ca_setSR2
	.type	ca_setSR2, %function
ca_setSR2:
	.fnstart
.LFB857:
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
	mov	r1, #2	@,
	bl	ca_setSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_setSR2, .-ca_setSR2
	.align	2
	.global	ca_getMiscCtrlEn
	.type	ca_getMiscCtrlEn, %function
ca_getMiscCtrlEn:
	.fnstart
.LFB859:
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
	subs	r4, r0, #0	@ pMiscCtrlEn, pMiscCtrlEn
	movweq	r0, #:lower16:-2142371835	@ D.21122,
	movteq	r0, #:upper16:-2142371835	@ D.21122,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp138,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp138,
	mov	r0, #27	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	ands	r0, r0, #2	@ tmp140,,
	moveq	r3, #1	@ tmp141,
	movne	r0, #0	@ tmp142,
	streq	r3, [r4, #0]	@ tmp141,* pMiscCtrlEn
	strne	r0, [r4, #0]	@ tmp142,* pMiscCtrlEn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_getMiscCtrlEn, .-ca_getMiscCtrlEn
	.align	2
	.global	DRV_ADVCA_V200_SWPKKeyLadderOpen
	.type	DRV_ADVCA_V200_SWPKKeyLadderOpen, %function
DRV_ADVCA_V200_SWPKKeyLadderOpen:
	.fnstart
.LFB880:
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
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #1	@ tmp135,
	mov	r0, #0	@,
	str	r2, [r3, #8]	@ tmp135, g_IsSWPKKeyLadderOpen
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_V200_SWPKKeyLadderOpen, .-DRV_ADVCA_V200_SWPKKeyLadderOpen
	.align	2
	.global	DRV_ADVCA_V200_SWPKKeyLadderClose
	.type	DRV_ADVCA_V200_SWPKKeyLadderClose, %function
DRV_ADVCA_V200_SWPKKeyLadderClose:
	.fnstart
.LFB881:
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
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r0, #0	@ tmp135,
	str	r0, [r3, #8]	@ tmp135, g_IsSWPKKeyLadderOpen
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_V200_SWPKKeyLadderClose, .-DRV_ADVCA_V200_SWPKKeyLadderClose
	.align	2
	.global	ca_setMiscCtrlEn
	.type	ca_setMiscCtrlEn, %function
ca_setMiscCtrlEn:
	.fnstart
.LFB860:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32MiscCtrlEn
	bl	ca_getMiscCtrlEn	@
	ldr	r3, [fp, #-24]	@ u32MiscCtrlEn, u32MiscCtrlEn
	cmp	r3, #1	@ u32MiscCtrlEn,
	beq	.L132	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r2, r4	@, tmp135
	mov	r0, #27	@,
	ldr	ip, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@,
	ldr	r4, [ip, #24]	@ <variable>.HAL_OTP_V100_WriteBit, <variable>.HAL_OTP_V100_WriteBit
	blx	r4	@ <variable>.HAL_OTP_V100_WriteBit
	subs	r4, r0, #0	@ Ret,
	bne	.L134	@,
.L132:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L134:
	movw	r2, #:lower16:.LANCHOR1	@,
	mov	r0, #1	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r1, #97	@,
	movw	r3, #1985	@,
	movw	lr, #:lower16:.LC0	@ tmp142,
	movt	lr, #:upper16:.LC0	@ tmp142,
	str	lr, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	b	.L132	@
	.fnend
	.size	ca_setMiscCtrlEn, .-ca_setMiscCtrlEn
	.align	2
	.global	ca_setLpcMasterEn
	.type	ca_setLpcMasterEn, %function
ca_setLpcMasterEn:
	.fnstart
.LFB850:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r5, r0	@ lpcMasterEn, lpcMasterEn
	mov	r4, #0	@ tmp136,
	str	r4, [r3, #-4]!	@ tmp136, u32LpcMasterEn
	mov	r0, r3	@, tmp137
	bl	ca_getLpcMasterEn	@
	cmp	r5, r4	@ lpcMasterEn,
	beq	.L136	@,
	ldr	r0, [fp, #-24]	@ u32LpcMasterEn, u32LpcMasterEn
	cmp	r0, #1	@ u32LpcMasterEn,
	beq	.L136	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r2, r4	@, tmp136
	mov	r0, #27	@,
	ldr	ip, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #3	@,
	ldr	r4, [ip, #24]	@ <variable>.HAL_OTP_V100_WriteBit, <variable>.HAL_OTP_V100_WriteBit
	blx	r4	@ <variable>.HAL_OTP_V100_WriteBit
	subs	r4, r0, #0	@ Ret,
	beq	.L137	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L139	@,
	movw	r3, #1885	@,
	movw	lr, #:lower16:.LC0	@ tmp144,
	movt	lr, #:upper16:.LC0	@ tmp144,
	str	lr, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L137	@
.L136:
	mov	r4, #0	@ Ret,
.L137:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L140:
	.align	2
.L139:
	.word	.LANCHOR1+20
	.fnend
	.size	ca_setLpcMasterEn, .-ca_setLpcMasterEn
	.align	2
	.global	ca_setLpcEn
	.type	ca_setLpcEn, %function
ca_setLpcEn:
	.fnstart
.LFB848:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r5, r0	@ lpcEn, lpcEn
	mov	r4, #0	@ tmp136,
	str	r4, [r3, #-4]!	@ tmp136, u32LpcEn
	mov	r0, r3	@, tmp137
	bl	ca_getLpcEn	@
	cmp	r5, r4	@ lpcEn,
	beq	.L142	@,
	ldr	r0, [fp, #-24]	@ u32LpcEn, u32LpcEn
	cmp	r0, #1	@ u32LpcEn,
	beq	.L142	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r2, r4	@, tmp136
	mov	r0, #27	@,
	ldr	ip, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #2	@,
	ldr	r4, [ip, #24]	@ <variable>.HAL_OTP_V100_WriteBit, <variable>.HAL_OTP_V100_WriteBit
	blx	r4	@ <variable>.HAL_OTP_V100_WriteBit
	subs	r4, r0, #0	@ Ret,
	beq	.L143	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1843	@,
	movw	lr, #:lower16:.LC0	@ tmp144,
	movt	lr, #:upper16:.LC0	@ tmp144,
	str	lr, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L143	@
.L142:
	mov	r4, #0	@ Ret,
.L143:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L146:
	.align	2
.L145:
	.word	.LANCHOR1+40
	.fnend
	.size	ca_setLpcEn, .-ca_setLpcEn
	.align	2
	.global	ca_setCsa3En
	.type	ca_setCsa3En, %function
ca_setCsa3En:
	.fnstart
.LFB846:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, csa3En
	bl	ca_getCsa3En	@
	ldr	r3, [fp, #-24]	@ csa3En, csa3En
	cmp	r3, #1	@ csa3En,
	beq	.L149	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r2, r4	@, tmp135
	mov	r0, #27	@,
	ldr	ip, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@,
	ldr	r4, [ip, #24]	@ <variable>.HAL_OTP_V100_WriteBit, <variable>.HAL_OTP_V100_WriteBit
	blx	r4	@ <variable>.HAL_OTP_V100_WriteBit
	subs	r4, r0, #0	@ Ret,
	bne	.L151	@,
.L149:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L151:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L152	@,
	movw	r3, #1802	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L149	@
.L153:
	.align	2
.L152:
	.word	.LANCHOR1+52
	.fnend
	.size	ca_setCsa3En, .-ca_setCsa3En
	.align	2
	.global	ca_setPcieEn
	.type	ca_setPcieEn, %function
ca_setPcieEn:
	.fnstart
.LFB844:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r5, r0	@ pcieEn, pcieEn
	mov	r4, #0	@ tmp136,
	str	r4, [r3, #-4]!	@ tmp136, u32PcieEn
	mov	r0, r3	@, tmp137
	bl	ca_getPcieEn	@
	cmp	r5, r4	@ pcieEn,
	beq	.L155	@,
	ldr	r0, [fp, #-24]	@ u32PcieEn, u32PcieEn
	cmp	r0, #1	@ u32PcieEn,
	beq	.L155	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r1, r4	@, tmp136
	mov	r0, #27	@,
	ldr	ip, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r2, r4	@, tmp1
	ldr	r4, [ip, #24]	@ <variable>.HAL_OTP_V100_WriteBit, <variable>.HAL_OTP_V100_WriteBit
	blx	r4	@ <variable>.HAL_OTP_V100_WriteBit
	subs	r4, r0, #0	@ Ret,
	beq	.L156	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L158	@,
	movw	r3, #1762	@,
	movw	lr, #:lower16:.LC0	@ tmp144,
	movt	lr, #:upper16:.LC0	@ tmp144,
	str	lr, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L156	@
.L155:
	mov	r4, #0	@ Ret,
.L156:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L159:
	.align	2
.L158:
	.word	.LANCHOR1+68
	.fnend
	.size	ca_setPcieEn, .-ca_setPcieEn
	.align	2
	.global	ca_setLowPowerDisable
	.type	ca_setLowPowerDisable, %function
ca_setLowPowerDisable:
	.fnstart
.LFB842:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r4, r0	@ lowPowerDisable, lowPowerDisable
	mov	r2, #0	@ tmp136,
	str	r2, [r3, #-4]!	@ tmp136, u32Disable
	mov	r0, r3	@, tmp137
	bl	ca_getLowPowerDisable	@
	cmp	r4, #0	@ lowPowerDisable,
	beq	.L161	@,
	ldr	r0, [fp, #-24]	@ u32Disable, u32Disable
	cmp	r0, #1	@ u32Disable,
	beq	.L161	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r0, #26	@,
	mov	r1, #255	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L165	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r2, [r3, #12]	@ tmp146,
	orr	r1, r2, #67108864	@ tmp149, tmp146,
	str	r1, [r3, #12]	@ tmp149,
	b	.L163	@
.L161:
	mov	r4, #0	@ Ret,
.L163:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L165:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L166	@,
	movw	r3, #1718	@,
	movw	ip, #:lower16:.LC0	@ tmp144,
	movt	ip, #:upper16:.LC0	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L163	@
.L167:
	.align	2
.L166:
	.word	.LANCHOR1+84
	.fnend
	.size	ca_setLowPowerDisable, .-ca_setLowPowerDisable
	.align	2
	.global	ca_setTdesLock
	.type	ca_setTdesLock, %function
ca_setTdesLock:
	.fnstart
.LFB838:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r5, r0	@ tdesLock, tdesLock
	mov	r4, #0	@ tmp136,
	str	r4, [r3, #-4]!	@ tmp136, u32Lock
	mov	r0, r3	@, tmp137
	bl	ca_StatTdesLock	@
	cmp	r5, r4	@ tdesLock,
	beq	.L169	@,
	ldr	r0, [fp, #-24]	@ u32Lock, u32Lock
	cmp	r0, #1	@ u32Lock,
	beq	.L169	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r1, r4	@, tmp136
	mov	r0, #21	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L173	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r3, #12]	@ tmp146,
	orr	r1, r0, #2097152	@ tmp149, tmp146,
	str	r1, [r3, #12]	@ tmp149,
	b	.L171	@
.L169:
	mov	r4, #0	@ Ret,
.L171:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L173:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L174	@,
	movw	r3, #1621	@,
	movw	lr, #:lower16:.LC0	@ tmp144,
	movt	lr, #:upper16:.LC0	@ tmp144,
	str	lr, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L171	@
.L175:
	.align	2
.L174:
	.word	.LANCHOR1+108
	.fnend
	.size	ca_setTdesLock, .-ca_setTdesLock
	.align	2
	.global	ca_getSecureChipP
	.type	ca_getSecureChipP, %function
ca_getSecureChipP:
	.fnstart
.LFB836:
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
	subs	r4, r0, #0	@ pSecureChipP, pSecureChipP
	beq	.L181	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #14	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp143,
	cmp	r0, #0	@ tmp143,
	streq	r0, [r4, #0]	@ tmp143,* pSecureChipP
	movne	r0, #0	@ D.20831,
	movne	r3, #1	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* pSecureChipP
.L178:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L181:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L182	@,
	movw	r3, #1566	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20831,
	movt	r0, #:upper16:-2142371835	@ D.20831,
	b	.L178	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR1+124
	.fnend
	.size	ca_getSecureChipP, .-ca_getSecureChipP
	.align	2
	.global	ca_setSecureChipP
	.type	ca_setSecureChipP, %function
ca_setSecureChipP:
	.fnstart
.LFB840:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32SecureChipP
	bl	ca_getSecureChipP	@
	ldr	r3, [fp, #-24]	@ u32SecureChipP, u32SecureChipP
	cmp	r3, #1	@ u32SecureChipP,
	beq	.L186	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #14	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L189	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #16384	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L186:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L189:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L190	@,
	movw	r3, #1675	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L186	@
.L191:
	.align	2
.L190:
	.word	.LANCHOR1+144
	.fnend
	.size	ca_setSecureChipP, .-ca_setSecureChipP
	.align	2
	.global	ca_setVendorId
	.type	ca_setVendorId, %function
ca_setVendorId:
	.fnstart
.LFB839:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #9	@ secureChipId,
	mov	r5, r0	@ secureChipId, secureChipId
	movwhi	r4, #:lower16:-2142371835	@ Ret,
	movthi	r4, #:upper16:-2142371835	@ Ret,
	bls	.L200	@,
.L194:
	mov	r0, r4	@, Ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L200:
	sub	r0, fp, #28	@ tmp139,,
	mov	r1, #0	@ tmp138,
	str	r1, [r0, #-4]!	@ tmp138, u32SecureChipP
	bl	ca_getSecureChipP	@
	ldr	r3, [fp, #-32]	@ u32SecureChipP, u32SecureChipP
	cmp	r3, #1	@ u32SecureChipP,
	beq	.L201	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp146,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp146,
	mov	r0, #85	@,
	mov	r1, r5	@, secureChipId
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L202	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp151,
	movt	r7, #:upper16:.LANCHOR0	@ tmp151,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #14	@,
	ldr	r2, [r7, #12]	@ tmp152,
	mov	r1, #255	@,
	bfi	r2, r5, #28, #4	@ tmp152, secureChipId,,
	str	r2, [r7, #12]	@ tmp152,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L203	@,
	ldr	r0, [r7, #12]	@ tmp160,
	orr	r1, r0, #16384	@ tmp165, tmp160,
	str	r1, [r7, #12]	@ tmp165,
	b	.L194	@
.L202:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L204	@,
	movw	r3, #1656	@,
	movw	ip, #:lower16:.LC0	@ tmp150,
	movt	ip, #:upper16:.LC0	@ tmp150,
	str	ip, [sp, #0]	@ tmp150,
	bl	HI_LogOut	@
	b	.L194	@
.L201:
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp142,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp142,
	mov	r0, #85	@,
	ldr	lr, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	movw	r2, #:lower16:-2142371830	@ tmp164,
	movt	r2, #:upper16:-2142371830	@ tmp164,
	uxtb	r0, r0	@ tmp144,
	cmp	r0, r5	@ tmp144, secureChipId
	movne	r4, r2	@ Ret, tmp164
	moveq	r4, #0	@ Ret,
	b	.L194	@
.L203:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L204	@,
	movw	r3, #1659	@,
	mov	r4, ip	@ Ret, Ret
	movw	ip, #:lower16:.LC0	@ tmp158,
	movt	ip, #:upper16:.LC0	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L194	@
.L205:
	.align	2
.L204:
	.word	.LANCHOR1+164
	.fnend
	.size	ca_setVendorId, .-ca_setVendorId
	.align	2
	.global	DRV_CA_OTP_V200_GetVendorId
	.type	DRV_CA_OTP_V200_GetVendorId, %function
DRV_CA_OTP_V200_GetVendorId:
	.fnstart
.LFB835:
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
	subs	r4, r0, #0	@ pu32VendorId, pu32VendorId
	beq	.L210	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #85	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	mov	r3, #0	@ D.20820,
	uxtb	r0, r0	@ tmp143,
	str	r0, [r4, #0]	@ tmp143,* pu32VendorId
.L208:
	mov	r0, r3	@, D.20820
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L210:
	movw	r3, #1549	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L211	@,
	movw	ip, #:lower16:.LC2	@ tmp139,
	movt	ip, #:upper16:.LC2	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r3, #:lower16:-2142371835	@ D.20820,
	movt	r3, #:upper16:-2142371835	@ D.20820,
	b	.L208	@
.L212:
	.align	2
.L211:
	.word	.LANCHOR1+180
	.fnend
	.size	DRV_CA_OTP_V200_GetVendorId, .-DRV_CA_OTP_V200_GetVendorId
	.align	2
	.global	ca_setR2RAlg
	.type	ca_setR2RAlg, %function
ca_setR2RAlg:
	.fnstart
.LFB832:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #1	@ type,
	mov	ip, r0	@ type, type
	bhi	.L217	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.20798,
	str	ip, [r3, #4]	@ type, g_R2RAlgType
.L215:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L217:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L218	@,
	movw	r3, #1511	@,
	str	ip, [sp, #4]	@ type,
	movw	ip, #:lower16:.LC3	@ tmp138,
	movt	ip, #:upper16:.LC3	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20798,
	movt	r0, #:upper16:-2142371835	@ D.20798,
	b	.L215	@
.L219:
	.align	2
.L218:
	.word	.LANCHOR1+208
	.fnend
	.size	ca_setR2RAlg, .-ca_setR2RAlg
	.align	2
	.global	ca_setCWAlg
	.type	ca_setCWAlg, %function
ca_setCWAlg:
	.fnstart
.LFB831:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #2	@ type,
	mov	ip, r0	@ type, type
	bhi	.L224	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.20791,
	str	ip, [r3, #0]	@ type, g_CwAlgType
.L222:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L224:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L225	@,
	movw	r3, #1498	@,
	str	ip, [sp, #4]	@ type,
	movw	ip, #:lower16:.LC3	@ tmp138,
	movt	ip, #:upper16:.LC3	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20791,
	movt	r0, #:upper16:-2142371835	@ D.20791,
	b	.L222	@
.L226:
	.align	2
.L225:
	.word	.LANCHOR1+224
	.fnend
	.size	ca_setCWAlg, .-ca_setCWAlg
	.align	2
	.global	otp_setJtagPrtMode
	.type	otp_setJtagPrtMode, %function
otp_setJtagPrtMode:
	.fnstart
.LFB826:
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
	sub	r3, fp, #20	@ tmp139,,
	mov	r5, r0	@ jipm, jipm
	mov	r4, #0	@ tmp138,
	str	r4, [r3, #-4]!	@ tmp138, u32PrtMode
	mov	r0, r3	@, tmp139
	bl	otp_getJtagPrtMode	@
	cmp	r5, #2	@ jipm,
	bhi	.L238	@,
	ldr	r0, [fp, #-24]	@ u32PrtMode.368, u32PrtMode
	cmp	r0, r5	@ u32PrtMode.368, jipm
	beq	.L230	@,
	cmp	r0, #2	@ u32PrtMode.368,
	beq	.L239	@,
	cmp	r0, #1	@ u32PrtMode.368,
	beq	.L240	@,
	cmp	r5, #1	@ jipm,
	beq	.L241	@,
.L233:
	cmp	r5, #2	@ jipm,
	beq	.L242	@,
.L230:
	mov	r4, #0	@ Ret,
.L229:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L240:
	cmp	r5, #1	@ jipm,
	bhi	.L233	@,
	ldr	r2, .L245	@,
	mov	r1, #97	@,
	movw	r3, #1278	@,
.L237:
	movw	r4, #:lower16:.LC5	@ tmp148,
	movt	r4, #:upper16:.LC5	@ tmp148,
	str	r4, [sp, #0]	@ tmp148,
	movw	r4, #:lower16:-2142371830	@ Ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371830	@ Ret,
	b	.L229	@
.L242:
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp159,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp159,
	mov	r0, #4	@,
	mov	r1, #255	@,
	ldr	lr, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L243	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp164,
	movt	r1, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r2, [r1, #12]	@ tmp165,
	orr	r0, r2, #16	@ tmp169, tmp165,
	str	r0, [r1, #12]	@ tmp169,
	b	.L229	@
.L241:
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp150,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp150,
	mov	r1, r4	@, tmp138
	mov	r0, #3	@,
	ldr	lr, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L244	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp155,
	movt	r1, #:upper16:.LANCHOR0	@ tmp155,
	ldr	r2, [r1, #12]	@ tmp156,
	orr	r0, r2, #8	@ tmp168, tmp156,
	str	r0, [r1, #12]	@ tmp168,
	b	.L229	@
.L244:
	mov	r0, r5	@, jipm
	mov	r1, #97	@,
	ldr	r2, .L245	@,
	movw	r3, #1285	@,
	movw	ip, #:lower16:.LC0	@ tmp154,
	movt	ip, #:upper16:.LC0	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	b	.L229	@
.L243:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L245	@,
	movw	r3, #1290	@,
	movw	ip, #:lower16:.LC0	@ tmp163,
	movt	ip, #:upper16:.LC0	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L229	@
.L238:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L245	@,
	movw	r3, #1259	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	movw	r4, #:lower16:-2142371835	@ Ret,
	movt	ip, #:upper16:.LC4	@ tmp142,
	movt	r4, #:upper16:-2142371835	@ Ret,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	b	.L229	@
.L239:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L245	@,
	movw	r3, #1270	@,
	b	.L237	@
.L246:
	.align	2
.L245:
	.word	.LANCHOR1+236
	.fnend
	.size	otp_setJtagPrtMode, .-otp_setJtagPrtMode
	.align	2
	.global	otp_getSCSActive
	.type	otp_getSCSActive, %function
otp_getSCSActive:
	.fnstart
.LFB823:
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
	subs	r4, r0, #0	@ penable, penable
	beq	.L252	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, #2	@,
	ldr	r1, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r1, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r3	@ <variable>.HAL_OTP_V100_Read
	uxtb	r0, r0	@ tmp143,
	cmp	r0, #0	@ tmp143,
	streq	r0, [r4, #0]	@ tmp143,* penable
	movne	r0, #0	@ D.20598,
	movne	r3, #1	@ tmp145,
	strne	r3, [r4, #0]	@ tmp145,* penable
.L249:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L252:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L253	@,
	mov	r3, #1184	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20598,
	movt	r0, #:upper16:-2142371835	@ D.20598,
	b	.L249	@
.L254:
	.align	2
.L253:
	.word	.LANCHOR1+256
	.fnend
	.size	otp_getSCSActive, .-otp_getSCSActive
	.align	2
	.global	otp_setSCSActive
	.type	otp_setSCSActive, %function
otp_setSCSActive:
	.fnstart
.LFB824:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Active
	bl	otp_getSCSActive	@
	ldr	r3, [fp, #-24]	@ u32Active, u32Active
	cmp	r3, #1	@ u32Active,
	beq	.L257	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #2	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L260	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #4	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L257:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L260:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L261	@,
	movw	r3, #1214	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L257	@
.L262:
	.align	2
.L261:
	.word	.LANCHOR1+276
	.fnend
	.size	otp_setSCSActive, .-otp_setSCSActive
	.align	2
	.global	otp_setBootMode
	.type	otp_setBootMode, %function
otp_setBootMode:
	.fnstart
.LFB822:
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
	cmp	r0, #3	@ enSel,
	mov	r3, #4	@ tmp139,
	mov	r4, #0	@ tmp140,
	mov	r5, r0	@ enSel, enSel
	str	r3, [fp, #-32]	@ tmp139, eCurrentBootMode
	str	r4, [fp, #-36]	@ tmp140, u32BootSelLock
	bhi	.L276	@,
	sub	r0, fp, #36	@,,
	bl	ca_getBootSelLock	@
	sub	r0, fp, #32	@,,
	bl	otp_getBootMode	@
	ldr	r0, [fp, #-36]	@ u32BootSelLock, u32BootSelLock
	cmp	r0, #0	@ u32BootSelLock,
	bne	.L277	@,
	cmp	r5, #1	@ enSel,
	beq	.L269	@,
	cmp	r5, #3	@ enSel,
	movwne	r6, #:lower16:g_pOTPExportFunctionList	@ tmp188,
	movtne	r6, #:upper16:g_pOTPExportFunctionList	@ tmp188,
	beq	.L278	@,
.L268:
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #19	@,
	mov	r1, #0	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L279	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp184,
	movt	r3, #:upper16:.LANCHOR0	@ tmp184,
	ldr	r0, [r3, #12]	@ tmp185,
	orr	r1, r0, #524288	@ tmp191, tmp185,
	str	r1, [r3, #12]	@ tmp191,
.L265:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L277:
	ldr	r0, [fp, #-32]	@ eCurrentBootMode, eCurrentBootMode
	cmp	r5, r0	@ enSel, eCurrentBootMode
	beq	.L265	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1140	@,
	movw	r4, #:lower16:.LC7	@ tmp150,
	movt	r4, #:upper16:.LC7	@ tmp150,
	str	r4, [sp, #0]	@ tmp150,
	movw	r4, #:lower16:-2142371830	@ Ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371830	@ Ret,
	b	.L265	@
.L278:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp188,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp188,
	mov	r1, #255	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L280	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, r4	@, Ret
	mov	r0, #1	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L281	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp172,
	movt	r0, #:upper16:.LANCHOR0	@ tmp172,
	ldr	r4, [r0, #12]	@ tmp173,
	orr	r1, r4, #3	@ tmp176, tmp173,
	str	r1, [r0, #12]	@ tmp176,
	b	.L268	@
.L269:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp188,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp188,
	mov	r1, #255	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L282	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp157,
	movt	r3, #:upper16:.LANCHOR0	@ tmp157,
	ldr	r0, [r3, #12]	@ tmp158,
	orr	r1, r0, #1	@ tmp189, tmp158,
	str	r1, [r3, #12]	@ tmp189,
	b	.L268	@
.L279:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1172	@,
	movw	lr, #:lower16:.LC0	@ tmp183,
	movt	lr, #:upper16:.LC0	@ tmp183,
	str	lr, [sp, #0]	@ tmp183,
	bl	HI_LogOut	@
	b	.L265	@
.L280:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1159	@,
	movw	lr, #:lower16:.LC0	@ tmp165,
	movt	lr, #:upper16:.LC0	@ tmp165,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L265	@
.L276:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1123	@,
	movw	ip, #:lower16:.LC6	@ tmp143,
	movw	r4, #:lower16:-2142371835	@ Ret,
	movt	ip, #:upper16:.LC6	@ tmp143,
	movt	r4, #:upper16:-2142371835	@ Ret,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L265	@
.L282:
	mov	r0, r5	@, enSel
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1149	@,
	movw	ip, #:lower16:.LC0	@ tmp156,
	movt	ip, #:upper16:.LC0	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L265	@
.L281:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L283	@,
	movw	r3, #1160	@,
	movw	lr, #:lower16:.LC0	@ tmp171,
	movt	lr, #:upper16:.LC0	@ tmp171,
	str	lr, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L265	@
.L284:
	.align	2
.L283:
	.word	.LANCHOR1+296
	.fnend
	.size	otp_setBootMode, .-otp_setBootMode
	.align	2
	.global	ca_setBootSelLock
	.type	ca_setBootSelLock, %function
ca_setBootSelLock:
	.fnstart
.LFB820:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32BootSelLock
	bl	ca_getBootSelLock	@
	ldr	r3, [fp, #-24]	@ u32BootSelLock, u32BootSelLock
	cmp	r3, #1	@ u32BootSelLock,
	beq	.L287	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r1, r4	@, tmp135
	mov	r0, #19	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L290	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #524288	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L287:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L290:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L291	@,
	movw	r3, #1087	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L287	@
.L292:
	.align	2
.L291:
	.word	.LANCHOR1+312
	.fnend
	.size	ca_setBootSelLock, .-ca_setBootSelLock
	.align	2
	.global	ca_DisableSelfBoot
	.type	ca_DisableSelfBoot, %function
ca_DisableSelfBoot:
	.fnstart
.LFB818:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Stat
	bl	ca_getSelfBoot	@
	ldr	r3, [fp, #-24]	@ u32Stat, u32Stat
	cmp	r3, #1	@ u32Stat,
	beq	.L295	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r1, r4	@, tmp135
	mov	r0, #25	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L298	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #33554432	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L295:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L298:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L299	@,
	movw	r3, #1046	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L295	@
.L300:
	.align	2
.L299:
	.word	.LANCHOR1+332
	.fnend
	.size	ca_DisableSelfBoot, .-ca_DisableSelfBoot
	.align	2
	.global	ca_DisableLinkProtect
	.type	ca_DisableLinkProtect, %function
ca_DisableLinkProtect:
	.fnstart
.LFB816:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Disable
	bl	ca_StatLinkProtect	@
	ldr	r3, [fp, #-24]	@ u32Disable, u32Disable
	cmp	r3, r4	@ u32Disable,
	beq	.L306	@,
.L303:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L306:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #18	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L307	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #262144	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
	b	.L303	@
.L307:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L308	@,
	mov	r3, #1004	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L303	@
.L309:
	.align	2
.L308:
	.word	.LANCHOR1+352
	.fnend
	.size	ca_DisableLinkProtect, .-ca_DisableLinkProtect
	.align	2
	.global	ca_getSR
	.type	ca_getSR, %function
ca_getSR:
	.fnstart
.LFB804:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r2, r0, #0	@ pSR, pSR
	beq	.L314	@,
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp141,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp141,
	mov	r0, r1	@, pSRNumber
	mov	r1, r2	@, pSR
	ldr	r2, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r3, [r2, #40]	@ <variable>.HAL_OTP_V100_GetSrBit, <variable>.HAL_OTP_V100_GetSrBit
	blx	r3	@ <variable>.HAL_OTP_V100_GetSrBit
.L312:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L314:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L315	@,
	movw	r3, #718	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20212,
	movt	r0, #:upper16:-2142371835	@ D.20212,
	b	.L312	@
.L316:
	.align	2
.L315:
	.word	.LANCHOR1+376
	.fnend
	.size	ca_getSR, .-ca_getSR
	.align	2
	.global	ca_getSR2
	.type	ca_getSR2, %function
ca_getSR2:
	.fnstart
.LFB858:
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
	cmp	r0, #0	@ pSR2,
	movweq	r0, #:lower16:-2142371835	@ D.21114,
	movteq	r0, #:upper16:-2142371835	@ D.21114,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #2	@,
	bl	ca_getSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getSR2, .-ca_getSR2
	.align	2
	.global	ca_getSR4
	.type	ca_getSR4, %function
ca_getSR4:
	.fnstart
.LFB856:
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
	cmp	r0, #0	@ pSR4,
	movweq	r0, #:lower16:-2142371835	@ D.21102,
	movteq	r0, #:upper16:-2142371835	@ D.21102,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #4	@,
	bl	ca_getSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getSR4, .-ca_getSR4
	.align	2
	.global	ca_getSR6
	.type	ca_getSR6, %function
ca_getSR6:
	.fnstart
.LFB854:
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
	cmp	r0, #0	@ pSR6,
	movweq	r0, #:lower16:-2142371835	@ D.21090,
	movteq	r0, #:upper16:-2142371835	@ D.21090,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #6	@,
	bl	ca_getSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getSR6, .-ca_getSR6
	.align	2
	.global	ca_getSR7
	.type	ca_getSR7, %function
ca_getSR7:
	.fnstart
.LFB852:
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
	cmp	r0, #0	@ pSR7,
	movweq	r0, #:lower16:-2142371835	@ D.21078,
	movteq	r0, #:upper16:-2142371835	@ D.21078,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #7	@,
	bl	ca_getSR	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ca_getSR7, .-ca_getSR7
	.align	2
	.global	ca_getRSAKey
	.type	ca_getRSAKey, %function
ca_getRSAKey:
	.fnstart
.LFB813:
	@ args = 0, pretend = 0, frame = 8
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
	subs	r4, r0, #0	@ key, key
	movweq	r0, #:lower16:-2142371835	@ D.20404,
	movteq	r0, #:upper16:-2142371835	@ D.20404,
	bne	.L341	@,
.L335:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L341:
	sub	r0, fp, #28	@ tmp173,,
	mov	r5, #0	@ tmp172,
	mov	r1, #4	@,
	str	r5, [r0, #-4]!	@ tmp172, sr4Value
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr4Value, sr4Value
	cmp	r3, #1	@ sr4Value,
	movweq	r0, #:lower16:-2142371826	@ D.20404,
	movteq	r0, #:upper16:-2142371826	@ D.20404,
	beq	.L335	@,
	movw	r7, #:lower16:g_pOTPExportFunctionList	@ tmp180,
	movt	r7, #:upper16:g_pOTPExportFunctionList	@ tmp180,
.L337:
	ldr	lr, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, #512	@, ivtmp.1849,
	add	r6, r5, #4	@ tmp181, ivtmp.1849,
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, r5]	@,* ivtmp.1849
	add	r0, r5, #516	@, ivtmp.1849,
	ldr	r2, [r7, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r5, r6, #4	@ ivtmp.1849, tmp181,
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	cmp	r5, #512	@ ivtmp.1849,
	str	r0, [r4, r6]	@,
	bne	.L337	@,
	mov	r0, #0	@ D.20404,
	b	.L335	@
	.fnend
	.size	ca_getRSAKey, .-ca_getRSAKey
	.align	2
	.global	ca_getJtagKey
	.type	ca_getJtagKey, %function
ca_getJtagKey:
	.fnstart
.LFB811:
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
	subs	r4, r0, #0	@ key, key
	movweq	r5, #:lower16:-2142371835	@ D.20357,
	movteq	r5, #:upper16:-2142371835	@ D.20357,
	bne	.L347	@,
.L344:
	mov	r0, r5	@, D.20357
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L347:
	sub	r0, fp, #28	@ tmp140,,
	mov	r5, #0	@ tmp139,
	mov	r1, #4	@,
	str	r5, [r0, #-4]!	@ tmp139, sr4Value
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr4Value, sr4Value
	cmp	r3, #1	@ sr4Value,
	movweq	r5, #:lower16:-2142371826	@ D.20357,
	movteq	r5, #:upper16:-2142371826	@ D.20357,
	beq	.L344	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp143,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp143,
	mov	r0, #32	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #0]	@,* key
	mov	r0, #36	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #4]	@,
	b	.L344	@
	.fnend
	.size	ca_getJtagKey, .-ca_getJtagKey
	.align	2
	.global	ca_getR2RRootKey
	.type	ca_getR2RRootKey, %function
ca_getR2RRootKey:
	.fnstart
.LFB809:
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
	subs	r4, r0, #0	@ key, key
	movweq	r5, #:lower16:-2142371835	@ D.20310,
	movteq	r5, #:upper16:-2142371835	@ D.20310,
	bne	.L353	@,
.L350:
	mov	r0, r5	@, D.20310
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L353:
	sub	r0, fp, #28	@ tmp142,,
	mov	r5, #0	@ tmp141,
	mov	r1, #4	@,
	str	r5, [r0, #-4]!	@ tmp141, sr4Value
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr4Value, sr4Value
	cmp	r3, #1	@ sr4Value,
	movweq	r5, #:lower16:-2142371826	@ D.20310,
	movteq	r5, #:upper16:-2142371826	@ D.20310,
	beq	.L350	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp145,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp145,
	mov	r0, #64	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #0]	@,* key
	mov	r0, #68	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #4]	@,
	mov	r0, #72	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r3, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #8]	@,
	mov	r0, #76	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #12]	@,
	b	.L350	@
	.fnend
	.size	ca_getR2RRootKey, .-ca_getR2RRootKey
	.align	2
	.global	ca_getDVBRootKey
	.type	ca_getDVBRootKey, %function
ca_getDVBRootKey:
	.fnstart
.LFB807:
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
	subs	r4, r0, #0	@ key, key
	movweq	r5, #:lower16:-2142371835	@ D.20263,
	movteq	r5, #:upper16:-2142371835	@ D.20263,
	bne	.L359	@,
.L356:
	mov	r0, r5	@, D.20263
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L359:
	sub	r0, fp, #28	@ tmp142,,
	mov	r5, #0	@ tmp141,
	mov	r1, #4	@,
	str	r5, [r0, #-4]!	@ tmp141, sr4Value
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr4Value, sr4Value
	cmp	r3, #1	@ sr4Value,
	movweq	r5, #:lower16:-2142371826	@ D.20263,
	movteq	r5, #:upper16:-2142371826	@ D.20263,
	beq	.L356	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp145,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp145,
	mov	r0, #48	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #0]	@,* key
	mov	r0, #52	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #4]	@,
	mov	r0, #56	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r3, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #8]	@,
	mov	r0, #60	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r4, #12]	@,
	b	.L356	@
	.fnend
	.size	ca_getDVBRootKey, .-ca_getDVBRootKey
	.align	2
	.global	ca_setRSAKey
	.type	ca_setRSAKey, %function
ca_setRSAKey:
	.fnstart
.LFB812:
	@ args = 0, pretend = 0, frame = 8
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
	subs	r7, r0, #0	@ key, key
	movweq	r4, #:lower16:-2142371835	@ Ret,
	movteq	r4, #:upper16:-2142371835	@ Ret,
	bne	.L371	@,
.L362:
	mov	r0, r4	@, Ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L371:
	sub	r0, fp, #36	@ tmp166,,
	mov	r5, #0	@ tmp165,
	mov	r1, #6	@,
	str	r5, [r0, #-4]!	@ tmp165, sr6Value
	bl	ca_getSR	@
	ldr	r3, [fp, #-40]	@ sr6Value, sr6Value
	cmp	r3, #1	@ sr6Value,
	movweq	r4, #:lower16:-2142371830	@ Ret,
	movteq	r4, #:upper16:-2142371830	@ Ret,
	beq	.L362	@,
	movw	r8, #:lower16:g_pOTPExportFunctionList	@ tmp177,
	movt	r8, #:upper16:g_pOTPExportFunctionList	@ tmp177,
	b	.L365	@
.L364:
	ldr	lr, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [r7, r6]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L370	@,
	cmp	r5, #512	@ i,
	beq	.L362	@,
.L365:
	ldr	r4, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	add	r0, r5, #512	@, i,
	ldrb	r1, [r7, r5]	@ zero_extendqisi2	@,* i
	add	r6, r5, #1	@ tmp178, i,
	add	r5, r6, #1	@ i, tmp178,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	add	r0, r6, #512	@, tmp178,
	beq	.L364	@,
.L370:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L372	@,
	movw	r3, #905	@,
	movw	ip, #:lower16:.LC0	@ tmp175,
	movt	ip, #:upper16:.LC0	@ tmp175,
	str	ip, [sp, #0]	@ tmp175,
	bl	HI_LogOut	@
	b	.L362	@
.L373:
	.align	2
.L372:
	.word	.LANCHOR1+388
	.fnend
	.size	ca_setRSAKey, .-ca_setRSAKey
	.align	2
	.global	ca_setJtagKey
	.type	ca_setJtagKey, %function
ca_setJtagKey:
	.fnstart
.LFB810:
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
	subs	r5, r0, #0	@ key, key
	movweq	r4, #:lower16:-2142371835	@ Ret,
	movteq	r4, #:upper16:-2142371835	@ Ret,
	bne	.L380	@,
.L376:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L380:
	sub	r0, fp, #28	@ tmp137,,
	mov	r1, #0	@ tmp136,
	str	r1, [r0, #-4]!	@ tmp136, sr6Value
	mov	r1, #6	@,
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr6Value, sr6Value
	cmp	r3, #1	@ sr6Value,
	movweq	r4, #:lower16:-2142371830	@ Ret,
	movteq	r4, #:upper16:-2142371830	@ Ret,
	beq	.L376	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r0, #32	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* key
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #33	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #34	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #35	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #36	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #37	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #38	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L378	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #39	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L376	@,
.L378:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L381	@,
	mov	r3, #856	@,
	movw	ip, #:lower16:.LC0	@ tmp173,
	movt	ip, #:upper16:.LC0	@ tmp173,
	str	ip, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	b	.L376	@
.L382:
	.align	2
.L381:
	.word	.LANCHOR1+404
	.fnend
	.size	ca_setJtagKey, .-ca_setJtagKey
	.align	2
	.global	ca_setR2RRootKey
	.type	ca_setR2RRootKey, %function
ca_setR2RRootKey:
	.fnstart
.LFB808:
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
	subs	r5, r0, #0	@ key, key
	movweq	r4, #:lower16:-2142371835	@ Ret,
	movteq	r4, #:upper16:-2142371835	@ Ret,
	bne	.L389	@,
.L385:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L389:
	sub	r0, fp, #28	@ tmp137,,
	mov	r1, #0	@ tmp136,
	str	r1, [r0, #-4]!	@ tmp136, sr6Value
	mov	r1, #6	@,
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr6Value, sr6Value
	cmp	r3, #1	@ sr6Value,
	movweq	r4, #:lower16:-2142371830	@ Ret,
	movteq	r4, #:upper16:-2142371830	@ Ret,
	beq	.L385	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp207,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp207,
	mov	r0, #64	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* key
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #65	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #66	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #67	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #68	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #69	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #70	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #71	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #72	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp172,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp172,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #73	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #74	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #75	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #76	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #77	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #78	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L387	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #79	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L385	@,
.L387:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L390	@,
	movw	r3, #805	@,
	movw	lr, #:lower16:.LC0	@ tmp205,
	movt	lr, #:upper16:.LC0	@ tmp205,
	str	lr, [sp, #0]	@ tmp205,
	bl	HI_LogOut	@
	b	.L385	@
.L391:
	.align	2
.L390:
	.word	.LANCHOR1+420
	.fnend
	.size	ca_setR2RRootKey, .-ca_setR2RRootKey
	.align	2
	.global	ca_setDvbRootKey
	.type	ca_setDvbRootKey, %function
ca_setDvbRootKey:
	.fnstart
.LFB806:
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
	subs	r5, r0, #0	@ key, key
	movweq	r4, #:lower16:-2142371835	@ Ret,
	movteq	r4, #:upper16:-2142371835	@ Ret,
	bne	.L398	@,
.L394:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L398:
	sub	r0, fp, #28	@ tmp137,,
	mov	r1, #0	@ tmp136,
	str	r1, [r0, #-4]!	@ tmp136, sr6Value
	mov	r1, #6	@,
	bl	ca_getSR	@
	ldr	r3, [fp, #-32]	@ sr6Value, sr6Value
	cmp	r3, #1	@ sr6Value,
	movweq	r4, #:lower16:-2142371830	@ Ret,
	movteq	r4, #:upper16:-2142371830	@ Ret,
	beq	.L394	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp207,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp207,
	mov	r0, #48	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* key
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #49	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #50	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #51	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #52	@,
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #53	@,
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #54	@,
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #55	@,
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@,
	ldr	r2, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #56	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@,
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp172,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp172,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #57	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #58	@,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@,
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #59	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r4, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #60	@,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@,
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #61	@,
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@,
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #62	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L396	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #63	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	beq	.L394	@,
.L396:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L399	@,
	movw	r3, #754	@,
	movw	lr, #:lower16:.LC0	@ tmp205,
	movt	lr, #:upper16:.LC0	@ tmp205,
	str	lr, [sp, #0]	@ tmp205,
	bl	HI_LogOut	@
	b	.L394	@
.L400:
	.align	2
.L399:
	.word	.LANCHOR1+440
	.fnend
	.size	ca_setDvbRootKey, .-ca_setDvbRootKey
	.align	2
	.global	ca_setJtagKeyLen
	.type	ca_setJtagKeyLen, %function
ca_setJtagKeyLen:
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
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Len
	bl	ca_getJtagKeyLen	@
	ldr	r3, [fp, #-24]	@ u32Len, u32Len
	cmp	r3, #1	@ u32Len,
	beq	.L403	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r1, r4	@, tmp135
	mov	r0, #9	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L406	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #512	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L403:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L406:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L407	@,
	movw	r3, #707	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L403	@
.L408:
	.align	2
.L407:
	.word	.LANCHOR1+460
	.fnend
	.size	ca_setJtagKeyLen, .-ca_setJtagKeyLen
	.align	2
	.global	ca_setR2RDeactive
	.type	ca_setR2RDeactive, %function
ca_setR2RDeactive:
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
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Deactive
	bl	ca_getR2RDeactive	@
	ldr	r3, [fp, #-24]	@ u32Deactive, u32Deactive
	cmp	r3, #1	@ u32Deactive,
	beq	.L411	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #6	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L414	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #64	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L411:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L414:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L415	@,
	movw	r3, #667	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L411	@
.L416:
	.align	2
.L415:
	.word	.LANCHOR1+480
	.fnend
	.size	ca_setR2RDeactive, .-ca_setR2RDeactive
	.align	2
	.global	ca_setCWDeactive
	.type	ca_setCWDeactive, %function
ca_setCWDeactive:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Deactive
	bl	ca_getCWDeactive	@
	ldr	r3, [fp, #-24]	@ u32Deactive, u32Deactive
	cmp	r3, #1	@ u32Deactive,
	beq	.L419	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r1, r4	@, tmp135
	mov	r0, #5	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L422	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #32	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L419:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L422:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L423	@,
	movw	r3, #626	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L419	@
.L424:
	.align	2
.L423:
	.word	.LANCHOR1+500
	.fnend
	.size	ca_setCWDeactive, .-ca_setCWDeactive
	.align	2
	.global	ca_LockR2RHardKey
	.type	ca_LockR2RHardKey, %function
ca_LockR2RHardKey:
	.fnstart
.LFB797:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32Lock
	bl	ca_StatR2RHardKey	@
	ldr	r3, [fp, #-24]	@ u32Lock, u32Lock
	cmp	r3, r4	@ u32Lock,
	beq	.L430	@,
.L427:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L430:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #24	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L431	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #16777216	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
	b	.L427	@
.L431:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L432	@,
	movw	r3, #586	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L427	@
.L433:
	.align	2
.L432:
	.word	.LANCHOR1+520
	.fnend
	.size	ca_LockR2RHardKey, .-ca_LockR2RHardKey
	.align	2
	.global	ca_LockHardCwSel
	.type	ca_LockHardCwSel, %function
ca_LockHardCwSel:
	.fnstart
.LFB794:
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
	sub	r0, fp, #20	@ tmp144,,
	mov	r4, #0	@ tmp143,
	str	r4, [r0, #-8]!	@ tmp143, u32Lock
	bl	ca_StatHardCwSel	@
	ldr	r3, [fp, #-28]	@ u32Lock, u32Lock
	cmp	r3, r4	@ u32Lock,
	beq	.L440	@,
.L436:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L440:
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp148,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp148,
	mvn	r1, #0	@ tmp146,
	mov	r0, #88	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	str	r1, [fp, #-24]	@ tmp146, Value
	uxtb	r1, r1	@, tmp146
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-23]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.2380,
	mov	r0, #89	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.2383,, Ret.2380
	mov	r0, #90	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-21]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.2386, Ret.2383,
	mov	r0, #91	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.2386,
	bne	.L441	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #15	@,
	mov	r1, r4	@, Ret
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L442	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp172,
	movt	r1, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r1, #12]	@ tmp173,
	orr	r0, ip, #32768	@ tmp176, tmp173,
	str	r0, [r1, #12]	@ tmp176,
	b	.L436	@
.L441:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L443	@,
	movw	r3, #525	@,
	movw	ip, #:lower16:.LC0	@ tmp165,
	movt	ip, #:upper16:.LC0	@ tmp165,
	str	ip, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L436	@
.L442:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L443	@,
	movw	r3, #526	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp171,
	movt	lr, #:upper16:.LC0	@ tmp171,
	str	lr, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L436	@
.L444:
	.align	2
.L443:
	.word	.LANCHOR1+540
	.fnend
	.size	ca_LockHardCwSel, .-ca_LockHardCwSel
	.align	2
	.global	ca_setStbSnP
	.type	ca_setStbSnP, %function
ca_setStbSnP:
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
	sub	r3, fp, #20	@ tmp137,,
	mov	r5, r0	@ stbSnP, stbSnP
	mov	r4, #0	@ tmp136,
	str	r4, [r3, #-4]!	@ tmp136, u32StbSnP
	mov	r0, r3	@, tmp137
	bl	ca_getStbSnP	@
	cmp	r5, r4	@ stbSnP,
	beq	.L446	@,
	ldr	r0, [fp, #-24]	@ u32StbSnP, u32StbSnP
	cmp	r0, #1	@ u32StbSnP,
	beq	.L446	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp140,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp140,
	mov	r1, r4	@, tmp136
	mov	r0, #11	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L450	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r3, #12]	@ tmp146,
	orr	r1, r0, #2048	@ tmp149, tmp146,
	str	r1, [r3, #12]	@ tmp149,
	b	.L448	@
.L446:
	mov	r4, #0	@ Ret,
.L448:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L450:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L451	@,
	mov	r3, #364	@,
	movw	lr, #:lower16:.LC0	@ tmp144,
	movt	lr, #:upper16:.LC0	@ tmp144,
	str	lr, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L448	@
.L452:
	.align	2
.L451:
	.word	.LANCHOR1+560
	.fnend
	.size	ca_setStbSnP, .-ca_setStbSnP
	.align	2
	.global	ca_setMktIdP
	.type	ca_setMktIdP, %function
ca_setMktIdP:
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
	sub	r0, fp, #20	@ tmp136,,
	mov	r4, #0	@ tmp135,
	str	r4, [r0, #-4]!	@ tmp135, u32MktIdP
	bl	ca_getMktIdP	@
	ldr	r3, [fp, #-24]	@ u32MktIdP, u32MktIdP
	cmp	r3, #1	@ u32MktIdP,
	beq	.L455	@,
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp139,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp139,
	mov	r0, #10	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L458	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp144,
	movt	r1, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r1, #12]	@ tmp145,
	orr	r0, r3, #1024	@ tmp148, tmp145,
	str	r0, [r1, #12]	@ tmp148,
.L455:
	mov	r0, r4	@, Ret
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L458:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L459	@,
	mov	r3, #207	@,
	movw	lr, #:lower16:.LC0	@ tmp143,
	movt	lr, #:upper16:.LC0	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	b	.L455	@
.L460:
	.align	2
.L459:
	.word	.LANCHOR1+576
	.fnend
	.size	ca_setMktIdP, .-ca_setMktIdP
	.align	2
	.global	ca_v200_rdReg
	.type	ca_v200_rdReg, %function
ca_v200_rdReg:
	.fnstart
.LFB882:
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
	bl	ca_v200_ReadReg	@
	ldr	r0, [fp, #-16]	@, u32Value
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	ca_v200_rdReg, .-ca_v200_rdReg
	.align	2
	.type	ca_waitStat, %function
ca_waitStat:
	.fnstart
.LFB861:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, #0	@ cnt,
	sub	r6, fp, #44	@ tmp190,,
	mov	r7, r4	@ tmp192, cnt
	movw	r8, #10000	@ tmp194,
	b	.L467	@
.L464:
	str	r7, [fp, #-44]	@ tmp192, CaCtrl.Value
	bl	ca_v200_ReadReg	@
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@ tmp198,
	add	r4, r4, #1	@ cnt, cnt,
	and	r0, r1, #128	@ tmp200, tmp198,
	uxtb	r5, r0	@ tmp144, tmp200
	cmp	r5, #0	@ tmp144,
	beq	.L478	@,
	add	r4, r4, #1	@ cnt, cnt,
	cmp	r4, r8	@ cnt, tmp194
	beq	.L465	@,
.L467:
	mov	r1, r6	@, tmp190
	movw	r0, #:lower16:268435504	@,
	movt	r0, #:upper16:268435504	@,
	str	r7, [fp, #-44]	@ tmp192, CaCtrl.Value
	bl	ca_v200_ReadReg	@
	ldrb	r2, [fp, #-44]	@ zero_extendqisi2	@ tmp141,
	movw	r0, #:lower16:268435504	@,
	mov	r1, r6	@, tmp190
	and	r5, r2, #128	@ tmp143, tmp141,
	movt	r0, #:upper16:268435504	@,
	uxtb	r5, r5	@ tmp144, tmp143
	cmp	r5, #0	@ tmp144,
	bne	.L464	@,
.L478:
	movw	r3, #2006	@,
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	ip, #:lower16:.LC8	@ tmp147,
	movt	ip, #:upper16:.LC8	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	movw	r3, #9999	@ tmp148,
	cmp	r4, r3	@ cnt, tmp148
	bhi	.L465	@,
	sub	r1, fp, #36	@ tmp155,,
	movw	r0, #:lower16:268435512	@,
	movt	r0, #:upper16:268435512	@,
	str	r5, [r1, #-4]!	@ tmp144, caStat.Value
	bl	ca_v200_ReadReg	@
	ldrh	r2, [fp, #-40]	@ tmp157,
	tst	r2, #776	@ tmp157,
	moveq	r0, r5	@ Ret, tmp144
	beq	.L468	@,
	ldrb	r3, [fp, #-40]	@ zero_extendqisi2	@ tmp162,
	tst	r3, #8	@ tmp162,
	moveq	r0, r5	@ Ret, tmp144
	bne	.L479	@,
.L471:
	ldrb	r3, [fp, #-39]	@ zero_extendqisi2	@ prephitmp.2472,
	tst	r3, #1	@ prephitmp.2472,
	bne	.L480	@,
.L472:
	tst	r3, #2	@ prephitmp.2472,
	bne	.L481	@,
.L468:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L465:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	r3, #2014	@,
	movw	lr, #:lower16:.LC9	@ tmp152,
	movt	lr, #:upper16:.LC9	@ tmp152,
	str	lr, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	mov	r0, #1	@ Ret,
	b	.L468	@
.L481:
	ldr	ip, [fp, #-40]	@ tmp182,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	r3, #2076	@,
	orr	lr, ip, #512	@ tmp203, tmp182,
	movw	ip, #:lower16:.LC12	@ tmp186,
	str	lr, [fp, #-40]	@ tmp203,
	movt	ip, #:upper16:.LC12	@ tmp186,
	str	ip, [sp, #0]	@ tmp186,
	bl	HI_LogOut	@
	mvn	r0, #0	@ Ret,
	b	.L468	@
.L480:
	ldr	lr, [fp, #-40]	@ tmp174,
	mov	r0, #1	@,
	movw	r3, #2069	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	orr	ip, lr, #256	@ tmp202, tmp174,
	movw	lr, #:lower16:.LC11	@ tmp178,
	str	ip, [fp, #-40]	@ tmp202,
	movt	lr, #:upper16:.LC11	@ tmp178,
	str	lr, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	ldrb	r3, [fp, #-39]	@ zero_extendqisi2	@ prephitmp.2472,
	mvn	r0, #0	@ Ret,
	b	.L472	@
.L479:
	ldr	ip, [fp, #-40]	@ tmp166,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L482	@,
	movw	r3, #2062	@,
	orr	lr, ip, #8	@ tmp201, tmp166,
	movw	ip, #:lower16:.LC10	@ tmp170,
	str	lr, [fp, #-40]	@ tmp201,
	movt	ip, #:upper16:.LC10	@ tmp170,
	str	ip, [sp, #0]	@ tmp170,
	bl	HI_LogOut	@
	mvn	r0, #1	@ Ret,
	b	.L471	@
.L483:
	.align	2
.L482:
	.word	.LANCHOR1+592
	.fnend
	.size	ca_waitStat, .-ca_waitStat
	.align	2
	.global	ca_getR2RLadder
	.type	ca_getR2RLadder, %function
ca_getR2RLadder:
	.fnstart
.LFB829:
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
	sub	r1, fp, #20	@ tmp138,,
	mov	r4, r0	@ psel, psel
	mov	r5, #0	@ tmp136,
	movw	r0, #:lower16:268435576	@,
	str	r5, [r1, #-4]!	@ tmp136, CaCtrlProc.Value
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	cmp	r4, r5	@ psel,
	beq	.L489	@,
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@ tmp143,
	and	r0, r1, #2	@ tmp145, tmp143,
	uxtb	r0, r0	@ tmp146, tmp145
	cmp	r0, #0	@ tmp146,
	movne	r0, r5	@ D.20747, tmp136
	movne	r3, #2	@ tmp147,
	moveq	r3, #1	@ tmp148,
	str	r3, [r4, #0]	@ tmp148,* psel
.L486:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L489:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L490	@,
	movw	r3, #1433	@,
	movw	ip, #:lower16:.LC13	@ tmp141,
	movt	ip, #:upper16:.LC13	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20747,
	movt	r0, #:upper16:-2142371835	@ D.20747,
	b	.L486	@
.L491:
	.align	2
.L490:
	.word	.LANCHOR1+604
	.fnend
	.size	ca_getR2RLadder, .-ca_getR2RLadder
	.align	2
	.global	ca_getCWLadder
	.type	ca_getCWLadder, %function
ca_getCWLadder:
	.fnstart
.LFB827:
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
	sub	r1, fp, #28	@ tmp140,,
	mov	r4, r0	@ psel, psel
	mov	r6, #0	@ tmp138,
	movw	r0, #:lower16:268435576	@,
	str	r6, [r1, #-4]!	@ tmp138, CaCtrlProc.Value
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	cmp	r4, r6	@ psel,
	beq	.L501	@,
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2	@ D.20681,
	and	r5, r3, #16	@ tmp145, D.20681,
	uxtb	r5, r5	@ tmp146, tmp145
	cmp	r5, #0	@ tmp146,
	beq	.L495	@,
	and	r0, r3, #32	@ tmp148, D.20681,
	uxtb	r0, r0	@ tmp149, tmp148
	cmp	r0, #0	@ tmp149,
	movne	r3, #2	@ tmp150,
	movne	r0, r6	@ D.20680, tmp138
	strne	r3, [r4, #0]	@ tmp150,* psel
	bne	.L494	@,
.L500:
	mov	r1, #1	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* psel
.L494:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L495:
	sub	r1, fp, #28	@ tmp154,,
	movw	r0, #:lower16:268435508	@,
	movt	r0, #:upper16:268435508	@,
	str	r5, [r1, #-8]!	@ tmp146, CaSetLadder.Value
	bl	ca_v200_ReadReg	@
	ldrb	r3, [fp, #-36]	@ zero_extendqisi2	@ tmp155,
	and	r3, r3, #3	@ D.20691, tmp155,
	cmp	r3, #2	@ D.20691,
	beq	.L502	@,
	cmp	r3, #3	@ D.20691,
	mov	r0, r5	@ D.20680, tmp146
	moveq	r3, #2	@ tmp157,
	movne	r3, #3	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* psel
	b	.L494	@
.L502:
	mov	r0, r5	@ D.20680, tmp146
	b	.L500	@
.L501:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L503	@,
	mov	r3, #1312	@,
	movw	ip, #:lower16:.LC13	@ tmp143,
	movt	ip, #:upper16:.LC13	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20680,
	movt	r0, #:upper16:-2142371835	@ D.20680,
	b	.L494	@
.L504:
	.align	2
.L503:
	.word	.LANCHOR1+620
	.fnend
	.size	ca_getCWLadder, .-ca_getCWLadder
	.align	2
	.global	ca_LockBootDecEn
	.type	ca_LockBootDecEn, %function
ca_LockBootDecEn:
	.fnstart
.LFB795:
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
	sub	r1, fp, #20	@ tmp137,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp138,
	movt	r5, #:upper16:.LANCHOR0	@ tmp138,
	mov	r0, #0	@ tmp135,
	str	r0, [r1, #-4]!	@ tmp135, CaCtrlProc.Value
	movw	r0, #:lower16:268435576	@,
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ tmp140,
	tst	r3, #1	@ tmp140,
	bne	.L506	@,
	ldrb	r1, [fp, #-22]	@ zero_extendqisi2	@ tmp145,
	tst	r1, #1	@ tmp145,
	beq	.L510	@,
.L506:
	mov	r4, #0	@ Ret,
.L508:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L510:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp150,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp150,
	mov	r0, #16	@,
	mov	r1, #255	@,
	ldr	r4, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	ldreq	r0, [r5, #12]	@ tmp156,
	orreq	r3, r0, #65536	@ tmp159, tmp156,
	streq	r3, [r5, #12]	@ tmp159,
	beq	.L508	@
.L511:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L512	@,
	movw	r3, #545	@,
	movw	lr, #:lower16:.LC0	@ tmp154,
	movt	lr, #:upper16:.LC0	@ tmp154,
	str	lr, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	b	.L508	@
.L513:
	.align	2
.L512:
	.word	.LANCHOR1+636
	.fnend
	.size	ca_LockBootDecEn, .-ca_LockBootDecEn
	.align	2
	.global	ca_getStbSNEx
	.type	ca_getStbSNEx, %function
ca_getStbSNEx:
	.fnstart
.LFB792:
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
	subs	r5, r0, #0	@ pSN, pSN
	mov	r4, #0	@ tmp136,
	str	r4, [fp, #-24]	@ tmp136, stbSn
	beq	.L518	@,
	movw	r0, #:lower16:268435472	@,
	sub	r1, fp, #24	@,,
	movt	r0, #:upper16:268435472	@,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ stbSn, stbSn
	mov	r0, r4	@ D.20019, tmp136
	str	r3, [r5, #0]	@ stbSn,* pSN
.L516:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L518:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L519	@,
	movw	r3, #477	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20019,
	movt	r0, #:upper16:-2142371835	@ D.20019,
	b	.L516	@
.L520:
	.align	2
.L519:
	.word	.LANCHOR1+656
	.fnend
	.size	ca_getStbSNEx, .-ca_getStbSNEx
	.align	2
	.global	ca_setStbSNEx
	.type	ca_setStbSNEx, %function
ca_setStbSNEx:
	.fnstart
.LFB791:
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
	str	r0, [fp, #-32]	@ SN, SN
	sub	r1, fp, #24	@,,
	movw	r0, #:lower16:268435472	@,
	movt	r0, #:upper16:268435472	@,
	mov	r4, #0	@ tmp143,
	str	r4, [fp, #-24]	@ tmp143, u32STBSN
	str	r4, [fp, #-28]	@ tmp143, u32StbSnP
	bl	ca_v200_ReadReg	@
	sub	r0, fp, #28	@,,
	bl	ca_getStbSnP	@
	ldr	r0, [fp, #-28]	@ u32StbSnP, u32StbSnP
	cmp	r0, #1	@ u32StbSnP,
	beq	.L528	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp155,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp155,
	ldrb	r1, [fp, #-32]	@ zero_extendqisi2	@,
	mov	r0, #80	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-31]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.2605,
	mov	r0, #81	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-30]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.2608,, Ret.2605
	mov	r0, #82	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-29]	@ zero_extendqisi2	@,
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.2611, Ret.2608,
	mov	r0, #83	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.2611,
	bne	.L529	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #11	@,
	mov	r1, r4	@, Ret
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L530	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp179,
	movt	r1, #:upper16:.LANCHOR0	@ tmp179,
	ldr	ip, [r1, #12]	@ tmp180,
	orr	r0, ip, #2048	@ tmp183, tmp180,
	str	r0, [r1, #12]	@ tmp183,
.L524:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L528:
	ldr	r3, [fp, #-32]	@ SN, SN
	ldr	r2, [fp, #-24]	@ u32STBSN, u32STBSN
	cmp	r2, r3	@ u32STBSN, SN
	beq	.L524	@,
	mov	r1, #97	@,
	ldr	r2, .L531	@,
	movw	r3, #458	@,
	movw	ip, #:lower16:.LC14	@ tmp153,
	movw	r4, #:lower16:-2142371830	@ Ret,
	movt	ip, #:upper16:.LC14	@ tmp153,
	movt	r4, #:upper16:-2142371830	@ Ret,
	str	ip, [sp, #0]	@ tmp153,
	bl	HI_LogOut	@
	b	.L524	@
.L529:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L531	@,
	movw	r3, #463	@,
	movw	ip, #:lower16:.LC0	@ tmp172,
	movt	ip, #:upper16:.LC0	@ tmp172,
	str	ip, [sp, #0]	@ tmp172,
	bl	HI_LogOut	@
	b	.L524	@
.L530:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L531	@,
	mov	r3, #464	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp178,
	movt	lr, #:upper16:.LC0	@ tmp178,
	str	lr, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	b	.L524	@
.L532:
	.align	2
.L531:
	.word	.LANCHOR1+672
	.fnend
	.size	ca_setStbSNEx, .-ca_setStbSNEx
	.align	2
	.global	ca_getStbSN
	.type	ca_getStbSN, %function
ca_getStbSN:
	.fnstart
.LFB789:
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
	subs	r4, r0, #0	@ u8SN, u8SN
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, stbSn
	beq	.L538	@,
	movw	r0, #:lower16:268435472	@,
	sub	r1, fp, #24	@,,
	movt	r0, #:upper16:268435472	@,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ prephitmp.2629, stbSn
	cmp	r3, #0	@ prephitmp.2629,
	beq	.L539	@,
.L536:
	mov	r0, #0	@ D.19928,
	str	r3, [r4, #0]	@ prephitmp.2629,* u8SN
.L535:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L539:
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp144,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp144,
	mov	r0, #80	@,
	ldr	r2, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	mov	r3, r0	@ prephitmp.2629,
	b	.L536	@
.L538:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L540	@,
	movw	r3, #379	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movt	ip, #:upper16:.LC1	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19928,
	movt	r0, #:upper16:-2142371835	@ D.19928,
	b	.L535	@
.L541:
	.align	2
.L540:
	.word	.LANCHOR1+688
	.fnend
	.size	ca_getStbSN, .-ca_getStbSN
	.align	2
	.global	ca_setStbSN
	.type	ca_setStbSN, %function
ca_setStbSN:
	.fnstart
.LFB790:
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
	mov	r5, r0	@ u8SN, u8SN
	sub	r0, fp, #32	@,,
	mov	r4, #0	@ tmp137,
	str	r4, [fp, #-32]	@ tmp137, u32StbSnP
	str	r4, [fp, #-36]	@ tmp137, u8CurrentStbSN
	bl	ca_getStbSnP	@
	sub	r0, fp, #36	@,,
	bl	ca_getStbSN	@
	ldr	r3, [fp, #-32]	@ u32StbSnP, u32StbSnP
	cmp	r3, r4	@ u32StbSnP,
	beq	.L543	@,
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2	@ u8CurrentStbSN, u8CurrentStbSN
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ tmp143,* u8SN
	cmp	r2, r0	@ u8CurrentStbSN, tmp143
	bne	.L544	@,
	ldrb	r1, [fp, #-35]	@ zero_extendqisi2	@ u8CurrentStbSN, u8CurrentStbSN
	ldrb	ip, [r5, #1]	@ zero_extendqisi2	@ tmp145,
	cmp	r1, ip	@ u8CurrentStbSN, tmp145
	bne	.L544	@,
	ldrb	lr, [fp, #-34]	@ zero_extendqisi2	@ u8CurrentStbSN, u8CurrentStbSN
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ tmp147,
	cmp	lr, r3	@ u8CurrentStbSN, tmp147
	bne	.L544	@,
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ tmp149,
	ldrb	r2, [fp, #-33]	@ zero_extendqisi2	@ u8CurrentStbSN, u8CurrentStbSN
	cmp	r2, r0	@ u8CurrentStbSN, tmp149
	beq	.L545	@,
.L544:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L551	@,
	movw	r3, #423	@,
	movw	r4, #:lower16:.LC15	@ tmp152,
	movt	r4, #:upper16:.LC15	@ tmp152,
	str	r4, [sp, #0]	@ tmp152,
	movw	r4, #:lower16:-2142371830	@ Ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371830	@ Ret,
	b	.L545	@
.L543:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp154,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp154,
	mov	r0, #80	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* u8SN
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L546	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #81	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L546	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #82	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L546	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #83	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L546	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #11	@,
	mov	r1, r4	@, Ret
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L550	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp178,
	movt	r0, #:upper16:.LANCHOR0	@ tmp178,
	ldr	ip, [r0, #12]	@ tmp179,
	orr	r1, ip, #2048	@ tmp182, tmp179,
	str	r1, [r0, #12]	@ tmp182,
.L545:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L546:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L551	@,
	movw	r3, #430	@,
	movw	ip, #:lower16:.LC0	@ tmp171,
	movt	ip, #:upper16:.LC0	@ tmp171,
	str	ip, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L545	@
.L550:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L551	@,
	movw	r3, #434	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp177,
	movt	lr, #:upper16:.LC0	@ tmp177,
	str	lr, [sp, #0]	@ tmp177,
	bl	HI_LogOut	@
	b	.L545	@
.L552:
	.align	2
.L551:
	.word	.LANCHOR1+700
	.fnend
	.size	ca_setStbSN, .-ca_setStbSN
	.align	2
	.global	ca_getMarketIDEx
	.type	ca_getMarketIDEx, %function
ca_getMarketIDEx:
	.fnstart
.LFB786:
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
	subs	r5, r0, #0	@ pId, pId
	mov	r4, #0	@ tmp136,
	str	r4, [fp, #-24]	@ tmp136, marketID
	beq	.L557	@,
	mov	r0, #268435464	@,
	sub	r1, fp, #24	@,,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ marketID, marketID
	mov	r0, r4	@ D.19887, tmp136
	str	r3, [r5, #0]	@ marketID,* pId
.L555:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L557:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L558	@,
	movw	r3, #319	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19887,
	movt	r0, #:upper16:-2142371835	@ D.19887,
	b	.L555	@
.L559:
	.align	2
.L558:
	.word	.LANCHOR1+712
	.fnend
	.size	ca_getMarketIDEx, .-ca_getMarketIDEx
	.align	2
	.global	ca_setMarketIDEx
	.type	ca_setMarketIDEx, %function
ca_setMarketIDEx:
	.fnstart
.LFB785:
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
	str	r0, [fp, #-32]	@ Id, Id
	sub	r1, fp, #24	@,,
	mov	r0, #268435464	@,
	mov	r4, #0	@ tmp143,
	str	r4, [fp, #-24]	@ tmp143, u32MarketId
	str	r4, [fp, #-28]	@ tmp143, u32MarketIdP
	bl	ca_v200_ReadReg	@
	sub	r0, fp, #28	@,,
	bl	ca_getMktIdP	@
	ldr	r0, [fp, #-28]	@ u32MarketIdP, u32MarketIdP
	cmp	r0, #1	@ u32MarketIdP,
	beq	.L567	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp154,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp154,
	ldrb	r1, [fp, #-32]	@ zero_extendqisi2	@,
	mov	r0, #44	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-31]	@ zero_extendqisi2	@,
	ldr	r3, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.2754,
	mov	r0, #45	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-30]	@ zero_extendqisi2	@,
	ldr	ip, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.2757,, Ret.2754
	mov	r0, #46	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-29]	@ zero_extendqisi2	@,
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.2760, Ret.2757,
	mov	r0, #47	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.2760,
	bne	.L568	@,
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #10	@,
	mov	r1, #255	@,
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L569	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp178,
	movt	r1, #:upper16:.LANCHOR0	@ tmp178,
	ldr	ip, [r1, #12]	@ tmp179,
	orr	r0, ip, #1024	@ tmp182, tmp179,
	str	r0, [r1, #12]	@ tmp182,
.L563:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L567:
	ldr	r3, [fp, #-32]	@ Id, Id
	ldr	r2, [fp, #-24]	@ u32MarketId, u32MarketId
	cmp	r2, r3	@ u32MarketId, Id
	beq	.L563	@,
	mov	r1, #97	@,
	ldr	r2, .L570	@,
	mov	r3, #300	@,
	movw	ip, #:lower16:.LC15	@ tmp152,
	movw	r4, #:lower16:-2142371830	@ Ret,
	movt	ip, #:upper16:.LC15	@ tmp152,
	movt	r4, #:upper16:-2142371830	@ Ret,
	str	ip, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	b	.L563	@
.L568:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L570	@,
	movw	r3, #305	@,
	movw	ip, #:lower16:.LC0	@ tmp171,
	movt	ip, #:upper16:.LC0	@ tmp171,
	str	ip, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L563	@
.L569:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L570	@,
	movw	r3, #306	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp177,
	movt	lr, #:upper16:.LC0	@ tmp177,
	str	lr, [sp, #0]	@ tmp177,
	bl	HI_LogOut	@
	b	.L563	@
.L571:
	.align	2
.L570:
	.word	.LANCHOR1+732
	.fnend
	.size	ca_setMarketIDEx, .-ca_setMarketIDEx
	.align	2
	.global	ca_getMarketID
	.type	ca_getMarketID, %function
ca_getMarketID:
	.fnstart
.LFB783:
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
	subs	r4, r0, #0	@ u8Id, u8Id
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, MarketID
	beq	.L577	@,
	mov	r0, #268435464	@,
	sub	r1, fp, #24	@,,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ prephitmp.2778, MarketID
	cmp	r3, #0	@ prephitmp.2778,
	beq	.L578	@,
.L575:
	mov	r0, #0	@ D.19796,
	str	r3, [r4, #0]	@ prephitmp.2778,* u8Id
.L574:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L578:
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp143,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp143,
	mov	r0, #44	@,
	ldr	r2, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	mov	r3, r0	@ prephitmp.2778,
	b	.L575	@
.L577:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L579	@,
	mov	r3, #221	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movt	ip, #:upper16:.LC1	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19796,
	movt	r0, #:upper16:-2142371835	@ D.19796,
	b	.L574	@
.L580:
	.align	2
.L579:
	.word	.LANCHOR1+752
	.fnend
	.size	ca_getMarketID, .-ca_getMarketID
	.align	2
	.global	ca_setMarketID
	.type	ca_setMarketID, %function
ca_setMarketID:
	.fnstart
.LFB784:
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
	mov	r5, r0	@ u8Id, u8Id
	sub	r0, fp, #32	@,,
	mov	r4, #0	@ tmp137,
	str	r4, [fp, #-32]	@ tmp137, marketIDP
	str	r4, [fp, #-36]	@ tmp137, u8CurrentMarketID
	bl	ca_getMktIdP	@
	sub	r0, fp, #36	@,,
	bl	ca_getMarketID	@
	ldr	r3, [fp, #-32]	@ marketIDP, marketIDP
	cmp	r3, r4	@ marketIDP,
	beq	.L582	@,
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2	@ u8CurrentMarketID, u8CurrentMarketID
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ tmp143,* u8Id
	cmp	r2, r0	@ u8CurrentMarketID, tmp143
	bne	.L583	@,
	ldrb	r1, [fp, #-35]	@ zero_extendqisi2	@ u8CurrentMarketID, u8CurrentMarketID
	ldrb	ip, [r5, #1]	@ zero_extendqisi2	@ tmp145,
	cmp	r1, ip	@ u8CurrentMarketID, tmp145
	bne	.L583	@,
	ldrb	lr, [fp, #-34]	@ zero_extendqisi2	@ u8CurrentMarketID, u8CurrentMarketID
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ tmp147,
	cmp	lr, r3	@ u8CurrentMarketID, tmp147
	bne	.L583	@,
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ tmp149,
	ldrb	r2, [fp, #-33]	@ zero_extendqisi2	@ u8CurrentMarketID, u8CurrentMarketID
	cmp	r2, r0	@ u8CurrentMarketID, tmp149
	beq	.L584	@,
.L583:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L590	@,
	movw	r3, #266	@,
	movw	r4, #:lower16:.LC15	@ tmp152,
	movt	r4, #:upper16:.LC15	@ tmp152,
	str	r4, [sp, #0]	@ tmp152,
	movw	r4, #:lower16:-2142371830	@ Ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371830	@ Ret,
	b	.L584	@
.L582:
	movw	r6, #:lower16:g_pOTPExportFunctionList	@ tmp154,
	movt	r6, #:upper16:g_pOTPExportFunctionList	@ tmp154,
	mov	r0, #44	@,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@,* u8Id
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L585	@,
	ldr	r2, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #45	@,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L585	@,
	ldr	ip, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #46	@,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@,
	ldr	r4, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L585	@,
	ldr	lr, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #47	@,
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@,
	ldr	r3, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ Ret,
	bne	.L585	@,
	ldr	r3, [r6, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #10	@,
	mov	r1, #255	@,
	ldr	r2, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	ip, r0, #0	@ Ret,
	bne	.L589	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp178,
	movt	r0, #:upper16:.LANCHOR0	@ tmp178,
	ldr	ip, [r0, #12]	@ tmp179,
	orr	r1, ip, #1024	@ tmp182, tmp179,
	str	r1, [r0, #12]	@ tmp182,
.L584:
	mov	r0, r4	@, Ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L585:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L590	@,
	movw	r3, #274	@,
	movw	ip, #:lower16:.LC0	@ tmp171,
	movt	ip, #:upper16:.LC0	@ tmp171,
	str	ip, [sp, #0]	@ tmp171,
	bl	HI_LogOut	@
	b	.L584	@
.L589:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L590	@,
	mov	r3, #276	@,
	mov	r4, ip	@ Ret, Ret
	movw	lr, #:lower16:.LC0	@ tmp177,
	movt	lr, #:upper16:.LC0	@ tmp177,
	str	lr, [sp, #0]	@ tmp177,
	bl	HI_LogOut	@
	b	.L584	@
.L591:
	.align	2
.L590:
	.word	.LANCHOR1+768
	.fnend
	.size	ca_setMarketID, .-ca_setMarketID
	.align	2
	.global	ca_getUniqueChipID
	.type	ca_getUniqueChipID, %function
ca_getUniqueChipID:
	.fnstart
.LFB780:
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
	subs	r4, r0, #0	@ pID, pID
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, chipid
	beq	.L597	@,
	mov	r0, #268435468	@,
	sub	r1, fp, #24	@,,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ prephitmp.2869, chipid
	cmp	r3, #0	@ prephitmp.2869,
	beq	.L598	@,
.L595:
	mov	r0, #0	@ D.19752,
	str	r3, [r4, #0]	@ prephitmp.2869,* pID
.L594:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L598:
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp143,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp143,
	mov	r0, #40	@,
	ldr	r2, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	mov	r3, r0	@ prephitmp.2869,
	b	.L595	@
.L597:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L599	@,
	mov	r3, #158	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movt	ip, #:upper16:.LC1	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19752,
	movt	r0, #:upper16:-2142371835	@ D.19752,
	b	.L594	@
.L600:
	.align	2
.L599:
	.word	.LANCHOR1+784
	.fnend
	.size	ca_getUniqueChipID, .-ca_getUniqueChipID
	.align	2
	.global	ca_getChipID
	.type	ca_getChipID, %function
ca_getChipID:
	.fnstart
.LFB779:
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
	subs	r4, r0, #0	@ pID, pID
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, chipid
	beq	.L606	@,
	mov	r0, #268435468	@,
	sub	r1, fp, #24	@,,
	bl	ca_v200_ReadReg	@
	ldr	r3, [fp, #-24]	@ prephitmp.2893, chipid
	cmp	r3, #0	@ prephitmp.2893,
	beq	.L607	@,
.L604:
	mov	r0, #0	@ D.19737,
	str	r3, [r4, #0]	@ prephitmp.2893,* pID
.L603:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L607:
	movw	lr, #:lower16:g_pOTPExportFunctionList	@ tmp143,
	movt	lr, #:upper16:g_pOTPExportFunctionList	@ tmp143,
	mov	r0, #40	@,
	ldr	r2, [lr, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	r1	@ <variable>.HAL_OTP_V100_Read
	mov	r3, r0	@ prephitmp.2893,
	b	.L604	@
.L606:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L608	@,
	mov	r3, #136	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movt	ip, #:upper16:.LC1	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19737,
	movt	r0, #:upper16:-2142371835	@ D.19737,
	b	.L603	@
.L609:
	.align	2
.L608:
	.word	.LANCHOR1+804
	.fnend
	.size	ca_getChipID, .-ca_getChipID
	.align	2
	.global	ca_setChipId
	.type	ca_setChipId, %function
ca_setChipId:
	.fnstart
.LFB814:
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
	sub	r1, fp, #20	@ tmp144,,
	mov	r2, #0	@ tmp142,
	str	r0, [fp, #-32]	@ ChipId, ChipId
	str	r2, [r1, #-8]!	@ tmp142, u32ChipId
	mov	r0, r1	@, tmp144
	str	r2, [fp, #-24]	@ tmp142, sr6Value
	bl	ca_getChipID	@
	sub	r0, fp, #24	@,,
	mov	r1, #6	@,
	bl	ca_getSR	@
	ldr	r3, [fp, #-24]	@ sr6Value, sr6Value
	cmp	r3, #1	@ sr6Value,
	beq	.L615	@,
	movw	r5, #:lower16:g_pOTPExportFunctionList	@ tmp150,
	movt	r5, #:upper16:g_pOTPExportFunctionList	@ tmp150,
	ldrb	r1, [fp, #-32]	@ zero_extendqisi2	@,
	mov	r0, #40	@,
	ldr	lr, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	ip, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-31]	@ zero_extendqisi2	@,
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r4, r0	@ Ret.2928,
	mov	r0, #41	@,
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-30]	@ zero_extendqisi2	@,
	ldr	ip, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r0, r4	@ Ret.2931,, Ret.2928
	mov	r0, #42	@,
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r5, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [fp, #-29]	@ zero_extendqisi2	@,
	ldr	r3, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	r4, r4, r0	@ Ret.2934, Ret.2931,
	mov	r0, #43	@,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	orrs	r4, r4, r0	@ Ret, Ret.2934,
	bne	.L616	@,
.L613:
	mov	r0, r4	@, Ret
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L615:
	ldr	r4, [fp, #-28]	@ u32ChipId, u32ChipId
	movw	r0, #:lower16:-2142371830	@ tmp170,
	ldr	ip, [fp, #-32]	@ ChipId, ChipId
	movt	r0, #:upper16:-2142371830	@ tmp170,
	cmp	r4, ip	@ u32ChipId, ChipId
	movne	r4, r0	@ Ret, tmp170
	moveq	r4, #0	@ Ret,
	b	.L613	@
.L616:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L617	@,
	movw	r3, #962	@,
	movw	ip, #:lower16:.LC0	@ tmp167,
	movt	ip, #:upper16:.LC0	@ tmp167,
	str	ip, [sp, #0]	@ tmp167,
	bl	HI_LogOut	@
	b	.L613	@
.L618:
	.align	2
.L617:
	.word	.LANCHOR1+820
	.fnend
	.size	ca_setChipId, .-ca_setChipId
	.align	2
	.global	DRV_ADVCA_V200_Release
	.type	DRV_ADVCA_V200_Release, %function
DRV_ADVCA_V200_Release:
	.fnstart
.LFB876:
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
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	mov	r3, #0	@ tmp137,
	str	r3, [fp, #-24]	@ tmp137, u32Value
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L625	@,
	sub	r0, fp, #24	@,,
	bl	ca_atomic_dec_return	@
	cmn	r0, #1	@ ret.2959,
	beq	.L621	@,
	ldr	r0, [fp, #-24]	@ u32Value, u32Value
	cmp	r0, #0	@ u32Value,
	beq	.L626	@,
.L623:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	mov	r0, #0	@ D.22027,
.L621:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L625:
	ldr	lr, .L627	@ tmp140,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #3455	@,
	movw	ip, #:lower16:.LC16	@ tmp141,
	movt	ip, #:upper16:.LC16	@ tmp141,
	mov	r2, lr	@, tmp140
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mov	r0, r4	@ D.22027, ret
	b	.L621	@
.L626:
	ldr	lr, .L627	@ tmp147,
	mov	r0, #3	@,
	mov	r1, #97	@,
	movw	r3, #3467	@,
	movw	ip, #:lower16:.LC17	@ tmp148,
	movt	ip, #:upper16:.LC17	@ tmp148,
	mov	r2, lr	@, tmp147
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L623	@
.L628:
	.align	2
.L627:
	.word	.LANCHOR1+836
	.fnend
	.size	DRV_ADVCA_V200_Release, .-DRV_ADVCA_V200_Release
	.align	2
	.global	DRV_ADVCA_V200_Open
	.type	DRV_ADVCA_V200_Open, %function
DRV_ADVCA_V200_Open:
	.fnstart
.LFB875:
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
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	mov	r5, #0	@ tmp136,
	str	r5, [fp, #-24]	@ tmp136, u32Value
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L634	@,
	sub	r0, fp, #24	@,,
	bl	ca_atomic_inc_return	@
	ldr	r3, [fp, #-24]	@ u32Value, u32Value
	cmp	r3, #1	@ u32Value,
	beq	.L635	@,
.L632:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	mov	r0, #0	@ D.22014,
.L631:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L635:
	mov	r0, r5	@, tmp136
	bl	ca_setCWAlg	@
	mov	r0, r5	@, tmp136
	bl	ca_setR2RAlg	@
	ldr	r0, .L636	@,
	bl	ca_getCWLadder	@
	ldr	r0, .L636+4	@,
	bl	ca_getR2RLadder	@
	b	.L632	@
.L634:
	ldr	lr, .L636+8	@ tmp139,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #3430	@,
	movw	ip, #:lower16:.LC16	@ tmp140,
	movt	ip, #:upper16:.LC16	@ tmp140,
	mov	r2, lr	@, tmp139
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mov	r0, r4	@ D.22014, ret
	b	.L631	@
.L637:
	.align	2
.L636:
	.word	.LANCHOR0+16
	.word	.LANCHOR0+20
	.word	.LANCHOR1+860
	.fnend
	.size	DRV_ADVCA_V200_Open, .-DRV_ADVCA_V200_Open
	.align	2
	.type	ca_clearStat, %function
ca_clearStat:
	.fnstart
.LFB862:
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
	movw	r4, #:lower16:268435512	@ tmp138,
	sub	r1, fp, #20	@ tmp135,,
	movt	r4, #:upper16:268435512	@ tmp138,
	mov	r3, #0	@ tmp133,
	mov	r0, r4	@, tmp138
	str	r3, [r1, #-4]!	@ tmp133, caStat.Value
	bl	ca_v200_ReadReg	@
	mov	r0, r4	@, tmp138
	ldr	r1, [fp, #-24]	@, caStat.Value
	bl	ca_v200_WriteReg	@
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	ca_clearStat, .-ca_clearStat
	.align	2
	.global	ca_DecryptSwpk
	.type	ca_DecryptSwpk, %function
ca_DecryptSwpk:
	.fnstart
.LFB868:
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
	mov	r5, r0	@ AddrID, AddrID
	mov	r4, r1	@ pEncryptSwpk, pEncryptSwpk
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L647	@,
	bl	ca_clearStat	@
	mov	r1, #8	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pEncryptSwpk
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	bl	ca_v200_WriteReg	@
	mov	r1, #32	@ CaCtrl,
	bfi	r1, r5, #8, #6	@ CaCtrl, AddrID,,
	movw	r0, #:lower16:268435504	@,
	orr	r1, r1, #128	@, CaCtrl,
	movt	r0, #:upper16:268435504	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@ Ret.3027
	bgt	.L648	@,
	bne	.L649	@,
.L642:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L647:
	ldr	r2, .L650	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2444	@,
.L646:
	movw	ip, #:lower16:.LC18	@ tmp163,
	movt	ip, #:upper16:.LC18	@ tmp163,
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21382,
	movt	r0, #:upper16:-2142371834	@ D.21382,
	b	.L642	@
.L648:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L650	@,
	movw	r3, #2473	@,
	b	.L646	@
.L649:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L650	@,
	movw	r3, #2478	@,
	movw	lr, #:lower16:.LC19	@ tmp166,
	movt	lr, #:upper16:.LC19	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371825	@ D.21382,
	movt	r0, #:upper16:-2142371825	@ D.21382,
	b	.L642	@
.L651:
	.align	2
.L650:
	.word	.LANCHOR1+880
	.fnend
	.size	ca_DecryptSwpk, .-ca_DecryptSwpk
	.align	2
	.global	DRV_ADVCA_V200_EncryptSwpk
	.type	DRV_ADVCA_V200_EncryptSwpk, %function
DRV_ADVCA_V200_EncryptSwpk:
	.fnstart
.LFB867:
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
	mov	r4, r0	@ pClearSwpk, pClearSwpk
	mov	r5, r1	@ pEncryptSwpk, pEncryptSwpk
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L659	@,
	bl	ca_clearStat	@
	mov	r1, #4	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pClearSwpk
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	bl	ca_v200_WriteReg	@
	mov	r1, #128	@,
	movw	r0, #:lower16:268435504	@,
	movt	r0, #:upper16:268435504	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	subs	r4, r0, #0	@ Ret.3051,
	bgt	.L660	@,
	bne	.L661	@,
	mov	r1, r5	@, pEncryptSwpk
	movw	r0, #:lower16:268435632	@,
	movt	r0, #:upper16:268435632	@,
	bl	ca_v200_ReadReg	@
	add	r1, r5, #4	@, pEncryptSwpk,
	movw	r0, #:lower16:268435636	@,
	movt	r0, #:upper16:268435636	@,
	bl	ca_v200_ReadReg	@
	add	r1, r5, #8	@, pEncryptSwpk,
	movw	r0, #:lower16:268435640	@,
	movt	r0, #:upper16:268435640	@,
	bl	ca_v200_ReadReg	@
	add	r1, r5, #12	@, pEncryptSwpk,
	movw	r0, #:lower16:268435644	@,
	movt	r0, #:upper16:268435644	@,
	bl	ca_v200_ReadReg	@
	mov	r0, r4	@ D.21353, Ret.3051
.L654:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L659:
	ldr	r2, .L662	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2387	@,
.L658:
	movw	ip, #:lower16:.LC18	@ tmp156,
	movt	ip, #:upper16:.LC18	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21353,
	movt	r0, #:upper16:-2142371834	@ D.21353,
	b	.L654	@
.L660:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L662	@,
	movw	r3, #2415	@,
	b	.L658	@
.L661:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L662	@,
	movw	r3, #2420	@,
	movw	lr, #:lower16:.LC19	@ tmp159,
	movt	lr, #:upper16:.LC19	@ tmp159,
	str	lr, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371825	@ D.21353,
	movt	r0, #:upper16:-2142371825	@ D.21353,
	b	.L654	@
.L663:
	.align	2
.L662:
	.word	.LANCHOR1+896
	.fnend
	.size	DRV_ADVCA_V200_EncryptSwpk, .-DRV_ADVCA_V200_EncryptSwpk
	.align	2
	.global	ca_DecryptPrtData
	.type	ca_DecryptPrtData, %function
ca_DecryptPrtData:
	.fnstart
.LFB866:
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
	sub	ip, fp, #20	@ tmp143,,
	mov	r2, #0	@ tmp141,
	mov	r4, r0	@ pEncryptData, pEncryptData
	str	r2, [ip, #-4]!	@ tmp141, CaCtrlProc.Value
	mov	r5, r1	@ pClearData, pClearData
	movw	r0, #:lower16:268435576	@,
	mov	r1, ip	@, tmp143
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2	@ tmp145,
	tst	r3, #4	@ tmp145,
	bne	.L665	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp149,
	movt	r1, #:upper16:.LANCHOR0	@ tmp149,
	ldrb	r0, [r1, #14]	@ zero_extendqisi2	@ tmp151,
	tst	r0, #4	@ tmp151,
	bne	.L665	@,
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L673	@,
	bl	ca_clearStat	@
	mov	r1, #3	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pEncryptData
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pEncryptData
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r3, [r4, #4]	@ tmp170,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	add	r1, r3, #1	@, tmp170,
	bl	ca_v200_WriteReg	@
	mov	r1, #160	@,
	movw	r0, #:lower16:268435504	@,
	movt	r0, #:upper16:268435504	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	subs	r4, r0, #0	@ Ret.3077,
	bgt	.L674	@,
	bne	.L675	@,
	mov	r1, r5	@, pClearData
	movw	r0, #:lower16:268435632	@,
	movt	r0, #:upper16:268435632	@,
	bl	ca_v200_ReadReg	@
	add	r1, r5, #4	@, pClearData,
	movw	r0, #:lower16:268435636	@,
	movt	r0, #:upper16:268435636	@,
	bl	ca_v200_ReadReg	@
	mov	r0, r4	@ D.21326, Ret.3077
.L667:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L665:
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L676	@,
	mov	r3, #2320	@,
	movw	lr, #:lower16:.LC20	@ tmp157,
	movt	lr, #:upper16:.LC20	@ tmp157,
	str	lr, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371826	@ D.21326,
	movt	r0, #:upper16:-2142371826	@ D.21326,
	b	.L667	@
.L673:
	ldr	r2, .L676	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2328	@,
.L672:
	movw	ip, #:lower16:.LC18	@ tmp176,
	movt	ip, #:upper16:.LC18	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21326,
	movt	r0, #:upper16:-2142371834	@ D.21326,
	b	.L667	@
.L674:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L676	@,
	movw	r3, #2360	@,
	b	.L672	@
.L675:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L676	@,
	movw	r3, #2365	@,
	movw	lr, #:lower16:.LC19	@ tmp179,
	movt	lr, #:upper16:.LC19	@ tmp179,
	str	lr, [sp, #0]	@ tmp179,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371827	@ D.21326,
	movt	r0, #:upper16:-2142371827	@ D.21326,
	b	.L667	@
.L677:
	.align	2
.L676:
	.word	.LANCHOR1+924
	.fnend
	.size	ca_DecryptPrtData, .-ca_DecryptPrtData
	.align	2
	.global	ca_DecryptLpk
	.type	ca_DecryptLpk, %function
ca_DecryptLpk:
	.fnstart
.LFB865:
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
	sub	r1, fp, #20	@ tmp141,,
	mov	r4, r0	@ pEncryptLpk, pEncryptLpk
	mov	r0, #0	@ tmp139,
	str	r0, [r1, #-4]!	@ tmp139, CaCtrlProc.Value
	movw	r0, #:lower16:268435576	@,
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2	@ tmp143,
	tst	r3, #4	@ tmp143,
	bne	.L679	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp147,
	movt	r2, #:upper16:.LANCHOR0	@ tmp147,
	ldrb	r1, [r2, #14]	@ zero_extendqisi2	@ tmp149,
	tst	r1, #4	@ tmp149,
	bne	.L679	@,
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L687	@,
	bl	ca_clearStat	@
	mov	r1, #2	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pEncryptLpk
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	bl	ca_v200_WriteReg	@
	mov	r1, #160	@,
	movw	r0, #:lower16:268435504	@,
	movt	r0, #:upper16:268435504	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@ Ret.3101
	bgt	.L688	@,
	bne	.L689	@,
.L681:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L679:
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L690	@,
	movw	r3, #2259	@,
	movw	ip, #:lower16:.LC20	@ tmp155,
	movt	ip, #:upper16:.LC20	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371826	@ D.21292,
	movt	r0, #:upper16:-2142371826	@ D.21292,
	b	.L681	@
.L687:
	ldr	r2, .L690	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2267	@,
.L686:
	movw	lr, #:lower16:.LC18	@ tmp173,
	movt	lr, #:upper16:.LC18	@ tmp173,
	str	lr, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21292,
	movt	r0, #:upper16:-2142371834	@ D.21292,
	b	.L681	@
.L688:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L690	@,
	movw	r3, #2295	@,
	b	.L686	@
.L689:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L690	@,
	movw	r3, #2300	@,
	movw	ip, #:lower16:.LC19	@ tmp176,
	movt	ip, #:upper16:.LC19	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371827	@ D.21292,
	movt	r0, #:upper16:-2142371827	@ D.21292,
	b	.L681	@
.L691:
	.align	2
.L690:
	.word	.LANCHOR1+944
	.fnend
	.size	ca_DecryptLpk, .-ca_DecryptLpk
	.align	2
	.global	ca_DecryptR2R
	.type	ca_DecryptR2R, %function
ca_DecryptR2R:
	.fnstart
.LFB864:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp143,
	movt	r5, #:upper16:.LANCHOR0	@ tmp143,
	mov	r6, r0	@ enLevel, enLevel
	mov	r4, r1	@ pDataIn, pDataIn
	mov	r7, r2	@ AddrID, AddrID
	ldr	ip, [r5, #20]	@ g_R2RLadderSel.433, g_R2RLadderSel
	mov	r8, r3	@ bEnOrDeCrypt, bEnOrDeCrypt
	cmp	ip, r0	@ g_R2RLadderSel.433, enLevel
	bcc	.L703	@,
	cmp	r1, #0	@ pDataIn,
	beq	.L704	@,
	mov	r1, #0	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pDataIn
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L705	@,
	bl	ca_clearStat	@
	ldr	r2, [r5, #4]	@ g_R2RAlgType, g_R2RAlgType
	mov	r0, #0	@ CaCtrl,
	ldr	r3, [r5, #20]	@ g_R2RLadderSel, g_R2RLadderSel
	bfi	r0, r2, #0, #1	@ CaCtrl, g_R2RAlgType,,
	bfi	r0, r6, #1, #2	@ CaCtrl, enLevel,,
	cmp	r3, r6	@ g_R2RLadderSel, enLevel
	orr	r1, r0, #8	@ CaCtrl, CaCtrl,
	movw	r0, #:lower16:268435504	@,
	bfi	r1, r8, #5, #1	@ CaCtrl, bEnOrDeCrypt,,
	movt	r0, #:upper16:268435504	@,
	bfieq	r1, r7, #8, #6	@ CaCtrl, AddrID,,
	orr	r1, r1, #128	@, CaCtrl,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@ Ret.3126
	bgt	.L706	@,
	cmn	r0, #2	@ Ret.3126,
	beq	.L707	@,
	cmp	r0, #0	@ Ret.3126,
	bne	.L708	@,
.L694:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L705:
	ldr	r2, .L709	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2206	@,
.L702:
	movw	lr, #:lower16:.LC18	@ tmp177,
	movt	lr, #:upper16:.LC18	@ tmp177,
	str	lr, [sp, #0]	@ tmp177,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21243,
	movt	r0, #:upper16:-2142371834	@ D.21243,
	b	.L694	@
.L706:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L709	@,
	movw	r3, #2229	@,
	b	.L702	@
.L703:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L709	@,
	movw	r3, #2181	@,
	str	r6, [sp, #4]	@ enLevel,
	movw	lr, #:lower16:.LC21	@ tmp146,
	str	ip, [sp, #8]	@ g_R2RLadderSel.433,
	movt	lr, #:upper16:.LC21	@ tmp146,
	str	lr, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.21243,
	movt	r0, #:upper16:-2142371835	@ D.21243,
	b	.L694	@
.L704:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L709	@,
	movw	r3, #2187	@,
	movw	ip, #:lower16:.LC22	@ tmp149,
	movt	ip, #:upper16:.LC22	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.21243,
	movt	r0, #:upper16:-2142371835	@ D.21243,
	b	.L694	@
.L707:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L709	@,
	movw	r3, #2234	@,
	movw	ip, #:lower16:.LC23	@ tmp180,
	movt	ip, #:upper16:.LC23	@ tmp180,
	str	ip, [sp, #0]	@ tmp180,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371827	@ D.21243,
	movt	r0, #:upper16:-2142371827	@ D.21243,
	b	.L694	@
.L708:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L709	@,
	movw	r3, #2239	@,
	movw	lr, #:lower16:.LC19	@ tmp183,
	movt	lr, #:upper16:.LC19	@ tmp183,
	str	lr, [sp, #0]	@ tmp183,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21243,
	b	.L694	@
.L710:
	.align	2
.L709:
	.word	.LANCHOR1+960
	.fnend
	.size	ca_DecryptR2R, .-ca_DecryptR2R
	.align	2
	.global	DRV_ADVCA_V200_EncryptCipher
	.type	DRV_ADVCA_V200_EncryptCipher, %function
DRV_ADVCA_V200_EncryptCipher:
	.fnstart
.LFB879:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r7, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, #0	@ tmp137,
	mov	r6, r0	@ AddrID, AddrID
	str	r5, [fp, #-32]	@ tmp137, u32Value
	beq	.L718	@,
	sub	r0, fp, #32	@,,
	bl	ca_atomic_read	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L713	@,
	ldr	r3, [fp, #-32]	@ u32Value, u32Value
	cmp	r3, #0	@ u32Value,
	beq	.L719	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L720	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	mov	r1, r7	@, pu32DataIn
	mov	r2, r6	@, AddrID
	ldr	r0, [r3, #20]	@, g_R2RLadderSel
	mov	r3, r5	@, tmp137
	bl	ca_DecryptR2R	@
	subs	r4, r0, #0	@ ret,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
.L713:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L718:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L721	@,
	movw	r3, #3589	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	ip, #:upper16:.LC1	@ tmp140,
	movt	r4, #:upper16:-2142371835	@ ret,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	b	.L713	@
.L719:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L721	@,
	movw	r3, #3601	@,
	movw	r4, #:lower16:.LC24	@ tmp145,
	movt	r4, #:upper16:.LC24	@ tmp145,
	str	r4, [sp, #0]	@ tmp145,
	movw	r4, #:lower16:-2142371837	@ ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371837	@ ret,
	b	.L713	@
.L720:
	ldr	lr, .L721	@ tmp148,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #3608	@,
	movw	ip, #:lower16:.LC16	@ tmp149,
	movt	ip, #:upper16:.LC16	@ tmp149,
	mov	r2, lr	@, tmp148
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L713	@
.L722:
	.align	2
.L721:
	.word	.LANCHOR1+976
	.fnend
	.size	DRV_ADVCA_V200_EncryptCipher, .-DRV_ADVCA_V200_EncryptCipher
	.align	2
	.global	DRV_ADVCA_V200_DecryptCipher
	.type	DRV_ADVCA_V200_DecryptCipher, %function
DRV_ADVCA_V200_DecryptCipher:
	.fnstart
.LFB878:
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
	subs	r6, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r3, #0	@ tmp137,
	mov	r5, r0	@ AddrID, AddrID
	str	r3, [fp, #-32]	@ tmp137, u32Value
	beq	.L732	@,
	sub	r0, fp, #32	@,,
	bl	ca_atomic_read	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L725	@,
	ldr	r0, [fp, #-32]	@ u32Value, u32Value
	cmp	r0, #0	@ u32Value,
	beq	.L733	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L734	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	ldr	r2, [r3, #8]	@ g_IsSWPKKeyLadderOpen, g_IsSWPKKeyLadderOpen
	cmp	r2, #0	@ g_IsSWPKKeyLadderOpen,
	bne	.L735	@,
	ldr	r0, [r3, #20]	@, g_R2RLadderSel
	mov	r1, r6	@, pu32DataIn
	mov	r2, r5	@, AddrID
	mov	r3, #1	@,
	bl	ca_DecryptR2R	@
	subs	r4, r0, #0	@ ret,
	bne	.L731	@,
.L729:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	mov	r4, #0	@ ret,
.L725:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L735:
	mov	r0, r5	@, AddrID
	mov	r1, r6	@, pu32DataIn
	bl	ca_DecryptSwpk	@
	subs	r4, r0, #0	@ ret,
	beq	.L729	@,
.L731:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	b	.L725	@
.L732:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L736	@,
	movw	r3, #3533	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	ip, #:upper16:.LC1	@ tmp140,
	movt	r4, #:upper16:-2142371835	@ ret,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	b	.L725	@
.L733:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L736	@,
	movw	r3, #3545	@,
	movw	r4, #:lower16:.LC24	@ tmp145,
	movt	r4, #:upper16:.LC24	@ tmp145,
	str	r4, [sp, #0]	@ tmp145,
	movw	r4, #:lower16:-2142371837	@ ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371837	@ ret,
	b	.L725	@
.L734:
	ldr	lr, .L736	@ tmp148,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #3553	@,
	movw	ip, #:lower16:.LC16	@ tmp149,
	movt	ip, #:upper16:.LC16	@ tmp149,
	mov	r2, lr	@, tmp148
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L725	@
.L737:
	.align	2
.L736:
	.word	.LANCHOR1+1008
	.fnend
	.size	DRV_ADVCA_V200_DecryptCipher, .-DRV_ADVCA_V200_DecryptCipher
	.align	2
	.global	ca_DecryptCw
	.type	ca_DecryptCw, %function
ca_DecryptCw:
	.fnstart
.LFB863:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp143,
	movt	r5, #:upper16:.LANCHOR0	@ tmp143,
	mov	r6, r0	@ enLevel, enLevel
	mov	r4, r1	@ pDataIn, pDataIn
	mov	r7, r2	@ AddrID, AddrID
	ldr	ip, [r5, #16]	@ g_CwLadderSel.429, g_CwLadderSel
	mov	r8, r3	@ bEvenOrOdd, bEvenOrOdd
	cmp	ip, r0	@ g_CwLadderSel.429, enLevel
	bcc	.L749	@,
	cmp	r1, #0	@ pDataIn,
	beq	.L750	@,
	mov	r1, #0	@,
	movw	r0, #:lower16:268435616	@,
	movt	r0, #:upper16:268435616	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #0]	@,* pDataIn
	movw	r0, #:lower16:268435488	@,
	movt	r0, #:upper16:268435488	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:268435492	@,
	movt	r0, #:upper16:268435492	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:268435496	@,
	movt	r0, #:upper16:268435496	@,
	bl	ca_v200_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:268435500	@,
	movt	r0, #:upper16:268435500	@,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@,
	bgt	.L751	@,
	bl	ca_clearStat	@
	ldr	r3, [r5, #0]	@ g_CwAlgType, g_CwAlgType
	ldr	r2, [r5, #16]	@ g_CwLadderSel, g_CwLadderSel
	mov	r1, #0	@ CaCtrl,
	bfi	r1, r3, #0, #1	@ CaCtrl, g_CwAlgType,,
	movw	r0, #:lower16:268435504	@,
	bfi	r1, r6, #1, #2	@ CaCtrl, enLevel,,
	cmp	r2, r6	@ g_CwLadderSel, enLevel
	bfc	r1, #3, #1	@ CaCtrl,,
	movt	r0, #:upper16:268435504	@,
	bfieq	r1, r8, #4, #1	@ CaCtrl, bEvenOrOdd,,
	bfieq	r1, r7, #8, #6	@ CaCtrl, AddrID,,
	orr	r1, r1, #160	@, CaCtrl,
	bl	ca_v200_WriteReg	@
	bl	ca_waitStat	@
	cmp	r0, #0	@ Ret.3197
	bgt	.L752	@,
	cmn	r0, #2	@ Ret.3197,
	beq	.L753	@,
	cmp	r0, #0	@ Ret.3197,
	bne	.L754	@,
.L740:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L751:
	ldr	r2, .L755	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2132	@,
.L748:
	movw	lr, #:lower16:.LC18	@ tmp177,
	movt	lr, #:upper16:.LC18	@ tmp177,
	str	lr, [sp, #0]	@ tmp177,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.21196,
	movt	r0, #:upper16:-2142371834	@ D.21196,
	b	.L740	@
.L752:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L755	@,
	movw	r3, #2155	@,
	b	.L748	@
.L749:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L755	@,
	movw	r3, #2107	@,
	str	r6, [sp, #4]	@ enLevel,
	movw	lr, #:lower16:.LC21	@ tmp146,
	str	ip, [sp, #8]	@ g_CwLadderSel.429,
	movt	lr, #:upper16:.LC21	@ tmp146,
	str	lr, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.21196,
	movt	r0, #:upper16:-2142371835	@ D.21196,
	b	.L740	@
.L750:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L755	@,
	movw	r3, #2113	@,
	movw	ip, #:lower16:.LC22	@ tmp149,
	movt	ip, #:upper16:.LC22	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.21196,
	movt	r0, #:upper16:-2142371835	@ D.21196,
	b	.L740	@
.L753:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L755	@,
	mov	r3, #2160	@,
	movw	ip, #:lower16:.LC23	@ tmp180,
	movt	ip, #:upper16:.LC23	@ tmp180,
	str	ip, [sp, #0]	@ tmp180,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371827	@ D.21196,
	movt	r0, #:upper16:-2142371827	@ D.21196,
	b	.L740	@
.L754:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L755	@,
	movw	r3, #2165	@,
	movw	lr, #:lower16:.LC19	@ tmp183,
	movt	lr, #:upper16:.LC19	@ tmp183,
	str	lr, [sp, #0]	@ tmp183,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21196,
	b	.L740	@
.L756:
	.align	2
.L755:
	.word	.LANCHOR1+1040
	.fnend
	.size	ca_DecryptCw, .-ca_DecryptCw
	.align	2
	.global	DRV_ADVCA_V200_DecryptCws
	.type	DRV_ADVCA_V200_DecryptCws, %function
DRV_ADVCA_V200_DecryptCws:
	.fnstart
.LFB877:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r7, r2, #0	@ pu8Data, pu8Data
	mov	r3, #0	@ tmp138,
	mov	r6, r0	@ AddrID, AddrID
	mov	r5, r1	@ EvenOrOdd, EvenOrOdd
	str	r3, [fp, #-32]	@ tmp138, u32Value
	beq	.L764	@,
	sub	r0, fp, #32	@,,
	bl	ca_atomic_read	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L759	@,
	ldr	r0, [fp, #-32]	@ u32Value, u32Value
	cmp	r0, #0	@ u32Value,
	beq	.L765	@,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L766	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	mov	r1, r7	@, pu8Data
	mov	r2, r6	@, AddrID
	ldr	r0, [r3, #16]	@, g_CwLadderSel
	mov	r3, r5	@, EvenOrOdd
	bl	ca_DecryptCw	@
	subs	r4, r0, #0	@ ret,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
.L759:
	mov	r0, r4	@, ret
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L764:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L767	@,
	movw	r3, #3490	@,
	movw	ip, #:lower16:.LC1	@ tmp141,
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	ip, #:upper16:.LC1	@ tmp141,
	movt	r4, #:upper16:-2142371835	@ ret,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	b	.L759	@
.L765:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L767	@,
	movw	r3, #3502	@,
	movw	r4, #:lower16:.LC24	@ tmp146,
	movt	r4, #:upper16:.LC24	@ tmp146,
	str	r4, [sp, #0]	@ tmp146,
	movw	r4, #:lower16:-2142371837	@ ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371837	@ ret,
	b	.L759	@
.L766:
	ldr	lr, .L767	@ tmp149,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #3510	@,
	movw	ip, #:lower16:.LC16	@ tmp150,
	movt	ip, #:upper16:.LC16	@ tmp150,
	mov	r2, lr	@, tmp149
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L759	@
.L768:
	.align	2
.L767:
	.word	.LANCHOR1+1056
	.fnend
	.size	DRV_ADVCA_V200_DecryptCws, .-DRV_ADVCA_V200_DecryptCws
	.align	2
	.global	DRV_ADVCA_V200_Ioctl
	.type	DRV_ADVCA_V200_Ioctl, %function
DRV_ADVCA_V200_Ioctl:
	.fnstart
.LFB874:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #56
	sub	sp, sp, #56	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ cmd, cmd
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	mov	r3, #0	@ tmp166,
	mov	r6, r1	@ arg, arg
	str	r3, [fp, #-44]	@ tmp166, IDbuf
	str	r3, [fp, #-40]	@ tmp166, u32VendorId
	bl	ca_down_interruptible	@
	cmn	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L945	@,
	sub	r0, fp, #40	@,,
	bl	DRV_CA_OTP_V200_GetVendorId	@
	subs	r4, r0, #0	@ ret.3247,
	bne	.L946	@,
	movw	r0, #:lower16:1075339553	@ tmp185,
	movt	r0, #:upper16:1075339553	@ tmp185,
	cmp	r5, r0	@ cmd, tmp185
	beq	.L810	@,
	bls	.L947	@,
	movw	r1, #:lower16:-2147196609	@ tmp235,
	movt	r1, #:upper16:-2147196609	@ tmp235,
	cmp	r5, r1	@ cmd, tmp235
	beq	.L828	@,
	bhi	.L860	@,
	movw	r2, #:lower16:-2147196650	@ tmp237,
	movt	r2, #:upper16:-2147196650	@ tmp237,
	cmp	r5, r2	@ cmd, tmp237
	beq	.L819	@,
	bls	.L948	@,
	movw	ip, #:lower16:-2147196637	@ tmp249,
	movt	ip, #:upper16:-2147196637	@ tmp249,
	cmp	r5, ip	@ cmd, tmp249
	beq	.L823	@,
	bhi	.L864	@,
	movw	r0, #:lower16:-2147196644	@ tmp251,
	movt	r0, #:upper16:-2147196644	@ tmp251,
	cmp	r5, r0	@ cmd, tmp251
	beq	.L821	@,
	movw	r1, #:lower16:-2147196640	@ tmp252,
	movt	r1, #:upper16:-2147196640	@ tmp252,
	cmp	r5, r1	@ cmd, tmp252
	beq	.L822	@,
	movw	r2, #:lower16:-2147196647	@ tmp253,
	movt	r2, #:upper16:-2147196647	@ tmp253,
	cmp	r5, r2	@ cmd, tmp253
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_StatTdesLock	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L947:
	movw	r1, #:lower16:1074028810	@ tmp187,
	movt	r1, #:upper16:1074028810	@ tmp187,
	cmp	r5, r1	@ cmd, tmp187
	beq	.L791	@,
	bhi	.L848	@,
	movw	r2, #24888	@ tmp189,
	cmp	r5, r2	@ cmd, tmp189
	beq	.L782	@,
	bls	.L949	@,
	movw	ip, #24944	@ tmp201,
	cmp	r5, ip	@ cmd, tmp201
	beq	.L786	@,
	bhi	.L852	@,
	movw	r0, #24898	@ tmp203,
	cmp	r5, r0	@ cmd, tmp203
	beq	.L784	@,
	movw	r1, #24932	@ tmp204,
	cmp	r5, r1	@ cmd, tmp204
	beq	.L785	@,
	movw	r2, #24892	@ tmp205,
	cmp	r5, r2	@ cmd, tmp205
	beq	.L950	@,
.L773:
	movw	r0, #:lower16:1107321182	@ tmp543,
	movt	r0, #:upper16:1107321182	@ tmp543,
	cmp	r5, r0	@ cmd, tmp543
	beq	.L914	@,
	bhi	.L924	@,
	movw	r2, #:lower16:1074028874	@ tmp545,
	movt	r2, #:upper16:1074028874	@ tmp545,
	cmp	r5, r2	@ cmd, tmp545
	beq	.L909	@,
	bhi	.L925	@,
	movw	r3, #25056	@ tmp547,
	cmp	r5, r3	@ cmd, tmp547
	beq	.L906	@,
	bhi	.L926	@,
	sub	r4, r3, #2	@ tmp549, tmp549,
	cmp	r5, r4	@ cmd, tmp549
	beq	.L951	@,
.L904:
	movw	r4, #:lower16:-515	@ ret,
	movt	r4, #:upper16:-515	@ ret,
	b	.L873	@
.L946:
	ldr	lr, .L963	@ tmp178,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2809	@,
	movw	ip, #:lower16:.LC25	@ tmp180,
	movt	ip, #:upper16:.LC25	@ tmp180,
	mov	r2, lr	@, tmp178
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
.L771:
	mov	r0, r4	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L848:
	movw	r1, #:lower16:1074028966	@ tmp211,
	movt	r1, #:upper16:1074028966	@ tmp211,
	cmp	r5, r1	@ cmd, tmp211
	beq	.L800	@,
	bhi	.L854	@,
	movw	r2, #:lower16:1074028838	@ tmp213,
	movt	r2, #:upper16:1074028838	@ tmp213,
	cmp	r5, r2	@ cmd, tmp213
	beq	.L795	@,
	bhi	.L855	@,
	movw	r3, #:lower16:1074028831	@ tmp215,
	movt	r3, #:upper16:1074028831	@ tmp215,
	cmp	r5, r3	@ cmd, tmp215
	beq	.L793	@,
	movw	lr, #:lower16:1074028834	@ tmp216,
	movt	lr, #:upper16:1074028834	@ tmp216,
	cmp	r5, lr	@ cmd, tmp216
	beq	.L794	@,
	movw	ip, #:lower16:1074028827	@ tmp217,
	movt	ip, #:upper16:1074028827	@ tmp217,
	cmp	r5, ip	@ cmd, tmp217
	bne	.L773	@,
	sub	r1, fp, #36	@ tmp353,,
	ldr	r6, [r6, #0]	@ DvbLadder,* arg
	mov	lr, #0	@ tmp351,
	movw	r0, #:lower16:268435576	@,
	str	lr, [r1, #-16]!	@ tmp351, CaCtrlProc.Value
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	sub	r0, r6, #1	@ tmp354, DvbLadder,
	cmp	r0, #1	@ tmp354,
	bhi	.L952	@,
	ldrb	r2, [fp, #-51]	@ zero_extendqisi2	@ tmp361,
	and	r3, r2, #16	@ tmp363, tmp361,
	uxtb	r3, r3	@ tmp364, tmp363
	cmp	r3, #0	@ tmp364,
	beq	.L879	@,
	ldr	r4, [fp, #-52]	@ tmp367,
	movw	ip, #:lower16:4202496	@ tmp365,
	movt	ip, #:upper16:4202496	@ tmp365,
	and	r1, r4, ip	@ tmp365, tmp367, tmp365
	cmp	r1, #0	@ tmp365,
	bne	.L880	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp707,
	movt	r7, #:upper16:.LANCHOR0	@ tmp707,
	movw	r0, #:lower16:4202496	@ tmp369,
	movt	r0, #:upper16:4202496	@ tmp369,
	ldr	lr, [r7, #12]	@ tmp371,
	and	r1, lr, r0	@ tmp369, tmp371, tmp369
	cmp	r1, #0	@ tmp369,
	bne	.L880	@,
	cmp	r6, #2	@ DvbLadder,
	movwne	r8, #:lower16:g_pOTPExportFunctionList	@ tmp706,
	movtne	r8, #:upper16:g_pOTPExportFunctionList	@ tmp706,
	beq	.L953	@,
.L883:
	ldr	ip, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #22	@,
	mov	r1, #255	@,
	ldr	r3, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L954	@,
	ldr	r0, [r7, #12]	@ tmp399,
	str	r6, [r7, #16]	@ DvbLadder, g_CwLadderSel
	orr	r1, r0, #4194304	@ tmp711, tmp399,
	str	r1, [r7, #12]	@ tmp711,
.L943:
	mov	r4, #0	@ ret,
	b	.L873	@
.L860:
	movw	r1, #:lower16:-2147196428	@ tmp259,
	movt	r1, #:upper16:-2147196428	@ tmp259,
	cmp	r5, r1	@ cmd, tmp259
	beq	.L837	@,
	bhi	.L866	@,
	movw	r2, #:lower16:-2147196553	@ tmp261,
	movt	r2, #:upper16:-2147196553	@ tmp261,
	cmp	r5, r2	@ cmd, tmp261
	beq	.L832	@,
	bhi	.L867	@,
	movw	r3, #:lower16:-2147196573	@ tmp263,
	movt	r3, #:upper16:-2147196573	@ tmp263,
	cmp	r5, r3	@ cmd, tmp263
	beq	.L830	@,
	movw	lr, #:lower16:-2147196571	@ tmp264,
	movt	lr, #:upper16:-2147196571	@ tmp264,
	cmp	r5, lr	@ cmd, tmp264
	beq	.L831	@,
	movw	ip, #:lower16:-2147196605	@ tmp265,
	movt	ip, #:upper16:-2147196605	@ tmp265,
	cmp	r5, ip	@ cmd, tmp265
	bne	.L773	@,
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp499,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp499,
	mov	r0, r6	@, arg
	ldr	r2, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r1, [r2, #32]	@ <variable>.HAL_OTP_V100_GetWriteProtect, <variable>.HAL_OTP_V100_GetWriteProtect
	blx	r1	@ <variable>.HAL_OTP_V100_GetWriteProtect
.L897:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	b	.L932	@
.L828:
	mov	r0, r6	@, arg
	bl	otp_getJtagPrtMode	@
	mov	r4, r0	@ ret,
.L873:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	cmp	r4, #0	@ ret,
	bne	.L771	@,
.L932:
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L963	@,
	movw	r3, #3416	@,
	str	r5, [sp, #4]	@ cmd,
	movw	lr, #:lower16:.LC36	@ tmp701,
	mov	r4, #0	@ ret,
	movt	lr, #:upper16:.LC36	@ tmp701,
	str	lr, [sp, #0]	@ tmp701,
	bl	HI_LogOut	@
	b	.L771	@
.L791:
	ldr	r1, [fp, #-40]	@ u32VendorId, u32VendorId
	cmp	r1, #1	@ u32VendorId,
	beq	.L955	@,
	sub	r4, fp, #44	@ tmp328,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp328
	bl	__memzero	@
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	ip, [r6, #3]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	mov	r0, r4	@, tmp328
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	ldrb	r4, [r6, #2]	@ zero_extendqisi2	@ <variable>.KeyBuf, <variable>.KeyBuf
	strb	ip, [fp, #-44]	@ <variable>.KeyBuf, IDbuf
	strb	r2, [fp, #-42]	@ <variable>.KeyBuf, IDbuf
	strb	r4, [fp, #-43]	@ <variable>.KeyBuf, IDbuf
	strb	r3, [fp, #-41]	@ <variable>.KeyBuf, IDbuf
	bl	ca_setStbSN	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L948:
	movw	r3, #:lower16:-2147196665	@ tmp239,
	movt	r3, #:upper16:-2147196665	@ tmp239,
	cmp	r5, r3	@ cmd, tmp239
	beq	.L814	@,
	bhi	.L862	@,
	movw	lr, #:lower16:-2147196670	@ tmp241,
	movt	lr, #:upper16:-2147196670	@ tmp241,
	cmp	r5, lr	@ cmd, tmp241
	beq	.L812	@,
	movw	ip, #:lower16:-2147196669	@ tmp242,
	movt	ip, #:upper16:-2147196669	@ tmp242,
	cmp	r5, ip	@ cmd, tmp242
	beq	.L813	@,
	movw	r0, #:lower16:-2147196672	@ tmp243,
	movt	r0, #:upper16:-2147196672	@ tmp243,
	cmp	r5, r0	@ cmd, tmp243
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_getSR2	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L949:
	movw	r3, #24850	@ tmp191,
	cmp	r5, r3	@ cmd, tmp191
	beq	.L777	@,
	bhi	.L850	@,
	movw	lr, #24840	@ tmp193,
	cmp	r5, lr	@ cmd, tmp193
	beq	.L775	@,
	movw	ip, #24844	@ tmp194,
	cmp	r5, ip	@ cmd, tmp194
	beq	.L776	@,
	movw	r0, #24834	@ tmp195,
	cmp	r5, r0	@ cmd, tmp195
	bne	.L773	@,
	bl	ca_setMiscCtrlEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L854:
	movw	lr, #:lower16:1074029051	@ tmp223,
	movt	lr, #:upper16:1074029051	@ tmp223,
	cmp	r5, lr	@ cmd, tmp223
	beq	.L805	@,
	bhi	.L857	@,
	movw	ip, #:lower16:1074028994	@ tmp225,
	movt	ip, #:upper16:1074028994	@ tmp225,
	cmp	r5, ip	@ cmd, tmp225
	beq	.L802	@,
	bhi	.L858	@,
	movw	r0, #:lower16:1074028990	@ tmp227,
	movt	r0, #:upper16:1074028990	@ tmp227,
	cmp	r5, r0	@ cmd, tmp227
	bne	.L773	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setLpcEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L866:
	movw	lr, #:lower16:-2147196418	@ tmp271,
	movt	lr, #:upper16:-2147196418	@ tmp271,
	cmp	r5, lr	@ cmd, tmp271
	beq	.L842	@,
	bhi	.L869	@,
	movw	ip, #:lower16:-2147196424	@ tmp273,
	movt	ip, #:upper16:-2147196424	@ tmp273,
	cmp	r5, ip	@ cmd, tmp273
	beq	.L839	@,
	bhi	.L870	@,
	movw	r0, #:lower16:-2147196426	@ tmp275,
	movt	r0, #:upper16:-2147196426	@ tmp275,
	cmp	r5, r0	@ cmd, tmp275
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_getPcieEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L945:
	ldr	lr, .L963	@ tmp170,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #2802	@,
	movw	ip, #:lower16:.LC16	@ tmp172,
	movt	ip, #:upper16:.LC16	@ tmp172,
	mov	r2, lr	@, tmp170
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L771	@
.L855:
	movw	r0, #:lower16:1074028862	@ tmp218,
	movt	r0, #:upper16:1074028862	@ tmp218,
	cmp	r5, r0	@ cmd, tmp218
	beq	.L797	@,
	bhi	.L856	@,
	movw	r1, #:lower16:1074028854	@ tmp220,
	movt	r1, #:upper16:1074028854	@ tmp220,
	cmp	r5, r1	@ cmd, tmp220
	bne	.L773	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	otp_setBootMode	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L867:
	movw	r0, #:lower16:-2147196481	@ tmp266,
	movt	r0, #:upper16:-2147196481	@ tmp266,
	cmp	r5, r0	@ cmd, tmp266
	beq	.L834	@,
	bhi	.L868	@,
	movw	r1, #:lower16:-2147196549	@ tmp268,
	movt	r1, #:upper16:-2147196549	@ tmp268,
	cmp	r5, r1	@ cmd, tmp268
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_getLowPowerDisable	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L869:
	movw	r3, #:lower16:-2113904378	@ tmp278,
	movt	r3, #:upper16:-2113904378	@ tmp278,
	cmp	r5, r3	@ cmd, tmp278
	beq	.L844	@,
	bhi	.L871	@,
	movw	lr, #:lower16:-2113904381	@ tmp280,
	movt	lr, #:upper16:-2113904381	@ tmp280,
	cmp	r5, lr	@ cmd, tmp280
	bne	.L773	@,
	sub	r7, fp, #44	@ tmp302,,
	mov	r1, #4	@,
	mov	r0, r7	@, tmp302
	bl	__memzero	@
	mov	r0, r7	@, tmp302
	bl	ca_getUniqueChipID	@
.L942:
	mov	r4, r0	@ ret,
	mov	r1, r7	@, tmp319
	mov	r0, r6	@, arg
	mov	r2, #4	@,
	bl	memcpy	@
	b	.L873	@
.L850:
	movw	r1, #24853	@ tmp196,
	cmp	r5, r1	@ cmd, tmp196
	beq	.L779	@,
	bhi	.L851	@,
	movw	r2, #24852	@ tmp198,
	cmp	r5, r2	@ cmd, tmp198
	bne	.L773	@,
	bl	ca_LockBootDecEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L852:
	movw	r3, #25075	@ tmp206,
	cmp	r5, r3	@ cmd, tmp206
	beq	.L788	@,
	bhi	.L853	@,
	movw	lr, #25074	@ tmp208,
	cmp	r5, lr	@ cmd, tmp208
	bne	.L773	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp491,
	movt	r1, #:upper16:.LANCHOR0	@ tmp491,
	mov	r0, #1	@ tmp492,
	str	r0, [r1, #8]	@ tmp492, g_IsSWPKKeyLadderOpen
	b	.L897	@
.L862:
	movw	r1, #:lower16:-2147196661	@ tmp244,
	movt	r1, #:upper16:-2147196661	@ tmp244,
	cmp	r5, r1	@ cmd, tmp244
	beq	.L816	@,
	bhi	.L863	@,
	movw	r2, #:lower16:-2147196663	@ tmp246,
	movt	r2, #:upper16:-2147196663	@ tmp246,
	cmp	r5, r2	@ cmd, tmp246
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_getMktIdP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L864:
	movw	r3, #:lower16:-2147196617	@ tmp254,
	movt	r3, #:upper16:-2147196617	@ tmp254,
	cmp	r5, r3	@ cmd, tmp254
	beq	.L825	@,
	bhi	.L865	@,
	movw	lr, #:lower16:-2147196633	@ tmp256,
	movt	lr, #:upper16:-2147196633	@ tmp256,
	cmp	r5, lr	@ cmd, tmp256
	bne	.L773	@,
	cmp	r6, #0	@ arg,
	beq	.L896	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp465,
	movt	r4, #:upper16:.LANCHOR0	@ tmp465,
	ldr	r3, [r4, #4]	@ g_R2RAlgType, g_R2RAlgType
	str	r3, [r6, #0]	@ g_R2RAlgType,* arg
	b	.L897	@
.L857:
	movw	r3, #:lower16:1074029055	@ tmp230,
	movt	r3, #:upper16:1074029055	@ tmp230,
	cmp	r5, r3	@ cmd, tmp230
	beq	.L807	@,
	bhi	.L859	@,
	movw	lr, #:lower16:1074029053	@ tmp232,
	movt	lr, #:upper16:1074029053	@ tmp232,
	cmp	r5, lr	@ cmd, tmp232
	bne	.L773	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setSR4	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L802:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setLpcMasterEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L807:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setSR2	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L837:
	sub	r0, fp, #60	@,,
	sub	r1, fp, #48	@,,
	bl	DRV_ADVCA_GetChipVersion	@
	ldr	r3, [fp, #-48]	@ ChipVersion, ChipVersion
	cmp	r3, #256	@ ChipVersion,
	bcs	.L956	@,
.L899:
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r2, #:upper16:.LC33	@,
	bl	ca_snprintf	@
	b	.L897	@
.L832:
	mov	r0, r6	@, arg
	bl	ca_getSelfBoot	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L777:
	bl	ca_LockHardCwSel	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L786:
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp522,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp522,
	mov	r1, #1	@,
	mov	r0, #2	@,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r6, [lr, #48]	@ <variable>.HAL_OTP_V100_FuncDisable, <variable>.HAL_OTP_V100_FuncDisable
	blx	r6	@ <variable>.HAL_OTP_V100_FuncDisable
	ldr	ip, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@,
	ldr	r3, [ip, #48]	@ <variable>.HAL_OTP_V100_FuncDisable, <variable>.HAL_OTP_V100_FuncDisable
	mov	r6, r0	@ ret.3260,
	mov	r0, #4	@,
	blx	r3	@ <variable>.HAL_OTP_V100_FuncDisable
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r1, #1	@,
	ldr	ip, [r2, #48]	@ <variable>.HAL_OTP_V100_FuncDisable, <variable>.HAL_OTP_V100_FuncDisable
	orr	r4, r0, r6	@ ret.3263,, ret.3260
	mov	r0, #6	@,
	blx	ip	@ <variable>.HAL_OTP_V100_FuncDisable
	orr	r4, r4, r0	@ ret, ret.3263,
	b	.L873	@
.L814:
	ldr	ip, [fp, #-40]	@ u32VendorId, u32VendorId
	cmp	ip, #1	@ u32VendorId,
	beq	.L957	@,
	sub	r7, fp, #44	@ tmp319,,
	mov	r1, #4	@,
	mov	r0, r7	@, tmp319
	bl	__memzero	@
	mov	r0, r7	@, tmp319
	bl	ca_getMarketID	@
	b	.L942	@
.L823:
	mov	r0, r6	@, arg
	bl	ca_getR2RLadder	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L842:
	mov	r0, r6	@, arg
	bl	ca_getSR4	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L800:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setTdesLock	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L795:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setR2RAlg	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L794:
	sub	r1, fp, #36	@ tmp413,,
	ldr	r6, [r6, #0]	@ R2RLadder,* arg
	mov	r4, #0	@ tmp411,
	movw	r0, #:lower16:268435576	@,
	str	r4, [r1, #-48]!	@ tmp411, CaCtrlProc.Value
	movt	r0, #:upper16:268435576	@,
	bl	ca_v200_ReadReg	@
	sub	r2, r6, #1	@ tmp414, R2RLadder,
	cmp	r2, #1	@ tmp414,
	bhi	.L958	@,
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2	@ tmp421,
	tst	r3, #130	@ tmp421,
	bne	.L890	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp713,
	movt	r7, #:upper16:.LANCHOR0	@ tmp713,
	ldrb	lr, [r7, #14]	@ zero_extendqisi2	@ tmp427,
	ands	r1, lr, #130	@ tmp430, tmp427,
	bne	.L890	@,
	cmp	r6, #2	@ R2RLadder,
	movwne	r8, #:lower16:g_pOTPExportFunctionList	@ tmp714,
	movtne	r8, #:upper16:g_pOTPExportFunctionList	@ tmp714,
	beq	.L959	@,
.L893:
	ldr	r4, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	mov	r0, #23	@,
	mov	r1, #0	@,
	ldr	r3, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ ret,
	bne	.L960	@,
	ldr	r1, [r7, #12]	@ tmp458,
	str	r6, [r7, #20]	@ R2RLadder, g_R2RLadderSel
	orr	r0, r1, #8388608	@ tmp716, tmp458,
	str	r0, [r7, #12]	@ tmp716,
	b	.L873	@
.L793:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setCWAlg	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L831:
	mov	r0, r6	@, arg
	bl	ca_getSecureChipP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L830:
	mov	r0, r6	@, arg
	bl	DRV_CA_OTP_V200_GetVendorId	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L797:
	ldr	r0, [r6, #0]	@,* arg
	bl	otp_setJtagPrtMode	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L839:
	mov	r0, r6	@, arg
	bl	ca_getCsa3En	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L834:
	mov	r0, r6	@, arg
	bl	ca_getLpcEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L782:
	bl	ca_setBootSelLock	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L819:
	mov	r0, r6	@, arg
	bl	ca_StatR2RHardKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L810:
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	ip, fp, #84	@ tmp472,,
	mov	lr, ip	@ tmp718, tmp472
	stmia	lr!, {r0, r1, r2, r3}	@ tmp718,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, r4	@, ret.3247
	mov	r3, #1	@,
	stmia	lr, {r0, r1}	@ tmp718,,
	add	r1, ip, #8	@, tmp472,
	ldr	r0, [fp, #-84]	@, CryptParam.ladder
	bl	ca_DecryptR2R	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L776:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setStbSnP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L775:
	bl	ca_setMktIdP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L844:
	ldr	r1, [fp, #-40]	@ u32VendorId, u32VendorId
	mov	r0, r6	@, arg
	mov	r2, #25	@,
	cmp	r1, #1	@ u32VendorId,
	ldreq	r1, .L963+4	@,
	ldrne	r1, .L963+8	@,
	bl	memcpy	@
	b	.L897	@
.L813:
	mov	r0, r6	@, arg
	bl	ca_getMiscCtrlEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L812:
	ldr	r4, [fp, #-40]	@ u32VendorId.478, u32VendorId
	cmp	r4, #3	@ u32VendorId.478,
	cmpne	r4, #1	@, u32VendorId.478,
	bne	.L872	@,
	mov	r0, r6	@, arg
	bl	ca_getChipID	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L788:
	movw	r3, #:lower16:.LANCHOR0	@ tmp493,
	movt	r3, #:upper16:.LANCHOR0	@ tmp493,
	mov	r2, #0	@ tmp494,
	str	r2, [r3, #8]	@ tmp494, g_IsSWPKKeyLadderOpen
	b	.L897	@
.L950:
	bl	otp_setSCSActive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L785:
	bl	ca_setSecureChipP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L784:
	movw	ip, #:lower16:g_pOTPExportFunctionList	@ tmp496,
	movt	ip, #:upper16:g_pOTPExportFunctionList	@ tmp496,
	ldr	lr, [ip, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r4, [lr, #28]	@ <variable>.HAL_OTP_V100_SetWriteProtect, <variable>.HAL_OTP_V100_SetWriteProtect
	blx	r4	@ <variable>.HAL_OTP_V100_SetWriteProtect
	b	.L897	@
.L779:
	bl	ca_LockR2RHardKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L822:
	cmp	r6, #0	@ arg,
	beq	.L896	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp463,
	movt	lr, #:upper16:.LANCHOR0	@ tmp463,
	ldr	r2, [lr, #0]	@ g_CwAlgType, g_CwAlgType
	str	r2, [r6, #0]	@ g_CwAlgType,* arg
	b	.L897	@
.L821:
	mov	r0, r6	@, arg
	bl	ca_getCWLadder	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L816:
	ldr	r0, [fp, #-40]	@ u32VendorId, u32VendorId
	cmp	r0, #1	@ u32VendorId,
	beq	.L961	@,
	sub	r4, fp, #44	@ tmp339,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp339
	bl	__memzero	@
	mov	r0, r4	@, tmp339
	bl	ca_getStbSN	@
	ldrb	ip, [fp, #-41]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r1, [fp, #-42]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r3, [fp, #-43]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	r2, [fp, #-44]	@ zero_extendqisi2	@ IDbuf, IDbuf
	strb	ip, [r6, #0]	@ IDbuf, <variable>.KeyBuf
	strb	r1, [r6, #1]	@ IDbuf, <variable>.KeyBuf
	strb	r2, [r6, #3]	@ IDbuf, <variable>.KeyBuf
	strb	r3, [r6, #2]	@ IDbuf, <variable>.KeyBuf
	mov	r4, r0	@ ret,
	b	.L873	@
.L805:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setSR6	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L825:
	mov	r0, r6	@, arg
	bl	otp_getBootMode	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L890:
	sub	r0, fp, #60	@,,
	bl	ca_getR2RLadder	@
	ldr	r1, [fp, #-60]	@ org_sel, org_sel
	cmp	r6, r1	@ R2RLadder, org_sel
	beq	.L943	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+12	@,
	movw	r3, #1475	@,
	movw	r4, #:lower16:.LC28	@ tmp437,
	movt	r4, #:upper16:.LC28	@ tmp437,
	str	r4, [sp, #0]	@ tmp437,
	movw	r4, #:lower16:-2142371830	@ ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371830	@ ret,
	b	.L873	@
.L956:
	movw	r0, #257	@ tmp504,
	cmp	r3, r0	@ ChipVersion, tmp504
	bls	.L900	@,
	cmp	r3, #512	@ ChipVersion,
	bne	.L899	@,
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	ca_snprintf	@
	b	.L897	@
.L872:
	sub	r4, fp, #44	@ tmp290,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp290
	bl	__memzero	@
	mov	r0, r4	@, tmp290
	bl	ca_getUniqueChipID	@
	ldrb	r2, [fp, #-43]	@ zero_extendqisi2	@ IDbuf, IDbuf
	ldrb	ip, [fp, #-41]	@ zero_extendqisi2	@ IDbuf, IDbuf
	mov	r3, r2, asl #16	@ tmp295, IDbuf,
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ IDbuf, IDbuf
	mov	r4, r0	@ ret,
	ldrb	r0, [fp, #-44]	@ zero_extendqisi2	@ IDbuf, IDbuf
	add	r1, r3, r0, asl #24	@, tmp296, tmp295, IDbuf,
	add	r3, r1, ip	@ tmp298, tmp296, IDbuf
	add	r1, r3, r2, asl #8	@, tmp301, tmp298, IDbuf,
	str	r1, [r6, #0]	@ tmp301,* arg
	b	.L873	@
.L880:
	sub	r0, fp, #60	@,,
	bl	ca_getCWLadder	@
	ldr	r3, [fp, #-60]	@ org_sel, org_sel
	cmp	r6, r3	@ DvbLadder, org_sel
	beq	.L943	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+16	@,
	movw	r3, #1385	@,
	movw	ip, #:lower16:.LC27	@ tmp378,
	movw	r4, #:lower16:-2142371830	@ ret,
	movt	ip, #:upper16:.LC27	@ tmp378,
	movt	r4, #:upper16:-2142371830	@ ret,
	str	ip, [sp, #0]	@ tmp378,
	bl	HI_LogOut	@
	b	.L873	@
.L856:
	movw	r2, #:lower16:1074028898	@ tmp221,
	movt	r2, #:upper16:1074028898	@ tmp221,
	cmp	r5, r2	@ cmd, tmp221
	beq	.L798	@,
	movw	r3, #:lower16:1074028922	@ tmp222,
	movt	r3, #:upper16:1074028922	@ tmp222,
	cmp	r5, r3	@ cmd, tmp222
	bne	.L773	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setLowPowerDisable	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L798:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setVendorId	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L870:
	movw	r1, #:lower16:-2147196422	@ tmp276,
	movt	r1, #:upper16:-2147196422	@ tmp276,
	cmp	r5, r1	@ cmd, tmp276
	beq	.L840	@,
	movw	r2, #:lower16:-2147196420	@ tmp277,
	movt	r2, #:upper16:-2147196420	@ tmp277,
	cmp	r5, r2	@ cmd, tmp277
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_getSR6	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L840:
	mov	r0, r6	@, arg
	bl	ca_getSR7	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L868:
	movw	r2, #:lower16:-2147196477	@ tmp269,
	movt	r2, #:upper16:-2147196477	@ tmp269,
	cmp	r5, r2	@ cmd, tmp269
	beq	.L835	@,
	movw	r3, #:lower16:-2147196434	@ tmp270,
	movt	r3, #:upper16:-2147196434	@ tmp270,
	cmp	r5, r3	@ cmd, tmp270
	bne	.L773	@,
	sub	r0, fp, #60	@,,
	bl	ca_getMktIdP	@
	ldr	r4, [fp, #-60]	@ u32MarketIdSet, u32MarketIdSet
	str	r4, [r6, #0]	@ u32MarketIdSet,* arg
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	b	.L873	@
.L835:
	mov	r0, r6	@, arg
	bl	ca_getLpcMasterEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L858:
	movw	r1, #:lower16:1074029045	@ tmp228,
	movt	r1, #:upper16:1074029045	@ tmp228,
	cmp	r5, r1	@ cmd, tmp228
	beq	.L803	@,
	movw	r2, #:lower16:1074029049	@ tmp229,
	movt	r2, #:upper16:1074029049	@ tmp229,
	cmp	r5, r2	@ cmd, tmp229
	bne	.L773	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setSR7	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L803:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setPcieEn	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L859:
	movw	ip, #:lower16:1074815301	@ tmp233,
	movt	ip, #:upper16:1074815301	@ tmp233,
	cmp	r5, ip	@ cmd, tmp233
	beq	.L808	@,
	movw	r0, #:lower16:1075339546	@ tmp234,
	movt	r0, #:upper16:1075339546	@ tmp234,
	cmp	r5, r0	@ cmd, tmp234
	bne	.L773	@,
	ldmia	r6!, {r0, r1, r2, r3}	@ arg,,,,
	sub	ip, fp, #84	@ tmp467,,
	mov	lr, ip	@ tmp717, tmp467
	stmia	lr!, {r0, r1, r2, r3}	@ tmp717,,,,
	ldmia	r6, {r0, r1}	@ arg,,
	mov	r2, #0	@,
	mov	r3, r2	@,
	stmia	lr, {r0, r1}	@ tmp717,,
	add	r1, ip, #8	@, tmp467,
	ldr	r0, [fp, #-84]	@, CryptParam.ladder
	bl	ca_DecryptCw	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L808:
	mov	r0, r6	@, arg
	bl	ca_DecryptLpk	@
	subs	r4, r0, #0	@ ret,
	beq	.L897	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963	@,
	movw	r3, #3059	@,
	movw	ip, #:lower16:.LC29	@ tmp480,
	movt	ip, #:upper16:.LC29	@ tmp480,
	str	ip, [sp, #0]	@ tmp480,
	bl	HI_LogOut	@
.L898:
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	bl	ca_up	@
	b	.L771	@
.L863:
	movw	r3, #:lower16:-2147196659	@ tmp247,
	movt	r3, #:upper16:-2147196659	@ tmp247,
	cmp	r5, r3	@ cmd, tmp247
	beq	.L817	@,
	movw	lr, #:lower16:-2147196653	@ tmp248,
	movt	lr, #:upper16:-2147196653	@ tmp248,
	cmp	r5, lr	@ cmd, tmp248
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	ca_StatHardCwSel	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L817:
	mov	r0, r6	@, arg
	bl	ca_getStbSnP	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L865:
	movw	ip, #:lower16:-2147196614	@ tmp257,
	movt	ip, #:upper16:-2147196614	@ tmp257,
	cmp	r5, ip	@ cmd, tmp257
	beq	.L826	@,
	movw	r0, #:lower16:-2147196611	@ tmp258,
	movt	r0, #:upper16:-2147196611	@ tmp258,
	cmp	r5, r0	@ cmd, tmp258
	bne	.L773	@,
	mov	r0, r6	@, arg
	bl	otp_getSCSActive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L826:
	mov	r0, r6	@, arg
	bl	ca_getBootSelLock	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L851:
	movw	r3, #24855	@ tmp199,
	cmp	r5, r3	@ cmd, tmp199
	beq	.L780	@,
	movw	lr, #24856	@ tmp200,
	cmp	r5, lr	@ cmd, tmp200
	bne	.L773	@,
	bl	ca_DisableSelfBoot	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L780:
	bl	ca_DisableLinkProtect	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L871:
	movw	ip, #:lower16:-1072668346	@ tmp281,
	movt	ip, #:upper16:-1072668346	@ tmp281,
	cmp	r5, ip	@ cmd, tmp281
	beq	.L845	@,
	movw	r0, #:lower16:-1071619769	@ tmp282,
	movt	r0, #:upper16:-1071619769	@ tmp282,
	cmp	r5, r0	@ cmd, tmp282
	bne	.L773	@,
	mov	r0, r6	@, arg
	add	r1, r6, #16	@,,
	bl	DRV_ADVCA_V200_EncryptSwpk	@
	subs	r4, r0, #0	@ ret,
	beq	.L897	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963	@,
	movw	r3, #3080	@,
	movw	ip, #:lower16:.LC30	@ tmp490,
	movt	ip, #:upper16:.LC30	@ tmp490,
	str	ip, [sp, #0]	@ tmp490,
	bl	HI_LogOut	@
	b	.L898	@
.L845:
	mov	r0, r6	@, arg
	add	r1, r6, #8	@,,
	bl	ca_DecryptPrtData	@
	subs	r4, r0, #0	@ ret,
	beq	.L897	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963	@,
	movw	r3, #3070	@,
	movw	lr, #:lower16:.LC29	@ tmp485,
	movt	lr, #:upper16:.LC29	@ tmp485,
	str	lr, [sp, #0]	@ tmp485,
	bl	HI_LogOut	@
	b	.L898	@
.L853:
	movw	ip, #25079	@ tmp209,
	cmp	r5, ip	@ cmd, tmp209
	beq	.L789	@,
	movw	r0, #:lower16:1074028806	@ tmp210,
	movt	r0, #:upper16:1074028806	@ tmp210,
	cmp	r5, r0	@ cmd, tmp210
	bne	.L773	@,
	ldr	lr, [fp, #-40]	@ u32VendorId, u32VendorId
	cmp	lr, #1	@ u32VendorId,
	beq	.L962	@,
	sub	r4, fp, #44	@ tmp311,,
	mov	r1, #4	@,
	mov	r0, r4	@, tmp311
	bl	__memzero	@
	mov	r0, r4	@, tmp311
	mov	r1, r6	@, arg
	mov	r2, #4	@,
	bl	memcpy	@
	mov	r0, r4	@, tmp311
	bl	ca_setMarketID	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L789:
	bl	ca_setCsa3En	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L924:
	movw	r4, #:lower16:-2113904297	@ tmp557,
	movt	r4, #:upper16:-2113904297	@ tmp557,
	cmp	r5, r4	@ cmd, tmp557
	beq	.L919	@,
	bhi	.L928	@,
	movw	r3, #:lower16:-2147196449	@ tmp559,
	movt	r3, #:upper16:-2147196449	@ tmp559,
	cmp	r5, r3	@ cmd, tmp559
	beq	.L916	@,
	bhi	.L929	@,
	movw	ip, #:lower16:1107321324	@ tmp561,
	movt	ip, #:upper16:1107321324	@ tmp561,
	cmp	r5, ip	@ cmd, tmp561
	bne	.L904	@,
	ldr	r0, .L963+24	@,
	mov	r1, #512	@,
	bl	__memzero	@
	mov	r1, r6	@, arg
	mov	r2, #512	@,
	ldr	r0, .L963+24	@,
	bl	memcpy	@
	ldr	r0, .L963+24	@,
	bl	ca_setRSAKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L900:
	mov	r0, r6	@, arg
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	ca_snprintf	@
	b	.L897	@
.L896:
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	r4, #:upper16:-2142371835	@ ret,
	b	.L898	@
.L961:
	mov	r0, r6	@, arg
	bl	ca_getStbSNEx	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L962:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setMarketIDEx	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L955:
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setStbSNEx	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L957:
	mov	r0, r6	@, arg
	bl	ca_getMarketIDEx	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L879:
	sub	r1, fp, #36	@ tmp403,,
	movw	r0, #:lower16:268435508	@,
	movt	r0, #:upper16:268435508	@,
	str	r3, [r1, #-20]!	@ tmp364, CaSetLadder.Value
	bl	ca_v200_ReadReg	@
	ldr	r7, [fp, #-56]	@ tmp404,
	cmp	r6, #1	@ DvbLadder,
	movw	r0, #:lower16:268435508	@,
	orrne	r7, r7, #3	@ tmp712, tmp406,
	movt	r0, #:upper16:268435508	@,
	moveq	r2, #2	@ tmp405,
	bfieq	r7, r2, #0, #2	@ tmp404, tmp405,,
	str	r7, [fp, #-56]	@ tmp712,
	movw	r7, #:lower16:.LANCHOR0	@ tmp707,
	movt	r7, #:upper16:.LANCHOR0	@ tmp707,
	ldr	r1, [fp, #-56]	@, CaSetLadder.Value
	bl	ca_v200_WriteReg	@
	str	r6, [r7, #16]	@ DvbLadder, g_CwLadderSel
	b	.L943	@
.L925:
	movw	lr, #:lower16:1074291019	@ tmp552,
	movt	lr, #:upper16:1074291019	@ tmp552,
	cmp	r5, lr	@ cmd, tmp552
	beq	.L911	@,
	bhi	.L927	@,
	movw	r1, #:lower16:1074291017	@ tmp554,
	movt	r1, #:upper16:1074291017	@ tmp554,
	cmp	r5, r1	@ cmd, tmp554
	bne	.L904	@,
	movw	r4, #:lower16:g_pOTPExportFunctionList	@ tmp659,
	movt	r4, #:upper16:g_pOTPExportFunctionList	@ tmp659,
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@,
	add	r7, r6, #4	@ ptr, arg,
	ldr	lr, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r0, [r6, #0]	@, <variable>.Addr
	ldr	ip, [lr, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	ip	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r8, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@,
	ldr	r3, [r8, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	sl, r0	@ Ret,
	ldr	r0, [r6, #0]	@ <variable>.Addr, <variable>.Addr
	add	r0, r0, #1	@, <variable>.Addr,
	blx	r3	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r2, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r6, #0]	@ <variable>.Addr, <variable>.Addr
	ldrb	r1, [r7, #2]	@ zero_extendqisi2	@,
	ldr	r8, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	orr	sl, r0, sl	@ Ret.3276,, Ret
	add	r0, ip, #2	@, <variable>.Addr,
	blx	r8	@ <variable>.HAL_OTP_V100_WriteByte
	ldr	r3, [r4, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldrb	r1, [r7, #3]	@ zero_extendqisi2	@,
	ldr	r4, [r3, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	mov	r8, r0	@ D.24960,
	ldr	r0, [r6, #0]	@ <variable>.Addr, <variable>.Addr
	add	r0, r0, #3	@, <variable>.Addr,
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	orr	r2, sl, r8	@ tmp680, Ret.3276, D.24960
	orrs	r4, r2, r0	@ ret, tmp680,
	beq	.L873	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+20	@,
	movw	r3, #2761	@,
	movw	ip, #:lower16:.LC0	@ tmp685,
	movt	ip, #:upper16:.LC0	@ tmp685,
	str	ip, [sp, #0]	@ tmp685,
	bl	HI_LogOut	@
	b	.L873	@
.L964:
	.align	2
.L963:
	.word	.LANCHOR1+1084
	.word	.LANCHOR1+1140
	.word	.LANCHOR1+1160
	.word	.LANCHOR1+1124
	.word	.LANCHOR1+1108
	.word	.LANCHOR1+1180
	.word	.LANCHOR0+24
.L928:
	movw	r0, #:lower16:-2113904289	@ tmp564,
	movt	r0, #:upper16:-2113904289	@ tmp564,
	cmp	r5, r0	@ cmd, tmp564
	beq	.L921	@,
	bhi	.L930	@,
	movw	r2, #:lower16:-2113904293	@ tmp566,
	movt	r2, #:upper16:-2113904293	@ tmp566,
	cmp	r5, r2	@ cmd, tmp566
	bne	.L904	@,
	ldr	r0, .L963+24	@,
	mov	r1, #32	@,
	bl	__memzero	@
	ldr	r0, .L963+24	@,
	bl	ca_getR2RRootKey	@
.L944:
	mov	r4, r0	@ ret,
	ldr	r1, .L963+24	@,
	mov	r0, r6	@, arg
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L873	@
.L959:
	movw	r8, #:lower16:g_pOTPExportFunctionList	@ tmp714,
	movt	r8, #:upper16:g_pOTPExportFunctionList	@ tmp714,
	mov	r0, #17	@,
	ldr	ip, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [ip, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ ret,
	ldreq	r3, [r7, #12]	@ tmp447,
	orreq	r3, r3, #131072	@ tmp715, tmp447,
	streq	r3, [r7, #12]	@ tmp715,
	beq	.L893	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+12	@,
	movw	r3, #1482	@,
	movw	lr, #:lower16:.LC0	@ tmp445,
	movt	lr, #:upper16:.LC0	@ tmp445,
	str	lr, [sp, #0]	@ tmp445,
	bl	HI_LogOut	@
	b	.L873	@
.L960:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+12	@,
	movw	r3, #1485	@,
	movw	ip, #:lower16:.LC0	@ tmp456,
	movt	ip, #:upper16:.LC0	@ tmp456,
	str	ip, [sp, #0]	@ tmp456,
	bl	HI_LogOut	@
	b	.L873	@
.L953:
	movw	r8, #:lower16:g_pOTPExportFunctionList	@ tmp706,
	movt	r8, #:upper16:g_pOTPExportFunctionList	@ tmp706,
	mov	r0, #13	@,
	ldr	r4, [r8, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r2, [r4, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r2	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ ret,
	ldreq	r3, [r7, #12]	@ tmp388,
	orreq	r3, r3, #8192	@ tmp710, tmp388,
	streq	r3, [r7, #12]	@ tmp710,
	beq	.L883	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+16	@,
	movw	r3, #1393	@,
	movw	lr, #:lower16:.LC0	@ tmp386,
	movt	lr, #:upper16:.LC0	@ tmp386,
	str	lr, [sp, #0]	@ tmp386,
	bl	HI_LogOut	@
	b	.L873	@
.L958:
	ldr	r2, .L963+12	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r3, #1458	@,
.L941:
	str	r6, [sp, #4]	@ R2RLadder,
	movw	ip, #:lower16:.LC26	@ tmp419,
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	ip, #:upper16:.LC26	@ tmp419,
	movt	r4, #:upper16:-2142371835	@ ret,
	str	ip, [sp, #0]	@ tmp419,
	bl	HI_LogOut	@
	b	.L873	@
.L909:
	ldr	r0, [r6, #0]	@ pos,* arg
	cmp	r0, #7	@ pos,
	movwhi	r4, #515	@ ret,
	bhi	.L873	@,
	movw	r2, #:lower16:g_pOTPExportFunctionList	@ tmp695,
	movt	r2, #:upper16:g_pOTPExportFunctionList	@ tmp695,
	mov	r1, #1	@,
	ldr	r4, [r2, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [r4, #48]	@ <variable>.HAL_OTP_V100_FuncDisable, <variable>.HAL_OTP_V100_FuncDisable
	blx	ip	@ <variable>.HAL_OTP_V100_FuncDisable
	mov	r4, r0	@ ret,
	b	.L873	@
.L914:
	mov	r1, #255	@,
	mov	r2, #16	@,
	ldr	r0, .L963+24	@,
	bl	memset	@
	mov	r1, r6	@, arg
	mov	r2, #8	@,
	ldr	r0, .L963+24	@,
	bl	memcpy	@
	ldr	r0, .L963+24	@,
	bl	ca_setJtagKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L954:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+16	@,
	movw	r3, #1397	@,
	movw	lr, #:lower16:.LC0	@ tmp397,
	movt	lr, #:upper16:.LC0	@ tmp397,
	str	lr, [sp, #0]	@ tmp397,
	bl	HI_LogOut	@
	b	.L873	@
.L952:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+16	@,
	movw	r3, #1363	@,
	b	.L941	@
.L930:
	movw	r4, #:lower16:-2113904147	@ tmp567,
	movt	r4, #:upper16:-2113904147	@ tmp567,
	cmp	r5, r4	@ cmd, tmp567
	beq	.L922	@,
	movw	r3, #:lower16:-1073192632	@ tmp568,
	movt	r3, #:upper16:-1073192632	@ tmp568,
	cmp	r5, r3	@ cmd, tmp568
	bne	.L904	@,
	movw	r1, #:lower16:g_pOTPExportFunctionList	@ tmp656,
	movt	r1, #:upper16:g_pOTPExportFunctionList	@ tmp656,
	ldr	r0, [r6, #0]	@, <variable>.Addr
	mov	r4, #0	@ ret,
	ldr	lr, [r1, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	ip, [lr, #36]	@ <variable>.HAL_OTP_V100_Read, <variable>.HAL_OTP_V100_Read
	blx	ip	@ <variable>.HAL_OTP_V100_Read
	str	r0, [r6, #4]	@, <variable>.Value
	b	.L873	@
.L921:
	mov	r1, #16	@,
	ldr	r0, .L963+24	@,
	bl	__memzero	@
	ldr	r0, .L963+24	@,
	bl	ca_getJtagKey	@
	ldr	r1, .L963+24	@,
	mov	r2, #8	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L873	@
.L922:
	mov	r1, #512	@,
	ldr	r0, .L963+24	@,
	bl	__memzero	@
	ldr	r0, .L963+24	@,
	bl	ca_getRSAKey	@
	ldr	r1, .L963+24	@,
	mov	r2, #512	@,
	mov	r4, r0	@ ret,
	mov	r0, r6	@, arg
	bl	memcpy	@
	b	.L873	@
.L951:
	bl	ca_setCWDeactive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L926:
	movw	r3, #25066	@ tmp550,
	cmp	r5, r3	@ cmd, tmp550
	beq	.L907	@,
	movw	ip, #:lower16:1074028801	@ tmp551,
	movt	ip, #:upper16:1074028801	@ tmp551,
	cmp	r5, ip	@ cmd, tmp551
	bne	.L904	@,
	ldr	r0, [r6, #0]	@,* arg
	bl	ca_setChipId	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L906:
	bl	ca_setR2RDeactive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L919:
	mov	r1, #32	@,
	ldr	r0, .L963+24	@,
	bl	__memzero	@
	ldr	r0, .L963+24	@,
	bl	ca_getDVBRootKey	@
	b	.L944	@
.L907:
	bl	ca_setJtagKeyLen	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L929:
	movw	lr, #:lower16:-2147196447	@ tmp562,
	movt	lr, #:upper16:-2147196447	@ tmp562,
	cmp	r5, lr	@ cmd, tmp562
	beq	.L917	@,
	movw	r1, #:lower16:-2147196437	@ tmp563,
	movt	r1, #:upper16:-2147196437	@ tmp563,
	cmp	r5, r1	@ cmd, tmp563
	bne	.L904	@,
	mov	r0, r6	@, arg
	bl	ca_getJtagKeyLen	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L916:
	mov	r0, r6	@, arg
	bl	ca_getCWDeactive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L917:
	mov	r0, r6	@, arg
	bl	ca_getR2RDeactive	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L927:
	movw	r0, #:lower16:1107321174	@ tmp555,
	movt	r0, #:upper16:1107321174	@ tmp555,
	cmp	r5, r0	@ cmd, tmp555
	beq	.L912	@,
	movw	r2, #:lower16:1107321178	@ tmp556,
	movt	r2, #:upper16:1107321178	@ tmp556,
	cmp	r5, r2	@ cmd, tmp556
	bne	.L904	@,
	mov	r1, #255	@,
	mov	r2, #32	@,
	ldr	r0, .L963+24	@,
	bl	memset	@
	mov	r1, r6	@, arg
	mov	r2, #16	@,
	ldr	r0, .L963+24	@,
	bl	memcpy	@
	ldr	r0, .L963+24	@,
	bl	ca_setR2RRootKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
.L911:
	movw	r3, #:lower16:g_pOTPExportFunctionList	@ tmp687,
	movt	r3, #:upper16:g_pOTPExportFunctionList	@ tmp687,
	ldr	r1, [r6, #4]	@, <variable>.Value
	ldr	r2, [r3, #0]	@ g_pOTPExportFunctionList, g_pOTPExportFunctionList
	ldr	r0, [r6, #0]	@, <variable>.Addr
	ldr	r4, [r2, #20]	@ <variable>.HAL_OTP_V100_WriteByte, <variable>.HAL_OTP_V100_WriteByte
	blx	r4	@ <variable>.HAL_OTP_V100_WriteByte
	subs	r4, r0, #0	@ ret,
	beq	.L873	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L963+20	@,
	movw	r3, #2767	@,
	movw	lr, #:lower16:.LC0	@ tmp693,
	movt	lr, #:upper16:.LC0	@ tmp693,
	str	lr, [sp, #0]	@ tmp693,
	bl	HI_LogOut	@
	b	.L873	@
.L912:
	mov	r1, #255	@,
	mov	r2, #32	@,
	ldr	r0, .L963+24	@,
	bl	memset	@
	mov	r1, r6	@, arg
	mov	r2, #16	@,
	ldr	r0, .L963+24	@,
	bl	memcpy	@
	ldr	r0, .L963+24	@,
	bl	ca_setDvbRootKey	@
	mov	r4, r0	@ ret,
	b	.L873	@
	.fnend
	.size	DRV_ADVCA_V200_Ioctl, .-DRV_ADVCA_V200_Ioctl
	.align	2
	.global	ca_deInit
	.type	ca_deInit, %function
ca_deInit:
	.fnstart
.LFB872:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp134,
	movt	r4, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r0, [r4, #536]	@ g_CaVirAddr.454, g_CaVirAddr
	cmp	r0, #0	@ g_CaVirAddr.454,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	bl	ca_iounmap	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #536]	@ tmp136, g_CaVirAddr
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ca_deInit, .-ca_deInit
	.align	2
	.global	DRV_ADVCA_V200_ModeExit_0
	.type	DRV_ADVCA_V200_ModeExit_0, %function
DRV_ADVCA_V200_ModeExit_0:
	.fnstart
.LFB884:
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
	bl	ca_deInit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DRV_ADVCA_V200_ModeExit_0, .-DRV_ADVCA_V200_ModeExit_0
	.align	2
	.global	ca_SetReset
	.type	ca_SetReset, %function
ca_SetReset:
	.fnstart
.LFB870:
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
	sub	r5, fp, #20	@ tmp139,,
	mov	r4, r0	@ bCancleOrSet, bCancleOrSet
	mov	r0, #0	@ tmp137,
	str	r0, [r5, #-4]!	@ tmp137, CaCrgValue
	movw	r0, #:lower16:270487732	@,
	movt	r0, #:upper16:270487732	@,
	bl	ca_io_address	@
	mov	r1, r5	@, tmp139
	bl	Sys_rdReg	@
	ldr	r3, [fp, #-24]	@ CaCrgValue, CaCrgValue
	cmp	r4, #1	@ bCancleOrSet,
	movw	r0, #:lower16:270487732	@,
	bicne	r3, r3, #-67108863	@ tmp146, CaCrgValue,
	movt	r0, #:upper16:270487732	@,
	orreq	r3, r3, #1	@ tmp141, CaCrgValue,
	bicne	r3, r3, #66846720	@ tmp146, tmp146,
	str	r3, [fp, #-24]	@ tmp146, CaCrgValue
	bl	ca_io_address	@
	ldr	r1, [fp, #-24]	@, CaCrgValue
	bl	Sys_wtReg	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	ca_SetReset, .-ca_SetReset
	.align	2
	.global	ca_SetClock
	.type	ca_SetClock, %function
ca_SetClock:
	.fnstart
.LFB869:
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
	sub	r5, fp, #20	@ tmp139,,
	mov	r4, r0	@ bEnable, bEnable
	movw	r0, #:lower16:270487732	@,
	movt	r0, #:upper16:270487732	@,
	mov	r3, #0	@ tmp137,
	str	r3, [r5, #-4]!	@ tmp137, CaCrgValue
	bl	ca_io_address	@
	mov	r1, r5	@, tmp139
	bl	Sys_rdReg	@
	cmp	r4, #0	@ bEnable,
	beq	.L978	@,
	ldr	ip, [fp, #-24]	@ CaCrgValue, CaCrgValue
	movw	r1, #:lower16:259	@ tmp145,
	movt	r1, #:upper16:259	@ tmp145,
	movw	r0, #:lower16:270487732	@,
	and	r3, ip, r1	@ tmp145, CaCrgValue, tmp145
	movt	r0, #:upper16:270487732	@,
	orr	lr, r3, #256	@ tmp148, tmp145,
	str	lr, [fp, #-24]	@ tmp148, CaCrgValue
	bl	ca_io_address	@
	ldr	r1, [fp, #-24]	@, CaCrgValue
	bl	Sys_wtReg	@
.L977:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L978:
	ldr	r2, [fp, #-24]	@ CaCrgValue, CaCrgValue
	movw	ip, #:lower16:261887	@ tmp142,
	movw	r0, #:lower16:270487732	@,
	movt	ip, #:upper16:261887	@ tmp142,
	movt	r0, #:upper16:270487732	@,
	and	r1, r2, ip	@ tmp142, CaCrgValue, tmp142
	str	r1, [fp, #-24]	@ tmp142, CaCrgValue
	bl	ca_io_address	@
	ldr	r1, [fp, #-24]	@, CaCrgValue
	bl	Sys_wtReg	@
	b	.L977	@
	.fnend
	.size	ca_SetClock, .-ca_SetClock
	.align	2
	.global	ca_Init
	.type	ca_Init, %function
ca_Init:
	.fnstart
.LFB871:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r0, #1	@,
	bl	ca_SetClock	@
	mov	r0, #0	@,
	bl	ca_SetReset	@
	mov	r0, #268435456	@,
	mov	r1, #4096	@,
	bl	ca_ioremap_nocache	@
	subs	r3, r0, #0	@ ptr,
	beq	.L989	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp169,
	movt	r8, #:upper16:.LANCHOR0	@ tmp169,
	movw	r0, #:lower16:.LANCHOR2	@,
	movt	r0, #:upper16:.LANCHOR2	@,
	str	r3, [r8, #536]	@ ptr, g_CaVirAddr
	bl	ca_initMutex	@
	mov	r3, #0	@ tmp145,
	sub	r6, fp, #40	@ tmp170,,
	mov	r4, r3	@ count, tmp145
	str	r3, [r8, #0]	@ tmp145, g_CwAlgType
	mov	r7, r3	@ tmp171, count
	str	r3, [r8, #4]	@ tmp145, g_R2RAlgType
	b	.L984	@
.L990:
	str	r7, [fp, #-40]	@ tmp171, secBootCfg.Value
	bl	ca_v200_ReadReg	@
	ldrb	r0, [fp, #-40]	@ zero_extendqisi2	@ tmp175,
	add	r4, r4, #1	@ count, count,
	ands	r5, r0, #1	@ tmp154, tmp175,
	beq	.L982	@,
	cmp	r4, #1000	@ count,
	beq	.L983	@,
.L984:
	mov	r0, #268435456	@,
	mov	r1, r6	@, tmp170
	str	r7, [fp, #-40]	@ tmp171, secBootCfg.Value
	bl	ca_v200_ReadReg	@
	ldrb	r5, [fp, #-40]	@ zero_extendqisi2	@ tmp151,
	mov	r0, #268435456	@,
	mov	r1, r6	@, tmp170
	add	r4, r4, #1	@ count, count,
	ands	r5, r5, #1	@ tmp154, tmp151,
	bne	.L990	@,
.L982:
	cmp	r4, #1000	@ count,
	bcs	.L983	@,
	ldr	r1, .L991	@,
	movw	r0, #:lower16:268435576	@,
	movt	r0, #:upper16:268435576	@,
	str	r5, [r8, #12]	@ tmp154, g_CurPfOtp.u32
	bl	ca_v200_ReadReg	@
	ldr	r1, [r8, #12]	@ g_CurPfOtp.u32, g_CurPfOtp.u32
	mov	r0, r5	@ D.21439, tmp154
	str	r1, [r8, #540]	@ g_CurPfOtp.u32, g_OrgPfOtp.u32
.L981:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L983:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L991+4	@,
	movw	r3, #2597	@,
	movw	lr, #:lower16:.LC38	@ tmp159,
	movt	lr, #:upper16:.LC38	@ tmp159,
	str	lr, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21439,
	b	.L981	@
.L989:
	add	r0, r0, #1	@,,
	mov	r1, #97	@,
	ldr	r2, .L991+4	@,
	movw	r3, #2566	@,
	movw	ip, #:lower16:.LC37	@ tmp141,
	movt	ip, #:upper16:.LC37	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.21439,
	b	.L981	@
.L992:
	.align	2
.L991:
	.word	.LANCHOR0+12
	.word	.LANCHOR1+1196
	.fnend
	.size	ca_Init, .-ca_Init
	.align	2
	.global	DRV_ADVCA_V200_ModeInit_0
	.type	DRV_ADVCA_V200_ModeInit_0, %function
DRV_ADVCA_V200_ModeInit_0:
	.fnstart
.LFB883:
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
	bl	ca_Init	@
	subs	r4, r0, #0	@ ret,
	bne	.L997	@,
	bl	DRV_ADVCA_V200_RegisterRebootNotifier	@
	mov	r0, r4	@ D.22133, ret
.L995:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L997:
	mov	r0, #0	@,
	mov	r1, #97	@,
	ldr	r2, .L998	@,
	movw	r3, #3660	@,
	movw	ip, #:lower16:.LC39	@ tmp139,
	movt	ip, #:upper16:.LC39	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.22133,
	b	.L995	@
.L999:
	.align	2
.L998:
	.word	.LANCHOR1+1204
	.fnend
	.size	DRV_ADVCA_V200_ModeInit_0, .-DRV_ADVCA_V200_ModeInit_0
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.21135, %object
	.size	__func__.21135, 17
__func__.21135:
	.ascii	"ca_setMiscCtrlEn\000"
	.space	3
	.type	__func__.21056, %object
	.size	__func__.21056, 18
__func__.21056:
	.ascii	"ca_setLpcMasterEn\000"
	.space	2
	.type	__func__.21025, %object
	.size	__func__.21025, 12
__func__.21025:
	.ascii	"ca_setLpcEn\000"
	.type	__func__.20996, %object
	.size	__func__.20996, 13
__func__.20996:
	.ascii	"ca_setCsa3En\000"
	.space	3
	.type	__func__.20965, %object
	.size	__func__.20965, 13
__func__.20965:
	.ascii	"ca_setPcieEn\000"
	.space	3
	.type	__func__.20934, %object
	.size	__func__.20934, 22
__func__.20934:
	.ascii	"ca_setLowPowerDisable\000"
	.space	2
	.type	__func__.20858, %object
	.size	__func__.20858, 15
__func__.20858:
	.ascii	"ca_setTdesLock\000"
	.space	1
	.type	__func__.20828, %object
	.size	__func__.20828, 18
__func__.20828:
	.ascii	"ca_getSecureChipP\000"
	.space	2
	.type	__func__.20905, %object
	.size	__func__.20905, 18
__func__.20905:
	.ascii	"ca_setSecureChipP\000"
	.space	2
	.type	__func__.20877, %object
	.size	__func__.20877, 15
__func__.20877:
	.ascii	"ca_setVendorId\000"
	.space	1
	.type	__func__.20817, %object
	.size	__func__.20817, 28
__func__.20817:
	.ascii	"DRV_CA_OTP_V200_GetVendorId\000"
	.type	__func__.20795, %object
	.size	__func__.20795, 13
__func__.20795:
	.ascii	"ca_setR2RAlg\000"
	.space	3
	.type	__func__.20788, %object
	.size	__func__.20788, 12
__func__.20788:
	.ascii	"ca_setCWAlg\000"
	.type	__func__.20641, %object
	.size	__func__.20641, 19
__func__.20641:
	.ascii	"otp_setJtagPrtMode\000"
	.space	1
	.type	__func__.20595, %object
	.size	__func__.20595, 17
__func__.20595:
	.ascii	"otp_getSCSActive\000"
	.space	3
	.type	__func__.20611, %object
	.size	__func__.20611, 17
__func__.20611:
	.ascii	"otp_setSCSActive\000"
	.space	3
	.type	__func__.20558, %object
	.size	__func__.20558, 16
__func__.20558:
	.ascii	"otp_setBootMode\000"
	.type	__func__.20529, %object
	.size	__func__.20529, 18
__func__.20529:
	.ascii	"ca_setBootSelLock\000"
	.space	2
	.type	__func__.20500, %object
	.size	__func__.20500, 19
__func__.20500:
	.ascii	"ca_DisableSelfBoot\000"
	.space	1
	.type	__func__.20471, %object
	.size	__func__.20471, 22
__func__.20471:
	.ascii	"ca_DisableLinkProtect\000"
	.space	2
	.type	__func__.20209, %object
	.size	__func__.20209, 9
__func__.20209:
	.ascii	"ca_getSR\000"
	.space	3
	.type	__func__.20372, %object
	.size	__func__.20372, 13
__func__.20372:
	.ascii	"ca_setRSAKey\000"
	.space	3
	.type	__func__.20329, %object
	.size	__func__.20329, 14
__func__.20329:
	.ascii	"ca_setJtagKey\000"
	.space	2
	.type	__func__.20282, %object
	.size	__func__.20282, 17
__func__.20282:
	.ascii	"ca_setR2RRootKey\000"
	.space	3
	.type	__func__.20235, %object
	.size	__func__.20235, 17
__func__.20235:
	.ascii	"ca_setDvbRootKey\000"
	.space	3
	.type	__func__.20195, %object
	.size	__func__.20195, 17
__func__.20195:
	.ascii	"ca_setJtagKeyLen\000"
	.space	3
	.type	__func__.20166, %object
	.size	__func__.20166, 18
__func__.20166:
	.ascii	"ca_setR2RDeactive\000"
	.space	2
	.type	__func__.20137, %object
	.size	__func__.20137, 17
__func__.20137:
	.ascii	"ca_setCWDeactive\000"
	.space	3
	.type	__func__.20108, %object
	.size	__func__.20108, 18
__func__.20108:
	.ascii	"ca_LockR2RHardKey\000"
	.space	2
	.type	__func__.20042, %object
	.size	__func__.20042, 17
__func__.20042:
	.ascii	"ca_LockHardCwSel\000"
	.space	3
	.type	__func__.19908, %object
	.size	__func__.19908, 13
__func__.19908:
	.ascii	"ca_setStbSnP\000"
	.space	3
	.type	__func__.19778, %object
	.size	__func__.19778, 13
__func__.19778:
	.ascii	"ca_setMktIdP\000"
	.space	3
	.type	__func__.21152, %object
	.size	__func__.21152, 12
__func__.21152:
	.ascii	"ca_waitStat\000"
	.type	__func__.20744, %object
	.size	__func__.20744, 16
__func__.20744:
	.ascii	"ca_getR2RLadder\000"
	.type	__func__.20676, %object
	.size	__func__.20676, 15
__func__.20676:
	.ascii	"ca_getCWLadder\000"
	.space	1
	.type	__func__.20075, %object
	.size	__func__.20075, 17
__func__.20075:
	.ascii	"ca_LockBootDecEn\000"
	.space	3
	.type	__func__.20016, %object
	.size	__func__.20016, 14
__func__.20016:
	.ascii	"ca_getStbSNEx\000"
	.space	2
	.type	__func__.19978, %object
	.size	__func__.19978, 14
__func__.19978:
	.ascii	"ca_setStbSNEx\000"
	.space	2
	.type	__func__.19925, %object
	.size	__func__.19925, 12
__func__.19925:
	.ascii	"ca_getStbSN\000"
	.type	__func__.19944, %object
	.size	__func__.19944, 12
__func__.19944:
	.ascii	"ca_setStbSN\000"
	.type	__func__.19884, %object
	.size	__func__.19884, 17
__func__.19884:
	.ascii	"ca_getMarketIDEx\000"
	.space	3
	.type	__func__.19846, %object
	.size	__func__.19846, 17
__func__.19846:
	.ascii	"ca_setMarketIDEx\000"
	.space	3
	.type	__func__.19793, %object
	.size	__func__.19793, 15
__func__.19793:
	.ascii	"ca_getMarketID\000"
	.space	1
	.type	__func__.19812, %object
	.size	__func__.19812, 15
__func__.19812:
	.ascii	"ca_setMarketID\000"
	.space	1
	.type	__func__.19749, %object
	.size	__func__.19749, 19
__func__.19749:
	.ascii	"ca_getUniqueChipID\000"
	.space	1
	.type	__func__.19734, %object
	.size	__func__.19734, 13
__func__.19734:
	.ascii	"ca_getChipID\000"
	.space	3
	.type	__func__.20424, %object
	.size	__func__.20424, 13
__func__.20424:
	.ascii	"ca_setChipId\000"
	.space	3
	.type	__func__.22023, %object
	.size	__func__.22023, 23
__func__.22023:
	.ascii	"DRV_ADVCA_V200_Release\000"
	.space	1
	.type	__func__.22010, %object
	.size	__func__.22010, 20
__func__.22010:
	.ascii	"DRV_ADVCA_V200_Open\000"
	.type	__func__.21378, %object
	.size	__func__.21378, 15
__func__.21378:
	.ascii	"ca_DecryptSwpk\000"
	.space	1
	.type	__func__.21349, %object
	.size	__func__.21349, 27
__func__.21349:
	.ascii	"DRV_ADVCA_V200_EncryptSwpk\000"
	.space	1
	.type	__func__.21318, %object
	.size	__func__.21318, 18
__func__.21318:
	.ascii	"ca_DecryptPrtData\000"
	.space	2
	.type	__func__.21284, %object
	.size	__func__.21284, 14
__func__.21284:
	.ascii	"ca_DecryptLpk\000"
	.space	2
	.type	__func__.21239, %object
	.size	__func__.21239, 14
__func__.21239:
	.ascii	"ca_DecryptR2R\000"
	.space	2
	.type	__func__.22095, %object
	.size	__func__.22095, 29
__func__.22095:
	.ascii	"DRV_ADVCA_V200_EncryptCipher\000"
	.space	3
	.type	__func__.22065, %object
	.size	__func__.22065, 29
__func__.22065:
	.ascii	"DRV_ADVCA_V200_DecryptCipher\000"
	.space	3
	.type	__func__.21192, %object
	.size	__func__.21192, 13
__func__.21192:
	.ascii	"ca_DecryptCw\000"
	.space	3
	.type	__func__.22041, %object
	.size	__func__.22041, 26
__func__.22041:
	.ascii	"DRV_ADVCA_V200_DecryptCws\000"
	.space	2
	.type	__func__.21636, %object
	.size	__func__.21636, 21
__func__.21636:
	.ascii	"DRV_ADVCA_V200_Ioctl\000"
	.space	3
	.type	__func__.20702, %object
	.size	__func__.20702, 15
__func__.20702:
	.ascii	"ca_setCWLadder\000"
	.space	1
	.type	__func__.20757, %object
	.size	__func__.20757, 16
__func__.20757:
	.ascii	"ca_setR2RLadder\000"
.LC34:
	.ascii	"V1.0.1.4_20130607\000\000"
	.space	1
.LC35:
	.ascii	"V1.0.1.8_20130604\000\000"
	.space	1
	.type	__func__.21519, %object
	.size	__func__.21519, 13
__func__.21519:
	.ascii	"ca_ext_Ioctl\000"
	.space	3
	.type	__func__.21433, %object
	.size	__func__.21433, 8
__func__.21433:
	.ascii	"ca_Init\000"
	.type	__func__.22129, %object
	.size	__func__.22129, 26
__func__.22129:
	.ascii	"DRV_ADVCA_V200_ModeInit_0\000"
	.data
	.align	2
.LANCHOR2 = . + 0
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
	.ascii	"Fail to write OTP!\012\000"
.LC1:
	.ascii	"Param error\012\000"
	.space	3
.LC2:
	.ascii	"vendor id err, pSecureChipId == NULL ! \012\000"
	.space	3
.LC3:
	.ascii	"args err, type = %d ! \012\000"
.LC4:
	.ascii	"JtagPrtMode Param error\012\000"
	.space	3
.LC5:
	.ascii	"JtagPrtMode can not set again\012\000"
	.space	1
.LC6:
	.ascii	"BootMode Bad Param\012\000"
.LC7:
	.ascii	"BootMode can not set again\012\000"
.LC8:
	.ascii	"ca_decrypted finished\012\000"
	.space	1
.LC9:
	.ascii	"handle too long \012\000"
	.space	2
.LC10:
	.ascii	"tdes_key_err \012\000"
	.space	1
.LC11:
	.ascii	"last_key_err \012\000"
	.space	1
.LC12:
	.ascii	"key_lad_err \012\000"
	.space	2
.LC13:
	.ascii	"ladder err, psel == NULL ! \012\000"
	.space	3
.LC14:
	.ascii	"stbSN can not set again\012\000"
	.space	3
.LC15:
	.ascii	"MarketID can not set again\012\000"
.LC16:
	.ascii	"%s:  down_interruptible err ! \012\000"
.LC17:
	.ascii	"%s:  ok ! \012\000"
.LC18:
	.ascii	"key ladder timeout\012\000"
.LC19:
	.ascii	"key ladder error\012\000"
	.space	2
.LC20:
	.ascii	"Link Protection is not supported\012\000"
	.space	2
.LC21:
	.ascii	"enLevel(%d) >= g_R2RLadderSel(%d)\012\000"
	.space	1
.LC22:
	.ascii	"HI_NULL == pDataIn\012\000"
.LC23:
	.ascii	"Symetric key usage\012\000"
.LC24:
	.ascii	"not init ! \012\000"
	.space	3
.LC25:
	.ascii	"%s:  get vendor type err ! \012\000"
	.space	3
.LC26:
	.ascii	"ladder err, sel = %d ! \012\000"
	.space	3
.LC27:
	.ascii	"CWLadder can not set again\012\000"
.LC28:
	.ascii	"R2RLadder can not set again\012\000"
	.space	3
.LC29:
	.ascii	"ca_DecryptLpk error\012\000"
	.space	3
.LC30:
	.ascii	"DRV_ADVCA_V200_EncryptSwpk error\012\000"
	.space	2
.LC31:
	.ascii	"11\000"
	.space	1
.LC32:
	.ascii	"20\000"
	.space	1
.LC33:
	.ascii	"xx\000"
	.space	1
.LC36:
	.ascii	"cmd = 0x%08x  ok !\012\000"
.LC37:
	.ascii	"ca_ioremap_nocache err! \012\000"
	.space	2
.LC38:
	.ascii	"CA key ladder is not ready, Fatal Error!\012\000"
	.space	2
.LC39:
	.ascii	"register CA failed.\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_CwAlgType, %object
	.size	g_CwAlgType, 4
g_CwAlgType:
	.space	4
	.type	g_R2RAlgType, %object
	.size	g_R2RAlgType, 4
g_R2RAlgType:
	.space	4
	.type	g_IsSWPKKeyLadderOpen, %object
	.size	g_IsSWPKKeyLadderOpen, 4
g_IsSWPKKeyLadderOpen:
	.space	4
	.type	g_CurPfOtp, %object
	.size	g_CurPfOtp, 4
g_CurPfOtp:
	.space	4
	.type	g_CwLadderSel, %object
	.size	g_CwLadderSel, 4
g_CwLadderSel:
	.space	4
	.type	g_R2RLadderSel, %object
	.size	g_R2RLadderSel, 4
g_R2RLadderSel:
	.space	4
	.type	keybuf.21460, %object
	.size	keybuf.21460, 512
keybuf.21460:
	.space	512
	.type	g_CaVirAddr, %object
	.size	g_CaVirAddr, 4
g_CaVirAddr:
	.space	4
	.type	g_OrgPfOtp, %object
	.size	g_OrgPfOtp, 4
g_OrgPfOtp:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
