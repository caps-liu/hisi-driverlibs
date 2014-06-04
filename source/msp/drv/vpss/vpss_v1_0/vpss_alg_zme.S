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
	.file	"vpss_alg_zme.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_zme)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_zme.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_zme.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_zme.o -O2 -Wall -Wundef
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
	.type	VZmeTransVpssCoefAlign, %function
VZmeTransVpssCoefAlign:
	.fnstart
.LFB1246:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #156
	sub	sp, sp, #156	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #3	@ enTap,
	mov	sl, r2	@ pBitCoef, pBitCoef
	movhi	r7, #2	@ prephitmp.466,
	bhi	.L3	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp340,
	movt	r3, #:upper16:.LANCHOR0	@ tmp340,
	ldr	r7, [r3, r1, asl #2]	@ u32Tap, CSWTCH.418
	cmp	r7, #8	@ u32Tap,
	bne	.L19	@,
	ldrsh	r8, [r0, #0]	@ tmp348,* ps16Coef
	add	r4, r0, #2	@ ps16Coef.530, ps16Coef,
	ldrsh	r1, [r0, #2]	@ tmp341,
	movw	r3, #:lower16:1047552	@ tmp343,
	ldrsh	r5, [r4, #2]	@ tmp345,
	add	r0, r4, #2	@ ps16Coef.533, ps16Coef.530,
	mov	r2, r8, asl #22	@ tmp349, tmp348,
	movt	r3, #:upper16:1047552	@ tmp343,
	mov	r6, r1, asl #10	@ tmp342, tmp341,
	add	r8, r0, #2	@ ps16Coef.536, ps16Coef.533,
	and	ip, r6, r3	@ tmp343, tmp342, tmp343
	mov	r7, r2, lsr #22	@ tmp349, tmp349,
	add	r9, ip, r5, asl #20	@, tmp347, tmp343, tmp345,
	add	r1, r8, #2	@ ps16Coef.545, ps16Coef.536,
	add	r4, r9, r7	@ tmp351, tmp347, tmp349
	str	r4, [sl, #196]	@ tmp351, <variable>.s32CoefAttr
	ldrsh	r6, [r8, #2]	@ tmp352,
	movw	r3, #:lower16:1047552	@ tmp354,
	ldrsh	r2, [r0, #2]	@ tmp359,
	movt	r3, #:upper16:1047552	@ tmp354,
	ldrsh	ip, [r1, #2]	@ tmp356,
	add	r0, r1, #2	@ ps16Coef.548, ps16Coef.545,
	mov	r5, r6, asl #10	@ tmp353, tmp352,
	add	r6, r0, #2	@ ps16Coef.551, ps16Coef.548,
	mov	r7, r2, asl #22	@ tmp360, tmp359,
	and	r9, r5, r3	@ tmp354, tmp353, tmp354
	add	r8, r9, ip, asl #20	@, tmp358, tmp354, tmp356,
	add	r9, r6, #2	@ ps16Coef.560, ps16Coef.551,
	mov	r4, r7, lsr #22	@ tmp360, tmp360,
	add	ip, r9, #2	@ ps16Coef.563, ps16Coef.560,
	add	r2, r8, r4	@ tmp362, tmp358, tmp360
	str	r2, [sl, #200]	@ tmp362, <variable>.s32CoefAttr
	ldrsh	r5, [r0, #2]	@ tmp367,
	movw	r8, #:lower16:1047552	@ tmp365,
	ldrsh	r7, [r6, #2]	@ tmp363,
	movt	r8, #:upper16:1047552	@ tmp365,
	add	r2, ip, #2	@ ps16Coef.570, ps16Coef.563,
	mov	r4, r5, asl #22	@ tmp368, tmp367,
	mov	r5, r8	@ tmp373, tmp365
	mov	r3, r7, asl #10	@ tmp364, tmp363,
	add	r7, r2, #2	@ ps16Coef.573, ps16Coef.570,
	and	r0, r3, r8	@ tmp365, tmp364, tmp365
	mov	r1, r4, lsr #22	@ tmp368, tmp368,
	add	r6, r0, r1	@ tmp370, tmp365, tmp368
	str	r6, [sl, #204]	@ tmp370, <variable>.s32CoefAttr
	ldrsh	r3, [ip, #2]	@ tmp371,
	add	r6, r7, #2	@ ps16Coef.576, ps16Coef.573,
	ldrsh	r8, [r9, #2]	@ tmp378,
	add	r9, r6, #2	@ ps16Coef.585, ps16Coef.576,
	ldrsh	r0, [r2, #2]	@ tmp375,
	mov	r4, r3, asl #10	@ tmp372, tmp371,
	mov	r3, r5	@ tmp384, tmp373
	mov	r1, r8, asl #22	@ tmp379, tmp378,
	and	r2, r4, r5	@ tmp373, tmp372, tmp373
	add	r8, r2, r0, asl #20	@, tmp377, tmp373, tmp375,
	add	r0, r9, #2	@ ps16Coef.588, ps16Coef.585,
	mov	ip, r1, lsr #22	@ tmp379, tmp379,
	add	r4, r0, #2	@ ps16Coef.591, ps16Coef.588,
	add	r5, r8, ip	@ tmp381, tmp377, tmp379
	str	r5, [sl, #208]	@ tmp381, <variable>.s32CoefAttr
	ldrsh	r1, [r6, #2]	@ tmp382,
	add	r6, r4, #2	@ ps16Coef.600, ps16Coef.591,
	ldrsh	r2, [r7, #2]	@ tmp389,
	add	r7, r6, #2	@ ps16Coef.603, ps16Coef.600,
	ldrsh	ip, [r9, #2]	@ tmp386,
	mov	r8, r1, asl #10	@ tmp383, tmp382,
	mov	r1, r3	@ tmp395, tmp384
	mov	r9, r2, asl #22	@ tmp390, tmp389,
	and	r5, r8, r3	@ tmp384, tmp383, tmp384
	add	r3, r5, ip, asl #20	@, tmp388, tmp384, tmp386,
	add	r5, r7, #2	@ ps16Coef.610, ps16Coef.603,
	mov	r8, r9, lsr #22	@ tmp390, tmp390,
	add	ip, r5, #2	@ ps16Coef.613, ps16Coef.610,
	add	r2, r3, r8	@ tmp392, tmp388, tmp390
	str	r2, [sl, #212]	@ tmp392, <variable>.s32CoefAttr
	ldrsh	r9, [r0, #2]	@ tmp397,
	mov	r2, r1	@ tmp403, tmp395
	ldrsh	r3, [r4, #2]	@ tmp393,
	add	r4, ip, #2	@ ps16Coef.616, ps16Coef.613,
	mov	r0, r9, asl #22	@ tmp398, tmp397,
	add	r9, r4, #2	@ ps16Coef.625, ps16Coef.616,
	mov	r8, r3, asl #10	@ tmp394, tmp393,
	mov	r3, r1	@ tmp414, tmp403
	mov	r0, r0, lsr #22	@ tmp398, tmp398,
	and	r1, r8, r1	@ tmp395, tmp394, tmp395
	add	r1, r1, r0	@ tmp400, tmp395, tmp398
	str	r1, [sl, #216]	@ tmp400, <variable>.s32CoefAttr
	ldrsh	r7, [r7, #2]	@ tmp401,
	add	r0, r9, #2	@ ps16Coef.628, ps16Coef.625,
	ldrsh	r6, [r6, #2]	@ tmp408,
	add	r1, r0, #2	@ ps16Coef.631, ps16Coef.628,
	ldrsh	r8, [r5, #2]	@ tmp405,
	add	r5, r1, #2	@, ps16Coef.631,
	mov	r7, r7, asl #10	@, tmp401,
	str	r7, [fp, #-48]	@, %sfp
	str	r5, [fp, #-52]	@, %sfp
	add	r7, r5, #2	@ ps16Coef.643,,
	ldr	r5, [fp, #-48]	@, %sfp
	mov	r6, r6, asl #22	@ tmp409, tmp408,
	and	r2, r5, r2	@ tmp403,, tmp403
	mov	r6, r6, lsr #22	@ tmp409, tmp409,
	add	r2, r2, r8, asl #20	@, tmp407, tmp403, tmp405,
	mov	r5, r3	@ tmp425, tmp414
	add	r8, r2, r6	@ tmp411, tmp407, tmp409
	str	r8, [sl, #220]	@ tmp411, <variable>.s32CoefAttr
	ldrsh	r2, [r4, #2]	@ tmp412,
	add	r8, r7, #2	@ ps16Coef.650, ps16Coef.643,
	ldrsh	ip, [ip, #2]	@ tmp419,
	add	r6, r8, #2	@, ps16Coef.650,
	str	r6, [fp, #-56]	@, %sfp
	ldrsh	r6, [r9, #2]	@ tmp416,
	mov	r4, r2, asl #10	@ tmp413, tmp412,
	mov	ip, ip, asl #22	@ tmp420, tmp419,
	and	r9, r4, r3	@ tmp414, tmp413, tmp414
	mov	r2, r3	@ tmp433, tmp425
	ldr	r4, [fp, #-56]	@, %sfp
	add	r3, r9, r6, asl #20	@, tmp418, tmp414, tmp416,
	mov	ip, ip, lsr #22	@ tmp420, tmp420,
	add	r3, r3, ip	@ tmp422, tmp418, tmp420
	str	r3, [sl, #224]	@ tmp422, <variable>.s32CoefAttr
	ldrsh	r9, [r1, #2]	@,
	add	r6, r4, #2	@ ps16Coef.656,,
	ldrsh	ip, [r0, #2]	@ tmp427,
	add	r4, r6, #2	@ ps16Coef.665, ps16Coef.656,
	mov	r3, r5	@ tmp444, tmp433
	str	r9, [fp, #-48]	@, %sfp
	add	r9, r4, #2	@ ps16Coef.668, ps16Coef.665,
	ldr	r0, [fp, #-48]	@, %sfp
	add	r1, r9, #2	@, ps16Coef.668,
	str	r1, [fp, #-60]	@, %sfp
	mov	ip, ip, asl #22	@ tmp428, tmp427,
	mov	r1, r0, asl #10	@,,
	ldr	r0, [fp, #-60]	@, %sfp
	str	r1, [fp, #-48]	@, %sfp
	add	r1, r0, #2	@,,
	ldr	r0, [fp, #-48]	@, %sfp
	str	r1, [fp, #-76]	@, %sfp
	mov	r1, ip, lsr #22	@ tmp428, tmp428,
	and	r5, r0, r5	@ tmp425,, tmp425
	add	r0, r5, r1	@ tmp430, tmp425, tmp428
	str	r0, [sl, #228]	@ tmp430, <variable>.s32CoefAttr
	ldr	ip, [fp, #-52]	@, %sfp
	mov	r0, r2	@ tmp455, tmp444
	ldrsh	r7, [r7, #2]	@ tmp431,
	ldrsh	r8, [r8, #2]	@,
	ldr	r1, [fp, #-76]	@, %sfp
	ldrsh	r5, [ip, #2]	@ tmp438,
	mov	r7, r7, asl #10	@ tmp432, tmp431,
	str	r8, [fp, #-48]	@, %sfp
	add	ip, r1, #2	@ ps16Coef.683,,
	add	r8, ip, #2	@ ps16Coef.690, ps16Coef.683,
	and	r2, r7, r2	@ tmp433, tmp432, tmp433
	ldr	r7, [fp, #-48]	@, %sfp
	add	r1, r8, #2	@, ps16Coef.690,
	str	r1, [fp, #-64]	@, %sfp
	mov	r1, r5, asl #22	@ tmp439, tmp438,
	add	r2, r2, r7, asl #20	@, tmp437, tmp433,,
	mov	r5, r1, lsr #22	@ tmp439, tmp439,
	add	r7, r2, r5	@ tmp441, tmp437, tmp439
	str	r7, [sl, #232]	@ tmp441, <variable>.s32CoefAttr
	ldr	r2, [fp, #-56]	@, %sfp
	mov	r1, r3	@ tmp463, tmp455
	ldrsh	r7, [r6, #2]	@ tmp442,
	ldr	r6, [fp, #-64]	@, %sfp
	add	r5, r6, #2	@ ps16Coef.696,,
	ldrsh	r6, [r2, #2]	@ tmp449,
	mov	r7, r7, asl #10	@ tmp443, tmp442,
	add	r2, r5, #2	@, ps16Coef.696,
	str	r2, [fp, #-56]	@, %sfp
	mov	r2, r3	@ tmp474, tmp463
	ldrsh	r4, [r4, #2]	@ tmp446,
	and	r3, r7, r3	@ tmp444, tmp443, tmp444
	mov	r6, r6, asl #22	@ tmp450, tmp449,
	ldr	r7, [fp, #-56]	@, %sfp
	add	r3, r3, r4, asl #20	@, tmp448, tmp444, tmp446,
	mov	r6, r6, lsr #22	@ tmp450, tmp450,
	add	r4, r7, #2	@ ps16Coef.708,,
	add	r3, r3, r6	@ tmp452, tmp448, tmp450
	add	r7, r4, #2	@, ps16Coef.708,
	str	r7, [fp, #-48]	@, %sfp
	str	r3, [sl, #236]	@ tmp452, <variable>.s32CoefAttr
	ldrsh	r6, [r9, #2]	@ tmp457,
	add	r9, r7, #2	@,,
	ldr	r7, [fp, #-60]	@, %sfp
	str	r9, [fp, #-52]	@, %sfp
	add	r9, r9, #2	@ ps16Coef.723,,
	mov	r6, r6, asl #22	@ tmp458, tmp457,
	ldrsh	r3, [r7, #2]	@,
	add	r7, r9, #2	@, ps16Coef.723,
	mov	r6, r6, lsr #22	@ tmp458, tmp458,
	str	r3, [fp, #-68]	@, %sfp
	mov	r3, r0	@ tmp485, tmp474
	str	r7, [fp, #-60]	@, %sfp
	ldr	r7, [fp, #-68]	@, %sfp
	mov	r7, r7, asl #10	@,,
	str	r7, [fp, #-68]	@, %sfp
	ldr	r7, [fp, #-60]	@, %sfp
	add	r7, r7, #2	@,,
	str	r7, [fp, #-72]	@, %sfp
	ldr	r7, [fp, #-68]	@, %sfp
	and	r0, r7, r0	@ tmp455,, tmp455
	add	r0, r0, r6	@ tmp460, tmp455, tmp458
	str	r0, [sl, #240]	@ tmp460, <variable>.s32CoefAttr
	ldrsh	r0, [ip, #2]	@ tmp461,
	ldr	ip, [fp, #-76]	@, %sfp
	ldrsh	r7, [r8, #2]	@,
	mov	r0, r0, asl #10	@ tmp462, tmp461,
	ldr	r8, [fp, #-72]	@, %sfp
	ldrsh	r6, [ip, #2]	@ tmp468,
	mov	ip, r1	@ tmp493, tmp485
	str	r7, [fp, #-76]	@, %sfp
	and	r1, r0, r1	@ tmp463, tmp462, tmp463
	ldr	r0, [fp, #-76]	@, %sfp
	add	r7, r8, #2	@ ps16Coef.736,,
	mov	r6, r6, asl #22	@ tmp469, tmp468,
	add	r8, r7, #2	@ ps16Coef.745, ps16Coef.736,
	add	r1, r1, r0, asl #20	@, tmp467, tmp463,,
	mov	r6, r6, lsr #22	@ tmp469, tmp469,
	add	r1, r1, r6	@ tmp471, tmp467, tmp469
	str	r1, [sl, #244]	@ tmp471, <variable>.s32CoefAttr
	ldr	r1, [fp, #-64]	@, %sfp
	add	r6, r8, #2	@ ps16Coef.748, ps16Coef.745,
	ldrsh	r5, [r5, #2]	@ tmp472,
	mov	r0, r2	@ tmp504, tmp493
	ldrsh	r1, [r1, #2]	@,
	mov	r5, r5, asl #10	@, tmp472,
	str	r1, [fp, #-76]	@, %sfp
	add	r1, r6, #2	@, ps16Coef.748,
	str	r1, [fp, #-88]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	ldrsh	r1, [r1, #2]	@,
	str	r5, [fp, #-80]	@, %sfp
	str	r1, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-88]	@, %sfp
	add	r1, r1, #2	@,,
	str	r1, [fp, #-68]	@, %sfp
	add	r5, r1, #2	@,,
	ldr	r1, [fp, #-76]	@, %sfp
	str	r5, [fp, #-56]	@, %sfp
	mov	r5, r1, asl #22	@ tmp480,,
	ldr	r1, [fp, #-80]	@, %sfp
	and	r2, r1, r2	@ tmp474,, tmp474
	ldr	r1, [fp, #-64]	@, %sfp
	mov	r5, r5, lsr #22	@ tmp480, tmp480,
	add	r2, r2, r1, asl #20	@, tmp478, tmp474,,
	mov	r1, r3	@ tmp515, tmp504
	add	r2, r2, r5	@ tmp482, tmp478, tmp480
	str	r2, [sl, #248]	@ tmp482, <variable>.s32CoefAttr
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r2, [fp, #-56]	@, %sfp
	ldrsh	r4, [r4, #2]	@ tmp487,
	add	r2, r2, #2	@,,
	str	r2, [fp, #-104]	@, %sfp
	ldrsh	r5, [r5, #2]	@,
	add	r2, r2, #2	@,,
	mov	r4, r4, asl #22	@ tmp488, tmp487,
	str	r5, [fp, #-48]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp488, tmp488,
	str	r2, [fp, #-80]	@, %sfp
	mov	r2, r3	@ tmp523, tmp515
	ldr	r5, [fp, #-80]	@, %sfp
	add	r5, r5, #2	@,,
	str	r5, [fp, #-76]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	mov	r5, r5, asl #10	@,,
	str	r5, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-76]	@, %sfp
	add	r5, r5, #2	@,,
	str	r5, [fp, #-64]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	and	r3, r5, r3	@ tmp485,, tmp485
	add	r5, r3, r4	@ tmp490, tmp485, tmp488
	str	r5, [sl, #252]	@ tmp490, <variable>.s32CoefAttr
	ldrsh	r4, [r9, #2]	@ tmp491,
	ldr	r9, [fp, #-52]	@, %sfp
	ldr	r5, [fp, #-60]	@, %sfp
	ldrsh	r3, [r9, #2]	@,
	str	r3, [fp, #-84]	@, %sfp
	mov	r3, ip	@ tmp534, tmp523
	ldrsh	r9, [r5, #2]	@,
	ldr	r5, [fp, #-64]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	add	r9, r5, #2	@ ps16Coef.788,,
	mov	r5, r4, asl #10	@, tmp491,
	str	r5, [fp, #-52]	@, %sfp
	ldr	r5, [fp, #-84]	@, %sfp
	add	r4, r9, #2	@, ps16Coef.788,
	str	r4, [fp, #-60]	@, %sfp
	mov	r4, r5, asl #22	@ tmp499,,
	ldr	r5, [fp, #-52]	@, %sfp
	and	ip, r5, ip	@ tmp493,, tmp493
	ldr	r5, [fp, #-48]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp499, tmp499,
	add	ip, ip, r5, asl #20	@, tmp497, tmp493,,
	ldr	r5, [fp, #-60]	@, %sfp
	add	r5, r5, #2	@,,
	str	r5, [fp, #-48]	@, %sfp
	add	r5, r5, #2	@,,
	str	r5, [fp, #-52]	@, %sfp
	add	r5, ip, r4	@ tmp501, tmp497, tmp499
	str	r5, [sl, #256]	@ tmp501, <variable>.s32CoefAttr
	ldr	r4, [fp, #-72]	@, %sfp
	ldrsh	ip, [r7, #2]	@ tmp502,
	ldrsh	r8, [r8, #2]	@,
	ldrsh	r7, [r4, #2]	@ tmp509,
	mov	r4, r0	@ tmp545, tmp534
	mov	ip, ip, asl #10	@ tmp503, tmp502,
	ldr	r5, [fp, #-52]	@, %sfp
	str	r8, [fp, #-72]	@, %sfp
	and	r0, ip, r0	@ tmp504, tmp503, tmp504
	ldr	ip, [fp, #-72]	@, %sfp
	mov	r7, r7, asl #22	@ tmp510, tmp509,
	add	r8, r5, #2	@ ps16Coef.810,,
	add	r5, r8, #2	@, ps16Coef.810,
	mov	r7, r7, lsr #22	@ tmp510, tmp510,
	add	r0, r0, ip, asl #20	@, tmp508, tmp504,,
	str	r5, [fp, #-100]	@, %sfp
	add	r7, r0, r7	@ tmp512, tmp508, tmp510
	add	r0, r5, #2	@,,
	str	r7, [sl, #260]	@ tmp512, <variable>.s32CoefAttr
	mov	ip, r1	@ tmp553, tmp545
	ldr	r5, [fp, #-88]	@, %sfp
	ldrsh	r6, [r6, #2]	@ tmp517,
	str	r0, [fp, #-96]	@, %sfp
	add	r0, r0, #2	@,,
	ldrsh	r7, [r5, #2]	@ tmp513,
	str	r0, [fp, #-92]	@, %sfp
	mov	r6, r6, asl #22	@ tmp518, tmp517,
	ldr	r5, [fp, #-92]	@, %sfp
	mov	r0, r1	@ tmp564, tmp553
	mov	r7, r7, asl #10	@ tmp514, tmp513,
	mov	r6, r6, lsr #22	@ tmp518, tmp518,
	add	r5, r5, #2	@,,
	and	r1, r7, r1	@ tmp515, tmp514, tmp515
	str	r5, [fp, #-112]	@, %sfp
	add	r1, r1, r6	@ tmp520, tmp515, tmp518
	add	r5, r5, #2	@,,
	str	r5, [fp, #-108]	@, %sfp
	str	r1, [sl, #264]	@ tmp520, <variable>.s32CoefAttr
	add	r1, r5, #2	@,,
	ldr	r7, [fp, #-56]	@, %sfp
	ldr	r5, [fp, #-68]	@, %sfp
	ldrsh	r6, [r7, #2]	@ tmp521,
	str	r1, [fp, #-84]	@, %sfp
	add	r1, r1, #2	@,,
	ldrsh	r7, [r5, #2]	@ tmp528,
	ldr	r5, [fp, #-104]	@, %sfp
	mov	r6, r6, asl #10	@ tmp522, tmp521,
	str	r1, [fp, #-56]	@, %sfp
	ldrsh	r1, [r5, #2]	@,
	mov	r5, r7, asl #22	@ tmp529, tmp528,
	mov	r5, r5, lsr #22	@ tmp529, tmp529,
	str	r1, [fp, #-68]	@, %sfp
	mov	r1, r2	@ tmp575, tmp564
	ldr	r7, [fp, #-68]	@, %sfp
	and	r2, r6, r2	@ tmp523, tmp522, tmp523
	ldr	r6, [fp, #-56]	@, %sfp
	add	r2, r2, r7, asl #20	@, tmp527, tmp523,,
	add	r7, r6, #2	@,,
	add	r6, r7, #2	@,,
	str	r7, [fp, #-72]	@, %sfp
	str	r6, [fp, #-88]	@, %sfp
	add	r5, r2, r5	@ tmp531, tmp527, tmp529
	str	r5, [sl, #268]	@ tmp531, <variable>.s32CoefAttr
	ldr	r7, [fp, #-64]	@, %sfp
	ldr	r6, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	ldrsh	r7, [r7, #2]	@,
	ldrsh	r5, [r6, #2]	@ tmp532,
	ldrsh	r6, [r2, #2]	@ tmp539,
	mov	r2, r3	@ tmp583, tmp575
	str	r7, [fp, #-64]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	add	r7, r7, #2	@,,
	str	r7, [fp, #-68]	@, %sfp
	mov	r7, r5, asl #10	@ tmp533, tmp532,
	ldr	r5, [fp, #-68]	@, %sfp
	and	r3, r7, r3	@ tmp534, tmp533, tmp534
	add	r5, r5, #2	@,,
	str	r5, [fp, #-80]	@, %sfp
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r5, r6, asl #22	@ tmp540, tmp539,
	add	r6, r3, r7, asl #20	@, tmp538, tmp534,,
	mov	r7, r5, lsr #22	@ tmp540, tmp540,
	add	r5, r6, r7	@ tmp542, tmp538, tmp540
	str	r5, [sl, #272]	@ tmp542, <variable>.s32CoefAttr
	ldr	r7, [fp, #-60]	@, %sfp
	mov	r3, r4	@ tmp594, tmp583
	ldr	r6, [fp, #-80]	@, %sfp
	ldrsh	r5, [r9, #2]	@ tmp547,
	add	r9, r6, #2	@ ps16Coef.868,,
	ldrsh	r6, [r7, #2]	@ tmp543,
	add	r7, r9, #2	@, ps16Coef.868,
	str	r7, [fp, #-76]	@, %sfp
	add	r7, r7, #2	@,,
	str	r7, [fp, #-64]	@, %sfp
	mov	r6, r6, asl #10	@, tmp543,
	str	r6, [fp, #-104]	@, %sfp
	ldr	r6, [fp, #-64]	@, %sfp
	mov	r5, r5, asl #22	@ tmp548, tmp547,
	mov	r7, r4	@ tmp605, tmp594
	add	r6, r6, #2	@,,
	str	r6, [fp, #-60]	@, %sfp
	ldr	r6, [fp, #-104]	@, %sfp
	and	r4, r6, r4	@ tmp545,, tmp545
	mov	r6, r5, lsr #22	@ tmp548, tmp548,
	add	r4, r4, r6	@ tmp550, tmp545, tmp548
	str	r4, [sl, #276]	@ tmp550, <variable>.s32CoefAttr
	ldr	r5, [fp, #-52]	@, %sfp
	ldr	r6, [fp, #-60]	@, %sfp
	ldrsh	r4, [r5, #2]	@ tmp551,
	add	r5, r6, #2	@,,
	ldr	r6, [fp, #-48]	@, %sfp
	str	r5, [fp, #-52]	@, %sfp
	ldrsh	r5, [r6, #2]	@ tmp558,
	ldr	r6, [fp, #-52]	@, %sfp
	add	r6, r6, #2	@,,
	str	r6, [fp, #-128]	@, %sfp
	ldrsh	r6, [r8, #2]	@,
	mov	r8, r4, asl #10	@ tmp552, tmp551,
	mov	r4, r5, asl #22	@ tmp559, tmp558,
	str	r6, [fp, #-48]	@, %sfp
	mov	r6, ip	@ tmp613, tmp605
	ldr	r5, [fp, #-48]	@, %sfp
	and	ip, r8, ip	@ tmp553, tmp552, tmp553
	ldr	r8, [fp, #-128]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp559, tmp559,
	add	ip, ip, r5, asl #20	@, tmp557, tmp553,,
	add	r5, r8, #2	@,,
	add	r8, r5, #2	@,,
	str	r5, [fp, #-48]	@, %sfp
	str	r8, [fp, #-124]	@, %sfp
	add	r8, ip, r4	@ tmp561, tmp557, tmp559
	str	r8, [sl, #280]	@ tmp561, <variable>.s32CoefAttr
	ldr	r8, [fp, #-92]	@, %sfp
	ldr	r4, [fp, #-96]	@, %sfp
	ldr	r5, [fp, #-100]	@, %sfp
	ldrsh	r8, [r8, #2]	@,
	ldrsh	ip, [r4, #2]	@ tmp562,
	ldrsh	r4, [r5, #2]	@ tmp569,
	mov	r5, r0	@ tmp624, tmp613
	str	r8, [fp, #-92]	@, %sfp
	ldr	r8, [fp, #-124]	@, %sfp
	add	r8, r8, #2	@,,
	str	r8, [fp, #-140]	@, %sfp
	mov	r8, ip, asl #10	@ tmp563, tmp562,
	ldr	ip, [fp, #-140]	@, %sfp
	and	r0, r8, r0	@ tmp564, tmp563, tmp564
	ldr	r8, [fp, #-92]	@, %sfp
	add	ip, ip, #2	@,,
	str	ip, [fp, #-104]	@, %sfp
	mov	ip, r4, asl #22	@ tmp570, tmp569,
	ldr	r4, [fp, #-104]	@, %sfp
	add	r0, r0, r8, asl #20	@, tmp568, tmp564,,
	mov	ip, ip, lsr #22	@ tmp570, tmp570,
	add	r8, r4, #2	@,,
	add	r4, r8, #2	@,,
	str	r8, [fp, #-136]	@, %sfp
	str	r4, [fp, #-120]	@, %sfp
	add	ip, r0, ip	@ tmp572, tmp568, tmp570
	str	ip, [sl, #284]	@ tmp572, <variable>.s32CoefAttr
	ldr	r8, [fp, #-112]	@, %sfp
	ldr	r4, [fp, #-108]	@, %sfp
	ldr	ip, [fp, #-120]	@, %sfp
	ldrsh	r0, [r8, #2]	@ tmp577,
	ldrsh	r8, [r4, #2]	@ tmp573,
	add	ip, ip, #2	@,,
	str	ip, [fp, #-116]	@, %sfp
	mov	r4, r1	@ tmp635, tmp624
	mov	r0, r0, asl #22	@ tmp578, tmp577,
	mov	ip, r1	@ tmp643, tmp635
	mov	r8, r8, asl #10	@, tmp573,
	str	r8, [fp, #-92]	@, %sfp
	ldr	r8, [fp, #-116]	@, %sfp
	mov	r0, r0, lsr #22	@ tmp578, tmp578,
	add	r8, r8, #2	@,,
	str	r8, [fp, #-100]	@, %sfp
	ldr	r8, [fp, #-92]	@, %sfp
	and	r1, r8, r1	@ tmp575,, tmp575
	add	r1, r1, r0	@ tmp580, tmp575, tmp578
	str	r1, [sl, #288]	@ tmp580, <variable>.s32CoefAttr
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-100]	@, %sfp
	ldrsh	r1, [r8, #2]	@ tmp581,
	add	r8, r0, #2	@,,
	ldr	r0, [fp, #-84]	@, %sfp
	str	r8, [fp, #-96]	@, %sfp
	ldrsh	r8, [r0, #2]	@ tmp588,
	ldr	r0, [fp, #-96]	@, %sfp
	add	r0, r0, #2	@,,
	str	r0, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	ldrsh	r0, [r0, #2]	@,
	str	r0, [fp, #-84]	@, %sfp
	mov	r0, r1, asl #10	@, tmp581,
	str	r0, [fp, #-72]	@, %sfp
	mov	r1, r8, asl #22	@ tmp589, tmp588,
	ldr	r8, [fp, #-72]	@, %sfp
	mov	r0, r2	@ tmp654, tmp643
	mov	r1, r1, lsr #22	@ tmp589, tmp589,
	and	r2, r8, r2	@ tmp583,, tmp583
	ldr	r8, [fp, #-84]	@, %sfp
	add	r2, r2, r8, asl #20	@, tmp587, tmp583,,
	ldr	r8, [fp, #-56]	@, %sfp
	add	r1, r2, r1	@ tmp591, tmp587, tmp589
	add	r8, r8, #2	@,,
	str	r8, [fp, #-92]	@, %sfp
	add	r8, r8, #2	@,,
	str	r8, [fp, #-112]	@, %sfp
	str	r1, [sl, #292]	@ tmp591, <variable>.s32CoefAttr
	add	r8, r8, #2	@,,
	ldr	r1, [fp, #-68]	@, %sfp
	ldrsh	r2, [r1, #2]	@ tmp592,
	ldr	r1, [fp, #-88]	@, %sfp
	str	r8, [fp, #-108]	@, %sfp
	ldrsh	r8, [r1, #2]	@ tmp599,
	ldr	r1, [fp, #-108]	@, %sfp
	add	r1, r1, #2	@,,
	str	r1, [fp, #-84]	@, %sfp
	ldr	r1, [fp, #-80]	@, %sfp
	ldrsh	r1, [r1, #2]	@,
	str	r1, [fp, #-68]	@, %sfp
	mov	r1, r2, asl #10	@, tmp592,
	str	r1, [fp, #-80]	@, %sfp
	mov	r2, r8, asl #22	@ tmp600, tmp599,
	ldr	r8, [fp, #-80]	@, %sfp
	mov	r1, r3	@ tmp665, tmp654
	mov	r2, r2, lsr #22	@ tmp600, tmp600,
	and	r3, r8, r3	@ tmp594,, tmp594
	ldr	r8, [fp, #-68]	@, %sfp
	add	r3, r3, r8, asl #20	@, tmp598, tmp594,,
	ldr	r8, [fp, #-84]	@, %sfp
	add	r2, r3, r2	@ tmp602, tmp598, tmp600
	add	r8, r8, #2	@,,
	str	r8, [fp, #-72]	@, %sfp
	add	r8, r8, #2	@,,
	str	r8, [fp, #-88]	@, %sfp
	str	r2, [sl, #296]	@ tmp602, <variable>.s32CoefAttr
	ldr	r3, [fp, #-76]	@, %sfp
	ldrsh	r9, [r9, #2]	@ tmp607,
	ldrsh	r2, [r3, #2]	@,
	add	r3, r8, #2	@,,
	add	r8, r3, #2	@,,
	str	r3, [fp, #-68]	@, %sfp
	mov	r9, r9, asl #22	@ tmp608, tmp607,
	str	r8, [fp, #-80]	@, %sfp
	str	r2, [fp, #-76]	@, %sfp
	mov	r2, r7	@ tmp673, tmp665
	ldr	r3, [fp, #-76]	@, %sfp
	mov	r9, r9, lsr #22	@ tmp608, tmp608,
	mov	r8, r3, asl #10	@,,
	mov	r3, r7	@ tmp684, tmp673
	and	r7, r8, r7	@ tmp605,, tmp605
	str	r8, [fp, #-76]	@, %sfp
	add	r7, r7, r9	@ tmp610, tmp605, tmp608
	str	r7, [sl, #300]	@ tmp610, <variable>.s32CoefAttr
	ldr	r8, [fp, #-60]	@, %sfp
	ldr	r7, [fp, #-80]	@, %sfp
	ldrsh	r9, [r8, #2]	@,
	add	r7, r7, #2	@,,
	ldr	r8, [fp, #-64]	@, %sfp
	str	r7, [fp, #-76]	@, %sfp
	str	r9, [fp, #-132]	@, %sfp
	ldrsh	r9, [r8, #2]	@,
	str	r9, [fp, #-144]	@, %sfp
	add	r9, r7, #2	@,,
	ldr	r8, [fp, #-52]	@, %sfp
	str	r9, [fp, #-60]	@, %sfp
	ldrsh	r7, [r8, #2]	@,
	add	r8, r9, #2	@,,
	ldr	r9, [fp, #-132]	@, %sfp
	str	r8, [fp, #-64]	@, %sfp
	add	r8, r8, #2	@,,
	str	r7, [fp, #-148]	@, %sfp
	mov	r7, r9, asl #10	@ tmp612,,
	ldr	r9, [fp, #-144]	@, %sfp
	str	r8, [fp, #-52]	@, %sfp
	mov	r8, r9, asl #22	@ tmp619,,
	and	r9, r7, r6	@ tmp613, tmp612, tmp613
	ldr	r7, [fp, #-148]	@, %sfp
	add	r6, r9, r7, asl #20	@, tmp617, tmp613,,
	mov	r9, r8, lsr #22	@ tmp619, tmp619,
	add	r8, r6, r9	@ tmp621, tmp617, tmp619
	str	r8, [sl, #304]	@ tmp621, <variable>.s32CoefAttr
	ldr	r9, [fp, #-48]	@, %sfp
	mov	r7, r5	@ tmp695, tmp684
	ldr	r6, [fp, #-52]	@, %sfp
	ldrsh	r8, [r9, #2]	@ tmp622,
	add	r9, r6, #2	@,,
	ldr	r6, [fp, #-128]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldrsh	r9, [r6, #2]	@ tmp629,
	ldr	r6, [fp, #-48]	@, %sfp
	add	r6, r6, #2	@,,
	str	r6, [fp, #-156]	@, %sfp
	ldr	r6, [fp, #-124]	@, %sfp
	ldrsh	r6, [r6, #2]	@,
	str	r6, [fp, #-128]	@, %sfp
	mov	r6, r8, asl #10	@, tmp622,
	str	r6, [fp, #-124]	@, %sfp
	mov	r8, r9, asl #22	@ tmp630, tmp629,
	ldr	r9, [fp, #-124]	@, %sfp
	mov	r6, r5	@ tmp703, tmp695
	mov	r8, r8, lsr #22	@ tmp630, tmp630,
	and	r5, r9, r5	@ tmp624,, tmp624
	ldr	r9, [fp, #-128]	@, %sfp
	add	r5, r5, r9, asl #20	@, tmp628, tmp624,,
	ldr	r9, [fp, #-156]	@, %sfp
	add	r9, r9, #2	@,,
	str	r9, [fp, #-152]	@, %sfp
	add	r9, r9, #2	@,,
	str	r9, [fp, #-132]	@, %sfp
	add	r9, r5, r8	@ tmp632, tmp628, tmp630
	str	r9, [sl, #308]	@ tmp632, <variable>.s32CoefAttr
	ldr	r5, [fp, #-104]	@, %sfp
	ldr	r8, [fp, #-140]	@, %sfp
	ldrsh	r9, [r8, #2]	@ tmp637,
	ldrsh	r8, [r5, #2]	@,
	ldr	r5, [fp, #-132]	@, %sfp
	str	r8, [fp, #-104]	@, %sfp
	add	r5, r5, #2	@,,
	str	r5, [fp, #-148]	@, %sfp
	mov	r5, r9, asl #22	@, tmp637,
	ldr	r9, [fp, #-148]	@, %sfp
	mov	r8, r4	@ tmp714, tmp703
	str	r5, [fp, #-124]	@, %sfp
	add	r5, r9, #2	@,,
	ldr	r9, [fp, #-104]	@, %sfp
	str	r5, [fp, #-144]	@, %sfp
	mov	r5, r9, asl #10	@,,
	ldr	r9, [fp, #-144]	@, %sfp
	str	r5, [fp, #-104]	@, %sfp
	add	r5, r9, #2	@,,
	ldr	r9, [fp, #-104]	@, %sfp
	str	r5, [fp, #-180]	@, %sfp
	and	r5, r9, r4	@ tmp635,, tmp635
	ldr	r9, [fp, #-124]	@, %sfp
	mov	r9, r9, lsr #22	@,,
	add	r4, r5, r9	@ tmp640, tmp635,
	str	r4, [sl, #312]	@ tmp640, <variable>.s32CoefAttr
	ldr	r9, [fp, #-120]	@, %sfp
	ldr	r4, [fp, #-136]	@, %sfp
	ldrsh	r5, [r9, #2]	@,
	str	r5, [fp, #-104]	@, %sfp
	mov	r5, ip	@ tmp725, tmp714
	ldrsh	r9, [r4, #2]	@ tmp648,
	ldr	r4, [fp, #-180]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-168]	@, %sfp
	ldr	r4, [fp, #-116]	@, %sfp
	ldrsh	r4, [r4, #2]	@,
	str	r4, [fp, #-120]	@, %sfp
	ldr	r4, [fp, #-168]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-164]	@, %sfp
	ldr	r4, [fp, #-104]	@, %sfp
	mov	r4, r4, asl #10	@,,
	str	r4, [fp, #-116]	@, %sfp
	ldr	r4, [fp, #-164]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-176]	@, %sfp
	mov	r4, r9, asl #22	@ tmp649, tmp648,
	ldr	r9, [fp, #-116]	@, %sfp
	and	ip, r9, ip	@ tmp643,, tmp643
	ldr	r9, [fp, #-120]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp649, tmp649,
	add	ip, ip, r9, asl #20	@,, tmp643,,
	str	ip, [fp, #-104]	@, %sfp
	ldr	r9, [fp, #-104]	@, %sfp
	mov	ip, r0	@ tmp733, tmp725
	add	r4, r9, r4	@ tmp651,, tmp649
	str	r4, [sl, #316]	@ tmp651, <variable>.s32CoefAttr
	ldr	r4, [fp, #-96]	@, %sfp
	ldrsh	r9, [r4, #2]	@,
	str	r9, [fp, #-96]	@, %sfp
	ldr	r4, [fp, #-176]	@, %sfp
	add	r9, r4, #2	@,,
	ldr	r4, [fp, #-100]	@, %sfp
	str	r9, [fp, #-172]	@, %sfp
	ldrsh	r9, [r4, #2]	@ tmp659,
	ldr	r4, [fp, #-172]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-160]	@, %sfp
	ldr	r4, [fp, #-56]	@, %sfp
	ldrsh	r4, [r4, #2]	@,
	str	r0, [fp, #-56]	@ tmp4, %sfp
	str	r4, [fp, #-100]	@, %sfp
	ldr	r4, [fp, #-96]	@, %sfp
	mov	r4, r4, asl #10	@,,
	str	r4, [fp, #-96]	@, %sfp
	mov	r4, r9, asl #22	@ tmp660, tmp659,
	ldr	r9, [fp, #-96]	@, %sfp
	and	r0, r9, r0	@ tmp654,, tmp654
	ldr	r9, [fp, #-100]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp660, tmp660,
	add	r0, r0, r9, asl #20	@, tmp658, tmp654,,
	ldr	r9, [fp, #-160]	@, %sfp
	add	r4, r0, r4	@ tmp662, tmp658, tmp660
	add	r9, r9, #2	@,,
	str	r9, [fp, #-128]	@, %sfp
	add	r9, r9, #2	@,,
	str	r9, [fp, #-124]	@, %sfp
	str	r4, [sl, #320]	@ tmp662, <variable>.s32CoefAttr
	add	r9, r9, #2	@,,
	ldr	r4, [fp, #-92]	@, %sfp
	ldrsh	r0, [r4, #2]	@ tmp667,
	ldr	r4, [fp, #-112]	@, %sfp
	str	r9, [fp, #-140]	@, %sfp
	add	r9, r9, #2	@,,
	mov	r0, r0, asl #22	@ tmp668, tmp667,
	ldrsh	r4, [r4, #2]	@,
	str	r9, [fp, #-104]	@, %sfp
	mov	r0, r0, lsr #22	@ tmp668, tmp668,
	mov	r9, r1	@ tmp755, tmp733
	str	r4, [fp, #-92]	@, %sfp
	ldr	r4, [fp, #-104]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-136]	@, %sfp
	ldr	r4, [fp, #-92]	@, %sfp
	mov	r4, r4, asl #10	@,,
	str	r4, [fp, #-92]	@, %sfp
	ldr	r4, [fp, #-136]	@, %sfp
	add	r4, r4, #2	@,,
	str	r4, [fp, #-120]	@, %sfp
	ldr	r4, [fp, #-92]	@, %sfp
	and	r1, r4, r1	@ tmp665,, tmp665
	add	r4, r1, r0	@ tmp670, tmp665, tmp668
	str	r4, [sl, #324]	@ tmp670, <variable>.s32CoefAttr
	ldr	r1, [fp, #-84]	@, %sfp
	ldr	r0, [fp, #-108]	@, %sfp
	ldrsh	r4, [r1, #2]	@ tmp671,
	ldrsh	r1, [r0, #2]	@,
	mov	r4, r4, asl #10	@, tmp671,
	str	r1, [fp, #-84]	@, %sfp
	mov	r1, r2	@ tmp763, tmp755
	ldr	r0, [fp, #-72]	@, %sfp
	ldrsh	r0, [r0, #2]	@,
	str	r4, [fp, #-92]	@, %sfp
	str	r0, [fp, #-72]	@, %sfp
	ldr	r0, [fp, #-120]	@, %sfp
	add	r0, r0, #2	@,,
	str	r0, [fp, #-116]	@, %sfp
	add	r4, r0, #2	@,,
	ldr	r0, [fp, #-84]	@, %sfp
	str	r4, [fp, #-100]	@, %sfp
	mov	r4, r0, asl #22	@ tmp679,,
	ldr	r0, [fp, #-92]	@, %sfp
	and	r2, r0, r2	@ tmp673,, tmp673
	ldr	r0, [fp, #-72]	@, %sfp
	mov	r4, r4, lsr #22	@ tmp679, tmp679,
	add	r2, r2, r0, asl #20	@, tmp677, tmp673,,
	mov	r0, r3	@ tmp774, tmp763
	add	r4, r2, r4	@ tmp681, tmp677, tmp679
	str	r4, [sl, #328]	@ tmp681, <variable>.s32CoefAttr
	ldr	r2, [fp, #-68]	@, %sfp
	ldrsh	r4, [r2, #2]	@,
	ldr	r2, [fp, #-100]	@, %sfp
	str	r4, [fp, #-72]	@, %sfp
	add	r4, r2, #2	@,,
	ldr	r2, [fp, #-88]	@, %sfp
	str	r4, [fp, #-96]	@, %sfp
	ldrsh	r4, [r2, #2]	@ tmp689,
	ldr	r2, [fp, #-96]	@, %sfp
	add	r2, r2, #2	@,,
	str	r2, [fp, #-92]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	ldrsh	r2, [r2, #2]	@,
	str	r2, [fp, #-68]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	add	r2, r2, #2	@,,
	str	r2, [fp, #-112]	@, %sfp
	ldr	r2, [fp, #-72]	@, %sfp
	mov	r2, r2, asl #10	@,,
	str	r2, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-112]	@, %sfp
	add	r2, r2, #2	@,,
	str	r2, [fp, #-108]	@, %sfp
	mov	r2, r4, asl #22	@ tmp690, tmp689,
	ldr	r4, [fp, #-80]	@, %sfp
	and	r3, r4, r3	@ tmp684,, tmp684
	ldr	r4, [fp, #-68]	@, %sfp
	mov	r2, r2, lsr #22	@ tmp690, tmp690,
	add	r3, r3, r4, asl #20	@, tmp688, tmp684,,
	mov	r4, r7	@ tmp785, tmp774
	add	r2, r3, r2	@ tmp692, tmp688, tmp690
	str	r2, [sl, #332]	@ tmp692, <variable>.s32CoefAttr
	ldr	r3, [fp, #-76]	@, %sfp
	ldrsh	r2, [r3, #2]	@,
	str	r2, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-60]	@, %sfp
	ldr	r3, [fp, #-108]	@, %sfp
	add	r3, r3, #2	@,,
	str	r3, [fp, #-84]	@, %sfp
	ldrsh	r2, [r2, #2]	@,
	str	r7, [fp, #-60]	@ tmp3, %sfp
	str	r2, [fp, #-68]	@, %sfp
	add	r2, r3, #2	@,,
	str	r2, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r3, r2, asl #22	@ tmp698,,
	ldr	r2, [fp, #-72]	@, %sfp
	add	r2, r2, #2	@,,
	str	r2, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-68]	@, %sfp
	mov	r2, r2, asl #10	@,,
	str	r2, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-88]	@, %sfp
	add	r2, r2, #2	@,,
	str	r2, [fp, #-68]	@, %sfp
	ldr	r2, [fp, #-76]	@, %sfp
	and	r7, r2, r7	@ tmp695,, tmp695
	mov	r2, r3, lsr #22	@ tmp698, tmp698,
	add	r3, r7, r2	@ tmp700, tmp695, tmp698
	str	r3, [sl, #336]	@ tmp700, <variable>.s32CoefAttr
	ldr	r7, [fp, #-52]	@, %sfp
	movw	r2, #:lower16:1047552	@,
	ldrsh	r3, [r7, #2]	@ tmp701,
	ldr	r7, [fp, #-64]	@, %sfp
	str	r2, [fp, #-52]	@, %sfp
	ldrsh	r2, [r7, #2]	@ tmp708,
	ldr	r7, [fp, #-48]	@, %sfp
	str	r6, [fp, #-52]	@ tmp7, %sfp
	ldrsh	r7, [r7, #2]	@,
	str	r7, [fp, #-48]	@, %sfp
	ldr	r7, [fp, #-68]	@, %sfp
	add	r7, r7, #2	@,,
	str	r7, [fp, #-80]	@, %sfp
	mov	r7, r3, asl #10	@ tmp702, tmp701,
	ldr	r3, [fp, #-80]	@, %sfp
	and	r6, r7, r6	@ tmp703, tmp702, tmp703
	add	r3, r3, #2	@,,
	str	r3, [fp, #-76]	@, %sfp
	mov	r3, r2, asl #22	@ tmp709, tmp708,
	ldr	r2, [fp, #-48]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	mov	r3, r3, lsr #22	@ tmp709, tmp709,
	add	r6, r6, r2, asl #20	@, tmp707, tmp703,,
	add	r2, r7, #2	@,,
	add	r7, r2, #2	@,,
	add	r3, r6, r3	@ tmp711, tmp707, tmp709
	str	r2, [fp, #-64]	@, %sfp
	str	r7, [fp, #-48]	@, %sfp
	str	r3, [sl, #340]	@ tmp711, <variable>.s32CoefAttr
	ldr	r6, [fp, #-132]	@, %sfp
	ldr	r2, [fp, #-152]	@, %sfp
	ldr	r7, [fp, #-156]	@, %sfp
	ldrsh	r6, [r6, #2]	@,
	ldrsh	r3, [r2, #2]	@ tmp712,
	ldrsh	r2, [r7, #2]	@ tmp719,
	mov	r7, r8	@ tmp815, tmp785
	str	r6, [fp, #-132]	@, %sfp
	ldr	r6, [fp, #-48]	@, %sfp
	add	r6, r6, #2	@,,
	str	r6, [fp, #-156]	@, %sfp
	mov	r6, r3, asl #10	@ tmp713, tmp712,
	ldr	r3, [fp, #-156]	@, %sfp
	add	r3, r3, #2	@,,
	str	r3, [fp, #-152]	@, %sfp
	mov	r3, r2, asl #22	@ tmp720, tmp719,
	and	r2, r6, r8	@ tmp714, tmp713, tmp714
	ldr	r6, [fp, #-132]	@, %sfp
	add	r8, r2, r6, asl #20	@, tmp718, tmp714,,
	mov	r2, r3, lsr #22	@ tmp720, tmp720,
	add	r3, r8, r2	@ tmp722, tmp718, tmp720
	str	r3, [sl, #344]	@ tmp722, <variable>.s32CoefAttr
	ldr	r2, [fp, #-148]	@, %sfp
	mov	r6, r5	@ tmp823, tmp815
	ldr	r3, [fp, #-152]	@, %sfp
	ldrsh	r8, [r2, #2]	@ tmp727,
	add	r3, r3, #2	@,,
	ldr	r2, [fp, #-144]	@, %sfp
	str	r3, [fp, #-132]	@, %sfp
	add	r3, r3, #2	@,,
	mov	r8, r8, asl #22	@, tmp727,
	ldrsh	r2, [r2, #2]	@,
	str	r8, [fp, #-192]	@, %sfp
	add	r8, r3, #2	@,,
	str	r8, [fp, #-144]	@, %sfp
	str	r2, [fp, #-184]	@, %sfp
	mov	r2, r5	@ tmp834, tmp823
	ldr	r8, [fp, #-184]	@, %sfp
	str	r3, [fp, #-148]	@, %sfp
	mov	r3, r8, asl #10	@,,
	str	r3, [fp, #-184]	@, %sfp
	ldr	r8, [fp, #-184]	@, %sfp
	and	r3, r8, r5	@ tmp725,, tmp725
	ldr	r8, [fp, #-192]	@, %sfp
	mov	r8, r8, lsr #22	@,,
	add	r5, r3, r8	@ tmp730, tmp725,
	str	r5, [sl, #348]	@ tmp730, <variable>.s32CoefAttr
	ldr	r8, [fp, #-168]	@, %sfp
	ldr	r5, [fp, #-180]	@, %sfp
	ldrsh	r3, [r8, #2]	@,
	str	r3, [fp, #-184]	@, %sfp
	mov	r3, ip	@ tmp845, tmp834
	ldrsh	r8, [r5, #2]	@ tmp738,
	ldr	r5, [fp, #-164]	@, %sfp
	ldrsh	r5, [r5, #2]	@,
	str	r5, [fp, #-168]	@, %sfp
	ldr	r5, [fp, #-184]	@, %sfp
	mov	r5, r5, asl #10	@,,
	str	r5, [fp, #-164]	@, %sfp
	mov	r5, r8, asl #22	@ tmp739, tmp738,
	ldr	r8, [fp, #-164]	@, %sfp
	and	ip, r8, ip	@ tmp733,, tmp733
	ldr	r8, [fp, #-168]	@, %sfp
	add	ip, ip, r8, asl #20	@, tmp737, tmp733,,
	mov	r8, r5, lsr #22	@ tmp739, tmp739,
	add	ip, ip, r8	@ tmp741, tmp737, tmp739
	str	ip, [sl, #352]	@ tmp741, <variable>.s32CoefAttr
	ldr	r5, [fp, #-172]	@, %sfp
	ldr	r8, [fp, #-176]	@, %sfp
	ldrsh	ip, [r5, #2]	@ tmp742,
	ldrsh	r5, [r8, #2]	@ tmp749,
	ldr	r8, [fp, #-160]	@, %sfp
	ldrsh	r8, [r8, #2]	@,
	str	r8, [fp, #-160]	@, %sfp
	mov	r8, ip, asl #10	@ tmp743, tmp742,
	mov	ip, r5, asl #22	@ tmp750, tmp749,
	ldr	r5, [fp, #-56]	@, %sfp
	and	r5, r8, r5	@, tmp743,
	ldr	r8, [fp, #-160]	@, %sfp
	add	r8, r5, r8, asl #20	@,,,,
	mov	r5, ip, lsr #22	@ tmp750, tmp750,
	str	r8, [fp, #-56]	@, %sfp
	add	ip, r8, r5	@ tmp752,, tmp750
	str	ip, [sl, #356]	@ tmp752, <variable>.s32CoefAttr
	ldr	r5, [fp, #-128]	@, %sfp
	ldr	r8, [fp, #-124]	@, %sfp
	ldrsh	ip, [r5, #2]	@ tmp757,
	ldrsh	r5, [r8, #2]	@ tmp753,
	mov	ip, ip, asl #22	@ tmp758, tmp757,
	mov	r5, r5, asl #10	@ tmp754, tmp753,
	and	r9, r5, r9	@ tmp755, tmp754, tmp755
	mov	r8, ip, lsr #22	@ tmp758, tmp758,
	add	ip, r9, r8	@ tmp760, tmp755, tmp758
	str	ip, [sl, #360]	@ tmp760, <variable>.s32CoefAttr
	ldr	r5, [fp, #-104]	@, %sfp
	ldr	r9, [fp, #-140]	@, %sfp
	ldr	r8, [fp, #-136]	@, %sfp
	ldrsh	ip, [r5, #2]	@ tmp761,
	ldrsh	r5, [r9, #2]	@ tmp768,
	ldrsh	r9, [r8, #2]	@ tmp765,
	mov	r8, ip, asl #10	@ tmp762, tmp761,
	mov	ip, r5, asl #22	@ tmp769, tmp768,
	and	r5, r8, r1	@ tmp763, tmp762, tmp763
	add	r8, r5, r9, asl #20	@, tmp767, tmp763, tmp765,
	mov	ip, ip, lsr #22	@ tmp769, tmp769,
	add	r1, r8, ip	@ tmp771, tmp767, tmp769
	str	r1, [sl, #364]	@ tmp771, <variable>.s32CoefAttr
	ldr	r5, [fp, #-116]	@, %sfp
	ldr	r8, [fp, #-120]	@, %sfp
	ldr	r9, [fp, #-100]	@, %sfp
	ldrsh	r1, [r5, #2]	@ tmp772,
	ldrsh	ip, [r8, #2]	@ tmp779,
	ldrsh	r8, [r9, #2]	@ tmp776,
	mov	r5, r1, asl #10	@ tmp773, tmp772,
	mov	r9, ip, asl #22	@ tmp780, tmp779,
	and	ip, r5, r0	@ tmp774, tmp773, tmp774
	add	r0, ip, r8, asl #20	@, tmp778, tmp774, tmp776,
	mov	r8, r9, lsr #22	@ tmp780, tmp780,
	add	r1, r0, r8	@ tmp782, tmp778, tmp780
	str	r1, [sl, #368]	@ tmp782, <variable>.s32CoefAttr
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r5, [fp, #-92]	@, %sfp
	ldrsh	r9, [ip, #2]	@ tmp787,
	ldrsh	r8, [r5, #2]	@ tmp783,
	mov	r1, r9, asl #22	@ tmp788, tmp787,
	mov	r0, r8, asl #10	@ tmp784, tmp783,
	and	r9, r0, r4	@ tmp785, tmp784, tmp785
	mov	ip, r1, lsr #22	@ tmp788, tmp788,
	add	r5, r9, ip	@ tmp790, tmp785, tmp788
	str	r5, [sl, #372]	@ tmp790, <variable>.s32CoefAttr
	ldr	r4, [fp, #-108]	@, %sfp
	ldr	r8, [fp, #-112]	@, %sfp
	ldr	r9, [fp, #-84]	@, %sfp
	ldrsh	r1, [r4, #2]	@ tmp791,
	ldrsh	r0, [r8, #2]	@ tmp798,
	ldrsh	r4, [r9, #2]	@ tmp795,
	ldr	r5, [fp, #-60]	@, %sfp
	mov	ip, r1, asl #10	@ tmp792, tmp791,
	mov	r8, r0, asl #22	@ tmp799, tmp798,
	and	r0, ip, r5	@, tmp792,
	str	r0, [fp, #-60]	@, %sfp
	add	r9, r0, r4, asl #20	@, tmp797,, tmp795,
	mov	r1, r8, lsr #22	@ tmp799, tmp799,
	add	r5, r9, r1	@ tmp801, tmp797, tmp799
	str	r5, [sl, #376]	@ tmp801, <variable>.s32CoefAttr
	ldr	ip, [fp, #-88]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	ldr	r0, [fp, #-68]	@, %sfp
	ldrsh	r9, [ip, #2]	@ tmp802,
	ldrsh	r4, [r8, #2]	@ tmp809,
	ldrsh	ip, [r0, #2]	@ tmp806,
	ldr	r5, [fp, #-52]	@, %sfp
	mov	r1, r9, asl #10	@ tmp803, tmp802,
	mov	r0, r4, asl #22	@ tmp810, tmp809,
	and	r8, r1, r5	@, tmp803,
	add	r4, r8, ip, asl #20	@, tmp808,, tmp806,
	mov	r9, r0, lsr #22	@ tmp810, tmp810,
	add	r5, r4, r9	@ tmp812, tmp808, tmp810
	str	r5, [sl, #380]	@ tmp812, <variable>.s32CoefAttr
	ldr	ip, [fp, #-80]	@, %sfp
	ldr	r8, [fp, #-76]	@, %sfp
	ldrsh	r1, [ip, #2]	@ tmp817,
	ldrsh	r0, [r8, #2]	@ tmp813,
	mov	r4, r1, asl #22	@ tmp818, tmp817,
	mov	r9, r0, asl #10	@ tmp814, tmp813,
	and	r5, r9, r7	@ tmp815, tmp814, tmp815
	mov	ip, r4, lsr #22	@ tmp818, tmp818,
	add	r8, r5, ip	@ tmp820, tmp815, tmp818
	str	r8, [sl, #384]	@ tmp820, <variable>.s32CoefAttr
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r8, [fp, #-156]	@, %sfp
	ldrsh	r0, [r7, #2]	@ tmp821,
	ldr	r7, [fp, #-64]	@, %sfp
	ldrsh	r4, [r8, #2]	@ tmp825,
	mov	r1, r0, asl #10	@ tmp822, tmp821,
	ldrsh	r9, [r7, #2]	@ tmp828,
	and	r6, r1, r6	@ tmp823, tmp822, tmp823
	add	ip, r6, r4, asl #20	@, tmp827, tmp823, tmp825,
	mov	r5, r9, asl #22	@ tmp829, tmp828,
	mov	r0, r5, lsr #22	@ tmp829, tmp829,
	add	r9, ip, r0	@ tmp831, tmp827, tmp829
	str	r9, [sl, #388]	@ tmp831, <variable>.s32CoefAttr
	ldr	r4, [fp, #-152]	@, %sfp
	ldr	r9, [fp, #-132]	@, %sfp
	ldrsh	r1, [r4, #2]	@ tmp839,
	ldr	r4, [fp, #-148]	@, %sfp
	ldrsh	r5, [r9, #2]	@ tmp832,
	ldrsh	r0, [r4, #2]	@ tmp836,
	mov	ip, r5, asl #10	@ tmp833, tmp832,
	mov	r5, r1, asl #22	@ tmp840, tmp839,
	and	r2, ip, r2	@ tmp834, tmp833, tmp834
	add	ip, r2, r0, asl #20	@, tmp838, tmp834, tmp836,
	mov	r1, r5, lsr #22	@ tmp840, tmp840,
	add	r5, ip, r1	@ tmp842, tmp838, tmp840
	str	r5, [sl, #392]	@ tmp842, <variable>.s32CoefAttr
	ldr	r5, [fp, #-144]	@, %sfp
	mov	r0, #204	@ tmp851,
	ldrsh	r2, [r5, #2]	@ tmp847,
	ldrsh	ip, [r5, #4]	@ tmp843,
	str	r0, [sl, #0]	@ tmp851, <variable>.u32Size
	mov	r0, r2, asl #22	@ tmp848, tmp847,
	mov	r1, ip, asl #10	@ tmp844, tmp843,
	and	ip, r1, r3	@ tmp845, tmp844, tmp845
	mov	r2, r0, lsr #22	@ tmp848, tmp848,
	add	r0, ip, r2	@ tmp850, tmp845, tmp848
	str	r0, [sl, #396]	@ tmp850, <variable>.s32CoefAttr
	b	.L6	@
.L19:
	mov	r7, r7, lsr #1	@ prephitmp.466, u32Tap,
.L3:
	mov	r9, #0	@ i,
	mov	r8, r9	@ j, i
.L5:
	cmp	r7, #0	@ prephitmp.466,
	beq	.L9	@,
	ldrsh	r3, [r0, #0]	@ s32CoefTmp1.525,* ps16Coef
	add	r4, r8, #48	@ tmp856, j,
	ldrsh	r5, [r0, #2]	@ s32CoefTmp2.527,
	mov	r2, #2	@ k,
	add	r1, sl, r4, asl #2	@, tmp858, pBitCoef, tmp856,
	cmp	r2, r7	@ k, prephitmp.466
	uxth	ip, r3	@ tmp886, s32CoefTmp1.525
	sub	r4, r7, #1	@ tmp865, prephitmp.466,
	add	r3, r1, #4	@ ivtmp.488, tmp858,
	add	ip, ip, r5, asl #16	@, tmp887, tmp886, s32CoefTmp2.527,
	and	r4, r4, #1	@ tmp866, tmp865,
	str	ip, [r1, #4]	@ tmp887, <variable>.s32CoefAttr
	add	r0, r0, #4	@ ps16Coef, ps16Coef,
	add	ip, r8, #1	@ j.1088, j,
	add	r1, r3, #4	@ ivtmp.488, ivtmp.488,
	bhi	.L17	@,
	cmp	r4, #0	@ tmp866,
	beq	.L7	@,
	ldrsh	r4, [r0, #0]	@ s32CoefTmp1.525,* ps16Coef
	add	ip, r2, r8	@ j.1088, k, j
	ldrsh	r5, [r0, #2]	@ s32CoefTmp2.527,
	mov	r2, #3	@ k,
	cmp	r2, r7	@ k, prephitmp.466
	add	r0, r0, #4	@ ps16Coef, ps16Coef,
	uxth	r4, r4	@ tmp892, s32CoefTmp1.525
	add	r1, r1, #4	@ ivtmp.488, ivtmp.488,
	add	r4, r4, r5, asl #16	@, tmp893, tmp892, s32CoefTmp2.527,
	str	r4, [r3, #4]	@ tmp893, <variable>.s32CoefAttr
	bhi	.L17	@,
.L7:
	ldrsh	r6, [r0, #2]	@ s32CoefTmp2.527,
	add	r4, r0, #4	@ tmp869, ps16Coef,
	ldrh	r5, [r0, #0]	@ tmp853,* ps16Coef
	mov	r3, r1	@ tmp868, ivtmp.488
	add	ip, r2, #1	@ tmp867, k,
	add	r2, r5, r6, asl #16	@, tmp855, tmp853, s32CoefTmp2.527,
	str	r2, [r3], #4	@ tmp855, <variable>.s32CoefAttr
	ldrsh	r6, [r0, #4]	@ s32CoefTmp1.525,
	add	r2, ip, #1	@ k, tmp867,
	ldrsh	r5, [r4, #2]	@ s32CoefTmp2.527,
	cmp	r2, r7	@ k, prephitmp.466
	add	r0, r4, #4	@ ps16Coef, tmp869,
	add	ip, ip, r8	@ j.1088, tmp867, j
	uxth	r6, r6	@ tmp877, s32CoefTmp1.525
	add	r5, r6, r5, asl #16	@, tmp878, tmp877, s32CoefTmp2.527,
	str	r5, [r1, #4]	@ tmp878, <variable>.s32CoefAttr
	add	r1, r3, #4	@ ivtmp.488, tmp868,
	bls	.L7	@,
.L17:
	mov	r8, ip	@ j, j.1088
.L9:
	add	r9, r9, #1	@ i, i,
	cmp	r9, #17	@ i,
	bne	.L5	@,
	add	r7, r7, r7, asl #4	@, tmp861, prephitmp.466, prephitmp.466,
	mov	r0, r7, asl #2	@ tmp862, tmp861,
	str	r0, [sl, #0]	@ tmp862, <variable>.u32Size
.L6:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VZmeTransVpssCoefAlign, .-VZmeTransVpssCoefAlign
	.align	2
	.global	GetVerticalScalerOffset
	.type	GetVerticalScalerOffset, %function
GetVerticalScalerOffset:
	.fnstart
.LFB1254:
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
	ldr	r3, [r1, #24]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r3, #0	@ <variable>.bZmeFrmFmtIn,
	beq	.L21	@,
	ldr	r2, [r1, #28]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	r2, #0	@ <variable>.bZmeFrmFmtOut,
	bne	.L22	@,
.L26:
	ldr	ip, [r1, #36]	@ <variable>.bZmeBFOut, <variable>.bZmeBFOut
	cmp	ip, #0	@ <variable>.bZmeBFOut,
	movne	r0, r0, asr #1	@ s32VOffset, u32VRatio,
	ldmnefd	sp, {fp, sp, pc}	@
.L22:
	mov	r0, #0	@ s32VOffset,
	ldmfd	sp, {fp, sp, pc}	@
.L21:
	ldr	ip, [r1, #28]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	ip, #0	@ <variable>.bZmeFrmFmtOut,
	bne	.L30	@,
	ldr	r3, [r1, #32]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r3, #0	@ <variable>.bZmeBFIn,
	beq	.L26	@,
	ldr	r2, [r1, #36]	@ <variable>.bZmeBFOut, <variable>.bZmeBFOut
	cmp	r2, #0	@ <variable>.bZmeBFOut,
	subne	r0, r0, #4096	@ tmp144, u32VRatio,
	movne	r0, r0, asr #1	@ s32VOffset, tmp144,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L25	@
.L30:
	ldr	r0, [r1, #32]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r0, #0	@ <variable>.bZmeBFIn,
	beq	.L22	@,
.L25:
	movw	r0, #:lower16:-2048	@ s32VOffset,
	movt	r0, #:upper16:-2048	@ s32VOffset,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetVerticalScalerOffset, .-GetVerticalScalerOffset
	.global	__aeabi_uidiv
	.align	2
	.global	GetHLfirCoef
	.type	GetHLfirCoef, %function
GetHLfirCoef:
	.fnstart
.LFB1255:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #0]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #4]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #8]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #12]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #16]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #20]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_025
	ldrcc	r0, [r4, #24]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetHLfirCoef, .-GetHLfirCoef
	.align	2
	.global	GetHCfirCoef
	.type	GetHCfirCoef, %function
GetHCfirCoef:
	.fnstart
.LFB1256:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrgt	r0, [r4, #28]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_1
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #32]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrge	r0, [r4, #36]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_075
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrge	r0, [r4, #40]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_05
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrgt	r0, [r4, #44]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_033
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrge	r0, [r4, #48]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_025
	ldrlt	r0, [r4, #52]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetHCfirCoef, .-GetHCfirCoef
	.align	2
	.global	GetVLfirCoef
	.type	GetVLfirCoef, %function
GetVLfirCoef:
	.fnstart
.LFB1257:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrgt	r0, [r4, #56]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_1
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #60]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrge	r0, [r4, #64]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_075
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrge	r0, [r4, #68]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_05
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrgt	r0, [r4, #72]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_033
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrge	r0, [r4, #76]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_025
	ldrlt	r0, [r4, #80]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVLfirCoef, .-GetVLfirCoef
	.align	2
	.global	GetVCfirCoef
	.type	GetVCfirCoef, %function
GetVCfirCoef:
	.fnstart
.LFB1258:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrgt	r0, [r4, #84]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_1
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #88]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrge	r0, [r4, #92]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_075
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrge	r0, [r4, #96]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_05
	ldmgefd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrgt	r0, [r4, #100]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_033
	ldmgtfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrge	r0, [r4, #104]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_025
	ldrlt	r0, [r4, #108]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVCfirCoef, .-GetVCfirCoef
	.align	2
	.global	GetHLCfirCoef
	.type	GetHLCfirCoef, %function
GetHLCfirCoef:
	.fnstart
.LFB1259:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #112]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #116]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #120]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #124]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #128]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #132]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_025
	ldrcc	r0, [r4, #136]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8C4_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetHLCfirCoef, .-GetHLCfirCoef
	.align	2
	.global	GetVLCfirCoef
	.type	GetVLCfirCoef, %function
GetVLCfirCoef:
	.fnstart
.LFB1260:
	@ args = 0, pretend = 0, frame = 16
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
	sub	ip, fp, #32	@ tmp137,,
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	stmia	ip, {r1, r2, r3}	@ tmp137,,,
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-28]	@ stPickCoef.u32TapL, stPickCoef.u32TapL
	cmp	r3, #6	@ stPickCoef.u32TapL,
	beq	.L92	@,
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #168]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_1
	bhi	.L79	@,
	ldreq	r0, [r4, #172]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_E1
	beq	.L79	@,
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #176]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_075
	bcs	.L79	@,
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #180]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_05
	bcs	.L79	@,
	movw	r2, #1364	@ tmp148,
	cmp	r0, r2	@ tmp140, tmp148
	ldrhi	r0, [r4, #184]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_033
	bhi	.L79	@,
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #188]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_025
	ldrcc	r0, [r4, #192]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL4C4_0
.L79:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L92:
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #140]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_1
	bhi	.L79	@,
	ldreq	r0, [r4, #144]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_E1
	beq	.L79	@,
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #148]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_075
	bcs	.L79	@,
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #152]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_05
	bcs	.L79	@,
	movw	r1, #1364	@ tmp144,
	cmp	r0, r1	@ tmp140, tmp144
	ldrhi	r0, [r4, #156]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_033
	bhi	.L79	@,
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #160]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_025
	ldrcc	r0, [r4, #164]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6C4_0
	b	.L79	@
	.fnend
	.size	GetVLCfirCoef, .-GetVLCfirCoef
	.align	2
	.global	ALG_VZmeComnSet
	.type	ALG_VZmeComnSet, %function
ALG_VZmeComnSet:
	.fnstart
.LFB1261:
	@ args = 0, pretend = 0, frame = 16
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
	mov	sl, #1	@ tmp151,
	mov	r6, #0	@ tmp155,
	str	sl, [r1, #12]	@ tmp151, <variable>.bZmeEnVC
	str	sl, [r1, #0]	@ tmp151, <variable>.bZmeEnHL
	mov	r4, r1	@ pstZmeRtlPara, pstZmeRtlPara
	str	sl, [r1, #4]	@ tmp151, <variable>.bZmeEnHC
	mov	r5, r0	@ pstZmeDrvPara, pstZmeDrvPara
	str	sl, [r1, #8]	@ tmp151, <variable>.bZmeEnVL
	str	r6, [r1, #44]	@ tmp155, <variable>.bZmeMedVC
	str	r6, [r1, #32]	@ tmp155, <variable>.bZmeMedHL
	str	r6, [r1, #36]	@ tmp155, <variable>.bZmeMedHC
	str	r6, [r1, #40]	@ tmp155, <variable>.bZmeMedVL
	ldr	r9, [r0, #0]	@ u32ZmeCWIn, <variable>.u32ZmeFrmWIn
	str	r9, [r1, #64]	@ u32ZmeCWIn, <variable>.u32ZmeWIn
	ldr	r6, [r0, #8]	@ u32ZmeCWOut, <variable>.u32ZmeFrmWOut
	str	r6, [r1, #72]	@ u32ZmeCWOut, <variable>.u32ZmeWOut
	ldr	ip, [r0, #24]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	ldr	r8, [r0, #4]	@ u32ZmeCHIn, <variable>.u32ZmeFrmHIn
	cmp	ip, sl	@ <variable>.bZmeFrmFmtIn,
	mov	sl, r9, asl #20	@ prephitmp.1362, u32ZmeCWIn,
	movne	r8, r8, lsr #1	@ u32ZmeCHIn, <variable>.u32ZmeFrmHIn,
	str	r8, [r1, #68]	@ u32ZmeCHIn, <variable>.u32ZmeHIn
	ldr	r7, [r0, #28]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	mov	r2, r8, asl #12	@, u32ZmeCHIn,
	cmp	r7, #1	@ <variable>.bZmeFrmFmtOut,
	ldr	r7, [r0, #12]	@ u32ZmeCHOut, <variable>.u32ZmeFrmHOut
	str	r2, [fp, #-48]	@, %sfp
	mov	r0, sl	@, prephitmp.1362
	movne	r7, r7, lsr #1	@ u32ZmeCHOut, <variable>.u32ZmeFrmHOut,
	str	r7, [r1, #76]	@ u32ZmeCHOut, <variable>.u32ZmeHOut
	mov	r1, r6	@, u32ZmeCWOut
	str	r8, [fp, #-56]	@,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, u32ZmeCHOut
	str	r0, [fp, #-52]	@, %sfp
	str	r0, [r4, #80]	@, <variable>.u32ZmeRatioHL
	ldr	r0, [fp, #-48]	@, %sfp
	bl	__aeabi_uidiv	@
	str	r0, [r4, #84]	@ D.27276, <variable>.u32ZmeRatioVL
	mov	r8, r0	@ D.27276,
	ldr	r2, [r5, #16]	@ D.27278, <variable>.eZmeYCFmtIn
	ldr	r1, [r5, #20]	@ D.27283, <variable>.eZmeYCFmtOut
	cmp	r2, #70	@ D.27278,
	ldr	r3, [fp, #-56]	@,
	movne	sl, r9, lsr #1	@ tmp169, u32ZmeCWIn,
	sub	r0, r2, #68	@ tmp170, D.27278,
	movne	sl, sl, asl #20	@ prephitmp.1362, tmp169,
	cmp	r1, #70	@ D.27283,
	movne	r6, r6, lsr #1	@ u32ZmeCWOut, u32ZmeCWOut,
	cmp	r0, #1	@ tmp170,
	movls	r3, r3, lsr #1	@ tmp171, u32ZmeCHIn,
	movls	r3, r3, asl #12	@, tmp171,
	strls	r3, [fp, #-48]	@, %sfp
	cmp	r1, #68	@ D.27283,
	beq	.L101	@,
	cmp	r2, #69	@ D.27278,
	beq	.L101	@,
.L102:
	mov	r1, r6	@, u32ZmeCWOut
	mov	r0, sl	@, prephitmp.1362
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, u32ZmeCHOut
	mov	r7, #0	@ tmp178,
	str	r0, [r4, #88]	@ D.27298, <variable>.u32ZmeRatioHC
	mov	sl, r0	@ D.27298,
	ldr	r0, [fp, #-48]	@, %sfp
	bl	__aeabi_uidiv	@
	mov	r1, r5	@, pstZmeDrvPara
	str	r7, [r4, #48]	@ tmp178, <variable>.s32ZmeOffsetHL
	mov	r6, r0	@ D.27300,
	mov	r0, r8	@, D.27276
	str	r6, [r4, #92]	@ D.27300, <variable>.u32ZmeRatioVC
	bl	GetVerticalScalerOffset	@
	str	r0, [r4, #56]	@ D.27302, <variable>.s32ZmeOffsetVL
	mov	r9, r0	@ D.27302,
	ldr	r1, [r5, #16]	@ <variable>.eZmeYCFmtIn, <variable>.eZmeYCFmtIn
	cmp	r1, #63	@ <variable>.eZmeYCFmtIn,
	beq	.L112	@,
.L104:
	mov	r0, #0	@ tmp182,
	mov	r1, r5	@, pstZmeDrvPara
	str	r0, [r4, #52]	@ tmp182, <variable>.s32ZmeOffsetHC
	mov	r0, r6	@, D.27300
	bl	GetVerticalScalerOffset	@
	ldr	r2, [fp, #-52]	@, %sfp
	subs	sl, sl, #1048576	@ tmp185, D.27298,
	movne	sl, #1	@ tmp185
	str	sl, [r4, #20]	@ tmp185, <variable>.bZmeMdHC
	subs	ip, r2, #1048576	@ tmp184,,
	movne	ip, #1	@ tmp184
	cmp	r8, #4096	@ D.27276,
	str	ip, [r4, #16]	@ tmp184, <variable>.bZmeMdHL
	add	r7, r0, r7	@ tmp183,, s32VOffset
	str	r7, [r4, #60]	@ tmp183, <variable>.s32ZmeOffsetVC
	beq	.L113	@,
.L106:
	mov	r1, #1	@ tmp187,
	str	r1, [r4, #24]	@ tmp187, <variable>.bZmeMdVL
.L107:
	cmp	r6, #4096	@ D.27300,
	beq	.L114	@,
.L108:
	mov	r3, #1	@ tmp190,
.L111:
	ldr	ip, [r4, #80]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	str	r3, [r4, #28]	@ tmp190, <variable>.bZmeMdVC
	mov	r3, #0	@ tmp191,
	cmp	ip, #1048576	@ <variable>.u32ZmeRatioHL,
	movcs	lr, #0	@, tmp194
	movcc	lr, #1	@, tmp194
	mov	r0, r3	@, tmp191
	str	r3, [r4, #100]	@ tmp191, <variable>.bZmeTapVC
	str	lr, [r4, #96]	@ tmp194, <variable>.bZmeOrder
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L114:
	ldr	r3, [r4, #60]	@ <variable>.s32ZmeOffsetVC, <variable>.s32ZmeOffsetVC
	cmp	r3, #0	@ <variable>.s32ZmeOffsetVC,
	bne	.L108	@,
	b	.L111	@
.L101:
	mov	r7, r7, lsr #1	@ u32ZmeCHOut, u32ZmeCHOut,
	b	.L102	@
.L113:
	cmp	r9, #0	@ D.27302,
	streq	r9, [r4, #24]	@ D.27302, <variable>.bZmeMdVL
	beq	.L107	@,
	b	.L106	@
.L112:
	ldr	lr, [r5, #24]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	lr, r7	@ <variable>.bZmeFrmFmtIn,
	beq	.L115	@,
.L105:
	movw	r7, #:lower16:-512	@ s32VOffset,
	movt	r7, #:upper16:-512	@ s32VOffset,
	b	.L104	@
.L115:
	ldr	r3, [r5, #32]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r3, r7	@ <variable>.bZmeBFIn,
	movwne	r7, #:lower16:-1536	@ s32VOffset,
	movtne	r7, #:upper16:-1536	@ s32VOffset,
	bne	.L104	@,
	b	.L105	@
	.fnend
	.size	ALG_VZmeComnSet, .-ALG_VZmeComnSet
	.align	2
	.global	ALG_VZmeVpssHQSet
	.type	ALG_VZmeVpssHQSet, %function
ALG_VZmeVpssHQSet:
	.fnstart
.LFB1262:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r5, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r5, r5, #12	@ D.27338, pstMem,
	bl	ALG_VZmeComnSet	@
	ldr	r0, [r4, #80]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r5	@, D.27338
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #88]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #112]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, r5	@, D.27338
	bl	GetHCfirCoef	@
	ldr	r1, [r4, #84]	@, <variable>.u32ZmeRatioVL
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHC
	mov	r0, r5	@, D.27338
	bl	GetVLfirCoef	@
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVC
	str	r0, [r4, #120]	@, <variable>.u32ZmeCoefAddrVL
	mov	r0, r5	@, D.27338
	bl	GetVCfirCoef	@
	str	r0, [r4, #124]	@, <variable>.u32ZmeCoefAddrVC
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ALG_VZmeVpssHQSet, .-ALG_VZmeVpssHQSet
	.align	2
	.global	ALG_VZmeVpssComnDeInit
	.type	ALG_VZmeVpssComnDeInit, %function
ALG_VZmeVpssComnDeInit:
	.fnstart
.LFB1253:
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
	bl	HI_DRV_MMZ_UnmapAndRelease	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_VZmeVpssComnDeInit, .-ALG_VZmeVpssComnDeInit
	.align	2
	.type	VZmeLoadVpssCoefHL, %function
VZmeLoadVpssCoefHL:
	.fnstart
.LFB1247:
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #404
	sub	sp, sp, #404	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp136,
	add	r3, r0, r0, asl #2	@, tmp139, enCoefRatio, enCoefRatio,
	sub	r5, fp, #436	@ tmp143,,
	movt	r4, #:upper16:.LANCHOR1	@ tmp136,
	mov	r6, r0	@ enCoefRatio, enCoefRatio
	add	r7, r5, #196	@ tmp147, tmp143,
	mov	r8, r1	@ pu32Addr, pu32Addr
	ldr	r0, [r4, r3, asl #2]	@, g_pVZmeCoef
	mov	r2, r5	@, tmp143
	mov	r1, #0	@,
	add	r4, r4, r6, asl #4	@, tmp155, tmp136, enCoefRatio,
	bl	VZmeTransVpssCoefAlign	@
	mov	r1, r7	@, tmp147
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	mov	r0, r8	@, pu32Addr
	bl	memcpy	@
	mov	r2, r5	@, tmp143
	mov	r1, #0	@,
	ldr	r0, [r4, #140]	@, g_pVDtiZmeCoef
	bl	VZmeTransVpssCoefAlign	@
	add	r0, r8, #256	@, pu32Addr,
	mov	r1, r7	@, tmp147
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	VZmeLoadVpssCoefHL, .-VZmeLoadVpssCoefHL
	.align	2
	.type	VZmeLoadVpssCoefHC, %function
VZmeLoadVpssCoefHC:
	.fnstart
.LFB1248:
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #404
	sub	sp, sp, #404	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r0	@ enCoefRatio, enCoefRatio
	add	r0, r0, r0, asl #2	@, tmp140, enCoefRatio, enCoefRatio,
	movw	r4, #:lower16:.LANCHOR1	@ tmp136,
	movt	r4, #:upper16:.LANCHOR1	@ tmp136,
	sub	r5, fp, #436	@ tmp145,,
	add	r3, r4, r0, asl #2	@, tmp142, tmp136, tmp140,
	add	r7, r5, #196	@ tmp149, tmp145,
	mov	r8, r1	@ pu32Addr, pu32Addr
	mov	r2, r5	@, tmp145
	ldr	r0, [r3, #12]	@, g_pVZmeCoef
	mov	r1, #2	@,
	add	r4, r4, r6, asl #4	@, tmp158, tmp136, enCoefRatio,
	bl	VZmeTransVpssCoefAlign	@
	mov	r1, r7	@, tmp149
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	mov	r0, r8	@, pu32Addr
	bl	memcpy	@
	mov	r2, r5	@, tmp145
	mov	r1, #2	@,
	ldr	r0, [r4, #148]	@, g_pVDtiZmeCoef
	bl	VZmeTransVpssCoefAlign	@
	add	r0, r8, #256	@, pu32Addr,
	mov	r1, r7	@, tmp149
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	VZmeLoadVpssCoefHC, .-VZmeLoadVpssCoefHC
	.align	2
	.type	VZmeLoadVpssCoefVL, %function
VZmeLoadVpssCoefVL:
	.fnstart
.LFB1249:
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #404
	sub	sp, sp, #404	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r2, r0, r0, asl #2	@, tmp139, enCoefRatio, enCoefRatio,
	add	r3, r2, #1	@ tmp140, tmp139,
	sub	r5, fp, #436	@ tmp142,,
	mov	r8, r0, asl #2	@ tmp138, enCoefRatio,
	movw	r4, #:lower16:.LANCHOR1	@ tmp136,
	movt	r4, #:upper16:.LANCHOR1	@ tmp136,
	add	r6, r5, #196	@ tmp146, tmp142,
	mov	r7, r1	@ pu32Addr, pu32Addr
	mov	r2, r5	@, tmp142
	ldr	r0, [r4, r3, asl #2]	@, g_pVZmeCoef
	mov	r1, #1	@,
	add	r4, r4, r8, asl #2	@, tmp156, tmp136, tmp138,
	bl	VZmeTransVpssCoefAlign	@
	mov	r1, r6	@, tmp146
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	mov	r0, r7	@, pu32Addr
	bl	memcpy	@
	mov	r2, r5	@, tmp142
	mov	r1, #3	@,
	ldr	r0, [r4, #144]	@, g_pVDtiZmeCoef
	bl	VZmeTransVpssCoefAlign	@
	add	r0, r7, #256	@, pu32Addr,
	mov	r1, r6	@, tmp146
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	VZmeLoadVpssCoefVL, .-VZmeLoadVpssCoefVL
	.align	2
	.type	VZmeLoadVpssCoefVC, %function
VZmeLoadVpssCoefVC:
	.fnstart
.LFB1250:
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #404
	sub	sp, sp, #404	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r0	@ enCoefRatio, enCoefRatio
	add	r0, r0, r0, asl #2	@, tmp140, enCoefRatio, enCoefRatio,
	movw	r4, #:lower16:.LANCHOR1	@ tmp136,
	movt	r4, #:upper16:.LANCHOR1	@ tmp136,
	sub	r5, fp, #436	@ tmp145,,
	add	r3, r4, r0, asl #2	@, tmp142, tmp136, tmp140,
	add	r7, r5, #196	@ tmp149, tmp145,
	mov	r8, r1	@ pu32Addr, pu32Addr
	mov	r2, r5	@, tmp145
	ldr	r0, [r3, #16]	@, g_pVZmeCoef
	mov	r1, #2	@,
	add	r4, r4, r6, asl #4	@, tmp157, tmp136, enCoefRatio,
	bl	VZmeTransVpssCoefAlign	@
	mov	r1, r7	@, tmp149
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	mov	r0, r8	@, pu32Addr
	bl	memcpy	@
	mov	r2, r5	@, tmp145
	mov	r1, #3	@,
	ldr	r0, [r4, #152]	@, g_pVDtiZmeCoef
	bl	VZmeTransVpssCoefAlign	@
	add	r0, r8, #256	@, pu32Addr,
	mov	r1, r7	@, tmp149
	ldr	r2, [fp, #-436]	@, stArray.u32Size
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	VZmeLoadVpssCoefVC, .-VZmeLoadVpssCoefVC
	.align	2
	.global	VZmeLoadVpssCoefHV
	.type	VZmeLoadVpssCoefHV, %function
VZmeLoadVpssCoefHV:
	.fnstart
.LFB1251:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pstVZmeCoefMem, pstVZmeCoefMem
	ldr	r6, [r4, #0]	@ pu32CurAddr, <variable>.stMBuf.u32StartVirAddr
	mov	r0, #0	@,
	ldr	r5, [r4, #4]	@ u32PhyAddr, <variable>.stMBuf.u32StartPhyAddr
	add	r8, r6, #4048	@ pu32CurAddr.1564, pu32CurAddr,
	mov	r1, r6	@, pu32CurAddr
	add	r7, r5, #464	@ u32PhyAddr.1547, u32PhyAddr,
	bl	VZmeLoadVpssCoefHL	@
	add	r1, r6, #464	@, pu32CurAddr,
	str	r5, [r4, #12]	@ u32PhyAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_1
	mov	r0, #1	@,
	bl	VZmeLoadVpssCoefHL	@
	add	r1, r6, #928	@, pu32CurAddr,
	str	r7, [r4, #16]	@ u32PhyAddr.1547, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_E1
	mov	r0, #2	@,
	bl	VZmeLoadVpssCoefHL	@
	add	ip, r5, #928	@ u32PhyAddr.1549, u32PhyAddr,
	add	r1, r6, #1392	@, pu32CurAddr,
	str	ip, [r4, #20]	@ u32PhyAddr.1549, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_075
	mov	r0, #3	@,
	add	sl, r5, #1392	@ u32PhyAddr.1551, u32PhyAddr,
	bl	VZmeLoadVpssCoefHL	@
	add	r1, r6, #1856	@, pu32CurAddr,
	str	sl, [r4, #24]	@ u32PhyAddr.1551, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_05
	mov	r0, #4	@,
	bl	VZmeLoadVpssCoefHL	@
	add	r1, r5, #1856	@ u32PhyAddr.1553, u32PhyAddr,
	mov	r0, #5	@,
	str	r1, [r4, #28]	@ u32PhyAddr.1553, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_033
	add	r1, r6, #2320	@, pu32CurAddr,
	add	r7, r5, #2320	@ u32PhyAddr.1555, u32PhyAddr,
	bl	VZmeLoadVpssCoefHL	@
	add	r1, r6, #2784	@, pu32CurAddr,
	str	r7, [r4, #32]	@ u32PhyAddr.1555, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_025
	mov	r0, #6	@,
	bl	VZmeLoadVpssCoefHL	@
	add	r2, r5, #2784	@ u32PhyAddr.1557, u32PhyAddr,
	add	r1, r6, #3248	@, pu32CurAddr,
	str	r2, [r4, #36]	@ u32PhyAddr.1557, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8_0
	mov	r0, #0	@,
	add	sl, r5, #3248	@ u32PhyAddr.1559, u32PhyAddr,
	bl	VZmeLoadVpssCoefHC	@
	add	r1, r6, #3648	@, pu32CurAddr,
	str	sl, [r4, #40]	@ u32PhyAddr.1559, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_1
	mov	r0, #1	@,
	bl	VZmeLoadVpssCoefHC	@
	add	r7, r5, #3648	@ u32PhyAddr.1561, u32PhyAddr,
	mov	r1, r8	@, pu32CurAddr.1564
	str	r7, [r4, #44]	@ u32PhyAddr.1561, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_E1
	mov	r0, #2	@,
	add	r7, r5, #4048	@ u32PhyAddr.1563, u32PhyAddr,
	bl	VZmeLoadVpssCoefHC	@
	str	r7, [r4, #48]	@ u32PhyAddr.1563, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_075
	add	r1, r8, #400	@, pu32CurAddr.1564,
	mov	r0, #3	@,
	bl	VZmeLoadVpssCoefHC	@
	add	r0, r7, #400	@ u32PhyAddr.1565, u32PhyAddr.1563,
	add	r1, r8, #800	@, pu32CurAddr.1564,
	str	r0, [r4, #52]	@ u32PhyAddr.1565, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_05
	mov	r0, #4	@,
	add	sl, r7, #800	@ u32PhyAddr.1567, u32PhyAddr.1563,
	bl	VZmeLoadVpssCoefHC	@
	add	r1, r6, #5248	@, pu32CurAddr,
	str	sl, [r4, #56]	@ u32PhyAddr.1567, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_033
	mov	r0, #5	@,
	bl	VZmeLoadVpssCoefHC	@
	add	r3, r5, #5248	@ u32PhyAddr.1569, u32PhyAddr,
	add	r1, r8, #1600	@, pu32CurAddr.1564,
	str	r3, [r4, #60]	@ u32PhyAddr.1569, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_025
	mov	r0, #6	@,
	add	sl, r7, #1600	@ u32PhyAddr.1571, u32PhyAddr.1563,
	bl	VZmeLoadVpssCoefHC	@
	str	sl, [r4, #64]	@ u32PhyAddr.1571, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC4_0
	add	r1, r8, #2000	@, pu32CurAddr.1564,
	mov	r0, #0	@,
	bl	VZmeLoadVpssCoefVL	@
	add	ip, r7, #2000	@ u32PhyAddr.1573, u32PhyAddr.1563,
	add	r1, r8, #2336	@, pu32CurAddr.1564,
	str	ip, [r4, #68]	@ u32PhyAddr.1573, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_1
	mov	r0, #1	@,
	add	sl, r7, #2336	@ u32PhyAddr.1575, u32PhyAddr.1563,
	bl	VZmeLoadVpssCoefVL	@
	add	r1, r6, #6720	@, pu32CurAddr,
	str	sl, [r4, #72]	@ u32PhyAddr.1575, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_E1
	mov	r0, #2	@,
	bl	VZmeLoadVpssCoefVL	@
	add	r1, r5, #6720	@ u32PhyAddr.1577, u32PhyAddr,
	mov	r0, #3	@,
	str	r1, [r4, #76]	@ u32PhyAddr.1577, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_075
	add	r1, r8, #3008	@, pu32CurAddr.1564,
	add	sl, r7, #3008	@ u32PhyAddr.1579, u32PhyAddr.1563,
	bl	VZmeLoadVpssCoefVL	@
	str	sl, [r4, #80]	@ u32PhyAddr.1579, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_05
	add	r1, r8, #3344	@, pu32CurAddr.1564,
	mov	r0, #4	@,
	bl	VZmeLoadVpssCoefVL	@
	add	sl, r8, #4352	@ pu32CurAddr.1588, pu32CurAddr.1564,
	add	r2, r7, #3344	@ u32PhyAddr.1581, u32PhyAddr.1563,
	add	r1, r8, #3680	@, pu32CurAddr.1564,
	str	r2, [r4, #84]	@ u32PhyAddr.1581, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_033
	mov	r0, #5	@,
	bl	VZmeLoadVpssCoefVL	@
	add	r1, r6, #8064	@, pu32CurAddr,
	add	r0, r7, #3680	@ u32PhyAddr.1583, u32PhyAddr.1563,
	str	r0, [r4, #88]	@ u32PhyAddr.1583, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_025
	mov	r0, #6	@,
	add	r5, r5, #8064	@ u32PhyAddr.1585, u32PhyAddr,
	bl	VZmeLoadVpssCoefVL	@
	str	r5, [r4, #92]	@ u32PhyAddr.1585, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6_0
	mov	r1, sl	@, pu32CurAddr.1588
	mov	r0, #0	@,
	add	r5, r7, #4352	@ u32PhyAddr.1587, u32PhyAddr.1563,
	bl	VZmeLoadVpssCoefVC	@
	str	r5, [r4, #96]	@ u32PhyAddr.1587, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_1
	add	r1, sl, #336	@, pu32CurAddr.1588,
	mov	r0, #1	@,
	add	r6, r5, #336	@ u32PhyAddr.1589, u32PhyAddr.1587,
	bl	VZmeLoadVpssCoefVC	@
	str	r6, [r4, #100]	@ u32PhyAddr.1589, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_E1
	add	r1, sl, #672	@, pu32CurAddr.1588,
	mov	r0, #2	@,
	bl	VZmeLoadVpssCoefVC	@
	add	r3, r5, #672	@ u32PhyAddr.1591, u32PhyAddr.1587,
	add	r1, sl, #1008	@, pu32CurAddr.1588,
	str	r3, [r4, #104]	@ u32PhyAddr.1591, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_075
	mov	r0, #3	@,
	add	r6, r5, #1008	@ u32PhyAddr.1593, u32PhyAddr.1587,
	bl	VZmeLoadVpssCoefVC	@
	str	r6, [r4, #108]	@ u32PhyAddr.1593, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_05
	add	r1, r8, #5696	@, pu32CurAddr.1564,
	mov	r0, #4	@,
	bl	VZmeLoadVpssCoefVC	@
	add	r7, r7, #5696	@ u32PhyAddr.1595, u32PhyAddr.1563,
	add	r1, sl, #1680	@, pu32CurAddr.1588,
	str	r7, [r4, #112]	@ u32PhyAddr.1595, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_033
	mov	r0, #5	@,
	add	r6, r5, #1680	@ u32PhyAddr.1597, u32PhyAddr.1587,
	bl	VZmeLoadVpssCoefVC	@
	str	r6, [r4, #116]	@ u32PhyAddr.1597, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_025
	add	r1, sl, #2016	@, pu32CurAddr.1588,
	mov	r0, #6	@,
	bl	VZmeLoadVpssCoefVC	@
	add	r5, r5, #2016	@ tmp189, u32PhyAddr.1587,
	str	r5, [r4, #120]	@ tmp189, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC4_0
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	VZmeLoadVpssCoefHV, .-VZmeLoadVpssCoefHV
	.align	2
	.global	ALG_VZmeVpssComnInit
	.type	ALG_VZmeVpssComnInit, %function
ALG_VZmeVpssComnInit:
	.fnstart
.LFB1252:
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
	mov	r1, #0	@,
	mov	r4, r0	@ pstVZmeCoefMem, pstVZmeCoefMem
	mov	r2, #10752	@,
	movw	r0, #:lower16:.LC0	@,
	mov	r3, r1	@,
	movt	r0, #:upper16:.LC0	@,
	str	r4, [sp, #0]	@ pstVZmeCoefMem,
	bl	HI_DRV_MMZ_AllocAndMap	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L134	@,
	mov	r0, r4	@, pstVZmeCoefMem
	bl	VZmeLoadVpssCoefHV	@
	mov	r0, r5	@ D.27027, s32Ret
.L132:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L134:
	mov	r0, #0	@,
	mov	r1, #37	@,
	ldr	r2, .L135	@,
	movw	r3, #602	@,
	movw	ip, #:lower16:.LC1	@ tmp140,
	movt	ip, #:upper16:.LC1	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27027,
	b	.L132	@
.L136:
	.align	2
.L135:
	.word	.LANCHOR0+16
	.fnend
	.size	ALG_VZmeVpssComnInit, .-ALG_VZmeVpssComnInit
	.global	g_pVZmeCoef
	.global	g_pVDtiZmeCoef
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CSWTCH.418, %object
	.size	CSWTCH.418, 16
CSWTCH.418:
	.word	8
	.word	6
	.word	4
	.word	2
	.type	__func__.27023, %object
	.size	__func__.27023, 21
__func__.27023:
	.ascii	"ALG_VZmeVpssComnInit\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_pVZmeCoef, %object
	.size	g_pVZmeCoef, 140
g_pVZmeCoef:
	.word	s16ZmeCoef_8T32P_Lanc3
	.word	s16ZmeCoef_6T32P_6M_a25
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_8T32P_Cubic
	.word	s16ZmeCoef_6T32P_Cubic
	.word	s16ZmeCoef_4T32P_Cubic
	.word	s16ZmeCoef_4T32P_Cubic
	.word	s16ZmeCoef_4T32P_Cubic
	.word	s16ZmeCoef_8T32P_Lanc2
	.word	s16ZmeCoef_6T32P_5M_a25
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_8T32P_Lanc2
	.word	s16ZmeCoef_6T32P_4M_a20
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_6T32P_3M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_6T32P_3M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_6T32P_3M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_4T32P_4M_a15
	.type	g_pVDtiZmeCoef, %object
	.size	g_pVDtiZmeCoef, 112
g_pVDtiZmeCoef:
	.word	s16ZmeCoef_8T32P_Lanc3
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_Cubic
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_Cubic
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_Lanc2
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_Lanc2
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_5M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.word	s16ZmeCoef_8T32P_3M_a19
	.word	s16ZmeCoef_2T32P_Gus2_6M_a0_5
	.word	s16ZmeCoef_4T32P_4M_a15
	.word	s16ZmeCoef_2T32P_4M_0_1
	.type	s16ZmeCoef_8T32P_Lanc3, %object
	.size	s16ZmeCoef_8T32P_Lanc3, 288
s16ZmeCoef_8T32P_Lanc3:
	.short	4
	.short	-22
	.short	40
	.short	468
	.short	40
	.short	-22
	.short	4
	.short	0
	.short	3
	.short	-18
	.short	26
	.short	468
	.short	54
	.short	-26
	.short	5
	.short	0
	.short	2
	.short	-14
	.short	14
	.short	466
	.short	68
	.short	-30
	.short	6
	.short	0
	.short	2
	.short	-11
	.short	2
	.short	462
	.short	84
	.short	-34
	.short	7
	.short	0
	.short	1
	.short	-7
	.short	-9
	.short	457
	.short	100
	.short	-38
	.short	8
	.short	0
	.short	1
	.short	-4
	.short	-18
	.short	450
	.short	116
	.short	-42
	.short	9
	.short	0
	.short	1
	.short	-2
	.short	-27
	.short	443
	.short	133
	.short	-46
	.short	10
	.short	0
	.short	0
	.short	2
	.short	-35
	.short	434
	.short	151
	.short	-50
	.short	10
	.short	0
	.short	0
	.short	4
	.short	-42
	.short	425
	.short	168
	.short	-54
	.short	11
	.short	0
	.short	0
	.short	6
	.short	-49
	.short	414
	.short	186
	.short	-57
	.short	12
	.short	0
	.short	0
	.short	8
	.short	-54
	.short	401
	.short	204
	.short	-60
	.short	13
	.short	0
	.short	0
	.short	10
	.short	-58
	.short	387
	.short	222
	.short	-62
	.short	13
	.short	0
	.short	0
	.short	11
	.short	-62
	.short	374
	.short	240
	.short	-65
	.short	14
	.short	0
	.short	0
	.short	12
	.short	-65
	.short	359
	.short	258
	.short	-66
	.short	14
	.short	0
	.short	0
	.short	13
	.short	-67
	.short	344
	.short	276
	.short	-68
	.short	14
	.short	0
	.short	0
	.short	14
	.short	-68
	.short	327
	.short	293
	.short	-68
	.short	14
	.short	0
	.short	0
	.short	14
	.short	-68
	.short	310
	.short	310
	.short	-68
	.short	14
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_6T32P_6M_a25, %object
	.size	s16ZmeCoef_6T32P_6M_a25, 216
s16ZmeCoef_6T32P_6M_a25:
	.short	-34
	.short	78
	.short	415
	.short	78
	.short	-34
	.short	9
	.short	-32
	.short	66
	.short	415
	.short	90
	.short	-36
	.short	9
	.short	-29
	.short	54
	.short	413
	.short	103
	.short	-38
	.short	9
	.short	-26
	.short	43
	.short	411
	.short	116
	.short	-41
	.short	9
	.short	-23
	.short	33
	.short	406
	.short	129
	.short	-42
	.short	9
	.short	-21
	.short	24
	.short	401
	.short	143
	.short	-44
	.short	9
	.short	-18
	.short	14
	.short	396
	.short	157
	.short	-46
	.short	9
	.short	-16
	.short	6
	.short	389
	.short	171
	.short	-47
	.short	9
	.short	-14
	.short	-2
	.short	382
	.short	185
	.short	-48
	.short	9
	.short	-11
	.short	-9
	.short	374
	.short	199
	.short	-49
	.short	8
	.short	-9
	.short	-16
	.short	365
	.short	213
	.short	-49
	.short	8
	.short	-7
	.short	-21
	.short	354
	.short	228
	.short	-49
	.short	7
	.short	-5
	.short	-27
	.short	345
	.short	242
	.short	-49
	.short	6
	.short	-3
	.short	-32
	.short	333
	.short	256
	.short	-48
	.short	6
	.short	-1
	.short	-36
	.short	322
	.short	269
	.short	-46
	.short	4
	.short	0
	.short	-39
	.short	309
	.short	283
	.short	-44
	.short	3
	.short	2
	.short	-42
	.short	296
	.short	296
	.short	-42
	.short	2
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_4T32P_5M_a15, %object
	.size	s16ZmeCoef_4T32P_5M_a15, 144
s16ZmeCoef_4T32P_5M_a15:
	.short	103
	.short	335
	.short	103
	.short	-29
	.short	92
	.short	335
	.short	112
	.short	-27
	.short	84
	.short	335
	.short	121
	.short	-28
	.short	75
	.short	334
	.short	131
	.short	-28
	.short	67
	.short	332
	.short	141
	.short	-28
	.short	59
	.short	329
	.short	152
	.short	-28
	.short	51
	.short	326
	.short	162
	.short	-27
	.short	43
	.short	323
	.short	173
	.short	-27
	.short	36
	.short	319
	.short	183
	.short	-26
	.short	30
	.short	313
	.short	194
	.short	-25
	.short	23
	.short	308
	.short	204
	.short	-23
	.short	17
	.short	301
	.short	215
	.short	-21
	.short	12
	.short	295
	.short	225
	.short	-20
	.short	6
	.short	288
	.short	235
	.short	-17
	.short	2
	.short	280
	.short	244
	.short	-14
	.short	-3
	.short	271
	.short	254
	.short	-10
	.short	-7
	.short	263
	.short	263
	.short	-7
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_8T32P_Cubic, %object
	.size	s16ZmeCoef_8T32P_Cubic, 288
s16ZmeCoef_8T32P_Cubic:
	.short	0
	.short	0
	.short	0
	.short	511
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1
	.short	3
	.short	-12
	.short	511
	.short	14
	.short	-4
	.short	1
	.short	0
	.short	-2
	.short	6
	.short	-23
	.short	509
	.short	28
	.short	-8
	.short	2
	.short	0
	.short	-2
	.short	9
	.short	-33
	.short	503
	.short	44
	.short	-12
	.short	3
	.short	0
	.short	-3
	.short	11
	.short	-41
	.short	496
	.short	61
	.short	-16
	.short	4
	.short	0
	.short	-3
	.short	13
	.short	-48
	.short	488
	.short	79
	.short	-21
	.short	5
	.short	-1
	.short	-3
	.short	14
	.short	-54
	.short	477
	.short	98
	.short	-25
	.short	7
	.short	-2
	.short	-4
	.short	16
	.short	-59
	.short	465
	.short	118
	.short	-30
	.short	8
	.short	-2
	.short	-4
	.short	17
	.short	-63
	.short	451
	.short	138
	.short	-35
	.short	9
	.short	-1
	.short	-4
	.short	18
	.short	-66
	.short	437
	.short	158
	.short	-39
	.short	10
	.short	-2
	.short	-4
	.short	18
	.short	-68
	.short	421
	.short	180
	.short	-44
	.short	11
	.short	-2
	.short	-4
	.short	18
	.short	-69
	.short	404
	.short	201
	.short	-48
	.short	13
	.short	-3
	.short	-4
	.short	18
	.short	-70
	.short	386
	.short	222
	.short	-52
	.short	14
	.short	-2
	.short	-4
	.short	18
	.short	-70
	.short	368
	.short	244
	.short	-56
	.short	15
	.short	-3
	.short	-4
	.short	18
	.short	-69
	.short	348
	.short	265
	.short	-59
	.short	16
	.short	-3
	.short	-4
	.short	18
	.short	-67
	.short	329
	.short	286
	.short	-63
	.short	16
	.short	-3
	.short	-3
	.short	17
	.short	-65
	.short	307
	.short	307
	.short	-65
	.short	17
	.short	-3
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_6T32P_Cubic, %object
	.size	s16ZmeCoef_6T32P_Cubic, 216
s16ZmeCoef_6T32P_Cubic:
	.short	0
	.short	0
	.short	511
	.short	0
	.short	0
	.short	0
	.short	3
	.short	-12
	.short	511
	.short	13
	.short	-3
	.short	0
	.short	6
	.short	-22
	.short	507
	.short	28
	.short	-7
	.short	0
	.short	8
	.short	-32
	.short	502
	.short	44
	.short	-11
	.short	1
	.short	10
	.short	-40
	.short	495
	.short	61
	.short	-15
	.short	1
	.short	11
	.short	-47
	.short	486
	.short	79
	.short	-19
	.short	2
	.short	12
	.short	-53
	.short	476
	.short	98
	.short	-24
	.short	3
	.short	13
	.short	-58
	.short	464
	.short	117
	.short	-28
	.short	4
	.short	14
	.short	-62
	.short	451
	.short	137
	.short	-33
	.short	5
	.short	15
	.short	-65
	.short	437
	.short	157
	.short	-38
	.short	6
	.short	15
	.short	-67
	.short	420
	.short	179
	.short	-42
	.short	7
	.short	15
	.short	-68
	.short	404
	.short	200
	.short	-46
	.short	7
	.short	14
	.short	-68
	.short	386
	.short	221
	.short	-50
	.short	9
	.short	14
	.short	-68
	.short	367
	.short	243
	.short	-54
	.short	10
	.short	14
	.short	-67
	.short	348
	.short	264
	.short	-58
	.short	11
	.short	13
	.short	-66
	.short	328
	.short	286
	.short	-61
	.short	12
	.short	13
	.short	-63
	.short	306
	.short	306
	.short	-63
	.short	13
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_4T32P_Cubic, %object
	.size	s16ZmeCoef_4T32P_Cubic, 144
s16ZmeCoef_4T32P_Cubic:
	.short	0
	.short	511
	.short	0
	.short	0
	.short	-19
	.short	511
	.short	21
	.short	-1
	.short	-37
	.short	509
	.short	42
	.short	-2
	.short	-51
	.short	504
	.short	64
	.short	-5
	.short	-64
	.short	499
	.short	86
	.short	-9
	.short	-74
	.short	492
	.short	108
	.short	-14
	.short	-82
	.short	484
	.short	129
	.short	-19
	.short	-89
	.short	474
	.short	152
	.short	-25
	.short	-94
	.short	463
	.short	174
	.short	-31
	.short	-97
	.short	451
	.short	196
	.short	-38
	.short	-98
	.short	438
	.short	217
	.short	-45
	.short	-98
	.short	424
	.short	238
	.short	-52
	.short	-98
	.short	409
	.short	260
	.short	-59
	.short	-95
	.short	392
	.short	280
	.short	-65
	.short	-92
	.short	376
	.short	300
	.short	-72
	.short	-88
	.short	358
	.short	320
	.short	-78
	.short	-83
	.short	339
	.short	339
	.short	-83
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_8T32P_Lanc2, %object
	.size	s16ZmeCoef_8T32P_Lanc2, 288
s16ZmeCoef_8T32P_Lanc2:
	.short	-16
	.short	0
	.short	145
	.short	254
	.short	145
	.short	0
	.short	-16
	.short	0
	.short	-16
	.short	-2
	.short	140
	.short	253
	.short	151
	.short	3
	.short	-17
	.short	0
	.short	-15
	.short	-5
	.short	135
	.short	253
	.short	157
	.short	5
	.short	-18
	.short	0
	.short	-14
	.short	-7
	.short	129
	.short	252
	.short	162
	.short	8
	.short	-18
	.short	0
	.short	-13
	.short	-9
	.short	123
	.short	252
	.short	167
	.short	11
	.short	-19
	.short	0
	.short	-13
	.short	-11
	.short	118
	.short	250
	.short	172
	.short	15
	.short	-19
	.short	0
	.short	-12
	.short	-12
	.short	112
	.short	250
	.short	177
	.short	18
	.short	-20
	.short	-1
	.short	-11
	.short	-14
	.short	107
	.short	247
	.short	183
	.short	21
	.short	-20
	.short	-1
	.short	-10
	.short	-15
	.short	101
	.short	245
	.short	188
	.short	25
	.short	-21
	.short	-1
	.short	-9
	.short	-16
	.short	96
	.short	243
	.short	192
	.short	29
	.short	-21
	.short	-2
	.short	-8
	.short	-18
	.short	90
	.short	242
	.short	197
	.short	33
	.short	-22
	.short	-2
	.short	-8
	.short	-19
	.short	85
	.short	239
	.short	202
	.short	37
	.short	-22
	.short	-2
	.short	-7
	.short	-19
	.short	80
	.short	236
	.short	206
	.short	41
	.short	-22
	.short	-3
	.short	-7
	.short	-20
	.short	75
	.short	233
	.short	210
	.short	46
	.short	-22
	.short	-3
	.short	-6
	.short	-21
	.short	69
	.short	230
	.short	215
	.short	50
	.short	-22
	.short	-3
	.short	-5
	.short	-21
	.short	65
	.short	226
	.short	219
	.short	55
	.short	-22
	.short	-5
	.short	-5
	.short	-21
	.short	60
	.short	222
	.short	222
	.short	60
	.short	-21
	.short	-5
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_6T32P_5M_a25, %object
	.size	s16ZmeCoef_6T32P_5M_a25, 216
s16ZmeCoef_6T32P_5M_a25:
	.short	-31
	.short	104
	.short	362
	.short	104
	.short	-31
	.short	4
	.short	-30
	.short	94
	.short	362
	.short	114
	.short	-32
	.short	4
	.short	-29
	.short	84
	.short	361
	.short	125
	.short	-32
	.short	3
	.short	-28
	.short	75
	.short	359
	.short	136
	.short	-33
	.short	3
	.short	-27
	.short	66
	.short	356
	.short	147
	.short	-33
	.short	3
	.short	-25
	.short	57
	.short	353
	.short	158
	.short	-33
	.short	2
	.short	-24
	.short	49
	.short	349
	.short	169
	.short	-33
	.short	2
	.short	-22
	.short	41
	.short	344
	.short	180
	.short	-32
	.short	1
	.short	-20
	.short	33
	.short	339
	.short	191
	.short	-31
	.short	0
	.short	-19
	.short	26
	.short	333
	.short	203
	.short	-30
	.short	-1
	.short	-17
	.short	19
	.short	327
	.short	214
	.short	-29
	.short	-2
	.short	-16
	.short	13
	.short	320
	.short	225
	.short	-27
	.short	-3
	.short	-14
	.short	7
	.short	312
	.short	236
	.short	-25
	.short	-4
	.short	-13
	.short	1
	.short	305
	.short	246
	.short	-22
	.short	-5
	.short	-11
	.short	-4
	.short	295
	.short	257
	.short	-19
	.short	-6
	.short	-10
	.short	-8
	.short	286
	.short	267
	.short	-16
	.short	-7
	.short	-9
	.short	-12
	.short	277
	.short	277
	.short	-12
	.short	-9
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_6T32P_4M_a20, %object
	.size	s16ZmeCoef_6T32P_4M_a20, 216
s16ZmeCoef_6T32P_4M_a20:
	.short	-20
	.short	130
	.short	297
	.short	130
	.short	-20
	.short	-5
	.short	-21
	.short	122
	.short	298
	.short	138
	.short	-19
	.short	-6
	.short	-22
	.short	115
	.short	297
	.short	146
	.short	-17
	.short	-7
	.short	-22
	.short	108
	.short	296
	.short	153
	.short	-16
	.short	-7
	.short	-23
	.short	101
	.short	295
	.short	161
	.short	-14
	.short	-8
	.short	-23
	.short	93
	.short	294
	.short	169
	.short	-12
	.short	-9
	.short	-24
	.short	87
	.short	292
	.short	177
	.short	-10
	.short	-10
	.short	-24
	.short	80
	.short	289
	.short	185
	.short	-7
	.short	-11
	.short	-24
	.short	73
	.short	286
	.short	193
	.short	-4
	.short	-12
	.short	-23
	.short	66
	.short	283
	.short	200
	.short	-1
	.short	-13
	.short	-23
	.short	60
	.short	279
	.short	208
	.short	2
	.short	-14
	.short	-23
	.short	54
	.short	276
	.short	215
	.short	5
	.short	-15
	.short	-22
	.short	48
	.short	271
	.short	222
	.short	9
	.short	-16
	.short	-21
	.short	42
	.short	266
	.short	229
	.short	13
	.short	-17
	.short	-21
	.short	37
	.short	261
	.short	236
	.short	17
	.short	-18
	.short	-21
	.short	32
	.short	255
	.short	242
	.short	22
	.short	-18
	.short	-20
	.short	27
	.short	249
	.short	249
	.short	27
	.short	-20
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_8T32P_3M_a19, %object
	.size	s16ZmeCoef_8T32P_3M_a19, 288
s16ZmeCoef_8T32P_3M_a19:
	.short	-18
	.short	18
	.short	144
	.short	226
	.short	144
	.short	19
	.short	-17
	.short	-4
	.short	-17
	.short	16
	.short	139
	.short	226
	.short	148
	.short	21
	.short	-17
	.short	-4
	.short	-17
	.short	13
	.short	135
	.short	227
	.short	153
	.short	24
	.short	-18
	.short	-5
	.short	-17
	.short	11
	.short	131
	.short	226
	.short	157
	.short	27
	.short	-18
	.short	-5
	.short	-17
	.short	9
	.short	126
	.short	225
	.short	161
	.short	30
	.short	-17
	.short	-5
	.short	-16
	.short	6
	.short	122
	.short	225
	.short	165
	.short	33
	.short	-17
	.short	-6
	.short	-16
	.short	4
	.short	118
	.short	224
	.short	169
	.short	37
	.short	-17
	.short	-7
	.short	-16
	.short	2
	.short	113
	.short	224
	.short	173
	.short	40
	.short	-17
	.short	-7
	.short	-15
	.short	0
	.short	109
	.short	222
	.short	177
	.short	43
	.short	-17
	.short	-7
	.short	-15
	.short	-1
	.short	104
	.short	220
	.short	181
	.short	47
	.short	-16
	.short	-8
	.short	-14
	.short	-3
	.short	100
	.short	218
	.short	185
	.short	51
	.short	-16
	.short	-9
	.short	-14
	.short	-5
	.short	96
	.short	217
	.short	188
	.short	54
	.short	-15
	.short	-9
	.short	-14
	.short	-6
	.short	91
	.short	214
	.short	192
	.short	58
	.short	-14
	.short	-9
	.short	-13
	.short	-7
	.short	87
	.short	212
	.short	195
	.short	62
	.short	-14
	.short	-10
	.short	-13
	.short	-9
	.short	83
	.short	210
	.short	198
	.short	66
	.short	-13
	.short	-10
	.short	-12
	.short	-10
	.short	79
	.short	207
	.short	201
	.short	70
	.short	-12
	.short	-11
	.short	-12
	.short	-11
	.short	74
	.short	205
	.short	205
	.short	74
	.short	-11
	.short	-12
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_6T32P_3M_a15, %object
	.size	s16ZmeCoef_6T32P_3M_a15, 216
s16ZmeCoef_6T32P_3M_a15:
	.short	16
	.short	136
	.short	217
	.short	136
	.short	16
	.short	-9
	.short	13
	.short	132
	.short	217
	.short	141
	.short	18
	.short	-9
	.short	11
	.short	128
	.short	217
	.short	145
	.short	21
	.short	-10
	.short	9
	.short	124
	.short	216
	.short	149
	.short	24
	.short	-10
	.short	7
	.short	119
	.short	216
	.short	153
	.short	27
	.short	-10
	.short	5
	.short	115
	.short	216
	.short	157
	.short	30
	.short	-11
	.short	3
	.short	111
	.short	215
	.short	161
	.short	33
	.short	-11
	.short	1
	.short	107
	.short	214
	.short	165
	.short	36
	.short	-11
	.short	0
	.short	102
	.short	213
	.short	169
	.short	39
	.short	-11
	.short	-2
	.short	98
	.short	211
	.short	173
	.short	43
	.short	-11
	.short	-3
	.short	94
	.short	209
	.short	177
	.short	46
	.short	-11
	.short	-4
	.short	90
	.short	207
	.short	180
	.short	50
	.short	-11
	.short	-5
	.short	85
	.short	206
	.short	184
	.short	53
	.short	-11
	.short	-6
	.short	81
	.short	203
	.short	187
	.short	57
	.short	-10
	.short	-7
	.short	77
	.short	201
	.short	190
	.short	61
	.short	-10
	.short	-8
	.short	73
	.short	198
	.short	193
	.short	65
	.short	-9
	.short	-9
	.short	69
	.short	196
	.short	196
	.short	69
	.short	-9
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_4T32P_4M_a15, %object
	.size	s16ZmeCoef_4T32P_4M_a15, 144
s16ZmeCoef_4T32P_4M_a15:
	.short	120
	.short	281
	.short	120
	.short	-9
	.short	113
	.short	281
	.short	127
	.short	-9
	.short	106
	.short	280
	.short	134
	.short	-8
	.short	99
	.short	279
	.short	141
	.short	-7
	.short	92
	.short	277
	.short	148
	.short	-5
	.short	85
	.short	275
	.short	156
	.short	-4
	.short	79
	.short	273
	.short	162
	.short	-2
	.short	72
	.short	270
	.short	170
	.short	0
	.short	66
	.short	267
	.short	177
	.short	2
	.short	61
	.short	263
	.short	184
	.short	4
	.short	56
	.short	259
	.short	191
	.short	6
	.short	50
	.short	255
	.short	198
	.short	9
	.short	44
	.short	251
	.short	205
	.short	12
	.short	40
	.short	246
	.short	211
	.short	15
	.short	34
	.short	241
	.short	218
	.short	19
	.short	31
	.short	235
	.short	224
	.short	22
	.short	26
	.short	230
	.short	230
	.short	26
	.short	0
	.short	0
	.short	0
	.short	0
	.type	s16ZmeCoef_2T32P_Gus2_6M_a0_5, %object
	.size	s16ZmeCoef_2T32P_Gus2_6M_a0_5, 72
s16ZmeCoef_2T32P_Gus2_6M_a0_5:
	.short	462
	.short	50
	.short	449
	.short	63
	.short	437
	.short	75
	.short	424
	.short	88
	.short	411
	.short	101
	.short	398
	.short	114
	.short	386
	.short	126
	.short	373
	.short	139
	.short	360
	.short	152
	.short	347
	.short	165
	.short	334
	.short	178
	.short	321
	.short	191
	.short	308
	.short	204
	.short	295
	.short	217
	.short	282
	.short	230
	.short	269
	.short	243
	.short	256
	.short	256
	.short	0
	.short	0
	.type	s16ZmeCoef_2T32P_4M_0_1, %object
	.size	s16ZmeCoef_2T32P_4M_0_1, 72
s16ZmeCoef_2T32P_4M_0_1:
	.short	366
	.short	146
	.short	359
	.short	153
	.short	351
	.short	161
	.short	344
	.short	168
	.short	337
	.short	175
	.short	330
	.short	182
	.short	323
	.short	189
	.short	316
	.short	196
	.short	309
	.short	203
	.short	302
	.short	210
	.short	296
	.short	216
	.short	289
	.short	223
	.short	282
	.short	230
	.short	276
	.short	236
	.short	269
	.short	243
	.short	263
	.short	249
	.short	256
	.short	256
	.short	0
	.short	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VPSS_ZmeCoef\000"
	.space	3
.LC1:
	.ascii	"Get zme_buf failed.\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
