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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_avs.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_avs.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_avs.o
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
	.global	AVSHAL_V200R003MPW_InitHal
	.type	AVSHAL_V200R003MPW_InitHal, %function
AVSHAL_V200R003MPW_InitHal:
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
	.size	AVSHAL_V200R003MPW_InitHal, .-AVSHAL_V200R003MPW_InitHal
	.align	2
	.global	AVSHAL_V200R003MPW_WirteSlicMsg
	.type	AVSHAL_V200R003MPW_WirteSlicMsg, %function
AVSHAL_V200R003MPW_WirteSlicMsg:
	.fnstart
.LFB1348:
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
	movw	sl, #:lower16:g_HwMem	@ tmp219,
	movt	sl, #:upper16:g_HwMem	@ tmp219,
	mov	r4, r0	@ pAvsDecParam, pAvsDecParam
	movw	r0, #1148	@ tmp222,
	str	r1, [fp, #-68]	@ stream_base_addr, %sfp
	mla	r7, r0, r2, sl	@ tmp223, tmp222, VdhId, tmp219
	ldr	r0, [r7, #44]	@ D.31335, <variable>.MsgSlotAddr
	add	r1, r0, #256	@, D.31335,
	str	r1, [fp, #-72]	@, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, #0	@ <variable>.slice_start_mbn,
	streq	r3, [fp, #-76]	@ <variable>.slice_start_mbn, %sfp
	add	r7, r0, #256	@ pMsgBase.523, D.31336,
	beq	.L5	@,
	ldr	r6, [r4, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	mov	sl, #0	@ tmp232,
	mov	r5, #1	@,
	str	r5, [fp, #-76]	@, %sfp
	add	r2, r6, #4	@ tmp226, <variable>.stream_phy_addr,
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r5, [fp, #-72]	@, %sfp
	rsb	lr, r6, r2	@ D.31345,, tmp226
	bic	r3, lr, #-16777216	@ D32.526, D.31345,
	add	ip, r5, #256	@ D32.530,,
	bic	r2, r3, #15	@ D32.526, D32.526,
	mov	r1, lr, asl #28	@ D32, D.31345,
	str	r1, [r0, #256]	@ D32,
	str	r2, [r0, #260]	@ D32.526,
	str	sl, [r0, #264]	@ tmp232,
	str	sl, [r0, #268]	@ tmp232,
	ldr	r3, [r4, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	lr, r3, #1	@ tmp234, <variable>.slice_start_mbn,
	mov	r2, lr, asl #16	@ D32.529, tmp234,
	str	r2, [r0, #272]	@ D32.529,
	str	ip, [r0, #508]	@ D32.530,
.L5:
	movw	sl, #14424	@ tmp238,
	ldr	r0, [r4, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L19	@,
	mov	r3, #0	@ k,
	movw	r9, #263	@ tmp371,
	mov	r8, r3	@ j, k
	mov	r2, r3	@ i, k
.L18:
	cmp	r8, r9	@ j, tmp371
	bgt	.L7	@,
	sub	r5, r2, #1	@ tmp250, i,
	mov	r0, r2, asl #3	@ tmp370, i,
	rsb	r1, r2, r0	@ tmp246, i, tmp370
	rsb	r6, r5, r5, asl #3	@, tmp254, tmp250, tmp250,
	add	r1, r4, r1, asl #2	@, tmp248, pAvsDecParam, tmp246,
	add	lr, r4, r6, asl #2	@, tmp256, pAvsDecParam, tmp254,
	cmp	r2, #0	@ i,
	movle	r6, #0	@,
	movgt	r6, #1	@,
	ldr	r5, [r1, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	ip, [lr, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r5, ip	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
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
	rsb	r3, r5, r3	@ temp.534,, tmp272
	ldr	r5, [fp, #-60]	@, %sfp
	and	r6, r3, #15	@, temp.534,
	str	r6, [fp, #-48]	@, %sfp
	bic	r6, r3, #15	@, temp.534,
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
	bicne	r1, ip, #-33554432	@ pretmp.493,,
	bicne	ip, r6, #-16777216	@ prephitmp.500, bit_stream_addr_1,
	streq	r6, [fp, #-52]	@ bit_stream_addr_1, %sfp
	orrne	lr, r1, lr, asl #25	@,, pretmp.493, bit_offset_1,
	streq	lr, [fp, #-56]	@ bit_offset_1, %sfp
	streq	ip, [fp, #-64]	@ prephitmp.500, %sfp
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
	bic	r3, r6, #-16777216	@ D32.542,,
	ldr	r6, [fp, #-56]	@, %sfp
	orr	r5, lr, r6, asl #25	@, D32.539, tmp310,,
	str	r5, [r7, r2, asl #8]	@ D32.539,* pMsgBase.523
	str	r3, [r7, r1, asl #2]	@ D32.542,* pMsgBase.523
	add	r3, r2, #1	@ k, i,
	ldr	r6, [fp, #-64]	@, %sfp
	ldr	lr, [fp, #-80]	@, %sfp
	str	r6, [r7, lr, asl #3]	@,* pMsgBase.523
	ldr	r5, [fp, #-60]	@, %sfp
	str	ip, [r7, r5]	@ prephitmp.500,
	ldr	r6, [r4, sl]	@ temp.543, <variable>.SlcNum
	cmp	r6, r3	@ temp.543, k
	ble	.L29	@,
	rsb	r1, r2, r0	@ tmp329, i, tmp370
	rsb	r5, r3, r3, asl #3	@, tmp336, k, k,
	mov	r1, r1, asl #2	@ tmp330, tmp329,
	add	ip, r4, r5, asl #2	@, tmp338, pAvsDecParam, tmp336,
	add	r0, r1, r4	@ tmp331, tmp330, pAvsDecParam
	ldr	lr, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r0, [r0, #104]	@ prephitmp.502, <variable>.slice_start_mbn
	cmp	lr, r0	@ <variable>.slice_start_mbn, prephitmp.502
	bhi	.L13	@,
	mvn	r5, r3	@ tmp376, k
	add	ip, r5, r6	@ tmp375, tmp376, temp.543
	tst	ip, #1	@ tmp375,
	add	lr, r1, #88	@ tmp345, tmp330,
	add	r1, r4, lr	@ ivtmp.521, pAvsDecParam, tmp345
	beq	.L14	@,
	ldr	r5, [r1, #72]	@ temp.550, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	add	r1, r1, #28	@ ivtmp.521, ivtmp.521,
	cmp	r5, r0	@ temp.550, prephitmp.502
	bls	.L14	@,
	b	.L13	@
.L15:
	ldr	lr, [r1, #72]	@ temp.550, <variable>.slice_start_mbn
	add	r1, r1, #56	@ ivtmp.521, ivtmp.521,
	cmp	lr, r0	@ temp.550, prephitmp.502
	bhi	.L13	@,
	ldr	lr, [ip, #72]	@ temp.550, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	cmp	lr, r0	@ temp.550, prephitmp.502
	bhi	.L13	@,
.L14:
	add	r3, r3, #1	@ k, k,
	add	ip, r1, #28	@ tmp378, ivtmp.521,
	cmp	r6, r3	@ temp.543, k
	bgt	.L15	@,
.L13:
	cmp	r6, r3	@ temp.543, k
	beq	.L30	@,
	rsb	lr, r3, r3, asl #3	@, tmp352, k, k,
	ldr	r5, [fp, #-76]	@, %sfp
	ldr	r6, [fp, #-72]	@, %sfp
	add	ip, r4, lr, asl #2	@, tmp354, pAvsDecParam, tmp352,
	add	r1, r3, r5	@ tmp357, k,
	ldr	lr, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r1, r6, r1, asl #8	@, prephitmp.504,, tmp357,
	sub	ip, lr, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L17:
	ldr	r5, [fp, #-48]	@, %sfp
	mov	r2, r2, asl #4	@ tmp364, i,
	add	r2, r2, #1	@ tmp365, tmp364,
	add	r8, r8, #1	@ j, j,
	add	r6, r5, #252	@ tmp367,,
	uxth	lr, r0	@ tmp362, prephitmp.502
	orr	r0, lr, ip, asl #16	@, D32.555, tmp362, slice_end_mbn,
	str	r0, [r7, r2, asl #4]	@ D32.555,* pMsgBase.523
	str	r1, [r7, r6]	@ prephitmp.504,
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
	mov	ip, #0	@ prephitmp.500,
	str	ip, [fp, #-64]	@ prephitmp.500, %sfp
	b	.L11	@
.L30:
	ldrh	ip, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r1, #0	@ prephitmp.504,
	ldrh	r5, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mul	r6, ip, r5	@ tmp348, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	ip, r6, #1	@ slice_end_mbn, tmp348,
	b	.L17	@
.L29:
	rsb	r5, r2, r0	@ tmp322, i, tmp370
	add	ip, r4, r5, asl #2	@, tmp324, pAvsDecParam, tmp322,
	ldr	r0, [ip, #104]	@ prephitmp.502, <variable>.slice_start_mbn
	b	.L13	@
	.fnend
	.size	AVSHAL_V200R003MPW_WirteSlicMsg, .-AVSHAL_V200R003MPW_WirteSlicMsg
	.align	2
	.global	AVSHAL_V200R003MPW_StartDec
	.type	AVSHAL_V200R003MPW_StartDec, %function
AVSHAL_V200R003MPW_StartDec:
	.fnstart
.LFB1347:
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
	cmp	r3, #352	@ <variable>.PicWidthInMb,
	bhi	.L81	@,
	ldrh	r0, [r0, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r0, #264	@ <variable>.PicHeightInMb,
	bhi	.L82	@,
	cmp	r1, #1	@ VdhId,
	bls	.L69	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
.L33:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L69:
	movw	r4, #1148	@ tmp272,
	movw	r6, #:lower16:g_HwMem	@ tmp764,
	mul	r4, r4, r1	@ tmp271, tmp272, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp764,
	ldr	r1, [r4, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L83	@,
.L37:
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp281,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp281,
	ldr	r3, [ip, #36]	@ D.31038, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.31038,
	beq	.L39	@,
	mov	r0, sl	@, VdhId
	blx	r3	@ D.31038
.L42:
	movw	lr, #14424	@ tmp282,
	ldr	r0, [r5, lr]	@ D.31051, <variable>.SlcNum
	cmp	r0, #0	@ D.31051,
	ble	.L40	@,
	ldr	r3, [r5, #88]	@ temp.737, <variable>.stream_phy_addr
	sub	r1, r0, #1	@ tmp767, D.31051,
	and	r1, r1, #1	@ tmp769, tmp767,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r3, #0	@ temp.737,
	beq	.L58	@,
	ldr	ip, [r5, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L58	@,
	bic	r3, r3, #15	@ tmp782, temp.737,
	cmp	r4, r3	@ stream_base_addr, tmp782
	movcs	r4, r3	@ stream_base_addr, tmp782
.L58:
	ldr	r3, [r5, #92]	@ D.31045, <variable>.stream_phy_addr
	cmp	r3, #0	@ D.31045,
	beq	.L60	@,
	ldr	lr, [r5, #100]	@ tmp784, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp784,
	ble	.L60	@,
	bic	r2, r3, #15	@ tmp785, D.31045,
	cmp	r4, r2	@ stream_base_addr, tmp785
	movcs	r4, r2	@ stream_base_addr, tmp785
.L60:
	mov	r2, #1	@ i,
	cmp	r2, r0	@ i, D.31051
	add	r3, r5, #28	@ ivtmp.614, pAvsDecParam,
	beq	.L57	@,
	cmp	r1, #0	@ tmp769,
	beq	.L41	@,
	ldr	r1, [r3, #88]	@ temp.737, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.737,
	beq	.L65	@,
	b	.L71	@
.L41:
	ldr	r1, [r3, #88]	@ temp.737, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.737,
	beq	.L45	@,
	ldr	ip, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L45	@,
	bic	r1, r1, #15	@ tmp287, temp.737,
	cmp	r4, r1	@ stream_base_addr, tmp287
	movcs	r4, r1	@ stream_base_addr, tmp287
.L45:
	ldr	r1, [r3, #92]	@ D.31045, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.31045,
	beq	.L43	@,
	ldr	ip, [r3, #100]	@ tmp284, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp284,
	ble	.L43	@,
	bic	lr, r1, #15	@ tmp285, D.31045,
	cmp	r4, lr	@ stream_base_addr, tmp285
	movcs	r4, lr	@ stream_base_addr, tmp285
.L43:
	add	r3, r3, #28	@ tmp771, ivtmp.614,
	add	r2, r2, #1	@ tmp770, i,
	ldr	r1, [r3, #88]	@ temp.737, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.737,
	beq	.L65	@,
.L71:
	ldr	ip, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L65	@,
	bic	r1, r1, #15	@ tmp793, temp.737,
	cmp	r4, r1	@ stream_base_addr, tmp793
	movcs	r4, r1	@ stream_base_addr, tmp793
.L65:
	ldr	r1, [r3, #92]	@ D.31045, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.31045,
	beq	.L67	@,
	ldr	lr, [r3, #100]	@ tmp795, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp795,
	ble	.L67	@,
	bic	ip, r1, #15	@ tmp796, D.31045,
	cmp	r4, ip	@ stream_base_addr, tmp796
	movcs	r4, ip	@ stream_base_addr, tmp796
.L67:
	add	r2, r2, #1	@ i, tmp770,
	add	r3, r3, #28	@ ivtmp.614, tmp771,
	cmp	r2, r0	@ i, D.31051
	bne	.L41	@,
.L57:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L40	@,
	ldrh	r9, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r7, #1148	@ tmp306,
	ldrh	r0, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r8, #0	@ tmp289,
	mul	r7, r7, sl	@ tmp305, tmp306, VdhId
	mov	r3, r8	@ tmp294, tmp289
	mul	lr, r0, r9	@ tmp292, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #3	@,
	movt	r1, #:upper16:.LC6	@,
	movw	ip, #14844	@ tmp314,
	add	r9, r7, r6	@ tmp307, tmp305, tmp764
	sub	r2, lr, #1	@ tmp293, tmp292,
	ldr	lr, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp294, tmp293,,
	orr	r2, r3, #1090519040	@ tmp303, tmp294,
	orr	r3, r2, #4194304	@ tmp303, tmp303,
	bfi	r3, r8, #25, #1	@ tmp303, tmp289,,
	str	r3, [fp, #-48]	@ tmp303,
	str	r3, [lr, #8]	@ tmp303,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-108]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-108]	@,
	mov	r3, #805306374	@ tmp317,
	movw	r1, #14864	@ tmp326,
	ldr	lr, [r5, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	movt	r1, #:upper16:.LC7	@,
	mov	r0, r2, lsr #6	@ tmp315, <variable>.VahbStride,
	mov	r2, #1	@ tmp322,
	bfi	r3, r0, #4, #10	@ tmp317, tmp315,,
	mov	r0, #3	@,
	orr	r3, r3, #16384	@ tmp320, tmp317,
	bic	r3, r3, #32768	@ tmp321, tmp320,
	bfi	r3, r2, #16, #12	@ tmp321, tmp322,,
	bic	r2, r3, #805306368	@ tmp323, tmp321,
	orr	r3, r2, #536870912	@ tmp328, tmp323,
	bfi	r3, lr, #30, #1	@ tmp328, <variable>.Compress_en,,
	bfi	r3, r8, #31, #1	@ tmp329, tmp289,,
	str	r3, [fp, #-48]	@ tmp329,
	ldr	lr, [r7, r6]	@, <variable>.pVdmRegVirAddr
	str	r3, [lr, #12]	@ tmp329,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-108]	@,
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r8, [r9, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bic	ip, r8, #15	@ tmp346, <variable>.MsgSlotAddr,
	str	ip, [fp, #-48]	@ tmp346, <variable>.av_msg_addr
	str	ip, [r2, #16]	@ tmp346,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r9, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	r8, r3, #15	@ tmp363, <variable>.MsgSlotAddr,
	str	r8, [fp, #-48]	@ tmp363, <variable>.va_msg_addr
	str	r8, [ip, #20]	@ tmp363,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [fp, #-48]	@ stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r4, [r2, #24]	@ stream_base_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r9, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp380,
	str	r3, [fp, #-48]	@ tmp380, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC11	@,
	str	r3, [r9, #48]	@ tmp380,
	movt	r1, #:upper16:.LC11	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp389,
	movt	r0, #:upper16:3148803	@ tmp389,
	str	r0, [fp, #-48]	@ tmp389, D32
	str	r0, [r1, #60]	@ tmp389,
	mov	r0, #3	@,
	ldr	r8, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC12	@,
	ldr	ip, [fp, #-48]	@ D32.646, D32
	movt	r1, #:upper16:.LC12	@,
	str	ip, [r8, #64]	@ D32.646,
	ldr	r9, [fp, #-48]	@ D32.649, D32
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r2, #68]	@ D32.649,
	ldr	r8, [fp, #-48]	@ D32.652, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r3, #72]	@ D32.652,
	ldr	r2, [fp, #-48]	@ D32.655, D32
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #76]	@ D32.655,
	movw	r2, #14440	@ tmp428,
	ldr	r9, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [fp, #-48]	@ D32.658, D32
	str	r8, [r9, #80]	@ D32.658,
	ldr	ip, [fp, #-48]	@ D32.661, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #84]	@ D32.661,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r9, [r5, r2]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	r8, r9, #15	@ tmp430, <variable>.CurPicAddr,
	str	r8, [fp, #-48]	@ tmp430, <variable>.ystaddr_1d
	str	r8, [ip, #96]	@ tmp430,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-108]	@,
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC13	@,
	ldrh	r7, [r5, #50]	@ height_in_mb, <variable>.PicHeightInMb
	movt	r1, #:upper16:.LC13	@,
	ldr	r3, [r5, r0]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r0, #3	@,
	str	r3, [fp, #-48]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r3, [r2, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrh	r9, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp452,
	mov	r2, r9, asl #4	@ D.31124, <variable>.PicWidthInMb,
	sub	r8, r2, #1	@ tmp451, D.31124,
	cmp	r8, r3	@ tmp451, tmp452
	bls	.L48	@,
	sub	r1, r2, #2048	@ tmp453, D.31124,
	sub	r8, r1, #1	@ tmp453, tmp453,
	cmp	r8, r3	@ tmp453, tmp452
	movls	r3, #32	@ level,
	bhi	.L84	@,
.L50:
	mov	r2, r7, asl #4	@ tmp462, height_in_mb,
	add	r8, r7, #1	@ tmp467, height_in_mb,
	add	lr, r2, #31	@ tmp463, tmp462,
	movw	ip, #14844	@ tmp469,
	movw	r0, #1148	@ tmp476,
	ldr	r9, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r1, lr, lsr #5	@ tmp464, tmp463,
	mov	r7, r8, lsr #1	@ tmp468, tmp467,
	mul	r8, r0, sl	@ tmp475, tmp476, VdhId
	mov	r0, #3	@,
	mul	lr, r1, r3	@ D.31147, tmp464, level
	movw	r1, #:lower16:.LC14	@,
	mul	r2, r9, r7	@ tmp470, <variable>.VahbStride, tmp468
	movt	r1, #:upper16:.LC14	@,
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r9, r8, r6	@ tmp477, tmp475, tmp764
	mov	r7, #0	@ tmp499,
	add	r2, r2, lr, asl #4	@, tmp472, tmp470, D.31147,
	mov	r2, r2, asl #1	@ tmp473, tmp472,
	str	r2, [fp, #-48]	@ tmp473, <variable>.uvoffset_1d
	str	r2, [ip, #104]	@ tmp473,
	ldr	r2, [fp, #-48]	@, D32
	str	lr, [fp, #-108]	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, [fp, #-108]	@,
	mov	ip, r1, asl #5	@ D32.423, D.31147,
	str	ip, [r2, #108]	@ D32.423,
	ldr	r3, [r9, #1128]	@ D32.424, <variable>.DnrMbInfoAddr
	movw	r1, #:lower16:.LC15	@,
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC15	@,
	str	r3, [fp, #-48]	@ D32.424, D32
	str	r3, [ip, #144]	@ D32.424,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [fp, #-48]	@ tmp499, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r7, [r2, #148]	@ tmp499,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [fp, #-48]	@ tmp499, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r7, [ip, #152]	@ tmp499,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r0, #0	@,
	str	r0, [r3, #32]	@,
	ldr	r0, [r9, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pMsgBase,
	beq	.L85	@,
	ldrh	r3, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	lr, r8	@ p32.700, pMsgBase
	ldrh	r2, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	ldr	ip, [fp, #-48]	@ tmp536,
	sub	r1, r3, #1	@ tmp535, <variable>.PicWidthInMb,
	sub	r3, r2, #1	@ tmp539, <variable>.PicHeightInMb,
	bfi	ip, r1, #0, #9	@ tmp536, tmp535,,
	movw	r1, #:lower16:.LC19	@,
	bfi	ip, r3, #16, #9	@ tmp540, tmp539,,
	str	ip, [fp, #-48]	@ tmp540,
	str	ip, [lr], #4	@ tmp540,
	add	r2, lr, r0	@, p32.700,
	str	r2, [fp, #-100]	@, %sfp
	movt	r1, #:upper16:.LC19	@,
	ldr	r3, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	ip, r3, r0	@,,
	str	lr, [fp, #-108]	@,
	str	ip, [fp, #-96]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	mov	r0, #4	@,
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@, <variable>.RepeatFirstField
	ldrb	ip, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	and	r3, r3, #1	@ tmp548, <variable>.ProgrsvFrame,
	ldrb	r2, [r5, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	ldrb	lr, [r5, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r3, ip, #1, #2	@ tmp548, <variable>.PicStruct,,
	str	r1, [fp, #-56]	@, %sfp
	bfi	r3, r2, #3, #2	@ tmp552, <variable>.PicCodingType,,
	ldrb	ip, [r5, #13]	@ zero_extendqisi2	@, <variable>.FixQPFlag
	bfi	r3, lr, #5, #1	@ tmp556, <variable>.TopFieldFirst,,
	ldr	r2, [fp, #-96]	@, %sfp
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [fp, #-60]	@, %sfp
	add	ip, r2, r0	@,,
	ldr	r2, [fp, #-56]	@, %sfp
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.PicQuant, <variable>.PicQuant
	str	ip, [fp, #-92]	@, %sfp
	bfi	r3, r2, #6, #1	@ tmp560,,,
	ldrb	ip, [r5, #11]	@ zero_extendqisi2	@, <variable>.SkipModeFlag
	ldr	r2, [fp, #-92]	@, %sfp
	str	ip, [fp, #-56]	@, %sfp
	add	ip, r2, r0	@,,
	ldr	r2, [fp, #-60]	@, %sfp
	str	ip, [fp, #-88]	@, %sfp
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	bfi	r3, r2, #7, #1	@ tmp564,,,
	ldr	r2, [fp, #-88]	@, %sfp
	bfi	r3, lr, #8, #6	@ tmp568, <variable>.PicQuant,,
	str	ip, [fp, #-60]	@, %sfp
	add	ip, r2, r0	@,,
	add	r2, ip, r0	@,,
	str	ip, [fp, #-84]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldrb	lr, [r5, #10]	@ zero_extendqisi2	@ <variable>.PicRefFlag, <variable>.PicRefFlag
	str	r2, [fp, #-80]	@, %sfp
	bfi	r3, ip, #14, #1	@ tmp572,,,
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@, <variable>.NoFwdRefFlag
	ldr	ip, [fp, #-80]	@, %sfp
	str	r2, [fp, #-56]	@, %sfp
	add	r2, ip, r0	@,,
	str	r2, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-76]	@, %sfp
	bfi	r3, ip, #15, #1	@ tmp576,,,
	add	ip, r2, r0	@,,
	bfi	r3, lr, #16, #1	@ tmp580, <variable>.PicRefFlag,,
	add	lr, ip, r0	@,,
	str	lr, [fp, #-68]	@, %sfp
	ldr	r2, [fp, #-56]	@, %sfp
	str	ip, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-68]	@, %sfp
	bfi	r3, r2, #17, #1	@ tmp584,,,
	bfi	r3, r7, #18, #14	@ tmp588, tmp499,,
	add	lr, ip, r0	@,,
	str	lr, [fp, #-64]	@, %sfp
	add	r2, lr, r0	@,,
	str	r3, [fp, #-48]	@ tmp588,
	str	r2, [fp, #-60]	@, %sfp
	add	ip, r2, r0	@,,
	str	r3, [r8, #4]	@ tmp588,
	add	lr, ip, r0	@,,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-56]	@, %sfp
	str	lr, [fp, #-104]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	mov	r0, #4	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.AlphaOffset, <variable>.AlphaOffset
	and	r3, r3, #1	@ tmp596, <variable>.LoopFiltDisable,
	ldr	lr, [fp, #-108]	@,
	bfi	r3, r1, #1, #1	@ tmp596, <variable>.LoopFiltParamFlag,,
	ldrb	ip, [r5, #17]	@ zero_extendqisi2	@ <variable>.BetaOffset, <variable>.BetaOffset
	bfi	r3, r2, #2, #5	@ tmp600, <variable>.AlphaOffset,,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bfi	r3, ip, #7, #5	@ tmp604, <variable>.BetaOffset,,
	str	r3, [fp, #-48]	@ tmp604,
	str	r3, [lr, #4]	@ tmp604,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	ldrb	r1, [r5, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	mov	r0, #4	@,
	ldrb	r2, [r5, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	and	r3, r3, #1	@ tmp615, <variable>.FwdTopFieldFirst0,
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.FwdPicStruct1, <variable>.FwdPicStruct1
	bfi	r3, r1, #1, #2	@ tmp615, <variable>.FwdPicStruct0,,
	ldrb	lr, [r5, #23]	@ zero_extendqisi2	@ <variable>.BwdTopFieldFirst, <variable>.BwdTopFieldFirst
	bfi	r3, r2, #3, #1	@ tmp619, <variable>.FwdTopFieldFirst1,,
	bfi	r3, ip, #4, #2	@ tmp623, <variable>.FwdPicStruct1,,
	ldrb	r2, [r5, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	bfi	r3, lr, #6, #1	@ tmp627, <variable>.BwdTopFieldFirst,,
	ldr	lr, [fp, #-100]	@, %sfp
	bfi	r3, r2, #7, #2	@ tmp631, <variable>.BwdPicStruct,,
	movw	r1, #:lower16:.LC22	@,
	bfi	r3, r7, #9, #23	@ tmp635, tmp499,,
	str	r3, [fp, #-48]	@ tmp635,
	str	r3, [lr, #4]	@ tmp635,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-96]	@, %sfp
	movw	r1, #14428	@ tmp640,
	mov	r0, #4	@,
	ldr	r2, [r5, r1]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	r3, r2, #15	@ tmp642, <variable>.BwdRefPicAddr,
	str	r3, [fp, #-48]	@ tmp642, <variable>.bwd_address
	str	r3, [ip, #4]	@ tmp642,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-92]	@, %sfp
	movw	r0, #14432	@ tmp647,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [r5, r0]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	movt	r1, #:upper16:.LC24	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp649, <variable>.FwdRefPic0Addr,
	str	r3, [fp, #-48]	@ tmp649, <variable>.fwd_address_0
	str	r3, [ip, #4]	@ tmp649,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-88]	@, %sfp
	movw	r1, #14436	@ tmp654,
	mov	r0, #4	@,
	ldr	r2, [r5, r1]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, r2, #15	@ tmp656, <variable>.FwdRefPic1Addr,
	str	r3, [fp, #-48]	@ tmp656, <variable>.fwd_address_1
	str	r3, [ip, #4]	@ tmp656,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-84]	@, %sfp
	movw	r0, #14452	@ tmp661,
	movw	r1, #:lower16:.LC26	@,
	ldr	r2, [r5, r0]	@ <variable>.rcn_address, <variable>.rcn_address
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp663, <variable>.rcn_address,
	str	r3, [fp, #-48]	@ tmp663, <variable>.rcn_address
	str	r3, [ip, #4]	@ tmp663,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldrb	r2, [r5, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	and	r3, r1, #1	@ tmp671, <variable>.ColPicType,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bfi	r3, r2, #24, #2	@ tmp671, <variable>.ColPicStruct,,
	str	r3, [fp, #-48]	@ tmp671,
	str	r3, [ip, #4]	@ tmp671,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-76]	@, %sfp
	ldr	r2, [r5, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp679, tmp499
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bfi	r3, r2, #0, #24	@ tmp679, <variable>.StreamPhyAddr,,
	str	r3, [fp, #-48]	@ tmp679,
	str	r3, [ip, #4]	@ tmp679,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r5, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bic	ip, r1, #-16777216	@ tmp687, <variable>.StreamLength,
	movw	r1, #:lower16:.LC29	@,
	bfi	ip, r2, #24, #7	@ tmp687, <variable>.StreamBitOffset,,
	ldr	r2, [fp, #-72]	@, %sfp
	str	ip, [fp, #-48]	@ tmp687,
	movt	r1, #:upper16:.LC29	@,
	str	ip, [r2, #4]	@ tmp687,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-68]	@, %sfp
	ldr	r3, [r5, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bfi	r7, r3, #0, #24	@ tmp692, <variable>.StreamPhyAddr,,
	str	r7, [fp, #-48]	@ tmp692,
	str	r7, [ip, #4]	@ tmp692,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #84]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [r5, #76]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bic	r3, r1, #-16777216	@ tmp700, <variable>.StreamLength,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bfi	r3, r2, #24, #7	@ tmp700, <variable>.StreamBitOffset,,
	str	r3, [fp, #-48]	@ tmp700,
	str	r3, [ip, #4]	@ tmp700,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@, %sfp
	ldr	r3, [r9, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bic	r2, r3, #15	@ tmp712, <variable>.PmvTopAddr,
	str	r2, [fp, #-48]	@ tmp712, <variable>.pmv_top_addr
	str	r2, [ip, #4]	@ tmp712,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r3, [r9, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bic	r2, r3, #15	@ tmp724, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp724, <variable>.topmb_intra_addr
	str	r2, [ip, #4]	@ tmp724,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-104]	@, %sfp
	movw	r0, #14448	@ tmp729,
	ldr	r3, [r5, r0]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	add	ip, r1, #4	@ p32.758,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	r2, r3, #15	@ tmp731, <variable>.ColPmvAddr,
	str	r2, [fp, #-48]	@ tmp731, <variable>.colpic_mv_addr
	str	r2, [ip, #4]	@ tmp731,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	add	r3, r5, #14400	@ ivtmp.605, pAvsDecParam,
	add	r0, r3, #60	@ ivtmp.605, ivtmp.605,
	add	lr, r8, #196	@ D.31613, pMsgBase,
	add	r3, r8, #68	@ ivtmp.608, pMsgBase,
.L53:
	mov	r1, r0	@ tmp765, ivtmp.605
	mov	r2, r3	@ tmp766, ivtmp.608
	ldr	ip, [r1], #4	@ D32.443, <variable>.PmvConfigTab
	str	ip, [fp, #-48]	@ D32.443, D32
	str	ip, [r2], #4	@ D32.443,
	ldr	ip, [r0, #4]	@ D32.443, <variable>.PmvConfigTab
	add	r0, r1, #4	@ ivtmp.605, tmp765,
	str	ip, [fp, #-48]	@ D32.443, D32
	str	ip, [r3, #4]	@ D32.443,
	add	r3, r2, #4	@ ivtmp.608, tmp766,
	cmp	r3, lr	@ ivtmp.608, D.31613
	bne	.L53	@,
	movw	r1, #14444	@ tmp737,
	mov	r0, #4	@,
	ldr	r2, [r5, r1]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bic	lr, r2, #15	@ tmp739, <variable>.CurPmvAddr,
	str	lr, [fp, #-48]	@ tmp739, <variable>.pmv_colmb_addr
	str	lr, [r8, #196]	@ tmp739,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	r0, #1148	@ tmp747,
	mla	r6, r0, sl, r6	@ tmp748, tmp747, VdhId, tmp764
	movw	r1, #:lower16:.LC36	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC36	@,
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	ip, r3, #15	@ tmp751, <variable>.DblkTopAddr,
	str	ip, [fp, #-48]	@ tmp751, <variable>.dblk_top_addr
	str	ip, [r8, #200]	@ tmp751,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	add	r3, r2, #256	@ D32.446, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ D32.446, D32
	str	r3, [r8, #252]	@ D32.446,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5	@, pAvsDecParam
	mov	r1, r4	@, stream_base_addr
	mov	r2, sl	@, VdhId
	bl	AVSHAL_V200R003MPW_WirteSlicMsg	@
	mov	r0, #0	@ D.31024,
	b	.L33	@
.L84:
	sub	lr, r2, #4096	@ tmp456, D.31124,
	sub	ip, lr, #1	@ tmp456, tmp456,
	cmp	ip, r3	@ tmp456, tmp452
	movls	r3, #48	@ level,
	bls	.L50	@,
	sub	r9, r2, #6144	@ tmp459, D.31124,
	sub	r2, r9, #1	@ tmp459, tmp459,
	cmp	r2, r3	@ tmp459, tmp452
	movls	r3, #64	@ level,
	bls	.L50	@,
.L48:
	mov	r3, #16	@ level,
	b	.L50	@
.L39:
	mov	r0, r3	@, D.31038
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #114	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	b	.L42	@
.L83:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.31033,
	strne	r2, [r4, r6]	@ D.31033, <variable>.pVdmRegVirAddr
	bne	.L37	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
	b	.L33	@
.L81:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #85	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
	b	.L33	@
.L82:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #86	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
	b	.L33	@
.L40:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
	b	.L33	@
.L85:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #299	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31024,
	b	.L33	@
	.fnend
	.size	AVSHAL_V200R003MPW_StartDec, .-AVSHAL_V200R003MPW_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"VdhId is wrong! AVSHAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC3:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC4:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC5:
	.ascii	"stream_base_addr = %#x\012\000"
.LC6:
	.ascii	"BASIC_V200R003MPW_CFG0 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"BASIC_V200R003MPW_CFG1 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"AVM_V200R003MPW_ADDR = 0x%x\012\000"
	.space	3
.LC9:
	.ascii	"VAM_V200R003MPW_ADDR = 0x%x\012\000"
	.space	3
.LC10:
	.ascii	"STREAM_V200R003MPW_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC11:
	.ascii	"EMAR_ID = 0x%x\012\000"
.LC12:
	.ascii	"YSTADDR_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"YSTRIDE_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC14:
	.ascii	"UVOFFSET_V200R003MPW_1D = 0x%x\012\000"
.LC15:
	.ascii	"VREG_V200R003MPW_DNR_MBINFO_STADDR = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"VREG_V200R003MPW_REF_PIC_TYPE = 0x%x\012\000"
	.space	2
.LC17:
	.ascii	"VREG_V200R003MPW_FF_APT_EN = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC19:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC29:
	.ascii	"D10 = 0x%x\012\000"
.LC30:
	.ascii	"D11 = 0x%x\012\000"
.LC31:
	.ascii	"D12 = 0x%x\012\000"
.LC32:
	.ascii	"D13 = 0x%x\012\000"
.LC33:
	.ascii	"D14 = 0x%x\012\000"
.LC34:
	.ascii	"D16 = 0x%x\012\000"
.LC35:
	.ascii	"D49 = 0x%x\012\000"
.LC36:
	.ascii	"D50 = 0x%x\012\000"
.LC37:
	.ascii	"D63 = 0x%x\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
