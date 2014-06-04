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
	.file	"vpss_alg_sharp.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss
@ -Idrivers/msp/vpss
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/include
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716cv200
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC020 -DHI_GPIOI2C_SUPPORT
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_VPSS_MAX_BUFFER_NUMB=6
@ -DHI_VPSS_DRV_VER_CV200 -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_sharp)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_sharp.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_sharp.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_sharp.o -O2 -Wall -Wundef
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
	.global	ALG_VtiInit
	.type	ALG_VtiInit, %function
ALG_VtiInit:
	.fnstart
.LFB593:
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
	ldr	r5, [r0, #0]	@ <variable>.bEnLTI, <variable>.bEnLTI
	mvn	r2, #127	@ tmp151,
	mov	r3, #4	@ tmp166,
	mvn	r4, #0	@ tmp143,
	mvn	ip, #20	@ tmp157,
	str	r5, [r1, #0]	@ <variable>.bEnLTI, <variable>.bEnLTI
	mov	r5, #50	@ movhi	@,
	ldr	r0, [r0, #4]	@ <variable>.bEnCTI, <variable>.bEnCTI
	strh	r5, [r1, #20]	@ movhi	@, <variable>.u16LTIHFreqThrsh
	mov	r5, #51	@ movhi	@,
	strb	r4, [r1, #8]	@ tmp143, <variable>.s8LTIHPTmp
	strh	r5, [r1, #22]	@ movhi	@, <variable>.u16LTIHFreqThrsh
	mov	r5, #256	@ movhi	@,
	str	r0, [r1, #28]	@ <variable>.bEnCTI, <variable>.bEnCTI
	mvn	r0, #7	@ tmp139,
	strh	r5, [r1, #36]	@ movhi	@, <variable>.s16CTICompsatRatio
	mvn	r5, #18	@ tmp137,
	strb	r0, [r1, #5]	@ tmp139, <variable>.s8LTIHPTmp
	mov	r0, #127	@ tmp171,
	strb	r5, [r1, #4]	@ tmp137, <variable>.s8LTIHPTmp
	strb	r0, [r1, #44]	@ tmp171, <variable>.u8CTIMixingRatio
	mvn	r0, #1	@ tmp141,
	strb	r2, [r1, #26]	@ tmp151, <variable>.u8LTICompsatMuti
	strb	r0, [r1, #6]	@ tmp141, <variable>.s8LTIHPTmp
	mvn	r0, #10	@ tmp161,
	strb	ip, [r1, #33]	@ tmp157, <variable>.s8CTIHPTmp
	strb	r0, [r1, #34]	@ tmp161, <variable>.s8CTIHPTmp
	strh	r3, [r1, #40]	@ movhi	@ tmp166, <variable>.u16CTIUnderSwingThrsh
	strb	r4, [r1, #7]	@ tmp143, <variable>.s8LTIHPTmp
	strb	r2, [r1, #24]	@ tmp151, <variable>.u8LTICompsatMuti
	strb	r2, [r1, #25]	@ tmp151, <variable>.u8LTICompsatMuti
	strb	ip, [r1, #32]	@ tmp157, <variable>.s8CTIHPTmp
	strh	r3, [r1, #38]	@ movhi	@ tmp166, <variable>.u16CTICoringThrsh
	strh	r3, [r1, #42]	@ movhi	@ tmp166, <variable>.u16CTIOverSwingThrsh
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ALG_VtiInit, .-ALG_VtiInit
	.align	2
	.global	ALG_VtiDeInit
	.type	ALG_VtiDeInit, %function
ALG_VtiDeInit:
	.fnstart
.LFB594:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_VtiDeInit, .-ALG_VtiDeInit
	.align	2
	.global	ALG_VtiReset
	.type	ALG_VtiReset, %function
ALG_VtiReset:
	.fnstart
.LFB595:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_VtiReset, .-ALG_VtiReset
	.global	__aeabi_idiv
	.align	2
	.global	ALG_VtiSet
	.type	ALG_VtiSet, %function
ALG_VtiSet:
	.fnstart
.LFB596:
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
	ldr	r7, [r0, #0]	@ <variable>.bEnLTI, <variable>.bEnLTI
	mov	r5, r0	@ pstSharpDrvPara, pstSharpDrvPara
	ldr	r6, [r0, #36]	@ D.14009, <variable>.u32ZmeHIn
	ldr	r3, [r0, #32]	@ D.14010, <variable>.u32ZmeWIn
	mov	r4, r1	@ pstSharpRtlPara, pstSharpRtlPara
	ldr	r0, [r0, #24]	@ D.14011, <variable>.u32ZmeWOut
	ldr	sl, [r5, #28]	@ D.14013, <variable>.u32ZmeHOut
	ldrh	r8, [r5, #40]	@ D.14016, <variable>.s16LTICTIStrengthRatio
	str	r7, [r1, #0]	@ <variable>.bEnLTI, <variable>.bEnLTI
	ldr	r1, [r5, #4]	@ <variable>.bEnCTI, <variable>.bEnCTI
	str	r1, [r4, #28]	@ <variable>.bEnCTI, <variable>.bEnCTI
	ldr	r2, [r5, #12]	@ <variable>.RwzbFlag, <variable>.RwzbFlag
	cmp	r2, #1	@ <variable>.RwzbFlag,
	beq	.L33	@,
	mov	r1, r3	@, D.14010
	mov	r0, r0, asl #12	@, D.14011,
	cmp	r3, r6	@ D.14010, D.14009
	movlt	r9, r3	@ s32InMinWh, D.14010
	movge	r9, r6	@ s32InMinWh, D.14009
	bl	__aeabi_idiv	@
	mov	r1, r6	@, D.14009
	mov	r7, r0	@ tmp164,
	mov	r0, sl, asl #12	@, D.14013,
	bl	__aeabi_idiv	@
	cmp	r0, r7	@ tmp168, tmp164
	movge	r2, r0	@ s32MaxRatio, tmp168
	movlt	r2, r7	@ s32MaxRatio, tmp164
	cmp	r0, r7	@ tmp168, tmp164
	movlt	r7, r0	@ s32MinRatio, tmp168
	movge	r7, r7	@ s32MinRatio, tmp164
	movw	r0, #1079	@ tmp169,
	cmp	r9, r0	@ s32InMinWh, tmp169
	ble	.L10	@,
	ldr	r3, [r5, #16]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r3, #1	@ <variable>.bZmeFrmFmtIn,
	beq	.L34	@,
	cmp	r3, #0	@ <variable>.bZmeFrmFmtIn,
	bne	.L12	@,
	ldr	sl, [r5, #20]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	r2, #4096	@ s32MaxRatio,
	cmpeq	sl, #0	@, <variable>.bZmeFrmFmtOut,
	bne	.L12	@,
	cmp	r7, #4096	@ s32MinRatio,
	beq	.L13	@,
.L12:
	movw	lr, #2729	@ tmp198,
	cmp	r7, lr	@ s32MinRatio, tmp198
	ble	.L17	@,
	ldr	r0, [r5, #8]	@ <variable>.bDeiEnLum, <variable>.bDeiEnLum
	mov	r2, #3	@ movhi	@,
	mov	r1, #2	@ movhi	@,
	strh	r2, [r4, #16]	@ movhi	@, <variable>.u16LTIOverSwingThrsh
	strh	r1, [r4, #12]	@ movhi	@, <variable>.u16LTICoringThrsh
	strh	r2, [r4, #14]	@ movhi	@, <variable>.u16LTIUnderSwingThrsh
.L31:
	cmp	r0, #0	@ <variable>.bDeiEnLum,
	mov	r6, #127	@ tmp230,
	strb	r6, [r4, #18]	@ tmp230, <variable>.u8LTIMixingRatio
	movne	r0, #153	@ prephitmp.338,
	moveq	r0, #180	@ prephitmp.338,
	strh	r0, [r4, #10]	@ movhi	@ prephitmp.338, <variable>.s16LTICompsatRatio
.L9:
	sxth	r8, r8	@ D.14016, D.14016
	ldrh	r5, [r4, #14]	@ <variable>.u16LTIUnderSwingThrsh, <variable>.u16LTIUnderSwingThrsh
	cmp	r8, #30	@ D.14016,
	movge	r8, #30	@ s16DtiStrengthRatio,
	ldrh	r1, [r4, #16]	@ <variable>.u16LTIOverSwingThrsh, <variable>.u16LTIOverSwingThrsh
	bic	r9, r8, r8, asr #31	@ D.14086, s16DtiStrengthRatio
	movw	r3, #:lower16:-2004318071	@ tmp270,
	movt	r3, #:upper16:-2004318071	@ tmp270,
	mov	r2, #4	@ movhi	@,
	mul	r0, r9, r0	@ tmp267, D.14086, prephitmp.338
	mov	ip, r9, asl #2	@ tmp301, D.14086,
	mul	r8, r5, r9	@ tmp283, <variable>.u16LTIUnderSwingThrsh, D.14086
	strh	r2, [r4, #38]	@ movhi	@, <variable>.u16CTICoringThrsh
	mul	r1, r1, r9	@ tmp275, <variable>.u16LTIOverSwingThrsh, D.14086
	mov	r2, r9, asl #8	@ tmp294, D.14086,
	smull	r5, sl, r3, ip	@, tmp303, tmp270, tmp301
	mov	r6, ip, asr #31	@ tmp307, tmp301,
	smull	r9, r7, r3, r0	@, tmp269, tmp270, tmp267
	add	ip, sl, ip	@ tmp305, tmp303, tmp301
	smull	r9, sl, r3, r1	@, tmp277, tmp270, tmp275
	rsb	ip, r6, ip, asr #3	@, tmp302, tmp307, tmp305,
	smull	r9, r6, r3, r8	@, tmp285, tmp270, tmp283
	add	r9, r7, r0	@ tmp271, tmp269, tmp267
	smull	r7, r3, r3, r2	@, tmp296, tmp270, tmp294
	add	sl, sl, r1	@ tmp279, tmp277, tmp275
	add	r6, r6, r8	@ tmp287, tmp285, tmp283
	mov	r1, r1, asr #31	@ tmp281, tmp275,
	add	r3, r3, r2	@ tmp298, tmp296, tmp294
	mov	r5, r0, asr #31	@ tmp273, tmp267,
	mov	r8, r8, asr #31	@ tmp289, tmp283,
	mov	r2, r2, asr #31	@ tmp300, tmp294,
	rsb	r0, r5, r9, asr #3	@, tmp268, tmp273, tmp271,
	rsb	sl, r1, sl, asr #3	@, tmp276, tmp281, tmp279,
	rsb	r9, r2, r3, asr #3	@, tmp295, tmp300, tmp298,
	uxth	r1, ip	@ D.14109, tmp302
	rsb	r8, r8, r6, asr #3	@, tmp284, tmp289, tmp287,
	mov	r3, #127	@ tmp292,
	strh	r0, [r4, #10]	@ movhi	@ tmp268, <variable>.s16LTICompsatRatio
	strh	sl, [r4, #16]	@ movhi	@ tmp276, <variable>.u16LTIOverSwingThrsh
	strh	r1, [r4, #40]	@ movhi	@ D.14109, <variable>.u16CTIUnderSwingThrsh
	strh	r8, [r4, #14]	@ movhi	@ tmp284, <variable>.u16LTIUnderSwingThrsh
	strb	r3, [r4, #44]	@ tmp292, <variable>.u8CTIMixingRatio
	strh	r9, [r4, #36]	@ movhi	@ tmp295, <variable>.s16CTICompsatRatio
	strh	r1, [r4, #42]	@ movhi	@ D.14109, <variable>.u16CTIOverSwingThrsh
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L10:
	cmp	r9, #720	@ s32InMinWh,
	bge	.L35	@,
	cmp	r9, #480	@ s32InMinWh,
	bge	.L36	@,
.L21:
	ldr	r0, [r5, #8]	@ <variable>.bDeiEnLum, <variable>.bDeiEnLum
	mov	ip, #6	@ movhi	@,
	mov	lr, #4	@ movhi	@,
	strh	ip, [r4, #16]	@ movhi	@, <variable>.u16LTIOverSwingThrsh
	strh	lr, [r4, #12]	@ movhi	@, <variable>.u16LTICoringThrsh
	strh	ip, [r4, #14]	@ movhi	@, <variable>.u16LTIUnderSwingThrsh
.L30:
	cmp	r0, #0	@ <variable>.bDeiEnLum,
	mov	r2, #127	@ tmp259,
	strb	r2, [r4, #18]	@ tmp259, <variable>.u8LTIMixingRatio
	movne	r0, #128	@ prephitmp.338,
	moveq	r0, #153	@ prephitmp.338,
	strh	r0, [r4, #10]	@ movhi	@ prephitmp.338, <variable>.s16LTICompsatRatio
	b	.L9	@
.L35:
	ldr	r3, [r5, #16]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
.L17:
	cmp	r3, #1	@ <variable>.bZmeFrmFmtIn,
	bne	.L21	@,
.L14:
	cmp	r2, #4096	@ s32MaxRatio,
	movlt	r3, #0	@, prephitmp.337
	movge	r3, #1	@, prephitmp.337
	cmp	r7, #3072	@ s32MinRatio,
	cmpge	r2, #4096	@, s32MaxRatio,
	bge	.L37	@,
.L22:
	cmp	r7, #3840	@ s32MinRatio,
	movlt	r9, #0	@, tmp242
	andge	r9, r3, #1	@,, tmp242, prephitmp.337
	cmp	r9, #0	@ tmp242,
	beq	.L21	@,
	ldr	r0, [r5, #8]	@ <variable>.bDeiEnLum, <variable>.bDeiEnLum
	mov	sl, #6	@ movhi	@,
	mov	r5, #4	@ movhi	@,
	strh	sl, [r4, #16]	@ movhi	@, <variable>.u16LTIOverSwingThrsh
	strh	r5, [r4, #12]	@ movhi	@, <variable>.u16LTICoringThrsh
	strh	sl, [r4, #14]	@ movhi	@, <variable>.u16LTIUnderSwingThrsh
	b	.L30	@
.L34:
	ldr	r6, [r5, #20]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	r2, #4096	@ s32MaxRatio,
	cmpge	r6, #1	@, <variable>.bZmeFrmFmtOut,
	bne	.L12	@,
	movw	r9, #2729	@ tmp179,
	cmp	r7, r9	@ s32MinRatio, tmp179
	ble	.L14	@,
.L13:
	ldr	r0, [r5, #8]	@ <variable>.bDeiEnLum, <variable>.bDeiEnLum
	mov	ip, #2	@ movhi	@,
	mov	r5, #4	@ movhi	@,
	strh	ip, [r4, #12]	@ movhi	@, <variable>.u16LTICoringThrsh
	strh	r5, [r4, #16]	@ movhi	@, <variable>.u16LTIOverSwingThrsh
	strh	r5, [r4, #14]	@ movhi	@, <variable>.u16LTIUnderSwingThrsh
	b	.L30	@
.L33:
	mov	r3, #0	@ tmp159,
	ldrsh	r0, [r4, #10]	@ prephitmp.338, <variable>.s16LTICompsatRatio
	str	r3, [r4, #28]	@ tmp159, <variable>.bEnCTI
	str	r3, [r4, #0]	@ tmp159, <variable>.bEnLTI
	b	.L9	@
.L37:
	ldr	r0, [r5, #8]	@ <variable>.bDeiEnLum, <variable>.bDeiEnLum
	mov	r3, #4	@ movhi	@,
	mov	r7, #2	@ movhi	@,
	strh	r3, [r4, #16]	@ movhi	@, <variable>.u16LTIOverSwingThrsh
	strh	r7, [r4, #12]	@ movhi	@, <variable>.u16LTICoringThrsh
	strh	r3, [r4, #14]	@ movhi	@, <variable>.u16LTIUnderSwingThrsh
	b	.L31	@
.L36:
	ldr	r0, [r5, #16]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r0, #1	@ <variable>.bZmeFrmFmtIn,
	bne	.L21	@,
	cmp	r2, #4096	@ s32MaxRatio,
	movlt	r3, #0	@, prephitmp.337
	movge	r3, #1	@, prephitmp.337
	b	.L22	@
	.fnend
	.size	ALG_VtiSet, .-ALG_VtiSet
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
