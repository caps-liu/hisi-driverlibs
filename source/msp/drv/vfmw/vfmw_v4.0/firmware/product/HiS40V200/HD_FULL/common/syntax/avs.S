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
@ -DKBUILD_BASENAME=KBUILD_STR(avs) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.avs.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/avs.c
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
.LFB1373:
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
	ldrb	r3, [r0, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L15	@,
	ldr	r3, [r0, #236]	@ prephitmp.513, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.513,
	beq	.L16	@,
	cmp	r3, #1	@ prephitmp.513,
	beq	.L17	@,
	cmp	r3, #2	@ prephitmp.513,
	beq	.L18	@,
.L5:
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L16:
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	ldr	r3, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r2, r3, asl #1	@ tmp164, <variable>.pic_distance,
	str	r2, [r0, #312]	@ tmp164, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L18:
	ldr	r1, [r0, #84]	@ temp.550, <variable>.pRef
	add	r2, r0, #4	@ tmp172, pCodecInf,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r2, r1	@ tmp172, temp.550
	ldrne	r1, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	r2, [r0, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	movne	r1, r1, asl #1	@ prephitmp.515, <variable>.pic_distance,
	strne	r1, [r0, #300]	@ prephitmp.515, <variable>.Idx2Dist
	moveq	r1, r2	@ prephitmp.515, <variable>.Idx2Dist
	add	r3, r1, #1	@ temp.553, prephitmp.515,
	movne	r2, r1	@ <variable>.Idx2Dist, prephitmp.515
	str	r3, [r0, #296]	@ temp.553, <variable>.Idx2Dist
	ldr	r1, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	r2, [r0, #316]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r3, [r0, #312]	@ temp.553, <variable>.Idx2Dist
	mov	ip, r1, asl #1	@ temp.557, <variable>.pic_distance,
	str	ip, [r0, #320]	@ temp.557, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.37006, temp.557,
	str	ip, [r0, #304]	@ temp.557, <variable>.Idx2Dist
	str	r2, [r0, #324]	@ D.37006, <variable>.Idx2Dist
	str	r2, [r0, #308]	@ D.37006, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L15:
	ldr	r3, [r0, #236]	@ prephitmp.517, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ prephitmp.517,
	beq	.L19	@,
	cmp	r3, #2	@ prephitmp.517,
	bne	.L5	@,
	ldr	ip, [r0, #84]	@ temp.529, <variable>.pRef
	add	r1, r0, #4	@ tmp156, pCodecInf,
	ldr	r3, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r1, ip	@ tmp156, temp.529
	ldrne	ip, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	ip, ip, asl #1	@ tmp158, <variable>.pic_distance,
	strne	ip, [r0, #296]	@ tmp158, <variable>.Idx2Dist
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp161, <variable>.pic_distance,
	str	r1, [r0, #304]	@ tmp161, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L17:
	ldr	r3, [r0, #84]	@ temp.542, <variable>.pRef
	add	ip, r0, #4	@ tmp165, pCodecInf,
	ldr	r1, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	ip, r3	@ tmp165, temp.542
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	ip, [r0, #308]	@ prephitmp.558, <variable>.Idx2Dist
	movne	ip, ip, asl #1	@ prephitmp.558, <variable>.pic_distance,
	strne	ip, [r0, #308]	@ prephitmp.558, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.36993, prephitmp.558,
	str	r2, [r0, #304]	@ D.36993, <variable>.Idx2Dist
	ldr	r3, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	str	r2, [r0, #324]	@ D.36993, <variable>.Idx2Dist
	mov	r1, r3, asl #1	@ temp.548, <variable>.pic_distance,
	str	r1, [r0, #320]	@ temp.548, <variable>.Idx2Dist
	str	r1, [r0, #300]	@ temp.548, <variable>.Idx2Dist
	add	r3, r1, #1	@ D.36995, temp.548,
	str	r3, [r0, #316]	@ D.36995, <variable>.Idx2Dist
	str	r3, [r0, #296]	@ D.36995, <variable>.Idx2Dist
	ldr	r2, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp171, <variable>.pic_distance,
	str	r1, [r0, #312]	@ tmp171, <variable>.Idx2Dist
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L19:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r1, r0, #4	@ tmp153, pCodecInf,
	ldr	r3, [r0, #84]	@ D.36975, <variable>.pRef
	ldr	ip, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r1, r3	@ tmp153, D.36975
	mov	r2, ip, asl #1	@ tmp152, <variable>.pic_distance,
	str	r2, [r0, #296]	@ tmp152, <variable>.Idx2Dist
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r3, ip, asl #1	@ tmp155, <variable>.pic_distance,
	strne	r3, [r0, #300]	@ tmp155, <variable>.Idx2Dist
	b	.L5	@
	.fnend
	.size	AVS_UpdateTableIdx2Dist, .-AVS_UpdateTableIdx2Dist
	.global	__aeabi_idiv
	.align	2
	.global	AVS_UpdateTableMvEScale
	.type	AVS_UpdateTableMvEScale, %function
AVS_UpdateTableMvEScale:
	.fnstart
.LFB1374:
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
	ldrb	r3, [r0, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L98	@,
	ldr	r3, [r0, #236]	@ prephitmp.619, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.619,
	moveq	r3, #512	@ tmp279,
	streq	r3, [r0, #392]	@ tmp279, <variable>.MvEScale
	beq	.L30	@,
	cmp	r3, #1	@ prephitmp.619,
	beq	.L99	@,
	cmp	r3, #2	@ prephitmp.619,
	beq	.L100	@,
.L30:
	mov	r0, #1	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L100:
	ldr	sl, [r0, #76]	@ temp.691, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r8, [r4, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r3, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r3, asl #1	@ CurDistIdx.933, <variable>.pic_distance,
	add	r6, r5, r0	@ pretmp.934, CurDistIdx.933,
	rsb	r5, r5, r0	@ pretmp.959, CurDistIdx.933,
	rsb	lr, r8, r6	@ tmp560, <variable>.Idx2Dist, pretmp.934
	mov	r9, lr, asl #23	@ CurBlkDist.937, tmp560,
	mov	r8, r9, lsr #23	@ CurBlkDist.937, CurBlkDist.937,
	cmp	r8, #0	@ CurBlkDist.937,
	movne	r1, r8	@, CurBlkDist.937
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, ip, r6	@ tmp568, <variable>.Idx2Dist, pretmp.934
	mov	r7, r6, asl #23	@ NeiBlkDist.943, tmp568,
	mov	r7, r7, lsr #23	@ NeiBlkDist.943, NeiBlkDist.943,
	cmp	r7, #0	@ NeiBlkDist.943,
	movne	r1, r7	@, NeiBlkDist.943
	mov	r9, r0	@ tmp566,
	mov	r0, #512	@,
	mul	r2, r8, r9	@ tmp567, CurBlkDist.937, tmp566
	moveq	r1, r0	@,
	str	r2, [r4, #328]	@ tmp567, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #304]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r1	@ tmp595, pretmp.959, <variable>.Idx2Dist
	mov	r6, ip, asl #23	@ CurBlkDist.962, tmp595,
	mov	r6, r6, lsr #23	@ CurBlkDist.962, CurBlkDist.962,
	cmp	r6, #0	@ CurBlkDist.962,
	movne	r1, r6	@, CurBlkDist.962
	mov	r3, r0	@ tmp574,
	mov	r0, #512	@,
	mul	r2, r7, r3	@ tmp594, NeiBlkDist.943, tmp574
	moveq	r1, r0	@,
	mul	r8, r8, r3	@ tmp575, CurBlkDist.937, tmp574
	mul	r7, r7, r9	@ tmp586, NeiBlkDist.943, tmp566
	str	r2, [r4, #340]	@ tmp594, <variable>.MvEScale
	str	r8, [r4, #332]	@ tmp575, <variable>.MvEScale
	str	r7, [r4, #336]	@ tmp586, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #308]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r1	@ tmp603, pretmp.959, <variable>.Idx2Dist
	mov	r2, ip, asl #23	@ NeiBlkDist.968, tmp603,
	mov	r5, r2, lsr #23	@ NeiBlkDist.968, NeiBlkDist.968,
	cmp	r5, #0	@ NeiBlkDist.968,
	movne	r1, r5	@, NeiBlkDist.968
	mov	r7, r0	@ tmp601,
	mov	r0, #512	@,
	mul	r3, r6, r7	@ tmp602, CurBlkDist.962, tmp601
	moveq	r1, r0	@,
	str	r3, [r4, #344]	@ tmp602, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r7	@ tmp621, NeiBlkDist.968, tmp601
	ldr	r2, [r4, #312]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r1, [r4, #352]	@ tmp621, <variable>.MvEScale
	mul	r8, r5, r0	@ tmp629, NeiBlkDist.968, tmp609
	mul	r6, r6, r0	@ tmp610, CurBlkDist.962, tmp609
	mov	r0, #512	@,
	str	r8, [r4, #356]	@ tmp629, <variable>.MvEScale
	str	r6, [r4, #348]	@ tmp610, <variable>.MvEScale
	ldr	ip, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r3, ip, asl #1	@ tmp630, <variable>.pic_distance,
	add	r5, r3, #1	@ CurDistIdx.695, tmp630,
	add	r6, r5, r0	@ pretmp.625, CurDistIdx.695,
	rsb	r5, r5, r0	@ pretmp.631, CurDistIdx.695,
	rsb	r8, r2, r6	@ tmp632, <variable>.Idx2Dist, pretmp.625
	mov	sl, r8, asl #23	@ CurBlkDist.813, tmp632,
	mov	r8, sl, lsr #23	@ CurBlkDist.813, CurBlkDist.813,
	cmp	r8, #0	@ CurBlkDist.813,
	movne	r1, r8	@, CurBlkDist.813
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #316]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, r1, r6	@ tmp640, <variable>.Idx2Dist, pretmp.625
	mov	r7, r6, asl #23	@ NeiBlkDist.819, tmp640,
	mov	r7, r7, lsr #23	@ NeiBlkDist.819, NeiBlkDist.819,
	cmp	r7, #0	@ NeiBlkDist.819,
	movne	r1, r7	@, NeiBlkDist.819
	mov	sl, r0	@ tmp638,
	mov	r0, #512	@,
	mul	ip, r8, sl	@ tmp639, CurBlkDist.813, tmp638
	moveq	r1, r0	@,
	str	ip, [r4, #360]	@ tmp639, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #320]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r1, r5, r2	@ tmp659, pretmp.631, <variable>.Idx2Dist
	mov	r6, r1, asl #23	@ CurBlkDist.824, tmp659,
	mov	r6, r6, lsr #23	@ CurBlkDist.824, CurBlkDist.824,
	cmp	r6, #0	@ CurBlkDist.824,
	movne	r1, r6	@, CurBlkDist.824
	mov	r3, r0	@ tmp646,
	mov	r0, #512	@,
	mul	ip, r7, r3	@ tmp658, NeiBlkDist.819, tmp646
	moveq	r1, r0	@,
	mul	r8, r8, r3	@ tmp647, CurBlkDist.813, tmp646
	mul	r7, r7, sl	@ tmp685, NeiBlkDist.819, tmp638
	str	ip, [r4, #372]	@ tmp658, <variable>.MvEScale
	str	r8, [r4, #364]	@ tmp647, <variable>.MvEScale
	str	r7, [r4, #368]	@ tmp685, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #324]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r3, r5, r2	@ tmp667, pretmp.631, <variable>.Idx2Dist
	mov	r1, r3, asl #23	@ NeiBlkDist.830, tmp667,
	mov	r5, r1, lsr #23	@ NeiBlkDist.830, NeiBlkDist.830,
	cmp	r5, #0	@ NeiBlkDist.830,
	movne	r1, r5	@, NeiBlkDist.830
	mov	r7, r0	@ tmp665,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp666, CurBlkDist.824, tmp665
	moveq	r1, r0	@,
	str	ip, [r4, #376]	@ tmp666, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r3, r5, r0	@ tmp693, NeiBlkDist.830, tmp673
	mul	r0, r6, r0	@ tmp674, CurBlkDist.824, tmp673
	mul	r5, r5, r7	@ tmp698, NeiBlkDist.830, tmp665
	str	r3, [r4, #388]	@ tmp693, <variable>.MvEScale
	str	r0, [r4, #380]	@ tmp674, <variable>.MvEScale
	str	r5, [r4, #384]	@ tmp698, <variable>.MvEScale
	b	.L30	@
.L98:
	ldr	r2, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r3, [r0, #236]	@ prephitmp.619, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldr	r5, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r3, #1	@ prephitmp.619,
	mov	r5, r5, asl #1	@ CurDistIdx, <variable>.pic_distance,
	beq	.L101	@,
	cmp	r3, #2	@ prephitmp.619,
	bne	.L30	@,
	ldr	r6, [r0, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r0, #512	@,
	rsb	lr, r6, r5	@ tmp263, <variable>.Idx2Dist, CurDistIdx
	mov	r2, lr, asl #23	@ CurBlkDist.678, tmp263,
	mov	r6, r2, lsr #23	@ CurBlkDist.678, CurBlkDist.678,
	cmp	r6, #0	@ CurBlkDist.678,
	movne	r1, r6	@, CurBlkDist.678
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #304]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r5, r3	@ tmp272, CurDistIdx, <variable>.Idx2Dist
	mov	ip, r1, asl #23	@ CurBlkDist.681, tmp272,
	mov	r5, ip, lsr #23	@ CurBlkDist.681, CurBlkDist.681,
	cmp	r5, #0	@ CurBlkDist.681,
	movne	r1, r5	@, CurBlkDist.681
	moveq	r1, #512	@,
	mul	r6, r6, r0	@ tmp269, CurBlkDist.678,
	mov	r0, #512	@,
	str	r6, [r4, #328]	@ tmp269, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r0, r5, r0	@ tmp278, CurBlkDist.681,
	str	r0, [r4, #344]	@ tmp278, <variable>.MvEScale
	b	.L30	@
.L99:
	ldr	r9, [r0, #76]	@ temp.684, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r5, [r4, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r2, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	r9, [fp, #-48]	@,
	mov	r7, r2, asl #1	@ tmp280, <variable>.pic_distance,
	add	r7, r7, r0	@ pretmp.759, tmp280,
	rsb	r8, r5, r7	@ tmp282, <variable>.Idx2Dist, pretmp.759
	mov	lr, r8, asl #23	@ CurBlkDist.808, tmp282,
	mov	r8, lr, lsr #23	@ CurBlkDist.808, CurBlkDist.808,
	cmp	r8, #0	@ CurBlkDist.808,
	movne	r1, r8	@, CurBlkDist.808
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	ip, r1, r7	@ tmp290, <variable>.Idx2Dist, pretmp.759
	mov	r6, ip, asl #23	@ NeiBlkDist.849, tmp290,
	mov	r6, r6, lsr #23	@ NeiBlkDist.849, NeiBlkDist.849,
	cmp	r6, #0	@ NeiBlkDist.849,
	movne	r1, r6	@, NeiBlkDist.849
	mov	r9, r0	@ tmp288,
	mov	r0, #512	@,
	mul	sl, r8, r9	@ tmp289, CurBlkDist.808, tmp288
	moveq	r1, r0	@,
	str	sl, [r4, #328]	@ tmp289, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #304]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r3, r7	@ tmp298, <variable>.Idx2Dist, pretmp.759
	mov	r5, r2, asl #23	@ NeiBlkDist.854, tmp298,
	mov	r5, r5, lsr #23	@ NeiBlkDist.854, NeiBlkDist.854,
	cmp	r5, #0	@ NeiBlkDist.854,
	mov	sl, r0	@ tmp296,
	mov	r0, #512	@,
	mul	r1, r8, sl	@ tmp297, CurBlkDist.808, tmp296
	str	r1, [r4, #332]	@ tmp297, <variable>.MvEScale
	movne	r1, r5	@, NeiBlkDist.854
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #308]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r3, ip, r7	@ tmp306, <variable>.Idx2Dist, pretmp.759
	mov	r7, r3, asl #23	@ NeiBlkDist.859, tmp306,
	mov	r7, r7, lsr #23	@ NeiBlkDist.859, NeiBlkDist.859,
	cmp	r7, #0	@ NeiBlkDist.859,
	mov	r2, r0	@ tmp304,
	mov	r0, #512	@,
	mul	r1, r8, r2	@ tmp305, CurBlkDist.808, tmp304
	str	r1, [r4, #336]	@ tmp305, <variable>.MvEScale
	movne	r1, r7	@, NeiBlkDist.859
	moveq	r1, r0	@,
	str	r2, [fp, #-52]	@,
	bl	__aeabi_idiv	@
	mul	r2, r7, r9	@ tmp394, NeiBlkDist.859, tmp288
	mov	r3, r0	@ tmp312,
	mul	ip, r7, r0	@ tmp418, NeiBlkDist.859, tmp312
	mul	lr, r6, r3	@, NeiBlkDist.849, tmp312
	mul	r8, r8, r0	@ tmp313, CurBlkDist.808, tmp312
	mov	r0, #512	@,
	mul	r1, r5, r3	@ tmp383, NeiBlkDist.854, tmp312
	str	ip, [r4, #388]	@ tmp418, <variable>.MvEScale
	str	lr, [r4, #356]	@, <variable>.MvEScale
	mul	r3, r7, sl	@ tmp402, NeiBlkDist.859, tmp296
	str	r8, [r4, #340]	@ tmp313, <variable>.MvEScale
	ldr	r8, [fp, #-52]	@,
	mul	ip, r6, sl	@ tmp332, NeiBlkDist.849, tmp296
	str	r1, [r4, #372]	@ tmp383, <variable>.MvEScale
	str	r2, [r4, #376]	@ tmp394, <variable>.MvEScale
	mul	r1, r6, r9	@ tmp324, NeiBlkDist.849, tmp288
	str	r3, [r4, #380]	@ tmp402, <variable>.MvEScale
	mul	r2, r5, r8	@ tmp375, NeiBlkDist.854, tmp304
	str	ip, [r4, #348]	@ tmp332, <variable>.MvEScale
	mul	lr, r5, r9	@ tmp359, NeiBlkDist.854, tmp288
	mul	r7, r7, r8	@ tmp410, NeiBlkDist.859, tmp304
	str	r1, [r4, #344]	@ tmp324, <variable>.MvEScale
	mul	r6, r6, r8	@ tmp340, NeiBlkDist.849, tmp304
	str	r2, [r4, #368]	@ tmp375, <variable>.MvEScale
	mul	sl, r5, sl	@ tmp367, NeiBlkDist.854, tmp296
	str	lr, [r4, #360]	@ tmp359, <variable>.MvEScale
	str	r7, [r4, #384]	@ tmp410, <variable>.MvEScale
	ldr	r8, [r4, #312]	@, <variable>.Idx2Dist
	str	r6, [r4, #352]	@ tmp340, <variable>.MvEScale
	str	sl, [r4, #364]	@ tmp367, <variable>.MvEScale
	ldr	r3, [fp, #-48]	@,
	ldr	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, ip, asl #1	@ tmp419, <variable>.pic_distance,
	add	r7, r5, r0	@ pretmp.642, tmp419,
	add	r7, r7, #1	@ pretmp.642, pretmp.642,
	rsb	r9, r8, r7	@ tmp422,, pretmp.642
	mov	lr, r9, asl #23	@ CurBlkDist.711, tmp422,
	mov	r8, lr, lsr #23	@ CurBlkDist.711, CurBlkDist.711,
	cmp	r8, #0	@ CurBlkDist.711,
	movne	r1, r8	@, CurBlkDist.711
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #316]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r1, r7	@ tmp430, <variable>.Idx2Dist, pretmp.642
	mov	r6, r2, asl #23	@ NeiBlkDist.746, tmp430,
	mov	r6, r6, lsr #23	@ NeiBlkDist.746, NeiBlkDist.746,
	cmp	r6, #0	@ NeiBlkDist.746,
	movne	r1, r6	@, NeiBlkDist.746
	mov	r9, r0	@ tmp428,
	mov	r0, #512	@,
	mul	sl, r8, r9	@ tmp429, CurBlkDist.711, tmp428
	moveq	r1, r0	@,
	str	sl, [r4, #392]	@ tmp429, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #320]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	ip, r3, r7	@ tmp438, <variable>.Idx2Dist, pretmp.642
	mov	r5, ip, asl #23	@ NeiBlkDist.751, tmp438,
	mov	r5, r5, lsr #23	@ NeiBlkDist.751, NeiBlkDist.751,
	cmp	r5, #0	@ NeiBlkDist.751,
	mov	sl, r0	@ tmp436,
	mov	r0, #512	@,
	mul	r1, r8, sl	@ tmp437, CurBlkDist.711, tmp436
	str	r1, [r4, #396]	@ tmp437, <variable>.MvEScale
	movne	r1, r5	@, NeiBlkDist.751
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #324]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r1, r7	@ tmp446, <variable>.Idx2Dist, pretmp.642
	mov	r7, r2, asl #23	@ NeiBlkDist.756, tmp446,
	mov	r7, r7, lsr #23	@ NeiBlkDist.756, NeiBlkDist.756,
	cmp	r7, #0	@ NeiBlkDist.756,
	movne	r1, r7	@, NeiBlkDist.756
	mov	ip, r0	@ tmp444,
	mov	r0, #512	@,
	mul	r3, r8, ip	@ tmp445, CurBlkDist.711, tmp444
	moveq	r1, r0	@,
	str	r3, [r4, #400]	@ tmp445, <variable>.MvEScale
	str	ip, [fp, #-52]	@,
	bl	__aeabi_idiv	@
	mul	r1, r7, r9	@ tmp539, NeiBlkDist.756, tmp428
	mul	ip, r7, sl	@ tmp547, NeiBlkDist.756, tmp436
	mul	r2, r7, r0	@ tmp534, NeiBlkDist.756, tmp452
	mul	r3, r6, r0	@ tmp488, NeiBlkDist.746, tmp452
	mul	r8, r8, r0	@ tmp453, CurBlkDist.711, tmp452
	mul	r0, r5, r0	@ tmp523, NeiBlkDist.751, tmp452
	str	r2, [r4, #452]	@ tmp534, <variable>.MvEScale
	str	r3, [r4, #420]	@ tmp488, <variable>.MvEScale
	mul	r2, r6, r9	@ tmp464, NeiBlkDist.746, tmp428
	str	r8, [r4, #404]	@ tmp453, <variable>.MvEScale
	ldr	r3, [fp, #-52]	@,
	mul	r9, r5, r9	@ tmp499, NeiBlkDist.751, tmp428
	str	r0, [r4, #436]	@ tmp523, <variable>.MvEScale
	str	r1, [r4, #440]	@ tmp539, <variable>.MvEScale
	mul	r7, r7, r3	@ tmp555, NeiBlkDist.756, tmp444
	str	ip, [r4, #444]	@ tmp547, <variable>.MvEScale
	mul	r1, r6, sl	@ tmp472, NeiBlkDist.746, tmp436
	str	r2, [r4, #408]	@ tmp464, <variable>.MvEScale
	mul	r6, r6, r3	@ tmp480, NeiBlkDist.746, tmp444
	str	r9, [r4, #424]	@ tmp499, <variable>.MvEScale
	mul	sl, r5, sl	@ tmp507, NeiBlkDist.751, tmp436
	str	r7, [r4, #448]	@ tmp555, <variable>.MvEScale
	mul	r0, r5, r3	@ tmp515, NeiBlkDist.751, tmp444
	str	r1, [r4, #412]	@ tmp472, <variable>.MvEScale
	str	r6, [r4, #416]	@ tmp480, <variable>.MvEScale
	str	sl, [r4, #428]	@ tmp507, <variable>.MvEScale
	str	r0, [r4, #432]	@ tmp515, <variable>.MvEScale
	b	.L30	@
.L101:
	ldr	lr, [r0, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r5, r5, #512	@ pretmp.648, CurDistIdx,
	mov	r0, #512	@,
	rsb	r7, lr, r5	@ tmp226, <variable>.Idx2Dist, pretmp.648
	mov	r6, r7, asl #23	@ CurBlkDist.836, tmp226,
	mov	r6, r6, lsr #23	@ CurBlkDist.836, CurBlkDist.836,
	cmp	r6, #0	@ CurBlkDist.836,
	movne	r1, r6	@, CurBlkDist.836
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r2, r5	@ tmp234, <variable>.Idx2Dist, pretmp.648
	mov	r3, r1, asl #23	@ NeiBlkDist.842, tmp234,
	mov	r5, r3, lsr #23	@ NeiBlkDist.842, NeiBlkDist.842,
	cmp	r5, #0	@ NeiBlkDist.842,
	movne	r1, r5	@, NeiBlkDist.842
	mov	r7, r0	@ tmp232,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp233, CurBlkDist.836, tmp232
	moveq	r1, r0	@,
	str	ip, [r4, #328]	@ tmp233, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r0	@ tmp252, NeiBlkDist.842, tmp240
	mul	r0, r6, r0	@ tmp241, CurBlkDist.836, tmp240
	mul	r5, r5, r7	@ tmp257, NeiBlkDist.842, tmp232
	str	r1, [r4, #348]	@ tmp252, <variable>.MvEScale
	str	r0, [r4, #332]	@ tmp241, <variable>.MvEScale
	str	r5, [r4, #344]	@ tmp257, <variable>.MvEScale
	b	.L30	@
	.fnend
	.size	AVS_UpdateTableMvEScale, .-AVS_UpdateTableMvEScale
	.align	2
	.global	AVS_UpdateTableDirectScale
	.type	AVS_UpdateTableDirectScale, %function
AVS_UpdateTableDirectScale:
	.fnstart
.LFB1375:
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
	ldrb	r3, [r0, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L124	@,
	ldr	r8, [r0, #80]	@ temp.1036, <variable>.pRef
	add	r5, r0, #4	@ temp.1030, pCodecInf,
	ldr	r6, [r0, #84]	@ pretmp.1083, <variable>.pRef
	ldr	sl, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r5, r6	@ temp.1030, pretmp.1083
	mov	sl, sl, asl #1	@ ColDistIdx.1029, <variable>.pic_distance,
	beq	.L108	@,
	ldr	r0, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r7, sl, #512	@ tmp281, ColDistIdx.1029,
	mov	r1, r0, asl #1	@ tmp185, <variable>.pic_distance,
	add	r2, r1, #1	@ tmp187, tmp185,
	rsb	ip, r2, r7	@ tmp188, tmp187, tmp281
	mov	r0, ip, asl #23	@ ColBlkDist.1051, tmp188,
	mov	r1, r0, lsr #23	@ ColBlkDist.1051, ColBlkDist.1051,
	cmp	r1, #0	@ ColBlkDist.1051,
	moveq	r3, #32	@ tmp193,
	streq	r3, [r4, #456]	@ tmp193, <variable>.DirectScale
	bne	.L125	@,
.L110:
	cmp	r5, r6	@ temp.1030, pretmp.1083
	beq	.L108	@,
	ldr	r3, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	ip, #:lower16:510	@ ColBlkDist.1059,
	movt	ip, #:upper16:510	@ ColBlkDist.1059,
	sub	r7, r7, r3, asl #1	@ tmp197, tmp281, <variable>.pic_distance,
	and	r1, r7, ip	@ ColBlkDist.1059, tmp197, ColBlkDist.1059
	cmp	r1, #0	@ ColBlkDist.1059,
	moveq	r3, #32	@ tmp202,
	streq	r3, [r4, #460]	@ tmp202, <variable>.DirectScale
	bne	.L126	@,
.L108:
	ldr	r7, [r4, #88]	@ pretmp.1091, <variable>.pRef
	cmp	r5, r7	@ temp.1030, pretmp.1091
	beq	.L112	@,
	ldr	r2, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	sl, sl, #512	@ tmp285, ColDistIdx.1029,
	mov	ip, r2, asl #1	@ tmp204, <variable>.pic_distance,
	add	r0, ip, #1	@ tmp206, tmp204,
	rsb	r1, r0, sl	@ tmp207, tmp206, tmp285
	mov	r2, r1, asl #23	@ ColBlkDist.1068, tmp207,
	mov	r1, r2, lsr #23	@ ColBlkDist.1068, ColBlkDist.1068,
	cmp	r1, #0	@ ColBlkDist.1068,
	moveq	r3, #32	@ tmp212,
	streq	r3, [r4, #464]	@ tmp212, <variable>.DirectScale
	bne	.L127	@,
.L114:
	cmp	r5, r7	@ temp.1030, pretmp.1091
	beq	.L112	@,
	ldr	r3, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	r1, #:lower16:510	@ ColBlkDist.1034,
	movt	r1, #:upper16:510	@ ColBlkDist.1034,
	sub	sl, sl, r3, asl #1	@ tmp216, tmp285, <variable>.pic_distance,
	and	r1, sl, r1	@ ColBlkDist.1034, tmp216, ColBlkDist.1034
	cmp	r1, #0	@ ColBlkDist.1034,
	moveq	r3, #32	@ tmp218,
	streq	r3, [r4, #468]	@ tmp218, <variable>.DirectScale
	bne	.L128	@,
.L112:
	ldr	r0, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r5, r8	@ temp.1030, temp.1036
	mov	r3, r0, asl #1	@ temp.1038, <variable>.pic_distance,
	add	r8, r3, #1	@ ColDistIdx.1039, temp.1038,
	beq	.L116	@,
	add	r2, r8, #512	@ tmp223, ColDistIdx.1039,
	rsb	ip, r3, r2	@ tmp224, temp.1038, tmp223
	mov	r1, ip, asr #31	@ tmp225, tmp224,
	mov	r2, r1, lsr #23	@ tmp226, tmp225,
	add	r0, ip, r2	@ tmp227, tmp224, tmp226
	mov	r3, r0, asl #23	@ tmp228, tmp227,
	mov	ip, r3, lsr #23	@ tmp228, tmp228,
	subs	r1, ip, r2	@ tmp230, tmp228, tmp226
	moveq	ip, #32	@ tmp234,
	streq	ip, [r4, #472]	@ tmp234, <variable>.DirectScale
	bne	.L129	@,
.L116:
	cmp	r5, r6	@ temp.1030, pretmp.1083
	beq	.L118	@,
	ldr	r2, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	sl, r8, #512	@ tmp280, ColDistIdx.1039,
	mov	ip, r2, asl #1	@ tmp236, <variable>.pic_distance,
	add	r0, ip, #1	@ tmp238, tmp236,
	rsb	r3, r0, sl	@ tmp239, tmp238, tmp280
	mov	r1, r3, asr #31	@ tmp240, tmp239,
	mov	r0, r1, lsr #23	@ tmp241, tmp240,
	add	r2, r3, r0	@ tmp242, tmp239, tmp241
	mov	ip, r2, asl #23	@ tmp243, tmp242,
	mov	r3, ip, lsr #23	@ tmp243, tmp243,
	subs	r1, r3, r0	@ tmp245, tmp243, tmp241
	moveq	r3, #32	@ tmp249,
	streq	r3, [r4, #476]	@ tmp249, <variable>.DirectScale
	bne	.L130	@,
.L120:
	cmp	r5, r6	@ temp.1030, pretmp.1083
	beq	.L118	@,
	ldr	r3, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	sub	ip, sl, r3, asl #1	@ tmp253, tmp280, <variable>.pic_distance,
	mov	r2, ip, asr #31	@ tmp254, tmp253,
	mov	r1, r2, lsr #23	@ tmp255, tmp254,
	add	r0, ip, r1	@ tmp256, tmp253, tmp255
	mov	sl, r0, asl #23	@ tmp257, tmp256,
	mov	sl, sl, lsr #23	@ tmp257, tmp257,
	subs	r1, sl, r1	@ tmp259, tmp257, tmp255
	moveq	r3, #32	@ tmp263,
	streq	r3, [r4, #480]	@ tmp263, <variable>.DirectScale
	bne	.L131	@,
.L118:
	cmp	r5, r7	@ temp.1030, pretmp.1091
	beq	.L106	@,
	ldr	r3, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	sub	r1, r8, r3, asl #1	@ tmp267, ColDistIdx.1039, <variable>.pic_distance,
	add	r8, r1, #508	@ tmp268, tmp267,
	add	r8, r8, #3	@ tmp268, tmp268,
	mov	r2, r8, asr #31	@ tmp269, tmp268,
	mov	r1, r2, lsr #23	@ tmp270, tmp269,
	add	ip, r8, r1	@ tmp271, tmp268, tmp270
	mov	r0, ip, asl #23	@ tmp272, tmp271,
	mov	r3, r0, lsr #23	@ tmp272, tmp272,
	subs	r1, r3, r1	@ tmp274, tmp272, tmp270
	moveq	r3, #32	@ tmp275,
	streq	r3, [r4, #484]	@ tmp275, <variable>.DirectScale
	beq	.L106	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #484]	@, <variable>.DirectScale
.L106:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L131:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #480]	@, <variable>.DirectScale
	b	.L118	@
.L130:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #476]	@, <variable>.DirectScale
	b	.L120	@
.L129:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #472]	@, <variable>.DirectScale
	b	.L116	@
.L128:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #468]	@, <variable>.DirectScale
	b	.L112	@
.L127:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #464]	@, <variable>.DirectScale
	b	.L114	@
.L126:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #460]	@, <variable>.DirectScale
	b	.L108	@
.L125:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #456]	@, <variable>.DirectScale
	b	.L110	@
.L124:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r5, r0, #4	@ D.37148, pCodecInf,
	ldr	r3, [r0, #84]	@ temp.1092, <variable>.pRef
	ldr	r6, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r5, r3	@ D.37148, temp.1092
	mov	r6, r6, asl #1	@ ColDistIdx, <variable>.pic_distance,
	beq	.L104	@,
	ldr	r0, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	ip, r6, #512	@ tmp164, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist.1098,
	movt	r1, #:upper16:510	@ ColBlkDist.1098,
	sub	r3, ip, r0, asl #1	@ tmp167, tmp164, <variable>.pic_distance,
	and	r1, r3, r1	@ ColBlkDist.1098, tmp167, ColBlkDist.1098
	cmp	r1, #0	@ ColBlkDist.1098,
	moveq	r3, #32	@ tmp172,
	streq	r3, [r4, #456]	@ tmp172, <variable>.DirectScale
	bne	.L132	@,
.L104:
	ldr	r3, [r4, #88]	@ D.37150, <variable>.pRef
	cmp	r5, r3	@ D.37148, D.37150
	beq	.L106	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r6, r6, #512	@ tmp173, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist,
	movt	r1, #:upper16:510	@ ColBlkDist,
	sub	r6, r6, r2, asl #1	@ tmp176, tmp173, <variable>.pic_distance,
	and	r1, r6, r1	@ ColBlkDist, tmp176, ColBlkDist
	cmp	r1, #0	@ ColBlkDist,
	moveq	r2, #32	@ tmp178,
	streq	r2, [r4, #460]	@ tmp178, <variable>.DirectScale
	beq	.L106	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #460]	@, <variable>.DirectScale
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L132:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #456]	@, <variable>.DirectScale
	b	.L104	@
	.fnend
	.size	AVS_UpdateTableDirectScale, .-AVS_UpdateTableDirectScale
	.align	2
	.global	AVS_UpdateTableSymScale
	.type	AVS_UpdateTableSymScale, %function
AVS_UpdateTableSymScale:
	.fnstart
.LFB1376:
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
	ldr	r3, [r0, #84]	@ D.37207, <variable>.pRef
	add	r2, r0, #4	@ tmp165, pCodecInf,
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r2, r3	@ tmp165, D.37207
	moveq	r5, #0	@ D.37210,
	beq	.L135	@,
	ldrb	r5, [r0, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L143	@,
	ldr	r5, [r0, #76]	@ temp.1159, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r2, [r4, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	ip, [r4, #308]	@ BlkDistBw.1187, <variable>.Idx2Dist
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ CurDistIdx.1181, <variable>.pic_distance,
	add	r7, r6, r0	@ pretmp.1182, CurDistIdx.1181,
	rsb	r6, r6, r0	@ pretmp.1183, CurDistIdx.1181,
	rsb	r1, r2, r7	@ temp.1185, <variable>.Idx2Dist, pretmp.1182
	add	r8, ip, r6	@ temp.1189, BlkDistBw.1187, pretmp.1183
	mov	lr, r1, asl #23	@ BlkDistFw.1186, temp.1185,
	mov	r1, lr, lsr #23	@ BlkDistFw.1186, BlkDistFw.1186,
	cmp	r1, #0	@ BlkDistFw.1186,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r8, asl #23	@ tmp190, temp.1189,
	ldr	r2, [r4, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r8, r3, lsr #23	@ tmp190, tmp190,
	ldr	ip, [r4, #304]	@ BlkDistBw.1195, <variable>.Idx2Dist
	rsb	r7, r2, r7	@ temp.1193, <variable>.Idx2Dist, pretmp.1182
	add	r6, ip, r6	@ temp.1197, BlkDistBw.1195, pretmp.1183
	mov	r1, r7, asl #23	@ BlkDistFw.1194, temp.1193,
	mov	r1, r1, lsr #23	@ BlkDistFw.1194, BlkDistFw.1194,
	cmp	r1, #0	@ BlkDistFw.1194,
	moveq	r1, #512	@,
	mul	r8, r8, r0	@ tmp192, tmp190,
	mov	r0, #512	@,
	str	r8, [r4, #488]	@ tmp192, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r6, asl #23	@ tmp199, temp.1197,
	ldr	r1, [r4, #312]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r2, r3, lsr #23	@ tmp199, tmp199,
	ldr	r3, [r4, #324]	@ BlkDistBw.1174, <variable>.Idx2Dist
	mul	ip, r2, r0	@ tmp201, tmp199,
	mov	r0, #512	@,
	str	ip, [r4, #492]	@ tmp201, <variable>.SymScale
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ tmp202, <variable>.pic_distance,
	add	r5, r6, #1	@ CurDistIdx.1162, tmp202,
	add	r6, r5, r0	@ pretmp.1143, CurDistIdx.1162,
	rsb	r5, r5, r0	@ pretmp.1177, CurDistIdx.1162,
	rsb	r2, r1, r6	@ temp.1175, <variable>.Idx2Dist, pretmp.1143
	add	r7, r3, r5	@ temp.1171, BlkDistBw.1174, pretmp.1177
	mov	ip, r2, asl #23	@ BlkDistFw.1173, temp.1175,
	mov	r1, ip, lsr #23	@ BlkDistFw.1173, BlkDistFw.1173,
	cmp	r1, #0	@ BlkDistFw.1173,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r7, asl #23	@ tmp210, temp.1171,
	ldr	r1, [r4, #316]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r7, r3, lsr #23	@ tmp210, tmp210,
	ldr	r2, [r4, #320]	@ BlkDistBw.1166, <variable>.Idx2Dist
	rsb	r6, r1, r6	@ temp.1164, <variable>.Idx2Dist, pretmp.1143
	add	r5, r2, r5	@ temp.1167, BlkDistBw.1166, pretmp.1177
	mov	ip, r6, asl #23	@ BlkDistFw.1156, temp.1164,
	mov	r1, ip, lsr #23	@ BlkDistFw.1156, BlkDistFw.1156,
	cmp	r1, #0	@ BlkDistFw.1156,
	moveq	r1, #512	@,
	mul	r7, r7, r0	@ tmp212, tmp210,
	mov	r0, #512	@,
	str	r7, [r4, #496]	@ tmp212, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r5, asl #23	@ tmp219, temp.1167,
	mov	r5, #1	@ D.37210,
	mov	r2, r3, lsr #23	@ tmp219, tmp219,
	mul	r1, r2, r0	@ tmp221, tmp219,
	str	r1, [r4, #500]	@ tmp221, <variable>.SymScale
.L135:
	mov	r0, r5	@, D.37210
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L143:
	ldr	lr, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #:lower16:510	@ BlkDistFw,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	mov	r0, #512	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movt	r1, #:upper16:510	@ BlkDistFw,
	ldr	r6, [lr, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	lr, [ip, #8]	@ D.37222, <variable>.pic_distance
	mov	r3, r6, asl #1	@ CurDistIdx, <variable>.pic_distance,
	add	ip, r3, r0	@ tmp169, CurDistIdx,
	rsb	r6, r3, lr, asl #1	@, tmp175, CurDistIdx, D.37222,
	add	r6, r6, r0	@ D.37225, tmp175,
	sub	lr, ip, r2, asl #1	@ D.37220, tmp169, <variable>.pic_distance,
	and	r1, lr, r1	@ BlkDistFw, D.37220, BlkDistFw
	cmp	r1, #0	@ BlkDistFw,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	movw	ip, #:lower16:510	@ tmp180,
	movt	ip, #:upper16:510	@ tmp180,
	and	r1, r6, ip	@ tmp180, D.37225, tmp180
	mul	r3, r1, r0	@ tmp182, tmp180,
	mov	r0, r5	@, D.37210
	str	r3, [r4, #488]	@ tmp182, <variable>.SymScale
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdateTableSymScale, .-AVS_UpdateTableSymScale
	.align	2
	.global	AVS_UpdateTabBBlkDist
	.type	AVS_UpdateTabBBlkDist, %function
AVS_UpdateTabBBlkDist:
	.fnstart
.LFB1377:
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
	ldr	r2, [r0, #84]	@ D.37257, <variable>.pRef
	add	r1, r0, #4	@ tmp155, pCodecInf,
	mov	r3, r0	@ pCodecInf, pCodecInf
	cmp	r1, r2	@ tmp155, D.37257
	moveq	r0, #0	@ D.37260,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldrb	r0, [r3, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r0, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L149	@,
	ldr	r5, [r3, #76]	@ temp.1257, <variable>.pCurFrm
	mov	r0, #1	@ D.37260,
	ldr	r8, [r3, #296]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r7, [r3, #304]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r6, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r3, #300]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r2, [r3, #308]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r4, r6, asl r0	@ CurDistIdx.1275, <variable>.pic_distance,
	ldr	r6, [r3, #312]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r4, #512	@ pretmp.1277, CurDistIdx.1275,
	add	r4, r4, #512	@ pretmp.1276, CurDistIdx.1275,
	rsb	ip, ip, r4	@ temp.1285, <variable>.Idx2Dist, pretmp.1276
	add	r2, r1, r2	@ temp.1288, pretmp.1277, <variable>.Idx2Dist
	rsb	r4, r8, r4	@ temp.1279, <variable>.Idx2Dist, pretmp.1276
	add	r1, r1, r7	@ temp.1282, pretmp.1277, <variable>.Idx2Dist
	mov	r2, r2, asl #23	@ tmp181, temp.1288,
	mov	ip, ip, asl #23	@ tmp179, temp.1285,
	mov	r1, r1, asl #23	@ tmp175, temp.1282,
	mov	r4, r4, asl #23	@ tmp173, temp.1279,
	mov	ip, ip, lsr #23	@ tmp179, tmp179,
	str	ip, [r3, #508]	@ tmp179, <variable>.BBlkDist
	mov	r4, r4, lsr #23	@ tmp173, tmp173,
	mov	ip, r1, lsr #23	@ tmp175, tmp175,
	str	r4, [r3, #504]	@ tmp173, <variable>.BBlkDist
	mov	r4, r2, lsr #23	@ tmp181, tmp181,
	str	ip, [r3, #512]	@ tmp175, <variable>.BBlkDist
	str	r4, [r3, #516]	@ tmp181, <variable>.BBlkDist
	ldr	r2, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	r4, [r3, #316]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r5, [r3, #320]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r1, r2, asl r0	@ tmp183, <variable>.pic_distance,
	ldr	r2, [r3, #324]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r1, r0	@ CurDistIdx.1260, tmp183,
	rsb	r1, ip, #512	@ pretmp.1242, CurDistIdx.1260,
	add	ip, ip, #512	@ pretmp.1240, CurDistIdx.1260,
	rsb	r4, r4, ip	@ temp.1262, <variable>.Idx2Dist, pretmp.1240
	add	r2, r1, r2	@ temp.1266, pretmp.1242, <variable>.Idx2Dist
	rsb	ip, r6, ip	@ temp.1272, <variable>.Idx2Dist, pretmp.1240
	add	r1, r1, r5	@ temp.1269, pretmp.1242, <variable>.Idx2Dist
	mov	r2, r2, asl #23	@ tmp195, temp.1266,
	mov	r4, r4, asl #23	@ tmp193, temp.1262,
	mov	r1, r1, asl #23	@ tmp189, temp.1269,
	mov	ip, ip, asl #23	@ tmp187, temp.1272,
	mov	r4, r4, lsr #23	@ tmp193, tmp193,
	str	r4, [r3, #524]	@ tmp193, <variable>.BBlkDist
	mov	ip, ip, lsr #23	@ tmp187, tmp187,
	str	ip, [r3, #520]	@ tmp187, <variable>.BBlkDist
	mov	ip, r1, lsr #23	@ tmp189, tmp189,
	mov	r1, r2, lsr #23	@ tmp195, tmp195,
	str	ip, [r3, #528]	@ tmp189, <variable>.BBlkDist
	str	r1, [r3, #532]	@ tmp195, <variable>.BBlkDist
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L149:
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
	str	r2, [r3, #512]	@ tmp168, <variable>.BBlkDist
	sub	r2, r5, r4, asl #1	@ D.37270, tmp159, <variable>.pic_distance,
	and	ip, r2, r1	@ tmp166, D.37270, tmp166
	str	ip, [r3, #504]	@ tmp166, <variable>.BBlkDist
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdateTabBBlkDist, .-AVS_UpdateTabBBlkDist
	.align	2
	.global	AVS_UpdatePmvTable
	.type	AVS_UpdatePmvTable, %function
AVS_UpdatePmvTable:
	.fnstart
.LFB1378:
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
	ldr	r5, [r0, #236]	@ <variable>.Syntax.syn_pic.derived_pic_coding_type, <variable>.Syntax.syn_pic.derived_pic_coding_type
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L153	@,
	bcs	.L159	@,
	ldrb	r5, [r0, #189]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L158	@,
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, #1	@ D.37297,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L159:
	cmp	r5, #2	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	movne	r0, #0	@ D.37297,
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
	mov	r0, #1	@ D.37297,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L153:
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
.L158:
	mov	r0, r5	@ D.37297, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVS_UpdatePmvTable, .-AVS_UpdatePmvTable
	.align	2
	.global	AVS_VerifyMemPara
	.type	AVS_VerifyMemPara, %function
AVS_VerifyMemPara:
	.fnstart
.LFB1379:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Destroy, .-AVSDEC_Destroy
	.align	2
	.global	AVS_GetPacketState
	.type	AVS_GetPacketState, %function
AVS_GetPacketState:
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
	movw	r3, #15968	@ tmp136,
	ldr	r0, [r0, r3]	@ <variable>.IsPackWaitDec, <variable>.IsPackWaitDec
	subs	r0, r0, #1	@, <variable>.IsPackWaitDec,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AVS_GetPacketState, .-AVS_GetPacketState
	.align	2
	.global	ClearPacket
	.type	ClearPacket, %function
ClearPacket:
	.fnstart
.LFB1389:
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
	movw	r2, #15992	@ tmp137,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #16104	@ tmp135,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #15981	@ tmp139,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L167	@,
	movw	ip, #16045	@ tmp141,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L169	@,
.L167:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L169:
	movw	r3, #16048	@ tmp143,
	ldr	lr, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	ble	.L167	@,
	movw	r2, #16056	@ tmp147,
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
.LFB1390:
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
	ldr	r2, [r0, r3]	@ D.37607, <variable>.AvsDecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r2, #512	@ D.37607,
	bge	.L178	@,
	cmp	r2, #0	@ D.37607,
	ble	.L173	@,
	movw	ip, #15976	@ tmp144,
	mov	r1, #15488	@ tmp146,
	ldr	r0, [r0, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	sub	r3, r2, #1	@ tmp150, D.37607,
	ldr	ip, [r4, r1]	@ <variable>.SyntaxNew.syn_seq.horizontal_size, <variable>.SyntaxNew.syn_seq.horizontal_size
	rsb	r3, r3, r3, asl #3	@, tmp154, tmp150, tmp150,
	add	r1, ip, #15	@ tmp147, <variable>.SyntaxNew.syn_seq.horizontal_size,
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp145,
	add	ip, r4, r3, asl #2	@, tmp156, pCtx, tmp154,
	mov	r1, r1, lsr #4	@ tmp149, tmp147,
	ldr	r3, [ip, #112]	@ D.37624, <variable>.slice_start_mbn
	mul	r1, r1, r0	@ D.37621, tmp149, tmp145
	cmp	r1, r3	@ D.37621, D.37624
	bls	.L179	@,
.L173:
	rsb	r2, r2, r2, asl #3	@, tmp162, D.37607, D.37607,
	movw	r3, #15984	@ tmp166,
	ldr	r0, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #14432	@ tmp169,
	add	ip, r4, r2, asl #2	@, tmp164, pCtx, tmp162,
	movw	r1, #15992	@ tmp177,
	str	r0, [ip, #96]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r2, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	movw	r1, #15988	@ tmp188,
	rsb	ip, r2, r2, asl #3	@, tmp173, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, ip, asl #2	@, tmp175, pCtx, tmp173,
	str	r0, [r2, #116]	@ <variable>.StreamID, <variable>.steram_id
	ldr	ip, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r2, ip, ip, asl #3	@, tmp184, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	ip, r4, r2, asl #2	@, tmp186, pCtx, tmp184,
	movw	r2, #15976	@ tmp200,
	str	r0, [ip, #104]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	mov	ip, #15488	@ tmp202,
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
	ldr	ip, [r4, r3]	@ temp.1439, <variable>.AvsDecParam.SlcNum
	add	r2, r1, #15	@ tmp220, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	mov	r0, r0, lsr #4	@ tmp218, tmp216,
	mov	r1, r2, lsr #4	@ tmp222, tmp220,
	rsb	r2, ip, ip, asl #3	@, tmp211, temp.1439, temp.1439,
	mul	ip, r1, r0	@ tmp223, tmp222, tmp218
	add	r2, r4, r2, asl #2	@, tmp213, pCtx, tmp211,
	ldr	r0, [r2, #112]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r1, ip, #1	@ tmp224, tmp223,
	cmp	r0, r1	@ <variable>.slice_start_mbn, tmp224
	movhi	r0, #0	@ D.37611,
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	movw	r0, #15981	@ tmp226,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L180	@,
	movw	r0, #16048	@ tmp263,
	movw	r1, #16056	@ tmp274,
	ldr	ip, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, #100]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	rsb	r2, r0, r0, asl #3	@, tmp270, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r0, r4, r2, asl #2	@, tmp272, pCtx, tmp270,
	movw	r2, #16052	@ tmp285,
	str	ip, [r0, #120]	@ <variable>.StreamID, <variable>.steram_id
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r1, r0, r0, asl #3	@, tmp281, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	mov	r0, #1	@ D.37611,
	add	r3, r4, r1, asl #2	@, tmp283, pCtx, tmp281,
	str	ip, [r3, #108]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	movw	r3, #14432	@ tmp287,
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	add	r2, r1, r0	@ tmp290, <variable>.AvsDecParam.SlcNum,
	str	r2, [r4, r3]	@ tmp290, <variable>.AvsDecParam.SlcNum
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L178:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r3, #512	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37611,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L179:
	mov	r2, r1	@, D.37621
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.37611,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L180:
	mov	ip, #0	@ tmp235,
	str	ip, [r2, #100]	@ tmp235, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	rsb	r1, r0, r0, asl #3	@, tmp241, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, r1, asl #2	@, tmp243, pCtx, tmp241,
	add	r0, r2, #116	@ tmp244, tmp243,
	str	ip, [r0, #4]	@ tmp235, <variable>.steram_id
	mov	r0, #1	@ D.37611,
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
.LFB1387:
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
	ble	.L182	@,
	ldr	r1, [r1, #0]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	r1, #0	@ <variable>.stream_phy_addr,
	bne	.L185	@,
.L182:
	ldr	r2, [r4, #12]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	mov	r0, #0	@ tmp139,
	str	r0, [r4, #16]	@ tmp139, <variable>.slice_start_mbn
	cmp	r2, r0	@ <variable>.stream_lenInByte,
	str	r0, [r4, #8]	@ tmp139, <variable>.stream_lenInByte
	str	r0, [r4, #0]	@ tmp139, <variable>.stream_phy_addr
	ble	.L183	@,
	ldr	ip, [r4, #4]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	ip, #0	@ <variable>.stream_phy_addr,
	bne	.L186	@,
.L183:
	mov	r3, #0	@ tmp145,
	mov	r0, #1	@,
	str	r3, [r4, #16]	@ tmp145, <variable>.slice_start_mbn
	str	r3, [r4, #12]	@ tmp145, <variable>.stream_lenInByte
	str	r3, [r4, #4]	@ tmp145, <variable>.stream_phy_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L185:
	ldr	r1, [r4, #20]	@, <variable>.steram_id
	bl	SM_ReleaseStreamSeg	@
	b	.L182	@
.L186:
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
.LFB1388:
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
	movw	r7, #14432	@ tmp137,
	ldr	r3, [r0, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.AvsDecParam.SlcNum,
	ble	.L188	@,
	mov	r4, #0	@ i,
	movw	r6, #16104	@ tmp152,
.L189:
	rsb	r2, r4, r4, asl #3	@, tmp143, i, i,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r4, r4, #1	@ i, i,
	add	r1, r5, r2, asl #2	@, tmp145, pCtx, tmp143,
	add	r1, r1, #96	@, tmp145,
	bl	ClearSlice	@
	ldr	r0, [r5, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	cmp	r0, r4	@ <variable>.AvsDecParam.SlcNum, i
	bgt	.L189	@,
.L188:
	movw	r3, #14432	@ tmp149,
	mov	ip, #0	@ tmp150,
	mov	r0, #1	@,
	str	ip, [r5, r3]	@ tmp150, <variable>.AvsDecParam.SlcNum
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_ClearCurPic, .-AVS_ClearCurPic
	.align	2
	.global	AVS_DecodeArbiter
	.type	AVS_DecodeArbiter, %function
AVS_DecodeArbiter:
	.fnstart
.LFB1365:
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
	beq	.L211	@,
.L193:
	mov	r0, #0	@ D.36371,
.L203:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L211:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ DecMode, <variable>.s32DecMode
	cmp	r3, #4	@ DecMode,
	ldrls	pc, [pc, r3, asl #2]	@ DecMode
	b	.L194	@
.L198:
	.word	.L195
	.word	.L196
	.word	.L197
	.word	.L194
	.word	.L195
.L195:
	movw	r0, #15412	@ tmp144,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	lr, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	lr, #15416	@ tmp146,
	moveq	r1, #0	@ tmp147,
	streq	r1, [r4, lr]	@ tmp147, <variable>.CodecInfo.RefNum
.L194:
	movw	r2, #15584	@ tmp157,
	movw	ip, #15412	@ tmp156,
	ldr	r2, [r4, r2]	@ temp.1530, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #1	@ temp.1530,
	beq	.L212	@,
	cmp	r2, #2	@ temp.1530,
	bne	.L205	@,
	movw	r1, #15416	@ tmp162,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	ble	.L204	@,
.L205:
	add	lr, r4, #15424	@, pCtx,
	add	r2, r4, #14976	@, pCtx,
	add	r1, lr, #44	@,,
	add	r0, r2, #20	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	movw	r0, #15065	@ tmp182,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	r3, #15428	@ tmp178,
	movw	r1, #15112	@ tmp180,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	mov	r0, #18	@,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bl	dprint_vfmw	@
	movw	ip, #14980	@ tmp184,
	mov	r0, #1	@ D.36371,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	bic	r1, r3, #311296	@ tmp187, <variable>.CodecInfo.Integrity,
	str	r1, [r4, ip]	@ tmp187, <variable>.CodecInfo.Integrity
	b	.L203	@
.L196:
	movw	lr, #15412	@ tmp148,
	movw	r2, #15584	@ tmp152,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	ip, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	ip, #15416	@ tmp150,
	moveq	r1, #0	@ tmp151,
	streq	r1, [r4, ip]	@ tmp151, <variable>.CodecInfo.RefNum
	ldr	r1, [r4, r2]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r1, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L194	@,
.L200:
	movw	ip, #15412	@ tmp189,
	mov	r0, r4	@, pCtx
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
.L210:
	bl	AVS_ClearCurPic	@
	movw	r2, #14980	@ tmp164,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	ip, #:lower16:g_event_report	@ tmp168,
	movt	ip, #:upper16:g_event_report	@ tmp168,
	bic	r3, r0, #311296	@ tmp167, <variable>.CodecInfo.Integrity,
	str	r3, [r4, r2]	@ tmp167, <variable>.CodecInfo.Integrity
	ldr	r3, [ip, #0]	@ g_event_report.1536, g_event_report
	cmp	r3, #0	@ g_event_report.1536,
	beq	.L193	@,
	movw	lr, #16104	@ tmp169,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.1536
	mov	r0, #0	@ D.36371,
	b	.L203	@
.L197:
	movw	r1, #15584	@ tmp154,
	ldr	r0, [r4, r1]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r0, #0	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L200	@,
	b	.L194	@
.L212:
	movw	lr, #15416	@ tmp160,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bgt	.L205	@,
.L204:
	mov	r0, r4	@, pCtx
	b	.L210	@
	.fnend
	.size	AVS_DecodeArbiter, .-AVS_DecodeArbiter
	.align	2
	.global	AVSDEC_GetImageBuffer
	.type	AVSDEC_GetImageBuffer, %function
AVSDEC_GetImageBuffer:
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
	movw	r5, #16104	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37542,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.37545,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #15616	@, pCtx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37545,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_GetImageBuffer, .-AVSDEC_GetImageBuffer
	.align	2
	.global	AVSDEC_RecycleImage
	.type	AVSDEC_RecycleImage, %function
AVSDEC_RecycleImage:
	.fnstart
.LFB1383:
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
	movw	r4, #16104	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L219	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #172]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #176]	@ tmp145, <variable>.p_usrdat
.L219:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_RecycleImage, .-AVSDEC_RecycleImage
	.align	2
	.global	AVS_OutputOneFrame
	.type	AVS_OutputOneFrame, %function
AVS_OutputOneFrame:
	.fnstart
.LFB1372:
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
	movw	r5, #16104	@ tmp139,
	mov	r4, r1	@ pCtx, pCtx
	mov	r6, r0	@ pOutput, pOutput
	ldr	r1, [r0, #4]	@, <variable>.FspID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r6, #4]	@, <variable>.FspID
	mov	r2, #1	@,
	mov	r7, r0	@ pImage,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	add	r3, r4, #15616	@, pCtx,
	str	r7, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.36956,
	beq	.L223	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r6, #4]	@, <variable>.FspID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36960,
.L223:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	AVS_OutputOneFrame, .-AVS_OutputOneFrame
	.align	2
	.global	AVSDEC_Init
	.type	AVSDEC_Init, %function
AVSDEC_Init:
	.fnstart
.LFB1380:
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
	movw	r5, #15960	@ tmp141,
	ldr	r8, [r0, r5]	@ D.37315, <variable>.ImageQue.ResetMagicWord
	add	r6, r0, #15616	@ D.37322, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #16360	@,
	bl	__memzero	@
	mov	r0, r6	@, D.37322
	str	r8, [r4, r5]	@ D.37315, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #16104	@ tmp143,
	cmn	r0, #1	@ D.37323,
	str	r0, [r4, r3]	@ D.37323, <variable>.ChanID
	beq	.L229	@,
	add	r5, r4, #14848	@ tmp146, pCtx,
	mov	r1, #564	@,
	add	r0, r5, #28	@, tmp146,
	add	r5, r5, #32	@ D.37337, tmp146,
	bl	__memzero	@
	mov	r2, #15168	@ tmp157,
	movw	r3, #14956	@ tmp156,
	add	r1, r4, #15424	@ tmp148, pCtx,
	str	r5, [r4, r3]	@ D.37337, <variable>.CodecInfo.pRef
	movw	r3, #15164	@ tmp150,
	str	r6, [r4, r2]	@ D.37322, <variable>.CodecInfo.pstImgQue
	movw	r2, #15140	@ tmp147,
	add	ip, r1, #16	@ tmp148, tmp148,
	mov	r1, #1024	@ tmp151,
	str	ip, [r4, r2]	@ tmp148, <variable>.CodecInfo.pBs
	movw	ip, #14952	@ tmp153,
	str	r1, [r4, r3]	@ tmp151, <variable>.CodecInfo.DDR_Stride
	movw	r2, #14964	@ tmp154,
	movw	r1, #14960	@ tmp155,
	str	r5, [r4, r2]	@ D.37337, <variable>.CodecInfo.pRef
	mov	r0, #1	@ D.37328,
	str	r5, [r4, ip]	@ D.37337, <variable>.CodecInfo.pCurFrm
	str	r5, [r4, r1]	@ D.37337, <variable>.CodecInfo.pRef
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L229:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37328,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Init, .-AVSDEC_Init
	.align	2
	.global	AVS_GetImageBuffer
	.type	AVS_GetImageBuffer, %function
AVS_GetImageBuffer:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #15584	@ tmp146,
	ldr	r3, [r4, r0]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r3, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	beq	.L231	@,
	movw	r5, #15152	@ tmp148,
	movw	ip, #14952	@ tmp157,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId
	add	r3, r1, #1	@ tmp160, <variable>.CodecInfo.CurFrameObjId,
	add	r6, r1, r1, asl #1	@, tmp152, <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId,
	mov	r2, r3, asr #31	@ tmp162, tmp160,
	add	r0, r4, r6, asl #2	@, tmp156, pCtx, tmp152,
	mov	r6, r2, lsr #30	@ tmp163, tmp162,
	add	r7, r0, #14848	@ prephitmp.1662, tmp156,
	add	lr, r3, r6	@ tmp164, tmp160, tmp163
	add	r7, r7, #44	@ prephitmp.1662, prephitmp.1662,
	and	r1, lr, #3	@ tmp165, tmp164,
	str	r7, [r4, ip]	@ prephitmp.1662, <variable>.CodecInfo.pCurFrm
	rsb	r2, r6, r1	@ tmp166, tmp163, tmp165
	str	r2, [r4, r5]	@ tmp166, <variable>.CodecInfo.CurFrameObjId
.L232:
	movw	r5, #16104	@ tmp169,
	mov	r1, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r6, #14952	@ tmp172,
	bl	FSP_NewLogicFs	@
	str	r0, [r7, #4]	@, <variable>.FspID
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r3, #4]	@ D.36913, <variable>.FspID
	cmp	r1, #0	@ D.36913,
	blt	.L237	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [r3, #4]	@, <variable>.FspID
	mov	r5, r0	@ pLf,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #440]	@ D.36934, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36934,
	beq	.L235	@,
	ldr	r3, [r5, #444]	@ D.36937, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36937,
	beq	.L235	@,
	ldr	r0, [r5, #448]	@ D.36940, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.36940,
	beq	.L235	@,
	ldr	lr, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC7	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L235:
	mov	r0, #1	@ ret,
	mov	r1, #0	@ tmp238,
	str	r1, [r5, #168]	@ tmp238, <variable>.stDispImg.error_level
.L234:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L231:
	add	ip, r4, #14912	@ prephitmp.1662, pCtx,
	movw	r5, #14952	@ tmp168,
	add	r7, ip, #28	@ prephitmp.1662, prephitmp.1662,
	str	r7, [r4, r5]	@ prephitmp.1662, <variable>.CodecInfo.pCurFrm
	b	.L232	@
.L237:
	movw	sl, #14956	@ tmp177,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #14960	@ tmp192,
	movw	r9, #14964	@ tmp197,
	mov	r8, #0	@ tmp211,
	ldr	r1, [r2, #4]	@, <variable>.FspID
	str	r7, [fp, #-48]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	mov	r7, r0	@ pImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [fp, #-48]	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #184]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	add	r3, r4, #14848	@ D.36928, pCtx,
	str	r8, [r7, #184]	@ tmp211, <variable>.p_usrdat
	add	r0, r3, #32	@ D.36928, D.36928,
	str	r8, [r7, #172]	@ tmp211, <variable>.p_usrdat
	str	r8, [r7, #176]	@ tmp211, <variable>.p_usrdat
	str	r8, [r7, #180]	@ tmp211, <variable>.p_usrdat
	str	r0, [r4, sl]	@ D.36928, <variable>.CodecInfo.pRef
	str	r0, [r4, r6]	@ D.36928, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, r9]	@ D.36928, <variable>.CodecInfo.pRef
	ldr	r1, [fp, #-48]	@,
	str	r0, [r4, r1]	@ D.36928, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	ip, #15416	@ tmp223,
	movw	r2, #14884	@ tmp222,
	add	r1, r4, #15616	@, pCtx,
	str	r8, [r4, ip]	@ tmp211, <variable>.CodecInfo.RefNum
	str	r0, [r4, r2]	@, <variable>.CodecInfo.ZeroFrm.FspID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r8	@ ret, tmp211
	b	.L234	@
	.fnend
	.size	AVS_GetImageBuffer, .-AVS_GetImageBuffer
	.align	2
	.global	AVS_StartDecode
	.type	AVS_StartDecode, %function
AVS_StartDecode:
	.fnstart
.LFB1369:
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
	movw	r8, #16114	@ tmp179,
	movw	r7, #16115	@ tmp182,
	movw	r6, #16108	@ tmp185,
	movw	r5, #16109	@ tmp188,
	movw	lr, #16111	@ tmp191,
	movw	ip, #16156	@ tmp194,
	mov	r4, r0	@ pCtx, pCtx
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsCfg.pic_coding_type
	movw	r1, #16112	@ tmp200,
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.AvsCfg.picture_structure, <variable>.AvsCfg.picture_structure
	movw	r2, #16113	@ tmp203,
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsCfg.no_fwd_ref_flag
	movw	r9, #16116	@ tmp206,
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsCfg.pic_ref_flag
	movw	r3, #16164	@ tmp209,
	ldrb	r5, [r0, lr]	@ zero_extendqisi2	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	ldr	lr, [r0, ip]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsCfg.pic_qp
	movw	r0, #16160	@ tmp197,
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsCfg.fix_qp
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsCfg.repeat_first_field
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.AvsCfg.top_field_first, <variable>.AvsCfg.top_field_first
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ <variable>.AvsCfg.progressive_frame, <variable>.AvsCfg.progressive_frame
	movw	r9, #16168	@ tmp212,
	ldr	r9, [r4, r9]	@, <variable>.AvsCfg.alpha_c_offset
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.beta_offset, <variable>.AvsCfg.beta_offset
	str	r9, [fp, #-48]	@, %sfp
	movw	r9, #16117	@ tmp215,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.AvsCfg.loop_flt_para_flag
	str	r9, [fp, #-52]	@, %sfp
	movw	r9, #16118	@ tmp218,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.AvsCfg.loop_flt_disable
	str	r9, [fp, #-56]	@, %sfp
	movw	r9, #16125	@ tmp221,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.AvsCfg.col_pic_struct
	str	r9, [fp, #-60]	@, %sfp
	movw	r9, #16152	@ tmp175,
	ldrh	r9, [r4, r9]	@, <variable>.AvsCfg.pic_width_in_mb
	strb	sl, [r4, #15]	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsDecParam.PicCodingType
	strb	r8, [r4, #16]	@ <variable>.AvsCfg.picture_structure, <variable>.AvsDecParam.PicStruct
	strh	r9, [r4, #56]	@ movhi	@, <variable>.AvsDecParam.PicWidthInMb
	movw	r9, #16148	@ tmp177,
	ldrh	r9, [r4, r9]	@, <variable>.AvsCfg.pic_height_in_mb
	strb	r7, [r4, #17]	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsDecParam.NoFwdRefFlag
	movw	r7, #16121	@ tmp236,
	strb	r6, [r4, #18]	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsDecParam.PicRefFlag
	movw	r6, #16123	@ tmp242,
	strh	r9, [r4, #58]	@ movhi	@, <variable>.AvsDecParam.PicHeightInMb
	strb	r5, [r4, #19]	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsDecParam.SkipModeFlag
	strb	lr, [r4, #20]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsDecParam.PicQuant
	strb	ip, [r4, #21]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsDecParam.FixQPFlag
	movw	ip, #16110	@ tmp224,
	strb	r0, [r4, #22]	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsDecParam.RepeatFirstField
	movw	r0, #16120	@ tmp227,
	strb	r1, [r4, #23]	@ <variable>.AvsCfg.top_field_first, <variable>.AvsDecParam.TopFieldFirst
	movw	r1, #16119	@ tmp230,
	strb	r2, [r4, #24]	@ <variable>.AvsCfg.progressive_frame, <variable>.AvsDecParam.ProgrsvFrame
	movw	r2, #16122	@ tmp233,
	strb	r3, [r4, #25]	@ <variable>.AvsCfg.beta_offset, <variable>.AvsDecParam.BetaOffset
	movw	r3, #16124	@ tmp239,
	ldr	r5, [fp, #-48]	@, %sfp
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@, <variable>.AvsCfg.fwd_picture_structure_1
	movw	r6, #16180	@ tmp255,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsCfg.fwd_top_field_first_1
	strb	r5, [r4, #26]	@, <variable>.AvsDecParam.AlphaOffset
	movw	r5, #16126	@ tmp245,
	ldr	r9, [fp, #-52]	@, %sfp
	strb	r9, [r4, #27]	@, <variable>.AvsDecParam.LoopFiltParamFlag
	ldr	r8, [fp, #-56]	@, %sfp
	strb	r8, [r4, #28]	@, <variable>.AvsDecParam.LoopFiltDisable
	movw	r8, #16172	@ tmp249,
	ldr	lr, [fp, #-60]	@, %sfp
	strb	lr, [r4, #29]	@, <variable>.AvsDecParam.ColPicStruct
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsCfg.bwd_top_field_first
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsCfg.bwd_picture_structure
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsCfg.fwd_top_field_first_0
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsCfg.fwd_picture_structure_0
	movw	r7, #16176	@ tmp252,
	str	sl, [fp, #-48]	@, %sfp
	movw	sl, #16216	@ tmp258,
	ldrb	r9, [r4, r5]	@ zero_extendqisi2	@, <variable>.AvsCfg.col_pic_type
	movw	r5, #16220	@ tmp261,
	str	r9, [fp, #-52]	@, %sfp
	ldr	r9, [r4, r8]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsCfg.bwd_address_0
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsCfg.fwd_address_0
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsCfg.fwd_address_1
	ldr	r6, [r4, sl]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsCfg.current_pmv_addr
	movw	sl, #14952	@ tmp266,
	ldr	sl, [r4, sl]	@, <variable>.CodecInfo.pCurFrm
	ldr	r5, [r4, r5]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsCfg.colpic_mv_addr
	str	sl, [fp, #-56]	@, %sfp
	movw	sl, #14436	@ tmp248,
	str	r9, [r4, sl]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsDecParam.BwdRefPicAddr
	movw	sl, #14440	@ tmp251,
	str	r8, [r4, sl]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsDecParam.FwdRefPic0Addr
	movw	r8, #14444	@ tmp254,
	str	r7, [r4, r8]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsDecParam.FwdRefPic1Addr
	movw	sl, #14456	@ tmp260,
	movw	r7, #14452	@ tmp257,
	str	r5, [r4, sl]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsDecParam.ColPmvAddr
	str	r6, [r4, r7]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsDecParam.CurPmvAddr
	movw	r7, #16188	@ tmp272,
	strb	lr, [r4, #30]	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsDecParam.AdvPredModeDisable
	movw	lr, #16104	@ tmp263,
	strb	ip, [r4, #31]	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsDecParam.BwdTopFieldFirst
	movw	r6, #16184	@ tmp275,
	strb	r0, [r4, #32]	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsDecParam.BwdPicStruct
	movw	sl, #16140	@ tmp284,
	strb	r1, [r4, #33]	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsDecParam.FwdTopFieldFirst0
	movw	r5, #16132	@ tmp278,
	strb	r2, [r4, #34]	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsDecParam.FwdPicStruct0
	strb	r3, [r4, #35]	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsDecParam.FwdTopFieldFirst1
	ldr	r0, [fp, #-48]	@, %sfp
	strb	r0, [r4, #36]	@, <variable>.AvsDecParam.FwdPicStruct1
	ldr	ip, [fp, #-52]	@, %sfp
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	strb	ip, [r4, #37]	@, <variable>.AvsDecParam.ColPicType
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r1, [r8, #4]	@, <variable>.FspID
	bl	FSP_GetLogicFs	@
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsCfg.ystaddr_1d
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsCfg.rcn_address
	movw	r1, #16136	@ tmp281,
	ldr	ip, [r4, sl]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsCfg.ref_pic_type2
	movw	r2, #16144	@ tmp287,
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsCfg.ref_pic_type0
	add	r3, r4, #16192	@ ivtmp.1730, pCtx,
	ldr	r5, [r4, r1]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsCfg.ref_pic_type1
	add	r3, r3, #32	@ ivtmp.1730, ivtmp.1730,
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsCfg.ref_pic_type3
	mov	r2, #0	@ iCnt,
	ldr	r0, [r0, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	sl, [r0, #20]	@ <variable>.Stride, <variable>.Stride
	movw	r0, #14448	@ tmp271,
	str	r8, [r4, r0]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsDecParam.CurPicAddr
	movw	r0, #14460	@ tmp274,
	str	r7, [r4, r0]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsDecParam.rcn_address
	movw	r0, #14852	@ tmp268,
	str	sl, [r4, r0]	@ <variable>.Stride, <variable>.AvsDecParam.VahbStride
	movw	r0, #14856	@ tmp277,
	str	r6, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsDecParam.RefPicType0
	movw	r0, #14860	@ tmp280,
	str	r5, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsDecParam.RefPicType1
	movw	r0, #14864	@ tmp283,
	str	ip, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsDecParam.RefPicType2
	movw	r0, #14868	@ tmp286,
	str	r1, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsDecParam.RefPicType3
.L239:
	ldr	r0, [r3, #4]	@ tmp319, <variable>.AvsCfg.pmvtable
	add	r2, r2, #2	@ iCnt, iCnt,
	ldr	ip, [r3, #0]	@ tmp290, <variable>.AvsCfg.pmvtable
	add	r1, r3, #4	@ tmp316, ivtmp.1730,
	cmp	r2, #32	@ iCnt,
	str	ip, [r3, #-1756]	@ tmp290, <variable>.AvsDecParam.PmvConfigTab
	add	r3, r1, #4	@ ivtmp.1730, tmp316,
	str	r0, [r1, #-1756]	@ tmp319, <variable>.AvsDecParam.PmvConfigTab
	bne	.L239	@,
	movw	r3, #15428	@ tmp291,
	ldr	r2, [r4, #0]	@ D.36719, <variable>.pstExtraData
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	add	r1, r4, #8	@ D.36776, pCtx,
	str	r1, [r4, #4]	@ D.36776, <variable>.pAvsDecParam
	add	r0, ip, #1	@ tmp294, <variable>.CodecInfo.PicCnt,
	str	r0, [r4, r3]	@ tmp294, <variable>.CodecInfo.PicCnt
	ldr	r3, [r2, #584]	@ D.36777, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.36777,
	beq	.L246	@,
	cmp	r3, #2	@ D.36777,
	beq	.L247	@,
.L241:
	ldr	r1, [r2, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r3, #14872	@ tmp312,
	mov	r0, #1	@ D.36786,
	str	r1, [r4, r3]	@ <variable>.s32Compress_en, <variable>.AvsDecParam.Compress_en
.L242:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L246:
	cmp	r1, #0	@ D.36776,
	beq	.L241	@,
	movw	r0, #14952	@ tmp296,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r1, #2	@ <variable>.PicCodingType,
	bne	.L241	@,
	mov	r5, #0	@ tmp298,
	movw	r2, #16104	@ tmp299,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, r5	@, tmp298
	str	r5, [r4, #4]	@ tmp298, <variable>.pAvsDecParam
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.36786, tmp298
	b	.L242	@
.L247:
	ldr	r3, [r2, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r3, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L241	@,
	cmp	r1, #0	@ D.36776,
	beq	.L241	@,
	movw	r1, #14952	@ tmp304,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	ip, #2	@ <variable>.PicCodingType,
	bne	.L241	@,
	mov	r5, #0	@ tmp306,
	movw	lr, #16104	@ tmp307,
	str	r5, [r4, #4]	@ tmp306, <variable>.pAvsDecParam
	mov	r2, r5	@, tmp306
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1743, <variable>.pstExtraData
	mov	r0, r5	@ D.36786, tmp306
	ldr	ip, [r3, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, ip, #1	@ tmp311, <variable>.stDisParams.s32DisNums,
	str	r2, [r3, #588]	@ tmp311, <variable>.stDisParams.s32DisNums
	b	.L242	@
	.fnend
	.size	AVS_StartDecode, .-AVS_StartDecode
	.align	2
	.global	AVS_SetImgFormat
	.type	AVS_SetImgFormat, %function
AVS_SetImgFormat:
	.fnstart
.LFB1370:
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
	movw	r1, #15007	@ tmp153,
	mov	r5, r0	@ pCtx, pCtx
	ldrb	r0, [r0, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r2, #15112	@ tmp151,
	movw	r3, #15038	@ tmp152,
	cmp	r0, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	ldr	r9, [r5, r2]	@ codtype, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldrb	r8, [r5, r3]	@ zero_extendqisi2	@ D.36820, <variable>.CodecInfo.Syntax.syn_sdext.video_format
	beq	.L249	@,
	movw	sl, #15064	@ tmp155,
	ldrb	r4, [r5, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	cmp	r4, #1	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame,
	movne	r4, #256	@,
	strne	r4, [fp, #-48]	@, %sfp
	beq	.L249	@,
.L250:
	movw	sl, #15005	@ tmp158,
	movw	ip, #15066	@ tmp157,
	ldrb	r2, [r5, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio
	movw	r0, #14952	@ tmp167,
	ldrb	sl, [r5, ip]	@ zero_extendqisi2	@ D.36828, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	movw	r4, #16104	@ tmp164,
	sub	r1, r2, #1	@ tmp161, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	and	r9, r9, #3	@ D.36852, codtype,
	uxtb	r3, r1	@ D.37706, tmp161
	and	sl, sl, #3	@ tmp170, D.36828,
	cmp	r3, #3	@ D.37706,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	movwls	ip, #:lower16:.LANCHOR0	@ tmp162,
	movtls	ip, #:upper16:.LANCHOR0	@ tmp162,
	movhi	r6, #0	@ prephitmp.1771,
	ldrls	r7, [ip, r3, asl #2]	@ dar, CSWTCH.484
	movhi	r7, r6	@ dar, prephitmp.1771
	andls	r6, r7, #7	@ tmp163, dar,
	movls	r6, r6, asl #14	@ prephitmp.1771, tmp163,
	bl	FSP_GetFsImagePtr	@
	and	r1, r8, #3	@ tmp173, D.36820,
	orr	r2, r9, #3072	@ tmp169, D.36852,
	ldr	ip, [fp, #-48]	@, %sfp
	orr	sl, r2, sl, asl #12	@, tmp172, tmp169, tmp170,
	orr	r8, sl, r1, asl #5	@, tmp175, tmp172, tmp173,
	movw	r3, #15420	@ tmp178,
	orr	r8, r8, ip	@ tmp176, tmp175,
	mov	r1, r7	@, dar
	orr	r6, r8, r6	@ tmp177, tmp176, prephitmp.1771
	str	r6, [r0, #120]	@ tmp177, <variable>.format
	mov	r4, r0	@ pImage,
	ldr	r2, [r5, r3]	@ <variable>.CodecInfo.ErrRatio, <variable>.CodecInfo.ErrRatio
	str	r9, [r0, #116]	@ D.36852, <variable>.bottom_fld_type
	str	r9, [r0, #112]	@ D.36852, <variable>.top_fld_type
	str	r2, [r0, #160]	@ <variable>.CodecInfo.ErrRatio, <variable>.error_level
	bl	SetAspectRatio	@
	movw	ip, #15016	@ tmp180,
	ldr	r1, [r5, ip]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	movw	r3, #15020	@ tmp182,
	str	r1, [r4, #124]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.image_width
	ldr	r3, [r5, r3]	@ D.36857, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	str	r3, [r4, #128]	@ D.36857, <variable>.image_height
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L257	@,
.L253:
	movw	r3, #15065	@ tmp198,
	mov	r0, #6	@ tmp197,
	str	r0, [r4, #308]	@ tmp197, <variable>.ImageDnr.video_standard
	mov	r2, #1	@ tmp201,
	ldrb	r1, [r5, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mov	ip, #8	@ tmp203,
	strb	r2, [r4, #301]	@ tmp201, <variable>.ImageDnr.chroma_format_idc
	cmp	r1, r2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	ip, [r4, #316]	@ tmp203, <variable>.ImageDnr.QP_U
	strb	r2, [r4, #303]	@ tmp201, <variable>.ImageDnr.use_pic_qp_en
	movne	r1, #4	@ iftmp.456,
	moveq	r1, #0	@ iftmp.456,
	str	ip, [r4, #312]	@ tmp203, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #296]	@ iftmp.456, <variable>.ImageDnr.pic_structure
	str	ip, [r4, #320]	@ tmp203, <variable>.ImageDnr.QP_V
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L249:
	mov	ip, #0	@,
	str	ip, [fp, #-48]	@, %sfp
	b	.L250	@
.L257:
	ldr	r1, [r4, #152]	@ D.36862, <variable>.image_stride
	add	r0, r3, #15	@ tmp186, D.36857,
	ldr	r2, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r3, r0, lsr #4	@ tmp187, tmp186,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp185, D.36862,
	add	ip, r2, r1	@ tmp192, <variable>.luma_phy_addr, D.36862
	str	r2, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r3, r3, lr	@ D.36868, tmp187, tmp185
	str	ip, [r4, #76]	@ tmp192, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r2, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r3, r2	@ tmp189, D.36868, <variable>.luma_phy_addr
	add	r3, r0, r3	@ tmp191, <variable>.luma_vir_addr, D.36868
	str	lr, [r4, #88]	@ tmp189, <variable>.chrom_phy_addr
	add	r0, lr, r1	@ tmp193, tmp189, D.36862
	str	r3, [r4, #36]	@ tmp191, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp193, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp189
	str	lr, [r4, #72]	@ tmp189, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L253	@
	.fnend
	.size	AVS_SetImgFormat, .-AVS_SetImgFormat
	.align	2
	.global	AVSDEC_VDMPostProc
	.type	AVSDEC_VDMPostProc, %function
AVSDEC_VDMPostProc:
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
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	bl	AVS_ClearCurPic	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #14868	@,
	bl	__memzero	@
	movw	r0, #15112	@ tmp160,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	bne	.L259	@,
.L279:
	movw	r7, #15112	@ tmp179,
	movw	r1, #15420	@ tmp173,
	ldr	r0, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	str	r5, [r4, r1]	@ tmp177, <variable>.CodecInfo.ErrRatio
	ldr	r5, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	cmp	r0, #2	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	ldr	r3, [r5, #0]	@ RefErrThr, <variable>.s32RefErrThr
	beq	.L261	@,
	movw	r6, #15420	@ tmp181,
	ldr	r2, [r4, r6]	@ D.37470, <variable>.CodecInfo.ErrRatio
	cmp	r3, r2	@ RefErrThr, D.37470
	blt	.L280	@,
.L261:
	mov	r0, r4	@, pCtx
	movw	r6, #15432	@ tmp241,
	bl	AVS_SetImgFormat	@
	movw	r0, #14952	@ tmp239,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #16104	@ tmp236,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r5, [r4, r6]	@ D.37491, <variable>.CodecInfo.pSeqUD
	movw	r3, #15436	@ tmp246,
	movw	ip, #15432	@ tmp244,
	cmp	r5, #0	@ D.37491,
	movw	r1, #15112	@ tmp251,
	mov	r2, #0	@ tmp245,
	strne	r5, [r0, #172]	@ D.37491, <variable>.p_usrdat
	movne	r5, #0	@ tmp243,
	ldr	r7, [r4, r3]	@ D.37494, <variable>.CodecInfo.pPicUD
	strne	r5, [r4, r6]	@ tmp243, <variable>.CodecInfo.pSeqUD
	mov	r6, #0	@ tmp250,
	cmp	r7, r2	@ D.37494,
	str	r2, [r4, ip]	@ tmp245, <variable>.CodecInfo.pSeqUD
	strne	r7, [r0, #176]	@ D.37494, <variable>.p_usrdat
	movw	r0, #15436	@ tmp249,
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	strne	r2, [r4, r3]	@ tmp245, <variable>.CodecInfo.pPicUD
	cmp	r5, #1	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	str	r6, [r4, r0]	@ tmp250, <variable>.CodecInfo.pPicUD
	bls	.L281	@,
	movw	r7, #14952	@ tmp283,
	add	r8, r4, #14848	@ tmp308, pCtx,
	ldr	r5, [r4, r7]	@ pOutput, <variable>.CodecInfo.pCurFrm
	add	r8, r8, #32	@ tmp308, tmp308,
.L271:
	movw	r7, #16104	@ tmp284,
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, r5	@ tmp308, pOutput
	mov	r6, r0	@ pImage.1860,
	beq	.L272	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #15420	@ tmp290,
	ldr	r2, [r4, r2]	@ temp.1863, <variable>.CodecInfo.ErrRatio
	ldr	r3, [ip, #4]	@ OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r2	@ OutErrThr, temp.1863
	bge	.L273	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r6, #172]	@ D.37523, <variable>.p_usrdat
	cmp	r1, #0	@ D.37523,
	beq	.L274	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp297,
	str	r3, [r6, #172]	@ tmp297, <variable>.p_usrdat
.L274:
	ldr	r1, [r6, #176]	@ D.37526, <variable>.p_usrdat
	cmp	r1, #0	@ D.37526,
	beq	.L272	@,
	movw	lr, #16104	@ tmp298,
	mov	r8, #1	@ D.37489,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp300,
	str	r1, [r6, #176]	@ tmp300, <variable>.p_usrdat
.L262:
	mov	r0, r8	@, D.37489
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L273:
	mov	r0, r5	@, pOutput
	mov	r1, r4	@, pCtx
	bl	AVS_OutputOneFrame	@
	subs	r5, r0, #0	@ D.37530,
	bne	.L272	@,
	ldr	r1, [r6, #172]	@ temp.1868, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1868,
	beq	.L275	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #172]	@ D.37530, <variable>.p_usrdat
.L275:
	ldr	r1, [r6, #176]	@ temp.1870, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1870,
	moveq	r8, r1	@ D.37489, temp.1870
	beq	.L262	@,
	movw	r8, #16104	@ tmp304,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r8, #0	@ tmp306,
	bl	FreeUsdByDec	@
	str	r8, [r6, #176]	@ tmp306, <variable>.p_usrdat
	b	.L262	@
.L272:
	mov	r8, #1	@ D.37489,
	b	.L262	@
.L259:
	movw	r3, #14956	@ tmp166,
	movw	r6, #16104	@ tmp163,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #14960	@ tmp171,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r1, [r2, #4]	@, <variable>.FspID
	ldr	r7, [r0, #160]	@ D.37463, <variable>.error_level
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r0, #160]	@ <variable>.error_level, <variable>.error_level
	add	r7, r7, r1	@ tmp174, D.37463, <variable>.error_level
	add	r5, r5, r7	@ tmp176, ErrRatio, tmp174
	cmp	r5, #100	@ tmp176,
	movge	r5, #100	@ tmp177,
	b	.L279	@
.L281:
	movw	r5, #15416	@ tmp253,
	movw	r2, #15065	@ tmp255,
	ldr	ip, [r4, r5]	@ iftmp.477, <variable>.CodecInfo.RefNum
	movw	r7, #15416	@ tmp254,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	ip, #1	@ iftmp.477,
	addle	ip, ip, #1	@ iftmp.477, iftmp.477,
	cmp	lr, #1	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	ip, [r4, r7]	@ iftmp.477, <variable>.CodecInfo.RefNum
	beq	.L267	@,
	movw	r3, #15112	@ tmp257,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r6, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	addeq	r8, r4, #14848	@ tmp308, pCtx,
	addeq	r8, r8, #32	@ tmp308, tmp308,
	beq	.L268	@,
.L267:
	movw	r0, #14952	@ tmp262,
	movw	r5, #16104	@ tmp259,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r8, r4, #14848	@ tmp308, pCtx,
	add	r8, r8, #32	@ tmp308, tmp308,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	r1, #14964	@ tmp264,
	ldr	r3, [r4, r1]	@ temp.1851, <variable>.CodecInfo.pRef
	cmp	r3, r8	@ temp.1851, tmp308
	beq	.L269	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L269:
	movw	r5, #14960	@ tmp271,
	movw	r2, #14956	@ tmp274,
	movw	r1, #14952	@ tmp277,
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	ip, #14964	@ tmp270,
	ldr	r6, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [r4, ip]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r6, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r7, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
.L268:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #0	@ <variable>.s32DecOrderOutput,
	movweq	lr, #14960	@ tmp281,
	movwne	lr, #14952	@ tmp282,
	ldr	r5, [r4, lr]	@ pOutput,
	b	.L271	@
.L280:
	movw	r5, #14956	@ tmp188,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	sl, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r6, #16104	@ tmp185,
	movw	r9, #15416	@ tmp183,
	mov	r8, #0	@ tmp184,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r8, [r4, r9]	@ tmp184, <variable>.CodecInfo.RefNum
	movw	r7, #14960	@ tmp203,
	ldr	r1, [sl, #4]	@, <variable>.FspID
	movw	sl, #14952	@ tmp193,
	str	r7, [fp, #-52]	@,
	str	r9, [fp, #-48]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	movw	r9, #14964	@ tmp208,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	mov	r7, r0	@ pImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [fp, #-52]	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #180]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #184]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	add	r1, r4, #14848	@ D.37487, pCtx,
	str	r8, [r7, #184]	@ tmp184, <variable>.p_usrdat
	add	r0, r1, #32	@ D.37487, D.37487,
	str	r8, [r7, #172]	@ tmp184, <variable>.p_usrdat
	str	r8, [r7, #176]	@ tmp184, <variable>.p_usrdat
	str	r8, [r7, #180]	@ tmp184, <variable>.p_usrdat
	str	r0, [r4, r5]	@ D.37487, <variable>.CodecInfo.pRef
	str	r0, [r4, sl]	@ D.37487, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, r9]	@ D.37487, <variable>.CodecInfo.pRef
	ldr	r3, [fp, #-52]	@,
	str	r0, [r4, r3]	@ D.37487, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	ldr	ip, [fp, #-48]	@,
	movw	r2, #14884	@ tmp233,
	str	r8, [r4, ip]	@ tmp184, <variable>.CodecInfo.RefNum
	str	r0, [r4, r2]	@, <variable>.CodecInfo.ZeroFrm.FspID
	b	.L262	@
	.fnend
	.size	AVSDEC_VDMPostProc, .-AVSDEC_VDMPostProc
	.align	2
	.global	AVSDEC_GetRemainImg
	.type	AVSDEC_GetRemainImg, %function
AVSDEC_GetRemainImg:
	.fnstart
.LFB1384:
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
	addeq	r6, r4, #15616	@ tmp239, pCtx,
	beq	.L283	@,
	movw	r8, #14964	@ tmp152,
	movw	r5, #16104	@ tmp149,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	add	r6, r4, #15616	@ tmp239, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.1917,
	beq	.L284	@,
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L298	@,
.L286:
	movw	sl, #14960	@ tmp181,
	movw	r5, #16104	@ tmp178,
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.1938,
	beq	.L288	@,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L299	@,
.L288:
	movw	r7, #14956	@ tmp210,
	movw	r5, #16104	@ tmp207,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	sl, r0, #0	@ pImage,
	beq	.L292	@,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L300	@,
.L283:
	mov	r0, r6	@, tmp239
	bl	GetVoLastImageID	@
	mov	r8, r0	@ ret,
.L294:
	mov	r0, r8	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L298:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r6	@, tmp239
	str	r7, [sp, #0]	@ pImage.1917,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L287	@,
	ldr	r1, [r7, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L284	@,
	ldr	r5, [r7, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	r5, #31	@ <variable>.image_width,
	bls	.L284	@,
	ldr	lr, [r7, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L286	@,
.L284:
	mvn	r8, #0	@ ret,
	b	.L286	@
.L292:
	cmp	r8, #0	@ ret,
	beq	.L294	@,
	b	.L283	@
.L300:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	mov	r2, #1	@ tmp217,
	str	r2, [sl, #196]	@ tmp217, <variable>.last_frame
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r6	@, tmp239
	str	sl, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L293	@,
	ldr	r1, [sl, #156]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [sl, #172]	@, <variable>.p_usrdat
	mov	r7, #0	@ tmp229,
	bl	FreeUsdByDec	@
	str	r7, [sl, #172]	@ tmp229, <variable>.p_usrdat
	ldr	r1, [sl, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [sl, #176]	@ tmp229, <variable>.p_usrdat
	b	.L283	@
.L299:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r6	@, tmp239
	str	r7, [sp, #0]	@ pImage.1938,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L301	@,
	ldr	r1, [r7, #156]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp202,
	bl	FreeUsdByDec	@
	str	sl, [r7, #172]	@ tmp202, <variable>.p_usrdat
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #176]	@ tmp202, <variable>.p_usrdat
	b	.L288	@
.L287:
	ldr	r1, [r7, #156]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp173,
	bl	FreeUsdByDec	@
	str	sl, [r7, #172]	@ tmp173, <variable>.p_usrdat
	ldr	r1, [r7, #176]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #176]	@ tmp173, <variable>.p_usrdat
	b	.L286	@
.L301:
	ldr	r0, [r7, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L291	@,
	ldr	r2, [r7, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L291	@,
	ldr	r1, [r7, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L288	@,
.L291:
	mvn	r8, #0	@ ret,
	b	.L288	@
.L293:
	ldr	r0, [sl, #160]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L283	@,
	ldr	r2, [sl, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L283	@,
	ldr	r1, [sl, #128]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L294	@,
	b	.L283	@
	.fnend
	.size	AVSDEC_GetRemainImg, .-AVSDEC_GetRemainImg
	.align	2
	.global	AVS_AllocateVHB
	.type	AVS_AllocateVHB, %function
AVS_AllocateVHB:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 608
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #620
	sub	sp, sp, #620	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r1, r0, #14848	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r1, r1, #28	@,,
	sub	r0, fp, #648	@,,
	mov	r2, #564	@,
	bl	memcpy	@
	ldr	r7, [fp, #-508]	@ pCodecInf$Syntax$syn_seq$horizontal_size, pCodecInf.Syntax.syn_seq.horizontal_size
	ldr	r6, [fp, #-504]	@ pCodecInf$Syntax$syn_seq$vertical_size, pCodecInf.Syntax.syn_seq.vertical_size
	cmp	r7, #31	@ pCodecInf$Syntax$syn_seq$horizontal_size,
	bls	.L303	@,
	cmp	r6, #31	@ pCodecInf$Syntax$syn_seq$vertical_size,
	bls	.L303	@,
	ldr	r3, [r4, #0]	@ D.36429, <variable>.pstExtraData
	ldr	r2, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L306	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L329	@,
.L307:
	mov	r8, #4	@ PmvNum,
	mov	sl, #5	@ prephitmp.1982,
	mov	r9, r8	@ DecFsNum, PmvNum
.L314:
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
	strb	sl, [fp, #-77]	@ prephitmp.1982, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #16104	@ tmp190,
	uxtbne	r2, r9	@ iftmp.426, DecFsNum
	strb	r2, [fp, #-79]	@ iftmp.426, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r7, [fp, #-80]	@ tmp188, FspInstCfg.s32UserDec
	uxtbne	r8, r8	@ iftmp.427, PmvNum
	moveq	r8, #1	@ iftmp.427,
	strb	r8, [fp, #-76]	@ iftmp.427, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.36478,
	bne	.L324	@,
	ldr	ip, [r4, #0]	@ temp.2012, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [ip, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [ip, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L330	@,
	mov	r3, #1	@ tmp201,
	movw	lr, #16352	@ tmp200,
	mov	r0, r3	@ D.36426, tmp201
	str	r3, [r4, lr]	@ tmp201, <variable>.FspPartitionOK
	b	.L305	@
.L303:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36426,
.L305:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L306:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L307	@,
	ldr	ip, [r3, #472]	@ temp.1997, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ temp.1997, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	lr, [r3, #476]	@ prephitmp.2001, <variable>.stChanOption.s32MaxHeight
	bcc	.L316	@,
	ldr	lr, [r3, #476]	@ prephitmp.2001, <variable>.stChanOption.s32MaxHeight
	cmp	lr, r6	@ prephitmp.2001, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L316	@,
.L317:
	ldr	r5, [r3, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r3, #492]	@ temp.2000, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L319	@,
	add	r8, r9, #1	@ PmvNum.2003, temp.2000,
	cmp	r8, #17	@ PmvNum.2003,
	movge	r8, #17	@ PmvNum,
.L319:
	add	r9, r9, #2	@ DecFsNum, temp.2000,
	ldrb	sl, [r3, #516]	@ zero_extendqisi2	@ prephitmp.1982, <variable>.stChanOption.s32DisplayFrameNum
	b	.L314	@
.L329:
	ldr	ip, [r3, #472]	@ D.36436, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ D.36436, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	r5, [r3, #476]	@ prephitmp.1984, <variable>.stChanOption.s32MaxHeight
	bcc	.L309	@,
	ldr	r5, [r3, #476]	@ prephitmp.1984, <variable>.stChanOption.s32MaxHeight
	cmp	r5, r6	@ prephitmp.1984, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L309	@,
	movw	ip, #16352	@ tmp167,
	ldr	r0, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #1	@ <variable>.FspPartitionOK,
	bne	.L317	@,
	b	.L305	@
.L324:
	mov	r0, r7	@, tmp188
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36426, tmp188
	b	.L305	@
.L316:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36426,
	b	.L305	@
.L330:
	mov	r0, r5	@, D.36478
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36426, D.36478
	b	.L305	@
.L309:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	ip, [sp, #0]	@ D.36436,
	str	r5, [sp, #4]	@ prephitmp.1984,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36426,
	b	.L305	@
	.fnend
	.size	AVS_AllocateVHB, .-AVS_AllocateVHB
	.align	2
	.global	AVS_GetStreamInf
	.type	AVS_GetStreamInf, %function
AVS_GetStreamInf:
	.fnstart
.LFB1367:
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
	movw	r0, #14992	@ tmp184,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.SizeChanged, <variable>.CodecInfo.SizeChanged
	cmp	r3, #1	@ <variable>.CodecInfo.SizeChanged,
	beq	.L412	@,
.L332:
	movw	r5, #14952	@ tmp270,
	movw	r6, #15065	@ tmp271,
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	bl	AVS_GetImageBuffer	@
	subs	r7, r0, #0	@ D.36580,
	beq	.L413	@,
	ldr	r9, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r7, #16104	@ tmp275,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r9, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	ldrd	r8, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	mov	r3, r0	@ pImage,
	mov	r0, #29	@,
	strd	r8, [r3, #8]	@ <variable>.pts, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [sl, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r8, [r3, #24]	@ <variable>.DispTime, pImage,
	mvn	r8, #0	@ tmp290,
	ldrb	r2, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mvn	r9, #0	@,
	rsbs	ip, r2, #1	@ tmp288, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movcc	ip, #0	@ tmp288
	str	ip, [r3, #108]	@ tmp288, <variable>.is_fld_save
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [sl, #56]	@ tmp290, <variable>.pstExtraData,
	ldrd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImage,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	movw	r3, #15092	@ tmp296,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.CodecInfo.Syntax.syn_pic.picture_distance
	movw	r3, #15112	@ tmp305,
	str	r1, [r2, #8]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.pic_distance
	movw	r2, #15066	@ tmp310,
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	strb	r0, [ip, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	ldr	sl, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	strb	r1, [sl, #1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.PicCodingType
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.top_field_first, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r0, [ip, #2]	@ <variable>.CodecInfo.Syntax.syn_pic.top_field_first, <variable>.TopFldFirst
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	sl, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bne	.L410	@,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r6, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L400	@,
.L410:
	add	r5, r4, #14848	@ tmp627, pCtx,
.L342:
	add	r0, r5, #28	@, tmp627,
	movw	r8, #14972	@ tmp340,
	mov	r6, #14976	@ tmp343,
	movw	r5, #15078	@ tmp346,
	movw	r7, #15077	@ tmp350,
	bl	AVS_UpdatePmvTable	@
	movw	sl, #15067	@ tmp368,
	ldr	r9, [r4, r8]	@ <variable>.CodecInfo.PicMbWidth, <variable>.CodecInfo.PicMbWidth
	movw	ip, #15076	@ tmp354,
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.PicMbHeight, <variable>.CodecInfo.PicMbHeight
	movw	r0, #15070	@ tmp358,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag
	movw	r1, #15069	@ tmp362,
	ldrb	r5, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag
	movw	r2, #15068	@ tmp365,
	movw	r7, #15112	@ tmp376,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable
	movw	r3, #15066	@ tmp372,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_qp, <variable>.CodecInfo.Syntax.syn_pic.picture_qp
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.fixed_picture_qp, <variable>.CodecInfo.Syntax.syn_pic.fixed_picture_qp
	ldrb	r2, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.repeat_first_field, <variable>.CodecInfo.Syntax.syn_pic.repeat_first_field
	ldr	sl, [r4, r7]	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r7, #15064	@ tmp384,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.top_field_first, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	str	sl, [fp, #-48]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	mov	r7, #15104	@ tmp388,
	str	sl, [fp, #-52]	@, %sfp
	ldr	sl, [r4, r7]	@, <variable>.CodecInfo.Syntax.syn_pic.beta_offset
	movw	r7, #15100	@ tmp391,
	str	sl, [fp, #-56]	@, %sfp
	ldr	sl, [r4, r7]	@, <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset
	movw	r7, #15073	@ tmp394,
	str	sl, [fp, #-60]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag
	movw	r7, #15072	@ tmp398,
	str	sl, [fp, #-64]	@, %sfp
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable
	movw	r7, #15065	@ tmp379,
	str	sl, [fp, #-68]	@, %sfp
	movw	sl, #16152	@ tmp339,
	str	r9, [r4, sl]	@ <variable>.CodecInfo.PicMbWidth, <variable>.AvsCfg.pic_width_in_mb
	movw	sl, #16148	@ tmp342,
	str	r8, [r4, sl]	@ <variable>.CodecInfo.PicMbHeight, <variable>.AvsCfg.pic_height_in_mb
	movw	r8, #16108	@ tmp345,
	strb	r6, [r4, r8]	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.AvsCfg.no_fwd_ref_flag
	movw	r8, #16110	@ tmp353,
	strb	lr, [r4, r8]	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	movw	r6, #16109	@ tmp349,
	movw	lr, #16111	@ tmp357,
	strb	r5, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.AvsCfg.pic_ref_flag
	strb	ip, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	movw	r6, #16156	@ tmp361,
	movw	r5, #16160	@ tmp364,
	movw	ip, #16112	@ tmp367,
	movw	r8, #16113	@ tmp371,
	ldrb	r7, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	str	r0, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_qp, <variable>.AvsCfg.pic_qp
	movw	r6, #16115	@ tmp381,
	str	r1, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.fixed_picture_qp, <variable>.AvsCfg.fix_qp
	cmp	r7, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	strb	r2, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.repeat_first_field, <variable>.AvsCfg.repeat_first_field
	movw	r0, #16116	@ tmp383,
	strb	r3, [r4, r8]	@ <variable>.CodecInfo.Syntax.syn_pic.top_field_first, <variable>.AvsCfg.top_field_first
	movw	r3, #16114	@ tmp375,
	ldr	lr, [fp, #-48]	@, %sfp
	moveq	r7, #1	@ iftmp.431,
	movne	r7, #3	@ iftmp.431,
	movw	r5, #16164	@ tmp387,
	movw	r8, #16168	@ tmp390,
	strb	lr, [r4, r3]	@, <variable>.AvsCfg.pic_coding_type
	movw	r3, #16117	@ tmp393,
	strb	r7, [r4, r6]	@ iftmp.431, <variable>.AvsCfg.picture_structure
	movw	r6, #16118	@ tmp397,
	ldr	r1, [fp, #-52]	@, %sfp
	strb	r1, [r4, r0]	@, <variable>.AvsCfg.progressive_frame
	movw	r1, #14952	@ tmp402,
	ldr	r2, [fp, #-56]	@, %sfp
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r2, [r4, r5]	@, <variable>.AvsCfg.beta_offset
	ldr	ip, [fp, #-60]	@, %sfp
	str	ip, [r4, r8]	@, <variable>.AvsCfg.alpha_c_offset
	ldr	r7, [fp, #-64]	@, %sfp
	strb	r7, [r4, r3]	@, <variable>.AvsCfg.loop_flt_para_flag
	ldr	lr, [fp, #-68]	@, %sfp
	strb	lr, [r4, r6]	@, <variable>.AvsCfg.loop_flt_disable
	ldrb	r5, [r0, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r5, #2	@ <variable>.PicCodingType,
	beq	.L414	@,
	movw	r7, #14956	@ tmp458,
	movw	r6, #16104	@ tmp455,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r5, #14960	@ tmp487,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	ip, #16120	@ tmp465,
	ldr	r7, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	r1, [r8, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r1, #1	@ <variable>.PicStruct,
	moveq	r1, #3	@ iftmp.439,
	movne	r1, #1	@ iftmp.439,
	mov	r2, r0	@ pImage.2157,
	movw	r0, #16119	@ tmp463,
	strb	r1, [r4, r0]	@ iftmp.439, <variable>.AvsCfg.bwd_picture_structure
	movw	r1, #16172	@ tmp470,
	ldrb	lr, [r8, #2]	@ zero_extendqisi2	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r6, #16121	@ tmp475,
	strb	lr, [r4, ip]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	ldr	r3, [r2, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r3, [r4, r1]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	movw	r3, #16122	@ tmp477,
	ldrb	lr, [r8, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	movw	r1, #16176	@ tmp482,
	cmp	lr, #1	@ <variable>.PicStruct,
	moveq	lr, #3	@ iftmp.440,
	movne	lr, #1	@ iftmp.440,
	strb	lr, [r4, r6]	@ iftmp.440, <variable>.AvsCfg.fwd_picture_structure_0
	ldrb	ip, [r8, #2]	@ zero_extendqisi2	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	strb	ip, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r6, [r2, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r6, [r4, r1]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
.L411:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	movw	r6, #16123	@ tmp492,
	movw	r8, #16180	@ tmp499,
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.442,
	movne	ip, #1	@ iftmp.442,
	strb	ip, [r4, r6]	@ iftmp.442, <variable>.AvsCfg.fwd_picture_structure_1
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	movw	r3, #16124	@ tmp494,
	strb	r7, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_1
	movw	r7, #14952	@ tmp525,
	ldr	r5, [r0, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r5, [r4, r8]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_1
	movw	r8, #14956	@ tmp504,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r5, #16104	@ tmp501,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	movw	r1, #14960	@ tmp511,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r2, #16132	@ tmp506,
	ldr	r6, [r0, #108]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type0
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #14964	@ tmp518,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16136	@ tmp513,
	ldr	r6, [r0, #108]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, r1]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type1
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r6, [r4, r7]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #16140	@ tmp520,
	ldr	r1, [r0, #108]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r1, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type2
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r6, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	lr, #16184	@ tmp531,
	ldr	r3, [r0, #108]	@ <variable>.is_fld_save, <variable>.is_fld_save
	mov	r2, r0	@ pImage.2194,
	movw	r0, #16144	@ tmp527,
	str	r3, [r4, r0]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type3
	movw	r3, #16188	@ tmp529,
	ldr	ip, [r2, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	ip, [r4, r3]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.ystaddr_1d
	movw	r3, #16125	@ tmp536,
	ldr	r7, [r2, #100]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r7, [r4, lr]	@ <variable>.luma_2d_phy_addr, <variable>.AvsCfg.rcn_address
	movw	r7, #16126	@ tmp538,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.447,
	movne	ip, #1	@ iftmp.447,
	strb	ip, [r4, r3]	@ iftmp.447, <variable>.AvsCfg.col_pic_struct
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	movw	r6, #16216	@ tmp549,
	subs	lr, r2, #0	@ tmp542, <variable>.PicCodingType,
	movne	lr, #1	@ tmp542
	strb	lr, [r4, r7]	@ tmp542, <variable>.AvsCfg.col_pic_type
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r0, [r4, r6]	@, <variable>.AvsCfg.current_pmv_addr
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r5, #16220	@ tmp555,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	movw	r3, #15112	@ tmp556,
	ldr	r8, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	sub	r3, r8, #1	@ D.37716, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	cmp	r3, #1	@ D.37716,
	str	r0, [r4, r5]	@, <variable>.AvsCfg.colpic_mv_addr
	bls	.L362	@,
	mov	r8, #0	@ BBlkNum,
	mov	r5, #32	@ MvENum,
	mov	r7, r8	@ SymNum, BBlkNum
	mov	r6, r8	@ DirNum, BBlkNum
.L364:
	add	ip, r4, #15168	@ tmp558, pCtx,
	mov	r0, #1	@ iCnt,
	cmp	r0, r5	@ iCnt, MvENum
	sub	sl, r5, #1	@ tmp622, MvENum,
	mov	r2, ip	@ ivtmp.2084, tmp558
	and	sl, sl, r0	@ tmp624, tmp622,
	ldr	r1, [r2, #36]!	@ tmp580, <variable>.CodecInfo.MvEScale
	add	r3, ip, #40	@ ivtmp.2084, tmp558,
	bic	r1, r1, #-16777216	@ tmp581, tmp580,
	bic	r1, r1, #16515072	@ tmp581, tmp581,
	str	r1, [r2, #1020]	@ tmp581, <variable>.AvsCfg.pmvtable
	bge	.L365	@,
	cmp	sl, #0	@ tmp624,
	beq	.L363	@,
	ldr	r2, [r3, #0]	@ tmp699, <variable>.CodecInfo.MvEScale
	mov	r0, #2	@ iCnt,
	cmp	r0, r5	@ iCnt, MvENum
	bic	r1, r2, #-16777216	@ tmp700, tmp699,
	bic	r2, r1, #16515072	@ tmp700, tmp700,
	str	r2, [r3, #1020]	@ tmp700, <variable>.AvsCfg.pmvtable
	add	r3, ip, #44	@ ivtmp.2084, tmp558,
	bge	.L365	@,
.L363:
	ldr	r2, [r3, #4]	@ tmp636, <variable>.CodecInfo.MvEScale
	add	r0, r0, #2	@ iCnt, iCnt,
	ldr	r1, [r3, #0]	@ tmp631, <variable>.CodecInfo.MvEScale
	add	ip, r3, #4	@ tmp626, ivtmp.2084,
	cmp	r0, r5	@ iCnt, MvENum
	bic	r2, r2, #-16777216	@ tmp637, tmp636,
	bic	r1, r1, #-16777216	@ tmp632, tmp631,
	bic	r2, r2, #16515072	@ tmp637, tmp637,
	bic	r1, r1, #16515072	@ tmp632, tmp632,
	str	r1, [r3, #1020]	@ tmp632, <variable>.AvsCfg.pmvtable
	str	r2, [ip, #1020]	@ tmp637, <variable>.AvsCfg.pmvtable
	add	r3, ip, #4	@ ivtmp.2084, tmp626,
	blt	.L363	@,
.L365:
	cmp	r6, #0	@ DirNum,
	ble	.L366	@,
	add	ip, r4, #15296	@ tmp582, pCtx,
	mov	r2, #1	@ iCnt.2124,
	cmp	r2, r6	@ iCnt.2124, DirNum
	sub	r3, r6, #1	@ tmp617, DirNum,
	mov	r1, ip	@ ivtmp.2078, tmp582
	and	r5, r3, r2	@ tmp619, tmp617,
	ldr	r0, [r1, #36]!	@ tmp583, <variable>.CodecInfo.DirectScale
	add	r3, ip, #40	@ ivtmp.2078, tmp582,
	mov	r0, r0, asl #17	@ tmp584, tmp583,
	mov	r0, r0, lsr #17	@ tmp584, tmp584,
	str	r0, [r1, #956]	@ tmp584, <variable>.AvsCfg.pmvtable
	beq	.L366	@,
	cmp	r5, #0	@ tmp619,
	beq	.L367	@,
	ldr	r1, [r3, #0]	@ tmp695, <variable>.CodecInfo.DirectScale
	mov	r2, #2	@ iCnt.2124,
	cmp	r2, r6	@ iCnt.2124, DirNum
	mov	r0, r1, asl #17	@ tmp697, tmp695,
	mov	r1, r0, lsr #17	@ tmp697, tmp697,
	str	r1, [r3, #956]	@ tmp697, <variable>.AvsCfg.pmvtable
	add	r3, ip, #44	@ ivtmp.2078, tmp582,
	beq	.L366	@,
.L367:
	ldr	r1, [r3, #4]	@ tmp645, <variable>.CodecInfo.DirectScale
	add	r2, r2, #2	@ iCnt.2124, iCnt.2124,
	ldr	r0, [r3, #0]	@ tmp640, <variable>.CodecInfo.DirectScale
	add	ip, r3, #4	@ tmp621, ivtmp.2078,
	cmp	r2, r6	@ iCnt.2124, DirNum
	mov	r1, r1, asl #17	@ tmp647, tmp645,
	mov	r0, r0, asl #17	@ tmp642, tmp640,
	mov	r1, r1, lsr #17	@ tmp647, tmp647,
	mov	r0, r0, lsr #17	@ tmp642, tmp642,
	str	r0, [r3, #956]	@ tmp642, <variable>.AvsCfg.pmvtable
	str	r1, [ip, #956]	@ tmp647, <variable>.AvsCfg.pmvtable
	add	r3, ip, #4	@ ivtmp.2078, tmp621,
	bne	.L367	@,
.L366:
	cmp	r8, #0	@ BBlkNum,
	ble	.L368	@,
	add	ip, r4, #15360	@ tmp586, pCtx,
	mov	r8, r8, asl #2	@ D.39364, BBlkNum,
	add	r2, ip, #20	@ ivtmp.2069, tmp586,
	add	r5, r4, #16320	@ tmp588, pCtx,
	mov	r3, #4	@ ivtmp.2074,
	cmp	r3, r8	@ ivtmp.2074, D.39364
	ldr	r0, [r2, #4]	@ tmp590, <variable>.CodecInfo.BBlkDist
	sub	r6, r8, #4	@ tmp613, D.39364,
	ldr	r1, [r2, #0]	@ tmp594, <variable>.CodecInfo.BBlkDist
	ubfx	r6, r6, #2, #1	@ tmp614, tmp613,,
	add	r2, ip, #28	@ ivtmp.2069, tmp586,
	mov	r0, r0, asl #23	@ tmp589, tmp590,
	mov	r1, r1, asl #23	@ tmp593, tmp594,
	mov	r0, r0, lsr #23	@ tmp589, tmp589,
	mov	r1, r1, lsr #23	@ tmp593, tmp593,
	orr	r1, r1, r0, asl #9	@, tmp596, tmp593, tmp589,
	str	r1, [r5, #0]	@ tmp596, <variable>.AvsCfg.pmvtable
	beq	.L368	@,
	cmp	r6, #0	@ tmp614,
	beq	.L369	@,
	ldr	r5, [r2, #4]	@ tmp687, <variable>.CodecInfo.BBlkDist
	add	r3, r4, #16320	@ tmp686, pCtx,
	ldr	r0, [r2, #0]	@ tmp691, <variable>.CodecInfo.BBlkDist
	add	r2, ip, #36	@ ivtmp.2069, tmp586,
	add	r1, r3, #4	@ tmp686, tmp686,
	mov	r3, #8	@ ivtmp.2074,
	mov	r5, r5, asl #23	@ tmp689, tmp687,
	cmp	r3, r8	@ ivtmp.2074, D.39364
	mov	ip, r0, asl #23	@ tmp693, tmp691,
	mov	r5, r5, lsr #23	@ tmp689, tmp689,
	mov	r0, ip, lsr #23	@ tmp693, tmp693,
	orr	ip, r0, r5, asl #9	@, tmp694, tmp693, tmp689,
	str	ip, [r1, #0]	@ tmp694, <variable>.AvsCfg.pmvtable
	beq	.L368	@,
.L369:
	mov	r1, r2	@ tmp615, ivtmp.2069
	ldr	ip, [r2, #4]	@ tmp652, <variable>.CodecInfo.BBlkDist
	ldr	r6, [r1], #8	@ tmp656, <variable>.CodecInfo.BBlkDist
	add	r0, r3, #4	@ tmp616, ivtmp.2074,
	ldr	sl, [r2, #8]	@ tmp668, <variable>.CodecInfo.BBlkDist
	add	r5, r4, r3	@ tmp650, pCtx, ivtmp.2074
	mov	r2, ip, asl #23	@ tmp654, tmp652,
	add	r3, r0, #4	@ ivtmp.2074, tmp616,
	ldr	ip, [r1, #4]	@ tmp664, <variable>.CodecInfo.BBlkDist
	mov	r6, r6, asl #23	@ tmp658, tmp656,
	mov	sl, sl, asl #23	@ tmp670, tmp668,
	add	r0, r4, r0	@ tmp662, pCtx, tmp616
	mov	r2, r2, lsr #23	@ tmp654, tmp654,
	add	r5, r5, #16320	@ tmp651, tmp650,
	mov	ip, ip, asl #23	@ tmp666, tmp664,
	add	r0, r0, #16320	@ tmp663, tmp662,
	cmp	r3, r8	@ ivtmp.2074, D.39364
	mov	r6, r6, lsr #23	@ tmp658, tmp658,
	mov	ip, ip, lsr #23	@ tmp666, tmp666,
	mov	sl, sl, lsr #23	@ tmp670, tmp670,
	orr	r6, r6, r2, asl #9	@, tmp659, tmp658, tmp654,
	add	r2, r1, #8	@ ivtmp.2069, tmp615,
	str	r6, [r5, #0]	@ tmp659, <variable>.AvsCfg.pmvtable
	orr	ip, sl, ip, asl #9	@, tmp671, tmp670, tmp666,
	str	ip, [r0, #0]	@ tmp671, <variable>.AvsCfg.pmvtable
	bne	.L369	@,
.L368:
	cmp	r7, #0	@ SymNum,
	ble	.L370	@,
	add	r4, r4, #15360	@ ivtmp.2063, pCtx,
	mov	r2, #1	@ iCnt.2206,
	cmp	r2, r7	@ iCnt.2206, SymNum
	sub	r3, r7, #1	@ tmp606, SymNum,
	ldr	r1, [r4, #4]!	@ tmp599, <variable>.CodecInfo.SymScale
	and	r0, r3, r2	@ tmp608, tmp606,
	bic	ip, r1, #-16777216	@ tmp600, tmp599,
	add	r3, r4, #4	@ ivtmp.2063, ivtmp.2063,
	bic	r1, ip, #16515072	@ tmp600, tmp600,
	str	r1, [r4, #972]	@ tmp600, <variable>.AvsCfg.pmvtable
	beq	.L370	@,
	cmp	r0, #0	@ tmp608,
	beq	.L371	@,
	ldr	r1, [r3, #0]	@ tmp683, <variable>.CodecInfo.SymScale
	mov	r2, #2	@ iCnt.2206,
	cmp	r2, r7	@ iCnt.2206, SymNum
	bic	r0, r1, #-16777216	@ tmp684, tmp683,
	bic	ip, r0, #16515072	@ tmp684, tmp684,
	str	ip, [r3, #972]	@ tmp684, <variable>.AvsCfg.pmvtable
	add	r3, r3, #4	@ ivtmp.2063, ivtmp.2063,
	beq	.L370	@,
.L371:
	ldr	r1, [r3, #4]	@ tmp680, <variable>.CodecInfo.SymScale
	add	r2, r2, #2	@ iCnt.2206, iCnt.2206,
	ldr	r0, [r3, #0]	@ tmp675, <variable>.CodecInfo.SymScale
	add	ip, r3, #4	@ tmp610, ivtmp.2063,
	cmp	r2, r7	@ iCnt.2206, SymNum
	bic	r1, r1, #-16777216	@ tmp681, tmp680,
	bic	r0, r0, #-16777216	@ tmp676, tmp675,
	bic	r1, r1, #16515072	@ tmp681, tmp681,
	bic	r0, r0, #16515072	@ tmp676, tmp676,
	str	r0, [r3, #972]	@ tmp676, <variable>.AvsCfg.pmvtable
	str	r1, [ip, #972]	@ tmp681, <variable>.AvsCfg.pmvtable
	add	r3, ip, #4	@ ivtmp.2063, tmp610,
	bne	.L371	@,
.L370:
	mov	r0, #1	@ D.36544,
	b	.L337	@
.L413:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36544, D.36580
.L337:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L412:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	r3, #15016	@ tmp187,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	movw	ip, #15007	@ tmp191,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r3, #14972	@ tmp190,
	add	r2, r1, #15	@ tmp188, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	movw	ip, #15020	@ tmp193,
	cmp	r0, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	mov	r1, #14976	@ tmp201,
	mov	r2, r2, lsr #4	@ D.36525, tmp188,
	str	r2, [r4, r3]	@ D.36525, <variable>.CodecInfo.PicMbWidth
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	addne	r3, r3, #31	@ tmp198, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	addeq	r3, r3, #15	@ tmp194, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	movne	r3, r3, lsr #5	@ tmp200, tmp198,
	moveq	r3, r3, lsr #4	@ prephitmp.2046, tmp194,
	movne	r3, r3, asl #1	@ prephitmp.2046, tmp200,
	cmp	r2, #352	@ D.36525,
	str	r3, [r4, r1]	@ prephitmp.2046, <variable>.CodecInfo.PicMbHeight
	bgt	.L335	@,
	cmp	r3, #264	@ prephitmp.2046,
	ble	.L336	@,
.L335:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36544,
	b	.L337	@
.L336:
	movw	r8, #14956	@ tmp206,
	movw	r5, #16104	@ tmp203,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r7, #14960	@ tmp221,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #14964	@ tmp226,
	movw	r9, #14952	@ tmp211,
	add	r6, r4, #14848	@ D.36559, pCtx,
	ldr	r1, [r2, #4]	@, <variable>.FspID
	add	r6, r6, #32	@ D.36559, D.36559,
	str	sl, [fp, #-76]	@,
	mov	sl, #0	@ tmp240,
	str	r7, [fp, #-72]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r4, #15616	@, pCtx,
	mov	r2, #1	@,
	mov	r7, r0	@ pImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	lr, [fp, #-48]	@, %sfp
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [fp, #-72]	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-76]	@,
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #172]	@, <variable>.p_usrdat
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
	str	sl, [r7, #184]	@ tmp240, <variable>.p_usrdat
	str	sl, [r7, #172]	@ tmp240, <variable>.p_usrdat
	str	sl, [r7, #176]	@ tmp240, <variable>.p_usrdat
	str	sl, [r7, #180]	@ tmp240, <variable>.p_usrdat
	str	r6, [r4, r9]	@ D.36559, <variable>.CodecInfo.pCurFrm
	ldr	r1, [fp, #-76]	@,
	str	r6, [r4, r1]	@ D.36559, <variable>.CodecInfo.pRef
	ldr	r0, [fp, #-72]	@,
	str	r6, [r4, r0]	@ D.36559, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, r8]	@ D.36559, <variable>.CodecInfo.pRef
	bl	FSP_GetNullLogicFs	@
	movw	ip, #15416	@ tmp252,
	movw	r2, #14884	@ tmp251,
	ldr	r1, [fp, #-48]	@, %sfp
	str	sl, [r4, ip]	@ tmp240, <variable>.CodecInfo.RefNum
	str	r0, [r4, r2]	@, <variable>.CodecInfo.ZeroFrm.FspID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ D.36564, <variable>.pstExtraData
	ldr	r5, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r5, sl	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L338	@,
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L415	@,
.L338:
	movw	ip, #16104	@ tmp260,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L409	@,
.L339:
	movw	r2, #14952	@ tmp262,
	movw	r3, #14960	@ tmp264,
	movw	r5, #14956	@ tmp265,
	movw	lr, #14964	@ tmp263,
	str	r6, [r4, r5]	@ D.36559, <variable>.CodecInfo.pRef
	mov	r0, r4	@, pCtx
	str	r6, [r4, r2]	@ D.36559, <variable>.CodecInfo.pCurFrm
	str	r6, [r4, lr]	@ D.36559, <variable>.CodecInfo.pRef
	str	r6, [r4, r3]	@ D.36559, <variable>.CodecInfo.pRef
	bl	AVS_AllocateVHB	@
	subs	r5, r0, #0	@ D.36575,
	movwne	r3, #14992	@ tmp267,
	movne	r2, #0	@ tmp268,
	strne	r2, [r4, r3]	@ tmp268, <variable>.CodecInfo.SizeChanged
	bne	.L332	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36544, D.36575
	b	.L337	@
.L400:
	ldr	lr, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r4, #14848	@ tmp627, pCtx,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	r1, #14964	@ tmp322,
	ldr	r3, [r4, r1]	@ temp.2121, <variable>.CodecInfo.pRef
	add	r0, r5, #32	@ tmp323, tmp627,
	cmp	r3, r0	@ temp.2121, tmp323
	beq	.L343	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r6	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L343:
	movw	r7, #14960	@ tmp329,
	movw	sl, #14956	@ tmp332,
	movw	r2, #14952	@ tmp335,
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r6, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r8, #14964	@ tmp328,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r3, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r6, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	b	.L342	@
.L414:
	movw	r8, #14956	@ tmp407,
	movw	r5, #16104	@ tmp404,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r7, #14960	@ tmp424,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r6, #14964	@ tmp441,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r8, #16119	@ tmp412,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.433,
	movne	ip, #1	@ iftmp.433,
	strb	ip, [r4, r8]	@ iftmp.433, <variable>.AvsCfg.bwd_picture_structure
	movw	r8, #16172	@ tmp419,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	movw	r3, #16120	@ tmp414,
	strb	r1, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	ldr	ip, [r0, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	ip, [r4, r8]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16121	@ tmp429,
	movw	r7, #16122	@ tmp431,
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	r3, [r8, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	moveq	r3, #3	@ iftmp.435,
	movne	r3, #1	@ iftmp.435,
	strb	r3, [r4, r1]	@ iftmp.435, <variable>.AvsCfg.fwd_picture_structure_0
	movw	r3, #16176	@ tmp436,
	ldrb	ip, [r8, #2]	@ zero_extendqisi2	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	strb	ip, [r4, r7]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r1, [r0, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r1, [r4, r3]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	b	.L411	@
.L362:
	movw	r5, #:lower16:.LANCHOR0	@ tmp559,
	movt	r5, #:upper16:.LANCHOR0	@ tmp559,
	add	r0, r5, r3, asl #2	@, tmp562, tmp559, D.37716,
	ldr	r5, [r0, #16]	@ MvENum, CSWTCH.489
	ldr	r8, [r0, #40]	@ BBlkNum, CSWTCH.492
	cmp	r5, #0	@ MvENum,
	ldr	r6, [r0, #24]	@ DirNum, CSWTCH.490
	ldr	r7, [r0, #32]	@ SymNum, CSWTCH.491
	bgt	.L364	@,
	b	.L365	@
.L415:
	movw	r1, #16352	@ tmp258,
	ldr	r0, [r4, r1]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, sl	@ <variable>.FspPartitionOK,
	bne	.L339	@,
.L409:
	ldr	r0, [fp, #-48]	@, %sfp
	bl	ResetVoQueue	@
	b	.L339	@
	.fnend
	.size	AVS_GetStreamInf, .-AVS_GetStreamInf
	.align	2
	.global	AVS_PrepareDecode
	.type	AVS_PrepareDecode, %function
AVS_PrepareDecode:
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
.LFB1354:
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
	add	r3, r0, #7	@ tmp142, D.35863,
	cmp	r0, #0	@ D.35863,
	movlt	r0, r3	@ D.35863, tmp142
	mov	r3, r0, asr #3	@ tmp143, D.35863,
	sub	r6, r3, #3	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L419	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp149, tmp143,
	bl	BsShow	@
	cmp	r0, #1	@ D.35865,
	mov	r3, r0	@ D.35865,
	beq	.L433	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L419	@,
	cmp	r7, #0	@ tmp149,
	beq	.L422	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.35865,
	mov	r3, r0	@ D.35865,
	beq	.L433	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L422	@,
	b	.L419	@
.L420:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.35865,
	cmp	r3, #1	@ D.35865,
	mov	r0, r4	@, pBs
	beq	.L433	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L419	@,
.L422:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.35865,
	cmp	r3, #1	@ D.35865,
	mov	r0, r4	@, pBs
	bne	.L420	@,
.L433:
	mov	r0, r3	@ D.35868, D.35865
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L419:
	mov	r0, #0	@ D.35868,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AVS_next_start_code, .-AVS_next_start_code
	.align	2
	.global	avs_f_v
	.type	avs_f_v, %function
avs_f_v:
	.fnstart
.LFB1350:
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
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.35720,
	mov	r0, #7	@,
	mov	r3, r4	@, D.35720
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.35720
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	avs_f_v, .-avs_f_v
	.align	2
	.global	AVS_user_data
	.type	AVS_user_data, %function
AVS_user_data:
	.fnstart
.LFB1358:
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
	movw	r1, #15140	@ tmp157,
	mov	r4, r0	@ pCtx, pCtx
	movw	r2, #:lower16:.LC20	@,
	ldr	r0, [r0, r1]	@, <variable>.CodecInfo.pBs
	movt	r2, #:upper16:.LC20	@,
	mov	r1, #32	@,
	bl	avs_f_v	@
	movw	r3, #14980	@ tmp160,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	cmp	r5, #0	@ ExtFrm,
	orr	r2, r0, #1048576	@ tmp163, <variable>.CodecInfo.Integrity,
	str	r2, [r4, r3]	@ tmp163, <variable>.CodecInfo.Integrity
	bne	.L437	@,
	movw	r6, #15432	@ tmp164,
	ldr	r1, [r4, r6]	@ D.36124, <variable>.CodecInfo.pSeqUD
	cmp	r1, #0	@ D.36124,
	beq	.L438	@,
	movw	ip, #16104	@ tmp165,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, r6]	@ ExtFrm, <variable>.CodecInfo.pSeqUD
.L438:
	movw	lr, #16104	@ tmp169,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15432	@ tmp171,
	cmp	r0, #0	@ D.36128,
	str	r0, [r4, r3]	@ D.36128, <variable>.CodecInfo.pSeqUD
	beq	.L439	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp172,
	mov	r1, #9	@ tmp177,
	ldrd	r6, [lr, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movw	lr, #14988	@ tmp180,
	strd	r6, [r0, ip]	@ <variable>.pts, D.36128, tmp172
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	r1, [r2, #1036]	@ tmp177, <variable>.from
	movw	r1, #15988	@ tmp184,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	ip, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #15976	@ tmp190,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r0, r2, #4	@ tmp186, <variable>.LenInByte,
	str	r0, [lr, #1048]	@ tmp186, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2322, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r0, #1048]	@ prephitmp.2324, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2324,
	movgt	r2, #1024	@ tmp188,
	strgt	r2, [r0, #1048]	@ tmp188, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2322, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2324, <variable>.data_size
	add	r1, r1, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #15981	@ tmp197,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	bne	.L441	@,
	movw	ip, #15432	@ tmp199,
	movw	r1, #16052	@ tmp200,
	ldr	r3, [r4, ip]	@ temp.2345, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #15988	@ tmp207,
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	lr, r0, r2	@ tmp203, <variable>.data_size, <variable>.LenInByte
	str	lr, [r3, #1048]	@ tmp203, <variable>.data_size
	ldr	r3, [r4, ip]	@ prephitmp.2326, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r3, #1048]	@ prephitmp.2328, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2328,
	movgt	r2, #1024	@ tmp205,
	strgt	r2, [r3, #1048]	@ tmp205, <variable>.data_size
	ldrgt	r3, [r4, ip]	@ prephitmp.2326, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, r1]	@ temp.2346, <variable>.LenInByte
	ldrgt	r2, [r3, #1048]	@ prephitmp.2328, <variable>.data_size
	rsb	r0, r1, #4	@ tmp208, temp.2346,
	add	r2, r0, r2	@ D.36152, tmp208, prephitmp.2328
	cmp	r2, #0	@ D.36152,
	ble	.L441	@,
	sub	lr, r1, #4	@ tmp209, temp.2346,
	movw	ip, #16040	@ tmp211,
	add	r0, r3, lr	@, prephitmp.2326, tmp209
	ldr	r1, [r4, ip]	@, <variable>.VirAddr
	bl	memcpy	@
.L441:
	movw	r3, #:lower16:g_event_report	@ tmp217,
	movt	r3, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [r3, #0]	@ g_event_report.419, g_event_report
	cmp	r3, #0	@ g_event_report.419,
	subne	r2, fp, #28	@ tmp222,,
	movwne	r1, #15432	@ tmp218,
	bne	.L450	@,
.L443:
	mov	r0, #1	@ D.36131,
	b	.L444	@
.L437:
	movw	r5, #15436	@ tmp223,
	ldr	r1, [r4, r5]	@ D.36165, <variable>.CodecInfo.pPicUD
	cmp	r1, #0	@ D.36165,
	beq	.L445	@,
	movw	ip, #16104	@ tmp224,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp227,
	str	r2, [r4, r5]	@ tmp227, <variable>.CodecInfo.pPicUD
.L445:
	movw	r1, #16104	@ tmp228,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15436	@ tmp230,
	cmp	r0, #0	@ D.36168,
	str	r0, [r4, r3]	@ D.36168, <variable>.CodecInfo.pPicUD
	beq	.L439	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp231,
	movw	r2, #14988	@ tmp239,
	ldrd	r6, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r6, [r0, ip]	@ <variable>.pts, D.36168, tmp231
	mov	r0, #10	@ tmp236,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	r0, [lr, #1036]	@ tmp236, <variable>.from
	movw	lr, #15988	@ tmp243,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	ip, [r1, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #15976	@ tmp249,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	ldr	r0, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r1, r0, #4	@ tmp245, <variable>.LenInByte,
	str	r1, [r2, #1048]	@ tmp245, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2314, <variable>.CodecInfo.pPicUD
	ldr	r2, [r0, #1048]	@ prephitmp.2316, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2316,
	movgt	r2, #1024	@ tmp247,
	strgt	r2, [r0, #1048]	@ tmp247, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2314, <variable>.CodecInfo.pPicUD
	ldr	lr, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2316, <variable>.data_size
	add	r1, lr, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #15981	@ tmp256,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #0	@ <variable>.IsLastSeg,
	bne	.L447	@,
	movw	ip, #15436	@ tmp258,
	movw	lr, #16052	@ tmp259,
	ldr	r3, [r4, ip]	@ temp.2363, <variable>.CodecInfo.pPicUD
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	lr, #15988	@ tmp266,
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	r1, r0, r2	@ tmp262, <variable>.data_size, <variable>.LenInByte
	str	r1, [r3, #1048]	@ tmp262, <variable>.data_size
	ldr	r3, [r4, ip]	@ prephitmp.2318, <variable>.CodecInfo.pPicUD
	ldr	r2, [r3, #1048]	@ prephitmp.2320, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2320,
	movgt	r2, #1024	@ tmp264,
	strgt	r2, [r3, #1048]	@ tmp264, <variable>.data_size
	ldrgt	r3, [r4, ip]	@ prephitmp.2318, <variable>.CodecInfo.pPicUD
	ldr	r1, [r4, lr]	@ temp.2365, <variable>.LenInByte
	ldrgt	r2, [r3, #1048]	@ prephitmp.2320, <variable>.data_size
	rsb	r0, r1, #4	@ tmp267, temp.2365,
	add	r2, r0, r2	@ D.36181, tmp267, prephitmp.2320
	cmp	r2, #0	@ D.36181,
	ble	.L447	@,
	sub	r1, r1, #4	@ tmp268, temp.2365,
	movw	ip, #16040	@ tmp270,
	add	r0, r3, r1	@, prephitmp.2318, tmp268
	ldr	r1, [r4, ip]	@, <variable>.VirAddr
	bl	memcpy	@
.L447:
	movw	r3, #:lower16:g_event_report	@ tmp276,
	movt	r3, #:upper16:g_event_report	@ tmp276,
	ldr	r3, [r3, #0]	@ g_event_report.2371, g_event_report
	cmp	r3, #0	@ g_event_report.2371,
	beq	.L443	@,
	sub	r2, fp, #28	@ tmp281,,
	movw	r1, #15436	@ tmp277,
.L450:
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.pPicUD,
	movw	ip, #16104	@ tmp279,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #6	@,
	str	lr, [r2, #-4]!	@ <variable>.CodecInfo.pPicUD,
	blx	r3	@ g_event_report.2371
	mov	r0, #1	@ D.36131,
.L444:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L439:
	mov	r0, #0	@ D.36131,
	b	.L444	@
	.fnend
	.size	AVS_user_data, .-AVS_user_data
	.align	2
	.global	avs_u_v
	.type	avs_u_v, %function
avs_u_v:
	.fnstart
.LFB1349:
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
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.35711,
	mov	r0, #7	@,
	mov	r3, r4	@, D.35711
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.35711
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	avs_u_v, .-avs_u_v
	.align	2
	.global	AVS_picture_display_extension
	.type	AVS_picture_display_extension, %function
AVS_picture_display_extension:
	.fnstart
.LFB1364:
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
	ldr	r4, [r0, #264]	@ pBs, <variable>.pBs
	mov	r7, r1	@ pSyntax, pSyntax
	mov	r8, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC21	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC21	@,
	bl	avs_u_v	@
	ldrb	r3, [r7, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	r3, #1	@ <variable>.syn_seq.progressive_sequence,
	beq	.L464	@,
	ldrb	r0, [r7, #69]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	r0, #0	@ <variable>.syn_pic.picture_structure,
	moveq	r0, #1	@ tmp152,
	streq	r0, [r7, #0]	@ tmp152, <variable>.NumOfFrameCentreOffsets
	beq	.L457	@,
	ldrb	r1, [r7, #71]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r1, #1	@ <variable>.syn_pic.repeat_first_field,
	beq	.L463	@,
.L460:
	mov	r6, #2	@ tmp155,
	str	r6, [r7, #0]	@ tmp155, <variable>.NumOfFrameCentreOffsets
.L457:
	mov	r5, r7	@ ivtmp.2426, pSyntax
	mov	r6, #0	@ i,
.L458:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC22	@,
	movt	r2, #:upper16:.LC22	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	add	r6, r6, r1	@ i, i,
	str	r0, [r5, #120]	@, <variable>.syn_pdext.frame_centre_horizontal_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC24	@,
	movt	r2, #:upper16:.LC24	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	str	r0, [r5, #132]	@, <variable>.syn_pdext.frame_centre_vertical_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	ip, [r7, #0]	@ <variable>.NumOfFrameCentreOffsets, <variable>.NumOfFrameCentreOffsets
	add	r5, r5, #4	@ ivtmp.2426, ivtmp.2426,
	cmp	ip, r6	@ <variable>.NumOfFrameCentreOffsets, i
	bgt	.L458	@,
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r8, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r2, r3, #524288	@ tmp158, <variable>.Integrity,
	str	r2, [r8, #104]	@ tmp158, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L464:
	ldrb	r2, [r7, #71]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r2, #1	@ <variable>.syn_pic.repeat_first_field,
	strne	r3, [r7, #0]	@ <variable>.syn_seq.progressive_sequence, <variable>.NumOfFrameCentreOffsets
	bne	.L457	@,
	ldrb	r3, [r7, #70]	@ zero_extendqisi2	@ <variable>.syn_pic.top_field_first, <variable>.syn_pic.top_field_first
	cmp	r3, #1	@ <variable>.syn_pic.top_field_first,
	bne	.L460	@,
.L463:
	mov	r5, #3	@ tmp154,
	str	r5, [r7, #0]	@ tmp154, <variable>.NumOfFrameCentreOffsets
	b	.L457	@
	.fnend
	.size	AVS_picture_display_extension, .-AVS_picture_display_extension
	.align	2
	.global	AVS_camera_parameters_extension
	.type	AVS_camera_parameters_extension, %function
AVS_camera_parameters_extension:
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
	ldr	r4, [r0, #264]	@ pBs, <variable>.pBs
	movw	r6, #:lower16:.LC25	@ D.36293,
	movt	r6, #:upper16:.LC25	@ D.36293,
	mov	r7, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC21	@,
	movt	r2, #:upper16:.LC21	@,
	movw	r5, #:lower16:.LC23	@ D.36295,
	bl	avs_u_v	@
	movt	r5, #:upper16:.LC23	@ D.36295,
	mov	r2, r6	@, D.36293
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC27	@,
	movt	r2, #:upper16:.LC27	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r2, #:upper16:.LC29	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r2, #:upper16:.LC30	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r2, #:upper16:.LC33	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r2, #:upper16:.LC39	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r2, #:upper16:.LC40	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC41	@,
	movt	r2, #:upper16:.LC41	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36295
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r2, r6	@, D.36293
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
.LFB1362:
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
	ldr	r4, [r0, #264]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC21	@,
	movt	r2, #:upper16:.LC21	@,
	mov	r0, r4	@, pBs
	movw	r5, #:lower16:.LC23	@ D.36280,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	movt	r5, #:upper16:.LC23	@ D.36280,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r2, #:upper16:.LC45	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36280
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r2, #:upper16:.LC46	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36280
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.36280
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
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
	ldr	r4, [r0, #264]	@ pBs, <variable>.pBs
	mov	r5, r1	@ pSyntax, pSyntax
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC21	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC21	@,
	bl	avs_u_v	@
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC50	@,
	movt	r2, #:upper16:.LC50	@,
	strb	r0, [r5, #42]	@, <variable>.syn_sdext.video_format
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC51	@,
	strb	r0, [r5, #43]	@, <variable>.syn_sdext.sample_range
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.36247,
	strb	r0, [r5, #44]	@ D.36247, <variable>.syn_sdext.colour_description
	cmp	r0, #1	@ D.36247,
	beq	.L472	@,
.L470:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	str	r0, [r5, #60]	@, <variable>.syn_sdext.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	strb	r0, [r5, #41]	@, <variable>.syn_sdext.marker_bit
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
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
.L472:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	str	r0, [r5, #48]	@, <variable>.syn_sdext.colour_primaries
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	str	r0, [r5, #52]	@, <variable>.syn_sdext.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	str	r0, [r5, #56]	@, <variable>.syn_sdext.matrix_coefficients
	b	.L470	@
	.fnend
	.size	AVS_sequence_display_extension, .-AVS_sequence_display_extension
	.align	2
	.global	AVS_extension
	.type	AVS_extension, %function
AVS_extension:
	.fnstart
.LFB1359:
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
	ldr	r4, [r0, #264]	@ pBs, <variable>.pBs
	mov	r5, r0	@ pCodecInf, pCodecInf
	mov	r6, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC57	@,
	mov	r1, #32	@,
	movt	r2, #:upper16:.LC57	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsShow	@
	sub	r0, r0, #2	@ tmp140,,
	cmp	r0, #9	@ tmp140,
	ldrls	pc, [pc, r0, asl #2]	@ tmp140
	b	.L474	@
.L479:
	.word	.L475
	.word	.L474
	.word	.L476
	.word	.L474
	.word	.L474
	.word	.L477
	.word	.L474
	.word	.L474
	.word	.L474
	.word	.L478
.L478:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_camera_parameters_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L477:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_picture_display_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L476:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_copyright_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L475:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	bl	AVS_sequence_display_extension	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L474:
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
	movw	r3, #15140	@ tmp148,
	add	r7, r0, #14848	@ pCodecInf, pCtx,
	add	r6, r0, #15424	@ pSyntax, pCtx,
	ldr	r4, [r0, r3]	@ pBs, <variable>.CodecInfo.pBs
	add	r7, r7, #28	@ pCodecInf, pCodecInf,
	add	r6, r6, #44	@ pSyntax, pSyntax,
	mov	r5, r0	@ pCtx, pCtx
	mov	r8, r1	@ ExtFrm, ExtFrm
.L491:
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mov	r0, r4	@, pBs
	ble	.L492	@,
.L487:
	bl	AVS_next_start_code	@
	mov	r0, r4	@, pBs
	mov	r1, #32	@,
	bl	BsShow	@
	uxtb	r0, r0	@ Code.2546,
	cmp	r0, #178	@ Code.2546,
	cmpne	r0, #181	@, Code.2546,
	bne	.L493	@,
	cmp	r0, #181	@ Code.2546,
	beq	.L494	@,
.L486:
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	uxtb	r0, r0	@ tmp156,
	cmp	r0, #178	@ tmp156,
	bne	.L491	@,
	mov	r1, r8	@, ExtFrm
	mov	r0, r5	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mov	r0, r4	@, pBs
	bgt	.L487	@,
.L492:
	mov	r0, #0	@ D.36226,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L494:
	mov	r1, r6	@, pSyntax
	mov	r0, r7	@, pCodecInf
	bl	AVS_extension	@
	b	.L486	@
.L493:
	mov	r0, #1	@ D.36226,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	AVS_extension_and_userdata, .-AVS_extension_and_userdata
	.align	2
	.global	AVS_sequence_header
	.type	AVS_sequence_header, %function
AVS_sequence_header:
	.fnstart
.LFB1355:
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
	movw	r2, #15140	@ tmp156,
	ldr	r5, [r0, r2]	@ pBs, <variable>.CodecInfo.pBs
	movw	ip, #14980	@ tmp157,
	ldr	lr, [r0, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r6, r0	@ pCtx, pCtx
	mov	r4, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC58	@,
	bic	r0, lr, #65536	@ tmp160, <variable>.CodecInfo.Integrity,
	movt	r2, #:upper16:.LC58	@,
	str	r0, [r6, ip]	@ tmp160, <variable>.CodecInfo.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC59	@,
	movt	r2, #:upper16:.LC59	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC60	@,
	movt	r2, #:upper16:.LC60	@,
	str	r0, [r4, #12]	@, <variable>.syn_seq.profile_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC61	@,
	movt	r2, #:upper16:.LC61	@,
	str	r0, [r4, #16]	@, <variable>.syn_seq.level_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC62	@,
	movt	r2, #:upper16:.LC62	@,
	strb	r0, [r4, #11]	@, <variable>.syn_seq.progressive_sequence
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r2, #:upper16:.LC63	@,
	str	r0, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r2, #:upper16:.LC64	@,
	str	r0, [r4, #24]	@, <variable>.syn_seq.vertical_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC65	@,
	movt	r2, #:upper16:.LC65	@,
	strb	r0, [r4, #7]	@, <variable>.syn_seq.chroma_format
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC66	@,
	movt	r2, #:upper16:.LC66	@,
	strb	r0, [r4, #8]	@, <variable>.syn_seq.sample_precision
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC67	@,
	movt	r2, #:upper16:.LC67	@,
	strb	r0, [r4, #9]	@, <variable>.syn_seq.aspect_ratio
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC68	@,
	movt	r2, #:upper16:.LC68	@,
	strb	r0, [r4, #10]	@, <variable>.syn_seq.frame_rate_code
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	str	r0, [r4, #28]	@, <variable>.syn_seq.bit_rate_lower
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #12	@,
	movw	r2, #:lower16:.LC69	@,
	movt	r2, #:upper16:.LC69	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC70	@,
	movt	r2, #:upper16:.LC70	@,
	str	r0, [r4, #32]	@, <variable>.syn_seq.bit_rate_upper
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	strb	r0, [r4, #5]	@, <variable>.syn_seq.low_delay
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	str	r0, [r4, #36]	@, <variable>.syn_seq.bbv_buffer_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	movw	r1, #15016	@ tmp185,
	ldr	r2, [r6, r1]	@ D.35923, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	ldr	r3, [r4, #20]	@ <variable>.syn_seq.horizontal_size, <variable>.syn_seq.horizontal_size
	cmp	r3, r2	@ <variable>.syn_seq.horizontal_size, D.35923
	strb	r0, [r4, #4]	@, <variable>.syn_seq.reserved_bits
	beq	.L499	@,
.L496:
	movw	ip, #:lower16:g_event_report	@ tmp192,
	movt	ip, #:upper16:g_event_report	@ tmp192,
	movw	r1, #14992	@ tmp190,
	mov	lr, #1	@ tmp191,
	str	lr, [r6, r1]	@ tmp191, <variable>.CodecInfo.SizeChanged
	ldr	r3, [ip, #0]	@ g_event_report.418, g_event_report
	cmp	r3, #0	@ g_event_report.418,
	beq	.L497	@,
	movw	r1, #15020	@ tmp193,
	strh	r2, [fp, #-36]	@ movhi	@ D.35923, para
	ldrh	lr, [r6, r1]	@, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	movw	r2, #16104	@ tmp197,
	mov	r1, #2	@,
	strh	lr, [fp, #-34]	@ movhi	@, para
	ldrh	ip, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	strh	ip, [fp, #-32]	@ movhi	@, para
	ldrh	r0, [r4, #24]	@, <variable>.syn_seq.vertical_size
	strh	r0, [fp, #-30]	@ movhi	@, para
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	sub	r2, fp, #36	@,,
	blx	r3	@ g_event_report.418
.L497:
	add	lr, r6, #14976	@, pCtx,
	mov	r1, r4	@, pSyntax
	add	r0, lr, #20	@,,
	mov	r2, #144	@,
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
.L499:
	movw	r0, #15020	@ tmp187,
	ldr	r1, [r4, #24]	@ <variable>.syn_seq.vertical_size, <variable>.syn_seq.vertical_size
	ldr	r3, [r6, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	cmp	r1, r3	@ <variable>.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	bne	.L496	@,
	b	.L497	@
	.fnend
	.size	AVS_sequence_header, .-AVS_sequence_header
	.align	2
	.global	avs_se_v
	.type	avs_se_v, %function
avs_se_v:
	.fnstart
.LFB1352:
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
	bhi	.L502	@,
	add	r8, r0, #1	@ D.35759, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r8	@, D.35759
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.35759
	sub	r0, r0, #1	@ Info.2601,,
	tst	r0, #1	@ Info.2601,
	mov	r4, r0, asr #1	@ Info.2602, Info.2601,
	mov	r0, r6	@, pBs
	addne	r4, r4, #1	@ Info, Info.2602,
	rsbeq	r4, r4, #0	@ Info, Info.2602
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp146, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp146,
.L502:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
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
.LFB1351:
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
	bhi	.L508	@,
	add	r4, r0, #1	@ D.35737, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r4	@, D.35737
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r4	@, D.35737
	sub	r4, r0, #1	@ Info,,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp142, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp142,
.L508:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
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
.LFB1357:
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
	ldr	r5, [r0, #264]	@ pBs, <variable>.pBs
	ldr	ip, [r0, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r4, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC72	@,
	bic	r0, ip, #262144	@ tmp161, <variable>.Integrity,
	mov	r1, #32	@,
	movt	r2, #:upper16:.LC72	@,
	str	r0, [r6, #104]	@ tmp161, <variable>.Integrity
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC73	@,
	movt	r2, #:upper16:.LC73	@,
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	str	r0, [r4, #84]	@, <variable>.syn_pic.bbv_delay
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC75	@,
	movt	r2, #:upper16:.LC75	@,
	strb	r0, [r4, #79]	@, <variable>.syn_pic.picture_coding_type
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	r3, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #96]	@, <variable>.syn_pic.picture_distance
	beq	.L522	@,
.L511:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	bl	avs_u_v	@
	uxtb	r1, r0	@ D.36043,
	strb	r1, [r4, #68]	@ D.36043, <variable>.syn_pic.progressive_frame
	cmp	r1, #0	@ D.36043,
	movne	r3, #1	@ tmp175,
	strneb	r3, [r4, #69]	@ tmp175, <variable>.syn_pic.picture_structure
	beq	.L523	@,
.L513:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC80	@,
	movt	r2, #:upper16:.LC80	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	strb	r0, [r4, #70]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	strb	r0, [r4, #71]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	strb	r0, [r4, #72]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #79]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	cmp	r3, #2	@ <variable>.syn_pic.picture_coding_type,
	strb	r0, [r4, #73]	@, <variable>.syn_pic.picture_qp
	beq	.L524	@,
.L514:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	bl	avs_u_v	@
	strb	r0, [r4, #81]	@, <variable>.syn_pic.picture_reference_flag
.L516:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	strb	r0, [r4, #82]	@, <variable>.syn_pic.no_forward_reference_flag
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #74]	@, <variable>.syn_pic.skip_mode_flag
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	ip, #0	@ tmp199,
	str	ip, [r4, #108]	@ tmp199, <variable>.syn_pic.beta_offset
	str	ip, [r4, #104]	@ tmp199, <variable>.syn_pic.alpha_c_offset
	uxtb	r0, r0	@ D.36088,
	strb	r0, [r4, #76]	@ D.36088, <variable>.syn_pic.loop_filter_disable
	cmp	r0, ip	@ D.36088,
	beq	.L525	@,
.L517:
	ldrb	lr, [r4, #79]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	mov	r0, #1	@,
	cmp	lr, #1	@ <variable>.syn_pic.picture_coding_type,
	movne	lr, #2	@ tmp207,
	str	lr, [r4, #116]	@ tmp207, <variable>.syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	orr	r2, r3, #262144	@ tmp209, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp209, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L524:
	ldrb	lr, [r4, #69]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	lr, #1	@ <variable>.syn_pic.picture_structure,
	streqb	lr, [r4, #81]	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_reference_flag
	bne	.L514	@,
	b	.L516	@
.L523:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	bl	avs_u_v	@
	uxtb	r2, r0	@ D.36049,
	strb	r2, [r4, #69]	@ D.36049, <variable>.syn_pic.picture_structure
	cmp	r2, #0	@ D.36049,
	bne	.L513	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	bl	avs_u_v	@
	strb	r0, [r4, #80]	@, <variable>.syn_pic.advanced_pred_mode_disable
	b	.L513	@
.L525:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	bl	avs_u_v	@
	uxtb	r1, r0	@ D.36094,
	strb	r1, [r4, #77]	@ D.36094, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	r1, #0	@ D.36094,
	beq	.L517	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	str	r0, [r4, #104]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.beta_offset
	b	.L517	@
.L522:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	avs_ue_v	@
	str	r0, [r4, #100]	@, <variable>.syn_pic.bbv_check_times
	b	.L511	@
	.fnend
	.size	AVS_pb_picture_header, .-AVS_pb_picture_header
	.align	2
	.global	AVS_i_picture_header
	.type	AVS_i_picture_header, %function
AVS_i_picture_header:
	.fnstart
.LFB1356:
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
	ldr	r5, [r0, #264]	@ pBs, <variable>.pBs
	ldr	ip, [r0, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r4, r1	@ pSyntax, pSyntax
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #32	@,
	bic	r3, ip, #262144	@ tmp160, <variable>.Integrity,
	movw	r2, #:lower16:.LC91	@,
	str	r3, [r0, #104]	@ tmp160, <variable>.Integrity
	movt	r2, #:upper16:.LC91	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC73	@,
	movt	r2, #:upper16:.LC73	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	str	r0, [r4, #84]	@, <variable>.syn_pic.bbv_delay
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.35951,
	strb	r0, [r4, #78]	@ D.35951, <variable>.syn_pic.time_code_flag
	cmp	r0, #1	@ D.35951,
	beq	.L535	@,
.L527:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	bl	avs_f_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC75	@,
	movt	r2, #:upper16:.LC75	@,
	str	r0, [r4, #92]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	r1, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #96]	@, <variable>.syn_pic.picture_distance
	beq	.L536	@,
.L528:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	bl	avs_u_v	@
	ldrb	r2, [r4, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	r2, #1	@ <variable>.syn_seq.progressive_sequence,
	uxtb	r0, r0	@ D.35968,
	strb	r0, [r4, #68]	@ D.35968, <variable>.syn_pic.progressive_frame
	streqb	r2, [r4, #68]	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_pic.progressive_frame
	beq	.L530	@,
	cmp	r0, #0	@ D.35968,
	beq	.L537	@,
.L530:
	mov	lr, #1	@ tmp177,
	strb	lr, [r4, #69]	@ tmp177, <variable>.syn_pic.picture_structure
.L531:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC80	@,
	movt	r2, #:upper16:.LC80	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	strb	r0, [r4, #70]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	strb	r0, [r4, #71]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	strb	r0, [r4, #72]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrh	r3, [r4, #68]	@ tmp187,
	cmp	r3, #0	@ tmp187,
	strb	r0, [r4, #73]	@, <variable>.syn_pic.picture_qp
	beq	.L538	@,
.L532:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	ip, #0	@ tmp194,
	str	ip, [r4, #108]	@ tmp194, <variable>.syn_pic.beta_offset
	str	ip, [r4, #104]	@ tmp194, <variable>.syn_pic.alpha_c_offset
	uxtb	r0, r0	@ D.36003,
	strb	r0, [r4, #76]	@ D.36003, <variable>.syn_pic.loop_filter_disable
	cmp	r0, ip	@ D.36003,
	beq	.L539	@,
.L533:
	mov	r0, #1	@ tmp200,
	mov	r3, #0	@ tmp202,
	strb	r0, [r4, #81]	@ tmp200, <variable>.syn_pic.picture_reference_flag
	str	r3, [r4, #116]	@ tmp202, <variable>.syn_pic.derived_pic_coding_type
	ldr	lr, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	orr	r2, lr, #262144	@ tmp204, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp204, <variable>.Integrity
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L537:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	bl	avs_u_v	@
	strb	r0, [r4, #69]	@, <variable>.syn_pic.picture_structure
	b	.L531	@
.L539:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	bl	avs_u_v	@
	uxtb	r1, r0	@ D.36009,
	strb	r1, [r4, #77]	@ D.36009, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	r1, #0	@ D.36009,
	beq	.L533	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	str	r0, [r4, #104]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.beta_offset
	b	.L533	@
.L538:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	bl	avs_u_v	@
	strb	r0, [r4, #74]	@, <variable>.syn_pic.skip_mode_flag
	b	.L532	@
.L535:
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	bl	avs_u_v	@
	str	r0, [r4, #88]	@, <variable>.syn_pic.time_code
	b	.L527	@
.L536:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	avs_ue_v	@
	str	r0, [r4, #100]	@, <variable>.syn_pic.bbv_check_times
	b	.L528	@
	.fnend
	.size	AVS_i_picture_header, .-AVS_i_picture_header
	.align	2
	.global	AVS_ParseHeader
	.type	AVS_ParseHeader, %function
AVS_ParseHeader:
	.fnstart
.LFB1353:
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
	movw	r1, #15140	@ tmp154,
	ldr	r7, [r0, r1]	@ pBs, <variable>.CodecInfo.pBs
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #15968	@ tmp155,
	mov	r2, #0	@ tmp156,
	mov	r1, #32	@,
	str	r2, [r4, r0]	@ tmp156, <variable>.IsPackWaitDec
	mov	r0, r7	@, pBs
	add	r6, r4, #14848	@ pCodecInf, pCtx,
	bl	BsShow	@
	add	r5, r4, #15424	@ pSyntax, pCtx,
	add	r6, r6, #28	@ pCodecInf, pCodecInf,
	add	r5, r5, #44	@ pSyntax, pSyntax,
	uxtb	r0, r0	@ Code.2699,
	sub	r3, r0, #176	@ tmp157, Code.2699,
	cmp	r3, #78	@ tmp157,
	ldrls	pc, [pc, r3, asl #2]	@ tmp157
	b	.L541	@
.L551:
	.word	.L542
	.word	.L543
	.word	.L544
	.word	.L545
	.word	.L566
	.word	.L547
	.word	.L548
	.word	.L543
	.word	.L566
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L541
	.word	.L550
.L543:
	movw	r2, #14980	@ tmp210,
	ldr	r3, [r4, r2]	@ temp.2722, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp211, temp.2722,
	bne	.L569	@,
	tst	r3, #327680	@ temp.2722,
	bne	.L576	@,
.L563:
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L541:
	cmp	r0, #175	@ Code.2699,
	bhi	.L566	@,
	movw	r3, #14980	@ tmp241,
	ldr	r2, [r4, r3]	@ temp.2731, <variable>.CodecInfo.Integrity
	and	r0, r2, #327680	@ tmp242, temp.2731,
	cmp	r0, #327680	@ tmp242,
	beq	.L577	@,
.L566:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L547:
	movw	r0, #14980	@ tmp194,
	ldr	r7, [r4, r0]	@ tmp196,
	ands	r7, r7, #327680	@ tmp195, tmp196,
	beq	.L573	@,
	mov	r1, r5	@, pSyntax
	mov	r0, r6	@, pCodecInf
	bl	AVS_extension	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L544:
	movw	r2, #14980	@ tmp191,
	ldr	r7, [r4, r2]	@ temp.2712, <variable>.CodecInfo.Integrity
	ands	r1, r7, #262144	@ tmp192, temp.2712,
	movne	r1, #1	@,
	bne	.L570	@,
	ands	r7, r7, #65536	@ tmp193, temp.2712,
	beq	.L573	@,
.L570:
	mov	r0, r4	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L545:
	movw	r2, #14980	@ tmp169,
	ldr	r3, [r4, r2]	@ temp.2701, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp170, temp.2701,
	bne	.L569	@,
	tst	r3, #262144	@ temp.2701,
	beq	.L556	@,
	bic	lr, r3, #311296	@ tmp179, temp.2701,
	mov	r1, r5	@, pSyntax
	str	lr, [r4, r2]	@ tmp179, <variable>.CodecInfo.Integrity
	mov	r0, r6	@, pCodecInf
	bl	AVS_i_picture_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35806, tmp170
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L548:
	movw	r2, #14980	@ tmp180,
	ldr	r3, [r4, r2]	@ temp.2706, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp181, temp.2706,
	bne	.L569	@,
	tst	r3, #262144	@ temp.2706,
	beq	.L558	@,
	bic	r3, r3, #311296	@ tmp190, temp.2706,
	mov	r1, r5	@, pSyntax
	str	r3, [r4, r2]	@ tmp190, <variable>.CodecInfo.Integrity
	mov	r0, r6	@, pCodecInf
	bl	AVS_pb_picture_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35806, tmp181
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L550:
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	mov	r0, r7	@, pBs
	mov	r1, #32	@,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.35839,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:1128615492	@ tmp224,
	movw	r3, #:lower16:1213419593	@ tmp227,
	movt	r2, #:upper16:1128615492	@ tmp224,
	movt	r3, #:upper16:1213419593	@ tmp227,
	cmp	r0, r2	@, tmp224
	cmpeq	r5, r3	@, D.35839, tmp227
	movne	r7, #0	@, tmp231
	moveq	r7, #1	@, tmp231
	bne	.L573	@,
	movw	lr, #14980	@ tmp237,
	movw	r2, #16356	@ tmp232,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	r1, #15968	@ tmp235,
	mov	r7, #1	@ tmp233,
	mov	r0, r4	@, pCtx
	orr	ip, r3, #16384	@ tmp240, <variable>.CodecInfo.Integrity,
	strb	r7, [r4, r2]	@ tmp233, <variable>.IsStreamEndFlag
	str	ip, [r4, lr]	@ tmp240, <variable>.CodecInfo.Integrity
	str	r7, [r4, r1]	@ tmp233, <variable>.IsPackWaitDec
	bl	ClearPacket	@
	mov	r0, r7	@ D.35806, tmp233
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L542:
	movw	r2, #14980	@ tmp158,
	ldr	r3, [r4, r2]	@ D.35796, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp159, D.35796,
	bne	.L569	@,
	tst	r3, #65536	@ D.35796,
	beq	.L554	@,
	bic	ip, r3, #311296	@ tmp168, D.35796,
	mov	r1, r5	@, pSyntax
	str	ip, [r4, r2]	@ tmp168, <variable>.CodecInfo.Integrity
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35806, tmp159
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L569:
	mov	r7, #1	@ tmp213,
	movw	ip, #15968	@ tmp212,
	orr	r1, r3, #16384	@ tmp217, temp.2722,
	str	r7, [r4, ip]	@ tmp213, <variable>.IsPackWaitDec
	str	r1, [r4, r2]	@ tmp217, <variable>.CodecInfo.Integrity
	mov	r0, r7	@ D.35806, tmp213
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L576:
	bic	lr, r3, #311296	@ tmp222, temp.2722,
	str	lr, [r4, r2]	@ tmp222, <variable>.CodecInfo.Integrity
.L573:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.35806, tmp211
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L554:
	mov	r1, r5	@, pSyntax
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L558:
	mov	r1, r5	@, pSyntax
	mov	r0, r6	@, pCodecInf
	bl	AVS_pb_picture_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L556:
	mov	r1, r5	@, pSyntax
	mov	r0, r6	@, pCodecInf
	bl	AVS_i_picture_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.35806,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L577:
	orr	r7, r2, #32768	@ tmp244, temp.2731,
	mov	r0, r4	@, pCtx
	str	r7, [r4, r3]	@ tmp244, <variable>.CodecInfo.Integrity
	bl	WriteAvsSliceMsg	@
	subs	r7, r0, #0	@ D.35852,
	bne	.L563	@,
	b	.L573	@
	.fnend
	.size	AVS_ParseHeader, .-AVS_ParseHeader
	.align	2
	.global	AVSDEC_Decode
	.type	AVSDEC_Decode, %function
AVSDEC_Decode:
	.fnstart
.LFB1382:
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
	add	r2, r0, #15424	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r1, #0]	@, <variable>.VirAddr
	add	r0, r2, #16	@,,
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	bl	BsInit	@
	add	r0, r4, #15936	@, pCtx,
	mov	r1, r5	@, p_Packet
	mov	r2, #128	@,
	add	r0, r0, #40	@,,
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	bl	AVS_ParseHeader	@
	subs	r5, r0, #0	@ D.37356,
	beq	.L585	@,
	mov	r0, r4	@, pCtx
	bl	AVS_DecodeArbiter	@
	cmp	r0, #0	@ D.37361
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@, pCtx
	bl	AVS_PrepareDecode	@
	subs	r5, r0, #0	@ D.37364,
	beq	.L586	@,
	mov	r0, r4	@, pCtx
	bl	AVS_StartDecode	@
	subs	r5, r0, #0	@ D.37368,
	movne	r0, #1	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37368
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L585:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37356
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L586:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r5	@ ret, D.37364
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AVSDEC_Decode, .-AVSDEC_Decode
	.global	g_tmp
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CSWTCH.484, %object
	.size	CSWTCH.484, 16
CSWTCH.484:
	.word	5
	.word	1
	.word	2
	.word	3
	.type	CSWTCH.489, %object
	.size	CSWTCH.489, 8
CSWTCH.489:
	.word	32
	.word	16
	.type	CSWTCH.490, %object
	.size	CSWTCH.490, 8
CSWTCH.490:
	.word	0
	.word	8
	.type	CSWTCH.491, %object
	.size	CSWTCH.491, 8
CSWTCH.491:
	.word	0
	.word	4
	.type	CSWTCH.492, %object
	.size	CSWTCH.492, 8
CSWTCH.492:
	.word	0
	.word	8
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
	.ascii	"ERROR: AVS_OutputOneFrame is err(%d)\012\000"
	.space	2
.LC4:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC5:
	.ascii	"ERROR: get frame store fail!\012\000"
	.space	2
.LC6:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC7:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC8:
	.ascii	"ERROR: err_level(%d) over ref_thr(%d)\012\000"
	.space	1
.LC9:
	.ascii	"ERROR: err_level(%d) over out_thr(%d)\012\000"
	.space	1
.LC10:
	.ascii	"ERROR: image size abnormal(%dx%d)\012\000"
	.space	1
.LC11:
	.ascii	"avs actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC12:
	.ascii	"ERROR: partition fs memory fail!\012\000"
	.space	2
.LC13:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC14:
	.ascii	"size change\012\000"
	.space	3
.LC15:
	.ascii	"MbWidth = %d, MbHeight = %d, don't support!\012\000"
	.space	3
.LC16:
	.ascii	"ERROR: allocate vhb\012\000"
	.space	3
.LC17:
	.ascii	"ERROR: get img buf err\012\000"
.LC18:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC19:
	.ascii	"%-40s     %#-8x(%db)\012\000"
	.space	2
.LC20:
	.ascii	"user_data_start_code\000"
	.space	3
.LC21:
	.ascii	"extension_ID\000"
	.space	3
.LC22:
	.ascii	"frame_centre_horizontal_offset\000"
	.space	1
.LC23:
	.ascii	"marker_bit\000"
	.space	1
.LC24:
	.ascii	"frame_centre_vertical_offset\000"
	.space	3
.LC25:
	.ascii	"reserved_bits\000"
	.space	2
.LC26:
	.ascii	"camera_id\000"
	.space	2
.LC27:
	.ascii	"height_of_image_device\000"
	.space	1
.LC28:
	.ascii	"focal_length\000"
	.space	3
.LC29:
	.ascii	"f_number\000"
	.space	3
.LC30:
	.ascii	"vertical_angle_of_view\000"
	.space	1
.LC31:
	.ascii	"camera_position_x_upper\000"
.LC32:
	.ascii	"camera_position_x_lower\000"
.LC33:
	.ascii	"camera_position_y_upper\000"
.LC34:
	.ascii	"camera_position_y_lower\000"
.LC35:
	.ascii	"camera_position_z_upper\000"
.LC36:
	.ascii	"camera_position_z_lower\000"
.LC37:
	.ascii	"camera_direction_x\000"
	.space	1
.LC38:
	.ascii	"camera_direction_y\000"
	.space	1
.LC39:
	.ascii	"camera_direction_z\000"
	.space	1
.LC40:
	.ascii	"image_plane_vertical_x\000"
	.space	1
.LC41:
	.ascii	"image_plane_vertical_y\000"
	.space	1
.LC42:
	.ascii	"image_plane_vertical_z\000"
	.space	1
.LC43:
	.ascii	"copyright_flag\000"
	.space	1
.LC44:
	.ascii	"copyright_id\000"
	.space	3
.LC45:
	.ascii	"original_or_copy\000"
	.space	3
.LC46:
	.ascii	"copyright_number_1\000"
	.space	1
.LC47:
	.ascii	"copyright_number_2\000"
	.space	1
.LC48:
	.ascii	"copyright_number_3\000"
	.space	1
.LC49:
	.ascii	"video_format\000"
	.space	3
.LC50:
	.ascii	"sample_range\000"
	.space	3
.LC51:
	.ascii	"colour_description\000"
	.space	1
.LC52:
	.ascii	"colour_primaries\000"
	.space	3
.LC53:
	.ascii	"transfer_characteristics\000"
	.space	3
.LC54:
	.ascii	"matrix_coefficients\000"
.LC55:
	.ascii	"display_horizontal_size\000"
.LC56:
	.ascii	"display_vertical_size\000"
	.space	2
.LC57:
	.ascii	"extension_start_code\000"
	.space	3
.LC58:
	.ascii	"video_sequence_start_code\000"
	.space	2
.LC59:
	.ascii	"profile_id\000"
	.space	1
.LC60:
	.ascii	"level_id\000"
	.space	3
.LC61:
	.ascii	"progressive_sequence\000"
	.space	3
.LC62:
	.ascii	"horizontal_size\000"
.LC63:
	.ascii	"vertical_size\000"
	.space	2
.LC64:
	.ascii	"chroma_format\000"
	.space	2
.LC65:
	.ascii	"sample_precision\000"
	.space	3
.LC66:
	.ascii	"aspect_ratio\000"
	.space	3
.LC67:
	.ascii	"frame_rate_code\000"
.LC68:
	.ascii	"bit_rate_lower\000"
	.space	1
.LC69:
	.ascii	"bit_rate_upper\000"
	.space	1
.LC70:
	.ascii	"low_delay\000"
	.space	2
.LC71:
	.ascii	"bbv_buffer_size\000"
.LC72:
	.ascii	"pb_picture_start_code\000"
	.space	2
.LC73:
	.ascii	"bbv_delay\000"
	.space	2
.LC74:
	.ascii	"picture_coding_type\000"
.LC75:
	.ascii	"picture_distance\000"
	.space	3
.LC76:
	.ascii	"bbv_check_times\000"
.LC77:
	.ascii	"progressive_frame\000"
	.space	2
.LC78:
	.ascii	"picture_structure\000"
	.space	2
.LC79:
	.ascii	"advanced_pred_mode_disable\000"
	.space	1
.LC80:
	.ascii	"top_field_first\000"
.LC81:
	.ascii	"repeat_first_field\000"
	.space	1
.LC82:
	.ascii	"fixed_picture_qp\000"
	.space	3
.LC83:
	.ascii	"picture_qp\000"
	.space	1
.LC84:
	.ascii	"picture_reference_flag\000"
	.space	1
.LC85:
	.ascii	"no_forward_reference_flag\000"
	.space	2
.LC86:
	.ascii	"skip_mode_flag\000"
	.space	1
.LC87:
	.ascii	"loop_filter_disable\000"
.LC88:
	.ascii	"loop_filter_parameter_flag\000"
	.space	1
.LC89:
	.ascii	"alpha_c_offset\000"
	.space	1
.LC90:
	.ascii	"beta_offset\000"
.LC91:
	.ascii	"i_picture_start_code\000"
	.space	3
.LC92:
	.ascii	"time_code_flag\000"
	.space	1
.LC93:
	.ascii	"time_code\000"
	.space	2
.LC94:
	.ascii	"ERROR: paseHeader err\012\000"
	.space	1
.LC95:
	.ascii	"ERROR: AVS_PrepareDecode err\012\000"
	.space	2
.LC96:
	.ascii	"ERROR: AVS_StartDecode err\012\000"
	.bss
	.align	2
	.type	g_tmp, %object
	.size	g_tmp, 1024
g_tmp:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
