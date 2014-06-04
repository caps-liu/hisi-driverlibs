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
	.file	"public.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0
@ -Idrivers/msp/vfmw/vfmw_v4.0
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/HiS40V200
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DENV_ARMLINUX_KERNEL
@ -DBTL_ENABLE -DSCD_MP4_SLICE_ENABLE -DSUPPORT_JPEG_444
@ -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB -D__VFMW_REGISTER_ISR__
@ -DPRODUCT_S40V200 -DVFMW_VDH_V200R003MPW_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MVC_SUPPORT -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT
@ -DVFMW_AVS_SUPPORT -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_REAL8_SUPPORT -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_BTL_SUPPORT
@ -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=2 -DCFG_MAX_CHAN_NUM=2
@ -DVFMW_DPRINT_SUPPORT -DCHIP_TYPE_hi3716cv200es
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC011 -DCFG_HI_LOG_LEVEL=4
@ -DHI_KEYLED_SUPPORT -DHI_SCI_SUPPORT -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT
@ -DHI_VDEC_SVDEC_BUILTIN -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(public) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.public.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/public.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/public.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fno-pic -fverbose-asm
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
	.global	IsDprintTypeEnable
	.type	IsDprintTypeEnable, %function
IsDprintTypeEnable:
	.fnstart
.LFB1351:
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
	cmp	r0, #32	@ type,
	moveq	r0, #1	@ D.30716,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	mov	r2, #1	@ tmp137,
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@,, g_PrintEnable, tmp137,
	moveq	r0, #0	@, D.30716
	movne	r0, #1	@, D.30716
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsDprintTypeEnable, .-IsDprintTypeEnable
	.align	2
	.global	CHECK_REC_POS_ENABLE
	.type	CHECK_REC_POS_ENABLE, %function
CHECK_REC_POS_ENABLE:
	.fnstart
