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
	.file	"vdm_hal_vp6.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp6.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	VP6HAL_V200R004_InitHal
	.type	VP6HAL_V200R004_InitHal, %function
VP6HAL_V200R004_InitHal:
	.fnstart
.LFB1356:
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
	.size	VP6HAL_V200R004_InitHal, .-VP6HAL_V200R004_InitHal
	.align	2
	.global	VP6HAL_V200R004_CfgDnMsg
	.type	VP6HAL_V200R004_CfgDnMsg, %function
VP6HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1359:
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
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ D.31213,
	beq	.L12	@,
	ldr	r0, [r4, #60]	@ <variable>.FrameType, <variable>.FrameType
	mov	r6, #0	@ tmp238,
	mov	r8, r9	@ p32, D.31213
	mov	sl, r6	@ tmp241, tmp238
	bfi	sl, r0, #0, #1	@ tmp241, <variable>.FrameType,,
	str	sl, [fp, #-48]	@ tmp241,
	str	sl, [r8], #4	@ tmp241,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	add	sl, r8, r0	@ p32.513, p32,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	ip, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	r5, r1, #1	@ tmp247, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC3	@,
	sub	r2, ip, #1	@ tmp251, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r5, asl #23	@ tmp252, tmp247,
	add	ip, sl, r0	@ p32.517, p32.513,
	add	r5, r9, #36	@ p32.529, D.31213,
	mov	r3, r3, lsr #23	@ tmp252, tmp252,
	bfi	r3, r2, #16, #9	@ tmp252, tmp251,,
	bic	r3, r3, #-33554432	@ tmp254, tmp252,
	bfi	r3, r6, #9, #7	@ tmp254, tmp238,,
	str	r3, [fp, #-48]	@ tmp254,
	str	r3, [r9, #4]	@ tmp254,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-56]	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #100]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	mov	r0, #4	@,
	ldr	r9, [r4, #104]	@ <variable>.VpProfile, <variable>.VpProfile
	ldr	r2, [r4, #68]	@ <variable>.MultiStream, <variable>.MultiStream
	and	ip, r1, #31	@ tmp261, <variable>.Vp3VersionNo,
	ldr	lr, [r4, #108]	@ <variable>.UseLoopFilter, <variable>.UseLoopFilter
	bfi	ip, r9, #5, #2	@ tmp261, <variable>.VpProfile,,
	ldr	r9, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	bfi	ip, r2, #7, #1	@ tmp263, <variable>.MultiStream,,
	ubfx	r2, lr, #1, #1	@ tmp269, <variable>.UseLoopFilter,,
	movw	r1, #:lower16:.LC4	@,
	bfi	ip, r9, #8, #1	@ tmp265, <variable>.UseHuffman,,
	movt	r1, #:upper16:.LC4	@,
	bfi	ip, r2, #9, #1	@ tmp274, tmp269,,
	bfi	ip, r6, #10, #22	@ tmp275, tmp238,,
	str	ip, [fp, #-48]	@ tmp275,
	str	ip, [r8, #4]	@ tmp275,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #96]	@ <variable>.PredictionFilterAlpha, <variable>.PredictionFilterAlpha
	ldr	r1, [r4, #92]	@ <variable>.PredictionFilterMvSizeThresh, <variable>.PredictionFilterMvSizeThresh
	mov	r0, #4	@,
	ldr	lr, [r4, #88]	@ <variable>.PredictionFilterVarThresh, <variable>.PredictionFilterVarThresh
	and	ip, r3, #31	@ tmp282, <variable>.PredictionFilterAlpha,
	ldr	r2, [r4, #84]	@ <variable>.PredictionFilterMode, <variable>.PredictionFilterMode
	bfi	ip, r1, #5, #3	@ tmp282, <variable>.PredictionFilterMvSizeThresh,,
	bfi	ip, lr, #8, #10	@ tmp284, <variable>.PredictionFilterVarThresh,,
	movw	r1, #:lower16:.LC5	@,
	bfi	ip, r2, #18, #2	@ tmp286, <variable>.PredictionFilterMode,,
	movt	r1, #:upper16:.LC5	@,
	bfi	ip, r6, #20, #12	@ tmp287, tmp238,,
	str	ip, [fp, #-48]	@ tmp287,
	str	ip, [sl, #4]	@ tmp287,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.FLimit, <variable>.FLimit
	ldr	r1, [r4, #76]	@ <variable>.DcQuant, <variable>.DcQuant
	mov	r0, #4	@,
	ldr	ip, [r4, #80]	@ <variable>.AcQuant, <variable>.AcQuant
	and	r3, r3, #15	@ tmp296, <variable>.FLimit,
	ldr	r2, [fp, #-56]	@,
	bfi	r3, r1, #4, #8	@ tmp296, <variable>.DcQuant,,
	bfi	r3, ip, #12, #9	@ tmp298, <variable>.AcQuant,,
	movw	r1, #:lower16:.LC6	@,
	bfi	r3, r6, #21, #11	@ tmp299, tmp238,,
	str	r3, [fp, #-48]	@ tmp299,
	str	r3, [r2, #4]	@ tmp299,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #160]	@ <variable>.value, <variable>.value
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r3, [fp, #-48]	@ <variable>.value, <variable>.value
	str	r3, [sl, #24]	@ <variable>.value,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #164]	@ <variable>.range, <variable>.range
	str	r6, [fp, #-48]	@ tmp238, D32
	mov	r0, #4	@,
	ldr	r2, [r4, #168]	@ <variable>.count, <variable>.count
	movw	r1, #:lower16:.LC8	@,
	strb	ip, [fp, #-48]	@ <variable>.range, <variable>.range
	movt	r1, #:upper16:.LC8	@,
	ldr	r3, [fp, #-48]	@ tmp311,
	bfi	r3, r2, #16, #4	@ tmp311, <variable>.count,,
	str	r3, [fp, #-48]	@ tmp311,
	strb	r6, [fp, #-47]	@ tmp238, <variable>.reserved0
	ldr	ip, [fp, #-48]	@ tmp314,
	bfi	ip, r6, #20, #12	@ tmp314, tmp238,,
	str	ip, [fp, #-48]	@ tmp314,
	str	ip, [sl, #28]	@ tmp314,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #168]	@ <variable>.count, <variable>.count
	ldr	ip, [r4, #116]	@ D.31286, <variable>.bit0_offset_0
	add	r6, r3, #8	@ Vp6_br_cnt, <variable>.count,
	ldr	r2, [r4, #112]	@ D.31285, <variable>.bit0_len_0
	cmp	r6, ip	@ Vp6_br_cnt, D.31286
	addhi	ip, ip, #128	@ tmp319, D.31286,
	add	r0, r6, r2	@ tmp321, Vp6_br_cnt, D.31285
	ldrhi	r8, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	rsbls	ip, r6, ip	@ D16_bit_offset_0, Vp6_br_cnt, D.31286
	rsbhi	ip, r6, ip	@ D16_bit_offset_0, Vp6_br_cnt, tmp319
	bic	r1, r0, #-33554432	@ tmp323, tmp321,
	ldrls	r8, [r4, #120]	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0
	bfi	r1, ip, #25, #7	@ tmp323, D16_bit_offset_0,,
	str	r1, [fp, #-48]	@ tmp323,
	subhi	r8, r8, #16	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0,
	str	r1, [r5, #28]	@ tmp323,
	mov	r6, #0	@ tmp320,
	ldr	r2, [fp, #-48]	@, D32
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@ tmp327, tmp320
	bfi	r2, r8, #0, #24	@ tmp327, D17_bit_byte_offset_0,,
	str	r2, [fp, #-48]	@ tmp327,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@ D32.540, D32
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r3, [r5, #32]	@ D32.540,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r0, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	add	r0, r0, ip	@, <variable>.bit0_stream_addr_0, <variable>.StreamBaseAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #124]	@ <variable>.bit0_len_1, <variable>.bit0_len_1
	ldr	r2, [r4, #128]	@ <variable>.bit0_offset_1, <variable>.bit0_offset_1
	mov	r0, #4	@,
	bic	r3, r1, #-33554432	@ tmp339, <variable>.bit0_len_1,
	movw	r1, #:lower16:.LC11	@,
	bfi	r3, r2, #25, #7	@ tmp339, <variable>.bit0_offset_1,,
	str	r3, [fp, #-48]	@ tmp339,
	str	r3, [r5, #36]	@ tmp339,
	movt	r1, #:upper16:.LC11	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #132]	@ <variable>.bit0_stream_addr_1, <variable>.bit0_stream_addr_1
	mov	r3, r6	@ tmp343, tmp320
	mov	r0, #4	@,
	bfi	r3, ip, #0, #24	@ tmp343, <variable>.bit0_stream_addr_1,,
	str	r3, [fp, #-48]	@ tmp343,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [fp, #-48]	@ D32.549, D32
	movt	r1, #:upper16:.LC12	@,
	str	r2, [r5, #40]	@ D32.549,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #136]	@ <variable>.bit1_len_0, <variable>.bit1_len_0
	ldr	ip, [r4, #140]	@ <variable>.bit1_offset_0, <variable>.bit1_offset_0
	mov	r0, #4	@,
	bic	r3, r1, #-33554432	@ tmp353, <variable>.bit1_len_0,
	movw	r1, #:lower16:.LC13	@,
	bfi	r3, ip, #25, #7	@ tmp353, <variable>.bit1_offset_0,,
	str	r3, [fp, #-48]	@ tmp353,
	str	r3, [r5, #44]	@ tmp353,
	movt	r1, #:upper16:.LC13	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #144]	@ <variable>.bit1_stream_addr_0, <variable>.bit1_stream_addr_0
	mov	r1, r6	@ tmp357, tmp320
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp357, <variable>.bit1_stream_addr_0,,
	str	r1, [fp, #-48]	@ tmp357,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC14	@,
	ldr	ip, [fp, #-48]	@ D32.557, D32
	movt	r1, #:upper16:.LC14	@,
	str	ip, [r5, #48]	@ D32.557,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #148]	@ <variable>.bit1_len_1, <variable>.bit1_len_1
	ldr	r2, [r4, #152]	@ <variable>.bit1_offset_1, <variable>.bit1_offset_1
	mov	r0, #4	@,
	bic	ip, r3, #-33554432	@ tmp367, <variable>.bit1_len_1,
	movw	r1, #:lower16:.LC15	@,
	bfi	ip, r2, #25, #7	@ tmp367, <variable>.bit1_offset_1,,
	str	ip, [fp, #-48]	@ tmp367,
	str	ip, [r5, #52]	@ tmp367,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #156]	@ <variable>.bit1_stream_addr_1, <variable>.bit1_stream_addr_1
	mov	r1, r6	@ tmp371, tmp320
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp371, <variable>.bit1_stream_addr_1,,
	str	r1, [fp, #-48]	@ tmp371,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC16	@,
	ldr	r3, [fp, #-48]	@ D32.565, D32
	movt	r1, #:upper16:.LC16	@,
	str	r3, [r5, #56]	@ D32.565,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	bic	r2, ip, #15	@ tmp380, <variable>.image_curr_recon_addr,
	str	r2, [fp, #-48]	@ tmp380, <variable>.curr_rcn_addr
	str	r2, [r5, #92]	@ tmp380,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #176]	@ <variable>.image_golden_ref_addr, <variable>.image_golden_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	ip, r3, #15	@ tmp386, <variable>.image_golden_ref_addr,
	str	ip, [fp, #-48]	@ tmp386, <variable>.golden_ref_addr
	str	ip, [r5, #100]	@ tmp386,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, r2, #15	@ tmp392, <variable>.image_last_ref_addr,
	str	r3, [fp, #-48]	@ tmp392, <variable>.last_ref_addr
	str	r3, [r5, #104]	@ tmp392,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	r2, ip, #15	@ tmp398, <variable>.SedTopAddr,
	str	r2, [fp, #-48]	@ tmp398, <variable>.sed_top_addr
	str	r2, [r5, #108]	@ tmp398,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	bic	ip, r3, #15	@ tmp404, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp404, <variable>.pmv_top_addr
	str	ip, [r5, #112]	@ tmp404,
	movt	r1, #:upper16:.LC21	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	bic	r3, r2, #15	@ tmp410, <variable>.RcnTopAddr,
	str	r3, [fp, #-48]	@ tmp410, <variable>.rcn_top_addr
	str	r3, [r5, #116]	@ tmp410,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1120]	@ <variable>.Vp6TabAddr, <variable>.Vp6TabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	bic	r2, ip, #15	@ tmp416, <variable>.Vp6TabAddr,
	str	r2, [fp, #-48]	@ tmp416, <variable>.tab_addr
	str	r2, [r5, #120]	@ tmp416,
	movt	r1, #:upper16:.LC23	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31371,
	ldr	r0, [r7, #1120]	@, <variable>.Vp6TabAddr
	bl	MEM_Phy2Vir	@
	mov	r0, r5	@, D.31371
	mov	r1, #4096	@,
	bl	__memzero	@
	ldr	r1, [r4, #4]	@, <variable>.TblProbModeSame
	mov	r2, #64	@,
	mov	r0, r5	@, D.31371
	bl	memcpy	@
	ldr	r1, [r4, #8]	@, <variable>.TblProbMode
	mov	r2, #640	@,
	add	r0, r5, #64	@, D.31371,
	bl	memcpy	@
	add	r0, r5, #704	@, D.31371,
	ldr	r1, [r4, #12]	@, <variable>.TblProbMv
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r3, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r3, r6	@ <variable>.UseHuffman,
	beq	.L13	@,
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #44]	@, <variable>.TblAcHuffLUT
	mov	r2, #1536	@,
	mov	r5, r0	@ D.31389,
	add	r0, r0, #768	@, D.31389,
	bl	memcpy	@
	ldr	r1, [r4, #40]	@, <variable>.TblDcHuffLUT
	mov	r2, #128	@,
	add	r0, r5, #2304	@, D.31389,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.31389,
	ldr	r1, [r4, #48]	@, <variable>.TblZeroHuffLUT
	mov	r2, #128	@,
	bl	memcpy	@
.L9:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #16]	@, <variable>.TblModifiedScanOrder
	mov	r2, #64	@,
	mov	r5, r0	@ D.31394,
	add	r0, r0, #2560	@, D.31394,
	bl	memcpy	@
	ldr	r1, [r4, #20]	@, <variable>.TblEobOffsetTable
	mov	r2, #64	@,
	add	r0, r5, #2624	@, D.31394,
	bl	memcpy	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r5, #2688	@, D.31394,
	bl	memcpy	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r0, #2816	@,,
	bl	memcpy	@
	mov	r0, #0	@ D.31217,
.L5:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L13:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #28]	@, <variable>.TblDcNodeContexts
	mov	r2, #96	@,
	mov	r5, r0	@ D.31383,
	add	r0, r0, #768	@, D.31383,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, <variable>.TblZeroProbs
	add	r0, r5, #864	@, D.31383,
	mov	r2, #32	@,
	bl	memcpy	@
	add	r0, r5, #896	@, D.31383,
	ldr	r1, [r4, #32]	@, <variable>.TblACProbs
	mov	r2, #576	@,
	bl	memcpy	@
	b	.L9	@
.L12:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #307	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31217,
	b	.L5	@
	.fnend
	.size	VP6HAL_V200R004_CfgDnMsg, .-VP6HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP6HAL_V200R004_CfgReg
	.type	VP6HAL_V200R004_CfgReg, %function
VP6HAL_V200R004_CfgReg:
	.fnstart
.LFB1358:
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
	cmp	r2, #1	@ VdhId,
	mov	r8, r2	@ VdhId, VdhId
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r7, r1	@ pHwMem, pHwMem
	bls	.L30	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31052,
.L17:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L30:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L32	@,
.L18:
	ldrh	sl, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r6, #1148	@ tmp199,
	ldrh	r0, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r4, #:lower16:g_HwMem	@ tmp412,
	mul	r6, r6, r8	@ tmp198, tmp199, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp412,
	mul	lr, r0, sl	@ tmp192, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	sl, #0	@ tmp189,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	sub	ip, lr, #1	@ tmp193, tmp192,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, ip, #-16777216	@ tmp196, tmp193,
	bic	r2, r3, #15728640	@ tmp196, tmp196,
	bfi	r2, sl, #31, #1	@ tmp196, tmp189,,
	str	r2, [fp, #-40]	@ tmp196,
	str	r2, [lr, #8]	@ tmp196,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #536870922	@ tmp209,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp207, <variable>.VahbStride,
	movw	r1, #:lower16:.LC27	@,
	bfi	r3, ip, #4, #10	@ tmp209, tmp207,,
	movt	r1, #:upper16:.LC27	@,
	orr	ip, r3, #49152	@ tmp214, tmp209,
	bfi	ip, sl, #16, #12	@ tmp214, tmp189,,
	orr	r3, ip, #536870912	@ tmp218, tmp214,
	bfi	r3, r2, #30, #1	@ tmp218, <variable>.Compress_en,,
	orr	r2, r3, #-2147483648	@ tmp219, tmp218,
	str	r2, [fp, #-40]	@ tmp219,
	str	r2, [lr, #12]	@ tmp219,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bic	r3, ip, #15	@ tmp231, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp231, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp231,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bic	r3, ip, #15	@ tmp242, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp242, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp242,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	str	ip, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	ip, r3, #15	@ tmp263, <variable>.PpfdBufAddr,
	str	ip, [fp, #-40]	@ tmp263, <variable>.ppfd_buf_addr
	str	ip, [r2, #128]	@ tmp263,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	sl, [fp, #-40]	@ tmp189, D32
	mov	r0, #3	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC32	@,
	strh	r3, [fp, #-40]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [fp, #-40]	@ D32.674, D32
	str	r2, [ip, #132]	@ D32.674,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r0, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r0, #120	@ <variable>.PicWidthInMb,
	strhi	sl, [fp, #-40]	@ tmp189, D32
	movls	r0, #65536	@ tmp283,
	strls	r0, [fp, #-40]	@ tmp283, D32
	cmp	r8, #1	@ VdhId,
	beq	.L23	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp285,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp285,
.L31:
	ldr	lr, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	r6, [fp, #-40]	@ D32, D32
	orr	r1, r0, r6	@ tmp294,, D32
	add	r0, lr, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	movw	r0, #1148	@ tmp299,
	mul	r6, r0, r8	@ tmp298, tmp299, VdhId
	movw	r2, #:lower16:3148803	@ tmp296,
	movt	r2, #:upper16:3148803	@ tmp296,
	str	r2, [fp, #-40]	@ tmp296, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #60]	@ tmp296,
	ldr	r2, [fp, #-40]	@ D32.686, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #64]	@ D32.686,
	ldr	r2, [fp, #-40]	@ D32.689, D32
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #68]	@ D32.689,
	ldr	ip, [fp, #-40]	@ D32.692, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.692,
	ldr	ip, [fp, #-40]	@ D32.695, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #76]	@ D32.695,
	ldr	r2, [fp, #-40]	@ D32.698, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.698,
	ldr	r2, [fp, #-40]	@ D32.701, D32
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #84]	@ D32.701,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	bic	ip, r3, #15	@ tmp336, <variable>.image_curr_recon_addr,
	str	ip, [fp, #-40]	@ tmp336, <variable>.ystaddr_1d
	str	ip, [r2, #96]	@ tmp336,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	r3, [fp, #-40]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r3, [ip, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r2, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp357,
	mov	r2, r2, asl #4	@ D.31154, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp356, D.31154,
	cmp	r1, r3	@ tmp356, tmp357
	bhi	.L33	@,
.L25:
	mov	r6, #16	@ level,
.L27:
	ldrh	r2, [r5, #54]	@ temp.714, <variable>.PicHeightInMb
	mov	r0, #3	@,
	ldr	lr, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r1, #:lower16:.LC35	@,
	add	ip, r2, #1	@ tmp373, temp.714,
	movt	r1, #:upper16:.LC35	@,
	mov	r3, r2, asl #4	@ tmp368, temp.714,
	movw	r2, #1148	@ tmp381,
	add	r3, r3, #31	@ tmp369, tmp368,
	mov	ip, ip, asr #1	@ tmp374, tmp373,
	mul	r8, r2, r8	@ tmp380, tmp381, VdhId
	mov	r3, r3, asr #5	@ tmp370, tmp369,
	mul	ip, lr, ip	@ tmp375, <variable>.VahbStride, tmp374
	mov	lr, r3, asl #4	@ tmp371, tmp370,
	mla	r2, r6, lr, ip	@ tmp377, level, tmp371, tmp375
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r2, asl #1	@ tmp378, tmp377,
	str	r3, [fp, #-40]	@ tmp378, <variable>.uvoffset_1d
	str	r3, [lr, #104]	@ tmp378,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	ip, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #1	@ tmp396,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC36	@,
	mov	ip, ip, asl #4	@ tmp387, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC36	@,
	add	ip, ip, #31	@ tmp388, tmp387,
	mov	ip, ip, asr #5	@ tmp389, tmp388,
	mov	ip, ip, asl #5	@ tmp390, tmp389,
	mul	r6, r6, ip	@ D32.434, level, tmp390
	str	r6, [r2, #108]	@ D32.434,
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ tmp396, D32
	str	r3, [r2, #152]	@ tmp396,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp410,
	mov	r0, #0	@ D.31052,
	str	ip, [r3, #32]	@ tmp410,
	b	.L17	@
.L33:
	sub	ip, r2, #2048	@ tmp358, D.31154,
	sub	r1, ip, #1	@ tmp358, tmp358,
	cmp	r1, r3	@ tmp358, tmp357
	movls	r6, #32	@ level,
	bls	.L27	@,
	sub	lr, r2, #4096	@ tmp361, D.31154,
	sub	r0, lr, #1	@ tmp361, tmp361,
	cmp	r0, r3	@ tmp361, tmp357
	movls	r6, #48	@ level,
	bls	.L27	@,
	sub	r1, r2, #6144	@ tmp364, D.31154,
	sub	r2, r1, #1	@ tmp364, tmp364,
	cmp	r2, r3	@ tmp364, tmp357
	movls	r6, #64	@ level,
	bls	.L27	@,
	b	.L25	@
.L23:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp291,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp291,
	b	.L31	@
.L32:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31056,
	strne	r1, [r7, #0]	@ D.31056, <variable>.pVdmRegVirAddr
	bne	.L18	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31052,
	b	.L17	@
	.fnend
	.size	VP6HAL_V200R004_CfgReg, .-VP6HAL_V200R004_CfgReg
	.align	2
	.global	VP6HAL_V200R004_StartDec
	.type	VP6HAL_V200R004_StartDec, %function
VP6HAL_V200R004_StartDec:
	.fnstart
.LFB1357:
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
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	bls	.L43	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31013,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L43:
	ldrh	r1, [r0, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #511	@ tmp146,
	sub	r0, r1, #1	@ tmp144, <variable>.PicWidthInMb,
	uxth	r2, r0	@ tmp145, tmp144
	cmp	r2, r3	@ tmp145, tmp146
	bhi	.L44	@,
	ldrh	r2, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	lr, r2, #1	@ tmp151, <variable>.PicHeightInMb,
	uxth	ip, lr	@ tmp152, tmp151
	cmp	ip, r3	@ tmp152, tmp146
	bhi	.L45	@,
	movw	r8, #1148	@ tmp157,
	movw	r7, #:lower16:g_HwMem	@ tmp158,
	mul	r8, r8, r4	@ tmp156, tmp157, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp158,
	add	r6, r7, r8	@ pHwMem, tmp158, tmp156
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L46	@,
.L40:
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgReg	@
	mov	r0, r5	@, pVp6DecParam
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VP6HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.31013,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L46:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31026,
	strne	r1, [r7, r8]	@ D.31026, <variable>.pVdmRegVirAddr
	bne	.L40	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31013,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L44:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #70	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC38	@,
	movt	r3, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31013,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L45:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #71	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC39	@,
	movt	r3, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31013,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VP6HAL_V200R004_StartDec, .-VP6HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC2:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D16 = 0x%x\012\000"
.LC10:
	.ascii	"D17 = 0x%x\012\000"
.LC11:
	.ascii	"D18 = 0x%x\012\000"
.LC12:
	.ascii	"D19 = 0x%x\012\000"
.LC13:
	.ascii	"D20 = 0x%x\012\000"
.LC14:
	.ascii	"D21 = 0x%x\012\000"
.LC15:
	.ascii	"D22 = 0x%x\012\000"
.LC16:
	.ascii	"D23 = 0x%x\012\000"
.LC17:
	.ascii	"D32 = 0x%x\012\000"
.LC18:
	.ascii	"D34 = 0x%x\012\000"
.LC19:
	.ascii	"D35 = 0x%x\012\000"
.LC20:
	.ascii	"D36 = 0x%x\012\000"
.LC21:
	.ascii	"D37 = 0x%x\012\000"
.LC22:
	.ascii	"D38 = 0x%x\012\000"
.LC23:
	.ascii	"D39 = 0x%x\012\000"
.LC24:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC25:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC26:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC29:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC30:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC31:
	.ascii	"PPFD_V200R004_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"PPFD_V200R003_BUF_LEN = 0x%x\012\000"
	.space	2
.LC33:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC34:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC35:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC36:
	.ascii	"FF_APT_EN = 0x%x\012\000"
	.space	2
.LC37:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC38:
	.ascii	"picture width out of range\000"
	.space	1
.LC39:
	.ascii	"picture height out of range\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
