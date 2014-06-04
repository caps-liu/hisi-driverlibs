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
	.file	"vc1.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vc1) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o -O2 -Wall -Wundef
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
	.global	emp_print
	.type	emp_print, %function
emp_print:
	.fnstart
.LFB1349:
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 1
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	stmfd	sp!, {r3, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, fp, ip, lr}
	.setfp fp, ip, #-16
	sub	fp, ip, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r3, fp, sp, pc}
	.fnend
	.size	emp_print, .-emp_print
	.align	2
	.global	AbandonBitsLenthNoUse
	.type	AbandonBitsLenthNoUse, %function
AbandonBitsLenthNoUse:
	.fnstart
.LFB1350:
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ data,* pCode
	cmp	r3, #0	@ data,
	moveq	r2, r3	@ biteat, data
	bne	.L14	@,
.L7:
	ldrb	r3, [r0, #-1]!	@ zero_extendqisi2	@ data,
	add	r2, r2, #8	@ biteat, biteat,
	cmp	r3, #0	@ data,
	beq	.L7	@,
	add	r0, r2, #1	@ prephitmp.608, biteat,
.L8:
	tst	r3, #1	@ data,
	ldmnefd	sp, {fp, sp, pc}	@
.L10:
	mov	r3, r3, lsr #1	@ data, data,
	add	r2, r2, #1	@ biteat, biteat,
	tst	r3, #1	@ data,
	beq	.L10	@,
	add	r0, r2, #1	@ prephitmp.608, biteat,
	ldmfd	sp, {fp, sp, pc}	@
.L14:
	mov	r0, #1	@ prephitmp.608,
	mov	r2, #0	@ biteat,
	b	.L8	@
	.fnend
	.size	AbandonBitsLenthNoUse, .-AbandonBitsLenthNoUse
	.align	2
	.global	VC1DEC_Destroy
	.type	VC1DEC_Destroy, %function
VC1DEC_Destroy:
	.fnstart
.LFB1354:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1DEC_Destroy, .-VC1DEC_Destroy
	.align	2
	.global	VC1_CfgVDH
	.type	VC1_CfgVDH, %function
VC1_CfgVDH:
	.fnstart
.LFB1362:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L18	@,
	movw	r4, #7672	@ tmp138,
	ldr	r2, [r0, r4]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L21	@,
.L18:
	movw	ip, #30592	@ tmp153,
	movw	r4, #:lower16:77988	@ tmp152,
	ldr	r2, [r0, ip]	@ <variable>.CurPicMbNum, <variable>.CurPicMbNum
	movt	r4, #:upper16:77988	@ tmp152,
	sub	r5, r2, #1	@ tmp155, <variable>.CurPicMbNum,
	str	r5, [r1, r4]	@ tmp155, <variable>.basic_cfg0
.L19:
	movw	ip, #18168	@ tmp157,
	movw	r2, #:lower16:78068	@ tmp166,
	ldr	r3, [r0, ip]	@ <variable>.DDR_Stride, <variable>.DDR_Stride
	movt	r2, #:upper16:78068	@ tmp166,
	movw	ip, #:lower16:77992	@ tmp156,
	movt	ip, #:upper16:77992	@ tmp156,
	add	r4, r3, #63	@ tmp161, <variable>.DDR_Stride,
	cmp	r3, #0	@ <variable>.DDR_Stride,
	ldr	r5, [r1, r2]	@ <variable>.Compress_en, <variable>.Compress_en
	movw	r2, #:lower16:78040	@ tmp171,
	movlt	r3, r4	@ <variable>.DDR_Stride, tmp161
	movt	r2, #:upper16:78040	@ tmp171,
	mov	r4, r3, asr #6	@ tmp162, <variable>.DDR_Stride,
	and	r5, r5, #1	@ tmp167, <variable>.Compress_en,
	movw	r3, #:lower16:78044	@ tmp180,
	movt	r3, #:upper16:78044	@ tmp180,
	mov	r4, r4, asl #4	@ tmp163, tmp162,
	add	r4, r4, #536870913	@ tmp164, tmp163,
	add	r4, r4, #81920	@ tmp164, tmp164,
	orr	r4, r4, r5, asl #30	@, tmp170, tmp164, tmp167,
	str	r4, [r1, ip]	@ tmp170, <variable>.basic_cfg1
	movw	ip, #30588	@ tmp172,
	ldr	r4, [r0, ip]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	movw	ip, #1464	@ tmp197,
	add	r4, r4, #1	@ tmp173, <variable>.CurPicMbHeight,
	add	r4, r4, r4, lsr #31	@, tmp177, tmp173, tmp173,
	mov	r4, r4, asr #1	@ tmp178, tmp177,
	mov	r4, r4, asl #5	@ tmp179, tmp178,
	str	r4, [r1, r2]	@ tmp179, <variable>.ystride_1d
	movw	r2, #18148	@ tmp181,
	movw	r4, #18144	@ tmp189,
	ldr	r2, [r0, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r4, [r0, r4]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r2, r2, #1	@ tmp182, <variable>.MbHeight,
	add	r2, r2, r2, lsr #31	@, tmp186, tmp182, tmp182,
	bic	r2, r2, #1	@ tmp188, tmp186,
	mul	r2, r4, r2	@ tmp190, <variable>.MbWidth, tmp188
	movw	r4, #18200	@ tmp194,
	mov	r2, r2, asl #8	@ tmp192, tmp190,
	str	r2, [r1, r3]	@ tmp192, <variable>.uvoffset_1d
	ldr	r3, [r0, r4]	@ <variable>.RefList1.ImgObj, <variable>.RefList1.ImgObj
	movw	r2, #18184	@ tmp216,
	ldr	r4, [r0, r2]	@ <variable>.RefList0.ImgObj, <variable>.RefList0.ImgObj
	movw	r2, #18128	@ tmp206,
	ldr	r2, [r0, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	mla	r3, ip, r3, r0	@ tmp198, tmp197, <variable>.RefList1.ImgObj, pCodecInf
	mla	r0, ip, r4, r0	@ tmp220, tmp197, <variable>.RefList0.ImgObj, pCodecInf
	ldr	r2, [r2, #1140]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	add	ip, r3, #10432	@ tmp199, tmp198,
	add	r3, ip, #48	@ tmp199, tmp199,
	and	r2, r2, #3	@ tmp209, <variable>.img.is_fld_save,
	add	ip, r0, #10432	@ tmp221, tmp220,
	ldr	r3, [r3, #4]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	add	r0, ip, #48	@ tmp221, tmp221,
	mov	ip, r2, asl #4	@ tmp211, tmp209,
	and	r3, r3, #3	@ tmp202, <variable>.img.is_fld_save,
	ldr	r2, [r0, #4]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	mov	r0, #0	@ tmp229,
	strb	r0, [r1, #73]	@ tmp229, <variable>.ff_apt_en
	orr	r3, ip, r3, asl #2	@, tmp214, tmp211, tmp202,
	and	r2, r2, #3	@ tmp224, <variable>.img.is_fld_save,
	orr	r0, r3, r2	@ tmp227, tmp214, tmp224
	strb	r0, [r1, #72]	@ tmp227, <variable>.ref_pic_type
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L21:
	movw	r3, #30588	@ tmp141,
	movw	ip, #30584	@ tmp148,
	ldr	r4, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	movw	r3, #:lower16:77988	@ tmp140,
	ldr	ip, [r0, ip]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movt	r3, #:upper16:77988	@ tmp140,
	add	r2, r4, #1	@ tmp142, <variable>.CurPicMbHeight,
	add	r5, r2, r2, lsr #31	@, tmp146, tmp142, tmp142,
	mov	r4, r5, asr #1	@ tmp147, tmp146,
	mul	r2, ip, r4	@ tmp149, <variable>.CurPicMbWidth, tmp147
	sub	r5, r2, #1	@ tmp151, tmp149,
	str	r5, [r1, r3]	@ tmp151, <variable>.basic_cfg0
	b	.L19	@
	.fnend
	.size	VC1_CfgVDH, .-VC1_CfgVDH
	.align	2
	.global	VC1_Vfmw_GenerateDecPara
	.type	VC1_Vfmw_GenerateDecPara, %function
VC1_Vfmw_GenerateDecPara:
	.fnstart
.LFB1363:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_GenerateDecPara, .-VC1_Vfmw_GenerateDecPara
	.align	2
	.type	VC1_Vfmw_GenerateIntensityMap, %function
VC1_Vfmw_GenerateIntensityMap:
	.fnstart
.LFB1371:
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
	cmp	r2, #31	@ LUMSHIFT,
	subgt	r2, r2, #64	@ LUMSHIFT, LUMSHIFT,
	cmp	r1, #0	@ LUMSCALE,
	addne	r1, r1, #32	@ iScale, LUMSCALE,
	rsbeq	r2, r2, r2, asl #25	@, tmp155, LUMSHIFT, LUMSHIFT,
	mvneq	r1, #63	@ iScale,
	movne	r2, r2, asl #6	@ iShift, LUMSHIFT,
	moveq	r2, r2, asl #7	@ tmp156, tmp155,
	addeq	r2, r2, #16320	@ iShift, tmp156,
	cmp	r3, #0	@ YcFlg,
	bne	.L28	@,
	add	r2, r2, #32	@ ivtmp.759, iShift,
.L29:
	add	ip, r2, r1	@ ivtmp.759, ivtmp.759, iScale
	mov	r5, r2, asr #6	@ j.773, ivtmp.759,
	add	r4, r3, #1	@ tmp166, i,
	bic	r5, r5, r5, asr #31	@ j.777, j.773
	mov	r2, ip, asr #6	@ j.773, ivtmp.759,
	cmp	r5, #255	@ j.777,
	movge	r5, #255	@ tmp157,
	bic	r2, r2, r2, asr #31	@ j.777, j.773
	strb	r5, [r0, r3]	@ tmp157,* i
	add	r3, r4, #1	@ i, tmp166,
	cmp	r2, #255	@ j.777,
	movge	r2, #255	@ tmp172,
	cmp	r3, #256	@ i,
	strb	r2, [r0, r4]	@ tmp172,
	add	r2, ip, r1	@ ivtmp.759, ivtmp.759, iScale
	bne	.L29	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L28:
	rsb	r2, r1, r1, asl #25	@, tmp161, iScale, iScale,
	mov	r3, #0	@ i.776,
	mov	ip, r2, asl #7	@ tmp162, tmp161,
	add	r4, ip, #8192	@ ivtmp.768, tmp162,
	add	r2, r4, #32	@ ivtmp.768, ivtmp.768,
.L31:
	add	ip, r2, r1	@ ivtmp.768, ivtmp.768, iScale
	mov	r5, r2, asr #6	@ j.774, ivtmp.768,
	add	r4, r3, #1	@ tmp167, i.776,
	bic	r5, r5, r5, asr #31	@ j.778, j.774
	mov	r2, ip, asr #6	@ j.774, ivtmp.768,
	cmp	r5, #255	@ j.778,
	movge	r5, #255	@ tmp164,
	bic	r2, r2, r2, asr #31	@ j.778, j.774
	strb	r5, [r0, r3]	@ tmp164,* i.776
	add	r3, r4, #1	@ i.776, tmp167,
	cmp	r2, #255	@ j.778,
	movge	r2, #255	@ tmp177,
	cmp	r3, #256	@ i.776,
	strb	r2, [r0, r4]	@ tmp177,
	add	r2, ip, r1	@ ivtmp.768, ivtmp.768, iScale
	bne	.L31	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.global	VC1_SetCurPicResolutionInfo
	.type	VC1_SetCurPicResolutionInfo, %function
VC1_SetCurPicResolutionInfo:
	.fnstart
.LFB1375:
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
	cmp	r1, #1	@ RESPIC,
	beq	.L40	@,
	cmp	r1, #2	@ RESPIC,
	beq	.L41	@,
	cmp	r1, #0	@ RESPIC,
	beq	.L46	@,
	movw	r2, #18144	@ tmp160,
	movw	r3, #18148	@ tmp168,
	ldr	ip, [r0, r2]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r2, ip, #1	@ tmp161, <variable>.MbWidth,
	add	r3, r1, #1	@ tmp169, <variable>.MbHeight,
	add	ip, r2, r2, lsr #31	@, tmp164, tmp161, tmp161,
	add	r3, r3, r3, lsr #31	@, tmp172, tmp169, tmp169,
	mov	r2, ip, asr #1	@ prephitmp.792, tmp164,
.L45:
	movw	r1, #30584	@ tmp166,
	mov	ip, r3, asr #1	@ tmp173, tmp172,
	str	r2, [r0, r1]	@ prephitmp.792, <variable>.CurPicMbWidth
	movw	r1, #30588	@ tmp167,
	str	ip, [r0, r1]	@ tmp173, <variable>.CurPicMbHeight
.L42:
	movw	r1, #30584	@ tmp182,
	movw	r3, #30588	@ tmp177,
	ldr	ip, [r0, r1]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movw	r1, #30576	@ tmp174,
	ldr	r3, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asl #4	@ tmp175, prephitmp.792,
	str	r2, [r0, r1]	@ tmp175, <variable>.CurPicWidth
	movw	r2, #30592	@ tmp180,
	mov	r1, r3, asl #4	@ tmp179, <variable>.CurPicMbHeight,
	mul	r3, ip, r3	@ tmp185, <variable>.CurPicMbWidth, <variable>.CurPicMbHeight
	movw	ip, #30580	@ tmp176,
	str	r1, [r0, ip]	@ tmp179, <variable>.CurPicHeight
	str	r3, [r0, r2]	@ tmp185, <variable>.CurPicMbNum
	ldmfd	sp, {fp, sp, pc}	@
.L46:
	movw	r1, #18144	@ tmp136,
	movw	r3, #18148	@ tmp139,
	ldr	r2, [r0, r1]	@ prephitmp.792, <variable>.MbWidth
	movw	ip, #30584	@ tmp137,
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #30588	@ tmp138,
	str	r2, [r0, ip]	@ prephitmp.792, <variable>.CurPicMbWidth
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	b	.L42	@
.L41:
	movw	r1, #18148	@ tmp154,
	movw	r2, #18144	@ tmp151,
	ldr	r3, [r0, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r2, [r0, r2]	@ prephitmp.792, <variable>.MbWidth
	add	ip, r3, #1	@ tmp155, <variable>.MbHeight,
	add	r3, ip, ip, lsr #31	@, tmp158, tmp155, tmp155,
	b	.L45	@
.L40:
	movw	r1, #18144	@ tmp141,
	movw	r3, #18148	@ tmp149,
	ldr	r2, [r0, r1]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #30588	@ tmp148,
	add	ip, r2, #1	@ tmp142, <variable>.MbWidth,
	add	r2, ip, ip, lsr #31	@, tmp145, tmp142, tmp142,
	movw	ip, #30584	@ tmp147,
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asr #1	@ prephitmp.792, tmp145,
	str	r2, [r0, ip]	@ prephitmp.792, <variable>.CurPicMbWidth
	b	.L42	@
	.fnend
	.size	VC1_SetCurPicResolutionInfo, .-VC1_SetCurPicResolutionInfo
	.align	2
	.global	VC1_Vfmw_UserData
	.type	VC1_Vfmw_UserData, %function
VC1_Vfmw_UserData:
	.fnstart
.LFB1405:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_UserData, .-VC1_Vfmw_UserData
	.align	2
	.global	VC1_Vfmw_UpdateAdvSPS
	.type	VC1_Vfmw_UpdateAdvSPS, %function
VC1_Vfmw_UpdateAdvSPS:
	.fnstart
.LFB1407:
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
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	r0, #7518	@ tmp140,
	ldrh	r3, [r1, #238]	@ D.39203, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	mov	r5, r1	@ pSyntax, pSyntax
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_WIDTH, D.39203
	moveq	r1, #0	@ Ret,
	beq	.L51	@,
	adds	r1, r3, #15	@ tmp143, D.39203,
	movw	r2, #18144	@ tmp142,
	addmi	ip, r3, #30	@, tmp144, D.39203,
	movpl	ip, r1	@, tmp144, tmp143
	movw	r3, #18160	@ tmp147,
	mov	r1, #1	@ Ret,
	mov	r0, ip, asr #4	@ tmp146, tmp144,
	str	r0, [r4, r2]	@ tmp146, <variable>.MbWidth
	ldrh	ip, [r5, #238]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	str	ip, [r4, r3]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.DispPicWidth
.L51:
	movw	r0, #7520	@ tmp149,
	ldrh	r3, [r5, #240]	@ D.39211, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_HEIGHT, D.39211
	beq	.L52	@,
	adds	r2, r3, #15	@ tmp152, D.39211,
	movw	ip, #18148	@ tmp151,
	addmi	r1, r3, #30	@, tmp153, D.39211,
	movpl	r1, r2	@, tmp153, tmp152
	movw	lr, #18164	@ tmp156,
	mov	r3, r1, asr #4	@ tmp155, tmp153,
	str	r3, [r4, ip]	@ tmp155, <variable>.MbHeight
	ldrh	r6, [r5, #240]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	str	r6, [r4, lr]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.DispPicHeight
.L53:
	add	r1, r5, #16	@, pSyntax,
	add	r5, r5, #188	@ tmp165, pSyntax,
	mov	r2, #172	@,
	add	r0, r4, #7296	@, pCodecInf,
	bl	memcpy	@
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp167,,,,
	add	r6, r4, #7424	@ tmp164, pCodecInf,
	add	ip, r6, #44	@ tmp164, tmp164,
	mov	r4, #1	@ Ret.862,
	mov	r6, ip	@ tmp168, tmp164
	stmia	r6!, {r0, r1, r2, r3}	@ tmp168,,,,
	mov	ip, r6	@ tmp170, tmp168
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp169,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp171,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r5, {r0, r1, r2}	@ tmp171,,,
	stmia	ip, {r0, r1, r2}	@ tmp172,,,
	mov	r0, r4	@, Ret.862
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L52:
	cmp	r1, #1	@ Ret,
	movne	r4, #0	@ Ret.862,
	beq	.L53	@,
	mov	r0, r4	@, Ret.862
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_UpdateAdvSPS, .-VC1_Vfmw_UpdateAdvSPS
	.align	2
	.global	VC1_Vfmw_UpdataLastPicRNDCTRL
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL, %function
VC1_Vfmw_UpdataLastPicRNDCTRL:
	.fnstart
.LFB1410:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L58	@,
	movw	r1, #7531	@ tmp143,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ D.39371, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.39371,
	cmpne	r3, #4	@, D.39371,
	moveq	r3, #1	@ prephitmp.879,
	moveq	r2, r3	@ prephitmp.877, prephitmp.879
	beq	.L60	@,
	cmp	r3, #1	@ D.39371,
	beq	.L63	@,
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ prephitmp.877, <variable>.LastPicRNDCTRL
	mov	r3, r2	@ prephitmp.879, prephitmp.877
.L60:
	movw	ip, #7550	@ tmp154,
	strb	r2, [r0, #10]	@ prephitmp.877, <variable>.LastPicRNDCTRL
	strb	r3, [r0, ip]	@ prephitmp.879, <variable>.SMPPicSyntax.RNDCTRL
.L58:
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	ldrsb	r2, [r0, #10]	@ <variable>.LastPicRNDCTRL, <variable>.LastPicRNDCTRL
	rsbs	r2, r2, #1	@ prephitmp.877, <variable>.LastPicRNDCTRL
	movcc	r2, #0	@ prephitmp.877
	mov	r3, r2	@ prephitmp.879, prephitmp.877
	b	.L60	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL, .-VC1_Vfmw_UpdataLastPicRNDCTRL
	.align	2
	.global	VC1_Vfmw_DecPQUANT
	.type	VC1_Vfmw_DecPQUANT, %function
VC1_Vfmw_DecPQUANT:
	.fnstart
.LFB1411:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #128
	sub	sp, sp, #128	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r2, #128	@,
	mov	r4, r1	@ PqIndex, PqIndex
	mov	r5, r0	@ Quantizer, Quantizer
	movw	r1, #:lower16:.LANCHOR0	@,
	sub	r0, fp, #148	@,,
	movt	r1, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	cmp	r5, #0	@ Quantizer,
	subeq	r3, fp, #20	@,,
	addeq	r4, r3, r4, asl #2	@, tmp143,, PqIndex,
	ldreq	r4, [r4, #-128]	@ PqIndex, PQuantIdex
	mov	r0, r4	@, PqIndex
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	VC1_Vfmw_DecPQUANT, .-VC1_Vfmw_DecPQUANT
	.align	2
	.global	VC1_GetPacketState
	.type	VC1_GetPacketState, %function
VC1_GetPacketState:
	.fnstart
.LFB1416:
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
	movw	r3, #:lower16:78214	@ tmp136,
	movt	r3, #:upper16:78214	@ tmp136,
	ldrsb	r0, [r0, r3]	@ <variable>.CodecInfo.IsWaitToDec, <variable>.CodecInfo.IsWaitToDec
	cmp	r0, #1	@ <variable>.CodecInfo.IsWaitToDec,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_GetPacketState, .-VC1_GetPacketState
	.align	2
	.global	VC1_SetCodeInfo
	.type	VC1_SetCodeInfo, %function
VC1_SetCodeInfo:
	.fnstart
.LFB1415:
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
	movw	r3, #:lower16:81306	@ tmp138,
	movt	r3, #:upper16:81306	@ tmp138,
	movw	r2, #:lower16:81336	@ tmp137,
	movt	r2, #:upper16:81336	@ tmp137,
	mov	r4, r0	@ pCtx, pCtx
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	add	r0, r0, #80896	@ D.39475, pCtx,
	add	r0, r0, #444	@ D.39475, D.39475,
	str	r0, [r4, r2]	@ D.39475, <variable>.CodecInfo.pBs
	cmp	r3, #8	@ <variable>.CodecInfo.PreParseInfo.CodecVersion,
	beq	.L77	@,
	movw	ip, #:lower16:78220	@ tmp146,
	movw	r2, #:lower16:78219	@ tmp149,
	movt	ip, #:upper16:78220	@ tmp146,
	movt	r2, #:upper16:78219	@ tmp149,
	mov	lr, #0	@ tmp147,
	strb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	lr, [r4, ip]	@ tmp147, <variable>.CodecInfo.PostCresent
.L73:
	movw	r2, #:lower16:81304	@ tmp153,
	movt	r2, #:upper16:81304	@ tmp153,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L78	@,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	bl	BsInit	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L78:
	movw	r6, #:lower16:81328	@ tmp158,
	movt	r6, #:upper16:81328	@ tmp158,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	movw	r5, #:lower16:81332	@ tmp165,
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	movt	r5, #:upper16:81332	@ tmp165,
	bl	BsInit	@
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.PreParseInfo.FrmWidth
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.PreParseInfo.FrmHeight
	movw	lr, #:lower16:96352	@ tmp157,
	adds	r8, r2, #15	@ tmp159, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	movt	lr, #:upper16:96352	@ tmp157,
	addmi	r8, r2, #30	@, tmp161, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	adds	r7, r3, #15	@ tmp166, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	addmi	r7, r3, #30	@, tmp168, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	movw	ip, #:lower16:96356	@ tmp164,
	movw	r6, #:lower16:96368	@ tmp171,
	movt	ip, #:upper16:96356	@ tmp164,
	movt	r6, #:upper16:96368	@ tmp171,
	movw	r5, #:lower16:96372	@ tmp174,
	movt	r5, #:upper16:96372	@ tmp174,
	add	r0, r4, #80896	@, pCtx,
	movw	r1, #:lower16:81307	@,
	movt	r1, #:upper16:81307	@,
	str	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.DispPicWidth
	add	r1, r4, r1	@, pCtx,
	str	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.DispPicHeight
	mov	r2, #16	@,
	mov	r3, r8, asr #4	@ tmp163, tmp161,
	add	r0, r0, #472	@,,
	str	r3, [r4, lr]	@ tmp163, <variable>.CodecInfo.MbWidth
	mov	lr, r7, asr #4	@ tmp170, tmp168,
	str	lr, [r4, ip]	@ tmp170, <variable>.CodecInfo.MbHeight
	bl	memcpy	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L77:
	movw	r2, #:lower16:78220	@ tmp140,
	movw	lr, #:lower16:78219	@ tmp143,
	movt	r2, #:upper16:78220	@ tmp140,
	movt	lr, #:upper16:78219	@ tmp143,
	mov	r3, #1	@ tmp141,
	mov	ip, #6	@ tmp144,
	strb	r3, [r4, r2]	@ tmp141, <variable>.CodecInfo.PostCresent
	strb	ip, [r4, lr]	@ tmp144, <variable>.CodecInfo.CodecVersion
	b	.L73	@
	.fnend
	.size	VC1_SetCodeInfo, .-VC1_SetCodeInfo
	.align	2
	.global	VC1_ClearCurPacket
	.type	VC1_ClearCurPacket, %function
VC1_ClearCurPacket:
	.fnstart
.LFB1413:
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
	mov	r4, r1	@ pVc1Packet, pVc1Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #8]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L80	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L80:
	mov	r0, r4	@, pVc1Packet
	mov	r1, #36	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_ClearCurPacket, .-VC1_ClearCurPacket
	.align	2
	.global	VC1_ClearCurPic
	.type	VC1_ClearCurPic, %function
VC1_ClearCurPic:
	.fnstart
.LFB1414:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r7, r0	@ pCodeInfo, pCodeInfo
	mov	r6, r1	@ ChanID, ChanID
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L83	@,
	movw	r8, #18228	@ tmp171,
	ldr	r0, [r0, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r7, #18176	@ ivtmp.1020, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #60	@ ivtmp.1020, ivtmp.1020,
	b	.L87	@
.L86:
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.1020, ivtmp.1020,
	cmp	lr, r5	@ <variable>.SlcNum, i
	ble	.L90	@,
.L87:
	ldr	r1, [r4, #36]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #0]	@ <variable>.pStream2, <variable>.pStream2
	add	r5, r5, #1	@ i, i,
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L86	@,
	ldr	ip, [r4, #24]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	cmp	ip, #0	@ <variable>.Phy_addr2,
	beq	.L86	@,
	ldr	r1, [r4, #40]	@, <variable>.StreamID2
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.1020, ivtmp.1020,
	cmp	lr, r5	@ <variable>.SlcNum, i
	bgt	.L87	@,
.L90:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L83:
	add	r1, r0, #30464	@, pCodeInfo,
	mov	r0, r6	@, ChanID
	add	r1, r1, #60	@,,
	bl	VC1_ClearCurPacket	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1_ClearCurPic, .-VC1_ClearCurPic
	.align	2
	.global	VC1_Vfmw_BuildRefList
	.type	VC1_Vfmw_BuildRefList, %function
VC1_Vfmw_BuildRefList:
	.fnstart
.LFB1372:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #532
	sub	sp, sp, #532	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r5, r0, #18176	@ tmp199, pCodecInf,
	mov	r9, r0	@ pCodecInf, pCodecInf
	mov	r4, r1	@ PicType, PicType
	mov	r0, r5	@, tmp199
	mov	r1, #16	@,
	mov	r8, r3	@ IsTop, IsTop
	mov	r6, r2	@ SndFld, SndFld
	bl	__memzero	@
	add	r0, r5, #16	@, tmp199,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrsb	r3, [r9, #4]	@ D.37259, <variable>.PicStructure
	cmp	r3, #0	@ D.37259,
	cmpne	r3, #2	@, D.37259,
	bne	.L92	@,
	cmp	r4, #1	@ PicType,
	beq	.L154	@,
	cmp	r4, #2	@ PicType,
	beq	.L155	@,
.L125:
	movw	r0, #18180	@ tmp599,
	mov	ip, #0	@ tmp598,
	movw	r1, #18196	@ tmp597,
	str	ip, [r9, r0]	@ tmp598, <variable>.RefList0.ListLen
	mov	r0, #1	@ D.37407,
	str	ip, [r9, r1]	@ tmp598, <variable>.RefList1.ListLen
.L108:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L92:
	movw	r5, #7632	@ tmp389,
	ldrb	r1, [r9, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r1, #1	@ <variable>.AdvPicSyntax.TFF,
	beq	.L156	@,
	movw	r5, #7669	@ tmp399,
	ldrb	r1, [r9, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r1, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L157	@,
.L112:
	movw	lr, #18136	@ tmp406,
	ldr	r0, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r0, #1188]	@ TopRefIdx, <variable>.img.image_id
	mov	r7, r5	@ BotRefIdx, TopRefIdx
.L111:
	cmp	r4, #1	@ PicType,
	beq	.L158	@,
.L113:
	cmp	r4, #2	@ PicType,
	bne	.L125	@,
	cmp	r6, #0	@ SndFld,
	movw	lr, #18180	@ tmp519,
	movw	ip, #18196	@ tmp517,
	mov	r3, #18176	@ tmp521,
	movw	r2, #18177	@ tmp524,
	mov	r0, #0	@ tmp522,
	mov	r1, #1	@ tmp525,
	strb	r0, [r9, r3]	@ tmp522, <variable>.RefList0.FldFlag
	str	r4, [r9, lr]	@ PicType, <variable>.RefList0.ListLen
	str	r4, [r9, ip]	@ PicType, <variable>.RefList1.ListLen
	strb	r1, [r9, r2]	@ tmp525, <variable>.RefList0.FldFlag
	beq	.L126	@,
	cmp	r8, #0	@ IsTop,
	beq	.L127	@,
.L126:
	movw	r2, #18136	@ tmp534,
	ldr	r0, [r9, r2]	@ <variable>.pRef,
	ldr	r2, [r0, #1188]	@ <variable>.img.image_id, <variable>.img.image_id
.L152:
	movw	lr, #18184	@ tmp532,
	movw	r4, #18132	@ tmp543,
	str	r2, [r9, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	ip, #18193	@ tmp539,
	ldr	lr, [r9, r4]	@ <variable>.pRef, <variable>.pRef
	movw	r2, #18192	@ tmp536,
	mov	r0, #0	@ tmp537,
	mov	r1, #1	@ tmp540,
	strb	r0, [r9, r2]	@ tmp537, <variable>.RefList1.FldFlag
	movw	r3, #7756	@ tmp552,
	strb	r1, [r9, ip]	@ tmp540, <variable>.RefList1.FldFlag
	movw	r4, #18200	@ tmp544,
	ldr	r1, [lr, #1188]	@ temp.1300, <variable>.img.image_id
	movw	r2, #18128	@ tmp551,
	ldr	r3, [r9, r3]	@ D.37349, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	ip, #18204	@ tmp545,
	movw	r0, #18184	@ tmp549,
	str	r1, [r9, r4]	@ temp.1300, <variable>.RefList1.ImgObj
	cmp	r3, #1	@ D.37349,
	ldr	r4, [lr, #1188]	@ <variable>.img.image_id, <variable>.img.image_id
	ldr	lr, [r9, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r0, [r9, r0]	@ FwdRefIdx.1304, <variable>.RefList0.ImgObj
	str	r4, [r9, ip]	@ <variable>.img.image_id, <variable>.RefList1.ImgObj
	ldr	ip, [lr, #1188]	@ CurRefIdx.1307, <variable>.img.image_id
	bls	.L159	@,
.L130:
	cmp	r3, #0	@ D.37349,
	cmpne	r3, #2	@, D.37349,
	beq	.L132	@,
.L134:
	movw	r5, #1464	@ tmp563,
	mov	r8, #0	@ i.1323,
	mla	sl, r5, ip, r9	@ ivtmp.1209, tmp563, CurRefIdx.1307, pCodecInf
	mov	r3, r9	@ ivtmp.1192, pCodecInf
	mla	r7, r5, r0, r9	@ ivtmp.1190, tmp563, FwdRefIdx.1304, pCodecInf
	str	r9, [fp, #-560]	@ pCodecInf, %sfp
	mla	r6, r5, r1, r9	@ ivtmp.1200, tmp563, temp.1300, pCodecInf
	add	ip, sl, #9344	@ ivtmp.1209, ivtmp.1209,
	add	r0, r7, #9344	@ ivtmp.1190, ivtmp.1190,
	mov	r9, r8	@ i.1323, i.1323
	add	r1, r6, #9344	@ ivtmp.1200, ivtmp.1200,
.L133:
	ldrb	r6, [r0, #3]	@ zero_extendqisi2	@ tmp573, <variable>.IntensityConvertTab
	add	r2, r0, #1	@ tmp625, ivtmp.1190,
	ldr	r4, [fp, #-560]	@, %sfp
	add	lr, r3, #1	@ tmp626, ivtmp.1192,
	add	r5, r1, #1	@ tmp627, ivtmp.1200,
	strb	r6, [r3, #13]	@ tmp573, <variable>.IntensityConvertTab
	add	r8, r4, r9	@ D.40385,, i.1323
	ldrb	r7, [r0, #259]	@ zero_extendqisi2	@, <variable>.IntensityConvertTab
	add	r9, r9, #1	@ tmp624, i.1323,
	ldr	sl, [fp, #-560]	@, %sfp
	add	r4, ip, #1	@ tmp628, ivtmp.1209,
	str	r7, [fp, #-568]	@, %sfp
	add	r7, sl, r9	@ D.40385,, tmp624
	ldr	r6, [fp, #-568]	@, %sfp
	add	r9, r9, #1	@ i.1323, tmp624,
	cmp	r9, #256	@ i.1323,
	strb	r6, [r3, #269]	@, <variable>.IntensityConvertTab
	ldrb	sl, [r0, #515]	@ zero_extendqisi2	@ tmp577, <variable>.IntensityConvertTab
	strb	sl, [r3, #525]	@ tmp577, <variable>.IntensityConvertTab
	ldrb	r6, [r0, #771]	@ zero_extendqisi2	@ tmp579, <variable>.IntensityConvertTab
	add	r0, r2, #1	@ ivtmp.1190, tmp625,
	strb	r6, [r3, #781]	@ tmp579, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #3]	@ zero_extendqisi2	@ tmp581, <variable>.IntensityConvertTab
	strb	sl, [r3, #1037]	@ tmp581, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #259]	@ zero_extendqisi2	@ tmp583, <variable>.IntensityConvertTab
	strb	r6, [r3, #1293]	@ tmp583, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #515]	@ zero_extendqisi2	@ tmp585, <variable>.IntensityConvertTab
	strb	sl, [r3, #1549]	@ tmp585, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #771]	@ zero_extendqisi2	@ tmp587, <variable>.IntensityConvertTab
	add	r1, r5, #1	@ ivtmp.1200, tmp627,
	strb	r6, [r3, #1805]	@ tmp587, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1192, tmp626,
	ldrb	sl, [ip, #3]	@ zero_extendqisi2	@ tmp589, <variable>.IntensityConvertTab
	strb	sl, [r8, #2061]	@ tmp589, <variable>.IntensityConvertTab
	ldrb	r6, [ip, #259]	@ zero_extendqisi2	@ tmp591, <variable>.IntensityConvertTab
	strb	r6, [r8, #2317]	@ tmp591, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #515]	@ zero_extendqisi2	@ tmp593, <variable>.IntensityConvertTab
	strb	sl, [r8, #2573]	@ tmp593, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #771]	@ zero_extendqisi2	@ tmp595, <variable>.IntensityConvertTab
	add	ip, r4, #1	@ ivtmp.1209, tmp628,
	strb	sl, [r8, #2829]	@ tmp595, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #3]	@ zero_extendqisi2	@ tmp706, <variable>.IntensityConvertTab
	strb	r6, [lr, #13]	@ tmp706, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #259]	@ zero_extendqisi2	@ tmp707, <variable>.IntensityConvertTab
	strb	r8, [lr, #269]	@ tmp707, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #515]	@ zero_extendqisi2	@ tmp708, <variable>.IntensityConvertTab
	strb	r8, [lr, #525]	@ tmp708, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #771]	@ zero_extendqisi2	@ tmp709, <variable>.IntensityConvertTab
	strb	r6, [lr, #781]	@ tmp709, <variable>.IntensityConvertTab
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ tmp710, <variable>.IntensityConvertTab
	strb	r2, [lr, #1037]	@ tmp710, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #259]	@ zero_extendqisi2	@ tmp711, <variable>.IntensityConvertTab
	strb	r6, [lr, #1293]	@ tmp711, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #515]	@ zero_extendqisi2	@ tmp712, <variable>.IntensityConvertTab
	strb	r6, [lr, #1549]	@ tmp712, <variable>.IntensityConvertTab
	ldrb	r5, [r5, #771]	@ zero_extendqisi2	@ tmp713, <variable>.IntensityConvertTab
	strb	r5, [lr, #1805]	@ tmp713, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp715, <variable>.IntensityConvertTab
	strb	r2, [r7, #2061]	@ tmp715, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #259]	@ zero_extendqisi2	@ tmp716, <variable>.IntensityConvertTab
	strb	lr, [r7, #2317]	@ tmp716, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #515]	@ zero_extendqisi2	@ tmp717, <variable>.IntensityConvertTab
	strb	r2, [r7, #2573]	@ tmp717, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #771]	@ zero_extendqisi2	@ tmp718, <variable>.IntensityConvertTab
	strb	lr, [r7, #2829]	@ tmp718, <variable>.IntensityConvertTab
	bne	.L133	@,
	mov	r0, #1	@ D.37407,
	b	.L108	@
.L157:
	movw	r7, #18136	@ tmp402,
	movw	ip, #18132	@ tmp404,
	ldr	r2, [r9, r7]	@ <variable>.pRef, <variable>.pRef
	cmp	r4, #1	@ PicType,
	ldr	r3, [r9, ip]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r2, #1188]	@ TopRefIdx, <variable>.img.image_id
	ldr	r7, [r3, #1188]	@ BotRefIdx, <variable>.img.image_id
	bne	.L113	@,
.L158:
	movw	r0, #7660	@ tmp408,
	movw	r3, #18177	@ tmp416,
	cmp	r6, #0	@ SndFld,
	ldrb	ip, [r9, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	strb	r4, [r9, r3]	@ PicType, <variable>.RefList0.FldFlag
	movw	r2, #18180	@ tmp407,
	mov	r4, #18176	@ tmp413,
	movw	r6, #18196	@ tmp411,
	mov	r3, #0	@ tmp412,
	add	r1, ip, #1	@ tmp410, <variable>.AdvPicSyntax.NUMREF,
	strb	r3, [r9, r4]	@ tmp412, <variable>.RefList0.FldFlag
	str	r1, [r9, r2]	@ tmp410, <variable>.RefList0.ListLen
	str	r3, [r9, r6]	@ tmp412, <variable>.RefList1.ListLen
	beq	.L114	@,
	cmp	r8, r3	@ IsTop,
	beq	.L115	@,
.L114:
	movw	r4, #18136	@ tmp426,
	ldr	r6, [r9, r4]	@ <variable>.pRef,
	ldr	r2, [r6, #1188]	@ <variable>.img.image_id, <variable>.img.image_id
.L151:
	movw	r6, #18136	@ tmp430,
	movw	r3, #7756	@ tmp435,
	ldr	r8, [r9, r6]	@ <variable>.pRef, <variable>.pRef
	movw	r4, #18184	@ tmp424,
	ldr	r3, [r9, r3]	@ prephitmp.1061, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	lr, #18128	@ tmp434,
	str	r2, [r9, r4]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	r0, #18184	@ tmp432,
	ldr	ip, [r8, #1188]	@ <variable>.img.image_id, <variable>.img.image_id
	cmp	r3, #1	@ prephitmp.1061,
	ldr	r2, [r9, lr]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #18188	@ tmp428,
	ldr	r8, [r9, r0]	@ FwdRefIdx, <variable>.RefList0.ImgObj
	str	ip, [r9, r1]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	ldr	r6, [r2, #1188]	@ CurRefIdx, <variable>.img.image_id
	bls	.L160	@,
.L118:
	rsbs	r2, r3, #1	@ D.37364, prephitmp.1061
	movcc	r2, #0	@ D.37364
	cmp	r3, #0	@ prephitmp.1061,
	cmpne	r3, #2	@, prephitmp.1061,
	bne	.L120	@,
	movw	r3, #7642	@ tmp466,
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L161	@,
.L120:
	movw	r0, #1464	@ tmp493,
	add	r3, r9, #780	@ ivtmp.1158, pCodecInf,
	mla	lr, r0, r6, r9	@ tmp500, tmp493, CurRefIdx, pCodecInf
	add	r3, r3, #1	@ ivtmp.1158, ivtmp.1158,
	mla	r4, r0, r8, r9	@ tmp495, tmp493, FwdRefIdx, pCodecInf
	mov	r0, #0	@ i.1290,
	add	ip, lr, #9344	@ ivtmp.1159, tmp500,
	add	r1, ip, #3	@ ivtmp.1159, ivtmp.1159,
	add	r2, r4, #9344	@ ivtmp.1149, tmp495,
	add	r2, r2, #3	@ ivtmp.1149, ivtmp.1149,
.L124:
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp501, <variable>.IntensityConvertTab
	add	ip, r3, #1	@ tmp618, ivtmp.1158,
	add	r0, r0, #2	@ i.1290, i.1290,
	cmp	r0, #256	@ i.1290,
	strb	r4, [r3, #-768]	@ tmp501, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #256]	@ zero_extendqisi2	@ tmp503, <variable>.IntensityConvertTab
	strb	lr, [r3, #-512]	@ tmp503, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp505, <variable>.IntensityConvertTab
	strb	r4, [r3, #-256]	@ tmp505, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #768]	@ zero_extendqisi2	@ tmp507, <variable>.IntensityConvertTab
	strb	lr, [r3, #0]	@ tmp507, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp509, <variable>.IntensityConvertTab
	strb	r4, [r3, #1280]	@ tmp509, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #256]	@ zero_extendqisi2	@ tmp511, <variable>.IntensityConvertTab
	strb	lr, [r3, #1536]	@ tmp511, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #512]	@ zero_extendqisi2	@ tmp513, <variable>.IntensityConvertTab
	strb	r4, [r3, #1792]	@ tmp513, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #768]	@ zero_extendqisi2	@ tmp515, <variable>.IntensityConvertTab
	strb	lr, [r3, #2048]	@ tmp515, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp693, <variable>.IntensityConvertTab
	strb	r4, [r3, #-767]	@ tmp693, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #257]	@ zero_extendqisi2	@ tmp694, <variable>.IntensityConvertTab
	strb	lr, [r3, #-511]	@ tmp694, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp695, <variable>.IntensityConvertTab
	strb	r4, [ip, #-256]	@ tmp695, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #769]	@ zero_extendqisi2	@ tmp696, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1149, ivtmp.1149,
	strb	lr, [r3, #1]	@ tmp696, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ tmp697, <variable>.IntensityConvertTab
	strb	r4, [r3, #1281]	@ tmp697, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #257]	@ zero_extendqisi2	@ tmp698, <variable>.IntensityConvertTab
	strb	lr, [r3, #1537]	@ tmp698, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #513]	@ zero_extendqisi2	@ tmp699, <variable>.IntensityConvertTab
	strb	r4, [r3, #1793]	@ tmp699, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #769]	@ zero_extendqisi2	@ tmp700, <variable>.IntensityConvertTab
	add	r1, r1, #2	@ ivtmp.1159, ivtmp.1159,
	strb	r4, [r3, #2049]	@ tmp700, <variable>.IntensityConvertTab
	add	r3, ip, #1	@ ivtmp.1158, tmp618,
	bne	.L124	@,
	mov	r0, #1	@ D.37407,
	b	.L108	@
.L154:
	movw	lr, #18136	@ tmp219,
	ldrb	r5, [r9, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	ldr	r2, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	movw	ip, #18180	@ tmp211,
	mov	r6, #18176	@ tmp215,
	movw	r1, #18196	@ tmp213,
	str	r4, [r9, ip]	@ PicType, <variable>.RefList0.ListLen
	mov	r4, #0	@ tmp214,
	strb	r4, [r9, r6]	@ tmp214, <variable>.RefList0.FldFlag
	cmp	r5, r4	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r4, [r9, r1]	@ tmp214, <variable>.RefList1.ListLen
	movw	r0, #18184	@ tmp220,
	ldr	r4, [r2, #1188]	@ D.37269, <variable>.img.image_id
	str	r4, [r9, r0]	@ D.37269, <variable>.RefList0.ImgObj
	beq	.L94	@,
	movw	r5, #7672	@ tmp227,
	movw	r2, #7644	@ tmp224,
	ldr	r1, [r9, r5]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	movw	r0, #7645	@ tmp225,
	movw	r3, #7642	@ tmp226,
	ldrb	r5, [r9, r2]	@ zero_extendqisi2	@ LUMSCALE.1219, <variable>.AdvPicSyntax.LUMSCALE
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	ldrb	r6, [r9, r0]	@ zero_extendqisi2	@ LUMSHIFT.1220, <variable>.AdvPicSyntax.LUMSHIFT
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.AdvPicSyntax.MVMODE
	beq	.L162	@,
.L95:
	cmp	r3, #4	@ MVMODE,
	beq	.L96	@,
.L99:
	movw	lr, #1464	@ tmp235,
	mov	r2, r9	@ ivtmp.1088, pCodecInf
	mla	ip, lr, r4, r9	@ tmp237, tmp235, D.37269, pCodecInf
	mov	r0, #0	@ i.1225,
	add	r1, ip, #9344	@ ivtmp.1085, tmp237,
	add	r3, r1, #3	@ ivtmp.1085, ivtmp.1085,
.L97:
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp269, <variable>.IntensityConvertTab
	add	lr, r2, #1	@ tmp609, ivtmp.1088,
	add	r0, r0, #2	@ i.1225, i.1225,
	cmp	r0, #256	@ i.1225,
	strb	r1, [r2, #13]	@ tmp269, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #256]	@ zero_extendqisi2	@ tmp271, <variable>.IntensityConvertTab
	strb	ip, [r2, #269]	@ tmp271, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #512]	@ zero_extendqisi2	@ tmp273, <variable>.IntensityConvertTab
	strb	r1, [r2, #525]	@ tmp273, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #768]	@ zero_extendqisi2	@ tmp275, <variable>.IntensityConvertTab
	strb	ip, [r2, #781]	@ tmp275, <variable>.IntensityConvertTab
	add	r2, lr, #1	@ ivtmp.1088, tmp609,
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ tmp651, <variable>.IntensityConvertTab
	strb	r1, [lr, #13]	@ tmp651, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #257]	@ zero_extendqisi2	@ tmp652, <variable>.IntensityConvertTab
	strb	ip, [lr, #269]	@ tmp652, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #513]	@ zero_extendqisi2	@ tmp653, <variable>.IntensityConvertTab
	strb	r1, [lr, #525]	@ tmp653, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #769]	@ zero_extendqisi2	@ tmp654, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1085, ivtmp.1085,
	strb	ip, [lr, #781]	@ tmp654, <variable>.IntensityConvertTab
	bne	.L97	@,
	mov	r0, #1	@ D.37407,
	b	.L108	@
.L156:
	movw	r2, #7669	@ tmp391,
	ldrb	r3, [r9, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r3, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L112	@,
	movw	lr, #18132	@ tmp396,
	movw	r0, #18136	@ tmp398,
	ldr	r7, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	ip, [r9, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r7, #1188]	@ TopRefIdx, <variable>.img.image_id
	ldr	r7, [ip, #1188]	@ BotRefIdx, <variable>.img.image_id
	b	.L111	@
.L155:
	movw	lr, #18136	@ tmp285,
	movw	ip, #18132	@ tmp291,
	ldr	r5, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	movw	r0, #18180	@ tmp279,
	movw	r3, #18196	@ tmp277,
	mov	r4, #18176	@ tmp281,
	mov	r2, #1	@ tmp278,
	ldr	lr, [r9, ip]	@ <variable>.pRef, <variable>.pRef
	str	r2, [r9, r0]	@ tmp278, <variable>.RefList0.ListLen
	mov	r1, #0	@ tmp282,
	str	r2, [r9, r3]	@ tmp278, <variable>.RefList1.ListLen
	movw	ip, #18192	@ tmp287,
	strb	r1, [r9, r4]	@ tmp282, <variable>.RefList0.FldFlag
	movw	r0, #18184	@ tmp286,
	ldr	r4, [r5, #1188]	@ temp.1228, <variable>.img.image_id
	movw	r3, #18200	@ tmp292,
	ldrb	r5, [r9, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	strb	r1, [r9, ip]	@ tmp282, <variable>.RefList1.FldFlag
	cmp	r5, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r4, [r9, r0]	@ temp.1228, <variable>.RefList0.ImgObj
	ldr	r5, [lr, #1188]	@ D.37304, <variable>.img.image_id
	str	r5, [r9, r3]	@ D.37304, <variable>.RefList1.ImgObj
	movwne	r3, #7644	@ tmp296,
	movweq	r3, #7541	@ tmp299,
	ldrneb	r6, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.AdvPicSyntax.LUMSCALE
	ldreqb	r6, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.SMPPicSyntax.LUMSCALE
	movwne	r3, #7645	@ tmp297,
	movweq	r3, #7542	@ tmp300,
	ldrneb	r7, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT, <variable>.AdvPicSyntax.LUMSHIFT
	ldreqb	r7, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT, <variable>.SMPPicSyntax.LUMSHIFT
	movwne	r3, #7642	@ tmp298,
	movweq	r3, #7539	@ tmp301,
	ldrb	r2, [r9, r3]	@ zero_extendqisi2	@ MVMODE.1217,
	cmp	r2, #4	@ MVMODE.1217,
	beq	.L104	@,
.L107:
	movw	lr, #1464	@ tmp303,
	mov	r1, r9	@ ivtmp.1113, pCodecInf
	mla	r3, lr, r4, r9	@ tmp305, tmp303, temp.1228, pCodecInf
	mov	ip, #0	@ i.1253,
	mla	r0, lr, r5, r9	@ tmp309, tmp303, D.37304, ivtmp.1113
	add	r4, r3, #9344	@ ivtmp.1110, tmp305,
	add	r3, r4, #3	@ ivtmp.1110, ivtmp.1110,
	add	r2, r0, #9344	@ ivtmp.1120, tmp309,
	add	r2, r2, #3	@ ivtmp.1120, ivtmp.1120,
.L105:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp369, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ tmp614, ivtmp.1113,
	add	ip, ip, #2	@ i.1253, i.1253,
	cmp	ip, #256	@ i.1253,
	strb	r4, [r1, #13]	@ tmp369, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp371, <variable>.IntensityConvertTab
	strb	lr, [r1, #269]	@ tmp371, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #512]	@ zero_extendqisi2	@ tmp373, <variable>.IntensityConvertTab
	strb	r4, [r1, #525]	@ tmp373, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #768]	@ zero_extendqisi2	@ tmp375, <variable>.IntensityConvertTab
	strb	lr, [r1, #781]	@ tmp375, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp377, <variable>.IntensityConvertTab
	strb	r4, [r1, #1037]	@ tmp377, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #256]	@ zero_extendqisi2	@ tmp379, <variable>.IntensityConvertTab
	strb	lr, [r1, #1293]	@ tmp379, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp381, <variable>.IntensityConvertTab
	strb	r4, [r1, #1549]	@ tmp381, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #768]	@ zero_extendqisi2	@ tmp383, <variable>.IntensityConvertTab
	strb	lr, [r1, #1805]	@ tmp383, <variable>.IntensityConvertTab
	add	r1, r0, #1	@ ivtmp.1113, tmp614,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp659, <variable>.IntensityConvertTab
	strb	r4, [r0, #13]	@ tmp659, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #257]	@ zero_extendqisi2	@ tmp660, <variable>.IntensityConvertTab
	strb	lr, [r0, #269]	@ tmp660, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #513]	@ zero_extendqisi2	@ tmp661, <variable>.IntensityConvertTab
	strb	r4, [r0, #525]	@ tmp661, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #769]	@ zero_extendqisi2	@ tmp662, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1110, ivtmp.1110,
	strb	lr, [r0, #781]	@ tmp662, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp663, <variable>.IntensityConvertTab
	strb	r4, [r0, #1037]	@ tmp663, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #257]	@ zero_extendqisi2	@ tmp664, <variable>.IntensityConvertTab
	strb	lr, [r0, #1293]	@ tmp664, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp665, <variable>.IntensityConvertTab
	strb	r4, [r0, #1549]	@ tmp665, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #769]	@ zero_extendqisi2	@ tmp666, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1120, ivtmp.1120,
	strb	r4, [r0, #1805]	@ tmp666, <variable>.IntensityConvertTab
	bne	.L105	@,
	mov	r0, #1	@ D.37407,
	b	.L108	@
.L94:
	movw	r6, #7541	@ tmp231,
	movw	r0, #7542	@ tmp232,
	movw	r3, #7539	@ tmp233,
	ldrb	r5, [r9, r6]	@ zero_extendqisi2	@ LUMSCALE.1219, <variable>.SMPPicSyntax.LUMSCALE
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.SMPPicSyntax.MVMODE
	ldrb	r6, [r9, r0]	@ zero_extendqisi2	@ LUMSHIFT.1220, <variable>.SMPPicSyntax.LUMSHIFT
	b	.L95	@
.L132:
	movw	r2, #7642	@ tmp571,
	ldrb	r3, [r9, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L134	@,
	mov	r0, #0	@ D.37407,
	b	.L108	@
.L115:
	movw	lr, #18128	@ tmp422,
	ldr	r8, [r9, lr]	@ <variable>.pCurFrm,
	ldr	r2, [r8, #1188]	@ iftmp.467, <variable>.img.image_id
	b	.L151	@
.L127:
	movw	r1, #18128	@ tmp530,
	ldr	r4, [r9, r1]	@ <variable>.pCurFrm,
	ldr	r2, [r4, #1188]	@ iftmp.473, <variable>.img.image_id
	b	.L152	@
.L160:
	movw	ip, #7642	@ tmp436,
	ldrb	r2, [r9, ip]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L118	@,
	movw	r3, #7644	@ tmp438,
	add	lr, r3, #1	@ tmp439, tmp439,
	ldrb	sl, [r9, r3]	@ zero_extendqisi2	@ temp.1279, <variable>.AdvPicSyntax.LUMSCALE
	sub	r0, fp, #300	@,,
	ldrb	r4, [r9, lr]	@ zero_extendqisi2	@ temp.1280, <variable>.AdvPicSyntax.LUMSHIFT
	mov	r3, #0	@,
	mov	r1, sl	@, temp.1279
	mov	r2, r4	@, temp.1280
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, sl	@, temp.1279
	mov	r2, r4	@, temp.1280
	sub	r0, fp, #556	@,,
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r0, #1464	@ tmp443,
	mla	r1, r0, r5, r9	@ tmp445, tmp443, TopRefIdx, pCodecInf
	mov	r2, #0	@ i.1281,
	add	sl, r1, #9344	@ tmp445, tmp445,
	add	r3, sl, #3	@ ivtmp.1181, tmp445,
.L119:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp446, <variable>.IntensityConvertTab
	sub	r4, fp, #44	@,,
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp452, <variable>.IntensityConvertTab
	sub	r0, fp, #44	@,,
	add	r5, r4, ip	@ tmp448,, tmp446
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp669, <variable>.IntensityConvertTab
	add	ip, r0, lr	@ tmp454,, tmp452
	ldrb	r1, [r3, #257]	@ zero_extendqisi2	@ tmp673, <variable>.IntensityConvertTab
	ldrb	r4, [r5, #-256]	@ zero_extendqisi2	@ tmp450, LUTY
	sub	r5, fp, #44	@,,
	add	lr, r5, sl	@ tmp670,, tmp669
	add	r1, r5, r1	@ tmp675, tmp10, tmp673
	add	r2, r2, #2	@ i.1281, i.1281,
	mov	sl, r5	@,
	strb	r4, [r3, #0]	@ tmp450, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i.1281,
	ldrb	r4, [ip, #-512]	@ zero_extendqisi2	@ tmp456, LUTUV
	strb	r4, [r3, #256]	@ tmp456, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-256]	@ zero_extendqisi2	@ tmp672, LUTY
	strb	r0, [r3, #1]	@ tmp672, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #-512]	@ zero_extendqisi2	@ tmp677, LUTUV
	strb	ip, [r3, #257]	@ tmp677, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1181, ivtmp.1181,
	bne	.L119	@,
	movw	r2, #7756	@ tmp458,
	ldr	r3, [r9, r2]	@ prephitmp.1061, <variable>.AdvPicSyntax.INTCOMPFIELD
	b	.L118	@
.L159:
	movw	lr, #7642	@ tmp553,
	ldrb	r2, [r9, lr]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L130	@,
	mov	r0, #0	@ D.37407,
	b	.L108	@
.L162:
	movw	lr, #7748	@ tmp229,
	ldr	ip, [r9, lr]	@ <variable>.AdvPicSyntax.INTCOMP, <variable>.AdvPicSyntax.INTCOMP
	cmp	ip, #1	@ <variable>.AdvPicSyntax.INTCOMP,
	bne	.L95	@,
.L96:
	movw	sl, #1464	@ tmp242,
	sub	r0, fp, #300	@,,
	mla	r8, sl, r4, r9	@ tmp244, tmp242, D.37269, pCodecInf
	mov	r1, r5	@, LUMSCALE.1219
	mov	r2, r6	@, LUMSHIFT.1220
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT.1220
	mov	r3, #1	@,
	mov	r1, r5	@, LUMSCALE.1219
	sub	r0, fp, #556	@,,
	add	r7, r8, #9344	@ ivtmp.1100, tmp244,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	add	r3, r7, #3	@ ivtmp.1100, ivtmp.1100,
	mov	r2, #0	@ i,
.L98:
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ tmp245, <variable>.IntensityConvertTab
	sub	r1, fp, #44	@,,
	ldrb	ip, [r3, #256]	@ zero_extendqisi2	@ tmp251, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ i, i,
	add	sl, r1, r5	@ tmp247,, tmp245
	mov	lr, r1	@,
	add	r1, r1, ip	@ tmp253, tmp14, tmp251
	ldrb	r7, [r3, #512]	@ zero_extendqisi2	@ tmp257, <variable>.IntensityConvertTab
	ldrb	r0, [sl, #-256]	@ zero_extendqisi2	@ tmp249, LUTY
	mov	sl, lr	@,
	add	r7, lr, r7	@ tmp259, tmp10, tmp257
	ldrb	r6, [r3, #768]	@ zero_extendqisi2	@ tmp263, <variable>.IntensityConvertTab
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ tmp631, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i,
	strb	r0, [r3, #0]	@ tmp249, <variable>.IntensityConvertTab
	add	r6, lr, r6	@ tmp265, tmp8, tmp263
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2	@ tmp255, LUTUV
	add	r5, sl, r5	@ tmp632, tmp12, tmp631
	ldrb	lr, [r3, #257]	@ zero_extendqisi2	@ tmp635, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp640, <variable>.IntensityConvertTab
	strb	r8, [r3, #256]	@ tmp255, <variable>.IntensityConvertTab
	add	ip, sl, lr	@ tmp637, tmp1, tmp635
	ldrb	r7, [r7, #-256]	@ zero_extendqisi2	@ tmp261, LUTY
	add	lr, sl, r0	@ tmp641, tmp8, tmp640
	ldrb	r1, [r3, #769]	@ zero_extendqisi2	@ tmp644, <variable>.IntensityConvertTab
	mov	r8, sl	@,
	strb	r7, [r3, #512]	@ tmp261, <variable>.IntensityConvertTab
	add	r1, sl, r1	@ tmp645,, tmp644
	ldrb	r6, [r6, #-512]	@ zero_extendqisi2	@ tmp267, LUTUV
	strb	r6, [r3, #768]	@ tmp267, <variable>.IntensityConvertTab
	ldrb	r5, [r5, #-256]	@ zero_extendqisi2	@ tmp634, LUTY
	strb	r5, [r3, #1]	@ tmp634, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-512]	@ zero_extendqisi2	@ tmp639, LUTUV
	strb	ip, [r3, #257]	@ tmp639, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-256]	@ zero_extendqisi2	@ tmp643, LUTY
	strb	ip, [r3, #513]	@ tmp643, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-512]	@ zero_extendqisi2	@ tmp647, LUTUV
	strb	r0, [r3, #769]	@ tmp647, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1100, ivtmp.1100,
	bne	.L98	@,
	b	.L99	@
.L161:
	cmp	r2, #0	@ D.37364,
	sub	r0, fp, #300	@,,
	movwne	r3, #7760	@ tmp468,
	movweq	r3, #7644	@ tmp472,
	ldrneb	r5, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE.1324, <variable>.AdvPicSyntax.LUMSCALE2
	addne	r3, r3, #4	@ tmp470, tmp470,
	ldreqb	r5, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE.1324, <variable>.AdvPicSyntax.LUMSCALE
	addeq	r3, r3, #1	@ tmp473, tmp473,
	ldrb	sl, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT.1218,
	mov	r3, #0	@,
	mov	r1, r5	@, LUMSCALE.1324
	mov	r2, sl	@, LUMSHIFT.1218
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r5	@, LUMSCALE.1324
	mov	r2, sl	@, LUMSHIFT.1218
	sub	r0, fp, #556	@,,
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r1, #1464	@ tmp478,
	mla	r7, r1, r7, r9	@ ivtmp.1174, tmp478, BotRefIdx, pCodecInf
	mov	r2, #0	@ i.1285,
	add	r7, r7, #9344	@ ivtmp.1174, ivtmp.1174,
.L123:
	ldrb	r5, [r7, #515]	@ zero_extendqisi2	@ tmp480, <variable>.IntensityConvertTab
	sub	ip, fp, #44	@,,
	ldrb	r1, [r7, #771]	@ zero_extendqisi2	@ tmp486, <variable>.IntensityConvertTab
	add	r4, r7, #1	@ tmp621, ivtmp.1174,
	add	r3, ip, r5	@ tmp482,, tmp480
	add	r2, r2, #2	@ i.1285, i.1285,
	add	lr, ip, r1	@ tmp488, tmp5, tmp486
	cmp	r2, #256	@ i.1285,
	ldrb	r0, [r3, #-256]	@ zero_extendqisi2	@ tmp484, LUTY
	mov	r5, ip	@,
	strb	r0, [r7, #515]	@ tmp484, <variable>.IntensityConvertTab
	ldrb	sl, [lr, #-512]	@ zero_extendqisi2	@ tmp490, LUTUV
	strb	sl, [r7, #771]	@ tmp490, <variable>.IntensityConvertTab
	add	r7, r4, #1	@ ivtmp.1174, tmp621,
	ldrb	r3, [r4, #515]	@ zero_extendqisi2	@ tmp680, <variable>.IntensityConvertTab
	mov	sl, ip	@, tmp5
	ldrb	r1, [r4, #771]	@ zero_extendqisi2	@ tmp684, <variable>.IntensityConvertTab
	add	lr, ip, r3	@ tmp681, tmp10, tmp680
	add	r3, ip, r1	@ tmp686,, tmp684
	ldrb	r0, [lr, #-256]	@ zero_extendqisi2	@ tmp683, LUTY
	strb	r0, [r4, #515]	@ tmp683, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #-512]	@ zero_extendqisi2	@ tmp688, LUTUV
	strb	lr, [r4, #771]	@ tmp688, <variable>.IntensityConvertTab
	bne	.L123	@,
	b	.L120	@
.L104:
	mov	r1, r6	@, LUMSCALE
	mov	r2, r7	@, LUMSHIFT
	sub	r0, fp, #300	@,,
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r6	@, LUMSCALE
	mov	r2, r7	@, LUMSHIFT
	mov	r3, #1	@,
	sub	r0, fp, #556	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	ip, #1464	@ tmp314,
	mla	sl, ip, r5, r9	@ tmp320, tmp314, D.37304, pCodecInf
	mov	r1, #0	@ i.1244,
	mla	r8, ip, r4, r9	@ tmp316, tmp314, temp.1228, pCodecInf
	add	r7, sl, #9344	@ ivtmp.1139, tmp320,
	add	r2, r7, #3	@ ivtmp.1139, ivtmp.1139,
	add	r6, r8, #9344	@ ivtmp.1134, tmp316,
	add	r3, r6, #3	@ ivtmp.1134, ivtmp.1134,
.L106:
	ldrb	r6, [r3, #0]	@ zero_extendqisi2	@ tmp321, <variable>.IntensityConvertTab
	sub	r7, fp, #44	@,,
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp327, <variable>.IntensityConvertTab
	sub	ip, fp, #44	@,,
	add	r8, r7, r6	@ tmp323,, tmp321
	ldrb	sl, [r3, #512]	@ zero_extendqisi2	@ tmp333, <variable>.IntensityConvertTab
	add	r6, ip, lr	@ tmp329,, tmp327
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp339, <variable>.IntensityConvertTab
	ldrb	r7, [r8, #-256]	@ zero_extendqisi2	@ tmp325, LUTY
	sub	r8, fp, #44	@,,
	add	ip, r8, sl	@ tmp335,, tmp333
	add	r0, r8, r0	@ tmp341, tmp10, tmp339
	add	r1, r1, #1	@ i.1244, i.1244,
	mov	sl, r8	@,
	strb	r7, [r3, #0]	@ tmp325, <variable>.IntensityConvertTab
	cmp	r1, #256	@ i.1244,
	ldrb	lr, [r6, #-512]	@ zero_extendqisi2	@ tmp331, LUTUV
	strb	lr, [r3, #256]	@ tmp331, <variable>.IntensityConvertTab
	ldrb	r6, [ip, #-256]	@ zero_extendqisi2	@ tmp337, LUTY
	strb	r6, [r3, #512]	@ tmp337, <variable>.IntensityConvertTab
	ldrb	r7, [r0, #-512]	@ zero_extendqisi2	@ tmp343, LUTUV
	strb	r7, [r3, #768]	@ tmp343, <variable>.IntensityConvertTab
	add	r3, r3, #1	@ ivtmp.1134, ivtmp.1134,
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ tmp345, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #256]	@ zero_extendqisi2	@ tmp351, <variable>.IntensityConvertTab
	add	r7, r8, r0	@ tmp347, tmp14, tmp345
	ldrb	lr, [r2, #512]	@ zero_extendqisi2	@ tmp357, <variable>.IntensityConvertTab
	add	r6, r8, r6	@ tmp353, tmp12, tmp351
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp363, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-256]	@ zero_extendqisi2	@ tmp349, LUTY
	add	ip, r8, lr	@ tmp359,, tmp357
	add	lr, r8, r0	@ tmp365, tmp10, tmp363
	strb	r7, [r2, #0]	@ tmp349, <variable>.IntensityConvertTab
	ldrb	r6, [r6, #-512]	@ zero_extendqisi2	@ tmp355, LUTUV
	strb	r6, [r2, #256]	@ tmp355, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-256]	@ zero_extendqisi2	@ tmp361, LUTY
	strb	ip, [r2, #512]	@ tmp361, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-512]	@ zero_extendqisi2	@ tmp367, LUTUV
	strb	r0, [r2, #768]	@ tmp367, <variable>.IntensityConvertTab
	add	r2, r2, #1	@ ivtmp.1139, ivtmp.1139,
	bne	.L106	@,
	b	.L107	@
	.fnend
	.size	VC1_Vfmw_BuildRefList, .-VC1_Vfmw_BuildRefList
	.align	2
	.global	VC1_ReceivePacket
	.type	VC1_ReceivePacket, %function
VC1_ReceivePacket:
	.fnstart
.LFB1412:
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
	subs	r4, r1, #0	@ pPacket, pPacket
	beq	.L169	@,
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:108744	@ tmp140,
	movt	r3, #:upper16:108744	@ tmp140,
	movw	lr, #:lower16:108732	@ tmp139,
	movt	lr, #:upper16:108732	@ tmp139,
	movw	ip, #:lower16:108752	@ tmp144,
	str	r2, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:108752	@ tmp144,
	ldr	r5, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:108740	@ tmp146,
	movt	r2, #:upper16:108740	@ tmp146,
	movw	r3, #:lower16:108760	@ tmp149,
	movt	r3, #:upper16:108760	@ tmp149,
	add	r1, r0, #108544	@ pstPacket, pCtx,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	add	r1, r1, #188	@ pstPacket, pstPacket,
	ldr	lr, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	r2, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r2, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L166	@,
	ldr	r5, [r4, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:108748	@ tmp152,
	movt	r3, #:upper16:108748	@ tmp152,
	movw	lr, #:lower16:108736	@ tmp154,
	movt	lr, #:upper16:108736	@ tmp154,
	movw	ip, #:lower16:108756	@ tmp156,
	str	r5, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:108756	@ tmp156,
	ldr	r5, [r4, #64]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:108741	@ tmp158,
	movt	r2, #:upper16:108741	@ tmp158,
	movw	r3, #:lower16:108764	@ tmp161,
	movt	r3, #:upper16:108764	@ tmp161,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	ldr	lr, [r4, #76]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	lr, [r4, #80]	@ <variable>.StreamID, <variable>.StreamID
	str	lr, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L170	@,
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.39404,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L170:
	movw	r2, #:lower16:109232	@ tmp164,
	movt	r2, #:upper16:109232	@ tmp164,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	VC1_ClearCurPacket	@
	ldrb	r2, [r4, #69]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39404,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L166:
	movw	r5, #:lower16:108748	@ tmp168,
	movw	lr, #:lower16:108736	@ tmp170,
	movt	r5, #:upper16:108748	@ tmp168,
	movt	lr, #:upper16:108736	@ tmp170,
	movw	ip, #:lower16:108756	@ tmp172,
	movw	r2, #:lower16:108741	@ tmp174,
	movt	ip, #:upper16:108756	@ tmp172,
	movt	r2, #:upper16:108741	@ tmp174,
	movw	r4, #:lower16:108764	@ tmp177,
	movt	r4, #:upper16:108764	@ tmp177,
	mov	r3, #0	@ tmp169,
	str	r3, [r0, r5]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	str	r3, [r0, r4]	@ tmp169, <variable>.CodecInfo.stCurPacket.StreamID
	str	r3, [r0, lr]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsVirAddr
	str	r3, [r0, ip]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsLength
	strb	r3, [r0, r2]	@ tmp169, <variable>.CodecInfo.stCurPacket.IsLastSeg
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.39404,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L169:
	mov	r0, r4	@, pPacket
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39404, pPacket
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_ReceivePacket, .-VC1_ReceivePacket
	.align	2
	.global	VC1_DecNormDiff6Tile
	.type	VC1_DecNormDiff6Tile, %function
VC1_DecNormDiff6Tile:
	.fnstart
.LFB1383:
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
	ldr	r9, [r1, #0]	@ i6.1376,* pi6
	mov	sl, r1	@ pi6, pi6
	mov	r5, r0	@ pBs, pBs
	mov	r6, #0	@ Invert,
.L172:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.37698,
	mov	r0, r5	@, pBs
	bne	.L185	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L186	@,
	bne	.L176	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.37707,
	beq	.L177	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L172	@,
.L184:
	str	r9, [sl, #0]	@ i6.1376,* pi6
	mov	r0, r7	@ D.37712, D.37698
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L185:
	mov	r4, #0	@ i6,
.L174:
	cmp	r6, #0	@ Invert,
	mov	r0, #1	@ D.37712,
	eorne	r4, r4, #63	@ i6, i6,
	str	r4, [sl, #0]	@ i6,* pi6
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L186:
	sub	r4, r4, #2	@ tmp146, iCode,
	mov	r3, #1	@ tmp147,
	mov	r4, r3, asl r4	@ i6, tmp147,
	b	.L174	@
.L176:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode.1378,
	beq	.L184	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp153,
	movt	lr, #:upper16:.LANCHOR0	@ tmp153,
	add	ip, lr, r0, asl #2	@, tmp156, tmp153, iCode.1378,
	ldr	r4, [ip, #256]	@ i6, a2On4Off
	b	.L174	@
.L177:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp148,
	movt	r2, #:upper16:.LANCHOR0	@ tmp148,
	add	r1, r2, r0, asl #2	@, tmp151, tmp148, i6,
	mov	r4, r0	@ i6,
	ldr	r3, [r1, #128]	@ iCode.1377, aCount
	cmp	r3, #2	@ iCode.1377,
	orreq	r4, r0, #32	@ i6, i6,
	beq	.L174	@,
	cmp	r3, #3	@ iCode.1377,
	strne	r4, [sl, #0]	@ i6,* pi6
	movne	r0, r8	@ D.37712, D.37707
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	b	.L174	@
	.fnend
	.size	VC1_DecNormDiff6Tile, .-VC1_DecNormDiff6Tile
	.align	2
	.global	VC1_VopDQuant
	.type	VC1_VopDQuant, %function
VC1_VopDQuant:
	.fnstart
.LFB1382:
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
	cmp	r1, #2	@ DQUANT,
	mov	r4, r2	@ PQUANT, PQUANT
	mov	r5, r3	@ pVopDquant, pVopDquant
	mov	r7, r0	@ pBs, pBs
	beq	.L201	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.37639,
	strb	r6, [r5, #0]	@ D.37639, <variable>.DQUANTFRM
	cmp	r6, #1	@ D.37639,
	beq	.L202	@,
.L191:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L201:
	mov	r3, #1	@ tmp157,
	mov	r1, #3	@,
	strb	r3, [r5, #0]	@ tmp157, <variable>.DQUANTFRM
	strb	r3, [r5, #3]	@ tmp157, <variable>.UseAltQp
	bl	BsGet	@
	uxtb	r0, r0	@ D.37627,
	strb	r0, [r5, #4]	@ D.37627, <variable>.PQDIFF
	cmp	r0, #7	@ D.37627,
	addne	r4, r4, #1	@ tmp164, PQUANT,
	addne	r0, r0, r4	@ tmp166, D.37627, tmp164
	strneb	r0, [r5, #8]	@ tmp166, <variable>.ALTPQUANT
	beq	.L203	@,
.L190:
	mov	r2, #1	@ tmp168,
	mov	r0, #1	@,
	str	r2, [r5, #12]	@ tmp168, <variable>.QuantMode
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L202:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37644,
	strb	r1, [r5, #1]	@ D.37644, <variable>.DQPROFILE
	cmp	r1, #0	@ D.37644,
	streq	r6, [r5, #12]	@ D.37639, <variable>.QuantMode
	beq	.L193	@,
	cmp	r1, #2	@ D.37644,
	beq	.L204	@,
	cmp	r1, #1	@ D.37644,
	beq	.L205	@,
	cmp	r1, #3	@ D.37644,
	movne	r3, #0	@ tmp177,
	strne	r3, [r5, #12]	@ tmp177, <variable>.QuantMode
	beq	.L206	@,
.L193:
	ldr	r0, [r5, #0]	@ tmp180,* pVopDquant
	bic	ip, r0, #-16777216	@ tmp178, tmp180,
	bic	lr, ip, #255	@ tmp178, tmp178,
	cmp	lr, #768	@ tmp178,
	beq	.L191	@,
	mov	r1, #1	@ tmp181,
	mov	r0, r7	@, pBs
	strb	r1, [r5, #3]	@ tmp181, <variable>.UseAltQp
	mov	r1, #3	@,
	bl	BsGet	@
	uxtb	r3, r0	@ D.37682,
	strb	r3, [r5, #4]	@ D.37682, <variable>.PQDIFF
	cmp	r3, #7	@ D.37682,
	addne	r4, r4, #1	@ tmp186, PQUANT,
	addne	r3, r3, r4	@ tmp188, D.37682, tmp186
	strneb	r3, [r5, #8]	@ tmp188, <variable>.ALTPQUANT
	bne	.L191	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.37686,
	strb	r2, [r5, #8]	@ D.37686, <variable>.ALTPQUANT
	strb	r2, [r5, #5]	@ D.37686, <variable>.ABSPQ
	b	.L191	@
.L206:
	mov	r1, r6	@, D.37639
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.37670,
	strb	r2, [r5, #2]	@ D.37670, <variable>.DQBILEVEL
	cmp	r2, #0	@ D.37670,
	movne	r2, #10	@ iftmp.512,
	moveq	r2, #11	@ iftmp.512,
	str	r2, [r5, #12]	@ iftmp.512, <variable>.QuantMode
	b	.L193	@
.L203:
	mov	r1, #5	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37632,
	strb	r1, [r5, #8]	@ D.37632, <variable>.ALTPQUANT
	strb	r1, [r5, #5]	@ D.37632, <variable>.ABSPQ
	b	.L190	@
.L204:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37652,
	strb	r0, [r5, #6]	@ D.37652, <variable>.DQSBEDGE
	add	ip, r0, #6	@ tmp173, D.37652,
	str	ip, [r5, #12]	@ tmp173, <variable>.QuantMode
	b	.L193	@
.L205:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37661,
	strb	r1, [r5, #7]	@ D.37661, <variable>.DQDBEDGE
	add	r3, r1, #2	@ tmp175, D.37661,
	str	r3, [r5, #12]	@ tmp175, <variable>.QuantMode
	b	.L193	@
	.fnend
	.size	VC1_VopDQuant, .-VC1_VopDQuant
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
.LFB1352:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	lr, r1, asl #3	@ tmp174, ByteLen,
	sub	r4, fp, #56	@ tmp248,,
	mov	r5, r2	@ pVc1Info, pVc1Info
	mov	r1, r0	@ pBitBuf, pBitBuf
	mov	r2, lr	@, tmp174
	mov	r0, r4	@, tmp248
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.35831,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	ip, r0, asl #16	@ tmp179,,
	mov	r0, r4	@, tmp248
	add	r2, ip, r6, asl #8	@, data.1429, tmp179, D.35831,
	add	r6, r2, r7	@ data.1430, data.1429, data
	bl	BsGet	@
	mov	r1, #8	@,
	add	r0, r6, r0, asl #24	@, tmp182, data.1430,,
	str	r0, [r5, #24]	@ tmp182, <variable>.FrmWidth
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data.1432,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.35838,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r3, r0, asl #16	@ tmp187,,
	mov	r0, r4	@, tmp248
	add	r6, r3, r6, asl #8	@, data.1433, tmp187, D.35838,
	bl	BsGet	@
	ldr	r3, [r5, #24]	@ D.35844, <variable>.FrmWidth
	add	r6, r6, r7	@ data.1434, data.1433, data.1432
	cmp	r3, #5632	@ D.35844,
	add	r0, r6, r0, asl #24	@, data.1435, data.1434,,
	str	r0, [r5, #28]	@ data.1435, <variable>.FrmHeight
	bgt	.L220	@,
	cmp	r0, #4224	@ data.1435,
	bgt	.L221	@,
	cmp	r3, #31	@ D.35844,
	ble	.L222	@,
	cmp	r0, #31	@ data.1435,
	ble	.L223	@,
	mov	r1, #2	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	uxtb	r1, r0	@ D.35857,
	strb	r1, [r5, #3]	@ D.35857, <variable>.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ D.35857,
	bhi	.L224	@,
	mov	r0, r4	@, tmp248
	mov	r1, #2	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.35861,
	bne	.L225	@,
	mov	r1, #3	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #4]	@, <variable>.SMPSeqSyntax.FRMRTQ
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #5]	@, <variable>.SMPSeqSyntax.BITRTQ
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #6]	@, <variable>.SMPSeqSyntax.LOOPFILTER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	subs	r7, r0, #0	@ D.35870,
	bne	.L226	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #7]	@, <variable>.SMPSeqSyntax.MULTIRES
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #8]	@, <variable>.SMPSeqSyntax.B16BITTRANSFORM
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #9]	@, <variable>.SMPSeqSyntax.FASTUVMC
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #10]	@, <variable>.SMPSeqSyntax.EXTENDED_MV
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.SMPSeqSyntax.DQUANT
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.SMPSeqSyntax.VSTRANSFORM
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L227	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.SMPSeqSyntax.OVERLAP
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.SMPSeqSyntax.SYNCMARKER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ <variable>.SMPSeqSyntax.PROFILE,
	strb	r0, [r5, #15]	@, <variable>.SMPSeqSyntax.RANGERED
	mov	r0, r4	@, tmp248
	streqb	r3, [r5, #15]	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #16]	@, <variable>.SMPSeqSyntax.MAXBFRAMES
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.SMPSeqSyntax.FINTERPFLAG
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r0, r4	@, tmp248
	mov	r1, #32	@,
	bl	BsGet	@
	cmp	r0, #0	@ data.1443
	bne	.L228	@,
.L209:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L228:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35848,
	b	.L209	@
.L224:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #259	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L223:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #256	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L225:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #262	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L226:
	mov	r0, r6	@, D.35861
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #269	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L227:
	mov	r0, r7	@, D.35870
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #280	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L220:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #253	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L221:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #254	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
.L222:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #255	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35848,
	b	.L209	@
	.fnend
	.size	Vc1SMPSeqHdr, .-Vc1SMPSeqHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvEntptHdr
	.type	VC1_Vfmw_ParseAdvEntptHdr, %function
VC1_Vfmw_ParseAdvEntptHdr:
	.fnstart
.LFB1389:
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
	mov	r1, #60	@,
	mov	r7, r0	@ pBs, pBs
	add	r0, r2, #188	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r7	@, pBs
	bl	BsPos	@
	mov	r1, #1	@,
	str	r0, [r4, #244]	@, <variable>.AdvEntSyntax.HdrLen
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #188]	@, <variable>.AdvEntSyntax.BROKEN_LINK
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #189]	@, <variable>.AdvEntSyntax.CLOSED_ENTRY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #190]	@, <variable>.AdvEntSyntax.PANSCAN_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #191]	@, <variable>.AdvEntSyntax.REFDIST_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #192]	@, <variable>.AdvEntSyntax.LOOPFILTER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #193]	@, <variable>.AdvEntSyntax.FASTUVMC
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #194]	@, <variable>.AdvEntSyntax.EXTENDED_MV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #195]	@, <variable>.AdvEntSyntax.DQUANT
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #196]	@, <variable>.AdvEntSyntax.VSTRANSFORM
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #197]	@, <variable>.AdvEntSyntax.OVERLAP
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG,
	strb	r0, [r4, #198]	@, <variable>.AdvEntSyntax.QUANTIZER
	beq	.L242	@,
.L230:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.38212,
	strb	r2, [r4, #199]	@ D.38212, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.38212,
	beq	.L243	@,
.L232:
	ldrh	r2, [r4, #238]	@ D.38226, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r4, #172]	@ D.38227, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	cmp	r2, r3	@ D.38226, D.38227
	bhi	.L233	@,
	cmp	r2, #15	@ D.38226,
	bls	.L233	@,
.L234:
	ldrh	r2, [r4, #240]	@ D.38231, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r4, #174]	@ D.38232, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	cmp	r2, r3	@ D.38231, D.38232
	bhi	.L235	@,
	cmp	r2, #15	@ D.38231,
	bls	.L235	@,
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L244	@,
.L237:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.38240,
	strb	r0, [r4, #201]	@ D.38240, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.38240,
	beq	.L245	@,
.L238:
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38247,
	strb	r1, [r4, #203]	@ D.38247, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.38247,
	beq	.L246	@,
.L239:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #244]	@ <variable>.AdvEntSyntax.HdrLen, <variable>.AdvEntSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp198, <variable>.AdvEntSyntax.HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ tmp198, <variable>.AdvEntSyntax.HdrLen
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L235:
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	strh	r3, [r4, #240]	@ movhi	@ D.38232, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	bne	.L237	@,
.L244:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #200]	@, <variable>.AdvEntSyntax.EXTENDED_DMV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.38240,
	strb	r0, [r4, #201]	@ D.38240, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.38240,
	bne	.L238	@,
.L245:
	mov	r1, #3	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #202]	@, <variable>.AdvEntSyntax.RANGE_MAPY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38247,
	strb	r1, [r4, #203]	@ D.38247, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.38247,
	bne	.L239	@,
.L246:
	mov	r0, r7	@, pBs
	mov	r1, #3	@,
	bl	BsGet	@
	strb	r0, [r4, #204]	@, <variable>.AdvEntSyntax.RANGE_MAPUV
	b	.L239	@
.L233:
	strh	r3, [r4, #238]	@ movhi	@ D.38227, <variable>.AdvEntSyntax.CODED_WIDTH
	b	.L234	@
.L242:
	ldrb	r0, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	beq	.L230	@,
	mov	r6, r4	@ ivtmp.1471, pSyntax
	mov	r5, #0	@ i,
.L231:
	mov	r1, #8	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strb	r0, [r6, #205]	@, <variable>.AdvEntSyntax.HRD_FULLNESS
	add	r6, r6, #1	@ ivtmp.1471, ivtmp.1471,
	bgt	.L231	@,
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.38212,
	strb	r2, [r4, #199]	@ D.38212, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.38212,
	bne	.L232	@,
.L243:
	mov	r1, #12	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	add	ip, r0, #1	@ tmp185,,
	mov	r0, r7	@, pBs
	mov	r2, ip, asl #1	@ tmp187, tmp185,
	strh	r2, [r4, #238]	@ movhi	@ tmp187, <variable>.AdvEntSyntax.CODED_WIDTH
	bl	BsGet	@
	add	r3, r0, #1	@ tmp188,,
	mov	ip, r3, asl #1	@ tmp190, tmp188,
	strh	ip, [r4, #240]	@ movhi	@ tmp190, <variable>.AdvEntSyntax.CODED_HEIGHT
	b	.L232	@
	.fnend
	.size	VC1_Vfmw_ParseAdvEntptHdr, .-VC1_Vfmw_ParseAdvEntptHdr
	.align	2
	.global	VC1_RecordSlcStream
	.type	VC1_RecordSlcStream, %function
VC1_RecordSlcStream:
	.fnstart
.LFB1406:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r7, #18228	@ tmp147,
	ldr	r6, [r0, r7]	@ D.39131, <variable>.SlcNum
	mov	r4, r0	@ pCodecInf, pCodecInf
	ldr	r3, [r0, #3128]	@ pBs, <variable>.pBs
	movw	r9, #18232	@ tmp156,
	str	r1, [fp, #-48]	@ pSyntax, %sfp
	mov	r7, r6, asl #1	@ tmp399, D.39131,
	add	r5, r7, r6	@ tmp151, tmp399, D.39131
	add	ip, r5, #1	@ tmp172, tmp151,
	add	r5, r0, r5, asl #4	@, tmp153, pCodecInf, tmp151,
	add	ip, r0, ip, asl #4	@, tmp175, pCodecInf, tmp172,
	movw	r0, #18240	@ tmp148,
	strb	r6, [r5, r0]	@ D.39131, <variable>.SlcNo
	add	r1, ip, #18176	@ tmp176, tmp175,
	ldr	r0, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #56	@ tmp176, tmp176,
	add	r8, r5, #18176	@ tmp154, tmp153,
	add	sl, r5, #18176	@ tmp162, tmp153,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp166, <variable>.TotalPos,
	add	r8, r8, #64	@ tmp154, tmp154,
	add	sl, sl, #56	@ tmp162, tmp162,
	movlt	r0, lr	@ <variable>.TotalPos, tmp166
	add	r0, r2, r0, asr #3	@, tmp168, pCurBsRealStart, <variable>.TotalPos,
	str	r0, [r5, r9]	@ tmp168, <variable>.pStream
	ldr	r2, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, r2, #7	@ tmp178, <variable>.TotalPos,
	str	lr, [ip, r9]	@ tmp178, <variable>.BitOffset
	ldr	r2, [r3, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	ip, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, ip, r2, asl #3	@, tmp190, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp190, <variable>.Len
	bl	MEM_Vir2Phy	@
	movw	ip, #30552	@ tmp213,
	movw	r2, #30528	@ tmp215,
	add	r3, r5, #18176	@ tmp212, tmp153,
	add	r3, r3, #96	@ tmp212, tmp212,
	str	r0, [r8, #4]	@, <variable>.Phy_addr
	movw	r0, #18272	@ tmp206,
	ldr	r1, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r1, [r5, r0]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r2, [r4, r2]	@ D.39151, <variable>.stCurPacket.BsVirAddr
	cmp	r2, #0	@ D.39151,
	beq	.L248	@,
	movw	r1, #30540	@ tmp216,
	ldr	r0, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	r0, #0	@ <variable>.stCurPacket.BsPhyAddr,
	bne	.L258	@,
.L248:
	add	r2, r7, r6	@ tmp264, tmp399, D.39131
	mov	r3, #0	@ tmp268,
	add	r2, r4, r2, asl #4	@, tmp266, pCodecInf, tmp264,
	add	ip, r2, #18176	@ tmp299, tmp266,
	add	r5, ip, #56	@ tmp267, tmp267,
	add	r0, ip, #88	@ tmp275, tmp275,
	add	r1, ip, #80	@ tmp291, tmp291,
	add	ip, ip, #96	@ tmp299, tmp299,
	str	r3, [r5, #4]	@ tmp268, <variable>.pStream2
	movw	r5, #18264	@ tmp269,
	str	r3, [ip, #4]	@ tmp268, <variable>.StreamID2
	str	r3, [r2, r5]	@ tmp268, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp268, <variable>.Len2
	str	r3, [r1, #4]	@ tmp268, <variable>.Phy_addr2
.L249:
	movw	r3, #18144	@ tmp310,
	movw	r1, #18148	@ tmp309,
	ldr	r0, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.39169, <variable>.MbHeight
	ldrb	r5, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r0, r3	@ tmp311, <variable>.MbWidth, D.39169
	cmp	r5, #0	@ <variable>.Is2ndFld,
	sub	ip, ip, #1	@ totalMbMin1, tmp311,
	beq	.L252	@,
	ldr	r5, [fp, #-48]	@, %sfp
	add	r2, r7, r6	@ tmp317, tmp399, D.39131
	add	r3, r3, #1	@ tmp321, D.39169,
	add	r0, r5, r2, asl #2	@, tmp319,, tmp317,
	add	r2, r4, r2, asl #4	@, tmp332, pCodecInf, tmp317,
	add	r3, r3, r3, lsr #31	@, tmp324, tmp321, tmp321,
	ldr	r5, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r5, r3, asr #1	@ D.39179, <variable>.SLICE_ADDR, tmp324,
	movw	r5, #18256	@ tmp327,
	cmp	r3, #0	@ D.39179,
	str	r3, [r2, r5]	@ D.39179, <variable>.SlcEndMbn
	ble	.L253	@,
	cmp	ip, r3	@ totalMbMin1, D.39179
	bcc	.L259	@,
.L253:
	add	r6, r7, r6	@ tmp370, tmp399, D.39131
	add	r0, r6, #1	@ tmp371, tmp370,
	add	r3, r4, r0, asl #4	@, tmp374, pCodecInf, tmp371,
	add	r1, r3, #18176	@ tmp375, tmp374,
	add	r2, r1, #56	@ tmp375, tmp375,
	ldr	ip, [r2, #4]	@ <variable>.Len, <variable>.Len
	cmp	ip, #0	@ <variable>.Len,
	ble	.L255	@,
	add	r6, r4, r6, asl #4	@, tmp382, pCodecInf, tmp370,
	add	r1, r6, #18176	@ tmp383, tmp382,
	add	r2, r1, #56	@ tmp383, tmp383,
	ldr	ip, [r2, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	ip, #0	@ <variable>.pStream2,
	beq	.L256	@,
	add	r6, r6, #18176	@ tmp391, tmp382,
	add	r6, r6, #88	@ tmp391, tmp391,
	ldr	r3, [r6, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L255	@,
.L256:
	movw	r1, #18228	@ tmp394,
	mov	r0, #1	@ D.39187,
	ldr	r2, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	ip, r2, r0	@ tmp397, <variable>.SlcNum,
	str	ip, [r4, r1]	@ tmp397, <variable>.SlcNum
.L254:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L252:
	add	r3, r7, r6	@ tmp348, tmp399, D.39131
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #18256	@ tmp352,
	add	r2, r0, r3, asl #2	@, tmp350,, tmp348,
	add	r0, r4, r3, asl #4	@, tmp357, pCodecInf, tmp348,
	ldr	r3, [r2, #528]	@ temp.1507, <variable>.SLICE_ADDR
	cmp	ip, r3	@ totalMbMin1, temp.1507
	str	r3, [r0, r1]	@ temp.1507, <variable>.SlcEndMbn
	bcs	.L253	@,
	ldr	r2, [r2, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [sp, #0]	@ totalMbMin1,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39187, <variable>.Is2ndFld
	b	.L254	@
.L258:
	movw	r0, #18264	@ tmp225,
	mov	ip, #0	@ tmp232,
	str	ip, [r5, r0]	@ tmp232, <variable>.BitOffset2
	movw	r0, #30548	@ tmp240,
	str	r2, [sl, #4]	@ D.39151, <variable>.pStream2
	add	r2, r5, #18176	@ tmp231, tmp153,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r2, r2, #88	@ tmp231, tmp231,
	add	r5, r5, #18176	@ tmp249, tmp153,
	add	r5, r5, #80	@ tmp249, tmp249,
	mov	r0, ip, asl #3	@ tmp242, <variable>.stCurPacket.BsLength,
	str	r0, [r2, #4]	@ tmp242, <variable>.Len2
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #30556	@ tmp259,
	str	ip, [r5, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r2, [r3, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
	b	.L249	@
.L259:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #1	@,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39187,
	b	.L254	@
.L255:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39187,
	b	.L254	@
	.fnend
	.size	VC1_RecordSlcStream, .-VC1_RecordSlcStream
	.align	2
	.global	VC1_Vfmw_next_start_code
	.type	VC1_Vfmw_next_start_code, %function
VC1_Vfmw_next_start_code:
	.fnstart
.LFB1404:
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
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp142, D.39107,
	cmp	r0, #0	@ D.39107,
	movlt	r0, r3	@ D.39107, tmp142
	mov	r3, r0, asr #3	@ tmp143, D.39107,
	sub	r6, r3, #3	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L261	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp149, tmp143,
	bl	BsShow	@
	cmp	r0, #1	@ D.39109,
	mov	r3, r0	@ D.39109,
	beq	.L275	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L261	@,
	cmp	r7, #0	@ tmp149,
	beq	.L264	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.39109,
	mov	r3, r0	@ D.39109,
	beq	.L275	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L264	@,
	b	.L261	@
.L262:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.39109,
	cmp	r3, #1	@ D.39109,
	mov	r0, r4	@, pBs
	beq	.L275	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L261	@,
.L264:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.39109,
	cmp	r3, #1	@ D.39109,
	mov	r0, r4	@, pBs
	bne	.L262	@,
.L275:
	mov	r0, r3	@ D.39112, D.39109
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L261:
	mov	r0, #0	@ D.39112,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_next_start_code, .-VC1_Vfmw_next_start_code
	.align	2
	.global	VC1_DecIntCompField
	.type	VC1_DecIntCompField, %function
VC1_DecIntCompField:
	.fnstart
.LFB1397:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, .L278	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	sub	ip, fp, #52	@ tmp138,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	lr, ip	@ tmp151, tmp138
	stmia	lr!, {r0, r1, r2, r3}	@ tmp151,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp150,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-32]	@ Code, <variable>.Code
	ldr	r1, [r3, #-28]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L279:
	.align	2
.L278:
	.word	.LANCHOR0+316
	.fnend
	.size	VC1_DecIntCompField, .-VC1_DecIntCompField
	.align	2
	.global	VC1_DecRefdist
	.type	VC1_DecRefdist, %function
VC1_DecRefdist:
	.fnstart
.LFB1396:
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
	mov	r1, #5	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #23	@ Code,
	bgt	.L281	@,
	mov	r4, r0, asr #3	@ Code.1585, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L281:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	ble	.L284	@,
	cmp	r0, #29	@ Code,
	movle	r4, #4	@ Len,
	movgt	r4, #5	@ Len,
.L284:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, Len
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecRefdist, .-VC1_DecRefdist
	.align	2
	.global	VC1_DecAdvPtype
	.type	VC1_DecAdvPtype, %function
VC1_DecAdvPtype:
	.fnstart
.LFB1391:
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
	mov	r1, #4	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code.1609,
	movle	r1, #1	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L289	@,
	cmp	r0, #11	@ Code.1609,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L289	@,
	cmp	r0, #13	@ Code.1609,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L289	@,
	cmp	r0, #14	@ Code.1609,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
.L289:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecAdvPtype, .-VC1_DecAdvPtype
	.align	2
	.global	VC1_DecFcm
	.type	VC1_DecFcm, %function
VC1_DecFcm:
	.fnstart
.LFB1390:
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
	mov	r1, #2	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r4, r0	@ Code,
	ble	.L298	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L298:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	mov	r4, #0	@ Code,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecFcm, .-VC1_DecFcm
	.align	2
	.global	VC1_Vfmw_ParseAdvSeqHdr
	.type	VC1_Vfmw_ParseAdvSeqHdr, %function
VC1_Vfmw_ParseAdvSeqHdr:
	.fnstart
.LFB1388:
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
	mov	r1, #172	@,
	mov	r5, r0	@ pBs, pBs
	add	r0, r2, #16	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, #2	@,
	mov	r6, r1	@ tmp214,
	str	r0, [r4, #184]	@, <variable>.AdvSeqSyntax.HdrLen
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r6, [r4, #16]	@ tmp214, <variable>.AdvSeqSyntax.PROFILE
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #17]	@, <variable>.AdvSeqSyntax.LEVEL
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #18]	@, <variable>.AdvSeqSyntax.CHROMFORMAT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #19]	@, <variable>.AdvSeqSyntax.FRMRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #20]	@, <variable>.AdvSeqSyntax.BITRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	strb	r0, [r4, #21]	@, <variable>.AdvSeqSyntax.POSTPROCFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	uxth	ip, r0	@ D.38061,
	mov	r0, r5	@, pBs
	add	r2, ip, #1	@ tmp222, D.38061,
	mov	r3, r2, asl #1	@ tmp224, tmp222,
	strh	r3, [r4, #172]	@ movhi	@ tmp224, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	ip, r0	@ D.38067,
	mov	r0, r5	@, pBs
	add	r2, ip, r1	@ tmp226, D.38067,
	mov	r3, r2, asl r1	@ tmp228, tmp226,
	strh	r3, [r4, #174]	@ movhi	@ tmp228, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #22]	@, <variable>.AdvSeqSyntax.PULLDOWN
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #23]	@, <variable>.AdvSeqSyntax.INTERLACE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #24]	@, <variable>.AdvSeqSyntax.TFCNTRFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #25]	@, <variable>.AdvSeqSyntax.FINTERPFLAG
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.38082,
	strb	r6, [r4, #26]	@ D.38082, <variable>.AdvSeqSyntax.DISPLAY_EXT
	cmp	r6, #1	@ D.38082,
	beq	.L311	@,
	ldrh	r3, [r4, #172]	@, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	lr, [r4, #174]	@, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	strh	r3, [r4, #176]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	strh	lr, [r4, #178]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
.L304:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.38138,
	strb	r2, [r4, #39]	@ D.38138, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r2, #1	@ D.38138,
	beq	.L312	@,
.L305:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #184]	@ <variable>.AdvSeqSyntax.HdrLen, <variable>.AdvSeqSyntax.HdrLen
	mov	r3, #1	@ D.38147,
	rsb	r2, r1, r0	@ tmp261, <variable>.AdvSeqSyntax.HdrLen,
	str	r2, [r4, #184]	@ tmp261, <variable>.AdvSeqSyntax.HdrLen
.L307:
	mov	r0, r3	@, D.38147
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L312:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38143,
	strb	r1, [r4, #40]	@ D.38143, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r1, #31	@ D.38143,
	movhi	r3, #0	@ D.38147,
	bhi	.L307	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #41]	@, <variable>.AdvSeqSyntax.BIT_RATE_EXPONENT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	strb	r0, [r4, #42]	@, <variable>.AdvSeqSyntax.BUFFER_SIZE_EXPONENT
	beq	.L305	@,
	mov	r6, r4	@ ivtmp.1661, pSyntax
	mov	r7, #0	@ i,
.L308:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	add	r7, r7, #1	@ i, i,
	strh	r0, [r6, #44]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_RATE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r7	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strh	r0, [r6, #108]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_BUFFER
	add	r6, r6, #2	@ ivtmp.1661, ivtmp.1661,
	bgt	.L308	@,
	b	.L305	@
.L311:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r2, r0, #1	@ tmp235,,
	mov	r0, r5	@, pBs
	strh	r2, [r4, #176]	@ movhi	@ tmp235, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.38082
	add	r3, r0, #1	@ tmp237,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp237, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.38093,
	strb	r0, [r4, #27]	@ D.38093, <variable>.AdvSeqSyntax.ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.38093,
	beq	.L313	@,
.L301:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38107,
	strb	r1, [r4, #31]	@ D.38107, <variable>.AdvSeqSyntax.FRAMERATE_FLAG
	cmp	r1, #1	@ D.38107,
	beq	.L314	@,
.L302:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.38124,
	strb	r0, [r4, #35]	@ D.38124, <variable>.AdvSeqSyntax.COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.38124,
	bne	.L304	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #36]	@, <variable>.AdvSeqSyntax.COLOR_PRIM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #37]	@, <variable>.AdvSeqSyntax.TRANSFER_CHAR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #38]	@, <variable>.AdvSeqSyntax.MATRIX_COEF
	b	.L304	@
.L314:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.38112,
	strb	ip, [r4, #32]	@ D.38112, <variable>.AdvSeqSyntax.FRAMERATEIND
	cmp	ip, #0	@ D.38112,
	bne	.L303	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, <variable>.AdvSeqSyntax.FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, <variable>.AdvSeqSyntax.FRAMERATEDR
	b	.L302	@
.L313:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38098,
	strb	r1, [r4, #28]	@ D.38098, <variable>.AdvSeqSyntax.ASPECT_RATIO
	cmp	r1, #15	@ D.38098,
	bne	.L301	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, <variable>.AdvSeqSyntax.ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, <variable>.AdvSeqSyntax.ASPECT_VERT_SIZE
	b	.L301	@
.L303:
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, <variable>.AdvSeqSyntax.FRAMERATEXP
	b	.L302	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSeqHdr, .-VC1_Vfmw_ParseAdvSeqHdr
	.align	2
	.global	VC1_DecBfraction
	.type	VC1_DecBfraction, %function
VC1_DecBfraction:
	.fnstart
.LFB1381:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #228
	sub	sp, sp, #228	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	ip, .L320	@ tmp144,
	mov	r4, r0	@ pBs, pBs
	str	r1, [fp, #-248]	@ pScaleFactor, %sfp
	sub	r1, fp, #100	@,,
	str	r1, [fp, #-264]	@, %sfp
	mov	r6, ip	@ tmp182, tmp144
	sub	r5, fp, #72	@ tmp143,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp182,,,,
	add	lr, ip, #28	@ tmp147, tmp144,
	add	r8, ip, #56	@ tmp150, tmp144,
	sub	sl, fp, #188	@ tmp149,,
	sub	r7, fp, #244	@,,
	str	r7, [fp, #-256]	@, %sfp
	sub	r7, fp, #132	@,,
	str	r7, [fp, #-260]	@, %sfp
	stmia	r5!, {r0, r1, r2, r3}	@ tmp143,,,,
	add	r9, ip, #112	@ tmp153, tmp144,
	ldmia	r6, {r0, r1, r2}	@ tmp182,,,
	add	ip, ip, #168	@ tmp156, tmp144,
	stmia	r5, {r0, r1, r2}	@ tmp183,,,
	ldr	r5, [fp, #-264]	@, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp184,,,,
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp184,,,
	stmia	r5, {r0, r1, r2}	@ tmp185,,,
	mov	r5, sl	@ tmp187, tmp149
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp186,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp187,,,,
	mov	lr, r5	@ tmp189, tmp187
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp188,,,,
	ldr	r5, [fp, #-256]	@ tmp193, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp190,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	r8, {r0, r1}	@ tmp190,,
	stmia	lr, {r0, r1}	@ tmp191,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp192,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp193,,,,
	mov	lr, r5	@ tmp195, tmp193
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp194,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp196,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r9, {r0, r1}	@ tmp196,,
	stmia	lr, {r0, r1}	@ tmp197,,
	mov	lr, r7	@ tmp199,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	ble	.L319	@,
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	sub	ip, fp, #44	@,,
	sub	r2, r0, #112	@ D.37616, Code.1688,
	and	r7, r0, #15	@ tmp165, Code.1688,
	add	r0, r7, #7	@ BfracIdx, tmp165,
	add	r5, ip, r2, asl #2	@, tmp168,, D.37616,
	ldr	r2, [r5, #-200]	@ Denominator, DenLongVLC
	ldr	r3, [r5, #-144]	@ Numerator, NumLongVLC
.L317:
	sub	r5, fp, #44	@,,
	ldr	r7, [fp, #-248]	@, %sfp
	add	r2, r5, r2, asl #2	@, tmp177,, Denominator,
	ldr	r1, [r2, #-92]	@ tmp179, Inverse
	mul	lr, r3, r1	@ tmp180, Numerator, tmp179
	str	lr, [r7, #0]	@ tmp180,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L319:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsSkip	@
	sub	r0, fp, #44	@,,
	add	r3, r0, r5, asl #2	@, tmp159,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r2, [r3, #-56]	@ Denominator, DenShortVLC
	ldr	r3, [r3, #-28]	@ Numerator, NumShortVLC
	b	.L317	@
.L321:
	.align	2
.L320:
	.word	.LANCHOR0+348
	.fnend
	.size	VC1_DecBfraction, .-VC1_DecBfraction
	.align	2
	.global	VC1_DecBfractionSMP
	.type	VC1_DecBfractionSMP, %function
VC1_DecBfractionSMP:
	.fnstart
.LFB1380:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #228
	sub	sp, sp, #228	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	ip, .L329	@ tmp146,
	mov	r4, r0	@ pBs, pBs
	str	r1, [fp, #-248]	@ pScaleFactor, %sfp
	str	r2, [fp, #-252]	@ pPTYPE, %sfp
	sub	r5, fp, #72	@ tmp145,,
	mov	r6, ip	@ tmp185, tmp146
	add	lr, ip, #28	@ tmp149, tmp146,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp185,,,,
	sub	r8, fp, #100	@,,
	str	r8, [fp, #-264]	@, %sfp
	add	r8, ip, #56	@ tmp152, tmp146,
	sub	r7, fp, #244	@,,
	str	r7, [fp, #-256]	@, %sfp
	sub	r7, fp, #132	@,,
	str	r7, [fp, #-260]	@, %sfp
	stmia	r5!, {r0, r1, r2, r3}	@ tmp145,,,,
	sub	sl, fp, #188	@ tmp151,,
	ldmia	r6, {r0, r1, r2}	@ tmp185,,,
	add	r9, ip, #112	@ tmp155, tmp146,
	add	ip, ip, #168	@ tmp158, tmp146,
	stmia	r5, {r0, r1, r2}	@ tmp186,,,
	ldr	r5, [fp, #-264]	@, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp187,,,
	stmia	r5, {r0, r1, r2}	@ tmp188,,,
	mov	r5, sl	@ tmp190, tmp151
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	lr, r5	@ tmp192, tmp190
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp191,,,,
	ldr	r5, [fp, #-256]	@ tmp196, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp193,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r8, {r0, r1}	@ tmp193,,
	stmia	lr, {r0, r1}	@ tmp194,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp196,,,,
	mov	lr, r5	@ tmp198, tmp196
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp197,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	r9, {r0, r1}	@ tmp199,,
	stmia	lr, {r0, r1}	@ tmp200,,
	mov	lr, r7	@ tmp202,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp202,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp202,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	bgt	.L323	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	sub	r0, fp, #44	@,,
	add	r1, r0, r5, asl #2	@, tmp161,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r1, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r1, #-28]	@ Numerator, NumShortVLC
.L324:
	sub	r5, fp, #44	@,,
	add	lr, r5, r3, asl #2	@, tmp180,, Denominator,
	ldr	r7, [lr, #-92]	@ tmp182, Inverse
	mul	r1, r2, r7	@ tmp183, Numerator, tmp182
	ldr	r7, [fp, #-248]	@, %sfp
	str	r1, [r7, #0]	@ tmp183,
.L326:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L323:
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	and	r5, r0, #15	@ D.37579, Code.1713,
	cmp	r5, #15	@ D.37579,
	beq	.L328	@,
	sub	ip, r0, #112	@ D.37583, Code.1713,
	sub	r3, fp, #44	@,,
	add	r0, r5, #7	@ BfracIdx, D.37579,
	add	r5, r3, ip, asl #2	@, tmp171,, D.37583,
	ldr	r3, [r5, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [r5, #-144]	@ Numerator, NumLongVLC
	b	.L324	@
.L328:
	ldr	r2, [fp, #-252]	@, %sfp
	mov	lr, #4	@ tmp167,
	mov	r0, #22	@ BfracIdx,
	strb	lr, [r2, #0]	@ tmp167,
	b	.L326	@
.L330:
	.align	2
.L329:
	.word	.LANCHOR0+548
	.fnend
	.size	VC1_DecBfractionSMP, .-VC1_DecBfractionSMP
	.align	2
	.global	VC1_DecMvmode2
	.type	VC1_DecMvmode2, %function
VC1_DecMvmode2:
	.fnstart
.LFB1379:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r7, r1	@ PQUANT, PQUANT
	mov	r1, #3	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L340	@ tmp142,
	sub	r5, fp, #44	@ tmp141,,
	sub	ip, fp, #60	@ tmp144,,
	add	lr, r3, #16	@ tmp145, tmp142,
	mov	r6, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp141,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp144,,,,
	ble	.L339	@,
	cmp	r6, #4	@ Tmp,
	movge	r5, #0	@, Code
	movlt	r5, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L334:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	sub	r1, fp, #28	@,,
	cmp	r7, #12	@ PQUANT,
	add	r5, r1, r5, asl #2	@, tmp148,, Code,
	ldrhi	r0, [r5, #-16]	@ Code.1737, ModeLow
	ldrls	r0, [r5, #-32]	@ Code.1737, ModeHigh
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L339:
	cmp	r6, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r5, r1	@ Code, Len
	movne	r5, #2	@ Code,
	b	.L334	@
.L341:
	.align	2
.L340:
	.word	.LANCHOR0+748
	.fnend
	.size	VC1_DecMvmode2, .-VC1_DecMvmode2
	.align	2
	.global	VC1_DecMvmodeInterB
	.type	VC1_DecMvmodeInterB, %function
VC1_DecMvmodeInterB:
	.fnstart
.LFB1378:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ PQUANT, PQUANT
	mov	r1, #3	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L352	@ tmp142,
	sub	ip, fp, #44	@ tmp141,,
	mov	lr, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp141,,,,
	ble	.L350	@,
	cmp	lr, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L345:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r4, #12	@ PQUANT,
	bhi	.L351	@,
	sub	r3, fp, #60	@ tmp162,,
	sub	r0, fp, #28	@,,
	add	r6, r0, r6, asl #2	@, tmp158,, Code,
	mov	lr, #0	@ tmp148,
	str	lr, [r3], #4	@ tmp148, ModeHigh
	add	ip, r3, #8	@ tmp164, tmp162,
	mov	r0, #3	@ tmp155,
	mov	r2, #1	@ tmp153,
	str	lr, [ip, #0]	@ tmp148, ModeHigh
	mov	r1, #2	@ tmp154,
	str	r2, [fp, #-64]	@ tmp153, ModeHigh
	str	r1, [fp, #-56]	@ tmp154, ModeHigh
	str	r0, [fp, #-52]	@ tmp155, ModeHigh
	ldr	r0, [r6, #-36]	@ Code.1761, ModeHigh
.L348:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L351:
	sub	r2, fp, #28	@,,
	add	r6, r2, r6, asl #2	@, tmp145,, Code,
	ldr	r0, [r6, #-16]	@ Code.1761, ModeLow
	b	.L348	@
.L350:
	cmp	lr, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L345	@
.L353:
	.align	2
.L352:
	.word	.LANCHOR0+780
	.fnend
	.size	VC1_DecMvmodeInterB, .-VC1_DecMvmodeInterB
	.align	2
	.global	VC1_DecMvmodeProgrB
	.type	VC1_DecMvmodeProgrB, %function
VC1_DecMvmodeProgrB:
	.fnstart
.LFB1377:
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
	mov	r1, #1	@,
	bl	BsSkip	@
	ldr	r1, .L356	@ tmp139,
	sub	ip, fp, #12	@,,
	sub	r3, fp, #20	@ tmp138,,
	add	r2, ip, r0, asl #2	@, tmp143,, Tmp,
	ldmia	r1, {r0, r1}	@ tmp139,,
	stmia	r3, {r0, r1}	@ tmp138,,
	ldr	r0, [r2, #-8]	@, Mode
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L357:
	.align	2
.L356:
	.word	.LANCHOR0+796
	.fnend
	.size	VC1_DecMvmodeProgrB, .-VC1_DecMvmodeProgrB
	.align	2
	.global	VC1_DecMvmodeProgrP
	.type	VC1_DecMvmodeProgrP, %function
VC1_DecMvmodeProgrP:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #40
	sub	sp, sp, #40	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	sl, r1	@ PQUANT, PQUANT
	mov	r1, #4	@,
	mov	r8, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r6, .L368	@ tmp142,
	sub	lr, fp, #56	@ tmp141,,
	sub	r7, fp, #76	@ tmp145,,
	add	ip, r6, #20	@ tmp146, tmp142,
	mov	r5, lr	@ tmp158, tmp141
	mov	r4, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp157,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldr	lr, [r6, #0]	@ C.480, C.480
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp159,,,,
	str	lr, [r5, #0]	@ C.480, ModeLow
	ldr	ip, [ip, #0]	@ C.481, C.481
	stmia	r7!, {r0, r1, r2, r3}	@ tmp145,,,,
	str	ip, [r7, #0]	@ C.481, ModeHigh
	ble	.L367	@,
	cmp	r4, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	ble	.L361	@,
	cmp	r4, #8	@ Tmp,
	movge	r4, #0	@, Code
	movlt	r4, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L361:
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	sub	r1, fp, #36	@,,
	cmp	sl, #12	@ PQUANT,
	add	r4, r1, r4, asl #2	@, tmp150,, Code,
	ldrhi	r0, [r4, #-20]	@ Code.1808, ModeLow
	ldrls	r0, [r4, #-40]	@ Code.1808, ModeHigh
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L367:
	cmp	r4, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L361	@
.L369:
	.align	2
.L368:
	.word	.LANCHOR0+804
	.fnend
	.size	VC1_DecMvmodeProgrP, .-VC1_DecMvmodeProgrP
	.align	2
	.global	VC1_DecTransacfrm
	.type	VC1_DecTransacfrm, %function
VC1_DecTransacfrm:
	.fnstart
.LFB1374:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r2, #64	@,
	mov	r4, r0	@ pBs, pBs
	mov	r1, #0	@,
	sub	r0, fp, #84	@,,
	bl	memset	@
	mov	ip, #2	@ tmp143,
	mov	r1, ip	@, tmp143
	mov	r0, r4	@, pBs
	mov	r3, #1	@ tmp140,
	str	ip, [fp, #-64]	@ tmp143, <variable>.Len
	str	r3, [fp, #-68]	@ tmp140, <variable>.Code
	str	r3, [fp, #-80]	@ tmp140, <variable>.Len
	str	r3, [fp, #-72]	@ tmp140, <variable>.Len
	str	ip, [fp, #-60]	@ tmp143, <variable>.Code
	str	ip, [fp, #-56]	@ tmp143, <variable>.Len
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp148,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	VC1_DecTransacfrm, .-VC1_DecTransacfrm
	.align	2
	.global	VC1_DecMvrange
	.type	VC1_DecMvrange, %function
VC1_DecMvrange:
	.fnstart
.LFB1373:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #64
	sub	sp, sp, #64	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	lr, .L374	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	sub	ip, fp, #84	@ tmp138,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	r5, ip	@ tmp151, tmp138
	stmia	r5!, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	ip, r5	@ tmp153, tmp151
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	r5, ip	@ tmp155, tmp153
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp155,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp155,,,,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L375:
	.align	2
.L374:
	.word	.LANCHOR0+844
	.fnend
	.size	VC1_DecMvrange, .-VC1_DecMvrange
	.align	2
	.global	VC1_Vfmw_ParseAdvPFieldHdr
	.type	VC1_Vfmw_ParseAdvPFieldHdr, %function
VC1_Vfmw_ParseAdvPFieldHdr:
	.fnstart
.LFB1399:
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
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.38764,
	strb	r6, [r4, #358]	@ D.38764, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.38764,
	bne	.L395	@,
	mov	r0, r6	@, D.38768
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L395:
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.38764
	mov	r0, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.38764,
	movhi	r3, #0	@ tmp172,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp172, <variable>.AdvPicSyntax.HALFQP
	bls	.L396	@,
.L380:
	cmp	r7, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp176,
	strneb	r3, [r4, #359]	@ tmp176, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L397	@,
.L382:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L398	@,
.L383:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.38789,
	strb	r0, [r4, #380]	@ D.38789, <variable>.AdvPicSyntax.NUMREF
	cmp	r0, #0	@ D.38789,
	beq	.L399	@,
.L384:
	ldrb	r2, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r2, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L400	@,
.L385:
	ldrb	r6, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r6, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L401	@,
.L386:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	ip, r0	@ D.38808,
	strb	ip, [r4, #362]	@ D.38808, <variable>.AdvPicSyntax.MVMODE
	cmp	ip, #4	@ D.38808,
	beq	.L402	@,
.L387:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #380]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.NUMREF,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	uxtb	r0, r0	@ iftmp.543,
	strb	r0, [r4, #366]	@ iftmp.543, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L390	@,
	movw	r6, #362	@ tmp201,
	ldrh	lr, [r4, r6]	@ tmp202,
	cmp	lr, #4	@ tmp202,
	beq	.L390	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38841, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38841,
	bne	.L403	@,
.L392:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L404	@,
.L393:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.38768,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.38768
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L390:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38841, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38841,
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	beq	.L392	@,
.L403:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L392	@
.L399:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	rsbs	r1, r0, #1	@ tmp181,
	movcc	r1, #0	@ tmp181
	strb	r1, [r4, #381]	@ tmp181, <variable>.AdvPicSyntax.REFFIELD
	b	.L384	@
.L396:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L380	@
.L397:
	mov	r1, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L382	@
.L404:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.38849,
	strb	ip, [r4, #368]	@ D.38849, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.38849,
	bne	.L393	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L393	@
.L402:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	VC1_DecIntCompField	@
	mov	r1, #6	@,
	str	r0, [r4, #476]	@, <variable>.AdvPicSyntax.INTCOMPFIELD
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #476]	@ <variable>.AdvPicSyntax.INTCOMPFIELD, <variable>.AdvPicSyntax.INTCOMPFIELD
	cmp	r3, #0	@ <variable>.AdvPicSyntax.INTCOMPFIELD,
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	bne	.L387	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, <variable>.AdvPicSyntax.LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, <variable>.AdvPicSyntax.LUMSHIFT2
	b	.L387	@
.L398:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L383	@
.L401:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L386	@
.L400:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L385	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPFieldHdr, .-VC1_Vfmw_ParseAdvPFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPIPicHdr
	.type	VC1_Vfmw_ParseSMPIPicHdr, %function
VC1_Vfmw_ParseSMPIPicHdr:
	.fnstart
.LFB1384:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #7	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r7, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #253]	@, <variable>.SMPPicSyntax.BF
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37737,
	strb	r6, [r5, #254]	@ D.37737, <variable>.SMPPicSyntax.PQINDEX
	cmp	r6, #0	@ D.37737,
	bne	.L419	@,
	mov	r0, r6	@, D.37741
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L419:
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r6	@, D.37737
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37737,
	movhi	r3, #0	@ tmp155,
	str	r0, [r5, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r5, #255]	@ tmp155, <variable>.SMPPicSyntax.HALFQP
	bls	.L420	@,
.L409:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r5, #256]	@ tmp159, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L421	@,
.L411:
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp163,
	strneb	r3, [r5, #257]	@ tmp163, <variable>.SMPPicSyntax.MVRANGE
	beq	.L422	@,
.L413:
	ldrb	r0, [r5, #251]	@ zero_extendqisi2	@ D.37762, <variable>.SMPPicSyntax.PTYPE
	cmp	r0, #4	@ D.37762,
	cmpne	r0, #2	@, D.37762,
	bne	.L414	@,
.L418:
	ldrb	r1, [r5, #258]	@ zero_extendqisi2	@ prephitmp.1902, <variable>.SMPPicSyntax.RESPIC
.L415:
	mov	r0, r4	@, pCodecInf
	mov	r6, #1	@ D.37741,
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r5, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r5, #268]	@, <variable>.SMPPicSyntax.TRANSACFRM2
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.37741
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L414:
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	bne	.L418	@,
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.1902,
	strb	r1, [r5, #258]	@ prephitmp.1902, <variable>.SMPPicSyntax.RESPIC
	b	.L415	@
.L420:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r5, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L409	@
.L422:
	mov	r0, r7	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r5, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L413	@
.L421:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L411	@
	.fnend
	.size	VC1_Vfmw_ParseSMPIPicHdr, .-VC1_Vfmw_ParseSMPIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBFieldHdr
	.type	VC1_Vfmw_ParseAdvBFieldHdr, %function
VC1_Vfmw_ParseAdvBFieldHdr:
	.fnstart
.LFB1400:
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
	mov	r7, #1	@ tmp158,
	mov	r8, r1	@ pCodecInf, pCodecInf
	strb	r7, [r2, #380]	@ tmp158, <variable>.AdvPicSyntax.NUMREF
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.38868,
	strb	r6, [r4, #358]	@ D.38868, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.38868,
	bne	.L437	@,
.L424:
	mov	r3, #0	@ D.38872,
	mov	r0, r3	@, D.38872
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L437:
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.38868
	mov	r0, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.38868,
	movhi	r3, #0	@ tmp163,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp163, <variable>.AdvPicSyntax.HALFQP
	bls	.L438	@,
.L426:
	cmp	sl, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp167,
	strneb	r3, [r4, #359]	@ tmp167, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L439	@,
.L428:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L440	@,
.L429:
	ldrb	r0, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L441	@,
.L430:
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L442	@,
.L431:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeInterB	@
	mov	r1, r8	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	strb	r0, [r4, #362]	@, <variable>.AdvPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L424	@,
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L443	@,
.L432:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38920, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38920,
	bne	.L444	@,
.L433:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L445	@,
.L434:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.38872,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.38872
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L444:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L433	@
.L443:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L432	@
.L438:
	mov	r1, r7	@, tmp158
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L426	@
.L442:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L431	@
.L441:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L430	@
.L440:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L429	@
.L439:
	mov	r1, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L428	@
.L445:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.38928,
	strb	ip, [r4, #368]	@ D.38928, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.38928,
	bne	.L434	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L434	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBFieldHdr, .-VC1_Vfmw_ParseAdvBFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIFieldHdr
	.type	VC1_Vfmw_ParseAdvIFieldHdr, %function
VC1_Vfmw_ParseAdvIFieldHdr:
	.fnstart
.LFB1398:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.38716,
	strb	r7, [r4, #358]	@ D.38716, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.38716,
	bne	.L457	@,
.L447:
	mov	r0, #0	@ D.38720,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L457:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.38716
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.38716,
	movhi	r3, #0	@ tmp152,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp152, <variable>.AdvPicSyntax.HALFQP
	bls	.L458	@,
.L449:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp156,
	strneb	r3, [r4, #359]	@ tmp156, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L459	@,
.L451:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L460	@,
.L452:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L447	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38749, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38749,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L453	@,
.L456:
	mov	r0, #1	@ D.38720,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L453:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L456	@
.L458:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L449	@
.L460:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L452	@
.L459:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L451	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIFieldHdr, .-VC1_Vfmw_ParseAdvIFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFieldPicHdr
	.type	VC1_Vfmw_ParseAdvFieldPicHdr, %function
VC1_Vfmw_ParseAdvFieldPicHdr:
	.fnstart
.LFB1401:
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
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r6, r0	@ pBs, pBs
	cmp	r3, #0	@ <variable>.Is2ndFld,
	mov	r4, r2	@ pSyntax, pSyntax
	beq	.L462	@,
	movw	r1, #18228	@ tmp160,
	ldr	r0, [r5, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L463	@,
.L462:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp162,
	movt	r2, #:upper16:.LANCHOR0	@ tmp162,
	add	ip, r2, r0, asl #3	@, tmp171, tmp162, D.38963,
	str	r0, [r4, #472]	@ D.38963, <variable>.AdvPicSyntax.FPTYPE
	ldr	r2, [ip, #908]	@ D.38965, FldPTypeTab
	ldr	r0, [ip, #912]	@ D.38966, FldPTypeTab
	str	r2, [r4, #500]	@ D.38965, <variable>.AdvPicSyntax.FldPicType
	str	r0, [r4, #504]	@ D.38966, <variable>.AdvPicSyntax.FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	uxtbeq	r0, r2	@ iftmp.544, D.38965
	uxtbne	r0, r0	@ iftmp.544, D.38966
	strb	r0, [r4, #349]	@ iftmp.544, <variable>.AdvPicSyntax.PTYPE
	ldrb	r3, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L489	@,
.L466:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp184,
	streqb	r2, [r4, #352]	@ tmp184, <variable>.AdvPicSyntax.TFF
	bne	.L490	@,
.L469:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L491	@,
.L470:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp194,
	addeq	r3, r3, #1	@ tmp193, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp194, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L492	@,
.L474:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #191]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.REFDIST_FLAG, <variable>.AdvEntSyntax.REFDIST_FLAG
	cmp	r2, #1	@ <variable>.AdvEntSyntax.REFDIST_FLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	beq	.L493	@,
.L476:
	ldr	r0, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	r0, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	bgt	.L477	@,
.L478:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L479	@
.L483:
	.word	.L480
	.word	.L481
	.word	.L482
	.word	.L479
	.word	.L480
.L490:
	ldrb	lr, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	lr, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L468	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #354]	@, <variable>.AdvPicSyntax.RPTFRM
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L470	@,
.L491:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp190,
	addeq	r3, r3, #2	@ tmp189, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp190, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L474	@,
.L492:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.39011,
	strb	r1, [r4, #355]	@ D.39011, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	r1, #1	@ D.39011,
	bne	.L474	@,
	ldr	ip, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	ip, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L474	@,
	mov	r7, r4	@ ivtmp.1993, pSyntax
	mov	r8, #0	@ i,
.L475:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.1993, ivtmp.1993,
	bgt	.L475	@,
	b	.L474	@
.L482:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L484:
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	bne	.L494	@,
.L485:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r3, r2, #1	@ tmp217, <variable>.Is2ndFld,
	movne	r3, #1	@ tmp217
	strb	r3, [r4, #389]	@ tmp217, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L480:
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	beq	.L485	@,
.L494:
	ldrb	ip, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r1, ip, #0	@ tmp214, <variable>.Is2ndFld,
	movne	r1, #1	@ tmp214
	strb	r1, [r4, #389]	@ tmp214, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L481:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	b	.L484	@
.L479:
	mov	r0, #0	@ Ret,
	b	.L484	@
.L489:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r4, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L466	@
.L493:
	ldr	lr, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	lr, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	ble	.L495	@,
.L477:
	mov	r0, r6	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L478	@
.L468:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #353]	@, <variable>.AdvPicSyntax.RFF
	b	.L469	@
.L495:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, <variable>.AdvPicSyntax.REFDIST
	b	.L476	@
.L463:
	ldr	ip, [r2, #504]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.FldPicType
	strb	ip, [r2, #349]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.PTYPE
	ldrb	r1, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r1, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	b	.L478	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFieldPicHdr, .-VC1_Vfmw_ParseAdvFieldPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBPicHdr
	.type	VC1_Vfmw_ParseAdvBPicHdr, %function
VC1_Vfmw_ParseAdvBPicHdr:
	.fnstart
.LFB1394:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L497	@,
	ldr	r3, [r4, #392]	@ prephitmp.2020, <variable>.AdvPicSyntax.FCM
	cmp	r3, #2	@ prephitmp.2020,
	beq	.L497	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L522	@,
.L499:
	cmp	r3, #0	@ prephitmp.2020,
	bne	.L500	@,
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.38506,
	strb	r0, [r4, #350]	@ D.38506, <variable>.AdvPicSyntax.BFRACTION
	cmp	r0, #21	@ D.38506,
	beq	.L501	@,
.L500:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.38512,
	strb	r7, [r4, #358]	@ D.38512, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.38512,
	bne	.L523	@,
.L501:
	mov	r3, #0	@ D.38510,
	mov	r0, r3	@, D.38510
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L523:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.38512
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.38512,
	movhi	r3, #0	@ tmp180,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp180, <variable>.AdvPicSyntax.HALFQP
	bls	.L524	@,
.L503:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp184,
	strneb	r3, [r4, #359]	@ tmp184, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L525	@,
.L505:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L526	@,
.L506:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L527	@,
.L507:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L528	@,
.L508:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L529	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r3, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L530	@,
.L513:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	str	r0, [r4, #468]	@, <variable>.AdvPicSyntax.INTCOMP
.L512:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L501	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L531	@,
.L514:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r0, r0	@ iftmp.532,
	strb	r0, [r4, #367]	@ iftmp.532, <variable>.AdvPicSyntax.CBPTAB
	beq	.L532	@,
.L517:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38579, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38579,
	bne	.L533	@,
.L518:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L534	@,
.L519:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.38510,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.38510
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L497:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	ldr	r3, [r4, #392]	@ prephitmp.2020, <variable>.AdvPicSyntax.FCM
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L499	@,
.L522:
	cmp	r3, #0	@ prephitmp.2020,
	bne	.L500	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ prephitmp.2020, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L499	@
.L533:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L518	@
.L524:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L503	@
.L529:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r0, #3	@ iftmp.531,
	movne	r0, #1	@ iftmp.531,
	strb	r0, [r4, #362]	@ iftmp.531, <variable>.AdvPicSyntax.MVMODE
	b	.L512	@
.L525:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L505	@
.L526:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L506	@
.L527:
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L507	@
.L528:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L508	@
.L534:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.38589,
	strb	r1, [r4, #368]	@ D.38589, <variable>.AdvPicSyntax.TTMBF
	cmp	r1, #1	@ D.38589,
	bne	.L519	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L519	@
.L532:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L517	@
.L531:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L514	@
.L530:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L513	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBPicHdr, .-VC1_Vfmw_ParseAdvBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPPicHdr
	.type	VC1_Vfmw_ParseAdvPPicHdr, %function
VC1_Vfmw_ParseAdvPPicHdr:
	.fnstart
.LFB1393:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L536	@,
	ldr	r0, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r0, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L536	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L561	@,
.L538:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.38374,
	strb	r7, [r4, #358]	@ D.38374, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.38374,
	bne	.L562	@,
.L539:
	mov	r3, #0	@ D.38378,
	mov	r0, r3	@, D.38378
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L562:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.38374
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.38374,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp183, <variable>.AdvPicSyntax.HALFQP
	bls	.L563	@,
.L541:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp187,
	strneb	r3, [r4, #359]	@ tmp187, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L564	@,
.L543:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L565	@,
.L544:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L566	@,
.L545:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L567	@,
	ldrb	r0, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	movne	r0, #0	@ tmp204,
	strneb	r0, [r4, #373]	@ tmp204, <variable>.AdvPicSyntax.DMVRANGE
	beq	.L568	@,
.L549:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, <variable>.AdvPicSyntax.QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.38427,
	str	r0, [r4, #468]	@ D.38427, <variable>.AdvPicSyntax.INTCOMP
	beq	.L569	@,
.L550:
	mov	r2, #0	@ tmp209,
	strb	r2, [r4, #382]	@ tmp209, <variable>.AdvPicSyntax.MVTYPEMBMode
.L547:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L539	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L570	@,
.L551:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r1, r0	@ iftmp.529,
	strb	r1, [r4, #367]	@ iftmp.529, <variable>.AdvPicSyntax.CBPTAB
	beq	.L571	@,
.L554:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38460, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38460,
	bne	.L572	@,
.L557:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L573	@,
.L558:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.38378,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.38378
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L536:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L538	@,
.L561:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L538	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L538	@
.L567:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r3, r0	@ D.38408,
	strb	r3, [r4, #362]	@ D.38408, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ D.38408,
	bne	.L547	@,
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L547	@
.L563:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L541	@
.L572:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L557	@
.L564:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L543	@
.L566:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L545	@
.L565:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L544	@
.L570:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L551	@
.L573:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.38468,
	strb	r3, [r4, #368]	@ D.38468, <variable>.AdvPicSyntax.TTMBF
	cmp	r3, #1	@ D.38468,
	bne	.L558	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L558	@
.L571:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	bl	BsGet	@
	ldrb	ip, [r4, #374]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.QMVSWITCH, <variable>.AdvPicSyntax.QMVSWITCH
	cmp	ip, #1	@ <variable>.AdvPicSyntax.QMVSWITCH,
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	movne	r0, #0	@ iftmp.530,
	strneb	r0, [r4, #377]	@ iftmp.530, <variable>.AdvPicSyntax.QMVBPTAB
	bne	.L554	@
.L574:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ iftmp.530,
	strb	r0, [r4, #377]	@ iftmp.530, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L554	@
.L569:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L550	@
.L568:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L549	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPPicHdr, .-VC1_Vfmw_ParseAdvPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIPicHdr
	.type	VC1_Vfmw_ParseAdvIPicHdr, %function
VC1_Vfmw_ParseAdvIPicHdr:
	.fnstart
.LFB1392:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L588	@,
.L576:
	ldr	r3, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r3, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L577	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L589	@,
.L577:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.38310,
	strb	r7, [r4, #358]	@ D.38310, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.38310,
	bne	.L590	@,
.L578:
	mov	r0, #0	@ D.38314,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L590:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.38310
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.38310,
	movhi	r3, #0	@ tmp161,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp161, <variable>.AdvPicSyntax.HALFQP
	bls	.L591	@,
.L580:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp165,
	strneb	r3, [r4, #359]	@ tmp165, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L592	@,
.L582:
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L593	@,
.L583:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L578	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.38343, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.38343,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L584	@,
.L587:
	mov	r0, #1	@ D.38314,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L584:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L587	@
.L589:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L577	@
.L588:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	b	.L576	@
.L591:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L580	@
.L593:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L583	@
.L592:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L582	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIPicHdr, .-VC1_Vfmw_ParseAdvIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFramePicHdr
	.type	VC1_Vfmw_ParseAdvFramePicHdr, %function
VC1_Vfmw_ParseAdvFramePicHdr:
	.fnstart
.LFB1395:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code,
	movle	r7, #1	@ prephitmp.2107,
	movle	r1, r7	@ Len, prephitmp.2107
	ble	.L596	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ prephitmp.2107,
	movle	r1, r7	@ Len, prephitmp.2107
	bgt	.L620	@,
.L596:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2107, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L621	@,
.L600:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp162,
	streqb	r2, [r5, #352]	@ tmp162, <variable>.AdvPicSyntax.TFF
	beq	.L603	@,
	ldrb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L602	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r5, #354]	@, <variable>.AdvPicSyntax.RPTFRM
.L603:
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L622	@,
.L604:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp172,
	addeq	r3, r3, #1	@ tmp171, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp172, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L623	@,
.L608:
	ldrb	r0, [r5, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r0, #5	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L610	@
.L616:
	.word	.L611
	.word	.L612
	.word	.L613
	.word	.L610
	.word	.L614
	.word	.L615
.L602:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r5, #353]	@, <variable>.AdvPicSyntax.RFF
	bne	.L604	@,
.L622:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp168,
	addeq	r3, r3, #2	@ tmp167, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp168, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L608	@,
.L623:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.38659,
	strb	ip, [r5, #355]	@ D.38659, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	ip, #1	@ D.38659,
	bne	.L608	@,
	ldr	lr, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	lr, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L608	@,
	mov	r7, r5	@ ivtmp.2123, pSyntax
	mov	r8, #0	@ i,
.L609:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.2123, ivtmp.2123,
	bgt	.L609	@,
	b	.L608	@
.L620:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ prephitmp.2107,
	movle	r1, #3	@ Len,
	ble	.L596	@,
	cmp	r0, #14	@ Code,
	mov	r0, r6	@, pBs
	moveq	r7, #4	@ prephitmp.2107,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, prephitmp.2107
	movne	r7, #5	@ prephitmp.2107,
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2107, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	beq	.L600	@,
.L621:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r5, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L600	@
.L615:
	mov	r0, #1	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L610:
	mov	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L611:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvIPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L612:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L613:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L614:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvIPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFramePicHdr, .-VC1_Vfmw_ParseAdvFramePicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPicHdr
	.type	VC1_Vfmw_ParseAdvPicHdr, %function
VC1_Vfmw_ParseAdvPicHdr:
	.fnstart
.LFB1402:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r5, r0	@ pBs, pBs
	mov	r1, #0	@,
	mov	r0, r4	@, pCodecInf
	mov	r6, r2	@ pSyntax, pSyntax
	bl	VC1_SetCurPicResolutionInfo	@
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r3, #0	@ <variable>.Is2ndFld,
	beq	.L625	@,
	movw	r1, #18228	@ tmp142,
	ldr	r0, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L633	@,
.L625:
	ldrb	r8, [r6, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r8, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	movne	r8, #1	@ prephitmp.2150,
	movne	r7, #0	@ Code,
	beq	.L634	@,
.L628:
	str	r7, [r6, #392]	@ Code, <variable>.AdvPicSyntax.FCM
.L626:
	cmp	r8, #0	@ prephitmp.2150,
	bne	.L635	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	bl	VC1_Vfmw_ParseAdvFieldPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L635:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	bl	VC1_Vfmw_ParseAdvFramePicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L633:
	ldr	r8, [r6, #392]	@ pretmp.2147, <variable>.AdvPicSyntax.FCM
	cmp	r8, #0	@ pretmp.2147,
	cmpne	r8, #2	@, pretmp.2147,
	movne	r8, #0	@, prephitmp.2150
	moveq	r8, #1	@, prephitmp.2150
	b	.L626	@
.L634:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L636	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	cmp	r7, #2	@ Code,
	movne	r8, #0	@, prephitmp.2150
	moveq	r8, #1	@, prephitmp.2150
	b	.L628	@
.L636:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, <variable>.AdvSeqSyntax.INTERLACE
	bl	BsSkip	@
	mov	r7, #0	@ Code,
	b	.L628	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPicHdr, .-VC1_Vfmw_ParseAdvPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvSlcHdr
	.type	VC1_Vfmw_ParseAdvSlcHdr, %function
VC1_Vfmw_ParseAdvSlcHdr:
	.fnstart
.LFB1403:
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
	movw	r3, #18228	@ tmp142,
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #9	@,
	mov	r5, r2	@ pSyntax, pSyntax
	ldr	r7, [r4, r3]	@ D.39089, <variable>.SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r7, r7, r7, asl #1	@, tmp146, D.39089, D.39089,
	add	r7, r5, r7, asl #2	@, tmp148, pSyntax, tmp146,
	str	r0, [r7, #528]	@, <variable>.SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.39093,
	strb	r0, [r7, #524]	@ D.39093, <variable>.PIC_HEADER_FLAG
	cmp	r0, #1	@ D.39093,
	movne	r0, #1	@ Ret,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	lr, r5, #188	@ tmp161, pSyntax,
	add	r1, r4, #5376	@ tmp160, pCodecInf,
	add	ip, r1, #32	@ tmp160, tmp160,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp175,,,,
	mov	r7, ip	@ tmp176, tmp160
	stmia	r7!, {r0, r1, r2, r3}	@ tmp176,,,,
	mov	ip, r7	@ tmp178, tmp176
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp177,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp179,,,
	stmia	ip, {r0, r1, r2}	@ tmp180,,,
	add	r0, r4, #5184	@, pCodecInf,
	add	r1, r5, #16	@, pSyntax,
	mov	r2, #172	@,
	add	r0, r0, #52	@,,
	bl	memcpy	@
	add	r1, r5, #348	@, pSyntax,
	mov	r2, #176	@,
	add	r0, r4, #5568	@, pCodecInf,
	bl	memcpy	@
	add	r2, r4, #5184	@, tmp1,
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	add	r2, r2, #36	@,,
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSlcHdr, .-VC1_Vfmw_ParseAdvSlcHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvHdr
	.type	VC1_Vfmw_ParseAdvHdr, %function
VC1_Vfmw_ParseAdvHdr:
	.fnstart
.LFB1408:
	@ args = 0, pretend = 0, frame = 24
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
	str	r1, [fp, #-48]	@ pSyntax, %sfp
	ldr	r6, [r0, #3128]	@ pBs, <variable>.pBs
	mov	r4, r0	@ pCodecInf, pCodecInf
	mov	r1, #32	@,
	mov	r8, #0	@ tmp171,
	add	r7, r0, #30464	@ pVc1Packet, pCodecInf,
	strb	r8, [r0, #6]	@ tmp171, <variable>.IsWaitToDec
	mov	r0, r6	@, pBs
	mov	r9, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r5, [r6, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movw	r2, #30524	@ tmp177,
	movw	r1, #30544	@ tmp179,
	cmp	r5, r8	@ <variable>.TotalPos,
	add	ip, r5, #7	@ tmp175, <variable>.TotalPos,
	ldr	sl, [r4, r2]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	add	r7, r7, #60	@ pVc1Packet, pVc1Packet,
	movlt	r5, ip	@ <variable>.TotalPos, tmp175
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	mov	r3, r5, asr #3	@ tmp176, <variable>.TotalPos,
	add	sl, r3, sl	@ pTmp, tmp176, <variable>.stCurPacket.BsVirAddr
	rsb	r2, r3, r2	@, tmp176, <variable>.stCurPacket.BsLength
	mov	r1, sl	@, pTmp
	uxtb	r5, r0	@ Code,
	mov	r0, r6	@, pBs
	bl	BsInit	@
	sub	r3, r5, #10	@ tmp182, Code,
	cmp	r3, #5	@ tmp182,
	bhi	.L642	@,
	cmp	r5, #11	@ Code,
	beq	.L687	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r5, r2, #7	@ tmp440, <variable>.CodecStatus,
	cmp	r5, #7	@ tmp440,
	beq	.L688	@,
	movw	ip, #18228	@ tmp447,
	strb	r8, [r4, #8]	@ tmp171, <variable>.Is2ndFld
	str	r8, [r4, ip]	@ tmp171, <variable>.SlcNum
	cmp	r3, #5	@ tmp182,
	ldrls	pc, [pc, r3, asl #2]	@ tmp182
	b	.L678	@
.L663:
	.word	.L658
	.word	.L678
	.word	.L659
	.word	.L660
	.word	.L661
	.word	.L662
.L642:
	sub	lr, r5, #27	@ tmp733, Code,
	cmp	lr, #4	@ tmp733,
	bls	.L689	@,
	cmp	r5, #254	@ Code,
	beq	.L690	@,
.L678:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #0	@ Ret,
.L647:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L689:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L647	@
.L687:
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r0, lr, #7	@ tmp184, <variable>.CodecStatus,
	cmp	r0, #7	@ tmp184,
	beq	.L691	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, r8	@ Ret, tmp171
	b	.L647	@
.L690:
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.39338,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	ip, #:lower16:1128615492	@ tmp735,
	movw	r1, #:lower16:1213419593	@ tmp738,
	movt	ip, #:upper16:1128615492	@ tmp735,
	movt	r1, #:upper16:1213419593	@ tmp738,
	cmp	r0, ip	@, tmp735
	cmpeq	r5, r1	@, D.39338, tmp738
	bne	.L678	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r3, #1	@ tmp743,
	mov	r5, r3	@ Ret, tmp743
	strb	r3, [r4, #6]	@ tmp743, <variable>.IsWaitToDec
	orr	r0, r2, #16	@ tmp747, <variable>.CodecStatus,
	strb	r3, [r4, #7]	@ tmp743, <variable>.IsStreamEndFlag
	strb	r0, [r4, #0]	@ tmp747, <variable>.CodecStatus
	b	.L647	@
.L688:
	mov	r5, #1	@ tmp443,
	orr	lr, r2, #16	@ tmp441, <variable>.CodecStatus,
	strb	r5, [r4, #6]	@ tmp443, <variable>.IsWaitToDec
	strb	lr, [r4, #0]	@ tmp441, <variable>.CodecStatus
	b	.L647	@
.L659:
	mov	r0, #1	@ tmp454,
	strb	r0, [r4, #8]	@ tmp454, <variable>.Is2ndFld
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r1, #16	@,
	add	r0, r3, #508	@,,
	bl	__memzero	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	beq	.L660	@,
.L664:
	add	r2, r4, #18176	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r2, #56	@,,
	bl	__memzero	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, pCodecInf
	str	r0, [r2, #488]	@, <variable>.AdvPicSyntax.HdrLen
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L692	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #5534	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L647	@
.L661:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	ldr	r2, [fp, #-48]	@, %sfp
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L693	@,
.L676:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	b	.L647	@
.L662:
	mov	r0, r6	@, pBs
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #1	@ tmp731, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp731, <variable>.CodecStatus
	b	.L676	@
.L658:
	orr	r2, r2, #32	@ tmp452, <variable>.CodecStatus,
	mov	r0, r9	@, ChanID
	strb	r2, [r4, #0]	@ tmp452, <variable>.CodecStatus
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L647	@
.L660:
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r1, #176	@,
	add	r0, lr, #348	@,,
	ldrb	r5, [lr, #379]	@ zero_extendqisi2	@ D.39294, <variable>.AdvPicSyntax.REFDIST
	bl	__memzero	@
	ldr	ip, [fp, #-48]	@, %sfp
	strb	r5, [ip, #379]	@ D.39294, <variable>.AdvPicSyntax.REFDIST
	b	.L664	@
.L691:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	ldr	r2, [fp, #-48]	@, %sfp
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	bne	.L645	@,
	movw	r6, #18228	@ tmp185,
	ldr	r7, [r4, r6]	@ D.39272, <variable>.SlcNum
	cmp	r7, #255	@ D.39272,
	bgt	.L694	@,
	mov	r9, r7, asl #1	@ tmp753, D.39272,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	add	r6, r9, r7	@ tmp192, tmp753, D.39272
	movw	r0, #18240	@ tmp189,
	add	lr, r6, #1	@ tmp213, tmp192,
	add	r6, r4, r6, asl #4	@, tmp194, pCodecInf, tmp192,
	add	ip, r6, #18176	@, tmp194,
	add	lr, r4, lr, asl #4	@, tmp216, pCodecInf, tmp213,
	strb	r7, [r6, r0]	@ D.39272, <variable>.SlcNo
	add	r1, lr, #18176	@ tmp217, tmp216,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #56	@ tmp217, tmp217,
	str	ip, [fp, #-52]	@, %sfp
	add	r3, r6, #18176	@ tmp195, tmp194,
	add	ip, r0, #7	@, <variable>.TotalPos,
	str	ip, [fp, #-64]	@, %sfp
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	r0, #0	@ <variable>.TotalPos,
	add	r3, r3, #64	@ tmp195, tmp195,
	add	ip, ip, #56	@,,
	str	ip, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	movlt	r0, ip	@ <variable>.TotalPos,
	add	r0, sl, r0, asr #3	@, tmp209, pTmp, <variable>.TotalPos,
	movw	sl, #18232	@,
	str	r0, [r6, sl]	@ tmp209, <variable>.pStream
	ldr	ip, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	ip, ip, #7	@ tmp219, <variable>.TotalPos,
	str	ip, [lr, sl]	@ tmp219, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp231, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp231, <variable>.Len
	str	r3, [fp, #-56]	@,
	bl	MEM_Vir2Phy	@
	ldr	r3, [fp, #-56]	@,
	movw	ip, #18272	@ tmp247,
	add	r2, r6, #18176	@ tmp253, tmp194,
	add	r2, r2, #96	@ tmp253, tmp253,
	str	r0, [r3, #4]	@, <variable>.Phy_addr
	movw	r0, #30552	@ tmp254,
	ldr	r1, [r4, r0]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	movw	r3, #30528	@ tmp256,
	str	r1, [r6, ip]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r3, [r4, r3]	@ D.39611, <variable>.stCurPacket.BsVirAddr
	cmp	r3, #0	@ D.39611,
	beq	.L648	@,
	movw	r1, #30540	@ tmp257,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L648	@,
	ldr	ip, [fp, #-52]	@, %sfp
	movw	r0, #18264	@ tmp266,
	str	r8, [r6, r0]	@ tmp171, <variable>.BitOffset2
	str	r3, [ip, #4]	@ D.39611, <variable>.pStream2
	movw	ip, #30548	@ tmp281,
	ldr	r0, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r6, #18176	@ tmp272, tmp194,
	add	r3, r3, #88	@ tmp272, tmp272,
	add	r6, r6, #18176	@ tmp290, tmp194,
	add	r6, r6, #80	@ tmp290, tmp290,
	mov	ip, r0, asl #3	@ tmp283, <variable>.stCurPacket.BsLength,
	str	ip, [r3, #4]	@ tmp283, <variable>.Len2
	ldr	r0, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #30556	@ tmp300,
	str	r0, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L649:
	movw	r3, #18144	@ tmp351,
	movw	r1, #18148	@ tmp350,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.39601, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp352, <variable>.MbWidth, D.39601
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp352,
	beq	.L652	@,
	add	r2, r9, r7	@ tmp358, tmp753, D.39272
	ldr	sl, [fp, #-48]	@, %sfp
	add	r3, r3, #1	@ tmp362, D.39601,
	add	r0, sl, r2, asl #2	@, tmp360,, tmp358,
	add	r2, r4, r2, asl #4	@, tmp373, pCodecInf, tmp358,
	add	r3, r3, r3, lsr #31	@, tmp365, tmp362, tmp362,
	ldr	ip, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, ip, r3, asr #1	@ D.39593, <variable>.SLICE_ADDR, tmp365,
	movw	ip, #18256	@ tmp368,
	cmp	r3, #0	@ D.39593,
	str	r3, [r2, ip]	@ D.39593, <variable>.SlcEndMbn
	ble	.L653	@,
	cmp	r6, r3	@ totalMbMin1, D.39593
	bcc	.L681	@,
.L653:
	add	r7, r9, r7	@ tmp411, tmp753, D.39272
.L686:
	add	r0, r7, #1	@ tmp696, tmp695,
	add	r3, r4, r0, asl #4	@, tmp699, pCodecInf, tmp696,
	add	r1, r3, #18176	@ tmp700, tmp699,
	add	ip, r1, #56	@ tmp700, tmp700,
	ldr	r2, [ip, #4]	@ <variable>.Len, <variable>.Len
	cmp	r2, #0	@ <variable>.Len,
	ble	.L673	@,
	add	r7, r4, r7, asl #4	@, tmp707, pCodecInf, tmp695,
	add	r1, r7, #18176	@ tmp708, tmp707,
	add	ip, r1, #56	@ tmp708, tmp708,
	ldr	r2, [ip, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L674	@,
	add	r2, r7, #18176	@ tmp716, tmp707,
	add	r0, r2, #88	@ tmp716, tmp716,
	ldr	r3, [r0, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L673	@,
.L674:
	movw	r1, #18228	@ tmp719,
	ldr	r3, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	ip, r3, #1	@ tmp722, <variable>.SlcNum,
	str	ip, [r4, r1]	@ tmp722, <variable>.SlcNum
	b	.L647	@
.L692:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	ip, [fp, #-48]	@, %sfp
	ldr	r2, [ip, #488]	@ <variable>.AdvPicSyntax.HdrLen, <variable>.AdvPicSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp463, <variable>.AdvPicSyntax.HdrLen,
	str	r3, [ip, #488]	@ tmp463, <variable>.AdvPicSyntax.HdrLen
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r0, r6	@, pBs
	orr	r2, r1, #4	@ tmp466, <variable>.CodecStatus,
	strb	r2, [r4, #0]	@ tmp466, <variable>.CodecStatus
	bl	BsPos	@
	movw	ip, #30544	@ tmp469,
	ldr	r3, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r1, r0, #32	@ tmp468,,
	cmp	r1, r3, asl #3	@ tmp468, <variable>.stCurPacket.BsLength,
	bge	.L666	@,
	movw	r8, #18228	@ tmp472,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	ldr	r7, [r4, r8]	@ D.39683, <variable>.SlcNum
	movw	r0, #18240	@ tmp473,
	mov	r8, r7, asl #1	@ tmp752, D.39683,
	add	r6, r8, r7	@ tmp476, tmp752, D.39683
	add	lr, r6, #1	@ tmp497, tmp476,
	add	r6, r4, r6, asl #4	@, tmp478, pCodecInf, tmp476,
	add	lr, r4, lr, asl #4	@, tmp500, pCodecInf, tmp497,
	add	r3, r6, #18176	@ tmp487, tmp478,
	strb	r7, [r6, r0]	@ D.39683, <variable>.SlcNo
	add	r1, lr, #18176	@ tmp501, tmp500,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #56	@ tmp501, tmp501,
	add	r3, r3, #56	@ tmp487, tmp487,
	add	r9, r6, #18176	@ tmp479, tmp478,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	ip, r0, #7	@ tmp491, <variable>.TotalPos,
	add	r9, r9, #64	@ tmp479, tmp479,
	movlt	r0, ip	@ <variable>.TotalPos, tmp491
	add	r0, sl, r0, asr #3	@, tmp493, pTmp, <variable>.TotalPos,
	movw	sl, #18232	@,
	str	r0, [r6, sl]	@ tmp493, <variable>.pStream
	ldr	ip, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	ip, ip, #7	@ tmp503, <variable>.TotalPos,
	str	ip, [lr, sl]	@ tmp503, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp515, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp515, <variable>.Len
	str	r3, [fp, #-56]	@,
	bl	MEM_Vir2Phy	@
	movw	ip, #30552	@ tmp538,
	movw	r1, #18272	@ tmp531,
	add	r2, r6, #18176	@ tmp537, tmp478,
	add	r2, r2, #96	@ tmp537, tmp537,
	str	r0, [r9, #4]	@, <variable>.Phy_addr
	movw	r0, #30528	@ tmp540,
	ldr	r3, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r6, r1]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r1, [r4, r0]	@ D.39666, <variable>.stCurPacket.BsVirAddr
	ldr	r3, [fp, #-56]	@,
	cmp	r1, #0	@ D.39666,
	beq	.L667	@,
	movw	r0, #30540	@ tmp541,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L667	@,
	str	r1, [r3, #4]	@ D.39666, <variable>.pStream2
	movw	r1, #18264	@ tmp550,
	mov	ip, #0	@ tmp557,
	str	ip, [r6, r1]	@ tmp557, <variable>.BitOffset2
	movw	r1, #30548	@ tmp565,
	add	r3, r6, #18176	@ tmp556, tmp478,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #88	@ tmp556, tmp556,
	add	r6, r6, #18176	@ tmp574, tmp478,
	add	r6, r6, #80	@ tmp574, tmp574,
	mov	r1, ip, asl #3	@ tmp567, <variable>.stCurPacket.BsLength,
	str	r1, [r3, #4]	@ tmp567, <variable>.Len2
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #30556	@ tmp584,
	str	ip, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L668:
	movw	r3, #18144	@ tmp635,
	movw	r1, #18148	@ tmp634,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.39656, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp636, <variable>.MbWidth, D.39656
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp636,
	beq	.L671	@,
	ldr	ip, [fp, #-48]	@, %sfp
	add	r2, r8, r7	@ tmp642, tmp752, D.39683
	add	r3, r3, #1	@ tmp646, D.39656,
	add	r0, ip, r2, asl #2	@, tmp644,, tmp642,
	add	r2, r4, r2, asl #4	@, tmp657, pCodecInf, tmp642,
	add	r3, r3, r3, lsr #31	@, tmp649, tmp646, tmp646,
	ldr	ip, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, ip, r3, asr #1	@ D.39648, <variable>.SLICE_ADDR, tmp649,
	movw	ip, #18256	@ tmp652,
	cmp	r3, #0	@ D.39648,
	str	r3, [r2, ip]	@ D.39648, <variable>.SlcEndMbn
	ble	.L672	@,
	cmp	r6, r3	@ totalMbMin1, D.39648
	bcs	.L672	@,
.L681:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #1	@,
	mov	r5, #0	@ Ret,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	b	.L647	@
.L672:
	add	r7, r8, r7	@ tmp695, tmp752, D.39683
	b	.L686	@
.L645:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #5457	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L647	@
.L666:
	mov	r1, r7	@, pVc1Packet
	mov	r0, r9	@, ChanID
	bl	VC1_ClearCurPacket	@
	mov	r0, r5	@, Ret
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #5528	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	b	.L647	@
.L667:
	add	r2, r8, r7	@ tmp589, tmp752, D.39683
	mov	r3, #0	@ tmp593,
	add	r2, r4, r2, asl #4	@, tmp591, pCodecInf, tmp589,
	add	ip, r2, #18176	@ tmp624, tmp591,
	add	r6, ip, #56	@ tmp592, tmp592,
	add	r0, ip, #88	@ tmp600, tmp600,
	add	r1, ip, #80	@ tmp616, tmp616,
	add	ip, ip, #96	@ tmp624, tmp624,
	str	r3, [r6, #4]	@ tmp593, <variable>.pStream2
	movw	r6, #18264	@ tmp594,
	str	r3, [ip, #4]	@ tmp593, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp593, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp593, <variable>.Len2
	str	r3, [r1, #4]	@ tmp593, <variable>.Phy_addr2
	b	.L668	@
.L694:
	mov	r1, r9	@, ChanID
	mov	r0, r4	@, pCodecInf
	bl	VC1_ClearCurPic	@
	mov	r0, r5	@, Ret
	ldr	r2, [r4, r6]	@, <variable>.SlcNum
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r5, r8	@ Ret, tmp171
	bl	dprint_vfmw	@
	b	.L647	@
.L648:
	add	r2, r9, r7	@ tmp305, tmp753, D.39272
	mov	r3, #0	@ tmp309,
	add	r2, r4, r2, asl #4	@, tmp307, pCodecInf, tmp305,
	add	ip, r2, #18176	@ tmp340, tmp307,
	add	r6, ip, #56	@ tmp308, tmp308,
	add	r0, ip, #88	@ tmp316, tmp316,
	add	r1, ip, #80	@ tmp332, tmp332,
	add	ip, ip, #96	@ tmp340, tmp340,
	str	r3, [r6, #4]	@ tmp309, <variable>.pStream2
	movw	r6, #18264	@ tmp310,
	str	r3, [ip, #4]	@ tmp309, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp309, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp309, <variable>.Len2
	str	r3, [r1, #4]	@ tmp309, <variable>.Phy_addr2
	b	.L649	@
.L671:
	add	r3, r8, r7	@ tmp673, tmp752, D.39683
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #18256	@ tmp677,
	add	r2, r0, r3, asl #2	@, tmp675,, tmp673,
	add	r0, r4, r3, asl #4	@, tmp682, pCodecInf, tmp673,
	ldr	r3, [r2, #528]	@ temp.2256, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2256
	str	r3, [r0, r1]	@ temp.2256, <variable>.SlcEndMbn
	bcs	.L672	@,
.L680:
	ldr	r2, [r2, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC8	@,
	str	r6, [sp, #0]	@ totalMbMin1,
	mov	r5, ip	@ Ret, <variable>.Is2ndFld
	bl	dprint_vfmw	@
	b	.L647	@
.L693:
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orr	r0, r2, #2	@ tmp727, <variable>.CodecStatus,
	strb	r0, [r4, #0]	@ tmp727, <variable>.CodecStatus
	b	.L676	@
.L673:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r5, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L647	@
.L652:
	add	r3, r9, r7	@ tmp389, tmp753, D.39272
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #18256	@ tmp393,
	add	r2, r0, r3, asl #2	@, tmp391,, tmp389,
	add	r0, r4, r3, asl #4	@, tmp398, pCodecInf, tmp389,
	ldr	r3, [r2, #528]	@ temp.2245, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2245
	str	r3, [r0, r1]	@ temp.2245, <variable>.SlcEndMbn
	bcs	.L653	@,
	b	.L680	@
	.fnend
	.size	VC1_Vfmw_ParseAdvHdr, .-VC1_Vfmw_ParseAdvHdr
	.align	2
	.global	VC1_Vfmw_ParseMPBPicHdr
	.type	VC1_Vfmw_ParseMPBPicHdr, %function
VC1_Vfmw_ParseMPBPicHdr:
	.fnstart
.LFB1386:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.37871,
	strb	r7, [r4, #254]	@ D.37871, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37871,
	bne	.L709	@,
.L696:
	mov	r3, #0	@ D.37875,
	mov	r0, r3	@, D.37875
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L709:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.37871
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37871,
	movhi	r3, #0	@ tmp158,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp158, <variable>.SMPPicSyntax.HALFQP
	bls	.L710	@,
.L698:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp162,
	strneb	r3, [r4, #256]	@ tmp162, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L711	@,
.L700:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp166,
	strneb	r3, [r4, #257]	@ tmp166, <variable>.SMPPicSyntax.MVRANGE
	beq	.L712	@,
.L702:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	moveq	r0, #3	@ iftmp.518,
	movne	r0, #1	@ iftmp.518,
	strb	r0, [r4, #259]	@ iftmp.518, <variable>.SMPPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L696	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.37908, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.37908,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L713	@,
.L705:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L714	@,
.L706:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37875,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.37875
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L713:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L705	@
.L710:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L698	@
.L712:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L702	@
.L711:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L700	@
.L714:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37918,
	strb	r0, [r4, #265]	@ D.37918, <variable>.SMPPicSyntax.TTMBF
	cmp	r0, #1	@ D.37918,
	bne	.L706	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L706	@
	.fnend
	.size	VC1_Vfmw_ParseMPBPicHdr, .-VC1_Vfmw_ParseMPBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPPicHdr
	.type	VC1_Vfmw_ParseSMPPPicHdr, %function
VC1_Vfmw_ParseSMPPPicHdr:
	.fnstart
.LFB1385:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.37789,
	strb	r7, [r4, #254]	@ D.37789, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37789,
	bne	.L730	@,
.L716:
	mov	r3, #0	@ D.37793,
	mov	r0, r3	@, D.37793
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L730:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.37789
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37789,
	movhi	r3, #0	@ tmp165,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp165, <variable>.SMPPicSyntax.HALFQP
	bls	.L731	@,
.L718:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp169,
	strneb	r3, [r4, #256]	@ tmp169, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L732	@,
.L720:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp173,
	strneb	r3, [r4, #257]	@ tmp173, <variable>.SMPPicSyntax.MVRANGE
	beq	.L733	@,
.L722:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r0, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	ldrneb	r1, [r4, #258]	@ zero_extendqisi2	@ prephitmp.2301, <variable>.SMPPicSyntax.RESPIC
	beq	.L734	@,
.L724:
	mov	r0, r6	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, r0	@ D.37822,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r1, r0	@ D.37826,
	strb	r1, [r4, #259]	@ D.37826, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #4	@ D.37826,
	beq	.L735	@,
.L725:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L716	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.37843, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.37843,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L736	@,
.L726:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, r0	@ D.37848,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L737	@,
.L727:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37793,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.37793
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L736:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L726	@
.L731:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L718	@
.L735:
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #260]	@, <variable>.SMPPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #261]	@, <variable>.SMPPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #262]	@, <variable>.SMPPicSyntax.LUMSHIFT
	b	.L725	@
.L734:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2301,
	strb	r1, [r4, #258]	@ prephitmp.2301, <variable>.SMPPicSyntax.RESPIC
	b	.L724	@
.L733:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L722	@
.L732:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L720	@
.L737:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.37853,
	strb	r2, [r4, #265]	@ D.37853, <variable>.SMPPicSyntax.TTMBF
	cmp	r2, #1	@ D.37853,
	bne	.L727	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L727	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPPicHdr, .-VC1_Vfmw_ParseSMPPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPicHdr
	.type	VC1_Vfmw_ParseSMPPicHdr, %function
VC1_Vfmw_ParseSMPPicHdr:
	.fnstart
.LFB1387:
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
	ldrb	r7, [r2, #258]	@ zero_extendqisi2	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r0, r1	@, pCodecInf
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r1, r7	@, RESPIC
	bl	VC1_SetCurPicResolutionInfo	@
	ldr	r3, [r6, #16]	@ <variable>.BsLen, <variable>.BsLen
	cmp	r3, #1	@ <variable>.BsLen,
	ble	.L762	@,
	add	r0, r4, #248	@, pSyntax,
	mov	r1, #100	@,
	bl	__memzero	@
	add	r2, r5, #18176	@, pCodecInf,
	add	r0, r2, #56	@,,
	strb	r7, [r4, #258]	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	mov	r1, #12288	@,
	movw	r7, #30520	@ tmp163,
	bl	__memzero	@
	ldr	r2, [r5, r7]	@ D.37967, <variable>.PicCnt
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.FINTERPFLAG, <variable>.SMPSeqSyntax.FINTERPFLAG
	cmp	r1, #0	@ <variable>.SMPSeqSyntax.FINTERPFLAG,
	ldreqb	r2, [r4, #248]	@ zero_extendqisi2	@ prephitmp.2331, <variable>.SMPPicSyntax.INTERPFRM
	str	r0, [r4, #324]	@, <variable>.SMPPicSyntax.HdrLen
	bne	.L763	@,
.L743:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.RANGERED, <variable>.SMPSeqSyntax.RANGERED
	cmp	ip, #0	@ <variable>.SMPSeqSyntax.RANGERED,
	strb	r0, [r4, #249]	@, <variable>.SMPPicSyntax.FRMCNT
	bne	.L764	@,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	bne	.L745	@,
.L768:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r0, r0, #0	@ prephitmp.2342,,
	movne	r0, #1	@ prephitmp.2342
	strb	r0, [r4, #251]	@ prephitmp.2342, <variable>.SMPPicSyntax.PTYPE
.L746:
	strb	r0, [r5, #2]	@ prephitmp.2342, <variable>.PicCodingType
	mov	r0, #0	@ tmp183,
	strb	r0, [r5, #4]	@ tmp183, <variable>.PicStructure
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.PTYPE, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.SMPPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.SMPPicSyntax.PTYPE
	b	.L749	@
.L754:
	.word	.L761
	.word	.L751
	.word	.L752
	.word	.L749
	.word	.L753
.L745:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.37993,
	beq	.L760	@,
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L765	@,
	mov	lr, #2	@ tmp195,
	mov	r0, r6	@, pBs
	strb	lr, [r4, #251]	@ tmp195, <variable>.SMPPicSyntax.PTYPE
	add	r1, r4, #344	@, pSyntax,
	add	r2, r4, #251	@, pSyntax,
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.38007,
	strb	r0, [r4, #252]	@ D.38007, <variable>.SMPPicSyntax.BFRACTION
	cmp	r0, #22	@ D.38007,
	mov	r3, r0	@ D.38007, D.38007
	beq	.L766	@,
	cmp	r0, #21	@ D.38007,
	beq	.L749	@,
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2342, <variable>.SMPPicSyntax.PTYPE
	b	.L746	@
.L752:
	ldrb	r1, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	beq	.L767	@,
.L749:
	mov	r7, #0	@ Ret,
.L740:
	mov	r0, r7	@, Ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L762:
	mov	r7, #1	@ Ret,
	mov	r0, #5	@ tmp155,
	strb	r0, [r4, #251]	@ tmp155, <variable>.SMPPicSyntax.PTYPE
	strb	r0, [r5, #2]	@ tmp155, <variable>.PicCodingType
	mov	r0, r7	@, Ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L764:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	strb	r0, [r4, #250]	@, <variable>.SMPPicSyntax.RANGEREDFRM
	bne	.L745	@,
	b	.L768	@
.L763:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ prephitmp.2331,
	strb	r2, [r4, #248]	@ prephitmp.2331, <variable>.SMPPicSyntax.INTERPFRM
	b	.L743	@
.L765:
	mov	r0, #0	@ tmp178,
.L760:
	strb	r0, [r4, #251]	@ tmp178, <variable>.SMPPicSyntax.PTYPE
	b	.L746	@
.L753:
	ldrb	r7, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r7, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L749	@,
.L761:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r7, r0	@ Ret,
.L755:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #324]	@ <variable>.SMPPicSyntax.HdrLen, <variable>.SMPPicSyntax.HdrLen
	movw	ip, #30544	@ tmp190,
	rsb	r3, r1, r0	@ tmp189, <variable>.SMPPicSyntax.HdrLen,
	mov	r0, r6	@, pBs
	str	r3, [r4, #324]	@ tmp189, <variable>.SMPPicSyntax.HdrLen
	ldr	r4, [r5, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.38027, <variable>.stCurPacket.BsLength,
	rsb	r2, r0, r4	@ tmp192,, D.38027
	cmp	r2, #0	@ tmp192,
	bgt	.L740	@,
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r7, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L740	@
.L751:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L755	@
.L767:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L755	@
.L766:
	strb	r3, [r4, #252]	@ D.38007, <variable>.SMPPicSyntax.BFRACTION
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2342, <variable>.SMPPicSyntax.PTYPE
	b	.L746	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPicHdr, .-VC1_Vfmw_ParseSMPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseHeader
	.type	VC1_Vfmw_ParseHeader, %function
VC1_Vfmw_ParseHeader:
	.fnstart
.LFB1409:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L770	@,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r2, r1	@, pSyntax
	ldr	r0, [r0, #3128]	@, <variable>.pBs
	mov	r1, r4	@, pCodecInf
	orr	ip, lr, #3	@ tmp143, <variable>.CodecStatus,
	strb	ip, [r4, #0]	@ tmp143, <variable>.CodecStatus
	bl	VC1_Vfmw_ParseSMPPicHdr	@
	cmp	r0, #1	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #20	@ tmp148, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp148, <variable>.CodecStatus
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L770:
	bl	VC1_Vfmw_ParseAdvHdr	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseHeader, .-VC1_Vfmw_ParseHeader
	.align	2
	.global	VC1_Vfmw_MemMove
	.type	VC1_Vfmw_MemMove, %function
VC1_Vfmw_MemMove:
	.fnstart
.LFB1369:
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
	movw	r2, #18148	@ tmp143,
	ldr	ip, [r0, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #18168	@ tmp137,
	ldr	lr, [r0, r3]	@ <variable>.DDR_Stride, <variable>.DDR_Stride
	movw	r1, #18132	@ tmp156,
	add	r2, ip, #1	@ tmp144, <variable>.MbHeight,
	movw	r3, #18128	@ tmp135,
	ldr	r3, [r0, r3]	@ <variable>.pCurFrm, <variable>.pCurFrm
	add	ip, lr, lr, asl #1	@, tmp141, <variable>.DDR_Stride, <variable>.DDR_Stride,
	add	lr, r2, r2, lsr #31	@, tmp148, tmp144, tmp144,
	ldr	r1, [r0, r1]	@ <variable>.pRef, <variable>.pRef
	mov	r0, ip, asl #5	@ tmp142, tmp141,
	mov	ip, lr, asr #1	@ tmp149, tmp148,
	mul	r2, ip, r0	@ tmp150, tmp149, tmp142
	ldr	r1, [r1, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r3, #1064]	@, <variable>.img.luma_vir_addr
	mov	r2, r2, asr #1	@, tmp150,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_MemMove, .-VC1_Vfmw_MemMove
	.align	2
	.global	VC1_WriteSliceMsg
	.type	VC1_WriteSliceMsg, %function
VC1_WriteSliceMsg:
	.fnstart
.LFB1361:
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
	movw	r2, #18228	@ tmp135,
	ldr	lr, [r0, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	mov	ip, r1	@ pVc1DecParam, pVc1DecParam
	mov	r3, r0	@ pCodecInf, pCodecInf
	add	r1, r0, #18176	@, pCodecInf,
	add	r0, ip, #84	@, pVc1DecParam,
	add	r1, r1, #56	@,,
	strb	lr, [ip, #74]	@ <variable>.SlcNum, <variable>.SlcNum
	ldr	ip, [r3, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, ip, ip, asl #1	@, tmp143, <variable>.SlcNum, <variable>.SlcNum,
	mov	r2, r2, asl #4	@, tmp143,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_WriteSliceMsg, .-VC1_WriteSliceMsg
	.align	2
	.global	VC1_Vfmw_DecodeArbiter
	.type	VC1_Vfmw_DecodeArbiter, %function
VC1_Vfmw_DecodeArbiter:
	.fnstart
.LFB1368:
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
	movw	r3, #:lower16:78208	@ tmp149,
	movt	r3, #:upper16:78208	@ tmp149,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ D.36976, <variable>.CodecInfo.CodecStatus
	tst	r2, #16	@ D.36976,
	beq	.L778	@,
	movw	r1, #:lower16:108844	@ tmp154,
	movt	r1, #:upper16:108844	@ tmp154,
	bic	r2, r2, #20	@ tmp152, D.36976,
	strb	r2, [r0, r3]	@ tmp152, <variable>.CodecInfo.CodecStatus
	ldr	r0, [r0, r1]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r3, r0, #2	@ tmp155, <variable>.CodecInfo.UsedDecMode,
	cmp	r3, #1	@ tmp155,
	bls	.L779	@,
.L801:
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #8]	@ prephitmp.2446, <variable>.s32DecMode
.L780:
	movw	r3, #:lower16:108844	@ tmp225,
	movt	r3, #:upper16:108844	@ tmp225,
	sub	ip, r2, #1	@ tmp226, prephitmp.2446,
	str	r2, [r4, r3]	@ prephitmp.2446, <variable>.CodecInfo.UsedDecMode
	cmp	ip, #3	@ tmp226,
	ldrls	pc, [pc, ip, asl #2]	@ tmp226
	b	.L783	@
.L788:
	.word	.L784
	.word	.L785
	.word	.L786
	.word	.L787
.L784:
	movw	lr, #:lower16:78210	@ tmp227,
	movt	lr, #:upper16:78210	@ tmp227,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ D.37013, <variable>.CodecInfo.PicCodingType
	cmp	r2, #4	@ D.37013,
	cmpne	r2, #2	@, D.37013,
	beq	.L786	@,
.L783:
	mov	r2, #1	@ ret,
.L791:
	movw	r0, #:lower16:96416	@ tmp252,
	movt	r0, #:upper16:96416	@ tmp252,
	ldr	r3, [r4, r0]	@ D.37038, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.37038,
	bne	.L792	@,
.L803:
	movw	r1, #:lower16:78210	@ tmp253,
	movt	r1, #:upper16:78210	@ tmp253,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ D.37040, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ D.37040,
	cmpne	r3, #5	@, D.37040,
	beq	.L793	@,
	cmp	r3, #4	@ D.37040,
	beq	.L793	@,
	cmp	r3, #2	@ D.37040,
	bne	.L794	@,
.L793:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
.L795:
	movw	r5, #:lower16:109232	@ tmp273,
	movt	r5, #:upper16:109232	@ tmp273,
	add	lr, r4, #77824	@, pVC1_CTX_S,
	add	r0, lr, #384	@,,
	ldr	r1, [r4, r5]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp275,
	movt	r2, #:upper16:g_event_report	@ tmp275,
	ldr	r3, [r2, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L778	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.462
	mov	r0, #0	@ ret.2469,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L805:
	cmp	r3, #2	@ prephitmp.2448,
	bne	.L790	@,
	movw	r2, #:lower16:108776	@ tmp241,
	movt	r2, #:upper16:108776	@ tmp241,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r3, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L783	@,
.L786:
	mov	r2, #0	@ ret,
.L806:
	movw	r0, #:lower16:96416	@ tmp252,
	movt	r0, #:upper16:96416	@ tmp252,
	ldr	r3, [r4, r0]	@ D.37038, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.37038,
	beq	.L803	@,
.L792:
	cmp	r3, #1	@ D.37038,
	bls	.L804	@,
.L794:
	cmp	r2, #0	@ ret,
	beq	.L795	@,
	movw	r1, #:lower16:81304	@ tmp278,
	movt	r1, #:upper16:81304	@ tmp278,
	ldrsb	r0, [r4, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L798	@,
	add	r0, r4, #80896	@ tmp283, pVC1_CTX_S,
	add	r2, r4, #84992	@ tmp282, pVC1_CTX_S,
	add	r3, r0, #472	@ tmp283, tmp283,
	add	lr, r2, #496	@ tmp282, tmp282,
	add	ip, r4, #84992	@, pVC1_CTX_S,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp283,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp282,,,,
	add	r3, r4, #80896	@, pVC1_CTX_S,
	add	r1, r3, #720	@,,
	add	r0, ip, #744	@,,
	mov	r2, #100	@,
	bl	memcpy	@
	mov	r0, #1	@ ret.2469,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L778:
	mov	r0, #0	@ ret.2469,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L779:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.2446, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.2446,
	cmpne	r2, #1	@, prephitmp.2446,
	bhi	.L780	@,
	movw	r5, #:lower16:109232	@ tmp167,
	movw	r8, #:lower16:96424	@ tmp169,
	movt	r5, #:upper16:109232	@ tmp167,
	movt	r8, #:upper16:96424	@ tmp169,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	movw	sl, #:lower16:96420	@ tmp193,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movt	sl, #:upper16:96420	@ tmp193,
	bl	FSP_GetFsImagePtr	@
	mov	r6, #0	@ tmp183,
	mov	r7, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r7, #184]	@ tmp183, <variable>.p_usrdat
	str	r6, [r7, #172]	@ tmp183, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r7, #176]	@ tmp183, <variable>.p_usrdat
	str	r6, [r7, #180]	@ tmp183, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, sl]	@ tmp183, <variable>.CodecInfo.FwdFsID
	str	r6, [r4, r8]	@ tmp183, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #:lower16:96340	@ tmp205,
	movt	r2, #:upper16:96340	@ tmp205,
	movw	r3, #:lower16:96416	@ tmp203,
	movt	r3, #:upper16:96416	@ tmp203,
	ldr	r1, [r4, r2]	@ D.37006, <variable>.CodecInfo.pRef
	str	r6, [r4, r3]	@ tmp183, <variable>.CodecInfo.RefNum
	cmp	r1, r6	@ D.37006,
	str	r0, [r4, sl]	@ D.37005, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r8]	@ D.37005, <variable>.CodecInfo.BwdFsID
	beq	.L801	@,
	movw	lr, #:lower16:96344	@ tmp207,
	movt	lr, #:upper16:96344	@ tmp207,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	r0, #0	@ <variable>.CodecInfo.pRef,
	strneb	r6, [r1, #1]	@ tmp183, <variable>.is_to_display
	ldrne	r1, [r4, lr]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r6, [r1, #1]	@ tmp183, <variable>.is_to_display
	ldrne	r2, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r6, [r2, #0]	@ tmp183, <variable>.is_to_ref
	ldrne	lr, [r4, lr]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r6, [lr, #0]	@ tmp183, <variable>.is_to_ref
	b	.L801	@
.L787:
	movw	ip, #:lower16:78210	@ tmp237,
	movt	ip, #:upper16:78210	@ tmp237,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.2448, <variable>.CodecInfo.PicCodingType
	cmp	r3, #0	@ prephitmp.2448,
	movweq	r2, #:lower16:108776	@ tmp238,
	movteq	r2, #:upper16:108776	@ tmp238,
	streq	r3, [r4, r2]	@ prephitmp.2448, <variable>.CodecInfo.PPicFound
	bne	.L805	@,
.L790:
	cmp	r3, #1	@ prephitmp.2448,
	cmpne	r3, #5	@, prephitmp.2448,
	bne	.L783	@,
	movw	lr, #:lower16:108776	@ tmp250,
	movt	lr, #:upper16:108776	@ tmp250,
	mov	r2, #1	@ tmp251,
	str	r2, [r4, lr]	@ tmp251, <variable>.CodecInfo.PPicFound
	b	.L791	@
.L785:
	movw	r1, #:lower16:78210	@ tmp235,
	movt	r1, #:upper16:78210	@ tmp235,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r0, #0	@ <variable>.CodecInfo.PicCodingType,
	beq	.L783	@,
	mov	r2, #0	@ ret,
	b	.L806	@
.L798:
	add	r0, r4, #84992	@, pVC1_CTX_S,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #488	@,,
	mov	r2, #172	@,
	add	r0, r0, #512	@,,
	add	r5, r4, #84992	@ tmp298, pVC1_CTX_S,
	bl	memcpy	@
	add	r2, r4, #80896	@ tmp299, pVC1_CTX_S,
	add	lr, r2, #660	@ tmp299, tmp299,
	add	ip, r5, #684	@ tmp298, tmp298,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp328,,,,
	mov	r5, ip	@ tmp329, tmp298
	stmia	r5!, {r0, r1, r2, r3}	@ tmp329,,,,
	mov	ip, r5	@ tmp331, tmp329
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp330,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp332,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	add	r3, r4, #84992	@, pVC1_CTX_S,
	ldmia	lr, {r0, r1, r2}	@ tmp332,,,
	add	lr, r4, #80896	@, pVC1_CTX_S,
	stmia	ip, {r0, r1, r2}	@ tmp333,,,
	add	r1, lr, #820	@,,
	add	r0, r3, #844	@,,
	mov	r2, #176	@,
	bl	memcpy	@
	movw	ip, #:lower16:96436	@ tmp312,
	movt	ip, #:upper16:96436	@ tmp312,
	movw	r0, #:lower16:81760	@ tmp307,
	movt	r0, #:upper16:81760	@ tmp307,
	movw	r3, #:lower16:78212	@ tmp306,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum
	movt	r3, #:upper16:78212	@ tmp306,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r0, r4, #84992	@, pVC1_CTX_S,
	add	r1, r1, #996	@,,
	add	r2, r2, r2, asl #1	@, tmp316, <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum,
	add	r0, r0, #1020	@,,
	strb	ip, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.PicStructure
	mov	r2, r2, asl #2	@, tmp316,
	bl	memcpy	@
	mov	r0, #1	@ ret.2469,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L804:
	movw	r3, #:lower16:78210	@ tmp262,
	movt	r3, #:upper16:78210	@ tmp262,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.37049, <variable>.CodecInfo.PicCodingType
	cmp	ip, #4	@ D.37049,
	cmpne	ip, #2	@, D.37049,
	bne	.L794	@,
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L795	@
	.fnend
	.size	VC1_Vfmw_DecodeArbiter, .-VC1_Vfmw_DecodeArbiter
	.align	2
	.global	VC1_WritePicMsg
	.type	VC1_WritePicMsg, %function
VC1_WritePicMsg:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #:lower16:109232	@ tmp149,
	movw	r6, #:lower16:96428	@ tmp151,
	movt	r2, #:upper16:109232	@ tmp149,
	movt	r6, #:upper16:96428	@ tmp151,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pVc1DecParam, pVc1DecParam
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	r3, #:lower16:81304	@ tmp153,
	movt	r3, #:upper16:81304	@ tmp153,
	str	r0, [fp, #-52]	@, %sfp
	ldrsb	r3, [r4, r3]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L808	@,
	movw	r6, #:lower16:85880	@ tmp155,
	movt	r6, #:upper16:85880	@ tmp155,
	movw	sl, #:lower16:85504	@ tmp158,
	movt	sl, #:upper16:85504	@ tmp158,
	ldr	r9, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r7, #:lower16:85837	@ tmp161,
	movt	r7, #:upper16:85837	@ tmp161,
	movw	r2, #:lower16:108796	@ tmp165,
	movt	r2, #:upper16:108796	@ tmp165,
	movw	r1, #:lower16:108792	@ tmp180,
	strb	r9, [r5, #5]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.fcm
	movt	r1, #:upper16:108792	@ tmp180,
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	strb	r8, [r5, #4]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.profile
	movw	r8, #:lower16:85877	@ tmp185,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ iftmp.437, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	movt	r8, #:upper16:85877	@ tmp185,
	cmp	r0, #4	@ iftmp.437,
	moveq	r0, #3	@ iftmp.437,
	strb	r0, [r5, #3]	@ iftmp.437, <variable>.ptype
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r6, #:lower16:85680	@ tmp188,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movt	r6, #:upper16:85680	@ tmp188,
	cmp	ip, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	movw	ip, #:lower16:85868	@ tmp191,
	addeq	lr, lr, #1	@ tmp166, <variable>.CodecInfo.CurPicMbHeight,
	movt	ip, #:upper16:85868	@ tmp191,
	addeq	lr, lr, lr, lsr #31	@, tmp170, tmp166, tmp166,
	moveq	lr, lr, asr #1	@ tmp171, tmp170,
	sub	r3, lr, #1	@ tmp178, <variable>.CodecInfo.CurPicMbHeight,
	strb	r3, [r5, #7]	@ tmp178, <variable>.mbheight
	ldr	r9, [r4, r1]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movw	r3, #:lower16:78216	@ tmp194,
	movt	r3, #:upper16:78216	@ tmp194,
	movw	lr, #:lower16:86004	@,
	sub	sl, r9, #1	@ tmp183, <variable>.CodecInfo.CurPicMbWidth,
	strb	sl, [r5, #6]	@ tmp183, <variable>.mbwidth
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movt	lr, #:upper16:86004	@,
	movw	sl, #:lower16:96392	@ tmp198,
	movt	sl, #:upper16:96392	@ tmp198,
	movw	r9, #:lower16:85952	@,
	movt	r9, #:upper16:85952	@,
	strb	r7, [r5, #10]	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.curparity
	movw	r8, #:lower16:96408	@ tmp207,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER
	movt	r8, #:upper16:96408	@ tmp207,
	movw	r7, #:lower16:85866	@ tmp215,
	movt	r7, #:upper16:85866	@ tmp215,
	movw	r6, #:lower16:85681	@ tmp218,
	movt	r6, #:upper16:85681	@ tmp218,
	strb	r0, [r5, #8]	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.loopfilter
	movw	r0, #:lower16:85836	@ tmp224,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.CodecInfo.AdvPicSyntax.NUMREF
	movw	ip, #:lower16:85685	@ tmp221,
	movt	ip, #:upper16:85685	@ tmp221,
	movt	r0, #:upper16:85836	@ tmp224,
	strb	r2, [r5, #11]	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.numref
	str	lr, [fp, #-60]	@, %sfp
	movw	lr, #:lower16:85839	@ tmp230,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	lr, #:upper16:85839	@ tmp230,
	movw	r3, #:lower16:85846	@ tmp233,
	movt	r3, #:upper16:85846	@ tmp233,
	strb	r1, [r5, #9]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movw	r1, #1464	@,
	str	r9, [fp, #-48]	@, %sfp
	movw	r9, #:lower16:85686	@ tmp239,
	ldr	r2, [r4, sl]	@, <variable>.CodecInfo.RefList0.ImgObj
	movt	r9, #:upper16:85686	@ tmp239,
	mla	sl, r1, r2, r4	@,,, pCtx
	add	r2, sl, #88064	@ tmp203,,
	str	sl, [fp, #-56]	@, %sfp
	add	sl, r2, #512	@ tmp203, tmp203,
	ldrb	r2, [sl, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r2, [r5, #12]	@ <variable>.PicStruct, <variable>.fwd_fcm
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	mla	r8, r1, sl, r4	@ tmp211,, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r2, r8, #88064	@ tmp212, tmp211,
	add	sl, r2, #512	@ tmp212, tmp212,
	ldrb	r8, [sl, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r8, [r5, #13]	@ <variable>.PicStruct, <variable>.bwd_fcm
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.CodecInfo.AdvPicSyntax.CONDOVER
	strb	r1, [r5, #17]	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.condover
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.CodecInfo.AdvEntSyntax.FASTUVMC
	strb	r7, [r5, #15]	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.CodecInfo.AdvEntSyntax.OVERLAP
	strb	r2, [r5, #16]	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.overlap
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.CodecInfo.AdvPicSyntax.RNDCTRL
	strb	r6, [r5, #14]	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.rndctrl
	ldr	ip, [fp, #-60]	@, %sfp
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT
	strb	sl, [r5, #20]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	r8, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.CodecInfo.AdvPicSyntax.HALFQP
	strb	r8, [r5, #21]	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.halfqp
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	strb	r1, [r5, #19]	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.pqindex
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r0, [r4, r7]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.CodecInfo.AdvPicSyntax.PQUANT
	strb	r0, [r5, #18]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.pquant
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ D.36326, <variable>.CodecInfo.AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.36326,
	bne	.L812	@,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	cmp	r3, #8	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX,
	movhi	r1, #0	@, tmp242
	movls	r1, #1	@, tmp242
	strb	r1, [r5, #22]	@ tmp242, <variable>.buniform
.L813:
	movw	r0, #:lower16:85998	@ tmp252,
	movt	r0, #:upper16:85998	@ tmp252,
	movw	ip, #:lower16:85997	@ tmp255,
	movt	ip, #:upper16:85997	@ tmp255,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL
	movw	lr, #:lower16:85683	@ tmp258,
	movt	lr, #:upper16:85683	@ tmp258,
	movw	r7, #:lower16:85996	@ tmp261,
	movt	r7, #:upper16:85996	@ tmp261,
	movw	r9, #:lower16:85849	@,
	strb	r6, [r5, #26]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movw	sl, #:lower16:86008	@ tmp264,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE
	movt	sl, #:upper16:86008	@ tmp264,
	movw	r8, #:lower16:85999	@ tmp267,
	movt	r8, #:upper16:85999	@ tmp267,
	movw	r0, #:lower16:85850	@ tmp270,
	movt	r0, #:upper16:85850	@ tmp270,
	strb	r1, [r5, #25]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movw	r6, #:lower16:85851	@ tmp273,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.CodecInfo.AdvEntSyntax.DQUANT
	movt	r6, #:upper16:85851	@ tmp273,
	movw	ip, #:lower16:85869	@ tmp276,
	movt	ip, #:upper16:85869	@ tmp276,
	movw	lr, #:lower16:85861	@ tmp279,
	movt	lr, #:upper16:85861	@ tmp279,
	strb	r2, [r5, #24]	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.dquant
	movw	r1, #:lower16:96340	@ tmp283,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM
	movt	r1, #:upper16:96340	@ tmp283,
	str	r9, [fp, #-144]	@, %sfp
	movw	r2, #:lower16:96336	@ tmp292,
	movt	r2, #:upper16:96336	@ tmp292,
	str	r3, [fp, #-48]	@, %sfp
	movw	r3, #:lower16:85877	@ tmp284,
	ldr	r7, [fp, #-48]	@, %sfp
	movt	r3, #:upper16:85877	@ tmp284,
	strb	r7, [r5, #27]	@, <variable>.dquantfrm
	movw	r7, #:lower16:85867	@,
	ldr	r9, [fp, #-144]	@, %sfp
	movt	r7, #:upper16:85867	@,
	movt	r9, #:upper16:85849	@,
	str	r9, [fp, #-144]	@, %sfp
	ldr	sl, [r4, sl]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode
	movw	r9, #:lower16:85860	@,
	str	r7, [fp, #-48]	@, %sfp
	movt	r9, #:upper16:85860	@,
	movw	r7, #:lower16:85684	@,
	str	r9, [fp, #-56]	@, %sfp
	movt	r7, #:upper16:85684	@,
	strb	sl, [r5, #28]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	str	r7, [fp, #-60]	@, %sfp
	movw	sl, #:lower16:85856	@,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp
	movt	sl, #:upper16:85856	@,
	movw	r9, #:lower16:85858	@,
	str	sl, [fp, #-64]	@, %sfp
	movt	r9, #:upper16:85858	@,
	movw	sl, #:lower16:85859	@,
	str	r9, [fp, #-68]	@, %sfp
	movt	sl, #:upper16:85859	@,
	strb	r7, [r5, #23]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movw	r9, #:lower16:85857	@,
	str	sl, [fp, #-72]	@, %sfp
	movt	r9, #:upper16:85857	@,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	movw	r8, #:lower16:85873	@,
	str	r9, [fp, #-76]	@, %sfp
	movt	r8, #:upper16:85873	@,
	movw	sl, #:lower16:85871	@,
	str	r8, [fp, #-80]	@, %sfp
	movt	sl, #:upper16:85871	@,
	strb	r7, [r5, #29]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.mvmode
	str	sl, [fp, #-84]	@, %sfp
	movw	r0, #:lower16:85875	@,
	ldrb	r9, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	movt	r0, #:upper16:85875	@,
	movw	r7, #:lower16:85876	@,
	str	r0, [fp, #-88]	@, %sfp
	movt	r7, #:upper16:85876	@,
	movw	r8, #:lower16:85870	@,
	str	r7, [fp, #-92]	@, %sfp
	movt	r8, #:upper16:85870	@,
	strb	r9, [r5, #30]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.mvmode2
	movw	sl, #:lower16:85874	@,
	str	r8, [fp, #-96]	@, %sfp
	movt	sl, #:upper16:85874	@,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.CodecInfo.AdvPicSyntax.REFFIELD
	movw	r6, #:lower16:85872	@,
	str	sl, [fp, #-100]	@, %sfp
	movt	r6, #:upper16:85872	@,
	movw	r7, #:lower16:85838	@,
	str	r6, [fp, #-104]	@, %sfp
	movt	r7, #:upper16:85838	@,
	strb	r0, [r5, #36]	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.reffiled
	str	r7, [fp, #-108]	@, %sfp
	movw	r9, #:lower16:85855	@,
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.CodecInfo.AdvPicSyntax.DMVRANGE
	movt	r9, #:upper16:85855	@,
	movw	r8, #:lower16:85854	@,
	str	r9, [fp, #-112]	@, %sfp
	movt	r8, #:upper16:85854	@,
	movw	ip, #:lower16:85865	@,
	str	r8, [fp, #-116]	@, %sfp
	movt	ip, #:upper16:85865	@,
	strb	sl, [r5, #35]	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.dmvrange
	movw	r0, #:lower16:85862	@,
	str	ip, [fp, #-120]	@, %sfp
	movt	r0, #:upper16:85862	@,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r6, #:lower16:85863	@,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movt	r6, #:upper16:85863	@,
	str	r0, [fp, #-124]	@, %sfp
	movw	r8, #:lower16:108768	@,
	add	r9, r7, lr	@ tmp287, <variable>.CodecInfo.pRef, <variable>.CodecInfo.AdvPicSyntax.CurParity
	str	r6, [fp, #-128]	@, %sfp
	movt	r8, #:upper16:108768	@,
	movw	ip, #:lower16:108772	@,
	ldrb	sl, [r9, #1029]	@ zero_extendqisi2	@ tmp289, <variable>.IsHalfPel
	movt	ip, #:upper16:108772	@,
	str	r8, [fp, #-132]	@, %sfp
	movw	lr, #:lower16:85864	@ tmp370,
	movt	lr, #:upper16:85864	@ tmp370,
	movw	r6, #:lower16:85984	@ tmp374,
	strb	sl, [r5, #32]	@ tmp289, <variable>.colishalfpel
	movt	r6, #:upper16:85984	@ tmp374,
	str	ip, [fp, #-136]	@, %sfp
	movw	ip, #:lower16:85689	@ tmp382,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:85689	@ tmp382,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r8, #:lower16:85880	@ tmp394,
	movt	r8, #:upper16:85880	@ tmp394,
	add	r2, r1, r0	@ tmp296, <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r0, #:lower16:85690	@ tmp385,
	movt	r0, #:upper16:85690	@ tmp385,
	movw	r1, #:lower16:85691	@ tmp388,
	ldrb	r7, [r2, #1029]	@ zero_extendqisi2	@ tmp298, <variable>.IsHalfPel
	movt	r1, #:upper16:85691	@ tmp388,
	movw	r2, #:lower16:85692	@ tmp391,
	movt	r2, #:upper16:85692	@ tmp391,
	strb	r7, [r5, #31]	@ tmp298, <variable>.curishalfpel
	ldr	r9, [fp, #-144]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.CodecInfo.AdvPicSyntax.MVRANGE
	strb	sl, [r5, #33]	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.mvrange
	ldr	r7, [fp, #-48]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	sl, [r5, #34]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldr	r9, [fp, #-56]	@, %sfp
	ldrb	r7, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB
	strb	r7, [r5, #37]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	sl, [fp, #-60]	@, %sfp
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM
	strb	r7, [r5, #38]	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.vstransform
	ldr	r9, [fp, #-64]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.CodecInfo.AdvPicSyntax.TTMBF
	strb	sl, [r5, #39]	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.ttmbf
	ldr	r7, [fp, #-68]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM
	strb	sl, [r5, #40]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	r9, [fp, #-72]	@, %sfp
	ldrb	r7, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2
	strb	r7, [r5, #41]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	sl, [fp, #-76]	@, %sfp
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.CodecInfo.AdvPicSyntax.TTFRM
	strb	r7, [r5, #42]	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.ttfrm
	ldr	r9, [fp, #-80]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.ACPREDMode, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	rsbs	r7, sl, #1	@ tmp326, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	movcc	r7, #0	@ tmp326
	strb	r7, [r5, #48]	@ tmp326, <variable>.acpredmodeisskipraw
	ldr	r9, [fp, #-84]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	rsbs	r7, sl, #1	@ tmp330, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	movcc	r7, #0	@ tmp330
	strb	r7, [r5, #44]	@ tmp330, <variable>.directmbmodeisskipraw
	ldr	r9, [fp, #-88]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	rsbs	r7, sl, #1	@ tmp334, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	movcc	r7, #0	@ tmp334
	strb	r7, [r5, #46]	@ tmp334, <variable>.fieldtxmodeisskipraw
	ldr	r9, [fp, #-92]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	rsbs	r7, sl, #1	@ tmp338, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	movcc	r7, #0	@ tmp338
	strb	r7, [r5, #43]	@ tmp338, <variable>.forwardmbmodeisskipraw
	ldr	r9, [fp, #-96]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	rsbs	r7, sl, #1	@ tmp342, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	movcc	r7, #0	@ tmp342
	strb	r7, [r5, #45]	@ tmp342, <variable>.mvtypembmodeisskipraw
	ldr	r9, [fp, #-100]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	rsbs	r7, sl, #1	@ tmp346, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	movcc	r7, #0	@ tmp346
	strb	r7, [r5, #49]	@ tmp346, <variable>.overflagsmodeisskipraw
	ldr	r9, [fp, #-104]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	rsbs	r7, sl, #1	@ tmp350, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	movcc	r7, #0	@ tmp350
	strb	r7, [r5, #47]	@ tmp350, <variable>.skipmbmodeisskipraw
	ldr	r9, [fp, #-108]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.CodecInfo.AdvPicSyntax.BFRACTION
	strb	sl, [r5, #52]	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.bfraction
	ldr	r7, [fp, #-112]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.CodecInfo.AdvPicSyntax.CBPTAB
	strb	sl, [r5, #51]	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.cbptab
	ldr	r9, [fp, #-116]	@, %sfp
	ldrb	r7, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.CodecInfo.AdvPicSyntax.MVTAB
	strb	r7, [r5, #50]	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.mvtab
	ldr	sl, [fp, #-120]	@, %sfp
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB
	strb	r7, [r5, #55]	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.fourmvbptab
	ldr	r9, [fp, #-124]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH
	strb	sl, [r5, #56]	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.fourmvswtich
	ldr	r9, [fp, #-128]	@, %sfp
	ldrb	r7, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.CodecInfo.AdvPicSyntax.MBMODETAB
	strb	r7, [r5, #53]	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.mbmodetab
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB
	movw	lr, #12372	@ tmp373,
	strb	sl, [r5, #54]	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.twomvbptab
	ldr	r7, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r6, #12376	@ tmp376,
	str	r7, [r5, lr]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	sl, [fp, #-132]	@, %sfp
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.FRFD, <variable>.CodecInfo.FRFD
	movw	sl, #12380	@ tmp379,
	str	r7, [r5, r6]	@ <variable>.CodecInfo.FRFD, <variable>.FRFD
	ldr	lr, [fp, #-136]	@, %sfp
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.BRFD, <variable>.CodecInfo.BRFD
	str	r7, [r5, sl]	@ <variable>.CodecInfo.BRFD, <variable>.BRFD
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r6, [r5, #57]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.rangemapyflag
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	lr, [r5, #58]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.rangemapy
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	sl, [r5, #59]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.rangemapuvflag
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r7, [r5, #60]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.rangemapuv
	ldr	r6, [r4, r8]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L830	@,
	ldrb	r8, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	r9, [fp, #-52]	@, %sfp
	strb	r8, [r9, #305]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r6, [r9, #306]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r3, [r9, #307]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	ip, [r9, #308]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
.L818:
	movw	r0, #:lower16:85504	@ tmp434,
	movt	r0, #:upper16:85504	@ tmp434,
	ldr	sl, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:78219	@ tmp437,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movt	r1, #:upper16:78219	@ tmp437,
	strb	r7, [sl, #310]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	r2, [r5, #65]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	b	.L819	@
.L808:
	movw	r1, #:lower16:85488	@ tmp442,
	movt	r1, #:upper16:85488	@ tmp442,
	strb	r3, [r5, #5]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fcm
	movw	r2, #:lower16:85739	@ tmp445,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	movt	r2, #:upper16:85739	@ tmp445,
	movw	r8, #:lower16:108796	@ tmp447,
	movt	r8, #:upper16:108796	@ tmp447,
	movw	r7, #:lower16:108792	@ tmp452,
	movt	r7, #:upper16:108792	@ tmp452,
	strb	lr, [r5, #4]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.profile
	movw	lr, #:lower16:85491	@ tmp459,
	ldrb	r9, [r4, r2]	@ zero_extendqisi2	@ iftmp.438, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	movt	lr, #:upper16:85491	@ tmp459,
	movw	r2, #:lower16:78216	@ tmp464,
	movt	r2, #:upper16:78216	@ tmp464,
	cmp	r9, #4	@ iftmp.438,
	moveq	r9, #3	@ iftmp.438,
	strb	r9, [r5, #3]	@ iftmp.438, <variable>.ptype
	ldr	r0, [r4, r8]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movw	r9, #:lower16:85494	@ tmp471,
	movt	r9, #:upper16:85494	@ tmp471,
	movw	r8, #:lower16:85498	@ tmp474,
	sub	r6, r0, #1	@ tmp450, <variable>.CodecInfo.CurPicMbHeight,
	strb	r6, [r5, #7]	@ tmp450, <variable>.mbheight
	ldr	sl, [r4, r7]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movt	r8, #:upper16:85498	@ tmp474,
	strb	r3, [r5, #10]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.curparity
	movw	r7, #:lower16:85758	@ tmp477,
	sub	ip, sl, #1	@ tmp455, <variable>.CodecInfo.CurPicMbWidth,
	strb	ip, [r5, #6]	@ tmp455, <variable>.mbwidth
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER
	movt	r7, #:upper16:85758	@ tmp477,
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.numref
	movw	ip, #:lower16:85768	@ tmp480,
	movt	ip, #:upper16:85768	@ tmp480,
	movw	lr, #:lower16:85743	@ tmp483,
	strb	r0, [r5, #8]	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.loopfilter
	movt	lr, #:upper16:85743	@ tmp483,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movw	r2, #:lower16:85742	@ tmp486,
	strb	r3, [r5, #12]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fwd_fcm
	movt	r2, #:upper16:85742	@ tmp486,
	strb	r3, [r5, #13]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.bwd_fcm
	movw	r0, #:lower16:85828	@ tmp489,
	strb	r1, [r5, #9]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movt	r0, #:upper16:85828	@ tmp489,
	ldrb	r6, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC
	movw	r9, #:lower16:85502	@ tmp492,
	movt	r9, #:upper16:85502	@ tmp492,
	strb	r6, [r5, #15]	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.CodecInfo.SMPSeqSyntax.OVERLAP
	strb	sl, [r5, #16]	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.overlap
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	strb	r1, [r5, #14]	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.rndctrl
	ldrb	r8, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r8, [r5, #20]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.CodecInfo.SMPPicSyntax.HALFQP
	strb	r6, [r5, #21]	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.halfqp
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	strb	ip, [r5, #19]	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.pqindex
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.CodecInfo.SMPPicSyntax.PQUANT
	strb	lr, [r5, #18]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.pquant
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ D.36418, <variable>.CodecInfo.SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.36418,
	bne	.L821	@,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	cmp	ip, #8	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX,
	movhi	r3, #0	@, tmp495
	movls	r3, #1	@, tmp495
	strb	r3, [r5, #22]	@ tmp495, <variable>.buniform
.L822:
	movw	r2, #:lower16:85762	@ tmp505,
	movt	r2, #:upper16:85762	@ tmp505,
	movw	sl, #:lower16:85761	@ tmp508,
	movt	sl, #:upper16:85761	@ tmp508,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL
	movw	r8, #:lower16:85496	@ tmp511,
	movt	r8, #:upper16:85496	@ tmp511,
	movw	lr, #:lower16:85760	@ tmp514,
	movt	lr, #:upper16:85760	@ tmp514,
	movw	r0, #:lower16:85772	@ tmp517,
	strb	r3, [r5, #26]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	r0, #:upper16:85772	@ tmp517,
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE
	movw	r9, #:lower16:85757	@,
	movt	r9, #:upper16:85757	@,
	movw	r1, #:lower16:85763	@ tmp520,
	movt	r1, #:upper16:85763	@ tmp520,
	movw	r2, #:lower16:85747	@ tmp523,
	strb	r7, [r5, #25]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r2, #:upper16:85747	@ tmp523,
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.CodecInfo.SMPSeqSyntax.DQUANT
	movw	r3, #:lower16:85748	@ tmp526,
	movt	r3, #:upper16:85748	@ tmp526,
	movw	sl, #:lower16:96340	@ tmp530,
	movt	sl, #:upper16:96340	@ tmp530,
	movw	r8, #:lower16:96336	@ tmp534,
	strb	r6, [r5, #24]	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.dquant
	movt	r8, #:upper16:96336	@ tmp534,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM
	movw	lr, #:lower16:85497	@,
	str	r9, [fp, #-48]	@, %sfp
	movt	lr, #:upper16:85497	@,
	movw	r9, #:lower16:85755	@,
	movt	r9, #:upper16:85755	@,
	strb	ip, [r5, #27]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.dquantfrm
	movw	ip, #:lower16:85753	@,
	str	lr, [fp, #-56]	@, %sfp
	movt	ip, #:upper16:85753	@,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode
	movw	r0, #:lower16:85754	@,
	str	ip, [fp, #-60]	@, %sfp
	movw	ip, #:lower16:85756	@,
	str	r9, [fp, #-64]	@, %sfp
	movt	ip, #:upper16:85756	@,
	strb	lr, [r5, #28]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	movt	r0, #:upper16:85754	@,
	str	ip, [fp, #-68]	@, %sfp
	movw	lr, #:lower16:85816	@,
	ldrb	r9, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp
	movt	lr, #:upper16:85816	@,
	str	r0, [fp, #-88]	@, %sfp
	movw	r1, #:lower16:85752	@,
	movt	r1, #:upper16:85752	@,
	movw	r7, #:lower16:85745	@ tmp537,
	strb	r9, [r5, #23]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movt	r7, #:upper16:85745	@ tmp537,
	str	lr, [fp, #-72]	@, %sfp
	movw	r6, #:lower16:85867	@ tmp540,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	movt	r6, #:upper16:85867	@ tmp540,
	movw	r0, #:lower16:85820	@ tmp561,
	movt	r0, #:upper16:85820	@ tmp561,
	movw	lr, #:lower16:85824	@ tmp569,
	movt	lr, #:upper16:85824	@ tmp569,
	strb	ip, [r5, #29]	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.mvmode
	movw	ip, #:lower16:85500	@,
	str	r1, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:85740	@ tmp573,
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	movt	r2, #:upper16:85740	@ tmp573,
	str	ip, [fp, #-80]	@, %sfp
	movw	r3, #:lower16:85751	@ tmp579,
	movt	r3, #:upper16:85751	@ tmp579,
	str	r9, [fp, #-84]	@, %sfp
	movw	r9, #:lower16:85832	@ tmp583,
	ldr	r1, [fp, #-84]	@, %sfp
	movt	r9, #:upper16:85832	@ tmp583,
	strb	r1, [r5, #30]	@, <variable>.mvmode2
	ldr	ip, [fp, #-80]	@, %sfp
	movt	ip, #:upper16:85500	@,
	str	ip, [fp, #-80]	@, %sfp
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r1, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	ip, [r5, #32]	@ <variable>.IsHalfPel, <variable>.colishalfpel
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r1, [sl, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	r1, [r5, #31]	@ <variable>.IsHalfPel, <variable>.curishalfpel
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.CodecInfo.SMPPicSyntax.MVRANGE
	strb	r8, [r5, #33]	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.mvrange
	ldrb	r6, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	r6, [r5, #34]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldr	r7, [fp, #-48]	@, %sfp
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB
	strb	ip, [r5, #37]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	sl, [fp, #-56]	@, %sfp
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM
	strb	r1, [r5, #38]	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.vstransform
	ldr	r8, [fp, #-60]	@, %sfp
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.CodecInfo.SMPPicSyntax.TTMBF
	strb	r6, [r5, #39]	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.ttmbf
	ldr	ip, [fp, #-64]	@, %sfp
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM
	strb	r7, [r5, #40]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	sl, [fp, #-68]	@, %sfp
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2
	strb	r1, [r5, #41]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	r8, [fp, #-88]	@, %sfp
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.CodecInfo.SMPPicSyntax.TTFRM
	strb	r6, [r5, #42]	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.ttfrm
	ldr	r7, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	rsbs	ip, r7, #1	@ tmp563, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	movcc	ip, #0	@ tmp563
	strb	ip, [r5, #44]	@ tmp563, <variable>.directmbmodeisskipraw
	ldr	sl, [fp, #-72]	@, %sfp
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	rsbs	r0, r1, #1	@ tmp567, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	movcc	r0, #0	@ tmp567
	strb	r0, [r5, #45]	@ tmp567, <variable>.mvtypembmodeisskipraw
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movw	lr, #12372	@ tmp582,
	rsbs	r6, r8, #1	@ tmp571, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movcc	r6, #0	@ tmp571
	strb	r6, [r5, #47]	@ tmp571, <variable>.skipmbmodeisskipraw
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.CodecInfo.SMPPicSyntax.BFRACTION
	strb	r7, [r5, #52]	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.bfraction
	ldr	ip, [fp, #-76]	@, %sfp
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.CodecInfo.SMPPicSyntax.CBPTAB
	strb	sl, [r5, #51]	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.cbptab
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.CodecInfo.SMPPicSyntax.MVTAB
	strb	r1, [r5, #50]	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.mvtab
	ldr	r2, [r4, r9]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.CodecInfo.SMPPicSyntax.ScaleFactor
	str	r2, [r5, lr]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	r0, [fp, #-80]	@, %sfp
	ldrb	r8, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r8, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	beq	.L825	@,
	mov	r3, #0	@ prephitmp.2510,
	mov	r0, r3	@ prephitmp.2559, prephitmp.2510
	mov	ip, r3	@ prephitmp.2508, prephitmp.2510
	mov	r1, r3	@ prephitmp.2526, prephitmp.2510
.L826:
	strb	r1, [r5, #61]	@ prephitmp.2526, <variable>.RANGEREDFRM
	movw	r8, #:lower16:85488	@ tmp613,
	strb	ip, [r5, #62]	@ prephitmp.2508, <variable>.RANGEREDFRM0
	movt	r8, #:upper16:85488	@ tmp613,
	strb	r0, [r5, #63]	@ prephitmp.2559, <variable>.RANGEREDFRM1
	ldr	r6, [fp, #-52]	@, %sfp
	str	r3, [r6, #332]	@ prephitmp.2510, <variable>.stDispImg.ImageDnr.Rangedfrm
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	strb	ip, [r6, #310]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
.L819:
	movw	ip, #:lower16:96436	@ tmp616,
	movt	ip, #:upper16:96436	@ tmp616,
	movw	r3, #:lower16:96368	@ tmp618,
	movt	r3, #:upper16:96368	@ tmp618,
	ldrh	r2, [r4, ip]	@, <variable>.CodecInfo.SlcNum
	movw	sl, #:lower16:96372	@ tmp620,
	movt	sl, #:upper16:96372	@ tmp620,
	movw	r7, #:lower16:78219	@ tmp622,
	movt	r7, #:upper16:78219	@ tmp622,
	movw	r6, #:lower16:78220	@ tmp625,
	strh	r2, [r5, #76]	@ movhi	@, <variable>.totalslicenum
	movt	r6, #:upper16:78220	@ tmp625,
	ldrh	r8, [r4, r3]	@, <variable>.CodecInfo.DispPicWidth
	movw	ip, #:lower16:96352	@ tmp629,
	movt	ip, #:upper16:96352	@ tmp629,
	strh	r8, [r5, #78]	@ movhi	@, <variable>.DispPicWidth
	ldrh	lr, [r4, sl]	@, <variable>.CodecInfo.DispPicHeight
	strh	lr, [r5, #80]	@ movhi	@, <variable>.DispPicHeight
	movw	lr, #:lower16:108816	@ tmp638,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	movt	lr, #:upper16:108816	@ tmp638,
	movw	r7, #:lower16:108820	@ tmp641,
	movt	r7, #:upper16:108820	@ tmp641,
	strb	r0, [r5, #65]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	movw	r0, #:lower16:108832	@ tmp650,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.PostCresent, <variable>.CodecInfo.PostCresent
	movw	r6, #:lower16:108824	@ tmp644,
	movt	r6, #:upper16:108824	@ tmp644,
	movt	r0, #:upper16:108832	@ tmp650,
	strb	r1, [r5, #64]	@ <variable>.CodecInfo.PostCresent, <variable>.PostCresent
	movw	r1, #:lower16:108836	@ tmp653,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	ip, #:lower16:108828	@ tmp647,
	movt	ip, #:upper16:108828	@ tmp647,
	movt	r1, #:upper16:108836	@ tmp653,
	adds	r3, r2, #127	@ tmp630, <variable>.CodecInfo.MbWidth,
	addmi	r3, r2, #254	@, tmp633, <variable>.CodecInfo.MbWidth,
	movw	r2, #:lower16:108840	@ tmp656,
	movt	r2, #:upper16:108840	@ tmp656,
	mov	r8, r3, asr #7	@ tmp635, tmp633,
	movw	r3, #12404	@ tmp628,
	mov	sl, r8, asl #4	@ tmp636, tmp635,
	str	sl, [r5, r3]	@ tmp636, <variable>.BPD_STRIDE
	ldr	sl, [r4, lr]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r8, #12408	@ tmp637,
	movw	r3, #:lower16:78221	@ tmp659,
	movt	r3, #:upper16:78221	@ tmp659,
	add	lr, r4, r3	@ tmp659, pCtx, tmp659
	movw	r3, #12432	@ tmp655,
	str	sl, [r5, r8]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.CodecInfo.SKIPMB_ADDR
	movw	r7, #12412	@ tmp640,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	r7, [r4, r6]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.CodecInfo.DIRECTMB_ADDR
	mov	r6, #12416	@ tmp643,
	str	r7, [r5, r6]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.CodecInfo.ACPRED_ADDR
	movw	ip, #12420	@ tmp646,
	str	r6, [r5, ip]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.ACPRED_ADDR
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.CodecInfo.OVERFLAGS_ADDR
	movw	r0, #12424	@ tmp649,
	str	ip, [r5, r0]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	movw	ip, #12428	@ tmp652,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.CodecInfo.FIELDTX_ADDR
	str	r0, [r5, ip]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.CodecInfo.FORWARDMB_ADDR
	str	lr, [r5, #68]	@ tmp659, <variable>.pIntensityConvertTab
	str	r1, [r5, r3]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L821:
	cmp	r1, #1	@ D.36418,
	beq	.L831	@,
	cmp	r1, #2	@ D.36418,
	movne	r3, #1	@ tmp503,
	strb	r3, [r5, #22]	@ tmp503, <variable>.buniform
	b	.L822	@
.L812:
	cmp	r2, #1	@ D.36326,
	beq	.L832	@,
	cmp	r2, #2	@ D.36326,
	moveq	r3, #0	@ tmp248,
	movne	r3, #1	@ tmp250,
	strb	r3, [r5, #22]	@ tmp250, <variable>.buniform
	b	.L813	@
.L832:
	movw	ip, #:lower16:85847	@ tmp244,
	movt	ip, #:upper16:85847	@ tmp244,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER
	subs	lr, r2, #0	@ tmp246, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER,
	movne	lr, #1	@ tmp246
	strb	lr, [r5, #22]	@ tmp246, <variable>.buniform
	b	.L813	@
.L831:
	movw	r6, #:lower16:85744	@ tmp497,
	movt	r6, #:upper16:85744	@ tmp497,
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER
	subs	sl, r7, #0	@ tmp499, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER,
	movne	sl, #1	@ tmp499
	strb	sl, [r5, #22]	@ tmp499, <variable>.buniform
	b	.L822	@
.L825:
	movw	r0, #:lower16:96392	@ tmp588,
	movw	lr, #:lower16:96408	@ tmp595,
	movt	r0, #:upper16:96392	@ tmp588,
	movt	lr, #:upper16:96408	@ tmp595,
	movw	r3, #1464	@ tmp591,
	movw	r1, #:lower16:85739	@ tmp601,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	r1, #:upper16:85739	@ tmp601,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.36467, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	mla	sl, r3, r2, r4	@ tmp592, tmp591, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	cmp	r1, #2	@ D.36467,
	cmpne	r1, #4	@, D.36467,
	mla	r8, r3, r0, r4	@ tmp599, tmp591, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r7, sl, #87040	@ tmp593, tmp592,
	add	lr, r7, #512	@ tmp593, tmp593,
	add	ip, r8, #87040	@ tmp600, tmp599,
	add	r6, ip, #512	@ tmp600, tmp600,
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ RANGEREDFRM0, <variable>.RANGEREDFRM
	movwne	lr, #:lower16:85738	@ tmp609,
	movtne	lr, #:upper16:85738	@ tmp609,
	ldrb	r3, [r6, #2]	@ zero_extendqisi2	@ RANGEREDFRM1, <variable>.RANGEREDFRM
	uxtbeq	ip, ip	@ prephitmp.2508, RANGEREDFRM0
	uxtbne	ip, ip	@ prephitmp.2508, RANGEREDFRM0
	uxtbne	r0, r3	@ prephitmp.2559, RANGEREDFRM1
	ldrneb	r3, [r4, lr]	@ zero_extendqisi2	@ RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	uxtbeq	r1, r3	@ prephitmp.2526, RANGEREDFRM1
	uxtbne	r1, r3	@ prephitmp.2526, RANGEREDFRM
	moveq	r0, r1	@ prephitmp.2559, prephitmp.2526
	b	.L826	@
.L830:
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2512, <variable>.CodecInfo.AdvPicSyntax.CurParity
	cmp	r6, #0	@ prephitmp.2512,
	bne	.L817	@,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	sl, [fp, #-52]	@, %sfp
	strb	ip, [sl, #305]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	lr, [sl, #306]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r7, [sl, #307]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r8, [sl, #308]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2512, <variable>.CodecInfo.AdvPicSyntax.CurParity
.L817:
	cmp	r6, #1	@ prephitmp.2512,
	bne	.L818	@,
	movw	lr, #:lower16:85689	@ tmp410,
	movt	lr, #:upper16:85689	@ tmp410,
	ldr	r6, [fp, #-52]	@, %sfp
	movw	r7, #:lower16:85690	@ tmp413,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	movt	r7, #:upper16:85690	@ tmp413,
	movw	sl, #:lower16:85691	@ tmp416,
	movt	sl, #:upper16:85691	@ tmp416,
	movw	r8, #:lower16:85692	@ tmp419,
	movt	r8, #:upper16:85692	@ tmp419,
	strb	r0, [r6, #300]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r1, [r6, #301]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r2, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r2, [r6, #302]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r3, [r6, #303]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L818	@
	.fnend
	.size	VC1_WritePicMsg, .-VC1_WritePicMsg
	.align	2
	.global	VC1_Vfmw_StartDecode
	.type	VC1_Vfmw_StartDecode, %function
VC1_Vfmw_StartDecode:
	.fnstart
.LFB1370:
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
	movw	r2, #:lower16:81304	@ tmp156,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movt	r2, #:upper16:81304	@ tmp156,
	movw	r3, #:lower16:78076	@ tmp153,
	movt	r3, #:upper16:78076	@ tmp153,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.37096, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	add	r6, r0, #77824	@ pCodecInf, pVC1_CTX_S,
	ldr	r1, [r1, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	cmp	r2, #1	@ D.37096,
	add	r6, r6, #384	@ pCodecInf, pCodecInf,
	add	r5, r0, #8	@ pVc1DecParam, pVC1_CTX_S,
	str	r1, [r0, r3]	@ <variable>.s32Compress_en, <variable>.Vc1DecParam.Compress_en
	beq	.L834	@,
	cmp	r2, #0	@ D.37096,
	beq	.L848	@,
.L834:
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WritePicMsg	@
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WriteSliceMsg	@
	mov	r1, r5	@, pVc1DecParam
	mov	r0, r6	@, pCodecInf
	bl	VC1_CfgVDH	@
	movw	r1, #:lower16:78210	@ tmp174,
	movt	r1, #:upper16:78210	@ tmp174,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2578, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ prephitmp.2578,
	bls	.L849	@,
.L838:
	cmp	r3, #5	@ prephitmp.2578,
	beq	.L850	@,
	movw	r1, #:lower16:78212	@ tmp194,
	movt	r1, #:upper16:78212	@ tmp194,
	mov	ip, #0	@ tmp192,
	strb	ip, [r4, #9]	@ tmp192, <variable>.Vc1DecParam.IsSkpicCopy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2580, <variable>.CodecInfo.PicStructure
.L840:
	movw	lr, #:lower16:78212	@ tmp197,
	movw	r2, #:lower16:78216	@ tmp201,
	movt	lr, #:upper16:78212	@ tmp197,
	movt	r2, #:upper16:78216	@ tmp201,
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.37150, <variable>.Vc1DecParam.ptype
	movw	r1, #:lower16:78211	@ tmp196,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:78211	@ tmp196,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	movw	r2, #:lower16:78217	@ tmp200,
	cmp	r3, #2	@ D.37150,
	movt	r2, #:upper16:78217	@ tmp200,
	strb	ip, [r4, #8]	@ prephitmp.2580, <variable>.Vc1DecParam.picstructure
	strb	r7, [r4, r1]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct_IPB
	strb	r0, [r4, r2]	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.LastIs2ndFld
	beq	.L851	@,
	cmp	r3, #1	@ D.37150,
	cmpne	r3, #5	@, D.37150,
	movweq	r2, #:lower16:108776	@ tmp224,
	movteq	r2, #:upper16:108776	@ tmp224,
	moveq	r1, #1	@ tmp225,
	streq	r1, [r4, r2]	@ tmp225, <variable>.CodecInfo.PPicFound
.L842:
	ldr	r1, [r4, #0]	@ temp.2597, <variable>.pstExtraData
	str	r5, [r4, #4]	@ pVc1DecParam, <variable>.pVc1DecParam
	ldr	r2, [r1, #584]	@ D.37130, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37130,
	beq	.L852	@,
	cmp	r2, #2	@ D.37130,
	beq	.L853	@,
.L845:
	mov	r0, #1	@ D.37122,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L848:
	movw	r7, #:lower16:85739	@ tmp158,
	movt	r7, #:upper16:85739	@ tmp158,
	ldrb	r3, [r0, r7]	@ zero_extendqisi2	@ D.39698, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.39698,
	cmpne	r3, #4	@, D.39698,
	moveq	r1, #1	@ prephitmp.2582,
	moveq	r0, r1	@ prephitmp.2598, prephitmp.2582
	beq	.L836	@,
	cmp	r3, #1	@ D.39698,
	beq	.L854	@,
	movw	lr, #:lower16:78218	@ tmp169,
	movt	lr, #:upper16:78218	@ tmp169,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ prephitmp.2598, <variable>.CodecInfo.LastPicRNDCTRL
	mov	r1, r0	@ prephitmp.2582, prephitmp.2598
.L836:
	movw	r2, #:lower16:78218	@ tmp170,
	movw	r3, #:lower16:85758	@ tmp172,
	movt	r2, #:upper16:78218	@ tmp170,
	movt	r3, #:upper16:85758	@ tmp172,
	strb	r0, [r4, r2]	@ prephitmp.2598, <variable>.CodecInfo.LastPicRNDCTRL
	strb	r1, [r4, r3]	@ prephitmp.2582, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	b	.L834	@
.L853:
	ldr	r0, [r1, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L845	@,
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L845	@,
	cmp	r3, #2	@ D.37150,
	cmpne	r3, #4	@, D.37150,
	bne	.L845	@,
	movw	r0, #:lower16:96336	@ tmp249,
	movt	r0, #:upper16:96336	@ tmp249,
	mov	r5, #0	@ tmp250,
	movw	ip, #:lower16:109232	@ tmp254,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:109232	@ tmp254,
	mov	r0, r6	@, pCodecInf
	strb	r5, [r2, #1]	@ tmp250, <variable>.is_to_display
	ldr	lr, [r4, #0]	@ temp.2602, <variable>.pstExtraData
	ldr	r3, [lr, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, r3, #1	@ tmp253, <variable>.stDisParams.s32DisNums,
	str	r1, [lr, #588]	@ tmp253, <variable>.stDisParams.s32DisNums
	ldr	r1, [r4, ip]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp250, <variable>.pVc1DecParam
	mov	r0, r5	@ D.37122, tmp250
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L851:
	movw	r1, #:lower16:108776	@ tmp204,
	movt	r1, #:upper16:108776	@ tmp204,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r7, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L842	@,
	movw	lr, #:lower16:109232	@ tmp206,
	movt	lr, #:upper16:109232	@ tmp206,
	mov	r0, r6	@, pCodecInf
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	ip, #:lower16:96336	@ tmp209,
	movt	ip, #:upper16:96336	@ tmp209,
	movw	r3, #:lower16:108780	@ tmp212,
	movt	r3, #:upper16:108780	@ tmp212,
	mov	r0, r7	@ D.37122, <variable>.CodecInfo.PPicFound
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ <variable>.CodecInfo.PPicFound, <variable>.is_to_ref
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.BPicCount, <variable>.CodecInfo.BPicCount
	str	r7, [r4, #4]	@ <variable>.CodecInfo.PPicFound, <variable>.pVc1DecParam
	add	ip, r2, #1	@ tmp215, <variable>.CodecInfo.BPicCount,
	str	ip, [r4, r3]	@ tmp215, <variable>.CodecInfo.BPicCount
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L850:
	movw	r3, #:lower16:78213	@ tmp182,
	movt	r3, #:upper16:78213	@ tmp182,
	movw	lr, #:lower16:108800	@ tmp189,
	movt	lr, #:upper16:108800	@ tmp189,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2580, <variable>.CodecInfo.Last_Struct
	movw	r0, #:lower16:78212	@ tmp183,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.CurPicMbNum, <variable>.CodecInfo.CurPicMbNum
	movt	r0, #:upper16:78212	@ tmp183,
	movw	r3, #:lower16:78216	@ tmp185,
	movw	r2, #:lower16:77996	@ tmp188,
	movt	r3, #:upper16:78216	@ tmp185,
	movt	r2, #:upper16:77996	@ tmp188,
	mov	lr, #1	@ tmp180,
	sub	r1, r7, #1	@ tmp191, <variable>.CodecInfo.CurPicMbNum,
	strb	ip, [r4, r0]	@ prephitmp.2580, <variable>.CodecInfo.PicStructure
	str	r1, [r4, r2]	@ tmp191, <variable>.Vc1DecParam.basic_cfg0
	strb	lr, [r4, r3]	@ tmp180, <variable>.CodecInfo.Is2ndFld
	strb	lr, [r4, #9]	@ tmp180, <variable>.Vc1DecParam.IsSkpicCopy
	b	.L840	@
.L849:
	movw	ip, #:lower16:78212	@ tmp176,
	movt	ip, #:upper16:78212	@ tmp176,
	movw	r0, #:lower16:78213	@ tmp175,
	movt	r0, #:upper16:78213	@ tmp175,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct
	b	.L838	@
.L852:
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L845	@,
	cmp	r3, #2	@ D.37150,
	cmpne	r3, #4	@, D.37150,
	bne	.L845	@,
	movw	r5, #:lower16:96336	@ tmp234,
	movt	r5, #:upper16:96336	@ tmp234,
	movw	r3, #:lower16:109232	@ tmp237,
	movt	r3, #:upper16:109232	@ tmp237,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, r6	@, pCodecInf
	mov	r5, #0	@ tmp235,
	strb	r5, [r2, #1]	@ tmp235, <variable>.is_to_display
	ldr	r1, [r4, r3]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp235, <variable>.pVc1DecParam
	mov	r0, r5	@ D.37122, tmp235
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L854:
	movw	ip, #:lower16:78218	@ tmp166,
	movt	ip, #:upper16:78218	@ tmp166,
	ldrsb	r0, [r4, ip]	@ <variable>.CodecInfo.LastPicRNDCTRL, <variable>.CodecInfo.LastPicRNDCTRL
	rsbs	r0, r0, #1	@ prephitmp.2598, <variable>.CodecInfo.LastPicRNDCTRL
	movcc	r0, #0	@ prephitmp.2598
	mov	r1, r0	@ prephitmp.2582, prephitmp.2598
	b	.L836	@
	.fnend
	.size	VC1_Vfmw_StartDecode, .-VC1_Vfmw_StartDecode
	.align	2
	.global	VC1_Vfmw_GetImageBuffer
	.type	VC1_Vfmw_GetImageBuffer, %function
VC1_Vfmw_GetImageBuffer:
	.fnstart
.LFB1365:
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
	movw	r5, #:lower16:109232	@ tmp161,
	movt	r5, #:upper16:109232	@ tmp161,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #:lower16:96428	@ tmp163,
	movt	r3, #:upper16:96428	@ tmp163,
	cmp	r0, #0	@ D.36611,
	mov	r1, r0	@ D.36611,
	str	r0, [r4, r3]	@ D.36611, <variable>.CodecInfo.CurFsID
	blt	.L856	@,
	movw	r6, #:lower16:87552	@ tmp164,
	movt	r6, #:upper16:87552	@ tmp164,
	ldrh	r3, [r4, r6]	@ tmp165,
	cmp	r3, #0	@ tmp165,
	beq	.L858	@,
	movw	r7, #:lower16:89016	@ tmp166,
	movt	r7, #:upper16:89016	@ tmp166,
	ldrh	r3, [r4, r7]	@ tmp167,
	cmp	r3, #0	@ tmp167,
	moveq	r3, #1	@ prephitmp.2624,
	beq	.L858	@,
	movw	r8, #:lower16:90480	@ tmp168,
	movt	r8, #:upper16:90480	@ tmp168,
	ldrh	r3, [r4, r8]	@ tmp169,
	cmp	r3, #0	@ tmp169,
	moveq	r3, #2	@ prephitmp.2624,
	beq	.L858	@,
	movw	sl, #:lower16:91944	@ tmp170,
	movt	sl, #:upper16:91944	@ tmp170,
	ldrh	r3, [r4, sl]	@ tmp171,
	cmp	r3, #0	@ tmp171,
	moveq	r3, #3	@ prephitmp.2624,
	beq	.L858	@,
	movw	r9, #:lower16:93408	@ tmp172,
	movt	r9, #:upper16:93408	@ tmp172,
	ldrh	r0, [r4, r9]	@ tmp173,
	cmp	r0, #0	@ tmp173,
	beq	.L872	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	r5, #:lower16:87553	@ tmp257,
	mov	r0, #1	@,
	movt	r5, #:upper16:87553	@ tmp257,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp258,
	movw	ip, #:lower16:89017	@ tmp263,
	movw	r0, #:lower16:90481	@ tmp269,
	movt	ip, #:upper16:89017	@ tmp263,
	movt	r0, #:upper16:90481	@ tmp269,
	movw	r1, #:lower16:91945	@ tmp275,
	movw	r2, #:lower16:93409	@ tmp281,
	movt	r1, #:upper16:91945	@ tmp275,
	movt	r2, #:upper16:93409	@ tmp281,
	strb	r3, [r4, r5]	@ tmp258, <variable>.is_to_display
	mov	r5, r3	@ D.36626, tmp258
	strb	r3, [r4, r6]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, ip]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r7]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r0]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r8]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r1]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, sl]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r2]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r9]	@ tmp258, <variable>.is_to_ref
.L864:
	mov	r0, r5	@, D.36626
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L872:
	mov	r3, #4	@ prephitmp.2624,
.L858:
	movw	r2, #1464	@ tmp219,
	movw	r6, #:lower16:96336	@ tmp222,
	mul	r1, r2, r3	@ tmp218, tmp219, prephitmp.2624
	movt	r6, #:upper16:96336	@ tmp222,
	mov	r2, #0	@ k,
	mov	r3, r6	@ tmp289, tmp222
	add	r5, r1, r4	@ tmp226, tmp218, pVC1_CTX_S
	add	r0, r1, #87040	@ tmp220, tmp218,
	add	lr, r5, #87040	@ tmp227, tmp226,
	add	r7, r0, #512	@ tmp220, tmp220,
	add	ip, lr, #512	@ tmp227, tmp227,
	add	r1, r4, r7	@ prephitmp.2626, pVC1_CTX_S, tmp220
	mov	r5, #1	@ tmp228,
	str	r1, [r4, r6]	@ prephitmp.2626, <variable>.CodecInfo.pCurFrm
	strb	r5, [ip, #1]	@ tmp228, <variable>.is_to_display
	b	.L866	@
.L873:
	ldr	r7, [r4, r3]	@ prephitmp.2626, <variable>.CodecInfo.pCurFrm
	add	lr, r7, r1	@ tmp294, prephitmp.2626, tmp290
	strb	r6, [lr, #3]	@ D.36636, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r1, ip	@ tmp298, tmp290, <variable>.CodecInfo.pCurFrm
	strb	r6, [r7, #259]	@ D.36636, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r1, lr	@ tmp301, tmp290, <variable>.CodecInfo.pCurFrm
	strb	r6, [ip, #515]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r1, r7	@ tmp304, tmp290, <variable>.CodecInfo.pCurFrm
	strb	r6, [lr, #771]	@ D.36636, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ prephitmp.2626, <variable>.CodecInfo.pCurFrm
	add	r1, ip, r0	@ tmp309, prephitmp.2626, k
	strb	r5, [r1, #3]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r0, r6	@ tmp313, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r7, #259]	@ D.36636, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r0, lr	@ tmp316, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [ip, #515]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r0, r0, r1	@ tmp319, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r0, #771]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ prephitmp.2626, <variable>.CodecInfo.pCurFrm
.L866:
	add	r6, r1, r2	@ tmp231, prephitmp.2626, k
	uxtb	ip, r2	@ D.36636, k
	add	r1, r2, #1	@ tmp290, k,
	strb	ip, [r6, #3]	@ D.36636, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ k, tmp290,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	cmp	r1, #256	@ tmp290,
	uxtb	r6, r1	@ D.36636, tmp290
	uxtb	r5, r0	@ D.36636, k
	add	lr, r2, r7	@ tmp237, k, <variable>.CodecInfo.pCurFrm
	strb	ip, [lr, #259]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r2, r7	@ tmp243, k, <variable>.CodecInfo.pCurFrm
	strb	ip, [lr, #515]	@ D.36636, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r2, r7	@ tmp249, k, <variable>.CodecInfo.pCurFrm
	add	r2, r2, #3	@ k, k,
	strb	ip, [r7, #771]	@ D.36636, <variable>.IntensityConvertTab
	bne	.L873	@,
	mov	r5, #1	@ D.36626,
	mov	r0, r5	@, D.36626
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L856:
	movw	r8, #:lower16:96424	@ tmp177,
	movt	r8, #:upper16:96424	@ tmp177,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	movw	sl, #:lower16:96420	@ tmp201,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movt	sl, #:upper16:96420	@ tmp201,
	bl	FSP_GetFsImagePtr	@
	mov	r6, #0	@ tmp191,
	mov	r7, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r7, #184]	@ tmp191, <variable>.p_usrdat
	str	r6, [r7, #172]	@ tmp191, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r7, #176]	@ tmp191, <variable>.p_usrdat
	str	r6, [r7, #180]	@ tmp191, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, sl]	@ tmp191, <variable>.CodecInfo.FwdFsID
	str	r6, [r4, r8]	@ tmp191, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #:lower16:96416	@ tmp211,
	movt	r2, #:upper16:96416	@ tmp211,
	add	r1, r4, #108544	@, pVC1_CTX_S,
	add	r1, r1, #336	@,,
	str	r6, [r4, r2]	@ tmp191, <variable>.CodecInfo.RefNum
	str	r0, [r4, sl]	@ D.36623, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r8]	@ D.36623, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, r6	@ D.36626, tmp191
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	b	.L864	@
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1DEC_GetImageBuffer
	.type	VC1DEC_GetImageBuffer, %function
VC1DEC_GetImageBuffer:
	.fnstart
.LFB1364:
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
	movw	r1, #:lower16:78211	@ tmp138,
	movt	r1, #:upper16:78211	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L881	@,
.L875:
	movw	r5, #:lower16:109232	@ tmp142,
	movt	r5, #:upper16:109232	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L876	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L877	@,
.L880:
	mov	r0, #0	@ D.36583,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L881:
	movw	r2, #:lower16:78217	@ tmp140,
	movt	r2, #:upper16:78217	@ tmp140,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	r0, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L875	@,
.L876:
	mov	r0, #1	@ D.36583,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L877:
	add	ip, r4, #108544	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #336	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L880	@
	.fnend
	.size	VC1DEC_GetImageBuffer, .-VC1DEC_GetImageBuffer
	.align	2
	.global	VC1_ArrangeVahbMem
	.type	VC1_ArrangeVahbMem, %function
VC1_ArrangeVahbMem:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, r1, #32	@ tmp167, ImgWidth,
	movw	r3, #5600	@ tmp169,
	cmp	r4, r3	@ tmp167, tmp169
	movls	ip, #0	@, tmp170
	movhi	ip, #1	@, tmp170
	mov	r3, r2	@ ImgHeight, ImgHeight
	cmp	r2, #31	@ ImgHeight,
	movhi	r2, ip	@, tmp173, tmp170
	orrls	r2, ip, #1	@,, tmp173, tmp170
	cmp	r2, #0	@ tmp173,
	mov	r4, r0	@ pVc1Ctx, pVc1Ctx
	add	r0, r0, #87040	@ pfrmbuf, pVc1Ctx,
	movw	ip, #:lower16:87552	@ tmp164,
	add	r0, r0, #512	@ pfrmbuf, pfrmbuf,
	movt	ip, #:upper16:87552	@ tmp164,
	bne	.L883	@,
	cmp	r3, #4224	@ ImgHeight,
	bhi	.L883	@,
	add	r8, r0, #1456	@, pfrmbuf,
	str	r8, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-88]	@, %sfp
	add	r5, r8, #2928	@ pfrmbuf.2748,,
	movw	sl, #:lower16:88740	@ tmp175,
	movt	sl, #:upper16:88740	@ tmp175,
	add	r8, r9, #8	@ pfrmbuf.2729,,
	movw	r9, #:lower16:87553	@ tmp177,
	movt	r9, #:upper16:87553	@ tmp177,
	str	r2, [r4, sl]	@ tmp173, <variable>.img.image_id
	strb	r2, [r4, ip]	@ tmp173, <variable>.is_to_ref
	add	r5, r5, #8	@ pfrmbuf.2748, pfrmbuf.2748,
	strb	r2, [r4, r9]	@ tmp173, <variable>.is_to_display
	add	r7, r8, #1456	@ pfrmbuf.2747, pfrmbuf.2729,
	strb	r2, [r0, #1464]	@ tmp173, <variable>.is_to_ref
	add	r6, r5, #1456	@ pfrmbuf.2749, pfrmbuf.2748,
	strb	r2, [r8, #1464]	@ tmp173, <variable>.is_to_ref
	add	r7, r7, #8	@ pfrmbuf.2747, pfrmbuf.2747,
	ldr	r0, [fp, #-88]	@, %sfp
	add	r6, r6, #8	@ pfrmbuf.2749, pfrmbuf.2749,
	strb	r2, [r8, #1]	@ tmp173, <variable>.is_to_display
	mov	sl, #1	@ tmp184,
	strb	r2, [r7, #1]	@ tmp173, <variable>.is_to_display
	str	sl, [r8, #1188]	@ tmp184, <variable>.img.image_id
	strb	r2, [r0, #2936]	@ tmp173, <variable>.is_to_ref
	mov	r0, #2	@ tmp190,
	strb	r2, [r5, #1]	@ tmp173, <variable>.is_to_display
	str	r0, [r7, #1188]	@ tmp190, <variable>.img.image_id
	mov	r0, #3	@ tmp196,
	strb	r2, [r5, #1464]	@ tmp173, <variable>.is_to_ref
	str	r0, [r5, #1188]	@ tmp196, <variable>.img.image_id
	mov	r0, #4	@ tmp202,
	strb	r2, [r6, #1]	@ tmp173, <variable>.is_to_display
	str	r0, [r6, #1188]	@ tmp202, <variable>.img.image_id
	ldr	r2, [r4, #0]	@ D.36170, <variable>.pstExtraData
	ldr	r0, [r2, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L886	@,
	ldr	ip, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L906	@,
.L887:
	mov	r5, r3	@ ImgHeight.2728, ImgHeight
	mov	r6, r1	@ ImgWidth.2727, ImgWidth
	mov	r7, #5	@ prephitmp.2713,
	mov	r8, #3	@ DecFsNum,
	mov	sl, #2	@ PmvBlkNum,
.L894:
	sub	r9, fp, #84	@ tmp247,,
	mov	r1, #36	@,
	mov	r0, r9	@, tmp247
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp223,
	ldr	r1, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r6, [fp, #-56]	@ ImgWidth.2727, FspInstCfg.s32DispFsWidth
	strb	r3, [fp, #-83]	@ tmp223, FspInstCfg.s32TfEnable
	strb	r1, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, r9	@, tmp247
	strb	r3, [fp, #-82]	@ tmp223, FspInstCfg.s32RprEnable
	str	r6, [fp, #-72]	@ ImgWidth.2727, FspInstCfg.s32DecFsWidth
	movw	r6, #:lower16:109232	@ tmp236,
	str	r5, [fp, #-52]	@ ImgHeight.2728, FspInstCfg.s32DispFsHeight
	movt	r6, #:upper16:109232	@ tmp236,
	str	r5, [fp, #-68]	@ ImgHeight.2728, FspInstCfg.s32DecFsHeight
	ldr	r5, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r7, [fp, #-77]	@ prephitmp.2713, FspInstCfg.s32ExpectedDispFsNum
	mov	r7, #0	@ tmp234,
	cmp	r5, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r8	@ iftmp.431, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.431, FspInstCfg.s32ExpectedDecFsNum
	ldr	r2, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #24	@ <variable>.eCapLevel,
	uxtbne	sl, sl	@ iftmp.432, PmvBlkNum
	moveq	sl, #1	@ iftmp.432,
	strb	sl, [fp, #-76]	@ iftmp.432, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp234, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.36222,
	bne	.L904	@,
	ldr	lr, [r4, #0]	@ temp.2745, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L907	@,
.L891:
	mov	r0, #1	@ D.36166,
	b	.L885	@
.L883:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36166,
.L885:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L886:
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L887	@,
	ldr	lr, [r2, #472]	@ temp.2732, <variable>.stChanOption.s32MaxWidth
	cmp	r1, lr	@ ImgWidth, temp.2732
	ldrhi	ip, [r2, #476]	@ prephitmp.2715, <variable>.stChanOption.s32MaxHeight
	bhi	.L896	@,
	ldr	ip, [r2, #476]	@ prephitmp.2715, <variable>.stChanOption.s32MaxHeight
	cmp	r3, ip	@ ImgHeight, prephitmp.2715
	bhi	.L896	@,
	ldr	r6, [r2, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r2, #492]	@ temp.2733, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	bne	.L908	@,
.L899:
	add	r8, r8, #2	@ DecFsNum, temp.2733,
	ldrb	r7, [r2, #516]	@ zero_extendqisi2	@ prephitmp.2713, <variable>.stChanOption.s32DisplayFrameNum
	mov	r5, r3	@ ImgHeight.2728, ImgHeight
	mov	r6, r1	@ ImgWidth.2727, ImgWidth
	b	.L894	@
.L904:
	mov	r0, r7	@, tmp234
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36166, tmp234
	b	.L885	@
.L906:
	ldr	ip, [r2, #472]	@ D.36177, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ ImgWidth, D.36177
	mov	r6, ip	@ ImgWidth.2727, D.36177
	ldrhi	r7, [r2, #476]	@ prephitmp.2746, <variable>.stChanOption.s32MaxHeight
	bhi	.L889	@,
	ldr	r5, [r2, #476]	@ ImgHeight.2728, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r5	@ ImgHeight, ImgHeight.2728
	mov	r7, r5	@ prephitmp.2746, ImgHeight.2728
	bhi	.L889	@,
	movw	r3, #:lower16:78208	@ tmp210,
	movt	r3, #:upper16:78208	@ tmp210,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	r1, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L891	@,
	ldr	lr, [r2, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r2, #492]	@ D.36188, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	lr, #0	@ <variable>.stChanOption.s32SupportBFrame,
	beq	.L893	@,
	add	sl, r8, #1	@ PmvBlkNum.2730, D.36188,
	cmp	sl, #17	@ PmvBlkNum.2730,
	movcs	sl, #17	@ PmvBlkNum,
.L893:
	add	r8, r8, #2	@ DecFsNum, D.36188,
	ldrb	r7, [r2, #516]	@ zero_extendqisi2	@ prephitmp.2713, <variable>.stChanOption.s32DisplayFrameNum
	b	.L894	@
.L907:
	mov	r0, r5	@, D.36222
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36166, D.36222
	b	.L885	@
.L896:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	lr, [sp, #0]	@ temp.2732,
	str	ip, [sp, #4]	@ prephitmp.2715,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36166,
	b	.L885	@
.L908:
	add	sl, r8, #1	@ PmvBlkNum.2736, temp.2733,
	cmp	sl, #17	@ PmvBlkNum.2736,
	movcs	sl, #17	@ PmvBlkNum,
	b	.L899	@
.L889:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ D.36177,
	str	r7, [sp, #4]	@ prephitmp.2746,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36166,
	b	.L885	@
	.fnend
	.size	VC1_ArrangeVahbMem, .-VC1_ArrangeVahbMem
	.align	2
	.global	VC1_Vfmw_GetStreamInfo
	.type	VC1_Vfmw_GetStreamInfo, %function
VC1_Vfmw_GetStreamInfo:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:81304	@ tmp198,
	movt	r1, #:upper16:81304	@ tmp198,
	movw	r2, #:lower16:96352	@ tmp197,
	movt	r2, #:upper16:96352	@ tmp197,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	ldr	r5, [r0, r2]	@ MbWidth, <variable>.CodecInfo.MbWidth
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L910	@,
	movw	r7, #:lower16:85880	@ tmp200,
	movt	r7, #:upper16:85880	@ tmp200,
	ldr	r6, [r0, r7]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L976	@,
	movw	r3, #:lower16:96356	@ tmp677,
	movt	r3, #:upper16:96356	@ tmp677,
	ldr	r6, [r0, r3]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	mul	r7, r6, r5	@, <variable>.CodecInfo.MbHeight, MbWidth
	str	r7, [fp, #-48]	@, %sfp
.L912:
	movw	r3, #:lower16:81540	@ tmp213,
	movt	r3, #:upper16:81540	@ tmp213,
	movw	r2, #:lower16:81542	@ tmp210,
	movt	r2, #:upper16:81542	@ tmp210,
	ldrh	r6, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	movw	r3, #5600	@ tmp218,
	ldrh	lr, [r4, r2]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	add	r1, r6, #15	@ tmp215, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH,
	add	r7, lr, #15	@ tmp212, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT,
	mov	r6, r1, asr #4	@ MEM_WIDTH_MB, tmp215,
	sub	r1, r6, #-268435454	@ tmp216, MEM_WIDTH_MB,
	mov	r7, r7, asr #4	@ MEM_HEIGHT_MB, tmp212,
	cmp	r3, r1, asl #4	@ tmp218, tmp216,
	movcc	r3, r7, asl #4	@ prephitmp.2779, MEM_HEIGHT_MB,
	bcs	.L977	@,
.L915:
	mov	r2, r6, asl #4	@, MEM_WIDTH_MB,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36688,
.L917:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L910:
	movw	r3, #:lower16:96356	@ tmp209,
	movt	r3, #:upper16:96356	@ tmp209,
	mov	r6, r5	@ MEM_WIDTH_MB, MbWidth
	sub	r1, r6, #-268435454	@ tmp216, MEM_WIDTH_MB,
	ldr	r2, [r0, r3]	@ MbHeight.2811, <variable>.CodecInfo.MbHeight
	movw	r3, #5600	@ tmp218,
	cmp	r3, r1, asl #4	@ tmp218, tmp216,
	mul	lr, r5, r2	@, MbWidth, MbHeight.2811
	mov	r7, r2	@ MEM_HEIGHT_MB, MbHeight.2811
	movcc	r3, r7, asl #4	@ prephitmp.2779, MEM_HEIGHT_MB,
	str	lr, [fp, #-48]	@, %sfp
	bcc	.L915	@,
.L977:
	mov	r3, r7, asl #4	@ prephitmp.2779, MEM_HEIGHT_MB,
	cmp	r3, #31	@ prephitmp.2779,
	ble	.L915	@,
	cmp	r3, #4224	@ prephitmp.2779,
	bgt	.L915	@,
	movw	r3, #:lower16:96364	@ tmp221,
	movt	r3, #:upper16:96364	@ tmp221,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	cmp	lr, r7	@ <variable>.CodecInfo.MbHeightLast, MEM_HEIGHT_MB
	beq	.L978	@,
.L918:
	movw	ip, #:lower16:96352	@ tmp229,
	movt	ip, #:upper16:96352	@ tmp229,
	movw	r0, #:lower16:96356	@ tmp226,
	movt	r0, #:upper16:96356	@ tmp226,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	r2, #:lower16:96364	@ tmp225,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	movt	r2, #:upper16:96364	@ tmp225,
	movw	r3, #:lower16:96360	@ tmp228,
	movt	r3, #:upper16:96360	@ tmp228,
	mov	ip, r1	@ MbWidth.2906, <variable>.CodecInfo.MbWidth
	mov	r0, #1	@ SizeChanged,
	str	lr, [r4, r2]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeightLast
	str	r1, [r4, r3]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidthLast
.L919:
	movw	r1, #:lower16:78216	@ tmp236,
	movt	r1, #:upper16:78216	@ tmp236,
	mov	ip, ip, asl #4	@ tmp233, MbWidth.2906,
	movw	r3, #:lower16:96376	@ tmp232,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r3, #:upper16:96376	@ tmp232,
	add	r2, ip, #63	@ tmp234, tmp233,
	cmp	lr, #0	@ <variable>.CodecInfo.Is2ndFld,
	bic	r1, r2, #63	@ tmp235, tmp234,
	str	r1, [r4, r3]	@ tmp235, <variable>.CodecInfo.DDR_Stride
	bne	.L979	@,
.L920:
	movw	r9, #:lower16:78208	@ tmp242,
	movt	r9, #:upper16:78208	@ tmp242,
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	eor	r3, r2, #8	@ tmp245, <variable>.CodecInfo.CodecStatus,
	ubfx	r1, r3, #3, #1	@ tmp247, tmp245,,
	orrs	r3, r0, r1	@, SizeChanged, tmp247
	beq	.L922	@,
	movw	r2, #:lower16:96336	@ tmp254,
	movw	r1, #:lower16:96348	@ tmp255,
	movt	r2, #:upper16:96336	@ tmp254,
	movt	r1, #:upper16:96348	@ tmp255,
	movw	lr, #:lower16:96344	@ tmp256,
	movw	r8, #:lower16:96340	@ tmp257,
	movt	lr, #:upper16:96344	@ tmp256,
	movt	r8, #:upper16:96340	@ tmp257,
	movw	sl, #:lower16:109232	@ tmp258,
	movw	ip, #:lower16:96424	@ tmp260,
	movt	sl, #:upper16:109232	@ tmp258,
	movt	ip, #:upper16:96424	@ tmp260,
	add	r3, r4, #94208	@ D.36714, pVC1_CTX_S,
	add	r3, r3, #664	@ D.36714, D.36714,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	str	r3, [r4, r1]	@ D.36714, <variable>.CodecInfo.pRef
	movw	r1, #:lower16:96420	@,
	str	r3, [r4, lr]	@ D.36714, <variable>.CodecInfo.pRef
	movt	r1, #:upper16:96420	@,
	str	r3, [r4, r2]	@ D.36714, <variable>.CodecInfo.pCurFrm
	add	lr, r4, #108544	@, pVC1_CTX_S,
	str	r1, [fp, #-52]	@, %sfp
	str	r3, [r4, r8]	@ D.36714, <variable>.CodecInfo.pRef
	mov	r8, #0	@ tmp274,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	str	lr, [fp, #-56]	@, %sfp
	str	ip, [fp, #-60]	@,
	str	r8, [fp, #-64]	@,
	bl	FSP_GetFsImagePtr	@
	mov	r8, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [fp, #-56]	@, %sfp
	add	r2, r0, #336	@,,
	str	r2, [fp, #-56]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r8, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r8, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r8, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r3, [fp, #-64]	@,
	mov	r2, #1	@,
	str	r3, [r8, #184]	@ tmp274, <variable>.p_usrdat
	str	r3, [r8, #172]	@ tmp274, <variable>.p_usrdat
	str	r3, [r8, #176]	@ tmp274, <variable>.p_usrdat
	str	r3, [r8, #180]	@ tmp274, <variable>.p_usrdat
	ldr	ip, [fp, #-60]	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	str	r3, [fp, #-64]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-52]	@, %sfp
	mov	r2, #1	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [fp, #-64]	@,
	ldr	r0, [fp, #-52]	@, %sfp
	str	r2, [r4, r0]	@ tmp274, <variable>.CodecInfo.FwdFsID
	ldr	ip, [fp, #-60]	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	str	r2, [r4, ip]	@ tmp274, <variable>.CodecInfo.BwdFsID
	str	r2, [fp, #-64]	@,
	str	ip, [fp, #-60]	@,
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [fp, #-52]	@, %sfp
	movw	r2, #:lower16:96416	@ tmp294,
	movt	r2, #:upper16:96416	@ tmp294,
	str	r0, [r4, r1]	@ D.36726, <variable>.CodecInfo.FwdFsID
	ldr	r3, [fp, #-64]	@,
	ldr	r1, [fp, #-56]	@, %sfp
	str	r3, [r4, r2]	@ tmp274, <variable>.CodecInfo.RefNum
	ldr	ip, [fp, #-60]	@,
	str	r0, [r4, ip]	@ D.36726, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ D.36730, <variable>.pstExtraData
	ldr	r0, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L923	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L980	@,
.L923:
	movw	lr, #:lower16:109232	@ tmp304,
	movt	lr, #:upper16:109232	@ tmp304,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L973	@,
.L924:
	add	r7, r7, #1	@ tmp307, MEM_HEIGHT_MB,
	mov	r1, r6, asl #4	@, MEM_WIDTH_MB,
	mov	r0, r4	@, pVC1_CTX_S
	mov	r3, #2	@,
	add	r7, r7, r7, lsr #31	@, tmp310, tmp307, tmp307,
	mov	r2, r7, asr #1	@ tmp311, tmp310,
	mov	r2, r2, asl #5	@, tmp311,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L925	@,
	movw	r1, #:lower16:78208	@ tmp313,
	movt	r1, #:upper16:78208	@ tmp313,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	orr	r6, r3, #8	@ tmp317, <variable>.CodecInfo.CodecStatus,
	strb	r6, [r4, r1]	@ tmp317, <variable>.CodecInfo.CodecStatus
.L922:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	subs	r6, r0, #0	@ D.36752,
	beq	.L981	@,
	movw	r6, #:lower16:109232	@ tmp327,
	movw	lr, #:lower16:96428	@ tmp329,
	movt	r6, #:upper16:109232	@ tmp327,
	movt	lr, #:upper16:96428	@ tmp329,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L927	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #29	@,
	movt	r1, #:upper16:.LC30	@,
	ldrd	r6, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r6, [r3, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r6, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r6, [r3, #16]	@ <variable>.Usertag, pImg,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r6, [r2, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r6, [r3, #24]	@ <variable>.DispTime, pImg,
	mvn	r6, #0	@ tmp338,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r7, #0	@,
	strd	r6, [ip, #56]	@ tmp338, <variable>.pstExtraData,
	ldrd	r6, [r3, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImg,
	strd	r6, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
.L927:
	movw	r3, #:lower16:81304	@ tmp342,
	movt	r3, #:upper16:81304	@ tmp342,
	ldrsb	r0, [r4, r3]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L928	@,
	movw	r2, #:lower16:85880	@ tmp344,
	movt	r2, #:upper16:85880	@ tmp344,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r1, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L982	@,
.L928:
	movw	r1, #:lower16:96336	@ tmp352,
	movt	r1, #:upper16:96336	@ tmp352,
	mov	r0, #0	@ tmp353,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r0, [r3, #1140]	@ tmp353, <variable>.img.is_fld_save
.L929:
	movw	r3, #:lower16:96336	@ tmp355,
	movt	r3, #:upper16:96336	@ tmp355,
	movw	lr, #:lower16:81304	@ tmp358,
	movt	lr, #:upper16:81304	@ tmp358,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r6, #0	@ tmp356,
	strb	r6, [ip, #2]	@ tmp356, <variable>.RANGEREDFRM
	ldrsb	r2, [r4, lr]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, r6	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L930	@,
	movw	r1, #:lower16:85500	@ tmp360,
	movt	r1, #:upper16:85500	@ tmp360,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r0, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	movweq	r0, #:lower16:85738	@ tmp364,
	movteq	r0, #:upper16:85738	@ tmp364,
	ldreq	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldreqb	r0, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	streqb	r0, [r3, #2]	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.RANGEREDFRM
.L930:
	movw	r3, #:lower16:78210	@ tmp367,
	movt	r3, #:upper16:78210	@ tmp367,
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ D.36778, <variable>.CodecInfo.PicCodingType
	cmp	r6, #5	@ D.36778,
	cmpne	r6, #1	@, D.36778,
	movhi	r6, #0	@, tmp374
	movls	r6, #1	@, tmp374
	bhi	.L931	@,
	movw	ip, #:lower16:96416	@ tmp375,
	movt	ip, #:upper16:96416	@ tmp375,
	movw	r7, #:lower16:96420	@ tmp378,
	movw	r6, #:lower16:96424	@ tmp379,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r7, #:upper16:96420	@ tmp378,
	movt	r6, #:upper16:96424	@ tmp379,
	cmp	lr, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r7]	@ prephitmp.2790, <variable>.CodecInfo.FwdFsID
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	lr, #2	@ iftmp.451,
	moveq	lr, #1	@ iftmp.451,
	cmp	r2, r8	@ prephitmp.2790, <variable>.CodecInfo.BwdFsID
	str	lr, [r4, ip]	@ iftmp.451, <variable>.CodecInfo.RefNum
	beq	.L934	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:109232	@ tmp382,
	movt	r3, #:upper16:109232	@ tmp382,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r6]	@ prephitmp.2790, <variable>.CodecInfo.BwdFsID
.L934:
	movw	lr, #:lower16:96428	@ tmp389,
	movt	lr, #:upper16:96428	@ tmp389,
	movw	r6, #:lower16:96420	@ tmp387,
	movw	r0, #:lower16:96424	@ tmp388,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r6, #:upper16:96420	@ tmp387,
	movt	r0, #:upper16:96424	@ tmp388,
	movw	r8, #:lower16:109232	@ tmp391,
	movt	r8, #:upper16:109232	@ tmp391,
	str	r2, [r4, r6]	@ prephitmp.2790, <variable>.CodecInfo.FwdFsID
	str	r1, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r2, #:lower16:78210	@ tmp399,
	movt	r2, #:upper16:78210	@ tmp399,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ D.36796, <variable>.CodecInfo.PicCodingType
	cmp	r7, #5	@ D.36796,
	cmpne	r7, #1	@, D.36796,
	bhi	.L936	@,
	movw	r3, #:lower16:96344	@ tmp423,
	movt	r3, #:upper16:96344	@ tmp423,
	movw	r2, #:lower16:96336	@ tmp427,
	movt	r2, #:upper16:96336	@ tmp427,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r1, #0	@ tmp424,
	movw	r6, #:lower16:96340	@ tmp431,
	movt	r6, #:upper16:96340	@ tmp431,
	mov	ip, #1	@ tmp428,
	strb	r1, [lr, #0]	@ tmp424, <variable>.is_to_ref
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #0]	@ tmp428, <variable>.is_to_ref
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r8, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r7, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
.L936:
	movw	r7, #:lower16:109232	@ tmp436,
	movw	r6, #:lower16:96428	@ tmp438,
	movt	r7, #:upper16:109232	@ tmp436,
	movt	r6, #:upper16:96428	@ tmp438,
	movw	r8, #:lower16:96420	@ tmp442,
	movt	r8, #:upper16:96420	@ tmp442,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:96424	@ tmp446,
	movt	r2, #:upper16:96424	@ tmp446,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #:lower16:81304	@ tmp448,
	movt	r3, #:upper16:81304	@ tmp448,
	ldrsb	r7, [r4, r3]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r7, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L937	@,
	movw	lr, #:lower16:85880	@ tmp450,
	movt	lr, #:upper16:85880	@ tmp450,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	ip, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L983	@,
.L937:
	mov	r3, #0	@ tmp455,
.L974:
	movw	r2, #:lower16:78210	@ tmp456,
	movt	r2, #:upper16:78210	@ tmp456,
	str	r3, [r6, #116]	@ tmp455, <variable>.stDispImg.is_fld_save
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r3, #5	@ <variable>.CodecInfo.PicCodingType,
	beq	.L984	@,
.L939:
	ldr	r3, [r6, #440]	@ D.36820, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36820,
	beq	.L940	@,
	ldr	lr, [r6, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L940	@,
	ldr	r7, [r6, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r7, #0	@ <variable>.pstDispOutFs,
	beq	.L940	@,
	ldr	r2, [r0, #440]	@ D.36833, <variable>.pstDecodeFs
	movw	lr, #12400	@ tmp498,
	cmp	r2, #0	@ D.36833,
	ldreq	r2, [r3, #12]	@ iftmp.455, <variable>.PhyAddr
	ldrne	r2, [r2, #12]	@ iftmp.455, <variable>.PhyAddr
	str	r2, [r4, lr]	@ iftmp.455, <variable>.Vc1DecParam.BwdRefAddr
	movw	r2, #12404	@ tmp504,
	ldr	r7, [r8, #440]	@ D.36840, <variable>.pstDecodeFs
	movw	r8, #:lower16:78044	@ tmp501,
	movt	r8, #:upper16:78044	@ tmp501,
	movw	lr, #:lower16:96336	@ tmp514,
	cmp	r7, #0	@ D.36840,
	movt	lr, #:upper16:96336	@ tmp514,
	ldreq	r7, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r7, #12]	@ iftmp.456, <variable>.PhyAddr
	movw	r7, #12396	@ tmp500,
	str	r3, [r4, r7]	@ iftmp.456, <variable>.Vc1DecParam.FwdRefAddr
	movw	r3, #:lower16:78008	@ tmp511,
	ldr	r1, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movt	r3, #:upper16:78008	@ tmp511,
	ldr	ip, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r8]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.ystaddr_1d
	ldr	r1, [r6, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r8, [r4, lr]	@ temp.2871, <variable>.CodecInfo.pCurFrm
	str	r1, [r4, r2]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.CurrColmbAddr
	movw	r1, #12392	@ tmp508,
	ldr	ip, [r0, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	movw	r0, #12408	@ tmp506,
	str	ip, [r4, r0]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.BwdColmbAddr
	ldr	lr, [r6, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r1]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	r2, [r6, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r4, r3]	@ <variable>.Stride, <variable>.Vc1DecParam.VahbStride
	ldr	lr, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [lr, #12]	@, <variable>.PhyAddr
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:96344	@ tmp517,
	movt	r1, #:upper16:96344	@ tmp517,
	str	r0, [r8, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r7]	@, <variable>.Vc1DecParam.FwdRefAddr
	ldr	r6, [r4, r1]	@ temp.2874, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	movw	r3, #12400	@ tmp521,
	movw	ip, #:lower16:96340	@ tmp520,
	movt	ip, #:upper16:96340	@ tmp520,
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r3]	@, <variable>.Vc1DecParam.BwdRefAddr
	ldr	r6, [r4, ip]	@ temp.2875, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
.L921:
	movw	r6, #:lower16:81304	@ tmp523,
	movt	r6, #:upper16:81304	@ tmp523,
	ldrsb	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L947	@,
	movw	r3, #:lower16:96336	@ tmp526,
	movt	r3, #:upper16:96336	@ tmp526,
	movw	r6, #:lower16:85739	@ tmp531,
	movt	r6, #:upper16:85739	@ tmp531,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:85747	@ tmp535,
	movt	r1, #:upper16:85747	@ tmp535,
	strb	r2, [r5, #1027]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.PicStruct
	ldrb	ip, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [lr, #1028]	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.36871, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	ldr	ip, [r4, r3]	@ temp.2891, <variable>.CodecInfo.pCurFrm
	sub	r0, r1, #2	@ tmp536, D.36871,
	uxtb	r5, r0	@ tmp537, tmp536
	cmp	r5, #1	@ tmp537,
	movls	r2, #1	@ prephitmp.2789,
	bls	.L949	@,
	cmp	r1, #4	@ D.36871,
	bne	.L949	@,
	movw	r3, #:lower16:85748	@ tmp538,
	movt	r3, #:upper16:85748	@ tmp538,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE2, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	sub	r0, r1, #2	@ tmp541, <variable>.CodecInfo.SMPPicSyntax.MVMODE2,
	uxtb	r2, r0	@ tmp542, tmp541
	cmp	r2, #1	@ tmp542,
	movhi	r2, #0	@, prephitmp.2789
	movls	r2, #1	@, prephitmp.2789
.L949:
	movw	r6, #:lower16:96436	@ tmp546,
	movw	r3, #:lower16:96448	@ tmp548,
	movt	r6, #:upper16:96436	@ tmp546,
	movt	r3, #:upper16:96448	@ tmp548,
	movw	r5, #:lower16:81336	@ tmp552,
	movt	r5, #:upper16:81336	@ tmp552,
	movw	lr, #:lower16:108732	@ tmp551,
	movt	lr, #:upper16:108732	@ tmp551,
	strb	r2, [ip, #1029]	@ prephitmp.2789, <variable>.IsHalfPel
	mov	r0, #0	@ tmp549,
	strb	r2, [ip, #1030]	@ prephitmp.2789, <variable>.IsHalfPel
	mov	ip, #1	@ tmp547,
	str	ip, [r4, r6]	@ tmp547, <variable>.CodecInfo.SlcNum
	strb	r0, [r4, r3]	@ tmp549, <variable>.SlcNo
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, lr]	@ D.36879, <variable>.CodecInfo.stCurPacket.BsVirAddr
	bl	BsPos	@
	movw	r2, #:lower16:96440	@ tmp554,
	movt	r2, #:upper16:96440	@ tmp554,
	movw	ip, #:lower16:108744	@ tmp560,
	movt	ip, #:upper16:108744	@ tmp560,
	add	r1, r0, #7	@ tmp557, D.36881,
	cmp	r0, #0	@ D.36881,
	movlt	r0, r1	@ D.36881, tmp557
	add	r3, r6, r0, asr #3	@, tmp559, D.36879, D.36881,
	str	r3, [r4, r2]	@ tmp559, <variable>.pStream
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, ip]	@ D.36885, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	bl	BsPos	@
	movw	r3, #:lower16:96452	@ tmp563,
	movt	r3, #:upper16:96452	@ tmp563,
	add	r1, r0, #7	@ tmp566, D.36886,
	cmp	r0, #0	@ D.36886,
	movlt	r0, r1	@ D.36886, tmp566
	add	r6, r6, r0, asr #3	@, tmp568, D.36885, D.36886,
	str	r6, [r4, r3]	@ tmp568, <variable>.Phy_addr
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	bl	BsPos	@
	movw	r2, #:lower16:96456	@ tmp571,
	movw	r1, #:lower16:108752	@ tmp573,
	movt	r2, #:upper16:96456	@ tmp571,
	movt	r1, #:upper16:108752	@ tmp573,
	and	ip, r0, #7	@ tmp572,,
	str	ip, [r4, r2]	@ tmp572, <variable>.BitOffset
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.stCurPacket.BsLength, <variable>.CodecInfo.stCurPacket.BsLength
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	mov	r5, r3, asl #3	@ D.36893, <variable>.CodecInfo.stCurPacket.BsLength,
	bl	BsPos	@
	movw	lr, #:lower16:96460	@ tmp577,
	movw	ip, #:lower16:108796	@ tmp580,
	movt	lr, #:upper16:96460	@ tmp577,
	movt	ip, #:upper16:108796	@ tmp580,
	movw	r1, #:lower16:108792	@ tmp581,
	movt	r1, #:upper16:108792	@ tmp581,
	movw	r2, #:lower16:96464	@ tmp579,
	movw	r3, #:lower16:78210	@ tmp586,
	movt	r2, #:upper16:96464	@ tmp579,
	movt	r3, #:upper16:78210	@ tmp586,
	rsb	r0, r0, r5	@ tmp578,, D.36893
	str	r0, [r4, lr]	@ tmp578, <variable>.Len
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	mul	ip, r5, r0	@ tmp582, <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbHeight
	sub	lr, ip, #1	@ tmp585, tmp582,
	str	lr, [r4, r2]	@ tmp585, <variable>.SlcEndMbn
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2907, <variable>.CodecInfo.PicCodingType
.L951:
	add	r2, r4, #77824	@, pVC1_CTX_S,
	mov	r3, #1	@,
	add	r0, r2, #384	@,,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r5, r0, #0	@ D.36951,
	movne	r0, #1	@ D.36688,
	bne	.L917	@,
	movw	r1, #:lower16:109232	@ tmp663,
	movw	lr, #:lower16:96428	@ tmp665,
	movt	r1, #:upper16:109232	@ tmp663,
	movt	lr, #:upper16:96428	@ tmp665,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:96336	@ tmp668,
	movt	ip, #:upper16:96336	@ tmp668,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r2, #0]	@ D.36951, <variable>.is_to_ref
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r3, #1]	@ D.36951, <variable>.is_to_display
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36688, D.36951
	b	.L917	@
.L979:
	movw	r2, #:lower16:78211	@ tmp238,
	movt	r2, #:upper16:78211	@ tmp238,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	bne	.L920	@,
	movw	ip, #:lower16:78217	@ tmp240,
	movt	ip, #:upper16:78217	@ tmp240,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	bne	.L921	@,
	b	.L920	@
.L976:
	movw	r7, #:lower16:96356	@ tmp202,
	movt	r7, #:upper16:96356	@ tmp202,
	ldr	r6, [r0, r7]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	add	r1, r6, #1	@ tmp203, <variable>.CodecInfo.MbHeight,
	add	r3, r1, r1, lsr #31	@, tmp207, tmp203, tmp203,
	mov	r2, r3, asr #1	@ tmp208, tmp207,
	mul	lr, r5, r2	@, MbWidth, tmp208
	str	lr, [fp, #-48]	@, %sfp
	b	.L912	@
.L981:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36688, D.36752
	b	.L917	@
.L978:
	movw	r1, #:lower16:96360	@ tmp223,
	movt	r1, #:upper16:96360	@ tmp223,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	cmp	r2, r6	@ <variable>.CodecInfo.MbWidthLast, MEM_WIDTH_MB
	moveq	ip, r5	@ MbWidth.2906, MbWidth
	moveq	r0, #0	@ SizeChanged,
	bne	.L918	@,
	b	.L919	@
.L931:
	movw	ip, #:lower16:96416	@ tmp407,
	movt	ip, #:upper16:96416	@ tmp407,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L936	@,
	movw	r1, #:lower16:109232	@ tmp409,
	movw	lr, #:lower16:96428	@ tmp411,
	movt	r1, #:upper16:109232	@ tmp409,
	movt	lr, #:upper16:96428	@ tmp411,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:96336	@ tmp414,
	movt	ip, #:upper16:96336	@ tmp414,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r2, #0]	@ tmp374, <variable>.is_to_ref
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r3, #1]	@ tmp374, <variable>.is_to_display
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36688, tmp374
	b	.L917	@
.L947:
	movw	r3, #:lower16:96336	@ tmp588,
	movw	r2, #:lower16:85880	@ tmp589,
	movt	r3, #:upper16:96336	@ tmp588,
	movt	r2, #:upper16:85880	@ tmp589,
	movw	r6, #:lower16:85837	@ tmp594,
	movt	r6, #:upper16:85837	@ tmp594,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:85850	@ tmp599,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movt	r1, #:upper16:85850	@ tmp599,
	movw	r2, #:lower16:85877	@ tmp598,
	movt	r2, #:upper16:85877	@ tmp598,
	strb	lr, [r0, #1027]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.PicStruct
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	ip, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	strb	ip, [r0, #1028]	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.36909, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	ldr	r0, [r4, r3]	@ temp.2898, <variable>.CodecInfo.pCurFrm
	sub	r6, r1, #2	@ tmp600, D.36909,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ D.36903, <variable>.CodecInfo.AdvPicSyntax.CurParity
	uxtb	r2, r6	@ tmp601, tmp600
	cmp	r2, #1	@ tmp601,
	movls	r1, #1	@ prephitmp.2783,
	bls	.L953	@,
	cmp	r1, #4	@ D.36909,
	movne	r1, #0	@ prephitmp.2783,
	bne	.L953	@,
	movw	r2, #:lower16:85851	@ tmp602,
	movt	r2, #:upper16:85851	@ tmp602,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	sub	ip, r6, #2	@ tmp605, <variable>.CodecInfo.AdvPicSyntax.MVMODE2,
	uxtb	r1, ip	@ tmp606, tmp605
	cmp	r1, #1	@ tmp606,
	movhi	r1, #0	@, prephitmp.2783
	movls	r1, #1	@, prephitmp.2783
.L953:
	add	ip, r0, r3	@ tmp609, temp.2898, D.36903
	movw	r3, #:lower16:96436	@ tmp612,
	movt	r3, #:upper16:96436	@ tmp612,
	strb	r1, [ip, #1029]	@ prephitmp.2783, <variable>.IsHalfPel
	ldr	r6, [r4, r3]	@ D.36917, <variable>.CodecInfo.SlcNum
	cmp	r6, #0	@ D.36917,
	moveq	r6, #1	@ tmp680,
	moveq	lr, #0	@ D.36931,
	streq	r6, [r4, r3]	@ tmp680, <variable>.CodecInfo.SlcNum
	beq	.L956	@,
	sub	lr, r6, #1	@ D.36931, D.36917,
	cmp	lr, #0	@ D.36931,
	ble	.L956	@,
	add	r3, r4, #96256	@ tmp624, pVC1_CTX_S,
	sub	r0, lr, #1	@ tmp698, D.36931,
	add	r2, r3, #232	@ tmp624, tmp624,
	add	r1, r3, #192	@ ivtmp.2807, ivtmp.2807,
	mov	r3, #1	@ i,
	cmp	r3, lr	@ i, D.36931
	ldr	ip, [r2, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	and	r0, r0, r3	@ tmp700, tmp698,
	mov	r2, #0	@ i,
	strb	r2, [r1, #0]	@ i, <variable>.SlcNo
	add	r2, r1, #48	@ ivtmp.2807, ivtmp.2807,
	mul	ip, ip, r5	@ tmp625, <variable>.SlcEndMbn, MbWidth
	sub	ip, ip, #1	@ tmp627, tmp625,
	str	ip, [r1, #16]	@ tmp627, <variable>.SlcEndMbn
	bge	.L956	@,
	cmp	r0, #0	@ tmp700,
	beq	.L957	@,
	add	r0, r4, #96256	@ tmp733, pVC1_CTX_S,
	strb	r3, [r2, #0]	@ i, <variable>.SlcNo
	add	ip, r0, #280	@ tmp733, tmp733,
	mov	r3, #2	@ i,
	cmp	r3, lr	@ i, D.36931
	ldr	r0, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	ip, r0, r5	@ tmp735, <variable>.SlcEndMbn, MbWidth
	sub	r0, ip, #1	@ tmp736, tmp735,
	str	r0, [r2, #16]	@ tmp736, <variable>.SlcEndMbn
	add	r2, r1, #96	@ ivtmp.2807, ivtmp.2807,
	bge	.L956	@,
.L957:
	add	r0, r3, r3, asl #1	@, tmp706, i, i,
	add	r1, r3, #1	@ tmp701, i,
	strb	r3, [r2, #0]	@ i, <variable>.SlcNo
	add	r3, r1, #1	@ i, tmp701,
	add	ip, r4, r0, asl #4	@, tmp710, pVC1_CTX_S, tmp706,
	strb	r1, [r2, #48]	@ tmp701, <variable>.SlcNo
	add	ip, ip, #96256	@ tmp711, tmp710,
	add	r0, r1, r1, asl #1	@, tmp718, tmp701, tmp701,
	add	ip, ip, #232	@ tmp711, tmp711,
	cmp	r3, lr	@ i, D.36931
	add	r0, r4, r0, asl #4	@, tmp722, pVC1_CTX_S, tmp718,
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	add	r0, r0, #96256	@ tmp723, tmp722,
	add	ip, r0, #232	@ tmp723, tmp723,
	mul	r1, r1, r5	@ tmp713, <variable>.SlcEndMbn, MbWidth
	sub	r1, r1, #1	@ tmp714, tmp713,
	str	r1, [r2, #16]	@ tmp714, <variable>.SlcEndMbn
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	r0, r1, r5	@ tmp725, <variable>.SlcEndMbn, MbWidth
	sub	ip, r0, #1	@ tmp726, tmp725,
	str	ip, [r2, #64]	@ tmp726, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.2807, ivtmp.2807,
	blt	.L957	@,
.L956:
	add	r0, lr, lr, asl #1	@, tmp631, D.36931, D.36931,
	movw	ip, #:lower16:96448	@ tmp628,
	movt	ip, #:upper16:96448	@ tmp628,
	sub	r6, r6, #1	@ tmp636, D.36917,
	add	r3, r4, r0, asl #4	@, tmp633, pVC1_CTX_S, tmp631,
	movw	r2, #:lower16:96464	@ tmp638,
	movw	r5, #:lower16:78210	@ tmp646,
	movt	r2, #:upper16:96464	@ tmp638,
	strb	r6, [r3, ip]	@ tmp636, <variable>.SlcNo
	movt	r5, #:upper16:78210	@ tmp646,
	ldr	r1, [fp, #-48]	@, %sfp
	sub	lr, r1, #1	@ tmp645,,
	str	lr, [r3, r2]	@ tmp645, <variable>.SlcEndMbn
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ prephitmp.2907, <variable>.CodecInfo.PicCodingType
	cmp	r1, #2	@ prephitmp.2907,
	bne	.L951	@,
	movw	ip, #:lower16:85867	@ tmp647,
	movw	r3, #:lower16:85984	@ tmp649,
	movt	ip, #:upper16:85867	@ tmp647,
	movt	r3, #:upper16:85984	@ tmp649,
	movw	r2, #:lower16:108768	@ tmp652,
	movt	r2, #:upper16:108768	@ tmp652,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r3, #:lower16:108772	@ tmp656,
	sub	ip, r5, #1	@ tmp655, <variable>.CodecInfo.AdvPicSyntax.REFDIST,
	movt	r3, #:upper16:108772	@ tmp656,
	mul	r0, lr, r5	@ tmp650, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	mov	lr, r0, asr #8	@ D.36942, tmp650,
	str	lr, [r4, r2]	@ D.36942, <variable>.CodecInfo.FRFD
	rsb	r5, lr, ip	@ D.36946, D.36942, tmp655
	str	r5, [r4, r3]	@ D.36946, <variable>.CodecInfo.BRFD
	cmp	r5, #0	@ D.36946,
	movlt	r5, #0	@ tmp659,
	strlt	r5, [r4, r3]	@ tmp659, <variable>.CodecInfo.BRFD
	b	.L951	@
.L925:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:78208	@ tmp320,
	movt	r1, #:upper16:78208	@ tmp320,
	mov	r0, #0	@ D.36688,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	bic	ip, r2, #8	@ tmp324, <variable>.CodecInfo.CodecStatus,
	strb	ip, [r4, r1]	@ tmp324, <variable>.CodecInfo.CodecStatus
	b	.L917	@
.L982:
	movw	r6, #:lower16:USE_FF_APT_EN	@ tmp346,
	movt	r6, #:upper16:USE_FF_APT_EN	@ tmp346,
	ldr	r3, [r6, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L928	@,
	movw	ip, #:lower16:96336	@ tmp349,
	movt	ip, #:upper16:96336	@ tmp349,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [lr, #1140]	@ USE_FF_APT_EN, <variable>.img.is_fld_save
	b	.L929	@
.L983:
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp452,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp452,
	ldr	r3, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L937	@,
	b	.L974	@
.L940:
	movw	r1, #:lower16:109232	@ tmp470,
	movw	r5, #:lower16:96428	@ tmp472,
	movt	r1, #:upper16:109232	@ tmp470,
	movt	r5, #:upper16:96428	@ tmp472,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r3, #:lower16:96336	@ tmp475,
	movt	r3, #:upper16:96336	@ tmp475,
	mov	lr, #0	@ tmp476,
	movw	ip, #:lower16:96424	@ tmp487,
	movt	ip, #:upper16:96424	@ tmp487,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, lr	@, tmp476
	movw	r2, #:lower16:96420	@ tmp483,
	movt	r2, #:upper16:96420	@ tmp483,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	strb	lr, [r7, #0]	@ tmp476, <variable>.is_to_ref
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	lr, [r3, #1]	@ tmp476, <variable>.is_to_display
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	str	lr, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	ip, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	lr, [r6, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	lr, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	ip, [r6, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	ip, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:78210	@ tmp492,
	movt	r3, #:upper16:78210	@ tmp492,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r0, #5	@ <variable>.CodecInfo.PicCodingType,
	bne	.L942	@,
	movw	r2, #:lower16:108812	@ tmp494,
	movt	r2, #:upper16:108812	@ tmp494,
	ldr	r0, [r4, r2]	@ temp.2887, <variable>.CodecInfo.skpic_flag
	cmp	r0, #0	@ temp.2887,
	subgt	r0, r0, #1	@ tmp496, temp.2887,
	strgt	r0, [r4, r2]	@ tmp496, <variable>.CodecInfo.skpic_flag
.L942:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36688,
	b	.L917	@
.L980:
	ldrb	ip, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	ip, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L924	@,
.L973:
	ldr	r0, [fp, #-56]	@, %sfp
	bl	ResetVoQueue	@
	b	.L924	@
.L984:
	ldr	ip, [r8, #116]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movw	r1, #:lower16:96344	@ tmp462,
	movt	r1, #:upper16:96344	@ tmp462,
	movw	r2, #:lower16:96336	@ tmp460,
	movt	r2, #:upper16:96336	@ tmp460,
	movw	lr, #:lower16:108812	@ tmp464,
	str	ip, [r6, #116]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movt	lr, #:upper16:108812	@ tmp464,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r7, #1140]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	str	r1, [r3, #1140]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.skpic_flag, <variable>.CodecInfo.skpic_flag
	add	r7, ip, #1	@ tmp467, <variable>.CodecInfo.skpic_flag,
	str	r7, [r4, lr]	@ tmp467, <variable>.CodecInfo.skpic_flag
	b	.L939	@
	.fnend
	.size	VC1_Vfmw_GetStreamInfo, .-VC1_Vfmw_GetStreamInfo
	.align	2
	.global	VC1_Vfmw_PrepareDecode
	.type	VC1_Vfmw_PrepareDecode, %function
VC1_Vfmw_PrepareDecode:
	.fnstart
.LFB1367:
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
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r4, r0, #0	@ D.36958,
	movne	r0, #1	@ D.36962,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36962, D.36958
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_PrepareDecode, .-VC1_Vfmw_PrepareDecode
	.align	2
	.global	VC1DEC_Decode
	.type	VC1DEC_Decode, %function
VC1DEC_Decode:
	.fnstart
.LFB1359:
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
	add	r5, r0, #77824	@ D.36239, pVC1_CTX_S,
	add	r5, r5, #256	@ D.36239, D.36239,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r2, #128	@,
	mov	r0, r5	@, D.36239
	bl	memcpy	@
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, D.36239
	bl	VC1_ReceivePacket	@
	subs	r6, r0, #0	@ D.36240,
	beq	.L996	@,
	add	r7, r4, #77824	@ D.36246, pVC1_CTX_S,
	movw	r5, #:lower16:109232	@ tmp157,
	add	r7, r7, #384	@ D.36246, D.36246,
	movt	r5, #:upper16:109232	@ tmp157,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #472	@,,
	mov	r0, r7	@, D.36246
	ldr	r2, [r4, r5]	@, <variable>.ChanID
	bl	VC1_Vfmw_ParseHeader	@
	subs	r6, r0, #0	@ Ret,
	bne	.L992	@,
	add	r2, r4, #108544	@, pVC1_CTX_S,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r2, #188	@,,
	bl	VC1_ClearCurPacket	@
	movw	r0, #:lower16:g_event_report	@ tmp163,
	movt	r0, #:upper16:g_event_report	@ tmp163,
	ldr	r3, [r0, #0]	@ g_event_report.435, g_event_report
	cmp	r3, #0	@ g_event_report.435,
	beq	.L991	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r6	@, Ret
	blx	r3	@ g_event_report.435
.L991:
	mov	r0, r6	@, Ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L992:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L997	@,
.L993:
	mov	r6, #0	@ Ret,
	mov	r0, r6	@, Ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L996:
	movw	r3, #:lower16:108728	@ tmp152,
	movt	r3, #:upper16:108728	@ tmp152,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.PicCnt
	bl	dprint_vfmw	@
	mov	r0, r6	@, Ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L997:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_PrepareDecode	@
	subs	r8, r0, #0	@ D.36259,
	beq	.L998	@,
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r7, r0, #0	@ D.36264,
	bne	.L991	@,
	movw	lr, #:lower16:96428	@ tmp173,
	movt	lr, #:upper16:96428	@ tmp173,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r0, #:lower16:96336	@ tmp176,
	movt	r0, #:upper16:96336	@ tmp176,
	movw	ip, #:lower16:g_event_report	@ tmp183,
	movt	ip, #:upper16:g_event_report	@ tmp183,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ D.36264, <variable>.is_to_ref
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r3, #1]	@ D.36264, <variable>.is_to_display
	ldr	r3, [ip, #0]	@ g_event_report.2961, g_event_report
	cmp	r3, #0	@ g_event_report.2961,
	beq	.L993	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r7	@, D.36264
	mov	r6, r7	@ Ret, D.36264
	blx	r3	@ g_event_report.2961
	b	.L991	@
.L998:
	movw	r6, #:lower16:g_event_report	@ tmp168,
	movt	r6, #:upper16:g_event_report	@ tmp168,
	mov	r0, r7	@, D.36246
	ldr	r1, [r4, r5]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldr	r3, [r6, #0]	@ g_event_report.2957, g_event_report
	cmp	r3, #0	@ g_event_report.2957,
	beq	.L993	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r8	@, D.36259
	mov	r6, r8	@ Ret, D.36259
	blx	r3	@ g_event_report.2957
	b	.L991	@
	.fnend
	.size	VC1DEC_Decode, .-VC1DEC_Decode
	.align	2
	.global	VC1DEC_RecycleImage
	.type	VC1DEC_RecycleImage, %function
VC1DEC_RecycleImage:
	.fnstart
.LFB1356:
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
	movw	r4, #:lower16:109232	@ tmp138,
	movt	r4, #:upper16:109232	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L1000	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #172]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #176]	@ tmp145, <variable>.p_usrdat
.L1000:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1DEC_RecycleImage, .-VC1DEC_RecycleImage
	.align	2
	.global	VC1_SetImgFormat
	.type	VC1_SetImgFormat, %function
VC1_SetImgFormat:
	.fnstart
.LFB1353:
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
	movw	r2, #:lower16:109232	@ tmp144,
	movw	r3, #:lower16:96428	@ tmp146,
	movt	r2, #:upper16:109232	@ tmp144,
	movt	r3, #:upper16:96428	@ tmp146,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r0, #:lower16:78211	@ tmp149,
	movt	r0, #:upper16:78211	@ tmp149,
	mov	r1, #1	@ tmp148,
	str	r1, [r4, #308]	@ tmp148, <variable>.ImageDnr.video_standard
	ldrsb	r3, [r5, r0]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r4, #296]	@ tmp159, <variable>.ImageDnr.pic_structure
	movne	r3, #7168	@ tmp161,
	beq	.L1011	@,
.L1010:
	movw	r0, #:lower16:96372	@ tmp162,
	movt	r0, #:upper16:96372	@ tmp162,
	str	r3, [r4, #120]	@ tmp161, <variable>.format
	movw	ip, #:lower16:96368	@ tmp164,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	movt	ip, #:upper16:96368	@ tmp164,
	mov	r0, r4	@, pImg
	mov	r1, #0	@,
	str	r2, [r4, #128]	@ <variable>.CodecInfo.DispPicHeight, <variable>.image_height
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	str	lr, [r4, #124]	@ <variable>.CodecInfo.DispPicWidth, <variable>.image_width
	bl	SetAspectRatio	@
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L1012	@,
.L1008:
	movw	r3, #:lower16:96372	@ tmp183,
	movt	r3, #:upper16:96372	@ tmp183,
	movw	ip, #:lower16:96368	@ tmp185,
	movt	ip, #:upper16:96368	@ tmp185,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	mov	r1, #1	@ tmp187,
	mov	r3, #8	@ tmp189,
	str	r0, [r4, #136]	@ <variable>.CodecInfo.DispPicHeight, <variable>.disp_height
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	strb	r1, [r4, #301]	@ tmp187, <variable>.ImageDnr.chroma_format_idc
	str	r3, [r4, #316]	@ tmp189, <variable>.ImageDnr.QP_U
	str	r2, [r4, #132]	@ <variable>.CodecInfo.DispPicWidth, <variable>.disp_width
	strb	r1, [r4, #303]	@ tmp187, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #312]	@ tmp189, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #320]	@ tmp189, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1011:
	mov	r1, #4	@ tmp151,
	strb	r1, [r4, #296]	@ tmp151, <variable>.ImageDnr.pic_structure
	ldr	r0, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	ldr	r2, [r4, #120]	@ <variable>.format, <variable>.format
	ldrb	r3, [r0, #10]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ubfx	lr, r2, #10, #2	@ fldflg, <variable>.format,,
	add	ip, r3, #1	@ tmp157, <variable>.curparity,
	orr	r3, ip, lr	@ fldflg.3018, tmp157, fldflg
	cmp	r3, #3	@ fldflg.3018,
	movls	r3, r3, asl #10	@ tmp158, fldflg.3018,
	movhi	r3, #4352	@ prephitmp.3007,
	orrls	r3, r3, #4352	@ prephitmp.3007, tmp158,
	b	.L1010	@
.L1012:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #152]	@ D.35949, <variable>.image_stride
	add	ip, r0, #15	@ tmp169, <variable>.image_height,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, ip, lsr #4	@ tmp171, tmp169,
	mov	ip, r2, asl #5	@ tmp168, D.35949,
	add	r1, lr, #1	@ tmp172, tmp171,
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	lr, r3, r2	@ tmp178, <variable>.luma_phy_addr, D.35949
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	mov	r1, r1, lsr #1	@ tmp173, tmp172,
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	lr, [r4, #76]	@ tmp178, <variable>.btm_luma_phy_addr
	mul	r1, r1, ip	@ D.35957, tmp173, tmp168
	add	r3, r1, r3	@ tmp175, D.35957, <variable>.luma_phy_addr
	add	ip, r0, r1	@ tmp177, <variable>.luma_vir_addr, D.35957
	add	lr, r3, r2	@ tmp179, tmp175, D.35949
	str	ip, [r4, #36]	@ tmp177, <variable>.chrom_vir_addr
	str	lr, [r4, #80]	@ tmp179, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp175
	str	r3, [r4, #88]	@ tmp175, <variable>.chrom_phy_addr
	str	r3, [r4, #72]	@ tmp175, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r1, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L1008	@
	.fnend
	.size	VC1_SetImgFormat, .-VC1_SetImgFormat
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r6, #:lower16:109232	@ tmp154,
	movt	r6, #:upper16:109232	@ tmp154,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #:lower16:96428	@ tmp158,
	add	r0, r0, #77824	@, pCtx,
	movt	r5, #:upper16:96428	@ tmp158,
	add	r0, r0, #384	@,,
	mov	r7, r1	@ ErrRatio, ErrRatio
	ldr	r1, [r4, r6]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:96424	@ tmp162,
	movt	r2, #:upper16:96424	@ tmp162,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r5, r0	@ pCurImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:96420	@ tmp166,
	movt	r3, #:upper16:96420	@ tmp166,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r5, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L1033	@,
	cmp	r7, #100	@ ErrRatio,
	movcs	r7, #100	@ tmp169,
	mov	r0, r4	@, pCtx
	str	r7, [r5, #160]	@ tmp169, <variable>.error_level
	bl	VC1_SetImgFormat	@
	movw	ip, #:lower16:78211	@ tmp170,
	movt	ip, #:upper16:78211	@ tmp170,
	ldrsb	r1, [r4, ip]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r1, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L1034	@,
.L1016:
	mov	r8, #0	@ tmp174,
	str	r8, [r5, #172]	@ tmp174, <variable>.p_usrdat
	str	r8, [r5, #176]	@ tmp174, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1018	@,
	movw	ip, #:lower16:78210	@ tmp178,
	movt	ip, #:upper16:78210	@ tmp178,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ D.36075, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.36075,
	cmpne	r1, #2	@, D.36075,
	moveq	r3, #0	@, tmp185
	movne	r3, #1	@, tmp185
	bne	.L1035	@,
	movw	r1, #:lower16:96428	@ tmp192,
	movt	r1, #:upper16:96428	@ tmp192,
	movw	ip, #:lower16:96432	@ tmp191,
	cmp	sl, #0	@ pBwdImg,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	ip, #:upper16:96432	@ tmp191,
	str	r0, [r4, ip]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	beq	.L1022	@,
	ldrd	r6, [sl, #8]	@ D.36091, pBwdImg,
	ldrd	r0, [r5, #8]	@ D.36093, pCurImg,
	cmp	r6, r0	@ D.36091, D.36093
	sbcs	r2, r7, r1	@, D.36091, D.36093
	bge	.L1022	@,
	strd	r6, [r5, #8]	@ D.36091, pCurImg,
	mov	r8, r3	@ pref, tmp185
	strd	r0, [sl, #8]	@ D.36093, pBwdImg,
	b	.L1021	@
.L1035:
	movw	lr, #:lower16:96416	@ tmp186,
	movt	lr, #:upper16:96416	@ tmp186,
	ldr	r5, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r5, #1	@ <variable>.CodecInfo.RefNum,
	bls	.L1020	@,
	movw	r8, #:lower16:96420	@ tmp189,
	movt	r8, #:upper16:96420	@ tmp189,
	movw	r3, #:lower16:96432	@ tmp188,
	movt	r3, #:upper16:96432	@ tmp188,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	mov	r8, #1	@ pref,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.ToQueFsID
	b	.L1021	@
.L1034:
	movw	r3, #:lower16:78217	@ tmp172,
	movt	r3, #:upper16:78217	@ tmp172,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L1016	@,
.L1017:
	mov	r0, #1	@ D.36062,
.L1015:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1018:
	movw	r2, #:lower16:96428	@ tmp195,
	movt	r2, #:upper16:96428	@ tmp195,
	movw	lr, #:lower16:96432	@ tmp194,
	movt	lr, #:upper16:96432	@ tmp194,
	ldr	r5, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	str	r5, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
.L1021:
	movw	r5, #:lower16:96432	@ tmp201,
	movt	r5, #:upper16:96432	@ tmp201,
	movw	r3, #:lower16:108728	@ tmp197,
	movt	r3, #:upper16:108728	@ tmp197,
	ldr	r1, [r4, r5]	@ D.36100, <variable>.CodecInfo.ToQueFsID
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	cmn	r1, #1	@ D.36100,
	add	r0, ip, #1	@ tmp200, <variable>.CodecInfo.PicCnt,
	str	r0, [r4, r3]	@ tmp200, <variable>.CodecInfo.PicCnt
	beq	.L1017	@,
	movw	r7, #:lower16:109232	@ tmp202,
	movt	r7, #:upper16:109232	@ tmp202,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r2, [r0, #160]	@ D.36107, <variable>.error_level
	mov	r6, r0	@ pToQueImg,
	cmp	r2, #0	@ D.36107,
	beq	.L1023	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.36109, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.36107, D.36109
	bcs	.L1024	@,
.L1023:
	movw	r7, #:lower16:96432	@ tmp205,
	movt	r7, #:upper16:96432	@ tmp205,
	movw	r5, #:lower16:109232	@ tmp206,
	movt	r5, #:upper16:109232	@ tmp206,
	ldr	sl, [r4, r7]	@ temp.3073, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, sl	@, temp.3073
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.3073
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	mov	r3, r0	@ D.36112,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	beq	.L1036	@,
	movw	r1, #:lower16:96336	@ tmp221,
	movt	r1, #:upper16:96336	@ tmp221,
	movw	r3, #:lower16:78209	@ tmp224,
	movt	r3, #:upper16:78209	@ tmp224,
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	ip, #1	@ tmp222,
	mov	r0, #2	@ tmp225,
	strb	ip, [r5, #1]	@ tmp222, <variable>.is_to_display
	strb	r0, [r4, r3]	@ tmp225, <variable>.CodecInfo.RefId
.L1026:
	movw	r5, #:lower16:109232	@ tmp227,
	movt	r5, #:upper16:109232	@ tmp227,
	add	lr, r4, #108544	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, lr, #336	@,,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.36119,
	beq	.L1027	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp234,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #172]	@ tmp234, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #:lower16:96432	@ tmp241,
	movt	r3, #:upper16:96432	@ tmp241,
	str	r7, [r6, #176]	@ tmp234, <variable>.p_usrdat
	mov	r2, r7	@, tmp234
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	mov	r0, r7	@ D.36062, tmp234
	movweq	r3, #:lower16:96344	@ tmp244,
	movwne	r3, #:lower16:96336	@ tmp248,
	movteq	r3, #:upper16:96344	@ tmp244,
	movtne	r3, #:upper16:96336	@ tmp248,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	r7, [r2, #1]	@ tmp234, <variable>.is_to_display
	b	.L1015	@
.L1027:
	movw	r3, #:lower16:78209	@ tmp251,
	movt	r3, #:upper16:78209	@ tmp251,
	ldrsb	r5, [r4, r3]	@ D.36127, <variable>.CodecInfo.RefId
	cmp	r5, #3	@ D.36127,
	beq	.L1037	@,
	cmp	r5, #1	@ D.36127,
	beq	.L1038	@,
	cmp	r5, #2	@ D.36127,
	bne	.L1017	@,
	movw	r2, #:lower16:96336	@ tmp270,
	movt	r2, #:upper16:96336	@ tmp270,
	mov	lr, #0	@ tmp271,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pCurFrm,
	strb	lr, [ip, #1]	@ tmp271, <variable>.is_to_display
	strb	lr, [r4, r3]	@ tmp271, <variable>.CodecInfo.RefId
	b	.L1015	@
.L1022:
	mov	r8, #0	@ pref,
	b	.L1021	@
.L1020:
	movw	r5, #:lower16:96432	@ tmp298,
	movt	r5, #:upper16:96432	@ tmp298,
	mvn	r0, #0	@ tmp299,
	str	r0, [r4, r5]	@ tmp299, <variable>.CodecInfo.ToQueFsID
	b	.L1021	@
.L1036:
	movw	r2, #:lower16:96344	@ tmp214,
	movt	r2, #:upper16:96344	@ tmp214,
	movw	r1, #:lower16:78209	@ tmp217,
	movt	r1, #:upper16:78209	@ tmp217,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strb	r8, [lr, #1]	@ pref, <variable>.is_to_display
	strb	r8, [r4, r1]	@ pref, <variable>.CodecInfo.RefId
	b	.L1026	@
.L1033:
	mov	r3, sl	@, pBwdImg
	mov	r0, r5	@, pCurImg
	movw	r1, #:lower16:.LC38	@,
	mov	r2, r5	@, pCurImg
	movt	r1, #:upper16:.LC38	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36062, pCurImg
	b	.L1015	@
.L1024:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	mov	sl, #0	@ tmp280,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #172]	@ tmp280, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #176]	@ tmp280, <variable>.p_usrdat
	mov	r2, sl	@, tmp280
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	movweq	r3, #:lower16:96344	@ tmp290,
	movwne	r3, #:lower16:96336	@ tmp294,
	moveq	r0, r8	@ D.36062, pref
	movne	r0, #1	@ D.36062,
	movteq	r3, #:upper16:96344	@ tmp290,
	movtne	r3, #:upper16:96336	@ tmp294,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	sl, [r3, #1]	@ tmp280, <variable>.is_to_display
	b	.L1015	@
.L1038:
	movw	r1, #:lower16:96344	@ tmp262,
	movt	r1, #:upper16:96344	@ tmp262,
	mov	ip, #0	@ tmp263,
	mov	r0, r5	@ D.36062, D.36127
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r2, #1]	@ tmp263, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp263, <variable>.CodecInfo.RefId
	b	.L1015	@
.L1037:
	movw	lr, #:lower16:96340	@ tmp254,
	movt	lr, #:upper16:96340	@ tmp254,
	mov	ip, #0	@ tmp255,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r1, #1]	@ tmp255, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp255, <variable>.CodecInfo.RefId
	b	.L1015	@
	.fnend
	.size	VC1DEC_VDMPostProc, .-VC1DEC_VDMPostProc
	.align	2
	.global	VC1DEC_GetRemainImg
	.type	VC1DEC_GetRemainImg, %function
VC1DEC_GetRemainImg:
	.fnstart
.LFB1355:
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
	movw	r6, #:lower16:96340	@ tmp141,
	movt	r6, #:upper16:96340	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	r3, #0	@ <variable>.CodecInfo.pRef,
	mvneq	r0, #0	@ ret,
	beq	.L1041	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1042	@,
	movw	r7, #:lower16:109232	@ tmp145,
	movw	r8, #:lower16:96424	@ tmp147,
	movt	r7, #:upper16:109232	@ tmp145,
	movt	r8, #:upper16:96424	@ tmp147,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L1042	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L1049	@,
.L1042:
	add	r0, r4, #108544	@, pCtx,
	add	r0, r0, #336	@,,
	bl	GetVoLastImageID	@
.L1041:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1049:
	mov	r0, r4	@, pCtx
	mov	r8, #0	@ tmp154,
	bl	VC1_SetImgFormat	@
	mov	ip, #1	@ tmp153,
	str	r8, [r5, #172]	@ tmp154, <variable>.p_usrdat
	mov	r2, ip	@, tmp153
	str	ip, [r5, #196]	@ tmp153, <variable>.last_frame
	str	r8, [r5, #176]	@ tmp154, <variable>.p_usrdat
	ldr	r1, [r5, #156]	@, <variable>.image_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r6]	@ temp.3123, <variable>.CodecInfo.pRef
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.is_to_ref, <variable>.is_to_ref
	cmp	r2, #1	@ <variable>.is_to_ref,
	beq	.L1050	@,
.L1043:
	movw	r6, #:lower16:109232	@ tmp170,
	movt	r6, #:upper16:109232	@ tmp170,
	add	ip, r4, #108544	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, ip, #336	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L1044	@,
	ldr	r1, [r5, #156]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #172]	@, <variable>.p_usrdat
	mov	r7, #0	@ tmp178,
	bl	FreeUsdByDec	@
	str	r7, [r5, #172]	@ tmp178, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #176]	@ tmp178, <variable>.p_usrdat
	b	.L1042	@
.L1044:
	ldr	r1, [r5, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L1042	@,
	ldr	r2, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L1042	@,
	ldr	lr, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L1041	@,
	b	.L1042	@
.L1050:
	strb	r2, [r3, #1]	@ <variable>.is_to_ref, <variable>.is_to_display
	movw	lr, #:lower16:78209	@ tmp167,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:78209	@ tmp167,
	mov	r2, #3	@ tmp168,
	strb	r8, [r3, #0]	@ tmp154, <variable>.is_to_ref
	strb	r2, [r4, lr]	@ tmp168, <variable>.CodecInfo.RefId
	b	.L1043	@
	.fnend
	.size	VC1DEC_GetRemainImg, .-VC1DEC_GetRemainImg
	.align	2
	.global	VC1DEC_Init
	.type	VC1DEC_Init, %function
VC1DEC_Init:
	.fnstart
.LFB1351:
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
	movw	r9, #:lower16:109224	@ tmp139,
	movt	r9, #:upper16:109224	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	add	sl, r4, #108544	@, pCtx,
	ldr	r7, [r0, r9]	@ D.35789, <variable>.ImageQue.ResetMagicWord
	movw	r1, #:lower16:109240	@,
	movt	r1, #:upper16:109240	@,
	mov	r6, #1	@ tmp145,
	bl	__memzero	@
	add	r0, sl, #336	@,,
	str	r7, [r4, r9]	@ D.35789, <variable>.ImageQue.ResetMagicWord
	movw	r7, #:lower16:108844	@ tmp147,
	bl	ResetVoQueue	@
	movw	r0, #:lower16:78217	@ tmp144,
	movt	r0, #:upper16:78217	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movt	r7, #:upper16:108844	@ tmp147,
	movw	r2, #:lower16:108816	@ tmp149,
	strb	r6, [r4, r0]	@ tmp145, <variable>.CodecInfo.LastIs2ndFld
	movt	r2, #:upper16:108816	@ tmp149,
	ldr	r8, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r3, #:lower16:108820	@ tmp151,
	movt	r3, #:upper16:108820	@ tmp151,
	movw	r0, #:lower16:108824	@ tmp154,
	movt	r0, #:upper16:108824	@ tmp154,
	movw	lr, #:lower16:108836	@ tmp163,
	str	r8, [r4, r7]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r8, #:lower16:108828	@ tmp157,
	ldr	ip, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	r8, #:upper16:108828	@ tmp157,
	movw	r7, #:lower16:108832	@ tmp160,
	movt	r7, #:upper16:108832	@ tmp160,
	movt	lr, #:upper16:108836	@ tmp163,
	str	ip, [r4, r2]	@ <variable>.s32BpdMemAddr, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r2, #:lower16:108840	@ tmp166,
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	r2, #:upper16:108840	@ tmp166,
	movw	ip, #:lower16:78218	@ tmp169,
	movt	ip, #:upper16:78218	@ tmp169,
	add	r1, r9, #2048	@ tmp153, <variable>.s32BpdMemAddr,
	str	r1, [r4, r3]	@ tmp153, <variable>.CodecInfo.SKIPMB_ADDR
	ldr	sl, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	r1, #:lower16:108776	@ tmp172,
	movw	r3, #:lower16:108780	@ tmp174,
	movt	r1, #:upper16:108776	@ tmp172,
	add	r9, sl, #4096	@ tmp156, <variable>.s32BpdMemAddr,
	str	r9, [r4, r0]	@ tmp156, <variable>.CodecInfo.DIRECTMB_ADDR
	ldr	sl, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	r3, #:upper16:108780	@ tmp174,
	mov	r9, #0	@ tmp173,
	mov	r0, r4	@, pCtx
	add	sl, sl, #6144	@ tmp159, <variable>.s32BpdMemAddr,
	str	sl, [r4, r8]	@ tmp159, <variable>.CodecInfo.ACPRED_ADDR
	ldr	r8, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	add	r8, r8, #8192	@ tmp162, <variable>.s32BpdMemAddr,
	str	r8, [r4, r7]	@ tmp162, <variable>.CodecInfo.OVERFLAGS_ADDR
	ldr	r7, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	add	r7, r7, #10240	@ tmp165, <variable>.s32BpdMemAddr,
	str	r7, [r4, lr]	@ tmp165, <variable>.CodecInfo.FIELDTX_ADDR
	ldr	lr, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	str	r9, [r4, r1]	@ tmp173, <variable>.CodecInfo.PPicFound
	str	r9, [r4, r3]	@ tmp173, <variable>.CodecInfo.BPicCount
	add	r1, lr, #12288	@ tmp168, <variable>.s32BpdMemAddr,
	strb	r6, [r4, ip]	@ tmp145, <variable>.CodecInfo.LastPicRNDCTRL
	str	r1, [r4, r2]	@ tmp168, <variable>.CodecInfo.FORWARDMB_ADDR
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:109232	@ tmp176,
	movt	r3, #:upper16:109232	@ tmp176,
	cmn	r0, #1	@ D.35814,
	str	r0, [r4, r3]	@ D.35814, <variable>.ChanID
	beq	.L1055	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35819, tmp145
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1055:
	mov	r0, r9	@, tmp173
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35819,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.562.39391, %object
	.size	C.562.39391, 128
C.562.39391:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	27
	.word	29
	.word	31
	.type	aCount, %object
	.size	aCount, 128
aCount:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	1
	.word	2
	.word	2
	.word	3
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	2
	.word	3
	.word	3
	.word	4
	.word	3
	.word	4
	.word	4
	.word	5
	.type	a2On4Off, %object
	.size	a2On4Off, 60
a2On4Off:
	.word	3
	.word	5
	.word	6
	.word	9
	.word	10
	.word	12
	.word	17
	.word	18
	.word	20
	.word	24
	.word	33
	.word	34
	.word	36
	.word	40
	.word	48
	.type	C.540.38703, %object
	.size	C.540.38703, 32
C.540.38703:
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	2
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
	.type	C.504.37600, %object
	.size	C.504.37600, 28
C.504.37600:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.505.37601, %object
	.size	C.505.37601, 28
C.505.37601:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.506.37602, %object
	.size	C.506.37602, 56
C.506.37602:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.507.37603, %object
	.size	C.507.37603, 56
C.507.37603:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.508.37604, %object
	.size	C.508.37604, 32
C.508.37604:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.496.37568, %object
	.size	C.496.37568, 28
C.496.37568:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.497.37569, %object
	.size	C.497.37569, 28
C.497.37569:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.498.37570, %object
	.size	C.498.37570, 56
C.498.37570:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.499.37571, %object
	.size	C.499.37571, 56
C.499.37571:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.500.37572, %object
	.size	C.500.37572, 32
C.500.37572:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.492.37535, %object
	.size	C.492.37535, 16
C.492.37535:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.493.37536, %object
	.size	C.493.37536, 16
C.493.37536:
	.word	1
	.word	0
	.word	2
	.word	3
	.type	C.488.37509, %object
	.size	C.488.37509, 16
C.488.37509:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.485.37496, %object
	.size	C.485.37496, 8
C.485.37496:
	.word	3
	.word	1
	.type	C.480.37468, %object
	.size	C.480.37468, 20
C.480.37468:
	.word	3
	.word	1
	.word	2
	.word	0
	.word	4
	.type	C.481.37469, %object
	.size	C.481.37469, 20
C.481.37469:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.type	C.474.37424, %object
	.size	C.474.37424, 64
C.474.37424:
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	3
@ Code:
	.word	3
@ Len:
	.word	3
	.type	FldPTypeTab, %object
	.size	FldPTypeTab, 64
FldPTypeTab:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	4
	.word	4
	.word	2
	.word	4
	.word	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC1:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC2:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC3:
	.ascii	"picture width out of range\000"
	.space	1
.LC4:
	.ascii	"picture height out of range\000"
.LC5:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\000"
	.space	2
.LC6:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\012\000"
	.space	1
.LC7:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, MbHeight = %d\012\000"
	.space	1
.LC8:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, totalMbMin1 = %d\012"
	.ascii	"\000"
	.space	2
.LC9:
	.ascii	"VC1_RecordSlcStream stream len <= 0\012\000"
	.space	3
.LC10:
	.ascii	" pCodecInf->SlcNum = %d >= 256 \012\000"
	.space	3
.LC11:
	.ascii	"line %d, Code = VC1_SCSLC failed!\012\000"
	.space	1
.LC12:
	.ascii	"line %d, Code = VC1_SCFRM failed!\012\000"
	.space	1
.LC13:
	.ascii	"Check Pos 2: %d\012\000"
	.space	3
.LC14:
	.ascii	"Check Pos 3: %d\012\000"
	.space	3
.LC15:
	.ascii	"\012======PicNum  :%6d=========\012\000"
	.space	2
.LC16:
	.ascii	"INTERPFRM  :%#x\012\000"
	.space	3
.LC17:
	.ascii	"After VC1_Vfmw_ParseSMPPicHdr BS Len <= 0 err!\012\000"
.LC18:
	.ascii	"----------------- VC1 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC19:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC20:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC21:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC22:
	.ascii	"VC1_Vfmw_GetImageBuffer get imgbuf err, clear all r"
	.ascii	"ef!\012\000"
.LC23:
	.ascii	"VC1_Vfmw_GetImageBuffer get_flag!=1, FSP_ClearLogic"
	.ascii	"Fs.\012\000"
.LC24:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC25:
	.ascii	"vc1 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC26:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC27:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC28:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_ArrangeVahbMem err!\012\000"
.LC29:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_GetImageBuffer err!"
	.ascii	"\012\000"
	.space	3
.LC30:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC31:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC32:
	.ascii	"VC1_Vfmw_GetStreamInfo B pic pCodecInf->RefNum < 2 "
	.ascii	"err!\012\000"
	.space	3
.LC33:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC34:
	.ascii	"VC1_Vfmw_GetStreamInfo imgbuf = NULL err!\012\000"
	.space	1
.LC35:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_BuildRefList err!\012"
	.ascii	"\000"
	.space	1
.LC36:
	.ascii	"VC1_Vfmw_GetStreamInfo error! Release all packets!\012"
	.ascii	"\000"
.LC37:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC38:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC39:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC40:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC41:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC42:
	.ascii	"VC1 INIT!!!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
