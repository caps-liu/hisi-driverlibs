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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_vp6.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vp6.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vp6.o
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
	.global	VP6HAL_V200R003MPW_InitHal
	.type	VP6HAL_V200R003MPW_InitHal, %function
VP6HAL_V200R003MPW_InitHal:
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
	.size	VP6HAL_V200R003MPW_InitHal, .-VP6HAL_V200R003MPW_InitHal
	.align	2
	.global	VP6HAL_V200R003MPW_CfgReg
	.type	VP6HAL_V200R003MPW_CfgReg, %function
VP6HAL_V200R003MPW_CfgReg:
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
	cmp	r2, #1	@ VdhId,
	mov	r8, r2	@ VdhId, VdhId
	mov	r6, r0	@ pVp6DecParam, pVp6DecParam
	mov	r7, r1	@ pHwMem, pHwMem
	bls	.L14	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31238,
.L6:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L14:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L16	@,
.L7:
	ldrh	sl, [r6, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r5, #1148	@ tmp198,
	ldrh	r0, [r6, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r4, #:lower16:g_HwMem	@ tmp405,
	mul	r5, r5, r8	@ tmp197, tmp198, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp405,
	mul	lr, r0, sl	@ tmp191, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	sl, #0	@ tmp188,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	sub	ip, lr, #1	@ tmp192, tmp191,
	ldr	lr, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, ip, #-16777216	@ tmp195, tmp192,
	bic	r2, r3, #15728640	@ tmp195, tmp195,
	bfi	r2, sl, #31, #1	@ tmp195, tmp188,,
	str	r2, [fp, #-40]	@ tmp195,
	str	r2, [lr, #8]	@ tmp195,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r6, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #536870922	@ tmp208,
	ldr	lr, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp206, <variable>.VahbStride,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, ip, #4, #10	@ tmp208, tmp206,,
	movt	r1, #:upper16:.LC3	@,
	orr	r3, r3, #49152	@ tmp213, tmp208,
	bfi	r3, sl, #16, #12	@ tmp213, tmp188,,
	orr	ip, r3, #536870912	@ tmp217, tmp213,
	bfi	ip, r2, #30, #1	@ tmp217, <variable>.Compress_en,,
	orr	r2, ip, #-2147483648	@ tmp218, tmp217,
	str	r2, [fp, #-40]	@ tmp218,
	str	r2, [lr, #12]	@ tmp218,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	ip, r3, #15	@ tmp230, <variable>.MsgSlotAddr,
	str	ip, [fp, #-40]	@ tmp230, <variable>.av_msg_addr
	str	ip, [r2, #16]	@ tmp230,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bic	ip, r3, #15	@ tmp241, <variable>.MsgSlotAddr,
	str	ip, [fp, #-40]	@ tmp241, <variable>.va_msg_addr
	str	ip, [r2, #20]	@ tmp241,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r3, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r3, [ip, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bic	r3, r2, #15	@ tmp262, <variable>.PpfdBufAddr,
	str	r3, [fp, #-40]	@ tmp262, <variable>.ppfd_buf_addr
	str	r3, [ip, #128]	@ tmp262,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	sl, [fp, #-40]	@ tmp188, D32
	mov	r0, #3	@,
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC8	@,
	strh	r2, [fp, #-40]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	movt	r1, #:upper16:.LC8	@,
	ldr	ip, [fp, #-40]	@ D32.525, D32
	str	ip, [r3, #132]	@ D32.525,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp280,
	str	r3, [fp, #-40]	@ tmp280, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	str	r3, [r2, #48]	@ tmp280,
	movt	r1, #:upper16:.LC9	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	ip, #:lower16:3148803	@ tmp289,
	movt	ip, #:upper16:3148803	@ tmp289,
	str	ip, [fp, #-40]	@ tmp289, D32
	mov	r0, #3	@,
	str	ip, [r1, #60]	@ tmp289,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [fp, #-40]	@ D32.534, D32
	movt	r1, #:upper16:.LC10	@,
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #64]	@ D32.534,
	ldr	r2, [fp, #-40]	@ D32.537, D32
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #68]	@ D32.537,
	ldr	ip, [fp, #-40]	@ D32.540, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.540,
	ldr	ip, [fp, #-40]	@ D32.543, D32
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #76]	@ D32.543,
	ldr	r2, [fp, #-40]	@ D32.546, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.546,
	ldr	r2, [fp, #-40]	@ D32.549, D32
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #84]	@ D32.549,
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	bic	ip, r3, #15	@ tmp329, <variable>.image_curr_recon_addr,
	str	ip, [fp, #-40]	@ tmp329, <variable>.ystaddr_1d
	str	ip, [r2, #96]	@ tmp329,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r3, [fp, #-40]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r3, [ip, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r2, [r6, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp350,
	mov	r2, r2, asl #4	@ D.31334, <variable>.PicWidthInMb,
	sub	r0, r2, #1	@ tmp349, D.31334,
	cmp	r0, r3	@ tmp349, tmp350
	bhi	.L17	@,
.L9:
	mov	r5, #16	@ level,
.L11:
	ldrh	r2, [r6, #54]	@ temp.562, <variable>.PicHeightInMb
	mov	r0, #3	@,
	ldr	lr, [r6, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r1, #:lower16:.LC12	@,
	add	ip, r2, #1	@ tmp366, temp.562,
	movt	r1, #:upper16:.LC12	@,
	mov	r3, r2, asl #4	@ tmp361, temp.562,
	movw	r2, #1148	@ tmp374,
	add	r3, r3, #31	@ tmp362, tmp361,
	mov	ip, ip, asr #1	@ tmp367, tmp366,
	mul	r8, r2, r8	@ tmp373, tmp374, VdhId
	mov	r3, r3, asr #5	@ tmp363, tmp362,
	mul	ip, lr, ip	@ tmp368, <variable>.VahbStride, tmp367
	mov	lr, r3, asl #4	@ tmp364, tmp363,
	mla	r2, r5, lr, ip	@ tmp370, level, tmp364, tmp368
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r2, asl #1	@ tmp371, tmp370,
	str	r3, [fp, #-40]	@ tmp371, <variable>.uvoffset_1d
	str	r3, [lr, #104]	@ tmp371,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	ip, [r6, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #1	@ tmp389,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	mov	ip, ip, asl #4	@ tmp380, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC13	@,
	add	ip, ip, #31	@ tmp381, tmp380,
	mov	ip, ip, asr #5	@ tmp382, tmp381,
	mov	ip, ip, asl #5	@ tmp383, tmp382,
	mul	r5, r5, ip	@ D32.424, level, tmp383
	str	r5, [r2, #108]	@ D32.424,
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ tmp389, D32
	str	r3, [r2, #152]	@ tmp389,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp403,
	mov	r0, #0	@ D.31238,
	str	ip, [r3, #32]	@ tmp403,
	b	.L6	@
.L17:
	sub	ip, r2, #2048	@ tmp351, D.31334,
	sub	r1, ip, #1	@ tmp351, tmp351,
	cmp	r1, r3	@ tmp351, tmp350
	movls	r5, #32	@ level,
	bls	.L11	@,
	sub	r0, r2, #4096	@ tmp354, D.31334,
	sub	lr, r0, #1	@ tmp354, tmp354,
	cmp	lr, r3	@ tmp354, tmp350
	movls	r5, #48	@ level,
	bls	.L11	@,
	sub	r1, r2, #6144	@ tmp357, D.31334,
	sub	r2, r1, #1	@ tmp357, tmp357,
	cmp	r2, r3	@ tmp357, tmp350
	movls	r5, #64	@ level,
	bls	.L11	@,
	b	.L9	@
.L16:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31242,
	strne	r1, [r7, #0]	@ D.31242, <variable>.pVdmRegVirAddr
	bne	.L7	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31238,
	b	.L6	@
	.fnend
	.size	VP6HAL_V200R003MPW_CfgReg, .-VP6HAL_V200R003MPW_CfgReg
	.align	2
	.global	VP6HAL_V200R003MPW_CfgDnMsg
	.type	VP6HAL_V200R003MPW_CfgDnMsg, %function
VP6HAL_V200R003MPW_CfgDnMsg:
	.fnstart
.LFB1349:
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
	subs	r9, r0, #0	@ D.31393,
	beq	.L26	@,
	ldr	r0, [r4, #60]	@ <variable>.FrameType, <variable>.FrameType
	mov	r6, #0	@ tmp238,
	mov	r8, r9	@ p32, D.31393
	mov	sl, r6	@ tmp241, tmp238
	bfi	sl, r0, #0, #1	@ tmp241, <variable>.FrameType,,
	str	sl, [fp, #-48]	@ tmp241,
	str	sl, [r8], #4	@ tmp241,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	add	sl, r8, r0	@ p32.611, p32,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	ip, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	r5, r1, #1	@ tmp247, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC17	@,
	sub	r2, ip, #1	@ tmp251, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC17	@,
	mov	r3, r5, asl #23	@ tmp252, tmp247,
	add	ip, sl, r0	@ p32.615, p32.611,
	add	r5, r9, #36	@ p32.627, D.31393,
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
	movw	r1, #:lower16:.LC18	@,
	bfi	ip, r9, #8, #1	@ tmp265, <variable>.UseHuffman,,
	movt	r1, #:upper16:.LC18	@,
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
	movw	r1, #:lower16:.LC19	@,
	bfi	ip, r2, #18, #2	@ tmp286, <variable>.PredictionFilterMode,,
	movt	r1, #:upper16:.LC19	@,
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
	movw	r1, #:lower16:.LC20	@,
	bfi	r3, r6, #21, #11	@ tmp299, tmp238,,
	str	r3, [fp, #-48]	@ tmp299,
	str	r3, [r2, #4]	@ tmp299,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #160]	@ <variable>.value, <variable>.value
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [fp, #-48]	@ <variable>.value, <variable>.value
	str	r3, [sl, #24]	@ <variable>.value,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #164]	@ <variable>.range, <variable>.range
	str	r6, [fp, #-48]	@ tmp238, D32
	mov	r0, #4	@,
	ldr	r2, [r4, #168]	@ <variable>.count, <variable>.count
	movw	r1, #:lower16:.LC22	@,
	strb	ip, [fp, #-48]	@ <variable>.range, <variable>.range
	movt	r1, #:upper16:.LC22	@,
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
	ldr	ip, [r4, #116]	@ D.31466, <variable>.bit0_offset_0
	add	r6, r3, #8	@ Vp6_br_cnt, <variable>.count,
	ldr	r2, [r4, #112]	@ D.31465, <variable>.bit0_len_0
	cmp	r6, ip	@ Vp6_br_cnt, D.31466
	addhi	ip, ip, #128	@ tmp319, D.31466,
	add	r0, r6, r2	@ tmp321, Vp6_br_cnt, D.31465
	ldrhi	r8, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	rsbls	ip, r6, ip	@ D16_bit_offset_0, Vp6_br_cnt, D.31466
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
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@ tmp327, tmp320
	bfi	r2, r8, #0, #24	@ tmp327, D17_bit_byte_offset_0,,
	str	r2, [fp, #-48]	@ tmp327,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@ D32.638, D32
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	str	r3, [r5, #32]	@ D32.638,
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
	movw	r1, #:lower16:.LC25	@,
	bfi	r3, r2, #25, #7	@ tmp339, <variable>.bit0_offset_1,,
	str	r3, [fp, #-48]	@ tmp339,
	str	r3, [r5, #36]	@ tmp339,
	movt	r1, #:upper16:.LC25	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #132]	@ <variable>.bit0_stream_addr_1, <variable>.bit0_stream_addr_1
	mov	r3, r6	@ tmp343, tmp320
	mov	r0, #4	@,
	bfi	r3, ip, #0, #24	@ tmp343, <variable>.bit0_stream_addr_1,,
	str	r3, [fp, #-48]	@ tmp343,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC26	@,
	ldr	r2, [fp, #-48]	@ D32.647, D32
	movt	r1, #:upper16:.LC26	@,
	str	r2, [r5, #40]	@ D32.647,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #136]	@ <variable>.bit1_len_0, <variable>.bit1_len_0
	ldr	ip, [r4, #140]	@ <variable>.bit1_offset_0, <variable>.bit1_offset_0
	mov	r0, #4	@,
	bic	r3, r1, #-33554432	@ tmp353, <variable>.bit1_len_0,
	movw	r1, #:lower16:.LC27	@,
	bfi	r3, ip, #25, #7	@ tmp353, <variable>.bit1_offset_0,,
	str	r3, [fp, #-48]	@ tmp353,
	str	r3, [r5, #44]	@ tmp353,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #144]	@ <variable>.bit1_stream_addr_0, <variable>.bit1_stream_addr_0
	mov	r1, r6	@ tmp357, tmp320
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp357, <variable>.bit1_stream_addr_0,,
	str	r1, [fp, #-48]	@ tmp357,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC28	@,
	ldr	ip, [fp, #-48]	@ D32.655, D32
	movt	r1, #:upper16:.LC28	@,
	str	ip, [r5, #48]	@ D32.655,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #148]	@ <variable>.bit1_len_1, <variable>.bit1_len_1
	ldr	r2, [r4, #152]	@ <variable>.bit1_offset_1, <variable>.bit1_offset_1
	mov	r0, #4	@,
	bic	ip, r3, #-33554432	@ tmp367, <variable>.bit1_len_1,
	movw	r1, #:lower16:.LC29	@,
	bfi	ip, r2, #25, #7	@ tmp367, <variable>.bit1_offset_1,,
	str	ip, [fp, #-48]	@ tmp367,
	str	ip, [r5, #52]	@ tmp367,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #156]	@ <variable>.bit1_stream_addr_1, <variable>.bit1_stream_addr_1
	mov	r1, r6	@ tmp371, tmp320
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp371, <variable>.bit1_stream_addr_1,,
	str	r1, [fp, #-48]	@ tmp371,
	strb	r6, [fp, #-45]	@ tmp320, <variable>.reserved
	movw	r1, #:lower16:.LC30	@,
	ldr	r3, [fp, #-48]	@ D32.663, D32
	movt	r1, #:upper16:.LC30	@,
	str	r3, [r5, #56]	@ D32.663,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	bic	r2, ip, #15	@ tmp380, <variable>.image_curr_recon_addr,
	str	r2, [fp, #-48]	@ tmp380, <variable>.curr_rcn_addr
	str	r2, [r5, #92]	@ tmp380,
	movt	r1, #:upper16:.LC31	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #176]	@ <variable>.image_golden_ref_addr, <variable>.image_golden_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	ip, r3, #15	@ tmp386, <variable>.image_golden_ref_addr,
	str	ip, [fp, #-48]	@ tmp386, <variable>.golden_ref_addr
	str	ip, [r5, #100]	@ tmp386,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	r3, r2, #15	@ tmp392, <variable>.image_last_ref_addr,
	str	r3, [fp, #-48]	@ tmp392, <variable>.last_ref_addr
	str	r3, [r5, #104]	@ tmp392,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	r2, ip, #15	@ tmp398, <variable>.SedTopAddr,
	str	r2, [fp, #-48]	@ tmp398, <variable>.sed_top_addr
	str	r2, [r5, #108]	@ tmp398,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	bic	ip, r3, #15	@ tmp404, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp404, <variable>.pmv_top_addr
	str	ip, [r5, #112]	@ tmp404,
	movt	r1, #:upper16:.LC35	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	bic	r3, r2, #15	@ tmp410, <variable>.RcnTopAddr,
	str	r3, [fp, #-48]	@ tmp410, <variable>.rcn_top_addr
	str	r3, [r5, #116]	@ tmp410,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1120]	@ <variable>.Vp6TabAddr, <variable>.Vp6TabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	bic	r2, ip, #15	@ tmp416, <variable>.Vp6TabAddr,
	str	r2, [fp, #-48]	@ tmp416, <variable>.tab_addr
	str	r2, [r5, #120]	@ tmp416,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31551,
	ldr	r0, [r7, #1120]	@, <variable>.Vp6TabAddr
	bl	MEM_Phy2Vir	@
	mov	r0, r5	@, D.31551
	mov	r1, #4096	@,
	bl	__memzero	@
	ldr	r1, [r4, #4]	@, <variable>.TblProbModeSame
	mov	r2, #64	@,
	mov	r0, r5	@, D.31551
	bl	memcpy	@
	ldr	r1, [r4, #8]	@, <variable>.TblProbMode
	mov	r2, #640	@,
	add	r0, r5, #64	@, D.31551,
	bl	memcpy	@
	add	r0, r5, #704	@, D.31551,
	ldr	r1, [r4, #12]	@, <variable>.TblProbMv
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r3, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r3, r6	@ <variable>.UseHuffman,
	beq	.L27	@,
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #44]	@, <variable>.TblAcHuffLUT
	mov	r2, #1536	@,
	mov	r5, r0	@ D.31569,
	add	r0, r0, #768	@, D.31569,
	bl	memcpy	@
	ldr	r1, [r4, #40]	@, <variable>.TblDcHuffLUT
	mov	r2, #128	@,
	add	r0, r5, #2304	@, D.31569,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.31569,
	ldr	r1, [r4, #48]	@, <variable>.TblZeroHuffLUT
	mov	r2, #128	@,
	bl	memcpy	@
.L24:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #16]	@, <variable>.TblModifiedScanOrder
	mov	r2, #64	@,
	mov	r5, r0	@ D.31574,
	add	r0, r0, #2560	@, D.31574,
	bl	memcpy	@
	ldr	r1, [r4, #20]	@, <variable>.TblEobOffsetTable
	mov	r2, #64	@,
	add	r0, r5, #2624	@, D.31574,
	bl	memcpy	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r5, #2688	@, D.31574,
	bl	memcpy	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r0, #2816	@,,
	bl	memcpy	@
	mov	r0, #0	@ D.31397,
.L20:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L27:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #28]	@, <variable>.TblDcNodeContexts
	mov	r2, #96	@,
	mov	r5, r0	@ D.31563,
	add	r0, r0, #768	@, D.31563,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, <variable>.TblZeroProbs
	add	r0, r5, #864	@, D.31563,
	mov	r2, #32	@,
	bl	memcpy	@
	add	r0, r5, #896	@, D.31563,
	ldr	r1, [r4, #32]	@, <variable>.TblACProbs
	mov	r2, #576	@,
	bl	memcpy	@
	b	.L24	@
.L26:
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #276	@,
	movt	r1, #:upper16:.LC14	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31397,
	b	.L20	@
	.fnend
	.size	VP6HAL_V200R003MPW_CfgDnMsg, .-VP6HAL_V200R003MPW_CfgDnMsg
	.align	2
	.global	VP6HAL_V200R003MPW_StartDec
	.type	VP6HAL_V200R003MPW_StartDec, %function
VP6HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1347:
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
	bls	.L39	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31199,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L39:
	ldrh	r1, [r0, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	sub	r0, r1, #1	@ tmp145, <variable>.PicWidthInMb,
	uxth	r3, r0	@ tmp146, tmp145
	cmp	r3, #352	@ tmp146,
	bcs	.L40	@,
	ldrh	lr, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	ip, lr, #1	@ tmp152, <variable>.PicHeightInMb,
	uxth	r2, ip	@ tmp153, tmp152
	cmp	r2, #264	@ tmp153,
	bcs	.L41	@,
	movw	r8, #1148	@ tmp158,
	movw	r7, #:lower16:g_HwMem	@ tmp159,
	mul	r8, r8, r4	@ tmp157, tmp158, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp159,
	add	r6, r7, r8	@ pHwMem, tmp159, tmp157
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L42	@,
.L34:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp163,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp163,
	ldr	r3, [r0, #36]	@ D.31217, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.31217,
	beq	.L36	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.31217
.L37:
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R003MPW_CfgReg	@
	mov	r0, r5	@, pVp6DecParam
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VP6HAL_V200R003MPW_CfgDnMsg	@
	mov	r0, #0	@ D.31199,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L36:
	mov	r0, r3	@, D.31217
	movw	r1, #:lower16:.LC41	@,
	mov	r2, #82	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	b	.L37	@
.L42:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31212,
	strne	r1, [r7, r8]	@ D.31212, <variable>.pVdmRegVirAddr
	bne	.L34	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31199,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #68	@,
	movt	r1, #:upper16:.LC14	@,
	movw	r3, #:lower16:.LC39	@,
	movt	r3, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31199,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L41:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #69	@,
	movt	r1, #:upper16:.LC14	@,
	movw	r3, #:lower16:.LC40	@,
	movt	r3, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31199,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VP6HAL_V200R003MPW_StartDec, .-VP6HAL_V200R003MPW_StartDec
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
	.ascii	"PPFD_V200R003MPW_BUF_ADDR = 0x%x\012\000"
	.space	2
.LC8:
	.ascii	"PPFD_V200R003MPW_BUF_LEN = 0x%x\012\000"
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
	.ascii	"FF_APT_EN = 0x%x\012\000"
	.space	2
.LC14:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC15:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC16:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC17:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D16 = 0x%x\012\000"
.LC24:
	.ascii	"D17 = 0x%x\012\000"
.LC25:
	.ascii	"D18 = 0x%x\012\000"
.LC26:
	.ascii	"D19 = 0x%x\012\000"
.LC27:
	.ascii	"D20 = 0x%x\012\000"
.LC28:
	.ascii	"D21 = 0x%x\012\000"
.LC29:
	.ascii	"D22 = 0x%x\012\000"
.LC30:
	.ascii	"D23 = 0x%x\012\000"
.LC31:
	.ascii	"D32 = 0x%x\012\000"
.LC32:
	.ascii	"D34 = 0x%x\012\000"
.LC33:
	.ascii	"D35 = 0x%x\012\000"
.LC34:
	.ascii	"D36 = 0x%x\012\000"
.LC35:
	.ascii	"D37 = 0x%x\012\000"
.LC36:
	.ascii	"D38 = 0x%x\012\000"
.LC37:
	.ascii	"D39 = 0x%x\012\000"
.LC38:
	.ascii	"VdhId is wrong! MP2HAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC39:
	.ascii	"picture width out of range\000"
	.space	1
.LC40:
	.ascii	"picture height out of range\000"
.LC41:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
