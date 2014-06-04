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
@ -DKBUILD_BASENAME=KBUILD_STR(real9) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
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
	ldr	r3, [r0, #16]	@ D.35874, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35874,
	beq	.L21	@,
	cmp	r3, #176	@ D.35874,
	beq	.L22	@,
	cmp	r3, #352	@ D.35874,
	bne	.L7	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35874,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35895, tmp154,
	mov	r2, r1, lsr #4	@ D.35897, tmp155,
	str	r3, [r0, #76]	@ D.35895, <variable>.Rv9ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35895, D.35897
	str	r2, [r0, #72]	@ D.35897, <variable>.Rv9ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.490, tmp157,
	cmp	r3, #47	@ prephitmp.490,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.490,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.490,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.490,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.490,
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
	cmp	r3, #704	@ D.35874,
	bne	.L24	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #76]	@ tmp149, <variable>.Rv9ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.490,
	str	r2, [r0, #72]	@ tmp150, <variable>.Rv9ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #72]	@ tmp147, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.490,
	str	r1, [r0, #76]	@ tmp146, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35874,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #72]	@ tmp153, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.490,
	str	r1, [r0, #76]	@ tmp152, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real9_CB_SetDimensions, .-Real9_CB_SetDimensions
	.align	2
	.global	RV9_RecordVFMWState
	.type	RV9_RecordVFMWState, %function
RV9_RecordVFMWState:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	RV9_RecordVFMWState, .-RV9_RecordVFMWState
	.align	2
	.global	Real9_WriteSliceMsg
	.type	Real9_WriteSliceMsg, %function
Real9_WriteSliceMsg:
	.fnstart
.LFB1364:
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
	movw	ip, #39756	@ tmp141,
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	r2, #39748	@ tmp148,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	add	ip, r3, #104	@ tmp182, tmp139,
	str	r4, [r3, #84]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	add	r2, r3, #112	@ tmp196, tmp139,
	str	r4, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	movw	r4, #39752	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r4, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	movw	r4, #39768	@ tmp162,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r4, [r3, #88]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	movw	r4, #39760	@ tmp169,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r4, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	movw	r4, #39764	@ tmp176,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r4, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	movw	r3, #39736	@ tmp183,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r3, [ip, #4]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	movw	r3, #39732	@ tmp190,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	str	r3, [ip, #8]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	movw	ip, #39728	@ tmp197,
	ldr	r3, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #39740	@ tmp204,
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
.LFB1365:
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
	movw	r8, #39608	@ tmp134,
	movw	r2, #39772	@ tmp147,
	movw	r7, #39624	@ tmp137,
	movw	r6, #39620	@ tmp139,
	movw	r5, #40868	@ tmp141,
	movw	ip, #40872	@ tmp143,
	movw	r4, #39776	@ tmp149,
	movw	r1, #39648	@ tmp145,
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
.LFB1366:
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
	ldr	r3, [r0, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.36363, <variable>.Rv9DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.36364, <variable>.Rv9DecParam.PicHeightInMb
	bne	.L35	@,
	mul	r1, r1, r3	@ tmp199, D.36363, D.36364
	ldr	r2, [r0, #40]	@ temp.717, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.717,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L36	@,
	sub	r4, r2, #1	@ prephitmp.619, temp.717,
	cmp	r4, #1	@ prephitmp.619,
	bls	.L41	@,
	ldr	r3, [r0, #164]	@ temp.690, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.690,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.690
	ble	.L35	@,
	tst	r2, #1	@ temp.717,
	mov	r3, r0	@ ivtmp.688, pCtx
	mov	ip, #1	@ i.689,
	bne	.L39	@,
	ldr	r3, [r0, #208]	@ D.36377, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.689,
	cmp	r3, #0	@ D.36377,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36377
	add	r3, r0, #44	@ ivtmp.688, pCtx,
	bgt	.L39	@,
.L35:
	mov	r0, #0	@ D.36370,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L36:
	moveq	r4, #1	@ prephitmp.619,
	bne	.L42	@,
.L41:
	tst	r4, #1	@ prephitmp.619,
	mov	r3, r0	@ ivtmp.681, pCtx
	mov	ip, #0	@ i,
	beq	.L38	@,
	cmp	r4, #0	@ prephitmp.619,
	bls	.L93	@,
	ldr	r6, [r0, #120]	@ temp.691, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #164]	@ D.36384, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.681, pCtx,
	cmp	r6, r5	@ temp.691, D.36384
	bge	.L35	@,
	cmp	r4, ip	@ prephitmp.619, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.681,
	bls	.L93	@,
.L45:
	ldr	r7, [r3, #120]	@ temp.691, <variable>.first_mb_in_slice
	ldr	r6, [r3, #164]	@ D.36384, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.681, ivtmp.681,
	cmp	r7, r6	@ temp.691, D.36384
	bge	.L35	@,
	ldr	r6, [r5, #164]	@ D.36384, <variable>.first_mb_in_slice
	ldr	r5, [r5, #120]	@ temp.691, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.691, D.36384
	bge	.L35	@,
.L38:
	cmp	r4, ip	@ prephitmp.619, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.681,
	bhi	.L45	@,
.L93:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.619, pCtx
	ldr	r3, [r4, #120]	@ D.36389, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.36389,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.36389
	blt	.L35	@,
.L42:
	cmp	r2, #0	@ temp.717,
	beq	.L95	@,
	mov	r6, #0	@ i.716,
	mov	ip, r0	@ ivtmp.698, pCtx
	mov	r3, r0	@ ivtmp.674, pCtx
	mov	r4, r6	@ i.696, i.716
	b	.L48	@
.L97:
	cmp	r5, #0	@ temp.695,
	blt	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.695
	blt	.L35	@,
	cmp	r2, #0	@ TotalMbnMinus1.694,
	blt	.L35	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.694
	blt	.L35	@,
	ldr	r2, [r0, #40]	@ temp.717, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.717, i.696
	bls	.L96	@,
.L48:
	sub	r2, r2, #1	@ tmp205, temp.717,
	ldr	r5, [r3, #120]	@ temp.695, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.716, tmp205
	add	r4, r4, #1	@ i.696, i.696,
	streq	r1, [r3, #124]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #164]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.694, TotalMbnMinus1
	mov	r6, r4	@ i.716, i.696
	subne	r2, r2, #1	@ TotalMbnMinus1.694, <variable>.first_mb_in_slice,
	strne	r2, [r3, #124]	@ TotalMbnMinus1.694, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.695, TotalMbnMinus1.694
	add	r3, r3, #44	@ ivtmp.674, ivtmp.674,
	ble	.L97	@,
	b	.L35	@
.L40:
	ldr	r5, [r3, #208]	@ D.36377, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.688, ivtmp.688,
	cmp	r5, #0	@ D.36377,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36377
	ble	.L35	@,
	ldr	r5, [r6, #208]	@ D.36377, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.36377,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.36377
	ble	.L35	@,
.L39:
	add	ip, ip, #1	@ tmp261, i.689,
	add	r6, r3, #44	@ tmp260, ivtmp.688,
	cmp	r4, ip	@ prephitmp.619, tmp261
	add	ip, ip, #1	@ i.689, tmp261,
	bhi	.L40	@,
	b	.L41	@
.L96:
	cmp	r2, #0	@ temp.717,
	ldr	r3, [r0, #84]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L49	@,
	tst	r2, #1	@ temp.717,
	mov	r5, r3	@ stream_base_addr.718, stream_base_addr
	mov	r4, #0	@ i.697,
	bne	.L52	@,
	mov	r1, r3	@ stream_base_addr.703, stream_base_addr
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.718
	bcs	.L67	@,
	ldr	r5, [r0, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L67	@,
.L68:
	add	ip, r0, #44	@ ivtmp.698, pCtx,
	mov	r4, #1	@ i.697,
	ldr	r5, [ip, #84]	@ stream_base_addr.718, <variable>.StreamPhyAddr
.L52:
	cmp	r5, r3	@ stream_base_addr.718, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.703, stream_base_addr
	ldr	r3, [ip, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.697,
	add	r1, ip, #44	@ tmp252, ivtmp.698,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.703
	bcs	.L50	@,
.L98:
	ldr	ip, [ip, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L50	@,
.L51:
	cmp	r4, r2	@ tmp251, temp.717
	beq	.L49	@,
	ldr	ip, [r1, #84]	@ stream_base_addr.718, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.718, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.703, stream_base_addr
	ldr	r3, [r1, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.703
	bcs	.L70	@,
	ldr	r5, [r1, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L70	@,
	add	ip, r1, #44	@ ivtmp.698, tmp252,
	add	r4, r4, #1	@ i.697, tmp251,
	ldr	r5, [ip, #84]	@ stream_base_addr.718, <variable>.StreamPhyAddr
.L99:
	cmp	r5, r3	@ stream_base_addr.718, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.703, stream_base_addr
	ldr	r3, [ip, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.697,
	add	r1, ip, #44	@ tmp252, ivtmp.698,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.703
	bcc	.L98	@,
.L50:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.703
	b	.L51	@
.L70:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.703
	add	ip, r1, #44	@ ivtmp.698, tmp252,
	add	r4, r4, #1	@ i.697, tmp251,
	ldr	r5, [ip, #84]	@ stream_base_addr.718, <variable>.StreamPhyAddr
	b	.L99	@
.L67:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.703
	b	.L68	@
.L95:
	ldr	r3, [r0, #84]	@ stream_base_addr, <variable>.StreamPhyAddr
.L49:
	cmp	r2, #0	@ temp.717,
	bic	r4, r3, #15	@ prephitmp.623, stream_base_addr,
	str	r4, [r0, #48]	@ prephitmp.623, <variable>.Rv9DecParam.StreamBaseAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.717,
	mov	r3, r0	@ ivtmp.647, pCtx
	mov	r1, #0	@ i.692,
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
	rsb	r3, r4, r3	@ BytePos1, prephitmp.623, tmp287
	rsb	r4, r4, ip	@ BytePos0.706, prephitmp.623, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.706,
	bic	r4, r4, #15	@ tmp280, BytePos0.706,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #84]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #92]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #96]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #88]	@ tmp290, <variable>.StreamPhyAddr
.L90:
	mov	r1, #1	@ i.692,
	add	r3, r0, #44	@ ivtmp.647, pCtx,
	ldr	r4, [r0, #48]	@ prephitmp.623, <variable>.Rv9DecParam.StreamBaseAddr
	b	.L56	@
.L100:
	ldr	ip, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.623, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #84]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #92]	@ tmp218, <variable>.StreamBitOffset
.L55:
	add	r1, r1, #1	@ tmp246, i.692,
	add	r3, r3, #44	@ tmp247, ivtmp.647,
	cmp	r1, r2	@ tmp246, temp.717
	bcs	.L53	@,
	ldr	ip, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #48]	@ prephitmp.623, <variable>.Rv9DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L63	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.623, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #84]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #92]	@ tmp334, <variable>.StreamBitOffset
.L91:
	ldr	r4, [r0, #48]	@ prephitmp.623, <variable>.Rv9DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.692, tmp246,
	add	r3, r3, #44	@ ivtmp.647, tmp247,
.L56:
	ldr	ip, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L100	@,
	ldr	r6, [r3, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.706, prephitmp.623, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.706,
	bic	r4, r4, #15	@ tmp223, BytePos0.706,
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
	rsb	r4, r4, r6	@ BytePos0.706, prephitmp.623, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.706,
	bic	r4, r4, #15	@ tmp310, BytePos0.706,
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
	mov	r0, #1	@ D.36370,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L89:
	ldr	r5, [r0, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.623, tmp298
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
.LFB1374:
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
	movw	r4, #:lower16:70032	@ tmp138,
	movt	r4, #:upper16:70032	@ tmp138,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36997,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.37000,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r5, #40960	@, pCtx,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	add	r1, r1, #32	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37000,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	REAL9DEC_GetImageBuffer, .-REAL9DEC_GetImageBuffer
	.align	2
	.global	REAL9DEC_Destroy
	.type	REAL9DEC_Destroy, %function
REAL9DEC_Destroy:
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
	movw	r3, #40844	@ tmp135,
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
.LFB1371:
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
	movw	r4, #:lower16:70032	@ tmp142,
	movt	r4, #:upper16:70032	@ tmp142,
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
.LFB1368:
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
	add	r6, r4, #40960	@, pCtx,
	movw	r1, #:lower16:70040	@,
	movt	r1, #:upper16:70040	@,
	bl	__memzero	@
	add	r0, r6, #32	@,,
	bl	ResetVoQueue	@
	movw	r2, #39776	@ tmp143,
	movw	r0, #39772	@ tmp141,
	mov	r3, #15	@ tmp142,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movw	ip, #11364	@ tmp145,
	str	r3, [r4, r0]	@ tmp142, <variable>.CodecInfo.PrevPicQP
	movw	r1, #11368	@ tmp148,
	str	r3, [r4, r2]	@ tmp142, <variable>.CodecInfo.PrevPicMb0QP
	movw	r0, #39632	@ tmp153,
	ldr	r2, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r3, #39600	@ tmp155,
	mov	r6, #0	@ tmp149,
	strb	r6, [r4, r1]	@ tmp149, <variable>.CodecInfo.Imgbuf_allocated
	mov	r1, #8192	@ tmp154,
	str	r1, [r4, r0]	@ tmp154, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	strb	r2, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r2, #39604	@ tmp151,
	mov	ip, #1	@ tmp152,
	mov	r0, r4	@, pCtx
	strb	ip, [r4, r3]	@ tmp152, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	str	ip, [r4, r2]	@ tmp152, <variable>.CodecInfo.PictureHeader.Fid
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:70032	@ tmp158,
	movt	r3, #:upper16:70032	@ tmp158,
	cmn	r0, #1	@ D.36455,
	str	r0, [r4, r3]	@ D.36455, <variable>.ChanID
	movne	r0, r6	@ D.36460, tmp149
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r6	@, tmp149
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36460,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	REAL9DEC_Init, .-REAL9DEC_Init
	.align	2
	.global	Real9_SetImgFormat
	.type	Real9_SetImgFormat, %function
Real9_SetImgFormat:
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
	movw	r1, #:lower16:70032	@ tmp142,
	movt	r1, #:upper16:70032	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #40952	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #39608	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #108]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.36249, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #39616	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.36249,
	str	r3, [r4, #116]	@ D.36249, <variable>.bottom_fld_type
	str	r3, [r4, #112]	@ D.36249, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #120]	@ tmp148, <variable>.format
	movw	lr, #39612	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #124]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #128]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
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
	str	r3, [r4, #316]	@ tmp175, <variable>.ImageDnr.QP_U
	str	r3, [r4, #312]	@ tmp175, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #301]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #308]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #296]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #303]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #320]	@ tmp175, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L118:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #152]	@ D.36257, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.36257,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.36257
	mul	r1, r1, lr	@ D.36263, tmp160, tmp157
	str	ip, [r4, #76]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.36263, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.36263
	str	lr, [r4, #88]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.36257
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #72]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L116	@
	.fnend
	.size	Real9_SetImgFormat, .-Real9_SetImgFormat
	.align	2
	.global	REAL9DEC_VDMPostProc
	.type	REAL9DEC_VDMPostProc, %function
REAL9DEC_VDMPostProc:
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
	movw	r5, #:lower16:70032	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	movt	r5, #:upper16:70032	@ tmp145,
	mov	r2, r1	@, ErrRatio
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	movw	r8, #40952	@ tmp147,
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #40948	@ tmp151,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #40944	@ tmp155,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #39608	@ tmp158,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r2, #11366	@ tmp157,
	mov	r0, #22	@,
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r7, r7, #31	@ tmp164, Mb0QpInCurrPic,
	movwne	r1, #39776	@ tmp163,
	strne	r7, [r4, r1]	@ tmp164, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r6, #100	@ ErrRatio,
	movcs	r6, #100	@ tmp165,
	movw	r1, #:lower16:.LC3	@,
	str	r6, [r8, #160]	@ tmp165, <variable>.error_level
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real9_SetImgFormat	@
	movw	r0, #11364	@ tmp167,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r3, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L123	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L123	@,
	movw	r3, #39608	@ tmp173,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L123	@,
	movw	lr, #11365	@ tmp175,
	movw	ip, #40956	@ tmp182,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r2, #40944	@ tmp177,
	mvnls	r1, #0	@ prephitmp.856,
	ldrhi	r1, [r4, r2]	@ prephitmp.856,
	cmn	r1, #1	@ prephitmp.856,
	str	r1, [r4, ip]	@ prephitmp.856, <variable>.CodecInfo.ToQueFsID
	bne	.L131	@,
.L127:
	movw	lr, #40844	@ tmp201,
	mov	r0, #1	@ D.36988,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp204, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, lr]	@ tmp204, <variable>.CodecInfo.FrmCnt
.L128:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L123:
	movw	r0, #40952	@ tmp181,
	movw	ip, #40956	@ tmp182,
	ldr	r1, [r4, r0]	@ prephitmp.856,
	cmn	r1, #1	@ prephitmp.856,
	str	r1, [r4, ip]	@ prephitmp.856, <variable>.CodecInfo.ToQueFsID
	beq	.L127	@,
.L131:
	movw	r5, #:lower16:70032	@ tmp183,
	movt	r5, #:upper16:70032	@ tmp183,
	movw	r6, #40956	@ tmp185,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36978, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36978
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36978
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, r0	@ D.36983,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #40960	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	add	r3, r3, #32	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L127	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36988,
	b	.L128	@
	.fnend
	.size	REAL9DEC_VDMPostProc, .-REAL9DEC_VDMPostProc
	.align	2
	.global	REAL9DEC_GetRemainImg
	.type	REAL9DEC_GetRemainImg, %function
REAL9DEC_GetRemainImg:
	.fnstart
.LFB1372:
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
	beq	.L144	@,
	movw	r6, #:lower16:70032	@ tmp142,
	movt	r6, #:upper16:70032	@ tmp142,
	movw	r7, #40948	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L144	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L142	@,
.L144:
	add	r5, r4, #40960	@ tmp169, pCtx,
	add	r5, r5, #32	@ tmp169, tmp169,
.L133:
	mov	r0, r5	@, tmp169
	bl	GetVoLastImageID	@
.L135:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L142:
	mov	r0, r4	@, pCtx
	add	r5, r4, #40960	@ tmp169, pCtx,
	bl	Real9_SetImgFormat	@
	add	r5, r5, #32	@ tmp169, tmp169,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #196]	@ tmp150, <variable>.last_frame
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
	beq	.L134	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	b	.L133	@
.L134:
	ldr	r2, [r8, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L133	@,
	ldr	ip, [r8, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L133	@,
	ldr	lr, [r8, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L135	@,
	b	.L133	@
	.fnend
	.size	REAL9DEC_GetRemainImg, .-REAL9DEC_GetRemainImg
	.align	2
	.global	Real9_CB_FindNextSliceStartCode
	.type	Real9_CB_FindNextSliceStartCode, %function
Real9_CB_FindNextSliceStartCode:
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
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r8, r0, #7	@ tmp142, D.35955,
	cmp	r0, #0	@ D.35955,
	movlt	r0, r8	@ D.35955, tmp142
	mov	r8, r0, asr #3	@ tmp143, D.35955,
	sub	r7, r8, #2	@ RemainByte, tmp143,
	cmp	r7, #0	@ RemainByte,
	ble	.L146	@,
	sub	r2, r8, #3	@ tmp150, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r2, #1	@ tmp152, tmp150,
	bl	BsShow	@
	movw	r6, #:lower16:1907728	@ tmp148,
	movt	r6, #:upper16:1907728	@ tmp148,
	cmp	r0, r6	@, tmp148
	beq	.L160	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r7, r5	@ RemainByte, i
	ble	.L146	@,
	cmp	r8, #0	@ tmp152,
	beq	.L149	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@, tmp148
	beq	.L160	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r7, r5	@ RemainByte, i
	bgt	.L149	@,
	b	.L146	@
.L147:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	beq	.L160	@,
	bl	BsSkip	@
	cmp	r7, r5	@ RemainByte, i
	ble	.L146	@,
.L149:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp153, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp153,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	bne	.L147	@,
.L160:
	mov	r0, #1	@ D.35960,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L146:
	mov	r0, #0	@ D.35960,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_FindNextSliceStartCode, .-Real9_CB_FindNextSliceStartCode
	.align	2
	.global	Real9_CB_GetSSC
	.type	Real9_CB_GetSSC, %function
Real9_CB_GetSSC:
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
	ldr	r3, [r1, #4]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.36001,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	Real9_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.36001,,
	movne	r0, #1	@ D.36001
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Real9_CB_GetSSC, .-Real9_CB_GetSSC
	.align	2
	.global	Real9_CB_GetVLCBits
	.type	Real9_CB_GetVLCBits, %function
Real9_CB_GetVLCBits:
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
.L166:
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
	beq	.L166	@,
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
	.size	Real9_CB_Get1Bit, .-Real9_CB_Get1Bit
	.align	2
	.global	Real9_CB_GetBits
	.type	Real9_CB_GetBits, %function
Real9_CB_GetBits:
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
	.size	Real9_CB_GetBits, .-Real9_CB_GetBits
	.align	2
	.global	Real9_CB_SearchBits_IgnoreOnly0
	.type	Real9_CB_SearchBits_IgnoreOnly0, %function
Real9_CB_SearchBits_IgnoreOnly0:
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
	bl	Real9_CB_GetBits	@
	cmp	r0, r4	@ w, code
	cmpne	r5, #0	@, lookahead,
	mov	r3, r0	@ w,
	beq	.L174	@,
	sub	r2, r7, #1	@ tmp152, nbits,
	mov	sl, #1	@ tmp153,
	mov	sl, sl, asl r2	@ msb, tmp153,
	ands	r8, r0, sl	@ tmp154, w, msb
	bne	.L175	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp155,
	add	r7, r0, r7, asl #2	@, tmp158, tmp155, nbits,
	ldr	r9, [r7, #280]	@ pretmp.1040, GetBitsMask
	b	.L176	@
.L177:
	tst	r3, sl	@ w, msb
	bne	.L175	@,
.L176:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.35982, pretmp.1040, w,
	bl	Real9_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.35982,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L177	@,
.L174:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.35989
	moveq	r0, #1	@, D.35989
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L175:
	mov	r0, #0	@ D.35989,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_SearchBits_IgnoreOnly0, .-Real9_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real9_CB_GetPicSize
	.type	Real9_CB_GetPicSize, %function
Real9_CB_GetPicSize:
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
	ldr	r8, .L196	@ tmp149,
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
	bls	.L194	@,
.L181:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	sub	r5, fp, #44	@,,
	add	r6, r5, r0, asl #2	@, tmp162,,,
	ldr	r5, [r6, #-48]	@ w, code_width
	cmp	r5, #0	@ w,
	beq	.L189	@,
.L183:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	sub	r2, fp, #44	@,,
	add	ip, r2, r0, asl #2	@, tmp167,, code.1083,
	mov	r3, r0	@ code.1083,
	ldr	r6, [ip, #-80]	@ h, code_height1
	cmp	r6, #0	@ h,
	beq	.L195	@,
.L185:
	ldr	ip, [fp, #-128]	@, %sfp
	str	r5, [ip, #0]	@ w,
	ldr	lr, [fp, #-132]	@, %sfp
	str	r6, [lr, #0]	@ h,
.L187:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L189:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1082,
	add	r5, r5, r0, asl #2	@, w, w, code.1082,
	bne	.L183	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1082,
	add	r5, r5, r0, asl #2	@, w, w, code.1082,
	beq	.L189	@,
	b	.L183	@
.L194:
	mov	r0, r4	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L181	@,
	ldr	r3, [r5, #52]	@ <variable>.pwidth_prev, <variable>.pwidth_prev
	ldr	r0, [fp, #-128]	@, %sfp
	str	r3, [r0, #0]	@ <variable>.pwidth_prev,
	ldr	r2, [fp, #-132]	@, %sfp
	ldr	r1, [r5, #56]	@ <variable>.pheight_prev, <variable>.pheight_prev
	str	r1, [r2, #0]	@ <variable>.pheight_prev,
	b	.L187	@
.L195:
	mov	r0, r4	@, pBs
	mov	r6, r3, asl #1	@ code.1084, code.1083,
	bl	Real9_CB_Get1Bit	@
	sub	r3, fp, #44	@,,
	orr	r6, r0, r6	@ code.1085,, code.1084
	and	r0, r6, #3	@ tmp169, code.1085,
	add	r1, r3, r0, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L185	@,
.L188:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1087,
	add	r6, r6, r0, asl #2	@, h, h, code.1087,
	bne	.L185	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1087,
	add	r6, r6, r0, asl #2	@, h, h, code.1087,
	beq	.L188	@,
	b	.L185	@
.L197:
	.align	2
.L196:
	.word	.LANCHOR0+380
	.fnend
	.size	Real9_CB_GetPicSize, .-Real9_CB_GetPicSize
	.align	2
	.global	Real9_CB_GetSliceHeader
	.type	Real9_CB_GetSliceHeader, %function
Real9_CB_GetSliceHeader:
	.fnstart
.LFB1360:
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
	beq	.L222	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L223	@,
	mvn	r4, #0	@ tmp188,
	mov	ip, #0	@ tmp187,
	str	ip, [r2, #0]	@ tmp187,* iSliceMBA
	str	r4, [r8, #0]	@ tmp188,* iSQUANT
	mov	r4, #1	@ D.36029,
.L211:
	mov	r0, r4	@, D.36029
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L222:
	cmp	r1, #0	@ bFirstSlice,
	ldrne	r0, [r4, #88]	@ prephitmp.1103, <variable>.Rv9ParsePicParam.mba
	bne	.L201	@,
	ldr	sl, [r4, #88]	@ D.36023, <variable>.Rv9ParsePicParam.mba
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L202	@,
	cmn	sl, #1	@ D.36023,
	movne	sl, #0	@, D.37751
	moveq	sl, #1	@, D.37751
	cmp	sl, #0	@ D.37751,
	beq	.L203	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #84]	@, <variable>.Rv9ParsePicParam.ptype
.L204:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	uxtb	r0, r0	@ D.36039,
	strb	r0, [r4, #66]	@ D.36039, <variable>.Rv9ParsePicParam.pquant
	cmp	r0, #31	@ D.36039,
	bls	.L224	@,
.L202:
	mov	r4, #0	@ D.36029,
	b	.L211	@
.L223:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L202	@,
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r2, [r4, #80]	@ <variable>.Rv9ParsePicParam.m_mbaSize, <variable>.Rv9ParsePicParam.m_mbaSize
	cmp	r2, #11	@ <variable>.Rv9ParsePicParam.m_mbaSize,
	bls	.L213	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L202	@,
.L213:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #31	@ D.36096,
	str	r0, [r8, #0]	@ D.36096,* iSQUANT
	bgt	.L202	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.36102,
	mov	r4, r0	@ D.36102,
	bne	.L202	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r7, #0]	@,* iSliceGFID
	b	.L211	@
.L224:
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L202	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	subs	r9, r0, #0	@ D.36046,
	bne	.L202	@,
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
	cmp	sl, #0	@ D.37751,
	strb	r2, [r4, #65]	@ tmp171, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	beq	.L205	@,
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r3, #1	@ <variable>.Rv9ParsePicParam.ptype,
	strls	r9, [r4, #120]	@ D.36046, <variable>.Rv9ParsePicParam.pheight_prev
	strls	r9, [r4, #116]	@ D.36046, <variable>.Rv9ParsePicParam.pwidth_prev
	str	r0, [r4, #92]	@, <variable>.Rv9ParsePicParam.tr
	bls	.L206	@,
	cmp	r3, #2	@ <variable>.Rv9ParsePicParam.ptype,
	ldreq	r1, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldreq	lr, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	streq	r1, [r4, #116]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth_prev
	streq	lr, [r4, #120]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight_prev
.L206:
	mov	r0, r6	@, pBs
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	ldr	r1, [fp, #-56]	@, %sfp
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [fp, #-48]	@ width, width
	ldr	r3, [fp, #-52]	@ height, height
	movw	ip, #5584	@ tmp199,
	sub	r0, r2, #48	@ tmp198, width,
	cmp	r0, ip	@ tmp198, tmp199
	str	r2, [r4, #108]	@ width, <variable>.Rv9ParsePicParam.pwidth
	str	r3, [r4, #112]	@ height, <variable>.Rv9ParsePicParam.pheight
	str	r2, [r4, #16]	@ width, <variable>.pic_width_in_pixel
	str	r3, [r4, #12]	@ height, <variable>.pic_height_in_pixel
	bhi	.L202	@,
	sub	r2, r3, #48	@ tmp179, height,
	movw	r0, #4176	@ tmp180,
	cmp	r2, r0	@ tmp179, tmp180
	bhi	.L202	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
.L210:
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #88]	@ prephitmp.1103, <variable>.Rv9ParsePicParam.mba
.L201:
	str	r0, [r5, #0]	@ prephitmp.1103,* iSliceMBA
	mov	r1, #0	@ tmp184,
	ldrb	r0, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	mov	r4, #1	@ D.36029,
	str	r0, [r8, #0]	@ <variable>.Rv9ParsePicParam.pquant,* iSQUANT
	str	r1, [r7, #0]	@ tmp184,* iSliceGFID
	b	.L211	@
.L203:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	ldr	r1, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, r1	@, <variable>.Rv9ParsePicParam.ptype
	beq	.L204	@,
	mov	r4, #0	@ D.36029,
	b	.L211	@
.L205:
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	r0, r3	@, <variable>.Rv9ParsePicParam.tr
	bne	.L202	@,
	ldr	r1, [fp, #-56]	@, %sfp
	sub	r3, fp, #52	@,,
	mov	r0, r6	@, pBs
	sub	r2, fp, #48	@,,
	bl	Real9_CB_GetPicSize	@
	ldr	r1, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldr	r3, [fp, #-48]	@ width, width
	cmp	r1, r3	@ <variable>.Rv9ParsePicParam.pwidth, width
	bne	.L202	@,
	ldr	ip, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	ldr	r3, [fp, #-52]	@ height, height
	cmp	ip, r3	@ <variable>.Rv9ParsePicParam.pheight, height
	beq	.L210	@,
	mov	r4, #0	@ D.36029,
	b	.L211	@
	.fnend
	.size	Real9_CB_GetSliceHeader, .-Real9_CB_GetSliceHeader
	.align	2
	.global	Real9_CB_GetCPFMT
	.type	Real9_CB_GetCPFMT, %function
Real9_CB_GetCPFMT:
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
	cmp	r0, #1	@ D.35854,
	mov	r6, r0	@ D.35854,
	movne	r6, #0	@ D.35857,
	beq	.L229	@,
	mov	r0, r6	@, D.35857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L229:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real9_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #12]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Real9_CB_GetCPFMT, .-Real9_CB_GetCPFMT
	.align	2
	.global	Real9_CB_GetPictureHeader
	.type	Real9_CB_GetPictureHeader, %function
Real9_CB_GetPictureHeader:
	.fnstart
.LFB1361:
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
	bne	.L231	@,
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
	beq	.L250	@,
.L233:
	ldr	r1, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	r3, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	lr, r1, #15	@ tmp197, <variable>.pic_width_in_pixel,
	add	ip, r3, #15	@ tmp199, <variable>.pic_height_in_pixel,
	mov	r2, lr, lsr #4	@ D.36204, tmp197,
	str	r2, [r4, #24]	@ D.36204, <variable>.pic_width_in_mb
	mov	r0, ip, lsr #4	@ D.36206, tmp199,
	str	r0, [r4, #20]	@ D.36206, <variable>.pic_height_in_mb
	mul	r1, r2, r0	@ tmp201, D.36204, D.36206
	str	r1, [r4, #28]	@ tmp201, <variable>.total_mbs
.L248:
	mov	r0, r5	@, Status
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L231:
	mov	r1, #128	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	movw	r3, #21845	@ tmp171,
	cmp	r0, r3	@ D.36159, tmp171
	mov	r5, r0	@ D.36159,
	beq	.L251	@,
.L241:
	mvn	r5, #1	@ Status,
	b	.L248	@
.L251:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, r5	@, D.36159
	bne	.L241	@,
	sub	r5, fp, #44	@ tmp203,,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, tmp203
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L241	@,
	ldr	r3, [fp, #-44]	@ info, info
	ands	r2, r3, #1	@ tmp174, info,
	bne	.L241	@,
	tst	r3, #2	@ info,
	ubfx	lr, r3, #7, #8	@ tmp185, info,,
	strne	r2, [r4, #12]	@ tmp174, <variable>.pic_height_in_pixel
	mov	r1, r5	@, tmp203
	moveq	r2, #176	@ tmp176,
	strne	r2, [r4, #16]	@ tmp174, <variable>.pic_width_in_pixel
	streq	r2, [r4, #16]	@ tmp176, <variable>.pic_width_in_pixel
	ubfx	r5, r3, #2, #5	@ tmp182, info,,
	moveq	r2, #144	@ tmp177,
	str	lr, [r4, #36]	@ tmp185, <variable>.TR
	streq	r2, [r4, #12]	@ tmp177, <variable>.pic_height_in_pixel
	mov	r0, r6	@, pBs
	str	r5, [r4, #48]	@ tmp182, <variable>.PQUANT
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1179,
	streq	r0, [r4, #8]	@ length.1179, <variable>.PicCodType
	beq	.L245	@,
	cmp	r0, #3	@ length.1179,
	bne	.L246	@,
	ldr	r2, [fp, #-44]	@ info, info
	cmp	r2, #1	@ info,
	moveq	r2, #0	@ tmp189,
	streq	r2, [r4, #8]	@ tmp189, <variable>.PicCodType
	bne	.L241	@,
.L245:
	ldr	r3, [r4, #16]	@ prephitmp.1166, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1166,
	beq	.L252	@,
.L247:
	sub	ip, r3, #48	@ tmp192, prephitmp.1166,
	movw	r0, #5584	@ tmp193,
	cmp	ip, r0	@ tmp192, tmp193
	bhi	.L241	@,
	ldr	lr, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	movw	r3, #4176	@ tmp196,
	sub	r5, lr, #48	@ tmp194, <variable>.pic_height_in_pixel,
	cmp	r5, r3	@ tmp194, tmp196
	bhi	.L241	@,
	mov	r0, r4	@, pPictureHeader
	mov	r5, #1	@ Status,
	bl	Real9_CB_SetDimensions	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	b	.L233	@
.L250:
	ldr	r0, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv9ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv9ParsePicParam.ptype
	b	.L234	@
.L239:
	.word	.L235
	.word	.L236
	.word	.L237
	.word	.L238
.L238:
	mov	r5, #1	@ Status,
	mov	lr, #2	@ tmp159,
	str	lr, [r4, #8]	@ tmp159, <variable>.PicCodType
.L240:
	ldr	r2, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #5584	@ tmp167,
	ldrb	ip, [r4, #65]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	sub	lr, r2, #48	@ tmp165, <variable>.pic_width_in_pixel,
	ldrb	r0, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	ldr	r1, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	lr, r3	@ tmp165, tmp167
	ldr	r2, [r4, #96]	@ <variable>.Rv9ParsePicParam.trb, <variable>.Rv9ParsePicParam.trb
	ldr	r3, [r4, #100]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.Rv9ParsePicParam.dbq
	str	ip, [r4, #44]	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	r0, [r4, #48]	@ <variable>.Rv9ParsePicParam.pquant, <variable>.PQUANT
	str	r1, [r4, #36]	@ <variable>.Rv9ParsePicParam.tr, <variable>.TR
	str	r2, [r4, #56]	@ <variable>.Rv9ParsePicParam.trb, <variable>.TRB
	str	r3, [r4, #60]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.DBQUANT
	bhi	.L241	@,
	ldr	ip, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	movw	r0, #4176	@ tmp170,
	sub	r1, ip, #48	@ tmp168, <variable>.pic_height_in_pixel,
	cmp	r1, r0	@ tmp168, tmp170
	bhi	.L241	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
	b	.L233	@
.L237:
	mov	r5, #1	@ tmp158,
	str	r5, [r4, #8]	@ tmp158, <variable>.PicCodType
	b	.L240	@
.L236:
	mov	r5, #0	@ tmp156,
	str	r5, [r4, #68]	@ tmp156, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r5, [r4, #8]	@ tmp156, <variable>.PicCodType
	mov	r5, #1	@ Status,
	b	.L240	@
.L235:
	mov	r5, #1	@ tmp155,
	mov	r2, #0	@ tmp154,
	str	r5, [r4, #68]	@ tmp155, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r2, [r4, #8]	@ tmp154, <variable>.PicCodType
	b	.L240	@
.L234:
	mvn	r5, #1	@ Status,
	b	.L240	@
.L246:
	cmp	r0, #5	@ length.1179,
	bne	.L241	@,
	ldr	r3, [fp, #-44]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L241	@,
	add	r1, r3, #2	@ tmp191, tmp191,
	str	r1, [r4, #8]	@ tmp191, <variable>.PicCodType
	b	.L245	@
.L252:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real9_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L241	@,
	ldr	r3, [r4, #16]	@ prephitmp.1166, <variable>.pic_width_in_pixel
	b	.L247	@
	.fnend
	.size	Real9_CB_GetPictureHeader, .-Real9_CB_GetPictureHeader
	.align	2
	.global	Real9_ArrangeVHBMem
	.type	Real9_ArrangeVHBMem, %function
Real9_ArrangeVHBMem:
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
	ldr	r1, [r2, #24]	@ D.35779, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.35779,
	ldrls	r3, [r2, #20]	@ prephitmp.1201, <variable>.pic_height_in_mb
	bls	.L255	@,
	ldr	r3, [r2, #20]	@ prephitmp.1201, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1201,
	bls	.L255	@,
	ldr	r1, [r4, #0]	@ D.35786, <variable>.pstExtraData
	ldr	r3, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L258	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L280	@,
.L259:
	ldr	r6, [r2, #12]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1203,
	ldr	r5, [r2, #16]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L266:
	sub	r7, fp, #84	@ tmp202,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp202
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp177,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #:lower16:70032	@ tmp188,
	strb	r3, [fp, #-82]	@ tmp177, FspInstCfg.s32RprEnable
	movt	r6, #:upper16:70032	@ tmp188,
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.1203, FspInstCfg.s32ExpectedDispFsNum
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
	beq	.L281	@,
.L257:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L258:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L259	@,
	ldr	r5, [r2, #16]	@ temp.1225, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #472]	@ D.35794, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1225, D.35794
	bhi	.L282	@,
	ldr	r3, [r2, #12]	@ prephitmp.1207, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #476]	@ prephitmp.1205, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1207, prephitmp.1205
	bhi	.L269	@,
	ldr	r6, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ temp.1228, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L272	@,
	add	sl, r9, #1	@ PmvNum.1230, temp.1228,
	cmp	sl, #17	@ PmvNum.1230,
	movge	sl, #17	@ PmvNum,
.L272:
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.1203, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.1228,
	mov	r6, r3	@ PicHeight, prephitmp.1207
	b	.L266	@
.L255:
	mov	r2, r1	@, D.35779
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L257	@
.L281:
	ldr	lr, [r4, #0]	@ temp.1239, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L283	@,
	mov	ip, #1	@ tmp198,
	movw	r1, #11368	@ tmp197,
	mov	r0, ip	@ D.35783, tmp198
	strb	ip, [r4, r1]	@ tmp198, <variable>.CodecInfo.Imgbuf_allocated
	b	.L257	@
.L280:
	ldr	r0, [r2, #16]	@ D.35793, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #472]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35793, PicWidth
	bhi	.L284	@,
	ldr	r3, [r2, #12]	@ prephitmp.1211, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1211, PicHeight
	bhi	.L261	@,
	movw	r2, #11368	@ tmp165,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L257	@,
	ldr	r7, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ D.35804, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L265	@,
	add	sl, r9, #1	@ PmvNum.1222, D.35804,
	cmp	sl, #17	@ PmvNum.1222,
	movge	sl, #17	@ PmvNum,
.L265:
	add	r9, r9, #2	@ DecFsNum, D.35804,
	ldrb	r8, [r1, #516]	@ zero_extendqisi2	@ prephitmp.1203, <variable>.stChanOption.s32DisplayFrameNum
	b	.L266	@
.L282:
	ldr	lr, [r1, #476]	@ prephitmp.1205, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1207, <variable>.pic_height_in_pixel
.L269:
	mov	r2, r5	@, temp.1225
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L257	@
.L284:
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1211, <variable>.pic_height_in_pixel
.L261:
	mov	r2, r0	@, D.35793
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35783,
	b	.L257	@
.L283:
	mov	r0, r5	@, D.35835
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35783, D.35835
	b	.L257	@
	.fnend
	.size	Real9_ArrangeVHBMem, .-Real9_ArrangeVHBMem
	.align	2
	.global	Real9_GetImageBuffer
	.type	Real9_GetImageBuffer, %function
Real9_GetImageBuffer:
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
	movw	r5, #:lower16:70032	@ tmp142,
	movt	r5, #:upper16:70032	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #40952	@ tmp144,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35732,
	str	r0, [r4, r6]	@ D.35732, <variable>.CodecInfo.CurFsID
	blt	.L291	@,
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
	beq	.L288	@,
	ldr	r3, [r5, #444]	@ D.35748, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35748,
	beq	.L288	@,
	ldr	r0, [r5, #448]	@ D.35751, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35751,
	beq	.L288	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC10	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L288:
	movw	lr, #40952	@ tmp182,
	mov	r0, #1	@ D.35742,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L287:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L291:
	movw	r6, #40948	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #40944	@ tmp156,
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
	movw	r3, #11365	@ tmp166,
	add	r1, r4, #40960	@, pCtx,
	strb	r8, [r4, r3]	@ tmp159, <variable>.CodecInfo.RefNum
	add	r1, r1, #32	@,,
	str	r0, [r4, r7]	@ D.35740, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r6]	@ D.35740, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r8	@ D.35742, tmp159
	b	.L287	@
	.fnend
	.size	Real9_GetImageBuffer, .-Real9_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL9DEC_Decode
	.type	REAL9DEC_Decode, %function
REAL9DEC_Decode:
	.fnstart
.LFB1370:
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
	movw	r3, #39712	@ tmp240,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight
	movw	ip, #39708	@ tmp237,
	ldr	r2, [r4, ip]	@ D.36530, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth
	movw	r0, #39720	@ tmp239,
	movw	ip, #39604	@ tmp248,
	cmp	r5, #0	@ pPacket,
	movw	r1, #39716	@ tmp238,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight_prev
	add	r6, r4, #39424	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp249,
	str	r0, [r4, ip]	@ tmp249, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #39632	@ tmp250,
	str	r2, [r4, r1]	@ D.36530, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth_prev
	add	r6, r6, #176	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp251,
	str	r2, [fp, #-84]	@ D.36530, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp251, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [fp, #-80]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r1, [fp, #-160]	@ tmp251, TmpPictureHeader.m_uTRWrap
	str	r2, [fp, #-76]	@ D.36530, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r3, [fp, #-72]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	str	r0, [fp, #-188]	@ tmp249, TmpPictureHeader.Fid
	beq	.L379	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11344	@,
	str	r0, [fp, #-200]	@, %sfp
	bl	__memzero	@
	movw	r0, #40808	@ tmp258,
	mov	r7, #0	@ tmp259,
	str	r7, [r4, r0]	@ tmp259, <variable>.CodecInfo.BsOffset
	movw	r2, #40828	@ tmp260,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #40812	@ tmp262,
	movw	r0, #11352	@ tmp264,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #40816	@ tmp266,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11356	@ tmp267,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ temp.1351, <variable>.LenInByte
	str	r2, [r4, ip]	@ temp.1351, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L295	@,
	ldr	ip, [r5, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #40820	@ tmp271,
	movw	r1, #11360	@ tmp273,
	movw	r0, #40824	@ tmp275,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11357	@ tmp277,
	ldr	lr, [r5, #64]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #76]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L380	@,
	sub	r0, r2, #10	@ tmp296, temp.1351,
	movw	r3, #:lower16:3145717	@ tmp297,
	movt	r3, #:upper16:3145717	@ tmp297,
	cmp	r0, r3	@ tmp296, tmp297
	bhi	.L297	@,
.L382:
	movw	lr, #11352	@ tmp298,
	ldr	r1, [r4, lr]	@ D.36574, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.36574,
	beq	.L297	@,
	add	r5, r4, #40960	@ tmp713, pCtx,
	movw	r9, #39780	@ tmp299,
	mov	r0, r5	@, tmp713
	bl	BsInit	@
	mov	r0, r5	@, tmp713
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ D.36577,
	add	r0, r0, #1	@ D.36579, D.36577,
	str	r0, [r4, r9]	@ D.36579, <variable>.CodecInfo.TotalSliceNum
	bhi	.L297	@,
	cmp	r0, #0	@ D.36579,
	addeq	r1, r4, #39680	@, pCtx,
	streq	r1, [fp, #-212]	@, %sfp
	beq	.L299	@,
	add	r8, r4, #39680	@, pCtx,
	movw	sl, #:lower16:3145727	@ tmp725,
	str	r8, [fp, #-212]	@, %sfp
	add	r7, r8, #104	@ ivtmp.1345,,
	movt	sl, #:upper16:3145727	@ tmp725,
	mov	r8, #0	@ i.1355,
	b	.L300	@
.L381:
	ldr	r0, [r4, r9]	@ D.36580, <variable>.CodecInfo.TotalSliceNum
	cmp	r0, r8	@ D.36580, i.1355
	bls	.L299	@,
.L300:
	mov	r1, #32	@,
	mov	r0, r5	@, tmp713
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp713
	add	r8, r8, #1	@ i.1355, i.1355,
	bl	Real9_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp302, SliceByteOffset,
	and	r2, r0, #65280	@ tmp304, SliceByteOffset,
	orr	r3, r1, r0, lsr #24	@, tmp303, tmp302, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp307, SliceByteOffset,
	orr	ip, r3, r2, asl #8	@, tmp306, tmp303, tmp304,
	orr	r2, ip, r1, lsr #8	@, D.36596, tmp306, tmp307,
	str	r2, [r7, #0]	@ D.36596, <variable>.CodecInfo.SliceByteOffset
	cmp	r2, sl	@ D.36596, tmp725
	add	r7, r7, #4	@ ivtmp.1345, ivtmp.1345,
	ble	.L381	@,
.L297:
	mov	r0, #0	@ D.36538,
.L294:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L380:
	movw	r6, #:lower16:70032	@ tmp281,
	movt	r6, #:upper16:70032	@ tmp281,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #80]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r7	@ D.36538, tmp259
	b	.L294	@
.L295:
	movw	r0, #40824	@ tmp291,
	movw	r3, #:lower16:3145717	@ tmp297,
	str	r7, [r4, r0]	@ tmp259, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145717	@ tmp297,
	sub	r0, r2, #10	@ tmp296, temp.1351,
	movw	ip, #11357	@ tmp293,
	cmp	r0, r3	@ tmp296, tmp297
	movw	r1, #40820	@ tmp287,
	movw	lr, #11360	@ tmp289,
	strb	r7, [r4, ip]	@ tmp259, <variable>.CodecInfo.IsLastSeg1
	str	r7, [r4, r1]	@ tmp259, <variable>.CodecInfo.BsPhyAddr1
	str	r7, [r4, lr]	@ tmp259, <variable>.CodecInfo.BsVirAddr1
	bls	.L382	@,
	b	.L297	@
.L379:
	movw	lr, #40844	@ tmp256,
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36538, pPacket
	b	.L294	@
.L299:
	ldr	lr, [fp, #-212]	@, %sfp
	sub	r7, r0, #1	@ pretmp.1312, D.36580,
	tst	r7, #1	@ pretmp.1312,
	mov	r2, #0	@ i,
	add	sl, lr, #108	@ ivtmp.1339,,
	mov	r3, sl	@ ivtmp.1414, ivtmp.1339
	beq	.L301	@,
	cmp	r2, r7	@ i, pretmp.1312
	bcs	.L370	@,
	ldr	r1, [sl, #0]	@ D.36602, <variable>.CodecInfo.SliceByteOffset
	mov	r2, #1	@ i,
	ldr	lr, [sl, #-4]	@ D.36597, <variable>.CodecInfo.SliceByteOffset
	ldr	r9, [fp, #-212]	@, %sfp
	cmp	r1, lr	@ D.36602, D.36597
	add	r3, r9, #112	@ ivtmp.1414,,
	bgt	.L301	@,
	b	.L297	@
.L302:
	ldr	r8, [r3, #0]	@ D.36602, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r3, #-4]	@ D.36597, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, ip	@ D.36602, D.36597
	ble	.L297	@,
	ldr	ip, [r3, #4]	@ D.36602, <variable>.CodecInfo.SliceByteOffset
	add	r3, r1, #4	@ ivtmp.1414, tmp729,
	ldr	lr, [r1, #-4]	@ D.36597, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.36602, D.36597
	ble	.L297	@,
.L301:
	cmp	r2, r7	@ i, pretmp.1312
	add	r8, r2, #1	@ tmp730, i,
	add	r2, r8, #1	@ i, tmp730,
	add	r1, r3, #4	@ tmp729, ivtmp.1414,
	bcc	.L302	@,
.L370:
	movw	r3, #39784	@ tmp313,
	mov	r0, r0, asl #3	@ tmp312, D.36580,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r7, r0, #1	@, tmp312,
	str	r7, [fp, #-232]	@, %sfp
	add	r8, r7, r2	@,, <variable>.CodecInfo.SliceByteOffset
	str	r8, [fp, #-228]	@, %sfp
	cmp	r7, #3145728	@,
	cmplt	r8, #3145728	@,,
	movlt	r7, #0	@, tmp323
	movge	r7, #1	@, tmp323
	bge	.L297	@,
	cmp	r8, #0	@,
	ble	.L297	@,
	movw	lr, #40816	@ tmp324,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, r1	@ D.36617,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.36617,
	ble	.L297	@,
	movw	r0, #11352	@ tmp326,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, tmp713
	add	r1, r8, ip	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, tmp713
	sub	r1, fp, #192	@,,
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L383	@,
	movw	r2, #11368	@ tmp331,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r7, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L304	@,
	movw	lr, #39624	@ tmp333,
	ldr	r1, [fp, #-168]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r1, r3	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L384	@,
.L304:
	movw	r9, #:lower16:g_event_report	@ tmp339,
	movt	r9, #:upper16:g_event_report	@ tmp339,
	ldr	r3, [r9, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L306	@,
	movw	r7, #39624	@ tmp341,
	movw	ip, #39620	@ tmp343,
	ldrh	r0, [r4, r7]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	r2, #:lower16:70032	@ tmp348,
	ldrh	r1, [fp, #-168]	@, TmpPictureHeader.pic_width_in_mb
	movt	r2, #:upper16:70032	@ tmp348,
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
.L306:
	movw	r7, #:lower16:70032	@ tmp352,
	movt	r7, #:upper16:70032	@ tmp352,
	movw	r8, #40948	@ tmp354,
	mov	lr, #0	@ tmp365,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	add	ip, r5, #32	@, tmp713,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #40944	@ tmp362,
	str	ip, [fp, #-212]	@, %sfp
	str	lr, [fp, #-240]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [fp, #-240]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r1, [r4, r9]	@ tmp365, <variable>.CodecInfo.FwdFsID
	str	r1, [r4, r8]	@ tmp365, <variable>.CodecInfo.BwdFsID
	str	r1, [fp, #-240]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r2, #11365	@ tmp372,
	str	r0, [r4, r9]	@ D.36643, <variable>.CodecInfo.FwdFsID
	ldr	r3, [fp, #-240]	@,
	strb	r3, [r4, r2]	@ tmp365, <variable>.CodecInfo.RefNum
	ldr	r1, [fp, #-212]	@, %sfp
	str	r0, [r4, r8]	@ D.36643, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-168]	@ prephitmp.1316, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #352	@ prephitmp.1316,
	ldrhi	r3, [fp, #-172]	@ prephitmp.1369, TmpPictureHeader.pic_height_in_mb
	bhi	.L308	@,
	ldr	r3, [fp, #-172]	@ prephitmp.1369, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #264	@ prephitmp.1369,
	bhi	.L308	@,
	ldr	r1, [r4, #0]	@ D.36651, <variable>.pstExtraData
	ldr	r0, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L310	@,
	ldr	r7, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #25	@ <variable>.eCapLevel,
	beq	.L385	@,
.L310:
	movw	r2, #:lower16:70032	@ tmp383,
	movt	r2, #:upper16:70032	@ tmp383,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L312	@,
.L374:
	ldr	r2, [fp, #-168]	@ prephitmp.1316, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-172]	@ prephitmp.1369, TmpPictureHeader.pic_height_in_mb
.L311:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	sub	r2, fp, #192	@,,
	bl	Real9_ArrangeVHBMem	@
	subs	r7, r0, #0	@ D.36662,
	beq	.L386	@,
.L305:
	sub	r1, fp, #192	@,,
	mov	r2, #128	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11364	@ tmp392,
	mov	r0, r4	@, pCtx
	ldr	ip, [r7, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	ip, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real9_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36668,
	beq	.L387	@,
	movw	r9, #:lower16:70032	@ tmp398,
	movt	r9, #:upper16:70032	@ tmp398,
	movw	r2, #40952	@,
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.CurFsID
	str	r9, [fp, #-244]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [fp, #-244]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L314	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
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
	mvn	r2, #0	@ tmp409,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r3, #0	@,
	strd	r2, [lr, #56]	@ tmp409, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@, pImg,
	strd	r8, [fp, #-212]	@,,
	ldrd	r8, [fp, #-212]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	str	ip, [fp, #-244]	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #39608	@ tmp413,
	ldr	ip, [fp, #-244]	@,
	ldr	r3, [r4, r0]	@ D.36683, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.36683,
	beq	.L388	@,
	cmp	r3, #1	@ D.36683,
	beq	.L389	@,
	movw	r3, #11365	@ tmp418,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	addeq	r3, r3, #1	@ iftmp.452, iftmp.452,
	bne	.L318	@,
.L319:
	movw	ip, #40944	@ tmp422,
	movw	r7, #40948	@ tmp423,
	ldr	r2, [r4, ip]	@ prephitmp.1314, <variable>.CodecInfo.FwdFsID
	movw	r0, #11365	@ tmp420,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r3, [r4, r0]	@ iftmp.452, <variable>.CodecInfo.RefNum
	cmp	r2, r8	@ prephitmp.1314, <variable>.CodecInfo.BwdFsID
	beq	.L320	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	ip, [fp, #-244]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-244]	@,
	movw	r3, #:lower16:70032	@ tmp426,
	movt	r3, #:upper16:70032	@ tmp426,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r7]	@ prephitmp.1314, <variable>.CodecInfo.BwdFsID
.L320:
	movw	r3, #40952	@ tmp431,
	movw	r8, #:lower16:70032	@ tmp433,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r8, #:upper16:70032	@ tmp433,
	movw	lr, #40944	@ tmp429,
	movw	r1, #40948	@ tmp430,
	str	r2, [r4, lr]	@ prephitmp.1314, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	str	r0, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r1, r0	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r3, [fp, #-240]	@,
	str	lr, [fp, #-244]	@,
	bl	FSP_SetRef	@
	ldr	ip, [fp, #-244]	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r7, [fp, #-240]	@,
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	dprint_vfmw	@
.L321:
	movw	r7, #:lower16:70032	@ tmp443,
	movt	r7, #:upper16:70032	@ tmp443,
	movw	r0, #40952	@ tmp444,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r7, [fp, #-240]	@,
	bl	FSP_GetLogicFs	@
	ldr	r1, [fp, #-240]	@,
	movw	r2, #40944	@ tmp446,
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r8, [fp, #-240]	@,
	movw	ip, #40948	@ tmp448,
	str	r0, [fp, #-216]	@, %sfp
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r3, [r7, #440]	@ D.36707, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36707,
	mov	r8, r0	@ pBwd,
	beq	.L322	@,
	ldr	lr, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L322	@,
	ldr	ip, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L322	@,
	ldr	r2, [r0, #440]	@ D.36714, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36714,
	ldrne	lr, [r2, #12]	@ iftmp.456, <variable>.PhyAddr
	ldreq	lr, [r3, #12]	@ iftmp.456, <variable>.PhyAddr
	str	lr, [r4, #52]	@ iftmp.456, <variable>.Rv9DecParam.BwdRefPhyAddr
	ldr	r0, [fp, #-216]	@, %sfp
	ldr	r1, [r0, #440]	@ D.36721, <variable>.pstDecodeFs
	mov	r0, #13	@,
	cmp	r1, #0	@ D.36721,
	ldreq	r1, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r1, #12]	@ iftmp.457, <variable>.PhyAddr
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [r4, #56]	@ iftmp.457, <variable>.Rv9DecParam.FwdRefPhyAddr
	ldr	r3, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36726, <variable>.PhyAddr
	str	r2, [r4, #60]	@ D.36726, <variable>.Rv9DecParam.CurPicPhyAddr
	ldr	r9, [r7, #452]	@, <variable>.PmvAddr
	str	r9, [fp, #-224]	@, %sfp
	str	r9, [r4, #76]	@, <variable>.Rv9DecParam.CurrPmvPhyAddr
	ldr	r9, [r8, #452]	@ D.36730, <variable>.PmvAddr
	str	r9, [r4, #80]	@ D.36730, <variable>.Rv9DecParam.ColPmvPhyAddr
	ldr	r3, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36732, <variable>.PhyAddr
	stmia	sp, {ip, lr}	@ phole stm
	str	r3, [r4, #64]	@ D.36732, <variable>.Rv9DecParam.DispFramePhyAddr
	ldr	lr, [fp, #-224]	@, %sfp
	str	r9, [sp, #12]	@ D.36730,
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	r9, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r2, #39608	@ tmp463,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r2, #40916	@ tmp460,
	ldr	r3, [r9, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	r3, [r4, #68]	@ <variable>.Stride, <variable>.Rv9DecParam.DDRStride
	ldr	ip, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r9, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	str	r9, [r4, r2]	@ <variable>.Stride, <variable>.CodecInfo.ddr_stride
	beq	.L390	@,
.L328:
	movw	r9, #39636	@ tmp485,
	movw	r0, #39652	@ tmp488,
	ldr	r2, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	sub	ip, r0, #4	@ tmp487, tmp487,
	str	r2, [r7, #460]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	ldr	r2, [r4, r0]	@ D.36770, <variable>.CodecInfo.PictureHeader.OSVQUANT
	ldr	r7, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	cmp	r2, #2	@ D.36770,
	str	r7, [fp, #-216]	@, %sfp
	bls	.L335	@,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
.L335:
	movw	lr, #39624	@ tmp493,
	sub	r7, lr, #4	@ tmp495, tmp495,
	add	r9, r7, #1248	@ tmp497, tmp497,
	movw	r3, #39608	@ tmp490,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	add	r8, r9, #4	@ tmp499, tmp499,
	add	r3, r3, #164	@ tmp503, tmp503,
	movw	ip, #39776	@ tmp505,
	movw	r2, #39648	@ tmp501,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r7, [r4, r9]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r9, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r0, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	mov	r0, r5	@, tmp713
	strne	r2, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	str	r7, [r4, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	r8, [r4, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	movw	r8, #39748	@ tmp512,
	strb	r1, [r4, #9]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv9DecParam.PicCodingType
	str	lr, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	str	r9, [r4, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	str	ip, [r4, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	r2, [r4, #28]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv9DecParam.PQUANT
	bl	BsPos	@
	add	r1, r8, #32	@ tmp515, tmp515,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r7, r0, #-2147483641	@ tmp513,,
	submi	r7, r7, #1	@ tmp734, tmp513,
	mvnmi	r7, r7, asl #29	@ tmp735, tmp734,
	mvnmi	r7, r7, lsr #29	@ tmp735, tmp735,
	addmi	r7, r7, #1	@ tmp513, tmp735,
	cmp	r3, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r7, [r4, r8]	@ tmp513, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L391	@,
	movw	r9, #39788	@ tmp525,
	sub	r8, r9, #4	@ tmp526, tmp526,
	ldr	r7, [r4, r9]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, tmp713
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L376:
	rsb	lr, r3, r7	@ tmp527, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r9, #39752	@ tmp530,
	movw	r8, #40812	@,
	mov	r7, lr, asl #3	@ D.36795, tmp527,
	bl	BsPos	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r7	@ tmp531,, D.36795
	str	r0, [r4, r9]	@ tmp531, <variable>.CodecInfo.SliceHeader.bit_len_0
	ldr	r2, [fp, #-228]	@, %sfp
	mov	r0, r5	@, tmp713
	movw	r7, #39780	@ tmp561,
	add	r8, r2, ip	@ D.36801,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	r3, #39752	@ tmp554,
	ldr	r9, [r4, r7]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	r2, #39644	@ tmp548,
	movw	lr, #39652	@ tmp546,
	ldr	r7, [r4, r2]	@ D.36806, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	ip, #39748	@ tmp552,
	add	r1, r0, #7	@ tmp536, D.36802,
	cmp	r0, #0	@ D.36802,
	movlt	r0, r1	@ D.36802, tmp536
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	cmp	r9, #1	@ <variable>.CodecInfo.TotalSliceNum,
	movw	r3, #39728	@ tmp545,
	add	r0, r8, r0, asr #3	@, D.36805, D.36801, D.36802,
	add	r8, r3, #28	@ tmp538, tmp538,
	str	r1, [r4, #100]	@, <variable>.StreamLength
	add	r1, r2, #88	@ tmp547, tmp547,
	ldr	r9, [r4, lr]	@ temp.1421, <variable>.CodecInfo.PictureHeader.OSVQUANT
	ldr	lr, [fp, #-216]	@, %sfp
	str	r0, [r4, r8]	@ D.36805, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	mov	r8, #1	@ tmp560,
	str	r9, [r4, r1]	@ temp.1421, <variable>.CodecInfo.SliceHeader.osvquant
	str	lr, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	add	lr, r1, #28	@ tmp539, tmp539,
	add	r2, lr, #4	@ tmp541, tmp541,
	mov	r3, #0	@ tmp540,
	add	r1, r2, #4	@ tmp543, tmp543,
	str	r3, [r4, lr]	@ tmp540, <variable>.CodecInfo.SliceHeader.bit_offset_1
	sub	lr, r1, #32	@ tmp549, tmp549,
	str	r3, [r4, r2]	@ tmp540, <variable>.CodecInfo.SliceHeader.bit_len_1
	add	r2, lr, #4	@ tmp550, tmp550,
	str	r3, [r4, r1]	@ tmp540, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r7, [r4, lr]	@ D.36806, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r3, [r4, r2]	@ tmp540, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r0, [r4, #84]	@ D.36805, <variable>.StreamPhyAddr
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r7, [r4, #108]	@ D.36806, <variable>.dblk_filter_passthrough
	str	r9, [r4, #112]	@ temp.1421, <variable>.osvquant
	str	r1, [r4, #92]	@, <variable>.StreamBitOffset
	str	r3, [r4, #120]	@ tmp540, <variable>.first_mb_in_slice
	str	r3, [r4, #88]	@ tmp540, <variable>.StreamPhyAddr
	str	r3, [r4, #96]	@ tmp540, <variable>.StreamBitOffset
	str	r3, [r4, #104]	@ tmp540, <variable>.StreamLength
	ldr	lr, [fp, #-216]	@, %sfp
	str	r8, [r4, #40]	@ tmp560, <variable>.Rv9DecParam.TotalSliceNum
	str	lr, [r4, #116]	@, <variable>.sliceqp
	strls	r8, [fp, #-224]	@ tmp560, %sfp
	bls	.L341	@,
	movw	ip, #39788	@ tmp563,
	ldr	r9, [fp, #-232]	@, %sfp
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r3, #:lower16:3145727	@ tmp565,
	movt	r3, #:upper16:3145727	@ tmp565,
	add	r7, r9, r1	@ PrevOffsetBytes.1454,, <variable>.CodecInfo.SliceByteOffset
	cmp	r7, r3	@ PrevOffsetBytes.1454, tmp565
	bgt	.L378	@,
	cmp	r7, #0	@ PrevOffsetBytes.1454,
	ble	.L378	@,
	movw	r0, #40816	@ tmp566,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r2	@ temp.1406, PrevOffsetBytes.1454, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1406,
	strgt	r8, [fp, #-224]	@ i.1448, %sfp
	strgt	r8, [fp, #-212]	@ i.1448, %sfp
	ldrgt	r9, [fp, #-232]	@ PrevHeaderBytes, %sfp
	bgt	.L346	@,
	b	.L378	@
.L347:
	movw	r0, #39780	@,
	add	r8, r8, #1	@ i.1448, i.1448,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	ip, r8	@ <variable>.CodecInfo.TotalSliceNum, i.1448
	bls	.L341	@,
	ldr	r7, [sl, #4]	@ tmp568, <variable>.CodecInfo.SliceByteOffset
	movw	lr, #:lower16:3145727	@,
	movt	lr, #:upper16:3145727	@,
	add	r7, r9, r7	@ PrevOffsetBytes.1454, PrevHeaderBytes, tmp568
	cmp	r7, lr	@ PrevOffsetBytes.1454,
	bgt	.L378	@,
	cmp	r7, #0	@ PrevOffsetBytes.1454,
	ble	.L378	@,
	movw	r1, #40816	@,
	add	sl, sl, #4	@ ivtmp.1339, ivtmp.1339,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r3	@ temp.1406, PrevOffsetBytes.1454, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1406,
	ble	.L378	@,
.L346:
	movw	r0, #11352	@,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, tmp713
	add	r1, r7, lr	@, PrevOffsetBytes.1454, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, tmp713
	mov	r1, #0	@,
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	sub	ip, fp, #56	@,,
	str	r6, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L347	@,
	movw	r1, #39624	@,
	ldr	r2, [fp, #-48]	@, iSliceMBA
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [fp, #-228]	@, %sfp
	beq	.L392	@,
	ldr	r1, [fp, #-56]	@ iSQUANT.465, iSQUANT
	movw	r3, #39652	@,
	ldr	r2, [r4, r3]	@ temp.1435, <variable>.CodecInfo.PictureHeader.OSVQUANT
	cmp	r1, #0	@ iSQUANT.465,
	ldr	r0, [fp, #-216]	@, %sfp
	movge	r0, r1	@, iSQUANT.465
	cmp	r2, #2	@ temp.1435,
	str	r0, [fp, #-216]	@, %sfp
	bls	.L351	@,
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
.L351:
	mov	r0, r5	@, tmp713
	bl	BsPos	@
	movw	ip, #39780	@,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	sub	r1, r3, #1	@ D.36606, <variable>.CodecInfo.TotalSliceNum,
	cmp	r1, r8	@ D.36606, i.1448
	addeq	r3, r3, #9920	@ tmp599, <variable>.CodecInfo.TotalSliceNum,
	addeq	r3, r3, #25	@ tmp599, tmp599,
	movweq	lr, #40816	@,
	ldrne	r3, [sl, #0]	@ tmp607, <variable>.CodecInfo.SliceByteOffset
	ldreq	r3, [r4, r3, asl #2]	@ tmp602, <variable>.CodecInfo.SliceByteOffset
	mov	r2, r0, asr #31	@ tmp589, D.36831,
	mov	r2, r2, lsr #29	@ tmp590, tmp589,
	add	ip, r0, r2	@ tmp591, D.36831, tmp590
	moveq	r0, r5	@, tmp713
	and	r1, ip, #7	@ tmp592, tmp591,
	movw	ip, #39748	@,
	rsb	r2, r2, r1	@ tmp593, tmp590, tmp592
	str	r2, [r4, ip]	@ tmp593, <variable>.CodecInfo.SliceHeader.bit_offset_0
	ldreq	r2, [r4, lr]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	movne	r0, r5	@, tmp713
	ldrne	r2, [sl, #4]	@ tmp606, <variable>.CodecInfo.SliceByteOffset
	rsbeq	r2, r9, r2	@ tmp597, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	rsb	r1, r3, r2	@ tmp605, tmp607, tmp606
	mov	lr, r1, asl #3	@ D.36843, tmp605,
	str	lr, [fp, #-240]	@,
	bl	BsPos	@
	ldr	r3, [fp, #-240]	@,
	movw	r2, #39752	@ tmp608,
	rsb	ip, r0, r3	@ tmp609,, D.36843
	movw	r0, #40812	@,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, tmp713
	str	ip, [r4, r2]	@ tmp609, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r3, #0	@ tmp618,
	add	r7, r7, r1	@ temp.1443, PrevOffsetBytes.1454, <variable>.CodecInfo.BsPhyAddr
	str	r3, [fp, #-240]	@,
	bl	BsPos	@
	movw	r1, #39644	@ tmp626,
	ldr	ip, [fp, #-212]	@, %sfp
	mov	r2, #44	@ tmp631,
	ldr	r3, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	mla	r2, r2, ip, r4	@ tmp632, tmp631,, pCtx
	str	r3, [fp, #-220]	@, %sfp
	movw	ip, #39652	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	ip, #39760	@ tmp617,
	str	r1, [fp, #-264]	@, %sfp
	movw	r1, #39764	@ tmp619,
	add	r3, r0, #7	@ tmp614, D.36847,
	cmp	r0, #0	@ D.36847,
	movlt	r0, r3	@ D.36847, tmp614
	ldr	r3, [fp, #-240]	@,
	add	lr, r7, r0, asr #3	@, D.36850, temp.1443, D.36847,
	movw	r7, #39756	@ tmp616,
	str	lr, [r4, r7]	@ D.36850, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	str	r3, [r4, ip]	@ tmp618, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r3, [r4, r1]	@ tmp618, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	r1, #39768	@ tmp621,
	ldr	r0, [fp, #-212]	@, %sfp
	add	ip, r0, #1	@,,
	str	ip, [fp, #-212]	@, %sfp
	str	r3, [r4, r1]	@ tmp618, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	movw	r0, #39728	@ tmp623,
	ldr	r7, [fp, #-216]	@, %sfp
	add	r1, r2, #112	@ tmp680, tmp632,
	str	r7, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r0, #39732	@ tmp625,
	ldr	r7, [fp, #-264]	@, %sfp
	ldr	ip, [fp, #-212]	@, %sfp
	str	r7, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.osvquant
	cmp	ip, #125	@,
	ldr	r7, [fp, #-220]	@, %sfp
	movw	ip, #39736	@,
	add	r0, r2, #104	@ tmp670, tmp632,
	str	r7, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	r7, r2, #84	@, tmp632,
	ldr	ip, [fp, #-228]	@, %sfp
	str	r7, [fp, #-232]	@, %sfp
	movw	r7, #39740	@,
	str	ip, [r4, r7]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	add	ip, r2, #100	@, tmp632,
	str	lr, [r2, #84]	@ D.36850, <variable>.StreamPhyAddr
	movw	lr, #39748	@,
	str	ip, [fp, #-236]	@, %sfp
	add	r7, r2, #92	@ tmp658, tmp632,
	ldr	ip, [r4, lr]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	lr, #39752	@ tmp646,
	str	ip, [r2, #92]	@, <variable>.StreamBitOffset
	ldr	ip, [fp, #-264]	@, %sfp
	ldr	lr, [r4, lr]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	ip, [r0, #8]	@, <variable>.osvquant
	ldr	ip, [fp, #-228]	@, %sfp
	str	lr, [r2, #100]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	ip, [r1, #8]	@, <variable>.first_mb_in_slice
	ldr	lr, [fp, #-232]	@, %sfp
	str	r3, [lr, #4]	@ tmp618, <variable>.StreamPhyAddr
	str	r3, [r7, #4]	@ tmp618, <variable>.StreamBitOffset
	ldr	r7, [fp, #-236]	@, %sfp
	str	r3, [r7, #4]	@ tmp618, <variable>.StreamLength
	ldr	r7, [fp, #-220]	@, %sfp
	str	r7, [r0, #4]	@, <variable>.dblk_filter_passthrough
	ldr	ip, [fp, #-216]	@, %sfp
	str	ip, [r1, #4]	@, <variable>.sliceqp
	ldr	r2, [fp, #-212]	@, %sfp
	str	r2, [r4, #40]	@, <variable>.Rv9DecParam.TotalSliceNum
	ble	.L347	@,
	ldr	r0, [fp, #-224]	@, %sfp
	str	r0, [r4, #44]	@, <variable>.Rv9DecParam.FstSlcGrp
	mov	r0, r4	@, pCtx
	str	r3, [fp, #-240]	@,
	bl	Real9_ModifySliceMsg	@
	ldr	r3, [fp, #-240]	@,
	cmp	r0, #1	@,
	bne	.L393	@,
	ldr	r2, [fp, #-200]	@, %sfp
	str	r3, [fp, #-224]	@ tmp618, %sfp
	str	r2, [r4, #4]	@, <variable>.pRv9DecParam
	str	r3, [fp, #-212]	@ tmp618, %sfp
	b	.L347	@
.L383:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36538, tmp323
	b	.L294	@
.L308:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36538,
	b	.L294	@
.L387:
	movw	lr, #40844	@ tmp397,
	movw	r1, #:lower16:.LC16	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36538, D.36668
	b	.L294	@
.L385:
	movw	lr, #11368	@ tmp381,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L311	@,
.L312:
	ldr	r0, [fp, #-212]	@, %sfp
	bl	ResetVoQueue	@
	b	.L374	@
.L384:
	movw	r7, #39620	@ tmp336,
	ldr	ip, [fp, #-172]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r0, [r4, r7]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	ip, r0	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L304	@,
	b	.L305	@
.L378:
	movw	lr, #:lower16:70032	@ tmp690,
	movt	lr, #:upper16:70032	@ tmp690,
	movw	r1, #40952	@ tmp691,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36538,
	b	.L294	@
.L386:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36538, D.36662
	b	.L294	@
.L389:
	movw	ip, #11365	@ tmp416,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L297	@,
.L318:
	mov	r3, #2	@ iftmp.452,
	b	.L319	@
.L388:
	movw	lr, #11365	@ tmp439,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L321	@,
	movw	r3, #40952	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36538,
	b	.L294	@
.L322:
	movw	r3, #:lower16:70032	@ tmp451,
	movt	r3, #:upper16:70032	@ tmp451,
	movw	r1, #40952	@ tmp452,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36538,
	b	.L294	@
.L341:
	ldr	r3, [fp, #-224]	@, %sfp
	mov	r0, r4	@, pCtx
	str	r3, [r4, #44]	@, <variable>.Rv9DecParam.FstSlcGrp
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L378	@,
	ldr	r3, [r4, #0]	@ temp.1453, <variable>.pstExtraData
	ldr	r7, [fp, #-200]	@, %sfp
	str	r7, [r4, #4]	@, <variable>.pRv9DecParam
	ldr	r2, [r3, #584]	@ D.36860, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36860,
	beq	.L394	@,
	cmp	r2, #2	@ D.36860,
	beq	.L395	@,
.L358:
	ldr	r2, [r3, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #11348	@ tmp703,
	mov	r0, #1	@ D.36538,
	str	r2, [r4, ip]	@ <variable>.s32Compress_en, <variable>.Rv9DecParam.Compress_en
	b	.L294	@
.L391:
	movw	r0, #40816	@ tmp517,
	ldr	r1, [fp, #-232]	@, %sfp
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	movw	r2, #39784	@ tmp520,
	mov	r0, r5	@, tmp713
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, r1, ip	@ tmp518,, <variable>.CodecInfo.BsLength
	b	.L376	@
.L390:
	ldr	r2, [fp, #-216]	@, %sfp
	movw	r1, #39636	@ tmp465,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	lr, [r8, #460]	@ <variable>.TR, <variable>.TR
	ldr	r9, [r2, #460]	@ D.36747, <variable>.TR
	subs	r2, r3, r9	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36747
	rsb	r3, r9, lr	@ trd, D.36747, <variable>.TR
	movwmi	lr, #39632	@ tmp468,
	ldrmi	lr, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r2, r2, lr	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, #0	@ trd,
	movwlt	lr, #39632	@ tmp470,
	ldrlt	lr, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r3, r3, lr	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	movle	r0, #0	@ prephitmp.1431,
	movle	ip, r0	@ prephitmp.1420, prephitmp.1431
	ble	.L333	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r2, [fp, #-248]	@,
	str	r3, [fp, #-240]	@,
	bl	__aeabi_idiv	@
	ldr	r9, [fp, #-248]	@,
	mov	r8, r0	@ prephitmp.1420,
	ldr	r0, [fp, #-240]	@,
	str	r8, [fp, #-244]	@,
	rsb	ip, r9, r0	@ tmp476, trb, trd
	mov	r1, r0	@, trd
	mov	r0, ip, asl #14	@, tmp476,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-244]	@,
	ldr	r3, [fp, #-240]	@,
	ldr	r2, [fp, #-248]	@,
.L333:
	movw	r1, #40864	@ tmp482,
	movw	r8, #40860	@ tmp481,
	str	r3, [r4, r1]	@ trd, <variable>.CodecInfo.trd
	movw	r3, #40868	@ tmp483,
	add	lr, r3, #4	@ tmp484, tmp484,
	str	r2, [r4, r8]	@ trb, <variable>.CodecInfo.trb
	str	ip, [r4, r3]	@ prephitmp.1420, <variable>.CodecInfo.Ratio0
	str	r0, [r4, lr]	@ prephitmp.1431, <variable>.CodecInfo.Ratio1
	b	.L328	@
.L314:
	movw	r9, #40952	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.36538, pImg
	b	.L294	@
.L393:
	movw	lr, #:lower16:70032	@ tmp686,
	movt	lr, #:upper16:70032	@ tmp686,
	movw	r1, #40952	@ tmp687,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-240]	@,
	mov	r0, r3	@ D.36538, tmp618
	b	.L294	@
.L392:
	movw	ip, #:lower16:70032	@ tmp584,
	movt	ip, #:upper16:70032	@ tmp584,
	movw	lr, #40952	@ tmp585,
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r3, [fp, #-240]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-240]	@,
	mov	r0, r3	@ D.36538, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L294	@
.L395:
	ldr	r0, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L358	@,
	ldr	r8, [fp, #-200]	@, %sfp
	cmp	r8, #0	@,
	beq	.L358	@,
	ldrb	lr, [r4, #9]	@ zero_extendqisi2	@ <variable>.Rv9DecParam.PicCodingType, <variable>.Rv9DecParam.PicCodingType
	cmp	lr, #2	@ <variable>.Rv9DecParam.PicCodingType,
	bne	.L358	@,
	movw	r1, #:lower16:70032	@ tmp699,
	movt	r1, #:upper16:70032	@ tmp699,
	mov	r5, #0	@ tmp698,
	movw	lr, #40952	@ tmp700,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, tmp698
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp698, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.1459, <variable>.pstExtraData
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	ldr	r3, [ip, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp702, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #588]	@ tmp702, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r5	@ D.36538, tmp698
	b	.L294	@
.L394:
	cmp	r7, #0	@,
	beq	.L358	@,
	ldrb	r2, [r4, #9]	@ zero_extendqisi2	@ <variable>.Rv9DecParam.PicCodingType, <variable>.Rv9DecParam.PicCodingType
	cmp	r2, #2	@ <variable>.Rv9DecParam.PicCodingType,
	bne	.L358	@,
	movw	r3, #:lower16:70032	@ tmp694,
	movt	r3, #:upper16:70032	@ tmp694,
	mov	r5, #0	@ tmp693,
	movw	ip, #40952	@ tmp695,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, r5	@, tmp693
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp693, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r5	@ D.36538, tmp693
	b	.L294	@
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
	.ascii	"real9 actual frame size(%dx%d) exeed max config(%dx"
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
	.ascii	"Real9_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC13:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC14:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC15:
	.ascii	"Real9_ArrangeVHBMem err\012\000"
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
.LC22:
	.ascii	"Pos0: Illegal OSVQUANT=%d\000"
	.space	2
.LC23:
	.ascii	"Pos1: Illegal OSVQUANT=%d\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
