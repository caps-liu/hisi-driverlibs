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
	.file	"vp6.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vp6) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.vp6.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.o -O2 -Wall -Wundef
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
	.global	VP6_BuildScanOrder
	.type	VP6_BuildScanOrder, %function
VP6_BuildScanOrder:
	.fnstart
.LFB1356:
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
	mov	r5, #1	@ ScanOrderIndex,
	mov	r6, r1	@ pbi, pbi
	mov	r3, #0	@ tmp199,
	strb	r3, [r0, #960]	@ tmp199, <variable>.ModifiedScanOrder
.L2:
	ldrb	r1, [r0, #1089]	@ zero_extendqisi2	@ tmp229, <variable>.ScanBands
	cmp	r1, r3	@ tmp229, i
	beq	.L31	@,
.L17:
	mov	ip, #0	@ tmp221,
	cmp	ip, ip	@ tmp221,
	mov	r2, #2	@ j,
	add	r1, r0, #1	@ ivtmp.554, pVp6CodecInfo,
	beq	.L4	@,
	ldrb	r7, [r1, #1089]	@ zero_extendqisi2	@ tmp241, <variable>.ScanBands
	add	r1, r1, #1	@ ivtmp.554, ivtmp.554,
	cmp	r7, r3	@ tmp241, i
	addeq	r7, r5, r0	@ tmp242, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r7, #960]	@ j, <variable>.ModifiedScanOrder
	add	r2, r2, #1	@ j, j,
	cmp	r2, #64	@ j,
	bne	.L4	@,
	b	.L29	@
.L22:
	add	r2, r1, #1	@ j, tmp222,
	add	r1, ip, #1	@ ivtmp.554, tmp223,
	cmp	r2, #64	@ j,
	beq	.L29	@,
.L4:
	ldrb	r4, [r1, #1089]	@ zero_extendqisi2	@ tmp201, <variable>.ScanBands
	add	ip, r1, #1	@ tmp223, ivtmp.554,
	add	r1, r2, #1	@ tmp222, j,
	cmp	r4, r3	@ tmp201, i
	addeq	r4, r5, r0	@ tmp203, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r4, #960]	@ j, <variable>.ModifiedScanOrder
	ldrb	r2, [ip, #1089]	@ zero_extendqisi2	@ tmp226, <variable>.ScanBands
	cmp	r2, r3	@ tmp226, i
	bne	.L22	@,
	add	r2, r5, r0	@ tmp244, ScanOrderIndex, pVp6CodecInfo
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	r1, [r2, #960]	@ tmp222, <variable>.ModifiedScanOrder
	add	r2, r1, #1	@ j, tmp222,
	cmp	r2, #64	@ j,
	add	r1, ip, #1	@ ivtmp.554, tmp223,
	bne	.L4	@,
.L29:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #16	@ i,
	bne	.L2	@,
	mov	r7, r0	@ ivtmp.563, pVp6CodecInfo
	mov	r5, #0	@ i.562,
.L5:
	ldrb	ip, [r0, #960]	@ zero_extendqisi2	@ tmp237, <variable>.ModifiedScanOrder
	mov	r2, #1	@ j.561,
	and	r1, r5, r2	@ tmp217, i.562,
	add	r3, r0, r2	@ ivtmp.560, pVp6CodecInfo,
	cmp	ip, #0	@ tmp237,
	movcc	ip, #0	@ MaxOffset,
	cmp	r2, r5	@ j.561, i.562
	bhi	.L28	@,
	cmp	r1, #0	@ tmp217,
	beq	.L6	@,
	ldrb	r1, [r0, #961]	@ zero_extendqisi2	@ tmp238, <variable>.ModifiedScanOrder
	mov	r2, #2	@ j.561,
	add	r3, r3, #1	@ ivtmp.560, ivtmp.560,
	cmp	ip, r1	@ MaxOffset, tmp238
	movcc	ip, r1	@ MaxOffset, tmp238
	cmp	r2, r5	@ j.561, i.562
	bhi	.L28	@,
.L6:
	ldrb	r4, [r3, #960]	@ zero_extendqisi2	@ tmp206, <variable>.ModifiedScanOrder
	add	r2, r2, #2	@ j.561, j.561,
	ldrb	r1, [r3, #961]	@ zero_extendqisi2	@ tmp233, <variable>.ModifiedScanOrder
	add	r3, r3, #2	@ ivtmp.560, ivtmp.560,
	cmp	ip, r4	@ MaxOffset, tmp206
	movcc	ip, r4	@ MaxOffset, tmp206
	cmp	ip, r1	@ MaxOffset, tmp233
	movcc	ip, r1	@ MaxOffset, tmp233
	cmp	r2, r5	@ j.561, i.562
	bls	.L6	@,
.L28:
	uxtb	ip, ip	@ D.35852, MaxOffset
	strb	ip, [r7, #1024]	@ D.35852, <variable>.EobOffsetTable
	ldr	r3, [r6, #12]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	add	r5, r5, #1	@ i.562, i.562,
	cmp	r3, #6	@ <variable>.Vp3VersionNo,
	addhi	ip, ip, #1	@ tmp209, D.35852,
	strhib	ip, [r7, #1024]	@ tmp209, <variable>.EobOffsetTable
	cmp	r5, #64	@ i.562,
	add	r7, r7, #1	@ ivtmp.563, ivtmp.563,
	bne	.L5	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L31:
	add	r2, r5, r0	@ tmp239, ScanOrderIndex, pVp6CodecInfo
	mov	r7, #1	@ j,
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	r7, [r2, #960]	@ j, <variable>.ModifiedScanOrder
	b	.L17	@
	.fnend
	.size	VP6_BuildScanOrder, .-VP6_BuildScanOrder
	.global	__aeabi_idiv
	.global	__aeabi_uidiv
	.align	2
	.global	VP6_BuildModeTree
	.type	VP6_BuildModeTree, %function
VP6_BuildModeTree:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #84
	sub	sp, sp, #84	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r8, #0	@ ivtmp.667,
	mov	r6, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	sl, r0	@ ivtmp.652, pVp6CodecInfo
	mov	r4, r0	@ ivtmp.861, pVp6CodecInfo
	mov	r5, r8	@ i, ivtmp.667
	mov	r7, #100	@ tmp771,
	b	.L33	@
.L129:
	ldrb	lr, [r6, #404]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, lr	@ prephitmp.733, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.733, Counts
	beq	.L100	@,
	ldrb	ip, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	r9, r7, ip	@ temp.718, tmp771, <variable>.probXmitted
	add	r3, r9, r3	@ total.752, temp.718, prephitmp.733
	str	r9, [fp, #-80]	@ temp.718, Counts
	beq	.L101	@,
.L58:
	ldrb	r9, [r6, #406]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	r2, r7, r9	@ D.35883, tmp771, <variable>.probXmitted
	add	r1, r2, r3	@ total.988, D.35883, total.752
	str	r2, [fp, #-76]	@ D.35883, Counts
	beq	.L102	@,
	ldrb	lr, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, lr	@ temp.756, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.989, temp.756, total.988
	str	r3, [fp, #-72]	@ temp.756, Counts
	beq	.L103	@,
.L62:
	ldrb	r3, [r6, #408]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r0, r7, r3	@ temp.761, tmp771, <variable>.probXmitted
	add	r2, r0, r1	@ total.990, temp.761, total.989
	str	r0, [fp, #-68]	@ temp.761, Counts
	beq	.L104	@,
	ldrb	ip, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, ip	@ temp.766, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.991, temp.766, total.990
	str	r1, [fp, #-64]	@ temp.766, Counts
	beq	.L105	@,
.L66:
	ldrb	r1, [r6, #410]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	r9, r7, r1	@ temp.771, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@ total.992, temp.771, total.991
	str	r9, [fp, #-60]	@ temp.771, Counts
	beq	.L106	@,
	ldrb	r9, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r3, r7, r9	@ temp.776, tmp771, <variable>.probXmitted
	add	r2, r3, r2	@ total.993, temp.776, total.992
	str	r3, [fp, #-56]	@ temp.776, Counts
	beq	.L107	@,
.L70:
	ldrb	r3, [r6, #412]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	lr, r7, r3	@ temp.781, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@, temp.781, total.993
	str	r2, [fp, #-88]	@, %sfp
	str	lr, [fp, #-52]	@ temp.781, Counts
	beq	.L108	@,
.L72:
	ldrb	r3, [r6, #413]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r3	@ prephitmp.784, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.784, Counts
.L73:
	ldrb	r3, [sl, #404]	@ zero_extendqisi2	@ tmp492, <variable>.probXmitted
	add	r2, r6, r5	@ tmp488, pVp6CodecInfo, i
	ldrb	r0, [sl, #414]	@ zero_extendqisi2	@ temp.790, <variable>.probXmitted
	str	r2, [fp, #-116]	@,
	add	ip, r0, r3	@ tmp493, temp.790, tmp492
	add	r1, ip, #1	@, tmp493,
	rsb	r0, r0, r0, asl #8	@,, temp.790, temp.790,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-116]	@,
	ldr	lr, [fp, #-88]	@, %sfp
	add	r1, r9, lr	@ tmp507, prephitmp.784,
	add	r1, r1, #1	@, tmp507,
	mvn	ip, r0	@ tmp500,
	strb	ip, [r3, #4]	@ tmp500, <variable>.probModeSame
	ldr	r2, [fp, #-72]	@, Counts
	ldr	r0, [fp, #-84]	@, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	str	r2, [fp, #-96]	@, %sfp
	ldr	lr, [fp, #-96]	@, %sfp
	ldr	r9, [fp, #-76]	@ Counts, Counts
	add	ip, lr, r3	@,, Counts
	str	r0, [fp, #-100]	@, %sfp
	add	r2, r0, r9	@ temp.801,, Counts
	str	ip, [fp, #-112]	@, %sfp
	add	r9, ip, r2	@ temp.805,, temp.801
	str	r2, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.805, temp.805,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.805,
	add	r0, r0, #1	@ tmp514,,
	strb	r0, [r4, #44]	@ tmp514, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.801, temp.801,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp525,,
	strb	ip, [r4, #45]	@ tmp525, <variable>.probMode
	ldr	r2, [fp, #-52]	@, Counts
	ldr	r0, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r2, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ temp.816, Counts
	add	r2, r0, r3	@ temp.824,, Counts
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	str	r0, [fp, #-92]	@, %sfp
	add	r0, r2, #1	@, temp.824,
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ temp.818, temp.816, Counts
	add	r1, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r1, [fp, #-104]	@, %sfp
	add	r1, r1, r9	@ tmp533,, temp.818
	add	r1, r1, lr	@, tmp533,
	ldr	lr, [fp, #-104]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,, temp.818, temp.818,
	str	ip, [fp, #-124]	@,
	add	lr, lr, #1	@,,
	str	r2, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-120]	@,
	add	r1, r3, #1	@, temp.801,
	add	r0, r0, #1	@ tmp540,,
	strb	r0, [r4, #46]	@ tmp540, <variable>.probMode
	ldr	r2, [fp, #-100]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-112]	@, %sfp
	add	r1, ip, #1	@,,
	add	lr, r0, #1	@ tmp551,,
	strb	lr, [r4, #47]	@ tmp551, <variable>.probMode
	ldr	r3, [fp, #-96]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.818,
	add	r0, r0, #1	@ tmp562,,
	strb	r0, [r4, #48]	@ tmp562, <variable>.probMode
	ldr	r2, [fp, #-124]	@,
	rsb	r0, r2, r2, asl #8	@,, temp.816, temp.816,
	bl	__aeabi_uidiv	@
	ldr	r9, [fp, #-116]	@,
	ldr	ip, [fp, #-104]	@, %sfp
	add	r1, ip, r9	@,, temp.824
	add	lr, r0, #1	@ tmp573,,
	rsb	r0, r9, r9, asl #8	@,, temp.824, temp.824,
	strb	lr, [r4, #49]	@ tmp573, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r3, r0, #1	@ tmp584,,
	strb	r3, [r4, #50]	@ tmp584, <variable>.probMode
	ldr	r2, [fp, #-92]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	r0, r0, #1	@ tmp594,,
	strb	r0, [r4, #51]	@ tmp594, <variable>.probMode
	ldr	ip, [fp, #-88]	@, %sfp
	rsb	r0, ip, ip, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	r9, r0, #1	@ tmp604,,
	strb	r9, [r4, #52]	@ tmp604, <variable>.probMode
	beq	.L74	@,
	ldrb	r9, [r6, #424]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, r9	@ prephitmp.865, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.865, Counts
	beq	.L109	@,
.L76:
	ldrb	r2, [r6, #425]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	lr, r7, r2	@ temp.869, tmp771, <variable>.probXmitted
	add	r3, lr, r3	@ total.1001, temp.869, prephitmp.865
	str	lr, [fp, #-80]	@ temp.869, Counts
	beq	.L110	@,
.L78:
	ldrb	r1, [r6, #426]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	lr, r7, r1	@ temp.874, tmp771, <variable>.probXmitted
	add	r1, lr, r3	@ total.1000, temp.874, total.1001
	str	lr, [fp, #-76]	@ temp.874, Counts
	beq	.L111	@,
.L80:
	ldrb	r9, [r6, #427]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r9	@ temp.879, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.999, temp.879, total.1000
	str	r3, [fp, #-72]	@ temp.879, Counts
	beq	.L112	@,
.L82:
	ldrb	r3, [r6, #428]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r0, r7, r3	@ temp.884, tmp771, <variable>.probXmitted
	add	r2, r0, r1	@ total.998, temp.884, total.999
	str	r0, [fp, #-68]	@ temp.884, Counts
	beq	.L113	@,
.L84:
	ldrb	r0, [r6, #429]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, r0	@ temp.889, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.997, temp.889, total.998
	str	r1, [fp, #-64]	@ temp.889, Counts
	beq	.L114	@,
.L86:
	ldrb	r1, [r6, #430]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	lr, r7, r1	@ temp.894, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@ total.996, temp.894, total.997
	str	lr, [fp, #-60]	@ temp.894, Counts
	beq	.L115	@,
.L88:
	ldrb	lr, [r6, #431]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	ip, r7, lr	@ temp.899, tmp771, <variable>.probXmitted
	add	r2, ip, r2	@ total.732, temp.899, total.996
	str	ip, [fp, #-56]	@ temp.899, Counts
	beq	.L116	@,
.L90:
	ldrb	ip, [r6, #432]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	r9, r7, ip	@ temp.904, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@, temp.904, total.732
	str	r2, [fp, #-88]	@, %sfp
	str	r9, [fp, #-52]	@ temp.904, Counts
	beq	.L117	@,
.L92:
	ldrb	ip, [r6, #433]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, ip	@ prephitmp.906, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.906, Counts
.L93:
	ldrb	r2, [sl, #424]	@ zero_extendqisi2	@ tmp657, <variable>.probXmitted
	ldrb	r0, [sl, #434]	@ zero_extendqisi2	@ temp.912, <variable>.probXmitted
	add	lr, r0, r2	@ tmp658, temp.912, tmp657
	add	r1, lr, #1	@, tmp658,
	rsb	r0, r0, r0, asl #8	@,, temp.912, temp.912,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-88]	@, %sfp
	add	r1, r9, r3	@ tmp672, prephitmp.906,
	add	r1, r1, #1	@, tmp672,
	mvn	ip, r0	@ tmp665,
	strb	ip, [sl, #14]	@ tmp665, <variable>.probModeSame
	ldr	lr, [fp, #-72]	@, Counts
	ldr	r9, [fp, #-84]	@, Counts
	ldr	r2, [fp, #-76]	@ Counts, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	add	ip, r9, r2	@ temp.923,, Counts
	str	r9, [fp, #-100]	@, %sfp
	add	r0, lr, r3	@,, Counts
	str	r0, [fp, #-112]	@, %sfp
	add	r9, r0, ip	@ temp.927,, temp.923
	str	lr, [fp, #-96]	@, %sfp
	str	ip, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.927, temp.927,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.927,
	add	r2, r0, #1	@ tmp679,,
	strb	r2, [r4, #134]	@ tmp679, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.923, temp.923,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp690,,
	strb	ip, [r4, #135]	@ tmp690, <variable>.probMode
	ldr	r0, [fp, #-52]	@, Counts
	ldr	r2, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r0, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ temp.938, Counts
	add	r3, r2, r3	@ temp.946,, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	add	r0, r3, #1	@, temp.946,
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ temp.940, temp.938, Counts
	str	r2, [fp, #-92]	@, %sfp
	add	r2, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r2, [fp, #-104]	@, %sfp
	add	r1, r2, r9	@ tmp698,, temp.940
	ldr	r2, [fp, #-104]	@, %sfp
	add	r1, r1, lr	@, tmp698,
	rsb	r0, r9, r9, asl #8	@,, temp.940, temp.940,
	str	ip, [fp, #-124]	@,
	add	lr, r2, #1	@,,
	str	r3, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-120]	@,
	add	r1, r2, #1	@, temp.923,
	add	r0, r0, #1	@ tmp705,,
	strb	r0, [r4, #136]	@ tmp705, <variable>.probMode
	ldr	r3, [fp, #-100]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	lr, [fp, #-112]	@, %sfp
	add	r1, lr, #1	@,,
	add	ip, r0, #1	@ tmp716,,
	strb	ip, [r4, #137]	@ tmp716, <variable>.probMode
	ldr	r2, [fp, #-96]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.940,
	add	r0, r0, #1	@ tmp727,,
	strb	r0, [r4, #138]	@ tmp727, <variable>.probMode
	ldr	r9, [fp, #-124]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.938, temp.938,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-116]	@,
	ldr	r3, [fp, #-104]	@, %sfp
	add	r1, r3, ip	@,, temp.946
	add	lr, r0, #1	@ tmp738,,
	rsb	r0, ip, ip, asl #8	@,, temp.946, temp.946,
	strb	lr, [r4, #139]	@ tmp738, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r2, r0, #1	@ tmp749,,
	strb	r2, [r4, #140]	@ tmp749, <variable>.probMode
	ldr	r9, [fp, #-92]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	r0, r0, #1	@ tmp759,,
	strb	r0, [r4, #141]	@ tmp759, <variable>.probMode
	ldr	r3, [fp, #-88]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	r1, r0, #1	@ tmp769,,
	strb	r1, [r4, #142]	@ tmp769, <variable>.probMode
	beq	.L118	@,
	ldrb	r9, [r6, #444]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, r9	@ prephitmp.698, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.698, Counts
	beq	.L119	@,
.L37:
	ldrb	ip, [r6, #445]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	r1, r7, ip	@ temp.704, tmp771, <variable>.probXmitted
	add	r3, r1, r3	@ total.783, temp.704, prephitmp.698
	str	r1, [fp, #-80]	@ temp.704, Counts
	beq	.L120	@,
.L39:
	ldrb	r1, [r6, #446]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	r2, r7, r1	@ temp.710, tmp771, <variable>.probXmitted
	add	r1, r2, r3	@ total.693, temp.710, total.783
	str	r2, [fp, #-76]	@ temp.710, Counts
	beq	.L121	@,
.L41:
	ldrb	r9, [r6, #447]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r9	@ temp.716, tmp771, <variable>.probXmitted
	add	r1, r1, r3	@ total.983, total.693, temp.716
	str	r3, [fp, #-72]	@ temp.716, Counts
	beq	.L122	@,
.L43:
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	lr, r7, r3	@ temp.724, tmp771, <variable>.probXmitted
	add	r2, lr, r1	@ total.984, temp.724, total.983
	str	lr, [fp, #-68]	@ temp.724, Counts
	beq	.L123	@,
.L45:
	ldrb	r0, [r6, #449]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, r0	@ temp.730, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.985, temp.730, total.984
	str	r1, [fp, #-64]	@ temp.730, Counts
	beq	.L124	@,
.L47:
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	ip, r7, r1	@ temp.737, tmp771, <variable>.probXmitted
	add	r2, ip, r2	@ total.986, temp.737, total.985
	str	ip, [fp, #-60]	@ temp.737, Counts
	beq	.L125	@,
.L49:
	ldrb	ip, [r6, #451]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r9, r7, ip	@ temp.744, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@ total.987, temp.744, total.986
	str	r9, [fp, #-56]	@ temp.744, Counts
	beq	.L126	@,
.L51:
	ldrb	r9, [r6, #452]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	lr, r7, r9	@ temp.750, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@, temp.750, total.987
	str	r2, [fp, #-88]	@, %sfp
	str	lr, [fp, #-52]	@ temp.750, Counts
	beq	.L127	@,
.L53:
	ldrb	r9, [r6, #453]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r9	@ prephitmp.632, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.632, Counts
.L34:
	ldrb	lr, [sl, #454]	@ zero_extendqisi2	@ D.35887, <variable>.probXmitted
	add	r5, r5, #1	@ i, i,
	ldrb	r0, [sl, #444]	@ zero_extendqisi2	@ tmp282, <variable>.probXmitted
	add	r8, r8, #4	@ ivtmp.667, ivtmp.667,
	add	r3, lr, r0	@ tmp283, D.35887, tmp282
	rsb	r0, lr, lr, asl #8	@,, D.35887, D.35887,
	add	r1, r3, #1	@, tmp283,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-88]	@, %sfp
	add	r1, r9, ip	@ tmp297, prephitmp.632,
	add	r1, r1, #1	@, tmp297,
	mvn	r2, r0	@ tmp290,
	strb	r2, [sl, #24]	@ tmp290, <variable>.probModeSame
	ldr	lr, [fp, #-72]	@, Counts
	add	sl, sl, #1	@ ivtmp.652, ivtmp.652,
	ldr	r9, [fp, #-84]	@, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	ldr	r0, [fp, #-76]	@ Counts, Counts
	add	ip, lr, r3	@,, Counts
	str	r9, [fp, #-100]	@, %sfp
	add	r2, r9, r0	@ D.35898,, Counts
	str	lr, [fp, #-96]	@, %sfp
	add	r9, ip, r2	@ D.35902,, D.35898
	str	ip, [fp, #-112]	@, %sfp
	str	r2, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, D.35902, D.35902,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.35902,
	add	r0, r0, #1	@ tmp304,,
	strb	r0, [r4, #224]	@ tmp304, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, D.35898, D.35898,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp315,,
	strb	ip, [r4, #225]	@ tmp315, <variable>.probMode
	ldr	r2, [fp, #-52]	@, Counts
	ldr	r0, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r2, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ D.35913, Counts
	add	r2, r0, r3	@ D.35918,, Counts
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	str	r0, [fp, #-92]	@, %sfp
	add	r0, r2, #1	@, D.35918,
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ D.35915, D.35913, Counts
	add	r1, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r1, [fp, #-104]	@, %sfp
	add	r1, r1, r9	@ tmp323,, D.35915
	add	r1, r1, lr	@, tmp323,
	ldr	lr, [fp, #-104]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,, D.35915, D.35915,
	str	ip, [fp, #-124]	@,
	add	lr, lr, #1	@,,
	str	r2, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-120]	@,
	add	r1, r3, #1	@, D.35898,
	add	r0, r0, #1	@ tmp330,,
	strb	r0, [r4, #226]	@ tmp330, <variable>.probMode
	ldr	r2, [fp, #-100]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-112]	@, %sfp
	add	r1, ip, #1	@,,
	add	lr, r0, #1	@ tmp341,,
	strb	lr, [r4, #227]	@ tmp341, <variable>.probMode
	ldr	r3, [fp, #-96]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.35915,
	add	r0, r0, #1	@ tmp352,,
	strb	r0, [r4, #228]	@ tmp352, <variable>.probMode
	ldr	r2, [fp, #-124]	@,
	rsb	r0, r2, r2, asl #8	@,, D.35913, D.35913,
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-116]	@,
	ldr	ip, [fp, #-104]	@, %sfp
	add	r1, ip, r3	@,, D.35918
	add	lr, r0, #1	@ tmp363,,
	rsb	r0, r3, r3, asl #8	@,, D.35918, D.35918,
	strb	lr, [r4, #229]	@ tmp363, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r0, r0, #1	@ tmp374,,
	strb	r0, [r4, #230]	@ tmp374, <variable>.probMode
	ldr	r2, [fp, #-92]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	ip, r0, #1	@ tmp384,,
	strb	ip, [r4, #231]	@ tmp384, <variable>.probMode
	ldr	r3, [fp, #-88]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #10	@ i,
	add	r2, r0, #1	@ tmp394,,
	strb	r2, [r4, #232]	@ tmp394, <variable>.probMode
	add	r4, r4, #9	@ ivtmp.861, ivtmp.861,
	beq	.L128	@,
.L33:
	cmp	r5, #0	@ i,
	bne	.L129	@,
	sub	r2, fp, #84	@,,
	cmp	r5, #2	@ i,
	str	r5, [r2, r8]	@ i, Counts
	ldrb	ip, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	r3, [fp, #-84]	@ prephitmp.733, Counts
	mul	r9, r7, ip	@ temp.718, tmp771, <variable>.probXmitted
	add	r3, r9, r3	@ total.752, temp.718, prephitmp.733
	str	r9, [fp, #-80]	@ temp.718, Counts
	bne	.L58	@,
.L101:
	sub	r0, fp, #84	@,,
	mov	r1, #0	@,
	cmp	r5, #4	@ i,
	str	r1, [r0, r8]	@, Counts
	ldrb	lr, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	ip, [fp, #-76]	@ Counts, Counts
	add	r1, r3, ip	@ total.988, total.752, Counts
	mul	r3, r7, lr	@ temp.756, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.989, temp.756, total.988
	str	r3, [fp, #-72]	@ temp.756, Counts
	bne	.L62	@,
.L103:
	sub	r9, fp, #84	@,,
	mov	r2, #0	@,
	cmp	r5, #6	@ i,
	str	r2, [r9, r8]	@, Counts
	ldrb	ip, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	lr, [fp, #-68]	@ Counts, Counts
	add	r2, r1, lr	@ total.990, total.989, Counts
	mul	r1, r7, ip	@ temp.766, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.991, temp.766, total.990
	str	r1, [fp, #-64]	@ temp.766, Counts
	bne	.L66	@,
.L105:
	sub	lr, fp, #84	@,,
	mov	r0, #0	@,
	cmp	r5, #8	@ i,
	str	r0, [lr, r8]	@, Counts
	ldrb	r9, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	ip, [fp, #-60]	@ Counts, Counts
	mul	r3, r7, r9	@ temp.776, tmp771, <variable>.probXmitted
	add	r2, r2, ip	@ total.992, total.991, Counts
	add	r2, r3, r2	@ total.993, temp.776, total.992
	str	r3, [fp, #-56]	@ temp.776, Counts
	bne	.L70	@,
.L107:
	sub	r0, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	r9, r2, r1	@, total.993, Counts
	str	r9, [fp, #-88]	@, %sfp
	b	.L72	@
.L127:
	sub	r0, fp, #84	@,,
	mov	r1, #0	@,
	str	r1, [r0, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.632, Counts
	b	.L34	@
.L126:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	ip, r2, r1	@, total.987, Counts
	str	ip, [fp, #-88]	@, %sfp
	b	.L53	@
.L125:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.987, total.986, Counts
	b	.L51	@
.L124:
	sub	r3, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r3, r8]	@, Counts
	ldr	r0, [fp, #-60]	@ Counts, Counts
	add	r2, r2, r0	@ total.986, total.985, Counts
	b	.L49	@
.L123:
	sub	r3, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r3, r8]	@, Counts
	ldr	lr, [fp, #-64]	@ Counts, Counts
	add	r2, r2, lr	@ total.985, total.984, Counts
	b	.L47	@
.L122:
	sub	r2, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r2, r8]	@, Counts
	ldr	r9, [fp, #-68]	@ Counts, Counts
	add	r2, r1, r9	@ total.984, total.983, Counts
	b	.L45	@
.L121:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r2, [fp, #-72]	@ Counts, Counts
	add	r1, r1, r2	@ total.983, total.693, Counts
	b	.L43	@
.L120:
	sub	r0, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r0, r8]	@, Counts
	ldr	ip, [fp, #-76]	@ Counts, Counts
	add	r1, r3, ip	@ total.693, total.783, Counts
	b	.L41	@
.L119:
	sub	r0, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r0, r8]	@, Counts
	ldr	lr, [fp, #-80]	@ Counts, Counts
	add	r3, r3, lr	@ total.783, prephitmp.698, Counts
	b	.L39	@
.L118:
	sub	r2, fp, #84	@,,
	str	r5, [r2, r8]	@ i, Counts
	ldr	r3, [fp, #-84]	@ prephitmp.698, Counts
	b	.L37	@
.L117:
	sub	r9, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [r9, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.906, Counts
	b	.L93	@
.L116:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	lr, r2, r1	@, total.732, Counts
	str	lr, [fp, #-88]	@, %sfp
	b	.L92	@
.L115:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.732, total.996, Counts
	b	.L90	@
.L114:
	sub	r3, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r3, r8]	@, Counts
	ldr	r0, [fp, #-60]	@ Counts, Counts
	add	r2, r2, r0	@ total.996, total.997, Counts
	b	.L88	@
.L113:
	sub	r9, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r9, r8]	@, Counts
	ldr	r3, [fp, #-64]	@ Counts, Counts
	add	r2, r2, r3	@ total.997, total.998, Counts
	b	.L86	@
.L112:
	sub	ip, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [ip, r8]	@, Counts
	ldr	r9, [fp, #-68]	@ Counts, Counts
	add	r2, r1, r9	@ total.998, total.999, Counts
	b	.L84	@
.L111:
	sub	ip, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [ip, r8]	@, Counts
	ldr	lr, [fp, #-72]	@ Counts, Counts
	add	r1, r1, lr	@ total.999, total.1000, Counts
	b	.L82	@
.L110:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r2, [fp, #-76]	@ Counts, Counts
	add	r1, r3, r2	@ total.1000, total.1001, Counts
	b	.L80	@
.L109:
	sub	r0, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r0, r8]	@, Counts
	ldr	ip, [fp, #-80]	@ Counts, Counts
	add	r3, r3, ip	@ total.1001, prephitmp.865, Counts
	b	.L78	@
.L74:
	sub	r1, fp, #84	@,,
	str	r5, [r1, r8]	@ i, Counts
	ldr	r3, [fp, #-84]	@ prephitmp.865, Counts
	b	.L76	@
.L108:
	sub	lr, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [lr, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.784, Counts
	b	.L73	@
.L106:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.993, total.992, Counts
	b	.L70	@
.L104:
	sub	lr, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [lr, r8]	@, Counts
	ldr	r0, [fp, #-64]	@ Counts, Counts
	add	r2, r2, r0	@ total.991, total.990, Counts
	b	.L66	@
.L102:
	sub	r9, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r9, r8]	@, Counts
	ldr	r2, [fp, #-72]	@ Counts, Counts
	add	r1, r1, r2	@ total.989, total.988, Counts
	b	.L62	@
.L100:
	sub	r0, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r0, r8]	@, Counts
	ldr	r1, [fp, #-80]	@ Counts, Counts
	add	r3, r3, r1	@ total.752, prephitmp.733, Counts
	b	.L58	@
.L128:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_BuildModeTree, .-VP6_BuildModeTree
	.align	2
	.global	VP6_ConfigureContexts
	.type	VP6_ConfigureContexts, %function
VP6_ConfigureContexts:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	ldrb	r6, [r0, #514]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r5, [r0, #515]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r2, [r3, #0]	@, <variable>.M
	ldr	r9, [r3, #24]	@, <variable>.M
	ldr	r8, [r3, #48]	@, <variable>.M
	ldr	sl, [r3, #72]	@, <variable>.M
	str	r2, [fp, #-52]	@, %sfp
	str	r9, [fp, #-56]	@, %sfp
	ldr	r7, [r3, #96]	@, <variable>.M
	ldr	r2, [r3, #8]	@, <variable>.M
	str	r8, [fp, #-48]	@, %sfp
	str	sl, [fp, #-72]	@, %sfp
	ldr	r8, [r3, #4]	@, <variable>.C
	ldr	r9, [fp, #-52]	@, %sfp
	ldr	sl, [fp, #-56]	@, %sfp
	ldrb	r4, [r0, #516]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	ip, [r0, #517]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r7, [fp, #-80]	@, %sfp
	str	r2, [fp, #-108]	@, %sfp
	ldr	r7, [r3, #28]	@, <variable>.C
	mul	r2, r9, r6	@ tmp197,, <variable>.DcProbs
	str	r8, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	mul	r8, sl, r5	@ tmp207,, <variable>.DcProbs
	ldr	sl, [fp, #-72]	@, %sfp
	ldrb	r1, [r0, #518]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r2, r2, #128	@ tmp199, tmp197,
	str	r7, [fp, #-64]	@, %sfp
	mul	r7, r9, r4	@ tmp217,, <variable>.DcProbs
	add	r8, r8, #128	@, tmp207,
	mul	r9, sl, ip	@ tmp227,, <variable>.DcProbs
	ldr	sl, [fp, #-80]	@, %sfp
	str	r8, [fp, #-92]	@, %sfp
	mul	r8, sl, r1	@ tmp237,, <variable>.DcProbs
	add	sl, r7, #128	@, tmp217,
	ldr	r7, [fp, #-108]	@, %sfp
	add	r9, r9, #128	@ tmp229, tmp227,
	str	sl, [fp, #-84]	@, %sfp
	add	r8, r8, #128	@, tmp237,
	str	r8, [fp, #-96]	@, %sfp
	mul	sl, r7, r6	@ tmp259,, <variable>.DcProbs
	ldr	r8, [r3, #76]	@, <variable>.C
	ldr	r7, [r3, #52]	@, <variable>.C
	add	sl, sl, #128	@ tmp261, tmp259,
	str	r7, [fp, #-68]	@, %sfp
	str	r8, [fp, #-76]	@, %sfp
	ldr	r8, [r3, #100]	@, <variable>.C
	ldr	r7, [fp, #-60]	@, %sfp
	add	r2, r7, r2, asr #8	@,,, tmp199,
	ldr	r7, [r3, #12]	@, <variable>.C
	str	r2, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	str	r8, [fp, #-104]	@, %sfp
	ldr	r8, [fp, #-64]	@, %sfp
	str	r7, [fp, #-144]	@, %sfp
	add	r7, r8, r2, asr #8	@,,,,
	ldr	r8, [fp, #-84]	@, %sfp
	str	r7, [fp, #-88]	@, %sfp
	ldr	r7, [fp, #-68]	@, %sfp
	ldrb	r2, [r0, #519]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r7, r7, r8, asr #8	@,,,,
	ldrb	r8, [r0, #520]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r7, [fp, #-116]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	str	r8, [fp, #-92]	@, %sfp
	ldrb	r8, [r0, #521]	@ zero_extendqisi2	@, <variable>.DcProbs
	add	r9, r7, r9, asr #8	@, Temp.1290,, tmp229,
	ldr	r7, [fp, #-96]	@, %sfp
	cmp	r9, #255	@ Temp.1290,
	movge	r9, #255	@ Temp.1291,
	cmp	r9, #1	@ Temp.1291,
	movlt	r9, #1	@ tmp233,
	str	r8, [fp, #-136]	@, %sfp
	ldr	r8, [fp, #-104]	@, %sfp
	add	r8, r8, r7, asr #8	@,,,,
	ldrb	r7, [r0, #522]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r8, [fp, #-84]	@, %sfp
	ldr	r8, [fp, #-144]	@, %sfp
	str	r7, [fp, #-96]	@, %sfp
	ldrb	r7, [r0, #523]	@ zero_extendqisi2	@, <variable>.DcProbs
	add	sl, r8, sl, asr #8	@, Temp.1318,, tmp261,
	ldr	r8, [fp, #-100]	@, %sfp
	cmp	sl, #255	@ Temp.1318,
	movge	sl, #255	@ Temp.1319,
	cmp	sl, #1	@ Temp.1319,
	movlt	sl, #1	@ Temp.1319,
	str	r7, [fp, #-140]	@, %sfp
	cmp	r8, #255	@,
	movge	r8, #255	@,
	ldrb	r7, [r0, #524]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r8, [fp, #-112]	@, %sfp
	ldr	r8, [fp, #-88]	@, %sfp
	str	r7, [fp, #-100]	@, %sfp
	ldr	r7, [fp, #-84]	@, %sfp
	cmp	r8, #255	@,
	movge	r8, #255	@,
	str	r8, [fp, #-88]	@, %sfp
	cmp	r7, #255	@,
	movge	r7, #255	@,
	ldr	r8, [fp, #-116]	@ Temp.1280, %sfp
	str	r7, [fp, #-116]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	cmp	r8, #255	@ Temp.1280,
	movge	r8, #255	@ Temp.1280,
	str	sl, [fp, #-112]	@ Temp.1319, %sfp
	cmp	r8, #1	@ Temp.1280,
	movlt	r8, #1	@ tmp223,
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	r7, [fp, #-84]	@, %sfp
	ldr	sl, [fp, #-84]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	strb	r9, [r0, #1155]	@ tmp233, <variable>.DcNodeContexts
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	r7, [fp, #-88]	@, %sfp
	strb	sl, [r0, #1152]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-92]	@, %sfp
	ldr	r7, [fp, #-116]	@ tmp243, %sfp
	strb	sl, [r0, #1153]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-136]	@, %sfp
	cmp	r7, #1	@ tmp243,
	movlt	r7, #1	@ tmp243,
	strb	r8, [r0, #1154]	@ tmp223, <variable>.DcNodeContexts
	strb	r7, [r0, #1156]	@ tmp243, <variable>.DcNodeContexts
	ldr	r8, [fp, #-140]	@, %sfp
	ldr	r7, [fp, #-96]	@, %sfp
	strb	r9, [r0, #1158]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1159]	@, <variable>.DcNodeContexts
	ldr	r9, [fp, #-100]	@, %sfp
	ldr	sl, [fp, #-112]	@, %sfp
	strb	r7, [r0, #1160]	@, <variable>.DcNodeContexts
	strb	r8, [r0, #1161]	@, <variable>.DcNodeContexts
	ldr	r7, [r3, #32]	@, <variable>.M
	ldr	r8, [r3, #56]	@, <variable>.M
	strb	r9, [r0, #1162]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1163]	@, <variable>.DcNodeContexts
	ldr	r9, [r3, #80]	@, <variable>.M
	ldr	sl, [r3, #104]	@, <variable>.M
	strb	r2, [r0, #1157]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	str	r7, [fp, #-84]	@, %sfp
	str	r8, [fp, #-112]	@, %sfp
	str	r9, [fp, #-152]	@, %sfp
	str	sl, [fp, #-160]	@, %sfp
	ldr	r7, [r3, #16]	@, <variable>.M
	ldr	r8, [r3, #40]	@, <variable>.M
	ldr	r9, [r3, #64]	@, <variable>.M
	str	r7, [fp, #-116]	@, %sfp
	str	r8, [fp, #-120]	@, %sfp
	ldr	r8, [fp, #-116]	@, %sfp
	ldr	sl, [r3, #88]	@, <variable>.M
	ldr	r7, [r3, #112]	@, <variable>.M
	mul	r6, r8, r6	@ tmp321,, <variable>.DcProbs
	str	r9, [fp, #-124]	@, %sfp
	str	sl, [fp, #-128]	@, %sfp
	ldr	r9, [r3, #116]	@, <variable>.C
	ldr	sl, [fp, #-120]	@, %sfp
	str	r7, [fp, #-132]	@, %sfp
	ldr	r8, [fp, #-124]	@, %sfp
	ldr	r7, [r3, #36]	@, <variable>.C
	str	r9, [fp, #-184]	@, %sfp
	mul	r9, sl, r5	@ tmp331,, <variable>.DcProbs
	add	sl, r6, #128	@, tmp321,
	ldr	r6, [fp, #-128]	@, %sfp
	str	r7, [fp, #-88]	@, %sfp
	str	sl, [fp, #-192]	@, %sfp
	mul	r7, r8, r4	@ tmp341,, <variable>.DcProbs
	add	r8, r9, #128	@, tmp331,
	mul	sl, r6, ip	@ tmp351,, <variable>.DcProbs
	ldr	r6, [fp, #-132]	@, %sfp
	str	r8, [fp, #-200]	@, %sfp
	add	r7, r7, #128	@, tmp341,
	ldr	r9, [fp, #-84]	@, %sfp
	mul	r8, r6, r1	@ tmp361,, <variable>.DcProbs
	str	r7, [fp, #-208]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	add	r6, sl, #128	@, tmp351,
	mul	r5, r9, r5	@ tmp269,, <variable>.DcProbs
	str	r6, [fp, #-216]	@, %sfp
	add	r9, r8, #128	@, tmp361,
	ldr	r8, [fp, #-152]	@, %sfp
	mul	r6, r7, r4	@ tmp279,, <variable>.DcProbs
	ldr	sl, [fp, #-160]	@, %sfp
	mul	r7, r8, ip	@ tmp289,, <variable>.DcProbs
	str	r9, [fp, #-224]	@, %sfp
	mul	r8, sl, r1	@ tmp299,, <variable>.DcProbs
	add	r4, r6, #128	@ tmp281, tmp279,
	ldr	sl, [r3, #60]	@, <variable>.C
	add	r5, r5, #128	@ tmp271, tmp269,
	ldr	r6, [r3, #84]	@, <variable>.C
	add	ip, r7, #128	@ tmp291, tmp289,
	ldr	r9, [fp, #-88]	@, %sfp
	add	r1, r8, #128	@ tmp301, tmp299,
	str	sl, [fp, #-148]	@, %sfp
	add	r4, sl, r4, asr #8	@, Temp.1340,, tmp281,
	add	r5, r9, r5, asr #8	@,,, tmp271,
	str	r6, [fp, #-156]	@, %sfp
	str	r5, [fp, #-232]	@, %sfp
	add	ip, r6, ip, asr #8	@, Temp.1351,, tmp291,
	ldr	r7, [r3, #108]	@, <variable>.C
	cmp	r4, #255	@ Temp.1340,
	movge	r4, #255	@ Temp.1341,
	ldr	r9, [r3, #20]	@, <variable>.C
	cmp	ip, #255	@ Temp.1351,
	movge	ip, #255	@ Temp.1352,
	ldr	sl, [r3, #44]	@, <variable>.C
	add	r1, r7, r1, asr #8	@, Temp.1362,, tmp301,
	ldr	r8, [fp, #-192]	@, %sfp
	cmp	r4, #1	@ Temp.1341,
	movlt	r4, #1	@ tmp285,
	str	r7, [fp, #-164]	@, %sfp
	cmp	ip, #1	@ Temp.1352,
	movlt	ip, #1	@ tmp295,
	ldr	r7, [fp, #-200]	@, %sfp
	cmp	r1, #255	@ Temp.1362,
	movge	r1, #255	@ Temp.1363,
	ldr	r5, [r3, #68]	@, <variable>.C
	add	r6, r9, r8, asr #8	@, Temp.1379,,,
	str	r9, [fp, #-168]	@, %sfp
	cmp	r6, #255	@ Temp.1379,
	movge	r6, #255	@ Temp.1380,
	add	r9, sl, r7, asr #8	@, Temp.1390,,,
	str	sl, [fp, #-172]	@, %sfp
	ldr	sl, [fp, #-208]	@, %sfp
	cmp	r9, #255	@ Temp.1390,
	movge	r9, #255	@ Temp.1391,
	ldr	r3, [r3, #92]	@, <variable>.C
	cmp	r9, #1	@ Temp.1391,
	movlt	r9, #1	@ tmp337,
	ldr	r8, [fp, #-216]	@, %sfp
	cmp	r1, #1	@ Temp.1363,
	movlt	r1, #1	@ tmp305,
	add	r7, r5, sl, asr #8	@, Temp.1401,,,
	str	r5, [fp, #-176]	@, %sfp
	ldr	r5, [fp, #-224]	@, %sfp
	cmp	r7, #255	@ Temp.1401,
	movge	r7, #255	@ Temp.1402,
	add	sl, r3, r8, asr #8	@, Temp.1412,,,
	str	r3, [fp, #-180]	@, %sfp
	ldr	r3, [fp, #-184]	@, %sfp
	cmp	sl, #255	@ Temp.1412,
	movge	sl, #255	@ Temp.1413,
	strb	r4, [r0, #1165]	@ tmp285, <variable>.DcNodeContexts
	cmp	r6, #1	@ Temp.1380,
	movlt	r6, #1	@ tmp327,
	add	r8, r3, r5, asr #8	@, Temp.1423,,,
	ldr	r4, [fp, #-136]	@, %sfp
	ldr	r5, [fp, #-92]	@, %sfp
	cmp	r8, #255	@ Temp.1423,
	movge	r8, #255	@ Temp.1424,
	ldr	r3, [fp, #-232]	@ Temp.1330, %sfp
	cmp	r7, #1	@ Temp.1402,
	movlt	r7, #1	@ tmp347,
	strb	ip, [r0, #1166]	@ tmp295, <variable>.DcNodeContexts
	cmp	sl, #1	@ Temp.1413,
	movlt	sl, #1	@ tmp357,
	ldr	ip, [fp, #-96]	@, %sfp
	cmp	r3, #255	@ Temp.1330,
	movge	r3, #255	@ Temp.1330,
	strb	r9, [r0, #1175]	@ tmp337, <variable>.DcNodeContexts
	cmp	r3, #1	@ Temp.1330,
	movlt	r3, #1	@ tmp275,
	ldr	r9, [fp, #-140]	@, %sfp
	cmp	r8, #1	@ Temp.1424,
	movlt	r8, #1	@ tmp367,
	strb	r3, [r0, #1164]	@ tmp275, <variable>.DcNodeContexts
	strb	r1, [r0, #1167]	@ tmp305, <variable>.DcNodeContexts
	strb	r6, [r0, #1174]	@ tmp327, <variable>.DcNodeContexts
	strb	r7, [r0, #1176]	@ tmp347, <variable>.DcNodeContexts
	strb	sl, [r0, #1177]	@ tmp357, <variable>.DcNodeContexts
	strb	r8, [r0, #1178]	@ tmp367, <variable>.DcNodeContexts
	strb	r2, [r0, #1168]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r5, [r0, #1169]	@, <variable>.DcNodeContexts
	strb	r4, [r0, #1170]	@, <variable>.DcNodeContexts
	strb	ip, [r0, #1171]	@, <variable>.DcNodeContexts
	strb	r9, [r0, #1172]	@, <variable>.DcNodeContexts
	ldrb	r5, [r0, #525]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r4, [r0, #526]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r8, [fp, #-56]	@, %sfp
	ldrb	sl, [r0, #530]	@ zero_extendqisi2	@, <variable>.DcProbs
	ldrb	r6, [r0, #532]	@ zero_extendqisi2	@, <variable>.DcProbs
	strb	r2, [r0, #1179]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	ldr	r2, [fp, #-116]	@, %sfp
	ldrb	ip, [r0, #527]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	mul	r1, r7, r5	@ tmp383,, <variable>.DcProbs
	str	sl, [fp, #-52]	@, %sfp
	ldr	r7, [fp, #-120]	@, %sfp
	mul	sl, r8, r4	@ tmp393,, <variable>.DcProbs
	ldr	r8, [fp, #-124]	@, %sfp
	str	r6, [fp, #-56]	@, %sfp
	add	r1, r1, #128	@ tmp385, tmp383,
	mul	r6, r2, r5	@ tmp507,, <variable>.DcProbs
	ldrb	r9, [r0, #528]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r3, [fp, #-100]	@, %sfp
	add	sl, sl, #128	@ tmp395, tmp393,
	mul	r2, r7, r4	@ tmp517,, <variable>.DcProbs
	add	r6, r6, #128	@, tmp507,
	mul	r7, r8, ip	@ tmp527,, <variable>.DcProbs
	ldr	r8, [fp, #-128]	@, %sfp
	strb	r3, [r0, #1173]	@, <variable>.DcNodeContexts
	add	r2, r2, #128	@, tmp517,
	ldrb	r3, [r0, #529]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r6, [fp, #-116]	@, %sfp
	mul	r6, r8, r9	@ tmp537,, <variable>.DcProbs
	ldr	r8, [fp, #-132]	@, %sfp
	str	r2, [fp, #-120]	@, %sfp
	mul	r2, r8, r3	@ tmp547,, <variable>.DcProbs
	add	r8, r7, #128	@, tmp527,
	ldr	r7, [fp, #-48]	@, %sfp
	str	r8, [fp, #-124]	@, %sfp
	mul	r8, r7, ip	@ tmp403,, <variable>.DcProbs
	add	r7, r6, #128	@, tmp537,
	ldr	r6, [fp, #-72]	@, %sfp
	str	r7, [fp, #-128]	@, %sfp
	add	r8, r8, #128	@ tmp405, tmp403,
	mul	r7, r6, r9	@ tmp413,, <variable>.DcProbs
	add	r6, r2, #128	@, tmp547,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r6, [fp, #-132]	@, %sfp
	add	r7, r7, #128	@ tmp415, tmp413,
	mul	r6, r2, r3	@ tmp423,, <variable>.DcProbs
	ldr	r2, [fp, #-108]	@, %sfp
	mul	r5, r2, r5	@ tmp445,, <variable>.DcProbs
	ldr	r2, [fp, #-84]	@, %sfp
	add	r6, r6, #128	@ tmp425, tmp423,
	mul	r4, r2, r4	@ tmp455,, <variable>.DcProbs
	ldr	r2, [fp, #-112]	@, %sfp
	add	r5, r5, #128	@ tmp447, tmp445,
	mul	ip, r2, ip	@ tmp465,, <variable>.DcProbs
	ldr	r2, [fp, #-152]	@, %sfp
	add	r4, r4, #128	@ tmp457, tmp455,
	mul	r9, r2, r9	@ tmp475,, <variable>.DcProbs
	ldr	r2, [fp, #-160]	@, %sfp
	add	ip, ip, #128	@ tmp467, tmp465,
	mul	r3, r2, r3	@ tmp485,, <variable>.DcProbs
	ldr	r2, [fp, #-60]	@, %sfp
	add	r9, r9, #128	@ tmp477, tmp475,
	add	r1, r2, r1, asr #8	@, Temp.1080,, tmp385,
	ldr	r2, [fp, #-64]	@, %sfp
	add	r3, r3, #128	@, tmp485,
	cmp	r1, #255	@ Temp.1080,
	movge	r1, #255	@ Temp.1080,
	add	sl, r2, sl, asr #8	@, Temp.1085,, tmp395,
	ldrb	r2, [r0, #533]	@ zero_extendqisi2	@, <variable>.DcProbs
	cmp	sl, #255	@ Temp.1085,
	movge	sl, #255	@ Temp.1085,
	str	r2, [fp, #-60]	@, %sfp
	str	sl, [fp, #-64]	@ Temp.1085, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	str	r3, [fp, #-48]	@, %sfp
	add	r8, sl, r8, asr #8	@, Temp.1158,, tmp405,
	ldr	sl, [fp, #-76]	@, %sfp
	str	r1, [fp, #-80]	@ Temp.1080, %sfp
	add	r7, sl, r7, asr #8	@, Temp.1169,, tmp415,
	ldr	sl, [fp, #-104]	@, %sfp
	ldrb	r2, [r0, #534]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r6, sl, r6, asr #8	@, Temp.1180,, tmp425,
	ldr	sl, [fp, #-144]	@, %sfp
	ldrb	r3, [r0, #535]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r5, sl, r5, asr #8	@, Temp.1197,, tmp447,
	ldr	sl, [fp, #-88]	@, %sfp
	ldrb	r1, [r0, #531]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r4, sl, r4, asr #8	@,,, tmp457,
	str	r4, [fp, #-88]	@, %sfp
	ldr	r4, [fp, #-148]	@, %sfp
	ldr	sl, [fp, #-156]	@, %sfp
	add	ip, r4, ip, asr #8	@,,, tmp467,
	ldr	r4, [fp, #-48]	@, %sfp
	str	ip, [fp, #-84]	@, %sfp
	add	r9, sl, r9, asr #8	@, Temp.1230,, tmp477,
	ldr	ip, [fp, #-164]	@, %sfp
	add	sl, ip, r4, asr #8	@, Temp.1241,,,
	ldr	r4, [fp, #-116]	@, %sfp
	ldr	ip, [fp, #-168]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-120]	@, %sfp
	str	ip, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-172]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-124]	@, %sfp
	str	ip, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-176]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-128]	@, %sfp
	str	ip, [fp, #-68]	@, %sfp
	ldr	ip, [fp, #-180]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-132]	@, %sfp
	str	ip, [fp, #-48]	@, %sfp
	ldr	ip, [fp, #-184]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-80]	@, %sfp
	str	ip, [fp, #-104]	@, %sfp
	cmp	r4, #1	@,
	movlt	r4, #1	@,
	str	r4, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r4, [fp, #-88]	@ Temp.1209, %sfp
	cmp	ip, #1	@,
	movlt	ip, #1	@,
	cmp	sl, #255	@ Temp.1241,
	movge	sl, #255	@ Temp.1241,
	str	ip, [fp, #-108]	@, %sfp
	cmp	r8, #255	@ Temp.1158,
	movge	r8, #255	@ Temp.1159,
	ldr	ip, [fp, #-84]	@ Temp.1220, %sfp
	cmp	r7, #255	@ Temp.1169,
	movge	r7, #255	@ Temp.1170,
	str	sl, [fp, #-84]	@ Temp.1241, %sfp
	cmp	r6, #255	@ Temp.1180,
	movge	r6, #255	@ Temp.1181,
	ldr	sl, [fp, #-76]	@, %sfp
	cmp	r9, #255	@ Temp.1230,
	movge	r9, #255	@ Temp.1231,
	cmp	r8, #1	@ Temp.1159,
	movlt	r8, #1	@ tmp409,
	cmp	r7, #1	@ Temp.1170,
	movlt	r7, #1	@ tmp419,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-76]	@, %sfp
	ldr	sl, [fp, #-72]	@, %sfp
	cmp	r6, #1	@ Temp.1181,
	movlt	r6, #1	@ tmp429,
	cmp	r9, #1	@ Temp.1231,
	movlt	r9, #1	@ tmp481,
	strb	r8, [r0, #1187]	@ tmp409, <variable>.DcNodeContexts
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-72]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	cmp	r5, #255	@ Temp.1197,
	movge	r5, #255	@ Temp.1198,
	strb	r7, [r0, #1188]	@ tmp419, <variable>.DcNodeContexts
	cmp	r4, #255	@ Temp.1209,
	movge	r4, #255	@ Temp.1209,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-68]	@, %sfp
	ldr	sl, [fp, #-48]	@, %sfp
	cmp	ip, #255	@ Temp.1220,
	movge	ip, #255	@ Temp.1220,
	ldr	r7, [fp, #-76]	@ tmp513, %sfp
	cmp	r5, #1	@ Temp.1198,
	movlt	r5, #1	@ tmp451,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-104]	@, %sfp
	cmp	r4, #1	@ Temp.1209,
	movlt	r4, #1	@ tmp461,
	cmp	ip, #1	@ Temp.1220,
	movlt	ip, #1	@ tmp471,
	cmp	r7, #1	@ tmp513,
	movlt	r7, #1	@ tmp513,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-48]	@, %sfp
	ldr	sl, [fp, #-92]	@, %sfp
	strb	sl, [r0, #1180]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-136]	@, %sfp
	strb	sl, [r0, #1181]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-96]	@, %sfp
	strb	sl, [r0, #1182]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-140]	@, %sfp
	strb	sl, [r0, #1183]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-100]	@, %sfp
	strb	sl, [r0, #1184]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-80]	@, %sfp
	strb	sl, [r0, #1185]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-108]	@, %sfp
	strb	sl, [r0, #1186]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-84]	@ tmp491, %sfp
	strb	r6, [r0, #1189]	@ tmp429, <variable>.DcNodeContexts
	cmp	sl, #1	@ tmp491,
	movlt	sl, #1	@ tmp491,
	ldr	r8, [fp, #-52]	@, %sfp
	strb	r9, [r0, #1199]	@ tmp481, <variable>.DcNodeContexts
	strb	sl, [r0, #1200]	@ tmp491, <variable>.DcNodeContexts
	ldr	r9, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-60]	@, %sfp
	ldr	r6, [fp, #-72]	@ tmp523, %sfp
	strb	r5, [r0, #1196]	@ tmp451, <variable>.DcNodeContexts
	strb	r4, [r0, #1197]	@ tmp461, <variable>.DcNodeContexts
	cmp	r6, #1	@ tmp523,
	movlt	r6, #1	@ tmp523,
	ldr	r5, [fp, #-68]	@ tmp533, %sfp
	ldr	r4, [fp, #-64]	@ tmp543, %sfp
	strb	ip, [r0, #1198]	@ tmp471, <variable>.DcNodeContexts
	cmp	r5, #1	@ tmp533,
	movlt	r5, #1	@ tmp533,
	ldr	ip, [fp, #-48]	@ tmp553, %sfp
	cmp	r4, #1	@ tmp543,
	movlt	r4, #1	@ tmp543,
	strb	r8, [r0, #1190]	@, <variable>.DcNodeContexts
	cmp	ip, #1	@ tmp553,
	movlt	ip, #1	@ tmp553,
	strb	r1, [r0, #1191]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1192]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1193]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1194]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1195]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r8, [r0, #1201]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1202]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1217]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r7, [r0, #1207]	@ tmp513, <variable>.DcNodeContexts
	strb	r6, [r0, #1208]	@ tmp523, <variable>.DcNodeContexts
	strb	r5, [r0, #1209]	@ tmp533, <variable>.DcNodeContexts
	strb	r4, [r0, #1210]	@ tmp543, <variable>.DcNodeContexts
	strb	ip, [r0, #1211]	@ tmp553, <variable>.DcNodeContexts
	strb	r8, [r0, #1212]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1213]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1214]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1215]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1216]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1203]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1204]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1205]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1206]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_ConfigureContexts, .-VP6_ConfigureContexts
	.align	2
	.global	VP6_BoolTreeToHuffCodes
	.type	VP6_BoolTreeToHuffCodes, %function
VP6_BoolTreeToHuffCodes:
	.fnstart
.LFB1363:
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
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	mul	r3, r2, ip	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ tmp162, tmp161,
	str	r4, [r1, #44]	@ tmp162,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp163,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp165,* pBoolTreeProbs
	rsb	r3, ip, #255	@ tmp164, tmp163,
	mul	r4, r2, r3	@ tmp166, tmp165, tmp164
	mov	ip, r4, lsr #8	@ tmp167, tmp166,
	str	ip, [r1, #0]	@ tmp167,* pHuffProbs
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp168,* pBoolTreeProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp169,
	rsb	r3, r3, #255	@ Prob, tmp168,
	mul	r2, r3, r4	@ tmp170, Prob, tmp169
	mov	ip, r2, lsr #8	@ tmp171, tmp170,
	str	ip, [r1, #4]	@ tmp171,
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp172,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp174,
	rsb	r2, r4, #255	@ tmp173, tmp172,
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp176,
	mul	r2, r3, r2	@ D.36287, Prob, tmp173
	mov	r2, r2, lsr #8	@ Prob.1463, D.36287,
	mul	ip, ip, r2	@ tmp175, tmp174, Prob.1463
	mov	ip, ip, lsr #8	@ Prob1, tmp175,
	mul	r3, r4, ip	@ tmp177, tmp176, Prob1
	mov	r4, r3, lsr #8	@ tmp178, tmp177,
	str	r4, [r1, #8]	@ tmp178,
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp179,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp181,
	rsb	r3, r3, #255	@ tmp180, tmp179,
	mul	r3, r3, ip	@ D.36300, tmp180, Prob1
	mov	r3, r3, lsr #8	@ Prob1.1465, D.36300,
	mul	ip, r4, r3	@ tmp182, tmp181, Prob1.1465
	mov	ip, ip, lsr #8	@ tmp183, tmp182,
	str	ip, [r1, #12]	@ tmp183,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp184,
	rsb	ip, r4, #255	@ tmp185, tmp184,
	mul	r4, ip, r3	@ tmp186, tmp185, Prob1.1465
	mov	r3, r4, lsr #8	@ tmp187, tmp186,
	str	r3, [r1, #16]	@ tmp187,
	ldrb	r4, [r0, #3]	@ zero_extendqisi2	@ tmp188,
	ldrb	r3, [r0, #6]	@ zero_extendqisi2	@ tmp190,
	rsb	ip, r4, #255	@ tmp189, tmp188,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	mul	r2, ip, r2	@ D.36314, tmp189, Prob.1463
	mov	ip, r2, lsr #8	@ Prob.1468, D.36314,
	mul	r3, r3, ip	@ tmp191, tmp190, Prob.1468
	mov	r3, r3, lsr #8	@ Prob1.1469, tmp191,
	mul	r2, r4, r3	@ tmp193, tmp192, Prob1.1469
	mov	r2, r2, lsr #8	@ tmp194, tmp193,
	str	r2, [r1, #20]	@ tmp194,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp195,
	rsb	r2, r4, #255	@ tmp196, tmp195,
	mul	r4, r2, r3	@ tmp197, tmp196, Prob1.1469
	mov	r3, r4, lsr #8	@ tmp198, tmp197,
	str	r3, [r1, #24]	@ tmp198,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp199,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp201,
	rsb	r2, r4, #255	@ tmp200, tmp199,
	ldrb	r4, [r0, #9]	@ zero_extendqisi2	@ tmp203,
	mul	r2, r2, ip	@ D.36332, tmp200, Prob.1468
	mov	r2, r2, lsr #8	@ Prob.1472, D.36332,
	mul	r3, r3, r2	@ tmp202, tmp201, Prob.1472
	mov	r3, r3, lsr #8	@ Prob1.1473, tmp202,
	mul	ip, r4, r3	@ tmp204, tmp203, Prob1.1473
	mov	ip, ip, lsr #8	@ tmp205, tmp204,
	str	ip, [r1, #28]	@ tmp205,
	ldrb	ip, [r0, #9]	@ zero_extendqisi2	@ tmp206,
	rsb	ip, ip, #255	@ tmp207, tmp206,
	mul	r3, ip, r3	@ tmp208, tmp207, Prob1.1473
	mov	ip, r3, lsr #8	@ tmp209, tmp208,
	str	ip, [r1, #32]	@ tmp209,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp210,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp212,
	rsb	r3, r3, #255	@ tmp211, tmp210,
	mul	r3, r3, r2	@ D.36350, tmp211, Prob.1472
	mov	r3, r3, lsr #8	@ Prob.1476, D.36350,
	mul	r2, ip, r3	@ tmp213, tmp212, Prob.1476
	mov	r2, r2, lsr #8	@ tmp214, tmp213,
	str	r2, [r1, #36]	@ tmp214,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp215,
	rsb	r2, ip, #255	@ tmp216, tmp215,
	mul	r0, r2, r3	@ tmp217, tmp216, Prob.1476
	mov	r3, r0, lsr #8	@ tmp218, tmp217,
	str	r3, [r1, #40]	@ tmp218,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VP6_BoolTreeToHuffCodes, .-VP6_BoolTreeToHuffCodes
	.align	2
	.global	VP6_ZerosBoolTreeToHuffCodes
	.type	VP6_ZerosBoolTreeToHuffCodes, %function
VP6_ZerosBoolTreeToHuffCodes:
	.fnstart
.LFB1364:
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
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ tmp148,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp149,* pBoolTreeProbs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ tmp151,
	mul	r3, ip, r4	@ tmp150, tmp149, tmp148
	mov	ip, r3, lsr #8	@ Prob, tmp150,
	mul	r4, r2, ip	@ tmp152, tmp151, Prob
	mov	r2, r4, lsr #8	@ tmp153, tmp152,
	str	r2, [r1, #0]	@ tmp153,* pHuffProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp154,
	rsb	r2, r4, #255	@ tmp155, tmp154,
	mul	r4, ip, r2	@ tmp156, Prob, tmp155
	mov	r3, r4, lsr #8	@ tmp157, tmp156,
	str	r3, [r1, #4]	@ tmp157,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp158,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	rsb	r4, r2, #255	@ tmp159, tmp158,
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp162,
	mul	r3, ip, r4	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ Prob.1505, tmp161,
	mul	ip, r2, r4	@ tmp163, tmp162, Prob.1505
	mov	r2, ip, lsr #8	@ tmp164, tmp163,
	str	r2, [r1, #8]	@ tmp164,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp165,
	rsb	r2, ip, #255	@ tmp166, tmp165,
	mul	r3, r2, r4	@ tmp167, tmp166, Prob.1505
	mov	ip, r3, lsr #8	@ tmp168, tmp167,
	str	ip, [r1, #12]	@ tmp168,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp169,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp171,
	rsb	r3, r2, #255	@ tmp170, tmp169,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp174,
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ tmp175,
	mul	r3, r4, r3	@ tmp172, tmp171, tmp170
	mov	r4, r3, lsr #8	@ tmp173, tmp172,
	mul	r3, ip, r4	@ D.36410, tmp174, tmp173
	mov	r3, r3, lsr #8	@ Prob.1509, D.36410,
	mul	r2, r2, r3	@ tmp176, tmp175, Prob.1509
	mov	ip, r2, lsr #8	@ tmp177, tmp176,
	str	ip, [r1, #16]	@ tmp177,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp178,
	rsb	r2, r4, #255	@ tmp179, tmp178,
	mul	ip, r2, r3	@ tmp180, tmp179, Prob.1509
	mov	r4, ip, lsr #8	@ tmp181, tmp180,
	str	r4, [r1, #20]	@ tmp181,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp182,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp184,
	rsb	r3, r2, #255	@ tmp183, tmp182,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp187,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp189,
	mul	r3, r4, r3	@ tmp185, tmp184, tmp183
	rsb	ip, ip, #255	@ tmp188, tmp187,
	mov	r3, r3, lsr #8	@ tmp186, tmp185,
	mul	r3, ip, r3	@ D.36426, tmp188, tmp186
	mov	ip, r3, lsr #8	@ Prob.1520, D.36426,
	mul	r2, r2, ip	@ tmp190, tmp189, Prob.1520
	mov	r2, r2, lsr #8	@ tmp191, tmp190,
	str	r2, [r1, #24]	@ tmp191,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	rsb	r2, r2, #255	@ tmp193, tmp192,
	mul	r3, r2, ip	@ tmp194, tmp193, Prob.1520
	mov	r2, r3, lsr #8	@ tmp195, tmp194,
	str	r2, [r1, #28]	@ tmp195,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp198,* pBoolTreeProbs
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp196,
	rsb	r2, ip, #255	@ tmp199, tmp198,
	rsb	ip, r3, #255	@ tmp197, tmp196,
	mul	r0, r2, ip	@ tmp200, tmp199, tmp197
	mov	r3, r0, lsr #8	@ tmp201, tmp200,
	str	r3, [r1, #32]	@ tmp201,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VP6_ZerosBoolTreeToHuffCodes, .-VP6_ZerosBoolTreeToHuffCodes
	.align	2
	.global	VP6_InsertSorted
	.type	VP6_InsertSorted, %function
VP6_InsertSorted:
	.fnstart
.LFB1365:
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
	ldr	r3, [r2, #0]	@ which,* pStartnode
	cmn	r3, #1	@ which,
	beq	.L137	@,
	add	r8, r1, r1, asl #1	@, tmp146, node, node,
	add	r4, r3, r3, asl #1	@, tmp150, which, which,
	add	r8, r0, r8, asl #2	@, prephitmp.1546, pSn, tmp146,
	add	r4, r0, r4, asl #2	@, D.36455, pSn, tmp150,
	ldr	r7, [r8, #8]	@ D.36459, <variable>.freq
	ldr	ip, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, ip	@ D.36459, <variable>.freq
	bls	.L138	@,
	mov	r6, r3	@ which.1561, which
	b	.L141	@
.L144:
	add	r4, r0, r4, asl #2	@, D.36455, pSn, tmp155,
	ldr	r5, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, r5	@ D.36459, <variable>.freq
	bls	.L140	@,
	mov	r6, ip	@ which.1561, which.1557
.L141:
	ldr	ip, [r4, #4]	@ which.1557, <variable>.next
	cmn	ip, #1	@ which.1557,
	add	r4, ip, ip, asl #1	@, tmp155, which.1557, which.1557,
	bne	.L144	@,
.L139:
	add	r6, r6, r6, asl #1	@, tmp160, which.1561, which.1561,
	add	r0, r0, r6, asl #2	@, tmp162, pSn, tmp160,
	str	r1, [r0, #4]	@ node, <variable>.next
	str	ip, [r8, #4]	@ which.1557, <variable>.next
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L140:
	cmp	ip, r3	@ which.1557, which
	bne	.L139	@,
.L138:
	str	r1, [r2, #0]	@ node,* pStartnode
	str	r3, [r8, #4]	@ which, <variable>.next
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L137:
	add	ip, r1, r1, asl #1	@, tmp165, node, node,
	add	r8, r0, ip, asl #2	@, prephitmp.1546, pSn, tmp165,
	b	.L138	@
	.fnend
	.size	VP6_InsertSorted, .-VP6_InsertSorted
	.align	2
	.global	VP6_BuildHuffTree
	.type	VP6_BuildHuffTree, %function
VP6_BuildHuffTree:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #380
	sub	sp, sp, #380	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #0	@
	mov	r4, #0	@ tmp306,
	str	r2, [fp, #-416]	@, %sfp
	str	r0, [fp, #-420]	@ pHn, %sfp
	str	r4, [fp, #-48]	@ tmp306, startnode
	beq	.L147	@,
	sub	r3, fp, #408	@ tmp307,,
	ldr	r0, [r1, #0]	@ prephitmp.1623,* pCounts
	ldr	r2, [fp, #-416]	@, %sfp
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ tmp317,
	cmp	r0, #0	@ prephitmp.1623,
	sub	ip, r2, #1	@ tmp456,,
	add	r2, r3, #8	@ ivtmp.1619, tmp307,
	orr	r5, r9, #1	@ tmp327, tmp317,
	and	ip, ip, #1	@ tmp458, tmp456,
	and	r5, r5, #225	@ tmp336, tmp327,
	mvn	r9, #0	@ tmp451,
	bfi	r5, r4, #5, #3	@ tmp336, tmp306,,
	strb	r5, [r3, #0]	@ tmp336,
	beq	.L179	@,
.L162:
	ldr	r4, [fp, #-416]	@, %sfp
	mov	r3, #1	@ i,
	str	r0, [r2, #0]	@ prephitmp.1623, <variable>.freq
	add	r0, r2, #12	@ ivtmp.1619, ivtmp.1619,
	cmp	r3, r4	@ i,
	str	r9, [r2, #-4]	@ tmp451, <variable>.next
	mov	r4, #4	@ ivtmp.1618,
	beq	.L174	@,
	cmp	ip, #0	@ tmp458,
	beq	.L149	@,
	sub	r2, fp, #32	@ tmp510,,
	ldr	ip, [r1, r4]	@ prephitmp.1623,* ivtmp.1618
	ldrb	r5, [r2, #-364]!	@ zero_extendqisi2	@ tmp511,
	cmp	ip, #0	@ prephitmp.1623,
	orr	r5, r5, r3	@ tmp514, tmp511,
	moveq	ip, r3	@ prephitmp.1623, i
	bfi	r5, r3, #1, #4	@ tmp514, i,,
	add	r3, r3, #1	@ i, i,
	bfc	r5, #5, #3	@ tmp516,,
	strb	r5, [r2, #0]	@ tmp516,
	streq	ip, [r1, r4]	@ prephitmp.1623,* ivtmp.1618
	add	r4, r4, #4	@ ivtmp.1618, ivtmp.1618,
	str	ip, [r0, #0]	@ prephitmp.1623, <variable>.freq
	ldr	r8, [fp, #-416]	@, %sfp
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	add	r0, r0, #12	@ ivtmp.1619, ivtmp.1619,
	cmp	r3, r8	@ i,
	beq	.L174	@,
.L149:
	add	r2, r3, #1	@ tmp459, i,
	add	r7, r3, r3, asl #1	@, tmp465, i, i,
	sub	r8, fp, #44	@,,
	ldr	r6, [r1, r4]	@ prephitmp.1623,* ivtmp.1618
	add	r7, r8, r7, asl #2	@, tmp467,, tmp465,
	add	sl, r2, r2, asl #1	@, tmp483, tmp459, tmp459,
	cmp	r6, #0	@ prephitmp.1623,
	add	r5, r4, #4	@ tmp460, ivtmp.1618,
	add	sl, r8, sl, asl #2	@, tmp485,, tmp483,
	ldrb	r8, [r7, #-364]	@ zero_extendqisi2	@ tmp469,
	moveq	r6, #1	@ prephitmp.1623,
	add	ip, r0, #12	@ tmp461, ivtmp.1619,
	orr	r8, r8, #1	@ tmp472, tmp469,
	bfi	r8, r3, #1, #4	@ tmp472, i,,
	bfc	r8, #5, #3	@ tmp474,,
	strb	r8, [r7, #-364]	@ tmp474,
	streq	r6, [r1, r4]	@ prephitmp.1623,* ivtmp.1618
	str	r6, [r0, #0]	@ prephitmp.1623, <variable>.freq
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	ldrb	r3, [sl, #-364]	@ zero_extendqisi2	@ tmp487,
	ldr	r0, [r1, r5]	@ prephitmp.1623,
	orr	r4, r3, #1	@ tmp490, tmp487,
	cmp	r0, #0	@ prephitmp.1623,
	bfi	r4, r2, #1, #4	@ tmp490, tmp459,,
	bfc	r4, #5, #3	@ tmp492,,
	strb	r4, [sl, #-364]	@ tmp492,
	moveq	sl, #1	@,
	streq	sl, [r1, r5]	@,
	moveq	r0, sl	@ prephitmp.1623,
.L167:
	str	r0, [ip, #0]	@ prephitmp.1623, <variable>.freq
	add	r3, r2, #1	@ i, tmp459,
	ldr	r0, [fp, #-416]	@, %sfp
	add	r4, r5, #4	@ ivtmp.1618, tmp460,
	str	r9, [ip, #-4]	@ tmp451, <variable>.next
	cmp	r3, r0	@ i,
	add	r0, ip, #12	@ ivtmp.1619, tmp461,
	bne	.L149	@,
.L174:
	ldr	sl, [fp, #-416]	@, %sfp
	cmp	sl, #1	@,
	beq	.L173	@,
	sub	r6, fp, #48	@ tmp436,,
	sub	r7, fp, #408	@ tmp447,,
	ldr	lr, [fp, #-416]	@, %sfp
	mov	r1, #1	@,
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	and	r5, lr, r1	@ tmp454,,
	bl	VP6_InsertSorted	@
	ldr	r0, [fp, #-416]	@, %sfp
	mov	r4, #2	@ i.1624,
	cmp	r0, #2	@,
	bls	.L173	@,
	cmp	r5, #0	@ tmp454,
	beq	.L176	@,
	mov	r1, r4	@, i.1624
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	mov	r4, #3	@ i.1624,
	bl	VP6_InsertSorted	@
	ldr	r1, [fp, #-416]	@, %sfp
	cmp	r1, r4	@, i.1624
	bls	.L173	@,
.L176:
	ldr	r8, [fp, #-416]	@ values, %sfp
.L151:
	add	r5, r4, #1	@ tmp455, i.1624,
	mov	r1, r4	@, i.1624
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	add	r4, r5, #1	@ i.1624, tmp455,
	mov	r0, r7	@, tmp447
	mov	r1, r5	@, tmp455
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	cmp	r8, r4	@ values, i.1624
	bhi	.L151	@,
.L173:
	ldr	r2, [fp, #-48]	@ prephitmp.1582, startnode
.L147:
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1582,
	sub	r4, fp, #44	@,,
	add	r3, r1, r2	@ tmp346, tmp440, prephitmp.1582
	add	ip, r4, r3, asl #2	@, tmp348,, tmp346,
	ldr	r3, [ip, #-360]	@ D.36508, <variable>.next
	cmn	r3, #1	@ D.36508,
	beq	.L154	@,
	ldr	r9, [fp, #-416]	@, %sfp
	sub	r7, fp, #408	@ tmp355,,
	ldr	r4, [fp, #-420]	@, %sfp
	sub	r6, r9, #-2147483646	@ tmp350,,
	sub	sl, r9, #2	@ tmp352,,
	add	r8, r9, r9, asl #1	@, tmp359,,,
	add	r6, r4, r6, asl #1	@, ivtmp.1602,, tmp350,
	mov	r4, r9	@ sncount,
	add	r5, r7, r8, asl #2	@, tmp361, tmp355, tmp359,
	and	r7, sl, #15	@ ivtmp.1606, tmp352,
	add	r5, r5, #8	@ ivtmp.1608, tmp361,
.L153:
	add	sl, r1, r2	@ tmp372, tmp440, prephitmp.1582
	add	r3, r3, r3, asl #1	@, tmp365, D.36508, D.36508,
	sub	r8, fp, #44	@,,
	add	ip, r4, r4, asl #1	@, tmp399, sncount, sncount,
	add	r3, r8, r3, asl #2	@, tmp367,, tmp365,
	add	lr, r8, sl, asl #2	@, tmp374, tmp2, tmp372,
	add	ip, r8, ip, asl #2	@, tmp401,, tmp399,
	mov	r1, r4	@, sncount
	ldrb	r8, [r3, #-364]	@ zero_extendqisi2	@ <variable>.value, <variable>.value
	sub	r0, fp, #408	@,,
	ldrb	r9, [lr, #-364]	@ zero_extendqisi2	@, <variable>.value
	sub	r2, fp, #48	@,,
	add	r4, r4, #1	@ sncount, sncount,
	str	r9, [fp, #-416]	@, %sfp
	ldr	r9, [r3, #-356]	@ <variable>.freq, <variable>.freq
	ldr	sl, [lr, #-356]	@ <variable>.freq, <variable>.freq
	strb	r8, [r6, #1]	@ <variable>.value, <variable>.rightunion.right
	ldr	r8, [fp, #-416]	@, %sfp
	add	sl, r9, sl	@ sumfreq, <variable>.freq, <variable>.freq
	ldrb	lr, [ip, #-364]	@ zero_extendqisi2	@,
	and	lr, lr, #254	@ tmp412, tmp403,
	strb	r8, [r6, #0]	@, <variable>.leftunion.left
	bfi	lr, r7, #1, #4	@ tmp412, ivtmp.1606,,
	strb	lr, [ip, #-364]	@ tmp412,
	mvn	ip, #0	@,
	str	ip, [r5, #-4]	@, <variable>.next
	ldr	lr, [r3, #-360]	@ <variable>.next, <variable>.next
	sub	r6, r6, #2	@ ivtmp.1602, ivtmp.1602,
	str	sl, [r5, #0]	@ sumfreq, <variable>.freq
	add	r5, r5, #12	@ ivtmp.1608, ivtmp.1608,
	str	lr, [fp, #-48]	@ <variable>.next, startnode
	bl	VP6_InsertSorted	@
	ldr	r2, [fp, #-48]	@ prephitmp.1582, startnode
	sub	r1, r7, #1	@ tmp433, ivtmp.1606,
	and	r7, r1, #15	@ ivtmp.1606, tmp433,
	sub	r0, fp, #44	@,,
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1582,
	add	r3, r1, r2	@ tmp429, tmp440, prephitmp.1582
	add	ip, r0, r3, asl #2	@, tmp431,, tmp429,
	ldr	r3, [ip, #-360]	@ D.36508, <variable>.next
	cmn	r3, #1	@ D.36508,
	bne	.L153	@,
.L154:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L179:
	mov	r0, #1	@ prephitmp.1623,
	str	r0, [r1, #0]	@ prephitmp.1623,* pCounts
	b	.L162	@
	.fnend
	.size	VP6_BuildHuffTree, .-VP6_BuildHuffTree
	.align	2
	.global	VP6_BuildHuffLookupTable
	.type	VP6_BuildHuffLookupTable, %function
VP6_BuildHuffLookupTable:
	.fnstart
.LFB1367:
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
	mov	r5, #0	@ i,
	mov	r6, r1	@ pHuffTable, pHuffTable
.L184:
	mov	r3, #0	@ j,
	mov	r2, r3	@ tmp193, j
.L183:
	add	r3, r3, #1	@ j, j,
	add	ip, r0, r2	@ D.36532, pHuffTreeRoot, tmp193
	rsb	r1, r3, #6	@ tmp145, j,
	mov	r1, r5, asr r1	@ tmp146, i,
	tst	r1, #1	@ tmp146,
	ldreqb	r4, [r0, r2]	@ zero_extendqisi2	@ tmp160,
	ldrneb	r4, [ip, #1]	@ zero_extendqisi2	@ tmp150,
	ubfx	r1, r4, #1, #4	@ torp$value, tmp160,,
	and	ip, r4, #1	@ torp$selector, tmp160,
	mov	r4, r4, lsr #5	@ torp$unused, tmp160,
	mov	r2, r1, asl #1	@ tmp193, torp$value,
	orr	r4, ip, r4, asl #5	@, SR.498, torp$selector, torp$unused,
	orr	r4, r4, r2	@ tmp176, SR.498, tmp193
	eor	r4, r4, #1	@ tmp178, tmp176,
	cmp	r3, #5	@ j,
	movhi	r4, #0	@, tmp186
	andls	r4, r4, #1	@,, tmp186, tmp178
	cmp	r4, #0	@ tmp186,
	bne	.L183	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@,* pHuffTable
	bfi	r2, r1, #4, #4	@ tmp187, torp$value,,
	bfi	r2, r3, #1, #3	@ tmp189, j,,
	mov	r3, r2	@ tmp191, tmp189
	bfi	r3, ip, #0, #1	@ tmp191, torp$selector,,
	strb	r3, [r5, r6]	@ tmp191,* pHuffTable
	add	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L184	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_BuildHuffLookupTable, .-VP6_BuildHuffLookupTable
	.align	2
	.global	VP6_BuildTreeTab
	.type	VP6_BuildTreeTab, %function
VP6_BuildTreeTab:
	.fnstart
.LFB1368:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #300
	sub	sp, sp, #300	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r1, #0	@,
	mov	r2, r1	@ k.1827,
	str	r1, [fp, #-332]	@, %sfp
.L189:
	ldr	r9, [fp, #-332]	@, %sfp
	mov	r1, #432	@,
	mla	r3, r1, r9, r0	@ tmp1043,,, pVp6CodecInfo
	mov	r1, #0	@ j,
	add	sl, r3, #8576	@ ivtmp.1721, tmp1043,
	add	r3, sl, #12	@ ivtmp.1721, ivtmp.1721,
.L190:
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r8, r2, #1	@ k.1961, k.1827,
	add	r4, r2, r0	@ tmp248, k.1827, pVp6CodecInfo
	add	r6, r8, #1	@ k.1957, k.1961,
	add	r5, r6, #1	@ k.1953, k.1957,
	add	ip, r8, r0	@ tmp253, k.1961, pVp6CodecInfo
	strb	r9, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r7, r5, #1	@ k.1949, k.1953,
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r2, r7, #1	@ k.1943, k.1949,
	add	r8, r2, #1	@ k.1939, k.1943,
	add	r4, r6, r0	@ tmp258, k.1957, pVp6CodecInfo
	add	r6, r5, r0	@ tmp263, k.1953, pVp6CodecInfo
	add	r5, r7, r0	@ tmp268, k.1949, pVp6CodecInfo
	strb	sl, [ip, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	sl, r2, r0	@ tmp273, k.1943, pVp6CodecInfo
	ldrb	r9, [r3, #2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r2, r8, #1	@ k.1933, k.1939,
	add	ip, r8, r0	@ tmp278, k.1939, pVp6CodecInfo
	add	r8, r2, r0	@ tmp283, k.1933, pVp6CodecInfo
	add	r2, r2, #1	@ k.1929, k.1933,
	add	r1, r1, #1	@ j, j,
	strb	r9, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r7, r2, r0	@, k.1929, pVp6CodecInfo
	str	r7, [fp, #-48]	@, %sfp
	add	r2, r2, #1	@ k.1918, k.1929,
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r4, r2, #1	@ k.1914, k.1918,
	add	r9, r2, r0	@, k.1918, pVp6CodecInfo
	str	r9, [fp, #-52]	@, %sfp
	add	r9, r4, r0	@, k.1914, pVp6CodecInfo
	str	r9, [fp, #-56]	@, %sfp
	str	r9, [fp, #-60]	@ tmp4, %sfp
	cmp	r1, #3	@ j,
	strb	r7, [r6, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	r7, r2, r0	@ tmp308, k.1918, pVp6CodecInfo
	ldrb	r4, [r3, #4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r2, r2, #119	@ k.1827, k.1918,
	str	r7, [fp, #-64]	@ tmp6, %sfp
	mov	r6, r7	@, tmp308
	str	r7, [fp, #-68]	@ tmp9, %sfp
	mov	r9, r7	@, tmp6
	str	r7, [fp, #-72]	@ tmp6, %sfp
	str	r7, [fp, #-76]	@ tmp9, %sfp
	str	r7, [fp, #-80]	@ tmp6, %sfp
	strb	r4, [r5, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r4, [r3, #5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-84]	@ tmp9, %sfp
	str	r7, [fp, #-88]	@ tmp9, %sfp
	str	r7, [fp, #-92]	@ tmp9, %sfp
	str	r7, [fp, #-96]	@ tmp9, %sfp
	strb	r4, [sl, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [fp, #-336]	@ tmp4, %sfp
	ldrb	sl, [r3, #6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-100]	@ tmp4, %sfp
	str	r7, [fp, #-104]	@ tmp4, %sfp
	str	r7, [fp, #-108]	@ tmp4, %sfp
	str	r7, [fp, #-112]	@ tmp4, %sfp
	strb	sl, [ip, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	ip, r7	@ tmp398, tmp4
	ldrb	sl, [r3, #7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-116]	@ tmp4, %sfp
	str	r7, [fp, #-120]	@ tmp4, %sfp
	str	r7, [fp, #-124]	@ tmp4, %sfp
	str	r7, [fp, #-128]	@ tmp4, %sfp
	str	r7, [fp, #-132]	@ tmp4, %sfp
	strb	sl, [r8, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	mov	sl, r7	@ tmp428, tmp4
	ldrb	r8, [r3, #8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-48]	@, %sfp
	str	r7, [fp, #-136]	@ tmp4, %sfp
	str	r7, [fp, #-140]	@ tmp4, %sfp
	str	r7, [fp, #-144]	@ tmp4, %sfp
	str	r7, [fp, #-148]	@ tmp4, %sfp
	str	r7, [fp, #-152]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	str	r7, [fp, #-48]	@ tmp4, %sfp
	ldrb	r8, [r3, #9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-156]	@ tmp4, %sfp
	str	r7, [fp, #-160]	@ tmp4, %sfp
	str	r7, [fp, #-164]	@ tmp4, %sfp
	str	r7, [fp, #-168]	@ tmp4, %sfp
	str	r7, [fp, #-172]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-56]	@, %sfp
	str	r7, [fp, #-52]	@ tmp4, %sfp
	ldrb	r8, [r3, #10]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-176]	@ tmp4, %sfp
	str	r7, [fp, #-180]	@ tmp4, %sfp
	str	r7, [fp, #-184]	@ tmp4, %sfp
	str	r7, [fp, #-188]	@ tmp4, %sfp
	str	r7, [fp, #-192]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	str	r7, [fp, #-56]	@ tmp4, %sfp
	ldrb	r8, [r3, #11]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-196]	@ tmp4, %sfp
	ldr	r4, [fp, #-60]	@, %sfp
	str	r7, [fp, #-200]	@ tmp4, %sfp
	str	r7, [fp, #-204]	@ tmp4, %sfp
	str	r7, [fp, #-208]	@ tmp4, %sfp
	str	r7, [fp, #-212]	@ tmp4, %sfp
	strb	r8, [r4, #1219]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [fp, #-60]	@ tmp4, %sfp
	ldrb	r8, [r3, #12]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-216]	@ tmp4, %sfp
	str	r7, [fp, #-220]	@ tmp4, %sfp
	str	r7, [fp, #-224]	@ tmp4, %sfp
	str	r7, [fp, #-228]	@ tmp4, %sfp
	str	r7, [fp, #-232]	@ tmp4, %sfp
	strb	r8, [r7, #1225]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	r8, r7	@ tmp578, tmp4
	ldr	r4, [fp, #-64]	@, %sfp
	ldrb	r7, [r3, #13]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-236]	@ tmp4, %sfp
	str	r6, [fp, #-240]	@ tmp4, %sfp
	str	r6, [fp, #-244]	@ tmp4, %sfp
	str	r6, [fp, #-248]	@ tmp4, %sfp
	str	r6, [fp, #-252]	@ tmp4, %sfp
	strb	r7, [r4, #1226]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-68]	@, %sfp
	str	r6, [fp, #-64]	@ tmp4, %sfp
	ldrb	r7, [r3, #14]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r6, [fp, #-256]	@ tmp4, %sfp
	str	r6, [fp, #-260]	@ tmp4, %sfp
	str	r6, [fp, #-264]	@ tmp4, %sfp
	str	r6, [fp, #-268]	@ tmp4, %sfp
	str	r6, [fp, #-272]	@ tmp4, %sfp
	strb	r7, [r4, #1227]	@ <variable>.leftunion.l, <variable>.TreeTab
	str	r6, [fp, #-68]	@ tmp4, %sfp
	ldrb	r7, [r3, #15]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-276]	@ tmp4, %sfp
	ldr	r4, [fp, #-72]	@, %sfp
	str	r6, [fp, #-280]	@ tmp4, %sfp
	str	r6, [fp, #-284]	@ tmp4, %sfp
	str	r6, [fp, #-288]	@ tmp4, %sfp
	str	r6, [fp, #-292]	@ tmp4, %sfp
	strb	r7, [r4, #1228]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-76]	@, %sfp
	str	r6, [fp, #-72]	@ tmp4, %sfp
	ldrb	r7, [r3, #16]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r6, [fp, #-296]	@ tmp4, %sfp
	str	r6, [fp, #-300]	@ tmp4, %sfp
	str	r6, [fp, #-304]	@ tmp4, %sfp
	str	r6, [fp, #-308]	@ tmp4, %sfp
	str	r6, [fp, #-312]	@ tmp4, %sfp
	strb	r7, [r4, #1229]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-80]	@, %sfp
	str	r6, [fp, #-76]	@ tmp4, %sfp
	ldrb	r7, [r3, #17]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-316]	@ tmp4, %sfp
	str	r6, [fp, #-320]	@ tmp4, %sfp
	str	r6, [fp, #-324]	@ tmp4, %sfp
	str	r6, [fp, #-328]	@ tmp4, %sfp
	strb	r7, [r4, #1230]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r6, [fp, #-80]	@ tmp4, %sfp
	ldrb	r7, [r3, #18]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r7, [r6, #1231]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r4, [r3, #19]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r6, #1232]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-84]	@, %sfp
	ldrb	r5, [r3, #20]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1233]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-88]	@, %sfp
	ldrb	r7, [r3, #21]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1234]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #22]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r6, [fp, #-92]	@, %sfp
	strb	r5, [r6, #1235]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-96]	@, %sfp
	ldrb	r7, [r3, #23]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1236]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-336]	@, %sfp
	ldrb	r5, [r3, #24]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1241]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r7, [r3, #25]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r9, #1242]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-100]	@, %sfp
	ldrb	r5, [r3, #26]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r4, #1243]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-104]	@, %sfp
	ldrb	r9, [r3, #27]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r6, #1244]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-108]	@, %sfp
	ldrb	r4, [r3, #28]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r7, #1245]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-112]	@, %sfp
	ldrb	r6, [r3, #29]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1246]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r9, [r3, #30]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [ip, #1247]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-116]	@, %sfp
	ldrb	r7, [r3, #31]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1248]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-120]	@, %sfp
	ldrb	ip, [r3, #32]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r5, #1249]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-124]	@, %sfp
	ldrb	r6, [r3, #33]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r9, #1250]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r7, [r3, #34]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-128]	@, %sfp
	strb	r7, [r4, #1251]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-132]	@, %sfp
	ldrb	ip, [r3, #35]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1252]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r6, [r3, #36]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [sl, #1257]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-136]	@, %sfp
	ldrb	r9, [r3, #37]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r7, #1258]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-140]	@, %sfp
	ldrb	r4, [r3, #38]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1259]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-144]	@, %sfp
	ldrb	ip, [r3, #39]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1260]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-148]	@, %sfp
	ldrb	sl, [r3, #40]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1261]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-152]	@, %sfp
	ldrb	r7, [r3, #41]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1262]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-48]	@, %sfp
	ldrb	r5, [r3, #42]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1263]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-156]	@, %sfp
	ldrb	ip, [r3, #43]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [sl, #1264]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-160]	@, %sfp
	ldrb	r9, [r3, #44]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r7, #1265]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-164]	@, %sfp
	ldrb	r4, [r3, #45]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r5, #1266]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r6, [r3, #46]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	sl, [fp, #-168]	@, %sfp
	strb	r6, [sl, #1267]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-172]	@, %sfp
	ldrb	ip, [r3, #47]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r9, #1268]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	ldrb	r7, [r3, #48]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r7, [r4, #1273]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-176]	@, %sfp
	ldrb	r5, [r3, #49]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [r6, #1274]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-180]	@, %sfp
	ldrb	sl, [r3, #50]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1275]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-184]	@, %sfp
	ldrb	ip, [r3, #51]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r7, #1276]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-188]	@, %sfp
	ldrb	r4, [r3, #52]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1277]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-192]	@, %sfp
	ldrb	r6, [r3, #53]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [sl, #1278]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-56]	@, %sfp
	ldrb	r9, [r3, #54]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r7, #1279]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-196]	@, %sfp
	ldrb	ip, [r3, #55]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r4, #1280]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-200]	@, %sfp
	ldrb	r5, [r3, #56]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1281]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-204]	@, %sfp
	ldrb	sl, [r3, #57]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1282]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r7, [r3, #58]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-208]	@, %sfp
	strb	r7, [r4, #1283]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-212]	@, %sfp
	ldrb	ip, [r3, #59]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1284]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [fp, #-60]	@, %sfp
	ldrb	r6, [r3, #60]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [sl, #1289]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-216]	@, %sfp
	ldrb	r9, [r3, #61]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r7, #1290]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-220]	@, %sfp
	ldrb	r4, [r3, #62]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1291]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-224]	@, %sfp
	ldrb	ip, [r3, #63]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1292]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-228]	@, %sfp
	ldrb	sl, [r3, #64]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1293]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-232]	@, %sfp
	ldrb	r7, [r3, #65]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1294]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #66]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r8, #1295]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-236]	@, %sfp
	ldrb	ip, [r3, #67]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1296]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-240]	@, %sfp
	ldrb	sl, [r3, #68]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1297]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-244]	@, %sfp
	ldrb	r8, [r3, #69]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1298]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #70]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-248]	@, %sfp
	strb	r4, [r5, #1299]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-252]	@, %sfp
	ldrb	ip, [r3, #71]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1300]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-64]	@, %sfp
	ldrb	sl, [r3, #72]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1305]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-256]	@, %sfp
	ldrb	r8, [r3, #73]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1306]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-260]	@, %sfp
	ldrb	r4, [r3, #74]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1307]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-264]	@, %sfp
	ldrb	ip, [r3, #75]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1308]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-268]	@, %sfp
	ldrb	sl, [r3, #76]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1309]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-272]	@, %sfp
	ldrb	r8, [r3, #77]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1310]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-68]	@, %sfp
	ldrb	r4, [r3, #78]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1311]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-276]	@, %sfp
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1312]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-280]	@, %sfp
	ldrb	sl, [r3, #80]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1313]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-284]	@, %sfp
	ldrb	r8, [r3, #81]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1314]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #82]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-288]	@, %sfp
	strb	r4, [r5, #1315]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-292]	@, %sfp
	ldrb	ip, [r3, #83]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1316]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-72]	@, %sfp
	ldrb	sl, [r3, #84]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1321]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-296]	@, %sfp
	ldrb	r8, [r3, #85]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1322]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-300]	@, %sfp
	ldrb	r4, [r3, #86]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1323]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-304]	@, %sfp
	ldrb	ip, [r3, #87]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1324]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-308]	@, %sfp
	ldrb	sl, [r3, #88]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1325]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-312]	@, %sfp
	ldrb	r8, [r3, #89]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1326]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-76]	@, %sfp
	ldrb	r4, [r3, #90]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1327]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-316]	@, %sfp
	ldrb	ip, [r3, #91]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1328]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-320]	@, %sfp
	ldrb	sl, [r3, #92]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1329]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-324]	@, %sfp
	ldrb	r8, [r3, #93]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1330]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #94]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-328]	@, %sfp
	strb	r4, [r5, #1331]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-80]	@, %sfp
	ldrb	ip, [r3, #95]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r3, r3, #144	@ ivtmp.1721, ivtmp.1721,
	strb	ip, [r6, #1332]	@ <variable>.rightunion.r, <variable>.TreeTab
	bne	.L190	@,
	ldr	r1, [fp, #-332]	@, %sfp
	add	r3, r1, #1	@,,
	str	r3, [fp, #-332]	@, %sfp
	cmp	r3, #2	@,
	bne	.L189	@,
	movw	r8, #9452	@ tmp727,
	movw	r7, #9453	@ tmp730,
	movw	r6, #9454	@ tmp733,
	movw	r5, #9455	@ tmp736,
	movw	r4, #9456	@ tmp739,
	movw	ip, #9457	@ tmp742,
	movw	r1, #9458	@ tmp745,
	movw	r2, #9459	@ tmp748,
	movw	r9, #9460	@ tmp751,
	movw	r3, #9461	@ tmp754,
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9462	@ tmp757,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9463	@ tmp760,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9464	@ tmp763,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9465	@ tmp766,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9466	@ tmp769,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9467	@ tmp772,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #9468	@ tmp775,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #1990]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	strb	sl, [r0, #1986]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r8, [r0, #1987]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #9469	@ tmp778,
	strb	r7, [r0, #1988]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #9470	@ tmp781,
	strb	r6, [r0, #1989]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #9471	@ tmp784,
	strb	r4, [r0, #1991]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #1992]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #1993]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #1994]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #1995]	@, <variable>.TreeTab
	mov	r5, #9472	@ tmp787,
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r4, [r0, #1996]	@, <variable>.TreeTab
	movw	r4, #9473	@ tmp790,
	strb	ip, [r0, #1997]	@, <variable>.TreeTab
	movw	ip, #9474	@ tmp793,
	strb	r1, [r0, #2002]	@, <variable>.TreeTab
	movw	r1, #9475	@ tmp796,
	strb	r2, [r0, #2003]	@, <variable>.TreeTab
	movw	r2, #9476	@ tmp799,
	strb	r9, [r0, #2005]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #9477	@ tmp802,
	strb	r3, [r0, #2006]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #9478	@ tmp805,
	strb	sl, [r0, #2004]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9479	@ tmp808,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9480	@ tmp811,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9481	@ tmp814,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9482	@ tmp817,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9483	@ tmp820,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9484	@ tmp823,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #9485	@ tmp826,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2007]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r5, [r0, #2011]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2012]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2013]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r1, [r0, #2018]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2019]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r8, [r0, #2008]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #9486	@ tmp829,
	strb	r7, [r0, #2009]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #9487	@ tmp832,
	strb	r6, [r0, #2010]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #9488	@ tmp835,
	strb	r5, [r0, #2020]	@, <variable>.TreeTab
	movw	r5, #9489	@ tmp838,
	strb	r4, [r0, #2021]	@, <variable>.TreeTab
	movw	r4, #9490	@ tmp841,
	strb	ip, [r0, #2022]	@, <variable>.TreeTab
	movw	ip, #9491	@ tmp844,
	strb	r1, [r0, #2023]	@, <variable>.TreeTab
	movw	r1, #9492	@ tmp847,
	strb	r2, [r0, #2024]	@, <variable>.TreeTab
	movw	r2, #9493	@ tmp850,
	strb	r9, [r0, #2026]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r9, #9494	@ tmp853,
	strb	r3, [r0, #2027]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #9495	@ tmp856,
	strb	sl, [r0, #2025]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9496	@ tmp859,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9497	@ tmp862,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9498	@ tmp865,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9499	@ tmp868,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8532	@ tmp871,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8533	@ tmp874,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8534	@ tmp877,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #2036]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r4, [r0, #2037]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2038]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2039]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2040]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	strb	sl, [r0, #2028]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r8, [r0, #2029]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #8535	@ tmp880,
	strb	r7, [r0, #2034]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #8536	@ tmp883,
	strb	r6, [r0, #2035]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #8537	@ tmp886,
	strb	r5, [r0, #2041]	@, <variable>.TreeTab
	movw	r5, #8538	@ tmp889,
	strb	r4, [r0, #2042]	@, <variable>.TreeTab
	movw	r4, #8539	@ tmp892,
	strb	ip, [r0, #2043]	@, <variable>.TreeTab
	movw	ip, #8540	@ tmp895,
	strb	r1, [r0, #2044]	@, <variable>.TreeTab
	movw	r1, #8541	@ tmp898,
	strb	r2, [r0, #2045]	@, <variable>.TreeTab
	movw	r2, #8542	@ tmp901,
	strb	r9, [r0, #2051]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #8543	@ tmp904,
	strb	r3, [r0, #2052]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8544	@ tmp907,
	strb	sl, [r0, #2050]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8545	@ tmp910,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8546	@ tmp913,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8547	@ tmp916,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8548	@ tmp919,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8549	@ tmp922,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8550	@ tmp925,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8551	@ tmp928,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2053]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r5, [r0, #2057]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [fp, #-68]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	strb	r4, [r0, #2058]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2059]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	strb	r1, [r0, #2060]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2061]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	strb	r8, [r0, #2054]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #8552	@ tmp931,
	strb	r7, [r0, #2055]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #8553	@ tmp934,
	strb	r6, [r0, #2056]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #8554	@ tmp937,
	strb	r5, [r0, #2066]	@, <variable>.TreeTab
	movw	r5, #8555	@ tmp940,
	strb	r4, [r0, #2067]	@, <variable>.TreeTab
	movw	r4, #8556	@ tmp943,
	strb	ip, [r0, #2068]	@, <variable>.TreeTab
	movw	ip, #8557	@ tmp946,
	strb	r1, [r0, #2069]	@, <variable>.TreeTab
	movw	r1, #8558	@ tmp949,
	strb	r2, [r0, #2070]	@, <variable>.TreeTab
	movw	r2, #8559	@ tmp952,
	strb	sl, [r0, #2071]	@, <variable>.TreeTab
	strb	r9, [r0, #2072]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r9, #8560	@ tmp955,
	strb	r3, [r0, #2073]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8561	@ tmp958,
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8562	@ tmp961,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8563	@ tmp964,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8564	@ tmp967,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8565	@ tmp970,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8566	@ tmp973,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8567	@ tmp976,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8568	@ tmp979,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #2082]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	strb	sl, [r0, #2074]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r8, [r0, #2075]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #8569	@ tmp982,
	strb	r7, [r0, #2076]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #8570	@ tmp985,
	strb	r6, [r0, #2077]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #8571	@ tmp988,
	strb	r4, [r0, #2083]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2084]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2085]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2114]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #2115]	@, <variable>.TreeTab
	movw	r5, #8572	@ tmp991,
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r4, [r0, #2116]	@, <variable>.TreeTab
	movw	r4, #8573	@ tmp994,
	strb	ip, [r0, #2117]	@, <variable>.TreeTab
	movw	ip, #8574	@ tmp997,
	strb	r1, [r0, #2118]	@, <variable>.TreeTab
	movw	r1, #8575	@ tmp1000,
	strb	r2, [r0, #2119]	@, <variable>.TreeTab
	mov	r2, #8576	@ tmp1003,
	strb	r9, [r0, #2121]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #8577	@ tmp1006,
	strb	r3, [r0, #2122]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8578	@ tmp1009,
	strb	sl, [r0, #2120]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8579	@ tmp1012,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8580	@ tmp1015,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8581	@ tmp1018,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8582	@ tmp1021,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8583	@ tmp1024,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8584	@ tmp1027,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8585	@ tmp1030,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2123]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r6, [r0, #2130]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #2131]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2132]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-52]	@, %sfp
	ldr	r4, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-56]	@, %sfp
	strb	r6, [r0, #2137]	@, <variable>.TreeTab
	strb	r4, [r0, #2136]	@, <variable>.TreeTab
	strb	r5, [r0, #2138]	@, <variable>.TreeTab
	ldr	r4, [fp, #-60]	@, %sfp
	ldr	r5, [fp, #-64]	@, %sfp
	ldr	r6, [fp, #-68]	@, %sfp
	strb	r1, [r0, #2134]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r1, #8586	@ tmp1033,
	strb	r3, [r0, #2147]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8587	@ tmp1036,
	strb	r8, [r0, #2124]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r7, [r0, #2125]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2133]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2135]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2139]	@, <variable>.TreeTab
	strb	r5, [r0, #2140]	@, <variable>.TreeTab
	strb	r6, [r0, #2141]	@, <variable>.TreeTab
	strb	r9, [r0, #2146]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r2, [r0, #2148]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2149]	@ <variable>.rightunion.r, <variable>.TreeTab
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_BuildTreeTab, .-VP6_BuildTreeTab
	.align	2
	.global	VP6DEC_Destroy
	.type	VP6DEC_Destroy, %function
VP6DEC_Destroy:
	.fnstart
.LFB1374:
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
	.size	VP6DEC_Destroy, .-VP6DEC_Destroy
	.align	2
	.global	IsFrameSizeChanged
	.type	IsFrameSizeChanged, %function
IsFrameSizeChanged:
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
	movw	ip, #12132	@ tmp136,
	movw	r1, #12276	@ tmp137,
	ldr	r2, [r0, ip]	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	movne	r0, #1	@ D.37360,
	ldmnefd	sp, {fp, sp, pc}	@
	movw	r1, #12280	@ tmp141,
	movw	r2, #12136	@ tmp140,
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	ldr	r0, [r0, r2]	@ <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.OldHeaderInfo.pic_width_in_mb
	subs	r0, r0, r3	@ D.37360, <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	movne	r0, #1	@ D.37360
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsFrameSizeChanged, .-IsFrameSizeChanged
	.align	2
	.global	VP6DEC_GetRemainImg
	.type	VP6DEC_GetRemainImg, %function
VP6DEC_GetRemainImg:
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
	add	r0, r0, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	bl	GetVoLastImageID	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP6DEC_GetRemainImg, .-VP6DEC_GetRemainImg
	.align	2
	.global	VP6DEC_RecycleImage
	.type	VP6DEC_RecycleImage, %function
VP6DEC_RecycleImage:
	.fnstart
.LFB1384:
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
	movw	r4, #13000	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L203	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #172]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #176]	@ tmp145, <variable>.p_usrdat
.L203:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_RecycleImage, .-VP6DEC_RecycleImage
	.align	2
	.global	VP6_ConvertBoolToHuff
	.type	VP6_ConvertBoolToHuff, %function
VP6_ConvertBoolToHuff:
	.fnstart
.LFB1369:
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
	add	r7, r0, #6592	@ tmp200, pVp6CodecInfo,
	add	r9, r7, #4	@ D.36628, tmp200,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	add	r8, r0, #512	@ tmp199, pVp6CodecInfo,
	add	r6, r0, #9408	@ tmp201, pVp6CodecInfo,
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC0	@,
	add	r5, r6, #44	@ D.36632, tmp201,
	bl	dprint_vfmw	@
	add	sl, r4, #9472	@ tmp202, pVp6CodecInfo,
	add	r0, r8, #2	@, tmp199,
	mov	r1, r9	@, D.36628
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, D.36628
	add	r9, sl, #28	@ D.36636, tmp202,
	add	r7, r7, #52	@ D.36630, tmp200,
	mov	r0, r5	@, D.36632
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	add	r6, r6, #68	@ D.36634, tmp201,
	mov	r0, r5	@, D.36632
	mov	r1, r9	@, D.36636
	bl	VP6_BuildHuffLookupTable	@
	add	r5, r4, #6656	@ tmp205, pVp6CodecInfo,
	add	r0, r8, #13	@, tmp199,
	mov	r1, r7	@, D.36630
	add	r2, r4, #536	@, pVp6CodecInfo,
	str	r2, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r7	@, D.36630
	mov	r0, r6	@, D.36634
	add	r7, r5, #36	@ D.36644, tmp205,
	bl	VP6_BuildHuffTree	@
	add	r9, r4, #8512	@ tmp206, pVp6CodecInfo,
	mov	r0, r6	@, D.36634
	add	r1, sl, #92	@, tmp202,
	add	r6, r9, #20	@ D.36648, tmp206,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r4, #11904	@ tmp207, pVp6CodecInfo,
	mov	r1, r7	@, D.36644
	ldr	r0, [fp, #-48]	@, %sfp
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, r7	@, D.36644
	add	r7, r8, #28	@ D.36652, tmp207,
	mov	r2, #9	@,
	mov	r0, r6	@, D.36648
	add	sl, r5, #92	@ D.36646, tmp205,
	bl	VP6_BuildHuffTree	@
	mov	r0, r6	@, D.36648
	mov	r1, r7	@, D.36652
	add	r9, r9, #48	@ D.36650, tmp206,
	bl	VP6_BuildHuffLookupTable	@
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r1, sl	@, D.36646
	add	r6, r4, #6784	@ ivtmp.2268, pVp6CodecInfo,
	add	r0, r3, #14	@,,
	add	r5, r4, #8576	@ ivtmp.2270, pVp6CodecInfo,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, sl	@, D.36646
	mov	r2, #9	@,
	mov	r0, r9	@, D.36650
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, D.36650
	add	r1, r8, #92	@, tmp207,
	add	sl, r4, #9600	@ ivtmp.2272, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r6, r6, #20	@ ivtmp.2268, ivtmp.2268,
	add	r5, r5, #12	@ ivtmp.2270, ivtmp.2270,
	add	sl, sl, #28	@ ivtmp.2272, ivtmp.2272,
	mov	r7, #0	@ ivtmp.2267,
.L206:
	add	lr, r7, r4	@ tmp214, ivtmp.2267, pVp6CodecInfo
	mov	r1, r6	@, ivtmp.2268
	add	r0, lr, #564	@, tmp214,
	add	r8, r6, #48	@ temp.2359, ivtmp.2268,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r0, r5	@, ivtmp.2270
	mov	r1, r6	@, ivtmp.2268
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	mov	r0, r5	@, ivtmp.2270
	mov	r1, sl	@, ivtmp.2272
	add	r9, r5, #24	@ temp.2360, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp218, ivtmp.2267, pVp6CodecInfo
	add	r2, r1, #572	@, tmp218,
	mov	r1, r8	@, temp.2359
	add	r0, r2, #3	@,,
	add	r3, r6, #96	@, ivtmp.2268,
	str	r3, [fp, #-52]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r8	@, temp.2359
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2360
	add	r8, r5, #72	@ temp.2368, ivtmp.2270,
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2360
	add	r1, sl, #64	@, ivtmp.2272,
	add	r9, r5, #48	@ temp.2364, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp223, ivtmp.2267, pVp6CodecInfo
	add	r0, ip, #584	@, tmp223,
	ldr	r1, [fp, #-52]	@, %sfp
	add	r0, r0, #2	@,,
	add	r2, r6, #144	@, ivtmp.2268,
	str	r2, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2364
	ldr	r1, [fp, #-52]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2364
	add	r1, sl, #128	@, ivtmp.2272,
	add	r9, r6, #192	@ temp.2371, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp228, ivtmp.2267, pVp6CodecInfo
	add	r3, r1, #596	@, tmp228,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r3, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2368
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2368
	add	r1, sl, #192	@, ivtmp.2272,
	add	r8, r5, #96	@ temp.2372, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp232, ivtmp.2267, pVp6CodecInfo
	add	r0, ip, #608	@, tmp232,
	mov	r1, r9	@, temp.2371
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2371
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2372
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2372
	add	r1, sl, #256	@, ivtmp.2272,
	add	r9, r6, #240	@ temp.2375, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp237, ivtmp.2267, pVp6CodecInfo
	add	r8, r5, #120	@ temp.2376, ivtmp.2270,
	add	r2, r0, #616	@, tmp237,
	add	r0, r2, #3	@,,
	mov	r1, r9	@, temp.2375
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2375
	mov	r0, r8	@, temp.2376
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2376
	add	r1, sl, #320	@, ivtmp.2272,
	add	r9, r6, #288	@ temp.2379, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r7, r4	@ tmp242, ivtmp.2267, pVp6CodecInfo
	add	r1, r3, #628	@, tmp242,
	add	r8, r5, #144	@ temp.2380, ivtmp.2270,
	add	r0, r1, #2	@,,
	mov	r1, r9	@, temp.2379
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2379
	mov	r0, r8	@, temp.2380
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2380
	add	r1, sl, #384	@, ivtmp.2272,
	add	r9, r6, #336	@ temp.2383, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp247, ivtmp.2267, pVp6CodecInfo
	add	r0, ip, #640	@, tmp247,
	add	r8, r5, #168	@ temp.2384, ivtmp.2270,
	mov	r1, r9	@, temp.2383
	add	r0, r0, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2383
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2384
	bl	VP6_BuildHuffTree	@
	add	r9, r6, #384	@ temp.2387, ivtmp.2268,
	mov	r0, r8	@, temp.2384
	add	r1, sl, #448	@, ivtmp.2272,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r5, #192	@ temp.2388, ivtmp.2270,
	add	r2, r7, r4	@ tmp251, ivtmp.2267, pVp6CodecInfo
	mov	r1, r9	@, temp.2387
	add	r0, r2, #652	@, tmp251,
	add	r3, r6, #432	@, ivtmp.2268,
	str	r3, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2387
	mov	r0, r8	@, temp.2388
	add	r9, r6, #480	@ temp.2395, ivtmp.2268,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2388
	add	r1, sl, #512	@, ivtmp.2272,
	add	r8, r5, #216	@ temp.2392, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp256, ivtmp.2267, pVp6CodecInfo
	add	ip, r1, #660	@, tmp256,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, ip, #3	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2392
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2392
	add	r1, sl, #576	@, ivtmp.2272,
	add	r8, r5, #240	@ temp.2396, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp261, ivtmp.2267, pVp6CodecInfo
	add	r2, r0, #672	@, tmp261,
	mov	r1, r9	@, temp.2395
	add	r0, r2, #2	@,,
	add	r3, r6, #528	@, ivtmp.2268,
	str	r3, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2395
	mov	r0, r8	@, temp.2396
	add	r9, r6, #576	@ temp.2403, ivtmp.2268,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2396
	add	r1, sl, #640	@, ivtmp.2272,
	add	r8, r5, #264	@ temp.2400, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp266, ivtmp.2267, pVp6CodecInfo
	add	ip, r1, #684	@, tmp266,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, ip, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2400
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2400
	add	r1, sl, #704	@, ivtmp.2272,
	add	r8, r5, #288	@ temp.2404, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp270, ivtmp.2267, pVp6CodecInfo
	mov	r1, r9	@, temp.2403
	add	r0, r0, #696	@, tmp270,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2403
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2404
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2404
	add	r1, sl, #768	@, ivtmp.2272,
	add	r9, r6, #624	@ temp.2407, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	r2, r7, r4	@ tmp275, ivtmp.2267, pVp6CodecInfo
	add	r3, r2, #704	@, tmp275,
	add	r8, r5, #312	@ temp.2408, ivtmp.2270,
	add	r0, r3, #3	@,,
	mov	r1, r9	@, temp.2407
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2407
	mov	r0, r8	@, temp.2408
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2408
	add	r1, sl, #832	@, ivtmp.2272,
	add	r9, r6, #672	@ temp.2411, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp280, ivtmp.2267, pVp6CodecInfo
	add	r1, ip, #716	@, tmp280,
	add	r8, r5, #336	@ temp.2412, ivtmp.2270,
	add	r0, r1, #2	@,,
	mov	r1, r9	@, temp.2411
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2411
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2412
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2412
	add	r1, sl, #896	@, ivtmp.2272,
	add	r9, r6, #720	@ temp.2415, ivtmp.2268,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp285, ivtmp.2267, pVp6CodecInfo
	add	r8, r5, #360	@ temp.2416, ivtmp.2270,
	add	r2, r0, #728	@, tmp285,
	add	r0, r2, #1	@,,
	mov	r1, r9	@, temp.2415
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2415
	mov	r0, r8	@, temp.2416
	bl	VP6_BuildHuffTree	@
	add	r9, r6, #768	@ temp.2419, ivtmp.2268,
	mov	r0, r8	@, temp.2416
	add	r1, sl, #960	@, ivtmp.2272,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r5, #384	@ temp.2420, ivtmp.2270,
	add	r3, r7, r4	@ tmp289, ivtmp.2267, pVp6CodecInfo
	mov	r1, r9	@, temp.2419
	add	r0, r3, #740	@, tmp289,
	add	ip, r6, #816	@, ivtmp.2268,
	str	ip, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2420
	mov	r1, r9	@, temp.2419
	add	r6, r6, #864	@ ivtmp.2268, ivtmp.2268,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2420
	add	r1, sl, #1024	@, ivtmp.2272,
	add	r8, r5, #408	@ temp.2424, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp294, ivtmp.2267, pVp6CodecInfo
	add	r0, r1, #748	@, tmp294,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r0, #3	@,,
	add	r7, r7, #198	@ ivtmp.2267, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2424
	bl	VP6_BuildHuffTree	@
	add	r1, sl, #1088	@, ivtmp.2272,
	mov	r0, r8	@, temp.2424
	add	r5, r5, #432	@ ivtmp.2270, ivtmp.2270,
	bl	VP6_BuildHuffLookupTable	@
	cmp	r7, #396	@ ivtmp.2267,
	add	sl, sl, #1152	@ ivtmp.2272, ivtmp.2272,
	bne	.L206	@,
	mov	r0, r4	@, pVp6CodecInfo
	bl	VP6_BuildTreeTab	@
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_ConvertBoolToHuff, .-VP6_ConvertBoolToHuff
	.align	2
	.global	VP6_DecodeDecide
	.type	VP6_DecodeDecide, %function
VP6_DecodeDecide:
	.fnstart
.LFB1375:
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
	movw	r3, #12296	@ tmp143,
	ldr	r4, [r0, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L226	@,
	mov	r2, #12288	@ tmp146,
	ldr	r1, [r0, r2]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	sub	r0, r1, #2	@ tmp147, <variable>.Vp6CodecInfo.UsedDecMode,
	cmp	r0, #1	@ tmp147,
	bls	.L212	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.2446, <variable>.s32DecMode
.L213:
	mov	r0, #12288	@ tmp178,
	str	r2, [r5, r0]	@ prephitmp.2446, <variable>.Vp6CodecInfo.UsedDecMode
	cmp	r2, #4	@ prephitmp.2446,
	ldrls	pc, [pc, r2, asl #2]	@ prephitmp.2446
	b	.L214	@
.L218:
	.word	.L215
	.word	.L215
	.word	.L216
	.word	.L225
	.word	.L215
.L214:
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L225:
	mov	r0, #0	@ D.36931,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L212:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.2446, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.2446,
	cmpne	r2, #1	@, prephitmp.2446,
	bhi	.L213	@,
	movw	r8, #13000	@ tmp159,
	movw	r7, #12312	@ tmp161,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r4, #12316	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r7]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, r4]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r6, #0	@ tmp168,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	str	r6, [r5, r7]	@ tmp168, <variable>.Vp6CodecInfo.GoldenFsID
	str	r6, [r5, r4]	@ tmp168, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12292	@ tmp175,
	str	r6, [r5, r2]	@ tmp168, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r5, r7]	@ D.36948, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r5, r4]	@ D.36948, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.2446, <variable>.s32DecMode
	b	.L213	@
.L226:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36931, <variable>.Vp6CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L216:
	movw	lr, #12300	@ tmp179,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ D.36950, <variable>.Vp6CodecInfo.FrameType
	cmp	r2, #0	@ D.36950,
	bne	.L227	@,
.L219:
	movw	r1, #13000	@ tmp192,
	movw	lr, #12316	@ tmp194,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, lr]	@, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #12300	@ tmp196,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L222	@,
	cmp	r0, #0	@ pFwdImg,
	beq	.L228	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #160]	@ prephitmp.2471, <variable>.error_level
	ldr	r3, [ip, #0]	@ prephitmp.2450, <variable>.s32RefErrThr
	cmp	r2, r3	@ prephitmp.2471, prephitmp.2450
	bls	.L222	@,
.L221:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36931,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L215:
	movw	r3, #12300	@ tmp181,
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	ip, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L219	@,
	movw	r1, #12292	@ tmp183,
	ldr	r4, [r5, r1]	@ <variable>.Vp6CodecInfo.RefNum, <variable>.Vp6CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.RefNum,
	bne	.L219	@,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	mov	r3, r4	@, <variable>.Vp6CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36931, <variable>.Vp6CodecInfo.RefNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L222:
	mov	r0, #1	@ D.36931,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L227:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36931,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L228:
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #160]	@ prephitmp.2471, <variable>.error_level
	ldr	r3, [lr, #0]	@ prephitmp.2450, <variable>.s32RefErrThr
	b	.L221	@
	.fnend
	.size	VP6_DecodeDecide, .-VP6_DecodeDecide
	.align	2
	.global	VP6_SetImgFormat
	.type	VP6_SetImgFormat, %function
VP6_SetImgFormat:
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
	movw	r1, #13000	@ tmp144,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #12308	@ tmp146,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #12300	@ tmp148,
	mov	lr, #0	@ tmp153,
	ldrb	r2, [r5, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	mov	r1, lr	@, tmp153
	strb	lr, [r4, #296]	@ tmp153, <variable>.ImageDnr.pic_structure
	mov	lr, #8	@ tmp157,
	and	r3, r2, #3	@ D.37504, <variable>.Vp6CodecInfo.FrameType,
	str	lr, [r4, #316]	@ tmp157, <variable>.ImageDnr.QP_U
	orr	ip, r3, #7168	@ tmp150, D.37504,
	mov	r2, #1	@ tmp155,
	str	r3, [r4, #116]	@ D.37504, <variable>.bottom_fld_type
	orr	ip, ip, #32	@ tmp150, tmp150,
	str	r3, [r4, #112]	@ D.37504, <variable>.top_fld_type
	str	ip, [r4, #120]	@ tmp150, <variable>.format
	mov	ip, #10	@ tmp152,
	strb	r2, [r4, #301]	@ tmp155, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #308]	@ tmp152, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #303]	@ tmp155, <variable>.ImageDnr.use_pic_qp_en
	str	lr, [r4, #312]	@ tmp157, <variable>.ImageDnr.QP_Y
	str	lr, [r4, #320]	@ tmp157, <variable>.ImageDnr.QP_V
	bl	SetAspectRatio	@
	movw	r0, #12500	@ tmp162,
	ldr	r3, [r5, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r1, #12496	@ tmp164,
	mov	r3, r3, asl #4	@ prephitmp.2486, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb,
	str	r3, [r4, #124]	@ prephitmp.2486, <variable>.image_width
	ldr	r2, [r5, r1]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r2, r2, asl #4	@ D.37511, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb,
	str	r2, [r4, #128]	@ D.37511, <variable>.image_height
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.2486
	beq	.L235	@,
.L231:
	ldr	r0, [r4, #128]	@ <variable>.image_height, <variable>.image_height
	mov	r3, r3, lsr #1	@ tmp180, prephitmp.2486,
	str	r2, [r4, #132]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #140]	@ tmp180, <variable>.disp_center_x
	mov	r1, r0, lsr #1	@ tmp182, <variable>.image_height,
	str	r0, [r4, #136]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #144]	@ tmp182, <variable>.disp_center_y
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L235:
	ldr	r1, [r4, #152]	@ D.37516, <variable>.image_stride
	mov	r2, r2, lsr #4	@ tmp170, D.37511,
	ldr	r3, [r4, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp168, D.37516,
	add	ip, r3, r1	@ tmp175, <variable>.luma_phy_addr, D.37516
	str	r3, [r4, #100]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r2, r2, lr	@ D.37522, tmp170, tmp168
	str	r3, [r4, #68]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	ip, [r4, #76]	@ tmp175, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r2, r3	@ tmp172, D.37522, <variable>.luma_phy_addr
	add	r2, r0, r2	@ tmp174, <variable>.luma_vir_addr, D.37522
	str	r3, [r4, #88]	@ tmp172, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp176, tmp172, D.37516
	str	r2, [r4, #36]	@ tmp174, <variable>.chrom_vir_addr
	str	r0, [r4, #80]	@ tmp176, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp172
	str	r3, [r4, #72]	@ tmp172, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #124]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r4, #72]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.2486, <variable>.image_width
	str	ip, [r4, #104]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L231	@
	.fnend
	.size	VP6_SetImgFormat, .-VP6_SetImgFormat
	.align	2
	.global	VP6DEC_VDMPostProc
	.type	VP6DEC_VDMPostProc, %function
VP6DEC_VDMPostProc:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, r1	@, ErrRatio
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r5, #13000	@ tmp147,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r3, #12308	@ tmp149,
	ldr	r1, [r4, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L252	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L239	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.484,
	str	r6, [r3, #160]	@ iftmp.484, <variable>.error_level
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ D.37564, <variable>.s32RefErrThr
	cmp	r6, r3	@ iftmp.484, D.37564
	bhi	.L253	@,
.L240:
	mov	r0, r4	@, pCtx
	mov	r8, #1	@ tmp173,
	bl	VP6_SetImgFormat	@
	mov	ip, #12288	@ tmp174,
	ldr	r6, [r4, ip]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	movw	r2, #12292	@ tmp172,
	str	r8, [r4, r2]	@ tmp173, <variable>.Vp6CodecInfo.RefNum
	cmp	r6, #2	@ <variable>.Vp6CodecInfo.UsedDecMode,
	beq	.L254	@,
.L241:
	movw	r2, #12308	@ tmp185,
	movw	r0, #12320	@ tmp186,
	ldr	r1, [r4, r2]	@ prephitmp.2517, <variable>.Vp6CodecInfo.CurFsID
	str	r1, [r4, r0]	@ prephitmp.2517, <variable>.Vp6CodecInfo.ToQueFsID
.L242:
	cmn	r1, #1	@ prephitmp.2517,
	beq	.L243	@,
	movw	r5, #13000	@ tmp187,
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #12320	@ tmp191,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	add	ip, r4, #12608	@, pCtx,
	add	r3, ip, #40	@,,
	mov	r1, #10	@,
	mov	r2, r4	@, pCtx
	mov	r6, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	bne	.L255	@,
.L243:
	movw	r6, #12316	@ tmp210,
	movw	r3, #12312	@ tmp211,
	ldr	lr, [r4, r3]	@ <variable>.Vp6CodecInfo.GoldenFsID, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	r1, [r4, r6]	@ prephitmp.2530, <variable>.Vp6CodecInfo.FwdFsID
	cmp	r1, lr	@ prephitmp.2530, <variable>.Vp6CodecInfo.GoldenFsID
	beq	.L244	@,
	movw	r5, #12308	@ tmp213,
	ldr	r8, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, r8	@ prephitmp.2530, <variable>.Vp6CodecInfo.CurFsID
	beq	.L245	@,
	movw	r2, #13000	@ tmp215,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2530, <variable>.Vp6CodecInfo.CurFsID
.L245:
	movw	lr, #13000	@ tmp228,
	movw	r8, #12316	@ tmp227,
	str	r1, [r4, r8]	@ prephitmp.2530, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #12300	@ tmp230,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L256	@,
	movw	r5, #12308	@ tmp235,
	movw	r3, #12312	@ tmp234,
	ldr	r1, [r4, r3]	@ prephitmp.2549, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2549, <variable>.Vp6CodecInfo.CurFsID
	beq	.L248	@,
.L257:
	movw	lr, #13000	@ tmp237,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2549, <variable>.Vp6CodecInfo.CurFsID
.L248:
	movw	r2, #12312	@ tmp240,
	movw	r8, #13000	@ tmp241,
	str	r1, [r4, r2]	@ prephitmp.2549, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L250:
	mov	r8, #1	@ ret,
.L238:
	mov	r0, r8	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L256:
	movw	r0, #12304	@ tmp232,
	ldr	r2, [r4, r0]	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame, <variable>.Vp6CodecInfo.RefreshGoldenFrame
	cmp	r2, #0	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame,
	beq	.L250	@,
	movw	r5, #12308	@ tmp235,
	movw	r3, #12312	@ tmp234,
	ldr	r1, [r4, r3]	@ prephitmp.2549, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2549, <variable>.Vp6CodecInfo.CurFsID
	bne	.L257	@,
	b	.L248	@
.L239:
	mov	r6, #0	@ tmp244,
	str	r6, [r3, #160]	@ tmp244, <variable>.error_level
	b	.L240	@
.L254:
	movw	r3, #12300	@ tmp176,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	lr, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L241	@,
	movw	r5, #12320	@ tmp178,
	movw	r1, #13000	@ tmp180,
	movw	r8, #12308	@ tmp182,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	r6, #0	@ tmp179,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	str	r6, [r4, r5]	@ tmp179, <variable>.Vp6CodecInfo.ToQueFsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r5]	@ prephitmp.2517, <variable>.Vp6CodecInfo.ToQueFsID
	b	.L242	@
.L255:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp200,
	ldr	r1, [r6, #172]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #172]	@ tmp200, <variable>.p_usrdat
	ldr	r1, [r6, #176]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #176]	@ tmp200, <variable>.p_usrdat
	mov	r2, sl	@, tmp200
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, sl	@, tmp200
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	b	.L238	@
.L244:
	movw	r7, #13000	@ tmp218,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	subs	r2, r0, #0	@ D.37594,
	movwne	r0, #12308	@ tmp220,
	ldrne	r1, [r4, r0]	@ prephitmp.2530, <variable>.Vp6CodecInfo.CurFsID
	bne	.L245	@
.L246:
	movw	r5, #12308	@ tmp222,
	ldr	r1, [r4, r6]	@ prephitmp.2530, <variable>.Vp6CodecInfo.FwdFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2530, <variable>.Vp6CodecInfo.CurFsID
	beq	.L245	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2530, <variable>.Vp6CodecInfo.CurFsID
	b	.L245	@
.L253:
	mov	r2, r6	@, iftmp.484
	movw	sl, #12312	@ tmp156,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	movw	r6, #12316	@ tmp160,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, sl]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r7, #0	@ tmp163,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r8, #0	@ ret,
	str	r7, [r4, sl]	@ tmp163, <variable>.Vp6CodecInfo.GoldenFsID
	str	r7, [r4, r6]	@ tmp163, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #12292	@ tmp170,
	str	r7, [r4, r1]	@ tmp163, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r4, sl]	@ D.37571, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r6]	@ D.37571, <variable>.Vp6CodecInfo.FwdFsID
	b	.L238	@
.L252:
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L238	@
	.fnend
	.size	VP6DEC_VDMPostProc, .-VP6DEC_VDMPostProc
	.align	2
	.global	VP6_CfgTable
	.type	VP6_CfgTable, %function
VP6_CfgTable:
	.fnstart
.LFB1377:
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
	sub	r7, fp, #60	@ tmp799,,
	add	lr, r7, #4	@ tmp803, tmp799,
	add	r8, r0, #2240	@ tmp161, pVp6CodecInfo,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	sl, #0	@ tmp157,
	str	r1, [fp, #-76]	@ pPictureHeader, %sfp
	mov	r2, #10	@,
	str	sl, [lr], #4	@ tmp157, _ptr_msg_bank
	add	r1, r0, #4	@, pVp6CodecInfo,
	str	sl, [lr], #4	@ tmp157, _ptr_msg_bank
	add	r0, r8, #2	@, tmp161,
	str	sl, [lr, #0]	@ tmp157, _ptr_msg_bank
	add	r6, r4, #2304	@ tmp178, pVp6CodecInfo,
	str	sl, [fp, #-60]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	add	r1, r4, #14	@, pVp6CodecInfo,
	mov	r2, #10	@,
	add	r0, r8, #18	@, tmp161,
	add	r5, r6, #162	@ tmp801, tmp178,
	bl	memcpy	@
	add	r0, r8, #34	@, tmp161,
	add	r1, r4, #24	@, pVp6CodecInfo,
	mov	r2, #10	@,
	bl	memcpy	@
	add	r1, r4, #44	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #2	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #53	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #18	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #62	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #34	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #71	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #50	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #80	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #66	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #89	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #82	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #98	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #98	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #107	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #114	@, tmp178,
	add	r8, r4, #134	@ tmp802, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #116	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #130	@, tmp178,
	add	r9, r4, #224	@ ivtmp.2700, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #125	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #146	@, tmp178,
	bl	memcpy	@
	mov	r1, r8	@, tmp802
	mov	r2, #9	@,
	mov	r0, r5	@, tmp801
	bl	memcpy	@
	add	r1, r4, #143	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #178	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #152	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #194	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #161	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #210	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #170	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #226	@, tmp178,
	bl	memcpy	@
	add	r0, r6, #242	@, tmp178,
	add	r1, r4, #179	@, pVp6CodecInfo,
	mov	r2, #9	@,
	bl	memcpy	@
	add	r1, r4, #188	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #96	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #197	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #112	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #206	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #128	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #215	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #144	@, tmp801,
	bl	memcpy	@
	mov	r1, r9	@, ivtmp.2700
	mov	r2, #9	@,
	add	r0, r5, #160	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #233	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #176	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #242	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #192	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #251	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #208	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #260	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #224	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #45	@, ivtmp.2700,
	mov	r2, #9	@,
	add	r0, r5, #240	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #54	@, ivtmp.2700,
	mov	r2, #9	@,
	add	r0, r5, #256	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #63	@, ivtmp.2700,
	mov	r2, #9	@,
	add	r0, r5, #272	@, tmp801,
	bl	memcpy	@
	add	r6, r8, #180	@ ivtmp.2700, tmp802,
	add	r1, r4, #296	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #288	@, tmp801,
	add	ip, r4, #2944	@, pVp6CodecInfo,
	str	ip, [fp, #-64]	@, %sfp
	bl	memcpy	@
	add	r1, r9, #81	@, ivtmp.2700,
	mov	r2, #9	@,
	add	r0, r5, #304	@, tmp801,
	bl	memcpy	@
	mov	r1, r6	@, ivtmp.2700
	mov	r2, #9	@,
	add	r0, r5, #320	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #189	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #336	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #332	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #352	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #207	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #368	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #216	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #384	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #225	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #400	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #368	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #416	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #243	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #432	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #252	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #448	@, tmp801,
	bl	memcpy	@
	add	r1, r6, #81	@, ivtmp.2700,
	mov	r2, #9	@,
	add	r0, r5, #464	@, tmp801,
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #488]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #484]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	add	r0, r9, #2	@,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r6, [r4, #485]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r8, [r4, #486]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r9, [r4, #487]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #489]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #490]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	r6, [fp, #-57]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	ip, [fp, #-58]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r6, [fp, #-54]	@, _ptr_msg_bank
	strb	r8, [fp, #-53]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #503]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #498]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #499]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	add	r0, r9, #18	@,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r6, [r4, #500]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r8, [r4, #501]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r9, [r4, #502]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #504]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #505]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	strb	r6, [fp, #-57]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	ip, [fp, #-58]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r6, [fp, #-54]	@, _ptr_msg_bank
	strb	r8, [fp, #-53]	@, _ptr_msg_bank
	strb	sl, [fp, #-51]	@ tmp157, _ptr_msg_bank
	strb	sl, [fp, #-50]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #495]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #3]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	mov	r1, r7	@, tmp799
	ldrb	r5, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	add	r0, r9, #34	@,,
	ldrb	ip, [r4, #491]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r6, [r4, #492]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r8, [r4, #493]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r9, [r4, #494]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #496]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #497]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	ip, [fp, #-58]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	ip, [fp, #-68]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	ip, [fp, #-54]	@, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r6, [fp, #-57]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r9, [fp, #-53]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r1, [r4, #507]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r9, [r4, #506]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldr	r2, [fp, #-64]	@, %sfp
	str	r1, [fp, #-64]	@, %sfp
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #511]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	add	r0, r2, #50	@,,
	ldrb	r3, [r4, #513]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r2, #16	@,
	ldrb	r6, [r4, #508]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r5, [r4, #509]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	lr, [r4, #510]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r7, [r4, #512]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	strb	r8, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	ldr	r8, [fp, #-64]	@, %sfp
	strb	ip, [fp, #-54]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r9, [fp, #-59]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r8, [fp, #-58]	@, _ptr_msg_bank
	strb	r6, [fp, #-57]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r5, [fp, #-56]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	lr, [fp, #-55]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r7, [fp, #-53]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	sl, [fp, #-50]	@ tmp157, _ptr_msg_bank
	strb	sl, [fp, #-51]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	ldr	ip, [fp, #-76]	@, %sfp
	ldr	r3, [ip, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r3, sl	@ <variable>.UseHuffman,
	bne	.L260	@,
	add	r7, r4, #1152	@ D.37298, pVp6CodecInfo,
	add	sl, r4, #4096	@ tmp346, pVp6CodecInfo,
	add	r0, sl, #2	@, tmp346,
	mov	r2, #11	@,
	mov	r1, r7	@, D.37298
	add	r8, r4, #536	@ D.37306, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r7, #11	@, D.37298,
	add	r0, sl, #18	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #22	@, D.37298,
	add	r0, sl, #34	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #33	@, D.37298,
	add	r0, sl, #50	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #44	@, D.37298,
	add	r0, sl, #66	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #55	@, D.37298,
	add	r0, sl, #82	@, tmp346,
	add	r7, r4, #4160	@ tmp392, pVp6CodecInfo,
	add	sl, r4, #4736	@ tmp381, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r5, r7, #34	@ D.37309, tmp392,
	add	r6, r4, #564	@ D.37319, pVp6CodecInfo,
	bl	memcpy	@
	mov	r1, r8	@, D.37306
	mov	r2, #14	@,
	add	r0, sl, #34	@, tmp381,
	bl	memcpy	@
	add	r1, r8, #14	@, D.37306,
	mov	r2, #14	@,
	add	r0, sl, #50	@, tmp381,
	bl	memcpy	@
	mov	r1, r6	@, D.37319
	mov	r2, #11	@,
	mov	r0, r5	@, D.37309
	bl	memcpy	@
	add	r1, r6, #66	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #50	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #696	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #66	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #11	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #82	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #77	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #98	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #143	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #114	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #22	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #130	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #652	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #146	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #154	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #162	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #33	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #178	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #99	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #194	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #165	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #210	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #608	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #226	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #110	@, D.37319,
	mov	r2, #11	@,
	add	r0, r7, #242	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #740	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #224	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #55	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #240	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #121	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #256	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #187	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #272	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #198	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #288	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #828	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #304	@, D.37309,
	bl	memcpy	@
	add	r3, r4, #892	@, pVp6CodecInfo,
	add	r1, r3, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #320	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #209	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #336	@, D.37309,
	bl	memcpy	@
	add	r2, r4, #836	@, pVp6CodecInfo,
	add	r1, r2, #3	@,,
	add	r0, r5, #352	@, D.37309,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r0, r4, #904	@, pVp6CodecInfo,
	add	r1, r0, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #368	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #784	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #384	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #848	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #400	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #916	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #416	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #231	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #432	@, D.37309,
	bl	memcpy	@
	add	ip, r4, #860	@, pVp6CodecInfo,
	add	r1, ip, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #448	@, D.37309,
	bl	memcpy	@
	add	r3, r4, #924	@, pVp6CodecInfo,
	add	r1, r3, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #464	@, D.37309,
	bl	memcpy	@
	add	r1, r6, #242	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #480	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #872	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #496	@, D.37309,
	bl	memcpy	@
	add	r2, r4, #936	@, pVp6CodecInfo,
	add	r1, r2, #2	@,,
	add	r0, r5, #512	@, D.37309,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r6, #253	@, D.37319,
	mov	r2, #11	@,
	add	r0, r5, #528	@, D.37309,
	bl	memcpy	@
	add	r0, r4, #880	@, pVp6CodecInfo,
	add	r1, r0, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #544	@, D.37309,
	bl	memcpy	@
	add	r1, r4, #948	@, pVp6CodecInfo,
	add	r0, r5, #560	@, D.37309,
	add	r1, r1, #1	@,,
	mov	r2, #11	@,
	bl	memcpy	@
.L261:
	add	lr, r4, #3008	@, pVp6CodecInfo,
	add	r1, r4, #960	@, pVp6CodecInfo,
	add	r0, lr, #2	@,,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r3, r4, #3072	@, pVp6CodecInfo,
	add	r0, r3, #2	@,,
	add	r1, r4, #1024	@, pVp6CodecInfo,
	mov	r2, #64	@,
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L260:
	add	r5, r4, #4800	@, pVp6CodecInfo,
	add	r6, r4, #9472	@, pVp6CodecInfo,
	add	r7, r4, #9600	@ tmp633, pVp6CodecInfo,
	add	r8, r4, #4928	@ tmp632, pVp6CodecInfo,
	add	r1, r6, #28	@,,
	add	r0, r5, #2	@,,
	mov	r2, #128	@,
	add	r5, r8, #2	@ D.37275, tmp632,
	add	r6, r7, #28	@ D.37284, tmp633,
	bl	memcpy	@
	add	r2, r4, #11904	@, pVp6CodecInfo,
	add	r0, r4, #6464	@, pVp6CodecInfo,
	add	r1, r2, #28	@,,
	add	r0, r0, #2	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	mov	r1, r6	@, D.37284
	mov	r2, #64	@,
	mov	r0, r5	@, D.37275
	bl	memcpy	@
	add	r1, r7, #92	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #66	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #156	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #130	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #220	@, tmp633,
	add	r0, r8, #194	@, tmp632,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r7, #412	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #256	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #476	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #320	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #540	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #384	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #604	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #448	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #796	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #512	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #860	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #576	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #924	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #640	@, D.37275,
	bl	memcpy	@
	add	r1, r7, #988	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #704	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1152	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #768	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1216	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #832	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1280	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #896	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1344	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #960	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1536	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1024	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1600	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1088	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1664	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1152	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1728	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1216	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1920	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1280	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #1984	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1344	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #2048	@, D.37284,
	mov	r2, #64	@,
	add	r0, r5, #1408	@, D.37275,
	bl	memcpy	@
	add	r1, r6, #2112	@, D.37284,
	add	r0, r5, #1472	@, D.37275,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r4, #3136	@, pVp6CodecInfo,
	add	ip, r4, #1216	@, pVp6CodecInfo,
	add	r0, r1, #2	@,,
	mov	r2, #960	@,
	add	r1, ip, #2	@,,
	bl	memcpy	@
	b	.L261	@
	.fnend
	.size	VP6_CfgTable, .-VP6_CfgTable
	.align	2
	.global	VP6_Set_DecParam
	.type	VP6_Set_DecParam, %function
VP6_Set_DecParam:
	.fnstart
.LFB1376:
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
	movw	r3, #12300	@ tmp168,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	mov	r4, r0	@ pCtx, pCtx
	add	r5, r0, #8	@ pVp6DecParam, pCtx,
	ldr	r7, [r0, #204]	@ pVp6StreamParam, <variable>.pVp6StreamParam
	cmp	r3, #3	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L292	@,
	mov	r0, r5	@, pVp6DecParam
	mov	r1, #196	@,
	movw	sl, #12492	@ tmp198,
	bl	__memzero	@
	ldr	r8, [r4, sl]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.FrameType
	movw	r3, #12474	@ tmp204,
	movw	ip, #12540	@ tmp206,
	movw	r2, #12528	@ tmp208,
	ldr	r1, [r4, ip]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseHuffman
	movw	r9, #12476	@ tmp210,
	ldr	r0, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMode
	movw	r2, #12496	@ tmp231,
	str	r8, [r4, #68]	@, <variable>.Vp6DecParam.FrameType
	movw	r6, #12472	@ tmp202,
	ldrb	r8, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	movw	r3, #12500	@ tmp229,
	ldrh	ip, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r3, #12536	@ tmp216,
	str	r1, [r4, #80]	@, <variable>.Vp6DecParam.UseHuffman
	movw	r1, #12477	@ tmp212,
	str	r0, [r4, #92]	@, <variable>.Vp6DecParam.PredictionFilterMode
	ldrh	r0, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	movw	r2, #12473	@ tmp218,
	strh	ip, [r4, #60]	@ movhi	@, <variable>.Vp6DecParam.PicWidthInMb
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh
	ldr	r1, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseLoopFilter
	movw	r3, #12482	@ tmp223,
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh
	movw	r9, #12478	@ tmp214,
	strh	r0, [r4, #62]	@ movhi	@, <variable>.Vp6DecParam.PicHeightInMb
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha
	mov	r9, #12480	@ tmp221,
	str	r1, [r4, #116]	@, <variable>.Vp6DecParam.UseLoopFilter
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit
	ldrh	r2, [r4, r9]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant
	movw	r9, #12488	@ tmp225,
	ldr	r9, [r4, r9]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask
	movw	r6, #13000	@ tmp233,
	ldrh	r3, [r4, r3]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant
	str	r9, [r4, #112]	@, <variable>.Vp6DecParam.VpProfile
	movw	r9, #12484	@ tmp227,
	ldr	r9, [r4, r9]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.Vp3VersionNo
	str	r8, [r4, #76]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.MultiStream
	movw	r8, #12308	@ tmp235,
	str	lr, [r4, #96]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6DecParam.PredictionFilterVarThresh
	str	ip, [r4, #100]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6DecParam.PredictionFilterMvSizeThresh
	str	r2, [r4, #84]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6DecParam.DcQuant
	str	r3, [r4, #88]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6DecParam.AcQuant
	str	r9, [r4, #108]	@, <variable>.Vp6DecParam.Vp3VersionNo
	mov	r9, #0	@ tmp200,
	str	sl, [r4, #72]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6DecParam.DctQMask
	movw	sl, #12316	@ tmp239,
	str	r0, [r4, #104]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6DecParam.PredictionFilterAlpha
	strb	r1, [r4, #8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6DecParam.FLimit
	strb	r9, [r4, #9]	@ tmp200, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r8, r0	@ pCur.2893,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	ip, #12312	@ tmp243,
	ldr	r1, [r4, ip]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	sl, r0	@ pFwd.2896,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r8, r9	@ pCur.2893,
	cmpne	sl, r9	@, pFwd.2896,
	beq	.L277	@,
	cmp	r0, r9	@ pGolden.2899,
	beq	.L277	@,
	ldr	r6, [r8, #440]	@ temp.2903, <variable>.pstDecodeFs
	cmp	r6, #0	@ temp.2903,
	beq	.L293	@,
	ldr	lr, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	ip, #12324	@ tmp259,
	add	r6, r4, #12608	@ pBs, pCtx,
	add	r6, r6, #8	@ pBs, pBs,
	str	lr, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r1, [r8, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r1, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	ldr	r2, [r0, #440]	@ temp.2909, <variable>.pstDecodeFs
	movw	r0, #12556	@ tmp265,
	ldr	r1, [r4, ip]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6CodecInfo.DDR_Stride
	cmp	r2, #0	@ temp.2909,
	ldreq	r2, [r8, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r9, [r2, #12]	@ iftmp.468, <variable>.PhyAddr
	str	r9, [r4, #184]	@ iftmp.468, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	r3, [sl, #440]	@ temp.2913, <variable>.pstDecodeFs
	movw	sl, #12552	@ tmp261,
	ldr	r2, [r4, sl]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6CodecInfo.NewHeaderInfo.br.value
	cmp	r3, #0	@ temp.2913,
	ldreq	r3, [r8, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movw	r8, #12548	@ tmp263,
	ldr	r9, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6CodecInfo.NewHeaderInfo.br.range
	ldr	lr, [r3, #12]	@ iftmp.469, <variable>.PhyAddr
	ldr	r3, [r4, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6CodecInfo.NewHeaderInfo.br.count
	mov	r0, r6	@, pBs
	str	r1, [r4, #196]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6DecParam.VahbStride
	str	lr, [r4, #188]	@ iftmp.469, <variable>.Vp6DecParam.image_last_ref_addr
	str	r2, [r4, #168]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6DecParam.value
	str	r3, [r4, #176]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6DecParam.count
	str	r9, [r4, #172]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6DecParam.range
	movw	r9, #12474	@ tmp273,
	ldr	sl, [r7, #0]	@ D.37084, <variable>.VirAddr
	bl	BsPos	@
	cmp	r0, #0	@ D.37085,
	add	ip, r0, #7	@ tmp269, D.37085,
	movlt	r0, ip	@ D.37085, tmp269
	add	r8, sl, r0, asr #3	@, BaseAddrUnAligned, D.37084, D.37085,
	mov	r0, r8	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	bic	r1, r0, #15	@ tmp271,,
	mov	r0, r8	@, BaseAddrUnAligned
	sub	r2, r1, #16	@ tmp272, tmp271,
	str	r2, [r4, #64]	@ tmp272, <variable>.Vp6DecParam.StreamBaseAddr
	bl	MEM_Vir2Phy	@
	ldrb	r8, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	cmp	r8, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream,
	and	r0, r0, #15	@ ResideBytes,,
	bne	.L284	@,
	movw	ip, #12488	@ tmp275,
	ldr	sl, [r4, ip]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	cmp	sl, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile,
	bne	.L285	@,
.L284:
	movw	r8, #12524	@ tmp279,
	mov	r3, r0, asl #3	@ tmp278, ResideBytes,
	ldr	lr, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	str	r3, [r4, #124]	@ tmp278, <variable>.Vp6DecParam.bit0_offset_0
	mov	r6, #16	@ tmp277,
	str	r6, [r4, #128]	@ tmp277, <variable>.Vp6DecParam.bit0_stream_addr_0
	mov	r6, #0	@ tmp282,
	mov	r9, lr, asl #3	@ D.37100, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bl	BsPos	@
	ldr	r2, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	str	r6, [r4, #140]	@ tmp282, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	r6, [r4, #136]	@ tmp282, <variable>.Vp6DecParam.bit0_offset_1
	str	r6, [r4, #132]	@ tmp282, <variable>.Vp6DecParam.bit0_len_1
	rsb	r1, r0, r9	@ tmp281,, D.37100
	str	r1, [r4, #120]	@ tmp281, <variable>.Vp6DecParam.bit0_len_0
	ldr	r0, [r7, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	add	sl, r0, r2	@ BaseAddrUnAligned.2923, <variable>.VirAddr, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, sl	@, BaseAddrUnAligned.2923
	bl	MEM_Vir2Phy	@
	mov	r9, r0	@ D.37104,
	mov	r0, sl	@, BaseAddrUnAligned.2923
	bl	MEM_Vir2Phy	@
	and	ip, r9, #15	@ tmp291, D.37104,
	ldr	r2, [r4, #64]	@ <variable>.Vp6DecParam.StreamBaseAddr, <variable>.Vp6DecParam.StreamBaseAddr
	ldr	r3, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	sl, ip, asl #3	@ tmp292, tmp291,
	str	sl, [r4, #148]	@ tmp292, <variable>.Vp6DecParam.bit1_offset_0
	mov	r8, r3, asl #3	@ tmp296, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bic	r1, r0, #15	@ tmp288,,
	rsb	r9, r2, r1	@ tmp290, <variable>.Vp6DecParam.StreamBaseAddr, tmp288
	str	r9, [r4, #152]	@ tmp290, <variable>.Vp6DecParam.bit1_stream_addr_0
	ldr	r0, [r7, #8]	@ <variable>.Length, <variable>.Length
	str	r6, [r4, #156]	@ tmp282, <variable>.Vp6DecParam.bit1_len_1
	str	r6, [r4, #164]	@ tmp282, <variable>.Vp6DecParam.bit1_stream_addr_1
	rsb	r7, r8, r0, asl #3	@, tmp298, tmp296, <variable>.Length,
	str	r6, [r4, #160]	@ tmp282, <variable>.Vp6DecParam.bit1_offset_1
	str	r7, [r4, #144]	@ tmp298, <variable>.Vp6DecParam.bit1_len_0
.L286:
	add	r0, r4, #3344	@ tmp325, pCtx,
	add	r9, r4, #2448	@ tmp331, pCtx,
	add	sl, r4, #5120	@ tmp315, pCtx,
	add	r8, r4, #4352	@ tmp317, pCtx,
	add	r7, r4, #4992	@ tmp319, pCtx,
	add	r6, r4, #4288	@ tmp321, pCtx,
	add	ip, r4, #3280	@ tmp323, pCtx,
	add	r1, r4, #3216	@ tmp327, pCtx,
	add	r2, r4, #2512	@ tmp329, pCtx,
	add	r3, r4, #3152	@, pCtx,
	add	lr, r4, #6656	@, pCtx,
	str	r3, [fp, #-48]	@, %sfp
	str	lr, [fp, #-52]	@, %sfp
	add	r3, r0, #14	@ tmp325, tmp325,
	add	r8, r8, #62	@ tmp317, tmp317,
	str	r3, [r4, #32]	@ tmp325, <variable>.Vp6DecParam.TblHuffTree
	str	r8, [r4, #40]	@ tmp317, <variable>.Vp6DecParam.TblACProbs
	add	r0, r9, #14	@ tmp331, tmp331,
	add	ip, ip, #14	@ tmp323, tmp323,
	str	r0, [r4, #12]	@ tmp331, <variable>.Vp6DecParam.TblProbModeSame
	str	ip, [r4, #28]	@ tmp323, <variable>.Vp6DecParam.TblEobOffsetTable
	add	r1, r1, #14	@ tmp327, tmp327,
	add	sl, sl, #30	@ tmp315, tmp315,
	str	r1, [r4, #24]	@ tmp327, <variable>.Vp6DecParam.TblModifiedScanOrder
	str	sl, [r4, #52]	@ tmp315, <variable>.Vp6DecParam.TblAcHuffLUT
	add	r7, r7, #30	@ tmp319, tmp319,
	add	r6, r6, #30	@ tmp321, tmp321,
	str	r7, [r4, #48]	@ tmp319, <variable>.Vp6DecParam.TblDcHuffLUT
	str	r6, [r4, #36]	@ tmp321, <variable>.Vp6DecParam.TblDcNodeContexts
	add	r2, r2, #14	@ tmp329, tmp329,
	str	r2, [r4, #16]	@ tmp329, <variable>.Vp6DecParam.TblProbMode
	add	lr, r4, #4928	@ tmp337, pCtx,
	ldr	r8, [fp, #-48]	@, %sfp
	add	ip, lr, #62	@ tmp337, tmp337,
	ldr	lr, [r4, #0]	@, <variable>.pstExtraData
	mov	r0, #1	@ D.37011,
	add	r8, r8, #14	@,,
	str	r8, [r4, #20]	@, <variable>.Vp6DecParam.TblProbMv
	ldr	r9, [fp, #-52]	@, %sfp
	str	ip, [r4, #44]	@ tmp337, <variable>.Vp6DecParam.TblZeroProbs
	add	r9, r9, #30	@,,
	str	r9, [r4, #56]	@, <variable>.Vp6DecParam.TblZeroHuffLUT
	ldr	r3, [lr, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	r3, [r4, #200]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
	ldr	r1, [lr, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #200]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
.L271:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L292:
	str	r3, [r0, #68]	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6DecParam.FrameType
	movw	r6, #13000	@ tmp173,
	movw	r0, #12308	@ tmp175,
	mov	sl, #1	@ tmp171,
	ldr	r1, [r4, r0]	@, <variable>.Vp6CodecInfo.CurFsID
	movw	r8, #12316	@ tmp179,
	strb	sl, [r4, #9]	@ tmp171, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #12312	@ tmp183,
	ldr	r1, [r4, r2]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	beq	.L277	@,
	cmp	r0, #0	@ pGolden,
	bne	.L270	@,
.L277:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37011,
	b	.L271	@
.L270:
	ldr	r6, [r7, #440]	@ D.37012, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.37012,
	beq	.L294	@,
	ldr	r1, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r2, [r7, #452]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	ldr	r3, [r0, #440]	@ D.37021, <variable>.pstDecodeFs
	mov	r0, #1	@ D.37011,
	cmp	r3, #0	@ D.37021,
	ldreq	r3, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r3, #12]	@ iftmp.463, <variable>.PhyAddr
	str	lr, [r4, #184]	@ iftmp.463, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	ip, [r8, #440]	@ D.37027, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.37027,
	ldreq	ip, [r7, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [ip, #12]	@ iftmp.464, <variable>.PhyAddr
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	r1, [r4, #188]	@ iftmp.464, <variable>.Vp6DecParam.image_last_ref_addr
	b	.L271	@
.L285:
	mov	r2, r0, asl #3	@ tmp303, ResideBytes,
	mov	r0, #16	@ tmp302,
	str	r2, [r4, #124]	@ tmp303, <variable>.Vp6DecParam.bit0_offset_0
	str	r0, [r4, #128]	@ tmp302, <variable>.Vp6DecParam.bit0_stream_addr_0
	mov	r0, r6	@, pBs
	ldr	ip, [r7, #8]	@ <variable>.Length, <variable>.Length
	mov	sl, ip, asl #3	@ D.37112, <variable>.Length,
	bl	BsPos	@
	str	r8, [r4, #156]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_1
	str	r8, [r4, #140]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	r8, [r4, #136]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_offset_1
	str	r8, [r4, #132]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_len_1
	str	r8, [r4, #152]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_0
	str	r8, [r4, #148]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_0
	str	r8, [r4, #144]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_0
	str	r8, [r4, #164]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_1
	str	r8, [r4, #160]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_1
	rsb	r7, r0, sl	@ tmp305,, D.37112
	str	r7, [r4, #120]	@ tmp305, <variable>.Vp6DecParam.bit0_len_0
	b	.L286	@
.L293:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37011, temp.2903
	b	.L271	@
.L294:
	mov	r0, sl	@, tmp171
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37011, D.37012
	b	.L271	@
	.fnend
	.size	VP6_Set_DecParam, .-VP6_Set_DecParam
	.align	2
	.global	VP6DEC_Init
	.type	VP6DEC_Init, %function
VP6DEC_Init:
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
	mov	r5, #12992	@ tmp139,
	ldr	r7, [r0, r5]	@ D.36885, <variable>.ImageQue.ResetMagicWord
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #13008	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, r5]	@ D.36885, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #13000	@ tmp143,
	cmn	r0, #1	@ D.36893,
	str	r0, [r4, r3]	@ D.36893, <variable>.ChanID
	beq	.L299	@,
	add	r0, r4, #220	@, pCtx,
	movw	r1, #12396	@,
	bl	__memzero	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12324	@ tmp146,
	movw	r0, #12296	@ tmp148,
	mov	ip, #1024	@ tmp147,
	mov	r1, #0	@ tmp149,
	str	ip, [r4, r2]	@ tmp147, <variable>.Vp6CodecInfo.DDR_Stride
	mov	ip, #12288	@ tmp150,
	str	r1, [r4, r0]	@ tmp149, <variable>.Vp6CodecInfo.Imgbuf_allocated
	mov	r0, #22	@,
	ldr	r2, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r2, [r4, ip]	@ <variable>.s32DecMode, <variable>.Vp6CodecInfo.UsedDecMode
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36898,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L299:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36898,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_Init, .-VP6DEC_Init
	.align	2
	.global	Vp6_Vfmw_StartDecode
	.type	Vp6_Vfmw_StartDecode, %function
Vp6_Vfmw_StartDecode:
	.fnstart
.LFB1352:
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
	mov	r4, r1	@ pBr, pBr
	mov	r2, #0	@ tmp136,
	mov	r3, #8	@ tmp138,
	str	r2, [r1, #0]	@ tmp136, <variable>.lowvalue
	mov	r1, #255	@ tmp137,
	str	r3, [r4, #12]	@ tmp138, <variable>.count
	str	r1, [r4, #4]	@ tmp137, <variable>.range
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #8]	@, <variable>.value
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_StartDecode, .-Vp6_Vfmw_StartDecode
	.align	2
	.global	Vp6_Vfmw_DecodeBool128
	.type	Vp6_Vfmw_DecodeBool128, %function
Vp6_Vfmw_DecodeBool128:
	.fnstart
.LFB1350:
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
	mov	r4, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.3003, <variable>.range
	ldr	r5, [r4, #8]	@ value.3004, <variable>.value
	add	r7, r1, #1	@ tmp148, range.3003,
	ldr	r3, [r4, #12]	@ count.3002, <variable>.count
	mov	r7, r7, lsr #1	@ split, tmp148,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r5, r2	@ value.3004, bigsplit
	rsbcs	r7, r7, r1	@ D.35659, split, range.3003
	rsbcs	r5, r2, r5	@ D.35660, bigsplit, value.3004
	movcs	r6, #1	@ bit,
	movcc	r7, r7, asl #1	@ range, split,
	movcs	r7, r7, asl r6	@ range, D.35659,
	movcs	r5, r5, asl r6	@ value, D.35660,
	movcc	r5, r5, asl #1	@ value, value.3004,
	movcc	r6, #0	@ bit,
	subs	r3, r3, #1	@ count, count.3002,
	bne	.L305	@,
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r3, #8	@ count,
	orr	r5, r5, r0	@ value, value,
.L305:
	str	r7, [r4, #4]	@ range, <variable>.range
	mov	r0, r6	@, bit
	str	r3, [r4, #12]	@ count, <variable>.count
	str	r5, [r4, #8]	@ value, <variable>.value
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool128, .-Vp6_Vfmw_DecodeBool128
	.align	2
	.global	Vp6_Vfmw_BoolRead
	.type	Vp6_Vfmw_BoolRead, %function
Vp6_Vfmw_BoolRead:
	.fnstart
.LFB1351:
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
	subs	r6, r2, #1	@ i, nBits,
	mov	r8, r0	@ pBs, pBs
	mov	r7, r1	@ pBr, pBr
	movmi	r6, #0	@ value,
	bmi	.L309	@,
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r6, #1	@ i, i,
	and	r3, r6, #1	@ tmp144, i,
	mov	r6, r0, asl r6	@ value,,
	bmi	.L309	@,
	cmp	r3, #0	@ tmp144,
	beq	.L310	@,
	mov	r0, r8	@, pBs
	mov	r1, r7	@, pBr
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r6, r6, r0, asl r4	@, value, value,,
	subs	r4, r4, #1	@ i, i,
	bmi	.L309	@,
.L310:
	mov	r1, r7	@, pBr
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r7	@, pBr
	sub	r5, r4, #1	@ tmp145, i,
	orr	r6, r6, r0, asl r4	@, value, value,,
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r5, #1	@ i, tmp145,
	orr	r6, r6, r0, asl r5	@, value, value,,
	bpl	.L310	@,
.L309:
	mov	r0, r6	@, value
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_BoolRead, .-Vp6_Vfmw_BoolRead
	.align	2
	.global	VP6_InterFrmHeader
	.type	VP6_InterFrmHeader, %function
VP6_InterFrmHeader:
	.fnstart
.LFB1371:
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
	movw	r3, #12120	@ tmp149,
	ldr	r2, [r0, r3]	@ D.36780, <variable>.OldHeaderInfo.Vp3VersionNo
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r6, r1	@ pBs, pBs
	cmp	r2, #0	@ D.36780,
	beq	.L332	@,
	movw	r3, #12254	@ tmp157,
	movw	lr, #12124	@ tmp155,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	movw	r5, #12264	@ tmp153,
	ldr	r1, [r0, lr]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	cmp	ip, #0	@ <variable>.NewHeaderInfo.MultiStream,
	str	r2, [r0, r5]	@ D.36780, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r2, #12268	@ tmp154,
	str	r1, [r0, r2]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	bne	.L333	@,
	add	r5, r0, #12288	@ temp.3058, pVp6CodecInfo,
	mov	r0, r6	@, pBs
	add	r5, r5, #36	@ temp.3058, temp.3058,
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_StartDecode	@
.L322:
	mov	r1, r5	@, temp.3058
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12124	@ tmp167,
	ldr	r2, [r4, r1]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	movw	r3, #12084	@ tmp166,
	movw	ip, #12312	@ tmp165,
	cmp	r2, #0	@ <variable>.OldHeaderInfo.VpProfile,
	str	r0, [r4, r3]	@ D.36794, <variable>.RefreshGoldenFrame
	str	r0, [r4, ip]	@ D.36794, <variable>.NewHeaderInfo.RefreshGoldenFrame
	bne	.L334	@,
	movw	r0, #12308	@ tmp193,
	mov	r3, #1	@ D.36785,
	str	r2, [r4, r0]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	movw	r2, #12258	@ tmp190,
	mov	ip, #14	@ tmp191,
	strb	ip, [r4, r2]	@ tmp191, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L320:
	mov	r0, r3	@, D.36785
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L333:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	add	r1, r4, #12288	@ temp.3058, pVp6CodecInfo,
	add	r5, r1, #36	@ temp.3058, temp.3058,
	movw	r2, #12304	@ tmp159,
	mov	r1, r5	@, temp.3058
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
	b	.L322	@
.L334:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r8, #12316	@ tmp169,
	cmp	r0, #0	@ D.36798,
	mov	r7, r0	@ D.36798,
	str	r0, [r4, r8]	@ D.36798, <variable>.NewHeaderInfo.UseLoopFilter
	bne	.L335	@,
.L324:
	movw	r2, #12120	@ tmp173,
	ldr	lr, [r4, r2]	@ <variable>.OldHeaderInfo.Vp3VersionNo, <variable>.OldHeaderInfo.Vp3VersionNo
	cmp	lr, #7	@ <variable>.OldHeaderInfo.Vp3VersionNo,
	movwls	lr, #12258	@ tmp187,
	movls	r2, #16	@ tmp188,
	strlsb	r2, [r4, lr]	@ tmp188, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bhi	.L336	@,
.L331:
	mov	r3, #1	@ D.36785,
	mov	r0, r3	@, D.36785
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L336:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L331	@,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L327	@,
	movw	lr, #12308	@ tmp175,
	mov	r1, r5	@, temp.3058
	mov	r2, #5	@,
	mov	r0, #2	@ tmp176,
	str	r0, [r4, lr]	@ tmp176, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12256	@ tmp177,
	mov	r1, r5	@, temp.3058
	mov	r2, #3	@,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	ip, #12257	@ tmp179,
	strb	r0, [r4, ip]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L328:
	mov	r1, r5	@, temp.3058
	mov	r0, r6	@, pBs
	mov	r2, #4	@,
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12258	@ tmp185,
	mov	r3, #1	@ D.36785,
	strb	r0, [r4, r1]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L320	@
.L335:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r0, r0, r7, asl #1	@, tmp172,, D.36798,
	str	r0, [r4, r8]	@ tmp172, <variable>.NewHeaderInfo.UseLoopFilter
	b	.L324	@
.L327:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3058
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.36818
	movwne	r3, #12308	@ tmp181,
	movweq	r3, #12308	@ tmp183,
	movne	r2, #1	@ tmp182,
	streq	r0, [r4, r3]	@ D.36818, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp182, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L328	@
.L332:
	movw	r0, #12264	@ tmp151,
	movw	r1, #:lower16:.LC17	@,
	ldr	r3, [r4, r0]	@, <variable>.NewHeaderInfo.Vp3VersionNo
	movt	r1, #:upper16:.LC17	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r3, #87	@ D.36785,
	b	.L320	@
	.fnend
	.size	VP6_InterFrmHeader, .-VP6_InterFrmHeader
	.align	2
	.global	VP6_IntraFrmHeader
	.type	VP6_IntraFrmHeader, %function
VP6_IntraFrmHeader:
	.fnstart
.LFB1370:
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
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r5, r1	@ pBs, pBs
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	movw	r6, #12264	@ tmp160,
	bl	BsGet	@
	mov	r1, #2	@,
	uxtb	r2, r0	@ D.36695,
	mov	r0, r5	@, pBs
	str	r2, [r4, r6]	@ D.36695, <variable>.NewHeaderInfo.Vp3VersionNo
	bl	BsGet	@
	ldr	r2, [r4, r6]	@ D.36701, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r3, #12268	@ tmp162,
	cmp	r2, #8	@ D.36701,
	uxtb	r0, r0	@ D.36698,
	str	r0, [r4, r3]	@ D.36698, <variable>.NewHeaderInfo.VpProfile
	bhi	.L355	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	tst	r0, #255	@
	bne	.L356	@,
	movw	r6, #12254	@ tmp169,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	cmp	r1, #0	@ <variable>.NewHeaderInfo.MultiStream,
	beq	.L341	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r8, r4, #12288	@ temp.3088, pVp6CodecInfo,
	add	r6, r8, #36	@ temp.3088, temp.3088,
	movw	r7, #12304	@ tmp171,
	mov	r1, r6	@, temp.3088
	str	r0, [r4, r7]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
.L342:
	mov	r1, r6	@, temp.3088
	mov	r2, #8	@,
	mov	r0, r5	@, pBs
	movw	r8, #12276	@ tmp177,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3088
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.36718,
	mov	r0, r5	@, pBs
	str	r3, [r4, r8]	@ D.36718, <variable>.NewHeaderInfo.pic_height_in_mb
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [r4, r8]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	mov	ip, #12288	@ tmp184,
	movw	r2, #12284	@ tmp180,
	mov	r1, r6	@, temp.3088
	mov	r7, r7, asl #1	@ tmp183, <variable>.NewHeaderInfo.pic_height_in_mb,
	str	r7, [r4, r2]	@ tmp183, <variable>.NewHeaderInfo.VMacroblockCount
	mov	r2, #8	@,
	uxtb	r8, r0	@ D.36723,
	movw	r0, #12280	@ tmp179,
	str	r8, [r4, r0]	@ D.36723, <variable>.NewHeaderInfo.pic_width_in_mb
	mov	r0, r5	@, pBs
	mov	r8, r8, asl #1	@ D.36727, D.36723,
	str	r8, [r4, ip]	@ D.36727, <variable>.NewHeaderInfo.HMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3088
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.36728,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp189, D.36728,
	movw	r3, #12292	@ tmp187,
	str	ip, [r4, r3]	@ tmp189, <variable>.NewHeaderInfo.OutputVMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, #2	@,
	mov	r1, r6	@, temp.3088
	uxtb	r3, r0	@ D.36733,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp192, D.36733,
	movw	r3, #12296	@ tmp190,
	str	ip, [r4, r3]	@ tmp192, <variable>.NewHeaderInfo.OutputHMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12064	@ tmp195,
	ldr	r3, [r4, r3]	@ D.36742, <variable>.VOldScaled
	movw	r2, #12255	@ tmp193,
	cmp	r3, r7	@ D.36742, tmp183
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.ScalingMode
	beq	.L343	@,
	movw	lr, #12060	@ tmp196,
	ldr	r2, [r4, lr]	@ prephitmp.3076, <variable>.HOldScaled
.L344:
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC21	@,
	str	r8, [sp, #0]	@ D.36727,
	str	r7, [sp, #4]	@ tmp183,
	bl	dprint_vfmw	@
.L345:
	movw	r2, #12268	@ tmp201,
	movw	r0, #12060	@ tmp199,
	ldr	r3, [r4, r2]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	movw	ip, #12064	@ tmp200,
	str	r8, [r4, r0]	@ D.36727, <variable>.HOldScaled
	cmp	r3, #0	@ <variable>.NewHeaderInfo.VpProfile,
	str	r7, [r4, ip]	@ tmp183, <variable>.VOldScaled
	bne	.L357	@,
	movw	r0, #12308	@ tmp227,
	movw	lr, #12258	@ tmp224,
	mov	r1, #14	@ tmp225,
	str	r3, [r4, r0]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	strb	r1, [r4, lr]	@ tmp225, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L353:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36705,
.L339:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L355:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36705,
	b	.L339	@
.L341:
	add	ip, r4, #12288	@ temp.3088, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r6, ip, #36	@ temp.3088, temp.3088,
	mov	r1, r6	@, temp.3088
	bl	Vp6_Vfmw_StartDecode	@
	b	.L342	@
.L343:
	movw	r1, #12060	@ tmp197,
	ldr	r2, [r4, r1]	@ prephitmp.3076, <variable>.HOldScaled
	cmp	r8, r2	@ D.36727, prephitmp.3076
	bne	.L344	@,
	b	.L345	@
.L356:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36705,
	b	.L339	@
.L357:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3088
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L347	@,
	movw	r0, #12308	@ tmp203,
	mov	lr, #2	@ tmp204,
	mov	r1, r6	@, temp.3088
	str	lr, [r4, r0]	@ tmp204, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r2, #5	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12264	@ tmp205,
	ldr	r3, [r4, r1]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	ip, #12256	@ tmp207,
	mov	r1, r6	@, temp.3088
	mov	r2, #3	@,
	cmp	r3, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movls	r3, #5	@ iftmp.454,
	movhi	r3, #0	@ iftmp.454,
	mov	r3, r0, asl r3	@ tmp209,,
	mov	r0, r5	@, pBs
	strb	r3, [r4, ip]	@ tmp209, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12257	@ tmp211,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L350:
	movw	r3, #12264	@ tmp217,
	ldr	ip, [r4, r3]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	cmp	ip, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movwls	ip, #12258	@ tmp221,
	movls	r2, #16	@ tmp222,
	strlsb	r2, [r4, ip]	@ tmp222, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bls	.L353	@,
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3088
	bl	Vp6_Vfmw_BoolRead	@
	movw	r2, #12258	@ tmp219,
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L353	@
.L347:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3088
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.36764
	movwne	r3, #12308	@ tmp213,
	movweq	r3, #12308	@ tmp215,
	movne	r2, #1	@ tmp214,
	streq	r0, [r4, r3]	@ D.36764, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp214, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L350	@
	.fnend
	.size	VP6_IntraFrmHeader, .-VP6_IntraFrmHeader
	.align	2
	.global	VP6_GetPictureHeader
	.type	VP6_GetPictureHeader, %function
VP6_GetPictureHeader:
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
	cmp	r0, #0	@ pVp6CodecInfo,
	cmpne	r1, #0	@, pBs,
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L364	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	movw	r6, #12272	@ tmp155,
	bl	dprint_vfmw	@
	add	r1, r4, #12224	@, pVp6CodecInfo,
	add	r0, r1, #28	@,,
	mov	r1, #4	@,
	bl	__memzero	@
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r3, #12080	@ tmp156,
	mov	r1, #6	@,
	uxtb	ip, r0	@ D.36849,
	mov	r0, r5	@, pBs
	strb	ip, [r4, r3]	@ D.36849, <variable>.FrameType
	str	ip, [r4, r6]	@ D.36849, <variable>.NewHeaderInfo.FrameType
	bl	BsGet	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp161,
	movt	r3, #:upper16:.LANCHOR0	@ tmp161,
	movw	lr, #12260	@ tmp167,
	mov	r1, #1	@,
	uxtb	r2, r0	@ D.36854,
	movw	r0, #12252	@ tmp158,
	add	ip, r2, r3	@ tmp163, D.36854, tmp161
	strb	r2, [r4, r0]	@ D.36854, <variable>.NewHeaderInfo.DctQMask
	add	r3, r3, r2, asl #1	@, tmp171, tmp161, D.36854,
	mov	r0, r5	@, pBs
	ldrb	r2, [ip, #120]	@ zero_extendqisi2	@ tmp165, VP6_LoopFilterLimitValues
	add	ip, r3, #312	@ tmp180, tmp171,
	ldrh	r3, [r3, #184]	@, DcQuantTab
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.DcQuant
	movw	lr, #12262	@ tmp175,
	ldrh	r3, [ip, #0]	@, AcQuantTab
	movw	ip, #12253	@ tmp160,
	strb	r2, [r4, ip]	@ tmp165, <variable>.NewHeaderInfo.FLimit
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.AcQuant
	bl	BsGet	@
	ldr	r1, [r4, r6]	@ <variable>.NewHeaderInfo.FrameType, <variable>.NewHeaderInfo.FrameType
	movw	r3, #12254	@ tmp183,
	cmp	r1, #0	@ <variable>.NewHeaderInfo.FrameType,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.MultiStream
	beq	.L365	@,
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_InterFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	beq	.L366	@,
.L360:
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L365:
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_IntraFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	bne	.L360	@,
.L366:
	add	lr, r4, #12288	@, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r1, lr, #36	@,,
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12252	@ tmp191,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.DctQMask
	movw	r3, #12300	@ tmp190,
	movw	r2, #12320	@ tmp189,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [r4, r3]	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.LastFrameQIndex
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.UseHuffman
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L364:
	mov	r6, #0	@ ret,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_GetPictureHeader, .-VP6_GetPictureHeader
	.align	2
	.global	Vp6_Vfmw_DecodeBool
	.type	Vp6_Vfmw_DecodeBool, %function
Vp6_Vfmw_DecodeBool:
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
	mov	r5, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.3138, <variable>.range
	mov	r6, r0	@ pBs, pBs
	ldr	r4, [r5, #8]	@ value, <variable>.value
	sub	r0, r1, #1	@ tmp145, range.3138,
	ldr	r3, [r5, #12]	@ count, <variable>.count
	mul	ip, r0, r2	@ tmp146, tmp145, probability
	mov	r7, ip, lsr #8	@ tmp147, tmp146,
	add	r7, r7, #1	@ split, tmp147,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r4, r2	@ value, bigsplit
	rsbcs	r7, r7, r1	@ range, split, range.3138
	rsbcs	r4, r2, r4	@ value, bigsplit, value
	movcc	r8, #0	@ bit,
	movcs	r8, #1	@ bit,
	cmp	r7, #127	@ range,
	strhi	r7, [r5, #4]	@ range, <variable>.range
	strhi	r4, [r5, #8]	@ value, <variable>.value
	bls	.L374	@,
	b	.L371	@
.L372:
	cmp	r7, #127	@ range,
	bhi	.L376	@,
.L374:
	subs	r3, r3, #1	@ count, count,
	mov	r7, r7, asl #1	@ range, range,
	mov	r4, r4, asl #1	@ value, value,
	bne	.L372	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r7, #127	@ range,
	mov	r3, #8	@ count,
	orr	r4, r4, r0	@ value, value,
	bls	.L374	@,
.L376:
	str	r7, [r5, #4]	@ range, <variable>.range
	str	r3, [r5, #12]	@ count, <variable>.count
	str	r4, [r5, #8]	@ value, <variable>.value
.L371:
	mov	r0, r8	@, bit
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool, .-Vp6_Vfmw_DecodeBool
	.align	2
	.global	VP6_ConfigureMvEntropyDecoder
	.type	VP6_ConfigureMvEntropyDecoder, %function
VP6_ConfigureMvEntropyDecoder:
	.fnstart
.LFB1362:
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
	movw	r6, #:lower16:.LANCHOR0	@ tmp477,
	add	r4, r2, #72	@ D.36216, pbi,
	movt	r6, #:upper16:.LANCHOR0	@ tmp477,
	mov	r5, r1	@ pBs, pBs
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	ldrb	r2, [r6, #440]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L417	@,
.L378:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #441]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L418	@,
.L379:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #457]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L419	@,
.L380:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #458]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L420	@,
.L381:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #442]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L421	@,
.L382:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #443]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L422	@,
.L383:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #444]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L423	@,
.L384:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #445]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L424	@,
.L385:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #446]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L425	@,
.L386:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #447]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L426	@,
.L387:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #448]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L427	@,
.L388:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #459]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L428	@,
.L390:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #460]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L429	@,
.L402:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #461]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L430	@,
.L403:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #462]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L431	@,
.L404:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #463]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L432	@,
.L405:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #464]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L433	@,
.L406:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #465]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L434	@,
.L391:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #449]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L435	@,
.L392:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #450]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L436	@,
.L393:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #451]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L437	@,
.L394:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #452]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L438	@,
.L395:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #453]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L439	@,
.L396:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #454]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L440	@,
.L397:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #455]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L441	@,
.L398:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #456]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L442	@,
.L399:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #466]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L443	@,
.L401:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #467]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L444	@,
.L409:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #468]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L445	@,
.L410:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #469]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L446	@,
.L411:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #470]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L447	@,
.L412:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #471]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L448	@,
.L413:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	ldrb	r2, [r6, #472]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L449	@,
	ldrb	r2, [r6, #473]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L450:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp424,,
	uxtb	ip, r3	@ D.36258, tmp424
	strb	ip, [r7, #513]	@ D.36258, <variable>.MvSizeProbs
	cmp	ip, #0	@ D.36258,
	moveq	ip, #1	@ tmp426,
	streqb	ip, [r7, #513]	@ tmp426, <variable>.MvSizeProbs
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L449:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r6, #473]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r1, r4	@, D.36216
	mov	r3, r0, asl #1	@ tmp471,,
	mov	r0, r5	@, pBs
	uxtb	ip, r3	@ temp.3268, tmp471
	strb	ip, [r7, #512]	@ temp.3268, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3268,
	moveq	ip, #1	@ tmp473,
	streqb	ip, [r7, #512]	@ tmp473, <variable>.MvSizeProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	b	.L450	@
.L448:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp464,,
	uxtb	r1, r2	@ temp.3261, tmp464
	strb	r1, [r7, #511]	@ temp.3261, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3261,
	moveq	r1, #1	@ tmp466,
	streqb	r1, [r7, #511]	@ tmp466, <variable>.MvSizeProbs
	b	.L413	@
.L447:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp457,,
	uxtb	r0, r3	@ temp.3253, tmp457
	strb	r0, [r7, #510]	@ temp.3253, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3253,
	moveq	r0, #1	@ tmp459,
	streqb	r0, [r7, #510]	@ tmp459, <variable>.MvSizeProbs
	b	.L412	@
.L446:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp450,,
	uxtb	r2, ip	@ temp.3248, tmp450
	strb	r2, [r7, #509]	@ temp.3248, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3248,
	moveq	r2, #1	@ tmp452,
	streqb	r2, [r7, #509]	@ tmp452, <variable>.MvSizeProbs
	b	.L411	@
.L445:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp443,,
	uxtb	r3, r1	@ temp.3241, tmp443
	strb	r3, [r7, #508]	@ temp.3241, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3241,
	moveq	r3, #1	@ tmp445,
	streqb	r3, [r7, #508]	@ tmp445, <variable>.MvSizeProbs
	b	.L410	@
.L444:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp436,,
	uxtb	r0, ip	@ temp.3233, tmp436
	strb	r0, [r7, #507]	@ temp.3233, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3233,
	moveq	r0, #1	@ tmp438,
	streqb	r0, [r7, #507]	@ tmp438, <variable>.MvSizeProbs
	b	.L409	@
.L443:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp429,,
	uxtb	r1, r2	@ temp.3228, tmp429
	strb	r1, [r7, #506]	@ temp.3228, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3228,
	moveq	r1, #1	@ tmp431,
	streqb	r1, [r7, #506]	@ tmp431, <variable>.MvSizeProbs
	b	.L401	@
.L442:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp375,,
	uxtb	r0, r3	@ temp.3318, tmp375
	strb	r0, [r7, #505]	@ temp.3318, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3318,
	moveq	r0, #1	@ tmp377,
	streqb	r0, [r7, #505]	@ tmp377, <variable>.MvSizeProbs
	b	.L399	@
.L441:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp368,,
	uxtb	r2, ip	@ temp.3313, tmp368
	strb	r2, [r7, #504]	@ temp.3313, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3313,
	moveq	r2, #1	@ tmp370,
	streqb	r2, [r7, #504]	@ tmp370, <variable>.MvSizeProbs
	b	.L398	@
.L440:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp361,,
	uxtb	r3, r1	@ temp.3308, tmp361
	strb	r3, [r7, #503]	@ temp.3308, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3308,
	moveq	r3, #1	@ tmp363,
	streqb	r3, [r7, #503]	@ tmp363, <variable>.MvSizeProbs
	b	.L397	@
.L439:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp354,,
	uxtb	r0, ip	@ temp.3303, tmp354
	strb	r0, [r7, #502]	@ temp.3303, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3303,
	moveq	r0, #1	@ tmp356,
	streqb	r0, [r7, #502]	@ tmp356, <variable>.MvSizeProbs
	b	.L396	@
.L438:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp347,,
	uxtb	r1, r2	@ temp.3298, tmp347
	strb	r1, [r7, #501]	@ temp.3298, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3298,
	moveq	r1, #1	@ tmp349,
	streqb	r1, [r7, #501]	@ tmp349, <variable>.MvSizeProbs
	b	.L395	@
.L437:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp340,,
	uxtb	ip, r3	@ temp.3293, tmp340
	strb	ip, [r7, #500]	@ temp.3293, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3293,
	moveq	ip, #1	@ tmp342,
	streqb	ip, [r7, #500]	@ tmp342, <variable>.MvSizeProbs
	b	.L394	@
.L436:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp333,,
	uxtb	r0, r2	@ temp.3288, tmp333
	strb	r0, [r7, #499]	@ temp.3288, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3288,
	moveq	r0, #1	@ tmp335,
	streqb	r0, [r7, #499]	@ tmp335, <variable>.MvSizeProbs
	b	.L393	@
.L435:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp326,,
	uxtb	r3, r1	@ temp.3283, tmp326
	strb	r3, [r7, #498]	@ temp.3283, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3283,
	moveq	r3, #1	@ tmp328,
	streqb	r3, [r7, #498]	@ tmp328, <variable>.MvSizeProbs
	b	.L392	@
.L434:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp319,,
	uxtb	r2, ip	@ D.36246, tmp319
	strb	r2, [r7, #497]	@ D.36246, <variable>.MvShortProbs
	cmp	r2, #0	@ D.36246,
	moveq	r2, #1	@ tmp321,
	streqb	r2, [r7, #497]	@ tmp321, <variable>.MvShortProbs
	b	.L391	@
.L433:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp417,,
	uxtb	r0, r2	@ temp.3223, tmp417
	strb	r0, [r7, #496]	@ temp.3223, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3223,
	moveq	r0, #1	@ tmp419,
	streqb	r0, [r7, #496]	@ tmp419, <variable>.MvShortProbs
	b	.L406	@
.L432:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp410,,
	uxtb	r3, r1	@ temp.3216, tmp410
	strb	r3, [r7, #495]	@ temp.3216, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3216,
	moveq	r3, #1	@ tmp412,
	streqb	r3, [r7, #495]	@ tmp412, <variable>.MvShortProbs
	b	.L405	@
.L431:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp403,,
	uxtb	r2, ip	@ temp.3208, tmp403
	strb	r2, [r7, #494]	@ temp.3208, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3208,
	moveq	r2, #1	@ tmp405,
	streqb	r2, [r7, #494]	@ tmp405, <variable>.MvShortProbs
	b	.L404	@
.L430:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp396,,
	uxtb	r0, r1	@ temp.3203, tmp396
	strb	r0, [r7, #493]	@ temp.3203, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3203,
	moveq	r0, #1	@ tmp398,
	streqb	r0, [r7, #493]	@ tmp398, <variable>.MvShortProbs
	b	.L403	@
.L429:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp389,,
	uxtb	ip, r3	@ temp.3196, tmp389
	strb	ip, [r7, #492]	@ temp.3196, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3196,
	moveq	ip, #1	@ tmp391,
	streqb	ip, [r7, #492]	@ tmp391, <variable>.MvShortProbs
	b	.L402	@
.L428:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp382,,
	uxtb	r1, r2	@ temp.3188, tmp382
	strb	r1, [r7, #491]	@ temp.3188, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3188,
	moveq	r1, #1	@ tmp384,
	streqb	r1, [r7, #491]	@ tmp384, <variable>.MvShortProbs
	b	.L390	@
.L427:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp312,,
	uxtb	r0, r1	@ temp.3278, tmp312
	strb	r0, [r7, #490]	@ temp.3278, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3278,
	moveq	r0, #1	@ tmp314,
	streqb	r0, [r7, #490]	@ tmp314, <variable>.MvShortProbs
	b	.L388	@
.L426:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp305,,
	uxtb	ip, r3	@ temp.3273, tmp305
	strb	ip, [r7, #489]	@ temp.3273, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3273,
	moveq	ip, #1	@ tmp307,
	streqb	ip, [r7, #489]	@ tmp307, <variable>.MvShortProbs
	b	.L387	@
.L425:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp298,,
	uxtb	r1, r2	@ temp.3177, tmp298
	strb	r1, [r7, #488]	@ temp.3177, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3177,
	moveq	r1, #1	@ tmp300,
	streqb	r1, [r7, #488]	@ tmp300, <variable>.MvShortProbs
	b	.L386	@
.L424:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp291,,
	uxtb	r0, r3	@ temp.3189, tmp291
	strb	r0, [r7, #487]	@ temp.3189, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3189,
	moveq	r0, #1	@ tmp293,
	streqb	r0, [r7, #487]	@ tmp293, <variable>.MvShortProbs
	b	.L385	@
.L423:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp284,,
	uxtb	r2, ip	@ temp.3209, tmp284
	strb	r2, [r7, #486]	@ temp.3209, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3209,
	moveq	r2, #1	@ tmp286,
	streqb	r2, [r7, #486]	@ tmp286, <variable>.MvShortProbs
	b	.L384	@
.L422:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp277,,
	uxtb	r3, r1	@ temp.3234, tmp277
	strb	r3, [r7, #485]	@ temp.3234, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3234,
	moveq	r3, #1	@ tmp279,
	streqb	r3, [r7, #485]	@ tmp279, <variable>.MvShortProbs
	b	.L383	@
.L421:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp270,,
	uxtb	r0, ip	@ temp.3254, tmp270
	strb	r0, [r7, #484]	@ temp.3254, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3254,
	moveq	r0, #1	@ tmp272,
	streqb	r0, [r7, #484]	@ tmp272, <variable>.MvShortProbs
	b	.L382	@
.L420:
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp263,,
	uxtb	r1, r2	@ D.36234, tmp263
	strb	r1, [r7, #1]	@ D.36234, <variable>.MvSignProbs
	cmp	r1, #0	@ D.36234,
	moveq	r1, #1	@ tmp265,
	streqb	r1, [r7, #1]	@ tmp265, <variable>.MvSignProbs
	b	.L381	@
.L419:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp256,,
	uxtb	ip, r3	@ D.36224, tmp256
	strb	ip, [r7, #3]	@ D.36224, <variable>.IsMvShortProb
	cmp	ip, #0	@ D.36224,
	moveq	ip, #1	@ tmp258,
	streqb	ip, [r7, #3]	@ tmp258, <variable>.IsMvShortProb
	b	.L380	@
.L418:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36216
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp249,,
	uxtb	r0, r2	@ temp.3176, tmp249
	strb	r0, [r7, #0]	@ temp.3176, <variable>.MvSignProbs
	cmp	r0, #0	@ temp.3176,
	moveq	r0, #1	@ tmp251,
	streqb	r0, [r7, #0]	@ tmp251, <variable>.MvSignProbs
	b	.L379	@
.L417:
	mov	r1, r4	@, D.36216
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp242,,
	uxtb	r3, r1	@ temp.3179, tmp242
	strb	r3, [r7, #2]	@ temp.3179, <variable>.IsMvShortProb
	cmp	r3, #0	@ temp.3179,
	moveq	r3, #1	@ tmp244,
	streqb	r3, [r7, #2]	@ tmp244, <variable>.IsMvShortProb
	b	.L378	@
	.fnend
	.size	VP6_ConfigureMvEntropyDecoder, .-VP6_ConfigureMvEntropyDecoder
	.align	2
	.global	VP6_decodeModeDiff
	.type	VP6_decodeModeDiff, %function
VP6_decodeModeDiff:
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
	add	r4, r1, #72	@ D.36115, pbi,
	mov	r2, #205	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, r4	@, D.36115
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.36116
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r4	@, D.36115
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r4	@, D.36115
	mov	r2, #171	@,
	rsb	r3, r0, r0, asl #31	@, tmp150,,,
	mov	r0, r5	@, pBs
	mov	r6, r3, asl #1	@ tmp151, tmp150,
	bl	Vp6_Vfmw_DecodeBool	@
	add	r6, r6, #1	@ sign, tmp151,
	cmp	r0, #0	@,
	beq	.L460	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #199	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L455	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #140	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #1	@, tmp155, sign, sign,
	movne	r0, r6, asl #2	@ D.36119, tmp155,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #125	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r0, r6, asl #4	@ D.36119, sign,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #104	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #2	@, tmp159, sign, sign,
	addeq	r6, r6, r6, asl #1	@, tmp163, sign, sign,
	movne	r0, r6, asl #2	@ D.36119, tmp159,
	moveq	r0, r6, asl #3	@ D.36119, tmp163,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L455:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #7	@,
	mov	r6, r6, asl #2	@ tmp165, sign,
	bl	Vp6_Vfmw_BoolRead	@
	mul	r0, r0, r6	@ D.36119,, tmp165
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L460:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36115
	mov	r2, #83	@,
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r0, r0, #3	@ tmp152,,
	mov	r0, r6, asl r0	@ D.36119, sign,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_decodeModeDiff, .-VP6_decodeModeDiff
	.align	2
	.global	VP6_DecodeModeProbs
	.type	VP6_DecodeModeProbs, %function
VP6_DecodeModeProbs:
	.fnstart
.LFB1361:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r2	@ pbi, pbi
	add	r8, r6, #72	@ D.36161, pbi,
	mov	sl, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ ivtmp.3379, pVp6CodecInfo
	mov	r7, #0	@ j,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r2, [fp, #-48]	@, %sfp
.L504:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.36161
	mov	r2, #174	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L507	@,
.L462:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.36161
	mov	r2, #254	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L463	@,
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	mov	r3, r7, asl #2	@ tmp596, j,
	add	r1, r3, r7	@ tmp511, tmp596, j
	add	r9, sl, r1, asl #2	@, tmp513, pVp6CodecInfo, tmp511,
	ldrb	r2, [r9, #414]	@ zero_extendqisi2	@ tmp515, <variable>.probXmitted
	adds	r2, r2, r0	@ diff.3424, tmp515,
	movmi	r2, #0	@ iftmp.3426,
	bmi	.L465	@,
	cmp	r2, #255	@ diff.3424,
	movge	r2, #255	@ tmp516,
	uxtb	r2, r2	@ iftmp.3426, tmp516
.L465:
	add	lr, r3, r7	@ tmp520, tmp596, j
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	add	r9, sl, lr, asl #2	@, tmp522, pVp6CodecInfo, tmp520,
	strb	r2, [r9, #414]	@ iftmp.3426, <variable>.probXmitted
	str	r3, [fp, #-96]	@,
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r9, #404]	@ zero_extendqisi2	@ tmp532, <variable>.probXmitted
	adds	r2, r0, r3	@ diff.3430,, tmp532
	ldr	r3, [fp, #-96]	@,
	movmi	r2, #0	@ iftmp.3432,
	bmi	.L467	@,
	cmp	r2, #255	@ diff.3430,
	movge	r2, #255	@ tmp533,
	uxtb	r2, r2	@ iftmp.3432, tmp533
.L467:
	add	lr, r3, r7	@ tmp537, tmp596, j
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	add	r3, sl, lr, asl #2	@, tmp539, pVp6CodecInfo, tmp537,
	strb	r2, [r3, #404]	@ iftmp.3432, <variable>.probXmitted
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #415]	@ zero_extendqisi2	@ tmp542, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3436,, tmp542
	movmi	r3, #0	@ iftmp.3438,
	bmi	.L469	@,
	cmp	r3, #255	@ diff.3436,
	movge	r3, #255	@ tmp543,
	uxtb	r3, r3	@ iftmp.3438, tmp543
.L469:
	strb	r3, [r4, #415]	@ iftmp.3438, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #405]	@ zero_extendqisi2	@ tmp545, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3442,, tmp545
	movmi	r3, #0	@ iftmp.3444,
	bmi	.L471	@,
	cmp	r3, #255	@ diff.3442,
	movge	r3, #255	@ tmp546,
	uxtb	r3, r3	@ iftmp.3444, tmp546
.L471:
	strb	r3, [r4, #405]	@ iftmp.3444, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #416]	@ zero_extendqisi2	@ tmp548, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3448,, tmp548
	movmi	r3, #0	@ iftmp.3450,
	bmi	.L473	@,
	cmp	r3, #255	@ diff.3448,
	movge	r3, #255	@ tmp549,
	uxtb	r3, r3	@ iftmp.3450, tmp549
.L473:
	strb	r3, [r4, #416]	@ iftmp.3450, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #406]	@ zero_extendqisi2	@ tmp551, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3454,, tmp551
	movmi	r3, #0	@ iftmp.3456,
	bmi	.L475	@,
	cmp	r3, #255	@ diff.3454,
	movge	r3, #255	@ tmp552,
	uxtb	r3, r3	@ iftmp.3456, tmp552
.L475:
	strb	r3, [r4, #406]	@ iftmp.3456, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #417]	@ zero_extendqisi2	@ tmp554, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3460,, tmp554
	movmi	r3, #0	@ iftmp.3462,
	bmi	.L477	@,
	cmp	r3, #255	@ diff.3460,
	movge	r3, #255	@ tmp555,
	uxtb	r3, r3	@ iftmp.3462, tmp555
.L477:
	strb	r3, [r4, #417]	@ iftmp.3462, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #407]	@ zero_extendqisi2	@ tmp557, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3466,, tmp557
	movmi	r3, #0	@ iftmp.3468,
	bmi	.L479	@,
	cmp	r3, #255	@ diff.3466,
	movge	r3, #255	@ tmp558,
	uxtb	r3, r3	@ iftmp.3468, tmp558
.L479:
	strb	r3, [r4, #407]	@ iftmp.3468, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #418]	@ zero_extendqisi2	@ tmp560, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3472,, tmp560
	movmi	r3, #0	@ iftmp.3474,
	bmi	.L481	@,
	cmp	r3, #255	@ diff.3472,
	movge	r3, #255	@ tmp561,
	uxtb	r3, r3	@ iftmp.3474, tmp561
.L481:
	strb	r3, [r4, #418]	@ iftmp.3474, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #408]	@ zero_extendqisi2	@ tmp563, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3478,, tmp563
	movmi	r3, #0	@ iftmp.3480,
	bmi	.L483	@,
	cmp	r3, #255	@ diff.3478,
	movge	r3, #255	@ tmp564,
	uxtb	r3, r3	@ iftmp.3480, tmp564
.L483:
	strb	r3, [r4, #408]	@ iftmp.3480, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #419]	@ zero_extendqisi2	@ tmp566, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3484,, tmp566
	movmi	r3, #0	@ iftmp.3486,
	bmi	.L485	@,
	cmp	r3, #255	@ diff.3484,
	movge	r3, #255	@ tmp567,
	uxtb	r3, r3	@ iftmp.3486, tmp567
.L485:
	strb	r3, [r4, #419]	@ iftmp.3486, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #409]	@ zero_extendqisi2	@ tmp569, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3490,, tmp569
	movmi	r3, #0	@ iftmp.3492,
	bmi	.L487	@,
	cmp	r3, #255	@ diff.3490,
	movge	r3, #255	@ tmp570,
	uxtb	r3, r3	@ iftmp.3492, tmp570
.L487:
	strb	r3, [r4, #409]	@ iftmp.3492, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #420]	@ zero_extendqisi2	@ tmp572, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3496,, tmp572
	movmi	r3, #0	@ iftmp.3498,
	bmi	.L489	@,
	cmp	r3, #255	@ diff.3496,
	movge	r3, #255	@ tmp573,
	uxtb	r3, r3	@ iftmp.3498, tmp573
.L489:
	strb	r3, [r4, #420]	@ iftmp.3498, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #410]	@ zero_extendqisi2	@ tmp575, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3502,, tmp575
	movmi	r3, #0	@ iftmp.3504,
	bmi	.L491	@,
	cmp	r3, #255	@ diff.3502,
	movge	r3, #255	@ tmp576,
	uxtb	r3, r3	@ iftmp.3504, tmp576
.L491:
	strb	r3, [r4, #410]	@ iftmp.3504, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #421]	@ zero_extendqisi2	@ tmp578, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3508,, tmp578
	movmi	r3, #0	@ iftmp.3510,
	bmi	.L493	@,
	cmp	r3, #255	@ diff.3508,
	movge	r3, #255	@ tmp579,
	uxtb	r3, r3	@ iftmp.3510, tmp579
.L493:
	strb	r3, [r4, #421]	@ iftmp.3510, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #411]	@ zero_extendqisi2	@ tmp581, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3514,, tmp581
	movmi	r3, #0	@ iftmp.3516,
	bmi	.L495	@,
	cmp	r3, #255	@ diff.3514,
	movge	r3, #255	@ tmp582,
	uxtb	r3, r3	@ iftmp.3516, tmp582
.L495:
	strb	r3, [r4, #411]	@ iftmp.3516, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #422]	@ zero_extendqisi2	@ tmp584, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3520,, tmp584
	movmi	r3, #0	@ iftmp.3522,
	bmi	.L497	@,
	cmp	r3, #255	@ diff.3520,
	movge	r3, #255	@ tmp585,
	uxtb	r3, r3	@ iftmp.3522, tmp585
.L497:
	strb	r3, [r4, #422]	@ iftmp.3522, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #412]	@ zero_extendqisi2	@ tmp587, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3526,, tmp587
	movmi	r3, #0	@ iftmp.3528,
	bmi	.L499	@,
	cmp	r3, #255	@ diff.3526,
	movge	r3, #255	@ tmp588,
	uxtb	r3, r3	@ iftmp.3528, tmp588
.L499:
	strb	r3, [r4, #412]	@ iftmp.3528, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #423]	@ zero_extendqisi2	@ tmp590, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3400,, tmp590
	movmi	r3, #0	@ iftmp.435,
	bmi	.L501	@,
	cmp	r3, #255	@ diff.3400,
	movge	r3, #255	@ tmp591,
	uxtb	r3, r3	@ iftmp.435, tmp591
.L501:
	strb	r3, [r4, #423]	@ iftmp.435, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #413]	@ zero_extendqisi2	@ tmp593, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3402,, tmp593
	movmi	r3, #0	@ iftmp.437,
	bmi	.L503	@,
	cmp	r3, #255	@ diff.3402,
	movge	r3, #255	@ tmp594,
	uxtb	r3, r3	@ iftmp.437, tmp594
.L503:
	strb	r3, [r4, #413]	@ iftmp.437, <variable>.probXmitted
.L463:
	add	r7, r7, #1	@ j, j,
	add	r4, r4, #20	@ ivtmp.3379, ivtmp.3379,
	cmp	r7, #3	@ j,
	bne	.L504	@,
	mov	r0, sl	@, pVp6CodecInfo
	mov	r1, r6	@, pbi
	bl	VP6_BuildModeTree	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L507:
	mov	r1, r8	@, D.36161
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	add	ip, r7, r7, asl #2	@, tmp216, j, j,
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r3, ip, asl #6	@ tmp217, tmp216,
	add	r0, r0, r0, asl #2	@, tmp212,,,
	add	r9, r3, r0, asl #2	@, tmp218, tmp217, tmp212,
	add	r3, r9, r1	@ tmp219, tmp218,
	ldrb	r2, [r3, #481]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	lr, [r3, #477]	@ zero_extendqisi2	@ tmp236, VP6_ModeVq
	ldrb	ip, [r3, #478]	@ zero_extendqisi2	@ tmp251, VP6_ModeVq
	str	r2, [fp, #-52]	@, %sfp
	ldrb	r2, [r3, #482]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r0, [r3, #479]	@ zero_extendqisi2	@ tmp266, VP6_ModeVq
	ldrb	r9, [r3, #476]	@ zero_extendqisi2	@ tmp221, VP6_ModeVq
	str	r2, [fp, #-56]	@, %sfp
	ldrb	r2, [r3, #483]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r1, [r3, #480]	@ zero_extendqisi2	@ tmp281, VP6_ModeVq
	str	r2, [fp, #-60]	@, %sfp
	ldrb	r2, [r3, #484]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-64]	@, %sfp
	ldrb	r2, [r3, #485]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-68]	@, %sfp
	ldrb	r2, [r3, #486]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-72]	@, %sfp
	ldrb	r2, [r3, #487]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-76]	@, %sfp
	ldrb	r2, [r3, #488]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-80]	@, %sfp
	ldrb	r2, [r3, #489]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-84]	@, %sfp
	ldrb	r2, [r3, #490]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-88]	@, %sfp
	ldrb	r2, [r3, #491]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-92]	@, %sfp
	ldrb	r2, [r3, #492]	@ zero_extendqisi2	@ tmp461, VP6_ModeVq
	strb	lr, [r4, #404]	@ tmp236, <variable>.probXmitted
	strb	ip, [r4, #415]	@ tmp251, <variable>.probXmitted
	strb	r0, [r4, #405]	@ tmp266, <variable>.probXmitted
	strb	r9, [r4, #414]	@ tmp221, <variable>.probXmitted
	strb	r1, [r4, #416]	@ tmp281, <variable>.probXmitted
	ldr	r0, [fp, #-52]	@, %sfp
	strb	r0, [r4, #406]	@, <variable>.probXmitted
	ldr	lr, [fp, #-56]	@, %sfp
	strb	lr, [r4, #417]	@, <variable>.probXmitted
	ldr	ip, [fp, #-60]	@, %sfp
	strb	ip, [r4, #407]	@, <variable>.probXmitted
	ldr	r1, [fp, #-64]	@, %sfp
	strb	r1, [r4, #418]	@, <variable>.probXmitted
	ldr	r0, [fp, #-68]	@, %sfp
	strb	r0, [r4, #408]	@, <variable>.probXmitted
	ldr	lr, [fp, #-72]	@, %sfp
	strb	lr, [r4, #419]	@, <variable>.probXmitted
	ldr	ip, [fp, #-76]	@, %sfp
	strb	ip, [r4, #409]	@, <variable>.probXmitted
	ldr	r1, [fp, #-80]	@, %sfp
	strb	r1, [r4, #420]	@, <variable>.probXmitted
	ldr	r0, [fp, #-84]	@, %sfp
	ldrb	r1, [r3, #495]	@ zero_extendqisi2	@ tmp506, VP6_ModeVq
	strb	r0, [r4, #410]	@, <variable>.probXmitted
	ldr	lr, [fp, #-88]	@, %sfp
	ldrb	r0, [r3, #493]	@ zero_extendqisi2	@ tmp476, VP6_ModeVq
	ldrb	r3, [r3, #494]	@ zero_extendqisi2	@ tmp491, VP6_ModeVq
	strb	lr, [r4, #421]	@, <variable>.probXmitted
	ldr	ip, [fp, #-92]	@, %sfp
	strb	r2, [r4, #422]	@ tmp461, <variable>.probXmitted
	strb	r1, [r4, #413]	@ tmp506, <variable>.probXmitted
	strb	ip, [r4, #411]	@, <variable>.probXmitted
	strb	r0, [r4, #412]	@ tmp476, <variable>.probXmitted
	strb	r3, [r4, #423]	@ tmp491, <variable>.probXmitted
	b	.L462	@
	.fnend
	.size	VP6_DecodeModeProbs, .-VP6_DecodeModeProbs
	.align	2
	.global	VP6_ConfigureEntropyDecoder
	.type	VP6_ConfigureEntropyDecoder, %function
VP6_ConfigureEntropyDecoder:
	.fnstart
.LFB1359:
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
	movw	r7, #:lower16:.LANCHOR0	@ tmp987,
	add	r4, r2, #72	@ D.36049, pbi,
	movt	r7, #:upper16:.LANCHOR0	@ tmp987,
	str	r2, [fp, #-88]	@ pbi, %sfp
	mov	r5, r1	@ pBs, pBs
	str	r0, [fp, #-64]	@ pVp6CodecInfo, %sfp
	mov	r1, #128	@,
	mov	r2, #11	@,
	sub	r0, fp, #56	@,,
	mov	r6, r3	@ FrameType, FrameType
	bl	memset	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1436]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L509	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #514]	@ LastProb, <variable>.DcProbs
.L510:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1437]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L511	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #515]	@ LastProb, <variable>.DcProbs
.L512:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1438]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L513	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #516]	@ LastProb, <variable>.DcProbs
.L514:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1439]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L515	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #517]	@ LastProb, <variable>.DcProbs
.L516:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1440]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L517	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #518]	@ LastProb, <variable>.DcProbs
.L518:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1441]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L519	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #519]	@ LastProb, <variable>.DcProbs
.L520:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1442]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L521	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #520]	@ LastProb, <variable>.DcProbs
.L522:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1443]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L523	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #521]	@ LastProb, <variable>.DcProbs
.L524:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1444]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L525	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #522]	@ LastProb, <variable>.DcProbs
.L526:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1445]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L527	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #523]	@ LastProb, <variable>.DcProbs
.L528:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1446]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L630	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #524]	@ LastProb, <variable>.DcProbs
.L530:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1447]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L631	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #525]	@ LastProb, <variable>.DcProbs
.L535:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1448]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L536	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #526]	@ LastProb, <variable>.DcProbs
.L537:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1449]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L538	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #527]	@ LastProb, <variable>.DcProbs
.L539:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1450]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L540	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #528]	@ LastProb, <variable>.DcProbs
.L541:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1451]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L542	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #529]	@ LastProb, <variable>.DcProbs
.L543:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1452]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L544	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #530]	@ LastProb, <variable>.DcProbs
.L545:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1453]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L546	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #531]	@ LastProb, <variable>.DcProbs
.L547:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1454]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L548	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #532]	@ LastProb, <variable>.DcProbs
.L549:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1455]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L550	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #533]	@ LastProb, <variable>.DcProbs
.L551:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1456]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L552	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #534]	@ LastProb, <variable>.DcProbs
.L553:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1457]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L632	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #535]	@ LastProb, <variable>.DcProbs
	beq	.L533	@,
.L534:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L556	@,
	ldr	r8, [fp, #-64]	@ ivtmp.3625, %sfp
	mov	sl, #1	@ i,
	str	r6, [fp, #-68]	@ FrameType, %sfp
	mov	r9, r7	@ tmp987, tmp987
	b	.L558	@
.L557:
	ldr	r0, .L675	@,
	mov	r1, r4	@, D.36049
	ldrb	r2, [r0, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L633	@,
.L620:
	add	r3, r6, #1	@ i, tmp998,
	add	sl, r6, #2	@ i, tmp998,
	ldr	r6, .L675	@,
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	add	r8, r7, #2	@ ivtmp.3625, tmp999,
	add	r7, r7, #1	@ ivtmp.3625, tmp999,
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L634	@,
	cmp	sl, #64	@ i,
	beq	.L635	@,
.L558:
	ldr	r7, .L675	@,
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	add	r6, sl, #1	@ tmp998, i,
	ldrb	r2, [r7, sl]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	add	r7, r8, #1	@ tmp999, ivtmp.3625,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L557	@,
	mov	r1, r4	@, D.36049
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.36049
	strb	r0, [r8, #1089]	@, <variable>.ScanBands
	ldr	r0, .L675	@,
	ldrb	r2, [r0, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L620	@,
.L633:
	mov	r2, #4	@,
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	b	.L620	@
.L634:
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	cmp	sl, #64	@ i,
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	bne	.L558	@,
.L635:
	ldr	r0, [fp, #-64]	@, %sfp
	mov	r7, r9	@ tmp987, tmp987
	ldr	r1, [fp, #-88]	@, %sfp
	ldr	r6, [fp, #-68]	@ FrameType, %sfp
	bl	VP6_BuildScanOrder	@
.L556:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1552]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L636	@,
.L559:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1553]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L637	@,
.L560:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1554]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L638	@,
.L561:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1555]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L639	@,
.L562:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1556]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L640	@,
.L563:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1557]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L641	@,
.L564:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1558]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L642	@,
.L565:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1559]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L643	@,
.L566:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1560]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L644	@,
.L567:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1561]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L645	@,
.L568:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1562]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L646	@,
.L569:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1563]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L647	@,
.L570:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1564]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L648	@,
.L571:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1565]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L649	@,
.L572:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1566]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L650	@,
.L574:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1567]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L651	@,
.L576:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1568]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L652	@,
.L577:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1569]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L653	@,
.L578:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1570]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L654	@,
.L579:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1571]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L655	@,
.L580:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1572]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L656	@,
.L581:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1573]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L657	@,
.L582:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1574]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L658	@,
.L583:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1575]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L659	@,
.L584:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1576]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L660	@,
.L585:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1577]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L661	@,
.L586:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1578]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L662	@,
.L587:
	ldrb	r2, [r7, #1579]	@ zero_extendqisi2	@, ZrlUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L663	@,
.L589:
	mov	lr, #0	@,
	str	lr, [fp, #-80]	@, %sfp
	str	lr, [fp, #-76]	@, %sfp
.L575:
	ldr	r9, [fp, #-76]	@, %sfp
	mov	sl, #0	@,
	str	sl, [fp, #-72]	@, %sfp
	str	sl, [fp, #-68]	@, %sfp
	add	r8, r9, r9, asl #5	@, tmp989,,,
	mov	r7, r8, asl #2	@, tmp989,
	str	r7, [fp, #-84]	@, %sfp
.L617:
	ldr	r0, [fp, #-80]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	lr, [fp, #-64]	@, %sfp
	add	r9, r0, r3	@ tmp980,,
	ldr	r1, [fp, #-84]	@, %sfp
	add	sl, lr, r9	@ tmp982,, tmp980
	add	ip, r2, r2, asl #5	@, tmp973,,,
	ldr	r8, .L675+4	@,
	add	sl, sl, #564	@ ivtmp.3571, tmp982,
	add	r7, r1, ip, asl #1	@, tmp979,, tmp973,
	mov	r9, #0	@ Band,
	add	r7, r8, r7	@ ivtmp.3569,, tmp979
	mov	r8, sl	@ ivtmp.3642, ivtmp.3571
	b	.L615	@
.L665:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #0]	@ LastProb, <variable>.AcProbs
.L593:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L594	@,
.L666:
	cmp	r6, #0	@ FrameType,
	ldreqb	r1, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r1, [r8, #1]	@ LastProb, <variable>.AcProbs
.L595:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L596	@,
.L667:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #2]	@ LastProb, <variable>.AcProbs
.L597:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L598	@,
.L668:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #3]	@ LastProb, <variable>.AcProbs
.L599:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L600	@,
.L669:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #4]	@ LastProb, <variable>.AcProbs
.L601:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L602	@,
.L670:
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #5]	@ LastProb, <variable>.AcProbs
.L603:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L604	@,
.L671:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #6]	@ LastProb, <variable>.AcProbs
.L605:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L606	@,
.L672:
	cmp	r6, #0	@ FrameType,
	ldreqb	ip, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	ip, [r8, #7]	@ LastProb, <variable>.AcProbs
.L607:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L608	@,
.L673:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #8]	@ LastProb, <variable>.AcProbs
.L609:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L610	@,
.L674:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #9]	@ LastProb, <variable>.AcProbs
.L611:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L627:
	cmp	r6, #0	@ FrameType,
	add	r9, r9, #1	@ Band, Band,
	add	r7, r7, #11	@ ivtmp.3569, ivtmp.3569,
	add	sl, sl, #11	@ ivtmp.3571, ivtmp.3571,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #10]	@ LastProb, <variable>.AcProbs
	cmp	r9, #6	@ Band,
	add	r8, r8, #11	@ ivtmp.3642, ivtmp.3642,
	beq	.L591	@,
.L615:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L665	@,
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.36049
	mov	r3, r0, asl #1	@ tmp871,,
	uxtb	r2, r3	@ temp.3855, tmp871
	cmp	r2, #0	@ temp.3855,
	addeq	r2, r2, #1	@,, tmp874, temp.3855
	uxtb	r0, r2	@ temp.3857, tmp874
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	strb	r0, [fp, #-56]	@ temp.3857, LastProb
	strb	r0, [sl, #0]	@ temp.3857, <variable>.AcProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L666	@,
.L594:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.36049
	mov	r2, r0, asl #1	@ tmp881,,
	uxtb	r0, r2	@ temp.3864, tmp881
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	r0, #0	@ temp.3864,
	addeq	r0, r0, #1	@,, tmp884, temp.3864
	uxtb	ip, r0	@ temp.3866, tmp884
	mov	r0, r5	@, pBs
	strb	ip, [fp, #-55]	@ temp.3866, LastProb
	strb	ip, [sl, #1]	@ temp.3866, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L667	@,
.L596:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp891,,
	mov	r0, r5	@, pBs
	uxtb	r1, ip	@ temp.3872, tmp891
	cmp	r1, #0	@ temp.3872,
	addeq	r1, r1, #1	@,, tmp894, temp.3872
	uxtb	r3, r1	@ temp.3874, tmp894
	mov	r1, r4	@, D.36049
	strb	r3, [fp, #-54]	@ temp.3874, LastProb
	strb	r3, [sl, #2]	@ temp.3874, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L668	@,
.L598:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp901,,
	mov	r0, r5	@, pBs
	uxtb	r3, r1	@ temp.3885, tmp901
	mov	r1, r4	@, D.36049
	cmp	r3, #0	@ temp.3885,
	addeq	r3, r3, #1	@,, tmp904, temp.3885
	uxtb	r2, r3	@ temp.3887, tmp904
	strb	r2, [fp, #-53]	@ temp.3887, LastProb
	strb	r2, [sl, #3]	@ temp.3887, <variable>.AcProbs
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L669	@,
.L600:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.36049
	mov	r2, r0, asl #1	@ tmp911,,
	uxtb	r0, r2	@ temp.3894, tmp911
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	r0, #0	@ temp.3894,
	addeq	r0, r0, #1	@,, tmp914, temp.3894
	uxtb	ip, r0	@ temp.3896, tmp914
	mov	r0, r5	@, pBs
	strb	ip, [fp, #-52]	@ temp.3896, LastProb
	strb	ip, [sl, #4]	@ temp.3896, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L670	@,
.L602:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp921,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3904, tmp921
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3904,
	addeq	ip, ip, #1	@,, tmp924, temp.3904
	uxtb	r1, ip	@ temp.3906, tmp924
	strb	r1, [fp, #-51]	@ temp.3906, LastProb
	strb	r1, [sl, #5]	@ temp.3906, <variable>.AcProbs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L671	@,
.L604:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	r1, r0, asl #1	@ tmp931,,
	uxtb	r3, r1	@ temp.3912, tmp931
	mov	r1, r4	@, D.36049
	cmp	r3, #0	@ temp.3912,
	addeq	r3, r3, #1	@,, tmp934, temp.3912
	uxtb	r0, r3	@ temp.3914, tmp934
	strb	r0, [fp, #-50]	@ temp.3914, LastProb
	strb	r0, [sl, #6]	@ temp.3914, <variable>.AcProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L672	@,
.L606:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.36049
	mov	r3, r0, asl #1	@ tmp941,,
	uxtb	r0, r3	@ temp.3924, tmp941
	cmp	r0, #0	@ temp.3924,
	addeq	r0, r0, #1	@,, tmp944, temp.3924
	uxtb	r2, r0	@ temp.3926, tmp944
	mov	r0, r5	@, pBs
	strb	r2, [fp, #-49]	@ temp.3926, LastProb
	strb	r2, [sl, #7]	@ temp.3926, <variable>.AcProbs
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L673	@,
.L608:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp951,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3934, tmp951
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3934,
	addeq	ip, ip, #1	@,, tmp954, temp.3934
	uxtb	r1, ip	@ temp.3936, tmp954
	strb	r1, [fp, #-48]	@ temp.3936, LastProb
	strb	r1, [sl, #8]	@ temp.3936, <variable>.AcProbs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L674	@,
.L610:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp961,,
	mov	r0, r5	@, pBs
	uxtb	r1, ip	@ temp.3944, tmp961
	cmp	r1, #0	@ temp.3944,
	addeq	r1, r1, #1	@,, tmp964, temp.3944
	uxtb	r3, r1	@ temp.3946, tmp964
	mov	r1, r4	@, D.36049
	strb	r3, [fp, #-47]	@ temp.3946, LastProb
	strb	r3, [sl, #9]	@ temp.3946, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L627	@,
.L664:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	add	r9, r9, #1	@ Band, Band,
	bl	Vp6_Vfmw_BoolRead	@
	add	r7, r7, #11	@ ivtmp.3569, ivtmp.3569,
	add	r8, r8, #11	@ ivtmp.3642, ivtmp.3642,
	mov	ip, r0, asl #1	@ tmp859,,
	uxtb	r1, ip	@ D.36098, tmp859
	cmp	r1, #0	@ D.36098,
	addeq	r1, r1, #1	@,, tmp862, D.36098
	cmp	r9, #6	@ Band,
	uxtb	r3, r1	@ temp.3629, tmp862
	strb	r3, [fp, #-46]	@ temp.3629, LastProb
	strb	r3, [sl, #10]	@ temp.3629, <variable>.AcProbs
	add	sl, sl, #11	@ ivtmp.3571, ivtmp.3571,
	bne	.L615	@,
.L591:
	ldr	r3, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	add	lr, r3, #1	@,,
	str	lr, [fp, #-68]	@, %sfp
	cmp	lr, #2	@,
	add	r2, r0, #198	@,,
	str	r2, [fp, #-72]	@, %sfp
	bne	.L617	@,
	ldr	r1, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	add	ip, r1, #1	@,,
	str	ip, [fp, #-76]	@, %sfp
	cmp	ip, #3	@,
	add	lr, r2, #66	@,,
	str	lr, [fp, #-80]	@, %sfp
	bne	.L575	@,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-88]	@, %sfp
	bl	VP6_ConfigureContexts	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L632:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp506,,
	uxtb	sl, ip	@ D.36058, tmp506
	cmp	sl, #0	@ D.36058,
	addeq	sl, sl, #1	@,, tmp509, D.36058
	cmp	r6, #0	@ FrameType,
	uxtb	r8, sl	@ D.36061, tmp509
	strb	r8, [r9, #535]	@ D.36061, <variable>.DcProbs
	strb	r8, [fp, #-46]	@ D.36061, LastProb
	bne	.L534	@,
.L533:
	ldr	lr, .L675+8	@ tmp626,
	ldr	r2, [fp, #-64]	@, %sfp
	add	r8, r2, #536	@ tmp624,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp629,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp624,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp629,,,
	stmia	r8, {r0, r1, r2}	@ tmp628,,,
	b	.L534	@
.L552:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp616,,
	uxtb	sl, ip	@ temp.3729, tmp616
	cmp	sl, #0	@ temp.3729,
	addeq	sl, sl, #1	@,, tmp619, temp.3729
	uxtb	r8, sl	@ temp.3731, tmp619
	strb	r8, [r9, #534]	@ temp.3731, <variable>.DcProbs
	strb	r8, [fp, #-47]	@ temp.3731, LastProb
	b	.L553	@
.L550:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp605,,
	uxtb	r0, r1	@ temp.3718, tmp605
	cmp	r0, #0	@ temp.3718,
	addeq	r0, r0, #1	@,, tmp608, temp.3718
	uxtb	r3, r0	@ temp.3720, tmp608
	strb	r3, [r2, #533]	@ temp.3720, <variable>.DcProbs
	strb	r3, [fp, #-48]	@ temp.3720, LastProb
	b	.L551	@
.L548:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp594,,
	uxtb	sl, ip	@ temp.3708, tmp594
	cmp	sl, #0	@ temp.3708,
	addeq	sl, sl, #1	@,, tmp597, temp.3708
	uxtb	r8, sl	@ temp.3710, tmp597
	strb	r8, [r9, #532]	@ temp.3710, <variable>.DcProbs
	strb	r8, [fp, #-49]	@ temp.3710, LastProb
	b	.L549	@
.L546:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp583,,
	uxtb	r0, r1	@ temp.3700, tmp583
	cmp	r0, #0	@ temp.3700,
	addeq	r0, r0, #1	@,, tmp586, temp.3700
	uxtb	r3, r0	@ temp.3702, tmp586
	strb	r3, [r2, #531]	@ temp.3702, <variable>.DcProbs
	strb	r3, [fp, #-50]	@ temp.3702, LastProb
	b	.L547	@
.L544:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp572,,
	uxtb	sl, ip	@ temp.3689, tmp572
	cmp	sl, #0	@ temp.3689,
	addeq	sl, sl, #1	@,, tmp575, temp.3689
	uxtb	r8, sl	@ temp.3691, tmp575
	strb	r8, [r9, #530]	@ temp.3691, <variable>.DcProbs
	strb	r8, [fp, #-51]	@ temp.3691, LastProb
	b	.L545	@
.L542:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp561,,
	uxtb	r0, r1	@ temp.3680, tmp561
	cmp	r0, #0	@ temp.3680,
	addeq	r0, r0, #1	@,, tmp564, temp.3680
	uxtb	r3, r0	@ temp.3682, tmp564
	strb	r3, [r2, #529]	@ temp.3682, <variable>.DcProbs
	strb	r3, [fp, #-52]	@ temp.3682, LastProb
	b	.L543	@
.L540:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp550,,
	uxtb	sl, ip	@ temp.3668, tmp550
	cmp	sl, #0	@ temp.3668,
	addeq	sl, sl, #1	@,, tmp553, temp.3668
	uxtb	r8, sl	@ temp.3670, tmp553
	strb	r8, [r9, #528]	@ temp.3670, <variable>.DcProbs
	strb	r8, [fp, #-53]	@ temp.3670, LastProb
	b	.L541	@
.L538:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp539,,
	uxtb	r0, r1	@ temp.3660, tmp539
	cmp	r0, #0	@ temp.3660,
	addeq	r0, r0, #1	@,, tmp542, temp.3660
	uxtb	r3, r0	@ temp.3658, tmp542
	strb	r3, [r2, #527]	@ temp.3658, <variable>.DcProbs
	strb	r3, [fp, #-54]	@ temp.3658, LastProb
	b	.L539	@
.L536:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp528,,
	uxtb	sl, ip	@ temp.3652, tmp528
	cmp	sl, #0	@ temp.3652,
	addeq	sl, sl, #1	@,, tmp531, temp.3652
	uxtb	r8, sl	@ temp.3650, tmp531
	strb	r8, [r9, #526]	@ temp.3650, <variable>.DcProbs
	strb	r8, [fp, #-55]	@ temp.3650, LastProb
	b	.L537	@
.L631:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp517,,
	uxtb	r0, r1	@ temp.3644, tmp517
	cmp	r0, #0	@ temp.3644,
	addeq	r0, r0, #1	@,, tmp520, temp.3644
	uxtb	r3, r0	@ temp.3640, tmp520
	strb	r3, [r2, #525]	@ temp.3640, <variable>.DcProbs
	strb	r3, [fp, #-56]	@ temp.3640, LastProb
	b	.L535	@
.L630:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp495,,
	uxtb	r0, r1	@ temp.3965, tmp495
	cmp	r0, #0	@ temp.3965,
	addeq	r0, r0, #1	@,, tmp498, temp.3965
	uxtb	r3, r0	@ temp.3967, tmp498
	strb	r3, [r2, #524]	@ temp.3967, <variable>.DcProbs
	strb	r3, [fp, #-46]	@ temp.3967, LastProb
	b	.L530	@
.L527:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp486,,
	uxtb	sl, ip	@ temp.3958, tmp486
	cmp	sl, #0	@ temp.3958,
	addeq	sl, sl, #1	@,, tmp489, temp.3958
	uxtb	r8, sl	@ temp.3960, tmp489
	strb	r8, [r9, #523]	@ temp.3960, <variable>.DcProbs
	strb	r8, [fp, #-47]	@ temp.3960, LastProb
	b	.L528	@
.L525:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp475,,
	uxtb	r0, r1	@ temp.3950, tmp475
	cmp	r0, #0	@ temp.3950,
	addeq	r0, r0, #1	@,, tmp478, temp.3950
	uxtb	r3, r0	@ temp.3952, tmp478
	strb	r3, [r2, #522]	@ temp.3952, <variable>.DcProbs
	strb	r3, [fp, #-48]	@ temp.3952, LastProb
	b	.L526	@
.L523:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp464,,
	uxtb	sl, ip	@ temp.3848, tmp464
	cmp	sl, #0	@ temp.3848,
	addeq	sl, sl, #1	@,, tmp467, temp.3848
	uxtb	r8, sl	@ temp.3846, tmp467
	strb	r8, [r9, #521]	@ temp.3846, <variable>.DcProbs
	strb	r8, [fp, #-49]	@ temp.3846, LastProb
	b	.L524	@
.L521:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp453,,
	uxtb	r0, r1	@ temp.3673, tmp453
	cmp	r0, #0	@ temp.3673,
	addeq	r0, r0, #1	@,, tmp456, temp.3673
	uxtb	r3, r0	@ temp.3671, tmp456
	strb	r3, [r2, #520]	@ temp.3671, <variable>.DcProbs
	strb	r3, [fp, #-50]	@ temp.3671, LastProb
	b	.L522	@
.L519:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp442,,
	uxtb	sl, ip	@ temp.3721, tmp442
	cmp	sl, #0	@ temp.3721,
	addeq	sl, sl, #1	@,, tmp445, temp.3721
	uxtb	r8, sl	@ temp.3711, tmp445
	strb	r8, [r9, #519]	@ temp.3711, <variable>.DcProbs
	strb	r8, [fp, #-51]	@ temp.3711, LastProb
	b	.L520	@
.L517:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp431,,
	uxtb	r0, r1	@ temp.3757, tmp431
	cmp	r0, #0	@ temp.3757,
	addeq	r0, r0, #1	@,, tmp434, temp.3757
	uxtb	r3, r0	@ temp.3755, tmp434
	strb	r3, [r2, #518]	@ temp.3755, <variable>.DcProbs
	strb	r3, [fp, #-52]	@ temp.3755, LastProb
	b	.L518	@
.L515:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp420,,
	uxtb	sl, ip	@ temp.3793, tmp420
	cmp	sl, #0	@ temp.3793,
	addeq	sl, sl, #1	@,, tmp423, temp.3793
	uxtb	r8, sl	@ temp.3791, tmp423
	strb	r8, [r9, #517]	@ temp.3791, <variable>.DcProbs
	strb	r8, [fp, #-53]	@ temp.3791, LastProb
	b	.L516	@
.L513:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp409,,
	uxtb	r0, r1	@ temp.3829, tmp409
	cmp	r0, #0	@ temp.3829,
	addeq	r0, r0, #1	@,, tmp412, temp.3829
	uxtb	r3, r0	@ temp.3827, tmp412
	strb	r3, [r2, #516]	@ temp.3827, <variable>.DcProbs
	strb	r3, [fp, #-54]	@ temp.3827, LastProb
	b	.L514	@
.L511:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp398,,
	uxtb	sl, ip	@ temp.3877, tmp398
	cmp	sl, #0	@ temp.3877,
	addeq	sl, sl, #1	@,, tmp401, temp.3877
	uxtb	r8, sl	@ temp.3875, tmp401
	strb	r8, [r9, #515]	@ temp.3875, <variable>.DcProbs
	strb	r8, [fp, #-55]	@ temp.3875, LastProb
	b	.L512	@
.L509:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp387,,
	uxtb	r0, r1	@ temp.3917, tmp387
	cmp	r0, #0	@ temp.3917,
	addeq	r0, r0, #1	@,, tmp390, temp.3917
	uxtb	r3, r0	@ temp.3915, tmp390
	strb	r3, [r2, #514]	@ temp.3915, <variable>.DcProbs
	strb	r3, [fp, #-56]	@ temp.3915, LastProb
	b	.L510	@
.L663:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp749,,
	uxtb	r0, r8	@ D.36086, tmp749
	cmp	r0, #0	@ D.36086,
	addeq	r0, r0, #1	@,, tmp752, D.36086
	strb	r0, [r7, #563]	@ tmp752, <variable>.ZeroRunProbs
	b	.L589	@
.L662:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp851,,
	uxtb	r8, r2	@ temp.3843, tmp851
	cmp	r8, #0	@ temp.3843,
	addeq	r8, r8, #1	@,, tmp854, temp.3843
	strb	r8, [ip, #562]	@ tmp854, <variable>.ZeroRunProbs
	b	.L587	@
.L661:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	sl, r0, asl #1	@ tmp843,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r9, sl	@ temp.3834, tmp843
	cmp	r9, #0	@ temp.3834,
	addeq	r9, r9, #1	@,, tmp846, temp.3834
	strb	r9, [r0, #561]	@ tmp846, <variable>.ZeroRunProbs
	b	.L586	@
.L660:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp835,,
	uxtb	r3, r1	@ temp.3824, tmp835
	cmp	r3, #0	@ temp.3824,
	addeq	r3, r3, #1	@,, tmp838, temp.3824
	strb	r3, [r2, #560]	@ tmp838, <variable>.ZeroRunProbs
	b	.L585	@
.L659:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp827,,
	uxtb	sl, r8	@ temp.3817, tmp827
	cmp	sl, #0	@ temp.3817,
	addeq	sl, sl, #1	@,, tmp830, temp.3817
	strb	sl, [ip, #559]	@ tmp830, <variable>.ZeroRunProbs
	b	.L584	@
.L658:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r9, r0, asl #1	@ tmp819,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r1, r9	@ temp.3807, tmp819
	cmp	r1, #0	@ temp.3807,
	addeq	r1, r1, #1	@,, tmp822, temp.3807
	strb	r1, [r0, #558]	@ tmp822, <variable>.ZeroRunProbs
	b	.L583	@
.L657:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp811,,
	uxtb	r3, r2	@ temp.3799, tmp811
	cmp	r3, #0	@ temp.3799,
	addeq	r3, r3, #1	@,, tmp814, temp.3799
	strb	r3, [r8, #557]	@ tmp814, <variable>.ZeroRunProbs
	b	.L582	@
.L676:
	.align	2
.L675:
	.word	.LANCHOR0+1488
	.word	.LANCHOR0+1580
	.word	.LANCHOR0+1460
.L656:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp803,,
	uxtb	r9, sl	@ temp.3788, tmp803
	cmp	r9, #0	@ temp.3788,
	addeq	r9, r9, #1	@,, tmp806, temp.3788
	strb	r9, [ip, #556]	@ tmp806, <variable>.ZeroRunProbs
	b	.L581	@
.L655:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp795,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r2, r1	@ temp.3781, tmp795
	cmp	r2, #0	@ temp.3781,
	addeq	r2, r2, #1	@,, tmp798, temp.3781
	strb	r2, [r0, #555]	@ tmp798, <variable>.ZeroRunProbs
	b	.L580	@
.L654:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp787,,
	uxtb	r3, r8	@ temp.3772, tmp787
	cmp	r3, #0	@ temp.3772,
	addeq	r3, r3, #1	@,, tmp790, temp.3772
	strb	r3, [sl, #554]	@ tmp790, <variable>.ZeroRunProbs
	b	.L579	@
.L653:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r9, r0, asl #1	@ tmp779,,
	uxtb	r1, r9	@ temp.3764, tmp779
	cmp	r1, #0	@ temp.3764,
	addeq	r1, r1, #1	@,, tmp782, temp.3764
	strb	r1, [ip, #553]	@ tmp782, <variable>.ZeroRunProbs
	b	.L578	@
.L652:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp771,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r8, r2	@ temp.3752, tmp771
	cmp	r8, #0	@ temp.3752,
	addeq	r8, r8, #1	@,, tmp774, temp.3752
	strb	r8, [r0, #552]	@ tmp774, <variable>.ZeroRunProbs
	b	.L577	@
.L651:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp763,,
	uxtb	r3, sl	@ temp.3745, tmp763
	cmp	r3, #0	@ temp.3745,
	addeq	r3, r3, #1	@,, tmp766, temp.3745
	strb	r3, [r9, #551]	@ tmp766, <variable>.ZeroRunProbs
	b	.L576	@
.L650:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp755,,
	uxtb	r2, r1	@ temp.3736, tmp755
	cmp	r2, #0	@ temp.3736,
	addeq	r2, r2, #1	@,, tmp758, temp.3736
	strb	r2, [ip, #550]	@ tmp758, <variable>.ZeroRunProbs
	b	.L574	@
.L649:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp741,,
	uxtb	r3, sl	@ temp.4064, tmp741
	cmp	r3, #0	@ temp.4064,
	addeq	r3, r3, #1	@,, tmp744, temp.4064
	strb	r3, [r9, #549]	@ tmp744, <variable>.ZeroRunProbs
	b	.L572	@
.L648:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp733,,
	uxtb	r2, r1	@ temp.4057, tmp733
	cmp	r2, #0	@ temp.4057,
	addeq	r2, r2, #1	@,, tmp736, temp.4057
	strb	r2, [ip, #548]	@ tmp736, <variable>.ZeroRunProbs
	b	.L571	@
.L647:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r8, r0, asl #1	@ tmp725,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	sl, r8	@ temp.4050, tmp725
	cmp	sl, #0	@ temp.4050,
	addeq	sl, sl, #1	@,, tmp728, temp.4050
	strb	sl, [r0, #547]	@ tmp728, <variable>.ZeroRunProbs
	b	.L570	@
.L646:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [fp, #-64]	@, %sfp
	mov	r9, r0, asl #1	@ tmp717,,
	uxtb	r3, r9	@ temp.4043, tmp717
	cmp	r3, #0	@ temp.4043,
	addeq	r3, r3, #1	@,, tmp720, temp.4043
	strb	r3, [r1, #546]	@ tmp720, <variable>.ZeroRunProbs
	b	.L569	@
.L645:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp709,,
	uxtb	r8, r2	@ temp.4036, tmp709
	cmp	r8, #0	@ temp.4036,
	addeq	r8, r8, #1	@,, tmp712, temp.4036
	strb	r8, [ip, #545]	@ tmp712, <variable>.ZeroRunProbs
	b	.L568	@
.L644:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	sl, r0, asl #1	@ tmp701,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r9, sl	@ temp.4029, tmp701
	cmp	r9, #0	@ temp.4029,
	addeq	r9, r9, #1	@,, tmp704, temp.4029
	strb	r9, [r0, #544]	@ tmp704, <variable>.ZeroRunProbs
	b	.L567	@
.L643:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp693,,
	uxtb	r3, r1	@ temp.4022, tmp693
	cmp	r3, #0	@ temp.4022,
	addeq	r3, r3, #1	@,, tmp696, temp.4022
	strb	r3, [r2, #543]	@ tmp696, <variable>.ZeroRunProbs
	b	.L566	@
.L642:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp685,,
	uxtb	sl, r8	@ temp.4015, tmp685
	cmp	sl, #0	@ temp.4015,
	addeq	sl, sl, #1	@,, tmp688, temp.4015
	strb	sl, [ip, #542]	@ tmp688, <variable>.ZeroRunProbs
	b	.L565	@
.L641:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r9, r0, asl #1	@ tmp677,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r1, r9	@ temp.4008, tmp677
	cmp	r1, #0	@ temp.4008,
	addeq	r1, r1, #1	@,, tmp680, temp.4008
	strb	r1, [r0, #541]	@ tmp680, <variable>.ZeroRunProbs
	b	.L564	@
.L640:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp669,,
	uxtb	r3, r2	@ temp.4001, tmp669
	cmp	r3, #0	@ temp.4001,
	addeq	r3, r3, #1	@,, tmp672, temp.4001
	strb	r3, [r8, #540]	@ tmp672, <variable>.ZeroRunProbs
	b	.L563	@
.L639:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp661,,
	uxtb	r9, ip	@ temp.3994, tmp661
	cmp	r9, #0	@ temp.3994,
	addeq	r9, r9, #1	@,, tmp664, temp.3994
	strb	r9, [sl, #539]	@ tmp664, <variable>.ZeroRunProbs
	b	.L562	@
.L638:
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp653,,
	uxtb	r0, r1	@ temp.3987, tmp653
	cmp	r0, #0	@ temp.3987,
	addeq	r0, r0, #1	@,, tmp656, temp.3987
	strb	r0, [r2, #538]	@ tmp656, <variable>.ZeroRunProbs
	b	.L561	@
.L637:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.36049
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp645,,
	uxtb	r3, r8	@ temp.3980, tmp645
	cmp	r3, #0	@ temp.3980,
	addeq	r3, r3, #1	@,, tmp648, temp.3980
	strb	r3, [ip, #537]	@ tmp648, <variable>.ZeroRunProbs
	b	.L560	@
.L636:
	mov	r1, r4	@, D.36049
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp637,,
	uxtb	r1, sl	@ temp.3973, tmp637
	cmp	r1, #0	@ temp.3973,
	addeq	r1, r1, #1	@,, tmp640, temp.3973
	strb	r1, [r9, #536]	@ tmp640, <variable>.ZeroRunProbs
	b	.L559	@
	.fnend
	.size	VP6_ConfigureEntropyDecoder, .-VP6_ConfigureEntropyDecoder
	.align	2
	.global	VP6_BuildTables
	.type	VP6_BuildTables, %function
VP6_BuildTables:
	.fnstart
.LFB1378:
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
	ldr	r3, [r1, #20]	@ <variable>.FrameType, <variable>.FrameType
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r7, r2	@ pBs, pBs
	cmp	r3, #0	@ <variable>.FrameType,
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L678	@,
	mov	r1, r2	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_DecodeModeProbs	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r7	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_ConfigureMvEntropyDecoder	@
.L679:
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r7	@, pBs
	mov	r2, r4	@, pPictureHeader
	ldr	r3, [r4, #20]	@, <variable>.FrameType
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r0, [r4, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	beq	.L680	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConvertBoolToHuff	@
.L680:
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_CfgTable	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L678:
	ldr	r6, .L682	@ tmp149,
	mov	r2, #80	@,
	ldr	r1, .L682+4	@,
	add	r0, r0, #404	@, pVp6CodecInfo,
	bl	memcpy	@
	add	r3, r6, #12	@ tmp154, tmp149,
	ldrh	r1, [r6, #8]	@, DefaultIsShortProbs
	add	ip, r5, #484	@ tmp152, pVp6CodecInfo,
	ldrh	lr, [r6, #28]	@, DefaultSignProbs
	strh	r1, [r5, #2]	@ movhi	@, <variable>.IsMvShortProb
	ldmia	r3, {r0, r1, r2, r3}	@ tmp154,,,,
	strh	lr, [r5, #0]	@ movhi	@, <variable>.MvSignProbs
	stmia	ip!, {r0, r1, r2}	@ tmp152,,,
	add	r1, r6, #32	@, tmp149,
	add	r0, r5, #496	@, pVp6CodecInfo,
	add	r6, r6, #48	@ tmp173, tmp149,
	strh	r3, [ip, #0]	@ movhi	@, <variable>.MvShortProbs
	mov	r2, #16	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp175,,,,
	add	lr, r5, #1088	@ tmp171, pVp6CodecInfo,
	mov	ip, lr	@ tmp174, tmp171
	stmia	ip!, {r0, r1, r2, r3}	@ tmp174,,,,
	mov	lr, ip	@ tmp180, tmp174
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp180,,,,
	mov	ip, lr	@ tmp182, tmp180
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp181,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp182,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp181,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp182,,,,
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_BuildScanOrder	@
	b	.L679	@
.L683:
	.align	2
.L682:
	.word	.LANCHOR0+2048
	.word	.LANCHOR0+1976
	.fnend
	.size	VP6_BuildTables, .-VP6_BuildTables
	.align	2
	.global	VP6DEC_GetImageBuffer
	.type	VP6DEC_GetImageBuffer, %function
VP6DEC_GetImageBuffer:
	.fnstart
.LFB1355:
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
	movw	r5, #13000	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.35812,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.35815,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #12608	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.35815,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_GetImageBuffer, .-VP6DEC_GetImageBuffer
	.align	2
	.global	VP6_GetImageBuffer
	.type	VP6_GetImageBuffer, %function
VP6_GetImageBuffer:
	.fnstart
.LFB1354:
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
	movw	r5, #13000	@ tmp140,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movw	r6, #12308	@ tmp142,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.35782,
	str	r0, [r4, r6]	@ D.35782, <variable>.Vp6CodecInfo.CurFsID
	blt	.L694	@,
	mov	r1, r0	@, D.35782
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r2, [r4, r6]	@, <variable>.Vp6CodecInfo.CurFsID
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	mov	r5, r0	@ pLf,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L692	@,
	ldr	r3, [r5, #444]	@ D.35798, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35798,
	beq	.L692	@,
	ldr	r2, [r5, #448]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L692	@,
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	movw	lr, #12324	@ tmp173,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [r4, lr]	@ <variable>.Stride, <variable>.Vp6CodecInfo.DDR_Stride
	add	r2, r5, #440
	ldmia	r2, {r2, r3, lr}	@ phole ldm
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.35791,
.L691:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L692:
	mov	r0, #0	@ D.35791,
	b	.L691	@
.L694:
	movw	r8, #12312	@ tmp146,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	movw	r7, #12316	@ tmp150,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r6, #0	@ tmp153,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, r8]	@ tmp153, <variable>.Vp6CodecInfo.GoldenFsID
	str	r6, [r4, r7]	@ tmp153, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #12292	@ tmp160,
	add	r1, r4, #12608	@, pCtx,
	str	r6, [r4, r3]	@ tmp153, <variable>.Vp6CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.35789, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.35789, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r6	@ D.35791, tmp153
	b	.L691	@
	.fnend
	.size	VP6_GetImageBuffer, .-VP6_GetImageBuffer
	.align	2
	.global	VP6_ArrangeVHBMem
	.type	VP6_ArrangeVHBMem, %function
VP6_ArrangeVHBMem:
	.fnstart
.LFB1353:
	@ args = 0, pretend = 0, frame = 40
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
	movw	r3, #12496	@ tmp159,
	ldr	r3, [r0, r3]	@ D.35706, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #2	@ D.35706,
	bls	.L722	@,
	movw	r0, #12500	@ tmp161,
	ldr	r2, [r4, r0]	@ prephitmp.4161, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #2	@ prephitmp.4161,
	bls	.L697	@,
	cmp	r3, #264	@ D.35706,
	bhi	.L697	@,
	cmp	r2, #352	@ prephitmp.4161,
	bhi	.L697	@,
	ldr	r1, [r4, #0]	@ D.35715, <variable>.pstExtraData
	ldr	ip, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L700	@,
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L723	@,
.L701:
	mov	r8, #3	@ PmvNum,
	mov	r5, r2, asl #4	@ PicWidth, prephitmp.4161,
	mov	r6, r3, asl #4	@ PicHeight, D.35706,
	mov	sl, #5	@ prephitmp.4163,
	mov	r9, r8	@ DecFsNum, PmvNum
.L708:
	sub	r7, fp, #84	@ tmp203,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp203
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp178,
	ldr	r3, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	str	r6, [fp, #-52]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	r2, [fp, #-82]	@ tmp178, FspInstCfg.s32RprEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #13000	@ tmp189,
	strb	r3, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [fp, #-77]	@ prephitmp.4163, FspInstCfg.s32ExpectedDispFsNum
	cmp	ip, #24	@ <variable>.eCapLevel,
	uxtbne	r2, r9	@ iftmp.412, DecFsNum
	strb	r2, [fp, #-79]	@ iftmp.412, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp203
	uxtbne	r8, r8	@ iftmp.413, PmvNum
	mov	r7, #0	@ tmp187,
	moveq	r8, #1	@ iftmp.413,
	strb	r7, [fp, #-80]	@ tmp187, FspInstCfg.s32UserDec
	strb	r8, [fp, #-76]	@ iftmp.413, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35764,
	bne	.L719	@,
	ldr	lr, [r4, #0]	@ temp.4199, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L724	@,
	mov	r2, #1	@ tmp200,
	movw	r1, #12296	@ tmp199,
	mov	r0, r2	@ D.35712, tmp200
	str	r2, [r4, r1]	@ tmp200, <variable>.Vp6CodecInfo.Imgbuf_allocated
	b	.L699	@
.L722:
	movw	r2, #12500	@ tmp160,
	ldr	r2, [r0, r2]	@ prephitmp.4161, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
.L697:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35712,
.L699:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L700:
	ldr	lr, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L701	@,
	ldr	ip, [r1, #472]	@ D.35723, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ temp.4185, prephitmp.4161,
	cmp	r2, ip	@ temp.4185, D.35723
	bhi	.L725	@,
	ldr	lr, [r1, #476]	@ prephitmp.4165, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4167, D.35706,
	cmp	r3, lr	@ prephitmp.4167, prephitmp.4165
	bhi	.L711	@,
	ldr	r6, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ temp.4188, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L714	@,
	add	r8, r9, #1	@ PmvNum.4190, temp.4188,
	cmp	r8, #17	@ PmvNum.4190,
	movge	r8, #17	@ PmvNum,
.L714:
	ldrb	sl, [r1, #516]	@ zero_extendqisi2	@ prephitmp.4163, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.4188,
	mov	r5, r2	@ PicWidth, temp.4185
	mov	r6, r3	@ PicHeight, prephitmp.4167
	b	.L708	@
.L719:
	mov	r0, r7	@, tmp187
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35712, tmp187
	b	.L699	@
.L723:
	ldr	r5, [r1, #472]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.35722, prephitmp.4161,
	cmp	r2, r5	@ D.35722, PicWidth
	bhi	.L726	@,
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4171, D.35706,
	cmp	r3, r6	@ prephitmp.4171, PicHeight
	bhi	.L703	@,
	movw	r3, #12296	@ tmp166,
	ldr	r0, [r4, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L699	@,
	ldr	r7, [r1, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #492]	@ D.35733, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L707	@,
	add	r8, r9, #1	@ PmvNum.4182, D.35733,
	cmp	r8, #17	@ PmvNum.4182,
	movge	r8, #17	@ PmvNum,
.L707:
	add	r9, r9, #2	@ DecFsNum, D.35733,
	ldrb	sl, [r1, #516]	@ zero_extendqisi2	@ prephitmp.4163, <variable>.stChanOption.s32DisplayFrameNum
	b	.L708	@
.L725:
	ldr	lr, [r1, #476]	@ prephitmp.4165, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4167, D.35706,
.L711:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35712,
	b	.L699	@
.L724:
	mov	r0, r5	@, D.35764
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35712, D.35764
	b	.L699	@
.L726:
	ldr	r6, [r1, #476]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4171, D.35706,
.L703:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35712,
	b	.L699	@
	.fnend
	.size	VP6_ArrangeVHBMem, .-VP6_ArrangeVHBMem
	.align	2
	.global	VP6DEC_Decode
	.type	VP6DEC_Decode, %function
VP6DEC_Decode:
	.fnstart
.LFB1381:
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
	ldr	r3, [r1, #0]	@ D.37384, <variable>.VirAddr
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [r0, #208]	@ D.37384, <variable>.Vp6StreamParam.VirAddr
	ldr	r2, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r0, #212]	@ <variable>.PhyAddr, <variable>.Vp6StreamParam.PhyAddr
	ldr	r2, [r1, #12]	@ D.37387, <variable>.LenInByte
	cmp	r2, #0	@ D.37387,
	str	r2, [r0, #216]	@ D.37387, <variable>.Vp6StreamParam.Length
	movweq	r3, #12300	@ tmp158,
	moveq	r2, #3	@ tmp159,
	streqb	r2, [r0, r3]	@ tmp159, <variable>.Vp6CodecInfo.FrameType
	beq	.L729	@,
	cmp	r2, #2	@ D.37387,
	ble	.L748	@,
	add	r7, r0, #12608	@ tmp269, pCtx,
	add	r6, r0, #220	@ pVp6CodecInfo, pCtx,
	add	r5, r7, #8	@ pBs, tmp269,
	mov	r1, r3	@, D.37384
	mov	r0, r5	@, pBs
	bl	BsInit	@
	add	r3, r4, #208	@ tmp163, pCtx,
	mov	r0, r6	@, pVp6CodecInfo
	str	r3, [r4, #204]	@ tmp163, <variable>.pVp6StreamParam
	mov	r1, r5	@, pBs
	bl	VP6_GetPictureHeader	@
	cmp	r0, #1	@ D.37396,
	mov	r8, r0	@ D.37396,
	beq	.L732	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L732:
	add	r1, r4, #12416	@, pCtx,
	mov	r0, r6	@, pVp6CodecInfo
	add	r1, r1, #56	@,,
	mov	r2, r5	@, pBs
	bl	VP6_BuildTables	@
	cmp	r0, #1	@,
	bne	.L749	@,
	movw	r6, #12296	@ tmp168,
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L734	@,
	mov	r3, #12352	@ tmp170,
	movw	r2, #12496	@ tmp171,
	ldr	ip, [r4, r3]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	lr, [r4, r2]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	ip, lr	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	bne	.L734	@,
	movw	ip, #12356	@ tmp174,
	movw	r6, #12500	@ tmp175,
	ldr	r1, [r4, ip]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r1, r0	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	bne	.L734	@,
.L729:
	mov	r0, r4	@, pCtx
	bl	VP6_DecodeDecide	@
	cmp	r0, #1	@ ret.4232,
	mov	r6, r0	@ ret.4232,
	beq	.L741	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
.L731:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L741:
	mov	r0, r4	@, pCtx
	bl	VP6_GetImageBuffer	@
	cmp	r0, #1	@ D.37450,
	mov	r5, r0	@ D.37450,
	beq	.L742	@,
	mov	r0, r6	@, ret.4232
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L748:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L742:
	movw	r9, #12308	@ tmp226,
	movw	r7, #13000	@ tmp224,
	mov	r2, r0	@, D.37450
	ldr	r1, [r4, r9]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r6, #0	@ tmp238,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r9]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	ldrd	r8, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	mov	r3, r0	@ pImage,
	mov	r0, #29	@,
	strd	r8, [r3, #8]	@ <variable>.pts, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [r2, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	str	r6, [r3, #108]	@ tmp238, <variable>.is_fld_save
	strd	r8, [r3, #24]	@ <variable>.DispTime, pImage,
	mvn	r8, #0	@ tmp240,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r9, #0	@,
	strd	r8, [ip, #56]	@ tmp240, <variable>.pstExtraData,
	ldrd	r8, [r3, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImage,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	VP6_Set_DecParam	@
	cmp	r0, #1	@,
	bne	.L750	@,
	movw	r0, #12300	@ tmp245,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L744	@,
	add	lr, r4, #12416	@, pCtx,
	add	r3, r4, #12288	@, pCtx,
	add	r1, lr, #56	@,,
	add	r0, r3, #40	@,,
	mov	r2, #144	@,
	bl	memcpy	@
.L745:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.37394,
	b	.L731	@
.L734:
	movw	r5, #:lower16:g_event_report	@ tmp178,
	movt	r5, #:upper16:g_event_report	@ tmp178,
	ldr	r3, [r5, #0]	@ g_event_report.476, g_event_report
	cmp	r3, #0	@ g_event_report.476,
	beq	.L735	@,
	movw	r5, #12356	@ tmp179,
	mov	r6, #12352	@ tmp181,
	ldrh	ip, [r4, r5]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	movw	r1, #12500	@ tmp183,
	movw	lr, #12496	@ tmp185,
	movw	r8, #13000	@ tmp187,
	strh	ip, [fp, #-52]	@ movhi	@, para
	ldrh	r0, [r4, r6]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	strh	r0, [fp, #-50]	@ movhi	@, para
	ldrh	r2, [r4, r1]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	mov	r1, #2	@,
	strh	r2, [fp, #-48]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldrh	sl, [r4, lr]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	strh	sl, [fp, #-46]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report.476
.L735:
	movw	r5, #13000	@ tmp190,
	movw	r8, #12312	@ tmp192,
	movw	r6, #12316	@ tmp196,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp199,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r7, r7, #40	@ D.37425, tmp269,
	str	sl, [r4, r8]	@ tmp199, <variable>.Vp6CodecInfo.GoldenFsID
	str	sl, [r4, r6]	@ tmp199, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #12292	@ tmp206,
	str	sl, [r4, r2]	@ tmp199, <variable>.Vp6CodecInfo.RefNum
	mov	r1, r7	@, D.37425
	str	r0, [r4, r8]	@ D.37424, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r6]	@ D.37424, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r3, #12500	@ tmp211,
	ldr	r2, [r4, r3]	@ temp.4229, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #352	@ temp.4229,
	bhi	.L751	@,
	movw	r1, #12496	@ tmp213,
	ldr	r3, [r4, r1]	@ prephitmp.4214, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r3, #264	@ prephitmp.4214,
	bhi	.L737	@,
	ldr	r3, [r4, #0]	@ D.37432, <variable>.pstExtraData
	ldr	r0, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L739	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L752	@,
.L739:
	movw	lr, #13000	@ tmp219,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L747	@,
.L740:
	mov	r0, r4	@, pCtx
	bl	VP6_ArrangeVHBMem	@
	cmp	r0, #1	@,
	beq	.L729	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L750:
	mov	r0, r5	@, D.37450
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.37394, tmp238
	b	.L731	@
.L751:
	movw	lr, #12496	@ tmp212,
	ldr	r3, [r4, lr]	@ prephitmp.4214, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
.L737:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L749:
	mov	r0, r8	@, D.37396
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37394,
	b	.L731	@
.L744:
	movw	r5, #12340	@ tmp255,
	movw	r6, #12344	@ tmp256,
	ldr	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	add	r2, r4, #12288	@, pCtx,
	ldr	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	add	ip, r4, #12416	@, pCtx,
	add	r0, r2, #40	@,,
	add	r1, ip, #56	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	str	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	str	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	b	.L745	@
.L752:
	movw	r2, #12296	@ tmp217,
	ldr	r3, [r4, r2]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	bne	.L740	@,
.L747:
	mov	r0, r7	@, D.37425
	bl	ResetVoQueue	@
	b	.L740	@
	.fnend
	.size	VP6DEC_Decode, .-VP6DEC_Decode
	.global	VP6_DcNodeEqs
	.global	VP6_ModeVq
	.global	VP6_BaselineXmittedProbs
	.global	VP6_MvUpdateProbs
	.global	DefaultMvShortProbs
	.global	DefaultMvLongProbs
	.global	DefaultIsShortProbs
	.global	DefaultSignProbs
	.global	VP6_DcUpdateProbs
	.global	VP6_AcUpdateProbs
	.global	ZeroRunProbDefaults
	.global	ScanBandUpdateProbs
	.global	ZrlUpdateProbs
	.global	DefaultScanBands
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	VP6_DcNodeEqs, %object
	.size	VP6_DcNodeEqs, 120
VP6_DcNodeEqs:
@ M:
	.word	122
@ C:
	.word	133
@ M:
	.word	133
@ C:
	.word	51
@ M:
	.word	142
@ C:
	.word	-16
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	78
@ C:
	.word	171
@ M:
	.word	169
@ C:
	.word	71
@ M:
	.word	221
@ C:
	.word	-30
@ M:
	.word	139
@ C:
	.word	117
@ M:
	.word	214
@ C:
	.word	44
@ M:
	.word	246
@ C:
	.word	-3
@ M:
	.word	168
@ C:
	.word	79
@ M:
	.word	210
@ C:
	.word	38
@ M:
	.word	203
@ C:
	.word	17
	.type	VP6_LoopFilterLimitValues, %object
	.size	VP6_LoopFilterLimitValues, 64
VP6_LoopFilterLimitValues:
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.type	DcQuantTab, %object
	.size	DcQuantTab, 128
DcQuantTab:
	.short	188
	.short	188
	.short	188
	.short	188
	.short	180
	.short	172
	.short	172
	.short	172
	.short	172
	.short	172
	.short	168
	.short	164
	.short	164
	.short	160
	.short	160
	.short	160
	.short	160
	.short	140
	.short	140
	.short	140
	.short	140
	.short	132
	.short	132
	.short	132
	.short	132
	.short	128
	.short	128
	.short	128
	.short	108
	.short	108
	.short	104
	.short	104
	.short	100
	.short	100
	.short	96
	.short	96
	.short	92
	.short	92
	.short	76
	.short	76
	.short	76
	.short	76
	.short	72
	.short	72
	.short	68
	.short	64
	.short	64
	.short	64
	.short	64
	.short	64
	.short	60
	.short	44
	.short	44
	.short	44
	.short	40
	.short	40
	.short	36
	.short	32
	.short	28
	.short	20
	.short	12
	.short	12
	.short	8
	.short	8
	.type	AcQuantTab, %object
	.size	AcQuantTab, 128
AcQuantTab:
	.short	376
	.short	368
	.short	360
	.short	352
	.short	344
	.short	328
	.short	312
	.short	296
	.short	280
	.short	264
	.short	248
	.short	232
	.short	216
	.short	212
	.short	208
	.short	204
	.short	200
	.short	196
	.short	192
	.short	188
	.short	184
	.short	180
	.short	176
	.short	172
	.short	168
	.short	160
	.short	156
	.short	148
	.short	144
	.short	140
	.short	136
	.short	132
	.short	128
	.short	124
	.short	120
	.short	116
	.short	112
	.short	108
	.short	104
	.short	100
	.short	96
	.short	92
	.short	88
	.short	84
	.short	80
	.short	76
	.short	72
	.short	68
	.short	64
	.short	60
	.short	56
	.short	52
	.short	48
	.short	44
	.short	40
	.short	36
	.short	32
	.short	28
	.short	24
	.short	20
	.short	16
	.short	12
	.short	8
	.short	4
	.type	VP6_MvUpdateProbs, %object
	.size	VP6_MvUpdateProbs, 34
VP6_MvUpdateProbs:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.space	2
	.type	VP6_ModeVq, %object
	.size	VP6_ModeVq, 960
VP6_ModeVq:
	.byte	9
	.byte	15
	.byte	32
	.byte	25
	.byte	7
	.byte	19
	.byte	9
	.byte	21
	.byte	1
	.byte	12
	.byte	14
	.byte	12
	.byte	3
	.byte	18
	.byte	14
	.byte	23
	.byte	3
	.byte	10
	.byte	0
	.byte	4
	.byte	48
	.byte	39
	.byte	1
	.byte	2
	.byte	11
	.byte	27
	.byte	29
	.byte	44
	.byte	7
	.byte	27
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	21
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	10
	.byte	32
	.byte	43
	.byte	6
	.byte	23
	.byte	2
	.byte	3
	.byte	1
	.byte	19
	.byte	1
	.byte	6
	.byte	12
	.byte	21
	.byte	0
	.byte	7
	.byte	69
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	10
	.byte	29
	.byte	3
	.byte	12
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	20
	.byte	1
	.byte	4
	.byte	18
	.byte	36
	.byte	43
	.byte	48
	.byte	13
	.byte	35
	.byte	0
	.byte	2
	.byte	0
	.byte	5
	.byte	3
	.byte	12
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	70
	.byte	44
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	37
	.byte	46
	.byte	8
	.byte	26
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	15
	.byte	0
	.byte	1
	.byte	8
	.byte	21
	.byte	74
	.byte	53
	.byte	22
	.byte	42
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	-115
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	11
	.byte	24
	.byte	1
	.byte	11
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	4
	.byte	10
	.byte	24
	.byte	45
	.byte	21
	.byte	37
	.byte	9
	.byte	29
	.byte	0
	.byte	3
	.byte	1
	.byte	7
	.byte	11
	.byte	25
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	46
	.byte	42
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	54
	.byte	51
	.byte	10
	.byte	30
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	28
	.byte	32
	.byte	0
	.byte	0
	.byte	3
	.byte	10
	.byte	75
	.byte	51
	.byte	14
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	100
	.byte	46
	.byte	0
	.byte	1
	.byte	3
	.byte	9
	.byte	21
	.byte	37
	.byte	5
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	27
	.byte	29
	.byte	0
	.byte	1
	.byte	9
	.byte	25
	.byte	53
	.byte	51
	.byte	12
	.byte	34
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	80
	.byte	38
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	69
	.byte	33
	.byte	5
	.byte	16
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	16
	.byte	20
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	104
	.byte	49
	.byte	15
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-62
	.byte	16
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	9
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.byte	22
	.byte	1
	.byte	0
	.byte	1
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	98
	.byte	25
	.byte	4
	.byte	10
	.byte	123
	.byte	37
	.byte	6
	.byte	4
	.byte	1
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	12
	.byte	10
	.byte	0
	.byte	2
	.byte	26
	.byte	14
	.byte	14
	.byte	12
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	17
	.byte	1
	.byte	9
	.byte	0
	.byte	36
	.byte	5
	.byte	7
	.byte	1
	.byte	3
	.byte	-47
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	5
	.byte	4
	.byte	5
	.byte	0
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	4
	.byte	1
	.byte	4
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	-81
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	83
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	34
	.byte	16
	.byte	112
	.byte	21
	.byte	1
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	0
	.byte	2
	.byte	-97
	.byte	35
	.byte	2
	.byte	2
	.byte	0
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	75
	.byte	39
	.byte	5
	.byte	7
	.byte	2
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	2
	.byte	16
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	0
	.byte	2
	.byte	-44
	.byte	21
	.byte	0
	.byte	1
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-69
	.byte	22
	.byte	1
	.byte	1
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	-123
	.byte	6
	.byte	1
	.byte	2
	.byte	1
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-5
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	4
	.byte	1
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	0
	.byte	4
	.byte	49
	.byte	46
	.byte	3
	.byte	4
	.byte	7
	.byte	31
	.byte	42
	.byte	41
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	4
	.byte	2
	.byte	4
	.byte	0
	.byte	1
	.byte	26
	.byte	25
	.byte	1
	.byte	1
	.byte	2
	.byte	10
	.byte	67
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	14
	.byte	0
	.byte	2
	.byte	31
	.byte	26
	.byte	1
	.byte	6
	.byte	103
	.byte	46
	.byte	1
	.byte	2
	.byte	2
	.byte	10
	.byte	33
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	14
	.byte	31
	.byte	9
	.byte	13
	.byte	14
	.byte	54
	.byte	22
	.byte	29
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	4
	.byte	18
	.byte	6
	.byte	13
	.byte	1
	.byte	5
	.byte	0
	.byte	1
	.byte	85
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	9
	.byte	69
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	31
	.byte	28
	.byte	0
	.byte	0
	.byte	3
	.byte	14
	.byte	-126
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	3
	.byte	3
	.byte	0
	.byte	1
	.byte	-85
	.byte	25
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	25
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	21
	.byte	68
	.byte	29
	.byte	6
	.byte	15
	.byte	13
	.byte	22
	.byte	0
	.byte	0
	.byte	6
	.byte	12
	.byte	3
	.byte	14
	.byte	4
	.byte	10
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	51
	.byte	39
	.byte	0
	.byte	1
	.byte	2
	.byte	12
	.byte	91
	.byte	44
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	81
	.byte	25
	.byte	0
	.byte	0
	.byte	2
	.byte	9
	.byte	106
	.byte	26
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-116
	.byte	37
	.byte	0
	.byte	1
	.byte	1
	.byte	8
	.byte	24
	.byte	33
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	14
	.byte	23
	.byte	1
	.byte	3
	.byte	11
	.byte	53
	.byte	90
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	2
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	123
	.byte	29
	.byte	0
	.byte	0
	.byte	1
	.byte	7
	.byte	57
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	13
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	20
	.byte	-81
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-54
	.byte	23
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	2
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	VP6_DcUpdateProbs, %object
	.size	VP6_DcUpdateProbs, 22
VP6_DcUpdateProbs:
	.byte	-110
	.byte	-1
	.byte	-75
	.byte	-49
	.byte	-24
	.byte	-13
	.byte	-18
	.byte	-5
	.byte	-12
	.byte	-6
	.byte	-7
	.byte	-77
	.byte	-1
	.byte	-42
	.byte	-16
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.space	2
	.type	ZeroRunProbDefaults, %object
	.size	ZeroRunProbDefaults, 28
ZeroRunProbDefaults:
	.byte	-58
	.byte	-59
	.byte	-60
	.byte	-110
	.byte	-58
	.byte	-52
	.byte	-87
	.byte	-114
	.byte	-126
	.byte	-120
	.byte	-107
	.byte	-107
	.byte	-65
	.byte	-7
	.byte	-121
	.byte	-55
	.byte	-75
	.byte	-102
	.byte	98
	.byte	117
	.byte	-124
	.byte	126
	.byte	-110
	.byte	-87
	.byte	-72
	.byte	-16
	.byte	-10
	.byte	-2
	.type	ScanBandUpdateProbs, %object
	.size	ScanBandUpdateProbs, 64
ScanBandUpdateProbs:
	.byte	-1
	.byte	-124
	.byte	-124
	.byte	-97
	.byte	-103
	.byte	-105
	.byte	-95
	.byte	-86
	.byte	-92
	.byte	-94
	.byte	-120
	.byte	110
	.byte	103
	.byte	114
	.byte	-127
	.byte	118
	.byte	124
	.byte	125
	.byte	-124
	.byte	-120
	.byte	114
	.byte	110
	.byte	-114
	.byte	-121
	.byte	-122
	.byte	123
	.byte	-113
	.byte	126
	.byte	-103
	.byte	-73
	.byte	-90
	.byte	-95
	.byte	-85
	.byte	-76
	.byte	-77
	.byte	-92
	.byte	-53
	.byte	-38
	.byte	-31
	.byte	-39
	.byte	-41
	.byte	-50
	.byte	-53
	.byte	-39
	.byte	-27
	.byte	-15
	.byte	-8
	.byte	-13
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	ZrlUpdateProbs, %object
	.size	ZrlUpdateProbs, 28
ZrlUpdateProbs:
	.byte	-37
	.byte	-10
	.byte	-18
	.byte	-7
	.byte	-24
	.byte	-17
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-17
	.byte	-12
	.byte	-15
	.byte	-8
	.byte	-58
	.byte	-24
	.byte	-5
	.byte	-3
	.byte	-37
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-8
	.byte	-7
	.byte	-12
	.byte	-18
	.byte	-5
	.byte	-1
	.type	VP6_AcUpdateProbs, %object
	.size	VP6_AcUpdateProbs, 396
VP6_AcUpdateProbs:
	.byte	-29
	.byte	-10
	.byte	-26
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-47
	.byte	-25
	.byte	-25
	.byte	-7
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-14
	.byte	-15
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-15
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	-53
	.byte	-29
	.byte	-17
	.byte	-9
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-49
	.byte	-57
	.byte	-36
	.byte	-20
	.byte	-13
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	-37
	.byte	-26
	.byte	-13
	.byte	-12
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-19
	.byte	-9
	.byte	-4
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-26
	.byte	-23
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-17
	.byte	-29
	.byte	-25
	.byte	-12
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-24
	.byte	-22
	.byte	-32
	.byte	-28
	.byte	-14
	.byte	-7
	.byte	-14
	.byte	-4
	.byte	-5
	.byte	-5
	.byte	-1
	.byte	-21
	.byte	-7
	.byte	-18
	.byte	-16
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-12
	.byte	-6
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-8
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	VP6_BaselineXmittedProbs, %object
	.size	VP6_BaselineXmittedProbs, 80
VP6_BaselineXmittedProbs:
	.byte	42
	.byte	2
	.byte	7
	.byte	42
	.byte	22
	.byte	3
	.byte	2
	.byte	5
	.byte	1
	.byte	0
	.byte	69
	.byte	1
	.byte	1
	.byte	44
	.byte	6
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	1
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	-27
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	35
	.byte	1
	.byte	6
	.byte	34
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	122
	.byte	1
	.byte	1
	.byte	46
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	DefaultIsShortProbs, %object
	.size	DefaultIsShortProbs, 2
DefaultIsShortProbs:
	.byte	-94
	.byte	-92
	.space	2
	.type	DefaultMvShortProbs, %object
	.size	DefaultMvShortProbs, 14
DefaultMvShortProbs:
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.space	2
	.type	DefaultSignProbs, %object
	.size	DefaultSignProbs, 2
DefaultSignProbs:
	.byte	-128
	.byte	-128
	.space	2
	.type	DefaultMvLongProbs, %object
	.size	DefaultMvLongProbs, 16
DefaultMvLongProbs:
	.byte	-9
	.byte	-46
	.byte	-121
	.byte	68
	.byte	-118
	.byte	-36
	.byte	-17
	.byte	-10
	.byte	-12
	.byte	-72
	.byte	-55
	.byte	44
	.byte	-83
	.byte	-35
	.byte	-17
	.byte	-3
	.type	DefaultScanBands, %object
	.size	DefaultScanBands, 64
DefaultScanBands:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"enter VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC1:
	.ascii	"leave VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC2:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC3:
	.ascii	"----------------- vp6 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC4:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC5:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC6:
	.ascii	"P-frm\000"
	.space	2
.LC7:
	.ascii	"error: DecMode illegal\012\000"
.LC8:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC9:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC10:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC11:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC12:
	.ascii	"insert img to Voqueue failed!\012\000"
	.space	1
.LC13:
	.ascii	"VP6_Set_DecParam but logic fs is null!\012\000"
.LC14:
	.ascii	"Decord FS is NULL!\012\000"
.LC15:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC16:
	.ascii	"VP6DEC_Init leave\012\000"
	.space	1
.LC17:
	.ascii	"VP6_InterFrmHeader VersionNo fault,old:%d,new:%d\012"
	.ascii	"\000"
	.space	2
.LC18:
	.ascii	"enter VP6_IntraFrmHeader\012\000"
	.space	2
.LC19:
	.ascii	"error: Vp3VersionNo %d > CURRENT_DECODE_VERSION(8)\012"
	.ascii	"\000"
.LC20:
	.ascii	"error: bitstream error!\012\000"
	.space	3
.LC21:
	.ascii	"We have a new size image!\012 The old size is %d x "
	.ascii	"%d, and the new is %d x %d\012\000"
.LC22:
	.ascii	"leave VP6_IntraFrmHeader\012\000"
	.space	2
.LC23:
	.ascii	"[ERR]VP6_GetPictureHeader invalid param!\012\000"
	.space	2
.LC24:
	.ascii	"VP6_GetPictureHeader enter!\012\000"
	.space	3
.LC25:
	.ascii	"VP6_GetPictureHeader leave!\012\000"
	.space	3
.LC26:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC27:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC28:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC29:
	.ascii	"image_size_in_mb abnormal(%d x %d)\012\000"
.LC30:
	.ascii	"vp6 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC31:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC32:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC33:
	.ascii	"Error! Truncated packet\012\000"
	.space	3
.LC34:
	.ascii	"[ERR]VP6_GetPictureHeader Error!\012\000"
	.space	2
.LC35:
	.ascii	"[ERR] VP6_DecodeDecide Error!\012\000"
	.space	1
.LC36:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC37:
	.ascii	"VP6_ArrangeVHBMem err\012\000"
	.space	1
.LC38:
	.ascii	"VP6_DecodeDecide err\012\000"
	.space	2
.LC39:
	.ascii	"VP6DEC_GetImageBuffer err\012\000"
	.space	1
.LC40:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC41:
	.ascii	"VP6_PrePare_decode Error!\012\000"
	.space	1
.LC42:
	.ascii	"leave VP6DEC_Decode\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
