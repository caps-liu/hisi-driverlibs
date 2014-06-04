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
	.file	"mpeg4.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.o -O2 -Wall
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
	.global	log2bin
	.type	log2bin, %function
log2bin:
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
	cmp	r0, #0	@ value
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r3, #0	@ n,
.L4:
	add	r3, r3, #1	@ tmp142, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp142
	bne	.L4	@,
	sxth	r0, r3	@ prephitmp.645, n
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	log2bin, .-log2bin
	.global	__aeabi_idiv
	.align	2
	.global	MP4_GetGMCparam
	.type	MP4_GetGMCparam, %function
MP4_GetGMCparam:
	.fnstart
.LFB1361:
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
	ldrb	r4, [r0, #65]	@ zero_extendqisi2	@ D.35406, <variable>.syn_vol.sprite_warping_accuracy
	mov	r9, #2	@ tmp205,
	mov	r6, r1	@ p_gmc, p_gmc
	mov	r2, r9, asl r4	@, tmp205,
	mov	r3, r0	@ p_syntax_des, p_syntax_des
	mov	r0, #16	@,
	str	r2, [fp, #-60]	@, %sfp
	mov	r1, r2	@,
	rsb	r4, r4, #3	@, D.35406,
	str	r3, [fp, #-104]	@,
	str	r4, [fp, #-88]	@, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-104]	@,
	ldr	sl, [r3, #708]	@ D.35408, <variable>.image_width
	ldr	r9, [r3, #704]	@ D.35410, <variable>.image_height
	cmp	sl, #1	@ D.35408,
	mov	r8, sl, asl #4	@ tmp209, D.35408,
	str	r8, [r6, #8]	@ tmp209, <variable>.sW
	ldr	r7, [r3, #704]	@ <variable>.image_height, <variable>.image_height
	movle	r4, #0	@ alpha,
	mov	r5, r7, asl #4	@ tmp211, <variable>.image_height,
	str	r5, [r6, #12]	@ tmp211, <variable>.sH
	ldrb	r1, [r3, #65]	@ zero_extendqisi2	@ <variable>.syn_vol.sprite_warping_accuracy, <variable>.syn_vol.sprite_warping_accuracy
	str	r1, [r6, #4]	@ <variable>.syn_vol.sprite_warping_accuracy, <variable>.accuracy
	mov	r2, r0	@ r,
	ldrb	r0, [r3, #64]	@ zero_extendqisi2	@, <variable>.syn_vol.sprite_warping_points
	str	r0, [fp, #-68]	@, %sfp
	str	r0, [r6, #0]	@, <variable>.num_wp
	ldr	r1, [r3, #684]	@, <variable>.y
	ldr	ip, [r3, #680]	@ sprite_ref$0$0.719, <variable>.x
	str	r1, [fp, #-52]	@, %sfp
	ldr	r5, [r3, #692]	@, <variable>.y
	ldr	r0, [r3, #688]	@ D.35420, <variable>.x
	str	r5, [fp, #-48]	@, %sfp
	ldr	r7, [r3, #696]	@, <variable>.x
	str	r7, [fp, #-56]	@, %sfp
	movle	r7, #1	@ w2,
	ldr	lr, [r3, #700]	@ D.35423, <variable>.y
	ble	.L10	@,
	mov	r4, #0	@ alpha,
	mov	r1, #1	@ tmp366,
.L11:
	add	r4, r4, #1	@ alpha, alpha,
	mov	r7, r1, asl r4	@ w2, tmp366,
	cmp	sl, r7	@ D.35408, w2
	bgt	.L11	@,
.L10:
	cmp	r9, #1	@ D.35410,
	movgt	r5, #0	@ beta,
	movgt	r1, #1	@ tmp365,
	ble	.L44	@,
.L14:
	add	r5, r5, #1	@ beta, beta,
	mov	r8, r1, asl r5	@ h2, tmp365,
	cmp	r9, r8	@ D.35410, h2
	bgt	.L14	@,
	mov	r1, r8, asl #4	@, h2,
	str	r1, [fp, #-92]	@, %sfp
.L13:
	ldrb	r3, [r3, #12]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r3, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L45	@,
	ldr	r3, [fp, #-52]	@, %sfp
	add	r0, r0, ip	@ tmp220, D.35420, sprite_ref$0$0.719
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r0, sl, asl #1	@, tmp222, tmp220, D.35408,
	add	lr, lr, r3	@ tmp225, D.35423,
	add	r1, r1, r3	@,,
	str	r1, [fp, #-48]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	add	lr, lr, r9, asl #1	@, tmp227, tmp225, D.35410,
	add	r3, r1, ip	@,, sprite_ref$0$0.719
	ldr	r1, [fp, #-60]	@, %sfp
	str	r3, [fp, #-56]	@, %sfp
	mov	r3, r1, asr #1	@ D.35459,,
	ldr	r1, [fp, #-52]	@, %sfp
	mul	lr, r3, lr	@, D.35459, tmp227
	mul	r1, r1, r3	@,, D.35459
	mul	r0, r3, r0	@ sprite_ref$1$0, D.35459, tmp222
	mul	ip, ip, r3	@ sprite_ref$0$0.719, sprite_ref$0$0.719, D.35459
	str	lr, [fp, #-84]	@, %sfp
	str	r1, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-48]	@, %sfp
	mul	r1, r1, r3	@,, D.35459
	str	r1, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	mul	r1, r1, r3	@,, D.35459
	str	r1, [fp, #-80]	@, %sfp
.L16:
	rsb	r3, sl, sl, asl #28	@, tmp231, D.35408, D.35408,
	rsb	lr, r7, sl	@, w2, D.35408
	mul	r1, r2, ip	@, r, sprite_ref$0$0.719
	mov	r3, r3, asl #4	@ tmp232, tmp231,
	str	lr, [fp, #-64]	@, %sfp
	mla	r0, r2, r0, r3	@ tmp233, r, sprite_ref$1$0, tmp232
	str	r2, [fp, #-96]	@,
	str	ip, [fp, #-100]	@,
	mul	r3, lr, r1	@ tmp235,,
	str	r1, [fp, #-48]	@, %sfp
	mov	r1, sl	@, D.35408
	mla	r0, r7, r0, r3	@ D.35496, w2, tmp233, tmp235
	cmp	r0, #0	@ D.35496,
	movgt	r3, sl, asr #1	@, D.35408,
	movle	lr, sl, asr #1	@, D.35408,
	addgt	r0, r0, r3	@ iftmp.418, D.35496,
	rsble	r0, lr, r0	@ iftmp.418,, D.35496
	strgt	r3, [fp, #-76]	@, %sfp
	strle	lr, [fp, #-76]	@, %sfp
	bl	__aeabi_idiv	@
	ldr	r2, [fp, #-96]	@,
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	lr, [fp, #-72]	@, %sfp
	mul	r3, r2, r7	@ tmp242, r, w2
	str	r2, [fp, #-96]	@,
	mul	r1, r2, r1	@, r,
	mul	ip, lr, r3	@ tmp243,, tmp242
	ldr	lr, [fp, #-64]	@, %sfp
	str	r1, [fp, #-56]	@, %sfp
	mla	r3, lr, r1, ip	@ D.35515,,, tmp243
	ldr	ip, [fp, #-100]	@,
	cmp	r3, #0	@ D.35515,
	str	ip, [fp, #-100]	@,
	ldrgt	r1, [fp, #-76]	@, %sfp
	ldrle	lr, [fp, #-76]	@, %sfp
	add	r0, r0, r7, asl #4	@,,, w2,
	str	r0, [fp, #-72]	@, %sfp
	addgt	r0, r1, r3	@ iftmp.419,, D.35515
	rsble	r0, lr, r3	@ iftmp.419,, D.35515
	mov	r1, sl	@, D.35408
	bl	__aeabi_idiv	@
	ldr	r2, [fp, #-96]	@,
	ldr	r1, [fp, #-80]	@, %sfp
	rsb	r3, r8, r9	@ D.35523, h2, D.35410
	mul	sl, r2, r8	@ tmp248, r, h2
	mul	ip, r1, sl	@ tmp249,, tmp248
	ldr	sl, [fp, #-56]	@, %sfp
	str	r0, [fp, #-64]	@, %sfp
	ldr	r0, [fp, #-48]	@, %sfp
	mla	r1, r3, r0, ip	@ D.35530, D.35523,, tmp249
	mov	r0, r9, asr #1	@ prephitmp.709, D.35410,
	mul	r3, r3, sl	@ tmp257, D.35523,
	ldr	sl, [fp, #-84]	@, %sfp
	cmp	r1, #0	@ D.35530,
	ldr	ip, [fp, #-100]	@,
	addgt	r1, r1, r0	@, D.35530, prephitmp.709
	rsble	r1, r0, r1	@, prephitmp.709, D.35530
	str	r1, [fp, #-48]	@, %sfp
	rsb	r1, r9, r9, asl #28	@, tmp253, D.35410, D.35410,
	mov	r1, r1, asl #4	@ tmp254, tmp253,
	mla	r1, r2, sl, r1	@ tmp255, r,, tmp254
	ldr	sl, [fp, #-68]	@, %sfp
	mla	r3, r8, r1, r3	@ D.35546, h2, tmp255, tmp257
	cmp	r3, #0	@ D.35546,
	addgt	r3, r0, r3	@ iftmp.421, prephitmp.709, D.35546
	rsble	r3, r0, r3	@ iftmp.421, prephitmp.709, D.35546
	mov	r0, sl	@ D.35417,
	mov	r1, r0, asr #31	@ D.35417
	cmp	r1, #0	@ D.35417,
	cmpeq	r0, #3	@ D.35417,
	bls	.L46	@,
.L25:
	ldr	r5, [r6, #16]	@ prephitmp.688, <variable>.dU
	mov	r4, #0	@ shift$0,
	ldr	r8, [r6, #32]	@ sprite_ref$0$0.708, <variable>.Uo
	mov	r3, r4	@ shift$1, shift$0
.L31:
	ldr	sl, [fp, #-60]	@, %sfp
	mov	ip, sl, asl r4	@ a.710,,
	cmp	r5, ip	@ prephitmp.688, a.710
	beq	.L35	@,
	ldr	r2, [r6, #20]	@ <variable>.dU, <variable>.dU
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
.L33:
	rsb	r4, r4, #16	@ shift_y, shift$0,
	ldr	ip, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	sl, r0, asl r4	@ tmp361, <variable>.dV,
	ldr	r5, [r6, #40]	@ <variable>.Uco, <variable>.Uco
	ldr	r7, [r6, #44]	@ <variable>.Vco, <variable>.Vco
	rsb	r3, r3, #16	@ shift_c, shift$1,
	ldr	r0, [r6, #16]	@ <variable>.dU, <variable>.dU
	mov	ip, ip, asl r4	@ tmp349, <variable>.Vo,
	mov	r8, r8, asl r4	@ tmp347, sprite_ref$0$0.708,
	str	ip, [r6, #36]	@ tmp349, <variable>.Vo
	mov	r7, r7, asl r3	@ tmp353, <variable>.Vco,
	mov	ip, r5, asl r3	@ tmp351, <variable>.Uco,
	mov	r0, r0, asl r4	@ tmp355, <variable>.dU,
	mov	r3, r2, asl r4	@ tmp357, <variable>.dU,
	str	sl, [r6, #28]	@ tmp361, <variable>.dV
	mov	r4, r1, asl r4	@ tmp359, <variable>.dV,
	str	r8, [r6, #32]	@ tmp347, <variable>.Uo
	str	r7, [r6, #44]	@ tmp353, <variable>.Vco
	str	ip, [r6, #40]	@ tmp351, <variable>.Uco
	str	r0, [r6, #16]	@ tmp355, <variable>.dU
	str	r3, [r6, #20]	@ tmp357, <variable>.dU
	str	r4, [r6, #24]	@ tmp359, <variable>.dV
.L36:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L46:
	cmp	r0, #3	@ D.35417,
	ldrls	pc, [pc, r0, asl #2]	@ D.35417
	b	.L25	@
.L30:
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
.L29:
	ldr	r0, [fp, #-88]	@, %sfp
	rsb	sl, r2, #0	@, r
	str	sl, [fp, #-68]	@, %sfp
	add	lr, r4, r0	@ tmp297, alpha,
	add	r1, lr, r5	@ tmp298, tmp297, beta
	cmp	r5, r4	@ beta, alpha
	movge	r5, r4	@ min_ab, alpha
	mul	r4, sl, ip	@,, sprite_ref$0$0.719
	mov	lr, #1	@,
	mov	sl, r8, asr r5	@ h3, h2,
	str	r4, [fp, #-56]	@, %sfp
	rsb	r4, r5, r1	@ shift$0, min_ab, tmp298
	sub	r0, r4, #1	@ tmp299, shift$0,
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r8, lr, asl r0	@ D.35628,,
	ldr	r0, [fp, #-72]	@, %sfp
	mov	r5, r7, asr r5	@, w2,
	add	lr, r0, r1	@ tmp303,,
	ldr	r0, [fp, #-52]	@, %sfp
	add	r1, r8, r0, asl r4	@, tmp302, D.35628,,
	str	r1, [r6, #36]	@ tmp302, <variable>.Vo
	ldr	r0, [fp, #-48]	@, %sfp
	add	r8, r8, ip, asl r4	@, sprite_ref$0$0.708, D.35628, sprite_ref$0$0.719,
	mov	r1, r9	@, D.35410
	str	r8, [r6, #32]	@ sprite_ref$0$0.708, <variable>.Uo
	str	r5, [fp, #-48]	@, %sfp
	str	r2, [fp, #-96]	@,
	mul	r5, sl, lr	@ prephitmp.688, h3, tmp303
	str	r3, [fp, #-104]	@,
	str	ip, [fp, #-100]	@,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-96]	@,
	rsb	r1, r7, r7, asl #28	@, tmp316, w2, w2,
	add	lr, r4, #1	@, shift$0,
	str	lr, [fp, #-76]	@, %sfp
	mov	r3, ip, asl #1	@ tmp309, r,
	ldr	ip, [fp, #-52]	@, %sfp
	mul	r2, r7, r3	@, w2, tmp309
	mov	r3, r1, asl #4	@ tmp317, tmp316,
	ldr	r1, [fp, #-68]	@, %sfp
	str	r2, [fp, #-72]	@, %sfp
	ldr	lr, [fp, #-72]	@, %sfp
	mul	r2, r1, ip	@ temp.715,,
	ldr	ip, [fp, #-64]	@, %sfp
	mul	r7, sl, lr	@, h3,
	mov	r1, r9	@, D.35410
	mul	r9, sl, r3	@ tmp318, h3, tmp317
	add	r3, ip, r2	@,, temp.715
	str	r3, [fp, #-64]	@, %sfp
	mov	lr, #1	@,
	ldr	r3, [fp, #-64]	@, %sfp
	str	r7, [fp, #-68]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-92]	@, %sfp
	add	r9, r9, lr, asl r7	@, D.35645, tmp318,,
	ldr	r7, [fp, #-100]	@,
	ldr	lr, [fp, #-68]	@, %sfp
	add	r2, r2, ip	@ tmp324, temp.715,
	mul	sl, sl, r3	@ D.35655, h3,
	ldr	r3, [fp, #-56]	@, %sfp
	mla	ip, lr, r7, r9	@ tmp320,, sprite_ref$0$0.719, D.35645
	ldr	lr, [fp, #-104]	@,
	add	r7, r0, r3	@ tmp308,,
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, ip, r5	@ tmp321, tmp320, prephitmp.688
	mov	r0, lr	@, iftmp.421
	mul	r7, r3, r7	@ D.35643,, tmp308
	add	lr, ip, r7	@ tmp322, tmp321, D.35643
	str	lr, [r6, #40]	@ tmp322, <variable>.Uco
	str	r2, [fp, #-96]	@,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-52]	@, %sfp
	ldr	r3, [fp, #-68]	@, %sfp
	str	sl, [r6, #24]	@ D.35655, <variable>.dV
	str	r7, [r6, #20]	@ D.35643, <variable>.dU
	str	r5, [r6, #16]	@ prephitmp.688, <variable>.dU
	ldr	r7, [fp, #-96]	@,
	mla	r9, r3, ip, r9	@ tmp331,,, D.35645
	add	r3, r4, #2	@ shift$1, shift$0,
	add	sl, r9, sl	@ tmp332, tmp331, D.35655
	add	r2, r7, r0	@ tmp329, tmp324,
	ldr	r7, [fp, #-48]	@, %sfp
	mul	ip, r7, r2	@ D.35658,, tmp329
	add	r1, sl, ip	@ tmp333, tmp332, D.35658
	str	r1, [r6, #44]	@ tmp333, <variable>.Vco
	str	ip, [r6, #28]	@ D.35658, <variable>.dV
	b	.L31	@
.L28:
	ldr	r8, [fp, #-88]	@, %sfp
	rsb	r0, r7, r7, asl #28	@, tmp286, w2, w2,
	mov	sl, r2, asl #1	@ tmp280, r,
	ldr	r5, [fp, #-64]	@, %sfp
	add	r4, r4, r8	@ shift$0, alpha,
	mov	r3, r0, asl #4	@ tmp287, tmp286,
	mov	r8, #1	@ tmp276,
	sub	r0, r4, #1	@ tmp275, shift$0,
	add	r1, r4, r8	@ tmp281, shift$0,
	rsb	r2, r2, #0	@ D.35586, r
	mul	r7, r7, sl	@ D.35598, w2, tmp280
	add	r1, r3, r8, asl r1	@, D.35595, tmp287, tmp276,
	ldr	sl, [fp, #-52]	@, %sfp
	mov	r8, r8, asl r0	@ D.35577, tmp276,
	ldr	r0, [fp, #-72]	@, %sfp
	mla	r3, r2, sl, r5	@ D.35606, D.35586,,
	ldr	sl, [fp, #-64]	@, %sfp
	mla	r5, r2, ip, r0	@ prephitmp.688, D.35586, sprite_ref$0$0.719,
	ldr	r0, [fp, #-56]	@, %sfp
	rsb	r2, sl, r0	@ D.35581,,
	ldr	sl, [fp, #-52]	@, %sfp
	str	r3, [r6, #24]	@ D.35606, <variable>.dV
	str	r2, [r6, #20]	@ D.35581, <variable>.dU
	mla	r0, r7, sl, r1	@ tmp294, D.35598,, D.35595
	str	r5, [r6, #16]	@ prephitmp.688, <variable>.dU
	mla	r1, r7, ip, r1	@ tmp289, D.35598, sprite_ref$0$0.719, D.35595
	str	r5, [r6, #28]	@ prephitmp.688, <variable>.dV
	add	r0, r0, r5	@ tmp295, tmp294, prephitmp.688
	add	r7, r8, sl, asl r4	@, tmp278, D.35577,,
	add	r3, r0, r3	@ tmp296, tmp295, D.35606
	add	r8, r8, ip, asl r4	@, sprite_ref$0$0.708, D.35577, sprite_ref$0$0.719,
	add	r1, r1, r5	@ tmp290, tmp289, prephitmp.688
	str	r3, [r6, #44]	@ tmp296, <variable>.Vco
	add	sl, r1, r2	@ tmp291, tmp290, D.35581
	str	r7, [r6, #36]	@ tmp278, <variable>.Vo
	str	sl, [r6, #40]	@ tmp291, <variable>.Uco
	add	r3, r4, #2	@ shift$1, shift$0,
	str	r8, [r6, #32]	@ sprite_ref$0$0.708, <variable>.Uo
	b	.L31	@
.L27:
	ldr	r1, [fp, #-52]	@, %sfp
	and	r3, ip, #1	@ tmp267, sprite_ref$0$0.719,
	mov	r4, #0	@ tmp273,
	orr	r2, r3, ip, asr #1	@, tmp269, tmp267, sprite_ref$0$0.719,
	and	r8, r1, #1	@ tmp270,,
	str	r2, [r6, #40]	@ tmp269, <variable>.Uco
	orr	r5, r8, r1, asr #1	@, tmp272, tmp270,,
	str	ip, [r6, #32]	@ sprite_ref$0$0.719, <variable>.Uo
	str	r5, [r6, #44]	@ tmp272, <variable>.Vco
	str	r4, [r6, #24]	@ tmp273, <variable>.dV
	str	r1, [r6, #36]	@, <variable>.Vo
	ldr	r8, [fp, #-60]	@, %sfp
	str	r4, [r6, #20]	@ tmp273, <variable>.dU
	str	r8, [r6, #16]	@, <variable>.dU
	str	r8, [r6, #28]	@, <variable>.dV
.L32:
	mov	r8, ip	@ sprite_ref$0$0.708, sprite_ref$0$0.719
	ldr	ip, [fp, #-60]	@ a.710, %sfp
	mov	r4, #0	@ shift$0,
	mov	r3, r4	@ shift$1, shift$0
.L35:
	ldr	r2, [r6, #20]	@ <variable>.dU, <variable>.dU
	cmp	r2, #0	@ <variable>.dU,
	bne	.L47	@,
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	cmp	r1, #0	@ <variable>.dV,
	ldrne	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	bne	.L33	@,
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	cmp	ip, r0	@ a.710, <variable>.dV
	bne	.L33	@,
	ldr	ip, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	r8, r8, asr r4	@ tmp337, sprite_ref$0$0.708,
	ldr	r2, [r6, #40]	@ <variable>.Uco, <variable>.Uco
	mov	r5, #1	@ tmp346,
	ldr	r0, [r6, #44]	@ <variable>.Vco, <variable>.Vco
	mov	r4, ip, asr r4	@ tmp339, <variable>.Vo,
	str	r5, [r6, #0]	@ tmp346, <variable>.num_wp
	mov	ip, r2, asr r3	@ tmp341, <variable>.Uco,
	str	r8, [r6, #32]	@ tmp337, <variable>.Uo
	mov	r3, r0, asr r3	@ tmp343, <variable>.Vco,
	str	r4, [r6, #36]	@ tmp339, <variable>.Vo
	str	ip, [r6, #40]	@ tmp341, <variable>.Uco
	str	r3, [r6, #44]	@ tmp343, <variable>.Vco
	str	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r2, [fp, #-60]	@, %sfp
	str	r1, [r6, #20]	@ <variable>.dV, <variable>.dU
	str	r2, [r6, #28]	@, <variable>.dV
	str	r2, [r6, #16]	@, <variable>.dU
	b	.L36	@
.L26:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r5, #0	@ tmp261,
	mov	ip, r5	@ sprite_ref$0$0.719, tmp261
	str	r5, [r6, #32]	@ tmp261, <variable>.Uo
	str	r5, [r6, #36]	@ tmp261, <variable>.Vo
	str	r0, [r6, #16]	@, <variable>.dU
	str	r5, [r6, #40]	@ tmp261, <variable>.Uco
	str	r5, [r6, #44]	@ tmp261, <variable>.Vco
	str	r5, [r6, #20]	@ tmp261, <variable>.dU
	str	r5, [r6, #24]	@ tmp261, <variable>.dV
	str	r0, [r6, #28]	@, <variable>.dV
	b	.L32	@
.L45:
	ldr	r3, [fp, #-52]	@, %sfp
	add	r0, r0, ip	@ tmp216, D.35420, sprite_ref$0$0.719
	ldr	r1, [fp, #-48]	@, %sfp
	add	lr, lr, r3	@ tmp218, D.35423,
	add	r1, r1, r3	@,,
	str	r1, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	add	r3, r1, ip	@,, sprite_ref$0$0.719
	ldr	r1, [fp, #-60]	@, %sfp
	str	r3, [fp, #-80]	@, %sfp
	mla	lr, r9, r1, lr	@, D.35410,, tmp218
	mla	r0, sl, r1, r0	@ sprite_ref$1$0, D.35408,, tmp216
	str	lr, [fp, #-84]	@, %sfp
	b	.L16	@
.L47:
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	b	.L33	@
.L44:
	mov	r1, #16	@,
	mov	r8, #1	@ h2,
	str	r1, [fp, #-92]	@, %sfp
	mov	r5, #0	@ beta,
	b	.L13	@
	.fnend
	.size	MP4_GetGMCparam, .-MP4_GetGMCparam
	.align	2
	.global	Mp4SearchStartCode
	.type	Mp4SearchStartCode, %function
Mp4SearchStartCode:
	.fnstart
.LFB1368:
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
	cmp	r1, #4	@ CodeLen,
	movle	r0, #0	@ ofst,
	ldmlefd	sp, {fp, sp, pc}	@
	add	r1, r0, r1	@ pEnd, pCode, CodeLen
	add	r3, r0, #2	@ ptr, pCode,
.L64:
	cmp	r1, r3	@ pEnd, ptr
	bls	.L51	@,
.L65:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ byte,* ptr
	cmp	r2, #1	@ byte,
	bls	.L52	@,
	and	r2, r2, #252	@ tmp140, byte,
	cmp	r2, #128	@ tmp140,
	beq	.L53	@,
.L59:
	add	r3, r3, #3	@ ptr, ptr,
	cmp	r1, r3	@ pEnd, ptr
	bhi	.L65	@,
.L51:
	movw	ip, #:lower16:-2	@ tmp151,
	movt	ip, #:upper16:-2	@ tmp151,
	rsb	r3, r0, ip	@ tmp151, pCode, tmp151
	add	r0, r3, r1	@ ofst, tmp151, pEnd
	ldmfd	sp, {fp, sp, pc}	@
.L53:
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2	@ tmp147,
	cmp	r2, #0	@ tmp147,
	bne	.L59	@,
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2	@ tmp148,
	cmp	ip, #0	@ tmp148,
	bne	.L59	@,
	movw	r2, #:lower16:-2	@ tmp149,
	movt	r2, #:upper16:-2	@ tmp149,
	rsb	r1, r0, r2	@ tmp149, pCode, tmp149
	add	r0, r1, r3	@ ofst, tmp149, ptr
	ldmfd	sp, {fp, sp, pc}	@
.L52:
	cmp	r2, #0	@ byte,
	bne	.L55	@,
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2	@ tmp141,
	cmp	ip, #0	@ tmp141,
	addeq	r3, r3, #1	@ ptr, ptr,
	beq	.L64	@,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ tmp142,
	cmp	r2, #0	@ tmp142,
	addeq	r3, r3, #2	@ ptr, ptr,
	addne	r3, r3, #4	@ ptr, ptr,
	b	.L64	@
.L55:
	cmp	r2, #1	@ byte,
	bne	.L53	@,
	ldrb	ip, [r3, #-2]	@ zero_extendqisi2	@ tmp143,
	cmp	ip, #0	@ tmp143,
	bne	.L59	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp144,
	cmp	r2, #0	@ tmp144,
	bne	.L59	@,
	movw	ip, #:lower16:-2	@ tmp145,
	movt	ip, #:upper16:-2	@ tmp145,
	rsb	r1, r0, ip	@ tmp145, pCode, tmp145
	add	r0, r1, r3	@ ofst, tmp145, ptr
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Mp4SearchStartCode, .-Mp4SearchStartCode
	.align	2
	.global	Mp4_RecordVFMWState
	.type	Mp4_RecordVFMWState, %function
Mp4_RecordVFMWState:
	.fnstart
.LFB1381:
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
	.size	Mp4_RecordVFMWState, .-Mp4_RecordVFMWState
	.align	2
	.global	Mp4_Get_DecMode
	.type	Mp4_Get_DecMode, %function
Mp4_Get_DecMode:
	.fnstart
.LFB1385:
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
	movw	r1, #22092	@ tmp135,
	ldr	r3, [r0, r1]	@ <variable>.DecMode, <variable>.DecMode
	cmp	r3, #2	@ <variable>.DecMode,
	beq	.L77	@,
	movw	r3, #22060	@ tmp143,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ temp.806, <variable>.s32DecMode
	cmp	r3, #2	@ temp.806,
	beq	.L70	@,
.L71:
	cmp	r3, #1	@ temp.806,
	beq	.L76	@,
	cmp	r3, #4	@ temp.806,
	movwne	r3, #22092	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r3]	@ tmp151, <variable>.DecMode
	ldmnefd	sp, {fp, sp, pc}	@
.L76:
	movw	ip, #22092	@ tmp148,
	str	r3, [r0, ip]	@ temp.806, <variable>.DecMode
	ldmfd	sp, {fp, sp, pc}	@
.L77:
	movw	r3, #22060	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #2	@ <variable>.s32DecMode,
	beq	.L70	@,
	movw	r3, #22060	@ tmp143,
	movw	r1, #22600	@ tmp140,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp141,
	str	r2, [r0, r1]	@ tmp141, <variable>.IPVopErr
	ldr	r3, [ip, #8]	@ temp.806, <variable>.s32DecMode
	cmp	r3, #2	@ temp.806,
	bne	.L71	@,
.L70:
	movw	r1, #22092	@ tmp144,
	mov	r2, #2	@ tmp145,
	str	r2, [r0, r1]	@ tmp145, <variable>.DecMode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Mp4_Get_DecMode, .-Mp4_Get_DecMode
	.align	2
	.global	GetTrailingOneLen
	.type	GetTrailingOneLen, %function
GetTrailingOneLen:
	.fnstart
.LFB1386:
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
	add	r1, r0, r1	@ ptr, pCode, CodeLen
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2	@ _c_temp,
	tst	r3, #1	@ _c_temp,
	moveq	r0, #1	@ _r_bit_len,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #0	@ _r_bit_len,
.L81:
	mov	r3, r3, lsr #1	@ _c_temp, _c_temp,
	add	r0, r0, #1	@ _r_bit_len, _r_bit_len,
	tst	r3, #1	@ _c_temp,
	bne	.L81	@,
	cmp	r0, #0	@ _r_bit_len,
	addne	r0, r0, #1	@ _r_bit_len, _r_bit_len,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetTrailingOneLen, .-GetTrailingOneLen
	.align	2
	.global	MP4_GetPacketState
	.type	MP4_GetPacketState, %function
MP4_GetPacketState:
	.fnstart
.LFB1395:
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
	movw	r1, #19972	@ tmp136,
	ldr	r3, [r0, r1]	@ <variable>.IsWaitToDecFlag, <variable>.IsWaitToDecFlag
	cmp	r3, #1	@ <variable>.IsWaitToDecFlag,
	mvnne	r0, #0	@,,
	moveq	r0, #3	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4_GetPacketState, .-MP4_GetPacketState
	.align	2
	.global	MP4_Check_StreamType
	.type	MP4_Check_StreamType, %function
MP4_Check_StreamType:
	.fnstart
.LFB1403:
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
	movw	r3, #15864	@ tmp136,
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ tmp138,
	tst	r2, #1	@ tmp138,
	bne	.L89	@,
	movw	ip, #21277	@ tmp142,
	mov	r4, #2	@ tmp143,
	strb	r4, [r0, ip]	@ tmp143, <variable>.MP4Syntax.is_short_header
	ldr	r1, [r1, #0]	@ tmp146,* StartCode
	mov	ip, r1, lsr #8	@ tmp145, tmp146,
	sub	r1, ip, #128	@ tmp147, tmp145,
	cmp	r1, #3	@ tmp147,
	orrls	r2, r2, r4	@ tmp151, tmp138,
	strlsb	r2, [r0, r3]	@ tmp151,
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L89:
	movw	r3, #21277	@ tmp154,
	mov	ip, #196	@ tmp153,
	mov	r2, #1	@ tmp155,
	str	ip, [r1, #0]	@ tmp153,* StartCode
	strb	r2, [r0, r3]	@ tmp155,
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	MP4_Check_StreamType, .-MP4_Check_StreamType
	.align	2
	.global	Mp4_Combine_SliceData
	.type	Mp4_Combine_SliceData, %function
Mp4_Combine_SliceData:
	.fnstart
.LFB1400:
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
	mov	ip, #19968	@ tmp144,
	mov	r3, r0	@ pCtx, pCtx
	ldr	r0, [r0, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r2, #15612	@ tmp143,
	tst	r0, #2	@ <variable>.PicIntegrality,
	ldr	r2, [r3, r2]	@ SlcNum, <variable>.Mp4DecParam.SlcNum
	beq	.L93	@,
	movw	r0, #15709	@ tmp147,
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.38252, <variable>.IsLastSeg
	cmp	r0, #1	@ D.38252,
	beq	.L104	@,
	cmp	r0, #0	@ D.38252,
	bne	.L101	@,
	movw	ip, #15789	@ tmp221,
	ldrb	r0, [r3, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L105	@,
.L101:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4249	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38259,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L104:
	sub	ip, r2, #1	@ tmp148, SlcNum,
	movw	r4, #510	@ tmp149,
	cmp	ip, r4	@ tmp148, tmp149
	bhi	.L106	@,
	mov	r4, ip, asl #3	@ tmp278, tmp148,
	rsb	r5, ip, r4	@ tmp154, tmp148, tmp278
	add	r5, r3, r5, asl #2	@, tmp156, pCtx, tmp154,
	add	r6, r5, #1280	@ tmp157, tmp156,
	add	r2, r6, #4	@ tmp157, tmp157,
	ldr	r6, [r2, #4]	@ D.38266, <variable>.bit_len
	cmp	r6, #0	@ D.38266,
	beq	.L97	@,
	ldr	r5, [r5, #1296]	@ D.38268, <variable>.phy_address
	cmp	r5, #0	@ D.38268,
	beq	.L97	@,
	movw	ip, #15712	@ tmp209,
	ldr	r3, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, r3	@ D.38268, <variable>.PhyAddr
	addls	r1, r6, r1, asl #3	@, tmp220, D.38266, CodeLen,
	strls	r1, [r2, #4]	@ tmp220, <variable>.bit_len
	movls	r0, #0	@ D.38259,
	ldmlsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4226	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38259,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L97:
	rsb	r0, ip, r4	@ tmp169, tmp148, tmp278
	movw	r2, #15712	@ tmp165,
	ldr	r5, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	ip, r3, r0, asl #2	@, tmp171, pCtx, tmp169,
	ldr	r0, [ip, #1292]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r5, r0	@ <variable>.PhyAddr, <variable>.phy_address
	movls	r1, r1, asl #3	@ tmp199, CodeLen,
	strls	r1, [ip, #1288]	@ tmp199, <variable>.bit_len
	ldrls	r3, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movhi	r0, #0	@ D.38259,
	ldrhi	r3, [ip, #1284]	@ <variable>.bit_len, <variable>.bit_len
	movls	r0, #0	@ D.38259,
	addhi	r1, r3, r1, asl #3	@, tmp191, <variable>.bit_len, CodeLen,
	strls	r3, [ip, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	strhi	r1, [ip, #1284]	@ tmp191, <variable>.bit_len
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L105:
	sub	r0, r2, #1	@ temp.917, SlcNum,
	rsb	r2, r0, r0, asl #3	@, tmp226, temp.917, temp.917,
	add	r2, r3, r2, asl #2	@, tmp228, pCtx, tmp226,
	add	ip, r2, #1280	@ tmp229, tmp228,
	add	ip, ip, #4	@ tmp229, tmp229,
	ldr	r0, [ip, #4]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L107	@,
.L102:
	mvn	r0, #0	@ D.38259,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L93:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4255	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38259,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L107:
	add	r4, r2, #1280	@ tmp237, tmp228,
	add	r4, r4, #12	@ tmp237, tmp237,
	ldr	r0, [r4, #4]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L102	@,
	ldr	r5, [r2, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r1, r5, r1, asl #3	@, tmp255, <variable>.bit_len, CodeLen,
	str	r1, [r2, #1284]	@ tmp255, <variable>.bit_len
	movw	r2, #15792	@ tmp263,
	ldr	r1, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r2, #15796	@ tmp272,
	str	r1, [r4, #4]	@ <variable>.PhyAddr, <variable>.phy_address
	ldr	r3, [r3, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r3, asl #3	@ tmp274, <variable>.LenInByte,
	str	r1, [ip, #4]	@ tmp274, <variable>.bit_len
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L106:
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38259,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Mp4_Combine_SliceData, .-Mp4_Combine_SliceData
	.align	2
	.global	Mp4_Check_Slice_NotSH
	.type	Mp4_Check_Slice_NotSH, %function
Mp4_Check_Slice_NotSH:
	.fnstart
.LFB1399:
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
	movw	r1, #20019	@ tmp140,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vol.resync_marker_disable, <variable>.MP4Vol.resync_marker_disable
	movw	r2, #21208	@ tmp139,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.38224, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Vol.resync_marker_disable,
	bne	.L109	@,
	movw	r3, #15864	@ tmp142,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ tmp144,
	tst	ip, #120	@ tmp144,
	bne	.L109	@,
	ldrh	r3, [r0, r3]	@ tmp150,
	ubfx	r3, r3, #7, #4	@ D.38232, tmp150,,
	cmp	r2, #3	@ D.38224,
	ldrls	pc, [pc, r2, asl #2]	@ D.38224
	b	.L110	@
.L114:
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L112
.L113:
	movw	r2, #21216	@ tmp156,
	movw	r1, #21217	@ tmp155,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r1, ip	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_forward
	movcs	ip, r1	@ tmp160, <variable>.MP4Vop.vop_fcode_backward
	add	r2, ip, #16	@ StartCodeLen, tmp160,
	cmp	r2, #18	@ StartCodeLen,
	movlt	r2, #18	@ StartCodeLen,
.L115:
	add	r3, r3, #17	@ tmp162, D.38232,
	cmp	r2, r3	@ StartCodeLen, tmp162
	moveq	r0, #0	@ ret,
	ldmeqfd	sp, {fp, sp, pc}	@
.L109:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L112:
	movw	r1, #21216	@ tmp152,
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	add	r2, r2, #16	@ StartCodeLen, <variable>.MP4Vop.vop_fcode_forward,
	b	.L115	@
.L111:
	mov	r2, #17	@ StartCodeLen,
	b	.L115	@
.L110:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Mp4_Check_Slice_NotSH, .-Mp4_Check_Slice_NotSH
	.align	2
	.global	MPEG4DEC_Destroy
	.type	MPEG4DEC_Destroy, %function
MPEG4DEC_Destroy:
	.fnstart
.LFB1388:
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
	movw	r1, #:lower16:.LC3	@,
	mov	r4, r0	@ pCtx, pCtx
	movt	r1, #:upper16:.LC3	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	movw	r3, #22548	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r4, r3]	@ tmp136, <variable>.InitComplete
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	MPEG4DEC_Destroy, .-MPEG4DEC_Destroy
	.align	2
	.global	MP4_Combine_HdPacket
	.type	MP4_Combine_HdPacket, %function
MP4_Combine_HdPacket:
	.fnstart
.LFB1410:
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
	movw	r0, #22096	@ tmp138,
	ldr	r3, [r4, r0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L129	@,
	movw	r1, #15709	@ tmp141,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ D.38684, <variable>.IsLastSeg
	cmp	r5, #1	@ D.38684,
	beq	.L130	@,
	cmp	r5, #0	@ D.38684,
	bne	.L127	@,
	movw	r2, #15789	@ tmp177,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L127	@,
	movw	r3, #22108	@ tmp179,
	movw	lr, #15716	@ tmp180,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r1, r4, #15744	@, pCtx,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r0, r4, #22016	@, pCtx,
	add	r0, r0, #160	@,,
	add	r1, r1, #40	@,,
	add	lr, ip, r2	@ tmp184, <variable>.LenInByte, <variable>.LenInByte
	mov	r2, #80	@,
	str	lr, [r4, r3]	@ tmp184, <variable>.LenInByte
	bl	memcpy	@
	mov	r0, r5	@ D.38683, D.38684
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L130:
	movw	r6, #22101	@ tmp142,
	ldrb	r5, [r4, r6]	@ zero_extendqisi2	@ D.38687, <variable>.IsLastSeg
	cmp	r5, #1	@ D.38687,
	beq	.L131	@,
	cmp	r5, #0	@ D.38687,
	bne	.L126	@,
	movw	r3, #22181	@ tmp168,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L126	@,
	movw	ip, #22188	@ tmp170,
	movw	r0, #15716	@ tmp171,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, r5	@ D.38683, D.38687
	ldr	r3, [r4, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, r1, r3	@ tmp175, <variable>.LenInByte, <variable>.LenInByte
	str	r2, [r4, ip]	@ tmp175, <variable>.LenInByte
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L127:
	movw	r2, #4773	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38683,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L131:
	movw	r0, #15712	@ tmp143,
	movw	r3, #22104	@ tmp144,
	ldr	r2, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, ip	@ <variable>.PhyAddr, <variable>.PhyAddr
	blt	.L132	@,
	movw	r3, #22108	@ tmp162,
	movw	r0, #15716	@ tmp163,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ D.38683,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	ip, r1, r2	@ tmp167, <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r3]	@ tmp167, <variable>.LenInByte
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L126:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4761	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38683,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L132:
	add	r2, r4, #22016	@, pCtx,
	add	lr, r4, #15680	@, pCtx,
	add	r0, r2, #160	@,,
	add	r1, lr, #24	@,,
	mov	r2, #80	@,
	bl	memcpy	@
	movw	r1, #22181	@ tmp159,
	mov	r0, #0	@ tmp157,
	strb	r0, [r4, r6]	@ tmp157, <variable>.IsLastSeg
	strb	r5, [r4, r1]	@ D.38687, <variable>.IsLastSeg
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L129:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38683,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP4_Combine_HdPacket, .-MP4_Combine_HdPacket
	.align	2
	.global	MP4_GetScdUpMsg
	.type	MP4_GetScdUpMsg, %function
MP4_GetScdUpMsg:
	.fnstart
.LFB1398:
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
	ldr	r3, [r1, #72]	@ <variable>.stMp4UpMsg, <variable>.stMp4UpMsg
	add	r0, r0, #15808	@ tmp136, pCtx,
	str	r3, [r0, #56]	@ <variable>.stMp4UpMsg, <variable>.ScdUpMsg
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4_GetScdUpMsg, .-MP4_GetScdUpMsg
	.align	2
	.global	MP4_ClearCurPic
	.type	MP4_ClearCurPic, %function
MP4_ClearCurPic:
	.fnstart
.LFB1397:
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
	mov	sl, r0	@ pCtx, pCtx
	movw	r0, #19964	@ tmp167,
	movw	r3, #22960	@ tmp166,
	ldr	r8, [sl, r0]	@ StreamIDNum, <variable>.StreamIDNum
	ldr	r7, [sl, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #0	@ StreamIDNum,
	ble	.L136	@,
	add	r4, sl, #15808	@ tmp168, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r9, r8, #1	@ tmp172, StreamIDNum,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	and	r9, r9, #1	@ tmp174, tmp172,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum,
	add	r5, r4, #64	@ ivtmp.1055, tmp168,
	ble	.L136	@,
	cmp	r9, #0	@ tmp174,
	beq	.L137	@,
	ldr	r1, [r5, #0]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #68	@ ivtmp.1055, tmp168,
	ble	.L136	@,
.L137:
	mov	r4, r5	@ tmp176, ivtmp.1055
	add	r6, r6, #1	@ tmp175, i,
	ldr	r1, [r4], #4	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp175,
	ldr	r1, [r5, #4]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #4	@ ivtmp.1055, tmp176,
	bgt	.L137	@,
.L136:
	movw	r1, #19964	@ tmp170,
	mov	r2, #0	@ tmp171,
	str	r2, [sl, r1]	@ tmp171, <variable>.StreamIDNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	MP4_ClearCurPic, .-MP4_ClearCurPic
	.align	2
	.global	MP4_Clean_HeadPacket
	.type	MP4_Clean_HeadPacket, %function
MP4_Clean_HeadPacket:
	.fnstart
.LFB1407:
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
	movw	r1, #22516	@ tmp140,
	ldr	r8, [r0, r1]	@ StreamIDNum, <variable>.stHdPktInfo.StreamIDNum
	movw	r3, #22960	@ tmp139,
	ldr	r7, [r0, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #64	@ StreamIDNum,
	movge	r8, #64	@ StreamIDNum.1088,
	cmp	r8, #0	@ StreamIDNum.1088,
	addle	sl, r0, #22016	@ tmp145, pCtx,
	ble	.L146	@,
	add	sl, r0, #22016	@ tmp145, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r4, r8, #1	@ tmp146, StreamIDNum.1088,
	ldr	r1, [sl, #244]	@, <variable>.stHdPktInfo.StreamId
	and	r4, r4, #1	@ tmp148, tmp146,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1088,
	add	r5, sl, #248	@ ivtmp.1085, tmp145,
	ble	.L146	@,
	cmp	r4, #0	@ tmp148,
	beq	.L147	@,
	ldr	r1, [r5, #0]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum.1088, i
	add	r5, sl, #252	@ ivtmp.1085, tmp145,
	ble	.L146	@,
.L147:
	mov	r4, r5	@ tmp150, ivtmp.1085
	add	r6, r6, #1	@ tmp149, i,
	ldr	r1, [r4], #4	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp149,
	ldr	r1, [r5, #4]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1088, i
	add	r5, r4, #4	@ ivtmp.1085, tmp150,
	bgt	.L147	@,
.L146:
	add	r0, sl, #80	@, tmp145,
	mov	r1, #440	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	MP4_Clean_HeadPacket, .-MP4_Clean_HeadPacket
	.align	2
	.global	MP4_ClearCurPacket
	.type	MP4_ClearCurPacket, %function
MP4_ClearCurPacket:
	.fnstart
.LFB1396:
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
	mov	r4, r1	@ pMp4Packet, pMp4Packet
	ldr	r1, [r1, #16]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L158	@,
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L160	@,
.L158:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L160:
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	mov	r0, r5	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP4_ClearCurPacket, .-MP4_ClearCurPacket
	.align	2
	.global	MP4_Record_PacketID
	.type	MP4_Record_PacketID, %function
MP4_Record_PacketID:
	.fnstart
.LFB1409:
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
	movw	r5, #22516	@ tmp136,
	ldr	r3, [r0, r5]	@ D.38656, <variable>.stHdPktInfo.StreamIDNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #62	@ D.38656,
	bgt	.L165	@,
	add	ip, r3, #5504	@ tmp144, D.38656,
	movw	r1, #15720	@ tmp150,
	add	r0, ip, #60	@ tmp144, tmp144,
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.38666, D.38656,
	str	r3, [r4, r5]	@ D.38666, <variable>.stHdPktInfo.StreamIDNum
	add	r2, r4, r0, asl #2	@, tmp148, pCtx, tmp144,
	movw	r0, #15709	@ tmp155,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movw	r0, #15789	@ tmp157,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r2, r3, #5504	@ tmp159, D.38666,
	movw	r0, #15800	@ tmp165,
	add	ip, r2, #60	@ tmp159, tmp159,
	ldr	r1, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp168, D.38666,
	str	r3, [r4, r5]	@ tmp168, <variable>.stHdPktInfo.StreamIDNum
	add	r4, r4, ip, asl #2	@, tmp163, pCtx, tmp159,
	str	r1, [r4, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L165:
	bl	MP4_Clean_HeadPacket	@
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r4, r5]	@, <variable>.stHdPktInfo.StreamIDNum
	movw	r1, #:lower16:.LC5	@,
	mov	r3, #62	@,
	movt	r1, #:upper16:.LC5	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP4_Record_PacketID, .-MP4_Record_PacketID
	.align	2
	.global	MP4_Record_HeadPacketInfo
	.type	MP4_Record_HeadPacketInfo, %function
MP4_Record_HeadPacketInfo:
	.fnstart
.LFB1406:
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
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r7, r1	@ StartCode, StartCode
	beq	.L171	@,
	add	r5, r4, #22016	@ tmp137, pCtx,
	add	r6, r4, #15680	@, pCtx,
	add	r1, r6, #24	@,,
	mov	r2, #160	@,
	add	r0, r5, #80	@, tmp137,
	movw	r6, #22524	@ tmp150,
	bl	memcpy	@
	add	r1, r4, #15808	@ tmp147, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	movw	r2, #22520	@ tmp149,
	ldr	r3, [r1, #56]	@ <variable>.ScdUpMsg, <variable>.ScdUpMsg
	cmp	r0, #0	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	str	r7, [r4, r2]	@ StartCode, <variable>.stHdPktInfo.HeadCode
	str	r3, [r5, #240]	@ <variable>.ScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	beq	.L172	@,
	mov	r3, #22528	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	add	lr, r2, #1	@ tmp157, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp157, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L172:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	mov	r3, #22528	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	mov	ip, #1	@ tmp153,
	str	ip, [r4, r6]	@ tmp153, <variable>.stHdPktInfo.GetHeadFirstFlag
	add	lr, r2, #1	@ tmp157, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp157, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L171:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP4_Record_HeadPacketInfo, .-MP4_Record_HeadPacketInfo
	.align	2
	.global	MP4_Renew_CurPacket
	.type	MP4_Renew_CurPacket, %function
MP4_Renew_CurPacket:
	.fnstart
.LFB1411:
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
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Combine_HdPacket	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L177	@,
	mov	r0, r4	@, pCtx
	add	r5, r4, #22016	@ tmp145, pCtx,
	bl	MP4_Record_PacketID	@
	add	r0, r4, #15680	@, pCtx,
	add	r1, r5, #80	@, tmp145,
	mov	r2, #160	@,
	add	r0, r0, #24	@,,
	add	r4, r4, #15744	@ tmp151, pCtx,
	bl	memcpy	@
	ldr	r2, [r5, #240]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	mov	r0, #0	@ D.38727,
	str	r2, [r4, #32]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stMp4UpMsg
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L177:
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #4788	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38727, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP4_Renew_CurPacket, .-MP4_Renew_CurPacket
	.align	2
	.global	MP4_Check_CurPacket
	.type	MP4_Check_CurPacket, %function
MP4_Check_CurPacket:
	.fnstart
.LFB1408:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #15704	@ tmp145,
	ldr	r1, [r0, r5]	@ D.38812, <variable>.VirAddr
	movw	r3, #15716	@ tmp147,
	movw	r2, #15712	@ tmp143,
	ldr	lr, [r0, r3]	@ D.38811, <variable>.LenInByte
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r5, fp, #48	@ tmp151,,
	movw	ip, #22044	@ tmp146,
	movw	r3, #22056	@ tmp149,
	str	r1, [r4, ip]	@ D.38812, <variable>.BitsObj.vir_addr
	movw	r2, #22048	@ tmp142,
	movw	ip, #22052	@ tmp148,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	mov	r2, lr	@, D.38811
	str	lr, [r4, ip]	@ D.38811, <variable>.BitsObj.len
	mov	r0, #0	@ tmp150,
	str	r0, [r4, r3]	@ tmp150, <variable>.BitsObj.offset
	mov	r0, r5	@, tmp151
	bl	BsInit	@
	mov	r0, r5	@, tmp151
	mov	r1, #32	@,
	bl	BsShow	@
	movw	r3, #15864	@ tmp153,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ tmp155,
	tst	r2, #1	@ tmp155,
	bne	.L179	@,
	mov	ip, r0, lsr #8	@ tmp162, StartCode,
	movw	lr, #21277	@ tmp159,
	sub	r1, ip, #128	@ tmp163, tmp162,
	mov	r5, #2	@ tmp160,
	cmp	r1, #3	@ tmp163,
	strb	r5, [r4, lr]	@ tmp160, <variable>.MP4Syntax.is_short_header
	movw	lr, #15864	@ tmp172,
	orrls	r2, r2, r5	@ tmp167, tmp155,
	strlsb	r2, [r4, r3]	@ tmp167,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp174,
	tst	r1, #2	@ tmp174,
	beq	.L181	@,
.L200:
	movw	r2, #22520	@ tmp178,
	movw	ip, #438	@ tmp179,
	ldr	r3, [r4, r2]	@ D.38615, <variable>.stHdPktInfo.HeadCode
	cmp	r3, ip	@ D.38615, tmp179
	beq	.L182	@,
	cmp	r0, #1	@ StartCode,
	beq	.L182	@,
.L183:
	mov	r0, r4	@, pCtx
	bl	MP4_Renew_CurPacket	@
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	bne	.L199	@,
.L191:
	mvn	r0, #0	@ ret,
.L192:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L179:
	movw	r3, #21277	@ tmp169,
	movw	lr, #15864	@ tmp172,
	mov	r2, #1	@ tmp170,
	strb	r2, [r4, r3]	@ tmp170,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp174,
	mov	r0, #196	@ StartCode,
	tst	r1, #2	@ tmp174,
	bne	.L200	@,
.L181:
	movw	ip, #22520	@ tmp187,
	movw	lr, #438	@ tmp188,
	ldr	r3, [r4, ip]	@ temp.1211, <variable>.stHdPktInfo.HeadCode
	cmp	r3, lr	@ temp.1211, tmp188
	beq	.L188	@,
	cmp	r0, #1	@ StartCode,
	beq	.L201	@,
.L189:
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, #0	@ ret,
.L187:
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L191	@,
.L199:
	movw	ip, #15712	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	bne	.L192	@,
	b	.L191	@
.L182:
	movw	lr, #22041	@ tmp180,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vop_decode_right, <variable>.MP4SyntaxState.vop_decode_right
	cmp	r1, #1	@ <variable>.MP4SyntaxState.vop_decode_right,
	beq	.L184	@,
	cmp	r0, #1	@ StartCode,
	bne	.L183	@,
.L184:
	movw	ip, #22524	@ tmp182,
	ldr	r0, [r4, ip]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	cmp	r0, #1	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	beq	.L202	@,
.L186:
	mov	r0, #0	@ ret,
	b	.L187	@
.L188:
	cmp	r0, r3	@ StartCode, temp.1211
	beq	.L195	@,
	mov	r0, #0	@ ret,
	b	.L187	@
.L202:
	movw	r2, #438	@ tmp184,
	cmp	r3, r2	@ D.38615, tmp184
	bne	.L186	@,
	movw	r1, #22108	@ tmp185,
	ldr	r3, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #4	@ <variable>.LenInByte,
	beq	.L183	@,
	mov	r0, #0	@ ret,
	b	.L187	@
.L201:
	cmp	r3, #1	@ temp.1211,
	bne	.L186	@,
.L195:
	mov	r2, #22528	@ tmp192,
	ldr	r0, [r4, r2]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	cmp	r0, #1	@ <variable>.stHdPktInfo.CountVopNum,
	bgt	.L189	@,
	mov	r0, #0	@ ret,
	b	.L187	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
.LFB1405:
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
	movw	r6, #19964	@ tmp136,
	ldr	r3, [r0, r6]	@ D.38542, <variable>.StreamIDNum
	movw	r4, #1022	@ tmp137,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, r4	@ D.38542, tmp137
	bhi	.L207	@,
	add	ip, r3, #3952	@ tmp145, D.38542,
	movw	r1, #15720	@ tmp151,
	add	r0, ip, #14	@ tmp145, tmp145,
	ldr	ip, [r5, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.38551, D.38542,
	str	r3, [r5, r6]	@ D.38551, <variable>.StreamIDNum
	add	r2, r5, r0, asl #2	@, tmp149, pCtx, tmp145,
	movw	r0, #15709	@ tmp156,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #15789	@ tmp158,
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r2, r3, #3952	@ tmp160, D.38551,
	movw	r0, #15800	@ tmp166,
	add	ip, r2, #14	@ tmp160, tmp160,
	ldr	r1, [r5, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp169, D.38551,
	str	r3, [r5, r6]	@ tmp169, <variable>.StreamIDNum
	add	r5, r5, ip, asl #2	@, tmp164, pCtx, tmp160,
	str	r1, [r5, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L207:
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	movw	r3, #22960	@ tmp138,
	add	r1, r5, #15680	@, pCtx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r5, r6]	@, <variable>.StreamIDNum
	mov	r3, r4	@, tmp137
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP4_Record_SlcSegID, .-MP4_Record_SlcSegID
	.align	2
	.global	Mp4_Syntax_Init
	.type	Mp4_Syntax_Init, %function
Mp4_Syntax_Init:
	.fnstart
.LFB1364:
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
	add	r5, r0, #19968	@ tmp141, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, r5, #8	@, tmp141,
	add	r6, r4, #20992	@, pCtx,
	bl	__memzero	@
	add	r0, r5, #32	@, tmp141,
	mov	r1, #604	@,
	movw	r5, #22600	@ tmp153,
	bl	__memzero	@
	add	r0, r6, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	add	r3, r4, #21248	@, pCtx,
	add	r0, r3, #20	@,,
	mov	r1, #768	@,
	bl	__memzero	@
	add	r1, r4, #22016	@, pCtx,
	add	r0, r1, #20	@,,
	mov	r1, #7	@,
	bl	__memzero	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp166,
	movt	r1, #:upper16:.LANCHOR0	@ tmp166,
	movw	r0, #21285	@ tmp150,
	mov	r3, #0	@ ivtmp.1283,
	mov	r2, #1	@ tmp151,
	str	r2, [r4, r5]	@ tmp151, <variable>.IPVopErr
	strb	r2, [r4, r0]	@ tmp151, <variable>.MP4Syntax.syn_vos.visual_object_verid
.L209:
	add	r2, r3, #4	@ tmp169, ivtmp.1283,
	add	r0, r4, r3	@ tmp155, pCtx, ivtmp.1283
	ldr	r5, [r1, r3]	@ tmp159, default_intra_matrix
	add	r6, r4, r2	@ tmp171, pCtx, tmp169
	add	r3, r2, #4	@ ivtmp.1283, tmp169,
	ldr	lr, [r1, r2]	@ tmp174, default_intra_matrix
	add	ip, r0, #19968	@ tmp157, tmp155,
	cmp	r3, #256	@ ivtmp.1283,
	add	r0, r6, #19968	@ tmp172, tmp171,
	str	r5, [ip, #120]	@ tmp159, <variable>.MP4Vol.intra_quant_mat
	str	lr, [r0, #120]	@ tmp174, <variable>.MP4Vol.intra_quant_mat
	bne	.L209	@,
	ldr	r1, .L216	@ tmp167,
	mov	r3, #0	@ ivtmp.1273,
.L210:
	add	r2, r3, #4	@ tmp168, ivtmp.1273,
	add	r0, r4, r3	@ tmp160, pCtx, ivtmp.1273
	ldr	r5, [r1, r3]	@ tmp165, default_inter_matrix
	add	r6, r4, r2	@ tmp176, pCtx, tmp168
	add	r3, r2, #4	@ ivtmp.1273, tmp168,
	ldr	lr, [r1, r2]	@ tmp179, default_inter_matrix
	add	ip, r0, #20224	@ tmp162, tmp160,
	cmp	r3, #256	@ ivtmp.1273,
	add	r0, r6, #20224	@ tmp177, tmp176,
	str	r5, [ip, #120]	@ tmp165, <variable>.MP4Vol.nonintra_quant_mat
	str	lr, [r0, #120]	@ tmp179, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L210	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L217:
	.align	2
.L216:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Init, .-Mp4_Syntax_Init
	.align	2
	.global	Global_Data_Init
	.type	Global_Data_Init, %function
Global_Data_Init:
	.fnstart
.LFB1365:
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
	add	r5, r0, #22016	@ tmp136, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, r5, #48	@, tmp136,
	bl	__memzero	@
	add	r0, r5, #28	@, tmp136,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Init	@
	movw	r1, #22580	@ tmp139,
	movw	r2, #22584	@ tmp141,
	mov	r3, #0	@ tmp140,
	movw	ip, #22588	@ tmp143,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.UsrData
	movw	r1, #22592	@ tmp145,
	movw	r2, #22552	@ tmp147,
	str	r3, [r4, ip]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.FrameNum
	movw	ip, #22092	@ tmp149,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	movw	r2, #22540	@ tmp153,
	movw	r1, #22536	@ tmp151,
	str	r3, [r4, ip]	@ tmp140, <variable>.DecMode
	str	r3, [r4, r1]	@ tmp140, <variable>.SeqCnt
	movw	ip, #22544	@ tmp155,
	str	r3, [r4, r2]	@ tmp140, <variable>.ImgCntOfSeq
	movw	r1, #22596	@ tmp157,
	movw	r2, #22556	@ tmp159,
	movw	r0, #22572	@ tmp167,
	str	r3, [r4, ip]	@ tmp140, <variable>.ErrorLevel
	movw	ip, #22560	@ tmp161,
	str	r3, [r4, r1]	@ tmp140, <variable>.CurUsrData
	movw	r1, #22564	@ tmp163,
	str	r3, [r4, r2]	@ tmp140, <variable>.OldPicWidth
	movw	r2, #22568	@ tmp165,
	str	r3, [r4, r0]	@ tmp140, <variable>.UserID
	mov	r0, r3	@, tmp140
	str	r3, [r4, ip]	@ tmp140, <variable>.OldPicHeight
	str	r3, [r4, r1]	@ tmp140, <variable>.NewPicWidth
	str	r3, [r4, r2]	@ tmp140, <variable>.NewPicHeight
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Global_Data_Init, .-Global_Data_Init
	.align	2
	.global	bs_get_spritetrajectory
	.type	bs_get_spritetrajectory, %function
bs_get_spritetrajectory:
	.fnstart
.LFB1360:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp204,
	movt	r4, #:upper16:.LANCHOR1	@ tmp204,
	mov	r5, r0	@ pBs, pBs
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #0]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #0	@ i,
	beq	.L222	@,
	ldrb	r1, [r4, #12]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #8]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #1	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #16]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #2	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #28]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #24]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #3	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #32]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #4	@ i,
	beq	.L222	@,
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #40]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #5	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #52]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #48]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #6	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #60]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #56]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #7	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #64]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #8	@ i,
	beq	.L222	@,
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #72]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #9	@ i,
	beq	.L222	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #84]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #80]	@ <variable>.code, <variable>.code
	movw	r6, #:lower16:.LANCHOR1	@ tmp189,
	movt	r6, #:upper16:.LANCHOR1	@ tmp189,
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #10	@ i,
	beq	.L222	@,
	ldrb	r1, [r6, #92]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	ip, [r6, #88]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	mvnne	r6, #0	@ i,
	beq	.L236	@,
	mov	r0, r6	@, i
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L236:
	mov	r6, #11	@ i,
.L222:
	add	r4, r4, r6, asl #3	@, tmp200, tmp204, i,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.len
	bl	BsSkip	@
	mov	r0, r6	@, i
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	bs_get_spritetrajectory, .-bs_get_spritetrajectory
	.align	2
	.global	Bs_Get_Matrix
	.type	Bs_Get_Matrix, %function
Bs_Get_Matrix:
	.fnstart
.LFB1366:
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
	mov	r6, #0	@ value,
	movw	r8, #:lower16:.LANCHOR0	@ tmp171,
	mov	sl, r0	@ bs, bs
	movt	r8, #:upper16:.LANCHOR0	@ tmp171,
	mov	r7, r1	@ matrix, matrix
	mov	r5, r6	@ i, value
	mov	r4, r6	@ i, value
	b	.L239	@
.L249:
	mov	r6, r0	@ value, D.35814
.L239:
	mov	r0, sl	@, bs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r5, r5, #1	@ tmp154, i,
	add	r4, r8, r4, asl #2	@, tmp150, tmp171, i,
	uxth	r5, r5	@ i, tmp154
	ldr	r2, [r4, #512]	@ tmp152, scan_tables
	sxth	r4, r5	@ i, i
	cmp	r4, #63	@ i,
	movgt	r3, #0	@, tmp162
	movle	r3, #1	@, tmp162
	cmp	r0, #0	@ D.35814,
	str	r0, [r7, r2, asl #2]	@ D.35814,* matrix
	moveq	r3, #0	@, tmp162,
	cmp	r3, #0	@ tmp162,
	bne	.L249	@,
	cmp	r0, #0	@ D.35814,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	sub	r0, r4, #1	@ tmp163, i,
	cmp	r0, #63	@ tmp163,
	ldmgtfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	ip, .L250	@ tmp165,
	add	r4, ip, r4, asl #2	@, ivtmp.1445, tmp165, i,
	add	ip, ip, #260	@ D.39721, tmp165,
	add	r3, r4, #4	@ ivtmp.1445, ivtmp.1445,
	rsb	r2, r4, ip	@ tmp174, ivtmp.1445, D.39721
	ldr	lr, [r4, #-4]	@ tmp169, scan_tables
	cmp	r3, ip	@ ivtmp.1445, D.39721
	sub	r1, r2, #4	@ tmp175, tmp174,
	ubfx	r1, r1, #2, #1	@ tmp176, tmp175,,
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r1, #0	@ tmp176,
	beq	.L241	@,
	ldr	r2, [r3, #-4]	@ tmp182, scan_tables
	add	r3, r3, #4	@ ivtmp.1445, ivtmp.1445,
	cmp	r3, ip	@ ivtmp.1445, D.39721
	str	r6, [r7, r2, asl #2]	@ value,* matrix
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L241:
	mov	r1, r3	@ tmp177, ivtmp.1445
	ldr	r0, [r3, #-4]	@ tmp179, scan_tables
	ldr	lr, [r1], #4	@ tmp181, scan_tables
	add	r3, r1, #4	@ ivtmp.1445, tmp177,
	str	r6, [r7, r0, asl #2]	@ value,* matrix
	cmp	r3, ip	@ ivtmp.1445, D.39721
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	bne	.L241	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L251:
	.align	2
.L250:
	.word	.LANCHOR0+512
	.fnend
	.size	Bs_Get_Matrix, .-Bs_Get_Matrix
	.align	2
	.global	Mp4_Syntax_Slice_SH
	.type	Mp4_Syntax_Slice_SH, %function
Mp4_Syntax_Slice_SH:
	.fnstart
.LFB1402:
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
	movw	r7, #15612	@ tmp146,
	ldr	r6, [r0, r7]	@ D.38405, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r9, r2	@ len, len
	cmp	r6, #0	@ D.38405,
	beq	.L261	@,
	movw	ip, #15864	@ tmp162,
	sub	r5, fp, #72	@ tmp167,,
	ldrb	lr, [r0, ip]	@ zero_extendqisi2	@ tmp164,
	add	r0, r6, #1	@ tmp161, D.38405,
	str	r0, [r4, r7]	@ tmp161, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp167
	ubfx	r8, lr, #3, #4	@ tmp166, tmp164,,
	bl	BsInit	@
	add	r8, r8, #17	@ D.38421, tmp166,
	mov	r0, r5	@, tmp167
	mov	r7, r6, asl #3	@ tmp390, D.38405,
	mov	r1, r8	@, D.38421
	rsb	sl, r6, r7	@ tmp175, D.38405, tmp390
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp167
	add	sl, r4, sl, asl #2	@, tmp177, pCtx, tmp175,
	bl	BsGet	@
	movw	r2, #21220	@ tmp170,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.num_mb_ingob, <variable>.MP4Vop.num_mb_ingob
	movw	ip, #1204	@ tmp179,
	movw	r1, #1206	@ tmp181,
	mul	r0, r3, r0	@ D.38427, <variable>.MP4Vop.num_mb_ingob,
	str	r0, [sl, #1300]	@ D.38427, <variable>.mb_start_num
	ldrh	r3, [r4, ip]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	ldrh	r2, [r4, r1]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	mul	ip, r2, r3	@ tmp183, <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicWidthInMb
	sub	r3, ip, #1	@ totalMbMin1, tmp183,
	cmp	r0, r3	@ D.38427, totalMbMin1
	bhi	.L262	@,
	mov	r1, #2	@,
	mov	r0, r5	@, tmp167
	bl	BsSkip	@
	mov	r0, r5	@, tmp167
	mov	r1, #5	@,
	add	r8, sl, #1264	@ tmp193, tmp177,
	bl	BsGet	@
	add	r8, r8, #8	@ tmp193, tmp193,
	movw	ip, #21208	@ tmp202,
	movw	r2, #21216	@ tmp222,
	strb	r0, [r8, #9]	@, <variable>.vop_quant
	mov	r0, r5	@, tmp167
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r5, #21212	@ tmp212,
	strb	r3, [r8, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	movw	r3, #21217	@ tmp232,
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r1, [r8, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	strb	ip, [r8, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	r5, [r8, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	bl	BsPos	@
	movw	r2, #22056	@ tmp258,
	mov	r1, r0, asr #31	@ tmp253, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	r9, r0, r9, asl #3	@, tmp244, BitUsed, len,
	str	r9, [sl, #1284]	@ tmp244, <variable>.bit_len
	mov	r3, r1, lsr #29	@ tmp254, tmp253,
	ldr	r1, [r4, r2]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	ip, r0, r3	@ tmp255, BitUsed, tmp254
	add	r2, r0, #7	@ tmp273, BitUsed,
	and	r0, ip, #7	@ tmp256, tmp255,
	cmp	r5, #0	@ BitUsed,
	rsb	ip, r3, r0	@ tmp257, tmp254, tmp256
	movw	r3, #22048	@ tmp275,
	add	r0, ip, r1	@ tmp262, tmp257, <variable>.BitsObj.offset
	strb	r0, [r8, #10]	@ tmp262, <variable>.bit_offset
	ldr	r1, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movge	r2, r5	@ BitUsed, BitUsed
	mov	r3, #19968	@ tmp278,
	add	ip, r1, r2, asr #3	@, tmp277, <variable>.BitsObj.phy_addr, BitUsed,
	movw	r2, #15709	@ tmp282,
	str	ip, [sl, #1292]	@ tmp277, <variable>.phy_address
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r0, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	cmp	r2, #0	@ <variable>.IsLastSeg,
	orr	r1, r0, #16	@ tmp281, <variable>.PicIntegrality,
	str	r1, [r4, r3]	@ tmp281, <variable>.PicIntegrality
	beq	.L263	@,
.L256:
	rsb	r2, r6, r7	@ tmp317, D.38405, tmp390
	mov	r0, #0	@ tmp321,
	add	lr, r4, r2, asl #2	@, tmp319, pCtx, tmp317,
	add	r3, lr, #1280	@ tmp337, tmp319,
	add	r7, lr, #1264	@ tmp328, tmp319,
	add	r1, r3, #4	@ tmp320, tmp320,
	add	r7, r7, #9	@ tmp328, tmp328,
	add	r2, r3, #12	@ tmp337, tmp337,
	str	r0, [r1, #4]	@ tmp321, <variable>.bit_len
	str	r0, [r2, #4]	@ tmp321, <variable>.phy_address
	strb	r0, [r7, #10]	@ tmp321, <variable>.bit_offset
.L257:
	sub	r6, r6, #1	@ D.38415, D.38405,
	mov	r3, r6, asl #3	@ tmp389, D.38415,
	rsb	r1, r6, r3	@ tmp342, D.38415, tmp389
	add	r2, r4, r1, asl #2	@, tmp344, pCtx, tmp342,
	ldr	r0, [r2, #1296]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L264	@,
.L258:
	rsb	r6, r6, r3	@ tmp370, D.38415, tmp389
	movw	r0, #15864	@ tmp374,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ tmp376,
	add	r6, r4, r6, asl #2	@, tmp372, pCtx, tmp370,
	ubfx	lr, r3, #3, #4	@ tmp378, tmp376,,
	ldr	r2, [r6, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r1, lr, r2	@ tmp387, tmp378, <variable>.bit_len
	str	r1, [r6, #1284]	@ tmp387, <variable>.bit_len
.L259:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L254:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L264:
	add	ip, r2, #1280	@ tmp353, tmp344,
	add	r2, ip, #4	@ tmp353, tmp353,
	ldr	r1, [r2, #4]	@ D.38473, <variable>.bit_len
	cmp	r1, #0	@ D.38473,
	beq	.L258	@,
	movw	ip, #15864	@ tmp361,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ tmp363,
	ubfx	r3, r0, #3, #4	@ tmp365, tmp363,,
	add	lr, r3, r1	@ tmp366, tmp365, D.38473
	str	lr, [r2, #4]	@ tmp366, <variable>.bit_len
	b	.L259	@
.L263:
	movw	r0, #15789	@ tmp284,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L256	@,
	movw	lr, #15796	@ tmp293,
	movw	r1, #15792	@ tmp312,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r2, [sl, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r3, ip, asl #3	@ tmp295, <variable>.LenInByte,
	str	r3, [sl, #1288]	@ tmp295, <variable>.bit_len
	ldr	r2, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [sl, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L257	@
.L261:
	movw	r3, #22960	@ tmp147,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r2, #19968	@ tmp151,
	ldr	r5, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r7]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC8	@,
	bic	ip, r5, #178	@ tmp154, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [r4, r2]	@ tmp154, <variable>.PicIntegrality
	mov	r5, r6	@ BitUsed, D.38405
	ldr	r2, .L265	@,
	bl	dprint_vfmw	@
	b	.L254	@
.L262:
	mov	r2, r0	@, D.38427
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mvn	r5, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L254	@
.L266:
	.align	2
.L265:
	.word	.LANCHOR0+1280
	.fnend
	.size	Mp4_Syntax_Slice_SH, .-Mp4_Syntax_Slice_SH
	.align	2
	.global	Mp4_Syntax_Slice_NotSH
	.type	Mp4_Syntax_Slice_NotSH, %function
Mp4_Syntax_Slice_NotSH:
	.fnstart
.LFB1401:
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
	movw	r8, #15612	@ tmp154,
	ldr	r5, [r0, r8]	@ D.38315, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ len, len
	cmp	r5, #0	@ D.38315,
	beq	.L283	@,
	movw	r3, #15864	@ tmp171,
	sub	r6, fp, #72	@ tmp404,,
	ldrh	ip, [r0, r3]	@ tmp173,
	add	r0, r5, #1	@ tmp170, D.38315,
	str	r0, [r4, r8]	@ tmp170, <variable>.Mp4DecParam.SlcNum
	mov	r0, r6	@, tmp404
	ubfx	lr, ip, #7, #4	@ tmp175, tmp173,,
	movw	r8, #21972	@ tmp178,
	add	sl, lr, #17	@ D.38329, tmp175,
	bl	BsInit	@
	mov	r0, r6	@, tmp404
	mov	r1, sl	@, D.38329
	bl	BsSkip	@
	movw	r1, #21976	@ tmp182,
	ldr	r3, [r4, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	add	r2, r3, #15	@ tmp179, <variable>.MP4Syntax.image_height,
	add	sl, ip, #15	@ tmp183, <variable>.MP4Syntax.image_width,
	mov	r0, r2, lsr #4	@ tmp181, tmp179,
	mov	r8, sl, lsr #4	@ tmp185, tmp183,
	mul	r8, r8, r0	@ MbCnt, tmp185, tmp181
	cmp	r8, #0	@ MbCnt,
	beq	.L270	@,
	mov	r3, r8	@ MbCnt.1516, MbCnt
	mov	r1, #0	@ n,
.L271:
	add	r2, r1, #1	@ tmp187, n,
	movs	r3, r3, lsr #1	@ MbCnt.1516, MbCnt.1516,
	uxth	r1, r2	@ n, tmp187
	bne	.L271	@,
	sxth	r1, r1	@, n
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	mov	sl, r5, asl #3	@ tmp403, D.38315,
	rsb	ip, r5, sl	@ tmp193, D.38315, tmp403
	sub	r3, r8, #1	@ tmp197, MbCnt,
	add	r1, r4, ip, asl #2	@, tmp195, pCtx, tmp193,
	cmp	r0, r3	@ temp.1513, tmp197
	str	r0, [r1, #1300]	@ temp.1513, <variable>.mb_start_num
	bhi	.L284	@,
.L272:
	mov	r1, #5	@,
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	rsb	r2, r5, sl	@ tmp203, D.38315, tmp403
	mov	r1, #1	@,
	add	r8, r4, r2, asl #2	@, tmp205, pCtx, tmp203,
	add	r9, r8, #1264	@ tmp206, tmp205,
	add	r8, r9, #8	@ tmp206, tmp206,
	strb	r0, [r8, #9]	@, <variable>.vop_quant
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L273	@,
.L280:
	mov	r0, r6	@, tmp404
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L280	@,
	mov	r1, #1	@,
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	movw	r0, #20068	@ tmp211,
	ldr	r1, [r4, r0]	@ D.38350, <variable>.MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.38350,
	bne	.L285	@,
.L275:
	mov	r1, #1	@,
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r6	@, tmp404
	rsb	r9, r5, sl	@ tmp218, D.38315, tmp403
	bl	BsGet	@
	mov	r1, #3	@,
	add	r3, r4, r9, asl #2	@, tmp220, pCtx, tmp218,
	add	ip, r3, #1264	@ tmp221, tmp220,
	add	r8, ip, #8	@ tmp221, tmp221,
	strb	r0, [r8, #8]	@, <variable>.vop_coding_type
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	ldrb	r1, [r8, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r1, #0	@ <variable>.vop_coding_type,
	strb	r0, [r8, #7]	@, <variable>.intra_dc_vlc_thr
	bne	.L286	@,
.L276:
	rsb	r9, r5, sl	@ tmp273, D.38315, tmp403
	movw	r0, #21216	@ tmp277,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #21217	@ tmp287,
	add	r9, r4, r9, asl #2	@, tmp275, pCtx, tmp273,
	mov	lr, #19968	@ tmp290,
	add	r8, r9, #1264	@ tmp276, tmp275,
	mov	r0, r6	@, tmp404
	add	r8, r8, #8	@ tmp276, tmp276,
	strb	r2, [r8, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	ip, [r8, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	ldr	r3, [r4, lr]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	orr	r6, r3, #16	@ tmp293, <variable>.PicIntegrality,
	str	r6, [r4, lr]	@ tmp293, <variable>.PicIntegrality
	bl	BsPos	@
	movw	r1, #22056	@ tmp317,
	mov	r2, r0, asr #31	@ tmp312, BitUsed,
	mov	r6, r0	@ BitUsed,
	rsb	r7, r0, r7, asl #3	@, tmp303, BitUsed, len,
	str	r7, [r9, #1284]	@ tmp303, <variable>.bit_len
	mov	r3, r2, lsr #29	@ tmp313, tmp312,
	ldr	r2, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	ip, r0, r3	@ tmp314, BitUsed, tmp313
	add	r1, r0, #7	@ tmp332, BitUsed,
	and	r0, ip, #7	@ tmp315, tmp314,
	cmp	r6, #0	@ BitUsed,
	rsb	ip, r3, r0	@ tmp316, tmp313, tmp315
	add	r3, ip, r2	@ tmp321, tmp316, <variable>.BitsObj.offset
	movw	ip, #22048	@ tmp334,
	strb	r3, [r8, #10]	@ tmp321, <variable>.bit_offset
	movge	r1, r6	@ BitUsed, BitUsed
	ldr	r2, [r4, ip]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r3, #15709	@ tmp337,
	add	r0, r2, r1, asr #3	@, tmp336, <variable>.BitsObj.phy_addr, BitUsed,
	str	r0, [r9, #1292]	@ tmp336, <variable>.phy_address
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L277	@,
	movw	ip, #15789	@ tmp339,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	beq	.L287	@,
.L277:
	rsb	r3, r5, sl	@ tmp372, D.38315, tmp403
	mov	ip, #0	@ tmp376,
	add	lr, r4, r3, asl #2	@, tmp374, pCtx, tmp372,
	add	r0, lr, #1280	@ tmp392, tmp374,
	add	r5, lr, #1264	@ tmp383, tmp374,
	add	r1, r0, #4	@ tmp375, tmp375,
	add	r5, r5, #9	@ tmp383, tmp383,
	add	r3, r0, #12	@ tmp392, tmp392,
	str	ip, [r1, #4]	@ tmp376, <variable>.bit_len
	str	ip, [r3, #4]	@ tmp376, <variable>.phy_address
	strb	ip, [r5, #10]	@ tmp376, <variable>.bit_offset
.L278:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L269:
	mov	r0, r6	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L273:
	movw	ip, #21208	@ tmp257,
	movw	r0, #21212	@ tmp267,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	strb	r1, [r8, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r8, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	b	.L276	@
.L283:
	movw	r3, #22960	@ tmp155,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r2, #19968	@ tmp159,
	ldr	r6, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r8]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC8	@,
	bic	ip, r6, #178	@ tmp162, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [r4, r2]	@ tmp162, <variable>.PicIntegrality
	mov	r6, r5	@ BitUsed, D.38315
	ldr	r2, .L288	@,
	bl	dprint_vfmw	@
	b	.L269	@
.L285:
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	b	.L275	@
.L286:
	mov	r0, r6	@, tmp404
	mov	r1, #3	@,
	bl	BsSkip	@
	ldrb	r2, [r8, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r2, #2	@ <variable>.vop_coding_type,
	bne	.L276	@,
	mov	r0, r6	@, tmp404
	mov	r1, #3	@,
	bl	BsSkip	@
	b	.L276	@
.L287:
	movw	lr, #15796	@ tmp348,
	movw	r1, #15792	@ tmp367,
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r3, [r9, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r0, r2, asl #3	@ tmp350, <variable>.LenInByte,
	str	r0, [r9, #1288]	@ tmp350, <variable>.bit_len
	ldr	r3, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r9, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L278	@
.L270:
	mov	r1, r8	@, MbCnt
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	mov	sl, r5, asl #3	@ tmp403, D.38315,
	rsb	r9, r5, sl	@ tmp399, D.38315, tmp403
	add	r8, r4, r9, asl #2	@, tmp401, pCtx, tmp399,
	str	r0, [r8, #1300]	@, <variable>.mb_start_num
	b	.L272	@
.L284:
	mov	r2, r0	@, temp.1513
	mov	r3, r8	@, MbCnt
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC10	@,
	mvn	r6, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L269	@
.L289:
	.align	2
.L288:
	.word	.LANCHOR0+1300
	.fnend
	.size	Mp4_Syntax_Slice_NotSH, .-Mp4_Syntax_Slice_NotSH
	.align	2
	.global	MP4_Dec_Slice
	.type	MP4_Dec_Slice, %function
MP4_Dec_Slice:
	.fnstart
.LFB1404:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #15864	@ tmp144,
	ldrb	r3, [r0, ip]	@ zero_extendqisi2	@ D.38505,
	mov	r4, r0	@ pCtx, pCtx
	tst	r3, #1	@ D.38505,
	beq	.L298	@,
	tst	r3, #4	@ D.38505,
	bne	.L295	@,
	ldrh	r0, [r0, ip]	@ tmp169,
	ubfx	r0, r0, #7, #4	@ D.38527, tmp169,,
	cmp	r0, #0	@ D.38527,
	beq	.L295	@,
	cmp	r0, #7	@ D.38527,
	bfile	r3, r0, #3, #4	@ D.38505, D.38527,,
	strleb	r3, [r4, ip]	@ D.38505,
.L295:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L299	@,
.L293:
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L298:
	str	r1, [fp, #-24]	@,
	str	r2, [fp, #-28]	@,
	bl	Mp4_Check_Slice_NotSH	@
	ldr	r1, [fp, #-24]	@,
	ldr	r2, [fp, #-28]	@,
	cmp	r0, #0	@,
	beq	.L300	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L297	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L293	@
.L300:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	bne	.L293	@,
.L297:
	movw	r3, #22960	@ tmp156,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, .L301	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L293	@
.L299:
	add	r2, r4, #15680	@, pCtx,
	movw	ip, #22960	@ tmp174,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, .L301	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L293	@
.L302:
	.align	2
.L301:
	.word	.LANCHOR0+1324
	.fnend
	.size	MP4_Dec_Slice, .-MP4_Dec_Slice
	.align	2
	.global	Mp4_Syntax_Vos
	.type	Mp4_Syntax_Vos, %function
Mp4_Syntax_Vos:
	.fnstart
.LFB1375:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r5, fp, #56	@ tmp174,,
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #21292	@ tmp142,
	mov	r0, r5	@, tmp174
	movw	r7, #19984	@ tmp146,
	bl	BsInit	@
	mov	r3, #0	@ tmp143,
	mov	r1, #32	@,
	str	r3, [r4, r6]	@ tmp143, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, r5	@, tmp174
	bl	BsSkip	@
	mov	r0, r5	@, tmp174
	mov	r1, #8	@,
	bl	BsGet	@
	sub	r2, r0, #1	@ tmp147, D.36810,
	str	r0, [r4, r7]	@ D.36810, <variable>.MP4Vos.profile_and_level_indication
	cmp	r0, #8	@ D.36810,
	cmpne	r2, #2	@, tmp147,
	movhi	r2, #0	@, tmp154
	movls	r2, #1	@, tmp154
	bls	.L304	@,
	cmp	r0, #240	@ D.36810,
	beq	.L304	@,
	cmp	r0, #241	@ D.36810,
	beq	.L304	@,
	cmp	r0, #242	@ D.36810,
	beq	.L304	@,
	cmp	r0, #243	@ D.36810,
	beq	.L304	@,
	cmp	r0, #244	@ D.36810,
	beq	.L304	@,
	cmp	r0, #245	@ D.36810,
	beq	.L304	@,
	cmp	r0, #0	@ D.36810,
	beq	.L309	@,
	movw	lr, #:lower16:g_event_report	@ tmp169,
	movt	lr, #:upper16:g_event_report	@ tmp169,
	movw	r1, #22036	@ tmp166,
	strb	r2, [r4, r1]	@ tmp154, <variable>.MP4SyntaxState.vos_decode_right
	ldr	r3, [lr, #0]	@ g_event_report.519, g_event_report
	cmp	r3, #0	@ g_event_report.519,
	beq	.L306	@,
	movw	ip, #22960	@ tmp170,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.519
	b	.L306	@
.L304:
	movw	ip, #21292	@ tmp158,
	movw	r1, #22036	@ tmp155,
	str	r0, [r4, ip]	@ D.36810, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, #1	@ tmp156,
	strb	r0, [r4, r1]	@ tmp156, <variable>.MP4SyntaxState.vos_decode_right
.L306:
	mov	r0, r5	@, tmp174
	bl	BsPos	@
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L309:
	mov	r2, r0	@, D.36810
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Vos.profile_and_level_indication
	movw	r2, #22036	@ tmp160,
	mov	r0, #1	@ tmp161,
	strb	r0, [r4, r2]	@ tmp161, <variable>.MP4SyntaxState.vos_decode_right
	str	r3, [r4, r6]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	b	.L306	@
	.fnend
	.size	Mp4_Syntax_Vos, .-Mp4_Syntax_Vos
	.align	2
	.global	Mp4_Syntax_Vol
	.type	Mp4_Syntax_Vol, %function
Mp4_Syntax_Vol:
	.fnstart
.LFB1374:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r5, fp, #64	@ tmp623,,
	add	r6, r0, #19968	@ tmp621, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #32	@ tmp621, tmp621,
	mov	r0, r5	@, tmp623
	bl	BsInit	@
	movw	r0, #21269	@ tmp246,
	mov	ip, #0	@ tmp247,
	mov	r1, #604	@,
	strb	ip, [r4, r0]	@ tmp247, <variable>.MP4Syntax.vol_decode_over
	mov	r0, r6	@, tmp621
	bl	__memzero	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp623
	movw	r7, #20004	@ tmp253,
	bl	BsSkip	@
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.random_accessible_vol
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20028	@ tmp256,
	mov	r1, #1	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_type_indication
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20000	@ tmp258,
	uxtb	r0, r0	@ D.36499,
	strb	r0, [r4, r3]	@ D.36499, <variable>.MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.36499,
	bne	.L403	@,
	movw	r7, #21285	@ tmp267,
	movw	r2, #20001	@ tmp266,
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	r1, #4	@,
	mov	r0, r5	@, tmp623
	strb	lr, [r4, r2]	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Vol.video_object_layer_verid
	bl	BsGet	@
	movw	r1, #20003	@ tmp271,
	uxtb	ip, r0	@ D.36510,
	strb	ip, [r4, r1]	@ D.36510, <variable>.MP4Vol.aspect_ratio_info
	cmp	ip, #15	@ D.36510,
	beq	.L404	@,
.L313:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #20005	@ tmp278,
	uxtb	r0, r0	@ D.36519,
	strb	r0, [r4, r7]	@ D.36519, <variable>.MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.36519,
	movweq	r7, #20006	@ tmp348,
	moveq	r2, #1	@ tmp349,
	streqb	r2, [r4, r7]	@ tmp349, <variable>.MP4Vol.chroma_format
	bne	.L405	@,
.L317:
	mov	r0, r5	@, tmp623
	mov	r1, #2	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.36584,
	movw	r0, #20008	@ tmp352,
	cmp	r7, #0	@ D.36584,
	strb	r7, [r4, r0]	@ D.36584, <variable>.MP4Vol.video_object_layer_shape
	beq	.L322	@,
	mov	r0, r5	@, tmp623
	movw	r5, #22039	@ tmp354,
	mov	r6, #0	@ tmp355,
	strb	r6, [r4, r5]	@ tmp355, <variable>.MP4SyntaxState.vol_decode_right
.L396:
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp599,
	movt	r3, #:upper16:g_event_report	@ tmp599,
	ldr	r3, [r3, #0]	@ g_event_report.1685, g_event_report
	cmp	r3, r6	@ g_event_report.1685,
	mov	r5, r0	@ BitUsed,
	beq	.L316	@,
	movw	lr, #22960	@ tmp600,
	mov	r2, r6	@, tmp596
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1685
.L316:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L322:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36591,
	beq	.L384	@,
	mov	r1, #16	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r1, #20072	@ tmp371,
	cmp	r0, #0	@ D.36597,
	str	r0, [r4, r1]	@ D.36597, <variable>.MP4Vol.vop_time_increment_resolution
	movweq	r1, #20068	@ tmp377,
	moveq	r2, #1	@ tmp378,
	streq	r2, [r4, r1]	@ tmp378, <variable>.MP4Vol.vop_time_incr_bits
	beq	.L329	@,
	subs	r0, r0, #1	@ value.1649, D.36597,
	beq	.L325	@,
	mov	r3, r0	@ value, value.1649
.L326:
	add	r7, r7, #1	@ tmp373, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	r7, r7	@ n, tmp373
	bne	.L326	@,
	cmp	r7, #0	@ n,
	beq	.L325	@,
.L327:
	add	lr, r3, #1	@ tmp375, n,
	movs	r0, r0, lsr #1	@ value.1649, value.1649,
	uxth	r3, lr	@ n, tmp375
	bne	.L327	@,
	sxth	r3, r3	@ iftmp.498, n
.L328:
	movw	ip, #20068	@ tmp376,
	str	r3, [r4, ip]	@ iftmp.498, <variable>.MP4Vol.vop_time_incr_bits
.L329:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.36610,
	beq	.L382	@,
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #20009	@ tmp389,
	uxtb	r2, r0	@ D.36617,
	strb	r2, [r4, r3]	@ D.36617, <variable>.MP4Vol.fixed_vop_rate
	cmp	r2, #0	@ D.36617,
	bne	.L406	@,
.L331:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.36625,
	beq	.L382	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r7, #20080	@ tmp405,
	mov	r1, #1	@,
	str	r0, [r4, r7]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36633,
	beq	.L384	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	sl, #20084	@ tmp416,
	mov	r1, #1	@,
	str	r0, [r4, sl]	@, <variable>.MP4Vol.video_object_layer_height
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36641,
	beq	.L384	@,
	ldr	r3, [r4, r7]	@ D.36649, <variable>.MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.36649,
	bls	.L335	@,
	ldr	r2, [r4, sl]	@ D.36651, <variable>.MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.36651,
	bls	.L335	@,
	cmp	r3, #8192	@ D.36649,
	bhi	.L335	@,
	cmp	r2, #8192	@ D.36651,
	bls	.L336	@,
.L335:
	mov	r0, r5	@, tmp623
	movw	r5, #22039	@ tmp428,
	mov	r6, #0	@ tmp429,
	strb	r6, [r4, r5]	@ tmp429, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp432,
	movt	r0, #:upper16:g_event_report	@ tmp432,
	ldr	r3, [r0, #0]	@ g_event_report.1687, g_event_report
	cmp	r3, r6	@ g_event_report.1687,
	beq	.L316	@,
	movw	ip, #22960	@ tmp433,
	mov	r2, r6	@, tmp429
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1687
	b	.L316	@
.L384:
	mov	r0, #1	@,
.L386:
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r3, #22039	@ tmp419,
	strb	r8, [r4, r3]	@ D.36641, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp623
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp423,
	movt	r2, #:upper16:g_event_report	@ tmp423,
	ldr	r3, [r2, #0]	@ g_event_report.1660, g_event_report
	cmp	r3, #0	@ g_event_report.1660,
	mov	r5, r0	@ BitUsed,
	beq	.L316	@,
	movw	r1, #22960	@ tmp424,
	mov	r2, r8	@, D.36641
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1660
	b	.L316	@
.L405:
	mov	r0, r5	@, tmp623
	mov	r1, #2	@,
	bl	BsGet	@
	movw	ip, #20006	@ tmp281,
	uxtb	r7, r0	@ D.36524,
	strb	r7, [r4, ip]	@ D.36524, <variable>.MP4Vol.chroma_format
	cmp	r7, #1	@ D.36524,
	beq	.L315	@,
	movw	lr, #22039	@ tmp283,
	mov	r0, r5	@, tmp623
	mov	r5, #0	@ tmp284,
	strb	r5, [r4, lr]	@ tmp284, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L316	@
.L403:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20001	@ tmp261,
	mov	r1, #3	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r1, #20002	@ tmp264,
	strb	r0, [r4, r1]	@, <variable>.MP4Vol.video_object_layer_priority
	mov	r1, #4	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r1, #20003	@ tmp271,
	uxtb	ip, r0	@ D.36510,
	strb	ip, [r4, r1]	@ D.36510, <variable>.MP4Vol.aspect_ratio_info
	cmp	ip, #15	@ D.36510,
	bne	.L313	@,
.L404:
	mov	r1, #8	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20032	@ tmp274,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.par_width
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20036	@ tmp276,
	str	r0, [r4, r3]	@, <variable>.MP4Vol.par_height
	b	.L313	@
.L315:
	mov	r1, r7	@, D.36524
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20007	@ tmp288,
	mov	r1, r7	@, D.36524
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.low_delay
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r1, #20040	@ tmp291,
	cmp	r0, #0	@ D.36532,
	str	r0, [r4, r1]	@ D.36532, <variable>.MP4Vol.vbv_parameters
	beq	.L317	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r8, #20044	@ tmp293,
	mov	r1, r7	@, D.36524
	str	r0, [r4, r8]	@, <variable>.MP4Vol.first_half_bit_rate
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36539,
	beq	.L399	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20048	@ tmp304,
	mov	r1, r7	@, D.36524
	str	r0, [r4, r2]	@, <variable>.MP4Vol.latter_half_bit_rate
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36550,
	beq	.L399	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	ip, #20052	@ tmp315,
	mov	r1, r7	@, D.36524
	str	r0, [r4, ip]	@, <variable>.MP4Vol.first_half_vbv_buffer_size
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36558,
	beq	.L399	@,
	mov	r1, #3	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r8, #20056	@ tmp326,
	mov	r1, #11	@,
	str	r0, [r4, r8]	@, <variable>.MP4Vol.latter_half_vbv_buffer_size
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20060	@ tmp328,
	mov	r1, r7	@, D.36524
	str	r0, [r4, r3]	@, <variable>.MP4Vol.first_half_vbv_occupancy
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36568,
	beq	.L399	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20064	@ tmp339,
	mov	r1, r7	@, D.36524
	str	r0, [r4, r2]	@, <variable>.MP4Vol.latter_half_vbv_occupancy
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36576,
	bne	.L317	@,
.L399:
	mov	r0, r7	@, D.36524
	b	.L386	@
.L382:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	ip, #22039	@ tmp397,
	mov	r0, r5	@, tmp623
	strb	r7, [r4, ip]	@ D.36625, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp401,
	movt	r0, #:upper16:g_event_report	@ tmp401,
	ldr	r3, [r0, #0]	@ g_event_report.1654, g_event_report
	cmp	r3, #0	@ g_event_report.1654,
	beq	.L316	@,
	movw	lr, #22960	@ tmp402,
	mov	r2, r7	@, D.36625
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1654
	b	.L316	@
.L325:
	mov	r3, #1	@ iftmp.498,
	b	.L328	@
.L406:
	movw	r7, #20068	@ tmp392,
	mov	r0, r5	@, tmp623
	ldr	r1, [r4, r7]	@, <variable>.MP4Vol.vop_time_incr_bits
	bl	BsGet	@
	movw	r1, #20076	@ tmp394,
	str	r0, [r4, r1]	@, <variable>.MP4Vol.fixed_vop_time_increment
	b	.L331	@
.L336:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r7, #20010	@ tmp436,
	mov	r1, #1	@,
	movw	r8, #20011	@ tmp439,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.interlaced
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	uxtb	r7, r0	@ D.36660,
	strb	r7, [r4, r8]	@ D.36660, <variable>.MP4Vol.obmc_disable
	cmp	r7, #0	@ D.36660,
	beq	.L407	@,
.L337:
	movw	r3, #20001	@ tmp447,
	mov	r0, r5	@, tmp623
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	movw	r8, #20012	@ tmp450,
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	moveq	r1, #1	@,
	movne	r1, #2	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.36673,
	strb	r7, [r4, r8]	@ D.36673, <variable>.MP4Vol.sprite_enable
	cmp	r7, #0	@ D.36673,
	bne	.L408	@,
.L340:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #20013	@ tmp497,
	uxtb	r2, r0	@ D.36713,
	strb	r2, [r4, r3]	@ D.36713, <variable>.MP4Vol.not_8_bit
	cmp	r2, #0	@ D.36713,
	beq	.L348	@,
	mov	r0, r5	@, tmp623
	movw	r5, #22039	@ tmp499,
	mov	r6, #0	@ tmp500,
	strb	r6, [r4, r5]	@ tmp500, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp503,
	movt	r0, #:upper16:g_event_report	@ tmp503,
	ldr	r3, [r0, #0]	@ g_event_report.1673, g_event_report
	cmp	r3, r6	@ g_event_report.1673,
	beq	.L349	@,
	movw	r1, #22960	@ tmp504,
	mov	r2, r6	@, tmp500
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1673
.L349:
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L316	@
.L408:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp452,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp452,
	ldr	sl, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	sl, sl, #8	@ tmp453, g_VdmCharacter,
	beq	.L409	@,
	sub	r1, r7, #1	@ tmp462, D.36673,
	uxtb	r2, r1	@ tmp463, tmp462
	cmp	r2, #1	@ tmp463,
	bls	.L410	@,
	movw	ip, #22039	@ tmp489,
	mov	r0, r5	@, tmp623
	mov	r6, #0	@ tmp490,
	strb	r6, [r4, ip]	@ tmp490, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp493,
	movt	r1, #:upper16:g_event_report	@ tmp493,
	ldr	r3, [r1, #0]	@ g_event_report.1671, g_event_report
	cmp	r3, r6	@ g_event_report.1671,
	mov	r5, r0	@ BitUsed,
	beq	.L347	@,
	movw	lr, #22960	@ tmp494,
	mov	r2, r6	@, tmp490
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1671
.L347:
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L316	@
.L410:
	cmp	r7, #2	@ D.36673,
	beq	.L344	@,
.L401:
	mov	r0, r5	@, tmp623
	movw	r5, #22039	@ tmp482,
	mov	r6, #0	@ tmp483,
	strb	r6, [r4, r5]	@ tmp483, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp486,
	movt	r0, #:upper16:g_event_report	@ tmp486,
	ldr	r3, [r0, #0]	@ g_event_report.1668, g_event_report
	cmp	r3, r6	@ g_event_report.1668,
	beq	.L346	@,
	movw	lr, #22960	@ tmp487,
	mov	r2, r6	@, tmp483
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1668
.L346:
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L316	@
.L407:
	movw	lr, #22039	@ tmp441,
	mov	r0, r5	@, tmp623
	strb	r7, [r4, lr]	@ D.36660, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp445,
	movt	r2, #:upper16:g_event_report	@ tmp445,
	ldr	r3, [r2, #0]	@ g_event_report.1662, g_event_report
	cmp	r3, #0	@ g_event_report.1662,
	beq	.L337	@,
	movw	r1, #22960	@ tmp446,
	mov	r2, r7	@, D.36660
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1662
	b	.L337	@
.L348:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20014	@ tmp507,
	uxtb	r7, r0	@ D.36722,
	strb	r7, [r4, ip]	@ D.36722, <variable>.MP4Vol.quant_type
	cmp	r7, #0	@ D.36722,
	bne	.L411	@,
.L350:
	movw	r3, #20001	@ tmp532,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L356	@,
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #20017	@ tmp535,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.quarter_sample
.L357:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	ip, #20018	@ tmp541,
	uxtb	r7, r0	@ D.36751,
	strb	r7, [r4, ip]	@ D.36751, <variable>.MP4Vol.complexity_estimation_disable
	cmp	r7, #0	@ D.36751,
	movweq	r1, #:lower16:.LC18	@,
	moveq	r0, #1	@,
	movteq	r1, #:upper16:.LC18	@,
	beq	.L394	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20019	@ tmp551,
	mov	r1, #1	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.resync_marker_disable
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20020	@ tmp554,
	uxtb	r7, r0	@ D.36762,
	strb	r7, [r4, r2]	@ D.36762, <variable>.MP4Vol.data_partitioned
	cmp	r7, #0	@ D.36762,
	movwne	r1, #:lower16:.LC19	@,
	movne	r0, #1	@,
	movtne	r1, #:upper16:.LC19	@,
	bne	.L402	@,
	movw	r0, #20001	@ tmp563,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L360	@,
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20021	@ tmp566,
	uxtb	r8, r0	@ D.36773,
	strb	r8, [r4, ip]	@ D.36773, <variable>.MP4Vol.newpred_enable
	cmp	r8, #0	@ D.36773,
	beq	.L361	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	mov	r0, #1	@,
.L394:
	bl	dprint_vfmw	@
	movw	r3, #22039	@ tmp569,
	strb	r7, [r4, r3]	@ D.36762, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp623
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp573,
	movt	r2, #:upper16:g_event_report	@ tmp573,
	ldr	r3, [r2, #0]	@ g_event_report.1681, g_event_report
	cmp	r3, #0	@ g_event_report.1681,
	mov	r5, r0	@ BitUsed,
	beq	.L316	@,
	movw	lr, #22960	@ tmp574,
	mov	r2, r7	@, D.36762
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1681
	b	.L316	@
.L356:
	movw	lr, #20017	@ tmp537,
	mov	r0, #0	@ tmp538,
	strb	r0, [r4, lr]	@ tmp538, <variable>.MP4Vol.quarter_sample
	b	.L357	@
.L344:
	mov	r1, #6	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r3, #20024	@ tmp472,
	mov	r1, r7	@, D.36673
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_warping_points
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20025	@ tmp475,
	mov	r1, #1	@,
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.sprite_warping_accuracy
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vol.sprite_enable, <variable>.MP4Vol.sprite_enable
	movw	r3, #20026	@ tmp478,
	cmp	ip, #2	@ <variable>.MP4Vol.sprite_enable,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_brightness_change
	bne	.L401	@,
	b	.L340	@
.L409:
	mov	r0, r5	@, tmp623
	movw	r5, #22039	@ tmp455,
	strb	sl, [r4, r5]	@ tmp453, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	ip, #:lower16:g_event_report	@ tmp459,
	movt	ip, #:upper16:g_event_report	@ tmp459,
	ldr	r3, [ip, #0]	@ g_event_report.1664, g_event_report
	cmp	r3, #0	@ g_event_report.1664,
	mov	r5, r0	@ BitUsed,
	beq	.L342	@,
	movw	lr, #22960	@ tmp460,
	mov	r2, sl	@, tmp453
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1664
.L342:
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L316	@
.L411:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20015	@ tmp510,
	uxtb	r3, r0	@ D.36727,
	strb	r3, [r4, r2]	@ D.36727, <variable>.MP4Vol.load_intra_quant_mat
	cmp	r3, #0	@ D.36727,
	movweq	r2, #:lower16:.LANCHOR0	@ tmp620,
	movteq	r2, #:upper16:.LANCHOR0	@ tmp620,
	bne	.L412	@,
.L353:
	add	r1, r3, #4	@ tmp625, ivtmp.1624,
	add	ip, r4, r3	@ tmp515, pCtx, ivtmp.1624
	ldr	lr, [r2, r3]	@ tmp519, default_intra_matrix
	add	r7, r4, r1	@ tmp627, pCtx, tmp625
	add	r3, r1, #4	@ ivtmp.1624, tmp625,
	ldr	r0, [r2, r1]	@ tmp630, default_intra_matrix
	add	ip, ip, #19968	@ tmp517, tmp515,
	add	r1, r7, #19968	@ tmp628, tmp627,
	cmp	r3, #256	@ ivtmp.1624,
	str	lr, [ip, #120]	@ tmp519, <variable>.MP4Vol.intra_quant_mat
	str	r0, [r1, #120]	@ tmp630, <variable>.MP4Vol.intra_quant_mat
	bne	.L353	@,
.L352:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	r2, #20016	@ tmp521,
	uxtb	r3, r0	@ D.36737,
	strb	r3, [r4, r2]	@ D.36737, <variable>.MP4Vol.load_nonintra_quant_mat
	cmp	r3, #0	@ D.36737,
	ldreq	r1, .L415	@ tmp622,
	bne	.L413	@,
.L355:
	add	r2, r3, #4	@ tmp624, ivtmp.1614,
	add	ip, r4, r3	@ tmp526, pCtx, ivtmp.1614
	ldr	lr, [r1, r3]	@ tmp531, default_inter_matrix
	add	r7, r4, r2	@ tmp632, pCtx, tmp624
	add	r3, r2, #4	@ ivtmp.1614, tmp624,
	ldr	r0, [r1, r2]	@ tmp635, default_inter_matrix
	add	ip, ip, #20224	@ tmp528, tmp526,
	add	r2, r7, #20224	@ tmp633, tmp632,
	cmp	r3, #256	@ ivtmp.1614,
	str	lr, [ip, #120]	@ tmp531, <variable>.MP4Vol.nonintra_quant_mat
	str	r0, [r2, #120]	@ tmp635, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L355	@,
	b	.L350	@
.L361:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp623
	bl	BsGet	@
	movw	ip, #20022	@ tmp576,
	uxtb	r1, r0	@ D.36782,
	strb	r1, [r4, ip]	@ D.36782, <variable>.MP4Vol.reduced_resolution_vop_enable
	cmp	r1, #0	@ D.36782,
	bne	.L414	@,
.L362:
	mov	r0, r5	@, tmp623
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20023	@ tmp592,
	uxtb	ip, r0	@ D.36792,
	strb	ip, [r4, r2]	@ D.36792, <variable>.MP4Vol.scalability
	cmp	ip, #0	@ D.36792,
	beq	.L363	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #1	@,
.L402:
	bl	dprint_vfmw	@
	movw	r0, #22039	@ tmp595,
	mov	r6, #0	@ tmp596,
	strb	r6, [r4, r0]	@ tmp596, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp623
	b	.L396	@
.L363:
	movw	lr, #22040	@ tmp607,
	sub	r2, lr, #1	@ tmp601, tmp601,
	movw	ip, #21269	@ tmp604,
	add	r0, r4, #20480	@, pCtx,
	mov	r3, #1	@ tmp602,
	mov	r1, r6	@, tmp621
	strb	r3, [r4, r2]	@ tmp602, <variable>.MP4SyntaxState.vol_decode_right
	add	r0, r0, #124	@,,
	strb	r3, [r4, lr]	@ tmp602, <variable>.MP4SyntaxState.last_vol_decode_right
	mov	r2, #604	@,
	strb	r3, [r4, ip]	@ tmp602, <variable>.MP4Syntax.vol_decode_over
	bl	memcpy	@
	mov	r0, r5	@, tmp623
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L316	@
.L414:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	movw	r2, #22039	@ tmp579,
	mov	r0, r5	@, tmp623
	strb	r8, [r4, r2]	@ D.36773, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp583,
	movt	r0, #:upper16:g_event_report	@ tmp583,
	ldr	r3, [r0, #0]	@ g_event_report.1683, g_event_report
	cmp	r3, #0	@ g_event_report.1683,
	beq	.L316	@,
	movw	lr, #22960	@ tmp584,
	mov	r2, r8	@, D.36773
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1683
	b	.L316	@
.L360:
	movw	r1, #20022	@ tmp588,
	sub	r3, r1, #1	@ tmp585, tmp585,
	strb	r7, [r4, r1]	@ D.36762, <variable>.MP4Vol.reduced_resolution_vop_enable
	strb	r7, [r4, r3]	@ D.36762, <variable>.MP4Vol.newpred_enable
	b	.L362	@
.L412:
	add	lr, r4, #19968	@, pCtx,
	mov	r0, r5	@, tmp623
	add	r1, lr, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L352	@
.L413:
	add	r3, r4, #20224	@, pCtx,
	mov	r0, r5	@, tmp623
	add	r1, r3, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L350	@
.L416:
	.align	2
.L415:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Vol, .-Mp4_Syntax_Vol
	.align	2
	.global	Mp4_Syntax_Vop
	.type	Mp4_Syntax_Vop, %function
Mp4_Syntax_Vop:
	.fnstart
.LFB1373:
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
	movw	r5, #15612	@ tmp184,
	ldr	r3, [r0, r5]	@ D.36275, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r1	@ ptr, ptr
	mov	r6, r2	@ len, len
	cmp	r3, #0	@ D.36275,
	bne	.L468	@,
	movw	r1, #21269	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	bne	.L469	@,
.L420:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L468:
	mov	r2, r3	@, D.36275
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	movw	r1, #21269	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	mov	r3, #0	@ tmp187,
	str	r3, [r4, r5]	@ tmp187, <variable>.Mp4DecParam.SlcNum
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	beq	.L420	@,
.L469:
	sub	r5, fp, #72	@ tmp437,,
	add	r7, r4, #20992	@ tmp436, pCtx,
	add	r7, r7, #216	@ tmp436, tmp436,
	mov	r1, r8	@, ptr
	mov	r2, r6	@, len
	mov	r0, r5	@, tmp437
	bl	BsInit	@
	movw	sl, #22041	@ tmp196,
	mov	r0, r7	@, tmp436
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r2, #0	@ tmp197,
	mov	r1, #32	@,
	strb	r2, [r4, sl]	@ tmp197, <variable>.MP4SyntaxState.vop_decode_right
	mov	r0, r5	@, tmp437
	movw	r8, #21208	@ tmp201,
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	uxtb	r2, r0	@ D.36291,
	mov	r0, #18	@,
	strb	r2, [r4, r8]	@ D.36291, <variable>.MP4Vop.vop_coding_type
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ D.36293, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #3	@ D.36293,
	beq	.L470	@,
.L421:
	movw	r0, #21275	@ tmp216,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.36307, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.36307,
	beq	.L471	@,
	cmp	r3, #2	@ D.36307,
	beq	.L425	@,
.L424:
	movw	ip, #22600	@ tmp218,
	ldr	r1, [r4, ip]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	r1, #1	@ <variable>.IPVopErr,
	beq	.L472	@,
.L426:
	mov	r6, r6, asl #3	@ D.36322, len,
	mov	sl, #0	@ i,
	b	.L429	@
.L474:
	bl	BsPos	@
	mov	r1, #1	@,
	add	sl, sl, r1	@ i, i,
	cmp	r0, r6	@, D.36322
	mov	r0, r5	@, tmp437
	bgt	.L463	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp437
	beq	.L427	@,
	bl	BsPos	@
	add	sl, sl, #1	@ i, i,
	cmp	r0, r6	@, D.36322
	bgt	.L463	@,
	cmp	sl, #6400	@ i,
	beq	.L473	@,
.L429:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp437
	bne	.L474	@,
.L427:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36331,
	beq	.L467	@,
	movw	r2, #21376	@ tmp234,
	ldr	r1, [r4, r2]	@ D.36338, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.36338,
	bne	.L475	@,
.L433:
	movw	r3, #21980	@ tmp236,
	movw	r8, #21984	@ tmp237,
	str	r1, [r4, r8]	@ time_increment, <variable>.MP4Syntax.time_increment
	mov	r0, r5	@, tmp437
	str	sl, [r4, r3]	@ i, <variable>.MP4Syntax.time_incr
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36343,
	beq	.L467	@,
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21209	@ tmp248,
	uxtb	ip, r0	@ D.36350,
	strb	ip, [r4, r2]	@ D.36350, <variable>.MP4Vop.vop_coded
	cmp	ip, #0	@ D.36350,
	beq	.L476	@,
	movw	r8, #21208	@ tmp264,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ temp.1739, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #1	@ temp.1739,
	beq	.L436	@,
	cmp	r3, #3	@ temp.1739,
	beq	.L477	@,
.L437:
	movw	r3, #21210	@ tmp270,
	mov	r2, #0	@ tmp271,
	strb	r2, [r4, r3]	@ tmp271, <variable>.MP4Vop.vop_rounding_type
.L438:
	movw	lr, #21316	@ tmp276,
	movw	r0, #21211	@ tmp273,
	ldrb	r8, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape, <variable>.MP4Syntax.syn_vol.video_object_layer_shape
	mov	r1, #0	@ tmp274,
	strb	r1, [r4, r0]	@ tmp274, <variable>.MP4Vop.vop_reduced_resolution
	cmp	r8, #2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape,
	beq	.L439	@,
	mov	r0, r5	@, tmp437
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r2, #20010	@ tmp281,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vol.interlaced
	movw	ip, #21212	@ tmp279,
	cmp	r3, #0	@ <variable>.MP4Vol.interlaced,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.intra_dc_vlc_thr
	bne	.L478	@,
	movw	lr, #21214	@ tmp292,
	movw	r0, #21213	@ tmp289,
	mov	r1, #2	@ tmp290,
	strb	r3, [r4, lr]	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vop.alternate_vertical_scan_flag
	strb	r1, [r4, r0]	@ tmp290, <variable>.MP4Vop.top_field_first
.L441:
	movw	r8, #21320	@ tmp295,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	sub	r2, r3, #1	@ tmp298, <variable>.MP4Syntax.syn_vol.sprite_enable,
	uxtb	ip, r2	@ tmp299, tmp298
	cmp	ip, #1	@ tmp299,
	bls	.L479	@,
.L442:
	mov	r0, r5	@, tmp437
	mov	r1, #5	@,
	bl	BsGet	@
	movw	r8, #21215	@ tmp329,
	uxtb	r2, r0	@ D.36414,
	strb	r2, [r4, r8]	@ D.36414, <variable>.MP4Vop.vop_quant
	cmp	r2, #0	@ D.36414,
	moveq	r2, #1	@ tmp332,
	streqb	r2, [r4, r8]	@ tmp332, <variable>.MP4Vop.vop_quant
	movw	r8, #21208	@ tmp334,
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #0	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L480	@,
.L439:
	mov	r8, r7	@ tmp376, tmp436
	add	r7, r4, #21760	@ tmp371, pCtx,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp376,,,,
	add	ip, r7, #152	@ tmp371, tmp371,
	mov	lr, #19968	@ tmp363,
	movw	r7, #15612	@ tmp367,
	ldr	r9, [r4, lr]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	sl, ip	@ tmp375, tmp371
	stmia	sl!, {r0, r1, r2, r3}	@ tmp375,,,,
	orr	ip, r9, #2	@ tmp366, <variable>.PicIntegrality,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp447,,,,
	str	ip, [r4, lr]	@ tmp366, <variable>.PicIntegrality
	ldr	lr, [r4, r7]	@, <variable>.Mp4DecParam.SlcNum
	add	ip, lr, #1	@ tmp370,,
	str	ip, [r4, r7]	@ tmp370, <variable>.Mp4DecParam.SlcNum
	movw	ip, #22041	@ tmp360,
	mov	lr, #1	@ tmp361,
	strb	lr, [r4, ip]	@ tmp361, <variable>.MP4SyntaxState.vop_decode_right
	mov	lr, sl	@ tmp448, tmp375
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp449,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp449,,,
	stmia	lr, {r0, r1, r2}	@ tmp450,,,
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	movw	r2, #15709	@ tmp398,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22056	@ tmp385,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp380, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp378, BitUsed, D.36322
	mov	r3, r0, lsr #29	@ tmp381, tmp380,
	add	r0, r5, #7	@ tmp393, BitUsed,
	add	ip, r5, r3	@ tmp382, BitUsed, tmp381
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp383, tmp382,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movw	r1, #22048	@ tmp395,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp384, tmp381, tmp383
	add	r3, r3, ip	@ tmp389, tmp384, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp378, <variable>.bit_len
	add	lr, r1, r0, asr #3	@, tmp397, <variable>.BitsObj.phy_addr, BitUsed,
	strb	r3, [r4, #1282]	@ tmp389, <variable>.bit_offset
	str	lr, [r4, #1292]	@ tmp397, <variable>.phy_address
	bne	.L454	@,
	movw	r0, #15789	@ tmp400,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L481	@,
.L454:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #1296]	@ tmp409, <variable>.phy_address
	str	r0, [r4, #1288]	@ tmp409, <variable>.bit_len
	strb	r0, [r4, #1283]	@ tmp409, <variable>.bit_offset
.L455:
	movw	lr, #19964	@ tmp428,
	movw	ip, #21208	@ tmp413,
	movw	r0, #21217	@ tmp416,
	movw	r1, #21216	@ tmp419,
	movw	r3, #21215	@ tmp422,
	ldr	r2, [r4, lr]	@ D.36468, <variable>.StreamIDNum
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r2, #0	@ D.36468,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	movw	r3, #21212	@ tmp425,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	ip, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	r0, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r1, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L482	@,
.L456:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L420	@
.L470:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp205,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp205,
	ldr	r8, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r8, r8, #8	@ tmp206, g_VdmCharacter,
	bne	.L421	@,
	mov	r0, r5	@, tmp437
	strb	r8, [r4, sl]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp212,
	movt	r3, #:upper16:g_event_report	@ tmp212,
	ldr	r3, [r3, #0]	@ g_event_report.470, g_event_report
	cmp	r3, #0	@ g_event_report.470,
	mov	r5, r0	@ BitUsed,
	beq	.L422	@,
	movw	lr, #22960	@ tmp213,
	mov	r2, r8	@, tmp206
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.470
.L422:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L420	@
.L471:
	cmp	r2, #0	@ D.36293,
	beq	.L424	@,
.L425:
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L420	@
.L473:
	movw	r2, #22041	@ tmp431,
	mov	r0, r5	@, tmp437
	mov	r5, #0	@ tmp432,
	strb	r5, [r4, r2]	@ tmp432, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, sl	@, i
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L420	@
.L463:
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L420	@
.L472:
	cmp	r2, #0	@ D.36293,
	beq	.L426	@,
	b	.L425	@
.L467:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #22041	@ tmp240,
	mov	r0, r5	@, tmp437
	strb	r8, [r4, r1]	@ D.36343, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp244,
	movt	r0, #:upper16:g_event_report	@ tmp244,
	ldr	r3, [r0, #0]	@ g_event_report.1737, g_event_report
	cmp	r3, #0	@ g_event_report.1737,
	beq	.L420	@,
	movw	lr, #22960	@ tmp245,
	mov	r2, r8	@, D.36343
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1737
	b	.L420	@
.L475:
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	mov	r1, r0	@ time_increment,
	b	.L433	@
.L476:
	mov	r3, #19968	@ tmp259,
	movw	ip, #21912	@ tmp256,
	ldr	r1, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	lr, #4	@ tmp251,
	mov	r0, r5	@, tmp437
	strb	lr, [r4, ip]	@ tmp251, <variable>.MP4Syntax.syn_vop.vop_coding_type
	orr	r2, r1, #128	@ tmp262, <variable>.PicIntegrality,
	movw	r1, #21208	@ tmp250,
	str	r2, [r4, r3]	@ tmp262, <variable>.PicIntegrality
	movw	r3, #22041	@ tmp253,
	mov	r5, #1	@ tmp254,
	strb	lr, [r4, r1]	@ tmp251, <variable>.MP4Vop.vop_coding_type
	strb	r5, [r4, r3]	@ tmp254, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L420	@
.L482:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L456	@
.L477:
	movw	lr, #21320	@ tmp265,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	bne	.L437	@,
.L436:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #21210	@ tmp268,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.vop_rounding_type
	b	.L438	@
.L480:
	mov	r0, r5	@, tmp437
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21216	@ tmp337,
	uxtb	sl, r0	@ D.36421,
	strb	sl, [r4, r3]	@ D.36421, <variable>.MP4Vop.vop_fcode_forward
	cmp	sl, #0	@ D.36421,
	beq	.L483	@,
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #2	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L439	@,
	mov	r0, r5	@, tmp437
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21217	@ tmp351,
	uxtb	r8, r0	@ D.36432,
	strb	r8, [r4, r3]	@ D.36432, <variable>.MP4Vop.vop_fcode_backward
	cmp	r8, #0	@ D.36432,
	bne	.L439	@,
	add	r3, r3, #824	@ tmp353, tmp353,
	mov	r0, r5	@, tmp437
	strb	r8, [r4, r3]	@ D.36432, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp357,
	movt	r2, #:upper16:g_event_report	@ tmp357,
	ldr	r3, [r2, #0]	@ g_event_report.1756, g_event_report
	cmp	r3, #0	@ g_event_report.1756,
	mov	r5, r0	@ BitUsed,
	beq	.L453	@,
	movw	r1, #22960	@ tmp358,
	mov	r2, r8	@, D.36432
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1756
.L453:
	movw	r1, #:lower16:.LC28	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L420	@
.L478:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r8, #21213	@ tmp284,
	mov	r1, #1	@,
	strb	r0, [r4, r8]	@, <variable>.MP4Vop.top_field_first
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r3, #21214	@ tmp287,
	strb	r0, [r4, r3]	@, <variable>.MP4Vop.alternate_vertical_scan_flag
	b	.L441	@
.L479:
	movw	r0, #21208	@ tmp300,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r1, #3	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L442	@,
	movw	ip, #21332	@ tmp302,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	lr, #0	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L442	@,
	add	r2, r4, #20992	@ ivtmp.1719, pCtx,
	mov	r9, #0	@,
	add	r8, r2, #252	@ ivtmp.1719, ivtmp.1719,
	str	r9, [fp, #-80]	@, %sfp
	str	r6, [fp, #-84]	@ D.36322, %sfp
.L449:
	mov	r0, r5	@, tmp437
	bl	bs_get_spritetrajectory	@
	subs	r6, r0, #0	@ length,
	moveq	sl, r6	@ x, length
	bne	.L484	@,
.L444:
	mov	lr, #22016	@,
	ldr	r0, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r0, #500	@ <variable>.MP4Syntax.divx_version,
	bne	.L445	@,
	movw	r2, #22020	@,
	movw	ip, #413	@,
	ldr	r9, [r4, r2]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r9, ip	@ <variable>.MP4Syntax.divx_build,
	beq	.L446	@,
.L445:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsSkip	@
.L446:
	mov	r0, r5	@, tmp437
	bl	bs_get_spritetrajectory	@
	subs	r9, r0, #0	@ length.1743,
	moveq	r6, r9	@ y, length.1743
	bne	.L485	@,
.L448:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsSkip	@
	str	r6, [r8, #4]	@ y, <variable>.y
	str	sl, [r8, #0]	@ x, <variable>.x
	add	r8, r8, #8	@ ivtmp.1719, ivtmp.1719,
	ldr	sl, [fp, #-80]	@, %sfp
	add	r6, sl, #1	@,,
	movw	sl, #21332	@,
	str	r6, [fp, #-80]	@, %sfp
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	r0, r6	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	bhi	.L449	@,
	ldr	r6, [fp, #-84]	@ D.36322, %sfp
	b	.L442	@
.L481:
	movw	r1, #15796	@ tmp402,
	movw	ip, #15792	@ tmp407,
	ldr	lr, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, lr, asl #3	@ tmp404, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp404, <variable>.bit_len
	str	r3, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L455	@
.L483:
	mov	r0, r5	@, tmp437
	movw	r5, #22041	@ tmp339,
	strb	sl, [r4, r5]	@ D.36421, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp343,
	movt	r1, #:upper16:g_event_report	@ tmp343,
	ldr	r3, [r1, #0]	@ g_event_report.1751, g_event_report
	cmp	r3, #0	@ g_event_report.1751,
	mov	r5, r0	@ BitUsed,
	beq	.L452	@,
	movw	lr, #22960	@ tmp344,
	mov	r2, sl	@, D.36421
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1751
.L452:
	movw	r0, #21208	@ tmp346,
	movw	r1, #:lower16:.LC27	@,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@, <variable>.MP4Vop.vop_coding_type
	movt	r1, #:upper16:.LC27	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L420	@
.L485:
	mov	r1, r9	@, length.1743
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	sub	r1, r9, #1	@ tmp320, length.1743,
	movs	r3, r0, asr r1	@, y,
	mov	r6, r0	@ y,
	moveq	lr, #1	@,
	moveq	r3, lr, asl r9	@ tmp322,,
	subeq	r3, r3, #1	@ tmp324, tmp322,
	eoreq	r6, r0, r3	@ D.36409, y, tmp324
	rsbeq	r6, r6, #0	@ y, D.36409
	b	.L448	@
.L484:
	mov	r1, r6	@, length
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	sub	r1, r6, #1	@ tmp307, length,
	movs	r3, r0, asr r1	@, x,
	mov	sl, r0	@ x,
	moveq	lr, #1	@,
	moveq	r3, lr, asl r6	@ tmp309,,
	subeq	r3, r3, #1	@ tmp311, tmp309,
	eoreq	sl, r0, r3	@ D.36396, x, tmp311
	rsbeq	sl, sl, #0	@ x, D.36396
	b	.L444	@
	.fnend
	.size	Mp4_Syntax_Vop, .-Mp4_Syntax_Vop
	.align	2
	.global	Mp4_Syntax_Vo
	.type	Mp4_Syntax_Vo, %function
Mp4_Syntax_Vo:
	.fnstart
.LFB1372:
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
	sub	r5, fp, #72	@ tmp275,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ len, len
	mov	r0, r5	@, tmp275
	mov	r6, #1	@ tmp160,
	bl	BsInit	@
	movw	ip, #21285	@ tmp159,
	movw	r3, #21286	@ tmp162,
	movw	r2, #21287	@ tmp165,
	strb	r6, [r4, ip]	@ tmp160, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	ip, #0	@ tmp157,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r3, #21288	@ tmp168,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	r2, #21289	@ tmp171,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	r3, #21290	@ tmp174,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_format
	movw	r2, #21291	@ tmp177,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_range
	movw	r0, #21304	@ tmp184,
	movw	r3, #21296	@ tmp180,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.colour_description
	movw	r1, #21284	@ tmp156,
	movw	r2, #21300	@ tmp182,
	str	ip, [r4, r0]	@ tmp157, <variable>.MP4Syntax.syn_vos.matrix_coefficients
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp157, <variable>.MP4Syntax.syn_vos.is_visual_object_identifier
	mov	r1, #32	@,
	str	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.colour_primaries
	str	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.transfer_characteristics
	bl	BsSkip	@
	mov	r0, r5	@, tmp275
	mov	r1, r6	@, tmp160
	bl	BsGet	@
	movw	r3, #19976	@ tmp188,
	uxtb	r0, r0	@ D.36199,
	strb	r0, [r4, r3]	@ D.36199, <variable>.MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.36199,
	movweq	r3, #19977	@ tmp196,
	streqb	r6, [r4, r3]	@ tmp160, <variable>.MP4Vos.visual_object_verid
	bne	.L494	@,
	mov	r0, r5	@, tmp275
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #19979	@ tmp200,
	uxtb	r6, r0	@ D.36209,
	strb	r6, [r4, r3]	@ D.36209, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36209,
	beq	.L495	@,
.L489:
	mov	r0, r5	@, tmp275
	movw	r5, #22037	@ tmp220,
	mov	r6, #0	@ tmp221,
	strb	r6, [r4, r5]	@ tmp221, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.466, g_event_report
	cmp	r3, r6	@ g_event_report.466,
	beq	.L491	@,
	movw	lr, #22960	@ tmp225,
	mov	r2, r6	@, tmp221
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.466
.L491:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L494:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19977	@ tmp191,
	mov	r1, #3	@,
	movw	r6, #19978	@ tmp194,
	strb	r0, [r4, r2]	@, <variable>.MP4Vos.visual_object_verid
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, r6]	@, <variable>.MP4Vos.visual_object_priority
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19979	@ tmp200,
	uxtb	r6, r0	@ D.36209,
	strb	r6, [r4, r3]	@ D.36209, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36209,
	bne	.L489	@,
.L495:
	mov	r1, r6	@, D.36209
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19980	@ tmp203,
	uxtb	r1, r0	@ D.36214,
	strb	r1, [r4, ip]	@ D.36214, <variable>.MP4Vos.video_signal_type
	cmp	r1, #0	@ D.36214,
	bne	.L496	@,
.L490:
	movw	r1, #22037	@ tmp227,
	mov	ip, #1	@ tmp228,
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp228, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	cmp	r0, r7, asl #3	@, len,
	bgt	.L492	@,
	movw	r8, #19976	@ tmp233,
	movw	r6, #19977	@ tmp237,
	movw	lr, #19978	@ tmp241,
	movw	ip, #19979	@ tmp245,
	movw	r0, #19980	@ tmp249,
	movw	r1, #19981	@ tmp253,
	movw	r2, #19982	@ tmp257,
	movw	sl, #19983	@ tmp261,
	movw	r7, #19992	@ tmp268,
	ldrb	r9, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vos.is_visual_object_identifier, <variable>.MP4Vos.is_visual_object_identifier
	ldrb	r8, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Vos.visual_object_verid
	movw	r3, #19988	@ tmp265,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Vos.visual_object_priority
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Vos.visual_object_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Vos.video_signal_type
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_format, <variable>.MP4Vos.video_format
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_range, <variable>.MP4Vos.video_range
	ldrb	r2, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Vos.colour_description, <variable>.MP4Vos.colour_description
	ldr	sl, [r4, r7]	@, <variable>.MP4Vos.transfer_characteristics
	movw	r7, #19996	@ tmp271,
	ldr	r3, [r4, r3]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Vos.colour_primaries
	str	sl, [fp, #-80]	@, %sfp
	movw	sl, #21284	@ tmp232,
	ldr	r7, [r4, r7]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Vos.matrix_coefficients
	strb	r9, [r4, sl]	@ <variable>.MP4Vos.is_visual_object_identifier, <variable>.MP4Syntax.syn_vos.is_visual_object_identifier
	movw	sl, #21285	@ tmp236,
	strb	r8, [r4, sl]	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	movw	r8, #21304	@ tmp270,
	str	r7, [r4, r8]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Syntax.syn_vos.matrix_coefficients
	movw	r7, #21286	@ tmp240,
	strb	r6, [r4, r7]	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r6, #21287	@ tmp244,
	strb	lr, [r4, r6]	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	lr, #21288	@ tmp248,
	strb	ip, [r4, lr]	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	lr, #21289	@ tmp252,
	strb	r0, [r4, lr]	@ <variable>.MP4Vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	movw	ip, #21290	@ tmp256,
	movw	lr, #21291	@ tmp260,
	movw	r0, #21296	@ tmp264,
	str	r3, [r4, r0]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Syntax.syn_vos.colour_primaries
	movw	r3, #21300	@ tmp267,
	strb	r1, [r4, ip]	@ <variable>.MP4Vos.video_range, <variable>.MP4Syntax.syn_vos.video_range
	strb	r2, [r4, lr]	@ <variable>.MP4Vos.colour_description, <variable>.MP4Syntax.syn_vos.colour_description
	ldr	r2, [fp, #-80]	@, %sfp
	str	r2, [r4, r3]	@, <variable>.MP4Syntax.syn_vos.transfer_characteristics
.L492:
	mov	r0, r5	@, tmp275
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L491	@
.L496:
	mov	r1, #3	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19981	@ tmp206,
	mov	r1, r6	@, D.36209
	strb	r0, [r4, ip]	@, <variable>.MP4Vos.video_format
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19982	@ tmp209,
	mov	r1, r6	@, D.36209
	strb	r0, [r4, r3]	@, <variable>.MP4Vos.video_range
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19983	@ tmp212,
	uxtb	r0, r0	@ D.36223,
	strb	r0, [r4, r2]	@ D.36223, <variable>.MP4Vos.colour_description
	cmp	r0, #0	@ D.36223,
	beq	.L490	@,
	mov	r1, #8	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19988	@ tmp215,
	mov	r1, #8	@,
	str	r0, [r4, r3]	@, <variable>.MP4Vos.colour_primaries
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19992	@ tmp217,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vos.transfer_characteristics
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r1, #19996	@ tmp219,
	str	r0, [r4, r1]	@, <variable>.MP4Vos.matrix_coefficients
	b	.L490	@
	.fnend
	.size	Mp4_Syntax_Vo, .-Mp4_Syntax_Vo
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
.LFB1370:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #15612	@ tmp152,
	ldr	r3, [r0, r5]	@ D.35962, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ptr, ptr
	mov	r6, r2	@ len, len
	cmp	r3, #0	@ D.35962,
	bne	.L520	@,
.L498:
	sub	r5, fp, #56	@ tmp313,,
	mov	r2, r6	@, len
	mov	r1, r7	@, ptr
	mov	r0, r5	@, tmp313
	bl	BsInit	@
	add	ip, r4, #20992	@, pCtx,
	add	r0, ip, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r1, #22	@,
	mov	r0, r5	@, tmp313
	bl	BsSkip	@
	mov	r1, #13	@,
	mov	r0, r5	@, tmp313
	bl	BsSkip	@
	mov	r1, #3	@,
	mov	r0, r5	@, tmp313
	bl	BsGet	@
	movw	r2, #21218	@ tmp162,
	uxtb	r1, r0	@ D.35974,
	strb	r1, [r4, r2]	@ D.35974, <variable>.MP4Vop.source_format
	sub	r0, r1, #1	@ tmp164, D.35974,
	cmp	r0, #3	@ tmp164,
	ldrls	pc, [pc, r0, asl #2]	@ tmp164
	b	.L499	@
.L504:
	.word	.L500
	.word	.L501
	.word	.L502
	.word	.L503
.L503:
	movw	r3, #21219	@ tmp195,
	mov	lr, #18	@ tmp196,
	movw	ip, #21220	@ tmp198,
	strb	lr, [r4, r3]	@ tmp196, <variable>.MP4Vop.num_gobs_invop
	movw	r1, #21976	@ tmp201,
	movw	r3, #21972	@ tmp203,
	mov	r2, #88	@ tmp199,
	mov	r0, #704	@ tmp202,
	mov	lr, #576	@ tmp204,
	strb	r2, [r4, ip]	@ tmp199, <variable>.MP4Vop.num_mb_ingob
	str	r0, [r4, r1]	@ tmp202, <variable>.MP4Syntax.image_width
	str	lr, [r4, r3]	@ tmp204, <variable>.MP4Syntax.image_height
.L505:
	mov	r0, r5	@, tmp313
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #21275	@ tmp215,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.coding_mode, <variable>.MP4Syntax.coding_mode
	movw	r2, #21208	@ tmp213,
	cmp	ip, #2	@ <variable>.MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.35984,
	strb	r0, [r4, r2]	@ D.35984, <variable>.MP4Vop.vop_coding_type
	beq	.L507	@,
	movw	r1, #22600	@ tmp217,
	ldr	lr, [r4, r1]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	lr, #1	@ <variable>.IPVopErr,
	bne	.L508	@,
	cmp	r0, #0	@ D.35984,
	bne	.L507	@,
.L508:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp313
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp313
	movw	r7, #21215	@ tmp222,
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r6, asl #3	@ D.36002, len,
	uxtb	r0, r0	@ D.35994,
	strb	r0, [r4, r7]	@ D.35994, <variable>.MP4Vop.vop_quant
	cmp	r0, #0	@ D.35994,
	mov	r0, r5	@, tmp313
	moveq	r2, #1	@ tmp225,
	streqb	r2, [r4, r7]	@ tmp225, <variable>.MP4Vop.vop_quant
	bl	BsSkip	@
	mov	r7, #0	@ i,
.L512:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp313
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L521	@,
	add	r7, r7, #1	@ i, i,
.L517:
	mov	r0, r5	@, tmp313
	bl	BsPos	@
	cmp	r7, #15	@ i,
	bls	.L513	@,
	mov	r0, r5	@, tmp313
	movw	r5, #22041	@ tmp238,
	mov	r6, #0	@ tmp239,
	strb	r6, [r4, r5]	@ tmp239, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp242,
	movt	r2, #:upper16:g_event_report	@ tmp242,
	ldr	r3, [r2, #0]	@ g_event_report.1811, g_event_report
	cmp	r3, r6	@ g_event_report.1811,
	mov	r5, r0	@ BitUsed,
	beq	.L506	@,
	movw	ip, #22960	@ tmp243,
	mov	r2, r6	@, tmp239
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1811
.L506:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L502:
	movw	ip, #21219	@ tmp185,
	mov	r2, #18	@ tmp186,
	movw	r1, #21220	@ tmp188,
	strb	r2, [r4, ip]	@ tmp186, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21976	@ tmp191,
	movw	ip, #21972	@ tmp193,
	mov	r0, #22	@ tmp189,
	mov	lr, #352	@ tmp192,
	mov	r2, #288	@ tmp194,
	strb	r0, [r4, r1]	@ tmp189, <variable>.MP4Vop.num_mb_ingob
	str	lr, [r4, r3]	@ tmp192, <variable>.MP4Syntax.image_width
	str	r2, [r4, ip]	@ tmp194, <variable>.MP4Syntax.image_height
	b	.L505	@
.L501:
	movw	r1, #21219	@ tmp175,
	mov	r0, #9	@ tmp176,
	movw	r3, #21220	@ tmp178,
	strb	r0, [r4, r1]	@ tmp176, <variable>.MP4Vop.num_gobs_invop
	movw	ip, #21976	@ tmp181,
	movw	r1, #21972	@ tmp183,
	mov	lr, #11	@ tmp179,
	mov	r2, #176	@ tmp182,
	mov	r0, #144	@ tmp184,
	strb	lr, [r4, r3]	@ tmp179, <variable>.MP4Vop.num_mb_ingob
	str	r2, [r4, ip]	@ tmp182, <variable>.MP4Syntax.image_width
	str	r0, [r4, r1]	@ tmp184, <variable>.MP4Syntax.image_height
	b	.L505	@
.L500:
	movw	r3, #21219	@ tmp165,
	mov	lr, #6	@ tmp166,
	movw	ip, #21220	@ tmp168,
	strb	lr, [r4, r3]	@ tmp166, <variable>.MP4Vop.num_gobs_invop
	movw	r1, #21976	@ tmp171,
	movw	r3, #21972	@ tmp173,
	mov	r2, #8	@ tmp169,
	mov	r0, #128	@ tmp172,
	mov	lr, #96	@ tmp174,
	strb	r2, [r4, ip]	@ tmp169, <variable>.MP4Vop.num_mb_ingob
	str	r0, [r4, r1]	@ tmp172, <variable>.MP4Syntax.image_width
	str	lr, [r4, r3]	@ tmp174, <variable>.MP4Syntax.image_height
	b	.L505	@
.L499:
	mov	r0, r5	@, tmp313
	movw	r5, #22041	@ tmp205,
	mov	r6, #0	@ tmp206,
	strb	r6, [r4, r5]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp209,
	movt	r0, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r0, #0]	@ g_event_report.438, g_event_report
	cmp	r3, r6	@ g_event_report.438,
	beq	.L506	@,
	movw	r1, #22960	@ tmp210,
	mov	r2, r6	@, tmp206
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.438
	b	.L506	@
.L521:
	mov	r0, r5	@, tmp313
	add	r7, r7, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r6	@, D.36002
	mov	r0, r5	@, tmp313
	bgt	.L522	@,
	bl	BsSkip	@
	cmp	r7, #15	@ i,
	bls	.L512	@,
	b	.L517	@
.L520:
	mov	r2, r3	@, D.35962
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, r5]	@ tmp155, <variable>.Mp4DecParam.SlcNum
	b	.L498	@
.L513:
	mov	r2, #19968	@ tmp248,
	movw	r3, #15612	@ tmp252,
	ldr	lr, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	ldr	r1, [r4, r3]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	orr	r0, lr, #2	@ tmp251, <variable>.PicIntegrality,
	movw	lr, #21216	@ tmp256,
	str	r0, [r4, r2]	@ tmp251, <variable>.PicIntegrality
	mov	r0, r5	@, tmp313
	movw	r5, #22041	@ tmp245,
	add	ip, r1, #1	@ tmp255, <variable>.Mp4DecParam.SlcNum,
	str	ip, [r4, r3]	@ tmp255, <variable>.Mp4DecParam.SlcNum
	mov	r3, #1	@ tmp246,
	strb	r3, [r4, lr]	@ tmp246, <variable>.MP4Vop.vop_fcode_forward
	strb	r3, [r4, r5]	@ tmp246, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #15709	@ tmp280,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22056	@ tmp267,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp262, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp260, BitUsed, D.36002
	mov	r3, r0, lsr #29	@ tmp263, tmp262,
	add	r0, r5, #7	@ tmp275, BitUsed,
	add	ip, r5, r3	@ tmp264, BitUsed, tmp263
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp265, tmp264,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movw	r1, #22048	@ tmp277,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp266, tmp263, tmp265
	add	lr, r3, ip	@ tmp271, tmp266, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp260, <variable>.bit_len
	add	r3, r1, r0, asr #3	@, tmp279, <variable>.BitsObj.phy_addr, BitUsed,
	strb	lr, [r4, #1282]	@ tmp271, <variable>.bit_offset
	str	r3, [r4, #1292]	@ tmp279, <variable>.phy_address
	beq	.L523	@,
.L514:
	mov	r3, #0	@ tmp291,
	str	r3, [r4, #1296]	@ tmp291, <variable>.phy_address
	str	r3, [r4, #1288]	@ tmp291, <variable>.bit_len
	strb	r3, [r4, #1283]	@ tmp291, <variable>.bit_offset
.L515:
	movw	lr, #19964	@ tmp310,
	movw	ip, #21208	@ tmp295,
	movw	r0, #21217	@ tmp298,
	movw	r1, #21216	@ tmp301,
	movw	r3, #21215	@ tmp304,
	ldr	r2, [r4, lr]	@ D.36044, <variable>.StreamIDNum
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r2, #0	@ D.36044,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	movw	r3, #21212	@ tmp307,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	ip, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	r0, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r1, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L524	@,
.L516:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L506	@
.L507:
	mov	r0, r5	@, tmp313
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L506	@
.L523:
	movw	r3, #15789	@ tmp282,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L514	@,
	movw	ip, #15796	@ tmp284,
	movw	lr, #15792	@ tmp289,
	ldr	r1, [r4, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r0, [r4, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, r1, asl #3	@ tmp286, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp286, <variable>.bit_len
	str	r0, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L515	@
.L524:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L516	@
.L522:
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L506	@
	.fnend
	.size	Mp4_Syntax_ShortHeader, .-Mp4_Syntax_ShortHeader
	.align	2
	.global	Mp4_Syntax_Gop
	.type	Mp4_Syntax_Gop, %function
Mp4_Syntax_Gop:
	.fnstart
.LFB1369:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #56	@ tmp142,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r4	@, tmp142
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r4	@, tmp142
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.35925,
	bne	.L526	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	movw	r0, #22038	@ tmp148,
	strb	r6, [r5, r0]	@ D.35925, <variable>.MP4SyntaxState.gop_decode_right
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp152,
	movt	r3, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [r3, #0]	@ g_event_report.435, g_event_report
	cmp	r3, #0	@ g_event_report.435,
	mov	r4, r0	@ BitUsed,
	beq	.L527	@,
	movw	r1, #22960	@ tmp153,
	mov	r2, r6	@, D.35925
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.435
.L527:
	mov	r0, r4	@, BitUsed
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L526:
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21270	@ tmp157,
	mov	r1, #1	@,
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.closed_gov
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	movw	r3, #22038	@ tmp162,
	movw	r2, #21271	@ tmp160,
	mov	ip, #1	@ tmp163,
	strb	ip, [r5, r3]	@ tmp163, <variable>.MP4SyntaxState.gop_decode_right
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.broken_link
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	b	.L527	@
	.fnend
	.size	Mp4_Syntax_Gop, .-Mp4_Syntax_Gop
	.align	2
	.global	NextStartCode
	.type	NextStartCode, %function
NextStartCode:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #64	@ tmp174,,
	mov	r5, r0	@ pMp4Syntax, pMp4Syntax
	mov	r7, r3	@ pStartCode, pStartCode
	mov	r0, r4	@, tmp174
	mov	r6, r2, asl #3	@ pretmp.1850, CodeLen,
	movw	r8, #438	@ tmp176,
	bl	BsInit	@
	mov	r0, #0	@ BitUsed.1861,
	b	.L540	@
.L534:
	cmp	lr, #256	@ tmp166,
	beq	.L541	@,
.L537:
	bl	BsSkip	@
	mov	r0, r4	@, tmp174
	bl	BsPos	@
.L540:
	rsb	r2, r0, r6	@ tmp170, BitUsed.1861, pretmp.1850
	mov	r1, #32	@,
	cmp	r2, #31	@ tmp170,
	mov	r0, r4	@, tmp174
	ble	.L542	@,
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.35839,
	cmp	r3, r8	@ D.35839, tmp176
	bic	r2, r0, #1020	@ tmp152, D.35839,
	bic	ip, r0, #15	@ tmp147, D.35839,
	bic	lr, r0, #255	@ tmp166, D.35839,
	bic	r2, r2, #3	@ tmp152, tmp152,
	mov	r0, r4	@, tmp174
	beq	.L531	@,
	cmp	ip, #288	@ tmp147,
	beq	.L531	@,
	cmp	r2, #32768	@ tmp152,
	bne	.L534	@,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.is_short_header, <variable>.is_short_header
	mov	r1, #8	@,
	mov	r0, r4	@, tmp174
	cmp	r3, #2	@ <variable>.is_short_header,
	bne	.L543	@,
	ldr	r3, [r5, #744]	@ <variable>.SH_num, <variable>.SH_num
	add	ip, r3, #1	@ D.35854, <variable>.SH_num,
	str	ip, [r5, #744]	@ D.35854, <variable>.SH_num
	cmp	ip, #18	@ D.35854,
	bls	.L537	@,
	mov	lr, #196	@ tmp160,
	mov	r1, #1	@ tmp161,
	str	lr, [r7, #0]	@ tmp160,* pStartCode
	mov	r0, r4	@, tmp174
	strb	r1, [r5, #9]	@ tmp161, <variable>.is_short_header
	bl	BsPos	@
	b	.L533	@
.L531:
	mov	ip, #2	@ tmp148,
	mov	r1, #0	@ tmp150,
	strb	ip, [r5, #9]	@ tmp148, <variable>.is_short_header
	mov	r0, r4	@, tmp174
	str	r1, [r5, #744]	@ tmp150, <variable>.SH_num
	str	r3, [r7, #0]	@ D.35839,* pStartCode
	bl	BsPos	@
.L533:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L542:
	mov	ip, #197	@ tmp171,
	str	ip, [r7, #0]	@ tmp171,* pStartCode
	bl	BsPos	@
	b	.L533	@
.L541:
	str	r3, [r7, #0]	@ D.35839,* pStartCode
	mov	r0, r4	@, tmp174
	bl	BsPos	@
	b	.L533	@
.L543:
	mov	r2, #1	@ tmp155,
	mov	lr, #196	@ tmp157,
	strb	r2, [r5, #9]	@ tmp155, <variable>.is_short_header
	str	lr, [r7, #0]	@ tmp157,* pStartCode
	bl	BsPos	@
	b	.L533	@
	.fnend
	.size	NextStartCode, .-NextStartCode
	.align	2
	.global	MPEG4DEC_GetImageBuffer
	.type	MPEG4DEC_GetImageBuffer, %function
MPEG4DEC_GetImageBuffer:
	.fnstart
.LFB1394:
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
	movw	r5, #22960	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38154,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.38157,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #22528	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #80	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38157,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MPEG4DEC_GetImageBuffer, .-MPEG4DEC_GetImageBuffer
	.align	2
	.global	MP4_SetImgFormat
	.type	MP4_SetImgFormat, %function
MP4_SetImgFormat:
	.fnstart
.LFB1391:
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
	movw	r1, #22960	@ tmp136,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #53728	@ tmp138,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #21976	@ tmp140,
	ldr	r3, [r4, r2]	@ D.37960, <variable>.MP4Syntax.image_width
	cmp	r3, #0	@ D.37960,
	bne	.L554	@,
	ldr	r2, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	str	r2, [r0, #152]	@ <variable>.image_width, <variable>.disp_width
	str	ip, [r0, #156]	@ <variable>.image_height, <variable>.disp_height
.L552:
	mov	lr, #8	@ tmp154,
	mov	r3, #0	@ tmp150,
	mov	ip, #2	@ tmp149,
	mov	r1, #1	@ tmp157,
	str	lr, [r0, #344]	@ tmp154, <variable>.ImageDnr.QP_U
	str	lr, [r0, #340]	@ tmp154, <variable>.ImageDnr.QP_Y
	strb	r3, [r0, #331]	@ tmp150, <variable>.ImageDnr.use_pic_qp_en
	str	ip, [r0, #336]	@ tmp149, <variable>.ImageDnr.video_standard
	strb	r1, [r0, #329]	@ tmp157, <variable>.ImageDnr.chroma_format_idc
	strb	r3, [r0, #324]	@ tmp150, <variable>.ImageDnr.pic_structure
	str	lr, [r0, #348]	@ tmp154, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L554:
	ldr	r1, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, r3	@ <variable>.image_width, D.37960
	strls	r1, [r0, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r0, #152]	@, D.37960, <variable>.disp_width
	movw	r3, #21972	@ tmp143,
	ldr	lr, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, lr	@ <variable>.image_height, <variable>.MP4Syntax.image_height
	strls	ip, [r0, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	lr, [r0, #156]	@, <variable>.MP4Syntax.image_height, <variable>.disp_height
	b	.L552	@
	.fnend
	.size	MP4_SetImgFormat, .-MP4_SetImgFormat
	.align	2
	.global	Mp4_ClearUsrData
	.type	Mp4_ClearUsrData, %function
Mp4_ClearUsrData:
	.fnstart
.LFB1363:
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
	mov	r4, r1	@ pUserData, pUserData
	mov	r6, r0	@ ChanID, ChanID
	ldr	r1, [r1, #0]	@,* pUserData
	mov	r5, #0	@ tmp139,
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #4]	@,
	str	r5, [r4, #0]	@ tmp139,* pUserData
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #8]	@,
	str	r5, [r4, #4]	@ tmp139,
	bl	FreeUsdByDec	@
	str	r5, [r4, #8]	@ tmp139,
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #12]	@,
	bl	FreeUsdByDec	@
	str	r5, [r4, #12]	@ tmp139,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Mp4_ClearUsrData, .-Mp4_ClearUsrData
	.align	2
	.global	MPEG4DEC_RecycleImage
	.type	MPEG4DEC_RecycleImage, %function
MPEG4DEC_RecycleImage:
	.fnstart
.LFB1390:
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
	movw	r4, #22960	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L558	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L558:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MPEG4DEC_RecycleImage, .-MPEG4DEC_RecycleImage
	.align	2
	.global	Vdm_Mem_Move
	.type	Vdm_Mem_Move, %function
Vdm_Mem_Move:
	.fnstart
.LFB1380:
	@ args = 12, pretend = 0, frame = 0
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pCur, pCur
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r7, r2	@ dst, dst
	mov	r8, r3	@ dst_2d, dst_2d
	bl	dprint_vfmw	@
	movw	r0, #15628	@ tmp145,
	str	r8, [r4, r0]	@ dst_2d, <variable>.Mp4DecParam.DispFramePhyAddr
	movw	r6, #22060	@ tmp158,
	str	r7, [r4, #1252]	@ dst, <variable>.Mp4DecParam.CurPicPhyAddr
	ldr	r3, [fp, #8]	@ ImgWidth, ImgWidth
	ldr	r1, [fp, #12]	@ ImgHeight, ImgHeight
	ldr	r2, [fp, #4]	@ src, src
	add	ip, r3, #15	@ tmp148, ImgWidth,
	ldr	r3, [r5, #484]	@ <variable>.PmvAddr, <variable>.PmvAddr
	add	r1, r1, #15	@ tmp151, ImgHeight,
	mov	r0, ip, lsr #4	@ tmp149, tmp148,
	movw	ip, #1206	@ tmp150,
	str	r2, [r4, #1256]	@ src, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r2, #1204	@ tmp147,
	strh	r0, [r4, r2]	@ movhi	@ tmp149, <variable>.Mp4DecParam.PicWidthInMb
	mov	r1, r1, lsr #4	@ tmp152, tmp151,
	str	r3, [r4, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	movw	r0, #15640	@ tmp153,
	strh	r1, [r4, ip]	@ movhi	@ tmp152, <variable>.Mp4DecParam.PicHeightInMb
	add	r1, r4, #1040	@ D.37229, pCtx,
	ldr	r2, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r4, r6]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	movw	r2, #15696	@ tmp156,
	str	ip, [r4, r0]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	ldr	r0, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #1036]	@ D.37229, <variable>.pMp4DecParam
	str	r0, [r4, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
	ldr	r2, [r3, #680]	@ D.37230, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37230,
	beq	.L565	@,
	cmp	r2, #2	@ D.37230,
	beq	.L566	@,
.L562:
	mov	r0, #1	@ tmp175,
	strb	r0, [r4, #1198]	@ tmp175, <variable>.Mp4DecParam.IsNvopCopy
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L565:
	cmp	r1, #0	@ D.37229,
	beq	.L562	@,
	movw	ip, #22960	@ tmp162,
	movw	lr, #53728	@ tmp164,
	mov	r2, #0	@ tmp161,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #1036]	@ tmp161, <variable>.pMp4DecParam
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L566:
	ldr	r2, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L562	@,
	cmp	r1, #0	@ D.37229,
	beq	.L562	@,
	movw	lr, #53728	@ tmp170,
	movw	r1, #22960	@ tmp168,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #0	@ tmp167,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	str	r2, [r4, #1036]	@ tmp167, <variable>.pMp4DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r6]	@ temp.2007, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	ip, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, ip, #1	@ tmp174, <variable>.stDisParams.s32DisNums,
	str	r1, [r3, #684]	@ tmp174, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vdm_Mem_Move, .-Vdm_Mem_Move
	.align	2
	.global	Mp4_Set_DecPar
	.type	Mp4_Set_DecPar, %function
Mp4_Set_DecPar:
	.fnstart
.LFB1384:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #100
	sub	sp, sp, #100	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r1, #48	@,
	mov	r4, r2	@ ptr_strm_para, ptr_strm_para
	mov	r6, r0	@ pCtx, pCtx
	sub	r0, fp, #92	@,,
	bl	__memzero	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L595	@,
	movw	r3, #22048	@ tmp208,
	movw	r5, #22044	@ tmp210,
	ldr	sl, [r6, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r2, #22052	@ tmp219,
	ldr	lr, [r6, r5]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22056	@ tmp216,
	ldr	r8, [r6, r2]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	r1, sl, #3	@ tmp213, <variable>.BitsObj.phy_addr,
	ldr	r7, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r5, [r6, r9]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	str	lr, [r6, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	bic	r0, r7, #3	@ tmp207, <variable>.PhyAddr,
	rsb	ip, r5, r8, asl #3	@, tmp224, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	str	r0, [r6, #1208]	@ tmp207, <variable>.Mp4DecParam.StreamBaseAddr
	str	ip, [r6, #1236]	@ tmp224, <variable>.Mp4DecParam.StreamLength
	add	r2, r5, r1, asl #3	@, tmp218, <variable>.BitsObj.offset, tmp213,
	str	sl, [r6, #1220]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamPhyAddr
	mov	r5, #0	@ tmp232,
	str	r2, [r6, #1228]	@ tmp218, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r9, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r9, [r6, #1224]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.StreamPhyAddr
	ldr	r8, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r8, [r6, #1060]	@ <variable>.VirAddr, <variable>.Mp4DecParam.StreamVirAddr
	ldr	r7, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	lr, r7, #3	@ tmp227, <variable>.PhyAddr,
	mov	ip, lr, asl #3	@ tmp229, tmp227,
	str	ip, [r6, #1232]	@ tmp229, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r1, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r5, [r6, #1216]	@ tmp232, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	mov	r3, r1, asl #3	@ tmp231, <variable>.LenInByte,
	str	r3, [r6, #1240]	@ tmp231, <variable>.Mp4DecParam.StreamLength
.L569:
	movw	r8, #21912	@ tmp243,
	movw	r1, #21976	@ tmp234,
	ldrb	r7, [r6, r8]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r5, #21322	@ tmp246,
	movw	r4, #21277	@ tmp249,
	movw	lr, #21919	@ tmp252,
	movw	ip, #21924	@ tmp255,
	movw	r0, #21923	@ tmp258,
	movw	sl, #21376	@ tmp261,
	movw	r3, #21972	@ tmp239,
	ldr	r2, [r6, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r1, #21920	@ tmp264,
	ldr	r3, [r6, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	r7, [fp, #-100]	@, %sfp
	add	r9, r2, #15	@ tmp235, <variable>.MP4Syntax.image_width,
	ldrb	r7, [r6, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.MP4Syntax.syn_vol.quant_type
	add	r8, r3, #15	@ tmp240, <variable>.MP4Syntax.image_height,
	ldrb	r5, [r6, r4]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	mov	r9, r9, lsr #4	@ tmp237, tmp235,
	ldrb	r4, [r6, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.MP4Syntax.syn_vop.vop_quant
	mov	r8, r8, lsr #4	@ tmp242, tmp240,
	ldrb	lr, [r6, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.MP4Syntax.syn_vop.num_mb_ingob
	ldrb	ip, [r6, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.MP4Syntax.syn_vop.num_gobs_invop
	ldr	r0, [r6, sl]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	movw	sl, #21921	@ tmp267,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_fcode_backward
	ldrb	r1, [r6, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.MP4Syntax.syn_vop.vop_fcode_forward
	str	sl, [fp, #-96]	@, %sfp
	movw	sl, #21916	@ tmp270,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.intra_dc_vlc_thr
	str	sl, [fp, #-104]	@, %sfp
	movw	sl, #21327	@ tmp273,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.resync_marker_disable
	str	sl, [fp, #-108]	@, %sfp
	movw	sl, #21325	@ tmp276,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.quarter_sample
	str	sl, [fp, #-112]	@, %sfp
	movw	sl, #21914	@ tmp279,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_rounding_type
	str	sl, [fp, #-116]	@, %sfp
	movw	sl, #21918	@ tmp282,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.alternate_vertical_scan_flag
	str	sl, [fp, #-120]	@, %sfp
	movw	sl, #21917	@ tmp285,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.top_field_first
	str	sl, [fp, #-124]	@, %sfp
	movw	sl, #1204	@ tmp233,
	strh	r9, [r6, sl]	@ movhi	@ tmp237, <variable>.Mp4DecParam.PicWidthInMb
	movw	sl, #1206	@ tmp238,
	strh	r8, [r6, sl]	@ movhi	@ tmp242, <variable>.Mp4DecParam.PicHeightInMb
	movw	sl, #21320	@ tmp320,
	strb	r7, [r6, #1041]	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.Mp4DecParam.PicQuantType
	movw	r8, #21318	@ tmp288,
	strb	r5, [r6, #1042]	@ <variable>.MP4Syntax.is_short_header, <variable>.Mp4DecParam.IsShortHeader
	strb	r4, [r6, #1043]	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.Mp4DecParam.VopQuant
	strb	lr, [r6, #1044]	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.Mp4DecParam.GobMbNum
	strb	ip, [r6, #1045]	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.Mp4DecParam.VopGobNum
	strb	r0, [r6, #1046]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.Mp4DecParam.BitsOfVopTimeIncr
	strb	r1, [r6, #1047]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.Mp4DecParam.FwdFcode
	ldr	r0, [fp, #-96]	@, %sfp
	strb	r0, [r6, #1048]	@, <variable>.Mp4DecParam.BwdFcode
	movw	r0, #22008	@ tmp291,
	ldr	r9, [fp, #-104]	@, %sfp
	strb	r9, [r6, #1049]	@, <variable>.Mp4DecParam.intra_dc_vlc_thr
	movw	r9, #22004	@ tmp293,
	ldr	r7, [fp, #-108]	@, %sfp
	strb	r7, [r6, #1050]	@, <variable>.Mp4DecParam.resync_marker_disable
	ldr	r5, [fp, #-112]	@, %sfp
	ldr	r7, [r6, r9]	@, <variable>.MP4Syntax.time_pp
	movw	r9, #21283	@ tmp310,
	strb	r5, [r6, #1051]	@, <variable>.Mp4DecParam.QuarterSample
	movw	r5, #21280	@ tmp295,
	ldr	r4, [fp, #-116]	@, %sfp
	strb	r4, [r6, #1052]	@, <variable>.Mp4DecParam.vop_rounding_type
	movw	r4, #21279	@ tmp298,
	ldr	lr, [fp, #-120]	@, %sfp
	strb	lr, [r6, #1053]	@, <variable>.Mp4DecParam.alternate_vertical_scan
	movw	lr, #21278	@ tmp301,
	ldr	ip, [fp, #-100]	@, %sfp
	strb	ip, [r6, #1040]	@, <variable>.Mp4DecParam.PicCodingType
	movw	ip, #21281	@ tmp304,
	ldr	r1, [fp, #-124]	@, %sfp
	str	r7, [r6, #1248]	@, <variable>.Mp4DecParam.Trd
	ldrb	r7, [r6, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_DIVX500B413, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	strb	r1, [r6, #1054]	@, <variable>.Mp4DecParam.top_field_first
	ldrb	r5, [r6, r4]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	ldrb	r1, [r6, sl]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	ldrb	r4, [r6, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	ldrb	sl, [r6, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.MP4Syntax.syn_vol.interlaced
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	ldr	r8, [r6, r0]	@ <variable>.MP4Syntax.time_bp, <variable>.MP4Syntax.time_bp
	movw	r0, #21282	@ tmp307,
	ldrb	lr, [r6, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	ldrb	ip, [r6, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	ldrb	r0, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_FILED, <variable>.MP4Syntax.FF_BUG_QPEL_FILED
	movw	r9, #15648	@ tmp313,
	str	r2, [r6, r9]	@ <variable>.MP4Syntax.image_width, <variable>.Mp4DecParam.image_width
	movw	r2, #15644	@ tmp316,
	str	r3, [r6, r2]	@ <variable>.MP4Syntax.image_height, <variable>.Mp4DecParam.image_height
	strb	sl, [r6, #1055]	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.Mp4DecParam.Interlaced
	str	r8, [r6, #1244]	@ <variable>.MP4Syntax.time_bp, <variable>.Mp4DecParam.Trb
	strb	r7, [r6, #1194]	@ <variable>.MP4Syntax.FF_BUG_DIVX500B413, <variable>.Mp4DecParam.FF_BUG_DIVX500B413
	strb	r5, [r6, #1193]	@ <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND, <variable>.Mp4DecParam.FF_BUG_EDGE_EXTEND
	strb	r4, [r6, #1192]	@ <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT, <variable>.Mp4DecParam.FF_BUG_EDGE_FIND_POINT
	movw	r4, #15652	@ tmp319,
	strb	lr, [r6, #1195]	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA, <variable>.Mp4DecParam.FF_BUG_QPEL_CHROMA
	strb	ip, [r6, #1196]	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2, <variable>.Mp4DecParam.FF_BUG_QPEL_CHROMA2
	strb	r0, [r6, #1197]	@ <variable>.MP4Syntax.FF_BUG_QPEL_FILED, <variable>.Mp4DecParam.FF_BUG_QPEL_FILED
	str	r1, [r6, r4]	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.Mp4DecParam.sprite_enable
	beq	.L596	@,
.L570:
	movw	ip, #21333	@ tmp351,
	movw	r0, #15660	@ tmp350,
	ldrb	r1, [r6, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	movw	r2, #15692	@ tmp369,
	movw	r3, #15656	@ tmp353,
	movw	r8, #15664	@ tmp355,
	movw	r7, #15668	@ tmp357,
	movw	r4, #15672	@ tmp359,
	str	r1, [r6, r0]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	movw	lr, #15676	@ tmp361,
	mov	r1, #0	@ tmp354,
	mov	ip, #15680	@ tmp363,
	str	r1, [r6, r2]	@ tmp354, <variable>.Mp4DecParam.Vco
	movw	r0, #15684	@ tmp365,
	movw	r2, #15688	@ tmp367,
	str	r1, [r6, r8]	@ tmp354, <variable>.Mp4DecParam.dU
	str	r1, [r6, r4]	@ tmp354, <variable>.Mp4DecParam.dV
	str	r1, [r6, r3]	@ tmp354, <variable>.Mp4DecParam.sprite_warping_points
	str	r1, [r6, r7]	@ tmp354, <variable>.Mp4DecParam.dU
	str	r1, [r6, lr]	@ tmp354, <variable>.Mp4DecParam.dV
	str	r1, [r6, ip]	@ tmp354, <variable>.Mp4DecParam.Uo
	str	r1, [r6, r0]	@ tmp354, <variable>.Mp4DecParam.Vo
	str	r1, [r6, r2]	@ tmp354, <variable>.Mp4DecParam.Uco
.L571:
	movw	lr, #53728	@ tmp373,
	movw	r4, #22960	@ tmp371,
	ldr	r1, [r6, lr]	@, <variable>.CurFsID
	movw	r8, #53712	@ tmp377,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, r8]	@, <variable>.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #53720	@ tmp381,
	ldr	r1, [r6, r3]	@, <variable>.BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	beq	.L572	@,
	cmp	r0, #0	@ pBwd,
	beq	.L572	@,
	ldr	ip, [r7, #472]	@ D.37560, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.37560,
	ldreq	r5, [r7, #476]	@ prephitmp.2089, <variable>.pstDispOutFs
	ldreq	r4, [r7, #480]	@ prephitmp.2026, <variable>.pstTfOutFs
	beq	.L576	@,
	ldr	r4, [r7, #480]	@ prephitmp.2026, <variable>.pstTfOutFs
	cmp	r4, #0	@ prephitmp.2026,
	ldreq	r5, [r7, #476]	@ prephitmp.2089, <variable>.pstDispOutFs
	beq	.L576	@,
	ldr	r5, [r7, #476]	@ prephitmp.2089, <variable>.pstDispOutFs
	cmp	r5, #0	@ prephitmp.2089,
	beq	.L576	@,
	ldr	ip, [r7, #484]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	ip, [r6, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	ldr	r4, [r0, #484]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r4, [r6, #1268]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.BwdPmvPhyAddr
	ldr	r5, [r0, #472]	@ D.37571, <variable>.pstDecodeFs
	cmp	r5, #0	@ D.37571,
	ldreq	r5, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [r5, #12]	@ iftmp.557, <variable>.PhyAddr
	mov	r5, #15616	@ tmp408,
	str	r1, [r6, #1260]	@ iftmp.557, <variable>.Mp4DecParam.BwdRefPicPhyAddr
	ldr	lr, [r8, #472]	@ D.37578, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.37578,
	ldreq	lr, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [lr, #12]	@ iftmp.558, <variable>.PhyAddr
	str	r3, [r6, #1256]	@ iftmp.558, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r3, #15620	@ tmp410,
	ldr	r2, [r7, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r6, #21248	@ ivtmp.2044, pCtx,
	str	ip, [r6, #1252]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.CurPicPhyAddr
	ldr	r4, [r0, #480]	@ D.37585, <variable>.pstTfOutFs
	cmp	r4, #0	@ D.37585,
	ldreq	r4, [r7, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r1, [r4, #12]	@ iftmp.559, <variable>.PhyAddr
	str	r1, [r6, r5]	@ iftmp.559, <variable>.Mp4DecParam.TfBwdPhyAddr
	movw	r5, #15624	@ tmp411,
	ldr	lr, [r8, #480]	@ D.37592, <variable>.pstTfOutFs
	movw	r8, #15628	@ tmp414,
	cmp	lr, #0	@ D.37592,
	ldreq	lr, [r7, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r0, [lr, #12]	@ iftmp.560, <variable>.PhyAddr
	str	r0, [r6, r3]	@ iftmp.560, <variable>.Mp4DecParam.TfFwdPhyAddr
	add	r3, r2, #148	@ ivtmp.2044, ivtmp.2044,
	ldr	ip, [r7, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	mov	r2, r6	@ ivtmp.2048, pCtx
	mov	r0, #0	@ i,
	ldr	r4, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [r6, r5]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.TfCurPhyAddr
	movw	r5, #15640	@ tmp417,
	ldr	r1, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r6, r8]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.DispFramePhyAddr
	ldr	ip, [r7, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	str	r4, [r6, r5]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
.L587:
	add	r1, r3, #4	@ tmp436, ivtmp.2044,
	ldr	r5, [r3, #4]	@ tmp442, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	ldr	r8, [r3, #0]	@ tmp421, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	add	r0, r0, #2	@ i, i,
	ldr	r7, [r3, #256]	@ tmp423, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	add	lr, r2, #1	@ tmp437, ivtmp.2048,
	ldr	r4, [r1, #256]	@ tmp443, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	cmp	r0, #64	@ i,
	strb	r8, [r2, #1064]	@ tmp421, <variable>.Mp4DecParam.IntraQuantTab
	add	r3, r1, #4	@ ivtmp.2044, tmp436,
	strb	r7, [r2, #1128]	@ tmp423, <variable>.Mp4DecParam.NonintraQuantTab
	add	r2, lr, #1	@ ivtmp.2048, tmp437,
	strb	r5, [lr, #1064]	@ tmp442, <variable>.Mp4DecParam.IntraQuantTab
	strb	r4, [lr, #1128]	@ tmp443, <variable>.Mp4DecParam.NonintraQuantTab
	bne	.L587	@,
	movw	ip, #1206	@ tmp426,
	movw	r3, #1204	@ tmp428,
	ldrh	r0, [r6, ip]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	movw	r2, #22060	@ tmp433,
	ldrh	r1, [r6, r3]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	movw	lr, #21944	@ tmp425,
	ldr	r3, [r6, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #15696	@ tmp431,
	mul	ip, r1, r0	@ tmp430, <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicHeightInMb
	str	ip, [r6, lr]	@ tmp430, <variable>.MP4Syntax.syn_vop.mb_total
	ldr	r0, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r6, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
.L588:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L572:
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, .L597	@,
	movt	r1, #:upper16:.LC33	@,
	movw	r3, #3176	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L588	@
.L596:
	ldr	r2, [fp, #-100]	@, %sfp
	cmp	r2, #3	@,
	bne	.L570	@,
	add	sl, r6, #21248	@, pCtx,
	sub	r1, fp, #92	@,,
	add	r0, sl, #20	@,,
	movw	r5, #21333	@ tmp330,
	bl	MP4_GetGMCparam	@
	ldrb	sl, [r6, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	ldr	r8, [fp, #-92]	@ gmc.num_wp, gmc.num_wp
	movw	r3, #15660	@ tmp329,
	ldr	r7, [fp, #-76]	@ gmc.dU, gmc.dU
	ldr	r4, [fp, #-68]	@ gmc.dV, gmc.dV
	ldr	lr, [fp, #-64]	@ gmc.dV, gmc.dV
	ldr	ip, [fp, #-60]	@ gmc.Uo, gmc.Uo
	ldr	r0, [fp, #-56]	@ gmc.Vo, gmc.Vo
	ldr	r5, [fp, #-72]	@ gmc.dU, gmc.dU
	ldr	r1, [fp, #-52]	@ gmc.Uco, gmc.Uco
	ldr	r2, [fp, #-48]	@ gmc.Vco, gmc.Vco
	str	sl, [r6, r3]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	movw	r3, #15656	@ tmp332,
	str	r8, [r6, r3]	@ gmc.num_wp, <variable>.Mp4DecParam.sprite_warping_points
	movw	r8, #15664	@ tmp334,
	str	r7, [r6, r8]	@ gmc.dU, <variable>.Mp4DecParam.dU
	movw	r8, #15672	@ tmp338,
	movw	r7, #15676	@ tmp340,
	str	r4, [r6, r8]	@ gmc.dV, <variable>.Mp4DecParam.dV
	str	lr, [r6, r7]	@ gmc.dV, <variable>.Mp4DecParam.dV
	mov	r4, #15680	@ tmp342,
	movw	lr, #15684	@ tmp344,
	movw	r3, #15668	@ tmp336,
	str	ip, [r6, r4]	@ gmc.Uo, <variable>.Mp4DecParam.Uo
	movw	ip, #15688	@ tmp346,
	str	r0, [r6, lr]	@ gmc.Vo, <variable>.Mp4DecParam.Vo
	movw	r0, #15692	@ tmp348,
	str	r5, [r6, r3]	@ gmc.dU, <variable>.Mp4DecParam.dU
	str	r1, [r6, ip]	@ gmc.Uco, <variable>.Mp4DecParam.Uco
	str	r2, [r6, r0]	@ gmc.Vco, <variable>.Mp4DecParam.Vco
	b	.L571	@
.L595:
	movw	r0, #22048	@ tmp182,
	movw	r2, #22044	@ tmp187,
	ldr	r1, [r6, r0]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	sl, #22052	@ tmp196,
	ldr	r8, [r6, r2]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22056	@ tmp193,
	ldr	r7, [r6, sl]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	ip, r1, #3	@ tmp190, <variable>.BitsObj.phy_addr,
	ldr	r5, [r6, r9]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	mov	r2, #0	@ tmp203,
	bic	r4, r1, #3	@ tmp186, <variable>.BitsObj.phy_addr,
	str	r8, [r6, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	rsb	lr, r5, r7, asl #3	@, tmp201, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	add	r0, r5, ip, asl #3	@, tmp195, <variable>.BitsObj.offset, tmp190,
	str	r4, [r6, #1220]	@ tmp186, <variable>.Mp4DecParam.StreamPhyAddr
	str	lr, [r6, #1236]	@ tmp201, <variable>.Mp4DecParam.StreamLength
	str	r3, [r6, #1216]	@ <variable>.IsLastSeg, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	str	r0, [r6, #1228]	@ tmp195, <variable>.Mp4DecParam.StreamBitOffset
	str	r2, [r6, #1240]	@ tmp203, <variable>.Mp4DecParam.StreamLength
	str	r1, [r6, #1208]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamBaseAddr
	str	r2, [r6, #1224]	@ tmp203, <variable>.Mp4DecParam.StreamPhyAddr
	str	r2, [r6, #1232]	@ tmp203, <variable>.Mp4DecParam.StreamBitOffset
	b	.L569	@
.L576:
	movw	r0, #53720	@ tmp399,
	movw	r3, #53712	@ tmp395,
	ldr	lr, [r6, r0]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r1, #53728	@ tmp397,
	ldr	r2, [r6, r3]	@ <variable>.FwdFsID, <variable>.FwdFsID
	mov	r0, #0	@,
	ldr	r3, [r6, r1]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	ip, [sp, #4]	@ D.37560,
	str	lr, [sp, #0]	@ <variable>.BwdFsID,
	str	r4, [sp, #8]	@ prephitmp.2026,
	str	r5, [sp, #12]	@ prephitmp.2089,
	bl	dprint_vfmw	@
	b	.L588	@
.L598:
	.align	2
.L597:
	.word	.LANCHOR0+1340
	.fnend
	.size	Mp4_Set_DecPar, .-Mp4_Set_DecPar
	.align	2
	.global	MPEG4DEC_VDMPostProc
	.type	MPEG4DEC_VDMPostProc, %function
MPEG4DEC_VDMPostProc:
	.fnstart
.LFB1393:
	@ args = 0, pretend = 0, frame = 32
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14660	@,
	movw	r5, #22960	@ tmp156,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r6, #22544	@ tmp155,
	movw	r3, #53728	@ tmp158,
	str	r7, [r4, r6]	@ ErrRatio, <variable>.ErrorLevel
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	movw	r9, #53720	@ tmp162,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	str	r0, [fp, #-48]	@, %sfp
	movw	r0, #53712	@,
	ldr	r1, [r4, r0]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L620	@,
	movw	sl, #22552	@ tmp170,
	movw	r8, #21912	@ tmp173,
	ldr	r2, [r4, sl]	@, <variable>.FrameNum
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	add	sl, r4, #22528	@ tmp347, pCtx,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	add	r1, sl, #52	@, tmp347,
	str	r2, [r7, #180]	@ <variable>.ErrorLevel, <variable>.error_level
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	Mp4_ClearUsrData	@
	ldrb	r1, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L602	@,
	movw	r3, #22060	@ tmp185,
	ldr	ip, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	ldr	r0, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r0, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	ip, lr	@ <variable>.ErrorLevel, <variable>.s32RefErrThr
	bhi	.L621	@,
.L602:
	movw	r1, #22600	@ tmp228,
	mov	lr, #0	@ tmp229,
	mov	r0, r4	@, pCtx
	str	lr, [r4, r1]	@ tmp229, <variable>.IPVopErr
	bl	MP4_SetImgFormat	@
	movw	r3, #22060	@ tmp231,
	ldr	r0, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #1	@ <variable>.s32DecOrderOutput,
	beq	.L604	@,
	movw	r2, #21912	@ tmp233,
	ldrb	r5, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r5, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L605	@,
	movw	r1, #22968	@ tmp235,
	movw	r3, #22968	@ tmp239,
	ldr	lr, [r4, r1]	@ <variable>.RefNum, <variable>.RefNum
	movw	ip, #53732	@ tmp238,
	ldr	r0, [r4, r3]	@ <variable>.RefNum, <variable>.RefNum
	cmp	lr, #1	@ <variable>.RefNum,
	movwgt	lr, #53712	@ tmp237,
	mvnle	r1, #0	@ prephitmp.2117,
	ldrgt	r1, [r4, lr]	@ prephitmp.2117, <variable>.FwdFsID
	cmp	r0, #1	@ <variable>.RefNum,
	movwgt	r0, #53716	@ tmp241,
	ldrgtb	r7, [r4, #0]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.FwdCodingType
	str	r1, [r4, ip]	@ prephitmp.2117, <variable>.ToQueFsID
	mvnle	ip, #0	@ ToQueTimePP,
	ldrgt	ip, [r4, r0]	@ ToQueTimePP, <variable>.FwdTimePP
	movle	r7, ip	@ ToQueCodingType, ToQueTimePP
.L609:
	cmn	r1, #1	@ prephitmp.2117,
	beq	.L611	@,
	movw	r6, #22960	@ tmp250,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	ip, [fp, #-72]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [fp, #-72]	@,
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L622	@,
	cmp	ip, #0	@ ToQueTimePP,
	cmpeq	r7, #4	@, ToQueCodingType,
	movne	r8, #0	@, tmp259
	moveq	r8, #1	@, tmp259
	beq	.L623	@,
	ldr	r2, [r5, #180]	@ D.38131, <variable>.error_level
	cmp	r2, #0	@ D.38131,
	beq	.L614	@,
	movw	lr, #22060	@ tmp288,
	ldr	r1, [r4, lr]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #4]	@ D.38133, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.38131, D.38133
	bcs	.L615	@,
.L614:
	movw	r6, #22960	@ tmp289,
	movw	r8, #53732	@ tmp291,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.ToQueFsID
	bl	FSP_GetLogicFs	@
	subs	r9, r0, #0	@ pstLogicFs,
	beq	.L624	@,
	cmp	r7, #2	@ ToQueCodingType,
	beq	.L617	@,
	ldrsb	r2, [r9, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #2	@ <variable>.s32DispState,
	beq	.L617	@,
	movw	r1, #:lower16:.LC39	@,
	ldr	r2, [r4, r8]	@, <variable>.ToQueFsID
	movt	r1, #:upper16:.LC39	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
.L611:
	movw	r1, #22552	@ tmp342,
	mov	r0, #0	@ D.38058,
	ldr	lr, [r4, r1]	@ <variable>.FrameNum, <variable>.FrameNum
	add	ip, lr, #1	@ tmp345, <variable>.FrameNum,
	str	ip, [r4, r1]	@ tmp345, <variable>.FrameNum
.L601:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L617:
	movw	r6, #22960	@ tmp306,
	movw	r7, #53732	@ tmp308,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, sl, #80	@, tmp347,
	mov	r1, #2	@,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L611	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r8, #0	@ tmp317,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp317, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5, #196]	@ tmp317, <variable>.p_usrdat
	mov	r2, r8	@, tmp317
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38058,
	b	.L601	@
.L604:
	movw	r7, #53728	@ tmp246,
	movw	ip, #21912	@ tmp248,
	ldr	r1, [r4, r7]	@ prephitmp.2117, <variable>.CurFsID
	movw	r3, #22004	@ tmp249,
	movw	r0, #53732	@ tmp247,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldr	ip, [r4, r3]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r0]	@ prephitmp.2117, <variable>.ToQueFsID
	b	.L609	@
.L605:
	ldr	r9, [fp, #-48]	@, %sfp
	movw	r6, #53728	@ tmp242,
	ldr	r1, [r4, r6]	@ prephitmp.2117, <variable>.CurFsID
	movw	r2, #22004	@ tmp244,
	cmp	r9, #0	@,
	movw	r6, #53732	@ tmp243,
	ldr	ip, [r4, r2]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r6]	@ prephitmp.2117, <variable>.ToQueFsID
	beq	.L610	@,
	ldr	r3, [fp, #-48]	@, %sfp
	ldrd	r2, [r3, #8]	@,,
	strd	r2, [fp, #-68]	@,,
	ldrd	r8, [r7, #8]	@, pCurImg,
	strd	r8, [fp, #-60]	@,,
	cmp	r2, r8	@,
	sbcs	r9, r3, r9	@,,
	bge	.L610	@,
	strd	r2, [r7, #8]	@, pCurImg,
	mov	r7, r5	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrd	r0, [fp, #-60]	@,,
	ldr	lr, [fp, #-48]	@, %sfp
	strd	r0, [lr, #8]	@,,
	ldr	r1, [r4, r6]	@ prephitmp.2117, <variable>.ToQueFsID
	b	.L609	@
.L610:
	mov	r7, #2	@ ToQueCodingType,
	b	.L609	@
.L615:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp259, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #53732	@ tmp340,
	str	r8, [r5, #196]	@ tmp259, <variable>.p_usrdat
	mov	r2, r8	@, tmp259
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L611	@
.L622:
	movw	r1, #:lower16:.LC38	@,
	movw	r2, #3998	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38058,
	b	.L601	@
.L621:
	movw	r6, #22600	@ tmp188,
	mov	r8, #1	@ tmp189,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r8, [r4, r6]	@ tmp189, <variable>.IPVopErr
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L603	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp206,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #204]	@ tmp206, <variable>.p_usrdat
	str	r7, [r6, #192]	@ tmp206, <variable>.p_usrdat
	mov	r2, r8	@, tmp189
	str	r7, [r6, #196]	@ tmp206, <variable>.p_usrdat
	str	r7, [r6, #200]	@ tmp206, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	mov	r2, r8	@, tmp189
	movw	r8, #53712	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.FwdFsID
	movw	r8, #53712	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r9]	@ tmp206, <variable>.BwdFsID
	str	r7, [r4, r8]	@ tmp206, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r8]	@ D.38081, <variable>.FwdFsID
	str	r0, [r4, r9]	@ D.38081, <variable>.BwdFsID
.L603:
	movw	r2, #22968	@ tmp226,
	mov	r1, #0	@ tmp227,
	mvn	r0, #0	@ D.38058,
	str	r1, [r4, r2]	@ tmp227, <variable>.RefNum
	b	.L601	@
.L623:
	ldr	r0, [r4, r6]	@ temp.2162, <variable>.ChanID
	movw	r3, #:lower16:g_VfmwChanStat	@ tmp261,
	movt	r3, #:upper16:g_VfmwChanStat	@ tmp261,
	mov	ip, #300	@ tmp264,
	mov	r7, #0	@ tmp278,
	mla	lr, ip, r0, r3	@ tmp265, tmp264, temp.2162, tmp261
	ldr	r2, [lr, #16]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	add	r1, r2, #1	@ tmp274, <variable>.u32SkipDiscard,
	str	r1, [lr, #16]	@ tmp274, <variable>.u32SkipDiscard
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp278, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r0, #53732	@ tmp285,
	str	r7, [r5, #196]	@ tmp278, <variable>.p_usrdat
	mov	r2, r7	@, tmp278
	ldr	r1, [r4, r0]	@, <variable>.ToQueFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38058,
	b	.L601	@
.L620:
	mov	r0, r7	@, pCurImg
	ldr	r3, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC35	@,
	mov	r2, r7	@,
	movt	r1, #:upper16:.LC35	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38058,
	b	.L601	@
.L624:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r9, [r5, #192]	@ pstLogicFs, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r9, [r5, #196]	@ pstLogicFs, <variable>.p_usrdat
	mov	r2, r9	@, pstLogicFs
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38058,
	b	.L601	@
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.global	MPEG4DEC_GetRemainImg
	.type	MPEG4DEC_GetRemainImg, %function
MPEG4DEC_GetRemainImg:
	.fnstart
.LFB1392:
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
	movw	r1, #22060	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L637	@,
	movw	r6, #22960	@ tmp143,
	movw	r5, #53720	@ tmp145,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L637	@,
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L635	@,
.L637:
	add	r5, r4, #22528	@ tmp174, pCtx,
	add	r5, r5, #80	@ tmp174, tmp174,
.L626:
	mov	r0, r5	@, tmp174
	bl	GetVoLastImageID	@
.L628:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L635:
	mov	r0, r4	@, pCtx
	add	r5, r4, #22528	@ tmp174, pCtx,
	bl	MP4_SetImgFormat	@
	add	r5, r5, #80	@ tmp174, tmp174,
	mov	ip, #1	@ tmp151,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r2, ip	@, tmp151
	str	ip, [r7, #216]	@ tmp151, <variable>.last_frame
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, r8	@, display_flag
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp174
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L627	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG4DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp163,
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp163, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ tmp163, <variable>.p_usrdat
	b	.L626	@
.L627:
	ldr	r2, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L626	@,
	ldr	lr, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	lr, #31	@ <variable>.image_width,
	bls	.L626	@,
	ldr	r3, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L628	@,
	b	.L626	@
	.fnend
	.size	MPEG4DEC_GetRemainImg, .-MPEG4DEC_GetRemainImg
	.align	2
	.global	MPEG4DEC_Init
	.type	MPEG4DEC_Init, %function
MPEG4DEC_Init:
	.fnstart
.LFB1387:
	@ args = 0, pretend = 0, frame = 776
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #776
	sub	sp, sp, #776	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pCtx,
	cmpne	r5, #0	@, pstExtraData,
	beq	.L639	@,
	ldr	r3, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r3, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L646	@,
.L640:
	movw	r6, #22952	@ tmp170,
	movw	r1, #53744	@,
	ldr	r7, [r4, r6]	@ D.37675, <variable>.ImageQue.ResetMagicWord
	mov	r0, r4	@, pCtx
	bl	__memzero	@
	add	r1, r4, #22528	@, pCtx,
	add	r0, r1, #80	@,,
	str	r7, [r4, r6]	@ D.37675, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #22060	@ tmp174,
	str	r5, [r4, r0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r2, #22960	@ tmp175,
	cmn	r0, #1	@ D.37683,
	str	r0, [r4, r2]	@ D.37683, <variable>.ChanID
	beq	.L647	@,
	mov	r0, r4	@, pCtx
	bl	Global_Data_Init	@
	subs	r6, r0, #0	@ D.37688,
	beq	.L648	@,
.L639:
	mvn	r0, #0	@ D.37671,
.L642:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L648:
	movw	ip, #22576	@ tmp179,
	movw	r3, #22548	@ tmp177,
	mov	lr, #1	@ tmp178,
	str	r6, [r4, ip]	@ D.37688, <variable>.PPicFound
	str	lr, [r4, r3]	@ tmp178, <variable>.InitComplete
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	r5, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r5, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L643	@,
	mov	r0, r6	@ D.37671, D.37688
	b	.L642	@
.L646:
	add	r7, r4, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, r7, #20	@,,
	add	r6, r4, #19968	@ tmp158, pCtx,
	sub	r0, fp, #804	@,,
	bl	memcpy	@
	add	lr, r6, #8	@ tmp158, tmp158,
	sub	ip, fp, #788	@ tmp156,,
	sub	r6, fp, #36	@ tmp166,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp208,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp156,,,,
	ldmia	lr, {r0, r1}	@ tmp208,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp209,,
	add	r1, r4, #19968	@, pCtx,
	add	r1, r1, #32	@,,
	sub	r0, fp, #764	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@ tmp167, pCtx,
	add	r7, r0, #20	@ tmp167, tmp167,
	ldmia	r7, {r0, r1}	@ tmp167,,
	mov	r2, r1, lsr #16	@ tmp168,,
	strb	r2, [r6, #6]	@ tmp168, MP4SyntaxState
	str	r0, [fp, #-36]	@, MP4SyntaxState
	strh	r1, [r6, #4]	@ movhi	@, MP4SyntaxState
	b	.L640	@
.L647:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37671,
	b	.L642	@
.L643:
	add	r2, r4, #21248	@, pCtx,
	sub	r1, fp, #804	@,,
	add	r0, r2, #20	@,,
	mov	r2, #768	@,
	bl	memcpy	@
	sub	lr, fp, #788	@ tmp191,,
	add	ip, r4, #19968	@ tmp190, pCtx,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp212,,,,
	add	ip, ip, #8	@ tmp190, tmp190,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	lr, {r0, r1}	@ tmp212,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp213,,
	add	r1, r4, #19968	@, pCtx,
	add	r0, r1, #32	@,,
	sub	r1, fp, #764	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@, pCtx,
	mov	r2, #7	@,
	add	r0, r0, #20	@,,
	sub	r1, fp, #36	@,,
	bl	memcpy	@
	movw	r2, #53737	@ tmp204,
	strb	r5, [r4, r2]	@ <variable>.s32KeepSPSPPS, <variable>.SeekReset
	mov	r0, r6	@ D.37671, D.37688
	b	.L642	@
	.fnend
	.size	MPEG4DEC_Init, .-MPEG4DEC_Init
	.global	__aeabi_uidiv
	.align	2
	.global	Mp4_RecordFrameAtr
	.type	Mp4_RecordFrameAtr, %function
Mp4_RecordFrameAtr:
	.fnstart
.LFB1382:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r3, #21311	@ tmp150,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.37275, <variable>.MP4Syntax.syn_vol.aspect_ratio_info
	mov	r6, r0	@ pCtx, pCtx
	mov	r4, r1	@ id, id
	cmp	r3, #15	@ D.37275,
	beq	.L660	@,
	sub	r1, r3, #2	@ tmp173, D.37275,
	uxtb	ip, r1	@ tmp174, tmp173
	cmp	ip, #1	@ tmp174,
	bls	.L654	@,
	sub	lr, r3, #4	@ tmp175, D.37275,
	uxtb	r2, lr	@ tmp176, tmp175
	cmp	r2, #1	@ tmp176,
	bls	.L655	@,
	cmp	r3, #1	@ D.37275,
	moveq	r7, #5	@ aspect_ratio,
	beq	.L656	@,
.L651:
	mov	r7, #0	@ aspect_ratio,
.L656:
	mov	r1, r4	@, id
	movw	r4, #22960	@ tmp177,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	beq	.L659	@,
	movw	r1, #21976	@ tmp179,
	movw	r3, #21972	@ tmp181,
	ldr	ip, [r6, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #22060	@ tmp184,
	mov	r1, r7	@, aspect_ratio
	str	ip, [r4, #144]	@ <variable>.MP4Syntax.image_width, <variable>.image_width
	ldr	sl, [r6, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	sl, [r4, #148]	@ <variable>.MP4Syntax.image_height, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r8, [r6, r9]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [r8, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L661	@,
.L658:
	movw	r0, #21976	@ tmp199,
	movw	r8, #21972	@ tmp201,
	ldr	r5, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #21912	@ tmp214,
	movw	r3, #22060	@ tmp249,
	str	r5, [r4, #152]	@ <variable>.MP4Syntax.image_width, <variable>.disp_width
	mov	r5, #0	@ tmp239,
	ldr	r1, [r6, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	r1, [r4, #156]	@ <variable>.MP4Syntax.image_height, <variable>.disp_height
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movt	r1, #:upper16:.LC44	@,
	mov	r0, #29	@,
	mov	ip, r2, lsr #1	@ tmp205, <variable>.MP4Syntax.image_width,
	str	ip, [r4, #160]	@ tmp205, <variable>.disp_center_x
	ldr	sl, [r6, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r2, #22540	@ tmp209,
	movw	r8, #22536	@ tmp211,
	mov	lr, sl, lsr #1	@ tmp208, <variable>.MP4Syntax.image_height,
	str	lr, [r4, #164]	@ tmp208, <variable>.disp_center_y
	ldr	ip, [r6, r2]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	movw	lr, #21917	@ tmp217,
	movw	r2, #21289	@ tmp222,
	str	ip, [r4, #188]	@ <variable>.ImgCntOfSeq, <variable>.seq_img_cnt
	movw	ip, #21318	@ tmp227,
	ldr	sl, [r6, r8]	@ <variable>.SeqCnt, <variable>.SeqCnt
	str	sl, [r4, #184]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldrb	r8, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrb	sl, [r6, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.top_field_first, <variable>.MP4Syntax.syn_vop.top_field_first
	ldrb	lr, [r6, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	and	r2, r8, #3	@ tmp216, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	ldrb	ip, [r6, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.MP4Syntax.syn_vol.interlaced
	orr	r8, r2, sl, asl #12	@, tmp220, tmp216, <variable>.MP4Syntax.syn_vop.top_field_first,
	mov	lr, lr, asl #5	@ tmp224, <variable>.MP4Syntax.syn_vos.video_format,
	orr	r8, r8, #3072	@ tmp221, tmp220,
	and	r2, lr, #255	@ tmp225, tmp224,
	and	ip, ip, #1	@ tmp229, <variable>.MP4Syntax.syn_vol.interlaced,
	orr	lr, r8, r2	@ tmp226, tmp221, tmp225
	orr	r8, lr, ip, asl #8	@, tmp231, tmp226, tmp229,
	orr	r2, r8, r7, asl #14	@, tmp232, tmp231, aspect_ratio,
	str	r2, [r4, #140]	@ tmp232, <variable>.format
	ldrb	ip, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r2, #22580	@ tmp240,
	and	lr, ip, #3	@ tmp235, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	lr, [r4, #132]	@ tmp235, <variable>.top_fld_type
	ldrb	r8, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	ip, #22584	@ tmp242,
	str	r5, [r4, #128]	@ tmp239, <variable>.is_fld_save
	and	r7, r8, #3	@ tmp238, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	r7, [r4, #136]	@ tmp238, <variable>.bottom_fld_type
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	movw	r8, #22588	@ tmp244,
	movw	r2, #22592	@ tmp246,
	str	r9, [r4, #192]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	lr, [r6, ip]	@ <variable>.UsrData, <variable>.UsrData
	str	lr, [r4, #196]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r7, [r6, r8]	@ <variable>.UsrData, <variable>.UsrData
	str	r7, [r4, #200]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	str	r9, [r4, #204]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	ip, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r8, [r4, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r4, #16]	@ <variable>.Usertag, pImg,
	ldr	r7, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [r7, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r8, [r4, #24]	@ <variable>.DispTime, pImg,
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r4, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r7, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r4, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r7, [r4, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r7, #0	@,
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r6, #0	@ tmp271,
	strd	r6, [r2, #56]	@ tmp271, <variable>.pstExtraData,
	ldrd	r6, [r4, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r4, #8]	@ <variable>.PTS, pImg,
	strd	r6, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r3, #8	@ tmp280,
	mov	r1, #2	@ tmp275,
	mov	ip, #1	@ tmp283,
	strb	r5, [r4, #331]	@ tmp239, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #344]	@ tmp280, <variable>.ImageDnr.QP_U
	str	r1, [r4, #336]	@ tmp275, <variable>.ImageDnr.video_standard
	strb	ip, [r4, #329]	@ tmp283, <variable>.ImageDnr.chroma_format_idc
	strb	r5, [r4, #324]	@ tmp239, <variable>.ImageDnr.pic_structure
	str	r3, [r4, #340]	@ tmp280, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #348]	@ tmp280, <variable>.ImageDnr.QP_V
.L659:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L660:
	movw	r0, #21340	@ tmp151,
	movw	r2, #21344	@ tmp152,
	ldr	r3, [r6, r0]	@ sar_width, <variable>.MP4Syntax.syn_vol.par_width
	ldr	r2, [r6, r2]	@ D.37281, <variable>.MP4Syntax.syn_vol.par_height
	cmp	r3, #0	@ sar_width,
	cmpne	r2, #0	@, D.37281,
	beq	.L651	@,
	movw	r7, #21392	@ tmp160,
	ldr	r1, [r6, r7]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_height, <variable>.MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r1, r2	@ D.37290, <variable>.MP4Syntax.syn_vol.video_object_layer_height, D.37281
	cmp	r1, #0	@ D.37290,
	beq	.L651	@,
	movw	r0, #21388	@ tmp163,
	mov	r7, r3, asl #10	@ tmp162, sar_width,
	ldr	lr, [r6, r0]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_width, <variable>.MP4Syntax.syn_vol.video_object_layer_width
	mul	r0, lr, r7	@, <variable>.MP4Syntax.syn_vol.video_object_layer_width, tmp162
	bl	__aeabi_uidiv	@
	sub	r2, r0, #1360	@ iftmp.544, true_dar,
	sub	r1, r0, #1808	@ iftmp.545, true_dar,
	sub	ip, r2, #5	@ iftmp.544, iftmp.544,
	sub	r3, r1, #12	@ iftmp.545, iftmp.545,
	cmp	ip, #0	@ iftmp.544,
	rsblt	ip, r0, #1360	@ tmp170, true_dar,
	addlt	ip, ip, #5	@ iftmp.544, tmp170,
	cmp	r3, #0	@ iftmp.545,
	rsblt	r3, r0, #1808	@ tmp172, true_dar,
	addlt	r3, r3, #12	@ iftmp.545, tmp172,
	cmp	ip, r3	@ iftmp.544, iftmp.545
	bge	.L655	@,
.L654:
	mov	r7, #1	@ aspect_ratio,
	b	.L656	@
.L655:
	mov	r7, #2	@ aspect_ratio,
	b	.L656	@
.L661:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r5, [r4, #172]	@ D.37336, <variable>.image_stride
	add	lr, r0, #15	@ tmp187, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	sl, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	r2, lr, lsr #4	@ tmp189, tmp187,
	mov	r1, r5, asl #4	@ tmp186, D.37336,
	add	ip, r3, r5	@ tmp194, <variable>.luma_phy_addr, D.37336
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r9, r2, r1	@ D.37342, tmp189, tmp186
	str	ip, [r4, #96]	@ tmp194, <variable>.btm_luma_phy_addr
	str	sl, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r9, r3	@ tmp191, D.37342, <variable>.luma_phy_addr
	add	r8, sl, r9	@ tmp193, <variable>.luma_vir_addr, D.37342
	add	r0, lr, r5	@ tmp195, tmp191, D.37336
	str	r8, [r4, #36]	@ tmp193, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp195, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp191
	str	lr, [r4, #108]	@ tmp191, <variable>.chrom_phy_addr
	str	lr, [r4, #92]	@ tmp191, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r2, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L658	@
	.fnend
	.size	Mp4_RecordFrameAtr, .-Mp4_RecordFrameAtr
	.align	2
	.global	Mp4_Frame_Atr
	.type	Mp4_Frame_Atr, %function
Mp4_Frame_Atr:
	.fnstart
.LFB1383:
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #21912	@ tmp140,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.37403, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ D.37403,
	strb	r3, [r4, #2]	@ D.37403, <variable>.CurCodingType
	beq	.L669	@,
.L663:
	movw	lr, #22960	@ tmp157,
	mov	r1, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	ip, #53728	@ tmp159,
	cmp	r0, #0	@ D.37410,
	str	r0, [r4, ip]	@ D.37410, <variable>.CurFsID
	blt	.L664	@,
	movw	r3, #22964	@ tmp160,
	ldr	r1, [r4, r3]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, #0	@ <variable>.FspPartitionOK,
	bne	.L665	@,
.L664:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movw	r5, #22960	@ tmp163,
	movt	r1, #:upper16:.LC45	@,
	movw	r8, #53720	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L666	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp179,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movw	sl, #53712	@ tmp189,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #204]	@ tmp179, <variable>.p_usrdat
	str	r7, [r6, #192]	@ tmp179, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #196]	@ tmp179, <variable>.p_usrdat
	str	r7, [r6, #200]	@ tmp179, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r8]	@ tmp179, <variable>.BwdFsID
	str	r7, [r4, sl]	@ tmp179, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.37426, <variable>.FwdFsID
	str	r0, [r4, r8]	@ D.37426, <variable>.BwdFsID
.L666:
	add	r0, r4, #22528	@, pCtx,
	movw	lr, #22960	@ tmp201,
	movw	ip, #22968	@ tmp199,
	add	r1, r0, #80	@,,
	mov	r2, #0	@ tmp200,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r2, [r4, ip]	@ tmp200, <variable>.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L669:
	movw	r2, #22960	@ tmp142,
	movw	lr, #:lower16:g_VfmwChanStat	@ tmp143,
	ldr	r0, [r4, r2]	@ D.37407, <variable>.ChanID
	movt	lr, #:upper16:g_VfmwChanStat	@ tmp143,
	mov	r3, #300	@ tmp146,
	mla	ip, r3, r0, lr	@ tmp147, tmp146, D.37407, tmp143
	ldr	r1, [ip, #12]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	add	r2, r1, #1	@ tmp156, <variable>.u32SkipFind,
	str	r2, [ip, #12]	@ tmp156, <variable>.u32SkipFind
	b	.L663	@
.L665:
	mov	r1, r0	@, D.37410
	mov	r0, r4	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	movw	r3, #22544	@ tmp205,
	mov	r1, #0	@ tmp206,
	mov	r0, #0	@,
	str	r1, [r4, r3]	@ tmp206, <variable>.ErrorLevel
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	Mp4_Frame_Atr, .-Mp4_Frame_Atr
	.align	2
	.global	Frame_Init
	.type	Frame_Init, %function
Frame_Init:
	.fnstart
.LFB1377:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #22060	@ tmp164,
	ldr	r5, [r0, r3]	@ D.37106, <variable>.pstExtraData
	mov	r4, r0	@ pCtx, pCtx
	mov	r3, r2	@ PicHeight, PicHeight
	ldr	r0, [r5, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L671	@,
	ldr	r2, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L698	@,
.L672:
	mov	r8, #2	@,
	mov	r7, r1	@ PicWidth.2363, PicWidth
	str	r8, [fp, #-92]	@, %sfp
	mov	r8, #5	@ DispFsNum,
	mov	r6, r3	@ PicHeight.2364, PicHeight
	mov	r3, #3	@,
	str	r3, [fp, #-88]	@, %sfp
.L680:
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp174,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp174,
	ldr	ip, [r1, #36]	@ D.37139, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37139,
	beq	.L686	@,
	movw	r0, #22960	@ tmp180,
	ldr	r1, [r5, #28]	@ <variable>.s32SyntaxMemSize, <variable>.s32SyntaxMemSize
	ldr	r9, [r4, r0]	@ <variable>.ChanID, <variable>.ChanID
	mov	lr, #2	@ tmp177,
	ldr	r0, [r5, #24]	@ <variable>.s32SyntaxMemAddr, <variable>.s32SyntaxMemAddr
	mov	r2, #40	@ tmp178,
	mov	r5, #0	@ tmp179,
	str	r2, [sp, #4]	@ tmp178,
	str	r9, [sp, #12]	@ <variable>.ChanID,
	mov	r2, r7	@, PicWidth.2363
	str	r5, [sp, #8]	@ tmp179,
	mov	r3, r6	@, PicHeight.2364
	str	lr, [sp, #0]	@ tmp177,
	movw	r5, #:lower16:.LANCHOR2	@ tmp182,
	movt	r5, #:upper16:.LANCHOR2	@ tmp182,
	str	r5, [sp, #16]	@ tmp182,
	blx	ip	@ D.37139
	subs	r9, r0, #0	@ D.37146,
	bne	.L686	@,
	ldr	r2, [r5, #624]	@ D.37150, MemArrange.ValidPMVNum
	cmp	r2, #1	@ D.37150,
	ldrle	r3, [r5, #276]	@ prephitmp.2352, MemArrange.ValidFrameNum
	ble	.L689	@,
	ldr	r3, [r5, #276]	@ prephitmp.2352, MemArrange.ValidFrameNum
	cmp	r3, #2	@ prephitmp.2352,
	ble	.L689	@,
	ldr	lr, [r5, #8]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	movw	r0, #22080	@ tmp188,
	sub	sl, fp, #84	@ tmp226,,
	str	lr, [r4, r0]	@ MemArrange.FrameAddr, <variable>.VdmMemAllot.frame_phy_addr
	ldr	r0, [r5, #8]	@, MemArrange.FrameAddr
	bl	MEM_Phy2Vir	@
	movw	ip, #22068	@ tmp193,
	mov	r1, #36	@,
	str	r0, [r4, ip]	@, <variable>.VdmMemAllot.frame_vir_addr
	mov	r0, sl	@, tmp226
	bl	__memzero	@
	movw	r2, #22060	@ tmp196,
	ldr	r5, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r5, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [fp, #-56]	@ PicWidth.2363, FspInstCfg.s32DispFsWidth
	strb	r9, [fp, #-82]	@ D.37146, FspInstCfg.s32RprEnable
	strb	r1, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [fp, #-72]	@ PicWidth.2363, FspInstCfg.s32DecFsWidth
	movw	r7, #22060	@ tmp207,
	str	r6, [fp, #-52]	@ PicHeight.2364, FspInstCfg.s32DispFsHeight
	str	r6, [fp, #-68]	@ PicHeight.2364, FspInstCfg.s32DecFsHeight
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #24	@ <variable>.eCapLevel,
	ldrne	r3, [fp, #-88]	@, %sfp
	uxtbne	r9, r3	@ iftmp.539,
	strb	r9, [fp, #-79]	@ iftmp.539, FspInstCfg.s32ExpectedDecFsNum
	ldr	r6, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r7, #0	@ tmp210,
	strb	r8, [fp, #-77]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	ldr	ip, [r6, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movw	r6, #22960	@ tmp212,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #24	@ <variable>.eCapLevel,
	strb	r7, [fp, #-80]	@ tmp210, FspInstCfg.s32UserDec
	ldrne	r1, [fp, #-92]	@, %sfp
	moveq	ip, #1	@ iftmp.540,
	uxtbne	ip, r1	@ iftmp.540,
	mov	r1, sl	@, tmp226
	strb	ip, [fp, #-76]	@ iftmp.540, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.37174,
	bne	.L695	@,
	movw	r3, #22060	@ tmp215,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@ temp.2382, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r2, [r1, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	movweq	r3, #22964	@ tmp223,
	moveq	r2, #1	@ tmp224,
	streq	r2, [r4, r3]	@ tmp224, <variable>.FspPartitionOK
	bne	.L699	@,
.L676:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L671:
	ldr	lr, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L672	@,
	ldr	lr, [r5, #564]	@ temp.2367, <variable>.stChanOption.s32MaxWidth
	cmp	r1, lr	@ PicWidth, temp.2367
	ldrhi	ip, [r5, #568]	@ prephitmp.2370, <variable>.stChanOption.s32MaxHeight
	bhi	.L682	@,
	ldr	ip, [r5, #568]	@ prephitmp.2370, <variable>.stChanOption.s32MaxHeight
	cmp	r2, ip	@ PicHeight, prephitmp.2370
	bhi	.L682	@,
	ldr	r6, [r5, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r5, #584]	@ temp.2368, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r6, #1	@,
	streq	r6, [fp, #-92]	@, %sfp
	beq	.L685	@,
	add	r7, r9, #1	@ PmvNum.2371, temp.2368,
	cmp	r7, #17	@ PmvNum.2371,
	movge	r7, #17	@ PmvNum.2371,
	str	r7, [fp, #-92]	@ PmvNum.2371, %sfp
.L685:
	add	r9, r9, #2	@, temp.2368,
	mov	r6, r3	@ PicHeight.2364, PicHeight
	str	r9, [fp, #-88]	@, %sfp
	mov	r7, r1	@ PicWidth.2363, PicWidth
	ldr	r8, [r5, #612]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L680	@
.L698:
	ldr	ip, [r5, #564]	@ D.37113, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r1	@ D.37113, PicWidth
	mov	r7, ip	@ PicWidth.2363, D.37113
	ldrcc	r8, [r5, #568]	@ prephitmp.2373, <variable>.stChanOption.s32MaxHeight
	bcc	.L674	@,
	ldr	r6, [r5, #568]	@ PicHeight.2364, <variable>.stChanOption.s32MaxHeight
	cmp	r6, r3	@ PicHeight.2364, PicHeight
	mov	r8, r6	@ prephitmp.2373, PicHeight.2364
	bcc	.L674	@,
	movw	ip, #22964	@ tmp168,
	ldr	r1, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, #1	@ <variable>.FspPartitionOK,
	beq	.L676	@,
	ldr	r0, [r5, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r5, #584]	@ D.37123, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r2, #1	@,
	streq	r2, [fp, #-92]	@, %sfp
	beq	.L679	@,
	add	r2, r9, #1	@ PmvNum.2365, D.37123,
	cmp	r2, #17	@ PmvNum.2365,
	movge	r2, #17	@ PmvNum.2365,
	str	r2, [fp, #-92]	@ PmvNum.2365, %sfp
.L679:
	add	r9, r9, #2	@, D.37123,
	str	r9, [fp, #-88]	@, %sfp
	ldr	r8, [r5, #612]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L680	@
.L689:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
.L686:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
.L695:
	mov	r0, r7	@, tmp210
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
.L682:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	str	lr, [sp, #0]	@ temp.2367,
	str	ip, [sp, #4]	@ prephitmp.2370,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
.L699:
	mov	r0, r5	@, D.37174
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
.L674:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	str	ip, [sp, #0]	@ D.37113,
	str	r8, [sp, #4]	@ prephitmp.2373,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37119,
	b	.L676	@
	.fnend
	.size	Frame_Init, .-Frame_Init
	.align	2
	.global	Mp4_GetUserDataBuf
	.type	Mp4_GetUserDataBuf, %function
Mp4_GetUserDataBuf:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r1, r2, asl #2]	@ prephitmp.2399,* pUserData
	cmp	r3, #0	@ prephitmp.2399,
	beq	.L703	@,
.L701:
	mov	r0, r3	@, prephitmp.2399
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L703:
	str	r1, [fp, #-16]	@,
	str	r2, [fp, #-20]	@,
	bl	GetUsd	@
	ldr	r2, [fp, #-20]	@,
	ldr	r1, [fp, #-16]	@,
	cmp	r0, #0	@ prephitmp.2399,
	mov	r3, r0	@ prephitmp.2399,
	str	r0, [r1, r2, asl #2]	@ prephitmp.2399,* pUserData
	addne	r0, r2, #4	@ tmp140, UserID,
	strne	r0, [r3, #1036]	@ tmp140, <variable>.from
	ldrne	r3, [r1, r2, asl #2]	@ prephitmp.2399,* pUserData
	b	.L701	@
	.fnend
	.size	Mp4_GetUserDataBuf, .-Mp4_GetUserDataBuf
	.align	2
	.global	Mp4_Syntax_UserData
	.type	Mp4_Syntax_UserData, %function
Mp4_Syntax_UserData:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 32
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
	cmp	r2, #6	@ len,
	mov	r6, #0	@ tmp163,
	mov	r4, r0	@ pCtx, pCtx
	str	r6, [fp, #-52]	@ tmp163, ver
	mvngt	r3, #255	@ monitor,
	str	r6, [fp, #-56]	@ tmp163, build
	movgt	r5, #4	@ i,
	str	r6, [fp, #-60]	@ tmp163, ver2
	movwgt	ip, #1027	@ tmp323,
	str	r6, [fp, #-64]	@ tmp163, ver3
	strb	r6, [fp, #-45]	@ tmp163, last
	bgt	.L710	@,
	b	.L752	@
.L742:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36075,* i
	orr	r3, r3, r0	@ D.36077, monitor, D.36075
	mov	r3, r3, asl #8	@ monitor, D.36077,
	cmp	r3, #256	@ monitor,
	beq	.L743	@,
	add	r5, r5, #1	@ i, i,
	strb	r0, [r7, #3]	@ D.36075, <variable>.TmpUserData
	cmp	r2, r5	@ len, i
	add	r6, r6, #1	@ userdata_len, userdata_len,
	ble	.L708	@,
.L710:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36075,* i
	add	r7, r4, r6	@ tmp173, pCtx, userdata_len
	orr	r3, r3, r0	@ D.36077, monitor, D.36075
	mov	r3, r3, asl #8	@ monitor, D.36077,
	cmp	r3, #256	@ monitor,
	beq	.L743	@,
	add	r6, r6, #1	@ userdata_len, userdata_len,
	strb	r0, [r7, #3]	@ D.36075, <variable>.TmpUserData
	cmp	r6, ip	@ userdata_len, tmp323
	add	r7, r4, r6	@ tmp330, pCtx, userdata_len
	beq	.L745	@,
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ len, i
	bgt	.L742	@,
.L708:
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L706	@,
.L747:
	cmp	r6, #2	@ userdata_len,
	movw	r2, #22042	@ tmp180,
	mov	ip, #1	@ tmp181,
	mov	r5, r5, asl #3	@ BitUsed, i,
	strb	ip, [r4, r2]	@ tmp181, <variable>.MP4SyntaxState.userdata_decode_right
	bhi	.L746	@,
.L706:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L752:
	add	r2, r2, #1	@ tmp172, len,
	movw	r3, #22042	@ tmp169,
	strb	r6, [r0, r3]	@ tmp163, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r2, asl #3	@ BitUsed, tmp172,
	b	.L706	@
.L743:
	sub	r5, r5, #2	@ i, i,
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L706	@,
	b	.L747	@
.L746:
	movw	r3, #22960	@ tmp183,
	add	lr, r4, #22528	@, pCtx,
	movw	r8, #22572	@ tmp187,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, lr, #52	@,,
	ldr	r2, [r4, r8]	@, <variable>.UserID
	bl	Mp4_GetUserDataBuf	@
	movw	r3, #22596	@ tmp189,
	cmp	r0, #0	@ D.36091,
	str	r0, [r4, r3]	@ D.36091, <variable>.CurUsrData
	addeq	sl, r6, #-2147483646	@ prephitmp.2438, userdata_len,
	addeq	r7, r4, #3	@ buf, pCtx,
	beq	.L713	@,
	adds	sl, r6, #-2147483648	@ prephitmp.2438, userdata_len,
	sub	r8, r6, #2	@ userdata_len.2466, userdata_len,
	str	r8, [r0, #1048]	@ userdata_len.2466, <variable>.data_size
	movpl	r2, #0	@ iftmp.446,
	ldr	r0, [r4, r3]	@ D.36092, <variable>.CurUsrData
	bmi	.L748	@,
.L715:
	add	r7, r4, #3	@ buf, pCtx,
	mov	r1, r7	@, buf
	bl	memcpy	@
	movw	r0, #22060	@ tmp200,
	ldr	lr, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #22596	@ tmp197,
	ldr	ip, [r4, r2]	@ <variable>.CurUsrData, <variable>.CurUsrData
	movw	r3, #:lower16:g_event_report	@ tmp202,
	movt	r3, #:upper16:g_event_report	@ tmp202,
	ldrd	r0, [lr, #56]	@, <variable>.pstExtraData,
	mov	lr, #1056	@ tmp198,
	strd	r0, [ip, lr]	@, <variable>.CurUsrData, tmp198
	ldr	r3, [r3, #0]	@ g_event_report.447, g_event_report
	cmp	r3, #0	@ g_event_report.447,
	moveq	r6, r8	@ userdata_len, userdata_len.2466
	beq	.L713	@,
	ldr	ip, [r4, r2]	@ <variable>.CurUsrData, <variable>.CurUsrData
	sub	r2, fp, #44	@ tmp207,,
	movw	r6, #22960	@ tmp205,
	mov	r1, #6	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r6, r8	@ userdata_len, userdata_len.2466
	str	ip, [r2, #-24]!	@ <variable>.CurUsrData, para
	blx	r3	@ g_event_report.447
.L713:
	cmp	sl, #0	@ prephitmp.2438,
	movge	r3, #0	@ tmp,
	blt	.L749	@,
.L718:
	add	r2, r4, r3	@ tmp209, pCtx, tmp
	sub	sl, fp, #52	@ tmp320,,
	sub	r8, fp, #56	@ tmp322,,
	mov	r1, #0	@ tmp211,
	mov	r0, r7	@, buf
	strb	r1, [r2, #3]	@ tmp211, <variable>.TmpUserData
	mov	r3, r8	@, tmp322
	movw	r1, #:lower16:.LC51	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC51	@,
	sub	r6, fp, #45	@ last.450,,
	str	r6, [sp, #0]	@ last.450,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L750	@,
.L719:
	ldr	r2, [fp, #-56]	@ build, build
	cmp	r0, #3	@ e,
	ldr	lr, [fp, #-52]	@ ver, ver
	mov	r0, #22016	@ tmp219,
	movw	r3, #22020	@ tmp221,
	str	r2, [r4, r3]	@ build, <variable>.MP4Syntax.divx_build
	movne	r2, #0	@ prephitmp.2443,
	str	lr, [r4, r0]	@ ver, <variable>.MP4Syntax.divx_version
	beq	.L751	@,
.L722:
	movw	r1, #22024	@ tmp226,
	str	r2, [r4, r1]	@ prephitmp.2443, <variable>.MP4Syntax.divx_packed
.L720:
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC53	@,
	mov	r2, r8	@, tmp322
	movt	r1, #:upper16:.LC53	@,
	bl	sscanf	@
	cmp	r0, #1	@,
	beq	.L723	@,
	sub	r9, fp, #60	@ tmp231,,
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC54	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC54	@,
	mov	r3, r9	@, tmp231
	str	r8, [sp, #4]	@ tmp322,
	sub	r6, fp, #64	@ tmp232,,
	str	r6, [sp, #0]	@ tmp232,
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L723	@,
	mov	r2, sl	@, tmp320
	mov	r3, r9	@, tmp231
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	str	r6, [sp, #0]	@ tmp232,
	bl	sscanf	@
	add	r0, r0, #1	@ e.2472,,
	cmp	r0, #1	@ e.2472,
	ble	.L724	@,
	ldr	ip, [fp, #-60]	@ ver2, ver2
	cmp	r0, #4	@ e.2472,
	ldr	lr, [fp, #-52]	@ ver, ver
	ldr	r3, [fp, #-64]	@ ver3, ver3
	mov	r0, ip, asl #8	@ tmp240, ver2,
	add	r2, r0, lr, asl #16	@, tmp242, tmp240, ver,
	add	r3, r2, r3	@ prephitmp.2442, tmp242, ver3
	str	r3, [fp, #-56]	@ prephitmp.2442, build
	beq	.L725	@,
.L724:
	mov	r2, #7	@,
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	strncmp	@
	cmp	r0, #0	@,
	movweq	r3, #22032	@ tmp246,
	movweq	r2, #4600	@ tmp247,
	streq	r2, [r4, r3]	@ tmp247, <variable>.MP4Syntax.lavc_build
.L726:
	mov	r2, r8	@, tmp322
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	sscanf	@
	movw	ip, #21282	@ tmp256,
	movw	r1, #21281	@ tmp253,
	cmp	r0, #1	@,
	movw	r0, #21279	@ tmp259,
	ldreq	r2, [fp, #-56]	@ build, build
	movweq	r3, #22028	@ tmp251,
	streq	r2, [r4, r3]	@ build, <variable>.MP4Syntax.xvid_build
	movw	r3, #22028	@ tmp268,
	ldr	r2, [r4, r3]	@ prephitmp.2440, <variable>.MP4Syntax.xvid_build
	mov	r3, #0	@ tmp254,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	movw	ip, #21278	@ tmp262,
	cmp	r2, #0	@ prephitmp.2440,
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r0, #21280	@ tmp265,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	strb	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bne	.L728	@,
	mov	lr, #22016	@ tmp269,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r2, #500	@ <variable>.MP4Syntax.divx_version,
	movcs	r2, #1	@ tmp280,
	strcsb	r2, [r4, r1]	@ tmp280, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bcc	.L730	@,
.L732:
	mov	lr, #22016	@ tmp286,
	movw	r1, #22028	@ tmp292,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	movw	ip, #502	@ tmp288,
	ldr	r0, [r4, r1]	@ <variable>.MP4Syntax.xvid_build, <variable>.MP4Syntax.xvid_build
	movw	lr, #22032	@ tmp298,
	cmp	r2, ip	@ <variable>.MP4Syntax.divx_version, tmp288
	movw	r1, #4668	@ tmp301,
	sub	r3, r0, #1	@ tmp293, <variable>.MP4Syntax.xvid_build,
	movwhi	ip, #21282	@ tmp289,
	movhi	r2, #1	@ tmp290,
	strhib	r2, [r4, ip]	@ tmp290, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	cmp	r3, #11	@ tmp293,
	ldr	ip, [r4, lr]	@ <variable>.MP4Syntax.lavc_build, <variable>.MP4Syntax.lavc_build
	movwls	r3, #21279	@ tmp295,
	movls	r2, #1	@ tmp296,
	sub	r0, ip, #1	@ tmp299, <variable>.MP4Syntax.lavc_build,
	strlsb	r2, [r4, r3]	@ tmp296, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	mov	r3, #22016	@ tmp305,
	cmp	r0, r1	@ tmp299, tmp301
	ldr	ip, [r4, r3]	@ prephitmp.2480, <variable>.MP4Syntax.divx_version
	movw	r2, #498	@ tmp307,
	movwls	r1, #21279	@ tmp302,
	movls	r0, #1	@ tmp303,
	sub	lr, ip, #1	@ tmp306, prephitmp.2480,
	strlsb	r0, [r4, r1]	@ tmp303, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	lr, r2	@ tmp306, tmp307
	movwls	r2, #21279	@ tmp308,
	movls	lr, #1	@ tmp309,
	strlsb	lr, [r4, r2]	@ tmp309, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	ip, #500	@ prephitmp.2480,
	bne	.L706	@,
	movw	r0, #22020	@ tmp312,
	movw	r3, #413	@ tmp314,
	ldr	r2, [r4, r0]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r2, r3	@ <variable>.MP4Syntax.divx_build, tmp314
	movweq	r3, #21280	@ tmp315,
	moveq	r2, #1	@ tmp316,
	streqb	r2, [r4, r3]	@ tmp316, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	b	.L706	@
.L745:
	sub	r5, r5, #2	@ tmp176, i,
	movw	r1, #22042	@ tmp177,
	mov	r0, #0	@ tmp178,
	strb	r0, [r4, r1]	@ tmp178, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r5, asl #3	@ BitUsed, tmp176,
	b	.L706	@
.L723:
	ldr	r3, [fp, #-56]	@ prephitmp.2442, build
.L725:
	movw	r1, #22032	@ tmp248,
	str	r3, [r4, r1]	@ prephitmp.2442, <variable>.MP4Syntax.lavc_build
	b	.L726	@
.L748:
	cmp	r6, #1024	@ userdata_len,
	movlt	r2, r6	@ iftmp.446, userdata_len
	movge	r2, #1024	@ iftmp.446,
	b	.L715	@
.L751:
	ldrsb	ip, [fp, #-45]	@ last, last
	cmp	ip, #112	@ last,
	movne	r2, #0	@, prephitmp.2443
	moveq	r2, #1	@, prephitmp.2443
	b	.L722	@
.L728:
	mov	r1, #22016	@ tmp272,
	ldr	r0, [r4, r1]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r0, #0	@ <variable>.MP4Syntax.divx_version,
	beq	.L731	@,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_version
	movw	r1, #22020	@ tmp276,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_build
.L730:
	movw	r3, #22028	@ tmp278,
	ldr	r2, [r4, r3]	@ prephitmp.2440, <variable>.MP4Syntax.xvid_build
.L731:
	cmp	r2, #1	@ prephitmp.2440,
	movweq	r3, #21281	@ tmp283,
	streqb	r2, [r4, r3]	@ prephitmp.2440, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	b	.L732	@
.L749:
	add	r3, r6, #2	@ tmp, userdata_len,
	cmp	r3, #1024	@ tmp,
	movge	r3, #1024	@ tmp,
	b	.L718	@
.L750:
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC52	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC52	@,
	mov	r3, r8	@, tmp322
	str	r6, [sp, #0]	@ last.450,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L720	@,
	b	.L719	@
	.fnend
	.size	Mp4_Syntax_UserData, .-Mp4_Syntax_UserData
	.align	2
	.global	Mp4_Syntax_Parse
	.type	Mp4_Syntax_Parse, %function
Mp4_Syntax_Parse:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r6, fp, #80	@ tmp581,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r0, r6	@, tmp581
	mov	r7, r1	@ pCode, pCode
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r6	@, tmp581
	movw	sl, #15864	@ tmp170,
	bl	BsShow	@
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ tmp171,
	mov	r1, #0	@ tmp169,
	and	r3, r3, #1	@ prephitmp.2504, tmp171,
	mov	r5, r0	@ StartCode,
	cmp	r5, #32768	@ StartCode,
	movne	r2, #0	@, tmp176
	andeq	r2, r3, #1	@,, tmp176, prephitmp.2504
	cmp	r2, r1	@ tmp176,
	movw	r0, #19972	@ tmp168,
	str	r1, [r4, r0]	@ tmp169, <variable>.IsWaitToDecFlag
	bne	.L754	@,
	eor	ip, r3, #1	@ tmp181, prephitmp.2504,
	movw	lr, #438	@ tmp178,
	cmp	r5, lr	@ StartCode, tmp178
	movne	ip, #0	@, tmp184
	andeq	ip, ip, #1	@,, tmp184, tmp181
	cmp	ip, #0	@ tmp184,
	beq	.L755	@,
.L754:
	mov	sl, r6	@ tmp186, tmp581
	sub	r6, fp, #108	@ tmp185,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp186,,,,
	mov	ip, r6	@, tmp185
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	sl, {r0, r1, r2}	@ tmp186,,,
	stmia	ip, {r0, r1, r2}	@ tmp582,,,
	mov	r1, #32	@,
	mov	r0, r6	@, tmp185
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r6	@, tmp185
	bl	BsGet	@
	mov	r1, #32	@,
	mov	sl, r0	@ D.36868,
	mov	r0, r6	@, tmp185
	bl	BsGet	@
	movw	r1, #:lower16:1128615492	@ tmp191,
	movw	r2, #:lower16:1213419593	@ tmp194,
	movt	r1, #:upper16:1128615492	@ tmp191,
	movt	r2, #:upper16:1213419593	@ tmp194,
	cmp	r0, r1	@, tmp191
	cmpeq	sl, r2	@, D.36868, tmp194
	bne	.L806	@,
	mov	r3, #19968	@ tmp204,
	movw	r0, #53736	@ tmp201,
	ldr	ip, [r4, r3]	@ tmp206,
	mov	r1, #1	@ tmp202,
	add	lr, r4, #15680	@, pCtx,
	strb	r1, [r4, r0]	@ tmp202, <variable>.IsStreamEndFlag
	tst	ip, #130	@ tmp206,
	movw	r2, #22960	@ tmp213,
	orrne	ip, ip, #32	@ tmp210, tmp206,
	strne	ip, [r4, r3]	@ tmp210, <variable>.PicIntegrality
	movwne	r0, #19972	@ tmp211,
	strne	r1, [r4, r0]	@ tmp202, <variable>.IsWaitToDecFlag
	add	r1, lr, #24	@,,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, #0	@ D.36883,
.L758:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L806:
	movw	r1, #15864	@ tmp199,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ tmp200,
	and	r3, r0, #1	@ prephitmp.2504, tmp200,
.L755:
	cmp	r3, #0	@ prephitmp.2504,
	beq	.L807	@,
	movw	ip, #21277	@ tmp227,
	mov	r5, #196	@ StartCode,
	mov	r2, #1	@ tmp228,
	strb	r2, [r4, ip]	@ tmp228,
.L760:
	movw	r1, #15864	@ tmp230,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ tmp232,
	and	r3, r0, #2	@ tmp234, tmp232,
	uxtb	r0, r3	@ tmp235, tmp234
	cmp	r0, #0	@ tmp235,
	bne	.L761	@,
.L822:
	mov	sl, #19968	@ tmp236,
	ldr	r3, [r4, sl]	@ tmp238,
	ands	r9, r3, #130	@ tmp237, tmp238,
	bne	.L808	@,
	cmp	r5, #197	@ StartCode,
	beq	.L809	@,
	cmp	r5, #432	@ StartCode,
	beq	.L810	@,
	movw	lr, #437	@ tmp253,
	cmp	r5, lr	@ StartCode, tmp253
	beq	.L811	@,
	bic	ip, r5, #15	@ tmp257, StartCode,
	cmp	ip, #288	@ tmp257,
	beq	.L812	@,
	movw	r6, #435	@ tmp279,
	cmp	r5, r6	@ StartCode, tmp279
	beq	.L813	@,
	movw	r2, #438	@ tmp283,
	cmp	r5, r2	@ StartCode, tmp283
	beq	.L814	@,
	cmp	r5, #196	@ StartCode,
	beq	.L815	@,
	movw	r6, #434	@ tmp301,
	cmp	r5, r6	@ StartCode, tmp301
	beq	.L816	@,
	movw	r0, #286	@ tmp307,
	cmp	r5, r0	@ StartCode, tmp307
	beq	.L817	@,
.L777:
	add	ip, r4, #15680	@, pCtx,
	movw	r2, #22960	@ tmp315,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r1, ip, #24	@,,
	bl	MP4_ClearCurPacket	@
	sub	sl, r8, #4	@ len, CodeLen,
	add	r8, r7, #4	@ ptr, pCode,
	mov	r6, #0	@ BitUsed,
.L765:
	movw	r1, #53737	@ tmp319,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.SeekReset, <variable>.SeekReset
	cmp	r3, #1	@ <variable>.SeekReset,
	beq	.L818	@,
.L779:
	cmp	r6, sl, asl #3	@ BitUsed, len,
	bgt	.L781	@,
	movw	r3, #438	@ tmp333,
	cmp	r5, r3	@ StartCode, tmp333
	cmpne	r5, #196	@, StartCode,
	bne	.L782	@,
	mov	lr, #19968	@ tmp338,
	ldr	r1, [r4, lr]	@ tmp340,
	tst	r1, #130	@ tmp340,
	beq	.L782	@,
	movw	r0, #21277	@ tmp341,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	cmp	r5, #2	@ <variable>.MP4Syntax.is_short_header,
	beq	.L819	@,
	movw	r3, #21976	@ tmp382,
	movw	r2, #21972	@ tmp384,
	ldr	r3, [r4, r3]	@ prephitmp.2506, <variable>.MP4Syntax.image_width
	movw	r1, #22564	@ tmp383,
	ldr	r2, [r4, r2]	@ D.37003, <variable>.MP4Syntax.image_height
	movw	r0, #22568	@ tmp385,
	cmp	r3, #0	@ prephitmp.2506,
	str	r3, [r4, r1]	@ prephitmp.2506, <variable>.NewPicWidth
	str	r2, [r4, r0]	@ D.37003, <variable>.NewPicHeight
	bne	.L820	@,
.L786:
	cmp	r2, #0	@ D.37003,
	beq	.L788	@,
	movw	r0, #22560	@ tmp388,
	ldr	lr, [r4, r0]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r2, lr	@ D.37003, <variable>.OldPicHeight
	beq	.L788	@,
.L787:
	movw	sl, #53720	@,
	movw	r5, #22960	@ tmp390,
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	sl, r0, #0	@ pImg,
	beq	.L789	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r9, #0	@ tmp406,
	ldr	r1, [sl, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	movw	lr, #53720	@,
	str	r9, [sl, #204]	@ tmp406, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r9, [sl, #192]	@ tmp406, <variable>.p_usrdat
	str	r9, [sl, #196]	@ tmp406, <variable>.p_usrdat
	str	r9, [sl, #200]	@ tmp406, <variable>.p_usrdat
	ldr	r1, [r4, lr]	@, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r2, #53712	@,
	ldr	r1, [r4, r2]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	ip, #53720	@,
	movw	r3, #53712	@,
	str	r9, [r4, ip]	@ tmp406, <variable>.BwdFsID
	str	r9, [r4, r3]	@ tmp406, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #53712	@,
	movw	r1, #53720	@,
	str	r0, [r4, r2]	@ D.37022, <variable>.FwdFsID
	str	r0, [r4, r1]	@ D.37022, <variable>.BwdFsID
.L789:
	add	r5, r4, #22528	@ D.37023, pCtx,
	movw	r3, #22968	@ tmp426,
	add	r5, r5, #80	@ D.37023, D.37023,
	movw	r2, #22960	@ tmp429,
	mov	ip, #0	@ tmp427,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	str	ip, [r4, r3]	@ tmp427, <variable>.RefNum
	mov	r1, r5	@, D.37023
	bl	FSP_ClearNotInVoQueue	@
	movw	r1, #22060	@ tmp431,
	ldr	r3, [r4, r1]	@ D.37026, <variable>.pstExtraData
	ldr	r0, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L790	@,
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	beq	.L821	@,
.L790:
	movw	ip, #22960	@ tmp436,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L802	@,
.L791:
	movw	r3, #22568	@ tmp440,
	movw	r5, #22564	@ tmp438,
	ldr	r2, [r4, r3]	@, <variable>.NewPicHeight
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r5]	@, <variable>.NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L792	@,
.L803:
	ldr	r3, [r4, r5]	@ prephitmp.2506, <variable>.NewPicWidth
.L788:
	movw	r0, #22568	@ tmp447,
	movw	lr, #22556	@ tmp445,
	ldr	r2, [r4, r0]	@ <variable>.NewPicHeight, <variable>.NewPicHeight
	movw	r5, #22560	@ tmp446,
	str	r3, [r4, lr]	@ prephitmp.2506, <variable>.OldPicWidth
	str	r2, [r4, r5]	@ <variable>.NewPicHeight, <variable>.OldPicHeight
.L785:
	add	r5, r4, #20992	@ tmp451, pCtx,
	add	r2, r4, #21760	@ tmp449, pCtx,
	add	lr, r5, #216	@ tmp451, tmp451,
	add	ip, r2, #152	@ tmp449, tmp449,
	rsb	r7, r7, r8	@ tmp460, pCode, ptr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp454,,,,
	mov	r5, ip	@ tmp453, tmp449
	stmia	r5!, {r0, r1, r2, r3}	@ tmp453,,,,
	mov	ip, r5	@ tmp584, tmp453
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp583,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp584,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp585,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp584,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp585,,,
	stmia	ip, {r0, r1, r2}	@ tmp586,,,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	movw	ip, #22540	@ tmp456,
	ldr	r3, [r4, ip]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	add	r0, r6, r7, asl #3	@, D.36883, BitUsed, tmp460,
	add	r1, r3, #1	@ tmp459, <variable>.ImgCntOfSeq,
	str	r1, [r4, ip]	@ tmp459,
	b	.L758	@
.L807:
	mov	r3, r5, lsr #8	@ tmp220, StartCode,
	movw	r2, #21277	@ tmp217,
	sub	ip, r3, #128	@ tmp221, tmp220,
	mov	sl, #2	@ tmp218,
	cmp	ip, #3	@ tmp221,
	strb	sl, [r4, r2]	@ tmp218, <variable>.MP4Syntax.is_short_header
	bhi	.L760	@,
	movw	r1, #15864	@ tmp222,
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ tmp224,
	orr	r0, sl, #2	@ tmp225, tmp224,
	strb	r0, [r4, r1]	@ tmp225,
	movw	r1, #15864	@ tmp230,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ tmp232,
	and	r3, r0, #2	@ tmp234, tmp232,
	uxtb	r0, r3	@ tmp235, tmp234
	cmp	r0, #0	@ tmp235,
	beq	.L822	@,
.L761:
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Dec_Slice	@
	mov	r8, r7	@ ptr, pCode
	mov	r6, r0	@ BitUsed,
	b	.L765	@
.L782:
	movw	r1, #22039	@ tmp462,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	r0, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L823	@,
	mov	r0, r6	@ D.36883, BitUsed
	b	.L758	@
.L808:
	movw	ip, #19972	@ tmp243,
	orr	r3, r3, #32	@ tmp242, tmp238,
	mov	r2, #1	@ tmp244,
	str	r3, [r4, sl]	@ tmp242, <variable>.PicIntegrality
	str	r2, [r4, ip]	@ tmp244,
	b	.L758	@
.L781:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	rsb	r7, r7, r8	@ tmp579, pCode, ptr
	bl	dprint_vfmw	@
	mov	r3, #19968	@ tmp575,
	ldr	ip, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, r7, asl #3	@ D.36883, tmp579,
	bic	r2, ip, #178	@ tmp578, <variable>.PicIntegrality,
	str	r2, [r4, r3]	@ tmp578,
	b	.L758	@
.L818:
	movw	r0, #20080	@ tmp321,
	movw	lr, #20084	@ tmp323,
	ldr	r1, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, lr]	@, <variable>.MP4Vol.video_object_layer_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L824	@,
.L780:
	movw	r2, #53737	@ tmp326,
	mov	ip, #0	@ tmp327,
	strb	ip, [r4, r2]	@ tmp327, <variable>.SeekReset
	b	.L779	@
.L817:
	movw	sl, #:lower16:g_event_report	@ tmp308,
	movt	sl, #:upper16:g_event_report	@ tmp308,
	ldr	r3, [sl, #0]	@ g_event_report.532, g_event_report
	cmp	r3, #0	@ g_event_report.532,
	beq	.L777	@,
	movw	lr, #22960	@ tmp309,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.532
	b	.L777	@
.L823:
	movw	r3, #22536	@ tmp464,
	add	r0, r4, #21248	@, pCtx,
	ldr	r2, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r1, r4, #19968	@, pCtx,
	movw	r5, #22540	@ tmp468,
	mov	lr, #0	@ tmp469,
	add	ip, r2, #1	@ tmp467, <variable>.SeqCnt,
	add	r0, r0, #60	@,,
	str	ip, [r4, r3]	@ tmp467, <variable>.SeqCnt
	mov	r2, #604	@,
	add	r1, r1, #32	@,,
	str	lr, [r4, r5]	@ tmp469, <variable>.ImgCntOfSeq
	bl	memcpy	@
	movw	r3, #21972	@ tmp478,
	movw	r2, #20084	@ tmp479,
	ldr	r3, [r4, r3]	@ prephitmp.2564, <variable>.MP4Syntax.image_height
	ldr	ip, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	cmp	r3, ip	@ prephitmp.2564, <variable>.MP4Vol.video_object_layer_height
	beq	.L825	@,
.L794:
	movw	r7, #:lower16:g_event_report	@ tmp485,
	movt	r7, #:upper16:g_event_report	@ tmp485,
	ldr	r3, [r7, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L796	@,
	movw	sl, #21976	@ tmp487,
	movw	ip, #21972	@ tmp489,
	ldrh	r7, [r4, sl]	@, <variable>.MP4Syntax.image_width
	movw	r5, #20080	@ tmp491,
	movw	r0, #20084	@ tmp493,
	movw	sl, #22960	@ tmp496,
	strh	r7, [fp, #-52]	@ movhi	@, para
	ldrh	r1, [r4, ip]	@, <variable>.MP4Syntax.image_height
	strh	r1, [fp, #-50]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	lr, [r4, r5]	@, <variable>.MP4Vol.video_object_layer_width
	strh	lr, [fp, #-48]	@ movhi	@, para
	ldrh	r2, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_height
	strh	r2, [fp, #-46]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L796:
	movw	r1, #20080	@ tmp501,
	movw	r5, #20084	@ tmp504,
	ldr	r0, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	lr, #21976	@ tmp500,
	ldr	r2, [r4, r5]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	movw	r3, #21972	@ tmp503,
	movw	r5, #22960	@ tmp506,
	movw	sl, #53720	@ tmp508,
	str	r0, [r4, lr]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	str	r2, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L797	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r8, #0	@ tmp522,
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	movw	r9, #53712	@ tmp532,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r7, #204]	@ tmp522, <variable>.p_usrdat
	str	r8, [r7, #192]	@ tmp522, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r7, #196]	@ tmp522, <variable>.p_usrdat
	str	r8, [r7, #200]	@ tmp522, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, sl]	@ tmp522, <variable>.BwdFsID
	str	r8, [r4, r9]	@ tmp522, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r9]	@ D.37068, <variable>.FwdFsID
	str	r0, [r4, sl]	@ D.37068, <variable>.BwdFsID
.L797:
	add	r0, r4, #22528	@ temp.2592, pCtx,
	movw	r3, #22968	@ tmp542,
	add	r5, r0, #80	@ temp.2592, temp.2592,
	movw	r1, #22960	@ tmp545,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	lr, #0	@ tmp543,
	mov	r1, r5	@, temp.2592
	str	lr, [r4, r3]	@ tmp543, <variable>.RefNum
	bl	FSP_ClearNotInVoQueue	@
	movw	r2, #22060	@ tmp547,
	ldr	r3, [r4, r2]	@ temp.2593, <variable>.pstExtraData
	ldr	ip, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L798	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L826	@,
.L798:
	movw	r3, #22960	@ tmp552,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L804	@,
.L799:
	movw	r0, #21976	@ tmp554,
	movw	r5, #21972	@ tmp556,
	ldr	r1, [r4, r0]	@, <variable>.MP4Syntax.image_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, r5]	@, <variable>.MP4Syntax.image_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L800	@,
.L805:
	ldr	r3, [r4, r5]	@ prephitmp.2564, <variable>.MP4Syntax.image_height
.L795:
	movw	r2, #21976	@ tmp563,
	movw	r0, #20084	@ tmp566,
	movw	r1, #20080	@ tmp569,
	ldr	lr, [r4, r0]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	r1, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	r5, #22556	@ tmp561,
	ldr	r0, [r4, r2]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	ip, #22039	@ tmp571,
	str	r3, [r4, r5]	@ prephitmp.2564, <variable>.OldPicWidth
	mov	r5, #0	@ tmp572,
	movw	r3, #22560	@ tmp562,
	strb	r5, [r4, ip]	@ tmp572, <variable>.MP4SyntaxState.vol_decode_right
	movw	ip, #21972	@ tmp565,
	str	r0, [r4, r3]	@ <variable>.MP4Syntax.image_width, <variable>.OldPicHeight
	str	lr, [r4, ip]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	mov	r0, r6	@ D.36883, BitUsed
	str	r1, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	b	.L758	@
.L820:
	movw	ip, #22556	@ tmp386,
	ldr	r5, [r4, ip]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	cmp	r3, r5	@ prephitmp.2506, <variable>.OldPicWidth
	bne	.L787	@,
	b	.L786	@
.L811:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	r1, #22572	@ tmp255,
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r8, #1	@ tmp256,
	str	r8, [r4, r1]	@ tmp256, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Vo	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L765	@
.L824:
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	b	.L780	@
.L792:
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L803	@
.L800:
	movw	r1, #:lower16:.LC70	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	b	.L805	@
.L810:
	movw	r6, #22572	@ tmp251,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	str	r9, [r4, r6]	@ tmp237, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	mov	sl, r8	@ len, CodeLen
	bl	Mp4_Syntax_Vos	@
	mov	r1, r5	@, StartCode
	mov	r8, r7	@ ptr, pCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L765	@
.L812:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	movw	r9, #22039	@ tmp261,
	bl	dprint_vfmw	@
	movw	r3, #22572	@ tmp259,
	mov	r2, r8	@, CodeLen
	mov	r0, #2	@ tmp260,
	mov	r1, r7	@, pCode
	str	r0, [r4, r3]	@ tmp260, <variable>.UserID
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Vol	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	sl, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L768	@,
	movw	r2, #22040	@ tmp263,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.last_vol_decode_right
	cmp	r3, #1	@ <variable>.MP4SyntaxState.last_vol_decode_right,
	beq	.L827	@,
.L768:
	mov	sl, r8	@ len, CodeLen
	mov	r8, r7	@ ptr, pCode
	b	.L765	@
.L809:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	add	r0, r4, #15680	@, pCtx,
	movw	r2, #22960	@ tmp246,
	add	r1, r0, #24	@,,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r9	@ D.36883, tmp237
	b	.L758	@
.L819:
	movw	r2, #21208	@ tmp343,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #2	@ <variable>.MP4Vop.vop_coding_type,
	beq	.L784	@,
	movw	r1, #21988	@ tmp346,
	movw	ip, #21980	@ tmp348,
	ldr	lr, [r4, ip]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r2, #20072	@ tmp353,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.time_base
	movw	r0, #21984	@ tmp356,
	ldr	r5, [r4, r2]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r2, #22000	@ tmp360,
	ldr	r3, [r4, r0]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r0, lr, ip	@ D.36986, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_base
	ldr	lr, [r4, r2]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	str	r0, [r4, r1]	@ D.36986, <variable>.MP4Syntax.time_base
	movw	r1, #21996	@ tmp358,
	mla	r3, r5, r0, r3	@ D.36990, <variable>.MP4Vol.vop_time_increment_resolution, D.36986, <variable>.MP4Syntax.time_increment
	movw	r5, #21992	@ tmp345,
	str	ip, [r4, r5]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.last_time_base
	rsb	r5, lr, r3	@ tmp362, <variable>.MP4Syntax.last_non_b_time, D.36990
	movw	lr, #22004	@ tmp359,
	str	r5, [r4, lr]	@ tmp362, <variable>.MP4Syntax.time_pp
	str	r3, [r4, r2]	@ D.36990, <variable>.MP4Syntax.last_non_b_time
	str	r3, [r4, r1]	@ D.36990, <variable>.MP4Syntax.time
	b	.L785	@
.L813:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	r3, #22572	@ tmp281,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, #3	@ tmp282,
	str	r0, [r4, r3]	@ tmp282, <variable>.UserID
	mov	r0, r4	@, pCtx
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Gop	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L765	@
.L814:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	cmp	r8, #4	@ CodeLen,
	beq	.L828	@,
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_Vop	@
	ldr	r1, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r1, #2	@ <variable>.PicIntegrality,
	mov	r6, r0	@ BitUsed,
	bne	.L773	@,
	add	sl, r4, #15680	@, pCtx,
	movw	lr, #22960	@ tmp288,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, sl, #24	@,,
	bl	MP4_ClearCurPacket	@
.L772:
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC64	@,
	mov	r2, r6	@, BitUsed
	movt	r1, #:upper16:.LC64	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r8, r7	@ ptr, pCode
	b	.L765	@
.L815:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_ShortHeader	@
	ldr	ip, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	ip, #2	@ <variable>.PicIntegrality,
	mov	r6, r0	@ BitUsed,
	bne	.L775	@,
	add	r2, r4, #15680	@, pCtx,
	movw	r3, #22960	@ tmp297,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_ClearCurPacket	@
	mov	r8, r7	@ ptr, pCode
	b	.L765	@
.L816:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_UserData	@
	add	r8, r4, #15680	@, pCtx,
	movw	r1, #22960	@ tmp303,
	mov	r6, r0	@ BitUsed,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, r8, #24	@,,
	mov	r8, r7	@ ptr, pCode
	bl	MP4_ClearCurPacket	@
	b	.L765	@
.L821:
	movw	r1, #22964	@ tmp434,
	ldr	r0, [r4, r1]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #0	@ <variable>.FspPartitionOK,
	bne	.L791	@,
.L802:
	mov	r0, r5	@, D.37023
	bl	ResetVoQueue	@
	b	.L791	@
.L825:
	movw	ip, #21976	@ tmp481,
	movw	r1, #20080	@ tmp482,
	ldr	lr, [r4, ip]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldr	r5, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	cmp	lr, r5	@ <variable>.MP4Syntax.image_width, <variable>.MP4Vol.video_object_layer_width
	bne	.L794	@,
	b	.L795	@
.L826:
	movw	lr, #22964	@ tmp550,
	ldr	r2, [r4, lr]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r2, #0	@ <variable>.FspPartitionOK,
	bne	.L799	@,
.L804:
	mov	r0, r5	@, temp.2592
	bl	ResetVoQueue	@
	b	.L799	@
.L775:
	mov	r0, r4	@, pCtx
	mov	r1, #196	@,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Record_HeadPacketInfo	@
	mov	r8, r7	@ ptr, pCode
	b	.L765	@
.L773:
	mov	r0, r4	@, pCtx
	movw	r1, #438	@,
	bl	MP4_Record_HeadPacketInfo	@
	b	.L772	@
.L784:
	movw	lr, #21980	@ tmp364,
	movw	ip, #21992	@ tmp365,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r5, #20072	@ tmp369,
	ldr	r3, [r4, ip]	@ <variable>.MP4Syntax.last_time_base, <variable>.MP4Syntax.last_time_base
	movw	r1, #21984	@ tmp372,
	ldr	ip, [r4, r5]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r0, #22004	@ tmp376,
	ldr	r5, [r4, r1]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r3, r2, r3	@ tmp366, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.last_time_base
	movw	lr, #22000	@ tmp377,
	ldr	r1, [r4, r0]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	movw	lr, #22008	@ tmp375,
	mla	r3, ip, r3, r5	@ D.36998, <variable>.MP4Vol.vop_time_increment_resolution, tmp366, <variable>.MP4Syntax.time_increment
	rsb	r0, r2, r1	@ tmp378, <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.time_pp
	movw	r1, #21996	@ tmp374,
	add	r5, r0, r3	@ tmp381, tmp378, D.36998
	str	r5, [r4, lr]	@ tmp381, <variable>.MP4Syntax.time_bp
	str	r3, [r4, r1]	@ D.36998, <variable>.MP4Syntax.time
	b	.L785	@
.L828:
	mov	r0, r4	@, pCtx
	mov	r1, r5	@, StartCode
	bl	MP4_Record_HeadPacketInfo	@
	mov	r6, r9	@ BitUsed, tmp237
	b	.L772	@
.L827:
	add	ip, r4, #19968	@, pCtx,
	add	lr, r4, #20480	@, pCtx,
	add	r1, lr, #124	@,,
	add	r0, ip, #32	@,,
	mov	r2, #604	@,
	str	r3, [fp, #-112]	@,
	bl	memcpy	@
	ldr	r1, [fp, #-112]	@,
	mov	sl, r8	@ len, CodeLen
	movw	r8, #21269	@ tmp276,
	strb	r1, [r4, r8]	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4Syntax.vol_decode_over
	mov	r8, r7	@ ptr, pCode
	strb	r1, [r4, r9]	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	b	.L765	@
	.fnend
	.size	Mp4_Syntax_Parse, .-Mp4_Syntax_Parse
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
.LFB1389:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22548	@ tmp165,
	mov	r5, r1	@ ptr_strm_para, ptr_strm_para
	ldr	r3, [r4, r0]	@ <variable>.InitComplete, <variable>.InitComplete
	cmp	r3, #0	@ <variable>.InitComplete,
	beq	.L830	@,
	ldr	r1, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r1, #0	@ <variable>.LenInByte,
	ble	.L830	@,
	ldr	r2, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #0	@ <variable>.PhyAddr,
	beq	.L830	@,
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L830	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	add	r6, r4, #15680	@ D.37759, pCtx,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	add	r6, r6, #24	@ D.37759, D.37759,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #88]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #92]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@,* <variable>.VirAddr
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	ldrb	r2, [ip, #1]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	mov	r2, #160	@,
	mov	r1, r5	@, ptr_strm_para
	mov	r0, r6	@, D.37759
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, D.37759
	bl	MP4_GetScdUpMsg	@
	mov	r0, r4	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@ D.37760,
	mov	r7, r0	@ D.37760,
	beq	.L870	@,
	mov	r1, r6	@, D.37759
	mov	r0, r4	@, pCtx
	movw	r6, #15712	@ tmp205,
	movw	sl, #15704	@ tmp208,
	movw	r8, #15716	@ tmp211,
	bl	MP4_GetScdUpMsg	@
	ldr	ip, [r4, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r7, #22044	@ tmp207,
	ldr	r2, [r4, sl]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r6, #22052	@ tmp210,
	ldr	r0, [r4, r8]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	sl, #22056	@ tmp213,
	movw	r8, #22048	@ tmp204,
	mov	r1, #0	@ tmp214,
	str	ip, [r4, r8]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	r2, [r4, r7]	@ <variable>.VirAddr, <variable>.BitsObj.vir_addr
	str	r0, [r4, r6]	@ <variable>.LenInByte, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	str	r1, [r4, sl]	@ tmp214, <variable>.BitsObj.offset
	bl	Mp4_Get_DecMode	@
	ldr	r1, [r4, r7]	@, <variable>.BitsObj.vir_addr
	ldr	r2, [r4, r6]	@, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Parse	@
	mov	r2, #19968	@ tmp233,
	ldr	r9, [r4, r7]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	ldr	r1, [r4, r2]	@ D.37768, <variable>.PicIntegrality
	tst	r1, #32	@ D.37768,
	mov	r3, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ tmp232, bits_consume,
	add	ip, r9, r3	@ tmp222, <variable>.BitsObj.vir_addr, byte_num
	ldr	r9, [r4, r6]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	str	ip, [r4, r7]	@ tmp222, <variable>.BitsObj.vir_addr
	ldr	r7, [r4, r8]	@, <variable>.BitsObj.phy_addr
	str	r0, [r4, sl]	@ tmp232, <variable>.BitsObj.offset
	add	ip, r3, r7	@ tmp226, byte_num,
	rsb	r3, r3, r9	@ tmp230, byte_num, <variable>.BitsObj.len
	str	ip, [r4, r8]	@ tmp226, <variable>.BitsObj.phy_addr
	str	r3, [r4, r6]	@ tmp230, <variable>.BitsObj.len
	beq	.L834	@,
	movw	lr, #22092	@ tmp237,
	bic	r1, r1, #178	@ tmp236, D.37768,
	ldr	r3, [r4, lr]	@ D.37776, <variable>.DecMode
	str	r1, [r4, r2]	@ tmp236, <variable>.PicIntegrality
	cmp	r3, #2	@ D.37776,
	beq	.L871	@,
	cmp	r3, #1	@ D.37776,
	beq	.L872	@,
	cmp	r3, #4	@ D.37776,
	bne	.L837	@,
	movw	ip, #21912	@ tmp242,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.2630, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ prephitmp.2630,
	movweq	r3, #21912	@ tmp245,
	movweq	r2, #22576	@ tmp243,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2630, <variable>.MP4Syntax.syn_vop.vop_coding_type
	moveq	r1, #0	@ tmp244,
	streq	r1, [r4, r2]	@ tmp244, <variable>.PPicFound
	cmp	r3, #2	@ prephitmp.2630,
	cmpne	r3, #4	@, prephitmp.2630,
	beq	.L873	@,
.L840:
	cmp	r3, #1	@ prephitmp.2630,
	movweq	r2, #22576	@ tmp255,
	streq	r3, [r4, r2]	@ prephitmp.2630, <variable>.PPicFound
.L837:
	mov	r0, r4	@, pCtx
	bl	Mp4_Frame_Atr	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L874	@,
	cmn	r0, #2	@ ret,
	beq	.L875	@,
	movw	sl, #22960	@ tmp259,
	movw	r6, #53712	@ tmp261,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	movw	r7, #53720	@ tmp265,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	mov	r6, r0	@ pFwdImg,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	mov	r7, r0	@ pBwdImg,
	beq	.L876	@,
	movw	r3, #21275	@ tmp278,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.37812, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.37812,
	cmpne	r3, #3	@, D.37812,
	bne	.L844	@,
	movw	r7, #22060	@ tmp287,
	ldr	r1, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r2, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r1, r0	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L845	@,
	movw	lr, #53728	@ tmp292,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	ip, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	ldr	r3, [ip, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
.L832:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L872:
	movw	r2, #21912	@ tmp240,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L837	@,
.L868:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L844:
	cmp	r3, #2	@ D.37812,
	beq	.L877	@,
.L845:
	movw	ip, #21912	@ tmp321,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L847	@,
	movw	sl, #22968	@ tmp323,
	movw	r6, #53712	@ tmp326,
	ldr	r8, [r4, sl]	@ <variable>.RefNum, <variable>.RefNum
	movw	r7, #53720	@ tmp327,
	ldr	r3, [r4, r6]	@ prephitmp.2628, <variable>.FwdFsID
	cmp	r8, #0	@ <variable>.RefNum,
	ldr	r9, [r4, r7]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movgt	r8, #2	@ iftmp.568,
	movle	r8, #1	@ iftmp.568,
	cmp	r3, r9	@ prephitmp.2628, <variable>.BwdFsID
	str	r8, [r4, sl]	@ iftmp.568, <variable>.RefNum
	beq	.L850	@,
	movw	r8, #22960	@ tmp329,
	mov	r1, r3	@, prephitmp.2628
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L864	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_SetDisplay	@
.L864:
	ldr	r3, [r4, r7]	@ prephitmp.2628, <variable>.BwdFsID
.L850:
	movw	r1, #53724	@ tmp345,
	movw	r7, #22004	@ tmp353,
	movw	r8, #53728	@ tmp348,
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ <variable>.BwdCodingType, <variable>.BwdCodingType
	ldr	r9, [r4, r1]	@ <variable>.BwdTimePP, <variable>.BwdTimePP
	movw	r6, #22960	@ tmp355,
	ldr	r0, [r4, r8]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r2, #53716	@ tmp344,
	ldr	sl, [r4, r7]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	movw	r7, #53712	@ tmp341,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.CurCodingType, <variable>.CurCodingType
	str	r3, [r4, r7]	@ prephitmp.2628, <variable>.FwdFsID
	movw	r3, #53720	@ tmp347,
	str	r0, [r4, r3]	@ <variable>.CurFsID, <variable>.BwdFsID
	str	r9, [r4, r2]	@ <variable>.BwdTimePP, <variable>.FwdTimePP
	mov	r2, #1	@,
	str	sl, [r4, r1]	@ <variable>.MP4Syntax.time_pp, <variable>.BwdTimePP
	mov	r1, r0	@, <variable>.CurFsID
	strb	lr, [r4, #0]	@ <variable>.BwdCodingType, <variable>.FwdCodingType
	strb	ip, [r4, #1]	@ <variable>.CurCodingType, <variable>.BwdCodingType
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r0, #21912	@ tmp363,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r2, #4	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L847	@,
	movw	ip, #21272	@ tmp408,
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.packed_mode, <variable>.MP4Syntax.packed_mode
	cmp	sl, #0	@ <variable>.MP4Syntax.packed_mode,
	beq	.L878	@,
.L857:
	mov	r0, #0	@ D.37729,
	b	.L832	@
.L847:
	mov	r2, r5	@, ptr_strm_para
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	movw	ip, #21912	@ tmp365,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ D.37868, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ D.37868,
	cmpne	r3, #4	@, D.37868,
	bne	.L853	@,
	movw	r0, #22576	@ tmp373,
	ldr	r2, [r4, r0]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	beq	.L879	@,
.L853:
	movw	r5, #22060	@ tmp381,
	cmp	r3, #1	@ D.37868,
	ldr	r1, [r4, r5]	@ temp.2686, <variable>.pstExtraData
	movweq	r2, #22576	@ tmp379,
	streq	r3, [r4, r2]	@ D.37868, <variable>.PPicFound
	add	r3, r4, #1040	@ D.37876, pCtx,
	str	r3, [r4, #1036]	@ D.37876, <variable>.pMp4DecParam
	ldr	r2, [r1, #680]	@ D.37877, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37877,
	beq	.L880	@,
	cmp	r2, #2	@ D.37877,
	beq	.L881	@,
.L856:
	movw	r3, #21912	@ tmp398,
	mov	r2, #0	@ tmp396,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	r2, [r4, #1198]	@ tmp396, <variable>.Mp4DecParam.IsNvopCopy
	cmp	r5, r2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L857	@,
	movw	r1, #:lower16:g_event_report	@ tmp400,
	movt	r1, #:upper16:g_event_report	@ tmp400,
	ldr	r3, [r1, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L857	@,
	sub	r2, fp, #44	@ tmp406,,
	movw	lr, #22960	@ tmp404,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #20	@,
	str	r5, [r2, #-4]!	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, para
	blx	r3	@ g_event_report
	mov	r0, r5	@ D.37729, <variable>.MP4Syntax.syn_vop.vop_coding_type
	b	.L832	@
.L871:
	movw	r1, #21912	@ tmp238,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L837	@,
	b	.L868	@
.L877:
	movw	r8, #22060	@ tmp300,
	ldr	r1, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #0]	@ temp.2659, <variable>.s32RefErrThr
	cmp	r1, r3	@ <variable>.error_level, temp.2659
	bhi	.L882	@,
	ldr	r0, [r0, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r0	@ temp.2659, <variable>.error_level
	bcs	.L845	@,
	movw	lr, #53728	@ tmp314,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	ldr	r3, [r3, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L878:
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8]	@, <variable>.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	mov	r7, r0	@ pFwd,
	beq	.L883	@,
	ldr	r3, [r5, #472]	@ D.37916, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37916,
	beq	.L859	@,
	ldr	r0, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L859	@,
	ldr	r1, [r5, #476]	@ D.37920, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.37920,
	beq	.L859	@,
	ldr	ip, [r7, #472]	@ D.37927, <variable>.pstDecodeFs
	movw	r0, #21976	@ tmp446,
	ldr	r2, [r3, #12]	@ iftmp.2704, <variable>.PhyAddr
	cmp	ip, #0	@ D.37927,
	ldr	r3, [r1, #12]	@ D.37924, <variable>.PhyAddr
	movw	r1, #21972	@ tmp448,
	ldr	lr, [r4, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldrne	r6, [ip, #12]	@ iftmp.572, <variable>.PhyAddr
	mov	r0, r4	@, pCtx
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	mov	r1, r5	@, pCur
	moveq	r6, r2	@ iftmp.572, iftmp.2704
	stmia	sp, {r6, lr}	@ phole stm
	str	ip, [sp, #8]	@ <variable>.MP4Syntax.image_height,
	bl	Vdm_Mem_Move	@
	mov	r0, #0	@ D.37729,
	b	.L832	@
.L880:
	cmp	r3, #0	@ D.37876,
	beq	.L856	@,
	movw	ip, #21912	@ tmp382,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L856	@,
	movw	r0, #53728	@ tmp386,
	movw	lr, #22960	@ tmp385,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r3, #0	@ tmp384,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r3, [r4, #1036]	@ tmp384, <variable>.pMp4DecParam
	bl	FSP_ClearLogicFs	@
	b	.L868	@
.L830:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L882:
	movw	r2, #53728	@ tmp304,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	ip, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	ldr	r3, [ip, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L881:
	ldr	r2, [r1, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L856	@,
	cmp	r3, #0	@ D.37876,
	beq	.L856	@,
	movw	ip, #21912	@ tmp388,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L856	@,
	movw	ip, #22960	@ tmp391,
	movw	r0, #53728	@ tmp392,
	mov	lr, #0	@ tmp390,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	str	lr, [r4, #1036]	@ tmp390, <variable>.pMp4DecParam
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, r5]	@ temp.2693, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r1, [r3, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r1, #1	@ tmp395, <variable>.stDisParams.s32DisNums,
	str	r2, [r3, #684]	@ tmp395, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L879:
	movw	lr, #53728	@ tmp377,
	movw	r3, #22960	@ tmp375,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L873:
	movw	lr, #22576	@ tmp253,
	ldr	r2, [r4, lr]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	bne	.L840	@,
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L834:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L870:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.37729, D.37760
	b	.L832	@
.L876:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC88	@,
	ldr	r2, .L884	@,
	movt	r1, #:upper16:.LC88	@,
	movw	r3, #3527	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L875:
	movw	r1, #:lower16:.LC87	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L868	@
.L874:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r6	@ D.37729, ret
	b	.L832	@
.L859:
	movw	r6, #53728	@ tmp434,
	movw	r1, #22960	@ tmp432,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r2, #53720	@ tmp441,
	ldr	ip, [r4, r2]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r3, #53712	@ tmp437,
	ldr	r2, [r4, r3]	@ <variable>.FwdFsID, <variable>.FwdFsID
	movw	r1, #:lower16:.LC94	@,
	ldr	r3, [r4, r6]	@ <variable>.CurFsID, <variable>.CurFsID
	movt	r1, #:upper16:.LC94	@,
	str	ip, [sp, #0]	@ <variable>.BwdFsID,
	mov	r0, #0	@,
	ldr	ip, [r5, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #480]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	ip, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	ip, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	b	.L868	@
.L883:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	movw	r2, #3702	@,
	mov	r0, sl	@, <variable>.MP4Syntax.packed_mode
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	str	r7, [sp, #0]	@ pFwd,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.37729,
	b	.L832	@
.L885:
	.align	2
.L884:
	.word	.LANCHOR0+1356
	.fnend
	.size	MPEG4DEC_Decode, .-MPEG4DEC_Decode
	.global	scan_tables
	.global	default_intra_matrix
	.global	default_inter_matrix
	.global	sprite_trajectory_len
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	default_intra_matrix, %object
	.size	default_intra_matrix, 256
default_intra_matrix:
	.word	8
	.word	17
	.word	18
	.word	19
	.word	21
	.word	23
	.word	25
	.word	27
	.word	17
	.word	18
	.word	19
	.word	21
	.word	23
	.word	25
	.word	27
	.word	28
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	25
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	41
	.word	27
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	41
	.word	45
	.type	default_inter_matrix, %object
	.size	default_inter_matrix, 256
default_inter_matrix:
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	20
	.word	21
	.word	22
	.word	23
	.word	25
	.word	26
	.word	27
	.word	28
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	28
	.word	30
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	28
	.word	30
	.word	31
	.word	23
	.word	24
	.word	25
	.word	27
	.word	28
	.word	30
	.word	31
	.word	33
	.type	scan_tables, %object
	.size	scan_tables, 768
scan_tables:
	.word	0
	.word	1
	.word	8
	.word	16
	.word	9
	.word	2
	.word	3
	.word	10
	.word	17
	.word	24
	.word	32
	.word	25
	.word	18
	.word	11
	.word	4
	.word	5
	.word	12
	.word	19
	.word	26
	.word	33
	.word	40
	.word	48
	.word	41
	.word	34
	.word	27
	.word	20
	.word	13
	.word	6
	.word	7
	.word	14
	.word	21
	.word	28
	.word	35
	.word	42
	.word	49
	.word	56
	.word	57
	.word	50
	.word	43
	.word	36
	.word	29
	.word	22
	.word	15
	.word	23
	.word	30
	.word	37
	.word	44
	.word	51
	.word	58
	.word	59
	.word	52
	.word	45
	.word	38
	.word	31
	.word	39
	.word	46
	.word	53
	.word	60
	.word	61
	.word	54
	.word	47
	.word	55
	.word	62
	.word	63
	.word	0
	.word	1
	.word	2
	.word	3
	.word	8
	.word	9
	.word	16
	.word	17
	.word	10
	.word	11
	.word	4
	.word	5
	.word	6
	.word	7
	.word	15
	.word	14
	.word	13
	.word	12
	.word	19
	.word	18
	.word	24
	.word	25
	.word	32
	.word	33
	.word	26
	.word	27
	.word	20
	.word	21
	.word	22
	.word	23
	.word	28
	.word	29
	.word	30
	.word	31
	.word	34
	.word	35
	.word	40
	.word	41
	.word	48
	.word	49
	.word	42
	.word	43
	.word	36
	.word	37
	.word	38
	.word	39
	.word	44
	.word	45
	.word	46
	.word	47
	.word	50
	.word	51
	.word	56
	.word	57
	.word	58
	.word	59
	.word	52
	.word	53
	.word	54
	.word	55
	.word	60
	.word	61
	.word	62
	.word	63
	.word	0
	.word	8
	.word	16
	.word	24
	.word	1
	.word	9
	.word	2
	.word	10
	.word	17
	.word	25
	.word	32
	.word	40
	.word	48
	.word	56
	.word	57
	.word	49
	.word	41
	.word	33
	.word	26
	.word	18
	.word	3
	.word	11
	.word	4
	.word	12
	.word	19
	.word	27
	.word	34
	.word	42
	.word	50
	.word	58
	.word	35
	.word	43
	.word	51
	.word	59
	.word	20
	.word	28
	.word	5
	.word	13
	.word	6
	.word	14
	.word	21
	.word	29
	.word	36
	.word	44
	.word	52
	.word	60
	.word	37
	.word	45
	.word	53
	.word	61
	.word	22
	.word	30
	.word	7
	.word	15
	.word	23
	.word	31
	.word	38
	.word	46
	.word	54
	.word	62
	.word	39
	.word	47
	.word	55
	.word	63
	.type	__func__.38404, %object
	.size	__func__.38404, 20
__func__.38404:
	.ascii	"Mp4_Syntax_Slice_SH\000"
	.type	__func__.38312, %object
	.size	__func__.38312, 23
__func__.38312:
	.ascii	"Mp4_Syntax_Slice_NotSH\000"
	.space	1
	.type	__func__.38504, %object
	.size	__func__.38504, 14
__func__.38504:
	.ascii	"MP4_Dec_Slice\000"
	.space	2
	.type	__func__.37448, %object
	.size	__func__.37448, 15
__func__.37448:
	.ascii	"Mp4_Set_DecPar\000"
	.space	1
	.type	__func__.37715, %object
	.size	__func__.37715, 16
__func__.37715:
	.ascii	"MPEG4DEC_Decode\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sprite_trajectory_len, %object
	.size	sprite_trajectory_len, 120
sprite_trajectory_len:
@ code:
	.word	0
@ len:
	.byte	2
	.space	3
@ code:
	.word	2
@ len:
	.byte	3
	.space	3
@ code:
	.word	3
@ len:
	.byte	3
	.space	3
@ code:
	.word	4
@ len:
	.byte	3
	.space	3
@ code:
	.word	5
@ len:
	.byte	3
	.space	3
@ code:
	.word	6
@ len:
	.byte	3
	.space	3
@ code:
	.word	14
@ len:
	.byte	4
	.space	3
@ code:
	.word	30
@ len:
	.byte	5
	.space	3
@ code:
	.word	62
@ len:
	.byte	6
	.space	3
@ code:
	.word	126
@ len:
	.byte	7
	.space	3
@ code:
	.word	254
@ len:
	.byte	8
	.space	3
@ code:
	.word	510
@ len:
	.byte	9
	.space	3
@ code:
	.word	1022
@ len:
	.byte	10
	.space	3
@ code:
	.word	2046
@ len:
	.byte	11
	.space	3
@ code:
	.word	4094
@ len:
	.byte	12
	.space	3
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	" slice num %d is not extpected!\012\000"
	.space	3
.LC1:
	.ascii	" line %d packet is wrong!\012\000"
	.space	1
.LC2:
	.ascii	"vop_coding_type = %d is not expected!\012\000"
	.space	1
.LC3:
	.ascii	"MPEG4 destroy\012\000"
	.space	1
.LC4:
	.ascii	"pLastPacket->StreamPack[0].VirAddr is NULL!!\012\000"
	.space	2
.LC5:
	.ascii	"StreamIDNum = %d > (%d)\012\000"
	.space	3
.LC6:
	.ascii	"pCtx is NUL!!!\012\000"
.LC7:
	.ascii	"line %d MP4_Combine_HdPacket failed!!\012\000"
	.space	1
.LC8:
	.ascii	"FUN: %s pCtx->Mp4DecParam.SlcNum = %d\012\000"
	.space	1
.LC9:
	.ascii	"pSlcPara->mb_start_num = %d, totalMbMin1 = %d\012\000"
	.space	1
.LC10:
	.ascii	" pSlcPara->mb_start_num = %d, MbCnt = %d\012\000"
	.space	2
.LC11:
	.ascii	"FUN: %s MP4_ClearCurPacket\012\000"
.LC12:
	.ascii	"warning! profile_and_level_indication=%#x, maybe HD"
	.ascii	" pic...\012\000"
.LC13:
	.ascii	"fatal stream error --- VOP marker_bit = 0\012\000"
	.space	1
.LC14:
	.ascii	"VDH doesn't support SPRITE_STATIC & SPRITE_GMC\012\000"
.LC15:
	.ascii	"VDH doesn't support SPRITE_STATIC\012\000"
	.space	1
.LC16:
	.ascii	"Unknown sprite_enable\012\000"
	.space	1
.LC17:
	.ascii	"ERROR: not_8_bit !=0\012\000"
	.space	2
.LC18:
	.ascii	"not support no complexity_estimation_disable\012\000"
	.space	2
.LC19:
	.ascii	"not support data_partitioned\012\000"
	.space	2
.LC20:
	.ascii	"not support newpred_enable\012\000"
.LC21:
	.ascii	"not support reduced_resolution_vop_eanble\012\000"
	.space	1
.LC22:
	.ascii	"not support scalability\012\000"
	.space	3
.LC23:
	.ascii	"Warning : vop slice num %d != 0\012\000"
	.space	3
.LC24:
	.ascii	"vop ---%d\012\000"
	.space	1
.LC25:
	.ascii	"VDH doesn't support S_VOP\012\000"
	.space	1
.LC26:
	.ascii	"parse time_module_base stream not enough\012\000"
	.space	2
.LC27:
	.ascii	"error: vop_coding_type = %d, but vop_fcode_forward "
	.ascii	"= 0\012\000"
.LC28:
	.ascii	"error: B vop, but vop_fcode_backward = 0\012\000"
	.space	2
.LC29:
	.ascii	"warning streamIDNum %d != 0 \012\000"
	.space	2
.LC30:
	.ascii	"module time base parse error, more than %d '1' was "
	.ascii	"found!\012\000"
	.space	1
.LC31:
	.ascii	"fatal stream error --- GOP marker_bit = 0\012\000"
	.space	1
.LC32:
	.ascii	"NVOP VDM copy process................\012\000"
	.space	1
.LC33:
	.ascii	"%s %d  abnormal!\012\000"
	.space	2
.LC34:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC35:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC36:
	.ascii	"FrameNum=%d\012\000"
	.space	3
.LC37:
	.ascii	"vop_coding_type=%d\012\000"
.LC38:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC39:
	.ascii	"CurImage %d is already out put\012\000"
.LC40:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC41:
	.ascii	"MPEG4DEC Init  -----\012\000"
	.space	2
.LC42:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC43:
	.ascii	"MPEG4DEC Init success -----\012\000"
	.space	3
.LC44:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC45:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC46:
	.ascii	"actual frame size(%dx%d) exeed max config(%dx%d)\012"
	.ascii	"\000"
	.space	2
.LC47:
	.ascii	"MPEG4 Frame_Init return err!\012\000"
	.space	2
.LC48:
	.ascii	"MPEG4 Frame_Init PmvNum=%d, FrameNum=%d, error!\012"
	.ascii	"\000"
	.space	3
.LC49:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC50:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC51:
	.ascii	"DivX%dBuild%d%c\000"
.LC52:
	.ascii	"DivX%db%d%c\000"
.LC53:
	.ascii	"FFmpe%*[^b]b%d\000"
	.space	1
.LC54:
	.ascii	"FFmpeg v%d.%d.%d / libavcodec build: %d\000"
.LC55:
	.ascii	"Lavc%d.%d.%d\000"
	.space	3
.LC56:
	.ascii	"ffmpeg\000"
	.space	1
.LC57:
	.ascii	"XviD%d\000"
	.space	1
.LC58:
	.ascii	"Not find start code \012\000"
	.space	2
.LC59:
	.ascii	"VOS beginning ~ !\012\000"
	.space	1
.LC60:
	.ascii	"VO beginning ~ !\012\000"
	.space	2
.LC61:
	.ascii	"VOL beginning ~ !\012\000"
	.space	1
.LC62:
	.ascii	"GOP beginning ~ !\012\000"
	.space	1
.LC63:
	.ascii	"VOP beginning ~ !\012\000"
	.space	1
.LC64:
	.ascii	"BitUsed=%d\012\000"
.LC65:
	.ascii	"SHVOP beginning ~ !\012\000"
	.space	3
.LC66:
	.ascii	"USERDATA beginning ~ !\012\000"
.LC67:
	.ascii	"MPEG4 Frame_Init return err 3!\012\000"
.LC68:
	.ascii	"MPEG4 Frame_Init return err 1!\012\000"
.LC69:
	.ascii	"vop right\012\000"
	.space	1
.LC70:
	.ascii	"MPEG4 Frame_Init return err 2!\012\000"
.LC71:
	.ascii	"bits over boundary\012\000"
.LC72:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC73:
	.ascii	"MPEG4DEC Decode -----\012\000"
	.space	1
.LC74:
	.ascii	"ptr_strm_para->PhyAddr0=0x%x\012\000"
	.space	2
.LC75:
	.ascii	"ptr_strm_para->Length0=%d\012\000"
	.space	1
.LC76:
	.ascii	"ptr_strm_para->IsLastSeg0=%d\012\000"
	.space	2
.LC77:
	.ascii	"ptr_strm_para->PhyAddr1=0x%x\012\000"
	.space	2
.LC78:
	.ascii	"ptr_strm_para->Length1=%d\012\000"
	.space	1
.LC79:
	.ascii	"ptr_strm_para->IsLastSeg1=%d\012\000"
	.space	2
.LC80:
	.ascii	"ptr_strm_para->Length0 = %d\012\000"
	.space	3
.LC81:
	.ascii	"byte0: = 0x%x\012\000"
	.space	1
.LC82:
	.ascii	"byte1: = 0x%x\012\000"
	.space	1
.LC83:
	.ascii	"byte2: = 0x%x\012\000"
	.space	1
.LC84:
	.ascii	"byte3: = 0x%x\012\000"
	.space	1
.LC85:
	.ascii	"MP4_Check_CurPacket failed!\012\000"
	.space	3
.LC86:
	.ascii	"Mp4_Frame_Atr return fail\012\000"
	.space	1
.LC87:
	.ascii	"Frame req error---\012\000"
.LC88:
	.ascii	"fuction return value is null, %s %d!!\012\000"
	.space	1
.LC89:
	.ascii	"dec P/S frame, fwd ref err(%d) > ref_thr(%d)\012\000"
	.space	2
.LC90:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC91:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC92:
	.ascii	"NVOP mem move--\012\000"
	.space	3
.LC93:
	.ascii	"line: %d pCur = %p, pFwd = %p\012\000"
	.space	1
.LC94:
	.ascii	"CurFsID(f%d,%d,b%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC95:
	.ascii	"bits not enought\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.37094, %object
	.size	MemArrange.37094, 628
MemArrange.37094:
	.space	628
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
