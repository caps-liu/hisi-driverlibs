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
	.file	"vdm_hal_mpeg2.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_mpeg2.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_mpeg2.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_mpeg2.o
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
	.global	MP2HAL_V200R003MPW_InitHal
	.type	MP2HAL_V200R003MPW_InitHal, %function
MP2HAL_V200R003MPW_InitHal:
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
	.size	MP2HAL_V200R003MPW_InitHal, .-MP2HAL_V200R003MPW_InitHal
	.align	2
	.global	MP2HAL_V200R003MPW_MakeReg
	.type	MP2HAL_V200R003MPW_MakeReg, %function
MP2HAL_V200R003MPW_MakeReg:
	.fnstart
.LFB1349:
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
	ldrh	r5, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mul	ip, r4, r5	@ tmp142, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldr	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	sub	r4, ip, #1	@ tmp143, tmp142,
	bfi	r5, r4, #0, #20	@ tmp144, tmp143,,
	str	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	ldr	r4, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	ip, [r4, #0]	@ tmp146,* <variable>.basic_cfg0
	orr	r3, ip, #1073741824	@ tmp218, tmp146,
	str	r3, [r4, #0]	@ tmp218,* <variable>.basic_cfg0
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mov	r4, #3	@ tmp152,
	ldr	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	bfc	ip, #31, #1	@ tmp149,,
	str	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	bfi	ip, r4, #0, #4	@ tmp151, tmp152,,
	str	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r2, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	mov	r4, r4, lsr #6	@ tmp154, <variable>.VahbStride,
	bfi	ip, r4, #4, #10	@ tmp156, tmp154,,
	str	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp158,* <variable>.basic_cfg1
	orr	r3, ip, #16384	@ tmp219, tmp158,
	str	r3, [r4, #0]	@ tmp219,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	mov	r4, #1	@ tmp164,
	ldr	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	bfc	ip, #15, #1	@ tmp161,,
	str	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	bfi	ip, r4, #16, #12	@ tmp163, tmp164,,
	str	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp166,* <variable>.basic_cfg1
	orr	r3, ip, #536870912	@ tmp220, tmp166,
	str	r3, [r4, #0]	@ tmp220,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	bfc	ip, #31, #1	@ tmp169,,
	str	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	bfc	r4, #28, #1	@ tmp171,,
	str	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	bfc	ip, #30, #1	@ tmp173,,
	str	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	ldr	r4, [r0, #60]	@ <variable>.FfAptEn, <variable>.FfAptEn
	mov	ip, #0	@ tmp177,
	ldr	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	bfc	r3, #0, #1	@ tmp175,,
	str	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	str	ip, [r3, #0]	@ tmp177,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	bfi	ip, r4, #0, #2	@ tmp180, <variable>.FwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	bfi	ip, r4, #2, #2	@ tmp183, <variable>.BwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	ldr	r4, [r0, #16]	@ <variable>.avm_addr, <variable>.avm_addr
	ldr	r3, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp186, <variable>.MsgSlotAddr,
	str	ip, [r4, #0]	@ tmp186, <variable>.av_msg_addr
	ldr	ip, [r0, #20]	@ <variable>.vam_addr, <variable>.vam_addr
	ldr	r3, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r4, r3, #15	@ tmp189, <variable>.MsgSlotAddr,
	str	r4, [ip, #0]	@ tmp189, <variable>.va_msg_addr
	ldr	r3, [r0, #28]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	ip, r1, #255	@ tmp192, <variable>.CurPicPhyAddr,
	str	ip, [r3, #0]	@ tmp192, <variable>.ystaddr_1d
	ldrb	r4, [r2, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r3, [r2, #148]	@ temp.541, <variable>.PicHeightInMb
	sub	r1, r4, #1	@ tmp195, <variable>.PictureStructure,
	ldr	ip, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r1, r1	@ tmp196, tmp195
	cmp	r1, #1	@ tmp196,
	str	r4, [ip, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	r1, #2	@ iftmp.436,
	movhi	r1, #1	@ iftmp.436,
	mul	r1, r3, r1	@ tmp200, temp.541, iftmp.436
	ldrh	ip, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #36]	@ <variable>.uvoffset_1d, <variable>.uvoffset_1d
	mul	r1, ip, r1	@ tmp202, <variable>.PicWidthInMb, tmp200
	mov	r1, r1, asl #8	@ tmp203, tmp202,
	str	r1, [r3, #0]	@ tmp203, <variable>.uvoffset_1d
	ldr	ip, [r2, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r3, [r0, #24]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	cmp	ip, #0	@ <variable>.StreamLength,
	ldreq	r1, [r2, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldrne	r1, [r2, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldreq	r2, [r2, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldrne	r2, [r2, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r0, r2, r1, lsr #3	@, tmp214, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, r0, #15	@ tmp216, tmp214,
	mov	r0, #0	@,
	str	r2, [r3, #0]	@ tmp216, <variable>.stream_base_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2HAL_V200R003MPW_MakeReg, .-MP2HAL_V200R003MPW_MakeReg
	.align	2
	.global	MP2HAL_V200R003MPW_CfgReg
	.type	MP2HAL_V200R003MPW_CfgReg, %function
MP2HAL_V200R003MPW_CfgReg:
	.fnstart
.LFB1351:
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
	cmp	r2, #1	@ VdhId,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r5, r2	@ VdhId, VdhId
	mov	r0, #0	@ tmp225,
	mov	r7, r3	@ StreamBaseAddr, StreamBaseAddr
	str	r0, [fp, #-48]	@ tmp225, D32
	bls	.L41	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31557,
.L12:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L41:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L52	@,
.L13:
	movw	lr, #1148	@ tmp233,
	movw	r6, #:lower16:g_HwMem	@ tmp434,
	mul	r2, lr, r5	@ tmp232, tmp233, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp434,
	mvn	r3, #0	@ tmp236,
	mov	lr, #0	@ tmp237,
	mov	r0, lr	@ tmp242, tmp237
	mov	ip, #3	@ tmp262,
	ldr	r9, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r9, #32]	@ tmp236,
	ldrh	sl, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r9, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r8, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	sl, r9, sl	@ tmp240, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	sl, sl, r3	@ tmp241, tmp240,
	bfi	r0, sl, #0, #20	@ tmp242, tmp241,,
	orr	sl, r0, #1090519040	@ tmp251, tmp242,
	orr	r0, sl, #4194304	@ tmp251, tmp251,
	mov	sl, #45312	@ tmp272,
	bfi	r0, lr, #25, #1	@ tmp251, tmp237,,
	str	r0, [r8, #8]	@ tmp251,
	ldr	r0, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r8, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, sl]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, r0, lsr #6	@ tmp260, <variable>.VahbStride,
	bfi	ip, r0, #4, #10	@ tmp262, tmp260,,
	orr	r0, ip, #16384	@ tmp265, tmp262,
	mov	ip, #1	@ tmp267,
	bic	r0, r0, #32768	@ tmp266, tmp265,
	bfi	r0, ip, #16, #12	@ tmp266, tmp267,,
	orr	ip, r0, #536870912	@ tmp270, tmp266,
	bic	r0, ip, #-1879048192	@ tmp274, tmp270,
	bfi	r0, sl, #30, #1	@ tmp274, <variable>.Compress_en,,
	str	r0, [r8, #12]	@ tmp274,
	ldr	r0, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, ip, #15	@ tmp283, <variable>.MsgSlotAddr,
	str	ip, [r0, #16]	@ tmp283,
	ldr	r0, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	ldr	ip, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r1, r0, #15	@ tmp292, <variable>.MsgSlotAddr,
	movw	r0, #45304	@ tmp299,
	str	r1, [ip, #20]	@ tmp292,
	ldr	ip, [r4, r0]	@ D.31614, <variable>.SlcNum
	str	lr, [fp, #-48]	@ tmp237, D32
	cmp	ip, lr	@ D.31614,
	beq	.L15	@,
	ldr	r2, [r4, #248]	@ temp.653, <variable>.BsPhyAddr
	add	r1, ip, r3	@ tmp435, D.31614,
	and	r0, r1, #1	@ tmp437, tmp435,
	cmp	r2, lr	@ temp.653,
	beq	.L30	@,
	ldr	r1, [r4, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	ble	.L30	@,
	bic	r2, r2, #15	@ tmp447, temp.653,
	cmp	r3, r2	@ stream_base_addr.656, tmp447
	movcs	r3, r2	@ stream_base_addr.656, tmp447
.L30:
	ldr	r2, [r4, #252]	@ D.31607, <variable>.BsPhyAddr
	cmp	r2, #0	@ D.31607,
	beq	.L32	@,
	ldr	lr, [r4, #260]	@ tmp449, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp449,
	ble	.L32	@,
	bic	r1, r2, #15	@ tmp450, D.31607,
	cmp	r3, r1	@ stream_base_addr.656, tmp450
	movcs	r3, r1	@ stream_base_addr.656, tmp450
.L32:
	mov	r1, #1	@ i,
	cmp	r1, ip	@ i, D.31614
	add	r2, r4, #44	@ ivtmp.587, pMp2DecParam,
	beq	.L29	@,
	cmp	r0, #0	@ tmp437,
	beq	.L16	@,
	ldr	r0, [r2, #248]	@ temp.653, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.653,
	beq	.L37	@,
	b	.L43	@
.L16:
	ldr	r0, [r2, #248]	@ temp.653, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.653,
	beq	.L19	@,
	ldr	lr, [r2, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L19	@,
	bic	r0, r0, #15	@ tmp303, temp.653,
	cmp	r3, r0	@ stream_base_addr.656, tmp303
	movcs	r3, r0	@ stream_base_addr.656, tmp303
.L19:
	ldr	r0, [r2, #252]	@ D.31607, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.31607,
	beq	.L17	@,
	ldr	lr, [r2, #260]	@ tmp300, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp300,
	ble	.L17	@,
	bic	r0, r0, #15	@ tmp301, D.31607,
	cmp	r3, r0	@ stream_base_addr.656, tmp301
	movcs	r3, r0	@ stream_base_addr.656, tmp301
.L17:
	add	r2, r2, #44	@ tmp439, ivtmp.587,
	add	r1, r1, #1	@ tmp438, i,
	ldr	r0, [r2, #248]	@ temp.653, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.653,
	beq	.L37	@,
.L43:
	ldr	lr, [r2, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L37	@,
	bic	r0, r0, #15	@ tmp458, temp.653,
	cmp	r3, r0	@ stream_base_addr.656, tmp458
	movcs	r3, r0	@ stream_base_addr.656, tmp458
.L37:
	ldr	r0, [r2, #252]	@ D.31607, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.31607,
	beq	.L39	@,
	ldr	lr, [r2, #260]	@ tmp460, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp460,
	ble	.L39	@,
	bic	r0, r0, #15	@ tmp461, D.31607,
	cmp	r3, r0	@ stream_base_addr.656, tmp461
	movcs	r3, r0	@ stream_base_addr.656, tmp461
.L39:
	add	r1, r1, #1	@ i, tmp438,
	add	r2, r2, #44	@ ivtmp.587, tmp439,
	cmp	r1, ip	@ i, D.31614
	bne	.L16	@,
.L29:
	cmn	r3, #1	@ stream_base_addr.656,
	beq	.L15	@,
	movw	r1, #1148	@ tmp309,
	str	r3, [r7, #0]	@ stream_base_addr.656,* StreamBaseAddr
	mul	r7, r1, r5	@ tmp308, tmp309, VdhId
	mov	lr, #13056	@ tmp312,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #24]	@ stream_base_addr.656,
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [fp, #-48]	@ tmp312, D32
	str	lr, [r2, #48]	@ tmp312,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp321,
	movt	r0, #:upper16:3148803	@ tmp321,
	str	r0, [fp, #-48]	@ tmp321, D32
	movw	r1, #2047	@ tmp382,
	str	r0, [ip, #60]	@ tmp321,
	ldr	r2, [fp, #-48]	@ D32.613, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #64]	@ D32.613,
	ldr	ip, [fp, #-48]	@ D32.616, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #68]	@ D32.616,
	ldr	r2, [fp, #-48]	@ D32.619, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.619,
	ldr	ip, [fp, #-48]	@ D32.622, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #76]	@ D32.622,
	ldr	r2, [fp, #-48]	@ D32.625, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.625,
	ldr	ip, [fp, #-48]	@ D32.628, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #84]	@ D32.628,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r2, #15	@ tmp361, <variable>.CurPicPhyAddr,
	str	r0, [r3, #96]	@ tmp361,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldrb	r7, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.632, <variable>.PicHeightInMb
	sub	r2, r7, #1	@ tmp370, <variable>.PictureStructure,
	str	ip, [r3, #100]	@ <variable>.VahbStride,
	ldrh	r3, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r7, r2	@ tmp371, tmp370
	cmp	r7, #1	@ tmp371,
	mov	r3, r3, asl #4	@ D.31654, <variable>.PicWidthInMb,
	sub	ip, r3, #1	@ tmp381, D.31654,
	movls	r7, #2	@ iftmp.449,
	movhi	r7, #1	@ iftmp.449,
	cmp	ip, r1	@ tmp381, tmp382
	mul	r2, r0, r7	@ height_in_mb, temp.632, iftmp.449
	bls	.L24	@,
	sub	r0, r3, #2048	@ tmp383, D.31654,
	sub	r7, r0, #1	@ tmp383, tmp383,
	cmp	r7, r1	@ tmp383, tmp382
	movls	r3, #32	@ level,
	bls	.L26	@,
	sub	ip, r3, #4096	@ tmp386, D.31654,
	sub	lr, ip, #1	@ tmp386, tmp386,
	cmp	lr, r1	@ tmp386, tmp382
	movls	r3, #48	@ level,
	bls	.L26	@,
	sub	r3, r3, #6144	@ tmp389, D.31654,
	sub	r3, r3, #1	@ tmp389, tmp389,
	cmp	r3, r1	@ tmp389, tmp382
	movls	r3, #64	@ level,
	bls	.L26	@,
.L24:
	mov	r3, #16	@ level,
.L26:
	mov	r0, r2, asl #4	@ tmp392, height_in_mb,
	add	r7, r2, #1	@ tmp397, height_in_mb,
	add	ip, r0, #31	@ tmp393, tmp392,
	movw	lr, #1148	@ tmp405,
	ldr	r0, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r2, r7, lsr #1	@ tmp398, tmp397,
	mov	r1, ip, lsr #5	@ tmp394, tmp393,
	mov	r7, #0	@ tmp408,
	mul	r5, lr, r5	@ tmp404, tmp405, VdhId
	mul	r3, r1, r3	@ D.31677, tmp394, level
	movw	r1, #:lower16:.LC4	@,
	mul	lr, r0, r2	@ tmp399, <variable>.VahbStride, tmp398
	mov	r0, #3	@,
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r7	@ tmp420, tmp408
	bfi	r2, r7, #0, #1	@ tmp420, tmp408,,
	movt	r1, #:upper16:.LC4	@,
	add	lr, lr, r3, asl #4	@, tmp401, tmp399, D.31677,
	mov	r3, r3, asl #5	@ D32.454, D.31677,
	mov	lr, lr, asl #1	@ tmp402, tmp401,
	str	lr, [ip, #104]	@ tmp402,
	ldr	ip, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	lr, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	ip, ip, r0	@ tmp412, <variable>.FwdRefIsFldSave,
	bfi	ip, r4, #2, #2	@ tmp412, <variable>.BwdRefIsFldSave,,
	str	ip, [lr, #148]	@ tmp412,
	ldr	lr, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [lr, #152]	@ tmp420,
	ldr	r2, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ D32.454, D32
	str	r3, [r2, #108]	@ D32.454,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.31557, tmp408
	b	.L12	@
.L52:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-56]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-56]	@,
	subs	r2, r0, #0	@ D.31561,
	strne	r2, [r1, #0]	@ D.31561, <variable>.pVdmRegVirAddr
	bne	.L13	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31557,
	b	.L12	@
.L15:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp305,
	mvn	r0, #0	@ D.31557,
	str	r3, [r7, #0]	@ tmp305,* StreamBaseAddr
	b	.L12	@
	.fnend
	.size	MP2HAL_V200R003MPW_CfgReg, .-MP2HAL_V200R003MPW_CfgReg
	.align	2
	.global	MP2HAL_V200R003MPW_MakeDnMsg
	.type	MP2HAL_V200R003MPW_MakeDnMsg, %function
MP2HAL_V200R003MPW_MakeDnMsg:
	.fnstart
.LFB1350:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrh	r3, [r2, #152]	@ D.31312, <variable>.PicWidthInMb
	mov	r4, r2	@ pMp2DecParam, pMp2DecParam
	mov	r5, r0	@ pDnMsgInf, pDnMsgInf
	cmp	r3, #352	@ D.31312,
	mov	r8, r1	@ pHwMem, pHwMem
	bhi	.L65	@,
	ldrh	r2, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #264	@ <variable>.PicHeightInMb,
	bhi	.L66	@,
	ldr	lr, [r0, #0]	@ <variable>.d0, <variable>.d0
	sub	r0, r3, #1	@ tmp198, D.31312,
	ldr	ip, [lr, #0]	@ tmp199,* <variable>.d0
	bfi	ip, r0, #0, #9	@ tmp199, tmp198,,
	str	ip, [lr, #0]	@ tmp199,* <variable>.d0
	ldr	r3, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldrh	r7, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r2, [r3, #0]	@ tmp204,* <variable>.d0
	sub	r6, r7, #1	@ tmp203, <variable>.PicHeightInMb,
	bfi	r2, r6, #16, #9	@ tmp204, tmp203,,
	str	r2, [r3, #0]	@ tmp204,* <variable>.d0
	ldr	r0, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldr	r1, [r4, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	ldr	lr, [r0, #0]	@ tmp207,* <variable>.d0
	bfi	lr, r1, #25, #1	@ tmp207, <variable>.Mpeg1Flag,,
	str	lr, [r0, #0]	@ tmp207,* <variable>.d0
	ldr	r7, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldr	r6, [r7, #0]	@ tmp209,* <variable>.d1
	bfi	r6, ip, #0, #1	@ tmp209, <variable>.FramePredFrameDct,,
	str	r6, [r7, #0]	@ tmp209,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldr	r0, [r3, #0]	@ tmp214,* <variable>.d1
	bfi	r0, r2, #8, #2	@ tmp214, <variable>.PictureStructure,,
	str	r0, [r3, #0]	@ tmp214,* <variable>.d1
	ldr	lr, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	ldr	ip, [lr, #0]	@ tmp219,* <variable>.d1
	bfi	ip, r1, #10, #1	@ tmp219, <variable>.SecondFieldFlag,,
	str	ip, [lr, #0]	@ tmp219,* <variable>.d1
	ldr	r6, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r7, [r4, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	ldr	r2, [r6, #0]	@ tmp224,* <variable>.d1
	bfi	r2, r7, #16, #1	@ tmp224, <variable>.ConcealmentMotionVectors,,
	str	r2, [r6, #0]	@ tmp224,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	ldr	lr, [r3, #0]	@ tmp229,* <variable>.d1
	bfi	lr, r0, #24, #3	@ tmp229, <variable>.PicCodingType,,
	str	lr, [r3, #0]	@ tmp229,* <variable>.d1
	ldr	ip, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	ldr	r7, [ip, #0]	@ tmp234,* <variable>.d1
	bfi	r7, r1, #27, #1	@ tmp234, <variable>.Mp1FwdmvFullPel,,
	str	r7, [ip, #0]	@ tmp234,* <variable>.d1
	ldr	r2, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r6, [r4, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	ldr	r0, [r2, #0]	@ tmp239,* <variable>.d1
	bfi	r0, r6, #28, #1	@ tmp239, <variable>.Mp1BwdmvFullPel,,
	str	r0, [r2, #0]	@ tmp239,* <variable>.d1
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	lr, [r4, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	ip, [r3, #0]	@ tmp244,* <variable>.d2
	bfi	ip, lr, #0, #4	@ tmp244, <variable>.Fcode,,
	str	ip, [r3, #0]	@ tmp244,* <variable>.d2
	ldr	r7, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r6, [r7, #0]	@ tmp249,* <variable>.d2
	bfi	r6, r1, #8, #4	@ tmp249, <variable>.Fcode,,
	str	r6, [r7, #0]	@ tmp249,* <variable>.d2
	ldr	r0, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	lr, [r0, #0]	@ tmp254,* <variable>.d2
	bfi	lr, r2, #16, #4	@ tmp254, <variable>.Fcode,,
	str	lr, [r0, #0]	@ tmp254,* <variable>.d2
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r7, [r3, #0]	@ tmp259,* <variable>.d2
	bfi	r7, ip, #24, #4	@ tmp259, <variable>.Fcode,,
	str	r7, [r3, #0]	@ tmp259,* <variable>.d2
	ldr	r6, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	ldr	r2, [r6, #0]	@ tmp264,* <variable>.d2
	bfi	r2, r1, #31, #1	@ tmp264, <variable>.TopFieldFirst,,
	str	r2, [r6, #0]	@ tmp264,* <variable>.d2
	ldr	lr, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r0, [r4, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldr	ip, [lr, #0]	@ tmp269,* <variable>.d3
	bfi	ip, r0, #0, #2	@ tmp269, <variable>.IntraDcPrecision,,
	str	ip, [lr, #0]	@ tmp269,* <variable>.d3
	ldr	r3, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r7, [r4, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldr	r6, [r3, #0]	@ tmp274,* <variable>.d3
	bfi	r6, r7, #8, #1	@ tmp274, <variable>.QuantType,,
	str	r6, [r3, #0]	@ tmp274,* <variable>.d3
	ldr	r2, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	ldr	r0, [r2, #0]	@ tmp279,* <variable>.d3
	bfi	r0, r1, #16, #1	@ tmp279, <variable>.IntraVlcFormat,,
	str	r0, [r2, #0]	@ tmp279,* <variable>.d3
	ldr	ip, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	ldr	r7, [ip, #0]	@ tmp284,* <variable>.d3
	bfi	r7, lr, #24, #1	@ tmp284, <variable>.AlternateScan,,
	str	r7, [ip, #0]	@ tmp284,* <variable>.d3
	ldr	r3, [r5, #16]	@ <variable>.d4, <variable>.d4
	ldr	r6, [r4, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	r1, r6, #15	@ tmp290, <variable>.BwdRefPhyAddr,
	str	r1, [r3, #0]	@ tmp290, <variable>.bwd_address
	ldr	r0, [r5, #20]	@ <variable>.d5, <variable>.d5
	ldr	r2, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	lr, r2, #15	@ tmp293, <variable>.FwdRefPhyAddr,
	str	lr, [r0, #0]	@ tmp293, <variable>.fwd_address
	ldr	r7, [r5, #24]	@ <variable>.d6, <variable>.d6
	ldr	ip, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r6, ip, #15	@ tmp296, <variable>.DispFramePhyAddr,
	str	r6, [r7, #0]	@ tmp296, <variable>.rcn_address
	ldr	r3, [r5, #28]	@ <variable>.d7, <variable>.d7
	ldr	r1, [r4, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r0, r1, #15	@ tmp299, <variable>.PmvColmbPhyAddr,
	str	r0, [r3, #0]	@ tmp299, <variable>.current_pmv_addr
	ldr	r0, [r4, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.31377,
	ldr	r0, [r4, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r7, r0	@ D.31381,
	beq	.L67	@,
	ldr	lr, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31377,
	ldr	sl, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r4, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r3, [r5, #32]	@ <variable>.d8, <variable>.d8
	add	sl, r0, sl, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r1, r2, lr, lsr #3	@, BytePos0.752, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, sl, #15	@ tmp367, BytePos1,
	bic	ip, r1, #15	@ tmp366, BytePos0.752,
	and	r1, r1, #15	@ tmp375, BytePos0.752,
	ldr	lr, [r3, #0]	@ tmp369,* <variable>.d8
	rsb	r0, r2, ip	@ tmp368, tmp367, tmp366
	bfi	lr, r0, #0, #24	@ tmp369, tmp368,,
	str	lr, [r3, #0]	@ tmp369,* <variable>.d8
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r2, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	lr, [r3, #0]	@ tmp371,* <variable>.d9
	bfi	lr, r2, #0, #24	@ tmp371, <variable>.StreamLength,,
	str	lr, [r3, #0]	@ tmp371,* <variable>.d9
	ldr	r2, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	lr, [r2, #0]	@ tmp384,* <variable>.d9
	and	r0, ip, #7	@ tmp380, <variable>.StreamBitOffset,
	add	r1, r0, r1, asl #3	@, tmp383, tmp380, tmp375,
	bfi	lr, r1, #24, #7	@ tmp384, tmp383,,
	str	lr, [r2, #0]	@ tmp384,* <variable>.d9
	beq	.L60	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31377, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp388,* D.31377
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp390,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp389,
	str	lr, [sp, #0]	@ tmp390,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp391,
	str	lr, [sp, #4]	@ tmp391,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp392,
	str	lr, [sp, #8]	@ tmp392,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp393,
	str	lr, [sp, #12]	@ tmp393,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp394,
	str	lr, [sp, #16]	@ tmp394,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp395,
	str	lr, [sp, #20]	@ tmp395,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC11	@,
	add	ip, r3, #7	@ tmp402, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC11	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp402
	mov	ip, r2, lsr #3	@ tmp396, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp398, tmp396,
	add	r3, r2, r3, asr #3	@, tmp404, tmp398, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.776, D.31377, tmp404
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp406,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp408,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp407,
	str	lr, [sp, #0]	@ tmp408,
	ldrb	r6, [ip, #3]	@ zero_extendqisi2	@ tmp409,
	str	r6, [sp, #4]	@ tmp409,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp410,
	str	lr, [sp, #8]	@ tmp410,
	ldrb	r6, [ip, #5]	@ zero_extendqisi2	@ tmp411,
	str	r6, [sp, #12]	@ tmp411,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp412,
	str	lr, [sp, #16]	@ tmp412,
	ldrb	ip, [ip, #7]	@ zero_extendqisi2	@ tmp413,
	str	ip, [sp, #20]	@ tmp413,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC12	@,
	ldr	r3, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC12	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L60:
	ldr	ip, [r5, #40]	@ <variable>.d10, <variable>.d10
	and	sl, sl, #15	@ tmp426, BytePos1,
	cmp	r7, #0	@ D.31381,
	ldr	r2, [ip, #0]	@ tmp419,* <variable>.d10
	bfc	r2, #0, #24	@ tmp419,,
	str	r2, [ip, #0]	@ tmp419,* <variable>.d10
	ldr	r3, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r1, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r0, [r3, #0]	@ tmp423,* <variable>.d11
	add	r6, r1, #24	@ tmp421, <variable>.StreamLength,
	bfi	r0, r6, #0, #24	@ tmp423, tmp421,,
	str	r0, [r3, #0]	@ tmp423,* <variable>.d11
	ldr	r6, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	ip, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r6, #0]	@ tmp435,* <variable>.d11
	and	r2, ip, #7	@ tmp431, <variable>.StreamBitOffset,
	add	r1, r2, sl, asl #3	@, tmp434, tmp431, tmp426,
	bfi	r0, r1, #24, #7	@ tmp435, tmp434,,
	str	r0, [r6, #0]	@ tmp435,* <variable>.d11
	beq	.L61	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	add	r6, r7, r3, lsr #3	@, rp, D.31381, <variable>.StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ tmp439,* D.31381
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp441,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp440,
	str	ip, [sp, #0]	@ tmp441,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp442,
	str	lr, [sp, #4]	@ tmp442,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp443,
	str	ip, [sp, #8]	@ tmp443,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp444,
	str	lr, [sp, #12]	@ tmp444,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp445,
	str	ip, [sp, #16]	@ tmp445,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp446,
	str	lr, [sp, #20]	@ tmp446,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC14	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC14	@,
	add	r2, r6, #7	@ tmp453, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp447, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp453
	sub	r2, ip, #8	@ tmp449, tmp447,
	add	r3, r2, r6, asr #3	@, tmp455, tmp449, <variable>.StreamLength,
	add	r6, r7, r3	@ rp.812, D.31381, tmp455
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp457,
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp459,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp458,
	str	ip, [sp, #0]	@ tmp459,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp460,
	str	lr, [sp, #4]	@ tmp460,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp461,
	str	ip, [sp, #8]	@ tmp461,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp462,
	str	lr, [sp, #12]	@ tmp462,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp463,
	str	ip, [sp, #16]	@ tmp463,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp464,
	str	lr, [sp, #20]	@ tmp464,
	bl	dprint_vfmw	@
.L61:
	mov	r3, r5	@ ivtmp.691, pDnMsgInf
	mov	r0, #0	@ i,
.L59:
	ldr	ip, [r3, #48]	@ tmp465, <variable>.dmatrix
	add	r1, r3, #4	@ tmp482, ivtmp.691,
	ldrb	r6, [r4, #80]	@ zero_extendqisi2	@ tmp466, <variable>.IntraQuantTab
	add	r2, r4, #2	@ tmp483, ivtmp.694,
	add	r0, r0, #2	@ i, i,
	cmp	r0, #32	@ i,
	strb	r6, [ip, #0]	@ tmp466, <variable>.intra_quantiser_matrix_even
	ldr	ip, [r3, #48]	@ tmp468, <variable>.dmatrix
	ldrb	r6, [r4, #81]	@ zero_extendqisi2	@ tmp469, <variable>.IntraQuantTab
	strb	r6, [ip, #2]	@ tmp469, <variable>.intra_quantiser_matrix_odd
	ldr	ip, [r3, #48]	@ tmp471, <variable>.dmatrix
	ldrb	r6, [r4, #16]	@ zero_extendqisi2	@ tmp472, <variable>.NonIntraQuantTab
	strb	r6, [ip, #1]	@ tmp472, <variable>.non_Intra_quantiser_matrix_even
	ldr	ip, [r3, #48]	@ tmp474, <variable>.dmatrix
	add	r3, r1, #4	@ ivtmp.691, tmp482,
	ldrb	r6, [r4, #17]	@ zero_extendqisi2	@ tmp475, <variable>.NonIntraQuantTab
	add	r4, r2, #2	@ ivtmp.694, tmp483,
	strb	r6, [ip, #3]	@ tmp475, <variable>.non_Intra_quantiser_matrix_odd
	ldrb	r6, [r2, #80]	@ zero_extendqisi2	@ tmp488, <variable>.IntraQuantTab
	ldr	ip, [r1, #48]	@ tmp487, <variable>.dmatrix
	strb	r6, [ip, #0]	@ tmp488, <variable>.intra_quantiser_matrix_even
	ldrb	r6, [r2, #81]	@ zero_extendqisi2	@ tmp490, <variable>.IntraQuantTab
	ldr	ip, [r1, #48]	@ tmp489, <variable>.dmatrix
	strb	r6, [ip, #2]	@ tmp490, <variable>.intra_quantiser_matrix_odd
	ldrb	r6, [r2, #16]	@ zero_extendqisi2	@ tmp492, <variable>.NonIntraQuantTab
	ldr	ip, [r1, #48]	@ tmp491, <variable>.dmatrix
	strb	r6, [ip, #1]	@ tmp492, <variable>.non_Intra_quantiser_matrix_even
	ldr	r1, [r1, #48]	@ tmp493, <variable>.dmatrix
	ldrb	r2, [r2, #17]	@ zero_extendqisi2	@ tmp494, <variable>.NonIntraQuantTab
	strb	r2, [r1, #3]	@ tmp494, <variable>.non_Intra_quantiser_matrix_odd
	bne	.L59	@,
	ldr	r3, [r5, #176]	@ <variable>.d48, <variable>.d48
	mov	r0, #0	@ D.31316,
	ldr	r1, [r8, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r2, r1, #15	@ tmp479, <variable>.PmvTopAddr,
	str	r2, [r3, #0]	@ tmp479, <variable>.pmv_top_addr
.L55:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L67:
	ldr	r1, [r5, #32]	@ <variable>.d8, <variable>.d8
	cmp	r6, #0	@ D.31377,
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r1, #0]	@ tmp307,* <variable>.d8
	add	r0, r2, ip, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bfi	lr, r3, #0, #24	@ tmp307, <variable>.StreamLength,,
	str	lr, [r1, #0]	@ tmp307,* <variable>.d8
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	and	lr, r0, #15	@ tmp314, BytePos0,
	ldr	r2, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	ip, [r3, #0]	@ tmp311,* <variable>.d9
	add	r1, r2, #24	@ tmp309, <variable>.StreamLength,
	bfi	ip, r1, #0, #24	@ tmp311, tmp309,,
	str	ip, [r3, #0]	@ tmp311,* <variable>.d9
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	ip, r2, #7	@ tmp319, <variable>.StreamBitOffset,
	ldr	r2, [r3, #0]	@ tmp323,* <variable>.d9
	add	r1, ip, lr, asl #3	@, tmp322, tmp319, tmp314,
	bfi	r2, r1, #24, #7	@ tmp323, tmp322,,
	str	r2, [r3, #0]	@ tmp323,* <variable>.d9
	beq	.L58	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31377, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp327,* D.31377
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp329,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp328,
	str	lr, [sp, #0]	@ tmp329,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp330,
	str	lr, [sp, #4]	@ tmp330,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp331,
	str	lr, [sp, #8]	@ tmp331,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp332,
	str	lr, [sp, #12]	@ tmp332,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp333,
	str	lr, [sp, #16]	@ tmp333,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp334,
	str	lr, [sp, #20]	@ tmp334,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	ip, r3, #7	@ tmp341, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp341
	mov	ip, r2, lsr #3	@ tmp335, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp337, tmp335,
	add	r3, r2, r3, asr #3	@, tmp343, tmp337, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.723, D.31377, tmp343
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp345,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp347,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp346,
	str	lr, [sp, #0]	@ tmp347,
	ldrb	r6, [ip, #3]	@ zero_extendqisi2	@ tmp348,
	str	r6, [sp, #4]	@ tmp348,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp349,
	str	lr, [sp, #8]	@ tmp349,
	ldrb	r6, [ip, #5]	@ zero_extendqisi2	@ tmp350,
	str	r6, [sp, #12]	@ tmp350,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp351,
	str	lr, [sp, #16]	@ tmp351,
	ldrb	r6, [ip, #7]	@ zero_extendqisi2	@ tmp352,
	str	r6, [sp, #20]	@ tmp352,
	bl	dprint_vfmw	@
.L58:
	ldr	r3, [r5, #40]	@ <variable>.d10, <variable>.d10
	ldr	ip, [r3, #0]	@ tmp354,* <variable>.d10
	bfc	ip, #0, #24	@ tmp354,,
	str	ip, [r3, #0]	@ tmp354,* <variable>.d10
	ldr	r2, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r6, [r2, #0]	@ tmp356,* <variable>.d11
	bfc	r6, #0, #24	@ tmp356,,
	str	r6, [r2, #0]	@ tmp356,* <variable>.d11
	ldr	r1, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r0, [r1, #0]	@ tmp358,* <variable>.d11
	bfc	r0, #24, #7	@ tmp358,,
	str	r0, [r1, #0]	@ tmp358,* <variable>.d11
	b	.L61	@
.L66:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #537	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31316,
	b	.L55	@
.L65:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #536	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31316,
	b	.L55	@
	.fnend
	.size	MP2HAL_V200R003MPW_MakeDnMsg, .-MP2HAL_V200R003MPW_MakeDnMsg
	.align	2
	.global	MP2HAL_V200R003MPW_WriteSliceMsg
	.type	MP2HAL_V200R003MPW_WriteSliceMsg, %function
MP2HAL_V200R003MPW_WriteSliceMsg:
	.fnstart
.LFB1348:
	@ args = 0, pretend = 0, frame = 48
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
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r0, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r5, #0	@ tmp201,
	str	r3, [fp, #-72]	@ StreamBaseAddr, %sfp
	movw	r3, #45304	@ tmp202,
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r1, [fp, #-56]	@ SlcDnMsgVirAddr, %sfp
	str	r2, [fp, #-84]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r7, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r5, [fp, #-48]	@ tmp201, D32
	streq	r0, [fp, #-76]	@ <variable>.slice_start_mbn, %sfp
	bne	.L91	@,
.L70:
	cmp	r7, #0	@ SliceNum,
	ble	.L73	@,
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r5, #0	@ i,
	ldr	sl, [r4, #280]	@ prephitmp.871, <variable>.slice_start_mbn
	sub	r6, fp, #48	@ tmp426,,
	ldr	r3, [r4, #236]	@ prephitmp.919, <variable>.slice_start_mbn
	mov	r9, r2, asl #2	@,,
	str	r9, [fp, #-80]	@, %sfp
	mov	r9, #44	@ tmp425,
	b	.L82	@
.L74:
	add	r5, r5, #1	@ i, i,
	cmp	r7, r5	@ SliceNum, i
	ble	.L73	@,
.L92:
	sub	sl, r5, #1	@ tmp417, i,
	mla	ip, r9, r5, r4	@ tmp415, tmp425, i, pMp2DecParam
	mla	r0, r9, sl, r4	@ tmp421, tmp425, tmp417, pMp2DecParam
	ldr	sl, [ip, #280]	@ prephitmp.871, <variable>.slice_start_mbn
	ldr	r3, [r0, #280]	@ prephitmp.919, <variable>.slice_start_mbn
.L82:
	cmp	r5, #0	@ i,
	movle	r1, #0	@,
	movgt	r1, #1	@,
	cmp	sl, r3	@ prephitmp.871, prephitmp.919
	movhi	r1, #0	@,,
	cmp	r1, #0	@ tmp266,
	mov	sl, r1	@ tmp266,
	bne	.L74	@,
	mla	r8, r9, r5, r4	@ tmp271, tmp425, i, pMp2DecParam
	str	r1, [fp, #-48]	@ tmp266, D32
	ldr	r1, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [r6, #0]	@ tmp286,
	add	r3, r5, r1	@, i,
	str	r3, [fp, #-60]	@, %sfp
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	ip, r3, asl #5	@,,
	str	ip, [fp, #-64]	@, %sfp
	ldr	ip, [r8, #248]	@ temp.914, <variable>.BsPhyAddr
	ldr	lr, [r8, #256]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r3, ip, #15	@ tmp273, temp.914,
	bfi	r2, lr, #0, #24	@ tmp286, <variable>.BsLenInBit,,
	ldr	lr, [r8, #264]	@, <variable>.BsBitOffset
	add	r3, lr, r3, asl #3	@, bit_offset_0.923,, tmp273,
	bfi	r2, r3, #24, #7	@ tmp288, bit_offset_0.923,,
	str	r2, [r6, #0]	@ tmp288,
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #5]	@ D32.928,
	str	ip, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-88]	@,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	bic	r3, ip, #15	@ tmp293, temp.914,
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r2, r0, r3	@ tmp294,, tmp293
	mov	r0, r1, asl #3	@ tmp296,,
	add	ip, r0, #1	@ tmp297, tmp296,
	mov	r3, sl	@ tmp295, tmp266
	bfi	r3, r2, #0, #24	@ tmp295, tmp294,,
	mov	r0, #4	@,
	str	r3, [lr, ip, asl #2]	@ D32.936,
	movw	r1, #:lower16:.LC16	@,
	mov	r2, r3	@ D32.936, tmp295
	movt	r1, #:upper16:.LC16	@,
	str	r3, [r6, #0]	@ tmp295,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, %sfp
	str	sl, [fp, #-48]	@ tmp266, D32
	ldr	r0, [r8, #252]	@, <variable>.BsPhyAddr
	mov	r2, r3, asl #2	@ tmp323,,
	add	lr, r2, #1	@ tmp324, tmp323,
	and	ip, r0, #15	@ tmp307,,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, #4	@,
	ldr	r1, [r8, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	ldr	r3, [r8, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	ldr	r2, [r6, #0]	@ tmp320,
	add	r3, r3, ip, asl #3	@, bit_offset_1.947, <variable>.BsBitOffset, tmp307,
	bfi	r2, r1, #0, #24	@ tmp320, <variable>.BsLenInBit,,
	movw	r1, #:lower16:.LC17	@,
	bfi	r2, r3, #24, #7	@ tmp322, bit_offset_1.947,,
	str	r2, [r6, #0]	@ tmp322,
	ldr	r3, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC17	@,
	str	r2, [r3, lr, asl #3]	@ D32.952,
	bl	dprint_vfmw	@
	str	sl, [fp, #-48]	@ tmp266, D32
	ldr	sl, [r8, #252]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-68]	@, %sfp
	ldrne	sl, [r6, #0]	@ tmp338,
	ldrne	lr, [fp, #-72]	@, %sfp
	ldreq	r2, [r6, #0]	@ tmp340,
	bicne	r2, ip, #15	@ tmp336,,
	bfieq	r2, sl, #0, #24	@ tmp340, <variable>.BsPhyAddr,,
	rsbne	r2, lr, r2	@ tmp337,, tmp336
	streq	r2, [r6, #0]	@ tmp340,
	bfine	sl, r2, #0, #24	@ tmp338, tmp337,,
	strne	sl, [r6, #0]	@ tmp338,
	ldr	r8, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-48]	@ D32.962, D32
	ldr	ip, [fp, #-56]	@, %sfp
	add	r3, r8, #12	@ tmp341,,
	mul	sl, r9, r5	@ tmp346, tmp425, i
	add	r5, r5, #1	@ j, i,
	str	r2, [ip, r3]	@ D32.962,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r8, sl, r4	@ tmp348, tmp346, pMp2DecParam
	mov	r0, #0	@,
	str	r0, [fp, #-48]	@, D32
	mov	r0, #4	@,
	ldr	lr, [r8, #288]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	mov	r1, r2, asl #1	@ tmp359,,
	ldr	r2, [r6, #0]	@ tmp351,
	add	r3, r1, #1	@ tmp360, tmp359,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bfi	r2, lr, #0, #6	@ tmp351, <variable>.quantiser_scale_code,,
	str	r2, [r6, #0]	@ tmp351,
	ldr	ip, [r8, #284]	@ <variable>.intra_slice, <variable>.intra_slice
	bfi	r2, ip, #6, #1	@ tmp358, <variable>.intra_slice,,
	str	r2, [r6, #0]	@ tmp358,
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #4]	@ D32.973,
	bl	dprint_vfmw	@
	mov	r1, #0	@,
	str	r1, [fp, #-48]	@, D32
	mov	r2, r1	@ tmp371,
	ldr	ip, [r8, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movw	r1, #:lower16:.LC20	@,
	ldr	r0, [fp, #-64]	@, %sfp
	movt	r1, #:upper16:.LC20	@,
	bfi	r2, ip, #0, #20	@ tmp371, <variable>.slice_start_mbn,,
	str	r2, [r6, #0]	@ tmp371,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r3, r0, #20	@ tmp373,,
	mov	r0, #4	@,
	str	r2, [lr, r3]	@ D32.978,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, j
	ble	.L77	@,
	mla	r2, r9, r5, r4	@ tmp384, tmp425, j, pMp2DecParam
	ldr	r3, [r8, #280]	@ temp.991, <variable>.slice_start_mbn
	ldr	r2, [r2, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r2, r3	@ <variable>.slice_start_mbn, temp.991
	bhi	.L77	@,
	mvn	r1, r5	@ tmp434, j
	add	ip, r1, r7	@ tmp433, tmp434, SliceNum
	tst	ip, #1	@ tmp433,
	add	sl, sl, #248	@ tmp389, tmp346,
	add	sl, r4, sl	@ ivtmp.889, pMp2DecParam, tmp389
	beq	.L78	@,
	ldr	r2, [sl, #120]	@ D.31205, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	add	sl, sl, #44	@ ivtmp.889, ivtmp.889,
	cmp	r2, r3	@ D.31205, temp.991
	bls	.L78	@,
	b	.L77	@
.L79:
	ldr	ip, [sl, #120]	@ D.31205, <variable>.slice_start_mbn
	add	sl, sl, #88	@ ivtmp.889, ivtmp.889,
	cmp	ip, r3	@ D.31205, temp.991
	bhi	.L77	@,
	ldr	r2, [r2, #120]	@ D.31205, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	cmp	r2, r3	@ D.31205, temp.991
	bhi	.L77	@,
.L78:
	add	r5, r5, #1	@ j, j,
	add	r2, sl, #44	@ tmp436, ivtmp.889,
	cmp	r7, r5	@ SliceNum, j
	bgt	.L79	@,
.L77:
	cmp	r5, r7	@ j, SliceNum
	mlane	r3, r9, r5, r4	@ tmp396, tmp425, j, pMp2DecParam
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r8, #0	@ prephitmp.869,
	ldrne	lr, [fp, #-76]	@, %sfp
	ldrne	r0, [fp, #-84]	@, %sfp
	muleq	r2, r2, r3	@ tmp392, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r2, [r3, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	addne	r8, r5, lr	@ tmp399, j,
	ldr	lr, [fp, #-56]	@, %sfp
	mov	r3, #0	@ tmp403,
	sub	r5, r5, #1	@ i, j,
	sub	r1, r2, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	ldr	r2, [fp, #-64]	@, %sfp
	bfi	r3, r1, #0, #20	@ tmp403, slice_end_mbn,,
	addne	r8, r0, r8, asl #5	@, prephitmp.869,, tmp399,
	add	ip, r2, #24	@ tmp404,,
	mov	r0, #4	@,
	mov	r2, r3	@ D32.987, tmp403
	movw	r1, #:lower16:.LC21	@,
	str	r3, [lr, ip]	@ D32.987,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [r6, #0]	@ tmp403,
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r2, r8	@ D32.993, prephitmp.869
	add	r3, r0, #28	@ tmp409,,
	mov	r0, #4	@,
	str	r8, [r1, r3]	@ D32.993,
	movw	r1, #:lower16:.LC22	@,
	str	r8, [r6, #0]	@ prephitmp.869, <variable>.next_slice_para_addr
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, i
	bgt	.L92	@,
.L73:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L91:
	ldr	r6, [r4, #248]	@ D.31065, <variable>.BsPhyAddr
	mov	r2, #1	@ tmp210,
	ldr	ip, [r4, #264]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r0, #4	@,
	and	lr, r6, #15	@ tmp205, D.31065,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	add	r3, ip, lr, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp205,
	ldr	lr, [fp, #-56]	@, %sfp
	bfi	r2, r3, #24, #7	@ tmp210, bit_offset_0,,
	str	r2, [lr, #0]	@ tmp210,
	str	r2, [fp, #-48]	@ tmp210,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-72]	@, %sfp
	bic	r0, r6, #15	@ tmp215, D.31065,
	ldr	r2, [fp, #-56]	@, %sfp
	mov	r6, r5	@ tmp217, tmp201
	rsb	r1, r3, r0	@ tmp216,, tmp215
	mov	r0, #4	@,
	bfi	r6, r1, #0, #24	@ tmp217, tmp216,,
	movw	r1, #:lower16:.LC16	@,
	str	r6, [r2, #4]	@ tmp217,
	movt	r1, #:upper16:.LC16	@,
	mov	r2, r6	@, tmp217
	str	r6, [fp, #-48]	@ tmp217,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #252]	@ D.31093, <variable>.BsPhyAddr
	ldr	ip, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r2, #0	@ tmp225,
	and	r3, r6, #15	@ tmp221, D.31093,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	add	r3, ip, r3, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp221,
	bfi	r2, r3, #24, #7	@ tmp225, bit_offset_1,,
	ldr	r3, [fp, #-56]	@, %sfp
	str	r2, [r3, #8]	@ tmp225,
	str	r2, [fp, #-48]	@ tmp225,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #252]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	lr, #1	@,
	movw	r1, #:lower16:.LC18	@,
	str	lr, [fp, #-76]	@, %sfp
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	movt	r1, #:upper16:.LC18	@,
	bicne	r0, r6, #15	@ tmp231, D.31093,
	streq	r0, [fp, #-48]	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-72]	@, %sfp
	rsbne	r0, ip, r0	@ tmp232,, tmp231
	ldr	ip, [fp, #-56]	@, %sfp
	bfine	r5, r0, #0, #24	@ tmp233, tmp232,,
	strne	r5, [fp, #-48]	@ tmp233,
	ldr	r3, [fp, #-48]	@ D32.900, D32
	mov	r0, #4	@,
	mov	r5, #0	@ tmp238,
	str	r3, [ip, #12]	@ D32.900,
	mov	r2, r3	@, D32.900
	bl	dprint_vfmw	@
	ldr	r1, [r4, #288]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #284]	@ <variable>.intra_slice, <variable>.intra_slice
	mov	r0, #4	@,
	ldr	lr, [fp, #-56]	@, %sfp
	and	r3, r1, #63	@ tmp242, <variable>.quantiser_scale_code,
	bfi	r3, r2, #6, #1	@ tmp242, <variable>.intra_slice,,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	r3, [lr, #16]	@ tmp242,
	mov	r2, r3	@, tmp242
	str	r3, [fp, #-48]	@ tmp242,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	ip, r5	@ tmp247, tmp238
	bfi	ip, r5, #0, #20	@ tmp247, tmp238,,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [r0, #20]	@ tmp247,
	mov	r2, ip	@, tmp247
	mov	r0, #4	@,
	str	ip, [fp, #-48]	@ tmp247,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #280]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, r5	@ tmp254, tmp238
	mov	r0, #4	@,
	sub	ip, r3, #1	@ tmp252, <variable>.slice_start_mbn,
	ldr	r3, [fp, #-56]	@, %sfp
	bfi	r2, ip, #0, #20	@ tmp254, tmp252,,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r2, [r3, #24]	@ tmp254,
	str	r2, [fp, #-48]	@ tmp254,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-84]	@, %sfp
	add	r1, ip, #32	@ tmp259,,
	str	r1, [r2, #28]	@ tmp259,
	str	r1, [fp, #-48]	@ tmp259, <variable>.next_slice_para_addr
	b	.L70	@
	.fnend
	.size	MP2HAL_V200R003MPW_WriteSliceMsg, .-MP2HAL_V200R003MPW_WriteSliceMsg
	.align	2
	.global	MP2HAL_V200R003MPW_CfgDnMsg
	.type	MP2HAL_V200R003MPW_CfgDnMsg, %function
MP2HAL_V200R003MPW_CfgDnMsg:
	.fnstart
.LFB1352:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	mov	r9, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	sl, #0	@ tmp209,
	str	sl, [fp, #-48]	@ tmp209, D32
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ D.31727,
	beq	.L108	@,
	ldrh	r3, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #352	@ <variable>.PicWidthInMb,
	bhi	.L109	@,
	ldrh	r2, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #264	@ <variable>.PicHeightInMb,
	bhi	.L110	@,
	sub	lr, r3, #1	@ tmp223, <variable>.PicWidthInMb,
	ldr	r8, [r5, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp227, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp228, tmp223,
	mov	r6, ip, lsr #23	@ tmp228, tmp228,
	bfi	r6, r2, #16, #9	@ tmp228, tmp227,,
	bfi	r6, r8, #25, #1	@ tmp230, <variable>.Mpeg1Flag,,
	str	r6, [r4, #0]	@ tmp230,* D.31727
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	r0, [r5, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	r6, r3, #1	@ tmp236, <variable>.FramePredFrameDct,
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	r6, r1, #8, #2	@ tmp236, <variable>.PictureStructure,,
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r6, r0, #10, #1	@ tmp240, <variable>.SecondFieldFlag,,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	r6, lr, #16, #1	@ tmp244, <variable>.ConcealmentMotionVectors,,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	r6, ip, #24, #3	@ tmp248, <variable>.PicCodingType,,
	bfi	r6, r8, #27, #1	@ tmp252, <variable>.Mp1FwdmvFullPel,,
	bfi	r6, r2, #28, #1	@ tmp256, <variable>.Mp1BwdmvFullPel,,
	str	r6, [r4, #4]	@ tmp256,
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	r8, r3, #15	@ tmp265, <variable>.Fcode,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	r8, r1, #8, #4	@ tmp265, <variable>.Fcode,,
	ldrb	ip, [r5, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r8, r0, #16, #4	@ tmp269, <variable>.Fcode,,
	bfi	r8, lr, #24, #4	@ tmp273, <variable>.Fcode,,
	bfi	r8, ip, #31, #1	@ tmp277, <variable>.TopFieldFirst,,
	str	r8, [r4, #8]	@ tmp277,
	ldrb	r6, [r5, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r3, r6, #3	@ tmp286, <variable>.IntraDcPrecision,
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r3, r2, #8, #1	@ tmp286, <variable>.QuantType,,
	bfi	r3, r1, #16, #1	@ tmp290, <variable>.IntraVlcFormat,,
	bfi	r3, r0, #24, #1	@ tmp294, <variable>.AlternateScan,,
	str	r3, [r4, #12]	@ tmp294,
	ldr	lr, [r5, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	ip, lr, #15	@ tmp301, <variable>.BwdRefPhyAddr,
	str	ip, [r4, #16]	@ tmp301,
	ldr	r8, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r6, r8, #15	@ tmp305, <variable>.FwdRefPhyAddr,
	str	r6, [r4, #20]	@ tmp305,
	ldr	r2, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp309, <variable>.DispFramePhyAddr,
	str	r1, [r4, #24]	@ tmp309,
	ldr	r0, [r5, #236]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp313, <variable>.PmvColmbPhyAddr,
	str	r3, [fp, #-48]	@ tmp313, <variable>.current_pmv_addr
	str	r3, [r4, #28]	@ tmp313,
	ldr	r0, [r5, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.31806,
	ldr	r0, [r5, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r8, r0	@ D.31810,
	beq	.L111	@,
	ldr	ip, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, sl	@ tmp384, tmp209
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31806,
	ldr	r0, [r5, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	sl, r0, ip, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r2, lr, r1, lsr #3	@, BytePos0.1117, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	ip, sl, #15	@ tmp382, BytePos1,
	bic	r0, r2, #15	@ tmp381, BytePos0.1117,
	and	lr, r2, #15	@ tmp389, BytePos0.1117,
	rsb	r1, ip, r0	@ tmp383, tmp382, tmp381
	bfi	r3, r1, #0, #24	@ tmp384, tmp383,,
	str	r3, [r4, #32]	@ tmp384,
	ldr	r0, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	r3, r0, #7	@ tmp394, <variable>.StreamBitOffset,
	add	r2, r3, lr, asl #3	@, tmp397, tmp394, tmp389,
	bic	lr, ip, #-16777216	@ tmp398, <variable>.StreamLength,
	bfi	lr, r2, #24, #7	@ tmp398, tmp397,,
	str	lr, [fp, #-48]	@ tmp398,
	str	lr, [r4, #36]	@ tmp398,
	beq	.L101	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	lr, r6, r3, lsr #3	@, rp, D.31806, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp402,* D.31806
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp404,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp403,
	str	ip, [sp, #0]	@ tmp404,
	ldrb	ip, [lr, #3]	@ zero_extendqisi2	@ tmp405,
	str	ip, [sp, #4]	@ tmp405,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp406,
	str	ip, [sp, #8]	@ tmp406,
	ldrb	ip, [lr, #5]	@ zero_extendqisi2	@ tmp407,
	str	ip, [sp, #12]	@ tmp407,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp408,
	str	ip, [sp, #16]	@ tmp408,
	ldrb	ip, [lr, #7]	@ zero_extendqisi2	@ tmp409,
	str	ip, [sp, #20]	@ tmp409,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	ip, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC11	@,
	add	r2, r3, #7	@ tmp416, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC11	@,
	movlt	r3, r2	@ <variable>.StreamLength, tmp416
	mov	r2, ip, lsr #3	@ tmp410, <variable>.StreamBitOffset,
	sub	r2, r2, #8	@ tmp412, tmp410,
	add	r3, r2, r3, asr #3	@, tmp418, tmp412, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.1146, D.31806, tmp418
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp420,
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ tmp422,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp421,
	str	r6, [sp, #0]	@ tmp422,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp423,
	str	lr, [sp, #4]	@ tmp423,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp424,
	str	r6, [sp, #8]	@ tmp424,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp425,
	str	lr, [sp, #12]	@ tmp425,
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ tmp426,
	str	r6, [sp, #16]	@ tmp426,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp427,
	str	lr, [sp, #20]	@ tmp427,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC12	@,
	ldr	r3, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC12	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L101:
	mov	r1, #0	@ tmp432,
	and	sl, sl, #15	@ tmp440, BytePos1,
	mov	r3, r1	@ tmp434, tmp432
	bfi	r3, r1, #0, #24	@ tmp434, tmp432,,
	str	r3, [r4, #40]	@ tmp434,
	cmp	r8, r1	@ D.31810,
	ldr	ip, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	lr, ip, #24	@ tmp436, <variable>.StreamLength,
	and	r6, r2, #7	@ tmp445, <variable>.StreamBitOffset,
	bic	r1, lr, #-16777216	@ tmp449, tmp436,
	add	r0, r6, sl, asl #3	@, tmp448, tmp445, tmp440,
	bfi	r1, r0, #24, #7	@ tmp449, tmp448,,
	str	r1, [fp, #-48]	@ tmp449,
	str	r1, [r4, #44]	@ tmp449,
	beq	.L100	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	add	r6, r8, r3, lsr #3	@, rp, D.31810, <variable>.StreamBitOffset,
	ldrb	r2, [r8, r3, lsr #3]	@ zero_extendqisi2	@ tmp453,* D.31810
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp455,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp454,
	str	ip, [sp, #0]	@ tmp455,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp456,
	str	lr, [sp, #4]	@ tmp456,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp457,
	str	ip, [sp, #8]	@ tmp457,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp458,
	str	lr, [sp, #12]	@ tmp458,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp459,
	str	ip, [sp, #16]	@ tmp459,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp460,
	str	lr, [sp, #20]	@ tmp460,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC14	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC14	@,
	add	r2, r6, #7	@ tmp467, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp461, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp467
	sub	r2, ip, #8	@ tmp463, tmp461,
	add	r3, r2, r6, asr #3	@, tmp469, tmp463, <variable>.StreamLength,
	add	r6, r8, r3	@ rp.1187, D.31810, tmp469
	ldrb	r2, [r8, r3]	@ zero_extendqisi2	@ tmp471,
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp473,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp472,
	str	ip, [sp, #0]	@ tmp473,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp474,
	str	lr, [sp, #4]	@ tmp474,
	ldrb	r8, [r6, #4]	@ zero_extendqisi2	@ tmp475,
	str	r8, [sp, #8]	@ tmp475,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ tmp476,
	str	ip, [sp, #12]	@ tmp476,
	ldrb	lr, [r6, #6]	@ zero_extendqisi2	@ tmp477,
	str	lr, [sp, #16]	@ tmp477,
	ldrb	r8, [r6, #7]	@ zero_extendqisi2	@ tmp478,
	str	r8, [sp, #20]	@ tmp478,
	bl	dprint_vfmw	@
.L100:
	sub	r3, fp, #48	@ pretmp.1021,,
	add	r0, r4, #64	@ ivtmp.1053, D.31727,
	add	lr, r4, #192	@ D.32595, D.31727,
	mov	r2, r5	@ ivtmp.1049, pMp2DecParam
	mov	r6, #0	@ tmp570,
.L102:
	str	r6, [fp, #-48]	@ tmp570, D32
	add	r1, r2, #2	@ tmp571, ivtmp.1049,
	ldrb	r8, [r2, #80]	@ zero_extendqisi2	@ tmp480, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp572, ivtmp.1053
	strb	r8, [r3, #0]	@ tmp480, <variable>.intra_quantiser_matrix_even
	ldrb	r8, [r2, #81]	@ zero_extendqisi2	@ tmp482, <variable>.IntraQuantTab
	strb	r8, [r3, #2]	@ tmp482, <variable>.intra_quantiser_matrix_odd
	ldrb	r8, [r2, #16]	@ zero_extendqisi2	@ tmp484, <variable>.NonIntraQuantTab
	strb	r8, [r3, #1]	@ tmp484, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r8, [r2, #17]	@ zero_extendqisi2	@ tmp486, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.1049, tmp571,
	strb	r8, [r3, #3]	@ tmp486, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r8, [fp, #-48]	@ D32.1212, D32
	str	r8, [ip], #4	@ D32.1212,
	str	r6, [fp, #-48]	@ tmp570, D32
	ldrb	r8, [r1, #80]	@ zero_extendqisi2	@ tmp576, <variable>.IntraQuantTab
	strb	r8, [r3, #0]	@ tmp576, <variable>.intra_quantiser_matrix_even
	ldrb	r8, [r1, #81]	@ zero_extendqisi2	@ tmp577, <variable>.IntraQuantTab
	strb	r8, [r3, #2]	@ tmp577, <variable>.intra_quantiser_matrix_odd
	ldrb	r8, [r1, #16]	@ zero_extendqisi2	@ tmp578, <variable>.NonIntraQuantTab
	strb	r8, [r3, #1]	@ tmp578, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r8, [r1, #17]	@ zero_extendqisi2	@ tmp579, <variable>.NonIntraQuantTab
	strb	r8, [r3, #3]	@ tmp579, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r1, [fp, #-48]	@ D32.1212, D32
	str	r1, [r0, #4]	@ D32.1212,
	add	r0, ip, #4	@ ivtmp.1053, tmp572,
	cmp	r0, lr	@ ivtmp.1053, D.32595
	bne	.L102	@,
	ldr	r1, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	ip, r1, #15	@ tmp491, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp491, <variable>.pmv_top_addr
	str	ip, [r4, #192]	@ tmp491,
	ldr	r3, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	lr, r3, #15	@ tmp492, <variable>.MsgSlotAddr,
	add	r8, lr, #256	@ SlcDnMsgPhyAddr, tmp492,
	mov	r0, r8	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	str	r8, [fp, #-48]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r2, r8	@, SlcDnMsgPhyAddr
	str	r8, [r4, #252]	@ SlcDnMsgPhyAddr,
	mov	r3, r9	@, StreamBaseAddr
	mov	r1, r0	@ D.31972,
	mov	r0, r5	@, pMp2DecParam
	bl	MP2HAL_V200R003MPW_WriteSliceMsg	@
	movw	r2, #:lower16:g_PrintEnable	@ tmp496,
	movt	r2, #:upper16:g_PrintEnable	@ tmp496,
	ldr	r0, [r2, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r0, #16	@ g_PrintEnable,
	bne	.L103	@,
.L107:
	mov	r0, r6	@ D.31731, tmp570
.L95:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L111:
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r8, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r4, #32]	@ <variable>.StreamLength,
	cmp	r6, #0	@ D.31806,
	ldr	lr, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r0, r8, r1, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	r2, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	r1, r0, #15	@ tmp328, BytePos0,
	add	ip, lr, #24	@ tmp324, <variable>.StreamLength,
	and	r8, r2, #7	@ tmp333, <variable>.StreamBitOffset,
	bfi	r3, ip, #0, #24	@ <variable>.StreamLength, tmp324,,
	add	r0, r8, r1, asl #3	@, tmp336, tmp333, tmp328,
	bfi	r3, r0, #24, #7	@ <variable>.StreamLength, tmp336,,
	str	r3, [fp, #-48]	@ <variable>.StreamLength,
	str	r3, [r4, #36]	@ <variable>.StreamLength,
	beq	.L99	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	lr, r6, r3, lsr #3	@, rp, D.31806, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp341,* D.31806
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp343,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp342,
	str	ip, [sp, #0]	@ tmp343,
	ldrb	r8, [lr, #3]	@ zero_extendqisi2	@ tmp344,
	str	r8, [sp, #4]	@ tmp344,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp345,
	str	ip, [sp, #8]	@ tmp345,
	ldrb	r8, [lr, #5]	@ zero_extendqisi2	@ tmp346,
	str	r8, [sp, #12]	@ tmp346,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp347,
	str	ip, [sp, #16]	@ tmp347,
	ldrb	r8, [lr, #7]	@ zero_extendqisi2	@ tmp348,
	str	r8, [sp, #20]	@ tmp348,
	bl	dprint_vfmw	@
	ldr	r8, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	r2, r8, #7	@ tmp355, <variable>.StreamLength,
	cmp	r8, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp349, <variable>.StreamBitOffset,
	movlt	r8, r2	@ <variable>.StreamLength, tmp355
	sub	r2, ip, #8	@ tmp351, tmp349,
	add	r3, r2, r8, asr #3	@, tmp357, tmp351, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.1085, D.31806, tmp357
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp359,
	ldrb	r8, [ip, #2]	@ zero_extendqisi2	@ tmp361,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp360,
	str	r8, [sp, #0]	@ tmp361,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp362,
	str	lr, [sp, #4]	@ tmp362,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp363,
	str	r6, [sp, #8]	@ tmp363,
	ldrb	r8, [ip, #5]	@ zero_extendqisi2	@ tmp364,
	str	r8, [sp, #12]	@ tmp364,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp365,
	str	lr, [sp, #16]	@ tmp365,
	ldrb	r6, [ip, #7]	@ zero_extendqisi2	@ tmp366,
	str	r6, [sp, #20]	@ tmp366,
	bl	dprint_vfmw	@
.L99:
	mov	r6, #0	@ tmp367,
	mov	r0, r6	@ tmp372, tmp367
	mov	r1, r6	@ tmp369, tmp367
	bfi	r0, r6, #24, #7	@ tmp372, tmp367,,
	bfi	r1, r6, #0, #24	@ tmp369, tmp367,,
	str	r1, [r4, #40]	@ tmp369,
	str	r0, [r4, #44]	@ tmp372,
	b	.L100	@
.L103:
	movw	lr, #:lower16:.LANCHOR0	@ tmp499,
	movt	lr, #:upper16:.LANCHOR0	@ tmp499,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [lr, #0]	@ num, num
	movt	r1, #:upper16:.LC24	@,
	add	r2, r2, #1	@ num.478, num,
	str	r2, [lr, #0]	@ num.478, num
	ldr	r3, [r7, #44]	@, <variable>.MsgSlotAddr
	bl	dprint_vfmw	@
	ldmia	r4, {r3, ip}	@ phole ldm
	mov	r2, r6	@, tmp570
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	str	ip, [sp, #0]	@ tmp505,
	movt	r1, #:upper16:.LC25	@,
	ldr	ip, [r4, #8]	@ tmp506,
	str	ip, [sp, #4]	@ tmp506,
	ldr	ip, [r4, #12]	@ tmp507,
	str	ip, [sp, #8]	@ tmp507,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ tmp509,
	mov	r0, #4	@,
	ldr	r3, [r4, #16]	@ tmp508,
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp509,
	ldr	ip, [r4, #24]	@ tmp510,
	str	ip, [sp, #4]	@ tmp510,
	ldr	ip, [r4, #28]	@ tmp511,
	str	ip, [sp, #8]	@ tmp511,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #36]	@ tmp513,
	mov	r2, #8	@,
	ldr	r3, [r4, #32]	@ tmp512,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp513,
	ldr	ip, [r4, #40]	@ tmp514,
	str	ip, [sp, #4]	@ tmp514,
	ldr	ip, [r4, #44]	@ tmp515,
	str	ip, [sp, #8]	@ tmp515,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #52]	@ tmp517,
	mov	r2, #12	@,
	ldr	r3, [r4, #48]	@ tmp516,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp517,
	ldr	ip, [r4, #56]	@ tmp518,
	str	ip, [sp, #4]	@ tmp518,
	ldr	ip, [r4, #60]	@ tmp519,
	str	ip, [sp, #8]	@ tmp519,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #68]	@ tmp521,
	mov	r2, #16	@,
	ldr	r3, [r4, #64]	@ tmp520,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp521,
	ldr	ip, [r4, #72]	@ tmp522,
	str	ip, [sp, #4]	@ tmp522,
	ldr	ip, [r4, #76]	@ tmp523,
	str	ip, [sp, #8]	@ tmp523,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #84]	@ tmp525,
	mov	r2, #20	@,
	ldr	r3, [r4, #80]	@ tmp524,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp525,
	ldr	ip, [r4, #88]	@ tmp526,
	str	ip, [sp, #4]	@ tmp526,
	ldr	ip, [r4, #92]	@ tmp527,
	str	ip, [sp, #8]	@ tmp527,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #100]	@ tmp529,
	mov	r2, #24	@,
	ldr	r3, [r4, #96]	@ tmp528,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp529,
	ldr	ip, [r4, #104]	@ tmp530,
	str	ip, [sp, #4]	@ tmp530,
	ldr	ip, [r4, #108]	@ tmp531,
	str	ip, [sp, #8]	@ tmp531,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #116]	@ tmp533,
	mov	r2, #28	@,
	ldr	r3, [r4, #112]	@ tmp532,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp533,
	ldr	ip, [r4, #120]	@ tmp534,
	str	ip, [sp, #4]	@ tmp534,
	ldr	ip, [r4, #124]	@ tmp535,
	str	ip, [sp, #8]	@ tmp535,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #132]	@ tmp537,
	mov	r2, #32	@,
	ldr	r3, [r4, #128]	@ tmp536,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp537,
	ldr	ip, [r4, #136]	@ tmp538,
	str	ip, [sp, #4]	@ tmp538,
	ldr	ip, [r4, #140]	@ tmp539,
	str	ip, [sp, #8]	@ tmp539,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #148]	@ tmp541,
	mov	r2, #36	@,
	ldr	r3, [r4, #144]	@ tmp540,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp541,
	ldr	ip, [r4, #152]	@ tmp542,
	str	ip, [sp, #4]	@ tmp542,
	ldr	ip, [r4, #156]	@ tmp543,
	str	ip, [sp, #8]	@ tmp543,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #164]	@ tmp545,
	mov	r2, #40	@,
	ldr	r3, [r4, #160]	@ tmp544,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp545,
	ldr	ip, [r4, #168]	@ tmp546,
	str	ip, [sp, #4]	@ tmp546,
	ldr	ip, [r4, #172]	@ tmp547,
	str	ip, [sp, #8]	@ tmp547,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #180]	@ tmp549,
	mov	r2, #44	@,
	ldr	r3, [r4, #176]	@ tmp548,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp549,
	ldr	ip, [r4, #184]	@ tmp550,
	str	ip, [sp, #4]	@ tmp550,
	ldr	ip, [r4, #188]	@ tmp551,
	str	ip, [sp, #8]	@ tmp551,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #196]	@ tmp553,
	mov	r2, #48	@,
	ldr	r3, [r4, #192]	@ tmp552,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp553,
	ldr	ip, [r4, #200]	@ tmp554,
	str	ip, [sp, #4]	@ tmp554,
	ldr	ip, [r4, #204]	@ tmp555,
	str	ip, [sp, #8]	@ tmp555,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #212]	@ tmp557,
	mov	r2, #52	@,
	ldr	r3, [r4, #208]	@ tmp556,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp557,
	ldr	ip, [r4, #216]	@ tmp558,
	str	ip, [sp, #4]	@ tmp558,
	ldr	ip, [r4, #220]	@ tmp559,
	str	ip, [sp, #8]	@ tmp559,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #228]	@ tmp561,
	mov	r2, #56	@,
	ldr	r3, [r4, #224]	@ tmp560,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp561,
	ldr	ip, [r4, #232]	@ tmp562,
	str	ip, [sp, #4]	@ tmp562,
	ldr	ip, [r4, #236]	@ tmp563,
	str	ip, [sp, #8]	@ tmp563,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #244]	@ tmp565,
	mov	r2, #60	@,
	ldr	r3, [r4, #240]	@ tmp564,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp565,
	ldr	ip, [r4, #248]	@ tmp566,
	str	ip, [sp, #4]	@ tmp566,
	ldr	ip, [r4, #252]	@ tmp567,
	str	ip, [sp, #8]	@ tmp567,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	b	.L107	@
.L110:
	mov	r0, sl	@, tmp209
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #941	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31731,
	b	.L95	@
.L109:
	mov	r0, sl	@, tmp209
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #940	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31731,
	b	.L95	@
.L108:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #938	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC23	@,
	movt	r3, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31731,
	b	.L95	@
	.fnend
	.size	MP2HAL_V200R003MPW_CfgDnMsg, .-MP2HAL_V200R003MPW_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R003MPW_StartDec
	.type	MP2HAL_V200R003MPW_StartDec, %function
MP2HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1347:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	bls	.L122	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31012,
.L115:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L122:
	movw	r8, #1148	@ tmp145,
	movw	r6, #:lower16:g_HwMem	@ tmp146,
	mul	r8, r8, r1	@ tmp144, tmp145, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp146,
	add	r7, r6, r8	@ pHwMem, tmp146, tmp144
	ldr	r3, [r6, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L123	@,
.L116:
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	movw	r2, #:lower16:.LANCHOR1	@ tmp150,
	movt	r2, #:upper16:.LANCHOR1	@ tmp150,
	ldr	r3, [ip, #36]	@ D.31023, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	ldr	r6, [r2, #0]	@ FrameNum, FrameNum
	cmp	r3, #0	@ D.31023,
	add	r0, r6, #1	@ tmp153, FrameNum,
	str	r0, [r2, #0]	@ tmp153, FrameNum
	beq	.L118	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.31023
.L119:
	mov	r0, r5	@, pMp2DecParam
	mov	r1, r7	@, pHwMem
	mov	r2, r4	@, VdhId
	sub	r3, fp, #40	@,,
	bl	MP2HAL_V200R003MPW_CfgReg	@
	subs	r6, r0, #0	@ D.31028,
	bne	.L124	@,
	mov	r0, r5	@, pMp2DecParam
	mov	r1, r7	@, pHwMem
	mov	r2, r4	@, VdhId
	ldr	r3, [fp, #-40]	@, StreamBaseAddr
	bl	MP2HAL_V200R003MPW_CfgDnMsg	@
	mov	r0, r6	@ D.31012, D.31028
	b	.L115	@
.L118:
	mov	r0, r3	@, D.31023
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #90	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L119	@
.L123:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31016,
	strne	r1, [r6, r8]	@ D.31016, <variable>.pVdmRegVirAddr
	bne	.L116	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31012,
	b	.L115	@
.L124:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31012,
	b	.L115	@
	.fnend
	.size	MP2HAL_V200R003MPW_StartDec, .-MP2HAL_V200R003MPW_StartDec
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	FrameNum, %object
	.size	FrameNum, 4
FrameNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VdhId is wrong! MP2HAL_V200R003MPW_CfgReg\012\000"
	.space	1
.LC1:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC2:
	.ascii	"stream_base_addr = %#x\012\000"
.LC3:
	.ascii	"EMAR_ID = 0x%x\012\000"
.LC4:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
.LC5:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC6:
	.ascii	"picture width out of range\000"
	.space	1
.LC7:
	.ascii	"picture height out of range\000"
.LC8:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC9:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC10:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC11:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC12:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC13:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC14:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC15:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC16:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC17:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC18:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC19:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC20:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC21:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC22:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC23:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC24:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC25:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC26:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC27:
	.ascii	"VdhId is wrong! MP2HAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC28:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC29:
	.ascii	"MP2HAL_V200R003MPW_CfgReg ERROR!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.31722, %object
	.size	num.31722, 4
num.31722:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
