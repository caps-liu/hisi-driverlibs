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
	.file	"postprocess.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/postprocess.o -O2 -Wall
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
.LFB1357:
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
	cmp	r0, #0	@ VidStd
	bne	.L2	@,
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	rsbs	r0, r0, #1	@ D.30407, <variable>.frame_mbs_only_flag
	movcc	r0, #0	@ D.30407
	ldmfd	sp, {fp, sp, pc}	@
.L2:
	cmp	r0, #15	@ VidStd,
	movne	r0, #0	@ D.30407,
	ldmnefd	sp, {fp, sp, pc}	@
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	rsbs	r0, r2, #1	@ D.30407, <variable>.frame_mbs_only_flag
	movcc	r0, #0	@ D.30407
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_CopyYuv
	.type	PostPro_CopyYuv, %function
PostPro_CopyYuv:
	.fnstart
.LFB1358:
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
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	movw	r2, #14600	@ tmp145,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp165,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	ldr	r6, [r0, r2]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r5, #14588	@ tmp147,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp165,
	mov	r2, #0	@ tmp154,
	mov	r3, r1	@ VdhId, VdhId
	mov	r1, #1	@ tmp153,
	str	r6, [r4, #12]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r6, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	ldr	ip, [ip, #88]	@ D.30444, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r6, [r4, #4]	@ <variable>.DispFramePhyAddr, <variable>.ImageAddr
	cmp	ip, r2	@ D.30444,
	ldr	r5, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r5, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r6, [r0, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r6, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r5, [r0, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r5, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	ldrh	r6, [r0, #164]	@ D.30430, <variable>.PicWidthInMb
	str	r6, [r4, #24]	@ D.30430, <variable>.ImageWidth
	ldrh	r5, [r0, #166]	@ D.30432, <variable>.PicHeightInMb
	str	r1, [r4, #32]	@ tmp153, <variable>.IsFrame
	str	r2, [r4, #36]	@ tmp154, <variable>.ImageCSP
	mul	r6, r6, r5	@ tmp158, D.30430, D.30432
	str	r5, [r4, #28]	@ D.30432, <variable>.ImageHeight
	mov	r5, #14656	@ tmp161,
	str	r1, [r4, #552]	@ tmp153, <variable>.ValidGroupNum
	strh	r2, [r4, #40]	@ movhi	@ tmp154, <variable>.StartMbn
	sub	r6, r6, #1	@ tmp160, tmp158,
	strh	r6, [r4, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r5, [r0, r5]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r1	@ D.30447, tmp153
	str	r1, [r4, #568]	@ tmp153, <variable>.FullRepair
	str	r2, [r4, #564]	@ tmp154, <variable>.Pic_type
	str	r5, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	ip	@ D.30444
	subs	r0, r0, #0	@ D.30447,,
	movne	r0, #1	@ D.30447
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1369:
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
	ldr	r7, [r0, #8]	@ n, <variable>.DecSliceNum
	mov	r5, r0	@ pDecReport, pDecReport
	cmp	r7, #1	@ n,
	movhi	r6, #1	@ i,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L13:
	rsb	r0, r6, r7	@ pretmp.506, i, n
	mov	r4, #0	@ flag,
	tst	r0, #1	@ pretmp.506,
	mov	r3, r5	@ ivtmp.521, pDecReport
	mov	r1, r4	@ j, flag
	beq	.L16	@,
	cmp	r0, #0	@ pretmp.506,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrh	r3, [r5, #12]	@ D.31480, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r5, #16]	@ D.31482, <variable>.SliceMbRange
	cmp	r3, r2	@ D.31480, D.31482
	bls	.L19	@,
	ldrh	ip, [r5, #14]	@ D.31485, <variable>.SliceMbRange
	mov	r4, r1	@ flag, j
	strh	r2, [r5, #12]	@ movhi	@ D.31482, <variable>.SliceMbRange
	ldrh	r2, [r5, #18]	@, <variable>.SliceMbRange
	strh	r3, [r5, #16]	@ movhi	@ D.31480, <variable>.SliceMbRange
	strh	ip, [r5, #18]	@ movhi	@ D.31485, <variable>.SliceMbRange
	strh	r2, [r5, #14]	@ movhi	@, <variable>.SliceMbRange
.L19:
	add	r3, r5, #4	@ ivtmp.521, pDecReport,
.L16:
	cmp	r0, r1	@ pretmp.506, j
	add	r2, r3, #4	@ tmp194, ivtmp.521,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L25	@,
.L15:
	ldrh	ip, [r3, #12]	@ D.31480, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r8, [r3, #16]	@ D.31482, <variable>.SliceMbRange
	cmp	ip, r8	@ D.31480, D.31482
	bls	.L14	@,
	ldrh	sl, [r3, #14]	@ D.31485, <variable>.SliceMbRange
	mov	r4, #1	@ flag,
	strh	r8, [r3, #12]	@ movhi	@ D.31482, <variable>.SliceMbRange
	ldrh	r8, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.31480, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.31485, <variable>.SliceMbRange
	strh	r8, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L14:
	ldrh	r3, [r2, #12]	@ D.31480, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.31482, <variable>.SliceMbRange
	cmp	r3, ip	@ D.31480, D.31482
	bls	.L22	@,
	ldrh	r8, [r2, #18]	@, <variable>.SliceMbRange
	mov	r4, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.31482, <variable>.SliceMbRange
	ldrh	ip, [r2, #14]	@ D.31485, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.31480, <variable>.SliceMbRange
	strh	r8, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	ip, [r2, #18]	@ movhi	@ D.31485, <variable>.SliceMbRange
.L22:
	cmp	r0, r1	@ pretmp.506, j
	add	r3, r2, #4	@ ivtmp.521, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.521,
	add	r1, r1, #1	@ tmp195, j,
	bhi	.L15	@,
.L25:
	cmp	r4, #0	@ flag,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r6, r6, #1	@ i, i,
	cmp	r7, r6	@ n, i
	bhi	.L13	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.align	2
	.global	PostPro_SetDecReport
	.type	PostPro_SetDecReport, %function
PostPro_SetDecReport:
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
	mov	r5, r0	@ VidStd, VidStd
	mov	r6, r1	@ pDecParam, pDecParam
	mov	r0, r2	@, pDecReport
	mov	r1, #528	@,
	mov	r4, r2	@ pDecReport, pDecReport
	bl	__memzero	@
	cmp	r5, #15	@ VidStd,
	ldrls	pc, [pc, r5, asl #2]	@ VidStd
	b	.L27	@
.L39:
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L27
	.word	.L37
	.word	.L33
	.word	.L27
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L37
	.word	.L27
	.word	.L37
.L33:
	ldrb	r3, [r6, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	beq	.L43	@,
.L37:
	mov	r1, #0	@ movhi	@,
	mov	r0, #1	@ tmp208,
	strh	r1, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r1, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r0, [r4, #8]	@ tmp208, <variable>.DecSliceNum
.L40:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L27:
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L40	@
.L43:
	mov	r3, #0	@ movhi	@,
	mov	r2, #2	@ tmp159,
	strh	r3, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r3, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [r4, #8]	@ tmp159, <variable>.DecSliceNum
	ldrh	ip, [r6, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	lr, [r6, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r1, lr, ip	@ tmp166, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r0, r1, r1, lsr #31	@, tmp169, tmp166, tmp166,
	mov	r3, r0, asr #1	@ tmp170, tmp169,
	strh	r3, [r4, #16]	@ movhi	@ tmp170, <variable>.SliceMbRange
	ldrh	r2, [r6, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	lr, [r6, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mul	ip, r2, lr	@ tmp173, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r1, ip, ip, lsr #31	@, tmp176, tmp173, tmp173,
	mov	r0, r1, asr #1	@ tmp177, tmp176,
	strh	r0, [r4, #18]	@ movhi	@ tmp177, <variable>.SliceMbRange
	b	.L40	@
	.fnend
	.size	PostPro_SetDecReport, .-PostPro_SetDecReport
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
.LFB1368:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r2, [r1, #8]	@ D.31408, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp156, D.31408,
	cmp	r3, #3	@ tmp156,
	bhi	.L61	@,
	ldr	r7, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp158
	str	r6, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	r6, [r1, #8]	@ prephitmp.585, <variable>.DecSliceNum
	add	r9, r0, #572	@, pRepairParam,
	mul	r5, r5, r7	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r1, [fp, #-68]	@ pDecReport, %sfp
	add	r2, r1, r6, asl #2	@, tmp163, pDecReport, prephitmp.585,
	str	r9, [fp, #-64]	@, %sfp
	mov	r7, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	sl, r5, r8	@, total_mbn,
	mov	r4, r8	@ old_slice_start_mbn, old_slice_start_mbn
	str	sl, [fp, #-56]	@, %sfp
	mov	sl, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r3, r5, asr #1	@, total_mbn,
	str	r3, [fp, #-52]	@, %sfp
	uxth	r3, r5	@, total_mbn
	str	r3, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-52]	@, %sfp
	add	r3, r3, r8	@,,
	str	r3, [fp, #-60]	@, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	strh	r3, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r3, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	ldr	r3, [fp, #-68]	@ ivtmp.600, %sfp
	str	r0, [fp, #-68]	@ pRepairParam, %sfp
.L53:
	ldrh	r2, [r3, #12]	@ D.31419, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31419, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L49	@,
	cmp	r2, r0	@ D.31419, curr_slice_end_mbn
	bgt	.L49	@,
	cmp	r2, r8	@ D.31419, old_slice_end_mbn
	movlt	r8, r4	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, r8	@ D.31419, tmp177
	ble	.L51	@,
	ldr	sl, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r4, r4, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31436, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31419,
	rsb	r6, r4, r6	@ tmp188, D.31436, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31436, tmp195
	add	sl, r7, sl, asl #2	@, tmp180, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r6, [sl, #40]	@ movhi	@ tmp188, <variable>.StartMbn
	ldr	r6, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r7, r6, asl #2	@, tmp193, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp197, <variable>.EndMbn
	ldr	r6, [r7, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r8, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r6, #0	@ <variable>.IsFrame,
	add	r4, r8, #1	@ tmp199, <variable>.ValidGroupNum,
	str	r4, [r7, #552]	@ tmp199, <variable>.ValidGroupNum
	bne	.L60	@,
	ldr	r4, [fp, #-60]	@, %sfp
	cmp	r2, r4	@ D.31419,
	bge	.L59	@,
.L60:
	ldr	r6, [r1, #8]	@ prephitmp.585, <variable>.DecSliceNum
.L51:
	sub	r8, r6, #1	@ temp.606, prephitmp.585,
	cmp	r8, ip	@ temp.606, i
	beq	.L62	@,
.L52:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r4, r2	@ old_slice_start_mbn, D.31419
.L49:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.600, ivtmp.600,
	cmp	ip, r6	@ i, prephitmp.585
	bls	.L53	@,
	mov	r3, #0	@ D.31413,
.L46:
	mov	r0, r3	@, D.31413
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L62:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldr	sl, [fp, #-56]	@, %sfp
	ldrh	r8, [r4, #14]	@ D.31453, <variable>.SliceMbRange
	cmp	r8, sl	@ D.31453,
	bge	.L52	@,
	ldr	r0, [fp, #-68]	@ pRepairParam, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r1, r3, #1	@ tmp216,,
	mov	r3, #0	@ D.31413,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #40]	@ movhi	@ D.31453, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L46	@
.L59:
	ldr	r6, [r1, #8]	@ prephitmp.585, <variable>.DecSliceNum
	ldr	r7, [fp, #-64]	@ pLocalRepairParam, %sfp
	ldr	r9, [fp, #-52]	@ dectopfldmbs, %sfp
	b	.L51	@
.L61:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31413,
	b	.L46	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r2, [r1, #8]	@ D.31335, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp156, D.31335,
	cmp	r3, #127	@ tmp156,
	bhi	.L80	@,
	ldr	r7, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp158
	str	r6, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	r6, [r1, #8]	@ prephitmp.630, <variable>.DecSliceNum
	add	r9, r0, #572	@, pRepairParam,
	mul	r5, r5, r7	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r1, [fp, #-68]	@ pDecReport, %sfp
	add	r2, r1, r6, asl #2	@, tmp163, pDecReport, prephitmp.630,
	str	r9, [fp, #-64]	@, %sfp
	mov	r7, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	sl, r5, r8	@, total_mbn,
	mov	r4, r8	@ old_slice_start_mbn, old_slice_start_mbn
	str	sl, [fp, #-56]	@, %sfp
	mov	sl, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r3, r5, asr #1	@, total_mbn,
	str	r3, [fp, #-52]	@, %sfp
	uxth	r3, r5	@, total_mbn
	str	r3, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-52]	@, %sfp
	add	r3, r3, r8	@,,
	str	r3, [fp, #-60]	@, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	strh	r3, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r3, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	ldr	r3, [fp, #-68]	@ ivtmp.645, %sfp
	str	r0, [fp, #-68]	@ pRepairParam, %sfp
.L72:
	ldrh	r2, [r3, #12]	@ D.31346, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31346, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L68	@,
	cmp	r2, r0	@ D.31346, curr_slice_end_mbn
	bgt	.L68	@,
	cmp	r2, r8	@ D.31346, old_slice_end_mbn
	movlt	r8, r4	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, r8	@ D.31346, tmp177
	ble	.L70	@,
	ldr	sl, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r4, r4, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31363, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31346,
	rsb	r6, r4, r6	@ tmp188, D.31363, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31363, tmp195
	add	sl, r7, sl, asl #2	@, tmp180, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r6, [sl, #40]	@ movhi	@ tmp188, <variable>.StartMbn
	ldr	r6, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r7, r6, asl #2	@, tmp193, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp197, <variable>.EndMbn
	ldr	r6, [r7, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r8, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r6, #0	@ <variable>.IsFrame,
	add	r4, r8, #1	@ tmp199, <variable>.ValidGroupNum,
	str	r4, [r7, #552]	@ tmp199, <variable>.ValidGroupNum
	bne	.L79	@,
	ldr	r4, [fp, #-60]	@, %sfp
	cmp	r2, r4	@ D.31346,
	bge	.L78	@,
.L79:
	ldr	r6, [r1, #8]	@ prephitmp.630, <variable>.DecSliceNum
.L70:
	sub	r8, r6, #1	@ temp.651, prephitmp.630,
	cmp	r8, ip	@ temp.651, i
	beq	.L81	@,
.L71:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r4, r2	@ old_slice_start_mbn, D.31346
.L68:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.645, ivtmp.645,
	cmp	ip, r6	@ i, prephitmp.630
	bls	.L72	@,
	mov	r3, #0	@ D.31340,
.L65:
	mov	r0, r3	@, D.31340
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L81:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldr	sl, [fp, #-56]	@, %sfp
	ldrh	r8, [r4, #14]	@ D.31380, <variable>.SliceMbRange
	cmp	r8, sl	@ D.31380,
	bge	.L71	@,
	ldr	r0, [fp, #-68]	@ pRepairParam, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r1, r3, #1	@ tmp216,,
	mov	r3, #0	@ D.31340,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #40]	@ movhi	@ D.31380, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L65	@
.L78:
	ldr	r6, [r1, #8]	@ prephitmp.630, <variable>.DecSliceNum
	ldr	r7, [fp, #-64]	@ pLocalRepairParam, %sfp
	ldr	r9, [fp, #-52]	@ dectopfldmbs, %sfp
	b	.L70	@
.L80:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31340,
	b	.L65	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
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
	mov	r9, r1	@ pDecReport, pDecReport
	ldr	r1, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r1, #1	@ tmp151, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp151,
	bhi	.L95	@,
	ldr	r5, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp154,
	ldr	r4, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r7, #0	@ old_slice_end_mbn,
	str	r6, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	r1, r6	@ i, tmp154
	str	r6, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r9	@ ivtmp.690, pDecReport
	mul	r4, r4, r5	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r5, [r9, #8]	@ prephitmp.675, <variable>.DecSliceNum
	mov	r6, r7	@ old_slice_start_mbn, old_slice_end_mbn
	add	ip, r9, r5, asl #2	@, tmp160, pDecReport, prephitmp.675,
	add	r8, r4, r7	@, total_mbn, tmp6
	str	r8, [fp, #-52]	@, %sfp
	uxth	r8, r4	@, total_mbn
	str	r8, [fp, #-48]	@, %sfp
	strh	r8, [ip, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L92	@
.L87:
	add	r1, r1, #1	@ i, i,
	cmp	r5, r1	@ prephitmp.675, i
	bcc	.L96	@,
.L92:
	ldrh	r2, [r3, #12]	@ D.31277, <variable>.SliceMbRange
	ldrh	ip, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.690, ivtmp.690,
	cmp	r2, r4	@ D.31277, total_mbn
	cmple	ip, r4	@, curr_slice_end_mbn, total_mbn
	bgt	.L87	@,
	cmp	r2, ip	@ D.31277, curr_slice_end_mbn
	bgt	.L87	@,
	cmp	r2, r7	@ D.31277, old_slice_end_mbn
	add	sl, r6, r6, lsr #31	@, tmp217, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp216, D.31277,
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_start_mbn
	add	r7, r7, #1	@ tmp174, old_slice_end_mbn,
	cmp	r7, r2	@ tmp174, D.31277
	mov	r6, r2	@ old_slice_start_mbn, D.31277
	mov	r7, ip	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L89	@,
	cmp	sl, r8	@ tmp217, tmp216
	bge	.L89	@,
	ldr	r2, [r0, #552]	@ D.31295, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.31295,
	add	r2, r0, r2, asl #2	@, tmp180, pRepairParam, D.31295,
	bgt	.L97	@,
	strh	sl, [r2, #40]	@ movhi	@ tmp217, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp191, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	r5, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r5, #1	@ tmp195, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp195, <variable>.ValidGroupNum
	ldr	r5, [r9, #8]	@ prephitmp.675, <variable>.DecSliceNum
.L89:
	sub	r2, r5, #1	@ temp.695, prephitmp.675,
	cmp	r2, r1	@ temp.695, i
	bne	.L87	@,
	add	r2, r9, r1, asl #2	@, tmp198, pDecReport, i,
	ldr	ip, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31309, <variable>.SliceMbRange
	cmp	r2, ip	@ D.31309,
	bge	.L87	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, r0, ip, asl #2	@, tmp203, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r3, #1	@ tmp211,,
	mov	r3, #0	@ D.31271,
	strh	r2, [ip, #40]	@ movhi	@ D.31309, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp209, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp211, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp213, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp213, <variable>.ValidGroupNum
	b	.L84	@
.L96:
	mov	r3, #0	@ D.31271,
.L84:
	mov	r0, r3	@, D.31271
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L95:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31271,
	b	.L84	@
.L97:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1159	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31271,
	b	.L84	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1365:
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
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp151, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp151,
	bhi	.L111	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp154
	str	r6, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r6, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.736, pDecReport
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.721, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r9, r1	@ pDecReport, pDecReport
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.721,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [fp, #-52]	@, %sfp
	uxth	sl, r5	@, total_mbn
	str	sl, [fp, #-48]	@, %sfp
	strh	sl, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	sl, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L108	@
.L103:
	add	ip, ip, #1	@ i, i,
	cmp	r6, ip	@ prephitmp.721, i
	bcc	.L112	@,
.L108:
	ldrh	r2, [r3, #12]	@ D.31211, <variable>.SliceMbRange
	ldrh	r1, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.736, ivtmp.736,
	cmp	r2, r5	@ D.31211, total_mbn
	cmple	r1, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L103	@,
	cmp	r2, r1	@ D.31211, curr_slice_end_mbn
	bgt	.L103	@,
	cmp	r2, r8	@ D.31211, old_slice_end_mbn
	add	sl, r7, r7, lsr #31	@, tmp218, old_slice_start_mbn, old_slice_start_mbn,
	sub	r4, r2, #1	@ tmp217, D.31211,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.31211
	mov	r7, r2	@ old_slice_start_mbn, D.31211
	mov	r8, r1	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L105	@,
	cmp	sl, r4	@ tmp218, tmp217
	bge	.L105	@,
	ldr	r6, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r6, asl #2	@, tmp180, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r2, #40]	@ movhi	@ tmp218, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r1, asl #2	@, tmp191, pRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r6, #42]	@ movhi	@ tmp217, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp195, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp195, <variable>.ValidGroupNum
	ldr	r6, [r9, #8]	@ prephitmp.721, <variable>.DecSliceNum
.L105:
	sub	r1, r6, #1	@ temp.741, prephitmp.721,
	cmp	r1, ip	@ temp.741, i
	bne	.L103	@,
	add	r2, r9, ip, asl #2	@, tmp198, pDecReport, i,
	ldr	r1, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31240, <variable>.SliceMbRange
	cmp	r2, r1	@ D.31240,
	bge	.L103	@,
	ldr	r3, [r0, #552]	@ temp.742, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.742,
	bgt	.L113	@,
	add	ip, r0, r3, asl #2	@, tmp204, pRepairParam, temp.742,
	ldr	r3, [fp, #-48]	@, %sfp
	strh	r2, [ip, #40]	@ movhi	@ D.31240, <variable>.StartMbn
	sub	r1, r3, #1	@ tmp212,,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r3, #0	@ D.31205,
	add	r2, r0, ip, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp212, <variable>.EndMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r1, #1	@ tmp214, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp214, <variable>.ValidGroupNum
	b	.L100	@
.L112:
	mov	r3, #0	@ D.31205,
.L100:
	mov	r0, r3	@, D.31205
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L111:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31205,
	b	.L100	@
.L113:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1098	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31205,
	b	.L100	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1364:
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
	mov	r9, r1	@ pDecReport, pDecReport
	ldr	r1, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r1, #1	@ tmp151, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp151,
	bhi	.L127	@,
	ldr	r5, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp154,
	ldr	r4, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r7, #0	@ old_slice_end_mbn,
	str	r6, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	r1, r6	@ i, tmp154
	str	r6, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r9	@ ivtmp.782, pDecReport
	mul	r4, r4, r5	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r5, [r9, #8]	@ prephitmp.767, <variable>.DecSliceNum
	mov	r6, r7	@ old_slice_start_mbn, old_slice_end_mbn
	add	ip, r9, r5, asl #2	@, tmp160, pDecReport, prephitmp.767,
	add	r8, r4, r7	@, total_mbn, tmp6
	str	r8, [fp, #-52]	@, %sfp
	uxth	r8, r4	@, total_mbn
	str	r8, [fp, #-48]	@, %sfp
	strh	r8, [ip, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L124	@
.L119:
	add	r1, r1, #1	@ i, i,
	cmp	r5, r1	@ prephitmp.767, i
	bcc	.L128	@,
.L124:
	ldrh	r2, [r3, #12]	@ D.31145, <variable>.SliceMbRange
	ldrh	ip, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.782, ivtmp.782,
	cmp	r2, r4	@ D.31145, total_mbn
	cmple	ip, r4	@, curr_slice_end_mbn, total_mbn
	bgt	.L119	@,
	cmp	r2, ip	@ D.31145, curr_slice_end_mbn
	bgt	.L119	@,
	cmp	r2, r7	@ D.31145, old_slice_end_mbn
	add	sl, r6, r6, lsr #31	@, tmp217, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp216, D.31145,
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_start_mbn
	add	r7, r7, #1	@ tmp174, old_slice_end_mbn,
	cmp	r7, r2	@ tmp174, D.31145
	mov	r6, r2	@ old_slice_start_mbn, D.31145
	mov	r7, ip	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L121	@,
	cmp	sl, r8	@ tmp217, tmp216
	bge	.L121	@,
	ldr	r2, [r0, #552]	@ D.31163, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.31163,
	add	r2, r0, r2, asl #2	@, tmp180, pRepairParam, D.31163,
	bgt	.L129	@,
	strh	sl, [r2, #40]	@ movhi	@ tmp217, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp191, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	r5, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r5, #1	@ tmp195, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp195, <variable>.ValidGroupNum
	ldr	r5, [r9, #8]	@ prephitmp.767, <variable>.DecSliceNum
.L121:
	sub	r2, r5, #1	@ temp.787, prephitmp.767,
	cmp	r2, r1	@ temp.787, i
	bne	.L119	@,
	add	r2, r9, r1, asl #2	@, tmp198, pDecReport, i,
	ldr	ip, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31177, <variable>.SliceMbRange
	cmp	r2, ip	@ D.31177,
	bge	.L119	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, r0, ip, asl #2	@, tmp203, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r3, #1	@ tmp211,,
	mov	r3, #0	@ D.31139,
	strh	r2, [ip, #40]	@ movhi	@ D.31177, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp209, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp211, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp213, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp213, <variable>.ValidGroupNum
	b	.L116	@
.L128:
	mov	r3, #0	@ D.31139,
.L116:
	mov	r0, r3	@, D.31139
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L127:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31139,
	b	.L116	@
.L129:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1009	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31139,
	b	.L116	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1363:
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
	ldr	r2, [r1, #8]	@ D.31051, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp154, D.31051,
	cmp	r3, #127	@ tmp154,
	bhi	.L145	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r4, #0	@ tmp156,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r4, [r0, #568]	@ tmp156, <variable>.FullRepair
	str	r4, [r0, #552]	@ tmp156, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.821, <variable>.DecSliceNum
	cmp	r6, r4	@ prephitmp.821,
	add	r2, r1, r6, asl #2	@, tmp162, pDecReport, prephitmp.821,
	uxth	r9, r5	@ D.31059, total_mbn
	strh	r9, [r2, #14]	@ movhi	@ D.31059, <variable>.SliceMbRange
	strh	r9, [r2, #12]	@ movhi	@ D.31059, <variable>.SliceMbRange
	bne	.L146	@,
.L133:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	ip, #0	@ i,
	add	r3, r5, sl	@, total_mbn,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	str	r3, [fp, #-48]	@, %sfp
	mov	r3, r1	@ ivtmp.838, pDecReport
	b	.L142	@
.L141:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.31070
.L136:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.838, ivtmp.838,
	cmp	ip, r6	@ i, prephitmp.821
	bhi	.L147	@,
.L142:
	ldrh	r2, [r3, #12]	@ D.31070, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31070, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L136	@,
	cmp	r2, r4	@ D.31070, curr_slice_end_mbn
	movle	r8, #0	@, tmp190
	movgt	r8, #1	@, tmp190
	cmp	r2, r7	@ D.31070, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp193, tmp190
	cmp	r8, #0	@ tmp193,
	bne	.L136	@,
	cmp	r2, sl	@ D.31070, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp194, old_slice_end_mbn,
	cmp	r8, r2	@ tmp194, D.31070
	beq	.L138	@,
	add	r7, r7, r7, lsr #31	@, tmp244, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp245, D.31070,
	cmp	r7, r8	@ tmp244, tmp245
	bge	.L138	@,
	ldr	r6, [r0, #552]	@ D.31091, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.31091,
	bgt	.L148	@,
	add	r6, r0, r6, asl #2	@, tmp200, pRepairParam, D.31091,
	sub	sl, sl, #100	@ tmp246, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp244, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp211, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp245, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.823, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp215, prephitmp.823,
	mov	r7, r8, asl #2	@ tmp216, tmp215,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp246, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp246, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.823, <variable>.ValidGroupNum
	add	r6, r6, #1	@ tmp224, prephitmp.823,
	str	r6, [r0, #552]	@ tmp224, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.821, <variable>.DecSliceNum
.L138:
	sub	r7, r6, #1	@ temp.843, prephitmp.821,
	cmp	r7, ip	@ temp.843, i
	bne	.L141	@,
	add	r8, r1, ip, asl #2	@, tmp227, pDecReport, i,
	ldrh	r7, [r8, #14]	@ temp.844, <variable>.SliceMbRange
	ldr	r8, [fp, #-48]	@, %sfp
	cmp	r7, r8	@ temp.844,
	bge	.L141	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r9, r9, #1	@ tmp240, D.31059,
	mov	r3, #0	@ D.31056,
	add	r2, r0, ip, asl #2	@, tmp232, pRepairParam, <variable>.ValidGroupNum,
	strh	r7, [r2, #40]	@ movhi	@ temp.844, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp238, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp240, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp242, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp242, <variable>.ValidGroupNum
	b	.L132	@
.L147:
	mov	r3, #0	@ D.31056,
.L132:
	mov	r0, r3	@, D.31056
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L146:
	add	sl, r2, #6	@ tmp172, tmp171,
	sub	r7, r5, #10	@ tmp174, total_mbn,
	ldrh	ip, [sl, #4]	@ tmp173, <variable>.SliceMbRange
	cmp	ip, r7	@ tmp173, tmp174
	subge	r7, r9, #1	@ tmp179, D.31059,
	strgeh	r7, [sl, #4]	@ movhi	@ tmp179, <variable>.SliceMbRange
	b	.L133	@
.L145:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31056,
	b	.L132	@
.L148:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #924	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31056,
	b	.L132	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #548
	sub	sp, sp, #548	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #8]	@, <variable>.DecSliceNum
	mov	r5, r1	@ pDecReport, pDecReport
	sub	r3, r0, #1	@ tmp193,,
	cmp	r3, #127	@ tmp193,
	str	r0, [fp, #-568]	@, %sfp
	bhi	.L193	@,
	ldr	sl, [r4, #24]	@ D.30920, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.30920
	uxtheq	r9, r6	@ prephitmp.880, total_mbn
	bne	.L194	@,
.L153:
	mov	r1, #0	@ tmp391,
	str	r1, [r4, #552]	@ tmp391, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp391, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.875, <variable>.DecSliceNum
	add	r7, r6, r8	@, total_mbn,
	mov	r3, r5	@ ivtmp.900, pDecReport
	str	r7, [fp, #-560]	@, %sfp
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r0, r5, ip, asl #2	@, tmp395, pDecReport, prephitmp.875,
	strh	r9, [r0, #14]	@ movhi	@ prephitmp.880, <variable>.SliceMbRange
	strh	r9, [r0, #12]	@ movhi	@ prephitmp.880, <variable>.SliceMbRange
	b	.L172	@
.L171:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.975
.L166:
	add	r1, r1, #1	@ i.978, i.978,
	add	r3, r3, #4	@ ivtmp.900, ivtmp.900,
	cmp	ip, r1	@ prephitmp.875, i.978
	bcc	.L195	@,
.L172:
	ldrh	r2, [r3, #12]	@ temp.975, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.975, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L166	@,
	cmp	r2, r0	@ temp.975, curr_slice_end_mbn
	bgt	.L166	@,
	cmp	r8, r2	@ old_slice_end_mbn, temp.975
	movgt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp409, old_slice_end_mbn,
	cmp	r2, sl	@ temp.975, tmp409
	ble	.L168	@,
	ldr	sl, [r4, #552]	@ D.31006, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.31006,
	bgt	.L196	@,
	add	sl, r4, sl, asl #2	@, tmp412, pRepairParam, D.31006,
	add	r7, r7, r7, lsr #31	@, tmp418, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp425, temp.975,
	sub	r8, r8, #100	@ tmp469, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp418, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp423, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp425, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.877, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp427, prephitmp.877,
	mov	r7, sl, asl #2	@ tmp428, tmp427,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp469, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp469, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.877, <variable>.ValidGroupNum
	add	r8, ip, #1	@ tmp436, prephitmp.877,
	str	r8, [r4, #552]	@ tmp436, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.875, <variable>.DecSliceNum
.L168:
	sub	r8, ip, #1	@ temp.979, prephitmp.875,
	cmp	r8, r1	@ temp.979, i.978
	bne	.L171	@,
	add	r7, r5, r1, asl #2	@, tmp439, pDecReport, i.978,
	ldr	r8, [fp, #-560]	@, %sfp
	ldrh	r7, [r7, #14]	@ D.31028, <variable>.SliceMbRange
	cmp	r7, r8	@ D.31028,
	bge	.L171	@,
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r9, r9, #1	@ tmp452, prephitmp.880,
	mov	r0, #0	@ D.30919,
	add	r1, r4, r3, asl #2	@, tmp444, pRepairParam, <variable>.ValidGroupNum,
	strh	r7, [r1, #40]	@ movhi	@ D.31028, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp450, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [r2, #42]	@ movhi	@ tmp452, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp454, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp454, <variable>.ValidGroupNum
	b	.L151	@
.L195:
	mov	r0, #0	@ D.30919,
.L151:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L194:
	ldrh	r8, [r5, #12]	@, <variable>.SliceMbRange
	sub	r2, fp, #556	@ ivtmp.919,,
	ldr	lr, [fp, #-568]	@, %sfp
	add	r3, r2, #4	@ ivtmp.919, ivtmp.919,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.30920,
	strh	r8, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, lr, asl #2	@, D.32073, ivtmp.919,,
	ldrh	ip, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r9, r2, r0	@ tmp473, ivtmp.919, D.32073
	cmp	r3, r0	@ ivtmp.919, D.32073
	sub	r1, r9, #4	@ tmp474, tmp473,
	strh	ip, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp475, tmp474,,
	add	r2, r5, #4	@ ivtmp.918, pDecReport,
	beq	.L183	@,
	cmp	r1, #0	@ tmp475,
	beq	.L154	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.918, ivtmp.918,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.919, ivtmp.919,
	cmp	r3, r0	@ ivtmp.919, D.32073
	beq	.L183	@,
.L154:
	ldrh	lr, [r2, #12]	@, <variable>.SliceMbRange
	add	r1, r2, #4	@ tmp477, ivtmp.918,
	strh	lr, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r9, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp476, ivtmp.919,
	strh	r9, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r8, [r1, #12]	@, <variable>.SliceMbRange
	strh	r8, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.919, tmp476,
	ldrh	ip, [r1, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.919, D.32073
	strh	ip, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, r1, #4	@ ivtmp.918, tmp477,
	bne	.L154	@,
.L183:
	sub	r9, fp, #44	@,,
	movw	r8, #:lower16:-512	@ tmp204,
	movw	r3, #:lower16:-510	@ tmp208,
	movt	r8, #:upper16:-512	@ tmp204,
	movt	r3, #:upper16:-510	@ tmp208,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	lr, [r9, r8]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	mov	r2, r9	@,
	ldrh	ip, [r9, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	r0, #:lower16:65534	@ prephitmp.882,
	movt	r0, #:upper16:65534	@ prephitmp.882,
	moveq	r7, sl	@ j, DoubleImageWidth
	and	r0, lr, r0	@ prephitmp.882, SliceMbRange_Tmp, prephitmp.882
	strh	r0, [r9, r8]	@ movhi	@ prephitmp.882, SliceMbRange_Tmp
	orr	r9, ip, #1	@ D.30931, SliceMbRange_Tmp,
	strh	r9, [r2, r3]	@ movhi	@ D.30931, SliceMbRange_Tmp
	beq	.L156	@,
	mov	r7, #0	@ j,
	sub	r1, sl, #2	@, DoubleImageWidth,
	uxth	r3, sl	@, DoubleImageWidth
	str	r6, [fp, #-580]	@ total_mbn, %sfp
	sub	r8, fp, #552	@ ivtmp.906,,
	str	r1, [fp, #-572]	@, %sfp
	str	r3, [fp, #-576]	@, %sfp
	mov	r6, r0	@ prephitmp.882, prephitmp.882
	str	r7, [fp, #-560]	@ j, %sfp
	b	.L174	@
.L198:
	mov	r0, r6	@, prephitmp.882
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [fp, #-584]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	r6, r0	@ tmp228,
	mov	r0, r9	@, D.30931
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-564]	@, %sfp
	ldr	r9, [fp, #-584]	@,
	mov	r1, r2, lsr #1	@ mbsurplus0,,
	mov	r3, r9, lsr #1	@ mbsurplus1, tmp224,
	cmp	r0, r6	@ tmp231, tmp228
	beq	.L159	@,
	ldr	r2, [fp, #-576]	@, %sfp
	add	r9, r5, r7, asl #2	@, tmp239, pDecReport, j,
	mov	lr, r9	@ tmp243, tmp239
	mul	r6, r6, r2	@ tmp233, tmp228,
	add	r2, r7, #1	@ j.926, j,
	cmp	r2, #127	@ j.926,
	uxth	r6, r6	@ D.30947, tmp233
	add	r1, r6, r1	@ tmp235, D.30947, mbsurplus0
	uxth	r1, r1	@ D.30949, tmp235
	strh	r1, [r9, #12]	@ movhi	@ D.30949, <variable>.SliceMbRange
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, ip, #1	@ tmp247, <variable>.ImageWidth,
	add	ip, r6, r9	@ tmp249, D.30947, tmp247
	strh	ip, [lr, #14]	@ movhi	@ tmp249, <variable>.SliceMbRange
	bhi	.L189	@,
	ldr	lr, [fp, #-576]	@, %sfp
	add	ip, r2, #1	@ j.929, j.926,
	ldr	r6, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r9, r5, r2, asl #2	@, tmp262, pDecReport, j.926,
	cmp	ip, #128	@ j.929,
	uxth	r3, r3	@ D.30958, mbsurplus1
	mul	r0, r0, lr	@ tmp259, tmp231,
	add	lr, r5, r7, asl #2	@, tmp253, pDecReport, j,
	add	r1, r1, r6	@ tmp257, D.30949, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp257, <variable>.SliceMbRange
	uxth	r0, r0	@ D.30957, tmp259
	add	r7, r3, r0	@ tmp264, D.30958, D.30957
	strh	r7, [r9, #14]	@ movhi	@ tmp264, <variable>.SliceMbRange
	beq	.L189	@,
	ldr	r6, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.929,
	cmp	r7, #128	@ j,
	add	ip, r5, ip, asl #2	@, tmp275, pDecReport, j.929,
	add	r1, r0, r6	@ tmp267, D.30957, <variable>.ImageWidth
	uxth	r9, r1	@ D.30962, tmp267
	strh	r9, [lr, #20]	@ movhi	@ D.30962, <variable>.SliceMbRange
	add	r3, r9, r3	@ tmp277, D.30962, D.30958
	strh	r3, [ip, #14]	@ movhi	@ tmp277, <variable>.SliceMbRange
	beq	.L189	@,
.L161:
	ldr	r6, [fp, #-560]	@, %sfp
	add	r8, r8, #4	@ ivtmp.906, ivtmp.906,
	ldr	lr, [fp, #-568]	@, %sfp
	add	r3, r6, #1	@,,
	str	r3, [fp, #-560]	@, %sfp
	cmp	lr, r3	@,
	bls	.L197	@,
.L163:
	ldrh	r6, [r8, #-4]	@ tmp461, SliceMbRange_Tmp
	ldrh	r9, [r8, #-2]	@ tmp464, SliceMbRange_Tmp
	bic	r6, r6, #1	@ tmp462, tmp461,
	strh	r6, [r8, #-4]	@ movhi	@ tmp462, SliceMbRange_Tmp
	orr	r9, r9, #1	@ D.30931, tmp464,
	strh	r9, [r8, #-2]	@ movhi	@ D.30931, SliceMbRange_Tmp
.L174:
	mov	r0, r6	@, prephitmp.882
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [fp, #-564]	@, %sfp
	bls	.L157	@,
	mov	r0, r9	@, D.30931
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [fp, #-572]	@, %sfp
	cmp	ip, r1	@, tmp224
	mov	r3, r1	@ tmp224,
	bhi	.L198	@,
	mov	r0, r6	@, prephitmp.882
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	r1, r5, r7, asl #2	@, tmp322, pDecReport, j,
	add	r3, r7, #1	@ j.955, j,
	ldr	r7, [fp, #-564]	@, %sfp
	mov	r2, r1	@ tmp326, tmp322
	cmp	r3, #127	@ j.955,
	mul	r0, sl, r0	@ tmp315, DoubleImageWidth,
	uxth	r6, r0	@ temp.948, tmp315
	add	ip, r6, r7, lsr #1	@, tmp318, temp.948,,
	uxth	ip, ip	@ temp.950, tmp318
	strh	ip, [r1, #12]	@ movhi	@ temp.950, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	lr, r1, #1	@ tmp330, <variable>.ImageWidth,
	add	r7, r6, lr	@ tmp332, temp.948, tmp330
	strh	r7, [r2, #14]	@ movhi	@ tmp332, <variable>.SliceMbRange
	bhi	.L189	@,
	add	r7, r3, #1	@ j, j.955,
	ldr	r6, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp343, pDecReport, j.955,
	cmp	r7, #128	@ j,
	add	lr, ip, r6	@ tmp340, temp.950, <variable>.ImageWidth
	strh	lr, [r2, #16]	@ movhi	@ tmp340, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.30931, <variable>.SliceMbRange
	bne	.L161	@,
.L189:
	ldr	r6, [fp, #-580]	@ total_mbn, %sfp
	mov	r8, #0	@ movhi	@,
	mov	r0, #1	@ tmp456,
	strh	r8, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r0, [r5, #8]	@ tmp456, <variable>.DecSliceNum
	uxth	r9, r6	@ prephitmp.880, total_mbn
	sub	lr, r9, #1	@ tmp459, prephitmp.880,
	strh	lr, [r5, #14]	@ movhi	@ tmp459, <variable>.SliceMbRange
.L173:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L153	@
.L157:
	mov	r0, r9	@, D.30931
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	mov	r2, r1	@ tmp349,
	ldr	r1, [fp, #-572]	@, %sfp
	cmp	r1, r2	@, tmp349
	bls	.L162	@,
	add	r3, r5, r7, asl #2	@, tmp354, pDecReport, j,
	mov	r0, r9	@, D.30931
	mov	r1, sl	@, DoubleImageWidth
	strh	r6, [r3, #12]	@ movhi	@ prephitmp.882, <variable>.SliceMbRange
	str	r2, [fp, #-584]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-584]	@,
	add	r3, r7, #1	@ j.969, j,
	add	r1, r5, r7, asl #2	@, tmp366, pDecReport, j,
	cmp	r3, #127	@ j.969,
	ubfx	r2, r2, #1, #16	@ temp.967, tmp349,,
	mul	ip, sl, r0	@ tmp362, DoubleImageWidth,
	uxth	r0, ip	@ temp.966, tmp362
	add	r9, r2, r0	@ tmp368, temp.967, temp.966
	strh	r9, [r1, #14]	@ movhi	@ tmp368, <variable>.SliceMbRange
	bhi	.L189	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.969,
	add	r6, r5, r3, asl #2	@, tmp379, pDecReport, j.969,
	cmp	r7, #128	@ j,
	add	r9, r0, ip	@ tmp371, temp.966, <variable>.ImageWidth
	uxth	r0, r9	@ temp.972, tmp371
	strh	r0, [r1, #16]	@ movhi	@ temp.972, <variable>.SliceMbRange
	add	lr, r0, r2	@ tmp381, temp.972, temp.967
	strh	lr, [r6, #14]	@ movhi	@ tmp381, <variable>.SliceMbRange
	beq	.L189	@,
	ldr	r6, [fp, #-560]	@, %sfp
	add	r8, r8, #4	@ ivtmp.906, ivtmp.906,
	ldr	lr, [fp, #-568]	@, %sfp
	add	r3, r6, #1	@,,
	str	r3, [fp, #-560]	@, %sfp
	cmp	lr, r3	@,
	bhi	.L163	@,
.L197:
	ldr	r6, [fp, #-580]	@ total_mbn, %sfp
.L156:
	uxth	r9, r6	@ prephitmp.880, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L173	@
.L162:
	add	r2, r5, r7, asl #2	@, tmp385, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	r6, [r2, #12]	@ movhi	@ prephitmp.882, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.30931, <variable>.SliceMbRange
	bls	.L161	@,
	b	.L189	@
.L159:
	mul	r9, sl, r0	@ tmp280, DoubleImageWidth, tmp231
	add	r2, r7, #1	@ j.938, j,
	add	ip, r5, r7, asl #2	@, tmp286, pDecReport, j,
	cmp	r2, #127	@ j.938,
	uxth	r0, r9	@ temp.934, tmp280
	add	r3, r0, r3	@ tmp289, temp.934, mbsurplus1
	add	r7, r0, r1	@ tmp282, temp.934, mbsurplus0
	uxth	r3, r3	@ D.30968, tmp289
	uxth	r1, r7	@ temp.936, tmp282
	strh	r3, [ip, #14]	@ movhi	@ D.30968, <variable>.SliceMbRange
	strh	r1, [ip, #12]	@ movhi	@ temp.936, <variable>.SliceMbRange
	bhi	.L189	@,
	mov	r0, ip	@ tmp297, tmp292
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.938,
	add	lr, r5, r2, asl #2	@, tmp304, pDecReport, j.938,
	add	r9, r1, ip	@ tmp301, temp.936, <variable>.ImageWidth
	cmp	r7, #128	@ j,
	strh	r9, [r0, #16]	@ movhi	@ tmp301, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r6, r3, r1	@ tmp308, D.30968, <variable>.ImageWidth
	strh	r6, [lr, #14]	@ movhi	@ tmp308, <variable>.SliceMbRange
	bne	.L161	@,
	b	.L189	@
.L193:
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30919,
	b	.L151	@
.L196:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #827	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30919,
	b	.L151	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1361:
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
	mov	r9, r3	@ pDecReport, pDecReport
	mov	r7, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp218,
	mov	r4, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #1124]	@ tmp218, <variable>.ValidGroupNum
	add	r8, r1, #572	@ D.30580, pRepairParam,
	str	r3, [r1, #552]	@ tmp218, <variable>.ValidGroupNum
	cmp	r0, #15	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L200	@
.L212:
	.word	.L201
	.word	.L202
	.word	.L203
	.word	.L204
	.word	.L200
	.word	.L205
	.word	.L206
	.word	.L200
	.word	.L207
	.word	.L208
	.word	.L209
	.word	.L209
	.word	.L209
	.word	.L210
	.word	.L200
	.word	.L211
.L211:
	ldr	r0, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	lr, r2, r0, asl #2	@, tmp264, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r2, [lr, #308]	@ tmp266, <variable>.ImgPhyAddr
	str	r2, [r1, #4]	@ tmp266, <variable>.ImageAddr
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r7, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [r3, #1640]	@ mvc_ref_img_idc, <variable>.img_idc
	add	ip, r4, r1, asl #2	@, tmp272, pDecParam, mvc_ref_img_idc,
	ldr	sl, [ip, #308]	@ tmp274, <variable>.ImgPhyAddr
	str	sl, [r7, #16]	@ tmp274, <variable>.RefImageAddr
	ldr	r0, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	lr, r0, #206	@ tmp275, <variable>.CurrPicPmvIdc,
	ldr	r2, [r4, lr, asl #2]	@ tmp277, <variable>.PmvPhyAddr
	str	r2, [r7, #20]	@ tmp277, <variable>.CurrPmvAddr
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	ip, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	ip, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	sl, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r0, sl, #1	@ tmp281, <variable>.pic_structure
	movcc	r0, #0	@ tmp281
	str	r0, [r7, #32]	@ tmp281, <variable>.IsFrame
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r2, lr, #1	@ tmp283, <variable>.chroma_format_idc
	movcc	r2, #0	@ tmp283
	str	r2, [r7, #36]	@ tmp283, <variable>.ImageCSP
	ldr	lr, [r4, #1116]	@ D.30666, <variable>.ApcSize
	cmp	lr, #0	@ D.30666,
	beq	.L232	@,
	ldr	r3, [r4, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, mvc_ref_img_idc
	moveq	r3, #0	@ i.1062,
	beq	.L234	@,
	tst	lr, #1	@ D.30666,
	mov	r2, r4	@ ivtmp.1058, pDecParam
	mov	r3, #0	@ i.1062,
	bne	.L235	@,
	ldr	r0, [r4, #1324]	@ D.30661, <variable>.RefPicFsId
	mov	r3, #1	@ i.1062,
	add	r2, r4, #4	@ ivtmp.1058, pDecParam,
	cmp	r0, r1	@ D.30661, mvc_ref_img_idc
	bne	.L235	@,
.L234:
	add	r1, r3, #312	@ tmp285, i.1062,
	add	r3, r1, #2	@ tmp285, tmp285,
	ldr	ip, [r4, r3, asl #2]	@ tmp287, <variable>.RefPicType
	str	ip, [r7, #556]	@ tmp287, <variable>.rpr_ref_pic_type
.L232:
	ldr	r2, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	bne	.L316	@,
.L238:
	ldrsb	lr, [r4, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	lr, #0	@ <variable>.NewPicFlag,
	streq	lr, [r9, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L317	@,
.L240:
	ldr	r2, [r7, #4]	@ temp.1064, <variable>.ImageAddr
	ldr	r0, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, r0	@ temp.1064, <variable>.RefImageAddr
	bne	.L241	@,
	ldr	ip, [r4, #820]	@ D.30683, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.30683,
	beq	.L241	@,
	ldr	r3, [r4, #308]	@ D.30679, <variable>.ImgPhyAddr
	cmp	r2, r3	@ temp.1064, D.30679
	bne	.L242	@,
	tst	ip, #1	@ D.30683,
	mov	r1, r4	@ ivtmp.1053, pDecParam
	mov	r0, #0	@ i.1066,
	bne	.L244	@,
	ldr	r3, [r4, #312]	@ D.30679, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1066,
	add	r1, r4, #4	@ ivtmp.1053, pDecParam,
	cmp	r3, r2	@ D.30679, temp.1064
	beq	.L244	@,
	b	.L242	@
.L299:
	ldr	r3, [lr, #312]	@ D.30679, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.30679, temp.1064
	bne	.L242	@,
.L244:
	add	sl, r0, #1	@ tmp483, i.1066,
	add	lr, r1, #4	@ tmp482, ivtmp.1053,
	cmp	ip, sl	@ D.30683, tmp483
	add	r0, sl, #1	@ i.1066, tmp483,
	bls	.L241	@,
	ldr	r3, [r1, #312]	@ D.30679, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1053, tmp482,
	cmp	r3, r2	@ D.30679, temp.1064
	beq	.L299	@,
.L242:
	str	r3, [r7, #16]	@ D.30679, <variable>.RefImageAddr
	b	.L241	@
.L236:
	ldr	sl, [r2, #1324]	@ D.30661, <variable>.RefPicFsId
	add	r2, r0, #4	@ ivtmp.1058, tmp487,
	cmp	sl, r1	@ D.30661, mvc_ref_img_idc
	beq	.L234	@,
	ldr	sl, [r0, #1324]	@ D.30661, <variable>.RefPicFsId
	add	r3, r3, #1	@ i.1062, i.1062,
	cmp	sl, r1	@ D.30661, mvc_ref_img_idc
	beq	.L234	@,
.L235:
	add	r3, r3, #1	@ i.1062, i.1062,
	add	r0, r2, #4	@ tmp487, ivtmp.1058,
	cmp	lr, r3	@ D.30666, i.1062
	bhi	.L236	@,
	b	.L232	@
.L200:
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
.L231:
	ldr	r3, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r1, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	sl, r0, r1	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L259	@,
	mov	r5, #0	@ err_mbs,
	mov	r4, r7	@ ivtmp.1037, pRepairParam
	mov	r6, r5	@ i.1069, err_mbs
.L260:
	ldrsh	r2, [r4, #42]	@, <variable>.EndMbn
	mov	r0, #22	@,
	ldrsh	r3, [r4, #40]	@, <variable>.StartMbn
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	r6, r6, #1	@ i.1069, i.1069,
	bl	dprint_vfmw	@
	ldrsh	r3, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r1, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldrsh	r2, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r0, r3, #1	@ tmp444, <variable>.EndMbn,
	cmp	r1, r6	@ <variable>.ValidGroupNum, i.1069
	add	r4, r4, #4	@ ivtmp.1037, ivtmp.1037,
	rsb	ip, r2, r0	@ tmp446, <variable>.StartMbn, tmp444
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp446
	bgt	.L260	@,
.L259:
	ldr	lr, [r7, #1124]	@ D.30872, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.30872,
	ble	.L261	@,
	ldrsh	ip, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1075,
	ldrsh	r1, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1075, D.30872
	add	r0, ip, r2	@ tmp449, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp464, D.30872,
	rsb	ip, r1, r0	@ tmp451, <variable>.StartMbn, tmp449
	and	r3, r3, r2	@ tmp466, tmp464,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp451
	add	r8, r8, #4	@ ivtmp.1031, D.30580,
	beq	.L261	@,
	cmp	r3, #0	@ tmp466,
	beq	.L262	@,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1075,
	ldrsh	ip, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1075, D.30872
	add	r1, r0, #1	@ tmp509, <variable>.EndMbn,
	add	r8, r8, #4	@ ivtmp.1031, ivtmp.1031,
	rsb	r3, ip, r1	@ tmp511, <variable>.StartMbn, tmp509
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp511
	beq	.L261	@,
.L262:
	add	r3, r8, #4	@ tmp468, ivtmp.1031,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1075, i.1075,
	ldrsh	r8, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp498, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp500, <variable>.StartMbn, tmp498
	cmp	r2, lr	@ i.1075, D.30872
	add	r1, r8, #1	@ tmp505, <variable>.EndMbn,
	rsb	r1, r0, r1	@ tmp507, <variable>.StartMbn, tmp505
	add	r8, r5, ip	@ err_mbs, err_mbs, tmp500
	add	r5, r8, r1	@ err_mbs, err_mbs, tmp507
	add	r8, r3, #4	@ ivtmp.1031, tmp468,
	bne	.L262	@,
.L261:
	cmp	sl, #0	@ total_mbs,
	moveq	r4, sl	@ err_ratio, total_mbs
	beq	.L264	@,
	mov	r4, #100	@ tmp453,
	mov	r1, sl	@, total_mbs
	mul	r0, r4, r5	@, tmp453, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1087,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio.1087
.L264:
	mov	lr, #0	@ tmp457,
	mov	r2, sl	@, total_mbs
	mov	r3, r5	@, err_mbs
	str	lr, [r9, #8]	@ tmp457, <variable>.DecSliceNum
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L201:
	ldr	sl, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r2, r2, sl, asl #2	@, tmp224, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r0, [r2, #308]	@ tmp226, <variable>.ImgPhyAddr
	str	r0, [r1, #4]	@ tmp226, <variable>.ImageAddr
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r7, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, <variable>.img_idc
	add	lr, r4, r1, asl #2	@, tmp232, pDecParam, ref_img_idc,
	ldr	ip, [lr, #308]	@ tmp234, <variable>.ImgPhyAddr
	str	ip, [r7, #16]	@ tmp234, <variable>.RefImageAddr
	ldr	sl, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	r2, sl, #206	@ tmp235, <variable>.CurrPicPmvIdc,
	ldr	r0, [r4, r2, asl #2]	@ tmp237, <variable>.PmvPhyAddr
	str	r0, [r7, #20]	@ tmp237, <variable>.CurrPmvAddr
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	lr, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	sl, ip, #1	@ tmp241, <variable>.pic_structure
	movcc	sl, #0	@ tmp241
	str	sl, [r7, #32]	@ tmp241, <variable>.IsFrame
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r0, r2, #1	@ tmp243, <variable>.chroma_format_idc
	movcc	r0, #0	@ tmp243
	str	r0, [r7, #36]	@ tmp243, <variable>.ImageCSP
	ldr	lr, [r4, #1116]	@ D.30608, <variable>.ApcSize
	cmp	lr, #0	@ D.30608,
	beq	.L213	@,
	ldr	r3, [r4, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, ref_img_idc
	moveq	r3, #0	@ i,
	beq	.L215	@,
	tst	lr, #1	@ D.30608,
	mov	r2, r4	@ ivtmp.1048, pDecParam
	mov	r3, #0	@ i,
	bne	.L216	@,
	ldr	sl, [r4, #1324]	@ D.30602, <variable>.RefPicFsId
	mov	r3, #1	@ i,
	add	r2, r4, #4	@ ivtmp.1048, pDecParam,
	cmp	sl, r1	@ D.30602, ref_img_idc
	bne	.L216	@,
.L215:
	add	r1, r3, #312	@ tmp245, i,
	add	r3, r1, #2	@ tmp245, tmp245,
	ldr	lr, [r4, r3, asl #2]	@ tmp247, <variable>.RefPicType
	str	lr, [r7, #556]	@ tmp247, <variable>.rpr_ref_pic_type
.L213:
	ldr	r2, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	bne	.L318	@,
.L219:
	ldrsb	sl, [r4, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	sl, #0	@ <variable>.NewPicFlag,
	streq	sl, [r9, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L319	@,
.L221:
	ldr	r2, [r7, #4]	@ D.30619, <variable>.ImageAddr
	ldr	ip, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, ip	@ D.30619, <variable>.RefImageAddr
	beq	.L320	@,
.L241:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ temp.1067, <variable>.pic_structure
	cmp	r3, #0	@ temp.1067,
	beq	.L308	@,
	cmp	r3, #1	@ temp.1067,
	beq	.L308	@,
	cmp	r3, #2	@ temp.1067,
	beq	.L308	@,
	cmp	r3, #3	@ temp.1067,
	bne	.L247	@,
	mov	r3, #0	@ tmp298,
.L308:
	str	r3, [r7, #564]	@ tmp298, <variable>.Pic_type
.L247:
	ldr	ip, [r4, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	str	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L231	@
.L217:
	ldr	ip, [r2, #1324]	@ D.30602, <variable>.RefPicFsId
	add	r2, r0, #4	@ ivtmp.1048, tmp477,
	cmp	ip, r1	@ D.30602, ref_img_idc
	beq	.L215	@,
	ldr	ip, [r0, #1324]	@ D.30602, <variable>.RefPicFsId
	add	r3, r3, #1	@ i, i,
	cmp	ip, r1	@ D.30602, ref_img_idc
	beq	.L215	@,
.L216:
	add	r3, r3, #1	@ i, i,
	add	r0, r2, #4	@ tmp477, ivtmp.1048,
	cmp	lr, r3	@ D.30608, i
	bhi	.L217	@,
	b	.L213	@
.L202:
	movw	r5, #:lower16:78036	@ tmp389,
	movt	r5, #:upper16:78036	@ tmp389,
	movw	r3, #12384	@ tmp391,
	movw	ip, #12388	@ tmp393,
	ldr	sl, [r2, r5]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	mov	r5, #0	@ tmp406,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	movw	sl, #12396	@ tmp395,
	ldr	lr, [r2, r3]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	lr, [r7, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	ldr	r2, [r2, ip]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	r3, [r4, sl]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r3, [r7, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r4, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	ip, lr, #1	@ tmp398, <variable>.mbwidth,
	str	ip, [r7, #24]	@ tmp398, <variable>.ImageWidth
	ldrh	r2, [r4, #80]	@ <variable>.mbheight, <variable>.mbheight
	add	sl, r2, #1	@ tmp400, <variable>.mbheight,
	str	sl, [r7, #28]	@ tmp400, <variable>.ImageHeight
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ D.30814, <variable>.fcm
	str	r5, [r7, #36]	@ tmp406, <variable>.ImageCSP
	cmp	r3, r5	@ D.30814,
	cmpne	r3, #2	@, D.30814,
	movne	lr, #0	@, tmp405
	moveq	lr, #1	@, tmp405
	str	lr, [r7, #32]	@ tmp405, <variable>.IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	ip, [r7, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@ <variable>.ref_pic_type, <variable>.ref_pic_type
	cmp	ip, #1	@ <variable>.IsFrame,
	streq	r5, [r7, #564]	@ tmp406, <variable>.Pic_type
	and	r0, r1, #3	@ tmp408, <variable>.ref_pic_type,
	str	r0, [r7, #556]	@ tmp408, <variable>.rpr_ref_pic_type
	beq	.L256	@,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	cmp	r0, #3	@ <variable>.fcm,
	beq	.L321	@,
.L256:
	movw	ip, #:lower16:78068	@ tmp414,
	movt	ip, #:upper16:78068	@ tmp414,
	ldr	r2, [r4, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L231	@
.L203:
	ldr	r1, [r2, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	movw	sl, #14588	@ tmp315,
	mov	r3, #0	@ tmp322,
	mov	r0, r7	@, pRepairParam
	str	r1, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r1, r9	@, pDecReport
	ldr	lr, [r2, sl]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	lr, [r7, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	mov	lr, #1	@ tmp321,
	ldr	r2, [r2, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	ip, [r7, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	add	ip, r3, #14656	@ tmp324, tmp324,
	ldrh	sl, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	sl, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r2, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	lr, [r7, #32]	@ tmp321, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp322, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp322, <variable>.ImageCSP
	ldr	sl, [r4, ip]	@ <variable>.Compress_en,
	str	sl, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L231	@
.L207:
	ldr	ip, [r2, #56]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp366,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	ip, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp365,
	ldr	r2, [r2, #52]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r4, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	r3, #11344	@ tmp368,
	ldr	sl, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	sl, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r7, #32]	@ tmp365, <variable>.IsFrame
	str	lr, [r7, #564]	@ tmp366, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r7, #36]	@ tmp366, <variable>.ImageCSP
	ldr	sl, [r4, r3]	@ <variable>.Compress_en,
	str	sl, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L231	@
.L208:
	ldr	ip, [r2, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r3, #0	@ tmp376,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	ip, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp375,
	ldr	r2, [r2, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	sl, [r4, #68]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	sl, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	sl, #11340	@ tmp378,
	ldr	lr, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r7, #32]	@ tmp375, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp376, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp376, <variable>.ImageCSP
	ldr	lr, [r4, sl]	@ <variable>.Compress_en,
	str	lr, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L231	@
.L209:
	ldr	sl, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r5, #0	@ tmp423,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	mov	sl, #1	@ tmp422,
	ldr	lr, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	lr, [r7, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r2, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	ip, [r2, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	ip, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r2, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r2, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	lr, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	sl, [r7, #32]	@ tmp422, <variable>.IsFrame
	str	r5, [r7, #36]	@ tmp423, <variable>.ImageCSP
	str	lr, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r5, [r7, #564]	@ tmp423, <variable>.Pic_type
	str	r5, [r7, #556]	@ tmp423, <variable>.rpr_ref_pic_type
	ldr	r3, [r4, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L231	@
.L210:
	ldr	sl, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r3, #0	@ tmp434,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.image_curr_rcn_addr, <variable>.ImageAddr
	ldr	ip, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	str	ip, [r7, #8]	@ <variable>.image_curr_rcn_addr, <variable>.Image2DAddr
	mov	ip, #1	@ tmp433,
	ldr	lr, [r2, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	lr, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r2, #3132]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	str	r2, [r7, #20]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	ldr	sl, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	sl, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	ip, [r7, #32]	@ tmp433, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp434, <variable>.Pic_type
	str	lr, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp434, <variable>.ImageCSP
	ldr	r2, [r4, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetVp8MbGroup	@
	b	.L231	@
.L205:
	ldr	r2, [r2, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp386,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r2, #1	@ tmp385,
	ldr	sl, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	sl, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r4, #144]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	ldr	ip, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	sl, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r7, #32]	@ tmp385, <variable>.IsFrame
	str	lr, [r7, #564]	@ tmp386, <variable>.Pic_type
	str	sl, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r7, #36]	@ tmp386, <variable>.ImageCSP
	ldr	r3, [r4, #152]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L231	@
.L206:
	movw	ip, #14440	@ tmp326,
	add	r3, ip, #12	@ tmp327, tmp327,
	ldr	lr, [r2, ip]	@ D.30732, <variable>.CurPicAddr
	mov	r2, #0	@ tmp337,
	str	lr, [r1, #4]	@ D.30732, <variable>.ImageAddr
	ldr	r5, [r4, r3]	@ <variable>.rcn_address, <variable>.rcn_address
	str	r5, [r1, #8]	@ <variable>.rcn_address, <variable>.Image2DAddr
	movw	r1, #14432	@ tmp329,
	ldr	r5, [r4, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	add	r6, r1, #12	@ tmp331, tmp331,
	str	r5, [r7, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	ldr	r1, [r4, r6]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r1, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	ip, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	r6, r3, lsr #1	@ tmp348, <variable>.PicHeightInMb,
	ldrb	r0, [r4, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	str	r2, [r7, #36]	@ tmp337, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp336
	moveq	r0, #1	@, tmp336
	str	r0, [r7, #32]	@ tmp336, <variable>.IsFrame
	ldr	sl, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r5, [r8, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	add	lr, sl, lr	@ tmp339, <variable>.ImgStride, D.30732
	str	lr, [r8, #4]	@ tmp339, <variable>.ImageAddr
	ldr	lr, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	ip, [r8, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	mov	ip, #9	@ tmp343,
	str	r3, [r8, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mul	r3, ip, lr	@ tmp341, tmp343, <variable>.ImgStride
	str	r0, [r8, #32]	@ tmp336, <variable>.IsFrame
	str	r2, [r8, #36]	@ tmp337, <variable>.ImageCSP
	mla	r0, r6, r3, r1	@ tmp351, tmp348, tmp341, <variable>.CurPmvAddr
	str	r0, [r8, #20]	@ tmp351, <variable>.CurrPmvAddr
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ temp.1073, <variable>.PicStruct
	cmp	r3, #3	@ temp.1073,
	streq	r2, [r7, #564]	@ tmp337, <variable>.Pic_type
	beq	.L254	@,
	cmp	r3, #1	@ temp.1073,
	streq	r3, [r7, #564]	@ temp.1073, <variable>.Pic_type
.L254:
	movw	lr, #14864	@ tmp358,
	mov	r0, r7	@, pRepairParam
	ldr	r2, [r4, lr]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L231	@
.L204:
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r2, #0	@ tmp308,
	str	r1, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	r3, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r3, [r7, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	ip, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	ip, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	sl, [r4, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	sl, [r7, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	r0, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r0, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	lr, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	lr, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r2, [r7, #36]	@ tmp308, <variable>.ImageCSP
	cmp	r1, #3	@ <variable>.PictureStructure,
	movne	r3, #0	@, tmp307
	moveq	r3, #1	@, tmp307
	str	r3, [r7, #32]	@ tmp307, <variable>.IsFrame
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.1068, <variable>.PictureStructure
	cmp	r3, #1	@ temp.1068,
	beq	.L309	@,
	cmp	r3, #2	@ temp.1068,
	beq	.L309	@,
	cmp	r3, #3	@ temp.1068,
	streq	r2, [r7, #564]	@ tmp308, <variable>.Pic_type
.L251:
	mov	lr, #45312	@ tmp312,
	mov	r0, r7	@, pRepairParam
	ldr	r2, [r4, lr]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L231	@
.L316:
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r2, #1	@ prephitmp.1009, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1009
	b	.L238	@
.L318:
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r0, #1	@ prephitmp.1091, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1091
	b	.L219	@
.L309:
	str	r3, [r7, #564]	@ temp.1068, <variable>.Pic_type
	b	.L251	@
.L321:
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ D.30828, <variable>.curparity
	cmp	r3, #0	@ D.30828,
	beq	.L310	@,
	cmp	r3, #1	@ D.30828,
	bne	.L256	@,
.L310:
	add	r1, r3, #1	@ tmp413, tmp413,
	str	r1, [r7, #564]	@ tmp413, <variable>.Pic_type
	b	.L256	@
.L320:
	ldr	ip, [r4, #820]	@ D.30628, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.30628,
	beq	.L241	@,
	ldr	r3, [r4, #308]	@ D.30624, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.30619, D.30624
	bne	.L242	@,
	tst	ip, #1	@ D.30628,
	mov	r1, r4	@ ivtmp.1043, pDecParam
	mov	r0, #0	@ i.1060,
	bne	.L225	@,
	ldr	r3, [r4, #312]	@ D.30624, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1060,
	add	r1, r4, #4	@ ivtmp.1043, pDecParam,
	cmp	r3, r2	@ D.30624, D.30619
	beq	.L225	@,
	b	.L242	@
.L297:
	ldr	r3, [lr, #312]	@ D.30624, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.30624, D.30619
	bne	.L242	@,
.L225:
	add	r3, r0, #1	@ tmp473, i.1060,
	add	lr, r1, #4	@ tmp472, ivtmp.1043,
	cmp	ip, r3	@ D.30628, tmp473
	add	r0, r3, #1	@ i.1060, tmp473,
	bls	.L241	@,
	ldr	r3, [r1, #312]	@ D.30624, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1043, tmp472,
	cmp	r3, r2	@ D.30624, D.30619
	beq	.L297	@,
	str	r3, [r7, #16]	@ D.30679, <variable>.RefImageAddr
	b	.L241	@
.L319:
	mov	r0, r7	@, pRepairParam
	mov	r1, r9	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L221	@
.L317:
	mov	r0, r7	@, pRepairParam
	mov	r1, r9	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L240	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1370:
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
	add	r4, r2, r2, asl #5	@, tmp142, VdhId, VdhId,
	movw	ip, #:lower16:g_DecReport	@ tmp144,
	movt	ip, #:upper16:g_DecReport	@ tmp144,
	add	lr, ip, r4, asl #4	@, pDecReport, tmp144, tmp142,
	movw	r3, #:lower16:g_RepairParam	@ tmp150,
	movt	r3, #:upper16:g_RepairParam	@ tmp150,
	mov	r5, r2	@ VdhId, VdhId
	mov	r2, r1	@ pDecParam, pDecParam
	movw	r1, #1144	@ tmp148,
	mla	r1, r1, r5, r3	@, tmp148, VdhId, tmp150
	mov	r5, #1	@ tmp145,
	mov	r3, lr	@, pDecReport
	str	r5, [ip, r4, asl #4]	@ tmp145, <variable>.RetType
	mov	ip, #0	@ tmp146,
	str	ip, [lr, #8]	@ tmp146, <variable>.DecSliceNum
	bl	PostPro_GetRepairParam	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.align	2
	.global	PostPro_CopyYuv_Vp6
	.type	PostPro_CopyYuv_Vp6, %function
PostPro_CopyYuv_Vp6:
	.fnstart
.LFB1360:
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
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	ldr	lr, [r0, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r6, #0	@ tmp150,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r7, #1	@ tmp149,
	mov	r8, r1	@ VdhId, VdhId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	lr, [r4, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	ldr	ip, [r5, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	ip, [r4, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r5, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r4, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r5, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r2, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #52]	@ D.30504, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ D.30504, <variable>.ImageWidth
	ldrh	lr, [r5, #54]	@ D.30506, <variable>.PicHeightInMb
	str	r7, [r4, #32]	@ tmp149, <variable>.IsFrame
	str	r6, [r4, #36]	@ tmp150, <variable>.ImageCSP
	mov	r3, lr	@, D.30506
	str	lr, [r4, #28]	@ D.30506, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp167,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp167,
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	str	r7, [r4, #552]	@ tmp149, <variable>.ValidGroupNum
	mul	r2, r1, ip	@ tmp159, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r3, #88]	@ D.30518, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r6, [r4, #40]	@ movhi	@ tmp150, <variable>.StartMbn
	cmp	ip, r6	@ D.30518,
	sub	r1, r2, #1	@ tmp161, tmp159,
	strh	r1, [r4, #42]	@ movhi	@ tmp161, <variable>.EndMbn
	ldr	r3, [r5, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30521, tmp149
	str	r7, [r4, #568]	@ tmp149, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp150, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r1, r5	@, pVp6DecParam
	mov	r2, r6	@, tmp150
	mov	r3, r8	@, VdhId
	mov	r0, #10	@,
	blx	ip	@ D.30518
	subs	r0, r0, #0	@ D.30521,,
	movne	r0, #1	@ D.30521
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vp6, .-PostPro_CopyYuv_Vp6
	.align	2
	.global	PostPro_CopyYuv_Vc1
	.type	PostPro_CopyYuv_Vc1, %function
PostPro_CopyYuv_Vc1:
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
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	mov	r8, r1	@ VdhId, VdhId
	movw	r6, #12384	@ tmp147,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	movw	r1, #:lower16:78036	@ tmp145,
	movt	r1, #:upper16:78036	@ tmp145,
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	movw	ip, #12388	@ tmp149,
	movw	lr, #:lower16:16382	@ D.30473,
	ldr	r7, [r0, r1]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	movt	lr, #:upper16:16382	@ D.30473,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r7, [r4, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	mov	r7, #1	@ tmp159,
	ldr	r3, [r5, r6]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	mov	r6, #0	@ tmp160,
	str	r3, [r4, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	movw	r3, #12396	@ tmp151,
	ldr	r2, [r5, ip]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	ip, [r5, r3]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	ip, [r4, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	r2, r2, r7	@ D.30466, <variable>.mbwidth,
	str	r2, [r4, #24]	@ D.30466, <variable>.ImageWidth
	ldrh	r3, [r5, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	str	r7, [r4, #32]	@ tmp159, <variable>.IsFrame
	add	ip, r3, #15	@ tmp155, <variable>.DispPicHeight,
	str	r6, [r4, #36]	@ tmp160, <variable>.ImageCSP
	mov	r3, ip, asr #4	@ tmp156, tmp155,
	add	ip, r3, r7	@ tmp157, tmp156,
	and	r3, ip, lr	@ D.30473, tmp157, D.30473
	str	r3, [r4, #28]	@ D.30473, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp178,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp178,
	movw	r3, #:lower16:78068	@ tmp173,
	movt	r3, #:upper16:78068	@ tmp173,
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	mul	r1, r0, ip	@ tmp169, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r2, #88]	@ D.30485, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r7, [r4, #552]	@ tmp159, <variable>.ValidGroupNum
	strh	r6, [r4, #40]	@ movhi	@ tmp160, <variable>.StartMbn
	cmp	ip, r6	@ D.30485,
	sub	r2, r1, #1	@ tmp171, tmp169,
	strh	r2, [r4, #42]	@ movhi	@ tmp171, <variable>.EndMbn
	ldr	r3, [r5, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30488, tmp159
	str	r7, [r4, #568]	@ tmp159, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp160, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r7	@, tmp159
	mov	r1, r5	@, pVc1DecParam
	mov	r2, r6	@, tmp160
	mov	r3, r8	@, VdhId
	blx	ip	@ D.30485
	subs	r0, r0, #0	@ D.30488,,
	movne	r0, #1	@ D.30488
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vc1, .-PostPro_CopyYuv_Vc1
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
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
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	add	r6, r2, r2, asl #5	@, tmp143, VdhId.418, VdhId.418,
	movw	r3, #:lower16:g_DecReport	@ tmp145,
	movt	r3, #:upper16:g_DecReport	@ tmp145,
	ldr	ip, [ip, #92]	@ D.30388, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r5, r2	@ VdhId.418, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, r3, r6, asl #4	@, pDecReport, tmp145, tmp143,
	cmp	ip, #0	@ D.30388,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L333	@,
	mov	r1, r6	@, pDecReport
	blx	ip	@ D.30388
.L334:
	movw	r0, #:lower16:g_RepairParam	@ tmp151,
	movt	r0, #:upper16:g_RepairParam	@ tmp151,
	movw	r1, #1144	@ tmp149,
	mov	r2, r7	@, pDecParam
	mla	r1, r1, r5, r0	@, tmp149, VdhId.418, tmp151
	mov	r3, r6	@, pDecReport
	mov	r0, r4	@, VidStd
	bl	PostPro_GetRepairParam	@
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r4, r0	@ err_ratio,
	mov	r0, #22	@,
	mov	r2, r4	@, err_ratio
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L333:
	mov	r0, ip	@, D.30388
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #46	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	b	.L334	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VidStd Err!\012\000"
	.space	3
.LC1:
	.ascii	"DecSliceNum(=%d) out of range!\012\000"
.LC2:
	.ascii	"DecSliceNum out of range!\012\000"
	.space	1
.LC3:
	.ascii	"line:%d! pRepairParam->ValidGroupNum > (MAX_UP_MSG_"
	.ascii	"SLICE_NUM - 1)\012\000"
	.space	1
.LC4:
	.ascii	"pRepairParam[0].MbGroup[i].EndMbn=%d,pRepairParam[0"
	.ascii	"].MbGroup[i].StartMbn=%d\012\000"
	.space	3
.LC5:
	.ascii	"total_mbs=%d,err_mbs=%d\012\000"
	.space	3
.LC6:
	.ascii	"pRepairParam->ImageWidth=%d,pRepairParam->ImageHeig"
	.ascii	"ht=%d\012\000"
	.space	2
.LC7:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC8:
	.ascii	"err_ratio=%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
