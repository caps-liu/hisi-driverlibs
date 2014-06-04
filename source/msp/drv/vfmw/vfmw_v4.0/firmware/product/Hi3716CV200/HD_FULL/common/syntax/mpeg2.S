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
	.file	"mpeg2.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0
@ -Idrivers/msp/vfmw/vfmw_v4.0
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200/osal/linux_kernel
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716CV200
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DENV_ARMLINUX_KERNEL
@ -DDNR_DISABLE -DSCD_MP4_SLICE_ENABLE -DSUPPORT_JPEG_444
@ -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB -D__VFMW_REGISTER_ISR__
@ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT -DVFMW_MVC_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=16
@ -DCFG_MAX_CHAN_NUM=16 -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT
@ -DVFMW_SYSTEM_REG_DISABLE -DCHIP_TYPE_hi3716cv200
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC020 -DHI_GPIOI2C_SUPPORT
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_VDEC_SVDEC_BUILTIN
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o -O2 -Wall
@ -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -p -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-strict-overflow
@ -fconserve-stack -fno-pic -fverbose-asm
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
	.global	MP2_VerifyMemPara
	.type	MP2_VerifyMemPara, %function
MP2_VerifyMemPara:
	.fnstart
.LFB1359:
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
	.size	MP2_VerifyMemPara, .-MP2_VerifyMemPara
	.align	2
	.global	MP2_EstimatePicQp
	.type	MP2_EstimatePicQp, %function
MP2_EstimatePicQp:
	.fnstart
