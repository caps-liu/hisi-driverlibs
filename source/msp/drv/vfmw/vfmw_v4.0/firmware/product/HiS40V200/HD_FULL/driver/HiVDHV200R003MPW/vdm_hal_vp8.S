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
	.file	"vdm_hal_vp8.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_vp8.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vp8.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vp8.o
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
	.global	VP8HAL_V200R003MPW_InitHal
	.type	VP8HAL_V200R003MPW_InitHal, %function
VP8HAL_V200R003MPW_InitHal:
	.fnstart
.LFB1346:
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
	.size	VP8HAL_V200R003MPW_InitHal, .-VP8HAL_V200R003MPW_InitHal
	.align	2
	.global	VP8HAL_V200R003MPW_CfgReg
	.type	VP8HAL_V200R003MPW_CfgReg, %function
VP8HAL_V200R003MPW_CfgReg:
	.fnstart
.LFB1347:
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
	mov	r5, r0	@ pVp8DecParam, pVp8DecParam
	mov	r8, r2	@ VdhId, VdhId
	mov	r0, #0	@ tmp170,
	mov	r7, r1	@ pHwMem, pHwMem
	str	r0, [fp, #-40]	@ tmp170, D32
	bls	.L14	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30875,
.L6:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L14:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L16	@,
.L7:
	ldr	sl, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	movw	r6, #1148	@ tmp186,
	ldr	r0, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r4, #:lower16:g_HwMem	@ tmp339,
	mul	r6, r6, r8	@ tmp185, tmp186, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp339,
	mul	lr, r0, sl	@ tmp177, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	mov	sl, #0	@ tmp176,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	sub	ip, lr, #1	@ tmp180, tmp177,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, ip, #-16777216	@ tmp183, tmp180,
	bic	r2, r3, #15728640	@ tmp183, tmp183,
	bfi	r2, sl, #31, #1	@ tmp183, tmp176,,
	str	r2, [fp, #-40]	@ tmp183,
	str	r2, [lr, #8]	@ tmp183,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #2792]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	r3, #536870924	@ tmp196,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp194, <variable>.ddr_stride,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, ip, #4, #10	@ tmp196, tmp194,,
	movt	r1, #:upper16:.LC3	@,
	orr	r3, r3, #49152	@ tmp201, tmp196,
	bfi	r3, sl, #16, #12	@ tmp201, tmp176,,
	orr	ip, r3, #536870912	@ tmp205, tmp201,
	bfi	ip, r2, #30, #1	@ tmp205, <variable>.Compress_en,,
	orr	r2, ip, #-2147483648	@ tmp206, tmp205,
	str	r2, [fp, #-40]	@ tmp206,
	str	r2, [lr, #12]	@ tmp206,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	ip, r3, #15	@ tmp218, <variable>.MsgSlotAddr,
	str	ip, [fp, #-40]	@ tmp218, <variable>.av_msg_addr
	str	ip, [r2, #16]	@ tmp218,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bic	ip, r3, #15	@ tmp229, <variable>.MsgSlotAddr,
	str	ip, [fp, #-40]	@ tmp229, <variable>.va_msg_addr
	str	ip, [r2, #20]	@ tmp229,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #2812]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r3, [fp, #-40]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	str	r3, [ip, #24]	@ <variable>.stream_base_addr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bic	r3, r2, #15	@ D32.418, <variable>.PpfdBufAddr,
	str	r3, [fp, #-40]	@ D32.418, D32
	str	r3, [ip, #128]	@ D32.418,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #1104]	@ D32.419, <variable>.PpfdBufLen
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	r2, [fp, #-40]	@ D32.419, D32
	str	r2, [ip, #132]	@ D32.419,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp262,
	str	r3, [fp, #-40]	@ tmp262, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	str	r3, [r2, #48]	@ tmp262,
	movt	r1, #:upper16:.LC9	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bic	r3, ip, #15	@ tmp274, <variable>.image_curr_rcn_addr,
	str	r3, [fp, #-40]	@ tmp274, <variable>.ystaddr_1d
	str	r3, [r2, #96]	@ tmp274,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r5, #2792]	@ ystride, <variable>.ddr_stride
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r6, [fp, #-40]	@ ystride, <variable>.ystride_1d
	str	r6, [ip, #100]	@ ystride,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r3, #2047	@ tmp294,
	mov	r2, r2, asl #4	@ D.30949, <variable>.pic_width_in_mb,
	sub	r0, r2, #1	@ tmp293, D.30949,
	cmp	r0, r3	@ tmp293, tmp294
	bhi	.L17	@,
.L9:
	mov	r7, #16	@ level,
.L11:
	ldr	r0, [r5, #2788]	@ temp.549, <variable>.pic_height_in_mb
	movw	r2, #1148	@ tmp317,
	mul	r8, r2, r8	@ tmp316, tmp317, VdhId
	add	r1, r0, #1	@ tmp310, temp.549,
	mov	r3, r0, asl #4	@ tmp305, temp.549,
	mov	r0, #3	@,
	add	ip, r3, #31	@ tmp306, tmp305,
	mov	lr, r1, lsr #1	@ tmp311, tmp310,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, ip, lsr #5	@ tmp307, tmp306,
	mul	ip, r6, lr	@ tmp312, ystride, tmp311
	mov	r3, r2, asl #4	@ tmp308, tmp307,
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mla	r6, r7, r3, ip	@ tmp313, level, tmp308, tmp312
	mov	r6, r6, asl #1	@ tmp314, tmp313,
	str	r6, [fp, #-40]	@ tmp314, <variable>.uvoffset_1d
	str	r6, [lr, #104]	@ tmp314,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r1, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ D.30875,
	mov	r3, r2, asl #4	@ tmp322, <variable>.pic_height_in_mb,
	add	ip, r3, #31	@ tmp324, tmp322,
	bic	r2, ip, #31	@ tmp326, tmp324,
	mvn	ip, #0	@ tmp337,
	mul	r7, r7, r2	@ D32.423, level, tmp326
	str	r7, [r1, #108]	@ D32.423,
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #32]	@ tmp337,
	b	.L6	@
.L17:
	sub	ip, r2, #2048	@ tmp295, D.30949,
	sub	r1, ip, #1	@ tmp295, tmp295,
	cmp	r1, r3	@ tmp295, tmp294
	movls	r7, #32	@ level,
	bls	.L11	@,
	sub	r0, r2, #4096	@ tmp298, D.30949,
	sub	lr, r0, #1	@ tmp298, tmp298,
	cmp	lr, r3	@ tmp298, tmp294
	movls	r7, #48	@ level,
	bls	.L11	@,
	sub	r1, r2, #6144	@ tmp301, D.30949,
	sub	r2, r1, #1	@ tmp301, tmp301,
	cmp	r2, r3	@ tmp301, tmp294
	movls	r7, #64	@ level,
	bls	.L11	@,
	b	.L9	@
.L16:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.30879,
	strne	r1, [r7, #0]	@ D.30879, <variable>.pVdmRegVirAddr
	bne	.L7	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30875,
	b	.L6	@
	.fnend
	.size	VP8HAL_V200R003MPW_CfgReg, .-VP8HAL_V200R003MPW_CfgReg
	.align	2
	.global	VP8HAL_V200R003MPW_CfgDnMsg
	.type	VP8HAL_V200R003MPW_CfgDnMsg, %function
VP8HAL_V200R003MPW_CfgDnMsg:
	.fnstart
.LFB1349:
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
	mov	r4, r0	@ pVp8DecParam, pVp8DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pMsgBase,
	beq	.L24	@,
	ldr	r1, [r4, #2796]	@ <variable>.frame_type, <variable>.frame_type
	mov	r5, r8	@ p32, pMsgBase
	ldr	lr, [r4, #2800]	@ <variable>.last_frame_type, <variable>.last_frame_type
	mov	r0, #4	@,
	and	r6, r1, #1	@ tmp355, <variable>.frame_type,
	movw	r1, #:lower16:.LC15	@,
	bfi	r6, lr, #1, #2	@ tmp355, <variable>.last_frame_type,,
	str	r6, [fp, #-48]	@ tmp355,
	str	r6, [r5], #4	@ tmp355,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	r6, #0	@ tmp351,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2808]	@ <variable>.full_pixel, <variable>.full_pixel
	ldr	sl, [r4, #2804]	@ <variable>.use_bilinear_mc_filter, <variable>.use_bilinear_mc_filter
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	rsb	r3, sl, r2, asl #1	@, tmp361, <variable>.use_bilinear_mc_filter, <variable>.full_pixel,
	add	sl, r5, r0	@ p32.606, p32,
	add	r9, r3, #1	@ D32.428, tmp361,
	str	r9, [fp, #-48]	@ D32.428, D32
	str	r9, [r8, #4]	@ D32.428,
	add	r9, sl, r0	@ p32.611, p32.606,
	ldr	r2, [fp, #-48]	@, D32
	add	ip, r9, r0	@, p32.611,
	str	ip, [fp, #-72]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mov	r0, #4	@,
	ldr	ip, [fp, #-72]	@, %sfp
	sub	r3, r1, #1	@ tmp368, <variable>.pic_width_in_mb,
	ldr	r2, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	add	ip, ip, r0	@,,
	str	ip, [fp, #-68]	@, %sfp
	mov	r3, r3, asl #23	@ tmp373, tmp368,
	add	ip, ip, r0	@,,
	sub	r2, r2, #1	@ tmp372, <variable>.pic_height_in_mb,
	str	ip, [fp, #-64]	@, %sfp
	mov	r3, r3, lsr #23	@ tmp373, tmp373,
	add	ip, ip, r0	@,,
	bfi	r3, r2, #16, #9	@ tmp373, tmp372,,
	str	ip, [fp, #-60]	@, %sfp
	str	r3, [fp, #-48]	@ tmp373,
	movw	r1, #:lower16:.LC17	@,
	str	r3, [r5, #4]	@ tmp373,
	add	r5, ip, r0	@,,
	str	r5, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC17	@,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	r5, ip, r0	@ p32.639,,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2752]	@ zero_extendqisi2	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	mov	r0, #4	@,
	str	r6, [fp, #-48]	@ tmp351, D32
	movw	r1, #:lower16:.LC18	@,
	ldrb	r2, [r4, #2753]	@ zero_extendqisi2	@ <variable>.mb_no_coeff_skip, <variable>.mb_no_coeff_skip
	movt	r1, #:upper16:.LC18	@,
	strb	r3, [fp, #-48]	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	ldr	r3, [fp, #-48]	@ tmp379,
	ldrb	ip, [r4, #2754]	@ zero_extendqisi2	@ <variable>.multi_token_partition, <variable>.multi_token_partition
	bfi	r3, r2, #8, #1	@ tmp379, <variable>.mb_no_coeff_skip,,
	bfi	r3, ip, #9, #2	@ tmp383, <variable>.multi_token_partition,,
	str	r3, [fp, #-48]	@ tmp383,
	str	r3, [sl, #4]	@ tmp383,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2755]	@ zero_extendqisi2	@ <variable>.segmentation_enable, <variable>.segmentation_enable
	ldrb	r1, [r4, #2756]	@ zero_extendqisi2	@ <variable>.update_mb_segmentation_map, <variable>.update_mb_segmentation_map
	mov	r0, #4	@,
	ldrb	ip, [r4, #2757]	@ zero_extendqisi2	@ <variable>.mb_segmentation_abs_delta, <variable>.mb_segmentation_abs_delta
	and	r3, r3, #1	@ tmp394, <variable>.segmentation_enable,
	ldrb	r2, [r4, #2758]	@ zero_extendqisi2	@ <variable>.mode_ref_lf_delta_enabled, <variable>.mode_ref_lf_delta_enabled
	bfi	r3, r1, #1, #1	@ tmp394, <variable>.update_mb_segmentation_map,,
	bfi	r3, ip, #2, #1	@ tmp398, <variable>.mb_segmentation_abs_delta,,
	movw	r1, #:lower16:.LC19	@,
	bfi	r3, r2, #3, #1	@ tmp402, <variable>.mode_ref_lf_delta_enabled,,
	str	r3, [fp, #-48]	@ tmp402,
	str	r3, [r9, #4]	@ tmp402,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2760]	@ zero_extendqisi2	@ <variable>.filter_type, <variable>.filter_type
	ldrb	r1, [r4, #2761]	@ zero_extendqisi2	@ <variable>.last_filter_type, <variable>.last_filter_type
	mov	r0, #4	@,
	ldrb	lr, [r4, #2762]	@ zero_extendqisi2	@ <variable>.filter_level, <variable>.filter_level
	and	r3, r3, #1	@ tmp413, <variable>.filter_type,
	bfi	r3, r1, #1, #2	@ tmp413, <variable>.last_filter_type,,
	ldrb	ip, [r4, #2763]	@ zero_extendqisi2	@ <variable>.sharpness_level, <variable>.sharpness_level
	bfi	r3, lr, #3, #6	@ tmp417, <variable>.filter_level,,
	ldr	lr, [fp, #-72]	@, %sfp
	ldrb	r2, [r4, #2764]	@ zero_extendqisi2	@ <variable>.last_sharpness_level, <variable>.last_sharpness_level
	bfi	r3, ip, #9, #3	@ tmp421, <variable>.sharpness_level,,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bfi	r3, r2, #12, #3	@ tmp425, <variable>.last_sharpness_level,,
	str	r3, [fp, #-48]	@ tmp425,
	str	r3, [lr, #4]	@ tmp425,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2765]	@ zero_extendqisi2	@ <variable>.y1dc_sign, <variable>.y1dc_sign
	ldrb	r1, [r4, #2766]	@ zero_extendqisi2	@ <variable>.y1dc_absdelta_q, <variable>.y1dc_absdelta_q
	mov	r0, #4	@,
	ldrb	ip, [r4, #2767]	@ zero_extendqisi2	@ <variable>.y2dc_sign, <variable>.y2dc_sign
	and	r3, r3, #1	@ tmp436, <variable>.y1dc_sign,
	ldrb	r2, [r4, #2768]	@ zero_extendqisi2	@ <variable>.y2dc_absdelta_q, <variable>.y2dc_absdelta_q
	bfi	r3, r1, #1, #4	@ tmp436, <variable>.y1dc_absdelta_q,,
	ldrb	lr, [r4, #2769]	@ zero_extendqisi2	@ <variable>.y2ac_sign, <variable>.y2ac_sign
	bfi	r3, ip, #5, #1	@ tmp440, <variable>.y2dc_sign,,
	bfi	r3, r2, #6, #4	@ tmp444, <variable>.y2dc_absdelta_q,,
	ldrb	ip, [r4, #2770]	@ zero_extendqisi2	@ <variable>.y2ac_absdelta_q, <variable>.y2ac_absdelta_q
	ldrb	r2, [r4, #2771]	@ zero_extendqisi2	@ <variable>.uvdc_sign, <variable>.uvdc_sign
	bfi	r3, lr, #10, #1	@ tmp448, <variable>.y2ac_sign,,
	bfi	r3, ip, #11, #4	@ tmp452, <variable>.y2ac_absdelta_q,,
	ldrb	lr, [r4, #2772]	@ zero_extendqisi2	@ <variable>.uvdc_absdelta_q, <variable>.uvdc_absdelta_q
	bfi	r3, r2, #15, #1	@ tmp456, <variable>.uvdc_sign,,
	ldrb	ip, [r4, #2773]	@ zero_extendqisi2	@ <variable>.uvac_sign, <variable>.uvac_sign
	bfi	r3, lr, #16, #4	@ tmp460, <variable>.uvdc_absdelta_q,,
	ldr	lr, [fp, #-68]	@, %sfp
	ldrb	r2, [r4, #2774]	@ zero_extendqisi2	@ <variable>.uvac_absdelta_q, <variable>.uvac_absdelta_q
	bfi	r3, ip, #20, #1	@ tmp464, <variable>.uvac_sign,,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bfi	r3, r2, #21, #4	@ tmp468, <variable>.uvac_absdelta_q,,
	str	r3, [fp, #-48]	@ tmp468,
	str	r3, [lr, #4]	@ tmp468,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-64]	@, %sfp
	ldrb	ip, [r4, #2759]	@ zero_extendqisi2	@ <variable>.base_qindex, <variable>.base_qindex
	mov	r1, r6	@ tmp476, tmp351
	mov	r0, #4	@,
	bfi	r1, ip, #0, #7	@ tmp476, <variable>.base_qindex,,
	str	r1, [fp, #-48]	@ tmp476,
	str	r1, [r3, #4]	@ tmp476,
	movw	r1, #:lower16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2780]	@ <variable>.value, <variable>.value
	ldr	ip, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	r2, [fp, #-48]	@ <variable>.value, <variable>.value
	str	r2, [ip, #4]	@ <variable>.value,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2778]	@ zero_extendqisi2	@ <variable>.range, <variable>.range
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r0, #4	@,
	str	r6, [fp, #-48]	@ tmp351, D32
	movw	r1, #:lower16:.LC24	@,
	ldrb	r2, [r4, #2779]	@ zero_extendqisi2	@ <variable>.count, <variable>.count
	movt	r1, #:upper16:.LC24	@,
	strb	r3, [fp, #-48]	@ <variable>.range, <variable>.range
	ldr	r3, [fp, #-48]	@ tmp490,
	bfi	r3, r2, #16, #6	@ tmp490, <variable>.count,,
	str	r3, [fp, #-48]	@ tmp490,
	str	r3, [ip, #4]	@ tmp490,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2820]	@ D.31133, <variable>.bit_offset_0
	ldrb	r6, [r4, #2779]	@ zero_extendqisi2	@ D.31132, <variable>.count
	mov	r0, #4	@,
	ldr	r1, [r4, #2816]	@ D.31131, <variable>.bit_len_0
	cmp	r6, ip	@ D.31132, D.31133
	addhi	ip, ip, #128	@ tmp497, D.31133,
	add	r2, r6, r1	@ tmp499, D.31132, D.31131
	ldrhi	sl, [r4, #2824]	@ <variable>.bit_byte_offset_0, <variable>.bit_byte_offset_0
	rsbls	ip, r6, ip	@ D16_bit_offset_0, D.31132, D.31133
	rsbhi	ip, r6, ip	@ D16_bit_offset_0, D.31132, tmp497
	bic	r3, r2, #-33554432	@ tmp501, tmp499,
	ldrls	sl, [r4, #2824]	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0
	bfi	r3, ip, #25, #7	@ tmp501, D16_bit_offset_0,,
	str	r3, [fp, #-48]	@ tmp501,
	subhi	sl, sl, #16	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0,
	str	r3, [r5, #28]	@ tmp501,
	mov	r6, #0	@ tmp498,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ tmp506, tmp498
	bfi	r0, sl, #0, #24	@ tmp506, D17_bit_byte_offset_0,,
	str	r0, [fp, #-48]	@ tmp506,
	str	r0, [r5, #32]	@ tmp506,
	movw	r1, #:lower16:.LC26	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2828]	@ <variable>.bit_len_1, <variable>.bit_len_1
	ldr	r2, [r4, #2832]	@ <variable>.bit_offset_1, <variable>.bit_offset_1
	mov	r0, #4	@,
	bic	ip, r1, #-33554432	@ tmp513, <variable>.bit_len_1,
	movw	r1, #:lower16:.LC27	@,
	bfi	ip, r2, #25, #7	@ tmp513, <variable>.bit_offset_1,,
	str	ip, [fp, #-48]	@ tmp513,
	str	ip, [r5, #36]	@ tmp513,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2836]	@ <variable>.bit_byte_offset_1, <variable>.bit_byte_offset_1
	mov	r1, r6	@ tmp518, tmp498
	mov	r0, #4	@,
	bfi	r1, r3, #0, #24	@ tmp518, <variable>.bit_byte_offset_1,,
	str	r1, [fp, #-48]	@ tmp518,
	str	r1, [r5, #40]	@ tmp518,
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3036]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	ldr	ip, [r4, #3040]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	mov	r0, #4	@,
	ldr	r2, [r4, #3044]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	movw	r1, #:lower16:.LC29	@,
	ldr	r3, [r4, #3048]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	movt	r1, #:upper16:.LC29	@,
	strb	lr, [fp, #-48]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat00
	strb	ip, [fp, #-47]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat01
	strb	r2, [fp, #-46]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat02
	strb	r3, [fp, #-45]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat03
	ldr	r3, [fp, #-48]	@ D32.664, D32
	str	r3, [r5, #44]	@ D32.664,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3052]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	ldr	ip, [r4, #3056]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	mov	r0, #4	@,
	ldr	r2, [r4, #3060]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	movw	r1, #:lower16:.LC30	@,
	ldr	r3, [r4, #3064]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	movt	r1, #:upper16:.LC30	@,
	strb	lr, [fp, #-48]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat10
	strb	ip, [fp, #-47]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat11
	strb	r2, [fp, #-46]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat12
	strb	r3, [fp, #-45]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat13
	ldr	r3, [fp, #-48]	@ D32.668, D32
	str	r3, [r5, #48]	@ D32.668,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3068]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	ldr	ip, [r4, #3072]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3076]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	movw	r1, #:lower16:.LC31	@,
	ldr	r3, [r4, #3080]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	movt	r1, #:upper16:.LC31	@,
	strb	lr, [fp, #-48]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta0
	strb	ip, [fp, #-47]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta1
	strb	r2, [fp, #-46]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta2
	strb	r3, [fp, #-45]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta3
	ldr	r3, [fp, #-48]	@ D32.673, D32
	str	r3, [r5, #52]	@ D32.673,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3084]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	ldr	ip, [r4, #3088]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3092]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [r4, #3096]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	movt	r1, #:upper16:.LC32	@,
	strb	lr, [fp, #-48]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta0
	strb	ip, [fp, #-47]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta1
	strb	r2, [fp, #-46]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta2
	strb	r3, [fp, #-45]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta3
	ldr	r3, [fp, #-48]	@ D32.677, D32
	str	r3, [r5, #56]	@ D32.677,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3104]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	ldr	r3, [r4, #3112]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	mov	r0, #4	@,
	ldr	lr, [r4, #3100]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, [r4, #3108]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	movt	r1, #:upper16:.LC33	@,
	strb	ip, [fp, #-47]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_1
	strb	r3, [fp, #-45]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_3
	strb	lr, [fp, #-48]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_0
	strb	r2, [fp, #-46]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_2
	ldr	lr, [fp, #-48]	@ D32.681, D32
	str	lr, [r5, #60]	@ D32.681,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3136]	@ D32.448, <variable>.SegIdAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	r2, [fp, #-48]	@ D32.448, D32
	str	r2, [r5, #64]	@ D32.448,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	str	r3, [fp, #-48]	@ <variable>.image_curr_rcn_addr, <variable>.curr_rcn_addr
	str	r3, [r5, #92]	@ <variable>.image_curr_rcn_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3120]	@ <variable>.image_alt_ref_addr, <variable>.image_alt_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	str	ip, [fp, #-48]	@ <variable>.image_alt_ref_addr, <variable>.alt_ref_addr
	str	ip, [r5, #96]	@ <variable>.image_alt_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3124]	@ <variable>.image_gld_ref_addr, <variable>.image_gld_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	r2, [fp, #-48]	@ <variable>.image_gld_ref_addr, <variable>.golden_ref_addr
	str	r2, [r5, #100]	@ <variable>.image_gld_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	str	r3, [fp, #-48]	@ <variable>.image_last_ref_addr, <variable>.last_ref_addr
	str	r3, [r5, #104]	@ <variable>.image_last_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC39	@,
	bic	r2, ip, #15	@ tmp602, <variable>.SedTopAddr,
	str	r2, [fp, #-48]	@ tmp602, <variable>.sed_top_addr
	str	r2, [r5, #108]	@ tmp602,
	movt	r1, #:upper16:.LC39	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC40	@,
	bic	ip, r3, #15	@ tmp608, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp608, <variable>.pmv_top_addr
	str	ip, [r5, #112]	@ tmp608,
	movt	r1, #:upper16:.LC40	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC41	@,
	bic	r3, r2, #15	@ tmp614, <variable>.RcnTopAddr,
	str	r3, [fp, #-48]	@ tmp614, <variable>.rcn_top_addr
	str	r3, [r5, #116]	@ tmp614,
	movt	r1, #:upper16:.LC41	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1124]	@ <variable>.Vp8TabAddr, <variable>.Vp8TabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC42	@,
	bic	r2, ip, #15	@ tmp620, <variable>.Vp8TabAddr,
	str	r2, [fp, #-48]	@ tmp620, <variable>.tab_addr
	str	r2, [r5, #120]	@ tmp620,
	movt	r1, #:upper16:.LC42	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, D32
	bl	MEM_Phy2Vir	@
	mov	r1, r4	@, pVp8DecParam
	mov	r2, #2752	@,
	bl	memcpy	@
	ldr	r3, [r7, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC43	@,
	bic	ip, r3, #15	@ tmp631, <variable>.DblkTopAddr,
	str	ip, [fp, #-48]	@ tmp631, <variable>.dblk_top_addr
	str	ip, [r5, #124]	@ tmp631,
	movt	r1, #:upper16:.LC43	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r8	@, pMsgBase
	bl	MEM_Vir2Phy	@
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	add	r2, r0, #256	@ D32.459,,
	str	r2, [fp, #-48]	@ D32.459, D32
	str	r2, [r5, #216]	@ D32.459,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2844]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2876]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #64	@,
	bic	r3, r0, #-33554432	@ tmp640, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp640, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp640,
	str	r3, [r5, #220]	@ tmp640,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2908]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp643, tmp498
	mov	r2, #65	@,
	bfi	r3, ip, #0, #24	@ tmp643, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp643,
	str	r3, [r5, #224]	@ tmp643,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2940]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2972]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #66	@,
	bic	ip, r0, #-33554432	@ tmp650, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp650, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp650,
	str	ip, [r5, #228]	@ tmp650,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3004]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp653, tmp498
	mov	r2, #67	@,
	bfi	ip, r3, #0, #24	@ tmp653, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp653,
	str	ip, [r5, #232]	@ tmp653,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2848]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2880]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #68	@,
	bic	r3, r0, #-33554432	@ tmp660, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp660, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp660,
	str	r3, [r5, #236]	@ tmp660,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2912]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp663, tmp498
	mov	r2, #69	@,
	bfi	r3, ip, #0, #24	@ tmp663, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp663,
	str	r3, [r5, #240]	@ tmp663,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2944]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2976]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #70	@,
	bic	ip, r0, #-33554432	@ tmp670, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp670, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp670,
	str	ip, [r5, #244]	@ tmp670,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3008]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp673, tmp498
	mov	r2, #71	@,
	bfi	ip, r3, #0, #24	@ tmp673, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp673,
	str	ip, [r5, #248]	@ tmp673,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2852]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2884]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #72	@,
	bic	r3, r0, #-33554432	@ tmp680, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp680, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp680,
	str	r3, [r5, #252]	@ tmp680,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2916]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp683, tmp498
	mov	r2, #73	@,
	bfi	r3, ip, #0, #24	@ tmp683, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp683,
	str	r3, [r5, #256]	@ tmp683,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2948]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2980]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #74	@,
	bic	ip, r0, #-33554432	@ tmp690, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp690, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp690,
	str	ip, [r5, #260]	@ tmp690,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3012]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp693, tmp498
	mov	r2, #75	@,
	bfi	ip, r3, #0, #24	@ tmp693, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp693,
	str	ip, [r5, #264]	@ tmp693,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2856]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2888]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #76	@,
	bic	r3, r0, #-33554432	@ tmp700, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp700, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp700,
	str	r3, [r5, #268]	@ tmp700,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2920]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp703, tmp498
	mov	r2, #77	@,
	bfi	r3, ip, #0, #24	@ tmp703, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp703,
	str	r3, [r5, #272]	@ tmp703,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2952]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2984]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #78	@,
	bic	ip, r0, #-33554432	@ tmp710, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp710, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp710,
	str	ip, [r5, #276]	@ tmp710,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3016]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp713, tmp498
	mov	r2, #79	@,
	bfi	ip, r3, #0, #24	@ tmp713, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp713,
	str	ip, [r5, #280]	@ tmp713,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2860]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2892]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #80	@,
	bic	r3, r0, #-33554432	@ tmp720, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp720, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp720,
	str	r3, [r5, #284]	@ tmp720,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2924]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp723, tmp498
	mov	r2, #81	@,
	bfi	r3, ip, #0, #24	@ tmp723, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp723,
	str	r3, [r5, #288]	@ tmp723,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2956]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2988]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #82	@,
	bic	ip, r0, #-33554432	@ tmp730, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp730, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp730,
	str	ip, [r5, #292]	@ tmp730,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3020]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp733, tmp498
	mov	r2, #83	@,
	bfi	ip, r3, #0, #24	@ tmp733, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp733,
	str	ip, [r5, #296]	@ tmp733,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2864]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2896]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #84	@,
	bic	r3, r0, #-33554432	@ tmp740, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp740, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp740,
	str	r3, [r5, #300]	@ tmp740,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2928]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp743, tmp498
	mov	r2, #85	@,
	bfi	r3, ip, #0, #24	@ tmp743, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp743,
	str	r3, [r5, #304]	@ tmp743,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2960]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2992]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #86	@,
	bic	ip, r0, #-33554432	@ tmp750, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp750, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp750,
	str	ip, [r5, #308]	@ tmp750,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3024]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp753, tmp498
	mov	r2, #87	@,
	bfi	ip, r3, #0, #24	@ tmp753, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp753,
	str	ip, [r5, #312]	@ tmp753,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2868]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2900]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #88	@,
	bic	r3, r0, #-33554432	@ tmp760, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp760, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp760,
	str	r3, [r5, #316]	@ tmp760,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2932]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp763, tmp498
	mov	r2, #89	@,
	bfi	r3, ip, #0, #24	@ tmp763, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp763,
	str	r3, [r5, #320]	@ tmp763,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2964]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2996]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #90	@,
	bic	ip, r0, #-33554432	@ tmp770, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp770, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp770,
	str	ip, [r5, #324]	@ tmp770,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3028]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp773, tmp498
	mov	r2, #91	@,
	bfi	ip, r3, #0, #24	@ tmp773, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp773,
	str	ip, [r5, #328]	@ tmp773,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2872]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2904]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #92	@,
	bic	r3, r0, #-33554432	@ tmp780, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp780, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp780,
	str	r3, [r5, #332]	@ tmp780,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2936]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp783, tmp498
	mov	r2, #93	@,
	bfi	r3, ip, #0, #24	@ tmp783, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp783,
	str	r3, [r5, #336]	@ tmp783,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2968]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #3000]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #94	@,
	bic	ip, r0, #-33554432	@ tmp790, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp790, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp790,
	str	ip, [r5, #340]	@ tmp790,
	movw	r1, #:lower16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3032]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	r3, r6	@ tmp793, tmp498
	mov	r0, #4	@,
	bfi	r3, r2, #0, #24	@ tmp793, <variable>.bitn_byte_offset_1,,
	str	r3, [fp, #-48]	@ tmp793,
	str	r3, [r5, #344]	@ tmp793,
	movw	r1, #:lower16:.LC45	@,
	mov	r2, #95	@,
	movt	r1, #:upper16:.LC45	@,
	ldr	r3, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.31040, tmp498
.L20:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L24:
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #242	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31040,
	b	.L20	@
	.fnend
	.size	VP8HAL_V200R003MPW_CfgDnMsg, .-VP8HAL_V200R003MPW_CfgDnMsg
	.align	2
	.global	VP8HAL_V200R003MPW_StartDec
	.type	VP8HAL_V200R003MPW_StartDec, %function
VP8HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1348:
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
	mov	r5, r0	@ pVp8DecParam, pVp8DecParam
	bls	.L36	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30999,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L36:
	ldr	r3, [r0, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #352	@ <variable>.pic_width_in_mb,
	bhi	.L37	@,
	ldr	r0, [r0, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #264	@ <variable>.pic_height_in_mb,
	bhi	.L38	@,
	movw	r8, #1148	@ tmp150,
	movw	r7, #:lower16:g_HwMem	@ tmp151,
	mul	r8, r8, r1	@ tmp149, tmp150, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp151,
	add	r6, r7, r8	@ pHwMem, tmp151, tmp149
	ldr	r1, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L39	@,
.L31:
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp155,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp155,
	ldr	r3, [ip, #36]	@ D.31015, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.31015,
	beq	.L33	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.31015
.L34:
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	mov	r0, r5	@, pVp8DecParam
	bl	VP8HAL_V200R003MPW_CfgReg	@
	mov	r0, r5	@, pVp8DecParam
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VP8HAL_V200R003MPW_CfgDnMsg	@
	mov	r0, #0	@ D.30999,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L33:
	mov	r0, r3	@, D.31015
	movw	r1, #:lower16:.LC48	@,
	mov	r2, #226	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	b	.L34	@
.L39:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.31010,
	strne	r2, [r7, r8]	@ D.31010, <variable>.pVdmRegVirAddr
	bne	.L31	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30999,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L37:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #210	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC47	@,
	movt	r3, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30999,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L38:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #211	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC47	@,
	movt	r3, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30999,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VP8HAL_V200R003MPW_StartDec, .-VP8HAL_V200R003MPW_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VdhId is wrong! MP2HAL_V200R003MPW_CfgReg\012\000"
	.space	1
.LC1:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC2:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC5:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC6:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC7:
	.ascii	"PPFD_BUF_ADDR = 0x%x\012\000"
	.space	2
.LC8:
	.ascii	"PPFD_BUF_LEN = 0x%x\012\000"
	.space	3
.LC9:
	.ascii	"EMAR_ID = 0x%x\012\000"
.LC10:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC11:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC12:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC13:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC14:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC15:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC17:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D16 = 0x%x\012\000"
.LC26:
	.ascii	"D17 = 0x%x\012\000"
.LC27:
	.ascii	"D18 = 0x%x\012\000"
.LC28:
	.ascii	"D19 = 0x%x\012\000"
.LC29:
	.ascii	"D20 = 0x%x\012\000"
.LC30:
	.ascii	"D21 = 0x%x\012\000"
.LC31:
	.ascii	"D22 = 0x%x\012\000"
.LC32:
	.ascii	"D23 = 0x%x\012\000"
.LC33:
	.ascii	"D24 = 0x%x\012\000"
.LC34:
	.ascii	"D25 = 0x%x\012\000"
.LC35:
	.ascii	"D32 = 0x%x\012\000"
.LC36:
	.ascii	"D33 = 0x%x\012\000"
.LC37:
	.ascii	"D34 = 0x%x\012\000"
.LC38:
	.ascii	"D35 = 0x%x\012\000"
.LC39:
	.ascii	"D36 = 0x%x\012\000"
.LC40:
	.ascii	"D37 = 0x%x\012\000"
.LC41:
	.ascii	"D38 = 0x%x\012\000"
.LC42:
	.ascii	"D39 = 0x%x\012\000"
.LC43:
	.ascii	"D40 = 0x%x\012\000"
.LC44:
	.ascii	"D63 = 0x%x\012\000"
.LC45:
	.ascii	"D%d = 0x%x\012\000"
.LC46:
	.ascii	"VdhId is wrong! VP8HAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC47:
	.ascii	"picture width out of range\000"
	.space	1
.LC48:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
