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
	.file	"real8.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(real8) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real8.o -O2 -Wall
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
	.global	Real8_CB_SetDimensions
	.type	Real8_CB_SetDimensions, %function
Real8_CB_SetDimensions:
	.fnstart
.LFB1355:
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
	ldr	r3, [r0, #88]	@ D.35874, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35874,
	beq	.L21	@,
	cmp	r3, #176	@ D.35874,
	beq	.L22	@,
	cmp	r3, #352	@ D.35874,
	bne	.L7	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35874,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35895, tmp154,
	mov	r2, r1, lsr #4	@ D.35897, tmp155,
	str	r3, [r0, #28]	@ D.35895, <variable>.Rv8ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35895, D.35897
	str	r2, [r0, #24]	@ D.35897, <variable>.Rv8ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.493, tmp157,
	cmp	r3, #47	@ prephitmp.493,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.493,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.493,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.493,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.493,
	movcc	r3, #4	@ i,
	movcs	r3, #5	@ i,
.L4:
	movw	r2, #:lower16:.LANCHOR0	@ tmp161,
	movt	r2, #:upper16:.LANCHOR0	@ tmp161,
	ldr	r3, [r2, r3, asl #2]	@ tmp162, MBA_FieldWidth
	str	r3, [r0, #32]	@ tmp162, <variable>.Rv8ParsePicParam.m_mbaSize
	ldmfd	sp, {fp, sp, pc}	@
.L22:
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #144	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #11	@ tmp143,
	mov	r2, #9	@ tmp144,
	str	ip, [r0, #28]	@ tmp143, <variable>.Rv8ParsePicParam.m_nMBs
	str	r2, [r0, #24]	@ tmp144, <variable>.Rv8ParsePicParam.m_nGOBs
.L17:
	mov	r3, #1	@ i,
	b	.L4	@
.L21:
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #96	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #6	@ tmp141,
	mov	r1, #8	@ tmp140,
	str	r3, [r0, #24]	@ tmp141, <variable>.Rv8ParsePicParam.m_nGOBs
	mov	r3, #0	@ i,
	str	r1, [r0, #28]	@ tmp140, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L4	@
.L7:
	cmp	r3, #704	@ D.35874,
	bne	.L24	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #28]	@ tmp149, <variable>.Rv8ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.493,
	str	r2, [r0, #24]	@ tmp150, <variable>.Rv8ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #24]	@ tmp147, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.493,
	str	r1, [r0, #28]	@ tmp146, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35874,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #24]	@ tmp153, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.493,
	str	r1, [r0, #28]	@ tmp152, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real8_CB_SetDimensions, .-Real8_CB_SetDimensions
	.align	2
	.global	Real8_CB_SetRPRSizes
	.type	Real8_CB_SetRPRSizes, %function
Real8_CB_SetRPRSizes:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r7, .L27	@ tmp138,
	mov	r4, r1	@ num_sizes, num_sizes
	sub	r1, fp, #36	@,,
	mov	ip, r0	@ pPictureHeader, pPictureHeader
	mov	r6, r2	@ sizes, sizes
	add	r5, r1, r4, asl #2	@, tmp142,, num_sizes,
	sub	r8, fp, #72	@ tmp137,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp145,,,,
	str	r6, [ip, #12]	@ sizes, <variable>.Rv8ParsePicParam.m_pSizes
	str	r4, [ip, #16]	@ num_sizes, <variable>.Rv8ParsePicParam.m_numSizes
	mov	r6, r8	@ tmp146, tmp137
	mov	r4, r7	@ tmp147, tmp145
	stmia	r6!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp147,,,,
	ldr	r4, [r4, #0]	@ C.431, C.431
	stmia	r6!, {r0, r1, r2, r3}	@ tmp146,,,,
	str	r4, [r6, #0]	@ C.431, size
	ldr	r3, [r5, #-36]	@ tmp144, size
	str	r3, [ip, #8]	@ tmp144, <variable>.Rv8ParsePicParam.m_pctszSize
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L28:
	.align	2
.L27:
	.word	.LANCHOR0+24
	.fnend
	.size	Real8_CB_SetRPRSizes, .-Real8_CB_SetRPRSizes
	.align	2
	.global	RV8_RecordVFMWState
	.type	RV8_RecordVFMWState, %function
RV8_RecordVFMWState:
	.fnstart
.LFB1364:
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
	.size	RV8_RecordVFMWState, .-RV8_RecordVFMWState
	.align	2
	.global	Real8_WriteSliceMsg
	.type	Real8_WriteSliceMsg, %function
Real8_WriteSliceMsg:
	.fnstart
.LFB1365:
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
	mov	r3, #44	@ tmp138,
	mla	r3, r3, r1, r0	@ tmp139, tmp138, HoldSliceNum, pCtx
	movw	ip, #39776	@ tmp141,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	ip, #39768	@ tmp148,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	str	r2, [r3, #88]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #39772	@ tmp155,
	str	r2, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	ip, #39788	@ tmp162,
	str	r2, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	movw	ip, #39780	@ tmp169,
	str	r2, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	ip, #39784	@ tmp176,
	str	r2, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	ip, #39756	@ tmp183,
	str	r2, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	movw	ip, #39752	@ tmp190,
	str	r2, [r3, #112]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	movw	ip, #39748	@ tmp197,
	str	r2, [r3, #116]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #39760	@ tmp204,
	str	r2, [r3, #120]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.sliceqp
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r2, [r3, #124]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.first_mb_in_slice
	str	r1, [r0, #44]	@ tmp206, <variable>.Rv8DecParam.TotalSliceNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real8_WriteSliceMsg, .-Real8_WriteSliceMsg
	.align	2
	.global	Real8_WritePicMsg
	.type	Real8_WritePicMsg, %function
Real8_WritePicMsg:
	.fnstart
.LFB1366:
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
	movw	r8, #39688	@ tmp134,
	movw	r2, #39792	@ tmp147,
	movw	r7, #39704	@ tmp137,
	movw	r6, #39700	@ tmp139,
	movw	r5, #40888	@ tmp141,
	movw	ip, #40892	@ tmp143,
	movw	r4, #39796	@ tmp149,
	movw	r1, #39728	@ tmp145,
	ldr	r3, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r1, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	r7, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r5, [r0, ip]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	ip, [r0, r4]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r8, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	str	r7, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	str	r6, [r0, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	r5, [r0, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	str	r4, [r0, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	str	ip, [r0, #40]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv8DecParam.PrevPicMb0QP
	strb	r3, [r0, #20]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv8DecParam.PicCodingType
	str	r1, [r0, #32]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv8DecParam.PQUANT
	strne	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Real8_WritePicMsg, .-Real8_WritePicMsg
	.align	2
	.global	Real8_WriteReg
	.type	Real8_WriteReg, %function
Real8_WriteReg:
	.fnstart
.LFB1367:
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
	str	r1, [r0, #48]	@ fst_slc_grp, <variable>.Rv8DecParam.FstSlcGrp
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real8_WriteReg, .-Real8_WriteReg
	.align	2
	.global	Real8_ModifySliceMsg
	.type	Real8_ModifySliceMsg, %function
Real8_ModifySliceMsg:
	.fnstart
.LFB1368:
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
	ldr	r3, [r0, #124]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.36376, <variable>.Rv8DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.36377, <variable>.Rv8DecParam.PicHeightInMb
	bne	.L39	@,
	mul	r1, r1, r3	@ tmp199, D.36376, D.36377
	ldr	r2, [r0, #44]	@ temp.743, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.743,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L40	@,
	sub	r4, r2, #1	@ prephitmp.645, temp.743,
	cmp	r4, #1	@ prephitmp.645,
	bls	.L45	@,
	ldr	r3, [r0, #168]	@ temp.716, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.716,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.716
	ble	.L39	@,
	tst	r2, #1	@ temp.743,
	mov	r3, r0	@ ivtmp.714, pCtx
	mov	ip, #1	@ i.715,
	bne	.L43	@,
	ldr	r3, [r0, #212]	@ D.36390, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.715,
	cmp	r3, #0	@ D.36390,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36390
	add	r3, r0, #44	@ ivtmp.714, pCtx,
	bgt	.L43	@,
.L39:
	mov	r0, #0	@ D.36383,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	moveq	r4, #1	@ prephitmp.645,
	bne	.L46	@,
.L45:
	tst	r4, #1	@ prephitmp.645,
	mov	r3, r0	@ ivtmp.707, pCtx
	mov	ip, #0	@ i,
	beq	.L42	@,
	cmp	r4, #0	@ prephitmp.645,
	bls	.L97	@,
	ldr	r6, [r0, #124]	@ temp.717, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #168]	@ D.36397, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.707, pCtx,
	cmp	r6, r5	@ temp.717, D.36397
	bge	.L39	@,
	cmp	r4, ip	@ prephitmp.645, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.707,
	bls	.L97	@,
.L49:
	ldr	r7, [r3, #124]	@ temp.717, <variable>.first_mb_in_slice
	ldr	r6, [r3, #168]	@ D.36397, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.707, ivtmp.707,
	cmp	r7, r6	@ temp.717, D.36397
	bge	.L39	@,
	ldr	r6, [r5, #168]	@ D.36397, <variable>.first_mb_in_slice
	ldr	r5, [r5, #124]	@ temp.717, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.717, D.36397
	bge	.L39	@,
.L42:
	cmp	r4, ip	@ prephitmp.645, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.707,
	bhi	.L49	@,
.L97:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.645, pCtx
	ldr	r3, [r4, #124]	@ D.36402, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.36402,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36402
	blt	.L39	@,
.L46:
	cmp	r2, #0	@ temp.743,
	beq	.L99	@,
	mov	r6, #0	@ i.742,
	mov	ip, r0	@ ivtmp.724, pCtx
	mov	r3, r0	@ ivtmp.700, pCtx
	mov	r4, r6	@ i.722, i.742
	b	.L52	@
.L101:
	cmp	r5, #0	@ temp.721,
	blt	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.721
	blt	.L39	@,
	cmp	r2, #0	@ TotalMbnMinus1.720,
	blt	.L39	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.720
	blt	.L39	@,
	ldr	r2, [r0, #44]	@ temp.743, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.743, i.722
	bls	.L100	@,
.L52:
	sub	r2, r2, #1	@ tmp205, temp.743,
	ldr	r5, [r3, #124]	@ temp.721, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.742, tmp205
	add	r4, r4, #1	@ i.722, i.722,
	streq	r1, [r3, #128]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #168]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.720, TotalMbnMinus1
	mov	r6, r4	@ i.742, i.722
	subne	r2, r2, #1	@ TotalMbnMinus1.720, <variable>.first_mb_in_slice,
	strne	r2, [r3, #128]	@ TotalMbnMinus1.720, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.721, TotalMbnMinus1.720
	add	r3, r3, #44	@ ivtmp.700, ivtmp.700,
	ble	.L101	@,
	b	.L39	@
.L44:
	ldr	r5, [r3, #212]	@ D.36390, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.714, ivtmp.714,
	cmp	r5, #0	@ D.36390,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36390
	ble	.L39	@,
	ldr	r5, [r6, #212]	@ D.36390, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.36390,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36390
	ble	.L39	@,
.L43:
	add	ip, ip, #1	@ tmp261, i.715,
	add	r6, r3, #44	@ tmp260, ivtmp.714,
	cmp	r4, ip	@ prephitmp.645, tmp261
	add	ip, ip, #1	@ i.715, tmp261,
	bhi	.L44	@,
	b	.L45	@
.L100:
	cmp	r2, #0	@ temp.743,
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.743,
	mov	r5, r3	@ stream_base_addr.744, stream_base_addr
	mov	r4, #0	@ i.723,
	bne	.L56	@,
	mov	r1, r3	@ stream_base_addr.729, stream_base_addr
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.744
	bcs	.L71	@,
	ldr	r5, [r0, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L71	@,
.L72:
	add	ip, r0, #44	@ ivtmp.724, pCtx,
	mov	r4, #1	@ i.723,
	ldr	r5, [ip, #88]	@ stream_base_addr.744, <variable>.StreamPhyAddr
.L56:
	cmp	r5, r3	@ stream_base_addr.744, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.729, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.723,
	add	r1, ip, #44	@ tmp252, ivtmp.724,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.729
	bcs	.L54	@,
.L102:
	ldr	ip, [ip, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L54	@,
.L55:
	cmp	r4, r2	@ tmp251, temp.743
	beq	.L53	@,
	ldr	ip, [r1, #88]	@ stream_base_addr.744, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.744, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.729, stream_base_addr
	ldr	r3, [r1, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.729
	bcs	.L74	@,
	ldr	r5, [r1, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L74	@,
	add	ip, r1, #44	@ ivtmp.724, tmp252,
	add	r4, r4, #1	@ i.723, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.744, <variable>.StreamPhyAddr
.L103:
	cmp	r5, r3	@ stream_base_addr.744, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.729, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.723,
	add	r1, ip, #44	@ tmp252, ivtmp.724,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.729
	bcc	.L102	@,
.L54:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.729
	b	.L55	@
.L74:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.729
	add	ip, r1, #44	@ ivtmp.724, tmp252,
	add	r4, r4, #1	@ i.723, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.744, <variable>.StreamPhyAddr
	b	.L103	@
.L71:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.729
	b	.L72	@
.L99:
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
.L53:
	cmp	r2, #0	@ temp.743,
	bic	r4, r3, #15	@ prephitmp.649, stream_base_addr,
	str	r4, [r0, #52]	@ prephitmp.649, <variable>.Rv8DecParam.StreamBaseAddr
	beq	.L57	@,
	tst	r2, #1	@ temp.743,
	mov	r3, r0	@ ivtmp.673, pCtx
	mov	r1, #0	@ i.718,
	bne	.L60	@,
	ldr	r3, [r0, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	r3, #0	@ <variable>.StreamPhyAddr,
	beq	.L93	@,
	ldr	r1, [r0, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r7, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, r1, #7	@ tmp293, <variable>.StreamBitOffset,
	and	r6, ip, #7	@ tmp283, <variable>.StreamBitOffset,
	add	r3, r3, r1, lsr #3	@, tmp287, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	ip, r7, ip, lsr #3	@, tmp278, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r3, r4, r3	@ BytePos1, prephitmp.649, tmp287
	rsb	r4, r4, ip	@ BytePos0.732, prephitmp.649, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.732,
	bic	r4, r4, #15	@ tmp280, BytePos0.732,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #88]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #96]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #100]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #92]	@ tmp290, <variable>.StreamPhyAddr
.L94:
	mov	r1, #1	@ i.718,
	add	r3, r0, #44	@ ivtmp.673, pCtx,
	ldr	r4, [r0, #52]	@ prephitmp.649, <variable>.Rv8DecParam.StreamBaseAddr
	b	.L60	@
.L104:
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.649, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #88]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #96]	@ tmp218, <variable>.StreamBitOffset
.L59:
	add	r1, r1, #1	@ tmp246, i.718,
	add	r3, r3, #44	@ tmp247, ivtmp.673,
	cmp	r1, r2	@ tmp246, temp.743
	bcs	.L57	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #52]	@ prephitmp.649, <variable>.Rv8DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L67	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.649, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #88]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #96]	@ tmp334, <variable>.StreamBitOffset
.L95:
	ldr	r4, [r0, #52]	@ prephitmp.649, <variable>.Rv8DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.718, tmp246,
	add	r3, r3, #44	@ ivtmp.673, tmp247,
.L60:
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L104	@,
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.732, prephitmp.649, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.732,
	bic	r4, r4, #15	@ tmp223, BytePos0.732,
	str	r4, [r3, #88]	@ tmp223, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp231, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r7, r7, r8, asl #3	@, tmp228, tmp226, tmp224,
	str	r7, [r3, #96]	@ tmp228, <variable>.StreamBitOffset
	ldr	r4, [r0, #52]	@ <variable>.Rv8DecParam.StreamBaseAddr, <variable>.Rv8DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv8DecParam.StreamBaseAddr, tmp231
	and	r4, ip, #15	@ tmp235, BytePos1,
	bic	ip, ip, #15	@ tmp234, BytePos1,
	str	ip, [r3, #92]	@ tmp234, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp239, tmp237, tmp235,
	str	ip, [r3, #100]	@ tmp239, <variable>.StreamBitOffset
	b	.L59	@
.L67:
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp313, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp308, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.732, prephitmp.649, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.732,
	bic	r4, r4, #15	@ tmp310, BytePos0.732,
	str	r4, [r3, #88]	@ tmp310, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r7, r7, r8, asl #3	@, tmp314, tmp313, tmp311,
	str	r7, [r3, #96]	@ tmp314, <variable>.StreamBitOffset
	ldr	r4, [r0, #52]	@ <variable>.Rv8DecParam.StreamBaseAddr, <variable>.Rv8DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv8DecParam.StreamBaseAddr, tmp317
	and	r4, ip, #15	@ tmp321, BytePos1,
	bic	r5, ip, #15	@ tmp320, BytePos1,
	str	r5, [r3, #92]	@ tmp320, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp324, tmp323, tmp321,
	str	ip, [r3, #100]	@ tmp324, <variable>.StreamBitOffset
	b	.L95	@
.L57:
	mov	r0, #1	@ D.36383,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L93:
	ldr	r5, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.649, tmp298
	and	r6, ip, #15	@ tmp301, BytePos0,
	bic	r4, ip, #15	@ tmp300, BytePos0,
	str	r4, [r0, #88]	@ tmp300, <variable>.StreamPhyAddr
	add	r5, r1, r6, asl #3	@, tmp304, tmp303, tmp301,
	str	r5, [r0, #96]	@ tmp304, <variable>.StreamBitOffset
	b	.L94	@
	.fnend
	.size	Real8_ModifySliceMsg, .-Real8_ModifySliceMsg
	.align	2
	.global	REAL8DEC_GetImageBuffer
	.type	REAL8DEC_GetImageBuffer, %function
REAL8DEC_GetImageBuffer:
	.fnstart
.LFB1375:
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
	movw	r4, #:lower16:70056	@ tmp138,
	movt	r4, #:upper16:70056	@ tmp138,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36998,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.37001,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r5, #40960	@, pCtx,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37001,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_GetImageBuffer, .-REAL8DEC_GetImageBuffer
	.align	2
	.global	REAL8DEC_Destroy
	.type	REAL8DEC_Destroy, %function
REAL8DEC_Destroy:
	.fnstart
.LFB1370:
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
	movw	r3, #40864	@ tmp135,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_Destroy, .-REAL8DEC_Destroy
	.align	2
	.global	REAL8DEC_RecycleImage
	.type	REAL8DEC_RecycleImage, %function
REAL8DEC_RecycleImage:
	.fnstart
.LFB1372:
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
	movw	r4, #:lower16:70056	@ tmp142,
	movt	r4, #:upper16:70056	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_RecycleImage, .-REAL8DEC_RecycleImage
	.align	2
	.global	REAL8DEC_Init
	.type	REAL8DEC_Init, %function
REAL8DEC_Init:
	.fnstart
.LFB1369:
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
	movw	r6, #41360	@ tmp139,
	ldr	r7, [r0, r6]	@ D.36457, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:70064	@,
	movt	r1, #:upper16:70064	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r2, r4, #40960	@, pCtx,
	str	r7, [r4, r6]	@ D.36457, <variable>.ImageQue.ResetMagicWord
	add	r0, r2, #56	@,,
	bl	ResetVoQueue	@
	movw	r3, #39796	@ tmp146,
	movw	ip, #39792	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, #15	@ tmp145,
	str	r0, [r4, r3]	@ tmp145, <variable>.CodecInfo.PrevPicMb0QP
	str	r0, [r4, ip]	@ tmp145, <variable>.CodecInfo.PrevPicQP
	movw	r2, #39608	@ tmp158,
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r5, #11370	@ tmp148,
	mov	ip, #1	@ tmp155,
	movw	r3, #39712	@ tmp156,
	strb	ip, [r4, r2]	@ tmp155, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	movw	r2, #39684	@ tmp154,
	strb	r1, [r4, r5]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r1, #11372	@ tmp151,
	mov	r5, #0	@ tmp152,
	mov	r0, #8192	@ tmp157,
	strb	r5, [r4, r1]	@ tmp152, <variable>.CodecInfo.Imgbuf_allocated
	str	r0, [r4, r3]	@ tmp157, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	mov	r0, r4	@, pCtx
	str	ip, [r4, r2]	@ tmp155, <variable>.CodecInfo.PictureHeader.Fid
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:70056	@ tmp161,
	movt	r3, #:upper16:70056	@ tmp161,
	cmn	r0, #1	@ D.36468,
	str	r0, [r4, r3]	@ D.36468, <variable>.ChanID
	movne	r0, r5	@ D.36473, tmp152
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r5	@, tmp152
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36473,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_Init, .-REAL8DEC_Init
	.align	2
	.global	Real8_SetImgFormat
	.type	Real8_SetImgFormat, %function
Real8_SetImgFormat:
	.fnstart
.LFB1363:
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
	movw	r1, #:lower16:70056	@ tmp142,
	movt	r1, #:upper16:70056	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #40972	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #39688	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #108]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.36262, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #39696	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.36262,
	str	r3, [r4, #116]	@ D.36262, <variable>.bottom_fld_type
	str	r3, [r4, #112]	@ D.36262, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #120]	@ tmp148, <variable>.format
	movw	lr, #39692	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #124]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #128]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L122	@,
.L120:
	mov	r3, #8	@ tmp170,
	mov	r2, #1	@ tmp173,
	mov	r1, #0	@ tmp171,
	str	r3, [r4, #316]	@ tmp170, <variable>.ImageDnr.QP_U
	str	r3, [r4, #308]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #301]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	strb	r1, [r4, #296]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #303]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #312]	@ tmp170, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #320]	@ tmp170, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L122:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #152]	@ D.36270, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.36270,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.36270
	mul	r1, r1, lr	@ D.36276, tmp160, tmp157
	str	ip, [r4, #76]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.36276, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.36276
	str	lr, [r4, #88]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.36270
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #72]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L120	@
	.fnend
	.size	Real8_SetImgFormat, .-Real8_SetImgFormat
	.align	2
	.global	REAL8DEC_VDMPostProc
	.type	REAL8DEC_VDMPostProc, %function
REAL8DEC_VDMPostProc:
	.fnstart
.LFB1374:
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
	movw	r5, #:lower16:70056	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	movt	r5, #:upper16:70056	@ tmp145,
	mov	r2, r1	@, ErrRatio
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	movw	r8, #40972	@ tmp147,
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #40968	@ tmp151,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #40964	@ tmp155,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #39688	@ tmp158,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r2, #11373	@ tmp157,
	mov	r0, #22	@,
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r7, r7, #31	@ tmp164, Mb0QpInCurrPic,
	movwne	r1, #39796	@ tmp163,
	strne	r7, [r4, r1]	@ tmp164, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r6, #100	@ ErrRatio,
	movcs	r6, #100	@ tmp165,
	movw	r1, #:lower16:.LC3	@,
	str	r6, [r8, #160]	@ tmp165, <variable>.error_level
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real8_SetImgFormat	@
	movw	r0, #11370	@ tmp167,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r3, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L127	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L127	@,
	movw	r3, #39688	@ tmp173,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L127	@,
	movw	lr, #11375	@ tmp175,
	movw	ip, #40976	@ tmp182,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r2, #40964	@ tmp177,
	mvnls	r1, #0	@ prephitmp.882,
	ldrhi	r1, [r4, r2]	@ prephitmp.882,
	cmn	r1, #1	@ prephitmp.882,
	str	r1, [r4, ip]	@ prephitmp.882, <variable>.CodecInfo.ToQueFsID
	bne	.L135	@,
.L131:
	movw	lr, #40864	@ tmp201,
	mov	r0, #1	@ D.36989,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp204, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, lr]	@ tmp204, <variable>.CodecInfo.FrmCnt
.L132:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L127:
	movw	r0, #40972	@ tmp181,
	movw	ip, #40976	@ tmp182,
	ldr	r1, [r4, r0]	@ prephitmp.882,
	cmn	r1, #1	@ prephitmp.882,
	str	r1, [r4, ip]	@ prephitmp.882, <variable>.CodecInfo.ToQueFsID
	beq	.L131	@,
.L135:
	movw	r5, #:lower16:70056	@ tmp183,
	movt	r5, #:upper16:70056	@ tmp183,
	movw	r6, #40976	@ tmp185,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36979, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36979
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36979
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, r0	@ D.36984,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #40960	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #8	@,
	add	r3, r3, #56	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L131	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36989,
	b	.L132	@
	.fnend
	.size	REAL8DEC_VDMPostProc, .-REAL8DEC_VDMPostProc
	.align	2
	.global	REAL8DEC_GetRemainImg
	.type	REAL8DEC_GetRemainImg, %function
REAL8DEC_GetRemainImg:
	.fnstart
.LFB1373:
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L148	@,
	movw	r6, #:lower16:70056	@ tmp142,
	movt	r6, #:upper16:70056	@ tmp142,
	movw	r7, #40968	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L148	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L146	@,
.L148:
	add	r5, r4, #40960	@ tmp170, pCtx,
	add	r5, r5, #56	@ tmp170, tmp170,
.L137:
	mov	r0, r5	@, tmp170
	bl	GetVoLastImageID	@
.L139:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L146:
	mov	r0, r4	@, pCtx
	add	r5, r4, #40960	@ tmp170, pCtx,
	bl	Real8_SetImgFormat	@
	add	r5, r5, #56	@ tmp170, tmp170,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #196]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #8	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp170
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L138	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	b	.L137	@
.L138:
	ldr	r2, [r8, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L137	@,
	ldr	ip, [r8, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L137	@,
	ldr	lr, [r8, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L139	@,
	b	.L137	@
	.fnend
	.size	REAL8DEC_GetRemainImg, .-REAL8DEC_GetRemainImg
	.align	2
	.global	Real8_CB_FindNextSliceStartCode
	.type	Real8_CB_FindNextSliceStartCode, %function
Real8_CB_FindNextSliceStartCode:
	.fnstart
.LFB1357:
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
	add	r7, r0, #7	@ tmp142, D.35955,
	cmp	r0, #0	@ D.35955,
	movlt	r0, r7	@ D.35955, tmp142
	mov	r7, r0, asr #3	@ tmp143, D.35955,
	sub	r6, r7, #2	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L150	@,
	sub	r2, r7, #3	@ tmp147, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	and	r7, r2, #1	@ tmp149, tmp147,
	bl	BsShow	@
	cmp	r0, #1	@ D.35957,
	mov	r3, r0	@ D.35957,
	beq	.L164	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L150	@,
	cmp	r7, #0	@ tmp149,
	beq	.L153	@,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.35957,
	mov	r3, r0	@ D.35957,
	beq	.L164	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L153	@,
	b	.L150	@
.L151:
	bl	BsSkip	@
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.35957,
	cmp	r3, #1	@ D.35957,
	mov	r0, r4	@, pBs
	beq	.L164	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L150	@,
.L153:
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.35957,
	cmp	r3, #1	@ D.35957,
	mov	r0, r4	@, pBs
	bne	.L151	@,
.L164:
	mov	r0, r3	@ D.35960, D.35957
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L150:
	mov	r0, #0	@ D.35960,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_FindNextSliceStartCode, .-Real8_CB_FindNextSliceStartCode
	.align	2
	.global	Real8_CB_GetSSC
	.type	Real8_CB_GetSSC, %function
Real8_CB_GetSSC:
	.fnstart
.LFB1360:
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
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.36010,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	Real8_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.36010,,
	movne	r0, #1	@ D.36010
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetSSC, .-Real8_CB_GetSSC
	.align	2
	.global	Real8_CB_GetVLCBits
	.type	Real8_CB_GetVLCBits, %function
Real8_CB_GetVLCBits:
	.fnstart
.LFB1351:
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
	mov	r4, #0	@ length,
	movw	r7, #:lower16:.LANCHOR0	@ tmp150,
	movt	r7, #:upper16:.LANCHOR0	@ tmp150,
	mov	r6, r0	@ pBs, pBs
	mov	r8, r1	@ pInfo, pInfo
	mov	r5, r4	@ info, length
.L170:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r1, r0, r7	@ tmp144,, tmp150
	mov	r0, r6	@, pBs
	ldrb	ip, [r1, #60]	@ zero_extendqisi2	@ lengthAndInfo, gs_VLCDecodeTable
	and	r2, ip, #15	@ tmp147, lengthAndInfo,
	mov	r1, ip, lsr #4	@ thisChunksLength, lengthAndInfo,
	mov	r3, ip, lsr #5	@ tmp146, lengthAndInfo,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@, info, tmp147, info,
	bl	BsSkip	@
	tst	r4, #1	@ length,
	beq	.L170	@,
	str	r5, [r8, #0]	@ info,* pInfo
	mov	r0, r4	@, length
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetVLCBits, .-Real8_CB_GetVLCBits
	.align	2
	.global	Real8_CB_Get1Bit
	.type	Real8_CB_Get1Bit, %function
Real8_CB_Get1Bit:
	.fnstart
.LFB1350:
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
	mov	r1, #1	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r4, r0	@ D.35698,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.35698
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_Get1Bit, .-Real8_CB_Get1Bit
	.align	2
	.global	Real8_CB_GetBits
	.type	Real8_CB_GetBits, %function
Real8_CB_GetBits:
	.fnstart
.LFB1349:
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
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ nBits, nBits
	bl	BsShow	@
	mov	r1, r5	@, nBits
	mov	r4, r0	@ D.35692,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.35692
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetBits, .-Real8_CB_GetBits
	.align	2
	.global	Real8_CB_GetSliceHeader
	.type	Real8_CB_GetSliceHeader, %function
Real8_CB_GetSliceHeader:
	.fnstart
.LFB1361:
	@ args = 8, pretend = 0, frame = 0
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
	ldr	r4, [fp, #8]	@ pPictureHeader, pPictureHeader
	mov	r8, r3	@ iSliceGFID, iSliceGFID
	mov	r5, r2	@ iSliceMBA, iSliceMBA
	mov	r7, r0	@ pBs, pBs
	ldr	r6, [fp, #4]	@ iSQUANT, iSQUANT
	ldr	r3, [r4, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	beq	.L197	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L198	@,
	mov	r3, #1	@ D.36037,
	mov	r0, #0	@ tmp195,
	str	r0, [r2, #0]	@ tmp195,* iSliceMBA
	mvn	r2, #0	@ tmp196,
	str	r2, [r6, #0]	@ tmp196,* iSQUANT
.L190:
	mov	r0, r3	@, D.36037
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L197:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L179	@,
	mov	r1, #3	@,
	ldr	sl, [r4, #40]	@ D.36028, <variable>.Rv8ParsePicParam.mba
	bl	Real8_CB_GetBits	@
	cmp	r0, #7	@ versionEncoding,
	bhi	.L180	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	add	r0, r2, r0, asl #2	@, tmp174, tmp171, versionEncoding,
	ldr	r1, [r0, #316]	@ tmp176, s_RVVersionEncodingToMinorVersion
	cmp	r1, #2	@ tmp176,
	bhi	.L180	@,
	cmn	sl, #1	@ D.36028,
	movne	sl, #0	@, D.37709
	moveq	sl, #1	@, D.37709
	cmp	sl, #0	@ D.37709,
	bne	.L199	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	ldr	ip, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, ip	@, <variable>.Rv8ParsePicParam.ptype
	bne	.L180	@,
.L182:
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L180	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	uxtb	r3, r0	@ D.36050,
	strb	r3, [r4, #6]	@ D.36050, <variable>.Rv8ParsePicParam.pquant
	cmp	r3, #31	@ D.36050,
	bhi	.L180	@,
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	subs	r1, r0, #0	@ tmp180,,
	movne	r1, #1	@ tmp180
	cmp	sl, #0	@ D.37709,
	strb	r1, [r4, #5]	@ tmp180, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	beq	.L183	@,
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #44]	@, <variable>.Rv8ParsePicParam.tr
.L184:
	ldr	r1, [r4, #8]	@ D.36064, <variable>.Rv8ParsePicParam.m_pctszSize
	cmp	r1, #0	@ D.36064,
	beq	.L185	@,
	cmp	sl, #0	@ D.37709,
	beq	.L186	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #12]	@ D.36070, <variable>.Rv8ParsePicParam.m_pSizes
	cmp	r3, #0	@ D.36070,
	str	r0, [r4, #56]	@ D.36069, <variable>.Rv8ParsePicParam.pctsz
	beq	.L180	@,
	add	r1, r3, r0, asl #3	@, tmp184, D.36070, D.36069,
	ldr	ip, [r3, r0, asl #3]	@ width,* D.36070
	mov	r0, r4	@, pPictureHeader
	ldr	lr, [r1, #4]	@ height,
	str	ip, [r4, #88]	@ width, <variable>.pic_width_in_pixel
	str	ip, [r4, #60]	@ width, <variable>.Rv8ParsePicParam.pwidth
	str	lr, [r4, #84]	@ height, <variable>.pic_height_in_pixel
	str	lr, [r4, #64]	@ height, <variable>.Rv8ParsePicParam.pheight
	bl	Real8_CB_SetDimensions	@
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
.L187:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	strb	r0, [r4, #4]	@, <variable>.Rv8ParsePicParam.rtype
.L179:
	ldr	r1, [r4, #40]	@ <variable>.Rv8ParsePicParam.mba, <variable>.Rv8ParsePicParam.mba
	mov	r3, #1	@ D.36037,
	mov	r0, #0	@ tmp192,
	str	r1, [r5, #0]	@ <variable>.Rv8ParsePicParam.mba,* iSliceMBA
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	str	ip, [r6, #0]	@ <variable>.Rv8ParsePicParam.pquant,* iSQUANT
	str	r0, [r8, #0]	@ tmp192,* iSliceGFID
	mov	r0, r3	@, D.36037
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L198:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L200	@,
.L180:
	mov	r3, #0	@ D.36037,
.L201:
	mov	r0, r3	@, D.36037
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L200:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r3, [r4, #32]	@ <variable>.Rv8ParsePicParam.m_mbaSize, <variable>.Rv8ParsePicParam.m_mbaSize
	cmp	r3, #11	@ <variable>.Rv8ParsePicParam.m_mbaSize,
	bls	.L192	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L180	@,
.L192:
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #31	@ D.36112,
	str	r0, [r6, #0]	@ D.36112,* iSQUANT
	bgt	.L180	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.36117,
	mov	r4, r0	@ D.36117,
	bne	.L180	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	mov	r3, r4	@ D.36037, D.36117
	str	r0, [r8, #0]	@,* iSliceGFID
	b	.L190	@
.L199:
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #36]	@, <variable>.Rv8ParsePicParam.ptype
	b	.L182	@
.L183:
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	ldr	r2, [r4, #44]	@ <variable>.Rv8ParsePicParam.tr, <variable>.Rv8ParsePicParam.tr
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.tr
	beq	.L184	@,
	mov	r3, #0	@ D.36037,
	b	.L201	@
.L186:
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #56]	@ <variable>.Rv8ParsePicParam.pctsz, <variable>.Rv8ParsePicParam.pctsz
	cmp	r0, r3	@, <variable>.Rv8ParsePicParam.pctsz
	bne	.L180	@,
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
.L189:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.rtype
	beq	.L179	@,
	mov	r3, #0	@ D.36037,
	b	.L201	@
.L185:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	cmp	sl, #0	@ D.37709,
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
	beq	.L189	@,
	b	.L187	@
	.fnend
	.size	Real8_CB_GetSliceHeader, .-Real8_CB_GetSliceHeader
	.align	2
	.global	Real8_CB_SearchBits_IgnoreOnly0
	.type	Real8_CB_SearchBits_IgnoreOnly0, %function
Real8_CB_SearchBits_IgnoreOnly0:
	.fnstart
.LFB1358:
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
	mov	r5, r3	@ lookahead, lookahead
	mov	r4, r2	@ code, code
	mov	r6, r0	@ pBs, pBs
	mov	r7, r1	@ nbits, nbits
	bl	Real8_CB_GetBits	@
	cmp	r0, r4	@ w, code
	cmpne	r5, #0	@, lookahead,
	mov	r3, r0	@ w,
	beq	.L203	@,
	sub	r2, r7, #1	@ tmp152, nbits,
	mov	sl, #1	@ tmp153,
	mov	sl, sl, asl r2	@ msb, tmp153,
	ands	r8, r0, sl	@ tmp154, w, msb
	bne	.L204	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp155,
	add	r7, r0, r7, asl #2	@, tmp158, tmp155, nbits,
	ldr	r9, [r7, #348]	@ pretmp.1098, GetBitsMask
	b	.L205	@
.L206:
	tst	r3, sl	@ w, msb
	bne	.L204	@,
.L205:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.35982, pretmp.1098, w,
	bl	Real8_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.35982,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L206	@,
.L203:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.35989
	moveq	r0, #1	@, D.35989
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L204:
	mov	r0, #0	@ D.35989,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_SearchBits_IgnoreOnly0, .-Real8_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real8_CB_GetPicSize
	.type	Real8_CB_GetPicSize, %function
Real8_CB_GetPicSize:
	.fnstart
.LFB1356:
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
	ldr	r8, .L225	@ tmp149,
	mov	r5, r1	@ pRv8ParsePicParam, pRv8ParsePicParam
	str	r2, [fp, #-128]	@ width, %sfp
	str	r3, [fp, #-132]	@ height, %sfp
	mov	r4, r0	@ pBs, pBs
	mov	ip, r8	@ tmp177, tmp149
	sub	lr, fp, #92	@ tmp148,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp177,,,,
	mov	r6, lr	@ tmp178, tmp148
	sub	r9, fp, #124	@ tmp151,,
	add	r8, r8, #64	@ tmp155, tmp149,
	sub	sl, fp, #60	@ tmp154,,
	add	r7, ip, #16	@ tmp152, tmp177,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp177,,,,
	mov	ip, r9	@ tmp180, tmp151
	stmia	r6, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp180,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp180,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp155,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp154,,,,
	ldr	r0, [r5, #32]	@ <variable>.ptype, <variable>.ptype
	sub	r3, r0, #2	@ tmp156, <variable>.ptype,
	cmp	r3, #1	@ tmp156,
	bls	.L223	@,
.L210:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real8_CB_GetBits	@
	sub	r5, fp, #44	@,,
	add	r6, r5, r0, asl #2	@, tmp162,,,
	ldr	r5, [r6, #-48]	@ w, code_width
	cmp	r5, #0	@ w,
	beq	.L218	@,
.L212:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real8_CB_GetBits	@
	sub	r2, fp, #44	@,,
	add	ip, r2, r0, asl #2	@, tmp167,, code.1141,
	mov	r3, r0	@ code.1141,
	ldr	r6, [ip, #-80]	@ h, code_height1
	cmp	r6, #0	@ h,
	beq	.L224	@,
.L214:
	ldr	ip, [fp, #-128]	@, %sfp
	str	r5, [ip, #0]	@ w,
	ldr	lr, [fp, #-132]	@, %sfp
	str	r6, [lr, #0]	@ h,
.L216:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L218:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1140,
	add	r5, r5, r0, asl #2	@, w, w, code.1140,
	bne	.L212	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1140,
	add	r5, r5, r0, asl #2	@, w, w, code.1140,
	beq	.L218	@,
	b	.L212	@
.L223:
	mov	r0, r4	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L210	@,
	ldr	r3, [r5, #64]	@ <variable>.pwidth_prev, <variable>.pwidth_prev
	ldr	r0, [fp, #-128]	@, %sfp
	str	r3, [r0, #0]	@ <variable>.pwidth_prev,
	ldr	r2, [fp, #-132]	@, %sfp
	ldr	r1, [r5, #68]	@ <variable>.pheight_prev, <variable>.pheight_prev
	str	r1, [r2, #0]	@ <variable>.pheight_prev,
	b	.L216	@
.L224:
	mov	r0, r4	@, pBs
	mov	r6, r3, asl #1	@ code.1142, code.1141,
	bl	Real8_CB_Get1Bit	@
	sub	r3, fp, #44	@,,
	orr	r6, r0, r6	@ code.1143,, code.1142
	and	r0, r6, #3	@ tmp169, code.1143,
	add	r1, r3, r0, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L214	@,
.L217:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1145,
	add	r6, r6, r0, asl #2	@, h, h, code.1145,
	bne	.L214	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1145,
	add	r6, r6, r0, asl #2	@, h, h, code.1145,
	beq	.L217	@,
	b	.L214	@
.L226:
	.align	2
.L225:
	.word	.LANCHOR0+448
	.fnend
	.size	Real8_CB_GetPicSize, .-Real8_CB_GetPicSize
	.align	2
	.global	Real8_CB_GetCPFMT
	.type	Real8_CB_GetCPFMT, %function
Real8_CB_GetCPFMT:
	.fnstart
.LFB1354:
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
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #4	@,
	mov	r5, r0	@ pBs, pBs
	bl	Real8_CB_GetBits	@
	mov	r1, #9	@,
	strb	r0, [r4, #0]	@, <variable>.pixel_aspect_ratio
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	add	r1, r0, #1	@ tmp142,,
	mov	r0, r5	@, pBs
	mov	r3, r1, asl #2	@ tmp143, tmp142,
	str	r3, [r4, #88]	@ tmp143, <variable>.pic_width_in_pixel
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.35854,
	mov	r6, r0	@ D.35854,
	movne	r6, #0	@ D.35857,
	beq	.L231	@,
	mov	r0, r6	@, D.35857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L231:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real8_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #84]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetCPFMT, .-Real8_CB_GetCPFMT
	.align	2
	.global	Real8_CB_GetPictureHeader
	.type	Real8_CB_GetPictureHeader, %function
Real8_CB_GetPictureHeader:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r5, r0	@ pBs, pBs
	cmp	r3, #1	@ <variable>.Fid,
	bne	.L233	@,
	mvn	r1, #0	@ tmp147,
	sub	r2, fp, #36	@,,
	str	r1, [r4, #40]	@ tmp147, <variable>.Rv8ParsePicParam.mba
	sub	r3, fp, #32	@,,
	mov	r1, #0	@,
	sub	ip, fp, #40	@ tmp150,,
	str	r4, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@ tmp150,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r0, #1	@ Status,
	beq	.L254	@,
.L235:
	ldr	r3, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	lr, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	ip, r3, #15	@ tmp194, <variable>.pic_width_in_pixel,
	add	r1, lr, #15	@ tmp196, <variable>.pic_height_in_pixel,
	mov	r2, ip, lsr #4	@ D.36217, tmp194,
	str	r2, [r4, #96]	@ D.36217, <variable>.pic_width_in_mb
	mov	r3, r1, lsr #4	@ D.36219, tmp196,
	str	r3, [r4, #92]	@ D.36219, <variable>.pic_height_in_mb
	mul	lr, r2, r3	@ tmp198, D.36217, D.36219
	str	lr, [r4, #100]	@ tmp198, <variable>.total_mbs
.L249:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L233:
	mov	r1, #140	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #1	@,
	beq	.L255	@,
.L242:
	mvn	r0, #1	@ Status,
	b	.L249	@
.L255:
	sub	r6, fp, #44	@ tmp200,,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, tmp200
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L242	@,
	ldr	r3, [fp, #-44]	@ info, info
	ands	r2, r3, #1	@ tmp171, info,
	bne	.L242	@,
	tst	r3, #2	@ info,
	ubfx	r1, r3, #7, #8	@ tmp182, info,,
	ubfx	r0, r3, #2, #5	@ tmp179, info,,
	strne	r2, [r4, #84]	@ tmp171, <variable>.pic_height_in_pixel
	moveq	r2, #176	@ tmp173,
	strne	r2, [r4, #88]	@ tmp171, <variable>.pic_width_in_pixel
	streq	r2, [r4, #88]	@ tmp173, <variable>.pic_width_in_pixel
	moveq	r2, #144	@ tmp174,
	str	r1, [r4, #108]	@ tmp182, <variable>.TR
	mov	r1, r6	@, tmp200
	streq	r2, [r4, #84]	@ tmp174, <variable>.pic_height_in_pixel
	str	r0, [r4, #120]	@ tmp179, <variable>.PQUANT
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1203,
	streq	r0, [r4, #80]	@ length.1203, <variable>.PicCodType
	beq	.L246	@,
	cmp	r0, #3	@ length.1203,
	bne	.L247	@,
	ldr	ip, [fp, #-44]	@ info, info
	cmp	ip, #1	@ info,
	moveq	ip, #0	@ tmp186,
	streq	ip, [r4, #80]	@ tmp186, <variable>.PicCodType
	bne	.L242	@,
.L246:
	ldr	r3, [r4, #88]	@ prephitmp.1190, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1190,
	beq	.L256	@,
.L248:
	sub	r3, r3, #48	@ tmp189, prephitmp.1190,
	movw	r2, #5584	@ tmp190,
	cmp	r3, r2	@ tmp189, tmp190
	bhi	.L242	@,
.L252:
	ldr	ip, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	movw	r1, #4176	@ tmp193,
	sub	r0, ip, #48	@ tmp191, <variable>.pic_height_in_pixel,
	cmp	r0, r1	@ tmp191, tmp193
	bhi	.L242	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real8_CB_SetDimensions	@
	mov	r0, #1	@ Status,
	b	.L235	@
.L254:
	ldr	r0, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv8ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv8ParsePicParam.ptype
	b	.L236	@
.L241:
	.word	.L237
	.word	.L238
	.word	.L239
	.word	.L240
.L240:
	mov	ip, #2	@ tmp157,
	str	ip, [r4, #80]	@ tmp157, <variable>.PicCodType
.L236:
	ldr	r2, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #5584	@ tmp166,
	ldrb	r5, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	sub	lr, r2, #48	@ tmp164, <variable>.pic_width_in_pixel,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	cmp	lr, r3	@ tmp164, tmp166
	add	r1, r4, #44
	ldmia	r1, {r1, r2, lr}	@ phole ldm
	str	r5, [r4, #112]	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rounding
	str	ip, [r4, #116]	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	r0, [r4, #120]	@ <variable>.Rv8ParsePicParam.pquant, <variable>.PQUANT
	str	r1, [r4, #108]	@ <variable>.Rv8ParsePicParam.tr, <variable>.TR
	str	r2, [r4, #128]	@ <variable>.Rv8ParsePicParam.trb, <variable>.TRB
	str	lr, [r4, #132]	@ <variable>.Rv8ParsePicParam.dbq, <variable>.DBQUANT
	bls	.L252	@,
	mvn	r0, #1	@ Status,
	b	.L249	@
.L239:
	mov	r3, #1	@ tmp156,
	str	r3, [r4, #80]	@ tmp156, <variable>.PicCodType
	b	.L236	@
.L238:
	mov	lr, #0	@ tmp154,
	str	lr, [r4, #20]	@ tmp154, <variable>.Rv8ParsePicParam.m_isForcedKey
	str	lr, [r4, #80]	@ tmp154, <variable>.PicCodType
	b	.L236	@
.L237:
	mov	r5, #0	@ tmp152,
	mov	r2, #1	@ tmp153,
	str	r5, [r4, #80]	@ tmp152, <variable>.PicCodType
	str	r2, [r4, #20]	@ tmp153, <variable>.Rv8ParsePicParam.m_isForcedKey
	b	.L236	@
.L247:
	cmp	r0, #5	@ length.1203,
	bne	.L242	@,
	ldr	r3, [fp, #-44]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L242	@,
	add	lr, r3, #2	@ tmp188, tmp188,
	str	lr, [r4, #80]	@ tmp188, <variable>.PicCodType
	b	.L246	@
.L256:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real8_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L242	@,
	ldr	r3, [r4, #88]	@ prephitmp.1190, <variable>.pic_width_in_pixel
	b	.L248	@
	.fnend
	.size	Real8_CB_GetPictureHeader, .-Real8_CB_GetPictureHeader
	.align	2
	.global	Real8_ArrangeVHBMem
	.type	Real8_ArrangeVHBMem, %function
Real8_ArrangeVHBMem:
	.fnstart
.LFB1353:
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
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #96]	@ D.35779, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35779,
	ldrls	r3, [r2, #92]	@ prephitmp.1225, <variable>.pic_height_in_mb
	bls	.L259	@,
	ldr	r3, [r2, #92]	@ prephitmp.1225, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1225,
	bls	.L259	@,
	ldr	r1, [r4, #0]	@ D.35786, <variable>.pstExtraData
	ldr	r3, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L262	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L284	@,
.L263:
	ldr	r6, [r2, #84]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1227,
	ldr	r5, [r2, #88]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L270:
	sub	r7, fp, #84	@ tmp202,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp202
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp177,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #:lower16:70056	@ tmp188,
	strb	r3, [fp, #-82]	@ tmp177, FspInstCfg.s32RprEnable
	movt	r6, #:upper16:70056	@ tmp188,
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.1227, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r9	@ iftmp.417, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.417, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp202
	uxtbne	sl, sl	@ iftmp.418, PmvNum
	mov	r7, #0	@ tmp186,
	moveq	sl, #1	@ iftmp.418,
	strb	sl, [fp, #-76]	@ iftmp.418, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp186, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35835,
	movne	r0, r7	@ D.35783, tmp186
	beq	.L285	@,
.L261:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L262:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L263	@,
	ldr	r5, [r2, #88]	@ temp.1249, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #472]	@ D.35794, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1249, D.35794
	bhi	.L286	@,
	ldr	r3, [r2, #84]	@ prephitmp.1231, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #476]	@ prephitmp.1229, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1231, prephitmp.1229
	bhi	.L273	@,
	ldr	r6, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ temp.1252, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L276	@,
	add	sl, r9, #1	@ PmvNum.1254, temp.1252,
	cmp	sl, #17	@ PmvNum.1254,
	movge	sl, #17	@ PmvNum,
.L276:
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.1227, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.1252,
	mov	r6, r3	@ PicHeight, prephitmp.1231
	b	.L270	@
.L259:
	mov	r2, r1	@, D.35779
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L261	@
.L285:
	ldr	lr, [r4, #0]	@ temp.1263, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L287	@,
	mov	ip, #1	@ tmp198,
	movw	r1, #11372	@ tmp197,
	mov	r0, ip	@ D.35783, tmp198
	strb	ip, [r4, r1]	@ tmp198, <variable>.CodecInfo.Imgbuf_allocated
	b	.L261	@
.L284:
	ldr	r0, [r2, #88]	@ D.35793, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #472]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35793, PicWidth
	bhi	.L288	@,
	ldr	r3, [r2, #84]	@ prephitmp.1235, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1235, PicHeight
	bhi	.L265	@,
	movw	r2, #11372	@ tmp165,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L261	@,
	ldr	r7, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ D.35804, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L269	@,
	add	sl, r9, #1	@ PmvNum.1246, D.35804,
	cmp	sl, #17	@ PmvNum.1246,
	movge	sl, #17	@ PmvNum,
.L269:
	add	r9, r9, #2	@ DecFsNum, D.35804,
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.1227, <variable>.stChanOption.s32DisplayFrameNum
	b	.L270	@
.L286:
	ldr	lr, [r1, #476]	@ prephitmp.1229, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1231, <variable>.pic_height_in_pixel
.L273:
	mov	r2, r5	@, temp.1249
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L261	@
.L288:
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1235, <variable>.pic_height_in_pixel
.L265:
	mov	r2, r0	@, D.35793
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L261	@
.L287:
	mov	r0, r5	@, D.35835
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35783, D.35835
	b	.L261	@
	.fnend
	.size	Real8_ArrangeVHBMem, .-Real8_ArrangeVHBMem
	.align	2
	.global	Real8_GetImageBuffer
	.type	Real8_GetImageBuffer, %function
Real8_GetImageBuffer:
	.fnstart
.LFB1352:
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
	movw	r5, #:lower16:70056	@ tmp142,
	movt	r5, #:upper16:70056	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #40972	@ tmp144,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35732,
	str	r0, [r4, r6]	@ D.35732, <variable>.CodecInfo.CurFsID
	blt	.L295	@,
	mov	r1, r0	@, D.35732
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r5, r0	@ pLf,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #440]	@ D.35745, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35745,
	beq	.L292	@,
	ldr	r3, [r5, #444]	@ D.35748, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35748,
	beq	.L292	@,
	ldr	r0, [r5, #448]	@ D.35751, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35751,
	beq	.L292	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC10	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L292:
	movw	lr, #40972	@ tmp182,
	mov	r0, #1	@ D.35742,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L291:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L295:
	movw	r6, #40968	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #40964	@ tmp156,
	bl	FSP_GetFsImagePtr	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r8, #0	@ tmp159,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r8, [r4, r7]	@ tmp159, <variable>.CodecInfo.FwdFsID
	str	r8, [r4, r6]	@ tmp159, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #11375	@ tmp166,
	add	r1, r4, #40960	@, pCtx,
	strb	r8, [r4, r3]	@ tmp159, <variable>.CodecInfo.RefNum
	add	r1, r1, #56	@,,
	str	r0, [r4, r7]	@ D.35740, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r6]	@ D.35740, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r8	@ D.35742, tmp159
	b	.L291	@
	.fnend
	.size	Real8_GetImageBuffer, .-Real8_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL8DEC_Decode
	.type	REAL8DEC_Decode, %function
REAL8DEC_Decode:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #324
	sub	sp, sp, #324	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r7, fp, #296	@ tmp856,,
	sub	r8, fp, #156	@ tmp858,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #140	@,
	mov	r1, #0	@,
	mov	r0, r7	@, tmp856
	bl	memset	@
	mov	r1, #0	@,
	mov	r2, #64	@,
	mov	r0, r8	@, tmp858
	bl	memset	@
	movw	r3, #39672	@ tmp259,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight
	movw	ip, #39668	@ tmp256,
	ldr	r2, [r4, ip]	@ D.36538, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth
	mov	r0, #39680	@ tmp258,
	movw	ip, #39684	@ tmp267,
	cmp	r5, #0	@ pPacket,
	movw	r1, #39676	@ tmp257,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight_prev
	add	r6, r4, #39424	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp268,
	str	r0, [r4, ip]	@ tmp268, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #39712	@ tmp269,
	str	r2, [r4, r1]	@ D.36538, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp270,
	str	r2, [fp, #-236]	@ D.36538, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp270, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [fp, #-232]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r1, [fp, #-192]	@ tmp270, TmpPictureHeader.m_uTRWrap
	str	r2, [fp, #-228]	@ D.36538, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r3, [fp, #-224]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	str	r0, [fp, #-220]	@ tmp268, TmpPictureHeader.Fid
	beq	.L380	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11348	@,
	str	r0, [fp, #-304]	@, %sfp
	bl	__memzero	@
	movw	r0, #40828	@ tmp277,
	mov	sl, #0	@ tmp278,
	str	sl, [r4, r0]	@ tmp278, <variable>.CodecInfo.BsOffset
	movw	r2, #40848	@ tmp279,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #40832	@ tmp281,
	movw	r0, #11360	@ tmp283,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #40836	@ tmp285,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11368	@ tmp286,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ temp.1376, <variable>.LenInByte
	str	r2, [r4, ip]	@ temp.1376, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L299	@,
	ldr	ip, [r5, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #40840	@ tmp290,
	movw	r1, #11364	@ tmp292,
	movw	r0, #40844	@ tmp294,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11369	@ tmp296,
	ldr	lr, [r5, #64]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #76]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L381	@,
	sub	r0, r2, #75	@ tmp315, temp.1376,
	movw	r3, #:lower16:3145652	@ tmp316,
	movt	r3, #:upper16:3145652	@ tmp316,
	cmp	r0, r3	@ tmp315, tmp316
	bhi	.L301	@,
.L384:
	movw	lr, #11360	@ tmp317,
	ldr	r1, [r4, lr]	@ D.36582, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.36582,
	beq	.L301	@,
	add	r5, r4, #40960	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #8	@,
	str	r0, [fp, #-316]	@, %sfp
	bhi	.L301	@,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp320, temp.1424,
	and	r1, r0, #65280	@ tmp322, temp.1424,
	and	r2, r0, #16711680	@ tmp325, temp.1424,
	orr	r3, ip, r0, lsr #24	@, tmp321, tmp320, temp.1424,
	orr	ip, r3, r1, asl #8	@, tmp324, tmp321, tmp322,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp327, tmp324, tmp325,
	str	r3, [fp, #-156]	@ tmp327, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #16711680	@ tmp331, temp.1411,
	mov	r1, r0, lsr #24	@ tmp329, temp.1411,
	and	r2, r0, #65280	@ tmp334, temp.1411,
	orr	r0, r1, r0, asl #24	@, tmp330, tmp329, temp.1411,
	orr	r3, r0, ip, lsr #8	@, tmp333, tmp330, tmp331,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, asl #8	@, tmp336, tmp333, tmp334,
	str	ip, [fp, #-152]	@ tmp336, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp338, D.36589,
	and	r1, r0, #65280	@ tmp340, D.36589,
	and	r2, r0, #16711680	@ tmp343, D.36589,
	orr	ip, r3, r0, lsr #24	@, tmp339, tmp338, D.36589,
	orr	r3, ip, r1, asl #8	@, tmp342, tmp339, tmp340,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp345, tmp342, tmp343,
	str	ip, [fp, #-148]	@ tmp345, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp349, temp.1513,
	mov	r1, r0, asl #24	@ tmp347, temp.1513,
	and	r2, r0, #16711680	@ tmp352, temp.1513,
	orr	r0, r1, r0, lsr #24	@, tmp348, tmp347, temp.1513,
	orr	ip, r0, r3, asl #8	@, tmp351, tmp348, tmp349,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp354, tmp351, tmp352,
	str	r3, [fp, #-144]	@ tmp354, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp356, temp.1523,
	and	r1, r0, #65280	@ tmp358, temp.1523,
	and	r2, r0, #16711680	@ tmp361, temp.1523,
	orr	r3, ip, r0, lsr #24	@, tmp357, tmp356, temp.1523,
	orr	ip, r3, r1, asl #8	@, tmp360, tmp357, tmp358,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp363, tmp360, tmp361,
	str	r3, [fp, #-140]	@ tmp363, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp367, temp.1533,
	mov	r1, r0, asl #24	@ tmp365, temp.1533,
	and	r2, r0, #16711680	@ tmp370, temp.1533,
	orr	r0, r1, r0, lsr #24	@, tmp366, tmp365, temp.1533,
	orr	r3, r0, ip, asl #8	@, tmp369, tmp366, tmp367,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp372, tmp369, tmp370,
	str	ip, [fp, #-136]	@ tmp372, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp374, temp.1543,
	and	r1, r0, #65280	@ tmp376, temp.1543,
	and	r2, r0, #16711680	@ tmp379, temp.1543,
	orr	ip, r3, r0, lsr #24	@, tmp375, tmp374, temp.1543,
	orr	r3, ip, r1, asl #8	@, tmp378, tmp375, tmp376,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp381, tmp378, tmp379,
	str	ip, [fp, #-132]	@ tmp381, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp385, temp.1553,
	mov	r1, r0, asl #24	@ tmp383, temp.1553,
	and	r2, r0, #16711680	@ tmp388, temp.1553,
	orr	r0, r1, r0, lsr #24	@, tmp384, tmp383, temp.1553,
	orr	ip, r0, r3, asl #8	@, tmp387, tmp384, tmp385,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp390, tmp387, tmp388,
	str	r3, [fp, #-128]	@ tmp390, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp392, temp.1563,
	and	r1, r0, #65280	@ tmp394, temp.1563,
	and	r2, r0, #16711680	@ tmp397, temp.1563,
	orr	r3, ip, r0, lsr #24	@, tmp393, tmp392, temp.1563,
	orr	ip, r3, r1, asl #8	@, tmp396, tmp393, tmp394,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp399, tmp396, tmp397,
	str	r3, [fp, #-124]	@ tmp399, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp403, temp.1573,
	mov	r1, r0, asl #24	@ tmp401, temp.1573,
	and	r2, r0, #16711680	@ tmp406, temp.1573,
	orr	r0, r1, r0, lsr #24	@, tmp402, tmp401, temp.1573,
	orr	r3, r0, ip, asl #8	@, tmp405, tmp402, tmp403,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp408, tmp405, tmp406,
	str	ip, [fp, #-120]	@ tmp408, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp410, temp.1583,
	and	r1, r0, #65280	@ tmp412, temp.1583,
	and	r2, r0, #16711680	@ tmp415, temp.1583,
	orr	ip, r3, r0, lsr #24	@, tmp411, tmp410, temp.1583,
	orr	r3, ip, r1, asl #8	@, tmp414, tmp411, tmp412,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp417, tmp414, tmp415,
	str	ip, [fp, #-116]	@ tmp417, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp421, temp.1593,
	mov	r1, r0, asl #24	@ tmp419, temp.1593,
	and	r2, r0, #16711680	@ tmp424, temp.1593,
	orr	r0, r1, r0, lsr #24	@, tmp420, tmp419, temp.1593,
	orr	ip, r0, r3, asl #8	@, tmp423, tmp420, tmp421,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp426, tmp423, tmp424,
	str	r3, [fp, #-112]	@ tmp426, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp428, temp.1603,
	and	r1, r0, #65280	@ tmp430, temp.1603,
	and	r2, r0, #16711680	@ tmp433, temp.1603,
	orr	r3, ip, r0, lsr #24	@, tmp429, tmp428, temp.1603,
	orr	ip, r3, r1, asl #8	@, tmp432, tmp429, tmp430,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp435, tmp432, tmp433,
	str	r3, [fp, #-108]	@ tmp435, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp439, temp.1613,
	mov	r1, r0, asl #24	@ tmp437, temp.1613,
	and	r2, r0, #16711680	@ tmp442, temp.1613,
	orr	r0, r1, r0, lsr #24	@, tmp438, tmp437, temp.1613,
	orr	r3, r0, ip, asl #8	@, tmp441, tmp438, tmp439,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp444, tmp441, tmp442,
	str	ip, [fp, #-104]	@ tmp444, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp446, temp.1623,
	and	r1, r0, #65280	@ tmp448, temp.1623,
	and	r2, r0, #16711680	@ tmp451, temp.1623,
	orr	ip, r3, r0, lsr #24	@, tmp447, tmp446, temp.1623,
	orr	r3, ip, r1, asl #8	@, tmp450, tmp447, tmp448,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp453, tmp450, tmp451,
	str	ip, [fp, #-100]	@ tmp453, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r1, r0, #65280	@ tmp457, temp.1380,
	mov	r3, r0, asl #24	@ tmp455, temp.1380,
	and	r2, r0, #16711680	@ tmp460, temp.1380,
	orr	ip, r3, r0, lsr #24	@, tmp456, tmp455, temp.1380,
	orr	r3, ip, r1, asl #8	@, tmp459, tmp456, tmp457,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	orr	ip, r3, r2, lsr r1	@, tmp462, tmp459, tmp460,
	str	ip, [fp, #-96]	@ tmp462, RPR_Sizes
	bl	Real8_CB_GetBits	@
	movw	r2, #39800	@ tmp463,
	cmp	r0, #255	@ D.36600,
	add	r0, r0, #1	@ D.36602, D.36600,
	str	r0, [r4, r2]	@ D.36602, <variable>.CodecInfo.TotalSliceNum
	bhi	.L301	@,
	cmp	r0, #0	@ D.36602,
	addeq	r1, r4, #39680	@, pCtx,
	streq	r1, [fp, #-320]	@, %sfp
	moveq	r3, r0	@ D.36603, D.36602
	beq	.L303	@,
	add	sl, r4, #39680	@, pCtx,
	str	sl, [fp, #-320]	@, %sfp
	ldr	r9, [fp, #-320]	@, %sfp
	movw	lr, #:lower16:3145727	@ tmp870,
	movt	lr, #:upper16:3145727	@ tmp870,
	str	r6, [fp, #-324]	@ pPictureHeader, %sfp
	add	sl, r9, #124	@ ivtmp.1370,,
	mov	r9, #0	@ i.1391,
	mov	r6, lr	@ tmp870, tmp870
	b	.L304	@
.L383:
	movw	lr, #39800	@,
	ldr	r3, [r4, lr]	@ D.36603, <variable>.CodecInfo.TotalSliceNum
	cmp	r3, r9	@ D.36603, i.1391
	bls	.L382	@,
.L304:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r9, r9, #1	@ i.1391, i.1391,
	bl	Real8_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp466, SliceByteOffset,
	and	r2, r0, #65280	@ tmp468, SliceByteOffset,
	orr	ip, r1, r0, lsr #24	@, tmp467, tmp466, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp471, SliceByteOffset,
	orr	r3, ip, r2, asl #8	@, tmp470, tmp467, tmp468,
	orr	r0, r3, r1, lsr #8	@, D.36618, tmp470, tmp471,
	str	r0, [sl, #0]	@ D.36618, <variable>.CodecInfo.SliceByteOffset
	cmp	r0, r6	@ D.36618, tmp870
	add	sl, sl, #4	@ ivtmp.1370, ivtmp.1370,
	ble	.L383	@,
.L301:
	mov	r0, #0	@ D.36546,
.L298:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L381:
	movw	r6, #:lower16:70056	@ tmp300,
	movt	r6, #:upper16:70056	@ tmp300,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #80]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, sl	@ D.36546, tmp278
	b	.L298	@
.L299:
	movw	r0, #40844	@ tmp310,
	movw	r3, #:lower16:3145652	@ tmp316,
	str	sl, [r4, r0]	@ tmp278, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145652	@ tmp316,
	sub	r0, r2, #75	@ tmp315, temp.1376,
	movw	ip, #11369	@ tmp312,
	cmp	r0, r3	@ tmp315, tmp316
	movw	r1, #40840	@ tmp306,
	movw	lr, #11364	@ tmp308,
	strb	sl, [r4, ip]	@ tmp278, <variable>.CodecInfo.IsLastSeg1
	str	sl, [r4, r1]	@ tmp278, <variable>.CodecInfo.BsPhyAddr1
	str	sl, [r4, lr]	@ tmp278, <variable>.CodecInfo.BsVirAddr1
	bls	.L384	@,
	b	.L301	@
.L380:
	movw	lr, #40864	@ tmp275,
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36546, pPacket
	b	.L298	@
.L382:
	ldr	r6, [fp, #-324]	@ pPictureHeader, %sfp
.L303:
	ldr	r0, [fp, #-320]	@, %sfp
	sub	sl, r3, #1	@ pretmp.1336, D.36603,
	tst	sl, #1	@ pretmp.1336,
	mov	r1, #0	@ i,
	add	r9, r0, #128	@,,
	str	r9, [fp, #-324]	@, %sfp
	mov	r2, r9	@ ivtmp.1472,
	bne	.L385	@,
.L373:
	mov	r9, r5	@ pBs, pBs
	b	.L305	@
.L306:
	ldr	r5, [r2, #0]	@ D.36624, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r2, #-4]	@ D.36619, <variable>.CodecInfo.SliceByteOffset
	cmp	r5, ip	@ D.36624, D.36619
	ble	.L301	@,
	ldr	ip, [r2, #4]	@ D.36624, <variable>.CodecInfo.SliceByteOffset
	add	r2, r0, #4	@ ivtmp.1472, tmp875,
	ldr	lr, [r0, #-4]	@ D.36619, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.36624, D.36619
	ble	.L301	@,
.L305:
	cmp	r1, sl	@ i, pretmp.1336
	add	r5, r1, #1	@ tmp874, i,
	add	r1, r5, #1	@ i, tmp874,
	add	r0, r2, #4	@ tmp875, ivtmp.1472,
	bcc	.L306	@,
	mov	r5, r9	@ pBs, pBs
.L370:
	movw	sl, #39804	@ tmp477,
	mov	lr, r3, asl #3	@ tmp476, D.36603,
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	sl, lr, #66	@ PrevHeaderBytes, tmp476,
	add	r3, sl, r1	@, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	str	r3, [fp, #-332]	@, %sfp
	cmp	sl, #3145728	@ PrevHeaderBytes,
	cmplt	r3, #3145728	@,,
	movlt	r9, #0	@, tmp487
	movge	r9, #1	@, tmp487
	bge	.L301	@,
	ldr	r1, [fp, #-332]	@, %sfp
	cmp	r1, #73	@,
	ble	.L301	@,
	movw	r0, #40836	@ tmp488,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r1, r2	@ D.36639,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.36639,
	ble	.L301	@,
	movw	r0, #11360	@ tmp490,
	ldr	r3, [fp, #-332]	@, %sfp
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	sub	ip, fp, #92	@,,
	str	ip, [fp, #-344]	@, %sfp
	add	r1, r3, lr	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	ldr	r1, [fp, #-316]	@, %sfp
	ldr	ip, .L399	@ tmp495,
	sub	r2, fp, #44	@,,
	str	r8, [fp, #-284]	@ tmp858, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	lr, r2, r1, asl #2	@, tmp499,,,
	str	r1, [fp, #-280]	@, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp878,,,,
	ldr	r8, [fp, #-344]	@ tmp494, %sfp
	stmia	r8!, {r0, r1, r2, r3}	@ tmp494,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp879,,,,
	ldr	ip, [ip, #0]	@ C.431, C.431
	stmia	r8!, {r0, r1, r2, r3}	@ tmp494,,,,
	mov	r0, r5	@, pBs
	str	ip, [r8, #0]	@ C.431, size
	mov	r1, r7	@, tmp856
	ldr	ip, [lr, #-48]	@ tmp501, size
	str	ip, [fp, #-288]	@ tmp501, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L386	@,
	movw	r2, #11372	@ tmp505,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L308	@,
	movw	r8, #:lower16:g_event_report	@ tmp507,
	movt	r8, #:upper16:g_event_report	@ tmp507,
	ldr	r3, [r8, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L309	@,
	movw	r8, #39704	@ tmp509,
	movw	r1, #39700	@ tmp511,
	ldrh	r2, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	lr, #:lower16:70056	@ tmp516,
	ldrh	ip, [fp, #-200]	@, TmpPictureHeader.pic_width_in_mb
	movt	lr, #:upper16:70056	@ tmp516,
	ldrh	r9, [fp, #-204]	@, TmpPictureHeader.pic_height_in_mb
	strh	r2, [fp, #-92]	@ movhi	@, para
	sub	r2, fp, #92	@,,
	ldrh	r0, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r1, #2	@,
	strh	ip, [fp, #-88]	@ movhi	@, para
	strh	r9, [fp, #-86]	@ movhi	@, para
	strh	r0, [fp, #-90]	@ movhi	@, para
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L309:
	movw	r8, #:lower16:70056	@ tmp519,
	movt	r8, #:upper16:70056	@ tmp519,
	movw	r9, #40968	@ tmp520,
	add	r2, r4, #40960	@ D.36664, pCtx,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	add	ip, r2, #56	@ D.36664, D.36664,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	ip, [fp, #-336]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	movw	lr, #40964	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r0, #40964	@,
	mov	r3, #0	@ tmp526,
	str	r3, [r4, r0]	@ tmp526, <variable>.CodecInfo.FwdFsID
	str	r3, [r4, r9]	@ tmp526, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r3, [fp, #-340]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r2, #40964	@,
	movw	ip, #11375	@ tmp532,
	str	r0, [r4, r2]	@ D.36663, <variable>.CodecInfo.FwdFsID
	ldr	r1, [fp, #-340]	@,
	strb	r1, [r4, ip]	@ tmp526, <variable>.CodecInfo.RefNum
	ldr	r3, [fp, #-336]	@,
	str	r0, [r4, r9]	@ D.36663, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r1, r3	@, D.36664
	str	r3, [fp, #-336]	@,
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-200]	@ prephitmp.1340, TmpPictureHeader.pic_width_in_mb
	ldr	ip, [fp, #-336]	@,
	cmp	r2, #352	@ prephitmp.1340,
	ldrhi	r3, [fp, #-204]	@ prephitmp.1406, TmpPictureHeader.pic_height_in_mb
	bhi	.L311	@,
	ldr	r3, [fp, #-204]	@ prephitmp.1406, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #264	@ prephitmp.1406,
	bhi	.L311	@,
	ldr	r1, [r4, #0]	@ D.36671, <variable>.pstExtraData
	ldr	r8, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r8, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L313	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L387	@,
.L313:
	movw	r3, #:lower16:70056	@ tmp542,
	movt	r3, #:upper16:70056	@ tmp542,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	str	ip, [fp, #-336]	@,
	bl	FSP_GetFspType	@
	ldr	ip, [fp, #-336]	@,
	cmp	r0, #0	@,
	beq	.L315	@,
.L374:
	ldr	r2, [fp, #-200]	@ prephitmp.1340, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-204]	@ prephitmp.1406, TmpPictureHeader.pic_height_in_mb
.L314:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r7	@, tmp856
	bl	Real8_ArrangeVHBMem	@
	subs	r8, r0, #0	@ D.36682,
	beq	.L388	@,
.L308:
	mov	r1, r7	@, tmp856
	mov	r2, #140	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	ip, #11370	@ tmp550,
	mov	r0, r4	@, pCtx
	ldr	r7, [r2, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r7, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real8_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36688,
	beq	.L389	@,
	movw	r1, #:lower16:70056	@,
	movt	r1, #:upper16:70056	@,
	movw	r9, #40972	@ tmp557,
	str	r1, [fp, #-320]	@, %sfp
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	str	r9, [fp, #-336]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [fp, #-336]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L317	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	sub	lr, fp, #320	@,,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp565,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r3, #0	@,
	strd	r2, [r8, #56]	@ tmp565, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@, pImg,
	strd	r8, [lr, #4]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	str	ip, [fp, #-336]	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #39688	@ tmp569,
	ldr	ip, [fp, #-336]	@,
	ldr	r3, [r4, r0]	@ D.36703, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.36703,
	beq	.L390	@,
	cmp	r3, #1	@ D.36703,
	beq	.L391	@,
	movw	r7, #11375	@ tmp574,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	addeq	r3, r3, #1	@ iftmp.455, iftmp.455,
	bne	.L321	@,
.L322:
	movw	r8, #40964	@ tmp578,
	movw	r7, #40968	@ tmp579,
	ldr	r2, [r4, r8]	@ prephitmp.1338, <variable>.CodecInfo.FwdFsID
	movw	r0, #11375	@ tmp576,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r3, [r4, r0]	@ iftmp.455, <variable>.CodecInfo.RefNum
	cmp	r2, r1	@ prephitmp.1338, <variable>.CodecInfo.BwdFsID
	beq	.L323	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:70056	@ tmp582,
	movt	r3, #:upper16:70056	@ tmp582,
	mov	r2, #0	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r7]	@ prephitmp.1338, <variable>.CodecInfo.BwdFsID
.L323:
	movw	r8, #40972	@ tmp587,
	movw	r7, #:lower16:70056	@ tmp589,
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r7, #:upper16:70056	@ tmp589,
	movw	lr, #40964	@ tmp585,
	movw	r1, #40968	@ tmp586,
	str	r2, [r4, lr]	@ prephitmp.1338, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	str	ip, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r1, ip	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	lr, [fp, #-340]	@,
	bl	FSP_SetRef	@
	ldr	r2, [fp, #-340]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L324:
	movw	r8, #:lower16:70056	@ tmp599,
	movt	r8, #:upper16:70056	@ tmp599,
	movw	r7, #40972	@ tmp600,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #40964	@ tmp602,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	str	r0, [fp, #-316]	@, %sfp
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	movw	r8, #40968	@ tmp604,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r3, [r7, #440]	@ D.36727, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36727,
	mov	r8, r0	@ pBwd,
	beq	.L325	@,
	ldr	ip, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L325	@,
	ldr	r1, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L325	@,
	ldr	r1, [r0, #440]	@ D.36734, <variable>.pstDecodeFs
	cmp	r1, #0	@ D.36734,
	ldrne	lr, [r1, #12]	@ iftmp.459, <variable>.PhyAddr
	movw	r1, #:lower16:.LC21	@,
	ldreq	lr, [r3, #12]	@ iftmp.459, <variable>.PhyAddr
	movt	r1, #:upper16:.LC21	@,
	str	lr, [r4, #56]	@ iftmp.459, <variable>.Rv8DecParam.BwdRefPhyAddr
	ldr	r0, [fp, #-316]	@, %sfp
	ldr	r2, [r0, #440]	@ D.36741, <variable>.pstDecodeFs
	mov	r0, #13	@,
	cmp	r2, #0	@ D.36741,
	ldreq	r2, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r2, #12]	@ iftmp.460, <variable>.PhyAddr
	str	ip, [r4, #60]	@ iftmp.460, <variable>.Rv8DecParam.FwdRefPhyAddr
	ldr	r3, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36746, <variable>.PhyAddr
	str	r2, [r4, #64]	@ D.36746, <variable>.Rv8DecParam.CurPicPhyAddr
	ldr	r9, [r7, #452]	@, <variable>.PmvAddr
	str	r9, [fp, #-328]	@, %sfp
	str	r9, [r4, #80]	@, <variable>.Rv8DecParam.CurrPmvPhyAddr
	ldr	r9, [r8, #452]	@ D.36750, <variable>.PmvAddr
	str	r9, [r4, #84]	@ D.36750, <variable>.Rv8DecParam.ColPmvPhyAddr
	ldr	r3, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36752, <variable>.PhyAddr
	stmia	sp, {ip, lr}	@ phole stm
	str	r3, [r4, #68]	@ D.36752, <variable>.Rv8DecParam.DispFramePhyAddr
	ldr	lr, [fp, #-328]	@, %sfp
	str	r9, [sp, #12]	@ D.36750,
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #39688	@ tmp616,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r9, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	r9, [r4, #72]	@ <variable>.Stride, <variable>.Rv8DecParam.DDRStride
	beq	.L392	@,
.L331:
	movw	r9, #39716	@ tmp638,
	movw	ip, #39728	@ tmp640,
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r1, #39704	@ tmp643,
	sub	lr, r1, #4	@ tmp645, tmp645,
	movw	r2, #39688	@ tmp641,
	str	r3, [r7, #460]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	movw	r7, #40888	@ tmp647,
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	add	r8, r7, #4	@ tmp649, tmp649,
	movw	r3, #39792	@ tmp651,
	movw	ip, #39796	@ tmp653,
	ldr	r9, [r4, r2]	@ D.37053, <variable>.CodecInfo.PictureHeader.PicCodType
	str	r0, [fp, #-316]	@, %sfp
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r9, #2	@ D.37053,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r0, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	mov	r0, r5	@, pBs
	str	r7, [r4, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	strb	r9, [r4, #20]	@ D.37053, <variable>.Rv8DecParam.PicCodingType
	str	r1, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	str	lr, [r4, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	ip, [r4, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	str	r8, [r4, #40]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv8DecParam.PrevPicMb0QP
	ldr	r1, [fp, #-316]	@, %sfp
	strne	r1, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	r1, [r4, #32]	@, <variable>.Rv8DecParam.PQUANT
	bl	BsPos	@
	movw	r2, #39768	@ tmp656,
	add	r9, r2, #32	@ tmp659, tmp659,
	ldr	r7, [r4, r9]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r0, r0, #-2147483641	@ tmp657,,
	submi	r0, r0, #1	@ tmp882, tmp657,
	mvnmi	r0, r0, asl #29	@ tmp883, tmp882,
	mvnmi	r0, r0, lsr #29	@ tmp883, tmp883,
	addmi	r0, r0, #1	@ tmp657, tmp883,
	cmp	r7, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r0, [r4, r2]	@ tmp657, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L393	@,
	movw	ip, #39808	@ tmp669,
	sub	r1, ip, #4	@ tmp670, tmp670,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L376:
	rsb	lr, r3, r7	@ tmp671, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r9, #39772	@ tmp674,
	mov	r7, lr, asl #3	@ D.36804, tmp671,
	bl	BsPos	@
	rsb	r8, r0, r7	@ tmp675,, D.36804
	str	r8, [r4, r9]	@ tmp675, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	r8, #40832	@ tmp676,
	ldr	ip, [fp, #-332]	@, %sfp
	ldr	r1, [r4, r8]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, pBs
	add	r9, ip, r1	@ D.36810,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	r3, #39732	@ tmp690,
	movw	r2, #39800	@ tmp705,
	ldr	r7, [r4, r3]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r1, #39724	@ tmp692,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	add	r3, r1, #48	@ tmp698, tmp698,
	movw	ip, #39768	@ tmp696,
	str	r7, [r4, #116]	@, <variable>.osvquant
	ldr	r7, [r4, r1]	@ D.36816, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r1, #39748	@ tmp689,
	cmp	r0, #0	@ D.36811,
	add	r2, r0, #7	@ tmp680, D.36811,
	movge	r2, r0	@ D.36811, D.36811
	cmp	lr, #1	@ <variable>.CodecInfo.TotalSliceNum,
	ldr	lr, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	add	r2, r9, r2, asr #3	@, D.36814, D.36810, D.36811,
	add	r3, r1, #4	@ tmp691, tmp691,
	str	lr, [r4, #104]	@, <variable>.StreamLength
	movw	lr, #39776	@ tmp682,
	ldr	r0, [fp, #-316]	@, %sfp
	str	r0, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r0, #39756	@ tmp693,
	ldr	r9, [r4, #116]	@, <variable>.osvquant
	add	r1, r0, #4	@ tmp694, tmp694,
	str	r7, [r4, r0]	@ D.36816, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r9, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.osvquant
	mov	r3, #0	@ tmp684,
	str	r3, [r4, r1]	@ tmp684, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	movw	r1, #39784	@,
	str	r2, [r4, #88]	@ D.36814, <variable>.StreamPhyAddr
	mov	r9, #1	@ tmp704,
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r7, [r4, #112]	@ D.36816, <variable>.dblk_filter_passthrough
	str	r3, [r4, #124]	@ tmp684, <variable>.first_mb_in_slice
	str	r0, [r4, #96]	@, <variable>.StreamBitOffset
	str	r2, [r4, lr]	@ D.36814, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	lr, #39780	@,
	add	r2, lr, #8	@,,
	str	r3, [r4, lr]	@ tmp684, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r3, [r4, r1]	@ tmp684, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r3, [r4, r2]	@ tmp684, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r3, [r4, #92]	@ tmp684, <variable>.StreamPhyAddr
	str	r3, [r4, #100]	@ tmp684, <variable>.StreamBitOffset
	str	r3, [r4, #108]	@ tmp684, <variable>.StreamLength
	ldr	r0, [fp, #-316]	@, %sfp
	str	r9, [r4, #44]	@ tmp704, <variable>.Rv8DecParam.TotalSliceNum
	str	r0, [r4, #120]	@, <variable>.sliceqp
	strls	r9, [fp, #-328]	@ tmp704, %sfp
	bls	.L342	@,
	movw	r3, #39808	@ tmp707,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r7, sl, r0	@ PrevOffsetBytes.1483, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	r7, #3145728	@ PrevOffsetBytes.1483,
	bge	.L379	@,
	cmp	r7, #73	@ PrevOffsetBytes.1483,
	ble	.L379	@,
	movw	ip, #40836	@ tmp710,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r2	@ temp.1440, PrevOffsetBytes.1483, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1440,
	ble	.L379	@,
	str	r6, [fp, #-332]	@ pPictureHeader, %sfp
	str	r9, [fp, #-328]	@ i.1490, %sfp
	str	r9, [fp, #-320]	@ i.1490, %sfp
	ldr	r6, [fp, #-324]	@ ivtmp.1364, %sfp
	b	.L347	@
.L348:
	movw	r3, #39800	@,
	add	r9, r9, #1	@ i.1490, i.1490,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	r2, r9	@ <variable>.CodecInfo.TotalSliceNum, i.1490
	bls	.L342	@,
	ldr	r1, [r6, #4]	@ tmp712, <variable>.CodecInfo.SliceByteOffset
	add	r7, sl, r1	@ PrevOffsetBytes.1483, PrevHeaderBytes, tmp712
	cmp	r7, #3145728	@ PrevOffsetBytes.1483,
	bge	.L379	@,
	cmp	r7, #73	@ PrevOffsetBytes.1483,
	ble	.L379	@,
	movw	r0, #40836	@ tmp716,
	add	r6, r6, #4	@ ivtmp.1364, ivtmp.1364,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, lr	@ temp.1440, PrevOffsetBytes.1483, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1440,
	ble	.L379	@,
.L347:
	movw	r3, #11360	@ tmp720,
	mov	r0, r5	@, pBs
	ldr	r8, [r4, r3]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	add	r1, r7, r8	@, PrevOffsetBytes.1483, <variable>.CodecInfo.BsVirAddr
	sub	r8, fp, #56	@,,
	bl	BsInit	@
	ldr	ip, [fp, #-332]	@, %sfp
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	stmia	sp, {r8, ip}	@ phole stm
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L348	@,
	movw	r1, #39704	@,
	ldr	r2, [fp, #-48]	@, iSliceMBA
	ldr	r8, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r8, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [fp, #-324]	@, %sfp
	beq	.L394	@,
	ldr	r3, [fp, #-56]	@ iSQUANT.468, iSQUANT
	mov	r0, r5	@, pBs
	ldr	lr, [fp, #-316]	@, %sfp
	movw	r8, #39800	@,
	cmp	r3, #0	@ iSQUANT.468,
	movge	lr, r3	@, iSQUANT.468
	str	lr, [fp, #-316]	@, %sfp
	bl	BsPos	@
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	ip, #39768	@,
	sub	r2, r3, #1	@ D.36628, <variable>.CodecInfo.TotalSliceNum,
	ands	r0, r0, #-2147483641	@ tmp731,,
	submi	r0, r0, #1	@ tmp884, tmp731,
	mvnmi	r0, r0, asl #29	@ tmp885, tmp884,
	mvnmi	r0, r0, lsr #29	@ tmp885, tmp885,
	addmi	r0, r0, #1	@ tmp731, tmp885,
	cmp	r2, r9	@ D.36628, i.1490
	str	r0, [r4, ip]	@ tmp731, <variable>.CodecInfo.SliceHeader.bit_offset_0
	ldrne	r2, [r6, #4]	@ tmp749, <variable>.CodecInfo.SliceByteOffset
	movne	r0, r5	@, pBs
	ldrne	r3, [r6, #0]	@ tmp750, <variable>.CodecInfo.SliceByteOffset
	beq	.L395	@,
.L377:
	rsb	lr, r3, r2	@ tmp748, tmp750, tmp749
	mov	r8, lr, asl #3	@ D.36845, tmp748,
	bl	BsPos	@
	movw	r2, #39772	@ tmp751,
	rsb	r0, r0, r8	@ tmp752,, D.36845
	movw	r8, #40832	@,
	ldr	r1, [r4, r8]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r8, #0	@ tmp761,
	str	r0, [r4, r2]	@ tmp752, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	add	r7, r7, r1	@ temp.1476, PrevOffsetBytes.1483, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	ldr	ip, [fp, #-320]	@, %sfp
	mov	r3, #44	@ tmp774,
	ldr	lr, [fp, #-316]	@, %sfp
	movw	r2, #39732	@ tmp767,
	movw	r1, #39724	@ tmp769,
	ldr	r2, [r4, r2]	@ temp.1477, <variable>.CodecInfo.PictureHeader.OSVQUANT
	mla	r3, r3, ip, r4	@ tmp775, tmp774,, pCtx
	ldr	r1, [r4, r1]	@ temp.1478, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	add	ip, r0, #7	@ tmp757, D.36849,
	cmp	r0, r8	@ D.36849,
	movlt	r0, ip	@ D.36849, tmp757
	movw	ip, #39748	@ tmp766,
	str	lr, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	add	lr, ip, #4	@ tmp768, tmp768,
	add	ip, lr, #4	@ tmp770, tmp770,
	add	r0, r7, r0, asr #3	@, D.36852, temp.1476, D.36849,
	str	r2, [r4, lr]	@ temp.1477, <variable>.CodecInfo.SliceHeader.osvquant
	str	r1, [r4, ip]	@ temp.1478, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	ip, ip, #4	@ tmp771, tmp771,
	ldr	lr, [fp, #-324]	@, %sfp
	str	lr, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	ldr	lr, [fp, #-320]	@, %sfp
	add	ip, lr, #1	@,,
	str	ip, [fp, #-320]	@, %sfp
	cmp	ip, #123	@,
	movw	ip, #39780	@,
	str	r8, [r4, ip]	@ tmp761, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	lr, #39776	@,
	add	ip, ip, #8	@,,
	str	r0, [r4, lr]	@ D.36852, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	add	lr, lr, #8	@,,
	str	r8, [r4, ip]	@ tmp761, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	sub	ip, lr, #16	@,,
	str	r8, [r4, lr]	@ tmp761, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	lr, #39772	@ tmp789,
	str	r0, [r3, #88]	@ D.36852, <variable>.StreamPhyAddr
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r0, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	ip, [fp, #-324]	@, %sfp
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r1, [r3, #112]	@ temp.1478, <variable>.dblk_filter_passthrough
	str	ip, [r3, #124]	@, <variable>.first_mb_in_slice
	str	r0, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r2, [r3, #116]	@ temp.1477, <variable>.osvquant
	str	r8, [r3, #92]	@ tmp761, <variable>.StreamPhyAddr
	str	r8, [r3, #100]	@ tmp761, <variable>.StreamBitOffset
	str	r8, [r3, #108]	@ tmp761, <variable>.StreamLength
	ldr	r1, [fp, #-316]	@, %sfp
	str	r1, [r3, #120]	@, <variable>.sliceqp
	ldr	lr, [fp, #-320]	@, %sfp
	str	lr, [r4, #44]	@, <variable>.Rv8DecParam.TotalSliceNum
	ble	.L348	@,
	ldr	r3, [fp, #-328]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r3, [r4, #48]	@, <variable>.Rv8DecParam.FstSlcGrp
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L396	@,
	ldr	r3, [r4, #0]	@ temp.1482, <variable>.pstExtraData
	ldr	r1, [fp, #-304]	@, %sfp
	str	r1, [r4, #4]	@, <variable>.pRv8DecParam
	ldr	r2, [r3, #584]	@ D.36861, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36861,
	beq	.L397	@,
	cmp	r2, #2	@ D.36861,
	bne	.L356	@,
	ldr	r3, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r3, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L356	@,
	ldr	lr, [fp, #-304]	@, %sfp
	cmp	lr, #0	@,
	beq	.L356	@,
	ldrb	ip, [lr, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	ip, #2	@ <variable>.PicCodingType,
	beq	.L398	@,
.L356:
	mov	r0, #0	@,
	str	r0, [fp, #-328]	@, %sfp
	str	r0, [fp, #-320]	@, %sfp
	b	.L348	@
.L385:
	cmp	r1, sl	@ i, pretmp.1336
	bcs	.L370	@,
	ldr	r9, [fp, #-324]	@, %sfp
	ldr	r1, [fp, #-320]	@, %sfp
	ldr	ip, [r9, #0]	@ D.36624, <variable>.CodecInfo.SliceByteOffset
	add	r2, r1, #132	@ ivtmp.1472,,
	ldr	r0, [r9, #-4]	@ D.36619, <variable>.CodecInfo.SliceByteOffset
	mov	r1, #1	@ i,
	cmp	ip, r0	@ D.36624, D.36619
	bgt	.L373	@,
	b	.L301	@
.L386:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36546, tmp487
	b	.L298	@
.L311:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36546,
	b	.L298	@
.L389:
	movw	lr, #40864	@ tmp555,
	movw	r1, #:lower16:.LC16	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36546, D.36688
	b	.L298	@
.L395:
	add	r8, r3, #9920	@ tmp738, <variable>.CodecInfo.TotalSliceNum,
	movw	r0, #40836	@ tmp735,
	add	ip, r8, #29	@ tmp738, tmp738,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	add	r1, r4, ip, asl #2	@, tmp742, pCtx, tmp738,
	rsb	r2, sl, r2	@ tmp736, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r1, #4]	@ tmp745, <variable>.CodecInfo.SliceByteOffset
	b	.L377	@
.L379:
	movw	lr, #:lower16:70056	@ tmp844,
	movt	lr, #:upper16:70056	@ tmp844,
	movw	r1, #40972	@ tmp845,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36546,
	b	.L298	@
.L342:
	ldr	ip, [fp, #-328]	@, %sfp
	mov	r0, r4	@, pCtx
	str	ip, [r4, #48]	@, <variable>.Rv8DecParam.FstSlcGrp
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@ D.36879,
	bne	.L379	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11352	@ tmp846,
	ldr	ip, [fp, #-304]	@, %sfp
	ldr	r2, [lr, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r4, #4]	@, <variable>.pRv8DecParam
	str	r2, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Rv8DecParam.Compress_en
	b	.L298	@
.L393:
	movw	lr, #40836	@ tmp661,
	movw	r7, #39804	@ tmp664,
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, sl, r8	@ tmp662, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	b	.L376	@
.L392:
	ldr	r9, [fp, #-316]	@, %sfp
	movw	ip, #39716	@ tmp618,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	r8, [r8, #460]	@ <variable>.TR, <variable>.TR
	ldr	r2, [r9, #460]	@ D.36767, <variable>.TR
	subs	r3, lr, r2	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36767
	rsb	r8, r2, r8	@ trd, D.36767, <variable>.TR
	movwmi	r2, #39712	@ tmp621,
	ldrmi	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r3, r3, r2	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r8, #0	@ trd,
	movwlt	r2, #39712	@ tmp623,
	ldrlt	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r8, r8, r2	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, r8	@ trb, trd
	movgt	r3, #0	@ trb,
	cmp	r8, #0	@ trd,
	movle	r0, #0	@ prephitmp.1504,
	movle	r2, r0	@ prephitmp.1501, prephitmp.1504
	ble	.L336	@,
	mov	r1, r8	@, trd
	mov	r0, r3, asl #14	@, trb,
	str	r3, [fp, #-340]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-340]	@,
	mov	r1, r8	@, trd
	mov	r2, r0	@ prephitmp.1501,
	rsb	r0, r3, r8	@ tmp629, trb, trd
	str	r2, [fp, #-336]	@,
	mov	r0, r0, asl #14	@, tmp629,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-340]	@,
	ldr	r2, [fp, #-336]	@,
.L336:
	movw	lr, #40884	@ tmp635,
	movw	ip, #40880	@ tmp634,
	str	r8, [r4, lr]	@ trd, <variable>.CodecInfo.trd
	add	r8, lr, #4	@ tmp636, tmp636,
	add	r1, r8, #4	@ tmp637, tmp637,
	str	r3, [r4, ip]	@ trb, <variable>.CodecInfo.trb
	str	r2, [r4, r8]	@ prephitmp.1501, <variable>.CodecInfo.Ratio0
	str	r0, [r4, r1]	@ prephitmp.1504, <variable>.CodecInfo.Ratio1
	b	.L331	@
.L325:
	movw	r3, #:lower16:70056	@ tmp607,
	movt	r3, #:upper16:70056	@ tmp607,
	movw	r0, #40972	@ tmp608,
	mov	r2, #1	@,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36546,
	b	.L298	@
.L391:
	movw	ip, #11375	@ tmp572,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L301	@,
.L321:
	mov	r3, #2	@ iftmp.455,
	b	.L322	@
.L390:
	movw	r3, #11375	@ tmp595,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L324	@,
	ldr	lr, [fp, #-320]	@, %sfp
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36546,
	b	.L298	@
.L397:
	ldr	ip, [fp, #-304]	@, %sfp
	ldrb	r0, [ip, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r0, #2	@ <variable>.PicCodingType,
	bne	.L356	@,
	cmp	ip, #0	@,
	beq	.L356	@,
	movw	r2, #:lower16:70056	@ tmp833,
	movt	r2, #:upper16:70056	@ tmp833,
	movw	lr, #40972	@ tmp834,
	str	r8, [r4, #4]	@ tmp761, <variable>.pRv8DecParam
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, r8	@, tmp761
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r8	@ D.36546, tmp761
	b	.L298	@
.L387:
	movw	lr, #11372	@ tmp540,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L314	@,
.L315:
	mov	r0, ip	@, D.36664
	bl	ResetVoQueue	@
	b	.L374	@
.L388:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.36546, D.36682
	b	.L298	@
.L394:
	movw	r3, #:lower16:70056	@ tmp728,
	movt	r3, #:upper16:70056	@ tmp728,
	mov	r2, r0	@, found_ssc
.L378:
	movw	ip, #40972	@ tmp830,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, r8	@ D.36546, tmp761
	b	.L298	@
.L398:
	movw	r1, #:lower16:70056	@ tmp838,
	movt	r1, #:upper16:70056	@ tmp838,
	movw	lr, #40972	@ tmp839,
	mov	r2, r8	@, tmp761
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r8, [r4, #4]	@ tmp761, <variable>.pRv8DecParam
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1488, <variable>.pstExtraData
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	ldr	ip, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, ip, #1	@ tmp841, <variable>.stDisParams.s32DisNums,
	str	r2, [r3, #588]	@ tmp841, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r8	@ D.36546, tmp761
	b	.L298	@
.L317:
	ldr	r9, [fp, #-320]	@, %sfp
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.36546, pImg
	b	.L298	@
.L396:
	movw	r3, #:lower16:70056	@ tmp829,
	mov	r2, #1	@,
	movt	r3, #:upper16:70056	@ tmp829,
	b	.L378	@
.L400:
	.align	2
.L399:
	.word	.LANCHOR0+24
	.fnend
	.size	REAL8DEC_Decode, .-REAL8DEC_Decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	MBA_FieldWidth, %object
	.size	MBA_FieldWidth, 24
MBA_FieldWidth:
	.word	6
	.word	7
	.word	9
	.word	11
	.word	13
	.word	14
	.type	C.431.35996, %object
	.size	C.431.35996, 36
C.431.35996:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.type	gs_VLCDecodeTable, %object
	.size	gs_VLCDecodeTable, 256
gs_VLCDecodeTable:
	.byte	-128
	.byte	-127
	.byte	112
	.byte	112
	.byte	-126
	.byte	-125
	.byte	113
	.byte	113
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	-124
	.byte	-123
	.byte	114
	.byte	114
	.byte	-122
	.byte	-121
	.byte	115
	.byte	115
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	-120
	.byte	-119
	.byte	116
	.byte	116
	.byte	-118
	.byte	-117
	.byte	117
	.byte	117
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	-116
	.byte	-115
	.byte	118
	.byte	118
	.byte	-114
	.byte	-113
	.byte	119
	.byte	119
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.type	s_RVVersionEncodingToMinorVersion, %object
	.size	s_RVVersionEncodingToMinorVersion, 32
s_RVVersionEncodingToMinorVersion:
	.word	2
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.type	GetBitsMask, %object
	.size	GetBitsMask, 100
GetBitsMask:
	.word	0
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	65535
	.word	131071
	.word	262143
	.word	524287
	.word	1048575
	.word	2097151
	.word	4194303
	.word	8388607
	.word	16777215
	.type	C.421.35921, %object
	.size	C.421.35921, 32
C.421.35921:
	.word	160
	.word	176
	.word	240
	.word	320
	.word	352
	.word	640
	.word	704
	.word	0
	.type	C.422.35922, %object
	.size	C.422.35922, 32
C.422.35922:
	.word	120
	.word	132
	.word	144
	.word	240
	.word	288
	.word	480
	.word	0
	.word	0
	.type	C.423.35923, %object
	.size	C.423.35923, 16
C.423.35923:
	.word	180
	.word	360
	.word	576
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Decoding quits at frm %d\012\000"
	.space	2
.LC1:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC2:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC3:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC4:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC5:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC6:
	.ascii	"real8 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC7:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC8:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC9:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC10:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC11:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC12:
	.ascii	"Real8_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC13:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC14:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC15:
	.ascii	"Real8_ArrangeVHBMem err\012\000"
	.space	3
.LC16:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC17:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC18:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC19:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC20:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC21:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
