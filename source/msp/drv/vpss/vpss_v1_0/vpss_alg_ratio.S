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
	.file	"vpss_alg_ratio.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_ratio)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_ratio.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_ratio.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_ratio.o -O2 -Wall -Wundef
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

	.global	__aeabi_uidiv
	.text
	.align	2
	.global	ALG_RATIO_CorrectAspectRatioW_H
	.type	ALG_RATIO_CorrectAspectRatioW_H, %function
ALG_RATIO_CorrectAspectRatioW_H:
	.fnstart
.LFB593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, [r0, #0]	@ w,* pw
	ldr	r4, [r1, #0]	@ h,* ph
	mov	r6, r0	@ pw, pw
	mov	r7, r1	@ ph, ph
	cmp	r4, #0	@ h,
	cmpne	r5, #0	@, w,
	beq	.L11	@,
	mov	r0, r5, asl #10	@, w,
	mov	r1, r4	@, h
	bl	__aeabi_uidiv	@
	cmp	r0, #262144	@ tmp148,
	movhi	r4, #1	@ h,
	movhi	r5, #256	@ w,
	bhi	.L7	@,
	cmp	r0, #3	@ tmp148,
	movls	r4, #256	@ h,
	movls	r5, #1	@ w,
	bhi	.L11	@,
	str	r5, [r6, #0]	@ w,* pw
	str	r4, [r7, #0]	@ h,* ph
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L9:
	mov	r5, r5, lsr #1	@ w, w,
	mov	r4, r4, lsr #1	@ h, h,
.L11:
	cmp	r5, #256	@ w,
	cmpls	r4, #256	@, h,
	bhi	.L9	@,
	cmp	r5, #0	@ w,
	moveq	r5, #1	@ w,
	cmp	r4, #0	@ h,
	moveq	r4, #1	@ h,
.L7:
	str	r5, [r6, #0]	@ w,* pw
	str	r4, [r7, #0]	@ h,* ph
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	ALG_RATIO_CorrectAspectRatioW_H, .-ALG_RATIO_CorrectAspectRatioW_H
	.align	2
	.global	ALG_RATIO_CropedAspect
	.type	ALG_RATIO_CropedAspect, %function
ALG_RATIO_CropedAspect:
	.fnstart
.LFB594:
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
	mov	r4, r2	@ AspectRatioW, AspectRatioW
	ldr	r2, [r0, #12]	@ <variable>.s32Height, <variable>.s32Height
	mov	r6, r1	@ pCropedWnd, pCropedWnd
	ldr	lr, [r0, #8]	@ <variable>.s32Width, <variable>.s32Width
	mov	r5, r3	@ AspectRatioH, AspectRatioH
	ldr	r1, [r3, #0]	@ a_h.246,* AspectRatioH
	ldr	r0, [r4, #0]	@ a_w.245,* AspectRatioW
	mov	r3, r2, asl #10	@ tmp139, <variable>.s32Height,
	mul	r1, lr, r1	@, <variable>.s32Width, a_h.246
	mul	r0, r0, r3	@, a_w.245, tmp139
	bl	__aeabi_uidiv	@
	ldr	r3, [r6, #8]	@ <variable>.s32Width, <variable>.s32Width
	ldr	ip, [r6, #12]	@ <variable>.s32Height, <variable>.s32Height
	sub	r1, fp, #36	@,,
	mov	r2, ip, asl #10	@ tmp151, <variable>.s32Height,
	str	r2, [fp, #-36]	@ tmp151, a_h
	mul	ip, r3, r0	@ tmp149, <variable>.s32Width,
	sub	r0, fp, #32	@,,
	str	ip, [fp, #-32]	@ tmp149, a_w
	bl	ALG_RATIO_CorrectAspectRatioW_H	@
	ldr	r3, [fp, #-36]	@ a_h, a_h
	ldr	r2, [fp, #-32]	@ a_w, a_w
	str	r2, [r4, #0]	@ a_w,* AspectRatioW
	str	r3, [r5, #0]	@ a_h,* AspectRatioH
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	ALG_RATIO_CropedAspect, .-ALG_RATIO_CropedAspect
	.align	2
	.global	ALG_RATIO_LetterBox
	.type	ALG_RATIO_LetterBox, %function
ALG_RATIO_LetterBox:
	.fnstart
.LFB595:
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
	ldr	r5, [r2, #12]	@ D.14054, <variable>.s32Height
	mul	r1, r1, r3	@, AspectRatioH, pixr1_out
	mov	r4, r2	@ pOutWnd, pOutWnd
	mov	r3, r5, asl #10	@ tmp145, D.14054,
	mul	r0, r0, r3	@, AspectRatioW, tmp145
	bl	__aeabi_uidiv	@
	mov	r1, r0	@ tmp150,
	ldr	r0, [r4, #8]	@ D.14060, <variable>.s32Width
	cmp	r1, r0	@ tmp150, D.14060
	bls	.L20	@,
	mul	r0, r5, r0	@, D.14054, D.14060
	bl	__aeabi_uidiv	@
	ldr	r1, [r4, #4]	@ <variable>.s32Y, <variable>.s32Y
	bic	r2, r0, #3	@ v_h.354,,
	str	r2, [r4, #12]	@ v_h.354, <variable>.s32Height
	rsb	r5, r2, r5	@ tmp160, v_h.354, D.14054
	add	r0, r1, r5, lsr #1	@, tmp162, <variable>.s32Y, tmp160,
	bic	r3, r0, #3	@ tmp164, tmp162,
	str	r3, [r4, #4]	@ tmp164, <variable>.s32Y
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L20:
	bic	lr, r1, #1	@ v_w.353, tmp150,
	ldr	ip, [r4, #0]	@ <variable>.s32X, <variable>.s32X
	rsb	r2, lr, r0	@ tmp151, v_w.353, D.14060
	str	lr, [r4, #8]	@ v_w.353, <variable>.s32Width
	add	r1, ip, r2, lsr #1	@, tmp153, <variable>.s32X, tmp151,
	bic	r0, r1, #1	@ tmp155, tmp153,
	str	r0, [r4, #0]	@ tmp155, <variable>.s32X
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ALG_RATIO_LetterBox, .-ALG_RATIO_LetterBox
	.global	__aeabi_idiv
	.align	2
	.global	ALG_RATIO_RatioProcess
	.type	ALG_RATIO_RatioProcess, %function
ALG_RATIO_RatioProcess:
	.fnstart
.LFB596:
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
	ldr	r3, [r0, #16]	@ <variable>.eAspMode, <variable>.eAspMode
	mov	r5, r0	@ pstDrvPara, pstDrvPara
	mov	r6, r1	@ pstOutPara, pstOutPara
	cmp	r3, #7	@ <variable>.eAspMode,
	beq	.L22	@,
	ldr	r0, [r0, #20]	@ <variable>.stUsrAsp.bUserDefAspectRatio, <variable>.stUsrAsp.bUserDefAspectRatio
	cmp	r0, #1	@ <variable>.stUsrAsp.bUserDefAspectRatio,
	beq	.L34	@,
.L23:
	ldr	r7, [r5, #0]	@ ar_w.258, <variable>.AspectWidth
	ldr	r4, [r5, #4]	@ ar_h.259, <variable>.AspectHeight
	cmp	r7, #0	@ ar_w.258,
	cmpne	r4, #0	@, ar_h.259,
	str	r7, [fp, #-56]	@ ar_w.258, ar_w
	str	r4, [fp, #-60]	@ ar_h.259, ar_h
	ldreq	r7, [r5, #40]	@ <variable>.stInWnd.s32Width, <variable>.stInWnd.s32Width
	ldreq	r4, [r5, #44]	@ <variable>.stInWnd.s32Height, <variable>.stInWnd.s32Height
	streq	r7, [fp, #-56]	@ <variable>.stInWnd.s32Width, ar_w
	streq	r4, [fp, #-60]	@ <variable>.stInWnd.s32Height, ar_h
.L24:
	sub	r0, fp, #56	@,,
	sub	r1, fp, #60	@,,
	bl	ALG_RATIO_CorrectAspectRatioW_H	@
	ldr	r7, [r5, #8]	@ sr_w.264, <variable>.DeviceWidth
	ldr	r4, [r5, #12]	@ sr_h.265, <variable>.DeviceHeight
	sub	r0, fp, #48	@,,
	sub	r1, fp, #52	@,,
	cmp	r7, #0	@ sr_w.264,
	cmpne	r4, #0	@, sr_h.265,
	str	r7, [fp, #-48]	@ sr_w.264, sr_w
	str	r4, [fp, #-52]	@ sr_h.265, sr_h
	ldreq	r7, [r5, #72]	@ <variable>.stScreen.s32Width, <variable>.stScreen.s32Width
	ldreq	r4, [r5, #76]	@ <variable>.stScreen.s32Height, <variable>.stScreen.s32Height
	streq	r7, [fp, #-48]	@ <variable>.stScreen.s32Width, sr_w
	streq	r4, [fp, #-52]	@ <variable>.stScreen.s32Height, sr_h
	bl	ALG_RATIO_CorrectAspectRatioW_H	@
	ldr	r2, [r5, #76]	@ <variable>.stScreen.s32Height, <variable>.stScreen.s32Height
	ldr	r0, [fp, #-48]	@ sr_w, sr_w
	ldr	r3, [fp, #-52]	@ sr_h, sr_h
	ldr	r1, [r5, #72]	@ <variable>.stScreen.s32Width, <variable>.stScreen.s32Width
	mul	ip, r0, r2	@ tmp194, sr_w, <variable>.stScreen.s32Height
	mul	r1, r1, r3	@, <variable>.stScreen.s32Width, sr_h
	mov	r0, ip, asl #10	@, tmp194,
	bl	__aeabi_idiv	@
	ldr	r7, [r5, #16]	@ temp.390, <variable>.eAspMode
	cmp	r7, #1	@ temp.390,
	mov	r4, r0	@ tmp203,
	beq	.L35	@,
	ldr	lr, [r5, #56]	@, <variable>.stOutWnd.s32Width
	ldr	r9, [fp, #-60]	@ ar_h.391, ar_h
	ldr	sl, [fp, #-56]	@ ar_w.392, ar_w
	str	lr, [fp, #-64]	@, %sfp
	mul	r8, lr, r9	@ tmp207,, ar_h.391
	mov	r1, sl	@, ar_w.392
	mul	r0, r0, r8	@, tmp203, tmp207
	bl	__aeabi_idiv	@
	ldr	r8, [r5, #60]	@ D.14154, <variable>.stOutWnd.s32Height
	cmp	r0, r8, asl #10	@ tmp211, D.14154,
	bhi	.L36	@,
	mul	r0, r8, sl	@ tmp223, D.14154, ar_w.392
	mov	r1, r4	@, tmp203
	mov	r0, r0, asl #10	@, tmp223,
	bl	__aeabi_idiv	@
	mov	r1, r9	@, ar_h.391
	bl	__aeabi_idiv	@
	cmp	r7, #3	@ temp.390,
	movne	r7, r8	@ u32ZmeH, D.14154
	movne	r8, r0	@ u32ZmeW, tmp231
	beq	.L37	@,
.L29:
	bic	r8, r8, #7	@ D.14181, u32ZmeW,
	bic	r7, r7, #7	@ D.14182, u32ZmeH,
	cmp	r8, #4096	@ D.14181,
	movcs	r8, #4096	@ u32ZmeW.398,
	cmp	r7, #4096	@ D.14182,
	movcs	r7, #4096	@ u32ZmeH.399,
	str	r8, [r6, #52]	@ u32ZmeW.398, <variable>.u32ZmeW
	str	r7, [r6, #48]	@ u32ZmeH.399, <variable>.u32ZmeH
	ldr	r3, [r5, #60]	@ <variable>.stOutWnd.s32Height, <variable>.stOutWnd.s32Height
	cmp	r7, r3	@ u32ZmeH.399, <variable>.stOutWnd.s32Height
	bls	.L31	@,
	rsb	r0, r3, r7	@ tmp242, <variable>.stOutWnd.s32Height, u32ZmeH.399
	mov	r2, #0	@ tmp241,
	str	r8, [r6, #8]	@ u32ZmeW.398, <variable>.stCropWnd.s32Width
	mov	r3, r0, lsr #1	@ tmp244, tmp242,
	str	r2, [r6, #0]	@ tmp241, <variable>.stCropWnd.s32X
	add	ip, r3, #8	@ tmp245, tmp244,
	bic	r4, ip, #7	@ D.14188, tmp245,
	str	r4, [r6, #4]	@ D.14188, <variable>.stCropWnd.s32Y
	sub	r1, r7, r4, asl #1	@ tmp250, u32ZmeH.399, D.14188,
	str	r1, [r6, #12]	@ tmp250, <variable>.stCropWnd.s32Height
.L32:
	ldr	r1, [r6, #8]	@ <variable>.stCropWnd.s32Width, <variable>.stCropWnd.s32Width
	mov	r3, #1	@ tmp261,
	ldr	r2, [r6, #12]	@ <variable>.stCropWnd.s32Height, <variable>.stCropWnd.s32Height
	mov	lr, #0	@ tmp274,
	str	r3, [r6, #60]	@ tmp261, <variable>.bEnCrop
	str	r1, [r6, #24]	@ <variable>.stCropWnd.s32Width, <variable>.stOutWnd.s32Width
	str	r2, [r6, #28]	@ <variable>.stCropWnd.s32Height, <variable>.stOutWnd.s32Height
	ldr	r7, [r5, #56]	@ <variable>.stOutWnd.s32Width, <variable>.stOutWnd.s32Width
	ldr	r4, [r5, #60]	@ <variable>.stOutWnd.s32Height, <variable>.stOutWnd.s32Height
	ldr	ip, [r5, #72]	@ <variable>.stScreen.s32Width, <variable>.stScreen.s32Width
	bic	r7, r7, #7	@ tmp264, <variable>.stOutWnd.s32Width,
	bic	r4, r4, #7	@ tmp269, <variable>.stOutWnd.s32Height,
	ldr	r3, [r5, #76]	@ <variable>.stScreen.s32Height, <variable>.stScreen.s32Height
	rsb	r0, r1, r7	@ tmp266, <variable>.stCropWnd.s32Width, tmp264
	rsb	r2, r2, r4	@ tmp271, <variable>.stCropWnd.s32Height, tmp269
	str	ip, [r6, #40]	@ <variable>.stScreen.s32Width, <variable>.stOutScreen.s32Width
	mov	r1, r0, lsr #1	@ tmp268, tmp266,
	str	lr, [r6, #36]	@ tmp274, <variable>.stOutScreen.s32Y
	mov	r0, r2, lsr #1	@ tmp273, tmp271,
	str	r3, [r6, #44]	@ <variable>.stScreen.s32Height, <variable>.stOutScreen.s32Height
	str	r1, [r6, #16]	@ tmp268, <variable>.stOutWnd.s32X
	str	r0, [r6, #20]	@ tmp273, <variable>.stOutWnd.s32Y
	str	lr, [r6, #32]	@ tmp274, <variable>.stOutScreen.s32X
.L22:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L36:
	cmp	r7, #3	@ temp.390,
	mov	r7, r0, lsr #10	@ u32ZmeH, tmp211,
	ldrne	r8, [fp, #-64]	@ u32ZmeW, %sfp
	bne	.L29	@,
	rsb	r3, r8, r7	@ tmp213, D.14154, u32ZmeH
	mov	ip, sl, asl #10	@ tmp214, ar_w.392,
	mov	r1, r4	@, tmp203
	add	r7, r8, r3, lsr #1	@, u32ZmeH, D.14154, tmp213,
	mul	r0, r7, ip	@, u32ZmeH, tmp214
	bl	__aeabi_uidiv	@
	mov	r1, r9	@, ar_h.391
	bl	__aeabi_uidiv	@
	mov	r8, r0	@ u32ZmeW,
	b	.L29	@
.L31:
	ldr	r3, [r5, #56]	@ <variable>.stOutWnd.s32Width, <variable>.stOutWnd.s32Width
	mov	ip, #0	@ tmp255,
	str	r7, [r6, #12]	@ u32ZmeH.399, <variable>.stCropWnd.s32Height
	rsb	r4, r3, r8	@ tmp251, <variable>.stOutWnd.s32Width, u32ZmeW.398
	str	ip, [r6, #4]	@ tmp255, <variable>.stCropWnd.s32Y
	mov	r1, r4, lsr #1	@ tmp253, tmp251,
	add	lr, r1, #8	@ tmp254, tmp253,
	bic	r7, lr, #7	@ D.14198, tmp254,
	str	r7, [r6, #0]	@ D.14198, <variable>.stCropWnd.s32X
	sub	r8, r8, r7, asl #1	@ tmp260, u32ZmeW.398, D.14198,
	str	r8, [r6, #8]	@ tmp260, <variable>.stCropWnd.s32Width
	b	.L32	@
.L34:
	ldr	r2, [r5, #24]	@ ar_w.254, <variable>.stUsrAsp.u32UserAspectWidth
	ldr	r1, [r5, #28]	@ ar_h.255, <variable>.stUsrAsp.u32UserAspectHeight
	cmp	r2, #0	@ ar_w.254,
	cmpne	r1, #0	@, ar_h.255,
	str	r2, [fp, #-56]	@ ar_w.254, ar_w
	str	r1, [fp, #-60]	@ ar_h.255, ar_h
	bne	.L24	@,
	b	.L23	@
.L37:
	ldr	lr, [fp, #-64]	@, %sfp
	mov	r1, sl	@, ar_w.392
	mul	r2, r9, r4	@ tmp234, ar_h.391, tmp203
	rsb	r7, lr, r0	@ tmp232,, tmp231
	add	r8, lr, r7, lsr #1	@, u32ZmeW,, tmp232,
	mul	r0, r8, r2	@, u32ZmeW, tmp234
	bl	__aeabi_uidiv	@
	mov	r7, r0, lsr #10	@ u32ZmeH,,
	b	.L29	@
.L35:
	mov	r3, r0	@, tmp203
	add	r2, r5, #48	@, pstDrvPara,
	ldr	r0, [fp, #-56]	@, ar_w
	ldr	r1, [fp, #-60]	@, ar_h
	bl	ALG_RATIO_LetterBox	@
	b	.L22	@
	.fnend
	.size	ALG_RATIO_RatioProcess, .-ALG_RATIO_RatioProcess
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
