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
	.file	"vdm_hal_mpeg4.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_mpeg4.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_mpeg4.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_mpeg4.o
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
	.global	MP4HAL_V200R003MPW_Log2bin
	.type	MP4HAL_V200R003MPW_Log2bin, %function
MP4HAL_V200R003MPW_Log2bin:
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
	cmp	r0, #0	@ value
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r3, #0	@ n,
.L4:
	add	r3, r3, #1	@ tmp142, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp142
	bne	.L4	@,
	sxth	r0, r3	@ prephitmp.463, n
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4HAL_V200R003MPW_Log2bin, .-MP4HAL_V200R003MPW_Log2bin
	.align	2
	.global	MP4HAL_V200R003MPW_InitHal
	.type	MP4HAL_V200R003MPW_InitHal, %function
MP4HAL_V200R003MPW_InitHal:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4HAL_V200R003MPW_InitHal, .-MP4HAL_V200R003MPW_InitHal
	.align	2
	.global	MP4HAL_V200R003MPW_WriteSlicMsg
	.type	MP4HAL_V200R003MPW_WriteSlicMsg, %function
MP4HAL_V200R003MPW_WriteSlicMsg:
	.fnstart
.LFB1351:
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
	movw	r4, #:lower16:g_HwMem	@ tmp237,
	movt	r4, #:upper16:g_HwMem	@ tmp237,
	movw	r7, #1148	@ tmp240,
	str	r2, [fp, #-72]	@ StreamBaseAddr, %sfp
	movw	r2, #14572	@ tmp236,
	mla	r9, r7, r1, r4	@ tmp241, tmp240, VdhId, tmp237
	mov	r6, r0	@ pMp4DecParam, pMp4DecParam
	ldr	r7, [r0, r2]	@ SliceNum, <variable>.SlcNum
	mov	r4, #0	@ tmp235,
	str	r4, [fp, #-48]	@ tmp235, D32
	ldr	r0, [r9, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r1, r0, #256	@, <variable>.MsgSlotAddr,
	str	r1, [fp, #-76]	@, %sfp
	mov	r0, r1	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r3, r4	@ <variable>.mb_start_num,
	streq	r3, [fp, #-80]	@ <variable>.mb_start_num, %sfp
	mov	r9, r0	@ SlcDnMsgVirAddr,
	bne	.L33	@,
.L12:
	cmp	r7, #0	@ SliceNum,
	ble	.L15	@,
	ldr	r0, [fp, #-80]	@, %sfp
	mov	r4, #0	@ i,
	ldr	r2, [r6, #260]	@ prephitmp.532, <variable>.mb_start_num
	sub	r5, fp, #48	@ tmp554,,
	ldr	r8, [r6, #232]	@ prephitmp.642, <variable>.mb_start_num
	mov	r1, r0, asl #2	@,,
	str	r1, [fp, #-84]	@, %sfp
	b	.L24	@
.L16:
	add	r4, r4, #1	@ i, i,
	cmp	r7, r4	@ SliceNum, i
	ble	.L15	@,
.L35:
	sub	ip, r4, #1	@ tmp543, i,
	rsb	r2, r4, r4, asl #3	@, tmp539, i, i,
	rsb	r1, ip, ip, asl #3	@, tmp547, tmp543, tmp543,
	add	r8, r6, r2, asl #2	@, tmp541, pMp4DecParam, tmp539,
	add	r0, r6, r1, asl #2	@, tmp549, pMp4DecParam, tmp547,
	ldr	r2, [r8, #260]	@ prephitmp.532, <variable>.mb_start_num
	ldr	r8, [r0, #260]	@ prephitmp.642, <variable>.mb_start_num
.L24:
	cmp	r4, #0	@ i,
	movle	r3, #0	@,
	movgt	r3, #1	@,
	cmp	r2, r8	@ prephitmp.532, prephitmp.642
	movhi	r3, #0	@,,
	cmp	r3, #0	@ tmp324,
	mov	r8, r3	@ tmp324,
	bne	.L16	@,
	mov	r0, r4, asl #3	@, i,
	str	r0, [fp, #-68]	@, %sfp
	rsb	sl, r4, r0	@ tmp329, i,
	mov	r0, #4	@,
	ldr	r1, [fp, #-84]	@, %sfp
	mla	sl, sl, r0, r6	@ tmp331, tmp329,, pMp4DecParam
	add	lr, r4, r1	@, i,
	str	r3, [fp, #-48]	@ tmp324, D32
	movw	r1, #:lower16:.LC0	@,
	ldr	r3, [r5, #0]	@ tmp350,
	mov	ip, lr, asl #5	@,,
	str	lr, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC0	@,
	str	ip, [fp, #-60]	@, %sfp
	ldrb	r2, [sl, #242]	@ zero_extendqisi2	@, <variable>.bit_offset
	ldr	ip, [sl, #252]	@ temp.576, <variable>.phy_address
	str	r2, [fp, #-64]	@, %sfp
	and	r2, ip, #15	@ tmp333, temp.576,
	ldr	lr, [sl, #244]	@, <variable>.bit_len
	bfi	r3, lr, #0, #24	@ tmp350,,,
	ldr	lr, [fp, #-64]	@, %sfp
	add	r2, lr, r2, asl #3	@, bit_offset_0.584,, tmp333,
	bfi	r3, r2, #24, #7	@ tmp352, bit_offset_0.584,,
	str	r3, [r5, #0]	@ tmp352,
	ldr	lr, [fp, #-56]	@, %sfp
	str	r3, [r9, lr, asl #5]	@ D32.589,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	lr, r8	@ tmp359, tmp324
	ldr	ip, [fp, #-88]	@,
	ldr	r3, [fp, #-72]	@, %sfp
	mov	r1, r0, asl #3	@ tmp360,,
	bic	r2, ip, #15	@ tmp357, temp.576,
	rsb	ip, r3, r2	@ tmp358,, tmp357
	add	r2, r1, #1	@ tmp361, tmp360,
	bfi	lr, ip, #0, #24	@ tmp359, tmp358,,
	str	lr, [r5, #0]	@ tmp359,
	str	lr, [r9, r2, asl #2]	@ D32.597,* SlcDnMsgVirAddr
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	str	r8, [fp, #-48]	@ tmp324, D32
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r0, [sl, #256]	@, <variable>.phy_address
	mov	lr, r3, asl #2	@ tmp393,,
	and	ip, r0, #15	@ tmp373,,
	str	r0, [fp, #-64]	@, %sfp
	add	lr, lr, #1	@ tmp394, tmp393,
	ldr	r1, [sl, #248]	@ <variable>.bit_len, <variable>.bit_len
	mov	r0, #4	@,
	ldrb	r2, [sl, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	ldr	r3, [r5, #0]	@ tmp390,
	add	r2, r2, ip, asl #3	@, bit_offset_1.608, <variable>.bit_offset, tmp373,
	bfi	r3, r1, #0, #24	@ tmp390, <variable>.bit_len,,
	movw	r1, #:lower16:.LC2	@,
	bfi	r3, r2, #24, #7	@ tmp392, bit_offset_1.608,,
	str	r3, [r5, #0]	@ tmp392,
	str	r3, [r9, lr, asl #3]	@ D32.613,* SlcDnMsgVirAddr
	movt	r1, #:upper16:.LC2	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	str	r8, [fp, #-48]	@ tmp324, D32
	ldr	r3, [sl, #256]	@ <variable>.phy_address, <variable>.phy_address
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	cmp	r3, #0	@ <variable>.phy_address,
	ldrne	r3, [fp, #-64]	@, %sfp
	ldrne	lr, [fp, #-72]	@, %sfp
	bicne	r2, r3, #15	@ tmp408,,
	ldreq	r2, [r5, #0]	@ tmp412,
	ldrne	r3, [r5, #0]	@ tmp410,
	rsbne	r2, lr, r2	@ tmp409,, tmp408
	bfieq	r2, r3, #0, #24	@ tmp412, <variable>.phy_address,,
	bfine	r3, r2, #0, #24	@ tmp410, tmp409,,
	streq	r2, [r5, #0]	@ tmp412,
	strne	r3, [r5, #0]	@ tmp410,
	ldr	r8, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-48]	@ D32.623, D32
	add	lr, r8, #12	@ tmp413,,
	add	r8, r4, #1	@ j, i,
	str	r2, [r9, lr]	@ D32.623,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	sl, [fp, #-68]	@, %sfp
	mov	r2, #0	@,
	str	r2, [fp, #-48]	@, D32
	rsb	r0, r4, sl	@ tmp420, i,
	ldr	r4, [fp, #-56]	@, %sfp
	mov	sl, r0, asl #2	@ tmp421, tmp420,
	mov	r0, #4	@,
	mov	r1, r4, asl #1	@ tmp472,,
	add	r4, sl, r6	@ tmp422, tmp421, pMp4DecParam
	add	r3, r4, #232	@ tmp423, tmp422,
	add	lr, r1, #1	@ tmp473, tmp472,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	ldrb	ip, [r3, #9]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	bfi	r2, ip, #0, #5	@ tmp424, <variable>.vop_quant,,
	str	r2, [r5, #0]	@ tmp424,
	ldrb	ip, [r3, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	bfi	r2, ip, #5, #2	@ tmp435, <variable>.vop_coding_type,,
	str	r2, [r5, #0]	@ tmp435,
	ldrb	ip, [r3, #7]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bfi	r2, ip, #7, #3	@ tmp446, <variable>.intra_dc_vlc_thr,,
	str	r2, [r5, #0]	@ tmp446,
	ldrb	ip, [r3, #5]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r2, ip, #10, #3	@ tmp457, <variable>.vop_fcode_forward,,
	str	r2, [r5, #0]	@ tmp457,
	ldrb	r3, [r3, #6]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r2, r3, #13, #3	@ tmp468, <variable>.vop_fcode_backward,,
	str	r2, [r5, #0]	@ tmp468,
	str	r2, [r9, lr, asl #4]	@ D32.638,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r0, #0	@,
	str	r0, [fp, #-48]	@, D32
	add	lr, r1, #20	@ tmp488,,
	ldr	ip, [r4, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	r2, r0	@ tmp486,
	movw	r1, #:lower16:.LC5	@,
	bfi	r2, ip, #0, #20	@ tmp486, <variable>.mb_start_num,,
	str	r2, [r5, #0]	@ tmp486,
	str	r2, [r9, lr]	@ D32.644,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	cmp	r7, r8	@ SliceNum, j
	ble	.L19	@,
	rsb	ip, r8, r8, asl #3	@, tmp501, j, j,
	ldr	r2, [r4, #260]	@ temp.650, <variable>.mb_start_num
	add	r3, r6, ip, asl #2	@, tmp503, pMp4DecParam, tmp501,
	ldr	r4, [r3, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r4, r2	@ <variable>.mb_start_num, temp.650
	bhi	.L19	@,
	mvn	r0, r8	@ tmp563, j
	add	r1, r0, r7	@ tmp562, tmp563, SliceNum
	add	lr, sl, #232	@ tmp510, tmp421,
	tst	r1, #1	@ tmp562,
	add	sl, r6, lr	@ tmp511, pMp4DecParam, tmp510
	add	r3, sl, #4	@ ivtmp.550, tmp511,
	beq	.L20	@,
	ldr	r4, [r3, #80]	@ temp.647, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	add	r3, sl, #32	@ ivtmp.550, tmp511,
	cmp	r4, r2	@ temp.647, temp.650
	bls	.L20	@,
	b	.L19	@
.L21:
	ldr	r4, [r3, #80]	@ temp.647, <variable>.mb_start_num
	add	r3, r3, #56	@ ivtmp.550, ivtmp.550,
	cmp	r4, r2	@ temp.647, temp.650
	bhi	.L19	@,
	ldr	lr, [r1, #80]	@ temp.647, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	cmp	lr, r2	@ temp.647, temp.650
	bhi	.L19	@,
.L20:
	add	r8, r8, #1	@ j, j,
	add	r1, r3, #28	@ tmp565, ivtmp.550,
	cmp	r7, r8	@ SliceNum, j
	bgt	.L21	@,
.L19:
	cmp	r8, r7	@ j, SliceNum
	beq	.L34	@,
	rsb	r4, r8, r8, asl #3	@, tmp518, j, j,
	ldr	r3, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-76]	@, %sfp
	add	r1, r6, r4, asl #2	@, tmp520, pMp4DecParam, tmp518,
	add	r0, r8, r3	@ tmp523, j,
	ldr	lr, [r1, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	add	r4, ip, r0, asl #5	@, prephitmp.530,, tmp523,
	sub	r3, lr, #1	@ slice_end_mbn, <variable>.mb_start_num,
.L23:
	ldr	lr, [fp, #-60]	@, %sfp
	mov	ip, #0	@ tmp527,
	bfi	ip, r3, #0, #20	@ tmp527, slice_end_mbn,,
	str	ip, [r5, #0]	@ tmp527,
	add	r3, lr, #24	@ tmp528,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r9, r3]	@ D32.654,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-60]	@, %sfp
	str	r4, [r5, #0]	@ prephitmp.530, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	add	r2, r1, #28	@ tmp533,,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r4, [r9, r2]	@ D32.659,
	sub	r4, r8, #1	@ i, j,
	ldr	r2, [fp, #-48]	@, D32
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	cmp	r7, r4	@ SliceNum, i
	bgt	.L35	@,
.L15:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L34:
	ldrh	ip, [r6, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, #0	@ prephitmp.530,
	ldrh	r2, [r6, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r3, r2, ip	@ tmp514, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r3, r3, #1	@ slice_end_mbn, tmp514,
	b	.L23	@
.L33:
	ldr	r5, [r6, #252]	@ D.31332, <variable>.phy_address
	mov	lr, #0	@ tmp250,
	ldrb	ip, [r6, #242]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r0, #4	@,
	and	r3, r5, #15	@ tmp246, D.31332,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	add	r2, ip, r3, asl #3	@, bit_offset_0, <variable>.bit_offset, tmp246,
	bfi	lr, r2, #24, #7	@ tmp250, bit_offset_0,,
	str	lr, [fp, #-48]	@ tmp250,
	str	lr, [r9, #0]	@ tmp250,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-72]	@, %sfp
	bic	r3, r5, #15	@ tmp255, D.31332,
	mov	r5, r4	@ tmp257, tmp235
	rsb	r1, r0, r3	@ tmp256,, tmp255
	mov	r0, #4	@,
	bfi	r5, r1, #0, #24	@ tmp257, tmp256,,
	str	r5, [fp, #-48]	@ tmp257,
	str	r5, [r9, #4]	@ tmp257,
	movw	r1, #:lower16:.LC1	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #256]	@ D.31360, <variable>.phy_address
	ldrb	ip, [r6, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r3, #0	@ tmp265,
	and	r2, r5, #15	@ tmp261, D.31360,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	add	r2, ip, r2, asl #3	@, bit_offset_1, <variable>.bit_offset, tmp261,
	bfi	r3, r2, #24, #7	@ tmp265, bit_offset_1,,
	str	r3, [fp, #-48]	@ tmp265,
	str	r3, [r9, #8]	@ tmp265,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r6, #256]	@ <variable>.phy_address, <variable>.phy_address
	mov	r2, #1	@,
	str	r2, [fp, #-80]	@, %sfp
	cmp	r0, #0	@ <variable>.phy_address,
	bicne	r0, r5, #15	@ tmp271, D.31360,
	streq	r0, [fp, #-48]	@ <variable>.phy_address,
	ldrne	r1, [fp, #-72]	@, %sfp
	rsbne	r0, r1, r0	@ tmp272,, tmp271
	movw	r1, #:lower16:.LC3	@,
	bfine	r4, r0, #0, #24	@ tmp273, tmp272,,
	strne	r4, [fp, #-48]	@ tmp273,
	ldr	ip, [fp, #-48]	@ D32.561, D32
	movt	r1, #:upper16:.LC3	@,
	mov	r0, #4	@,
	mov	r4, #0	@ tmp278,
	str	ip, [r9, #12]	@ D32.561,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r6, #241]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	ldrb	r1, [r6, #240]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	mov	r0, #4	@,
	ldrb	r2, [r6, #239]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r3, r3, #31	@ tmp283, <variable>.vop_quant,
	ldrb	ip, [r6, #237]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r3, r1, #5, #2	@ tmp283, <variable>.vop_coding_type,,
	ldrb	lr, [r6, #238]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r3, r2, #7, #3	@ tmp287, <variable>.intra_dc_vlc_thr,,
	bfi	r3, ip, #10, #3	@ tmp291, <variable>.vop_fcode_forward,,
	movw	r1, #:lower16:.LC4	@,
	bfi	r3, lr, #13, #3	@ tmp295, <variable>.vop_fcode_backward,,
	str	r3, [fp, #-48]	@ tmp295,
	str	r3, [r9, #16]	@ tmp295,
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r4	@ tmp303, tmp278
	bfi	r0, r4, #0, #20	@ tmp303, tmp278,,
	str	r0, [fp, #-48]	@ tmp303,
	str	r0, [r9, #20]	@ tmp303,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	r0, #4	@,
	sub	r3, r1, #1	@ tmp308, <variable>.mb_start_num,
	movw	r1, #:lower16:.LC6	@,
	bfi	r4, r3, #0, #20	@ tmp310, tmp308,,
	str	r4, [fp, #-48]	@ tmp310,
	str	r4, [r9, #24]	@ tmp310,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-76]	@, %sfp
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #4	@,
	add	ip, lr, #32	@ tmp315,,
	str	ip, [fp, #-48]	@ tmp315, <variable>.next_slice_para_addr
	str	ip, [r9, #28]	@ tmp315,
	movt	r1, #:upper16:.LC7	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	b	.L12	@
	.fnend
	.size	MP4HAL_V200R003MPW_WriteSlicMsg, .-MP4HAL_V200R003MPW_WriteSlicMsg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V200R003MPW_CfgDnMsg
	.type	MP4HAL_V200R003MPW_CfgDnMsg, %function
MP4HAL_V200R003MPW_CfgDnMsg:
	.fnstart
.LFB1350:
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
	ldrh	r9, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	r3, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	sl, r1	@ VdhId, VdhId
	mul	r3, r9, r3	@ MbCnt, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	cmp	r3, #0	@ MbCnt,
	moveq	r9, r3	@ prephitmp.804, MbCnt
	beq	.L38	@,
	mov	r9, #0	@ n,
.L39:
	add	r9, r9, #1	@ tmp347, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r9, r9	@ n, tmp347
	bne	.L39	@,
	and	r0, r9, #15	@ tmp348, n,
	mov	r9, r0, asl #22	@ prephitmp.804, tmp348,
.L38:
	movw	r6, #:lower16:g_HwMem	@ tmp892,
	movt	r6, #:upper16:g_HwMem	@ tmp892,
	movw	r5, #1148	@ tmp352,
	mla	r2, r5, sl, r6	@ tmp353, tmp352, VdhId, tmp892
	ldr	r0, [r2, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r1, #1	@ <variable>.IsShortHeader,
	mov	r5, r0	@ pReg,
	beq	.L58	@,
	mov	r8, #0	@ tmp374,
	mov	r7, r0	@ pReg.857, pReg
	str	r8, [r7], #4	@ tmp374,
	mov	r2, r8	@, tmp374
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	mov	r0, #4	@,
	and	r2, r1, #31	@ tmp377, <variable>.VopQuant,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r3, ip, asl #31	@ tmp380, <variable>.PicQuantType,
	orr	r2, r3, r2, asl #26	@, Dat.856, tmp380, tmp377,
	str	r2, [r5, #4]	@ Dat.856,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.825, <variable>.PicCodingType
	movw	ip, #14612	@ tmp387,
	movw	r0, #14620	@ tmp396,
	cmp	r3, #2	@ prephitmp.825,
	streq	r8, [fp, #-48]	@ tmp374, %sfp
	streqb	r8, [r4, #12]	@ tmp374, <variable>.vop_rounding_type
	ldrneb	r2, [r4, #12]	@ zero_extendqisi2	@ pretmp.822, <variable>.vop_rounding_type
	andne	r2, r2, #1	@ tmp382, pretmp.822,
	movne	r2, r2, asl #3	@, tmp382,
	strne	r2, [fp, #-48]	@, %sfp
	ldr	lr, [r4, ip]	@ <variable>.sprite_enable, <variable>.sprite_enable
	movw	r2, #14616	@ tmp392,
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.Interlaced, <variable>.Interlaced
	ldr	ip, [r4, r0]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	and	r8, lr, #3	@ tmp388, <variable>.sprite_enable,
	ldr	r2, [r4, r2]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	and	r1, r1, #1	@ tmp386, <variable>.Interlaced,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	orr	lr, r1, r8, asl #26	@, tmp391, tmp386, tmp388,
	and	r8, ip, #3	@ tmp397, <variable>.sprite_warping_accuracy,
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.alternate_vertical_scan, <variable>.alternate_vertical_scan
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	orr	lr, lr, r2, asl #30	@, tmp395, tmp391, <variable>.sprite_warping_points,
	and	r0, r0, #1	@ tmp402, <variable>.top_field_first,
	ldrb	r2, [r4, #10]	@ zero_extendqisi2	@ <variable>.resync_marker_disable, <variable>.resync_marker_disable
	orr	lr, lr, r8, asl #28	@, tmp400, tmp395, tmp397,
	and	ip, ip, #1	@ tmp406, <variable>.alternate_vertical_scan,
	orr	lr, lr, r0, asl #1	@, tmp404, tmp400, tmp402,
	ldrb	r8, [r4, #9]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r1, r1, #1	@ tmp410, <variable>.QuarterSample,
	ldrb	r0, [r4, #7]	@ zero_extendqisi2	@ <variable>.FwdFcode, <variable>.FwdFcode
	orr	ip, lr, ip, asl #2	@, tmp408, tmp404, tmp406,
	mov	lr, r2, asl #7	@ tmp414, <variable>.resync_marker_disable,
	and	r2, lr, #255	@ tmp415, tmp414,
	orr	r1, ip, r1, asl #4	@, tmp412, tmp408, tmp410,
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ <variable>.BwdFcode, <variable>.BwdFcode
	and	r8, r8, #7	@ tmp418, <variable>.intra_dc_vlc_thr,
	orr	r1, r1, r2	@ tmp416, tmp412, tmp415
	and	ip, r0, #7	@ tmp422, <variable>.FwdFcode,
	ldrb	r2, [r4, #6]	@ zero_extendqisi2	@ <variable>.BitsOfVopTimeIncr, <variable>.BitsOfVopTimeIncr
	orr	r1, r1, r8, asl #8	@, tmp420, tmp416, tmp418,
	and	lr, lr, #7	@ tmp426, <variable>.BwdFcode,
	orr	r0, r1, ip, asl #11	@, tmp424, tmp420, tmp422,
	and	r1, r2, #31	@ tmp430, <variable>.BitsOfVopTimeIncr,
	ldr	r2, [fp, #-48]	@, %sfp
	orr	ip, r0, lr, asl #14	@, tmp428, tmp424, tmp426,
	and	lr, r3, #3	@ tmp435, prephitmp.825,
	orr	r8, ip, r1, asl #17	@, tmp432, tmp428, tmp430,
	mov	r0, #4	@,
	orr	ip, r8, r9	@ tmp433, tmp432, prephitmp.804
	movw	r1, #:lower16:.LC10	@,
	orr	r8, ip, r2	@ tmp434, tmp433,
	movt	r1, #:upper16:.LC10	@,
	orr	r2, r8, lr, asl #5	@, Dat.865, tmp434, tmp435,
	str	r2, [r7, #4]	@ Dat.865,
	add	r7, r7, r0	@ pReg.866, pReg.857,
	bl	dprint_vfmw	@
	ldrb	r9, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r9, #2	@ <variable>.PicCodingType,
	beq	.L59	@,
.L41:
	ldrh	r7, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r0, #4	@,
	ldrh	r2, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC12	@,
	sub	r8, r7, #1	@ tmp450, <variable>.PicWidthInMb,
	movt	r1, #:upper16:.LC12	@,
	sub	r9, r2, #1	@ tmp447, <variable>.PicHeightInMb,
	uxth	lr, r8	@ tmp451, tmp450
	orr	r2, lr, r9, asl #16	@, Dat.878, tmp451, tmp447,
	str	r2, [r5, #16]	@ Dat.878,
	bl	dprint_vfmw	@
	movw	r1, #14604	@ tmp454,
	ldr	ip, [r4, r1]	@ <variable>.image_height, <variable>.image_height
	movw	r0, #14608	@ tmp457,
	ldr	r3, [r4, r0]	@ <variable>.image_width, <variable>.image_width
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC13	@,
	orr	r2, r3, ip, asl #16	@, Dat.882, <variable>.image_width, <variable>.image_height,
	str	r2, [r5, #20]	@ Dat.882,
	bl	dprint_vfmw	@
	ldrb	r7, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r7, #3	@ <variable>.PicCodingType,
	beq	.L60	@,
.L44:
	mov	r7, #0	@ tmp516,
	mov	r0, #4	@,
	mov	r2, r7	@, tmp516
	str	r7, [r5, #32]	@ tmp516,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp516
	str	r7, [r5, #36]	@ tmp516,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp516
	str	r7, [r5, #40]	@ tmp516,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp516
	str	r7, [r5, #44]	@ tmp516,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	movw	r1, #14588	@ tmp524,
	ldr	r9, [r4, r1]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bic	r2, r9, #15	@ Dat.937, <variable>.DispFramePhyAddr,
	str	r2, [r5, #48]	@ Dat.937,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	bic	r2, r2, #15	@ Dat.941, <variable>.FwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC21	@,
	str	r2, [r5, #52]	@ Dat.941,
	add	r9, r5, #72	@ pReg.962, pReg,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #220]	@ <variable>.BwdRefPicPhyAddr, <variable>.BwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	bic	r2, ip, #15	@ Dat.945, <variable>.BwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC22	@,
	str	r2, [r5, #56]	@ Dat.945,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	bic	r2, r3, #15	@ Dat.949, <variable>.CurPmvPhyAddr,
	movt	r1, #:upper16:.LC23	@,
	str	r2, [r5, #60]	@ Dat.949,
	bl	dprint_vfmw	@
	ldr	r8, [r4, #228]	@ <variable>.BwdPmvPhyAddr, <variable>.BwdPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	bic	r2, r8, #15	@ Dat.953, <variable>.BwdPmvPhyAddr,
	movt	r1, #:upper16:.LC24	@,
	str	r2, [r5, #64]	@ Dat.953,
	bl	dprint_vfmw	@
	movw	r0, #1148	@ tmp538,
	mla	r8, r0, sl, r6	@ tmp539, tmp538, VdhId, tmp892
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC25	@,
	ldr	r2, [r8, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r2, r2, #15	@ Dat.957, <variable>.SedTopAddr,
	str	r2, [r5, #68]	@ Dat.957,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	bic	r2, ip, #15	@ Dat.961, <variable>.PmvTopAddr,
	movt	r1, #:upper16:.LC26	@,
	str	r2, [r5, #72]	@ Dat.961,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	strb	r7, [r4, #157]	@ tmp516, <variable>.FF_BUG_QPEL_FILED
	cmp	r3, #3	@ <variable>.PicCodingType,
	beq	.L61	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r2, r1	@ prephitmp.807, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
.L53:
	ldrb	r3, [r4, #156]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA2, <variable>.FF_BUG_QPEL_CHROMA2
	and	ip, r1, #1	@ tmp566, <variable>.FF_BUG_EDGE_EXTEND,
	ldrb	r0, [r4, #155]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA, <variable>.FF_BUG_QPEL_CHROMA
	and	lr, r2, #1	@ tmp573, prephitmp.807,
	and	r3, r3, #1	@ tmp563, <variable>.FF_BUG_QPEL_CHROMA2,
	mov	r1, ip, asl #2	@ tmp567, tmp566,
	and	ip, r0, #1	@ tmp570, <variable>.FF_BUG_QPEL_CHROMA,
	mov	r0, #4	@,
	orr	r3, r1, r3, asl #1	@, tmp568, tmp567, tmp563,
	movw	r1, #:lower16:.LC27	@,
	orr	r3, r3, ip	@ tmp571, tmp568, tmp570
	movt	r1, #:upper16:.LC27	@,
	orr	r7, r3, r7	@ tmp572, tmp571, prephitmp.809
	orr	r2, r7, lr, asl #3	@, Dat.966, tmp572, tmp573,
	str	r2, [r9, #4]	@ Dat.966,
	bl	dprint_vfmw	@
	movw	r2, #14624	@ tmp576,
	ldr	r3, [r4, r2]	@ D.31251, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r2, r3	@, D.31251
	str	r3, [r5, #80]	@ D.31251,
	bl	dprint_vfmw	@
	movw	r1, #14628	@ tmp578,
	ldr	ip, [r4, r1]	@ D.31253, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r2, ip	@, D.31253
	str	ip, [r5, #84]	@ D.31253,
	bl	dprint_vfmw	@
	movw	r0, #14632	@ tmp580,
	ldr	r3, [r4, r0]	@ D.31255, <variable>.dV
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r2, r3	@, D.31255
	str	r3, [r5, #88]	@ D.31255,
	bl	dprint_vfmw	@
	movw	r2, #14636	@ tmp582,
	ldr	ip, [r4, r2]	@ D.31257, <variable>.dV
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mov	r2, ip	@, D.31257
	str	ip, [r5, #92]	@ D.31257,
	bl	dprint_vfmw	@
	movw	r1, #14640	@ tmp584,
	ldr	r3, [r4, r1]	@ temp.983, <variable>.Uo
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r2, r3	@, temp.983
	str	r3, [r5, #96]	@ temp.983,
	bl	dprint_vfmw	@
	movw	r0, #14644	@ tmp586,
	ldr	ip, [r4, r0]	@ temp.987, <variable>.Vo
	movw	r1, #:lower16:.LC33	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC33	@,
	mov	r2, ip	@, temp.987
	str	ip, [r5, #100]	@ temp.987,
	bl	dprint_vfmw	@
	movw	r2, #14648	@ tmp588,
	ldr	r3, [r4, r2]	@ D.31261, <variable>.Uco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	mov	r2, r3	@, D.31261
	str	r3, [r5, #104]	@ D.31261,
	bl	dprint_vfmw	@
	movw	r1, #14652	@ tmp590,
	ldr	r2, [r4, r1]	@ D.31263, <variable>.Vco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	str	r2, [r5, #108]	@ D.31263,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	ip, #2	@ <variable>.IsShortHeader,
	beq	.L62	@,
.L54:
	movw	r1, #1148	@ tmp885,
	mov	r0, #4	@,
	mla	r6, r1, sl, r6	@ tmp886, tmp885, VdhId, tmp892
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r2, r2, #256	@ D.31291, <variable>.MsgSlotAddr,
	str	r2, [r5, #252]	@ D.31291,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L62:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	cmp	r2, #0	@ <variable>.PicQuantType,
	beq	.L54	@,
	ldrb	lr, [r4, #88]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #28	@,
	ldrb	r3, [r4, #89]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movw	r1, #:lower16:.LC36	@,
	ldrb	r7, [r4, #25]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC36	@,
	orr	ip, ip, lr, asl #8	@, tmp597, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	lr, ip, r3, asl #24	@, tmp600, tmp597, <variable>.NonintraQuantTab,
	orr	r3, lr, r7, asl #16	@, temp.1047, tmp600, <variable>.IntraQuantTab,
	str	r3, [r5, #112]	@ temp.1047,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #90]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #27]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #29	@,
	ldrb	r3, [r4, #26]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #91]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp606, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp609, tmp606, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1158, tmp609, <variable>.NonintraQuantTab,
	str	r3, [r5, #116]	@ temp.1158,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #92]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #29]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #30	@,
	ldrb	r3, [r4, #28]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #93]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp615, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp618, tmp615, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1175, tmp618, <variable>.NonintraQuantTab,
	str	r3, [r5, #120]	@ temp.1175,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #94]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #31]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #31	@,
	ldrb	r3, [r4, #30]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #95]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp624, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp627, tmp624, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1192, tmp627, <variable>.NonintraQuantTab,
	str	r3, [r5, #124]	@ temp.1192,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #96]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #33]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #97]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp633, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp636, tmp633, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1209, tmp636, <variable>.NonintraQuantTab,
	str	r3, [r5, #128]	@ temp.1209,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #98]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #35]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #33	@,
	ldrb	r3, [r4, #34]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #99]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp642, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp645, tmp642, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1226, tmp645, <variable>.NonintraQuantTab,
	str	r3, [r5, #132]	@ temp.1226,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #100]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #37]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #34	@,
	ldrb	r3, [r4, #36]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #101]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp651, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp654, tmp651, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1243, tmp654, <variable>.NonintraQuantTab,
	str	r3, [r5, #136]	@ temp.1243,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #102]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #39]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #35	@,
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #103]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp660, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp663, tmp660, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1260, tmp663, <variable>.NonintraQuantTab,
	str	r3, [r5, #140]	@ temp.1260,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #104]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #41]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #36	@,
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #105]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp669, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp672, tmp669, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1277, tmp672, <variable>.NonintraQuantTab,
	str	r3, [r5, #144]	@ temp.1277,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #106]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #43]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #37	@,
	ldrb	r3, [r4, #42]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #107]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp678, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp681, tmp678, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1294, tmp681, <variable>.NonintraQuantTab,
	str	r3, [r5, #148]	@ temp.1294,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #108]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #45]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #38	@,
	ldrb	r3, [r4, #44]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #109]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp687, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp690, tmp687, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1311, tmp690, <variable>.NonintraQuantTab,
	str	r3, [r5, #152]	@ temp.1311,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #110]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #47]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #39	@,
	ldrb	r3, [r4, #46]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #111]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp696, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp699, tmp696, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1328, tmp699, <variable>.NonintraQuantTab,
	str	r3, [r5, #156]	@ temp.1328,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #112]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #49]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #48]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #113]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp705, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp708, tmp705, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1345, tmp708, <variable>.NonintraQuantTab,
	str	r3, [r5, #160]	@ temp.1345,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #114]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #51]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #41	@,
	ldrb	r3, [r4, #50]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #115]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp714, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp717, tmp714, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1362, tmp717, <variable>.NonintraQuantTab,
	str	r3, [r5, #164]	@ temp.1362,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #116]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #53]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #42	@,
	ldrb	r3, [r4, #52]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #117]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp723, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp726, tmp723, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1379, tmp726, <variable>.NonintraQuantTab,
	str	r3, [r5, #168]	@ temp.1379,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #118]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #55]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #43	@,
	ldrb	r3, [r4, #54]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #119]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp732, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp735, tmp732, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1396, tmp735, <variable>.NonintraQuantTab,
	str	r3, [r5, #172]	@ temp.1396,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #120]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #57]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #44	@,
	ldrb	r3, [r4, #56]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #121]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp741, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp744, tmp741, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1413, tmp744, <variable>.NonintraQuantTab,
	str	r3, [r5, #176]	@ temp.1413,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #122]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #59]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #45	@,
	ldrb	r3, [r4, #58]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #123]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp750, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp753, tmp750, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1430, tmp753, <variable>.NonintraQuantTab,
	str	r3, [r5, #180]	@ temp.1430,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #124]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #61]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #46	@,
	ldrb	r3, [r4, #60]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #125]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp759, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp762, tmp759, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1447, tmp762, <variable>.NonintraQuantTab,
	str	r3, [r5, #184]	@ temp.1447,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #126]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #63]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #47	@,
	ldrb	r3, [r4, #62]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #127]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp768, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp771, tmp768, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1464, tmp771, <variable>.NonintraQuantTab,
	str	r3, [r5, #188]	@ temp.1464,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #128]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #65]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #64]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #129]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp777, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp780, tmp777, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1481, tmp780, <variable>.NonintraQuantTab,
	str	r3, [r5, #192]	@ temp.1481,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #130]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #67]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #49	@,
	ldrb	r3, [r4, #66]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #131]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp786, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp789, tmp786, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1498, tmp789, <variable>.NonintraQuantTab,
	str	r3, [r5, #196]	@ temp.1498,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #132]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #69]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #50	@,
	ldrb	r3, [r4, #68]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #133]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp795, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp798, tmp795, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1515, tmp798, <variable>.NonintraQuantTab,
	str	r3, [r5, #200]	@ temp.1515,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #134]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #71]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #51	@,
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #135]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp804, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp807, tmp804, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1532, tmp807, <variable>.NonintraQuantTab,
	str	r3, [r5, #204]	@ temp.1532,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #136]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #73]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #52	@,
	ldrb	r3, [r4, #72]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #137]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp813, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp816, tmp813, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, D.31285, tmp816, <variable>.NonintraQuantTab,
	str	r3, [r5, #208]	@ D.31285,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #138]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #75]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #53	@,
	ldrb	r3, [r4, #74]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #139]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp822, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp825, tmp822, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1041, tmp825, <variable>.NonintraQuantTab,
	str	r3, [r5, #212]	@ temp.1041,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #140]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #77]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #54	@,
	ldrb	r3, [r4, #76]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #141]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp831, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp834, tmp831, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1062, tmp834, <variable>.NonintraQuantTab,
	str	r3, [r5, #216]	@ temp.1062,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #142]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #79]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #55	@,
	ldrb	r3, [r4, #78]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #143]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp840, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp843, tmp840, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1084, tmp843, <variable>.NonintraQuantTab,
	str	r3, [r5, #220]	@ temp.1084,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #144]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #145]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp849, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp852, tmp849, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1105, tmp852, <variable>.NonintraQuantTab,
	str	r3, [r5, #224]	@ temp.1105,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #146]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #57	@,
	ldrb	r3, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #147]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp858, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp861, tmp858, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1125, tmp861, <variable>.NonintraQuantTab,
	str	r3, [r5, #228]	@ temp.1125,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #148]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #58	@,
	ldrb	r3, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	ip, [r4, #149]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r3, r1, asl #8	@, tmp867, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC36	@,
	orr	r3, r3, lr, asl #16	@, tmp870, tmp867, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC36	@,
	orr	r3, r3, ip, asl #24	@, temp.1142, tmp870, <variable>.NonintraQuantTab,
	str	r3, [r5, #232]	@ temp.1142,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #150]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	r0, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movw	r1, #:lower16:.LC36	@,
	ldrb	lr, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC36	@,
	ldrb	ip, [r4, #151]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, r0, r2, asl #8	@, tmp876, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	mov	r2, #59	@,
	mov	r0, #4	@,
	orr	r3, r3, lr, asl #16	@, tmp879, tmp876, <variable>.IntraQuantTab,
	orr	r3, r3, ip, asl #24	@, temp.1010, tmp879, <variable>.NonintraQuantTab,
	str	r3, [r5, #236]	@ temp.1010,
	bl	dprint_vfmw	@
	b	.L54	@
.L61:
	movw	r0, #14616	@ tmp554,
	ldr	lr, [r4, r0]	@ prephitmp.819, <variable>.sprite_warping_points
	cmp	lr, #1	@ prephitmp.819,
	streqb	lr, [r4, #152]	@ prephitmp.819, <variable>.FF_BUG_EDGE_FIND_POINT
	beq	.L57	@,
	bls	.L57	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
	mov	r2, r1	@ prephitmp.807, <variable>.FF_BUG_EDGE_EXTEND
	b	.L53	@
.L60:
	movw	ip, #14616	@ tmp461,
	ldr	r3, [r4, ip]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	cmp	r3, #1	@ <variable>.sprite_warping_points,
	bne	.L44	@,
	ldrb	r7, [r4, #154]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r7, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L63	@,
	movw	r9, #14640	@ tmp486,
	ldrb	r7, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r0, [r4, r9]	@ <variable>.Uo, <variable>.Uo
	mov	r1, r0, asl r7	@ D.31181, <variable>.Uo,
	cmp	r1, #0	@ D.31181,
	ble	.L46	@,
	movw	ip, #14620	@ tmp489,
	ldr	r8, [r4, ip]	@ D.31184, <variable>.sprite_warping_accuracy
	mov	r3, r3, asl r8	@ tmp490, <variable>.sprite_warping_points,
	add	lr, r1, r3, asr #1	@, tmp493, D.31181, tmp490,
	mov	r2, lr, asr r8	@ Dat, tmp493,
.L47:
	str	r2, [r5, #24]	@ Dat,
	movw	r8, #14644	@ tmp501,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r7, #1	@ tmp512,
	bl	dprint_vfmw	@
	ldr	r9, [r4, r8]	@ <variable>.Vo, <variable>.Vo
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r2, #14620	@ tmp504,
	ldr	r8, [r4, r2]	@ temp.918, <variable>.sprite_warping_accuracy
	mov	ip, r9, asl r1	@ D.31193, <variable>.Vo,
	movw	r1, #:lower16:.LC15	@,
	mov	r0, r7, asl r8	@ tmp511, tmp512,
	cmp	ip, #0	@ D.31193,
	suble	ip, ip, #1	@ tmp510, D.31193,
	movt	r1, #:upper16:.LC15	@,
	add	r3, ip, r0, asr #1	@, tmp514, tmp510, tmp511,
	mov	r0, #4	@,
	mov	r2, r3, asr r8	@ Dat.841, tmp514,
	str	r2, [r5, #28]	@ Dat.841,
	bl	dprint_vfmw	@
	b	.L44	@
.L58:
	mov	r7, #4	@ tmp357,
	mov	r8, r0	@ pReg.843, pReg
	str	r7, [r8], #4	@ tmp357,
	mov	r2, r7	@, tmp357
	mov	r0, r7	@, tmp357
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.GobMbNum, <variable>.GobMbNum
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	mov	r0, r7	@, tmp357
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.VopGobNum, <variable>.VopGobNum
	and	r2, ip, #127	@ tmp363, <variable>.GobMbNum,
	and	ip, r1, #31	@ tmp360, <variable>.VopQuant,
	movw	r1, #:lower16:.LC9	@,
	mov	r2, r2, asl #5	@ tmp364, tmp363,
	sub	r3, r3, #1	@ tmp367, <variable>.VopGobNum,
	orr	r2, r2, ip, asl #26	@, tmp365, tmp364, tmp360,
	and	r3, r3, #31	@ tmp368, tmp367,
	orr	r2, r2, r3	@ Dat.842, tmp365, tmp368
	movt	r1, #:upper16:.LC9	@,
	str	r2, [r5, #4]	@ Dat.842,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r0, r7	@, tmp357
	movw	r1, #:lower16:.LC10	@,
	and	r7, ip, #3	@ tmp371, <variable>.PicCodingType,
	movt	r1, #:upper16:.LC10	@,
	orr	r2, r9, r7, asl #5	@, Dat.846, prephitmp.804, tmp371,
	str	r2, [r8, #4]	@ Dat.846,
	bl	dprint_vfmw	@
	b	.L41	@
.L59:
	ldr	r2, [r4, #204]	@ <variable>.Trb, <variable>.Trb
	movw	r1, #:lower16:.LC11	@,
	ldr	r8, [r4, #208]	@ <variable>.Trd, <variable>.Trd
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #4	@,
	mov	r9, r2, asl #17	@ tmp442, <variable>.Trb,
	mov	lr, r8, asl #17	@ tmp443, <variable>.Trd,
	orr	r2, lr, r9, lsr #16	@, Dat.871, tmp443, tmp442,
	str	r2, [r7, #4]	@ Dat.871,
	bl	dprint_vfmw	@
	b	.L41	@
.L57:
	ldrb	r3, [r4, #157]	@ zero_extendqisi2	@ pretmp.1023, <variable>.FF_BUG_QPEL_FILED
	ldrb	r2, [r4, #152]	@ zero_extendqisi2	@ prephitmp.807, <variable>.FF_BUG_EDGE_FIND_POINT
	and	r7, r3, #1	@ tmp558, pretmp.1023,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r7, r7, asl #4	@ prephitmp.809, tmp558,
	b	.L53	@
.L46:
	movw	r9, #14620	@ tmp494,
	sub	r1, r1, #1	@ tmp495, D.31181,
	ldr	r2, [r4, r9]	@ temp.906, <variable>.sprite_warping_accuracy
	mov	r7, r3, asl r2	@ tmp496, <variable>.sprite_warping_points,
	add	r0, r1, r7, asr #1	@, tmp499, tmp495, tmp496,
	mov	r2, r0, asr r2	@ Dat, tmp499,
	b	.L47	@
.L63:
	movw	r8, #14620	@ tmp465,
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	ip, [r4, r8]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	movw	r2, #14640	@ tmp464,
	ldr	r0, [r4, r2]	@, <variable>.Uo
	rsb	lr, r1, ip	@ tmp467, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r7, asl lr	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, r0	@, tmp473
	str	r0, [r5, #24]	@ tmp473,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r9, [r4, r8]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r8, #14644	@ tmp475,
	ldr	r0, [r4, r8]	@, <variable>.Vo
	rsb	r1, r3, r9	@ tmp478, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r7, asl r1	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r2, r0	@, tmp484
	str	r0, [r5, #28]	@ tmp484,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	b	.L44	@
	.fnend
	.size	MP4HAL_V200R003MPW_CfgDnMsg, .-MP4HAL_V200R003MPW_CfgDnMsg
	.align	2
	.global	MP4HAL_V200R003MPW_CfgReg
	.type	MP4HAL_V200R003MPW_CfgReg, %function
MP4HAL_V200R003MPW_CfgReg:
	.fnstart
.LFB1349:
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
	movw	r3, #14572	@ tmp180,
	ldr	r3, [r0, r3]	@ D.30909, <variable>.SlcNum
	mov	r7, r0	@ pMp4DecParam, pMp4DecParam
	mov	r9, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.30909,
	beq	.L65	@,
	ldr	r1, [r0, #252]	@ temp.1623, <variable>.phy_address
	sub	ip, r3, #1	@ tmp370, D.30909,
	and	ip, ip, #1	@ tmp372, tmp370,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r1, #0	@ temp.1623,
	beq	.L79	@,
	ldr	r0, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	bne	.L99	@,
.L79:
	ldr	r1, [r7, #256]	@ D.30902, <variable>.phy_address
	cmp	r1, #0	@ D.30902,
	beq	.L81	@,
	ldr	lr, [r7, #248]	@ tmp384, <variable>.bit_len
	cmp	lr, #0	@ tmp384,
	bne	.L100	@,
.L81:
	mov	r0, #1	@ i,
	cmp	r0, r3	@ i, D.30909
	add	r1, r7, #28	@ ivtmp.1566, pMp4DecParam,
	beq	.L78	@,
	cmp	ip, #0	@ tmp372,
	beq	.L66	@,
	ldr	ip, [r1, #252]	@ temp.1623, <variable>.phy_address
	cmp	ip, #0	@ temp.1623,
	beq	.L86	@,
	b	.L91	@
.L66:
	ldr	ip, [r1, #252]	@ temp.1623, <variable>.phy_address
	cmp	ip, #0	@ temp.1623,
	beq	.L69	@,
	ldr	lr, [r1, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L69	@,
	bic	ip, ip, #15	@ tmp184, temp.1623,
	cmp	r4, ip	@ stream_base_addr, tmp184
	movcs	r4, ip	@ stream_base_addr, tmp184
.L69:
	ldr	ip, [r1, #256]	@ D.30902, <variable>.phy_address
	cmp	ip, #0	@ D.30902,
	beq	.L67	@,
	ldr	lr, [r1, #248]	@ tmp181, <variable>.bit_len
	cmp	lr, #0	@ tmp181,
	beq	.L67	@,
	bic	ip, ip, #15	@ tmp182, D.30902,
	cmp	r4, ip	@ stream_base_addr, tmp182
	movcs	r4, ip	@ stream_base_addr, tmp182
.L67:
	add	r1, r1, #28	@ tmp374, ivtmp.1566,
	add	r0, r0, #1	@ tmp373, i,
	ldr	ip, [r1, #252]	@ temp.1623, <variable>.phy_address
	cmp	ip, #0	@ temp.1623,
	beq	.L86	@,
.L91:
	ldr	lr, [r1, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L86	@,
	bic	ip, ip, #15	@ tmp393, temp.1623,
	cmp	r4, ip	@ stream_base_addr, tmp393
	movcs	r4, ip	@ stream_base_addr, tmp393
.L86:
	ldr	ip, [r1, #256]	@ D.30902, <variable>.phy_address
	cmp	ip, #0	@ D.30902,
	beq	.L88	@,
	ldr	lr, [r1, #248]	@ tmp395, <variable>.bit_len
	cmp	lr, #0	@ tmp395,
	beq	.L88	@,
	bic	ip, ip, #15	@ tmp396, D.30902,
	cmp	r4, ip	@ stream_base_addr, tmp396
	movcs	r4, ip	@ stream_base_addr, tmp396
.L88:
	add	r0, r0, #1	@ i, tmp373,
	add	r1, r1, #28	@ ivtmp.1566, tmp374,
	cmp	r0, r3	@ i, D.30909
	bne	.L66	@,
.L78:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L65	@,
	str	r4, [r2, #0]	@ stream_base_addr,* pBaseAddr
	movw	sl, #1148	@ tmp195,
	ldrh	r1, [r7, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r5, #:lower16:g_HwMem	@ tmp369,
	ldrh	r8, [r7, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r5, #:upper16:g_HwMem	@ tmp369,
	mul	r6, sl, r9	@ tmp194, tmp195, VdhId
	mov	r0, #3	@,
	mul	lr, r8, r1	@ tmp188, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movw	sl, #14600	@ tmp199,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	add	r8, r6, r5	@ tmp196, tmp194, tmp369
	sub	ip, lr, #1	@ tmp189, tmp188,
	ldr	lr, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r2, ip, #-16777216	@ tmp190, tmp189,
	bic	r3, r2, #15728640	@ tmp190, tmp190,
	orr	ip, r3, #1107296256	@ D32, tmp190,
	orr	r2, ip, #4194304	@ D32, D32,
	str	r2, [lr, #8]	@ D32,
	bl	dprint_vfmw	@
	ldr	r1, [r7, sl]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r0, #14656	@ tmp205,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	r3, r1, lsr #6	@ tmp200, <variable>.VahbStride,
	movw	r1, #:lower16:.LC40	@,
	and	r2, r2, #1	@ tmp206, <variable>.Compress_en,
	movt	r1, #:upper16:.LC40	@,
	mov	r3, r3, asl #4	@ tmp202, tmp200,
	orr	r3, r3, #536870914	@ tmp203, tmp202,
	orr	r3, r3, #114688	@ tmp203, tmp203,
	orr	r2, r3, r2, asl #30	@, D32.1570, tmp203, tmp206,
	str	r2, [ip, #12]	@ D32.1570,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bic	r2, r2, #15	@ D32.1573, <variable>.MsgSlotAddr,
	str	r2, [ip, #16]	@ D32.1573,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	bic	r2, r1, #15	@ D32.1576, <variable>.MsgSlotAddr,
	movw	r1, #:lower16:.LC42	@,
	str	r2, [r3, #20]	@ D32.1576,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r4	@, stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	r4, [ip, #24]	@ stream_base_addr,
	bl	dprint_vfmw	@
	ldr	r4, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #13056	@ tmp252,
	mov	r0, #3	@,
	mov	r2, r3	@, tmp252
	movw	r1, #:lower16:.LC44	@,
	str	r3, [r4, #48]	@ tmp252,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:3148803	@ tmp259,
	movt	r3, #:upper16:3148803	@ tmp259,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC45	@,
	str	r3, [ip, #60]	@ tmp259,
	movt	r1, #:upper16:.LC45	@,
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp259,
	ldr	r4, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r4, #68]	@ tmp259,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #72]	@ tmp259,
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp259,
	ldr	r4, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r4, #80]	@ tmp259,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #84]	@ tmp259,
	ldr	r4, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r2, r2, #15	@ D32.1598, <variable>.CurPicPhyAddr,
	str	r2, [r4, #96]	@ D32.1598,
	bl	dprint_vfmw	@
	ldr	r3, [r7, sl]	@ D32.1603, <variable>.VahbStride
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldrh	r4, [r7, #166]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC46	@,
	mov	r2, r3	@, D32.1603
	movt	r1, #:upper16:.LC46	@,
	str	r3, [ip, #100]	@ D32.1603,
	bl	dprint_vfmw	@
	ldrh	r2, [r7, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp312,
	mov	r2, r2, asl #4	@ D.30976, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp311, D.30976,
	cmp	r1, r3	@ tmp311, tmp312
	bls	.L73	@,
	sub	r6, r2, #2048	@ tmp313, D.30976,
	sub	r1, r6, #1	@ tmp313, tmp313,
	cmp	r1, r3	@ tmp313, tmp312
	movls	r1, #32	@ level,
	bls	.L75	@,
	sub	r0, r2, #4096	@ tmp316, D.30976,
	sub	r1, r0, #1	@ tmp316, tmp316,
	cmp	r1, r3	@ tmp316, tmp312
	movls	r1, #48	@ level,
	bls	.L75	@,
	sub	ip, r2, #6144	@ tmp319, D.30976,
	sub	r2, ip, #1	@ tmp319, tmp319,
	cmp	r2, r3	@ tmp319, tmp312
	movls	r1, #64	@ level,
	bls	.L75	@,
.L73:
	mov	r1, #16	@ level,
.L75:
	mov	ip, r4, asl #4	@ tmp322, height_in_mb,
	add	r3, r4, #1	@ tmp326, height_in_mb,
	add	lr, ip, #31	@ tmp323, tmp322,
	movw	r2, #14600	@ tmp328,
	movw	r0, #1148	@ tmp334,
	ldr	r4, [r7, r2]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r6, lr, lsr #5	@ tmp324, tmp323,
	mov	r7, r3, lsr #1	@ tmp327, tmp326,
	mul	r9, r0, r9	@ tmp333, tmp334, VdhId
	mov	r0, #3	@,
	mul	r6, r6, r1	@ D.30998, tmp324, level
	movw	r1, #:lower16:.LC47	@,
	mul	ip, r4, r7	@ tmp329, <variable>.VahbStride, tmp327
	movt	r1, #:upper16:.LC47	@,
	ldr	lr, [r9, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r4, #0	@ tmp348,
	add	r7, r9, r5	@ tmp335, tmp333, tmp369
	add	r2, ip, r6, asl #4	@, tmp331, tmp329, D.30998,
	mov	r6, r6, asl #5	@ D32.1613, D.30998,
	mov	r2, r2, asl #1	@ D32.1609, tmp331,
	str	r2, [lr, #104]	@ D32.1609,
	bl	dprint_vfmw	@
	ldr	ip, [r9, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r4	@, tmp348
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	str	r6, [ip, #108]	@ D32.1613,
	ldr	r3, [r9, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [r3, #152]	@ tmp348,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1128]	@ D32.1618, <variable>.DnrMbInfoAddr
	ldr	ip, [r9, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	mov	r2, r3	@, D32.1618
	str	r3, [ip, #144]	@ D32.1618,
	bl	dprint_vfmw	@
	ldr	r3, [r9, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r1, #0	@ tmp367,
	mov	r0, r4	@ D.30913, tmp348
	str	r1, [r3, #32]	@ tmp367,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L100:
	bic	r0, r1, #15	@ tmp385, D.30902,
	cmp	r4, r0	@ stream_base_addr, tmp385
	movcs	r4, r0	@ stream_base_addr, tmp385
	b	.L81	@
.L99:
	bic	r1, r1, #15	@ tmp382, temp.1623,
	cmp	r4, r1	@ stream_base_addr, tmp382
	movcs	r4, r1	@ stream_base_addr, tmp382
	b	.L79	@
.L65:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC38	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30913,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	MP4HAL_V200R003MPW_CfgReg, .-MP4HAL_V200R003MPW_CfgReg
	.align	2
	.global	MP4HAL_V200R003MPW_StartDec
	.type	MP4HAL_V200R003MPW_StartDec, %function
MP4HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1348:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrh	r3, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r5, r1	@ VdhId, VdhId
	cmp	r3, #352	@ <variable>.PicWidthInMb,
	mov	r0, #0	@ tmp141,
	str	r0, [fp, #-32]	@ tmp141, StreamBaseAddr
	bhi	.L111	@,
	ldrh	r1, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r1, #264	@ <variable>.PicHeightInMb,
	bhi	.L112	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp148,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp148,
	ldr	r3, [r0, #36]	@ D.30864, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.30864,
	beq	.L105	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.30864
.L106:
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	sub	r2, fp, #32	@,,
	bl	MP4HAL_V200R003MPW_CfgReg	@
	subs	r7, r0, #0	@ ret,
	bne	.L113	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	bl	MP4HAL_V200R003MPW_CfgDnMsg	@
	subs	r6, r0, #0	@ ret.1650,
	bne	.L114	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	ldr	r2, [fp, #-32]	@, StreamBaseAddr
	bl	MP4HAL_V200R003MPW_WriteSlicMsg	@
	cmp	r0, #0	@ ret.1651
	bne	.L115	@,
.L103:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L105:
	mov	r0, r3	@, D.30864
	movw	r1, #:lower16:.LC52	@,
	mov	r2, #125	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	b	.L106	@
.L113:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30860,
	b	.L103	@
.L114:
	mov	r0, r7	@, ret
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30860,
	b	.L103	@
.L111:
	movw	r1, #:lower16:.LC50	@,
	mov	r2, #122	@,
	movt	r1, #:upper16:.LC50	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30860,
	b	.L103	@
.L112:
	movw	r1, #:lower16:.LC50	@,
	mov	r2, #123	@,
	movt	r1, #:upper16:.LC50	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30860,
	b	.L103	@
.L115:
	mov	r0, r6	@, ret.1650
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30860,
	b	.L103	@
	.fnend
	.size	MP4HAL_V200R003MPW_StartDec, .-MP4HAL_V200R003MPW_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC1:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC2:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC3:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC4:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC5:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"D0=0x%x\012\000"
	.space	3
.LC9:
	.ascii	"D1=0x%x\012\000"
	.space	3
.LC10:
	.ascii	"D2=0x%x\012\000"
	.space	3
.LC11:
	.ascii	"D3=0x%x\012\000"
	.space	3
.LC12:
	.ascii	"D4=0x%x\012\000"
	.space	3
.LC13:
	.ascii	"D5=0x%x\012\000"
	.space	3
.LC14:
	.ascii	"D6=0x%x\012\000"
	.space	3
.LC15:
	.ascii	"D7=0x%x\012\000"
	.space	3
.LC16:
	.ascii	"D8=0x%x\012\000"
	.space	3
.LC17:
	.ascii	"D9=0x%x\012\000"
	.space	3
.LC18:
	.ascii	"D10=0x%x\012\000"
	.space	2
.LC19:
	.ascii	"D11=0x%x\012\000"
	.space	2
.LC20:
	.ascii	"D12= 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D13= 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D14= 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D15= 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D16= 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D17= 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D18= 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D19= 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D20= 0x%x\012\000"
	.space	1
.LC29:
	.ascii	"D21= 0x%x\012\000"
	.space	1
.LC30:
	.ascii	"D22= 0x%x\012\000"
	.space	1
.LC31:
	.ascii	"D23= 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"D24= 0x%x\012\000"
	.space	1
.LC33:
	.ascii	"D25= 0x%x\012\000"
	.space	1
.LC34:
	.ascii	"D26= 0x%x\012\000"
	.space	1
.LC35:
	.ascii	"D27= 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"D%d= 0x%x\012\000"
	.space	1
.LC37:
	.ascii	"D63= 0x%x\012\000"
	.space	1
.LC38:
	.ascii	"stream_base_addr = %#x\012\000"
.LC39:
	.ascii	"BASIC_V200R003MPW_CFG0=0x%x\012\000"
	.space	3
.LC40:
	.ascii	"BASIC_V200R003MPW_CFG1=0x%x\012\000"
	.space	3
.LC41:
	.ascii	"AVM_V200R003MPW_ADDR=0x%x\012\000"
	.space	1
.LC42:
	.ascii	"VAM_V200R003MPW_ADDR=0x%x\012\000"
	.space	1
.LC43:
	.ascii	"STREAM_V200R003MPW_BASE_ADDR=0x%x\012\000"
	.space	1
.LC44:
	.ascii	"EMAR_ID=0x%x\012\000"
	.space	2
.LC45:
	.ascii	"YSTADDR_V200R003MPW_1D=0x%x\012\000"
	.space	3
.LC46:
	.ascii	"YSTRIDE_V200R003MPW_1D=0x%x\012\000"
	.space	3
.LC47:
	.ascii	"UVOFFSET_V200R003MPW_1D=0x%x\012\000"
	.space	2
.LC48:
	.ascii	"PRCMEM2_1D_CNT=0x%x\012\000"
	.space	3
.LC49:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC50:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC51:
	.ascii	"picture width out of range\000"
	.space	1
.LC52:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC53:
	.ascii	"MP4HAL_V200R003MPW_CfgReg failed!\012\000"
	.space	1
.LC54:
	.ascii	"MP4HAL_V200R003MPW_CfgDnMsg failed!\012\000"
	.space	3
.LC55:
	.ascii	"MP4HAL_V200R003MPW_WriteSlicMsg failed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
