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
	.file	"hal_advca_v300.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(hal_advca_v300)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_advca) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/advca/./V300/.hal_advca_v300.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/advca/./V300/hal_advca_v300.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/advca/./V300/hal_advca_v300.o -O2 -Wall -Wundef
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
	.global	HAL_ADVCA_V300_StatR2RHardKey
	.type	HAL_ADVCA_V300_StatR2RHardKey, %function
HAL_ADVCA_V300_StatR2RHardKey:
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
	movw	r3, #:lower16:-2142371835	@ tmp138,
	cmp	r0, #0	@ pu32Lock,
	movt	r3, #:upper16:-2142371835	@ tmp138,
	movne	r0, #0	@,
	moveq	r0, r3	@, tmp138
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_StatR2RHardKey, .-HAL_ADVCA_V300_StatR2RHardKey
	.align	2
	.global	HAL_ADVCA_V300_StatTdesLock
	.type	HAL_ADVCA_V300_StatTdesLock, %function
HAL_ADVCA_V300_StatTdesLock:
	.fnstart
.LFB782:
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
	movw	r3, #:lower16:-2142371835	@ tmp138,
	cmp	r0, #0	@ pu32Lock,
	movt	r3, #:upper16:-2142371835	@ tmp138,
	movne	r0, #0	@,
	moveq	r0, r3	@, tmp138
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_StatTdesLock, .-HAL_ADVCA_V300_StatTdesLock
	.align	2
	.global	HAL_ADVCA_V300_GetR2RAlgorithm
	.type	HAL_ADVCA_V300_GetR2RAlgorithm, %function
HAL_ADVCA_V300_GetR2RAlgorithm:
	.fnstart
