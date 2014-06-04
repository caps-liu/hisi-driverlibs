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
	.file	"vpss_alg.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg.o -O2 -Wall -Wundef
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
	.global	VPSS_ALG_GetRwzbInfo
	.type	VPSS_ALG_GetRwzbInfo, %function
VPSS_ALG_GetRwzbInfo:
	.fnstart
.LFB1256:
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
	ldr	r0, [r0, #16]	@, <variable>.stDetInfo.isRWZB
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetRwzbInfo, .-VPSS_ALG_GetRwzbInfo
	.align	2
	.global	VPSS_ALG_GetInCropCfg
	.type	VPSS_ALG_GetInCropCfg, %function
VPSS_ALG_GetInCropCfg:
	.fnstart
.LFB1260:
	@ args = 20, pretend = 8, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #8
	sub	sp, sp, #8	@,,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-12
	sub	fp, ip, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	ip, fp, #4	@ tmp208,,
	cmp	r2, #0	@ stInRect$s32X,
	ldr	r4, [fp, #20]	@ pstInCropCfg, pstInCropCfg
	stmia	ip, {r2, r3}	@ tmp208,,
	mov	r3, r2	@ stInRect$s32X,
	ldr	r5, [fp, #8]	@ stInRect$s32Y, stInRect.s32Y
	ldr	r2, [fp, #16]	@ stInRect$s32Height, stInRect.s32Height
	ldr	ip, [fp, #12]	@ stInRect$s32Width, stInRect.s32Width
	bne	.L4	@,
	cmp	r5, #0	@ stInRect$s32Y,
	bne	.L4	@,
	cmp	r2, #0	@ stInRect$s32Height,
	bne	.L4	@,
	cmp	ip, #0	@ stInRect$s32Width,
	bne	.L4	@,
.L5:
	mov	r2, #1	@ tmp207,
	str	r2, [r4, #0]	@ tmp207, <variable>.bInCropEn
.L25:
	ldr	r3, [r0, #136]	@ D.28193, <variable>.eFrmType
	cmp	r3, #0	@ D.28193,
	cmpne	r3, #3	@, D.28193,
	beq	.L32	@,
	cmp	r3, #1	@ D.28193,
	beq	.L33	@,
	cmp	r3, #2	@ D.28193,
	bne	.L13	@,
	ldr	r3, [r1, #0]	@ <variable>.eLReye, <variable>.eLReye
	cmp	r3, #0	@ <variable>.eLReye,
	ldrne	r3, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	movne	r3, r3, lsr #1	@ tmp176, <variable>.u32Height,
	str	r3, [r4, #8]	@ tmp176, <variable>.u32InCropY
	mov	r3, #0	@ tmp177,
	str	r3, [r4, #12]	@ tmp177, <variable>.u32InCropX
	ldr	ip, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	mov	r2, ip, lsr #1	@ tmp179, <variable>.u32Height,
	str	r2, [r4, #16]	@ tmp179, <variable>.u32InCropHeight
	ldr	r1, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	r3, [r4, #4]	@ tmp177, <variable>.bInCropMode
	str	r1, [r4, #20]	@ <variable>.u32Width, <variable>.u32InCropWidth
	b	.L13	@
.L4:
	ldr	r6, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	add	r7, ip, r3	@ tmp147, stInRect$s32Width, stInRect$s32X
	cmp	r7, r6	@ tmp147, <variable>.u32Width
	bhi	.L5	@,
	ldr	r6, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	add	r7, r2, r5	@ tmp149, stInRect$s32Height, stInRect$s32Y
	cmp	r7, r6	@ tmp149, <variable>.u32Height
	bhi	.L5	@,
	cmp	r3, #0	@ stInRect$s32X,
	blt	.L5	@,
	cmp	r5, #0	@ stInRect$s32Y,
	blt	.L5	@,
	cmp	ip, #0	@ stInRect$s32Width,
	bne	.L6	@,
	cmp	r2, #0	@ stInRect$s32Height,
	moveq	r6, r2	@ stInRect$s32Width, stInRect$s32Height
	bne	.L5	@,
.L7:
	cmp	r3, #0	@ stInRect$s32X,
	mov	ip, #1	@ tmp151,
	str	ip, [r4, #0]	@ tmp151, <variable>.bInCropEn
	beq	.L34	@,
.L8:
	mov	ip, r3	@ stInRect$s32X, stInRect$s32X
.L10:
	ldr	r3, [r0, #136]	@ D.28220, <variable>.eFrmType
	cmp	r3, #0	@ D.28220,
	cmpne	r3, #3	@, D.28220,
	beq	.L35	@,
	cmp	r3, #1	@ D.28220,
	beq	.L36	@,
	cmp	r3, #2	@ D.28220,
	bne	.L13	@,
	ldr	r3, [r1, #0]	@ <variable>.eLReye, <variable>.eLReye
	cmp	r3, #0	@ <variable>.eLReye,
	ldrne	r3, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	add	r0, r2, r2, lsr #31	@, tmp203, stInRect$s32Height, stInRect$s32Height,
	str	ip, [r4, #12]	@ stInRect$s32X, <variable>.u32InCropX
	mov	ip, #0	@ tmp205,
	mov	r2, r0, asr #1	@ tmp204, tmp203,
	str	r6, [r4, #20]	@ stInRect$s32Width, <variable>.u32InCropWidth
	addne	r5, r5, r3, lsr #1	@, tmp201, stInRect$s32Y, <variable>.u32Height,
	str	ip, [r4, #4]	@ tmp205, <variable>.bInCropMode
	str	r5, [r4, #8]	@ tmp201, <variable>.u32InCropY
	str	r2, [r4, #16]	@ tmp204, <variable>.u32InCropHeight
.L13:
	mov	r0, #0	@,
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L35:
	mov	r0, #0	@ tmp189,
	stmib	r4, {r0, r5, ip}	@ phole stm
	str	r2, [r4, #16]	@ stInRect$s32Height, <variable>.u32InCropHeight
	str	r6, [r4, #20]	@ stInRect$s32Width, <variable>.u32InCropWidth
	b	.L13	@
.L36:
	ldr	r3, [r1, #0]	@ <variable>.eLReye, <variable>.eLReye
	add	r6, r6, r6, lsr #31	@, tmp195, stInRect$s32Width, stInRect$s32Width,
	mov	r1, #0	@ tmp197,
	cmp	r3, #0	@ <variable>.eLReye,
	mov	r6, r6, asr #1	@ tmp196, tmp195,
	ldrne	r3, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	r5, [r4, #8]	@ stInRect$s32Y, <variable>.u32InCropY
	str	r2, [r4, #16]	@ stInRect$s32Height, <variable>.u32InCropHeight
	addne	ip, ip, r3, lsr #1	@, tmp193, stInRect$s32X, <variable>.u32Width,
	str	r1, [r4, #4]	@ tmp197, <variable>.bInCropMode
	str	ip, [r4, #12]	@ tmp193, <variable>.u32InCropX
	str	r6, [r4, #20]	@ tmp196, <variable>.u32InCropWidth
	b	.L13	@
.L6:
	cmp	r2, #0	@ stInRect$s32Height,
	beq	.L5	@,
	mov	r6, ip	@ stInRect$s32Width, stInRect$s32Width
	b	.L7	@
.L32:
	mov	r3, #0	@ tmp159,
	str	r3, [r4, #12]	@ tmp159, <variable>.u32InCropX
	str	r3, [r4, #8]	@ tmp159, <variable>.u32InCropY
	ldr	r1, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	str	r1, [r4, #16]	@ <variable>.u32Height, <variable>.u32InCropHeight
	ldr	r2, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	r3, [r4, #4]	@ tmp159, <variable>.bInCropMode
	str	r2, [r4, #20]	@ <variable>.u32Width, <variable>.u32InCropWidth
	b	.L13	@
.L33:
	ldr	ip, [r1, #0]	@ <variable>.eLReye, <variable>.eLReye
	mov	r3, #0	@ tmp168,
	cmp	ip, #0	@ <variable>.eLReye,
	ldrne	ip, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	r3, [r4, #8]	@ tmp168, <variable>.u32InCropY
	movne	ip, ip, lsr #1	@ tmp167, <variable>.u32Width,
	str	ip, [r4, #12]	@ tmp167, <variable>.u32InCropX
	ldr	r2, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	str	r2, [r4, #16]	@ <variable>.u32Height, <variable>.u32InCropHeight
	ldr	ip, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	r3, [r4, #4]	@ tmp168, <variable>.bInCropMode
	mov	r0, ip, lsr #1	@ tmp171, <variable>.u32Width,
	str	r0, [r4, #20]	@ tmp171, <variable>.u32InCropWidth
	b	.L13	@
.L34:
	cmp	r5, #0	@ stInRect$s32Y,
	bne	.L8	@,
	cmp	r2, #0	@ stInRect$s32Height,
	beq	.L37	@,
.L11:
	mov	ip, #0	@ stInRect$s32X,
	mov	r5, ip	@ stInRect$s32Y, stInRect$s32X
	b	.L10	@
.L37:
	cmp	r6, #0	@ stInRect$s32Width,
	bne	.L11	@,
	b	.L25	@
	.fnend
	.size	VPSS_ALG_GetInCropCfg, .-VPSS_ALG_GetInCropCfg
	.align	2
	.global	VPSS_ALG_SetPqDebug
	.type	VPSS_ALG_SetPqDebug, %function
VPSS_ALG_SetPqDebug:
	.fnstart
.LFB1261:
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
	str	r0, [r3, #0]	@ bDebugMode, sg_bDebugMode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_SetPqDebug, .-VPSS_ALG_SetPqDebug
	.align	2
	.global	VPSS_ALG_GetPqDebug
	.type	VPSS_ALG_GetPqDebug, %function
VPSS_ALG_GetPqDebug:
	.fnstart
.LFB1262:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r1, #0]	@ sg_bDebugMode, sg_bDebugMode
	str	r3, [r0, #0]	@ sg_bDebugMode,* pbDebugMode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetPqDebug, .-VPSS_ALG_GetPqDebug
	.align	2
	.global	VPSS_ALG_GetDeiData
	.type	VPSS_ALG_GetDeiData, %function
VPSS_ALG_GetDeiData:
	.fnstart
.LFB1259:
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
	add	r3, r0, #548	@ tmp136, u32InfoAddr,
	mov	r2, #220	@,
	mov	r0, r1	@, pstDeiData
	mov	r1, r3	@, tmp136
	bl	memcpy	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetDeiData, .-VPSS_ALG_GetDeiData
	.align	2
	.global	VPSS_ALG_StoreDeiData
	.type	VPSS_ALG_StoreDeiData, %function
VPSS_ALG_StoreDeiData:
	.fnstart
.LFB1258:
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
	mov	r2, #220	@,
	add	r0, r0, #548	@, u32InfoAddr,
	bl	memcpy	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_StoreDeiData, .-VPSS_ALG_StoreDeiData
	.align	2
	.global	VPSS_ALG_SetFrameInfo
	.type	VPSS_ALG_SetFrameInfo, %function
VPSS_ALG_SetFrameInfo:
	.fnstart
.LFB1251:
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
	ldr	r2, [r1, #76]	@ <variable>.u32Width, <variable>.u32Width
	mov	ip, r1	@ pstFrm, pstFrm
	add	r5, r1, #4	@ D.28001, pstFrm,
	mov	lr, r0	@ pstFrmCfg, pstFrmCfg
	add	r6, r0, #4	@ D.28000, pstFrmCfg,
	str	r2, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	ldr	r1, [r1, #80]	@ <variable>.u32Height, <variable>.u32Height
	str	r1, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	ldr	r0, [ip, #104]	@ <variable>.ePixFormat, <variable>.ePixFormat
	str	r0, [lr, #92]	@ <variable>.ePixFormat, <variable>.ePixFormat
	ldr	r4, [ip, #112]	@ <variable>.enFieldMode, <variable>.enFieldMode
	str	r4, [lr, #100]	@ <variable>.enFieldMode, <variable>.enFieldMode
	mov	r4, r6	@ D.28000, D.28000
	ldr	r3, [ip, #108]	@ <variable>.bProgressive, <variable>.bProgressive
	str	r3, [lr, #96]	@ <variable>.bProgressive, <variable>.bProgressive
	ldr	r2, [ip, #116]	@ <variable>.bTopFieldFirst, <variable>.bTopFieldFirst
	str	r2, [lr, #104]	@ <variable>.bTopFieldFirst, <variable>.bTopFieldFirst
	ldr	r1, [ip, #96]	@ <variable>.u32AspectHeight, <variable>.u32AspectHeight
	str	r1, [lr, #116]	@ <variable>.u32AspectHeight, <variable>.u32AspectHeight
	ldr	r0, [ip, #92]	@ <variable>.u32AspectWidth, <variable>.u32AspectWidth
	str	r0, [lr, #112]	@ <variable>.u32AspectWidth, <variable>.u32AspectWidth
	ldmia	r5!, {r0, r1, r2, r3}	@ D.28001,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ D.28000,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ D.28001,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ D.28000,,,,
	mov	r3, r4	@ D.28000, D.28000
	ldr	r4, [r5, #0]	@ tmp148,* D.28001
	add	r0, lr, #40	@, pstFrmCfg,
	add	r1, ip, #40	@, pstFrm,
	mov	r2, #36	@,
	str	r4, [r3, #0]	@ tmp148,* D.28000
	bl	memcpy	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_SetFrameInfo, .-VPSS_ALG_SetFrameInfo
	.align	2
	.global	VPSS_ALG_SetImageInfo
	.type	VPSS_ALG_SetImageInfo, %function
VPSS_ALG_SetImageInfo:
	.fnstart
.LFB1250:
	@ args = 16, pretend = 8, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #8
	sub	sp, sp, #8	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-12
	sub	fp, ip, #12	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r1	@ pstImg, pstImg
	ldr	r1, [r0, #0]	@ <variable>.eLReye, <variable>.eLReye
	add	ip, fp, #4	@ tmp166,,
	sub	r6, fp, #80	@ tmp145,,
	ldr	r9, [r5, #80]	@ u32InHeight, <variable>.u32Height
	ldr	sl, [r5, #76]	@ u32InWidth, <variable>.u32Width
	add	lr, r5, #4	@ tmp146, pstImg,
	add	r8, r1, r1, asl #3	@, tmp143, <variable>.eLReye, <variable>.eLReye,
	mov	r7, #36	@ tmp150,
	mov	r4, r0	@ pstImgCfg, pstImgCfg
	stmia	ip, {r2, r3}	@ tmp166,,
	mov	r8, r8, asl #2	@ tmp144, tmp143,
	mov	r2, r7	@, tmp150
	add	r1, lr, r8	@, tmp146, tmp144
	mov	r0, r6	@, tmp145
	bl	memcpy	@
	add	r0, r4, #4	@ tmp152, pstImgCfg,
	mov	r1, r6	@, tmp145
	mov	r2, r7	@, tmp150
	str	sl, [r4, #76]	@ u32InWidth, <variable>.u32Width
	add	r0, r0, r8	@, tmp152, tmp144
	str	r9, [r4, #80]	@ u32InHeight, <variable>.u32Height
	bl	memcpy	@
	ldr	r1, [r5, #104]	@ <variable>.ePixFormat, <variable>.ePixFormat
	mov	r0, #0	@,
	str	r1, [r4, #92]	@ <variable>.ePixFormat, <variable>.ePixFormat
	ldr	r2, [r5, #112]	@ <variable>.enFieldMode, <variable>.enFieldMode
	str	r2, [r4, #100]	@ <variable>.enFieldMode, <variable>.enFieldMode
	ldr	r3, [r5, #108]	@ D.27981, <variable>.bProgressive
	cmp	r3, r0	@ D.27981,
	movne	r2, #0	@, tmp164
	moveq	r2, #1	@, tmp164
	str	r3, [r4, #96]	@ D.27981, <variable>.bProgressive
	ldr	ip, [r5, #116]	@ <variable>.bTopFieldFirst, <variable>.bTopFieldFirst
	str	ip, [r4, #104]	@ <variable>.bTopFieldFirst, <variable>.bTopFieldFirst
	ldr	r1, [r5, #96]	@ <variable>.u32AspectHeight, <variable>.u32AspectHeight
	str	r1, [r4, #116]	@ <variable>.u32AspectHeight, <variable>.u32AspectHeight
	ldr	r3, [r5, #92]	@ <variable>.u32AspectWidth, <variable>.u32AspectWidth
	str	r2, [r4, #108]	@ tmp164, <variable>.bReadField
	str	r3, [r4, #112]	@ <variable>.u32AspectWidth, <variable>.u32AspectWidth
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VPSS_ALG_SetImageInfo, .-VPSS_ALG_SetImageInfo
	.align	2
	.global	VPSS_ALG_GetCscCfg
	.type	VPSS_ALG_GetCscCfg, %function
VPSS_ALG_GetCscCfg:
	.fnstart
.LFB1257:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	str	r1, [fp, #-60]	@ eDstCS, stCscDrvPara.eOutputCS
	ldr	ip, [r0, #92]	@ prephitmp.661, <variable>.ePixFormat
	mov	r1, #0	@ tmp138,
	mov	r4, r2	@ pstCscRtlPara, pstCscRtlPara
	str	r1, [fp, #-64]	@ tmp138, stCscDrvPara.eInputCS
	sub	r3, ip, #63	@ tmp139, prephitmp.661,
	cmp	ip, #90	@ prephitmp.661,
	cmpne	r3, #1	@, tmp139,
	bls	.L51	@,
	cmp	ip, #89	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #97	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #98	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #100	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #101	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #69	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #68	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #67	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #66	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #102	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #108	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #107	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #106	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #104	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #105	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #103	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #44	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #46	@ prephitmp.661,
	beq	.L51	@,
	cmp	ip, #47	@ prephitmp.661,
	bne	.L52	@,
.L51:
	ldr	r2, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	cmp	r2, #1280	@ <variable>.u32Width,
	bcs	.L59	@,
.L53:
	mov	r3, #2	@ tmp152,
	str	r3, [fp, #-64]	@ tmp152, stCscDrvPara.eInputCS
.L52:
	cmp	ip, #29	@ prephitmp.661,
	cmpne	ip, #21	@, prephitmp.661,
	beq	.L54	@,
	cmp	ip, #30	@ prephitmp.661,
	beq	.L54	@,
	ldr	r0, [fp, #-64]	@ stCscDrvPara.eInputCS, stCscDrvPara.eInputCS
	cmp	r0, #0	@ stCscDrvPara.eInputCS,
	bne	.L57	@,
	mov	r1, #37	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movw	r3, #381	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	str	ip, [sp, #4]	@ prephitmp.661,
	movw	lr, #:lower16:.LC0	@ tmp168,
	movt	lr, #:upper16:.LC0	@ tmp168,
	str	lr, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	mov	r2, #9	@ tmp169,
	str	r2, [fp, #-64]	@ tmp169, stCscDrvPara.eInputCS
.L57:
	mov	r1, r4	@, pstCscRtlPara
	sub	r0, fp, #64	@,,
	mov	r4, #0	@ tmp170,
	mov	r3, #50	@ tmp172,
	mov	ip, #20	@ tmp174,
	str	r4, [fp, #-56]	@ tmp170, stCscDrvPara.bIsBGRIn
	str	r4, [fp, #-52]	@ tmp170, stCscDrvPara.bIsBGROut
	str	r3, [fp, #-36]	@ tmp172, stCscDrvPara.u32Satur
	str	ip, [fp, #-40]	@ tmp174, stCscDrvPara.u32Hue
	str	r3, [fp, #-48]	@ tmp172, stCscDrvPara.u32Bright
	str	r3, [fp, #-44]	@ tmp172, stCscDrvPara.u32Contrst
	str	r3, [fp, #-24]	@ tmp172, stCscDrvPara.u32Kb
	str	r3, [fp, #-28]	@ tmp172, stCscDrvPara.u32Kg
	str	r3, [fp, #-32]	@ tmp172, stCscDrvPara.u32Kr
	bl	VPSS_ALG_CscCoefSet	@
	mov	r0, r4	@, tmp170
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L54:
	ldr	ip, [r0, #76]	@ <variable>.u32Width, <variable>.u32Width
	cmp	ip, #1280	@ <variable>.u32Width,
	bcc	.L56	@,
	ldr	r1, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	cmp	r1, #720	@ <variable>.u32Height,
	movcs	r1, #12	@ tmp164,
	strcs	r1, [fp, #-64]	@ tmp164, stCscDrvPara.eInputCS
	bcs	.L57	@,
.L56:
	mov	r0, #5	@ tmp165,
	str	r0, [fp, #-64]	@ tmp165, stCscDrvPara.eInputCS
	b	.L57	@
.L59:
	ldr	lr, [r0, #80]	@ <variable>.u32Height, <variable>.u32Height
	cmp	lr, #720	@ <variable>.u32Height,
	movcs	lr, #9	@ tmp151,
	strcs	lr, [fp, #-64]	@ tmp151, stCscDrvPara.eInputCS
	bcs	.L52	@,
	b	.L53	@
	.fnend
	.size	VPSS_ALG_GetCscCfg, .-VPSS_ALG_GetCscCfg
	.align	2
	.global	VPSS_ALG_GetAspCfg
	.type	VPSS_ALG_GetAspCfg, %function
VPSS_ALG_GetAspCfg:
	.fnstart
.LFB1255:
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
	mov	r5, r0	@ pstAspDrvPara, pstAspDrvPara
	mov	r1, r3	@, pstAspCfg
	mov	r4, r3	@ pstAspCfg, pstAspCfg
	mov	r6, r2	@ pstScreen, pstScreen
	bl	ALG_RATIO_RatioProcess	@
	ldr	r3, [r5, #16]	@ <variable>.eAspMode, <variable>.eAspMode
	cmp	r3, #1	@ <variable>.eAspMode,
	bne	.L61	@,
	mov	lr, #0	@ tmp139,
	str	lr, [r4, #60]	@ tmp139, <variable>.bEnCrop
	ldr	r0, [r5, #56]	@ <variable>.stOutWnd.s32Width, <variable>.stOutWnd.s32Width
	str	r0, [r4, #52]	@ <variable>.stOutWnd.s32Width, <variable>.u32ZmeW
	ldr	r1, [r5, #60]	@ <variable>.stOutWnd.s32Height, <variable>.stOutWnd.s32Height
	str	r1, [r4, #48]	@ <variable>.stOutWnd.s32Height, <variable>.u32ZmeH
	ldr	r2, [r5, #60]	@ <variable>.stOutWnd.s32Height, <variable>.stOutWnd.s32Height
	add	r0, r5, #48
	ldmia	r0, {r0, r1, r3}	@ phole ldm
	str	r2, [r4, #28]	@ <variable>.stOutWnd.s32Height, <variable>.stOutWnd.s32Height
	str	r3, [r4, #24]	@ <variable>.stOutWnd.s32Width, <variable>.stOutWnd.s32Width
	ldr	r2, [r6, #12]	@ <variable>.s32Height, <variable>.s32Height
	ldr	ip, [r6, #8]	@ <variable>.s32Width, <variable>.s32Width
	str	r0, [r4, #16]	@ <variable>.stOutWnd.s32X, <variable>.stOutWnd.s32X
	str	r1, [r4, #20]	@ <variable>.stOutWnd.s32Y, <variable>.stOutWnd.s32Y
	str	ip, [r4, #40]	@ <variable>.s32Width, <variable>.stOutScreen.s32Width
	str	lr, [r4, #36]	@ tmp139, <variable>.stOutScreen.s32Y
	str	r2, [r4, #44]	@ <variable>.s32Height, <variable>.stOutScreen.s32Height
	str	lr, [r4, #32]	@ tmp139, <variable>.stOutScreen.s32X
.L61:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetAspCfg, .-VPSS_ALG_GetAspCfg
	.align	2
	.global	VPSS_ALG_GetZmeCfg
	.type	VPSS_ALG_GetZmeCfg, %function
VPSS_ALG_GetZmeCfg:
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
	mov	ip, r0	@ pstZmeDrvPara, pstZmeDrvPara
	mov	r3, r1	@ pstZmeCfg, pstZmeCfg
	mov	r0, r2	@, pstAlgCtrl
	mov	r1, ip	@, pstZmeDrvPara
	mov	r2, r3	@, pstZmeCfg
	bl	ALG_VZmeVpssHQSet	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetZmeCfg, .-VPSS_ALG_GetZmeCfg
	.align	2
	.global	VPSS_ALG_GetDeiCfg
	.type	VPSS_ALG_GetDeiCfg, %function
VPSS_ALG_GetDeiCfg:
	.fnstart
.LFB1253:
	@ args = 0, pretend = 0, frame = 576
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #584
	sub	sp, sp, #584	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	ip, r0, #0	@ eDeiMode, eDeiMode
	mov	r6, r1	@ u32AuInfoAddr, u32AuInfoAddr
	mov	r4, r2	@ pstDeiCfg, pstDeiCfg
	mov	r5, r3	@ pstAlgCtrl, pstAlgCtrl
	streq	ip, [r2, #0]	@ eDeiMode, <variable>.bDei
	beq	.L74	@,
	cmp	ip, #4	@ eDeiMode,
	mov	r3, #1	@ tmp140,
	mov	r0, #0	@ tmp141,
	str	r3, [r2, #0]	@ tmp140, <variable>.bDei
	str	r3, [r2, #4]	@ tmp140, <variable>.stDeiPara.bDeiEnLum
	str	r0, [r2, #56]	@ tmp141, <variable>.stDeiPara.s32Repeat
	str	r3, [r2, #8]	@ tmp140, <variable>.stDeiPara.bDeiEnChr
	streq	r3, [r2, #16]	@ tmp140, <variable>.stDeiPara.s32DeiMdChr
	streq	r3, [r2, #12]	@ tmp140, <variable>.stDeiPara.s32DeiMdLum
	beq	.L71	@,
	cmp	ip, #5	@ eDeiMode,
	streq	r0, [r2, #16]	@ tmp141, <variable>.stDeiPara.s32DeiMdChr
	streq	r0, [r2, #12]	@ tmp141, <variable>.stDeiPara.s32DeiMdLum
	beq	.L71	@,
	cmp	ip, #3	@ eDeiMode,
	moveq	r3, #2	@ tmp144,
	streq	r3, [r2, #16]	@ tmp144, <variable>.stDeiPara.s32DeiMdChr
	streq	r3, [r2, #12]	@ tmp144, <variable>.stDeiPara.s32DeiMdLum
	beq	.L71	@,
	mov	r1, #37	@,
	ldr	r2, .L78	@,
	mov	r3, #247	@,
	movw	ip, #:lower16:.LC1	@ tmp152,
	movt	ip, #:upper16:.LC1	@ tmp152,
	str	ip, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
.L71:
	movw	r7, #:lower16:.LANCHOR0	@ tmp153,
	movt	r7, #:upper16:.LANCHOR0	@ tmp153,
	ldr	ip, [r7, #0]	@ sg_bDebugMode, sg_bDebugMode
	cmp	ip, #0	@ sg_bDebugMode,
	bne	.L77	@,
.L73:
	add	r5, r5, #208	@ D.28046, pstAlgCtrl,
	add	r0, r6, #20	@, u32AuInfoAddr,
	add	r1, r4, #4	@, pstDeiCfg,
	add	r3, r4, #524	@, pstDeiCfg,
	mov	r2, r5	@, D.28046
	str	ip, [sp, #0]	@ prephitmp.736,
	bl	ALG_DeiSet	@
	str	r5, [r4, #552]	@ D.28046, <variable>.pstDeiDefaultPara
.L74:
	mov	r0, #0	@,
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L77:
	sub	r0, fp, #600	@,,
	bl	ALG_GetDeiDbgPara	@
	ldr	r3, [fp, #-588]	@ stPqDeiCoef.stPqDeiCtrl.u32Die_cmmode, stPqDeiCoef.stPqDeiCtrl.u32Die_cmmode
	ldr	r2, [fp, #-592]	@ stPqDeiCoef.stPqDeiCtrl.u32Die_lmmode, stPqDeiCoef.stPqDeiCtrl.u32Die_lmmode
	str	r3, [r4, #16]	@ stPqDeiCoef.stPqDeiCtrl.u32Die_cmmode, <variable>.stDeiPara.s32DeiMdChr
	str	r2, [r4, #12]	@ stPqDeiCoef.stPqDeiCtrl.u32Die_lmmode, <variable>.stDeiPara.s32DeiMdLum
	ldr	ip, [r7, #0]	@ prephitmp.736, sg_bDebugMode
	b	.L73	@
.L79:
	.align	2
.L78:
	.word	.LANCHOR1+20
	.fnend
	.size	VPSS_ALG_GetDeiCfg, .-VPSS_ALG_GetDeiCfg
	.align	2
	.global	VPSS_ALG_GetRwzbCfg
	.type	VPSS_ALG_GetRwzbCfg, %function
VPSS_ALG_GetRwzbCfg:
	.fnstart
.LFB1252:
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
	ldr	ip, [r2, #100]	@ <variable>.enFieldMode, <variable>.enFieldMode
	mov	r3, r1	@ pstRwzbCfg, pstRwzbCfg
	cmp	ip, #0	@ <variable>.enFieldMode,
	beq	.L81	@,
	ldr	r1, [r2, #96]	@ <variable>.bProgressive, <variable>.bProgressive
	cmp	r1, #1	@ <variable>.bProgressive,
	movne	r2, #0	@ tmp143,
	strne	r2, [r3, #12]	@ tmp143, <variable>.u32Mode
	strne	r2, [r3, #8]	@ tmp143, <variable>.u32EnRwzb
	beq	.L81	@,
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
.L81:
	mov	ip, #0	@ tmp140,
	mov	r1, #1	@ tmp139,
	str	ip, [r3, #12]	@ tmp140, <variable>.u32Mode
	str	r1, [r3, #8]	@ tmp139, <variable>.u32EnRwzb
	mov	r1, r3	@, pstRwzbCfg
	ldr	lr, [r2, #76]	@ <variable>.u32Width, <variable>.u32Width
	str	lr, [r3, #4]	@ <variable>.u32Width, <variable>.u32Width
	ldr	r2, [r2, #80]	@ <variable>.u32Height, <variable>.u32Height
	str	r2, [r3, #0]	@ <variable>.u32Height, <variable>.u32Height
	bl	ALG_DetPic	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_GetRwzbCfg, .-VPSS_ALG_GetRwzbCfg
	.align	2
	.global	VPSS_ALG_DeInitAuInfo
	.type	VPSS_ALG_DeInitAuInfo, %function
VPSS_ALG_DeInitAuInfo:
	.fnstart
.LFB1249:
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
	mov	r4, r0	@ u32InfoAddr, u32InfoAddr
	bl	ALG_DeInitRwzbInfo	@
	add	r0, r4, #20	@, u32InfoAddr,
	bl	ALG_DeiInfoDeInit	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_DeInitAuInfo, .-VPSS_ALG_DeInitAuInfo
	.align	2
	.global	VPSS_ALG_InitAuInfo
	.type	VPSS_ALG_InitAuInfo, %function
VPSS_ALG_InitAuInfo:
	.fnstart
.LFB1248:
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
	mov	r4, r0	@ u32InfoAddr, u32InfoAddr
	bl	ALG_InitRwzbInfo	@
	add	r0, r4, #20	@, u32InfoAddr,
	bl	ALG_DeiInfoInit	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_InitAuInfo, .-VPSS_ALG_InitAuInfo
	.align	2
	.global	VPSS_ALG_DelInit
	.type	VPSS_ALG_DelInit, %function
VPSS_ALG_DelInit:
	.fnstart
.LFB1247:
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
	bl	ALG_VZmeVpssComnDeInit	@
	bl	ALG_DeiDeInit	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VPSS_ALG_DelInit, .-VPSS_ALG_DelInit
	.align	2
	.global	VPSS_ALG_Init
	.type	VPSS_ALG_Init, %function
VPSS_ALG_Init:
	.fnstart
.LFB1246:
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
	mov	r3, #0	@ tmp139,
	mov	r4, r0	@ pstAlgCtrl, pstAlgCtrl
	str	r3, [fp, #-28]	@ tmp139, pstPqFuncs
	str	r3, [fp, #-24]	@ tmp139, pstPqParam
	bl	ALG_VZmeVpssComnInit	@
	cmn	r0, #1	@ s32Ret,
	beq	.L93	@,
	bl	MadThdParaInitDefault	@
	bl	DnrThdParaInitDefault	@
	bl	FmdThdParaInitDefault	@
	mov	r0, #41	@,
	sub	r1, fp, #28	@,,
	bl	HI_DRV_MODULE_GetFunction	@
	ldr	r3, [fp, #-28]	@ pstPqFuncs.405, pstPqFuncs
	cmp	r3, #0	@ pstPqFuncs.405,
	beq	.L98	@,
	ldr	r1, [r3, #0]	@ <variable>.pfnPQ_GetPqParam, <variable>.pfnPQ_GetPqParam
	sub	r0, fp, #24	@,,
	blx	r1	@ <variable>.pfnPQ_GetPqParam
	cmp	r0, #0	@,
	beq	.L99	@,
	mov	r0, #2	@,
	mov	r1, #37	@,
	ldr	r2, .L100	@,
	mov	r3, #53	@,
	movw	ip, #:lower16:.LC3	@ tmp158,
	movt	ip, #:upper16:.LC3	@ tmp158,
	str	ip, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
.L95:
	add	r0, r4, #208	@, pstAlgCtrl,
	bl	ALG_DeiInit	@
	mov	r0, #0	@ D.27923,
.L93:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L99:
	ldr	r1, [fp, #-24]	@ pstPqParam, pstPqParam
	add	lr, r1, #1360	@, pstPqParam,
	add	r0, lr, #12	@,,
	bl	ALG_SetDeiDbgPara	@
	ldr	ip, [fp, #-24]	@ pstPqParam, pstPqParam
	add	r3, ip, #2096	@, pstPqParam,
	add	r0, r3, #12	@,,
	bl	ALG_SetDnrDbgPara	@
	ldr	r2, [fp, #-24]	@ pstPqParam, pstPqParam
	add	r0, r2, #1936	@, pstPqParam,
	add	r0, r0, #8	@,,
	bl	ALG_SetFmdDbgPara	@
	b	.L95	@
.L98:
	mov	r0, #2	@,
	mov	r1, #37	@,
	ldr	r2, .L100	@,
	mov	r3, #40	@,
	movw	ip, #:lower16:.LC2	@ tmp144,
	movt	ip, #:upper16:.LC2	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	HI_LogOut	@
	b	.L95	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR1+40
	.fnend
	.size	VPSS_ALG_Init, .-VPSS_ALG_Init
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.28091, %object
	.size	__func__.28091, 19
__func__.28091:
	.ascii	"VPSS_ALG_GetCscCfg\000"
	.space	1
	.type	__func__.28036, %object
	.size	__func__.28036, 19
__func__.28036:
	.ascii	"VPSS_ALG_GetDeiCfg\000"
	.space	1
	.type	__func__.27918, %object
	.size	__func__.27918, 14
__func__.27918:
	.ascii	"VPSS_ALG_Init\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Can't get InputCS ePixFormat %d\012\000"
	.space	3
.LC1:
	.ascii	"Dei Mode Error.\012\000"
	.space	3
.LC2:
	.ascii	"Get PQ_EXPORT_FUNC_S failed\015\012\000"
	.space	2
.LC3:
	.ascii	"Get Pq driver data failed.\015\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sg_bDebugMode, %object
	.size	sg_bDebugMode, 4
sg_bDebugMode:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
