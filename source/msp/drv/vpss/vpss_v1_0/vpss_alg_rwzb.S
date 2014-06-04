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
	.file	"vpss_alg_rwzb.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_rwzb)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_rwzb.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_rwzb.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_rwzb.o -O2 -Wall -Wundef
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
	.global	ALG_InitRwzbInfo
	.type	ALG_InitRwzbInfo, %function
ALG_InitRwzbInfo:
	.fnstart
.LFB598:
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
	mov	r1, #0	@ tmp137,
	mov	r3, r0	@ pDetInfo, pDetInfo
	mov	r2, #1	@ tmp136,
	str	r0, [r3, #8]	@ pDetInfo, <variable>.target
	mov	r0, r1	@, tmp137
	str	r1, [r3, #16]	@ tmp137, <variable>.isRWZB
	str	r2, [r3, #12]	@ tmp136, <variable>.btFlag
	str	r3, [r3, #0]	@ pDetInfo, <variable>.nowRWZB.next
	str	r3, [r3, #4]	@ pDetInfo, <variable>.nowRWZB.prev
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_InitRwzbInfo, .-ALG_InitRwzbInfo
	.align	2
	.global	DetPic_Config_Addr
	.type	DetPic_Config_Addr, %function
DetPic_Config_Addr:
	.fnstart
.LFB595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r0, #8]	@ pCurrent, <variable>.target
	mov	r4, r1	@ pstRwzbCfg, pstRwzbCfg
	cmp	r0, r3	@ pDetInfo, pCurrent
	beq	.L5	@,
	ldr	r5, [r3, #-4]	@ pRefSamp, <variable>.pSamp
	mov	r7, #0	@ tmp154,
	mov	r0, #3	@,
	mov	r1, #37	@,
	mov	r3, #436	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	ldr	lr, [r5, #20]	@ <variable>.Px, <variable>.Px
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r6, #:lower16:.LC0	@ tmp153,
	movt	r6, #:upper16:.LC0	@ tmp153,
	cmp	lr, r7	@ <variable>.Px,
	add	ip, lr, #7	@ tmp146, <variable>.Px,
	mov	r8, r0	@ tmp196,
	movlt	lr, ip	@ <variable>.Px, tmp146
	mov	lr, lr, asr r0	@ tmp147, <variable>.Px,
	str	lr, [r4, #16]	@ tmp147, <variable>.u32Addr
	ldr	ip, [r5, #24]	@ <variable>.Py, <variable>.Py
	str	lr, [sp, #8]	@ tmp147,
	cmp	ip, r7	@ <variable>.Py,
	add	lr, ip, #7	@ tmp150, <variable>.Py,
	str	r7, [sp, #12]	@ tmp154,
	movlt	ip, lr	@ <variable>.Py, tmp150
	str	r6, [sp, #0]	@ tmp153,
	mov	lr, ip, asr r0	@ tmp151, <variable>.Py,
	str	r7, [sp, #4]	@ tmp154,
	str	lr, [r4, #20]	@ tmp151, <variable>.u32Addr
	str	lr, [sp, #16]	@ tmp151,
	bl	HI_LogOut	@
	ldr	lr, [r5, #40]	@ <variable>.Px, <variable>.Px
	mov	r0, r8	@, tmp196
	mov	r1, #37	@,
	mov	r3, #436	@,
	cmp	lr, r7	@ <variable>.Px,
	add	ip, lr, #7	@ tmp160, <variable>.Px,
	mov	r7, #1	@ tmp168,
	movw	r2, #:lower16:.LANCHOR0	@,
	movlt	lr, ip	@ <variable>.Px, tmp160
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	lr, lr, asr r8	@ tmp161, <variable>.Px,
	str	lr, [r4, #24]	@ tmp161, <variable>.u32Addr
	ldr	ip, [r5, #44]	@ <variable>.Py, <variable>.Py
	str	lr, [sp, #8]	@ tmp161,
	cmp	ip, #0	@ <variable>.Py,
	add	lr, ip, #7	@ tmp164, <variable>.Py,
	str	r7, [sp, #12]	@ tmp168,
	movlt	ip, lr	@ <variable>.Py, tmp164
	stmia	sp, {r6, r7}	@ phole stm
	mov	r7, ip, asr r8	@ tmp165, <variable>.Py,
	str	r7, [r4, #28]	@ tmp165, <variable>.u32Addr
	str	r7, [sp, #16]	@ tmp165,
	bl	HI_LogOut	@
	ldr	lr, [r5, #60]	@ <variable>.Px, <variable>.Px
	mov	r7, #2	@ tmp182,
	mov	r0, r8	@, tmp196
	mov	r1, #37	@,
	add	ip, lr, #7	@ tmp174, <variable>.Px,
	cmp	lr, #0	@ <variable>.Px,
	mov	r3, #436	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movlt	lr, ip	@ <variable>.Px, tmp174
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	lr, lr, asr r8	@ tmp175, <variable>.Px,
	str	lr, [r4, #32]	@ tmp175, <variable>.u32Addr
	ldr	ip, [r5, #64]	@ <variable>.Py, <variable>.Py
	str	lr, [sp, #8]	@ tmp175,
	cmp	ip, #0	@ <variable>.Py,
	add	lr, ip, #7	@ tmp178, <variable>.Py,
	str	r7, [sp, #12]	@ tmp182,
	movlt	ip, lr	@ <variable>.Py, tmp178
	str	r6, [sp, #0]	@ tmp153,
	mov	lr, ip, asr r8	@ tmp179, <variable>.Py,
	str	r7, [sp, #4]	@ tmp182,
	str	lr, [r4, #36]	@ tmp179, <variable>.u32Addr
	str	lr, [sp, #16]	@ tmp179,
	bl	HI_LogOut	@
	ldr	ip, [r5, #80]	@ <variable>.Px, <variable>.Px
	mov	r0, r8	@, tmp196
	mov	r1, #37	@,
	mov	r3, #436	@,
	add	r7, ip, #7	@ tmp188, <variable>.Px,
	cmp	ip, #0	@ <variable>.Px,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movlt	ip, r7	@ <variable>.Px, tmp188
	mov	lr, ip, asr r8	@ tmp189, <variable>.Px,
	str	lr, [r4, #40]	@ tmp189, <variable>.u32Addr
	ldr	r7, [r5, #84]	@ <variable>.Py, <variable>.Py
	str	lr, [sp, #8]	@ tmp189,
	cmp	r7, #0	@ <variable>.Py,
	add	lr, r7, #7	@ tmp192, <variable>.Py,
	str	r6, [sp, #0]	@ tmp153,
	movlt	r7, lr	@ <variable>.Py, tmp192
	str	r8, [sp, #4]	@ tmp196,
	mov	ip, r7, asr r8	@ tmp193, <variable>.Py,
	str	r8, [sp, #12]	@ tmp196,
	str	ip, [r4, #44]	@ tmp193, <variable>.u32Addr
	str	ip, [sp, #16]	@ tmp193,
	bl	HI_LogOut	@
	ldr	lr, [r5, #100]	@ <variable>.Px, <variable>.Px
	mov	r0, r8	@, tmp196
	mov	r1, #37	@,
	mov	r3, #436	@,
	add	r7, lr, #7	@ tmp202, <variable>.Px,
	cmp	lr, #0	@ <variable>.Px,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movlt	lr, r7	@ <variable>.Px, tmp202
	mov	r7, #4	@ tmp210,
	mov	lr, lr, asr r8	@ tmp203, <variable>.Px,
	str	lr, [r4, #48]	@ tmp203, <variable>.u32Addr
	ldr	ip, [r5, #104]	@ <variable>.Py, <variable>.Py
	str	lr, [sp, #8]	@ tmp203,
	cmp	ip, #0	@ <variable>.Py,
	add	lr, ip, #7	@ tmp206, <variable>.Py,
	str	r6, [sp, #0]	@ tmp153,
	movlt	ip, lr	@ <variable>.Py, tmp206
	str	r7, [sp, #12]	@ tmp210,
	mov	ip, ip, asr r8	@ tmp207, <variable>.Py,
	str	r7, [sp, #4]	@ tmp210,
	str	ip, [r4, #52]	@ tmp207, <variable>.u32Addr
	str	ip, [sp, #16]	@ tmp207,
	bl	HI_LogOut	@
	ldr	lr, [r5, #120]	@ <variable>.Px, <variable>.Px
	mov	ip, #5	@ tmp224,
	movw	r2, #:lower16:.LANCHOR0	@,
	mov	r0, r8	@, tmp196
	add	r3, lr, #7	@ tmp216, <variable>.Px,
	cmp	lr, #0	@ <variable>.Px,
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r1, #37	@,
	movlt	lr, r3	@ <variable>.Px, tmp216
	mov	r3, #436	@,
	mov	lr, lr, asr r8	@ tmp217, <variable>.Px,
	str	lr, [r4, #56]	@ tmp217, <variable>.u32Addr
	ldr	r5, [r5, #124]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #0]	@ tmp153,
	cmp	r5, #0	@ <variable>.Py,
	add	r6, r5, #7	@ tmp220, <variable>.Py,
	str	lr, [sp, #8]	@ tmp217,
	movlt	r5, r6	@ <variable>.Py, tmp220
	str	ip, [sp, #12]	@ tmp224,
	mov	r5, r5, asr r8	@ tmp221, <variable>.Py,
	str	ip, [sp, #4]	@ tmp224,
	str	r5, [r4, #60]	@ tmp221, <variable>.u32Addr
	str	r5, [sp, #16]	@ tmp221,
	bl	HI_LogOut	@
.L5:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	DetPic_Config_Addr, .-DetPic_Config_Addr
	.align	2
	.global	DetPic_Compare_Pattern
	.type	DetPic_Compare_Pattern, %function
DetPic_Compare_Pattern:
	.fnstart
.LFB596:
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
	ldr	r3, [r0, #8]	@ pCurrent, <variable>.target
	mov	r5, r0	@ pDetInfo, pDetInfo
	cmp	r0, r3	@ pDetInfo, pCurrent
	beq	.L35	@,
	ldr	r4, [r3, #-4]	@ pRefSamp, <variable>.pSamp
	add	r7, r1, #64	@ D.14155, pstRwzbCfg,
	sub	r8, fp, #44	@ tmp812,,
	mov	r2, #8	@,
	mov	r1, r7	@, D.14155
	mov	r0, r8	@, tmp812
	bl	memcpy	@
	ldr	r3, [r4, #20]	@ <variable>.Px, <variable>.Px
	cmp	r3, #0	@ <variable>.Px,
	beq	.L36	@,
.L9:
	ldrb	lr, [r4, #29]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [fp, #-43]	@ zero_extendqisi2	@ data, data
	ldrb	r1, [r4, #28]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [fp, #-44]	@ zero_extendqisi2	@ data, data
	rsb	r3, r0, lr	@ tmp232, data, <variable>.Pix
	cmp	r3, #0	@ tmp232,
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r6, r1	@ tmp226, data, <variable>.Pix
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	rsblt	r3, r3, #0	@ tmp233, tmp232
	cmp	lr, #0	@ tmp226,
	rsb	r1, r2, ip	@ tmp238, data, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp227, tmp226
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	cmp	r3, #2	@ tmp233,
	movle	r3, #0	@, tmp235
	movgt	r3, #1	@, tmp235
	ldrb	r6, [r4, #31]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp227,
	addgt	r3, r3, #1	@,, MisCnt.462, tmp235
	cmp	r1, #0	@ tmp238,
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	rsb	r6, r0, r6	@ tmp244, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp239, tmp238
	ldrb	ip, [r4, #32]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp239,
	addgt	r3, r3, #1	@,, MisCnt.471, MisCnt.462
	cmp	r6, #0	@ tmp244,
	ldrb	lr, [r4, #33]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp250, data, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp245, tmp244
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r6, #2	@ tmp245,
	addgt	r3, r3, #1	@,, MisCnt.480, MisCnt.471
	cmp	ip, #0	@ tmp250,
	ldrb	r0, [r4, #34]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp251, tmp250
	rsb	r1, r1, lr	@ tmp256, data, <variable>.Pix
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	ip, #2	@ tmp251,
	addgt	r3, r3, #1	@,, MisCnt.489, MisCnt.480
	cmp	r1, #0	@ tmp256,
	rsb	ip, r2, r0	@ tmp262, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp257, tmp256
	ldrb	r0, [r4, #35]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp257,
	addgt	r3, r3, #1	@,, MisCnt.498, MisCnt.489
	ldrb	r2, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	ip, #0	@ tmp262,
	rsblt	ip, ip, #0	@ tmp263, tmp262
	rsb	r6, r2, r0	@ tmp268, data, <variable>.Pix
	cmp	ip, #2	@ tmp263,
	addgt	r3, r3, #1	@,, MisCnt.755, MisCnt.498
	cmp	r6, #0	@ tmp268,
	rsblt	r6, r6, #0	@ tmp269, tmp268
	cmp	r6, #2	@ tmp269,
	movle	r6, r3	@, MisCnt.518, MisCnt.755
	addgt	r6, r3, #1	@,, MisCnt.518, MisCnt.755
.L11:
	mov	r0, r8	@, tmp812
	add	r1, r7, #8	@, D.14155,
	mov	r2, #8	@,
	bl	memcpy	@
	ldr	ip, [r4, #40]	@ <variable>.Px, <variable>.Px
	cmp	ip, #0	@ <variable>.Px,
	beq	.L37	@,
.L12:
	ldrb	r3, [r4, #48]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@ data, data
	ldrb	ip, [r4, #49]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r0, r1, r3	@ tmp282, data, <variable>.Pix
	ldrb	lr, [fp, #-43]	@ zero_extendqisi2	@ data, data
	cmp	r0, #0	@ tmp282,
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	rsb	r3, lr, ip	@ tmp288, data, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp283, tmp282
	ldrb	r1, [r4, #50]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r0, #2	@ tmp283,
	addgt	r6, r6, #1	@,, MisCnt.535, MisCnt.518
	cmp	r3, #0	@ tmp288,
	ldrb	lr, [r4, #51]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r2, r1	@ tmp294, data, <variable>.Pix
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	rsblt	r3, r3, #0	@ tmp289, tmp288
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	cmp	r3, #2	@ tmp289,
	movle	r3, r6	@, MisCnt.543, MisCnt.535
	addgt	r3, r6, #1	@,, MisCnt.543, MisCnt.535
	cmp	r1, #0	@ tmp294,
	rsb	r6, r0, lr	@ tmp300, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp295, tmp294
	ldrb	ip, [r4, #52]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp295,
	addgt	r3, r3, #1	@,, MisCnt.552, MisCnt.543
	cmp	r6, #0	@ tmp300,
	ldrb	lr, [r4, #53]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp306, data, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp301, tmp300
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r6, #2	@ tmp301,
	addgt	r3, r3, #1	@,, MisCnt.560, MisCnt.552
	cmp	ip, #0	@ tmp306,
	ldrb	r0, [r4, #54]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp312, data, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp307, tmp306
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	ip, #2	@ tmp307,
	addgt	r3, r3, #1	@,, MisCnt.569, MisCnt.560
	cmp	r1, #0	@ tmp312,
	ldrb	r6, [r4, #55]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r2, r0	@ tmp318, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp313, tmp312
	ldrb	r0, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	r1, #2	@ tmp313,
	addgt	r3, r3, #1	@,, MisCnt.577, MisCnt.569
	cmp	lr, #0	@ tmp318,
	rsb	r1, r0, r6	@ tmp324, data, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp319, tmp318
	cmp	lr, #2	@ tmp319,
	addgt	r3, r3, #1	@,, MisCnt.861, MisCnt.577
	cmp	r1, #0	@ tmp324,
	rsblt	r1, r1, #0	@ tmp325, tmp324
	cmp	r1, #2	@ tmp325,
	movle	r6, r3	@, MisCnt.518, MisCnt.861
	addgt	r6, r3, #1	@,, MisCnt.518, MisCnt.861
.L14:
	mov	r2, #8	@,
	mov	r0, r8	@, tmp812
	add	r1, r7, #16	@, D.14155,
	bl	memcpy	@
	ldr	r2, [r4, #60]	@ <variable>.Px, <variable>.Px
	cmp	r2, #0	@ <variable>.Px,
	beq	.L38	@,
.L15:
	ldrb	r3, [r4, #68]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@ data, data
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r0, r1, r3	@ tmp338, data, <variable>.Pix
	ldrb	lr, [fp, #-43]	@ zero_extendqisi2	@ data, data
	cmp	r0, #0	@ tmp338,
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	rsb	r3, lr, ip	@ tmp344, data, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp339, tmp338
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r0, #2	@ tmp339,
	addgt	r6, r6, #1	@,, MisCnt.611, MisCnt.518
	cmp	r3, #0	@ tmp344,
	ldrb	lr, [r4, #71]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r2, r1	@ tmp350, data, <variable>.Pix
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	rsblt	r3, r3, #0	@ tmp345, tmp344
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	cmp	r3, #2	@ tmp345,
	movle	r3, r6	@, MisCnt.619, MisCnt.611
	addgt	r3, r6, #1	@,, MisCnt.619, MisCnt.611
	cmp	r1, #0	@ tmp350,
	rsb	r6, r0, lr	@ tmp356, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp351, tmp350
	ldrb	ip, [r4, #72]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp351,
	addgt	r3, r3, #1	@,, MisCnt.628, MisCnt.619
	cmp	r6, #0	@ tmp356,
	ldrb	lr, [r4, #73]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp362, data, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp357, tmp356
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r6, #2	@ tmp357,
	addgt	r3, r3, #1	@,, MisCnt.637, MisCnt.628
	cmp	ip, #0	@ tmp362,
	ldrb	r0, [r4, #74]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp368, data, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp363, tmp362
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	ip, #2	@ tmp363,
	addgt	r3, r3, #1	@,, MisCnt.646, MisCnt.637
	cmp	r1, #0	@ tmp368,
	ldrb	lr, [r4, #75]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r0	@ tmp374, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp369, tmp368
	ldrb	ip, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	r1, #2	@ tmp369,
	addgt	r3, r3, #1	@,, MisCnt.655, MisCnt.646
	cmp	r2, #0	@ tmp374,
	rsb	r6, ip, lr	@ tmp380, data, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp375, tmp374
	cmp	r2, #2	@ tmp375,
	addgt	r3, r3, #1	@,, MisCnt.917, MisCnt.655
	cmp	r6, #0	@ tmp380,
	rsblt	r6, r6, #0	@ tmp381, tmp380
	cmp	r6, #2	@ tmp381,
	movle	r6, r3	@, MisCnt.518, MisCnt.917
	addgt	r6, r3, #1	@,, MisCnt.518, MisCnt.917
.L17:
	mov	r2, #8	@,
	mov	r0, r8	@, tmp812
	add	r1, r7, #24	@, D.14155,
	bl	memcpy	@
	ldr	r2, [r4, #80]	@ <variable>.Px, <variable>.Px
	cmp	r2, #0	@ <variable>.Px,
	beq	.L39	@,
.L18:
	ldrb	r3, [r4, #88]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@ data, data
	ldrb	ip, [r4, #89]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r0, r1, r3	@ tmp394, data, <variable>.Pix
	ldrb	lr, [fp, #-43]	@ zero_extendqisi2	@ data, data
	cmp	r0, #0	@ tmp394,
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	rsb	r3, lr, ip	@ tmp400, data, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp395, tmp394
	ldrb	r1, [r4, #90]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r0, #2	@ tmp395,
	addgt	r6, r6, #1	@,, MisCnt.692, MisCnt.518
	cmp	r3, #0	@ tmp400,
	ldrb	lr, [r4, #91]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r2, r1	@ tmp406, data, <variable>.Pix
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	rsblt	r3, r3, #0	@ tmp401, tmp400
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	cmp	r3, #2	@ tmp401,
	movle	r3, r6	@, MisCnt.700, MisCnt.692
	addgt	r3, r6, #1	@,, MisCnt.700, MisCnt.692
	cmp	r1, #0	@ tmp406,
	rsb	r6, r0, lr	@ tmp412, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp407, tmp406
	ldrb	ip, [r4, #92]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp407,
	addgt	r3, r3, #1	@,, MisCnt.708, MisCnt.700
	cmp	r6, #0	@ tmp412,
	ldrb	lr, [r4, #93]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp418, data, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp413, tmp412
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r6, #2	@ tmp413,
	addgt	r3, r3, #1	@,, MisCnt.717, MisCnt.708
	cmp	ip, #0	@ tmp418,
	ldrb	r0, [r4, #94]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp424, data, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp419, tmp418
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	ip, #2	@ tmp419,
	addgt	r3, r3, #1	@,, MisCnt.726, MisCnt.717
	cmp	r1, #0	@ tmp424,
	ldrb	lr, [r4, #95]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r0	@ tmp430, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp425, tmp424
	ldrb	ip, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	r1, #2	@ tmp425,
	addgt	r3, r3, #1	@,, MisCnt.735, MisCnt.726
	cmp	r2, #0	@ tmp430,
	rsb	r6, ip, lr	@ tmp436, data, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp431, tmp430
	cmp	r2, #2	@ tmp431,
	addgt	r3, r3, #1	@,, MisCnt.973, MisCnt.735
	cmp	r6, #0	@ tmp436,
	rsblt	r6, r6, #0	@ tmp437, tmp436
	cmp	r6, #2	@ tmp437,
	movle	r6, r3	@, MisCnt.518, MisCnt.973
	addgt	r6, r3, #1	@,, MisCnt.518, MisCnt.973
.L20:
	mov	r2, #8	@,
	mov	r0, r8	@, tmp812
	add	r1, r7, #32	@, D.14155,
	bl	memcpy	@
	ldr	r2, [r4, #100]	@ <variable>.Px, <variable>.Px
	cmp	r2, #0	@ <variable>.Px,
	beq	.L40	@,
.L21:
	ldrb	r3, [r4, #108]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [fp, #-44]	@ zero_extendqisi2	@ data, data
	ldrb	ip, [r4, #109]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r0, r1, r3	@ tmp450, data, <variable>.Pix
	ldrb	lr, [fp, #-43]	@ zero_extendqisi2	@ data, data
	cmp	r0, #0	@ tmp450,
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	rsb	r3, lr, ip	@ tmp456, data, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp451, tmp450
	ldrb	r1, [r4, #110]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r0, #2	@ tmp451,
	addgt	r6, r6, #1	@,, MisCnt.768, MisCnt.518
	cmp	r3, #0	@ tmp456,
	ldrb	lr, [r4, #111]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r2, r1	@ tmp462, data, <variable>.Pix
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	rsblt	r3, r3, #0	@ tmp457, tmp456
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	cmp	r3, #2	@ tmp457,
	movle	r3, r6	@, MisCnt.776, MisCnt.768
	addgt	r3, r6, #1	@,, MisCnt.776, MisCnt.768
	cmp	r1, #0	@ tmp462,
	rsb	r6, r0, lr	@ tmp468, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp463, tmp462
	ldrb	ip, [r4, #112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp463,
	addgt	r3, r3, #1	@,, MisCnt.784, MisCnt.776
	cmp	r6, #0	@ tmp468,
	ldrb	lr, [r4, #113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp474, data, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp469, tmp468
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r6, #2	@ tmp469,
	addgt	r3, r3, #1	@,, MisCnt.792, MisCnt.784
	cmp	ip, #0	@ tmp474,
	ldrb	r0, [r4, #114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp480, data, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp475, tmp474
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	ip, #2	@ tmp475,
	addgt	r3, r3, #1	@,, MisCnt.801, MisCnt.792
	cmp	r1, #0	@ tmp480,
	ldrb	lr, [r4, #115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r0	@ tmp486, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp481, tmp480
	ldrb	ip, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	r1, #2	@ tmp481,
	addgt	r3, r3, #1	@,, MisCnt.810, MisCnt.801
	cmp	r2, #0	@ tmp486,
	rsb	r6, ip, lr	@ tmp492, data, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp487, tmp486
	cmp	r2, #2	@ tmp487,
	addgt	r3, r3, #1	@,, MisCnt.1029, MisCnt.810
	cmp	r6, #0	@ tmp492,
	rsblt	r6, r6, #0	@ tmp493, tmp492
	cmp	r6, #2	@ tmp493,
	movle	r6, r3	@, MisCnt.518, MisCnt.1029
	addgt	r6, r3, #1	@,, MisCnt.518, MisCnt.1029
.L23:
	mov	r2, #8	@,
	mov	r0, r8	@, tmp812
	add	r1, r7, #40	@, D.14155,
	bl	memcpy	@
	ldr	r2, [r4, #120]	@ <variable>.Px, <variable>.Px
	cmp	r2, #0	@ <variable>.Px,
	beq	.L41	@,
.L24:
	ldrb	r0, [r4, #128]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [fp, #-44]	@ zero_extendqisi2	@ data, data
	ldrb	ip, [r4, #129]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r3, r0	@ tmp506, data, <variable>.Pix
	ldrb	r7, [fp, #-43]	@ zero_extendqisi2	@ data, data
	cmp	r1, #0	@ tmp506,
	ldrb	lr, [r4, #130]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r3, r7, ip	@ tmp512, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp507, tmp506
	ldrb	r2, [fp, #-42]	@ zero_extendqisi2	@ data, data
	cmp	r1, #2	@ tmp507,
	addgt	r6, r6, #1	@,, MisCnt, MisCnt.518
	cmp	r3, #0	@ tmp512,
	ldrb	r0, [fp, #-41]	@ zero_extendqisi2	@ data, data
	rsb	r1, r2, lr	@ tmp518, data, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp513, tmp512
	ldrb	r7, [r4, #131]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp513,
	movle	lr, r6	@, MisCnt.398, MisCnt
	addgt	lr, r6, #1	@,, MisCnt.398, MisCnt
	cmp	r1, #0	@ tmp518,
	ldrb	r2, [fp, #-40]	@ zero_extendqisi2	@ data, data
	rsb	r7, r0, r7	@ tmp524, data, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp519, tmp518
	ldrb	ip, [r4, #132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r1, #2	@ tmp519,
	addgt	lr, lr, #1	@,, MisCnt.410, MisCnt.398
	cmp	r7, #0	@ tmp524,
	ldrb	r6, [r4, #133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp530, data, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp525, tmp524
	ldrb	r1, [fp, #-39]	@ zero_extendqisi2	@ data, data
	cmp	r7, #2	@ tmp525,
	addgt	lr, lr, #1	@,, MisCnt.421, MisCnt.410
	cmp	ip, #0	@ tmp530,
	ldrb	r0, [r4, #134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r6	@ tmp536, data, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp531, tmp530
	cmp	ip, #2	@ tmp531,
	addgt	lr, lr, #1	@,, MisCnt.431, MisCnt.421
	ldrb	r2, [fp, #-38]	@ zero_extendqisi2	@ data, data
	cmp	r1, #0	@ tmp536,
	ldrb	ip, [r4, #135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp537, tmp536
	rsb	r2, r2, r0	@ tmp542, data, <variable>.Pix
	cmp	r1, #2	@ tmp537,
	addgt	lr, lr, #1	@,, MisCnt.442, MisCnt.431
	ldrb	r1, [fp, #-37]	@ zero_extendqisi2	@ data, data
	cmp	r2, #0	@ tmp542,
	rsb	r6, r1, ip	@ tmp548, data, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp543, tmp542
	cmp	r2, #2	@ tmp543,
	addgt	lr, lr, #1	@,, MisCnt.1085, MisCnt.442
	cmp	r6, #0	@ tmp548,
	rsblt	r6, r6, #0	@ tmp549, tmp548
	cmp	r6, #2	@ tmp549,
	movle	r6, lr	@, MisCnt.518, MisCnt.1085
	addgt	r6, lr, #1	@,, MisCnt.518, MisCnt.1085
.L26:
	cmp	r6, #2	@ MisCnt.518,
	ble	.L27	@,
	ldr	r1, [r5, #8]	@ <variable>.target, <variable>.target
	mov	lr, #0	@ tmp554,
	ldr	r2, [r1, #0]	@ D.14172, <variable>.next
	str	lr, [r5, #16]	@ tmp554, <variable>.isRWZB
	cmp	r5, r2	@ pDetInfo, D.14172
	str	r2, [r5, #8]	@ D.14172, <variable>.target
	ldreq	r2, [r5, #0]	@ <variable>.nowRWZB.next, <variable>.nowRWZB.next
	streq	r2, [r5, #8]	@ <variable>.nowRWZB.next, <variable>.target
.L35:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L41:
	ldr	r0, [r4, #124]	@ <variable>.Py, <variable>.Py
	cmp	r0, #0	@ <variable>.Py,
	bne	.L24	@,
	b	.L26	@
.L40:
	ldr	r0, [r4, #104]	@ <variable>.Py, <variable>.Py
	cmp	r0, #0	@ <variable>.Py,
	bne	.L21	@,
	b	.L23	@
.L39:
	ldr	r0, [r4, #84]	@ <variable>.Py, <variable>.Py
	cmp	r0, #0	@ <variable>.Py,
	bne	.L18	@,
	b	.L20	@
.L38:
	ldr	r0, [r4, #64]	@ <variable>.Py, <variable>.Py
	cmp	r0, #0	@ <variable>.Py,
	bne	.L15	@,
	b	.L17	@
.L37:
	ldr	r2, [r4, #44]	@ <variable>.Py, <variable>.Py
	cmp	r2, #0	@ <variable>.Py,
	bne	.L12	@,
	b	.L14	@
.L36:
	ldr	r6, [r4, #24]	@ <variable>.Py, <variable>.Py
	cmp	r6, #0	@ <variable>.Py,
	bne	.L9	@,
	b	.L11	@
.L27:
	movw	r0, #:lower16:.LC1	@ tmp557,
	movt	r0, #:upper16:.LC1	@ tmp557,
	str	r0, [sp, #0]	@ tmp557,
	mov	r1, #37	@,
	ldr	lr, [r4, #0]	@ <variable>.type, <variable>.type
	mov	r0, #3	@,
	ldr	r2, .L42	@,
	mov	r3, #496	@,
	str	lr, [sp, #4]	@ <variable>.type,
	bl	HI_LogOut	@
	ldr	ip, [r4, #0]	@ <variable>.type, <variable>.type
	str	ip, [r5, #16]	@ <variable>.type, <variable>.isRWZB
	b	.L35	@
.L43:
	.align	2
.L42:
	.word	.LANCHOR0+20
	.fnend
	.size	DetPic_Compare_Pattern, .-DetPic_Compare_Pattern
	.align	2
	.global	Free_RWZB
	.type	Free_RWZB, %function
Free_RWZB:
	.fnstart
.LFB594:
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
	ldr	r3, [r0, #0]	@ pos, <variable>.nowRWZB.next
	mov	r6, r0	@ pDetInfo, pDetInfo
	cmp	r3, r0	@ pos, pDetInfo
	ldr	r4, [r3, #0]	@ n, <variable>.next
	beq	.L45	@,
.L48:
	ldr	r2, [r3, #4]	@ D.14242, <variable>.prev
	sub	r0, r3, #4	@, pos,
	mov	r5, r4	@ n.1111, n
	str	r4, [r2, #0]	@ n, <variable>.next
	str	r2, [r4, #4]	@ D.14242, <variable>.prev
	str	r3, [r3, #0]	@ pos, <variable>.next
	str	r3, [r3, #4]	@ pos, <variable>.prev
	bl	vfree	@
	cmp	r6, r4	@ pDetInfo, pos
	mov	r3, r4	@ pos, n.1111
	ldr	r4, [r4, #0]	@ n, <variable>.next
	bne	.L48	@,
.L45:
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Free_RWZB, .-Free_RWZB
	.align	2
	.global	ALG_DeInitRwzbInfo
	.type	ALG_DeInitRwzbInfo, %function
ALG_DeInitRwzbInfo:
	.fnstart
.LFB599:
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
	mov	r4, #0	@ tmp135,
	mov	r2, #1	@ tmp136,
	str	r4, [r0, #16]	@ tmp135, <variable>.isRWZB
	str	r2, [r0, #12]	@ tmp136, <variable>.btFlag
	str	r4, [r0, #8]	@ tmp135, <variable>.target
	bl	Free_RWZB	@
	mov	r0, r4	@, tmp135
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ALG_DeInitRwzbInfo, .-ALG_DeInitRwzbInfo
	.align	2
	.global	Init_RWZB
	.type	Init_RWZB, %function
Init_RWZB:
	.fnstart
.LFB593:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp178,
	movt	r3, #:upper16:.LANCHOR1	@ tmp178,
	mov	r5, r1	@ height, height
	mov	r4, r0	@ pDetInfo, pDetInfo
	mov	r7, r2	@ width, width
	ldr	r1, [r3, #0]	@ temp.1175, SamPool
	cmp	r1, #0	@ temp.1175,
	beq	.L53	@,
	add	r6, r3, #4	@ ivtmp.1168, tmp178,
	mov	r8, r0	@ prephitmp.1155, pDetInfo
	b	.L56	@
.L54:
	ldr	r1, [r6], #4	@ temp.1175, SamPool
	cmp	r1, #0	@ temp.1175,
	beq	.L53	@,
.L56:
	ldr	r3, [r1, #8]	@ <variable>.height, <variable>.height
	cmp	r3, r5	@ <variable>.height, height
	bne	.L54	@,
	ldr	r0, [r1, #12]	@ <variable>.width, <variable>.width
	cmp	r0, r7	@ <variable>.width, width
	bne	.L54	@,
	mov	r0, #12	@,
	bl	vmalloc	@
	cmp	r0, #0	@ D.14080
	mov	r3, r0	@ D.14082, D.14080
	beq	.L55	@,
	ldr	r1, [r6, #-4]	@ tmp182, SamPool
	str	r4, [r0, #4]	@ pDetInfo, <variable>.list.next
	str	r1, [r3], #4	@ tmp182, <variable>.pSamp
	ldr	r2, [r4, #4]	@ D.14247, <variable>.nowRWZB.prev
	str	r3, [r4, #4]	@ D.14082, <variable>.nowRWZB.prev
	str	r3, [r2, #0]	@ D.14082, <variable>.next
	str	r2, [r0, #8]	@ D.14247, <variable>.list.prev
	ldr	r1, [r6], #4	@ temp.1175, SamPool
	cmp	r1, #0	@ temp.1175,
	bne	.L56	@,
.L53:
	ldr	ip, [r4, #0]	@ <variable>.nowRWZB.next, <variable>.nowRWZB.next
	mov	r0, #0	@ D.14085,
	str	ip, [r4, #8]	@ <variable>.nowRWZB.next, <variable>.target
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L55:
	ldr	r3, [r4, #0]	@ pos, <variable>.nowRWZB.next
	cmp	r4, r3	@ pDetInfo, pos
	ldr	r5, [r3, #0]	@ n, <variable>.next
	beq	.L58	@,
.L61:
	ldr	r8, [r3, #4]	@ D.14250, <variable>.prev
	sub	r0, r3, #4	@, pos,
	mov	r6, r5	@ n.1174, n
	str	r5, [r8, #0]	@ n, <variable>.next
	str	r8, [r5, #4]	@ D.14250, <variable>.prev
	str	r3, [r3, #0]	@ pos, <variable>.next
	str	r3, [r3, #4]	@ pos, <variable>.prev
	bl	vfree	@
	cmp	r4, r5	@ pDetInfo, pos
	mov	r3, r5	@ pos, n.1174
	ldr	r5, [r5, #0]	@ n, <variable>.next
	bne	.L61	@,
	ldr	r8, [r4, #0]	@ prephitmp.1155, <variable>.nowRWZB.next
.L58:
	mov	r3, #1	@ tmp185,
	mov	lr, #0	@ tmp186,
	mvn	r0, #0	@ D.14085,
	str	r8, [r4, #8]	@ prephitmp.1155, <variable>.target
	str	r3, [r4, #12]	@ tmp185, <variable>.btFlag
	str	lr, [r4, #16]	@ tmp186, <variable>.isRWZB
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Init_RWZB, .-Init_RWZB
	.align	2
	.global	ALG_DetPic
	.type	ALG_DetPic, %function
ALG_DetPic:
	.fnstart
.LFB597:
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
	ldr	r3, [r0, #0]	@ D.14192, <variable>.nowRWZB.next
	ldr	r8, [r1, #0]	@ u32Height, <variable>.u32Height
	mov	r4, r0	@ pDetInfo, pDetInfo
	cmp	r3, r0	@ D.14192, pDetInfo
	ldr	r7, [r1, #4]	@ u32Width, <variable>.u32Width
	mov	r5, r1	@ pstRwzbCfg, pstRwzbCfg
	ldrne	r2, [r3, #-4]	@ pRefSamp, <variable>.pSamp
	moveq	r3, #0	@ nowWidth,
	moveq	r6, r3	@ nowHeight, nowWidth
	ldrne	r6, [r2, #8]	@ nowHeight, <variable>.height
	ldrne	r3, [r2, #12]	@ nowWidth, <variable>.width
	cmp	r3, r7	@ nowWidth, u32Width
	cmpeq	r6, r8	@, nowHeight, u32Height
	movne	r6, #0	@, tmp151
	moveq	r6, #1	@, tmp151
	beq	.L71	@,
	bl	Free_RWZB	@
	mov	r0, r4	@, pDetInfo
	mov	r1, r8	@, u32Height
	mov	r2, r7	@, u32Width
	bl	Init_RWZB	@
	cmp	r0, #0	@,
	beq	.L72	@,
	mov	r2, r6	@ prephitmp.1191, tmp151
	mov	r0, #1	@ tmp152,
	str	r4, [r4, #8]	@ pDetInfo, <variable>.target
	str	r6, [r4, #16]	@ tmp151, <variable>.isRWZB
	str	r0, [r4, #12]	@ tmp152, <variable>.btFlag
	str	r4, [r4, #0]	@ pDetInfo, <variable>.nowRWZB.next
	str	r4, [r4, #4]	@ pDetInfo, <variable>.nowRWZB.prev
.L68:
	ldr	lr, .L73	@ tmp155,
	movw	ip, #551	@ tmp159,
	mov	r3, ip	@, tmp159
	str	r2, [sp, #12]	@ prephitmp.1191,
	mov	r0, #3	@,
	mov	r1, #37	@,
	mov	r2, lr	@, tmp155
	str	ip, [sp, #8]	@ tmp159,
	str	lr, [sp, #4]	@ tmp155,
	movw	ip, #:lower16:.LC2	@ tmp156,
	movt	ip, #:upper16:.LC2	@ tmp156,
	str	ip, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L71:
	bl	DetPic_Compare_Pattern	@
	mov	r0, r4	@, pDetInfo
	mov	r1, r5	@, pstRwzbCfg
	bl	DetPic_Config_Addr	@
	ldr	r2, [r4, #16]	@ prephitmp.1191, <variable>.isRWZB
	b	.L68	@
.L72:
	mov	r1, r5	@, pstRwzbCfg
	mov	r0, r4	@, pDetInfo
	bl	DetPic_Config_Addr	@
	ldr	r2, [r4, #16]	@ prephitmp.1191, <variable>.isRWZB
	b	.L68	@
.L74:
	.align	2
.L73:
	.word	.LANCHOR0+44
	.fnend
	.size	ALG_DetPic, .-ALG_DetPic
	.global	tab_cbars100
	.global	tab_its1_ntsc
	.global	tab_ccitt033_ntsc
	.global	tab_cbar704_576
	.global	tab_matrx525
	.global	tab_codec43
	.global	tab_ccitt033
	.global	tab_ccitt18
	.global	tab_M576i
	.global	tab_M480p16x9
	.global	tab_M720p50
	.global	tab_M720p59
	.global	tab_M1080
	.global	tab_CBAR576_75
	.global	tab_ccir3311
	.global	tab_matrix625
	.global	tab_CBAR576_75_B
	.global	tab_CBAR576_100
	.global	tab_M576i_pulsebar
	.global	tab_M576i_redfield
	.global	tab_M576i_duoboqun
	.global	tab_M576i_5taijie
	.global	tab_M576i_xiebo
	.global	tab_M576i_bowtie
	.global	tab_NTSC480i_moto
	.global	SamPool
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.14110, %object
	.size	__func__.14110, 19
__func__.14110:
	.ascii	"DetPic_Config_Addr\000"
	.space	1
	.type	__func__.14147, %object
	.size	__func__.14147, 23
__func__.14147:
	.ascii	"DetPic_Compare_Pattern\000"
	.space	1
	.type	__func__.14191, %object
	.size	__func__.14191, 11
__func__.14191:
	.ascii	"ALG_DetPic\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	SamPool, %object
	.size	SamPool, 140
SamPool:
	.word	tab_cbars100
	.word	tab_its1_ntsc
	.word	tab_ccitt033_ntsc
	.word	tab_ccitt18
	.word	tab_M576i
	.word	tab_M480p16x9
	.word	tab_M720p50
	.word	tab_M720p59
	.word	tab_M1080
	.word	tab_CBAR576_75
	.word	tab_ccir3311
	.word	tab_matrix625
	.word	tab_CBAR576_75_B
	.word	tab_CBAR576_100
	.word	tab_M576i_pulsebar
	.word	tab_M576i_redfield
	.word	tab_M576i_duoboqun
	.word	tab_ccitt033
	.word	tab_M576i_5taijie
	.word	tab_M576i_xiebo
	.word	tab_M576i_bowtie
	.word	tab_ccitt033
	.word	tab_cbar704_576
	.word	tab_matrx525
	.word	tab_codec43
	.word	tab_NTSC480i_moto
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	tab_cbars100, %object
	.size	tab_cbars100, 136
tab_cbars100:
@ type:
	.word	19
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	16
@ Pix:
	.byte	126
	.byte	110
	.byte	107
	.byte	105
	.byte	106
	.byte	106
	.byte	105
	.byte	106
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	48
@ Pix:
	.byte	-22
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-22
	.byte	-24
	.byte	-33
	.byte	-43
@ Comp:
	.word	0
@ Px:
	.word	616
@ Py:
	.word	32
@ Pix:
	.byte	41
	.byte	38
	.byte	28
	.byte	19
	.byte	16
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	208
@ Pix:
	.byte	82
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	560
@ Pix:
	.byte	-22
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-22
	.byte	-24
	.byte	-33
	.byte	-43
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_its1_ntsc, %object
	.size	tab_its1_ntsc, 136
tab_its1_ntsc:
@ type:
	.word	21
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	480
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	376
@ Py:
	.word	16
@ Pix:
	.byte	116
	.byte	119
	.byte	122
	.byte	124
	.byte	126
	.byte	125
	.byte	123
	.byte	120
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	32
@ Pix:
	.byte	17
	.byte	19
	.byte	21
	.byte	25
	.byte	30
	.byte	37
	.byte	42
	.byte	49
@ Comp:
	.word	0
@ Px:
	.word	328
@ Py:
	.word	80
@ Pix:
	.byte	16
	.byte	15
	.byte	24
	.byte	98
	.byte	-61
	.byte	-22
	.byte	-70
	.byte	89
@ Comp:
	.word	0
@ Px:
	.word	392
@ Py:
	.word	32
@ Pix:
	.byte	60
	.byte	52
	.byte	45
	.byte	38
	.byte	32
	.byte	26
	.byte	22
	.byte	19
@ Comp:
	.word	0
@ Px:
	.word	488
@ Py:
	.word	64
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	20
	.byte	29
	.byte	40
	.byte	49
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_ccitt033_ntsc, %object
	.size	tab_ccitt033_ntsc, 136
tab_ccitt033_ntsc:
@ type:
	.word	20
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	480
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	80
@ Pix:
	.byte	71
	.byte	79
	.byte	-118
	.byte	-35
	.byte	-35
	.byte	-118
	.byte	79
	.byte	71
@ Comp:
	.word	0
@ Px:
	.word	664
@ Py:
	.word	144
@ Pix:
	.byte	73
	.byte	94
	.byte	-123
	.byte	-77
	.byte	-40
	.byte	-23
	.byte	-20
	.byte	-21
@ Comp:
	.word	0
@ Px:
	.word	488
@ Py:
	.word	160
@ Pix:
	.byte	49
	.byte	49
	.byte	47
	.byte	42
	.byte	34
	.byte	26
	.byte	19
	.byte	15
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	336
@ Pix:
	.byte	-22
	.byte	-20
	.byte	-21
	.byte	-21
	.byte	-29
	.byte	-55
	.byte	-98
	.byte	114
@ Comp:
	.word	0
@ Px:
	.word	208
@ Py:
	.word	336
@ Pix:
	.byte	-74
	.byte	-41
	.byte	-22
	.byte	-20
	.byte	-21
	.byte	-21
	.byte	-20
	.byte	-21
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_cbar704_576, %object
	.size	tab_cbar704_576, 136
tab_cbar704_576:
@ type:
	.word	24
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	704
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	88
@ Py:
	.word	56
@ Pix:
	.byte	-25
	.byte	-51
	.byte	-82
	.byte	-94
	.byte	-95
	.byte	-95
	.byte	-95
	.byte	-96
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	72
@ Pix:
	.byte	65
	.byte	58
	.byte	44
	.byte	34
	.byte	35
	.byte	35
	.byte	34
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	264
@ Pix:
	.byte	113
	.byte	108
	.byte	97
	.byte	87
	.byte	84
	.byte	84
	.byte	83
	.byte	84
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	520
@ Pix:
	.byte	-95
	.byte	-104
	.byte	-117
	.byte	-124
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	520
@ Pix:
	.byte	84
	.byte	84
	.byte	84
	.byte	81
	.byte	74
	.byte	67
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_matrx525, %object
	.size	tab_matrx525, 136
tab_matrx525:
@ type:
	.word	23
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	480
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	40
@ Pix:
	.byte	-21
	.byte	-23
	.byte	-36
	.byte	-60
	.byte	-83
	.byte	-94
	.byte	-95
	.byte	-95
@ Comp:
	.word	0
@ Px:
	.word	216
@ Py:
	.word	192
@ Pix:
	.byte	85
	.byte	74
	.byte	71
	.byte	81
	.byte	101
	.byte	125
	.byte	-106
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	560
@ Py:
	.word	264
@ Pix:
	.byte	-127
	.byte	38
	.byte	-126
	.byte	-42
	.byte	-81
	.byte	-83
	.byte	-61
	.byte	-81
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	176
@ Pix:
	.byte	85
	.byte	-103
	.byte	-121
	.byte	107
	.byte	-127
	.byte	-128
	.byte	124
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	568
@ Py:
	.word	352
@ Pix:
	.byte	95
	.byte	95
	.byte	98
	.byte	105
	.byte	115
	.byte	125
	.byte	-124
	.byte	-122
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_codec43, %object
	.size	tab_codec43, 136
tab_codec43:
@ type:
	.word	22
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	480
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	192
@ Py:
	.word	240
@ Pix:
	.byte	125
	.byte	125
	.byte	125
	.byte	124
	.byte	116
	.byte	93
	.byte	62
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	144
@ Py:
	.word	296
@ Pix:
	.byte	-35
	.byte	-117
	.byte	79
	.byte	70
	.byte	71
	.byte	75
	.byte	85
	.byte	100
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	416
@ Pix:
	.byte	124
	.byte	109
	.byte	126
	.byte	-55
	.byte	-27
	.byte	-94
	.byte	65
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	680
@ Py:
	.word	352
@ Pix:
	.byte	70
	.byte	79
	.byte	-118
	.byte	-34
	.byte	-34
	.byte	-118
	.byte	79
	.byte	70
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	432
@ Pix:
	.byte	69
	.byte	75
	.byte	55
	.byte	76
	.byte	76
	.byte	37
	.byte	120
	.byte	-43
	.space	20
	.type	tab_ccitt033, %object
	.size	tab_ccitt033, 136
tab_ccitt033:
@ type:
	.word	1
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	216
@ Py:
	.word	16
@ Pix:
	.byte	16
	.byte	57
	.byte	-89
	.byte	-22
	.byte	-89
	.byte	57
	.byte	16
	.byte	15
@ Comp:
	.word	0
@ Px:
	.word	144
@ Py:
	.word	120
@ Pix:
	.byte	-35
	.byte	-36
	.byte	-118
	.byte	79
	.byte	70
	.byte	69
	.byte	70
	.byte	69
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	16
@ Pix:
	.byte	32
	.byte	37
	.byte	43
	.byte	49
	.byte	55
	.byte	60
	.byte	67
	.byte	74
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	104
@ Pix:
	.byte	68
	.byte	68
	.byte	70
	.byte	68
	.byte	70
	.byte	79
	.byte	-117
	.byte	-34
@ Comp:
	.word	0
@ Px:
	.word	120
@ Py:
	.word	176
@ Pix:
	.byte	79
	.byte	69
	.byte	70
	.byte	69
	.byte	70
	.byte	70
	.byte	70
	.byte	70
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_ccitt18, %object
	.size	tab_ccitt18, 136
tab_ccitt18:
@ type:
	.word	2
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	96
@ Pix:
	.byte	62
	.byte	71
	.byte	92
	.byte	114
	.byte	124
	.byte	125
	.byte	126
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	416
@ Py:
	.word	64
@ Pix:
	.byte	-67
	.byte	-78
	.byte	126
	.byte	74
	.byte	68
	.byte	111
	.byte	-121
	.byte	-128
@ Comp:
	.word	0
@ Px:
	.word	488
@ Py:
	.word	88
@ Pix:
	.byte	60
	.byte	-113
	.byte	-75
	.byte	76
	.byte	98
	.byte	-66
	.byte	115
	.byte	66
@ Comp:
	.word	0
@ Px:
	.word	656
@ Py:
	.word	80
@ Pix:
	.byte	-96
	.byte	70
	.byte	-67
	.byte	63
	.byte	-83
	.byte	101
	.byte	121
	.byte	-99
@ Comp:
	.word	0
@ Px:
	.word	416
@ Py:
	.word	384
@ Pix:
	.byte	-67
	.byte	-78
	.byte	126
	.byte	74
	.byte	68
	.byte	111
	.byte	-121
	.byte	-128
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i, %object
	.size	tab_M576i, 136
tab_M576i:
@ type:
	.word	3
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	40
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	50
	.byte	-87
	.byte	-21
	.byte	-87
	.byte	50
@ Comp:
	.word	0
@ Px:
	.word	464
@ Py:
	.word	168
@ Pix:
	.byte	-59
	.byte	-67
	.byte	-74
	.byte	-80
	.byte	-84
	.byte	-86
	.byte	-87
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	200
@ Py:
	.word	232
@ Pix:
	.byte	125
	.byte	106
	.byte	89
	.byte	79
	.byte	78
	.byte	85
	.byte	100
	.byte	121
@ Comp:
	.word	0
@ Px:
	.word	200
@ Py:
	.word	336
@ Pix:
	.byte	65
	.byte	65
	.byte	54
	.byte	54
	.byte	86
	.byte	86
	.byte	100
	.byte	100
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	408
@ Pix:
	.byte	81
	.byte	79
	.byte	79
	.byte	77
	.byte	77
	.byte	75
	.byte	75
	.byte	74
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M480p16x9, %object
	.size	tab_M480p16x9, 136
tab_M480p16x9:
@ type:
	.word	4
@ samplingNumb:
	.byte	3
@ height:
	.space	3
	.word	480
@ width:
	.word	704
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	128
@ Py:
	.word	32
@ Pix:
	.byte	17
	.byte	17
	.byte	23
	.byte	94
	.byte	-65
	.byte	-21
	.byte	-65
	.byte	94
@ Comp:
	.word	0
@ Px:
	.word	456
@ Py:
	.word	112
@ Pix:
	.byte	-61
	.byte	-67
	.byte	-72
	.byte	-78
	.byte	-82
	.byte	-85
	.byte	-86
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	136
@ Pix:
	.byte	-115
	.byte	-120
	.byte	-124
	.byte	125
	.byte	118
	.byte	110
	.byte	104
	.byte	96
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M720p50, %object
	.size	tab_M720p50, 136
tab_M720p50:
@ type:
	.word	5
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	720
@ width:
	.word	1280
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	72
@ Pix:
	.byte	-21
	.byte	-98
	.byte	35
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	432
@ Py:
	.word	168
@ Pix:
	.byte	-124
	.byte	-46
	.byte	-28
	.byte	-79
	.byte	98
	.byte	53
	.byte	64
	.byte	110
@ Comp:
	.word	0
@ Px:
	.word	784
@ Py:
	.word	184
@ Pix:
	.byte	42
	.byte	-50
	.byte	-66
	.byte	30
	.byte	85
	.byte	-24
	.byte	-115
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	200
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	35
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	504
@ Pix:
	.byte	-27
	.byte	-55
	.byte	-109
	.byte	85
	.byte	37
	.byte	18
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M720p59, %object
	.size	tab_M720p59, 136
tab_M720p59:
@ type:
	.word	6
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	720
@ width:
	.word	1280
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	72
@ Pix:
	.byte	-21
	.byte	-98
	.byte	36
	.byte	17
	.byte	16
	.byte	17
	.byte	17
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	432
@ Py:
	.word	168
@ Pix:
	.byte	-124
	.byte	-46
	.byte	-28
	.byte	-79
	.byte	98
	.byte	53
	.byte	64
	.byte	110
@ Comp:
	.word	0
@ Px:
	.word	784
@ Py:
	.word	184
@ Pix:
	.byte	42
	.byte	-50
	.byte	-66
	.byte	30
	.byte	85
	.byte	-24
	.byte	-115
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	200
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	35
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	504
@ Pix:
	.byte	-20
	.byte	-39
	.byte	-102
	.byte	72
	.byte	24
	.byte	17
	.byte	17
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M1080, %object
	.size	tab_M1080, 136
tab_M1080:
@ type:
	.word	7
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	1080
@ width:
	.word	1920
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	72
@ Pix:
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	29
	.byte	14
	.byte	14
	.byte	14
	.byte	14
@ Comp:
	.word	0
@ Px:
	.word	1232
@ Py:
	.word	120
@ Pix:
	.byte	-21
	.byte	73
	.byte	76
	.byte	-22
	.byte	53
	.byte	98
	.byte	-28
	.byte	36
@ Comp:
	.word	0
@ Px:
	.word	608
@ Py:
	.word	272
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	18
	.byte	27
	.byte	48
	.byte	79
	.byte	117
@ Comp:
	.word	0
@ Px:
	.word	1216
@ Py:
	.word	320
@ Pix:
	.byte	110
	.byte	-87
	.byte	-65
	.byte	-102
	.byte	93
	.byte	60
	.byte	85
	.byte	-110
@ Comp:
	.word	0
@ Px:
	.word	496
@ Py:
	.word	616
@ Pix:
	.byte	26
	.byte	26
	.byte	82
	.byte	82
	.byte	-84
	.byte	-84
	.byte	63
	.byte	64
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_CBAR576_75, %object
	.size	tab_CBAR576_75, 136
tab_CBAR576_75:
@ type:
	.word	8
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	8
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-29
	.byte	-58
	.byte	-89
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	48
@ Pix:
	.byte	-94
	.byte	-94
	.byte	-95
	.byte	-98
	.byte	-110
	.byte	-122
	.byte	-125
	.byte	-125
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	64
@ Pix:
	.byte	-125
	.byte	-127
	.byte	122
	.byte	114
	.byte	112
	.byte	112
	.byte	112
	.byte	112
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	80
@ Pix:
	.byte	101
	.byte	87
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	84
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	136
@ Pix:
	.byte	83
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	81
	.byte	73
	.byte	67
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_ccir3311, %object
	.size	tab_ccir3311, 136
tab_ccir3311:
@ type:
	.word	9
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	24
@ Py:
	.word	64
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	18
	.byte	36
	.byte	71
	.byte	106
@ Comp:
	.word	0
@ Px:
	.word	32
@ Py:
	.word	512
@ Pix:
	.byte	123
	.byte	125
	.byte	125
	.byte	126
	.byte	125
	.byte	125
	.byte	125
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	384
@ Py:
	.word	256
@ Pix:
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	696
@ Py:
	.word	128
@ Pix:
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	126
	.byte	125
	.byte	125
	.byte	123
@ Comp:
	.word	0
@ Px:
	.word	704
@ Py:
	.word	384
@ Pix:
	.byte	106
	.byte	71
	.byte	35
	.byte	18
	.byte	17
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_matrix625, %object
	.size	tab_matrix625, 136
tab_matrix625:
@ type:
	.word	10
@ samplingNumb:
	.byte	6
@ height:
	.space	3
	.word	576
@ width:
	.word	704
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	168
@ Py:
	.word	256
@ Pix:
	.byte	52
	.byte	61
	.byte	45
	.byte	67
	.byte	39
	.byte	73
	.byte	34
	.byte	76
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	448
@ Pix:
	.byte	26
	.byte	34
	.byte	44
	.byte	54
	.byte	62
	.byte	68
	.byte	71
	.byte	72
@ Comp:
	.word	0
@ Px:
	.word	256
@ Py:
	.word	512
@ Pix:
	.byte	33
	.byte	43
	.byte	55
	.byte	67
	.byte	80
	.byte	92
	.byte	103
	.byte	112
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	32
@ Pix:
	.byte	33
	.byte	38
	.byte	43
	.byte	49
	.byte	55
	.byte	61
	.byte	67
	.byte	74
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	160
@ Pix:
	.byte	-66
	.byte	117
	.byte	65
	.byte	-88
	.byte	-95
	.byte	62
	.byte	126
	.byte	-68
@ Comp:
	.word	0
@ Px:
	.word	696
@ Py:
	.word	512
@ Pix:
	.byte	-60
	.byte	126
	.byte	54
	.byte	20
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.type	tab_CBAR576_75_B, %object
	.size	tab_CBAR576_75_B, 136
tab_CBAR576_75_B:
@ type:
	.word	11
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	16
@ Pix:
	.byte	20
	.byte	56
	.byte	125
	.byte	-59
	.byte	-25
	.byte	-21
	.byte	-20
	.byte	-21
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	104
@ Pix:
	.byte	-24
	.byte	-33
	.byte	-58
	.byte	-82
	.byte	-93
	.byte	-95
	.byte	-95
	.byte	-96
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	208
@ Pix:
	.byte	-99
	.byte	-110
	.byte	-120
	.byte	-125
	.byte	-125
	.byte	-124
	.byte	-125
	.byte	-124
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	264
@ Pix:
	.byte	108
	.byte	98
	.byte	90
	.byte	84
	.byte	83
	.byte	84
	.byte	83
	.byte	83
@ Comp:
	.word	0
@ Px:
	.word	536
@ Py:
	.word	528
@ Pix:
	.byte	50
	.byte	40
	.byte	35
	.byte	35
	.byte	34
	.byte	34
	.byte	34
	.byte	34
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_CBAR576_100, %object
	.size	tab_CBAR576_100, 136
tab_CBAR576_100:
@ type:
	.word	12
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	568
@ Pix:
	.byte	20
	.byte	56
	.byte	126
	.byte	-58
	.byte	-24
	.byte	-21
	.byte	-20
	.byte	-19
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	216
@ Pix:
	.byte	-53
	.byte	-67
	.byte	-80
	.byte	-86
	.byte	-87
	.byte	-87
	.byte	-86
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	280
@ Pix:
	.byte	-91
	.byte	-99
	.byte	-107
	.byte	-111
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-113
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	312
@ Pix:
	.byte	-118
	.byte	124
	.byte	113
	.byte	107
	.byte	105
	.byte	106
	.byte	106
	.byte	106
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	400
@ Pix:
	.byte	94
	.byte	86
	.byte	82
	.byte	80
	.byte	80
	.byte	81
	.byte	80
	.byte	80
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_pulsebar, %object
	.size	tab_M576i_pulsebar, 136
tab_M576i_pulsebar:
@ type:
	.word	13
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	64
@ Py:
	.word	88
@ Pix:
	.byte	-88
	.byte	-20
	.byte	-88
	.byte	51
	.byte	16
	.byte	16
	.byte	17
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	120
@ Py:
	.word	192
@ Pix:
	.byte	18
	.byte	34
	.byte	61
	.byte	92
	.byte	117
	.byte	125
	.byte	117
	.byte	92
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	136
@ Pix:
	.byte	43
	.byte	56
	.byte	66
	.byte	80
	.byte	92
	.byte	104
	.byte	112
	.byte	119
@ Comp:
	.word	0
@ Px:
	.word	192
@ Py:
	.word	184
@ Pix:
	.byte	67
	.byte	54
	.byte	43
	.byte	33
	.byte	25
	.byte	19
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	248
@ Py:
	.word	528
@ Pix:
	.byte	55
	.byte	124
	.byte	-61
	.byte	-25
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_redfield, %object
	.size	tab_M576i_redfield, 136
tab_M576i_redfield:
@ type:
	.word	14
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	64
@ Py:
	.word	88
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	568
@ Py:
	.word	392
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	472
@ Py:
	.word	56
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	232
@ Py:
	.word	424
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	496
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_duoboqun, %object
	.size	tab_M576i_duoboqun, 136
tab_M576i_duoboqun:
@ type:
	.word	15
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	40
@ Py:
	.word	40
@ Pix:
	.byte	-65
	.byte	-65
	.byte	-65
	.byte	-68
	.byte	-88
	.byte	125
	.byte	83
	.byte	62
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	232
@ Pix:
	.byte	59
	.byte	60
	.byte	59
	.byte	61
	.byte	71
	.byte	92
	.byte	113
	.byte	124
@ Comp:
	.word	0
@ Px:
	.word	104
@ Py:
	.word	408
@ Pix:
	.byte	126
	.byte	127
	.byte	-128
	.byte	120
	.byte	104
	.byte	89
	.byte	77
	.byte	68
@ Comp:
	.word	0
@ Px:
	.word	624
@ Py:
	.word	336
@ Pix:
	.byte	61
	.byte	-67
	.byte	75
	.byte	-105
	.byte	-127
	.byte	92
	.byte	-76
	.byte	59
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	552
@ Pix:
	.byte	77
	.byte	60
	.byte	96
	.byte	-101
	.byte	-66
	.byte	-82
	.byte	117
	.byte	68
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_5taijie, %object
	.size	tab_M576i_5taijie, 136
tab_M576i_5taijie:
@ type:
	.word	16
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	40
@ Pix:
	.byte	15
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	23
	.byte	38
	.byte	52
@ Comp:
	.word	0
@ Px:
	.word	264
@ Py:
	.word	208
@ Pix:
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	61
	.byte	60
	.byte	67
	.byte	83
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	224
@ Pix:
	.byte	104
	.byte	104
	.byte	104
	.byte	104
	.byte	105
	.byte	104
	.byte	111
	.byte	127
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	504
@ Pix:
	.byte	-86
	.byte	-72
	.byte	-65
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
@ Comp:
	.word	0
@ Px:
	.word	624
@ Py:
	.word	376
@ Pix:
	.byte	-60
	.byte	127
	.byte	56
	.byte	20
	.byte	17
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_xiebo, %object
	.size	tab_M576i_xiebo, 136
tab_M576i_xiebo:
@ type:
	.word	17
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	384
@ Pix:
	.byte	19
	.byte	21
	.byte	20
	.byte	21
	.byte	21
	.byte	22
	.byte	21
	.byte	23
@ Comp:
	.word	0
@ Px:
	.word	248
@ Py:
	.word	216
@ Pix:
	.byte	67
	.byte	69
	.byte	68
	.byte	69
	.byte	69
	.byte	70
	.byte	69
	.byte	71
@ Comp:
	.word	0
@ Px:
	.word	344
@ Py:
	.word	256
@ Pix:
	.byte	115
	.byte	117
	.byte	116
	.byte	117
	.byte	117
	.byte	118
	.byte	117
	.byte	119
@ Comp:
	.word	0
@ Px:
	.word	472
@ Py:
	.word	248
@ Pix:
	.byte	-77
	.byte	-75
	.byte	-76
	.byte	-75
	.byte	-75
	.byte	-74
	.byte	-75
	.byte	-73
@ Comp:
	.word	0
@ Px:
	.word	560
@ Py:
	.word	72
@ Pix:
	.byte	-33
	.byte	-31
	.byte	-32
	.byte	-31
	.byte	-31
	.byte	-30
	.byte	-31
	.byte	-29
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_M576i_bowtie, %object
	.size	tab_M576i_bowtie, 136
tab_M576i_bowtie:
@ type:
	.word	18
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	576
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	32
@ Py:
	.word	24
@ Pix:
	.byte	104
	.byte	93
	.byte	82
	.byte	77
	.byte	73
	.byte	70
	.byte	72
	.byte	77
@ Comp:
	.word	0
@ Px:
	.word	320
@ Py:
	.word	80
@ Pix:
	.byte	-75
	.byte	-76
	.byte	-78
	.byte	-85
	.byte	-92
	.byte	-103
	.byte	-114
	.byte	-128
@ Comp:
	.word	0
@ Px:
	.word	88
@ Py:
	.word	256
@ Pix:
	.byte	16
	.byte	44
	.byte	98
	.byte	126
	.byte	98
	.byte	43
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	400
@ Pix:
	.byte	16
	.byte	15
	.byte	18
	.byte	15
	.byte	17
	.byte	15
	.byte	16
	.byte	52
@ Comp:
	.word	0
@ Px:
	.word	688
@ Py:
	.word	520
@ Pix:
	.byte	83
	.byte	92
	.byte	102
	.byte	116
	.byte	127
	.byte	-116
	.byte	-104
	.byte	-93
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	tab_NTSC480i_moto, %object
	.size	tab_NTSC480i_moto, 136
tab_NTSC480i_moto:
@ type:
	.word	25
@ samplingNumb:
	.byte	5
@ height:
	.space	3
	.word	480
@ width:
	.word	720
@ sample:
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	24
@ Pix:
	.byte	-68
	.byte	-84
	.byte	-110
	.byte	116
	.byte	88
	.byte	67
	.byte	60
	.byte	66
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	128
@ Pix:
	.byte	-92
	.byte	-69
	.byte	-73
	.byte	-105
	.byte	110
	.byte	69
	.byte	61
	.byte	81
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	184
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-34
	.byte	125
	.byte	29
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	336
@ Py:
	.word	184
@ Pix:
	.byte	-66
	.byte	-21
	.byte	-65
	.byte	94
	.byte	22
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	248
@ Pix:
	.byte	109
	.byte	109
	.byte	112
	.byte	126
	.byte	-116
	.byte	-113
	.byte	-113
	.byte	-113
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	0
@ Pix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012 DetAddr[%d][0]=%d DetAddr[%d][1]=%d\000"
	.space	2
.LC1:
	.ascii	"\012 Rwzb=%d\000"
	.space	2
.LC2:
	.ascii	"<---------------------------------------->func %s l"
	.ascii	"ine %d pDetInfo->isRWZB %d \015\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
