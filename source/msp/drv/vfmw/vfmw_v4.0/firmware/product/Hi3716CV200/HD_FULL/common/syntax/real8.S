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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
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
	ldr	r3, [r0, #88]	@ D.35557, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35557,
	beq	.L21	@,
	cmp	r3, #176	@ D.35557,
	beq	.L22	@,
	cmp	r3, #352	@ D.35557,
	bne	.L7	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35557,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35578, tmp154,
	mov	r2, r1, lsr #4	@ D.35580, tmp155,
	str	r3, [r0, #28]	@ D.35578, <variable>.Rv8ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35578, D.35580
	str	r2, [r0, #24]	@ D.35580, <variable>.Rv8ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.496, tmp157,
	cmp	r3, #47	@ prephitmp.496,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.496,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.496,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.496,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.496,
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
	cmp	r3, #704	@ D.35557,
	bne	.L24	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #28]	@ tmp149, <variable>.Rv8ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.496,
	str	r2, [r0, #24]	@ tmp150, <variable>.Rv8ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #24]	@ tmp147, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.496,
	str	r1, [r0, #28]	@ tmp146, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35557,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #24]	@ tmp153, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.496,
	str	r1, [r0, #28]	@ tmp152, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real8_CB_SetDimensions, .-Real8_CB_SetDimensions
	.align	2
	.global	Real8_CB_SetRPRSizes
	.type	Real8_CB_SetRPRSizes, %function
Real8_CB_SetRPRSizes:
	.fnstart
.LFB1369:
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
	ldr	r4, [r4, #0]	@ C.436, C.436
	stmia	r6!, {r0, r1, r2, r3}	@ tmp146,,,,
	str	r4, [r6, #0]	@ C.436, size
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
.LFB1374:
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
	mov	r3, #44	@ tmp138,
	mla	r3, r3, r1, r0	@ tmp139, tmp138, HoldSliceNum, pCtx
	movw	ip, #41824	@ tmp141,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	ip, #41816	@ tmp148,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	str	r2, [r3, #88]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #41820	@ tmp155,
	str	r2, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	ip, #41836	@ tmp162,
	str	r2, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	movw	ip, #41828	@ tmp169,
	str	r2, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	ip, #41832	@ tmp176,
	str	r2, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	ip, #41804	@ tmp183,
	str	r2, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	movw	ip, #41800	@ tmp190,
	str	r2, [r3, #112]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	movw	ip, #41796	@ tmp197,
	str	r2, [r3, #116]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #41808	@ tmp204,
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
.LFB1376:
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
	movw	r8, #41736	@ tmp134,
	movw	r2, #41840	@ tmp147,
	movw	r7, #41752	@ tmp137,
	movw	r6, #41748	@ tmp139,
	movw	r5, #42936	@ tmp141,
	movw	ip, #42940	@ tmp143,
	movw	r4, #41844	@ tmp149,
	movw	r1, #41776	@ tmp145,
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
.LFB1377:
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
.LFB1378:
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
	ldr	r1, [r0, #12]	@ D.36059, <variable>.Rv8DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.36060, <variable>.Rv8DecParam.PicHeightInMb
	bne	.L39	@,
	mul	r1, r1, r3	@ tmp199, D.36059, D.36060
	ldr	r2, [r0, #44]	@ temp.746, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.746,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L40	@,
	sub	r4, r2, #1	@ prephitmp.648, temp.746,
	cmp	r4, #1	@ prephitmp.648,
	bls	.L45	@,
	ldr	r3, [r0, #168]	@ temp.719, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.719,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.719
	ble	.L39	@,
	tst	r2, #1	@ temp.746,
	mov	r3, r0	@ ivtmp.717, pCtx
	mov	ip, #1	@ i.718,
	bne	.L43	@,
	ldr	r3, [r0, #212]	@ D.36073, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.718,
	cmp	r3, #0	@ D.36073,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36073
	add	r3, r0, #44	@ ivtmp.717, pCtx,
	bgt	.L43	@,
.L39:
	mov	r0, #0	@ D.36066,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	moveq	r4, #1	@ prephitmp.648,
	bne	.L46	@,
.L45:
	tst	r4, #1	@ prephitmp.648,
	mov	r3, r0	@ ivtmp.710, pCtx
	mov	ip, #0	@ i,
	beq	.L42	@,
	cmp	r4, #0	@ prephitmp.648,
	bls	.L97	@,
	ldr	r6, [r0, #124]	@ temp.720, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #168]	@ D.36080, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.710, pCtx,
	cmp	r6, r5	@ temp.720, D.36080
	bge	.L39	@,
	cmp	r4, ip	@ prephitmp.648, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.710,
	bls	.L97	@,
.L49:
	ldr	r7, [r3, #124]	@ temp.720, <variable>.first_mb_in_slice
	ldr	r6, [r3, #168]	@ D.36080, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.710, ivtmp.710,
	cmp	r7, r6	@ temp.720, D.36080
	bge	.L39	@,
	ldr	r6, [r5, #168]	@ D.36080, <variable>.first_mb_in_slice
	ldr	r5, [r5, #124]	@ temp.720, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.720, D.36080
	bge	.L39	@,
.L42:
	cmp	r4, ip	@ prephitmp.648, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.710,
	bhi	.L49	@,
.L97:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.648, pCtx
	ldr	r3, [r4, #124]	@ D.36085, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.36085,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36085
	blt	.L39	@,
.L46:
	cmp	r2, #0	@ temp.746,
	beq	.L99	@,
	mov	r6, #0	@ i.745,
	mov	ip, r0	@ ivtmp.727, pCtx
	mov	r3, r0	@ ivtmp.703, pCtx
	mov	r4, r6	@ i.725, i.745
	b	.L52	@
.L101:
	cmp	r5, #0	@ temp.724,
	blt	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.724
	blt	.L39	@,
	cmp	r2, #0	@ TotalMbnMinus1.723,
	blt	.L39	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.723
	blt	.L39	@,
	ldr	r2, [r0, #44]	@ temp.746, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.746, i.725
	bls	.L100	@,
.L52:
	sub	r2, r2, #1	@ tmp205, temp.746,
	ldr	r5, [r3, #124]	@ temp.724, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.745, tmp205
	add	r4, r4, #1	@ i.725, i.725,
	streq	r1, [r3, #128]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #168]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.723, TotalMbnMinus1
	mov	r6, r4	@ i.745, i.725
	subne	r2, r2, #1	@ TotalMbnMinus1.723, <variable>.first_mb_in_slice,
	strne	r2, [r3, #128]	@ TotalMbnMinus1.723, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.724, TotalMbnMinus1.723
	add	r3, r3, #44	@ ivtmp.703, ivtmp.703,
	ble	.L101	@,
	b	.L39	@
.L44:
	ldr	r5, [r3, #212]	@ D.36073, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.717, ivtmp.717,
	cmp	r5, #0	@ D.36073,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36073
	ble	.L39	@,
	ldr	r5, [r6, #212]	@ D.36073, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.36073,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36073
	ble	.L39	@,
.L43:
	add	ip, ip, #1	@ tmp261, i.718,
	add	r6, r3, #44	@ tmp260, ivtmp.717,
	cmp	r4, ip	@ prephitmp.648, tmp261
	add	ip, ip, #1	@ i.718, tmp261,
	bhi	.L44	@,
	b	.L45	@
.L100:
	cmp	r2, #0	@ temp.746,
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.746,
	mov	r5, r3	@ stream_base_addr.747, stream_base_addr
	mov	r4, #0	@ i.726,
	bne	.L56	@,
	mov	r1, r3	@ stream_base_addr.732, stream_base_addr
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.747
	bcs	.L71	@,
	ldr	r5, [r0, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L71	@,
.L72:
	add	ip, r0, #44	@ ivtmp.727, pCtx,
	mov	r4, #1	@ i.726,
	ldr	r5, [ip, #88]	@ stream_base_addr.747, <variable>.StreamPhyAddr
.L56:
	cmp	r5, r3	@ stream_base_addr.747, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.732, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.726,
	add	r1, ip, #44	@ tmp252, ivtmp.727,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.732
	bcs	.L54	@,
.L102:
	ldr	ip, [ip, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L54	@,
.L55:
	cmp	r4, r2	@ tmp251, temp.746
	beq	.L53	@,
	ldr	ip, [r1, #88]	@ stream_base_addr.747, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.747, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.732, stream_base_addr
	ldr	r3, [r1, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.732
	bcs	.L74	@,
	ldr	r5, [r1, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L74	@,
	add	ip, r1, #44	@ ivtmp.727, tmp252,
	add	r4, r4, #1	@ i.726, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.747, <variable>.StreamPhyAddr
.L103:
	cmp	r5, r3	@ stream_base_addr.747, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.732, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.726,
	add	r1, ip, #44	@ tmp252, ivtmp.727,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.732
	bcc	.L102	@,
.L54:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.732
	b	.L55	@
.L74:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.732
	add	ip, r1, #44	@ ivtmp.727, tmp252,
	add	r4, r4, #1	@ i.726, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.747, <variable>.StreamPhyAddr
	b	.L103	@
.L71:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.732
	b	.L72	@
.L99:
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
.L53:
	cmp	r2, #0	@ temp.746,
	bic	r4, r3, #15	@ prephitmp.652, stream_base_addr,
	str	r4, [r0, #52]	@ prephitmp.652, <variable>.Rv8DecParam.StreamBaseAddr
	beq	.L57	@,
	tst	r2, #1	@ temp.746,
	mov	r3, r0	@ ivtmp.676, pCtx
	mov	r1, #0	@ i.721,
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
	rsb	r3, r4, r3	@ BytePos1, prephitmp.652, tmp287
	rsb	r4, r4, ip	@ BytePos0.735, prephitmp.652, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.735,
	bic	r4, r4, #15	@ tmp280, BytePos0.735,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #88]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #96]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #100]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #92]	@ tmp290, <variable>.StreamPhyAddr
.L94:
	mov	r1, #1	@ i.721,
	add	r3, r0, #44	@ ivtmp.676, pCtx,
	ldr	r4, [r0, #52]	@ prephitmp.652, <variable>.Rv8DecParam.StreamBaseAddr
	b	.L60	@
.L104:
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.652, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #88]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #96]	@ tmp218, <variable>.StreamBitOffset
.L59:
	add	r1, r1, #1	@ tmp246, i.721,
	add	r3, r3, #44	@ tmp247, ivtmp.676,
	cmp	r1, r2	@ tmp246, temp.746
	bcs	.L57	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #52]	@ prephitmp.652, <variable>.Rv8DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L67	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.652, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #88]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #96]	@ tmp334, <variable>.StreamBitOffset
.L95:
	ldr	r4, [r0, #52]	@ prephitmp.652, <variable>.Rv8DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.721, tmp246,
	add	r3, r3, #44	@ ivtmp.676, tmp247,
.L60:
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L104	@,
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.735, prephitmp.652, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.735,
	bic	r4, r4, #15	@ tmp223, BytePos0.735,
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
	rsb	r4, r4, r6	@ BytePos0.735, prephitmp.652, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.735,
	bic	r4, r4, #15	@ tmp310, BytePos0.735,
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
	mov	r0, #1	@ D.36066,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L93:
	ldr	r5, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.652, tmp298
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
.LFB1385:
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
	movw	r4, #:lower16:74152	@ tmp138,
	movt	r4, #:upper16:74152	@ tmp138,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36696,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36699,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r5, #43008	@, pCtx,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36699,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_GetImageBuffer, .-REAL8DEC_GetImageBuffer
	.align	2
	.global	REAL8DEC_Destroy
	.type	REAL8DEC_Destroy, %function
REAL8DEC_Destroy:
	.fnstart
.LFB1380:
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
	movw	r3, #42912	@ tmp135,
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
	movw	r4, #:lower16:74152	@ tmp142,
	movt	r4, #:upper16:74152	@ tmp142,
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
.LFB1379:
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
	movw	r6, #43408	@ tmp139,
	ldr	r7, [r0, r6]	@ D.36140, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:74160	@,
	movt	r1, #:upper16:74160	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r2, r4, #43008	@, pCtx,
	str	r7, [r4, r6]	@ D.36140, <variable>.ImageQue.ResetMagicWord
	add	r0, r2, #56	@,,
	bl	ResetVoQueue	@
	movw	r3, #41844	@ tmp146,
	movw	ip, #41840	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, #15	@ tmp145,
	str	r0, [r4, r3]	@ tmp145, <variable>.CodecInfo.PrevPicMb0QP
	str	r0, [r4, ip]	@ tmp145, <variable>.CodecInfo.PrevPicQP
	movw	r2, #41656	@ tmp158,
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r5, #11370	@ tmp148,
	mov	ip, #1	@ tmp155,
	movw	r3, #41760	@ tmp156,
	strb	ip, [r4, r2]	@ tmp155, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	movw	r2, #41732	@ tmp154,
	strb	r1, [r4, r5]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r1, #11372	@ tmp151,
	mov	r5, #0	@ tmp152,
	mov	r0, #8192	@ tmp157,
	strb	r5, [r4, r1]	@ tmp152, <variable>.CodecInfo.Imgbuf_allocated
	str	r0, [r4, r3]	@ tmp157, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	mov	r0, r4	@, pCtx
	str	ip, [r4, r2]	@ tmp155, <variable>.CodecInfo.PictureHeader.Fid
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:74152	@ tmp161,
	movt	r3, #:upper16:74152	@ tmp161,
	cmn	r0, #1	@ D.36151,
	str	r0, [r4, r3]	@ D.36151, <variable>.ChanID
	movne	r0, r5	@ D.36156, tmp152
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r5	@, tmp152
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36156,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	REAL8DEC_Init, .-REAL8DEC_Init
	.align	2
	.global	Real8_SetImgFormat
	.type	Real8_SetImgFormat, %function
Real8_SetImgFormat:
	.fnstart
.LFB1373:
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
	movw	r1, #:lower16:74152	@ tmp142,
	movt	r1, #:upper16:74152	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #43020	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #41736	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.35945, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #41744	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.35945,
	str	r3, [r4, #136]	@ D.35945, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.35945, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #140]	@ tmp148, <variable>.format
	movw	lr, #41740	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #144]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #148]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L122	@,
.L120:
	mov	r3, #8	@ tmp170,
	mov	r2, #1	@ tmp173,
	mov	r1, #0	@ tmp171,
	str	r3, [r4, #344]	@ tmp170, <variable>.ImageDnr.QP_U
	str	r3, [r4, #336]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #329]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	strb	r1, [r4, #324]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #331]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #340]	@ tmp170, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #348]	@ tmp170, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L122:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.35953, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.35953,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.35953
	mul	r1, r1, lr	@ D.35959, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.35959, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.35959
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.35953
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #92]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L120	@
	.fnend
	.size	Real8_SetImgFormat, .-Real8_SetImgFormat
	.align	2
	.global	REAL8DEC_VDMPostProc
	.type	REAL8DEC_VDMPostProc, %function
REAL8DEC_VDMPostProc:
	.fnstart
.LFB1384:
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
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r3, #:lower16:74152	@ tmp146,
	movt	r3, #:upper16:74152	@ tmp146,
	movw	r2, #43020	@ tmp148,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L125	@,
	movw	lr, #41736	@ tmp151,
	movw	ip, #11373	@ tmp150,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	r1, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp157, Mb0QpInCurrPic,
	movwne	r1, #41844	@ tmp156,
	strne	r6, [r4, r1]	@ tmp157, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.479,
	blt	.L128	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.479,
.L128:
	str	r5, [r0, #180]	@ iftmp.479, <variable>.error_level
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real8_SetImgFormat	@
	movw	r3, #11370	@ tmp159,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L131	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L131	@,
	movw	r0, #41736	@ tmp165,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	lr, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L131	@,
	movw	r2, #11375	@ tmp167,
	movw	lr, #43024	@ tmp174,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r3, #43012	@ tmp169,
	mvnls	r1, #0	@ prephitmp.885,
	ldrhi	r1, [r4, r3]	@ prephitmp.885,
	cmn	r1, #1	@ prephitmp.885,
	str	r1, [r4, lr]	@ prephitmp.885, <variable>.CodecInfo.ToQueFsID
	beq	.L135	@,
.L139:
	movw	r5, #:lower16:74152	@ tmp175,
	movt	r5, #:upper16:74152	@ tmp175,
	movw	r6, #43024	@ tmp177,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36678, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36678
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36678
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, r0	@ D.36683,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #43008	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #8	@,
	add	r3, r3, #56	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L138	@,
.L135:
	movw	ip, #42912	@ tmp193,
	mov	r0, #1	@ D.36646,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp196, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp196, <variable>.CodecInfo.FrmCnt
.L125:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L131:
	movw	ip, #43020	@ tmp173,
	movw	lr, #43024	@ tmp174,
	ldr	r1, [r4, ip]	@ prephitmp.885,
	cmn	r1, #1	@ prephitmp.885,
	str	r1, [r4, lr]	@ prephitmp.885, <variable>.CodecInfo.ToQueFsID
	bne	.L139	@,
	b	.L135	@
.L138:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36646,
	b	.L125	@
	.fnend
	.size	REAL8DEC_VDMPostProc, .-REAL8DEC_VDMPostProc
	.align	2
	.global	REAL8DEC_GetRemainImg
	.type	REAL8DEC_GetRemainImg, %function
REAL8DEC_GetRemainImg:
	.fnstart
.LFB1383:
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
	beq	.L152	@,
	movw	r6, #:lower16:74152	@ tmp142,
	movt	r6, #:upper16:74152	@ tmp142,
	movw	r7, #43016	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L152	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L150	@,
.L152:
	add	r5, r4, #43008	@ tmp170, pCtx,
	add	r5, r5, #56	@ tmp170, tmp170,
.L141:
	mov	r0, r5	@, tmp170
	bl	GetVoLastImageID	@
.L143:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L150:
	mov	r0, r4	@, pCtx
	add	r5, r4, #43008	@ tmp170, pCtx,
	bl	Real8_SetImgFormat	@
	add	r5, r5, #56	@ tmp170, tmp170,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #216]	@ tmp150, <variable>.last_frame
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
	beq	.L142	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	b	.L141	@
.L142:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L141	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L141	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L143	@,
	b	.L141	@
	.fnend
	.size	REAL8DEC_GetRemainImg, .-REAL8DEC_GetRemainImg
	.align	2
	.global	Real8_CB_FindNextSliceStartCode
	.type	Real8_CB_FindNextSliceStartCode, %function
Real8_CB_FindNextSliceStartCode:
	.fnstart
.LFB1367:
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
	add	r7, r0, #7	@ tmp142, D.35638,
	cmp	r0, #0	@ D.35638,
	movlt	r0, r7	@ D.35638, tmp142
	mov	r7, r0, asr #3	@ tmp143, D.35638,
	sub	r6, r7, #2	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L154	@,
	sub	r2, r7, #3	@ tmp147, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	and	r7, r2, #1	@ tmp149, tmp147,
	bl	BsShow	@
	cmp	r0, #1	@ D.35640,
	mov	r3, r0	@ D.35640,
	beq	.L168	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L154	@,
	cmp	r7, #0	@ tmp149,
	beq	.L157	@,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.35640,
	mov	r3, r0	@ D.35640,
	beq	.L168	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L157	@,
	b	.L154	@
.L155:
	bl	BsSkip	@
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.35640,
	cmp	r3, #1	@ D.35640,
	mov	r0, r4	@, pBs
	beq	.L168	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L154	@,
.L157:
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.35640,
	cmp	r3, #1	@ D.35640,
	mov	r0, r4	@, pBs
	bne	.L155	@,
.L168:
	mov	r0, r3	@ D.35643, D.35640
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L154:
	mov	r0, #0	@ D.35643,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_FindNextSliceStartCode, .-Real8_CB_FindNextSliceStartCode
	.align	2
	.global	Real8_CB_GetSSC
	.type	Real8_CB_GetSSC, %function
Real8_CB_GetSSC:
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
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.35693,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	Real8_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.35693,,
	movne	r0, #1	@ D.35693
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetSSC, .-Real8_CB_GetSSC
	.align	2
	.global	Real8_CB_GetVLCBits
	.type	Real8_CB_GetVLCBits, %function
Real8_CB_GetVLCBits:
	.fnstart
.LFB1361:
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
.L174:
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
	beq	.L174	@,
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
.LFB1360:
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
	mov	r4, r0	@ D.35380,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.35380
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_Get1Bit, .-Real8_CB_Get1Bit
	.align	2
	.global	Real8_CB_GetBits
	.type	Real8_CB_GetBits, %function
Real8_CB_GetBits:
	.fnstart
.LFB1359:
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
	mov	r4, r0	@ D.35374,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.35374
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetBits, .-Real8_CB_GetBits
	.align	2
	.global	Real8_CB_GetSliceHeader
	.type	Real8_CB_GetSliceHeader, %function
Real8_CB_GetSliceHeader:
	.fnstart
.LFB1371:
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
	beq	.L201	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L202	@,
	mov	r3, #1	@ D.35720,
	mov	r0, #0	@ tmp195,
	str	r0, [r2, #0]	@ tmp195,* iSliceMBA
	mvn	r2, #0	@ tmp196,
	str	r2, [r6, #0]	@ tmp196,* iSQUANT
.L194:
	mov	r0, r3	@, D.35720
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L201:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L183	@,
	mov	r1, #3	@,
	ldr	sl, [r4, #40]	@ D.35711, <variable>.Rv8ParsePicParam.mba
	bl	Real8_CB_GetBits	@
	cmp	r0, #7	@ versionEncoding,
	bhi	.L184	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	add	r0, r2, r0, asl #2	@, tmp174, tmp171, versionEncoding,
	ldr	r1, [r0, #316]	@ tmp176, s_RVVersionEncodingToMinorVersion
	cmp	r1, #2	@ tmp176,
	bhi	.L184	@,
	cmn	sl, #1	@ D.35711,
	movne	sl, #0	@, D.37405
	moveq	sl, #1	@, D.37405
	cmp	sl, #0	@ D.37405,
	bne	.L203	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	ldr	ip, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, ip	@, <variable>.Rv8ParsePicParam.ptype
	bne	.L184	@,
.L186:
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L184	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	uxtb	r3, r0	@ D.35733,
	strb	r3, [r4, #6]	@ D.35733, <variable>.Rv8ParsePicParam.pquant
	cmp	r3, #31	@ D.35733,
	bhi	.L184	@,
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	subs	r1, r0, #0	@ tmp180,,
	movne	r1, #1	@ tmp180
	cmp	sl, #0	@ D.37405,
	strb	r1, [r4, #5]	@ tmp180, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	beq	.L187	@,
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #44]	@, <variable>.Rv8ParsePicParam.tr
.L188:
	ldr	r1, [r4, #8]	@ D.35747, <variable>.Rv8ParsePicParam.m_pctszSize
	cmp	r1, #0	@ D.35747,
	beq	.L189	@,
	cmp	sl, #0	@ D.37405,
	beq	.L190	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #12]	@ D.35753, <variable>.Rv8ParsePicParam.m_pSizes
	cmp	r3, #0	@ D.35753,
	str	r0, [r4, #56]	@ D.35752, <variable>.Rv8ParsePicParam.pctsz
	beq	.L184	@,
	add	r1, r3, r0, asl #3	@, tmp184, D.35753, D.35752,
	ldr	ip, [r3, r0, asl #3]	@ width,* D.35753
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
.L191:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	strb	r0, [r4, #4]	@, <variable>.Rv8ParsePicParam.rtype
.L183:
	ldr	r1, [r4, #40]	@ <variable>.Rv8ParsePicParam.mba, <variable>.Rv8ParsePicParam.mba
	mov	r3, #1	@ D.35720,
	mov	r0, #0	@ tmp192,
	str	r1, [r5, #0]	@ <variable>.Rv8ParsePicParam.mba,* iSliceMBA
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	str	ip, [r6, #0]	@ <variable>.Rv8ParsePicParam.pquant,* iSQUANT
	str	r0, [r8, #0]	@ tmp192,* iSliceGFID
	mov	r0, r3	@, D.35720
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L202:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L204	@,
.L184:
	mov	r3, #0	@ D.35720,
.L205:
	mov	r0, r3	@, D.35720
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L204:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r3, [r4, #32]	@ <variable>.Rv8ParsePicParam.m_mbaSize, <variable>.Rv8ParsePicParam.m_mbaSize
	cmp	r3, #11	@ <variable>.Rv8ParsePicParam.m_mbaSize,
	bls	.L196	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L184	@,
.L196:
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #31	@ D.35795,
	str	r0, [r6, #0]	@ D.35795,* iSQUANT
	bgt	.L184	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.35800,
	mov	r4, r0	@ D.35800,
	bne	.L184	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	mov	r3, r4	@ D.35720, D.35800
	str	r0, [r8, #0]	@,* iSliceGFID
	b	.L194	@
.L203:
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #36]	@, <variable>.Rv8ParsePicParam.ptype
	b	.L186	@
.L187:
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	ldr	r2, [r4, #44]	@ <variable>.Rv8ParsePicParam.tr, <variable>.Rv8ParsePicParam.tr
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.tr
	beq	.L188	@,
	mov	r3, #0	@ D.35720,
	b	.L205	@
.L190:
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #56]	@ <variable>.Rv8ParsePicParam.pctsz, <variable>.Rv8ParsePicParam.pctsz
	cmp	r0, r3	@, <variable>.Rv8ParsePicParam.pctsz
	bne	.L184	@,
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
.L193:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.rtype
	beq	.L183	@,
	mov	r3, #0	@ D.35720,
	b	.L205	@
.L189:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	cmp	sl, #0	@ D.37405,
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
	beq	.L193	@,
	b	.L191	@
	.fnend
	.size	Real8_CB_GetSliceHeader, .-Real8_CB_GetSliceHeader
	.align	2
	.global	Real8_CB_SearchBits_IgnoreOnly0
	.type	Real8_CB_SearchBits_IgnoreOnly0, %function
Real8_CB_SearchBits_IgnoreOnly0:
	.fnstart
.LFB1368:
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
	beq	.L207	@,
	sub	r2, r7, #1	@ tmp152, nbits,
	mov	sl, #1	@ tmp153,
	mov	sl, sl, asl r2	@ msb, tmp153,
	ands	r8, r0, sl	@ tmp154, w, msb
	bne	.L208	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp155,
	add	r7, r0, r7, asl #2	@, tmp158, tmp155, nbits,
	ldr	r9, [r7, #348]	@ pretmp.1099, GetBitsMask
	b	.L209	@
.L210:
	tst	r3, sl	@ w, msb
	bne	.L208	@,
.L209:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.35665, pretmp.1099, w,
	bl	Real8_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.35665,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L210	@,
.L207:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.35672
	moveq	r0, #1	@, D.35672
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L208:
	mov	r0, #0	@ D.35672,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_SearchBits_IgnoreOnly0, .-Real8_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real8_CB_GetPicSize
	.type	Real8_CB_GetPicSize, %function
Real8_CB_GetPicSize:
	.fnstart
.LFB1366:
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
	ldr	r8, .L229	@ tmp149,
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
	bls	.L227	@,
.L214:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real8_CB_GetBits	@
	sub	r5, fp, #44	@,,
	add	r6, r5, r0, asl #2	@, tmp162,,,
	ldr	r5, [r6, #-48]	@ w, code_width
	cmp	r5, #0	@ w,
	beq	.L222	@,
.L216:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real8_CB_GetBits	@
	sub	r2, fp, #44	@,,
	add	ip, r2, r0, asl #2	@, tmp167,, code.1142,
	mov	r3, r0	@ code.1142,
	ldr	r6, [ip, #-80]	@ h, code_height1
	cmp	r6, #0	@ h,
	beq	.L228	@,
.L218:
	ldr	ip, [fp, #-128]	@, %sfp
	str	r5, [ip, #0]	@ w,
	ldr	lr, [fp, #-132]	@, %sfp
	str	r6, [lr, #0]	@ h,
.L220:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L222:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1141,
	add	r5, r5, r0, asl #2	@, w, w, code.1141,
	bne	.L216	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1141,
	add	r5, r5, r0, asl #2	@, w, w, code.1141,
	beq	.L222	@,
	b	.L216	@
.L227:
	mov	r0, r4	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L214	@,
	ldr	r3, [r5, #64]	@ <variable>.pwidth_prev, <variable>.pwidth_prev
	ldr	r0, [fp, #-128]	@, %sfp
	str	r3, [r0, #0]	@ <variable>.pwidth_prev,
	ldr	r2, [fp, #-132]	@, %sfp
	ldr	r1, [r5, #68]	@ <variable>.pheight_prev, <variable>.pheight_prev
	str	r1, [r2, #0]	@ <variable>.pheight_prev,
	b	.L220	@
.L228:
	mov	r0, r4	@, pBs
	mov	r6, r3, asl #1	@ code.1143, code.1142,
	bl	Real8_CB_Get1Bit	@
	sub	r3, fp, #44	@,,
	orr	r6, r0, r6	@ code.1144,, code.1143
	and	r0, r6, #3	@ tmp169, code.1144,
	add	r1, r3, r0, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L218	@,
.L221:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1146,
	add	r6, r6, r0, asl #2	@, h, h, code.1146,
	bne	.L218	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #255	@ code.1146,
	add	r6, r6, r0, asl #2	@, h, h, code.1146,
	beq	.L221	@,
	b	.L218	@
.L230:
	.align	2
.L229:
	.word	.LANCHOR0+448
	.fnend
	.size	Real8_CB_GetPicSize, .-Real8_CB_GetPicSize
	.align	2
	.global	Real8_CB_GetCPFMT
	.type	Real8_CB_GetCPFMT, %function
Real8_CB_GetCPFMT:
	.fnstart
.LFB1364:
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
	cmp	r0, #1	@ D.35537,
	mov	r6, r0	@ D.35537,
	movne	r6, #0	@ D.35540,
	beq	.L235	@,
	mov	r0, r6	@, D.35540
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L235:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real8_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #84]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35540
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real8_CB_GetCPFMT, .-Real8_CB_GetCPFMT
	.align	2
	.global	Real8_CB_GetPictureHeader
	.type	Real8_CB_GetPictureHeader, %function
Real8_CB_GetPictureHeader:
	.fnstart
.LFB1372:
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
	bne	.L237	@,
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
	beq	.L257	@,
.L239:
	ldr	lr, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	r3, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	ip, lr, #15	@ tmp194, <variable>.pic_width_in_pixel,
	add	r1, r3, #15	@ tmp196, <variable>.pic_height_in_pixel,
	mov	r2, ip, lsr #4	@ D.35900, tmp194,
	str	r2, [r4, #96]	@ D.35900, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.35902, tmp196,
	str	lr, [r4, #92]	@ D.35902, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp198, D.35900, D.35902
	str	ip, [r4, #100]	@ tmp198, <variable>.total_mbs
.L253:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L237:
	mov	r1, #140	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #1	@,
	beq	.L258	@,
.L246:
	mvn	r0, #1	@ Status,
	b	.L253	@
.L258:
	sub	r6, fp, #44	@ tmp200,,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, tmp200
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L246	@,
	ldr	r3, [fp, #-44]	@ info, info
	ands	r2, r3, #1	@ tmp171, info,
	bne	.L246	@,
	tst	r3, #2	@ info,
	ubfx	r0, r3, #7, #8	@ tmp182, info,,
	strne	r2, [r4, #84]	@ tmp171, <variable>.pic_height_in_pixel
	ubfx	r3, r3, #2, #5	@ tmp179, info,,
	moveq	r2, #176	@ tmp173,
	strne	r2, [r4, #88]	@ tmp171, <variable>.pic_width_in_pixel
	streq	r2, [r4, #88]	@ tmp173, <variable>.pic_width_in_pixel
	mov	r1, r6	@, tmp200
	moveq	r2, #144	@ tmp174,
	str	r0, [r4, #108]	@ tmp182, <variable>.TR
	streq	r2, [r4, #84]	@ tmp174, <variable>.pic_height_in_pixel
	mov	r0, r5	@, pBs
	str	r3, [r4, #120]	@ tmp179, <variable>.PQUANT
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1204,
	streq	r0, [r4, #80]	@ length.1204, <variable>.PicCodType
	beq	.L250	@,
	cmp	r0, #3	@ length.1204,
	bne	.L251	@,
	ldr	ip, [fp, #-44]	@ info, info
	cmp	ip, #1	@ info,
	moveq	ip, #0	@ tmp186,
	streq	ip, [r4, #80]	@ tmp186, <variable>.PicCodType
	bne	.L246	@,
.L250:
	ldr	r3, [r4, #88]	@ prephitmp.1191, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1191,
	beq	.L259	@,
.L252:
	sub	r1, r3, #48	@ tmp189, prephitmp.1191,
	movw	r2, #8144	@ tmp190,
	cmp	r1, r2	@ tmp189, tmp190
	bhi	.L246	@,
	ldr	r0, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r3, r0, #48	@ tmp191, <variable>.pic_height_in_pixel,
	cmp	r3, r2	@ tmp191, tmp190
	bhi	.L246	@,
.L255:
	mov	r0, r4	@, pPictureHeader
	bl	Real8_CB_SetDimensions	@
	mov	r0, #1	@ Status,
	b	.L239	@
.L257:
	ldr	r0, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv8ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv8ParsePicParam.ptype
	b	.L240	@
.L245:
	.word	.L241
	.word	.L242
	.word	.L243
	.word	.L244
.L244:
	mov	r3, #2	@ tmp157,
	str	r3, [r4, #80]	@ tmp157, <variable>.PicCodType
.L240:
	ldr	r5, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #8144	@ tmp166,
	ldrb	r6, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	sub	lr, r5, #48	@ tmp164, <variable>.pic_width_in_pixel,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	ldrb	r5, [r4, #5]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	cmp	lr, r3	@ tmp164, tmp166
	add	r0, r4, #44
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	r6, [r4, #112]	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rounding
	str	r5, [r4, #116]	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	ip, [r4, #120]	@ <variable>.Rv8ParsePicParam.pquant, <variable>.PQUANT
	str	r0, [r4, #108]	@ <variable>.Rv8ParsePicParam.tr, <variable>.TR
	str	r1, [r4, #128]	@ <variable>.Rv8ParsePicParam.trb, <variable>.TRB
	str	r2, [r4, #132]	@ <variable>.Rv8ParsePicParam.dbq, <variable>.DBQUANT
	bhi	.L246	@,
	ldr	r1, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r2, r1, #48	@ tmp167, <variable>.pic_height_in_pixel,
	cmp	r2, r3	@ tmp167, tmp166
	bls	.L255	@,
	mvn	r0, #1	@ Status,
	b	.L253	@
.L243:
	mov	lr, #1	@ tmp156,
	str	lr, [r4, #80]	@ tmp156, <variable>.PicCodType
	b	.L240	@
.L242:
	mov	r6, #0	@ tmp154,
	str	r6, [r4, #20]	@ tmp154, <variable>.Rv8ParsePicParam.m_isForcedKey
	str	r6, [r4, #80]	@ tmp154, <variable>.PicCodType
	b	.L240	@
.L241:
	mov	r5, #0	@ tmp152,
	mov	r2, #1	@ tmp153,
	str	r5, [r4, #80]	@ tmp152, <variable>.PicCodType
	str	r2, [r4, #20]	@ tmp153, <variable>.Rv8ParsePicParam.m_isForcedKey
	b	.L240	@
.L251:
	cmp	r0, #5	@ length.1204,
	bne	.L246	@,
	ldr	r3, [fp, #-44]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L246	@,
	add	lr, r3, #2	@ tmp188, tmp188,
	str	lr, [r4, #80]	@ tmp188, <variable>.PicCodType
	b	.L250	@
.L259:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real8_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L246	@,
	ldr	r3, [r4, #88]	@ prephitmp.1191, <variable>.pic_width_in_pixel
	b	.L252	@
	.fnend
	.size	Real8_CB_GetPictureHeader, .-Real8_CB_GetPictureHeader
	.align	2
	.global	Real8_ArrangeVHBMem
	.type	Real8_ArrangeVHBMem, %function
Real8_ArrangeVHBMem:
	.fnstart
.LFB1363:
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
	ldr	r1, [r2, #96]	@ D.35462, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35462,
	ldrls	r3, [r2, #92]	@ prephitmp.1226, <variable>.pic_height_in_mb
	bls	.L262	@,
	ldr	r3, [r2, #92]	@ prephitmp.1226, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1226,
	bls	.L262	@,
	ldr	r1, [r4, #0]	@ D.35469, <variable>.pstExtraData
	ldr	r3, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L265	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L287	@,
.L266:
	ldr	r6, [r2, #84]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1228,
	ldr	r5, [r2, #88]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L273:
	sub	r7, fp, #84	@ tmp202,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp202
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp177,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #:lower16:74152	@ tmp188,
	strb	r3, [fp, #-82]	@ tmp177, FspInstCfg.s32RprEnable
	movt	r6, #:upper16:74152	@ tmp188,
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.1228, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r9	@ iftmp.422, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.422, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp202
	uxtbne	sl, sl	@ iftmp.423, PmvNum
	mov	r7, #0	@ tmp186,
	moveq	sl, #1	@ iftmp.423,
	strb	sl, [fp, #-76]	@ iftmp.423, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp186, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35518,
	movne	r0, r7	@ D.35466, tmp186
	beq	.L288	@,
.L264:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L265:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L266	@,
	ldr	r5, [r2, #88]	@ temp.1250, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #564]	@ D.35477, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1250, D.35477
	bhi	.L289	@,
	ldr	r3, [r2, #84]	@ prephitmp.1232, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #568]	@ prephitmp.1230, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1232, prephitmp.1230
	bhi	.L276	@,
	ldr	r6, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ temp.1253, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L279	@,
	add	sl, r9, #1	@ PmvNum.1255, temp.1253,
	cmp	sl, #17	@ PmvNum.1255,
	movge	sl, #17	@ PmvNum,
.L279:
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1228, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.1253,
	mov	r6, r3	@ PicHeight, prephitmp.1232
	b	.L273	@
.L262:
	mov	r2, r1	@, D.35462
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L264	@
.L288:
	ldr	lr, [r4, #0]	@ temp.1264, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L290	@,
	mov	ip, #1	@ tmp198,
	movw	r1, #11372	@ tmp197,
	mov	r0, ip	@ D.35466, tmp198
	strb	ip, [r4, r1]	@ tmp198, <variable>.CodecInfo.Imgbuf_allocated
	b	.L264	@
.L287:
	ldr	r0, [r2, #88]	@ D.35476, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #564]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35476, PicWidth
	bhi	.L291	@,
	ldr	r3, [r2, #84]	@ prephitmp.1236, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1236, PicHeight
	bhi	.L268	@,
	movw	r2, #11372	@ tmp165,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L264	@,
	ldr	r7, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ D.35487, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L272	@,
	add	sl, r9, #1	@ PmvNum.1247, D.35487,
	cmp	sl, #17	@ PmvNum.1247,
	movge	sl, #17	@ PmvNum,
.L272:
	add	r9, r9, #2	@ DecFsNum, D.35487,
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1228, <variable>.stChanOption.s32DisplayFrameNum
	b	.L273	@
.L289:
	ldr	lr, [r1, #568]	@ prephitmp.1230, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1232, <variable>.pic_height_in_pixel
.L276:
	mov	r2, r5	@, temp.1250
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L264	@
.L291:
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1236, <variable>.pic_height_in_pixel
.L268:
	mov	r2, r0	@, D.35476
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L264	@
.L290:
	mov	r0, r5	@, D.35518
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35466, D.35518
	b	.L264	@
	.fnend
	.size	Real8_ArrangeVHBMem, .-Real8_ArrangeVHBMem
	.align	2
	.global	Real8_GetImageBuffer
	.type	Real8_GetImageBuffer, %function
Real8_GetImageBuffer:
	.fnstart
.LFB1362:
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
	movw	r5, #:lower16:74152	@ tmp142,
	movt	r5, #:upper16:74152	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #43020	@ tmp144,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35413,
	mov	r1, r0	@ D.35413,
	str	r0, [r4, r6]	@ D.35413, <variable>.CodecInfo.CurFsID
	blt	.L299	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L300	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.35428, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35428,
	beq	.L296	@,
	ldr	r3, [r5, #476]	@ D.35431, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35431,
	beq	.L296	@,
	ldr	r0, [r5, #480]	@ D.35434, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35434,
	beq	.L296	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC11	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L296:
	movw	lr, #43020	@ tmp179,
	mov	r0, #1	@ D.35422,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L294:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L299:
	movw	r7, #43016	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	movw	r8, #43012	@ tmp152,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, #0	@ tmp155,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, r8]	@ tmp155, <variable>.CodecInfo.FwdFsID
	str	r6, [r4, r7]	@ tmp155, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #11375	@ tmp162,
	add	r1, r4, #43008	@, pCtx,
	strb	r6, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	add	r1, r1, #56	@,,
	str	r0, [r4, r8]	@ D.35420, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35420, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r6	@ D.35422, tmp155
	b	.L294	@
.L300:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #550	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35422, pLf
	b	.L294	@
	.fnend
	.size	Real8_GetImageBuffer, .-Real8_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL8DEC_Decode
	.type	REAL8DEC_Decode, %function
REAL8DEC_Decode:
	.fnstart
.LFB1381:
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
	sub	r7, fp, #296	@ tmp879,,
	sub	r8, fp, #156	@ tmp884,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #140	@,
	mov	r1, #0	@,
	mov	r0, r7	@, tmp879
	bl	memset	@
	mov	r1, #0	@,
	mov	r2, #64	@,
	mov	r0, r8	@, tmp884
	bl	memset	@
	movw	r3, #41720	@ tmp259,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight
	movw	ip, #41716	@ tmp256,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth
	mov	r0, #41728	@ tmp258,
	movw	ip, #41732	@ tmp269,
	cmp	r5, #0	@ pPacket,
	movw	r1, #41724	@ tmp255,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight_prev
	add	r6, r4, #41472	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp270,
	str	r0, [r4, ip]	@ tmp270, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #41760	@ tmp271,
	str	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp272,
	str	r2, [fp, #-236]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp272, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [fp, #-232]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r1, [fp, #-192]	@ tmp272, TmpPictureHeader.m_uTRWrap
	str	r2, [fp, #-228]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r3, [fp, #-224]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	str	r0, [fp, #-220]	@ tmp270, TmpPictureHeader.Fid
	beq	.L389	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11348	@,
	str	r0, [fp, #-304]	@, %sfp
	bl	__memzero	@
	movw	r0, #42876	@ tmp279,
	mov	sl, #0	@ tmp280,
	str	sl, [r4, r0]	@ tmp280, <variable>.CodecInfo.BsOffset
	movw	r2, #42896	@ tmp281,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #42880	@ tmp283,
	movw	r0, #11360	@ tmp285,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #42884	@ tmp287,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11368	@ tmp288,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ temp.1377, <variable>.LenInByte
	str	r2, [r4, ip]	@ temp.1377, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L304	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #42888	@ tmp292,
	movw	r1, #11364	@ tmp294,
	movw	r0, #42892	@ tmp296,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11369	@ tmp298,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L390	@,
	sub	r0, r2, #75	@ tmp317, temp.1377,
	movw	r3, #:lower16:3145652	@ tmp318,
	movt	r3, #:upper16:3145652	@ tmp318,
	cmp	r0, r3	@ tmp317, tmp318
	bhi	.L306	@,
.L393:
	movw	lr, #11360	@ tmp319,
	ldr	r1, [r4, lr]	@ D.36265, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.36265,
	beq	.L306	@,
	add	r5, r4, #43008	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #8	@,
	str	r0, [fp, #-316]	@, %sfp
	bhi	.L306	@,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp322, temp.1424,
	and	r1, r0, #65280	@ tmp324, temp.1424,
	and	r2, r0, #16711680	@ tmp327, temp.1424,
	orr	r3, ip, r0, lsr #24	@, tmp323, tmp322, temp.1424,
	orr	ip, r3, r1, asl #8	@, tmp326, tmp323, tmp324,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp329, tmp326, tmp327,
	str	r3, [fp, #-156]	@ tmp329, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #16711680	@ tmp333, temp.1392,
	mov	r1, r0, lsr #24	@ tmp331, temp.1392,
	and	r2, r0, #65280	@ tmp336, temp.1392,
	orr	r0, r1, r0, asl #24	@, tmp332, tmp331, temp.1392,
	orr	r3, r0, ip, lsr #8	@, tmp335, tmp332, tmp333,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, asl #8	@, tmp338, tmp335, tmp336,
	str	ip, [fp, #-152]	@ tmp338, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp340, D.36272,
	and	r1, r0, #65280	@ tmp342, D.36272,
	and	r2, r0, #16711680	@ tmp345, D.36272,
	orr	ip, r3, r0, lsr #24	@, tmp341, tmp340, D.36272,
	orr	r3, ip, r1, asl #8	@, tmp344, tmp341, tmp342,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp347, tmp344, tmp345,
	str	ip, [fp, #-148]	@ tmp347, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp351, temp.1516,
	mov	r1, r0, asl #24	@ tmp349, temp.1516,
	and	r2, r0, #16711680	@ tmp354, temp.1516,
	orr	r0, r1, r0, lsr #24	@, tmp350, tmp349, temp.1516,
	orr	ip, r0, r3, asl #8	@, tmp353, tmp350, tmp351,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp356, tmp353, tmp354,
	str	r3, [fp, #-144]	@ tmp356, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp358, temp.1526,
	and	r1, r0, #65280	@ tmp360, temp.1526,
	and	r2, r0, #16711680	@ tmp363, temp.1526,
	orr	r3, ip, r0, lsr #24	@, tmp359, tmp358, temp.1526,
	orr	ip, r3, r1, asl #8	@, tmp362, tmp359, tmp360,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp365, tmp362, tmp363,
	str	r3, [fp, #-140]	@ tmp365, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp369, temp.1536,
	mov	r1, r0, asl #24	@ tmp367, temp.1536,
	and	r2, r0, #16711680	@ tmp372, temp.1536,
	orr	r0, r1, r0, lsr #24	@, tmp368, tmp367, temp.1536,
	orr	r3, r0, ip, asl #8	@, tmp371, tmp368, tmp369,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp374, tmp371, tmp372,
	str	ip, [fp, #-136]	@ tmp374, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp376, temp.1546,
	and	r1, r0, #65280	@ tmp378, temp.1546,
	and	r2, r0, #16711680	@ tmp381, temp.1546,
	orr	ip, r3, r0, lsr #24	@, tmp377, tmp376, temp.1546,
	orr	r3, ip, r1, asl #8	@, tmp380, tmp377, tmp378,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp383, tmp380, tmp381,
	str	ip, [fp, #-132]	@ tmp383, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp387, temp.1556,
	mov	r1, r0, asl #24	@ tmp385, temp.1556,
	and	r2, r0, #16711680	@ tmp390, temp.1556,
	orr	r0, r1, r0, lsr #24	@, tmp386, tmp385, temp.1556,
	orr	ip, r0, r3, asl #8	@, tmp389, tmp386, tmp387,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp392, tmp389, tmp390,
	str	r3, [fp, #-128]	@ tmp392, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp394, temp.1566,
	and	r1, r0, #65280	@ tmp396, temp.1566,
	and	r2, r0, #16711680	@ tmp399, temp.1566,
	orr	r3, ip, r0, lsr #24	@, tmp395, tmp394, temp.1566,
	orr	ip, r3, r1, asl #8	@, tmp398, tmp395, tmp396,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp401, tmp398, tmp399,
	str	r3, [fp, #-124]	@ tmp401, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp405, temp.1576,
	mov	r1, r0, asl #24	@ tmp403, temp.1576,
	and	r2, r0, #16711680	@ tmp408, temp.1576,
	orr	r0, r1, r0, lsr #24	@, tmp404, tmp403, temp.1576,
	orr	r3, r0, ip, asl #8	@, tmp407, tmp404, tmp405,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp410, tmp407, tmp408,
	str	ip, [fp, #-120]	@ tmp410, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp412, temp.1586,
	and	r1, r0, #65280	@ tmp414, temp.1586,
	and	r2, r0, #16711680	@ tmp417, temp.1586,
	orr	ip, r3, r0, lsr #24	@, tmp413, tmp412, temp.1586,
	orr	r3, ip, r1, asl #8	@, tmp416, tmp413, tmp414,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp419, tmp416, tmp417,
	str	ip, [fp, #-116]	@ tmp419, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp423, temp.1596,
	mov	r1, r0, asl #24	@ tmp421, temp.1596,
	and	r2, r0, #16711680	@ tmp426, temp.1596,
	orr	r0, r1, r0, lsr #24	@, tmp422, tmp421, temp.1596,
	orr	ip, r0, r3, asl #8	@, tmp425, tmp422, tmp423,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp428, tmp425, tmp426,
	str	r3, [fp, #-112]	@ tmp428, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp430, temp.1606,
	and	r1, r0, #65280	@ tmp432, temp.1606,
	and	r2, r0, #16711680	@ tmp435, temp.1606,
	orr	r3, ip, r0, lsr #24	@, tmp431, tmp430, temp.1606,
	orr	ip, r3, r1, asl #8	@, tmp434, tmp431, tmp432,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp437, tmp434, tmp435,
	str	r3, [fp, #-108]	@ tmp437, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp441, temp.1616,
	mov	r1, r0, asl #24	@ tmp439, temp.1616,
	and	r2, r0, #16711680	@ tmp444, temp.1616,
	orr	r0, r1, r0, lsr #24	@, tmp440, tmp439, temp.1616,
	orr	r3, r0, ip, asl #8	@, tmp443, tmp440, tmp441,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp446, tmp443, tmp444,
	str	ip, [fp, #-104]	@ tmp446, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp448, temp.1626,
	and	r1, r0, #65280	@ tmp450, temp.1626,
	and	r2, r0, #16711680	@ tmp453, temp.1626,
	orr	ip, r3, r0, lsr #24	@, tmp449, tmp448, temp.1626,
	orr	r3, ip, r1, asl #8	@, tmp452, tmp449, tmp450,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp455, tmp452, tmp453,
	str	ip, [fp, #-100]	@ tmp455, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r1, r0, #65280	@ tmp459, temp.1381,
	mov	r3, r0, asl #24	@ tmp457, temp.1381,
	and	r2, r0, #16711680	@ tmp462, temp.1381,
	orr	ip, r3, r0, lsr #24	@, tmp458, tmp457, temp.1381,
	orr	r3, ip, r1, asl #8	@, tmp461, tmp458, tmp459,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	orr	ip, r3, r2, lsr r1	@, tmp464, tmp461, tmp462,
	str	ip, [fp, #-96]	@ tmp464, RPR_Sizes
	bl	Real8_CB_GetBits	@
	movw	r2, #41848	@ tmp465,
	cmp	r0, #255	@ D.36283,
	add	r0, r0, #1	@ D.36285, D.36283,
	str	r0, [r4, r2]	@ D.36285, <variable>.CodecInfo.TotalSliceNum
	bhi	.L306	@,
	cmp	r0, #0	@ D.36285,
	addeq	r1, r4, #41728	@, pCtx,
	streq	r1, [fp, #-320]	@, %sfp
	moveq	r3, r0	@ D.36286, D.36285
	beq	.L308	@,
	add	sl, r4, #41728	@, pCtx,
	str	sl, [fp, #-320]	@, %sfp
	ldr	r9, [fp, #-320]	@, %sfp
	movw	lr, #:lower16:3145727	@ tmp896,
	movt	lr, #:upper16:3145727	@ tmp896,
	str	r6, [fp, #-324]	@ pPictureHeader, %sfp
	add	sl, r9, #124	@ ivtmp.1370,,
	mov	r9, #0	@ i.1391,
	mov	r6, lr	@ tmp896, tmp896
	b	.L309	@
.L392:
	movw	lr, #41848	@,
	ldr	r3, [r4, lr]	@ D.36286, <variable>.CodecInfo.TotalSliceNum
	cmp	r3, r9	@ D.36286, i.1391
	bls	.L391	@,
.L309:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r9, r9, #1	@ i.1391, i.1391,
	bl	Real8_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp468, SliceByteOffset,
	and	r2, r0, #65280	@ tmp470, SliceByteOffset,
	orr	ip, r1, r0, lsr #24	@, tmp469, tmp468, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp473, SliceByteOffset,
	orr	r3, ip, r2, asl #8	@, tmp472, tmp469, tmp470,
	orr	r0, r3, r1, lsr #8	@, D.36301, tmp472, tmp473,
	str	r0, [sl, #0]	@ D.36301, <variable>.CodecInfo.SliceByteOffset
	cmp	r0, r6	@ D.36301, tmp896
	add	sl, sl, #4	@ ivtmp.1370, ivtmp.1370,
	ble	.L392	@,
.L306:
	mov	r0, #0	@ D.36229,
.L303:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L390:
	movw	r6, #:lower16:74152	@ tmp302,
	movt	r6, #:upper16:74152	@ tmp302,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, sl	@ D.36229, tmp280
	b	.L303	@
.L304:
	movw	r0, #42892	@ tmp312,
	movw	r3, #:lower16:3145652	@ tmp318,
	str	sl, [r4, r0]	@ tmp280, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145652	@ tmp318,
	sub	r0, r2, #75	@ tmp317, temp.1377,
	movw	ip, #11369	@ tmp314,
	cmp	r0, r3	@ tmp317, tmp318
	movw	r1, #42888	@ tmp308,
	movw	lr, #11364	@ tmp310,
	strb	sl, [r4, ip]	@ tmp280, <variable>.CodecInfo.IsLastSeg1
	str	sl, [r4, r1]	@ tmp280, <variable>.CodecInfo.BsPhyAddr1
	str	sl, [r4, lr]	@ tmp280, <variable>.CodecInfo.BsVirAddr1
	bls	.L393	@,
	b	.L306	@
.L389:
	movw	lr, #42912	@ tmp277,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36229, pPacket
	b	.L303	@
.L391:
	ldr	r6, [fp, #-324]	@ pPictureHeader, %sfp
.L308:
	ldr	r0, [fp, #-320]	@, %sfp
	sub	sl, r3, #1	@ pretmp.1336, D.36286,
	tst	sl, #1	@ pretmp.1336,
	mov	r1, #0	@ i,
	add	r9, r0, #128	@,,
	str	r9, [fp, #-324]	@, %sfp
	mov	r2, r9	@ ivtmp.1472,
	bne	.L394	@,
.L382:
	mov	r9, r5	@ pBs, pBs
	b	.L310	@
.L311:
	ldr	r5, [r2, #0]	@ D.36307, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r2, #-4]	@ D.36302, <variable>.CodecInfo.SliceByteOffset
	cmp	r5, ip	@ D.36307, D.36302
	ble	.L306	@,
	ldr	ip, [r2, #4]	@ D.36307, <variable>.CodecInfo.SliceByteOffset
	add	r2, r0, #4	@ ivtmp.1472, tmp901,
	ldr	lr, [r0, #-4]	@ D.36302, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.36307, D.36302
	ble	.L306	@,
.L310:
	cmp	r1, sl	@ i, pretmp.1336
	add	r5, r1, #1	@ tmp900, i,
	add	r1, r5, #1	@ i, tmp900,
	add	r0, r2, #4	@ tmp901, ivtmp.1472,
	bcc	.L311	@,
	mov	r5, r9	@ pBs, pBs
.L379:
	movw	sl, #41852	@ tmp479,
	mov	lr, r3, asl #3	@ tmp478, D.36286,
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	sl, lr, #66	@ PrevHeaderBytes, tmp478,
	add	r3, sl, r1	@, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	str	r3, [fp, #-332]	@, %sfp
	cmp	sl, #3145728	@ PrevHeaderBytes,
	cmplt	r3, #3145728	@,,
	movlt	r9, #0	@, tmp489
	movge	r9, #1	@, tmp489
	bge	.L306	@,
	ldr	r1, [fp, #-332]	@, %sfp
	cmp	r1, #73	@,
	ble	.L306	@,
	movw	r0, #42884	@ tmp490,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r1, r2	@ D.36322,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.36322,
	ble	.L306	@,
	movw	r0, #11360	@ tmp492,
	ldr	r3, [fp, #-332]	@, %sfp
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	sub	ip, fp, #92	@,,
	str	ip, [fp, #-344]	@, %sfp
	add	r1, r3, lr	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	ldr	r1, [fp, #-316]	@, %sfp
	ldr	ip, .L410	@ tmp497,
	sub	r2, fp, #44	@,,
	str	r8, [fp, #-284]	@ tmp884, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	lr, r2, r1, asl #2	@, tmp501,,,
	str	r1, [fp, #-280]	@, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp904,,,,
	ldr	r8, [fp, #-344]	@ tmp496, %sfp
	stmia	r8!, {r0, r1, r2, r3}	@ tmp496,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp905,,,,
	ldr	ip, [ip, #0]	@ C.436, C.436
	stmia	r8!, {r0, r1, r2, r3}	@ tmp496,,,,
	mov	r0, r5	@, pBs
	str	ip, [r8, #0]	@ C.436, size
	mov	r1, r7	@, tmp879
	ldr	ip, [lr, #-48]	@ tmp503, size
	str	ip, [fp, #-288]	@ tmp503, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L395	@,
	movw	r2, #11372	@ tmp507,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L313	@,
	movw	r8, #:lower16:g_event_report	@ tmp509,
	movt	r8, #:upper16:g_event_report	@ tmp509,
	ldr	r3, [r8, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L314	@,
	movw	r8, #41752	@ tmp511,
	movw	r1, #41748	@ tmp513,
	ldrh	r2, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	lr, #:lower16:74152	@ tmp518,
	ldrh	ip, [fp, #-200]	@, TmpPictureHeader.pic_width_in_mb
	movt	lr, #:upper16:74152	@ tmp518,
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
.L314:
	movw	r8, #:lower16:74152	@ tmp521,
	movt	r8, #:upper16:74152	@ tmp521,
	movw	ip, #43016	@ tmp522,
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	add	r9, r4, #43008	@ D.36346, pCtx,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r9, r9, #56	@ D.36346, D.36346,
	str	ip, [fp, #-336]	@,
	bl	FSP_ClearLogicFs	@
	movw	lr, #43012	@,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r0, #43012	@,
	mov	r3, #0	@ tmp526,
	str	r3, [r4, r0]	@ tmp526, <variable>.CodecInfo.FwdFsID
	ldr	ip, [fp, #-336]	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r3, [r4, ip]	@ tmp526, <variable>.CodecInfo.BwdFsID
	str	r3, [fp, #-340]	@,
	str	ip, [fp, #-336]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r2, #43012	@,
	movw	ip, #11375	@ tmp532,
	str	r0, [r4, r2]	@ D.36345, <variable>.CodecInfo.FwdFsID
	ldr	r1, [fp, #-340]	@,
	strb	r1, [r4, ip]	@ tmp526, <variable>.CodecInfo.RefNum
	mov	r1, r9	@, D.36346
	ldr	r3, [fp, #-336]	@,
	str	r0, [r4, r3]	@ D.36345, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-200]	@ prephitmp.1340, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.1340,
	ldrhi	r3, [fp, #-204]	@ prephitmp.1403, TmpPictureHeader.pic_height_in_mb
	bhi	.L316	@,
	ldr	r3, [fp, #-204]	@ prephitmp.1403, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1403,
	bhi	.L316	@,
	ldr	r1, [r4, #0]	@ D.36353, <variable>.pstExtraData
	ldr	r8, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r8, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L318	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L396	@,
.L318:
	movw	r2, #:lower16:74152	@ tmp542,
	movt	r2, #:upper16:74152	@ tmp542,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L320	@,
.L383:
	ldr	r2, [fp, #-200]	@ prephitmp.1340, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-204]	@ prephitmp.1403, TmpPictureHeader.pic_height_in_mb
.L319:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r7	@, tmp879
	bl	Real8_ArrangeVHBMem	@
	subs	r8, r0, #0	@ D.36364,
	beq	.L397	@,
.L313:
	mov	r1, r7	@, tmp879
	mov	r2, #140	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11370	@ tmp550,
	mov	r0, r4	@, pCtx
	ldr	r7, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r7, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real8_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36370,
	beq	.L398	@,
	movw	r1, #:lower16:74152	@,
	movt	r1, #:upper16:74152	@,
	movw	r9, #43020	@ tmp557,
	str	r1, [fp, #-320]	@, %sfp
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	str	r9, [fp, #-336]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [fp, #-336]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L322	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp573,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r8, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	lr, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r8, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	sub	lr, fp, #320	@,,
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r3, #0	@,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [r8, #56]	@ tmp573, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@, pImg,
	strd	r8, [lr, #4]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	str	ip, [fp, #-336]	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #41736	@ tmp577,
	ldr	ip, [fp, #-336]	@,
	ldr	r3, [r4, r0]	@ D.36389, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.36389,
	beq	.L399	@,
	cmp	r3, #1	@ D.36389,
	beq	.L400	@,
	movw	r7, #11375	@ tmp582,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	addeq	r3, r3, #1	@ iftmp.459, iftmp.459,
	bne	.L326	@,
.L327:
	movw	r8, #43012	@ tmp586,
	movw	r7, #43016	@ tmp587,
	ldr	r2, [r4, r8]	@ prephitmp.1338, <variable>.CodecInfo.FwdFsID
	movw	r0, #11375	@ tmp584,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r3, [r4, r0]	@ iftmp.459, <variable>.CodecInfo.RefNum
	cmp	r2, r1	@ prephitmp.1338, <variable>.CodecInfo.BwdFsID
	beq	.L328	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:74152	@ tmp590,
	movt	r3, #:upper16:74152	@ tmp590,
	mov	r2, #0	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r7]	@ prephitmp.1338, <variable>.CodecInfo.BwdFsID
.L328:
	movw	r9, #43020	@ tmp595,
	movw	r7, #:lower16:74152	@ tmp597,
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r7, #:upper16:74152	@ tmp597,
	movw	lr, #43012	@ tmp593,
	movw	r1, #43016	@ tmp594,
	str	r2, [r4, lr]	@ prephitmp.1338, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	str	ip, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r1, ip	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	lr, [fp, #-340]	@,
	bl	FSP_SetRef	@
	ldr	r8, [fp, #-340]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	movt	r1, #:upper16:.LC20	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L329:
	movw	r8, #:lower16:74152	@ tmp607,
	movt	r8, #:upper16:74152	@ tmp607,
	movw	r7, #43020	@ tmp608,
	movw	r9, #43012	@ tmp610,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	mov	r9, r0	@ pFwd,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	movw	r8, #43016	@ tmp612,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r9, #0	@, pFwd,
	mov	r8, r0	@ pBwd,
	beq	.L330	@,
	cmp	r0, #0	@ pBwd,
	beq	.L330	@,
	ldr	r3, [r7, #472]	@ D.36420, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36420,
	beq	.L332	@,
	ldr	lr, [r7, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L332	@,
	ldr	ip, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L332	@,
	ldr	r2, [r0, #472]	@ D.36427, <variable>.pstDecodeFs
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	cmp	r2, #0	@ D.36427,
	ldrne	lr, [r2, #12]	@ iftmp.463, <variable>.PhyAddr
	ldreq	lr, [r3, #12]	@ iftmp.463, <variable>.PhyAddr
	str	lr, [r4, #56]	@ iftmp.463, <variable>.Rv8DecParam.BwdRefPhyAddr
	ldr	r0, [r9, #472]	@ D.36434, <variable>.pstDecodeFs
	cmp	r0, #0	@ D.36434,
	ldreq	r0, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r0, #12]	@ iftmp.464, <variable>.PhyAddr
	mov	r0, #13	@,
	str	ip, [r4, #60]	@ iftmp.464, <variable>.Rv8DecParam.FwdRefPhyAddr
	ldr	r3, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36439, <variable>.PhyAddr
	str	r2, [r4, #64]	@ D.36439, <variable>.Rv8DecParam.CurPicPhyAddr
	ldr	r3, [r7, #484]	@, <variable>.PmvAddr
	str	r3, [fp, #-328]	@, %sfp
	str	r3, [r4, #80]	@, <variable>.Rv8DecParam.CurrPmvPhyAddr
	ldr	r3, [r8, #484]	@, <variable>.PmvAddr
	str	r3, [fp, #-320]	@, %sfp
	str	r3, [r4, #84]	@, <variable>.Rv8DecParam.ColPmvPhyAddr
	ldr	r3, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36445, <variable>.PhyAddr
	stmia	sp, {ip, lr}	@ phole stm
	str	r3, [r4, #68]	@ D.36445, <variable>.Rv8DecParam.DispFramePhyAddr
	ldr	ip, [fp, #-328]	@, %sfp
	ldr	lr, [fp, #-320]	@, %sfp
	str	ip, [sp, #8]	@,
	str	lr, [sp, #12]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #41736	@ tmp635,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	ip, [r4, #72]	@ <variable>.Stride, <variable>.Rv8DecParam.DDRStride
	beq	.L401	@,
.L338:
	movw	r9, #41764	@ tmp657,
	movw	ip, #41776	@ tmp659,
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r1, #41752	@ tmp662,
	sub	lr, r1, #4	@ tmp664, tmp664,
	movw	r2, #41736	@ tmp660,
	str	r3, [r7, #492]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	movw	r7, #42936	@ tmp666,
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	add	r8, r7, #4	@ tmp668, tmp668,
	movw	r3, #41840	@ tmp670,
	movw	ip, #41844	@ tmp672,
	ldr	r9, [r4, r2]	@ D.36751, <variable>.CodecInfo.PictureHeader.PicCodType
	str	r0, [fp, #-316]	@, %sfp
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r9, #2	@ D.36751,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r0, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	mov	r0, r5	@, pBs
	str	r7, [r4, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	str	ip, [r4, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	str	r1, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	str	lr, [r4, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	r8, [r4, #40]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv8DecParam.PrevPicMb0QP
	strb	r9, [r4, #20]	@ D.36751, <variable>.Rv8DecParam.PicCodingType
	ldr	lr, [fp, #-316]	@, %sfp
	strne	lr, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	lr, [r4, #32]	@, <variable>.Rv8DecParam.PQUANT
	bl	BsPos	@
	movw	ip, #41816	@ tmp675,
	add	r2, ip, #32	@ tmp678, tmp678,
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r0, r0, #-2147483641	@ tmp676,,
	submi	r0, r0, #1	@ tmp908, tmp676,
	mvnmi	r0, r0, asl #29	@ tmp909, tmp908,
	mvnmi	r0, r0, lsr #29	@ tmp909, tmp909,
	addmi	r0, r0, #1	@ tmp676, tmp909,
	cmp	r7, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r0, [r4, ip]	@ tmp676, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L402	@,
	movw	ip, #41856	@ tmp688,
	sub	r1, ip, #4	@ tmp689, tmp689,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L385:
	rsb	lr, r3, r7	@ tmp690, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r7, #41820	@ tmp693,
	mov	r9, lr, asl #3	@ D.36497, tmp690,
	bl	BsPos	@
	rsb	r0, r0, r9	@ tmp694,, D.36497
	str	r0, [r4, r7]	@ tmp694, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	r7, #42880	@ tmp695,
	ldr	ip, [fp, #-332]	@, %sfp
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, pBs
	add	r9, ip, r3	@ D.36503,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	r2, #41848	@ tmp724,
	movw	r1, #41780	@ tmp709,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	r3, #41772	@ tmp711,
	ldr	r8, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	ip, #41816	@ tmp715,
	str	r8, [r4, #116]	@, <variable>.osvquant
	ldr	r8, [r4, r3]	@ D.36509, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	cmp	r0, #0	@ D.36504,
	add	r2, r0, #7	@ tmp699, D.36504,
	movge	r2, r0	@ D.36504, D.36504
	cmp	lr, #1	@ <variable>.CodecInfo.TotalSliceNum,
	add	lr, r3, #48	@ tmp717, tmp717,
	movw	r0, #41796	@ tmp708,
	add	r3, r0, #4	@ tmp710, tmp710,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	lr, #41824	@ tmp701,
	str	r1, [r4, #104]	@, <variable>.StreamLength
	add	r1, r9, r2, asr #3	@, D.36507, D.36503, D.36504,
	ldr	r9, [fp, #-316]	@, %sfp
	movw	r2, #41836	@,
	str	r9, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r0, #41804	@ tmp712,
	ldr	r9, [r4, #116]	@, <variable>.osvquant
	str	r8, [r4, r0]	@ D.36509, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	r0, r0, #4	@ tmp713, tmp713,
	str	r9, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.osvquant
	mov	r3, #0	@ tmp703,
	str	r3, [r4, r0]	@ tmp703, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	mov	r9, #1	@ tmp723,
	str	r1, [r4, #88]	@ D.36507, <variable>.StreamPhyAddr
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r8, [r4, #112]	@ D.36509, <variable>.dblk_filter_passthrough
	movw	r8, #41828	@,
	str	r3, [r4, #124]	@ tmp703, <variable>.first_mb_in_slice
	str	r0, [r4, #96]	@, <variable>.StreamBitOffset
	str	r3, [r4, r8]	@ tmp703, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	r8, #41832	@,
	str	r1, [r4, lr]	@ D.36507, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	str	r3, [r4, r8]	@ tmp703, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r3, [r4, r2]	@ tmp703, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r3, [r4, #92]	@ tmp703, <variable>.StreamPhyAddr
	str	r3, [r4, #100]	@ tmp703, <variable>.StreamBitOffset
	str	r3, [r4, #108]	@ tmp703, <variable>.StreamLength
	ldr	r0, [fp, #-316]	@, %sfp
	str	r9, [r4, #44]	@ tmp723, <variable>.Rv8DecParam.TotalSliceNum
	str	r0, [r4, #120]	@, <variable>.sliceqp
	strls	r9, [fp, #-328]	@ tmp723, %sfp
	bls	.L349	@,
	movw	r1, #41856	@ tmp726,
	ldr	r8, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, r8	@ PrevOffsetBytes.1483, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, #3145728	@ PrevOffsetBytes.1483,
	bge	.L388	@,
	cmp	r8, #73	@ PrevOffsetBytes.1483,
	ble	.L388	@,
	movw	ip, #42884	@ tmp729,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, r2	@ temp.1405, PrevOffsetBytes.1483, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1405,
	strgt	r9, [fp, #-328]	@ i.1491, %sfp
	strgt	r9, [fp, #-320]	@ i.1491, %sfp
	bgt	.L354	@,
	b	.L388	@
.L355:
	movw	r3, #41848	@,
	add	r9, r9, #1	@ i.1491, i.1491,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	ip, r9	@ <variable>.CodecInfo.TotalSliceNum, i.1491
	bls	.L349	@,
	ldr	r3, [fp, #-324]	@, %sfp
	ldr	r0, [r3, #4]	@ tmp731, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, r0	@ PrevOffsetBytes.1483, PrevHeaderBytes, tmp731
	cmp	r8, #3145728	@ PrevOffsetBytes.1483,
	bge	.L388	@,
	cmp	r8, #73	@ PrevOffsetBytes.1483,
	ble	.L388	@,
	ldr	ip, [fp, #-324]	@, %sfp
	movw	r1, #42884	@ tmp735,
	add	r2, ip, #4	@,,
	str	r2, [fp, #-324]	@, %sfp
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, lr	@ temp.1405, PrevOffsetBytes.1483, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1405,
	ble	.L388	@,
.L354:
	movw	r0, #11360	@ tmp739,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r8, r1	@, PrevOffsetBytes.1483, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	sub	lr, fp, #56	@,,
	str	r6, [sp, #4]	@ pPictureHeader,
	str	lr, [sp, #0]	@,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L355	@,
	movw	r2, #41752	@,
	ldr	r3, [fp, #-48]	@, iSliceMBA
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r7, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r3, [fp, #-332]	@, %sfp
	beq	.L403	@,
	ldr	r3, [fp, #-56]	@ iSQUANT.472, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r2, [fp, #-316]	@, %sfp
	cmp	r3, #0	@ iSQUANT.472,
	movge	r2, r3	@, iSQUANT.472
	str	r2, [fp, #-316]	@, %sfp
	bl	BsPos	@
	movw	r1, #41848	@,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	lr, #41816	@,
	sub	ip, r3, #1	@ D.36311, <variable>.CodecInfo.TotalSliceNum,
	ands	r0, r0, #-2147483641	@ tmp750,,
	submi	r0, r0, #1	@ tmp910, tmp750,
	mvnmi	r0, r0, asl #29	@ tmp911, tmp910,
	mvnmi	r0, r0, lsr #29	@ tmp911, tmp911,
	addmi	r0, r0, #1	@ tmp750, tmp911,
	cmp	ip, r9	@ D.36311, i.1491
	str	r0, [r4, lr]	@ tmp750, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L404	@,
	cmp	r9, #254	@ i.1491,
	bhi	.L405	@,
	ldr	r3, [fp, #-324]	@, %sfp
	mov	r0, r5	@, pBs
	ldr	r2, [r3, #4]	@ tmp770, <variable>.CodecInfo.SliceByteOffset
	ldr	r3, [r3, #0]	@ tmp771, <variable>.CodecInfo.SliceByteOffset
.L386:
	rsb	r3, r3, r2	@ tmp769, tmp771, tmp770
	mov	r7, r3, asl #3	@ D.36541, tmp769,
	bl	BsPos	@
	movw	ip, #41820	@ tmp772,
	rsb	r0, r0, r7	@ tmp773,, D.36541
	movw	r7, #42880	@,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r7, #0	@ tmp782,
	str	r0, [r4, ip]	@ tmp773, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	add	r8, r8, r1	@ temp.1476, PrevOffsetBytes.1483, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	ldr	lr, [fp, #-320]	@, %sfp
	mov	r3, #44	@ tmp795,
	movw	r2, #41780	@ tmp788,
	movw	r1, #41772	@ tmp790,
	ldr	r2, [r4, r2]	@ temp.1477, <variable>.CodecInfo.PictureHeader.OSVQUANT
	mla	r3, r3, lr, r4	@ tmp796, tmp795,, pCtx
	ldr	lr, [fp, #-316]	@, %sfp
	ldr	r1, [r4, r1]	@ temp.1478, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	add	ip, r0, #7	@ tmp778, D.36545,
	cmp	r0, r7	@ D.36545,
	movlt	r0, ip	@ D.36545, tmp778
	movw	ip, #41796	@ tmp787,
	str	lr, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	add	ip, ip, #4	@ tmp789, tmp789,
	add	lr, ip, #4	@ tmp791, tmp791,
	add	r0, r8, r0, asr #3	@, D.36548, temp.1476, D.36545,
	str	r2, [r4, ip]	@ temp.1477, <variable>.CodecInfo.SliceHeader.osvquant
	add	ip, lr, #4	@ tmp792, tmp792,
	str	r1, [r4, lr]	@ temp.1478, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	ldr	r8, [fp, #-332]	@, %sfp
	str	r8, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	movw	ip, #41832	@,
	ldr	lr, [fp, #-320]	@, %sfp
	add	r8, lr, #1	@,,
	str	r8, [fp, #-320]	@, %sfp
	cmp	r8, #123	@,
	movw	r8, #41828	@,
	str	r7, [r4, r8]	@ tmp782, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	lr, #41824	@,
	str	r7, [r4, ip]	@ tmp782, <variable>.CodecInfo.SliceHeader.bit_len_1
	sub	r8, r8, #12	@,,
	add	ip, lr, #12	@,,
	str	r0, [r4, lr]	@ D.36548, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	str	r7, [r4, ip]	@ tmp782, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r0, [r3, #88]	@ D.36548, <variable>.StreamPhyAddr
	movw	r0, #41820	@ tmp810,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	lr, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	ip, [fp, #-332]	@, %sfp
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r1, [r3, #112]	@ temp.1478, <variable>.dblk_filter_passthrough
	str	ip, [r3, #124]	@, <variable>.first_mb_in_slice
	str	lr, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r2, [r3, #116]	@ temp.1477, <variable>.osvquant
	str	r7, [r3, #92]	@ tmp782, <variable>.StreamPhyAddr
	str	r7, [r3, #100]	@ tmp782, <variable>.StreamBitOffset
	str	r7, [r3, #108]	@ tmp782, <variable>.StreamLength
	ldr	ip, [fp, #-316]	@, %sfp
	str	ip, [r3, #120]	@, <variable>.sliceqp
	ldr	r2, [fp, #-320]	@, %sfp
	str	r2, [r4, #44]	@, <variable>.Rv8DecParam.TotalSliceNum
	ble	.L355	@,
	ldr	r2, [fp, #-328]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r2, [r4, #48]	@, <variable>.Rv8DecParam.FstSlcGrp
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L406	@,
	ldr	r1, [fp, #-304]	@, %sfp
	cmp	r1, #0	@,
	str	r1, [r4, #4]	@, <variable>.pRv8DecParam
	beq	.L407	@,
	ldr	r3, [r4, #0]	@ temp.1482, <variable>.pstExtraData
	ldr	r2, [r3, #680]	@ D.36561, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36561,
	beq	.L408	@,
	cmp	r2, #2	@ D.36561,
	beq	.L409	@,
.L365:
	mov	r0, #0	@,
	str	r0, [fp, #-328]	@, %sfp
	str	r0, [fp, #-320]	@, %sfp
	b	.L355	@
.L394:
	cmp	r1, sl	@ i, pretmp.1336
	bcs	.L379	@,
	ldr	r9, [fp, #-324]	@, %sfp
	ldr	r1, [fp, #-320]	@, %sfp
	ldr	ip, [r9, #0]	@ D.36307, <variable>.CodecInfo.SliceByteOffset
	add	r2, r1, #132	@ ivtmp.1472,,
	ldr	r0, [r9, #-4]	@ D.36302, <variable>.CodecInfo.SliceByteOffset
	mov	r1, #1	@ i,
	cmp	ip, r0	@ D.36307, D.36302
	bgt	.L382	@,
	b	.L306	@
.L395:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36229, tmp489
	b	.L303	@
.L316:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L398:
	movw	lr, #42912	@ tmp555,
	movw	r1, #:lower16:.LC17	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36229, D.36370
	b	.L303	@
.L401:
	movw	r1, #41764	@ tmp637,
	ldr	r2, [r9, #492]	@ D.36460, <variable>.TR
	ldr	r9, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	r8, [r8, #492]	@ <variable>.TR, <variable>.TR
	subs	r3, r9, r2	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36460
	rsb	r8, r2, r8	@ trd, D.36460, <variable>.TR
	movwmi	r2, #41760	@ tmp640,
	ldrmi	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r3, r3, r2	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r8, #0	@ trd,
	movwlt	r2, #41760	@ tmp642,
	ldrlt	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r8, r8, r2	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, r8	@ trb, trd
	movgt	r3, #0	@ trb,
	cmp	r8, #0	@ trd,
	movle	r0, #0	@ prephitmp.1446,
	movle	r2, r0	@ prephitmp.1445, prephitmp.1446
	ble	.L343	@,
	mov	r1, r8	@, trd
	mov	r0, r3, asl #14	@, trb,
	str	r3, [fp, #-340]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-340]	@,
	mov	r1, r8	@, trd
	mov	ip, r0	@ prephitmp.1445,
	rsb	r0, r3, r8	@ tmp648, trb, trd
	str	ip, [fp, #-336]	@,
	mov	r0, r0, asl #14	@, tmp648,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-340]	@,
	ldr	r2, [fp, #-336]	@,
.L343:
	movw	r9, #42932	@ tmp654,
	movw	r1, #42928	@ tmp653,
	str	r8, [r4, r9]	@ trd, <variable>.CodecInfo.trd
	add	r8, r9, #4	@ tmp655, tmp655,
	add	lr, r8, #4	@ tmp656, tmp656,
	str	r3, [r4, r1]	@ trb, <variable>.CodecInfo.trb
	str	r2, [r4, r8]	@ prephitmp.1445, <variable>.CodecInfo.Ratio0
	str	r0, [r4, lr]	@ prephitmp.1446, <variable>.CodecInfo.Ratio1
	b	.L338	@
.L332:
	movw	r3, #:lower16:74152	@ tmp626,
	movt	r3, #:upper16:74152	@ tmp626,
	movw	r1, #43020	@ tmp627,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L330:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, .L410+4	@,
	movt	r1, #:upper16:.LC21	@,
	movw	r3, #1894	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L400:
	movw	ip, #11375	@ tmp580,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L306	@,
.L326:
	mov	r3, #2	@ iftmp.459,
	b	.L327	@
.L396:
	movw	lr, #11372	@ tmp540,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L319	@,
.L320:
	mov	r0, r9	@, D.36346
	bl	ResetVoQueue	@
	b	.L383	@
.L399:
	movw	r0, #11375	@ tmp603,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L329	@,
	ldr	r3, [fp, #-320]	@, %sfp
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L388:
	movw	lr, #:lower16:74152	@ tmp869,
	movt	lr, #:upper16:74152	@ tmp869,
	movw	r1, #43020	@ tmp870,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L397:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.36229, D.36364
	b	.L303	@
.L402:
	movw	lr, #42884	@ tmp680,
	movw	r7, #41852	@ tmp683,
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, sl, r8	@ tmp681, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	b	.L385	@
.L404:
	add	r1, r3, #10432	@ tmp757, <variable>.CodecInfo.TotalSliceNum,
	movw	r0, #42884	@ tmp754,
	add	lr, r1, #29	@ tmp757, tmp757,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	add	r7, r4, lr, asl #2	@, tmp761, pCtx, tmp757,
	rsb	r2, sl, ip	@ tmp755, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r7, #4]	@ tmp764, <variable>.CodecInfo.SliceByteOffset
	b	.L386	@
.L349:
	ldr	r2, [fp, #-328]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r2, [r4, #48]	@, <variable>.Rv8DecParam.FstSlcGrp
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@ D.36578,
	bne	.L388	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11352	@ tmp871,
	ldr	r2, [fp, #-304]	@, %sfp
	ldr	ip, [lr, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r2, [r4, #4]	@, <variable>.pRv8DecParam
	str	ip, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Rv8DecParam.Compress_en
	b	.L303	@
.L403:
	movw	r3, #:lower16:74152	@ tmp747,
	movt	r3, #:upper16:74152	@ tmp747,
	mov	r2, r0	@, found_ssc
.L387:
	movw	lr, #43020	@ tmp851,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.36229, tmp782
	b	.L303	@
.L406:
	movw	r3, #:lower16:74152	@ tmp850,
	mov	r2, #1	@,
	movt	r3, #:upper16:74152	@ tmp850,
	b	.L387	@
.L405:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC24	@,
	movw	r2, #2045	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36229,
	b	.L303	@
.L322:
	ldr	r9, [fp, #-320]	@, %sfp
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.36229, pImg
	b	.L303	@
.L409:
	ldr	r2, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L365	@,
	ldr	r1, [fp, #-304]	@, %sfp
	ldrb	lr, [r1, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	lr, #2	@ <variable>.PicCodingType,
	bne	.L365	@,
	movw	r1, #:lower16:74152	@ tmp863,
	movt	r1, #:upper16:74152	@ tmp863,
	movw	lr, #43020	@ tmp864,
	mov	r2, r7	@, tmp782
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r7, [r4, #4]	@ tmp782, <variable>.pRv8DecParam
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1489, <variable>.pstExtraData
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	ldr	r2, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp866, <variable>.stDisParams.s32DisNums,
	str	ip, [r3, #684]	@ tmp866, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r7	@ D.36229, tmp782
	b	.L303	@
.L408:
	ldr	r8, [fp, #-304]	@, %sfp
	ldrb	r0, [r8, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r0, #2	@ <variable>.PicCodingType,
	bne	.L365	@,
	movw	r3, #:lower16:74152	@ tmp858,
	movt	r3, #:upper16:74152	@ tmp858,
	movw	ip, #43020	@ tmp859,
	mov	r2, r7	@, tmp782
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	str	r7, [r4, #4]	@ tmp782, <variable>.pRv8DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r7	@ D.36229, tmp782
	b	.L303	@
.L407:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC25	@,
	ldr	r2, .L410+4	@,
	movt	r1, #:upper16:.LC25	@,
	movw	r3, #2082	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-304]	@ D.36229, %sfp
	b	.L303	@
.L411:
	.align	2
.L410:
	.word	.LANCHOR0+24
	.word	.LANCHOR0+528
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
	.type	C.436.35679, %object
	.size	C.436.35679, 36
C.436.35679:
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
	.type	C.426.35604, %object
	.size	C.426.35604, 32
C.426.35604:
	.word	160
	.word	176
	.word	240
	.word	320
	.word	352
	.word	640
	.word	704
	.word	0
	.type	C.427.35605, %object
	.size	C.427.35605, 32
C.427.35605:
	.word	120
	.word	132
	.word	144
	.word	240
	.word	288
	.word	480
	.word	0
	.word	0
	.type	C.428.35606, %object
	.size	C.428.35606, 16
C.428.35606:
	.word	180
	.word	360
	.word	576
	.word	0
	.type	__func__.36216, %object
	.size	__func__.36216, 16
__func__.36216:
	.ascii	"REAL8DEC_Decode\000"
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
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC10:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC11:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC12:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC13:
	.ascii	"Real8_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC14:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC15:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC16:
	.ascii	"Real8_ArrangeVHBMem err\012\000"
	.space	3
.LC17:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC18:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC19:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC20:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC21:
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC22:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC23:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC24:
	.ascii	"line:%d! i > (RV8_MAX_SLC_PARAM_NUM - 2)\012\000"
	.space	2
.LC25:
	.ascii	"%s %d NULL == pCtx->pRv8DecParam!!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