.LFB1364:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #132
	sub	sp, sp, #132	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:.LANCHOR0	@,
	mov	r4, r0	@ pCtx, pCtx
	movt	r1, #:upper16:.LANCHOR0	@,
	sub	r0, fp, #148	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	movw	r1, #:lower16:76132	@ tmp142,
	movt	r1, #:upper16:76132	@ tmp142,
	ldr	r0, [r4, #296]	@ QuantScaleCode, <variable>.quantiser_scale_code
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L5	@,
	movw	lr, #:lower16:77416	@ tmp145,
	movt	lr, #:upper16:77416	@ tmp145,
	ldr	ip, [r4, lr]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r2, [ip, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	cmp	r2, #0	@ <variable>.q_scale_type,
	subne	r2, fp, #20	@,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScaleCode,
	addne	r0, r2, r0, asl #2	@, tmp149,, QuantScaleCode,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L5:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	MP2_EstimatePicQp, .-MP2_EstimatePicQp
	.global	__aeabi_idiv
	.align	2
	.global	MP2_CalcRealEncFrameRate
	.type	MP2_CalcRealEncFrameRate, %function
MP2_CalcRealEncFrameRate:
	.fnstart
.LFB1368:
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
	movw	ip, #:lower16:77416	@ tmp152,
	movt	ip, #:upper16:77416	@ tmp152,
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #:lower16:76236	@ tmp146,
	movw	r2, #:lower16:76248	@ tmp147,
	ldr	r7, [r0, ip]	@ D.36283, <variable>.pSyntaxInfNew
	movt	r6, #:upper16:76236	@ tmp146,
	movt	r2, #:upper16:76248	@ tmp147,
	movw	r5, #:lower16:76232	@ tmp148,
	movw	r1, #:lower16:76244	@ tmp149,
	movt	r5, #:upper16:76232	@ tmp148,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	movt	r1, #:upper16:76244	@ tmp149,
	movw	ip, #:lower16:76228	@ tmp150,
	movw	r0, #:lower16:76240	@ tmp151,
	cmp	r3, #1	@ <variable>.picture_coding_type,
	movt	r0, #:upper16:76240	@ tmp151,
	movt	ip, #:upper16:76228	@ tmp150,
	ldr	r3, [r4, r6]	@ D.36277, <variable>.GopFrmCnt
	ldr	r2, [r4, r2]	@ D.36278, <variable>.GopFrmCnt
	ldr	r6, [r4, r5]	@ D.36279, <variable>.GopFldCnt
	ldr	r1, [r4, r1]	@ D.36280, <variable>.GopFldCnt
	ldr	r5, [r4, r0]	@ D.36282, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, ip]	@ D.36281, <variable>.GopFrmCntNoRpt
	ldr	r0, [r7, #72]	@ D.36284, <variable>.frame_rate
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	ip, r5, ip	@ FrmNumNoRpt, D.36282, D.36281
	cmp	r0, #0	@ D.36284,
	cmpgt	ip, #0	@, FrmNumNoRpt,
	ble	.L11	@,
	add	r1, r1, r6	@ FldNum, D.36280, D.36279
	cmp	r1, #0	@ FldNum,
	ble	.L11	@,
	mul	r0, ip, r0	@, FrmNumNoRpt, D.36284
	ldrb	lr, [r7, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	lr, #1	@ <variable>.progressive_sequence,
	addeq	r1, r2, r3	@, D.36278, D.36277
	movne	r0, r0, asl #1	@, tmp168,
	bl	__aeabi_idiv	@
	mov	r2, #100	@ tmp176,
	movw	r1, #:lower16:76264	@ tmp173,
	movt	r1, #:upper16:76264	@ tmp173,
	mul	r3, r2, r0	@ tmp175, tmp176, prephitmp.560
	str	r0, [r4, r1]	@ prephitmp.560, <variable>.CodecInfo.RealFrmRate
	movw	r1, #:lower16:76264	@ tmp174,
	movt	r1, #:upper16:76264	@ tmp174,
	add	ip, r3, #1020	@ tmp178, tmp175,
	cmp	r3, #0	@ tmp175,
	add	r2, ip, #3	@ tmp178, tmp178,
	movlt	r3, r2	@ tmp177, tmp178
	mov	r0, r3, asr #10	@ tmp180, tmp177,
	str	r0, [r4, r1]	@ tmp180, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L11:
	movw	r3, #:lower16:76264	@ tmp181,
	movt	r3, #:upper16:76264	@ tmp181,
	mov	r0, #0	@ tmp182,
	str	r0, [r4, r3]	@ tmp182, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_CalcRealEncFrameRate, .-MP2_CalcRealEncFrameRate
	.align	2
	.global	MP2_CalcDar
	.type	MP2_CalcDar, %function
MP2_CalcDar:
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
	movw	r3, #:lower16:77416	@ tmp138,
	movt	r3, #:upper16:77416	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r1, [ip, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	sub	r3, r1, #1	@ D.37898, <variable>.aspect_ratio_information,
	cmp	r3, #2	@ D.37898,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp140,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp140,
	addls	r3, r2, r3, asl #2	@, tmp143, tmp140, D.37898,
	movhi	r0, #0	@ prephitmp.585,
	ldrls	r0, [r3, #128]	@ prephitmp.585, CSWTCH.499
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_CalcDar, .-MP2_CalcDar
	.align	2
	.global	MP2_SearchStartCode
	.type	MP2_SearchStartCode, %function
MP2_SearchStartCode:
	.fnstart
.LFB1371:
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
	cmp	r1, #4	@ CodeLen,
	movle	r0, #0	@ ofst,
	ldmlefd	sp, {fp, sp, pc}	@
	add	ip, r0, r1	@ pEnd, pCode, CodeLen
	add	r3, r0, #2	@ ptr, pCode,
.L33:
	cmp	ip, r3	@ pEnd, ptr
	bls	.L22	@,
.L34:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ byte,* ptr
	cmp	r2, #1	@ byte,
	bls	.L23	@,
.L28:
	add	r3, r3, #3	@ ptr, ptr,
	cmp	ip, r3	@ pEnd, ptr
	bhi	.L34	@,
.L22:
	sub	r0, r1, #3	@ ofst, CodeLen,
	ldmfd	sp, {fp, sp, pc}	@
.L23:
	cmp	r2, #0	@ byte,
	beq	.L35	@,
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2	@ tmp142,
	cmp	r2, #0	@ tmp142,
	bne	.L28	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp143,
	cmp	r2, #0	@ tmp143,
	bne	.L28	@,
	movw	ip, #:lower16:-2	@ tmp144,
	movt	ip, #:upper16:-2	@ tmp144,
	rsb	r1, r0, ip	@ tmp144, pCode, tmp144
	add	r0, r1, r3	@ ofst, tmp144, ptr
	ldmfd	sp, {fp, sp, pc}	@
.L35:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp140,
	cmp	r2, #0	@ tmp140,
	addeq	r3, r3, #1	@ ptr, ptr,
	beq	.L33	@,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ tmp141,
	cmp	r2, #0	@ tmp141,
	addeq	r3, r3, #2	@ ptr, ptr,
	addne	r3, r3, #4	@ ptr, ptr,
	b	.L33	@
	.fnend
	.size	MP2_SearchStartCode, .-MP2_SearchStartCode
	.align	2
	.global	MP2_RecordVFMWState
	.type	MP2_RecordVFMWState, %function
MP2_RecordVFMWState:
	.fnstart
.LFB1375:
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
	movw	r5, #:lower16:77416	@ tmp141,
	movt	r5, #:upper16:77416	@ tmp141,
	ldr	r2, [r0, #0]	@ D.36620, <variable>.pstExtraData
	ldr	r1, [r0, r5]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r4, [r1, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r4, [r2, #400]	@ <variable>.horizontal_size, <variable>.stChanState.image_width
	ldr	r6, [r1, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	r6, [r2, #404]	@ <variable>.vertical_size, <variable>.stChanState.image_height
	ldr	r3, [r0, r5]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r5, #:lower16:76132	@ tmp156,
	movt	r5, #:upper16:76132	@ tmp156,
	ldr	ip, [r3, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	movw	r3, #:lower16:108516	@ tmp161,
	movt	r3, #:upper16:108516	@ tmp161,
	sub	r4, ip, #1	@ D.37909, <variable>.aspect_ratio_information,
	mov	ip, #0	@ tmp152,
	cmp	r4, #2	@ D.37909,
	str	ip, [r2, #412]	@ tmp152, <variable>.stChanState.scan_type
	str	ip, [r2, #416]	@ tmp152, <variable>.stChanState.video_format
	movwls	r6, #:lower16:.LANCHOR0	@ tmp147,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp147,
	addls	r4, r6, r4, asl #2	@, tmp150, tmp147, D.37909,
	movhi	r4, #0	@ prephitmp.635,
	ldrls	r4, [r4, #128]	@ prephitmp.635, CSWTCH.499
	str	r4, [r2, #408]	@ prephitmp.635, <variable>.stChanState.aspect_ratio
	movw	r4, #:lower16:108520	@ tmp164,
	ldr	r6, [r1, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	movt	r4, #:upper16:108520	@ tmp164,
	str	ip, [r2, #424]	@ tmp152, <variable>.stChanState.bit_rate
	str	r6, [r2, #420]	@ <variable>.frame_rate, <variable>.stChanState.frame_rate
	ldr	r5, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r5, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp158
	moveq	r5, #1	@, tmp158
	str	r5, [r2, #428]	@ tmp158, <variable>.stChanState.sub_video_standard
	ldr	r5, [r1, #40]	@ <variable>.profile, <variable>.profile
	str	r5, [r2, #432]	@ <variable>.profile, <variable>.stChanState.profile
	ldr	r1, [r1, #44]	@ <variable>.level, <variable>.level
	str	r1, [r2, #436]	@ <variable>.level, <variable>.stChanState.level
	ldr	r1, [r0, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	str	r1, [r2, #440]	@ <variable>.numTotalFrame, <variable>.stChanState.total_frame_num
	ldr	r1, [r0, r4]	@ D.36631, <variable>.numOutputFrame
	ldr	r3, [r0, r3]	@ temp.646, <variable>.numTotalFrame
	cmp	r3, r1	@ temp.646, D.36631
	rsbge	ip, r1, r3	@ iftmp.459, D.36631, temp.646
	str	ip, [r2, #444]	@ iftmp.459, <variable>.stChanState.error_frame_num
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_RecordVFMWState, .-MP2_RecordVFMWState
	.align	2
	.global	MP2_OutputDispFrame
	.type	MP2_OutputDispFrame, %function
MP2_OutputDispFrame:
	.fnstart
.LFB1399:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_OutputDispFrame, .-MP2_OutputDispFrame
	.align	2
	.global	MP2_DecideAdjustQp
	.type	MP2_DecideAdjustQp, %function
MP2_DecideAdjustQp:
	.fnstart
.LFB1400:
	@ args = 8, pretend = 0, frame = 0
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
	mov	r4, r0	@ PicWidth, PicWidth
	add	r0, r0, r0, asl #1	@, tmp144, PicWidth, PicWidth,
	mov	r5, r1	@ PicHeight, PicHeight
	ldr	r6, [fp, #8]	@ pCodecInfo, pCodecInfo
	mul	r1, r1, r0	@ tmp145, PicHeight, tmp144
	mul	r2, r2, r1	@ D.37547, FrmRate, tmp145
	cmp	r2, #2000	@ D.37547,
	movlt	r7, #1	@ AvgBpp1000,
	blt	.L46	@,
	movw	ip, #:lower16:274877907	@ tmp149,
	movt	ip, #:upper16:274877907	@ tmp149,
	mov	lr, r2, asr #31	@ tmp151, D.37547,
	mov	r0, r3	@, BitRate
	smull	r3, r2, ip, r2	@, tmp148, tmp149, D.37547
	rsb	r1, lr, r2, asr #7	@,, tmp151, tmp148,
	bl	__aeabi_idiv	@
	mov	r7, r0	@ AvgBpp1000,
.L46:
	movw	r1, #:lower16:g_DnrEnable	@ tmp155,
	movt	r1, #:upper16:g_DnrEnable	@ tmp155,
	ldr	r3, [r1, #0]	@ g_DnrEnable, g_DnrEnable
	cmp	r3, #0	@ g_DnrEnable,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	cmp	r7, #39	@ AvgBpp1000,
	movw	r3, #30884	@ tmp157,
	movw	ip, #30880	@ tmp161,
	mov	r0, #36	@ tmp158,
	str	r0, [r6, r3]	@ tmp158, <variable>.AdjustQpDr
	movle	r0, #56	@ tmp160,
	movgt	r0, #40	@ tmp162,
	str	r0, [r6, ip]	@ tmp162, <variable>.AdjustQpDb
	ldr	r2, [fp, #4]	@ ByteSize, ByteSize
	mov	lr, #16000	@ tmp164,
	mov	r1, r4	@, PicWidth
	mul	r0, lr, r2	@, tmp164, ByteSize
	bl	__aeabi_idiv	@
	mov	r1, r5	@, PicHeight
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:1431655766	@ tmp174,
	movt	r1, #:upper16:1431655766	@ tmp174,
	smull	r2, r3, r1, r0	@, tmp173, tmp174, tmp172
	sub	ip, r3, r0, asr #31	@ InstBpp1000, tmp173, tmp172,
	cmp	r7, ip, asl #2	@ AvgBpp1000, InstBpp1000,
	movle	r0, #0	@, tmp178
	movgt	r0, #1	@, tmp178
	cmp	ip, #11	@ InstBpp1000,
	movgt	r2, #0	@, tmp183
	andle	r2, r0, #1	@,, tmp183, tmp178
	cmp	r2, #0	@ tmp183,
	movwne	r2, #30880	@ tmp184,
	movne	r0, #80	@ tmp185,
	strne	r0, [r6, r2]	@ tmp185, <variable>.AdjustQpDb
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_DecideAdjustQp, .-MP2_DecideAdjustQp
	.align	2
	.global	MP2_ExitMb
	.type	MP2_ExitMb, %function
MP2_ExitMb:
	.fnstart
.LFB1409:
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
	mov	r3, #0	@ tmp134,
	str	r3, [r0, #16]	@ tmp134, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_ExitMb, .-MP2_ExitMb
	.align	2
	.global	MP2_GetPacketState
	.type	MP2_GetPacketState, %function
MP2_GetPacketState:
	.fnstart
.LFB1412:
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
	movw	r3, #:lower16:108528	@ tmp136,
	movt	r3, #:upper16:108528	@ tmp136,
	ldrb	r0, [r0, r3]	@ zero_extendqisi2	@ <variable>.IsWaitToDecFlag, <variable>.IsWaitToDecFlag
	cmp	r0, #1	@ <variable>.IsWaitToDecFlag,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_GetPacketState, .-MP2_GetPacketState
	.align	2
	.global	MPEG2DEC_Destroy
	.type	MPEG2DEC_Destroy, %function
MPEG2DEC_Destroy:
	.fnstart
.LFB1393:
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
	movw	r3, #:lower16:76116	@ tmp139,
	movt	r3, #:upper16:76116	@ tmp139,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_Destroy, .-MPEG2DEC_Destroy
	.align	2
	.global	MP2_SetVDMInf
	.type	MP2_SetVDMInf, %function
MP2_SetVDMInf:
	.fnstart
.LFB1374:
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
	movw	r1, #:lower16:76060	@ tmp144,
	movt	r1, #:upper16:76060	@ tmp144,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #75776	@ pBs, pCtx,
	ldrsb	r3, [r4, r1]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	add	r0, r0, #560	@ pBs, pBs,
	cmp	r3, #1	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L63	@,
	movw	r5, #:lower16:76360	@ tmp168,
	movt	r5, #:upper16:76360	@ tmp168,
	movw	r7, #:lower16:76072	@ tmp169,
	movt	r7, #:upper16:76072	@ tmp169,
	ldr	r3, [r4, r5]	@ temp.785, <variable>.Bs.TotalPos
	movw	r2, #:lower16:76056	@ tmp173,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:76056	@ tmp173,
	cmp	r3, #0	@ temp.785,
	add	r7, r3, #7	@ tmp176, temp.785,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r1, r3, lsr #3	@, tmp185, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, temp.785,
	movge	r7, r3	@ temp.785, temp.785
	movw	r5, #:lower16:76076	@ tmp166,
	add	r3, r3, r1, asl #3	@, bs_offset.790, temp.785, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	movt	r5, #:upper16:76076	@ tmp166,
	add	r1, lr, r7, asr #3	@, tmp180, <variable>.CodecInfo.BsOffset, temp.785,
	and	lr, r3, #31	@ tmp188, bs_offset.790,
	str	r1, [r4, r2]	@ tmp180, <variable>.CodecInfo.BsOffset
	bic	r1, ip, #3	@ tmp187, tmp185,
	str	lr, [r4, #172]	@ tmp188, <variable>.Mp2DecParam.StreamBitOffset
	str	r1, [r4, #164]	@ tmp187, <variable>.Mp2DecParam.StreamPhyAddr
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bl	BsResidBits	@
	movw	r3, #:lower16:76084	@ tmp193,
	movt	r3, #:upper16:76084	@ tmp193,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bic	r6, r6, #3	@ stream_base_addr.784, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	and	ip, r2, #3	@ tmp190, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r6, [r4, #168]	@ stream_base_addr.784, <variable>.Mp2DecParam.StreamPhyAddr
	mov	r1, ip, asl #3	@ tmp192, tmp190,
	mov	r2, r3, asl #3	@ tmp195, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r1, [r4, #176]	@ tmp192, <variable>.Mp2DecParam.StreamBitOffset
	str	r2, [r4, #184]	@ tmp195, <variable>.Mp2DecParam.StreamLength
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L63:
	movw	ip, #:lower16:76360	@ tmp147,
	movt	ip, #:upper16:76360	@ tmp147,
	movw	r5, #:lower16:76072	@ tmp146,
	movt	r5, #:upper16:76072	@ tmp146,
	ldr	r3, [r4, ip]	@ D.36595, <variable>.Bs.TotalPos
	movw	r2, #:lower16:76056	@ tmp148,
	ldr	r1, [r4, r5]	@ D.36594, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:76056	@ tmp148,
	cmp	r3, #0	@ D.36595,
	add	r5, r3, #7	@ tmp151, D.36595,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r3, r1, asl #3	@, tmp161, D.36595, D.36594,
	movge	r5, r3	@ D.36595, D.36595
	add	r3, r1, r3, lsr #3	@, tmp157, D.36594, D.36595,
	add	r1, lr, r5, asr #3	@, tmp155, <variable>.CodecInfo.BsOffset, D.36595,
	bic	r3, r3, #3	@ tmp158, tmp157,
	str	r1, [r4, r2]	@ tmp155, <variable>.CodecInfo.BsOffset
	and	lr, ip, #31	@ tmp162, tmp161,
	str	r3, [r4, #164]	@ tmp158, <variable>.Mp2DecParam.StreamPhyAddr
	str	lr, [r4, #172]	@ tmp162, <variable>.Mp2DecParam.StreamBitOffset
	bl	BsResidBits	@
	mov	r2, #0	@ tmp163,
	str	r2, [r4, #184]	@ tmp163, <variable>.Mp2DecParam.StreamLength
	str	r2, [r4, #168]	@ tmp163, <variable>.Mp2DecParam.StreamPhyAddr
	str	r2, [r4, #176]	@ tmp163, <variable>.Mp2DecParam.StreamBitOffset
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_SetVDMInf, .-MP2_SetVDMInf
	.align	2
	.global	MP2_DecNewPic
	.type	MP2_DecNewPic, %function
MP2_DecNewPic:
	.fnstart
.LFB1367:
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
	mov	r5, r0	@ pCtx, pCtx
	bl	MP2_SetVDMInf	@
	ldr	r2, [r5, #0]	@ temp.828, <variable>.pstExtraData
	movw	r0, #:lower16:77416	@ tmp146,
	movt	r0, #:upper16:77416	@ tmp146,
	movw	r3, #45320	@ tmp143,
	ldr	r1, [r5, r0]	@ D.36221, <variable>.pSyntaxInfNew
	ldr	r0, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r5, r3]	@ <variable>.s32Compress_en, <variable>.Mp2DecParam.Compress_en
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ D.36222, <variable>.picture_coding_type
	cmp	r3, #3	@ D.36222,
	beq	.L73	@,
	cmp	r3, #2	@ D.36222,
	movweq	r3, #:lower16:108524	@ tmp156,
	movteq	r3, #:upper16:108524	@ tmp156,
	moveq	r1, #1	@ tmp157,
	streq	r1, [r5, r3]	@ tmp157, <variable>.PPicFound
.L66:
	add	r1, r5, #8	@ D.36236, pCtx,
	str	r1, [r5, #4]	@ D.36236, <variable>.pMp2DecParam
	ldr	r3, [r2, #680]	@ D.36237, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.36237,
	beq	.L74	@,
	cmp	r3, #2	@ D.36237,
	beq	.L75	@,
.L70:
	movw	r3, #:lower16:77416	@ tmp174,
	movt	r3, #:upper16:77416	@ tmp174,
	movw	r0, #:lower16:76108	@ tmp169,
	movt	r0, #:upper16:76108	@ tmp169,
	ldr	r2, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r4, lr, #16252928	@ tmp172, <variable>.CodecInfo.StreamIntegrality,
	str	r4, [r5, r0]	@ tmp172, <variable>.CodecInfo.StreamIntegrality
	ldrb	r4, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r4, #1	@ <variable>.picture_coding_type,
	beq	.L76	@,
.L71:
	mov	r0, #1	@ Ret,
.L68:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L76:
	movw	r1, #:lower16:g_event_report	@ tmp176,
	movt	r1, #:upper16:g_event_report	@ tmp176,
	ldr	r3, [r1, #0]	@ g_event_report.446, g_event_report
	cmp	r3, #0	@ g_event_report.446,
	beq	.L71	@,
	ldr	lr, [r5, #184]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	sub	r2, fp, #20	@ tmp185,,
	ldr	ip, [r5, #180]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	movw	r0, #:lower16:108512	@ tmp183,
	movt	r0, #:upper16:108512	@ tmp183,
	mov	r1, #20	@,
	add	ip, lr, ip	@ tmp177, <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	add	lr, ip, #7	@ tmp181, tmp177,
	cmp	ip, #0	@ tmp177,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	movlt	ip, lr	@ tmp180, tmp181
	mov	ip, ip, asr #3	@ tmp182, tmp180,
	str	ip, [r2, #-4]!	@ tmp182, para
	blx	r3	@ g_event_report.446
	mov	r0, r4	@ Ret, <variable>.picture_coding_type
	b	.L68	@
.L73:
	movw	ip, #:lower16:108524	@ tmp147,
	movt	ip, #:upper16:108524	@ tmp147,
	ldr	r0, [r5, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #0	@ <variable>.PPicFound,
	bne	.L66	@,
	movw	r3, #:lower16:76136	@ tmp149,
	movt	r3, #:upper16:76136	@ tmp149,
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	lr, #2	@ <variable>.CodecInfo.RefNum,
	beq	.L66	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L68	@,
	movw	ip, #:lower16:76120	@ tmp152,
	movt	ip, #:upper16:76120	@ tmp152,
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r1, lr, #1	@ tmp155, <variable>.CodecInfo.Second_Field
	movcc	r1, #0	@ tmp155
	str	r1, [r5, ip]	@ tmp155, <variable>.CodecInfo.Second_Field
	b	.L68	@
.L74:
	cmp	r1, #0	@ D.36236,
	beq	.L70	@,
	movw	r1, #:lower16:77416	@ tmp159,
	movt	r1, #:upper16:77416	@ tmp159,
	ldr	r2, [r5, r1]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r3, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	moveq	r0, #0	@ tmp161,
	streq	r0, [r5, #4]	@ tmp161, <variable>.pMp2DecParam
	bne	.L70	@,
	b	.L68	@
.L75:
	ldr	r0, [r2, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L70	@,
	cmp	r1, #0	@ D.36236,
	beq	.L70	@,
	movw	r3, #:lower16:77416	@ tmp164,
	movt	r3, #:upper16:77416	@ tmp164,
	ldr	lr, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	ip, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	bne	.L70	@,
	mov	r0, #0	@ tmp166,
	str	r0, [r5, #4]	@ tmp166, <variable>.pMp2DecParam
	ldr	ip, [r2, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, ip, #1	@ tmp168, <variable>.stDisParams.s32DisNums,
	str	r1, [r2, #684]	@ tmp168, <variable>.stDisParams.s32DisNums
	b	.L68	@
	.fnend
	.size	MP2_DecNewPic, .-MP2_DecNewPic
	.align	2
	.global	MP2_u_v
	.type	MP2_u_v, %function
MP2_u_v:
	.fnstart
.LFB1407:
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
	mov	r7, r2	@ SeTraceString, SeTraceString
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r5	@, LenInBits
	mov	r4, r0	@ D.37726,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r2, r7	@, SeTraceString
	mov	r3, r4	@, D.37726
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.37726
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_u_v, .-MP2_u_v
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
.LFB1411:
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
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	add	r3, r4, r0, asl #3	@, tmp147, tmp144, D.37828,
	ldr	r5, [r3, #140]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r3, #144]	@ SkipBit, tab_for_first_4bit
	cmp	r5, #6	@ MbAddrInc,
	bls	.L84	@,
	cmp	r5, #9	@ MbAddrInc,
	beq	.L85	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	and	ip, r0, #127	@ code.885,,
	mov	r0, r6	@, pBs
	sub	r5, ip, #24	@ code.886, code.885,
	add	r1, r4, r5, asl #3	@, tmp167, tmp144, code.886,
	mov	r4, r1	@ tmp161, tmp167
	ldr	r1, [r1, #272]	@, tab_for_last_7bit
	ldr	r5, [r4, #268]	@ MbAddrInc, tab_for_last_7bit
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L84:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L85:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	rsb	r5, r0, #9	@ MbAddrInc,,
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_MbAddrInc, .-MP2_MbAddrInc
	.align	2
	.global	MP2_InitMb
	.type	MP2_InitMb, %function
MP2_InitMb:
	.fnstart
.LFB1408:
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
	mov	r5, #0	@ macroblock_escape,
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	ldr	r4, [r0, #52]	@ pBs, <variable>.pBs
	b	.L87	@
.L91:
	cmp	r3, #15	@ D.37751,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	beq	.L88	@,
	cmp	r3, #8	@ D.37751,
	bne	.L89	@,
	bl	MP2_u_v	@
.L87:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC3	@,
	mov	r1, #11	@,
	movt	r2, #:upper16:.LC3	@,
	mov	r3, r0	@ D.37751,
	cmp	r3, #23	@ D.37751,
	mov	r0, r4	@, pBs
	bls	.L91	@,
	bl	MP2_MbAddrInc	@
	ldr	r4, [r6, #16]	@ <variable>.FirstMbInSliceFlag, <variable>.FirstMbInSliceFlag
	cmp	r4, #0	@ <variable>.FirstMbInSliceFlag,
	beq	.L92	@,
	ldr	r1, [r6, #28]	@ D.37756, <variable>.previous_macroblock_address
	add	r2, r5, r0	@ tmp152, macroblock_escape, macroblock_address_increment
	ldr	r3, [r6, #12]	@ <variable>.pic_total_mb_num, <variable>.pic_total_mb_num
	cmp	r1, #0	@ D.37756,
	addne	r2, r2, r1	@ SlcStartMbNum, tmp152, D.37756
	subeq	r2, r2, #1	@ SlcStartMbNum, tmp153,
	sub	r3, r3, #1	@ D.37764, <variable>.pic_total_mb_num,
	str	r2, [r6, #44]	@ SlcStartMbNum, <variable>.slicen_start_mb_num
	cmp	r2, r3	@ SlcStartMbNum, D.37764
	movls	r0, #1	@ ret,
	ldmlsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L88:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L89:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L92:
	mov	r2, r4	@, <variable>.FirstMbInSliceFlag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ ret, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_InitMb, .-MP2_InitMb
	.align	2
	.global	MP2_DecSliceHeader
	.type	MP2_DecSliceHeader, %function
MP2_DecSliceHeader:
	.fnstart
.LFB1406:
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
	mov	r5, r0	@ pSlcInfo, pSlcInfo
	ldr	r0, [r0, #4]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	r2, #1	@ tmp145,
	mov	r3, #0	@ tmp146,
	str	r2, [r5, #16]	@ tmp145, <variable>.FirstMbInSliceFlag
	cmp	r0, #175	@ <variable>.pic_height_in_mb,
	str	r3, [r5, #24]	@ tmp146, <variable>.slice_vertical_position_extension
	ldr	r4, [r5, #52]	@ pBs, <variable>.pBs
	bls	.L98	@,
	ldr	r1, [r5, #0]	@ <variable>.mpeg1_flag, <variable>.mpeg1_flag
	cmp	r1, #0	@ <variable>.mpeg1_flag,
	beq	.L107	@,
.L98:
	mov	r1, #0	@ prephitmp.933,
.L99:
	ldr	ip, [r5, #20]	@ <variable>.slice_vertical_position, <variable>.slice_vertical_position
	ldr	r0, [r5, #8]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	sub	r2, ip, #1	@ tmp150, <variable>.slice_vertical_position,
	add	r3, r2, r1	@ tmp152, tmp150, prephitmp.933
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r2, #:upper16:.LC9	@,
	mul	lr, r0, r3	@ D.37700, <variable>.pic_width_in_mb, tmp152
	mov	r0, r4	@, pBs
	cmp	lr, #0	@ D.37700,
	subne	lr, lr, #1	@ iftmp.492, D.37700,
	str	lr, [r5, #28]	@ iftmp.492, <variable>.previous_macroblock_address
	bl	MP2_u_v	@
	mov	ip, #0	@ tmp155,
	mov	r1, #1	@,
	str	ip, [r5, #32]	@ tmp155, <variable>.intra_slice
	str	r0, [r5, #48]	@, <variable>.quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L108	@,
.L102:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r2, #:upper16:.LC13	@,
	bl	MP2_u_v	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L108:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	bl	MP2_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r2, #:upper16:.LC11	@,
	bl	MP2_u_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r2, #:upper16:.LC12	@,
	str	r0, [r5, #32]	@, <variable>.intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L103	@
.L104:
	bl	MP2_u_v	@
	movw	r2, #:lower16:.LC14	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC14	@,
	mov	r1, #8	@,
	bl	MP2_u_v	@
.L103:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC13	@,
	mov	r1, #1	@,
	movt	r2, #:upper16:.LC13	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L104	@,
	b	.L102	@
.L107:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	bl	MP2_u_v	@
	mov	r1, r0, asl #7	@ prephitmp.933, D.37694,
	str	r0, [r5, #24]	@ D.37694, <variable>.slice_vertical_position_extension
	b	.L99	@
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
	.align	2
	.global	MP2_GetFirstMbInSlice
	.type	MP2_GetFirstMbInSlice, %function
MP2_GetFirstMbInSlice:
	.fnstart
.LFB1405:
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
	mov	r4, r0	@ pSlcInfo, pSlcInfo
	bl	MP2_DecSliceHeader	@
	mov	r0, r4	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #16]	@ tmp136, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	MP2_GetFirstMbInSlice, .-MP2_GetFirstMbInSlice
	.align	2
	.global	copyright_extension
	.type	copyright_extension, %function
copyright_extension:
	.fnstart
.LFB1390:
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
	add	r0, r0, #75776	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #560	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	copyright_extension, .-copyright_extension
	.align	2
	.global	picture_temporal_scalable_extension
	.type	picture_temporal_scalable_extension, %function
picture_temporal_scalable_extension:
	.fnstart
.LFB1388:
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
	add	r0, r0, #75776	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #560	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	picture_temporal_scalable_extension, .-picture_temporal_scalable_extension
	.align	2
	.global	picture_spatial_scalable_extension
	.type	picture_spatial_scalable_extension, %function
picture_spatial_scalable_extension:
	.fnstart
.LFB1387:
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
	add	r0, r0, #75776	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #560	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	picture_spatial_scalable_extension, .-picture_spatial_scalable_extension
	.align	2
	.global	sequence_scalable_extension
	.type	sequence_scalable_extension, %function
sequence_scalable_extension:
	.fnstart
.LFB1384:
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
	add	r0, r0, #75776	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #560	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	sequence_scalable_extension, .-sequence_scalable_extension
	.align	2
	.global	MP2_ClearCurPic
	.type	MP2_ClearCurPic, %function
MP2_ClearCurPic:
	.fnstart
.LFB1403:
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
	mov	r8, #45312	@ tmp165,
	ldr	r3, [r0, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r6, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.Mp2DecParam.SlcNum,
	beq	.L120	@,
	movw	r7, #:lower16:108512	@ tmp180,
	mov	r4, r0	@ ivtmp.1089, pCtx
	movt	r7, #:upper16:108512	@ tmp180,
	mov	r5, #0	@ i,
	b	.L122	@
.L121:
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r4, r4, #44	@ ivtmp.1089, ivtmp.1089,
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bls	.L120	@,
.L122:
	ldr	r1, [r4, #280]	@, <variable>.BsID
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, #260]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	beq	.L121	@,
	ldr	r1, [r4, #268]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	beq	.L121	@,
	ldr	r1, [r4, #284]	@, <variable>.BsID
	add	r4, r4, #44	@ ivtmp.1089, ivtmp.1089,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bhi	.L122	@,
.L120:
	mov	r3, #45312	@ tmp177,
	mov	ip, #0	@ tmp178,
	str	ip, [r6, r3]	@ tmp178, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MP2_ClearCurPic, .-MP2_ClearCurPic
	.align	2
	.global	MP2_WriteSliceInfo
	.type	MP2_WriteSliceInfo, %function
MP2_WriteSliceInfo:
	.fnstart
.LFB1410:
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
	mov	r1, #45312	@ tmp141,
	ldr	ip, [r0, r1]	@ D.37784, <variable>.Mp2DecParam.SlcNum
	mov	r5, #44	@ tmp144,
	movw	r3, #:lower16:76312	@ tmp147,
	movt	r3, #:upper16:76312	@ tmp147,
	mov	r4, r0	@ pCtx, pCtx
	movw	lr, #:lower16:76328	@ tmp154,
	mla	r5, r5, ip, r0	@ tmp145, tmp144, D.37784, pCtx
	ldr	r0, [r0, r3]	@ <variable>.SliceInfo.intra_slice, <variable>.SliceInfo.intra_slice
	movt	lr, #:upper16:76328	@ tmp154,
	movw	ip, #:lower16:76324	@ tmp161,
	movt	ip, #:upper16:76324	@ tmp161,
	str	r0, [r5, #292]	@ <variable>.SliceInfo.intra_slice, <variable>.intra_slice
	ldr	r2, [r4, lr]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.SliceInfo.quantiser_scale_code
	str	r2, [r5, #296]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r3, [r4, ip]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.SliceInfo.slicen_start_mb_num
	str	r3, [r5, #288]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.slice_start_mbn
	ldr	r2, [r4, r1]	@ temp.1119, <variable>.Mp2DecParam.SlcNum
	cmp	r2, #1024	@ temp.1119,
	bcs	.L132	@,
	movw	r3, #:lower16:76360	@ tmp172,
	movt	r3, #:upper16:76360	@ tmp172,
	movw	r0, #:lower16:76072	@ tmp179,
	movt	r0, #:upper16:76072	@ tmp179,
	ldr	r1, [r4, r3]	@ D.37798, <variable>.Bs.TotalPos
	movw	r3, #:lower16:76088	@ tmp193,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r3, #:upper16:76088	@ tmp193,
	and	lr, r1, #7	@ tmp187, D.37798,
	str	lr, [r5, #272]	@ tmp187, <variable>.BsBitOffset
	add	ip, r2, r1, lsr #3	@, tmp181, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, D.37798,
	str	ip, [r5, #256]	@ tmp181, <variable>.BsPhyAddr
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	add	r0, r4, #75776	@, pCtx,
	add	r0, r0, #560	@,,
	str	lr, [r5, #280]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	bl	BsResidBits	@
	movw	r3, #:lower16:76060	@ tmp202,
	movt	r3, #:upper16:76060	@ tmp202,
	str	r0, [r5, #264]	@, <variable>.BsLenInBit
	ldrsh	r2, [r4, r3]	@ D.37803,
	cmp	r2, #1	@ D.37803,
	beq	.L133	@,
	cmp	r2, #256	@ D.37803,
	bne	.L130	@,
	movw	r2, #:lower16:76076	@ tmp234,
	movt	r2, #:upper16:76076	@ tmp234,
	movw	ip, #:lower16:76092	@ tmp247,
	movt	ip, #:upper16:76092	@ tmp247,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	r3, #0	@ tmp241,
	str	r3, [r5, #276]	@ tmp241, <variable>.BsBitOffset
	movw	lr, #:lower16:76084	@ tmp254,
	movt	lr, #:upper16:76084	@ tmp254,
	str	r1, [r5, #260]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.BsPhyAddr
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	str	r0, [r5, #284]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	mov	r0, #1	@ D.37795,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r1, r2, asl #3	@ tmp256, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r1, [r5, #268]	@ tmp256, <variable>.BsLenInBit
	mov	r1, #45312	@ tmp262,
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	ip, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	ip, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L132:
	mov	r3, #1024	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:76108	@ tmp166,
	movt	r3, #:upper16:76108	@ tmp166,
	movw	r2, #:lower16:76152	@ tmp170,
	movt	r2, #:upper16:76152	@ tmp170,
	mov	r1, #0	@ tmp171,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r1	@ D.37795, tmp171
	str	r1, [r4, r2]	@ tmp171, <variable>.CodecInfo.HDRState
	bic	r1, ip, #5767168	@ tmp169, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r3]	@ tmp169, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L133:
	mov	r1, #45312	@ tmp262,
	mov	ip, #0	@ tmp209,
	str	ip, [r5, #268]	@ tmp209, <variable>.BsLenInBit
	mov	r0, #1	@ D.37795,
	str	ip, [r5, #260]	@ tmp209, <variable>.BsPhyAddr
	str	ip, [r5, #276]	@ tmp209, <variable>.BsBitOffset
	str	ip, [r5, #284]	@ tmp209, <variable>.BsID
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	ip, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	ip, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L130:
	movw	lr, #:lower16:76061	@ tmp260,
	movt	lr, #:upper16:76061	@ tmp260,
	ldrsb	r2, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	ldrsb	r3, [r4, lr]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37795,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_DecSlice
	.type	MP2_DecSlice, %function
MP2_DecSlice:
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
	movw	r3, #:lower16:77416	@ tmp140,
	movw	lr, #:lower16:76064	@ tmp142,
	movt	r3, #:upper16:77416	@ tmp140,
	movt	lr, #:upper16:76064	@ tmp142,
	movw	r2, #:lower16:76080	@ tmp145,
	movt	r2, #:upper16:76080	@ tmp145,
	movw	r5, #:lower16:76132	@ tmp148,
	movt	r5, #:upper16:76132	@ tmp148,
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r0, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	mov	r4, r0	@ pCtx, pCtx
	ldr	r7, [r0, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	ip, #:lower16:76316	@ tmp141,
	ldr	lr, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	ip, #:upper16:76316	@ tmp141,
	movw	r0, #:lower16:76320	@ tmp144,
	movw	r2, #:lower16:76280	@ tmp147,
	movt	r0, #:upper16:76320	@ tmp144,
	movt	r2, #:upper16:76280	@ tmp147,
	str	r6, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.SliceInfo.VirAddr
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp150
	moveq	r5, #1	@, tmp150
	str	r7, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.SliceInfo.ByteLen
	movw	r7, #:lower16:76284	@ tmp151,
	str	r5, [r4, r2]	@ tmp150, <variable>.SliceInfo.mpeg1_flag
	movt	r7, #:upper16:76284	@ tmp151,
	ldr	ip, [r3, #60]	@ <variable>.mb_height, <variable>.mb_height
	movw	r6, #:lower16:76288	@ tmp153,
	movt	r6, #:upper16:76288	@ tmp153,
	movw	r5, #:lower16:76300	@ tmp163,
	movt	r5, #:upper16:76300	@ tmp163,
	add	lr, r4, #75776	@ tmp167, pCtx,
	str	ip, [r4, r7]	@ <variable>.mb_height, <variable>.SliceInfo.pic_height_in_mb
	movw	r2, #:lower16:76292	@ tmp155,
	ldr	r7, [r3, #56]	@ <variable>.mb_width, <variable>.mb_width
	movt	r2, #:upper16:76292	@ tmp155,
	movw	ip, #:lower16:76332	@ tmp165,
	movt	ip, #:upper16:76332	@ tmp165,
	mov	r0, lr	@, tmp167
	add	lr, lr, #560	@ tmp167, tmp167,
	str	r7, [r4, r6]	@ <variable>.mb_width, <variable>.SliceInfo.pic_width_in_mb
	uxtb	r6, r1	@ tmp164, code
	ldr	r1, [r3, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	add	r0, r0, #504	@,,
	ldr	r3, [r3, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	add	r1, r1, #15	@ tmp159, <variable>.horizontal_size,
	str	r6, [r4, r5]	@ tmp164, <variable>.SliceInfo.slice_vertical_position
	add	r3, r3, #15	@ tmp156, <variable>.vertical_size,
	str	lr, [r4, ip]	@ tmp167, <variable>.SliceInfo.pBs
	mov	r1, r1, lsr #4	@ tmp161, tmp159,
	mov	r5, r3, lsr #4	@ tmp158, tmp156,
	mul	r3, r1, r5	@ tmp162, tmp161, tmp158
	str	r3, [r4, r2]	@ tmp162, <variable>.SliceInfo.pic_total_mb_num
	bl	MP2_GetFirstMbInSlice	@
	cmp	r0, #1	@ D.37662,
	mov	r5, r0	@ D.37662,
	beq	.L135	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L135:
	mov	r0, r4	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.37667,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r5	@, D.37662
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_DecSlice, .-MP2_DecSlice
	.align	2
	.global	MP2_ClearCurPacket
	.type	MP2_ClearCurPacket, %function
MP2_ClearCurPacket:
	.fnstart
.LFB1402:
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
	mov	r4, r1	@ pMp2Packet, pMp2Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #0]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L140	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L140:
	mov	r0, r4	@, pMp2Packet
	mov	r1, #36	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_ClearCurPacket, .-MP2_ClearCurPacket
	.align	2
	.global	MP2_ReceivePacket
	.type	MP2_ReceivePacket, %function
MP2_ReceivePacket:
	.fnstart
.LFB1401:
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
	mov	r1, r0	@ pMp2CodecInfo, pMp2CodecInfo
	beq	.L148	@,
	movw	ip, #30728	@ tmp141,
	mov	r5, #0	@ tmp142,
	str	r5, [r0, ip]	@ tmp142, <variable>.BsOffset
	movw	r3, #30772	@ tmp143,
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	ip, #30744	@ tmp145,
	str	r0, [r1, r3]	@ <variable>.LenInByte, <variable>.PacketTail
	movw	r3, #30736	@ tmp147,
	ldr	r0, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r1, ip]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r0, #30752	@ tmp149,
	ldr	ip, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	ip, [r1, r3]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r3, #30732	@ tmp151,
	ldr	ip, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r0]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	ip, #30760	@ tmp154,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r1, r3]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, ip]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L145	@,
	ldr	r0, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #30748	@ tmp157,
	movw	ip, #30740	@ tmp159,
	str	r0, [r1, r3]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r3, #30756	@ tmp161,
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r1, ip]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #30733	@ tmp163,
	ldr	ip, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r3]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r3, #30764	@ tmp166,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r1, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, r3]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r1, #30720	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.37573, tmp142
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L145:
	movw	ip, #30764	@ tmp182,
	movw	r2, #30748	@ tmp173,
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.StreamID
	movw	r3, #30740	@ tmp175,
	str	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.BsPhyAddr
	movw	ip, #30756	@ tmp177,
	movw	r2, #30733	@ tmp179,
	str	r5, [r1, r3]	@ tmp142, <variable>.stMp2Packet.BsVirAddr
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.BsLength
	strb	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.IsLastSeg
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L148:
	movw	r3, #30788	@ tmp139,
	mov	r0, #1	@,
	ldr	r2, [r1, r3]	@, <variable>.Frame_Cnt
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.37573, pPacket
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_ReceivePacket, .-MP2_ReceivePacket
	.align	2
	.global	MPEG2DEC_GetImageBuffer
	.type	MPEG2DEC_GetImageBuffer, %function
MPEG2DEC_GetImageBuffer:
	.fnstart
.LFB1398:
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #45329	@ tmp138,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r3, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L150	@,
	movw	r2, #:lower16:76120	@ tmp140,
	movt	r2, #:upper16:76120	@ tmp140,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L151	@,
.L150:
	movw	r5, #:lower16:108512	@ tmp142,
	movt	r5, #:upper16:108512	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L151	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L152	@,
.L155:
	mov	r0, #0	@ D.37512,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L151:
	mov	r0, #1	@ D.37512,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L152:
	add	ip, r4, #76800	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #624	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L155	@
	.fnend
	.size	MPEG2DEC_GetImageBuffer, .-MPEG2DEC_GetImageBuffer
	.align	2
	.global	MP2_ProtocolPPSCheck
	.type	MP2_ProtocolPPSCheck, %function
MP2_ProtocolPPSCheck:
	.fnstart
.LFB1372:
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
	movw	r3, #:lower16:76132	@ tmp144,
	movt	r3, #:upper16:76132	@ tmp144,
	movw	r2, #:lower16:77416	@ tmp143,
	movt	r2, #:upper16:77416	@ tmp143,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	ldr	r1, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L158	@,
	cmp	r3, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L176	@,
	movw	ip, #:lower16:76108	@ tmp168,
	movt	ip, #:upper16:76108	@ tmp168,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r2, r2, #63	@ prephitmp.1240, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r0, ip]	@ prephitmp.1240, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
.L166:
	tst	r2, #24	@ prephitmp.1240,
	beq	.L170	@,
	cmp	r3, #3	@ prephitmp.1244,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	movw	lr, #:lower16:76108	@ tmp172,
	movw	r5, #:lower16:108512	@ tmp174,
	movt	lr, #:upper16:76108	@ tmp172,
	movt	r5, #:upper16:108512	@ tmp174,
	movw	r7, #:lower16:76176	@ tmp176,
	movt	r7, #:upper16:76176	@ tmp176,
	orr	r6, r2, #64	@ tmp173, prephitmp.1240,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, lr]	@ tmp173, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L172	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:76172	@ tmp200,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:76172	@ tmp200,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp190,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp190, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp190, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp190, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp190, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L177	@,
.L172:
	movw	r3, #:lower16:76136	@ tmp212,
	movt	r3, #:upper16:76136	@ tmp212,
	mov	r1, #0	@ tmp213,
	str	r1, [r4, r3]	@ tmp213,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L170:
	cmp	r3, #1	@ prephitmp.1244,
	biceq	r2, r2, #192	@ tmp215, prephitmp.1240,
	movweq	r3, #:lower16:76108	@ tmp214,
	movteq	r3, #:upper16:76108	@ tmp214,
	streq	r2, [r4, r3]	@ tmp215,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L176:
	movw	r3, #:lower16:76108	@ tmp161,
	movt	r3, #:upper16:76108	@ tmp161,
	ldr	r2, [r0, r3]	@ prephitmp.1243, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #1048576	@ prephitmp.1243,
	orreq	r2, r2, #16	@ prephitmp.1243, prephitmp.1243,
	streq	r2, [r0, r3]	@ prephitmp.1243, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
	sub	ip, r3, #1	@ tmp164, prephitmp.1244,
	uxtb	r0, ip	@ tmp165, tmp164
	cmp	r0, #2	@ tmp165,
	bls	.L175	@,
.L169:
	movw	r0, #:lower16:76108	@ tmp167,
	movt	r0, #:upper16:76108	@ tmp167,
	orr	r2, r2, #8	@ prephitmp.1240, prephitmp.1243,
	str	r2, [r4, r0]	@ prephitmp.1240, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
	b	.L166	@
.L158:
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
	sub	r2, r3, #1	@ tmp146, prephitmp.1244,
	uxtb	r2, r2	@ tmp147, tmp146
	cmp	r2, #3	@ tmp147,
	movwhi	r3, #:lower16:76108	@ tmp149,
	movthi	r3, #:upper16:76108	@ tmp149,
	movwls	r2, #:lower16:76108	@ tmp148,
	movtls	r2, #:upper16:76108	@ tmp148,
	ldrhi	r2, [r0, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldrls	r2, [r0, r2]	@ prephitmp.1246, <variable>.CodecInfo.StreamIntegrality
	orrhi	r2, r2, #8	@ prephitmp.1246, <variable>.CodecInfo.StreamIntegrality,
	strhi	r2, [r0, r3]	@ prephitmp.1246, <variable>.CodecInfo.StreamIntegrality
	ldrhib	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
	sub	ip, r3, #2	@ tmp152, prephitmp.1244,
	uxtb	r0, ip	@ tmp153, tmp152
	cmp	r0, #1	@ tmp153,
	bls	.L178	@,
.L175:
	movw	r1, #:lower16:76108	@ tmp166,
	movt	r1, #:upper16:76108	@ tmp166,
	ldr	r2, [r4, r1]	@ prephitmp.1240, <variable>.CodecInfo.StreamIntegrality
	b	.L166	@
.L178:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	cmp	r0, #0	@ <variable>.forward_f_code,
	orreq	r2, r2, #8	@ prephitmp.1250, prephitmp.1246,
	movweq	r3, #:lower16:76108	@ tmp156,
	movteq	r3, #:upper16:76108	@ tmp156,
	movwne	r2, #:lower16:76108	@ tmp155,
	movtne	r2, #:upper16:76108	@ tmp155,
	streq	r2, [r4, r3]	@ prephitmp.1250, <variable>.CodecInfo.StreamIntegrality
	ldreqb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1244, <variable>.picture_coding_type
	ldrne	r2, [r4, r2]	@ prephitmp.1250, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #3	@ prephitmp.1244,
	bne	.L175	@,
	ldrb	ip, [r1, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	cmp	ip, #0	@ <variable>.backward_f_code,
	beq	.L169	@,
	b	.L175	@
.L177:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.36531, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.36531, <variable>.CodecInfo.FwdFsID
	b	.L172	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MPEG2DEC_RecycleImage
	.type	MPEG2DEC_RecycleImage, %function
MPEG2DEC_RecycleImage:
	.fnstart
.LFB1395:
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
	movw	r4, #:lower16:108512	@ tmp138,
	movt	r4, #:upper16:108512	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L180	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L180:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_RecycleImage, .-MPEG2DEC_RecycleImage
	.align	2
	.global	MPEG2DEC_Init
	.type	MPEG2DEC_Init, %function
MPEG2DEC_Init:
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
	movw	r5, #:lower16:77768	@ tmp139,
	movt	r5, #:upper16:77768	@ tmp139,
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:108536	@,
	movt	r1, #:upper16:108536	@,
	ldr	r8, [r0, r5]	@ D.37228, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r2, r4, #76800	@, pCtx,
	add	r0, r2, #624	@,,
	mov	r6, #0	@ tmp151,
	str	r8, [r4, r5]	@ D.37228, <variable>.ImageQue.ResetMagicWord
	movw	r5, #:lower16:108524	@ tmp150,
	bl	ResetVoQueue	@
	add	lr, r4, #76800	@ tmp146, pCtx,
	movw	ip, #:lower16:77420	@ tmp144,
	movt	ip, #:upper16:77420	@ tmp144,
	movt	r5, #:upper16:108524	@ tmp150,
	movw	r1, #:lower16:77416	@ tmp147,
	movw	r2, #:lower16:76120	@ tmp152,
	movt	r1, #:upper16:77416	@ tmp147,
	movt	r2, #:upper16:76120	@ tmp152,
	movw	r3, #:lower16:76152	@ tmp157,
	movt	r3, #:upper16:76152	@ tmp157,
	mov	r0, lr	@ tmp149, tmp146
	add	lr, lr, #240	@ tmp146, tmp146,
	str	lr, [r4, ip]	@ tmp146, <variable>.pSyntaxInfOld
	movw	lr, #45329	@ tmp154,
	str	r6, [r4, r5]	@ tmp151, <variable>.PPicFound
	str	r6, [r4, r3]	@ tmp151, <variable>.CodecInfo.HDRState
	add	r5, r0, #428	@ tmp149, tmp149,
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, #3	@ tmp155,
	str	r5, [r4, r1]	@ tmp149, <variable>.pSyntaxInfNew
	mov	r5, #1	@ tmp153,
	strb	r0, [r4, lr]	@ tmp155, <variable>.CodecInfo.Last_FieldStruct
	movw	ip, #:lower16:76096	@ tmp159,
	str	r5, [r4, r2]	@ tmp153, <variable>.CodecInfo.Second_Field
	movt	ip, #:upper16:76096	@ tmp159,
	ldr	r1, [r7, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r2, #:lower16:76144	@ tmp161,
	movt	r2, #:upper16:76144	@ tmp161,
	mov	r0, r4	@, pCtx
	str	r6, [r4, r2]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	r1, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:108512	@ tmp163,
	movt	r3, #:upper16:108512	@ tmp163,
	cmn	r0, #1	@ D.37241,
	str	r0, [r4, r3]	@ D.37241, <variable>.ChanID
	movne	r0, r5	@ D.37246, tmp153
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r6	@, tmp151
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37246,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_Init, .-MPEG2DEC_Init
	.align	2
	.global	extra_bit_information
	.type	extra_bit_information, %function
extra_bit_information:
	.fnstart
.LFB1389:
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
	add	r4, r0, #75776	@ pBs, pCtx,
	add	r4, r4, #560	@ pBs, pBs,
	mov	r5, #0	@ Byte_Count,
.L187:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L188	@,
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	bgt	.L187	@,
.L188:
	mov	r0, r5	@, Byte_Count
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	extra_bit_information, .-extra_bit_information
	.align	2
	.global	picture_coding_extension
	.type	picture_coding_extension, %function
picture_coding_extension:
	.fnstart
.LFB1386:
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
	movw	r7, #:lower16:76108	@ tmp165,
	movt	r7, #:upper16:76108	@ tmp165,
	add	r4, r0, #75776	@ pBs, pCtx,
	add	r4, r4, #560	@ pBs, pBs,
	movw	lr, #:lower16:77416	@ tmp164,
	ldr	r2, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	lr, #:upper16:77416	@ tmp164,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #4	@,
	orr	r5, r2, #1048576	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	r5, [r0, r7]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pBs
	ldr	r5, [r6, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1392,
	strb	r0, [r5, #4]	@ temp.1392, <variable>.f_code
	sub	ip, r0, #10	@ tmp170, temp.1392,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r0, #0	@ temp.1392,
	cmpne	r1, #4	@, tmp172,
	mov	r0, r4	@, pBs
	ldrls	r1, [r6, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r1, r1, #16	@ tmp182, <variable>.CodecInfo.StreamIntegrality,
	strls	r1, [r6, r7]	@ tmp182, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #4	@,
	bl	BsGet	@
	mov	r1, #4	@,
	uxtb	r2, r0	@ temp.1400,
	strb	r2, [r5, #5]	@ temp.1400, <variable>.f_code
	sub	r3, r2, #10	@ tmp184, temp.1400,
	mov	r0, r4	@, pBs
	uxtb	ip, r3	@ tmp186, tmp184
	cmp	r2, #0	@ temp.1400,
	cmpne	ip, #4	@, tmp186,
	movwls	ip, #:lower16:76108	@ tmp193,
	movtls	ip, #:upper16:76108	@ tmp193,
	ldrls	r2, [r6, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r2, r2, #16	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	strls	r2, [r6, ip]	@ tmp196, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1385,
	strb	r0, [r5, #6]	@ temp.1385, <variable>.f_code
	sub	r1, r0, #10	@ tmp198, temp.1385,
	uxtb	r3, r1	@ tmp200, tmp198
	cmp	r0, #0	@ temp.1385,
	cmpne	r3, #4	@, tmp200,
	bhi	.L195	@,
	movw	r1, #:lower16:76108	@ tmp213,
	movt	r1, #:upper16:76108	@ tmp213,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp216, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp216, <variable>.CodecInfo.StreamIntegrality
.L195:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.37126,
	strb	r0, [r5, #7]	@ D.37126, <variable>.f_code
	sub	ip, r0, #10	@ tmp218, D.37126,
	uxtb	r3, ip	@ tmp220, tmp218
	cmp	r0, #0	@ D.37126,
	cmpne	r3, #4	@, tmp220,
	bhi	.L199	@,
	movw	r3, #:lower16:76108	@ tmp207,
	movt	r3, #:upper16:76108	@ tmp207,
	ldr	r0, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #16	@ tmp210, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r6, r3]	@ tmp210, <variable>.CodecInfo.StreamIntegrality
.L199:
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #8]	@, <variable>.intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.37138,
	strb	ip, [r5, #9]	@ D.37138, <variable>.picture_structure
	cmp	ip, #0	@ D.37138,
	bne	.L203	@,
	movw	r1, #:lower16:76108	@ tmp227,
	movt	r1, #:upper16:76108	@ tmp227,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp230, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp230, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L203:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #10]	@, <variable>.top_field_first
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.frame_pred_frame_dct
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.concealment_motion_vectors
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.q_scale_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.intra_vlc_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #15]	@, <variable>.alternate_scan
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #16]	@, <variable>.repeat_first_field
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.chroma_420_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.progressive_frame
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37161,
	strb	r0, [r5, #3]	@ D.37161, <variable>.composite_display_flag
	cmp	r0, #0	@ D.37161,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #19]	@, <variable>.v_axis
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #20]	@, <variable>.field_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #7	@,
	strb	r0, [r5, #21]	@, <variable>.sub_carrier
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #32]	@, <variable>.burst_amplitude
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r5, #36]	@, <variable>.sub_carrier_phase
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	picture_coding_extension, .-picture_coding_extension
	.align	2
	.global	picture_display_extension
	.type	picture_display_extension, %function
picture_display_extension:
	.fnstart
.LFB1385:
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
	movw	r7, #:lower16:77416	@ tmp145,
	movt	r7, #:upper16:77416	@ tmp145,
	movw	r2, #:lower16:76108	@ tmp146,
	movt	r2, #:upper16:76108	@ tmp146,
	mov	sl, r0	@ pCtx, pCtx
	ldr	r5, [r0, r7]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r4, r0, #75776	@ pBs, pCtx,
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	add	r4, r4, #560	@ pBs, pBs,
	orr	r0, r1, #2097152	@ tmp149, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r2]	@ tmp149, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r3, #0	@ <variable>.progressive_sequence,
	beq	.L205	@,
	ldrb	r8, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r8, #0	@ <variable>.repeat_first_field,
	bne	.L229	@,
.L206:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L209:
	sub	r2, r8, #1	@ tmp166, number_of_frame_center_offsets,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	and	r7, r2, #1	@ tmp168, tmp166,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L228	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L228	@,
	mov	r6, #1	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1434, pSyntaxInfNew,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp168,
	beq	.L213	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L228	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L228	@,
	mov	r6, #2	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1434, ivtmp.1434,
	bgt	.L213	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L210:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r7, #4	@ ivtmp.1434, tmp170,
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L228	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L228	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L228	@,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	ble	.L230	@,
.L213:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r6, r6, r1	@ tmp169, i,
	add	r7, r5, #4	@ tmp170, ivtmp.1434,
	add	r6, r6, r1	@ i, tmp169,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L210	@,
.L228:
	movw	r1, #:lower16:76108	@ tmp159,
	movt	r1, #:upper16:76108	@ tmp159,
	ldr	ip, [sl, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, ip, #32	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r1]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L205:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	bne	.L206	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r3, #0	@ <variable>.repeat_first_field,
	beq	.L208	@,
.L207:
	mov	r8, #3	@ number_of_frame_center_offsets,
	b	.L209	@
.L229:
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	cmp	ip, #0	@ <variable>.top_field_first,
	bne	.L207	@,
.L208:
	mov	r8, #2	@ number_of_frame_center_offsets,
	b	.L209	@
.L230:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	picture_display_extension, .-picture_display_extension
	.align	2
	.global	quant_matrix_extension
	.type	quant_matrix_extension, %function
quant_matrix_extension:
	.fnstart
.LFB1383:
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
	add	r4, r0, #75776	@ pBs, pCtx,
	add	r4, r4, #560	@ pBs, pBs,
	movw	r3, #:lower16:77416	@ tmp179,
	movt	r3, #:upper16:77416	@ tmp179,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	ldr	sl, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	cmp	r0, #1	@ D.37036,
	str	r0, [sl, #76]	@ D.37036, <variable>.load_intra_quantizer_matrix
	beq	.L249	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.37046,
	str	r0, [sl, #80]	@ D.37046, <variable>.load_non_intra_quantizer_matrix
	beq	.L250	@,
.L234:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L236	@,
	mov	r5, #0	@ i.1496,
.L237:
	mov	r1, #8	@,
	add	r5, r5, #1	@ tmp200, i.1496,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i.1496, tmp200,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1496,
	bne	.L237	@,
.L236:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r5, #0	@ i.1497,
.L239:
	add	lr, r5, #1	@ tmp199, i.1497,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	add	r5, lr, #1	@ i.1497, tmp199,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1497,
	bne	.L239	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L249:
	movw	r7, #:lower16:.LANCHOR1	@ tmp194,
	movt	r7, #:upper16:.LANCHOR1	@ tmp194,
	mov	r6, #0	@ i,
.L233:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ D.37043, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp202, i,
	mov	r1, #8	@,
	add	r8, r8, #18944	@ tmp181, D.37043,
	add	r6, r2, #1	@ i, tmp202,
	add	r3, r8, #146	@ tmp181, tmp181,
	add	ip, r5, r3, asl #2	@, tmp185, pCtx, tmp181,
	str	r0, [ip, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ D.37043, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i,
	add	r1, r8, #18944	@ tmp207, D.37043,
	add	r8, r1, #146	@ tmp207, tmp207,
	add	r8, r5, r8, asl #2	@, tmp209, pCtx, tmp207,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L233	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.37046,
	str	r0, [sl, #80]	@ D.37046, <variable>.load_non_intra_quantizer_matrix
	bne	.L234	@,
.L250:
	movw	r7, #:lower16:.LANCHOR1	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp211,
	mov	r6, #0	@ i.1495,
.L235:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ temp.1494, zigzag
	bl	BsGet	@
	add	ip, r6, #1	@ tmp201, i.1495,
	mov	r1, #8	@,
	add	r8, r8, #18944	@ tmp188, temp.1494,
	add	r6, ip, #1	@ i.1495, tmp201,
	add	r2, r8, #210	@ tmp188, tmp188,
	add	r3, r5, r2, asl #2	@, tmp192, pCtx, tmp188,
	str	r0, [r3, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, ip]	@ zero_extendqisi2	@ temp.1494, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i.1495,
	add	r2, r8, #18944	@ tmp216, temp.1494,
	add	r1, r2, #210	@ tmp216, tmp216,
	add	r8, r5, r1, asl #2	@, tmp218, pCtx, tmp216,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L235	@,
	b	.L234	@
	.fnend
	.size	quant_matrix_extension, .-quant_matrix_extension
	.align	2
	.global	sequence_display_extension
	.type	sequence_display_extension, %function
sequence_display_extension:
	.fnstart
.LFB1382:
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
	movw	r2, #:lower16:76108	@ tmp147,
	movt	r2, #:upper16:76108	@ tmp147,
	add	r4, r0, #75776	@ pBs, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r4, #560	@ pBs, pBs,
	ldr	r0, [r0, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r3, #:lower16:77416	@ tmp146,
	movt	r3, #:upper16:77416	@ tmp146,
	orr	r1, r0, #262144	@ tmp150, <variable>.CodecInfo.StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r1, [r5, r2]	@ tmp150, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #3	@,
	ldr	r6, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #128]	@, <variable>.video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.36999,
	str	r0, [r6, #132]	@ D.36999, <variable>.color_description
	bne	.L256	@,
.L252:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #148]	@, <variable>.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L253	@,
	movw	lr, #:lower16:76108	@ tmp151,
	movt	lr, #:upper16:76108	@ tmp151,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, r3, #4	@ tmp154, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, lr]	@ tmp154, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L253:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r6, #152]	@, <variable>.display_vertical_size
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L256:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r6, #136]	@, <variable>.color_primaries
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r6, #140]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r6, #144]	@, <variable>.matrix_coefficients
	b	.L252	@
	.fnend
	.size	sequence_display_extension, .-sequence_display_extension
	.align	2
	.global	sequence_extension
	.type	sequence_extension, %function
sequence_extension:
	.fnstart
.LFB1381:
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
	movw	r7, #:lower16:76108	@ tmp159,
	movt	r7, #:upper16:76108	@ tmp159,
	add	r8, r0, #75776	@ pBs, pCtx,
	add	r8, r8, #560	@ pBs, pBs,
	movw	r2, #:lower16:76104	@ tmp163,
	ldr	r4, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	r2, #:upper16:76104	@ tmp163,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #:lower16:77416	@ tmp158,
	movt	r3, #:upper16:77416	@ tmp158,
	orr	r1, r4, #131072	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r0, r7]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #8	@,
	mov	r0, #0	@ tmp164,
	str	r0, [r5, r2]	@ tmp164, <variable>.CodecInfo.NewSeqInited
	mov	r0, r8	@, pBs
	ldr	r4, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #124]	@, <variable>.profile_and_level_indication
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #27]	@, <variable>.progressive_sequence
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #28]	@, <variable>.chroma_format
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	mov	r9, r0	@ D.36912,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	sl, r0	@ D.36913,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.36914,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L258	@,
	ldr	lr, [r5, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #2	@ tmp170, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, r7]	@ tmp170, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L258:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.36919,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #29]	@, <variable>.low_delay
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #30]	@, <variable>.frame_rate_extension_n
	mov	r0, r8	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.frame_rate_extension_n, <variable>.frame_rate_extension_n
	uxtb	r2, r0	@ D.36925,
	add	r0, ip, #1	@, <variable>.frame_rate_extension_n,
	add	r1, r2, #1	@, D.36925,
	strb	r2, [r4, #31]	@ D.36925, <variable>.frame_rate_extension_d
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #88]	@ <variable>.frame_rate_code, <variable>.frame_rate_code
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r2, [r4, #124]	@ D.36939, <variable>.profile_and_level_indication
	add	ip, r3, r1, asl #2	@, tmp185, tmp181, <variable>.frame_rate_code,
	tst	r2, #128	@ D.36939,
	ldr	r1, [ip, #1100]	@ tmp187, frame_rate_Table
	mul	r3, r1, r0	@ tmp188, tmp187,
	str	r3, [r4, #72]	@ tmp188, <variable>.frame_rate
	bne	.L270	@,
	and	ip, r2, #15	@ tmp196, D.36939,
	ubfx	r1, r2, #4, #3	@ tmp194, D.36939,,
	str	ip, [r4, #44]	@ tmp196, <variable>.level
	str	r1, [r4, #40]	@ tmp194, <variable>.profile
.L261:
	ldr	ip, [r4, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	ldr	r3, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	mov	r1, ip, asl #20	@ tmp198, <variable>.horizontal_size,
	mov	r0, r3, asl #20	@ tmp202, <variable>.vertical_size,
	mov	lr, r1, lsr #20	@ tmp198, tmp198,
	orr	r9, lr, r9, asl #12	@, prephitmp.1536, tmp198, D.36912,
	mov	r2, r0, lsr #20	@ tmp202, tmp202,
	cmp	r9, #0	@ prephitmp.1536,
	orr	sl, r2, sl, asl #12	@, D.36956, tmp202, D.36913,
	str	r9, [r4, #48]	@ prephitmp.1536, <variable>.horizontal_size
	str	sl, [r4, #52]	@ D.36956, <variable>.vertical_size
	beq	.L262	@,
	cmp	sl, #0	@ D.36956,
	bne	.L263	@,
.L262:
	movw	r0, #:lower16:76108	@ tmp205,
	movt	r0, #:upper16:76108	@ tmp205,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r9, r2, #1	@ tmp208, <variable>.CodecInfo.StreamIntegrality,
	str	r9, [r5, r0]	@ tmp208, <variable>.CodecInfo.StreamIntegrality
	ldr	r9, [r4, #48]	@ prephitmp.1536, <variable>.horizontal_size
.L263:
	cmp	r9, #8192	@ prephitmp.1536,
	bhi	.L264	@,
	ldr	lr, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	cmp	lr, #8192	@ <variable>.vertical_size,
	bls	.L265	@,
.L264:
	movw	r3, #:lower16:76108	@ tmp210,
	movt	r3, #:upper16:76108	@ tmp210,
	movw	ip, #:lower16:g_event_report	@ tmp214,
	movt	ip, #:upper16:g_event_report	@ tmp214,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #1	@ tmp213, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r5, r3]	@ tmp213, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.468, g_event_report
	cmp	r3, #0	@ g_event_report.468,
	beq	.L265	@,
	movw	lr, #:lower16:108512	@ tmp215,
	movt	lr, #:upper16:108512	@ tmp215,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.468
.L265:
	ldr	r0, [r4, #92]	@ <variable>.bit_rate_value, <variable>.bit_rate_value
	mov	r3, #400	@ tmp219,
	ldr	r2, [r4, #40]	@ prephitmp.1554, <variable>.profile
	add	r6, r0, r6, asl #18	@, D.36970, <variable>.bit_rate_value, D.36914,
	str	r6, [r4, #92]	@ D.36970, <variable>.bit_rate_value
	sub	r1, r2, #4	@ tmp224, prephitmp.1554,
	ldr	ip, [r4, #96]	@ <variable>.vbv_buffer_size, <variable>.vbv_buffer_size
	mul	r6, r3, r6	@ tmp220, tmp219, D.36970
	cmp	r1, #1	@ tmp224,
	add	r7, ip, r7, asl #10	@, tmp223, <variable>.vbv_buffer_size, D.36919,
	str	r7, [r4, #96]	@ tmp223, <variable>.vbv_buffer_size
	str	r6, [r4, #68]	@ tmp220, <variable>.bit_rate
	bls	.L266	@,
	movw	lr, #:lower16:g_event_report	@ tmp225,
	movt	lr, #:upper16:g_event_report	@ tmp225,
	ldr	r3, [lr, #0]	@ g_event_report.1555, g_event_report
	cmp	r3, #0	@ g_event_report.1555,
	beq	.L267	@,
	movw	ip, #:lower16:108512	@ tmp226,
	movt	ip, #:upper16:108512	@ tmp226,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1555
	ldr	r2, [r4, #40]	@ prephitmp.1554, <variable>.profile
.L267:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
.L266:
	ldr	r2, [r4, #44]	@ prephitmp.1557, <variable>.level
	sub	r1, r2, #4	@ tmp229, prephitmp.1557,
	cmp	r1, #6	@ tmp229,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r3, #:lower16:g_event_report	@ tmp230,
	movt	r3, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r3, #0]	@ g_event_report.1558, g_event_report
	cmp	r3, #0	@ g_event_report.1558,
	beq	.L268	@,
	movw	r0, #:lower16:108512	@ tmp231,
	movt	r0, #:upper16:108512	@ tmp231,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1558
	ldr	r2, [r4, #44]	@ prephitmp.1557, <variable>.level
.L268:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L270:
	and	r0, r2, #15	@ tmp190, D.36939,
	cmp	r0, #5	@ tmp190,
	moveq	r3, #133	@ tmp191,
	moveq	lr, #8	@ tmp192,
	streq	r3, [r4, #40]	@ tmp191, <variable>.profile
	streq	lr, [r4, #44]	@ tmp192, <variable>.level
	b	.L261	@
	.fnend
	.size	sequence_extension, .-sequence_extension
	.align	2
	.global	extension
	.type	extension, %function
extension:
	.fnstart
.LFB1391:
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
	movw	ip, #:lower16:77416	@ tmp137,
	movt	ip, #:upper16:77416	@ tmp137,
	add	r1, r0, #75776	@, pCtx,
	mov	r2, #0	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, ip]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r0, r1, #560	@,,
	mov	r1, #4	@,
	str	r2, [r3, #152]	@ tmp138, <variable>.display_vertical_size
	str	r2, [r3, #128]	@ tmp138, <variable>.video_format
	str	r2, [r3, #132]	@ tmp138, <variable>.color_description
	str	r2, [r3, #136]	@ tmp138, <variable>.color_primaries
	str	r2, [r3, #140]	@ tmp138, <variable>.transfer_characteristics
	str	r2, [r3, #144]	@ tmp138, <variable>.matrix_coefficients
	str	r2, [r3, #148]	@ tmp138, <variable>.display_horizontal_size
	bl	BsGet	@
	sub	r0, r0, #1	@ tmp147,,
	cmp	r0, #9	@ tmp147,
	ldrls	pc, [pc, r0, asl #2]	@ tmp147
	b	.L272	@
.L282:
	.word	.L273
	.word	.L274
	.word	.L275
	.word	.L276
	.word	.L277
	.word	.L272
	.word	.L278
	.word	.L279
	.word	.L280
	.word	.L281
.L276:
	mov	r0, r4	@, pCtx
	bl	copyright_extension	@
.L272:
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L281:
	mov	r0, r4	@, pCtx
	bl	picture_temporal_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L273:
	mov	r0, r4	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L274:
	mov	r0, r4	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L275:
	mov	r0, r4	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L277:
	mov	r0, r4	@, pCtx
	bl	sequence_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L278:
	mov	r0, r4	@, pCtx
	bl	picture_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L279:
	mov	r0, r4	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L280:
	mov	r0, r4	@, pCtx
	bl	picture_spatial_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	extension, .-extension
	.align	2
	.global	picture_header
	.type	picture_header, %function
picture_header:
	.fnstart
.LFB1380:
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
	movw	r6, #:lower16:76108	@ tmp146,
	movt	r6, #:upper16:76108	@ tmp146,
	add	r4, r0, #75776	@ pBs, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r4, #560	@ pBs, pBs,
	ldr	r1, [r0, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	lr, #:lower16:77416	@ tmp145,
	movt	lr, #:upper16:77416	@ tmp145,
	bic	r0, r1, #3145728	@ tmp148, <variable>.CodecInfo.StreamIntegrality,
	mov	r1, #10	@,
	bic	r3, r0, #56	@ tmp148, tmp148,
	mov	r0, r4	@, pBs
	orr	ip, r3, #524288	@ tmp151, tmp148,
	str	ip, [r5, r6]	@ tmp151, <variable>.CodecInfo.StreamIntegrality
	ldr	r6, [r5, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r6, #156]	@, <variable>.temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r6, #22]	@, <variable>.picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	r1, r2, #2	@ tmp155, <variable>.picture_coding_type,
	uxtb	r3, r1	@ tmp156, tmp155
	cmp	r3, #1	@ tmp156,
	str	r0, [r6, #160]	@, <variable>.vbv_delay
	bls	.L287	@,
.L285:
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L287:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r6, #23]	@, <variable>.full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r7, #3	@ <variable>.picture_coding_type,
	strb	r0, [r6, #24]	@, <variable>.forward_f_code
	bne	.L285	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, <variable>.picture_coding_type
	strb	r0, [r6, #25]	@, <variable>.full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r6, #26]	@, <variable>.backward_f_code
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	picture_header, .-picture_header
	.align	2
	.global	group_of_pictures_header
	.type	group_of_pictures_header, %function
group_of_pictures_header:
	.fnstart
.LFB1379:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #75776	@ pBs, pCtx,
	movw	r9, #:lower16:77416	@ tmp165,
	add	r7, r0, #560	@ pBs, pBs,
	movt	r9, #:upper16:77416	@ tmp165,
	mov	r1, #1	@,
	add	r6, r4, #75776	@ tmp149, pCtx,
	mov	r0, r7	@, pBs
	ldr	r8, [r4, r9]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #5	@,
	add	r5, r4, #75776	@ tmp148, pCtx,
	movw	r9, #:lower16:76260	@ tmp170,
	movt	r9, #:upper16:76260	@ tmp170,
	mov	sl, #0	@ tmp159,
	strb	r0, [r8, #2]	@, <variable>.drop_flag
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r8, #100]	@, <variable>.hour
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #104]	@, <variable>.minute
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	mov	r0, r7	@, pBs
	mov	r1, #6	@,
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r8, #108]	@, <variable>.sec
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #112]	@, <variable>.frame
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #116]	@, <variable>.closed_gop
	mov	r0, r7	@, pBs
	bl	BsGet	@
	add	ip, r6, #452	@ tmp149, tmp149,
	movw	r6, #:lower16:76252	@ tmp169,
	movt	r6, #:upper16:76252	@ tmp169,
	mov	r1, r5	@ tmp153, tmp148
	add	r2, r4, r6	@, pCtx, tmp169
	add	r3, r1, #464	@ tmp153, tmp153,
	str	r2, [fp, #-48]	@, %sfp
	add	r5, r5, #440	@ tmp148, tmp148,
	movw	r7, #:lower16:76256	@ tmp171,
	movt	r7, #:upper16:76256	@ tmp171,
	str	r0, [r8, #120]	@, <variable>.broken_link
	ldmia	ip, {r0, r1, r2}	@ tmp149,,,
	stmia	r5, {r0, r1, r2}	@ tmp148,,,
	ldmia	r3, {r0, r1, r2}	@ tmp153,,,
	stmia	ip, {r0, r1, r2}	@ tmp149,,,
	ldr	ip, [fp, #-48]	@, %sfp
	ldmia	ip, {r0, r1, r2}	@,,,
	stmia	r3, {r0, r1, r2}	@ tmp153,,,
	str	sl, [r4, r7]	@ tmp159, <variable>.GopFldCnt
	str	sl, [r4, r6]	@ tmp159, <variable>.GopFrmCntNoRpt
	str	sl, [r4, r9]	@ tmp159, <variable>.GopFrmCnt
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	group_of_pictures_header, .-group_of_pictures_header
	.align	2
	.global	sequence_header
	.type	sequence_header, %function
sequence_header:
	.fnstart
.LFB1378:
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
	add	r5, r0, #75776	@ pBs, pCtx,
	add	r5, r5, #560	@ pBs, pBs,
	movw	r6, #:lower16:76108	@ tmp164,
	movw	r2, #:lower16:76104	@ tmp166,
	movt	r6, #:upper16:76108	@ tmp164,
	movt	r2, #:upper16:76104	@ tmp166,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #:lower16:77416	@ tmp163,
	movt	r3, #:upper16:77416	@ tmp163,
	mov	r1, #12	@,
	mov	sl, #65536	@ tmp165,
	str	sl, [r0, r6]	@ tmp165, <variable>.CodecInfo.StreamIntegrality
	mov	r0, #0	@ tmp167,
	str	r0, [r4, r2]	@ tmp167, <variable>.CodecInfo.NewSeqInited
	mov	r0, r5	@, pBs
	ldr	sl, [r4, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #12	@,
	str	r0, [sl, #48]	@, <variable>.horizontal_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #52]	@, <variable>.vertical_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #84]	@, <variable>.aspect_ratio_information
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	str	r0, [sl, #88]	@, <variable>.frame_rate_code
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #92]	@, <variable>.bit_rate_value
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #10	@,
	cmp	r0, #0	@,
	mov	r0, r5	@, pBs
	ldreq	r3, [r4, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orreq	r3, r3, #1	@ tmp171, <variable>.CodecInfo.StreamIntegrality,
	streq	r3, [r4, r6]	@ tmp171, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #96]	@, <variable>.vbv_buffer_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [sl, #1]	@, <variable>.constrained_parameters_flag
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.36822,
	str	r0, [sl, #76]	@ D.36822, <variable>.load_intra_quantizer_matrix
	beq	.L309	@,
	add	lr, r4, #75776	@ ivtmp.1695, pCtx,
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	add	r1, lr, #588	@ ivtmp.1695, ivtmp.1695,
	add	ip, r6, #64	@ tmp196, tmp198,
	mov	r3, #0	@ i.1698,
.L295:
	ldrb	lr, [ip, r3]	@ zero_extendqisi2	@ tmp183, default_intra_quantizer_matrix
	add	r0, r3, #1	@ tmp206, i.1698,
	mov	r2, r1	@ tmp207, ivtmp.1695
	add	r3, r0, #1	@ i.1698, tmp206,
	cmp	r3, #64	@ i.1698,
	str	lr, [r2], #4	@ tmp183, <variable>.intra_quantizer_matrix
	ldrb	r0, [ip, r0]	@ zero_extendqisi2	@ tmp218, default_intra_quantizer_matrix
	str	r0, [r1, #4]	@ tmp218, <variable>.intra_quantizer_matrix
	add	r1, r2, #4	@ ivtmp.1695, tmp207,
	bne	.L295	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.36835,
	str	r0, [sl, #80]	@ D.36835, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1679,
	movne	ip, #16	@ tmp201,
	beq	.L310	@,
.L299:
	add	r0, r3, #4	@ tmp204, ivtmp.1679,
	add	r3, r4, r3	@ tmp191, pCtx, ivtmp.1679
	add	lr, r4, r0	@ tmp228, pCtx, tmp204
	add	r1, r3, #75776	@ tmp192, tmp191,
	add	r2, lr, #75776	@ tmp230, tmp228,
	add	r3, r0, #4	@ ivtmp.1679, tmp204,
	add	lr, r1, #844	@ tmp192, tmp192,
	add	r0, r2, #844	@ tmp230, tmp230,
	cmp	r3, #256	@ ivtmp.1679,
	str	ip, [lr, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	str	ip, [r0, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	bne	.L299	@,
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L309:
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	mov	r7, #0	@ i,
.L293:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ D.36829, zigzag
	bl	BsGet	@
	add	ip, r7, #1	@ tmp205, i,
	mov	r1, #8	@,
	add	r8, r8, #18944	@ tmp174, D.36829,
	add	r7, ip, #1	@ i, tmp205,
	add	r2, r8, #146	@ tmp174, tmp174,
	add	r3, r4, r2, asl #2	@, tmp178, pCtx, tmp174,
	str	r0, [r3, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ D.36829, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i,
	add	r1, r8, #18944	@ tmp212, D.36829,
	add	r8, r1, #146	@ tmp212, tmp212,
	add	r8, r4, r8, asl #2	@, tmp214, pCtx, tmp212,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L293	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.36835,
	str	r0, [sl, #80]	@ D.36835, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1679,
	movne	ip, #16	@ tmp201,
	bne	.L299	@,
.L310:
	mov	r7, #0	@ i.1701,
.L297:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ temp.1700, zigzag
	bl	BsGet	@
	add	r3, r7, #1	@ tmp203, i.1701,
	mov	r1, #8	@,
	add	r8, r8, #18944	@ tmp185, temp.1700,
	add	r7, r3, #1	@ i.1701, tmp203,
	add	ip, r8, #210	@ tmp185, tmp185,
	add	r2, r4, ip, asl #2	@, tmp189, pCtx, tmp185,
	str	r0, [r2, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r3]	@ zero_extendqisi2	@ temp.1700, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i.1701,
	add	ip, r8, #18944	@ tmp223, temp.1700,
	add	r1, ip, #210	@ tmp223, tmp223,
	add	r8, r4, r1, asl #2	@, tmp225, pCtx, tmp223,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L297	@,
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	sequence_header, .-sequence_header
	.align	2
	.global	next_start_code
	.type	next_start_code, %function
next_start_code:
	.fnstart
.LFB1377:
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
	add	r4, r0, #75776	@ pBs, pCtx,
	add	r4, r4, #560	@ pBs, pBs,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r4	@, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r6, r0	@ pcode,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r7, r0	@ D.36741,
	add	r2, r0, #7	@ tmp157, D.36741,
	cmp	r7, #0	@ D.36741,
	mov	r0, r6	@, pcode
	movlt	r7, r2	@ D.36741, tmp157
	mov	r1, r7, asr #3	@, D.36741,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp159,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp162, D.36747,
	cmp	r0, #0	@ D.36747,
	movlt	r0, r3	@ D.36747, tmp162
	mov	r3, r0, asr #3	@ tmp163, D.36747,
	sub	r7, r3, #3	@ remain_byte, tmp163,
	cmp	r7, #0	@ remain_byte,
	ble	.L312	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r3, #1	@ tmp233, tmp163,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L313	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #1	@ i,
	cmp	r7, r6	@ remain_byte, i
	ble	.L312	@,
	cmp	r8, #0	@ tmp233,
	beq	.L314	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@,
	beq	.L313	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #2	@ i,
	cmp	r7, r6	@ remain_byte, i
	bgt	.L314	@,
	b	.L312	@
.L339:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L313	@,
	bl	BsSkip	@
	cmp	r7, r6	@ remain_byte, i
	ble	.L312	@,
.L314:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r6, r6, #1	@ tmp234, i,
	mov	r1, #8	@,
	add	r6, r6, #1	@ i, tmp234,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L339	@,
.L313:
	mov	r0, #1	@ D.36752,
.L317:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L312:
	movw	r6, #:lower16:76060	@ tmp164,
	movt	r6, #:upper16:76060	@ tmp164,
	ldrsb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L315	@,
	movw	r7, #:lower16:76061	@ tmp166,
	movt	r7, #:upper16:76061	@ tmp166,
	ldrsb	r0, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r0, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L315	@,
	movw	sl, #:lower16:76084	@ tmp168,
	movt	sl, #:upper16:76084	@ tmp168,
	ldr	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	beq	.L315	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	movw	r9, #:lower16:76080	@,
	movw	lr, #:lower16:76064	@ tmp174,
	movt	r9, #:upper16:76080	@,
	movt	lr, #:upper16:76064	@ tmp174,
	str	r9, [fp, #-48]	@, %sfp
	str	lr, [fp, #-56]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-48]	@, %sfp
	movw	r9, #:lower16:76068	@ tmp171,
	ldr	ip, [fp, #-56]	@,
	movt	r9, #:upper16:76068	@ tmp171,
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r1, r1, #3	@ tmp176, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, r1, r3	@, tmp176, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r2, [fp, #-56]	@,
	ldr	r0, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	r3, #:lower16:76076	@ tmp187,
	ldr	r1, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movt	r3, #:upper16:76076	@ tmp187,
	add	ip, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	ip, [fp, #-52]	@, %sfp
	sub	r1, r1, #3	@ D.36773, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r5, r2]	@ D.36773, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r2, [fp, #-52]	@, %sfp
	movw	lr, #:lower16:76072	@ tmp192,
	ldr	r0, [fp, #-48]	@, %sfp
	movt	lr, #:upper16:76072	@ tmp192,
	ldr	ip, [r5, r3]	@, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	r2, [r5, r0]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r0, ip, #3	@ D.36772,,
	str	r8, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	str	r0, [r5, lr]	@ D.36772, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	lr, #1	@,
	str	r8, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	r0, r4	@, pBs
	strb	lr, [r5, r6]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	strb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r4	@, pBs
	mov	r6, #1	@,
	strb	r6, [r5, r7]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r5, r0	@ pcode.1734,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r3, r0	@ D.36775,
	add	r2, r0, #7	@ tmp215, D.36775,
	cmp	r3, #0	@ D.36775,
	mov	r0, r5	@, pcode.1734
	movlt	r3, r2	@ D.36775, tmp215
	mov	r1, r3, asr #3	@, D.36775,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp217,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.36778,
	add	ip, r0, #7	@ tmp220, D.36778,
	movlt	r0, ip	@ D.36778, tmp220
	mov	r3, r0, asr #3	@ tmp221, D.36778,
	sub	r6, r3, #3	@ remain_byte.1738, tmp221,
	cmp	r6, #0	@ remain_byte.1738,
	ble	.L315	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp229, tmp221,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L313	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.1733,
	cmp	r6, r5	@ remain_byte.1738, i.1733
	ble	.L315	@,
	cmp	r7, #0	@ tmp229,
	beq	.L316	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@,
	beq	.L313	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.1733,
	cmp	r6, r5	@ remain_byte.1738, i.1733
	bgt	.L316	@,
	b	.L315	@
.L340:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L313	@,
	bl	BsSkip	@
	cmp	r6, r5	@ remain_byte.1738, i.1733
	ble	.L315	@,
.L316:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp230, i.1733,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i.1733, tmp230,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L340	@,
	b	.L313	@
.L315:
	mov	r0, #0	@ D.36752,
	b	.L317	@
	.fnend
	.size	next_start_code, .-next_start_code
	.align	2
	.global	MP2_GetUsrData
	.type	MP2_GetUsrData, %function
MP2_GetUsrData:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 32
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
	add	r4, r0, #75776	@ pBs, pCtx,
	add	r4, r4, #560	@ pBs, pBs,
	mov	r7, r0	@ pCtx, pCtx
	str	r1, [fp, #-60]	@ pp_UD, %sfp
	mov	r0, r4	@, pBs
	ldr	r6, [r1, #0]	@ p_UD,* pp_UD
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.36655,
	add	r3, r0, #7	@ tmp157, D.36655,
	movlt	r0, r3	@ D.36655, tmp157
	mov	r0, r0, asr #3	@, D.36655,
	str	r0, [fp, #-56]	@, %sfp
	cmp	r0, #0	@,
	ble	.L342	@,
	sub	r5, r0, #1	@ tmp256,,
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	and	r2, r5, #1	@, tmp256,
	str	r2, [fp, #-64]	@, %sfp
	bl	BsShow	@
	movw	r9, #:lower16:.LANCHOR2	@ tmp251,
	mov	r5, #0	@ cnt,
	movt	r9, #:upper16:.LANCHOR2	@ tmp251,
	movw	sl, #1023	@ tmp249,
	bic	r0, r0, #-16777216	@ tmp159,,
	cmp	r0, #1	@ tmp159,
	beq	.L343	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	ldr	r8, [fp, #-56]	@, %sfp
	mov	r5, #1	@ cnt,
	cmp	r8, r5	@, cnt
	mov	r8, r5	@ i, cnt
	strb	r0, [r9, #0]	@, g_tmpusd
	ble	.L347	@,
	ldr	r2, [fp, #-64]	@, %sfp
	cmp	r2, #0	@,
	beq	.L346	@,
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	bic	r1, r0, #-16777216	@ tmp287,,
	cmp	r1, r5	@ tmp287,
	beq	.L343	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	ldr	r3, [fp, #-56]	@, %sfp
	add	r8, r5, r5	@ i, i,
	cmp	r3, r8	@, i
	strb	r0, [r9, r5]	@, g_tmpusd
	mov	r5, r8	@ cnt, i
	bgt	.L346	@,
	b	.L347	@
.L396:
	bl	BsGet	@
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
.L345:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r8, r8, #1	@ tmp259, i,
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp265,,
	mov	r0, r4	@, pBs
	cmp	r3, #1	@ tmp265,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp249
	ble	.L388	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	ldr	lr, [fp, #-56]	@, %sfp
	add	r8, r8, #1	@ i, tmp259,
	cmp	lr, r8	@, i
	ble	.L347	@,
.L346:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	ip, r0, #-16777216	@ tmp261,,
	mov	r0, r4	@, pBs
	cmp	ip, #1	@ tmp261,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp249
	ble	.L396	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L345	@
.L388:
	bl	BsGet	@
	ldr	lr, [fp, #-56]	@, %sfp
	add	r8, r8, #1	@ i, tmp259,
	cmp	lr, r8	@, i
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	bgt	.L346	@,
.L347:
	movw	r8, #:lower16:76060	@ tmp242,
	movt	r8, #:upper16:76060	@ tmp242,
	ldrsb	sl, [r7, r8]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	sl, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L348	@,
	movw	r9, #:lower16:76061	@ tmp163,
	movt	r9, #:upper16:76061	@ tmp163,
	ldrsb	r1, [r7, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L348	@,
	movw	ip, #:lower16:76084	@ tmp165,
	movt	ip, #:upper16:76084	@ tmp165,
	ldr	lr, [r7, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	lr, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	bne	.L397	@,
.L348:
	mov	r4, #0	@ NextHeaderFlag,
	b	.L352	@
.L343:
	mov	r4, #1	@ NextHeaderFlag,
.L352:
	cmp	r6, #0	@ p_UD,
	beq	.L398	@,
.L353:
	ldr	ip, [r7, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:76112	@ tmp223,
	movt	lr, #:upper16:76112	@ tmp223,
	mov	r3, #1056	@ tmp220,
	movw	r2, #:lower16:77416	@ tmp226,
	movt	r2, #:upper16:77416	@ tmp226,
	ldrd	r8, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movw	ip, #:lower16:108516	@ tmp229,
	movt	ip, #:upper16:108516	@ tmp229,
	cmp	r5, #1024	@ cnt,
	strd	r8, [r6, r3]	@ <variable>.pts, p_UD, tmp220
	ldr	r1, [r7, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	str	r5, [r6, #1048]	@ cnt, <variable>.data_size
	str	r1, [r6, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	r1, #:lower16:.LANCHOR2	@,
	ldr	r0, [r7, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	movt	r1, #:upper16:.LANCHOR2	@,
	ldrb	r2, [r0, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	mov	r0, r6	@, p_UD
	strb	r2, [r6, #1024]	@ <variable>.picture_coding_type, <variable>.pic_coding_type
	movgt	r2, #1024	@ tmp231,
	ldr	lr, [r7, ip]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	movle	r2, r5	@ prephitmp.1756, cnt
	strgt	r2, [r6, #1048]	@ tmp231, <variable>.data_size
	str	lr, [r6, #1028]	@ <variable>.numTotalFrame, <variable>.pic_num_count
	bl	memcpy	@
	movw	r3, #:lower16:g_event_report	@ tmp237,
	movt	r3, #:upper16:g_event_report	@ tmp237,
	ldr	r3, [r3, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L357	@,
	movw	r0, #:lower16:108512	@ tmp238,
	sub	r2, fp, #44	@ tmp240,,
	movt	r0, #:upper16:108512	@ tmp238,
	mov	r1, #6	@,
	ldr	r0, [r7, r0]	@, <variable>.ChanID
	str	r6, [r2, #-4]!	@ p_UD, para
	blx	r3	@ g_event_report.462
.L357:
	ldr	r2, [fp, #-60]	@, %sfp
	str	r6, [r2, #0]	@ p_UD,
.L354:
	mov	r0, r4	@, NextHeaderFlag
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L397:
	movw	r0, #:lower16:76080	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r0, #:upper16:76080	@,
	movt	r1, #:upper16:.LC24	@,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, sl	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	str	ip, [fp, #-72]	@,
	movw	lr, #:lower16:76068	@,
	movw	r3, #:lower16:76064	@,
	movt	lr, #:upper16:76068	@,
	movt	r3, #:upper16:76064	@,
	str	lr, [fp, #-56]	@, %sfp
	str	r3, [fp, #-64]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	lr, [fp, #-64]	@, %sfp
	ldr	r1, [r7, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r0, [r7, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [r7, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	ip, r1, #3	@ tmp173, <variable>.CodecInfo.stMp2Packet.BsLength,
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	add	r1, ip, r3	@, tmp173, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	bl	memcpy	@
	ldr	r0, [fp, #-56]	@, %sfp
	ldr	r3, [fp, #-64]	@, %sfp
	movw	lr, #:lower16:76076	@ tmp184,
	ldr	ip, [fp, #-72]	@,
	movt	lr, #:upper16:76076	@ tmp184,
	ldr	r1, [r7, r0]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movw	r0, #:lower16:76072	@ tmp190,
	movt	r0, #:upper16:76072	@ tmp190,
	sub	r1, r1, #3	@ D.36688, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r7, r3]	@ D.36688, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [fp, #-68]	@, %sfp
	ldr	r2, [r7, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	add	r2, r2, #3	@ D.36685, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r2, [r7, r3]	@ D.36685, <variable>.CodecInfo.stMp2Packet.BsLength
	ldr	r3, [fp, #-56]	@, %sfp
	str	sl, [r7, ip]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	str	sl, [r7, r3]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [r7, lr]	@, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	sub	r3, r3, #3	@,,
	str	r3, [r7, r0]	@, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	r3, #1	@,
	str	sl, [r7, lr]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	strb	r3, [r7, r8]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r4	@, pBs
	strb	sl, [r7, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	mov	ip, #1	@,
	strb	sl, [r7, r8]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r4	@, pBs
	strb	ip, [r7, r9]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.36689,
	add	r2, r0, #7	@ tmp213, D.36689,
	movlt	r0, r2	@ D.36689, tmp213
	mov	r3, r0, asr #3	@ tmp214, D.36689,
	sub	r0, r3, #3	@, tmp214,
	str	r0, [fp, #-56]	@, %sfp
	cmp	r0, #0	@,
	ble	.L348	@,
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	and	r9, r3, #1	@, tmp214,
	str	r9, [fp, #-64]	@, %sfp
	bl	BsShow	@
	movw	r9, #:lower16:.LANCHOR2	@ tmp247,
	movw	sl, #1023	@ tmp245,
	movt	r9, #:upper16:.LANCHOR2	@ tmp247,
	bic	r1, r0, #-16777216	@ tmp215,,
	cmp	r1, #1	@ tmp215,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp245
	ble	.L382	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L383:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r8, #1	@ i.1777,
	cmp	r1, r8	@, i.1777
	ble	.L348	@,
	ldr	lr, [fp, #-64]	@, %sfp
	cmp	lr, #0	@,
	beq	.L351	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r3, r0, #-16777216	@ tmp276,,
	cmp	r3, r8	@ tmp276,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp245
	ble	.L384	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L385:
	ldr	ip, [fp, #-56]	@, %sfp
	add	r8, r8, #1	@ i.1777, i.1777,
	cmp	ip, r8	@, i.1777
	bgt	.L351	@,
	b	.L348	@
.L399:
	bl	BsGet	@
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
.L350:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r8, r8, #1	@ tmp255, i.1777,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp271,,
	mov	r0, r4	@, pBs
	cmp	r2, #1	@ tmp271,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp245
	ble	.L386	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L387:
	ldr	r0, [fp, #-56]	@, %sfp
	add	r8, r8, #1	@ i.1777, tmp255,
	cmp	r0, r8	@, i.1777
	ble	.L348	@,
.L351:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	ip, r0, #-16777216	@ tmp267,,
	mov	r0, r4	@, pBs
	cmp	ip, #1	@ tmp267,
	beq	.L343	@,
	cmp	r5, sl	@ cnt, tmp245
	ble	.L399	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L350	@
.L386:
	bl	BsGet	@
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	b	.L387	@
.L342:
	mov	r5, #0	@ cnt,
	b	.L347	@
.L382:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	b	.L383	@
.L384:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [r9, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	b	.L385	@
.L398:
	movw	r6, #:lower16:108512	@ tmp219,
	movt	r6, #:upper16:108512	@ tmp219,
	ldr	r0, [r7, r6]	@, <variable>.ChanID
	bl	GetUsd	@
	subs	r6, r0, #0	@ p_UD,
	mvneq	r4, #0	@ NextHeaderFlag,
	bne	.L353	@,
	b	.L354	@
	.fnend
	.size	MP2_GetUsrData, .-MP2_GetUsrData
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
.LFB1373:
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
	movw	r5, #:lower16:108512	@ tmp145,
	movt	r5, #:upper16:108512	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #:lower16:76180	@ tmp147,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movt	r6, #:upper16:76180	@ tmp147,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.36545,
	mov	r1, r0	@ D.36545,
	str	r0, [r4, r6]	@ D.36545, <variable>.CodecInfo.CurFsID
	blt	.L407	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L408	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.36570, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36570,
	beq	.L405	@,
	ldr	r3, [r5, #476]	@ D.36573, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36573,
	beq	.L405	@,
	ldr	ip, [r5, #480]	@ D.36576, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.36576,
	beq	.L405	@,
	ldr	ip, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC28	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36564,
.L403:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L405:
	mov	r0, #1	@ D.36564,
	b	.L403	@
.L407:
	movw	r7, #:lower16:76176	@ tmp151,
	movt	r7, #:upper16:76176	@ tmp151,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L402	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:76172	@ tmp175,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:76172	@ tmp175,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp165,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp165, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp165, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp165, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp165, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L409	@,
.L402:
	movw	r2, #:lower16:76136	@ tmp187,
	movw	r3, #:lower16:108512	@ tmp189,
	movt	r2, #:upper16:76136	@ tmp187,
	movt	r3, #:upper16:108512	@ tmp189,
	add	r1, r4, #76800	@, pCtx,
	mov	r5, #0	@ tmp188,
	add	r1, r1, #624	@,,
	str	r5, [r4, r2]	@ tmp188, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.36564, tmp188
	b	.L403	@
.L409:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.36562, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.36562, <variable>.CodecInfo.FwdFsID
	b	.L402	@
.L408:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #1769	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36564, pLf
	b	.L403	@
	.fnend
	.size	MP2_GetImageBuffer, .-MP2_GetImageBuffer
	.align	2
	.global	MP2_SetImgFormat
	.type	MP2_SetImgFormat, %function
MP2_SetImgFormat:
	.fnstart
.LFB1370:
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
	movw	r1, #:lower16:108512	@ tmp161,
	movw	r2, #:lower16:76180	@ tmp163,
	movt	r1, #:upper16:108512	@ tmp161,
	movt	r2, #:upper16:76180	@ tmp163,
	mov	r6, r0	@ pCtx, pCtx
	movw	r3, #:lower16:77416	@ tmp160,
	movt	r3, #:upper16:77416	@ tmp160,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r6, r2]	@, <variable>.CodecInfo.CurFsID
	ldr	r5, [r6, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ D.36339, <variable>.picture_coding_type
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ D.36345, <variable>.progressive_sequence
	cmp	ip, #4	@ D.36339,
	ldr	r8, [r5, #128]	@ vfmt, <variable>.video_format
	subne	ip, ip, #1	@ tmp165, D.36339,
	ldr	r3, [r4, #140]	@ D.36346, <variable>.format
	moveq	ip, #0	@ prephitmp.1837,
	andne	ip, ip, #3	@ prephitmp.1837, tmp165,
	cmp	lr, #0	@ D.36345,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ D.36348, <variable>.picture_structure
	movne	r0, #4096	@ prephitmp.1863,
	bne	.L415	@,
	cmp	r7, #3	@ D.36348,
	beq	.L430	@,
	movw	r2, #:lower16:76120	@ tmp168,
	movt	r2, #:upper16:76120	@ tmp168,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L417	@,
	cmp	r7, #1	@ D.36348,
	movne	r0, #0	@, tmp172
	moveq	r0, #1	@, tmp172
	mov	r0, r0, asl #12	@ prephitmp.1863, tmp172,
.L415:
	movw	r2, #:lower16:77416	@ tmp177,
	movt	r2, #:upper16:77416	@ tmp177,
	orr	r3, r7, r3, lsr #10	@, tmp192, D.36348, D.36346,
	and	r8, r8, #3	@ tmp189, vfmt,
	ldr	r2, [r6, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	and	r3, r3, #3	@ tmp193, tmp192,
	ldr	r2, [r2, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	str	ip, [r4, #136]	@ prephitmp.1837, <variable>.bottom_fld_type
	sub	r2, r2, #1	@ D.37923, <variable>.aspect_ratio_information,
	str	ip, [r4, #132]	@ prephitmp.1837, <variable>.top_fld_type
	cmp	r2, #2	@ D.37923,
	movwls	r1, #:lower16:.LANCHOR0	@ tmp179,
	movtls	r1, #:upper16:.LANCHOR0	@ tmp179,
	addls	r2, r1, r2, asl #2	@, tmp182, tmp179, D.37923,
	movhi	r1, #0	@ prephitmp.1864,
	movhi	r2, r1	@ prephitmp.1866, prephitmp.1864
	ldrls	r1, [r2, #128]	@ prephitmp.1864, CSWTCH.499
	andls	r2, r1, #7	@ pretmp.1865, prephitmp.1864,
	movls	r2, r2, asl #14	@ prephitmp.1866, pretmp.1865,
	cmp	lr, #0	@ D.36345,
	moveq	lr, #256	@ tmp188,
	movne	lr, #0	@ tmp188,
	orr	lr, lr, r8, asl #5	@, tmp191, tmp188, tmp189,
	orr	r3, lr, r3, asl #10	@, tmp195, tmp191, tmp193,
	orr	r3, r3, ip	@ tmp196, tmp195, prephitmp.1837
	orr	ip, r3, r0	@ tmp197, tmp196, prephitmp.1863
	mov	r0, r4	@, pImg
	orr	lr, ip, r2	@ tmp198, tmp197, prephitmp.1866
	str	lr, [r4, #140]	@ tmp198, <variable>.format
	bl	SetAspectRatio	@
	mov	r3, #3	@ tmp199,
	str	r3, [r4, #336]	@ tmp199, <variable>.ImageDnr.video_standard
	mov	r1, #1	@ tmp202,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	mov	r2, #1	@ tmp209,
	strb	r1, [r4, #331]	@ tmp202, <variable>.ImageDnr.use_pic_qp_en
	cmp	ip, #3	@ <variable>.picture_structure,
	movne	r1, #4	@ iftmp.449,
	moveq	r1, #0	@ iftmp.449,
	strb	r1, [r4, #324]	@ iftmp.449, <variable>.ImageDnr.pic_structure
	ldr	r0, [r6, #4]	@ D.36386, <variable>.pMp2DecParam
	cmp	r0, #0	@ D.36386,
	streqb	r0, [r4, #331]	@ D.36386, <variable>.ImageDnr.use_pic_qp_en
	ldrneb	r0, [r0, #144]	@ zero_extendqisi2	@ prephitmp.1838, <variable>.EstmatedPicQp
	moveq	ip, #32	@ tmp208,
	strb	r2, [r4, #329]	@ tmp209, <variable>.ImageDnr.chroma_format_idc
	moveq	r0, ip	@ prephitmp.1838, tmp208
	streq	ip, [r4, #340]	@ tmp208, <variable>.ImageDnr.QP_Y
	strne	r0, [r4, #340]	@ prephitmp.1838, <variable>.ImageDnr.QP_Y
	str	r0, [r4, #344]	@ prephitmp.1838, <variable>.ImageDnr.QP_U
	str	r0, [r4, #348]	@ prephitmp.1838, <variable>.ImageDnr.QP_V
	ldr	r3, [r5, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	str	r3, [r4, #168]	@ <variable>.frame_rate, <variable>.frame_rate
	ldr	r3, [r5, #48]	@ prephitmp.1839, <variable>.horizontal_size
	str	r3, [r4, #144]	@ prephitmp.1839, <variable>.image_width
	ldr	r2, [r5, #52]	@ D.36396, <variable>.vertical_size
	str	r2, [r4, #148]	@ D.36396, <variable>.image_height
	ldr	r1, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.1839
	beq	.L431	@,
.L424:
	ldr	r1, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	ip, r3, lsr #1	@ tmp226, prephitmp.1839,
	str	ip, [r4, #160]	@ tmp226, <variable>.disp_center_x
	mov	r3, r1, lsr #1	@ tmp228, <variable>.image_height,
	str	r3, [r4, #164]	@ tmp228, <variable>.disp_center_y
	ldr	r3, [r5, #148]	@ D.36428, <variable>.display_horizontal_size
	cmp	r3, #0	@ D.36428,
	beq	.L425	@,
	ldr	lr, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	lr, #0	@ <variable>.display_vertical_size,
	beq	.L425	@,
	cmp	r2, r3	@ <variable>.image_width, D.36428
	strls	r2, [r4, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r4, #152]	@, D.36428, <variable>.disp_width
	ldr	r2, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	r1, r2	@ <variable>.image_height, <variable>.display_vertical_size
	strls	r1, [r4, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r2, [r4, #156]	@, <variable>.display_vertical_size, <variable>.disp_height
	b	.L426	@
.L425:
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r1, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
.L426:
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	mov	r0, r6	@, pCtx
	str	lr, [r4, #432]	@ <variable>.progressive_sequence, <variable>.optm_inf.IsProgressiveSeq
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	str	ip, [r4, #436]	@ <variable>.progressive_frame, <variable>.optm_inf.IsProgressiveFrm
	ldr	r3, [r5, #144]	@ <variable>.matrix_coefficients, <variable>.matrix_coefficients
	str	r3, [r4, #444]	@ <variable>.matrix_coefficients, <variable>.optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	movw	r0, #:lower16:76264	@ tmp240,
	movt	r0, #:upper16:76264	@ tmp240,
	ldr	r1, [r6, r0]	@ <variable>.CodecInfo.RealFrmRate, <variable>.CodecInfo.RealFrmRate
	str	r1, [r4, #440]	@ <variable>.CodecInfo.RealFrmRate, <variable>.optm_inf.RealFrmRate
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L417:
	subs	r2, r7, #1	@ tmp175, D.36348,
	movne	r2, #1	@ tmp175
	mov	r0, r2, asl #12	@ prephitmp.1863, tmp175,
	b	.L415	@
.L430:
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	and	r0, r2, #1	@ tmp167, <variable>.top_field_first,
	mov	r0, r0, asl #12	@ prephitmp.1863, tmp167,
	b	.L415	@
.L431:
	ldr	r1, [r4, #172]	@ D.36401, <variable>.image_stride
	add	r0, r2, #15	@ tmp215, D.36396,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r2, r0, lsr #4	@ tmp216, tmp215,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp214, D.36401,
	add	ip, r3, r1	@ tmp221, <variable>.luma_phy_addr, D.36401
	str	ip, [r4, #96]	@ tmp221, <variable>.btm_luma_phy_addr
	mul	r2, r2, lr	@ D.36407, tmp216, tmp214
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r2, r3	@ tmp218, D.36407, <variable>.luma_phy_addr
	add	lr, r0, r2	@ tmp220, <variable>.luma_vir_addr, D.36407
	str	ip, [r4, #108]	@ tmp218, <variable>.chrom_phy_addr
	add	r0, ip, r1	@ tmp222, tmp218, D.36401
	str	lr, [r4, #36]	@ tmp220, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp222, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp218
	str	ip, [r4, #92]	@ tmp218, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.1839, <variable>.image_width
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L424	@
	.fnend
	.size	MP2_SetImgFormat, .-MP2_SetImgFormat
	.align	2
	.global	MPEG2DEC_VDMPostProc
	.type	MPEG2DEC_VDMPostProc, %function
MPEG2DEC_VDMPostProc:
	.fnstart
.LFB1397:
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
	mov	r4, r0	@ pCtx, pCtx
	ldrb	ip, [r4, #152]	@ zero_extendqisi2	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.Mp2DecParam.EstmatedPicQp
	movw	r0, #:lower16:76276	@ tmp159,
	movt	r0, #:upper16:76276	@ tmp159,
	movw	r7, #:lower16:77416	@ tmp158,
	movt	r7, #:upper16:77416	@ tmp158,
	mov	r2, r1	@, ErrRatio
	strb	ip, [r4, r0]	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.CodecInfo.EstmatedPicQp
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldr	r5, [r4, r7]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_RecordVFMWState	@
	movw	r7, #:lower16:108512	@ tmp164,
	mov	r0, r4	@, pCtx
	movt	r7, #:upper16:108512	@ tmp164,
	movw	r8, #:lower16:76180	@ tmp166,
	movt	r8, #:upper16:76180	@ tmp166,
	bl	MP2_ClearCurPic	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #45316	@,
	bl	__memzero	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:76176	@ tmp170,
	movt	r2, #:upper16:76176	@ tmp170,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:76172	@ tmp174,
	movt	r3, #:upper16:76172	@ tmp174,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L455	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r6, #0	@ ErrRatio,
	movw	lr, #45328	@ tmp177,
	movlt	r6, #0	@ iftmp.485,
	strb	r1, [r4, lr]	@ <variable>.picture_coding_type, <variable>.CodecInfo.LastDecPicCodingType
	blt	.L436	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.485,
.L436:
	str	r6, [r8, #180]	@ iftmp.485, <variable>.error_level
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L437	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r6, r2	@ iftmp.485, <variable>.s32RefErrThr
	bhi	.L456	@,
.L437:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_SetImgFormat	@
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r3, #3	@ <variable>.picture_structure,
	beq	.L439	@,
	movw	r2, #:lower16:76120	@ tmp225,
	movt	r2, #:upper16:76120	@ tmp225,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	lr, #1	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #1	@ D.37395,
	beq	.L439	@,
.L434:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L439:
	movw	r1, #:lower16:76124	@ tmp227,
	movt	r1, #:upper16:76124	@ tmp227,
	movw	ip, #:lower16:76128	@ tmp230,
	movt	ip, #:upper16:76128	@ tmp230,
	ldr	r0, [r4, r1]	@ D.37433, <variable>.CodecInfo.p_SeqUD
	movw	lr, #:lower16:76124	@ tmp233,
	movw	r3, #:lower16:76128	@ tmp235,
	movt	lr, #:upper16:76124	@ tmp233,
	cmp	r0, #0	@ D.37433,
	movt	r3, #:upper16:76128	@ tmp235,
	strne	r0, [r8, #192]	@ D.37433, <variable>.p_usrdat
	ldr	r2, [r4, ip]	@ D.37436, <variable>.CodecInfo.p_PicUD
	movne	r0, #0	@ tmp229,
	strne	r0, [r4, r1]	@ tmp229, <variable>.CodecInfo.p_SeqUD
	mov	r1, #0	@ tmp234,
	cmp	r2, #0	@ D.37436,
	strne	r2, [r8, #196]	@ D.37436, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movne	r2, #0	@ tmp232,
	str	r1, [r4, lr]	@ tmp234, <variable>.CodecInfo.p_SeqUD
	strne	r2, [r4, ip]	@ tmp232, <variable>.CodecInfo.p_PicUD
	str	r1, [r4, r3]	@ tmp234, <variable>.CodecInfo.p_PicUD
	ldr	ip, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #1	@ <variable>.s32DecOrderOutput,
	beq	.L442	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L442	@,
	movw	r2, #:lower16:76172	@ tmp240,
	movt	r2, #:upper16:76172	@ tmp240,
	movw	lr, #:lower16:76184	@ tmp241,
	movt	lr, #:upper16:76184	@ tmp241,
	ldr	r1, [r4, r2]	@ prephitmp.1893,
	str	r1, [r4, lr]	@ prephitmp.1893, <variable>.CodecInfo.ToQueFsID
.L444:
	cmn	r1, #1	@ prephitmp.1893,
	beq	.L445	@,
	movw	r6, #:lower16:108512	@ tmp246,
	movt	r6, #:upper16:108512	@ tmp246,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L446	@,
	movw	r3, #:lower16:76184	@ tmp250,
	movt	r3, #:upper16:76184	@ tmp250,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L446	@,
.L445:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L457	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L458	@,
	movw	lr, #:lower16:76260	@ tmp320,
	movt	lr, #:upper16:76260	@ tmp320,
	movw	r0, #:lower16:76256	@ tmp323,
	movt	r0, #:upper16:76256	@ tmp323,
	ldr	r2, [r4, lr]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.1957, <variable>.GopFrmCnt,
	str	r1, [r4, lr]	@ temp.1957, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp324, temp.1957,
	str	ip, [r4, r0]	@ tmp324, <variable>.GopFldCnt
.L452:
	movw	r2, #:lower16:76252	@ tmp325,
	movt	r2, #:upper16:76252	@ tmp325,
	movw	r3, #:lower16:76116	@ tmp329,
	movt	r3, #:upper16:76116	@ tmp329,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #1	@ D.37395,
	add	lr, ip, r0	@ tmp328, <variable>.GopFrmCntNoRpt,
	str	lr, [r4, r2]	@ tmp328, <variable>.GopFrmCntNoRpt
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, r1, r0	@ tmp332, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp332,
	b	.L434	@
.L456:
	movw	r5, #:lower16:108512	@ tmp183,
	movw	r7, #:lower16:76176	@ tmp185,
	movt	r5, #:upper16:108512	@ tmp183,
	movt	r7, #:upper16:76176	@ tmp185,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L438	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:76172	@ tmp209,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:76172	@ tmp209,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp199,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp199, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp199, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp199, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp199, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp199, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp199, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	beq	.L438	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.37426, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.37426, <variable>.CodecInfo.FwdFsID
.L438:
	movw	r1, #:lower16:76136	@ tmp221,
	movt	r1, #:upper16:76136	@ tmp221,
	mov	ip, #0	@ tmp222,
	mov	r0, #1	@ D.37395,
	str	ip, [r4, r1]	@ tmp222,
	b	.L434	@
.L458:
	movw	r2, #:lower16:76260	@ tmp310,
	movt	r2, #:upper16:76260	@ tmp310,
	movw	ip, #:lower16:76256	@ tmp314,
	movt	ip, #:upper16:76256	@ tmp314,
	ldr	r3, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	r0, [r4, ip]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	lr, r3, #1	@ tmp313, <variable>.GopFrmCnt,
	str	lr, [r4, r2]	@ tmp313, <variable>.GopFrmCnt
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r3, r0, #2	@ tmp316, <variable>.GopFldCnt,
	add	lr, r3, r1	@ tmp319, tmp316, <variable>.repeat_first_field
	str	lr, [r4, ip]	@ tmp319, <variable>.GopFldCnt
	b	.L452	@
.L446:
	movw	r6, #:lower16:108512	@ tmp252,
	movw	r7, #:lower16:76184	@ tmp254,
	movt	r6, #:upper16:108512	@ tmp252,
	movt	r7, #:upper16:76184	@ tmp254,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pToQueImg,
	beq	.L459	@,
	ldr	r2, [r8, #180]	@ D.37461, <variable>.error_level
	cmp	r2, #0	@ D.37461,
	beq	.L448	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.37463, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.37461, D.37463
	bhi	.L449	@,
.L448:
	movw	r7, #:lower16:76184	@ tmp258,
	movt	r7, #:upper16:76184	@ tmp258,
	movw	r6, #:lower16:108512	@ tmp259,
	movt	r6, #:upper16:108512	@ tmp259,
	ldr	sl, [r4, r7]	@ temp.1943, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, sl	@, temp.1943
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.1943
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r3, r0	@ D.37466,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r2, r4, #76800	@, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #624	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r8, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L460	@,
	movw	lr, #:lower16:108520	@ tmp282,
	movt	lr, #:upper16:108520	@ tmp282,
	ldr	ip, [r4, lr]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, ip, #1	@ tmp285, <variable>.numOutputFrame,
	str	r1, [r4, lr]	@ tmp285, <variable>.numOutputFrame
	b	.L445	@
.L442:
	movw	r0, #:lower16:76180	@ tmp244,
	movt	r0, #:upper16:76180	@ tmp244,
	movw	ip, #:lower16:76184	@ tmp245,
	movt	ip, #:upper16:76184	@ tmp245,
	ldr	r1, [r4, r0]	@ prephitmp.1893,
	str	r1, [r4, ip]	@ prephitmp.1893, <variable>.CodecInfo.ToQueFsID
	b	.L444	@
.L457:
	movw	lr, #:lower16:76260	@ tmp300,
	movt	lr, #:upper16:76260	@ tmp300,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:76256	@ tmp307,
	ldr	r3, [r4, lr]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:76256	@ tmp307,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r3, #1	@ tmp301, <variable>.GopFrmCnt,
	add	r3, r1, ip	@ tmp304, tmp301, <variable>.repeat_first_field
	add	r1, r3, r0	@ D.37486, tmp304, <variable>.top_field_first
	str	r1, [r4, lr]	@ D.37486, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp308, D.37486,
	str	r3, [r4, r2]	@ tmp308, <variable>.GopFldCnt
	b	.L452	@
.L460:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r5, #0	@ tmp273,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r5, [r8, #192]	@ tmp273, <variable>.p_usrdat
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r8, #196]	@ tmp273, <variable>.p_usrdat
	mov	r2, r5	@, tmp273
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.37395, tmp273
	b	.L434	@
.L449:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mov	sl, #0	@ tmp290,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r8, #192]	@ tmp290, <variable>.p_usrdat
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r8, #196]	@ tmp290, <variable>.p_usrdat
	mov	r2, sl	@, tmp290
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L445	@
.L455:
	mov	r3, sl	@, pBwdImg
	mov	r0, r8	@, pCurImg
	movw	r1, #:lower16:.LC30	@,
	mov	r2, r8	@, pCurImg
	movt	r1, #:upper16:.LC30	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.37395, pCurImg
	b	.L434	@
.L459:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #3176	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.37395, pToQueImg
	b	.L434	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MPEG2DEC_GetRemainImg
	.type	MPEG2DEC_GetRemainImg, %function
MPEG2DEC_GetRemainImg:
	.fnstart
.LFB1396:
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L462	@,
	movw	r7, #:lower16:108512	@ tmp144,
	movw	r6, #:lower16:76176	@ tmp146,
	movt	r7, #:upper16:108512	@ tmp144,
	movt	r6, #:upper16:76176	@ tmp146,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L462	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L471	@,
.L462:
	add	r0, r4, #76800	@, pCtx,
	add	r0, r0, #624	@,,
	bl	GetVoLastImageID	@
.L466:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L471:
	mov	r0, r4	@, pCtx
	movw	r7, #:lower16:76128	@ tmp157,
	bl	MP2_SetImgFormat	@
	movw	r1, #:lower16:76124	@ tmp152,
	movt	r1, #:upper16:76124	@ tmp152,
	movt	r7, #:upper16:76128	@ tmp157,
	movw	r0, #:lower16:76124	@ tmp155,
	movt	r0, #:upper16:76124	@ tmp155,
	ldr	r2, [r4, r1]	@ D.37335, <variable>.CodecInfo.p_SeqUD
	mov	r6, #0	@ tmp156,
	movw	ip, #:lower16:76128	@ tmp160,
	movt	ip, #:upper16:76128	@ tmp160,
	cmp	r2, #0	@ D.37335,
	strne	r2, [r5, #192]	@ D.37335, <variable>.p_usrdat
	ldr	r3, [r4, r7]	@ D.37338, <variable>.CodecInfo.p_PicUD
	movne	r2, #0	@ tmp154,
	strne	r2, [r4, r1]	@ tmp154, <variable>.CodecInfo.p_SeqUD
	mov	r1, #1	@ tmp162,
	cmp	r3, r6	@ D.37338,
	str	r6, [r4, r0]	@ tmp156, <variable>.CodecInfo.p_SeqUD
	strne	r3, [r5, #196]	@ D.37338, <variable>.p_usrdat
	mov	r2, r1	@, tmp162
	strne	r6, [r4, r7]	@ tmp156, <variable>.CodecInfo.p_PicUD
	movw	r6, #:lower16:108512	@ tmp163,
	movt	r6, #:upper16:108512	@ tmp163,
	mov	r7, #0	@ tmp161,
	str	r7, [r4, ip]	@ tmp161, <variable>.CodecInfo.p_PicUD
	str	r1, [r5, #216]	@ tmp162, <variable>.last_frame
	ldr	r1, [r5, #176]	@, <variable>.image_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	add	r2, r4, #76800	@, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #624	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L465	@,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp161, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #196]	@ tmp161, <variable>.p_usrdat
	b	.L462	@
.L465:
	ldr	lr, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	lr, #100	@ <variable>.error_level,
	bhi	.L462	@,
	ldr	ip, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L462	@,
	ldr	r3, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	movhi	r0, r7	@ ret, tmp161
	bhi	.L466	@,
	b	.L462	@
	.fnend
	.size	MPEG2DEC_GetRemainImg, .-MPEG2DEC_GetRemainImg
	.align	2
	.global	MP2_GetPictureInfo
	.type	MP2_GetPictureInfo, %function
MP2_GetPictureInfo:
	.fnstart
.LFB1365:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:76132	@ tmp165,
	movt	r5, #:upper16:76132	@ tmp165,
	movw	r2, #:lower16:77416	@ tmp163,
	movw	r3, #:lower16:77420	@ tmp164,
	movt	r2, #:upper16:77416	@ tmp163,
	ldr	r1, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r3, #:upper16:77420	@ tmp164,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r1, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r6, [r0, r3]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L510	@,
.L473:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L474	@,
	movw	r7, #:lower16:76120	@ tmp176,
	movt	r7, #:upper16:76120	@ tmp176,
	movw	r1, #:lower16:76140	@ tmp180,
	movt	r1, #:upper16:76140	@ tmp180,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.LastTempReference, <variable>.CodecInfo.LastTempReference
	rsbs	r8, r8, #1	@ tmp178, <variable>.CodecInfo.Second_Field
	movcc	r8, #0	@ tmp178
	str	r8, [r4, r7]	@ tmp178, <variable>.CodecInfo.Second_Field
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	cmp	r2, r3	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	beq	.L475	@,
	cmp	r8, #1	@ tmp178,
	beq	.L511	@,
.L475:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movw	r1, #45329	@ tmp214,
	movw	r3, #:lower16:76140	@ tmp217,
	movt	r3, #:upper16:76140	@ tmp217,
	strb	lr, [r4, r1]	@ <variable>.picture_structure, <variable>.CodecInfo.Last_FieldStruct
	movw	lr, #:lower16:76120	@ tmp234,
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	movt	lr, #:upper16:76120	@ tmp234,
	str	r2, [r4, r3]	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	movw	r3, #:lower16:76132	@ tmp241,
	ldrh	ip, [r5, #56]	@, <variable>.mb_width
	movt	r3, #:upper16:76132	@ tmp241,
	strh	ip, [r4, #160]	@ movhi	@, <variable>.Mp2DecParam.PicWidthInMb
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #3	@ <variable>.picture_structure,
	ldrne	r0, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldreq	r0, [r5, #64]	@ <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height_progressive_subtract1mb
	ldreq	r2, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	movne	r0, r0, lsr #1	@ tmp221, <variable>.mb_height,
	rsbeq	r0, r0, r2	@ tmp228, <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height
	strh	r0, [r4, #156]	@ movhi	@ tmp228, <variable>.Mp2DecParam.PicHeightInMb
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	strh	r6, [r4, #158]	@ movhi	@, <variable>.Mp2DecParam.FrameHeightInMb
	cmp	r0, #1	@ <variable>.CodecInfo.MpegFlag,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ <variable>.frame_pred_frame_dct, <variable>.frame_pred_frame_dct
	movne	lr, #0	@, tmp243
	moveq	lr, #1	@, tmp243
	strb	r1, [r4, #13]	@ <variable>.frame_pred_frame_dct, <variable>.Mp2DecParam.FramePredFrameDct
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	ip, [r4, #12]	@ <variable>.CodecInfo.Second_Field, <variable>.Mp2DecParam.SecondFieldFlag
	strb	r2, [r4, #11]	@ <variable>.picture_structure, <variable>.Mp2DecParam.PictureStructure
	ldrb	r6, [r5, #12]	@ zero_extendqisi2	@ <variable>.concealment_motion_vectors, <variable>.concealment_motion_vectors
	strb	r6, [r4, #15]	@ <variable>.concealment_motion_vectors, <variable>.Mp2DecParam.ConcealmentMotionVectors
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	str	lr, [r4, #188]	@ tmp243, <variable>.Mp2DecParam.Mpeg1Flag
	strb	r1, [r4, #8]	@ <variable>.picture_coding_type, <variable>.Mp2DecParam.PicCodingType
	ldreqb	r1, [r5, #25]	@ zero_extendqisi2	@ <variable>.full_pel_backward_vector, <variable>.full_pel_backward_vector
	streqb	r1, [r4, #9]	@ <variable>.full_pel_backward_vector, <variable>.Mp2DecParam.Mp1BwdmvFullPel
	ldreqb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.full_pel_forward_vector, <variable>.full_pel_forward_vector
	streqb	r1, [r4, #10]	@ <variable>.full_pel_forward_vector, <variable>.Mp2DecParam.Mp1FwdmvFullPel
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r3, [r4, #20]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	ip, [r4, #21]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r2, [r5, #6]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r2, [r4, #22]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r0, [r5, #7]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r0, [r4, #23]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	r6, [r4, #14]	@ <variable>.top_field_first, <variable>.Mp2DecParam.TopFieldFirst
	ldrb	lr, [r5, #8]	@ zero_extendqisi2	@ <variable>.intra_dc_precision, <variable>.intra_dc_precision
	strb	lr, [r4, #19]	@ <variable>.intra_dc_precision, <variable>.Mp2DecParam.IntraDcPrecision
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	strb	r1, [r4, #18]	@ <variable>.q_scale_type, <variable>.Mp2DecParam.QuantType
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ <variable>.intra_vlc_format, <variable>.intra_vlc_format
	strb	r3, [r4, #17]	@ <variable>.intra_vlc_format, <variable>.Mp2DecParam.IntraVlcFormat
	ldrb	ip, [r5, #15]	@ zero_extendqisi2	@ <variable>.alternate_scan, <variable>.alternate_scan
	strb	ip, [r4, #16]	@ <variable>.alternate_scan, <variable>.Mp2DecParam.AlternateScan
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L480	@,
	movw	r0, #:lower16:76120	@ tmp269,
	movt	r0, #:upper16:76120	@ tmp269,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L480	@,
.L481:
	movw	r7, #:lower16:108512	@ tmp327,
	movw	lr, #:lower16:76180	@ tmp329,
	movt	r7, #:upper16:108512	@ tmp327,
	movt	lr, #:upper16:76180	@ tmp329,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	ip, #:lower16:76172	@ tmp333,
	movt	ip, #:upper16:76172	@ tmp333,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:76176	@ tmp337,
	movt	r2, #:upper16:76176	@ tmp337,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pFwd,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r6, #0	@, pFwd,
	mov	r7, r0	@ pBwd,
	beq	.L488	@,
	cmp	r0, #0	@ pBwd,
	beq	.L488	@,
	ldr	r2, [r5, #472]	@ D.36052, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36052,
	beq	.L490	@,
	ldr	r0, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L490	@,
	ldr	ip, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L490	@,
	ldr	ip, [r7, #472]	@ D.36059, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.36059,
	ldrne	lr, [ip, #12]	@ iftmp.437, <variable>.PhyAddr
	ldreq	lr, [r2, #12]	@ iftmp.437, <variable>.PhyAddr
	str	lr, [r4, #200]	@ iftmp.437, <variable>.Mp2DecParam.BwdRefPhyAddr
	ldr	r2, [r6, #472]	@ D.36066, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36066,
	ldreq	r2, [r5, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r2, #12]	@ iftmp.438, <variable>.PhyAddr
	str	ip, [r4, #204]	@ iftmp.438, <variable>.Mp2DecParam.FwdRefPhyAddr
	ldr	r8, [r5, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r8, #12]	@ D.36071, <variable>.PhyAddr
	str	r2, [r4, #208]	@ D.36071, <variable>.Mp2DecParam.CurPicPhyAddr
	ldr	r8, [r5, #484]	@ D.36073, <variable>.PmvAddr
	str	r8, [r4, #244]	@ D.36073, <variable>.Mp2DecParam.PmvColmbPhyAddr
	ldr	r0, [r7, #480]	@ D.36075, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.36075,
	ldreq	r0, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r0, #12]	@ iftmp.439, <variable>.PhyAddr
	str	r3, [r4, #220]	@ iftmp.439, <variable>.Mp2DecParam.TfBwdPhyAddr
	ldr	r1, [r6, #480]	@ D.36082, <variable>.pstTfOutFs
	cmp	r1, #0	@ D.36082,
	ldreq	r1, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r0, [r1, #12]	@ iftmp.440, <variable>.PhyAddr
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	r0, [r4, #224]	@ iftmp.440, <variable>.Mp2DecParam.TfFwdPhyAddr
	mov	r0, #13	@,
	ldr	r3, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #228]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.TfCurPhyAddr
	ldr	r3, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36089, <variable>.PhyAddr
	str	r3, [r4, #232]	@ D.36089, <variable>.Mp2DecParam.DispFramePhyAddr
	ldr	r7, [r7, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r7, [r4, #212]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.BwdRefIsFldSave
	ldr	r6, [r6, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r6, [r4, #216]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.FwdRefIsFldSave
	ldr	r7, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r6, [r7, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ iftmp.438,
	movw	ip, #45316	@ tmp376,
	str	lr, [sp, #4]	@ iftmp.437,
	str	r6, [r4, ip]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DnrMbInfoStAddr
	str	r8, [sp, #8]	@ D.36073,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r3, r4, #75776	@ ivtmp.2034, pCtx,
	add	r3, r3, #588	@ ivtmp.2034, ivtmp.2034,
	mov	r2, r4	@ ivtmp.2038, pCtx
	mov	r0, #0	@ i,
	ldr	r5, [r7, #20]	@ <variable>.Stride, <variable>.Stride
	str	r5, [r4, #236]	@ <variable>.Stride, <variable>.Mp2DecParam.VahbStride
.L500:
	add	ip, r3, #4	@ tmp398, ivtmp.2034,
	ldr	r5, [r3, #4]	@ tmp403, <variable>.intra_quantizer_matrix
	ldr	r7, [r3, #0]	@ tmp383, <variable>.intra_quantizer_matrix
	add	r0, r0, #2	@ i, i,
	ldr	r6, [r3, #256]	@ tmp385, <variable>.non_intra_quantizer_matrix
	add	r1, r2, #1	@ tmp399, ivtmp.2038,
	ldr	lr, [ip, #256]	@ tmp404, <variable>.non_intra_quantizer_matrix
	cmp	r0, #64	@ i,
	strb	r7, [r2, #88]	@ tmp383, <variable>.Mp2DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.2034, tmp398,
	strb	r6, [r2, #24]	@ tmp385, <variable>.Mp2DecParam.NonIntraQuantTab
	add	r2, r1, #1	@ ivtmp.2038, tmp399,
	strb	r5, [r1, #88]	@ tmp403, <variable>.Mp2DecParam.IntraQuantTab
	strb	lr, [r1, #24]	@ tmp404, <variable>.Mp2DecParam.NonIntraQuantTab
	bne	.L500	@,
	mov	r0, r4	@, pCtx
	mov	r6, #1	@ D.36010,
	bl	MP2_EstimatePicQp	@
	strb	r0, [r4, #152]	@, <variable>.Mp2DecParam.EstmatedPicQp
	b	.L483	@
.L480:
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	MP2_GetImageBuffer	@
	subs	r6, r0, #0	@ D.36006,
	beq	.L512	@,
	movw	r2, #:lower16:108512	@ tmp274,
	movw	r7, #:lower16:76180	@ tmp276,
	movt	r2, #:upper16:108512	@ tmp274,
	movt	r7, #:upper16:76180	@ tmp276,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L484	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImg,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r9, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r7, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r8, #0	@ tmp293,
	str	r9, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r9, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [lr, #56]	@ tmp293, <variable>.pstExtraData,
	ldrd	r8, [r6, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r6, #8]	@ <variable>.PTS, pImg,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	subs	r3, r1, #3	@ tmp298, <variable>.picture_structure,
	movne	r3, #1	@ tmp298
	str	r3, [r6, #128]	@ tmp298, <variable>.is_fld_save
.L484:
	ldrb	r6, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r6, #3	@ <variable>.picture_coding_type,
	beq	.L481	@,
	movw	ip, #:lower16:76136	@ tmp300,
	movt	ip, #:upper16:76136	@ tmp300,
	movw	r6, #:lower16:76172	@ tmp303,
	movw	r5, #:lower16:76176	@ tmp304,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r6, #:upper16:76172	@ tmp303,
	movt	r5, #:upper16:76176	@ tmp304,
	cmp	r0, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r6]	@ prephitmp.2017, <variable>.CodecInfo.FwdFsID
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	r0, #2	@ iftmp.433,
	moveq	r0, #1	@ iftmp.433,
	cmp	r2, r1	@ prephitmp.2017, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, ip]	@ iftmp.433, <variable>.CodecInfo.RefNum
	beq	.L487	@,
	movw	r7, #:lower16:108512	@ tmp307,
	movt	r7, #:upper16:108512	@ tmp307,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r5]	@ prephitmp.2017, <variable>.CodecInfo.BwdFsID
.L487:
	movw	r5, #:lower16:76180	@ tmp314,
	movt	r5, #:upper16:76180	@ tmp314,
	movw	r6, #:lower16:76172	@ tmp312,
	movw	r3, #:lower16:76176	@ tmp313,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r3, #:upper16:76176	@ tmp313,
	movt	r6, #:upper16:76172	@ tmp312,
	movw	r7, #:lower16:108512	@ tmp316,
	movt	r7, #:upper16:108512	@ tmp316,
	str	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r6]	@ prephitmp.2017, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L481	@
.L512:
	movw	ip, #:lower16:76116	@ tmp272,
	movt	ip, #:upper16:76116	@ tmp272,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.Frame_Cnt
	bl	dprint_vfmw	@
.L483:
	mov	r0, r6	@, D.36010
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L474:
	movw	r3, #45329	@ tmp197,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.35964, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ D.35964,
	beq	.L476	@,
	movw	r1, #:lower16:76120	@ tmp198,
	movt	r1, #:upper16:76120	@ tmp198,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L513	@,
.L476:
	movw	r0, #:lower16:76120	@ tmp212,
	movt	r0, #:upper16:76120	@ tmp212,
	mov	r6, #1	@ tmp213,
	str	r6, [r4, r0]	@ tmp213,
	b	.L475	@
.L510:
	ldrb	ip, [r5, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	strb	ip, [r5, #6]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #4]	@ <variable>.forward_f_code, <variable>.f_code
	strb	ip, [r5, #7]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #5]	@ <variable>.forward_f_code, <variable>.f_code
	b	.L473	@
.L488:
	movw	r1, #:lower16:108512	@ tmp346,
	movw	r3, #:lower16:76180	@ tmp348,
	movt	r1, #:upper16:108512	@ tmp346,
	movt	r3, #:upper16:76180	@ tmp348,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	movw	r2, #1141	@,
	movt	r1, #:upper16:.LC40	@,
	str	r6, [sp, #0]	@ pFwd,
	mov	r6, #0	@ D.36010,
	str	r7, [sp, #4]	@ pBwd,
	bl	dprint_vfmw	@
	b	.L483	@
.L511:
	movw	lr, #:lower16:76116	@ tmp184,
	movt	lr, #:upper16:76116	@ tmp184,
	mov	r0, r8	@, tmp178
	movw	r1, #:lower16:.LC34	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:108512	@ tmp188,
	movw	ip, #:lower16:76180	@ tmp190,
	movt	r1, #:upper16:108512	@ tmp188,
	movt	ip, #:upper16:76180	@ tmp190,
	mov	r3, #0	@ tmp187,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r8	@, tmp178
	str	r3, [r4, r7]	@ tmp187, <variable>.CodecInfo.Second_Field
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r0, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	beq	.L475	@,
	movw	r0, #:lower16:76108	@ tmp193,
	movt	r0, #:upper16:76108	@ tmp193,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r6, r2, #192	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r0]	@ tmp196,
	b	.L475	@
.L513:
	movw	lr, #:lower16:76116	@ tmp201,
	movt	lr, #:upper16:76116	@ tmp201,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC35	@,
	str	ip, [sp, #0]	@ D.35964,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:108512	@ tmp203,
	movw	r3, #:lower16:76180	@ tmp205,
	movt	r1, #:upper16:108512	@ tmp203,
	movt	r3, #:upper16:76180	@ tmp205,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	ip, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	movwne	ip, #:lower16:76108	@ tmp208,
	movtne	ip, #:upper16:76108	@ tmp208,
	ldrne	r2, [r4, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrne	r2, r2, #192	@ tmp211, <variable>.CodecInfo.StreamIntegrality,
	strne	r2, [r4, ip]	@ tmp211, <variable>.CodecInfo.StreamIntegrality
	b	.L476	@
.L490:
	movw	lr, #:lower16:108512	@ tmp353,
	movw	r6, #:lower16:76180	@ tmp355,
	movt	lr, #:upper16:108512	@ tmp353,
	movt	r6, #:upper16:76180	@ tmp355,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r1, #:lower16:76176	@ tmp362,
	movt	r1, #:upper16:76176	@ tmp362,
	movw	r2, #:lower16:76172	@ tmp358,
	movt	r2, #:upper16:76172	@ tmp358,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	mov	r0, #0	@,
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	r6, [r5, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	r6, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	r6, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	mov	r6, #0	@ D.36010,
	b	.L483	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
.LFB1363:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:76108	@ tmp167,
	movt	r3, #:upper16:76108	@ tmp167,
	movw	r2, #:lower16:77416	@ tmp166,
	movt	r2, #:upper16:77416	@ tmp166,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ prephitmp.2142, <variable>.CodecInfo.StreamIntegrality
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	tst	r3, #8388608	@ prephitmp.2142,
	mvneq	r0, #0	@ D.35723,
	beq	.L516	@,
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L517	@,
	movw	r7, #:lower16:76120	@ tmp170,
	movt	r7, #:upper16:76120	@ tmp170,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	beq	.L517	@,
	ands	r7, r3, #255	@ tmp177, prephitmp.2142,
	beq	.L519	@,
.L560:
	movw	r0, #:lower16:g_event_report	@ tmp178,
	movt	r0, #:upper16:g_event_report	@ tmp178,
	ldr	ip, [r0, #0]	@ g_event_report.424, g_event_report
	cmp	ip, #0	@ g_event_report.424,
	beq	.L520	@,
	movw	lr, #:lower16:108512	@ tmp179,
	movt	lr, #:upper16:108512	@ tmp179,
	mov	r1, #103	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	ip	@ g_event_report.424
	movw	r1, #:lower16:76108	@ tmp181,
	movt	r1, #:upper16:76108	@ tmp181,
	ldr	r3, [r4, r1]	@ prephitmp.2142, <variable>.CodecInfo.StreamIntegrality
.L520:
	movw	ip, #:lower16:76116	@ tmp183,
	movt	ip, #:upper16:76116	@ tmp183,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC43	@,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35723,
.L516:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L517:
	movw	r3, #:lower16:76108	@ tmp176,
	movt	r3, #:upper16:76108	@ tmp176,
	movw	lr, #:lower16:108516	@ tmp172,
	movt	lr, #:upper16:108516	@ tmp172,
	ldr	r3, [r4, r3]	@ prephitmp.2142, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, lr]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ands	r7, r3, #255	@ tmp177, prephitmp.2142,
	add	ip, r2, #1	@ tmp175, <variable>.numTotalFrame,
	str	ip, [r4, lr]	@ tmp175, <variable>.numTotalFrame
	bne	.L560	@,
.L519:
	movw	r2, #:lower16:76144	@ tmp185,
	movt	r2, #:upper16:76144	@ tmp185,
	ldr	r6, [r4, r2]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r6, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L561	@,
	movw	r9, #:lower16:76096	@ tmp190,
	movt	r9, #:upper16:76096	@ tmp190,
	ldr	r8, [r4, r9]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r6, r8, #2	@ tmp191, <variable>.CodecInfo.UsedDecMode,
	cmp	r6, #1	@ tmp191,
	bls	.L522	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [sl, #8]	@ prephitmp.2148, <variable>.s32DecMode
.L523:
	movw	r3, #:lower16:76096	@ tmp248,
	movt	r3, #:upper16:76096	@ tmp248,
	sub	r2, r1, #1	@ tmp249, prephitmp.2148,
	str	r1, [r4, r3]	@ prephitmp.2148, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #3	@ tmp249,
	ldrls	pc, [pc, r2, asl #2]	@ tmp249
	b	.L525	@
.L530:
	.word	.L526
	.word	.L527
	.word	.L528
	.word	.L529
.L522:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #8]	@ D.35749, <variable>.s32DecMode
	cmp	r2, #4	@ D.35749,
	cmpne	r2, #1	@, D.35749,
	mov	r1, r2	@ prephitmp.2148, D.35749
	bhi	.L523	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	movw	r6, #:lower16:108512	@ tmp207,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:76108	@ tmp203,
	movt	ip, #:upper16:76108	@ tmp203,
	movt	r6, #:upper16:108512	@ tmp207,
	movw	sl, #:lower16:76176	@ tmp209,
	movt	sl, #:upper16:76176	@ tmp209,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	orr	r1, r2, #128	@ tmp206, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, ip]	@ tmp206, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L524	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r9, #:lower16:76172	@ tmp233,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:76172	@ tmp233,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #204]	@ tmp177, <variable>.p_usrdat
	str	r7, [r8, #192]	@ tmp177, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r8, #196]	@ tmp177, <variable>.p_usrdat
	str	r7, [r8, #200]	@ tmp177, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, sl]	@ tmp177, <variable>.CodecInfo.BwdFsID
	str	r7, [r4, r9]	@ tmp177, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L562	@,
.L524:
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #:lower16:76136	@ tmp245,
	movt	r3, #:upper16:76136	@ tmp245,
	mov	lr, #0	@ tmp246,
	str	lr, [r4, r3]	@ tmp246, <variable>.CodecInfo.RefNum
	ldr	r1, [r7, #8]	@ prephitmp.2148, <variable>.s32DecMode
	b	.L523	@
.L561:
	movw	r3, #:lower16:76116	@ tmp188,
	movt	r3, #:upper16:76116	@ tmp188,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35723, <variable>.CodecInfo.Imgbuf_allocated
	b	.L516	@
.L529:
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_coding_type
	cmp	r7, #1	@ prephitmp.2216,
	movweq	r3, #:lower16:108524	@ tmp266,
	movteq	r3, #:upper16:108524	@ tmp266,
	moveq	r2, #0	@ tmp267,
	streq	r2, [r4, r3]	@ tmp267, <variable>.PPicFound
	ldreqb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_coding_type
	cmp	r7, #3	@ prephitmp.2216,
	beq	.L563	@,
	cmp	r7, #2	@ prephitmp.2216,
	beq	.L540	@,
.L558:
	mov	r9, r7	@ prephitmp.2150, prephitmp.2216
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	mov	sl, #1	@ ret,
.L531:
	movw	r0, #:lower16:76056	@ tmp278,
	movw	r2, #:lower16:76148	@ tmp279,
	movt	r0, #:upper16:76056	@ tmp278,
	movt	r2, #:upper16:76148	@ tmp279,
	add	r3, r4, #75776	@, pCtx,
	movw	lr, #:lower16:76116	@ tmp277,
	ldr	r8, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	movt	lr, #:upper16:76116	@ tmp277,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r0, r3, #560	@,,
	add	r6, r8, r1	@ D.35808, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	ldr	r8, [r4, lr]	@ temp.2186, <variable>.CodecInfo.Frame_Cnt
	bl	BsPos	@
	mov	r3, r9	@, prephitmp.2150
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r2, r8	@, temp.2186
	str	r7, [sp, #0]	@ prephitmp.2216,
	add	ip, r6, r0, lsr #3	@, tmp286, D.35808,,
	mov	r0, #18	@,
	str	ip, [sp, #4]	@ tmp286,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:76108	@ tmp287,
	movt	r3, #:upper16:76108	@ tmp287,
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r6, r0, #14155776	@ tmp290, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r3]	@ tmp290, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r7, #528]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	beq	.L564	@,
	movw	ip, #:lower16:76136	@ tmp297,
	movt	ip, #:upper16:76136	@ tmp297,
	ldr	r3, [r4, ip]	@ temp.2189, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ temp.2189,
	bne	.L544	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	lr, r1, #2	@ tmp300, <variable>.picture_coding_type,
	uxtb	r6, lr	@ tmp301, tmp300
	cmp	r6, #1	@ tmp301,
	bls	.L565	@,
.L542:
	movw	r6, #:lower16:108512	@ tmp305,
	movw	r7, #:lower16:76172	@ tmp307,
	movt	r6, #:upper16:108512	@ tmp305,
	movt	r7, #:upper16:76172	@ tmp307,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:76176	@ tmp311,
	movt	r2, #:upper16:76176	@ tmp311,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	movne	r6, #0	@, tmp319
	moveq	r6, #1	@, tmp319
	beq	.L566	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.2196, <variable>.picture_coding_type
	cmp	r3, #2	@ temp.2196,
	beq	.L567	@,
	cmp	r3, #3	@ temp.2196,
	beq	.L568	@,
.L547:
	cmp	sl, #0	@ ret,
	movne	r0, #1	@ D.35723,
	bne	.L516	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r1, #3	@ <variable>.picture_structure,
	beq	.L550	@,
	movw	r2, #:lower16:76120	@ tmp330,
	movt	r2, #:upper16:76120	@ tmp330,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	movne	r0, sl	@ D.35723, ret
	bne	.L516	@,
.L550:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L569	@,
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	lr, #1	@ <variable>.progressive_frame,
	beq	.L570	@,
	movw	r0, #:lower16:76260	@ tmp353,
	movt	r0, #:upper16:76260	@ tmp353,
	movw	lr, #:lower16:76256	@ tmp356,
	movt	lr, #:upper16:76256	@ tmp356,
	ldr	r2, [r4, r0]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.2208, <variable>.GopFrmCnt,
	str	r1, [r4, r0]	@ temp.2208, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp357, temp.2208,
	str	r3, [r4, lr]	@ tmp357, <variable>.GopFldCnt
.L552:
	movw	r2, #:lower16:76252	@ tmp358,
	movt	r2, #:upper16:76252	@ tmp358,
	movw	r3, #:lower16:76116	@ tmp362,
	movt	r3, #:upper16:76116	@ tmp362,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #0	@ D.35723,
	add	r1, ip, #1	@ tmp361, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp361, <variable>.GopFrmCntNoRpt
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, lr, #1	@ tmp365, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp365, <variable>.CodecInfo.Frame_Cnt
	b	.L516	@
.L528:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	mov	sl, #0	@ ret,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L527:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	sub	r1, r9, #2	@ tmp255, prephitmp.2150,
	uxtb	sl, r1	@ tmp256, tmp255
	cmp	sl, #1	@ tmp256,
	bls	.L534	@,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	mov	sl, #1	@ ret,
	b	.L531	@
.L526:
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_coding_type
	cmp	r7, #3	@ prephitmp.2216,
	bne	.L558	@,
	ldrb	r6, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r6, #3	@ <variable>.picture_structure,
	beq	.L533	@,
	movw	r9, #:lower16:76120	@ tmp251,
	movt	r9, #:upper16:76120	@ tmp251,
	mov	sl, #0	@ ret,
	ldr	r0, [r4, r9]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, sl	@ <variable>.CodecInfo.Second_Field,
	movne	r8, #0	@, tmp254
	moveq	r8, #1	@, tmp254
	str	r8, [r4, r9]	@ tmp254, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L525:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	mov	sl, #1	@ ret,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L544:
	cmp	r3, #1	@ temp.2189,
	bhi	.L542	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	bne	.L542	@,
	movw	r1, #:lower16:.LC50	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC50	@,
	mov	sl, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L542	@
.L564:
	movw	r7, #:lower16:76136	@ tmp293,
	movt	r7, #:upper16:76136	@ tmp293,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L542	@,
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ D.35773, <variable>.picture_coding_type
	cmp	r2, #3	@ D.35773,
	beq	.L571	@,
	cmp	r2, #2	@ D.35773,
	bne	.L542	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	b	.L542	@
.L566:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	ldr	r2, .L574	@,
	movt	r1, #:upper16:.LC51	@,
	movw	r3, #855	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35723,
	b	.L516	@
.L567:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #180]	@ D.35852, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.35853, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.35852, D.35853
	bls	.L547	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35723, tmp319
	b	.L516	@
.L568:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #180]	@ temp.2198, <variable>.error_level
	ldr	r3, [lr, #0]	@ temp.2200, <variable>.s32RefErrThr
	cmp	r2, r3	@ temp.2198, temp.2200
	bhi	.L572	@,
	ldr	r2, [r0, #180]	@ D.35869, <variable>.error_level
	cmp	r3, r2	@ temp.2200, D.35869
	bcs	.L547	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35723, tmp319
	b	.L516	@
.L569:
	movw	r3, #:lower16:76260	@ tmp333,
	movt	r3, #:upper16:76260	@ tmp333,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	lr, #:lower16:76256	@ tmp340,
	ldr	r2, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	lr, #:upper16:76256	@ tmp340,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r2, #1	@ tmp334, <variable>.GopFrmCnt,
	add	r2, r1, ip	@ tmp337, tmp334, <variable>.repeat_first_field
	add	r1, r2, r0	@ D.35886, tmp337, <variable>.top_field_first
	str	r1, [r4, r3]	@ D.35886, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp341, D.35886,
	str	ip, [r4, lr]	@ tmp341, <variable>.GopFldCnt
	b	.L552	@
.L572:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35723, tmp319
	b	.L516	@
.L563:
	movw	r8, #:lower16:108524	@ tmp268,
	movt	r8, #:upper16:108524	@ tmp268,
	ldr	sl, [r4, r8]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	sl, #0	@ <variable>.PPicFound,
	bne	.L558	@,
	ldrb	r9, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r9, #3	@ <variable>.picture_structure,
	beq	.L533	@,
	movw	r1, #:lower16:76120	@ tmp271,
	movt	r1, #:upper16:76120	@ tmp271,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r0, ip, #1	@ tmp274, <variable>.CodecInfo.Second_Field
	movcc	r0, #0	@ tmp274
	str	r0, [r4, r1]	@ tmp274, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L534:
	cmp	r9, #2	@ prephitmp.2150,
	beq	.L573	@,
.L535:
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r7, #3	@ <variable>.picture_structure,
	beq	.L559	@,
	movw	r3, #:lower16:76120	@ tmp262,
	movt	r3, #:upper16:76120	@ tmp262,
	mov	sl, #0	@ ret,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, sl	@ <variable>.CodecInfo.Second_Field,
	movne	lr, #0	@, tmp265
	moveq	lr, #1	@, tmp265
	str	lr, [r4, r3]	@ tmp265, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L570:
	movw	r2, #:lower16:76260	@ tmp343,
	movt	r2, #:upper16:76260	@ tmp343,
	movw	r3, #:lower16:76256	@ tmp347,
	movt	r3, #:upper16:76256	@ tmp347,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	lr, [r4, r3]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	r0, ip, #1	@ tmp346, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ tmp346, <variable>.GopFrmCnt
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r1, lr, #2	@ tmp349, <variable>.GopFldCnt,
	add	r0, r1, ip	@ tmp352, tmp349, <variable>.repeat_first_field
	str	r0, [r4, r3]	@ tmp352, <variable>.GopFldCnt
	b	.L552	@
.L540:
	movw	r2, #:lower16:108524	@ tmp275,
	movt	r2, #:upper16:108524	@ tmp275,
	mov	sl, #1	@ tmp276,
	str	sl, [r4, r2]	@ tmp276, <variable>.PPicFound
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2150, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L565:
	movw	r1, #:lower16:.LC49	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC49	@,
	mov	sl, r3	@ ret, temp.2189
	bl	dprint_vfmw	@
	b	.L542	@
.L533:
	mov	r9, #3	@ prephitmp.2150,
.L559:
	mov	sl, #0	@ ret,
	b	.L531	@
.L571:
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	mov	sl, r3	@ ret, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	b	.L542	@
.L562:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.35771, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.35771, <variable>.CodecInfo.FwdFsID
	b	.L524	@
.L573:
	movw	r2, #45329	@ tmp257,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L535	@,
	movw	r7, #45328	@ tmp259,
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastDecPicCodingType, <variable>.CodecInfo.LastDecPicCodingType
	cmp	sl, #1	@ <variable>.CodecInfo.LastDecPicCodingType,
	bne	.L535	@,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2216, <variable>.picture_structure
	b	.L531	@
.L575:
	.align	2
.L574:
	.word	.LANCHOR0+1164
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 40
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
	movw	r3, #:lower16:77416	@ tmp157,
	movt	r3, #:upper16:77416	@ tmp157,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r2, [r3, #48]	@ D.35453, <variable>.horizontal_size
	cmp	r2, #31	@ D.35453,
	ldrls	r3, [r3, #52]	@ prephitmp.2231, <variable>.vertical_size
	bls	.L578	@,
	ldr	r3, [r3, #52]	@ prephitmp.2231, <variable>.vertical_size
	cmp	r3, #31	@ prephitmp.2231,
	bls	.L578	@,
	ldr	r1, [r0, #0]	@ D.35460, <variable>.pstExtraData
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L601	@,
	mov	r4, r2	@ PicWidth, D.35453
	mov	r5, r3	@ PicHeight, prephitmp.2231
	mov	r8, #5	@ prephitmp.2233,
	mov	sl, #2	@ PmvNum,
	mov	r9, #3	@ DecFsNum,
.L588:
	sub	r7, fp, #84	@ tmp193,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp193
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #0	@ tmp171,
	ldr	ip, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r4, [fp, #-56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r0, [fp, #-82]	@ tmp171, FspInstCfg.s32RprEnable
	str	r4, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r5, [fp, #-52]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	ip, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.2233, FspInstCfg.s32ExpectedDispFsNum
	cmp	r5, #24	@ <variable>.eCapLevel,
	movw	r5, #:lower16:108512	@ tmp182,
	uxtbne	r0, r9	@ iftmp.417, DecFsNum
	strb	r0, [fp, #-79]	@ iftmp.417, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r5, #:upper16:108512	@ tmp182,
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp193
	uxtbne	sl, sl	@ iftmp.418, PmvNum
	mov	r7, #0	@ tmp180,
	moveq	sl, #1	@ iftmp.418,
	strb	sl, [fp, #-76]	@ iftmp.418, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp180, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.35504,
	bne	.L598	@,
	ldr	lr, [r6, #0]	@ temp.2260, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	moveq	r0, #1	@ D.35457,
	beq	.L580	@,
	mov	r0, r4	@, D.35504
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35457, D.35504
	b	.L580	@
.L578:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35457,
.L580:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L598:
	mov	r0, r7	@, tmp180
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35457, tmp180
	b	.L580	@
.L601:
	ldr	ip, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L582	@,
	ldr	r4, [r1, #564]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r4	@ D.35453, PicWidth
	ldrhi	r5, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L584	@,
	ldr	r5, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r5	@ prephitmp.2231, PicHeight
	bhi	.L584	@,
	ldr	r2, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ D.35473, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L587	@,
	add	sl, r9, #1	@ PmvNum.2246, D.35473,
	cmp	sl, #17	@ PmvNum.2246,
	movge	sl, #17	@ PmvNum,
.L587:
	add	r9, r9, #2	@ DecFsNum, D.35473,
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.2233, <variable>.stChanOption.s32DisplayFrameNum
	b	.L588	@
.L582:
	ldr	ip, [r1, #564]	@ D.35467, <variable>.stChanOption.s32MaxWidth
	cmp	r2, ip	@ D.35453, D.35467
	ldrhi	lr, [r1, #568]	@ prephitmp.2235, <variable>.stChanOption.s32MaxHeight
	bhi	.L590	@,
	ldr	lr, [r1, #568]	@ prephitmp.2235, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.2231, prephitmp.2235
	bhi	.L590	@,
	ldr	r4, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ temp.2249, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r4, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L593	@,
	add	sl, r9, #1	@ PmvNum.2251, temp.2249,
	cmp	sl, #17	@ PmvNum.2251,
	movge	sl, #17	@ PmvNum,
.L593:
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.2233, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.2249,
	mov	r4, r2	@ PicWidth, D.35453
	mov	r5, r3	@ PicHeight, prephitmp.2231
	b	.L588	@
.L590:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35457,
	b	.L580	@
.L584:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {r4, r5}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35457,
	b	.L580	@
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:76132	@ tmp151,
	movt	r3, #:upper16:76132	@ tmp151,
	mov	r4, r0	@ pCtx, pCtx
	movw	r1, #:lower16:77420	@ tmp150,
	movw	r0, #:lower16:77416	@ tmp149,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r0, #:upper16:77416	@ tmp149,
	movt	r1, #:upper16:77420	@ tmp150,
	cmp	r2, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r5, [r4, r0]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r4, r1]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L604	@,
	cmp	r2, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L625	@,
	movw	r2, #:lower16:76108	@ tmp164,
	movt	r2, #:upper16:76108	@ tmp164,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #3538944	@ <variable>.CodecInfo.StreamIntegrality,
	bne	.L626	@,
.L609:
	mov	r2, #1	@ tmp178,
	str	r2, [r4, r3]	@ tmp178, <variable>.CodecInfo.MpegFlag
.L607:
	mov	r0, #17	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:76132	@ tmp180,
	movt	r3, #:upper16:76132	@ tmp180,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L627	@,
.L612:
	ldr	r2, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	movw	ip, #:lower16:76132	@ tmp206,
	movt	ip, #:upper16:76132	@ tmp206,
	add	r3, r2, #15	@ tmp203, <variable>.horizontal_size,
	mov	lr, r3, lsr #4	@ tmp205, tmp203,
	str	lr, [r5, #56]	@ tmp205, <variable>.mb_width
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r8, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L628	@,
.L613:
	ldr	r2, [r5, #52]	@ temp.2301, <variable>.vertical_size
	add	ip, r2, #15	@ tmp212, temp.2301,
	mov	r1, ip, lsr #4	@ iftmp.442, tmp212,
.L614:
	movw	r3, #:lower16:76132	@ tmp215,
	movt	r3, #:upper16:76132	@ tmp215,
	str	r1, [r5, #60]	@ iftmp.442, <variable>.mb_height
	mov	r1, #0	@ tmp214,
	str	r1, [r5, #64]	@ tmp214, <variable>.mb_height_progressive_subtract1mb
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	lr, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L629	@,
.L615:
	movw	r3, #:lower16:76144	@ tmp224,
	movt	r3, #:upper16:76144	@ tmp224,
	ldr	r8, [r4, r3]	@ prephitmp.2305, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2305,
	beq	.L616	@,
	ldr	r0, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r2, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	r0, r2	@ <variable>.mb_width, <variable>.mb_width
	beq	.L630	@,
.L616:
	movw	r7, #:lower16:g_event_report	@ tmp229,
	movt	r7, #:upper16:g_event_report	@ tmp229,
	ldr	r3, [r7, #0]	@ g_event_report.443, g_event_report
	cmp	r3, #0	@ g_event_report.443,
	beq	.L618	@,
	ldrh	r2, [r6, #56]	@, <variable>.mb_width
	movw	r8, #:lower16:108512	@ tmp234,
	movt	r8, #:upper16:108512	@ tmp234,
	mov	r1, #2	@,
	strh	r2, [fp, #-52]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldrh	r0, [r6, #60]	@, <variable>.mb_height
	strh	r0, [fp, #-50]	@ movhi	@, para
	ldrh	lr, [r5, #56]	@, <variable>.mb_width
	strh	lr, [fp, #-48]	@ movhi	@, para
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	strh	r6, [fp, #-46]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report.443
.L618:
	movw	r6, #:lower16:108512	@ tmp237,
	movw	r8, #:lower16:76176	@ tmp239,
	movt	r6, #:upper16:108512	@ tmp237,
	movt	r8, #:upper16:76176	@ tmp239,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L619	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r9, #:lower16:76172	@ tmp263,
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:76172	@ tmp263,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp253,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r7, #204]	@ tmp253, <variable>.p_usrdat
	str	sl, [r7, #192]	@ tmp253, <variable>.p_usrdat
	mov	r2, #1	@,
	str	sl, [r7, #196]	@ tmp253, <variable>.p_usrdat
	str	sl, [r7, #200]	@ tmp253, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	sl, [r4, r8]	@ tmp253, <variable>.CodecInfo.BwdFsID
	str	sl, [r4, r9]	@ tmp253, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, sl	@,
	bne	.L631	@,
.L619:
	add	r7, r4, #76800	@ D.36196, pCtx,
	movw	ip, #:lower16:76136	@ tmp275,
	add	r6, r7, #624	@ D.36196, D.36196,
	movt	ip, #:upper16:76136	@ tmp275,
	movw	r3, #:lower16:108512	@ tmp278,
	movt	r3, #:upper16:108512	@ tmp278,
	mov	r1, #0	@ tmp276,
	str	r1, [r4, ip]	@ tmp276, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r1, r6	@, D.36196
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ D.36199, <variable>.pstExtraData
	ldr	r7, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L620	@,
	ldr	r8, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r8, #25	@ <variable>.eCapLevel,
	beq	.L632	@,
.L620:
	movw	lr, #:lower16:108512	@ tmp286,
	movt	lr, #:upper16:108512	@ tmp286,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L633	@,
.L621:
	movw	r6, #:lower16:76144	@ tmp288,
	movw	r2, #:lower16:76160	@ tmp290,
	movt	r6, #:upper16:76144	@ tmp288,
	movt	r2, #:upper16:76160	@ tmp290,
	mov	r1, #0	@ tmp289,
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp289, <variable>.CodecInfo.QueueImageNum
	str	r1, [r4, r6]	@ tmp289, <variable>.CodecInfo.Imgbuf_allocated
	bl	MP2_ArrangeVHBMem	@
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	str	r0, [r4, r6]	@, <variable>.CodecInfo.Imgbuf_allocated
	mov	r0, #1	@,
	ldr	r3, [r5, #60]	@, <variable>.mb_height
	ldr	r2, [r5, #56]	@, <variable>.mb_width
	bl	dprint_vfmw	@
	ldr	r8, [r4, r6]	@ prephitmp.2305, <variable>.CodecInfo.Imgbuf_allocated
.L617:
	movw	r3, #:lower16:76104	@ tmp297,
	movt	r3, #:upper16:76104	@ tmp297,
	str	r8, [r4, r3]	@ prephitmp.2305, <variable>.CodecInfo.NewSeqInited
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L625:
	movw	ip, #:lower16:76108	@ tmp159,
	movt	ip, #:upper16:76108	@ tmp159,
	ldr	r8, [r4, ip]	@ tmp161,
	and	r0, r8, #1769472	@ tmp160, tmp161,
	cmp	r0, #589824	@ tmp160,
	bne	.L607	@,
	b	.L609	@
.L604:
	movw	r1, #:lower16:76108	@ tmp153,
	movt	r1, #:upper16:76108	@ tmp153,
	movw	ip, #:lower16:1179666	@ tmp154,
	movt	ip, #:upper16:1179666	@ tmp154,
	ldr	lr, [r4, r1]	@ tmp156,
	and	r8, lr, ip	@ tmp154, tmp156, tmp154
	cmp	r8, #1179648	@ tmp154,
	moveq	r2, #2	@ tmp158,
	streq	r2, [r4, r3]	@ tmp158, <variable>.CodecInfo.MpegFlag
	b	.L607	@
.L629:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, r1	@ <variable>.progressive_sequence,
	bne	.L615	@,
	add	lr, r2, #31	@ tmp218, temp.2301,
	add	ip, r2, #15	@ tmp221, temp.2301,
	mov	r8, lr, lsr #5	@ tmp219, tmp218,
	mov	r1, ip, lsr #4	@ tmp222, tmp221,
	rsb	r2, r1, r8, asl #1	@, tmp223, tmp222, tmp219,
	str	r2, [r5, #64]	@ tmp223, <variable>.mb_height_progressive_subtract1mb
	b	.L615	@
.L628:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r1, #0	@ <variable>.progressive_sequence,
	bne	.L613	@,
	ldr	r2, [r5, #52]	@ temp.2301, <variable>.vertical_size
	add	r8, r2, #31	@ tmp209, temp.2301,
	mov	r0, r8, lsr #5	@ tmp211, tmp209,
	mov	r1, r0, asl #1	@ iftmp.442, tmp211,
	b	.L614	@
.L627:
	mov	r2, #0	@ tmp193,
	mov	r0, #3	@ tmp186,
	mov	r1, #5	@ tmp192,
	strb	r3, [r5, #28]	@ <variable>.CodecInfo.MpegFlag, <variable>.chroma_format
	strb	r2, [r5, #8]	@ tmp193, <variable>.intra_dc_precision
	strb	r0, [r5, #9]	@ tmp186, <variable>.picture_structure
	str	r1, [r5, #144]	@ tmp192, <variable>.matrix_coefficients
	strb	r3, [r5, #27]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_sequence
	strb	r3, [r5, #18]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_frame
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.MpegFlag, <variable>.frame_pred_frame_dct
	strb	r2, [r5, #12]	@ tmp193, <variable>.concealment_motion_vectors
	strb	r2, [r5, #13]	@ tmp193, <variable>.q_scale_type
	strb	r2, [r5, #14]	@ tmp193, <variable>.intra_vlc_format
	strb	r2, [r5, #15]	@ tmp193, <variable>.alternate_scan
	b	.L612	@
.L633:
	mov	r0, r6	@, D.36196
	bl	ResetVoQueue	@
	b	.L621	@
.L626:
	tst	r1, #131072	@ prephitmp.2279,
	mov	lr, #2	@ tmp168,
	orreq	r1, r1, lr	@ prephitmp.2279, prephitmp.2279,
	streq	r1, [r4, r2]	@ prephitmp.2279, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #1048576	@ prephitmp.2279,
	str	lr, [r4, r3]	@ tmp168, <variable>.CodecInfo.MpegFlag
	orreq	r1, r1, #16	@ tmp175, prephitmp.2279,
	movweq	r2, #:lower16:76108	@ tmp174,
	movwne	r3, #:lower16:76132	@ tmp173,
	movteq	r2, #:upper16:76108	@ tmp174,
	movweq	r3, #:lower16:76132	@ tmp176,
	movtne	r3, #:upper16:76132	@ tmp173,
	movteq	r3, #:upper16:76132	@ tmp176,
	streq	r1, [r4, r2]	@ tmp175, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, r3]	@ prephitmp.2295, <variable>.CodecInfo.MpegFlag
	b	.L607	@
.L631:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r8]	@ D.36195, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.36195, <variable>.CodecInfo.FwdFsID
	b	.L619	@
.L632:
	movw	r5, #:lower16:76144	@ tmp282,
	movt	r5, #:upper16:76144	@ tmp282,
	ldr	r8, [r4, r5]	@ prephitmp.2305, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2305,
	bne	.L617	@,
	mov	r0, r6	@, D.36196
	bl	ResetVoQueue	@
	mov	r1, r8	@, prephitmp.2305
	mov	r0, r4	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	mov	r8, r0	@ prephitmp.2305,
	movw	r0, #:lower16:76160	@ tmp284,
	movt	r0, #:upper16:76160	@ tmp284,
	str	r8, [r4, r5]	@ prephitmp.2305, <variable>.CodecInfo.Imgbuf_allocated
	str	r7, [r4, r0]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.CodecInfo.QueueImageNum
	b	.L617	@
.L630:
	ldr	r1, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	ip, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r1, ip	@ <variable>.mb_height, <variable>.mb_height
	bne	.L616	@,
	b	.L617	@
	.fnend
	.size	MP2_GetSequenceInfo, .-MP2_GetSequenceInfo
	.align	2
	.global	GetSliceHdr
	.type	GetSliceHdr, %function
GetSliceHdr:
	.fnstart
.LFB1362:
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
	add	r6, r0, #75776	@ pBs, pCtx,
	movw	r7, #:lower16:76156	@ tmp157,
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #560	@ pBs, pBs,
	movt	r7, #:upper16:76156	@ tmp157,
	b	.L635	@
.L640:
	bl	BsShow	@
	mov	r5, r0	@ D.35683,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	sub	r5, r5, #256	@ tmp146, D.35683,
	sub	r5, r5, #1	@ tmp146, tmp146,
	mov	r1, #32	@,
	cmp	r5, #174	@ tmp146,
	str	r0, [r4, r7]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r6	@, pBs
	bls	.L645	@,
	bl	BsSkip	@
.L635:
	mov	r0, r4	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r5, r0	@ ret.2349,
	cmp	r5, #1	@ ret.2349,
	mov	r0, r6	@, pBs
	beq	.L640	@,
	cmn	r5, #1	@ ret.2349,
	beq	.L641	@,
.L644:
	mov	r0, r5	@ prephitmp.2338, ret.2349
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L641:
	movw	ip, #:lower16:g_event_report	@ tmp152,
	movt	ip, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [ip, #0]	@ g_event_report.423, g_event_report
	cmp	r3, #0	@ g_event_report.423,
	beq	.L644	@,
	movw	lr, #:lower16:108512	@ tmp153,
	movt	lr, #:upper16:108512	@ tmp153,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.423
	mov	r0, r5	@ prephitmp.2338, ret.2349
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L645:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mvnle	r5, #0	@ ret.2349,
	ble	.L641	@,
	movw	r0, #:lower16:76104	@ tmp150,
	movt	r0, #:upper16:76104	@ tmp150,
	mov	r1, #0	@ tmp149,
	movw	r3, #:lower16:76152	@ tmp148,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	movt	r3, #:upper16:76152	@ tmp148,
	cmp	r2, r1	@ <variable>.CodecInfo.NewSeqInited,
	str	r1, [r4, r3]	@ tmp149, <variable>.CodecInfo.HDRState
	beq	.L646	@,
.L638:
	mov	r0, r4	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ prephitmp.2338,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L646:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	b	.L638	@
	.fnend
	.size	GetSliceHdr, .-GetSliceHdr
	.align	2
	.global	MP2_GetHDR
	.type	MP2_GetHDR, %function
MP2_GetHDR:
	.fnstart
.LFB1361:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #84
	sub	sp, sp, #84	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:77420	@ tmp172,
	movt	ip, #:upper16:77420	@ tmp172,
	mov	r4, r0	@ pCtx, pCtx
	add	r5, r0, #75776	@ pBs, pCtx,
	movw	r8, #:lower16:108528	@ tmp173,
	ldr	r6, [r4, ip]	@, <variable>.pSyntaxInfOld
	add	r5, r5, #560	@ pBs, pBs,
	movt	r8, #:upper16:108528	@ tmp173,
	movw	lr, #:lower16:77416	@ tmp171,
	movt	lr, #:upper16:77416	@ tmp171,
	mov	r1, #32	@,
	mov	sl, #0	@ tmp174,
	strb	sl, [r0, r8]	@ tmp174, <variable>.IsWaitToDecFlag
	mov	r0, r5	@, pBs
	ldr	r9, [r4, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	str	r6, [fp, #-104]	@, %sfp
	bl	BsShow	@
	movw	r7, #:lower16:76108	@ tmp176,
	movt	r7, #:upper16:76108	@ tmp176,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.StreamIntegrality
	str	r1, [fp, #-108]	@, %sfp
	mov	r6, r0	@ code,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r2, #:lower16:76156	@ tmp177,
	movt	r2, #:upper16:76156	@ tmp177,
	mov	r1, #32	@,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #439	@ tmp178,
	cmp	r6, r3	@ code, tmp178
	beq	.L685	@,
	movw	lr, #435	@ tmp218,
	cmp	r6, lr	@ code, tmp218
	cmpne	r6, #440	@, code,
	bne	.L686	@,
.L649:
	movw	r3, #:lower16:76152	@ tmp231,
	movt	r3, #:upper16:76152	@ tmp231,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r7, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L687	@,
.L652:
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	beq	.L656	@,
.L690:
	bls	.L688	@,
	movw	r3, #437	@ tmp248,
	cmp	r6, r3	@ code, tmp248
	beq	.L658	@,
	bcs	.L689	@,
.L657:
	mov	r0, #0	@ prephitmp.2368,
.L651:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L686:
	cmp	r6, #256	@ code,
	beq	.L649	@,
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	bne	.L690	@,
.L656:
	movw	r0, #:lower16:76056	@ tmp251,
	movw	r1, #:lower16:76148	@ tmp252,
	movt	r0, #:upper16:76056	@ tmp251,
	movt	r1, #:upper16:76148	@ tmp252,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, lr	@ D.35573, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	add	r2, r6, r0, lsr #3	@, tmp257, D.35573,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	sequence_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L691	@,
	movw	r5, #:lower16:76108	@ tmp267,
	movt	r5, #:upper16:76108	@ tmp267,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ands	r6, r6, #7	@ tmp268, <variable>.CodecInfo.StreamIntegrality,
	bne	.L663	@,
	ldr	r0, [fp, #-104]	@, %sfp
	mov	r1, r9	@, pSyntaxInfNew
	mov	lr, #1	@ tmp270,
	mov	r2, #188	@,
	strb	lr, [r9, #0]	@ tmp270, <variable>.valid_flag
	bl	memcpy	@
	movw	ip, #:lower16:76112	@ tmp276,
	movt	ip, #:upper16:76112	@ tmp276,
	mov	r0, r6	@ prephitmp.2368, tmp268
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	add	r2, r1, #1	@ tmp279, <variable>.CodecInfo.SeqCnt,
	str	r2, [r4, ip]	@ tmp279, <variable>.CodecInfo.SeqCnt
	b	.L651	@
.L688:
	cmp	r6, #256	@ code,
	beq	.L654	@,
	bcc	.L653	@,
	cmp	r6, #432	@ code,
	bls	.L653	@,
	movw	r0, #:lower16:76056	@ tmp327,
	movw	lr, #:lower16:76148	@ tmp328,
	movt	r0, #:upper16:76056	@ tmp327,
	movt	lr, #:upper16:76148	@ tmp328,
	add	r7, r4, #75776	@, pCtx,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	movw	r5, #:lower16:76124	@ tmp335,
	movt	r5, #:upper16:76124	@ tmp335,
	add	r6, r6, r3	@ temp.2413, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	add	r2, r6, r0, lsr #3	@, tmp333, temp.2413,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	r1, r7, #348	@,,
	mov	r0, r4	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r7, r0, #0	@ D.35630,
	beq	.L692	@,
	cmp	r7, #1	@ D.35630,
	bne	.L669	@,
	movw	lr, #:lower16:76108	@ tmp343,
	movt	lr, #:upper16:76108	@ tmp343,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.p_SeqUD, <variable>.CodecInfo.p_SeqUD
	mov	r0, r7	@ prephitmp.2368, D.35630
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r3, #524288	@ <variable>.CodecInfo.StreamIntegrality,
	streq	r7, [r1, #1036]	@ D.35630, <variable>.from
	movne	r2, #3	@ tmp348,
	strne	r2, [r1, #1036]	@ tmp348, <variable>.from
	b	.L651	@
.L689:
	movw	ip, #439	@ tmp250,
	cmp	r6, ip	@ code, tmp250
	beq	.L657	@,
	cmp	r6, #440	@ code,
	beq	.L693	@,
.L653:
	sub	r2, r6, #256	@ tmp368, code,
	sub	r0, r2, #1	@ tmp368, tmp368,
	cmp	r0, #174	@ tmp368,
	bhi	.L672	@,
	movw	r1, #:lower16:76104	@ tmp370,
	movt	r1, #:upper16:76104	@ tmp370,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	cmp	ip, #0	@ <variable>.CodecInfo.NewSeqInited,
	beq	.L694	@,
.L673:
	movw	r3, #:lower16:76108	@ tmp372,
	movt	r3, #:upper16:76108	@ tmp372,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #589824	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L657	@,
	movw	lr, #:lower16:76152	@ tmp375,
	movt	lr, #:upper16:76152	@ tmp375,
	orr	r5, r2, #4194304	@ tmp380, <variable>.CodecInfo.StreamIntegrality,
	mov	r0, r4	@, pCtx
	str	r5, [r4, r3]	@ tmp380, <variable>.CodecInfo.StreamIntegrality
	mov	r1, r6	@, code
	mov	r5, #1	@ tmp376,
	str	r5, [r4, lr]	@ tmp376, <variable>.CodecInfo.HDRState
	bl	MP2_DecSlice	@
	cmp	r0, r5	@ D.35665,
	beq	.L651	@,
	mov	r0, r5	@, tmp376
	mov	r2, r6	@, code
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L693:
	movw	r0, #:lower16:76056	@ tmp295,
	movw	lr, #:lower16:76148	@ tmp296,
	movt	r0, #:upper16:76056	@ tmp295,
	movt	lr, #:upper16:76148	@ tmp296,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, r1	@ temp.2397, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	add	r2, r6, r0, lsr #3	@, tmp301, temp.2397,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L657	@,
	ldr	ip, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:76108	@ tmp302,
	movw	r3, #:lower16:g_event_report	@ tmp303,
	movt	r2, #:upper16:76108	@ tmp302,
	movt	r3, #:upper16:g_event_report	@ tmp303,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2398, g_event_report
	cmp	r3, #0	@ g_event_report.2398,
	beq	.L665	@,
	movw	lr, #:lower16:108512	@ tmp304,
	movt	lr, #:upper16:108512	@ tmp304,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2398
.L665:
	movw	r3, #:lower16:108512	@ tmp306,
	movt	r3, #:upper16:108512	@ tmp306,
	add	r1, r4, #75776	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC64	@,
	mov	r2, #440	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L687:
	movw	r2, #:lower16:76108	@ tmp233,
	movt	r2, #:upper16:76108	@ tmp233,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L652	@,
	movw	r0, #:lower16:108528	@ tmp236,
	movt	r0, #:upper16:108528	@ tmp236,
	orr	r1, r1, #8388608	@ tmp242, <variable>.CodecInfo.StreamIntegrality,
	mov	ip, #0	@ tmp244,
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp242, <variable>.CodecInfo.StreamIntegrality
	str	ip, [r4, r3]	@ tmp244, <variable>.CodecInfo.HDRState
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r7	@ prephitmp.2368, <variable>.CodecInfo.HDRState
	b	.L651	@
.L685:
	mov	ip, r5	@, pBs
	sub	lr, fp, #72	@,,
	ldmia	ip!, {r0, r1, r2, r3}	@,,,,
	str	lr, [fp, #-120]	@, %sfp
	str	ip, [fp, #-112]	@, %sfp
	sub	ip, fp, #100	@ tmp180,,
	mov	lr, ip	@ tmp389, tmp180
	stmia	lr!, {r0, r1, r2, r3}	@ tmp389,,,,
	ldr	r3, [fp, #-112]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	lr, {r0, r1, r2}	@ tmp389,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp390,,,,
	ldr	ip, [fp, #-120]	@, %sfp
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp389,,,
	stmia	ip, {r0, r1, r2}	@ tmp391,,,
	mov	r1, #32	@,
	sub	r0, fp, #72	@,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	ip, r0	@ D.35543,
	sub	r0, fp, #72	@,,
	str	ip, [fp, #-116]	@,
	bl	BsGet	@
	ldr	r1, [fp, #-116]	@,
	movw	r2, #:lower16:1128615492	@ tmp187,
	movw	r3, #:lower16:1213419593	@ tmp190,
	movt	r2, #:upper16:1128615492	@ tmp187,
	movt	r3, #:upper16:1213419593	@ tmp190,
	cmp	r0, r2	@, tmp187
	cmpeq	r1, r3	@, D.35543, tmp190
	bne	.L649	@,
	movw	r3, #:lower16:76152	@ tmp195,
	movt	r3, #:upper16:76152	@ tmp195,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r6, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L695	@,
.L650:
	movw	r3, #:lower16:108529	@ tmp212,
	movt	r3, #:upper16:108529	@ tmp212,
	mov	r2, #1	@ tmp213,
	mov	r0, #0	@ prephitmp.2368,
	strb	r2, [r4, r3]	@ tmp213, <variable>.IsStreamEndFlag
	b	.L651	@
.L658:
	movw	r0, #:lower16:76056	@ tmp353,
	movw	r1, #:lower16:76148	@ tmp354,
	movt	r0, #:upper16:76056	@ tmp353,
	movt	r1, #:upper16:76148	@ tmp354,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, ip	@ temp.2423, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	add	r2, r6, r0, lsr #3	@, tmp359, temp.2423,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	extension	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L657	@,
	ldr	lr, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:76108	@ tmp360,
	movw	r3, #:lower16:g_event_report	@ tmp361,
	movt	r2, #:upper16:76108	@ tmp360,
	movt	r3, #:upper16:g_event_report	@ tmp361,
	str	lr, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2424, g_event_report
	cmp	r3, #0	@ g_event_report.2424,
	beq	.L671	@,
	movw	ip, #:lower16:108512	@ tmp362,
	movt	ip, #:upper16:108512	@ tmp362,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2424
.L671:
	movw	r3, #:lower16:108512	@ tmp364,
	movt	r3, #:upper16:108512	@ tmp364,
	add	r1, r4, #75776	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
.L682:
	mvn	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L654:
	movw	r0, #:lower16:76056	@ tmp311,
	movw	ip, #:lower16:76148	@ tmp312,
	movt	r0, #:upper16:76056	@ tmp311,
	movt	ip, #:upper16:76148	@ tmp312,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, r2	@ temp.2405, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	add	r2, r6, r0, lsr #3	@, tmp317, temp.2405,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	picture_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L657	@,
	ldr	lr, [fp, #-108]	@, %sfp
	movw	r3, #:lower16:76108	@ tmp318,
	movw	r1, #:lower16:g_event_report	@ tmp319,
	movt	r3, #:upper16:76108	@ tmp318,
	movt	r1, #:upper16:g_event_report	@ tmp319,
	str	lr, [r4, r3]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2406, g_event_report
	cmp	r3, #0	@ g_event_report.2406,
	beq	.L666	@,
	movw	ip, #:lower16:108512	@ tmp320,
	movt	ip, #:upper16:108512	@ tmp320,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2406
.L666:
	movw	r1, #:lower16:108512	@ tmp322,
	movt	r1, #:upper16:108512	@ tmp322,
	add	r2, r4, #75776	@, pCtx,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC66	@,
	mov	r2, #256	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L663:
	ldr	r1, [fp, #-104]	@, %sfp
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.valid_flag, <variable>.valid_flag
	cmp	r0, #1	@ <variable>.valid_flag,
	beq	.L696	@,
.L672:
	movw	r3, #:lower16:g_event_report	@ tmp382,
	movt	r3, #:upper16:g_event_report	@ tmp382,
	ldr	r3, [r3, #0]	@ g_event_report.2430, g_event_report
	cmp	r3, #0	@ g_event_report.2430,
	beq	.L657	@,
.L681:
	movw	r0, #:lower16:108512	@ tmp383,
	movt	r0, #:upper16:108512	@ tmp383,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2430
	mov	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L669:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ prephitmp.2368, D.35630
	b	.L651	@
.L695:
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L650	@,
	movw	r1, #:lower16:108529	@ tmp200,
	movt	r1, #:upper16:108529	@ tmp200,
	orr	r0, r2, #8388608	@ tmp209, <variable>.CodecInfo.StreamIntegrality,
	str	sl, [r4, r3]	@ tmp174, <variable>.CodecInfo.HDRState
	str	r0, [r4, r7]	@ tmp209, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsStreamEndFlag
	strb	r6, [r4, r8]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r6	@ prephitmp.2368, <variable>.CodecInfo.HDRState
	b	.L651	@
.L694:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	b	.L673	@
.L696:
	mov	r2, #188	@,
	mov	r0, r9	@, pSyntaxInfNew
	bl	memcpy	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r3, #:lower16:g_event_report	@ tmp289,
	movt	r3, #:upper16:g_event_report	@ tmp289,
	bic	r2, ip, #7	@ tmp288, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r4, r5]	@ tmp288, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2390, g_event_report
	cmp	r3, #0	@ g_event_report.2390,
	bne	.L681	@,
	b	.L657	@
.L692:
	movw	r5, #:lower16:108512	@ tmp336,
	movt	r5, #:upper16:108512	@ tmp336,
	add	r2, r4, #75776	@, pCtx,
	add	r1, r2, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp341,
	movt	ip, #:upper16:g_event_report	@ tmp341,
	ldr	r3, [ip, #0]	@ g_event_report.2416, g_event_report
	cmp	r3, #0	@ g_event_report.2416,
	beq	.L682	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r7	@, D.35630
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2416
	mvn	r0, #0	@ prephitmp.2368,
	b	.L651	@
.L691:
	ldr	ip, [fp, #-108]	@, %sfp
	movw	r2, #:lower16:76108	@ tmp258,
	movw	r3, #:lower16:g_event_report	@ tmp259,
	movt	r2, #:upper16:76108	@ tmp258,
	movt	r3, #:upper16:g_event_report	@ tmp259,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.421, g_event_report
	cmp	r3, #0	@ g_event_report.421,
	beq	.L662	@,
	movw	lr, #:lower16:108512	@ tmp260,
	movt	lr, #:upper16:108512	@ tmp260,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.421
.L662:
	movw	r3, #:lower16:108512	@ tmp262,
	movt	r3, #:upper16:108512	@ tmp262,
	add	r1, r4, #75776	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC62	@,
	movw	r2, #435	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2368,
	b	.L651	@
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
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
	add	r2, r0, #76800	@ D.37260, pCtx,
	add	r5, r2, #80	@ D.37260, D.37260,
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, #160	@,
	movw	r6, #:lower16:108512	@ tmp153,
	mov	r0, r5	@, D.37260
	movt	r6, #:upper16:108512	@ tmp153,
	bl	memcpy	@
	add	r0, r4, #45312	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r1, r5	@, D.37260
	ldr	r2, [r4, r6]	@, <variable>.ChanID
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@ D.37262,
	mov	r7, r0	@ D.37262,
	beq	.L698	@,
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC72	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
.L699:
	mov	r0, r5	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L698:
	movw	r3, #:lower16:76064	@ tmp158,
	movw	r8, #:lower16:76080	@ tmp160,
	movt	r3, #:upper16:76064	@ tmp158,
	movt	r8, #:upper16:76080	@ tmp160,
	add	ip, r4, #75776	@, pCtx,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r0, ip, #560	@,,
	ldr	r2, [r4, r8]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	bl	BsInit	@
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r1, r0, #1	@ tmp162,,
	cmp	r1, #1	@ tmp162,
	bls	.L709	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r5, r0, #0	@ ret,
	beq	.L710	@,
	cmn	r5, #1	@ ret,
	moveq	r5, #0	@ ret,
	beq	.L699	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r5, r0, #0	@ D.37285,
	bne	.L704	@,
	add	ip, r4, #75776	@, pCtx,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r1, ip, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r1, #:lower16:g_event_report	@ tmp179,
	movt	r1, #:upper16:g_event_report	@ tmp179,
	ldr	r3, [r1, #0]	@ g_event_report.2462, g_event_report
	cmp	r3, #0	@ g_event_report.2462,
	beq	.L705	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, r5	@, D.37285
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2462
.L705:
	movw	r1, #:lower16:.LC74	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC74	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L699	@
.L710:
	add	r2, r4, #75776	@, pCtx,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r0, #:lower16:g_event_report	@ tmp171,
	movt	r0, #:upper16:g_event_report	@ tmp171,
	ldr	r3, [r0, #0]	@ g_event_report.476, g_event_report
	cmp	r3, #0	@ g_event_report.476,
	beq	.L702	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r5	@, ret
	blx	r3	@ g_event_report.476
.L702:
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L699	@
.L709:
	add	lr, r4, #75776	@, pCtx,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	mov	r5, #0	@ ret,
	bl	MP2_ClearCurPacket	@
	b	.L699	@
.L704:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r5, r0, #0	@ D.37291,
	beq	.L711	@,
	movw	r0, #:lower16:76056	@ tmp201,
	movt	r0, #:upper16:76056	@ tmp201,
	movw	ip, #:lower16:76148	@ tmp195,
	movt	ip, #:upper16:76148	@ tmp195,
	ldr	r5, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r1, [r4, r8]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r5, r5, asl #3	@ ret, <variable>.CodecInfo.BsOffset,
	add	r2, r1, r3	@ tmp200, <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.Used_byte
	str	r2, [r4, ip]	@ tmp200, <variable>.CodecInfo.Used_byte
	b	.L699	@
.L711:
	movw	lr, #:lower16:76180	@ tmp185,
	movt	lr, #:upper16:76180	@ tmp185,
	mov	r2, r7	@, D.37262
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	add	r0, r4, #75776	@, pCtx,
	add	r1, r0, #284	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:g_event_report	@ tmp191,
	movt	r3, #:upper16:g_event_report	@ tmp191,
	ldr	r3, [r3, #0]	@ g_event_report.2467, g_event_report
	cmp	r3, #0	@ g_event_report.2467,
	beq	.L707	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, r5	@, D.37291
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2467
.L707:
	movw	r1, #:lower16:.LC75	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC75	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L699	@
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.global	default_intra_quantizer_matrix
	.global	zigzag
	.global	g_tmpusd
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.428.35907, %object
	.size	C.428.35907, 128
C.428.35907:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	32
	.word	36
	.word	40
	.word	44
	.word	48
	.word	52
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.word	112
	.type	CSWTCH.499, %object
	.size	CSWTCH.499, 12
CSWTCH.499:
	.word	5
	.word	1
	.word	2
	.type	tab_for_first_4bit, %object
	.size	tab_for_first_4bit, 128
tab_for_first_4bit:
	.word	8
	.word	4
	.word	9
	.word	5
	.word	5
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	3
	.word	2
	.word	3
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.type	tab_for_last_7bit, %object
	.size	tab_for_last_7bit, 832
tab_for_last_7bit:
	.word	33
	.word	11
	.word	32
	.word	11
	.word	31
	.word	11
	.word	30
	.word	11
	.word	29
	.word	11
	.word	28
	.word	11
	.word	27
	.word	11
	.word	26
	.word	11
	.word	25
	.word	11
	.word	24
	.word	11
	.word	23
	.word	11
	.word	22
	.word	11
	.word	21
	.word	10
	.word	21
	.word	10
	.word	20
	.word	10
	.word	20
	.word	10
	.word	19
	.word	10
	.word	19
	.word	10
	.word	18
	.word	10
	.word	18
	.word	10
	.word	17
	.word	10
	.word	17
	.word	10
	.word	16
	.word	10
	.word	16
	.word	10
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.type	frame_rate_Table, %object
	.size	frame_rate_Table, 64
frame_rate_Table:
	.word	0
	.word	24551
	.word	24576
	.word	25600
	.word	30689
	.word	30720
	.word	51200
	.word	61378
	.word	61440
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.type	__func__.35718, %object
	.size	__func__.35718, 19
__func__.35718:
	.ascii	"MP2_DecodingDecide\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	zigzag, %object
	.size	zigzag, 64
zigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.type	default_intra_quantizer_matrix, %object
	.size	default_intra_quantizer_matrix, 64
default_intra_quantizer_matrix:
	.byte	8
	.byte	16
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	16
	.byte	16
	.byte	22
	.byte	24
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	34
	.byte	38
	.byte	22
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	40
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	58
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	27
	.byte	29
	.byte	35
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	83
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Decoding quits at frm %d\012\000"
	.space	2
.LC1:
	.ascii	"%-40s%20d\012\000"
	.space	1
.LC2:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC3:
	.ascii	"macroblock_escape\000"
	.space	2
.LC4:
	.ascii	"macroblock_escape ERROR\012\000"
	.space	3
.LC5:
	.ascii	"macroblock_stuffing ERROR\012\000"
	.space	1
.LC6:
	.ascii	"SlcStartMbNum = %d > PicEndMum = %d\012\000"
	.space	3
.LC7:
	.ascii	"FirstMbInSliceFlag = %d\012\000"
	.space	3
.LC8:
	.ascii	"slice_vertical_position\000"
.LC9:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC10:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC11:
	.ascii	"intra_slice\000"
.LC12:
	.ascii	"reserved_bits\000"
	.space	2
.LC13:
	.ascii	"extra_bit_slice\000"
.LC14:
	.ascii	"extra_infrmation_slice\000"
	.space	1
.LC15:
	.ascii	"Slice num = %d >= %d\012\000"
	.space	2
.LC16:
	.ascii	"seg info is wrong! IsLastSeg[0] = %d, IsLastSeg[1] "
	.ascii	"= %d\012\000"
	.space	3
.LC17:
	.ascii	"MP2_GetFirstMbInSlice Failed!\012\000"
	.space	1
.LC18:
	.ascii	"MP2_WriteSliceInfo Failed!\012\000"
.LC19:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC20:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC21:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC22:
	.ascii	"ERROR: unsupported profile %d\012\000"
	.space	1
.LC23:
	.ascii	"ERROR: unsupported level %d\012\000"
	.space	3
.LC24:
	.ascii	"\012mpeg2 copy last 3 bytes of the first packet!\012"
	.ascii	"\012\000"
.LC25:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC26:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC27:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC28:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC29:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC30:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC31:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC32:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC33:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC34:
	.ascii	"ERROR: frm %d, lost one field\012\000"
	.space	1
.LC35:
	.ascii	"ERROR: frm %d, lost one field flg = %d, last_struct"
	.ascii	" = %d\012\000"
	.space	2
.LC36:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC37:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC38:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC39:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC40:
	.ascii	"line: %d(pCur, pFwd, pBwd)(%p, %p, %p)\012\000"
.LC41:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC42:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,pmv = %p,%p,%p,%p,%p\012"
	.ascii	"\000"
	.space	2
.LC43:
	.ascii	"ERROR: frm %d, integrality: %#x\012\000"
	.space	3
.LC44:
	.ascii	"ERROR: frm %d, No Img buffer is allocated\012\000"
	.space	1
.LC45:
	.ascii	"----------------- mp2 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC46:
	.ascii	"frm %d pic type %d struct is %d total pos %#x\012\000"
	.space	1
.LC47:
	.ascii	"NOTE: Drop non-I, cur is B\012\000"
.LC48:
	.ascii	"NOTE: Drop non-I, cur is P\012\000"
.LC49:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC50:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC51:
	.ascii	"%s %d pFwdImg = NULL,  pBwdImg = NULL!!\012\000"
	.space	3
.LC52:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC53:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC54:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC55:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC56:
	.ascii	"mp2 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC57:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC58:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC59:
	.ascii	"Protocol %d\012\000"
	.space	3
.LC60:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC61:
	.ascii	"found sh %#x\012\000"
	.space	2
.LC62:
	.ascii	"SEQUENCE_HEADER_CODE Bitstream is not enough!\012\000"
	.space	1
.LC63:
	.ascii	"found gh %#x\012\000"
	.space	2
.LC64:
	.ascii	"GROUP_START_CODE Bitstream is not enough!\012\000"
	.space	1
.LC65:
	.ascii	"found ph %#x\012\000"
	.space	2
.LC66:
	.ascii	"PICTURE_START_CODE Bitstream is not enough!\012\000"
	.space	3
.LC67:
	.ascii	"found ud %#x\012\000"
	.space	2
.LC68:
	.ascii	"get usd err\012\000"
	.space	3
.LC69:
	.ascii	"cann't get ud pointer\012\000"
	.space	1
.LC70:
	.ascii	"found ext %#x\012\000"
	.space	1
.LC71:
	.ascii	"MP2_DecSlice is wrong!\012\000"
.LC72:
	.ascii	"line %d, MP2_ReceivePacket receive packet failed!\012"
	.ascii	"\000"
	.space	1
.LC73:
	.ascii	"MP2 Decode Decide is wrong!\012\000"
	.space	3
.LC74:
	.ascii	"MP2 get picture info is wrong!\012\000"
.LC75:
	.ascii	"MP2 dec new pic failed!\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
