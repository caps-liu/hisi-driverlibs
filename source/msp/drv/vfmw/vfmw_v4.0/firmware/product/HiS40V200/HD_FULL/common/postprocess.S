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
@ -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/postprocess.c
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
.LFB1347:
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
	rsbs	r0, r0, #1	@ D.30606, <variable>.frame_mbs_only_flag
	movcc	r0, #0	@ D.30606
	ldmfd	sp, {fp, sp, pc}	@
.L2:
	cmp	r0, #15	@ VidStd,
	movne	r0, #0	@ D.30606,
	ldmnefd	sp, {fp, sp, pc}	@
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	rsbs	r0, r2, #1	@ D.30606, <variable>.frame_mbs_only_flag
	movcc	r0, #0	@ D.30606
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_CopyYuv
	.type	PostPro_CopyYuv, %function
PostPro_CopyYuv:
	.fnstart
.LFB1348:
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
	ldr	ip, [ip, #80]	@ D.30643, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r6, [r4, #4]	@ <variable>.DispFramePhyAddr, <variable>.ImageAddr
	cmp	ip, r2	@ D.30643,
	ldr	r5, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r5, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r6, [r0, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r6, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r5, [r0, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r5, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	ldrh	r6, [r0, #164]	@ D.30629, <variable>.PicWidthInMb
	str	r6, [r4, #24]	@ D.30629, <variable>.ImageWidth
	ldrh	r5, [r0, #166]	@ D.30631, <variable>.PicHeightInMb
	str	r1, [r4, #32]	@ tmp153, <variable>.IsFrame
	str	r2, [r4, #36]	@ tmp154, <variable>.ImageCSP
	mul	r6, r6, r5	@ tmp158, D.30629, D.30631
	str	r5, [r4, #28]	@ D.30631, <variable>.ImageHeight
	mov	r5, #14656	@ tmp161,
	str	r1, [r4, #552]	@ tmp153, <variable>.ValidGroupNum
	strh	r2, [r4, #40]	@ movhi	@ tmp154, <variable>.StartMbn
	sub	r6, r6, #1	@ tmp160, tmp158,
	strh	r6, [r4, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r5, [r0, r5]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r1	@ D.30646, tmp153
	str	r1, [r4, #568]	@ tmp153, <variable>.FullRepair
	str	r2, [r4, #564]	@ tmp154, <variable>.Pic_type
	str	r5, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	ip	@ D.30643
	subs	r0, r0, #0	@ D.30646,,
	movne	r0, #1	@ D.30646
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1359:
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
	rsb	r0, r6, r7	@ pretmp.500, i, n
	mov	r4, #0	@ flag,
	tst	r0, #1	@ pretmp.500,
	mov	r3, r5	@ ivtmp.515, pDecReport
	mov	r1, r4	@ j, flag
	beq	.L16	@,
	cmp	r0, #0	@ pretmp.500,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrh	r3, [r5, #12]	@ D.31664, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r5, #16]	@ D.31666, <variable>.SliceMbRange
	cmp	r3, r2	@ D.31664, D.31666
	bls	.L19	@,
	ldrh	ip, [r5, #14]	@ D.31669, <variable>.SliceMbRange
	mov	r4, r1	@ flag, j
	strh	r2, [r5, #12]	@ movhi	@ D.31666, <variable>.SliceMbRange
	ldrh	r2, [r5, #18]	@, <variable>.SliceMbRange
	strh	r3, [r5, #16]	@ movhi	@ D.31664, <variable>.SliceMbRange
	strh	ip, [r5, #18]	@ movhi	@ D.31669, <variable>.SliceMbRange
	strh	r2, [r5, #14]	@ movhi	@, <variable>.SliceMbRange
.L19:
	add	r3, r5, #4	@ ivtmp.515, pDecReport,
.L16:
	cmp	r0, r1	@ pretmp.500, j
	add	r2, r3, #4	@ tmp194, ivtmp.515,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L25	@,
.L15:
	ldrh	ip, [r3, #12]	@ D.31664, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r8, [r3, #16]	@ D.31666, <variable>.SliceMbRange
	cmp	ip, r8	@ D.31664, D.31666
	bls	.L14	@,
	ldrh	sl, [r3, #14]	@ D.31669, <variable>.SliceMbRange
	mov	r4, #1	@ flag,
	strh	r8, [r3, #12]	@ movhi	@ D.31666, <variable>.SliceMbRange
	ldrh	r8, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.31664, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.31669, <variable>.SliceMbRange
	strh	r8, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L14:
	ldrh	r3, [r2, #12]	@ D.31664, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.31666, <variable>.SliceMbRange
	cmp	r3, ip	@ D.31664, D.31666
	bls	.L22	@,
	ldrh	r8, [r2, #18]	@, <variable>.SliceMbRange
	mov	r4, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.31666, <variable>.SliceMbRange
	ldrh	ip, [r2, #14]	@ D.31669, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.31664, <variable>.SliceMbRange
	strh	r8, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	ip, [r2, #18]	@ movhi	@ D.31669, <variable>.SliceMbRange
.L22:
	cmp	r0, r1	@ pretmp.500, j
	add	r3, r2, #4	@ ivtmp.515, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.515,
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
.LFB1361:
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
.LFB1358:
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
	ldr	r2, [r1, #8]	@ D.31592, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp156, D.31592,
	cmp	r3, #3	@ tmp156,
	bhi	.L61	@,
	ldr	r7, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp158
	str	r6, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	r6, [r1, #8]	@ prephitmp.579, <variable>.DecSliceNum
	add	r9, r0, #572	@, pRepairParam,
	mul	r5, r5, r7	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r1, [fp, #-68]	@ pDecReport, %sfp
	add	r2, r1, r6, asl #2	@, tmp163, pDecReport, prephitmp.579,
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
	ldr	r3, [fp, #-68]	@ ivtmp.594, %sfp
	str	r0, [fp, #-68]	@ pRepairParam, %sfp
.L53:
	ldrh	r2, [r3, #12]	@ D.31603, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31603, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L49	@,
	cmp	r2, r0	@ D.31603, curr_slice_end_mbn
	bgt	.L49	@,
	cmp	r2, r8	@ D.31603, old_slice_end_mbn
	movlt	r8, r4	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, r8	@ D.31603, tmp177
	ble	.L51	@,
	ldr	sl, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r4, r4, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31620, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31603,
	rsb	r6, r4, r6	@ tmp188, D.31620, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31620, tmp195
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
	cmp	r2, r4	@ D.31603,
	bge	.L59	@,
.L60:
	ldr	r6, [r1, #8]	@ prephitmp.579, <variable>.DecSliceNum
.L51:
	sub	r8, r6, #1	@ temp.600, prephitmp.579,
	cmp	r8, ip	@ temp.600, i
	beq	.L62	@,
.L52:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r4, r2	@ old_slice_start_mbn, D.31603
.L49:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.594, ivtmp.594,
	cmp	ip, r6	@ i, prephitmp.579
	bls	.L53	@,
	mov	r3, #0	@ D.31597,
.L46:
	mov	r0, r3	@, D.31597
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L62:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldr	sl, [fp, #-56]	@, %sfp
	ldrh	r8, [r4, #14]	@ D.31637, <variable>.SliceMbRange
	cmp	r8, sl	@ D.31637,
	bge	.L52	@,
	ldr	r0, [fp, #-68]	@ pRepairParam, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r1, r3, #1	@ tmp216,,
	mov	r3, #0	@ D.31597,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #40]	@ movhi	@ D.31637, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L46	@
.L59:
	ldr	r6, [r1, #8]	@ prephitmp.579, <variable>.DecSliceNum
	ldr	r7, [fp, #-64]	@ pLocalRepairParam, %sfp
	ldr	r9, [fp, #-52]	@ dectopfldmbs, %sfp
	b	.L51	@
.L61:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31597,
	b	.L46	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1357:
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
	ldr	r2, [r1, #8]	@ D.31519, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp156, D.31519,
	cmp	r3, #127	@ tmp156,
	bhi	.L80	@,
	ldr	r7, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp158
	str	r6, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	r6, [r1, #8]	@ prephitmp.624, <variable>.DecSliceNum
	add	r9, r0, #572	@, pRepairParam,
	mul	r5, r5, r7	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r1, [fp, #-68]	@ pDecReport, %sfp
	add	r2, r1, r6, asl #2	@, tmp163, pDecReport, prephitmp.624,
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
	ldr	r3, [fp, #-68]	@ ivtmp.639, %sfp
	str	r0, [fp, #-68]	@ pRepairParam, %sfp
.L72:
	ldrh	r2, [r3, #12]	@ D.31530, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31530, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L68	@,
	cmp	r2, r0	@ D.31530, curr_slice_end_mbn
	bgt	.L68	@,
	cmp	r2, r8	@ D.31530, old_slice_end_mbn
	movlt	r8, r4	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, r8	@ D.31530, tmp177
	ble	.L70	@,
	ldr	sl, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r4, r4, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31547, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31530,
	rsb	r6, r4, r6	@ tmp188, D.31547, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31547, tmp195
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
	cmp	r2, r4	@ D.31530,
	bge	.L78	@,
.L79:
	ldr	r6, [r1, #8]	@ prephitmp.624, <variable>.DecSliceNum
.L70:
	sub	r8, r6, #1	@ temp.645, prephitmp.624,
	cmp	r8, ip	@ temp.645, i
	beq	.L81	@,
.L71:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r4, r2	@ old_slice_start_mbn, D.31530
.L68:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.639, ivtmp.639,
	cmp	ip, r6	@ i, prephitmp.624
	bls	.L72	@,
	mov	r3, #0	@ D.31524,
.L65:
	mov	r0, r3	@, D.31524
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L81:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldr	sl, [fp, #-56]	@, %sfp
	ldrh	r8, [r4, #14]	@ D.31564, <variable>.SliceMbRange
	cmp	r8, sl	@ D.31564,
	bge	.L71	@,
	ldr	r0, [fp, #-68]	@ pRepairParam, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r1, r3, #1	@ tmp216,,
	mov	r3, #0	@ D.31524,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r2, #40]	@ movhi	@ D.31564, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L65	@
.L78:
	ldr	r6, [r1, #8]	@ prephitmp.624, <variable>.DecSliceNum
	ldr	r7, [fp, #-64]	@ pLocalRepairParam, %sfp
	ldr	r9, [fp, #-52]	@ dectopfldmbs, %sfp
	b	.L70	@
.L80:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31524,
	b	.L65	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
.LFB1356:
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
	sub	r3, r2, #1	@ tmp150, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp150,
	bhi	.L94	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp153,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp153
	str	r6, [r0, #552]	@ tmp153, <variable>.ValidGroupNum
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r6, [r0, #568]	@ tmp153, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.684, pDecReport
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.669, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r9, r1	@ pDecReport, pDecReport
	add	r4, r1, r6, asl #2	@, tmp159, pDecReport, prephitmp.669,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [fp, #-52]	@, %sfp
	uxth	sl, r5	@, total_mbn
	str	sl, [fp, #-48]	@, %sfp
	strh	sl, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	sl, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L91	@
.L87:
	add	ip, ip, #1	@ i, i,
	cmp	r6, ip	@ prephitmp.669, i
	bcc	.L95	@,
.L91:
	ldrh	r2, [r3, #12]	@ D.31464, <variable>.SliceMbRange
	ldrh	r1, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.684, ivtmp.684,
	cmp	r2, r5	@ D.31464, total_mbn
	cmple	r1, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L87	@,
	cmp	r2, r1	@ D.31464, curr_slice_end_mbn
	bgt	.L87	@,
	cmp	r2, r8	@ D.31464, old_slice_end_mbn
	add	sl, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	r4, r2, #1	@ tmp215, D.31464,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp173, old_slice_end_mbn,
	cmp	r8, r2	@ tmp173, D.31464
	mov	r7, r2	@ old_slice_start_mbn, D.31464
	mov	r8, r1	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L89	@,
	cmp	sl, r4	@ tmp214, tmp215
	bge	.L89	@,
	ldr	r6, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r6, asl #2	@, tmp179, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r1, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r9, #8]	@ prephitmp.669, <variable>.DecSliceNum
.L89:
	sub	r1, r6, #1	@ temp.689, prephitmp.669,
	cmp	r1, ip	@ temp.689, i
	bne	.L87	@,
	add	r2, r9, ip, asl #2	@, tmp197, pDecReport, i,
	ldr	r1, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31493, <variable>.SliceMbRange
	cmp	r2, r1	@ D.31493,
	bge	.L87	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, r0, ip, asl #2	@, tmp202, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r3, #1	@ tmp210,,
	mov	r3, #0	@ D.31458,
	strh	r2, [ip, #40]	@ movhi	@ D.31493, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp210, <variable>.EndMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r1, #1	@ tmp212, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp212, <variable>.ValidGroupNum
	b	.L84	@
.L95:
	mov	r3, #0	@ D.31458,
.L84:
	mov	r0, r3	@, D.31458
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L94:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31458,
	b	.L84	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1355:
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
	sub	r3, r2, #1	@ tmp150, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp150,
	bhi	.L108	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp153,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp153
	str	r6, [r0, #552]	@ tmp153, <variable>.ValidGroupNum
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r6, [r0, #568]	@ tmp153, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.730, pDecReport
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.715, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r9, r1	@ pDecReport, pDecReport
	add	r4, r1, r6, asl #2	@, tmp159, pDecReport, prephitmp.715,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [fp, #-52]	@, %sfp
	uxth	sl, r5	@, total_mbn
	str	sl, [fp, #-48]	@, %sfp
	strh	sl, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	sl, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L105	@
.L101:
	add	ip, ip, #1	@ i, i,
	cmp	r6, ip	@ prephitmp.715, i
	bcc	.L109	@,
.L105:
	ldrh	r2, [r3, #12]	@ D.31401, <variable>.SliceMbRange
	ldrh	r1, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.730, ivtmp.730,
	cmp	r2, r5	@ D.31401, total_mbn
	cmple	r1, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L101	@,
	cmp	r2, r1	@ D.31401, curr_slice_end_mbn
	bgt	.L101	@,
	cmp	r2, r8	@ D.31401, old_slice_end_mbn
	add	sl, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	r4, r2, #1	@ tmp215, D.31401,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp173, old_slice_end_mbn,
	cmp	r8, r2	@ tmp173, D.31401
	mov	r7, r2	@ old_slice_start_mbn, D.31401
	mov	r8, r1	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L103	@,
	cmp	sl, r4	@ tmp214, tmp215
	bge	.L103	@,
	ldr	r6, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r6, asl #2	@, tmp179, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r1, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r9, #8]	@ prephitmp.715, <variable>.DecSliceNum
.L103:
	sub	r1, r6, #1	@ temp.735, prephitmp.715,
	cmp	r1, ip	@ temp.735, i
	bne	.L101	@,
	add	r2, r9, ip, asl #2	@, tmp197, pDecReport, i,
	ldr	r1, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31430, <variable>.SliceMbRange
	cmp	r2, r1	@ D.31430,
	bge	.L101	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, r0, ip, asl #2	@, tmp202, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r3, #1	@ tmp210,,
	mov	r3, #0	@ D.31395,
	strh	r2, [ip, #40]	@ movhi	@ D.31430, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp210, <variable>.EndMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r1, #1	@ tmp212, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp212, <variable>.ValidGroupNum
	b	.L98	@
.L109:
	mov	r3, #0	@ D.31395,
.L98:
	mov	r0, r3	@, D.31395
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L108:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31395,
	b	.L98	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1354:
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
	sub	r3, r2, #1	@ tmp150, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp150,
	bhi	.L122	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r6, #0	@ tmp153,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r6	@ i, tmp153
	str	r6, [r0, #552]	@ tmp153, <variable>.ValidGroupNum
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r6, [r0, #568]	@ tmp153, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.776, pDecReport
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.761, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	r9, r1	@ pDecReport, pDecReport
	add	r4, r1, r6, asl #2	@, tmp159, pDecReport, prephitmp.761,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [fp, #-52]	@, %sfp
	uxth	sl, r5	@, total_mbn
	str	sl, [fp, #-48]	@, %sfp
	strh	sl, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	sl, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L119	@
.L115:
	add	ip, ip, #1	@ i, i,
	cmp	r6, ip	@ prephitmp.761, i
	bcc	.L123	@,
.L119:
	ldrh	r2, [r3, #12]	@ D.31338, <variable>.SliceMbRange
	ldrh	r1, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.776, ivtmp.776,
	cmp	r2, r5	@ D.31338, total_mbn
	cmple	r1, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L115	@,
	cmp	r2, r1	@ D.31338, curr_slice_end_mbn
	bgt	.L115	@,
	cmp	r2, r8	@ D.31338, old_slice_end_mbn
	add	sl, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	r4, r2, #1	@ tmp215, D.31338,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp173, old_slice_end_mbn,
	cmp	r8, r2	@ tmp173, D.31338
	mov	r7, r2	@ old_slice_start_mbn, D.31338
	mov	r8, r1	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L117	@,
	cmp	sl, r4	@ tmp214, tmp215
	bge	.L117	@,
	ldr	r6, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r6, asl #2	@, tmp179, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r1, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r9, #8]	@ prephitmp.761, <variable>.DecSliceNum
.L117:
	sub	r1, r6, #1	@ temp.781, prephitmp.761,
	cmp	r1, ip	@ temp.781, i
	bne	.L115	@,
	add	r2, r9, ip, asl #2	@, tmp197, pDecReport, i,
	ldr	r1, [fp, #-52]	@, %sfp
	ldrh	r2, [r2, #14]	@ D.31367, <variable>.SliceMbRange
	cmp	r2, r1	@ D.31367,
	bge	.L115	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, r0, ip, asl #2	@, tmp202, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r3, #1	@ tmp210,,
	mov	r3, #0	@ D.31332,
	strh	r2, [ip, #40]	@ movhi	@ D.31367, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp210, <variable>.EndMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r1, #1	@ tmp212, <variable>.ValidGroupNum,
	str	ip, [r0, #552]	@ tmp212, <variable>.ValidGroupNum
	b	.L112	@
.L123:
	mov	r3, #0	@ D.31332,
.L112:
	mov	r0, r3	@, D.31332
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L122:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31332,
	b	.L112	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1353:
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
	ldr	r2, [r1, #8]	@ D.31247, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp153, D.31247,
	cmp	r3, #127	@ tmp153,
	bhi	.L138	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r4, #0	@ tmp155,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r4, [r0, #568]	@ tmp155, <variable>.FullRepair
	str	r4, [r0, #552]	@ tmp155, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.815, <variable>.DecSliceNum
	cmp	r6, r4	@ prephitmp.815,
	add	r2, r1, r6, asl #2	@, tmp161, pDecReport, prephitmp.815,
	uxth	r9, r5	@ D.31255, total_mbn
	strh	r9, [r2, #14]	@ movhi	@ D.31255, <variable>.SliceMbRange
	strh	r9, [r2, #12]	@ movhi	@ D.31255, <variable>.SliceMbRange
	bne	.L139	@,
.L127:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	ip, #0	@ i,
	add	r3, r5, sl	@, total_mbn,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	str	r3, [fp, #-48]	@, %sfp
	mov	r3, r1	@ ivtmp.832, pDecReport
	b	.L135	@
.L134:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.31266
.L130:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.832, ivtmp.832,
	cmp	ip, r6	@ i, prephitmp.815
	bhi	.L140	@,
.L135:
	ldrh	r2, [r3, #12]	@ D.31266, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31266, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L130	@,
	cmp	r2, r4	@ D.31266, curr_slice_end_mbn
	movle	r8, #0	@, tmp189
	movgt	r8, #1	@, tmp189
	cmp	r2, r7	@ D.31266, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp192, tmp189
	cmp	r8, #0	@ tmp192,
	bne	.L130	@,
	cmp	sl, r2	@ old_slice_end_mbn, D.31266
	movgt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp193, old_slice_end_mbn,
	cmp	r8, r2	@ tmp193, D.31266
	beq	.L132	@,
	add	r7, r7, r7, lsr #31	@, tmp245, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp246, D.31266,
	cmp	r7, r8	@ tmp245, tmp246
	bge	.L132	@,
	ldr	r6, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	sl, sl, #100	@ tmp243, old_slice_end_mbn,
	add	r6, r0, r6, asl #2	@, tmp199, pRepairParam, <variable>.ValidGroupNum,
	strh	r7, [r6, #40]	@ movhi	@ tmp245, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp246, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.817, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp214, prephitmp.817,
	mov	r7, r8, asl #2	@ tmp215, tmp214,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp243, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp243, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.817, <variable>.ValidGroupNum
	add	r6, r6, #1	@ tmp223, prephitmp.817,
	str	r6, [r0, #552]	@ tmp223, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.815, <variable>.DecSliceNum
.L132:
	sub	r7, r6, #1	@ temp.837, prephitmp.815,
	cmp	r7, ip	@ temp.837, i
	bne	.L134	@,
	add	r8, r1, ip, asl #2	@, tmp226, pDecReport, i,
	ldrh	r7, [r8, #14]	@ temp.838, <variable>.SliceMbRange
	ldr	r8, [fp, #-48]	@, %sfp
	cmp	r7, r8	@ temp.838,
	bge	.L134	@,
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r9, r9, #1	@ tmp239, D.31255,
	mov	r3, #0	@ D.31252,
	add	r2, r0, ip, asl #2	@, tmp231, pRepairParam, <variable>.ValidGroupNum,
	strh	r7, [r2, #40]	@ movhi	@ temp.838, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp237, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp239, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp241, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp241, <variable>.ValidGroupNum
	b	.L126	@
.L140:
	mov	r3, #0	@ D.31252,
.L126:
	mov	r0, r3	@, D.31252
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L139:
	add	sl, r2, #6	@ tmp171, tmp170,
	sub	r7, r5, #10	@ tmp173, total_mbn,
	ldrh	ip, [sl, #4]	@ tmp172, <variable>.SliceMbRange
	cmp	ip, r7	@ tmp172, tmp173
	subge	r7, r9, #1	@ tmp178, D.31255,
	strgeh	r7, [sl, #4]	@ movhi	@ tmp178, <variable>.SliceMbRange
	b	.L127	@
.L138:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31252,
	b	.L126	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1352:
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
	mov	r5, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #8]	@, <variable>.DecSliceNum
	mov	r4, r1	@ pDecReport, pDecReport
	sub	r3, r0, #1	@ tmp192,,
	cmp	r3, #127	@ tmp192,
	str	r0, [fp, #-568]	@, %sfp
	bhi	.L184	@,
	ldr	sl, [r5, #24]	@ D.31119, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r5, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.31119
	uxtheq	r1, r6	@, total_mbn
	streq	r1, [fp, #-560]	@, %sfp
	bne	.L185	@,
.L145:
	mov	r1, #0	@ tmp390,
	sub	sl, fp, #512	@,,
	str	r1, [r5, #552]	@ tmp390, <variable>.ValidGroupNum
	sub	r2, fp, #512	@,,
	str	r1, [r5, #568]	@ tmp390, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r4, #8]	@ prephitmp.869, <variable>.DecSliceNum
	add	r7, r6, r8	@, total_mbn,
	ldrh	sl, [sl, #-48]	@, %sfp
	mov	r3, r4	@ ivtmp.894, pDecReport
	str	r7, [fp, #-564]	@, %sfp
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r0, r4, ip, asl #2	@, tmp394, pDecReport, prephitmp.869,
	mov	r9, r0	@ tmp399, tmp394
	strh	sl, [r0, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r0, [r2, #-48]	@, %sfp
	strh	r0, [r9, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	r9, r4	@ pDecReport, pDecReport
	b	.L163	@
.L158:
	add	r1, r1, #1	@ i.969, i.969,
	cmp	ip, r1	@ prephitmp.869, i.969
	bcc	.L186	@,
.L163:
	ldrh	r2, [r3, #12]	@ temp.970, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.894, ivtmp.894,
	cmp	r2, r6	@ temp.970, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L158	@,
	cmp	r2, r0	@ temp.970, curr_slice_end_mbn
	bgt	.L158	@,
	cmp	r8, r2	@ old_slice_end_mbn, temp.970
	add	r4, r7, r7, lsr #31	@, tmp417, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp424, temp.970,
	movle	r7, r8	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	sub	r0, r7, #100	@ tmp466, old_slice_end_mbn,
	add	r7, r7, #1	@ tmp408, old_slice_end_mbn,
	cmp	r2, r7	@ temp.970, tmp408
	mov	r7, r2	@ old_slice_start_mbn, temp.970
	ble	.L160	@,
	ldr	ip, [r5, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r5, ip, asl #2	@, tmp411, pRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r2, #40]	@ movhi	@ tmp417, <variable>.StartMbn
	ldr	ip, [r5, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r5, ip, asl #2	@, tmp422, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r2, #42]	@ movhi	@ tmp424, <variable>.EndMbn
	ldr	r2, [r5, #552]	@ prephitmp.871, <variable>.ValidGroupNum
	add	r4, r2, #10	@ tmp426, prephitmp.871,
	mov	ip, r4, asl #2	@ tmp427, tmp426,
	ldrsh	r4, [ip, r5]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r0, r4	@ tmp466, <variable>.StartMbn
	strgth	r0, [ip, r5]	@ movhi	@ tmp466, <variable>.StartMbn
	ldrgt	r2, [r5, #552]	@ prephitmp.871, <variable>.ValidGroupNum
	add	ip, r2, #1	@ tmp435, prephitmp.871,
	str	ip, [r5, #552]	@ tmp435, <variable>.ValidGroupNum
	ldr	ip, [r9, #8]	@ prephitmp.869, <variable>.DecSliceNum
.L160:
	sub	r0, ip, #1	@ temp.973, prephitmp.869,
	cmp	r0, r1	@ temp.973, i.969
	bne	.L158	@,
	add	sl, r9, r1, asl #2	@, tmp438, pDecReport, i.969,
	ldrh	r2, [sl, #14]	@ D.31224, <variable>.SliceMbRange
	ldr	sl, [fp, #-564]	@, %sfp
	cmp	r2, sl	@ D.31224,
	bge	.L158	@,
	ldr	r3, [r5, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r0, [fp, #-560]	@, %sfp
	add	r3, r5, r3, asl #2	@, tmp443, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, r0, #1	@ tmp451,,
	mov	r0, #0	@ D.31118,
	strh	r2, [r3, #40]	@ movhi	@ D.31224, <variable>.StartMbn
	ldr	ip, [r5, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r5, ip, asl #2	@, tmp449, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp451, <variable>.EndMbn
	ldr	r3, [r5, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp453, <variable>.ValidGroupNum,
	str	r1, [r5, #552]	@ tmp453, <variable>.ValidGroupNum
	b	.L143	@
.L186:
	mov	r0, #0	@ D.31118,
.L143:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L185:
	ldrh	lr, [r4, #12]	@, <variable>.SliceMbRange
	sub	r2, fp, #556	@ ivtmp.913,,
	ldr	r9, [fp, #-568]	@, %sfp
	add	r3, r2, #4	@ ivtmp.913, ivtmp.913,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.31119,
	strh	lr, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.32257, ivtmp.913,,
	ldrh	ip, [r4, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp472, ivtmp.913, D.32257
	cmp	r3, r0	@ ivtmp.913, D.32257
	sub	r1, r8, #4	@ tmp473, tmp472,
	strh	ip, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp474, tmp473,,
	add	r2, r4, #4	@ ivtmp.912, pDecReport,
	beq	.L174	@,
	cmp	r1, #0	@ tmp474,
	beq	.L146	@,
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.912, ivtmp.912,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.913, ivtmp.913,
	cmp	r3, r0	@ ivtmp.913, D.32257
	beq	.L174	@,
.L146:
	ldrh	r9, [r2, #12]	@, <variable>.SliceMbRange
	add	r1, r2, #4	@ tmp476, ivtmp.912,
	strh	r9, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r8, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp475, ivtmp.913,
	strh	r8, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	lr, [r1, #12]	@, <variable>.SliceMbRange
	strh	lr, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.913, tmp475,
	ldrh	ip, [r1, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.913, D.32257
	strh	ip, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, r1, #4	@ ivtmp.912, tmp476,
	bne	.L146	@,
.L174:
	sub	r1, fp, #44	@,,
	movw	r2, #:lower16:-512	@ tmp203,
	movw	r3, #:lower16:-510	@ tmp207,
	movt	r2, #:upper16:-512	@ tmp203,
	movt	r3, #:upper16:-510	@ tmp207,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r9, [r1, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	r0, #:lower16:65534	@ prephitmp.876,
	ldrh	r8, [r1, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	r0, #:upper16:65534	@ prephitmp.876,
	and	r0, r9, r0	@ prephitmp.876, SliceMbRange_Tmp, prephitmp.876
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r8, #1	@ D.31130, SliceMbRange_Tmp,
	strh	r0, [r1, r2]	@ movhi	@ prephitmp.876, SliceMbRange_Tmp
	strh	r9, [r1, r3]	@ movhi	@ D.31130, SliceMbRange_Tmp
	beq	.L148	@,
	mov	lr, #0	@,
	uxth	r7, sl	@, DoubleImageWidth
	sub	r3, sl, #2	@, DoubleImageWidth,
	str	r7, [fp, #-576]	@, %sfp
	str	r6, [fp, #-580]	@ total_mbn, %sfp
	sub	r8, fp, #552	@ ivtmp.900,,
	str	lr, [fp, #-560]	@, %sfp
	mov	r7, lr	@ j,
	str	r3, [fp, #-572]	@, %sfp
	mov	r6, r0	@ prephitmp.876, prephitmp.876
	b	.L165	@
.L188:
	mov	r0, r6	@, prephitmp.876
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [fp, #-584]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	r6, r0	@ tmp227,
	mov	r0, r9	@, D.31130
	bl	__aeabi_uidiv	@
	ldr	r9, [fp, #-564]	@, %sfp
	ldr	ip, [fp, #-584]	@,
	mov	r1, r9, lsr #1	@ mbsurplus0,,
	mov	r3, ip, lsr #1	@ mbsurplus1, tmp223,
	cmp	r0, r6	@ tmp230, tmp227
	beq	.L151	@,
	ldr	r2, [fp, #-576]	@, %sfp
	add	r9, r4, r7, asl #2	@, tmp238, pDecReport, j,
	mov	lr, r9	@ tmp242, tmp238
	mul	r6, r6, r2	@ tmp232, tmp227,
	add	r2, r7, #1	@ j.920, j,
	cmp	r2, #127	@ j.920,
	uxth	r6, r6	@ D.31146, tmp232
	add	r1, r6, r1	@ tmp234, D.31146, mbsurplus0
	uxth	r1, r1	@ D.31148, tmp234
	strh	r1, [r9, #12]	@ movhi	@ D.31148, <variable>.SliceMbRange
	ldr	ip, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, ip, #1	@ tmp246, <variable>.ImageWidth,
	add	ip, r6, r9	@ tmp248, D.31146, tmp246
	strh	ip, [lr, #14]	@ movhi	@ tmp248, <variable>.SliceMbRange
	bhi	.L180	@,
	ldr	lr, [fp, #-576]	@, %sfp
	add	ip, r2, #1	@ j.923, j.920,
	ldr	r6, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r9, r4, r2, asl #2	@, tmp261, pDecReport, j.920,
	cmp	ip, #128	@ j.923,
	uxth	r3, r3	@ D.31157, mbsurplus1
	mul	r0, r0, lr	@ tmp258, tmp230,
	add	lr, r4, r7, asl #2	@, tmp252, pDecReport, j,
	add	r1, r1, r6	@ tmp256, D.31148, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp256, <variable>.SliceMbRange
	uxth	r0, r0	@ D.31156, tmp258
	add	r7, r3, r0	@ tmp263, D.31157, D.31156
	strh	r7, [r9, #14]	@ movhi	@ tmp263, <variable>.SliceMbRange
	beq	.L180	@,
	ldr	r6, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.923,
	cmp	r7, #128	@ j,
	add	ip, r4, ip, asl #2	@, tmp274, pDecReport, j.923,
	add	r1, r0, r6	@ tmp266, D.31156, <variable>.ImageWidth
	uxth	r9, r1	@ D.31161, tmp266
	strh	r9, [lr, #20]	@ movhi	@ D.31161, <variable>.SliceMbRange
	add	r3, r9, r3	@ tmp276, D.31161, D.31157
	strh	r3, [ip, #14]	@ movhi	@ tmp276, <variable>.SliceMbRange
	beq	.L180	@,
.L153:
	ldr	r6, [fp, #-560]	@, %sfp
	add	r8, r8, #4	@ ivtmp.900, ivtmp.900,
	ldr	lr, [fp, #-568]	@, %sfp
	add	r3, r6, #1	@,,
	str	r3, [fp, #-560]	@, %sfp
	cmp	lr, r3	@,
	bls	.L187	@,
.L155:
	ldrh	r6, [r8, #-4]	@ tmp460, SliceMbRange_Tmp
	ldrh	r1, [r8, #-2]	@ tmp463, SliceMbRange_Tmp
	bic	r6, r6, #1	@ tmp461, tmp460,
	strh	r6, [r8, #-4]	@ movhi	@ tmp461, SliceMbRange_Tmp
	orr	r9, r1, #1	@ D.31130, tmp463,
	strh	r9, [r8, #-2]	@ movhi	@ D.31130, SliceMbRange_Tmp
.L165:
	mov	r0, r6	@, prephitmp.876
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [fp, #-564]	@, %sfp
	bls	.L149	@,
	mov	r0, r9	@, D.31130
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	r2, [fp, #-572]	@, %sfp
	cmp	r2, r1	@, tmp223
	mov	r3, r1	@ tmp223,
	bhi	.L188	@,
	mov	r0, r6	@, prephitmp.876
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	r1, r4, r7, asl #2	@, tmp321, pDecReport, j,
	add	r3, r7, #1	@ j.949, j,
	ldr	r7, [fp, #-564]	@, %sfp
	mov	r2, r1	@ tmp325, tmp321
	cmp	r3, #127	@ j.949,
	mul	r0, sl, r0	@ tmp314, DoubleImageWidth,
	uxth	r6, r0	@ temp.942, tmp314
	add	ip, r6, r7, lsr #1	@, tmp317, temp.942,,
	uxth	ip, ip	@ temp.944, tmp317
	strh	ip, [r1, #12]	@ movhi	@ temp.944, <variable>.SliceMbRange
	ldr	r1, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	lr, r1, #1	@ tmp329, <variable>.ImageWidth,
	add	r7, r6, lr	@ tmp331, temp.942, tmp329
	strh	r7, [r2, #14]	@ movhi	@ tmp331, <variable>.SliceMbRange
	bhi	.L180	@,
	add	r7, r3, #1	@ j, j.949,
	ldr	r6, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r4, r3, asl #2	@, tmp342, pDecReport, j.949,
	cmp	r7, #128	@ j,
	add	lr, ip, r6	@ tmp339, temp.944, <variable>.ImageWidth
	strh	lr, [r2, #16]	@ movhi	@ tmp339, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.31130, <variable>.SliceMbRange
	bne	.L153	@,
.L180:
	ldr	r6, [fp, #-580]	@ total_mbn, %sfp
	mov	r7, #0	@ movhi	@,
	mov	r9, #1	@ tmp455,
	uxth	lr, r6	@, total_mbn
	str	lr, [fp, #-560]	@, %sfp
	sub	r8, lr, #1	@ tmp458,,
	strh	r7, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r4, #8]	@ tmp455, <variable>.DecSliceNum
	strh	r8, [r4, #14]	@ movhi	@ tmp458, <variable>.SliceMbRange
.L164:
	mov	r0, r4	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L145	@
.L149:
	mov	r0, r9	@, D.31130
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	mov	r2, r1	@ tmp348,
	ldr	r1, [fp, #-572]	@, %sfp
	cmp	r1, r2	@, tmp348
	bls	.L154	@,
	add	r3, r4, r7, asl #2	@, tmp353, pDecReport, j,
	mov	r0, r9	@, D.31130
	mov	r1, sl	@, DoubleImageWidth
	strh	r6, [r3, #12]	@ movhi	@ prephitmp.876, <variable>.SliceMbRange
	str	r2, [fp, #-584]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-584]	@,
	add	r3, r7, #1	@ j.963, j,
	add	r1, r4, r7, asl #2	@, tmp365, pDecReport, j,
	cmp	r3, #127	@ j.963,
	ubfx	r2, r2, #1, #16	@ temp.961, tmp348,,
	mul	ip, sl, r0	@ tmp361, DoubleImageWidth,
	uxth	r0, ip	@ temp.960, tmp361
	add	r9, r2, r0	@ tmp367, temp.961, temp.960
	strh	r9, [r1, #14]	@ movhi	@ tmp367, <variable>.SliceMbRange
	bhi	.L180	@,
	ldr	ip, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.963,
	add	r6, r4, r3, asl #2	@, tmp378, pDecReport, j.963,
	cmp	r7, #128	@ j,
	add	r9, r0, ip	@ tmp370, temp.960, <variable>.ImageWidth
	uxth	r0, r9	@ temp.966, tmp370
	strh	r0, [r1, #16]	@ movhi	@ temp.966, <variable>.SliceMbRange
	add	lr, r0, r2	@ tmp380, temp.966, temp.961
	strh	lr, [r6, #14]	@ movhi	@ tmp380, <variable>.SliceMbRange
	beq	.L180	@,
	ldr	r6, [fp, #-560]	@, %sfp
	add	r8, r8, #4	@ ivtmp.900, ivtmp.900,
	ldr	lr, [fp, #-568]	@, %sfp
	add	r3, r6, #1	@,,
	str	r3, [fp, #-560]	@, %sfp
	cmp	lr, r3	@,
	bhi	.L155	@,
.L187:
	ldr	r6, [fp, #-580]	@ total_mbn, %sfp
.L148:
	uxth	sl, r6	@, total_mbn
	str	sl, [fp, #-560]	@, %sfp
	str	r7, [r4, #8]	@ j, <variable>.DecSliceNum
	b	.L164	@
.L154:
	add	r2, r4, r7, asl #2	@, tmp384, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	r6, [r2, #12]	@ movhi	@ prephitmp.876, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.31130, <variable>.SliceMbRange
	bls	.L153	@,
	b	.L180	@
.L151:
	mul	r9, sl, r0	@ tmp279, DoubleImageWidth, tmp230
	add	r2, r7, #1	@ j.932, j,
	add	ip, r4, r7, asl #2	@, tmp285, pDecReport, j,
	cmp	r2, #127	@ j.932,
	uxth	r0, r9	@ temp.928, tmp279
	add	r3, r0, r3	@ tmp288, temp.928, mbsurplus1
	add	r7, r0, r1	@ tmp281, temp.928, mbsurplus0
	uxth	r3, r3	@ D.31167, tmp288
	uxth	r1, r7	@ temp.930, tmp281
	strh	r3, [ip, #14]	@ movhi	@ D.31167, <variable>.SliceMbRange
	strh	r1, [ip, #12]	@ movhi	@ temp.930, <variable>.SliceMbRange
	bhi	.L180	@,
	mov	r0, ip	@ tmp296, tmp291
	ldr	ip, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.932,
	add	lr, r4, r2, asl #2	@, tmp303, pDecReport, j.932,
	add	r9, r1, ip	@ tmp300, temp.930, <variable>.ImageWidth
	cmp	r7, #128	@ j,
	strh	r9, [r0, #16]	@ movhi	@ tmp300, <variable>.SliceMbRange
	ldr	r1, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r6, r3, r1	@ tmp307, D.31167, <variable>.ImageWidth
	strh	r6, [lr, #14]	@ movhi	@ tmp307, <variable>.SliceMbRange
	bne	.L153	@,
	b	.L180	@
.L184:
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.31118,
	b	.L143	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
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
	mov	r9, r3	@ pDecReport, pDecReport
	mov	r7, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp218,
	mov	r4, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #1124]	@ tmp218, <variable>.ValidGroupNum
	add	r8, r1, #572	@ D.30779, pRepairParam,
	str	r3, [r1, #552]	@ tmp218, <variable>.ValidGroupNum
	cmp	r0, #15	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L190	@
.L202:
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L190
	.word	.L195
	.word	.L196
	.word	.L190
	.word	.L197
	.word	.L198
	.word	.L199
	.word	.L199
	.word	.L199
	.word	.L200
	.word	.L190
	.word	.L201
.L201:
	ldr	lr, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	ip, lr, #76	@ tmp259, <variable>.CurrPicImgIdc,
	ldr	r2, [r2, ip, asl #2]	@ tmp261, <variable>.ImgPhyAddr
	str	r2, [r1, #4]	@ tmp261, <variable>.ImageAddr
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r7, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #1120]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [r3, #1640]	@ mvc_ref_img_idc, <variable>.img_idc
	add	sl, r1, #76	@ tmp264, mvc_ref_img_idc,
	ldr	r0, [r4, sl, asl #2]	@ tmp265, <variable>.ImgPhyAddr
	str	r0, [r7, #16]	@ tmp265, <variable>.RefImageAddr
	ldr	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	ip, r4, lr, asl #2	@, tmp270, pDecParam, <variable>.CurrPicPmvIdc,
	ldr	r2, [ip, #820]	@ tmp272, <variable>.PmvPhyAddr
	str	r2, [r7, #20]	@ tmp272, <variable>.CurrPmvAddr
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	sl, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	sl, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	lr, r0, #1	@ tmp276, <variable>.pic_structure
	movcc	lr, #0	@ tmp276
	str	lr, [r7, #32]	@ tmp276, <variable>.IsFrame
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r2, ip, #1	@ tmp278, <variable>.chroma_format_idc
	movcc	r2, #0	@ tmp278
	str	r2, [r7, #36]	@ tmp278, <variable>.ImageCSP
	ldr	lr, [r4, #1112]	@ D.30865, <variable>.ApcSize
	cmp	lr, #0	@ D.30865,
	beq	.L222	@,
	ldr	r3, [r4, #1316]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, mvc_ref_img_idc
	moveq	r3, #0	@ i.1056,
	beq	.L224	@,
	tst	lr, #1	@ D.30865,
	mov	r2, r4	@ ivtmp.1052, pDecParam
	mov	r3, #0	@ i.1056,
	bne	.L225	@,
	ldr	r0, [r4, #1320]	@ D.30860, <variable>.RefPicFsId
	mov	r3, #1	@ i.1056,
	add	r2, r4, #4	@ ivtmp.1052, pDecParam,
	cmp	r0, r1	@ D.30860, mvc_ref_img_idc
	bne	.L225	@,
.L224:
	add	r3, r4, r3, asl #2	@, tmp283, pDecParam, i.1056,
	ldr	r0, [r3, #1252]	@ tmp285, <variable>.RefPicType
	str	r0, [r7, #556]	@ tmp285, <variable>.rpr_ref_pic_type
.L222:
	ldr	r2, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	bne	.L306	@,
.L228:
	ldrsb	ip, [r4, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	ip, #0	@ <variable>.NewPicFlag,
	streq	ip, [r9, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L307	@,
.L230:
	ldr	r2, [r7, #4]	@ temp.1058, <variable>.ImageAddr
	ldr	lr, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, lr	@ temp.1058, <variable>.RefImageAddr
	bne	.L231	@,
	ldr	ip, [r4, #816]	@ D.30882, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.30882,
	beq	.L231	@,
	ldr	r3, [r4, #304]	@ D.30878, <variable>.ImgPhyAddr
	cmp	r2, r3	@ temp.1058, D.30878
	bne	.L232	@,
	tst	ip, #1	@ D.30882,
	mov	r1, r4	@ ivtmp.1047, pDecParam
	mov	r0, #0	@ i.1060,
	bne	.L234	@,
	ldr	r3, [r4, #308]	@ D.30878, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1060,
	add	r1, r4, #4	@ ivtmp.1047, pDecParam,
	cmp	r3, r2	@ D.30878, temp.1058
	beq	.L234	@,
	b	.L232	@
.L289:
	ldr	r3, [lr, #308]	@ D.30878, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.30878, temp.1058
	bne	.L232	@,
.L234:
	add	sl, r0, #1	@ tmp481, i.1060,
	add	lr, r1, #4	@ tmp480, ivtmp.1047,
	cmp	ip, sl	@ D.30882, tmp481
	add	r0, sl, #1	@ i.1060, tmp481,
	bls	.L231	@,
	ldr	r3, [r1, #308]	@ D.30878, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1047, tmp480,
	cmp	r3, r2	@ D.30878, temp.1058
	beq	.L289	@,
.L232:
	str	r3, [r7, #16]	@ D.30878, <variable>.RefImageAddr
	b	.L231	@
.L226:
	ldr	sl, [r2, #1320]	@ D.30860, <variable>.RefPicFsId
	add	r2, r0, #4	@ ivtmp.1052, tmp486,
	cmp	sl, r1	@ D.30860, mvc_ref_img_idc
	beq	.L224	@,
	ldr	sl, [r0, #1320]	@ D.30860, <variable>.RefPicFsId
	add	r3, r3, #1	@ i.1056, i.1056,
	cmp	sl, r1	@ D.30860, mvc_ref_img_idc
	beq	.L224	@,
.L225:
	add	r3, r3, #1	@ i.1056, i.1056,
	add	r0, r2, #4	@ tmp486, ivtmp.1052,
	cmp	lr, r3	@ D.30865, i.1056
	bhi	.L226	@,
	b	.L222	@
.L190:
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
.L221:
	ldr	r3, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r1, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	sl, r0, r1	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L249	@,
	mov	r5, #0	@ err_mbs,
	mov	r4, r7	@ ivtmp.1031, pRepairParam
	mov	r6, r5	@ i.1063, err_mbs
.L250:
	ldrsh	r2, [r4, #42]	@, <variable>.EndMbn
	mov	r0, #22	@,
	ldrsh	r3, [r4, #40]	@, <variable>.StartMbn
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r6, r6, #1	@ i.1063, i.1063,
	bl	dprint_vfmw	@
	ldrsh	r3, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r1, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldrsh	r2, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r0, r3, #1	@ tmp442, <variable>.EndMbn,
	cmp	r1, r6	@ <variable>.ValidGroupNum, i.1063
	add	r4, r4, #4	@ ivtmp.1031, ivtmp.1031,
	rsb	ip, r2, r0	@ tmp444, <variable>.StartMbn, tmp442
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp444
	bgt	.L250	@,
.L249:
	ldr	lr, [r7, #1124]	@ D.31071, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.31071,
	ble	.L251	@,
	ldrsh	ip, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1069,
	ldrsh	r1, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1069, D.31071
	add	r0, ip, r2	@ tmp447, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp462, D.31071,
	rsb	ip, r1, r0	@ tmp449, <variable>.StartMbn, tmp447
	and	r3, r3, r2	@ tmp464, tmp462,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp449
	add	r8, r8, #4	@ ivtmp.1025, D.30779,
	beq	.L251	@,
	cmp	r3, #0	@ tmp464,
	beq	.L252	@,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1069,
	ldrsh	ip, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1069, D.31071
	add	r1, r0, #1	@ tmp507, <variable>.EndMbn,
	add	r8, r8, #4	@ ivtmp.1025, ivtmp.1025,
	rsb	r3, ip, r1	@ tmp509, <variable>.StartMbn, tmp507
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp509
	beq	.L251	@,
.L252:
	add	r3, r8, #4	@ tmp466, ivtmp.1025,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1069, i.1069,
	ldrsh	r8, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp496, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp498, <variable>.StartMbn, tmp496
	cmp	r2, lr	@ i.1069, D.31071
	add	r1, r8, #1	@ tmp503, <variable>.EndMbn,
	rsb	r1, r0, r1	@ tmp505, <variable>.StartMbn, tmp503
	add	r8, r5, ip	@ err_mbs, err_mbs, tmp498
	add	r5, r8, r1	@ err_mbs, err_mbs, tmp505
	add	r8, r3, #4	@ ivtmp.1025, tmp466,
	bne	.L252	@,
.L251:
	cmp	sl, #0	@ total_mbs,
	moveq	r4, sl	@ err_ratio, total_mbs
	beq	.L254	@,
	mov	r4, #100	@ tmp451,
	mov	r1, sl	@, total_mbs
	mul	r0, r4, r5	@, tmp451, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1081,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio.1081
.L254:
	mov	lr, #0	@ tmp455,
	mov	r2, sl	@, total_mbs
	mov	r3, r5	@, err_mbs
	str	lr, [r9, #8]	@ tmp455, <variable>.DecSliceNum
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L191:
	ldr	sl, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r2, sl, #76	@ tmp220, <variable>.CurrPicImgIdc,
	ldr	r0, [r4, r2, asl #2]	@ tmp222, <variable>.ImgPhyAddr
	str	r0, [r1, #4]	@ tmp222, <variable>.ImageAddr
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r7, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #1120]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, <variable>.img_idc
	add	lr, r1, #76	@ tmp225, ref_img_idc,
	ldr	ip, [r4, lr, asl #2]	@ tmp226, <variable>.ImgPhyAddr
	str	ip, [r7, #16]	@ tmp226, <variable>.RefImageAddr
	ldr	sl, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	r2, r4, sl, asl #2	@, tmp231, pDecParam, <variable>.CurrPicPmvIdc,
	ldr	r0, [r2, #820]	@ tmp233, <variable>.PmvPhyAddr
	str	r0, [r7, #20]	@ tmp233, <variable>.CurrPmvAddr
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	lr, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	sl, ip, #1	@ tmp237, <variable>.pic_structure
	movcc	sl, #0	@ tmp237
	str	sl, [r7, #32]	@ tmp237, <variable>.IsFrame
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r0, r2, #1	@ tmp239, <variable>.chroma_format_idc
	movcc	r0, #0	@ tmp239
	str	r0, [r7, #36]	@ tmp239, <variable>.ImageCSP
	ldr	lr, [r4, #1112]	@ D.30807, <variable>.ApcSize
	cmp	lr, #0	@ D.30807,
	beq	.L203	@,
	ldr	r3, [r4, #1316]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, ref_img_idc
	moveq	r3, #0	@ i,
	beq	.L205	@,
	tst	lr, #1	@ D.30807,
	mov	r2, r4	@ ivtmp.1042, pDecParam
	mov	r3, #0	@ i,
	bne	.L206	@,
	ldr	sl, [r4, #1320]	@ D.30801, <variable>.RefPicFsId
	mov	r3, #1	@ i,
	add	r2, r4, #4	@ ivtmp.1042, pDecParam,
	cmp	sl, r1	@ D.30801, ref_img_idc
	bne	.L206	@,
.L205:
	add	r3, r4, r3, asl #2	@, tmp244, pDecParam, i,
	ldr	lr, [r3, #1252]	@ tmp246, <variable>.RefPicType
	str	lr, [r7, #556]	@ tmp246, <variable>.rpr_ref_pic_type
.L203:
	ldr	r2, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	bne	.L308	@,
.L209:
	ldrsb	r0, [r4, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r0, #0	@ <variable>.NewPicFlag,
	streq	r0, [r9, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L309	@,
.L211:
	ldr	r2, [r7, #4]	@ D.30818, <variable>.ImageAddr
	ldr	sl, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, sl	@ D.30818, <variable>.RefImageAddr
	beq	.L310	@,
.L231:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ temp.1061, <variable>.pic_structure
	cmp	r3, #0	@ temp.1061,
	beq	.L298	@,
	cmp	r3, #1	@ temp.1061,
	beq	.L298	@,
	cmp	r3, #2	@ temp.1061,
	beq	.L298	@,
	cmp	r3, #3	@ temp.1061,
	bne	.L237	@,
	mov	r3, #0	@ tmp296,
.L298:
	str	r3, [r7, #564]	@ tmp296, <variable>.Pic_type
.L237:
	ldr	r2, [r4, #1380]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L221	@
.L207:
	ldr	ip, [r2, #1320]	@ D.30801, <variable>.RefPicFsId
	add	r2, r0, #4	@ ivtmp.1042, tmp475,
	cmp	ip, r1	@ D.30801, ref_img_idc
	beq	.L205	@,
	ldr	ip, [r0, #1320]	@ D.30801, <variable>.RefPicFsId
	add	r3, r3, #1	@ i, i,
	cmp	ip, r1	@ D.30801, ref_img_idc
	beq	.L205	@,
.L206:
	add	r3, r3, #1	@ i, i,
	add	r0, r2, #4	@ tmp475, ivtmp.1042,
	cmp	lr, r3	@ D.30807, i
	bhi	.L207	@,
	b	.L203	@
.L192:
	movw	r5, #:lower16:78036	@ tmp387,
	movt	r5, #:upper16:78036	@ tmp387,
	movw	r3, #12384	@ tmp389,
	movw	ip, #12388	@ tmp391,
	ldr	sl, [r2, r5]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	mov	r5, #0	@ tmp404,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	movw	sl, #12396	@ tmp393,
	ldr	lr, [r2, r3]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	lr, [r7, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	ldr	r2, [r2, ip]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	r3, [r4, sl]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r3, [r7, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrb	lr, [r4, #6]	@ zero_extendqisi2	@ <variable>.mbwidth, <variable>.mbwidth
	add	ip, lr, #1	@ tmp396, <variable>.mbwidth,
	str	ip, [r7, #24]	@ tmp396, <variable>.ImageWidth
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ <variable>.mbheight, <variable>.mbheight
	add	sl, r2, #1	@ tmp398, <variable>.mbheight,
	str	sl, [r7, #28]	@ tmp398, <variable>.ImageHeight
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ D.31013, <variable>.fcm
	str	r5, [r7, #36]	@ tmp404, <variable>.ImageCSP
	cmp	r3, r5	@ D.31013,
	cmpne	r3, #2	@, D.31013,
	movne	lr, #0	@, tmp403
	moveq	lr, #1	@, tmp403
	str	lr, [r7, #32]	@ tmp403, <variable>.IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	ip, [r7, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldrb	r1, [r4, #72]	@ zero_extendqisi2	@ <variable>.ref_pic_type, <variable>.ref_pic_type
	cmp	ip, #1	@ <variable>.IsFrame,
	streq	r5, [r7, #564]	@ tmp404, <variable>.Pic_type
	and	r0, r1, #3	@ tmp406, <variable>.ref_pic_type,
	str	r0, [r7, #556]	@ tmp406, <variable>.rpr_ref_pic_type
	beq	.L246	@,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	cmp	r0, #3	@ <variable>.fcm,
	beq	.L311	@,
.L246:
	movw	ip, #:lower16:78068	@ tmp412,
	movt	ip, #:upper16:78068	@ tmp412,
	ldr	r2, [r4, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L221	@
.L193:
	ldr	r1, [r2, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	movw	ip, #14588	@ tmp313,
	mov	sl, #0	@ tmp320,
	mov	r0, r7	@, pRepairParam
	str	r1, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r1, r9	@, pDecReport
	ldr	r2, [r2, ip]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r2, [r7, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	mov	r2, #1	@ tmp319,
	ldr	r3, [r4, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r3, [r7, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	lr, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	lr, [r7, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	add	lr, sl, #14656	@ tmp322, tmp322,
	ldrh	ip, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r7, #32]	@ tmp319, <variable>.IsFrame
	str	sl, [r7, #564]	@ tmp320, <variable>.Pic_type
	str	r3, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	sl, [r7, #36]	@ tmp320, <variable>.ImageCSP
	ldr	ip, [r4, lr]	@ <variable>.Compress_en,
	str	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L221	@
.L197:
	ldr	ip, [r2, #56]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp364,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	ip, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp363,
	ldr	r2, [r2, #52]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r4, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	r3, #11344	@ tmp366,
	ldr	sl, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	sl, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r7, #32]	@ tmp363, <variable>.IsFrame
	str	lr, [r7, #564]	@ tmp364, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r7, #36]	@ tmp364, <variable>.ImageCSP
	ldr	sl, [r4, r3]	@ <variable>.Compress_en,
	str	sl, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L221	@
.L198:
	ldr	ip, [r2, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r3, #0	@ tmp374,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	ip, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp373,
	ldr	r2, [r2, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	sl, [r4, #68]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	sl, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	sl, #11340	@ tmp376,
	ldr	lr, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r7, #32]	@ tmp373, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp374, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp374, <variable>.ImageCSP
	ldr	lr, [r4, sl]	@ <variable>.Compress_en,
	str	lr, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L221	@
.L199:
	ldr	sl, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r5, #0	@ tmp421,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	mov	sl, #1	@ tmp420,
	ldr	lr, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	lr, [r7, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r2, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	ip, [r2, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	ip, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r2, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r2, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	lr, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	sl, [r7, #32]	@ tmp420, <variable>.IsFrame
	str	r5, [r7, #36]	@ tmp421, <variable>.ImageCSP
	str	lr, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r5, [r7, #564]	@ tmp421, <variable>.Pic_type
	str	r5, [r7, #556]	@ tmp421, <variable>.rpr_ref_pic_type
	ldr	r3, [r4, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L221	@
.L200:
	ldr	sl, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r3, #0	@ tmp432,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	sl, [r7, #4]	@ <variable>.image_curr_rcn_addr, <variable>.ImageAddr
	ldr	ip, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	str	ip, [r7, #8]	@ <variable>.image_curr_rcn_addr, <variable>.Image2DAddr
	mov	ip, #1	@ tmp431,
	ldr	lr, [r2, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	lr, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r2, #3132]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	str	r2, [r7, #20]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	ldr	sl, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	sl, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	ip, [r7, #32]	@ tmp431, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp432, <variable>.Pic_type
	str	lr, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp432, <variable>.ImageCSP
	ldr	r2, [r4, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetVp8MbGroup	@
	b	.L221	@
.L195:
	ldr	r2, [r2, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp384,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r2, #1	@ tmp383,
	ldr	sl, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	sl, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r4, #144]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	ldr	ip, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	sl, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r7, #32]	@ tmp383, <variable>.IsFrame
	str	lr, [r7, #564]	@ tmp384, <variable>.Pic_type
	str	sl, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r7, #36]	@ tmp384, <variable>.ImageCSP
	ldr	r3, [r4, #152]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L221	@
.L196:
	movw	ip, #14440	@ tmp324,
	add	r3, ip, #12	@ tmp325, tmp325,
	ldr	lr, [r2, ip]	@ D.30931, <variable>.CurPicAddr
	mov	r2, #0	@ tmp335,
	str	lr, [r1, #4]	@ D.30931, <variable>.ImageAddr
	ldr	r5, [r4, r3]	@ <variable>.rcn_address, <variable>.rcn_address
	str	r5, [r1, #8]	@ <variable>.rcn_address, <variable>.Image2DAddr
	movw	r1, #14432	@ tmp327,
	ldr	r5, [r4, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	add	r6, r1, #12	@ tmp329, tmp329,
	str	r5, [r7, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	ldr	r1, [r4, r6]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r1, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	ip, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	r6, r3, lsr #1	@ tmp346, <variable>.PicHeightInMb,
	ldrb	r0, [r4, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	str	r2, [r7, #36]	@ tmp335, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp334
	moveq	r0, #1	@, tmp334
	str	r0, [r7, #32]	@ tmp334, <variable>.IsFrame
	ldr	sl, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r5, [r8, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	add	lr, sl, lr	@ tmp337, <variable>.ImgStride, D.30931
	str	lr, [r8, #4]	@ tmp337, <variable>.ImageAddr
	ldr	lr, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r3, [r8, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	r3, #9	@ tmp341,
	str	r0, [r8, #32]	@ tmp334, <variable>.IsFrame
	mul	sl, r3, lr	@ tmp339, tmp341, <variable>.ImgStride
	str	ip, [r8, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	str	r2, [r8, #36]	@ tmp335, <variable>.ImageCSP
	mla	r0, r6, sl, r1	@ tmp349, tmp346, tmp339, <variable>.CurPmvAddr
	str	r0, [r8, #20]	@ tmp349, <variable>.CurrPmvAddr
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ temp.1067, <variable>.PicStruct
	cmp	r3, #3	@ temp.1067,
	streq	r2, [r7, #564]	@ tmp335, <variable>.Pic_type
	beq	.L244	@,
	cmp	r3, #1	@ temp.1067,
	streq	r3, [r7, #564]	@ temp.1067, <variable>.Pic_type
.L244:
	movw	lr, #14864	@ tmp356,
	mov	r0, r7	@, pRepairParam
	ldr	r2, [r4, lr]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L221	@
.L194:
	ldr	r3, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r2, #0	@ tmp306,
	str	r3, [r1, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	r0, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r0, [r1, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	sl, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	sl, [r1, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	lr, [r4, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	lr, [r1, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	ip, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r1, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r1, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r1, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r2, [r7, #36]	@ tmp306, <variable>.ImageCSP
	cmp	r3, #3	@ <variable>.PictureStructure,
	movne	r0, #0	@, tmp305
	moveq	r0, #1	@, tmp305
	str	r0, [r7, #32]	@ tmp305, <variable>.IsFrame
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.1062, <variable>.PictureStructure
	cmp	r3, #1	@ temp.1062,
	beq	.L299	@,
	cmp	r3, #2	@ temp.1062,
	beq	.L299	@,
	cmp	r3, #3	@ temp.1062,
	streq	r2, [r7, #564]	@ tmp306, <variable>.Pic_type
.L241:
	mov	r1, #45312	@ tmp310,
	mov	r0, r7	@, pRepairParam
	ldr	r2, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L221	@
.L306:
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r1, #1	@ prephitmp.1003, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1003
	b	.L228	@
.L308:
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r1, #1	@ prephitmp.1085, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1085
	b	.L209	@
.L299:
	str	r3, [r7, #564]	@ temp.1062, <variable>.Pic_type
	b	.L241	@
.L311:
	ldrb	r3, [r4, #10]	@ zero_extendqisi2	@ D.31027, <variable>.curparity
	cmp	r3, #0	@ D.31027,
	beq	.L300	@,
	cmp	r3, #1	@ D.31027,
	bne	.L246	@,
.L300:
	add	r1, r3, #1	@ tmp411, tmp411,
	str	r1, [r7, #564]	@ tmp411, <variable>.Pic_type
	b	.L246	@
.L310:
	ldr	ip, [r4, #816]	@ D.30827, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.30827,
	beq	.L231	@,
	ldr	r3, [r4, #304]	@ D.30823, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.30818, D.30823
	bne	.L232	@,
	tst	ip, #1	@ D.30827,
	mov	r1, r4	@ ivtmp.1037, pDecParam
	mov	r0, #0	@ i.1054,
	bne	.L215	@,
	ldr	r3, [r4, #308]	@ D.30823, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1054,
	add	r1, r4, #4	@ ivtmp.1037, pDecParam,
	cmp	r3, r2	@ D.30823, D.30818
	beq	.L215	@,
	b	.L232	@
.L287:
	ldr	r3, [lr, #308]	@ D.30823, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.30823, D.30818
	bne	.L232	@,
.L215:
	add	r3, r0, #1	@ tmp471, i.1054,
	add	lr, r1, #4	@ tmp470, ivtmp.1037,
	cmp	ip, r3	@ D.30827, tmp471
	add	r0, r3, #1	@ i.1054, tmp471,
	bls	.L231	@,
	ldr	r3, [r1, #308]	@ D.30823, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1037, tmp470,
	cmp	r3, r2	@ D.30823, D.30818
	beq	.L287	@,
	str	r3, [r7, #16]	@ D.30878, <variable>.RefImageAddr
	b	.L231	@
.L309:
	mov	r0, r7	@, pRepairParam
	mov	r1, r9	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L211	@
.L307:
	mov	r0, r7	@, pRepairParam
	mov	r1, r9	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L230	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
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
.LFB1350:
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
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	str	lr, [r4, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	ldr	ip, [r5, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	ip, [r4, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r5, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r4, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r5, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r2, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #52]	@ D.30703, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ D.30703, <variable>.ImageWidth
	ldrh	lr, [r5, #54]	@ D.30705, <variable>.PicHeightInMb
	str	r7, [r4, #32]	@ tmp149, <variable>.IsFrame
	str	r6, [r4, #36]	@ tmp150, <variable>.ImageCSP
	mov	r3, lr	@, D.30705
	str	lr, [r4, #28]	@ D.30705, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp167,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp167,
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	str	r7, [r4, #552]	@ tmp149, <variable>.ValidGroupNum
	mul	r2, r1, ip	@ tmp159, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r3, #80]	@ D.30717, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r6, [r4, #40]	@ movhi	@ tmp150, <variable>.StartMbn
	cmp	ip, r6	@ D.30717,
	sub	r1, r2, #1	@ tmp161, tmp159,
	strh	r1, [r4, #42]	@ movhi	@ tmp161, <variable>.EndMbn
	ldr	r3, [r5, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30720, tmp149
	str	r7, [r4, #568]	@ tmp149, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp150, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r1, r5	@, pVp6DecParam
	mov	r2, r6	@, tmp150
	mov	r3, r8	@, VdhId
	mov	r0, #10	@,
	blx	ip	@ D.30717
	subs	r0, r0, #0	@ D.30720,,
	movne	r0, #1	@ D.30720
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vp6, .-PostPro_CopyYuv_Vp6
	.align	2
	.global	PostPro_CopyYuv_Vc1
	.type	PostPro_CopyYuv_Vc1, %function
PostPro_CopyYuv_Vc1:
	.fnstart
.LFB1349:
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
	movw	lr, #:lower16:16382	@ D.30672,
	ldr	r7, [r0, r1]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	movt	lr, #:upper16:16382	@ D.30672,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
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
	ldrb	r2, [r5, #6]	@ zero_extendqisi2	@ <variable>.mbwidth, <variable>.mbwidth
	add	r2, r2, r7	@ D.30665, <variable>.mbwidth,
	str	r2, [r4, #24]	@ D.30665, <variable>.ImageWidth
	ldrh	r3, [r5, #80]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	str	r7, [r4, #32]	@ tmp159, <variable>.IsFrame
	add	ip, r3, #15	@ tmp155, <variable>.DispPicHeight,
	str	r6, [r4, #36]	@ tmp160, <variable>.ImageCSP
	mov	r3, ip, asr #4	@ tmp156, tmp155,
	add	ip, r3, r7	@ tmp157, tmp156,
	and	r3, ip, lr	@ D.30672, tmp157, D.30672
	str	r3, [r4, #28]	@ D.30672, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp178,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp178,
	movw	r3, #:lower16:78068	@ tmp173,
	movt	r3, #:upper16:78068	@ tmp173,
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	mul	r1, r0, ip	@ tmp169, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r2, #80]	@ D.30684, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r7, [r4, #552]	@ tmp159, <variable>.ValidGroupNum
	strh	r6, [r4, #40]	@ movhi	@ tmp160, <variable>.StartMbn
	cmp	ip, r6	@ D.30684,
	sub	r2, r1, #1	@ tmp171, tmp169,
	strh	r2, [r4, #42]	@ movhi	@ tmp171, <variable>.EndMbn
	ldr	r3, [r5, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30687, tmp159
	str	r7, [r4, #568]	@ tmp159, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp160, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r7	@, tmp159
	mov	r1, r5	@, pVc1DecParam
	mov	r2, r6	@, tmp160
	mov	r3, r8	@, VdhId
	blx	ip	@ D.30684
	subs	r0, r0, #0	@ D.30687,,
	movne	r0, #1	@ D.30687
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vc1, .-PostPro_CopyYuv_Vc1
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
.LFB1346:
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
	add	r6, r2, r2, asl #5	@, tmp143, VdhId.412, VdhId.412,
	movw	r3, #:lower16:g_DecReport	@ tmp145,
	movt	r3, #:upper16:g_DecReport	@ tmp145,
	ldr	ip, [ip, #84]	@ D.30587, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r5, r2	@ VdhId.412, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, r3, r6, asl #4	@, pDecReport, tmp145, tmp143,
	cmp	ip, #0	@ D.30587,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L323	@,
	mov	r1, r6	@, pDecReport
	blx	ip	@ D.30587
.L324:
	movw	r0, #:lower16:g_RepairParam	@ tmp151,
	movt	r0, #:upper16:g_RepairParam	@ tmp151,
	movw	r1, #1144	@ tmp149,
	mov	r2, r7	@, pDecParam
	mla	r1, r1, r5, r0	@, tmp149, VdhId.412, tmp151
	mov	r3, r6	@, pDecReport
	mov	r0, r4	@, VidStd
	bl	PostPro_GetRepairParam	@
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r4, r0	@ err_ratio,
	mov	r0, #22	@,
	mov	r2, r4	@, err_ratio
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L323:
	mov	r0, ip	@, D.30587
	movw	r1, #:lower16:.LC6	@,
	mov	r2, #46	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L324	@
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
	.ascii	"pRepairParam[0].MbGroup[i].EndMbn=%d,pRepairParam[0"
	.ascii	"].MbGroup[i].StartMbn=%d\012\000"
	.space	3
.LC4:
	.ascii	"total_mbs=%d,err_mbs=%d\012\000"
	.space	3
.LC5:
	.ascii	"pRepairParam->ImageWidth=%d,pRepairParam->ImageHeig"
	.ascii	"ht=%d\012\000"
	.space	2
.LC6:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC7:
	.ascii	"err_ratio=%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
