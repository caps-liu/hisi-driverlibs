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
	.file	"vdm_hal_avs.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_avs.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.o
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
	.global	AVSHAL_V200R004_InitHal
	.type	AVSHAL_V200R004_InitHal, %function
AVSHAL_V200R004_InitHal:
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
	.size	AVSHAL_V200R004_InitHal, .-AVSHAL_V200R004_InitHal
	.align	2
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:g_HwMem	@ tmp219,
	movt	r5, #:upper16:g_HwMem	@ tmp219,
	mov	r4, r0	@ pAvsDecParam, pAvsDecParam
	movw	r0, #1148	@ tmp222,
	str	r1, [fp, #-68]	@ stream_base_addr, %sfp
	mla	r7, r0, r2, r5	@ tmp223, tmp222, VdhId, tmp219
	ldr	r5, [r7, #44]	@ D.31217, <variable>.MsgSlotAddr
	add	r1, r5, #320	@, D.31217,
	str	r1, [fp, #-76]	@, %sfp
	mov	r0, r5	@, D.31217
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, #0	@ <variable>.slice_start_mbn,
	streq	r3, [fp, #-72]	@ <variable>.slice_start_mbn, %sfp
	add	r7, r0, #320	@ pMsgBase.536, D.31220,
	beq	.L5	@,
	ldr	r6, [r4, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	mov	lr, #0	@ tmp232,
	mov	r3, #1	@,
	str	r3, [fp, #-72]	@, %sfp
	add	ip, r6, #4	@ tmp226, <variable>.stream_phy_addr,
	ldr	r6, [fp, #-68]	@, %sfp
	add	r5, r5, #576	@ D32.543, D.31217,
	rsb	r2, r6, ip	@ D.31232,, tmp226
	bic	sl, r2, #-16777216	@ D32.539, D.31232,
	bic	r3, sl, #15	@ D32.539, D32.539,
	mov	r1, r2, asl #28	@ D32, D.31232,
	str	r1, [r0, #320]	@ D32,
	str	r3, [r0, #324]	@ D32.539,
	str	lr, [r0, #328]	@ tmp232,
	str	lr, [r0, #332]	@ tmp232,
	ldr	ip, [r4, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	sl, ip, #1	@ tmp234, <variable>.slice_start_mbn,
	mov	r2, sl, asl #16	@ D32.542, tmp234,
	str	r2, [r0, #336]	@ D32.542,
	str	r5, [r0, #572]	@ D32.543,
.L5:
	movw	sl, #14424	@ tmp238,
	ldr	r0, [r4, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L19	@,
	mov	r3, #0	@ k,
	movw	r9, #511	@ tmp371,
	mov	r8, r3	@ j, k
	mov	r2, r3	@ i, k
.L18:
	cmp	r8, r9	@ j, tmp371
	bgt	.L7	@,
	sub	r6, r2, #1	@ tmp250, i,
	mov	r0, r2, asl #3	@ tmp370, i,
	rsb	r1, r2, r0	@ tmp246, i, tmp370
	rsb	r5, r6, r6, asl #3	@, tmp254, tmp250, tmp250,
	cmp	r2, #0	@ i,
	movle	r6, #0	@,
	movgt	r6, #1	@,
	add	r1, r4, r1, asl #2	@, tmp248, pAvsDecParam, tmp246,
	add	ip, r4, r5, asl #2	@, tmp256, pAvsDecParam, tmp254,
	ldr	r5, [r1, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	lr, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r5, lr	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movhi	r6, #0	@,,
	cmp	r6, #0	@ tmp264,
	mov	ip, r6	@ tmp264,
	bne	.L8	@,
	ldr	lr, [r1, #92]	@, <variable>.stream_phy_addr
	ldr	r6, [r1, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	ldr	r3, [r1, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r5, [fp, #-68]	@, %sfp
	str	lr, [fp, #-60]	@, %sfp
	sub	lr, r6, #4	@, <variable>.stream_lenInByte,
	str	lr, [fp, #-52]	@, %sfp
	add	r3, r3, #4	@ tmp272, <variable>.stream_phy_addr,
	ldr	lr, [fp, #-52]	@, %sfp
	rsb	r3, r5, r3	@ temp.547,, tmp272
	ldr	r5, [fp, #-60]	@, %sfp
	and	r6, r3, #15	@, temp.547,
	str	r6, [fp, #-48]	@, %sfp
	bic	r6, r3, #15	@, temp.547,
	cmp	r5, #0	@,
	mov	r5, lr, asl #3	@ bit_len_0,,
	ldr	lr, [fp, #-48]	@, %sfp
	str	r6, [fp, #-52]	@, %sfp
	mov	r3, lr, asl #3	@,,
	str	r3, [fp, #-56]	@, %sfp
	beq	.L9	@,
	ldr	r3, [r1, #100]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L9	@,
	ldr	r6, [fp, #-60]	@, %sfp
	cmp	r5, #0	@ bit_len_0,
	ldr	r1, [fp, #-68]	@, %sfp
	mov	r3, r3, asl #3	@, <variable>.stream_lenInByte,
	str	r3, [fp, #-48]	@, %sfp
	rsb	lr, r1, r6	@,,
	ldrne	ip, [fp, #-48]	@, %sfp
	and	r1, lr, #15	@ tmp299,,
	bic	r6, lr, #15	@ bit_stream_addr_1,,
	ldreq	r5, [fp, #-48]	@ bit_len_0, %sfp
	mov	lr, r1, asl #3	@ bit_offset_1, tmp299,
	bicne	r1, ip, #-33554432	@ pretmp.506,,
	bicne	ip, r6, #-16777216	@ prephitmp.513, bit_stream_addr_1,
	streq	r6, [fp, #-52]	@ bit_stream_addr_1, %sfp
	orrne	lr, r1, lr, asl #25	@,, pretmp.506, bit_offset_1,
	streq	lr, [fp, #-56]	@ bit_offset_1, %sfp
	streq	ip, [fp, #-64]	@ prephitmp.513, %sfp
	strne	lr, [fp, #-64]	@, %sfp
.L11:
	mov	lr, r2, asl #8	@, i,
	mov	r3, r2, asl #5	@ tmp314, i,
	str	lr, [fp, #-48]	@, %sfp
	add	r6, r3, #1	@, tmp314,
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r1, r2, asl #6	@ tmp311, i,
	str	r6, [fp, #-80]	@, %sfp
	add	r1, r1, #1	@ tmp312, tmp311,
	ldr	r6, [fp, #-52]	@, %sfp
	add	r3, lr, #12	@,,
	str	r3, [fp, #-60]	@, %sfp
	bic	lr, r5, #-33554432	@ tmp310, bit_len_0,
	bic	r3, r6, #-16777216	@ D32.555,,
	ldr	r6, [fp, #-56]	@, %sfp
	orr	r5, lr, r6, asl #25	@, D32.552, tmp310,,
	str	r5, [r7, r2, asl #8]	@ D32.552,* pMsgBase.536
	str	r3, [r7, r1, asl #2]	@ D32.555,* pMsgBase.536
	add	r3, r2, #1	@ k, i,
	ldr	r6, [fp, #-64]	@, %sfp
	ldr	lr, [fp, #-80]	@, %sfp
	str	r6, [r7, lr, asl #3]	@,* pMsgBase.536
	ldr	r5, [fp, #-60]	@, %sfp
	str	ip, [r7, r5]	@ prephitmp.513,
	ldr	r6, [r4, sl]	@ temp.556, <variable>.SlcNum
	cmp	r6, r3	@ temp.556, k
	ble	.L29	@,
	rsb	r1, r2, r0	@ tmp329, i, tmp370
	rsb	r5, r3, r3, asl #3	@, tmp336, k, k,
	mov	r1, r1, asl #2	@ tmp330, tmp329,
	add	ip, r4, r5, asl #2	@, tmp338, pAvsDecParam, tmp336,
	add	r0, r1, r4	@ tmp331, tmp330, pAvsDecParam
	ldr	lr, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r0, [r0, #104]	@ prephitmp.515, <variable>.slice_start_mbn
	cmp	lr, r0	@ <variable>.slice_start_mbn, prephitmp.515
	bhi	.L13	@,
	mvn	r5, r3	@ tmp376, k
	add	ip, r5, r6	@ tmp375, tmp376, temp.556
	tst	ip, #1	@ tmp375,
	add	lr, r1, #88	@ tmp345, tmp330,
	add	r1, r4, lr	@ ivtmp.534, pAvsDecParam, tmp345
	beq	.L14	@,
	ldr	r5, [r1, #72]	@ temp.563, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	add	r1, r1, #28	@ ivtmp.534, ivtmp.534,
	cmp	r5, r0	@ temp.563, prephitmp.515
	bls	.L14	@,
	b	.L13	@
.L15:
	ldr	lr, [r1, #72]	@ temp.563, <variable>.slice_start_mbn
	add	r1, r1, #56	@ ivtmp.534, ivtmp.534,
	cmp	lr, r0	@ temp.563, prephitmp.515
	bhi	.L13	@,
	ldr	lr, [ip, #72]	@ temp.563, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	cmp	lr, r0	@ temp.563, prephitmp.515
	bhi	.L13	@,
.L14:
	add	r3, r3, #1	@ k, k,
	add	ip, r1, #28	@ tmp378, ivtmp.534,
	cmp	r6, r3	@ temp.556, k
	bgt	.L15	@,
.L13:
	cmp	r6, r3	@ temp.556, k
	beq	.L30	@,
	rsb	lr, r3, r3, asl #3	@, tmp352, k, k,
	ldr	r5, [fp, #-72]	@, %sfp
	ldr	r6, [fp, #-76]	@, %sfp
	add	ip, r4, lr, asl #2	@, tmp354, pAvsDecParam, tmp352,
	add	r1, r3, r5	@ tmp357, k,
	ldr	lr, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r1, r6, r1, asl #8	@, prephitmp.517,, tmp357,
	sub	ip, lr, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L17:
	ldr	r5, [fp, #-48]	@, %sfp
	mov	r2, r2, asl #4	@ tmp364, i,
	add	r2, r2, #1	@ tmp365, tmp364,
	add	r8, r8, #1	@ j, j,
	add	r6, r5, #252	@ tmp367,,
	uxth	lr, r0	@ tmp362, prephitmp.515
	orr	r0, lr, ip, asl #16	@, D32.568, tmp362, slice_end_mbn,
	str	r0, [r7, r2, asl #4]	@ D32.568,* pMsgBase.536
	str	r1, [r7, r6]	@ prephitmp.517,
.L7:
	sub	r2, r3, #1	@ i, k,
.L8:
	ldr	ip, [r4, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, r2, #1	@ i, i,
	cmp	ip, r2	@ <variable>.SlcNum, i
	bgt	.L18	@,
.L19:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L9:
	mov	ip, #0	@ prephitmp.513,
	str	ip, [fp, #-64]	@ prephitmp.513, %sfp
	b	.L11	@
.L30:
	ldrh	ip, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r1, #0	@ prephitmp.517,
	ldrh	r5, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mul	r6, ip, r5	@ tmp348, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	ip, r6, #1	@ slice_end_mbn, tmp348,
	b	.L17	@
.L29:
	rsb	r5, r2, r0	@ tmp322, i, tmp370
	add	ip, r4, r5, asl #2	@, tmp324, pAvsDecParam, tmp322,
	ldr	r0, [ip, #104]	@ prephitmp.515, <variable>.slice_start_mbn
	b	.L13	@
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg, .-AVSHAL_V200R004_WirteSlicMsg
	.align	2
	.global	AVSHAL_V200R004_StartDec
	.type	AVSHAL_V200R004_StartDec, %function
AVSHAL_V200R004_StartDec:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrh	r3, [r0, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	mov	sl, r1	@ VdhId, VdhId
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L86	@,
	ldrh	r0, [r0, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r0, #512	@ <variable>.PicHeightInMb,
	bhi	.L87	@,
	cmp	r1, #1	@ VdhId,
	bls	.L73	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
.L33:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L73:
	movw	r4, #1148	@ tmp321,
	movw	r6, #:lower16:g_HwMem	@ tmp1136,
	mul	r4, r4, r1	@ tmp320, tmp321, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp1136,
	ldr	r1, [r4, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L88	@,
.L37:
	movw	r2, #14424	@ tmp329,
	ldr	r0, [r5, r2]	@ D.30883, <variable>.SlcNum
	cmp	r0, #0	@ D.30883,
	ble	.L39	@,
	ldr	r3, [r5, #88]	@ temp.815, <variable>.stream_phy_addr
	sub	ip, r0, #1	@ tmp1139, D.30883,
	and	r1, ip, #1	@ tmp1141, tmp1139,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r3, #0	@ temp.815,
	beq	.L62	@,
	ldr	lr, [r5, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	lr, #0	@ <variable>.stream_lenInByte,
	ble	.L62	@,
	bic	r2, r3, #15	@ tmp1154, temp.815,
	cmp	r4, r2	@ stream_base_addr, tmp1154
	movcs	r4, r2	@ stream_base_addr, tmp1154
.L62:
	ldr	r3, [r5, #92]	@ D.30877, <variable>.stream_phy_addr
	cmp	r3, #0	@ D.30877,
	beq	.L64	@,
	ldr	ip, [r5, #100]	@ tmp1156, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp1156,
	ble	.L64	@,
	bic	r3, r3, #15	@ tmp1157, D.30877,
	cmp	r4, r3	@ stream_base_addr, tmp1157
	movcs	r4, r3	@ stream_base_addr, tmp1157
.L64:
	mov	r2, #1	@ i,
	cmp	r2, r0	@ i, D.30883
	add	r3, r5, #28	@ ivtmp.647, pAvsDecParam,
	beq	.L61	@,
	cmp	r1, #0	@ tmp1141,
	beq	.L40	@,
	ldr	r1, [r3, #88]	@ temp.815, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.815,
	beq	.L69	@,
	b	.L75	@
.L40:
	ldr	r1, [r3, #88]	@ temp.815, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.815,
	beq	.L43	@,
	ldr	ip, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L43	@,
	bic	lr, r1, #15	@ tmp334, temp.815,
	cmp	r4, lr	@ stream_base_addr, tmp334
	movcs	r4, lr	@ stream_base_addr, tmp334
.L43:
	ldr	r1, [r3, #92]	@ D.30877, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.30877,
	beq	.L41	@,
	ldr	lr, [r3, #100]	@ tmp331, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp331,
	ble	.L41	@,
	bic	r1, r1, #15	@ tmp332, D.30877,
	cmp	r4, r1	@ stream_base_addr, tmp332
	movcs	r4, r1	@ stream_base_addr, tmp332
.L41:
	add	r3, r3, #28	@ tmp1143, ivtmp.647,
	add	r2, r2, #1	@ tmp1142, i,
	ldr	r1, [r3, #88]	@ temp.815, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.815,
	beq	.L69	@,
.L75:
	ldr	lr, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	lr, #0	@ <variable>.stream_lenInByte,
	ble	.L69	@,
	bic	r1, r1, #15	@ tmp1165, temp.815,
	cmp	r4, r1	@ stream_base_addr, tmp1165
	movcs	r4, r1	@ stream_base_addr, tmp1165
.L69:
	ldr	r1, [r3, #92]	@ D.30877, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.30877,
	beq	.L71	@,
	ldr	ip, [r3, #100]	@ tmp1167, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp1167,
	ble	.L71	@,
	bic	lr, r1, #15	@ tmp1168, D.30877,
	cmp	r4, lr	@ stream_base_addr, tmp1168
	movcs	r4, lr	@ stream_base_addr, tmp1168
.L71:
	add	r2, r2, #1	@ i, tmp1142,
	add	r3, r3, #28	@ ivtmp.647, tmp1143,
	cmp	r2, r0	@ i, D.30883
	bne	.L40	@,
.L61:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L39	@,
	ldrh	r9, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r7, #1148	@ tmp353,
	ldrh	r1, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r8, #0	@ tmp336,
	mul	r7, r7, sl	@ tmp352, tmp353, VdhId
	mov	lr, r8	@ tmp341, tmp336
	mul	ip, r1, r9	@ tmp339, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	r9, r7, r6	@ tmp354, tmp352, tmp1136
	sub	r2, ip, #1	@ tmp340, tmp339,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	lr, r2, #0, #20	@ tmp341, tmp340,,
	orr	r3, lr, #1090519040	@ tmp350, tmp341,
	orr	lr, r3, #4194304	@ tmp350, tmp350,
	bfi	lr, r8, #25, #1	@ tmp350, tmp336,,
	str	lr, [fp, #-48]	@ tmp350,
	str	lr, [ip, #8]	@ tmp350,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	ip, #14844	@ tmp361,
	ldr	r2, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #805306374	@ tmp364,
	movw	r0, #14864	@ tmp373,
	ldr	lr, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	r1, r2, lsr #6	@ tmp362, <variable>.VahbStride,
	mov	r2, #1	@ tmp369,
	bfi	r3, r1, #4, #10	@ tmp364, tmp362,,
	movw	r1, #:lower16:.LC6	@,
	orr	r3, r3, #16384	@ tmp367, tmp364,
	movt	r1, #:upper16:.LC6	@,
	bic	r3, r3, #32768	@ tmp368, tmp367,
	bfi	r3, r2, #16, #12	@ tmp368, tmp369,,
	bic	r3, r3, #805306368	@ tmp370, tmp368,
	orr	r2, r3, #536870912	@ tmp375, tmp370,
	bfi	r2, ip, #30, #1	@ tmp375, <variable>.Compress_en,,
	bfi	r2, r8, #31, #1	@ tmp376, tmp336,,
	str	r2, [fp, #-48]	@ tmp376,
	str	r2, [lr, #12]	@ tmp376,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r9, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bic	r3, ip, #15	@ tmp393, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ tmp393, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp393,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r9, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bic	r3, ip, #15	@ tmp410, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ tmp410, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp410,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r9, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [fp, #-48]	@ stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r4, [r9, #24]	@ stream_base_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrh	r7, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r7, #120	@ <variable>.PicWidthInMb,
	strhi	r8, [fp, #-48]	@ tmp336, D32
	movls	r7, #65536	@ tmp429,
	strls	r7, [fp, #-48]	@ tmp429, D32
	cmp	sl, #1	@ VdhId,
	beq	.L49	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp431,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp431,
.L79:
	ldr	lr, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	r7, [fp, #-48]	@ D32, D32
	orr	r1, r0, r7	@ tmp440,, D32
	add	r0, lr, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	movw	r1, #1148	@ tmp445,
	mul	r9, r1, sl	@ tmp444, tmp445, VdhId
	movw	r2, #:lower16:3148803	@ tmp442,
	movt	r2, #:upper16:3148803	@ tmp442,
	str	r2, [fp, #-48]	@ tmp442, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	ldr	r8, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r8, #60]	@ tmp442,
	ldr	ip, [fp, #-48]	@ D32.682, D32
	ldr	r3, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #64]	@ D32.682,
	ldr	r8, [fp, #-48]	@ D32.685, D32
	ldr	r2, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r2, #68]	@ D32.685,
	ldr	ip, [fp, #-48]	@ D32.688, D32
	ldr	r3, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.688,
	ldr	r8, [fp, #-48]	@ D32.691, D32
	ldr	r2, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r2, #76]	@ D32.691,
	ldr	ip, [fp, #-48]	@ D32.694, D32
	ldr	r3, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.694,
	movw	ip, #14440	@ tmp481,
	ldr	r2, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [fp, #-48]	@ D32.697, D32
	str	r8, [r2, #84]	@ D32.697,
	ldr	r8, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, ip]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	r2, r3, #15	@ tmp483, <variable>.CurPicAddr,
	str	r2, [fp, #-48]	@ tmp483, <variable>.ystaddr_1d
	str	r2, [r8, #96]	@ tmp483,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	ip, #14844	@ tmp493,
	ldr	r3, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r0, #3	@,
	ldr	r2, [r9, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC11	@,
	ldrh	r7, [r5, #50]	@ height_in_mb, <variable>.PicHeightInMb
	movt	r1, #:upper16:.LC11	@,
	str	r3, [fp, #-48]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r3, [r2, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrh	r0, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp505,
	mov	r2, r0, asl #4	@ D.30962, <variable>.PicWidthInMb,
	sub	r8, r2, #1	@ tmp504, D.30962,
	cmp	r8, r3	@ tmp504, tmp505
	bhi	.L89	@,
.L51:
	mov	r3, #16	@ level,
.L53:
	mov	r2, r7, asl #4	@ tmp515, height_in_mb,
	add	lr, r7, #1	@ tmp520, height_in_mb,
	add	ip, r2, #31	@ tmp516, tmp515,
	movw	r0, #14844	@ tmp522,
	movw	r7, #1148	@ tmp529,
	ldr	r8, [r5, r0]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r1, ip, lsr #5	@ tmp517, tmp516,
	mov	r9, lr, lsr #1	@ tmp521, tmp520,
	mul	r7, r7, sl	@ tmp528, tmp529, VdhId
	mov	r0, #3	@,
	mul	lr, r1, r3	@ D.30985, tmp517, level
	movw	r1, #:lower16:.LC12	@,
	mul	r2, r8, r9	@ tmp523, <variable>.VahbStride, tmp521
	movt	r1, #:upper16:.LC12	@,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r9, r7, r6	@ tmp530, tmp528, tmp1136
	mov	r8, #0	@ tmp552,
	add	r2, r2, lr, asl #4	@, tmp525, tmp523, D.30985,
	mov	r2, r2, asl #1	@ tmp526, tmp525,
	str	r2, [fp, #-48]	@ tmp526, <variable>.uvoffset_1d
	str	r2, [ip, #104]	@ tmp526,
	ldr	r2, [fp, #-48]	@, D32
	str	lr, [fp, #-108]	@,
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC13	@,
	ldr	r0, [fp, #-108]	@,
	movt	r1, #:upper16:.LC13	@,
	mov	ip, r0, asl #5	@ D32.433, D.30985,
	str	ip, [r2, #108]	@ D32.433,
	ldr	r3, [r9, #1128]	@ D32.434, <variable>.DnrMbInfoAddr
	mov	r0, #3	@,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ D32.434, D32
	str	r3, [ip, #144]	@ D32.434,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [fp, #-48]	@ tmp552, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r8, [r2, #148]	@ tmp552,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [fp, #-48]	@ tmp552, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	r8, [ip, #152]	@ tmp552,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r7, #0	@,
	str	r7, [r3, #32]	@,
	ldr	r0, [r9, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r7, r0, #0	@ pMsgBase,
	beq	.L90	@,
	ldrh	r1, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r3, r7	@ p32.734, pMsgBase
	ldrh	lr, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@ tmp589,
	sub	ip, r1, #1	@ tmp588, <variable>.PicWidthInMb,
	sub	r1, lr, #1	@ tmp592, <variable>.PicHeightInMb,
	ldrb	lr, [r5, #30]	@ zero_extendqisi2	@ <variable>.SamplePrecision, <variable>.SamplePrecision
	bfi	r2, ip, #0, #9	@ tmp589, tmp588,,
	ldrb	ip, [r5, #31]	@ zero_extendqisi2	@ <variable>.ChromaFormat, <variable>.ChromaFormat
	bfi	r2, r1, #16, #9	@ tmp593, tmp592,,
	movw	r1, #:lower16:.LC17	@,
	bfi	r2, ip, #25, #2	@ tmp594, <variable>.ChromaFormat,,
	movt	r1, #:upper16:.LC17	@,
	bfi	r2, lr, #27, #2	@ tmp598, <variable>.SamplePrecision,,
	bic	lr, r2, #65024	@ tmp603, tmp598,
	bfi	lr, r8, #29, #3	@ tmp603, tmp552,,
	str	lr, [fp, #-48]	@ tmp603,
	str	lr, [r3], #4	@ tmp603,
	add	r2, r3, r0	@, p32.734,
	str	r2, [fp, #-100]	@, %sfp
	ldr	ip, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	lr, ip, r0	@,,
	str	r3, [fp, #-108]	@,
	str	lr, [fp, #-96]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	mov	r0, #4	@,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	and	r3, r2, #1	@ tmp611, <variable>.ProgrsvFrame,
	ldrb	ip, [r5, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r3, r1, #1, #2	@ tmp611, <variable>.PicStruct,,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@, <variable>.RepeatFirstField
	ldrb	lr, [r5, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r3, ip, #3, #2	@ tmp615, <variable>.PicCodingType,,
	str	r1, [fp, #-56]	@, %sfp
	bfi	r3, lr, #5, #1	@ tmp619, <variable>.TopFieldFirst,,
	ldrb	ip, [r5, #13]	@ zero_extendqisi2	@, <variable>.FixQPFlag
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	ip, [fp, #-60]	@, %sfp
	ldr	ip, [fp, #-96]	@, %sfp
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.PicQuant, <variable>.PicQuant
	add	ip, ip, r0	@,,
	str	ip, [fp, #-92]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	bfi	r3, ip, #6, #1	@ tmp623,,,
	ldrb	ip, [r5, #11]	@ zero_extendqisi2	@, <variable>.SkipModeFlag
	str	ip, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-92]	@, %sfp
	add	ip, ip, r0	@,,
	str	ip, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-60]	@, %sfp
	bfi	r3, ip, #7, #1	@ tmp627,,,
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	bfi	r3, lr, #8, #6	@ tmp631, <variable>.PicQuant,,
	str	ip, [fp, #-60]	@, %sfp
	ldr	ip, [fp, #-88]	@, %sfp
	add	ip, ip, r0	@,,
	str	ip, [fp, #-84]	@, %sfp
	add	ip, ip, r0	@,,
	ldrb	lr, [r5, #10]	@ zero_extendqisi2	@ <variable>.PicRefFlag, <variable>.PicRefFlag
	str	ip, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	bfi	r3, ip, #14, #1	@ tmp635,,,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@, <variable>.NoFwdRefFlag
	str	ip, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-80]	@, %sfp
	add	ip, ip, r0	@,,
	str	ip, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-60]	@, %sfp
	bfi	r3, ip, #15, #1	@ tmp639,,,
	ldr	ip, [fp, #-76]	@, %sfp
	bfi	r3, lr, #16, #1	@ tmp643, <variable>.PicRefFlag,,
	ldr	lr, [fp, #-56]	@, %sfp
	add	ip, ip, r0	@,,
	str	ip, [fp, #-72]	@, %sfp
	add	ip, ip, r0	@,,
	str	ip, [fp, #-68]	@, %sfp
	ldr	ip, [fp, #-68]	@, %sfp
	bfi	r3, lr, #17, #1	@ tmp647,,,
	bfi	r3, r8, #18, #14	@ tmp651, tmp552,,
	add	lr, ip, r0	@,,
	str	lr, [fp, #-64]	@, %sfp
	add	ip, lr, r0	@,,
	str	r3, [fp, #-48]	@ tmp651,
	add	r2, ip, r0	@,,
	str	ip, [fp, #-60]	@, %sfp
	str	r3, [r7, #4]	@ tmp651,
	str	r2, [fp, #-56]	@, %sfp
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	lr, r3, r0	@,,
	str	lr, [fp, #-104]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	mov	r0, #4	@,
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ <variable>.AlphaOffset, <variable>.AlphaOffset
	and	r2, r2, #1	@ tmp659, <variable>.LoopFiltDisable,
	ldr	lr, [fp, #-108]	@,
	bfi	r2, r1, #1, #1	@ tmp659, <variable>.LoopFiltParamFlag,,
	ldrb	r3, [r5, #17]	@ zero_extendqisi2	@ <variable>.BetaOffset, <variable>.BetaOffset
	bfi	r2, ip, #2, #5	@ tmp663, <variable>.AlphaOffset,,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bfi	r2, r3, #7, #5	@ tmp667, <variable>.BetaOffset,,
	str	r2, [fp, #-48]	@ tmp667,
	str	r2, [lr, #4]	@ tmp667,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	ldrb	r1, [r5, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	mov	r0, #4	@,
	ldrb	r2, [r5, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	and	r3, r3, #1	@ tmp678, <variable>.FwdTopFieldFirst0,
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.FwdPicStruct1, <variable>.FwdPicStruct1
	bfi	r3, r1, #1, #2	@ tmp678, <variable>.FwdPicStruct0,,
	ldrb	lr, [r5, #23]	@ zero_extendqisi2	@ <variable>.BwdTopFieldFirst, <variable>.BwdTopFieldFirst
	bfi	r3, r2, #3, #1	@ tmp682, <variable>.FwdTopFieldFirst1,,
	bfi	r3, ip, #4, #2	@ tmp686, <variable>.FwdPicStruct1,,
	ldrb	r2, [r5, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	bfi	r3, lr, #6, #1	@ tmp690, <variable>.BwdTopFieldFirst,,
	ldr	lr, [fp, #-100]	@, %sfp
	bfi	r3, r2, #7, #2	@ tmp694, <variable>.BwdPicStruct,,
	movw	r1, #:lower16:.LC20	@,
	bfi	r3, r8, #9, #23	@ tmp698, tmp552,,
	str	r3, [fp, #-48]	@ tmp698,
	str	r3, [lr, #4]	@ tmp698,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-96]	@, %sfp
	movw	r1, #14428	@ tmp703,
	mov	r0, #4	@,
	ldr	r3, [r5, r1]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bic	r2, r3, #15	@ tmp705, <variable>.BwdRefPicAddr,
	str	r2, [fp, #-48]	@ tmp705, <variable>.bwd_address
	str	r2, [ip, #4]	@ tmp705,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-92]	@, %sfp
	movw	r0, #14432	@ tmp710,
	movw	r1, #:lower16:.LC22	@,
	ldr	r3, [r5, r0]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #4	@,
	bic	ip, r3, #15	@ tmp712, <variable>.FwdRefPic0Addr,
	str	ip, [fp, #-48]	@ tmp712, <variable>.fwd_address_0
	str	ip, [r2, #4]	@ tmp712,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-88]	@, %sfp
	movw	r1, #14436	@ tmp717,
	mov	r0, #4	@,
	ldr	r3, [r5, r1]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	r2, r3, #15	@ tmp719, <variable>.FwdRefPic1Addr,
	str	r2, [fp, #-48]	@ tmp719, <variable>.fwd_address_1
	str	r2, [ip, #4]	@ tmp719,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-84]	@, %sfp
	movw	r0, #14452	@ tmp724,
	movw	r1, #:lower16:.LC24	@,
	ldr	ip, [r5, r0]	@ <variable>.rcn_address, <variable>.rcn_address
	movt	r1, #:upper16:.LC24	@,
	mov	r0, #4	@,
	bic	r3, ip, #15	@ tmp726, <variable>.rcn_address,
	str	r3, [fp, #-48]	@ tmp726, <variable>.rcn_address
	str	r3, [r2, #4]	@ tmp726,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	r2, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldrb	ip, [r5, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	and	r3, r1, #1	@ tmp734, <variable>.ColPicType,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bfi	r3, ip, #24, #2	@ tmp734, <variable>.ColPicStruct,,
	str	r3, [fp, #-48]	@ tmp734,
	str	r3, [r2, #4]	@ tmp734,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-76]	@, %sfp
	ldr	ip, [r5, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r8	@ tmp742, tmp552
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	bfi	r3, ip, #0, #24	@ tmp742, <variable>.StreamPhyAddr,,
	str	r3, [fp, #-48]	@ tmp742,
	str	r3, [r2, #4]	@ tmp742,
	movt	r1, #:upper16:.LC26	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [fp, #-72]	@, %sfp
	mov	r0, #4	@,
	ldr	ip, [r5, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bic	r3, r1, #-16777216	@ tmp750, <variable>.StreamLength,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bfi	r3, ip, #24, #7	@ tmp750, <variable>.StreamBitOffset,,
	str	r3, [fp, #-48]	@ tmp750,
	str	r3, [r2, #4]	@ tmp750,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	ip, [r5, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bfi	r8, ip, #0, #24	@ tmp755, <variable>.StreamPhyAddr,,
	str	r8, [fp, #-48]	@ tmp755,
	str	r8, [r2, #4]	@ tmp755,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_disable, <variable>.chroma_quant_param_disable
	mov	r0, #4	@,
	ldrb	ip, [r5, #35]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_v, <variable>.chroma_quant_param_delta_v
	and	r3, r3, #1	@ tmp764, <variable>.weighting_quant_flag,
	ldrb	r2, [r5, #34]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_u, <variable>.chroma_quant_param_delta_u
	bfi	r3, r1, #1, #1	@ tmp764, <variable>.chroma_quant_param_disable,,
	ldrb	lr, [r5, #36]	@ zero_extendqisi2	@ <variable>.aec_enable, <variable>.aec_enable
	bfi	r3, ip, #2, #6	@ tmp768, <variable>.chroma_quant_param_delta_v,,
	bfi	r3, r2, #8, #6	@ tmp772, <variable>.chroma_quant_param_delta_u,,
	ldrb	ip, [r5, #37]	@ zero_extendqisi2	@ <variable>.p_filed_enhanced_flag, <variable>.p_filed_enhanced_flag
	bfi	r3, lr, #14, #1	@ tmp776, <variable>.aec_enable,,
	ldr	lr, [fp, #-64]	@, %sfp
	ldrb	r2, [r5, #38]	@ zero_extendqisi2	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	bfi	r3, ip, #15, #1	@ tmp780, <variable>.p_filed_enhanced_flag,,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bfi	r3, r2, #16, #1	@ tmp784, <variable>.b_filed_enhanced_flag,,
	str	r3, [fp, #-48]	@ tmp784,
	str	r3, [lr, #4]	@ tmp784,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-60]	@, %sfp
	ldr	r3, [r9, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bic	ip, r3, #15	@ tmp799, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp799, <variable>.pmv_top_addr
	str	ip, [r2, #4]	@ tmp799,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r3, [r9, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	r2, r3, #15	@ tmp811, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp811, <variable>.topmb_intra_addr
	str	r2, [ip, #4]	@ tmp811,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-104]	@, %sfp
	movw	r0, #14448	@ tmp816,
	ldr	r3, [r5, r0]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	add	ip, r1, #4	@ p32.790,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	r2, r3, #15	@ tmp818, <variable>.ColPmvAddr,
	str	r2, [fp, #-48]	@ tmp818, <variable>.colpic_mv_addr
	str	r2, [ip, #4]	@ tmp818,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	add	r3, r5, #14400	@ ivtmp.638, pAvsDecParam,
	add	r0, r3, #60	@ ivtmp.638, ivtmp.638,
	add	lr, r7, #196	@ D.31520, pMsgBase,
	add	r3, r7, #68	@ ivtmp.641, pMsgBase,
.L56:
	mov	r1, r0	@ tmp1137, ivtmp.638
	mov	r2, r3	@ tmp1138, ivtmp.641
	ldr	ip, [r1], #4	@ D32.453, <variable>.PmvConfigTab
	str	ip, [fp, #-48]	@ D32.453, D32
	str	ip, [r2], #4	@ D32.453,
	ldr	ip, [r0, #4]	@ D32.453, <variable>.PmvConfigTab
	add	r0, r1, #4	@ ivtmp.638, tmp1137,
	str	ip, [fp, #-48]	@ D32.453, D32
	str	ip, [r3, #4]	@ D32.453,
	add	r3, r2, #4	@ ivtmp.641, tmp1138,
	cmp	r3, lr	@ ivtmp.641, D.31520
	bne	.L56	@,
	movw	r2, #14444	@ tmp824,
	mov	r0, #4	@,
	ldr	r3, [r5, r2]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bic	lr, r3, #15	@ tmp826, <variable>.CurPmvAddr,
	str	lr, [fp, #-48]	@ tmp826, <variable>.pmv_colmb_addr
	str	lr, [r7, #196]	@ tmp826,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	r1, #1148	@ tmp834,
	mla	r6, r1, sl, r6	@ tmp835, tmp834, VdhId, tmp1136
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldr	ip, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	r2, ip, #15	@ tmp838, <variable>.DblkTopAddr,
	str	r2, [fp, #-48]	@ tmp838, <variable>.dblk_top_addr
	str	r2, [r7, #200]	@ tmp838,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	bic	ip, r3, #15	@ tmp850, <variable>.SedTopAddr,
	str	ip, [fp, #-48]	@ tmp850, <variable>.sed_top_addr
	str	ip, [r7, #204]	@ tmp850,
	movt	r1, #:upper16:.LC35	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	add	r3, r2, #320	@ D32.457, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ D32.457, D32
	str	r3, [r7, #252]	@ D32.457,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	cmp	r0, #1	@ <variable>.weighting_quant_flag,
	beq	.L91	@,
.L57:
	mov	r0, r5	@, pAvsDecParam
	mov	r1, r4	@, stream_base_addr
	mov	r2, sl	@, VdhId
	bl	AVSHAL_V200R004_WirteSlicMsg	@
	mov	r0, #0	@ D.30861,
	b	.L33	@
.L89:
	sub	r9, r2, #2048	@ tmp506, D.30962,
	sub	r0, r9, #1	@ tmp506, tmp506,
	cmp	r0, r3	@ tmp506, tmp505
	movls	r3, #32	@ level,
	bls	.L53	@,
	sub	r8, r2, #4096	@ tmp509, D.30962,
	sub	ip, r8, #1	@ tmp509, tmp509,
	cmp	ip, r3	@ tmp509, tmp505
	movls	r3, #48	@ level,
	bls	.L53	@,
	sub	r1, r2, #6144	@ tmp512, D.30962,
	sub	r2, r1, #1	@ tmp512, tmp512,
	cmp	r2, r3	@ tmp512, tmp505
	movls	r3, #64	@ level,
	bls	.L53	@,
	b	.L51	@
.L49:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp437,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp437,
	b	.L79	@
.L91:
	movw	ip, #14600	@ tmp867,
	mov	r1, #14592	@ tmp863,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp868, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp872, tmp872,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp864, <variable>.cur_wq_matrix
	movw	r2, #14596	@ tmp876,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp873, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp877, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp870, tmp868,
	orr	r1, ip, r0, asl #8	@, tmp871, tmp870, tmp864,
	movw	ip, #14616	@ tmp884,
	orr	lr, r1, r3	@ tmp875, tmp871, tmp873
	sub	r1, ip, #8	@ tmp880, tmp880,
	orr	r0, lr, r2, asl #16	@, D32.832, tmp875, tmp877,
	str	r0, [r7, #256]	@ D32.832,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp885, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp889, tmp889,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp881, <variable>.cur_wq_matrix
	movw	r2, #14612	@ tmp893,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp890, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp894, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp887, tmp885,
	orr	r1, ip, r0, asl #8	@, tmp888, tmp887, tmp881,
	movw	ip, #14632	@ tmp901,
	orr	lr, r1, r3	@ tmp892, tmp888, tmp890
	sub	r1, ip, #8	@ tmp897, tmp897,
	orr	r0, lr, r2, asl #16	@, D32.849, tmp892, tmp894,
	str	r0, [r7, #260]	@ D32.849,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp902, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp906, tmp906,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp898, <variable>.cur_wq_matrix
	movw	r2, #14628	@ tmp910,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp907, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp911, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp904, tmp902,
	orr	r1, ip, r0, asl #8	@, tmp905, tmp904, tmp898,
	movw	ip, #14648	@ tmp918,
	orr	lr, r1, r3	@ tmp909, tmp905, tmp907
	sub	r1, ip, #8	@ tmp914, tmp914,
	orr	r0, lr, r2, asl #16	@, D32.866, tmp909, tmp911,
	str	r0, [r7, #264]	@ D32.866,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp919, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp923, tmp923,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp915, <variable>.cur_wq_matrix
	movw	r2, #14644	@ tmp927,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp924, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp928, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp921, tmp919,
	orr	r1, ip, r0, asl #8	@, tmp922, tmp921, tmp915,
	movw	ip, #14664	@ tmp935,
	orr	lr, r1, r3	@ tmp926, tmp922, tmp924
	mov	r1, #14656	@ tmp931,
	orr	r0, lr, r2, asl #16	@, D32.883, tmp926, tmp928,
	str	r0, [r7, #268]	@ D32.883,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp936, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp940, tmp940,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp932, <variable>.cur_wq_matrix
	movw	r2, #14660	@ tmp944,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp941, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp945, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp938, tmp936,
	orr	r1, ip, r0, asl #8	@, tmp939, tmp938, tmp932,
	movw	ip, #14680	@ tmp952,
	orr	lr, r1, r3	@ tmp943, tmp939, tmp941
	sub	r1, ip, #8	@ tmp948, tmp948,
	orr	r0, lr, r2, asl #16	@, D32.900, tmp943, tmp945,
	str	r0, [r7, #272]	@ D32.900,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp953, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp957, tmp957,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp949, <variable>.cur_wq_matrix
	movw	r2, #14676	@ tmp961,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp958, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp962, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp955, tmp953,
	orr	r1, ip, r0, asl #8	@, tmp956, tmp955, tmp949,
	movw	ip, #14696	@ tmp969,
	orr	lr, r1, r3	@ tmp960, tmp956, tmp958
	sub	r1, ip, #8	@ tmp965, tmp965,
	orr	r0, lr, r2, asl #16	@, D32.917, tmp960, tmp962,
	str	r0, [r7, #276]	@ D32.917,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp970, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp974, tmp974,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp966, <variable>.cur_wq_matrix
	movw	r2, #14692	@ tmp978,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp975, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp979, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp972, tmp970,
	orr	r1, ip, r0, asl #8	@, tmp973, tmp972, tmp966,
	movw	ip, #14712	@ tmp986,
	orr	lr, r1, r3	@ tmp977, tmp973, tmp975
	sub	r1, ip, #8	@ tmp982, tmp982,
	orr	r0, lr, r2, asl #16	@, D32.934, tmp977, tmp979,
	str	r0, [r7, #280]	@ D32.934,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp987, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp991, tmp991,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp983, <variable>.cur_wq_matrix
	movw	r2, #14708	@ tmp995,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp992, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp996, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp989, tmp987,
	orr	r1, ip, r0, asl #8	@, tmp990, tmp989, tmp983,
	movw	ip, #14728	@ tmp1003,
	orr	lr, r1, r3	@ tmp994, tmp990, tmp992
	mov	r1, #14720	@ tmp999,
	orr	r0, lr, r2, asl #16	@, D32.951, tmp994, tmp996,
	str	r0, [r7, #284]	@ D32.951,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1004, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1008, tmp1008,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1000, <variable>.cur_wq_matrix
	movw	r2, #14724	@ tmp1012,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1009, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1013, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1006, tmp1004,
	orr	r1, ip, r0, asl #8	@, tmp1007, tmp1006, tmp1000,
	movw	ip, #14744	@ tmp1020,
	orr	lr, r1, r3	@ tmp1011, tmp1007, tmp1009
	sub	r1, ip, #8	@ tmp1016, tmp1016,
	orr	r0, lr, r2, asl #16	@, D32.968, tmp1011, tmp1013,
	str	r0, [r7, #288]	@ D32.968,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1021, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1025, tmp1025,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1017, <variable>.cur_wq_matrix
	movw	r2, #14740	@ tmp1029,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1026, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1030, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1023, tmp1021,
	orr	r1, ip, r0, asl #8	@, tmp1024, tmp1023, tmp1017,
	movw	ip, #14760	@ tmp1037,
	orr	lr, r1, r3	@ tmp1028, tmp1024, tmp1026
	sub	r1, ip, #8	@ tmp1033, tmp1033,
	orr	r0, lr, r2, asl #16	@, D32.985, tmp1028, tmp1030,
	str	r0, [r7, #292]	@ D32.985,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1038, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1042, tmp1042,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1034, <variable>.cur_wq_matrix
	movw	r2, #14756	@ tmp1046,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1043, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1047, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1040, tmp1038,
	orr	r1, ip, r0, asl #8	@, tmp1041, tmp1040, tmp1034,
	movw	ip, #14776	@ tmp1054,
	orr	lr, r1, r3	@ tmp1045, tmp1041, tmp1043
	sub	r1, ip, #8	@ tmp1050, tmp1050,
	orr	r0, lr, r2, asl #16	@, D32.1002, tmp1045, tmp1047,
	str	r0, [r7, #296]	@ D32.1002,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1055, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1059, tmp1059,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1051, <variable>.cur_wq_matrix
	movw	r2, #14772	@ tmp1063,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1060, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1064, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1057, tmp1055,
	orr	r1, ip, r0, asl #8	@, tmp1058, tmp1057, tmp1051,
	movw	ip, #14792	@ tmp1071,
	orr	lr, r1, r3	@ tmp1062, tmp1058, tmp1060
	mov	r1, #14784	@ tmp1067,
	orr	r0, lr, r2, asl #16	@, D32.1019, tmp1062, tmp1064,
	str	r0, [r7, #300]	@ D32.1019,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1072, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1076, tmp1076,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1068, <variable>.cur_wq_matrix
	movw	r2, #14788	@ tmp1080,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1077, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1081, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1074, tmp1072,
	orr	r1, ip, r0, asl #8	@, tmp1075, tmp1074, tmp1068,
	movw	ip, #14808	@ tmp1088,
	orr	lr, r1, r3	@ tmp1079, tmp1075, tmp1077
	sub	r1, ip, #8	@ tmp1084, tmp1084,
	orr	r0, lr, r2, asl #16	@, D32.1036, tmp1079, tmp1081,
	str	r0, [r7, #304]	@ D32.1036,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1089, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1093, tmp1093,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1085, <variable>.cur_wq_matrix
	movw	r2, #14804	@ tmp1097,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1094, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1098, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1091, tmp1089,
	orr	r1, ip, r0, asl #8	@, tmp1092, tmp1091, tmp1085,
	movw	ip, #14824	@ tmp1105,
	orr	lr, r1, r3	@ tmp1096, tmp1092, tmp1094
	sub	r1, ip, #8	@ tmp1101, tmp1101,
	orr	r0, lr, r2, asl #16	@, D32.1054, tmp1096, tmp1098,
	str	r0, [r7, #308]	@ D32.1054,
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ tmp1106, <variable>.cur_wq_matrix
	sub	r3, r1, #4	@ tmp1110, tmp1110,
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ tmp1102, <variable>.cur_wq_matrix
	movw	r2, #14820	@ tmp1114,
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ tmp1111, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp1115, <variable>.cur_wq_matrix
	mov	ip, lr, asl #24	@ tmp1108, tmp1106,
	orr	r1, ip, r0, asl #8	@, tmp1109, tmp1108, tmp1102,
	movw	ip, #14840	@ tmp1122,
	orr	lr, r1, r3	@ tmp1113, tmp1109, tmp1111
	sub	r3, ip, #8	@ tmp1118, tmp1118,
	orr	r0, lr, r2, asl #16	@, D32.1071, tmp1113, tmp1115,
	str	r0, [r7, #312]	@ D32.1071,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp1123, <variable>.cur_wq_matrix
	sub	lr, r3, #4	@ tmp1127, tmp1127,
	ldrb	r0, [r5, r3]	@ zero_extendqisi2	@ tmp1119, <variable>.cur_wq_matrix
	movw	r2, #14836	@ tmp1131,
	ldrb	r3, [r5, lr]	@ zero_extendqisi2	@ tmp1128, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp1125, tmp1123,
	ldrb	lr, [r5, r2]	@ zero_extendqisi2	@ tmp1132, <variable>.cur_wq_matrix
	orr	r1, ip, r0, asl #8	@, tmp1126, tmp1125, tmp1119,
	orr	ip, r1, r3	@ tmp1130, tmp1126, tmp1128
	orr	r0, ip, lr, asl #16	@, D32.458, tmp1130, tmp1132,
	str	r0, [fp, #-48]	@ D32.458, D32
	str	r0, [r7, #316]	@ D32.458,
	b	.L57	@
.L88:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.30870,
	beq	.L38	@,
	str	r3, [r4, r6]	@ D.30870, <variable>.pVdmRegVirAddr
	b	.L37	@
.L39:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
	b	.L33	@
.L86:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #87	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
	b	.L33	@
.L87:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #88	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
	b	.L33	@
.L38:
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
	b	.L33	@
.L90:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #323	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30861,
	b	.L33	@
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"VdhId is wrong! AVSHAL_V200R003_StartDec\012\000"
	.space	2
.LC3:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC4:
	.ascii	"stream_base_addr = %#x\012\000"
.LC5:
	.ascii	"BASIC_V200R004_CFG0 = 0x%x\012\000"
.LC6:
	.ascii	"BASIC_V200R004_CFG1 = 0x%x\012\000"
.LC7:
	.ascii	"AVM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC8:
	.ascii	"VAM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC9:
	.ascii	"STREAM_V200R004_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC10:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC11:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC12:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC13:
	.ascii	"VREG_V200R004_DNR_MBINFO_STADDR = 0x%x\012\000"
.LC14:
	.ascii	"VREG_V200R003_REF_PIC_TYPE = 0x%x\012\000"
	.space	1
.LC15:
	.ascii	"VREG_V200R004_FF_APT_EN = 0x%x\012\000"
.LC16:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC17:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D10 = 0x%x\012\000"
.LC28:
	.ascii	"D11 = 0x%x\012\000"
.LC29:
	.ascii	"D12 = 0x%x\012\000"
.LC30:
	.ascii	"D13 = 0x%x\012\000"
.LC31:
	.ascii	"D14 = 0x%x\012\000"
.LC32:
	.ascii	"D16 = 0x%x\012\000"
.LC33:
	.ascii	"D49 = 0x%x\012\000"
.LC34:
	.ascii	"D50 = 0x%x\012\000"
.LC35:
	.ascii	"D51 = 0x%x\012\000"
.LC36:
	.ascii	"D63 = 0x%x\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
