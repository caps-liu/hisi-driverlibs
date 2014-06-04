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
@ -DKBUILD_BASENAME=KBUILD_STR(mpeg4) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
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
.LFB1349:
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
	sxth	r0, r3	@ prephitmp.634, n
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	log2bin, .-log2bin
	.global	__aeabi_idiv
	.align	2
	.global	MP4_GetGMCparam
	.type	MP4_GetGMCparam, %function
MP4_GetGMCparam:
	.fnstart
.LFB1351:
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
	ldrb	r4, [r0, #65]	@ zero_extendqisi2	@ D.35724, <variable>.syn_vol.sprite_warping_accuracy
	mov	r9, #2	@ tmp205,
	mov	r6, r1	@ p_gmc, p_gmc
	mov	r2, r9, asl r4	@, tmp205,
	mov	r3, r0	@ p_syntax_des, p_syntax_des
	mov	r0, #16	@,
	str	r2, [fp, #-60]	@, %sfp
	mov	r1, r2	@,
	rsb	r4, r4, #3	@, D.35724,
	str	r3, [fp, #-104]	@,
	str	r4, [fp, #-88]	@, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-104]	@,
	ldr	sl, [r3, #708]	@ D.35726, <variable>.image_width
	ldr	r9, [r3, #704]	@ D.35728, <variable>.image_height
	cmp	sl, #1	@ D.35726,
	mov	r8, sl, asl #4	@ tmp209, D.35726,
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
	ldr	ip, [r3, #680]	@ sprite_ref$0$0.708, <variable>.x
	str	r1, [fp, #-52]	@, %sfp
	ldr	r5, [r3, #692]	@, <variable>.y
	ldr	r0, [r3, #688]	@ D.35738, <variable>.x
	str	r5, [fp, #-48]	@, %sfp
	ldr	r7, [r3, #696]	@, <variable>.x
	str	r7, [fp, #-56]	@, %sfp
	movle	r7, #1	@ w2,
	ldr	lr, [r3, #700]	@ D.35741, <variable>.y
	ble	.L10	@,
	mov	r4, #0	@ alpha,
	mov	r1, #1	@ tmp366,
.L11:
	add	r4, r4, #1	@ alpha, alpha,
	mov	r7, r1, asl r4	@ w2, tmp366,
	cmp	sl, r7	@ D.35726, w2
	bgt	.L11	@,
.L10:
	cmp	r9, #1	@ D.35728,
	movgt	r5, #0	@ beta,
	movgt	r1, #1	@ tmp365,
	ble	.L44	@,
.L14:
	add	r5, r5, #1	@ beta, beta,
	mov	r8, r1, asl r5	@ h2, tmp365,
	cmp	r9, r8	@ D.35728, h2
	bgt	.L14	@,
	mov	r1, r8, asl #4	@, h2,
	str	r1, [fp, #-92]	@, %sfp
.L13:
	ldrb	r3, [r3, #12]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r3, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L45	@,
	ldr	r3, [fp, #-52]	@, %sfp
	add	r0, r0, ip	@ tmp220, D.35738, sprite_ref$0$0.708
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r0, sl, asl #1	@, tmp222, tmp220, D.35726,
	add	lr, lr, r3	@ tmp225, D.35741,
	add	r1, r1, r3	@,,
	str	r1, [fp, #-48]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	add	lr, lr, r9, asl #1	@, tmp227, tmp225, D.35728,
	add	r3, r1, ip	@,, sprite_ref$0$0.708
	ldr	r1, [fp, #-60]	@, %sfp
	str	r3, [fp, #-56]	@, %sfp
	mov	r3, r1, asr #1	@ D.35777,,
	ldr	r1, [fp, #-52]	@, %sfp
	mul	lr, r3, lr	@, D.35777, tmp227
	mul	r1, r1, r3	@,, D.35777
	mul	r0, r3, r0	@ sprite_ref$1$0, D.35777, tmp222
	mul	ip, ip, r3	@ sprite_ref$0$0.708, sprite_ref$0$0.708, D.35777
	str	lr, [fp, #-84]	@, %sfp
	str	r1, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-48]	@, %sfp
	mul	r1, r1, r3	@,, D.35777
	str	r1, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	mul	r1, r1, r3	@,, D.35777
	str	r1, [fp, #-80]	@, %sfp
.L16:
	rsb	r3, sl, sl, asl #28	@, tmp231, D.35726, D.35726,
	rsb	lr, r7, sl	@, w2, D.35726
	mul	r1, r2, ip	@, r, sprite_ref$0$0.708
	mov	r3, r3, asl #4	@ tmp232, tmp231,
	str	lr, [fp, #-64]	@, %sfp
	mla	r0, r2, r0, r3	@ tmp233, r, sprite_ref$1$0, tmp232
	str	r2, [fp, #-96]	@,
	str	ip, [fp, #-100]	@,
	mul	r3, lr, r1	@ tmp235,,
	str	r1, [fp, #-48]	@, %sfp
	mov	r1, sl	@, D.35726
	mla	r0, r7, r0, r3	@ D.35814, w2, tmp233, tmp235
	cmp	r0, #0	@ D.35814,
	movgt	r3, sl, asr #1	@, D.35726,
	movle	lr, sl, asr #1	@, D.35726,
	addgt	r0, r0, r3	@ iftmp.412, D.35814,
	rsble	r0, lr, r0	@ iftmp.412,, D.35814
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
	mla	r3, lr, r1, ip	@ D.35833,,, tmp243
	ldr	ip, [fp, #-100]	@,
	cmp	r3, #0	@ D.35833,
	str	ip, [fp, #-100]	@,
	ldrgt	r1, [fp, #-76]	@, %sfp
	ldrle	lr, [fp, #-76]	@, %sfp
	add	r0, r0, r7, asl #4	@,,, w2,
	str	r0, [fp, #-72]	@, %sfp
	addgt	r0, r1, r3	@ iftmp.413,, D.35833
	rsble	r0, lr, r3	@ iftmp.413,, D.35833
	mov	r1, sl	@, D.35726
	bl	__aeabi_idiv	@
	ldr	r2, [fp, #-96]	@,
	ldr	r1, [fp, #-80]	@, %sfp
	rsb	r3, r8, r9	@ D.35841, h2, D.35728
	mul	sl, r2, r8	@ tmp248, r, h2
	mul	ip, r1, sl	@ tmp249,, tmp248
	ldr	sl, [fp, #-56]	@, %sfp
	str	r0, [fp, #-64]	@, %sfp
	ldr	r0, [fp, #-48]	@, %sfp
	mla	r1, r3, r0, ip	@ D.35848, D.35841,, tmp249
	mov	r0, r9, asr #1	@ prephitmp.698, D.35728,
	mul	r3, r3, sl	@ tmp257, D.35841,
	ldr	sl, [fp, #-84]	@, %sfp
	cmp	r1, #0	@ D.35848,
	ldr	ip, [fp, #-100]	@,
	addgt	r1, r1, r0	@, D.35848, prephitmp.698
	rsble	r1, r0, r1	@, prephitmp.698, D.35848
	str	r1, [fp, #-48]	@, %sfp
	rsb	r1, r9, r9, asl #28	@, tmp253, D.35728, D.35728,
	mov	r1, r1, asl #4	@ tmp254, tmp253,
	mla	r1, r2, sl, r1	@ tmp255, r,, tmp254
	ldr	sl, [fp, #-68]	@, %sfp
	mla	r3, r8, r1, r3	@ D.35864, h2, tmp255, tmp257
	cmp	r3, #0	@ D.35864,
	addgt	r3, r0, r3	@ iftmp.415, prephitmp.698, D.35864
	rsble	r3, r0, r3	@ iftmp.415, prephitmp.698, D.35864
	mov	r0, sl	@ D.35735,
	mov	r1, r0, asr #31	@ D.35735
	cmp	r1, #0	@ D.35735,
	cmpeq	r0, #3	@ D.35735,
	bls	.L46	@,
.L25:
	ldr	r5, [r6, #16]	@ prephitmp.677, <variable>.dU
	mov	r4, #0	@ shift$0,
	ldr	r8, [r6, #32]	@ sprite_ref$0$0.697, <variable>.Uo
	mov	r3, r4	@ shift$1, shift$0
.L31:
	ldr	sl, [fp, #-60]	@, %sfp
	mov	ip, sl, asl r4	@ a.699,,
	cmp	r5, ip	@ prephitmp.677, a.699
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
	mov	r8, r8, asl r4	@ tmp347, sprite_ref$0$0.697,
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
	cmp	r0, #3	@ D.35735,
	ldrls	pc, [pc, r0, asl #2]	@ D.35735
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
	mul	r4, sl, ip	@,, sprite_ref$0$0.708
	mov	lr, #1	@,
	mov	sl, r8, asr r5	@ h3, h2,
	str	r4, [fp, #-56]	@, %sfp
	rsb	r4, r5, r1	@ shift$0, min_ab, tmp298
	sub	r0, r4, #1	@ tmp299, shift$0,
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r8, lr, asl r0	@ D.35946,,
	ldr	r0, [fp, #-72]	@, %sfp
	mov	r5, r7, asr r5	@, w2,
	add	lr, r0, r1	@ tmp303,,
	ldr	r0, [fp, #-52]	@, %sfp
	add	r1, r8, r0, asl r4	@, tmp302, D.35946,,
	str	r1, [r6, #36]	@ tmp302, <variable>.Vo
	ldr	r0, [fp, #-48]	@, %sfp
	add	r8, r8, ip, asl r4	@, sprite_ref$0$0.697, D.35946, sprite_ref$0$0.708,
	mov	r1, r9	@, D.35728
	str	r8, [r6, #32]	@ sprite_ref$0$0.697, <variable>.Uo
	str	r5, [fp, #-48]	@, %sfp
	str	r2, [fp, #-96]	@,
	mul	r5, sl, lr	@ prephitmp.677, h3, tmp303
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
	mul	r2, r1, ip	@ temp.704,,
	ldr	ip, [fp, #-64]	@, %sfp
	mul	r7, sl, lr	@, h3,
	mov	r1, r9	@, D.35728
	mul	r9, sl, r3	@ tmp318, h3, tmp317
	add	r3, ip, r2	@,, temp.704
	str	r3, [fp, #-64]	@, %sfp
	mov	lr, #1	@,
	ldr	r3, [fp, #-64]	@, %sfp
	str	r7, [fp, #-68]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-92]	@, %sfp
	add	r9, r9, lr, asl r7	@, D.35963, tmp318,,
	ldr	r7, [fp, #-100]	@,
	ldr	lr, [fp, #-68]	@, %sfp
	add	r2, r2, ip	@ tmp324, temp.704,
	mul	sl, sl, r3	@ D.35973, h3,
	ldr	r3, [fp, #-56]	@, %sfp
	mla	ip, lr, r7, r9	@ tmp320,, sprite_ref$0$0.708, D.35963
	ldr	lr, [fp, #-104]	@,
	add	r7, r0, r3	@ tmp308,,
	ldr	r3, [fp, #-48]	@, %sfp
	add	ip, ip, r5	@ tmp321, tmp320, prephitmp.677
	mov	r0, lr	@, iftmp.415
	mul	r7, r3, r7	@ D.35961,, tmp308
	add	lr, ip, r7	@ tmp322, tmp321, D.35961
	str	lr, [r6, #40]	@ tmp322, <variable>.Uco
	str	r2, [fp, #-96]	@,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-52]	@, %sfp
	ldr	r3, [fp, #-68]	@, %sfp
	str	sl, [r6, #24]	@ D.35973, <variable>.dV
	str	r7, [r6, #20]	@ D.35961, <variable>.dU
	str	r5, [r6, #16]	@ prephitmp.677, <variable>.dU
	ldr	r7, [fp, #-96]	@,
	mla	r9, r3, ip, r9	@ tmp331,,, D.35963
	add	r3, r4, #2	@ shift$1, shift$0,
	add	sl, r9, sl	@ tmp332, tmp331, D.35973
	add	r2, r7, r0	@ tmp329, tmp324,
	ldr	r7, [fp, #-48]	@, %sfp
	mul	ip, r7, r2	@ D.35976,, tmp329
	add	r1, sl, ip	@ tmp333, tmp332, D.35976
	str	r1, [r6, #44]	@ tmp333, <variable>.Vco
	str	ip, [r6, #28]	@ D.35976, <variable>.dV
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
	rsb	r2, r2, #0	@ D.35904, r
	mul	r7, r7, sl	@ D.35916, w2, tmp280
	add	r1, r3, r8, asl r1	@, D.35913, tmp287, tmp276,
	ldr	sl, [fp, #-52]	@, %sfp
	mov	r8, r8, asl r0	@ D.35895, tmp276,
	ldr	r0, [fp, #-72]	@, %sfp
	mla	r3, r2, sl, r5	@ D.35924, D.35904,,
	ldr	sl, [fp, #-64]	@, %sfp
	mla	r5, r2, ip, r0	@ prephitmp.677, D.35904, sprite_ref$0$0.708,
	ldr	r0, [fp, #-56]	@, %sfp
	rsb	r2, sl, r0	@ D.35899,,
	ldr	sl, [fp, #-52]	@, %sfp
	str	r3, [r6, #24]	@ D.35924, <variable>.dV
	str	r2, [r6, #20]	@ D.35899, <variable>.dU
	mla	r0, r7, sl, r1	@ tmp294, D.35916,, D.35913
	str	r5, [r6, #16]	@ prephitmp.677, <variable>.dU
	mla	r1, r7, ip, r1	@ tmp289, D.35916, sprite_ref$0$0.708, D.35913
	str	r5, [r6, #28]	@ prephitmp.677, <variable>.dV
	add	r0, r0, r5	@ tmp295, tmp294, prephitmp.677
	add	r7, r8, sl, asl r4	@, tmp278, D.35895,,
	add	r3, r0, r3	@ tmp296, tmp295, D.35924
	add	r8, r8, ip, asl r4	@, sprite_ref$0$0.697, D.35895, sprite_ref$0$0.708,
	add	r1, r1, r5	@ tmp290, tmp289, prephitmp.677
	str	r3, [r6, #44]	@ tmp296, <variable>.Vco
	add	sl, r1, r2	@ tmp291, tmp290, D.35899
	str	r7, [r6, #36]	@ tmp278, <variable>.Vo
	str	sl, [r6, #40]	@ tmp291, <variable>.Uco
	add	r3, r4, #2	@ shift$1, shift$0,
	str	r8, [r6, #32]	@ sprite_ref$0$0.697, <variable>.Uo
	b	.L31	@
.L27:
	ldr	r1, [fp, #-52]	@, %sfp
	and	r3, ip, #1	@ tmp267, sprite_ref$0$0.708,
	mov	r4, #0	@ tmp273,
	orr	r2, r3, ip, asr #1	@, tmp269, tmp267, sprite_ref$0$0.708,
	and	r8, r1, #1	@ tmp270,,
	str	r2, [r6, #40]	@ tmp269, <variable>.Uco
	orr	r5, r8, r1, asr #1	@, tmp272, tmp270,,
	str	ip, [r6, #32]	@ sprite_ref$0$0.708, <variable>.Uo
	str	r5, [r6, #44]	@ tmp272, <variable>.Vco
	str	r4, [r6, #24]	@ tmp273, <variable>.dV
	str	r1, [r6, #36]	@, <variable>.Vo
	ldr	r8, [fp, #-60]	@, %sfp
	str	r4, [r6, #20]	@ tmp273, <variable>.dU
	str	r8, [r6, #16]	@, <variable>.dU
	str	r8, [r6, #28]	@, <variable>.dV
.L32:
	mov	r8, ip	@ sprite_ref$0$0.697, sprite_ref$0$0.708
	ldr	ip, [fp, #-60]	@ a.699, %sfp
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
	cmp	ip, r0	@ a.699, <variable>.dV
	bne	.L33	@,
	ldr	ip, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	r8, r8, asr r4	@ tmp337, sprite_ref$0$0.697,
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
	mov	ip, r5	@ sprite_ref$0$0.708, tmp261
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
	add	r0, r0, ip	@ tmp216, D.35738, sprite_ref$0$0.708
	ldr	r1, [fp, #-48]	@, %sfp
	add	lr, lr, r3	@ tmp218, D.35741,
	add	r1, r1, r3	@,,
	str	r1, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	add	r3, r1, ip	@,, sprite_ref$0$0.708
	ldr	r1, [fp, #-60]	@, %sfp
	str	r3, [fp, #-80]	@, %sfp
	mla	lr, r9, r1, lr	@, D.35728,, tmp218
	mla	r0, sl, r1, r0	@ sprite_ref$1$0, D.35726,, tmp216
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
.LFB1358:
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
.LFB1371:
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
.LFB1375:
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
	movw	r1, #22060	@ tmp135,
	ldr	r3, [r0, r1]	@ <variable>.DecMode, <variable>.DecMode
	cmp	r3, #2	@ <variable>.DecMode,
	beq	.L77	@,
	movw	r3, #22028	@ tmp143,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ temp.795, <variable>.s32DecMode
	cmp	r3, #2	@ temp.795,
	beq	.L70	@,
.L71:
	cmp	r3, #1	@ temp.795,
	beq	.L76	@,
	cmp	r3, #4	@ temp.795,
	movwne	r3, #22060	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r3]	@ tmp151, <variable>.DecMode
	ldmnefd	sp, {fp, sp, pc}	@
.L76:
	movw	ip, #22060	@ tmp148,
	str	r3, [r0, ip]	@ temp.795, <variable>.DecMode
	ldmfd	sp, {fp, sp, pc}	@
.L77:
	movw	r3, #22028	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #2	@ <variable>.s32DecMode,
	beq	.L70	@,
	movw	r3, #22028	@ tmp143,
	movw	r1, #22536	@ tmp140,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp141,
	str	r2, [r0, r1]	@ tmp141, <variable>.IPVopErr
	ldr	r3, [ip, #8]	@ temp.795, <variable>.s32DecMode
	cmp	r3, #2	@ temp.795,
	bne	.L71	@,
.L70:
	movw	r1, #22060	@ tmp144,
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
.LFB1376:
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
	movw	r1, #19940	@ tmp136,
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
.LFB1393:
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
	movw	r3, #15832	@ tmp136,
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ tmp138,
	tst	r2, #1	@ tmp138,
	bne	.L89	@,
	movw	ip, #21245	@ tmp142,
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
	movw	r3, #21245	@ tmp154,
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
.LFB1390:
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
	movw	ip, #19936	@ tmp144,
	mov	r3, r0	@ pCtx, pCtx
	ldr	r0, [r0, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r2, #15612	@ tmp143,
	tst	r0, #2	@ <variable>.PicIntegrality,
	ldr	r2, [r3, r2]	@ SlcNum, <variable>.Mp4DecParam.SlcNum
	beq	.L93	@,
	movw	r0, #15709	@ tmp147,
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.38498, <variable>.IsLastSeg
	cmp	r0, #1	@ D.38498,
	beq	.L104	@,
	cmp	r0, #0	@ D.38498,
	bne	.L101	@,
	movw	ip, #15773	@ tmp221,
	ldrb	r0, [r3, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L105	@,
.L101:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4104	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38505,
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
	ldr	r6, [r2, #4]	@ D.38512, <variable>.bit_len
	cmp	r6, #0	@ D.38512,
	beq	.L97	@,
	ldr	r5, [r5, #1296]	@ D.38514, <variable>.phy_address
	cmp	r5, #0	@ D.38514,
	beq	.L97	@,
	movw	ip, #15712	@ tmp209,
	ldr	r3, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, r3	@ D.38514, <variable>.PhyAddr
	addls	r1, r6, r1, asl #3	@, tmp220, D.38512, CodeLen,
	strls	r1, [r2, #4]	@ tmp220, <variable>.bit_len
	movls	r0, #0	@ D.38505,
	ldmlsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4081	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38505,
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
	movhi	r0, #0	@ D.38505,
	ldrhi	r3, [ip, #1284]	@ <variable>.bit_len, <variable>.bit_len
	movls	r0, #0	@ D.38505,
	addhi	r1, r3, r1, asl #3	@, tmp191, <variable>.bit_len, CodeLen,
	strls	r3, [ip, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	strhi	r1, [ip, #1284]	@ tmp191, <variable>.bit_len
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L105:
	sub	r0, r2, #1	@ temp.906, SlcNum,
	rsb	r2, r0, r0, asl #3	@, tmp226, temp.906, temp.906,
	add	r2, r3, r2, asl #2	@, tmp228, pCtx, tmp226,
	add	ip, r2, #1280	@ tmp229, tmp228,
	add	ip, ip, #4	@ tmp229, tmp229,
	ldr	r0, [ip, #4]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L107	@,
.L102:
	mvn	r0, #0	@ D.38505,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L93:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4110	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38505,
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
	movw	r2, #15776	@ tmp263,
	ldr	r1, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r2, #15780	@ tmp272,
	str	r1, [r4, #4]	@ <variable>.PhyAddr, <variable>.phy_address
	ldr	r3, [r3, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r3, asl #3	@ tmp274, <variable>.LenInByte,
	str	r1, [ip, #4]	@ tmp274, <variable>.bit_len
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L106:
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38505,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Mp4_Combine_SliceData, .-Mp4_Combine_SliceData
	.align	2
	.global	Mp4_Check_Slice_NotSH
	.type	Mp4_Check_Slice_NotSH, %function
Mp4_Check_Slice_NotSH:
	.fnstart
.LFB1389:
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
	movw	r1, #19987	@ tmp140,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vol.resync_marker_disable, <variable>.MP4Vol.resync_marker_disable
	movw	r2, #21176	@ tmp139,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.38470, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Vol.resync_marker_disable,
	bne	.L109	@,
	movw	r3, #15832	@ tmp142,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ tmp144,
	tst	ip, #120	@ tmp144,
	bne	.L109	@,
	ldrh	r3, [r0, r3]	@ tmp150,
	ubfx	r3, r3, #7, #4	@ D.38478, tmp150,,
	cmp	r2, #3	@ D.38470,
	ldrls	pc, [pc, r2, asl #2]	@ D.38470
	b	.L110	@
.L114:
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L112
.L113:
	movw	r2, #21184	@ tmp156,
	movw	r1, #21185	@ tmp155,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r1, ip	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_forward
	movcs	ip, r1	@ tmp160, <variable>.MP4Vop.vop_fcode_backward
	add	r2, ip, #16	@ StartCodeLen, tmp160,
	cmp	r2, #18	@ StartCodeLen,
	movlt	r2, #18	@ StartCodeLen,
.L115:
	add	r3, r3, #17	@ tmp162, D.38478,
	cmp	r2, r3	@ StartCodeLen, tmp162
	moveq	r0, #0	@ ret,
	ldmeqfd	sp, {fp, sp, pc}	@
.L109:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L112:
	movw	r1, #21184	@ tmp152,
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
.LFB1378:
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
	movw	r3, #22484	@ tmp135,
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
.LFB1400:
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22064	@ tmp138,
	ldr	r3, [r4, r0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L129	@,
	movw	r1, #15709	@ tmp141,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ D.38922, <variable>.IsLastSeg
	cmp	r5, #1	@ D.38922,
	beq	.L130	@,
	cmp	r5, #0	@ D.38922,
	bne	.L127	@,
	movw	r0, #15773	@ tmp175,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	bne	.L127	@,
	movw	r3, #22076	@ tmp177,
	add	r6, r4, #15744	@ tmp188, pCtx,
	movw	r7, #15716	@ tmp178,
	ldr	r0, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, r7]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r6, r6, #24	@ tmp188, tmp188,
	add	ip, r4, #22016	@ tmp185, pCtx,
	add	r2, r1, r0	@ tmp182, <variable>.LenInByte, <variable>.LenInByte
	str	r2, [r4, r3]	@ tmp182, <variable>.LenInByte
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp190,,,,
	add	r7, ip, #112	@ tmp185, tmp185,
	mov	r4, r7	@ tmp189, tmp185
	stmia	r4!, {r0, r1, r2, r3}	@ tmp189,,,,
	mov	r7, r4	@ tmp198, tmp189
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp197,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp198,,,,
	mov	ip, r7	@ tmp200, tmp198
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp200,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp200,,,,
.L122:
	mov	r0, r5	@, D.38921
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L130:
	movw	r7, #22069	@ tmp142,
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@ D.38925, <variable>.IsLastSeg
	cmp	r6, #1	@ D.38925,
	beq	.L131	@,
	cmp	r6, #0	@ D.38925,
	bne	.L126	@,
	movw	r2, #22133	@ tmp166,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L126	@,
	movw	r3, #22140	@ tmp168,
	movw	r5, #15716	@ tmp169,
	ldr	r1, [r4, r5]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r5, r6	@ D.38921, D.38925
	ldr	ip, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r0, r1, ip	@ tmp173, <variable>.LenInByte, <variable>.LenInByte
	str	r0, [r4, r3]	@ tmp173, <variable>.LenInByte
	b	.L122	@
.L127:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4621	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.38921,
	b	.L122	@
.L131:
	movw	r3, #15712	@ tmp143,
	movw	ip, #22072	@ tmp144,
	ldr	r2, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r5, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, r5	@ <variable>.PhyAddr, <variable>.PhyAddr
	blt	.L132	@,
	movw	r3, #22076	@ tmp160,
	movw	r5, #15716	@ tmp161,
	ldr	r1, [r4, r5]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r5, #0	@ D.38921,
	ldr	r0, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, r1, r0	@ tmp165, <variable>.LenInByte, <variable>.LenInByte
	str	r2, [r4, r3]	@ tmp165, <variable>.LenInByte
	b	.L122	@
.L126:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4609	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.38921,
	b	.L122	@
.L132:
	add	r9, r4, #15680	@ tmp150, pCtx,
	add	r8, r4, #22016	@ tmp149, pCtx,
	add	sl, r9, #24	@ tmp150, tmp150,
	add	ip, r8, #112	@ tmp149, tmp149,
	mov	r8, #0	@ tmp155,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	r9, ip	@ tmp152, tmp149
	mov	r5, r8	@ D.38921, tmp155
	mov	ip, sl	@ tmp193, tmp153
	stmia	r9!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp193,,,,
	mov	sl, ip	@ tmp195, tmp193
	stmia	r9!, {r0, r1, r2, r3}	@ tmp152,,,,
	str	r9, [fp, #-48]	@ tmp152, %sfp
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp195,,,,
	mov	ip, r9	@ tmp196, tmp152
	stmia	ip!, {r0, r1, r2, r3}	@ tmp196,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp196,,,,
	movw	r0, #22133	@ tmp157,
	strb	r8, [r4, r7]	@ tmp155, <variable>.IsLastSeg
	strb	r6, [r4, r0]	@ D.38925, <variable>.IsLastSeg
	b	.L122	@
.L129:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mvn	r5, #0	@ D.38921,
	bl	dprint_vfmw	@
	b	.L122	@
	.fnend
	.size	MP4_Combine_HdPacket, .-MP4_Combine_HdPacket
	.align	2
	.global	MP4_GetScdUpMsg
	.type	MP4_GetScdUpMsg, %function
MP4_GetScdUpMsg:
	.fnstart
.LFB1388:
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
	ldr	r3, [r1, #56]	@ <variable>.stMp4UpMsg, <variable>.stMp4UpMsg
	add	r0, r0, #15808	@ tmp136, pCtx,
	str	r3, [r0, #24]	@ <variable>.stMp4UpMsg, <variable>.ScdUpMsg
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4_GetScdUpMsg, .-MP4_GetScdUpMsg
	.align	2
	.global	MP4_ClearCurPic
	.type	MP4_ClearCurPic, %function
MP4_ClearCurPic:
	.fnstart
.LFB1387:
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
	movw	r0, #19932	@ tmp167,
	movw	r3, #22896	@ tmp166,
	ldr	r8, [sl, r0]	@ StreamIDNum, <variable>.StreamIDNum
	ldr	r7, [sl, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #0	@ StreamIDNum,
	ble	.L136	@,
	add	r4, sl, #15808	@ tmp168, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r9, r8, #1	@ tmp172, StreamIDNum,
	ldr	r1, [r4, #28]	@, <variable>.StreamID
	and	r9, r9, #1	@ tmp174, tmp172,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum,
	add	r5, r4, #32	@ ivtmp.1044, tmp168,
	ble	.L136	@,
	cmp	r9, #0	@ tmp174,
	beq	.L137	@,
	ldr	r1, [r5, #0]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #36	@ ivtmp.1044, tmp168,
	ble	.L136	@,
.L137:
	mov	r4, r5	@ tmp176, ivtmp.1044
	add	r6, r6, #1	@ tmp175, i,
	ldr	r1, [r4], #4	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp175,
	ldr	r1, [r5, #4]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #4	@ ivtmp.1044, tmp176,
	bgt	.L137	@,
.L136:
	movw	r1, #19932	@ tmp170,
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
.LFB1397:
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
	movw	r1, #22452	@ tmp139,
	ldr	r8, [r0, r1]	@ StreamIDNum, <variable>.stHdPktInfo.StreamIDNum
	movw	r3, #22896	@ tmp138,
	ldr	r7, [r0, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #0	@ StreamIDNum,
	addle	sl, r0, #22016	@ tmp144, pCtx,
	ble	.L146	@,
	add	sl, r0, #22016	@ tmp144, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r4, r8, #1	@ tmp145, StreamIDNum,
	ldr	r1, [sl, #180]	@, <variable>.stHdPktInfo.StreamId
	and	r4, r4, #1	@ tmp147, tmp145,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum,
	add	r5, sl, #184	@ ivtmp.1074, tmp144,
	ble	.L146	@,
	cmp	r4, #0	@ tmp147,
	beq	.L147	@,
	ldr	r1, [r5, #0]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, sl, #188	@ ivtmp.1074, tmp144,
	ble	.L146	@,
.L147:
	mov	r4, r5	@ tmp149, ivtmp.1074
	add	r6, r6, #1	@ tmp148, i,
	ldr	r1, [r4], #4	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp148,
	ldr	r1, [r5, #4]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #4	@ ivtmp.1074, tmp149,
	bgt	.L147	@,
.L146:
	add	r0, sl, #48	@, tmp144,
	mov	r1, #408	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	MP4_Clean_HeadPacket, .-MP4_Clean_HeadPacket
	.align	2
	.global	MP4_ClearCurPacket
	.type	MP4_ClearCurPacket, %function
MP4_ClearCurPacket:
	.fnstart
.LFB1386:
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
	ldrb	r0, [r4, #69]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L160	@,
.L158:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #128	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L160:
	ldr	r1, [r4, #80]	@, <variable>.StreamID
	mov	r0, r5	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r4	@, pMp4Packet
	mov	r1, #128	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP4_ClearCurPacket, .-MP4_ClearCurPacket
	.align	2
	.global	MP4_Record_PacketID
	.type	MP4_Record_PacketID, %function
MP4_Record_PacketID:
	.fnstart
.LFB1399:
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
	movw	r5, #22452	@ tmp136,
	ldr	r3, [r0, r5]	@ D.38894, <variable>.stHdPktInfo.StreamIDNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #63	@ D.38894,
	bgt	.L165	@,
	add	ip, r3, #5504	@ tmp144, D.38894,
	movw	r1, #15720	@ tmp150,
	add	r0, ip, #44	@ tmp144, tmp144,
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.38904, D.38894,
	str	r3, [r4, r5]	@ D.38904, <variable>.stHdPktInfo.StreamIDNum
	add	r2, r4, r0, asl #2	@, tmp148, pCtx, tmp144,
	movw	r0, #15709	@ tmp155,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movw	r0, #15773	@ tmp157,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r2, r3, #5504	@ tmp159, D.38904,
	movw	r0, #15784	@ tmp165,
	add	ip, r2, #44	@ tmp159, tmp159,
	ldr	r1, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp168, D.38904,
	str	r3, [r4, r5]	@ tmp168, <variable>.stHdPktInfo.StreamIDNum
	add	r4, r4, ip, asl #2	@, tmp163, pCtx, tmp159,
	str	r1, [r4, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L165:
	bl	MP4_Clean_HeadPacket	@
	movw	r3, #22896	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r4, r5]	@, <variable>.stHdPktInfo.StreamIDNum
	movw	r1, #:lower16:.LC5	@,
	mov	r3, #63	@,
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
.LFB1396:
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
	mov	r2, #128	@,
	add	r0, r5, #48	@, tmp137,
	movw	r6, #22460	@ tmp150,
	bl	memcpy	@
	add	r1, r4, #15808	@ tmp147, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	movw	r2, #22456	@ tmp149,
	ldr	r3, [r1, #24]	@ <variable>.ScdUpMsg, <variable>.ScdUpMsg
	cmp	r0, #0	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	str	r7, [r4, r2]	@ StartCode, <variable>.stHdPktInfo.HeadCode
	str	r3, [r5, #176]	@ <variable>.ScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	beq	.L172	@,
	movw	r3, #22464	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	add	lr, r2, #1	@ tmp157, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp157, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L172:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	movw	r3, #22464	@ tmp154,
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
.LFB1401:
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
	add	r1, r5, #48	@, tmp145,
	mov	r2, #128	@,
	add	r0, r0, #24	@,,
	add	r4, r4, #15744	@ tmp151, pCtx,
	bl	memcpy	@
	ldr	r2, [r5, #176]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	mov	r0, #0	@ D.38965,
	str	r2, [r4, #16]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stMp4UpMsg
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L177:
	movw	r3, #22896	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #4636	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38965, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP4_Renew_CurPacket, .-MP4_Renew_CurPacket
	.align	2
	.global	MP4_Check_CurPacket
	.type	MP4_Check_CurPacket, %function
MP4_Check_CurPacket:
	.fnstart
.LFB1398:
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
	movw	r5, #15704	@ tmp144,
	ldr	r1, [r0, r5]	@ D.39050, <variable>.VirAddr
	movw	r3, #15716	@ tmp146,
	movw	r2, #15712	@ tmp142,
	ldr	lr, [r0, r3]	@ D.39049, <variable>.LenInByte
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r5, fp, #48	@ tmp150,,
	movw	ip, #22012	@ tmp145,
	movw	r3, #22024	@ tmp148,
	str	r1, [r4, ip]	@ D.39050, <variable>.BitsObj.vir_addr
	mov	r2, #22016	@ tmp141,
	movw	ip, #22020	@ tmp147,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	mov	r2, lr	@, D.39049
	str	lr, [r4, ip]	@ D.39049, <variable>.BitsObj.len
	mov	r0, #0	@ tmp149,
	str	r0, [r4, r3]	@ tmp149, <variable>.BitsObj.offset
	mov	r0, r5	@, tmp150
	bl	BsInit	@
	mov	r0, r5	@, tmp150
	mov	r1, #32	@,
	bl	BsShow	@
	movw	r3, #15832	@ tmp152,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ tmp154,
	tst	r2, #1	@ tmp154,
	bne	.L179	@,
	mov	ip, r0, lsr #8	@ tmp161, StartCode,
	movw	lr, #21245	@ tmp158,
	sub	r1, ip, #128	@ tmp162, tmp161,
	mov	r5, #2	@ tmp159,
	cmp	r1, #3	@ tmp162,
	strb	r5, [r4, lr]	@ tmp159, <variable>.MP4Syntax.is_short_header
	movw	lr, #15832	@ tmp171,
	orrls	r2, r2, r5	@ tmp166, tmp154,
	strlsb	r2, [r4, r3]	@ tmp166,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp173,
	tst	r1, #2	@ tmp173,
	beq	.L181	@,
.L197:
	movw	r3, #22456	@ tmp177,
	movw	r2, #438	@ tmp179,
	ldr	ip, [r4, r3]	@ <variable>.stHdPktInfo.HeadCode, <variable>.stHdPktInfo.HeadCode
	cmp	ip, r2	@ <variable>.stHdPktInfo.HeadCode, tmp179
	beq	.L182	@,
	cmp	r0, #1	@ StartCode,
	beq	.L182	@,
.L183:
	mov	r0, r4	@, pCtx
	bl	MP4_Renew_CurPacket	@
	movw	lr, #15704	@ tmp189,
	ldr	r1, [r4, lr]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	bne	.L196	@,
.L189:
	mvn	r0, #0	@ ret,
.L190:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L179:
	movw	r3, #21245	@ tmp168,
	movw	lr, #15832	@ tmp171,
	mov	r2, #1	@ tmp169,
	strb	r2, [r4, r3]	@ tmp169,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp173,
	mov	r0, #196	@ StartCode,
	tst	r1, #2	@ tmp173,
	bne	.L197	@,
.L181:
	movw	r2, #22456	@ tmp182,
	movw	ip, #438	@ tmp183,
	ldr	r3, [r4, r2]	@ temp.1199, <variable>.stHdPktInfo.HeadCode
	cmp	r3, ip	@ temp.1199, tmp183
	beq	.L186	@,
	cmp	r0, #1	@ StartCode,
	beq	.L198	@,
.L187:
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, #0	@ ret,
.L185:
	movw	lr, #15704	@ tmp189,
	ldr	r1, [r4, lr]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L189	@,
.L196:
	movw	r2, #15712	@ tmp191,
	ldr	ip, [r4, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, #0	@ <variable>.PhyAddr,
	bne	.L190	@,
	b	.L189	@
.L182:
	movw	lr, #22009	@ tmp180,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vop_decode_right, <variable>.MP4SyntaxState.vop_decode_right
	cmp	r1, #1	@ <variable>.MP4SyntaxState.vop_decode_right,
	beq	.L184	@,
	cmp	r0, #1	@ StartCode,
	bne	.L183	@,
.L184:
	mov	r0, #0	@ ret,
	b	.L185	@
.L186:
	cmp	r0, r3	@ StartCode, temp.1199
	beq	.L193	@,
	mov	r0, #0	@ ret,
	b	.L185	@
.L198:
	cmp	r3, #1	@ temp.1199,
	bne	.L184	@,
.L193:
	movw	r3, #22464	@ tmp187,
	ldr	r0, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	cmp	r0, #1	@ <variable>.stHdPktInfo.CountVopNum,
	bgt	.L187	@,
	mov	r0, #0	@ ret,
	b	.L185	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
.LFB1395:
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
	movw	r6, #19932	@ tmp136,
	ldr	r3, [r0, r6]	@ D.38788, <variable>.StreamIDNum
	movw	r4, #1023	@ tmp137,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, r4	@ D.38788, tmp137
	bhi	.L203	@,
	add	ip, r3, #3952	@ tmp145, D.38788,
	movw	r1, #15720	@ tmp151,
	add	r0, ip, #6	@ tmp145, tmp145,
	ldr	ip, [r5, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.38797, D.38788,
	str	r3, [r5, r6]	@ D.38797, <variable>.StreamIDNum
	add	r2, r5, r0, asl #2	@, tmp149, pCtx, tmp145,
	movw	r0, #15709	@ tmp156,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #15773	@ tmp158,
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	r2, r3, #3952	@ tmp160, D.38797,
	movw	r0, #15784	@ tmp166,
	add	ip, r2, #6	@ tmp160, tmp160,
	ldr	r1, [r5, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp169, D.38797,
	str	r3, [r5, r6]	@ tmp169, <variable>.StreamIDNum
	add	r5, r5, ip, asl #2	@, tmp164, pCtx, tmp160,
	str	r1, [r5, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L203:
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	movw	r3, #22896	@ tmp138,
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
.LFB1354:
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
	add	r3, r0, #19712	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, r3, #232	@,,
	add	r6, r4, #20992	@ tmp144, pCtx,
	bl	__memzero	@
	add	r0, r4, #19968	@, pCtx,
	mov	r1, #604	@,
	movw	r5, #22536	@ tmp152,
	bl	__memzero	@
	add	r0, r6, #184	@, tmp144,
	mov	r1, #60	@,
	bl	__memzero	@
	add	r0, r6, #244	@, tmp144,
	mov	r1, #768	@,
	bl	__memzero	@
	add	r1, r4, #21760	@, pCtx,
	add	r0, r1, #244	@,,
	mov	r1, #7	@,
	bl	__memzero	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp165,
	movt	r1, #:upper16:.LANCHOR0	@ tmp165,
	movw	r0, #21253	@ tmp149,
	mov	r3, #0	@ ivtmp.1271,
	mov	r2, #1	@ tmp150,
	str	r2, [r4, r5]	@ tmp150, <variable>.IPVopErr
	strb	r2, [r4, r0]	@ tmp150, <variable>.MP4Syntax.syn_vos.visual_object_verid
.L205:
	add	r2, r3, #4	@ tmp168, ivtmp.1271,
	add	r0, r4, r3	@ tmp154, pCtx, ivtmp.1271
	ldr	r5, [r1, r3]	@ tmp158, default_intra_matrix
	add	r6, r4, r2	@ tmp170, pCtx, tmp168
	add	r3, r2, #4	@ ivtmp.1271, tmp168,
	ldr	lr, [r1, r2]	@ tmp173, default_intra_matrix
	add	ip, r0, #19968	@ tmp156, tmp154,
	cmp	r3, #256	@ ivtmp.1271,
	add	r0, r6, #19968	@ tmp171, tmp170,
	str	r5, [ip, #88]	@ tmp158, <variable>.MP4Vol.intra_quant_mat
	str	lr, [r0, #88]	@ tmp173, <variable>.MP4Vol.intra_quant_mat
	bne	.L205	@,
	ldr	r1, .L212	@ tmp166,
	mov	r3, #0	@ ivtmp.1261,
.L206:
	add	r2, r3, #4	@ tmp167, ivtmp.1261,
	add	r0, r4, r3	@ tmp159, pCtx, ivtmp.1261
	ldr	r5, [r1, r3]	@ tmp164, default_inter_matrix
	add	r6, r4, r2	@ tmp175, pCtx, tmp167
	add	r3, r2, #4	@ ivtmp.1261, tmp167,
	ldr	lr, [r1, r2]	@ tmp178, default_inter_matrix
	add	ip, r0, #20224	@ tmp161, tmp159,
	cmp	r3, #256	@ ivtmp.1261,
	add	r0, r6, #20224	@ tmp176, tmp175,
	str	r5, [ip, #88]	@ tmp164, <variable>.MP4Vol.nonintra_quant_mat
	str	lr, [r0, #88]	@ tmp178, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L206	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L213:
	.align	2
.L212:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Init, .-Mp4_Syntax_Init
	.align	2
	.global	Global_Data_Init
	.type	Global_Data_Init, %function
Global_Data_Init:
	.fnstart
.LFB1355:
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
	add	lr, r0, #22016	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, lr, #16	@,,
	bl	__memzero	@
	add	r3, r4, #21760	@, pCtx,
	add	r0, r3, #252	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Init	@
	movw	r1, #22516	@ tmp139,
	movw	r2, #22520	@ tmp141,
	mov	r3, #0	@ tmp140,
	movw	ip, #22524	@ tmp143,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.UsrData
	mov	r1, #22528	@ tmp145,
	movw	r2, #22488	@ tmp147,
	str	r3, [r4, ip]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.FrameNum
	movw	ip, #22060	@ tmp149,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	movw	r2, #22476	@ tmp153,
	movw	r1, #22472	@ tmp151,
	str	r3, [r4, ip]	@ tmp140, <variable>.DecMode
	str	r3, [r4, r1]	@ tmp140, <variable>.SeqCnt
	movw	ip, #22480	@ tmp155,
	str	r3, [r4, r2]	@ tmp140, <variable>.ImgCntOfSeq
	movw	r1, #22532	@ tmp157,
	movw	r2, #22492	@ tmp159,
	movw	r0, #22508	@ tmp167,
	str	r3, [r4, ip]	@ tmp140, <variable>.ErrorLevel
	movw	ip, #22496	@ tmp161,
	str	r3, [r4, r1]	@ tmp140, <variable>.CurUsrData
	movw	r1, #22500	@ tmp163,
	str	r3, [r4, r2]	@ tmp140, <variable>.OldPicWidth
	movw	r2, #22504	@ tmp165,
	str	r3, [r4, r0]	@ tmp140, <variable>.UserID
	mov	r0, r3	@, tmp140
	str	r3, [r4, ip]	@ tmp140, <variable>.OldPicHeight
	str	r3, [r4, r1]	@ tmp140, <variable>.NewPicWidth
	str	r3, [r4, r2]	@ tmp140, <variable>.NewPicHeight
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Global_Data_Init, .-Global_Data_Init
	.align	2
	.global	bs_get_spritetrajectory
	.type	bs_get_spritetrajectory, %function
bs_get_spritetrajectory:
	.fnstart
.LFB1350:
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
	beq	.L218	@,
	ldrb	r1, [r4, #12]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #8]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #1	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #16]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #2	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #28]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #24]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #3	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #32]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #4	@ i,
	beq	.L218	@,
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #40]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #5	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #52]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #48]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #6	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #60]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #56]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #7	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #64]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #8	@ i,
	beq	.L218	@,
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #72]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #9	@ i,
	beq	.L218	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #84]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #80]	@ <variable>.code, <variable>.code
	movw	r6, #:lower16:.LANCHOR1	@ tmp189,
	movt	r6, #:upper16:.LANCHOR1	@ tmp189,
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #10	@ i,
	beq	.L218	@,
	ldrb	r1, [r6, #92]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	ip, [r6, #88]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	mvnne	r6, #0	@ i,
	beq	.L232	@,
	mov	r0, r6	@, i
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L232:
	mov	r6, #11	@ i,
.L218:
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
.LFB1356:
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
	b	.L235	@
.L245:
	mov	r6, r0	@ value, D.36132
.L235:
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
	cmp	r0, #0	@ D.36132,
	str	r0, [r7, r2, asl #2]	@ D.36132,* matrix
	moveq	r3, #0	@, tmp162,
	cmp	r3, #0	@ tmp162,
	bne	.L245	@,
	cmp	r0, #0	@ D.36132,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	sub	r0, r4, #1	@ tmp163, i,
	cmp	r0, #63	@ tmp163,
	ldmgtfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	ip, .L246	@ tmp165,
	add	r4, ip, r4, asl #2	@, ivtmp.1433, tmp165, i,
	add	ip, ip, #260	@ D.39952, tmp165,
	add	r3, r4, #4	@ ivtmp.1433, ivtmp.1433,
	rsb	r2, r4, ip	@ tmp174, ivtmp.1433, D.39952
	ldr	lr, [r4, #-4]	@ tmp169, scan_tables
	cmp	r3, ip	@ ivtmp.1433, D.39952
	sub	r1, r2, #4	@ tmp175, tmp174,
	ubfx	r1, r1, #2, #1	@ tmp176, tmp175,,
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r1, #0	@ tmp176,
	beq	.L237	@,
	ldr	r2, [r3, #-4]	@ tmp182, scan_tables
	add	r3, r3, #4	@ ivtmp.1433, ivtmp.1433,
	cmp	r3, ip	@ ivtmp.1433, D.39952
	str	r6, [r7, r2, asl #2]	@ value,* matrix
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L237:
	mov	r1, r3	@ tmp177, ivtmp.1433
	ldr	r0, [r3, #-4]	@ tmp179, scan_tables
	ldr	lr, [r1], #4	@ tmp181, scan_tables
	add	r3, r1, #4	@ ivtmp.1433, tmp177,
	str	r6, [r7, r0, asl #2]	@ value,* matrix
	cmp	r3, ip	@ ivtmp.1433, D.39952
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	bne	.L237	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L247:
	.align	2
.L246:
	.word	.LANCHOR0+512
	.fnend
	.size	Bs_Get_Matrix, .-Bs_Get_Matrix
	.align	2
	.global	Mp4_Syntax_Slice_SH
	.type	Mp4_Syntax_Slice_SH, %function
Mp4_Syntax_Slice_SH:
	.fnstart
.LFB1392:
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
	ldr	r6, [r0, r7]	@ D.38651, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r9, r2	@ len, len
	cmp	r6, #0	@ D.38651,
	beq	.L257	@,
	movw	ip, #15832	@ tmp162,
	sub	r5, fp, #72	@ tmp167,,
	ldrb	lr, [r0, ip]	@ zero_extendqisi2	@ tmp164,
	add	r0, r6, #1	@ tmp161, D.38651,
	str	r0, [r4, r7]	@ tmp161, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp167
	ubfx	r8, lr, #3, #4	@ tmp166, tmp164,,
	bl	BsInit	@
	add	r8, r8, #17	@ D.38667, tmp166,
	mov	r0, r5	@, tmp167
	mov	r7, r6, asl #3	@ tmp390, D.38651,
	mov	r1, r8	@, D.38667
	rsb	sl, r6, r7	@ tmp175, D.38651, tmp390
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp167
	add	sl, r4, sl, asl #2	@, tmp177, pCtx, tmp175,
	bl	BsGet	@
	movw	r2, #21188	@ tmp170,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.num_mb_ingob, <variable>.MP4Vop.num_mb_ingob
	movw	ip, #1204	@ tmp179,
	movw	r1, #1206	@ tmp181,
	mul	r0, r3, r0	@ D.38673, <variable>.MP4Vop.num_mb_ingob,
	str	r0, [sl, #1300]	@ D.38673, <variable>.mb_start_num
	ldrh	r3, [r4, ip]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	ldrh	r2, [r4, r1]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	mul	ip, r2, r3	@ tmp183, <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicWidthInMb
	sub	r3, ip, #1	@ totalMbMin1, tmp183,
	cmp	r0, r3	@ D.38673, totalMbMin1
	bhi	.L258	@,
	mov	r1, #2	@,
	mov	r0, r5	@, tmp167
	bl	BsSkip	@
	mov	r0, r5	@, tmp167
	mov	r1, #5	@,
	add	r8, sl, #1264	@ tmp193, tmp177,
	bl	BsGet	@
	add	r8, r8, #8	@ tmp193, tmp193,
	movw	ip, #21176	@ tmp202,
	movw	r2, #21184	@ tmp222,
	strb	r0, [r8, #9]	@, <variable>.vop_quant
	mov	r0, r5	@, tmp167
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r5, #21180	@ tmp212,
	strb	r3, [r8, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	movw	r3, #21185	@ tmp232,
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r1, [r8, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	strb	ip, [r8, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	r5, [r8, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	bl	BsPos	@
	movw	r2, #22024	@ tmp258,
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
	mov	r3, #22016	@ tmp275,
	add	r0, ip, r1	@ tmp262, tmp257, <variable>.BitsObj.offset
	strb	r0, [r8, #10]	@ tmp262, <variable>.bit_offset
	ldr	r1, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movge	r2, r5	@ BitUsed, BitUsed
	movw	r3, #19936	@ tmp278,
	add	ip, r1, r2, asr #3	@, tmp277, <variable>.BitsObj.phy_addr, BitUsed,
	movw	r2, #15709	@ tmp282,
	str	ip, [sl, #1292]	@ tmp277, <variable>.phy_address
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r0, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	cmp	r2, #0	@ <variable>.IsLastSeg,
	orr	r1, r0, #16	@ tmp281, <variable>.PicIntegrality,
	str	r1, [r4, r3]	@ tmp281, <variable>.PicIntegrality
	beq	.L259	@,
.L252:
	rsb	r2, r6, r7	@ tmp317, D.38651, tmp390
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
.L253:
	sub	r6, r6, #1	@ D.38661, D.38651,
	mov	r3, r6, asl #3	@ tmp389, D.38661,
	rsb	r1, r6, r3	@ tmp342, D.38661, tmp389
	add	r2, r4, r1, asl #2	@, tmp344, pCtx, tmp342,
	ldr	r0, [r2, #1296]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L260	@,
.L254:
	rsb	r6, r6, r3	@ tmp370, D.38661, tmp389
	movw	r0, #15832	@ tmp374,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ tmp376,
	add	r6, r4, r6, asl #2	@, tmp372, pCtx, tmp370,
	ubfx	lr, r3, #3, #4	@ tmp378, tmp376,,
	ldr	r2, [r6, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r1, lr, r2	@ tmp387, tmp378, <variable>.bit_len
	str	r1, [r6, #1284]	@ tmp387, <variable>.bit_len
.L255:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L250:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L260:
	add	ip, r2, #1280	@ tmp353, tmp344,
	add	r2, ip, #4	@ tmp353, tmp353,
	ldr	r1, [r2, #4]	@ D.38719, <variable>.bit_len
	cmp	r1, #0	@ D.38719,
	beq	.L254	@,
	movw	ip, #15832	@ tmp361,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ tmp363,
	ubfx	r3, r0, #3, #4	@ tmp365, tmp363,,
	add	lr, r3, r1	@ tmp366, tmp365, D.38719
	str	lr, [r2, #4]	@ tmp366, <variable>.bit_len
	b	.L255	@
.L259:
	movw	r0, #15773	@ tmp284,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L252	@,
	movw	lr, #15780	@ tmp293,
	movw	r1, #15776	@ tmp312,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r2, [sl, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r3, ip, asl #3	@ tmp295, <variable>.LenInByte,
	str	r3, [sl, #1288]	@ tmp295, <variable>.bit_len
	ldr	r2, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [sl, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L253	@
.L257:
	movw	r3, #22896	@ tmp147,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	movw	r2, #19936	@ tmp151,
	ldr	r5, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r7]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC8	@,
	bic	ip, r5, #178	@ tmp154, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [r4, r2]	@ tmp154, <variable>.PicIntegrality
	mov	r5, r6	@ BitUsed, D.38651
	ldr	r2, .L261	@,
	bl	dprint_vfmw	@
	b	.L250	@
.L258:
	mov	r2, r0	@, D.38673
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mvn	r5, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L250	@
.L262:
	.align	2
.L261:
	.word	.LANCHOR0+1280
	.fnend
	.size	Mp4_Syntax_Slice_SH, .-Mp4_Syntax_Slice_SH
	.align	2
	.global	Mp4_Syntax_Slice_NotSH
	.type	Mp4_Syntax_Slice_NotSH, %function
Mp4_Syntax_Slice_NotSH:
	.fnstart
.LFB1391:
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
	ldr	r5, [r0, r8]	@ D.38561, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ len, len
	cmp	r5, #0	@ D.38561,
	beq	.L279	@,
	movw	r3, #15832	@ tmp171,
	sub	r6, fp, #72	@ tmp404,,
	ldrh	ip, [r0, r3]	@ tmp173,
	add	r0, r5, #1	@ tmp170, D.38561,
	str	r0, [r4, r8]	@ tmp170, <variable>.Mp4DecParam.SlcNum
	mov	r0, r6	@, tmp404
	ubfx	lr, ip, #7, #4	@ tmp175, tmp173,,
	movw	r8, #21940	@ tmp178,
	add	sl, lr, #17	@ D.38575, tmp175,
	bl	BsInit	@
	mov	r0, r6	@, tmp404
	mov	r1, sl	@, D.38575
	bl	BsSkip	@
	movw	r1, #21944	@ tmp182,
	ldr	r3, [r4, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	add	r2, r3, #15	@ tmp179, <variable>.MP4Syntax.image_height,
	add	sl, ip, #15	@ tmp183, <variable>.MP4Syntax.image_width,
	mov	r0, r2, lsr #4	@ tmp181, tmp179,
	mov	r8, sl, lsr #4	@ tmp185, tmp183,
	mul	r8, r8, r0	@ MbCnt, tmp185, tmp181
	cmp	r8, #0	@ MbCnt,
	beq	.L266	@,
	mov	r3, r8	@ MbCnt.1504, MbCnt
	mov	r1, #0	@ n,
.L267:
	add	r2, r1, #1	@ tmp187, n,
	movs	r3, r3, lsr #1	@ MbCnt.1504, MbCnt.1504,
	uxth	r1, r2	@ n, tmp187
	bne	.L267	@,
	sxth	r1, r1	@, n
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	mov	sl, r5, asl #3	@ tmp403, D.38561,
	rsb	ip, r5, sl	@ tmp193, D.38561, tmp403
	sub	r3, r8, #1	@ tmp197, MbCnt,
	add	r1, r4, ip, asl #2	@, tmp195, pCtx, tmp193,
	cmp	r0, r3	@ temp.1501, tmp197
	str	r0, [r1, #1300]	@ temp.1501, <variable>.mb_start_num
	bhi	.L280	@,
.L268:
	mov	r1, #5	@,
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	rsb	r2, r5, sl	@ tmp203, D.38561, tmp403
	mov	r1, #1	@,
	add	r8, r4, r2, asl #2	@, tmp205, pCtx, tmp203,
	add	r9, r8, #1264	@ tmp206, tmp205,
	add	r8, r9, #8	@ tmp206, tmp206,
	strb	r0, [r8, #9]	@, <variable>.vop_quant
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L269	@,
.L276:
	mov	r0, r6	@, tmp404
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L276	@,
	mov	r1, #1	@,
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	movw	r0, #20036	@ tmp211,
	ldr	r1, [r4, r0]	@ D.38596, <variable>.MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.38596,
	bne	.L281	@,
.L271:
	mov	r1, #1	@,
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r6	@, tmp404
	rsb	r9, r5, sl	@ tmp218, D.38561, tmp403
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
	bne	.L282	@,
.L272:
	rsb	r9, r5, sl	@ tmp273, D.38561, tmp403
	movw	r0, #21184	@ tmp277,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #21185	@ tmp287,
	add	r9, r4, r9, asl #2	@, tmp275, pCtx, tmp273,
	movw	lr, #19936	@ tmp290,
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
	movw	r1, #22024	@ tmp317,
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
	mov	ip, #22016	@ tmp334,
	strb	r3, [r8, #10]	@ tmp321, <variable>.bit_offset
	movge	r1, r6	@ BitUsed, BitUsed
	ldr	r2, [r4, ip]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r3, #15709	@ tmp337,
	add	r0, r2, r1, asr #3	@, tmp336, <variable>.BitsObj.phy_addr, BitUsed,
	str	r0, [r9, #1292]	@ tmp336, <variable>.phy_address
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L273	@,
	movw	ip, #15773	@ tmp339,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	beq	.L283	@,
.L273:
	rsb	r3, r5, sl	@ tmp372, D.38561, tmp403
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
.L274:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L265:
	mov	r0, r6	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L269:
	movw	ip, #21176	@ tmp257,
	movw	r0, #21180	@ tmp267,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	strb	r1, [r8, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r8, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	b	.L272	@
.L279:
	movw	r3, #22896	@ tmp155,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	movw	r2, #19936	@ tmp159,
	ldr	r6, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r8]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC8	@,
	bic	ip, r6, #178	@ tmp162, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [r4, r2]	@ tmp162, <variable>.PicIntegrality
	mov	r6, r5	@ BitUsed, D.38561
	ldr	r2, .L284	@,
	bl	dprint_vfmw	@
	b	.L265	@
.L281:
	mov	r0, r6	@, tmp404
	bl	BsSkip	@
	b	.L271	@
.L282:
	mov	r0, r6	@, tmp404
	mov	r1, #3	@,
	bl	BsSkip	@
	ldrb	r2, [r8, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r2, #2	@ <variable>.vop_coding_type,
	bne	.L272	@,
	mov	r0, r6	@, tmp404
	mov	r1, #3	@,
	bl	BsSkip	@
	b	.L272	@
.L283:
	movw	lr, #15780	@ tmp348,
	movw	r1, #15776	@ tmp367,
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r3, [r9, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r0, r2, asl #3	@ tmp350, <variable>.LenInByte,
	str	r0, [r9, #1288]	@ tmp350, <variable>.bit_len
	ldr	r3, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r9, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L274	@
.L266:
	mov	r1, r8	@, MbCnt
	mov	r0, r6	@, tmp404
	bl	BsGet	@
	mov	sl, r5, asl #3	@ tmp403, D.38561,
	rsb	r9, r5, sl	@ tmp399, D.38561, tmp403
	add	r8, r4, r9, asl #2	@, tmp401, pCtx, tmp399,
	str	r0, [r8, #1300]	@, <variable>.mb_start_num
	b	.L268	@
.L280:
	mov	r2, r0	@, temp.1501
	mov	r3, r8	@, MbCnt
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC10	@,
	mvn	r6, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L265	@
.L285:
	.align	2
.L284:
	.word	.LANCHOR0+1300
	.fnend
	.size	Mp4_Syntax_Slice_NotSH, .-Mp4_Syntax_Slice_NotSH
	.align	2
	.global	MP4_Dec_Slice
	.type	MP4_Dec_Slice, %function
MP4_Dec_Slice:
	.fnstart
.LFB1394:
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
	movw	ip, #15832	@ tmp144,
	ldrb	r3, [r0, ip]	@ zero_extendqisi2	@ D.38751,
	mov	r4, r0	@ pCtx, pCtx
	tst	r3, #1	@ D.38751,
	beq	.L294	@,
	tst	r3, #4	@ D.38751,
	bne	.L291	@,
	ldrh	r0, [r0, ip]	@ tmp169,
	ubfx	r0, r0, #7, #4	@ D.38773, tmp169,,
	cmp	r0, #0	@ D.38773,
	beq	.L291	@,
	cmp	r0, #7	@ D.38773,
	bfile	r3, r0, #3, #4	@ D.38751, D.38773,,
	strleb	r3, [r4, ip]	@ D.38751,
.L291:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L295	@,
.L289:
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L294:
	str	r1, [fp, #-24]	@,
	str	r2, [fp, #-28]	@,
	bl	Mp4_Check_Slice_NotSH	@
	ldr	r1, [fp, #-24]	@,
	ldr	r2, [fp, #-28]	@,
	cmp	r0, #0	@,
	beq	.L296	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L293	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L289	@
.L296:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	bne	.L289	@,
.L293:
	movw	r3, #22896	@ tmp156,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, .L297	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L289	@
.L295:
	add	r2, r4, #15680	@, pCtx,
	movw	ip, #22896	@ tmp174,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, .L297	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L289	@
.L298:
	.align	2
.L297:
	.word	.LANCHOR0+1324
	.fnend
	.size	MP4_Dec_Slice, .-MP4_Dec_Slice
	.align	2
	.global	Mp4_Syntax_Vos
	.type	Mp4_Syntax_Vos, %function
Mp4_Syntax_Vos:
	.fnstart
.LFB1365:
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
	movw	r6, #21260	@ tmp142,
	mov	r0, r5	@, tmp174
	movw	r7, #19952	@ tmp146,
	bl	BsInit	@
	mov	r3, #0	@ tmp143,
	mov	r1, #32	@,
	str	r3, [r4, r6]	@ tmp143, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, r5	@, tmp174
	bl	BsSkip	@
	mov	r0, r5	@, tmp174
	mov	r1, #8	@,
	bl	BsGet	@
	sub	r2, r0, #1	@ tmp147, D.37116,
	str	r0, [r4, r7]	@ D.37116, <variable>.MP4Vos.profile_and_level_indication
	cmp	r0, #8	@ D.37116,
	cmpne	r2, #2	@, tmp147,
	movhi	r2, #0	@, tmp154
	movls	r2, #1	@, tmp154
	bls	.L300	@,
	cmp	r0, #240	@ D.37116,
	beq	.L300	@,
	cmp	r0, #241	@ D.37116,
	beq	.L300	@,
	cmp	r0, #242	@ D.37116,
	beq	.L300	@,
	cmp	r0, #243	@ D.37116,
	beq	.L300	@,
	cmp	r0, #244	@ D.37116,
	beq	.L300	@,
	cmp	r0, #245	@ D.37116,
	beq	.L300	@,
	cmp	r0, #0	@ D.37116,
	beq	.L305	@,
	movw	lr, #:lower16:g_event_report	@ tmp169,
	movt	lr, #:upper16:g_event_report	@ tmp169,
	movw	r1, #22004	@ tmp166,
	strb	r2, [r4, r1]	@ tmp154, <variable>.MP4SyntaxState.vos_decode_right
	ldr	r3, [lr, #0]	@ g_event_report.510, g_event_report
	cmp	r3, #0	@ g_event_report.510,
	beq	.L302	@,
	movw	ip, #22896	@ tmp170,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.510
	b	.L302	@
.L300:
	movw	ip, #21260	@ tmp158,
	movw	r1, #22004	@ tmp155,
	str	r0, [r4, ip]	@ D.37116, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, #1	@ tmp156,
	strb	r0, [r4, r1]	@ tmp156, <variable>.MP4SyntaxState.vos_decode_right
.L302:
	mov	r0, r5	@, tmp174
	bl	BsPos	@
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L305:
	mov	r2, r0	@, D.37116
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Vos.profile_and_level_indication
	movw	r2, #22004	@ tmp160,
	mov	r0, #1	@ tmp161,
	strb	r0, [r4, r2]	@ tmp161, <variable>.MP4SyntaxState.vos_decode_right
	str	r3, [r4, r6]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	b	.L302	@
	.fnend
	.size	Mp4_Syntax_Vos, .-Mp4_Syntax_Vos
	.align	2
	.global	Mp4_Syntax_Vol
	.type	Mp4_Syntax_Vol, %function
Mp4_Syntax_Vol:
	.fnstart
.LFB1364:
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
	sub	r5, fp, #64	@ tmp618,,
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r0, #19968	@ tmp619, pCtx,
	mov	r0, r5	@, tmp618
	movw	r7, #19972	@ tmp252,
	bl	BsInit	@
	movw	r0, #21237	@ tmp246,
	mov	ip, #0	@ tmp247,
	mov	r1, #604	@,
	strb	ip, [r4, r0]	@ tmp247, <variable>.MP4Syntax.vol_decode_over
	mov	r0, r6	@, tmp619
	bl	__memzero	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp618
	bl	BsSkip	@
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.random_accessible_vol
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #19996	@ tmp255,
	mov	r1, #1	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_type_indication
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	mov	r3, #19968	@ tmp257,
	uxtb	r0, r0	@ D.36805,
	strb	r0, [r4, r3]	@ D.36805, <variable>.MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.36805,
	bne	.L399	@,
	movw	r7, #21253	@ tmp266,
	movw	r2, #19969	@ tmp265,
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	r1, #4	@,
	mov	r0, r5	@, tmp618
	strb	lr, [r4, r2]	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Vol.video_object_layer_verid
	bl	BsGet	@
	movw	r1, #19971	@ tmp270,
	uxtb	ip, r0	@ D.36816,
	strb	ip, [r4, r1]	@ D.36816, <variable>.MP4Vol.aspect_ratio_info
	cmp	ip, #15	@ D.36816,
	beq	.L400	@,
.L309:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #19973	@ tmp277,
	uxtb	r0, r0	@ D.36825,
	strb	r0, [r4, r7]	@ D.36825, <variable>.MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.36825,
	movweq	r7, #19974	@ tmp347,
	moveq	r2, #1	@ tmp348,
	streqb	r2, [r4, r7]	@ tmp348, <variable>.MP4Vol.chroma_format
	bne	.L401	@,
.L313:
	mov	r0, r5	@, tmp618
	mov	r1, #2	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.36890,
	movw	r0, #19976	@ tmp351,
	cmp	r7, #0	@ D.36890,
	strb	r7, [r4, r0]	@ D.36890, <variable>.MP4Vol.video_object_layer_shape
	beq	.L318	@,
	mov	r0, r5	@, tmp618
	movw	r5, #22007	@ tmp353,
	mov	r6, #0	@ tmp354,
	strb	r6, [r4, r5]	@ tmp354, <variable>.MP4SyntaxState.vol_decode_right
.L392:
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp598,
	movt	r3, #:upper16:g_event_report	@ tmp598,
	ldr	r3, [r3, #0]	@ g_event_report.1673, g_event_report
	cmp	r3, r6	@ g_event_report.1673,
	mov	r5, r0	@ BitUsed,
	beq	.L312	@,
	movw	lr, #22896	@ tmp599,
	mov	r2, r6	@, tmp595
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1673
.L312:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L318:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36897,
	beq	.L380	@,
	mov	r1, #16	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r1, #20040	@ tmp370,
	cmp	r0, #0	@ D.36903,
	str	r0, [r4, r1]	@ D.36903, <variable>.MP4Vol.vop_time_increment_resolution
	movweq	r1, #20036	@ tmp376,
	moveq	r2, #1	@ tmp377,
	streq	r2, [r4, r1]	@ tmp377, <variable>.MP4Vol.vop_time_incr_bits
	beq	.L325	@,
	subs	r0, r0, #1	@ value.1637, D.36903,
	beq	.L321	@,
	mov	r3, r0	@ value, value.1637
.L322:
	add	r7, r7, #1	@ tmp372, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	r7, r7	@ n, tmp372
	bne	.L322	@,
	cmp	r7, #0	@ n,
	beq	.L321	@,
.L323:
	add	lr, r3, #1	@ tmp374, n,
	movs	r0, r0, lsr #1	@ value.1637, value.1637,
	uxth	r3, lr	@ n, tmp374
	bne	.L323	@,
	sxth	r3, r3	@ iftmp.489, n
.L324:
	movw	ip, #20036	@ tmp375,
	str	r3, [r4, ip]	@ iftmp.489, <variable>.MP4Vol.vop_time_incr_bits
.L325:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.36916,
	beq	.L378	@,
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #19977	@ tmp388,
	uxtb	r2, r0	@ D.36923,
	strb	r2, [r4, r3]	@ D.36923, <variable>.MP4Vol.fixed_vop_rate
	cmp	r2, #0	@ D.36923,
	bne	.L402	@,
.L327:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.36931,
	beq	.L378	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r7, #20048	@ tmp404,
	mov	r1, #1	@,
	str	r0, [r4, r7]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36939,
	beq	.L380	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	sl, #20052	@ tmp415,
	mov	r1, #1	@,
	str	r0, [r4, sl]	@, <variable>.MP4Vol.video_object_layer_height
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36947,
	beq	.L380	@,
	ldr	r3, [r4, r7]	@ D.36955, <variable>.MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.36955,
	bls	.L331	@,
	ldr	r2, [r4, sl]	@ D.36957, <variable>.MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.36957,
	bls	.L331	@,
	cmp	r3, #5632	@ D.36955,
	bhi	.L331	@,
	cmp	r2, #4224	@ D.36957,
	bls	.L332	@,
.L331:
	mov	r0, r5	@, tmp618
	movw	r5, #22007	@ tmp427,
	mov	r6, #0	@ tmp428,
	strb	r6, [r4, r5]	@ tmp428, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp431,
	movt	r0, #:upper16:g_event_report	@ tmp431,
	ldr	r3, [r0, #0]	@ g_event_report.1675, g_event_report
	cmp	r3, r6	@ g_event_report.1675,
	beq	.L312	@,
	movw	ip, #22896	@ tmp432,
	mov	r2, r6	@, tmp428
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1675
	b	.L312	@
.L380:
	mov	r0, #1	@,
.L382:
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r3, #22007	@ tmp418,
	strb	r8, [r4, r3]	@ D.36947, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp618
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp422,
	movt	r2, #:upper16:g_event_report	@ tmp422,
	ldr	r3, [r2, #0]	@ g_event_report.1648, g_event_report
	cmp	r3, #0	@ g_event_report.1648,
	mov	r5, r0	@ BitUsed,
	beq	.L312	@,
	movw	r1, #22896	@ tmp423,
	mov	r2, r8	@, D.36947
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1648
	b	.L312	@
.L401:
	mov	r0, r5	@, tmp618
	mov	r1, #2	@,
	bl	BsGet	@
	movw	ip, #19974	@ tmp280,
	uxtb	r7, r0	@ D.36830,
	strb	r7, [r4, ip]	@ D.36830, <variable>.MP4Vol.chroma_format
	cmp	r7, #1	@ D.36830,
	beq	.L311	@,
	movw	lr, #22007	@ tmp282,
	mov	r0, r5	@, tmp618
	mov	r5, #0	@ tmp283,
	strb	r5, [r4, lr]	@ tmp283, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L312	@
.L399:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #19969	@ tmp260,
	mov	r1, #3	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r1, #19970	@ tmp263,
	strb	r0, [r4, r1]	@, <variable>.MP4Vol.video_object_layer_priority
	mov	r1, #4	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r1, #19971	@ tmp270,
	uxtb	ip, r0	@ D.36816,
	strb	ip, [r4, r1]	@ D.36816, <variable>.MP4Vol.aspect_ratio_info
	cmp	ip, #15	@ D.36816,
	bne	.L309	@,
.L400:
	mov	r1, #8	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #20000	@ tmp273,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.par_width
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #20004	@ tmp275,
	str	r0, [r4, r3]	@, <variable>.MP4Vol.par_height
	b	.L309	@
.L311:
	mov	r1, r7	@, D.36830
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #19975	@ tmp287,
	mov	r1, r7	@, D.36830
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.low_delay
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r1, #20008	@ tmp290,
	cmp	r0, #0	@ D.36838,
	str	r0, [r4, r1]	@ D.36838, <variable>.MP4Vol.vbv_parameters
	beq	.L313	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r8, #20012	@ tmp292,
	mov	r1, r7	@, D.36830
	str	r0, [r4, r8]	@, <variable>.MP4Vol.first_half_bit_rate
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36845,
	beq	.L395	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #20016	@ tmp303,
	mov	r1, r7	@, D.36830
	str	r0, [r4, r2]	@, <variable>.MP4Vol.latter_half_bit_rate
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36856,
	beq	.L395	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	ip, #20020	@ tmp314,
	mov	r1, r7	@, D.36830
	str	r0, [r4, ip]	@, <variable>.MP4Vol.first_half_vbv_buffer_size
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36864,
	beq	.L395	@,
	mov	r1, #3	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r8, #20024	@ tmp325,
	mov	r1, #11	@,
	str	r0, [r4, r8]	@, <variable>.MP4Vol.latter_half_vbv_buffer_size
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #20028	@ tmp327,
	mov	r1, r7	@, D.36830
	str	r0, [r4, r3]	@, <variable>.MP4Vol.first_half_vbv_occupancy
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36874,
	beq	.L395	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #20032	@ tmp338,
	mov	r1, r7	@, D.36830
	str	r0, [r4, r2]	@, <variable>.MP4Vol.latter_half_vbv_occupancy
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36882,
	bne	.L313	@,
.L395:
	mov	r0, r7	@, D.36830
	b	.L382	@
.L378:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	ip, #22007	@ tmp396,
	mov	r0, r5	@, tmp618
	strb	r7, [r4, ip]	@ D.36931, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp400,
	movt	r0, #:upper16:g_event_report	@ tmp400,
	ldr	r3, [r0, #0]	@ g_event_report.1642, g_event_report
	cmp	r3, #0	@ g_event_report.1642,
	beq	.L312	@,
	movw	lr, #22896	@ tmp401,
	mov	r2, r7	@, D.36931
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1642
	b	.L312	@
.L321:
	mov	r3, #1	@ iftmp.489,
	b	.L324	@
.L402:
	movw	r7, #20036	@ tmp391,
	mov	r0, r5	@, tmp618
	ldr	r1, [r4, r7]	@, <variable>.MP4Vol.vop_time_incr_bits
	bl	BsGet	@
	movw	r1, #20044	@ tmp393,
	str	r0, [r4, r1]	@, <variable>.MP4Vol.fixed_vop_time_increment
	b	.L327	@
.L332:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r7, #19978	@ tmp435,
	mov	r1, #1	@,
	movw	r8, #19979	@ tmp438,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.interlaced
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	uxtb	r7, r0	@ D.36966,
	strb	r7, [r4, r8]	@ D.36966, <variable>.MP4Vol.obmc_disable
	cmp	r7, #0	@ D.36966,
	beq	.L403	@,
.L333:
	movw	r3, #19969	@ tmp446,
	mov	r0, r5	@, tmp618
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	movw	r8, #19980	@ tmp449,
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	moveq	r1, #1	@,
	movne	r1, #2	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.36979,
	strb	r7, [r4, r8]	@ D.36979, <variable>.MP4Vol.sprite_enable
	cmp	r7, #0	@ D.36979,
	bne	.L404	@,
.L336:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #19981	@ tmp496,
	uxtb	r2, r0	@ D.37019,
	strb	r2, [r4, r3]	@ D.37019, <variable>.MP4Vol.not_8_bit
	cmp	r2, #0	@ D.37019,
	beq	.L344	@,
	mov	r0, r5	@, tmp618
	movw	r5, #22007	@ tmp498,
	mov	r6, #0	@ tmp499,
	strb	r6, [r4, r5]	@ tmp499, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp502,
	movt	r0, #:upper16:g_event_report	@ tmp502,
	ldr	r3, [r0, #0]	@ g_event_report.1661, g_event_report
	cmp	r3, r6	@ g_event_report.1661,
	beq	.L345	@,
	movw	r1, #22896	@ tmp503,
	mov	r2, r6	@, tmp499
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1661
.L345:
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L312	@
.L404:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp451,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp451,
	ldr	sl, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	sl, sl, #8	@ tmp452, g_VdmCharacter,
	beq	.L405	@,
	sub	r1, r7, #1	@ tmp461, D.36979,
	uxtb	r2, r1	@ tmp462, tmp461
	cmp	r2, #1	@ tmp462,
	bls	.L406	@,
	movw	ip, #22007	@ tmp488,
	mov	r0, r5	@, tmp618
	mov	r6, #0	@ tmp489,
	strb	r6, [r4, ip]	@ tmp489, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp492,
	movt	r1, #:upper16:g_event_report	@ tmp492,
	ldr	r3, [r1, #0]	@ g_event_report.1659, g_event_report
	cmp	r3, r6	@ g_event_report.1659,
	mov	r5, r0	@ BitUsed,
	beq	.L343	@,
	movw	lr, #22896	@ tmp493,
	mov	r2, r6	@, tmp489
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1659
.L343:
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L312	@
.L406:
	cmp	r7, #2	@ D.36979,
	beq	.L340	@,
.L397:
	mov	r0, r5	@, tmp618
	movw	r5, #22007	@ tmp481,
	mov	r6, #0	@ tmp482,
	strb	r6, [r4, r5]	@ tmp482, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp485,
	movt	r0, #:upper16:g_event_report	@ tmp485,
	ldr	r3, [r0, #0]	@ g_event_report.1656, g_event_report
	cmp	r3, r6	@ g_event_report.1656,
	beq	.L342	@,
	movw	lr, #22896	@ tmp486,
	mov	r2, r6	@, tmp482
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1656
.L342:
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L312	@
.L403:
	movw	lr, #22007	@ tmp440,
	mov	r0, r5	@, tmp618
	strb	r7, [r4, lr]	@ D.36966, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp444,
	movt	r2, #:upper16:g_event_report	@ tmp444,
	ldr	r3, [r2, #0]	@ g_event_report.1650, g_event_report
	cmp	r3, #0	@ g_event_report.1650,
	beq	.L333	@,
	movw	r1, #22896	@ tmp445,
	mov	r2, r7	@, D.36966
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1650
	b	.L333	@
.L344:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #19982	@ tmp506,
	uxtb	r7, r0	@ D.37028,
	strb	r7, [r4, ip]	@ D.37028, <variable>.MP4Vol.quant_type
	cmp	r7, #0	@ D.37028,
	bne	.L407	@,
.L346:
	movw	r3, #19969	@ tmp531,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L352	@,
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #19985	@ tmp534,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.quarter_sample
.L353:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	ip, #19986	@ tmp540,
	uxtb	r7, r0	@ D.37057,
	strb	r7, [r4, ip]	@ D.37057, <variable>.MP4Vol.complexity_estimation_disable
	cmp	r7, #0	@ D.37057,
	movweq	r1, #:lower16:.LC18	@,
	moveq	r0, #1	@,
	movteq	r1, #:upper16:.LC18	@,
	beq	.L390	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #19987	@ tmp550,
	mov	r1, #1	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.resync_marker_disable
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #19988	@ tmp553,
	uxtb	r7, r0	@ D.37068,
	strb	r7, [r4, r2]	@ D.37068, <variable>.MP4Vol.data_partitioned
	cmp	r7, #0	@ D.37068,
	movwne	r1, #:lower16:.LC19	@,
	movne	r0, #1	@,
	movtne	r1, #:upper16:.LC19	@,
	bne	.L398	@,
	movw	r0, #19969	@ tmp562,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L356	@,
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #19989	@ tmp565,
	uxtb	r8, r0	@ D.37079,
	strb	r8, [r4, ip]	@ D.37079, <variable>.MP4Vol.newpred_enable
	cmp	r8, #0	@ D.37079,
	beq	.L357	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	mov	r0, #1	@,
.L390:
	bl	dprint_vfmw	@
	movw	r3, #22007	@ tmp568,
	strb	r7, [r4, r3]	@ D.37068, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp618
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp572,
	movt	r2, #:upper16:g_event_report	@ tmp572,
	ldr	r3, [r2, #0]	@ g_event_report.1669, g_event_report
	cmp	r3, #0	@ g_event_report.1669,
	mov	r5, r0	@ BitUsed,
	beq	.L312	@,
	movw	lr, #22896	@ tmp573,
	mov	r2, r7	@, D.37068
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1669
	b	.L312	@
.L352:
	movw	lr, #19985	@ tmp536,
	mov	r0, #0	@ tmp537,
	strb	r0, [r4, lr]	@ tmp537, <variable>.MP4Vol.quarter_sample
	b	.L353	@
.L340:
	mov	r1, #6	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r3, #19992	@ tmp471,
	mov	r1, r7	@, D.36979
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_warping_points
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #19993	@ tmp474,
	mov	r1, #1	@,
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.sprite_warping_accuracy
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vol.sprite_enable, <variable>.MP4Vol.sprite_enable
	movw	r3, #19994	@ tmp477,
	cmp	ip, #2	@ <variable>.MP4Vol.sprite_enable,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_brightness_change
	bne	.L397	@,
	b	.L336	@
.L405:
	mov	r0, r5	@, tmp618
	movw	r5, #22007	@ tmp454,
	strb	sl, [r4, r5]	@ tmp452, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	ip, #:lower16:g_event_report	@ tmp458,
	movt	ip, #:upper16:g_event_report	@ tmp458,
	ldr	r3, [ip, #0]	@ g_event_report.1652, g_event_report
	cmp	r3, #0	@ g_event_report.1652,
	mov	r5, r0	@ BitUsed,
	beq	.L338	@,
	movw	lr, #22896	@ tmp459,
	mov	r2, sl	@, tmp452
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1652
.L338:
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L312	@
.L407:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #19983	@ tmp509,
	uxtb	r3, r0	@ D.37033,
	strb	r3, [r4, r2]	@ D.37033, <variable>.MP4Vol.load_intra_quant_mat
	cmp	r3, #0	@ D.37033,
	movweq	r2, #:lower16:.LANCHOR0	@ tmp620,
	movteq	r2, #:upper16:.LANCHOR0	@ tmp620,
	bne	.L408	@,
.L349:
	add	r1, r3, #4	@ tmp623, ivtmp.1612,
	add	ip, r4, r3	@ tmp514, pCtx, ivtmp.1612
	ldr	lr, [r2, r3]	@ tmp518, default_intra_matrix
	add	r7, r4, r1	@ tmp625, pCtx, tmp623
	add	r3, r1, #4	@ ivtmp.1612, tmp623,
	ldr	r0, [r2, r1]	@ tmp628, default_intra_matrix
	add	ip, ip, #19968	@ tmp516, tmp514,
	add	r1, r7, #19968	@ tmp626, tmp625,
	cmp	r3, #256	@ ivtmp.1612,
	str	lr, [ip, #88]	@ tmp518, <variable>.MP4Vol.intra_quant_mat
	str	r0, [r1, #88]	@ tmp628, <variable>.MP4Vol.intra_quant_mat
	bne	.L349	@,
.L348:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	r2, #19984	@ tmp520,
	uxtb	r3, r0	@ D.37043,
	strb	r3, [r4, r2]	@ D.37043, <variable>.MP4Vol.load_nonintra_quant_mat
	cmp	r3, #0	@ D.37043,
	ldreq	r1, .L411	@ tmp621,
	bne	.L409	@,
.L351:
	add	r2, r3, #4	@ tmp622, ivtmp.1602,
	add	ip, r4, r3	@ tmp525, pCtx, ivtmp.1602
	ldr	lr, [r1, r3]	@ tmp530, default_inter_matrix
	add	r7, r4, r2	@ tmp630, pCtx, tmp622
	add	r3, r2, #4	@ ivtmp.1602, tmp622,
	ldr	r0, [r1, r2]	@ tmp633, default_inter_matrix
	add	ip, ip, #20224	@ tmp527, tmp525,
	add	r2, r7, #20224	@ tmp631, tmp630,
	cmp	r3, #256	@ ivtmp.1602,
	str	lr, [ip, #88]	@ tmp530, <variable>.MP4Vol.nonintra_quant_mat
	str	r0, [r2, #88]	@ tmp633, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L351	@,
	b	.L346	@
.L357:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp618
	bl	BsGet	@
	movw	ip, #19990	@ tmp575,
	uxtb	r1, r0	@ D.37088,
	strb	r1, [r4, ip]	@ D.37088, <variable>.MP4Vol.reduced_resolution_vop_enable
	cmp	r1, #0	@ D.37088,
	bne	.L410	@,
.L358:
	mov	r0, r5	@, tmp618
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #19991	@ tmp591,
	uxtb	ip, r0	@ D.37098,
	strb	ip, [r4, r2]	@ D.37098, <variable>.MP4Vol.scalability
	cmp	ip, #0	@ D.37098,
	beq	.L359	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #1	@,
.L398:
	bl	dprint_vfmw	@
	movw	r0, #22007	@ tmp594,
	mov	r6, #0	@ tmp595,
	strb	r6, [r4, r0]	@ tmp595, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp618
	b	.L392	@
.L359:
	movw	lr, #22008	@ tmp606,
	sub	r2, lr, #1	@ tmp600, tmp600,
	movw	ip, #21237	@ tmp603,
	add	r0, r4, #20480	@, pCtx,
	mov	r3, #1	@ tmp601,
	mov	r1, r6	@, tmp619
	strb	r3, [r4, r2]	@ tmp601, <variable>.MP4SyntaxState.vol_decode_right
	add	r0, r0, #92	@,,
	strb	r3, [r4, lr]	@ tmp601, <variable>.MP4SyntaxState.last_vol_decode_right
	mov	r2, #604	@,
	strb	r3, [r4, ip]	@ tmp601, <variable>.MP4Syntax.vol_decode_over
	bl	memcpy	@
	mov	r0, r5	@, tmp618
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L312	@
.L410:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	movw	r2, #22007	@ tmp578,
	mov	r0, r5	@, tmp618
	strb	r8, [r4, r2]	@ D.37079, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp582,
	movt	r0, #:upper16:g_event_report	@ tmp582,
	ldr	r3, [r0, #0]	@ g_event_report.1671, g_event_report
	cmp	r3, #0	@ g_event_report.1671,
	beq	.L312	@,
	movw	lr, #22896	@ tmp583,
	mov	r2, r8	@, D.37079
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1671
	b	.L312	@
.L356:
	movw	r1, #19990	@ tmp587,
	sub	r3, r1, #1	@ tmp584, tmp584,
	strb	r7, [r4, r1]	@ D.37068, <variable>.MP4Vol.reduced_resolution_vop_enable
	strb	r7, [r4, r3]	@ D.37068, <variable>.MP4Vol.newpred_enable
	b	.L358	@
.L408:
	add	lr, r4, #19968	@, pCtx,
	mov	r0, r5	@, tmp618
	add	r1, lr, #88	@,,
	bl	Bs_Get_Matrix	@
	b	.L348	@
.L409:
	add	r3, r4, #20224	@, pCtx,
	mov	r0, r5	@, tmp618
	add	r1, r3, #88	@,,
	bl	Bs_Get_Matrix	@
	b	.L346	@
.L412:
	.align	2
.L411:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Vol, .-Mp4_Syntax_Vol
	.align	2
	.global	Mp4_Syntax_Vop
	.type	Mp4_Syntax_Vop, %function
Mp4_Syntax_Vop:
	.fnstart
.LFB1363:
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
	ldr	r3, [r0, r5]	@ D.36581, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r1	@ ptr, ptr
	mov	r6, r2	@ len, len
	cmp	r3, #0	@ D.36581,
	bne	.L464	@,
	movw	r1, #21237	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22009	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	bne	.L465	@,
.L416:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L464:
	mov	r2, r3	@, D.36581
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	movw	r1, #21237	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	mov	r3, #0	@ tmp187,
	str	r3, [r4, r5]	@ tmp187, <variable>.Mp4DecParam.SlcNum
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22009	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	beq	.L416	@,
.L465:
	sub	r5, fp, #72	@ tmp436,,
	add	r7, r4, #20992	@ tmp438, pCtx,
	add	r7, r7, #184	@ tmp438, tmp438,
	mov	r1, r8	@, ptr
	mov	r2, r6	@, len
	mov	r0, r5	@, tmp436
	bl	BsInit	@
	movw	sl, #22009	@ tmp196,
	mov	r0, r7	@, tmp438
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r2, #0	@ tmp197,
	mov	r1, #32	@,
	strb	r2, [r4, sl]	@ tmp197, <variable>.MP4SyntaxState.vop_decode_right
	mov	r0, r5	@, tmp436
	movw	r8, #21176	@ tmp201,
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	uxtb	r2, r0	@ D.36597,
	mov	r0, #18	@,
	strb	r2, [r4, r8]	@ D.36597, <variable>.MP4Vop.vop_coding_type
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ D.36599, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #3	@ D.36599,
	beq	.L466	@,
.L417:
	movw	r0, #21243	@ tmp216,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.36613, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.36613,
	beq	.L467	@,
	cmp	r3, #2	@ D.36613,
	beq	.L421	@,
.L420:
	movw	ip, #22536	@ tmp218,
	ldr	r1, [r4, ip]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	r1, #1	@ <variable>.IPVopErr,
	beq	.L468	@,
.L422:
	mov	r6, r6, asl #3	@ D.36628, len,
	mov	sl, #0	@ i,
	b	.L425	@
.L470:
	bl	BsPos	@
	mov	r1, #1	@,
	add	sl, sl, r1	@ i, i,
	cmp	r0, r6	@, D.36628
	mov	r0, r5	@, tmp436
	bgt	.L459	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp436
	beq	.L423	@,
	bl	BsPos	@
	add	sl, sl, #1	@ i, i,
	cmp	r0, r6	@, D.36628
	bgt	.L459	@,
	cmp	sl, #6400	@ i,
	beq	.L469	@,
.L425:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp436
	bne	.L470	@,
.L423:
	mov	r0, r5	@, tmp436
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36637,
	beq	.L463	@,
	movw	r2, #21344	@ tmp234,
	ldr	r1, [r4, r2]	@ D.36644, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.36644,
	bne	.L471	@,
.L429:
	movw	r3, #21948	@ tmp236,
	movw	r8, #21952	@ tmp237,
	str	r1, [r4, r8]	@ time_increment, <variable>.MP4Syntax.time_increment
	mov	r0, r5	@, tmp436
	str	sl, [r4, r3]	@ i, <variable>.MP4Syntax.time_incr
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36649,
	beq	.L463	@,
	mov	r0, r5	@, tmp436
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21177	@ tmp248,
	uxtb	ip, r0	@ D.36656,
	strb	ip, [r4, r2]	@ D.36656, <variable>.MP4Vop.vop_coded
	cmp	ip, #0	@ D.36656,
	beq	.L472	@,
	movw	r8, #21176	@ tmp264,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ temp.1727, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #1	@ temp.1727,
	beq	.L432	@,
	cmp	r3, #3	@ temp.1727,
	beq	.L473	@,
.L433:
	movw	r3, #21178	@ tmp270,
	mov	r2, #0	@ tmp271,
	strb	r2, [r4, r3]	@ tmp271, <variable>.MP4Vop.vop_rounding_type
.L434:
	movw	lr, #21284	@ tmp276,
	movw	r0, #21179	@ tmp273,
	ldrb	r8, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape, <variable>.MP4Syntax.syn_vol.video_object_layer_shape
	mov	r1, #0	@ tmp274,
	strb	r1, [r4, r0]	@ tmp274, <variable>.MP4Vop.vop_reduced_resolution
	cmp	r8, #2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape,
	beq	.L435	@,
	mov	r0, r5	@, tmp436
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r2, #19978	@ tmp281,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vol.interlaced
	movw	ip, #21180	@ tmp279,
	cmp	r3, #0	@ <variable>.MP4Vol.interlaced,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.intra_dc_vlc_thr
	bne	.L474	@,
	movw	lr, #21182	@ tmp292,
	movw	r0, #21181	@ tmp289,
	mov	r1, #2	@ tmp290,
	strb	r3, [r4, lr]	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vop.alternate_vertical_scan_flag
	strb	r1, [r4, r0]	@ tmp290, <variable>.MP4Vop.top_field_first
.L437:
	movw	r8, #21288	@ tmp295,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	sub	r2, r3, #1	@ tmp298, <variable>.MP4Syntax.syn_vol.sprite_enable,
	uxtb	ip, r2	@ tmp299, tmp298
	cmp	ip, #1	@ tmp299,
	bls	.L475	@,
.L438:
	mov	r0, r5	@, tmp436
	mov	r1, #5	@,
	bl	BsGet	@
	movw	r8, #21183	@ tmp329,
	uxtb	r2, r0	@ D.36720,
	strb	r2, [r4, r8]	@ D.36720, <variable>.MP4Vop.vop_quant
	cmp	r2, #0	@ D.36720,
	moveq	r2, #1	@ tmp332,
	streqb	r2, [r4, r8]	@ tmp332, <variable>.MP4Vop.vop_quant
	movw	r8, #21176	@ tmp334,
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #0	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L476	@,
.L435:
	mov	r8, r7	@ tmp376, tmp438
	add	r7, r4, #21760	@ tmp371, pCtx,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp376,,,,
	add	ip, r7, #120	@ tmp371, tmp371,
	movw	lr, #19936	@ tmp363,
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
	movw	ip, #22009	@ tmp360,
	mov	lr, #1	@ tmp361,
	strb	lr, [r4, ip]	@ tmp361, <variable>.MP4SyntaxState.vop_decode_right
	mov	lr, sl	@ tmp448, tmp375
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp449,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp449,,,
	stmia	lr, {r0, r1, r2}	@ tmp450,,,
	mov	r0, r5	@, tmp436
	bl	BsPos	@
	movw	r2, #15709	@ tmp398,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22024	@ tmp385,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp380, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp378, BitUsed, D.36628
	mov	r3, r0, lsr #29	@ tmp381, tmp380,
	add	r0, r5, #7	@ tmp393, BitUsed,
	add	ip, r5, r3	@ tmp382, BitUsed, tmp381
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp383, tmp382,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	mov	r1, #22016	@ tmp395,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp384, tmp381, tmp383
	add	r3, r3, ip	@ tmp389, tmp384, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp378, <variable>.bit_len
	add	lr, r1, r0, asr #3	@, tmp397, <variable>.BitsObj.phy_addr, BitUsed,
	strb	r3, [r4, #1282]	@ tmp389, <variable>.bit_offset
	str	lr, [r4, #1292]	@ tmp397, <variable>.phy_address
	bne	.L450	@,
	movw	r0, #15773	@ tmp400,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L477	@,
.L450:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #1296]	@ tmp409, <variable>.phy_address
	str	r0, [r4, #1288]	@ tmp409, <variable>.bit_len
	strb	r0, [r4, #1283]	@ tmp409, <variable>.bit_offset
.L451:
	movw	lr, #19932	@ tmp428,
	movw	ip, #21176	@ tmp413,
	movw	r0, #21185	@ tmp416,
	movw	r1, #21184	@ tmp419,
	movw	r3, #21183	@ tmp422,
	ldr	r2, [r4, lr]	@ D.36774, <variable>.StreamIDNum
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r2, #0	@ D.36774,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	movw	r3, #21180	@ tmp425,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	ip, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	r0, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r1, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L478	@,
.L452:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L416	@
.L466:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp205,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp205,
	ldr	r8, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r8, r8, #8	@ tmp206, g_VdmCharacter,
	bne	.L417	@,
	mov	r0, r5	@, tmp436
	strb	r8, [r4, sl]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp212,
	movt	r3, #:upper16:g_event_report	@ tmp212,
	ldr	r3, [r3, #0]	@ g_event_report.461, g_event_report
	cmp	r3, #0	@ g_event_report.461,
	mov	r5, r0	@ BitUsed,
	beq	.L418	@,
	movw	lr, #22896	@ tmp213,
	mov	r2, r8	@, tmp206
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.461
.L418:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L467:
	cmp	r2, #0	@ D.36599,
	beq	.L420	@,
.L421:
	mov	r0, r5	@, tmp436
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L416	@
.L469:
	movw	r2, #22009	@ tmp431,
	mov	r0, r5	@, tmp436
	mov	r5, #0	@ tmp432,
	strb	r5, [r4, r2]	@ tmp432, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, sl	@, i
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L459:
	mov	r0, r5	@, tmp436
	bl	BsPos	@
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L468:
	cmp	r2, #0	@ D.36599,
	beq	.L422	@,
	b	.L421	@
.L463:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #22009	@ tmp240,
	mov	r0, r5	@, tmp436
	strb	r8, [r4, r1]	@ D.36649, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp244,
	movt	r0, #:upper16:g_event_report	@ tmp244,
	ldr	r3, [r0, #0]	@ g_event_report.1725, g_event_report
	cmp	r3, #0	@ g_event_report.1725,
	beq	.L416	@,
	movw	lr, #22896	@ tmp245,
	mov	r2, r8	@, D.36649
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1725
	b	.L416	@
.L471:
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	mov	r1, r0	@ time_increment,
	b	.L429	@
.L472:
	movw	r3, #19936	@ tmp259,
	movw	ip, #21880	@ tmp256,
	ldr	r1, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	lr, #4	@ tmp251,
	mov	r0, r5	@, tmp436
	strb	lr, [r4, ip]	@ tmp251, <variable>.MP4Syntax.syn_vop.vop_coding_type
	orr	r2, r1, #128	@ tmp262, <variable>.PicIntegrality,
	movw	r1, #21176	@ tmp250,
	str	r2, [r4, r3]	@ tmp262, <variable>.PicIntegrality
	movw	r3, #22009	@ tmp253,
	mov	r5, #1	@ tmp254,
	strb	lr, [r4, r1]	@ tmp251, <variable>.MP4Vop.vop_coding_type
	strb	r5, [r4, r3]	@ tmp254, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L416	@
.L478:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L452	@
.L473:
	movw	lr, #21288	@ tmp265,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	bne	.L433	@,
.L432:
	mov	r0, r5	@, tmp436
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #21178	@ tmp268,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.vop_rounding_type
	b	.L434	@
.L476:
	mov	r0, r5	@, tmp436
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21184	@ tmp337,
	uxtb	sl, r0	@ D.36727,
	strb	sl, [r4, r3]	@ D.36727, <variable>.MP4Vop.vop_fcode_forward
	cmp	sl, #0	@ D.36727,
	beq	.L479	@,
	ldrb	ip, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #2	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L435	@,
	mov	r0, r5	@, tmp436
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21185	@ tmp351,
	uxtb	r8, r0	@ D.36738,
	strb	r8, [r4, r3]	@ D.36738, <variable>.MP4Vop.vop_fcode_backward
	cmp	r8, #0	@ D.36738,
	bne	.L435	@,
	add	r3, r3, #824	@ tmp353, tmp353,
	mov	r0, r5	@, tmp436
	strb	r8, [r4, r3]	@ D.36738, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp357,
	movt	r2, #:upper16:g_event_report	@ tmp357,
	ldr	r3, [r2, #0]	@ g_event_report.1744, g_event_report
	cmp	r3, #0	@ g_event_report.1744,
	mov	r5, r0	@ BitUsed,
	beq	.L449	@,
	movw	r1, #22896	@ tmp358,
	mov	r2, r8	@, D.36738
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1744
.L449:
	movw	r1, #:lower16:.LC28	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L474:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	movw	r8, #21181	@ tmp284,
	mov	r1, #1	@,
	strb	r0, [r4, r8]	@, <variable>.MP4Vop.top_field_first
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	movw	r3, #21182	@ tmp287,
	strb	r0, [r4, r3]	@, <variable>.MP4Vop.alternate_vertical_scan_flag
	b	.L437	@
.L475:
	movw	r0, #21176	@ tmp300,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r1, #3	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L438	@,
	movw	ip, #21300	@ tmp302,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	lr, #0	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L438	@,
	add	r2, r4, #20992	@ ivtmp.1707, pCtx,
	mov	r9, #0	@,
	add	r8, r2, #220	@ ivtmp.1707, ivtmp.1707,
	str	r9, [fp, #-80]	@, %sfp
	str	r6, [fp, #-84]	@ D.36628, %sfp
.L445:
	mov	r0, r5	@, tmp436
	bl	bs_get_spritetrajectory	@
	subs	r6, r0, #0	@ length,
	moveq	sl, r6	@ x, length
	bne	.L480	@,
.L440:
	movw	lr, #21984	@,
	ldr	r0, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r0, #500	@ <variable>.MP4Syntax.divx_version,
	bne	.L441	@,
	movw	r2, #21988	@,
	movw	ip, #413	@,
	ldr	r9, [r4, r2]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r9, ip	@ <variable>.MP4Syntax.divx_build,
	beq	.L442	@,
.L441:
	mov	r0, r5	@, tmp436
	mov	r1, #1	@,
	bl	BsSkip	@
.L442:
	mov	r0, r5	@, tmp436
	bl	bs_get_spritetrajectory	@
	subs	r9, r0, #0	@ length.1731,
	moveq	r6, r9	@ y, length.1731
	bne	.L481	@,
.L444:
	mov	r0, r5	@, tmp436
	mov	r1, #1	@,
	bl	BsSkip	@
	str	r6, [r8, #4]	@ y, <variable>.y
	str	sl, [r8, #0]	@ x, <variable>.x
	add	r8, r8, #8	@ ivtmp.1707, ivtmp.1707,
	ldr	sl, [fp, #-80]	@, %sfp
	add	r6, sl, #1	@,,
	movw	sl, #21300	@,
	str	r6, [fp, #-80]	@, %sfp
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	r0, r6	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	bhi	.L445	@,
	ldr	r6, [fp, #-84]	@ D.36628, %sfp
	b	.L438	@
.L477:
	movw	r1, #15780	@ tmp402,
	movw	ip, #15776	@ tmp407,
	ldr	lr, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, lr, asl #3	@ tmp404, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp404, <variable>.bit_len
	str	r3, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L451	@
.L479:
	mov	r0, r5	@, tmp436
	movw	r5, #22009	@ tmp339,
	strb	sl, [r4, r5]	@ D.36727, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp343,
	movt	r1, #:upper16:g_event_report	@ tmp343,
	ldr	r3, [r1, #0]	@ g_event_report.1739, g_event_report
	cmp	r3, #0	@ g_event_report.1739,
	mov	r5, r0	@ BitUsed,
	beq	.L448	@,
	movw	lr, #22896	@ tmp344,
	mov	r2, sl	@, D.36727
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1739
.L448:
	movw	r0, #21176	@ tmp346,
	movw	r1, #:lower16:.LC27	@,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@, <variable>.MP4Vop.vop_coding_type
	movt	r1, #:upper16:.LC27	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L481:
	mov	r1, r9	@, length.1731
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	sub	r1, r9, #1	@ tmp320, length.1731,
	movs	r3, r0, asr r1	@, y,
	mov	r6, r0	@ y,
	moveq	lr, #1	@,
	moveq	r3, lr, asl r9	@ tmp322,,
	subeq	r3, r3, #1	@ tmp324, tmp322,
	eoreq	r6, r0, r3	@ D.36715, y, tmp324
	rsbeq	r6, r6, #0	@ y, D.36715
	b	.L444	@
.L480:
	mov	r1, r6	@, length
	mov	r0, r5	@, tmp436
	bl	BsGet	@
	sub	r1, r6, #1	@ tmp307, length,
	movs	r3, r0, asr r1	@, x,
	mov	sl, r0	@ x,
	moveq	lr, #1	@,
	moveq	r3, lr, asl r6	@ tmp309,,
	subeq	r3, r3, #1	@ tmp311, tmp309,
	eoreq	sl, r0, r3	@ D.36702, x, tmp311
	rsbeq	sl, sl, #0	@ x, D.36702
	b	.L440	@
	.fnend
	.size	Mp4_Syntax_Vop, .-Mp4_Syntax_Vop
	.align	2
	.global	Mp4_Syntax_Vo
	.type	Mp4_Syntax_Vo, %function
Mp4_Syntax_Vo:
	.fnstart
.LFB1362:
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
	movw	ip, #21253	@ tmp159,
	movw	r3, #21254	@ tmp162,
	movw	r2, #21255	@ tmp165,
	strb	r6, [r4, ip]	@ tmp160, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	ip, #0	@ tmp157,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r3, #21256	@ tmp168,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	r2, #21257	@ tmp171,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	r3, #21258	@ tmp174,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_format
	movw	r2, #21259	@ tmp177,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_range
	movw	r0, #21272	@ tmp184,
	movw	r3, #21264	@ tmp180,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.colour_description
	movw	r1, #21252	@ tmp156,
	movw	r2, #21268	@ tmp182,
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
	movw	r3, #19944	@ tmp188,
	uxtb	r0, r0	@ D.36505,
	strb	r0, [r4, r3]	@ D.36505, <variable>.MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.36505,
	movweq	r3, #19945	@ tmp196,
	streqb	r6, [r4, r3]	@ tmp160, <variable>.MP4Vos.visual_object_verid
	bne	.L490	@,
	mov	r0, r5	@, tmp275
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #19947	@ tmp200,
	uxtb	r6, r0	@ D.36515,
	strb	r6, [r4, r3]	@ D.36515, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36515,
	beq	.L491	@,
.L485:
	mov	r0, r5	@, tmp275
	movw	r5, #22005	@ tmp220,
	mov	r6, #0	@ tmp221,
	strb	r6, [r4, r5]	@ tmp221, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.457, g_event_report
	cmp	r3, r6	@ g_event_report.457,
	beq	.L487	@,
	movw	lr, #22896	@ tmp225,
	mov	r2, r6	@, tmp221
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.457
.L487:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L490:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19945	@ tmp191,
	mov	r1, #3	@,
	movw	r6, #19946	@ tmp194,
	strb	r0, [r4, r2]	@, <variable>.MP4Vos.visual_object_verid
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, r6]	@, <variable>.MP4Vos.visual_object_priority
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19947	@ tmp200,
	uxtb	r6, r0	@ D.36515,
	strb	r6, [r4, r3]	@ D.36515, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36515,
	bne	.L485	@,
.L491:
	mov	r1, r6	@, D.36515
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19948	@ tmp203,
	uxtb	r1, r0	@ D.36520,
	strb	r1, [r4, ip]	@ D.36520, <variable>.MP4Vos.video_signal_type
	cmp	r1, #0	@ D.36520,
	bne	.L492	@,
.L486:
	movw	r1, #22005	@ tmp227,
	mov	ip, #1	@ tmp228,
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp228, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	cmp	r0, r7, asl #3	@, len,
	bgt	.L488	@,
	movw	r8, #19944	@ tmp233,
	movw	r6, #19945	@ tmp237,
	movw	lr, #19946	@ tmp241,
	movw	ip, #19947	@ tmp245,
	movw	r0, #19948	@ tmp249,
	movw	r1, #19949	@ tmp253,
	movw	r2, #19950	@ tmp257,
	movw	sl, #19951	@ tmp261,
	movw	r7, #19960	@ tmp268,
	ldrb	r9, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vos.is_visual_object_identifier, <variable>.MP4Vos.is_visual_object_identifier
	ldrb	r8, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Vos.visual_object_verid
	movw	r3, #19956	@ tmp265,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Vos.visual_object_priority
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Vos.visual_object_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Vos.video_signal_type
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_format, <variable>.MP4Vos.video_format
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_range, <variable>.MP4Vos.video_range
	ldrb	r2, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Vos.colour_description, <variable>.MP4Vos.colour_description
	ldr	sl, [r4, r7]	@, <variable>.MP4Vos.transfer_characteristics
	movw	r7, #19964	@ tmp271,
	ldr	r3, [r4, r3]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Vos.colour_primaries
	str	sl, [fp, #-80]	@, %sfp
	movw	sl, #21252	@ tmp232,
	ldr	r7, [r4, r7]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Vos.matrix_coefficients
	strb	r9, [r4, sl]	@ <variable>.MP4Vos.is_visual_object_identifier, <variable>.MP4Syntax.syn_vos.is_visual_object_identifier
	movw	sl, #21253	@ tmp236,
	strb	r8, [r4, sl]	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	movw	r8, #21272	@ tmp270,
	str	r7, [r4, r8]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Syntax.syn_vos.matrix_coefficients
	movw	r7, #21254	@ tmp240,
	strb	r6, [r4, r7]	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r6, #21255	@ tmp244,
	strb	lr, [r4, r6]	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	lr, #21256	@ tmp248,
	strb	ip, [r4, lr]	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	lr, #21257	@ tmp252,
	strb	r0, [r4, lr]	@ <variable>.MP4Vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	movw	ip, #21258	@ tmp256,
	movw	lr, #21259	@ tmp260,
	movw	r0, #21264	@ tmp264,
	str	r3, [r4, r0]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Syntax.syn_vos.colour_primaries
	movw	r3, #21268	@ tmp267,
	strb	r1, [r4, ip]	@ <variable>.MP4Vos.video_range, <variable>.MP4Syntax.syn_vos.video_range
	strb	r2, [r4, lr]	@ <variable>.MP4Vos.colour_description, <variable>.MP4Syntax.syn_vos.colour_description
	ldr	r2, [fp, #-80]	@, %sfp
	str	r2, [r4, r3]	@, <variable>.MP4Syntax.syn_vos.transfer_characteristics
.L488:
	mov	r0, r5	@, tmp275
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L487	@
.L492:
	mov	r1, #3	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19949	@ tmp206,
	mov	r1, r6	@, D.36515
	strb	r0, [r4, ip]	@, <variable>.MP4Vos.video_format
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19950	@ tmp209,
	mov	r1, r6	@, D.36515
	strb	r0, [r4, r3]	@, <variable>.MP4Vos.video_range
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19951	@ tmp212,
	uxtb	r0, r0	@ D.36529,
	strb	r0, [r4, r2]	@ D.36529, <variable>.MP4Vos.colour_description
	cmp	r0, #0	@ D.36529,
	beq	.L486	@,
	mov	r1, #8	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19956	@ tmp215,
	mov	r1, #8	@,
	str	r0, [r4, r3]	@, <variable>.MP4Vos.colour_primaries
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19960	@ tmp217,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vos.transfer_characteristics
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r1, #19964	@ tmp219,
	str	r0, [r4, r1]	@, <variable>.MP4Vos.matrix_coefficients
	b	.L486	@
	.fnend
	.size	Mp4_Syntax_Vo, .-Mp4_Syntax_Vo
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
.LFB1360:
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
	ldr	r3, [r0, r5]	@ D.36280, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ptr, ptr
	mov	r6, r2	@ len, len
	cmp	r3, #0	@ D.36280,
	bne	.L516	@,
.L494:
	sub	r5, fp, #56	@ tmp313,,
	mov	r2, r6	@, len
	mov	r1, r7	@, ptr
	mov	r0, r5	@, tmp313
	bl	BsInit	@
	add	ip, r4, #20992	@, pCtx,
	add	r0, ip, #184	@,,
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
	movw	r2, #21186	@ tmp162,
	uxtb	r1, r0	@ D.36292,
	strb	r1, [r4, r2]	@ D.36292, <variable>.MP4Vop.source_format
	sub	r0, r1, #1	@ tmp164, D.36292,
	cmp	r0, #3	@ tmp164,
	ldrls	pc, [pc, r0, asl #2]	@ tmp164
	b	.L495	@
.L500:
	.word	.L496
	.word	.L497
	.word	.L498
	.word	.L499
.L499:
	movw	r3, #21187	@ tmp195,
	mov	lr, #18	@ tmp196,
	movw	ip, #21188	@ tmp198,
	strb	lr, [r4, r3]	@ tmp196, <variable>.MP4Vop.num_gobs_invop
	movw	r1, #21944	@ tmp201,
	movw	r3, #21940	@ tmp203,
	mov	r2, #88	@ tmp199,
	mov	r0, #704	@ tmp202,
	mov	lr, #576	@ tmp204,
	strb	r2, [r4, ip]	@ tmp199, <variable>.MP4Vop.num_mb_ingob
	str	r0, [r4, r1]	@ tmp202, <variable>.MP4Syntax.image_width
	str	lr, [r4, r3]	@ tmp204, <variable>.MP4Syntax.image_height
.L501:
	mov	r0, r5	@, tmp313
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #21243	@ tmp215,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.coding_mode, <variable>.MP4Syntax.coding_mode
	movw	r2, #21176	@ tmp213,
	cmp	ip, #2	@ <variable>.MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.36302,
	strb	r0, [r4, r2]	@ D.36302, <variable>.MP4Vop.vop_coding_type
	beq	.L503	@,
	movw	r1, #22536	@ tmp217,
	ldr	lr, [r4, r1]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	lr, #1	@ <variable>.IPVopErr,
	bne	.L504	@,
	cmp	r0, #0	@ D.36302,
	bne	.L503	@,
.L504:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp313
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp313
	movw	r7, #21183	@ tmp222,
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r6, asl #3	@ D.36320, len,
	uxtb	r0, r0	@ D.36312,
	strb	r0, [r4, r7]	@ D.36312, <variable>.MP4Vop.vop_quant
	cmp	r0, #0	@ D.36312,
	mov	r0, r5	@, tmp313
	moveq	r2, #1	@ tmp225,
	streqb	r2, [r4, r7]	@ tmp225, <variable>.MP4Vop.vop_quant
	bl	BsSkip	@
	mov	r7, #0	@ i,
.L508:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp313
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L517	@,
	add	r7, r7, #1	@ i, i,
.L513:
	mov	r0, r5	@, tmp313
	bl	BsPos	@
	cmp	r7, #15	@ i,
	bls	.L509	@,
	mov	r0, r5	@, tmp313
	movw	r5, #22009	@ tmp238,
	mov	r6, #0	@ tmp239,
	strb	r6, [r4, r5]	@ tmp239, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp242,
	movt	r2, #:upper16:g_event_report	@ tmp242,
	ldr	r3, [r2, #0]	@ g_event_report.1799, g_event_report
	cmp	r3, r6	@ g_event_report.1799,
	mov	r5, r0	@ BitUsed,
	beq	.L502	@,
	movw	ip, #22896	@ tmp243,
	mov	r2, r6	@, tmp239
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1799
.L502:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L498:
	movw	ip, #21187	@ tmp185,
	mov	r2, #18	@ tmp186,
	movw	r1, #21188	@ tmp188,
	strb	r2, [r4, ip]	@ tmp186, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21944	@ tmp191,
	movw	ip, #21940	@ tmp193,
	mov	r0, #22	@ tmp189,
	mov	lr, #352	@ tmp192,
	mov	r2, #288	@ tmp194,
	strb	r0, [r4, r1]	@ tmp189, <variable>.MP4Vop.num_mb_ingob
	str	lr, [r4, r3]	@ tmp192, <variable>.MP4Syntax.image_width
	str	r2, [r4, ip]	@ tmp194, <variable>.MP4Syntax.image_height
	b	.L501	@
.L497:
	movw	r1, #21187	@ tmp175,
	mov	r0, #9	@ tmp176,
	movw	r3, #21188	@ tmp178,
	strb	r0, [r4, r1]	@ tmp176, <variable>.MP4Vop.num_gobs_invop
	movw	ip, #21944	@ tmp181,
	movw	r1, #21940	@ tmp183,
	mov	lr, #11	@ tmp179,
	mov	r2, #176	@ tmp182,
	mov	r0, #144	@ tmp184,
	strb	lr, [r4, r3]	@ tmp179, <variable>.MP4Vop.num_mb_ingob
	str	r2, [r4, ip]	@ tmp182, <variable>.MP4Syntax.image_width
	str	r0, [r4, r1]	@ tmp184, <variable>.MP4Syntax.image_height
	b	.L501	@
.L496:
	movw	r3, #21187	@ tmp165,
	mov	lr, #6	@ tmp166,
	movw	ip, #21188	@ tmp168,
	strb	lr, [r4, r3]	@ tmp166, <variable>.MP4Vop.num_gobs_invop
	movw	r1, #21944	@ tmp171,
	movw	r3, #21940	@ tmp173,
	mov	r2, #8	@ tmp169,
	mov	r0, #128	@ tmp172,
	mov	lr, #96	@ tmp174,
	strb	r2, [r4, ip]	@ tmp169, <variable>.MP4Vop.num_mb_ingob
	str	r0, [r4, r1]	@ tmp172, <variable>.MP4Syntax.image_width
	str	lr, [r4, r3]	@ tmp174, <variable>.MP4Syntax.image_height
	b	.L501	@
.L495:
	mov	r0, r5	@, tmp313
	movw	r5, #22009	@ tmp205,
	mov	r6, #0	@ tmp206,
	strb	r6, [r4, r5]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp209,
	movt	r0, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r0, #0]	@ g_event_report.432, g_event_report
	cmp	r3, r6	@ g_event_report.432,
	beq	.L502	@,
	movw	r1, #22896	@ tmp210,
	mov	r2, r6	@, tmp206
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.432
	b	.L502	@
.L517:
	mov	r0, r5	@, tmp313
	add	r7, r7, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r6	@, D.36320
	mov	r0, r5	@, tmp313
	bgt	.L518	@,
	bl	BsSkip	@
	cmp	r7, #15	@ i,
	bls	.L508	@,
	b	.L513	@
.L516:
	mov	r2, r3	@, D.36280
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, r5]	@ tmp155, <variable>.Mp4DecParam.SlcNum
	b	.L494	@
.L509:
	movw	r2, #19936	@ tmp248,
	movw	r3, #15612	@ tmp252,
	ldr	lr, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	ldr	r1, [r4, r3]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	orr	r0, lr, #2	@ tmp251, <variable>.PicIntegrality,
	movw	lr, #21184	@ tmp256,
	str	r0, [r4, r2]	@ tmp251, <variable>.PicIntegrality
	mov	r0, r5	@, tmp313
	movw	r5, #22009	@ tmp245,
	add	ip, r1, #1	@ tmp255, <variable>.Mp4DecParam.SlcNum,
	str	ip, [r4, r3]	@ tmp255, <variable>.Mp4DecParam.SlcNum
	mov	r3, #1	@ tmp246,
	strb	r3, [r4, lr]	@ tmp246, <variable>.MP4Vop.vop_fcode_forward
	strb	r3, [r4, r5]	@ tmp246, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #15709	@ tmp280,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22024	@ tmp267,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp262, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp260, BitUsed, D.36320
	mov	r3, r0, lsr #29	@ tmp263, tmp262,
	add	r0, r5, #7	@ tmp275, BitUsed,
	add	ip, r5, r3	@ tmp264, BitUsed, tmp263
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp265, tmp264,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	mov	r1, #22016	@ tmp277,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp266, tmp263, tmp265
	add	lr, r3, ip	@ tmp271, tmp266, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp260, <variable>.bit_len
	add	r3, r1, r0, asr #3	@, tmp279, <variable>.BitsObj.phy_addr, BitUsed,
	strb	lr, [r4, #1282]	@ tmp271, <variable>.bit_offset
	str	r3, [r4, #1292]	@ tmp279, <variable>.phy_address
	beq	.L519	@,
.L510:
	mov	r3, #0	@ tmp291,
	str	r3, [r4, #1296]	@ tmp291, <variable>.phy_address
	str	r3, [r4, #1288]	@ tmp291, <variable>.bit_len
	strb	r3, [r4, #1283]	@ tmp291, <variable>.bit_offset
.L511:
	movw	lr, #19932	@ tmp310,
	movw	ip, #21176	@ tmp295,
	movw	r0, #21185	@ tmp298,
	movw	r1, #21184	@ tmp301,
	movw	r3, #21183	@ tmp304,
	ldr	r2, [r4, lr]	@ D.36362, <variable>.StreamIDNum
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r2, #0	@ D.36362,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	movw	r3, #21180	@ tmp307,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	ip, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	r0, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r1, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L520	@,
.L512:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L502	@
.L503:
	mov	r0, r5	@, tmp313
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L502	@
.L519:
	movw	r3, #15773	@ tmp282,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L510	@,
	movw	ip, #15780	@ tmp284,
	movw	lr, #15776	@ tmp289,
	ldr	r1, [r4, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r0, [r4, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, r1, asl #3	@ tmp286, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp286, <variable>.bit_len
	str	r0, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L511	@
.L520:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L512	@
.L518:
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L502	@
	.fnend
	.size	Mp4_Syntax_ShortHeader, .-Mp4_Syntax_ShortHeader
	.align	2
	.global	Mp4_Syntax_Gop
	.type	Mp4_Syntax_Gop, %function
Mp4_Syntax_Gop:
	.fnstart
.LFB1359:
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
	subs	r6, r0, #0	@ D.36243,
	bne	.L522	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	movw	r0, #22006	@ tmp148,
	strb	r6, [r5, r0]	@ D.36243, <variable>.MP4SyntaxState.gop_decode_right
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp152,
	movt	r3, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [r3, #0]	@ g_event_report.429, g_event_report
	cmp	r3, #0	@ g_event_report.429,
	mov	r4, r0	@ BitUsed,
	beq	.L523	@,
	movw	r1, #22896	@ tmp153,
	mov	r2, r6	@, D.36243
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.429
.L523:
	mov	r0, r4	@, BitUsed
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L522:
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21238	@ tmp157,
	mov	r1, #1	@,
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.closed_gov
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	movw	r3, #22006	@ tmp162,
	movw	r2, #21239	@ tmp160,
	mov	ip, #1	@ tmp163,
	strb	ip, [r5, r3]	@ tmp163, <variable>.MP4SyntaxState.gop_decode_right
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.broken_link
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	b	.L523	@
	.fnend
	.size	Mp4_Syntax_Gop, .-Mp4_Syntax_Gop
	.align	2
	.global	NextStartCode
	.type	NextStartCode, %function
NextStartCode:
	.fnstart
.LFB1357:
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
	mov	r6, r2, asl #3	@ pretmp.1838, CodeLen,
	movw	r8, #438	@ tmp176,
	bl	BsInit	@
	mov	r0, #0	@ BitUsed.1849,
	b	.L536	@
.L530:
	cmp	lr, #256	@ tmp166,
	beq	.L537	@,
.L533:
	bl	BsSkip	@
	mov	r0, r4	@, tmp174
	bl	BsPos	@
.L536:
	rsb	r2, r0, r6	@ tmp170, BitUsed.1849, pretmp.1838
	mov	r1, #32	@,
	cmp	r2, #31	@ tmp170,
	mov	r0, r4	@, tmp174
	ble	.L538	@,
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.36157,
	cmp	r3, r8	@ D.36157, tmp176
	bic	r2, r0, #1020	@ tmp152, D.36157,
	bic	ip, r0, #15	@ tmp147, D.36157,
	bic	lr, r0, #255	@ tmp166, D.36157,
	bic	r2, r2, #3	@ tmp152, tmp152,
	mov	r0, r4	@, tmp174
	beq	.L527	@,
	cmp	ip, #288	@ tmp147,
	beq	.L527	@,
	cmp	r2, #32768	@ tmp152,
	bne	.L530	@,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.is_short_header, <variable>.is_short_header
	mov	r1, #8	@,
	mov	r0, r4	@, tmp174
	cmp	r3, #2	@ <variable>.is_short_header,
	bne	.L539	@,
	ldr	r3, [r5, #744]	@ <variable>.SH_num, <variable>.SH_num
	add	ip, r3, #1	@ D.36172, <variable>.SH_num,
	str	ip, [r5, #744]	@ D.36172, <variable>.SH_num
	cmp	ip, #18	@ D.36172,
	bls	.L533	@,
	mov	lr, #196	@ tmp160,
	mov	r1, #1	@ tmp161,
	str	lr, [r7, #0]	@ tmp160,* pStartCode
	mov	r0, r4	@, tmp174
	strb	r1, [r5, #9]	@ tmp161, <variable>.is_short_header
	bl	BsPos	@
	b	.L529	@
.L527:
	mov	ip, #2	@ tmp148,
	mov	r1, #0	@ tmp150,
	strb	ip, [r5, #9]	@ tmp148, <variable>.is_short_header
	mov	r0, r4	@, tmp174
	str	r1, [r5, #744]	@ tmp150, <variable>.SH_num
	str	r3, [r7, #0]	@ D.36157,* pStartCode
	bl	BsPos	@
.L529:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L538:
	mov	ip, #197	@ tmp171,
	str	ip, [r7, #0]	@ tmp171,* pStartCode
	bl	BsPos	@
	b	.L529	@
.L537:
	str	r3, [r7, #0]	@ D.36157,* pStartCode
	mov	r0, r4	@, tmp174
	bl	BsPos	@
	b	.L529	@
.L539:
	mov	r2, #1	@ tmp155,
	mov	lr, #196	@ tmp157,
	strb	r2, [r5, #9]	@ tmp155, <variable>.is_short_header
	str	lr, [r7, #0]	@ tmp157,* pStartCode
	bl	BsPos	@
	b	.L529	@
	.fnend
	.size	NextStartCode, .-NextStartCode
	.align	2
	.global	MPEG4DEC_GetImageBuffer
	.type	MPEG4DEC_GetImageBuffer, %function
MPEG4DEC_GetImageBuffer:
	.fnstart
.LFB1384:
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
	movw	r5, #22896	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38400,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.38403,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #22528	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38403,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MPEG4DEC_GetImageBuffer, .-MPEG4DEC_GetImageBuffer
	.align	2
	.global	MP4_SetImgFormat
	.type	MP4_SetImgFormat, %function
MP4_SetImgFormat:
	.fnstart
.LFB1381:
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
	movw	r1, #22896	@ tmp136,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #51616	@ tmp138,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #21944	@ tmp140,
	ldr	r3, [r4, r2]	@ D.38222, <variable>.MP4Syntax.image_width
	cmp	r3, #0	@ D.38222,
	bne	.L550	@,
	ldr	r2, [r0, #124]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #128]	@ <variable>.image_height, <variable>.image_height
	str	r2, [r0, #132]	@ <variable>.image_width, <variable>.disp_width
	str	ip, [r0, #136]	@ <variable>.image_height, <variable>.disp_height
.L548:
	mov	lr, #8	@ tmp154,
	mov	r3, #0	@ tmp150,
	mov	ip, #2	@ tmp149,
	mov	r1, #1	@ tmp157,
	str	lr, [r0, #316]	@ tmp154, <variable>.ImageDnr.QP_U
	str	lr, [r0, #312]	@ tmp154, <variable>.ImageDnr.QP_Y
	strb	r3, [r0, #303]	@ tmp150, <variable>.ImageDnr.use_pic_qp_en
	str	ip, [r0, #308]	@ tmp149, <variable>.ImageDnr.video_standard
	strb	r1, [r0, #301]	@ tmp157, <variable>.ImageDnr.chroma_format_idc
	strb	r3, [r0, #296]	@ tmp150, <variable>.ImageDnr.pic_structure
	str	lr, [r0, #320]	@ tmp154, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L550:
	ldr	r1, [r0, #124]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, r3	@ <variable>.image_width, D.38222
	strls	r1, [r0, #132]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r0, #132]	@, D.38222, <variable>.disp_width
	movw	r3, #21940	@ tmp143,
	ldr	lr, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, lr	@ <variable>.image_height, <variable>.MP4Syntax.image_height
	strls	ip, [r0, #136]	@, <variable>.image_height, <variable>.disp_height
	strhi	lr, [r0, #136]	@, <variable>.MP4Syntax.image_height, <variable>.disp_height
	b	.L548	@
	.fnend
	.size	MP4_SetImgFormat, .-MP4_SetImgFormat
	.align	2
	.global	Mp4_ClearUsrData
	.type	Mp4_ClearUsrData, %function
Mp4_ClearUsrData:
	.fnstart
.LFB1353:
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
.LFB1380:
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
	movw	r4, #22896	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L554	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #172]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #176]	@ tmp145, <variable>.p_usrdat
.L554:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MPEG4DEC_RecycleImage, .-MPEG4DEC_RecycleImage
	.align	2
	.global	Vdm_Mem_Move
	.type	Vdm_Mem_Move, %function
Vdm_Mem_Move:
	.fnstart
.LFB1370:
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
	movw	r6, #22028	@ tmp158,
	str	r7, [r4, #1252]	@ dst, <variable>.Mp4DecParam.CurPicPhyAddr
	ldr	r3, [fp, #8]	@ ImgWidth, ImgWidth
	ldr	r1, [fp, #12]	@ ImgHeight, ImgHeight
	ldr	r2, [fp, #4]	@ src, src
	add	ip, r3, #15	@ tmp148, ImgWidth,
	ldr	r3, [r5, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
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
	add	r1, r4, #1040	@ D.37526, pCtx,
	ldr	r2, [r5, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r4, r6]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	movw	r2, #15696	@ tmp156,
	str	ip, [r4, r0]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	ldr	r0, [r3, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #1036]	@ D.37526, <variable>.pMp4DecParam
	str	r0, [r4, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
	ldr	r2, [r3, #584]	@ D.37527, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37527,
	beq	.L561	@,
	cmp	r2, #2	@ D.37527,
	beq	.L562	@,
.L558:
	mov	r0, #1	@ tmp175,
	strb	r0, [r4, #1198]	@ tmp175, <variable>.Mp4DecParam.IsNvopCopy
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L561:
	cmp	r1, #0	@ D.37526,
	beq	.L558	@,
	movw	ip, #22896	@ tmp162,
	movw	lr, #51616	@ tmp164,
	mov	r2, #0	@ tmp161,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #1036]	@ tmp161, <variable>.pMp4DecParam
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L562:
	ldr	r2, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L558	@,
	cmp	r1, #0	@ D.37526,
	beq	.L558	@,
	movw	lr, #51616	@ tmp170,
	movw	r1, #22896	@ tmp168,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #0	@ tmp167,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	str	r2, [r4, #1036]	@ tmp167, <variable>.pMp4DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r6]	@ temp.1995, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	ip, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, ip, #1	@ tmp174, <variable>.stDisParams.s32DisNums,
	str	r1, [r3, #588]	@ tmp174, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vdm_Mem_Move, .-Vdm_Mem_Move
	.align	2
	.global	MPEG4DEC_VDMPostProc
	.type	MPEG4DEC_VDMPostProc, %function
MPEG4DEC_VDMPostProc:
	.fnstart
.LFB1383:
	@ args = 0, pretend = 0, frame = 24
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14660	@,
	movw	r5, #22896	@ tmp154,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r6, #22480	@ tmp153,
	movw	r3, #51616	@ tmp156,
	str	r7, [r4, r6]	@ ErrRatio, <variable>.ErrorLevel
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	movw	sl, #51608	@ tmp160,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r9, #51600	@ tmp164,
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	str	r0, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r9]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L579	@,
	movw	ip, #22488	@ tmp168,
	movw	r8, #21880	@ tmp171,
	ldr	r2, [r4, ip]	@, <variable>.FrameNum
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	add	r1, r4, #22272	@, pCtx,
	add	r1, r1, #244	@,,
	str	r2, [r7, #160]	@ <variable>.ErrorLevel, <variable>.error_level
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	Mp4_ClearUsrData	@
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L566	@,
	movw	r2, #22028	@ tmp183,
	ldr	lr, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	ldr	r0, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	lr, r3	@ <variable>.ErrorLevel, <variable>.s32RefErrThr
	bhi	.L580	@,
.L566:
	movw	r1, #22536	@ tmp226,
	mov	lr, #0	@ tmp227,
	mov	r0, r4	@, pCtx
	str	lr, [r4, r1]	@ tmp227, <variable>.IPVopErr
	bl	MP4_SetImgFormat	@
	movw	r2, #22028	@ tmp229,
	ldr	r0, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L567	@,
	movw	r3, #21880	@ tmp231,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	ip, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L568	@,
	movw	r1, #22904	@ tmp233,
	movw	r2, #22904	@ tmp237,
	ldr	lr, [r4, r1]	@ <variable>.RefNum, <variable>.RefNum
	movw	r0, #51620	@ tmp236,
	ldr	ip, [r4, r2]	@ <variable>.RefNum, <variable>.RefNum
	cmp	lr, #1	@ <variable>.RefNum,
	movwgt	lr, #51600	@ tmp235,
	mvnle	r1, #0	@ prephitmp.2022,
	ldrgt	r1, [r4, lr]	@ prephitmp.2022, <variable>.FwdFsID
	cmp	ip, #1	@ <variable>.RefNum,
	movwgt	ip, #51604	@ tmp239,
	ldrgtb	r7, [r4, #0]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.FwdCodingType
	ldrgt	sl, [r4, ip]	@ ToQueTimePP, <variable>.FwdTimePP
	mvnle	sl, #0	@ ToQueTimePP,
	movle	r7, sl	@ ToQueCodingType, ToQueTimePP
	str	r1, [r4, r0]	@ prephitmp.2022, <variable>.ToQueFsID
.L572:
	cmn	r1, #1	@ prephitmp.2022,
	beq	.L574	@,
	movw	r6, #22896	@ tmp248,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	sl, #0	@ ToQueTimePP,
	cmpeq	r7, #4	@, ToQueCodingType,
	movne	r7, #0	@, tmp256
	moveq	r7, #1	@, tmp256
	mov	r5, r0	@ pToQueImg,
	beq	.L581	@,
	ldr	r2, [r0, #160]	@ D.38386, <variable>.error_level
	cmp	r2, #0	@ D.38386,
	beq	.L576	@,
	movw	ip, #22028	@ tmp285,
	ldr	r1, [r4, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #4]	@ D.38388, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.38386, D.38388
	bcs	.L577	@,
.L576:
	movw	r6, #22896	@ tmp286,
	movw	r7, #51620	@ tmp288,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	add	r3, r4, #22528	@, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #2	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L582	@,
.L574:
	movw	r1, #22488	@ tmp319,
	mov	r0, #0	@ D.38318,
	ldr	r2, [r4, r1]	@ <variable>.FrameNum, <variable>.FrameNum
	add	lr, r2, #1	@ tmp322, <variable>.FrameNum,
	str	lr, [r4, r1]	@ tmp322, <variable>.FrameNum
.L565:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L567:
	movw	r7, #51616	@ tmp244,
	movw	lr, #21880	@ tmp246,
	ldr	r1, [r4, r7]	@ prephitmp.2022, <variable>.CurFsID
	movw	r2, #21972	@ tmp247,
	movw	r0, #51620	@ tmp245,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldr	sl, [r4, r2]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r0]	@ prephitmp.2022, <variable>.ToQueFsID
	b	.L572	@
.L568:
	ldr	sl, [fp, #-48]	@, %sfp
	movw	r5, #51616	@ tmp240,
	ldr	r1, [r4, r5]	@ prephitmp.2022, <variable>.CurFsID
	movw	r3, #21972	@ tmp242,
	cmp	sl, #0	@,
	movw	r5, #51620	@ tmp241,
	ldr	sl, [r4, r3]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r5]	@ prephitmp.2022, <variable>.ToQueFsID
	beq	.L573	@,
	ldr	r3, [fp, #-48]	@, %sfp
	ldrd	r2, [r3, #8]	@,,
	strd	r2, [fp, #-68]	@,,
	ldrd	r8, [r7, #8]	@, pCurImg,
	strd	r8, [fp, #-60]	@,,
	cmp	r2, r8	@,
	sbcs	r9, r3, r9	@,,
	bge	.L573	@,
	strd	r2, [r7, #8]	@, pCurImg,
	mov	r7, ip	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrd	r0, [fp, #-60]	@,,
	ldr	ip, [fp, #-48]	@, %sfp
	strd	r0, [ip, #8]	@,,
	ldr	r1, [r4, r5]	@ prephitmp.2022, <variable>.ToQueFsID
	b	.L572	@
.L573:
	mov	r7, #2	@ ToQueCodingType,
	b	.L572	@
.L577:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #172]	@ tmp256, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	ip, #51620	@ tmp317,
	str	r7, [r5, #176]	@ tmp256, <variable>.p_usrdat
	mov	r2, r7	@, tmp256
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L574	@
.L582:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r8, #0	@ tmp297,
	ldr	r1, [r5, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #172]	@ tmp297, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5, #176]	@ tmp297, <variable>.p_usrdat
	mov	r2, r8	@, tmp297
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38318,
	b	.L565	@
.L581:
	ldr	r2, [r4, r6]	@ temp.2065, <variable>.ChanID
	movw	lr, #:lower16:g_VfmwChanStat	@ tmp258,
	movt	lr, #:upper16:g_VfmwChanStat	@ tmp258,
	mov	r3, #300	@ tmp261,
	mov	r7, #0	@ tmp275,
	mla	ip, r3, r2, lr	@ tmp262, tmp261, temp.2065, tmp258
	ldr	r0, [ip, #16]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	add	r1, r0, #1	@ tmp271, <variable>.u32SkipDiscard,
	str	r1, [ip, #16]	@ tmp271, <variable>.u32SkipDiscard
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #172]	@ tmp275, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #51620	@ tmp282,
	str	r7, [r5, #176]	@ tmp275, <variable>.p_usrdat
	mov	r2, r7	@, tmp275
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38318,
	b	.L565	@
.L580:
	movw	r6, #22536	@ tmp186,
	mov	r8, #1	@ tmp187,
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	mov	r7, #0	@ tmp204,
	str	r8, [r4, r6]	@ tmp187, <variable>.IPVopErr
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #184]	@ tmp204, <variable>.p_usrdat
	str	r7, [r6, #172]	@ tmp204, <variable>.p_usrdat
	mov	r2, r8	@, tmp187
	str	r7, [r6, #176]	@ tmp204, <variable>.p_usrdat
	str	r7, [r6, #180]	@ tmp204, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r9]	@, <variable>.FwdFsID
	mov	r2, r8	@, tmp187
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r9]	@ tmp204, <variable>.FwdFsID
	str	r7, [r4, sl]	@ tmp204, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	ip, #22904	@ tmp224,
	str	r7, [r4, ip]	@ tmp204, <variable>.RefNum
	mov	r1, r0	@ D.38339,
	str	r0, [r4, r9]	@ D.38339, <variable>.FwdFsID
	str	r1, [r4, sl]	@ D.38339, <variable>.BwdFsID
	mvn	r0, #0	@ D.38318,
	b	.L565	@
.L579:
	mov	r0, r7	@, pCurImg
	ldr	r3, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC33	@,
	mov	r2, r7	@,
	movt	r1, #:upper16:.LC33	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38318,
	b	.L565	@
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.global	MPEG4DEC_GetRemainImg
	.type	MPEG4DEC_GetRemainImg, %function
MPEG4DEC_GetRemainImg:
	.fnstart
.LFB1382:
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
	movw	r1, #22028	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L595	@,
	movw	r6, #22896	@ tmp143,
	movw	r5, #51608	@ tmp145,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L595	@,
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L593	@,
.L595:
	add	r5, r4, #22528	@ tmp174, pCtx,
	add	r5, r5, #16	@ tmp174, tmp174,
.L584:
	mov	r0, r5	@, tmp174
	bl	GetVoLastImageID	@
.L586:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L593:
	mov	r0, r4	@, pCtx
	add	r5, r4, #22528	@ tmp174, pCtx,
	bl	MP4_SetImgFormat	@
	add	r5, r5, #16	@ tmp174, tmp174,
	mov	ip, #1	@ tmp151,
	ldr	r1, [r7, #156]	@, <variable>.image_id
	mov	r2, ip	@, tmp151
	str	ip, [r7, #196]	@ tmp151, <variable>.last_frame
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, r8	@, display_flag
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp174
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L585	@,
	ldr	r1, [r7, #156]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG4DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp163,
	bl	FreeUsdByDec	@
	str	r8, [r7, #172]	@ tmp163, <variable>.p_usrdat
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #176]	@ tmp163, <variable>.p_usrdat
	b	.L584	@
.L585:
	ldr	r2, [r7, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L584	@,
	ldr	lr, [r7, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	lr, #31	@ <variable>.image_width,
	bls	.L584	@,
	ldr	r3, [r7, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L586	@,
	b	.L584	@
	.fnend
	.size	MPEG4DEC_GetRemainImg, .-MPEG4DEC_GetRemainImg
	.align	2
	.global	Mp4_Set_DecPar
	.type	Mp4_Set_DecPar, %function
Mp4_Set_DecPar:
	.fnstart
.LFB1374:
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
	beq	.L622	@,
	mov	r3, #22016	@ tmp208,
	movw	r5, #22012	@ tmp210,
	ldr	sl, [r6, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r2, #22020	@ tmp219,
	ldr	lr, [r6, r5]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22024	@ tmp216,
	ldr	r8, [r6, r2]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	r1, sl, #3	@ tmp213, <variable>.BitsObj.phy_addr,
	ldr	r7, [r4, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
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
	ldr	r9, [r4, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r9, [r6, #1224]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.StreamPhyAddr
	ldr	r8, [r4, #64]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r8, [r6, #1060]	@ <variable>.VirAddr, <variable>.Mp4DecParam.StreamVirAddr
	ldr	r7, [r4, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	lr, r7, #3	@ tmp227, <variable>.PhyAddr,
	mov	ip, lr, asl #3	@ tmp229, tmp227,
	str	ip, [r6, #1232]	@ tmp229, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r1, [r4, #76]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r5, [r6, #1216]	@ tmp232, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	mov	r3, r1, asl #3	@ tmp231, <variable>.LenInByte,
	str	r3, [r6, #1240]	@ tmp231, <variable>.Mp4DecParam.StreamLength
.L598:
	movw	r8, #21880	@ tmp243,
	movw	r1, #21944	@ tmp234,
	ldrb	r7, [r6, r8]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r5, #21290	@ tmp246,
	movw	r4, #21245	@ tmp249,
	movw	lr, #21887	@ tmp252,
	movw	ip, #21892	@ tmp255,
	movw	r0, #21891	@ tmp258,
	movw	sl, #21344	@ tmp261,
	movw	r3, #21940	@ tmp239,
	ldr	r2, [r6, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r1, #21888	@ tmp264,
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
	movw	sl, #21889	@ tmp267,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_fcode_backward
	ldrb	r1, [r6, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.MP4Syntax.syn_vop.vop_fcode_forward
	str	sl, [fp, #-96]	@, %sfp
	movw	sl, #21884	@ tmp270,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.intra_dc_vlc_thr
	str	sl, [fp, #-104]	@, %sfp
	movw	sl, #21295	@ tmp273,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.resync_marker_disable
	str	sl, [fp, #-108]	@, %sfp
	movw	sl, #21293	@ tmp276,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.quarter_sample
	str	sl, [fp, #-112]	@, %sfp
	movw	sl, #21882	@ tmp279,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_rounding_type
	str	sl, [fp, #-116]	@, %sfp
	movw	sl, #21886	@ tmp282,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.alternate_vertical_scan_flag
	str	sl, [fp, #-120]	@, %sfp
	movw	sl, #21885	@ tmp285,
	ldrb	sl, [r6, sl]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.top_field_first
	str	sl, [fp, #-124]	@, %sfp
	movw	sl, #1204	@ tmp233,
	strh	r9, [r6, sl]	@ movhi	@ tmp237, <variable>.Mp4DecParam.PicWidthInMb
	movw	sl, #1206	@ tmp238,
	strh	r8, [r6, sl]	@ movhi	@ tmp242, <variable>.Mp4DecParam.PicHeightInMb
	movw	sl, #21288	@ tmp320,
	strb	r7, [r6, #1041]	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.Mp4DecParam.PicQuantType
	movw	r8, #21286	@ tmp288,
	strb	r5, [r6, #1042]	@ <variable>.MP4Syntax.is_short_header, <variable>.Mp4DecParam.IsShortHeader
	strb	r4, [r6, #1043]	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.Mp4DecParam.VopQuant
	strb	lr, [r6, #1044]	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.Mp4DecParam.GobMbNum
	strb	ip, [r6, #1045]	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.Mp4DecParam.VopGobNum
	strb	r0, [r6, #1046]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.Mp4DecParam.BitsOfVopTimeIncr
	strb	r1, [r6, #1047]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.Mp4DecParam.FwdFcode
	ldr	r0, [fp, #-96]	@, %sfp
	strb	r0, [r6, #1048]	@, <variable>.Mp4DecParam.BwdFcode
	movw	r0, #21976	@ tmp291,
	ldr	r9, [fp, #-104]	@, %sfp
	strb	r9, [r6, #1049]	@, <variable>.Mp4DecParam.intra_dc_vlc_thr
	movw	r9, #21972	@ tmp293,
	ldr	r7, [fp, #-108]	@, %sfp
	strb	r7, [r6, #1050]	@, <variable>.Mp4DecParam.resync_marker_disable
	ldr	r5, [fp, #-112]	@, %sfp
	ldr	r7, [r6, r9]	@, <variable>.MP4Syntax.time_pp
	movw	r9, #21251	@ tmp310,
	strb	r5, [r6, #1051]	@, <variable>.Mp4DecParam.QuarterSample
	mov	r5, #21248	@ tmp295,
	ldr	r4, [fp, #-116]	@, %sfp
	strb	r4, [r6, #1052]	@, <variable>.Mp4DecParam.vop_rounding_type
	movw	r4, #21247	@ tmp298,
	ldr	lr, [fp, #-120]	@, %sfp
	strb	lr, [r6, #1053]	@, <variable>.Mp4DecParam.alternate_vertical_scan
	movw	lr, #21246	@ tmp301,
	ldr	ip, [fp, #-100]	@, %sfp
	strb	ip, [r6, #1040]	@, <variable>.Mp4DecParam.PicCodingType
	movw	ip, #21249	@ tmp304,
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
	movw	r0, #21250	@ tmp307,
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
	beq	.L623	@,
.L599:
	movw	ip, #21301	@ tmp351,
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
.L600:
	movw	r4, #22896	@ tmp371,
	movw	lr, #51616	@ tmp373,
	ldr	r1, [r6, lr]	@, <variable>.CurFsID
	movw	r8, #51600	@ tmp377,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, r8]	@, <variable>.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #51608	@ tmp381,
	ldr	r1, [r6, r3]	@, <variable>.BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	ip, [r7, #440]	@ D.37843, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.37843,
	ldreq	r5, [r7, #444]	@ prephitmp.2201, <variable>.pstDispOutFs
	ldreq	r4, [r7, #448]	@ prephitmp.2138, <variable>.pstTfOutFs
	beq	.L602	@,
	ldr	r4, [r7, #448]	@ prephitmp.2138, <variable>.pstTfOutFs
	cmp	r4, #0	@ prephitmp.2138,
	ldreq	r5, [r7, #444]	@ prephitmp.2201, <variable>.pstDispOutFs
	beq	.L602	@,
	ldr	r5, [r7, #444]	@ prephitmp.2201, <variable>.pstDispOutFs
	cmp	r5, #0	@ prephitmp.2201,
	beq	.L602	@,
	ldr	ip, [r7, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	ip, [r6, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	ldr	r4, [r0, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r4, [r6, #1268]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.BwdPmvPhyAddr
	ldr	r5, [r0, #440]	@ D.37854, <variable>.pstDecodeFs
	cmp	r5, #0	@ D.37854,
	ldreq	r5, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [r5, #12]	@ iftmp.548, <variable>.PhyAddr
	mov	r5, #15616	@ tmp397,
	str	r1, [r6, #1260]	@ iftmp.548, <variable>.Mp4DecParam.BwdRefPicPhyAddr
	ldr	lr, [r8, #440]	@ D.37861, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.37861,
	ldreq	lr, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [lr, #12]	@ iftmp.549, <variable>.PhyAddr
	str	r3, [r6, #1256]	@ iftmp.549, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r3, #15620	@ tmp399,
	ldr	r2, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r6, #21248	@ ivtmp.2156, pCtx,
	str	ip, [r6, #1252]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.CurPicPhyAddr
	ldr	r4, [r0, #448]	@ D.37868, <variable>.pstTfOutFs
	cmp	r4, #0	@ D.37868,
	ldreq	r4, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r1, [r4, #12]	@ iftmp.550, <variable>.PhyAddr
	str	r1, [r6, r5]	@ iftmp.550, <variable>.Mp4DecParam.TfBwdPhyAddr
	movw	r5, #15624	@ tmp400,
	ldr	lr, [r8, #448]	@ D.37875, <variable>.pstTfOutFs
	movw	r8, #15628	@ tmp403,
	cmp	lr, #0	@ D.37875,
	ldreq	lr, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r0, [lr, #12]	@ iftmp.551, <variable>.PhyAddr
	str	r0, [r6, r3]	@ iftmp.551, <variable>.Mp4DecParam.TfFwdPhyAddr
	add	r3, r2, #116	@ ivtmp.2156, ivtmp.2156,
	ldr	ip, [r7, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	mov	r2, r6	@ ivtmp.2160, pCtx
	mov	r0, #0	@ i,
	ldr	r4, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [r6, r5]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.TfCurPhyAddr
	movw	r5, #15640	@ tmp406,
	ldr	r1, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r6, r8]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.DispFramePhyAddr
	ldr	ip, [r7, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	str	r4, [r6, r5]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
.L614:
	add	r1, r3, #4	@ tmp426, ivtmp.2156,
	ldr	r5, [r3, #4]	@ tmp431, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	ldr	r8, [r3, #0]	@ tmp410, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	add	r0, r0, #2	@ i, i,
	ldr	r7, [r3, #256]	@ tmp412, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	add	lr, r2, #1	@ tmp427, ivtmp.2160,
	ldr	r4, [r1, #256]	@ tmp432, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	cmp	r0, #64	@ i,
	strb	r8, [r2, #1064]	@ tmp410, <variable>.Mp4DecParam.IntraQuantTab
	add	r3, r1, #4	@ ivtmp.2156, tmp426,
	strb	r7, [r2, #1128]	@ tmp412, <variable>.Mp4DecParam.NonintraQuantTab
	add	r2, lr, #1	@ ivtmp.2160, tmp427,
	strb	r5, [lr, #1064]	@ tmp431, <variable>.Mp4DecParam.IntraQuantTab
	strb	r4, [lr, #1128]	@ tmp432, <variable>.Mp4DecParam.NonintraQuantTab
	bne	.L614	@,
	movw	ip, #1206	@ tmp415,
	movw	r3, #1204	@ tmp417,
	ldrh	r0, [r6, ip]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	movw	r2, #22028	@ tmp422,
	ldrh	r1, [r6, r3]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	movw	lr, #21912	@ tmp414,
	ldr	r3, [r6, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #15696	@ tmp420,
	mul	ip, r1, r0	@ tmp419, <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicHeightInMb
	str	ip, [r6, lr]	@ tmp419, <variable>.MP4Syntax.syn_vop.mb_total
	ldr	r0, [r3, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r6, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
.L615:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L622:
	mov	r0, #22016	@ tmp182,
	movw	r2, #22012	@ tmp187,
	ldr	r1, [r6, r0]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	sl, #22020	@ tmp196,
	ldr	r8, [r6, r2]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22024	@ tmp193,
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
	b	.L598	@
.L623:
	ldr	r2, [fp, #-100]	@, %sfp
	cmp	r2, #3	@,
	bne	.L599	@,
	add	sl, r6, #20992	@, pCtx,
	sub	r1, fp, #92	@,,
	add	r0, sl, #244	@,,
	movw	r5, #21301	@ tmp330,
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
	sub	r3, r3, #4	@ tmp332, tmp332,
	str	r8, [r6, r3]	@ gmc.num_wp, <variable>.Mp4DecParam.sprite_warping_points
	add	r8, r3, #8	@ tmp334, tmp334,
	add	r3, r8, #4	@ tmp336, tmp336,
	str	r7, [r6, r8]	@ gmc.dU, <variable>.Mp4DecParam.dU
	add	r8, r3, #4	@ tmp338, tmp338,
	add	r7, r8, #4	@ tmp340, tmp340,
	str	r5, [r6, r3]	@ gmc.dU, <variable>.Mp4DecParam.dU
	str	r4, [r6, r8]	@ gmc.dV, <variable>.Mp4DecParam.dV
	add	r4, r7, #4	@ tmp342, tmp342,
	str	lr, [r6, r7]	@ gmc.dV, <variable>.Mp4DecParam.dV
	add	lr, r4, #4	@ tmp344, tmp344,
	str	ip, [r6, r4]	@ gmc.Uo, <variable>.Mp4DecParam.Uo
	add	ip, lr, #4	@ tmp346, tmp346,
	str	r0, [r6, lr]	@ gmc.Vo, <variable>.Mp4DecParam.Vo
	add	r0, ip, #4	@ tmp348, tmp348,
	str	r1, [r6, ip]	@ gmc.Uco, <variable>.Mp4DecParam.Uco
	str	r2, [r6, r0]	@ gmc.Vco, <variable>.Mp4DecParam.Vco
	b	.L600	@
.L602:
	movw	r0, #51608	@ tmp388,
	movw	r3, #51600	@ tmp384,
	ldr	lr, [r6, r0]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r1, #51616	@ tmp386,
	ldr	r2, [r6, r3]	@ <variable>.FwdFsID, <variable>.FwdFsID
	mov	r0, #0	@,
	ldr	r3, [r6, r1]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	ip, [sp, #4]	@ D.37843,
	str	lr, [sp, #0]	@ <variable>.BwdFsID,
	str	r4, [sp, #8]	@ prephitmp.2138,
	str	r5, [sp, #12]	@ prephitmp.2201,
	bl	dprint_vfmw	@
	b	.L615	@
	.fnend
	.size	Mp4_Set_DecPar, .-Mp4_Set_DecPar
	.align	2
	.global	MPEG4DEC_Init
	.type	MPEG4DEC_Init, %function
MPEG4DEC_Init:
	.fnstart
.LFB1377:
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
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pCtx,
	cmpne	r5, #0	@, pstExtraData,
	beq	.L625	@,
	ldr	r3, [r5, #444]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r3, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L632	@,
.L626:
	movw	r6, #22888	@ tmp170,
	movw	r1, #51632	@,
	ldr	r7, [r4, r6]	@ D.37958, <variable>.ImageQue.ResetMagicWord
	mov	r0, r4	@, pCtx
	bl	__memzero	@
	add	r3, r4, #22528	@, pCtx,
	add	r0, r3, #16	@,,
	str	r7, [r4, r6]	@ D.37958, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #22028	@ tmp174,
	str	r5, [r4, r0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r2, #22896	@ tmp175,
	cmn	r0, #1	@ D.37966,
	str	r0, [r4, r2]	@ D.37966, <variable>.ChanID
	beq	.L633	@,
	mov	r0, r4	@, pCtx
	bl	Global_Data_Init	@
	subs	r6, r0, #0	@ D.37971,
	beq	.L634	@,
.L625:
	mvn	r0, #0	@ D.37954,
.L628:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L634:
	movw	r1, #22512	@ tmp179,
	movw	ip, #22484	@ tmp177,
	str	r6, [r4, r1]	@ D.37971, <variable>.PPicFound
	mov	lr, #1	@ tmp178,
	mov	r0, #2	@,
	str	lr, [r4, ip]	@ tmp178, <variable>.InitComplete
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	ldr	r5, [r5, #444]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r5, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L629	@,
	mov	r0, r6	@ D.37954, D.37971
	b	.L628	@
.L632:
	add	r6, r4, #20992	@, pCtx,
	mov	r2, #768	@,
	add	r1, r6, #244	@,,
	sub	r0, fp, #804	@,,
	bl	memcpy	@
	add	r1, r4, #19712	@ tmp158, pCtx,
	add	lr, r1, #232	@ tmp158, tmp158,
	sub	ip, fp, #788	@ tmp156,,
	sub	r6, fp, #36	@ tmp166,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp208,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp156,,,,
	ldmia	lr, {r0, r1}	@ tmp208,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp209,,
	add	r1, r4, #19968	@, pCtx,
	sub	r0, fp, #764	@,,
	bl	memcpy	@
	add	r0, r4, #21760	@ tmp167, pCtx,
	add	r7, r0, #244	@ tmp167, tmp167,
	ldmia	r7, {r0, r1}	@ tmp167,,
	mov	r2, r1, lsr #16	@ tmp168,,
	strb	r2, [r6, #6]	@ tmp168, MP4SyntaxState
	str	r0, [fp, #-36]	@, MP4SyntaxState
	strh	r1, [r6, #4]	@ movhi	@, MP4SyntaxState
	b	.L626	@
.L633:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37954,
	b	.L628	@
.L629:
	add	r2, r4, #20992	@, pCtx,
	sub	r1, fp, #804	@,,
	add	r0, r2, #244	@,,
	mov	r2, #768	@,
	bl	memcpy	@
	sub	lr, fp, #788	@ tmp191,,
	add	ip, r4, #19712	@ tmp190, pCtx,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp212,,,,
	add	ip, ip, #232	@ tmp190, tmp190,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	lr, {r0, r1}	@ tmp212,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp213,,
	sub	r1, fp, #764	@,,
	add	r0, r4, #19968	@, pCtx,
	bl	memcpy	@
	add	r0, r4, #21760	@, pCtx,
	mov	r2, #7	@,
	add	r0, r0, #244	@,,
	sub	r1, fp, #36	@,,
	bl	memcpy	@
	movw	r2, #51625	@ tmp204,
	strb	r5, [r4, r2]	@ <variable>.s32KeepSPSPPS, <variable>.SeekReset
	mov	r0, r6	@ D.37954, D.37971
	b	.L628	@
	.fnend
	.size	MPEG4DEC_Init, .-MPEG4DEC_Init
	.global	__aeabi_uidiv
	.align	2
	.global	Mp4_RecordFrameAtr
	.type	Mp4_RecordFrameAtr, %function
Mp4_RecordFrameAtr:
	.fnstart
.LFB1372:
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
	movw	r3, #21279	@ tmp150,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.37572, <variable>.MP4Syntax.syn_vol.aspect_ratio_info
	mov	r6, r0	@ pCtx, pCtx
	mov	r4, r1	@ id, id
	cmp	r3, #15	@ D.37572,
	beq	.L646	@,
	sub	r1, r3, #2	@ tmp173, D.37572,
	uxtb	ip, r1	@ tmp174, tmp173
	cmp	ip, #1	@ tmp174,
	bls	.L640	@,
	sub	lr, r3, #4	@ tmp175, D.37572,
	uxtb	r2, lr	@ tmp176, tmp175
	cmp	r2, #1	@ tmp176,
	bls	.L641	@,
	cmp	r3, #1	@ D.37572,
	moveq	r7, #5	@ aspect_ratio,
	beq	.L642	@,
.L637:
	mov	r7, #0	@ aspect_ratio,
.L642:
	mov	r1, r4	@, id
	movw	r4, #22896	@ tmp177,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	beq	.L645	@,
	movw	r1, #21944	@ tmp179,
	movw	r3, #21940	@ tmp181,
	ldr	ip, [r6, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #22028	@ tmp184,
	mov	r1, r7	@, aspect_ratio
	str	ip, [r4, #124]	@ <variable>.MP4Syntax.image_width, <variable>.image_width
	ldr	sl, [r6, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	sl, [r4, #128]	@ <variable>.MP4Syntax.image_height, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r8, [r6, r9]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [r8, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L647	@,
.L644:
	movw	r0, #21944	@ tmp199,
	movw	r8, #21940	@ tmp201,
	ldr	r5, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #21880	@ tmp214,
	movw	r3, #22028	@ tmp249,
	str	r5, [r4, #132]	@ <variable>.MP4Syntax.image_width, <variable>.disp_width
	mov	r5, #0	@ tmp239,
	ldr	r1, [r6, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	r1, [r4, #136]	@ <variable>.MP4Syntax.image_height, <variable>.disp_height
	movw	r1, #:lower16:.LC41	@,
	ldr	r2, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movt	r1, #:upper16:.LC41	@,
	mov	r0, #29	@,
	mov	ip, r2, lsr #1	@ tmp205, <variable>.MP4Syntax.image_width,
	str	ip, [r4, #140]	@ tmp205, <variable>.disp_center_x
	ldr	sl, [r6, r8]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r2, #22476	@ tmp209,
	movw	r8, #22472	@ tmp211,
	mov	lr, sl, lsr #1	@ tmp208, <variable>.MP4Syntax.image_height,
	str	lr, [r4, #144]	@ tmp208, <variable>.disp_center_y
	ldr	ip, [r6, r2]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	movw	lr, #21885	@ tmp217,
	movw	r2, #21257	@ tmp222,
	str	ip, [r4, #168]	@ <variable>.ImgCntOfSeq, <variable>.seq_img_cnt
	movw	ip, #21286	@ tmp227,
	ldr	sl, [r6, r8]	@ <variable>.SeqCnt, <variable>.SeqCnt
	str	sl, [r4, #164]	@ <variable>.SeqCnt, <variable>.seq_cnt
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
	str	r2, [r4, #120]	@ tmp232, <variable>.format
	ldrb	ip, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r2, #22516	@ tmp240,
	and	lr, ip, #3	@ tmp235, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	lr, [r4, #112]	@ tmp235, <variable>.top_fld_type
	ldrb	r8, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	ip, #22520	@ tmp242,
	str	r5, [r4, #108]	@ tmp239, <variable>.is_fld_save
	and	r7, r8, #3	@ tmp238, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	r7, [r4, #116]	@ tmp238, <variable>.bottom_fld_type
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	movw	r8, #22524	@ tmp244,
	mov	r2, #22528	@ tmp246,
	str	r9, [r4, #172]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	lr, [r6, ip]	@ <variable>.UsrData, <variable>.UsrData
	str	lr, [r4, #176]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r7, [r6, r8]	@ <variable>.UsrData, <variable>.UsrData
	str	r7, [r4, #180]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	str	r9, [r4, #184]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	ip, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r8, [r4, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r4, #16]	@ <variable>.Usertag, pImg,
	ldr	r7, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [r7, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	mvn	r7, #0	@,
	strd	r8, [r4, #24]	@ <variable>.DispTime, pImg,
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r6, #0	@ tmp259,
	strd	r6, [r2, #56]	@ tmp259, <variable>.pstExtraData,
	ldrd	r6, [r4, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r4, #8]	@ <variable>.PTS, pImg,
	strd	r6, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r3, #8	@ tmp268,
	mov	r1, #2	@ tmp263,
	mov	ip, #1	@ tmp271,
	strb	r5, [r4, #303]	@ tmp239, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #316]	@ tmp268, <variable>.ImageDnr.QP_U
	str	r1, [r4, #308]	@ tmp263, <variable>.ImageDnr.video_standard
	strb	ip, [r4, #301]	@ tmp271, <variable>.ImageDnr.chroma_format_idc
	strb	r5, [r4, #296]	@ tmp239, <variable>.ImageDnr.pic_structure
	str	r3, [r4, #312]	@ tmp268, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #320]	@ tmp268, <variable>.ImageDnr.QP_V
.L645:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L646:
	movw	r0, #21308	@ tmp151,
	movw	r2, #21312	@ tmp152,
	ldr	r3, [r6, r0]	@ sar_width, <variable>.MP4Syntax.syn_vol.par_width
	ldr	r2, [r6, r2]	@ D.37578, <variable>.MP4Syntax.syn_vol.par_height
	cmp	r3, #0	@ sar_width,
	cmpne	r2, #0	@, D.37578,
	beq	.L637	@,
	movw	r7, #21360	@ tmp160,
	ldr	r1, [r6, r7]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_height, <variable>.MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r1, r2	@ D.37587, <variable>.MP4Syntax.syn_vol.video_object_layer_height, D.37578
	cmp	r1, #0	@ D.37587,
	beq	.L637	@,
	movw	r0, #21356	@ tmp163,
	mov	r7, r3, asl #10	@ tmp162, sar_width,
	ldr	lr, [r6, r0]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_width, <variable>.MP4Syntax.syn_vol.video_object_layer_width
	mul	r0, lr, r7	@, <variable>.MP4Syntax.syn_vol.video_object_layer_width, tmp162
	bl	__aeabi_uidiv	@
	sub	r2, r0, #1360	@ iftmp.535, true_dar,
	sub	r1, r0, #1808	@ iftmp.536, true_dar,
	sub	ip, r2, #5	@ iftmp.535, iftmp.535,
	sub	r3, r1, #12	@ iftmp.536, iftmp.536,
	cmp	ip, #0	@ iftmp.535,
	rsblt	ip, r0, #1360	@ tmp170, true_dar,
	addlt	ip, ip, #5	@ iftmp.535, tmp170,
	cmp	r3, #0	@ iftmp.536,
	rsblt	r3, r0, #1808	@ tmp172, true_dar,
	addlt	r3, r3, #12	@ iftmp.536, tmp172,
	cmp	ip, r3	@ iftmp.535, iftmp.536
	bge	.L641	@,
.L640:
	mov	r7, #1	@ aspect_ratio,
	b	.L642	@
.L641:
	mov	r7, #2	@ aspect_ratio,
	b	.L642	@
.L647:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r5, [r4, #152]	@ D.37633, <variable>.image_stride
	add	lr, r0, #15	@ tmp187, <variable>.image_height,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	sl, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	r2, lr, lsr #4	@ tmp189, tmp187,
	mov	r1, r5, asl #4	@ tmp186, D.37633,
	add	ip, r3, r5	@ tmp194, <variable>.luma_phy_addr, D.37633
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r9, r2, r1	@ D.37639, tmp189, tmp186
	str	ip, [r4, #76]	@ tmp194, <variable>.btm_luma_phy_addr
	str	sl, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r9, r3	@ tmp191, D.37639, <variable>.luma_phy_addr
	add	r8, sl, r9	@ tmp193, <variable>.luma_vir_addr, D.37639
	add	r0, lr, r5	@ tmp195, tmp191, D.37633
	str	r8, [r4, #36]	@ tmp193, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp195, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp191
	str	lr, [r4, #88]	@ tmp191, <variable>.chrom_phy_addr
	str	lr, [r4, #72]	@ tmp191, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r2, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L644	@
	.fnend
	.size	Mp4_RecordFrameAtr, .-Mp4_RecordFrameAtr
	.align	2
	.global	Mp4_Frame_Atr
	.type	Mp4_Frame_Atr, %function
Mp4_Frame_Atr:
	.fnstart
.LFB1373:
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
	movw	r0, #21880	@ tmp140,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.37696, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ D.37696,
	strb	r3, [r4, #2]	@ D.37696, <variable>.CurCodingType
	beq	.L654	@,
.L649:
	movw	lr, #22896	@ tmp157,
	mov	r1, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	ip, #51616	@ tmp159,
	cmp	r0, #0	@ D.37703,
	str	r0, [r4, ip]	@ D.37703, <variable>.CurFsID
	blt	.L650	@,
	movw	r3, #22900	@ tmp160,
	ldr	r1, [r4, r3]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, #0	@ <variable>.FspPartitionOK,
	bne	.L651	@,
.L650:
	movw	r5, #22896	@ tmp163,
	movw	r8, #51608	@ tmp165,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	mov	r7, r0	@ tmp179,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #51600	@ tmp189,
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #184]	@ tmp179, <variable>.p_usrdat
	str	r7, [r6, #172]	@ tmp179, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #176]	@ tmp179, <variable>.p_usrdat
	str	r7, [r6, #180]	@ tmp179, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, sl]	@ tmp179, <variable>.FwdFsID
	str	r7, [r4, r8]	@ tmp179, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	add	ip, r4, #22528	@, pCtx,
	movw	r2, #22904	@ tmp199,
	add	r1, ip, #16	@,,
	str	r7, [r4, r2]	@ tmp179, <variable>.RefNum
	str	r0, [r4, sl]	@ D.37717, <variable>.FwdFsID
	str	r0, [r4, r8]	@ D.37717, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L651:
	mov	r1, r0	@, D.37703
	mov	r0, r4	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	movw	r1, #22480	@ tmp205,
	mov	r0, #0	@ tmp206,
	str	r0, [r4, r1]	@ tmp206, <variable>.ErrorLevel
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L654:
	movw	r2, #22896	@ tmp142,
	movw	lr, #:lower16:g_VfmwChanStat	@ tmp143,
	ldr	r0, [r4, r2]	@ D.37700, <variable>.ChanID
	movt	lr, #:upper16:g_VfmwChanStat	@ tmp143,
	mov	r3, #300	@ tmp146,
	mla	ip, r3, r0, lr	@ tmp147, tmp146, D.37700, tmp143
	ldr	r1, [ip, #12]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	add	r2, r1, #1	@ tmp156, <variable>.u32SkipFind,
	str	r2, [ip, #12]	@ tmp156, <variable>.u32SkipFind
	b	.L649	@
	.fnend
	.size	Mp4_Frame_Atr, .-Mp4_Frame_Atr
	.align	2
	.global	Frame_Init
	.type	Frame_Init, %function
Frame_Init:
	.fnstart
.LFB1367:
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
	movw	r3, #22028	@ tmp164,
	ldr	r5, [r0, r3]	@ D.37403, <variable>.pstExtraData
	mov	r4, r0	@ pCtx, pCtx
	mov	r3, r2	@ PicHeight, PicHeight
	ldr	r0, [r5, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L656	@,
	ldr	r2, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L683	@,
.L657:
	mov	r8, #2	@,
	mov	r7, r1	@ PicWidth.2334, PicWidth
	str	r8, [fp, #-92]	@, %sfp
	mov	r8, #5	@ DispFsNum,
	mov	r6, r3	@ PicHeight.2335, PicHeight
	mov	r3, #3	@,
	str	r3, [fp, #-88]	@, %sfp
.L665:
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp174,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp174,
	ldr	ip, [r1, #28]	@ D.37436, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37436,
	beq	.L671	@,
	movw	r0, #22896	@ tmp180,
	ldr	r1, [r5, #28]	@ <variable>.s32SyntaxMemSize, <variable>.s32SyntaxMemSize
	ldr	r9, [r4, r0]	@ <variable>.ChanID, <variable>.ChanID
	mov	lr, #2	@ tmp177,
	ldr	r0, [r5, #24]	@ <variable>.s32SyntaxMemAddr, <variable>.s32SyntaxMemAddr
	mov	r2, #40	@ tmp178,
	mov	r5, #0	@ tmp179,
	str	r2, [sp, #4]	@ tmp178,
	str	r9, [sp, #12]	@ <variable>.ChanID,
	mov	r2, r7	@, PicWidth.2334
	str	r5, [sp, #8]	@ tmp179,
	mov	r3, r6	@, PicHeight.2335
	str	lr, [sp, #0]	@ tmp177,
	movw	r5, #:lower16:.LANCHOR2	@ tmp182,
	movt	r5, #:upper16:.LANCHOR2	@ tmp182,
	str	r5, [sp, #16]	@ tmp182,
	blx	ip	@ D.37436
	subs	r9, r0, #0	@ D.37443,
	bne	.L671	@,
	ldr	r2, [r5, #616]	@ D.37447, MemArrange.ValidPMVNum
	cmp	r2, #1	@ D.37447,
	ldrle	r3, [r5, #268]	@ prephitmp.2323, MemArrange.ValidFrameNum
	ble	.L674	@,
	ldr	r3, [r5, #268]	@ prephitmp.2323, MemArrange.ValidFrameNum
	cmp	r3, #2	@ prephitmp.2323,
	ble	.L674	@,
	ldr	lr, [r5, #8]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	movw	r0, #22048	@ tmp188,
	sub	sl, fp, #84	@ tmp226,,
	str	lr, [r4, r0]	@ MemArrange.FrameAddr, <variable>.VdmMemAllot.frame_phy_addr
	ldr	r0, [r5, #8]	@, MemArrange.FrameAddr
	bl	MEM_Phy2Vir	@
	movw	ip, #22036	@ tmp193,
	mov	r1, #36	@,
	str	r0, [r4, ip]	@, <variable>.VdmMemAllot.frame_vir_addr
	mov	r0, sl	@, tmp226
	bl	__memzero	@
	movw	r2, #22028	@ tmp196,
	ldr	r5, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r5, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [fp, #-56]	@ PicWidth.2334, FspInstCfg.s32DispFsWidth
	strb	r9, [fp, #-82]	@ D.37443, FspInstCfg.s32RprEnable
	strb	r1, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [fp, #-72]	@ PicWidth.2334, FspInstCfg.s32DecFsWidth
	movw	r7, #22028	@ tmp207,
	str	r6, [fp, #-52]	@ PicHeight.2335, FspInstCfg.s32DispFsHeight
	str	r6, [fp, #-68]	@ PicHeight.2335, FspInstCfg.s32DecFsHeight
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #24	@ <variable>.eCapLevel,
	ldrne	r3, [fp, #-88]	@, %sfp
	uxtbne	r9, r3	@ iftmp.530,
	strb	r9, [fp, #-79]	@ iftmp.530, FspInstCfg.s32ExpectedDecFsNum
	ldr	r6, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r7, #0	@ tmp210,
	strb	r8, [fp, #-77]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	ldr	ip, [r6, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movw	r6, #22896	@ tmp212,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #24	@ <variable>.eCapLevel,
	strb	r7, [fp, #-80]	@ tmp210, FspInstCfg.s32UserDec
	ldrne	r1, [fp, #-92]	@, %sfp
	moveq	ip, #1	@ iftmp.531,
	uxtbne	ip, r1	@ iftmp.531,
	mov	r1, sl	@, tmp226
	strb	ip, [fp, #-76]	@ iftmp.531, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.37471,
	bne	.L680	@,
	movw	r3, #22028	@ tmp215,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@ temp.2353, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r2, [r1, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	movweq	r3, #22900	@ tmp223,
	moveq	r2, #1	@ tmp224,
	streq	r2, [r4, r3]	@ tmp224, <variable>.FspPartitionOK
	bne	.L684	@,
.L661:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L656:
	ldr	lr, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L657	@,
	ldr	lr, [r5, #472]	@ temp.2338, <variable>.stChanOption.s32MaxWidth
	cmp	r1, lr	@ PicWidth, temp.2338
	ldrhi	ip, [r5, #476]	@ prephitmp.2341, <variable>.stChanOption.s32MaxHeight
	bhi	.L667	@,
	ldr	ip, [r5, #476]	@ prephitmp.2341, <variable>.stChanOption.s32MaxHeight
	cmp	r2, ip	@ PicHeight, prephitmp.2341
	bhi	.L667	@,
	ldr	r6, [r5, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r5, #492]	@ temp.2339, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r6, #1	@,
	streq	r6, [fp, #-92]	@, %sfp
	beq	.L670	@,
	add	r7, r9, #1	@ PmvNum.2342, temp.2339,
	cmp	r7, #17	@ PmvNum.2342,
	movge	r7, #17	@ PmvNum.2342,
	str	r7, [fp, #-92]	@ PmvNum.2342, %sfp
.L670:
	add	r9, r9, #2	@, temp.2339,
	mov	r6, r3	@ PicHeight.2335, PicHeight
	str	r9, [fp, #-88]	@, %sfp
	mov	r7, r1	@ PicWidth.2334, PicWidth
	ldr	r8, [r5, #516]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L665	@
.L683:
	ldr	ip, [r5, #472]	@ D.37410, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r1	@ D.37410, PicWidth
	mov	r7, ip	@ PicWidth.2334, D.37410
	ldrcc	r8, [r5, #476]	@ prephitmp.2344, <variable>.stChanOption.s32MaxHeight
	bcc	.L659	@,
	ldr	r6, [r5, #476]	@ PicHeight.2335, <variable>.stChanOption.s32MaxHeight
	cmp	r6, r3	@ PicHeight.2335, PicHeight
	mov	r8, r6	@ prephitmp.2344, PicHeight.2335
	bcc	.L659	@,
	movw	ip, #22900	@ tmp168,
	ldr	r1, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, #1	@ <variable>.FspPartitionOK,
	beq	.L661	@,
	ldr	r0, [r5, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r5, #492]	@ D.37420, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r2, #1	@,
	streq	r2, [fp, #-92]	@, %sfp
	beq	.L664	@,
	add	r2, r9, #1	@ PmvNum.2336, D.37420,
	cmp	r2, #17	@ PmvNum.2336,
	movge	r2, #17	@ PmvNum.2336,
	str	r2, [fp, #-92]	@ PmvNum.2336, %sfp
.L664:
	add	r9, r9, #2	@, D.37420,
	str	r9, [fp, #-88]	@, %sfp
	ldr	r8, [r5, #516]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L665	@
.L674:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
.L671:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
.L680:
	mov	r0, r7	@, tmp210
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
.L667:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	lr, [sp, #0]	@ temp.2338,
	str	ip, [sp, #4]	@ prephitmp.2341,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
.L684:
	mov	r0, r5	@, D.37471
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
.L659:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ D.37410,
	str	r8, [sp, #4]	@ prephitmp.2344,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37416,
	b	.L661	@
	.fnend
	.size	Frame_Init, .-Frame_Init
	.align	2
	.global	Mp4_GetUserDataBuf
	.type	Mp4_GetUserDataBuf, %function
Mp4_GetUserDataBuf:
	.fnstart
.LFB1352:
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
	ldr	r3, [r1, r2, asl #2]	@ prephitmp.2370,* pUserData
	cmp	r3, #0	@ prephitmp.2370,
	beq	.L688	@,
.L686:
	mov	r0, r3	@, prephitmp.2370
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L688:
	str	r1, [fp, #-16]	@,
	str	r2, [fp, #-20]	@,
	bl	GetUsd	@
	ldr	r2, [fp, #-20]	@,
	ldr	r1, [fp, #-16]	@,
	cmp	r0, #0	@ prephitmp.2370,
	mov	r3, r0	@ prephitmp.2370,
	str	r0, [r1, r2, asl #2]	@ prephitmp.2370,* pUserData
	addne	r0, r2, #4	@ tmp140, UserID,
	strne	r0, [r3, #1036]	@ tmp140, <variable>.from
	ldrne	r3, [r1, r2, asl #2]	@ prephitmp.2370,* pUserData
	b	.L686	@
	.fnend
	.size	Mp4_GetUserDataBuf, .-Mp4_GetUserDataBuf
	.align	2
	.global	Mp4_Syntax_UserData
	.type	Mp4_Syntax_UserData, %function
Mp4_Syntax_UserData:
	.fnstart
.LFB1361:
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
	mov	r6, #0	@ tmp158,
	mov	r4, r0	@ pCtx, pCtx
	str	r6, [fp, #-52]	@ tmp158, ver
	mvngt	r3, #255	@ monitor,
	str	r6, [fp, #-56]	@ tmp158, build
	movgt	r5, #4	@ i,
	str	r6, [fp, #-60]	@ tmp158, ver2
	movwgt	ip, #1027	@ tmp323,
	str	r6, [fp, #-64]	@ tmp158, ver3
	strb	r6, [fp, #-45]	@ tmp158, last
	bgt	.L695	@,
	b	.L732	@
.L723:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36393,* i
	orr	r3, r3, r0	@ D.36395, monitor, D.36393
	mov	r3, r3, asl #8	@ monitor, D.36395,
	cmp	r3, #256	@ monitor,
	beq	.L725	@,
	add	r5, r5, #1	@ i, i,
	strb	r0, [r7, #3]	@ D.36393, <variable>.TmpUserData
	cmp	r2, r5	@ len, i
	add	r6, r6, #1	@ userdata_len, userdata_len,
	ble	.L693	@,
.L695:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36393,* i
	add	r7, r4, r6	@ tmp168, pCtx, userdata_len
	orr	r3, r3, r0	@ D.36395, monitor, D.36393
	mov	r3, r3, asl #8	@ monitor, D.36395,
	cmp	r3, #256	@ monitor,
	beq	.L725	@,
	add	r6, r6, #1	@ userdata_len, userdata_len,
	strb	r0, [r7, #3]	@ D.36393, <variable>.TmpUserData
	cmp	r6, ip	@ userdata_len, tmp323
	add	r7, r4, r6	@ tmp330, pCtx, userdata_len
	beq	.L727	@,
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ len, i
	bgt	.L723	@,
.L693:
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L691	@,
.L729:
	cmp	r6, #2	@ userdata_len,
	movw	r2, #22010	@ tmp175,
	mov	ip, #1	@ tmp176,
	mov	r5, r5, asl #3	@ BitUsed, i,
	strb	ip, [r4, r2]	@ tmp176, <variable>.MP4SyntaxState.userdata_decode_right
	bhi	.L728	@,
.L691:
	mov	r0, r5	@, BitUsed
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L732:
	add	r2, r2, #1	@ tmp167, len,
	movw	r3, #22010	@ tmp164,
	strb	r6, [r0, r3]	@ tmp158, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r2, asl #3	@ BitUsed, tmp167,
	b	.L691	@
.L725:
	sub	r5, r5, #2	@ i, i,
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L691	@,
	b	.L729	@
.L728:
	add	r8, r4, #22272	@, pCtx,
	movw	lr, #22508	@ tmp182,
	movw	sl, #22896	@ tmp178,
	add	r1, r8, #244	@,,
	ldr	r2, [r4, lr]	@, <variable>.UserID
	movw	r8, #22532	@ tmp184,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	Mp4_GetUserDataBuf	@
	cmp	r0, #0	@ D.36409,
	str	r0, [r4, r8]	@ D.36409, <variable>.CurUsrData
	addeq	r7, r4, #3	@ buf, pCtx,
	beq	.L697	@,
	add	r7, r4, #3	@ buf, pCtx,
	cmp	r6, #1024	@ userdata_len,
	movcc	r2, r6	@, userdata_len
	movcs	r2, #1024	@,
	sub	r6, r6, #2	@ userdata_len.2432, userdata_len,
	str	r6, [r0, #1048]	@ userdata_len.2432, <variable>.data_size
	mov	r1, r7	@, buf
	ldr	r0, [r4, r8]	@, <variable>.CurUsrData
	bl	memcpy	@
	movw	r0, #22028	@ tmp197,
	ldr	r2, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #:lower16:g_event_report	@ tmp199,
	ldr	ip, [r4, r8]	@ <variable>.CurUsrData, <variable>.CurUsrData
	movt	r3, #:upper16:g_event_report	@ tmp199,
	ldrd	r0, [r2, #56]	@, <variable>.pstExtraData,
	mov	r2, #1056	@ tmp195,
	strd	r0, [ip, r2]	@, <variable>.CurUsrData, tmp195
	ldr	r3, [r3, #0]	@ g_event_report.440, g_event_report
	cmp	r3, #0	@ g_event_report.440,
	beq	.L697	@,
	ldr	lr, [r4, r8]	@ <variable>.CurUsrData, <variable>.CurUsrData
	sub	r2, fp, #44	@ tmp204,,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	r1, #6	@,
	str	lr, [r2, #-24]!	@ <variable>.CurUsrData, para
	blx	r3	@ g_event_report.440
.L697:
	add	r8, r6, #2	@ tmp205, userdata_len,
	sub	sl, fp, #52	@ tmp321,,
	cmp	r8, #1024	@ tmp205,
	addls	r1, r4, r8	@,, tmp207, pCtx, tmp205
	addhi	r1, r4, #1024	@,, tmp207, pCtx,
	sub	r8, fp, #56	@ tmp322,,
	mov	r6, #0	@ tmp209,
	mov	r0, r7	@, buf
	strb	r6, [r1, #3]	@ tmp209, <variable>.TmpUserData
	mov	r2, sl	@, tmp321
	movw	r1, #:lower16:.LC48	@,
	mov	r3, r8	@, tmp322
	movt	r1, #:upper16:.LC48	@,
	sub	r6, fp, #45	@ tmp214,,
	str	r6, [sp, #0]	@ tmp214,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L730	@,
.L699:
	ldr	r2, [fp, #-56]	@ build, build
	cmp	r0, #3	@ e,
	ldr	ip, [fp, #-52]	@ ver, ver
	movw	r0, #21984	@ tmp219,
	movw	r3, #21988	@ tmp221,
	str	r2, [r4, r3]	@ build, <variable>.MP4Syntax.divx_build
	movne	r2, #0	@ prephitmp.2409,
	str	ip, [r4, r0]	@ ver, <variable>.MP4Syntax.divx_version
	beq	.L731	@,
.L702:
	movw	lr, #21992	@ tmp226,
	str	r2, [r4, lr]	@ prephitmp.2409, <variable>.MP4Syntax.divx_packed
.L700:
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC50	@,
	mov	r2, r8	@, tmp322
	movt	r1, #:upper16:.LC50	@,
	bl	sscanf	@
	cmp	r0, #1	@,
	beq	.L703	@,
	sub	r9, fp, #60	@ tmp231,,
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC51	@,
	mov	r2, sl	@, tmp321
	movt	r1, #:upper16:.LC51	@,
	mov	r3, r9	@, tmp231
	str	r8, [sp, #4]	@ tmp322,
	sub	r6, fp, #64	@ tmp232,,
	str	r6, [sp, #0]	@ tmp232,
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L703	@,
	mov	r2, sl	@, tmp321
	mov	r3, r9	@, tmp231
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	str	r6, [sp, #0]	@ tmp232,
	bl	sscanf	@
	add	r0, r0, #1	@ e.2438,,
	cmp	r0, #1	@ e.2438,
	ble	.L704	@,
	ldr	r2, [fp, #-60]	@ ver2, ver2
	cmp	r0, #4	@ e.2438,
	ldr	r0, [fp, #-52]	@ ver, ver
	ldr	r1, [fp, #-64]	@ ver3, ver3
	mov	r3, r2, asl #8	@ tmp240, ver2,
	add	ip, r3, r0, asl #16	@, tmp242, tmp240, ver,
	add	r3, ip, r1	@ prephitmp.2408, tmp242, ver3
	str	r3, [fp, #-56]	@ prephitmp.2408, build
	beq	.L705	@,
.L704:
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	strcmp	@
	cmp	r0, #0	@,
	movweq	r3, #22000	@ tmp246,
	movweq	r2, #4600	@ tmp247,
	streq	r2, [r4, r3]	@ tmp247, <variable>.MP4Syntax.lavc_build
.L706:
	mov	r2, r8	@, tmp322
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	sscanf	@
	movw	ip, #21247	@ tmp259,
	movw	r1, #21249	@ tmp253,
	cmp	r0, #1	@,
	movw	r0, #21250	@ tmp256,
	ldreq	r2, [fp, #-56]	@ build, build
	movweq	r3, #21996	@ tmp251,
	streq	r2, [r4, r3]	@ build, <variable>.MP4Syntax.xvid_build
	movw	r3, #21996	@ tmp268,
	ldr	r2, [r4, r3]	@ prephitmp.2406, <variable>.MP4Syntax.xvid_build
	mov	r3, #0	@ tmp254,
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	movw	r0, #21246	@ tmp262,
	cmp	r2, #0	@ prephitmp.2406,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	mov	ip, #21248	@ tmp265,
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	strb	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bne	.L708	@,
	movw	lr, #21984	@ tmp269,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r2, #500	@ <variable>.MP4Syntax.divx_version,
	movcs	r2, #1	@ tmp280,
	strcsb	r2, [r4, r1]	@ tmp280, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bcc	.L710	@,
.L712:
	movw	lr, #21984	@ tmp286,
	movw	r1, #21996	@ tmp292,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	movw	r0, #502	@ tmp288,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.xvid_build, <variable>.MP4Syntax.xvid_build
	movw	lr, #22000	@ tmp298,
	cmp	r2, r0	@ <variable>.MP4Syntax.divx_version, tmp288
	movw	r1, #4668	@ tmp301,
	sub	r3, ip, #1	@ tmp293, <variable>.MP4Syntax.xvid_build,
	movwhi	r0, #21250	@ tmp289,
	movhi	r2, #1	@ tmp290,
	strhib	r2, [r4, r0]	@ tmp290, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	cmp	r3, #11	@ tmp293,
	ldr	r0, [r4, lr]	@ <variable>.MP4Syntax.lavc_build, <variable>.MP4Syntax.lavc_build
	movwls	r3, #21247	@ tmp295,
	movls	r2, #1	@ tmp296,
	sub	ip, r0, #1	@ tmp299, <variable>.MP4Syntax.lavc_build,
	strlsb	r2, [r4, r3]	@ tmp296, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r3, #21984	@ tmp305,
	cmp	ip, r1	@ tmp299, tmp301
	ldr	r0, [r4, r3]	@ prephitmp.2446, <variable>.MP4Syntax.divx_version
	movw	r2, #498	@ tmp307,
	movwls	r1, #21247	@ tmp302,
	movls	ip, #1	@ tmp303,
	sub	lr, r0, #1	@ tmp306, prephitmp.2446,
	strlsb	ip, [r4, r1]	@ tmp303, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	lr, r2	@ tmp306, tmp307
	movwls	r2, #21247	@ tmp308,
	movls	lr, #1	@ tmp309,
	strlsb	lr, [r4, r2]	@ tmp309, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	r0, #500	@ prephitmp.2446,
	bne	.L691	@,
	movw	ip, #21988	@ tmp312,
	movw	r3, #413	@ tmp314,
	ldr	r2, [r4, ip]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r2, r3	@ <variable>.MP4Syntax.divx_build, tmp314
	moveq	r3, #21248	@ tmp315,
	moveq	r2, #1	@ tmp316,
	streqb	r2, [r4, r3]	@ tmp316, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	b	.L691	@
.L727:
	sub	r5, r5, #2	@ tmp171, i,
	movw	r1, #22010	@ tmp172,
	mov	r0, #0	@ tmp173,
	strb	r0, [r4, r1]	@ tmp173, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r5, asl #3	@ BitUsed, tmp171,
	b	.L691	@
.L703:
	ldr	r3, [fp, #-56]	@ prephitmp.2408, build
.L705:
	movw	lr, #22000	@ tmp248,
	str	r3, [r4, lr]	@ prephitmp.2408, <variable>.MP4Syntax.lavc_build
	b	.L706	@
.L731:
	ldrsb	r2, [fp, #-45]	@ last, last
	cmp	r2, #112	@ last,
	movne	r2, #0	@, prephitmp.2409
	moveq	r2, #1	@, prephitmp.2409
	b	.L702	@
.L708:
	movw	r1, #21984	@ tmp272,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	ip, #0	@ <variable>.MP4Syntax.divx_version,
	beq	.L711	@,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_version
	movw	r1, #21988	@ tmp276,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_build
.L710:
	movw	r3, #21996	@ tmp278,
	ldr	r2, [r4, r3]	@ prephitmp.2406, <variable>.MP4Syntax.xvid_build
.L711:
	cmp	r2, #1	@ prephitmp.2406,
	movweq	r3, #21249	@ tmp283,
	streqb	r2, [r4, r3]	@ prephitmp.2406, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	b	.L712	@
.L730:
	mov	r0, r7	@, buf
	movw	r1, #:lower16:.LC49	@,
	mov	r2, sl	@, tmp321
	movt	r1, #:upper16:.LC49	@,
	mov	r3, r8	@, tmp322
	str	r6, [sp, #0]	@ tmp214,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L700	@,
	b	.L699	@
	.fnend
	.size	Mp4_Syntax_UserData, .-Mp4_Syntax_UserData
	.align	2
	.global	Mp4_Syntax_Parse
	.type	Mp4_Syntax_Parse, %function
Mp4_Syntax_Parse:
	.fnstart
.LFB1366:
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
	sub	r6, fp, #80	@ tmp576,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r0, r6	@, tmp576
	mov	r7, r1	@ pCode, pCode
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r6	@, tmp576
	movw	sl, #15832	@ tmp170,
	bl	BsShow	@
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ tmp171,
	mov	r1, #0	@ tmp169,
	and	r3, r3, #1	@ prephitmp.2470, tmp171,
	mov	r5, r0	@ StartCode,
	cmp	r5, #32768	@ StartCode,
	movne	r2, #0	@, tmp176
	andeq	r2, r3, #1	@,, tmp176, prephitmp.2470
	cmp	r2, r1	@ tmp176,
	movw	r0, #19940	@ tmp168,
	str	r1, [r4, r0]	@ tmp169, <variable>.IsWaitToDecFlag
	bne	.L734	@,
	eor	ip, r3, #1	@ tmp181, prephitmp.2470,
	movw	lr, #438	@ tmp178,
	cmp	r5, lr	@ StartCode, tmp178
	movne	ip, #0	@, tmp184
	andeq	ip, ip, #1	@,, tmp184, tmp181
	cmp	ip, #0	@ tmp184,
	beq	.L735	@,
.L734:
	mov	sl, r6	@ tmp186, tmp576
	sub	r6, fp, #108	@ tmp185,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp186,,,,
	mov	ip, r6	@, tmp185
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	sl, {r0, r1, r2}	@ tmp186,,,
	stmia	ip, {r0, r1, r2}	@ tmp577,,,
	mov	r1, #32	@,
	mov	r0, r6	@, tmp185
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r6	@, tmp185
	bl	BsGet	@
	mov	r1, #32	@,
	mov	sl, r0	@ D.37174,
	mov	r0, r6	@, tmp185
	bl	BsGet	@
	movw	r1, #:lower16:1128615492	@ tmp191,
	movw	r2, #:lower16:1213419593	@ tmp194,
	movt	r1, #:upper16:1128615492	@ tmp191,
	movt	r2, #:upper16:1213419593	@ tmp194,
	cmp	r0, r1	@, tmp191
	cmpeq	sl, r2	@, D.37174, tmp194
	beq	.L736	@,
	movw	r1, #15832	@ tmp199,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ tmp200,
	and	r3, r0, #1	@ prephitmp.2470, tmp200,
.L735:
	cmp	r3, #0	@ prephitmp.2470,
	beq	.L782	@,
	movw	ip, #21245	@ tmp224,
	mov	r5, #196	@ StartCode,
	mov	r2, #1	@ tmp225,
	strb	r2, [r4, ip]	@ tmp225,
.L739:
	movw	r3, #15832	@ tmp227,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ tmp229,
	and	r1, r0, #2	@ tmp231, tmp229,
	uxtb	r0, r1	@ tmp232, tmp231
	cmp	r0, #0	@ tmp232,
	bne	.L740	@,
.L792:
	movw	sl, #19936	@ tmp233,
	ldr	r3, [r4, sl]	@ tmp235,
	ands	r9, r3, #130	@ tmp234, tmp235,
	bne	.L783	@,
	cmp	r5, #197	@ StartCode,
	beq	.L784	@,
	cmp	r5, #432	@ StartCode,
	beq	.L785	@,
	movw	lr, #437	@ tmp250,
	cmp	r5, lr	@ StartCode, tmp250
	beq	.L786	@,
	bic	r2, r5, #15	@ tmp254, StartCode,
	cmp	r2, #288	@ tmp254,
	beq	.L787	@,
	movw	r6, #435	@ tmp275,
	cmp	r5, r6	@ StartCode, tmp275
	beq	.L788	@,
	movw	r3, #438	@ tmp279,
	cmp	r5, r3	@ StartCode, tmp279
	beq	.L789	@,
	cmp	r5, #196	@ StartCode,
	beq	.L790	@,
	movw	r6, #434	@ tmp297,
	cmp	r5, r6	@ StartCode, tmp297
	beq	.L791	@,
	movw	r0, #286	@ tmp303,
	cmp	r5, r0	@ StartCode, tmp303
	bne	.L755	@,
	movw	sl, #:lower16:g_event_report	@ tmp304,
	movt	sl, #:upper16:g_event_report	@ tmp304,
	ldr	r3, [sl, #0]	@ g_event_report.523, g_event_report
	cmp	r3, #0	@ g_event_report.523,
	beq	.L755	@,
	movw	ip, #22896	@ tmp305,
	mov	r1, #112	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.523
.L755:
	add	r2, r4, #15680	@, pCtx,
	movw	lr, #22896	@ tmp311,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	sub	sl, r8, #4	@ len, CodeLen,
	bl	MP4_ClearCurPacket	@
	add	r8, r7, #4	@ ptr, pCode,
	mov	r6, #0	@ BitUsed,
	b	.L744	@
.L782:
	mov	r1, r5, lsr #8	@ tmp217, StartCode,
	movw	r2, #21245	@ tmp214,
	sub	ip, r1, #128	@ tmp218, tmp217,
	mov	sl, #2	@ tmp215,
	cmp	ip, #3	@ tmp218,
	strb	sl, [r4, r2]	@ tmp215, <variable>.MP4Syntax.is_short_header
	bhi	.L739	@,
	movw	r3, #15832	@ tmp219,
	ldrb	sl, [r4, r3]	@ zero_extendqisi2	@ tmp221,
	orr	r0, sl, #2	@ tmp222, tmp221,
	strb	r0, [r4, r3]	@ tmp222,
	movw	r3, #15832	@ tmp227,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ tmp229,
	and	r1, r0, #2	@ tmp231, tmp229,
	uxtb	r0, r1	@ tmp232, tmp231
	cmp	r0, #0	@ tmp232,
	beq	.L792	@,
.L740:
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Dec_Slice	@
	mov	r8, r7	@ ptr, pCode
	mov	r6, r0	@ BitUsed,
.L744:
	movw	r3, #51625	@ tmp315,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.SeekReset, <variable>.SeekReset
	cmp	r1, #1	@ <variable>.SeekReset,
	beq	.L793	@,
.L757:
	cmp	r6, sl, asl #3	@ BitUsed, len,
	bgt	.L759	@,
	movw	r1, #438	@ tmp329,
	cmp	r5, r1	@ StartCode, tmp329
	cmpne	r5, #196	@, StartCode,
	bne	.L760	@,
	movw	ip, #19936	@ tmp334,
	ldr	r3, [r4, ip]	@ tmp336,
	tst	r3, #130	@ tmp336,
	beq	.L760	@,
	movw	r0, #21245	@ tmp337,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	cmp	r5, #2	@ <variable>.MP4Syntax.is_short_header,
	beq	.L794	@,
	movw	r3, #21944	@ tmp378,
	movw	r2, #21940	@ tmp380,
	ldr	r3, [r4, r3]	@ prephitmp.2472, <variable>.MP4Syntax.image_width
	movw	r1, #22500	@ tmp379,
	ldr	r2, [r4, r2]	@ D.37304, <variable>.MP4Syntax.image_height
	movw	r0, #22504	@ tmp381,
	cmp	r3, #0	@ prephitmp.2472,
	str	r3, [r4, r1]	@ prephitmp.2472, <variable>.NewPicWidth
	str	r2, [r4, r0]	@ D.37304, <variable>.NewPicHeight
	beq	.L764	@,
	movw	ip, #22492	@ tmp382,
	ldr	r5, [r4, ip]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	cmp	r3, r5	@ prephitmp.2472, <variable>.OldPicWidth
	beq	.L764	@,
.L765:
	movw	r5, #22896	@ tmp386,
	movw	r9, #51608	@,
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	mov	r9, #0	@ tmp402,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	add	lr, r4, #22528	@, pCtx,
	add	ip, lr, #16	@,,
	mov	sl, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	ip, [fp, #-112]	@, %sfp
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	movw	r3, #51608	@,
	str	r9, [sl, #184]	@ tmp402, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r9, [sl, #172]	@ tmp402, <variable>.p_usrdat
	str	r9, [sl, #176]	@ tmp402, <variable>.p_usrdat
	str	r9, [sl, #180]	@ tmp402, <variable>.p_usrdat
	ldr	r1, [r4, r3]	@, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r2, #51600	@,
	ldr	r1, [r4, r2]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	lr, #51608	@,
	movw	r0, #51600	@,
	str	r9, [r4, lr]	@ tmp402, <variable>.BwdFsID
	str	r9, [r4, r0]	@ tmp402, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #51600	@,
	movw	ip, #22904	@ tmp422,
	movw	r3, #51608	@,
	str	r9, [r4, ip]	@ tmp402, <variable>.RefNum
	str	r0, [r4, r1]	@ D.37321, <variable>.FwdFsID
	ldr	r1, [fp, #-112]	@, %sfp
	str	r0, [r4, r3]	@ D.37321, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r2, #22028	@ tmp427,
	ldr	r3, [r4, r2]	@ D.37325, <variable>.pstExtraData
	ldr	r1, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r1, r9	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L767	@,
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L795	@,
.L767:
	movw	r2, #22896	@ tmp432,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L778	@,
.L768:
	movw	r3, #22504	@ tmp436,
	movw	r5, #22500	@ tmp434,
	ldr	r2, [r4, r3]	@, <variable>.NewPicHeight
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r5]	@, <variable>.NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L769	@,
	ldr	r3, [r4, r5]	@ prephitmp.2472, <variable>.NewPicWidth
.L766:
	movw	r1, #22504	@ tmp443,
	movw	r5, #22492	@ tmp441,
	ldr	ip, [r4, r1]	@ <variable>.NewPicHeight, <variable>.NewPicHeight
	movw	lr, #22496	@ tmp442,
	str	r3, [r4, r5]	@ prephitmp.2472, <variable>.OldPicWidth
	str	ip, [r4, lr]	@ <variable>.NewPicHeight, <variable>.OldPicHeight
.L763:
	add	r5, r4, #20992	@ tmp447, pCtx,
	add	r0, r4, #21760	@ tmp445, pCtx,
	add	lr, r5, #184	@ tmp447, tmp447,
	add	ip, r0, #120	@ tmp445, tmp445,
	rsb	r7, r7, r8	@ tmp456, pCode, ptr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp450,,,,
	mov	r5, ip	@ tmp449, tmp445
	stmia	r5!, {r0, r1, r2, r3}	@ tmp449,,,,
	mov	ip, r5	@ tmp579, tmp449
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp578,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp579,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp580,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp579,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp580,,,
	stmia	ip, {r0, r1, r2}	@ tmp581,,,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	movw	r3, #22476	@ tmp452,
	ldr	ip, [r4, r3]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	add	r0, r6, r7, asl #3	@, D.37185, BitUsed, tmp456,
	add	r2, ip, #1	@ tmp455, <variable>.ImgCntOfSeq,
	str	r2, [r4, r3]	@ tmp455,
	b	.L737	@
.L760:
	movw	r2, #22007	@ tmp458,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	r1, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L796	@,
.L770:
	mov	r0, r6	@ D.37185, BitUsed
.L737:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L783:
	movw	ip, #19940	@ tmp240,
	orr	r1, r3, #32	@ tmp239, tmp235,
	mov	r2, #1	@ tmp241,
	str	r1, [r4, sl]	@ tmp239, <variable>.PicIntegrality
	str	r2, [r4, ip]	@ tmp241,
	b	.L737	@
.L764:
	cmp	r2, #0	@ D.37304,
	beq	.L766	@,
	movw	r0, #22496	@ tmp384,
	ldr	lr, [r4, r0]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r2, lr	@ D.37304, <variable>.OldPicHeight
	bne	.L765	@,
	b	.L766	@
.L736:
	movw	lr, #19936	@ tmp204,
	add	ip, r4, #15680	@, pCtx,
	ldr	r3, [r4, lr]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r1, #22896	@ tmp210,
	movw	r2, #19940	@ tmp208,
	orr	r0, r3, #32	@ tmp207, <variable>.PicIntegrality,
	str	r0, [r4, lr]	@ tmp207, <variable>.PicIntegrality
	movw	lr, #51624	@ tmp201,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r3, #1	@ tmp202,
	add	r1, ip, #24	@,,
	str	r3, [r4, r2]	@ tmp202, <variable>.IsWaitToDecFlag
	strb	r3, [r4, lr]	@ tmp202, <variable>.IsStreamEndFlag
	bl	MP4_ClearCurPacket	@
	mov	r0, #0	@ D.37185,
	b	.L737	@
.L759:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	rsb	r7, r7, r8	@ tmp574, pCode, ptr
	bl	dprint_vfmw	@
	movw	ip, #19936	@ tmp570,
	ldr	r3, [r4, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, r7, asl #3	@ D.37185, tmp574,
	bic	r2, r3, #178	@ tmp573, <variable>.PicIntegrality,
	str	r2, [r4, ip]	@ tmp573,
	b	.L737	@
.L793:
	movw	r0, #20048	@ tmp317,
	movw	ip, #20052	@ tmp319,
	ldr	r1, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, ip]	@, <variable>.MP4Vol.video_object_layer_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L797	@,
.L758:
	movw	lr, #51625	@ tmp322,
	mov	r2, #0	@ tmp323,
	strb	r2, [r4, lr]	@ tmp323, <variable>.SeekReset
	b	.L757	@
.L796:
	movw	r5, #22472	@ tmp460,
	movw	r1, #22476	@ tmp464,
	ldr	r2, [r4, r5]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, r4, #21248	@, pCtx,
	mov	ip, #0	@ tmp465,
	add	r0, r0, #28	@,,
	str	ip, [r4, r1]	@ tmp465, <variable>.ImgCntOfSeq
	add	lr, r2, #1	@ tmp463, <variable>.SeqCnt,
	add	r1, r4, #19968	@, pCtx,
	str	lr, [r4, r5]	@ tmp463, <variable>.SeqCnt
	mov	r2, #604	@,
	bl	memcpy	@
	movw	r3, #21940	@ tmp473,
	movw	r0, #20052	@ tmp474,
	ldr	r3, [r4, r3]	@ prephitmp.2528, <variable>.MP4Syntax.image_height
	ldr	ip, [r4, r0]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	cmp	r3, ip	@ prephitmp.2528, <variable>.MP4Vol.video_object_layer_height
	beq	.L798	@,
.L771:
	movw	r7, #:lower16:g_event_report	@ tmp480,
	movt	r7, #:upper16:g_event_report	@ tmp480,
	ldr	r3, [r7, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L773	@,
	movw	r1, #21944	@ tmp482,
	movw	r5, #21940	@ tmp484,
	ldrh	r2, [r4, r1]	@, <variable>.MP4Syntax.image_width
	movw	r0, #20048	@ tmp486,
	movw	r9, #20052	@ tmp488,
	movw	r8, #22896	@ tmp491,
	mov	r1, #2	@,
	strh	r2, [fp, #-52]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldrh	lr, [r4, r5]	@, <variable>.MP4Syntax.image_height
	strh	lr, [fp, #-50]	@ movhi	@, para
	ldrh	ip, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	strh	ip, [fp, #-48]	@ movhi	@, para
	ldrh	sl, [r4, r9]	@, <variable>.MP4Vol.video_object_layer_height
	strh	sl, [fp, #-46]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L773:
	movw	r5, #20048	@ tmp496,
	movw	sl, #20052	@ tmp499,
	ldr	r8, [r4, r5]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	r3, #21944	@ tmp495,
	ldr	r9, [r4, sl]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	movw	lr, #21940	@ tmp498,
	movw	r5, #22896	@ tmp501,
	movw	sl, #51608	@ tmp503,
	str	r8, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	add	r7, r4, #22528	@ temp.2556, pCtx,
	str	r9, [r4, lr]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	add	r9, r7, #16	@ temp.2556, temp.2556,
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	mov	r8, #0	@ tmp517,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r7, r0	@ pImg,
	ldr	r1, [r0, #172]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r7, #184]	@ tmp517, <variable>.p_usrdat
	str	r8, [r7, #172]	@ tmp517, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r7, #176]	@ tmp517, <variable>.p_usrdat
	str	r8, [r7, #180]	@ tmp517, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #51600	@,
	ldr	r1, [r4, ip]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r0, #51600	@,
	str	r8, [r4, r0]	@ tmp517, <variable>.FwdFsID
	str	r8, [r4, sl]	@ tmp517, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #51600	@,
	movw	r2, #22904	@ tmp537,
	str	r8, [r4, r2]	@ tmp517, <variable>.RefNum
	str	r0, [r4, r1]	@ D.37365, <variable>.FwdFsID
	mov	r1, r9	@, temp.2556
	str	r0, [r4, sl]	@ D.37365, <variable>.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r3, #22028	@ tmp542,
	ldr	r3, [r4, r3]	@ temp.2557, <variable>.pstExtraData
	ldr	ip, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, r8	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L774	@,
	ldr	r2, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L799	@,
.L774:
	movw	ip, #22896	@ tmp547,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L780	@,
.L775:
	movw	lr, #21944	@ tmp549,
	movw	r5, #21940	@ tmp551,
	ldr	r1, [r4, lr]	@, <variable>.MP4Syntax.image_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, r5]	@, <variable>.MP4Syntax.image_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L776	@,
.L781:
	ldr	r3, [r4, r5]	@ prephitmp.2528, <variable>.MP4Syntax.image_height
.L772:
	movw	r2, #21944	@ tmp558,
	movw	lr, #20052	@ tmp561,
	movw	r1, #20048	@ tmp564,
	ldr	r0, [r4, lr]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	ip, [r4, r2]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r5, #22492	@ tmp556,
	ldr	r1, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	lr, #22496	@ tmp557,
	str	r3, [r4, r5]	@ prephitmp.2528, <variable>.OldPicWidth
	movw	r3, #22007	@ tmp566,
	mov	r5, #0	@ tmp567,
	strb	r5, [r4, r3]	@ tmp567, <variable>.MP4SyntaxState.vol_decode_right
	movw	r3, #21940	@ tmp560,
	str	ip, [r4, lr]	@ <variable>.MP4Syntax.image_width, <variable>.OldPicHeight
	str	r0, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	str	r1, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	b	.L770	@
.L788:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	r1, #22508	@ tmp277,
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r8, #3	@ tmp278,
	str	r8, [r4, r1]	@ tmp278, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Gop	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L744	@
.L769:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5]	@ prephitmp.2472, <variable>.NewPicWidth
	b	.L766	@
.L776:
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	b	.L781	@
.L785:
	movw	r6, #22508	@ tmp248,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	str	r9, [r4, r6]	@ tmp234, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	mov	sl, r8	@ len, CodeLen
	bl	Mp4_Syntax_Vos	@
	mov	r1, r5	@, StartCode
	mov	r8, r7	@ ptr, pCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L744	@
.L786:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	ip, #22508	@ tmp252,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r8, #1	@ tmp253,
	mov	r0, r4	@, pCtx
	str	r8, [r4, ip]	@ tmp253, <variable>.UserID
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Vo	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L744	@
.L787:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	movw	r9, #22007	@ tmp258,
	bl	dprint_vfmw	@
	movw	r3, #22508	@ tmp256,
	mov	r2, r8	@, CodeLen
	mov	r1, #2	@ tmp257,
	mov	r0, r4	@, pCtx
	str	r1, [r4, r3]	@ tmp257, <variable>.UserID
	mov	r1, r7	@, pCode
	bl	Mp4_Syntax_Vol	@
	mov	r1, r5	@, StartCode
	mov	r6, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	sl, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L747	@,
	movw	r0, #22008	@ tmp260,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.last_vol_decode_right
	cmp	r3, #1	@ <variable>.MP4SyntaxState.last_vol_decode_right,
	beq	.L800	@,
.L747:
	mov	sl, r8	@ len, CodeLen
	mov	r8, r7	@ ptr, pCode
	b	.L744	@
.L784:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	add	r0, r4, #15680	@, pCtx,
	movw	r3, #22896	@ tmp243,
	add	r1, r0, #24	@,,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r9	@ D.37185, tmp234
	b	.L737	@
.L794:
	movw	lr, #21176	@ tmp339,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #2	@ <variable>.MP4Vop.vop_coding_type,
	beq	.L762	@,
	movw	r1, #21956	@ tmp342,
	movw	ip, #21948	@ tmp344,
	ldr	lr, [r4, ip]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r2, #20040	@ tmp349,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.time_base
	movw	r0, #21952	@ tmp352,
	ldr	r5, [r4, r2]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r2, #21968	@ tmp356,
	ldr	r3, [r4, r0]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r0, lr, ip	@ D.37287, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_base
	ldr	lr, [r4, r2]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	str	r0, [r4, r1]	@ D.37287, <variable>.MP4Syntax.time_base
	movw	r1, #21964	@ tmp354,
	mla	r3, r5, r0, r3	@ D.37291, <variable>.MP4Vol.vop_time_increment_resolution, D.37287, <variable>.MP4Syntax.time_increment
	movw	r5, #21960	@ tmp341,
	str	ip, [r4, r5]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.last_time_base
	movw	r5, #21972	@ tmp355,
	rsb	ip, lr, r3	@ tmp358, <variable>.MP4Syntax.last_non_b_time, D.37291
	str	ip, [r4, r5]	@ tmp358, <variable>.MP4Syntax.time_pp
	str	r3, [r4, r2]	@ D.37291, <variable>.MP4Syntax.last_non_b_time
	str	r3, [r4, r1]	@ D.37291, <variable>.MP4Syntax.time
	b	.L763	@
.L789:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_Vop	@
	mov	r6, r0	@ BitUsed,
	ldr	r0, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r0, #2	@ <variable>.PicIntegrality,
	bne	.L750	@,
	add	sl, r4, #15680	@, pCtx,
	movw	ip, #22896	@ tmp284,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, sl, #24	@,,
	bl	MP4_ClearCurPacket	@
.L751:
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC61	@,
	mov	r2, r6	@, BitUsed
	movt	r1, #:upper16:.LC61	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r8, r7	@ ptr, pCode
	b	.L744	@
.L797:
	movw	r1, #:lower16:.LC64	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	b	.L758	@
.L790:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	bl	Mp4_Syntax_ShortHeader	@
	ldr	r2, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r2, #2	@ <variable>.PicIntegrality,
	mov	r6, r0	@ BitUsed,
	bne	.L753	@,
	add	lr, r4, #15680	@, pCtx,
	movw	r1, #22896	@ tmp293,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, lr, #24	@,,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_ClearCurPacket	@
	mov	r8, r7	@ ptr, pCode
	b	.L744	@
.L791:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_UserData	@
	add	r8, r4, #15680	@, pCtx,
	movw	r3, #22896	@ tmp299,
	add	r1, r8, #24	@,,
	mov	r8, r7	@ ptr, pCode
	mov	r6, r0	@ BitUsed,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	b	.L744	@
.L795:
	movw	r0, #22900	@ tmp430,
	ldr	r1, [r4, r0]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, r9	@ <variable>.FspPartitionOK,
	bne	.L768	@,
.L778:
	ldr	r0, [fp, #-112]	@, %sfp
	bl	ResetVoQueue	@
	b	.L768	@
.L798:
	movw	r1, #21944	@ tmp476,
	movw	r2, #20048	@ tmp477,
	ldr	lr, [r4, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldr	r5, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	cmp	lr, r5	@ <variable>.MP4Syntax.image_width, <variable>.MP4Vol.video_object_layer_width
	bne	.L771	@,
	b	.L772	@
.L799:
	movw	r0, #22900	@ tmp545,
	ldr	r1, [r4, r0]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, r8	@ <variable>.FspPartitionOK,
	bne	.L775	@,
.L780:
	mov	r0, r9	@, temp.2556
	bl	ResetVoQueue	@
	b	.L775	@
.L750:
	mov	r0, r4	@, pCtx
	mov	r1, r5	@, StartCode
	bl	MP4_Record_HeadPacketInfo	@
	b	.L751	@
.L753:
	mov	r0, r4	@, pCtx
	mov	r1, #196	@,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Record_HeadPacketInfo	@
	mov	r8, r7	@ ptr, pCode
	b	.L744	@
.L762:
	movw	lr, #21948	@ tmp360,
	movw	ip, #21960	@ tmp361,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r5, #20040	@ tmp365,
	ldr	r3, [r4, ip]	@ <variable>.MP4Syntax.last_time_base, <variable>.MP4Syntax.last_time_base
	movw	r1, #21952	@ tmp368,
	ldr	ip, [r4, r5]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r0, #21972	@ tmp372,
	ldr	r5, [r4, r1]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r3, r2, r3	@ tmp362, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.last_time_base
	movw	lr, #21968	@ tmp373,
	ldr	r1, [r4, r0]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	movw	lr, #21976	@ tmp371,
	mla	r3, ip, r3, r5	@ D.37299, <variable>.MP4Vol.vop_time_increment_resolution, tmp362, <variable>.MP4Syntax.time_increment
	rsb	r0, r2, r1	@ tmp374, <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.time_pp
	movw	r1, #21964	@ tmp370,
	add	r5, r0, r3	@ tmp377, tmp374, D.37299
	str	r5, [r4, lr]	@ tmp377, <variable>.MP4Syntax.time_bp
	str	r3, [r4, r1]	@ D.37299, <variable>.MP4Syntax.time
	b	.L763	@
.L800:
	add	lr, r4, #20480	@, pCtx,
	mov	r2, #604	@,
	add	r0, r4, #19968	@, pCtx,
	add	r1, lr, #92	@,,
	str	r3, [fp, #-116]	@,
	bl	memcpy	@
	ldr	ip, [fp, #-116]	@,
	movw	r2, #21237	@ tmp272,
	mov	sl, r8	@ len, CodeLen
	mov	r8, r7	@ ptr, pCode
	strb	ip, [r4, r2]	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4Syntax.vol_decode_over
	strb	ip, [r4, r9]	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	b	.L744	@
	.fnend
	.size	Mp4_Syntax_Parse, .-Mp4_Syntax_Parse
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
.LFB1379:
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
	movw	r0, #22484	@ tmp166,
	mov	r5, r1	@ ptr_strm_para, ptr_strm_para
	ldr	r3, [r4, r0]	@ <variable>.InitComplete, <variable>.InitComplete
	cmp	r3, #0	@ <variable>.InitComplete,
	beq	.L802	@,
	ldr	r1, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r1, #0	@ <variable>.LenInByte,
	ble	.L802	@,
	ldr	r2, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #0	@ <variable>.PhyAddr,
	beq	.L802	@,
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L802	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	add	r6, r4, #15680	@ D.38041, pCtx,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	add	r6, r6, #24	@ D.38041, D.38041,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #72]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #76]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #69]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@,* <variable>.VirAddr
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	ldrb	r2, [ip, #1]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	mov	r2, #128	@,
	mov	r1, r5	@, ptr_strm_para
	mov	r0, r6	@, D.38041
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, D.38041
	bl	MP4_GetScdUpMsg	@
	mov	r0, r4	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@ D.38042,
	mov	r7, r0	@ D.38042,
	beq	.L843	@,
	mov	r1, r6	@, D.38041
	mov	r0, r4	@, pCtx
	movw	r6, #15712	@ tmp206,
	movw	sl, #15704	@ tmp209,
	movw	r8, #15716	@ tmp212,
	bl	MP4_GetScdUpMsg	@
	ldr	ip, [r4, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r7, #22012	@ tmp208,
	ldr	r2, [r4, sl]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r6, #22020	@ tmp211,
	ldr	r0, [r4, r8]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	sl, #22024	@ tmp214,
	mov	r8, #22016	@ tmp205,
	mov	r1, #0	@ tmp215,
	str	ip, [r4, r8]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	r2, [r4, r7]	@ <variable>.VirAddr, <variable>.BitsObj.vir_addr
	str	r0, [r4, r6]	@ <variable>.LenInByte, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	str	r1, [r4, sl]	@ tmp215, <variable>.BitsObj.offset
	bl	Mp4_Get_DecMode	@
	ldr	r1, [r4, r7]	@, <variable>.BitsObj.vir_addr
	ldr	r2, [r4, r6]	@, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Parse	@
	movw	r2, #19936	@ tmp234,
	ldr	r9, [r4, r7]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	ldr	r1, [r4, r2]	@ D.38050, <variable>.PicIntegrality
	tst	r1, #32	@ D.38050,
	mov	r3, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ tmp233, bits_consume,
	add	ip, r9, r3	@ tmp223, <variable>.BitsObj.vir_addr, byte_num
	ldr	r9, [r4, r6]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	str	ip, [r4, r7]	@ tmp223, <variable>.BitsObj.vir_addr
	ldr	r7, [r4, r8]	@, <variable>.BitsObj.phy_addr
	str	r0, [r4, sl]	@ tmp233, <variable>.BitsObj.offset
	add	ip, r3, r7	@ tmp227, byte_num,
	rsb	r3, r3, r9	@ tmp231, byte_num, <variable>.BitsObj.len
	str	ip, [r4, r8]	@ tmp227, <variable>.BitsObj.phy_addr
	str	r3, [r4, r6]	@ tmp231, <variable>.BitsObj.len
	beq	.L806	@,
	movw	lr, #22060	@ tmp238,
	bic	r1, r1, #178	@ tmp237, D.38050,
	ldr	r3, [r4, lr]	@ D.38058, <variable>.DecMode
	str	r1, [r4, r2]	@ tmp237, <variable>.PicIntegrality
	cmp	r3, #2	@ D.38058,
	beq	.L844	@,
	cmp	r3, #1	@ D.38058,
	beq	.L845	@,
	cmp	r3, #4	@ D.38058,
	bne	.L809	@,
	movw	ip, #21880	@ tmp243,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.2593, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ prephitmp.2593,
	movweq	r3, #21880	@ tmp246,
	movweq	r2, #22512	@ tmp244,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2593, <variable>.MP4Syntax.syn_vop.vop_coding_type
	moveq	r1, #0	@ tmp245,
	streq	r1, [r4, r2]	@ tmp245, <variable>.PPicFound
	cmp	r3, #2	@ prephitmp.2593,
	cmpne	r3, #4	@, prephitmp.2593,
	beq	.L846	@,
.L812:
	cmp	r3, #1	@ prephitmp.2593,
	movweq	r2, #22512	@ tmp256,
	streq	r3, [r4, r2]	@ prephitmp.2593, <variable>.PPicFound
.L809:
	mov	r0, r4	@, pCtx
	bl	Mp4_Frame_Atr	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L847	@,
	cmn	r0, #2	@ ret,
	beq	.L848	@,
	movw	r7, #22896	@ tmp260,
	movw	r6, #51600	@ tmp262,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pFwdImg,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r7, #51608	@ tmp266,
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #21243	@ tmp268,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.38088, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.38088,
	cmpne	r3, #3	@, D.38088,
	mov	r7, r0	@ pBwdImg,
	bne	.L815	@,
	cmp	r6, #0	@ pFwdImg,
	beq	.L816	@,
	movw	ip, #22028	@ tmp277,
	ldr	r1, [r6, #160]	@ <variable>.error_level, <variable>.error_level
	ldr	r2, [r4, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r1, r0	@ <variable>.error_level, <variable>.s32RefErrThr
	bhi	.L816	@,
.L817:
	movw	r2, #21880	@ tmp311,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L821	@,
	movw	sl, #22904	@ tmp313,
	movw	r6, #51600	@ tmp316,
	ldr	r8, [r4, sl]	@ <variable>.RefNum, <variable>.RefNum
	movw	r7, #51608	@ tmp317,
	ldr	r3, [r4, r6]	@ prephitmp.2591, <variable>.FwdFsID
	cmp	r8, #0	@ <variable>.RefNum,
	ldr	r9, [r4, r7]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movgt	r8, #2	@ iftmp.559,
	movle	r8, #1	@ iftmp.559,
	cmp	r3, r9	@ prephitmp.2591, <variable>.BwdFsID
	str	r8, [r4, sl]	@ iftmp.559, <variable>.RefNum
	beq	.L824	@,
	movw	r8, #22896	@ tmp319,
	mov	r1, r3	@, prephitmp.2591
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L837	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_SetDisplay	@
.L837:
	ldr	r3, [r4, r7]	@ prephitmp.2591, <variable>.BwdFsID
.L824:
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ <variable>.BwdCodingType, <variable>.BwdCodingType
	movw	r1, #51612	@ tmp335,
	movw	r7, #21972	@ tmp343,
	movw	r8, #51616	@ tmp338,
	ldr	r9, [r4, r1]	@ <variable>.BwdTimePP, <variable>.BwdTimePP
	movw	r6, #22896	@ tmp345,
	ldr	r0, [r4, r8]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r2, #51604	@ tmp334,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.CurCodingType, <variable>.CurCodingType
	ldr	sl, [r4, r7]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	movw	r7, #51600	@ tmp331,
	strb	lr, [r4, #0]	@ <variable>.BwdCodingType, <variable>.FwdCodingType
	movw	lr, #51608	@ tmp337,
	str	r3, [r4, r7]	@ prephitmp.2591, <variable>.FwdFsID
	str	r0, [r4, lr]	@ <variable>.CurFsID, <variable>.BwdFsID
	strb	ip, [r4, #1]	@ <variable>.CurCodingType, <variable>.BwdCodingType
	str	r9, [r4, r2]	@ <variable>.BwdTimePP, <variable>.FwdTimePP
	mov	r2, #1	@,
	str	sl, [r4, r1]	@ <variable>.MP4Syntax.time_pp, <variable>.BwdTimePP
	mov	r1, r0	@, <variable>.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	bl	FSP_RemovePmv	@
	movw	ip, #21880	@ tmp353,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L821	@,
	movw	r0, #21240	@ tmp395,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.packed_mode, <variable>.MP4Syntax.packed_mode
	cmp	r3, #0	@ <variable>.MP4Syntax.packed_mode,
	beq	.L849	@,
.L831:
	mov	r0, #0	@ D.38011,
.L804:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L845:
	movw	r2, #21880	@ tmp241,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L809	@,
.L841:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L815:
	cmp	r3, #2	@ D.38088,
	bne	.L817	@,
	cmp	r6, #0	@ pFwdImg,
	beq	.L818	@,
	movw	r3, #22028	@ tmp290,
	ldr	r2, [r6, #160]	@ <variable>.error_level, <variable>.error_level
	ldr	ip, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #0]	@ temp.2622, <variable>.s32RefErrThr
	cmp	r2, r3	@ <variable>.error_level, temp.2622
	bhi	.L818	@,
	cmp	r0, #0	@ pBwdImg,
	beq	.L820	@,
	ldr	r2, [r0, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r2	@ temp.2622, <variable>.error_level
	bcs	.L817	@,
.L820:
	movw	lr, #22896	@ tmp302,
	movw	r0, #51616	@ tmp304,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	ip, #22028	@ tmp309,
	ldr	r3, [r4, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@,
	ldr	r2, [r7, #160]	@, <variable>.error_level
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	ldr	r3, [r3, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L821:
	mov	r2, r5	@, ptr_strm_para
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	movw	r3, #21880	@ tmp355,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.38136, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ D.38136,
	cmpne	r3, #4	@, D.38136,
	bne	.L827	@,
	movw	ip, #22512	@ tmp363,
	ldr	r2, [r4, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	beq	.L850	@,
.L827:
	movw	r5, #22028	@ tmp371,
	cmp	r3, #1	@ D.38136,
	ldr	r1, [r4, r5]	@ temp.2649, <variable>.pstExtraData
	movweq	r2, #22512	@ tmp369,
	streq	r3, [r4, r2]	@ D.38136, <variable>.PPicFound
	add	r3, r4, #1040	@ D.38144, pCtx,
	str	r3, [r4, #1036]	@ D.38144, <variable>.pMp4DecParam
	ldr	r2, [r1, #584]	@ D.38145, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.38145,
	beq	.L851	@,
	cmp	r2, #2	@ D.38145,
	beq	.L852	@,
.L830:
	movw	r1, #21880	@ tmp388,
	mov	ip, #0	@ tmp386,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	ip, [r4, #1198]	@ tmp386, <variable>.Mp4DecParam.IsNvopCopy
	cmp	r5, ip	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L831	@,
	movw	r2, #:lower16:g_event_report	@ tmp390,
	movt	r2, #:upper16:g_event_report	@ tmp390,
	ldr	r3, [r2, #0]	@ g_event_report.560, g_event_report
	cmp	r3, #0	@ g_event_report.560,
	beq	.L831	@,
	sub	r2, fp, #44	@ tmp394,,
	movw	lr, #22896	@ tmp392,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #20	@,
	str	r5, [r2, #-4]!	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, para
	blx	r3	@ g_event_report.560
	mov	r0, r5	@ D.38011, <variable>.MP4Syntax.syn_vop.vop_coding_type
	b	.L804	@
.L844:
	movw	r1, #21880	@ tmp239,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L809	@,
	b	.L841	@
.L849:
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8]	@, <variable>.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [r5, #440]	@ D.38178, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.38178,
	beq	.L832	@,
	ldr	ip, [r5, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L832	@,
	ldr	r1, [r5, #444]	@ D.38182, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.38182,
	beq	.L832	@,
	ldr	ip, [r0, #440]	@ D.38189, <variable>.pstDecodeFs
	movw	r0, #21944	@ tmp421,
	ldr	r2, [r3, #12]	@ iftmp.2664, <variable>.PhyAddr
	cmp	ip, #0	@ D.38189,
	ldr	r3, [r1, #12]	@ D.38186, <variable>.PhyAddr
	movw	r1, #21940	@ tmp423,
	ldr	lr, [r4, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldrne	r6, [ip, #12]	@ iftmp.563, <variable>.PhyAddr
	mov	r0, r4	@, pCtx
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	mov	r1, r5	@, pCur
	moveq	r6, r2	@ iftmp.563, iftmp.2664
	stmia	sp, {r6, lr}	@ phole stm
	str	ip, [sp, #8]	@ <variable>.MP4Syntax.image_height,
	bl	Vdm_Mem_Move	@
	mov	r0, #0	@ D.38011,
	b	.L804	@
.L851:
	cmp	r3, #0	@ D.38144,
	beq	.L830	@,
	movw	r3, #21880	@ tmp372,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L830	@,
	movw	r0, #51616	@ tmp376,
	movw	lr, #22896	@ tmp375,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	ip, #0	@ tmp374,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	ip, [r4, #1036]	@ tmp374, <variable>.pMp4DecParam
	bl	FSP_ClearLogicFs	@
	b	.L841	@
.L802:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L852:
	ldr	r2, [r1, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L830	@,
	cmp	r3, #0	@ D.38144,
	beq	.L830	@,
	movw	r3, #21880	@ tmp378,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L830	@,
	movw	r3, #22896	@ tmp381,
	movw	r0, #51616	@ tmp382,
	mov	lr, #0	@ tmp380,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	str	lr, [r4, #1036]	@ tmp380, <variable>.pMp4DecParam
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r5]	@ temp.2656, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r2, [r1, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp385, <variable>.stDisParams.s32DisNums,
	str	ip, [r1, #588]	@ tmp385, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L816:
	movw	lr, #22896	@ tmp280,
	movw	r0, #51616	@ tmp282,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r1, #22028	@ tmp287,
	ldr	r3, [r4, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@,
	ldr	r2, [r6, #160]	@, <variable>.error_level
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	ldr	r3, [r3, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L846:
	movw	lr, #22512	@ tmp254,
	ldr	r2, [r4, lr]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	bne	.L812	@,
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L806:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L843:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38011, D.38042
	b	.L804	@
.L848:
	movw	r1, #:lower16:.LC84	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	b	.L841	@
.L847:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r6	@ D.38011, ret
	b	.L804	@
.L818:
	movw	lr, #22896	@ tmp292,
	movw	r0, #51616	@ tmp294,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r1, #22028	@ tmp299,
	ldr	ip, [r4, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@,
	ldr	r2, [r6, #160]	@, <variable>.error_level
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	ldr	r3, [ip, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L850:
	movw	r0, #51616	@ tmp367,
	movw	lr, #22896	@ tmp365,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mvn	r0, #0	@ D.38011,
	b	.L804	@
.L832:
	movw	r6, #51616	@ tmp409,
	movw	lr, #22896	@ tmp407,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r2, #51608	@ tmp416,
	ldr	ip, [r4, r2]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r1, #51600	@ tmp412,
	ldr	r2, [r4, r1]	@ <variable>.FwdFsID, <variable>.FwdFsID
	mov	r0, #0	@,
	ldr	r3, [r4, r6]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r1, #:lower16:.LC89	@,
	str	ip, [sp, #0]	@ <variable>.BwdFsID,
	movt	r1, #:upper16:.LC89	@,
	ldr	ip, [r5, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	ip, [r5, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	ip, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	b	.L841	@
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
	.type	__func__.38650, %object
	.size	__func__.38650, 20
__func__.38650:
	.ascii	"Mp4_Syntax_Slice_SH\000"
	.type	__func__.38558, %object
	.size	__func__.38558, 23
__func__.38558:
	.ascii	"Mp4_Syntax_Slice_NotSH\000"
	.space	1
	.type	__func__.38750, %object
	.size	__func__.38750, 14
__func__.38750:
	.ascii	"MP4_Dec_Slice\000"
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
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC34:
	.ascii	"FrameNum=%d\012\000"
	.space	3
.LC35:
	.ascii	"vop_coding_type=%d\012\000"
.LC36:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC37:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC38:
	.ascii	"MPEG4DEC Init  -----\012\000"
	.space	2
.LC39:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC40:
	.ascii	"MPEG4DEC Init success -----\012\000"
	.space	3
.LC41:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC42:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC43:
	.ascii	"actual frame size(%dx%d) exeed max config(%dx%d)\012"
	.ascii	"\000"
	.space	2
.LC44:
	.ascii	"MPEG4 Frame_Init return err!\012\000"
	.space	2
.LC45:
	.ascii	"MPEG4 Frame_Init PmvNum=%d, FrameNum=%d, error!\012"
	.ascii	"\000"
	.space	3
.LC46:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC47:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC48:
	.ascii	"DivX%dBuild%d%c\000"
.LC49:
	.ascii	"DivX%db%d%c\000"
.LC50:
	.ascii	"FFmpe%*[^b]b%d\000"
	.space	1
.LC51:
	.ascii	"FFmpeg v%d.%d.%d / libavcodec build: %d\000"
.LC52:
	.ascii	"Lavc%d.%d.%d\000"
	.space	3
.LC53:
	.ascii	"ffmpeg\000"
	.space	1
.LC54:
	.ascii	"XviD%d\000"
	.space	1
.LC55:
	.ascii	"Not find start code \012\000"
	.space	2
.LC56:
	.ascii	"VOS beginning ~ !\012\000"
	.space	1
.LC57:
	.ascii	"VO beginning ~ !\012\000"
	.space	2
.LC58:
	.ascii	"VOL beginning ~ !\012\000"
	.space	1
.LC59:
	.ascii	"GOP beginning ~ !\012\000"
	.space	1
.LC60:
	.ascii	"VOP beginning ~ !\012\000"
	.space	1
.LC61:
	.ascii	"BitUsed=%d\012\000"
.LC62:
	.ascii	"SHVOP beginning ~ !\012\000"
	.space	3
.LC63:
	.ascii	"USERDATA beginning ~ !\012\000"
.LC64:
	.ascii	"MPEG4 Frame_Init return err 3!\012\000"
.LC65:
	.ascii	"MPEG4 Frame_Init return err 1!\012\000"
.LC66:
	.ascii	"vop right\012\000"
	.space	1
.LC67:
	.ascii	"MPEG4 Frame_Init return err 2!\012\000"
.LC68:
	.ascii	"bits over boundary\012\000"
.LC69:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC70:
	.ascii	"MPEG4DEC Decode -----\012\000"
	.space	1
.LC71:
	.ascii	"ptr_strm_para->PhyAddr0=0x%x\012\000"
	.space	2
.LC72:
	.ascii	"ptr_strm_para->Length0=%d\012\000"
	.space	1
.LC73:
	.ascii	"ptr_strm_para->IsLastSeg0=%d\012\000"
	.space	2
.LC74:
	.ascii	"ptr_strm_para->PhyAddr1=0x%x\012\000"
	.space	2
.LC75:
	.ascii	"ptr_strm_para->Length1=%d\012\000"
	.space	1
.LC76:
	.ascii	"ptr_strm_para->IsLastSeg1=%d\012\000"
	.space	2
.LC77:
	.ascii	"ptr_strm_para->Length0 = %d\012\000"
	.space	3
.LC78:
	.ascii	"byte0: = 0x%x\012\000"
	.space	1
.LC79:
	.ascii	"byte1: = 0x%x\012\000"
	.space	1
.LC80:
	.ascii	"byte2: = 0x%x\012\000"
	.space	1
.LC81:
	.ascii	"byte3: = 0x%x\012\000"
	.space	1
.LC82:
	.ascii	"MP4_Check_CurPacket failed!\012\000"
	.space	3
.LC83:
	.ascii	"Mp4_Frame_Atr return fail\012\000"
	.space	1
.LC84:
	.ascii	"Frame req error---\012\000"
.LC85:
	.ascii	"dec P/S frame, fwd ref err(%d) > ref_thr(%d)\012\000"
	.space	2
.LC86:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC87:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC88:
	.ascii	"NVOP mem move--\012\000"
	.space	3
.LC89:
	.ascii	"CurFsID(f%d,%d,b%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC90:
	.ascii	"bits not enought\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.37391, %object
	.size	MemArrange.37391, 620
MemArrange.37391:
	.space	620
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
