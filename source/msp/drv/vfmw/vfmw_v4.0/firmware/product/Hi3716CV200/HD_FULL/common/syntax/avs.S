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
	.file	"avs.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.avs.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/avs.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/avs.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fno-pic -fverbose-asm
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
	.global	AVS_UpdateTableIdx2Dist
	.type	AVS_UpdateTableIdx2Dist, %function
AVS_UpdateTableIdx2Dist:
	.fnstart
.LFB1383:
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
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L15	@,
	ldr	r3, [r0, #460]	@ prephitmp.526, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.526,
	beq	.L16	@,
	cmp	r3, #1	@ prephitmp.526,
	beq	.L17	@,
	cmp	r3, #2	@ prephitmp.526,
	beq	.L18	@,
.L5:
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L16:
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	ldr	r3, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r2, r3, asl #1	@ tmp164, <variable>.pic_distance,
	str	r2, [r0, #536]	@ tmp164, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L18:
	ldr	r1, [r0, #84]	@ temp.563, <variable>.pRef
	add	r2, r0, #4	@ tmp172, pCodecInf,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r2, r1	@ tmp172, temp.563
	ldrne	r1, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	r2, [r0, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	movne	r1, r1, asl #1	@ prephitmp.528, <variable>.pic_distance,
	strne	r1, [r0, #524]	@ prephitmp.528, <variable>.Idx2Dist
	moveq	r1, r2	@ prephitmp.528, <variable>.Idx2Dist
	add	r3, r1, #1	@ temp.566, prephitmp.528,
	movne	r2, r1	@ <variable>.Idx2Dist, prephitmp.528
	str	r3, [r0, #520]	@ temp.566, <variable>.Idx2Dist
	ldr	r1, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	r2, [r0, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r3, [r0, #536]	@ temp.566, <variable>.Idx2Dist
	mov	ip, r1, asl #1	@ temp.570, <variable>.pic_distance,
	str	ip, [r0, #544]	@ temp.570, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.36980, temp.570,
	str	ip, [r0, #528]	@ temp.570, <variable>.Idx2Dist
	str	r2, [r0, #548]	@ D.36980, <variable>.Idx2Dist
	str	r2, [r0, #532]	@ D.36980, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L15:
	ldr	r3, [r0, #460]	@ prephitmp.530, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ prephitmp.530,
	beq	.L19	@,
	cmp	r3, #2	@ prephitmp.530,
	bne	.L5	@,
	ldr	ip, [r0, #84]	@ temp.542, <variable>.pRef
	add	r1, r0, #4	@ tmp156, pCodecInf,
	ldr	r3, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r1, ip	@ tmp156, temp.542
	ldrne	ip, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	ip, ip, asl #1	@ tmp158, <variable>.pic_distance,
	strne	ip, [r0, #520]	@ tmp158, <variable>.Idx2Dist
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp161, <variable>.pic_distance,
	str	r1, [r0, #528]	@ tmp161, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L17:
	ldr	r3, [r0, #84]	@ temp.555, <variable>.pRef
	add	ip, r0, #4	@ tmp165, pCodecInf,
	ldr	r1, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	ip, r3	@ tmp165, temp.555
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	ip, [r0, #532]	@ prephitmp.571, <variable>.Idx2Dist
	movne	ip, ip, asl #1	@ prephitmp.571, <variable>.pic_distance,
	strne	ip, [r0, #532]	@ prephitmp.571, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.36967, prephitmp.571,
	str	r2, [r0, #528]	@ D.36967, <variable>.Idx2Dist
	ldr	r3, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	str	r2, [r0, #548]	@ D.36967, <variable>.Idx2Dist
	mov	r1, r3, asl #1	@ temp.561, <variable>.pic_distance,
	str	r1, [r0, #544]	@ temp.561, <variable>.Idx2Dist
	str	r1, [r0, #524]	@ temp.561, <variable>.Idx2Dist
	add	r3, r1, #1	@ D.36969, temp.561,
	str	r3, [r0, #540]	@ D.36969, <variable>.Idx2Dist
	str	r3, [r0, #520]	@ D.36969, <variable>.Idx2Dist
	ldr	r2, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp171, <variable>.pic_distance,
	str	r1, [r0, #536]	@ tmp171, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L19:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r1, r0, #4	@ tmp153, pCodecInf,
	ldr	r3, [r0, #84]	@ D.36949, <variable>.pRef
	ldr	ip, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r1, r3	@ tmp153, D.36949
	mov	r2, ip, asl #1	@ tmp152, <variable>.pic_distance,
	str	r2, [r0, #520]	@ tmp152, <variable>.Idx2Dist
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r3, ip, asl #1	@ tmp155, <variable>.pic_distance,
	strne	r3, [r0, #524]	@ tmp155, <variable>.Idx2Dist
	b	.L5	@
	.fnend
	.size	AVS_UpdateTableIdx2Dist, .-AVS_UpdateTableIdx2Dist
	.global	__aeabi_idiv
	.align	2
	.global	AVS_UpdateTableMvEScale
	.type	AVS_UpdateTableMvEScale, %function
AVS_UpdateTableMvEScale:
	.fnstart
.LFB1384:
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
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L98	@,
	ldr	r3, [r0, #460]	@ prephitmp.632, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.632,
	moveq	r3, #512	@ tmp279,
	streq	r3, [r0, #616]	@ tmp279, <variable>.MvEScale
	beq	.L30	@,
	cmp	r3, #1	@ prephitmp.632,
	beq	.L99	@,
	cmp	r3, #2	@ prephitmp.632,
	beq	.L100	@,
.L30:
	mov	r0, #1	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L100:
	ldr	sl, [r0, #76]	@ temp.704, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r8, [r4, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r3, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r3, asl #1	@ CurDistIdx.946, <variable>.pic_distance,
	add	r6, r5, r0	@ pretmp.947, CurDistIdx.946,
	rsb	r5, r5, r0	@ pretmp.972, CurDistIdx.946,
	rsb	lr, r8, r6	@ tmp560, <variable>.Idx2Dist, pretmp.947
	mov	r9, lr, asl #23	@ CurBlkDist.950, tmp560,
	mov	r8, r9, lsr #23	@ CurBlkDist.950, CurBlkDist.950,
	cmp	r8, #0	@ CurBlkDist.950,
	movne	r1, r8	@, CurBlkDist.950
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, ip, r6	@ tmp568, <variable>.Idx2Dist, pretmp.947
	mov	r7, r6, asl #23	@ NeiBlkDist.956, tmp568,
	mov	r7, r7, lsr #23	@ NeiBlkDist.956, NeiBlkDist.956,
	cmp	r7, #0	@ NeiBlkDist.956,
	movne	r1, r7	@, NeiBlkDist.956
	mov	r9, r0	@ tmp566,
	mov	r0, #512	@,
	mul	r2, r8, r9	@ tmp567, CurBlkDist.950, tmp566
	moveq	r1, r0	@,
	str	r2, [r4, #552]	@ tmp567, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r1	@ tmp595, pretmp.972, <variable>.Idx2Dist
	mov	r6, ip, asl #23	@ CurBlkDist.975, tmp595,
	mov	r6, r6, lsr #23	@ CurBlkDist.975, CurBlkDist.975,
	cmp	r6, #0	@ CurBlkDist.975,
	movne	r1, r6	@, CurBlkDist.975
	mov	r3, r0	@ tmp574,
	mov	r0, #512	@,
	mul	r2, r7, r3	@ tmp594, NeiBlkDist.956, tmp574
	moveq	r1, r0	@,
	mul	r8, r8, r3	@ tmp575, CurBlkDist.950, tmp574
	mul	r7, r7, r9	@ tmp586, NeiBlkDist.956, tmp566
	str	r2, [r4, #564]	@ tmp594, <variable>.MvEScale
	str	r8, [r4, #556]	@ tmp575, <variable>.MvEScale
	str	r7, [r4, #560]	@ tmp586, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r1	@ tmp603, pretmp.972, <variable>.Idx2Dist
	mov	r2, ip, asl #23	@ NeiBlkDist.981, tmp603,
	mov	r5, r2, lsr #23	@ NeiBlkDist.981, NeiBlkDist.981,
	cmp	r5, #0	@ NeiBlkDist.981,
	movne	r1, r5	@, NeiBlkDist.981
	mov	r7, r0	@ tmp601,
	mov	r0, #512	@,
	mul	r3, r6, r7	@ tmp602, CurBlkDist.975, tmp601
	moveq	r1, r0	@,
	str	r3, [r4, #568]	@ tmp602, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r7	@ tmp621, NeiBlkDist.981, tmp601
	ldr	r2, [r4, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r1, [r4, #576]	@ tmp621, <variable>.MvEScale
	mul	r8, r5, r0	@ tmp629, NeiBlkDist.981, tmp609
	mul	r6, r6, r0	@ tmp610, CurBlkDist.975, tmp609
	mov	r0, #512	@,
	str	r8, [r4, #580]	@ tmp629, <variable>.MvEScale
	str	r6, [r4, #572]	@ tmp610, <variable>.MvEScale
	ldr	ip, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r3, ip, asl #1	@ tmp630, <variable>.pic_distance,
	add	r5, r3, #1	@ CurDistIdx.708, tmp630,
	add	r6, r5, r0	@ pretmp.638, CurDistIdx.708,
	rsb	r5, r5, r0	@ pretmp.644, CurDistIdx.708,
	rsb	r8, r2, r6	@ tmp632, <variable>.Idx2Dist, pretmp.638
	mov	sl, r8, asl #23	@ CurBlkDist.826, tmp632,
	mov	r8, sl, lsr #23	@ CurBlkDist.826, CurBlkDist.826,
	cmp	r8, #0	@ CurBlkDist.826,
	movne	r1, r8	@, CurBlkDist.826
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, r1, r6	@ tmp640, <variable>.Idx2Dist, pretmp.638
	mov	r7, r6, asl #23	@ NeiBlkDist.832, tmp640,
	mov	r7, r7, lsr #23	@ NeiBlkDist.832, NeiBlkDist.832,
	cmp	r7, #0	@ NeiBlkDist.832,
	movne	r1, r7	@, NeiBlkDist.832
	mov	sl, r0	@ tmp638,
	mov	r0, #512	@,
	mul	ip, r8, sl	@ tmp639, CurBlkDist.826, tmp638
	moveq	r1, r0	@,
	str	ip, [r4, #584]	@ tmp639, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r1, r5, r2	@ tmp659, pretmp.644, <variable>.Idx2Dist
	mov	r6, r1, asl #23	@ CurBlkDist.837, tmp659,
	mov	r6, r6, lsr #23	@ CurBlkDist.837, CurBlkDist.837,
	cmp	r6, #0	@ CurBlkDist.837,
	movne	r1, r6	@, CurBlkDist.837
	mov	r3, r0	@ tmp646,
	mov	r0, #512	@,
	mul	ip, r7, r3	@ tmp658, NeiBlkDist.832, tmp646
	moveq	r1, r0	@,
	mul	r8, r8, r3	@ tmp647, CurBlkDist.826, tmp646
	mul	r7, r7, sl	@ tmp685, NeiBlkDist.832, tmp638
	str	ip, [r4, #596]	@ tmp658, <variable>.MvEScale
	str	r8, [r4, #588]	@ tmp647, <variable>.MvEScale
	str	r7, [r4, #592]	@ tmp685, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r3, r5, r2	@ tmp667, pretmp.644, <variable>.Idx2Dist
	mov	r1, r3, asl #23	@ NeiBlkDist.843, tmp667,
	mov	r5, r1, lsr #23	@ NeiBlkDist.843, NeiBlkDist.843,
	cmp	r5, #0	@ NeiBlkDist.843,
	movne	r1, r5	@, NeiBlkDist.843
	mov	r7, r0	@ tmp665,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp666, CurBlkDist.837, tmp665
	moveq	r1, r0	@,
	str	ip, [r4, #600]	@ tmp666, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r3, r5, r0	@ tmp693, NeiBlkDist.843, tmp673
	mul	r0, r6, r0	@ tmp674, CurBlkDist.837, tmp673
	mul	r5, r5, r7	@ tmp698, NeiBlkDist.843, tmp665
	str	r3, [r4, #612]	@ tmp693, <variable>.MvEScale
	str	r0, [r4, #604]	@ tmp674, <variable>.MvEScale
	str	r5, [r4, #608]	@ tmp698, <variable>.MvEScale
	b	.L30	@
.L98:
	ldr	r2, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r3, [r0, #460]	@ prephitmp.632, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldr	r5, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r3, #1	@ prephitmp.632,
	mov	r5, r5, asl #1	@ CurDistIdx, <variable>.pic_distance,
	beq	.L101	@,
	cmp	r3, #2	@ prephitmp.632,
	bne	.L30	@,
	ldr	r6, [r0, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r0, #512	@,
	rsb	lr, r6, r5	@ tmp263, <variable>.Idx2Dist, CurDistIdx
	mov	r2, lr, asl #23	@ CurBlkDist.691, tmp263,
	mov	r6, r2, lsr #23	@ CurBlkDist.691, CurBlkDist.691,
	cmp	r6, #0	@ CurBlkDist.691,
	movne	r1, r6	@, CurBlkDist.691
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r5, r3	@ tmp272, CurDistIdx, <variable>.Idx2Dist
	mov	ip, r1, asl #23	@ CurBlkDist.694, tmp272,
	mov	r5, ip, lsr #23	@ CurBlkDist.694, CurBlkDist.694,
	cmp	r5, #0	@ CurBlkDist.694,
	movne	r1, r5	@, CurBlkDist.694
	moveq	r1, #512	@,
	mul	r6, r6, r0	@ tmp269, CurBlkDist.691,
	mov	r0, #512	@,
	str	r6, [r4, #552]	@ tmp269, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r0, r5, r0	@ tmp278, CurBlkDist.694,
	str	r0, [r4, #568]	@ tmp278, <variable>.MvEScale
	b	.L30	@
.L99:
	ldr	r9, [r0, #76]	@ temp.697, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r5, [r4, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r2, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	r9, [fp, #-48]	@,
	mov	r7, r2, asl #1	@ tmp280, <variable>.pic_distance,
	add	r7, r7, r0	@ pretmp.772, tmp280,
	rsb	r8, r5, r7	@ tmp282, <variable>.Idx2Dist, pretmp.772
	mov	lr, r8, asl #23	@ CurBlkDist.821, tmp282,
	mov	r8, lr, lsr #23	@ CurBlkDist.821, CurBlkDist.821,
	cmp	r8, #0	@ CurBlkDist.821,
	movne	r1, r8	@, CurBlkDist.821
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	ip, r1, r7	@ tmp290, <variable>.Idx2Dist, pretmp.772
	mov	r6, ip, asl #23	@ NeiBlkDist.862, tmp290,
	mov	r6, r6, lsr #23	@ NeiBlkDist.862, NeiBlkDist.862,
	cmp	r6, #0	@ NeiBlkDist.862,
	movne	r1, r6	@, NeiBlkDist.862
	mov	r9, r0	@ tmp288,
	mov	r0, #512	@,
	mul	sl, r8, r9	@ tmp289, CurBlkDist.821, tmp288
	moveq	r1, r0	@,
	str	sl, [r4, #552]	@ tmp289, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r3, r7	@ tmp298, <variable>.Idx2Dist, pretmp.772
	mov	r5, r2, asl #23	@ NeiBlkDist.867, tmp298,
	mov	r5, r5, lsr #23	@ NeiBlkDist.867, NeiBlkDist.867,
	cmp	r5, #0	@ NeiBlkDist.867,
	mov	sl, r0	@ tmp296,
	mov	r0, #512	@,
	mul	r1, r8, sl	@ tmp297, CurBlkDist.821, tmp296
	str	r1, [r4, #556]	@ tmp297, <variable>.MvEScale
	movne	r1, r5	@, NeiBlkDist.867
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r3, ip, r7	@ tmp306, <variable>.Idx2Dist, pretmp.772
	mov	r7, r3, asl #23	@ NeiBlkDist.872, tmp306,
	mov	r7, r7, lsr #23	@ NeiBlkDist.872, NeiBlkDist.872,
	cmp	r7, #0	@ NeiBlkDist.872,
	mov	r2, r0	@ tmp304,
	mov	r0, #512	@,
	mul	r1, r8, r2	@ tmp305, CurBlkDist.821, tmp304
	str	r1, [r4, #560]	@ tmp305, <variable>.MvEScale
	movne	r1, r7	@, NeiBlkDist.872
	moveq	r1, r0	@,
	str	r2, [fp, #-52]	@,
	bl	__aeabi_idiv	@
	mul	r2, r7, r9	@ tmp394, NeiBlkDist.872, tmp288
	mov	r3, r0	@ tmp312,
	mul	ip, r7, r0	@ tmp418, NeiBlkDist.872, tmp312
	mul	lr, r6, r3	@, NeiBlkDist.862, tmp312
	mul	r8, r8, r0	@ tmp313, CurBlkDist.821, tmp312
	mov	r0, #512	@,
	mul	r1, r5, r3	@ tmp383, NeiBlkDist.867, tmp312
	str	ip, [r4, #612]	@ tmp418, <variable>.MvEScale
	str	lr, [r4, #580]	@, <variable>.MvEScale
	mul	r3, r7, sl	@ tmp402, NeiBlkDist.872, tmp296
	str	r8, [r4, #564]	@ tmp313, <variable>.MvEScale
	ldr	r8, [fp, #-52]	@,
	mul	ip, r6, sl	@ tmp332, NeiBlkDist.862, tmp296
	str	r1, [r4, #596]	@ tmp383, <variable>.MvEScale
	str	r2, [r4, #600]	@ tmp394, <variable>.MvEScale
	mul	r1, r6, r9	@ tmp324, NeiBlkDist.862, tmp288
	str	r3, [r4, #604]	@ tmp402, <variable>.MvEScale
	mul	r2, r5, r8	@ tmp375, NeiBlkDist.867, tmp304
	str	ip, [r4, #572]	@ tmp332, <variable>.MvEScale
	mul	lr, r5, r9	@ tmp359, NeiBlkDist.867, tmp288
	mul	r7, r7, r8	@ tmp410, NeiBlkDist.872, tmp304
	str	r1, [r4, #568]	@ tmp324, <variable>.MvEScale
	mul	r6, r6, r8	@ tmp340, NeiBlkDist.862, tmp304
	str	r2, [r4, #592]	@ tmp375, <variable>.MvEScale
	mul	sl, r5, sl	@ tmp367, NeiBlkDist.867, tmp296
	str	lr, [r4, #584]	@ tmp359, <variable>.MvEScale
	str	r7, [r4, #608]	@ tmp410, <variable>.MvEScale
	ldr	r8, [r4, #536]	@, <variable>.Idx2Dist
	str	r6, [r4, #576]	@ tmp340, <variable>.MvEScale
	str	sl, [r4, #588]	@ tmp367, <variable>.MvEScale
	ldr	r3, [fp, #-48]	@,
	ldr	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, ip, asl #1	@ tmp419, <variable>.pic_distance,
	add	r7, r5, r0	@ pretmp.655, tmp419,
	add	r7, r7, #1	@ pretmp.655, pretmp.655,
	rsb	r9, r8, r7	@ tmp422,, pretmp.655
	mov	lr, r9, asl #23	@ CurBlkDist.724, tmp422,
	mov	r8, lr, lsr #23	@ CurBlkDist.724, CurBlkDist.724,
	cmp	r8, #0	@ CurBlkDist.724,
	movne	r1, r8	@, CurBlkDist.724
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r1, r7	@ tmp430, <variable>.Idx2Dist, pretmp.655
	mov	r6, r2, asl #23	@ NeiBlkDist.759, tmp430,
	mov	r6, r6, lsr #23	@ NeiBlkDist.759, NeiBlkDist.759,
	cmp	r6, #0	@ NeiBlkDist.759,
	movne	r1, r6	@, NeiBlkDist.759
	mov	r9, r0	@ tmp428,
	mov	r0, #512	@,
	mul	sl, r8, r9	@ tmp429, CurBlkDist.724, tmp428
	moveq	r1, r0	@,
	str	sl, [r4, #616]	@ tmp429, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	ip, r3, r7	@ tmp438, <variable>.Idx2Dist, pretmp.655
	mov	r5, ip, asl #23	@ NeiBlkDist.764, tmp438,
	mov	r5, r5, lsr #23	@ NeiBlkDist.764, NeiBlkDist.764,
	cmp	r5, #0	@ NeiBlkDist.764,
	mov	sl, r0	@ tmp436,
	mov	r0, #512	@,
	mul	r1, r8, sl	@ tmp437, CurBlkDist.724, tmp436
	str	r1, [r4, #620]	@ tmp437, <variable>.MvEScale
	movne	r1, r5	@, NeiBlkDist.764
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r1, r7	@ tmp446, <variable>.Idx2Dist, pretmp.655
	mov	r7, r2, asl #23	@ NeiBlkDist.769, tmp446,
	mov	r7, r7, lsr #23	@ NeiBlkDist.769, NeiBlkDist.769,
	cmp	r7, #0	@ NeiBlkDist.769,
	movne	r1, r7	@, NeiBlkDist.769
	mov	ip, r0	@ tmp444,
	mov	r0, #512	@,
	mul	r3, r8, ip	@ tmp445, CurBlkDist.724, tmp444
	moveq	r1, r0	@,
	str	r3, [r4, #624]	@ tmp445, <variable>.MvEScale
	str	ip, [fp, #-52]	@,
	bl	__aeabi_idiv	@
	mul	r1, r7, r9	@ tmp539, NeiBlkDist.769, tmp428
	mul	ip, r7, sl	@ tmp547, NeiBlkDist.769, tmp436
	mul	r2, r7, r0	@ tmp534, NeiBlkDist.769, tmp452
	mul	r3, r6, r0	@ tmp488, NeiBlkDist.759, tmp452
	mul	r8, r8, r0	@ tmp453, CurBlkDist.724, tmp452
	mul	r0, r5, r0	@ tmp523, NeiBlkDist.764, tmp452
	str	r2, [r4, #676]	@ tmp534, <variable>.MvEScale
	str	r3, [r4, #644]	@ tmp488, <variable>.MvEScale
	mul	r2, r6, r9	@ tmp464, NeiBlkDist.759, tmp428
	str	r8, [r4, #628]	@ tmp453, <variable>.MvEScale
	ldr	r3, [fp, #-52]	@,
	mul	r9, r5, r9	@ tmp499, NeiBlkDist.764, tmp428
	str	r0, [r4, #660]	@ tmp523, <variable>.MvEScale
	str	r1, [r4, #664]	@ tmp539, <variable>.MvEScale
	mul	r7, r7, r3	@ tmp555, NeiBlkDist.769, tmp444
	str	ip, [r4, #668]	@ tmp547, <variable>.MvEScale
	mul	r1, r6, sl	@ tmp472, NeiBlkDist.759, tmp436
	str	r2, [r4, #632]	@ tmp464, <variable>.MvEScale
	mul	r6, r6, r3	@ tmp480, NeiBlkDist.759, tmp444
	str	r9, [r4, #648]	@ tmp499, <variable>.MvEScale
	mul	sl, r5, sl	@ tmp507, NeiBlkDist.764, tmp436
	str	r7, [r4, #672]	@ tmp555, <variable>.MvEScale
	mul	r0, r5, r3	@ tmp515, NeiBlkDist.764, tmp444
	str	r1, [r4, #636]	@ tmp472, <variable>.MvEScale
	str	r6, [r4, #640]	@ tmp480, <variable>.MvEScale
	str	sl, [r4, #652]	@ tmp507, <variable>.MvEScale
	str	r0, [r4, #656]	@ tmp515, <variable>.MvEScale
	b	.L30	@
.L101:
	ldr	lr, [r0, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r5, r5, #512	@ pretmp.661, CurDistIdx,
	mov	r0, #512	@,
	rsb	r7, lr, r5	@ tmp226, <variable>.Idx2Dist, pretmp.661
	mov	r6, r7, asl #23	@ CurBlkDist.849, tmp226,
	mov	r6, r6, lsr #23	@ CurBlkDist.849, CurBlkDist.849,
	cmp	r6, #0	@ CurBlkDist.849,
	movne	r1, r6	@, CurBlkDist.849
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r2, r5	@ tmp234, <variable>.Idx2Dist, pretmp.661
	mov	r3, r1, asl #23	@ NeiBlkDist.855, tmp234,
	mov	r5, r3, lsr #23	@ NeiBlkDist.855, NeiBlkDist.855,
	cmp	r5, #0	@ NeiBlkDist.855,
	movne	r1, r5	@, NeiBlkDist.855
	mov	r7, r0	@ tmp232,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp233, CurBlkDist.849, tmp232
	moveq	r1, r0	@,
	str	ip, [r4, #552]	@ tmp233, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r0	@ tmp252, NeiBlkDist.855, tmp240
	mul	r0, r6, r0	@ tmp241, CurBlkDist.849, tmp240
	mul	r5, r5, r7	@ tmp257, NeiBlkDist.855, tmp232
	str	r1, [r4, #572]	@ tmp252, <variable>.MvEScale
	str	r0, [r4, #556]	@ tmp241, <variable>.MvEScale
	str	r5, [r4, #568]	@ tmp257, <variable>.MvEScale
	b	.L30	@
	.fnend
	.size	AVS_UpdateTableMvEScale, .-AVS_UpdateTableMvEScale
	.align	2
	.global	AVS_UpdateTableDirectScale
	.type	AVS_UpdateTableDirectScale, %function
AVS_UpdateTableDirectScale:
	.fnstart
.LFB1385:
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
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L147	@,
	ldr	r9, [r0, #80]	@ temp.1052, <variable>.pRef
	add	r6, r0, #4	@ temp.1043, pCodecInf,
	ldr	r7, [r0, #84]	@ temp.1118, <variable>.pRef
	ldr	sl, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r7	@ temp.1043, temp.1118
	moveq	r5, #0	@ ColRefDistIdx.1083,
	mov	sl, sl, asl #1	@ ColDistIdx.1042, <variable>.pic_distance,
	beq	.L111	@,
	ldr	r2, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r8, sl, #512	@ tmp340, ColDistIdx.1042,
	mov	r5, r2, asl #1	@ tmp189, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1083, tmp189,
	rsb	ip, r5, r8	@ tmp192, ColRefDistIdx.1083, tmp340
	mov	r0, ip, asl #23	@ ColBlkDist.1070, tmp192,
	mov	r1, r0, lsr #23	@ ColBlkDist.1070, ColBlkDist.1070,
	cmp	r1, #0	@ ColBlkDist.1070,
	moveq	r3, #32	@ tmp197,
	streq	r3, [r4, #680]	@ tmp197, <variable>.DirectScale
	bne	.L148	@,
.L110:
	cmp	r6, r7	@ temp.1043, temp.1118
	beq	.L111	@,
	ldr	r0, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	r1, #:lower16:510	@ ColBlkDist.1077,
	movt	r1, #:upper16:510	@ ColBlkDist.1077,
	mov	r5, r0, asl #1	@ ColRefDistIdx.1083, <variable>.pic_distance,
	rsb	r8, r5, r8	@ tmp200, ColRefDistIdx.1083, tmp340
	and	r1, r8, r1	@ ColBlkDist.1077, tmp200, ColBlkDist.1077
	cmp	r1, #0	@ ColBlkDist.1077,
	moveq	r3, #32	@ tmp205,
	streq	r3, [r4, #684]	@ tmp205, <variable>.DirectScale
	bne	.L149	@,
.L111:
	ldr	r8, [r4, #88]	@ D.37164, <variable>.pRef
	cmp	r6, r8	@ temp.1043, D.37164
	beq	.L113	@,
	ldr	r1, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	sl, sl, #512	@ tmp345, ColDistIdx.1042,
	mov	r5, r1, asl #1	@ tmp206, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1083, tmp206,
	rsb	r2, r5, sl	@ tmp209, ColRefDistIdx.1083, tmp345
	mov	ip, r2, asl #23	@ ColBlkDist.1086, tmp209,
	mov	r1, ip, lsr #23	@ ColBlkDist.1086, ColBlkDist.1086,
	cmp	r1, #0	@ ColBlkDist.1086,
	moveq	r3, #32	@ tmp214,
	streq	r3, [r4, #688]	@ tmp214, <variable>.DirectScale
	bne	.L150	@,
.L115:
	cmp	r6, r8	@ temp.1043, D.37164
	beq	.L113	@,
	ldr	ip, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	r0, #:lower16:510	@ ColBlkDist.1046,
	movt	r0, #:upper16:510	@ ColBlkDist.1046,
	mov	r5, ip, asl #1	@ ColRefDistIdx.1083, <variable>.pic_distance,
	rsb	sl, r5, sl	@ tmp217, ColRefDistIdx.1083, tmp345
	and	r1, sl, r0	@ ColBlkDist.1046, tmp217, ColBlkDist.1046
	cmp	r1, #0	@ ColBlkDist.1046,
	moveq	r3, #32	@ tmp219,
	streq	r3, [r4, #692]	@ tmp219, <variable>.DirectScale
	beq	.L113	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #692]	@, <variable>.DirectScale
.L113:
	ldr	sl, [r4, #796]	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	bne	.L151	@,
	ldr	r2, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r9	@ temp.1043, temp.1052
	mov	r3, r2, asl #1	@ temp.1054, <variable>.pic_distance,
	add	r9, r3, #1	@ ColDistIdx.1051, temp.1054,
	movne	r5, r3	@ ColRefDistIdx.1083, temp.1054
.L119:
	add	r3, r9, #512	@ tmp339, ColDistIdx.1051,
	rsb	r0, r5, r3	@ tmp232, ColRefDistIdx.1083, tmp339
	mov	r1, r0, asr #31	@ tmp233, tmp232,
	mov	ip, r1, lsr #23	@ tmp234, tmp233,
	add	r2, r0, ip	@ tmp235, tmp232, tmp234
	mov	r9, r2, asl #23	@ tmp236, tmp235,
	mov	r0, r9, lsr #23	@ tmp236, tmp236,
	subs	r2, r0, ip	@ ColBlkDist.1088, tmp236, tmp234
	bne	.L123	@,
.L122:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	r1, #32	@ tmp230,
	str	r1, [r4, #696]	@ tmp230, <variable>.DirectScale
	beq	.L152	@,
.L125:
	cmp	r6, r7	@ temp.1043, temp.1118
	beq	.L130	@,
	ldr	r5, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r5, asl #1	@ ColRefDistIdx.1083, <variable>.pic_distance,
	rsb	r2, r5, r3	@ tmp270, ColRefDistIdx.1083, tmp339
	mov	r9, r2, asr #31	@ tmp271, tmp270,
	mov	ip, r9, lsr #23	@ tmp272, tmp271,
	add	r1, r2, ip	@ tmp273, tmp270, tmp272
	mov	r0, r1, asl #23	@ tmp274, tmp273,
	mov	r2, r0, lsr #23	@ tmp274, tmp274,
	subs	r9, r2, ip	@ ColBlkDist.1099, tmp274, tmp272
	moveq	r2, #32	@ tmp280,
	streq	r2, [r4, #684]	@ tmp280, <variable>.DirectScale
	bne	.L153	@,
.L128:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	r0, #32	@ tmp257,
	str	r0, [r4, #700]	@ tmp257, <variable>.DirectScale
	beq	.L154	@,
.L132:
	cmp	r6, r8	@ temp.1043, D.37164
	beq	.L137	@,
	ldr	r1, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r1, asl #1	@ tmp295, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1083, tmp295,
	rsb	r0, r5, r3	@ tmp298, ColRefDistIdx.1083, tmp339
	mov	r7, r0, asr #31	@ tmp299, tmp298,
	mov	r1, r7, lsr #23	@ tmp300, tmp299,
	add	ip, r0, r1	@ tmp301, tmp298, tmp300
	mov	r2, ip, asl #23	@ tmp302, tmp301,
	mov	r0, r2, lsr #23	@ tmp302, tmp302,
	subs	r7, r0, r1	@ ColBlkDist.1114, tmp302, tmp300
	moveq	r0, #32	@ tmp308,
	streq	r0, [r4, #688]	@ tmp308, <variable>.DirectScale
	bne	.L155	@,
.L135:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	ip, #32	@ tmp285,
	str	ip, [r4, #704]	@ tmp285, <variable>.DirectScale
	beq	.L139	@,
.L157:
	cmp	r6, r8	@ temp.1043, D.37164
	beq	.L140	@,
	ldr	r2, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	sub	r1, r3, r2, asl #1	@ tmp313, tmp339, <variable>.pic_distance,
	mov	r5, r1, asr #31	@ tmp314, tmp313,
	mov	r2, r5, lsr #23	@ tmp315, tmp314,
	add	r0, r1, r2	@ tmp316, tmp313, tmp315
	mov	ip, r0, asl #23	@ tmp317, tmp316,
	mov	r3, ip, lsr #23	@ tmp317, tmp317,
	subs	r5, r3, r2	@ ColBlkDist, tmp317, tmp315
	moveq	r3, #32	@ tmp320,
	streq	r3, [r4, #692]	@ tmp320, <variable>.DirectScale
	bne	.L156	@,
.L142:
	mov	r2, #32	@ tmp334,
	str	r2, [r4, #708]	@ tmp334, <variable>.DirectScale
.L106:
	mov	r0, #1	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L151:
	ldr	r9, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r7	@ temp.1043, temp.1118
	mov	r9, r9, asl #1	@ ColDistIdx.1051, <variable>.pic_distance,
	beq	.L119	@,
	ldr	r3, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r3, asl #1	@ tmp239, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1083, tmp239,
	rsb	ip, r5, #512	@ tmp241, ColRefDistIdx.1083,
	add	r1, r9, ip	@ tmp242, ColDistIdx.1051, tmp241
	mov	r2, r1, asr #31	@ tmp243, tmp242,
	mov	ip, r2, lsr #23	@ tmp244, tmp243,
	add	r0, r1, ip	@ tmp245, tmp242, tmp244
	mov	r3, r0, asl #23	@ tmp246, tmp245,
	mov	r3, r3, lsr #23	@ tmp246, tmp246,
	subs	r2, r3, ip	@ ColBlkDist.1088, tmp246, tmp244
	addeq	r3, r9, #512	@ tmp339, ColDistIdx.1051,
	moveq	r2, #32	@ tmp252,
	streq	r2, [r4, #680]	@ tmp252, <variable>.DirectScale
	beq	.L122	@,
	mov	r1, r2	@, ColBlkDist.1088
	mov	r0, #16384	@,
	str	r2, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	add	r3, r9, #512	@ tmp339, ColDistIdx.1051,
	str	r0, [r4, #680]	@, <variable>.DirectScale
	ldr	r2, [fp, #-48]	@,
.L123:
	mov	r1, r2	@, ColBlkDist.1088
	mov	r0, #16384	@,
	str	r3, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #696]	@, <variable>.DirectScale
	ldr	r3, [fp, #-48]	@,
	bne	.L125	@,
.L152:
	cmp	r6, r7	@ temp.1043, temp.1118
	ldrne	r1, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r1, asl #1	@ tmp266, <variable>.pic_distance,
	addne	r5, r5, #1	@ ColRefDistIdx.1083, tmp266,
.L130:
	rsb	r0, r5, r3	@ tmp259, ColRefDistIdx.1083, tmp339
	mov	r9, r0, asr #31	@ tmp260, tmp259,
	mov	r9, r9, lsr #23	@ tmp261, tmp260,
	add	ip, r0, r9	@ tmp262, tmp259, tmp261
	mov	r2, ip, asl #23	@ tmp263, tmp262,
	mov	r1, r2, lsr #23	@ tmp263, tmp263,
	subs	r9, r1, r9	@ ColBlkDist.1099, tmp263, tmp261
	beq	.L128	@,
.L129:
	mov	r1, r9	@, ColBlkDist.1099
	mov	r0, #16384	@,
	str	r3, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #700]	@, <variable>.DirectScale
	ldr	r3, [fp, #-48]	@,
	bne	.L132	@,
.L154:
	cmp	r6, r7	@ temp.1043, temp.1118
	ldrne	r5, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r5, asl #1	@ ColRefDistIdx.1083, <variable>.pic_distance,
.L137:
	rsb	ip, r5, r3	@ tmp287, ColRefDistIdx.1083, tmp339
	mov	r7, ip, asr #31	@ tmp288, tmp287,
	mov	r7, r7, lsr #23	@ tmp289, tmp288,
	add	r2, ip, r7	@ tmp290, tmp287, tmp289
	mov	r1, r2, asl #23	@ tmp291, tmp290,
	mov	r0, r1, lsr #23	@ tmp291, tmp291,
	subs	r7, r0, r7	@ ColBlkDist.1114, tmp291, tmp289
	beq	.L135	@,
.L136:
	mov	r1, r7	@, ColBlkDist.1114
	mov	r0, #16384	@,
	str	r3, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #704]	@, <variable>.DirectScale
	ldr	r3, [fp, #-48]	@,
	bne	.L157	@,
.L139:
	cmp	r6, r8	@ temp.1043, D.37164
	ldrne	r5, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r5, asl #1	@ tmp324, <variable>.pic_distance,
	addne	r5, r5, #1	@ ColRefDistIdx.1083, tmp324,
.L140:
	rsb	r3, r5, r3	@ tmp327, ColRefDistIdx.1083, tmp339
	mov	r5, r3, asr #31	@ tmp328, tmp327,
	mov	ip, r5, lsr #23	@ tmp329, tmp328,
	add	r1, r3, ip	@ tmp330, tmp327, tmp329
	mov	r0, r1, asl #23	@ tmp331, tmp330,
	mov	r3, r0, lsr #23	@ tmp331, tmp331,
	subs	r5, r3, ip	@ ColBlkDist, tmp331, tmp329
	beq	.L142	@,
.L143:
	mov	r1, r5	@, ColBlkDist
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #708]	@, <variable>.DirectScale
	b	.L106	@
.L150:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #688]	@, <variable>.DirectScale
	b	.L115	@
.L149:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #684]	@, <variable>.DirectScale
	b	.L111	@
.L148:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #680]	@, <variable>.DirectScale
	b	.L110	@
.L147:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r5, r0, #4	@ D.37122, pCodecInf,
	ldr	r3, [r0, #84]	@ temp.1129, <variable>.pRef
	ldr	r6, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r5, r3	@ D.37122, temp.1129
	mov	r6, r6, asl #1	@ ColDistIdx, <variable>.pic_distance,
	beq	.L104	@,
	ldr	r0, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	ip, r6, #512	@ tmp169, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist.1135,
	movt	r1, #:upper16:510	@ ColBlkDist.1135,
	sub	r3, ip, r0, asl #1	@ tmp172, tmp169, <variable>.pic_distance,
	and	r1, r3, r1	@ ColBlkDist.1135, tmp172, ColBlkDist.1135
	cmp	r1, #0	@ ColBlkDist.1135,
	moveq	r3, #32	@ tmp177,
	streq	r3, [r4, #680]	@ tmp177, <variable>.DirectScale
	bne	.L158	@,
.L104:
	ldr	r3, [r4, #88]	@ D.37124, <variable>.pRef
	cmp	r5, r3	@ D.37122, D.37124
	beq	.L106	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r6, r6, #512	@ tmp178, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist.1038,
	movt	r1, #:upper16:510	@ ColBlkDist.1038,
	sub	r6, r6, r2, asl #1	@ tmp181, tmp178, <variable>.pic_distance,
	and	r1, r6, r1	@ ColBlkDist.1038, tmp181, ColBlkDist.1038
	cmp	r1, #0	@ ColBlkDist.1038,
	moveq	r2, #32	@ tmp183,
	streq	r2, [r4, #684]	@ tmp183, <variable>.DirectScale
	beq	.L106	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #684]	@, <variable>.DirectScale
	b	.L106	@
.L156:
	mov	r0, #16384	@,
	mov	r1, r5	@, ColBlkDist
	bl	__aeabi_idiv	@
	str	r0, [r4, #692]	@, <variable>.DirectScale
	b	.L143	@
.L155:
	mov	r0, #16384	@,
	mov	r1, r7	@, ColBlkDist.1114
	str	r3, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #688]	@, <variable>.DirectScale
	ldr	r3, [fp, #-48]	@,
	b	.L136	@
.L153:
	mov	r0, #16384	@,
	mov	r1, r9	@, ColBlkDist.1099
	str	r3, [fp, #-48]	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #684]	@, <variable>.DirectScale
	ldr	r3, [fp, #-48]	@,
	b	.L129	@
.L158:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #680]	@, <variable>.DirectScale
	b	.L104	@
	.fnend
	.size	AVS_UpdateTableDirectScale, .-AVS_UpdateTableDirectScale
	.align	2
	.global	AVS_UpdateTableSymScale
	.type	AVS_UpdateTableSymScale, %function
AVS_UpdateTableSymScale:
	.fnstart
.LFB1386:
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
	ldr	r3, [r0, #84]	@ D.37193, <variable>.pRef
	add	r2, r0, #4	@ tmp165, pCodecInf,
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r2, r3	@ tmp165, D.37193
	moveq	r5, #0	@ D.37196,
	beq	.L161	@,
	ldrb	r5, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L169	@,
	ldr	r5, [r0, #76]	@ temp.1196, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r2, [r4, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	ip, [r4, #532]	@ BlkDistBw.1224, <variable>.Idx2Dist
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ CurDistIdx.1218, <variable>.pic_distance,
	add	r7, r6, r0	@ pretmp.1219, CurDistIdx.1218,
	rsb	r6, r6, r0	@ pretmp.1220, CurDistIdx.1218,
	rsb	r1, r2, r7	@ temp.1222, <variable>.Idx2Dist, pretmp.1219
	add	r8, ip, r6	@ temp.1226, BlkDistBw.1224, pretmp.1220
	mov	lr, r1, asl #23	@ BlkDistFw.1223, temp.1222,
	mov	r1, lr, lsr #23	@ BlkDistFw.1223, BlkDistFw.1223,
	cmp	r1, #0	@ BlkDistFw.1223,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r8, asl #23	@ tmp190, temp.1226,
	ldr	r2, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r8, r3, lsr #23	@ tmp190, tmp190,
	ldr	ip, [r4, #528]	@ BlkDistBw.1232, <variable>.Idx2Dist
	rsb	r7, r2, r7	@ temp.1230, <variable>.Idx2Dist, pretmp.1219
	add	r6, ip, r6	@ temp.1234, BlkDistBw.1232, pretmp.1220
	mov	r1, r7, asl #23	@ BlkDistFw.1231, temp.1230,
	mov	r1, r1, lsr #23	@ BlkDistFw.1231, BlkDistFw.1231,
	cmp	r1, #0	@ BlkDistFw.1231,
	moveq	r1, #512	@,
	mul	r8, r8, r0	@ tmp192, tmp190,
	mov	r0, #512	@,
	str	r8, [r4, #712]	@ tmp192, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r6, asl #23	@ tmp199, temp.1234,
	ldr	r1, [r4, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r2, r3, lsr #23	@ tmp199, tmp199,
	ldr	r3, [r4, #548]	@ BlkDistBw.1211, <variable>.Idx2Dist
	mul	ip, r2, r0	@ tmp201, tmp199,
	mov	r0, #512	@,
	str	ip, [r4, #716]	@ tmp201, <variable>.SymScale
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ tmp202, <variable>.pic_distance,
	add	r5, r6, #1	@ CurDistIdx.1199, tmp202,
	add	r6, r5, r0	@ pretmp.1180, CurDistIdx.1199,
	rsb	r5, r5, r0	@ pretmp.1214, CurDistIdx.1199,
	rsb	r2, r1, r6	@ temp.1212, <variable>.Idx2Dist, pretmp.1180
	add	r7, r3, r5	@ temp.1208, BlkDistBw.1211, pretmp.1214
	mov	ip, r2, asl #23	@ BlkDistFw.1210, temp.1212,
	mov	r1, ip, lsr #23	@ BlkDistFw.1210, BlkDistFw.1210,
	cmp	r1, #0	@ BlkDistFw.1210,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r7, asl #23	@ tmp210, temp.1208,
	ldr	r1, [r4, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r7, r3, lsr #23	@ tmp210, tmp210,
	ldr	r2, [r4, #544]	@ BlkDistBw.1203, <variable>.Idx2Dist
	rsb	r6, r1, r6	@ temp.1201, <variable>.Idx2Dist, pretmp.1180
	add	r5, r2, r5	@ temp.1204, BlkDistBw.1203, pretmp.1214
	mov	ip, r6, asl #23	@ BlkDistFw.1193, temp.1201,
	mov	r1, ip, lsr #23	@ BlkDistFw.1193, BlkDistFw.1193,
	cmp	r1, #0	@ BlkDistFw.1193,
	moveq	r1, #512	@,
	mul	r7, r7, r0	@ tmp212, tmp210,
	mov	r0, #512	@,
	str	r7, [r4, #720]	@ tmp212, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r5, asl #23	@ tmp219, temp.1204,
	mov	r5, #1	@ D.37196,
	mov	r2, r3, lsr #23	@ tmp219, tmp219,
	mul	r1, r2, r0	@ tmp221, tmp219,
	str	r1, [r4, #724]	@ tmp221, <variable>.SymScale
.L161:
	mov	r0, r5	@, D.37196
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L169:
	ldr	lr, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #:lower16:510	@ BlkDistFw,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	mov	r0, #512	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movt	r1, #:upper16:510	@ BlkDistFw,
	ldr	r6, [lr, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	lr, [ip, #8]	@ D.37208, <variable>.pic_distance
	mov	r3, r6, asl #1	@ CurDistIdx, <variable>.pic_distance,
	add	ip, r3, r0	@ tmp169, CurDistIdx,
	rsb	r6, r3, lr, asl #1	@, tmp175, CurDistIdx, D.37208,
	add	r6, r6, r0	@ D.37211, tmp175,
	sub	lr, ip, r2, asl #1	@ D.37206, tmp169, <variable>.pic_distance,
	and	r1, lr, r1	@ BlkDistFw, D.37206, BlkDistFw
	cmp	r1, #0	@ BlkDistFw,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	movw	ip, #:lower16:510	@ tmp180,
	movt	ip, #:upper16:510	@ tmp180,
	and	r1, r6, ip	@ tmp180, D.37211, tmp180
	mul	r3, r1, r0	@ tmp182, tmp180,
	mov	r0, r5	@, D.37196
	str	r3, [r4, #712]	@ tmp182, <variable>.SymScale
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdateTableSymScale, .-AVS_UpdateTableSymScale
	.align	2
	.global	AVS_UpdateTabBBlkDist
	.type	AVS_UpdateTabBBlkDist, %function
AVS_UpdateTabBBlkDist:
	.fnstart
.LFB1387:
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
	ldr	r2, [r0, #84]	@ D.37243, <variable>.pRef
	add	r1, r0, #4	@ tmp155, pCodecInf,
	mov	r3, r0	@ pCodecInf, pCodecInf
	cmp	r1, r2	@ tmp155, D.37243
	moveq	r0, #0	@ D.37246,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldrb	r0, [r3, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r0, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L175	@,
	ldr	r5, [r3, #76]	@ temp.1294, <variable>.pCurFrm
	mov	r0, #1	@ D.37246,
	ldr	r8, [r3, #520]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r7, [r3, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r6, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r3, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r2, [r3, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r4, r6, asl r0	@ CurDistIdx.1312, <variable>.pic_distance,
	ldr	r6, [r3, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r4, #512	@ pretmp.1314, CurDistIdx.1312,
	add	r4, r4, #512	@ pretmp.1313, CurDistIdx.1312,
	rsb	ip, ip, r4	@ temp.1322, <variable>.Idx2Dist, pretmp.1313
	add	r2, r1, r2	@ temp.1325, pretmp.1314, <variable>.Idx2Dist
	rsb	r4, r8, r4	@ temp.1316, <variable>.Idx2Dist, pretmp.1313
	add	r1, r1, r7	@ temp.1319, pretmp.1314, <variable>.Idx2Dist
	mov	r2, r2, asl #23	@ tmp181, temp.1325,
	mov	ip, ip, asl #23	@ tmp179, temp.1322,
	mov	r1, r1, asl #23	@ tmp175, temp.1319,
	mov	r4, r4, asl #23	@ tmp173, temp.1316,
	mov	ip, ip, lsr #23	@ tmp179, tmp179,
	str	ip, [r3, #732]	@ tmp179, <variable>.BBlkDist
	mov	r4, r4, lsr #23	@ tmp173, tmp173,
	mov	ip, r1, lsr #23	@ tmp175, tmp175,
	str	r4, [r3, #728]	@ tmp173, <variable>.BBlkDist
	mov	r4, r2, lsr #23	@ tmp181, tmp181,
	str	ip, [r3, #736]	@ tmp175, <variable>.BBlkDist
	str	r4, [r3, #740]	@ tmp181, <variable>.BBlkDist
	ldr	r2, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	r4, [r3, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r5, [r3, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r1, r2, asl r0	@ tmp183, <variable>.pic_distance,
	ldr	r2, [r3, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r1, r0	@ CurDistIdx.1297, tmp183,
	rsb	r1, ip, #512	@ pretmp.1279, CurDistIdx.1297,
	add	ip, ip, #512	@ pretmp.1277, CurDistIdx.1297,
	rsb	r4, r4, ip	@ temp.1299, <variable>.Idx2Dist, pretmp.1277
	add	r2, r1, r2	@ temp.1303, pretmp.1279, <variable>.Idx2Dist
	rsb	ip, r6, ip	@ temp.1309, <variable>.Idx2Dist, pretmp.1277
	add	r1, r1, r5	@ temp.1306, pretmp.1279, <variable>.Idx2Dist
	mov	r2, r2, asl #23	@ tmp195, temp.1303,
	mov	r4, r4, asl #23	@ tmp193, temp.1299,
	mov	r1, r1, asl #23	@ tmp189, temp.1306,
	mov	ip, ip, asl #23	@ tmp187, temp.1309,
	mov	r4, r4, lsr #23	@ tmp193, tmp193,
	str	r4, [r3, #748]	@ tmp193, <variable>.BBlkDist
	mov	ip, ip, lsr #23	@ tmp187, tmp187,
	str	ip, [r3, #744]	@ tmp187, <variable>.BBlkDist
	mov	ip, r1, lsr #23	@ tmp189, tmp189,
	mov	r1, r2, lsr #23	@ tmp195, tmp195,
	str	ip, [r3, #752]	@ tmp189, <variable>.BBlkDist
	str	r1, [r3, #756]	@ tmp195, <variable>.BBlkDist
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L175:
	ldr	r6, [r3, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #:lower16:510	@ tmp166,
	ldr	r5, [r3, #80]	@ <variable>.pRef, <variable>.pRef
	movt	r1, #:upper16:510	@ tmp166,
	ldr	r4, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	r6, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	ip, ip, asl #1	@ CurDistIdx, <variable>.pic_distance,
	add	r5, ip, #512	@ tmp159, CurDistIdx,
	rsb	ip, ip, r6, asl #1	@, tmp165, CurDistIdx, <variable>.pic_distance,
	and	r2, ip, r1	@ tmp168, tmp165, tmp168
	str	r2, [r3, #736]	@ tmp168, <variable>.BBlkDist
	sub	r2, r5, r4, asl #1	@ D.37256, tmp159, <variable>.pic_distance,
	and	ip, r2, r1	@ tmp166, D.37256, tmp166
	str	ip, [r3, #728]	@ tmp166, <variable>.BBlkDist
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdateTabBBlkDist, .-AVS_UpdateTabBBlkDist
	.align	2
	.global	AVS_UpdatePmvTable
	.type	AVS_UpdatePmvTable, %function
AVS_UpdatePmvTable:
	.fnstart
.LFB1388:
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
	ldr	r5, [r0, #460]	@ <variable>.Syntax.syn_pic.derived_pic_coding_type, <variable>.Syntax.syn_pic.derived_pic_coding_type
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L179	@,
	bcs	.L185	@,
	ldrb	r5, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L184	@,
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, #1	@ D.37283,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L185:
	cmp	r5, #2	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	movne	r0, #0	@ D.37283,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableDirectScale	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTabBBlkDist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableSymScale	@
	mov	r0, #1	@ D.37283,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L179:
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
.L184:
	mov	r0, r5	@ D.37283, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdatePmvTable, .-AVS_UpdatePmvTable
	.align	2
	.global	AVS_VerifyMemPara
	.type	AVS_VerifyMemPara, %function
AVS_VerifyMemPara:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVS_VerifyMemPara, .-AVS_VerifyMemPara
	.align	2
	.global	AVSDEC_Destroy
	.type	AVSDEC_Destroy, %function
AVSDEC_Destroy:
	.fnstart
.LFB1391:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Destroy, .-AVSDEC_Destroy
	.align	2
	.global	AVS_GetPacketState
	.type	AVS_GetPacketState, %function
AVS_GetPacketState:
	.fnstart
.LFB1401:
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
	movw	r3, #16424	@ tmp136,
	ldr	r0, [r0, r3]	@ <variable>.IsPackWaitDec, <variable>.IsPackWaitDec
	subs	r0, r0, #1	@, <variable>.IsPackWaitDec,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVS_GetPacketState, .-AVS_GetPacketState
	.align	2
	.global	Avs_Vfmw_WQMatrix
	.type	Avs_Vfmw_WQMatrix, %function
Avs_Vfmw_WQMatrix:
	.fnstart
.LFB1402:
	@ args = 0, pretend = 0, frame = 560
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #564
	sub	sp, sp, #564	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r2, [r0, #140]	@ temp.1547, <variable>.syn_pic.weighting_quant_param_index
	sub	ip, fp, #52	@ tmp1946,,
	sub	r1, fp, #64	@ tmp1948,,
	cmp	r2, #1	@ temp.1547,
	mov	r3, #0	@ tmp246,
	str	r3, [ip], #4	@ tmp246, quant_param_undetail
	str	r3, [r1], #4	@ tmp246, quant_param_detail
	str	r3, [ip, #0]	@ tmp246, quant_param_undetail
	str	r3, [r1, #0]	@ tmp246, quant_param_detail
	str	r3, [fp, #-56]	@ tmp246, quant_param_undetail
	str	r3, [fp, #-68]	@ tmp246, quant_param_detail
	beq	.L227	@,
	ldr	r1, [r0, #124]	@ prephitmp.1454, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r1, #0	@ prephitmp.1454,
	beq	.L228	@,
.L194:
	cmp	r2, #2	@ temp.1547,
	beq	.L199	@,
	cmp	r1, #0	@ prephitmp.1454,
	bne	.L198	@,
	cmp	r2, #3	@ temp.1547,
	movwne	r3, #:lower16:.LANCHOR0	@ tmp1949,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp1949,
	beq	.L199	@,
.L197:
	ldrh	r1, [r3, #22]	@, wq_param_default
	cmp	r2, #0	@ temp.1547,
	ldrh	r4, [r3, #0]	@, wq_param_default
	ldrh	r8, [r3, #2]	@, wq_param_default
	strh	r1, [fp, #-70]	@ movhi	@, wq_param
	strh	r4, [fp, #-92]	@ movhi	@, wq_param
	strh	r8, [fp, #-90]	@ movhi	@, wq_param
	ldrh	ip, [r3, #4]	@, wq_param_default
	ldrh	r9, [r3, #6]	@, wq_param_default
	ldrh	sl, [r3, #8]	@, wq_param_default
	ldrh	r6, [r3, #10]	@, wq_param_default
	ldrh	r7, [r3, #12]	@, wq_param_default
	ldrh	r5, [r3, #14]	@, wq_param_default
	ldrh	r1, [r3, #16]	@, wq_param_default
	ldrh	r4, [r3, #18]	@, wq_param_default
	ldrh	r8, [r3, #20]	@, wq_param_default
	strh	ip, [fp, #-88]	@ movhi	@, wq_param
	strh	r9, [fp, #-86]	@ movhi	@, wq_param
	strh	sl, [fp, #-84]	@ movhi	@, wq_param
	strh	r6, [fp, #-82]	@ movhi	@, wq_param
	strh	r7, [fp, #-80]	@ movhi	@, wq_param
	strh	r5, [fp, #-78]	@ movhi	@, wq_param
	strh	r1, [fp, #-76]	@ movhi	@, wq_param
	strh	r4, [fp, #-74]	@ movhi	@, wq_param
	strh	r8, [fp, #-72]	@ movhi	@, wq_param
	beq	.L202	@,
	cmp	r2, #1	@ temp.1547,
	beq	.L225	@,
	cmp	r2, #2	@ temp.1547,
	beq	.L226	@,
	cmp	r2, #3	@ temp.1547,
	beq	.L229	@,
.L202:
	mov	r3, #0	@ ivtmp.1527,
.L205:
	add	sl, r3, #2	@ tmp1944, ivtmp.1527,
	add	r6, r0, r3	@ tmp475, pSyntax, ivtmp.1527
	add	r3, sl, #2	@ ivtmp.1527, tmp1944,
	add	r5, r0, sl	@ tmp1951, pSyntax, tmp1944
	cmp	r3, #128	@ ivtmp.1527,
	mov	r7, #128	@ movhi	@,
	strh	r7, [r6, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	strh	r7, [r5, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	bne	.L205	@,
	ldr	r9, [r0, #120]	@ <variable>.syn_pic.weighting_quant_flag, <variable>.syn_pic.weighting_quant_flag
	cmp	r9, #0	@ <variable>.syn_pic.weighting_quant_flag,
	beq	.L207	@,
	ldr	ip, [r0, #144]	@ pretmp.1453, <variable>.syn_pic.weighting_quant_model
	movw	r1, #:lower16:.LANCHOR1	@ tmp479,
	movt	r1, #:upper16:.LANCHOR1	@ tmp479,
	sub	r9, fp, #44	@,,
	movw	r8, #:lower16:-304	@ tmp480,
	movt	r8, #:upper16:-304	@ tmp480,
	add	r3, r1, ip, asl #6	@, tmp490, tmp479, pretmp.1453,
	movw	r7, #:lower16:-302	@ tmp492,
	movt	r7, #:upper16:-302	@ tmp492,
	cmp	r2, #0	@ temp.1547,
	ldrb	r5, [r3, #2]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	sl, [r3, #8]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r6, [r3, #4]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [fp, #-400]	@, %sfp
	ldrb	r5, [r1, ip, asl #6]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r4, [fp, #-400]	@, %sfp
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [fp, #-404]	@, %sfp
	movw	r5, #:lower16:-298	@,
	str	sl, [fp, #-540]	@, %sfp
	add	sl, r9, r4, asl #1	@,,,,
	ldr	r9, [fp, #-404]	@, %sfp
	movt	r5, #:upper16:-298	@,
	ldrb	ip, [r3, #3]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r4, [r3, #5]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [fp, #-408]	@, %sfp
	str	sl, [fp, #-384]	@, %sfp
	sub	sl, fp, #44	@,,
	add	r1, sl, r9, asl #1	@,,,,
	str	r5, [fp, #-444]	@, %sfp
	str	r1, [fp, #-376]	@, %sfp
	ldr	r5, [fp, #-408]	@, %sfp
	ldrb	r1, [r3, #7]	@ zero_extendqisi2	@, WeightQuantModel
	str	ip, [fp, #-436]	@, %sfp
	str	r4, [fp, #-552]	@, %sfp
	sub	r4, fp, #44	@,,
	ldrb	ip, [r3, #6]	@ zero_extendqisi2	@, WeightQuantModel
	add	sl, r4, r5, asl #1	@,,,,
	ldr	r9, [fp, #-436]	@, %sfp
	ldrb	r4, [r3, #9]	@ zero_extendqisi2	@, WeightQuantModel
	str	sl, [fp, #-380]	@, %sfp
	str	r1, [fp, #-544]	@, %sfp
	ldrb	sl, [r3, #10]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r1, [r3, #11]	@ zero_extendqisi2	@, WeightQuantModel
	str	ip, [fp, #-548]	@, %sfp
	sub	ip, fp, #44	@,,
	add	r5, ip, r9, asl #1	@,,,,
	str	r6, [fp, #-440]	@, %sfp
	str	r5, [fp, #-388]	@, %sfp
	sub	ip, fp, #44	@,,
	str	r4, [fp, #-536]	@, %sfp
	movw	r6, #:lower16:-300	@ tmp502,
	str	sl, [fp, #-532]	@, %sfp
	movt	r6, #:upper16:-300	@ tmp502,
	str	r1, [fp, #-528]	@, %sfp
	sub	r1, fp, #44	@,,
	ldr	r9, [fp, #-440]	@, %sfp
	movw	r4, #:lower16:-296	@ tmp524,
	ldr	sl, [fp, #-552]	@, %sfp
	movt	r4, #:upper16:-296	@ tmp524,
	add	r5, ip, r9, asl #1	@,,,,
	str	r5, [fp, #-392]	@, %sfp
	add	ip, r1, sl, asl #1	@,,,,
	ldr	sl, [fp, #-548]	@, %sfp
	sub	r1, fp, #44	@,,
	str	ip, [fp, #-396]	@, %sfp
	movw	r5, #:lower16:-292	@,
	movt	r5, #:upper16:-292	@,
	add	ip, r1, sl, asl #1	@,,,,
	ldr	sl, [fp, #-544]	@, %sfp
	sub	r1, fp, #44	@,,
	str	ip, [fp, #-412]	@, %sfp
	str	r5, [fp, #-352]	@, %sfp
	movw	r5, #:lower16:-290	@,
	add	ip, r1, sl, asl #1	@,,,,
	ldr	sl, [fp, #-540]	@, %sfp
	sub	r1, fp, #44	@,,
	str	ip, [fp, #-416]	@, %sfp
	movt	r5, #:upper16:-290	@,
	str	r5, [fp, #-356]	@, %sfp
	add	ip, r1, sl, asl #1	@,,,,
	ldr	sl, [fp, #-536]	@, %sfp
	sub	r1, fp, #44	@,,
	str	ip, [fp, #-420]	@, %sfp
	movw	r5, #:lower16:-288	@,
	movt	r5, #:upper16:-288	@,
	add	ip, r1, sl, asl #1	@,,,,
	ldr	sl, [fp, #-532]	@, %sfp
	sub	r1, fp, #44	@,,
	str	ip, [fp, #-424]	@, %sfp
	str	r5, [fp, #-364]	@, %sfp
	movw	r5, #:lower16:-286	@,
	add	ip, r1, sl, asl #1	@,,,,
	ldr	r1, [fp, #-528]	@, %sfp
	movt	r5, #:upper16:-286	@,
	str	r5, [fp, #-360]	@, %sfp
	movw	r5, #:lower16:-284	@,
	movt	r5, #:upper16:-284	@,
	str	r5, [fp, #-368]	@, %sfp
	movw	r5, #:lower16:-282	@,
	movt	r5, #:upper16:-282	@,
	str	r5, [fp, #-372]	@, %sfp
	ldr	r5, [fp, #-376]	@, %sfp
	movw	r9, #:lower16:-294	@ tmp536,
	str	ip, [fp, #-428]	@, %sfp
	sub	ip, fp, #44	@,,
	add	sl, ip, r1, asl #1	@,,,,
	ldr	ip, [fp, #-380]	@, %sfp
	ldrh	r1, [r5, #-48]	@, wq_param
	movt	r9, #:upper16:-294	@ tmp536,
	str	sl, [fp, #-432]	@, %sfp
	sub	sl, fp, #44	@,,
	ldrh	r5, [ip, #-48]	@, wq_param
	sub	ip, fp, #44	@,,
	strh	r1, [sl, r8]	@ movhi	@, wq_matrix
	ldr	r8, [fp, #-384]	@, %sfp
	strh	r5, [sl, r7]	@ movhi	@, wq_matrix
	ldr	r5, [fp, #-388]	@, %sfp
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	sl, [fp, #-444]	@, %sfp
	ldrh	r7, [r5, #-48]	@, wq_param
	sub	r5, fp, #44	@,,
	strh	r1, [ip, r6]	@ movhi	@, wq_matrix
	sub	r1, fp, #44	@,,
	strh	r7, [r1, sl]	@ movhi	@, wq_matrix
	ldr	r8, [fp, #-392]	@, %sfp
	ldr	ip, [fp, #-396]	@, %sfp
	ldr	sl, [fp, #-412]	@, %sfp
	ldrh	r6, [r8, #-48]	@, wq_param
	sub	r8, fp, #44	@,,
	ldrh	r7, [ip, #-48]	@, wq_param
	strh	r6, [r1, r4]	@ movhi	@, wq_matrix
	strh	r7, [r5, r9]	@ movhi	@, wq_matrix
	sub	r5, fp, #44	@,,
	ldrh	r1, [sl, #-48]	@, wq_param
	ldr	r6, [fp, #-352]	@, %sfp
	ldr	r4, [fp, #-416]	@, %sfp
	ldr	r7, [fp, #-420]	@, %sfp
	strh	r1, [r8, r6]	@ movhi	@, wq_matrix
	sub	r8, fp, #44	@,,
	ldrh	ip, [r4, #-48]	@, wq_param
	sub	r4, fp, #44	@,,
	ldrh	r1, [r7, #-48]	@, wq_param
	sub	r7, fp, #44	@,,
	ldr	r9, [fp, #-356]	@, %sfp
	ldr	sl, [fp, #-364]	@, %sfp
	ldr	r6, [fp, #-424]	@, %sfp
	strh	ip, [r5, r9]	@ movhi	@, wq_matrix
	strh	r1, [r8, sl]	@ movhi	@, wq_matrix
	ldrh	ip, [r6, #-48]	@, wq_param
	sub	r6, fp, #44	@,,
	ldr	r9, [fp, #-360]	@, %sfp
	ldr	r5, [fp, #-428]	@, %sfp
	ldr	r1, [fp, #-432]	@, %sfp
	strh	ip, [r4, r9]	@ movhi	@, wq_matrix
	ldrh	sl, [r5, #-48]	@, wq_param
	movw	r5, #:lower16:-280	@,
	ldrh	r4, [r1, #-48]	@, wq_param
	movt	r5, #:upper16:-280	@,
	ldr	r8, [fp, #-368]	@, %sfp
	movw	r1, #:lower16:-278	@,
	ldr	ip, [fp, #-372]	@, %sfp
	movt	r1, #:upper16:-278	@,
	strh	sl, [r7, r8]	@ movhi	@, wq_matrix
	strh	r4, [r6, ip]	@ movhi	@, wq_matrix
	sub	ip, fp, #44	@,,
	ldrb	sl, [r3, #16]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r6, [r3, #12]	@ zero_extendqisi2	@, WeightQuantModel
	str	sl, [fp, #-508]	@, %sfp
	str	r6, [fp, #-524]	@, %sfp
	add	r9, ip, r6, asl #1	@,,,,
	ldrb	r7, [r3, #14]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	sl, [r3, #13]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r8, [r3, #15]	@ zero_extendqisi2	@, WeightQuantModel
	str	r7, [fp, #-516]	@, %sfp
	sub	r7, fp, #44	@,,
	ldr	ip, [fp, #-516]	@, %sfp
	ldrb	r4, [r3, #17]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [fp, #-428]	@, %sfp
	str	r9, [fp, #-368]	@, %sfp
	sub	r9, fp, #44	@,,
	ldrb	r5, [r3, #18]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [fp, #-512]	@, %sfp
	add	r8, r7, sl, asl #1	@,,,,
	str	sl, [fp, #-520]	@, %sfp
	add	sl, r9, ip, asl #1	@,,,,
	ldrb	r7, [r3, #23]	@ zero_extendqisi2	@, WeightQuantModel
	sub	r9, fp, #44	@,,
	ldr	ip, [fp, #-508]	@, %sfp
	str	r1, [fp, #-444]	@, %sfp
	ldrb	r1, [r3, #20]	@ zero_extendqisi2	@, WeightQuantModel
	str	r4, [fp, #-504]	@, %sfp
	str	r5, [fp, #-500]	@, %sfp
	ldrb	r4, [r3, #21]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [fp, #-372]	@, %sfp
	ldr	r8, [fp, #-512]	@, %sfp
	ldrb	r6, [r3, #19]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r5, [r3, #22]	@ zero_extendqisi2	@, WeightQuantModel
	str	sl, [fp, #-376]	@, %sfp
	add	sl, r9, ip, asl #1	@,,,,
	str	r7, [fp, #-480]	@, %sfp
	movw	ip, #:lower16:-270	@ tmp676,
	ldr	r7, [fp, #-504]	@, %sfp
	movt	ip, #:upper16:-270	@ tmp676,
	ldr	r9, [fp, #-500]	@, %sfp
	str	r1, [fp, #-492]	@, %sfp
	sub	r1, fp, #44	@,,
	str	r4, [fp, #-488]	@, %sfp
	add	r4, r1, r8, asl #1	@,,,,
	str	sl, [fp, #-384]	@, %sfp
	sub	r8, fp, #44	@,,
	sub	sl, fp, #44	@,,
	add	r1, r8, r7, asl #1	@,,,,
	str	r6, [fp, #-496]	@, %sfp
	add	r8, sl, r9, asl #1	@,,,,
	str	r5, [fp, #-484]	@, %sfp
	sub	sl, fp, #44	@,,
	str	r4, [fp, #-380]	@, %sfp
	movw	r6, #:lower16:-276	@ tmp642,
	str	r1, [fp, #-388]	@, %sfp
	movt	r6, #:upper16:-276	@ tmp642,
	str	r8, [fp, #-392]	@, %sfp
	movw	r5, #:lower16:-274	@ tmp654,
	ldr	r7, [fp, #-496]	@, %sfp
	movt	r5, #:upper16:-274	@ tmp654,
	movw	r4, #:lower16:-272	@ tmp664,
	movt	r4, #:upper16:-272	@ tmp664,
	movw	r1, #:lower16:-268	@ tmp688,
	movt	r1, #:upper16:-268	@ tmp688,
	add	r8, sl, r7, asl #1	@,,,,
	ldr	r7, [fp, #-492]	@, %sfp
	str	r8, [fp, #-396]	@, %sfp
	sub	r8, fp, #44	@,,
	movw	sl, #:lower16:-264	@,
	movt	sl, #:upper16:-264	@,
	str	sl, [fp, #-352]	@, %sfp
	add	sl, r8, r7, asl #1	@,,,,
	ldr	r7, [fp, #-488]	@, %sfp
	movw	r8, #:lower16:-262	@,
	str	sl, [fp, #-412]	@, %sfp
	sub	sl, fp, #44	@,,
	movt	r8, #:upper16:-262	@,
	str	r8, [fp, #-356]	@, %sfp
	add	r8, sl, r7, asl #1	@,,,,
	ldr	r7, [fp, #-484]	@, %sfp
	str	r8, [fp, #-416]	@, %sfp
	sub	r8, fp, #44	@,,
	movw	sl, #:lower16:-260	@,
	movt	sl, #:upper16:-260	@,
	str	sl, [fp, #-364]	@, %sfp
	add	sl, r8, r7, asl #1	@,,,,
	ldr	r7, [fp, #-480]	@, %sfp
	movw	r8, #:lower16:-258	@,
	str	sl, [fp, #-420]	@, %sfp
	sub	sl, fp, #44	@,,
	movt	r8, #:upper16:-258	@,
	str	r8, [fp, #-360]	@, %sfp
	add	r8, sl, r7, asl #1	@,,,,
	ldr	r7, [fp, #-368]	@, %sfp
	str	r8, [fp, #-432]	@, %sfp
	movw	r9, #:lower16:-266	@ tmp700,
	ldr	r8, [fp, #-428]	@, %sfp
	movt	r9, #:upper16:-266	@ tmp700,
	ldrh	sl, [r7, #-48]	@, wq_param
	sub	r7, fp, #44	@,,
	strh	sl, [r7, r8]	@ movhi	@, wq_matrix
	ldr	r8, [fp, #-372]	@, %sfp
	ldr	sl, [fp, #-444]	@, %sfp
	ldrh	r7, [r8, #-48]	@, wq_param
	sub	r8, fp, #44	@,,
	strh	r7, [r8, sl]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-376]	@, %sfp
	ldrh	r7, [sl, #-48]	@, wq_param
	sub	sl, fp, #44	@,,
	strh	r7, [r8, r6]	@ movhi	@, wq_matrix
	ldr	r6, [fp, #-380]	@, %sfp
	ldr	r8, [fp, #-384]	@, %sfp
	ldrh	r7, [r6, #-48]	@, wq_param
	ldr	r6, [fp, #-388]	@, %sfp
	strh	r7, [sl, r5]	@ movhi	@, wq_matrix
	sub	r7, fp, #44	@,,
	ldrh	r5, [r8, #-48]	@, wq_param
	sub	r8, fp, #44	@,,
	ldrh	sl, [r6, #-48]	@, wq_param
	strh	r5, [r7, r4]	@ movhi	@, wq_matrix
	sub	r4, fp, #44	@,,
	strh	sl, [r7, ip]	@ movhi	@, wq_matrix
	ldr	ip, [fp, #-392]	@, %sfp
	ldr	r7, [fp, #-412]	@, %sfp
	ldrh	r5, [ip, #-48]	@, wq_param
	ldrh	sl, [r7, #-48]	@, wq_param
	ldr	ip, [fp, #-352]	@, %sfp
	strh	r5, [r8, r1]	@ movhi	@, wq_matrix
	sub	r5, fp, #44	@,,
	ldr	r1, [fp, #-396]	@, %sfp
	ldr	r8, [fp, #-416]	@, %sfp
	ldrh	r6, [r1, #-48]	@, wq_param
	ldrh	r1, [r8, #-48]	@, wq_param
	strh	r6, [r4, r9]	@ movhi	@, wq_matrix
	sub	r9, fp, #44	@,,
	ldr	r6, [fp, #-420]	@, %sfp
	strh	sl, [r9, ip]	@ movhi	@, wq_matrix
	sub	sl, fp, #44	@,,
	ldr	r4, [fp, #-356]	@, %sfp
	ldr	ip, [fp, #-432]	@, %sfp
	ldrh	r7, [r6, #-48]	@, wq_param
	ldr	r9, [fp, #-364]	@, %sfp
	strh	r1, [r5, r4]	@ movhi	@, wq_matrix
	sub	r1, fp, #44	@,,
	ldrh	r8, [ip, #-48]	@, wq_param
	ldr	r5, [fp, #-360]	@, %sfp
	ldr	r6, [fp, #-404]	@, %sfp
	strh	r7, [sl, r9]	@ movhi	@, wq_matrix
	sub	sl, fp, #44	@,,
	ldrb	ip, [r3, #32]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r4, [r3, #25]	@ zero_extendqisi2	@, WeightQuantModel
	add	r7, sl, r6, asl #1	@,,,,
	strh	r8, [r1, r5]	@ movhi	@, wq_matrix
	sub	r8, fp, #44	@,,
	ldrb	r1, [r3, #24]	@ zero_extendqisi2	@, WeightQuantModel
	add	r5, r8, ip, asl #1	@,,,,
	ldrb	r9, [r3, #26]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	sl, [r3, #27]	@ zero_extendqisi2	@, WeightQuantModel
	str	r7, [fp, #-580]	@, %sfp
	sub	r7, fp, #44	@,,
	str	ip, [fp, #-444]	@, %sfp
	str	r1, [fp, #-476]	@, %sfp
	str	r4, [fp, #-472]	@, %sfp
	str	r9, [fp, #-468]	@, %sfp
	str	r5, [fp, #-352]	@, %sfp
	mov	r5, r7	@,
	str	sl, [fp, #-464]	@, %sfp
	add	sl, r7, r1, asl #1	@, tmp763,,,
	ldrb	r6, [r3, #28]	@ zero_extendqisi2	@, WeightQuantModel
	add	r7, r7, r4, asl #1	@, tmp774, tmp5,,
	ldr	r9, [fp, #-468]	@, %sfp
	mov	r8, r5	@,
	ldrb	r4, [r3, #29]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r1, [r3, #30]	@ zero_extendqisi2	@, WeightQuantModel
	str	r6, [fp, #-460]	@, %sfp
	add	ip, r5, r9, asl #1	@,, tmp8,,
	str	r4, [fp, #-456]	@, %sfp
	ldr	r6, [fp, #-464]	@, %sfp
	ldrb	r4, [r3, #31]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r9, [fp, #-460]	@, %sfp
	str	r1, [fp, #-452]	@, %sfp
	mov	r1, r5	@,
	str	ip, [fp, #-360]	@, %sfp
	add	r5, r5, r6, asl #1	@, tmp796, tmp1,,
	ldrb	ip, [r3, #33]	@ zero_extendqisi2	@, WeightQuantModel
	str	r4, [fp, #-448]	@, %sfp
	add	r4, r8, r9, asl #1	@, tmp807,,,
	ldr	r6, [fp, #-456]	@, %sfp
	ldrb	r9, [r3, #34]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r8, [fp, #-452]	@, %sfp
	str	ip, [fp, #-432]	@, %sfp
	add	ip, r1, r6, asl #1	@, tmp818,,,
	str	r9, [fp, #-428]	@, %sfp
	mov	r9, r1	@,
	ldrb	r6, [r3, #35]	@ zero_extendqisi2	@, WeightQuantModel
	add	r1, r1, r8, asl #1	@, tmp829, tmp9,,
	ldr	r8, [fp, #-448]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	str	r6, [fp, #-424]	@, %sfp
	mov	r6, r9	@,
	add	r9, r9, r8, asl #1	@, tmp840, tmp6,,
	ldr	r8, [fp, #-432]	@, %sfp
	ldrh	r7, [r7, #-48]	@, wq_param
	ldrh	r5, [r5, #-48]	@, wq_param
	add	r6, r6, r8, asl #1	@,,,,
	str	r6, [fp, #-356]	@, %sfp
	sub	r6, fp, #44	@,,
	mvn	r8, #255	@ tmp760,
	strh	sl, [r6, r8]	@ movhi	@, wq_matrix
	mov	sl, r6	@,
	ldr	r6, [fp, #-428]	@, %sfp
	add	r8, sl, r6, asl #1	@, tmp871,,,
	ldr	sl, [fp, #-424]	@, %sfp
	sub	r6, fp, #256	@,,
	strh	r7, [r6, #-42]	@ movhi	@, wq_matrix
	sub	r6, fp, #44	@,,
	add	r7, r6, sl, asl #1	@, tmp882,,,
	ldr	sl, [fp, #-360]	@, %sfp
	ldrh	r6, [sl, #-48]	@, wq_param
	sub	sl, fp, #256	@,,
	strh	r6, [sl, #-40]	@ movhi	@, wq_matrix
	strh	r5, [sl, #-38]	@ movhi	@, wq_matrix
	mov	r5, sl	@,
	ldrh	ip, [ip, #-48]	@, wq_param
	ldrh	r6, [r4, #-48]	@, wq_param
	ldrh	r4, [r1, #-48]	@, wq_param
	strh	ip, [sl, #-34]	@ movhi	@, wq_matrix
	ldr	r1, [fp, #-352]	@, %sfp
	ldrh	ip, [r9, #-48]	@, wq_param
	strh	r6, [sl, #-36]	@ movhi	@, wq_matrix
	ldrh	r9, [r1, #-48]	@, wq_param
	strh	ip, [sl, #-30]	@ movhi	@, wq_matrix
	ldr	ip, [fp, #-356]	@, %sfp
	ldrh	r1, [r8, #-48]	@, wq_param
	strh	r4, [sl, #-32]	@ movhi	@, wq_matrix
	ldrh	r8, [r7, #-48]	@, wq_param
	ldrh	r4, [ip, #-48]	@, wq_param
	strh	r9, [sl, #-28]	@ movhi	@, wq_matrix
	sub	r9, fp, #44	@,,
	ldrb	ip, [r3, #38]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	sl, [fp, #-408]	@, %sfp
	ldrb	r7, [r3, #36]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r4, [r5, #-26]	@ movhi	@, wq_matrix
	add	r6, r9, sl, asl #1	@,,,,
	strh	r8, [r5, #-22]	@ movhi	@, wq_matrix
	ldrb	sl, [r3, #39]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r8, [r3, #37]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r9, [r3, #40]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r4, [fp, #-400]	@, %sfp
	str	ip, [fp, #-412]	@, %sfp
	ldrb	ip, [r3, #41]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r1, [r5, #-24]	@ movhi	@, wq_matrix
	sub	r5, fp, #44	@,,
	str	r6, [fp, #-584]	@, %sfp
	sub	r6, fp, #44	@,,
	add	r1, r5, r4, asl #1	@,,,,
	str	r7, [fp, #-420]	@, %sfp
	str	r8, [fp, #-416]	@, %sfp
	str	r1, [fp, #-588]	@, %sfp
	str	sl, [fp, #-396]	@, %sfp
	add	sl, r6, r7, asl #1	@, tmp893,,,
	str	r9, [fp, #-392]	@, %sfp
	mov	r9, r6	@,
	str	ip, [fp, #-388]	@, %sfp
	add	r6, r6, r8, asl #1	@, tmp904, tmp9,,
	ldrb	r4, [r3, #42]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r7, [fp, #-412]	@, %sfp
	ldr	r8, [fp, #-396]	@, %sfp
	ldrb	r5, [r3, #43]	@ zero_extendqisi2	@, WeightQuantModel
	str	r4, [fp, #-384]	@, %sfp
	add	r1, r9, r7, asl #1	@,, tmp5,,
	ldrb	r4, [r3, #44]	@ zero_extendqisi2	@, WeightQuantModel
	add	r7, r9, r8, asl #1	@,, tmp12,,
	ldrb	ip, [r3, #45]	@ zero_extendqisi2	@, WeightQuantModel
	sub	r9, fp, #44	@,,
	str	r1, [fp, #-356]	@, %sfp
	str	r7, [fp, #-360]	@, %sfp
	ldr	r1, [fp, #-392]	@, %sfp
	ldr	r8, [fp, #-388]	@, %sfp
	ldr	r7, [fp, #-384]	@, %sfp
	str	r5, [fp, #-380]	@, %sfp
	add	r5, r9, r1, asl #1	@, tmp937,,,
	str	r4, [fp, #-376]	@, %sfp
	mov	r1, r9	@, tmp7
	add	r4, r9, r8, asl #1	@, tmp948, tmp7,,
	str	ip, [fp, #-408]	@, %sfp
	ldr	r8, [fp, #-380]	@, %sfp
	add	ip, r9, r7, asl #1	@, tmp959, tmp1,,
	ldrb	r9, [r3, #46]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r7, [r3, #47]	@ zero_extendqisi2	@, WeightQuantModel
	ldrh	sl, [sl, #-48]	@, wq_param
	str	r9, [fp, #-404]	@, %sfp
	mov	r9, r1	@,
	add	r1, r1, r8, asl #1	@, tmp970, tmp9,,
	ldr	r8, [fp, #-376]	@, %sfp
	str	r7, [fp, #-400]	@, %sfp
	mov	r7, r9	@,
	ldrh	r6, [r6, #-48]	@, wq_param
	add	r9, r9, r8, asl #1	@, tmp981, tmp7,,
	ldr	r8, [fp, #-408]	@, %sfp
	add	r7, r7, r8, asl #1	@,,,,
	str	r7, [fp, #-352]	@, %sfp
	sub	r7, fp, #256	@,,
	sub	r8, fp, #44	@,,
	strh	sl, [r7, #-20]	@ movhi	@, wq_matrix
	ldr	r7, [fp, #-404]	@, %sfp
	add	sl, r8, r7, asl #1	@, tmp1003,,,
	ldr	r7, [fp, #-400]	@, %sfp
	sub	r8, fp, #256	@,,
	strh	r6, [r8, #-18]	@ movhi	@, wq_matrix
	sub	r6, fp, #44	@,,
	add	r8, r6, r7, asl #1	@, tmp1014,,,
	ldr	r6, [fp, #-356]	@, %sfp
	sub	r7, fp, #256	@,,
	ldrh	r6, [r6, #-48]	@, wq_param
	strh	r6, [r7, #-16]	@ movhi	@, wq_matrix
	ldr	r6, [fp, #-360]	@, %sfp
	ldrh	r7, [r6, #-48]	@, wq_param
	sub	r6, fp, #256	@,,
	strh	r7, [r6, #-14]	@ movhi	@, wq_matrix
	ldrh	r5, [r5, #-48]	@, wq_param
	ldr	r7, [fp, #-352]	@, %sfp
	ldrh	r4, [r4, #-48]	@, wq_param
	strh	r5, [r6, #-12]	@ movhi	@, wq_matrix
	ldrh	r5, [ip, #-48]	@, wq_param
	ldrh	r1, [r1, #-48]	@, wq_param
	ldrh	r9, [r9, #-48]	@, wq_param
	strh	r5, [r6, #-8]	@ movhi	@, wq_matrix
	ldrh	sl, [sl, #-48]	@, wq_param
	ldrh	r5, [r7, #-48]	@, wq_param
	strh	r4, [r6, #-10]	@ movhi	@, wq_matrix
	strh	r1, [r6, #-6]	@ movhi	@, wq_matrix
	ldr	r4, [fp, #-436]	@, %sfp
	strh	r9, [r6, #-4]	@ movhi	@, wq_matrix
	sub	r9, fp, #44	@,,
	strh	r5, [r6, #-2]	@ movhi	@, wq_matrix
	strh	sl, [r6, #0]	@ movhi	@, wq_matrix
	add	r7, r9, r4, asl #1	@,,,,
	ldr	r6, [fp, #-440]	@, %sfp
	ldrh	r1, [r8, #-48]	@, wq_param
	sub	r8, fp, #44	@,,
	ldrb	ip, [r3, #49]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	sl, [r3, #48]	@ zero_extendqisi2	@, WeightQuantModel
	add	r5, r8, r6, asl #1	@,,,,
	str	r7, [fp, #-592]	@, %sfp
	sub	r8, fp, #44	@,,
	ldrb	r7, [r3, #50]	@ zero_extendqisi2	@ temp.1854, WeightQuantModel
	add	r4, r8, ip, asl #1	@,, tmp1,,
	ldrb	r6, [r3, #51]	@ zero_extendqisi2	@ temp.1857, WeightQuantModel
	str	r5, [fp, #-596]	@, %sfp
	ldrb	r5, [r3, #52]	@ zero_extendqisi2	@ temp.1860, WeightQuantModel
	add	r9, r8, r6, asl #1	@,, tmp1, temp.1857,
	strh	r1, [fp, #-254]	@ movhi	@, wq_matrix
	str	sl, [fp, #-604]	@, %sfp
	add	sl, r8, sl, asl #1	@, tmp1025,,,
	str	ip, [fp, #-600]	@, %sfp
	add	ip, r8, r7, asl #1	@,, tmp9, temp.1854,
	str	r4, [fp, #-352]	@, %sfp
	add	r8, r8, r5, asl #1	@,,, temp.1860,
	ldrb	r4, [r3, #53]	@ zero_extendqisi2	@ temp.1863, WeightQuantModel
	str	ip, [fp, #-356]	@, %sfp
	str	r9, [fp, #-436]	@, %sfp
	ldrb	ip, [r3, #54]	@ zero_extendqisi2	@ temp.1866, WeightQuantModel
	ldrb	r9, [r3, #55]	@ zero_extendqisi2	@ temp.1869, WeightQuantModel
	str	r8, [fp, #-440]	@, %sfp
	sub	r8, fp, #44	@,,
	ldrb	r1, [r3, #56]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [fp, #-372]	@, %sfp
	add	r1, r8, r4, asl #1	@,,, temp.1863,
	ldrb	r8, [r3, #57]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [fp, #-556]	@, %sfp
	sub	r1, fp, #44	@,,
	str	r8, [fp, #-368]	@, %sfp
	add	r8, r1, ip, asl #1	@,,, temp.1866,
	ldrb	r1, [r3, #58]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [fp, #-560]	@, %sfp
	sub	r8, fp, #44	@,,
	str	r1, [fp, #-360]	@, %sfp
	add	r1, r8, r9, asl #1	@,,, temp.1869,
	ldrb	r8, [r3, #59]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [fp, #-564]	@, %sfp
	ldr	r1, [fp, #-372]	@, %sfp
	str	r8, [fp, #-364]	@, %sfp
	sub	r8, fp, #44	@,,
	add	r8, r8, r1, asl #1	@,,,,
	ldr	r1, [fp, #-368]	@, %sfp
	str	r8, [fp, #-568]	@, %sfp
	sub	r8, fp, #44	@,,
	add	r8, r8, r1, asl #1	@,,,,
	str	r8, [fp, #-572]	@, %sfp
	ldrh	r8, [sl, #-48]	@, wq_param
	sub	r1, fp, #44	@,,
	ldr	sl, [fp, #-360]	@, %sfp
	strh	r8, [fp, #-252]	@ movhi	@, wq_matrix
	add	r8, r1, sl, asl #1	@,,,,
	ldr	r1, [fp, #-352]	@, %sfp
	str	r8, [fp, #-576]	@, %sfp
	sub	r8, fp, #44	@,,
	ldrh	sl, [r1, #-48]	@, wq_param
	ldr	r1, [fp, #-364]	@, %sfp
	strh	sl, [fp, #-250]	@ movhi	@, wq_matrix
	add	sl, r8, r1, asl #1	@, tmp1146,,,
	ldr	r8, [fp, #-356]	@, %sfp
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-436]	@, %sfp
	strh	r1, [fp, #-248]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-440]	@, %sfp
	strh	r1, [fp, #-246]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-556]	@, %sfp
	strh	r1, [fp, #-244]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	strh	r1, [fp, #-242]	@ movhi	@, wq_matrix
	ldr	r8, [fp, #-560]	@, %sfp
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-564]	@, %sfp
	strh	r1, [fp, #-240]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-568]	@, %sfp
	strh	r1, [fp, #-238]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-572]	@, %sfp
	strh	r1, [fp, #-236]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldr	r8, [fp, #-576]	@, %sfp
	strh	r1, [fp, #-234]	@ movhi	@, wq_matrix
	ldrh	r1, [r8, #-48]	@, wq_param
	ldrh	r8, [sl, #-48]	@, wq_param
	ldr	sl, [fp, #-552]	@, %sfp
	strh	r1, [fp, #-232]	@ movhi	@, wq_matrix
	strh	r8, [fp, #-230]	@ movhi	@, wq_matrix
	sub	r8, fp, #44	@,,
	add	r8, r8, sl, asl #1	@,,,,
	ldrb	sl, [r3, #61]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [fp, #-436]	@, %sfp
	ldr	r8, [fp, #-548]	@, %sfp
	str	sl, [fp, #-356]	@, %sfp
	sub	sl, fp, #44	@,,
	ldrb	r1, [r3, #63]	@ zero_extendqisi2	@, WeightQuantModel
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-544]	@, %sfp
	str	sl, [fp, #-440]	@, %sfp
	sub	sl, fp, #44	@,,
	str	r1, [fp, #-352]	@, %sfp
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-540]	@, %sfp
	str	sl, [fp, #-544]	@, %sfp
	sub	sl, fp, #44	@,,
	ldrb	r1, [r3, #60]	@ zero_extendqisi2	@ temp.1884, WeightQuantModel
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-536]	@, %sfp
	str	sl, [fp, #-540]	@, %sfp
	sub	sl, fp, #44	@,,
	ldrb	r3, [r3, #62]	@ zero_extendqisi2	@ temp.1890, WeightQuantModel
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-532]	@, %sfp
	str	sl, [fp, #-536]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	str	sl, [fp, #-532]	@, %sfp
	ldr	r8, [fp, #-528]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-524]	@, %sfp
	str	sl, [fp, #-528]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-520]	@, %sfp
	str	sl, [fp, #-524]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-516]	@, %sfp
	str	sl, [fp, #-520]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-512]	@, %sfp
	str	sl, [fp, #-516]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-508]	@, %sfp
	str	sl, [fp, #-512]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-504]	@, %sfp
	str	sl, [fp, #-508]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-500]	@, %sfp
	str	sl, [fp, #-504]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-496]	@, %sfp
	str	sl, [fp, #-500]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-492]	@, %sfp
	str	sl, [fp, #-496]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-488]	@, %sfp
	str	sl, [fp, #-492]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-484]	@, %sfp
	str	sl, [fp, #-488]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-480]	@, %sfp
	str	sl, [fp, #-484]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-476]	@, %sfp
	str	sl, [fp, #-480]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-472]	@, %sfp
	str	sl, [fp, #-476]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-468]	@, %sfp
	str	sl, [fp, #-472]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-464]	@, %sfp
	str	sl, [fp, #-468]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	str	sl, [fp, #-464]	@, %sfp
	ldr	r8, [fp, #-460]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-456]	@, %sfp
	str	sl, [fp, #-460]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-452]	@, %sfp
	str	sl, [fp, #-456]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-448]	@, %sfp
	str	sl, [fp, #-452]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-444]	@, %sfp
	str	sl, [fp, #-448]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-432]	@, %sfp
	str	sl, [fp, #-444]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-428]	@, %sfp
	str	sl, [fp, #-432]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-424]	@, %sfp
	str	sl, [fp, #-428]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-420]	@, %sfp
	str	sl, [fp, #-424]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-416]	@, %sfp
	str	sl, [fp, #-420]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-412]	@, %sfp
	str	sl, [fp, #-416]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-396]	@, %sfp
	str	sl, [fp, #-412]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-392]	@, %sfp
	str	sl, [fp, #-396]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-388]	@, %sfp
	str	sl, [fp, #-392]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-384]	@, %sfp
	str	sl, [fp, #-388]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-380]	@, %sfp
	str	sl, [fp, #-384]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-376]	@, %sfp
	str	sl, [fp, #-380]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	str	sl, [fp, #-376]	@, %sfp
	ldr	r8, [fp, #-408]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-404]	@, %sfp
	str	sl, [fp, #-408]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-400]	@, %sfp
	str	sl, [fp, #-404]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-604]	@, %sfp
	str	sl, [fp, #-400]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	ldr	r8, [fp, #-600]	@, %sfp
	str	sl, [fp, #-548]	@, %sfp
	sub	sl, fp, #44	@,,
	add	sl, sl, r8, asl #1	@,,,,
	sub	r8, fp, #44	@,,
	str	sl, [fp, #-552]	@, %sfp
	add	sl, r8, r7, asl #1	@,,, temp.1854,
	sub	r7, fp, #44	@,,
	str	sl, [fp, #-556]	@, %sfp
	sub	sl, fp, #44	@,,
	add	r8, r7, r6, asl #1	@,,, temp.1857,
	add	r7, sl, r5, asl #1	@,,, temp.1860,
	sub	sl, fp, #44	@,,
	str	r7, [fp, #-564]	@, %sfp
	add	r7, sl, r9, asl #1	@,,, temp.1869,
	ldr	r9, [fp, #-372]	@, %sfp
	sub	r5, fp, #44	@,,
	ldr	sl, [fp, #-360]	@, %sfp
	sub	r6, fp, #44	@,,
	str	r8, [fp, #-560]	@, %sfp
	add	r8, r5, r4, asl #1	@,,, temp.1863,
	sub	r5, fp, #44	@,,
	add	r4, r6, ip, asl #1	@,,, temp.1866,
	str	r8, [fp, #-568]	@, %sfp
	add	r8, r5, r9, asl #1	@,,,,
	ldr	r6, [fp, #-368]	@, %sfp
	ldr	r5, [fp, #-364]	@, %sfp
	str	r7, [fp, #-576]	@, %sfp
	sub	r7, fp, #44	@,,
	add	r9, r7, sl, asl #1	@,,,,
	str	r4, [fp, #-572]	@, %sfp
	sub	r7, fp, #44	@,,
	str	r8, [fp, #-372]	@, %sfp
	sub	r4, fp, #44	@,,
	sub	r8, fp, #44	@,,
	add	ip, r4, r6, asl #1	@,,,,
	ldr	sl, [fp, #-352]	@, %sfp
	add	r6, r8, r5, asl #1	@,,,,
	str	r6, [fp, #-364]	@, %sfp
	add	r6, r7, r1, asl #1	@, tmp1617,, temp.1884,
	ldr	r1, [fp, #-356]	@, %sfp
	add	r4, r7, r3, asl #1	@, tmp1631, tmp12, temp.1890,
	str	ip, [fp, #-368]	@, %sfp
	ldrh	r3, [r6, #-48]	@, wq_param
	add	ip, r7, sl, asl #1	@, tmp1638,,,
	add	r5, r7, r1, asl #1	@, tmp1624, tmp4,,
	str	r9, [fp, #-360]	@, %sfp
	ldrh	r9, [r4, #-48]	@, wq_param
	ldrh	r1, [r5, #-48]	@, wq_param
	strh	r3, [fp, #-228]	@ movhi	@, wq_matrix
	ldrh	r3, [ip, #-48]	@, wq_param
	strh	r1, [fp, #-226]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-224]	@ movhi	@, wq_matrix
	strh	r3, [fp, #-222]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-580]	@, %sfp
	ldr	r1, [fp, #-584]	@, %sfp
	ldr	r7, [fp, #-588]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	sl, [fp, #-592]	@, %sfp
	ldr	r1, [fp, #-596]	@, %sfp
	ldr	r7, [fp, #-436]	@, %sfp
	strh	r8, [fp, #-220]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-218]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-440]	@, %sfp
	ldr	r1, [fp, #-544]	@, %sfp
	strh	r3, [fp, #-216]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-540]	@, %sfp
	strh	r8, [fp, #-214]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-212]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-536]	@, %sfp
	ldr	r1, [fp, #-532]	@, %sfp
	strh	r3, [fp, #-210]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-528]	@, %sfp
	strh	r8, [fp, #-208]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-206]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r3, [fp, #-204]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	strh	r8, [fp, #-202]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-200]	@ movhi	@, wq_matrix
	strh	r3, [fp, #-198]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-524]	@, %sfp
	ldr	r1, [fp, #-520]	@, %sfp
	ldr	r7, [fp, #-516]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	sl, [fp, #-512]	@, %sfp
	ldr	r1, [fp, #-508]	@, %sfp
	ldr	r7, [fp, #-504]	@, %sfp
	strh	r8, [fp, #-196]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-194]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-500]	@, %sfp
	ldr	r1, [fp, #-496]	@, %sfp
	strh	r3, [fp, #-192]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-492]	@, %sfp
	strh	r8, [fp, #-190]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-188]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-488]	@, %sfp
	ldr	r1, [fp, #-484]	@, %sfp
	strh	r3, [fp, #-186]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-480]	@, %sfp
	strh	r8, [fp, #-184]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-182]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r3, [fp, #-180]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	strh	r8, [fp, #-178]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-176]	@ movhi	@, wq_matrix
	strh	r3, [fp, #-174]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-476]	@, %sfp
	ldr	r1, [fp, #-472]	@, %sfp
	ldr	r7, [fp, #-468]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	sl, [fp, #-464]	@, %sfp
	ldr	r1, [fp, #-460]	@, %sfp
	ldr	r7, [fp, #-456]	@, %sfp
	strh	r8, [fp, #-172]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-170]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-452]	@, %sfp
	ldr	r1, [fp, #-448]	@, %sfp
	strh	r3, [fp, #-168]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-444]	@, %sfp
	strh	r8, [fp, #-166]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-164]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-432]	@, %sfp
	ldr	r1, [fp, #-428]	@, %sfp
	strh	r3, [fp, #-162]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-424]	@, %sfp
	strh	r8, [fp, #-160]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-158]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r3, [fp, #-156]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	strh	r8, [fp, #-154]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-152]	@ movhi	@, wq_matrix
	strh	r3, [fp, #-150]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-420]	@, %sfp
	ldr	r1, [fp, #-416]	@, %sfp
	ldr	r7, [fp, #-412]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	sl, [fp, #-396]	@, %sfp
	ldr	r1, [fp, #-392]	@, %sfp
	ldr	r7, [fp, #-388]	@, %sfp
	strh	r8, [fp, #-148]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-146]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-384]	@, %sfp
	ldr	r1, [fp, #-380]	@, %sfp
	strh	r3, [fp, #-144]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-376]	@, %sfp
	strh	r8, [fp, #-142]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-140]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldr	sl, [fp, #-408]	@, %sfp
	ldr	r1, [fp, #-404]	@, %sfp
	strh	r3, [fp, #-138]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldr	r7, [fp, #-400]	@, %sfp
	strh	r8, [fp, #-136]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-134]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r3, [fp, #-132]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	strh	r8, [fp, #-130]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-128]	@ movhi	@, wq_matrix
	strh	r3, [fp, #-126]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-548]	@, %sfp
	ldr	r1, [fp, #-552]	@, %sfp
	ldr	r7, [fp, #-556]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldr	sl, [fp, #-560]	@, %sfp
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r8, [fp, #-124]	@ movhi	@, wq_matrix
	ldr	r1, [fp, #-564]	@, %sfp
	ldrh	r8, [sl, #-36]	@, wq_param
	ldrh	r3, [r7, #-36]	@, wq_param
	strh	r9, [fp, #-122]	@ movhi	@, wq_matrix
	ldr	r7, [fp, #-568]	@, %sfp
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	r8, [fp, #-118]	@ movhi	@, wq_matrix
	ldr	r8, [fp, #-576]	@, %sfp
	strh	r3, [fp, #-120]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-116]	@ movhi	@, wq_matrix
	ldrh	r3, [r7, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	ldr	r9, [fp, #-372]	@, %sfp
	strh	r3, [fp, #-114]	@ movhi	@, wq_matrix
	ldr	sl, [fp, #-572]	@, %sfp
	ldrh	r7, [r9, #-36]	@, wq_param
	strh	r1, [fp, #-110]	@ movhi	@, wq_matrix
	ldr	r3, [fp, #-368]	@, %sfp
	ldr	r8, [fp, #-360]	@, %sfp
	ldr	r1, [fp, #-364]	@, %sfp
	ldrh	sl, [sl, #-36]	@, wq_param
	strh	r7, [fp, #-108]	@ movhi	@, wq_matrix
	ldrh	r8, [r8, #-36]	@, wq_param
	ldrh	r7, [r3, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	sl, [fp, #-112]	@ movhi	@, wq_matrix
	strh	r7, [fp, #-106]	@ movhi	@, wq_matrix
	strh	r8, [fp, #-104]	@ movhi	@, wq_matrix
	strh	r9, [fp, #-102]	@ movhi	@, wq_matrix
	ldrh	r6, [r6, #-36]	@, wq_param
	ldrh	r5, [r5, #-36]	@, wq_param
	ldrh	r4, [r4, #-36]	@, wq_param
	ldrh	ip, [ip, #-36]	@, wq_param
	strh	r6, [fp, #-100]	@ movhi	@, wq_matrix
	strh	r5, [fp, #-98]	@ movhi	@, wq_matrix
	strh	r4, [fp, #-96]	@ movhi	@, wq_matrix
	strh	ip, [fp, #-94]	@ movhi	@, wq_matrix
	bne	.L209	@,
.L231:
	sub	r3, fp, #348	@ ivtmp.1495,,
	add	r0, r0, #196	@ ivtmp.1496, pSyntax,
	add	ip, r3, #128	@ D.38912, ivtmp.1495,
.L210:
	add	r1, r3, #2	@ tmp1939, ivtmp.1495,
	ldrh	r3, [r3, #128]	@, wq_matrix
	mov	r2, r0	@ tmp1940, ivtmp.1496
	strh	r3, [r2], #2	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.1495, tmp1939,
	ldrh	r1, [r1, #128]	@, wq_matrix
	cmp	r3, ip	@ ivtmp.1495, D.38912
	strh	r1, [r0, #2]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r0, r2, #2	@ ivtmp.1496, tmp1940,
	bne	.L210	@,
.L215:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L199:
	movw	r3, #:lower16:.LANCHOR0	@ tmp1949,
	movt	r3, #:upper16:.LANCHOR0	@ tmp1949,
	ldr	ip, [r0, #172]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	cmp	r1, #0	@ prephitmp.1454,
	ldr	sl, [r0, #176]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	ldr	r7, [r0, #180]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	ldr	r1, [r0, #184]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	r9, [r3, #12]	@ wq_param_default, wq_param_default
	ldrh	r6, [r3, #14]	@ wq_param_default, wq_param_default
	ldrh	r5, [r3, #16]	@ wq_param_default, wq_param_default
	add	r8, r9, ip	@ tmp294, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	r4, [r3, #18]	@ wq_param_default, wq_param_default
	add	r9, r6, sl	@ tmp300, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldr	ip, [r0, #188]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	add	r5, r5, r7	@ tmp306, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	add	r4, r4, r1	@ tmp312, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	sl, [r3, #20]	@ wq_param_default, wq_param_default
	ldr	r1, [r0, #192]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	r7, [r3, #22]	@ wq_param_default, wq_param_default
	add	ip, sl, ip	@ tmp318, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	strh	r8, [fp, #-68]	@ movhi	@ tmp294, quant_param_detail
	add	r1, r7, r1	@ tmp324, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	strh	r9, [fp, #-66]	@ movhi	@ tmp300, quant_param_detail
	strh	r5, [fp, #-64]	@ movhi	@ tmp306, quant_param_detail
	strh	r4, [fp, #-62]	@ movhi	@ tmp312, quant_param_detail
	strh	ip, [fp, #-60]	@ movhi	@ tmp318, quant_param_detail
	strh	r1, [fp, #-58]	@ movhi	@ tmp324, quant_param_detail
	beq	.L197	@,
.L198:
	cmp	r2, #0	@ temp.1547,
	mov	r3, #128	@ movhi	@,
	strh	r3, [fp, #-92]	@ movhi	@, wq_param
	strh	r3, [fp, #-90]	@ movhi	@, wq_param
	strh	r3, [fp, #-88]	@ movhi	@, wq_param
	strh	r3, [fp, #-86]	@ movhi	@, wq_param
	strh	r3, [fp, #-84]	@ movhi	@, wq_param
	strh	r3, [fp, #-82]	@ movhi	@, wq_param
	strh	r3, [fp, #-80]	@ movhi	@, wq_param
	strh	r3, [fp, #-78]	@ movhi	@, wq_param
	strh	r3, [fp, #-76]	@ movhi	@, wq_param
	strh	r3, [fp, #-74]	@ movhi	@, wq_param
	strh	r3, [fp, #-72]	@ movhi	@, wq_param
	strh	r3, [fp, #-70]	@ movhi	@, wq_param
	bne	.L230	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp433,
	movt	r6, #:upper16:.LANCHOR0	@ tmp433,
	ldrh	r4, [r6, #22]	@, wq_param_default
	ldrh	r8, [r6, #12]	@, wq_param_default
	ldrh	ip, [r6, #14]	@, wq_param_default
	ldrh	r9, [r6, #16]	@, wq_param_default
	ldrh	sl, [r6, #18]	@, wq_param_default
	ldrh	r7, [r6, #20]	@, wq_param_default
	strh	r4, [fp, #-70]	@ movhi	@, wq_param
	strh	r8, [fp, #-80]	@ movhi	@, wq_param
	strh	ip, [fp, #-78]	@ movhi	@, wq_param
	strh	r9, [fp, #-76]	@ movhi	@, wq_param
	strh	sl, [fp, #-74]	@ movhi	@, wq_param
	strh	r7, [fp, #-72]	@ movhi	@, wq_param
	b	.L202	@
.L228:
	cmp	r2, #3	@ temp.1547,
	bne	.L194	@,
.L195:
	movw	r3, #:lower16:.LANCHOR0	@ tmp1935,
	movt	r3, #:upper16:.LANCHOR0	@ tmp1935,
	ldr	r8, [r0, #148]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	r9, [r0, #152]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	r7, [r0, #156]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldrh	r6, [r3, #0]	@ wq_param_default, wq_param_default
	ldrh	r4, [r3, #2]	@ wq_param_default, wq_param_default
	ldrh	ip, [r3, #4]	@ wq_param_default, wq_param_default
	add	r6, r6, r8	@ tmp258, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	ldrh	r5, [r3, #10]	@ wq_param_default, wq_param_default
	add	r4, r9, r4	@ tmp264, <variable>.syn_pic.weighting_quant_param_delta1, wq_param_default
	ldr	r8, [r0, #160]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	add	ip, r7, ip	@ tmp270, <variable>.syn_pic.weighting_quant_param_delta1, wq_param_default
	ldrh	sl, [r3, #6]	@ wq_param_default, wq_param_default
	ldr	r7, [r0, #164]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldrh	r9, [r3, #8]	@ wq_param_default, wq_param_default
	add	r8, sl, r8	@ tmp276, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	r3, [r0, #168]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	add	r7, r9, r7	@ tmp282, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	strh	r6, [fp, #-56]	@ movhi	@ tmp258, quant_param_undetail
	add	r3, r5, r3	@ tmp288, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	strh	r4, [fp, #-54]	@ movhi	@ tmp264, quant_param_undetail
	strh	ip, [fp, #-52]	@ movhi	@ tmp270, quant_param_undetail
	strh	r8, [fp, #-50]	@ movhi	@ tmp276, quant_param_undetail
	strh	r7, [fp, #-48]	@ movhi	@ tmp282, quant_param_undetail
	strh	r3, [fp, #-46]	@ movhi	@ tmp288, quant_param_undetail
	b	.L194	@
.L230:
	cmp	r2, #1	@ temp.1547,
	beq	.L225	@,
	cmp	r2, #2	@ temp.1547,
	bne	.L202	@,
.L226:
	ldrh	r3, [fp, #-68]	@, quant_param_detail
	ldrh	r1, [fp, #-66]	@, quant_param_detail
	ldrh	r4, [fp, #-64]	@, quant_param_detail
	ldrh	r8, [fp, #-62]	@, quant_param_detail
	ldrh	ip, [fp, #-60]	@, quant_param_detail
	ldrh	r9, [fp, #-58]	@, quant_param_detail
	strh	r3, [fp, #-80]	@ movhi	@, wq_param
	strh	r1, [fp, #-78]	@ movhi	@, wq_param
	strh	r4, [fp, #-76]	@ movhi	@, wq_param
	strh	r8, [fp, #-74]	@ movhi	@, wq_param
	strh	ip, [fp, #-72]	@ movhi	@, wq_param
	strh	r9, [fp, #-70]	@ movhi	@, wq_param
	b	.L202	@
.L207:
	movw	r5, #:lower16:-296	@ tmp1654,
	movw	r4, #:lower16:-294	@ tmp1657,
	movt	r5, #:upper16:-296	@ tmp1654,
	movt	r4, #:upper16:-294	@ tmp1657,
	movw	ip, #:lower16:-292	@ tmp1660,
	movw	r9, #:lower16:-290	@,
	movt	ip, #:upper16:-292	@ tmp1660,
	movt	r9, #:upper16:-290	@,
	str	r9, [fp, #-412]	@, %sfp
	movw	r9, #:lower16:-286	@,
	movt	r9, #:upper16:-286	@,
	str	r9, [fp, #-356]	@, %sfp
	movw	r9, #:lower16:-282	@,
	movt	r9, #:upper16:-282	@,
	str	r9, [fp, #-360]	@, %sfp
	movw	r9, #:lower16:-278	@,
	movt	r9, #:upper16:-278	@,
	str	r9, [fp, #-372]	@, %sfp
	movw	r9, #:lower16:-274	@,
	movt	r9, #:upper16:-274	@,
	str	r9, [fp, #-404]	@, %sfp
	movw	r9, #:lower16:-270	@,
	movt	r9, #:upper16:-270	@,
	str	r9, [fp, #-376]	@, %sfp
	movw	r9, #:lower16:-266	@,
	movt	r9, #:upper16:-266	@,
	str	r9, [fp, #-384]	@, %sfp
	movw	r9, #:lower16:-262	@,
	movt	r9, #:upper16:-262	@,
	str	r9, [fp, #-392]	@, %sfp
	sub	r9, fp, #44	@,,
	movw	r1, #:lower16:-288	@,
	movt	r1, #:upper16:-288	@,
	str	r1, [fp, #-352]	@, %sfp
	strh	r3, [r9, r5]	@ movhi	@ ivtmp.1527, wq_matrix
	movw	sl, #:lower16:-304	@ tmp1642,
	strh	r3, [r9, r4]	@ movhi	@ ivtmp.1527, wq_matrix
	movt	sl, #:upper16:-304	@ tmp1642,
	strh	r3, [r9, ip]	@ movhi	@ ivtmp.1527, wq_matrix
	movw	r8, #:lower16:-302	@ tmp1645,
	ldr	ip, [fp, #-412]	@, %sfp
	movt	r8, #:upper16:-302	@ tmp1645,
	ldr	r4, [fp, #-352]	@, %sfp
	movw	r7, #:lower16:-300	@ tmp1648,
	ldr	r5, [fp, #-356]	@, %sfp
	movt	r7, #:upper16:-300	@ tmp1648,
	movw	r6, #:lower16:-298	@ tmp1651,
	movt	r6, #:upper16:-298	@ tmp1651,
	movw	r1, #:lower16:-284	@,
	movt	r1, #:upper16:-284	@,
	str	r1, [fp, #-364]	@, %sfp
	movw	r1, #:lower16:-280	@,
	movt	r1, #:upper16:-280	@,
	str	r1, [fp, #-368]	@, %sfp
	strh	r3, [r9, sl]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	sl, r9	@,
	strh	r3, [r9, r8]	@ movhi	@ ivtmp.1527, wq_matrix
	movw	r1, #:lower16:-276	@,
	strh	r3, [r9, r7]	@ movhi	@ ivtmp.1527, wq_matrix
	movt	r1, #:upper16:-276	@,
	strh	r3, [r9, r6]	@ movhi	@ ivtmp.1527, wq_matrix
	cmp	r2, #0	@ temp.1547,
	strh	r3, [r9, ip]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, r4]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, r5]	@ movhi	@ ivtmp.1527, wq_matrix
	ldr	r7, [fp, #-360]	@, %sfp
	ldr	r9, [fp, #-364]	@, %sfp
	ldr	ip, [fp, #-368]	@, %sfp
	strh	r3, [sl, r7]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r9]	@ movhi	@ ivtmp.1527, wq_matrix
	str	r1, [fp, #-400]	@, %sfp
	movw	r1, #:lower16:-272	@,
	movt	r1, #:upper16:-272	@,
	str	r1, [fp, #-408]	@, %sfp
	movw	r1, #:lower16:-268	@,
	movt	r1, #:upper16:-268	@,
	str	r1, [fp, #-380]	@, %sfp
	movw	r1, #:lower16:-264	@,
	movt	r1, #:upper16:-264	@,
	str	r1, [fp, #-388]	@, %sfp
	movw	r1, #:lower16:-260	@,
	movt	r1, #:upper16:-260	@,
	str	r1, [fp, #-396]	@, %sfp
	movw	r1, #:lower16:-258	@ tmp1711,
	strh	r3, [sl, ip]	@ movhi	@ ivtmp.1527, wq_matrix
	movt	r1, #:upper16:-258	@ tmp1711,
	ldr	r5, [fp, #-372]	@, %sfp
	ldr	r9, [fp, #-400]	@, %sfp
	ldr	r7, [fp, #-404]	@, %sfp
	strh	r3, [sl, r5]	@ movhi	@ ivtmp.1527, wq_matrix
	ldr	ip, [fp, #-408]	@, %sfp
	ldr	r5, [fp, #-376]	@, %sfp
	strh	r3, [sl, r9]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r7]	@ movhi	@ ivtmp.1527, wq_matrix
	ldr	r9, [fp, #-380]	@, %sfp
	ldr	r7, [fp, #-384]	@, %sfp
	strh	r3, [sl, ip]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r5]	@ movhi	@ ivtmp.1527, wq_matrix
	sub	r4, fp, #396
	ldmia	r4, {r4, r5, ip}	@ phole ldm
	strh	r3, [sl, r9]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r7]	@ movhi	@ ivtmp.1527, wq_matrix
	mvn	r7, #255	@ tmp1714,
	add	r9, fp, r7	@,,
	strh	r3, [sl, r5]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r4]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [sl, r7]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	r4, r9	@, tmp1
	strh	r3, [sl, ip]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	r5, r9	@, tmp4
	strh	r3, [sl, r1]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	r6, r9	@, tmp5
	strh	r3, [r9, #-42]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	sl, r9	@,
	strh	r3, [r9, #-40]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	r7, r9	@, tmp6
	strh	r3, [r9, #-38]	@ movhi	@ ivtmp.1527, wq_matrix
	mov	r8, r9	@, tmp7
	strh	r3, [r9, #-36]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-34]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-32]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-30]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-28]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-26]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-24]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-22]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-20]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-18]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-16]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-14]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-12]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-10]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-8]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-6]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-4]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #-2]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [r9, #0]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-254]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-252]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-250]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-248]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-246]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-244]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-242]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-240]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-238]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-236]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-234]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-232]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-230]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-228]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-226]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-224]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-222]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-220]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-218]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-216]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-214]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-212]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-210]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-208]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-206]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-204]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-202]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-200]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-198]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-196]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-194]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-192]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-190]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-188]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-186]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-184]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-182]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-180]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-178]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-176]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-174]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-172]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-170]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-168]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-166]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-164]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-162]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-160]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-158]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-156]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-154]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-152]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-150]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-148]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-146]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-94]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-144]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-142]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-140]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-138]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-136]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-134]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-132]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-130]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-128]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-126]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-124]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-122]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-120]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-118]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-116]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-114]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-112]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-110]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-108]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-106]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-104]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-102]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-100]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-98]	@ movhi	@ ivtmp.1527, wq_matrix
	strh	r3, [fp, #-96]	@ movhi	@ ivtmp.1527, wq_matrix
	beq	.L231	@,
.L209:
	cmp	r2, #1	@ temp.1547,
	beq	.L232	@,
	cmp	r2, #2	@ temp.1547,
	bne	.L215	@,
	sub	r3, fp, #348	@ ivtmp.1517,,
	add	r0, r0, #196	@ ivtmp.1518, pSyntax,
	add	ip, r3, #128	@ D.38936, ivtmp.1517,
.L214:
	add	r1, r3, #2	@ tmp1942, ivtmp.1517,
	ldrh	r3, [r3, #128]	@, wq_matrix
	mov	r2, r0	@ tmp1943, ivtmp.1518
	strh	r3, [r2], #2	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.1517, tmp1942,
	ldrh	r1, [r1, #128]	@, wq_matrix
	cmp	r3, ip	@ ivtmp.1517, D.38936
	strh	r1, [r0, #2]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r0, r2, #2	@ ivtmp.1518, tmp1943,
	bne	.L214	@,
	b	.L215	@
.L227:
	ldr	r1, [r0, #124]	@ prephitmp.1454, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	b	.L195	@
.L225:
	ldrh	sl, [fp, #-56]	@, quant_param_undetail
	ldrh	r6, [fp, #-54]	@, quant_param_undetail
	ldrh	r7, [fp, #-52]	@, quant_param_undetail
	ldrh	r5, [fp, #-50]	@, quant_param_undetail
	ldrh	r3, [fp, #-48]	@, quant_param_undetail
	ldrh	r1, [fp, #-46]	@, quant_param_undetail
	strh	sl, [fp, #-92]	@ movhi	@, wq_param
	strh	r6, [fp, #-90]	@ movhi	@, wq_param
	strh	r7, [fp, #-88]	@ movhi	@, wq_param
	strh	r5, [fp, #-86]	@ movhi	@, wq_param
	strh	r3, [fp, #-84]	@ movhi	@, wq_param
	strh	r1, [fp, #-82]	@ movhi	@, wq_param
	b	.L202	@
.L232:
	sub	r1, fp, #348	@ tmp1938,,
	mov	r3, #0	@ ivtmp.1506,
.L213:
	add	r2, r3, #2	@ tmp1941, ivtmp.1506,
	add	r4, r0, r3	@ tmp1926, pSyntax, ivtmp.1506
	ldrh	r3, [r1, r3]	@, wq_matrix
	add	ip, r0, r2	@ tmp1956, pSyntax, tmp1941
	strh	r3, [r4, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r2, #2	@ ivtmp.1506, tmp1941,
	ldrh	r2, [r1, r2]	@, wq_matrix
	cmp	r3, #128	@ ivtmp.1506,
	strh	r2, [ip, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	bne	.L213	@,
	b	.L215	@
.L229:
	ldrh	r5, [fp, #-56]	@, quant_param_undetail
	ldrh	r3, [fp, #-54]	@, quant_param_undetail
	ldrh	r1, [fp, #-52]	@, quant_param_undetail
	strh	r5, [fp, #-92]	@ movhi	@, wq_param
	strh	r3, [fp, #-90]	@ movhi	@, wq_param
	ldrh	r4, [fp, #-50]	@, quant_param_undetail
	ldrh	r8, [fp, #-48]	@, quant_param_undetail
	ldrh	ip, [fp, #-46]	@, quant_param_undetail
	ldrh	r9, [fp, #-68]	@, quant_param_detail
	ldrh	sl, [fp, #-66]	@, quant_param_detail
	ldrh	r6, [fp, #-64]	@, quant_param_detail
	ldrh	r7, [fp, #-62]	@, quant_param_detail
	ldrh	r5, [fp, #-60]	@, quant_param_detail
	ldrh	r3, [fp, #-58]	@, quant_param_detail
	strh	r1, [fp, #-88]	@ movhi	@, wq_param
	strh	r4, [fp, #-86]	@ movhi	@, wq_param
	strh	r8, [fp, #-84]	@ movhi	@, wq_param
	strh	ip, [fp, #-82]	@ movhi	@, wq_param
	strh	r9, [fp, #-80]	@ movhi	@, wq_param
	strh	sl, [fp, #-78]	@ movhi	@, wq_param
	strh	r6, [fp, #-76]	@ movhi	@, wq_param
	strh	r7, [fp, #-74]	@ movhi	@, wq_param
	strh	r5, [fp, #-72]	@ movhi	@, wq_param
	strh	r3, [fp, #-70]	@ movhi	@, wq_param
	b	.L202	@
	.fnend
	.size	Avs_Vfmw_WQMatrix, .-Avs_Vfmw_WQMatrix
	.align	2
	.global	ClearPacket
	.type	ClearPacket, %function
ClearPacket:
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
	movw	r2, #16448	@ tmp137,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #16592	@ tmp135,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #16437	@ tmp139,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L234	@,
	movw	ip, #16517	@ tmp141,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L236	@,
.L234:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L236:
	movw	r3, #16520	@ tmp143,
	ldr	lr, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	ble	.L234	@,
	movw	r2, #16528	@ tmp147,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ClearPacket, .-ClearPacket
	.align	2
	.global	WriteAvsSliceMsg
	.type	WriteAvsSliceMsg, %function
WriteAvsSliceMsg:
	.fnstart
.LFB1400:
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
	movw	r3, #14432	@ tmp140,
	ldr	r2, [r0, r3]	@ D.37604, <variable>.AvsDecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r2, #512	@ D.37604,
	bge	.L245	@,
	cmp	r2, #0	@ D.37604,
	ble	.L240	@,
	movw	ip, #16432	@ tmp144,
	movw	r1, #15724	@ tmp146,
	ldr	r0, [r0, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	sub	r3, r2, #1	@ tmp150, D.37604,
	ldr	ip, [r4, r1]	@ <variable>.SyntaxNew.syn_seq.horizontal_size, <variable>.SyntaxNew.syn_seq.horizontal_size
	rsb	r3, r3, r3, asl #3	@, tmp154, tmp150, tmp150,
	add	r1, ip, #15	@ tmp147, <variable>.SyntaxNew.syn_seq.horizontal_size,
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp145,
	add	ip, r4, r3, asl #2	@, tmp156, pCtx, tmp154,
	mov	r1, r1, lsr #4	@ tmp149, tmp147,
	ldr	r3, [ip, #112]	@ D.37621, <variable>.slice_start_mbn
	mul	r1, r1, r0	@ D.37618, tmp149, tmp145
	cmp	r1, r3	@ D.37618, D.37621
	bls	.L246	@,
.L240:
	rsb	r2, r2, r2, asl #3	@, tmp162, D.37604, D.37604,
	movw	r3, #16440	@ tmp166,
	ldr	r0, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #14432	@ tmp169,
	add	ip, r4, r2, asl #2	@, tmp164, pCtx, tmp162,
	movw	r1, #16448	@ tmp177,
	str	r0, [ip, #96]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r2, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	movw	r1, #16444	@ tmp188,
	rsb	ip, r2, r2, asl #3	@, tmp173, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, ip, asl #2	@, tmp175, pCtx, tmp173,
	str	r0, [r2, #116]	@ <variable>.StreamID, <variable>.steram_id
	ldr	ip, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r2, ip, ip, asl #3	@, tmp184, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	ip, r4, r2, asl #2	@, tmp186, pCtx, tmp184,
	movw	r2, #16432	@ tmp200,
	str	r0, [ip, #104]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	movw	ip, #15724	@ tmp202,
	ldr	r1, [r4, ip]	@ <variable>.SyntaxNew.syn_seq.horizontal_size, <variable>.SyntaxNew.syn_seq.horizontal_size
	ldr	r0, [r4, r2]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r1, #15	@ tmp203, <variable>.SyntaxNew.syn_seq.horizontal_size,
	ldr	ip, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp201,
	mov	r1, r2, lsr #4	@ tmp205, tmp203,
	rsb	r2, ip, ip, asl #3	@, tmp195, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	mul	r1, r1, r0	@ tmp206, tmp205, tmp201
	add	ip, r4, r2, asl #2	@, tmp197, pCtx, tmp195,
	movw	r0, #15020	@ tmp215,
	movw	r2, #15016	@ tmp219,
	str	r1, [ip, #112]	@ tmp206, <variable>.slice_start_mbn
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	add	r0, ip, #15	@ tmp216, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	ldr	ip, [r4, r3]	@ temp.1954, <variable>.AvsDecParam.SlcNum
	add	r2, r1, #15	@ tmp220, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	mov	r0, r0, lsr #4	@ tmp218, tmp216,
	mov	r1, r2, lsr #4	@ tmp222, tmp220,
	rsb	r2, ip, ip, asl #3	@, tmp211, temp.1954, temp.1954,
	mul	ip, r1, r0	@ tmp223, tmp222, tmp218
	add	r2, r4, r2, asl #2	@, tmp213, pCtx, tmp211,
	ldr	r0, [r2, #112]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r1, ip, #1	@ tmp224, tmp223,
	cmp	r0, r1	@ <variable>.slice_start_mbn, tmp224
	movhi	r0, #0	@ D.37608,
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	movw	r0, #16437	@ tmp226,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L247	@,
	movw	r0, #16520	@ tmp263,
	movw	r1, #16528	@ tmp274,
	ldr	ip, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, #100]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	rsb	r2, r0, r0, asl #3	@, tmp270, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r0, r4, r2, asl #2	@, tmp272, pCtx, tmp270,
	movw	r2, #16524	@ tmp285,
	str	ip, [r0, #120]	@ <variable>.StreamID, <variable>.steram_id
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r1, r0, r0, asl #3	@, tmp281, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	mov	r0, #1	@ D.37608,
	add	r3, r4, r1, asl #2	@, tmp283, pCtx, tmp281,
	str	ip, [r3, #108]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	movw	r3, #14432	@ tmp287,
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	add	r2, r1, r0	@ tmp290, <variable>.AvsDecParam.SlcNum,
	str	r2, [r4, r3]	@ tmp290, <variable>.AvsDecParam.SlcNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L245:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r3, #512	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37608,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L246:
	mov	r2, r1	@, D.37618
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.37608,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L247:
	mov	ip, #0	@ tmp235,
	str	ip, [r2, #100]	@ tmp235, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	rsb	r1, r0, r0, asl #3	@, tmp241, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, r1, asl #2	@, tmp243, pCtx, tmp241,
	add	r0, r2, #116	@ tmp244, tmp243,
	str	ip, [r0, #4]	@ tmp235, <variable>.steram_id
	mov	r0, #1	@ D.37608,
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	rsb	r3, r1, r1, asl #3	@, tmp251, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, r3, asl #2	@, tmp253, pCtx, tmp251,
	movw	r3, #14432	@ tmp287,
	str	ip, [r2, #108]	@ tmp235, <variable>.stream_lenInByte
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	add	r2, r1, r0	@ tmp290, <variable>.AvsDecParam.SlcNum,
	str	r2, [r4, r3]	@ tmp290, <variable>.AvsDecParam.SlcNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	WriteAvsSliceMsg, .-WriteAvsSliceMsg
	.align	2
	.global	ClearSlice
	.type	ClearSlice, %function
ClearSlice:
	.fnstart
.LFB1397:
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
	ldr	r3, [r1, #8]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	mov	r4, r1	@ pSlcStr, pSlcStr
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L249	@,
	ldr	r1, [r1, #0]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	r1, #0	@ <variable>.stream_phy_addr,
	bne	.L252	@,
.L249:
	ldr	r2, [r4, #12]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	mov	r0, #0	@ tmp139,
	str	r0, [r4, #16]	@ tmp139, <variable>.slice_start_mbn
	cmp	r2, r0	@ <variable>.stream_lenInByte,
	str	r0, [r4, #8]	@ tmp139, <variable>.stream_lenInByte
	str	r0, [r4, #0]	@ tmp139, <variable>.stream_phy_addr
	ble	.L250	@,
	ldr	ip, [r4, #4]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	ip, #0	@ <variable>.stream_phy_addr,
	bne	.L253	@,
.L250:
	mov	r3, #0	@ tmp145,
	mov	r0, #1	@,
	str	r3, [r4, #16]	@ tmp145, <variable>.slice_start_mbn
	str	r3, [r4, #12]	@ tmp145, <variable>.stream_lenInByte
	str	r3, [r4, #4]	@ tmp145, <variable>.stream_phy_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L252:
	ldr	r1, [r4, #20]	@, <variable>.steram_id
	bl	SM_ReleaseStreamSeg	@
	b	.L249	@
.L253:
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #24]	@, <variable>.steram_id
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp145,
	mov	r0, #1	@,
	str	r3, [r4, #16]	@ tmp145, <variable>.slice_start_mbn
	str	r3, [r4, #12]	@ tmp145, <variable>.stream_lenInByte
	str	r3, [r4, #4]	@ tmp145, <variable>.stream_phy_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ClearSlice, .-ClearSlice
	.align	2
	.global	AVS_ClearCurPic
	.type	AVS_ClearCurPic, %function
AVS_ClearCurPic:
	.fnstart
.LFB1398:
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
	movw	r7, #14432	@ tmp136,
	ldr	r3, [r0, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.AvsDecParam.SlcNum,
	ble	.L255	@,
	mov	r4, #0	@ i,
	movw	r6, #16592	@ tmp151,
.L256:
	rsb	r2, r4, r4, asl #3	@, tmp142, i, i,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r4, r4, #1	@ i, i,
	add	r1, r5, r2, asl #2	@, tmp144, pCtx, tmp142,
	add	r1, r1, #96	@, tmp144,
	bl	ClearSlice	@
	ldr	r0, [r5, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	cmp	r0, r4	@ <variable>.AvsDecParam.SlcNum, i
	bgt	.L256	@,
.L255:
	movw	r3, #14432	@ tmp148,
	mov	ip, #0	@ tmp149,
	mov	r0, #1	@,
	str	ip, [r5, r3]	@ tmp149, <variable>.AvsDecParam.SlcNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_ClearCurPic, .-AVS_ClearCurPic
	.align	2
	.global	AVS_DecodeArbiter
	.type	AVS_DecodeArbiter, %function
AVS_DecodeArbiter:
	.fnstart
.LFB1375:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r2, #14980	@ tmp140,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	and	r3, r0, #376832	@ tmp141, <variable>.CodecInfo.Integrity,
	cmp	r3, #376832	@ tmp141,
	beq	.L278	@,
.L260:
	mov	r0, #0	@ D.36201,
.L270:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L278:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ DecMode, <variable>.s32DecMode
	cmp	r3, #4	@ DecMode,
	ldrls	pc, [pc, r3, asl #2]	@ DecMode
	b	.L261	@
.L265:
	.word	.L262
	.word	.L263
	.word	.L264
	.word	.L261
	.word	.L262
.L262:
	movw	r0, #15636	@ tmp144,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	lr, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	lr, #15640	@ tmp146,
	moveq	r1, #0	@ tmp147,
	streq	r1, [r4, lr]	@ tmp147, <variable>.CodecInfo.RefNum
.L261:
	movw	r2, #16044	@ tmp157,
	movw	ip, #15636	@ tmp156,
	ldr	r2, [r4, r2]	@ temp.2044, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #1	@ temp.2044,
	beq	.L279	@,
	cmp	r2, #2	@ temp.2044,
	bne	.L272	@,
	movw	r1, #15640	@ tmp162,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	ble	.L271	@,
.L272:
	add	lr, r4, #15680	@, pCtx,
	add	r2, r4, #14976	@, pCtx,
	add	r1, lr, #24	@,,
	add	r0, r2, #20	@,,
	mov	r2, #368	@,
	bl	memcpy	@
	movw	r0, #15069	@ tmp182,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	r3, #15652	@ tmp178,
	movw	r1, #15336	@ tmp180,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	mov	r0, #18	@,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bl	dprint_vfmw	@
	movw	ip, #14980	@ tmp184,
	mov	r0, #1	@ D.36201,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	bic	r1, r3, #311296	@ tmp187, <variable>.CodecInfo.Integrity,
	str	r1, [r4, ip]	@ tmp187, <variable>.CodecInfo.Integrity
	b	.L270	@
.L263:
	movw	lr, #15636	@ tmp148,
	movw	r2, #16044	@ tmp152,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	ip, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	ip, #15640	@ tmp150,
	moveq	r1, #0	@ tmp151,
	streq	r1, [r4, ip]	@ tmp151, <variable>.CodecInfo.RefNum
	ldr	r1, [r4, r2]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r1, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L261	@,
.L267:
	movw	ip, #15636	@ tmp189,
	mov	r0, r4	@, pCtx
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
.L277:
	bl	AVS_ClearCurPic	@
	movw	r2, #14980	@ tmp164,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	ip, #:lower16:g_event_report	@ tmp168,
	movt	ip, #:upper16:g_event_report	@ tmp168,
	bic	r3, r0, #311296	@ tmp167, <variable>.CodecInfo.Integrity,
	str	r3, [r4, r2]	@ tmp167, <variable>.CodecInfo.Integrity
	ldr	r3, [ip, #0]	@ g_event_report.2050, g_event_report
	cmp	r3, #0	@ g_event_report.2050,
	beq	.L260	@,
	movw	lr, #16592	@ tmp169,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.2050
	mov	r0, #0	@ D.36201,
	b	.L270	@
.L264:
	movw	r1, #16044	@ tmp154,
	ldr	r0, [r4, r1]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r0, #0	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L267	@,
	b	.L261	@
.L279:
	movw	lr, #15640	@ tmp160,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bgt	.L272	@,
.L271:
	mov	r0, r4	@, pCtx
	b	.L277	@
	.fnend
	.size	AVS_DecodeArbiter, .-AVS_DecodeArbiter
	.align	2
	.global	AVSDEC_GetImageBuffer
	.type	AVSDEC_GetImageBuffer, %function
AVSDEC_GetImageBuffer:
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
	movw	r5, #16592	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37539,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.37542,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #16064	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #8	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37542,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_GetImageBuffer, .-AVSDEC_GetImageBuffer
	.align	2
	.global	AVSDEC_RecycleImage
	.type	AVSDEC_RecycleImage, %function
AVSDEC_RecycleImage:
	.fnstart
.LFB1393:
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
	movw	r4, #16592	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L286	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L286:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_RecycleImage, .-AVSDEC_RecycleImage
	.align	2
	.global	AVS_OutputOneFrame
	.type	AVS_OutputOneFrame, %function
AVS_OutputOneFrame:
	.fnstart
.LFB1382:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r5, #16592	@ tmp139,
	mov	r4, r1	@ pCtx, pCtx
	mov	r6, r0	@ pOutput, pOutput
	ldr	r1, [r0, #4]	@, <variable>.FspID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L293	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	add	r3, r4, #16064	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	add	r3, r3, #8	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.36931,
	beq	.L290	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r6, #4]	@, <variable>.FspID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36929,
.L290:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L293:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2298	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36929, pImage
	b	.L290	@
	.fnend
	.size	AVS_OutputOneFrame, .-AVS_OutputOneFrame
	.align	2
	.global	AVSDEC_Init
	.type	AVSDEC_Init, %function
AVSDEC_Init:
	.fnstart
.LFB1390:
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
	movw	r6, #16416	@ tmp141,
	ldr	r8, [r0, r6]	@ D.37301, <variable>.ImageQue.ResetMagicWord
	add	r5, r0, #16064	@ D.37308, pCtx,
	add	r5, r5, #8	@ D.37308, D.37308,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #17112	@,
	bl	__memzero	@
	mov	r0, r5	@, D.37308
	str	r8, [r4, r6]	@ D.37301, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #16592	@ tmp144,
	cmn	r0, #1	@ D.37309,
	str	r0, [r4, r3]	@ D.37309, <variable>.ChanID
	beq	.L298	@,
	add	r6, r4, #14848	@ tmp147, pCtx,
	mov	r1, #800	@,
	add	r0, r6, #28	@, tmp147,
	add	r6, r6, #32	@ D.37323, tmp147,
	bl	__memzero	@
	movw	r2, #15392	@ tmp158,
	movw	r3, #14956	@ tmp157,
	add	r1, r4, #15616	@ tmp149, pCtx,
	str	r6, [r4, r3]	@ D.37323, <variable>.CodecInfo.pRef
	movw	r3, #15388	@ tmp151,
	str	r5, [r4, r2]	@ D.37308, <variable>.CodecInfo.pstImgQue
	movw	r2, #15364	@ tmp148,
	add	ip, r1, #60	@ tmp149, tmp149,
	mov	r1, #1024	@ tmp152,
	str	ip, [r4, r2]	@ tmp149, <variable>.CodecInfo.pBs
	movw	ip, #14952	@ tmp154,
	str	r1, [r4, r3]	@ tmp152, <variable>.CodecInfo.DDR_Stride
	movw	r2, #14964	@ tmp155,
	movw	r1, #14960	@ tmp156,
	str	r6, [r4, r2]	@ D.37323, <variable>.CodecInfo.pRef
	mov	r0, #1	@ D.37314,
	str	r6, [r4, ip]	@ D.37323, <variable>.CodecInfo.pCurFrm
	str	r6, [r4, r1]	@ D.37323, <variable>.CodecInfo.pRef
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L298:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37314,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Init, .-AVSDEC_Init
	.align	2
	.global	AVS_GetImageBuffer
	.type	AVS_GetImageBuffer, %function
AVS_GetImageBuffer:
	.fnstart
.LFB1381:
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #16044	@ tmp146,
	ldr	r3, [r4, r0]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r3, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	beq	.L300	@,
	movw	r5, #15376	@ tmp148,
	movw	ip, #14952	@ tmp157,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId
	add	r3, r1, #1	@ tmp160, <variable>.CodecInfo.CurFrameObjId,
	add	r6, r1, r1, asl #1	@, tmp152, <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId,
	mov	r2, r3, asr #31	@ tmp162, tmp160,
	add	r0, r4, r6, asl #2	@, tmp156, pCtx, tmp152,
	mov	r6, r2, lsr #30	@ tmp163, tmp162,
	add	r7, r0, #14848	@ prephitmp.2176, tmp156,
	add	lr, r3, r6	@ tmp164, tmp160, tmp163
	add	r7, r7, #44	@ prephitmp.2176, prephitmp.2176,
	and	r1, lr, #3	@ tmp165, tmp164,
	str	r7, [r4, ip]	@ prephitmp.2176, <variable>.CodecInfo.pCurFrm
	rsb	r2, r6, r1	@ tmp166, tmp163, tmp165
	str	r2, [r4, r5]	@ tmp166, <variable>.CodecInfo.CurFrameObjId
.L301:
	movw	r5, #16592	@ tmp169,
	mov	r1, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r6, #14952	@ tmp172,
	bl	FSP_NewLogicFs	@
	str	r0, [r7, #4]	@, <variable>.FspID
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r3, #4]	@ D.36879, <variable>.FspID
	cmp	r1, #0	@ D.36879,
	blt	.L308	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L309	@,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [ip, #4]	@, <variable>.FspID
	bl	dprint_vfmw	@
	ldr	r2, [r5, #472]	@ D.36905, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36905,
	beq	.L306	@,
	ldr	r3, [r5, #476]	@ D.36908, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36908,
	beq	.L306	@,
	ldr	r0, [r5, #480]	@ D.36911, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.36911,
	beq	.L306	@,
	ldr	lr, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC9	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L306:
	mov	r0, #1	@ ret,
	mov	r1, #0	@ tmp240,
	str	r1, [r5, #188]	@ tmp240, <variable>.stDispImg.error_level
.L304:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L300:
	add	ip, r4, #14912	@ prephitmp.2176, pCtx,
	movw	r5, #14952	@ tmp168,
	add	r7, ip, #28	@ prephitmp.2176, prephitmp.2176,
	str	r7, [r4, r5]	@ prephitmp.2176, <variable>.CodecInfo.pCurFrm
	b	.L301	@
.L308:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r8, #14956	@ tmp177,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L303	@,
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r9, #14960	@ tmp192,
	movw	sl, #14964	@ tmp197,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
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
	add	ip, r4, #14848	@ D.36896, pCtx,
	add	r0, ip, #32	@ D.36896, D.36896,
	mov	r1, #0	@ tmp211,
	str	r1, [r7, #204]	@ tmp211, <variable>.p_usrdat
	str	r1, [r7, #192]	@ tmp211, <variable>.p_usrdat
	str	r1, [r7, #196]	@ tmp211, <variable>.p_usrdat
	str	r1, [r7, #200]	@ tmp211, <variable>.p_usrdat
	str	r0, [r4, r8]	@ D.36896, <variable>.CodecInfo.pRef
	str	r0, [r4, r6]	@ D.36896, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, sl]	@ D.36896, <variable>.CodecInfo.pRef
	str	r0, [r4, r9]	@ D.36896, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #14884	@ tmp222,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L303:
	add	r0, r4, #16064	@, pCtx,
	movw	r5, #16592	@ tmp225,
	movw	r2, #15640	@ tmp223,
	add	r1, r0, #8	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp224,
	str	r5, [r4, r2]	@ tmp224, <variable>.CodecInfo.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ ret, tmp224
	b	.L304	@
.L309:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #2260	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ ret, pLf
	b	.L304	@
	.fnend
	.size	AVS_GetImageBuffer, .-AVS_GetImageBuffer
	.align	2
	.global	AVS_StartDecode
	.type	AVS_StartDecode, %function
AVS_StartDecode:
	.fnstart
.LFB1379:
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
	movw	r8, #16596	@ tmp177,
	movw	r7, #16600	@ tmp180,
	movw	r6, #16604	@ tmp183,
	movw	r5, #16608	@ tmp186,
	movw	lr, #16612	@ tmp189,
	movw	ip, #16624	@ tmp192,
	movw	r1, #16628	@ tmp195,
	movw	r3, #16776	@ tmp200,
	movw	r2, #16788	@ tmp202,
	mov	r4, r0	@ pCtx, pCtx
	ldr	sl, [r0, r8]	@ <variable>.AvsCfg.mbamt_to_dec, <variable>.AvsCfg.mbamt_to_dec
	ldr	r9, [r0, r2]	@, <variable>.AvsCfg.bit_stream_address_1
	ldr	r8, [r0, r7]	@ <variable>.AvsCfg.mv_output_en, <variable>.AvsCfg.mv_output_en
	ldr	r7, [r0, r6]	@ <variable>.AvsCfg.load_qmatrix_flag, <variable>.AvsCfg.load_qmatrix_flag
	ldr	r6, [r0, r5]	@ <variable>.AvsCfg.ddr_stride, <variable>.AvsCfg.ddr_stride
	ldr	r5, [r0, lr]	@ <variable>.AvsCfg.video_standard, <variable>.AvsCfg.video_standard
	ldr	lr, [r0, ip]	@ <variable>.AvsCfg.tab_base_addr, <variable>.AvsCfg.tab_base_addr
	ldr	ip, [r0, r1]	@ <variable>.AvsCfg.stream_base_addr, <variable>.AvsCfg.stream_base_addr
	ldr	r1, [r0, r3]	@ <variable>.AvsCfg.bit_stream_address_0, <variable>.AvsCfg.bit_stream_address_0
	movw	r3, #16792	@ tmp206,
	ldr	r2, [r4, r3]	@, <variable>.AvsCfg.bit_offset_1
	str	r9, [r0, #76]	@, <variable>.AvsDecParam.StreamPhyAddr
	movw	r0, #16780	@ tmp204,
	ldr	r9, [r4, r0]	@ <variable>.AvsCfg.bit_offset_0, <variable>.AvsCfg.bit_offset_0
	movw	r0, #16784	@ tmp208,
	str	r2, [r4, #84]	@, <variable>.AvsDecParam.StreamBitOffset
	movw	r2, #16796	@ tmp210,
	ldr	r3, [r4, r0]	@, <variable>.AvsCfg.bit_len_0
	ldr	r0, [r4, r2]	@, <variable>.AvsCfg.bit_len_1
	movw	r2, #16648	@,
	strb	r8, [r4, #9]	@ <variable>.AvsCfg.mv_output_en, <variable>.AvsDecParam.mv_output_en
	movw	r8, #16652	@ tmp214,
	str	r3, [r4, #88]	@, <variable>.AvsDecParam.StreamLength
	movw	r3, #16660	@ tmp216,
	str	r0, [r4, #92]	@, <variable>.AvsDecParam.StreamLength
	ldr	r0, [r4, r2]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsCfg.ystaddr_1d
	movw	r2, #16656	@ tmp212,
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.sample_precision, <variable>.AvsCfg.sample_precision
	strb	sl, [r4, #8]	@ <variable>.AvsCfg.mbamt_to_dec, <variable>.AvsDecParam.mbamt_to_dec
	ldrh	sl, [r4, r2]	@, <variable>.AvsCfg.pic_width_in_mb
	ldrh	r2, [r4, r8]	@, <variable>.AvsCfg.pic_height_in_mb
	movw	r8, #16700	@ tmp222,
	strb	r7, [r4, #10]	@ <variable>.AvsCfg.load_qmatrix_flag, <variable>.AvsDecParam.load_qmatrix_flag
	movw	r7, #16704	@ tmp225,
	strh	sl, [r4, #56]	@ movhi	@, <variable>.AvsDecParam.PicWidthInMb
	movw	sl, #16664	@ tmp219,
	strh	r2, [r4, #58]	@ movhi	@, <variable>.AvsDecParam.PicHeightInMb
	movw	r2, #16696	@ tmp246,
	strb	r6, [r4, #11]	@ <variable>.AvsCfg.ddr_stride, <variable>.AvsDecParam.ddr_stride
	movw	r6, #16668	@ tmp228,
	strb	r5, [r4, #12]	@ <variable>.AvsCfg.video_standard, <variable>.AvsDecParam.video_standard
	movw	r5, #16672	@ tmp231,
	strb	lr, [r4, #13]	@ <variable>.AvsCfg.tab_base_addr, <variable>.AvsDecParam.tab_base_addr
	movw	lr, #16680	@ tmp234,
	str	ip, [r4, #60]	@ <variable>.AvsCfg.stream_base_addr, <variable>.AvsDecParam.StreamBaseAddr
	movw	ip, #16684	@ tmp237,
	strb	r0, [r4, #14]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsDecParam.ystaddr_1d
	movw	r0, #16688	@ tmp240,
	str	r1, [r4, #72]	@ <variable>.AvsCfg.bit_stream_address_0, <variable>.AvsDecParam.StreamPhyAddr
	movw	r1, #16692	@ tmp243,
	str	r9, [r4, #80]	@ <variable>.AvsCfg.bit_offset_0, <variable>.AvsDecParam.StreamBitOffset
	strb	r3, [r4, #38]	@ <variable>.AvsCfg.sample_precision, <variable>.AvsDecParam.SamplePrecision
	movw	r3, #16708	@ tmp249,
	ldr	r9, [r4, sl]	@ <variable>.AvsCfg.chroma_format, <variable>.AvsCfg.chroma_format
	ldr	sl, [r4, r8]	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsCfg.pic_coding_type
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.picture_structure, <variable>.AvsCfg.picture_structure
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsCfg.no_fwd_ref_flag
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsCfg.pic_ref_flag
	ldr	r5, [r4, lr]	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	ldr	lr, [r4, ip]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsCfg.pic_qp
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsCfg.fix_qp
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsCfg.repeat_first_field
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.top_field_first, <variable>.AvsCfg.top_field_first
	ldr	r2, [r4, r3]	@, <variable>.AvsCfg.progressive_frame
	movw	r3, #16712	@ tmp252,
	str	r2, [fp, #-48]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.AvsCfg.beta_offset
	movw	r3, #16716	@ tmp255,
	str	r2, [fp, #-52]	@, %sfp
	ldr	r2, [r4, r3]	@ <variable>.AvsCfg.alpha_c_offset, <variable>.AvsCfg.alpha_c_offset
	movw	r3, #16720	@ tmp258,
	ldr	r3, [r4, r3]	@, <variable>.AvsCfg.loop_flt_para_flag
	str	r3, [fp, #-56]	@, %sfp
	movw	r3, #16724	@ tmp261,
	ldr	r3, [r4, r3]	@, <variable>.AvsCfg.loop_flt_disable
	str	r3, [fp, #-60]	@, %sfp
	movw	r3, #16768	@ tmp264,
	ldr	r3, [r4, r3]	@, <variable>.AvsCfg.col_pic_struct
	str	r3, [fp, #-64]	@, %sfp
	movw	r3, #16676	@ tmp267,
	strb	sl, [r4, #15]	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsDecParam.PicCodingType
	movw	sl, #16740	@ tmp282,
	strb	r8, [r4, #16]	@ <variable>.AvsCfg.picture_structure, <variable>.AvsDecParam.PicStruct
	strb	r7, [r4, #17]	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsDecParam.NoFwdRefFlag
	strb	r6, [r4, #18]	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsDecParam.PicRefFlag
	strb	r5, [r4, #19]	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsDecParam.SkipModeFlag
	movw	r5, #16772	@ tmp288,
	strb	lr, [r4, #20]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsDecParam.PicQuant
	strb	ip, [r4, #21]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsDecParam.FixQPFlag
	movw	ip, #16732	@ tmp270,
	strb	r0, [r4, #22]	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsDecParam.RepeatFirstField
	movw	r0, #16728	@ tmp273,
	strb	r1, [r4, #23]	@ <variable>.AvsCfg.top_field_first, <variable>.AvsDecParam.TopFieldFirst
	movw	r1, #16748	@ tmp276,
	strb	r9, [r4, #39]	@ <variable>.AvsCfg.chroma_format, <variable>.AvsDecParam.ChromaFormat
	ldr	r9, [fp, #-48]	@, %sfp
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	strb	r9, [r4, #24]	@, <variable>.AvsDecParam.ProgrsvFrame
	ldr	r8, [fp, #-52]	@, %sfp
	strb	r2, [r4, #26]	@ <variable>.AvsCfg.alpha_c_offset, <variable>.AvsDecParam.AlphaOffset
	movw	r2, #16744	@ tmp279,
	ldr	r9, [r4, r5]	@, <variable>.AvsCfg.col_pic_type
	movw	r5, #16840	@ tmp304,
	strb	r8, [r4, #25]	@, <variable>.AvsDecParam.BetaOffset
	movw	r8, #16752	@ tmp292,
	ldr	r7, [fp, #-56]	@, %sfp
	strb	r7, [r4, #27]	@, <variable>.AvsDecParam.LoopFiltParamFlag
	movw	r7, #16756	@ tmp295,
	ldr	r6, [fp, #-60]	@, %sfp
	strb	r6, [r4, #28]	@, <variable>.AvsDecParam.LoopFiltDisable
	movw	r6, #16760	@ tmp298,
	ldr	lr, [fp, #-64]	@, %sfp
	strb	r3, [r4, #30]	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsDecParam.AdvPredModeDisable
	movw	r3, #16736	@ tmp285,
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.fwd_picture_structure_1, <variable>.AvsCfg.fwd_picture_structure_1
	strb	lr, [r4, #29]	@, <variable>.AvsDecParam.ColPicStruct
	ldr	lr, [r4, ip]	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsCfg.bwd_top_field_first
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsCfg.bwd_picture_structure
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsCfg.fwd_picture_structure_0
	ldr	r2, [r4, sl]	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsCfg.fwd_top_field_first_1
	movw	sl, #16828	@ tmp301,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [r4, r8]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsCfg.bwd_address_0
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsCfg.fwd_address_0
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsCfg.fwd_address_1
	ldr	r6, [r4, sl]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsCfg.current_pmv_addr
	movw	sl, #14952	@ tmp309,
	ldr	sl, [r4, sl]	@, <variable>.CodecInfo.pCurFrm
	ldr	r5, [r4, r5]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsCfg.colpic_mv_addr
	str	sl, [fp, #-52]	@, %sfp
	movw	sl, #14436	@ tmp291,
	str	r9, [r4, sl]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsDecParam.BwdRefPicAddr
	movw	sl, #14440	@ tmp294,
	str	r8, [r4, sl]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsDecParam.FwdRefPic0Addr
	movw	r8, #14444	@ tmp297,
	str	r7, [r4, r8]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsDecParam.FwdRefPic1Addr
	movw	r7, #14452	@ tmp300,
	str	r6, [r4, r7]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsDecParam.CurPmvAddr
	movw	r6, #14456	@ tmp303,
	str	r5, [r4, r6]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsDecParam.ColPmvAddr
	strb	lr, [r4, #31]	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsDecParam.BwdTopFieldFirst
	strb	ip, [r4, #32]	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsDecParam.BwdPicStruct
	strb	r0, [r4, #33]	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsDecParam.FwdTopFieldFirst0
	strb	r1, [r4, #34]	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsDecParam.FwdPicStruct0
	strb	r3, [r4, #36]	@ <variable>.AvsCfg.fwd_picture_structure_1, <variable>.AvsDecParam.FwdPicStruct1
	movw	r3, #16592	@ tmp306,
	strb	r2, [r4, #35]	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsDecParam.FwdTopFieldFirst1
	ldr	r0, [fp, #-48]	@, %sfp
	strb	r0, [r4, #37]	@, <variable>.AvsDecParam.ColPicType
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLogic,
	beq	.L322	@,
	movw	r8, #16808	@ tmp334,
	ldr	r7, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r9, [r4, r8]	@, <variable>.AvsCfg.chroma_quant_param_delta_v
	movw	r6, #16648	@,
	movw	r5, #16764	@ tmp320,
	movw	ip, #16972	@ tmp323,
	movw	r0, #16800	@ tmp325,
	movw	r1, #16804	@ tmp328,
	movw	r3, #16812	@ tmp331,
	movw	r8, #16816	@ tmp337,
	ldr	sl, [r7, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r4, #14592	@ ivtmp.2258, pCtx,
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsCfg.ystaddr_1d
	add	r2, r2, #4	@ ivtmp.2258, ivtmp.2258,
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsCfg.rcn_address
	ldr	r5, [r4, ip]	@ <variable>.AvsCfg.pmv_colmb_addr, <variable>.AvsCfg.pmv_colmb_addr
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.weighting_quant_flag, <variable>.AvsCfg.weighting_quant_flag
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.chroma_quant_param_disable, <variable>.AvsCfg.chroma_quant_param_disable
	ldr	r1, [r4, r3]	@ <variable>.AvsCfg.chroma_quant_param_delta_u, <variable>.AvsCfg.chroma_quant_param_delta_u
	mov	r3, #0	@ ivtmp.2256,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [r4, r8]	@, <variable>.AvsCfg.aec_enable
	movw	r8, #16820	@ tmp340,
	str	r9, [fp, #-52]	@, %sfp
	ldr	r9, [r4, r8]	@, <variable>.AvsCfg.p_filed_enhanced_flag
	movw	r8, #16824	@ tmp343,
	str	r9, [fp, #-56]	@, %sfp
	ldr	r9, [r4, r8]	@ <variable>.AvsCfg.b_filed_enhanced_flag, <variable>.AvsCfg.b_filed_enhanced_flag
	movw	r8, #14852	@ tmp313,
	str	sl, [r4, r8]	@ <variable>.Stride, <variable>.AvsDecParam.VahbStride
	movw	r8, #14448	@ tmp316,
	str	r7, [r4, r8]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsDecParam.CurPicAddr
	movw	r7, #14460	@ tmp319,
	str	r6, [r4, r7]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsDecParam.rcn_address
	mov	r6, #14464	@ tmp322,
	str	r5, [r4, r6]	@ <variable>.AvsCfg.pmv_colmb_addr, <variable>.AvsDecParam.pmv_colmb_addr
	strb	ip, [r4, #40]	@ <variable>.AvsCfg.weighting_quant_flag, <variable>.AvsDecParam.weighting_quant_flag
	strb	r0, [r4, #41]	@ <variable>.AvsCfg.chroma_quant_param_disable, <variable>.AvsDecParam.chroma_quant_param_disable
	strb	r1, [r4, #42]	@ <variable>.AvsCfg.chroma_quant_param_delta_u, <variable>.AvsDecParam.chroma_quant_param_delta_u
	ldr	ip, [fp, #-48]	@, %sfp
	strb	ip, [r4, #43]	@, <variable>.AvsDecParam.chroma_quant_param_delta_v
	ldr	r1, [fp, #-52]	@, %sfp
	strb	r1, [r4, #44]	@, <variable>.AvsDecParam.aec_enable
	ldr	r0, [fp, #-56]	@, %sfp
	strb	r9, [r4, #46]	@ <variable>.AvsCfg.b_filed_enhanced_flag, <variable>.AvsDecParam.b_filed_enhanced_flag
	strb	r0, [r4, #45]	@, <variable>.AvsDecParam.p_filed_enhanced_flag
.L313:
	add	r1, r3, #2	@ tmp391, ivtmp.2256,
	add	r3, r4, r3	@ tmp347, pCtx, ivtmp.2256
	add	r0, r4, r1	@ tmp395, pCtx, tmp391
	add	r6, r3, #16896	@ tmp349, tmp347,
	add	r5, r0, #16896	@ tmp396, tmp395,
	add	r3, r1, #2	@ ivtmp.2256, tmp391,
	ldrsh	ip, [r6, #80]	@ tmp350, <variable>.AvsCfg.cur_wq_matrix
	cmp	r3, #128	@ ivtmp.2256,
	ldrsh	r0, [r5, #80]	@ tmp398, <variable>.AvsCfg.cur_wq_matrix
	mov	r1, r2	@ tmp392, ivtmp.2258
	str	ip, [r1], #4	@ tmp350, <variable>.AvsDecParam.cur_wq_matrix
	str	r0, [r2, #4]	@ tmp398, <variable>.AvsDecParam.cur_wq_matrix
	add	r2, r1, #4	@ ivtmp.2258, tmp392,
	bne	.L313	@,
	movw	r5, #16632	@ tmp352,
	movw	r0, #16636	@ tmp355,
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsCfg.ref_pic_type0
	mov	r1, #16640	@ tmp358,
	ldr	r5, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsCfg.ref_pic_type1
	movw	r2, #16644	@ tmp361,
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsCfg.ref_pic_type2
	add	r3, r4, #16640	@ ivtmp.2246, pCtx,
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsCfg.ref_pic_type3
	movw	r2, #14856	@ tmp351,
	add	ip, r4, #16896	@ D.39675, pCtx,
	str	r6, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsDecParam.RefPicType0
	movw	r2, #14860	@ tmp354,
	add	r3, r3, #204	@ ivtmp.2246, ivtmp.2246,
	str	r5, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsDecParam.RefPicType1
	add	ip, ip, #76	@ D.39675, D.39675,
	movw	r2, #14864	@ tmp357,
	str	r0, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsDecParam.RefPicType2
	movw	r2, #14868	@ tmp360,
	str	r1, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsDecParam.RefPicType3
.L314:
	ldr	r0, [r3, #0]	@ tmp365, <variable>.AvsCfg.pmvtable
	add	r2, r3, #4	@ tmp390, ivtmp.2246,
	ldr	r1, [r3, #4]	@ tmp400, <variable>.AvsCfg.pmvtable
	str	r0, [r3, #-2376]	@ tmp365, <variable>.AvsDecParam.PmvConfigTab
	add	r3, r2, #4	@ ivtmp.2246, tmp390,
	cmp	r3, ip	@ ivtmp.2246, D.39675
	str	r1, [r2, #-2376]	@ tmp400, <variable>.AvsDecParam.PmvConfigTab
	bne	.L314	@,
	movw	r3, #15652	@ tmp366,
	ldr	r2, [r4, #0]	@ D.36620, <variable>.pstExtraData
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	add	r1, r4, #8	@ D.36740, pCtx,
	str	r1, [r4, #4]	@ D.36740, <variable>.pAvsDecParam
	add	ip, r0, #1	@ tmp369, <variable>.CodecInfo.PicCnt,
	str	ip, [r4, r3]	@ tmp369, <variable>.CodecInfo.PicCnt
	ldr	r3, [r2, #680]	@ D.36741, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.36741,
	beq	.L323	@,
	cmp	r3, #2	@ D.36741,
	beq	.L324	@,
.L316:
	ldr	r1, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #14872	@ tmp387,
	mov	r0, #1	@ D.36710,
	str	r1, [r4, ip]	@ <variable>.s32Compress_en, <variable>.AvsDecParam.Compress_en
.L312:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L323:
	cmp	r1, #0	@ D.36740,
	beq	.L316	@,
	movw	ip, #14952	@ tmp371,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r1, #2	@ <variable>.PicCodingType,
	bne	.L316	@,
	mov	r5, #0	@ tmp373,
	movw	lr, #16592	@ tmp374,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, r5	@, tmp373
	str	r5, [r4, #4]	@ tmp373, <variable>.pAvsDecParam
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.36710, tmp373
	b	.L312	@
.L324:
	ldr	r3, [r2, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r3, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L316	@,
	cmp	r1, #0	@ D.36740,
	beq	.L316	@,
	movw	r1, #14952	@ tmp379,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r0, #2	@ <variable>.PicCodingType,
	bne	.L316	@,
	mov	r5, #0	@ tmp381,
	movw	lr, #16592	@ tmp382,
	str	r5, [r4, #4]	@ tmp381, <variable>.pAvsDecParam
	mov	r2, r5	@, tmp381
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.2271, <variable>.pstExtraData
	mov	r0, r5	@ D.36710, tmp381
	ldr	r3, [ip, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp386, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #684]	@ tmp386, <variable>.stDisParams.s32DisNums
	b	.L312	@
.L322:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #2047	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36710, pLogic
	b	.L312	@
	.fnend
	.size	AVS_StartDecode, .-AVS_StartDecode
	.align	2
	.global	AVS_SetImgFormat
	.type	AVS_SetImgFormat, %function
AVS_SetImgFormat:
	.fnstart
.LFB1380:
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
	movw	r1, #15007	@ tmp152,
	mov	r5, r0	@ pCtx, pCtx
	ldrb	r0, [r0, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r2, #15336	@ tmp150,
	movw	r3, #15038	@ tmp151,
	cmp	r0, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	ldr	r9, [r5, r2]	@ codtype, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldrb	r8, [r5, r3]	@ zero_extendqisi2	@ D.36783, <variable>.CodecInfo.Syntax.syn_sdext.video_format
	moveq	r7, #0	@ prephitmp.2286,
	beq	.L327	@,
	movw	r4, #15068	@ tmp154,
	ldrb	r7, [r5, r4]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	subs	r7, r7, #1	@ prephitmp.2286, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame,
	movne	r7, #1	@ prephitmp.2286
.L327:
	movw	sl, #15005	@ tmp159,
	movw	r2, #15070	@ tmp158,
	ldrb	r4, [r5, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio
	movw	r3, #14952	@ tmp171,
	ldrb	sl, [r5, r2]	@ zero_extendqisi2	@ D.36791, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	movw	lr, #16592	@ tmp168,
	sub	r1, r4, #1	@ tmp162, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	uxtb	r0, r1	@ D.37850, tmp162
	cmp	r0, #3	@ D.37850,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	movwls	r2, #:lower16:.LANCHOR1	@ tmp163,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp163,
	addls	r0, r2, r0, asl #2	@, tmp166, tmp163, D.37850,
	movhi	r6, #0	@ dar,
	ldrls	r6, [r0, #256]	@ dar, CSWTCH.497
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L336	@,
	and	r9, r9, #3	@ D.36818, codtype,
	and	sl, sl, #3	@ tmp175, D.36791,
	orr	r2, r9, #3072	@ tmp174, D.36818,
	and	r8, r8, #3	@ tmp178, D.36783,
	orr	sl, r2, sl, asl #12	@, tmp177, tmp174, tmp175,
	and	r3, r6, #7	@ tmp184, dar,
	orr	r8, sl, r8, asl #5	@, tmp180, tmp177, tmp178,
	movw	ip, #15644	@ tmp187,
	orr	r7, r8, r7, asl #8	@, tmp183, tmp180, prephitmp.2286,
	mov	r1, r6	@, dar
	orr	r7, r7, r3, asl #14	@, tmp186, tmp183, tmp184,
	str	r7, [r4, #140]	@ tmp186, <variable>.format
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.ErrRatio, <variable>.CodecInfo.ErrRatio
	str	r9, [r4, #136]	@ D.36818, <variable>.bottom_fld_type
	str	r9, [r4, #132]	@ D.36818, <variable>.top_fld_type
	str	lr, [r4, #180]	@ <variable>.CodecInfo.ErrRatio, <variable>.error_level
	bl	SetAspectRatio	@
	movw	r1, #15016	@ tmp189,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	movw	r3, #15020	@ tmp191,
	str	r2, [r4, #144]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.image_width
	ldr	r3, [r5, r3]	@ D.36823, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	str	r3, [r4, #148]	@ D.36823, <variable>.image_height
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L337	@,
.L332:
	movw	r3, #15069	@ tmp207,
	mov	r0, #6	@ tmp206,
	str	r0, [r4, #336]	@ tmp206, <variable>.ImageDnr.video_standard
	mov	r2, #1	@ tmp210,
	ldrb	r1, [r5, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mov	ip, #8	@ tmp212,
	strb	r2, [r4, #329]	@ tmp210, <variable>.ImageDnr.chroma_format_idc
	cmp	r1, r2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	ip, [r4, #344]	@ tmp212, <variable>.ImageDnr.QP_U
	strb	r2, [r4, #331]	@ tmp210, <variable>.ImageDnr.use_pic_qp_en
	movne	r1, #4	@ iftmp.466,
	moveq	r1, #0	@ iftmp.466,
	str	ip, [r4, #340]	@ tmp212, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #324]	@ iftmp.466, <variable>.ImageDnr.pic_structure
	str	ip, [r4, #348]	@ tmp212, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L337:
	ldr	r1, [r4, #172]	@ D.36828, <variable>.image_stride
	add	r0, r3, #15	@ tmp195, D.36823,
	ldr	r2, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r3, r0, lsr #4	@ tmp196, tmp195,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp194, D.36828,
	add	ip, r2, r1	@ tmp201, <variable>.luma_phy_addr, D.36828
	str	r2, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r3, r3, lr	@ D.36834, tmp196, tmp194
	str	ip, [r4, #96]	@ tmp201, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r2, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r3, r2	@ tmp198, D.36834, <variable>.luma_phy_addr
	add	ip, r0, r3	@ tmp200, <variable>.luma_vir_addr, D.36834
	str	lr, [r4, #108]	@ tmp198, <variable>.chrom_phy_addr
	add	r0, lr, r1	@ tmp202, tmp198, D.36828
	str	ip, [r4, #36]	@ tmp200, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp202, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp198
	str	lr, [r4, #92]	@ tmp198, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L332	@
.L336:
	movw	r1, #:lower16:.LC10	@,
	movw	r2, #2161	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	AVS_SetImgFormat, .-AVS_SetImgFormat
	.align	2
	.global	AVSDEC_VDMPostProc
	.type	AVSDEC_VDMPostProc, %function
AVSDEC_VDMPostProc:
	.fnstart
.LFB1395:
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
	mov	r5, r1	@ ErrRatio, ErrRatio
	bl	AVS_ClearCurPic	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #14868	@,
	bl	__memzero	@
	movw	r0, #15336	@ tmp160,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	bne	.L339	@,
.L363:
	movw	r0, #15336	@ tmp181,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r2, #15644	@ tmp175,
	str	r5, [r4, r2]	@ tmp179, <variable>.CodecInfo.ErrRatio
	cmp	r3, #2	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	ldr	r3, [r6, #0]	@ RefErrThr, <variable>.s32RefErrThr
	beq	.L344	@,
	movw	r1, #15644	@ tmp183,
	ldr	r2, [r4, r1]	@ D.37462, <variable>.CodecInfo.ErrRatio
	cmp	r3, r2	@ RefErrThr, D.37462
	blt	.L364	@,
.L344:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	movw	r0, #14952	@ tmp241,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	ip, #16592	@ tmp238,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2372,
	beq	.L365	@,
	movw	r7, #15656	@ tmp244,
	movw	ip, #15660	@ tmp249,
	ldr	r5, [r4, r7]	@ D.37486, <variable>.CodecInfo.pSeqUD
	movw	r0, #15656	@ tmp247,
	movw	r3, #15336	@ tmp254,
	mov	r2, #0	@ tmp248,
	cmp	r5, #0	@ D.37486,
	movw	lr, #15660	@ tmp252,
	strne	r5, [r6, #192]	@ D.37486, <variable>.p_usrdat
	ldr	r1, [r4, ip]	@ D.37489, <variable>.CodecInfo.pPicUD
	movne	r5, #0	@ tmp246,
	strne	r5, [r4, r7]	@ tmp246, <variable>.CodecInfo.pSeqUD
	mov	r7, #0	@ tmp253,
	cmp	r1, r2	@ D.37489,
	str	r2, [r4, r0]	@ tmp248, <variable>.CodecInfo.pSeqUD
	strne	r1, [r6, #196]	@ D.37489, <variable>.p_usrdat
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	strne	r2, [r4, ip]	@ tmp248, <variable>.CodecInfo.pPicUD
	cmp	r5, #1	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	str	r7, [r4, lr]	@ tmp253, <variable>.CodecInfo.pPicUD
	bls	.L366	@,
.L349:
	movw	r0, #14952	@ tmp286,
	ldr	r5, [r4, r0]	@ pOutput,
.L355:
	movw	r7, #16592	@ tmp287,
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2388,
	beq	.L367	@,
	add	r3, r4, #14848	@ tmp291, pCtx,
	add	ip, r3, #32	@ tmp291, tmp291,
	cmp	ip, r5	@ tmp291, pOutput
	beq	.L357	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #15644	@ tmp294,
	ldr	r2, [r4, lr]	@ temp.2392, <variable>.CodecInfo.ErrRatio
	ldr	r3, [r1, #4]	@ OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r2	@ OutErrThr, temp.2392
	bge	.L358	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r6, #192]	@ D.37520, <variable>.p_usrdat
	cmp	r1, #0	@ D.37520,
	beq	.L359	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp301,
	str	r2, [r6, #192]	@ tmp301, <variable>.p_usrdat
.L359:
	ldr	r1, [r6, #196]	@ D.37523, <variable>.p_usrdat
	cmp	r1, #0	@ D.37523,
	beq	.L357	@,
	movw	ip, #16592	@ tmp302,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp304,
	str	r0, [r6, #196]	@ tmp304, <variable>.p_usrdat
	mov	r0, #1	@ D.37452,
.L342:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L358:
	mov	r0, r5	@, pOutput
	mov	r1, r4	@, pCtx
	bl	AVS_OutputOneFrame	@
	subs	r5, r0, #0	@ D.37527,
	bne	.L357	@,
	ldr	r1, [r6, #192]	@ temp.2397, <variable>.p_usrdat
	cmp	r1, #0	@ temp.2397,
	beq	.L360	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #192]	@ D.37527, <variable>.p_usrdat
.L360:
	ldr	r1, [r6, #196]	@ temp.2399, <variable>.p_usrdat
	cmp	r1, #0	@ temp.2399,
	moveq	r0, r1	@ D.37452, temp.2399
	beq	.L342	@,
	movw	r3, #16592	@ tmp308,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp310,
	str	r0, [r6, #196]	@ tmp310, <variable>.p_usrdat
	b	.L342	@
.L357:
	mov	r0, #1	@ D.37452,
	b	.L342	@
.L339:
	movw	r1, #14956	@ tmp166,
	movw	r7, #16592	@ tmp163,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage,
	beq	.L368	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r7, #14960	@ tmp172,
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r6, #180]	@ D.37453, <variable>.error_level
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2349,
	beq	.L369	@,
	ldr	lr, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	add	r7, r7, lr	@ tmp176, D.37453, <variable>.error_level
	add	r5, r5, r7	@ tmp178, ErrRatio, tmp176
	cmp	r5, #100	@ tmp178,
	movge	r5, #100	@ tmp179,
	b	.L363	@
.L364:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movw	r5, #14956	@ tmp190,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r7, #15640	@ tmp185,
	movw	r6, #16592	@ tmp187,
	mov	r8, #0	@ tmp186,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r8, [r4, r7]	@ tmp186, <variable>.CodecInfo.RefNum
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L345	@,
	movw	sl, #14952	@ tmp195,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	movw	lr, #14960	@ tmp205,
	movw	r9, #14964	@ tmp210,
	ldr	r1, [r1, #4]	@, <variable>.FspID
	str	lr, [fp, #-48]	@,
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-48]	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	add	r2, r4, #14848	@ D.37481, pCtx,
	str	r8, [r7, #204]	@ tmp186, <variable>.p_usrdat
	add	r0, r2, #32	@ D.37481, D.37481,
	str	r8, [r7, #192]	@ tmp186, <variable>.p_usrdat
	str	r8, [r7, #196]	@ tmp186, <variable>.p_usrdat
	str	r8, [r7, #200]	@ tmp186, <variable>.p_usrdat
	str	r0, [r4, r5]	@ D.37481, <variable>.CodecInfo.pRef
	str	r0, [r4, sl]	@ D.37481, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, r9]	@ D.37481, <variable>.CodecInfo.pRef
	ldr	r1, [fp, #-48]	@,
	str	r0, [r4, r1]	@ D.37481, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #14884	@ tmp235,
	str	r0, [r4, r3]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L345:
	movw	r2, #15640	@ tmp236,
	mov	r0, #0	@ tmp237,
	str	r0, [r4, r2]	@ tmp237, <variable>.CodecInfo.RefNum
	b	.L342	@
.L366:
	movw	ip, #15640	@ tmp256,
	movw	r2, #15069	@ tmp258,
	ldr	r3, [r4, ip]	@ iftmp.487, <variable>.CodecInfo.RefNum
	movw	lr, #15640	@ tmp257,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ iftmp.487,
	addle	r3, r3, #1	@ iftmp.487, iftmp.487,
	cmp	r6, #1	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	r3, [r4, lr]	@ iftmp.487, <variable>.CodecInfo.RefNum
	beq	.L351	@,
	movw	r0, #15336	@ tmp260,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r1, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L352	@,
.L351:
	movw	r2, #14952	@ tmp265,
	movw	r5, #16592	@ tmp262,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r6, r4, #14848	@ tmp268, pCtx,
	add	r7, r6, #32	@ tmp268, tmp268,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	r3, #14964	@ tmp267,
	ldr	r3, [r4, r3]	@ temp.2379, <variable>.CodecInfo.pRef
	cmp	r3, r7	@ temp.2379, tmp268
	beq	.L353	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L353:
	movw	r7, #14960	@ tmp274,
	movw	r6, #14956	@ tmp277,
	movw	r1, #14952	@ tmp280,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r5, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	ip, #14964	@ tmp273,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [r4, ip]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r0, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r5, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
.L352:
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #0	@ <variable>.s32DecOrderOutput,
	bne	.L349	@,
	movw	r7, #14960	@ tmp284,
	ldr	r5, [r4, r7]	@ pOutput,
	b	.L355	@
.L365:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3061	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37452, pImage.2372
	b	.L342	@
.L367:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3098	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37452, pImage.2388
	b	.L342	@
.L368:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3038	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37452, pImage
	b	.L342	@
.L369:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3042	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37452, pImage.2349
	b	.L342	@
	.fnend
	.size	AVSDEC_VDMPostProc, .-AVSDEC_VDMPostProc
	.align	2
	.global	AVSDEC_GetRemainImg
	.type	AVSDEC_GetRemainImg, %function
AVSDEC_GetRemainImg:
	.fnstart
.LFB1394:
	@ args = 0, pretend = 0, frame = 0
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	addeq	r5, r4, #16064	@ tmp242, pCtx,
	addeq	r5, r5, #8	@ tmp242, tmp242,
	beq	.L371	@,
	movw	r8, #14964	@ tmp153,
	movw	r6, #16592	@ tmp150,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	add	r5, r4, #16064	@ tmp242, pCtx,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r5, r5, #8	@ tmp242, tmp242,
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.2446,
	beq	.L372	@,
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [sl, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L386	@,
.L374:
	movw	sl, #14960	@ tmp182,
	movw	r6, #16592	@ tmp179,
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.2467,
	beq	.L376	@,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L387	@,
.L376:
	movw	r7, #14956	@ tmp211,
	movw	r6, #16592	@ tmp208,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	sl, r0, #0	@ pImage,
	beq	.L380	@,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L388	@,
.L371:
	mov	r0, r5	@, tmp242
	bl	GetVoLastImageID	@
	mov	r8, r0	@ ret,
.L382:
	mov	r0, r8	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L386:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	r7, [sp, #0]	@ pImage.2446,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L375	@,
	ldr	r1, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L372	@,
	ldr	r6, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r6, #31	@ <variable>.image_width,
	bls	.L372	@,
	ldr	lr, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L374	@,
.L372:
	mvn	r8, #0	@ ret,
	b	.L374	@
.L380:
	cmp	r8, #0	@ ret,
	beq	.L382	@,
	b	.L371	@
.L388:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	mov	r2, #1	@ tmp218,
	str	r2, [sl, #216]	@ tmp218, <variable>.last_frame
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	sl, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L381	@,
	ldr	r1, [sl, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [sl, #192]	@, <variable>.p_usrdat
	mov	r7, #0	@ tmp230,
	bl	FreeUsdByDec	@
	str	r7, [sl, #192]	@ tmp230, <variable>.p_usrdat
	ldr	r1, [sl, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [sl, #196]	@ tmp230, <variable>.p_usrdat
	b	.L371	@
.L387:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	r7, [sp, #0]	@ pImage.2467,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L389	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp203,
	bl	FreeUsdByDec	@
	str	sl, [r7, #192]	@ tmp203, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #196]	@ tmp203, <variable>.p_usrdat
	b	.L376	@
.L375:
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp174,
	bl	FreeUsdByDec	@
	str	sl, [r7, #192]	@ tmp174, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #196]	@ tmp174, <variable>.p_usrdat
	b	.L374	@
.L389:
	ldr	r0, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L379	@,
	ldr	r2, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L379	@,
	ldr	r1, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L376	@,
.L379:
	mvn	r8, #0	@ ret,
	b	.L376	@
.L381:
	ldr	r0, [sl, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L371	@,
	ldr	r2, [sl, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L371	@,
	ldr	r1, [sl, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L382	@,
	b	.L371	@
	.fnend
	.size	AVSDEC_GetRemainImg, .-AVSDEC_GetRemainImg
	.align	2
	.global	AVS_AllocateVHB
	.type	AVS_AllocateVHB, %function
AVS_AllocateVHB:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 840
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #852
	sub	sp, sp, #852	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r1, r0, #14848	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r1, r1, #28	@,,
	sub	r0, fp, #884	@,,
	mov	r2, #800	@,
	bl	memcpy	@
	ldr	r7, [fp, #-744]	@ pCodecInf$Syntax$syn_seq$horizontal_size, pCodecInf.Syntax.syn_seq.horizontal_size
	ldr	r6, [fp, #-740]	@ pCodecInf$Syntax$syn_seq$vertical_size, pCodecInf.Syntax.syn_seq.vertical_size
	cmp	r7, #31	@ pCodecInf$Syntax$syn_seq$horizontal_size,
	bls	.L391	@,
	cmp	r6, #31	@ pCodecInf$Syntax$syn_seq$vertical_size,
	bls	.L391	@,
	ldr	r3, [r4, #0]	@ D.36259, <variable>.pstExtraData
	ldr	r2, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L394	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L417	@,
.L395:
	mov	r8, #4	@ PmvNum,
	mov	sl, #5	@ prephitmp.2511,
	mov	r9, r8	@ DecFsNum, PmvNum
.L402:
	sub	r5, fp, #84	@ tmp204,,
	mov	r1, #36	@,
	mov	r0, r5	@, tmp204
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp179,
	ldr	r1, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [fp, #-56]	@ pCodecInf$Syntax$syn_seq$horizontal_size, FspInstCfg.s32DispFsWidth
	strb	r2, [fp, #-82]	@ tmp179, FspInstCfg.s32RprEnable
	strb	r1, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, r5	@, tmp204
	str	r7, [fp, #-72]	@ pCodecInf$Syntax$syn_seq$horizontal_size, FspInstCfg.s32DecFsWidth
	mov	r7, #0	@ tmp188,
	str	r6, [fp, #-52]	@ pCodecInf$Syntax$syn_seq$vertical_size, FspInstCfg.s32DispFsHeight
	str	r6, [fp, #-68]	@ pCodecInf$Syntax$syn_seq$vertical_size, FspInstCfg.s32DecFsHeight
	ldr	r6, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [fp, #-77]	@ prephitmp.2511, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #16592	@ tmp190,
	uxtbne	r2, r9	@ iftmp.434, DecFsNum
	strb	r2, [fp, #-79]	@ iftmp.434, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r7, [fp, #-80]	@ tmp188, FspInstCfg.s32UserDec
	uxtbne	r8, r8	@ iftmp.435, PmvNum
	moveq	r8, #1	@ iftmp.435,
	strb	r8, [fp, #-76]	@ iftmp.435, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.36308,
	bne	.L412	@,
	ldr	ip, [r4, #0]	@ temp.2541, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [ip, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [ip, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L418	@,
	mov	r3, #1	@ tmp201,
	movw	lr, #17104	@ tmp200,
	mov	r0, r3	@ D.36256, tmp201
	str	r3, [r4, lr]	@ tmp201, <variable>.FspPartitionOK
	b	.L393	@
.L391:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36256,
.L393:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L394:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L395	@,
	ldr	ip, [r3, #564]	@ temp.2526, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ temp.2526, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	lr, [r3, #568]	@ prephitmp.2530, <variable>.stChanOption.s32MaxHeight
	bcc	.L404	@,
	ldr	lr, [r3, #568]	@ prephitmp.2530, <variable>.stChanOption.s32MaxHeight
	cmp	lr, r6	@ prephitmp.2530, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L404	@,
.L405:
	ldr	r5, [r3, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r3, #584]	@ temp.2529, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L407	@,
	add	r8, r9, #1	@ PmvNum.2532, temp.2529,
	cmp	r8, #17	@ PmvNum.2532,
	movge	r8, #17	@ PmvNum,
.L407:
	add	r9, r9, #2	@ DecFsNum, temp.2529,
	ldrb	sl, [r3, #612]	@ zero_extendqisi2	@ prephitmp.2511, <variable>.stChanOption.s32DisplayFrameNum
	b	.L402	@
.L417:
	ldr	ip, [r3, #564]	@ D.36266, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ D.36266, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	r5, [r3, #568]	@ prephitmp.2513, <variable>.stChanOption.s32MaxHeight
	bcc	.L397	@,
	ldr	r5, [r3, #568]	@ prephitmp.2513, <variable>.stChanOption.s32MaxHeight
	cmp	r5, r6	@ prephitmp.2513, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L397	@,
	movw	ip, #17104	@ tmp167,
	ldr	r0, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #1	@ <variable>.FspPartitionOK,
	bne	.L405	@,
	b	.L393	@
.L412:
	mov	r0, r7	@, tmp188
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36256, tmp188
	b	.L393	@
.L404:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36256,
	b	.L393	@
.L418:
	mov	r0, r5	@, D.36308
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36256, D.36308
	b	.L393	@
.L397:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.36266,
	str	r5, [sp, #4]	@ prephitmp.2513,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36256,
	b	.L393	@
	.fnend
	.size	AVS_AllocateVHB, .-AVS_AllocateVHB
	.align	2
	.global	AVS_GetStreamInf
	.type	AVS_GetStreamInf, %function
AVS_GetStreamInf:
	.fnstart
.LFB1377:
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
	movw	ip, #14992	@ tmp191,
	mov	r4, r0	@ pCtx, pCtx
	movw	r1, #15004	@ tmp189,
	ldr	r0, [r0, ip]	@ <variable>.CodecInfo.SizeChanged, <variable>.CodecInfo.SizeChanged
	movw	r3, #15668	@ tmp188,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.sample_precision, <variable>.CodecInfo.Syntax.syn_seq.sample_precision
	cmp	r0, #1	@ <variable>.CodecInfo.SizeChanged,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_seq.sample_precision, <variable>.CodecInfo.sample_precision
	beq	.L517	@,
.L420:
	movw	r1, #15003	@ tmp281,
	movw	r5, #14952	@ tmp284,
	movw	r6, #15069	@ tmp285,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.chroma_format, <variable>.CodecInfo.Syntax.syn_seq.chroma_format
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r7, #15664	@ tmp280,
	ldrb	lr, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mov	r0, r4	@, pCtx
	str	r2, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_seq.chroma_format, <variable>.CodecInfo.chroma_format
	strb	lr, [r3, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	bl	AVS_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36420,
	beq	.L518	@,
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	lr, #16592	@ tmp289,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L519	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r3, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r8, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	sl, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	sl, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldrb	r9, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	rsbs	r8, r9, #1	@ tmp311, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movcc	r8, #0	@ tmp311
	str	r8, [r7, #128]	@ tmp311, <variable>.is_fld_save
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r8, #0	@ tmp313,
	mvn	r9, #0	@,
	strd	r8, [lr, #56]	@ tmp313, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImage,
	movw	r7, #15100	@ tmp319,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	ldr	sl, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.CodecInfo.Syntax.syn_pic.picture_distance
	movw	r2, #15336	@ tmp328,
	ldr	r0, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	sl, [r0, #8]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.pic_distance
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	strb	r1, [ip, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	strb	r7, [r3, #1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.PicCodingType
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	ldr	r6, [r4, r5]	@ temp.2662, <variable>.CodecInfo.pCurFrm
	movw	r5, #15069	@ tmp336,
	cmp	r0, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	movwne	r0, #15070	@ tmp334,
	moveq	r0, #1	@ iftmp.439,
	ldrneb	r0, [r4, r0]	@ zero_extendqisi2	@ iftmp.439, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	strb	r0, [r6, #2]	@ iftmp.439, <variable>.TopFldFirst
	ldrb	sl, [r4, r5]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	sl, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bne	.L516	@,
	movw	r5, #15336	@ tmp338,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r6, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L506	@,
.L516:
	add	r5, r4, #14848	@ tmp701, pCtx,
.L434:
	movw	r2, #15332	@ tmp361,
	movw	r3, #15672	@ tmp360,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag
	add	r0, r5, #28	@, tmp701,
	movw	r6, #14972	@ tmp367,
	movw	r7, #15388	@ tmp377,
	movw	r9, #15080	@ tmp404,
	movw	r5, #15668	@ tmp392,
	str	lr, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.b_filed_enhanced_flag
	mov	r8, #14976	@ tmp366,
	bl	AVS_UpdatePmvTable	@
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.PicMbWidth, <variable>.CodecInfo.PicMbWidth
	ldr	r6, [r4, r7]	@ <variable>.CodecInfo.DDR_Stride, <variable>.CodecInfo.DDR_Stride
	movw	ip, #15082	@ tmp398,
	movw	r0, #15081	@ tmp401,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag
	add	sl, r6, #63	@ tmp381, <variable>.CodecInfo.DDR_Stride,
	cmp	r6, #0	@ <variable>.CodecInfo.DDR_Stride,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag
	movw	r1, #15664	@ tmp395,
	movlt	r6, sl	@ <variable>.CodecInfo.DDR_Stride, tmp381
	movw	sl, #15073	@ tmp410,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.picture_qp
	movw	sl, #15072	@ tmp413,
	ldr	r7, [r4, r5]	@ <variable>.CodecInfo.sample_precision, <variable>.CodecInfo.sample_precision
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.chroma_format, <variable>.CodecInfo.chroma_format
	movw	r1, #15074	@ tmp407,
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.PicMbHeight, <variable>.CodecInfo.PicMbHeight
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.fixed_picture_qp
	movw	sl, #15071	@ tmp416,
	mul	r8, r2, r3	@ tmp368, <variable>.CodecInfo.PicMbWidth, <variable>.CodecInfo.PicMbHeight
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.repeat_first_field
	movw	sl, #15070	@ tmp419,
	sub	r8, r8, #1	@ tmp371, tmp368,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	movw	sl, #15336	@ tmp422,
	str	r9, [fp, #-60]	@, %sfp
	ldr	r9, [r4, sl]	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	sl, #15069	@ tmp424,
	str	r9, [fp, #-64]	@, %sfp
	movw	r9, #16656	@ tmp385,
	str	r2, [r4, r9]	@ <variable>.CodecInfo.PicMbWidth, <variable>.AvsCfg.pic_width_in_mb
	movw	r9, #16652	@ tmp388,
	str	r3, [r4, r9]	@ <variable>.CodecInfo.PicMbHeight, <variable>.AvsCfg.pic_height_in_mb
	movw	r3, #16660	@ tmp391,
	str	r7, [r4, r3]	@ <variable>.CodecInfo.sample_precision, <variable>.AvsCfg.sample_precision
	movw	r3, #16600	@ tmp372,
	mov	r9, r6, asr #6	@ tmp382, <variable>.CodecInfo.DDR_Stride,
	movw	r2, #16596	@ tmp365,
	mov	r7, #0	@ tmp373,
	movw	r6, #16604	@ tmp374,
	str	r7, [r4, r3]	@ tmp373, <variable>.AvsCfg.mv_output_en
	movw	r7, #16664	@ tmp394,
	str	r8, [r4, r2]	@ tmp371, <variable>.AvsCfg.mbamt_to_dec
	movw	r8, #16608	@ tmp376,
	str	r5, [r4, r7]	@ <variable>.CodecInfo.chroma_format, <variable>.AvsCfg.chroma_format
	mov	r2, #1	@ tmp375,
	movw	r5, #16672	@ tmp400,
	str	r2, [r4, r6]	@ tmp375, <variable>.AvsCfg.load_qmatrix_flag
	movw	r6, #16668	@ tmp397,
	str	r9, [r4, r8]	@ tmp382, <variable>.AvsCfg.ddr_stride
	str	lr, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.AvsCfg.no_fwd_ref_flag
	movw	r8, #16612	@ tmp383,
	str	ip, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.AvsCfg.pic_ref_flag
	movw	lr, #16680	@ tmp406,
	movw	ip, #16676	@ tmp403,
	str	r1, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	str	r0, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	mov	r9, #6	@ tmp384,
	str	r9, [r4, r8]	@ tmp384, <variable>.AvsCfg.video_standard
	movw	r0, #16684	@ tmp409,
	ldr	r9, [fp, #-48]	@, %sfp
	movw	r7, #16688	@ tmp412,
	ldrb	sl, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	r6, #16692	@ tmp415,
	movw	lr, #16696	@ tmp418,
	movw	r1, #16700	@ tmp421,
	str	r9, [r4, r0]	@, <variable>.AvsCfg.pic_qp
	cmp	sl, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	ldr	r8, [fp, #-52]	@, %sfp
	movw	r9, #16704	@ tmp426,
	moveq	sl, #1	@ iftmp.440,
	movne	sl, #3	@ iftmp.440,
	add	r3, r4, #15168	@ ivtmp.2624, pCtx,
	add	r2, r4, #15296	@ D.40073, pCtx,
	str	r8, [r4, r7]	@, <variable>.AvsCfg.fix_qp
	movw	r8, #15112	@ tmp431,
	ldr	r5, [fp, #-56]	@, %sfp
	movw	r7, #15108	@ tmp434,
	add	r3, r3, #24	@ ivtmp.2624, ivtmp.2624,
	add	r2, r2, #24	@ D.40073, D.40073,
	str	r5, [r4, r6]	@, <variable>.AvsCfg.repeat_first_field
	movw	r6, #15077	@ tmp437,
	ldr	ip, [fp, #-60]	@, %sfp
	movw	r5, #15076	@ tmp440,
	str	ip, [r4, lr]	@, <variable>.AvsCfg.top_field_first
	movw	lr, #15116	@ tmp443,
	ldr	r0, [fp, #-64]	@, %sfp
	movw	ip, #15124	@ tmp446,
	str	sl, [r4, r9]	@ iftmp.440, <variable>.AvsCfg.picture_structure
	movw	sl, #15068	@ tmp428,
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	str	r0, [r4, r1]	@, <variable>.AvsCfg.pic_coding_type
	movw	r0, #15128	@ tmp449,
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.Syntax.syn_pic.beta_offset, <variable>.CodecInfo.Syntax.syn_pic.beta_offset
	movw	r1, #15132	@ tmp452,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset, <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable
	ldr	r5, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag, <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v
	movw	r1, #16708	@ tmp427,
	str	r9, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.AvsCfg.progressive_frame
	movw	r1, #16712	@ tmp430,
	str	sl, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.beta_offset, <variable>.AvsCfg.beta_offset
	movw	r1, #16716	@ tmp433,
	str	r8, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset, <variable>.AvsCfg.alpha_c_offset
	movw	r1, #16720	@ tmp436,
	str	r7, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag, <variable>.AvsCfg.loop_flt_para_flag
	movw	r1, #16724	@ tmp439,
	movw	r7, #16800	@ tmp442,
	str	r6, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable, <variable>.AvsCfg.loop_flt_disable
	str	r5, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag, <variable>.AvsCfg.weighting_quant_flag
	movw	r6, #16804	@ tmp445,
	movw	r1, #16812	@ tmp448,
	movw	r5, #16808	@ tmp451,
	str	lr, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable, <variable>.AvsCfg.chroma_quant_param_disable
	str	ip, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u, <variable>.AvsCfg.chroma_quant_param_delta_u
	str	r0, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v, <variable>.AvsCfg.chroma_quant_param_delta_v
.L438:
	mov	r1, r3	@ tmp700, ivtmp.2624
	add	r5, r3, #1776	@ tmp457, ivtmp.2624,
	ldrh	r7, [r1], #2	@, <variable>.CodecInfo.Syntax.syn_pic.cur_wq_matrix
	ldrh	ip, [r3, #2]	@, <variable>.CodecInfo.Syntax.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.2624, tmp700,
	add	r0, r1, #1776	@ tmp703, tmp700,
	cmp	r3, r2	@ ivtmp.2624, D.40073
	strh	r7, [r5, #8]	@ movhi	@, <variable>.AvsCfg.cur_wq_matrix
	strh	ip, [r0, #8]	@ movhi	@, <variable>.AvsCfg.cur_wq_matrix
	bne	.L438	@,
	movw	r1, #15320	@ tmp461,
	movw	lr, #15332	@ tmp464,
	movw	r6, #15328	@ tmp467,
	movw	r3, #14952	@ tmp470,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.aec_enable, <variable>.CodecInfo.Syntax.syn_pic.aec_enable
	movw	r5, #16816	@ tmp460,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag
	movw	ip, #16824	@ tmp463,
	ldr	r1, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag
	movw	r2, #16820	@ tmp466,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r7, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.aec_enable, <variable>.AvsCfg.aec_enable
	str	r0, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.AvsCfg.b_filed_enhanced_flag
	str	r1, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag, <variable>.AvsCfg.p_filed_enhanced_flag
	ldrb	r6, [lr, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r6, #2	@ <variable>.PicCodingType,
	beq	.L520	@,
	movw	r7, #14956	@ tmp526,
	movw	r6, #16592	@ tmp523,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2709,
	beq	.L521	@,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16728	@ tmp533,
	movw	r3, #16732	@ tmp534,
	movw	r7, #14960	@ tmp553,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	r0, [lr, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r0, #1	@ <variable>.PicStruct,
	moveq	r0, #3	@ iftmp.449,
	movne	r0, #1	@ iftmp.449,
	str	r0, [r4, r1]	@ iftmp.449, <variable>.AvsCfg.bwd_picture_structure
	ldrsb	ip, [lr, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	ip, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	movw	r3, #16752	@ tmp538,
	ldr	r1, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r1, [r4, r3]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	movw	r1, #16744	@ tmp543,
	ldrb	ip, [lr, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	movw	r3, #16748	@ tmp544,
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.450,
	movne	ip, #1	@ iftmp.450,
	str	ip, [r4, r1]	@ iftmp.450, <variable>.AvsCfg.fwd_picture_structure_0
	ldrsb	ip, [lr, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	ip, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r1, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16756	@ tmp548,
	str	r1, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2726,
	beq	.L522	@,
.L455:
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16736	@ tmp559,
	movw	r3, #16740	@ tmp560,
	movw	r6, #16760	@ tmp564,
	ldrb	r0, [ip, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r0, #1	@ <variable>.PicStruct,
	moveq	r0, #3	@ iftmp.452,
	movne	r0, #1	@ iftmp.452,
	str	r0, [r4, r1]	@ iftmp.452, <variable>.AvsCfg.fwd_picture_structure_1
	ldrsb	lr, [ip, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	lr, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_1
	ldr	r7, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r7, [r4, r6]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_1
	movw	r7, #14956	@ tmp569,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r6, #16592	@ tmp566,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2737,
	beq	.L523	@,
	movw	r3, #14960	@ tmp577,
	ldr	lr, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r2, #16632	@ tmp572,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	lr, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type0
	ldr	r1, [r5, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2742,
	beq	.L524	@,
	movw	r0, #14964	@ tmp585,
	ldr	r1, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r5, #16636	@ tmp580,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r1, [r4, r5]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type1
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2748,
	beq	.L525	@,
	movw	r8, #14952	@ tmp593,
	ldr	r3, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #16640	@ tmp588,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r3, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type2
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2754,
	beq	.L526	@,
	ldr	r0, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	movw	r1, #16644	@ tmp597,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r8, #16648	@ tmp599,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r0, [r4, r1]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type3
	movw	r1, #16764	@ tmp601,
	ldr	ip, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	ip, [r4, r8]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.ystaddr_1d
	movw	r8, #16768	@ tmp606,
	ldr	r2, [r5, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r4, r1]	@ <variable>.luma_2d_phy_addr, <variable>.AvsCfg.rcn_address
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.457,
	movne	ip, #1	@ iftmp.457,
	str	ip, [r4, r8]	@ iftmp.457, <variable>.AvsCfg.col_pic_struct
	movw	r8, #16840	@ tmp623,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	movw	r3, #16772	@ tmp607,
	subs	r5, r2, #0	@ tmp611, <variable>.PicCodingType,
	movne	r5, #1	@ tmp611
	str	r5, [r4, r3]	@ tmp611, <variable>.AvsCfg.col_pic_type
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16828	@ tmp617,
	str	r0, [r4, r1]	@, <variable>.AvsCfg.current_pmv_addr
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r6, #15336	@ tmp624,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	ldr	r7, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	sub	r3, r7, #1	@ D.37860, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	cmp	r3, #1	@ D.37860,
	str	r0, [r4, r8]	@, <variable>.AvsCfg.colpic_mv_addr
	bls	.L464	@,
	mov	r8, #0	@ BBlkNum,
	mov	r5, #32	@ MvENum,
	mov	r7, r8	@ SymNum, BBlkNum
	mov	r6, r8	@ DirNum, BBlkNum
.L466:
	add	r2, r4, #15424	@ ivtmp.2615, pCtx,
	mov	r0, #1	@ iCnt.2639,
	cmp	r0, r5	@ iCnt.2639, MvENum
	sub	ip, r5, #1	@ tmp695, MvENum,
	ldr	r3, [r2, #4]!	@ tmp648, <variable>.CodecInfo.MvEScale
	and	ip, ip, r0	@ tmp697, tmp695,
	bic	r1, r3, #-16777216	@ tmp649, tmp648,
	add	r3, r2, #4	@ ivtmp.2615, ivtmp.2615,
	bic	lr, r1, #16515072	@ tmp649, tmp649,
	str	lr, [r2, #1416]	@ tmp649, <variable>.AvsCfg.pmvtable
	bge	.L467	@,
	cmp	ip, #0	@ tmp697,
	beq	.L465	@,
	ldr	r1, [r3, #0]	@ tmp780, <variable>.CodecInfo.MvEScale
	mov	r0, #2	@ iCnt.2639,
	cmp	r0, r5	@ iCnt.2639, MvENum
	bic	ip, r1, #-16777216	@ tmp781, tmp780,
	bic	r2, ip, #16515072	@ tmp781, tmp781,
	str	r2, [r3, #1416]	@ tmp781, <variable>.AvsCfg.pmvtable
	add	r3, r3, #4	@ ivtmp.2615, ivtmp.2615,
	bge	.L467	@,
.L465:
	ldr	ip, [r3, #4]	@ tmp714, <variable>.CodecInfo.MvEScale
	add	r0, r0, #2	@ iCnt.2639, iCnt.2639,
	ldr	r1, [r3, #0]	@ tmp709, <variable>.CodecInfo.MvEScale
	add	lr, r3, #4	@ tmp698, ivtmp.2615,
	cmp	r0, r5	@ iCnt.2639, MvENum
	bic	r2, ip, #-16777216	@ tmp715, tmp714,
	bic	ip, r1, #-16777216	@ tmp710, tmp709,
	bic	r2, r2, #16515072	@ tmp715, tmp715,
	bic	r1, ip, #16515072	@ tmp710, tmp710,
	str	r1, [r3, #1416]	@ tmp710, <variable>.AvsCfg.pmvtable
	str	r2, [lr, #1416]	@ tmp715, <variable>.AvsCfg.pmvtable
	add	r3, lr, #4	@ ivtmp.2615, tmp698,
	blt	.L465	@,
.L467:
	cmp	r6, #0	@ DirNum,
	ble	.L468	@,
	add	lr, r4, #15552	@ ivtmp.2609, pCtx,
	mov	r2, #1	@ iCnt.2640,
	cmp	r2, r6	@ iCnt.2640, DirNum
	sub	r3, r6, #1	@ tmp690, DirNum,
	ldr	r0, [lr, #4]!	@ tmp651, <variable>.CodecInfo.DirectScale
	and	ip, r3, r2	@ tmp692, tmp690,
	add	r3, lr, #4	@ ivtmp.2609, ivtmp.2609,
	mov	r1, r0, asl #17	@ tmp652, tmp651,
	mov	r0, r1, lsr #17	@ tmp652, tmp652,
	str	r0, [lr, #1352]	@ tmp652, <variable>.AvsCfg.pmvtable
	beq	.L468	@,
	cmp	ip, #0	@ tmp692,
	beq	.L469	@,
	ldr	r0, [r3, #0]	@ tmp776, <variable>.CodecInfo.DirectScale
	mov	r2, #2	@ iCnt.2640,
	cmp	r2, r6	@ iCnt.2640, DirNum
	mov	lr, r0, asl #17	@ tmp778, tmp776,
	mov	r1, lr, lsr #17	@ tmp778, tmp778,
	str	r1, [r3, #1352]	@ tmp778, <variable>.AvsCfg.pmvtable
	add	r3, r3, #4	@ ivtmp.2609, ivtmp.2609,
	beq	.L468	@,
.L469:
	ldr	r0, [r3, #4]	@ tmp723, <variable>.CodecInfo.DirectScale
	add	r2, r2, #2	@ iCnt.2640, iCnt.2640,
	ldr	lr, [r3, #0]	@ tmp718, <variable>.CodecInfo.DirectScale
	add	ip, r3, #4	@ tmp694, ivtmp.2609,
	cmp	r2, r6	@ iCnt.2640, DirNum
	mov	r1, r0, asl #17	@ tmp725, tmp723,
	mov	r0, lr, asl #17	@ tmp720, tmp718,
	mov	lr, r1, lsr #17	@ tmp725, tmp725,
	mov	r0, r0, lsr #17	@ tmp720, tmp720,
	str	r0, [r3, #1352]	@ tmp720, <variable>.AvsCfg.pmvtable
	str	lr, [ip, #1352]	@ tmp725, <variable>.AvsCfg.pmvtable
	add	r3, ip, #4	@ ivtmp.2609, tmp694,
	bne	.L469	@,
.L468:
	cmp	r8, #0	@ BBlkNum,
	ble	.L470	@,
	add	r5, r4, #15552	@ tmp654, pCtx,
	mov	r8, r8, asl #2	@ D.40046, BBlkNum,
	add	r2, r5, #52	@ ivtmp.2600, tmp654,
	add	r3, r4, #16896	@ tmp656, pCtx,
	add	r1, r3, #44	@ tmp656, tmp656,
	mov	r3, #4	@ ivtmp.2605,
	ldr	lr, [r2, #4]	@ tmp659, <variable>.CodecInfo.BBlkDist
	cmp	r3, r8	@ ivtmp.2605, D.40046
	ldr	r0, [r2, #0]	@ tmp663, <variable>.CodecInfo.BBlkDist
	sub	r6, r8, #4	@ tmp686, D.40046,
	ubfx	r6, r6, #2, #1	@ tmp687, tmp686,,
	add	r2, r5, #60	@ ivtmp.2600, tmp654,
	mov	ip, lr, asl #23	@ tmp658, tmp659,
	mov	lr, r0, asl #23	@ tmp662, tmp663,
	mov	ip, ip, lsr #23	@ tmp658, tmp658,
	mov	r0, lr, lsr #23	@ tmp662, tmp662,
	orr	lr, r0, ip, asl #9	@, tmp665, tmp662, tmp658,
	str	lr, [r1, #0]	@ tmp665, <variable>.AvsCfg.pmvtable
	beq	.L470	@,
	cmp	r6, #0	@ tmp687,
	beq	.L471	@,
	ldr	ip, [r2, #4]	@ tmp768, <variable>.CodecInfo.BBlkDist
	add	r3, r4, #16896	@ tmp767, pCtx,
	ldr	r0, [r2, #0]	@ tmp772, <variable>.CodecInfo.BBlkDist
	add	r1, r3, #48	@ tmp767, tmp767,
	mov	r3, #8	@ ivtmp.2605,
	cmp	r3, r8	@ ivtmp.2605, D.40046
	mov	lr, ip, asl #23	@ tmp770, tmp768,
	add	r2, r5, #68	@ ivtmp.2600, tmp654,
	mov	r0, r0, asl #23	@ tmp774, tmp772,
	mov	ip, lr, lsr #23	@ tmp770, tmp770,
	mov	lr, r0, lsr #23	@ tmp774, tmp774,
	orr	r0, lr, ip, asl #9	@, tmp775, tmp774, tmp770,
	str	r0, [r1, #0]	@ tmp775, <variable>.AvsCfg.pmvtable
	beq	.L470	@,
.L471:
	mov	r1, r2	@ tmp688, ivtmp.2600
	ldr	ip, [r2, #4]	@ tmp731, <variable>.CodecInfo.BBlkDist
	ldr	r6, [r1], #8	@ tmp735, <variable>.CodecInfo.BBlkDist
	add	r0, r3, #4	@ tmp689, ivtmp.2605,
	ldr	sl, [r2, #8]	@ tmp748, <variable>.CodecInfo.BBlkDist
	add	r5, r4, r3	@ tmp728, pCtx, ivtmp.2605
	mov	r2, ip, asl #23	@ tmp733, tmp731,
	add	r3, r0, #4	@ ivtmp.2605, tmp689,
	ldr	lr, [r1, #4]	@ tmp744, <variable>.CodecInfo.BBlkDist
	mov	r6, r6, asl #23	@ tmp737, tmp735,
	mov	sl, sl, asl #23	@ tmp750, tmp748,
	add	r0, r4, r0	@ tmp741, pCtx, tmp689
	add	r5, r5, #16896	@ tmp729, tmp728,
	mov	r2, r2, lsr #23	@ tmp733, tmp733,
	mov	ip, lr, asl #23	@ tmp746, tmp744,
	add	r0, r0, #16896	@ tmp742, tmp741,
	cmp	r3, r8	@ ivtmp.2605, D.40046
	mov	r6, r6, lsr #23	@ tmp737, tmp737,
	mov	lr, ip, lsr #23	@ tmp746, tmp746,
	mov	sl, sl, lsr #23	@ tmp750, tmp750,
	orr	r2, r6, r2, asl #9	@, tmp738, tmp737, tmp733,
	str	r2, [r5, #44]	@ tmp738, <variable>.AvsCfg.pmvtable
	orr	ip, sl, lr, asl #9	@, tmp751, tmp750, tmp746,
	add	r2, r1, #8	@ ivtmp.2600, tmp688,
	str	ip, [r0, #44]	@ tmp751, <variable>.AvsCfg.pmvtable
	bne	.L471	@,
.L470:
	cmp	r7, #0	@ SymNum,
	ble	.L472	@,
	add	ip, r4, #15552	@ tmp666, pCtx,
	mov	r2, #1	@ iCnt,
	cmp	r2, r7	@ iCnt, SymNum
	sub	r3, r7, #1	@ tmp679, SymNum,
	mov	r1, ip	@ ivtmp.2594, tmp666
	and	r5, r3, r2	@ tmp681, tmp679,
	ldr	lr, [r1, #36]!	@ tmp668, <variable>.CodecInfo.SymScale
	add	r3, ip, #40	@ ivtmp.2594, tmp666,
	bic	r0, lr, #-16777216	@ tmp669, tmp668,
	bic	lr, r0, #16515072	@ tmp669, tmp669,
	str	lr, [r1, #1368]	@ tmp669, <variable>.AvsCfg.pmvtable
	beq	.L472	@,
	cmp	r5, #0	@ tmp681,
	beq	.L473	@,
	ldr	lr, [r3, #0]	@ tmp763, <variable>.CodecInfo.SymScale
	mov	r2, #2	@ iCnt,
	cmp	r2, r7	@ iCnt, SymNum
	bic	r0, lr, #-16777216	@ tmp764, tmp763,
	bic	r1, r0, #16515072	@ tmp764, tmp764,
	str	r1, [r3, #1368]	@ tmp764, <variable>.AvsCfg.pmvtable
	add	r3, ip, #44	@ ivtmp.2594, tmp666,
	beq	.L472	@,
.L473:
	ldr	lr, [r3, #4]	@ tmp760, <variable>.CodecInfo.SymScale
	add	r2, r2, #2	@ iCnt, iCnt,
	ldr	r0, [r3, #0]	@ tmp755, <variable>.CodecInfo.SymScale
	add	ip, r3, #4	@ tmp683, ivtmp.2594,
	cmp	r2, r7	@ iCnt, SymNum
	bic	r1, lr, #-16777216	@ tmp761, tmp760,
	bic	lr, r0, #-16777216	@ tmp756, tmp755,
	bic	r1, r1, #16515072	@ tmp761, tmp761,
	bic	r0, lr, #16515072	@ tmp756, tmp756,
	str	r0, [r3, #1368]	@ tmp756, <variable>.AvsCfg.pmvtable
	str	r1, [ip, #1368]	@ tmp761, <variable>.AvsCfg.pmvtable
	add	r3, ip, #4	@ ivtmp.2594, tmp683,
	bne	.L473	@,
.L472:
	movw	ip, #15384	@ tmp671,
	movw	r3, #16972	@ tmp670,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pmv_colmb_buf_phyaddr, <variable>.CodecInfo.pmv_colmb_buf_phyaddr
	mov	r0, #1	@ D.36380,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.pmv_colmb_buf_phyaddr, <variable>.AvsCfg.pmv_colmb_addr
	b	.L425	@
.L518:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36380, D.36420
.L425:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L517:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	movw	r3, #15007	@ tmp198,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r3, #15020	@ tmp200,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	movw	r1, #15016	@ tmp194,
	cmp	ip, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	addne	r3, r3, #31	@ tmp205, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	addeq	r3, r3, #15	@ tmp201, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	add	r2, r0, #15	@ tmp195, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	movw	r1, #14972	@ tmp197,
	movne	r3, r3, lsr #5	@ tmp207, tmp205,
	moveq	r3, r3, lsr #4	@ prephitmp.2576, tmp201,
	mov	r2, r2, lsr #4	@ D.36361, tmp195,
	mov	r0, #14976	@ tmp208,
	movne	r3, r3, asl #1	@ prephitmp.2576, tmp207,
	cmp	r2, #512	@ D.36361,
	str	r2, [r4, r1]	@ D.36361, <variable>.CodecInfo.PicMbWidth
	str	r3, [r4, r0]	@ prephitmp.2576, <variable>.CodecInfo.PicMbHeight
	bgt	.L423	@,
	cmp	r3, #512	@ prephitmp.2576,
	ble	.L424	@,
.L423:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36380,
	b	.L425	@
.L424:
	movw	r8, #14956	@ tmp213,
	movw	r6, #16592	@ tmp210,
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	addeq	r5, r4, #14848	@ temp.2644, pCtx,
	addeq	r5, r5, #32	@ temp.2644, temp.2644,
	beq	.L426	@,
	movw	sl, #14952	@ tmp218,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	movw	lr, #14960	@ tmp228,
	movw	r9, #14964	@ tmp233,
	add	r5, r4, #14848	@ temp.2644, pCtx,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	add	r5, r5, #32	@ temp.2644, temp.2644,
	str	lr, [fp, #-68]	@,
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [fp, #-68]	@,
	mov	r2, #1	@,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp247,
	str	ip, [r7, #204]	@ tmp247, <variable>.p_usrdat
	str	ip, [r7, #192]	@ tmp247, <variable>.p_usrdat
	str	ip, [r7, #196]	@ tmp247, <variable>.p_usrdat
	str	ip, [r7, #200]	@ tmp247, <variable>.p_usrdat
	str	r5, [r4, r9]	@ temp.2644, <variable>.CodecInfo.pRef
	str	r5, [r4, sl]	@ temp.2644, <variable>.CodecInfo.pCurFrm
	ldr	r2, [fp, #-68]	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r6, #14884	@ tmp258,
	str	r5, [r4, r2]	@ temp.2644, <variable>.CodecInfo.pRef
	str	r5, [r4, r8]	@ temp.2644, <variable>.CodecInfo.pRef
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r6]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L426:
	add	r6, r4, #16064	@ D.36399, pCtx,
	movw	ip, #16592	@ tmp262,
	add	r6, r6, #8	@ D.36399, D.36399,
	movw	r1, #15640	@ tmp259,
	mov	r2, #0	@ tmp260,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, r1]	@ tmp260, <variable>.CodecInfo.RefNum
	mov	r1, r6	@, D.36399
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ D.36402, <variable>.pstExtraData
	ldr	r7, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L427	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L527	@,
.L427:
	movw	r7, #16592	@ tmp268,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L515	@,
.L428:
	movw	r6, #14992	@ tmp275,
	movw	r0, #14956	@ tmp274,
	movw	ip, #14952	@ tmp271,
	movw	r1, #14964	@ tmp272,
	movw	r2, #14960	@ tmp273,
	str	r5, [r4, r0]	@ temp.2644, <variable>.CodecInfo.pRef
	str	r5, [r4, ip]	@ temp.2644, <variable>.CodecInfo.pCurFrm
	mov	r7, #0	@ tmp276,
	str	r5, [r4, r1]	@ temp.2644, <variable>.CodecInfo.pRef
	mov	r0, r4	@, pCtx
	str	r5, [r4, r2]	@ temp.2644, <variable>.CodecInfo.pRef
	str	r7, [r4, r6]	@ tmp276, <variable>.CodecInfo.SizeChanged
	bl	AVS_AllocateVHB	@
	subs	r5, r0, #0	@ D.36413,
	strne	r7, [r4, r6]	@ tmp276, <variable>.CodecInfo.SizeChanged
	bne	.L420	@,
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, D.36413
	b	.L425	@
.L464:
	movw	r7, #:lower16:.LANCHOR1	@ tmp627,
	movt	r7, #:upper16:.LANCHOR1	@ tmp627,
	add	r0, r7, r3, asl #2	@, tmp630, tmp627, D.37860,
	ldr	r5, [r0, #272]	@ MvENum, CSWTCH.502
	ldr	r8, [r0, #296]	@ BBlkNum, CSWTCH.505
	cmp	r5, #0	@ MvENum,
	ldr	r6, [r0, #280]	@ DirNum, CSWTCH.503
	ldr	r7, [r0, #288]	@ SymNum, CSWTCH.504
	bgt	.L466	@,
	b	.L467	@
.L506:
	movw	r0, #14952	@ tmp343,
	movw	r7, #16592	@ tmp340,
	ldr	sl, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r4, #14848	@ tmp701, pCtx,
	ldr	r1, [sl, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	r1, #14964	@ tmp345,
	ldr	r3, [r4, r1]	@ temp.2669, <variable>.CodecInfo.pRef
	add	r2, r5, #32	@ tmp346, tmp701,
	cmp	r3, r2	@ temp.2669, tmp346
	beq	.L435	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r6	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L435:
	movw	r7, #14960	@ tmp352,
	movw	r9, #14956	@ tmp355,
	movw	ip, #14952	@ tmp358,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r6, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r3, #14964	@ tmp351,
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	lr, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r8, [r4, r9]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r6, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	b	.L434	@
.L520:
	movw	r7, #14956	@ tmp475,
	movw	r6, #16592	@ tmp472,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2686,
	beq	.L528	@,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16728	@ tmp482,
	movw	r3, #16732	@ tmp483,
	movw	r7, #14960	@ tmp492,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.443,
	movne	ip, #1	@ iftmp.443,
	str	ip, [r4, r1]	@ iftmp.443, <variable>.AvsCfg.bwd_picture_structure
	ldrsb	r1, [r2, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	r1, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	ldr	ip, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16752	@ tmp487,
	str	ip, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2693,
	beq	.L529	@,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16744	@ tmp499,
	movw	r3, #16748	@ tmp500,
	movw	r7, #14964	@ tmp509,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.445,
	movne	ip, #1	@ iftmp.445,
	str	ip, [r4, r1]	@ iftmp.445, <variable>.AvsCfg.fwd_picture_structure_0
	ldrsb	r1, [r2, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	r1, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r2, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16756	@ tmp504,
	str	r2, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2701,
	bne	.L455	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1839	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2701
	b	.L425	@
.L519:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1743	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36380, pImage
	b	.L425	@
.L527:
	movw	r3, #17104	@ tmp266,
	ldr	lr, [r4, r3]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	lr, #0	@ <variable>.FspPartitionOK,
	bne	.L428	@,
.L515:
	mov	r0, r6	@, D.36399
	bl	ResetVoQueue	@
	b	.L428	@
.L523:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1863	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2737
	b	.L425	@
.L524:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1867	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2742
	b	.L425	@
.L525:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1871	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2748
	b	.L425	@
.L521:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1847	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2709
	b	.L425	@
.L522:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #1856	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2726
	b	.L425	@
.L526:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1875	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2754
	b	.L425	@
.L529:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1833	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2693
	b	.L425	@
.L528:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1827	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36380, pImage.2686
	b	.L425	@
	.fnend
	.size	AVS_GetStreamInf, .-AVS_GetStreamInf
	.align	2
	.global	AVS_PrepareDecode
	.type	AVS_PrepareDecode, %function
AVS_PrepareDecode:
	.fnstart
.LFB1378:
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
	bl	AVS_GetStreamInf	@
	subs	r0, r0, #0	@,,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVS_PrepareDecode, .-AVS_PrepareDecode
	.align	2
	.global	AVS_next_start_code
	.type	AVS_next_start_code, %function
AVS_next_start_code:
	.fnstart
.LFB1364:
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
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp142, D.35550,
	cmp	r0, #0	@ D.35550,
	movlt	r0, r3	@ D.35550, tmp142
	mov	r3, r0, asr #3	@ tmp143, D.35550,
	sub	r6, r3, #3	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L533	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp149, tmp143,
	bl	BsShow	@
	cmp	r0, #1	@ D.35552,
	mov	r3, r0	@ D.35552,
	beq	.L547	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L533	@,
	cmp	r7, #0	@ tmp149,
	beq	.L536	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.35552,
	mov	r3, r0	@ D.35552,
	beq	.L547	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L536	@,
	b	.L533	@
.L534:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.35552,
	cmp	r3, #1	@ D.35552,
	mov	r0, r4	@, pBs
	beq	.L547	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L533	@,
.L536:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.35552,
	cmp	r3, #1	@ D.35552,
	mov	r0, r4	@, pBs
	bne	.L534	@,
.L547:
	mov	r0, r3	@ D.35555, D.35552
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L533:
	mov	r0, #0	@ D.35555,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_next_start_code, .-AVS_next_start_code
	.align	2
	.global	avs_f_v
	.type	avs_f_v, %function
avs_f_v:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r1	@ v, v
	mov	r6, r2	@ Name, Name
	bl	BsGet	@
	mov	r2, r6	@, Name
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.35407,
	mov	r0, #7	@,
	mov	r3, r4	@, D.35407
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.35407
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	avs_f_v, .-avs_f_v
	.align	2
	.global	AVS_user_data
	.type	AVS_user_data, %function
AVS_user_data:
	.fnstart
.LFB1368:
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
	mov	r5, r1	@ ExtFrm, ExtFrm
	movw	r1, #15364	@ tmp157,
	mov	r4, r0	@ pCtx, pCtx
	movw	r2, #:lower16:.LC23	@,
	ldr	r0, [r0, r1]	@, <variable>.CodecInfo.pBs
	movt	r2, #:upper16:.LC23	@,
	mov	r1, #32	@,
	bl	avs_f_v	@
	movw	r3, #14980	@ tmp160,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	cmp	r5, #0	@ ExtFrm,
	orr	r2, r0, #1048576	@ tmp163, <variable>.CodecInfo.Integrity,
	str	r2, [r4, r3]	@ tmp163, <variable>.CodecInfo.Integrity
	bne	.L551	@,
	movw	r6, #15656	@ tmp164,
	ldr	r1, [r4, r6]	@ D.35954, <variable>.CodecInfo.pSeqUD
	cmp	r1, #0	@ D.35954,
	beq	.L552	@,
	movw	ip, #16592	@ tmp165,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, r6]	@ ExtFrm, <variable>.CodecInfo.pSeqUD
.L552:
	movw	lr, #16592	@ tmp169,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15656	@ tmp171,
	cmp	r0, #0	@ D.35958,
	str	r0, [r4, r3]	@ D.35958, <variable>.CodecInfo.pSeqUD
	beq	.L553	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp172,
	mov	r1, #9	@ tmp177,
	ldrd	r6, [lr, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movw	lr, #14988	@ tmp180,
	strd	r6, [r0, ip]	@ <variable>.pts, D.35958, tmp172
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	r1, [r2, #1036]	@ tmp177, <variable>.from
	movw	r1, #16444	@ tmp184,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	ip, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #16432	@ tmp190,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r0, r2, #4	@ tmp186, <variable>.LenInByte,
	str	r0, [lr, #1048]	@ tmp186, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2882, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r0, #1048]	@ prephitmp.2884, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2884,
	movgt	r2, #1024	@ tmp188,
	strgt	r2, [r0, #1048]	@ tmp188, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2882, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2884, <variable>.data_size
	add	r1, r1, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #16437	@ tmp197,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	bne	.L555	@,
	movw	ip, #15656	@ tmp199,
	movw	r1, #16524	@ tmp200,
	ldr	r3, [r4, ip]	@ temp.2905, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #16444	@ tmp207,
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	lr, r0, r2	@ tmp203, <variable>.data_size, <variable>.LenInByte
	str	lr, [r3, #1048]	@ tmp203, <variable>.data_size
	ldr	r3, [r4, ip]	@ prephitmp.2886, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r3, #1048]	@ prephitmp.2888, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2888,
	movgt	r2, #1024	@ tmp205,
	strgt	r2, [r3, #1048]	@ tmp205, <variable>.data_size
	ldrgt	r3, [r4, ip]	@ prephitmp.2886, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, r1]	@ temp.2906, <variable>.LenInByte
	ldrgt	r2, [r3, #1048]	@ prephitmp.2888, <variable>.data_size
	rsb	r0, r1, #4	@ tmp208, temp.2906,
	add	r2, r0, r2	@ D.35982, tmp208, prephitmp.2888
	cmp	r2, #0	@ D.35982,
	ble	.L555	@,
	sub	lr, r1, #4	@ tmp209, temp.2906,
	movw	ip, #16512	@ tmp211,
	add	r0, r3, lr	@, prephitmp.2886, tmp209
	ldr	r1, [r4, ip]	@, <variable>.VirAddr
	bl	memcpy	@
.L555:
	movw	r3, #:lower16:g_event_report	@ tmp217,
	movt	r3, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [r3, #0]	@ g_event_report.427, g_event_report
	cmp	r3, #0	@ g_event_report.427,
	subne	r2, fp, #28	@ tmp222,,
	movwne	r1, #15656	@ tmp218,
	bne	.L564	@,
.L557:
	mov	r0, #1	@ D.35961,
	b	.L558	@
.L551:
	movw	r5, #15660	@ tmp223,
	ldr	r1, [r4, r5]	@ D.35995, <variable>.CodecInfo.pPicUD
	cmp	r1, #0	@ D.35995,
	beq	.L559	@,
	movw	ip, #16592	@ tmp224,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp227,
	str	r2, [r4, r5]	@ tmp227, <variable>.CodecInfo.pPicUD
.L559:
	movw	r1, #16592	@ tmp228,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15660	@ tmp230,
	cmp	r0, #0	@ D.35998,
	str	r0, [r4, r3]	@ D.35998, <variable>.CodecInfo.pPicUD
	beq	.L553	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp231,
	movw	r2, #14988	@ tmp239,
	ldrd	r6, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r6, [r0, ip]	@ <variable>.pts, D.35998, tmp231
	mov	r0, #10	@ tmp236,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	r0, [lr, #1036]	@ tmp236, <variable>.from
	movw	lr, #16444	@ tmp243,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	ip, [r1, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #16432	@ tmp249,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	ldr	r0, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r1, r0, #4	@ tmp245, <variable>.LenInByte,
	str	r1, [r2, #1048]	@ tmp245, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2874, <variable>.CodecInfo.pPicUD
	ldr	r2, [r0, #1048]	@ prephitmp.2876, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2876,
	movgt	r2, #1024	@ tmp247,
	strgt	r2, [r0, #1048]	@ tmp247, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2874, <variable>.CodecInfo.pPicUD
	ldr	lr, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2876, <variable>.data_size
	add	r1, lr, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #16437	@ tmp256,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #0	@ <variable>.IsLastSeg,
	bne	.L561	@,
	movw	ip, #15660	@ tmp258,
	movw	lr, #16524	@ tmp259,
	ldr	r3, [r4, ip]	@ temp.2923, <variable>.CodecInfo.pPicUD
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	lr, #16444	@ tmp266,
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	r1, r0, r2	@ tmp262, <variable>.data_size, <variable>.LenInByte
	str	r1, [r3, #1048]	@ tmp262, <variable>.data_size
	ldr	r3, [r4, ip]	@ prephitmp.2878, <variable>.CodecInfo.pPicUD
	ldr	r2, [r3, #1048]	@ prephitmp.2880, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2880,
	movgt	r2, #1024	@ tmp264,
	strgt	r2, [r3, #1048]	@ tmp264, <variable>.data_size
	ldrgt	r3, [r4, ip]	@ prephitmp.2878, <variable>.CodecInfo.pPicUD
	ldr	r1, [r4, lr]	@ temp.2925, <variable>.LenInByte
	ldrgt	r2, [r3, #1048]	@ prephitmp.2880, <variable>.data_size
	rsb	r0, r1, #4	@ tmp267, temp.2925,
	add	r2, r0, r2	@ D.36011, tmp267, prephitmp.2880
	cmp	r2, #0	@ D.36011,
	ble	.L561	@,
	sub	r1, r1, #4	@ tmp268, temp.2925,
	movw	ip, #16512	@ tmp270,
	add	r0, r3, r1	@, prephitmp.2878, tmp268
	ldr	r1, [r4, ip]	@, <variable>.VirAddr
	bl	memcpy	@
.L561:
	movw	r3, #:lower16:g_event_report	@ tmp276,
	movt	r3, #:upper16:g_event_report	@ tmp276,
	ldr	r3, [r3, #0]	@ g_event_report.2931, g_event_report
	cmp	r3, #0	@ g_event_report.2931,
	beq	.L557	@,
	sub	r2, fp, #28	@ tmp281,,
	movw	r1, #15660	@ tmp277,
.L564:
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.pPicUD,
	movw	ip, #16592	@ tmp279,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #6	@,
	str	lr, [r2, #-4]!	@ <variable>.CodecInfo.pPicUD,
	blx	r3	@ g_event_report.2931
	mov	r0, #1	@ D.35961,
.L558:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L553:
	mov	r0, #0	@ D.35961,
	b	.L558	@
	.fnend
	.size	AVS_user_data, .-AVS_user_data
	.align	2
	.global	avs_u_v
	.type	avs_u_v, %function
avs_u_v:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r1	@ v, v
	mov	r6, r2	@ Name, Name
	bl	BsGet	@
	mov	r2, r6	@, Name
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.35398,
	mov	r0, #7	@,
	mov	r3, r4	@, D.35398
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.35398
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	avs_u_v, .-avs_u_v
	.align	2
	.global	AVS_picture_display_extension
	.type	AVS_picture_display_extension, %function
AVS_picture_display_extension:
	.fnstart
.LFB1374:
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
	ldr	r4, [r0, #488]	@ pBs, <variable>.pBs
	mov	r7, r1	@ pSyntax, pSyntax
	mov	r8, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC24	@,
	bl	avs_u_v	@
	ldrb	r3, [r7, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	r3, #1	@ <variable>.syn_seq.progressive_sequence,
	beq	.L578	@,
	ldrb	r0, [r7, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	r0, #0	@ <variable>.syn_pic.picture_structure,
	moveq	r0, #1	@ tmp152,
	streq	r0, [r7, #0]	@ tmp152, <variable>.NumOfFrameCentreOffsets
	beq	.L571	@,
	ldrb	r1, [r7, #75]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r1, #1	@ <variable>.syn_pic.repeat_first_field,
	beq	.L577	@,
.L574:
	mov	r6, #2	@ tmp155,
	str	r6, [r7, #0]	@ tmp155, <variable>.NumOfFrameCentreOffsets
.L571:
	mov	r5, r7	@ ivtmp.2986, pSyntax
	mov	r6, #0	@ i,
.L572:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	add	r6, r6, r1	@ i, i,
	str	r0, [r5, #344]	@, <variable>.syn_pdext.frame_centre_horizontal_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC27	@,
	movt	r2, #:upper16:.LC27	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r5, #356]	@, <variable>.syn_pdext.frame_centre_vertical_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	ip, [r7, #0]	@ <variable>.NumOfFrameCentreOffsets, <variable>.NumOfFrameCentreOffsets
	add	r5, r5, #4	@ ivtmp.2986, ivtmp.2986,
	cmp	ip, r6	@ <variable>.NumOfFrameCentreOffsets, i
	bgt	.L572	@,
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r8, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r2, r3, #524288	@ tmp158, <variable>.Integrity,
	str	r2, [r8, #104]	@ tmp158, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L578:
	ldrb	r2, [r7, #75]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r2, #1	@ <variable>.syn_pic.repeat_first_field,
	strne	r3, [r7, #0]	@ <variable>.syn_seq.progressive_sequence, <variable>.NumOfFrameCentreOffsets
	bne	.L571	@,
	ldrb	r3, [r7, #74]	@ zero_extendqisi2	@ <variable>.syn_pic.top_field_first, <variable>.syn_pic.top_field_first
	cmp	r3, #1	@ <variable>.syn_pic.top_field_first,
	bne	.L574	@,
.L577:
	mov	r5, #3	@ tmp154,
	str	r5, [r7, #0]	@ tmp154, <variable>.NumOfFrameCentreOffsets
	b	.L571	@
	.fnend
	.size	AVS_picture_display_extension, .-AVS_picture_display_extension
	.align	2
	.global	AVS_camera_parameters_extension
	.type	AVS_camera_parameters_extension, %function
AVS_camera_parameters_extension:
	.fnstart
.LFB1373:
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
	ldr	r4, [r0, #488]	@ pBs, <variable>.pBs
	movw	r6, #:lower16:.LC28	@ D.36123,
	movt	r6, #:upper16:.LC28	@ D.36123,
	mov	r7, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC24	@,
	movt	r2, #:upper16:.LC24	@,
	movw	r5, #:lower16:.LC26	@ D.36125,
	bl	avs_u_v	@
	movt	r5, #:upper16:.LC26	@ D.36125,
	mov	r2, r6	@, D.36123
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r2, #:upper16:.LC29	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r2, #:upper16:.LC30	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r2, #:upper16:.LC33	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r2, #:upper16:.LC39	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r2, #:upper16:.LC40	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC41	@,
	movt	r2, #:upper16:.LC41	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r2, #:upper16:.LC45	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36125
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r2, r6	@, D.36123
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r7, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #4194304	@ tmp158, <variable>.Integrity,
	str	r3, [r7, #104]	@ tmp158, <variable>.Integrity
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_camera_parameters_extension, .-AVS_camera_parameters_extension
	.align	2
	.global	AVS_copyright_extension
	.type	AVS_copyright_extension, %function
AVS_copyright_extension:
	.fnstart
.LFB1372:
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
	ldr	r4, [r0, #488]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	movt	r2, #:upper16:.LC24	@,
	mov	r0, r4	@, pBs
	movw	r5, #:lower16:.LC26	@ D.36110,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r2, #:upper16:.LC46	@,
	movt	r5, #:upper16:.LC26	@ D.36110,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36110
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36110
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC50	@,
	movt	r2, #:upper16:.LC50	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36110
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC51	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #2097152	@ tmp147, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp147, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AVS_copyright_extension, .-AVS_copyright_extension
	.align	2
	.global	AVS_sequence_display_extension
	.type	AVS_sequence_display_extension, %function
AVS_sequence_display_extension:
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
	ldr	r4, [r0, #488]	@ pBs, <variable>.pBs
	mov	r5, r1	@ pSyntax, pSyntax
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC24	@,
	bl	avs_u_v	@
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	strb	r0, [r5, #42]	@, <variable>.syn_sdext.video_format
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	strb	r0, [r5, #43]	@, <variable>.syn_sdext.sample_range
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.36077,
	strb	r0, [r5, #44]	@ D.36077, <variable>.syn_sdext.colour_description
	cmp	r0, #1	@ D.36077,
	beq	.L586	@,
.L584:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC58	@,
	movt	r2, #:upper16:.LC58	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r5, #60]	@, <variable>.syn_sdext.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC59	@,
	movt	r2, #:upper16:.LC59	@,
	strb	r0, [r5, #41]	@, <variable>.syn_sdext.marker_bit
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r5, #64]	@, <variable>.syn_sdext.display_vertical_size
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	strb	r0, [r5, #40]	@, <variable>.syn_sdext.reserved_bits
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #131072	@ tmp165, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp165, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L586:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	str	r0, [r5, #48]	@, <variable>.syn_sdext.colour_primaries
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	str	r0, [r5, #52]	@, <variable>.syn_sdext.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	str	r0, [r5, #56]	@, <variable>.syn_sdext.matrix_coefficients
	b	.L584	@
	.fnend
	.size	AVS_sequence_display_extension, .-AVS_sequence_display_extension
	.align	2
	.global	AVS_extension
	.type	AVS_extension, %function
AVS_extension:
	.fnstart
.LFB1369:
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
	ldr	r4, [r0, #488]	@ pBs, <variable>.pBs
	mov	r5, r0	@ pCodecInf, pCodecInf
	mov	r6, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC60	@,
	mov	r1, #32	@,
	movt	r2, #:upper16:.LC60	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsShow	@
	sub	r0, r0, #2	@ tmp140,,
	cmp	r0, #9	@ tmp140,
	ldrls	pc, [pc, r0, asl #2]	@ tmp140
	b	.L588	@
.L593:
	.word	.L589
	.word	.L588
	.word	.L590
	.word	.L588
	.word	.L588
	.word	.L591
	.word	.L588
	.word	.L588
	.word	.L588
	.word	.L592
.L592:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_camera_parameters_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L591:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_picture_display_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L590:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_copyright_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L589:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_sequence_display_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L588:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsSkip	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AVS_extension, .-AVS_extension
	.align	2
	.global	AVS_extension_and_userdata
	.type	AVS_extension_and_userdata, %function
AVS_extension_and_userdata:
	.fnstart
.LFB1370:
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
	movw	r3, #15364	@ tmp148,
	add	r7, r0, #14848	@ pCodecInf, pCtx,
	add	r6, r0, #15680	@ pSyntax, pCtx,
	ldr	r4, [r0, r3]	@ pBs, <variable>.CodecInfo.pBs
	add	r7, r7, #28	@ pCodecInf, pCodecInf,
	add	r6, r6, #24	@ pSyntax, pSyntax,
	mov	r5, r0	@ pCtx, pCtx
	mov	r8, r1	@ ExtFrm, ExtFrm
.L605:
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mov	r0, r4	@, pBs
	ble	.L606	@,
.L601:
	bl	AVS_next_start_code	@
	mov	r0, r4	@, pBs
	mov	r1, #32	@,
	bl	BsShow	@
	uxtb	r0, r0	@ Code.3106,
	cmp	r0, #178	@ Code.3106,
	cmpne	r0, #181	@, Code.3106,
	bne	.L607	@,
	cmp	r0, #181	@ Code.3106,
	beq	.L608	@,
.L600:
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	uxtb	r0, r0	@ tmp156,
	cmp	r0, #178	@ tmp156,
	bne	.L605	@,
	mov	r1, r8	@, ExtFrm
	mov	r0, r5	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mov	r0, r4	@, pBs
	bgt	.L601	@,
.L606:
	mov	r0, #0	@ D.36056,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L608:
	mov	r1, r6	@, pSyntax
	mov	r0, r7	@, pCodecInf
	bl	AVS_extension	@
	b	.L600	@
.L607:
	mov	r0, #1	@ D.36056,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_extension_and_userdata, .-AVS_extension_and_userdata
	.align	2
	.global	AVS_sequence_header
	.type	AVS_sequence_header, %function
AVS_sequence_header:
	.fnstart
.LFB1365:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #15364	@ tmp156,
	ldr	r5, [r0, r2]	@ pBs, <variable>.CodecInfo.pBs
	movw	ip, #14980	@ tmp157,
	ldr	lr, [r0, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r6, r0	@ pCtx, pCtx
	mov	r4, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC61	@,
	bic	r0, lr, #65536	@ tmp160, <variable>.CodecInfo.Integrity,
	movt	r2, #:upper16:.LC61	@,
	str	r0, [r6, ip]	@ tmp160, <variable>.CodecInfo.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC62	@,
	movt	r2, #:upper16:.LC62	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r2, #:upper16:.LC63	@,
	str	r0, [r4, #12]	@, <variable>.syn_seq.profile_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r2, #:upper16:.LC64	@,
	str	r0, [r4, #16]	@, <variable>.syn_seq.level_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC65	@,
	movt	r2, #:upper16:.LC65	@,
	strb	r0, [r4, #11]	@, <variable>.syn_seq.progressive_sequence
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC66	@,
	movt	r2, #:upper16:.LC66	@,
	str	r0, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC67	@,
	movt	r2, #:upper16:.LC67	@,
	str	r0, [r4, #24]	@, <variable>.syn_seq.vertical_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC68	@,
	movt	r2, #:upper16:.LC68	@,
	strb	r0, [r4, #7]	@, <variable>.syn_seq.chroma_format
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC69	@,
	movt	r2, #:upper16:.LC69	@,
	strb	r0, [r4, #8]	@, <variable>.syn_seq.sample_precision
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC70	@,
	movt	r2, #:upper16:.LC70	@,
	strb	r0, [r4, #9]	@, <variable>.syn_seq.aspect_ratio
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	strb	r0, [r4, #10]	@, <variable>.syn_seq.frame_rate_code
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r4, #28]	@, <variable>.syn_seq.bit_rate_lower
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #12	@,
	movw	r2, #:lower16:.LC72	@,
	movt	r2, #:upper16:.LC72	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC73	@,
	movt	r2, #:upper16:.LC73	@,
	str	r0, [r4, #32]	@, <variable>.syn_seq.bit_rate_upper
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	strb	r0, [r4, #5]	@, <variable>.syn_seq.low_delay
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r4, #36]	@, <variable>.syn_seq.bbv_buffer_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	movw	r1, #15016	@ tmp185,
	ldr	r2, [r6, r1]	@ D.35610, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	ldr	r3, [r4, #20]	@ <variable>.syn_seq.horizontal_size, <variable>.syn_seq.horizontal_size
	cmp	r3, r2	@ <variable>.syn_seq.horizontal_size, D.35610
	strb	r0, [r4, #4]	@, <variable>.syn_seq.reserved_bits
	beq	.L613	@,
.L610:
	movw	ip, #:lower16:g_event_report	@ tmp192,
	movt	ip, #:upper16:g_event_report	@ tmp192,
	movw	r1, #14992	@ tmp190,
	mov	lr, #1	@ tmp191,
	str	lr, [r6, r1]	@ tmp191, <variable>.CodecInfo.SizeChanged
	ldr	r3, [ip, #0]	@ g_event_report.424, g_event_report
	cmp	r3, #0	@ g_event_report.424,
	beq	.L611	@,
	movw	r1, #15020	@ tmp193,
	strh	r2, [fp, #-36]	@ movhi	@ D.35610, para
	ldrh	lr, [r6, r1]	@, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	movw	r2, #16592	@ tmp197,
	mov	r1, #2	@,
	strh	lr, [fp, #-34]	@ movhi	@, para
	ldrh	ip, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	strh	ip, [fp, #-32]	@ movhi	@, para
	ldrh	r0, [r4, #24]	@, <variable>.syn_seq.vertical_size
	strh	r0, [fp, #-30]	@ movhi	@, para
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	sub	r2, fp, #36	@,,
	blx	r3	@ g_event_report.424
.L611:
	add	lr, r6, #14976	@, pCtx,
	mov	r1, r4	@, pSyntax
	add	r0, lr, #20	@,,
	mov	r2, #368	@,
	bl	memcpy	@
	movw	r1, #14988	@ tmp207,
	movw	r2, #14980	@ tmp211,
	ldr	ip, [r6, r1]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r3, #1	@ tmp206,
	add	ip, ip, r3	@ tmp210, <variable>.CodecInfo.SeqCnt,
	str	ip, [r6, r1]	@ tmp210, <variable>.CodecInfo.SeqCnt
	orr	ip, r0, #65536	@ tmp214, <variable>.CodecInfo.Integrity,
	str	ip, [r6, r2]	@ tmp214, <variable>.CodecInfo.Integrity
	movw	r2, #14984	@ tmp205,
	mov	r0, r3	@, tmp206
	str	r3, [r6, r2]	@ tmp206, <variable>.CodecInfo.NewSeq
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L613:
	movw	r0, #15020	@ tmp187,
	ldr	r1, [r4, #24]	@ <variable>.syn_seq.vertical_size, <variable>.syn_seq.vertical_size
	ldr	r3, [r6, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	cmp	r1, r3	@ <variable>.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	bne	.L610	@,
	b	.L611	@
	.fnend
	.size	AVS_sequence_header, .-AVS_sequence_header
	.align	2
	.global	avs_se_v
	.type	avs_se_v, %function
avs_se_v:
	.fnstart
.LFB1362:
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
	mov	r7, r1	@ Name, Name
	mov	r1, #32	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r5, r0	@ LeadingZeros,
	mvnhi	r4, #-2147483648	@ Info,
	movhi	ip, #32	@ NumBits,
	bhi	.L616	@,
	add	r8, r0, #1	@ D.35446, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r8	@, D.35446
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.35446
	sub	r0, r0, #1	@ Info.3161,,
	tst	r0, #1	@ Info.3161,
	mov	r4, r0, asr #1	@ Info.3162, Info.3161,
	mov	r0, r6	@, pBs
	addne	r4, r4, #1	@ Info, Info.3162,
	rsbeq	r4, r4, #0	@ Info, Info.3162
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp146, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp146,
.L616:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	ip, [sp, #0]	@ NumBits,
	bl	dprint_vfmw	@
	mov	r0, r4	@, Info
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	avs_se_v, .-avs_se_v
	.align	2
	.global	avs_ue_v
	.type	avs_ue_v, %function
avs_ue_v:
	.fnstart
.LFB1361:
	@ args = 0, pretend = 0, frame = 0
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
	mov	r7, r1	@ Name, Name
	mov	r1, #32	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r5, r0	@ LeadingZeros,
	mvnhi	r4, #0	@ Info,
	movhi	ip, #32	@ NumBits,
	bhi	.L622	@,
	add	r4, r0, #1	@ D.35424, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r4	@, D.35424
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r4	@, D.35424
	sub	r4, r0, #1	@ Info,,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp142, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp142,
.L622:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	ip, [sp, #0]	@ NumBits,
	bl	dprint_vfmw	@
	mov	r0, r4	@, Info
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	avs_ue_v, .-avs_ue_v
	.align	2
	.global	AVS_pb_picture_header
	.type	AVS_pb_picture_header, %function
AVS_pb_picture_header:
	.fnstart
.LFB1367:
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
	ldr	r5, [r0, #488]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	ip, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r2, ip, #262144	@ tmp189, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp189, <variable>.Integrity
	movw	r2, #:lower16:.LC75	@,
	movt	r2, #:upper16:.LC75	@,
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC76	@,
	movt	r2, #:upper16:.LC76	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r3, #72	@ <variable>.syn_seq.profile_id,
	str	r0, [r4, #88]	@, <variable>.syn_pic.bbv_delay
	beq	.L649	@,
.L625:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	strb	r0, [r4, #83]	@, <variable>.syn_pic.picture_coding_type
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	r3, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #104]	@, <variable>.syn_pic.picture_distance
	beq	.L650	@,
.L626:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	bl	avs_u_v	@
	uxtb	r2, r0	@ D.35822,
	strb	r2, [r4, #72]	@ D.35822, <variable>.syn_pic.progressive_frame
	cmp	r2, #0	@ D.35822,
	movne	r3, #1	@ tmp209,
	strneb	r3, [r4, #73]	@ tmp209, <variable>.syn_pic.picture_structure
	beq	.L651	@,
.L628:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	strb	r0, [r4, #74]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #76]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r1, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	cmp	r1, #2	@ <variable>.syn_pic.picture_coding_type,
	strb	r0, [r4, #77]	@, <variable>.syn_pic.picture_qp
	beq	.L652	@,
.L629:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	bl	avs_u_v	@
	strb	r0, [r4, #85]	@, <variable>.syn_pic.picture_reference_flag
.L631:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC89	@,
	movt	r2, #:upper16:.LC89	@,
	bl	avs_u_v	@
	ldrb	r2, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	mov	r3, #0	@ tmp227,
	str	r3, [r4, #336]	@ tmp227, <variable>.syn_pic.b_filed_enhanced_flag
	cmp	r2, #2	@ <variable>.syn_pic.picture_coding_type,
	str	r3, [r4, #332]	@ tmp227, <variable>.syn_pic.p_filed_enhanced_flag
	strb	r0, [r4, #86]	@, <variable>.syn_pic.no_forward_reference_flag
	beq	.L653	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC91	@,
	movt	r2, #:upper16:.LC91	@,
	bl	avs_u_v	@
	str	r0, [r4, #332]	@, <variable>.syn_pic.p_filed_enhanced_flag
.L633:
	ldrb	r0, [r4, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	r0, #1	@ <variable>.syn_pic.picture_structure,
	beq	.L634	@,
	ldr	ip, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	ip, #72	@ <variable>.syn_seq.profile_id,
	beq	.L635	@,
.L634:
	mov	r1, #0	@ tmp234,
	str	r1, [r4, #336]	@ tmp234, <variable>.syn_pic.b_filed_enhanced_flag
	str	r1, [r4, #332]	@ tmp234, <variable>.syn_pic.p_filed_enhanced_flag
.L635:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	strb	r0, [r4, #79]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	strb	r0, [r4, #78]	@, <variable>.syn_pic.skip_mode_flag
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r3, #0	@ tmp242,
	str	r3, [r4, #116]	@ tmp242, <variable>.syn_pic.beta_offset
	str	r3, [r4, #112]	@ tmp242, <variable>.syn_pic.alpha_c_offset
	uxtb	r2, r0	@ D.35877,
	strb	r2, [r4, #80]	@ D.35877, <variable>.syn_pic.loop_filter_disable
	cmp	r2, r3	@ D.35877,
	beq	.L654	@,
.L636:
	ldr	lr, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	lr, #72	@ <variable>.syn_seq.profile_id,
	beq	.L655	@,
.L637:
	ldrb	r0, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	cmp	r0, #1	@ <variable>.syn_pic.picture_coding_type,
	movne	r0, #2	@ tmp261,
	str	r0, [r4, #340]	@ tmp261, <variable>.syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r2, r3, #262144	@ tmp263, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp263, <variable>.Integrity
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L652:
	ldrb	lr, [r4, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	lr, #1	@ <variable>.syn_pic.picture_structure,
	streqb	lr, [r4, #85]	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_reference_flag
	bne	.L629	@,
	b	.L631	@
.L651:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	bl	avs_u_v	@
	uxtb	ip, r0	@ D.35828,
	strb	ip, [r4, #73]	@ D.35828, <variable>.syn_pic.picture_structure
	cmp	ip, #0	@ D.35828,
	bne	.L628	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	bl	avs_u_v	@
	strb	r0, [r4, #84]	@, <variable>.syn_pic.advanced_pred_mode_disable
	b	.L628	@
.L654:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.35883,
	strb	r0, [r4, #81]	@ D.35883, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	r0, #0	@ D.35883,
	beq	.L636	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	str	r0, [r4, #112]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, <variable>.syn_pic.beta_offset
	b	.L636	@
.L653:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC90	@,
	movt	r2, #:upper16:.LC90	@,
	bl	avs_u_v	@
	str	r0, [r4, #336]	@, <variable>.syn_pic.b_filed_enhanced_flag
	b	.L633	@
.L655:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	bl	avs_u_v	@
	cmp	r0, #1	@ D.35896,
	mov	r7, r0	@ D.35896,
	str	r0, [r4, #120]	@ D.35896, <variable>.syn_pic.weighting_quant_flag
	beq	.L656	@,
.L638:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC106	@,
	movt	r2, #:upper16:.LC106	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, <variable>.syn_pic.aec_enable
	b	.L637	@
.L649:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r1, [r4, #88]	@ <variable>.syn_pic.bbv_delay, <variable>.syn_pic.bbv_delay
	str	r0, [r4, #92]	@ D.35805, <variable>.syn_pic.bbv_delay_extension
	orr	r0, r0, r1, asl #7	@, tmp197, D.35805, <variable>.syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ tmp197, <variable>.syn_pic.bbv_delay
	b	.L625	@
.L650:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.bbv_check_times
	b	.L626	@
.L656:
	mov	r1, r0	@, D.35896
	movw	r2, #:lower16:.LC98	@,
	mov	r0, r5	@, pBs
	movt	r2, #:upper16:.LC98	@,
	bl	avs_u_v	@
	mov	r1, r7	@, D.35896
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	str	r0, [r4, #124]	@, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.35903,
	str	r0, [r4, #128]	@ D.35903, <variable>.syn_pic.chroma_quant_param_disable
	beq	.L657	@,
.L639:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC103	@,
	str	r0, [r4, #140]	@, <variable>.syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3202, <variable>.syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ prephitmp.3202,
	str	r0, [r4, #144]	@, <variable>.syn_pic.weighting_quant_model
	beq	.L642	@,
	ldr	ip, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	ip, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L641	@,
	cmp	r3, #3	@ prephitmp.3202,
	beq	.L642	@,
.L641:
	cmp	r3, #2	@ prephitmp.3202,
	beq	.L644	@,
	ldr	r1, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r1, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L638	@,
	cmp	r3, #3	@ prephitmp.3202,
	bne	.L638	@,
.L644:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #172]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #176]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #180]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #184]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #188]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #192]	@, <variable>.syn_pic.weighting_quant_param_delta2
	b	.L638	@
.L642:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #148]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #152]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #156]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #160]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #164]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3202, <variable>.syn_pic.weighting_quant_param_index
	str	r0, [r4, #168]	@, <variable>.syn_pic.weighting_quant_param_delta1
	b	.L641	@
.L657:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	str	r0, [r4, #132]	@, <variable>.syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, <variable>.syn_pic.chroma_quant_param_delta_v
	b	.L639	@
	.fnend
	.size	AVS_pb_picture_header, .-AVS_pb_picture_header
	.align	2
	.global	AVS_i_picture_header
	.type	AVS_i_picture_header, %function
AVS_i_picture_header:
	.fnstart
.LFB1366:
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
	ldr	r5, [r0, #488]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	ip, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r2, ip, #262144	@ tmp187, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp187, <variable>.Integrity
	movw	r2, #:lower16:.LC107	@,
	movt	r2, #:upper16:.LC107	@,
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC76	@,
	movt	r2, #:upper16:.LC76	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r3, #72	@ <variable>.syn_seq.profile_id,
	str	r0, [r4, #88]	@, <variable>.syn_pic.bbv_delay
	beq	.L677	@,
.L660:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC108	@,
	movt	r2, #:upper16:.LC108	@,
	bl	avs_u_v	@
	uxtb	r3, r0	@ D.35664,
	strb	r3, [r4, #82]	@ D.35664, <variable>.syn_pic.time_code_flag
	cmp	r3, #1	@ D.35664,
	beq	.L678	@,
.L661:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	r2, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #104]	@, <variable>.syn_pic.picture_distance
	beq	.L679	@,
.L662:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	bl	avs_u_v	@
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	ip, #1	@ <variable>.syn_seq.progressive_sequence,
	uxtb	r0, r0	@ D.35680,
	strb	r0, [r4, #72]	@ D.35680, <variable>.syn_pic.progressive_frame
	streqb	ip, [r4, #72]	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_pic.progressive_frame
	beq	.L664	@,
	cmp	r0, #0	@ D.35680,
	beq	.L680	@,
.L664:
	mov	lr, #1	@ tmp208,
	strb	lr, [r4, #73]	@ tmp208, <variable>.syn_pic.picture_structure
.L665:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	strb	r0, [r4, #74]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #76]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrh	r1, [r4, #72]	@ tmp218,
	cmp	r1, #0	@ tmp218,
	strb	r0, [r4, #77]	@, <variable>.syn_pic.picture_qp
	beq	.L681	@,
.L666:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	strb	r0, [r4, #79]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r3, #0	@ tmp225,
	str	r3, [r4, #116]	@ tmp225, <variable>.syn_pic.beta_offset
	str	r3, [r4, #112]	@ tmp225, <variable>.syn_pic.alpha_c_offset
	uxtb	r0, r0	@ D.35715,
	strb	r0, [r4, #80]	@ D.35715, <variable>.syn_pic.loop_filter_disable
	cmp	r0, r3	@ D.35715,
	beq	.L682	@,
.L667:
	ldr	ip, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	ip, #72	@ <variable>.syn_seq.profile_id,
	beq	.L683	@,
.L668:
	mov	r0, #1	@ tmp242,
	mov	ip, #0	@ tmp244,
	strb	r0, [r4, #85]	@ tmp242, <variable>.syn_pic.picture_reference_flag
	str	ip, [r4, #340]	@ tmp244, <variable>.syn_pic.derived_pic_coding_type
	ldr	r2, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	orr	r3, r2, #262144	@ tmp246, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp246, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L680:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	bl	avs_u_v	@
	strb	r0, [r4, #73]	@, <variable>.syn_pic.picture_structure
	b	.L665	@
.L682:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	bl	avs_u_v	@
	uxtb	r2, r0	@ D.35721,
	strb	r2, [r4, #81]	@ D.35721, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	r2, #0	@ D.35721,
	beq	.L667	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	str	r0, [r4, #112]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, <variable>.syn_pic.beta_offset
	b	.L667	@
.L681:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	bl	avs_u_v	@
	strb	r0, [r4, #78]	@, <variable>.syn_pic.skip_mode_flag
	b	.L666	@
.L683:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	bl	avs_u_v	@
	cmp	r0, #0	@ D.35734,
	str	r0, [r4, #120]	@ D.35734, <variable>.syn_pic.weighting_quant_flag
	bne	.L684	@,
.L669:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC106	@,
	movt	r2, #:upper16:.LC106	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, <variable>.syn_pic.aec_enable
	b	.L668	@
.L677:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r1, [r4, #88]	@ <variable>.syn_pic.bbv_delay, <variable>.syn_pic.bbv_delay
	str	r0, [r4, #92]	@ D.35657, <variable>.syn_pic.bbv_delay_extension
	orr	r0, r0, r1, asl #7	@, tmp194, D.35657, <variable>.syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ tmp194, <variable>.syn_pic.bbv_delay
	b	.L660	@
.L678:
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	movw	r2, #:lower16:.LC109	@,
	movt	r2, #:upper16:.LC109	@,
	bl	avs_u_v	@
	str	r0, [r4, #96]	@, <variable>.syn_pic.time_code
	b	.L661	@
.L679:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.bbv_check_times
	b	.L662	@
.L684:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC98	@,
	movt	r2, #:upper16:.LC98	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	str	r0, [r4, #124]	@, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.35741,
	str	r0, [r4, #128]	@ D.35741, <variable>.syn_pic.chroma_quant_param_disable
	beq	.L685	@,
.L670:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC103	@,
	str	r0, [r4, #140]	@, <variable>.syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3261, <variable>.syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ prephitmp.3261,
	str	r0, [r4, #144]	@, <variable>.syn_pic.weighting_quant_model
	beq	.L673	@,
	ldr	lr, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	lr, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L672	@,
	cmp	r3, #3	@ prephitmp.3261,
	beq	.L673	@,
.L672:
	cmp	r3, #2	@ prephitmp.3261,
	beq	.L675	@,
	ldr	r1, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r1, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L669	@,
	cmp	r3, #3	@ prephitmp.3261,
	bne	.L669	@,
.L675:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #172]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #176]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #180]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #184]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #188]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #192]	@, <variable>.syn_pic.weighting_quant_param_delta2
	b	.L669	@
.L685:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	str	r0, [r4, #132]	@, <variable>.syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, <variable>.syn_pic.chroma_quant_param_delta_v
	b	.L670	@
.L673:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #148]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #152]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #156]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #160]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #164]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3261, <variable>.syn_pic.weighting_quant_param_index
	str	r0, [r4, #168]	@, <variable>.syn_pic.weighting_quant_param_delta1
	b	.L672	@
	.fnend
	.size	AVS_i_picture_header, .-AVS_i_picture_header
	.align	2
	.global	AVS_ParseHeader
	.type	AVS_ParseHeader, %function
AVS_ParseHeader:
	.fnstart
.LFB1363:
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
	movw	r1, #15364	@ tmp154,
	ldr	r7, [r0, r1]	@ pBs, <variable>.CodecInfo.pBs
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #16424	@ tmp155,
	mov	r2, #0	@ tmp156,
	mov	r1, #32	@,
	str	r2, [r4, r0]	@ tmp156, <variable>.IsPackWaitDec
	mov	r0, r7	@, pBs
	add	r6, r4, #14848	@ pCodecInf, pCtx,
	bl	BsShow	@
	add	r5, r4, #15680	@ pSyntax, pCtx,
	add	r6, r6, #28	@ pCodecInf, pCodecInf,
	add	r5, r5, #24	@ pSyntax, pSyntax,
	uxtb	r0, r0	@ Code.3322,
	sub	r3, r0, #176	@ tmp157, Code.3322,
	cmp	r3, #78	@ tmp157,
	ldrls	pc, [pc, r3, asl #2]	@ tmp157
	b	.L687	@
.L697:
	.word	.L688
	.word	.L689
	.word	.L690
	.word	.L691
	.word	.L723
	.word	.L693
	.word	.L694
	.word	.L689
	.word	.L723
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L687
	.word	.L696
.L689:
	movw	r2, #14980	@ tmp210,
	ldr	r3, [r4, r2]	@ temp.3345, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp211, temp.3345,
	bne	.L715	@,
	tst	r3, #327680	@ temp.3345,
	bne	.L726	@,
.L709:
	mov	r0, #1	@ D.35493,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L691:
	movw	r2, #14980	@ tmp169,
	ldr	r3, [r4, r2]	@ temp.3324, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp170, temp.3324,
	bne	.L717	@,
	tst	r3, #262144	@ temp.3324,
	bne	.L727	@,
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
.L722:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
.L723:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35493,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L694:
	movw	r2, #14980	@ tmp180,
	ldr	r3, [r4, r2]	@ temp.3329, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp181, temp.3329,
	bne	.L717	@,
	tst	r3, #262144	@ temp.3329,
	beq	.L704	@,
	bic	r0, r3, #311296	@ tmp190, temp.3329,
	mov	r1, r5	@, pSyntax
	str	r0, [r4, r2]	@ tmp190, <variable>.CodecInfo.Integrity
	mov	r0, r6	@, pCodecInf
	bl	AVS_pb_picture_header	@
	b	.L719	@
.L696:
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	mov	r0, r7	@, pBs
	mov	r1, #32	@,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.35526,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	movw	r7, #:lower16:1128615492	@ tmp224,
	movw	r2, #:lower16:1213419593	@ tmp227,
	movt	r7, #:upper16:1128615492	@ tmp224,
	movt	r2, #:upper16:1213419593	@ tmp227,
	cmp	r0, r7	@, tmp224
	cmpeq	r5, r2	@, D.35526, tmp227
	movne	r7, #0	@, tmp231
	moveq	r7, #1	@, tmp231
	bne	.L720	@,
	movw	lr, #14980	@ tmp237,
	movw	r2, #17108	@ tmp232,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	r1, #16424	@ tmp235,
	mov	r7, #1	@ tmp233,
	mov	r0, r4	@, pCtx
	orr	ip, r3, #16384	@ tmp240, <variable>.CodecInfo.Integrity,
	strb	r7, [r4, r2]	@ tmp233, <variable>.IsStreamEndFlag
	str	ip, [r4, lr]	@ tmp240, <variable>.CodecInfo.Integrity
	str	r7, [r4, r1]	@ tmp233, <variable>.IsPackWaitDec
	bl	ClearPacket	@
	mov	r0, r7	@ D.35493, tmp233
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L687:
	cmp	r0, #175	@ Code.3322,
	bhi	.L723	@,
	movw	r3, #14980	@ tmp241,
	ldr	r2, [r4, r3]	@ temp.3354, <variable>.CodecInfo.Integrity
	and	r0, r2, #327680	@ tmp242, temp.3354,
	cmp	r0, #327680	@ tmp242,
	bne	.L723	@,
	orr	r7, r2, #32768	@ tmp244, temp.3354,
	mov	r0, r4	@, pCtx
	str	r7, [r4, r3]	@ tmp244, <variable>.CodecInfo.Integrity
	bl	WriteAvsSliceMsg	@
	subs	r7, r0, #0	@ D.35539,
	bne	.L709	@,
.L720:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35493, tmp181
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L688:
	movw	r2, #14980	@ tmp158,
	ldr	r3, [r4, r2]	@ D.35483, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp159, D.35483,
	bne	.L715	@,
	tst	r3, #65536	@ D.35483,
	beq	.L700	@,
	bic	ip, r3, #311296	@ tmp168, D.35483,
	mov	r1, r5	@, pSyntax
	str	ip, [r4, r2]	@ tmp168, <variable>.CodecInfo.Integrity
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35493, tmp159
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L690:
	movw	r2, #14980	@ tmp191,
	ldr	r7, [r4, r2]	@ temp.3335, <variable>.CodecInfo.Integrity
	ands	r1, r7, #262144	@ tmp192, temp.3335,
	movne	r1, #1	@,
	bne	.L716	@,
	ands	r7, r7, #65536	@ tmp193, temp.3335,
	beq	.L720	@,
.L716:
	mov	r0, r4	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35493,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L693:
	movw	ip, #14980	@ tmp194,
	ldr	r1, [r4, ip]	@ tmp196,
	ands	r7, r1, #327680	@ tmp195, tmp196,
	beq	.L720	@,
	mov	r1, r5	@, pSyntax
	mov	r0, r6	@, pCodecInf
	bl	AVS_extension	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35493,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L715:
	mov	r7, #1	@ tmp213,
	movw	r0, #16424	@ tmp212,
	str	r7, [r4, r0]	@ tmp213, <variable>.IsPackWaitDec
	orr	lr, r3, #16384	@ tmp217, temp.3345,
	mov	r0, r7	@ D.35493, tmp213
	str	lr, [r4, r2]	@ tmp217, <variable>.CodecInfo.Integrity
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L727:
	bic	lr, r3, #311296	@ tmp179, temp.3324,
	mov	r0, r6	@, pCodecInf
	str	lr, [r4, r2]	@ tmp179, <variable>.CodecInfo.Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
.L719:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	b	.L720	@
.L704:
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
	b	.L722	@
.L700:
	mov	r1, r5	@, pSyntax
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35493,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L717:
	orr	r7, r3, #16384	@ tmp187, temp.3329,
	movw	r3, #16424	@ tmp182,
	str	r7, [r4, r2]	@ tmp187, <variable>.CodecInfo.Integrity
	mov	r0, r5	@, pSyntax
	mov	r7, #1	@ tmp183,
	str	r7, [r4, r3]	@ tmp183, <variable>.IsPackWaitDec
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r7	@ D.35493, tmp183
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L726:
	bic	r3, r3, #311296	@ tmp222, temp.3345,
	mov	r0, r4	@, pCtx
	str	r3, [r4, r2]	@ tmp222, <variable>.CodecInfo.Integrity
	bl	ClearPacket	@
	mov	r0, r7	@ D.35493, tmp211
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_ParseHeader, .-AVS_ParseHeader
	.align	2
	.global	AVSDEC_Decode
	.type	AVSDEC_Decode, %function
AVSDEC_Decode:
	.fnstart
.LFB1392:
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
	mov	r5, r1	@ p_Packet, p_Packet
	add	r2, r0, #15616	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r1, #0]	@, <variable>.VirAddr
	add	r0, r2, #60	@,,
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	bl	BsInit	@
	add	r0, r4, #16384	@, pCtx,
	mov	r1, r5	@, p_Packet
	mov	r2, #160	@,
	add	r0, r0, #48	@,,
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	bl	AVS_ParseHeader	@
	subs	r5, r0, #0	@ D.37342,
	beq	.L735	@,
	mov	r0, r4	@, pCtx
	bl	AVS_DecodeArbiter	@
	cmp	r0, #0	@ D.37347
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@, pCtx
	bl	AVS_PrepareDecode	@
	subs	r5, r0, #0	@ D.37350,
	beq	.L736	@,
	mov	r0, r4	@, pCtx
	bl	AVS_StartDecode	@
	subs	r5, r0, #0	@ D.37354,
	movne	r0, #1	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC112	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37354
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L735:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37342
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L736:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37350
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Decode, .-AVSDEC_Decode
	.global	wq_param_default
	.global	g_AvsCfg
	.global	g_tmp
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	WeightQuantModel, %object
	.size	WeightQuantModel, 256
WeightQuantModel:
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	5
	.byte	5
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	5
	.byte	5
	.byte	5
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.type	CSWTCH.497, %object
	.size	CSWTCH.497, 16
CSWTCH.497:
	.word	5
	.word	1
	.word	2
	.word	3
	.type	CSWTCH.502, %object
	.size	CSWTCH.502, 8
CSWTCH.502:
	.word	32
	.word	16
	.type	CSWTCH.503, %object
	.size	CSWTCH.503, 8
CSWTCH.503:
	.word	0
	.word	8
	.type	CSWTCH.504, %object
	.size	CSWTCH.504, 8
CSWTCH.504:
	.word	0
	.word	4
	.type	CSWTCH.505, %object
	.size	CSWTCH.505, 8
CSWTCH.505:
	.word	0
	.word	4
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	wq_param_default, %object
	.size	wq_param_default, 24
wq_param_default:
	.short	135
	.short	143
	.short	143
	.short	160
	.short	160
	.short	213
	.short	128
	.short	98
	.short	106
	.short	116
	.short	116
	.short	128
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SlcNum %d > %d Write slice msg failed\012\000"
	.space	1
.LC1:
	.ascii	"This slice's start mbn %d <= LastSliceFirstMb %d, W"
	.ascii	"rite slice msg failed\012\000"
	.space	2
.LC2:
	.ascii	"-----Pic %5d, type %d, struct %d-----\012\000"
	.space	1
.LC3:
	.ascii	"line: %d\012\000"
	.space	2
.LC4:
	.ascii	"ERROR: AVS_OutputOneFrame is err(%d)\012\000"
	.space	2
.LC5:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC6:
	.ascii	"ERROR: get frame store fail!\012\000"
	.space	2
.LC7:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC8:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC9:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC10:
	.ascii	"line: %d pImage is null\012\000"
	.space	3
.LC11:
	.ascii	"ERROR: err_level(%d) over ref_thr(%d)\012\000"
	.space	1
.LC12:
	.ascii	"ERROR: err_level(%d) over out_thr(%d)\012\000"
	.space	1
.LC13:
	.ascii	"ERROR: image size abnormal(%dx%d)\012\000"
	.space	1
.LC14:
	.ascii	"avs actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC15:
	.ascii	"ERROR: partition fs memory fail!\012\000"
	.space	2
.LC16:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC17:
	.ascii	"size change\012\000"
	.space	3
.LC18:
	.ascii	"MbWidth = %d, MbHeight = %d, don't support!\012\000"
	.space	3
.LC19:
	.ascii	"ERROR: allocate vhb\012\000"
	.space	3
.LC20:
	.ascii	"ERROR: get img buf err\012\000"
.LC21:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC22:
	.ascii	"%-40s     %#-8x(%db)\012\000"
	.space	2
.LC23:
	.ascii	"user_data_start_code\000"
	.space	3
.LC24:
	.ascii	"extension_ID\000"
	.space	3
.LC25:
	.ascii	"frame_centre_horizontal_offset\000"
	.space	1
.LC26:
	.ascii	"marker_bit\000"
	.space	1
.LC27:
	.ascii	"frame_centre_vertical_offset\000"
	.space	3
.LC28:
	.ascii	"reserved_bits\000"
	.space	2
.LC29:
	.ascii	"camera_id\000"
	.space	2
.LC30:
	.ascii	"height_of_image_device\000"
	.space	1
.LC31:
	.ascii	"focal_length\000"
	.space	3
.LC32:
	.ascii	"f_number\000"
	.space	3
.LC33:
	.ascii	"vertical_angle_of_view\000"
	.space	1
.LC34:
	.ascii	"camera_position_x_upper\000"
.LC35:
	.ascii	"camera_position_x_lower\000"
.LC36:
	.ascii	"camera_position_y_upper\000"
.LC37:
	.ascii	"camera_position_y_lower\000"
.LC38:
	.ascii	"camera_position_z_upper\000"
.LC39:
	.ascii	"camera_position_z_lower\000"
.LC40:
	.ascii	"camera_direction_x\000"
	.space	1
.LC41:
	.ascii	"camera_direction_y\000"
	.space	1
.LC42:
	.ascii	"camera_direction_z\000"
	.space	1
.LC43:
	.ascii	"image_plane_vertical_x\000"
	.space	1
.LC44:
	.ascii	"image_plane_vertical_y\000"
	.space	1
.LC45:
	.ascii	"image_plane_vertical_z\000"
	.space	1
.LC46:
	.ascii	"copyright_flag\000"
	.space	1
.LC47:
	.ascii	"copyright_id\000"
	.space	3
.LC48:
	.ascii	"original_or_copy\000"
	.space	3
.LC49:
	.ascii	"copyright_number_1\000"
	.space	1
.LC50:
	.ascii	"copyright_number_2\000"
	.space	1
.LC51:
	.ascii	"copyright_number_3\000"
	.space	1
.LC52:
	.ascii	"video_format\000"
	.space	3
.LC53:
	.ascii	"sample_range\000"
	.space	3
.LC54:
	.ascii	"colour_description\000"
	.space	1
.LC55:
	.ascii	"colour_primaries\000"
	.space	3
.LC56:
	.ascii	"transfer_characteristics\000"
	.space	3
.LC57:
	.ascii	"matrix_coefficients\000"
.LC58:
	.ascii	"display_horizontal_size\000"
.LC59:
	.ascii	"display_vertical_size\000"
	.space	2
.LC60:
	.ascii	"extension_start_code\000"
	.space	3
.LC61:
	.ascii	"video_sequence_start_code\000"
	.space	2
.LC62:
	.ascii	"profile_id\000"
	.space	1
.LC63:
	.ascii	"level_id\000"
	.space	3
.LC64:
	.ascii	"progressive_sequence\000"
	.space	3
.LC65:
	.ascii	"horizontal_size\000"
.LC66:
	.ascii	"vertical_size\000"
	.space	2
.LC67:
	.ascii	"chroma_format\000"
	.space	2
.LC68:
	.ascii	"sample_precision\000"
	.space	3
.LC69:
	.ascii	"aspect_ratio\000"
	.space	3
.LC70:
	.ascii	"frame_rate_code\000"
.LC71:
	.ascii	"bit_rate_lower\000"
	.space	1
.LC72:
	.ascii	"bit_rate_upper\000"
	.space	1
.LC73:
	.ascii	"low_delay\000"
	.space	2
.LC74:
	.ascii	"bbv_buffer_size\000"
.LC75:
	.ascii	"pb_picture_start_code\000"
	.space	2
.LC76:
	.ascii	"bbv_delay\000"
	.space	2
.LC77:
	.ascii	"bbv_delay_extension\000"
.LC78:
	.ascii	"picture_coding_type\000"
.LC79:
	.ascii	"picture_distance\000"
	.space	3
.LC80:
	.ascii	"bbv_check_times\000"
.LC81:
	.ascii	"progressive_frame\000"
	.space	2
.LC82:
	.ascii	"picture_structure\000"
	.space	2
.LC83:
	.ascii	"advanced_pred_mode_disable\000"
	.space	1
.LC84:
	.ascii	"top_field_first\000"
.LC85:
	.ascii	"repeat_first_field\000"
	.space	1
.LC86:
	.ascii	"fixed_picture_qp\000"
	.space	3
.LC87:
	.ascii	"picture_qp\000"
	.space	1
.LC88:
	.ascii	"picture_reference_flag\000"
	.space	1
.LC89:
	.ascii	"no_forward_reference_flag\000"
	.space	2
.LC90:
	.ascii	"b_filed_enhanced_flag\000"
	.space	2
.LC91:
	.ascii	"p_filed_enhanced_flag\000"
	.space	2
.LC92:
	.ascii	"skip_mode_flag\000"
	.space	1
.LC93:
	.ascii	"loop_filter_disable\000"
.LC94:
	.ascii	"loop_filter_parameter_flag\000"
	.space	1
.LC95:
	.ascii	"alpha_c_offset\000"
	.space	1
.LC96:
	.ascii	"beta_offset\000"
.LC97:
	.ascii	"weighting_quant_flag\000"
	.space	3
.LC98:
	.ascii	"mb_adapt_weighting_quant_disable\000"
	.space	3
.LC99:
	.ascii	"chroma_quant_param_disable\000"
	.space	1
.LC100:
	.ascii	"chroma_quant_param_delta_u\000"
	.space	1
.LC101:
	.ascii	"chroma_quant_param_delta_v\000"
	.space	1
.LC102:
	.ascii	"weighting_quant_param_index\000"
.LC103:
	.ascii	"weighting_quant_model\000"
	.space	2
.LC104:
	.ascii	"weighting_quant_param_deltal1\000"
	.space	2
.LC105:
	.ascii	"weighting_quant_param_deltal2\000"
	.space	2
.LC106:
	.ascii	"aec_enable\000"
	.space	1
.LC107:
	.ascii	"i_picture_start_code\000"
	.space	3
.LC108:
	.ascii	"time_code_flag\000"
	.space	1
.LC109:
	.ascii	"time_code\000"
	.space	2
.LC110:
	.ascii	"ERROR: paseHeader err\012\000"
	.space	1
.LC111:
	.ascii	"ERROR: AVS_PrepareDecode err\012\000"
	.space	2
.LC112:
	.ascii	"ERROR: AVS_StartDecode err\012\000"
	.bss
	.align	2
	.type	g_AvsCfg, %object
	.size	g_AvsCfg, 508
g_AvsCfg:
	.space	508
	.type	g_tmp, %object
	.size	g_tmp, 1024
g_tmp:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