.LFB1353:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp136,
	movt	r1, #:upper16:.LANCHOR1	@ tmp136,
	ldr	r3, [r1, #0]	@ g_TraceCtrl, g_TraceCtrl
	mov	r0, r3, asr r0	@ tmp137, g_TraceCtrl,
	and	r0, r0, #1	@, tmp137,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CHECK_REC_POS_ENABLE, .-CHECK_REC_POS_ENABLE
	.global	__aeabi_uidiv
	.align	2
	.global	qsort
	.type	qsort, %function
qsort:
	.fnstart
.LFB1356:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #268
	sub	sp, sp, #268	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #0	@ width,
	cmpne	r1, #1	@, num,
	mov	r4, r2	@ width, width
	mov	r6, r3	@ comp, comp
	movhi	r2, #0	@, tmp215
	movls	r2, #1	@, tmp215
	bls	.L45	@,
	str	r0, [fp, #-296]	@ base, %sfp
	sub	r1, r1, #1	@ tmp216, num,
	str	r2, [fp, #-308]	@ tmp215, %sfp
	rsb	r0, r4, #0	@, width
	ldr	r2, [fp, #-296]	@, %sfp
	str	r0, [fp, #-292]	@, %sfp
	mla	r5, r4, r1, r2	@ hi, width, tmp216,
.L85:
	ldr	r3, [fp, #-296]	@, %sfp
	mov	r1, r4	@, width
	rsb	r0, r3, r5	@,, hi
	bl	__aeabi_uidiv	@
	add	r0, r0, #1	@ size,,
	cmp	r0, #8	@ size,
	bhi	.L11	@,
.L100:
	ldr	ip, [fp, #-296]	@, %sfp
	cmp	ip, r5	@, hi
	bcs	.L12	@,
	ldr	r1, [fp, #-292]	@, %sfp
	add	lr, ip, r4	@,, width
	add	r9, lr, r4	@,, width
	str	r9, [fp, #-304]	@, %sfp
	add	ip, r5, r1	@, hi,
	str	lr, [fp, #-300]	@, %sfp
	str	ip, [fp, #-288]	@, %sfp
	mov	r9, ip	@ ivtmp.539,
.L19:
	ldr	r2, [fp, #-300]	@, %sfp
	cmp	r2, r5	@, hi
	ldrhi	r7, [fp, #-296]	@ lo.601, %sfp
	bhi	.L14	@,
	ldr	sl, [fp, #-304]	@ ivtmp.535, %sfp
	ldr	r7, [fp, #-296]	@ lo.601, %sfp
	ldr	r8, [fp, #-300]	@ lo.599, %sfp
.L16:
	mov	r0, r8	@, lo.599
	mov	r1, r7	@, lo.601
	blx	r6	@ comp
	add	sl, sl, r4	@ ivtmp.535, ivtmp.535, width
	rsb	r3, r4, sl	@ tmp223, width, ivtmp.535
	cmp	r0, #0	@,
	movgt	r7, r8	@ lo.601, lo.599
	cmp	r3, r5	@ tmp223, hi
	add	r8, r8, r4	@ lo.599, lo.599, width
	bls	.L16	@,
.L14:
	cmp	r7, r5	@ lo.601, hi
	beq	.L17	@,
	ldrb	ip, [r7, #0]	@ zero_extendqisi2	@ tmp,* lo.601
	mov	r3, #1	@ ivtmp.524,
	ldrb	lr, [r5, #0]	@ zero_extendqisi2	@ tmp224,* hi
	cmp	r4, r3	@ width, ivtmp.524
	sub	r0, r4, #1	@ tmp277, width,
	and	r0, r0, r3	@ tmp279, tmp277,
	strb	lr, [r7, #0]	@ tmp224,* lo.601
	strb	ip, [r5, #0]	@ tmp,* hi
	beq	.L17	@,
	cmp	r0, #0	@ tmp279,
	beq	.L18	@,
	ldrb	lr, [r7, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.524
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ tmp328,* ivtmp.524
	strb	ip, [r7, r3]	@ tmp328,* ivtmp.524
	strb	lr, [r5, r3]	@ tmp,* ivtmp.524
	mov	r3, #2	@ ivtmp.524,
	cmp	r4, r3	@ width, ivtmp.524
	beq	.L17	@,
.L18:
	ldrb	lr, [r7, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.524
	add	r2, r3, #1	@ tmp280, ivtmp.524,
	ldrb	r0, [r5, r3]	@ zero_extendqisi2	@ tmp299,* ivtmp.524
	strb	r0, [r7, r3]	@ tmp299,* ivtmp.524
	strb	lr, [r5, r3]	@ tmp,* ivtmp.524
	add	r3, r2, #1	@ ivtmp.524, tmp280,
	ldrb	r1, [r7, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.524
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ tmp302,
	strb	ip, [r7, r2]	@ tmp302,
	strb	r1, [r5, r2]	@ tmp,
	bne	.L18	@,
.L17:
	ldr	ip, [fp, #-292]	@, %sfp
	ldr	r1, [fp, #-296]	@, %sfp
	add	r9, r9, ip	@ ivtmp.539, ivtmp.539,
	ldr	r5, [fp, #-288]	@ hi, %sfp
	rsb	r3, ip, r9	@ tmp227,, ivtmp.539
	cmp	r1, r3	@, tmp227
	bcs	.L12	@,
	add	ip, r5, ip	@, tmp14, tmp2
	mov	lr, r5	@, hi
	str	ip, [fp, #-288]	@, %sfp
	b	.L19	@
.L34:
	add	r9, r9, r4	@ higuy.598, higuy, width
	ldr	r5, [fp, #-288]	@ hi, %sfp
	cmp	r9, r8	@ higuy.598, mid
	bls	.L46	@,
	ldr	r3, [fp, #-292]	@, %sfp
	str	sl, [fp, #-288]	@ loguy, %sfp
	add	r7, r9, r3	@ ivtmp.549, higuy.598,
	mov	sl, r3	@ pretmp.603,
.L38:
	cmp	r8, r7	@ mid, ivtmp.549
	mov	r0, r7	@, ivtmp.549
	mov	r9, r7	@ higuy.598, ivtmp.549
	mov	r1, r8	@, mid
	add	r7, r7, sl	@ ivtmp.549, ivtmp.549, pretmp.603
	bcs	.L37	@,
	blx	r6	@ comp
	cmp	r0, #0	@,
	beq	.L38	@,
.L37:
	cmp	r9, r8	@ higuy.598, mid
	ldr	sl, [fp, #-288]	@ loguy, %sfp
	bls	.L46	@,
.L39:
	ldr	r0, [fp, #-296]	@, %sfp
	rsb	r2, sl, r5	@ tmp243, loguy, hi
	rsb	ip, r0, r9	@ tmp242,, higuy.598
	cmp	ip, r2	@ tmp242, tmp243
	blt	.L41	@,
	cmp	r0, r9	@, higuy.598
	bcs	.L42	@,
	ldr	ip, [fp, #-308]	@, %sfp
	sub	r1, fp, #44	@,,
	add	r3, ip, #1	@,,
	str	r3, [fp, #-308]	@, %sfp
	add	lr, r1, ip, asl #2	@, tmp246,,,
	str	r9, [lr, #-240]	@ higuy.598, histk
	str	r0, [lr, #-120]	@, lostk
.L42:
	cmp	r5, sl	@ hi, loguy
	strhi	sl, [fp, #-296]	@ loguy, %sfp
	bhi	.L85	@,
.L12:
	ldr	r1, [fp, #-308]	@, %sfp
	sub	r2, r1, #1	@,,
	str	r2, [fp, #-308]	@, %sfp
	cmn	r2, #1	@,
	beq	.L45	@,
	sub	r5, fp, #44	@,,
	mov	r1, r4	@, width
	add	r0, r5, r2, asl #2	@, tmp262,,,
	ldr	r2, [r0, #-120]	@, lostk
	ldr	r5, [r0, #-240]	@ hi, histk
	str	r2, [fp, #-296]	@, %sfp
	ldr	r3, [fp, #-296]	@, %sfp
	rsb	r0, r3, r5	@,, hi
	bl	__aeabi_uidiv	@
	add	r0, r0, #1	@ size,,
	cmp	r0, #8	@ size,
	bls	.L100	@,
.L11:
	mov	r8, r0, lsr #1	@ tmp228, size,
	ldr	r0, [fp, #-296]	@, %sfp
	mla	r8, r4, r8, r0	@ mid, width, tmp228,
	mov	r1, r8	@, mid
	blx	r6	@ comp
	cmp	r0, #0	@,
	ble	.L20	@,
	ldr	r3, [fp, #-296]	@, %sfp
	cmp	r3, r8	@, mid
	beq	.L20	@,
	ldrb	r7, [r3, #0]	@ zero_extendqisi2	@ tmp,
	mov	r3, #1	@ ivtmp.589,
	ldrb	sl, [r8, #0]	@ zero_extendqisi2	@ tmp230,* mid
	cmp	r4, r3	@ width, ivtmp.589
	ldr	r9, [fp, #-296]	@, %sfp
	sub	r0, r4, #1	@ tmp293, width,
	and	r0, r0, r3	@ tmp295, tmp293,
	strb	sl, [r9, #0]	@ tmp230,
	strb	r7, [r8, #0]	@ tmp,* mid
	beq	.L20	@,
	cmp	r0, #0	@ tmp295,
	beq	.L99	@,
	ldr	r7, [fp, #-296]	@, %sfp
	ldrb	r1, [r8, r3]	@ zero_extendqisi2	@ tmp336,* ivtmp.589
	ldr	ip, [fp, #-296]	@, %sfp
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.589
	strb	r1, [ip, r3]	@ tmp336,* ivtmp.589
	strb	r2, [r8, r3]	@ tmp,* ivtmp.589
	mov	r3, #2	@ ivtmp.589,
	cmp	r4, r3	@ width, ivtmp.589
	beq	.L20	@,
.L99:
	ldr	r1, [fp, #-296]	@ lo, %sfp
.L21:
	ldrb	r7, [r1, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.589
	add	r2, r3, #1	@ tmp296, ivtmp.589,
	ldrb	sl, [r8, r3]	@ zero_extendqisi2	@ tmp305,* ivtmp.589
	strb	sl, [r1, r3]	@ tmp305,* ivtmp.589
	strb	r7, [r8, r3]	@ tmp,* ivtmp.589
	add	r3, r2, #1	@ ivtmp.589, tmp296,
	ldrb	lr, [r1, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.589
	ldrb	ip, [r8, r2]	@ zero_extendqisi2	@ tmp308,
	strb	ip, [r1, r2]	@ tmp308,
	strb	lr, [r8, r2]	@ tmp,
	bne	.L21	@,
.L20:
	ldr	r0, [fp, #-296]	@, %sfp
	mov	r1, r5	@, hi
	blx	r6	@ comp
	cmp	r0, #0	@,
	ble	.L22	@,
	ldr	r0, [fp, #-296]	@, %sfp
	cmp	r0, r5	@, hi
	beq	.L22	@,
	ldrb	r9, [r0, #0]	@ zero_extendqisi2	@ tmp,
	mov	r3, #1	@ ivtmp.580,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@ tmp233,* hi
	cmp	r4, r3	@ width, ivtmp.580
	ldr	lr, [fp, #-296]	@, %sfp
	sub	r0, r4, #1	@ tmp289, width,
	and	r0, r0, r3	@ tmp291, tmp289,
	strb	r1, [lr, #0]	@ tmp233,
	strb	r9, [r5, #0]	@ tmp,* hi
	beq	.L22	@,
	cmp	r0, #0	@ tmp291,
	beq	.L97	@,
	ldr	r0, [fp, #-296]	@, %sfp
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp334,* ivtmp.580
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.580
	strb	lr, [r0, r3]	@ tmp334,* ivtmp.580
	strb	r9, [r5, r3]	@ tmp,* ivtmp.580
	mov	r3, #2	@ ivtmp.580,
	cmp	r4, r3	@ width, ivtmp.580
	beq	.L22	@,
.L97:
	ldr	r1, [fp, #-296]	@ lo, %sfp
.L23:
	ldrb	sl, [r1, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.580
	add	r2, r3, #1	@ tmp292, ivtmp.580,
	ldrb	r9, [r5, r3]	@ zero_extendqisi2	@ tmp311,* ivtmp.580
	strb	r9, [r1, r3]	@ tmp311,* ivtmp.580
	strb	sl, [r5, r3]	@ tmp,* ivtmp.580
	add	r3, r2, #1	@ ivtmp.580, tmp292,
	ldrb	r7, [r1, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.580
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ tmp314,
	strb	ip, [r1, r2]	@ tmp314,
	strb	r7, [r5, r2]	@ tmp,
	bne	.L23	@,
.L22:
	mov	r0, r8	@, mid
	mov	r1, r5	@, hi
	blx	r6	@ comp
	cmp	r0, #0	@,
	ble	.L26	@,
	cmp	r5, r8	@ hi, mid
	beq	.L26	@,
	ldrb	lr, [r8, #0]	@ zero_extendqisi2	@ tmp,* mid
	mov	r3, #1	@ ivtmp.571,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@ tmp236,* hi
	cmp	r4, r3	@ width, ivtmp.571
	sub	r0, r4, #1	@ tmp285, width,
	and	r0, r0, r3	@ tmp287, tmp285,
	strb	r1, [r8, #0]	@ tmp236,* mid
	strb	lr, [r5, #0]	@ tmp,* hi
	beq	.L26	@,
	cmp	r0, #0	@ tmp287,
	beq	.L27	@,
	ldrb	r7, [r8, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.571
	ldrb	sl, [r5, r3]	@ zero_extendqisi2	@ tmp332,* ivtmp.571
	strb	sl, [r8, r3]	@ tmp332,* ivtmp.571
	strb	r7, [r5, r3]	@ tmp,* ivtmp.571
	mov	r3, #2	@ ivtmp.571,
	cmp	r4, r3	@ width, ivtmp.571
	beq	.L26	@,
.L27:
	ldrb	sl, [r8, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.571
	add	r2, r3, #1	@ tmp288, ivtmp.571,
	ldrb	r9, [r5, r3]	@ zero_extendqisi2	@ tmp317,* ivtmp.571
	strb	r9, [r8, r3]	@ tmp317,* ivtmp.571
	strb	sl, [r5, r3]	@ tmp,* ivtmp.571
	add	r3, r2, #1	@ ivtmp.571, tmp288,
	ldrb	r7, [r8, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.571
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ tmp320,
	strb	ip, [r8, r2]	@ tmp320,
	strb	r7, [r5, r2]	@ tmp,
	bne	.L27	@,
.L26:
	ldr	sl, [fp, #-296]	@ loguy, %sfp
	mov	r9, r5	@ higuy, hi
	str	r5, [fp, #-288]	@ hi, %sfp
	cmp	r8, sl	@ mid, loguy
	ldr	r7, [fp, #-292]	@ pretmp.603, %sfp
	bls	.L28	@,
.L101:
	add	r5, sl, r4	@ ivtmp.570, loguy, width
.L29:
	cmp	r8, r5	@ mid, ivtmp.570
	mov	r0, r5	@, ivtmp.570
	mov	sl, r5	@ loguy, ivtmp.570
	mov	r1, r8	@, mid
	add	r5, r5, r4	@ ivtmp.570, ivtmp.570, width
	bls	.L28	@,
	blx	r6	@ comp
	cmp	r0, #0	@,
	ble	.L29	@,
.L30:
	add	r5, r9, r7	@ ivtmp.562, higuy, pretmp.603
.L33:
	cmp	r8, r5	@ mid, ivtmp.562
	mov	r0, r5	@, ivtmp.562
	mov	r9, r5	@ higuy, ivtmp.562
	mov	r1, r8	@, mid
	add	r5, r5, r7	@ ivtmp.562, ivtmp.562, pretmp.603
	bcs	.L32	@,
	blx	r6	@ comp
	cmp	r0, #0	@,
	bgt	.L33	@,
.L32:
	cmp	sl, r9	@ loguy, higuy
	bhi	.L34	@,
	cmp	r9, sl	@ higuy, loguy
	beq	.L35	@,
	ldrb	r5, [sl, #0]	@ zero_extendqisi2	@ tmp,* loguy
	mov	r3, #1	@ ivtmp.550,
	ldrb	lr, [r9, #0]	@ zero_extendqisi2	@ tmp239,* higuy
	cmp	r4, r3	@ width, ivtmp.550
	sub	r1, r4, #1	@ tmp281, width,
	and	r0, r1, r3	@ tmp283, tmp281,
	strb	lr, [sl, #0]	@ tmp239,* loguy
	strb	r5, [r9, #0]	@ tmp,* higuy
	beq	.L35	@,
	cmp	r0, #0	@ tmp283,
	beq	.L36	@,
	ldrb	r2, [sl, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.550
	ldrb	r1, [r9, r3]	@ zero_extendqisi2	@ tmp330,* ivtmp.550
	strb	r1, [sl, r3]	@ tmp330,* ivtmp.550
	strb	r2, [r9, r3]	@ tmp,* ivtmp.550
	mov	r3, #2	@ ivtmp.550,
	cmp	r4, r3	@ width, ivtmp.550
	beq	.L35	@,
.L36:
	ldrb	r5, [sl, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.550
	add	r2, r3, #1	@ tmp284, ivtmp.550,
	ldrb	lr, [r9, r3]	@ zero_extendqisi2	@ tmp323,* ivtmp.550
	strb	lr, [sl, r3]	@ tmp323,* ivtmp.550
	strb	r5, [r9, r3]	@ tmp,* ivtmp.550
	add	r3, r2, #1	@ ivtmp.550, tmp284,
	ldrb	ip, [sl, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.550
	ldrb	r0, [r9, r2]	@ zero_extendqisi2	@ tmp326,
	strb	r0, [sl, r2]	@ tmp326,
	strb	ip, [r9, r2]	@ tmp,
	bne	.L36	@,
.L35:
	cmp	r8, r9	@ mid, higuy
	moveq	r8, sl	@ mid, loguy
	cmp	r8, sl	@ mid, loguy
	bhi	.L101	@,
.L28:
	add	r5, sl, r4	@ ivtmp.566, loguy, width
.L31:
	ldr	r3, [fp, #-288]	@, %sfp
	mov	r0, r5	@, ivtmp.566
	mov	sl, r5	@ loguy, ivtmp.566
	mov	r1, r8	@, mid
	cmp	r3, r5	@, ivtmp.566
	add	r5, r5, r4	@ ivtmp.566, ivtmp.566, width
	bcc	.L30	@,
	blx	r6	@ comp
	cmp	r0, #0	@,
	ble	.L31	@,
	b	.L30	@
.L41:
	cmp	r5, sl	@ hi, loguy
	bls	.L44	@,
	ldr	lr, [fp, #-308]	@, %sfp
	sub	r3, fp, #44	@,,
	add	r0, lr, #1	@,,
	str	r0, [fp, #-308]	@, %sfp
	add	r2, r3, lr, asl #2	@, tmp254,,,
	str	r5, [r2, #-240]	@ hi, histk
	str	sl, [r2, #-120]	@ loguy, lostk
.L44:
	ldr	ip, [fp, #-296]	@, %sfp
	cmp	ip, r9	@, higuy.598
	movcc	r5, r9	@ hi, higuy.598
	bcc	.L85	@,
	b	.L12	@
.L46:
	ldr	r1, [fp, #-292]	@, %sfp
	str	r5, [fp, #-300]	@ hi, %sfp
	ldr	r5, [fp, #-296]	@ lo, %sfp
	add	r7, r9, r1	@ ivtmp.545, higuy.598,
	str	sl, [fp, #-288]	@ loguy, %sfp
	mov	sl, r1	@ pretmp.603,
.L40:
	cmp	r5, r7	@ lo, ivtmp.545
	mov	r0, r7	@, ivtmp.545
	mov	r9, r7	@ higuy.598, ivtmp.545
	mov	r1, r8	@, mid
	add	r7, r7, sl	@ ivtmp.545, ivtmp.545, pretmp.603
	bcs	.L89	@,
	blx	r6	@ comp
	cmp	r0, #0	@,
	beq	.L40	@,
.L89:
	ldr	sl, [fp, #-288]	@ loguy, %sfp
	ldr	r5, [fp, #-300]	@ hi, %sfp
	b	.L39	@
.L45:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	qsort, .-qsort
	.align	2
	.global	dprint_vfmw
	.type	dprint_vfmw, %function
dprint_vfmw:
	.fnstart
.LFB1352:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 1
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-16
	sub	fp, ip, #16	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #32	@ type,
	beq	.L103	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp157,
	movt	r1, #:upper16:.LANCHOR0	@ tmp157,
	mov	r2, #1	@ tmp142,
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@,, g_PrintEnable, tmp142,
	bne	.L103	@,
.L104:
	mvn	r0, #0	@ D.30732,
.L106:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L103:
	add	lr, fp, #8	@ tmp146,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp147,
	movt	r4, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r1, [fp, #4]	@, format
	mov	r2, lr	@, tmp146
	add	r0, r4, #4	@, tmp147,
	str	lr, [fp, #-20]	@ tmp146, args.__ap
	bl	vsprintf	@
	movw	ip, #1021	@ tmp150,
	mov	r1, r0	@ nTotalChar,
	sub	r0, r0, #1	@ tmp149, nTotalChar,
	cmp	r0, ip	@ tmp149, tmp150
	bhi	.L104	@,
	movw	r2, #:lower16:.LANCHOR1	@ tmp151,
	movt	r2, #:upper16:.LANCHOR1	@ tmp151,
	ldr	r3, [r2, #4]	@ g_PrintDevice.438, g_PrintDevice
	cmp	r3, #1	@ g_PrintDevice.438,
	beq	.L109	@,
	cmp	r3, #2	@ g_PrintDevice.438,
	beq	.L104	@,
	cmp	r3, #3	@ g_PrintDevice.438,
	bne	.L104	@,
	ldr	r2, [r4, #1028]	@ g_fpLog.439, g_fpLog
	cmp	r2, #0	@ g_fpLog.439,
	beq	.L104	@,
	add	r0, r4, #4	@, tmp147,
	bl	klib_fwrite	@
	b	.L106	@
.L109:
	add	r1, r4, #4	@, tmp147,
	movw	r0, #:lower16:.LC0	@,
	movt	r0, #:upper16:.LC0	@,
	bl	printk	@
	b	.L106	@
	.fnend
	.size	dprint_vfmw, .-dprint_vfmw
	.align	2
	.global	DBG_PrintTracer
	.type	DBG_PrintTracer, %function
DBG_PrintTracer:
	.fnstart
.LFB1350:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp182,
	movt	r5, #:upper16:.LANCHOR0	@ tmp182,
	mov	r6, r0	@ TracerMemroy, TracerMemroy
	ldr	r4, [r5, #1032]	@ pstThisTracer, s_pstTracer
	cmp	r4, #0	@ pstThisTracer,
	beq	.L119	@,
.L111:
	ldr	r2, [r4, #0]	@ <variable>.u32ValidFlag, <variable>.u32ValidFlag
	movw	r0, #:lower16:438975050	@ tmp153,
	movt	r0, #:upper16:438975050	@ tmp153,
	cmp	r2, r0	@ <variable>.u32ValidFlag, tmp153
	bne	.L113	@,
	ldr	r1, [r4, #4]	@ tmp156,
	movw	ip, #:lower16:1432712581	@ tmp155,
	movt	ip, #:upper16:1432712581	@ tmp155,
	cmp	r1, ip	@ tmp156, tmp155
	beq	.L120	@,
.L113:
	mov	r2, r6	@, TracerMemroy
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L120:
	ldr	lr, [r4, #8]	@ tmp158,
	movw	r3, #:lower16:253046581	@ tmp157,
	movt	r3, #:upper16:253046581	@ tmp157,
	cmp	lr, r3	@ tmp158, tmp157
	bne	.L113	@,
	ldr	r2, [r4, #12]	@ tmp160,
	movw	r0, #:lower16:1247767167	@ tmp159,
	movt	r0, #:upper16:1247767167	@ tmp159,
	cmp	r2, r0	@ tmp160, tmp159
	bne	.L113	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@, <variable>.pstTraceBaseObj
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #20]	@, <variable>.s32TraceBasePhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC7	@,
	movt	r2, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #24]	@, <variable>.s32MaxTraceNumMinus4
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC9	@,
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@, <variable>.s32CurrTraceNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC9	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r7, [r4, #24]	@ s32CurrTraceNum, <variable>.s32MaxTraceNumMinus4
	ldr	r3, [r4, #28]	@ s32CurrTraceNum.659, <variable>.s32CurrTraceNum
	cmp	r7, #0	@ s32CurrTraceNum,
	ble	.L115	@,
	mov	r8, #0	@ i,
.L117:
	cmp	r3, #0	@ s32CurrTraceNum.659,
	ldr	ip, [r4, #16]	@ <variable>.pstTraceBaseObj, <variable>.pstTraceBaseObj
	subne	r7, r3, #1	@ s32CurrTraceNum, s32CurrTraceNum.659,
	mov	r2, r8	@, i
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC12	@,
	rsb	r6, r7, r7, asl #3	@, tmp175, s32CurrTraceNum, s32CurrTraceNum,
	movt	r1, #:upper16:.LC12	@,
	add	r8, r8, #1	@ i, i,
	add	r6, ip, r6, asl #2	@, pstTraceObj, <variable>.pstTraceBaseObj, tmp175,
	bl	dprint_vfmw	@
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC13	@,
	mov	r2, r6	@, pstTraceObj
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #16]	@, <variable>.s32LineNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #20]	@ D.30699, <variable>.s32Data
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r3, r2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #24]	@, <variable>.u32Time
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #24]	@ s32CurrTraceNum.660, <variable>.s32MaxTraceNumMinus4
	mov	r3, r7	@ s32CurrTraceNum.659, s32CurrTraceNum
	cmp	r1, r8	@ s32CurrTraceNum.660, i
	mov	r7, r1	@ s32CurrTraceNum, s32CurrTraceNum.660
	bgt	.L117	@,
.L115:
	ldr	lr, [r5, #1032]	@ s_pstTracer, s_pstTracer
	cmp	lr, #0	@ s_pstTracer,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r4	@, pstThisTracer
	bl	__arm_iounmap	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L119:
	mov	r2, r4	@, pstThisTracer
	mov	r1, #1048576	@,
	bl	__arm_ioremap	@
	movw	r1, #:lower16:.LC1	@,
	mov	r2, r6	@, TracerMemroy
	movt	r1, #:upper16:.LC1	@,
	mov	r4, r0	@ pstThisTracer,
	add	r3, r0, #32	@ tmp150, pstThisTracer,
	str	r3, [r0, #16]	@ tmp150, <variable>.pstTraceBaseObj
	mov	r0, #32	@,
	mov	r3, r4	@, pstThisTracer
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pstThisTracer,
	bne	.L111	@,
	mov	r2, r6	@, TracerMemroy
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	DBG_PrintTracer, .-DBG_PrintTracer
	.align	2
	.global	DBG_GetTracerInfo
	.type	DBG_GetTracerInfo, %function
DBG_GetTracerInfo:
	.fnstart
.LFB1349:
	@ args = 4, pretend = 0, frame = 0
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ pMemPhyAddr, pMemPhyAddr
	mov	r6, r1	@ pMemLength, pMemLength
	mov	r7, r2	@ pTracePhyAddr, pTracePhyAddr
	ldr	r0, [r4, #1032]	@ s_pstTracer.423, s_pstTracer
	mov	sl, r3	@ pMaxNum, pMaxNum
	ldr	r8, [fp, #4]	@ pCurIdx, pCurIdx
	cmp	r0, #0	@ s_pstTracer.423,
	beq	.L122	@,
	bl	MEM_Vir2Phy	@
	mov	r1, #32768	@ tmp141,
	str	r0, [r5, #0]	@,* pMemPhyAddr
	str	r1, [r6, #0]	@ tmp141,* pMemLength
	ldr	r0, [r4, #1032]	@ s_pstTracer, s_pstTracer
	ldr	r3, [r0, #16]	@ <variable>.pstTraceBaseObj, <variable>.pstTraceBaseObj
	str	r3, [r7, #0]	@ <variable>.pstTraceBaseObj,* pTracePhyAddr
	ldr	ip, [r4, #1032]	@ s_pstTracer, s_pstTracer
	ldr	r2, [ip, #24]	@ <variable>.s32MaxTraceNumMinus4, <variable>.s32MaxTraceNumMinus4
	add	r1, r2, #1	@ tmp148, <variable>.s32MaxTraceNumMinus4,
	str	r1, [sl, #0]	@ tmp148,* pMaxNum
	ldr	r0, [r4, #1032]	@ s_pstTracer, s_pstTracer
	ldr	r3, [r0, #28]	@ <variable>.s32CurrTraceNum, <variable>.s32CurrTraceNum
	str	r3, [r8, #0]	@ <variable>.s32CurrTraceNum,* pCurIdx
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L122:
	str	r0, [r5, #0]	@ s_pstTracer.423,* pMemPhyAddr
	str	r0, [r1, #0]	@ s_pstTracer.423,* pMemLength
	str	r0, [r2, #0]	@ s_pstTracer.423,* pTracePhyAddr
	str	r0, [r3, #0]	@ s_pstTracer.423,* pMaxNum
	str	r0, [r8, #0]	@ s_pstTracer.423,* pCurIdx
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	DBG_GetTracerInfo, .-DBG_GetTracerInfo
	.align	2
	.global	DBG_AddTrace
	.type	DBG_AddTrace, %function
DBG_AddTrace:
	.fnstart
.LFB1348:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	mov	r6, r0	@ pFuncName, pFuncName
	mov	r7, r1	@ nLine, nLine
	mov	sl, r2	@ Data, Data
	ldr	r3, [r4, #1032]	@ s_pstTracer.419, s_pstTracer
	cmp	r3, #0	@ s_pstTracer.419,
	beq	.L129	@,
	sub	r5, fp, #40	@ tmp157,,
	ldr	r8, [r3, #28]	@ s32CurrTraceNum, <variable>.s32CurrTraceNum
	mov	r0, r5	@, tmp157
	bl	OSAL_LockIRQ	@
	ldr	ip, [r4, #1032]	@ s_pstTracer.715, s_pstTracer
	ldr	r2, [ip, #24]	@ <variable>.s32MaxTraceNumMinus4, <variable>.s32MaxTraceNumMinus4
	cmp	r8, r2	@ s32CurrTraceNum, <variable>.s32MaxTraceNumMinus4
	addlt	r2, r8, #1	@ iftmp.420, s32CurrTraceNum,
	rsb	r8, r8, r8, asl #3	@, tmp150, s32CurrTraceNum, s32CurrTraceNum,
	movge	r2, #0	@ iftmp.420,
	str	r2, [ip, #28]	@ iftmp.420, <variable>.s32CurrTraceNum
	ldr	r1, [r4, #1032]	@ s_pstTracer, s_pstTracer
	ldr	r0, [r1, #16]	@ <variable>.pstTraceBaseObj, <variable>.pstTraceBaseObj
	add	r4, r0, r8, asl #2	@, pstTraceObj, <variable>.pstTraceBaseObj, tmp150,
	str	r7, [r4, #16]	@ nLine, <variable>.s32LineNum
	str	sl, [r4, #20]	@ Data, <variable>.s32Data
	bl	OSAL_GetTimeInUs	@
	mov	r1, r6	@, pFuncName
	mov	r2, #15	@,
	str	r0, [r4, #24]	@, <variable>.u32Time
	mov	r0, r4	@, pstTraceObj
	bl	strncpy	@
	mov	r3, #0	@ tmp153,
	mov	r0, r5	@, tmp157
	strb	r3, [r4, #15]	@ tmp153, <variable>.s8FuncName
	bl	OSAL_UnLockIRQ	@
.L129:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	.fnend
	.size	DBG_AddTrace, .-DBG_AddTrace
	.align	2
	.global	DBG_DestroyTracer
	.type	DBG_DestroyTracer, %function
DBG_DestroyTracer:
	.fnstart
.LFB1347:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r4, #1032]	@ s_pstTracer.415, s_pstTracer
	cmp	r0, #0	@ s_pstTracer.415,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	bl	MEM_Vir2Phy	@
	ldr	r1, [r4, #1032]	@, s_pstTracer
	mov	r5, r0	@ PhyAddr,
	bl	MEM_ReleaseMemBlock	@
	ldr	r3, [r4, #1032]	@, s_pstTracer
	mov	r2, r5	@, PhyAddr
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp142,
	str	r3, [r4, #1032]	@ tmp142, s_pstTracer
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DBG_DestroyTracer, .-DBG_DestroyTracer
	.align	2
	.global	DBG_CreateTracer
	.type	DBG_CreateTracer, %function
DBG_CreateTracer:
	.fnstart
.LFB1346:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	ip, [r4, #1032]	@ s_pstTracer, s_pstTracer
	cmp	ip, #0	@ s_pstTracer,
	movne	r0, #0	@ ret,
	beq	.L138	@,
.L135:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L138:
	mov	r1, ip	@, s_pstTracer
	movw	r0, #:lower16:.LC18	@,
	mov	r2, #32768	@,
	movt	r0, #:upper16:.LC18	@,
	sub	r3, fp, #48	@,,
	str	ip, [sp, #0]	@ s_pstTracer,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.30566,
	mvnne	r0, #0	@ ret,
	bne	.L135	@,
	sub	r0, fp, #48
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r8, [fp, #-44]	@ temp.765, MemRecord.VirAddr
	ldr	r6, [fp, #-48]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, #32768	@,
	mov	r0, r8	@, temp.765
	str	r8, [r4, #1032]	@ temp.765, s_pstTracer
	str	r6, [r4, #1036]	@ MemRecord.PhyAddr, TracerPhyAddr
	bl	__memzero	@
	ldr	ip, [r4, #1032]	@ s_pstTracer, s_pstTracer
	movw	r6, #:lower16:613566757	@ tmp164,
	ldr	sl, [fp, #-44]	@ MemRecord.VirAddr, MemRecord.VirAddr
	movt	r6, #:upper16:613566757	@ tmp164,
	movw	lr, #:lower16:438975050	@ tmp171,
	movt	lr, #:upper16:438975050	@ tmp171,
	add	r2, sl, #32	@ tmp152, MemRecord.VirAddr,
	str	r2, [ip, #16]	@ tmp152, <variable>.pstTraceBaseObj
	ldr	r7, [r4, #1032]	@ s_pstTracer, s_pstTracer
	movw	ip, #:lower16:1432712581	@ tmp174,
	ldr	r3, [fp, #-48]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	movt	ip, #:upper16:1432712581	@ tmp174,
	movw	r2, #:lower16:253046581	@ tmp177,
	movt	r2, #:upper16:253046581	@ tmp177,
	add	r1, r3, #32	@ tmp156, MemRecord.PhyAddr,
	str	r1, [r7, #20]	@ tmp156, <variable>.s32TraceBasePhyAddr
	ldr	r0, [fp, #-40]	@ MemRecord.Length, MemRecord.Length
	movw	r3, #:lower16:1247767167	@ tmp180,
	ldr	r7, [r4, #1032]	@ s_pstTracer, s_pstTracer
	movt	r3, #:upper16:1247767167	@ tmp180,
	sub	r8, r0, #32	@ tmp159, MemRecord.Length,
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC19	@,
	mov	r8, r8, lsr #2	@ tmp162, tmp159,
	umull	sl, r6, r6, r8	@, tmp163, tmp164, tmp162
	sub	sl, r6, #4	@ tmp165, tmp163,
	str	sl, [r7, #24]	@ tmp165, <variable>.s32MaxTraceNumMinus4
	ldr	r6, [r4, #1032]	@ s_pstTracer, s_pstTracer
	str	r5, [r6, #28]	@ D.30566, <variable>.s32CurrTraceNum
	ldr	r6, [r4, #1032]	@ s_pstTracer, s_pstTracer
	str	lr, [r6, #0]	@ tmp171, <variable>.u32ValidFlag
	ldr	lr, [r4, #1032]	@ s_pstTracer, s_pstTracer
	str	ip, [lr, #4]	@ tmp174, <variable>.u32ValidFlag
	ldr	sl, [r4, #1032]	@ s_pstTracer, s_pstTracer
	str	r2, [sl, #8]	@ tmp177, <variable>.u32ValidFlag
	ldr	r2, [r4, #1032]	@ s_pstTracer, s_pstTracer
	str	r3, [r2, #12]	@ tmp180, <variable>.u32ValidFlag
	ldr	r3, [r4, #1032]	@ s_pstTracer, s_pstTracer
	ldr	r2, [fp, #-48]	@, MemRecord.PhyAddr
	ldr	ip, [r3, #24]	@ <variable>.s32MaxTraceNumMinus4, <variable>.s32MaxTraceNumMinus4
	add	r3, r2, #32	@,,
	str	ip, [sp, #0]	@ <variable>.s32MaxTraceNumMinus4,
	bl	dprint_vfmw	@
	mov	r0, r5	@ ret, D.30566
	b	.L135	@
	.fnend
	.size	DBG_CreateTracer, .-DBG_CreateTracer
	.global	s_pstTracer
	.global	TracerPhyAddr
	.global	g_fpLog
	.global	g_LogEnable
	.global	g_PrintEnable
	.global	g_PrintDevice
	.global	g_pMemPrint
	.global	g_TraceCtrl
	.global	g_TraceBsPeriod
	.global	g_TraceFramePeriod
	.global	g_TraceImgPeriod
	.global	g_LogFileName
	.global	g_TmpMsg
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_DBG_AddTrace, %object
	.size	__kstrtab_DBG_AddTrace, 13
__kstrtab_DBG_AddTrace:
	.ascii	"DBG_AddTrace\000"
	.section	___ksymtab+DBG_AddTrace,"a",%progbits
	.align	2
	.type	__ksymtab_DBG_AddTrace, %object
	.size	__ksymtab_DBG_AddTrace, 8
__ksymtab_DBG_AddTrace:
@ value:
	.word	DBG_AddTrace
@ name:
	.word	__kstrtab_DBG_AddTrace
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_TraceCtrl, %object
	.size	g_TraceCtrl, 4
g_TraceCtrl:
	.word	-1
	.type	g_PrintDevice, %object
	.size	g_PrintDevice, 4
g_PrintDevice:
	.word	1
	.type	g_TraceBsPeriod, %object
	.size	g_TraceBsPeriod, 4
g_TraceBsPeriod:
	.word	200
	.type	g_TraceImgPeriod, %object
	.size	g_TraceImgPeriod, 4
g_TraceImgPeriod:
	.word	500
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.space	1
.LC1:
	.ascii	"tracer memory '0x%x' is mapped to '%p'\012\000"
.LC2:
	.ascii	"map vir address for '%x' failed!!!\012\000"
.LC3:
	.ascii	"no valid trace info stored in '%x'!!!\012\000"
	.space	1
.LC4:
	.ascii	"====================== tracer context ============="
	.ascii	"========\012\000"
	.space	3
.LC5:
	.ascii	"%-25s :%x\012\000"
	.space	1
.LC6:
	.ascii	"pstTraceBaseObj\000"
.LC7:
	.ascii	"%-25s :%p\012\000"
	.space	1
.LC8:
	.ascii	"s32TraceBasePhyAddr\000"
.LC9:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC10:
	.ascii	"s32MaxTraceNumMinus4\000"
	.space	3
.LC11:
	.ascii	"s32CurrTraceNum\000"
.LC12:
	.ascii	"-%05d-\000"
	.space	1
.LC13:
	.ascii	"func:%-15s;\000"
.LC14:
	.ascii	" line:%5d;\000"
	.space	1
.LC15:
	.ascii	" data:0x%08x(%-10d);\000"
	.space	3
.LC16:
	.ascii	" time:%u\012\000"
	.space	2
.LC17:
	.ascii	"=============== destroy tracer: phy,vir = 0x%x,%p ="
	.ascii	"==================\012\000"
	.space	1
.LC18:
	.ascii	"VFMW_Tracer\000"
.LC19:
	.ascii	"________________ mem_phy, trace_phy,trace_max = 0x%"
	.ascii	"x, 0x%x,%d _________________\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_PrintEnable, %object
	.size	g_PrintEnable, 4
g_PrintEnable:
	.space	4
	.type	g_TmpMsg, %object
	.size	g_TmpMsg, 1024
g_TmpMsg:
	.space	1024
	.type	g_fpLog, %object
	.size	g_fpLog, 4
g_fpLog:
	.space	4
	.type	s_pstTracer, %object
	.size	s_pstTracer, 4
s_pstTracer:
	.space	4
	.type	TracerPhyAddr, %object
	.size	TracerPhyAddr, 4
TracerPhyAddr:
	.space	4
	.type	g_LogEnable, %object
	.size	g_LogEnable, 4
g_LogEnable:
	.space	4
	.type	g_pMemPrint, %object
	.size	g_pMemPrint, 4
g_pMemPrint:
	.space	4
	.type	g_TraceFramePeriod, %object
	.size	g_TraceFramePeriod, 4
g_TraceFramePeriod:
	.space	4
	.type	g_LogFileName, %object
	.size	g_LogFileName, 500
g_LogFileName:
	.space	500
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
