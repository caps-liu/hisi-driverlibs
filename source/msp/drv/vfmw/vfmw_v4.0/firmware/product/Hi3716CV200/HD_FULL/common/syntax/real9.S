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
	.file	"real9.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real9.o -O2 -Wall
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
	.global	Real9_CB_SetDimensions
	.type	Real9_CB_SetDimensions, %function
Real9_CB_SetDimensions:
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
	ldr	r3, [r0, #16]	@ D.35557, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35557,
	beq	.L21	@,
	cmp	r3, #176	@ D.35557,
	beq	.L22	@,
	cmp	r3, #352	@ D.35557,
	bne	.L7	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35557,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35578, tmp154,
	mov	r2, r1, lsr #4	@ D.35580, tmp155,
	str	r3, [r0, #76]	@ D.35578, <variable>.Rv9ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35578, D.35580
	str	r2, [r0, #72]	@ D.35580, <variable>.Rv9ParsePicParam.m_nGOBs
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
	str	r3, [r0, #80]	@ tmp162, <variable>.Rv9ParsePicParam.m_mbaSize
	ldmfd	sp, {fp, sp, pc}	@
.L22:
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #144	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #11	@ tmp143,
	mov	r2, #9	@ tmp144,
	str	ip, [r0, #76]	@ tmp143, <variable>.Rv9ParsePicParam.m_nMBs
	str	r2, [r0, #72]	@ tmp144, <variable>.Rv9ParsePicParam.m_nGOBs
.L17:
	mov	r3, #1	@ i,
	b	.L4	@
.L21:
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #96	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #6	@ tmp141,
	mov	r1, #8	@ tmp140,
	str	r3, [r0, #72]	@ tmp141, <variable>.Rv9ParsePicParam.m_nGOBs
	mov	r3, #0	@ i,
	str	r1, [r0, #76]	@ tmp140, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L4	@
.L7:
	cmp	r3, #704	@ D.35557,
	bne	.L24	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #76]	@ tmp149, <variable>.Rv9ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.493,
	str	r2, [r0, #72]	@ tmp150, <variable>.Rv9ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #72]	@ tmp147, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.493,
	str	r1, [r0, #76]	@ tmp146, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35557,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #72]	@ tmp153, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.493,
	str	r1, [r0, #76]	@ tmp152, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real9_CB_SetDimensions, .-Real9_CB_SetDimensions
	.align	2
	.global	RV9_RecordVFMWState
	.type	RV9_RecordVFMWState, %function
RV9_RecordVFMWState:
	.fnstart
.LFB1373:
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
	.size	RV9_RecordVFMWState, .-RV9_RecordVFMWState
	.align	2
	.global	Real9_WriteSliceMsg
	.type	Real9_WriteSliceMsg, %function
Real9_WriteSliceMsg:
	.fnstart
.LFB1374:
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
	mov	r3, #44	@ tmp138,
	mla	r3, r3, r1, r0	@ tmp139, tmp138, HoldSliceNum, pCtx
	movw	ip, #41804	@ tmp141,
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	r2, #41796	@ tmp148,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	add	ip, r3, #104	@ tmp182, tmp139,
	str	r4, [r3, #84]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	add	r2, r3, #112	@ tmp196, tmp139,
	str	r4, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	movw	r4, #41800	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r4, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	movw	r4, #41816	@ tmp162,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r4, [r3, #88]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	movw	r4, #41808	@ tmp169,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r4, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	movw	r4, #41812	@ tmp176,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r4, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	movw	r3, #41784	@ tmp183,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r3, [ip, #4]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	movw	r3, #41780	@ tmp190,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	str	r3, [ip, #8]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	movw	ip, #41776	@ tmp197,
	ldr	r3, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #41788	@ tmp204,
	str	r3, [r2, #4]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.sliceqp
	ldr	r3, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r3, [r2, #8]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.first_mb_in_slice
	str	r1, [r0, #40]	@ tmp206, <variable>.Rv9DecParam.TotalSliceNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Real9_WriteSliceMsg, .-Real9_WriteSliceMsg
	.align	2
	.global	Real9_WritePicMsg
	.type	Real9_WritePicMsg, %function
Real9_WritePicMsg:
	.fnstart
.LFB1375:
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
	movw	r8, #41656	@ tmp134,
	movw	r2, #41820	@ tmp147,
	movw	r7, #41672	@ tmp137,
	movw	r6, #41668	@ tmp139,
	movw	r5, #42916	@ tmp141,
	movw	ip, #42920	@ tmp143,
	movw	r4, #41824	@ tmp149,
	movw	r1, #41696	@ tmp145,
	ldr	r3, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r1, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	r7, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r5, [r0, ip]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	ip, [r0, r4]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r8, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	str	r7, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	str	r6, [r0, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	r5, [r0, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	str	r4, [r0, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	ip, [r0, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	strb	r3, [r0, #9]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv9DecParam.PicCodingType
	str	r1, [r0, #28]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv9DecParam.PQUANT
	strne	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Real9_WritePicMsg, .-Real9_WritePicMsg
	.align	2
	.global	Real9_WriteReg
	.type	Real9_WriteReg, %function
Real9_WriteReg:
	.fnstart
.LFB1376:
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
	str	r1, [r0, #44]	@ fst_slc_grp, <variable>.Rv9DecParam.FstSlcGrp
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real9_WriteReg, .-Real9_WriteReg
	.align	2
	.global	Real9_ModifySliceMsg
	.type	Real9_ModifySliceMsg, %function
Real9_ModifySliceMsg:
	.fnstart
.LFB1377:
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
	ldr	r3, [r0, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.36046, <variable>.Rv9DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.36047, <variable>.Rv9DecParam.PicHeightInMb
	bne	.L35	@,
	mul	r1, r1, r3	@ tmp199, D.36046, D.36047
	ldr	r2, [r0, #40]	@ temp.720, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.720,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L36	@,
	sub	r4, r2, #1	@ prephitmp.622, temp.720,
	cmp	r4, #1	@ prephitmp.622,
	bls	.L41	@,
	ldr	r3, [r0, #164]	@ temp.693, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.693,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.693
	ble	.L35	@,
	tst	r2, #1	@ temp.720,
	mov	r3, r0	@ ivtmp.691, pCtx
	mov	ip, #1	@ i.692,
	bne	.L39	@,
	ldr	r3, [r0, #208]	@ D.36060, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.692,
	cmp	r3, #0	@ D.36060,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36060
	add	r3, r0, #44	@ ivtmp.691, pCtx,
	bgt	.L39	@,
.L35:
	mov	r0, #0	@ D.36053,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L36:
	moveq	r4, #1	@ prephitmp.622,
	bne	.L42	@,
.L41:
	tst	r4, #1	@ prephitmp.622,
	mov	r3, r0	@ ivtmp.684, pCtx
	mov	ip, #0	@ i,
	beq	.L38	@,
	cmp	r4, #0	@ prephitmp.622,
	bls	.L93	@,
	ldr	r6, [r0, #120]	@ temp.694, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #164]	@ D.36067, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.684, pCtx,
	cmp	r6, r5	@ temp.694, D.36067
	bge	.L35	@,
	cmp	r4, ip	@ prephitmp.622, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.684,
	bls	.L93	@,
.L45:
	ldr	r7, [r3, #120]	@ temp.694, <variable>.first_mb_in_slice
	ldr	r6, [r3, #164]	@ D.36067, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.684, ivtmp.684,
	cmp	r7, r6	@ temp.694, D.36067
	bge	.L35	@,
	ldr	r6, [r5, #164]	@ D.36067, <variable>.first_mb_in_slice
	ldr	r5, [r5, #120]	@ temp.694, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.694, D.36067
	bge	.L35	@,
.L38:
	cmp	r4, ip	@ prephitmp.622, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.684,
	bhi	.L45	@,
.L93:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.622, pCtx
	ldr	r3, [r4, #120]	@ D.36072, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.36072,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36072
	blt	.L35	@,
.L42:
	cmp	r2, #0	@ temp.720,
	beq	.L95	@,
	mov	r6, #0	@ i.719,
	mov	ip, r0	@ ivtmp.701, pCtx
	mov	r3, r0	@ ivtmp.677, pCtx
	mov	r4, r6	@ i.699, i.719
	b	.L48	@
.L97:
	cmp	r5, #0	@ temp.698,
	blt	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.698
	blt	.L35	@,
	cmp	r2, #0	@ TotalMbnMinus1.697,
	blt	.L35	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.697
	blt	.L35	@,
	ldr	r2, [r0, #40]	@ temp.720, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.720, i.699
	bls	.L96	@,
.L48:
	sub	r2, r2, #1	@ tmp205, temp.720,
	ldr	r5, [r3, #120]	@ temp.698, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.719, tmp205
	add	r4, r4, #1	@ i.699, i.699,
	streq	r1, [r3, #124]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #164]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.697, TotalMbnMinus1
	mov	r6, r4	@ i.719, i.699
	subne	r2, r2, #1	@ TotalMbnMinus1.697, <variable>.first_mb_in_slice,
	strne	r2, [r3, #124]	@ TotalMbnMinus1.697, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.698, TotalMbnMinus1.697
	add	r3, r3, #44	@ ivtmp.677, ivtmp.677,
	ble	.L97	@,
	b	.L35	@
.L40:
	ldr	r5, [r3, #208]	@ D.36060, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.691, ivtmp.691,
	cmp	r5, #0	@ D.36060,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36060
	ble	.L35	@,
	ldr	r5, [r6, #208]	@ D.36060, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.36060,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36060
	ble	.L35	@,
.L39:
	add	ip, ip, #1	@ tmp261, i.692,
	add	r6, r3, #44	@ tmp260, ivtmp.691,
	cmp	r4, ip	@ prephitmp.622, tmp261
	add	ip, ip, #1	@ i.692, tmp261,
	bhi	.L40	@,
	b	.L41	@
.L96:
	cmp	r2, #0	@ temp.720,
	ldr	r3, [r0, #84]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L49	@,
	tst	r2, #1	@ temp.720,
	mov	r5, r3	@ stream_base_addr.721, stream_base_addr
	mov	r4, #0	@ i.700,
	bne	.L52	@,
	mov	r1, r3	@ stream_base_addr.706, stream_base_addr
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.721
	bcs	.L67	@,
	ldr	r5, [r0, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L67	@,
.L68:
	add	ip, r0, #44	@ ivtmp.701, pCtx,
	mov	r4, #1	@ i.700,
	ldr	r5, [ip, #84]	@ stream_base_addr.721, <variable>.StreamPhyAddr
.L52:
	cmp	r5, r3	@ stream_base_addr.721, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.706, stream_base_addr
	ldr	r3, [ip, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.700,
	add	r1, ip, #44	@ tmp252, ivtmp.701,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.706
	bcs	.L50	@,
.L98:
	ldr	ip, [ip, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L50	@,
.L51:
	cmp	r4, r2	@ tmp251, temp.720
	beq	.L49	@,
	ldr	ip, [r1, #84]	@ stream_base_addr.721, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.721, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.706, stream_base_addr
	ldr	r3, [r1, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.706
	bcs	.L70	@,
	ldr	r5, [r1, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L70	@,
	add	ip, r1, #44	@ ivtmp.701, tmp252,
	add	r4, r4, #1	@ i.700, tmp251,
	ldr	r5, [ip, #84]	@ stream_base_addr.721, <variable>.StreamPhyAddr
.L99:
	cmp	r5, r3	@ stream_base_addr.721, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.706, stream_base_addr
	ldr	r3, [ip, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.700,
	add	r1, ip, #44	@ tmp252, ivtmp.701,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.706
	bcc	.L98	@,
.L50:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.706
	b	.L51	@
.L70:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.706
	add	ip, r1, #44	@ ivtmp.701, tmp252,
	add	r4, r4, #1	@ i.700, tmp251,
	ldr	r5, [ip, #84]	@ stream_base_addr.721, <variable>.StreamPhyAddr
	b	.L99	@
.L67:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.706
	b	.L68	@
.L95:
	ldr	r3, [r0, #84]	@ stream_base_addr, <variable>.StreamPhyAddr
.L49:
	cmp	r2, #0	@ temp.720,
	bic	r4, r3, #15	@ prephitmp.626, stream_base_addr,
	str	r4, [r0, #48]	@ prephitmp.626, <variable>.Rv9DecParam.StreamBaseAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.720,
	mov	r3, r0	@ ivtmp.650, pCtx
	mov	r1, #0	@ i.695,
	bne	.L56	@,
	ldr	r3, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	r3, #0	@ <variable>.StreamPhyAddr,
	beq	.L89	@,
	ldr	r1, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r0, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r7, [r0, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, r1, #7	@ tmp293, <variable>.StreamBitOffset,
	and	r6, ip, #7	@ tmp283, <variable>.StreamBitOffset,
	add	r3, r3, r1, lsr #3	@, tmp287, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	ip, r7, ip, lsr #3	@, tmp278, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r3, r4, r3	@ BytePos1, prephitmp.626, tmp287
	rsb	r4, r4, ip	@ BytePos0.709, prephitmp.626, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.709,
	bic	r4, r4, #15	@ tmp280, BytePos0.709,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #84]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #92]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #96]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #88]	@ tmp290, <variable>.StreamPhyAddr
.L90:
	mov	r1, #1	@ i.695,
	add	r3, r0, #44	@ ivtmp.650, pCtx,
	ldr	r4, [r0, #48]	@ prephitmp.626, <variable>.Rv9DecParam.StreamBaseAddr
	b	.L56	@
.L100:
	ldr	ip, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.626, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #84]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #92]	@ tmp218, <variable>.StreamBitOffset
.L55:
	add	r1, r1, #1	@ tmp246, i.695,
	add	r3, r3, #44	@ tmp247, ivtmp.650,
	cmp	r1, r2	@ tmp246, temp.720
	bcs	.L53	@,
	ldr	ip, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #48]	@ prephitmp.626, <variable>.Rv9DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L63	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.626, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #84]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #92]	@ tmp334, <variable>.StreamBitOffset
.L91:
	ldr	r4, [r0, #48]	@ prephitmp.626, <variable>.Rv9DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.695, tmp246,
	add	r3, r3, #44	@ ivtmp.650, tmp247,
.L56:
	ldr	ip, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L100	@,
	ldr	r6, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.709, prephitmp.626, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.709,
	bic	r4, r4, #15	@ tmp223, BytePos0.709,
	str	r4, [r3, #84]	@ tmp223, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp231, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r7, r7, r8, asl #3	@, tmp228, tmp226, tmp224,
	str	r7, [r3, #92]	@ tmp228, <variable>.StreamBitOffset
	ldr	r4, [r0, #48]	@ <variable>.Rv9DecParam.StreamBaseAddr, <variable>.Rv9DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv9DecParam.StreamBaseAddr, tmp231
	and	r4, ip, #15	@ tmp235, BytePos1,
	bic	ip, ip, #15	@ tmp234, BytePos1,
	str	ip, [r3, #88]	@ tmp234, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp239, tmp237, tmp235,
	str	ip, [r3, #96]	@ tmp239, <variable>.StreamBitOffset
	b	.L55	@
.L63:
	ldr	r6, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp313, <variable>.StreamBitOffset,
	ldr	r5, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp308, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.709, prephitmp.626, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.709,
	bic	r4, r4, #15	@ tmp310, BytePos0.709,
	str	r4, [r3, #84]	@ tmp310, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r7, r7, r8, asl #3	@, tmp314, tmp313, tmp311,
	str	r7, [r3, #92]	@ tmp314, <variable>.StreamBitOffset
	ldr	r4, [r0, #48]	@ <variable>.Rv9DecParam.StreamBaseAddr, <variable>.Rv9DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv9DecParam.StreamBaseAddr, tmp317
	and	r4, ip, #15	@ tmp321, BytePos1,
	bic	r5, ip, #15	@ tmp320, BytePos1,
	str	r5, [r3, #88]	@ tmp320, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp324, tmp323, tmp321,
	str	ip, [r3, #96]	@ tmp324, <variable>.StreamBitOffset
	b	.L91	@
.L53:
	mov	r0, #1	@ D.36053,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L89:
	ldr	r5, [r0, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.626, tmp298
	and	r6, ip, #15	@ tmp301, BytePos0,
	bic	r4, ip, #15	@ tmp300, BytePos0,
	str	r4, [r0, #84]	@ tmp300, <variable>.StreamPhyAddr
	add	r5, r1, r6, asl #3	@, tmp304, tmp303, tmp301,
	str	r5, [r0, #92]	@ tmp304, <variable>.StreamBitOffset
	b	.L90	@
	.fnend
	.size	Real9_ModifySliceMsg, .-Real9_ModifySliceMsg
	.align	2
	.global	REAL9DEC_GetImageBuffer
	.type	REAL9DEC_GetImageBuffer, %function
REAL9DEC_GetImageBuffer:
	.fnstart
.LFB1384:
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
	movw	r4, #:lower16:74128	@ tmp138,
	movt	r4, #:upper16:74128	@ tmp138,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36692,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36695,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r5, #43008	@, pCtx,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	add	r1, r1, #32	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36695,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	REAL9DEC_GetImageBuffer, .-REAL9DEC_GetImageBuffer
	.align	2
	.global	REAL9DEC_Destroy
	.type	REAL9DEC_Destroy, %function
REAL9DEC_Destroy:
	.fnstart
.LFB1379:
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
	movw	r3, #42892	@ tmp135,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	REAL9DEC_Destroy, .-REAL9DEC_Destroy
	.align	2
	.global	REAL9DEC_RecycleImage
	.type	REAL9DEC_RecycleImage, %function
REAL9DEC_RecycleImage:
	.fnstart
.LFB1381:
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
	movw	r4, #:lower16:74128	@ tmp142,
	movt	r4, #:upper16:74128	@ tmp142,
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
	.size	REAL9DEC_RecycleImage, .-REAL9DEC_RecycleImage
	.align	2
	.global	REAL9DEC_Init
	.type	REAL9DEC_Init, %function
REAL9DEC_Init:
	.fnstart
.LFB1378:
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	add	r6, r4, #43008	@, pCtx,
	movw	r1, #:lower16:74136	@,
	movt	r1, #:upper16:74136	@,
	bl	__memzero	@
	add	r0, r6, #32	@,,
	bl	ResetVoQueue	@
	movw	r2, #41824	@ tmp143,
	movw	r0, #41820	@ tmp141,
	mov	r3, #15	@ tmp142,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movw	ip, #11364	@ tmp145,
	str	r3, [r4, r0]	@ tmp142, <variable>.CodecInfo.PrevPicQP
	movw	r1, #11368	@ tmp148,
	str	r3, [r4, r2]	@ tmp142, <variable>.CodecInfo.PrevPicMb0QP
	movw	r0, #41680	@ tmp153,
	ldr	r2, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r3, #41648	@ tmp155,
	mov	r6, #0	@ tmp149,
	strb	r6, [r4, r1]	@ tmp149, <variable>.CodecInfo.Imgbuf_allocated
	mov	r1, #8192	@ tmp154,
	str	r1, [r4, r0]	@ tmp154, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	strb	r2, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r2, #41652	@ tmp151,
	mov	ip, #1	@ tmp152,
	mov	r0, r4	@, pCtx
	strb	ip, [r4, r3]	@ tmp152, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	str	ip, [r4, r2]	@ tmp152, <variable>.CodecInfo.PictureHeader.Fid
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:74128	@ tmp158,
	movt	r3, #:upper16:74128	@ tmp158,
	cmn	r0, #1	@ D.36138,
	str	r0, [r4, r3]	@ D.36138, <variable>.ChanID
	movne	r0, r6	@ D.36143, tmp149
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r6	@, tmp149
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36143,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	REAL9DEC_Init, .-REAL9DEC_Init
	.align	2
	.global	Real9_SetImgFormat
	.type	Real9_SetImgFormat, %function
Real9_SetImgFormat:
	.fnstart
.LFB1372:
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
	movw	r1, #:lower16:74128	@ tmp142,
	movt	r1, #:upper16:74128	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #43000	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #41656	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.35932, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #41664	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.35932,
	str	r3, [r4, #136]	@ D.35932, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.35932, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #140]	@ tmp148, <variable>.format
	movw	lr, #41660	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #144]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #148]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L118	@,
.L116:
	mov	r3, #8	@ tmp175,
	mov	r2, #1	@ tmp173,
	mov	ip, #9	@ tmp170,
	mov	r1, #0	@ tmp171,
	str	r3, [r4, #344]	@ tmp175, <variable>.ImageDnr.QP_U
	str	r3, [r4, #340]	@ tmp175, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #329]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #336]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #324]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #331]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #348]	@ tmp175, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L118:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.35940, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.35940,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.35940
	mul	r1, r1, lr	@ D.35946, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.35946, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.35946
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.35940
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #92]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L116	@
	.fnend
	.size	Real9_SetImgFormat, .-Real9_SetImgFormat
	.align	2
	.global	REAL9DEC_VDMPostProc
	.type	REAL9DEC_VDMPostProc, %function
REAL9DEC_VDMPostProc:
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
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r3, #:lower16:74128	@ tmp146,
	movt	r3, #:upper16:74128	@ tmp146,
	movw	r2, #43000	@ tmp148,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L121	@,
	movw	lr, #41656	@ tmp151,
	movw	ip, #11366	@ tmp150,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	r1, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp157, Mb0QpInCurrPic,
	movwne	r1, #41824	@ tmp156,
	strne	r6, [r4, r1]	@ tmp157, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.476,
	blt	.L124	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.476,
.L124:
	str	r5, [r0, #180]	@ iftmp.476, <variable>.error_level
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real9_SetImgFormat	@
	movw	r3, #11364	@ tmp159,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L127	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L127	@,
	movw	r0, #41656	@ tmp165,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	lr, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L127	@,
	movw	r2, #11365	@ tmp167,
	movw	lr, #43004	@ tmp174,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r3, #42992	@ tmp169,
	mvnls	r1, #0	@ prephitmp.859,
	ldrhi	r1, [r4, r3]	@ prephitmp.859,
	cmn	r1, #1	@ prephitmp.859,
	str	r1, [r4, lr]	@ prephitmp.859, <variable>.CodecInfo.ToQueFsID
	beq	.L131	@,
.L135:
	movw	r5, #:lower16:74128	@ tmp175,
	movt	r5, #:upper16:74128	@ tmp175,
	movw	r6, #43004	@ tmp177,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36674, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36674
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36674
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, r0	@ D.36679,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #43008	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	add	r3, r3, #32	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L134	@,
.L131:
	movw	ip, #42892	@ tmp193,
	mov	r0, #1	@ D.36642,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp196, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp196, <variable>.CodecInfo.FrmCnt
.L121:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L127:
	movw	ip, #43000	@ tmp173,
	movw	lr, #43004	@ tmp174,
	ldr	r1, [r4, ip]	@ prephitmp.859,
	cmn	r1, #1	@ prephitmp.859,
	str	r1, [r4, lr]	@ prephitmp.859, <variable>.CodecInfo.ToQueFsID
	bne	.L135	@,
	b	.L131	@
.L134:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36642,
	b	.L121	@
	.fnend
	.size	REAL9DEC_VDMPostProc, .-REAL9DEC_VDMPostProc
	.align	2
	.global	REAL9DEC_GetRemainImg
	.type	REAL9DEC_GetRemainImg, %function
REAL9DEC_GetRemainImg:
	.fnstart
.LFB1382:
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
	movw	r6, #:lower16:74128	@ tmp142,
	movt	r6, #:upper16:74128	@ tmp142,
	movw	r7, #42996	@ tmp144,
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
	add	r5, r4, #43008	@ tmp169, pCtx,
	add	r5, r5, #32	@ tmp169, tmp169,
.L137:
	mov	r0, r5	@, tmp169
	bl	GetVoLastImageID	@
.L139:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L146:
	mov	r0, r4	@, pCtx
	add	r5, r4, #43008	@ tmp169, pCtx,
	bl	Real9_SetImgFormat	@
	add	r5, r5, #32	@ tmp169, tmp169,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #216]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp169
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
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L137	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L137	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L139	@,
	b	.L137	@
	.fnend
	.size	REAL9DEC_GetRemainImg, .-REAL9DEC_GetRemainImg
	.align	2
	.global	Real9_CB_FindNextSliceStartCode
	.type	Real9_CB_FindNextSliceStartCode, %function
Real9_CB_FindNextSliceStartCode:
	.fnstart
.LFB1367:
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
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r8, r0, #7	@ tmp142, D.35638,
	cmp	r0, #0	@ D.35638,
	movlt	r0, r8	@ D.35638, tmp142
	mov	r8, r0, asr #3	@ tmp143, D.35638,
	sub	r7, r8, #2	@ RemainByte, tmp143,
	cmp	r7, #0	@ RemainByte,
	ble	.L150	@,
	sub	r2, r8, #3	@ tmp150, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r2, #1	@ tmp152, tmp150,
	bl	BsShow	@
	movw	r6, #:lower16:1907728	@ tmp148,
	movt	r6, #:upper16:1907728	@ tmp148,
	cmp	r0, r6	@, tmp148
	beq	.L164	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r7, r5	@ RemainByte, i
	ble	.L150	@,
	cmp	r8, #0	@ tmp152,
	beq	.L153	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@, tmp148
	beq	.L164	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r7, r5	@ RemainByte, i
	bgt	.L153	@,
	b	.L150	@
.L151:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	beq	.L164	@,
	bl	BsSkip	@
	cmp	r7, r5	@ RemainByte, i
	ble	.L150	@,
.L153:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp153, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp153,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	bne	.L151	@,
.L164:
	mov	r0, #1	@ D.35643,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L150:
	mov	r0, #0	@ D.35643,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_FindNextSliceStartCode, .-Real9_CB_FindNextSliceStartCode
	.align	2
	.global	Real9_CB_GetSSC
	.type	Real9_CB_GetSSC, %function
Real9_CB_GetSSC:
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
	ldr	r3, [r1, #4]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.35684,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	Real9_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.35684,,
	movne	r0, #1	@ D.35684
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real9_CB_GetSSC, .-Real9_CB_GetSSC
	.align	2
	.global	Real9_CB_GetVLCBits
	.type	Real9_CB_GetVLCBits, %function
Real9_CB_GetVLCBits:
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
.L170:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r1, r0, r7	@ tmp144,, tmp150
	mov	r0, r6	@, pBs
	ldrb	ip, [r1, #24]	@ zero_extendqisi2	@ lengthAndInfo, gs_VLCDecodeTable
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
	.size	Real9_CB_GetVLCBits, .-Real9_CB_GetVLCBits
	.align	2
	.global	Real9_CB_Get1Bit
	.type	Real9_CB_Get1Bit, %function
Real9_CB_Get1Bit:
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
	.size	Real9_CB_Get1Bit, .-Real9_CB_Get1Bit
	.align	2
	.global	Real9_CB_GetBits
	.type	Real9_CB_GetBits, %function
Real9_CB_GetBits:
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
	.size	Real9_CB_GetBits, .-Real9_CB_GetBits
	.align	2
	.global	Real9_CB_SearchBits_IgnoreOnly0
	.type	Real9_CB_SearchBits_IgnoreOnly0, %function
Real9_CB_SearchBits_IgnoreOnly0:
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
	bl	Real9_CB_GetBits	@
	cmp	r0, r4	@ w, code
	cmpne	r5, #0	@, lookahead,
	mov	r3, r0	@ w,
	beq	.L178	@,
	sub	r2, r7, #1	@ tmp152, nbits,
	mov	sl, #1	@ tmp153,
	mov	sl, sl, asl r2	@ msb, tmp153,
	ands	r8, r0, sl	@ tmp154, w, msb
	bne	.L179	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp155,
	add	r7, r0, r7, asl #2	@, tmp158, tmp155, nbits,
	ldr	r9, [r7, #280]	@ pretmp.1041, GetBitsMask
	b	.L180	@
.L181:
	tst	r3, sl	@ w, msb
	bne	.L179	@,
.L180:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.35665, pretmp.1041, w,
	bl	Real9_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.35665,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L181	@,
.L178:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.35672
	moveq	r0, #1	@, D.35672
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L179:
	mov	r0, #0	@ D.35672,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_SearchBits_IgnoreOnly0, .-Real9_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real9_CB_GetPicSize
	.type	Real9_CB_GetPicSize, %function
Real9_CB_GetPicSize:
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
	ldr	r8, .L200	@ tmp149,
	mov	r5, r1	@ pRv9ParsePicParam, pRv9ParsePicParam
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
	ldr	r0, [r5, #20]	@ <variable>.ptype, <variable>.ptype
	sub	r3, r0, #2	@ tmp156, <variable>.ptype,
	cmp	r3, #1	@ tmp156,
	bls	.L198	@,
.L185:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	sub	r5, fp, #44	@,,
	add	r6, r5, r0, asl #2	@, tmp162,,,
	ldr	r5, [r6, #-48]	@ w, code_width
	cmp	r5, #0	@ w,
	beq	.L193	@,
.L187:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	sub	r2, fp, #44	@,,
	add	ip, r2, r0, asl #2	@, tmp167,, code.1084,
	mov	r3, r0	@ code.1084,
	ldr	r6, [ip, #-80]	@ h, code_height1
	cmp	r6, #0	@ h,
	beq	.L199	@,
.L189:
	ldr	ip, [fp, #-128]	@, %sfp
	str	r5, [ip, #0]	@ w,
	ldr	lr, [fp, #-132]	@, %sfp
	str	r6, [lr, #0]	@ h,
.L191:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L193:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1083,
	add	r5, r5, r0, asl #2	@, w, w, code.1083,
	bne	.L187	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1083,
	add	r5, r5, r0, asl #2	@, w, w, code.1083,
	beq	.L193	@,
	b	.L187	@
.L198:
	mov	r0, r4	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L185	@,
	ldr	r3, [r5, #52]	@ <variable>.pwidth_prev, <variable>.pwidth_prev
	ldr	r0, [fp, #-128]	@, %sfp
	str	r3, [r0, #0]	@ <variable>.pwidth_prev,
	ldr	r2, [fp, #-132]	@, %sfp
	ldr	r1, [r5, #56]	@ <variable>.pheight_prev, <variable>.pheight_prev
	str	r1, [r2, #0]	@ <variable>.pheight_prev,
	b	.L191	@
.L199:
	mov	r0, r4	@, pBs
	mov	r6, r3, asl #1	@ code.1085, code.1084,
	bl	Real9_CB_Get1Bit	@
	sub	r3, fp, #44	@,,
	orr	r6, r0, r6	@ code.1086,, code.1085
	and	r0, r6, #3	@ tmp169, code.1086,
	add	r1, r3, r0, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L189	@,
.L192:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1088,
	add	r6, r6, r0, asl #2	@, h, h, code.1088,
	bne	.L189	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1088,
	add	r6, r6, r0, asl #2	@, h, h, code.1088,
	beq	.L192	@,
	b	.L189	@
.L201:
	.align	2
.L200:
	.word	.LANCHOR0+380
	.fnend
	.size	Real9_CB_GetPicSize, .-Real9_CB_GetPicSize
	.align	2
	.global	Real9_CB_GetSliceHeader
	.type	Real9_CB_GetSliceHeader, %function
Real9_CB_GetSliceHeader:
	.fnstart
.LFB1370:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r4, [fp, #8]	@ pPictureHeader, pPictureHeader
	mov	r7, r3	@ iSliceGFID, iSliceGFID
	mov	r5, r2	@ iSliceMBA, iSliceMBA
	mov	r6, r0	@ pBs, pBs
	ldr	r8, [fp, #4]	@ iSQUANT, iSQUANT
	ldr	r3, [r4, #4]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	beq	.L226	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L227	@,
	mvn	r4, #0	@ tmp188,
	mov	r2, #0	@ tmp187,
	str	r2, [r5, #0]	@ tmp187,* iSliceMBA
	str	r4, [r8, #0]	@ tmp188,* iSQUANT
	mov	r4, #1	@ D.35712,
.L215:
	mov	r0, r4	@, D.35712
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L226:
	cmp	r1, #0	@ bFirstSlice,
	ldrne	r0, [r4, #88]	@ prephitmp.1104, <variable>.Rv9ParsePicParam.mba
	bne	.L205	@,
	ldr	sl, [r4, #88]	@ D.35706, <variable>.Rv9ParsePicParam.mba
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L206	@,
	cmn	sl, #1	@ D.35706,
	movne	sl, #0	@, D.37444
	moveq	sl, #1	@, D.37444
	cmp	sl, #0	@ D.37444,
	beq	.L207	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #84]	@, <variable>.Rv9ParsePicParam.ptype
.L208:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	uxtb	r0, r0	@ D.35722,
	strb	r0, [r4, #66]	@ D.35722, <variable>.Rv9ParsePicParam.pquant
	cmp	r0, #31	@ D.35722,
	bls	.L228	@,
.L206:
	mov	r4, #0	@ D.35712,
	b	.L215	@
.L227:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L206	@,
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r0, [r4, #80]	@ <variable>.Rv9ParsePicParam.m_mbaSize, <variable>.Rv9ParsePicParam.m_mbaSize
	cmp	r0, #11	@ <variable>.Rv9ParsePicParam.m_mbaSize,
	bls	.L217	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L206	@,
.L217:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #31	@ D.35779,
	str	r0, [r8, #0]	@ D.35779,* iSQUANT
	bgt	.L206	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.35785,
	mov	r4, r0	@ D.35785,
	bne	.L206	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r7, #0]	@,* iSliceGFID
	b	.L215	@
.L228:
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L206	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	subs	r9, r0, #0	@ D.35729,
	bne	.L206	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	add	ip, r4, #64	@, pPictureHeader,
	mov	r1, #1	@,
	str	ip, [fp, #-56]	@, %sfp
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	subs	r2, r0, #0	@ tmp171,,
	movne	r2, #1	@ tmp171
	cmp	sl, #0	@ D.37444,
	strb	r2, [r4, #65]	@ tmp171, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	beq	.L209	@,
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r3, #1	@ <variable>.Rv9ParsePicParam.ptype,
	strls	r9, [r4, #120]	@ D.35729, <variable>.Rv9ParsePicParam.pheight_prev
	strls	r9, [r4, #116]	@ D.35729, <variable>.Rv9ParsePicParam.pwidth_prev
	str	r0, [r4, #92]	@, <variable>.Rv9ParsePicParam.tr
	bls	.L210	@,
	cmp	r3, #2	@ <variable>.Rv9ParsePicParam.ptype,
	ldreq	r1, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldreq	lr, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	streq	r1, [r4, #116]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth_prev
	streq	lr, [r4, #120]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight_prev
.L210:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r0, r6	@, pBs
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [fp, #-48]	@ width, width
	ldr	r3, [fp, #-52]	@ height, height
	movw	r1, #8144	@ tmp199,
	sub	r0, r2, #48	@ tmp198, width,
	cmp	r0, r1	@ tmp198, tmp199
	str	r2, [r4, #108]	@ width, <variable>.Rv9ParsePicParam.pwidth
	str	r3, [r4, #112]	@ height, <variable>.Rv9ParsePicParam.pheight
	str	r2, [r4, #16]	@ width, <variable>.pic_width_in_pixel
	str	r3, [r4, #12]	@ height, <variable>.pic_height_in_pixel
	bhi	.L206	@,
	sub	r0, r3, #48	@ tmp179, height,
	cmp	r0, r1	@ tmp179, tmp199
	bhi	.L206	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
.L214:
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #88]	@ prephitmp.1104, <variable>.Rv9ParsePicParam.mba
.L205:
	str	r0, [r5, #0]	@ prephitmp.1104,* iSliceMBA
	mov	r3, #0	@ tmp184,
	ldrb	r1, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	mov	r4, #1	@ D.35712,
	str	r1, [r8, #0]	@ <variable>.Rv9ParsePicParam.pquant,* iSQUANT
	str	r3, [r7, #0]	@ tmp184,* iSliceGFID
	b	.L215	@
.L207:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	ldr	r1, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, r1	@, <variable>.Rv9ParsePicParam.ptype
	beq	.L208	@,
	mov	r4, #0	@ D.35712,
	b	.L215	@
.L209:
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	r0, r3	@, <variable>.Rv9ParsePicParam.tr
	bne	.L206	@,
	sub	r3, fp, #52	@,,
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r0, r6	@, pBs
	sub	r2, fp, #48	@,,
	bl	Real9_CB_GetPicSize	@
	ldr	ip, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldr	r3, [fp, #-48]	@ width, width
	cmp	ip, r3	@ <variable>.Rv9ParsePicParam.pwidth, width
	bne	.L206	@,
	ldr	r2, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	ldr	ip, [fp, #-52]	@ height, height
	cmp	r2, ip	@ <variable>.Rv9ParsePicParam.pheight, height
	beq	.L214	@,
	mov	r4, #0	@ D.35712,
	b	.L215	@
	.fnend
	.size	Real9_CB_GetSliceHeader, .-Real9_CB_GetSliceHeader
	.align	2
	.global	Real9_CB_GetCPFMT
	.type	Real9_CB_GetCPFMT, %function
Real9_CB_GetCPFMT:
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
	bl	Real9_CB_GetBits	@
	mov	r1, #9	@,
	strb	r0, [r4, #0]	@, <variable>.pixel_aspect_ratio
	mov	r0, r5	@, pBs
	bl	Real9_CB_GetBits	@
	add	r1, r0, #1	@ tmp142,,
	mov	r0, r5	@, pBs
	mov	r3, r1, asl #2	@ tmp143, tmp142,
	str	r3, [r4, #16]	@ tmp143, <variable>.pic_width_in_pixel
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.35537,
	mov	r6, r0	@ D.35537,
	movne	r6, #0	@ D.35540,
	beq	.L233	@,
	mov	r0, r6	@, D.35540
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L233:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real9_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #12]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35540
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_GetCPFMT, .-Real9_CB_GetCPFMT
	.align	2
	.global	Real9_CB_GetPictureHeader
	.type	Real9_CB_GetPictureHeader, %function
Real9_CB_GetPictureHeader:
	.fnstart
.LFB1371:
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
	ldr	r3, [r1, #4]	@ <variable>.Fid, <variable>.Fid
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r6, r0	@ pBs, pBs
	cmp	r3, #1	@ <variable>.Fid,
	bne	.L235	@,
	mvn	r1, #0	@ tmp149,
	sub	r2, fp, #36	@,,
	str	r1, [r4, #88]	@ tmp149, <variable>.Rv9ParsePicParam.mba
	sub	r3, fp, #32	@,,
	mov	r1, #0	@,
	sub	ip, fp, #40	@ tmp152,,
	str	r4, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@ tmp152,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r5, #1	@ Status,
	beq	.L254	@,
.L237:
	ldr	ip, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	r3, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	r0, ip, #15	@ tmp197, <variable>.pic_width_in_pixel,
	add	r1, r3, #15	@ tmp199, <variable>.pic_height_in_pixel,
	mov	r2, r0, lsr #4	@ D.35887, tmp197,
	str	r2, [r4, #24]	@ D.35887, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.35889, tmp199,
	str	lr, [r4, #20]	@ D.35889, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp201, D.35887, D.35889
	str	ip, [r4, #28]	@ tmp201, <variable>.total_mbs
.L252:
	mov	r0, r5	@, Status
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L235:
	mov	r1, #128	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	movw	r3, #21845	@ tmp171,
	cmp	r0, r3	@ D.35842, tmp171
	mov	r5, r0	@ D.35842,
	beq	.L255	@,
.L245:
	mvn	r5, #1	@ Status,
	b	.L252	@
.L255:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, r5	@, D.35842
	bne	.L245	@,
	sub	r5, fp, #44	@ tmp203,,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, tmp203
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L245	@,
	ldr	r3, [fp, #-44]	@ info, info
	ands	r2, r3, #1	@ tmp174, info,
	bne	.L245	@,
	tst	r3, #2	@ info,
	ubfx	ip, r3, #7, #8	@ tmp185, info,,
	strne	r2, [r4, #12]	@ tmp174, <variable>.pic_height_in_pixel
	mov	r1, r5	@, tmp203
	moveq	r2, #176	@ tmp176,
	strne	r2, [r4, #16]	@ tmp174, <variable>.pic_width_in_pixel
	streq	r2, [r4, #16]	@ tmp176, <variable>.pic_width_in_pixel
	ubfx	r5, r3, #2, #5	@ tmp182, info,,
	moveq	r2, #144	@ tmp177,
	str	ip, [r4, #36]	@ tmp185, <variable>.TR
	streq	r2, [r4, #12]	@ tmp177, <variable>.pic_height_in_pixel
	mov	r0, r6	@, pBs
	str	r5, [r4, #48]	@ tmp182, <variable>.PQUANT
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1180,
	streq	r0, [r4, #8]	@ length.1180, <variable>.PicCodType
	beq	.L249	@,
	cmp	r0, #3	@ length.1180,
	bne	.L250	@,
	ldr	r2, [fp, #-44]	@ info, info
	cmp	r2, #1	@ info,
	moveq	r2, #0	@ tmp189,
	streq	r2, [r4, #8]	@ tmp189, <variable>.PicCodType
	bne	.L245	@,
.L249:
	ldr	r3, [r4, #16]	@ prephitmp.1167, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1167,
	beq	.L256	@,
.L251:
	sub	r1, r3, #48	@ tmp192, prephitmp.1167,
	movw	r2, #8144	@ tmp193,
	cmp	r1, r2	@ tmp192, tmp193
	bhi	.L245	@,
	ldr	r3, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r0, r3, #48	@ tmp194, <variable>.pic_height_in_pixel,
	cmp	r0, r2	@ tmp194, tmp193
	bhi	.L245	@,
	mov	r0, r4	@, pPictureHeader
	mov	r5, #1	@ Status,
	bl	Real9_CB_SetDimensions	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	b	.L237	@
.L254:
	ldr	r0, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv9ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv9ParsePicParam.ptype
	b	.L238	@
.L243:
	.word	.L239
	.word	.L240
	.word	.L241
	.word	.L242
.L242:
	mov	r5, #1	@ Status,
	mov	r6, #2	@ tmp159,
	str	r6, [r4, #8]	@ tmp159, <variable>.PicCodType
.L244:
	ldr	lr, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #8144	@ tmp167,
	ldrb	r6, [r4, #65]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	sub	r2, lr, #48	@ tmp165, <variable>.pic_width_in_pixel,
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	ldr	r0, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	r2, r3	@ tmp165, tmp167
	ldr	r1, [r4, #96]	@ <variable>.Rv9ParsePicParam.trb, <variable>.Rv9ParsePicParam.trb
	ldr	lr, [r4, #100]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.Rv9ParsePicParam.dbq
	str	r6, [r4, #44]	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	ip, [r4, #48]	@ <variable>.Rv9ParsePicParam.pquant, <variable>.PQUANT
	str	r0, [r4, #36]	@ <variable>.Rv9ParsePicParam.tr, <variable>.TR
	str	r1, [r4, #56]	@ <variable>.Rv9ParsePicParam.trb, <variable>.TRB
	str	lr, [r4, #60]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.DBQUANT
	bhi	.L245	@,
	ldr	r0, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r1, r0, #48	@ tmp168, <variable>.pic_height_in_pixel,
	cmp	r1, r3	@ tmp168, tmp167
	bhi	.L245	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
	b	.L237	@
.L241:
	mov	r5, #1	@ tmp158,
	str	r5, [r4, #8]	@ tmp158, <variable>.PicCodType
	b	.L244	@
.L240:
	mov	r5, #0	@ tmp156,
	str	r5, [r4, #68]	@ tmp156, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r5, [r4, #8]	@ tmp156, <variable>.PicCodType
	mov	r5, #1	@ Status,
	b	.L244	@
.L239:
	mov	r5, #1	@ tmp155,
	mov	r2, #0	@ tmp154,
	str	r5, [r4, #68]	@ tmp155, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r2, [r4, #8]	@ tmp154, <variable>.PicCodType
	b	.L244	@
.L238:
	mvn	r5, #1	@ Status,
	b	.L244	@
.L250:
	cmp	r0, #5	@ length.1180,
	bne	.L245	@,
	ldr	r3, [fp, #-44]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L245	@,
	add	lr, r3, #2	@ tmp191, tmp191,
	str	lr, [r4, #8]	@ tmp191, <variable>.PicCodType
	b	.L249	@
.L256:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real9_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L245	@,
	ldr	r3, [r4, #16]	@ prephitmp.1167, <variable>.pic_width_in_pixel
	b	.L251	@
	.fnend
	.size	Real9_CB_GetPictureHeader, .-Real9_CB_GetPictureHeader
	.align	2
	.global	Real9_ArrangeVHBMem
	.type	Real9_ArrangeVHBMem, %function
Real9_ArrangeVHBMem:
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
	ldr	r1, [r2, #24]	@ D.35462, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35462,
	ldrls	r3, [r2, #20]	@ prephitmp.1202, <variable>.pic_height_in_mb
	bls	.L259	@,
	ldr	r3, [r2, #20]	@ prephitmp.1202, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1202,
	bls	.L259	@,
	ldr	r1, [r4, #0]	@ D.35469, <variable>.pstExtraData
	ldr	r3, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L262	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L284	@,
.L263:
	ldr	r6, [r2, #12]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1204,
	ldr	r5, [r2, #16]	@ PicWidth, <variable>.pic_width_in_pixel
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
	movw	r6, #:lower16:74128	@ tmp188,
	strb	r3, [fp, #-82]	@ tmp177, FspInstCfg.s32RprEnable
	movt	r6, #:upper16:74128	@ tmp188,
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.1204, FspInstCfg.s32ExpectedDispFsNum
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
	beq	.L285	@,
.L261:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L262:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L263	@,
	ldr	r5, [r2, #16]	@ temp.1226, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #564]	@ D.35477, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1226, D.35477
	bhi	.L286	@,
	ldr	r3, [r2, #12]	@ prephitmp.1208, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #568]	@ prephitmp.1206, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1208, prephitmp.1206
	bhi	.L273	@,
	ldr	r6, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ temp.1229, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L276	@,
	add	sl, r9, #1	@ PmvNum.1231, temp.1229,
	cmp	sl, #17	@ PmvNum.1231,
	movge	sl, #17	@ PmvNum,
.L276:
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1204, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.1229,
	mov	r6, r3	@ PicHeight, prephitmp.1208
	b	.L270	@
.L259:
	mov	r2, r1	@, D.35462
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L261	@
.L285:
	ldr	lr, [r4, #0]	@ temp.1240, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L287	@,
	mov	ip, #1	@ tmp198,
	movw	r1, #11368	@ tmp197,
	mov	r0, ip	@ D.35466, tmp198
	strb	ip, [r4, r1]	@ tmp198, <variable>.CodecInfo.Imgbuf_allocated
	b	.L261	@
.L284:
	ldr	r0, [r2, #16]	@ D.35476, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #564]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35476, PicWidth
	bhi	.L288	@,
	ldr	r3, [r2, #12]	@ prephitmp.1212, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1212, PicHeight
	bhi	.L265	@,
	movw	r2, #11368	@ tmp165,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L261	@,
	ldr	r7, [r1, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #584]	@ D.35487, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L269	@,
	add	sl, r9, #1	@ PmvNum.1223, D.35487,
	cmp	sl, #17	@ PmvNum.1223,
	movge	sl, #17	@ PmvNum,
.L269:
	add	r9, r9, #2	@ DecFsNum, D.35487,
	ldrb	r8, [r1, #612]	@ zero_extendqisi2	@ prephitmp.1204, <variable>.stChanOption.s32DisplayFrameNum
	b	.L270	@
.L286:
	ldr	lr, [r1, #568]	@ prephitmp.1206, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1208, <variable>.pic_height_in_pixel
.L273:
	mov	r2, r5	@, temp.1226
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L261	@
.L288:
	ldr	r6, [r1, #568]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1212, <variable>.pic_height_in_pixel
.L265:
	mov	r2, r0	@, D.35476
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35466,
	b	.L261	@
.L287:
	mov	r0, r5	@, D.35518
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35466, D.35518
	b	.L261	@
	.fnend
	.size	Real9_ArrangeVHBMem, .-Real9_ArrangeVHBMem
	.align	2
	.global	Real9_GetImageBuffer
	.type	Real9_GetImageBuffer, %function
Real9_GetImageBuffer:
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
	movw	r5, #:lower16:74128	@ tmp142,
	movt	r5, #:upper16:74128	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #43000	@ tmp144,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35413,
	mov	r1, r0	@ D.35413,
	str	r0, [r4, r6]	@ D.35413, <variable>.CodecInfo.CurFsID
	blt	.L296	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L297	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.35428, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35428,
	beq	.L293	@,
	ldr	r3, [r5, #476]	@ D.35431, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35431,
	beq	.L293	@,
	ldr	r0, [r5, #480]	@ D.35434, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35434,
	beq	.L293	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC11	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L293:
	movw	lr, #43000	@ tmp179,
	mov	r0, #1	@ D.35422,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L291:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L296:
	movw	r7, #42996	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	movw	r8, #42992	@ tmp152,
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
	movw	r3, #11365	@ tmp162,
	add	r1, r4, #43008	@, pCtx,
	strb	r6, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	add	r1, r1, #32	@,,
	str	r0, [r4, r8]	@ D.35420, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35420, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r6	@ D.35422, tmp155
	b	.L291	@
.L297:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #549	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35422, pLf
	b	.L291	@
	.fnend
	.size	Real9_GetImageBuffer, .-Real9_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL9DEC_Decode
	.type	REAL9DEC_Decode, %function
REAL9DEC_Decode:
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
	.pad #244
	sub	sp, sp, #244	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r2, #128	@,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	sub	r0, fp, #192	@,,
	mov	r1, #0	@,
	bl	memset	@
	movw	r3, #41760	@ tmp240,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight
	movw	ip, #41756	@ tmp237,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth
	movw	r0, #41768	@ tmp239,
	movw	ip, #41652	@ tmp250,
	cmp	r5, #0	@ pPacket,
	movw	r1, #41764	@ tmp236,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight_prev
	add	r6, r4, #41472	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp251,
	str	r0, [r4, ip]	@ tmp251, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #41680	@ tmp252,
	str	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth_prev
	add	r6, r6, #176	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp253,
	str	r2, [fp, #-84]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp253, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [fp, #-80]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r1, [fp, #-160]	@ tmp253, TmpPictureHeader.m_uTRWrap
	str	r2, [fp, #-76]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r3, [fp, #-72]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	str	r0, [fp, #-188]	@ tmp251, TmpPictureHeader.Fid
	beq	.L388	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11344	@,
	str	r0, [fp, #-200]	@, %sfp
	bl	__memzero	@
	movw	r0, #42856	@ tmp260,
	mov	r7, #0	@ tmp261,
	str	r7, [r4, r0]	@ tmp261, <variable>.CodecInfo.BsOffset
	movw	r2, #42876	@ tmp262,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #42860	@ tmp264,
	movw	r0, #11352	@ tmp266,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #42864	@ tmp268,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11356	@ tmp269,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ temp.1352, <variable>.LenInByte
	str	r2, [r4, ip]	@ temp.1352, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L301	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #42868	@ tmp273,
	movw	r1, #11360	@ tmp275,
	movw	r0, #42872	@ tmp277,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11357	@ tmp279,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L389	@,
	sub	r0, r2, #10	@ tmp298, temp.1352,
	movw	r3, #:lower16:3145717	@ tmp299,
	movt	r3, #:upper16:3145717	@ tmp299,
	cmp	r0, r3	@ tmp298, tmp299
	bhi	.L303	@,
.L391:
	movw	lr, #11352	@ tmp300,
	ldr	r1, [r4, lr]	@ D.36257, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.36257,
	beq	.L303	@,
	add	r5, r4, #43008	@ tmp730, pCtx,
	movw	r9, #41828	@ tmp301,
	mov	r0, r5	@, tmp730
	bl	BsInit	@
	mov	r0, r5	@, tmp730
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ D.36260,
	add	r0, r0, #1	@ D.36262, D.36260,
	str	r0, [r4, r9]	@ D.36262, <variable>.CodecInfo.TotalSliceNum
	bhi	.L303	@,
	cmp	r0, #0	@ D.36262,
	addeq	r1, r4, #41728	@, pCtx,
	streq	r1, [fp, #-212]	@, %sfp
	beq	.L305	@,
	add	r8, r4, #41728	@, pCtx,
	movw	sl, #:lower16:3145727	@ tmp744,
	str	r8, [fp, #-212]	@, %sfp
	add	r7, r8, #104	@ ivtmp.1345,,
	movt	sl, #:upper16:3145727	@ tmp744,
	mov	r8, #0	@ i.1356,
	b	.L306	@
.L390:
	ldr	r0, [r4, r9]	@ D.36263, <variable>.CodecInfo.TotalSliceNum
	cmp	r0, r8	@ D.36263, i.1356
	bls	.L305	@,
.L306:
	mov	r1, #32	@,
	mov	r0, r5	@, tmp730
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp730
	add	r8, r8, #1	@ i.1356, i.1356,
	bl	Real9_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp304, SliceByteOffset,
	and	r2, r0, #65280	@ tmp306, SliceByteOffset,
	orr	r3, r1, r0, lsr #24	@, tmp305, tmp304, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp309, SliceByteOffset,
	orr	ip, r3, r2, asl #8	@, tmp308, tmp305, tmp306,
	orr	r2, ip, r1, lsr #8	@, D.36279, tmp308, tmp309,
	str	r2, [r7, #0]	@ D.36279, <variable>.CodecInfo.SliceByteOffset
	cmp	r2, sl	@ D.36279, tmp744
	add	r7, r7, #4	@ ivtmp.1345, ivtmp.1345,
	ble	.L390	@,
.L303:
	mov	r0, #0	@ D.36221,
.L300:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L389:
	movw	r6, #:lower16:74128	@ tmp283,
	movt	r6, #:upper16:74128	@ tmp283,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r7	@ D.36221, tmp261
	b	.L300	@
.L301:
	movw	r0, #42872	@ tmp293,
	movw	r3, #:lower16:3145717	@ tmp299,
	str	r7, [r4, r0]	@ tmp261, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145717	@ tmp299,
	sub	r0, r2, #10	@ tmp298, temp.1352,
	movw	ip, #11357	@ tmp295,
	cmp	r0, r3	@ tmp298, tmp299
	movw	r1, #42868	@ tmp289,
	movw	lr, #11360	@ tmp291,
	strb	r7, [r4, ip]	@ tmp261, <variable>.CodecInfo.IsLastSeg1
	str	r7, [r4, r1]	@ tmp261, <variable>.CodecInfo.BsPhyAddr1
	str	r7, [r4, lr]	@ tmp261, <variable>.CodecInfo.BsVirAddr1
	bls	.L391	@,
	b	.L303	@
.L388:
	movw	lr, #42892	@ tmp258,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36221, pPacket
	b	.L300	@
.L305:
	ldr	lr, [fp, #-212]	@, %sfp
	sub	r7, r0, #1	@ pretmp.1312, D.36263,
	tst	r7, #1	@ pretmp.1312,
	mov	r2, #0	@ i,
	add	sl, lr, #108	@ ivtmp.1339,,
	mov	r3, sl	@ ivtmp.1416, ivtmp.1339
	beq	.L307	@,
	cmp	r2, r7	@ i, pretmp.1312
	bcs	.L379	@,
	ldr	r1, [sl, #0]	@ D.36285, <variable>.CodecInfo.SliceByteOffset
	mov	r2, #1	@ i,
	ldr	lr, [sl, #-4]	@ D.36280, <variable>.CodecInfo.SliceByteOffset
	ldr	r9, [fp, #-212]	@, %sfp
	cmp	r1, lr	@ D.36285, D.36280
	add	r3, r9, #112	@ ivtmp.1416,,
	bgt	.L307	@,
	b	.L303	@
.L308:
	ldr	r8, [r3, #0]	@ D.36285, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r3, #-4]	@ D.36280, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, ip	@ D.36285, D.36280
	ble	.L303	@,
	ldr	ip, [r3, #4]	@ D.36285, <variable>.CodecInfo.SliceByteOffset
	add	r3, r1, #4	@ ivtmp.1416, tmp749,
	ldr	lr, [r1, #-4]	@ D.36280, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.36285, D.36280
	ble	.L303	@,
.L307:
	cmp	r2, r7	@ i, pretmp.1312
	add	r8, r2, #1	@ tmp748, i,
	add	r2, r8, #1	@ i, tmp748,
	add	r1, r3, #4	@ tmp749, ivtmp.1416,
	bcc	.L308	@,
.L379:
	movw	r3, #41832	@ tmp315,
	mov	r0, r0, asl #3	@ tmp314, D.36263,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r7, r0, #1	@, tmp314,
	str	r7, [fp, #-232]	@, %sfp
	add	r8, r7, r2	@,, <variable>.CodecInfo.SliceByteOffset
	str	r8, [fp, #-228]	@, %sfp
	cmp	r7, #3145728	@,
	cmplt	r8, #3145728	@,,
	movlt	r7, #0	@, tmp325
	movge	r7, #1	@, tmp325
	bge	.L303	@,
	cmp	r8, #0	@,
	ble	.L303	@,
	movw	lr, #42864	@ tmp326,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, r1	@ D.36300,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.36300,
	ble	.L303	@,
	movw	r0, #11352	@ tmp328,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, tmp730
	add	r1, r8, ip	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, tmp730
	sub	r1, fp, #192	@,,
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L392	@,
	movw	r2, #11368	@ tmp333,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r7, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L310	@,
	movw	lr, #41672	@ tmp335,
	ldr	r1, [fp, #-168]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r1, r3	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L393	@,
.L310:
	movw	r9, #:lower16:g_event_report	@ tmp341,
	movt	r9, #:upper16:g_event_report	@ tmp341,
	ldr	r3, [r9, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L312	@,
	movw	r7, #41672	@ tmp343,
	movw	ip, #41668	@ tmp345,
	ldrh	r0, [r4, r7]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	r2, #:lower16:74128	@ tmp350,
	ldrh	r1, [fp, #-168]	@, TmpPictureHeader.pic_width_in_mb
	movt	r2, #:upper16:74128	@ tmp350,
	ldrh	r8, [fp, #-172]	@, TmpPictureHeader.pic_height_in_mb
	strh	r0, [fp, #-64]	@ movhi	@, para
	ldrh	lr, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r1, [fp, #-60]	@ movhi	@, para
	mov	r1, #2	@,
	strh	r8, [fp, #-58]	@ movhi	@, para
	strh	lr, [fp, #-62]	@ movhi	@, para
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	sub	r2, fp, #64	@,,
	blx	r3	@ g_event_report
.L312:
	movw	r7, #:lower16:74128	@ tmp354,
	movt	r7, #:upper16:74128	@ tmp354,
	movw	r8, #42996	@ tmp356,
	movw	r9, #42992	@ tmp360,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	lr, #0	@ tmp363,
	str	r8, [fp, #-244]	@,
	add	r8, r5, #32	@ D.36326, tmp730,
	str	lr, [fp, #-240]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-240]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r3, [r4, r9]	@ tmp363, <variable>.CodecInfo.FwdFsID
	ldr	ip, [fp, #-244]	@,
	str	r3, [r4, ip]	@ tmp363, <variable>.CodecInfo.BwdFsID
	str	r3, [fp, #-240]	@,
	str	ip, [fp, #-244]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r2, #11365	@ tmp370,
	str	r0, [r4, r9]	@ D.36325, <variable>.CodecInfo.FwdFsID
	ldr	r1, [fp, #-240]	@,
	strb	r1, [r4, r2]	@ tmp363, <variable>.CodecInfo.RefNum
	mov	r1, r8	@, D.36326
	ldr	r3, [fp, #-244]	@,
	str	r0, [r4, r3]	@ D.36325, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-168]	@ prephitmp.1316, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.1316,
	ldrhi	r3, [fp, #-172]	@ prephitmp.1368, TmpPictureHeader.pic_height_in_mb
	bhi	.L314	@,
	ldr	r3, [fp, #-172]	@ prephitmp.1368, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1368,
	bhi	.L314	@,
	ldr	r1, [r4, #0]	@ D.36333, <variable>.pstExtraData
	ldr	r0, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L316	@,
	ldr	r7, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #25	@ <variable>.eCapLevel,
	beq	.L394	@,
.L316:
	movw	r2, #:lower16:74128	@ tmp381,
	movt	r2, #:upper16:74128	@ tmp381,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L318	@,
.L383:
	ldr	r2, [fp, #-168]	@ prephitmp.1316, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-172]	@ prephitmp.1368, TmpPictureHeader.pic_height_in_mb
.L317:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	sub	r2, fp, #192	@,,
	bl	Real9_ArrangeVHBMem	@
	subs	r7, r0, #0	@ D.36344,
	beq	.L395	@,
.L311:
	sub	r1, fp, #192	@,,
	mov	r2, #128	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11364	@ tmp390,
	mov	r0, r4	@, pCtx
	ldr	r7, [r1, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r7, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real9_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36350,
	beq	.L396	@,
	movw	ip, #:lower16:74128	@ tmp396,
	movt	ip, #:upper16:74128	@ tmp396,
	movw	r9, #43000	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	str	ip, [fp, #-244]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [fp, #-244]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L320	@,
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
	mvn	r2, #0	@ tmp415,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r8, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r8, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r3, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [lr, #56]	@ tmp415, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@, pImg,
	strd	r8, [fp, #-212]	@,,
	ldrd	r8, [fp, #-212]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	str	ip, [fp, #-244]	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #41656	@ tmp419,
	ldr	ip, [fp, #-244]	@,
	ldr	r3, [r4, r0]	@ D.36369, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.36369,
	beq	.L397	@,
	cmp	r3, #1	@ D.36369,
	beq	.L398	@,
	movw	r7, #11365	@ tmp424,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	addeq	r3, r3, #1	@ iftmp.456, iftmp.456,
	bne	.L324	@,
.L325:
	movw	ip, #42992	@ tmp428,
	movw	r7, #42996	@ tmp429,
	ldr	r2, [r4, ip]	@ prephitmp.1314, <variable>.CodecInfo.FwdFsID
	movw	r0, #11365	@ tmp426,
	ldr	r9, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r3, [r4, r0]	@ iftmp.456, <variable>.CodecInfo.RefNum
	cmp	r2, r9	@ prephitmp.1314, <variable>.CodecInfo.BwdFsID
	beq	.L326	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	ip, [fp, #-244]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-244]	@,
	movw	r3, #:lower16:74128	@ tmp432,
	movt	r3, #:upper16:74128	@ tmp432,
	mov	r2, #0	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r7]	@ prephitmp.1314, <variable>.CodecInfo.BwdFsID
.L326:
	movw	r9, #43000	@ tmp437,
	movw	r7, #:lower16:74128	@ tmp439,
	ldr	r0, [r4, r9]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r7, #:upper16:74128	@ tmp439,
	movw	lr, #42992	@ tmp435,
	movw	r3, #42996	@ tmp436,
	str	r2, [r4, lr]	@ prephitmp.1314, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	str	r0, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r1, r0	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	lr, [fp, #-244]	@,
	str	r9, [fp, #-240]	@,
	bl	FSP_SetRef	@
	ldr	r2, [fp, #-244]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r1, [fp, #-240]	@,
	mov	r0, #13	@,
	ldr	r2, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
.L327:
	movw	r7, #:lower16:74128	@ tmp449,
	movt	r7, #:upper16:74128	@ tmp449,
	movw	r0, #43000	@ tmp450,
	movw	r9, #42992	@ tmp452,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r7, [fp, #-240]	@,
	bl	FSP_GetLogicFs	@
	ldr	r1, [fp, #-240]	@,
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r3, [fp, #-240]	@,
	movw	ip, #42996	@ tmp454,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	mov	r9, r0	@ pFwd,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r9, #0	@, pFwd,
	mov	ip, r0	@ pBwd,
	beq	.L328	@,
	cmp	r0, #0	@ pBwd,
	beq	.L328	@,
	ldr	r3, [r7, #472]	@ D.36400, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36400,
	beq	.L330	@,
	ldr	r2, [r7, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L330	@,
	ldr	lr, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	lr, #0	@ <variable>.pstDispOutFs,
	beq	.L330	@,
	ldr	r2, [r0, #472]	@ D.36407, <variable>.pstDecodeFs
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	cmp	r2, #0	@ D.36407,
	ldrne	r8, [r2, #12]	@ iftmp.460, <variable>.PhyAddr
	ldreq	r8, [r3, #12]	@ iftmp.460, <variable>.PhyAddr
	str	r8, [r4, #52]	@ iftmp.460, <variable>.Rv9DecParam.BwdRefPhyAddr
	ldr	r0, [r9, #472]	@ D.36414, <variable>.pstDecodeFs
	cmp	r0, #0	@ D.36414,
	ldreq	r0, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r0, #12]	@ iftmp.461, <variable>.PhyAddr
	mov	r0, #13	@,
	str	lr, [r4, #56]	@ iftmp.461, <variable>.Rv9DecParam.FwdRefPhyAddr
	ldr	r3, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36419, <variable>.PhyAddr
	str	r2, [r4, #60]	@ D.36419, <variable>.Rv9DecParam.CurPicPhyAddr
	ldr	r3, [r7, #484]	@, <variable>.PmvAddr
	str	r3, [fp, #-224]	@, %sfp
	str	r3, [r4, #76]	@, <variable>.Rv9DecParam.CurrPmvPhyAddr
	ldr	r3, [ip, #484]	@, <variable>.PmvAddr
	str	r3, [fp, #-220]	@, %sfp
	str	r3, [r4, #80]	@, <variable>.Rv9DecParam.ColPmvPhyAddr
	ldr	r3, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36425, <variable>.PhyAddr
	str	lr, [sp, #0]	@ iftmp.461,
	str	r8, [sp, #4]	@ iftmp.460,
	str	r3, [r4, #64]	@ D.36425, <variable>.Rv9DecParam.DispFramePhyAddr
	ldr	r8, [fp, #-224]	@, %sfp
	ldr	lr, [fp, #-220]	@, %sfp
	str	ip, [fp, #-244]	@,
	str	r8, [sp, #8]	@,
	str	lr, [sp, #12]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #41656	@ tmp480,
	ldr	r8, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r1, #42964	@ tmp477,
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r8, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	ip, [r4, #68]	@ <variable>.Stride, <variable>.Rv9DecParam.DDRStride
	ldr	r2, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r8, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	r8, [r4, r1]	@ <variable>.Stride, <variable>.CodecInfo.ddr_stride
	ldr	ip, [fp, #-244]	@,
	beq	.L399	@,
.L336:
	movw	r2, #41684	@ tmp502,
	movw	r0, #41700	@ tmp505,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	sub	ip, r0, #4	@ tmp504, tmp504,
	str	r3, [r7, #492]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	ldr	r2, [r4, r0]	@ D.36463, <variable>.CodecInfo.PictureHeader.OSVQUANT
	ldr	r7, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	cmp	r2, #2	@ D.36463,
	str	r7, [fp, #-212]	@, %sfp
	bls	.L343	@,
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
.L343:
	movw	lr, #41672	@ tmp510,
	sub	r7, lr, #4	@ tmp512, tmp512,
	add	r9, r7, #1248	@ tmp514, tmp514,
	movw	r3, #41656	@ tmp507,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	add	r8, r9, #4	@ tmp516, tmp516,
	add	r3, r3, #164	@ tmp520, tmp520,
	movw	ip, #41824	@ tmp522,
	movw	r2, #41696	@ tmp518,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r7, [r4, r9]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r9, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r0, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	mov	r0, r5	@, tmp730
	str	r7, [r4, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	r9, [r4, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	str	r8, [r4, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	movw	r8, #41796	@ tmp529,
	strb	r1, [r4, #9]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv9DecParam.PicCodingType
	strne	r2, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	str	lr, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	str	ip, [r4, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	r2, [r4, #28]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv9DecParam.PQUANT
	bl	BsPos	@
	add	r1, r8, #32	@ tmp532, tmp532,
	ldr	r9, [r4, r1]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r7, r0, #-2147483641	@ tmp530,,
	submi	r7, r7, #1	@ tmp753, tmp530,
	mvnmi	r7, r7, asl #29	@ tmp754, tmp753,
	mvnmi	r7, r7, lsr #29	@ tmp754, tmp754,
	addmi	r7, r7, #1	@ tmp530, tmp754,
	cmp	r9, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r7, [r4, r8]	@ tmp530, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L400	@,
	movw	r9, #41836	@ tmp542,
	sub	r8, r9, #4	@ tmp543, tmp543,
	ldr	r7, [r4, r9]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, tmp730
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L385:
	rsb	lr, r3, r7	@ tmp544, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r8, #42860	@,
	mov	r7, lr, asl #3	@ D.36488, tmp544,
	bl	BsPos	@
	movw	r1, #41800	@ tmp547,
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r7	@ tmp548,, D.36488
	str	r0, [r4, r1]	@ tmp548, <variable>.CodecInfo.SliceHeader.bit_len_0
	ldr	r9, [fp, #-228]	@, %sfp
	mov	r0, r5	@, tmp730
	movw	r7, #41828	@ tmp578,
	add	r8, r9, ip	@ D.36494,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	r2, #41692	@ tmp565,
	movw	r1, #41800	@ tmp571,
	ldr	r9, [r4, r7]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	lr, #41700	@ tmp563,
	ldr	r7, [r4, r2]	@ D.36499, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	ip, #41796	@ tmp569,
	ldr	r2, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	r1, #41780	@ tmp564,
	str	r2, [r4, #100]	@, <variable>.StreamLength
	add	r3, r0, #7	@ tmp553, D.36495,
	cmp	r0, #0	@ D.36495,
	movlt	r0, r3	@ D.36495, tmp553
	cmp	r9, #1	@ <variable>.CodecInfo.TotalSliceNum,
	add	r2, r8, r0, asr #3	@, D.36498, D.36494, D.36495,
	ldr	r0, [fp, #-212]	@, %sfp
	ldr	r9, [r4, lr]	@ temp.1422, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r3, #41776	@ tmp562,
	add	lr, r1, #28	@ tmp556, tmp556,
	add	r8, r3, #28	@ tmp555, tmp555,
	str	r0, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	add	r0, lr, #4	@ tmp558, tmp558,
	str	r9, [r4, r1]	@ temp.1422, <variable>.CodecInfo.SliceHeader.osvquant
	add	r1, r0, #4	@ tmp560, tmp560,
	mov	r3, #0	@ tmp557,
	str	r3, [r4, lr]	@ tmp557, <variable>.CodecInfo.SliceHeader.bit_offset_1
	sub	lr, r1, #32	@ tmp566, tmp566,
	str	r3, [r4, r0]	@ tmp557, <variable>.CodecInfo.SliceHeader.bit_len_1
	add	r0, lr, #4	@ tmp567, tmp567,
	str	r2, [r4, r8]	@ D.36498, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	str	r3, [r4, r1]	@ tmp557, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	mov	r8, #1	@ tmp577,
	str	r7, [r4, lr]	@ D.36499, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r3, [r4, r0]	@ tmp557, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r2, [r4, #84]	@ D.36498, <variable>.StreamPhyAddr
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r7, [r4, #108]	@ D.36499, <variable>.dblk_filter_passthrough
	str	r9, [r4, #112]	@ temp.1422, <variable>.osvquant
	str	r1, [r4, #92]	@, <variable>.StreamBitOffset
	str	r3, [r4, #120]	@ tmp557, <variable>.first_mb_in_slice
	str	r3, [r4, #88]	@ tmp557, <variable>.StreamPhyAddr
	str	r3, [r4, #96]	@ tmp557, <variable>.StreamBitOffset
	str	r3, [r4, #104]	@ tmp557, <variable>.StreamLength
	ldr	lr, [fp, #-212]	@, %sfp
	str	r8, [r4, #40]	@ tmp577, <variable>.Rv9DecParam.TotalSliceNum
	str	lr, [r4, #116]	@, <variable>.sliceqp
	strls	r8, [fp, #-220]	@ tmp577, %sfp
	bls	.L349	@,
	movw	r2, #41836	@ tmp580,
	ldr	r9, [fp, #-232]	@, %sfp
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r3, #:lower16:3145727	@ tmp582,
	movt	r3, #:upper16:3145727	@ tmp582,
	add	r7, r9, ip	@ PrevOffsetBytes.1454,, <variable>.CodecInfo.SliceByteOffset
	cmp	r7, r3	@ PrevOffsetBytes.1454, tmp582
	bgt	.L387	@,
	cmp	r7, #0	@ PrevOffsetBytes.1454,
	ble	.L387	@,
	movw	r0, #42864	@ tmp583,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r1	@ temp.1384, PrevOffsetBytes.1454, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1384,
	strgt	r8, [fp, #-220]	@ i.1448, %sfp
	strgt	r8, [fp, #-216]	@ i.1448, %sfp
	ldrgt	r9, [fp, #-232]	@ PrevHeaderBytes, %sfp
	bgt	.L354	@,
	b	.L387	@
.L355:
	movw	r2, #41828	@,
	add	r8, r8, #1	@ i.1448, i.1448,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	ip, r8	@ <variable>.CodecInfo.TotalSliceNum, i.1448
	bls	.L349	@,
	ldr	r7, [sl, #4]	@ tmp585, <variable>.CodecInfo.SliceByteOffset
	movw	lr, #:lower16:3145727	@,
	movt	lr, #:upper16:3145727	@,
	add	r7, r9, r7	@ PrevOffsetBytes.1454, PrevHeaderBytes, tmp585
	cmp	r7, lr	@ PrevOffsetBytes.1454,
	bgt	.L387	@,
	cmp	r7, #0	@ PrevOffsetBytes.1454,
	ble	.L387	@,
	movw	ip, #42864	@,
	add	sl, sl, #4	@ ivtmp.1339, ivtmp.1339,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r3	@ temp.1384, PrevOffsetBytes.1454, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1384,
	ble	.L387	@,
.L354:
	movw	r0, #11352	@,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, tmp730
	add	r1, r7, r1	@, PrevOffsetBytes.1454, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, tmp730
	mov	r1, #0	@,
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	sub	ip, fp, #56	@,,
	str	r6, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L355	@,
	movw	lr, #41672	@,
	ldr	r2, [fp, #-48]	@, iSliceMBA
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [fp, #-224]	@, %sfp
	beq	.L401	@,
	ldr	lr, [fp, #-56]	@ iSQUANT.469, iSQUANT
	movw	r3, #41700	@,
	ldr	r2, [r4, r3]	@ temp.1435, <variable>.CodecInfo.PictureHeader.OSVQUANT
	cmp	lr, #0	@ iSQUANT.469,
	ldr	r0, [fp, #-212]	@, %sfp
	movge	r0, lr	@, iSQUANT.469
	cmp	r2, #2	@ temp.1435,
	str	r0, [fp, #-212]	@, %sfp
	bls	.L359	@,
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
.L359:
	mov	r0, r5	@, tmp730
	bl	BsPos	@
	movw	ip, #41828	@,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	sub	r1, r3, #1	@ D.36289, <variable>.CodecInfo.TotalSliceNum,
	cmp	r1, r8	@ D.36289, i.1448
	mov	r2, r0, asr #31	@ tmp606, D.36524,
	mov	r2, r2, lsr #29	@ tmp607, tmp606,
	add	ip, r0, r2	@ tmp608, D.36524, tmp607
	and	r1, ip, #7	@ tmp609, tmp608,
	movw	ip, #41796	@,
	rsb	r2, r2, r1	@ tmp610, tmp607, tmp609
	str	r2, [r4, ip]	@ tmp610, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L402	@,
	cmp	r8, #254	@ i.1448,
	bhi	.L403	@,
	ldr	r2, [sl, #4]	@ tmp625, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, tmp730
	ldr	r3, [sl, #0]	@ tmp626, <variable>.CodecInfo.SliceByteOffset
.L386:
	rsb	ip, r3, r2	@ tmp624, tmp626, tmp625
	mov	lr, ip, asl #3	@ D.36539, tmp624,
	str	lr, [fp, #-240]	@,
	bl	BsPos	@
	ldr	r1, [fp, #-240]	@,
	movw	ip, #41800	@ tmp627,
	rsb	r3, r0, r1	@ tmp628,, D.36539
	movw	r0, #42860	@,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, tmp730
	str	r3, [r4, ip]	@ tmp628, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r1, #0	@ tmp637,
	add	ip, r7, r2	@ temp.1443, PrevOffsetBytes.1454, <variable>.CodecInfo.BsPhyAddr
	str	r1, [fp, #-240]	@,
	str	ip, [fp, #-244]	@,
	bl	BsPos	@
	ldr	r3, [fp, #-216]	@, %sfp
	mov	r2, #44	@ tmp650,
	movw	r1, #41692	@ tmp645,
	movw	r7, #41700	@,
	ldr	ip, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r1, #41808	@ tmp636,
	mla	r2, r2, r3, r4	@ tmp651, tmp650,, pCtx
	str	ip, [fp, #-264]	@, %sfp
	ldr	lr, [r4, r7]	@ temp.1444, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r7, #41812	@ tmp638,
	add	r3, r0, #7	@ tmp633, D.36543,
	cmp	r0, #0	@ D.36543,
	movlt	r0, r3	@ D.36543, tmp633
	ldr	r3, [fp, #-240]	@,
	str	r3, [r4, r1]	@ tmp637, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	r1, #41804	@ tmp635,
	ldr	ip, [fp, #-244]	@,
	str	r3, [r4, r7]	@ tmp637, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	r7, #41816	@ tmp640,
	add	r0, ip, r0, asr #3	@, D.36546, temp.1443, D.36543,
	str	r0, [r4, r1]	@ D.36546, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	ldr	ip, [fp, #-216]	@, %sfp
	add	r1, r2, #112	@, tmp651,
	add	ip, ip, #1	@,,
	str	ip, [fp, #-216]	@, %sfp
	str	r3, [r4, r7]	@ tmp637, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	cmp	ip, #125	@,
	ldr	r7, [fp, #-212]	@, %sfp
	str	r1, [fp, #-228]	@, %sfp
	movw	r1, #41776	@ tmp642,
	str	r7, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r1, #41780	@ tmp644,
	str	lr, [r4, r1]	@ temp.1444, <variable>.CodecInfo.SliceHeader.osvquant
	movw	r7, #41784	@ tmp646,
	ldr	ip, [fp, #-264]	@, %sfp
	add	r1, r2, #104	@ tmp689, tmp651,
	str	ip, [r4, r7]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	r7, r2, #84	@, tmp651,
	str	r7, [fp, #-232]	@, %sfp
	movw	ip, #41788	@,
	ldr	r7, [fp, #-224]	@, %sfp
	str	r7, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	add	ip, r2, #100	@, tmp651,
	str	r0, [r2, #84]	@ D.36546, <variable>.StreamPhyAddr
	movw	r0, #41796	@,
	str	ip, [fp, #-236]	@, %sfp
	add	r7, r2, #92	@ tmp677, tmp651,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	r0, #41800	@ tmp665,
	str	ip, [r2, #92]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	ip, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	lr, [r1, #8]	@ temp.1444, <variable>.osvquant
	str	ip, [r2, #100]	@, <variable>.StreamLength
	ldr	lr, [fp, #-228]	@, %sfp
	ldr	r2, [fp, #-224]	@, %sfp
	str	r2, [lr, #8]	@, <variable>.first_mb_in_slice
	ldr	r0, [fp, #-232]	@, %sfp
	str	r3, [r0, #4]	@ tmp637, <variable>.StreamPhyAddr
	str	r3, [r7, #4]	@ tmp637, <variable>.StreamBitOffset
	ldr	r7, [fp, #-236]	@, %sfp
	str	r3, [r7, #4]	@ tmp637, <variable>.StreamLength
	ldr	r7, [fp, #-264]	@, %sfp
	str	r7, [r1, #4]	@, <variable>.dblk_filter_passthrough
	ldr	r1, [fp, #-212]	@, %sfp
	str	r1, [lr, #4]	@, <variable>.sliceqp
	ldr	ip, [fp, #-216]	@, %sfp
	str	ip, [r4, #40]	@, <variable>.Rv9DecParam.TotalSliceNum
	ble	.L355	@,
	ldr	r2, [fp, #-220]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r2, [r4, #44]	@, <variable>.Rv9DecParam.FstSlcGrp
	str	r3, [fp, #-240]	@,
	bl	Real9_ModifySliceMsg	@
	ldr	r3, [fp, #-240]	@,
	cmp	r0, #1	@,
	bne	.L404	@,
	ldr	lr, [fp, #-200]	@, %sfp
	str	r3, [fp, #-220]	@ tmp637, %sfp
	str	lr, [r4, #4]	@, <variable>.pRv9DecParam
	str	r3, [fp, #-216]	@ tmp637, %sfp
	b	.L355	@
.L392:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36221, tmp325
	b	.L300	@
.L314:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L396:
	movw	lr, #42892	@ tmp395,
	movw	r1, #:lower16:.LC17	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36221, D.36350
	b	.L300	@
.L394:
	movw	ip, #11368	@ tmp379,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L317	@,
.L318:
	mov	r0, r8	@, D.36326
	bl	ResetVoQueue	@
	b	.L383	@
.L393:
	movw	r7, #41668	@ tmp338,
	ldr	ip, [fp, #-172]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r0, [r4, r7]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	ip, r0	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L310	@,
	b	.L311	@
.L395:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36221, D.36344
	b	.L300	@
.L387:
	movw	lr, #:lower16:74128	@ tmp709,
	movt	lr, #:upper16:74128	@ tmp709,
	movw	r0, #43000	@ tmp710,
	mov	r2, #1	@,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L398:
	movw	r1, #11365	@ tmp422,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L303	@,
.L324:
	mov	r3, #2	@ iftmp.456,
	b	.L325	@
.L397:
	movw	r2, #11365	@ tmp445,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L327	@,
	movw	lr, #43000	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L328:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, .L407	@,
	movt	r1, #:upper16:.LC21	@,
	movw	r3, #1871	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L402:
	add	r0, r3, #10432	@ tmp616, <variable>.CodecInfo.TotalSliceNum,
	movw	r2, #42864	@,
	add	lr, r0, #25	@ tmp616, tmp616,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, tmp730
	rsb	r2, r9, r1	@ tmp614, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r4, lr, asl #2]	@ tmp619, <variable>.CodecInfo.SliceByteOffset
	b	.L386	@
.L320:
	movw	r9, #43000	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.36221, pImg
	b	.L300	@
.L349:
	ldr	r3, [fp, #-220]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r3, [r4, #44]	@, <variable>.Rv9DecParam.FstSlcGrp
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L387	@,
	ldr	r3, [r4, #0]	@ temp.1453, <variable>.pstExtraData
	ldr	r7, [fp, #-200]	@, %sfp
	str	r7, [r4, #4]	@, <variable>.pRv9DecParam
	ldr	r2, [r3, #680]	@ D.36556, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36556,
	beq	.L405	@,
	cmp	r2, #2	@ D.36556,
	beq	.L406	@,
.L367:
	ldr	ip, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r3, #11348	@ tmp722,
	mov	r0, #1	@ D.36221,
	str	ip, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Rv9DecParam.Compress_en
	b	.L300	@
.L400:
	movw	r0, #42864	@ tmp534,
	ldr	r1, [fp, #-232]	@, %sfp
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	movw	r2, #41832	@ tmp537,
	mov	r0, r5	@, tmp730
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, r1, ip	@ tmp535,, <variable>.CodecInfo.BsLength
	b	.L385	@
.L399:
	movw	lr, #41684	@ tmp482,
	ldr	r1, [r9, #492]	@ D.36440, <variable>.TR
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	r9, [ip, #492]	@ <variable>.TR, <variable>.TR
	subs	r2, r8, r1	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36440
	rsb	r3, r1, r9	@ trd, D.36440, <variable>.TR
	movwmi	r9, #41680	@ tmp485,
	ldrmi	r9, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r2, r2, r9	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, #0	@ trd,
	movwlt	r9, #41680	@ tmp487,
	ldrlt	r9, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r3, r3, r9	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	movle	r0, #0	@ prephitmp.1467,
	movle	ip, r0	@ prephitmp.1468, prephitmp.1467
	ble	.L341	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r2, [fp, #-248]	@,
	str	r3, [fp, #-240]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-240]	@,
	ldr	r2, [fp, #-248]	@,
	mov	r1, r3	@, trd
	mov	ip, r0	@ prephitmp.1468,
	rsb	r0, r2, r3	@ tmp493, trb, trd
	str	ip, [fp, #-244]	@,
	mov	r0, r0, asl #14	@, tmp493,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-244]	@,
	ldr	r3, [fp, #-240]	@,
	ldr	r2, [fp, #-248]	@,
.L341:
	movw	r1, #42916	@ tmp500,
	add	r9, r1, #4	@ tmp501, tmp501,
	movw	lr, #42908	@ tmp498,
	movw	r8, #42912	@ tmp499,
	str	r2, [r4, lr]	@ trb, <variable>.CodecInfo.trb
	str	r3, [r4, r8]	@ trd, <variable>.CodecInfo.trd
	str	ip, [r4, r1]	@ prephitmp.1468, <variable>.CodecInfo.Ratio0
	str	r0, [r4, r9]	@ prephitmp.1467, <variable>.CodecInfo.Ratio1
	b	.L336	@
.L330:
	movw	ip, #:lower16:74128	@ tmp468,
	movt	ip, #:upper16:74128	@ tmp468,
	movw	r3, #43000	@ tmp469,
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L404:
	movw	r0, #:lower16:74128	@ tmp705,
	movt	r0, #:upper16:74128	@ tmp705,
	movw	r1, #43000	@ tmp706,
	mov	r2, #1	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-240]	@,
	mov	r0, r3	@ D.36221, tmp637
	b	.L300	@
.L401:
	movw	ip, #:lower16:74128	@ tmp601,
	movt	ip, #:upper16:74128	@ tmp601,
	movw	r1, #43000	@ tmp602,
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r3, [fp, #-240]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-240]	@,
	mov	r0, r3	@ D.36221, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L300	@
.L403:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #2072	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36221,
	b	.L300	@
.L406:
	ldr	lr, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	lr, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L367	@,
	ldr	r8, [fp, #-200]	@, %sfp
	cmp	r8, #0	@,
	beq	.L367	@,
	ldrb	r0, [r4, #9]	@ zero_extendqisi2	@ <variable>.Rv9DecParam.PicCodingType, <variable>.Rv9DecParam.PicCodingType
	cmp	r0, #2	@ <variable>.Rv9DecParam.PicCodingType,
	bne	.L367	@,
	movw	r1, #:lower16:74128	@ tmp718,
	movt	r1, #:upper16:74128	@ tmp718,
	mov	r5, #0	@ tmp717,
	movw	lr, #43000	@ tmp719,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, tmp717
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp717, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1459, <variable>.pstExtraData
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	ldr	r2, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp721, <variable>.stDisParams.s32DisNums,
	str	ip, [r3, #684]	@ tmp721, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r5	@ D.36221, tmp717
	b	.L300	@
.L405:
	cmp	r7, #0	@,
	beq	.L367	@,
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.Rv9DecParam.PicCodingType, <variable>.Rv9DecParam.PicCodingType
	cmp	r1, #2	@ <variable>.Rv9DecParam.PicCodingType,
	bne	.L367	@,
	movw	r2, #:lower16:74128	@ tmp713,
	movt	r2, #:upper16:74128	@ tmp713,
	mov	r5, #0	@ tmp712,
	movw	ip, #43000	@ tmp714,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, r5	@, tmp712
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp712, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r5	@ D.36221, tmp712
	b	.L300	@
.L408:
	.align	2
.L407:
	.word	.LANCHOR0+460
	.fnend
	.size	REAL9DEC_Decode, .-REAL9DEC_Decode
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
	.type	__func__.36198, %object
	.size	__func__.36198, 16
__func__.36198:
	.ascii	"REAL9DEC_Decode\000"
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
	.ascii	"real9 actual frame size(%dx%d) exeed max config(%dx"
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
	.ascii	"Real9_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC14:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC15:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC16:
	.ascii	"Real9_ArrangeVHBMem err\012\000"
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
	.ascii	"CurFsID abnormal!,%s %d (NULL == pCur) || (NULL == "
	.ascii	"pFwd) || (NULL == pBwd)!!\012\000"
	.space	2
.LC22:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC23:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC24:
	.ascii	"Pos0: Illegal OSVQUANT=%d\000"
	.space	2
.LC25:
	.ascii	"Pos1: Illegal OSVQUANT=%d\000"
	.space	2
.LC26:
	.ascii	"line:%d! i > (RV9_MAX_SLC_PARAM_NUM - 2)\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
