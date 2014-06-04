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
	.file	"vpss_alg_csc.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_csc)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_csc.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_csc.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_csc.o -O2 -Wall -Wundef
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
	.global	CalcCscCoef_RGBtoYCbCr
	.type	CalcCscCoef_RGBtoYCbCr, %function
CalcCscCoef_RGBtoYCbCr:
	.fnstart
.LFB1246:
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
	ldr	r9, [r0, #32]	@ <variable>.u32Kr, <variable>.u32Kr
	ldr	r4, [r0, #20]	@ <variable>.u32Contrst, <variable>.u32Contrst
	movw	r5, #:lower16:1374389535	@ tmp356,
	ldr	r8, [r0, #36]	@ <variable>.u32Kg, <variable>.u32Kg
	movt	r5, #:upper16:1374389535	@ tmp356,
	mov	r6, r9, asl #1	@, <variable>.u32Kr,
	ldr	sl, [r0, #40]	@ <variable>.u32Kb, <variable>.u32Kb
	mov	r4, r4, asl #1	@ s32ContrstAdj, <variable>.u32Contrst,
	movw	ip, #:lower16:1759218605	@ tmp357,
	mov	r3, r8, asl #1	@, <variable>.u32Kg,
	movt	ip, #:upper16:1759218605	@ tmp357,
	mul	r8, r6, r4	@ tmp158,, s32ContrstAdj
	mov	r7, sl, asl #1	@, <variable>.u32Kb,
	str	r7, [fp, #-52]	@, %sfp
	mul	r7, r3, r4	@ tmp166,, s32ContrstAdj
	ldr	sl, [r0, #24]	@ <variable>.u32Hue, <variable>.u32Hue
	str	r6, [fp, #-60]	@, %sfp
	ldr	r9, [r1, #0]	@ <variable>.s32C00, <variable>.s32C00
	str	r3, [fp, #-56]	@, %sfp
	rsb	sl, sl, sl, asl #4	@, tmp151, <variable>.u32Hue, <variable>.u32Hue,
	ldr	r3, [fp, #-52]	@, %sfp
	mul	r8, r9, r8	@ tmp159, <variable>.s32C00, tmp158
	ldr	r9, [r1, #8]	@, <variable>.s32C02
	mul	r6, r3, r4	@ tmp174,, s32ContrstAdj
	mov	sl, sl, asl #2	@ tmp152, tmp151,
	ldr	r3, [r1, #4]	@, <variable>.s32C01
	mul	r7, r3, r7	@ tmp167,, tmp166
	movw	r3, #:lower16:.LANCHOR0	@ tmp182,
	mul	r6, r9, r6	@ tmp175,, tmp174
	movt	r3, #:upper16:.LANCHOR0	@ tmp182,
	umull	r9, r5, r5, sl	@, tmp153, tmp356, tmp152
	smull	r9, sl, ip, r8	@,, tmp357, tmp159
	mov	r8, r8, asr #31	@ tmp164, tmp159,
	mov	r5, r5, lsr #5	@ u32Hue, tmp153,
	str	sl, [fp, #-64]	@, %sfp
	smull	r9, sl, ip, r6	@,, tmp357, tmp175
	mov	r6, r6, asr #31	@ tmp180, tmp175,
	ldr	r9, [fp, #-64]	@, %sfp
	rsb	r8, r8, r9, asr #12	@, tmp165, tmp164,,
	str	sl, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	smull	sl, ip, ip, r7	@, tmp169, tmp357, tmp167
	rsb	r6, r6, r9, asr #12	@, tmp181, tmp180,,
	ldr	r9, [r0, #28]	@ <variable>.u32Satur, <variable>.u32Satur
	add	sl, r3, r5, asl #2	@, tmp194, tmp182, u32Hue,
	mov	r7, r7, asr #31	@ tmp172, tmp167,
	str	r8, [r2, #0]	@ tmp165, <variable>.s32C00
	str	r6, [r2, #8]	@ tmp181, <variable>.s32C02
	movw	r0, #:lower16:274877907	@ tmp358,
	mov	r9, r9, asl #1	@ s32SatAdj, <variable>.u32Satur,
	movt	r0, #:upper16:274877907	@ tmp358,
	rsb	r8, r7, ip, asr #12	@, tmp173, tmp172, tmp169,
	ldr	r7, [r1, #12]	@ <variable>.s32C10, <variable>.s32C10
	mul	r4, r4, r9	@ D.23721, s32ContrstAdj, s32SatAdj
	str	r8, [r2, #4]	@ tmp173, <variable>.s32C01
	ldr	r9, [r1, #24]	@, <variable>.s32C20
	movw	ip, #:lower16:1125899907	@ tmp359,
	ldr	r6, [r3, r5, asl #2]	@ tmp184, COS_TABLE
	movt	ip, #:upper16:1125899907	@ tmp359,
	ldr	r8, [sl, #244]	@ tmp197, SIN_TABLE
	mul	r7, r7, r6	@ tmp183, <variable>.s32C10, tmp184
	mul	r6, r9, r8	@ tmp196,, tmp197
	ldr	r9, [fp, #-60]	@, %sfp
	mul	r8, r9, r4	@,, D.23721
	str	r8, [fp, #-60]	@, %sfp
	ldr	r9, [r1, #32]	@, <variable>.s32C22
	str	r9, [fp, #-64]	@, %sfp
	smull	r9, r8, r0, r7	@,, tmp358, tmp183
	mov	r7, r7, asr #31	@ tmp190, tmp183,
	str	r8, [fp, #-48]	@, %sfp
	smull	r8, r9, r0, r6	@, tmp200, tmp358, tmp196
	mov	r6, r6, asr #31	@ tmp203, tmp196,
	ldr	r8, [fp, #-56]	@, %sfp
	mul	r8, r8, r4	@,, D.23721
	str	r8, [fp, #-56]	@, %sfp
	ldr	r8, [fp, #-48]	@, %sfp
	rsb	r7, r7, r8, asr #6	@, tmp186, tmp190,,
	ldr	r8, [fp, #-52]	@, %sfp
	mul	r4, r8, r4	@,, D.23721
	str	r4, [fp, #-52]	@, %sfp
	rsb	r4, r6, r9, asr #6	@, tmp199, tmp203, tmp200,
	ldr	r6, [fp, #-60]	@, %sfp
	add	r8, r7, r4	@ tmp204, tmp186, tmp199
	mul	r4, r6, r8	@ tmp205,, tmp204
	ldr	r8, [r1, #16]	@, <variable>.s32C11
	smull	r6, r9, ip, r4	@, tmp206, tmp359, tmp205
	mov	r6, r4, asr #31	@ tmp209, tmp205,
	rsb	r7, r6, r9, asr #18	@, tmp210, tmp209, tmp206,
	ldr	r9, [r1, #28]	@, <variable>.s32C21
	str	r7, [r2, #12]	@ tmp210, <variable>.s32C10
	ldr	r4, [r3, r5, asl #2]	@ tmp213, COS_TABLE
	ldr	r6, [sl, #244]	@ tmp226, SIN_TABLE
	mul	r7, r8, r4	@ tmp212,, tmp213
	mul	r4, r9, r6	@ tmp225,, tmp226
	smull	r6, r8, r0, r7	@, tmp216, tmp358, tmp212
	mov	r7, r7, asr #31	@ tmp219, tmp212,
	smull	r9, r6, r0, r4	@, tmp229, tmp358, tmp225
	mov	r4, r4, asr #31	@ tmp232, tmp225,
	rsb	r9, r7, r8, asr #6	@, tmp215, tmp219, tmp216,
	rsb	r8, r4, r6, asr #6	@, tmp228, tmp232, tmp229,
	ldr	r4, [fp, #-56]	@, %sfp
	add	r7, r9, r8	@ tmp233, tmp215, tmp228
	mul	r8, r4, r7	@ tmp234,, tmp233
	smull	r6, r9, ip, r8	@, tmp235, tmp359, tmp234
	mov	r6, r8, asr #31	@ tmp238, tmp234,
	ldr	r8, [r1, #20]	@, <variable>.s32C12
	rsb	r7, r6, r9, asr #18	@, tmp239, tmp238, tmp235,
	ldr	r9, [fp, #-64]	@, %sfp
	str	r7, [r2, #16]	@ tmp239, <variable>.s32C11
	ldr	r4, [r3, r5, asl #2]	@ tmp242, COS_TABLE
	ldr	r6, [sl, #244]	@ tmp255, SIN_TABLE
	mul	r7, r8, r4	@ tmp241,, tmp242
	mul	r4, r9, r6	@ tmp254,, tmp255
	smull	r6, r8, r0, r7	@, tmp245, tmp358, tmp241
	mov	r7, r7, asr #31	@ tmp248, tmp241,
	smull	r9, r6, r0, r4	@, tmp258, tmp358, tmp254
	mov	r4, r4, asr #31	@ tmp261, tmp254,
	rsb	r9, r7, r8, asr #6	@, tmp244, tmp248, tmp245,
	rsb	r8, r4, r6, asr #6	@, tmp257, tmp261, tmp258,
	ldr	r4, [fp, #-52]	@, %sfp
	add	r7, r9, r8	@ tmp262, tmp244, tmp257
	mul	r8, r4, r7	@ tmp263,, tmp262
	smull	r6, r9, ip, r8	@, tmp264, tmp359, tmp263
	mov	r6, r8, asr #31	@ tmp267, tmp263,
	ldr	r8, [r1, #24]	@, <variable>.s32C20
	rsb	r7, r6, r9, asr #18	@, tmp268, tmp267, tmp264,
	ldr	r9, [r1, #12]	@, <variable>.s32C10
	str	r7, [r2, #20]	@ tmp268, <variable>.s32C12
	ldr	r4, [r3, r5, asl #2]	@ tmp271, COS_TABLE
	ldr	r6, [sl, #244]	@ tmp284, SIN_TABLE
	mul	r7, r8, r4	@ tmp270,, tmp271
	mul	r4, r9, r6	@ tmp283,, tmp284
	smull	r6, r8, r0, r7	@, tmp274, tmp358, tmp270
	mov	r7, r7, asr #31	@ tmp277, tmp270,
	smull	r9, r6, r0, r4	@, tmp287, tmp358, tmp283
	mov	r4, r4, asr #31	@ tmp290, tmp283,
	rsb	r7, r7, r8, asr #6	@, tmp273, tmp277, tmp274,
	rsb	r9, r4, r6, asr #6	@, tmp286, tmp290, tmp287,
	rsb	r8, r9, r7	@ tmp291, tmp286, tmp273
	ldr	r7, [fp, #-60]	@, %sfp
	mul	r4, r7, r8	@ tmp292,, tmp291
	ldr	r8, [r1, #28]	@, <variable>.s32C21
	smull	r7, r9, ip, r4	@, tmp293, tmp359, tmp292
	mov	r6, r4, asr #31	@ tmp296, tmp292,
	rsb	r7, r6, r9, asr #18	@, tmp297, tmp296, tmp293,
	ldr	r9, [r1, #16]	@, <variable>.s32C11
	str	r7, [r2, #24]	@ tmp297, <variable>.s32C20
	ldr	r4, [r3, r5, asl #2]	@ tmp300, COS_TABLE
	ldr	r6, [sl, #244]	@ tmp313, SIN_TABLE
	mul	r7, r8, r4	@ tmp299,, tmp300
	mul	r4, r9, r6	@ tmp312,, tmp313
	smull	r6, r8, r0, r7	@, tmp303, tmp358, tmp299
	mov	r7, r7, asr #31	@ tmp306, tmp299,
	smull	r9, r6, r0, r4	@, tmp316, tmp358, tmp312
	mov	r4, r4, asr #31	@ tmp319, tmp312,
	rsb	r7, r7, r8, asr #6	@, tmp302, tmp306, tmp303,
	rsb	r9, r4, r6, asr #6	@, tmp315, tmp319, tmp316,
	ldr	r6, [fp, #-56]	@, %sfp
	rsb	r4, r9, r7	@ tmp320, tmp315, tmp302
	mul	r8, r6, r4	@ tmp321,, tmp320
	smull	r7, r9, ip, r8	@, tmp322, tmp359, tmp321
	mov	r4, r8, asr #31	@ tmp325, tmp321,
	rsb	r8, r4, r9, asr #18	@, tmp326, tmp325, tmp322,
	str	r8, [r2, #28]	@ tmp326, <variable>.s32C21
	ldr	r8, [fp, #-64]	@, %sfp
	ldr	r4, [r3, r5, asl #2]	@ tmp329, COS_TABLE
	ldr	r9, [sl, #244]	@ tmp342, SIN_TABLE
	ldr	r3, [r1, #20]	@ <variable>.s32C12, <variable>.s32C12
	mul	sl, r8, r4	@ tmp328,, tmp329
	mul	r5, r3, r9	@ tmp341, <variable>.s32C12, tmp342
	mov	r1, sl, asr #31	@ tmp335, tmp328,
	smull	r9, r4, r0, sl	@, tmp332, tmp358, tmp328
	mov	r3, r5, asr #31	@ tmp348, tmp341,
	smull	sl, r0, r0, r5	@, tmp345, tmp358, tmp341
	rsb	r5, r1, r4, asr #6	@, tmp331, tmp335, tmp332,
	rsb	r3, r3, r0, asr #6	@, tmp344, tmp348, tmp345,
	rsb	r1, r3, r5	@ tmp349, tmp344, tmp331
	ldr	r3, [fp, #-52]	@, %sfp
	mul	r0, r3, r1	@ tmp350,, tmp349
	smull	r5, ip, ip, r0	@, tmp351, tmp359, tmp350
	mov	r4, r0, asr #31	@ tmp354, tmp350,
	rsb	r4, r4, ip, asr #18	@, tmp355, tmp354, tmp351,
	str	r4, [r2, #32]	@ tmp355, <variable>.s32C22
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	CalcCscCoef_RGBtoYCbCr, .-CalcCscCoef_RGBtoYCbCr
	.align	2
	.global	CalcCscCoef_YCbCrtoRGB
	.type	CalcCscCoef_YCbCrtoRGB, %function
CalcCscCoef_YCbCrtoRGB:
	.fnstart
.LFB1247:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, [r0, #32]	@ <variable>.u32Kr, <variable>.u32Kr
	ldr	r4, [r0, #20]	@ <variable>.u32Contrst, <variable>.u32Contrst
	movw	ip, #:lower16:1374389535	@ tmp358,
	ldr	r6, [r0, #24]	@ <variable>.u32Hue, <variable>.u32Hue
	movt	ip, #:upper16:1374389535	@ tmp358,
	mov	r8, r5, asl #1	@ tmp155, <variable>.u32Kr,
	ldr	r7, [r0, #28]	@ <variable>.u32Satur, <variable>.u32Satur
	mov	r4, r4, asl #1	@ s32ContrstAdj, <variable>.u32Contrst,
	ldr	r5, [r1, #0]	@ <variable>.s32C00, <variable>.s32C00
	rsb	r9, r6, r6, asl #4	@, tmp149, <variable>.u32Hue, <variable>.u32Hue,
	movw	r3, #:lower16:1759218605	@ tmp359,
	mul	r8, r4, r8	@, s32ContrstAdj, tmp155
	mov	r6, r9, asl #2	@ tmp150, tmp149,
	mov	sl, r7, asl #1	@, <variable>.u32Satur,
	str	sl, [fp, #-56]	@, %sfp
	umull	r7, r6, ip, r6	@, tmp151, tmp358, tmp150
	movt	r3, #:upper16:1759218605	@ tmp359,
	str	r8, [fp, #-80]	@, %sfp
	movw	ip, #:lower16:.LANCHOR0	@ tmp164,
	ldr	r7, [r1, #8]	@, <variable>.s32C02
	movt	ip, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r9, [fp, #-56]	@, %sfp
	mul	r5, r5, r8	@ tmp157, <variable>.s32C00,
	mov	r6, r6, lsr #5	@ u32Hue, tmp151,
	mul	sl, r7, r9	@,,
	str	sl, [fp, #-68]	@, %sfp
	ldr	r8, [r0, #36]	@, <variable>.u32Kg
	str	r8, [fp, #-48]	@, %sfp
	add	r8, ip, r6, asl #2	@, tmp178, tmp164, u32Hue,
	ldr	r7, [r0, #40]	@, <variable>.u32Kb
	movw	r0, #:lower16:274877907	@ tmp360,
	ldr	r9, [fp, #-48]	@, %sfp
	movt	r0, #:upper16:274877907	@ tmp360,
	str	r7, [fp, #-52]	@, %sfp
	smull	r7, sl, r3, r5	@, tmp159, tmp359, tmp157
	mov	r9, r9, asl #1	@,,
	str	r9, [fp, #-64]	@, %sfp
	movw	r9, #:lower16:1125899907	@,
	movt	r9, #:upper16:1125899907	@,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	mov	r5, r5, asr #31	@ tmp162, tmp157,
	movw	r7, #:lower16:351843721	@ tmp361,
	movt	r7, #:upper16:351843721	@ tmp361,
	rsb	r5, r5, sl, asr #12	@, tmp163, tmp162, tmp159,
	str	r5, [r2, #0]	@ tmp163, <variable>.s32C00
	mov	r5, r9, asl #1	@,,
	ldr	r9, [fp, #-64]	@, %sfp
	str	r5, [fp, #-60]	@, %sfp
	ldr	sl, [ip, r6, asl #2]	@ tmp166, COS_TABLE
	mul	r5, r9, r4	@,, s32ContrstAdj
	str	r5, [fp, #-52]	@, %sfp
	ldr	r9, [r1, #4]	@, <variable>.s32C01
	ldr	r5, [fp, #-68]	@, %sfp
	mul	sl, r9, sl	@ tmp165,, tmp166
	ldr	r9, [r8, #244]	@, SIN_TABLE
	mul	r9, r9, r5	@,,
	ldr	r5, [fp, #-52]	@, %sfp
	str	r9, [fp, #-72]	@, %sfp
	ldr	r9, [r1, #12]	@, <variable>.s32C10
	mul	r9, r9, r5	@,,
	str	r9, [fp, #-84]	@, %sfp
	smull	r5, r9, r0, sl	@,, tmp360, tmp165
	mov	sl, sl, asr #31	@ tmp172, tmp165,
	str	r9, [fp, #-52]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	smull	r5, r9, r7, r9	@,, tmp361,
	ldr	r5, [fp, #-72]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	mov	r9, r5, asr #31	@,,
	str	r9, [fp, #-76]	@, %sfp
	ldr	r5, [fp, #-84]	@, %sfp
	smull	r9, r5, r3, r5	@,, tmp359,
	str	r5, [fp, #-72]	@, %sfp
	ldr	r5, [fp, #-52]	@, %sfp
	rsb	r9, sl, r5, asr #6	@,, tmp172,,
	ldr	sl, [fp, #-84]	@, %sfp
	str	r9, [fp, #-88]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-68]	@, %sfp
	str	r9, [fp, #-84]	@, %sfp
	ldr	r5, [r1, #32]	@, <variable>.s32C22
	ldr	r9, [fp, #-76]	@, %sfp
	str	r5, [fp, #-52]	@, %sfp
	rsb	r5, r9, sl, asr #13	@, tmp182,,,
	ldr	r9, [fp, #-88]	@, %sfp
	rsb	sl, r5, r9	@ tmp187, tmp182,
	ldr	r5, [fp, #-56]	@, %sfp
	mul	r9, r4, r5	@, s32ContrstAdj,
	ldr	r5, [fp, #-72]	@, %sfp
	str	r9, [fp, #-76]	@, %sfp
	ldr	r9, [fp, #-84]	@, %sfp
	rsb	r9, r9, r5, asr #12	@,,,,
	ldr	r5, [fp, #-60]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	ldr	r9, [fp, #-80]	@, %sfp
	mul	sl, r9, sl	@ tmp188,, tmp187
	mul	r9, r4, r5	@, s32ContrstAdj,
	ldr	r5, [fp, #-64]	@, %sfp
	ldr	r4, [fp, #-76]	@, %sfp
	str	r9, [fp, #-60]	@, %sfp
	mul	r9, r5, r4	@,,
	str	r9, [fp, #-64]	@, %sfp
	smull	r9, r5, r3, sl	@,, tmp359, tmp188
	ldr	r9, [fp, #-60]	@, %sfp
	str	r5, [fp, #-72]	@, %sfp
	mov	r5, sl, asr #31	@ tmp192, tmp188,
	ldr	r4, [r1, #24]	@, <variable>.s32C20
	mul	sl, r4, r9	@ tmp291,,
	ldr	r9, [fp, #-72]	@, %sfp
	rsb	r4, r5, r9, asr #12	@, tmp193, tmp192,,
	str	r4, [r2, #4]	@ tmp193, <variable>.s32C01
	ldr	r4, [ip, r6, asl #2]	@, COS_TABLE
	mov	r9, sl, asr #31	@, tmp291,
	str	r9, [fp, #-72]	@, %sfp
	ldr	r9, [r1, #8]	@, <variable>.s32C02
	ldr	r5, [r8, #244]	@ tmp210, SIN_TABLE
	mul	r9, r9, r4	@,,
	str	r9, [fp, #-76]	@, %sfp
	ldr	r9, [fp, #-68]	@, %sfp
	str	r9, [r2, #12]	@, <variable>.s32C10
	ldr	r4, [r1, #4]	@, <variable>.s32C01
	mul	r5, r4, r5	@ tmp209,, tmp210
	smull	r4, r9, r3, sl	@,, tmp359, tmp291
	ldr	sl, [fp, #-76]	@, %sfp
	str	r9, [fp, #-84]	@, %sfp
	ldr	r9, [fp, #-56]	@, %sfp
	mul	r4, r9, sl	@ tmp198,,
	mov	r9, r5, asr #31	@, tmp209,
	smull	sl, r5, r0, r5	@, tmp213, tmp360, tmp209
	ldr	sl, [fp, #-84]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	rsb	r9, r9, sl, asr #12	@,,,,
	str	r9, [fp, #-76]	@, %sfp
	smull	r9, sl, r7, r4	@, tmp200, tmp361, tmp198
	mov	r4, r4, asr #31	@ tmp203, tmp198,
	ldr	r9, [fp, #-68]	@, %sfp
	rsb	r5, r9, r5, asr #6	@, tmp212,, tmp213,
	rsb	r9, r4, sl, asr #13	@, tmp199, tmp203, tmp200,
	add	r4, r9, r5	@ tmp217, tmp199, tmp212
	ldr	r5, [fp, #-80]	@, %sfp
	mul	r9, r5, r4	@ tmp218,, tmp217
	smull	r5, sl, r3, r9	@, tmp219, tmp359, tmp218
	mov	r5, r9, asr #31	@ tmp222, tmp218,
	ldr	r9, [r1, #16]	@, <variable>.s32C11
	rsb	r4, r5, sl, asr #12	@, tmp223, tmp222, tmp219,
	str	r4, [r2, #8]	@ tmp223, <variable>.s32C02
	ldr	r5, [ip, r6, asl #2]	@ tmp235, COS_TABLE
	ldr	sl, [r1, #20]	@, <variable>.s32C12
	ldr	r4, [r8, #244]	@ tmp248, SIN_TABLE
	mul	r5, r9, r5	@ tmp234,, tmp235
	mul	r4, sl, r4	@ tmp247,, tmp248
	smull	sl, r9, r0, r5	@,, tmp360, tmp234
	mov	r5, r5, asr #31	@ tmp241, tmp234,
	str	r9, [fp, #-68]	@, %sfp
	smull	sl, r9, r0, r4	@, tmp251, tmp360, tmp247
	mov	r4, r4, asr #31	@ tmp254, tmp247,
	ldr	sl, [fp, #-68]	@, %sfp
	rsb	r5, r5, sl, asr #6	@, tmp237, tmp241,,
	rsb	sl, r4, r9, asr #6	@, tmp250, tmp254, tmp251,
	ldr	r4, [fp, #-64]	@, %sfp
	rsb	r5, sl, r5	@ tmp255, tmp250, tmp237
	ldr	r9, [fp, #-48]	@, %sfp
	mul	sl, r4, r5	@ tmp256,, tmp255
	smull	r9, r4, r9, sl	@, tmp257,, tmp256
	mov	r5, sl, asr #31	@ tmp260, tmp256,
	ldr	r9, [r1, #20]	@, <variable>.s32C12
	rsb	sl, r5, r4, asr #18	@, tmp261, tmp260, tmp257,
	str	sl, [r2, #16]	@ tmp261, <variable>.s32C11
	ldr	r5, [ip, r6, asl #2]	@ tmp264, COS_TABLE
	ldr	r4, [r8, #244]	@ tmp277, SIN_TABLE
	ldr	sl, [r1, #16]	@ <variable>.s32C11, <variable>.s32C11
	mul	r5, r9, r5	@ tmp263,, tmp264
	ldr	r9, [fp, #-76]	@, %sfp
	mul	r4, sl, r4	@ tmp276, <variable>.s32C11, tmp277
	str	r9, [r2, #24]	@, <variable>.s32C20
	smull	r9, sl, r0, r5	@,, tmp360, tmp263
	mov	r5, r5, asr #31	@ tmp270, tmp263,
	str	sl, [fp, #-68]	@, %sfp
	smull	sl, r9, r0, r4	@, tmp280, tmp360, tmp276
	mov	r4, r4, asr #31	@ tmp283, tmp276,
	ldr	sl, [fp, #-68]	@, %sfp
	rsb	r5, r5, sl, asr #6	@, tmp266, tmp270,,
	ldr	sl, [fp, #-64]	@, %sfp
	rsb	r4, r4, r9, asr #6	@, tmp279, tmp283, tmp280,
	add	r9, r5, r4	@ tmp284, tmp266, tmp279
	ldr	r5, [fp, #-48]	@, %sfp
	mul	r4, sl, r9	@ tmp285,, tmp284
	smull	r9, sl, r5, r4	@, tmp286,, tmp285
	mov	r9, r4, asr #31	@ tmp289, tmp285,
	rsb	r5, r9, sl, asr #18	@, tmp290, tmp289, tmp286,
	ldr	sl, [r1, #28]	@, <variable>.s32C21
	str	r5, [r2, #20]	@ tmp290, <variable>.s32C12
	ldr	r9, [fp, #-52]	@, %sfp
	ldr	r4, [ip, r6, asl #2]	@ tmp300, COS_TABLE
	ldr	r5, [r8, #244]	@ tmp314, SIN_TABLE
	mul	r4, sl, r4	@ tmp299,, tmp300
	ldr	sl, [fp, #-56]	@, %sfp
	mul	r5, r9, r5	@ tmp313,, tmp314
	mul	r4, sl, r4	@ tmp302,, tmp299
	smull	sl, r9, r0, r5	@,, tmp360, tmp313
	mov	r5, r5, asr #31	@ tmp320, tmp313,
	str	r9, [fp, #-48]	@, %sfp
	smull	sl, r9, r7, r4	@, tmp304, tmp361, tmp302
	mov	r4, r4, asr #31	@ tmp307, tmp302,
	ldr	sl, [fp, #-48]	@, %sfp
	rsb	r5, r5, sl, asr #6	@, tmp316, tmp320,,
	rsb	sl, r4, r9, asr #13	@, tmp303, tmp307, tmp304,
	ldr	r4, [fp, #-60]	@, %sfp
	rsb	r9, r5, sl	@ tmp321, tmp316, tmp303
	mul	sl, r4, r9	@ tmp322,, tmp321
	smull	r9, r4, r3, sl	@, tmp323, tmp359, tmp322
	mov	r5, sl, asr #31	@ tmp326, tmp322,
	rsb	sl, r5, r4, asr #12	@, tmp327, tmp326, tmp323,
	str	sl, [r2, #28]	@ tmp327, <variable>.s32C21
	ldr	sl, [fp, #-56]	@, %sfp
	ldr	r4, [r1, #28]	@ <variable>.s32C21, <variable>.s32C21
	ldr	ip, [ip, r6, asl #2]	@ tmp344, COS_TABLE
	ldr	r5, [r8, #244]	@ tmp336, SIN_TABLE
	mul	r1, r4, sl	@ tmp328, <variable>.s32C21,
	ldr	r4, [fp, #-52]	@, %sfp
	mul	r6, r4, ip	@ tmp343,, tmp344
	mul	r8, r5, r1	@ tmp335, tmp336, tmp328
	mov	ip, r6, asr #31	@ tmp350, tmp343,
	smull	r5, r0, r0, r6	@, tmp347, tmp360, tmp343
	mov	r1, r8, asr #31	@ tmp341, tmp335,
	smull	r6, r7, r7, r8	@, tmp338, tmp361, tmp335
	rsb	r4, ip, r0, asr #6	@, tmp346, tmp350, tmp347,
	rsb	r8, r1, r7, asr #13	@, tmp337, tmp341, tmp338,
	ldr	r7, [fp, #-60]	@, %sfp
	rsb	r1, r4, r8	@ tmp351, tmp346, tmp337
	mul	r0, r7, r1	@ tmp352,, tmp351
	smull	r8, r3, r3, r0	@, tmp353, tmp359, tmp352
	mov	r4, r0, asr #31	@ tmp356, tmp352,
	rsb	r4, r4, r3, asr #12	@, tmp357, tmp356, tmp353,
	str	r4, [r2, #32]	@ tmp357, <variable>.s32C22
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	CalcCscCoef_YCbCrtoRGB, .-CalcCscCoef_YCbCrtoRGB
	.align	2
	.global	CalcCscCoef_YCbCrtoYCbCr
	.type	CalcCscCoef_YCbCrtoYCbCr, %function
CalcCscCoef_YCbCrtoYCbCr:
	.fnstart
.LFB1249:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r4, [r0, #20]	@ <variable>.u32Contrst, <variable>.u32Contrst
	ldr	r8, [r1, #0]	@ <variable>.s32C00, <variable>.s32C00
	movw	r3, #:lower16:1374389535	@ tmp544,
	ldr	r9, [r0, #24]	@ <variable>.u32Hue, <variable>.u32Hue
	movt	r3, #:upper16:1374389535	@ tmp544,
	mov	r4, r4, asl #1	@ s32ContrstAdj, <variable>.u32Contrst,
	ldr	r6, [r1, #4]	@ <variable>.s32C01, <variable>.s32C01
	ldr	r5, [r1, #8]	@ <variable>.s32C02, <variable>.s32C02
	movw	ip, #:lower16:.LANCHOR0	@ tmp188,
	mul	r8, r8, r4	@ tmp170, <variable>.s32C00, s32ContrstAdj
	rsb	sl, r9, r9, asl #4	@, tmp166, <variable>.u32Hue, <variable>.u32Hue,
	mul	r6, r6, r4	@ tmp176, <variable>.s32C01, s32ContrstAdj
	mov	r7, sl, asl #2	@ tmp167, tmp166,
	mul	r5, r5, r4	@ tmp182, <variable>.s32C02, s32ContrstAdj
	movt	ip, #:upper16:.LANCHOR0	@ tmp188,
	umull	r9, r7, r3, r7	@, tmp168, tmp544, tmp167
	mov	r9, r8, asr #31	@, tmp170,
	str	r9, [fp, #-52]	@, %sfp
	smull	sl, r9, r3, r8	@, tmp172, tmp544, tmp170
	mov	sl, r6, asr #31	@, tmp176,
	str	sl, [fp, #-60]	@, %sfp
	mov	r7, r7, lsr #5	@ u32Hue, tmp168,
	smull	sl, r6, r3, r6	@, tmp178, tmp544, tmp176
	smull	sl, r8, r3, r5	@,, tmp544, tmp182
	mov	sl, r5, asr #31	@ tmp187, tmp182,
	ldr	r5, [fp, #-52]	@, %sfp
	rsb	r9, r5, r9, asr #5	@,,, tmp172,
	str	r9, [fp, #-80]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	str	r8, [fp, #-48]	@, %sfp
	add	r8, ip, r7, asl #2	@, tmp200, tmp188, u32Hue,
	rsb	r6, r9, r6, asr #5	@,,, tmp178,
	str	r6, [fp, #-92]	@, %sfp
	ldr	r9, [fp, #-92]	@, %sfp
	ldr	r6, [r0, #28]	@ <variable>.u32Satur, <variable>.u32Satur
	ldr	r5, [fp, #-80]	@, %sfp
	str	r9, [r2, #4]	@, <variable>.s32C01
	ldr	r9, [fp, #-48]	@, %sfp
	str	r5, [r2, #0]	@, <variable>.s32C00
	movw	r5, #:lower16:274877907	@ tmp545,
	movt	r5, #:upper16:274877907	@ tmp545,
	rsb	sl, sl, r9, asr #5	@,, tmp187,,
	str	sl, [fp, #-88]	@, %sfp
	str	sl, [r2, #8]	@, <variable>.s32C02
	mov	r9, r6, asl #1	@ s32SatAdj, <variable>.u32Satur,
	ldr	sl, [r1, #24]	@, <variable>.s32C20
	movw	r6, #:lower16:1759218605	@ tmp546,
	mul	r4, r4, r9	@ D.24069, s32ContrstAdj, s32SatAdj
	ldr	r9, [ip, r7, asl #2]	@, COS_TABLE
	str	sl, [fp, #-52]	@, %sfp
	movt	r6, #:upper16:1759218605	@ tmp546,
	ldr	sl, [r1, #28]	@, <variable>.s32C21
	str	sl, [fp, #-60]	@, %sfp
	ldr	sl, [r1, #12]	@, <variable>.s32C10
	mul	sl, sl, r9	@,,
	ldr	r9, [r8, #244]	@, SIN_TABLE
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-52]	@, %sfp
	mul	sl, sl, r9	@,,
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [fp, #-72]	@, %sfp
	ldr	sl, [r1, #32]	@, <variable>.s32C22
	str	sl, [fp, #-64]	@, %sfp
	smull	sl, r9, r5, r9	@,, tmp545,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [fp, #-56]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-72]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	smull	r9, sl, r5, sl	@,, tmp545,
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-72]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-48]	@, %sfp
	str	r9, [fp, #-72]	@, %sfp
	ldr	r9, [fp, #-68]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-48]	@, %sfp
	add	r9, sl, r9	@,,
	mul	r9, r4, r9	@, D.24069,
	str	r9, [fp, #-56]	@, %sfp
	smull	r9, sl, r6, r9	@,, tmp546,
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [fp, #-48]	@, %sfp
	mov	sl, r9, asr #31	@ tmp215,,
	ldr	r9, [fp, #-48]	@, %sfp
	rsb	sl, sl, r9, asr #12	@,, tmp215,,
	str	sl, [fp, #-76]	@, %sfp
	str	sl, [r2, #12]	@, <variable>.s32C10
	ldr	r9, [r1, #12]	@, <variable>.s32C10
	ldr	sl, [ip, r7, asl #2]	@, COS_TABLE
	str	r9, [fp, #-84]	@, %sfp
	ldr	r9, [r1, #16]	@, <variable>.s32C11
	mul	r9, r9, sl	@,,
	ldr	sl, [r8, #244]	@, SIN_TABLE
	str	r9, [fp, #-56]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	mul	r9, r9, sl	@,,
	str	r9, [fp, #-72]	@, %sfp
	ldr	r9, [fp, #-56]	@, %sfp
	smull	sl, r9, r5, r9	@,, tmp545,
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-72]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	smull	r9, sl, r5, sl	@,, tmp545,
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-72]	@, %sfp
	mov	r9, sl, asr #31	@,,
	str	r9, [fp, #-72]	@, %sfp
	ldr	sl, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-68]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-48]	@, %sfp
	add	r9, sl, r9	@,,
	mul	r9, r4, r9	@, D.24069,
	str	r9, [fp, #-56]	@, %sfp
	smull	r9, sl, r6, r9	@,, tmp546,
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [fp, #-48]	@, %sfp
	mov	sl, r9, asr #31	@ tmp243,,
	ldr	r9, [fp, #-48]	@, %sfp
	rsb	sl, sl, r9, asr #12	@,, tmp243,,
	str	sl, [fp, #-72]	@, %sfp
	str	sl, [r2, #16]	@, <variable>.s32C11
	ldr	r9, [r1, #16]	@, <variable>.s32C11
	ldr	sl, [ip, r7, asl #2]	@, COS_TABLE
	str	r9, [fp, #-96]	@, %sfp
	ldr	r9, [r1, #20]	@, <variable>.s32C12
	mul	r9, r9, sl	@,,
	ldr	sl, [r8, #244]	@, SIN_TABLE
	str	r9, [fp, #-56]	@, %sfp
	ldr	r9, [fp, #-64]	@, %sfp
	mul	r9, r9, sl	@,,
	str	r9, [fp, #-100]	@, %sfp
	ldr	r9, [fp, #-56]	@, %sfp
	smull	sl, r9, r5, r9	@,, tmp545,
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-100]	@, %sfp
	str	r9, [fp, #-68]	@, %sfp
	smull	r9, sl, r5, sl	@,, tmp545,
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-100]	@, %sfp
	mov	r9, sl, asr #31	@,,
	ldr	sl, [fp, #-48]	@, %sfp
	str	r9, [fp, #-100]	@, %sfp
	ldr	r9, [fp, #-68]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-100]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-48]	@, %sfp
	add	r9, sl, r9	@,,
	mul	r9, r4, r9	@, D.24069,
	str	r9, [fp, #-56]	@, %sfp
	smull	r9, sl, r6, r9	@,, tmp546,
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [fp, #-48]	@, %sfp
	mov	sl, r9, asr #31	@ tmp271,,
	ldr	r9, [fp, #-48]	@, %sfp
	rsb	sl, sl, r9, asr #12	@,, tmp271,,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [r2, #20]	@, <variable>.s32C12
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [ip, r7, asl #2]	@ tmp274, COS_TABLE
	ldr	r1, [r1, #20]	@, <variable>.s32C12
	mul	sl, r9, sl	@ tmp273,, tmp274
	str	r1, [fp, #-68]	@, %sfp
	ldr	r9, [fp, #-84]	@, %sfp
	ldr	r1, [r8, #244]	@, SIN_TABLE
	mul	r9, r9, r1	@,,
	str	r9, [fp, #-100]	@, %sfp
	smull	r1, r9, r5, sl	@,, tmp545, tmp273
	mov	sl, sl, asr #31	@, tmp273,
	ldr	r1, [fp, #-100]	@, %sfp
	str	sl, [fp, #-84]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	smull	sl, r9, r5, r1	@,, tmp545,
	ldr	sl, [fp, #-48]	@, %sfp
	ldr	r1, [fp, #-100]	@, %sfp
	str	r9, [fp, #-52]	@, %sfp
	mov	r1, r1, asr #31	@,,
	ldr	r9, [fp, #-84]	@, %sfp
	str	r1, [fp, #-100]	@, %sfp
	rsb	r9, r9, sl, asr #6	@,,,,
	ldr	sl, [fp, #-52]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	rsb	r1, r1, sl, asr #6	@, tmp289,,,
	rsb	sl, r1, r9	@ tmp294, tmp289,
	mul	sl, r4, sl	@ tmp295, D.24069, tmp294
	smull	r9, r1, r6, sl	@, tmp296, tmp546, tmp295
	mov	r9, sl, asr #31	@ tmp299, tmp295,
	rsb	sl, r9, r1, asr #12	@,, tmp299, tmp296,
	ldr	r9, [fp, #-60]	@, %sfp
	str	sl, [r2, #24]	@, <variable>.s32C20
	str	sl, [fp, #-48]	@, %sfp
	ldr	sl, [ip, r7, asl #2]	@ tmp302, COS_TABLE
	ldr	r1, [r8, #244]	@ tmp315, SIN_TABLE
	mul	sl, r9, sl	@ tmp301,, tmp302
	ldr	r9, [fp, #-96]	@, %sfp
	mul	r1, r9, r1	@,, tmp315
	str	r1, [fp, #-96]	@, %sfp
	smull	r9, r1, r5, sl	@,, tmp545, tmp301
	ldr	r9, [fp, #-96]	@, %sfp
	str	r1, [fp, #-60]	@, %sfp
	mov	r1, sl, asr #31	@, tmp301,
	str	r1, [fp, #-84]	@, %sfp
	smull	r1, sl, r5, r9	@,, tmp545,
	str	sl, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	sl, [fp, #-84]	@, %sfp
	ldr	r9, [fp, #-96]	@, %sfp
	rsb	sl, sl, r1, asr #6	@,,,,
	str	sl, [fp, #-60]	@, %sfp
	ldr	sl, [fp, #-52]	@, %sfp
	mov	r9, r9, asr #31	@,,
	str	r9, [fp, #-96]	@, %sfp
	rsb	r1, r9, sl, asr #6	@, tmp317,,,
	ldr	r9, [fp, #-60]	@, %sfp
	rsb	sl, r1, r9	@ tmp322, tmp317,
	mul	sl, r4, sl	@ tmp323, D.24069, tmp322
	smull	r9, r1, r6, sl	@, tmp324, tmp546, tmp323
	mov	sl, sl, asr #31	@ tmp327, tmp323,
	rsb	r9, sl, r1, asr #12	@,, tmp327, tmp324,
	ldr	sl, [fp, #-68]	@, %sfp
	str	r9, [r2, #28]	@, <variable>.s32C21
	str	r9, [fp, #-60]	@, %sfp
	ldr	r1, [ip, r7, asl #2]	@ tmp330, COS_TABLE
	ldr	r9, [r8, #244]	@ tmp343, SIN_TABLE
	ldr	ip, [fp, #-64]	@, %sfp
	mul	r7, ip, r1	@ tmp329,, tmp330
	mul	r1, sl, r9	@ tmp342,, tmp343
	smull	r9, r8, r5, r7	@, tmp333, tmp545, tmp329
	mov	r7, r7, asr #31	@ tmp336, tmp329,
	smull	sl, ip, r5, r1	@, tmp346, tmp545, tmp342
	mov	sl, r1, asr #31	@ tmp349, tmp342,
	rsb	r9, r7, r8, asr #6	@, tmp332, tmp336, tmp333,
	rsb	r1, sl, ip, asr #6	@, tmp345, tmp349, tmp346,
	rsb	ip, r1, r9	@ tmp350, tmp345, tmp332
	mul	r8, r4, ip	@ tmp351, D.24069, tmp350
	smull	ip, sl, r6, r8	@, tmp352, tmp546, tmp351
	mov	r7, r8, asr #31	@ tmp355, tmp351,
	mov	r6, #114	@,
	rsb	r9, r7, sl, asr #12	@,, tmp355, tmp352,
	str	r9, [fp, #-52]	@, %sfp
	str	r9, [r2, #32]	@, <variable>.s32C22
	movw	r7, #587	@ tmp360,
	ldr	r1, [r0, #40]	@ <variable>.u32Kb, <variable>.u32Kb
	ldr	r4, [r0, #36]	@ <variable>.u32Kg, <variable>.u32Kg
	ldr	ip, [r0, #32]	@ <variable>.u32Kr, <variable>.u32Kr
	mov	r0, r1, asl #1	@ s32Bgain, <variable>.u32Kb,
	mov	r1, r4, asl #1	@ s32Ggain, <variable>.u32Kg,
	rsb	r8, r1, r4, asl #24	@, tmp421, s32Ggain, <variable>.u32Kg,
	mov	ip, ip, asl #1	@ s32Rgain, <variable>.u32Kr,
	mul	sl, r6, r0	@ tmp361,, s32Bgain
	rsb	r9, r1, r8, asl #7	@, tmp423, s32Ggain, tmp421,
	mla	r7, r7, r1, sl	@ tmp363, tmp360, s32Ggain, tmp361
	mvn	sl, #146	@ tmp392,
	add	r4, r1, r9, asl #2	@,, s32Ggain, tmp423,
	mov	r6, #436	@ tmp390,
	str	r4, [fp, #-100]	@, %sfp
	mov	r9, #232	@ tmp374,
	mul	r8, sl, ip	@ tmp391, tmp392, s32Rgain
	movw	r4, #341	@ tmp383,
	mla	r8, r6, r0, r8	@ tmp393, tmp390, s32Bgain, tmp391
	mvn	sl, #231	@ tmp372,
	mul	r6, r9, r0	@ tmp373, tmp374, s32Bgain
	mvn	r9, #340	@ tmp381,
	mul	r4, r4, ip	@ tmp382, tmp383, s32Rgain
	mla	r6, sl, r1, r6	@, tmp372, s32Ggain, tmp373
	movw	sl, #299	@,
	mla	r4, r9, r1, r4	@ tmp384, tmp381, s32Ggain, tmp382
	movw	r9, #886	@ tmp404,
	mla	r7, sl, ip, r7	@ tmp366,, s32Rgain, tmp363
	mul	sl, r9, r0	@, tmp404, s32Bgain
	str	r6, [fp, #-120]	@, %sfp
	mov	r9, r6, asr #31	@,,
	str	r9, [fp, #-84]	@, %sfp
	mov	r9, r4, asr #31	@, tmp384,
	str	r9, [fp, #-96]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	mov	sl, #168	@ tmp413,
	mul	r6, sl, r1	@ tmp412, tmp413, s32Ggain
	mvn	sl, #288	@ tmp395,
	mla	r9, sl, r1, r8	@, tmp395, s32Ggain, tmp393
	mov	r8, #114	@,
	mov	sl, r7, asr #31	@, tmp366,
	str	sl, [fp, #-68]	@, %sfp
	str	r9, [fp, #-128]	@, %sfp
	ldr	r9, [fp, #-64]	@, %sfp
	mla	sl, r8, r1, r9	@,, s32Ggain,
	mvn	r9, #167	@ tmp411,
	mla	r9, r9, ip, r6	@ tmp414, tmp411, s32Rgain, tmp412
	ldr	r6, [fp, #-100]	@, %sfp
	movw	r8, #615	@ tmp427,
	str	sl, [fp, #-64]	@, %sfp
	mla	sl, r8, ip, r6	@, tmp427, s32Rgain,
	ldr	r8, [fp, #-128]	@, %sfp
	mov	r6, r8, asr #31	@,,
	str	r6, [fp, #-100]	@, %sfp
	ldr	r6, [fp, #-64]	@, %sfp
	str	sl, [fp, #-112]	@, %sfp
	movw	sl, #299	@,
	mul	r8, sl, r1	@,, s32Ggain
	mov	sl, r6, asr #31	@,,
	mov	r6, r9, asr #31	@, tmp414,
	str	r8, [fp, #-116]	@, %sfp
	mov	r8, #203	@ tmp439,
	str	sl, [fp, #-104]	@, %sfp
	mul	sl, r8, r1	@ tmp438, tmp439, s32Ggain
	ldr	r8, [fp, #-120]	@, %sfp
	str	r6, [fp, #-108]	@, %sfp
	smull	r1, r7, r3, r7	@, tmp367, tmp544, tmp366
	smull	r8, r6, r3, r8	@, tmp376, tmp544,
	smull	r8, r1, r3, r4	@,, tmp544, tmp384
	ldr	r4, [fp, #-68]	@, %sfp
	rsb	r7, r4, r7, asr #5	@, D.24614,, tmp367,
	ldr	r4, [fp, #-84]	@, %sfp
	str	r1, [fp, #-120]	@, %sfp
	mvn	r1, #202	@ tmp437,
	mla	r8, r1, r0, sl	@, tmp437, s32Bgain, tmp438
	ldr	sl, [fp, #-116]	@, %sfp
	rsb	r6, r4, r6, asr #5	@, D.24610,, tmp376,
	movw	r1, #701	@ tmp446,
	mvn	r4, #99	@ tmp430,
	mla	ip, r1, ip, sl	@ tmp449, tmp446, s32Rgain,
	ldr	sl, [fp, #-120]	@, %sfp
	str	r8, [fp, #-132]	@, %sfp
	ldr	r8, [fp, #-112]	@, %sfp
	ldr	r1, [fp, #-96]	@, %sfp
	mla	r0, r4, r0, r8	@ tmp431, tmp430, s32Bgain,
	ldr	r8, [fp, #-128]	@, %sfp
	rsb	r4, r1, sl, asr #5	@, D.24606,,,
	smull	sl, r1, r3, r8	@, tmp397, tmp544,
	ldr	sl, [fp, #-132]	@, %sfp
	mov	r8, sl, asr #31	@,,
	ldr	sl, [fp, #-64]	@, %sfp
	str	r8, [fp, #-68]	@, %sfp
	smull	r8, sl, r3, sl	@,, tmp544,
	str	sl, [fp, #-96]	@, %sfp
	mov	sl, r0, asr #31	@, tmp431,
	str	sl, [fp, #-64]	@, %sfp
	smull	sl, r8, r3, r9	@,, tmp544, tmp414
	ldr	r9, [fp, #-100]	@, %sfp
	rsb	sl, r9, r1, asr #5	@, D.24600,, tmp397,
	ldr	r9, [fp, #-104]	@, %sfp
	str	r8, [fp, #-112]	@, %sfp
	smull	r1, r8, r3, ip	@,, tmp544, tmp449
	mov	ip, ip, asr #31	@ tmp453, tmp449,
	ldr	r1, [fp, #-96]	@, %sfp
	str	r8, [fp, #-84]	@, %sfp
	rsb	r8, r9, r1, asr #5	@, D.24596,,,
	smull	r1, r9, r3, r0	@,, tmp544, tmp431
	ldr	r1, [fp, #-112]	@, %sfp
	ldr	r0, [fp, #-108]	@, %sfp
	str	r9, [fp, #-100]	@, %sfp
	rsb	r9, r0, r1, asr #5	@, D.24592,,,
	ldr	r0, [fp, #-132]	@, %sfp
	smull	r1, r0, r3, r0	@,, tmp544,
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-100]	@, %sfp
	str	r0, [fp, #-104]	@, %sfp
	mul	r0, r4, r1	@, D.24606,
	ldr	r1, [fp, #-64]	@, %sfp
	str	r0, [fp, #-96]	@, %sfp
	rsb	r0, r1, r3, asr #5	@, D.24586,,,
	ldr	r3, [fp, #-80]	@, %sfp
	mul	r1, r3, r4	@,, D.24606
	ldr	r3, [fp, #-84]	@, %sfp
	rsb	ip, ip, r3, asr #5	@, D.24578, tmp453,,
	str	r1, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-76]	@, %sfp
	mul	r3, r4, r1	@, D.24606,
	str	r3, [fp, #-84]	@, %sfp
	ldr	r1, [fp, #-104]	@, %sfp
	ldr	r4, [fp, #-68]	@, %sfp
	rsb	r3, r4, r1, asr #5	@, D.24582,,,
	ldr	r1, [fp, #-48]	@, %sfp
	mul	r4, r7, r1	@, D.24614,
	ldr	r1, [fp, #-48]	@, %sfp
	str	r4, [fp, #-100]	@, %sfp
	mul	r4, r6, r1	@, D.24610,
	ldr	r1, [fp, #-80]	@, %sfp
	str	r4, [fp, #-104]	@, %sfp
	mul	r4, r1, r7	@,, D.24614
	ldr	r1, [fp, #-80]	@, %sfp
	str	r4, [fp, #-48]	@, %sfp
	mul	r4, r1, r6	@,, D.24610
	ldr	r1, [fp, #-76]	@, %sfp
	mul	r7, r7, r1	@ tmp485, D.24614,
	str	r4, [fp, #-80]	@, %sfp
	mul	r6, r6, r1	@ tmp495, D.24610,
	ldr	r4, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	mla	r1, r9, r1, r4	@, D.24592,,
	ldr	r4, [fp, #-64]	@, %sfp
	str	r1, [fp, #-68]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	mla	r1, r1, r9, r4	@,, D.24592,
	ldr	r4, [fp, #-84]	@, %sfp
	str	r1, [fp, #-76]	@, %sfp
	ldr	r1, [fp, #-72]	@, %sfp
	mla	r9, r9, r1, r4	@ tmp506, D.24592,,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r4, [fp, #-100]	@, %sfp
	mla	r1, sl, r1, r4	@, D.24600,,
	ldr	r4, [fp, #-104]	@, %sfp
	str	r1, [fp, #-84]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	mla	r1, r8, r1, r4	@, D.24596,,
	ldr	r4, [fp, #-48]	@, %sfp
	str	r1, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	mla	r1, r1, sl, r4	@,, D.24600,
	ldr	r4, [fp, #-80]	@, %sfp
	str	r1, [fp, #-60]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	mla	r1, r1, r8, r4	@,, D.24596,
	ldr	r4, [fp, #-72]	@, %sfp
	mla	r6, r8, r4, r6	@, D.24596,, tmp495
	str	r1, [fp, #-48]	@, %sfp
	mla	r1, sl, r4, r7	@, D.24600,, tmp485
	str	r1, [fp, #-92]	@, %sfp
	str	r6, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	ldr	r1, [fp, #-88]	@, %sfp
	ldr	r4, [fp, #-76]	@, %sfp
	ldr	r6, [fp, #-56]	@, %sfp
	ldr	r7, [fp, #-52]	@, %sfp
	mla	r8, ip, r7, sl	@ tmp538, D.24578,,
	ldr	sl, [fp, #-52]	@, %sfp
	mla	r7, r1, ip, r4	@ tmp478,, D.24578,
	mla	ip, ip, r6, r9	@ tmp508, D.24578,, tmp506
	ldr	r9, [fp, #-84]	@, %sfp
	ldr	r6, [fp, #-96]	@, %sfp
	mov	r4, r8, asr #31	@, tmp538,
	str	r4, [fp, #-80]	@, %sfp
	mla	r1, r0, sl, r9	@, D.24586,,
	ldr	sl, [fp, #-52]	@, %sfp
	mov	r9, r7, asr #31	@, tmp478,
	str	r9, [fp, #-72]	@, %sfp
	mla	r4, r3, sl, r6	@ tmp528, D.24582,,
	ldr	sl, [fp, #-88]	@, %sfp
	str	r1, [fp, #-68]	@, %sfp
	mov	r6, ip, asr #31	@, tmp508,
	ldr	r1, [fp, #-60]	@, %sfp
	str	r6, [fp, #-76]	@, %sfp
	mla	r9, sl, r0, r1	@ tmp458,, D.24586,
	ldr	r1, [fp, #-48]	@, %sfp
	mla	r6, sl, r3, r1	@ tmp468,, D.24582,
	ldr	sl, [fp, #-68]	@, %sfp
	mov	r1, sl, asr #31	@,,
	ldr	sl, [fp, #-92]	@, %sfp
	str	r1, [fp, #-48]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	mla	r0, r0, r1, sl	@ tmp488, D.24586,,
	ldr	sl, [fp, #-56]	@, %sfp
	mov	r1, r4, asr #31	@, tmp528,
	str	r1, [fp, #-88]	@, %sfp
	ldr	r1, [fp, #-64]	@, %sfp
	mla	r3, r3, sl, r1	@ tmp498, D.24582,,
	mov	sl, r9, asr #31	@, tmp458,
	str	sl, [fp, #-64]	@, %sfp
	smull	sl, r1, r5, r8	@,, tmp545, tmp538
	mov	sl, r6, asr #31	@ tmp472, tmp468,
	mov	r8, r0, asr #31	@, tmp488,
	str	r8, [fp, #-60]	@, %sfp
	mov	r8, r3, asr #31	@ tmp502, tmp498,
	str	r1, [fp, #-56]	@, %sfp
	smull	r1, r9, r5, r9	@, tmp459, tmp545, tmp458
	smull	r1, r6, r5, r6	@, tmp469, tmp545, tmp468
	smull	r1, r7, r5, r7	@, tmp479, tmp545, tmp478
	ldr	r1, [fp, #-64]	@, %sfp
	rsb	r6, sl, r6, asr #6	@, tmp473, tmp472, tmp469,
	rsb	r9, r1, r9, asr #6	@, tmp463,, tmp459,
	smull	sl, r3, r5, r3	@, tmp499, tmp545, tmp498
	smull	r1, r0, r5, r0	@, tmp489, tmp545, tmp488
	ldr	sl, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	rsb	r3, r8, r3, asr #6	@, tmp503, tmp502, tmp499,
	rsb	r7, sl, r7, asr #6	@, tmp483,, tmp479,
	smull	sl, ip, r5, ip	@, tmp509, tmp545, tmp508
	rsb	r0, r1, r0, asr #6	@, tmp493,, tmp489,
	ldr	sl, [fp, #-68]	@, %sfp
	smull	r8, r4, r5, r4	@, tmp529, tmp545, tmp528
	smull	sl, r1, r5, sl	@, tmp519, tmp545,
	ldr	sl, [fp, #-76]	@, %sfp
	ldr	r5, [fp, #-80]	@, %sfp
	rsb	ip, sl, ip, asr #6	@, tmp513,, tmp509,
	ldr	sl, [fp, #-56]	@, %sfp
	rsb	r8, r5, sl, asr #6	@, tmp543,,,
	str	r8, [r2, #32]	@ tmp543, <variable>.s32C22
	ldr	r5, [fp, #-48]	@, %sfp
	str	r6, [r2, #4]	@ tmp473, <variable>.s32C01
	ldr	r6, [fp, #-88]	@, %sfp
	rsb	r1, r5, r1, asr #6	@, tmp523,, tmp519,
	str	r9, [r2, #0]	@ tmp463, <variable>.s32C00
	rsb	r4, r6, r4, asr #6	@, tmp533,, tmp529,
	str	r7, [r2, #8]	@ tmp483, <variable>.s32C02
	str	r0, [r2, #12]	@ tmp493, <variable>.s32C10
	str	r3, [r2, #16]	@ tmp503, <variable>.s32C11
	str	ip, [r2, #20]	@ tmp513, <variable>.s32C12
	str	r1, [r2, #24]	@ tmp523, <variable>.s32C20
	str	r4, [r2, #28]	@ tmp533, <variable>.s32C21
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	CalcCscCoef_YCbCrtoYCbCr, .-CalcCscCoef_YCbCrtoYCbCr
	.align	2
	.global	CalcCscCoef_RGBtoRGB
	.type	CalcCscCoef_RGBtoRGB, %function
CalcCscCoef_RGBtoRGB:
	.fnstart
.LFB1250:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r1, [r0, #24]	@ <variable>.u32Hue, <variable>.u32Hue
	ldr	r3, [r0, #28]	@, <variable>.u32Satur
	mov	r8, #242	@ tmp159,
	movw	r4, #:lower16:1374389535	@ tmp455,
	movt	r4, #:upper16:1374389535	@ tmp455,
	rsb	r7, r1, r1, asl #4	@, tmp150, <variable>.u32Hue, <variable>.u32Hue,
	movw	ip, #:lower16:.LANCHOR0	@ tmp160,
	mov	r1, r3, asl #1	@ s32SatAdj,,
	str	r3, [fp, #-52]	@, %sfp
	mov	sl, r7, asl #2	@ tmp151, tmp150,
	movt	ip, #:upper16:.LANCHOR0	@ tmp160,
	mul	r9, r8, r1	@, tmp159, s32SatAdj
	movw	r3, #:lower16:351843721	@ tmp456,
	umull	r8, r7, r4, sl	@, tmp152, tmp455, tmp151
	movt	r3, #:upper16:351843721	@ tmp456,
	movw	r5, #718	@ tmp178,
	movw	r4, #:lower16:1759218605	@ tmp457,
	str	r9, [fp, #-56]	@, %sfp
	movt	r4, #:upper16:1759218605	@ tmp457,
	ldr	r6, [r0, #32]	@ <variable>.u32Kr, <variable>.u32Kr
	ldr	r8, [r0, #20]	@ <variable>.u32Contrst, <variable>.u32Contrst
	ldr	sl, [r0, #36]	@ <variable>.u32Kg, <variable>.u32Kg
	mov	r7, r7, lsr #5	@ u32Hue, tmp152,
	ldr	r0, [r0, #40]	@, <variable>.u32Kb
	mov	r9, r6, asl #1	@ tmp156, <variable>.u32Kr,
	mov	r8, r8, asl #1	@ s32ContrstAdj, <variable>.u32Contrst,
	movw	r6, #475	@ tmp192,
	mov	sl, sl, asl #1	@, <variable>.u32Kg,
	str	sl, [fp, #-72]	@, %sfp
	str	r0, [fp, #-48]	@, %sfp
	mul	r0, r8, r9	@, s32ContrstAdj, tmp156
	ldr	r9, [ip, r7, asl #2]	@ tmp176, COS_TABLE
	mul	sl, r6, r1	@, tmp192, s32SatAdj
	ldr	r6, [fp, #-56]	@, %sfp
	mul	r9, r9, r1	@ tmp175, tmp176, s32SatAdj
	str	r0, [fp, #-60]	@, %sfp
	add	r0, ip, r7, asl #2	@, tmp163, tmp160, u32Hue,
	str	sl, [fp, #-68]	@, %sfp
	ldr	sl, [r0, #244]	@, SIN_TABLE
	mul	r9, r5, r9	@ tmp177, tmp178, tmp175
	mul	sl, sl, r6	@,,
	mul	r5, r5, r1	@, tmp178, s32SatAdj
	str	sl, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-48]	@, %sfp
	mov	r6, sl, asl #1	@,,
	ldr	sl, [fp, #-72]	@, %sfp
	str	r6, [fp, #-56]	@, %sfp
	str	r5, [fp, #-72]	@, %sfp
	mul	r6, r8, sl	@, s32ContrstAdj,
	ldr	sl, [fp, #-64]	@, %sfp
	str	r6, [fp, #-48]	@, %sfp
	smull	r6, sl, r3, sl	@,, tmp456,
	str	sl, [fp, #-76]	@, %sfp
	ldr	sl, [fp, #-64]	@, %sfp
	ldr	r5, [fp, #-76]	@, %sfp
	mov	r6, sl, asr #31	@ tmp171,,
	mov	sl, r9, asr #31	@, tmp177,
	str	sl, [fp, #-64]	@, %sfp
	rsb	r6, r6, r5, asr #13	@, tmp167, tmp171,,
	smull	sl, r9, r3, r9	@, tmp180, tmp456, tmp177
	add	r6, r6, #304	@ tmp172, tmp167,
	ldr	sl, [fp, #-52]	@, %sfp
	add	r6, r6, #2	@ tmp172, tmp172,
	add	r5, r1, sl, asl #2	@, tmp291, s32SatAdj,,
	ldr	sl, [fp, #-56]	@, %sfp
	rsb	r5, r1, r5, asl #5	@,, s32SatAdj, tmp291,
	str	r5, [fp, #-56]	@, %sfp
	mul	r8, r8, sl	@, s32ContrstAdj,
	ldr	sl, [fp, #-64]	@, %sfp
	str	r8, [fp, #-52]	@, %sfp
	rsb	r8, sl, r9, asr #13	@, tmp179,, tmp180,
	movw	r9, #299	@ tmp257,
	ldr	sl, [fp, #-60]	@, %sfp
	mul	r5, r9, r1	@, tmp257, s32SatAdj
	add	r6, r6, r8	@ tmp184, tmp172, tmp179
	movw	r8, #394	@ tmp326,
	mul	r9, r8, r1	@, tmp326, s32SatAdj
	mov	r8, #760	@ tmp391,
	mul	r6, sl, r6	@ tmp185,, tmp184
	str	r5, [fp, #-88]	@, %sfp
	movw	r5, #906	@ tmp358,
	mul	sl, r5, r1	@, tmp358, s32SatAdj
	str	r9, [fp, #-64]	@, %sfp
	mov	r5, #146	@ tmp424,
	str	sl, [fp, #-76]	@, %sfp
	smull	r9, sl, r4, r6	@, tmp186, tmp457, tmp185
	mov	r6, r6, asr #31	@ tmp189, tmp185,
	mul	r9, r8, r1	@, tmp391, s32SatAdj
	mul	r8, r5, r1	@, tmp424, s32SatAdj
	str	r9, [fp, #-80]	@, %sfp
	rsb	r9, r6, sl, asr #12	@, tmp190, tmp189, tmp186,
	str	r9, [r2, #0]	@ tmp190, <variable>.s32C00
	ldr	r5, [ip, r7, asl #2]	@ tmp209, COS_TABLE
	ldr	r6, [r0, #244]	@ tmp199, SIN_TABLE
	ldr	sl, [fp, #-68]	@, %sfp
	mul	r9, r5, r1	@ tmp208, tmp209, s32SatAdj
	str	r8, [fp, #-84]	@, %sfp
	mul	r6, r6, sl	@ tmp198, tmp199,
	movw	r8, #601	@,
	mul	r5, r8, r9	@ tmp210,, tmp208
	smull	r9, sl, r3, r6	@, tmp201, tmp456, tmp198
	mov	r6, r6, asr #31	@ tmp204, tmp198,
	smull	r9, r8, r3, r5	@, tmp213, tmp456, tmp210
	mov	r9, r5, asr #31	@ tmp216, tmp210,
	rsb	r6, r6, sl, asr #13	@, tmp200, tmp204, tmp201,
	add	r6, r6, #600	@ tmp205, tmp200,
	add	sl, r6, #1	@ tmp205, tmp205,
	rsb	r5, r9, r8, asr #13	@, tmp212, tmp216, tmp213,
	ldr	r9, [fp, #-48]	@, %sfp
	rsb	r6, r5, sl	@ tmp217, tmp212, tmp205
	mul	r8, r9, r6	@ tmp218,, tmp217
	smull	r5, sl, r4, r8	@, tmp219, tmp457, tmp218
	mov	r5, r8, asr #31	@ tmp222, tmp218,
	ldr	r8, [fp, #-72]	@, %sfp
	rsb	r9, r5, sl, asr #12	@, tmp223, tmp222, tmp219,
	str	r9, [r2, #4]	@ tmp223, <variable>.s32C01
	ldr	r6, [ip, r7, asl #2]	@ tmp241, COS_TABLE
	mov	r9, #117	@,
	ldr	r5, [r0, #244]	@ tmp232, SIN_TABLE
	mul	sl, r6, r1	@ tmp240, tmp241, s32SatAdj
	mul	r5, r5, r8	@ tmp231, tmp232,
	mul	r6, r9, sl	@ tmp242,, tmp240
	smull	r8, sl, r3, r5	@, tmp234, tmp456, tmp231
	mov	r5, r5, asr #31	@ tmp237, tmp231,
	smull	r9, r8, r3, r6	@, tmp245, tmp456, tmp242
	mov	r9, r6, asr #31	@ tmp248, tmp242,
	rsb	r5, r5, sl, asr #13	@, tmp233, tmp237, tmp234,
	rsb	sl, r5, #117	@ tmp238, tmp233,
	rsb	r6, r9, r8, asr #13	@, tmp244, tmp248, tmp245,
	ldr	r8, [fp, #-52]	@, %sfp
	rsb	r5, r6, sl	@ tmp249, tmp244, tmp238
	mul	r9, r8, r5	@ tmp250,, tmp249
	smull	r6, sl, r4, r9	@, tmp251, tmp457, tmp250
	mov	r6, r9, asr #31	@ tmp254, tmp250,
	ldr	r9, [fp, #-88]	@, %sfp
	rsb	r8, r6, sl, asr #12	@, tmp255, tmp254, tmp251,
	str	r8, [r2, #8]	@ tmp255, <variable>.s32C02
	ldr	r5, [ip, r7, asl #2]	@ tmp274, COS_TABLE
	ldr	sl, [r0, #244]	@ tmp264, SIN_TABLE
	mul	r6, r5, r1	@ tmp273, tmp274, s32SatAdj
	mul	r8, sl, r9	@ tmp263, tmp264,
	movw	r9, #306	@,
	mul	r5, r9, r6	@ tmp275,, tmp273
	smull	r6, sl, r3, r8	@, tmp266, tmp456, tmp263
	mov	r8, r8, asr #31	@ tmp269, tmp263,
	smull	r9, r6, r3, r5	@, tmp278, tmp456, tmp275
	mov	r5, r5, asr #31	@ tmp281, tmp275,
	rsb	r9, r8, sl, asr #13	@, tmp265, tmp269, tmp266,
	rsb	r8, r9, #304	@ tmp271, tmp265,
	add	r9, r8, #2	@ tmp270, tmp271,
	rsb	sl, r5, r6, asr #13	@, tmp277, tmp281, tmp278,
	ldr	r5, [fp, #-60]	@, %sfp
	rsb	r6, sl, r9	@ tmp282, tmp277, tmp270
	mul	r8, r5, r6	@ tmp283,, tmp282
	smull	r5, sl, r4, r8	@, tmp284, tmp457, tmp283
	mov	r9, r8, asr #31	@ tmp287, tmp283,
	ldr	r8, [fp, #-56]	@, %sfp
	rsb	r5, r9, sl, asr #12	@, tmp288, tmp287, tmp284,
	str	r5, [r2, #12]	@ tmp288, <variable>.s32C10
	ldr	r6, [ip, r7, asl #2]	@ tmp310, COS_TABLE
	ldr	sl, [r0, #244]	@ tmp300, SIN_TABLE
	mul	r9, r6, r1	@ tmp309, tmp310, s32SatAdj
	mul	r5, sl, r8	@ tmp299, tmp300,
	movw	r8, #423	@ tmp312,
	mul	r6, r8, r9	@ tmp311, tmp312, tmp309
	smull	r9, sl, r3, r5	@, tmp302, tmp456, tmp299
	mov	r5, r5, asr #31	@ tmp305, tmp299,
	smull	r9, r8, r3, r6	@, tmp314, tmp456, tmp311
	mov	r9, r6, asr #31	@ tmp317, tmp311,
	rsb	r5, r5, sl, asr #13	@, tmp301, tmp305, tmp302,
	rsb	sl, r5, #600	@ tmp307, tmp301,
	rsb	r6, r9, r8, asr #13	@, tmp313, tmp317, tmp314,
	ldr	r8, [fp, #-48]	@, %sfp
	add	r5, sl, r6	@ tmp318, tmp307, tmp313
	mla	r9, r5, r8, r8	@ tmp319, tmp318,,
	smull	r6, sl, r4, r9	@, tmp320, tmp457, tmp319
	mov	r6, r9, asr #31	@ tmp323, tmp319,
	ldr	r9, [fp, #-64]	@, %sfp
	rsb	r8, r6, sl, asr #12	@, tmp324, tmp323, tmp320,
	str	r8, [r2, #16]	@ tmp324, <variable>.s32C11
	ldr	r5, [ip, r7, asl #2]	@ tmp342, COS_TABLE
	ldr	sl, [r0, #244]	@ tmp333, SIN_TABLE
	mul	r6, r5, r1	@ tmp341, tmp342, s32SatAdj
	mul	r8, sl, r9	@ tmp332, tmp333,
	mov	r9, #117	@,
	mul	r5, r9, r6	@ tmp343,, tmp341
	smull	r6, sl, r3, r8	@, tmp335, tmp456, tmp332
	mov	r8, r8, asr #31	@ tmp338, tmp332,
	smull	r9, r6, r3, r5	@, tmp346, tmp456, tmp343
	mov	r9, r5, asr #31	@ tmp349, tmp343,
	rsb	r8, r8, sl, asr #13	@, tmp334, tmp338, tmp335,
	add	sl, r8, #117	@ tmp339, tmp334,
	rsb	r5, r9, r6, asr #13	@, tmp345, tmp349, tmp346,
	rsb	r9, r5, sl	@ tmp350, tmp345, tmp339
	ldr	r5, [fp, #-52]	@, %sfp
	mul	r8, r5, r9	@ tmp351,, tmp350
	smull	r5, sl, r4, r8	@, tmp352, tmp457, tmp351
	mov	r6, r8, asr #31	@ tmp355, tmp351,
	ldr	r8, [fp, #-76]	@, %sfp
	rsb	r9, r6, sl, asr #12	@, tmp356, tmp355, tmp352,
	str	r9, [r2, #20]	@ tmp356, <variable>.s32C12
	ldr	r5, [ip, r7, asl #2]	@ tmp375, COS_TABLE
	movw	r9, #306	@,
	ldr	r6, [r0, #244]	@ tmp365, SIN_TABLE
	mul	sl, r5, r1	@ tmp374, tmp375, s32SatAdj
	mul	r6, r6, r8	@ tmp364, tmp365,
	mul	r5, r9, sl	@ tmp376,, tmp374
	smull	r8, sl, r3, r6	@, tmp367, tmp456, tmp364
	mov	r6, r6, asr #31	@ tmp370, tmp364,
	smull	r9, r8, r3, r5	@, tmp379, tmp456, tmp376
	mov	r9, r5, asr #31	@ tmp382, tmp376,
	rsb	r6, r6, sl, asr #13	@, tmp366, tmp370, tmp367,
	add	r6, r6, #304	@ tmp371, tmp366,
	add	sl, r6, #2	@ tmp371, tmp371,
	rsb	r5, r9, r8, asr #13	@, tmp378, tmp382, tmp379,
	rsb	r9, r5, sl	@ tmp383, tmp378, tmp371
	ldr	r5, [fp, #-60]	@, %sfp
	mul	r6, r5, r9	@ tmp384,, tmp383
	smull	r5, sl, r4, r6	@, tmp385, tmp457, tmp384
	mov	r8, r6, asr #31	@ tmp388, tmp384,
	rsb	r9, r8, sl, asr #12	@, tmp389, tmp388, tmp385,
	str	r9, [r2, #24]	@ tmp389, <variable>.s32C20
	ldr	r5, [ip, r7, asl #2]	@ tmp408, COS_TABLE
	movw	r9, #601	@,
	ldr	r8, [r0, #244]	@ tmp398, SIN_TABLE
	ldr	r6, [fp, #-80]	@, %sfp
	mul	sl, r5, r1	@ tmp407, tmp408, s32SatAdj
	mul	r8, r8, r6	@ tmp397, tmp398,
	mul	r5, r9, sl	@ tmp409,, tmp407
	smull	r6, sl, r3, r8	@, tmp400, tmp456, tmp397
	mov	r8, r8, asr #31	@ tmp403, tmp397,
	smull	r9, r6, r3, r5	@, tmp412, tmp456, tmp409
	mov	r9, r5, asr #31	@ tmp415, tmp409,
	rsb	r8, r8, sl, asr #13	@, tmp399, tmp403, tmp400,
	rsb	r8, r8, #600	@ tmp405, tmp399,
	rsb	r5, r9, r6, asr #13	@, tmp411, tmp415, tmp412,
	ldr	r6, [fp, #-48]	@, %sfp
	rsb	r5, r5, r8	@ tmp416, tmp411, tmp405
	mla	sl, r5, r6, r6	@ tmp417, tmp416,,
	smull	r8, r9, r4, sl	@, tmp418, tmp457, tmp417
	mov	r8, sl, asr #31	@ tmp421, tmp417,
	rsb	sl, r8, r9, asr #12	@, tmp422, tmp421, tmp418,
	str	sl, [r2, #28]	@ tmp422, <variable>.s32C21
	ldr	r9, [ip, r7, asl #2]	@ tmp440, COS_TABLE
	ldr	r8, [r0, #244]	@ tmp431, SIN_TABLE
	movw	r0, #907	@ tmp442,
	mul	sl, r9, r1	@ tmp439, tmp440, s32SatAdj
	ldr	r9, [fp, #-84]	@, %sfp
	mul	ip, r8, r9	@ tmp430, tmp431,
	mul	r1, r0, sl	@ tmp441, tmp442, tmp439
	smull	sl, r0, r3, ip	@, tmp433, tmp456, tmp430
	mov	r8, ip, asr #31	@ tmp436, tmp430,
	smull	ip, r3, r3, r1	@, tmp444, tmp456, tmp441
	mov	r1, r1, asr #31	@ tmp447, tmp441,
	rsb	r8, r8, r0, asr #13	@, tmp432, tmp436, tmp433,
	ldr	r0, [fp, #-52]	@, %sfp
	rsb	ip, r8, #117	@ tmp437, tmp432,
	rsb	r1, r1, r3, asr #13	@, tmp443, tmp447, tmp444,
	add	r3, ip, r1	@ tmp448, tmp437, tmp443
	mul	r1, r0, r3	@ tmp449,, tmp448
	smull	r3, r4, r4, r1	@, tmp450, tmp457, tmp449
	mov	r8, r1, asr #31	@ tmp453, tmp449,
	rsb	r8, r8, r4, asr #12	@, tmp454, tmp453, tmp450,
	str	r8, [r2, #32]	@ tmp454, <variable>.s32C22
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	CalcCscCoef_RGBtoRGB, .-CalcCscCoef_RGBtoRGB
	.align	2
	.global	VPSS_GetCscType
	.type	VPSS_GetCscType, %function
VPSS_GetCscType:
	.fnstart
.LFB1251:
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
	sub	r0, r0, #2	@ tmp135, eCSDrv,
	cmp	r0, #10	@ tmp135,
	ldrls	pc, [pc, r0, asl #2]	@ tmp135
	b	.L10	@
.L17:
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L10
	.word	.L10
	.word	.L10
	.word	.L15
	.word	.L16
	.word	.L13
	.word	.L14
.L16:
	mov	r2, #1	@ tmp142,
	str	r2, [r1, #4]	@ tmp142, <variable>.eCsRange
	str	r2, [r1, #0]	@ tmp142, <variable>.eCsType
	ldmfd	sp, {fp, sp, pc}	@
.L10:
	mov	ip, #0	@ tmp148,
	str	ip, [r1, #4]	@ tmp148, <variable>.eCsRange
	str	ip, [r1, #0]	@ tmp148, <variable>.eCsType
	ldmfd	sp, {fp, sp, pc}	@
.L11:
	mov	r3, #2	@ tmp136,
	str	r3, [r1, #4]	@ tmp136, <variable>.eCsRange
	str	r3, [r1, #0]	@ tmp136, <variable>.eCsType
	ldmfd	sp, {fp, sp, pc}	@
.L12:
	mov	ip, #2	@ tmp138,
	mov	r2, #1	@ tmp139,
	str	ip, [r1, #0]	@ tmp138, <variable>.eCsType
	str	r2, [r1, #4]	@ tmp139, <variable>.eCsRange
	ldmfd	sp, {fp, sp, pc}	@
.L13:
	mov	r2, #3	@ tmp146,
	mov	r3, #2	@ tmp147,
	stmia	r1, {r2, r3}	@ phole stm
	ldmfd	sp, {fp, sp, pc}	@
.L14:
	mov	r0, #3	@ tmp144,
	mov	ip, #1	@ tmp145,
	stmia	r1, {r0, ip}	@ phole stm
	ldmfd	sp, {fp, sp, pc}	@
.L15:
	mov	r3, #1	@ tmp140,
	mov	r0, #2	@ tmp141,
	str	r3, [r1, #0]	@ tmp140, <variable>.eCsType
	str	r0, [r1, #4]	@ tmp141, <variable>.eCsRange
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_GetCscType, .-VPSS_GetCscType
	.align	2
	.global	CalcCscMatrix
	.type	CalcCscMatrix, %function
CalcCscMatrix:
	.fnstart
.LFB1252:
	@ args = 0, pretend = 0, frame = 56
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
	sub	r6, fp, #88	@ tmp192,,
	add	r2, r6, #4	@ tmp198, tmp192,
	mov	r7, #0	@ tmp139,
	mov	r5, r0	@ pstCscDrvPara, pstCscDrvPara
	mov	r4, r1	@ pstCscRtlPara, pstCscRtlPara
	ldr	r0, [r0, #0]	@, <variable>.eInputCS
	sub	r1, fp, #44	@,,
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2], #4	@ tmp139, stCscTbl
	str	r7, [r2, #0]	@ tmp139, stCscTbl
	str	r7, [fp, #-88]	@ tmp139, stCscTbl
	bl	VPSS_GetCscType	@
	ldr	r0, [r5, #4]	@, <variable>.eOutputCS
	sub	r1, fp, #52	@,,
	bl	VPSS_GetCscType	@
	ldr	r0, [fp, #-44]	@ D.24282, stAlgCSIn.eCsType
	ldr	r2, [fp, #-52]	@ D.24283, stAlgCSOut.eCsType
	movw	r3, #:lower16:.LANCHOR1	@ tmp152,
	cmp	r0, #2	@ D.24282,
	movt	r3, #:upper16:.LANCHOR1	@ tmp152,
	add	r1, r2, r0, asl #2	@, tmp154, D.24283, D.24282,
	ldr	r1, [r3, r1, asl #2]	@ pCSCMatrixOri, CSC_MatrixTbl
	bls	.L22	@,
	cmp	r2, #2	@ D.24283,
	bls	.L23	@,
	mov	r2, r6	@, tmp192
	mov	r0, r5	@, pstCscDrvPara
	bl	CalcCscCoef_RGBtoRGB	@
	ldr	r6, [r5, #8]	@ <variable>.bIsBGRIn, <variable>.bIsBGRIn
	cmp	r6, #0	@ <variable>.bIsBGRIn,
	beq	.L30	@,
.L26:
	sub	r2, fp, #88
	ldmia	r2, {r2, r3, sl}	@ phole ldm
	ldr	r1, [fp, #-68]	@ stCscTbl.s32C12, stCscTbl.s32C12
	ldr	r0, [fp, #-72]	@ stCscTbl.s32C11, stCscTbl.s32C11
	ldr	ip, [fp, #-76]	@ stCscTbl.s32C10, stCscTbl.s32C10
	ldr	r6, [fp, #-56]	@ stCscTbl.s32C22, stCscTbl.s32C22
	ldr	r7, [fp, #-60]	@ stCscTbl.s32C21, stCscTbl.s32C21
	ldr	r8, [fp, #-64]	@ stCscTbl.s32C20, stCscTbl.s32C20
	str	sl, [r4, #24]	@ stCscTbl.s32C02, <variable>.s32CscCoef_00
	str	r3, [r4, #28]	@ stCscTbl.s32C01, <variable>.s32CscCoef_01
	str	r2, [r4, #32]	@ stCscTbl.s32C00, <variable>.s32CscCoef_02
	str	r1, [r4, #36]	@ stCscTbl.s32C12, <variable>.s32CscCoef_10
	str	r0, [r4, #40]	@ stCscTbl.s32C11, <variable>.s32CscCoef_11
	str	ip, [r4, #44]	@ stCscTbl.s32C10, <variable>.s32CscCoef_12
	str	r6, [r4, #48]	@ stCscTbl.s32C22, <variable>.s32CscCoef_20
	str	r7, [r4, #52]	@ stCscTbl.s32C21, <variable>.s32CscCoef_21
	str	r8, [r4, #56]	@ stCscTbl.s32C20, <variable>.s32CscCoef_22
	b	.L27	@
.L22:
	cmp	r2, #2	@ D.24283,
	bhi	.L31	@,
	mov	r2, r6	@, tmp192
	mov	r0, r5	@, pstCscDrvPara
	bl	CalcCscCoef_YCbCrtoYCbCr	@
.L24:
	ldr	r6, [r5, #8]	@ <variable>.bIsBGRIn, <variable>.bIsBGRIn
	cmp	r6, #0	@ <variable>.bIsBGRIn,
	bne	.L26	@,
.L30:
	sub	r2, fp, #88
	ldmia	r2, {r2, r3, sl, ip}	@ phole ldm
	sub	r0, fp, #72
	ldmia	r0, {r0, r1, r8}	@ phole ldm
	ldr	r7, [fp, #-60]	@ stCscTbl.s32C21, stCscTbl.s32C21
	ldr	r6, [fp, #-56]	@ stCscTbl.s32C22, stCscTbl.s32C22
	str	r2, [r4, #24]	@ stCscTbl.s32C00, <variable>.s32CscCoef_00
	str	r3, [r4, #28]	@ stCscTbl.s32C01, <variable>.s32CscCoef_01
	str	sl, [r4, #32]	@ stCscTbl.s32C02, <variable>.s32CscCoef_02
	str	ip, [r4, #36]	@ stCscTbl.s32C10, <variable>.s32CscCoef_10
	str	r0, [r4, #40]	@ stCscTbl.s32C11, <variable>.s32CscCoef_11
	str	r1, [r4, #44]	@ stCscTbl.s32C12, <variable>.s32CscCoef_12
	str	r8, [r4, #48]	@ stCscTbl.s32C20, <variable>.s32CscCoef_20
	str	r7, [r4, #52]	@ stCscTbl.s32C21, <variable>.s32CscCoef_21
	str	r6, [r4, #56]	@ stCscTbl.s32C22, <variable>.s32CscCoef_22
.L27:
	ldr	r5, [r5, #12]	@ <variable>.bIsBGROut, <variable>.bIsBGROut
	cmp	r5, #1	@ <variable>.bIsBGROut,
	bne	.L29	@,
	str	sl, [r4, #56]	@ stCscTbl.s32C02, <variable>.s32CscCoef_22
	str	r8, [r4, #24]	@ stCscTbl.s32C20, <variable>.s32CscCoef_00
	str	r7, [r4, #28]	@ stCscTbl.s32C21, <variable>.s32CscCoef_01
	str	r6, [r4, #32]	@ stCscTbl.s32C22, <variable>.s32CscCoef_02
	str	ip, [r4, #36]	@ stCscTbl.s32C10, <variable>.s32CscCoef_10
	str	r0, [r4, #40]	@ stCscTbl.s32C11, <variable>.s32CscCoef_11
	str	r1, [r4, #44]	@ stCscTbl.s32C12, <variable>.s32CscCoef_12
	str	r2, [r4, #48]	@ stCscTbl.s32C00, <variable>.s32CscCoef_20
	str	r3, [r4, #52]	@ stCscTbl.s32C01, <variable>.s32CscCoef_21
.L29:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L31:
	mov	r2, r6	@, tmp192
	mov	r0, r5	@, pstCscDrvPara
	bl	CalcCscCoef_YCbCrtoRGB	@
	b	.L24	@
.L23:
	mov	r2, r6	@, tmp192
	mov	r0, r5	@, pstCscDrvPara
	bl	CalcCscCoef_RGBtoYCbCr	@
	b	.L24	@
	.fnend
	.size	CalcCscMatrix, .-CalcCscMatrix
	.global	__aeabi_idiv
	.align	2
	.global	CalcCscDc
	.type	CalcCscDc, %function
CalcCscDc:
	.fnstart
.LFB1253:
	@ args = 0, pretend = 0, frame = 16
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
	mov	r5, r0	@ pstCscDrvPara, pstCscDrvPara
	ldr	r7, [r0, #16]	@ <variable>.u32Bright, <variable>.u32Bright
	mov	r4, r1	@ pstCscRtlPara, pstCscRtlPara
	ldr	r0, [r0, #0]	@, <variable>.eInputCS
	sub	r1, fp, #36	@,,
	ldr	r6, [r5, #20]	@ tmpContrst, <variable>.u32Contrst
	bl	VPSS_GetCscType	@
	sub	r1, fp, #44	@,,
	ldr	r0, [r5, #4]	@, <variable>.eOutputCS
	bl	VPSS_GetCscType	@
	ldr	r0, [fp, #-36]	@ stAlgCSIn.eCsType, stAlgCSIn.eCsType
	cmp	r6, #0	@ tmpContrst,
	sub	r7, r7, #50	@ tmpBright, <variable>.u32Bright,
	sub	r3, r0, #1	@ tmp145, stAlgCSIn.eCsType,
	movne	r1, r6	@ tmpContrst, tmpContrst
	moveq	r1, #1	@ tmpContrst,
	cmp	r3, #1	@ tmp145,
	bls	.L78	@,
	ldr	r3, [fp, #-44]	@ stAlgCSOut.eCsType, stAlgCSOut.eCsType
	sub	lr, r3, #1	@ tmp204, stAlgCSOut.eCsType,
	cmp	lr, #1	@ tmp204,
	bls	.L79	@,
	ldr	r3, [fp, #-32]	@ stAlgCSIn.eCsRange, stAlgCSIn.eCsRange
	cmp	r3, #1	@ stAlgCSIn.eCsRange,
	beq	.L73	@,
	cmp	r3, #2	@ stAlgCSIn.eCsRange,
	beq	.L80	@,
.L73:
	mov	r3, #0	@ tmp232,
	str	r3, [r4, #0]	@ tmp232, <variable>.s32CscDcIn_0
	str	r3, [r4, #8]	@ tmp232, <variable>.s32CscDcIn_2
	str	r3, [r4, #4]	@ tmp232, <variable>.s32CscDcIn_1
.L62:
	ldr	r3, [fp, #-40]	@ stAlgCSOut.eCsRange, stAlgCSOut.eCsRange
	cmp	r3, #1	@ stAlgCSOut.eCsRange,
	beq	.L74	@,
	cmp	r3, #2	@ stAlgCSOut.eCsRange,
	beq	.L81	@,
.L74:
	movw	ip, #298	@ tmp250,
	mul	r0, ip, r7	@ tmp249, tmp250, tmpBright
	add	r3, r0, #128	@ tmp251, tmp249,
	add	r2, r3, #255	@ tmp253, tmp251,
	cmp	r3, #0	@ tmp251,
	movlt	r3, r2	@ tmp258, tmp253
	mov	lr, r3, asr #8	@ tmp254, tmp258,
	str	lr, [r4, #12]	@ tmp254, <variable>.s32CscDcOut_0
	str	lr, [r4, #20]	@ tmp254, <variable>.s32CscDcOut_2
	str	lr, [r4, #16]	@ tmp254, <variable>.s32CscDcOut_1
.L66:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L78:
	ldr	ip, [fp, #-44]	@ stAlgCSOut.eCsType, stAlgCSOut.eCsType
	sub	r2, ip, #1	@ tmp147, stAlgCSOut.eCsType,
	cmp	r2, #1	@ tmp147,
	bls	.L82	@,
	ldr	ip, [fp, #-32]	@ stAlgCSIn.eCsRange, stAlgCSIn.eCsRange
	cmp	ip, #1	@ stAlgCSIn.eCsRange,
	beq	.L45	@,
	mov	r0, #50	@ tmp186,
	mul	r0, r0, r7	@, tmp186, tmpBright
	bl	__aeabi_idiv	@
	mvn	r2, #127	@ tmp192,
	str	r2, [r4, #0]	@ tmp192, <variable>.s32CscDcIn_0
	str	r2, [r4, #4]	@ tmp192, <variable>.s32CscDcIn_1
	sub	r3, r0, #16	@ tmp191,,
	str	r3, [r4, #8]	@ tmp191, <variable>.s32CscDcIn_2
.L47:
	ldr	r3, [fp, #-40]	@ stAlgCSOut.eCsRange, stAlgCSOut.eCsRange
	cmp	r3, #1	@ stAlgCSOut.eCsRange,
	beq	.L70	@,
	cmp	r3, #2	@ stAlgCSOut.eCsRange,
	beq	.L83	@,
.L70:
	mov	r1, #0	@ tmp201,
	str	r1, [r4, #12]	@ tmp201, <variable>.s32CscDcOut_0
	str	r1, [r4, #20]	@ tmp201, <variable>.s32CscDcOut_2
	str	r1, [r4, #16]	@ tmp201, <variable>.s32CscDcOut_1
	b	.L66	@
.L82:
	ldr	r1, [fp, #-32]	@ stAlgCSIn.eCsRange, stAlgCSIn.eCsRange
	cmp	r1, #1	@ stAlgCSIn.eCsRange,
	beq	.L37	@,
	mvn	r2, #127	@ tmp157,
	mvn	r0, #15	@ tmp156,
	str	r2, [r4, #0]	@ tmp157, <variable>.s32CscDcIn_0
	str	r2, [r4, #4]	@ tmp157, <variable>.s32CscDcIn_1
	str	r0, [r4, #8]	@ tmp156, <variable>.s32CscDcIn_2
.L55:
	ldr	r1, [fp, #-40]	@ stAlgCSOut.eCsRange, stAlgCSOut.eCsRange
	mov	ip, #128	@ tmp223,
	str	ip, [r4, #12]	@ tmp223, <variable>.s32CscDcOut_0
	cmp	r1, #1	@ stAlgCSOut.eCsRange,
	str	ip, [r4, #16]	@ tmp223, <variable>.s32CscDcOut_1
	addne	r7, r7, #16	@ tmp222, tmpBright,
	str	r7, [r4, #20]	@ tmp222, <variable>.s32CscDcOut_2
	b	.L66	@
.L79:
	ldr	r3, [fp, #-32]	@ stAlgCSIn.eCsRange, stAlgCSIn.eCsRange
	cmp	r3, #1	@ stAlgCSIn.eCsRange,
	beq	.L71	@,
	cmp	r3, #2	@ stAlgCSIn.eCsRange,
	beq	.L84	@,
.L71:
	mov	r0, #0	@ tmp213,
	str	r0, [r4, #0]	@ tmp213, <variable>.s32CscDcIn_0
	str	r0, [r4, #8]	@ tmp213, <variable>.s32CscDcIn_2
	mov	ip, #128	@ tmp223,
	str	r0, [r4, #4]	@ tmp213, <variable>.s32CscDcIn_1
	ldr	r1, [fp, #-40]	@ stAlgCSOut.eCsRange, stAlgCSOut.eCsRange
	str	ip, [r4, #12]	@ tmp223, <variable>.s32CscDcOut_0
	cmp	r1, #1	@ stAlgCSOut.eCsRange,
	str	ip, [r4, #16]	@ tmp223, <variable>.s32CscDcOut_1
	addne	r7, r7, #16	@ tmp222, tmpBright,
	str	r7, [r4, #20]	@ tmp222, <variable>.s32CscDcOut_2
	b	.L66	@
.L81:
	movw	r1, #298	@ tmp243,
	mul	r7, r1, r7	@ tmp242, tmp243, tmpBright
	add	r7, r7, #128	@ tmp244, tmp242,
	add	ip, r7, #255	@ tmp247, tmp244,
	cmp	r7, #0	@ tmp244,
	movlt	r7, ip	@ tmp257, tmp247
	mov	r0, r7, asr #8	@ tmp248, tmp257,
	add	r2, r0, #16	@ D.24378, tmp248,
	str	r2, [r4, #12]	@ D.24378, <variable>.s32CscDcOut_0
	str	r2, [r4, #20]	@ D.24378, <variable>.s32CscDcOut_2
	str	r2, [r4, #16]	@ D.24378, <variable>.s32CscDcOut_1
	b	.L66	@
.L80:
	mov	lr, #16	@ tmp229,
	str	lr, [r4, #0]	@ tmp229, <variable>.s32CscDcIn_0
	str	lr, [r4, #8]	@ tmp229, <variable>.s32CscDcIn_2
	str	lr, [r4, #4]	@ tmp229, <variable>.s32CscDcIn_1
	b	.L62	@
.L84:
	mov	r2, #16	@ tmp210,
	str	r2, [r4, #0]	@ tmp210, <variable>.s32CscDcIn_0
	str	r2, [r4, #8]	@ tmp210, <variable>.s32CscDcIn_2
	str	r2, [r4, #4]	@ tmp210, <variable>.s32CscDcIn_1
	b	.L55	@
.L45:
	mov	lr, #50	@ tmp170,
	mul	r0, lr, r7	@, tmp170, tmpBright
	bl	__aeabi_idiv	@
	mvn	r1, #127	@ tmp174,
	str	r1, [r4, #0]	@ tmp174, <variable>.s32CscDcIn_0
	str	r1, [r4, #4]	@ tmp174, <variable>.s32CscDcIn_1
	str	r0, [r4, #8]	@, <variable>.s32CscDcIn_2
	b	.L47	@
.L83:
	mov	ip, #16	@ tmp198,
	str	ip, [r4, #12]	@ tmp198, <variable>.s32CscDcOut_0
	str	ip, [r4, #20]	@ tmp198, <variable>.s32CscDcOut_2
	str	ip, [r4, #16]	@ tmp198, <variable>.s32CscDcOut_1
	b	.L66	@
.L37:
	mvn	r3, #127	@ tmp151,
	mov	lr, #0	@ tmp150,
	str	r3, [r4, #0]	@ tmp151, <variable>.s32CscDcIn_0
	stmib	r4, {r3, lr}	@ phole stm
	b	.L55	@
	.fnend
	.size	CalcCscDc, .-CalcCscDc
	.align	2
	.global	VPSS_ALG_CscCoefSet
	.type	VPSS_ALG_CscCoefSet, %function
VPSS_ALG_CscCoefSet:
	.fnstart
.LFB1254:
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
	mov	r5, r0	@ pstCscDrvPara, pstCscDrvPara
	mov	r4, r1	@ pstCscRtlPara, pstCscRtlPara
	bl	CalcCscDc	@
	mov	r0, r5	@, pstCscDrvPara
	mov	r1, r4	@, pstCscRtlPara
	bl	CalcCscMatrix	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_CscCoefSet, .-VPSS_ALG_CscCoefSet
	.global	SIN_TABLE
	.global	COS_TABLE
	.global	CSCTable_YCbCr601L_to_YCbCr709L
	.global	CSCTable_YCbCr709L_to_YCbCr601L
	.global	CSCTable_sRGBF_to_YCbCr709L
	.global	CSCTable_sRGBF_to_YCbCr601L
	.global	CSCTable_YCbCr709L_to_sRGBF
	.global	CSCTable_YCbCr601L_to_sRGBF
	.global	CSCTable_Identity
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSC_MatrixTbl, %object
	.size	CSC_MatrixTbl, 64
CSC_MatrixTbl:
	.word	CSCTable_Identity
	.word	CSCTable_Identity
	.word	CSCTable_Identity
	.word	CSCTable_Identity
	.word	CSCTable_Identity
	.word	CSCTable_Identity
	.word	CSCTable_YCbCr709L_to_YCbCr601L
	.word	CSCTable_YCbCr709L_to_sRGBF
	.word	CSCTable_Identity
	.word	CSCTable_YCbCr601L_to_YCbCr709L
	.word	CSCTable_Identity
	.word	CSCTable_YCbCr601L_to_sRGBF
	.word	CSCTable_Identity
	.word	CSCTable_sRGBF_to_YCbCr709L
	.word	CSCTable_sRGBF_to_YCbCr709L
	.word	CSCTable_Identity
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	COS_TABLE, %object
	.size	COS_TABLE, 244
COS_TABLE:
	.word	866
	.word	875
	.word	883
	.word	891
	.word	899
	.word	906
	.word	914
	.word	921
	.word	927
	.word	934
	.word	940
	.word	946
	.word	951
	.word	956
	.word	961
	.word	966
	.word	970
	.word	974
	.word	978
	.word	982
	.word	985
	.word	988
	.word	990
	.word	993
	.word	995
	.word	996
	.word	998
	.word	999
	.word	999
	.word	1000
	.word	1000
	.word	1000
	.word	999
	.word	999
	.word	998
	.word	996
	.word	995
	.word	993
	.word	990
	.word	988
	.word	985
	.word	982
	.word	978
	.word	974
	.word	970
	.word	966
	.word	961
	.word	956
	.word	951
	.word	946
	.word	940
	.word	934
	.word	927
	.word	921
	.word	914
	.word	906
	.word	899
	.word	891
	.word	883
	.word	875
	.word	866
	.type	SIN_TABLE, %object
	.size	SIN_TABLE, 244
SIN_TABLE:
	.word	-500
	.word	-485
	.word	-469
	.word	-454
	.word	-438
	.word	-422
	.word	-407
	.word	-391
	.word	-374
	.word	-358
	.word	-342
	.word	-325
	.word	-309
	.word	-292
	.word	-276
	.word	-259
	.word	-242
	.word	-225
	.word	-208
	.word	-191
	.word	-174
	.word	-156
	.word	-139
	.word	-122
	.word	-104
	.word	-87
	.word	-70
	.word	-52
	.word	-35
	.word	-17
	.word	0
	.word	17
	.word	35
	.word	52
	.word	70
	.word	87
	.word	104
	.word	122
	.word	139
	.word	156
	.word	174
	.word	191
	.word	208
	.word	225
	.word	242
	.word	259
	.word	276
	.word	292
	.word	309
	.word	325
	.word	342
	.word	358
	.word	374
	.word	391
	.word	407
	.word	422
	.word	438
	.word	454
	.word	469
	.word	485
	.word	500
	.type	CSCTable_YCbCr601L_to_YCbCr709L, %object
	.size	CSCTable_YCbCr601L_to_YCbCr709L, 36
CSCTable_YCbCr601L_to_YCbCr709L:
@ s32C00:
	.word	1024
@ s32C01:
	.word	-118
@ s32C02:
	.word	-213
@ s32C10:
	.word	0
@ s32C11:
	.word	1043
@ s32C12:
	.word	117
@ s32C20:
	.word	0
@ s32C21:
	.word	77
@ s32C22:
	.word	1050
	.type	CSCTable_YCbCr709L_to_YCbCr601L, %object
	.size	CSCTable_YCbCr709L_to_YCbCr601L, 36
CSCTable_YCbCr709L_to_YCbCr601L:
@ s32C00:
	.word	1024
@ s32C01:
	.word	102
@ s32C02:
	.word	196
@ s32C10:
	.word	0
@ s32C11:
	.word	1014
@ s32C12:
	.word	-113
@ s32C20:
	.word	0
@ s32C21:
	.word	-74
@ s32C22:
	.word	1007
	.type	CSCTable_sRGBF_to_YCbCr709L, %object
	.size	CSCTable_sRGBF_to_YCbCr709L, 36
CSCTable_sRGBF_to_YCbCr709L:
@ s32C00:
	.word	188
@ s32C01:
	.word	629
@ s32C02:
	.word	63
@ s32C10:
	.word	-103
@ s32C11:
	.word	-347
@ s32C12:
	.word	450
@ s32C20:
	.word	450
@ s32C21:
	.word	-409
@ s32C22:
	.word	-41
	.type	CSCTable_sRGBF_to_YCbCr601L, %object
	.size	CSCTable_sRGBF_to_YCbCr601L, 36
CSCTable_sRGBF_to_YCbCr601L:
@ s32C00:
	.word	264
@ s32C01:
	.word	516
@ s32C02:
	.word	100
@ s32C10:
	.word	-152
@ s32C11:
	.word	-298
@ s32C12:
	.word	450
@ s32C20:
	.word	450
@ s32C21:
	.word	-377
@ s32C22:
	.word	-73
	.type	CSCTable_YCbCr709L_to_sRGBF, %object
	.size	CSCTable_YCbCr709L_to_sRGBF, 36
CSCTable_YCbCr709L_to_sRGBF:
@ s32C00:
	.word	1192
@ s32C01:
	.word	0
@ s32C02:
	.word	1836
@ s32C10:
	.word	1192
@ s32C11:
	.word	-218
@ s32C12:
	.word	-547
@ s32C20:
	.word	1192
@ s32C21:
	.word	2166
@ s32C22:
	.word	0
	.type	CSCTable_YCbCr601L_to_sRGBF, %object
	.size	CSCTable_YCbCr601L_to_sRGBF, 36
CSCTable_YCbCr601L_to_sRGBF:
@ s32C00:
	.word	1192
@ s32C01:
	.word	0
@ s32C02:
	.word	1634
@ s32C10:
	.word	1192
@ s32C11:
	.word	-400
@ s32C12:
	.word	-833
@ s32C20:
	.word	1192
@ s32C21:
	.word	2066
@ s32C22:
	.word	0
	.type	CSCTable_Identity, %object
	.size	CSCTable_Identity, 36
CSCTable_Identity:
@ s32C00:
	.word	1024
@ s32C01:
	.word	0
@ s32C02:
	.word	0
@ s32C10:
	.word	0
@ s32C11:
	.word	1024
@ s32C12:
	.word	0
@ s32C20:
	.word	0
@ s32C21:
	.word	0
@ s32C22:
	.word	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