.LFB796:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #0]	@ g_R2RAlgType, g_R2RAlgType
	str	r3, [r0, #0]	@ g_R2RAlgType,* type
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_GetR2RAlgorithm, .-HAL_ADVCA_V300_GetR2RAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_GetSPAlgorithm
	.type	HAL_ADVCA_V300_GetSPAlgorithm, %function
HAL_ADVCA_V300_GetSPAlgorithm:
	.fnstart
.LFB798:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #4]	@ g_SPAlgType, g_SPAlgType
	str	r3, [r0, #0]	@ g_SPAlgType,* penType
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_GetSPAlgorithm, .-HAL_ADVCA_V300_GetSPAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_GetSPDscMode
	.type	HAL_ADVCA_V300_GetSPDscMode, %function
HAL_ADVCA_V300_GetSPDscMode:
	.fnstart
.LFB803:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp135,
	movt	r1, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r3, [r1, #0]	@ g_SPDscMode, g_SPDscMode
	str	r3, [r0, #0]	@ g_SPDscMode,* penType
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_GetSPDscMode, .-HAL_ADVCA_V300_GetSPDscMode
	.align	2
	.global	HAL_ADVCA_V300_DCASOpen
	.type	HAL_ADVCA_V300_DCASOpen, %function
HAL_ADVCA_V300_DCASOpen:
	.fnstart
.LFB811:
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
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r2, [r3, #12]	@ g_DCASInfo.OpenFlag, g_DCASInfo.OpenFlag
	str	r0, [r3, #8]	@ enAlg, g_DCASInfo.Alg
	mov	r0, #0	@,
	cmp	r2, #1	@ g_DCASInfo.OpenFlag,
	movne	r2, #1	@ tmp139,
	strne	r2, [r3, #12]	@ tmp139, g_DCASInfo.OpenFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_DCASOpen, .-HAL_ADVCA_V300_DCASOpen
	.align	2
	.global	HAL_ADVCA_V300_SWPKKeyLadderOpen
	.type	HAL_ADVCA_V300_SWPKKeyLadderOpen, %function
HAL_ADVCA_V300_SWPKKeyLadderOpen:
	.fnstart
.LFB814:
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
	str	r2, [r3, #16]	@ tmp135, g_IsSWPKKeyLadderOpen
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_SWPKKeyLadderOpen, .-HAL_ADVCA_V300_SWPKKeyLadderOpen
	.align	2
	.global	HAL_ADVCA_V300_SWPKKeyLadderClose
	.type	HAL_ADVCA_V300_SWPKKeyLadderClose, %function
HAL_ADVCA_V300_SWPKKeyLadderClose:
	.fnstart
.LFB815:
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
	str	r0, [r3, #16]	@ tmp135, g_IsSWPKKeyLadderOpen
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_SWPKKeyLadderClose, .-HAL_ADVCA_V300_SWPKKeyLadderClose
	.align	2
	.global	HAL_ADVCA_V300_SetSPDscMode
	.type	HAL_ADVCA_V300_SetSPDscMode, %function
HAL_ADVCA_V300_SetSPDscMode:
	.fnstart
.LFB802:
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
	sub	r2, r0, #32	@ tmp136, eDscMode,
	movw	r3, #16416	@ tmp140,
	cmp	r0, r3	@ eDscMode, tmp140
	cmpne	r2, #2	@, tmp136,
	mov	ip, r0	@ eDscMode, eDscMode
	bls	.L24	@,
	movw	r1, #16417	@ tmp149,
	movw	r0, #16418	@ tmp146,
	cmp	ip, r0	@ eDscMode, tmp146
	cmpne	ip, r1	@, eDscMode, tmp149
	bne	.L28	@,
.L24:
	movw	r2, #:lower16:.LANCHOR1	@ tmp174,
	movt	r2, #:upper16:.LANCHOR1	@ tmp174,
	mov	r0, #0	@ D.19920,
	str	ip, [r2, #0]	@ eDscMode, g_SPDscMode
.L25:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L28:
	movw	r3, #16419	@ tmp158,
	movw	r2, #16420	@ tmp155,
	cmp	ip, r2	@ eDscMode, tmp155
	cmpne	ip, r3	@, eDscMode, tmp158
	beq	.L24	@,
	movw	r1, #16448	@ tmp167,
	movw	r0, #16449	@ tmp164,
	cmp	ip, r0	@ eDscMode, tmp164
	cmpne	ip, r1	@, eDscMode, tmp167
	beq	.L24	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movw	r3, #378	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	str	ip, [sp, #4]	@ eDscMode,
	movw	ip, #:lower16:.LC0	@ tmp173,
	movt	ip, #:upper16:.LC0	@ tmp173,
	str	ip, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19920,
	movt	r0, #:upper16:-2142371835	@ D.19920,
	b	.L25	@
	.fnend
	.size	HAL_ADVCA_V300_SetSPDscMode, .-HAL_ADVCA_V300_SetSPDscMode
	.align	2
	.global	HAL_ADVCA_V300_GetMiscAlgorithm
	.type	HAL_ADVCA_V300_GetMiscAlgorithm, %function
HAL_ADVCA_V300_GetMiscAlgorithm:
	.fnstart
.LFB800:
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
	subs	r2, r0, #0	@ penType, penType
	beq	.L33	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19886,
	ldr	r3, [r1, #20]	@ g_MiscAlgType, g_MiscAlgType
	str	r3, [r2, #0]	@ g_MiscAlgType,* penType
.L31:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L33:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L34	@,
	movw	r3, #346	@,
	movw	ip, #:lower16:.LC1	@ tmp138,
	movt	ip, #:upper16:.LC1	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19886,
	movt	r0, #:upper16:-2142371835	@ D.19886,
	b	.L31	@
.L35:
	.align	2
.L34:
	.word	.LANCHOR2+28
	.fnend
	.size	HAL_ADVCA_V300_GetMiscAlgorithm, .-HAL_ADVCA_V300_GetMiscAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_SetMiscAlgorithm
	.type	HAL_ADVCA_V300_SetMiscAlgorithm, %function
HAL_ADVCA_V300_SetMiscAlgorithm:
	.fnstart
.LFB799:
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
	cmp	r0, #1	@ enType,
	mov	ip, r0	@ enType, enType
	bhi	.L40	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19879,
	str	ip, [r3, #20]	@ enType, g_MiscAlgType
.L38:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L40:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L41	@,
	movw	r3, #334	@,
	str	ip, [sp, #4]	@ enType,
	movw	ip, #:lower16:.LC2	@ tmp138,
	movt	ip, #:upper16:.LC2	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19879,
	movt	r0, #:upper16:-2142371835	@ D.19879,
	b	.L38	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR2+60
	.fnend
	.size	HAL_ADVCA_V300_SetMiscAlgorithm, .-HAL_ADVCA_V300_SetMiscAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_SetSPAlgorithm
	.type	HAL_ADVCA_V300_SetSPAlgorithm, %function
HAL_ADVCA_V300_SetSPAlgorithm:
	.fnstart
.LFB797:
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
	cmp	r0, #1	@ enType,
	mov	ip, r0	@ enType, enType
	bhi	.L47	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19867,
	str	ip, [r3, #4]	@ enType, g_SPAlgType
.L45:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L47:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L48	@,
	movw	r3, #315	@,
	str	ip, [sp, #4]	@ enType,
	movw	ip, #:lower16:.LC3	@ tmp138,
	movt	ip, #:upper16:.LC3	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19867,
	movt	r0, #:upper16:-2142371835	@ D.19867,
	b	.L45	@
.L49:
	.align	2
.L48:
	.word	.LANCHOR2+92
	.fnend
	.size	HAL_ADVCA_V300_SetSPAlgorithm, .-HAL_ADVCA_V300_SetSPAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_SetR2RAlgorithm
	.type	HAL_ADVCA_V300_SetR2RAlgorithm, %function
HAL_ADVCA_V300_SetR2RAlgorithm:
	.fnstart
.LFB795:
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
	bhi	.L54	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19855,
	str	ip, [r3, #0]	@ type, g_R2RAlgType
.L52:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L54:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L55	@,
	mov	r3, #296	@,
	str	ip, [sp, #4]	@ type,
	movw	ip, #:lower16:.LC4	@ tmp138,
	movt	ip, #:upper16:.LC4	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19855,
	movt	r0, #:upper16:-2142371835	@ D.19855,
	b	.L52	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR2+124
	.fnend
	.size	HAL_ADVCA_V300_SetR2RAlgorithm, .-HAL_ADVCA_V300_SetR2RAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_GetCSA3Algorithm
	.type	HAL_ADVCA_V300_GetCSA3Algorithm, %function
HAL_ADVCA_V300_GetCSA3Algorithm:
	.fnstart
.LFB794:
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
	subs	r2, r0, #0	@ pAlgType, pAlgType
	beq	.L61	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19847,
	ldr	r3, [r1, #24]	@ g_Csa3AlgType, g_Csa3AlgType
	str	r3, [r2, #0]	@ g_Csa3AlgType,* pAlgType
.L59:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L61:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L62	@,
	movw	r3, #283	@,
	movw	ip, #:lower16:.LC5	@ tmp138,
	movt	ip, #:upper16:.LC5	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19847,
	movt	r0, #:upper16:-2142371835	@ D.19847,
	b	.L59	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR2+156
	.fnend
	.size	HAL_ADVCA_V300_GetCSA3Algorithm, .-HAL_ADVCA_V300_GetCSA3Algorithm
	.align	2
	.global	HAL_ADVCA_V300_SetCSA3Algorithm
	.type	HAL_ADVCA_V300_SetCSA3Algorithm, %function
HAL_ADVCA_V300_SetCSA3Algorithm:
	.fnstart
.LFB793:
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
	bhi	.L68	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19840,
	str	ip, [r3, #24]	@ type, g_Csa3AlgType
.L66:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L68:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L69	@,
	movw	r3, #271	@,
	str	ip, [sp, #4]	@ type,
	movw	ip, #:lower16:.LC6	@ tmp138,
	movt	ip, #:upper16:.LC6	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19840,
	movt	r0, #:upper16:-2142371835	@ D.19840,
	b	.L66	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR2+188
	.fnend
	.size	HAL_ADVCA_V300_SetCSA3Algorithm, .-HAL_ADVCA_V300_SetCSA3Algorithm
	.align	2
	.global	HAL_ADVCA_V300_GetCWAlgorithm
	.type	HAL_ADVCA_V300_GetCWAlgorithm, %function
HAL_ADVCA_V300_GetCWAlgorithm:
	.fnstart
.LFB792:
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
	subs	r2, r0, #0	@ pAlgType, pAlgType
	beq	.L75	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19832,
	ldr	r3, [r1, #28]	@ g_CwAlgType, g_CwAlgType
	str	r3, [r2, #0]	@ g_CwAlgType,* pAlgType
.L73:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L75:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L76	@,
	movw	r3, #259	@,
	movw	ip, #:lower16:.LC5	@ tmp138,
	movt	ip, #:upper16:.LC5	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19832,
	movt	r0, #:upper16:-2142371835	@ D.19832,
	b	.L73	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR2+220
	.fnend
	.size	HAL_ADVCA_V300_GetCWAlgorithm, .-HAL_ADVCA_V300_GetCWAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_SetCWAlgorithm
	.type	HAL_ADVCA_V300_SetCWAlgorithm, %function
HAL_ADVCA_V300_SetCWAlgorithm:
	.fnstart
.LFB791:
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
	bhi	.L82	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #0	@ D.19825,
	str	ip, [r3, #28]	@ type, g_CwAlgType
.L80:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L82:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L83	@,
	mov	r3, #247	@,
	str	ip, [sp, #4]	@ type,
	movw	ip, #:lower16:.LC7	@ tmp138,
	movt	ip, #:upper16:.LC7	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19825,
	movt	r0, #:upper16:-2142371835	@ D.19825,
	b	.L80	@
.L84:
	.align	2
.L83:
	.word	.LANCHOR2+252
	.fnend
	.size	HAL_ADVCA_V300_SetCWAlgorithm, .-HAL_ADVCA_V300_SetCWAlgorithm
	.align	2
	.global	HAL_ADVCA_V300_DCASClose
	.type	HAL_ADVCA_V300_DCASClose, %function
HAL_ADVCA_V300_DCASClose:
	.fnstart
.LFB812:
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
	movw	r0, #:lower16:.LANCHOR0	@ tmp134,
	movt	r0, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r0, #12]	@ g_DCASInfo.OpenFlag, g_DCASInfo.OpenFlag
	cmp	r3, #1	@ g_DCASInfo.OpenFlag,
	beq	.L88	@,
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
.L88:
	add	r0, r0, #8	@, tmp134,
	mov	r1, #8	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_DCASClose, .-HAL_ADVCA_V300_DCASClose
	.align	2
	.global	HAL_ADVCA_ProcGetReginfo
	.type	HAL_ADVCA_ProcGetReginfo, %function
HAL_ADVCA_ProcGetReginfo:
	.fnstart
.LFB824:
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
	subs	r6, r0, #0	@ au32RegInfo, au32RegInfo
	mov	r3, #0	@ tmp153,
	str	r3, [fp, #-32]	@ tmp153, u32ChipID
	beq	.L94	@,
	movw	r0, #:lower16:-2147196670	@,
	sub	r1, fp, #32	@,,
	movt	r0, #:upper16:-2147196670	@,
	bl	DRV_ADVCA_V300_Ioctl	@
	subs	r4, r0, #0	@ ret,
	bne	.L95	@,
	ldr	r5, [fp, #-32]	@ u32ChipID.286, u32ChipID
	mov	r1, #16	@,
	sub	r0, fp, #48	@,,
	bl	__memzero	@
	ubfx	r0, r5, #14, #1	@ tmp164, u32ChipID.286,,
	ubfx	ip, r5, #20, #1	@ tmp166, u32ChipID.286,,
	mov	r3, r4	@ s_jtagkey0, ret
	bfi	r3, r0, #31, #1	@ s_jtagkey0, tmp164,,
	ubfx	r1, r5, #2, #1	@ tmp168, u32ChipID.286,,
	bfi	r3, ip, #30, #1	@ s_jtagkey0, tmp166,,
	ubfx	r2, r5, #29, #1	@ tmp170, u32ChipID.286,,
	bfi	r3, r1, #29, #1	@ s_jtagkey0, tmp168,,
	ubfx	r0, r5, #4, #1	@ tmp172, u32ChipID.286,,
	bfi	r3, r2, #28, #1	@ s_jtagkey0, tmp170,,
	ubfx	ip, r5, #19, #1	@ tmp174, u32ChipID.286,,
	bfi	r3, r0, #27, #1	@ s_jtagkey0, tmp172,,
	ubfx	r1, r5, #6, #1	@ tmp176, u32ChipID.286,,
	bfi	r3, ip, #26, #1	@ s_jtagkey0, tmp174,,
	ubfx	r2, r5, #16, #1	@ tmp178, u32ChipID.286,,
	bfi	r3, r1, #25, #1	@ s_jtagkey0, tmp176,,
	ubfx	r0, r5, #22, #1	@ tmp180, u32ChipID.286,,
	bfi	r3, r2, #24, #1	@ s_jtagkey0, tmp178,,
	ubfx	ip, r5, #26, #1	@ tmp182, u32ChipID.286,,
	bfi	r3, r0, #23, #1	@ s_jtagkey0, tmp180,,
	ubfx	r1, r5, #10, #1	@ tmp184, u32ChipID.286,,
	bfi	r3, ip, #22, #1	@ s_jtagkey0, tmp182,,
	ubfx	r2, r5, #1, #1	@ tmp186, u32ChipID.286,,
	bfi	r3, r1, #21, #1	@ s_jtagkey0, tmp184,,
	ubfx	r0, r5, #12, #1	@ tmp188, u32ChipID.286,,
	bfi	r3, r2, #20, #1	@ s_jtagkey0, tmp186,,
	ubfx	ip, r5, #24, #1	@ tmp190, u32ChipID.286,,
	bfi	r3, r0, #19, #1	@ s_jtagkey0, tmp188,,
	ubfx	r1, r5, #15, #1	@ tmp198, u32ChipID.286,,
	bfi	r3, ip, #18, #1	@ s_jtagkey0, tmp190,,
	ubfx	r0, r5, #7, #1	@ tmp200, u32ChipID.286,,
	bfi	r3, r5, #17, #1	@ s_jtagkey0, u32ChipID.286,,
	mov	r2, r5, lsr #31	@ tmp201, u32ChipID.286,
	bfi	r3, r1, #16, #1	@ s_jtagkey0, tmp198,,
	ubfx	ip, r5, #18, #1	@ tmp203, u32ChipID.286,,
	bfi	r3, r0, #15, #1	@ s_jtagkey0, tmp200,,
	ubfx	r0, r5, #27, #1	@ tmp205, u32ChipID.286,,
	bfi	r3, r2, #14, #1	@ s_jtagkey0, tmp201,,
	ubfx	r2, r5, #11, #1	@ tmp207, u32ChipID.286,,
	bfi	r3, ip, #13, #1	@ s_jtagkey0, tmp203,,
	ubfx	r1, r5, #21, #1	@ tmp209, u32ChipID.286,,
	bfi	r3, r0, #12, #1	@ s_jtagkey0, tmp205,,
	ubfx	ip, r5, #8, #1	@ tmp211, u32ChipID.286,,
	bfi	r3, r2, #11, #1	@ s_jtagkey0, tmp207,,
	ubfx	r2, r5, #23, #1	@ tmp213, u32ChipID.286,,
	bfi	r3, r1, #10, #1	@ s_jtagkey0, tmp209,,
	ubfx	r1, r5, #13, #1	@ tmp215, u32ChipID.286,,
	bfi	r3, ip, #9, #1	@ s_jtagkey0, tmp211,,
	ubfx	r0, r5, #25, #1	@ tmp217, u32ChipID.286,,
	bfi	r3, r2, #8, #1	@ s_jtagkey0, tmp213,,
	ubfx	ip, r5, #9, #1	@ tmp219, u32ChipID.286,,
	bfi	r3, r1, #7, #1	@ s_jtagkey0, tmp215,,
	ubfx	r1, r5, #5, #1	@ tmp221, u32ChipID.286,,
	bfi	r3, r0, #6, #1	@ s_jtagkey0, tmp217,,
	ubfx	r0, r5, #28, #1	@ tmp223, u32ChipID.286,,
	bfi	r3, ip, #5, #1	@ s_jtagkey0, tmp219,,
	ubfx	r2, r5, #3, #1	@ tmp225, u32ChipID.286,,
	bfi	r3, r1, #4, #1	@ s_jtagkey0, tmp221,,
	ubfx	ip, r5, #30, #1	@ tmp227, u32ChipID.286,,
	bfi	r3, r0, #3, #1	@ s_jtagkey0, tmp223,,
	ubfx	r5, r5, #17, #1	@ tmp229, u32ChipID.286,,
	bfi	r3, r2, #2, #1	@ s_jtagkey0, tmp225,,
	mov	r2, r4	@ s_jtagkey1, ret
	bfi	r3, ip, #1, #1	@ s_jtagkey0, tmp227,,
	movw	ip, #:lower16:-1471947603	@ tmp239,
	bfi	r3, r5, #0, #1	@ s_jtagkey0, tmp229,,
	movt	ip, #:upper16:-1471947603	@ tmp239,
	ubfx	r1, r3, #6, #8	@ tmp231, s_jtagkey0,,
	ubfx	r0, r3, #17, #8	@ tmp234, s_jtagkey0,,
	bfi	r2, r1, #24, #8	@ s_jtagkey1, tmp231,,
	ubfx	r1, r3, #22, #8	@ tmp236, s_jtagkey0,,
	bfi	r2, r0, #16, #8	@ s_jtagkey1, tmp234,,
	ubfx	r0, r3, #2, #8	@ tmp238, s_jtagkey0,,
	bfi	r2, r1, #8, #8	@ s_jtagkey1, tmp236,,
	movw	r1, #:lower16:317727830	@ tmp241,
	bfi	r2, r0, #0, #8	@ s_jtagkey1, tmp238,,
	movt	r1, #:upper16:317727830	@ tmp241,
	movw	r0, #:lower16:-123010672	@,
	movt	r0, #:upper16:-123010672	@,
	eor	ip, r3, ip	@ tmp240, s_jtagkey0, tmp239
	str	r3, [fp, #-48]	@ s_jtagkey0, wdata
	str	ip, [fp, #-40]	@ tmp240, wdata
	eor	r1, r2, r1	@ tmp242, s_jtagkey1, tmp241
	str	r2, [fp, #-44]	@ s_jtagkey1, wdata
	str	r1, [fp, #-36]	@ tmp242, wdata
	bl	ca_io_address	@
	ldr	r1, [fp, #-36]	@, wdata
	bl	DRV_ADVCA_SysWriteReg	@
	movw	r0, #:lower16:-123010668	@,
	movt	r0, #:upper16:-123010668	@,
	bl	ca_io_address	@
	ldr	r2, [fp, #-40]	@ wdata, wdata
	mvn	r1, r2	@, wdata
	bl	DRV_ADVCA_SysWriteReg	@
	movw	r0, #:lower16:-123010664	@,
	movt	r0, #:upper16:-123010664	@,
	bl	ca_io_address	@
	ldr	r1, [fp, #-44]	@ wdata, wdata
	mvn	r1, r1	@, wdata
	bl	DRV_ADVCA_SysWriteReg	@
	movw	r0, #:lower16:-123010660	@,
	movt	r0, #:upper16:-123010660	@,
	bl	ca_io_address	@
	ldr	r1, [fp, #-48]	@, wdata
	bl	DRV_ADVCA_SysWriteReg	@
	str	r4, [r6, #0]	@ ret,* au32RegInfo
	movw	r0, #:lower16:-123010676	@,
	movt	r0, #:upper16:-123010676	@,
	bl	ca_io_address	@
	bl	DRV_ADVCA_SysReadReg	@
	stmia	r6, {r0, r4}	@ phole stm
	movw	r0, #:lower16:-123010636	@,
	movt	r0, #:upper16:-123010636	@,
	bl	ca_io_address	@
	bl	DRV_ADVCA_SysReadReg	@
	cmn	r6, #8	@ au32RegInfo,
	str	r0, [r6, #4]	@,
	beq	.L91	@,
	movw	r0, #:lower16:-134217504	@,
	movt	r0, #:upper16:-134217504	@,
	bl	ca_io_address	@
	bl	DRV_ADVCA_SysReadReg	@
	str	r0, [r6, #8]	@,
.L91:
	mov	r0, r4	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L95:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L96	@,
	movw	r3, #1469	@,
	movw	lr, #:lower16:.LC9	@ tmp161,
	movt	lr, #:upper16:.LC9	@ tmp161,
	str	lr, [sp, #0]	@ tmp161,
	bl	HI_LogOut	@
	b	.L91	@
.L94:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L96	@,
	movw	r3, #1462	@,
	movw	ip, #:lower16:.LC8	@ tmp156,
	movw	r4, #:lower16:-2142371835	@ ret,
	movt	ip, #:upper16:.LC8	@ tmp156,
	movt	r4, #:upper16:-2142371835	@ ret,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L91	@
.L97:
	.align	2
.L96:
	.word	.LANCHOR2+284
	.fnend
	.size	HAL_ADVCA_ProcGetReginfo, .-HAL_ADVCA_ProcGetReginfo
	.align	2
	.global	HAL_ADVCA_V300_GetSecretKeyChecksumFlag
	.type	HAL_ADVCA_V300_GetSecretKeyChecksumFlag, %function
HAL_ADVCA_V300_GetSecretKeyChecksumFlag:
	.fnstart
.LFB819:
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
	subs	r4, r0, #0	@ pu32Checksum, pu32Checksum
	beq	.L102	@,
	movw	r0, #:lower16:-123142080	@,
	movt	r0, #:upper16:-123142080	@,
	bl	DRV_ADVCA_ReadReg	@
	mov	r3, #0	@ D.20441,
	str	r0, [r4, #0]	@,* pu32Checksum
.L100:
	mov	r0, r3	@, D.20441
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L102:
	movw	r3, #1310	@,
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L103	@,
	movw	ip, #:lower16:.LC10	@ tmp139,
	movt	ip, #:upper16:.LC10	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r3, #:lower16:-2142371835	@ D.20441,
	movt	r3, #:upper16:-2142371835	@ D.20441,
	b	.L100	@
.L104:
	.align	2
.L103:
	.word	.LANCHOR2+312
	.fnend
	.size	HAL_ADVCA_V300_GetSecretKeyChecksumFlag, .-HAL_ADVCA_V300_GetSecretKeyChecksumFlag
	.align	2
	.global	HAL_ADVCA_V300_GetCAStates
	.type	HAL_ADVCA_V300_GetCAStates, %function
HAL_ADVCA_V300_GetCAStates:
	.fnstart
.LFB820:
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
	cmp	r0, #0	@ pu32State
	beq	.L109	@,
	ldr	r1, [r0, #0]	@,* pu32State
	movw	r0, #:lower16:-123142088	@,
	movt	r0, #:upper16:-123142088	@,
	bl	DRV_ADVCA_WriteReg	@
	mov	r0, #0	@ D.20450,
.L107:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L109:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L110	@,
	movw	r3, #1325	@,
	movw	ip, #:lower16:.LC10	@ tmp138,
	movt	ip, #:upper16:.LC10	@ tmp138,
	str	ip, [sp, #0]	@ tmp138,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20450,
	movt	r0, #:upper16:-2142371835	@ D.20450,
	b	.L107	@
.L111:
	.align	2
.L110:
	.word	.LANCHOR2+352
	.fnend
	.size	HAL_ADVCA_V300_GetCAStates, .-HAL_ADVCA_V300_GetCAStates
	.align	2
	.global	HAL_ADVCA_V300_ResetOTP
	.type	HAL_ADVCA_V300_ResetOTP, %function
HAL_ADVCA_V300_ResetOTP:
	.fnstart
.LFB821:
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
	movw	r4, #:lower16:-123592512	@ tmp141,
	movt	r4, #:upper16:-123592512	@ tmp141,
	mov	r0, r4	@, tmp141
	bl	DRV_ADVCA_ReadReg	@
	orr	r5, r0, #1024	@ OtpV200CrgCtrl,,
	mov	r0, r4	@, tmp141
	mov	r1, r5	@, OtpV200CrgCtrl
	bl	DRV_ADVCA_WriteReg	@
	mov	r0, #1	@,
	bl	ca_msleep	@
	mov	r0, r4	@, tmp141
	bic	r1, r5, #1024	@, OtpV200CrgCtrl,
	bl	DRV_ADVCA_WriteReg	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_ResetOTP, .-HAL_ADVCA_V300_ResetOTP
	.align	2
	.type	HAL_ADVCA_V300_WaitStat, %function
HAL_ADVCA_V300_WaitStat:
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
	mov	r4, #0	@ cnt,
	b	.L118	@
.L115:
	bl	ca_mdelay	@
	movw	r0, #:lower16:-123142088	@,
	movt	r0, #:upper16:-123142088	@,
	add	r4, r4, #1	@ cnt, cnt,
	bl	DRV_ADVCA_ReadReg	@
	mov	r1, r0	@ D.19706,
	cmp	r1, #0	@ D.19706,
	mov	r0, #10	@,
	str	r1, [fp, #-24]	@ D.19706, CAStatus.u32
	bge	.L125	@,
	add	r4, r4, #1	@ cnt, cnt,
	bl	ca_mdelay	@
	cmp	r4, #50	@ cnt,
	beq	.L116	@,
.L118:
	movw	r0, #:lower16:-123142088	@,
	movt	r0, #:upper16:-123142088	@,
	bl	DRV_ADVCA_ReadReg	@
	mov	r3, r0	@ D.19706,
	cmp	r3, #0	@ D.19706,
	mov	r0, #10	@,
	str	r3, [fp, #-24]	@ D.19706, CAStatus.u32
	blt	.L115	@,
.L125:
	mov	r0, #3	@,
	mov	r1, #97	@,
	ldr	r2, .L126	@,
	mov	r3, #53	@,
	str	r4, [sp, #4]	@ cnt,
	movw	ip, #:lower16:.LC11	@ tmp147,
	movt	ip, #:upper16:.LC11	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	cmp	r4, #49	@ cnt,
	bhi	.L116	@,
	ldr	r0, [fp, #-24]	@ tmp151,
	and	r0, r0, #15	@ errState, tmp151,
.L119:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L116:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L126	@,
	mov	r3, #62	@,
	movw	lr, #:lower16:.LC12	@ tmp150,
	movt	lr, #:upper16:.LC12	@ tmp150,
	str	lr, [sp, #0]	@ tmp150,
	bl	HI_LogOut	@
	mvn	r0, #0	@ errState,
	b	.L119	@
.L127:
	.align	2
.L126:
	.word	.LANCHOR2+380
	.fnend
	.size	HAL_ADVCA_V300_WaitStat, .-HAL_ADVCA_V300_WaitStat
	.align	2
	.global	HAL_ADVCA_V300_DecryptMisc
	.type	HAL_ADVCA_V300_DecryptMisc, %function
HAL_ADVCA_V300_DecryptMisc:
	.fnstart
.LFB818:
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
	subs	r4, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r0	@ enLevel, enLevel
	mov	r6, r2	@ AddrID, AddrID
	mov	r8, r3	@ bEvenOrOdd, bEvenOrOdd
	beq	.L139	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L140	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r7, r0, #0	@ Ret,
	bne	.L141	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp166,
	movt	r0, #:upper16:.LANCHOR0	@ tmp166,
	mov	r1, r7	@ unMiscCtrl, Ret
	bfi	r1, r5, #0, #2	@ unMiscCtrl, enLevel,,
	ldr	r3, [r0, #20]	@ g_MiscAlgType, g_MiscAlgType
	movw	r0, #:lower16:-123141952	@,
	movt	r0, #:upper16:-123141952	@,
	bfi	r1, r3, #2, #1	@ unMiscCtrl, g_MiscAlgType,,
	tst	r1, #8	@ unMiscCtrl,
	addeq	r6, r8, r6, asl #1	@, tmp176, bEvenOrOdd, AddrID,
	bfi	r1, r6, #8, #8	@ unMiscCtrl, AddrID,,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret.839,
	mov	r4, r0	@ Ret.839,
	beq	.L142	@,
	cmp	r0, #2	@ Ret.839,
	beq	.L143	@,
	cmp	r0, #0	@ Ret.839,
	mvnne	r0, #0	@ D.20396,
	beq	.L144	@,
.L130:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L144:
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	mov	r0, r4	@ D.20396, Ret.839
	b	.L130	@
.L143:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1278	@,
	movw	ip, #:lower16:.LC17	@ tmp183,
	movt	ip, #:upper16:.LC17	@ tmp183,
	str	ip, [sp, #0]	@ tmp183,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20396,
	b	.L130	@
.L140:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1234	@,
	movw	lr, #:lower16:.LC14	@ tmp154,
	movt	lr, #:upper16:.LC14	@ tmp154,
	str	lr, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20396,
	b	.L130	@
.L141:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1241	@,
	movw	ip, #:lower16:.LC15	@ tmp157,
	movt	ip, #:upper16:.LC15	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20396,
	movt	r0, #:upper16:-2142371834	@ D.20396,
	b	.L130	@
.L139:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1225	@,
	movw	ip, #:lower16:.LC13	@ tmp146,
	movt	ip, #:upper16:.LC13	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20396,
	movt	r0, #:upper16:-2142371835	@ D.20396,
	b	.L130	@
.L142:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L145	@,
	movw	r3, #1273	@,
	movw	lr, #:lower16:.LC16	@ tmp180,
	movt	lr, #:upper16:.LC16	@ tmp180,
	str	lr, [sp, #0]	@ tmp180,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20396,
	movt	r0, #:upper16:-2142371834	@ D.20396,
	b	.L130	@
.L146:
	.align	2
.L145:
	.word	.LANCHOR2+404
	.fnend
	.size	HAL_ADVCA_V300_DecryptMisc, .-HAL_ADVCA_V300_DecryptMisc
	.align	2
	.global	HAL_ADVCA_V300_CryptGDRM
	.type	HAL_ADVCA_V300_CryptGDRM, %function
HAL_ADVCA_V300_CryptGDRM:
	.fnstart
.LFB817:
	@ args = 4, pretend = 0, frame = 0
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
	subs	r4, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r0	@ enLevel, enLevel
	mov	r6, r2	@ AddrID, AddrID
	mov	r7, r3	@ bIsDeCrypt, bIsDeCrypt
	beq	.L154	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L155	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r8, r0, #0	@ Ret,
	bne	.L156	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r3, [fp, #4]	@ enKlTarget, enKlTarget
	mov	r1, r8	@ unGDRMCtrl, Ret
	bfi	r1, r5, #0, #2	@ unGDRMCtrl, enLevel,,
	bfi	r1, r3, #2, #1	@ unGDRMCtrl, enKlTarget,,
	movw	r0, #:lower16:-123142032	@,
	bfi	r1, r7, #3, #1	@ unGDRMCtrl, bIsDeCrypt,,
	movt	r0, #:upper16:-123142032	@,
	bfi	r1, r6, #9, #7	@ unGDRMCtrl, AddrID,,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r4, r0, #0	@ Ret.863,
	bne	.L157	@,
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	mov	r0, r4	@ D.20355, Ret.863
.L149:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L155:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L158	@,
	movw	r3, #1178	@,
	movw	lr, #:lower16:.LC14	@ tmp155,
	movt	lr, #:upper16:.LC14	@ tmp155,
	str	lr, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20355,
	b	.L149	@
.L156:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L158	@,
	movw	r3, #1185	@,
	movw	ip, #:lower16:.LC15	@ tmp158,
	movt	ip, #:upper16:.LC15	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20355,
	movt	r0, #:upper16:-2142371834	@ D.20355,
	b	.L149	@
.L157:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L158	@,
	movw	r3, #1208	@,
	movw	lr, #:lower16:.LC16	@ tmp176,
	movt	lr, #:upper16:.LC16	@ tmp176,
	str	lr, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20355,
	movt	r0, #:upper16:-2142371834	@ D.20355,
	b	.L149	@
.L154:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L158	@,
	movw	r3, #1169	@,
	movw	ip, #:lower16:.LC13	@ tmp147,
	movt	ip, #:upper16:.LC13	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20355,
	movt	r0, #:upper16:-2142371835	@ D.20355,
	b	.L149	@
.L159:
	.align	2
.L158:
	.word	.LANCHOR2+432
	.fnend
	.size	HAL_ADVCA_V300_CryptGDRM, .-HAL_ADVCA_V300_CryptGDRM
	.align	2
	.global	HAL_ADVCA_V300_DecryptSWPK
	.type	HAL_ADVCA_V300_DecryptSWPK, %function
HAL_ADVCA_V300_DecryptSWPK:
	.fnstart
.LFB816:
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
	subs	r4, r0, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r1	@ AddrID, AddrID
	beq	.L167	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L168	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r6, r0, #0	@ Ret,
	bne	.L169	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	and	r1, r5, #63	@ tmp164, AddrID,
	movw	r0, #:lower16:-123142120	@,
	movt	r0, #:upper16:-123142120	@,
	mov	r1, r1, asl #8	@, tmp164,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmp	r0, #0	@,
	movle	r0, r6	@ D.20321, Ret
	bgt	.L170	@,
.L162:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L170:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L171	@,
	movw	r3, #1150	@,
	movw	lr, #:lower16:.LC19	@ tmp168,
	movt	lr, #:upper16:.LC19	@ tmp168,
	str	lr, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20321,
	movt	r0, #:upper16:-2142371834	@ D.20321,
	b	.L162	@
.L168:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L171	@,
	movw	r3, #1126	@,
	movw	lr, #:lower16:.LC14	@ tmp151,
	movt	lr, #:upper16:.LC14	@ tmp151,
	str	lr, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20321,
	b	.L162	@
.L169:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L171	@,
	movw	r3, #1133	@,
	movw	ip, #:lower16:.LC15	@ tmp154,
	movt	ip, #:upper16:.LC15	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20321,
	movt	r0, #:upper16:-2142371834	@ D.20321,
	b	.L162	@
.L167:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L171	@,
	movw	r3, #1117	@,
	movw	ip, #:lower16:.LC18	@ tmp143,
	movt	ip, #:upper16:.LC18	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20321,
	movt	r0, #:upper16:-2142371835	@ D.20321,
	b	.L162	@
.L172:
	.align	2
.L171:
	.word	.LANCHOR2+460
	.fnend
	.size	HAL_ADVCA_V300_DecryptSWPK, .-HAL_ADVCA_V300_DecryptSWPK
	.align	2
	.global	HAL_ADVCA_V300_DecryptDCAS
	.type	HAL_ADVCA_V300_DecryptDCAS, %function
HAL_ADVCA_V300_DecryptDCAS:
	.fnstart
.LFB813:
	@ args = 4, pretend = 0, frame = 8
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp151,
	movt	r5, #:upper16:.LANCHOR0	@ tmp151,
	mov	sl, r0	@ enLevel, enLevel
	mov	r4, r1	@ pu32DataIn, pu32DataIn
	ldr	r7, [r5, #12]	@ g_DCASInfo.OpenFlag, g_DCASInfo.OpenFlag
	cmp	r7, #1	@ g_DCASInfo.OpenFlag,
	bne	.L187	@,
	cmp	r1, #0	@ pu32DataIn,
	beq	.L188	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L189	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r6, r0, #0	@ Ret,
	bne	.L190	@,
	ldr	lr, [r4, #4]	@ tmp174,
	movw	r3, #1031	@,
	ldr	r7, [r4, #8]	@ tmp175,
	mov	r0, #3	@,
	ldr	r8, [r4, #12]	@ tmp176,
	mov	r1, #97	@,
	ldr	r9, [r4, #0]	@,* pu32DataIn
	movw	ip, #:lower16:.LC21	@ tmp172,
	ldr	r2, .L196	@,
	movt	ip, #:upper16:.LC21	@ tmp172,
	str	lr, [sp, #8]	@ tmp174,
	str	ip, [sp, #0]	@ tmp172,
	str	r9, [sp, #4]	@,
	str	r7, [sp, #12]	@ tmp175,
	str	r8, [sp, #16]	@ tmp176,
	bl	HI_LogOut	@
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r2, [r5, #8]	@ g_DCASInfo.Alg, g_DCASInfo.Alg
	str	r6, [fp, #-52]	@ Ret, DCASCtrl.u32
	mov	r3, r6	@ tmp188, Ret
	cmp	r2, #1	@ g_DCASInfo.Alg,
	bfi	r3, sl, #0, #4	@ tmp188, enLevel,,
	strb	r3, [fp, #-52]	@ tmp188,
	movw	r0, #:lower16:-123142028	@,
	ldrneb	r3, [fp, #-52]	@ zero_extendqisi2	@ tmp195,
	uxtbeq	r3, r3	@ tmp192, tmp188
	bfieq	r3, r6, #4, #1	@ tmp192, Ret,,
	strb	r6, [fp, #-50]	@ Ret, DCASCtrl.bits.dsc_code_mc_alg_sel
	orrne	r3, r3, #16	@ tmp196, tmp195,
	movt	r0, #:upper16:-123142028	@,
	strb	r3, [fp, #-52]	@ tmp196,
	ldr	r1, [fp, #-52]	@, DCASCtrl.u32
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret.915,
	mov	r4, r0	@ Ret.915,
	beq	.L191	@,
	cmp	r0, #1	@ Ret.915,
	beq	.L192	@,
	cmp	r0, #0	@ Ret.915,
	bne	.L193	@,
	ldrb	r1, [fp, #-52]	@ zero_extendqisi2	@ tmp208,
	and	r0, r1, #15	@ tmp210, tmp208,
	cmp	r0, #9	@ tmp210,
	beq	.L194	@,
.L175:
	mov	r0, r4	@, D.20258
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L194:
	ldr	r3, [fp, #4]	@, pDataOut
	cmp	r3, #0	@,
	beq	.L195	@,
	movw	r0, #:lower16:-123142016	@,
	movt	r0, #:upper16:-123142016	@,
	bl	DRV_ADVCA_ReadReg	@
	ldr	r9, [fp, #4]	@, pDataOut
	str	r0, [r9, #0]	@,
	movw	r0, #:lower16:-123142012	@,
	movt	r0, #:upper16:-123142012	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r9, #4]	@,
	movw	r0, #:lower16:-123142008	@,
	movt	r0, #:upper16:-123142008	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r9, #8]	@,
	movw	r0, #:lower16:-123142004	@,
	movt	r0, #:upper16:-123142004	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r9, #12]	@,
	b	.L175	@
.L187:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	mov	r3, #1004	@,
	movw	ip, #:lower16:.LC20	@ tmp155,
	mvn	r4, #0	@ D.20258,
	movt	ip, #:upper16:.LC20	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L175	@
.L189:
	mov	r0, r7	@, g_DCASInfo.OpenFlag
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	mov	r3, #1020	@,
	movw	lr, #:lower16:.LC14	@ tmp166,
	mvn	r4, #0	@ D.20258,
	movt	lr, #:upper16:.LC14	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	b	.L175	@
.L190:
	mov	r0, r7	@, g_DCASInfo.OpenFlag
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	movw	r3, #1027	@,
	movw	ip, #:lower16:.LC15	@ tmp169,
	movw	r4, #:lower16:-2142371834	@ D.20258,
	movt	ip, #:upper16:.LC15	@ tmp169,
	movt	r4, #:upper16:-2142371834	@ D.20258,
	str	ip, [sp, #0]	@ tmp169,
	bl	HI_LogOut	@
	b	.L175	@
.L193:
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	mvn	r4, #0	@ D.20258,
	b	.L175	@
.L188:
	mov	r0, r7	@, g_DCASInfo.OpenFlag
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	movw	r3, #1011	@,
	movw	r4, #:lower16:.LC13	@ tmp158,
	movt	r4, #:upper16:.LC13	@ tmp158,
	str	r4, [sp, #0]	@ tmp158,
	movw	r4, #:lower16:-2142371835	@ D.20258,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371835	@ D.20258,
	b	.L175	@
.L191:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	movw	r3, #1065	@,
	movw	r4, #:lower16:.LC19	@ tmp202,
	movt	r4, #:upper16:.LC19	@ tmp202,
	str	r4, [sp, #0]	@ tmp202,
	movw	r4, #:lower16:-2142371834	@ D.20258,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371834	@ D.20258,
	b	.L175	@
.L192:
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	movw	r3, #1070	@,
	movw	lr, #:lower16:.LC22	@ tmp205,
	mvn	r4, #0	@ D.20258,
	movt	lr, #:upper16:.LC22	@ tmp205,
	str	lr, [sp, #0]	@ tmp205,
	bl	HI_LogOut	@
	b	.L175	@
.L195:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L196	@,
	movw	r3, #1083	@,
	movw	ip, #:lower16:.LC23	@ tmp213,
	movw	r4, #:lower16:-2142371835	@ D.20258,
	movt	ip, #:upper16:.LC23	@ tmp213,
	movt	r4, #:upper16:-2142371835	@ D.20258,
	str	ip, [sp, #0]	@ tmp213,
	bl	HI_LogOut	@
	b	.L175	@
.L197:
	.align	2
.L196:
	.word	.LANCHOR2+488
	.fnend
	.size	HAL_ADVCA_V300_DecryptDCAS, .-HAL_ADVCA_V300_DecryptDCAS
	.align	2
	.global	HAL_ADVCA_V300_EncryptSwpk
	.type	HAL_ADVCA_V300_EncryptSwpk, %function
HAL_ADVCA_V300_EncryptSwpk:
	.fnstart
.LFB810:
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
	subs	r4, r0, #0	@ pClearSwpk, pClearSwpk
	mov	r5, r1	@ pEncryptSwpk, pEncryptSwpk
	beq	.L205	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L206	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r6, r0, #0	@ Ret,
	bne	.L207	@,
	ldr	r1, [r4, #0]	@,* pClearSwpk
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	mov	r1, #1	@,
	movw	r0, #:lower16:-123142116	@,
	movt	r0, #:upper16:-123142116	@,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmp	r0, #0	@,
	bgt	.L208	@,
	movw	r0, #:lower16:-123142048	@,
	movt	r0, #:upper16:-123142048	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #0]	@,* pEncryptSwpk
	movw	r0, #:lower16:-123142044	@,
	movt	r0, #:upper16:-123142044	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #4]	@,
	movw	r0, #:lower16:-123142040	@,
	movt	r0, #:upper16:-123142040	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #8]	@,
	movw	r0, #:lower16:-123142036	@,
	movt	r0, #:upper16:-123142036	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #12]	@,
.L200:
	mov	r0, r6	@, D.20198
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L208:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L209	@,
	movw	r3, #950	@,
	movw	ip, #:lower16:.LC19	@ tmp170,
	movw	r6, #:lower16:-2142371834	@ D.20198,
	movt	ip, #:upper16:.LC19	@ tmp170,
	movt	r6, #:upper16:-2142371834	@ D.20198,
	str	ip, [sp, #0]	@ tmp170,
	bl	HI_LogOut	@
	b	.L200	@
.L206:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L209	@,
	movw	r3, #926	@,
	movw	r6, #:lower16:.LC14	@ tmp155,
	movt	r6, #:upper16:.LC14	@ tmp155,
	str	r6, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	mvn	r6, #0	@ D.20198,
	b	.L200	@
.L207:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L209	@,
	movw	r3, #933	@,
	movw	lr, #:lower16:.LC15	@ tmp158,
	movw	r6, #:lower16:-2142371834	@ D.20198,
	movt	lr, #:upper16:.LC15	@ tmp158,
	movt	r6, #:upper16:-2142371834	@ D.20198,
	str	lr, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	b	.L200	@
.L205:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L209	@,
	movw	r3, #917	@,
	movw	ip, #:lower16:.LC18	@ tmp147,
	movw	r6, #:lower16:-2142371835	@ D.20198,
	movt	ip, #:upper16:.LC18	@ tmp147,
	movt	r6, #:upper16:-2142371835	@ D.20198,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	b	.L200	@
.L210:
	.align	2
.L209:
	.word	.LANCHOR2+516
	.fnend
	.size	HAL_ADVCA_V300_EncryptSwpk, .-HAL_ADVCA_V300_EncryptSwpk
	.align	2
	.global	HAL_ADVCA_V300_DecryptLPKProtectData
	.type	HAL_ADVCA_V300_DecryptLPKProtectData, %function
HAL_ADVCA_V300_DecryptLPKProtectData:
	.fnstart
.LFB809:
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
	cmp	r0, #0	@ pEncryptData,
	cmpne	r1, #0	@, pClearData,
	mov	r5, r1	@ pClearData, pClearData
	mov	r4, r0	@ pEncryptData, pEncryptData
	beq	.L218	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L219	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r6, r0, #0	@ Ret,
	bne	.L220	@,
	ldr	r1, [r4, #0]	@,* pEncryptData
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	mov	r7, #1	@ tmp175,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #0]	@,* pEncryptData
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r2, [r4, #4]	@ tmp174,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	add	r1, r2, r7	@, tmp174,
	bl	DRV_ADVCA_WriteReg	@
	bic	r1, r6, #3	@ LPCtrl, Ret,
	orr	r1, r1, r7	@, LPCtrl, tmp175
	movw	r0, #:lower16:-123142124	@,
	movt	r0, #:upper16:-123142124	@,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmp	r0, #0	@,
	bgt	.L221	@,
	movw	r0, #:lower16:-123142064	@,
	movt	r0, #:upper16:-123142064	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #0]	@,* pClearData
	movw	r0, #:lower16:-123142060	@,
	movt	r0, #:upper16:-123142060	@,
	bl	DRV_ADVCA_ReadReg	@
	str	r0, [r5, #4]	@,
.L213:
	mov	r0, r6	@, D.20163
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L218:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L222	@,
	movw	r3, #829	@,
	movw	ip, #:lower16:.LC24	@ tmp154,
	movw	r6, #:lower16:-2142371835	@ D.20163,
	movt	ip, #:upper16:.LC24	@ tmp154,
	movt	r6, #:upper16:-2142371835	@ D.20163,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	b	.L213	@
.L221:
	mov	r0, r7	@, tmp175
	mov	r1, #97	@,
	ldr	r2, .L222	@,
	movw	r3, #865	@,
	movw	ip, #:lower16:.LC19	@ tmp179,
	movw	r6, #:lower16:-2142371834	@ D.20163,
	movt	ip, #:upper16:.LC19	@ tmp179,
	movt	r6, #:upper16:-2142371834	@ D.20163,
	str	ip, [sp, #0]	@ tmp179,
	bl	HI_LogOut	@
	b	.L213	@
.L219:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L222	@,
	movw	r3, #838	@,
	movw	r6, #:lower16:.LC14	@ tmp162,
	movt	r6, #:upper16:.LC14	@ tmp162,
	str	r6, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r6, #0	@ D.20163,
	b	.L213	@
.L220:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L222	@,
	movw	r3, #845	@,
	movw	lr, #:lower16:.LC15	@ tmp165,
	movw	r6, #:lower16:-2142371834	@ D.20163,
	movt	lr, #:upper16:.LC15	@ tmp165,
	movt	r6, #:upper16:-2142371834	@ D.20163,
	str	lr, [sp, #0]	@ tmp165,
	bl	HI_LogOut	@
	b	.L213	@
.L223:
	.align	2
.L222:
	.word	.LANCHOR2+544
	.fnend
	.size	HAL_ADVCA_V300_DecryptLPKProtectData, .-HAL_ADVCA_V300_DecryptLPKProtectData
	.align	2
	.global	HAL_ADVCA_V300_DecryptLpk
	.type	HAL_ADVCA_V300_DecryptLpk, %function
HAL_ADVCA_V300_DecryptLpk:
	.fnstart
.LFB808:
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
	subs	r4, r0, #0	@ pEncryptLpk, pEncryptLpk
	beq	.L231	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L232	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r5, r0, #0	@ Ret,
	bne	.L233	@,
	ldr	r1, [r4, #0]	@,* pEncryptLpk
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	mov	r1, r5	@, Ret
	movw	r0, #:lower16:-123142124	@,
	movt	r0, #:upper16:-123142124	@,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmp	r0, #0	@,
	movle	r0, r5	@ D.20126, Ret
	bgt	.L234	@,
.L226:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L234:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L235	@,
	movw	r3, #777	@,
	movw	lr, #:lower16:.LC19	@ tmp166,
	movt	lr, #:upper16:.LC19	@ tmp166,
	str	lr, [sp, #0]	@ tmp166,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20126,
	movt	r0, #:upper16:-2142371834	@ D.20126,
	b	.L226	@
.L232:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L235	@,
	movw	r3, #749	@,
	movw	lr, #:lower16:.LC14	@ tmp151,
	movt	lr, #:upper16:.LC14	@ tmp151,
	str	lr, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20126,
	b	.L226	@
.L233:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L235	@,
	mov	r3, #756	@,
	movw	ip, #:lower16:.LC15	@ tmp154,
	movt	ip, #:upper16:.LC15	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20126,
	movt	r0, #:upper16:-2142371834	@ D.20126,
	b	.L226	@
.L231:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L235	@,
	mov	r3, #740	@,
	movw	ip, #:lower16:.LC25	@ tmp143,
	movt	ip, #:upper16:.LC25	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20126,
	movt	r0, #:upper16:-2142371835	@ D.20126,
	b	.L226	@
.L236:
	.align	2
.L235:
	.word	.LANCHOR2+584
	.fnend
	.size	HAL_ADVCA_V300_DecryptLpk, .-HAL_ADVCA_V300_DecryptLpk
	.align	2
	.global	HAL_ADVCA_V300_DecryptSP
	.type	HAL_ADVCA_V300_DecryptSP, %function
HAL_ADVCA_V300_DecryptSP:
	.fnstart
.LFB807:
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
	subs	r4, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r0	@ enLevel, enLevel
	mov	r6, r2	@ AddrID, AddrID
	mov	r8, r3	@ bEvenOrOdd, bEvenOrOdd
	beq	.L248	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L249	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r7, r0, #0	@ Ret,
	bne	.L250	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp169,
	movw	ip, #:lower16:.LANCHOR1	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp169,
	movt	ip, #:upper16:.LANCHOR1	@ tmp171,
	mov	r1, r7	@ unSPCtrl, Ret
	ldr	r3, [r4, #4]	@ g_SPAlgType, g_SPAlgType
	bfi	r1, r5, #0, #2	@ unSPCtrl, enLevel,,
	ldr	r2, [ip, #0]	@ g_SPDscMode.261, g_SPDscMode
	bfi	r1, r3, #2, #1	@ unSPCtrl, g_SPAlgType,,
	ands	r0, r2, #16384	@ tmp172, g_SPDscMode.261,
	bfieq	r1, r2, #16, #8	@ unSPCtrl, g_SPDscMode.261,,
	addeq	r6, r8, r6, asl #1	@, tmp177, bEvenOrOdd, AddrID,
	bfieq	r1, r0, #3, #1	@ unSPCtrl, tmp172,,
	orrne	r1, r1, #8	@ unSPCtrl, unSPCtrl,
	bfi	r1, r6, #8, #8	@ unSPCtrl, AddrID,,
	movw	r0, #:lower16:-123142132	@,
	movt	r0, #:upper16:-123142132	@,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret.1028,
	mov	r4, r0	@ Ret.1028,
	beq	.L251	@,
	cmp	r0, #4	@ Ret.1028,
	beq	.L252	@,
	cmp	r0, #0	@ Ret.1028,
	mvnne	r0, #0	@ D.20077,
	beq	.L253	@,
.L239:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L253:
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	mov	r0, r4	@ D.20077, Ret.1028
	b	.L239	@
.L252:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L254	@,
	movw	r3, #697	@,
	movw	ip, #:lower16:.LC27	@ tmp185,
	movt	ip, #:upper16:.LC27	@ tmp185,
	str	ip, [sp, #0]	@ tmp185,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20077,
	b	.L239	@
.L249:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L254	@,
	movw	r3, #651	@,
	movw	lr, #:lower16:.LC14	@ tmp156,
	movt	lr, #:upper16:.LC14	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20077,
	b	.L239	@
.L250:
	movw	r0, #:lower16:-123142088	@,
	movt	r0, #:upper16:-123142088	@,
	bl	DRV_ADVCA_ReadReg	@
	mov	r1, #97	@,
	ldr	r2, .L254	@,
	movw	r3, #659	@,
	movw	ip, #:lower16:.LC26	@ tmp160,
	movt	ip, #:upper16:.LC26	@ tmp160,
	str	ip, [sp, #0]	@ tmp160,
	str	r0, [sp, #4]	@,
	mov	r0, #1	@,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20077,
	movt	r0, #:upper16:-2142371834	@ D.20077,
	b	.L239	@
.L248:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L254	@,
	movw	r3, #643	@,
	movw	ip, #:lower16:.LC13	@ tmp148,
	movt	ip, #:upper16:.LC13	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20077,
	movt	r0, #:upper16:-2142371835	@ D.20077,
	b	.L239	@
.L251:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L254	@,
	mov	r3, #692	@,
	movw	lr, #:lower16:.LC19	@ tmp182,
	movt	lr, #:upper16:.LC19	@ tmp182,
	str	lr, [sp, #0]	@ tmp182,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20077,
	movt	r0, #:upper16:-2142371834	@ D.20077,
	b	.L239	@
.L255:
	.align	2
.L254:
	.word	.LANCHOR2+612
	.fnend
	.size	HAL_ADVCA_V300_DecryptSP, .-HAL_ADVCA_V300_DecryptSP
	.align	2
	.global	HAL_ADVCA_V300_CryptR2R
	.type	HAL_ADVCA_V300_CryptR2R, %function
HAL_ADVCA_V300_CryptR2R:
	.fnstart
.LFB806:
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
	subs	r4, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r0	@ enLevel, enLevel
	mov	r7, r2	@ AddrID, AddrID
	beq	.L266	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp147,
	movt	r6, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r3, [r6, #16]	@ g_IsSWPKKeyLadderOpen, g_IsSWPKKeyLadderOpen
	cmp	r3, #0	@ g_IsSWPKKeyLadderOpen,
	bne	.L267	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L268	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r8, r0, #0	@ Ret,
	bne	.L269	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r2, [r6, #0]	@ g_R2RAlgType, g_R2RAlgType
	mov	r1, r8	@ R2RCtrl, Ret
	bfi	r1, r5, #0, #2	@ R2RCtrl, enLevel,,
	bfi	r1, r8, #16, #8	@ R2RCtrl, Ret,,
	movw	r0, #:lower16:-123142136	@,
	bfi	r1, r2, #2, #1	@ R2RCtrl, g_R2RAlgType,,
	movt	r0, #:upper16:-123142136	@,
	bfi	r1, r7, #8, #8	@ R2RCtrl, AddrID,,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret.1052,
	mov	r4, r0	@ Ret.1052,
	beq	.L270	@,
	cmp	r0, #4	@ Ret.1052,
	beq	.L271	@,
	cmp	r0, #0	@ Ret.1052,
	mvnne	r0, #0	@ D.20031,
	bne	.L258	@,
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	mov	r0, r4	@ D.20031, Ret.1052
.L258:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L267:
	mov	r0, r4	@, pu32DataIn
	mov	r1, r2	@, AddrID
	bl	HAL_ADVCA_V300_DecryptSWPK	@
	mov	r0, #0	@ D.20031,
	b	.L258	@
.L271:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L272	@,
	mov	r3, #608	@,
	movw	ip, #:lower16:.LC28	@ tmp176,
	movt	ip, #:upper16:.LC28	@ tmp176,
	str	ip, [sp, #0]	@ tmp176,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20031,
	b	.L258	@
.L268:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L272	@,
	movw	r3, #573	@,
	movw	lr, #:lower16:.LC14	@ tmp156,
	movt	lr, #:upper16:.LC14	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.20031,
	b	.L258	@
.L269:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L272	@,
	mov	r3, #580	@,
	movw	ip, #:lower16:.LC15	@ tmp159,
	movt	ip, #:upper16:.LC15	@ tmp159,
	str	ip, [sp, #0]	@ tmp159,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20031,
	movt	r0, #:upper16:-2142371834	@ D.20031,
	b	.L258	@
.L270:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L272	@,
	movw	r3, #603	@,
	movw	lr, #:lower16:.LC19	@ tmp173,
	movt	lr, #:upper16:.LC19	@ tmp173,
	str	lr, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.20031,
	movt	r0, #:upper16:-2142371834	@ D.20031,
	b	.L258	@
.L266:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L272	@,
	movw	r3, #558	@,
	movw	ip, #:lower16:.LC13	@ tmp146,
	movt	ip, #:upper16:.LC13	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.20031,
	movt	r0, #:upper16:-2142371835	@ D.20031,
	b	.L258	@
.L273:
	.align	2
.L272:
	.word	.LANCHOR2+640
	.fnend
	.size	HAL_ADVCA_V300_CryptR2R, .-HAL_ADVCA_V300_CryptR2R
	.align	2
	.global	HAL_ADVCA_V300_DecryptCsa3
	.type	HAL_ADVCA_V300_DecryptCsa3, %function
HAL_ADVCA_V300_DecryptCsa3:
	.fnstart
.LFB805:
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
	subs	r4, r1, #0	@ pu32DataIn, pu32DataIn
	mov	r5, r0	@ enLevel, enLevel
	mov	r6, r2	@ AddrID, AddrID
	mov	r7, r3	@ bEvenOrOdd, bEvenOrOdd
	beq	.L283	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L284	@,
	bl	HAL_ADVCA_V300_WaitStat	@
	subs	r8, r0, #0	@ Ret,
	bne	.L285	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp167,
	movt	r0, #:upper16:.LANCHOR0	@ tmp167,
	mov	r2, #16	@ tmp166,
	mov	r1, r8	@ CSA3Ctrl, Ret
	bfi	r1, r2, #16, #8	@ CSA3Ctrl, tmp166,,
	ldr	r3, [r0, #24]	@ g_Csa3AlgType, g_Csa3AlgType
	bfi	r1, r5, #0, #2	@ CSA3Ctrl, enLevel,,
	movw	r0, #:lower16:-123142128	@,
	movt	r0, #:upper16:-123142128	@,
	bfi	r1, r3, #2, #1	@ CSA3Ctrl, g_Csa3AlgType,,
	bfi	r1, r7, #8, #1	@ CSA3Ctrl, bEvenOrOdd,,
	bfi	r1, r6, #9, #7	@ CSA3Ctrl, AddrID,,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret.1076,
	mov	r4, r0	@ Ret.1076,
	beq	.L286	@,
	cmp	r0, #6	@ Ret.1076,
	beq	.L287	@,
	cmp	r0, #0	@ Ret.1076,
	mvnne	r0, #0	@ D.19985,
	beq	.L288	@,
.L276:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L288:
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	mov	r0, r4	@ D.19985, Ret.1076
	b	.L276	@
.L287:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L289	@,
	movw	r3, #523	@,
	movw	ip, #:lower16:.LC29	@ tmp181,
	movt	ip, #:upper16:.LC29	@ tmp181,
	str	ip, [sp, #0]	@ tmp181,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.19985,
	b	.L276	@
.L284:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L289	@,
	movw	r3, #487	@,
	movw	lr, #:lower16:.LC14	@ tmp154,
	movt	lr, #:upper16:.LC14	@ tmp154,
	str	lr, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.19985,
	b	.L276	@
.L285:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L289	@,
	movw	r3, #494	@,
	movw	ip, #:lower16:.LC15	@ tmp157,
	movt	ip, #:upper16:.LC15	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.19985,
	movt	r0, #:upper16:-2142371834	@ D.19985,
	b	.L276	@
.L283:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L289	@,
	movw	r3, #479	@,
	movw	ip, #:lower16:.LC13	@ tmp146,
	movt	ip, #:upper16:.LC13	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ D.19985,
	movt	r0, #:upper16:-2142371835	@ D.19985,
	b	.L276	@
.L286:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L289	@,
	movw	r3, #518	@,
	movw	lr, #:lower16:.LC19	@ tmp178,
	movt	lr, #:upper16:.LC19	@ tmp178,
	str	lr, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371834	@ D.19985,
	movt	r0, #:upper16:-2142371834	@ D.19985,
	b	.L276	@
.L290:
	.align	2
.L289:
	.word	.LANCHOR2+664
	.fnend
	.size	HAL_ADVCA_V300_DecryptCsa3, .-HAL_ADVCA_V300_DecryptCsa3
	.align	2
	.global	HAL_ADVCA_V300_DecryptCw
	.type	HAL_ADVCA_V300_DecryptCw, %function
HAL_ADVCA_V300_DecryptCw:
	.fnstart
.LFB804:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp142,
	movt	r5, #:upper16:.LANCHOR0	@ tmp142,
	mov	r6, r0	@ enLevel, enLevel
	mov	r4, r1	@ pu32DataIn, pu32DataIn
	mov	r8, r2	@ AddrID, AddrID
	ldr	r0, [r5, #12]	@ g_DCASInfo.OpenFlag, g_DCASInfo.OpenFlag
	mov	r7, r3	@ bEvenOrOdd, bEvenOrOdd
	cmp	r0, #1	@ g_DCASInfo.OpenFlag,
	beq	.L300	@,
	cmp	r1, #0	@ pu32DataIn,
	beq	.L301	@,
	movw	r0, #:lower16:-123142144	@,
	movt	r0, #:upper16:-123142144	@,
	bl	DRV_ADVCA_ReadReg	@
	tst	r0, #1	@,
	beq	.L302	@,
	ldr	r1, [r4, #0]	@,* pu32DataIn
	movw	r0, #:lower16:-123142112	@,
	movt	r0, #:upper16:-123142112	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #4]	@,
	movw	r0, #:lower16:-123142108	@,
	movt	r0, #:upper16:-123142108	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #8]	@,
	movw	r0, #:lower16:-123142104	@,
	movt	r0, #:upper16:-123142104	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r1, [r4, #12]	@,
	movw	r0, #:lower16:-123142100	@,
	movt	r0, #:upper16:-123142100	@,
	bl	DRV_ADVCA_WriteReg	@
	ldr	r3, [r5, #28]	@ g_CwAlgType, g_CwAlgType
	mov	r1, #0	@ CSA2Ctrl,
	bfi	r1, r1, #16, #8	@ CSA2Ctrl, CSA2Ctrl,,
	bfi	r1, r6, #0, #2	@ CSA2Ctrl, enLevel,,
	movw	r0, #:lower16:-123142140	@,
	bfi	r1, r3, #2, #1	@ CSA2Ctrl, g_CwAlgType,,
	movt	r0, #:upper16:-123142140	@,
	bfi	r1, r7, #8, #1	@ CSA2Ctrl, bEvenOrOdd,,
	bfi	r1, r8, #9, #7	@ CSA2Ctrl, AddrID,,
	bl	DRV_ADVCA_WriteReg	@
	bl	HAL_ADVCA_V300_WaitStat	@
	cmn	r0, #1	@ Ret,
	mov	r4, r0	@ Ret,
	beq	.L303	@,
	cmp	r0, #6	@ Ret,
	beq	.L304	@,
	cmp	r0, #0	@ Ret,
	mvnne	r4, #0	@ Ret,
	beq	.L305	@,
.L293:
	mov	r0, r4	@, Ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L305:
	mov	r0, #100	@,
	bl	DRV_ADVCA_Wait	@
	b	.L293	@
.L304:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L306	@,
	movw	r3, #445	@,
	movw	r4, #:lower16:.LC30	@ tmp178,
	movt	r4, #:upper16:.LC30	@ tmp178,
	str	r4, [sp, #0]	@ tmp178,
	bl	HI_LogOut	@
	mvn	r4, #0	@ Ret,
	b	.L293	@
.L300:
	mov	r0, #2	@,
	mov	ip, #0	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	HAL_ADVCA_V300_DecryptDCAS	@
	mov	r4, r0	@ Ret,
	b	.L293	@
.L302:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L306	@,
	mov	r3, #416	@,
	movw	lr, #:lower16:.LC14	@ tmp155,
	mvn	r4, #0	@ Ret,
	movt	lr, #:upper16:.LC14	@ tmp155,
	str	lr, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	b	.L293	@
.L301:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L306	@,
	movw	r3, #407	@,
	movw	r4, #:lower16:.LC13	@ tmp147,
	movt	r4, #:upper16:.LC13	@ tmp147,
	str	r4, [sp, #0]	@ tmp147,
	movw	r4, #:lower16:-2142371835	@ Ret,
	bl	HI_LogOut	@
	movt	r4, #:upper16:-2142371835	@ Ret,
	b	.L293	@
.L303:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L306	@,
	mov	r3, #440	@,
	movw	ip, #:lower16:.LC19	@ tmp175,
	movw	r4, #:lower16:-2142371834	@ Ret,
	movt	ip, #:upper16:.LC19	@ tmp175,
	movt	r4, #:upper16:-2142371834	@ Ret,
	str	ip, [sp, #0]	@ tmp175,
	bl	HI_LogOut	@
	b	.L293	@
.L307:
	.align	2
.L306:
	.word	.LANCHOR2+692
	.fnend
	.size	HAL_ADVCA_V300_DecryptCw, .-HAL_ADVCA_V300_DecryptCw
	.align	2
	.global	HAL_ADVCA_V300_GetMiscKlLevel
	.type	HAL_ADVCA_V300_GetMiscKlLevel, %function
HAL_ADVCA_V300_GetMiscKlLevel:
	.fnstart
.LFB801:
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
	cmp	r0, #0	@ penValue,
	movweq	r0, #:lower16:-2142371835	@ D.19893,
	movteq	r0, #:upper16:-2142371835	@ D.19893,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	DRV_CA_OTP_V200_GetMiscKlLevel	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_GetMiscKlLevel, .-HAL_ADVCA_V300_GetMiscKlLevel
	.align	2
	.global	HAL_ADVCA_V300_GetCSA3LadderLevel
	.type	HAL_ADVCA_V300_GetCSA3LadderLevel, %function
HAL_ADVCA_V300_GetCSA3LadderLevel:
	.fnstart
.LFB790:
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
	subs	r4, r0, #0	@ penSel, penSel
	movweq	r0, #:lower16:-2142371835	@ Ret,
	movteq	r0, #:upper16:-2142371835	@ Ret,
	beq	.L314	@,
	sub	r0, fp, #24	@,,
	bl	DRV_CA_OTP_V200_GetCSA3LadderLevel	@
	ldr	r3, [fp, #-24]	@ enKeyLevel, enKeyLevel
	str	r3, [r4, #0]	@ enKeyLevel,* penSel
.L314:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	HAL_ADVCA_V300_GetCSA3LadderLevel, .-HAL_ADVCA_V300_GetCSA3LadderLevel
	.align	2
	.global	HAL_ADVCA_V300_SetCSA3LadderLevel
	.type	HAL_ADVCA_V300_SetCSA3LadderLevel, %function
HAL_ADVCA_V300_SetCSA3LadderLevel:
	.fnstart
.LFB789:
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
	sub	r3, r0, #1	@ tmp136, enSel,
	cmp	r3, #1	@ tmp136,
	mov	ip, r0	@ enSel, enSel
	bhi	.L320	@,
	bl	DRV_CA_OTP_V200_SetCSA3LadderLevel	@
.L318:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L320:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L321	@,
	mov	r3, #216	@,
	str	ip, [sp, #4]	@ enSel,
	movw	ip, #:lower16:.LC31	@ tmp139,
	movt	ip, #:upper16:.LC31	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ Ret,
	movt	r0, #:upper16:-2142371835	@ Ret,
	b	.L318	@
.L322:
	.align	2
.L321:
	.word	.LANCHOR2+720
	.fnend
	.size	HAL_ADVCA_V300_SetCSA3LadderLevel, .-HAL_ADVCA_V300_SetCSA3LadderLevel
	.align	2
	.global	HAL_ADVCA_V300_GetSPLadderLevel
	.type	HAL_ADVCA_V300_GetSPLadderLevel, %function
HAL_ADVCA_V300_GetSPLadderLevel:
	.fnstart
.LFB788:
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
	subs	r4, r0, #0	@ penSel, penSel
	movweq	r0, #:lower16:-2142371835	@ Ret,
	movteq	r0, #:upper16:-2142371835	@ Ret,
	beq	.L325	@,
	sub	r0, fp, #24	@,,
	bl	DRV_CA_OTP_V200_GetSPLadderLevel	@
	ldr	r3, [fp, #-24]	@ enKeyLevel, enKeyLevel
	str	r3, [r4, #0]	@ enKeyLevel,* penSel
.L325:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	HAL_ADVCA_V300_GetSPLadderLevel, .-HAL_ADVCA_V300_GetSPLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_SetSPLadderLevel
	.type	HAL_ADVCA_V300_SetSPLadderLevel, %function
HAL_ADVCA_V300_SetSPLadderLevel:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r3, r0, #1	@ tmp136, enSel,
	cmp	r3, #1	@ tmp136,
	mov	ip, r0	@ enSel, enSel
	bhi	.L331	@,
	bl	DRV_CA_OTP_V200_SetSPLadderLevel	@
.L329:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L331:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L332	@,
	mov	r3, #183	@,
	str	ip, [sp, #4]	@ enSel,
	movw	ip, #:lower16:.LC31	@ tmp139,
	movt	ip, #:upper16:.LC31	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ Ret,
	movt	r0, #:upper16:-2142371835	@ Ret,
	b	.L329	@
.L333:
	.align	2
.L332:
	.word	.LANCHOR2+756
	.fnend
	.size	HAL_ADVCA_V300_SetSPLadderLevel, .-HAL_ADVCA_V300_SetSPLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_GetR2RLadderLevel
	.type	HAL_ADVCA_V300_GetR2RLadderLevel, %function
HAL_ADVCA_V300_GetR2RLadderLevel:
	.fnstart
.LFB786:
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
	subs	r4, r0, #0	@ penSel, penSel
	movweq	r0, #:lower16:-2142371835	@ Ret,
	movteq	r0, #:upper16:-2142371835	@ Ret,
	beq	.L336	@,
	sub	r0, fp, #24	@,,
	bl	DRV_CA_OTP_V200_GetR2RLadderLevel	@
	ldr	r3, [fp, #-24]	@ enKeyLevel, enKeyLevel
	str	r3, [r4, #0]	@ enKeyLevel,* penSel
.L336:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	HAL_ADVCA_V300_GetR2RLadderLevel, .-HAL_ADVCA_V300_GetR2RLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_SetR2RLadderLevel
	.type	HAL_ADVCA_V300_SetR2RLadderLevel, %function
HAL_ADVCA_V300_SetR2RLadderLevel:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r3, r0, #1	@ tmp136, enSel,
	cmp	r3, #1	@ tmp136,
	mov	ip, r0	@ enSel, enSel
	bhi	.L342	@,
	bl	DRV_CA_OTP_V200_SetR2RLadderLevel	@
.L340:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L342:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L343	@,
	mov	r3, #150	@,
	str	ip, [sp, #4]	@ enSel,
	movw	ip, #:lower16:.LC31	@ tmp139,
	movt	ip, #:upper16:.LC31	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ Ret,
	movt	r0, #:upper16:-2142371835	@ Ret,
	b	.L340	@
.L344:
	.align	2
.L343:
	.word	.LANCHOR2+788
	.fnend
	.size	HAL_ADVCA_V300_SetR2RLadderLevel, .-HAL_ADVCA_V300_SetR2RLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_GetCWLadderLevel
	.type	HAL_ADVCA_V300_GetCWLadderLevel, %function
HAL_ADVCA_V300_GetCWLadderLevel:
	.fnstart
.LFB784:
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
	subs	r4, r0, #0	@ penSel, penSel
	movweq	r0, #:lower16:-2142371835	@ Ret,
	movteq	r0, #:upper16:-2142371835	@ Ret,
	beq	.L347	@,
	sub	r0, fp, #24	@,,
	bl	DRV_CA_OTP_V200_GetCSA2LadderLevel	@
	ldr	r3, [fp, #-24]	@ enKeyLevel, enKeyLevel
	str	r3, [r4, #0]	@ enKeyLevel,* penSel
.L347:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	HAL_ADVCA_V300_GetCWLadderLevel, .-HAL_ADVCA_V300_GetCWLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_SetCWLadderLevel
	.type	HAL_ADVCA_V300_SetCWLadderLevel, %function
HAL_ADVCA_V300_SetCWLadderLevel:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r3, r0, #1	@ tmp136, enSel,
	cmp	r3, #1	@ tmp136,
	mov	ip, r0	@ enSel, enSel
	bhi	.L353	@,
	bl	DRV_CA_OTP_V200_SetCSA2LadderLevel	@
.L351:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L353:
	mov	r0, #1	@,
	mov	r1, #97	@,
	ldr	r2, .L354	@,
	mov	r3, #117	@,
	str	ip, [sp, #4]	@ enSel,
	movw	ip, #:lower16:.LC31	@ tmp139,
	movt	ip, #:upper16:.LC31	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	movw	r0, #:lower16:-2142371835	@ Ret,
	movt	r0, #:upper16:-2142371835	@ Ret,
	b	.L351	@
.L355:
	.align	2
.L354:
	.word	.LANCHOR2+824
	.fnend
	.size	HAL_ADVCA_V300_SetCWLadderLevel, .-HAL_ADVCA_V300_SetCWLadderLevel
	.align	2
	.global	HAL_ADVCA_V300_StatHardCwSel
	.type	HAL_ADVCA_V300_StatHardCwSel, %function
HAL_ADVCA_V300_StatHardCwSel:
	.fnstart
.LFB780:
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
	cmp	r0, #0	@ pu32Lock,
	movweq	r0, #:lower16:-2142371835	@ Ret,
	movteq	r0, #:upper16:-2142371835	@ Ret,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	DRV_CA_OTP_V200_GetTSCsa2HardonlyEn	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HAL_ADVCA_V300_StatHardCwSel, .-HAL_ADVCA_V300_StatHardCwSel
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.19898, %object
	.size	__func__.19898, 28
__func__.19898:
	.ascii	"HAL_ADVCA_V300_SetSPDscMode\000"
	.type	__func__.19883, %object
	.size	__func__.19883, 32
__func__.19883:
	.ascii	"HAL_ADVCA_V300_GetMiscAlgorithm\000"
	.type	__func__.19876, %object
	.size	__func__.19876, 32
__func__.19876:
	.ascii	"HAL_ADVCA_V300_SetMiscAlgorithm\000"
	.type	__func__.19864, %object
	.size	__func__.19864, 30
__func__.19864:
	.ascii	"HAL_ADVCA_V300_SetSPAlgorithm\000"
	.space	2
	.type	__func__.19852, %object
	.size	__func__.19852, 31
__func__.19852:
	.ascii	"HAL_ADVCA_V300_SetR2RAlgorithm\000"
	.space	1
	.type	__func__.19844, %object
	.size	__func__.19844, 32
__func__.19844:
	.ascii	"HAL_ADVCA_V300_GetCSA3Algorithm\000"
	.type	__func__.19837, %object
	.size	__func__.19837, 32
__func__.19837:
	.ascii	"HAL_ADVCA_V300_SetCSA3Algorithm\000"
	.type	__func__.19829, %object
	.size	__func__.19829, 30
__func__.19829:
	.ascii	"HAL_ADVCA_V300_GetCWAlgorithm\000"
	.space	2
	.type	__func__.19822, %object
	.size	__func__.19822, 30
__func__.19822:
	.ascii	"HAL_ADVCA_V300_SetCWAlgorithm\000"
	.space	2
	.type	__func__.20649, %object
	.size	__func__.20649, 25
__func__.20649:
	.ascii	"HAL_ADVCA_ProcGetReginfo\000"
	.space	3
	.type	__func__.20438, %object
	.size	__func__.20438, 40
__func__.20438:
	.ascii	"HAL_ADVCA_V300_GetSecretKeyChecksumFlag\000"
	.type	__func__.20447, %object
	.size	__func__.20447, 27
__func__.20447:
	.ascii	"HAL_ADVCA_V300_GetCAStates\000"
	.space	1
	.type	__func__.19702, %object
	.size	__func__.19702, 24
__func__.19702:
	.ascii	"HAL_ADVCA_V300_WaitStat\000"
	.type	__func__.20393, %object
	.size	__func__.20393, 27
__func__.20393:
	.ascii	"HAL_ADVCA_V300_DecryptMisc\000"
	.space	1
	.type	__func__.20352, %object
	.size	__func__.20352, 25
__func__.20352:
	.ascii	"HAL_ADVCA_V300_CryptGDRM\000"
	.space	3
	.type	__func__.20318, %object
	.size	__func__.20318, 27
__func__.20318:
	.ascii	"HAL_ADVCA_V300_DecryptSWPK\000"
	.space	1
	.type	__func__.20254, %object
	.size	__func__.20254, 27
__func__.20254:
	.ascii	"HAL_ADVCA_V300_DecryptDCAS\000"
	.space	1
	.type	__func__.20192, %object
	.size	__func__.20192, 27
__func__.20192:
	.ascii	"HAL_ADVCA_V300_EncryptSwpk\000"
	.space	1
	.type	__func__.20154, %object
	.size	__func__.20154, 37
__func__.20154:
	.ascii	"HAL_ADVCA_V300_DecryptLPKProtectData\000"
	.space	3
	.type	__func__.20123, %object
	.size	__func__.20123, 26
__func__.20123:
	.ascii	"HAL_ADVCA_V300_DecryptLpk\000"
	.space	2
	.type	__func__.20074, %object
	.size	__func__.20074, 25
__func__.20074:
	.ascii	"HAL_ADVCA_V300_DecryptSP\000"
	.space	3
	.type	__func__.20028, %object
	.size	__func__.20028, 24
__func__.20028:
	.ascii	"HAL_ADVCA_V300_CryptR2R\000"
	.type	__func__.19982, %object
	.size	__func__.19982, 27
__func__.19982:
	.ascii	"HAL_ADVCA_V300_DecryptCsa3\000"
	.space	1
	.type	__func__.19935, %object
	.size	__func__.19935, 25
__func__.19935:
	.ascii	"HAL_ADVCA_V300_DecryptCw\000"
	.space	3
	.type	__func__.19803, %object
	.size	__func__.19803, 34
__func__.19803:
	.ascii	"HAL_ADVCA_V300_SetCSA3LadderLevel\000"
	.space	2
	.type	__func__.19782, %object
	.size	__func__.19782, 32
__func__.19782:
	.ascii	"HAL_ADVCA_V300_SetSPLadderLevel\000"
	.type	__func__.19761, %object
	.size	__func__.19761, 33
__func__.19761:
	.ascii	"HAL_ADVCA_V300_SetR2RLadderLevel\000"
	.space	3
	.type	__func__.19740, %object
	.size	__func__.19740, 32
__func__.19740:
	.ascii	"HAL_ADVCA_V300_SetCWLadderLevel\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_SPDscMode, %object
	.size	g_SPDscMode, 4
g_SPDscMode:
	.word	34
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Invaild SP Dsc Mode (%d )!\012\000"
.LC1:
	.ascii	"Invalid param ,NULL pointer !\012\000"
	.space	1
.LC2:
	.ascii	"Invalid Misc Keyladder algorithm (%d)!\012\000"
.LC3:
	.ascii	"Invalid SP Keyladder algorithm (%d)!\012\000"
	.space	2
.LC4:
	.ascii	"R2R Algorithm Error = %d ! \012\000"
	.space	3
.LC5:
	.ascii	"pAlgType: NULL pointer!\012\000"
	.space	3
.LC6:
	.ascii	"Invalid CSA3 Keyladder Algorithm (%d)!\012\000"
.LC7:
	.ascii	"Invalid CSA2 Keyladder Algorithm (%d)!\012\000"
.LC8:
	.ascii	"Invalid param, NULL pointer!\012\000"
	.space	2
.LC9:
	.ascii	"Get chipid failed! \012\000"
	.space	3
.LC10:
	.ascii	"ERROR! Null pointer!\012\000"
	.space	2
.LC11:
	.ascii	"ca_decrypted finished, cnt:%d\012\000"
	.space	1
.LC12:
	.ascii	"\012 Error CA handle too long !!!!!!!!!!! \012\000"
	.space	3
.LC13:
	.ascii	"HI_NULL == pDataIn\012\000"
.LC14:
	.ascii	"Error: ConfigStatus.bits.st_vld != 1\012\000"
	.space	2
.LC15:
	.ascii	"Keyladder is busy now!\012\000"
.LC16:
	.ascii	"Key ladder timeout\012\000"
.LC17:
	.ascii	"MISC key ladder error: keyladder level is 2 in otp,"
	.ascii	" but start 3rd level actually.\012\000"
	.space	1
.LC18:
	.ascii	"HI_NULL == pClearSwpk, pClearSwpk\012\000"
	.space	1
.LC19:
	.ascii	"key ladder timeout\012\000"
.LC20:
	.ascii	"Error: DCAS is not Open\012\000"
	.space	3
.LC21:
	.ascii	"input: 0x%08x %08x %08x %08x\012\000"
	.space	2
.LC22:
	.ascii	"DCAS key ladder error: dcas_kl_disable error\012\000"
	.space	2
.LC23:
	.ascii	"HI_NULL == pDataOut\012\000"
	.space	3
.LC24:
	.ascii	"HI_NULL == pEncryptData, pClearData\012\000"
	.space	3
.LC25:
	.ascii	"HI_NULL == pEncryptLpk\012\000"
.LC26:
	.ascii	"Keyladder is busy now! Keyladder status: 0x%08x\012"
	.ascii	"\000"
	.space	3
.LC27:
	.ascii	"SP key ladder error: symmetric key usage\012\000"
	.space	2
.LC28:
	.ascii	"R2R key ladder error: symmetric key usage\012\000"
	.space	1
.LC29:
	.ascii	"CSA3 key ladder error: symmetric key usage\012\000"
.LC30:
	.ascii	"Cw key ladder error: symmetric key usage\012\000"
	.space	2
.LC31:
	.ascii	"CW ladder err, sel = %d ! \012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_R2RAlgType, %object
	.size	g_R2RAlgType, 4
g_R2RAlgType:
	.space	4
	.type	g_SPAlgType, %object
	.size	g_SPAlgType, 4
g_SPAlgType:
	.space	4
	.type	g_DCASInfo, %object
	.size	g_DCASInfo, 8
g_DCASInfo:
	.space	8
	.type	g_IsSWPKKeyLadderOpen, %object
	.size	g_IsSWPKKeyLadderOpen, 4
g_IsSWPKKeyLadderOpen:
	.space	4
	.type	g_MiscAlgType, %object
	.size	g_MiscAlgType, 4
g_MiscAlgType:
	.space	4
	.type	g_Csa3AlgType, %object
	.size	g_Csa3AlgType, 4
g_Csa3AlgType:
	.space	4
	.type	g_CwAlgType, %object
	.size	g_CwAlgType, 4
g_CwAlgType:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
