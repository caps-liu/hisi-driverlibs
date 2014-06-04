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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp8.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.o
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
	.global	VP8HAL_V200R004_InitHal
	.type	VP8HAL_V200R004_InitHal, %function
VP8HAL_V200R004_InitHal:
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
	.size	VP8HAL_V200R004_InitHal, .-VP8HAL_V200R004_InitHal
	.align	2
	.global	VP8HAL_V200R004_CfgDnMsg
	.type	VP8HAL_V200R004_CfgDnMsg, %function
VP8HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1359:
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
	beq	.L10	@,
	ldr	r1, [r4, #2796]	@ <variable>.frame_type, <variable>.frame_type
	mov	r5, r8	@ p32, pMsgBase
	ldr	lr, [r4, #2800]	@ <variable>.last_frame_type, <variable>.last_frame_type
	mov	r0, #4	@,
	and	r6, r1, #1	@ tmp356, <variable>.frame_type,
	movw	r1, #:lower16:.LC2	@,
	bfi	r6, lr, #1, #2	@ tmp356, <variable>.last_frame_type,,
	str	r6, [fp, #-48]	@ tmp356,
	str	r6, [r5], #4	@ tmp356,
	movt	r1, #:upper16:.LC2	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	r6, #0	@ tmp352,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2808]	@ <variable>.full_pixel, <variable>.full_pixel
	ldr	sl, [r4, #2804]	@ <variable>.use_bilinear_mc_filter, <variable>.use_bilinear_mc_filter
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	rsb	r3, sl, r2, asl #1	@, tmp362, <variable>.use_bilinear_mc_filter, <variable>.full_pixel,
	add	sl, r5, r0	@ p32.538, p32,
	add	r9, r3, #1	@ D32.438, tmp362,
	str	r9, [fp, #-48]	@ D32.438, D32
	str	r9, [r8, #4]	@ D32.438,
	add	r9, sl, r0	@ p32.543, p32.538,
	ldr	r2, [fp, #-48]	@, D32
	add	ip, r9, r0	@, p32.543,
	str	ip, [fp, #-72]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mov	r0, #4	@,
	ldr	ip, [fp, #-72]	@, %sfp
	sub	r3, r1, #1	@ tmp369, <variable>.pic_width_in_mb,
	ldr	r2, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	add	ip, ip, r0	@,,
	str	ip, [fp, #-68]	@, %sfp
	mov	r3, r3, asl #23	@ tmp374, tmp369,
	add	ip, ip, r0	@,,
	sub	r2, r2, #1	@ tmp373, <variable>.pic_height_in_mb,
	str	ip, [fp, #-64]	@, %sfp
	mov	r3, r3, lsr #23	@ tmp374, tmp374,
	add	ip, ip, r0	@,,
	bfi	r3, r2, #16, #9	@ tmp374, tmp373,,
	str	ip, [fp, #-60]	@, %sfp
	str	r3, [fp, #-48]	@ tmp374,
	movw	r1, #:lower16:.LC4	@,
	str	r3, [r5, #4]	@ tmp374,
	add	r5, ip, r0	@,,
	str	r5, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC4	@,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	r5, ip, r0	@ p32.571,,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2752]	@ zero_extendqisi2	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	mov	r0, #4	@,
	str	r6, [fp, #-48]	@ tmp352, D32
	movw	r1, #:lower16:.LC5	@,
	ldrb	r2, [r4, #2753]	@ zero_extendqisi2	@ <variable>.mb_no_coeff_skip, <variable>.mb_no_coeff_skip
	movt	r1, #:upper16:.LC5	@,
	strb	r3, [fp, #-48]	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	ldr	r3, [fp, #-48]	@ tmp380,
	ldrb	ip, [r4, #2754]	@ zero_extendqisi2	@ <variable>.multi_token_partition, <variable>.multi_token_partition
	bfi	r3, r2, #8, #1	@ tmp380, <variable>.mb_no_coeff_skip,,
	bfi	r3, ip, #9, #2	@ tmp384, <variable>.multi_token_partition,,
	str	r3, [fp, #-48]	@ tmp384,
	str	r3, [sl, #4]	@ tmp384,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2755]	@ zero_extendqisi2	@ <variable>.segmentation_enable, <variable>.segmentation_enable
	ldrb	r1, [r4, #2756]	@ zero_extendqisi2	@ <variable>.update_mb_segmentation_map, <variable>.update_mb_segmentation_map
	mov	r0, #4	@,
	ldrb	ip, [r4, #2757]	@ zero_extendqisi2	@ <variable>.mb_segmentation_abs_delta, <variable>.mb_segmentation_abs_delta
	and	r3, r3, #1	@ tmp395, <variable>.segmentation_enable,
	ldrb	r2, [r4, #2758]	@ zero_extendqisi2	@ <variable>.mode_ref_lf_delta_enabled, <variable>.mode_ref_lf_delta_enabled
	bfi	r3, r1, #1, #1	@ tmp395, <variable>.update_mb_segmentation_map,,
	bfi	r3, ip, #2, #1	@ tmp399, <variable>.mb_segmentation_abs_delta,,
	movw	r1, #:lower16:.LC6	@,
	bfi	r3, r2, #3, #1	@ tmp403, <variable>.mode_ref_lf_delta_enabled,,
	str	r3, [fp, #-48]	@ tmp403,
	str	r3, [r9, #4]	@ tmp403,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2760]	@ zero_extendqisi2	@ <variable>.filter_type, <variable>.filter_type
	ldrb	r1, [r4, #2761]	@ zero_extendqisi2	@ <variable>.last_filter_type, <variable>.last_filter_type
	mov	r0, #4	@,
	ldrb	lr, [r4, #2762]	@ zero_extendqisi2	@ <variable>.filter_level, <variable>.filter_level
	and	r3, r3, #1	@ tmp414, <variable>.filter_type,
	bfi	r3, r1, #1, #2	@ tmp414, <variable>.last_filter_type,,
	ldrb	ip, [r4, #2763]	@ zero_extendqisi2	@ <variable>.sharpness_level, <variable>.sharpness_level
	bfi	r3, lr, #3, #6	@ tmp418, <variable>.filter_level,,
	ldr	lr, [fp, #-72]	@, %sfp
	ldrb	r2, [r4, #2764]	@ zero_extendqisi2	@ <variable>.last_sharpness_level, <variable>.last_sharpness_level
	bfi	r3, ip, #9, #3	@ tmp422, <variable>.sharpness_level,,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bfi	r3, r2, #12, #3	@ tmp426, <variable>.last_sharpness_level,,
	str	r3, [fp, #-48]	@ tmp426,
	str	r3, [lr, #4]	@ tmp426,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2765]	@ zero_extendqisi2	@ <variable>.y1dc_sign, <variable>.y1dc_sign
	ldrb	r1, [r4, #2766]	@ zero_extendqisi2	@ <variable>.y1dc_absdelta_q, <variable>.y1dc_absdelta_q
	mov	r0, #4	@,
	ldrb	ip, [r4, #2767]	@ zero_extendqisi2	@ <variable>.y2dc_sign, <variable>.y2dc_sign
	and	r3, r3, #1	@ tmp437, <variable>.y1dc_sign,
	ldrb	r2, [r4, #2768]	@ zero_extendqisi2	@ <variable>.y2dc_absdelta_q, <variable>.y2dc_absdelta_q
	bfi	r3, r1, #1, #4	@ tmp437, <variable>.y1dc_absdelta_q,,
	ldrb	lr, [r4, #2769]	@ zero_extendqisi2	@ <variable>.y2ac_sign, <variable>.y2ac_sign
	bfi	r3, ip, #5, #1	@ tmp441, <variable>.y2dc_sign,,
	bfi	r3, r2, #6, #4	@ tmp445, <variable>.y2dc_absdelta_q,,
	ldrb	ip, [r4, #2770]	@ zero_extendqisi2	@ <variable>.y2ac_absdelta_q, <variable>.y2ac_absdelta_q
	ldrb	r2, [r4, #2771]	@ zero_extendqisi2	@ <variable>.uvdc_sign, <variable>.uvdc_sign
	bfi	r3, lr, #10, #1	@ tmp449, <variable>.y2ac_sign,,
	bfi	r3, ip, #11, #4	@ tmp453, <variable>.y2ac_absdelta_q,,
	ldrb	lr, [r4, #2772]	@ zero_extendqisi2	@ <variable>.uvdc_absdelta_q, <variable>.uvdc_absdelta_q
	bfi	r3, r2, #15, #1	@ tmp457, <variable>.uvdc_sign,,
	ldrb	ip, [r4, #2773]	@ zero_extendqisi2	@ <variable>.uvac_sign, <variable>.uvac_sign
	bfi	r3, lr, #16, #4	@ tmp461, <variable>.uvdc_absdelta_q,,
	ldr	lr, [fp, #-68]	@, %sfp
	ldrb	r2, [r4, #2774]	@ zero_extendqisi2	@ <variable>.uvac_absdelta_q, <variable>.uvac_absdelta_q
	bfi	r3, ip, #20, #1	@ tmp465, <variable>.uvac_sign,,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #21, #4	@ tmp469, <variable>.uvac_absdelta_q,,
	str	r3, [fp, #-48]	@ tmp469,
	str	r3, [lr, #4]	@ tmp469,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-64]	@, %sfp
	ldrb	ip, [r4, #2759]	@ zero_extendqisi2	@ <variable>.base_qindex, <variable>.base_qindex
	mov	r1, r6	@ tmp477, tmp352
	mov	r0, #4	@,
	bfi	r1, ip, #0, #7	@ tmp477, <variable>.base_qindex,,
	str	r1, [fp, #-48]	@ tmp477,
	str	r1, [r3, #4]	@ tmp477,
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2780]	@ <variable>.value, <variable>.value
	ldr	ip, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r2, [fp, #-48]	@ <variable>.value, <variable>.value
	str	r2, [ip, #4]	@ <variable>.value,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2778]	@ zero_extendqisi2	@ <variable>.range, <variable>.range
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r0, #4	@,
	str	r6, [fp, #-48]	@ tmp352, D32
	movw	r1, #:lower16:.LC11	@,
	ldrb	r2, [r4, #2779]	@ zero_extendqisi2	@ <variable>.count, <variable>.count
	movt	r1, #:upper16:.LC11	@,
	strb	r3, [fp, #-48]	@ <variable>.range, <variable>.range
	ldr	r3, [fp, #-48]	@ tmp491,
	bfi	r3, r2, #16, #6	@ tmp491, <variable>.count,,
	str	r3, [fp, #-48]	@ tmp491,
	str	r3, [ip, #4]	@ tmp491,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2820]	@ D.30944, <variable>.bit_offset_0
	ldrb	r6, [r4, #2779]	@ zero_extendqisi2	@ D.30943, <variable>.count
	mov	r0, #4	@,
	ldr	r1, [r4, #2816]	@ D.30942, <variable>.bit_len_0
	cmp	r6, ip	@ D.30943, D.30944
	addhi	ip, ip, #128	@ tmp498, D.30944,
	add	r2, r6, r1	@ tmp500, D.30943, D.30942
	ldrhi	sl, [r4, #2824]	@ <variable>.bit_byte_offset_0, <variable>.bit_byte_offset_0
	rsbls	ip, r6, ip	@ D16_bit_offset_0, D.30943, D.30944
	rsbhi	ip, r6, ip	@ D16_bit_offset_0, D.30943, tmp498
	bic	r3, r2, #-33554432	@ tmp502, tmp500,
	ldrls	sl, [r4, #2824]	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0
	bfi	r3, ip, #25, #7	@ tmp502, D16_bit_offset_0,,
	str	r3, [fp, #-48]	@ tmp502,
	subhi	sl, sl, #16	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0,
	str	r3, [r5, #28]	@ tmp502,
	mov	r6, #0	@ tmp499,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ tmp507, tmp499
	bfi	r0, sl, #0, #24	@ tmp507, D17_bit_byte_offset_0,,
	str	r0, [fp, #-48]	@ tmp507,
	str	r0, [r5, #32]	@ tmp507,
	movw	r1, #:lower16:.LC13	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2828]	@ <variable>.bit_len_1, <variable>.bit_len_1
	ldr	r2, [r4, #2832]	@ <variable>.bit_offset_1, <variable>.bit_offset_1
	mov	r0, #4	@,
	bic	ip, r1, #-33554432	@ tmp514, <variable>.bit_len_1,
	movw	r1, #:lower16:.LC14	@,
	bfi	ip, r2, #25, #7	@ tmp514, <variable>.bit_offset_1,,
	str	ip, [fp, #-48]	@ tmp514,
	str	ip, [r5, #36]	@ tmp514,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2836]	@ <variable>.bit_byte_offset_1, <variable>.bit_byte_offset_1
	mov	r1, r6	@ tmp519, tmp499
	mov	r0, #4	@,
	bfi	r1, r3, #0, #24	@ tmp519, <variable>.bit_byte_offset_1,,
	str	r1, [fp, #-48]	@ tmp519,
	str	r1, [r5, #40]	@ tmp519,
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3036]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	ldr	ip, [r4, #3040]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	mov	r0, #4	@,
	ldr	r2, [r4, #3044]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	movw	r1, #:lower16:.LC16	@,
	ldr	r3, [r4, #3048]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	movt	r1, #:upper16:.LC16	@,
	strb	lr, [fp, #-48]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat00
	strb	ip, [fp, #-47]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat01
	strb	r2, [fp, #-46]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat02
	strb	r3, [fp, #-45]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat03
	ldr	r3, [fp, #-48]	@ D32.596, D32
	str	r3, [r5, #44]	@ D32.596,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3052]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	ldr	ip, [r4, #3056]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	mov	r0, #4	@,
	ldr	r2, [r4, #3060]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	movw	r1, #:lower16:.LC17	@,
	ldr	r3, [r4, #3064]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	movt	r1, #:upper16:.LC17	@,
	strb	lr, [fp, #-48]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat10
	strb	ip, [fp, #-47]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat11
	strb	r2, [fp, #-46]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat12
	strb	r3, [fp, #-45]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat13
	ldr	r3, [fp, #-48]	@ D32.600, D32
	str	r3, [r5, #48]	@ D32.600,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3068]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	ldr	ip, [r4, #3072]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3076]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	movw	r1, #:lower16:.LC18	@,
	ldr	r3, [r4, #3080]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	movt	r1, #:upper16:.LC18	@,
	strb	lr, [fp, #-48]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta0
	strb	ip, [fp, #-47]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta1
	strb	r2, [fp, #-46]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta2
	strb	r3, [fp, #-45]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta3
	ldr	r3, [fp, #-48]	@ D32.605, D32
	str	r3, [r5, #52]	@ D32.605,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [r4, #3084]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	ldr	ip, [r4, #3088]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3092]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	movw	r1, #:lower16:.LC19	@,
	ldr	r3, [r4, #3096]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	movt	r1, #:upper16:.LC19	@,
	strb	lr, [fp, #-48]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta0
	strb	ip, [fp, #-47]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta1
	strb	r2, [fp, #-46]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta2
	strb	r3, [fp, #-45]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta3
	ldr	r3, [fp, #-48]	@ D32.609, D32
	str	r3, [r5, #56]	@ D32.609,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3104]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	ldr	r3, [r4, #3112]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	mov	r0, #4	@,
	ldr	lr, [r4, #3100]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [r4, #3108]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	movt	r1, #:upper16:.LC20	@,
	strb	ip, [fp, #-47]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_1
	strb	r3, [fp, #-45]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_3
	strb	lr, [fp, #-48]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_0
	strb	r2, [fp, #-46]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_2
	ldr	lr, [fp, #-48]	@ D32.613, D32
	str	lr, [r5, #60]	@ D32.613,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3136]	@ D32.458, <variable>.SegIdAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r2, [fp, #-48]	@ D32.458, D32
	str	r2, [r5, #64]	@ D32.458,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r3, [fp, #-48]	@ <variable>.image_curr_rcn_addr, <variable>.curr_rcn_addr
	str	r3, [r5, #92]	@ <variable>.image_curr_rcn_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3120]	@ <variable>.image_alt_ref_addr, <variable>.image_alt_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	ip, [fp, #-48]	@ <variable>.image_alt_ref_addr, <variable>.alt_ref_addr
	str	ip, [r5, #96]	@ <variable>.image_alt_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3124]	@ <variable>.image_gld_ref_addr, <variable>.image_gld_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	str	r2, [fp, #-48]	@ <variable>.image_gld_ref_addr, <variable>.golden_ref_addr
	str	r2, [r5, #100]	@ <variable>.image_gld_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	r3, [fp, #-48]	@ <variable>.image_last_ref_addr, <variable>.last_ref_addr
	str	r3, [r5, #104]	@ <variable>.image_last_ref_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	bic	r2, ip, #15	@ tmp603, <variable>.SedTopAddr,
	str	r2, [fp, #-48]	@ tmp603, <variable>.sed_top_addr
	str	r2, [r5, #108]	@ tmp603,
	movt	r1, #:upper16:.LC26	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC27	@,
	bic	ip, r3, #15	@ tmp609, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp609, <variable>.pmv_top_addr
	str	ip, [r5, #112]	@ tmp609,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bic	r3, r2, #15	@ tmp615, <variable>.RcnTopAddr,
	str	r3, [fp, #-48]	@ tmp615, <variable>.rcn_top_addr
	str	r3, [r5, #116]	@ tmp615,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1124]	@ <variable>.Vp8TabAddr, <variable>.Vp8TabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bic	r2, ip, #15	@ tmp621, <variable>.Vp8TabAddr,
	str	r2, [fp, #-48]	@ tmp621, <variable>.tab_addr
	str	r2, [r5, #120]	@ tmp621,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, D32
	bl	MEM_Phy2Vir	@
	mov	r1, r4	@, pVp8DecParam
	mov	r2, #2752	@,
	bl	memcpy	@
	ldr	r3, [r7, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bic	ip, r3, #15	@ tmp632, <variable>.DblkTopAddr,
	str	ip, [fp, #-48]	@ tmp632, <variable>.dblk_top_addr
	str	ip, [r5, #124]	@ tmp632,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r8	@, pMsgBase
	bl	MEM_Vir2Phy	@
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	add	r2, r0, #256	@ D32.469,,
	str	r2, [fp, #-48]	@ D32.469, D32
	str	r2, [r5, #216]	@ D32.469,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2844]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2876]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #64	@,
	bic	r3, r0, #-33554432	@ tmp641, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp641, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp641,
	str	r3, [r5, #220]	@ tmp641,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2908]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp644, tmp499
	mov	r2, #65	@,
	bfi	r3, ip, #0, #24	@ tmp644, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp644,
	str	r3, [r5, #224]	@ tmp644,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2940]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2972]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #66	@,
	bic	ip, r0, #-33554432	@ tmp651, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp651, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp651,
	str	ip, [r5, #228]	@ tmp651,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3004]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp654, tmp499
	mov	r2, #67	@,
	bfi	ip, r3, #0, #24	@ tmp654, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp654,
	str	ip, [r5, #232]	@ tmp654,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2848]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2880]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #68	@,
	bic	r3, r0, #-33554432	@ tmp661, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp661, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp661,
	str	r3, [r5, #236]	@ tmp661,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2912]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp664, tmp499
	mov	r2, #69	@,
	bfi	r3, ip, #0, #24	@ tmp664, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp664,
	str	r3, [r5, #240]	@ tmp664,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2944]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2976]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #70	@,
	bic	ip, r0, #-33554432	@ tmp671, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp671, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp671,
	str	ip, [r5, #244]	@ tmp671,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3008]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp674, tmp499
	mov	r2, #71	@,
	bfi	ip, r3, #0, #24	@ tmp674, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp674,
	str	ip, [r5, #248]	@ tmp674,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2852]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2884]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #72	@,
	bic	r3, r0, #-33554432	@ tmp681, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp681, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp681,
	str	r3, [r5, #252]	@ tmp681,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2916]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp684, tmp499
	mov	r2, #73	@,
	bfi	r3, ip, #0, #24	@ tmp684, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp684,
	str	r3, [r5, #256]	@ tmp684,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2948]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2980]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #74	@,
	bic	ip, r0, #-33554432	@ tmp691, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp691, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp691,
	str	ip, [r5, #260]	@ tmp691,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3012]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp694, tmp499
	mov	r2, #75	@,
	bfi	ip, r3, #0, #24	@ tmp694, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp694,
	str	ip, [r5, #264]	@ tmp694,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2856]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2888]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #76	@,
	bic	r3, r0, #-33554432	@ tmp701, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp701, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp701,
	str	r3, [r5, #268]	@ tmp701,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2920]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp704, tmp499
	mov	r2, #77	@,
	bfi	r3, ip, #0, #24	@ tmp704, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp704,
	str	r3, [r5, #272]	@ tmp704,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2952]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2984]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #78	@,
	bic	ip, r0, #-33554432	@ tmp711, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp711, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp711,
	str	ip, [r5, #276]	@ tmp711,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3016]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp714, tmp499
	mov	r2, #79	@,
	bfi	ip, r3, #0, #24	@ tmp714, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp714,
	str	ip, [r5, #280]	@ tmp714,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2860]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2892]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #80	@,
	bic	r3, r0, #-33554432	@ tmp721, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp721, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp721,
	str	r3, [r5, #284]	@ tmp721,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2924]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp724, tmp499
	mov	r2, #81	@,
	bfi	r3, ip, #0, #24	@ tmp724, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp724,
	str	r3, [r5, #288]	@ tmp724,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2956]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2988]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #82	@,
	bic	ip, r0, #-33554432	@ tmp731, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp731, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp731,
	str	ip, [r5, #292]	@ tmp731,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3020]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp734, tmp499
	mov	r2, #83	@,
	bfi	ip, r3, #0, #24	@ tmp734, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp734,
	str	ip, [r5, #296]	@ tmp734,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2864]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2896]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #84	@,
	bic	r3, r0, #-33554432	@ tmp741, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp741, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp741,
	str	r3, [r5, #300]	@ tmp741,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2928]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp744, tmp499
	mov	r2, #85	@,
	bfi	r3, ip, #0, #24	@ tmp744, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp744,
	str	r3, [r5, #304]	@ tmp744,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2960]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2992]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #86	@,
	bic	ip, r0, #-33554432	@ tmp751, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp751, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp751,
	str	ip, [r5, #308]	@ tmp751,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3024]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp754, tmp499
	mov	r2, #87	@,
	bfi	ip, r3, #0, #24	@ tmp754, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp754,
	str	ip, [r5, #312]	@ tmp754,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2868]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2900]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #88	@,
	bic	r3, r0, #-33554432	@ tmp761, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp761, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp761,
	str	r3, [r5, #316]	@ tmp761,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2932]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp764, tmp499
	mov	r2, #89	@,
	bfi	r3, ip, #0, #24	@ tmp764, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp764,
	str	r3, [r5, #320]	@ tmp764,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2964]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #2996]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #90	@,
	bic	ip, r0, #-33554432	@ tmp771, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp771, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp771,
	str	ip, [r5, #324]	@ tmp771,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3028]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r6	@ tmp774, tmp499
	mov	r2, #91	@,
	bfi	ip, r3, #0, #24	@ tmp774, <variable>.bitn_byte_offset_1,,
	str	ip, [fp, #-48]	@ tmp774,
	str	ip, [r5, #328]	@ tmp774,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2872]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r1, [r4, #2904]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	mov	r2, #92	@,
	bic	r3, r0, #-33554432	@ tmp781, <variable>.bitn_len_0,
	mov	r0, #4	@,
	bfi	r3, r1, #25, #7	@ tmp781, <variable>.bitn_offset_0,,
	str	r3, [fp, #-48]	@ tmp781,
	str	r3, [r5, #332]	@ tmp781,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2936]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	r3, r6	@ tmp784, tmp499
	mov	r2, #93	@,
	bfi	r3, ip, #0, #24	@ tmp784, <variable>.bitn_byte_offset_0,,
	str	r3, [fp, #-48]	@ tmp784,
	str	r3, [r5, #336]	@ tmp784,
	mov	r0, #4	@,
	ldr	r3, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #2968]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r1, [r4, #3000]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	mov	r2, #94	@,
	bic	ip, r0, #-33554432	@ tmp791, <variable>.bitn_len_1,
	mov	r0, #4	@,
	bfi	ip, r1, #25, #7	@ tmp791, <variable>.bitn_offset_1,,
	str	ip, [fp, #-48]	@ tmp791,
	str	ip, [r5, #340]	@ tmp791,
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3032]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	r3, r6	@ tmp794, tmp499
	mov	r0, #4	@,
	bfi	r3, r2, #0, #24	@ tmp794, <variable>.bitn_byte_offset_1,,
	str	r3, [fp, #-48]	@ tmp794,
	str	r3, [r5, #344]	@ tmp794,
	movw	r1, #:lower16:.LC32	@,
	mov	r2, #95	@,
	movt	r1, #:upper16:.LC32	@,
	ldr	r3, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.30851, tmp499
.L5:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L10:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #273	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30851,
	b	.L5	@
	.fnend
	.size	VP8HAL_V200R004_CfgDnMsg, .-VP8HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP8HAL_V200R004_CfgReg
	.type	VP8HAL_V200R004_CfgReg, %function
VP8HAL_V200R004_CfgReg:
	.fnstart
.LFB1357:
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
	mov	r0, #0	@ tmp171,
	mov	r7, r1	@ pHwMem, pHwMem
	str	r0, [fp, #-40]	@ tmp171, D32
	bls	.L27	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30685,
.L14:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L27:
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L29	@,
.L15:
	ldr	sl, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	movw	r6, #1148	@ tmp187,
	ldr	r0, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r4, #:lower16:g_HwMem	@ tmp346,
	mul	r6, r6, r8	@ tmp186, tmp187, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp346,
	mul	lr, r0, sl	@ tmp178, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	mov	sl, #0	@ tmp177,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	sub	ip, lr, #1	@ tmp181, tmp178,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, ip, #-16777216	@ tmp184, tmp181,
	bic	r2, r3, #15728640	@ tmp184, tmp184,
	bfi	r2, sl, #31, #1	@ tmp184, tmp177,,
	str	r2, [fp, #-40]	@ tmp184,
	str	r2, [lr, #8]	@ tmp184,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #2792]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	r3, #536870924	@ tmp197,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	ip, r1, lsr #6	@ tmp195, <variable>.ddr_stride,
	movw	r1, #:lower16:.LC36	@,
	bfi	r3, ip, #4, #10	@ tmp197, tmp195,,
	movt	r1, #:upper16:.LC36	@,
	orr	ip, r3, #49152	@ tmp202, tmp197,
	bfi	ip, sl, #16, #12	@ tmp202, tmp177,,
	orr	r3, ip, #536870912	@ tmp206, tmp202,
	bfi	r3, r2, #30, #1	@ tmp206, <variable>.Compress_en,,
	orr	ip, r3, #-2147483648	@ tmp207, tmp206,
	str	ip, [fp, #-40]	@ tmp207,
	str	ip, [lr, #12]	@ tmp207,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bic	r2, r3, #15	@ tmp219, <variable>.MsgSlotAddr,
	str	r2, [fp, #-40]	@ tmp219, <variable>.av_msg_addr
	str	r2, [ip, #16]	@ tmp219,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bic	r2, r3, #15	@ tmp230, <variable>.MsgSlotAddr,
	str	r2, [fp, #-40]	@ tmp230, <variable>.va_msg_addr
	str	r2, [ip, #20]	@ tmp230,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #2812]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	str	r3, [fp, #-40]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	str	r3, [r2, #24]	@ <variable>.stream_base_addr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bic	r3, ip, #15	@ D32.424, <variable>.PpfdBufAddr,
	str	r3, [fp, #-40]	@ D32.424, D32
	str	r3, [r2, #128]	@ D32.424,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #1104]	@ D32.425, <variable>.PpfdBufLen
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	str	ip, [fp, #-40]	@ D32.425, D32
	str	ip, [r2, #132]	@ D32.425,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r0, #120	@ <variable>.pic_width_in_mb,
	strhi	sl, [fp, #-40]	@ tmp177, D32
	movls	r0, #65536	@ tmp265,
	strls	r0, [fp, #-40]	@ tmp265, D32
	cmp	r8, #1	@ VdhId,
	beq	.L20	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp267,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp267,
.L28:
	ldr	lr, [r3, #0]	@ s_RegPhyBaseAddr_1,
	ldr	r6, [fp, #-40]	@ D32, D32
	orr	r1, r0, r6	@ tmp276,, D32
	add	r0, lr, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	movw	r1, #1148	@ tmp284,
	mul	r6, r1, r8	@ tmp283, tmp284, VdhId
	ldr	r0, [r5, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bic	r2, r0, #15	@ tmp281, <variable>.image_curr_rcn_addr,
	str	r2, [fp, #-40]	@ tmp281, <variable>.ystaddr_1d
	mov	r0, #3	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #96]	@ tmp281,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r5, #2792]	@ ystride, <variable>.ddr_stride
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	r6, [fp, #-40]	@ ystride, <variable>.ystride_1d
	str	r6, [r3, #100]	@ ystride,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r3, #2047	@ tmp301,
	mov	r2, r2, asl #4	@ D.30765, <variable>.pic_width_in_mb,
	sub	r1, r2, #1	@ tmp300, D.30765,
	cmp	r1, r3	@ tmp300, tmp301
	bhi	.L30	@,
.L22:
	mov	r7, #16	@ level,
.L24:
	ldr	r0, [r5, #2788]	@ temp.947, <variable>.pic_height_in_mb
	movw	r2, #1148	@ tmp324,
	mul	r8, r2, r8	@ tmp323, tmp324, VdhId
	add	r1, r0, #1	@ tmp317, temp.947,
	mov	r3, r0, asl #4	@ tmp312, temp.947,
	mov	r0, #3	@,
	add	ip, r3, #31	@ tmp313, tmp312,
	mov	lr, r1, lsr #1	@ tmp318, tmp317,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	mov	r2, ip, lsr #5	@ tmp314, tmp313,
	mul	ip, r6, lr	@ tmp319, ystride, tmp318
	mov	r3, r2, asl #4	@ tmp315, tmp314,
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mla	r6, r7, r3, ip	@ tmp320, level, tmp315, tmp319
	mov	r6, r6, asl #1	@ tmp321, tmp320,
	str	r6, [fp, #-40]	@ tmp321, <variable>.uvoffset_1d
	str	r6, [lr, #104]	@ tmp321,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ D.30685,
	mov	r3, r2, asl #4	@ tmp329, <variable>.pic_height_in_mb,
	add	r1, r3, #31	@ tmp331, tmp329,
	bic	r2, r1, #31	@ tmp333, tmp331,
	mvn	r1, #0	@ tmp344,
	mul	r7, r7, r2	@ D32.433, level, tmp333
	str	r7, [ip, #108]	@ D32.433,
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #32]	@ tmp344,
	b	.L14	@
.L30:
	sub	r0, r2, #2048	@ tmp302, D.30765,
	sub	ip, r0, #1	@ tmp302, tmp302,
	cmp	ip, r3	@ tmp302, tmp301
	movls	r7, #32	@ level,
	bls	.L24	@,
	sub	lr, r2, #4096	@ tmp305, D.30765,
	sub	r1, lr, #1	@ tmp305, tmp305,
	cmp	r1, r3	@ tmp305, tmp301
	movls	r7, #48	@ level,
	bls	.L24	@,
	sub	ip, r2, #6144	@ tmp308, D.30765,
	sub	r2, ip, #1	@ tmp308, tmp308,
	cmp	r2, r3	@ tmp308, tmp301
	movls	r7, #64	@ level,
	bls	.L24	@,
	b	.L22	@
.L20:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp273,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp273,
	b	.L28	@
.L29:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.30689,
	strne	r1, [r7, #0]	@ D.30689, <variable>.pVdmRegVirAddr
	bne	.L15	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30685,
	b	.L14	@
	.fnend
	.size	VP8HAL_V200R004_CfgReg, .-VP8HAL_V200R004_CfgReg
	.align	2
	.global	VP8HAL_V200R004_StartDec
	.type	VP8HAL_V200R004_StartDec, %function
VP8HAL_V200R004_StartDec:
	.fnstart
.LFB1358:
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
	bls	.L40	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30815,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	ldr	r3, [r0, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bhi	.L41	@,
	ldr	r0, [r0, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #512	@ <variable>.pic_height_in_mb,
	bhi	.L42	@,
	movw	r8, #1148	@ tmp149,
	movw	r7, #:lower16:g_HwMem	@ tmp150,
	mul	r8, r8, r1	@ tmp148, tmp149, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp150,
	add	r6, r7, r8	@ pHwMem, tmp150, tmp148
	ldr	r1, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L43	@,
.L37:
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	mov	r0, r5	@, pVp8DecParam
	bl	VP8HAL_V200R004_CfgReg	@
	mov	r0, r5	@, pVp8DecParam
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VP8HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.30815,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L43:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.30826,
	strne	r2, [r7, r8]	@ D.30826, <variable>.pVdmRegVirAddr
	bne	.L37	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30815,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L41:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #240	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC46	@,
	movt	r3, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30815,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L42:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #241	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC46	@,
	movt	r3, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30815,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VP8HAL_V200R004_StartDec, .-VP8HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC2:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC11:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC12:
	.ascii	"D16 = 0x%x\012\000"
.LC13:
	.ascii	"D17 = 0x%x\012\000"
.LC14:
	.ascii	"D18 = 0x%x\012\000"
.LC15:
	.ascii	"D19 = 0x%x\012\000"
.LC16:
	.ascii	"D20 = 0x%x\012\000"
.LC17:
	.ascii	"D21 = 0x%x\012\000"
.LC18:
	.ascii	"D22 = 0x%x\012\000"
.LC19:
	.ascii	"D23 = 0x%x\012\000"
.LC20:
	.ascii	"D24 = 0x%x\012\000"
.LC21:
	.ascii	"D25 = 0x%x\012\000"
.LC22:
	.ascii	"D32 = 0x%x\012\000"
.LC23:
	.ascii	"D33 = 0x%x\012\000"
.LC24:
	.ascii	"D34 = 0x%x\012\000"
.LC25:
	.ascii	"D35 = 0x%x\012\000"
.LC26:
	.ascii	"D36 = 0x%x\012\000"
.LC27:
	.ascii	"D37 = 0x%x\012\000"
.LC28:
	.ascii	"D38 = 0x%x\012\000"
.LC29:
	.ascii	"D39 = 0x%x\012\000"
.LC30:
	.ascii	"D40 = 0x%x\012\000"
.LC31:
	.ascii	"D63 = 0x%x\012\000"
.LC32:
	.ascii	"D%d = 0x%x\012\000"
.LC33:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC34:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC35:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC37:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC38:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC39:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC40:
	.ascii	"PPFD_BUF_ADDR = 0x%x\012\000"
	.space	2
.LC41:
	.ascii	"PPFD_BUF_LEN = 0x%x\012\000"
	.space	3
.LC42:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC43:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC44:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC45:
	.ascii	"VdhId is wrong! VP8HAL_V200R003_StartDec\012\000"
	.space	2
.LC46:
	.ascii	"picture width out of range\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
