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
	.file	"h264.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/h264.o -O2 -Wall
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
	.global	GetMinPOC
	.type	GetMinPOC, %function
GetMinPOC:
	.fnstart
.LFB1370:
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
	movw	ip, #26620	@ tmp173,
	mov	r4, #0	@ tmp171,
	str	r4, [r2, #0]	@ tmp171,* pos
	movw	r4, #26616	@ tmp174,
	mvn	r3, #-2147483648	@ tmp172,
	str	r3, [r1, #0]	@ tmp172,* poc
	ldr	r3, [r0, r4]	@ prephitmp.877, <variable>.DPB.size
	ldr	r4, [r0, ip]	@ prephitmp.859, <variable>.DPB.used_size
	cmp	r4, r3	@ prephitmp.859, prephitmp.877
	strhi	r3, [r0, ip]	@ prephitmp.877, <variable>.DPB.used_size
	movls	r3, r4	@ prephitmp.877, prephitmp.859
	cmp	r3, #0	@ prephitmp.877,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.873, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #56	@ ivtmp.873, ivtmp.873,
	movw	r7, #26620	@ tmp181,
.L6:
	ldr	r4, [ip, #0]	@ D.35525, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.873, ivtmp.873,
	ldr	r6, [r1, #0]	@ tmp177,* poc
	ldr	r5, [r4, #588]	@ D.35526, <variable>.poc
	cmp	r6, r5	@ tmp177, D.35526
	ble	.L5	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.35526,* poc
	strne	r3, [r2, #0]	@ i,* pos
.L5:
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	r4, r3	@ <variable>.DPB.used_size, i
	bhi	.L6	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	GetMinPOC, .-GetMinPOC
	.align	2
	.global	FrameStoreRefFlg
	.type	FrameStoreRefFlg, %function
FrameStoreRefFlg:
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
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	subs	r0, r0, #0	@, <variable>.is_reference,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FrameStoreRefFlg, .-FrameStoreRefFlg
	.align	2
	.global	ShortTermRefFlg
	.type	ShortTermRefFlg, %function
ShortTermRefFlg:
	.fnstart
.LFB1372:
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35540, <variable>.is_reference
	cmp	r3, #3	@ D.35540,
	beq	.L20	@,
	tst	r3, #1	@ D.35540,
	bne	.L15	@,
.L16:
	ands	r3, r3, #2	@ tmp145, D.35540,
	moveq	r0, r3	@ D.35547, tmp145
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r0, #536]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #65536	@ tmp146,
	movne	r0, #0	@, D.35547
	moveq	r0, #1	@, D.35547
	ldmfd	sp, {fp, sp, pc}	@
.L20:
	ldr	ip, [r0, #464]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #65536	@ tmp138,
	beq	.L14	@,
.L15:
	ldr	ip, [r0, #500]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #65536	@ tmp142,
	bne	.L16	@,
.L14:
	mov	r0, #1	@ D.35547,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ShortTermRefFlg, .-ShortTermRefFlg
	.align	2
	.global	LongTermRefFlg
	.type	LongTermRefFlg, %function
LongTermRefFlg:
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35567, <variable>.is_reference
	cmp	r3, #3	@ D.35567,
	beq	.L29	@,
	tst	r3, #1	@ D.35567,
	bne	.L24	@,
.L25:
	ands	r3, r3, #2	@ tmp145, D.35567,
	moveq	r0, r3	@ D.35574, tmp145
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r0, #536]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #256	@ tmp146,
	movne	r0, #0	@, D.35574
	moveq	r0, #1	@, D.35574
	ldmfd	sp, {fp, sp, pc}	@
.L29:
	ldr	ip, [r0, #464]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #256	@ tmp138,
	beq	.L23	@,
.L24:
	ldr	ip, [r0, #500]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #256	@ tmp142,
	bne	.L25	@,
.L23:
	mov	r0, #1	@ D.35574,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LongTermRefFlg, .-LongTermRefFlg
	.align	2
	.global	UpdateLTReflist
	.type	UpdateLTReflist, %function
UpdateLTReflist:
	.fnstart
.LFB1374:
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
	movw	sl, #26620	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L32	@,
	add	r4, r0, #26368	@ ivtmp.981, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #56	@ ivtmp.981, ivtmp.981,
	mov	r5, r7	@ i, j
.L34:
	ldr	r6, [r4, #0]	@ D.35603, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.981, ivtmp.981,
	mov	r0, r6	@, D.35603
	bl	LongTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #46	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.35603, <variable>.DPB.fs_ltref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L34	@,
.L32:
	movw	r3, #26616	@ tmp149,
	movw	ip, #26628	@ tmp148,
	ldr	r0, [r8, r3]	@ D.35609, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, r0	@ j, D.35609
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #46	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.35609
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.35609
	add	r8, r8, r1, asl #2	@, ivtmp.977, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L36	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	cmp	r2, r0	@ j, D.35609
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L36:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.977
	cmp	r2, r0	@ j, D.35609
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ltref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ltref
	add	r8, ip, #4	@ ivtmp.977, tmp160,
	bcc	.L36	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	UpdateLTReflist, .-UpdateLTReflist
	.align	2
	.global	UpdateReflist
	.type	UpdateReflist, %function
UpdateReflist:
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
	movw	sl, #26620	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L47	@,
	add	r4, r0, #26368	@ ivtmp.1019, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #56	@ ivtmp.1019, ivtmp.1019,
	mov	r5, r7	@ i, j
.L49:
	ldr	r6, [r4, #0]	@ D.35622, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1019, ivtmp.1019,
	mov	r0, r6	@, D.35622
	bl	ShortTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #30	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.35622, <variable>.DPB.fs_ref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L49	@,
.L47:
	movw	r3, #26616	@ tmp149,
	mov	ip, #26624	@ tmp148,
	ldr	r0, [r8, r3]	@ D.35628, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, r0	@ j, D.35628
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #30	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.35628
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.35628
	add	r8, r8, r1, asl #2	@, ivtmp.1015, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L51	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	cmp	r2, r0	@ j, D.35628
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L51:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1015
	cmp	r2, r0	@ j, D.35628
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ref
	add	r8, ip, #4	@ ivtmp.1015, tmp160,
	bcc	.L51	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	UpdateReflist, .-UpdateReflist
	.align	2
	.global	GetPicNumX
	.type	GetPicNumX, %function
GetPicNumX:
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
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r0, [r0, #480]	@ CurrPicNum, <variable>.frame_num
	mvn	r1, r1	@ tmp141, difference_of_pic_nums_minus1
	cmp	r3, #0	@ <variable>.structure,
	movne	r0, r0, asl #1	@ tmp138, <variable>.frame_num,
	addne	r0, r0, #1	@ CurrPicNum, tmp138,
	add	r0, r0, r1	@, CurrPicNum, tmp141
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetPicNumX, .-GetPicNumX
	.align	2
	.global	MarkPicLTRef
	.type	MarkPicLTRef, %function
MarkPicLTRef:
	.fnstart
.LFB1382:
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
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ D.35867, <variable>.structure
	cmp	r3, #0	@ D.35867,
	beq	.L65	@,
	mov	ip, #26624	@ tmp155,
	ldr	r8, [r0, ip]	@ D.35883, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.35883,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.1083, pH264Ctx,
	sub	r6, r8, #1	@ tmp280, D.35883,
	and	r7, r6, #1	@ tmp282, tmp280,
	mov	r4, #0	@ i.1101,
	ldr	ip, [r5, #120]!	@ temp.1093, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.35885, <variable>.is_reference
	tst	r6, #1	@ D.35885,
	beq	.L85	@,
	ldr	sl, [ip, #500]	@ tmp311,
	bic	sl, sl, #-16777216	@ tmp312, tmp311,
	bic	sl, sl, #255	@ tmp312, tmp312,
	cmp	sl, #65536	@ tmp312,
	beq	.L104	@,
.L85:
	tst	r6, #2	@ D.35885,
	beq	.L86	@,
	ldr	r6, [ip, #536]	@ tmp306,
	bic	r6, r6, #-16777216	@ tmp307, tmp306,
	bic	r6, r6, #255	@ tmp307, tmp307,
	cmp	r6, #65536	@ tmp307,
	beq	.L105	@,
.L86:
	mov	r4, #1	@ i.1101,
	cmp	r8, r4	@ D.35883, i.1101
	add	r5, r5, #4	@ ivtmp.1083, ivtmp.1083,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp282,
	beq	.L74	@,
	ldr	ip, [r5, #0]	@ temp.1093, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.35885, <variable>.is_reference
	tst	r6, #1	@ D.35885,
	beq	.L88	@,
	ldr	r7, [ip, #500]	@ tmp324,
	bic	r7, r7, #-16777216	@ tmp325, tmp324,
	bic	r7, r7, #255	@ tmp325, tmp325,
	cmp	r7, #65536	@ tmp325,
	beq	.L106	@,
.L88:
	tst	r6, #2	@ D.35885,
	beq	.L89	@,
	ldr	r6, [ip, #536]	@ tmp319,
	bic	r6, r6, #-16777216	@ tmp320, tmp319,
	bic	r6, r6, #255	@ tmp320, tmp320,
	cmp	r6, #65536	@ tmp320,
	beq	.L107	@,
.L89:
	add	r4, r4, #1	@ i.1101, i.1101,
	add	r5, r5, #4	@ ivtmp.1083, ivtmp.1083,
	cmp	r8, r4	@ D.35883, i.1101
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	ip, [r5, #0]	@ temp.1093, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.35885, <variable>.is_reference
	tst	r6, #1	@ D.35885,
	bne	.L108	@,
.L70:
	tst	r6, #2	@ D.35885,
	beq	.L72	@,
	ldr	r6, [ip, #536]	@ tmp239,
	bic	r6, r6, #-16777216	@ tmp237, tmp239,
	bic	r6, r6, #255	@ tmp237, tmp237,
	cmp	r6, #65536	@ tmp237,
	beq	.L109	@,
.L72:
	ldr	ip, [r5, #4]	@ temp.1093, <variable>.DPB.fs_ref
	add	r4, r4, #1	@ i.1101, i.1101,
	add	r5, r5, #4	@ tmp284, ivtmp.1083,
	mov	sl, r4	@ tmp283, i.1101
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.35885, <variable>.is_reference
	tst	r6, #1	@ D.35885,
	beq	.L92	@,
	ldr	r7, [ip, #500]	@ tmp335,
	bic	r7, r7, #-16777216	@ tmp336, tmp335,
	bic	r7, r7, #255	@ tmp336, tmp336,
	cmp	r7, #65536	@ tmp336,
	beq	.L110	@,
.L92:
	tst	r6, #2	@ D.35885,
	beq	.L93	@,
	ldr	r6, [ip, #536]	@ tmp330,
	bic	r6, r6, #-16777216	@ tmp331, tmp330,
	bic	r6, r6, #255	@ tmp331, tmp331,
	cmp	r6, #65536	@ tmp331,
	beq	.L111	@,
.L93:
	add	r4, sl, #1	@ i.1101, tmp283,
	add	r5, r5, #4	@ ivtmp.1083, tmp284,
	cmp	r8, r4	@ D.35883, i.1101
	bls	.L112	@,
.L74:
	ldr	ip, [r5, #0]	@ temp.1093, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.35885, <variable>.is_reference
	tst	r6, #1	@ D.35885,
	beq	.L70	@,
.L108:
	ldr	r7, [ip, #500]	@ tmp200,
	bic	r7, r7, #-16777216	@ tmp198, tmp200,
	bic	r7, r7, #255	@ tmp198, tmp198,
	cmp	r7, #65536	@ tmp198,
	bne	.L70	@,
	ldr	r7, [ip, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L70	@,
	ldrb	r6, [ip, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L72	@,
.L71:
	add	r4, r4, #6592	@ tmp204, i.1101,
	str	r1, [ip, #584]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #30	@ tmp204, tmp204,
	cmp	r3, #1	@ D.35867,
	movne	r2, #0	@, tmp209
	moveq	r2, #1	@, tmp209
	add	ip, r2, r1, asl #1	@, tmp210, tmp209, long_term_frame_idx,
	mov	r1, #1	@ tmp214,
	ldr	r3, [r0, r4, asl #2]	@ tmp206, <variable>.DPB.fs_ref
	str	ip, [r3, #508]	@ tmp210, <variable>.top_field.long_term_pic_num
	mov	ip, #0	@ tmp219,
	ldr	r2, [r0, r4, asl #2]	@ tmp213, <variable>.DPB.fs_ref
	strb	r1, [r2, #501]	@ tmp214, <variable>.top_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp218, <variable>.DPB.fs_ref
	strb	ip, [r3, #502]	@ tmp219, <variable>.top_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1098, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #464]	@ zero_extendqisi2	@ D.35906, <variable>.frame.structure
	cmp	r2, #3	@ D.35906,
	cmpne	r2, #0	@, D.35906,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrb	ip, [r3, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldrb	r1, [r3, #501]	@ zero_extendqisi2	@ D.35912, <variable>.top_field.is_long_term
	cmp	ip, r1	@ <variable>.bottom_field.is_long_term, D.35912
	streqb	ip, [r3, #465]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r3, [r0, r4, asl #2]	@ temp.1100, <variable>.DPB.fs_ref
	ldreqb	ip, [r3, #502]	@ zero_extendqisi2	@ <variable>.top_field.is_short_term, <variable>.top_field.is_short_term
	streqb	ip, [r3, #466]	@ <variable>.top_field.is_short_term, <variable>.frame.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L65:
	mov	ip, #26624	@ tmp156,
	ldr	r7, [r0, ip]	@ temp.1102, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, #0	@ temp.1102,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.1078, pH264Ctx,
	sub	r5, r7, #1	@ tmp275, temp.1102,
	and	r6, r5, #1	@ tmp277, tmp275,
	ldr	ip, [r4, #120]!	@ D.35871, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L113	@,
.L78:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, temp.1102
	add	r4, r4, #4	@ ivtmp.1078, ivtmp.1078,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r6, #0	@ tmp277,
	beq	.L69	@,
	ldr	ip, [r4, #0]	@ D.35871, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L114	@,
.L80:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1078, ivtmp.1078,
	cmp	r3, r7	@ i, temp.1102
	bcc	.L69	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L68:
	ldr	ip, [r4, #4]	@ D.35871, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	beq	.L115	@,
.L83:
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1078, tmp278,
	cmp	r3, r7	@ i, temp.1102
	bcs	.L116	@,
.L69:
	ldr	ip, [r4, #0]	@ D.35871, <variable>.DPB.fs_ref
	add	r6, r4, #4	@ tmp278, ivtmp.1078,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	bne	.L68	@,
	ldr	r5, [ip, #464]	@ tmp161,
	bic	r5, r5, #-16777216	@ tmp159, tmp161,
	bic	r5, r5, #255	@ tmp159, tmp159,
	cmp	r5, #65536	@ tmp159,
	bne	.L68	@,
	ldr	r5, [ip, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	beq	.L101	@,
	ldr	ip, [r4, #4]	@ D.35871, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L83	@,
.L115:
	ldr	r4, [ip, #464]	@ tmp302,
	bic	r4, r4, #-16777216	@ tmp303, tmp302,
	bic	r4, r4, #255	@ tmp303, tmp303,
	cmp	r4, #65536	@ tmp303,
	bne	.L83	@,
	ldr	r4, [ip, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r2	@ <variable>.frame.pic_num, picNumX
	beq	.L101	@,
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1078, tmp278,
	cmp	r3, r7	@ i, temp.1102
	bcc	.L69	@,
.L116:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L110:
	ldr	r7, [ip, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L92	@,
	ldrb	r6, [ip, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L71	@,
	add	r4, sl, #1	@ i.1101, tmp283,
	add	r5, r5, #4	@ ivtmp.1083, tmp284,
	cmp	r8, r4	@ D.35883, i.1101
	bhi	.L74	@,
.L112:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L109:
	ldr	r6, [ip, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L72	@,
	ldrb	r6, [ip, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L72	@,
	b	.L73	@
.L111:
	ldr	r6, [ip, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L93	@,
	ldrb	r6, [ip, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L93	@,
.L73:
	add	r4, r4, #6592	@ tmp243, i.1101,
	str	r1, [ip, #584]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #30	@ tmp243, tmp243,
	cmp	r3, #2	@ D.35867,
	movne	r2, #0	@, tmp248
	moveq	r2, #1	@, tmp248
	add	ip, r2, r1, asl #1	@, tmp249, tmp248, long_term_frame_idx,
	mov	r1, #1	@ tmp253,
	ldr	r3, [r0, r4, asl #2]	@ tmp245, <variable>.DPB.fs_ref
	str	ip, [r3, #544]	@ tmp249, <variable>.bottom_field.long_term_pic_num
	mov	ip, #0	@ tmp258,
	ldr	r2, [r0, r4, asl #2]	@ tmp252, <variable>.DPB.fs_ref
	strb	r1, [r2, #537]	@ tmp253, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp257, <variable>.DPB.fs_ref
	strb	ip, [r3, #538]	@ tmp258, <variable>.bottom_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1109, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #464]	@ zero_extendqisi2	@ D.35932, <variable>.frame.structure
	cmp	r2, #3	@ D.35932,
	cmpne	r2, #0	@, D.35932,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrb	ip, [r3, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldrb	r1, [r3, #501]	@ zero_extendqisi2	@ temp.1110, <variable>.top_field.is_long_term
	cmp	ip, r1	@ <variable>.bottom_field.is_long_term, temp.1110
	streqb	ip, [r3, #465]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r3, [r0, r4, asl #2]	@ temp.1112, <variable>.DPB.fs_ref
	ldreqb	ip, [r3, #538]	@ zero_extendqisi2	@ <variable>.bottom_field.is_short_term, <variable>.bottom_field.is_short_term
	streqb	ip, [r3, #466]	@ <variable>.bottom_field.is_short_term, <variable>.frame.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L104:
	ldr	sl, [ip, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	sl, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L85	@,
	ldrb	r6, [ip, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L86	@,
	b	.L71	@
.L106:
	ldr	r7, [ip, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L88	@,
	ldrb	r6, [ip, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L89	@,
	b	.L71	@
.L105:
	ldr	r6, [ip, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L86	@,
	ldrb	r6, [ip, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L86	@,
	b	.L73	@
.L107:
	ldr	r6, [ip, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L89	@,
	ldrb	r6, [ip, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L89	@,
	b	.L73	@
.L113:
	ldr	r5, [ip, #464]	@ tmp295,
	bic	r5, r5, #-16777216	@ tmp296, tmp295,
	bic	r5, r5, #255	@ tmp296, tmp296,
	cmp	r5, #65536	@ tmp296,
	bne	.L78	@,
	ldr	r5, [ip, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L78	@,
.L101:
	add	r4, r3, #6592	@ tmp163, i,
	str	r1, [ip, #584]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r3, r4, #30	@ tmp163, tmp163,
	mov	ip, #1	@ tmp169,
	mov	r2, #0	@ tmp184,
	ldr	r4, [r0, r3, asl #2]	@ tmp165, <variable>.DPB.fs_ref
	str	r1, [r4, #472]	@ long_term_frame_idx, <variable>.frame.long_term_pic_num
	ldr	r1, [r0, r3, asl #2]	@ tmp168, <variable>.DPB.fs_ref
	strb	ip, [r1, #465]	@ tmp169, <variable>.frame.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp173, <variable>.DPB.fs_ref
	strb	ip, [r1, #501]	@ tmp169, <variable>.top_field.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp178, <variable>.DPB.fs_ref
	strb	ip, [r1, #537]	@ tmp169, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, r3, asl #2]	@ tmp183, <variable>.DPB.fs_ref
	strb	r2, [ip, #466]	@ tmp184, <variable>.frame.is_short_term
	ldr	r1, [r0, r3, asl #2]	@ tmp188, <variable>.DPB.fs_ref
	strb	r2, [r1, #502]	@ tmp184, <variable>.top_field.is_short_term
	ldr	r3, [r0, r3, asl #2]	@ tmp193, <variable>.DPB.fs_ref
	strb	r2, [r3, #538]	@ tmp184, <variable>.bottom_field.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L114:
	ldr	r5, [ip, #464]	@ tmp299,
	bic	r5, r5, #-16777216	@ tmp300, tmp299,
	bic	r5, r5, #255	@ tmp300, tmp300,
	cmp	r5, #65536	@ tmp300,
	bne	.L80	@,
	ldr	r5, [ip, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L80	@,
	b	.L101	@
	.fnend
	.size	MarkPicLTRef, .-MarkPicLTRef
	.align	2
	.global	SetFrmRepeatCount
	.type	SetFrmRepeatCount, %function
SetFrmRepeatCount:
	.fnstart
.LFB1392:
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
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r2, ip, #2032	@ tmp138, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r2, #15	@ tmp138, tmp138,
	cmp	r3, #4096	@ tmp138,
	bcc	.L118	@,
	movw	r3, #55544	@ tmp144,
	movw	r2, #55540	@ tmp142,
	ldr	r4, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	movw	ip, #26616	@ tmp147,
	ldr	r2, [r0, r2]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	ip, [r0, ip]	@ <variable>.DPB.size, <variable>.DPB.size
	add	ip, ip, r4, lsr #1	@, D.36360, <variable>.DPB.size, <variable>.PicOutCounter,
	mov	r2, r2, lsr #1	@ D.36356, <variable>.NewPicCounter,
	add	r4, ip, #1	@ tmp149, D.36360,
	cmp	r2, r4	@ D.36356, tmp149
	bcc	.L118	@,
	mvn	ip, ip	@ tmp150, D.36360
	add	r2, ip, r2	@ tmp151, tmp150, D.36356
	cmp	r2, #1	@ tmp151,
	movhi	r2, #2	@ tmp152,
	movls	r2, #1	@ tmp157,
	strhi	r2, [r1, #84]	@ tmp152, <variable>.u32RepeatCnt
	strls	r2, [r1, #84]	@ tmp157, <variable>.u32RepeatCnt
	ldrhi	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	ldrls	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	addhi	r2, r2, #4	@ tmp156, <variable>.PicOutCounter,
	addls	r2, r2, #2	@ tmp161, <variable>.PicOutCounter,
	str	r2, [r0, r3]	@ tmp161, <variable>.PicOutCounter
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L118:
	mov	r0, #0	@ tmp163,
	str	r0, [r1, #84]	@ tmp163, <variable>.u32RepeatCnt
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SetFrmRepeatCount, .-SetFrmRepeatCount
	.align	2
	.global	SplitFrmToFlds
	.type	SplitFrmToFlds, %function
SplitFrmToFlds:
	.fnstart
.LFB1395:
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
	ldrb	r4, [r0, #465]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	ldrb	ip, [r0, #466]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	mov	r5, #1	@ tmp138,
	ldr	r1, [r0, #484]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	r2, [r0, #488]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldr	r3, [r0, #468]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	r5, [r0, #500]	@ tmp138, <variable>.top_field.structure
	mov	r5, #2	@ tmp147,
	strb	r4, [r0, #537]	@ <variable>.frame.is_long_term, <variable>.bottom_field.is_long_term
	str	r3, [r0, #540]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	ip, [r0, #538]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	r5, [r0, #536]	@ tmp147, <variable>.bottom_field.structure
	str	r1, [r0, #556]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	r2, [r0, #560]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r4, [r0, #501]	@ <variable>.frame.is_long_term, <variable>.top_field.is_long_term
	strb	ip, [r0, #502]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	r1, [r0, #520]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	r2, [r0, #524]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r3, [r0, #504]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SplitFrmToFlds, .-SplitFrmToFlds
	.align	2
	.global	CombineFldsToFrm
	.type	CombineFldsToFrm, %function
CombineFldsToFrm:
	.fnstart
.LFB1396:
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
	ldr	r1, [r0, #552]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	ldr	r3, [r0, #516]	@ <variable>.top_field.poc, <variable>.top_field.poc
	ldr	r4, [r0, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r1, r3	@ <variable>.bottom_field.poc, <variable>.top_field.poc
	movlt	r3, r1	@ D.36474, <variable>.bottom_field.poc
	movge	r3, r3	@ D.36474, <variable>.top_field.poc
	ldr	r2, [r0, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldrb	r1, [r0, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, #504]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	add	r2, r4, r2	@ tmp144, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	cmp	r1, #0	@ <variable>.bottom_field.is_long_term,
	mov	r4, #3	@ tmp142,
	mov	r2, r2, lsr #1	@ D.36479, tmp144,
	str	r3, [r0, #588]	@ D.36474, <variable>.poc
	strb	r4, [r0, #464]	@ tmp142, <variable>.frame.structure
	str	ip, [r0, #468]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	str	r3, [r0, #480]	@ D.36474, <variable>.frame.poc
	str	r2, [r0, #484]	@ D.36479, <variable>.frame.err_level
	beq	.L127	@,
	ldrb	ip, [r0, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	subs	r1, ip, #0	@ prephitmp.1190, <variable>.top_field.is_long_term,
	movne	r1, #1	@ prephitmp.1190
.L127:
	ldr	r3, [r0, #536]	@ tmp154,
	strb	r1, [r0, #465]	@ prephitmp.1190, <variable>.frame.is_long_term
	bic	ip, r3, #-16777216	@ tmp152, tmp154,
	bic	r3, ip, #255	@ tmp152, tmp152,
	cmp	r3, #0	@ tmp152,
	beq	.L128	@,
	ldr	ip, [r0, #500]	@ tmp157,
	bic	r3, ip, #-16777216	@ tmp155, tmp157,
	bic	ip, r3, #255	@ tmp155, tmp155,
	cmp	ip, #0	@ tmp155,
	bne	.L131	@,
.L128:
	mov	r1, #0	@ prephitmp.1179,
.L129:
	ldr	ip, [r0, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r0, #524]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	str	r2, [r0, #608]	@ D.36479, <variable>.err_level
	cmp	ip, r3	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	movcs	r3, ip	@ D.36503, <variable>.bottom_field.pic_type
	strb	r1, [r0, #466]	@ prephitmp.1179, <variable>.frame.is_short_term
	str	r3, [r0, #604]	@ D.36503, <variable>.pic_type
	str	r3, [r0, #488]	@ D.36503, <variable>.frame.pic_type
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L131:
	rsbs	r1, r1, #1	@ prephitmp.1179, prephitmp.1190
	movcc	r1, #0	@ prephitmp.1179
	b	.L129	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	UpdateCurrFrameInfo
	.type	UpdateCurrFrameInfo, %function
UpdateCurrFrameInfo:
	.fnstart
.LFB1407:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #52728	@ tmp152,
	movw	r5, #52258	@ tmp153,
	ldr	r4, [r0, ip]	@ pCurrFrame, <variable>.CurrPic.frame_store
	ldrb	r1, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #52260	@ tmp156,
	strb	r1, [r4, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L133	@,
	movw	r2, #52261	@ tmp158,
	ldrb	r2, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	cmp	r2, #0	@ <variable>.CurrPic.is_short_term,
	bne	.L133	@,
.L134:
	mov	r5, #52736	@ tmp161,
	strb	r2, [r4, #2]	@ iftmp.524, <variable>.is_reference
	ldr	r2, [r3, r5]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	movw	ip, #52772	@ tmp163,
	movw	r5, #52764	@ tmp165,
	str	r2, [r4, #576]	@ <variable>.CurrPic.frame_num, <variable>.frame_num
	movw	r2, #52263	@ tmp175,
	ldr	r1, [r3, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	str	r1, [r4, #608]	@ <variable>.CurrPic.err_level, <variable>.err_level
	movw	r1, #52748	@ tmp167,
	ldr	r0, [r3, r5]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	str	r0, [r4, #604]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	movw	r1, #52796	@ tmp169,
	str	r0, [r4, #588]	@ <variable>.CurrPic.thispoc, <variable>.poc
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r1, #52740	@ tmp171,
	str	r0, [r4, #612]	@ <variable>.CurrPic.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.long_term_frame_idx, <variable>.CurrPic.long_term_frame_idx
	movw	r1, #52265	@ tmp173,
	str	r0, [r4, #584]	@ <variable>.CurrPic.long_term_frame_idx, <variable>.long_term_frame_idx
	ldrb	r0, [r3, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	movw	r1, #52259	@ tmp178,
	str	r0, [r4, #600]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r0, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r0, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r0, #3	@ iftmp.526,
	movne	r0, #0	@ iftmp.526,
	strb	r0, [r4, #3]	@ iftmp.526, <variable>.mode_skip_flag
	ldrb	r1, [r3, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r1, #1	@ <variable>.CurrPic.structure,
	beq	.L139	@,
	bcs	.L153	@,
	movw	r1, #52260	@ tmp184,
	str	r4, [r4, #468]	@ pCurrFrame, <variable>.frame.frame_store
	mov	r2, #3	@ tmp180,
	mov	r6, #0	@ tmp182,
	strb	r2, [r4, #1]	@ tmp180, <variable>.is_used
	add	r8, r3, #52224	@, pH264Ctx,
	strb	r6, [r4, #464]	@ tmp182, <variable>.frame.structure
	movw	r0, #52261	@ tmp186,
	ldrb	r6, [r3, r1]	@ zero_extendqisi2	@ temp.1221, <variable>.CurrPic.is_long_term
	add	r1, r8, #48	@,,
	movw	lr, #52752	@ tmp188,
	mov	r2, #456	@,
	strb	r6, [r4, #465]	@ temp.1221, <variable>.frame.is_long_term
	ldrb	r8, [r3, r0]	@ zero_extendqisi2	@ temp.1222, <variable>.CurrPic.is_short_term
	add	r0, r4, #8	@, pCurrFrame,
	strb	r8, [r4, #466]	@ temp.1222, <variable>.frame.is_short_term
	ldr	r7, [r3, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	str	r7, [r4, #480]	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	ldr	r5, [r3, r5]	@ temp.1223, <variable>.CurrPic.pic_type
	str	r5, [r4, #488]	@ temp.1223, <variable>.frame.pic_type
	ldr	r7, [r3, ip]	@ temp.1224, <variable>.CurrPic.err_level
	movw	ip, #52756	@ tmp192,
	str	r7, [r4, #484]	@ temp.1224, <variable>.frame.err_level
	ldr	lr, [r3, ip]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	movw	ip, #52760	@ tmp194,
	str	lr, [r4, #516]	@ <variable>.CurrPic.toppoc, <variable>.top_field.poc
	ldr	lr, [r3, ip]	@ <variable>.CurrPic.bottompoc, <variable>.CurrPic.bottompoc
	str	lr, [r4, #552]	@ <variable>.CurrPic.bottompoc, <variable>.bottom_field.poc
	bl	memcpy	@
	mov	ip, #1	@ tmp203,
	mov	r3, #2	@ tmp207,
	strb	r6, [r4, #537]	@ temp.1221, <variable>.bottom_field.is_long_term
	strb	r8, [r4, #538]	@ temp.1222, <variable>.bottom_field.is_short_term
	str	r7, [r4, #556]	@ temp.1224, <variable>.bottom_field.err_level
	strb	ip, [r4, #500]	@ tmp203, <variable>.top_field.structure
	strb	r3, [r4, #536]	@ tmp207, <variable>.bottom_field.structure
	str	r5, [r4, #560]	@ temp.1223, <variable>.bottom_field.pic_type
	str	r4, [r4, #540]	@ pCurrFrame, <variable>.bottom_field.frame_store
	strb	r6, [r4, #501]	@ temp.1221, <variable>.top_field.is_long_term
	strb	r8, [r4, #502]	@ temp.1222, <variable>.top_field.is_short_term
	str	r7, [r4, #520]	@ temp.1224, <variable>.top_field.err_level
	str	r5, [r4, #524]	@ temp.1223, <variable>.top_field.pic_type
	str	r4, [r4, #504]	@ pCurrFrame, <variable>.top_field.frame_store
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L133:
	mov	r2, #3	@ iftmp.524,
	b	.L134	@
.L153:
	cmp	r1, #2	@ <variable>.CurrPic.structure,
	ldmnefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	movw	r6, #52260	@ tmp252,
	str	r4, [r4, #540]	@ pCurrFrame, <variable>.bottom_field.frame_store
	mov	lr, #1	@ tmp250,
	strb	lr, [r4, #536]	@ tmp250, <variable>.bottom_field.structure
	ldrb	lr, [r3, r6]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r6, #0	@ tmp262,
	strb	lr, [r4, #537]	@ <variable>.CurrPic.is_long_term, <variable>.bottom_field.is_long_term
	movw	lr, #52261	@ tmp255,
	ldrb	lr, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	strb	lr, [r4, #538]	@ <variable>.CurrPic.is_short_term, <variable>.bottom_field.is_short_term
	movw	lr, #52756	@ tmp258,
	ldr	lr, [r3, lr]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	str	lr, [r4, #552]	@ <variable>.CurrPic.toppoc, <variable>.bottom_field.poc
	ldr	lr, [r3, r5]	@ temp.1236, <variable>.CurrPic.pic_type
	movw	r5, #52257	@ tmp263,
	str	lr, [r4, #560]	@ temp.1236, <variable>.bottom_field.pic_type
	ldr	ip, [r3, ip]	@ temp.1237, <variable>.CurrPic.err_level
	str	r6, [r4, #600]	@ tmp262, <variable>.MbaffFrameFlag
	str	ip, [r4, #556]	@ temp.1237, <variable>.bottom_field.err_level
	ldrb	r5, [r3, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, r6	@ <variable>.CurrPic.field_pair_flag,
	beq	.L154	@,
	ldr	r1, [r4, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	mov	r5, #3	@ tmp275,
	strb	r5, [r4, #1]	@ tmp275, <variable>.is_used
	add	ip, ip, r1	@ temp.1240, temp.1237, <variable>.top_field.err_level
	str	ip, [r4, #484]	@ temp.1240, <variable>.frame.err_level
	str	ip, [r4, #608]	@ temp.1240, <variable>.err_level
	mvn	r1, #0	@,
	ldrb	r7, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	movw	r2, #52280	@ tmp282,
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	orreq	r6, r0, #2	@ iftmp.529, iftmp.526,
	strb	r6, [r4, #3]	@ iftmp.529, <variable>.mode_skip_flag
	ldrd	r6, [r3, r2]	@ temp.1242, pH264Ctx, tmp282
	mvn	r0, #0	@ tmp283,
	cmp	r7, r1	@ temp.1242, tmp283
	cmpeq	r6, r0	@ temp.1242, tmp283
	beq	.L150	@,
	ldrd	r8, [r4, #16]	@ <variable>.fs_image.PTS, pCurrFrame,
	cmp	r9, r1	@ <variable>.fs_image.PTS, tmp283
	cmpeq	r8, r0	@ <variable>.fs_image.PTS, tmp283
	beq	.L155	@,
.L150:
	ldr	r2, [r4, #524]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	b	.L152	@
.L139:
	movw	r6, #52260	@ tmp211,
	strb	r1, [r4, #500]	@ <variable>.CurrPic.structure, <variable>.top_field.structure
	str	r4, [r4, #504]	@ pCurrFrame, <variable>.top_field.frame_store
	ldrb	lr, [r3, r6]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r6, #0	@ tmp221,
	strb	lr, [r4, #501]	@ <variable>.CurrPic.is_long_term, <variable>.top_field.is_long_term
	movw	lr, #52261	@ tmp214,
	ldrb	lr, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	strb	lr, [r4, #502]	@ <variable>.CurrPic.is_short_term, <variable>.top_field.is_short_term
	movw	lr, #52756	@ tmp217,
	ldr	lr, [r3, lr]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	str	lr, [r4, #516]	@ <variable>.CurrPic.toppoc, <variable>.top_field.poc
	ldr	lr, [r3, r5]	@ temp.1228, <variable>.CurrPic.pic_type
	movw	r5, #52257	@ tmp222,
	str	lr, [r4, #524]	@ temp.1228, <variable>.top_field.pic_type
	ldr	ip, [r3, ip]	@ temp.1229, <variable>.CurrPic.err_level
	str	r6, [r4, #600]	@ tmp221, <variable>.MbaffFrameFlag
	str	ip, [r4, #520]	@ temp.1229, <variable>.top_field.err_level
	ldrb	r5, [r3, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, r6	@ <variable>.CurrPic.field_pair_flag,
	beq	.L156	@,
	ldr	r1, [r4, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	mov	r5, #3	@ tmp235,
	strb	r5, [r4, #1]	@ tmp235, <variable>.is_used
	add	ip, ip, r1	@ D.37159, temp.1229, <variable>.bottom_field.err_level
	str	ip, [r4, #484]	@ D.37159, <variable>.frame.err_level
	str	ip, [r4, #608]	@ D.37159, <variable>.err_level
	mvn	r1, #0	@,
	ldrb	r7, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	orreq	r6, r0, #1	@ iftmp.527, iftmp.526,
	movw	r0, #52280	@ tmp242,
	strb	r6, [r4, #3]	@ iftmp.527, <variable>.mode_skip_flag
	ldrd	r6, [r3, r0]	@ D.37166, pH264Ctx, tmp242
	mvn	r0, #0	@ tmp243,
	cmp	r7, r1	@ D.37166, tmp243
	cmpeq	r6, r0	@ D.37166, tmp243
	beq	.L144	@,
	ldrd	r8, [r4, #16]	@ <variable>.fs_image.PTS, pCurrFrame,
	cmp	r9, r1	@ <variable>.fs_image.PTS, tmp243
	cmpeq	r8, r0	@ <variable>.fs_image.PTS, tmp243
	beq	.L157	@,
.L144:
	ldr	r2, [r4, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
.L152:
	cmp	r2, lr	@ <variable>.top_field.pic_type, temp.1236
	strcs	r2, [r4, #604]	@, <variable>.top_field.pic_type, <variable>.pic_type
	strcc	lr, [r4, #604]	@, temp.1236, <variable>.pic_type
	movw	r2, #52748	@ tmp288,
	ldr	lr, [r3, r2]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	mov	r0, r4	@, pCurrFrame
	str	lr, [r4, #588]	@ <variable>.CurrPic.thispoc, <variable>.poc
	bl	CombineFldsToFrm	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L154:
	strb	r1, [r4, #1]	@ <variable>.CurrPic.structure, <variable>.is_used
	add	r1, r3, #52224	@, pH264Ctx,
	str	ip, [r4, #484]	@ temp.1237, <variable>.frame.err_level
	add	r0, r4, #8	@, pCurrFrame,
	str	ip, [r4, #608]	@ temp.1237, <variable>.err_level
	add	r1, r1, #48	@,,
	ldrb	r3, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	mov	r2, #456	@,
	cmp	r3, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r3, #2	@ iftmp.528,
	movne	r3, r6	@ iftmp.528,
	strb	r3, [r4, #3]	@ iftmp.528, <variable>.mode_skip_flag
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L156:
	strb	r1, [r4, #1]	@ <variable>.CurrPic.structure, <variable>.is_used
	add	r1, r3, #52224	@, pH264Ctx,
	str	ip, [r4, #484]	@ temp.1229, <variable>.frame.err_level
	add	r0, r4, #8	@, pCurrFrame,
	str	ip, [r4, #608]	@ temp.1229, <variable>.err_level
	add	r1, r1, #48	@,,
	ldrb	ip, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	mov	r2, #456	@,
	cmp	ip, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r3, #0	@, tmp228
	moveq	r3, #1	@, tmp228
	strb	r3, [r4, #3]	@ tmp228, <variable>.mode_skip_flag
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L157:
	strd	r6, [r4, #16]	@ D.37166, pCurrFrame,
	b	.L144	@
.L155:
	strd	r6, [r4, #16]	@ temp.1242, pCurrFrame,
	ldr	r2, [r4, #524]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	b	.L152	@
	.fnend
	.size	UpdateCurrFrameInfo, .-UpdateCurrFrameInfo
	.align	2
	.global	GetShortTermPicPoint
	.type	GetShortTermPicPoint, %function
GetShortTermPicPoint:
	.fnstart
.LFB1413:
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
	movw	r3, #20673	@ tmp144,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L160	@,
	movw	r2, #20674	@ tmp146,
	ldrb	r3, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@ structure,
	moveq	r3, #1	@ structure,
.L160:
	mov	ip, #26624	@ tmp148,
	ldr	r5, [r0, ip]	@ D.37594, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.37594,
	beq	.L162	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1272, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.37594,
	add	r0, r0, #120	@ ivtmp.1272, ivtmp.1272,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L170	@,
	ldr	r2, [r0, #0]	@ D.37559, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L172	@,
	ldr	ip, [r2, #464]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #65536	@ tmp186,
	bne	.L172	@,
	ldr	ip, [r2, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	ip, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L172:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.37594, i
	add	r0, r0, #4	@ ivtmp.1272, ivtmp.1272,
	bls	.L162	@,
	cmp	r4, #0	@ tmp168,
	beq	.L167	@,
	cmp	r3, #0	@ structure,
	beq	.L190	@,
	ldr	r2, [r0, #0]	@ temp.1275, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37572, <variable>.is_reference
	tst	r4, #1	@ D.37572,
	beq	.L175	@,
	ldr	r6, [r2, #500]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #65536	@ tmp195,
	beq	.L194	@,
.L175:
	tst	r4, #2	@ D.37572,
	beq	.L176	@,
	ldr	r4, [r2, #536]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #65536	@ tmp192,
	bne	.L176	@,
	ldr	r4, [r2, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L187	@,
.L176:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1272, ivtmp.1272,
	cmp	r5, ip	@ D.37594, i
	bhi	.L167	@,
.L162:
	mov	r0, #0	@ D.37570,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L170:
	ldr	r2, [r0, #0]	@ temp.1275, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.37572, <variable>.is_reference
	tst	ip, #1	@ D.37572,
	beq	.L171	@,
	ldr	r6, [r2, #500]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #65536	@ tmp182,
	beq	.L195	@,
.L171:
	tst	ip, #2	@ D.37572,
	beq	.L172	@,
	ldr	ip, [r2, #536]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #65536	@ tmp179,
	bne	.L172	@,
	ldr	ip, [r2, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L172	@,
.L187:
	add	r0, r2, #536	@ D.37570, temp.1275,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L196:
	ldr	r2, [r0, #0]	@ D.37559, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L164	@,
	ldr	r4, [r2, #464]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #65536	@ tmp151,
	bne	.L164	@,
	ldr	r4, [r2, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L164:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1272,
	bne	.L179	@,
.L198:
	ldr	r2, [r0, #4]	@ D.37559, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L181	@,
	ldr	r0, [r2, #464]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #65536	@ tmp212,
	bne	.L181	@,
	ldr	r0, [r2, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L181:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1272, tmp170,
	cmp	r5, ip	@ D.37594, i
	bls	.L162	@,
.L167:
	cmp	r3, #0	@ structure,
	beq	.L196	@,
	ldr	r2, [r0, #0]	@ temp.1275, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37572, <variable>.is_reference
	tst	r4, #1	@ D.37572,
	beq	.L166	@,
	ldr	r6, [r2, #500]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #65536	@ tmp156,
	beq	.L197	@,
.L166:
	tst	r4, #2	@ D.37572,
	beq	.L164	@,
	ldr	r4, [r2, #536]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #65536	@ tmp161,
	bne	.L164	@,
	ldr	r4, [r2, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L187	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1272,
	beq	.L198	@,
.L179:
	ldr	r2, [r0, #4]	@ temp.1275, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.37572, <variable>.is_reference
	tst	r0, #1	@ D.37572,
	beq	.L180	@,
	ldr	r6, [r2, #500]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #65536	@ tmp208,
	beq	.L199	@,
.L180:
	tst	r0, #2	@ D.37572,
	beq	.L181	@,
	ldr	r0, [r2, #536]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #65536	@ tmp205,
	bne	.L181	@,
	ldr	r0, [r2, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L181	@,
	b	.L187	@
.L197:
	ldr	r6, [r2, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L166	@,
.L188:
	add	r0, r2, #500	@ D.37570, temp.1275,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L199:
	ldr	r6, [r2, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L180	@,
	b	.L188	@
.L190:
	ldr	r2, [r0, #0]	@ D.37559, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L176	@,
	ldr	r4, [r2, #464]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #65536	@ tmp199,
	bne	.L176	@,
	ldr	r4, [r2, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	bne	.L176	@,
.L189:
	add	r0, r2, #464	@ D.37570, D.37559,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L195:
	ldr	r6, [r2, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L171	@,
	b	.L188	@
.L194:
	ldr	r6, [r2, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L175	@,
	b	.L188	@
	.fnend
	.size	GetShortTermPicPoint, .-GetShortTermPicPoint
	.align	2
	.global	GetLongTermPicPoint
	.type	GetLongTermPicPoint, %function
GetLongTermPicPoint:
	.fnstart
.LFB1414:
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
	movw	r3, #20673	@ tmp144,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L202	@,
	movw	r2, #20674	@ tmp146,
	ldrb	r3, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@ structure,
	moveq	r3, #1	@ structure,
.L202:
	movw	ip, #26628	@ tmp148,
	ldr	r5, [r0, ip]	@ D.37652, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.37652,
	beq	.L204	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1303, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.37652,
	add	r0, r0, #184	@ ivtmp.1303, ivtmp.1303,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L212	@,
	ldr	r2, [r0, #0]	@ D.37617, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L214	@,
	ldr	ip, [r2, #464]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #256	@ tmp186,
	bne	.L214	@,
	ldr	ip, [r2, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L214:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.37652, i
	add	r0, r0, #4	@ ivtmp.1303, ivtmp.1303,
	bls	.L204	@,
	cmp	r4, #0	@ tmp168,
	beq	.L209	@,
	cmp	r3, #0	@ structure,
	beq	.L232	@,
	ldr	r2, [r0, #0]	@ temp.1306, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37630, <variable>.is_reference
	tst	r4, #1	@ D.37630,
	beq	.L217	@,
	ldr	r6, [r2, #500]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #256	@ tmp195,
	beq	.L236	@,
.L217:
	tst	r4, #2	@ D.37630,
	beq	.L218	@,
	ldr	r4, [r2, #536]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #256	@ tmp192,
	bne	.L218	@,
	ldr	r4, [r2, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L229	@,
.L218:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1303, ivtmp.1303,
	cmp	r5, ip	@ D.37652, i
	bhi	.L209	@,
.L204:
	mov	r0, #0	@ D.37628,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L212:
	ldr	r2, [r0, #0]	@ temp.1306, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.37630, <variable>.is_reference
	tst	ip, #1	@ D.37630,
	beq	.L213	@,
	ldr	r6, [r2, #500]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #256	@ tmp182,
	beq	.L237	@,
.L213:
	tst	ip, #2	@ D.37630,
	beq	.L214	@,
	ldr	ip, [r2, #536]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #256	@ tmp179,
	bne	.L214	@,
	ldr	ip, [r2, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	ip, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L214	@,
.L229:
	add	r0, r2, #536	@ D.37628, temp.1306,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L238:
	ldr	r2, [r0, #0]	@ D.37617, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L206	@,
	ldr	r4, [r2, #464]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #256	@ tmp151,
	bne	.L206	@,
	ldr	r4, [r2, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L206:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1303,
	bne	.L221	@,
.L240:
	ldr	r2, [r0, #4]	@ D.37617, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L223	@,
	ldr	r0, [r2, #464]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #256	@ tmp212,
	bne	.L223	@,
	ldr	r0, [r2, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r0, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L223:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1303, tmp170,
	cmp	r5, ip	@ D.37652, i
	bls	.L204	@,
.L209:
	cmp	r3, #0	@ structure,
	beq	.L238	@,
	ldr	r2, [r0, #0]	@ temp.1306, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37630, <variable>.is_reference
	tst	r4, #1	@ D.37630,
	beq	.L208	@,
	ldr	r6, [r2, #500]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #256	@ tmp156,
	beq	.L239	@,
.L208:
	tst	r4, #2	@ D.37630,
	beq	.L206	@,
	ldr	r4, [r2, #536]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #256	@ tmp161,
	bne	.L206	@,
	ldr	r4, [r2, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L229	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1303,
	beq	.L240	@,
.L221:
	ldr	r2, [r0, #4]	@ temp.1306, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.37630, <variable>.is_reference
	tst	r0, #1	@ D.37630,
	beq	.L222	@,
	ldr	r6, [r2, #500]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #256	@ tmp208,
	beq	.L241	@,
.L222:
	tst	r0, #2	@ D.37630,
	beq	.L223	@,
	ldr	r0, [r2, #536]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #256	@ tmp205,
	bne	.L223	@,
	ldr	r0, [r2, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r0, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L223	@,
	b	.L229	@
.L239:
	ldr	r6, [r2, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L208	@,
.L230:
	add	r0, r2, #500	@ D.37628, temp.1306,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L241:
	ldr	r6, [r2, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L222	@,
	b	.L230	@
.L232:
	ldr	r2, [r0, #0]	@ D.37617, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L218	@,
	ldr	r4, [r2, #464]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #256	@ tmp199,
	bne	.L218	@,
	ldr	r4, [r2, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	bne	.L218	@,
.L231:
	add	r0, r2, #464	@ D.37628, D.37617,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L237:
	ldr	r6, [r2, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L213	@,
	b	.L230	@
.L236:
	ldr	r6, [r2, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L217	@,
	b	.L230	@
	.fnend
	.size	GetLongTermPicPoint, .-GetLongTermPicPoint
	.align	2
	.global	ReorderSTList
	.type	ReorderSTList, %function
ReorderSTList:
	.fnstart
.LFB1415:
	@ args = 4, pretend = 0, frame = 0
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
	ldr	r4, [fp, #4]	@ refIdxLX, refIdxLX
	mov	r5, r1	@ RefPicListX, RefPicListX
	mov	r1, r3	@, picNumLX
	mov	r6, r3	@ picNumLX, picNumLX
	mov	r7, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	bl	GetShortTermPicPoint	@
	ldr	r3, [r4, #0]	@ D.37678,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.37678
	ble	.L243	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1353, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1351, RefPicListX, ivtmp.1348,
.L244:
	ldr	r3, [r2], #-4	@ tmp155,
	mov	ip, r7	@ cIdx.1355, ivtmp.1348
	sub	r7, r7, #1	@ ivtmp.1348, ivtmp.1348,
	str	r3, [r1], #-4	@ tmp155,
	ldr	r3, [r4, #0]	@ D.37678,* refIdxLX
	cmp	r3, ip	@ D.37678, cIdx.1355
	blt	.L244	@,
.L243:
	add	r1, r3, #1	@ cIdx.1354, D.37678,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1354
	str	r1, [r4, #0]	@ cIdx.1354,* refIdxLX
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1344, RefPicListX, cIdx.1354,
	rsb	r0, r1, r8	@ tmp159, cIdx.1354, cIdx
	and	ip, r0, #1	@ tmp160, tmp159,
	mov	r3, r1	@ nIdx, cIdx.1354
	ldr	r0, [r2, #0]	@ D.37683,* ivtmp.1344
	cmp	r0, #0	@ D.37683,
	beq	.L252	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L265	@,
.L253:
	add	r3, r1, #1	@ nIdx, cIdx.1354,
	str	r0, [r5, r1, asl #2]	@ D.37683,* RefPicListX
.L252:
	add	r1, r1, #1	@ cIdx.1354, cIdx.1354,
	add	r2, r2, #4	@ ivtmp.1344, ivtmp.1344,
	cmp	r8, r1	@ cIdx, cIdx.1354
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L268:
	cmp	ip, #0	@ tmp160,
	beq	.L248	@,
	ldr	r0, [r2, #0]	@ D.37683,* ivtmp.1344
	cmp	r0, #0	@ D.37683,
	beq	.L255	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	beq	.L266	@,
.L256:
	str	r0, [r5, r3, asl #2]	@ D.37683,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L255:
	add	r1, r1, #1	@ cIdx.1354, cIdx.1354,
	add	r2, r2, #4	@ ivtmp.1344, ivtmp.1344,
	cmp	r8, r1	@ cIdx, cIdx.1354
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L248:
	ldr	r0, [r2, #0]	@ D.37683,* ivtmp.1344
	add	r1, r1, #1	@ tmp161, cIdx.1354,
	add	ip, r2, #4	@ tmp162, ivtmp.1344,
	cmp	r0, #0	@ D.37683,
	beq	.L246	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L247	@,
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	beq	.L246	@,
.L247:
	str	r0, [r5, r3, asl #2]	@ D.37683,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L246:
	ldr	r2, [r2, #4]	@ D.37683,
	cmp	r2, #0	@ D.37683,
	beq	.L259	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	bne	.L260	@,
	ldr	lr, [r2, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	lr, r6	@ <variable>.pic_num, picNumLX
	beq	.L259	@,
.L260:
	str	r2, [r5, r3, asl #2]	@ D.37683,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L259:
	add	r1, r1, #1	@ cIdx.1354, tmp161,
	add	r2, ip, #4	@ ivtmp.1344, tmp162,
	cmp	r8, r1	@ cIdx, cIdx.1354
	bge	.L248	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L265:
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	bne	.L253	@,
	add	r1, r1, #1	@ cIdx.1354, cIdx.1354,
	add	r2, r2, #4	@ ivtmp.1344, ivtmp.1344,
	cmp	r8, r1	@ cIdx, cIdx.1354
	bge	.L268	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L266:
	ldr	ip, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	ip, r6	@ <variable>.pic_num, picNumLX
	bne	.L256	@,
	b	.L255	@
	.fnend
	.size	ReorderSTList, .-ReorderSTList
	.align	2
	.global	ReorderLTList
	.type	ReorderLTList, %function
ReorderLTList:
	.fnstart
.LFB1416:
	@ args = 4, pretend = 0, frame = 0
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
	ldr	r4, [fp, #4]	@ refIdxLX, refIdxLX
	mov	r5, r1	@ RefPicListX, RefPicListX
	mov	r1, r3	@, LongTermPicNum
	mov	r6, r3	@ LongTermPicNum, LongTermPicNum
	mov	r7, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	bl	GetLongTermPicPoint	@
	ldr	r3, [r4, #0]	@ D.37720,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.37720
	ble	.L270	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1401, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1399, RefPicListX, ivtmp.1396,
.L271:
	ldr	r3, [r2], #-4	@ tmp151,
	mov	ip, r7	@ cIdx.1403, ivtmp.1396
	sub	r7, r7, #1	@ ivtmp.1396, ivtmp.1396,
	str	r3, [r1], #-4	@ tmp151,
	ldr	r3, [r4, #0]	@ D.37720,* refIdxLX
	cmp	r3, ip	@ D.37720, cIdx.1403
	blt	.L271	@,
.L270:
	add	r1, r3, #1	@ cIdx.1402, D.37720,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1402
	str	r1, [r4, #0]	@ cIdx.1402,* refIdxLX
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1392, RefPicListX, cIdx.1402,
	rsb	r0, r1, r8	@ tmp155, cIdx.1402, cIdx
	and	ip, r0, #1	@ tmp156, tmp155,
	mov	r3, r1	@ nIdx, cIdx.1402
	ldr	r0, [r2, #0]	@ D.37725,* ivtmp.1392
	cmp	r0, #0	@ D.37725,
	beq	.L279	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L292	@,
.L280:
	add	r3, r1, #1	@ nIdx, cIdx.1402,
	str	r0, [r5, r1, asl #2]	@ D.37725,* RefPicListX
.L279:
	add	r1, r1, #1	@ cIdx.1402, cIdx.1402,
	add	r2, r2, #4	@ ivtmp.1392, ivtmp.1392,
	cmp	r8, r1	@ cIdx, cIdx.1402
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L295:
	cmp	ip, #0	@ tmp156,
	beq	.L275	@,
	ldr	r0, [r2, #0]	@ D.37725,* ivtmp.1392
	cmp	r0, #0	@ D.37725,
	beq	.L282	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	bne	.L293	@,
.L283:
	str	r0, [r5, r3, asl #2]	@ D.37725,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L282:
	add	r1, r1, #1	@ cIdx.1402, cIdx.1402,
	add	r2, r2, #4	@ ivtmp.1392, ivtmp.1392,
	cmp	r8, r1	@ cIdx, cIdx.1402
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L275:
	ldr	r0, [r2, #0]	@ D.37725,* ivtmp.1392
	add	r1, r1, #1	@ tmp157, cIdx.1402,
	add	ip, r2, #4	@ tmp158, ivtmp.1392,
	cmp	r0, #0	@ D.37725,
	beq	.L273	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L274	@,
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L273	@,
.L274:
	str	r0, [r5, r3, asl #2]	@ D.37725,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L273:
	ldr	r2, [r2, #4]	@ D.37725,
	cmp	r2, #0	@ D.37725,
	beq	.L286	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	beq	.L287	@,
	ldr	lr, [r2, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	lr, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L286	@,
.L287:
	str	r2, [r5, r3, asl #2]	@ D.37725,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L286:
	add	r1, r1, #1	@ cIdx.1402, tmp157,
	add	r2, ip, #4	@ ivtmp.1392, tmp158,
	cmp	r8, r1	@ cIdx, cIdx.1402
	bge	.L275	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L292:
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L280	@,
	add	r1, r1, #1	@ cIdx.1402, cIdx.1402,
	add	r2, r2, #4	@ ivtmp.1392, ivtmp.1392,
	cmp	r8, r1	@ cIdx, cIdx.1402
	bge	.L295	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L293:
	ldr	ip, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	ip, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L283	@,
	b	.L282	@
	.fnend
	.size	ReorderLTList, .-ReorderLTList
	.align	2
	.global	ReorderRefPiclist
	.type	ReorderRefPiclist, %function
ReorderRefPiclist:
	.fnstart
.LFB1417:
	@ args = 12, pretend = 0, frame = 24
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
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20673	@ tmp152,
	mov	r7, r3	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	mov	r3, #0	@ tmp151,
	mov	r8, r1	@ list, list
	str	r3, [fp, #-48]	@ tmp151, refIdxLX
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r9, [fp, #4]	@ reordering_of_pic_nums_idc, reordering_of_pic_nums_idc
	beq	.L297	@,
	movw	r0, #13584	@ tmp157,
	movw	r3, #20684	@ tmp155,
	ldr	r1, [r5, r0]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #2208	@ tmp159,
	ldr	r3, [r5, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r0, #20692	@ tmp171,
	movw	r2, #13580	@ tmp163,
	ldr	r2, [r5, r2]	@ <variable>.SPS, <variable>.SPS
	mla	r3, ip, r3, r1	@ tmp160, tmp159, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r1, [r5, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	mov	ip, r1, asl #1	@ tmp172, <variable>.CurrSlice.frame_num,
	movw	r1, #3992	@ tmp165,
	add	r0, ip, #1	@, tmp172,
	str	r0, [fp, #-60]	@, %sfp
	ldr	ip, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r0, r1, ip, r2	@ tmp166, tmp165, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	ip, #2	@ tmp169,
	ldr	r2, [r0, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r3, r2, #4	@ tmp167, <variable>.log2_max_frame_num_minus4,
	mov	r1, ip, asl r3	@, tmp169,
	str	r1, [fp, #-56]	@, %sfp
.L307:
	adds	ip, r7, #2	@, num_ref_idx_lX_active_minus1,
	str	ip, [fp, #-64]	@, %sfp
	beq	.L308	@,
	ldr	r3, [r9, #0]	@ D.37787,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.37787,
	beq	.L308	@,
	tst	r7, #1	@ num_ref_idx_lX_active_minus1,
	mov	r2, #0	@ D.37785,
	ldr	r6, [fp, #-60]	@ picNumLXPred, %sfp
	mov	r4, r2	@ i, D.37785
	sub	sl, fp, #48	@ tmp198,,
	bne	.L299	@,
	cmp	r3, #1	@ D.37787,
	bls	.L322	@,
	ldr	r4, [fp, #12]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	ldr	r3, [r4, #0]	@ tmp206,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L323:
	mov	r2, #4	@ D.37785,
	mov	r4, #1	@ i,
	ldr	r3, [r9, r2]	@ D.37787,* D.37785
	cmp	r3, #3	@ D.37787,
	bne	.L299	@,
.L308:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L300:
	ldr	r1, [fp, #12]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r1, r2]	@ tmp179,* D.37785
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L305:
	ldr	lr, [fp, #-64]	@, %sfp
	add	r4, r4, #1	@ tmp202, i,
	cmp	lr, r4	@, tmp202
	bls	.L308	@,
	ldr	r3, [r9, r4, asl #2]	@ D.37787,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.37787,
	beq	.L308	@,
	cmp	r3, #1	@ D.37787,
	bls	.L327	@,
	ldr	r2, [fp, #12]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	ldr	r3, [r2, r4, asl #2]	@ tmp213,
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L328:
	add	r4, r4, #1	@ i, tmp202,
	ldr	r3, [r9, r4, asl #2]	@ D.37787,* reordering_of_pic_nums_idc
	mov	r2, r4, asl #2	@ D.37785, i,
	cmp	r3, #3	@ D.37787,
	beq	.L308	@,
.L299:
	cmp	r3, #1	@ D.37787,
	bhi	.L300	@,
	cmp	r3, #0	@ D.37787,
	bne	.L301	@,
	ldr	r1, [fp, #8]	@, abs_diff_pic_num_minus1
	ldr	r0, [r1, r2]	@ tmp175,* D.37785
	mvn	lr, r0	@ tmp174, tmp175
	adds	r6, lr, r6	@ picNumLXNoWrap, tmp174, picNumLXPred
	bmi	.L334	@,
.L302:
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, r5	@, pH264Ctx
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	cmp	r3, r6	@, picNumLXNoWrap
	ldrlt	r1, [fp, #-56]	@, %sfp
	movge	r3, r6	@ picNumLX, picNumLXNoWrap
	rsblt	r3, r1, r6	@ picNumLX,, picNumLXNoWrap
	mov	r1, r8	@, list
	bl	ReorderSTList	@
	b	.L305	@
.L327:
	cmp	r3, #0	@ D.37787,
	bne	.L316	@,
	ldr	lr, [fp, #8]	@, abs_diff_pic_num_minus1
	ldr	r3, [lr, r4, asl #2]	@ tmp218,
	mvn	r2, r3	@ tmp219, tmp218
	adds	r6, r2, r6	@ picNumLXNoWrap, tmp219, picNumLXPred
	bmi	.L335	@,
.L318:
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r3, r6	@, picNumLXNoWrap
	bge	.L336	@,
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r3, lr, r6	@ picNumLX,, picNumLXNoWrap
.L331:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderSTList	@
	b	.L328	@
.L301:
	ldr	r1, [fp, #8]	@, abs_diff_pic_num_minus1
	add	r6, r6, #1	@ tmp176, picNumLXPred,
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	ip, [r1, r2]	@ tmp177,* D.37785
	add	r6, r6, ip	@ picNumLXNoWrap, tmp176, tmp177
	cmp	r3, r6	@, picNumLXNoWrap
	rsble	r6, r3, r6	@ picNumLXNoWrap,, picNumLXNoWrap
	b	.L302	@
.L336:
	mov	r3, r6	@ picNumLX, picNumLXNoWrap
	b	.L331	@
.L316:
	ldr	ip, [fp, #8]	@, abs_diff_pic_num_minus1
	add	r6, r6, #1	@ tmp216, picNumLXPred,
	ldr	r0, [fp, #-56]	@, %sfp
	ldr	r1, [ip, r4, asl #2]	@ tmp217,
	add	r6, r6, r1	@ picNumLXNoWrap, tmp216, tmp217
	cmp	r0, r6	@, picNumLXNoWrap
	rsble	r6, r0, r6	@ picNumLXNoWrap,, picNumLXNoWrap
	b	.L318	@
.L297:
	movw	ip, #13584	@ tmp184,
	movw	r3, #20684	@ tmp182,
	ldr	r3, [r5, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r0, #2208	@ tmp186,
	ldr	r1, [r5, ip]	@ <variable>.PPS, <variable>.PPS
	movw	r2, #13580	@ tmp190,
	ldr	r2, [r5, r2]	@ <variable>.SPS, <variable>.SPS
	mla	ip, r0, r3, r1	@ tmp187, tmp186, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	r1, #20692	@ tmp197,
	ldr	r0, [r5, r1]	@, <variable>.CurrSlice.frame_num
	movw	r1, #3992	@ tmp192,
	str	r0, [fp, #-60]	@, %sfp
	ldr	r3, [ip, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r0, r1, r3, r2	@ tmp193, tmp192, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, #1	@ tmp196,
	ldr	ip, [r0, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r3, ip, #4	@ tmp194, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r3	@, tmp196,
	str	r0, [fp, #-56]	@, %sfp
	b	.L307	@
.L322:
	cmp	r3, #0	@ D.37787,
	bne	.L310	@,
	ldr	r1, [fp, #8]	@, abs_diff_pic_num_minus1
	ldr	lr, [fp, #-60]	@, %sfp
	ldr	r0, [r1, #0]	@ tmp211,
	mvn	r4, r0	@ tmp212, tmp211
	adds	r6, r4, lr	@ picNumLXNoWrap, tmp212,
	bmi	.L337	@,
.L312:
	ldr	lr, [fp, #-60]	@, %sfp
	cmp	lr, r6	@, picNumLXNoWrap
	bge	.L338	@,
.L311:
	ldr	r0, [fp, #-56]	@, %sfp
	rsb	r3, r0, r6	@ picNumLX,, picNumLXNoWrap
.L326:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderSTList	@
	b	.L323	@
.L334:
	ldr	r2, [fp, #-56]	@, %sfp
	add	r6, r6, r2	@ picNumLXNoWrap, picNumLXNoWrap,
	b	.L302	@
.L335:
	ldr	r0, [fp, #-56]	@, %sfp
	add	r6, r6, r0	@ picNumLXNoWrap, picNumLXNoWrap,
	b	.L318	@
.L310:
	ldr	r3, [fp, #8]	@, abs_diff_pic_num_minus1
	ldr	r2, [fp, #-60]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	ip, [r3, #0]	@ tmp210,
	add	r6, r2, #1	@ tmp209,,
	ldr	lr, [fp, #-60]	@, %sfp
	add	r6, r6, ip	@ picNumLXNoWrap, tmp209, tmp210
	cmp	r1, r6	@, picNumLXNoWrap
	rsble	r6, r1, r6	@ picNumLXNoWrap,, picNumLXNoWrap
	cmp	lr, r6	@, picNumLXNoWrap
	blt	.L311	@,
.L338:
	mov	r3, r6	@ picNumLX, picNumLXNoWrap
	b	.L326	@
.L337:
	ldr	ip, [fp, #-56]	@, %sfp
	add	r6, r6, ip	@ picNumLXNoWrap, picNumLXNoWrap,
	b	.L312	@
	.fnend
	.size	ReorderRefPiclist, .-ReorderRefPiclist
	.align	2
	.global	ReorderListX
	.type	ReorderListX, %function
ReorderListX:
	.fnstart
.LFB1418:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #20672	@ tmp134,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L343	@,
	movw	ip, #19880	@ tmp136,
	ldrb	r2, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l0, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l0,
	bne	.L344	@,
.L341:
	movw	r3, #20672	@ tmp154,
	movw	r0, #20728	@ tmp151,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #20716	@ tmp150,
	ldr	r2, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	add	r0, r2, #1	@ tmp153, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	str	r0, [r4, ip]	@ tmp153, <variable>.CurrSlice.listXsize
	bne	.L343	@,
	movw	r2, #19881	@ tmp156,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l1, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	ip, #0	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l1,
	bne	.L345	@,
.L342:
	movw	r1, #20732	@ tmp172,
	movw	r3, #20720	@ tmp171,
	ldr	ip, [r4, r1]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r2, ip, #1	@ tmp174, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	str	r2, [r4, r3]	@ tmp174, <variable>.CurrSlice.listXsize
.L343:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L344:
	add	r1, r0, #26880	@, pH264Ctx,
	add	r2, r0, #20480	@, pH264Ctx,
	movw	r3, #20728	@ tmp142,
	add	r5, r0, #19712	@ tmp144, pH264Ctx,
	ldr	r3, [r0, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	lr, r0, #19968	@ tmp146, pH264Ctx,
	add	ip, r0, #20224	@ tmp148, pH264Ctx,
	add	r1, r1, #148	@,,
	add	r2, r2, #236	@,,
	add	r5, r5, #172	@ tmp144, tmp144,
	add	lr, lr, #180	@ tmp146, tmp146,
	stmia	sp, {r5, lr}	@ phole stm
	add	lr, ip, #188	@ tmp148, tmp148,
	str	lr, [sp, #8]	@ tmp148,
	bl	ReorderRefPiclist	@
	b	.L341	@
.L345:
	add	r5, r4, #20480	@ tmp162, pH264Ctx,
	movw	r0, #20732	@ tmp163,
	add	r1, r4, #27136	@, pH264Ctx,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r2, r5, #240	@, tmp162,
	add	lr, r4, #19968	@ tmp165, pH264Ctx,
	add	ip, r4, #20224	@ tmp167, pH264Ctx,
	add	r1, r1, #24	@,,
	mov	r0, r4	@, pH264Ctx
	add	lr, lr, #48	@ tmp165, tmp165,
	add	r5, r5, #60	@ tmp169, tmp162,
	str	lr, [sp, #0]	@ tmp165,
	str	r5, [sp, #8]	@ tmp169,
	add	lr, ip, #56	@ tmp167, tmp167,
	str	lr, [sp, #4]	@ tmp167,
	bl	ReorderRefPiclist	@
	b	.L342	@
	.fnend
	.size	ReorderListX, .-ReorderListX
	.align	2
	.global	IsSTRefFlg
	.type	IsSTRefFlg, %function
IsSTRefFlg:
	.fnstart
.LFB1419:
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
	ldr	r2, [r0, #0]	@ tmp138,* s
	bic	r1, r2, #-16777216	@ tmp136, tmp138,
	bic	r0, r1, #255	@ tmp136, tmp136,
	cmp	r0, #65536	@ tmp136,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsSTRefFlg, .-IsSTRefFlg
	.align	2
	.global	IsLTRefFlg
	.type	IsLTRefFlg, %function
IsLTRefFlg:
	.fnstart
.LFB1420:
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
	ldr	r2, [r0, #0]	@ tmp138,* s
	bic	r1, r2, #-16777216	@ tmp136, tmp138,
	bic	r0, r1, #255	@ tmp136, tmp136,
	cmp	r0, #256	@ tmp136,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsLTRefFlg, .-IsLTRefFlg
	.align	2
	.global	compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc, %function
compare_pic_by_pic_num_desc:
	.fnstart
.LFB1421:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #12]	@ D.37863, <variable>.pic_num
	ldr	r3, [r1, #12]	@ D.37866, <variable>.pic_num
	cmp	r2, r3	@ D.37863, D.37866
	movlt	r0, #1	@ D.37869,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.37869,
	mvngt	r0, #0	@ D.37869,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.align	2
	.global	compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc, %function
compare_pic_by_lt_pic_num_asc:
	.fnstart
.LFB1422:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #8]	@ D.37878, <variable>.long_term_pic_num
	ldr	r3, [r1, #8]	@ D.37881, <variable>.long_term_pic_num
	cmp	r2, r3	@ D.37878, D.37881
	mvnlt	r0, #0	@ D.37884,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.37884
	movgt	r0, #1	@, D.37884
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.align	2
	.global	compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc, %function
compare_fs_by_frame_num_desc:
	.fnstart
.LFB1423:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #580]	@ D.37893, <variable>.frame_num_wrap
	ldr	r3, [r1, #580]	@ D.37896, <variable>.frame_num_wrap
	cmp	r2, r3	@ D.37893, D.37896
	movlt	r0, #1	@ D.37899,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.37899,
	mvngt	r0, #0	@ D.37899,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.align	2
	.global	compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc, %function
compare_fs_by_lt_pic_idx_asc:
	.fnstart
.LFB1424:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #584]	@ D.37908, <variable>.long_term_frame_idx
	ldr	r3, [r1, #584]	@ D.37911, <variable>.long_term_frame_idx
	cmp	r2, r3	@ D.37908, D.37911
	mvncc	r0, #0	@ D.37914,
	ldmccfd	sp, {fp, sp, pc}	@
	movls	r0, #0	@, D.37914
	movhi	r0, #1	@, D.37914
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.align	2
	.global	compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc, %function
compare_pic_by_poc_asc:
	.fnstart
.LFB1425:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.37923, <variable>.poc
	ldr	r3, [r1, #16]	@ D.37926, <variable>.poc
	cmp	r2, r3	@ D.37923, D.37926
	mvnlt	r0, #0	@ D.37929,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.37929
	movgt	r0, #1	@, D.37929
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.align	2
	.global	compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc, %function
compare_pic_by_poc_desc:
	.fnstart
.LFB1426:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.37938, <variable>.poc
	ldr	r3, [r1, #16]	@ D.37941, <variable>.poc
	cmp	r2, r3	@ D.37938, D.37941
	movlt	r0, #1	@ D.37944,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.37944,
	mvngt	r0, #0	@ D.37944,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.align	2
	.global	compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc, %function
compare_fs_by_poc_asc:
	.fnstart
.LFB1427:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #588]	@ D.37953, <variable>.poc
	ldr	r3, [r1, #588]	@ D.37956, <variable>.poc
	cmp	r2, r3	@ D.37953, D.37956
	mvnlt	r0, #0	@ D.37959,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.37959
	movgt	r0, #1	@, D.37959
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.align	2
	.global	compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc, %function
compare_fs_by_poc_desc:
	.fnstart
.LFB1428:
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
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #588]	@ D.37968, <variable>.poc
	ldr	r3, [r1, #588]	@ D.37971, <variable>.poc
	cmp	r2, r3	@ D.37968, D.37971
	movlt	r0, #1	@ D.37974,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.37974,
	mvngt	r0, #0	@ D.37974,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.align	2
	.global	GenPiclistfromFrmlist
	.type	GenPiclistfromFrmlist, %function
GenPiclistfromFrmlist:
	.fnstart
.LFB1429:
	@ args = 8, pretend = 0, frame = 16
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
	cmp	r2, #31	@ list_idx,
	movcc	r4, r2	@ list_idx.1837, list_idx
	movcs	r4, #31	@ list_idx.1837,
	ldr	r2, [fp, #8]	@ long_term, long_term
	movw	ip, #:lower16:IsSTRefFlg	@ tmp218,
	movt	ip, #:upper16:IsSTRefFlg	@ tmp218,
	movw	r5, #:lower16:IsLTRefFlg	@ tmp217,
	cmp	r2, #0	@ long_term,
	movt	r5, #:upper16:IsLTRefFlg	@ tmp217,
	mov	r6, r1	@ fs_list, fs_list
	str	r3, [fp, #-56]	@ list, %sfp
	moveq	r5, ip	@ is_ref, tmp218
	cmp	r0, #1	@ currStrcture,
	beq	.L468	@,
	cmp	r0, #2	@ currStrcture,
	bne	.L397	@,
	mov	r8, #0	@ bot_idx.1815,
	mov	r6, r5	@ is_ref, is_ref
	mov	sl, r8	@ top_idx, bot_idx.1815
	str	r1, [fp, #-48]	@ fs_list, %sfp
.L447:
	cmp	sl, r4	@ top_idx, list_idx.1837
	movcs	r2, #0	@,
	movcc	r2, #1	@,
	str	r2, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r8, r4	@ bot_idx.1815, list_idx.1837
	movcs	r3, #0	@, temp.1809
	movcc	r3, #1	@, temp.1809
	orrs	r1, r3, r1	@, temp.1809,
	beq	.L397	@,
	cmp	r3, #0	@ temp.1809,
	beq	.L402	@,
	ldr	ip, [fp, #-48]	@, %sfp
	mvn	r7, r8	@ tmp235, bot_idx.1815
	add	r5, r7, r4	@ tmp234, tmp235, list_idx.1837
	and	r5, r5, #1	@ tmp236, tmp234,
	add	r7, ip, r8, asl #2	@, ivtmp.1796,, bot_idx.1815,
	ldr	r0, [ip, r8, asl #2]	@ temp.1811,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L469	@,
.L431:
	add	r8, r8, #1	@ bot_idx.1815, bot_idx.1815,
	add	r7, r7, #4	@ ivtmp.1796, ivtmp.1796,
	cmp	r8, r4	@ bot_idx.1815, list_idx.1837
	bcs	.L402	@,
	cmp	r5, #0	@ tmp236,
	beq	.L401	@,
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1796
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L470	@,
.L433:
	add	r8, r8, #1	@ bot_idx.1815, bot_idx.1815,
	add	r7, r7, #4	@ ivtmp.1796, ivtmp.1796,
	cmp	r8, r4	@ bot_idx.1815, list_idx.1837
	bcc	.L401	@,
	b	.L402	@
.L399:
	add	r7, r7, #4	@ ivtmp.1796, ivtmp.1796,
	add	r8, r8, #1	@ bot_idx.1815, bot_idx.1815,
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1796
	mov	r9, r8	@ tmp237, bot_idx.1815
	mov	r5, r7	@ tmp238, ivtmp.1796
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L471	@,
.L436:
	add	r8, r9, #1	@ bot_idx.1815, tmp237,
	add	r7, r5, #4	@ ivtmp.1796, tmp238,
	cmp	r8, r4	@ bot_idx.1815, list_idx.1837
	bcs	.L402	@,
.L401:
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1796
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	beq	.L399	@,
	add	r0, r0, #536	@, temp.1811,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L399	@,
.L455:
	ldr	r0, [fp, #4]	@, list_size
	add	r8, r8, #1	@ bot_idx.1815, bot_idx.1815,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	lr, [r7, #0]	@ tmp195,* ivtmp.1796
	ldr	r3, [r0, #0]	@ tmp194,
	add	r2, lr, #536	@ tmp196, tmp195,
	str	r2, [ip, r3, asl #2]	@ tmp196,
	ldr	lr, [fp, #4]	@, list_size
	ldr	r1, [lr, #0]	@ tmp197,
	add	r0, r1, #1	@ tmp198, tmp197,
	str	r0, [lr, #0]	@ tmp198,
.L402:
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r1, #0	@,
	beq	.L447	@,
	ldr	r3, [fp, #-48]	@, %sfp
	mvn	r5, sl	@ tmp230, top_idx
	add	r7, r5, r4	@ tmp229, tmp230, list_idx.1837
	and	r7, r7, #1	@ tmp231, tmp229,
	add	r5, r3, sl, asl #2	@, ivtmp.1791,, top_idx,
	ldr	r0, [r3, sl, asl #2]	@ temp.1825,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L472	@,
.L424:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r5, r5, #4	@ ivtmp.1791, ivtmp.1791,
	cmp	sl, r4	@ top_idx, list_idx.1837
	bcs	.L447	@,
	cmp	r7, #0	@ tmp231,
	beq	.L404	@,
	ldr	r0, [r5, #0]	@ temp.1825,* ivtmp.1791
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	bne	.L473	@,
.L426:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r5, r5, #4	@ ivtmp.1791, ivtmp.1791,
	cmp	sl, r4	@ top_idx, list_idx.1837
	bcc	.L404	@,
	b	.L447	@
.L403:
	add	r5, r5, #4	@ ivtmp.1791, ivtmp.1791,
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r0, [r5, #0]	@ temp.1825,* ivtmp.1791
	mov	r9, sl	@ tmp232, top_idx
	mov	r7, r5	@ tmp233, ivtmp.1791
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L474	@,
.L429:
	add	sl, r9, #1	@ top_idx, tmp232,
	add	r5, r7, #4	@ ivtmp.1791, tmp233,
	cmp	sl, r4	@ top_idx, list_idx.1837
	bcs	.L447	@,
.L404:
	ldr	r0, [r5, #0]	@ temp.1825,* ivtmp.1791
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	beq	.L403	@,
	add	r0, r0, #500	@, temp.1825,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L403	@,
.L454:
	ldr	r0, [fp, #4]	@, list_size
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	lr, [r5, #0]	@ tmp204,* ivtmp.1791
	ldr	r3, [r0, #0]	@ tmp203,
	add	r2, lr, #500	@ tmp205, tmp204,
	str	r2, [r1, r3, asl #2]	@ tmp205,
	ldr	lr, [fp, #4]	@, list_size
	ldr	ip, [lr, #0]	@ tmp206,
	add	r0, ip, #1	@ tmp207, tmp206,
	str	r0, [lr, #0]	@ tmp207,
	b	.L447	@
.L397:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L474:
	add	r0, r0, #500	@, temp.1825,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L429	@,
	b	.L454	@
.L471:
	add	r0, r0, #536	@, temp.1811,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L436	@,
	b	.L455	@
.L469:
	add	r0, r0, #536	@, temp.1811,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L431	@,
	b	.L455	@
.L472:
	add	r0, r0, #500	@, temp.1825,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L424	@,
	b	.L454	@
.L473:
	add	r0, r0, #500	@, temp.1825,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L426	@,
	b	.L454	@
.L470:
	add	r0, r0, #536	@, temp.1811,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L433	@,
	b	.L455	@
.L468:
	mov	r8, #0	@ bot_idx,
	mov	r6, r5	@ is_ref, is_ref
	mov	sl, r8	@ top_idx.1820, bot_idx
	str	r1, [fp, #-48]	@ fs_list, %sfp
.L442:
	cmp	r8, r4	@ bot_idx, list_idx.1837
	movcs	r1, #0	@,
	movcc	r1, #1	@,
	cmp	sl, r4	@ top_idx.1820, list_idx.1837
	movcs	r3, #0	@, D.38043
	movcc	r3, #1	@, D.38043
	str	r1, [fp, #-52]	@, %sfp
	orrs	r1, r1, r3	@,, D.38043
	beq	.L397	@,
	cmp	r3, #0	@ D.38043,
	beq	.L394	@,
	ldr	r3, [fp, #-48]	@, %sfp
	mvn	r7, sl	@ tmp225, top_idx.1820
	add	r5, r7, r4	@ tmp224, tmp225, list_idx.1837
	and	r5, r5, #1	@ tmp226, tmp224,
	add	r7, r3, sl, asl #2	@, ivtmp.1786,, top_idx.1820,
	ldr	r0, [r3, sl, asl #2]	@ D.38016,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L475	@,
.L417:
	add	sl, sl, #1	@ top_idx.1820, top_idx.1820,
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	cmp	sl, r4	@ top_idx.1820, list_idx.1837
	bcs	.L394	@,
	cmp	r5, #0	@ tmp226,
	beq	.L393	@,
	ldr	r0, [r7, #0]	@ D.38016,* ivtmp.1786
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L476	@,
.L419:
	add	sl, sl, #1	@ top_idx.1820, top_idx.1820,
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	cmp	sl, r4	@ top_idx.1820, list_idx.1837
	bcc	.L393	@,
	b	.L394	@
.L391:
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	add	sl, sl, #1	@ top_idx.1820, top_idx.1820,
	ldr	r0, [r7, #0]	@ D.38016,* ivtmp.1786
	mov	r9, sl	@ tmp228, top_idx.1820
	mov	r5, r7	@ tmp227, ivtmp.1786
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L477	@,
.L422:
	add	sl, r9, #1	@ top_idx.1820, tmp228,
	add	r7, r5, #4	@ ivtmp.1786, tmp227,
	cmp	sl, r4	@ top_idx.1820, list_idx.1837
	bcs	.L394	@,
.L393:
	ldr	r0, [r7, #0]	@ D.38016,* ivtmp.1786
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	beq	.L391	@,
	add	r0, r0, #500	@, D.38016,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L391	@,
.L453:
	ldr	r1, [fp, #4]	@, list_size
	add	sl, sl, #1	@ top_idx.1820, top_idx.1820,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r0, [r7, #0]	@ tmp170,* ivtmp.1786
	ldr	r3, [r1, #0]	@ tmp169,
	add	r2, r0, #500	@ tmp171, tmp170,
	str	r2, [ip, r3, asl #2]	@ tmp171,
	ldr	r0, [fp, #4]	@, list_size
	ldr	lr, [r0, #0]	@ tmp172,
	add	r1, lr, #1	@ tmp173, tmp172,
	str	r1, [r0, #0]	@ tmp173,
.L394:
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	ip, #0	@,
	beq	.L442	@,
	ldr	r1, [fp, #-48]	@, %sfp
	mvn	r5, r8	@ tmp220, bot_idx
	add	r7, r5, r4	@ tmp219, tmp220, list_idx.1837
	and	r7, r7, #1	@ tmp221, tmp219,
	add	r5, r1, r8, asl #2	@, ivtmp.1781,, bot_idx,
	ldr	r0, [r1, r8, asl #2]	@ D.38033,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L478	@,
.L410:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	r8, r4	@ bot_idx, list_idx.1837
	bcs	.L442	@,
	cmp	r7, #0	@ tmp221,
	beq	.L396	@,
	ldr	r0, [r5, #0]	@ D.38033,* ivtmp.1781
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #2	@ <variable>.is_used,
	bne	.L479	@,
.L412:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	r8, r4	@ bot_idx, list_idx.1837
	bcc	.L396	@,
	b	.L442	@
.L395:
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [r5, #0]	@ D.38033,* ivtmp.1781
	mov	r9, r8	@ tmp222, bot_idx
	mov	r7, r5	@ tmp223, ivtmp.1781
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L480	@,
.L415:
	add	r8, r9, #1	@ bot_idx, tmp222,
	add	r5, r7, #4	@ ivtmp.1781, tmp223,
	cmp	r8, r4	@ bot_idx, list_idx.1837
	bcs	.L442	@,
.L396:
	ldr	r0, [r5, #0]	@ D.38033,* ivtmp.1781
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	beq	.L395	@,
	add	r0, r0, #536	@, D.38033,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L395	@,
.L452:
	ldr	r0, [fp, #4]	@, list_size
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	lr, [r5, #0]	@ tmp179,* ivtmp.1781
	ldr	r3, [r0, #0]	@ tmp178,
	add	ip, lr, #536	@ tmp180, tmp179,
	str	ip, [r1, r3, asl #2]	@ tmp180,
	ldr	lr, [fp, #4]	@, list_size
	ldr	r2, [lr, #0]	@ tmp181,
	add	r0, r2, #1	@ tmp182, tmp181,
	str	r0, [lr, #0]	@ tmp182,
	b	.L442	@
.L480:
	add	r0, r0, #536	@, D.38033,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L415	@,
	b	.L452	@
.L477:
	add	r0, r0, #500	@, D.38016,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L422	@,
	b	.L453	@
.L478:
	add	r0, r0, #536	@, D.38033,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L410	@,
	b	.L452	@
.L475:
	add	r0, r0, #500	@, D.38016,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L417	@,
	b	.L453	@
.L476:
	add	r0, r0, #500	@, D.38016,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L419	@,
	b	.L453	@
.L479:
	add	r0, r0, #536	@, D.38033,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L412	@,
	b	.L452	@
	.fnend
	.size	GenPiclistfromFrmlist, .-GenPiclistfromFrmlist
	.align	2
	.global	FindNearestPOCPicId
	.type	FindNearestPOCPicId, %function
FindNearestPOCPicId:
	.fnstart
.LFB1432:
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
	movw	r3, #26620	@ tmp144,
	ldr	r6, [r0, r3]	@ D.38323, <variable>.DPB.used_size
	mov	r1, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.38323,
	mvneq	r0, #0	@ nearest_pic_id,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r4, #26424	@ tmp147,
	cmp	r6, #1	@ D.38323,
	ldr	ip, [r1, r4]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #52748	@ tmp145,
	ldr	r4, [r1, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r0, #0	@ nearest_pic_id,
	ldr	r2, [ip, #588]	@ nearest_poc, <variable>.poc
	ldmlsfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r0, r1, #26368	@ tmp151, pH264Ctx,
	sub	r6, r6, #1	@ tmp149, D.38323,
	add	r5, r0, #60	@ tmp151, tmp151,
	rsb	r2, r2, r4	@ tmp148, nearest_poc, curr_poc
	mov	r6, r6, asl #2	@ D.44866, tmp149,
	cmp	r2, #0	@ tmp148,
	ldr	ip, [r5, #0]	@ D.38330, <variable>.DPB.fs
	sub	r3, r6, #4	@ tmp158, D.44866,
	ubfx	r5, r3, #2, #1	@ tmp159, tmp158,,
	rsblt	r2, r2, #0	@ nearest_poc_diff, tmp148
	mov	r0, #0	@ nearest_pic_id,
	ldr	r3, [ip, #588]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp153, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp153,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp153
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	blt	.L499	@,
	mov	r3, #4	@ ivtmp.1872,
	cmp	r3, r6	@ ivtmp.1872, D.44866
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L500:
	cmp	r5, #0	@ tmp159,
	beq	.L486	@,
	add	ip, r1, r3	@ tmp177, pH264Ctx, ivtmp.1872
	add	r3, r3, #4	@ ivtmp.1872, ivtmp.1872,
	add	r5, ip, #26368	@ tmp179, tmp177,
	add	ip, r5, #60	@ tmp179, tmp179,
	ldr	r5, [ip, #0]	@ D.38330, <variable>.DPB.fs
	ldr	ip, [r5, #588]	@ <variable>.poc, <variable>.poc
	rsb	ip, ip, r4	@ tmp182, <variable>.poc, curr_poc
	cmp	ip, #0	@ tmp182,
	rsblt	ip, ip, #0	@ new_poc_diff, tmp182
	cmp	ip, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, ip	@ nearest_poc_diff, new_poc_diff
	cmp	r3, r6	@ ivtmp.1872, D.44866
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L486:
	add	r5, r1, r3	@ tmp162, pH264Ctx, ivtmp.1872
	add	ip, r3, #4	@ tmp160, ivtmp.1872,
	add	r3, r5, #26368	@ tmp163, tmp162,
	add	r7, r1, ip	@ tmp170, pH264Ctx, tmp160
	add	r7, r7, #26368	@ tmp171, tmp170,
	ldr	r5, [r3, #60]	@ D.38330, <variable>.DPB.fs
	ldr	r3, [r5, #588]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp167, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp167,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp167
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
	ldr	r5, [r7, #60]	@ D.38330, <variable>.DPB.fs
	ldr	r3, [r5, #588]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp175, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp175,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp175
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
.L494:
	add	r3, ip, #4	@ ivtmp.1872, tmp160,
	cmp	r3, r6	@ ivtmp.1872, D.44866
	bne	.L486	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L499:
	mov	r2, r3	@ nearest_poc_diff, new_poc_diff
	mov	r3, #4	@ ivtmp.1872,
	cmp	r3, r6	@ ivtmp.1872, D.44866
	ldr	r0, [ip, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	bne	.L500	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	FindNearestPOCPicId, .-FindNearestPOCPicId
	.align	2
	.global	FindMinRefIdx
	.type	FindMinRefIdx, %function
FindMinRefIdx:
	.fnstart
.LFB1433:
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
	mov	r9, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20672	@ tmp154,
	ldrb	r3, [r9, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L514	@,
	movw	r1, #52259	@ tmp156,
	ldrb	r0, [r9, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	bne	.L543	@,
	movw	r1, #20716	@ tmp160,
	add	r6, r9, #26880	@ ivtmp.1923, pH264Ctx,
	ldr	r3, [r9, r1]	@, <variable>.CurrSlice.listXsize
	mov	sl, r1	@ tmp179, tmp160
	mov	r2, r6	@ tmp180, ivtmp.1923
	add	r6, r6, #20	@ ivtmp.1923, ivtmp.1923,
	add	r8, r2, #148	@ ivtmp.1915, tmp180,
	str	r3, [fp, #-48]	@, %sfp
.L505:
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #0	@,
	beq	.L509	@,
	ldr	r2, [r8, #0]	@ tmp206, <variable>.pListX
	mov	r1, #32	@ minrefidx,
	ldr	r7, [r9, sl]	@ temp.1941, <variable>.CurrSlice.listXsize
	ldr	r3, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	ip, r7, #1	@ tmp189, temp.1941,
	and	ip, ip, #1	@ tmp191, tmp189,
	ldr	r2, [r3, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r2, r0	@ <variable>.apc_idc, i
	beq	.L544	@,
.L517:
	mov	r2, #1	@ j,
	cmp	r7, r2	@ temp.1941, j
	add	r3, r8, #4	@ ivtmp.1915, ivtmp.1915,
	bls	.L537	@,
	cmp	ip, #0	@ tmp191,
	beq	.L507	@,
	ldr	ip, [r8, #4]	@ tmp227, <variable>.pListX
	ldr	ip, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [ip, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	ip, r0	@ <variable>.apc_idc, i
	beq	.L545	@,
.L519:
	add	r2, r2, #1	@ j, j,
	add	r3, r3, #4	@ ivtmp.1915, ivtmp.1915,
	cmp	r7, r2	@ temp.1941, j
	bhi	.L507	@,
	b	.L537	@
.L506:
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	beq	.L546	@,
.L522:
	add	r2, ip, #1	@ j, tmp192,
	add	r3, r4, #4	@ ivtmp.1915, tmp193,
	cmp	r7, r2	@ temp.1941, j
	bls	.L537	@,
.L507:
	ldr	r5, [r3, #0]	@ tmp162, <variable>.pListX
	add	ip, r2, #1	@ tmp192, j,
	add	r4, r3, #4	@ tmp193, ivtmp.1915,
	ldr	r5, [r5, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r5, [r5, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r5, r0	@ <variable>.apc_idc, i
	bne	.L506	@,
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	bne	.L522	@,
.L546:
	add	r2, ip, #1	@ j, tmp192,
	cmp	r1, ip	@ minrefidx, tmp192
	movcs	r1, ip	@ minrefidx, tmp192
	cmp	r7, r2	@ temp.1941, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1915, tmp193,
	bhi	.L507	@,
.L537:
	cmp	r1, #31	@ minrefidx,
	bls	.L508	@,
.L509:
	mov	ip, #0	@,
	str	ip, [r6, #0]	@, <variable>.APC.RefIdx
	str	ip, [r6, #4]	@, <variable>.APC.RefIdx
.L508:
	add	r0, r0, #1	@ i, i,
	add	r6, r6, #8	@ ivtmp.1923, ivtmp.1923,
	cmp	r0, #16	@ i,
	bne	.L505	@,
.L514:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L543:
	add	r8, r9, #26880	@ ivtmp.1937, pH264Ctx,
	movw	ip, #20716	@ tmp158,
	ldr	r2, [r9, ip]	@, <variable>.CurrSlice.listXsize
	mov	r0, #0	@ i.1948,
	mov	sl, r8	@ tmp185, ivtmp.1937
	add	r8, r8, #20	@ ivtmp.1937, ivtmp.1937,
	add	sl, sl, #148	@ ivtmp.1929, tmp185,
	str	r2, [fp, #-48]	@, %sfp
.L504:
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #0	@,
	beq	.L513	@,
	ldr	r3, [sl, #0]	@ temp.1944, <variable>.pListX
	movw	r2, #20716	@,
	ldr	r7, [r9, r2]	@ temp.1942, <variable>.CurrSlice.listXsize
	mov	r6, #32	@ minrefidx.1940,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	r1, r7, #1	@ tmp194, temp.1942,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	and	r1, r1, #1	@ tmp196, tmp194,
	ldr	r3, [ip, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp225, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp226, tmp225
	cmp	r3, r0	@ tmp226, i.1948
	beq	.L547	@,
.L524:
	mov	r2, #1	@ j.1947,
	cmp	r7, r2	@ temp.1942, j.1947
	add	r3, sl, #4	@ ivtmp.1929, ivtmp.1929,
	bls	.L538	@,
	cmp	r1, #0	@ tmp196,
	beq	.L511	@,
	ldr	r1, [sl, #4]	@ temp.1944, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r1, [ip, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r1, r1, asl r2	@ tmp235, <variable>.apc_idc,
	cmp	r4, #2	@ <variable>.structure,
	orreq	r1, r1, #1	@,, tmp236, tmp235
	cmp	r1, r0	@ tmp236, i.1948
	beq	.L548	@,
.L526:
	add	r2, r2, #1	@ j.1947, j.1947,
	add	r3, r3, #4	@ ivtmp.1929, ivtmp.1929,
	cmp	r7, r2	@ temp.1942, j.1947
	bhi	.L511	@,
	b	.L538	@
.L510:
	ldr	r3, [r3, #4]	@ temp.1944, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r3, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp216, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp217, tmp216
	cmp	r3, r0	@ tmp217, i.1948
	beq	.L549	@,
	add	r2, ip, #1	@ j.1947, tmp197,
	add	r3, r4, #4	@ ivtmp.1929, tmp198,
	cmp	r7, r2	@ temp.1942, j.1947
	bls	.L538	@,
.L511:
	ldr	r1, [r3, #0]	@ temp.1944, <variable>.pListX
	add	ip, r2, #1	@ tmp197, j.1947,
	add	r4, r3, #4	@ tmp198, ivtmp.1929,
	ldr	r5, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r5, [r5, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r5, r5, asl #1	@ tmp173, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	movne	r1, r5	@, tmp175, tmp173
	orreq	r1, r5, #1	@,, tmp175, tmp173
	cmp	r1, r0	@ tmp175, i.1948
	bne	.L510	@,
	cmp	r6, r2	@ minrefidx.1940, j.1947
	movcs	r6, r2	@ minrefidx.1940, j.1947
	str	r6, [r8, #0]	@ minrefidx.1940, <variable>.APC.RefIdx
	b	.L510	@
.L549:
	add	r2, ip, #1	@ j.1947, tmp197,
	cmp	r6, ip	@ minrefidx.1940, tmp197
	movcs	r6, ip	@ minrefidx.1940, tmp197
	cmp	r7, r2	@ temp.1942, j.1947
	str	r6, [r8, #0]	@ minrefidx.1940, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1929, tmp198,
	bhi	.L511	@,
.L538:
	cmp	r6, #31	@ minrefidx.1940,
	bls	.L512	@,
.L513:
	mov	ip, #0	@,
	str	ip, [r8, #0]	@, <variable>.APC.RefIdx
.L512:
	add	r0, r0, #1	@ i.1948, i.1948,
	add	r8, r8, #4	@ ivtmp.1937, ivtmp.1937,
	cmp	r0, #32	@ i.1948,
	bne	.L504	@,
	b	.L514	@
.L547:
	mov	r6, #0	@ minrefidx.1940,
	str	r6, [r8, #0]	@ minrefidx.1940, <variable>.APC.RefIdx
	b	.L524	@
.L548:
	cmp	r6, r2	@ minrefidx.1940, j.1947
	movcs	r6, r2	@ minrefidx.1940, j.1947
	str	r6, [r8, #0]	@ minrefidx.1940, <variable>.APC.RefIdx
	b	.L526	@
.L544:
	mov	r1, #0	@ minrefidx,
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L517	@
.L545:
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L519	@
	.fnend
	.size	FindMinRefIdx, .-FindMinRefIdx
	.align	2
	.global	NoPicOut
	.type	NoPicOut, %function
NoPicOut:
	.fnstart
.LFB1435:
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
	movw	r3, #53996	@ tmp169,
	ldr	r5, [r0, r3]	@ D.38422, <variable>.TotalFsNum
	cmp	r5, #0	@ D.38422,
	beq	.L551	@,
	add	r3, r0, #27648	@ ivtmp.1980, pH264Ctx,
	sub	r1, r5, #1	@ tmp187, D.38422,
	and	r4, r1, #1	@ tmp189, tmp187,
	mov	ip, #0	@ tmp181,
	ldr	r2, [r3, #244]!	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r2, #1	@ <variable>.is_displayed,
	beq	.L564	@,
	ldrb	r2, [r3, #-592]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #1	@ <variable>.is_in_dpb,
	beq	.L564	@,
.L565:
	mov	r1, #1	@ i,
	cmp	r1, r5	@ i, D.38422
	add	r3, r3, #624	@ ivtmp.1980, ivtmp.1980,
	bcs	.L551	@,
	cmp	r4, #0	@ tmp189,
	beq	.L554	@,
	ldr	r2, [r3, #0]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r2, r1	@ <variable>.is_displayed,
	beq	.L567	@,
	ldrb	r2, [r3, #-592]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #1	@ <variable>.is_in_dpb,
	beq	.L567	@,
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #624	@ ivtmp.1980, ivtmp.1980,
	cmp	r1, r5	@ i, D.38422
	bcc	.L554	@,
.L551:
	movw	r2, #54000	@ tmp177,
	ldr	ip, [r0, r2]	@ D.38423, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.38423,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r3, r0, #53760	@ tmp178, pH264Ctx,
	mov	r2, #1	@ i.1986,
	add	r4, r3, #168	@ ivtmp.1975, tmp178,
	cmp	r2, ip	@ i.1986, D.38423
	sub	r1, ip, #1	@ tmp182, D.38423,
	mov	r0, #0	@ tmp180,
	str	r0, [r4, #0]	@ tmp180, <variable>.PmvStoreUsedFlag
	and	r4, r1, r2	@ tmp184, tmp182,
	add	r1, r3, #172	@ ivtmp.1975, tmp178,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp184,
	beq	.L556	@,
	mov	r2, #2	@ i.1986,
	cmp	r2, ip	@ i.1986, D.38423
	str	r0, [r1, #0]	@ tmp180, <variable>.PmvStoreUsedFlag
	add	r1, r3, #176	@ ivtmp.1975, tmp178,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L556:
	add	r2, r2, #2	@ i.1986, i.1986,
	mov	r3, r1	@ tmp186, ivtmp.1975
	cmp	r2, ip	@ i.1986, D.38423
	str	r0, [r3], #4	@ tmp180, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp180, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.1975, tmp186,
	bcc	.L556	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L579:
	ldrb	r4, [r3, #-592]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #1	@ <variable>.is_in_dpb,
	beq	.L552	@,
	ldr	r3, [r3, #624]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r3, #1	@ <variable>.is_displayed,
	beq	.L571	@,
.L577:
	ldrb	r3, [r2, #-592]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r3, #1	@ <variable>.is_in_dpb,
	beq	.L571	@,
.L572:
	add	r1, r1, #1	@ i, tmp191,
	add	r3, r2, #624	@ ivtmp.1980, tmp190,
	cmp	r1, r5	@ i, D.38422
	bcs	.L551	@,
.L554:
	ldr	r4, [r3, #0]	@ <variable>.is_displayed, <variable>.is_displayed
	add	r1, r1, #1	@ tmp191, i,
	add	r2, r3, #624	@ tmp190, ivtmp.1980,
	cmp	r4, #1	@ <variable>.is_displayed,
	bne	.L579	@,
.L552:
	strb	ip, [r3, #-595]	@ tmp181, <variable>.is_used
	strb	ip, [r3, #-594]	@ tmp181, <variable>.is_reference
	ldr	r3, [r3, #624]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r3, #1	@ <variable>.is_displayed,
	bne	.L577	@,
.L571:
	strb	ip, [r2, #-595]	@ tmp181, <variable>.is_used
	strb	ip, [r2, #-594]	@ tmp181, <variable>.is_reference
	b	.L572	@
.L567:
	add	r1, r1, #1	@ i, i,
	strb	ip, [r3, #-595]	@ tmp181, <variable>.is_used
	cmp	r1, r5	@ i, D.38422
	strb	ip, [r3, #-594]	@ tmp181, <variable>.is_reference
	add	r3, r3, #624	@ ivtmp.1980, ivtmp.1980,
	bcc	.L554	@,
	b	.L551	@
.L564:
	strb	ip, [r3, #-595]	@ tmp181, <variable>.is_used
	strb	ip, [r3, #-594]	@ tmp181, <variable>.is_reference
	b	.L565	@
	.fnend
	.size	NoPicOut, .-NoPicOut
	.align	2
	.global	wait_vo
	.type	wait_vo, %function
wait_vo:
	.fnstart
.LFB1438:
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
	.size	wait_vo, .-wait_vo
	.align	2
	.global	GetReRangeFlag
	.type	GetReRangeFlag, %function
GetReRangeFlag:
	.fnstart
.LFB1439:
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
	movw	r3, #13584	@ tmp150,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20684	@ tmp148,
	ldr	r7, [r4, r3]	@ <variable>.PPS, <variable>.PPS
	mov	r5, #2208	@ tmp152,
	ldr	r6, [r4, r0]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	ip, #13580	@ tmp146,
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	movw	r2, #13560	@ tmp158,
	ldr	r2, [r4, r2]	@ oldw, <variable>.CurWidthInMb
	mla	r0, r5, r6, r7	@ tmp153, tmp152, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	r5, #3992	@ tmp156,
	mov	r6, r1	@ p_dpb_changed, p_dpb_changed
	movw	r1, #13564	@ tmp159,
	ldr	r7, [r4, r1]	@ oldh, <variable>.CurHeightInMb
	ldr	ip, [r0, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, ip, r3	@ pSPS, tmp156, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r3, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r0, r1, #2	@ tmp162, <variable>.frame_mbs_only_flag,
	ldr	ip, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mla	r0, r3, r0, r0	@ newh, <variable>.pic_height_in_map_units_minus1, tmp162, tmp162
	add	ip, ip, #1	@ neww, <variable>.pic_width_in_mbs_minus1,
	cmp	ip, r2	@ neww, oldw
	cmpeq	r0, r7	@, newh, oldh
	moveq	r3, #0	@, tmp171
	movne	r3, #1	@, tmp171
	bne	.L583	@,
	movw	r8, #26616	@ tmp172,
	ldr	r1, [r5, #3972]	@ prephitmp.2023, <variable>.dpb_size_plus1
	ldr	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	add	r8, r8, #1	@ tmp173, <variable>.DPB.size,
	cmp	r1, r8	@ prephitmp.2023, tmp173
	bls	.L587	@,
.L583:
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r1, #0]	@ g_event_report.603, g_event_report
	cmp	r3, #0	@ g_event_report.603,
	beq	.L588	@,
	movw	lr, #55520	@ tmp184,
	mov	r1, r2, asl #4	@ tmp177, oldw,
	mov	ip, ip, asl #4	@ tmp181, neww,
	strh	r1, [fp, #-44]	@ movhi	@ tmp177, para
	mov	r2, r0, asl #4	@ tmp183, newh,
	strh	ip, [fp, #-40]	@ movhi	@ tmp181, para
	strh	r2, [fp, #-38]	@ movhi	@ tmp183, para
	mov	r1, #2	@,
	mov	r7, r7, asl #4	@ tmp179, oldh,
	sub	r2, fp, #44	@,,
	strh	r7, [fp, #-42]	@ movhi	@ tmp179, para
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.603
	ldr	r1, [r5, #3972]	@ prephitmp.2023, <variable>.dpb_size_plus1
	mov	r3, #1	@ prephitmp.2035,
.L587:
	mov	r0, r3	@ ReRangeFlg, prephitmp.2035
.L584:
	movw	r2, #14332	@ tmp187,
	ldr	ip, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r4, r2]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r2, #17560	@ tmp192,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r5, ip	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	orrne	r3, r3, #1	@,, dpb_changed, prephitmp.2035
	cmp	r2, r1	@ <variable>.CurrSPS.dpb_size_plus1, prephitmp.2023
	moveq	ip, r3	@, tmp196, dpb_changed
	orrne	ip, r3, #1	@,, tmp196, dpb_changed
	str	ip, [r6, #0]	@ tmp196,* p_dpb_changed
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L588:
	mov	r3, #1	@ prephitmp.2035,
	ldr	r1, [r5, #3972]	@ prephitmp.2023, <variable>.dpb_size_plus1
	mov	r0, r3	@ ReRangeFlg, prephitmp.2035
	b	.L584	@
	.fnend
	.size	GetReRangeFlag, .-GetReRangeFlag
	.global	__aeabi_uidiv
	.global	__aeabi_uidivmod
	.align	2
	.global	DecPOC
	.type	DecPOC, %function
DecPOC:
	.fnstart
.LFB1440:
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
	movw	r2, #20684	@ tmp174,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	ip, [r0, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r0, #13584	@ tmp176,
	mov	r5, #2208	@ tmp178,
	ldr	r1, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	movw	r3, #13580	@ tmp172,
	ldr	r3, [r4, r3]	@ <variable>.SPS, <variable>.SPS
	movw	r2, #20675	@ tmp169,
	mla	r0, r5, ip, r1	@ tmp179, tmp178, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	r5, #3992	@ tmp182,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	mov	r2, #1	@ tmp186,
	cmp	r1, #5	@ <variable>.CurrSlice.nal_unit_type,
	movne	r1, #0	@, tmp171
	moveq	r1, #1	@, tmp171
	ldr	ip, [r0, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, ip, r3	@ sps, tmp182, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r3, [r5, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r0, [r5, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r3, r2	@ <variable>.pic_order_cnt_type,
	ldr	ip, [r5, #2904]	@ D.38598, <variable>.log2_max_pic_order_cnt_lsb_minus4
	add	r0, r0, #4	@ tmp184, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r0	@ MaxFrameNum, tmp186,
	beq	.L592	@,
	bcs	.L644	@,
	cmp	r1, #0	@ tmp171,
	add	ip, ip, #4	@ tmp188, D.38598,
	mov	r2, r2, asl ip	@ MaxPicOrderCntLsb, tmp186,
	bne	.L645	@,
	movw	r3, #19812	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	ip, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L596	@,
	movw	r1, #19796	@ tmp197,
	movw	r5, #19800	@ tmp196,
	ldr	ip, [r4, r1]	@ prephitmp.2073, <variable>.CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, r5]	@ prephitmp.2071, <variable>.CurrPOC.PrevPicOrderCntLsb
	mov	r5, ip	@ prephitmp.2075, prephitmp.2073
.L597:
	movw	r3, #19788	@ tmp208,
	ldr	r0, [r4, r3]	@ D.38621, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.38621, prephitmp.2071
	bcs	.L599	@,
	rsb	r3, r0, r1	@ tmp209, D.38621, prephitmp.2071
	cmp	r3, r2, lsr #1	@ tmp209, MaxPicOrderCntLsb,
	addcs	r3, r5, r2	@ D.38630, prephitmp.2075, MaxPicOrderCntLsb
	movwcs	r2, #19804	@ tmp212,
	strcs	r3, [r4, r2]	@ D.38630, <variable>.CurrPOC.PicOrderCntMsb
	bcs	.L602	@,
.L599:
	movw	r3, #19796	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.2141, <variable>.CurrPOC.PrevPicOrderCntMsb
.L601:
	cmp	r1, r0	@ prephitmp.2071, D.38621
	bcs	.L603	@,
	rsb	r1, r1, r0	@ tmp214, prephitmp.2071, D.38621
	cmp	r1, r2, lsr #1	@ tmp214, MaxPicOrderCntLsb,
	bhi	.L646	@,
.L603:
	movw	r0, #19804	@ tmp217,
	str	ip, [r4, r0]	@ prephitmp.2073, <variable>.CurrPOC.PicOrderCntMsb
.L602:
	movw	r1, #20673	@ tmp218,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L604	@,
	movw	r2, #19788	@ tmp220,
	movw	r0, #19792	@ tmp223,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r4, r0]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19820	@ tmp222,
	add	r2, r3, ip	@ D.38644, prephitmp.2141, <variable>.CurrPOC.pic_order_cnt_lsb
	str	r2, [r4, r0]	@ D.38644, <variable>.CurrPOC.toppoc
	add	ip, r2, r1	@ D.38646, D.38644, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19828	@ tmp226,
	cmp	ip, r2	@ D.38646, D.38644
	movlt	r3, ip	@ prephitmp.2066, D.38646
	movge	r3, r2	@ prephitmp.2066, D.38644
	movw	r2, #19824	@ tmp225,
	str	ip, [r4, r2]	@ D.38646, <variable>.CurrPOC.bottompoc
	movw	r2, #19832	@ tmp227,
	str	r3, [r4, r0]	@ prephitmp.2066,
	str	r3, [r4, r2]	@ prephitmp.2066, <variable>.CurrPOC.ThisPOC
.L605:
	movw	ip, #19828	@ tmp238,
	movw	r1, #19852	@ tmp239,
	movw	r2, #19848	@ tmp240,
	ldr	r1, [r4, r1]	@ D.38656, <variable>.CurrPOC.frame_num
	str	r3, [r4, ip]	@ prephitmp.2066, <variable>.CurrPOC.framepoc
	movw	ip, #20704	@ tmp243,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, r0	@ D.38656, <variable>.CurrPOC.PreviousFrameNum
	strne	r1, [r4, r2]	@ D.38656, <variable>.CurrPOC.PreviousFrameNum
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	movw	r2, #19788	@ tmp246,
	movw	r1, #19804	@ tmp249,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	movw	ip, #19800	@ tmp245,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.PicOrderCntMsb, <variable>.CurrPOC.PicOrderCntMsb
	movw	r3, #19796	@ tmp248,
	str	r0, [r4, ip]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r2, [r4, r3]	@ <variable>.CurrPOC.PicOrderCntMsb,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L644:
	cmp	r3, #2	@ <variable>.pic_order_cnt_type,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r1, #0	@ tmp171,
	bne	.L647	@,
	movw	ip, #19812	@ tmp357,
	ldr	r3, [r4, ip]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L628	@,
	movw	r2, #19848	@ tmp360,
	movw	ip, #19852	@ tmp361,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	movw	r3, #19860	@ tmp359,
	ldr	r2, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r3, [r4, r3]	@ prephitmp.2061, <variable>.CurrPOC.PrevFrameNumOffset
	cmp	r1, r2	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.frame_num
	addhi	r3, r3, r0	@ prephitmp.2061, prephitmp.2061, MaxFrameNum
	movwhi	r2, #19856	@ tmp368,
	strhi	r3, [r4, r2]	@ prephitmp.2061, <variable>.CurrPOC.FrameNumOffset
	bls	.L630	@,
.L631:
	movw	r2, #19852	@ tmp370,
	movw	r1, #20704	@ tmp373,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	r2, #20673	@ tmp378,
	ldr	r0, [r4, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r1, #19844	@ tmp372,
	add	r3, r3, ip	@ temp.2131, prephitmp.2061, <variable>.CurrPOC.frame_num
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	str	r3, [r4, r1]	@ temp.2131, <variable>.CurrPOC.AbsFrameNum
	mov	r3, r3, asl #1	@ tmp375, temp.2131,
	movw	r0, #19832	@ tmp377,
	subeq	r3, r3, #1	@ prephitmp.2133, tmp375,
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [r4, r0]	@ prephitmp.2133, <variable>.CurrPOC.ThisPOC
	bne	.L634	@,
	movw	r2, #19828	@ tmp380,
	movw	r0, #19820	@ tmp382,
	movw	ip, #19824	@ tmp381,
	str	r3, [r4, r2]	@ prephitmp.2133, <variable>.CurrPOC.framepoc
	str	r3, [r4, r0]	@ prephitmp.2133, <variable>.CurrPOC.toppoc
	str	r3, [r4, ip]	@ prephitmp.2133,
.L627:
	movw	r2, #19852	@ tmp390,
	movw	r0, #19856	@ tmp393,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19848	@ tmp389,
	ldr	r2, [r4, r0]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19860	@ tmp392,
	str	r1, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r3]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L592:
	cmp	r1, #0	@ tmp171,
	movwne	r3, #19856	@ tmp251,
	movne	r2, #0	@ tmp252,
	strne	r2, [r4, r3]	@ tmp252, <variable>.CurrPOC.FrameNumOffset
	bne	.L609	@,
	movw	r3, #19812	@ tmp253,
	ldr	r7, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r7, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L610	@,
	movw	ip, #19860	@ tmp255,
	movw	r0, #19848	@ tmp257,
	mov	r3, r1	@ prephitmp.2065, tmp171
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
.L611:
	movw	r2, #19856	@ tmp268,
	str	r3, [r4, r2]	@ prephitmp.2065, <variable>.CurrPOC.FrameNumOffset
.L609:
	ldr	ip, [r5, #2916]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movw	r0, #20704	@ tmp278,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	ip, #0	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle,
	movwne	ip, #19852	@ tmp271,
	movweq	r2, #19844	@ tmp276,
	ldrne	r2, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movwne	ip, #19856	@ tmp272,
	ldrne	ip, [r4, ip]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	streq	ip, [r4, r2]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.CurrPOC.AbsFrameNum
	addne	r2, r2, ip	@ tmp275, <variable>.CurrPOC.frame_num, <variable>.CurrPOC.FrameNumOffset
	movwne	ip, #19844	@ tmp270,
	strne	r2, [r4, ip]	@ tmp275, <variable>.CurrPOC.AbsFrameNum
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	beq	.L648	@,
.L615:
	movw	ip, #19876	@ tmp283,
	mov	r3, #0	@ tmp284,
	str	r3, [r4, ip]	@ tmp284, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2916]	@ temp.2136, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ temp.2136,
	ble	.L616	@,
	add	r7, r5, #2912	@ ivtmp.2095, sps,
	mov	r2, r3	@ i, prephitmp.2062
	add	r0, r7, #8	@ ivtmp.2095, ivtmp.2095,
.L617:
	ldr	r1, [r0], #4	@ tmp286, <variable>.offset_for_ref_frame
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r1	@ prephitmp.2062, prephitmp.2062, tmp286
	str	r3, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2916]	@ temp.2136, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ temp.2136, i
	bgt	.L617	@,
.L616:
	movw	r3, #19844	@ tmp288,
	ldr	r7, [r4, r3]	@ temp.2110, <variable>.CurrPOC.AbsFrameNum
	cmp	r7, #0	@ temp.2110,
	movweq	r3, #19872	@ tmp309,
	moveq	r6, r7	@ prephitmp.2114, temp.2110
	streq	r7, [r4, r3]	@ temp.2110, <variable>.CurrPOC.ExpectedPicOrderCnt
	beq	.L619	@,
	sub	r7, r7, #1	@ tmp289, temp.2110,
	mov	r0, r7	@, tmp289
	bl	__aeabi_uidiv	@
	movw	ip, #19868	@ tmp293,
	mov	r6, r0	@ tmp292,
	mov	r0, r7	@, tmp289
	str	r6, [r4, ip]	@ tmp292, <variable>.CurrPOC.PicOrderCntCycleCnt
	ldr	r1, [r5, #2916]	@, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bl	__aeabi_uidivmod	@
	movw	r2, #19876	@ tmp303,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	movw	ip, #19872	@ tmp305,
	movw	r2, #19864	@ tmp302,
	mul	r6, r0, r6	@ prephitmp.2114, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, tmp292
	str	r6, [r4, ip]	@ prephitmp.2114, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.38697,
	str	r1, [r4, r2]	@ D.38697, <variable>.CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L619	@,
	add	r3, r5, #2912	@ tmp306, sps,
	cmp	r1, #1	@ D.38697,
	and	r8, r1, #1	@ tmp401, D.38697,
	mov	r0, #1	@ i.2116,
	ldr	r7, [r3, #8]	@ tmp307, <variable>.offset_for_ref_frame
	add	r2, r3, #12	@ ivtmp.2090, tmp306,
	add	r6, r6, r7	@ prephitmp.2114, prephitmp.2114, tmp307
	str	r6, [r4, ip]	@ prephitmp.2114, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L619	@,
	cmp	r8, #0	@ tmp401,
	beq	.L620	@,
	ldr	r7, [r2, #0]	@ tmp413, <variable>.offset_for_ref_frame
	mov	r0, #2	@ i.2116,
	cmp	r1, r0	@ D.38697, i.2116
	add	r2, r3, #16	@ ivtmp.2090, tmp306,
	add	r6, r6, r7	@ prephitmp.2114, prephitmp.2114, tmp413
	str	r6, [r4, ip]	@ prephitmp.2114, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L619	@,
.L620:
	mov	r3, r2	@ tmp403, ivtmp.2090
	add	r0, r0, #2	@ i.2116, i.2116,
	ldr	r7, [r3], #4	@ tmp406, <variable>.offset_for_ref_frame
	cmp	r1, r0	@ D.38697, i.2116
	add	lr, r6, r7	@ prephitmp.2114, prephitmp.2114, tmp406
	str	lr, [r4, ip]	@ prephitmp.2114, <variable>.CurrPOC.ExpectedPicOrderCnt
	ldr	r7, [r2, #4]	@ tmp411, <variable>.offset_for_ref_frame
	add	r2, r3, #4	@ ivtmp.2090, tmp403,
	add	r6, lr, r7	@ prephitmp.2114, prephitmp.2114, tmp411
	str	r6, [r4, ip]	@ prephitmp.2114, <variable>.CurrPOC.ExpectedPicOrderCnt
	bge	.L620	@,
.L619:
	movw	r3, #20704	@ tmp311,
	movw	r0, #20673	@ tmp316,
	ldr	ip, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldreq	ip, [r5, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	movwne	ip, #19872	@ tmp313,
	ldrne	r6, [r4, ip]	@ prephitmp.2118, <variable>.CurrPOC.ExpectedPicOrderCnt
	addeq	r6, r6, ip	@ prephitmp.2118, prephitmp.2114, <variable>.offset_for_non_ref_pic
	movweq	ip, #19872	@ tmp315,
	streq	r6, [r4, ip]	@ prephitmp.2118, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L649	@,
	movw	ip, #20674	@ tmp328,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r0, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movwne	r2, #19836	@ tmp334,
	ldrne	r0, [r5, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movweq	r0, #19836	@ tmp330,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	ldreq	r0, [r4, r0]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r0, r2, r0	@ tmp335, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r2, #19832	@ tmp339,
	addeq	r6, r6, r0	@ prephitmp.2123, prephitmp.2118, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r6, r0, r6	@ prephitmp.2123, tmp335, prephitmp.2118
	movweq	r0, #19820	@ tmp332,
	movwne	r0, #19824	@ tmp338,
	str	r6, [r4, r0]	@ prephitmp.2123,
	str	r6, [r4, r2]	@ prephitmp.2123, <variable>.CurrPOC.ThisPOC
.L624:
	movw	r2, #19852	@ tmp342,
	movw	r1, #19856	@ tmp345,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19828	@ tmp340,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19848	@ tmp341,
	movw	r1, #19860	@ tmp344,
	str	r6, [r4, ip]	@ prephitmp.2123, <variable>.CurrPOC.framepoc
	str	r0, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L649:
	movw	r3, #19836	@ tmp318,
	movw	r1, #19840	@ tmp321,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r0, #19820	@ tmp320,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	add	r6, r6, ip	@ D.38711, prephitmp.2118, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, r0]	@ D.38711, <variable>.CurrPOC.toppoc
	ldr	r1, [r5, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movw	ip, #19824	@ tmp325,
	add	r3, r2, r1	@ tmp322, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r1, #19828	@ tmp326,
	add	r0, r3, r6	@ D.38715, tmp322, D.38711
	movw	r2, #19832	@ tmp327,
	cmp	r0, r6	@ D.38715, D.38711
	movlt	r6, r0	@ prephitmp.2123, D.38715
	movge	r6, r6	@ prephitmp.2123, D.38711
	str	r0, [r4, ip]	@ D.38715, <variable>.CurrPOC.bottompoc
	str	r6, [r4, r1]	@ prephitmp.2123,
	str	r6, [r4, r2]	@ prephitmp.2123, <variable>.CurrPOC.ThisPOC
	b	.L624	@
.L648:
	movw	r1, #19844	@ tmp280,
	ldr	r2, [r4, r1]	@ D.38682, <variable>.CurrPOC.AbsFrameNum
	cmp	r2, #0	@ D.38682,
	subne	r2, r2, #1	@ tmp282, D.38682,
	strne	r2, [r4, r1]	@ tmp282, <variable>.CurrPOC.AbsFrameNum
	b	.L615	@
.L647:
	movw	r0, #19832	@ tmp355,
	mov	r3, #0	@ tmp348,
	movw	r2, #19856	@ tmp347,
	str	r3, [r4, r0]	@ tmp348, <variable>.CurrPOC.ThisPOC
	movw	r1, #19824	@ tmp349,
	movw	ip, #19820	@ tmp351,
	movw	r0, #19828	@ tmp353,
	str	r3, [r4, r2]	@ tmp348, <variable>.CurrPOC.FrameNumOffset
	str	r3, [r4, r1]	@ tmp348, <variable>.CurrPOC.bottompoc
	str	r3, [r4, ip]	@ tmp348,
	str	r3, [r4, r0]	@ tmp348,
	b	.L627	@
.L645:
	movw	r0, #19800	@ tmp192,
	movw	r1, #19796	@ tmp190,
	mov	r3, #0	@ tmp191,
	str	r3, [r4, r0]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r3, [r4, r1]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntMsb
.L595:
	movw	ip, #19788	@ tmp395,
	movw	r1, #19796	@ tmp396,
	mov	r3, #0	@ prephitmp.2141,
	ldr	r0, [r4, ip]	@ D.38621, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	ip, [r4, r1]	@ prephitmp.2073, <variable>.CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ prephitmp.2071, prephitmp.2141
	b	.L601	@
.L604:
	movw	r1, #20674	@ tmp228,
	movw	r0, #19788	@ tmp230,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movw	r1, #19832	@ tmp237,
	ldr	ip, [r4, r0]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r2, #0	@ <variable>.CurrSlice.bottom_field_flag,
	add	r3, r3, ip	@ prephitmp.2066, prephitmp.2141, <variable>.CurrPOC.pic_order_cnt_lsb
	movweq	ip, #19820	@ tmp232,
	movwne	ip, #19824	@ tmp236,
	str	r3, [r4, ip]	@ prephitmp.2066,
	str	r3, [r4, r1]	@ prephitmp.2066, <variable>.CurrPOC.ThisPOC
	b	.L605	@
.L596:
	movw	r0, #19816	@ tmp198,
	ldr	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.last_pic_bottom_field
	cmp	r3, #0	@ <variable>.CurrPOC.last_pic_bottom_field,
	beq	.L598	@,
	movw	r3, #19800	@ tmp202,
	movw	ip, #19796	@ tmp200,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntMsb
	b	.L595	@
.L628:
	movw	r3, #19848	@ tmp364,
	movw	r0, #19860	@ tmp366,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
	mov	r3, r1	@ prephitmp.2061, tmp171
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
.L630:
	movw	r1, #19856	@ tmp369,
	str	r3, [r4, r1]	@ prephitmp.2061, <variable>.CurrPOC.FrameNumOffset
	b	.L631	@
.L634:
	movw	r0, #20674	@ tmp383,
	movw	r1, #19828	@ tmp387,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	ip, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movweq	ip, #19820	@ tmp386,
	movwne	ip, #19824	@ tmp388,
	str	r3, [r4, ip]	@ prephitmp.2133,
	str	r3, [r4, r1]	@ prephitmp.2133,
	b	.L627	@
.L610:
	movw	r3, #19852	@ tmp259,
	movw	r7, #19848	@ tmp260,
	ldr	r2, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	cmp	r2, r1	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	bcs	.L612	@,
	movw	r7, #19860	@ tmp264,
	movw	ip, #19856	@ tmp263,
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PrevFrameNumOffset, <variable>.CurrPOC.PrevFrameNumOffset
	add	r0, r0, r1	@ tmp266, MaxFrameNum, <variable>.CurrPOC.PrevFrameNumOffset
	str	r0, [r4, ip]	@ tmp266, <variable>.CurrPOC.FrameNumOffset
	b	.L609	@
.L646:
	rsb	r3, r2, r3	@ D.38637, MaxPicOrderCntLsb, prephitmp.2141
	movw	r2, #19804	@ tmp216,
	str	r3, [r4, r2]	@ D.38637, <variable>.CurrPOC.PicOrderCntMsb
	b	.L602	@
.L598:
	movw	r1, #19820	@ tmp206,
	movw	r0, #19796	@ tmp204,
	ldr	r1, [r4, r1]	@ prephitmp.2071, <variable>.CurrPOC.toppoc
	mov	r5, r3	@ prephitmp.2075, <variable>.CurrPOC.last_pic_bottom_field
	str	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.PrevPicOrderCntMsb
	movw	r0, #19800	@ tmp207,
	mov	ip, r3	@ prephitmp.2073, prephitmp.2075
	str	r1, [r4, r0]	@ prephitmp.2071, <variable>.CurrPOC.PrevPicOrderCntLsb
	b	.L597	@
.L612:
	movw	r2, #19860	@ tmp267,
	ldr	r3, [r4, r2]	@ prephitmp.2065, <variable>.CurrPOC.PrevFrameNumOffset
	b	.L611	@
	.fnend
	.size	DecPOC, .-DecPOC
	.align	2
	.global	CalcPicNum
	.type	CalcPicNum, %function
CalcPicNum:
	.fnstart
.LFB1441:
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
	movw	r3, #20684	@ tmp158,
	movw	r2, #13584	@ tmp160,
	ldr	r4, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r5, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #2208	@ tmp162,
	movw	r1, #13580	@ tmp166,
	movw	r2, #52259	@ tmp173,
	ldr	r1, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	mla	r3, ip, r4, r5	@ tmp163, tmp162, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	ip, #3992	@ tmp168,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.38775, <variable>.CurrPic.structure
	cmp	r2, #0	@ D.38775,
	ldr	r5, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r3, #1	@ tmp172,
	mla	r4, ip, r5, r1	@ tmp169, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r1, [r4, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	ip, r1, #4	@ tmp170, <variable>.log2_max_frame_num_minus4,
	mov	ip, r3, asl ip	@ MaxFrameNum, tmp172,
	beq	.L651	@,
	mov	r7, #26624	@ tmp176,
	cmp	r2, #2	@ D.38775,
	movne	r4, #0	@, add_bottom
	moveq	r4, #1	@, add_bottom
	ldr	r6, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r2, #1	@ D.38775,
	movne	r5, #0	@, add_top
	moveq	r5, #1	@, add_top
	cmp	r6, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L653	@,
	add	r8, r0, #26368	@ ivtmp.2209, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r8, #120	@ ivtmp.2209, ivtmp.2209,
	mov	r8, #52736	@ tmp245,
.L666:
	ldr	r1, [r3, #0]	@ temp.2217, <variable>.DPB.fs_ref
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	beq	.L662	@,
	ldr	r6, [r1, #576]	@ temp.2219, <variable>.frame_num
	ldr	sl, [r0, r8]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	r6, sl	@ temp.2219, <variable>.CurrPic.frame_num
	rsbhi	r6, ip, r6	@ tmp205, MaxFrameNum, temp.2219
	str	r6, [r1, #580]	@ temp.2219, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ prephitmp.2177, <variable>.DPB.fs_ref
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2181, <variable>.is_reference
	tst	r6, #1	@ prephitmp.2181,
	beq	.L665	@,
	ldr	sl, [r1, #500]	@ tmp209,
	bic	sl, sl, #-16777216	@ tmp207, tmp209,
	bic	sl, sl, #255	@ tmp207, tmp207,
	cmp	sl, #65536	@ tmp207,
	ldreq	r6, [r1, #580]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	r6, r5, r6, asl #1	@, tmp212, add_top, <variable>.frame_num_wrap,
	streq	r6, [r1, #512]	@ tmp212, <variable>.top_field.pic_num
	ldreq	r1, [r3, #0]	@ prephitmp.2177, <variable>.DPB.fs_ref
	ldreqb	r6, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2181, <variable>.is_reference
.L665:
	tst	r6, #2	@ prephitmp.2181,
	beq	.L662	@,
	ldr	r6, [r1, #536]	@ tmp216,
	bic	r6, r6, #-16777216	@ tmp214, tmp216,
	bic	r6, r6, #255	@ tmp214, tmp214,
	cmp	r6, #65536	@ tmp214,
	ldreq	r6, [r1, #580]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	r6, r4, r6, asl #1	@, tmp219, add_bottom, <variable>.frame_num_wrap,
	streq	r6, [r1, #548]	@ tmp219, <variable>.bottom_field.pic_num
.L662:
	ldr	r1, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.2209, ivtmp.2209,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L666	@,
.L653:
	movw	r6, #26628	@ tmp222,
	ldr	r3, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r2, r0, #26368	@ ivtmp.2204, pH264Ctx,
	add	r3, r2, #184	@ ivtmp.2204, ivtmp.2204,
	mov	r2, #0	@ i.2221,
.L669:
	ldr	ip, [r3, #0]	@ prephitmp.2170, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2221, i.2221,
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ temp.2231, <variable>.is_reference
	cmp	r1, #0	@ temp.2231,
	beq	.L667	@,
	tst	r1, #1	@ prephitmp.2174,
	beq	.L668	@,
	ldr	r7, [ip, #500]	@ tmp228,
	bic	r7, r7, #-16777216	@ tmp226, tmp228,
	bic	r7, r7, #255	@ tmp226, tmp226,
	cmp	r7, #256	@ tmp226,
	ldreq	r1, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r5, r1, asl #1	@, tmp231, add_top, <variable>.long_term_frame_idx,
	streq	r1, [ip, #508]	@ tmp231, <variable>.top_field.long_term_pic_num
	ldreq	ip, [r3, #0]	@ prephitmp.2170, <variable>.DPB.fs_ltref
	ldreqb	r1, [ip, #2]	@ zero_extendqisi2	@ prephitmp.2174, <variable>.is_reference
.L668:
	tst	r1, #2	@ prephitmp.2174,
	beq	.L667	@,
	ldr	r1, [ip, #536]	@ tmp235,
	bic	r1, r1, #-16777216	@ tmp233, tmp235,
	bic	r1, r1, #255	@ tmp233, tmp233,
	cmp	r1, #256	@ tmp233,
	ldreq	r1, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r4, r1, asl #1	@, tmp238, add_bottom, <variable>.long_term_frame_idx,
	streq	r1, [ip, #544]	@ tmp238, <variable>.bottom_field.long_term_pic_num
.L667:
	ldr	ip, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.2204, ivtmp.2204,
	cmp	ip, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2221
	bhi	.L669	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L651:
	mov	r5, #26624	@ tmp178,
	ldr	r4, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r4, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L654	@,
	add	r1, r0, #26368	@ ivtmp.2199, pH264Ctx,
	mov	r6, #52736	@ tmp242,
	add	r3, r1, #120	@ ivtmp.2199, ivtmp.2199,
	b	.L658	@
.L655:
	ldr	r1, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i.2214, i.2214,
	add	r3, r3, #4	@ ivtmp.2199, ivtmp.2199,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2214
	bls	.L654	@,
.L658:
	ldr	r1, [r3, #0]	@ D.38779, <variable>.DPB.fs_ref
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L655	@,
	ldr	r4, [r1, #464]	@ tmp184,
	bic	r4, r4, #-16777216	@ tmp182, tmp184,
	bic	r4, r4, #255	@ tmp182, tmp182,
	cmp	r4, #65536	@ tmp182,
	bne	.L655	@,
	ldr	r4, [r1, #576]	@ D.38787, <variable>.frame_num
	add	r2, r2, #1	@ i.2214, i.2214,
	ldr	r7, [r0, r6]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	r4, r7	@ D.38787, <variable>.CurrPic.frame_num
	rsb	r7, ip, r4	@ tmp187, MaxFrameNum, D.38787
	strls	r4, [r1, #580]	@ D.38787, <variable>.frame_num_wrap
	strhi	r7, [r1, #580]	@ tmp187, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ temp.2213, <variable>.DPB.fs_ref
	add	r3, r3, #4	@ ivtmp.2199, ivtmp.2199,
	ldr	r4, [r1, #580]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	str	r4, [r1, #476]	@ <variable>.frame_num_wrap, <variable>.frame.pic_num
	ldr	r1, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2214
	bhi	.L658	@,
.L654:
	movw	r4, #26628	@ tmp191,
	ldr	ip, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	ip, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r2, r0, #26368	@ ivtmp.2194, pH264Ctx,
	add	r3, r2, #184	@ ivtmp.2194, ivtmp.2194,
	mov	r2, #0	@ i.2215,
	b	.L661	@
.L660:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2215
	bls	.L675	@,
.L661:
	ldr	r1, [r3, #0]	@ D.38797, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2215, i.2215,
	add	r3, r3, #4	@ ivtmp.2194, ivtmp.2194,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L660	@,
	ldr	ip, [r1, #464]	@ tmp197,
	bic	ip, ip, #-16777216	@ tmp195, tmp197,
	bic	ip, ip, #255	@ tmp195, tmp195,
	cmp	ip, #256	@ tmp195,
	ldreq	ip, [r1, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #472]	@ <variable>.long_term_frame_idx, <variable>.frame.long_term_pic_num
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2215
	bhi	.L661	@,
.L675:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	CalcPicNum, .-CalcPicNum
	.align	2
	.global	IsOutDPB
	.type	IsOutDPB, %function
IsOutDPB:
	.fnstart
.LFB1442:
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
	cmp	r1, #0	@ pFrameStore
	beq	.L677	@,
	movw	r3, #26620	@ tmp141,
	ldr	r4, [r0, r3]	@ D.38873, <variable>.DPB.used_size
	cmp	r4, #0	@ D.38873,
	beq	.L677	@,
	movw	ip, #26424	@ tmp142,
	ldr	r2, [r0, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r2, r1	@ <variable>.DPB.fs, pFrameStore
	beq	.L678	@,
	tst	r4, #1	@ D.38873,
	add	r3, r0, #26368	@ tmp144, pH264Ctx,
	add	r2, r3, #60	@ ivtmp.2263, tmp144,
	mov	r0, #0	@ i,
	bne	.L679	@,
	ldr	ip, [r2, #0]	@ D.38870, <variable>.DPB.fs
	mov	r0, #1	@ i,
	add	r2, r3, #64	@ ivtmp.2263, tmp144,
	cmp	ip, r1	@ D.38870, pFrameStore
	bne	.L679	@,
.L678:
	mov	r0, #0	@ D.38868,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L680:
	ldr	ip, [r3], #4	@ D.38870, <variable>.DPB.fs
	cmp	ip, r1	@ D.38870, pFrameStore
	beq	.L678	@,
	ldr	ip, [r2, #4]	@ D.38870, <variable>.DPB.fs
	add	r2, r3, #4	@ ivtmp.2263, tmp150,
	cmp	ip, r1	@ D.38870, pFrameStore
	beq	.L678	@,
.L679:
	add	r0, r0, #1	@ tmp149, i,
	mov	r3, r2	@ tmp150, ivtmp.2263
	cmp	r0, r4	@ tmp149, D.38873
	add	r0, r0, #1	@ i, tmp149,
	bcc	.L680	@,
.L677:
	mov	r0, #1	@ D.38868,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	IsOutDPB, .-IsOutDPB
	.align	2
	.global	UpdatePicQpInf
	.type	UpdatePicQpInf, %function
UpdatePicQpInf:
	.fnstart
.LFB1448:
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
	ldr	r2, [r1, #28]	@ <variable>.MaxQp, <variable>.MaxQp
	ldr	r3, [r1, #32]	@ <variable>.MinQp, <variable>.MinQp
	cmp	r2, r0	@ <variable>.MaxQp, SlcQp
	strge	r2, [r1, #28]	@, <variable>.MaxQp, <variable>.MaxQp
	strlt	r0, [r1, #28]	@, SlcQp, <variable>.MaxQp
	cmp	r3, r0	@ <variable>.MinQp, SlcQp
	strle	r3, [r1, #32]	@, <variable>.MinQp, <variable>.MinQp
	strgt	r0, [r1, #32]	@, SlcQp, <variable>.MinQp
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UpdatePicQpInf, .-UpdatePicQpInf
	.align	2
	.global	StopPicNum
	.type	StopPicNum, %function
StopPicNum:
	.fnstart
.LFB1450:
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
	.size	StopPicNum, .-StopPicNum
	.align	2
	.global	H264_GetPicStreamSize
	.type	H264_GetPicStreamSize, %function
H264_GetPicStreamSize:
	.fnstart
.LFB1452:
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
	movw	r3, #55172	@ tmp138,
	ldr	r3, [r0, r3]	@ pH264SliceParam, <variable>.DecPicPara.pFirstSlice
	cmp	r3, #0	@ pH264SliceParam,
	moveq	r0, r3	@ TotalSize, pH264SliceParam
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #0	@ TotalSize,
.L695:
	ldr	r2, [r3, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r3, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r3, #4056]	@ pH264SliceParam, <variable>.pNextSlice
	add	ip, r1, r2	@ tmp139, <variable>.valid_bitlen, <variable>.valid_bitlen
	add	r2, ip, #7	@ tmp142, tmp139,
	cmp	r3, #0	@ pH264SliceParam,
	add	r0, r0, r2, lsr #3	@, TotalSize, TotalSize, tmp142,
	bne	.L695	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264_GetPicStreamSize, .-H264_GetPicStreamSize
	.align	2
	.global	ExitSlice
	.type	ExitSlice, %function
ExitSlice:
	.fnstart
.LFB1463:
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
	movw	r4, #20684	@ tmp137,
	movw	ip, #13584	@ tmp140,
	ldr	r1, [r0, r4]	@ D.40699, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r3, [r0, ip]	@ <variable>.PPS, <variable>.PPS
	movw	r6, #13580	@ tmp138,
	mov	r2, #2208	@ tmp142,
	ldr	ip, [r0, r6]	@ <variable>.SPS, <variable>.SPS
	movw	r5, #20673	@ tmp158,
	movw	r4, #20724	@ tmp152,
	mla	r6, r2, r1, r3	@ tmp143, tmp142, D.40699, <variable>.PPS
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r5, [r0, r4]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r4, #20692	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movw	r6, #22328	@ tmp148,
	str	r1, [r0, r6]	@ D.40699, <variable>.PrevSlice.pic_parameter_set_id
	movw	r1, #3992	@ tmp146,
	mla	r2, r1, r2, ip	@ sps, tmp146, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r1, #22360	@ tmp151,
	ldr	ip, [r2, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r5, [r0, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	movw	r1, #22336	@ tmp154,
	str	r4, [r0, r1]	@ <variable>.CurrSlice.frame_num, <variable>.PrevSlice.frame_num
	movw	r1, #22324	@ tmp149,
	str	ip, [r0, r1]	@ <variable>.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	movw	ip, #22320	@ tmp157,
	strb	r3, [r0, ip]	@ <variable>.CurrSlice.field_pic_flag, <variable>.PrevSlice.field_pic_flag
	movwne	r3, #20674	@ tmp164,
	ldrneb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movwne	r3, #22321	@ tmp163,
	movw	r1, #20704	@ tmp168,
	ldr	r1, [r0, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	strneb	ip, [r0, r3]	@ <variable>.CurrSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	movw	r3, #20675	@ tmp171,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	ip, #22322	@ tmp170,
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	strb	r3, [r0, ip]	@ <variable>.CurrSlice.nal_unit_type, <variable>.PrevSlice.nal_unit_type
	movw	r3, #22332	@ tmp167,
	str	r1, [r0, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevSlice.nal_ref_idc
	movweq	r3, #20712	@ tmp177,
	ldreq	r1, [r0, r3]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	movweq	r3, #22340	@ tmp176,
	streq	r1, [r0, r3]	@ <variable>.CurrSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	r3, [r2, #2900]	@ prephitmp.2353, <variable>.pic_order_cnt_type
	cmp	r3, #0	@ prephitmp.2353,
	bne	.L701	@,
	movw	r1, #19788	@ tmp180,
	movw	r3, #19792	@ tmp183,
	ldr	ip, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r3, #22344	@ tmp179,
	str	ip, [r0, r3]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22348	@ tmp182,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r2, #2900]	@ prephitmp.2353, <variable>.pic_order_cnt_type
.L701:
	cmp	r3, #1	@ prephitmp.2353,
	bne	.L702	@,
	movw	r2, #19836	@ tmp186,
	movw	ip, #19840	@ tmp189,
	ldr	r1, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r3, #22352	@ tmp185,
	ldr	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	ip, #22356	@ tmp188,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	str	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
.L702:
	movw	r3, #55476	@ tmp191,
	ldr	ip, [r0, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	add	r1, ip, #1	@ tmp194, <variable>.TotalSlice,
	str	r1, [r0, r3]	@ tmp194, <variable>.TotalSlice
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	ExitSlice, .-ExitSlice
	.align	2
	.global	PicTypeStatistic
	.type	PicTypeStatistic, %function
PicTypeStatistic:
	.fnstart
.LFB1464:
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
	movw	r3, #20672	@ tmp134,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L707	@,
	bcs	.L712	@,
	movw	r1, #52764	@ tmp140,
	ldr	r2, [r0, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	movne	r2, #1	@ tmp143,
	strne	r2, [r0, r1]	@ tmp143, <variable>.CurrPic.pic_type
	movw	r1, #52768	@ tmp150,
	mov	r2, #0	@ tmp151,
	str	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	ldmfd	sp, {fp, sp, pc}	@
.L712:
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	ldmnefd	sp, {fp, sp, pc}	@
	movw	r3, #20675	@ tmp146,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	ip, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	ip, #52768	@ tmp148,
	moveq	r2, #1	@ tmp149,
	streq	r2, [r0, ip]	@ tmp149, <variable>.CurrPic.is_idr_pic
	movwne	r1, #52768	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	ldmfd	sp, {fp, sp, pc}	@
.L707:
	movw	r3, #52764	@ tmp136,
	movw	r1, #52768	@ tmp138,
	mov	ip, #2	@ tmp137,
	mov	r2, #0	@ tmp139,
	str	ip, [r0, r3]	@ tmp137, <variable>.CurrPic.pic_type
	str	r2, [r0, r1]	@ tmp139, <variable>.CurrPic.is_idr_pic
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PicTypeStatistic, .-PicTypeStatistic
	.align	2
	.global	PassBytes
	.type	PassBytes, %function
PassBytes:
	.fnstart
.LFB1476:
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
	ldr	r3, [r0, #368]	@ D.42145, <variable>.pCurrNal
	cmp	r3, #0	@ D.42145,
	cmpne	r1, #0	@, len,
	bne	.L720	@,
.L714:
	mvn	r0, #0	@ D.42151,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L720:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ D.42152, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp155, D.42152, D.42152,
	add	ip, r3, ip, asl #2	@, tmp157, D.42145, tmp155,
	ldr	ip, [ip, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	ip, #0	@ <variable>.streamBuffer,
	beq	.L714	@,
	ldr	ip, [r3, #68]	@ D.42159, <variable>.nal_segment
	cmp	ip, #2	@ D.42159,
	bhi	.L714	@,
	cmp	r2, #1	@ D.42152,
	bhi	.L714	@,
	cmp	ip, r2	@ D.42159, segment_idx
	bls	.L714	@,
	mov	r4, r1, asl #3	@ len.2420, len,
	mov	r6, #28	@ tmp188,
.L718:
	mla	r3, r6, r2, r3	@ tmp163, tmp188, segment_idx, D.42145
	add	r2, r2, #1	@ segment_idx, segment_idx,
	add	r5, r3, #24	@ tmp164, tmp163,
	ldr	r1, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r1, r1, asl #3	@ D.42167, <variable>.bitstream_length,
	add	ip, r4, ip	@ D.42165, len.2420, <variable>.bitsoffset
	cmp	ip, r1	@ D.42165, D.42167
	rsb	r4, r1, ip	@ len.2420, D.42167, D.42165
	bls	.L721	@,
	str	r1, [r3, #24]	@ D.42167, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2421, <variable>.pCurrNal
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, r1, #1	@ tmp184, <variable>.nal_used_segment,
	strb	ip, [r3, #0]	@ tmp184, <variable>.nal_used_segment
	ldr	r3, [r0, #368]	@ D.42145, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r2	@ <variable>.nal_segment, segment_idx
	bhi	.L718	@,
	mov	r0, #0	@ D.42151,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L721:
	str	ip, [r5, #0]	@ D.42165, <variable>.bitsoffset
	mov	r0, #1	@ D.42151,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PassBytes, .-PassBytes
	.align	2
	.global	GetBytes
	.type	GetBytes, %function
GetBytes:
	.fnstart
.LFB1477:
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
	cmp	r1, #0	@ pdes
	bne	.L731	@,
.L723:
	mvn	r0, #0	@ D.42193,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L731:
	ldr	r5, [r0, #368]	@ D.42189, <variable>.pCurrNal
	cmp	r5, #0	@ D.42189,
	cmpne	r2, #0	@, len,
	movne	r4, #0	@, tmp158
	moveq	r4, #1	@, tmp158
	beq	.L723	@,
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ D.42194, <variable>.nal_used_segment
	rsb	r3, ip, ip, asl #3	@, tmp162, D.42194, D.42194,
	add	r3, r5, r3, asl #2	@, tmp164, D.42189, tmp162,
	ldr	r3, [r3, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r3, #0	@ <variable>.streamBuffer,
	beq	.L723	@,
	ldr	r3, [r5, #68]	@ D.42201, <variable>.nal_segment
	cmp	r3, #2	@ D.42201,
	bhi	.L723	@,
	cmp	ip, #1	@ D.42194,
	bhi	.L723	@,
	cmp	r3, ip	@ D.42201, segment_idx
	bls	.L723	@,
	mov	r9, #28	@ tmp208,
.L728:
	mul	r8, r9, ip	@ tmp168, tmp208, segment_idx
	mov	r3, #0	@ ivtmp.2451,
	add	sl, r8, r5	@ tmp170, tmp168, D.42189
	ldr	r6, [sl, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r5, [sl, #8]	@ D.42206, <variable>.streamBuffer
	ldr	r7, [sl, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r6, r6, #7	@ tmp177, <variable>.bitsoffset,
	add	r7, r5, r7	@ end_byte, D.42206, <variable>.bitstream_length
	add	r5, r5, r6, lsr #3	@, byte_pos, D.42206, tmp177,
.L724:
	add	sl, r3, r5	@ D.45476, ivtmp.2451, byte_pos
	add	r6, r3, r1	@ D.45474, ivtmp.2451, pdes
	cmp	r7, sl	@ end_byte, D.45476
	bls	.L732	@,
	ldrb	sl, [r5, r3]	@ zero_extendqisi2	@ tmp186,* ivtmp.2451
	add	r4, r4, #1	@ cnt, cnt,
	cmp	r2, r4	@ len, cnt
	strb	sl, [r1, r3]	@ tmp186,* ivtmp.2451
	add	r3, r3, #1	@ ivtmp.2451, ivtmp.2451,
	ldr	r6, [r0, #368]	@ temp.2469, <variable>.pCurrNal
	add	r6, r8, r6	@ tmp191, tmp207, temp.2469
	ldr	sl, [r6, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	sl, sl, #8	@ tmp199, <variable>.bitsoffset,
	str	sl, [r6, #24]	@ tmp199, <variable>.bitsoffset
	bhi	.L724	@,
	mov	r0, r2	@ D.42193, len
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L732:
	ldr	r3, [r0, #368]	@ temp.2471, <variable>.pCurrNal
	add	ip, ip, #1	@ segment_idx, segment_idx,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	r5, r1, #1	@ tmp202, <variable>.nal_used_segment,
	strb	r5, [r3, #0]	@ tmp202, <variable>.nal_used_segment
	ldr	r5, [r0, #368]	@ D.42189, <variable>.pCurrNal
	ldr	r1, [r5, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, ip	@ <variable>.nal_segment, segment_idx
	movhi	r1, r6	@ pdes, D.45474
	bhi	.L728	@
.L727:
	mov	r0, r4	@ D.42193, cnt
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	GetBytes, .-GetBytes
	.align	2
	.global	InitOldSlice
	.type	InitOldSlice, %function
InitOldSlice:
	.fnstart
.LFB1481:
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
	movw	r1, #13576	@ tmp135,
	ldr	r2, [r0, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r3, #22328	@ tmp134,
	movw	ip, #22356	@ tmp156,
	movw	r1, #22320	@ tmp139,
	str	r2, [r0, r3]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	mov	r3, #0	@ tmp140,
	str	r3, [r0, ip]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	movw	ip, #22336	@ tmp137,
	movw	r2, #:lower16:88888	@ tmp160,
	movt	r2, #:upper16:88888	@ tmp160,
	str	r2, [r0, ip]	@ tmp160, <variable>.PrevSlice.frame_num
	movw	r2, #22321	@ tmp142,
	movw	ip, #22332	@ tmp145,
	strb	r3, [r0, r1]	@ tmp140, <variable>.PrevSlice.field_pic_flag
	mov	r1, #2	@ tmp143,
	strb	r1, [r0, r2]	@ tmp143, <variable>.PrevSlice.bottom_field_flag
	movw	r2, #22322	@ tmp147,
	mov	r1, #7	@ tmp146,
	str	r1, [r0, ip]	@ tmp146, <variable>.PrevSlice.nal_ref_idc
	mov	ip, #32	@ tmp148,
	movw	r1, #22344	@ tmp150,
	strb	ip, [r0, r2]	@ tmp148, <variable>.PrevSlice.nal_unit_type
	movw	r2, #22348	@ tmp152,
	mov	ip, #3	@ tmp151,
	str	ip, [r0, r1]	@ tmp151, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r1, #0	@ tmp153,
	movw	ip, #22360	@ tmp158,
	str	r1, [r0, r2]	@ tmp153, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #22352	@ tmp154,
	mov	r1, #262144	@ tmp159,
	str	r3, [r0, r2]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	str	r1, [r0, ip]	@ tmp159, <variable>.PrevSlice.first_mb_in_slice
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitOldSlice, .-InitOldSlice
	.align	2
	.global	FindNaluArraySlot
	.type	FindNaluArraySlot, %function
FindNaluArraySlot:
	.fnstart
.LFB1489:
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
	ldrb	r2, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r2, r0, #96	@ ivtmp.2529, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L737	@,
	b	.L736	@
.L746:
	ldrb	ip, [r2, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r2, r2, #192	@ ivtmp.2529, ivtmp.2529,
	cmp	ip, #0	@ <variable>.is_valid,
	beq	.L736	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L738	@,
.L737:
	ldrb	r1, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L746	@,
.L736:
	cmp	r3, #136	@ Pos,
	bhi	.L738	@,
	add	r1, r3, r3, asl #1	@, tmp155, Pos, Pos,
	mov	r2, #1	@ tmp159,
	add	r0, r0, r1, asl #5	@, tmp157, pH264Ctx, tmp155,
	strb	r2, [r0, #377]	@ tmp159, <variable>.is_valid
	mov	r0, r3	@, D.43051
	ldmfd	sp, {fp, sp, pc}	@
.L738:
	mvn	r3, #0	@ D.43051,
	mov	r0, r3	@, D.43051
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FindNaluArraySlot, .-FindNaluArraySlot
	.align	2
	.global	HaveSliceToDec
	.type	HaveSliceToDec, %function
HaveSliceToDec:
	.fnstart
.LFB1491:
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
	movw	r1, #55444	@ tmp136,
	ldr	r3, [r0, r1]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r3, #0	@ <variable>.SliceParaNum,
	mvneq	r0, #0	@,,
	movne	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	HaveSliceToDec, .-HaveSliceToDec
	.global	__aeabi_idiv
	.align	2
	.global	H264GetDar
	.type	H264GetDar, %function
H264GetDar:
	.fnstart
.LFB1473:
	@ args = 4, pretend = 0, frame = 0
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
	cmp	r0, #0	@ ar_idc
	mov	ip, r1	@ sar_width, sar_width
	beq	.L752	@,
	subs	r1, r0, #255	@ D.41634, ar_idc,
	movne	r1, #1	@ D.41634
	cmp	r0, #255	@ ar_idc,
	cmpne	r0, #16	@, ar_idc,
	bgt	.L752	@,
	cmp	ip, #0	@ sar_width,
	cmpne	r2, #0	@, sar_height,
	beq	.L769	@,
.L753:
	cmp	r0, #1	@ ar_idc,
	moveq	r4, #5	@ final_dar,
	beq	.L755	@,
	cmp	r1, #0	@ D.41634,
	ldr	lr, [fp, #4]	@ img_height, img_height
	movwne	r2, #:lower16:.LANCHOR0	@ tmp162,
	movtne	r2, #:upper16:.LANCHOR0	@ tmp162,
	addne	r1, r2, r0, asl #3	@, tmp165, tmp162, ar_idc,
	ldrne	ip, [r2, r0, asl #3]	@ sar_width, SarTable
	mov	r0, r3, asl #10	@ tmp166, img_width,
	ldrne	r2, [r1, #4]	@ sar_height, SarTable
	mul	r0, ip, r0	@, sar_width, tmp166
	mul	r1, lr, r2	@, img_height, sar_height
	bl	__aeabi_idiv	@
	sub	r1, r0, #2400	@ iftmp.717, dar,
	sub	r3, r0, #2256	@ iftmp.718, dar,
	sub	r2, r1, #6	@ iftmp.717, iftmp.717,
	sub	r3, r3, #7	@ iftmp.718, iftmp.718,
	cmp	r2, #0	@ iftmp.717,
	rsblt	r2, r0, #2400	@ tmp173, dar,
	addlt	r2, r2, #6	@ iftmp.717, tmp173,
	cmp	r3, #0	@ iftmp.718,
	rsblt	r1, r0, #2256	@ tmp175, dar,
	addlt	r1, r1, #7	@ iftmp.2581, tmp175,
	movge	r1, r3	@ iftmp.2581, iftmp.718
	cmp	r2, r1	@ iftmp.717, iftmp.2581
	movlt	r4, #4	@ final_dar,
	blt	.L755	@,
	cmp	r3, #0	@ iftmp.718,
	sub	ip, r0, #1808	@ iftmp.2580, dar,
	rsblt	r3, r0, #2256	@ tmp176, dar,
	sub	r2, ip, #12	@ iftmp.2580, iftmp.2580,
	addlt	r3, r3, #7	@ iftmp.718, tmp176,
	cmp	r2, #0	@ iftmp.2580,
	rsblt	r1, r0, #1808	@ tmp178, dar,
	addlt	r1, r1, #12	@ iftmp.720, tmp178,
	movge	r1, r2	@ iftmp.720, iftmp.2580
	cmp	r3, r1	@ iftmp.718, iftmp.720
	movlt	r4, #3	@ final_dar,
	blt	.L755	@,
	cmp	r2, #0	@ iftmp.2580,
	sub	r4, r0, #1360	@ iftmp.722, dar,
	sub	r4, r4, #5	@ iftmp.722, iftmp.722,
	rsblt	r2, r0, #1808	@ tmp179, dar,
	addlt	r2, r2, #12	@ iftmp.2580, tmp179,
	cmp	r4, #0	@ iftmp.722,
	rsblt	r4, r0, #1360	@ tmp181, dar,
	addlt	r4, r4, #5	@ iftmp.722, tmp181,
	cmp	r2, r4	@ iftmp.2580, iftmp.722
	movlt	r4, #2	@ final_dar,
	movge	r4, #1	@ final_dar,
	b	.L755	@
.L769:
	cmp	r0, #255	@ ar_idc,
	bne	.L753	@,
.L752:
	mov	r4, #0	@ final_dar,
.L755:
	mov	r2, r4	@, final_dar
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, final_dar
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
.LFB1472:
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
	subs	r3, r0, #0	@ pSPS1, pSPS1
	beq	.L802	@,
	cmp	r1, #0	@ pSPS2,
	beq	.L803	@,
	ldr	r6, [r3, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldr	ip, [r1, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	cmp	r6, ip	@ <variable>.profile_idc, <variable>.profile_idc
	cmpeq	r5, r2	@, <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r7, [r1, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	ldrb	r5, [r3, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r0, #0	@, equal.2679
	moveq	r0, #1	@, equal.2679
	cmp	r4, r7	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	movne	ip, #0	@, equal.2680
	andeq	ip, r0, #1	@,, equal.2680, equal.2679
	ldr	r4, [r3, #740]	@ <variable>.level_idc, <variable>.level_idc
	ldr	r7, [r1, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r5, r6	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r2, #0	@, equal.2681
	andeq	r2, ip, #1	@,, equal.2681, equal.2680
	ldr	r6, [r3, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	r4, r7	@ <variable>.level_idc, <variable>.level_idc
	movne	r0, #0	@, equal.2682
	andeq	r0, r2, #1	@,, equal.2682, equal.2681
	ldr	ip, [r1, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r2, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r6, ip	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movne	r6, #0	@, equal
	andeq	r6, r0, #1	@,, equal, equal.2682
	cmp	r2, #0	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L774	@,
	mov	r9, r3	@ ivtmp.2642, pSPS1
	mov	r8, r1	@ ivtmp.2644, pSPS2
	mov	sl, #0	@ i,
	str	r3, [fp, #-48]	@ pSPS1, %sfp
	str	r1, [fp, #-52]	@ pSPS2, %sfp
	b	.L778	@
.L805:
	ldr	r7, [fp, #-48]	@, %sfp
	mov	r4, sl, asl #6	@ tmp287, i,
	ldr	ip, [r9, #760]	@ tmp231, <variable>.ScalingList4x4
	add	r2, r4, r1	@, tmp287,
	ldr	r5, [r8, #760]	@ tmp232, <variable>.ScalingList4x4
	add	r3, r4, r7	@, tmp287,
	str	r2, [fp, #-60]	@, %sfp
	ldr	r0, [r9, #756]	@ tmp235, <variable>.ScalingList4x4
	str	r3, [fp, #-56]	@, %sfp
	ldr	r1, [r8, #756]	@ tmp236, <variable>.ScalingList4x4
	ldr	r3, [r9, #764]	@ tmp239, <variable>.ScalingList4x4
	cmp	ip, r5	@ tmp231, tmp232
	cmpeq	r0, r1	@, tmp235, tmp236
	ldr	r4, [r8, #764]	@ tmp240, <variable>.ScalingList4x4
	ldr	r7, [r9, #768]	@ tmp243, <variable>.ScalingList4x4
	ldr	r0, [r8, #768]	@ tmp244, <variable>.ScalingList4x4
	movne	r2, #0	@, equal.2699
	moveq	r2, #1	@, equal.2699
	ldr	ip, [r9, #772]	@ tmp247, <variable>.ScalingList4x4
	cmp	r3, r4	@ tmp239, tmp240
	movne	r1, #0	@, equal.2703
	andeq	r1, r2, #1	@,, equal.2703, equal.2699
	ldr	r4, [r8, #772]	@ tmp248, <variable>.ScalingList4x4
	cmp	r7, r0	@ tmp243, tmp244
	movne	r5, #0	@, equal.2707
	andeq	r5, r1, #1	@,, equal.2707, equal.2703
	ldr	r3, [r8, #776]	@ tmp252, <variable>.ScalingList4x4
	ldr	r7, [r9, #776]	@ tmp251, <variable>.ScalingList4x4
	cmp	ip, r4	@ tmp247, tmp248
	movne	r1, #0	@, equal.2711
	andeq	r1, r5, #1	@,, equal.2711, equal.2707
	ldr	r2, [r8, #780]	@ tmp256, <variable>.ScalingList4x4
	ldr	r4, [r9, #780]	@ tmp255, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp251, tmp252
	movne	r0, #0	@, equal.2715
	andeq	r0, r1, #1	@,, equal.2715, equal.2711
	ldr	r7, [r9, #784]	@ tmp259, <variable>.ScalingList4x4
	ldr	r3, [r8, #784]	@ tmp260, <variable>.ScalingList4x4
	cmp	r4, r2	@ tmp255, tmp256
	movne	ip, #0	@, equal.2719
	andeq	ip, r0, #1	@,, equal.2719, equal.2715
	ldr	r5, [r8, #788]	@ tmp264, <variable>.ScalingList4x4
	ldr	r0, [r9, #788]	@ tmp263, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp259, tmp260
	movne	r1, #0	@, equal.2723
	andeq	r1, ip, #1	@,, equal.2723, equal.2719
	ldr	r4, [r8, #792]	@ tmp268, <variable>.ScalingList4x4
	ldr	r7, [r9, #792]	@ tmp267, <variable>.ScalingList4x4
	cmp	r0, r5	@ tmp263, tmp264
	movne	ip, #0	@, equal.2727
	andeq	ip, r1, #1	@,, equal.2727, equal.2723
	ldr	r1, [r9, #796]	@ tmp271, <variable>.ScalingList4x4
	ldr	r5, [r8, #796]	@ tmp272, <variable>.ScalingList4x4
	cmp	r7, r4	@ tmp267, tmp268
	movne	r2, #0	@, equal.2731
	andeq	r2, ip, #1	@,, equal.2731, equal.2727
	ldr	r3, [r8, #800]	@ tmp276, <variable>.ScalingList4x4
	ldr	r4, [r9, #800]	@ tmp275, <variable>.ScalingList4x4
	cmp	r1, r5	@ tmp271, tmp272
	movne	r0, #0	@, equal.2735
	andeq	r0, r2, #1	@,, equal.2735, equal.2731
	ldr	ip, [r9, #804]	@ tmp279, <variable>.ScalingList4x4
	ldr	r2, [r8, #804]	@ tmp280, <variable>.ScalingList4x4
	cmp	r4, r3	@ tmp275, tmp276
	movne	r7, #0	@, equal.2739
	andeq	r7, r0, #1	@,, equal.2739, equal.2735
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	ip, r2	@ tmp279, tmp280
	movne	r4, #0	@, equal.2743
	andeq	r4, r7, #1	@,, equal.2743, equal.2739
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r5, [r8, #808]	@ tmp284, <variable>.ScalingList4x4
	ldr	r1, [r9, #808]	@ tmp283, <variable>.ScalingList4x4
	ldr	r7, [ip, #752]	@ tmp295, <variable>.ScalingList4x4
	cmp	r1, r5	@ tmp283, tmp284
	movne	r4, #0	@, equal.2747
	andeq	r4, r4, #1	@,, equal.2747, equal.2743
	ldr	r3, [r0, #752]	@ tmp296, <variable>.ScalingList4x4
	and	r6, r6, r4	@ equal.2751, equal, equal.2747
	ldr	ip, [r9, #812]	@ tmp299, <variable>.ScalingList4x4
	ldr	r2, [r8, #812]	@ tmp300, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp295, tmp296
	movne	r5, #0	@, equal.2755
	andeq	r5, r6, #1	@,, equal.2755, equal.2751
	cmp	ip, r2	@ tmp299, tmp300
	movne	r6, #0	@, equal
	andeq	r6, r5, #1	@,, equal, equal.2755
.L775:
	add	sl, sl, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2642, ivtmp.2642,
	cmp	sl, #8	@ i,
	add	r8, r8, #64	@ ivtmp.2644, ivtmp.2644,
	beq	.L804	@,
.L778:
	ldr	r1, [fp, #-48]	@, %sfp
	add	r4, r1, sl	@ tmp224,, i
	ldr	r1, [fp, #-52]	@, %sfp
	add	r0, r1, sl	@ tmp225,, i
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ D.41532, <variable>.seq_scaling_list_present_flag
	ldrb	r7, [r0, #4]	@ zero_extendqisi2	@ D.41532, <variable>.seq_scaling_list_present_flag
	cmp	r3, r7	@ D.41532, D.41532
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r3, #0	@ D.41532,
	beq	.L775	@,
	cmp	sl, #5	@ i,
	bls	.L805	@,
	ldr	r0, [fp, #-52]	@, %sfp
	mov	r5, sl, asl #8	@ tmp302, i,
	ldr	r4, [fp, #-48]	@, %sfp
	sub	r1, r5, #400	@ tmp303, tmp302,
	ldr	r7, [fp, #-48]	@, %sfp
	add	r3, r0, r1	@ ivtmp.2629,, tmp303
	add	r2, r4, r1	@ ivtmp.2626,, tmp303
	ldr	r5, [r0, r1]	@ tmp308, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2626, ivtmp.2626,
	mov	ip, #2	@ j,
	ldr	r4, [r7, r1]	@ tmp307, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2629, ivtmp.2629,
	ldr	r7, [r2, #4]	@ tmp436, <variable>.ScalingList8x8
	ldr	r3, [r3, #4]	@ tmp437, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp307, tmp308
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp436, tmp437
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L777:
	mov	r2, r0	@ tmp403, ivtmp.2626
	mov	r3, r1	@ tmp404, ivtmp.2629
	ldr	r7, [r2], #4	@ tmp408, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp409, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp415, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2626, tmp403,
	ldr	r2, [r1, #4]	@ tmp416, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp408, tmp409
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2629, tmp404,
	cmp	r4, r2	@ tmp415, tmp416
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L777	@,
	add	sl, sl, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2642, ivtmp.2642,
	cmp	sl, #8	@ i,
	add	r8, r8, #64	@ ivtmp.2644, ivtmp.2644,
	bne	.L778	@,
.L804:
	ldr	r3, [fp, #-48]	@ pSPS1, %sfp
	ldr	r1, [fp, #-52]	@ pSPS2, %sfp
.L774:
	ldr	r2, [r3, #2900]	@ D.41551, <variable>.pic_order_cnt_type
	ldr	r4, [r1, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r0, [r3, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	ldr	r5, [r1, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r2, r4	@ D.41551, <variable>.pic_order_cnt_type
	cmpeq	r0, r5	@, <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movne	ip, #0	@, equal.2683
	moveq	ip, #1	@, equal.2683
	cmp	r2, #0	@ D.41551,
	and	r6, ip, r6	@ equal.2674, equal.2683, equal
	bne	.L806	@,
	ldr	r7, [r3, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	cmp	r7, r2	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	movne	r6, #0	@, equal.2674
	andeq	r6, r6, #1	@,, equal.2674, equal.2674
.L779:
	ldrb	r2, [r1, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r5, [r3, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r0, [r1, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r7, [r3, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r1, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	cmp	r7, r2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	cmpeq	r5, r0	@, <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r4, [r3, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldr	r5, [r3, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r1, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r2, #0	@, equal.2687
	moveq	r2, #1	@, equal.2687
	cmp	r4, ip	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movne	r4, #0	@, equal.2688
	andeq	r4, r2, #1	@,, equal.2688, equal.2687
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.41584, <variable>.frame_mbs_only_flag
	ldrb	ip, [r1, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r5, r0	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r0, #0	@, equal.2689
	andeq	r0, r4, #1	@,, equal.2689, equal.2688
	cmp	ip, r2	@ <variable>.frame_mbs_only_flag, D.41584
	movne	r0, #0	@, equal.2690
	andeq	r0, r0, #1	@,, equal.2690, equal.2689
	cmp	r2, #0	@ D.41584,
	and	r6, r0, r6	@ equal.2675, equal.2690, equal.2674
	bne	.L783	@,
	ldrb	r4, [r3, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	ldrb	ip, [r1, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r4, ip	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movne	r6, #0	@, equal.2675
	andeq	r6, r6, #1	@,, equal.2675, equal.2675
.L783:
	ldrb	r2, [r3, #21]	@ zero_extendqisi2	@ D.41595, <variable>.frame_cropping_flag
	ldrb	r0, [r3, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldrb	r4, [r1, #21]	@ zero_extendqisi2	@ <variable>.frame_cropping_flag, <variable>.frame_cropping_flag
	ldrb	ip, [r1, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	cmp	r4, r2	@ <variable>.frame_cropping_flag, D.41595
	cmpeq	r0, ip	@, <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	movne	r0, #0	@, equal.2691
	moveq	r0, #1	@, equal.2691
	cmp	r2, #0	@ D.41595,
	and	r2, r0, r6	@ equal.2676, equal.2691, equal.2675
	beq	.L784	@,
	ldr	r5, [r1, #3960]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r4, [r3, #3956]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r0, [r1, #3956]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r7, [r3, #3960]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r6, [r3, #3964]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	cmp	r7, r5	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	cmpeq	r4, r0	@, <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	ip, [r1, #3964]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r4, [r3, #3968]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	ldr	r0, [r1, #3968]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r5, #0	@, equal.2692
	moveq	r5, #1	@, equal.2692
	cmp	r6, ip	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	movne	ip, #0	@, equal.2693
	andeq	ip, r5, #1	@,, equal.2693, equal.2692
	cmp	r4, r0	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r0, #0	@, equal.2694
	andeq	r0, ip, #1	@,, equal.2694, equal.2693
	and	r2, r2, r0	@ equal.2676, equal.2676, equal.2694
.L784:
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, r3	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	movne	r2, #0	@, tmp392
	andeq	r2, r2, #1	@,, tmp392, equal.2676
	cmp	r2, #0	@ tmp392,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L772:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L806:
	cmp	r2, #1	@ D.41551,
	bne	.L779	@,
	ldr	r7, [r3, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldr	ip, [r1, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldrb	r5, [r3, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldrb	r0, [r1, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r4, [r3, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	cmp	r7, ip	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	cmpeq	r5, r0	@, <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r2, [r1, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	ldr	r7, [r3, #2916]	@ D.41566, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	ldr	r0, [r1, #2916]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	ip, #0	@, equal.2684
	moveq	ip, #1	@, equal.2684
	cmp	r4, r2	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movne	r5, #0	@, equal.2685
	andeq	r5, ip, #1	@,, equal.2685, equal.2684
	cmp	r7, r0	@ D.41566, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	r5, #0	@, equal.2686
	andeq	r5, r5, #1	@,, equal.2686, equal.2685
	cmp	r7, #0	@ D.41566,
	and	r6, r6, r5	@ equal.2674, equal.2674, equal.2686
	beq	.L779	@,
	ldr	r4, [r3, #2920]	@ tmp339, <variable>.offset_for_ref_frame
	mov	r7, r7, asl #2	@ D.45636, D.41566,
	ldr	r5, [r1, #2920]	@ tmp340, <variable>.offset_for_ref_frame
	mov	r2, #4	@ ivtmp.2617,
	sub	r0, r7, #4	@ tmp397, D.45636,
	cmp	r4, r5	@ tmp339, tmp340
	movne	r6, #0	@, equal.2674
	andeq	r6, r6, #1	@,, equal.2674, equal.2674
	cmp	r2, r7	@ ivtmp.2617, D.45636
	ubfx	r0, r0, #2, #1	@ tmp398, tmp397,,
	beq	.L779	@,
	cmp	r0, #0	@ tmp398,
	beq	.L782	@,
	ldr	r4, [r3, #2924]	@ tmp433, <variable>.offset_for_ref_frame
	mov	r2, #8	@ ivtmp.2617,
	ldr	r0, [r1, #2924]	@ tmp434, <variable>.offset_for_ref_frame
	cmp	r4, r0	@ tmp433, tmp434
	movne	r6, #0	@, equal.2674
	andeq	r6, r6, #1	@,, equal.2674, equal.2674
	cmp	r2, r7	@ ivtmp.2617, D.45636
	beq	.L779	@,
.L782:
	add	r0, r2, #4	@ tmp399, ivtmp.2617,
	add	r4, r3, r2	@ tmp419, pSPS1, ivtmp.2617
	add	r2, r1, r2	@ tmp420, pSPS2, ivtmp.2617
	add	ip, r3, r0	@ tmp426, pSPS1, tmp399
	add	r8, r1, r0	@ tmp427, pSPS2, tmp399
	ldr	r5, [r4, #2920]	@ tmp421, <variable>.offset_for_ref_frame
	ldr	r4, [r2, #2920]	@ tmp422, <variable>.offset_for_ref_frame
	add	r2, r0, #4	@ ivtmp.2617, tmp399,
	ldr	ip, [ip, #2920]	@ tmp428, <variable>.offset_for_ref_frame
	ldr	r0, [r8, #2920]	@ tmp429, <variable>.offset_for_ref_frame
	cmp	r5, r4	@ tmp421, tmp422
	movne	r6, #0	@, equal.2674
	andeq	r6, r6, #1	@,, equal.2674, equal.2674
	cmp	ip, r0	@ tmp428, tmp429
	movne	r6, #0	@, equal.2674
	andeq	r6, r6, #1	@,, equal.2674, equal.2674
	cmp	r2, r7	@ ivtmp.2617, D.45636
	bne	.L782	@,
	b	.L779	@
.L803:
	mov	r0, r1	@, pSPS2
	movw	r2, #:lower16:.LC2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #8894	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L772	@
.L802:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #8893	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L772	@
	.fnend
	.size	SPSEqual, .-SPSEqual
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
.LFB1470:
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
	subs	r2, r0, #0	@, pPPS1
	str	r2, [fp, #-48]	@, %sfp
	beq	.L828	@,
	cmp	r1, #0	@ pPPS2,
	beq	.L829	@,
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r3, [r1, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r2, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r7, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r7, [fp, #-48]	@, %sfp
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	ldr	r4, [r7, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r5, r3	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	cmpeq	r4, r2	@, <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r3, #0	@, equal.2839
	moveq	r3, #1	@, equal.2839
	cmp	r0, ip	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	movne	r0, #0	@, equal.2840
	andeq	r0, r3, #1	@,, equal.2840, equal.2839
	ldr	ip, [r1, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	cmp	r5, r4	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r2, #0	@, equal.2841
	andeq	r2, r0, #1	@,, equal.2841, equal.2840
	ldr	r3, [r7, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r5, [r7, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r4, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	cmp	r3, ip	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movne	r3, #0	@, equal.2842
	andeq	r3, r2, #1	@,, equal.2842, equal.2841
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r5, r4	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	movne	r0, #0	@, equal.2843
	andeq	r0, r3, #1	@,, equal.2843, equal.2842
	ldr	r5, [r7, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	ldr	r4, [r1, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, ip	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	movne	r2, #0	@, equal.2844
	andeq	r2, r0, #1	@,, equal.2844, equal.2843
	ldr	ip, [r1, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	ldr	r0, [r7, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	cmp	r5, r4	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	movne	r3, #0	@, equal.2845
	andeq	r3, r2, #1	@,, equal.2845, equal.2844
	ldr	r5, [r7, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldr	r4, [r1, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	cmp	r0, ip	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	movne	r0, #0	@, equal.2846
	andeq	r0, r3, #1	@,, equal.2846, equal.2845
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r5, r4	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movne	r2, #0	@, equal.2847
	andeq	r2, r0, #1	@,, equal.2847, equal.2846
	ldrb	r5, [r7, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	cmp	r3, ip	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	movne	r3, #0	@, equal.2848
	andeq	r3, r2, #1	@,, equal.2848, equal.2847
	ldr	r2, [r7, #60]	@ D.41281, <variable>.transform_8x8_mode_flag
	ldr	ip, [r1, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	cmp	r5, r4	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	movne	r0, #0	@, equal.2849
	andeq	r0, r3, #1	@,, equal.2849, equal.2848
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ D.41284, <variable>.pic_scaling_matrix_present_flag
	ldrb	r5, [r1, #18]	@ zero_extendqisi2	@ <variable>.pic_scaling_matrix_present_flag, <variable>.pic_scaling_matrix_present_flag
	cmp	r2, ip	@ D.41281, <variable>.transform_8x8_mode_flag
	movne	r0, #0	@, equal.2850
	andeq	r0, r0, #1	@,, equal.2850, equal.2849
	cmp	r5, r3	@ <variable>.pic_scaling_matrix_present_flag, D.41284
	movne	r5, #0	@, equal
	andeq	r5, r0, #1	@,, equal, equal.2850
	cmp	r3, #0	@ D.41284,
	beq	.L811	@,
	mov	ip, r2, asl #1	@ tmp237, D.41281,
	adds	r0, ip, #6	@, tmp237,
	str	r0, [fp, #-56]	@, %sfp
	beq	.L811	@,
	mov	sl, r7	@ ivtmp.2805,
	mov	r9, r1	@ ivtmp.2807, pPPS2
	mov	r8, #0	@ i,
	str	r1, [fp, #-52]	@ pPPS2, %sfp
	b	.L815	@
.L826:
	cmp	r8, #5	@ i,
	bhi	.L813	@,
	ldr	r6, [sl, #72]	@ tmp245, <variable>.ScalingList4x4
	add	r8, r8, #1	@ i, i,
	ldr	ip, [r9, #72]	@ tmp246, <variable>.ScalingList4x4
	ldr	r0, [sl, #68]	@ tmp249, <variable>.ScalingList4x4
	ldr	r1, [r9, #68]	@ tmp250, <variable>.ScalingList4x4
	ldr	r2, [sl, #76]	@ tmp253, <variable>.ScalingList4x4
	cmp	r6, ip	@ tmp245, tmp246
	cmpeq	r0, r1	@, tmp249, tmp250
	ldr	r3, [r9, #76]	@ tmp254, <variable>.ScalingList4x4
	ldr	r7, [sl, #80]	@ tmp257, <variable>.ScalingList4x4
	ldr	r6, [r9, #80]	@ tmp258, <variable>.ScalingList4x4
	movne	r4, #0	@, equal.2855
	moveq	r4, #1	@, equal.2855
	ldr	r0, [sl, #84]	@ tmp261, <variable>.ScalingList4x4
	cmp	r2, r3	@ tmp253, tmp254
	movne	ip, #0	@, equal.2859
	andeq	ip, r4, #1	@,, equal.2859, equal.2855
	ldr	r2, [r9, #84]	@ tmp262, <variable>.ScalingList4x4
	cmp	r7, r6	@ tmp257, tmp258
	movne	r6, #0	@, equal.2863
	andeq	r6, ip, #1	@,, equal.2863, equal.2859
	ldr	r4, [sl, #88]	@ tmp265, <variable>.ScalingList4x4
	ldr	r3, [r9, #88]	@ tmp266, <variable>.ScalingList4x4
	cmp	r0, r2	@ tmp261, tmp262
	movne	r1, #0	@, equal.2867
	andeq	r1, r6, #1	@,, equal.2867, equal.2863
	ldr	r7, [sl, #92]	@ tmp269, <variable>.ScalingList4x4
	ldr	r2, [r9, #92]	@ tmp270, <variable>.ScalingList4x4
	cmp	r4, r3	@ tmp265, tmp266
	movne	ip, #0	@, equal.2871
	andeq	ip, r1, #1	@,, equal.2871, equal.2867
	ldr	r0, [sl, #96]	@ tmp273, <variable>.ScalingList4x4
	ldr	r3, [r9, #96]	@ tmp274, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp269, tmp270
	movne	r4, #0	@, equal.2875
	andeq	r4, ip, #1	@,, equal.2875, equal.2871
	ldr	r7, [sl, #100]	@ tmp277, <variable>.ScalingList4x4
	ldr	r2, [r9, #100]	@ tmp278, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp273, tmp274
	movne	r1, #0	@, equal.2879
	andeq	r1, r4, #1	@,, equal.2879, equal.2875
	ldr	ip, [sl, #104]	@ tmp281, <variable>.ScalingList4x4
	ldr	r3, [r9, #104]	@ tmp282, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp277, tmp278
	movne	r0, #0	@, equal.2883
	andeq	r0, r1, #1	@,, equal.2883, equal.2879
	ldr	r4, [sl, #108]	@ tmp285, <variable>.ScalingList4x4
	ldr	r2, [r9, #108]	@ tmp286, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp281, tmp282
	movne	r7, #0	@, equal.2887
	andeq	r7, r0, #1	@,, equal.2887, equal.2883
	ldr	r0, [sl, #112]	@ tmp289, <variable>.ScalingList4x4
	ldr	r3, [r9, #112]	@ tmp290, <variable>.ScalingList4x4
	cmp	r4, r2	@ tmp285, tmp286
	movne	r1, #0	@, equal.2891
	andeq	r1, r7, #1	@,, equal.2891, equal.2887
	ldr	ip, [sl, #116]	@ tmp293, <variable>.ScalingList4x4
	ldr	r4, [r9, #116]	@ tmp294, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp289, tmp290
	movne	r7, #0	@, equal.2895
	andeq	r7, r1, #1	@,, equal.2895, equal.2891
	ldr	r1, [sl, #120]	@ tmp297, <variable>.ScalingList4x4
	ldr	r3, [r9, #120]	@ tmp298, <variable>.ScalingList4x4
	cmp	ip, r4	@ tmp293, tmp294
	movne	r2, #0	@, equal.2899
	andeq	r2, r7, #1	@,, equal.2899, equal.2895
	ldr	r7, [fp, #-48]	@, %sfp
	cmp	r1, r3	@ tmp297, tmp298
	movne	r3, #0	@, equal.2903
	andeq	r3, r2, #1	@,, equal.2903, equal.2899
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	ip, [sl, #124]	@ tmp307, <variable>.ScalingList4x4
	and	r3, r5, r3	@ equal.2907, equal, equal.2903
	ldr	r4, [r7, r8, asl #6]	@ tmp303, <variable>.ScalingList4x4
	add	sl, sl, #64	@ ivtmp.2805, ivtmp.2805,
	ldr	r0, [r1, r8, asl #6]	@ tmp304, <variable>.ScalingList4x4
	ldr	r2, [r9, #124]	@ tmp308, <variable>.ScalingList4x4
	add	r9, r9, #64	@ ivtmp.2807, ivtmp.2807,
	cmp	r4, r0	@ tmp303, tmp304
	movne	r3, #0	@, equal.2911
	andeq	r3, r3, #1	@,, equal.2911, equal.2907
	cmp	ip, r2	@ tmp307, tmp308
	movne	r5, #0	@, equal
	andeq	r5, r3, #1	@,, equal, equal.2911
	ldr	ip, [fp, #-56]	@, %sfp
	cmp	ip, r8	@, i
	bls	.L830	@,
.L815:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-52]	@, %sfp
	add	r3, r1, r8	@ tmp238,, i
	add	ip, r0, r8	@ tmp239,, i
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ D.41290, <variable>.pic_scaling_list_present_flag
	ldrb	r2, [ip, #5]	@ zero_extendqisi2	@ D.41290, <variable>.pic_scaling_list_present_flag
	cmp	r1, r2	@ D.41290, D.41290
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r1, #0	@ D.41290,
	bne	.L826	@,
	add	r8, r8, #1	@ i, i,
.L831:
	ldr	ip, [fp, #-56]	@, %sfp
	add	sl, sl, #64	@ ivtmp.2805, ivtmp.2805,
	add	r9, r9, #64	@ ivtmp.2807, ivtmp.2807,
	cmp	ip, r8	@, i
	bhi	.L815	@,
.L830:
	ldr	r1, [fp, #-52]	@ pPPS2, %sfp
.L811:
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	r0, [r1, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r2, [r3, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	cmp	r2, r0	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movne	r5, #0	@, tmp322
	andeq	r5, r5, #1	@,, tmp322, equal
	cmp	r5, #0	@ tmp322,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L809:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L813:
	ldr	r0, [fp, #-52]	@, %sfp
	mov	r6, r8, asl #8	@ tmp310, i,
	ldr	r4, [fp, #-48]	@, %sfp
	sub	r1, r6, #1088	@ tmp311, tmp310,
	ldr	r7, [fp, #-48]	@, %sfp
	add	r3, r0, r1	@ ivtmp.2795,, tmp311
	add	r2, r4, r1	@ ivtmp.2792,, tmp311
	ldr	r6, [r0, r1]	@ tmp316, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2792, ivtmp.2792,
	mov	ip, #2	@ j,
	ldr	r4, [r7, r1]	@ tmp315, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2795, ivtmp.2795,
	ldr	r7, [r2, #4]	@ tmp344, <variable>.ScalingList8x8
	ldr	r3, [r3, #4]	@ tmp345, <variable>.ScalingList8x8
	cmp	r4, r6	@ tmp315, tmp316
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r7, r3	@ tmp344, tmp345
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
.L814:
	mov	r2, r0	@ tmp329, ivtmp.2792
	mov	r3, r1	@ tmp330, ivtmp.2795
	ldr	r7, [r2], #4	@ tmp334, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r6, [r3], #4	@ tmp335, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp341, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2792, tmp329,
	ldr	r2, [r1, #4]	@ tmp342, <variable>.ScalingList8x8
	cmp	r7, r6	@ tmp334, tmp335
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2795, tmp330,
	cmp	r4, r2	@ tmp341, tmp342
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L814	@,
	add	r8, r8, #1	@ i, i,
	b	.L831	@
.L829:
	mov	r0, r1	@, pPPS2
	movw	r2, #:lower16:.LC2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #8684	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L809	@
.L828:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #8683	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L809	@
	.fnend
	.size	PPSEqual, .-PPSEqual
	.align	2
	.global	CalcStreamBits
	.type	CalcStreamBits, %function
CalcStreamBits:
	.fnstart
.LFB1465:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #17580	@ tmp169,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r3, #0	@ <variable>.CurrPPS.entropy_coding_mode_flag,
	beq	.L833	@,
	ldr	lr, [r4, #368]	@ D.40767, <variable>.pCurrNal
	ldr	r0, [lr, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r3, r0, #7	@ tmp171, <variable>.nal_bitoffset,
	bic	ip, r3, #7	@ tmp173, tmp171,
	str	ip, [lr, #64]	@ tmp173, <variable>.nal_bitoffset
	ldr	r1, [r4, #368]	@ temp.2957, <variable>.pCurrNal
	ldr	r5, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	sub	r2, r5, #1	@ tmp175, <variable>.nal_trail_zero_bit_num,
	str	r2, [r1, #72]	@ tmp175, <variable>.nal_trail_zero_bit_num
.L833:
	ldr	ip, [r4, #368]	@ temp.3003, <variable>.pCurrNal
	ldrb	r5, [ip, #0]	@ zero_extendqisi2	@ temp.3004, <variable>.nal_used_segment
	cmp	r5, #0	@ temp.3004,
	moveq	r6, r5	@ code_len_byte, temp.3004
	moveq	r7, r5	@ temp.3004, temp.3004
	beq	.L835	@,
	mov	r7, r5, asl #3	@ temp.3004, temp.3004,
	mov	r3, #28	@ ivtmp.2955,
	rsb	r1, r5, r7	@ tmp178, temp.3004, temp.3004
	ldr	r6, [ip, #12]	@ code_len_byte, <variable>.bitstream_length
	add	r2, ip, r3	@ ivtmp.2956, temp.3003,
	mov	r1, r1, asl #2	@ D.45983, tmp178,
	cmp	r3, r1	@ ivtmp.2955, D.45983
	sub	lr, r1, #28	@ tmp453, D.45983,
	ubfx	r0, lr, #2, #1	@ tmp457, tmp453,,
	beq	.L835	@,
	cmp	r0, #0	@ tmp457,
	beq	.L836	@,
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r3, #56	@ ivtmp.2955,
	cmp	r3, r1	@ ivtmp.2955, D.45983
	add	r2, ip, r3	@ ivtmp.2956, temp.3003,
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	beq	.L835	@,
.L836:
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r3, r3, #56	@ ivtmp.2955, ivtmp.2955,
	ldr	r0, [r2, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, r1	@ ivtmp.2955, D.45983
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	add	r2, r2, #56	@ ivtmp.2956, ivtmp.2956,
	add	r6, r6, r0	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	bne	.L836	@,
.L835:
	rsb	r3, r5, r7	@ tmp186, temp.3004, temp.3004
	ldr	r2, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC3	@,
	add	lr, ip, r3, asl #2	@, tmp188, temp.3003, tmp186,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r6	@, code_len_byte
	ldr	lr, [lr, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	str	lr, [sp, #4]	@ <variable>.nal_trail_zero_bit_num,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ temp.2960, <variable>.pCurrNal
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r0, r0, asl #3	@, tmp196, <variable>.nal_used_segment, <variable>.nal_used_segment,
	and	r0, r1, #7	@ tmp201, <variable>.nal_bitoffset,
	add	ip, r3, r2, asl #2	@, tmp198, temp.2960, tmp196,
	str	r0, [ip, #24]	@ tmp201, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ temp.2964, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ temp.2967, <variable>.nal_used_segment
	ldr	ip, [r1, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r3, r3, asl #3	@, tmp205, temp.2967, temp.2967,
	add	r3, r1, r2, asl #2	@, tmp207, temp.2964, tmp205,
	ldr	r0, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r2, r0, ip, lsr #3	@, tmp218, <variable>.stream_phy_addr, <variable>.nal_bitoffset,
	rsb	r1, r6, r2	@ tmp220, code_len_byte, tmp218
	str	r1, [r3, #28]	@ tmp220, <variable>.bytespos
	ldr	r3, [r4, #368]	@ temp.2968, <variable>.pCurrNal
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ temp.2970, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r0, ip, ip, asl #3	@, tmp224, temp.2970, temp.2970,
	add	ip, r3, r0, asl #2	@, tmp226, temp.2968, tmp224,
	ldr	r2, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r6, r6, r2	@ tmp235, code_len_byte, <variable>.bitstream_length
	rsb	r6, r1, r6, asl #3	@, tmp239, <variable>.nal_bitoffset, tmp235,
	str	r6, [ip, #20]	@ tmp239, <variable>.valid_bitlen
	b	.L862	@
.L864:
	rsb	r0, r2, r1	@ tmp251, temp.3001, tmp443
	add	lr, r3, r0, asl #2	@, tmp253, temp.2972, tmp251,
	ldr	ip, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, ip, #8	@ tmp263, <variable>.bitsoffset,
	str	r1, [lr, #24]	@ tmp263, <variable>.bitsoffset
	ldr	r0, [r4, #368]	@ temp.2975, <variable>.pCurrNal
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ temp.2977, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp267, temp.2977, temp.2977,
	add	r3, r0, ip, asl #2	@, tmp269, temp.2975, tmp267,
	add	r1, r3, #24	@ tmp270, tmp269,
	ldr	lr, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r2, lr, #1	@ tmp279, <variable>.bytespos,
	str	r2, [r1, #4]	@ tmp279, <variable>.bytespos
.L862:
	ldr	r3, [r4, #368]	@ temp.2972, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.3001, <variable>.nal_used_segment
	mov	r1, r2, asl #3	@ tmp443, temp.3001,
	rsb	r0, r2, r1	@ tmp243, temp.3001, tmp443
	add	ip, r3, r0, asl #2	@, tmp245, temp.2972, tmp243,
	ldr	lr, [ip, #28]	@ temp.2994, <variable>.bytespos
	tst	lr, #3	@ temp.2994,
	bne	.L864	@,
	rsb	r7, r5, r7	@ tmp292, temp.3004, temp.3004
	mov	r2, r5	@, temp.3004
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC4	@,
	add	r7, r3, r7, asl #2	@, tmp294, temp.2972, tmp292,
	movt	r1, #:upper16:.LC4	@,
	ldr	ip, [r7, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	ldr	r1, [r4, #368]	@ temp.2979, <variable>.pCurrNal
	ldrb	r5, [r1, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r2, [r1, #68]	@ temp.2988, <variable>.nal_segment
	add	r5, r5, #1	@ i.2982, <variable>.nal_used_segment,
	cmp	r5, r2	@ i.2982, temp.2988
	bcs	.L839	@,
	mov	r6, #0	@ tmp448,
.L849:
	mov	ip, r5, asl #3	@ tmp444, i.2982,
	rsb	r2, r5, ip	@ tmp309, i.2982, tmp444
	mov	r2, r2, asl #2	@ tmp310, tmp309,
	add	r0, r2, r1	@ tmp311, tmp310, temp.2979
	str	r6, [r0, #24]	@ tmp448, <variable>.bitsoffset
	ldr	lr, [r4, #368]	@ temp.2983, <variable>.pCurrNal
	add	r3, r2, lr	@ tmp319, tmp310, temp.2983
	ldr	r1, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r1, [r3, #28]	@ <variable>.stream_phy_addr, <variable>.bytespos
	ldr	r0, [r4, #368]	@ temp.2984, <variable>.pCurrNal
	add	r3, r2, r0	@ tmp334, tmp310, temp.2984
	ldr	lr, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r1, lr, asl #3	@ tmp344, <variable>.bitstream_length,
	str	r1, [r3, #20]	@ tmp344, <variable>.valid_bitlen
	b	.L863	@
.L865:
	add	r0, r2, r3	@ tmp359, tmp447, temp.2978
	ldr	lr, [r0, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, lr, #8	@ tmp369, <variable>.bitsoffset,
	str	r1, [r0, #24]	@ tmp369, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.2990, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp375, tmp447, temp.2990
	add	r1, lr, #24	@ tmp376, tmp375,
	ldr	r0, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r3, r0, #1	@ tmp385, <variable>.bytespos,
	str	r3, [r1, #4]	@ tmp385, <variable>.bytespos
.L863:
	ldr	r3, [r4, #368]	@ temp.2978, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp350, tmp310, temp.2978
	ldr	r1, [lr, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	r1, #3	@ <variable>.bytespos,
	bne	.L865	@,
	rsb	ip, r5, ip	@ tmp398, i.2982, tmp444
	mov	r2, r5	@, i.2982
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC5	@,
	add	lr, r3, ip, asl #2	@, tmp400, temp.2978, tmp398,
	movt	r1, #:upper16:.LC5	@,
	add	r5, r5, #1	@ i.2982, i.2982,
	ldr	ip, [lr, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	ip, [sp, #0]	@ <variable>.valid_bitlen,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #368]	@ temp.2979, <variable>.pCurrNal
	ldr	r2, [r1, #68]	@ temp.2988, <variable>.nal_segment
	cmp	r2, r5	@ temp.2988, i.2982
	bhi	.L849	@,
.L839:
	sub	r3, r2, #1	@ D.40805, temp.2988,
	cmp	r3, #1	@ D.40805,
	bhi	.L866	@,
	rsb	ip, r3, r3, asl #3	@, tmp415, D.40805, D.40805,
	ldr	r2, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	lr, r1, ip, asl #2	@, tmp417, temp.2979, tmp415,
	add	r1, lr, #16	@ tmp418, tmp417,
	ldr	r0, [r1, #4]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	rsb	r3, r2, r0	@ tmp428, <variable>.nal_trail_zero_bit_num, <variable>.valid_bitlen
	str	r3, [r1, #4]	@ tmp428, <variable>.valid_bitlen
	ldr	r2, [r4, #368]	@ temp.2996, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ i, <variable>.nal_used_segment
	ldr	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bls	.L847	@,
	movw	r5, #52792	@ tmp445,
.L848:
	rsb	r0, r3, r3, asl #3	@, tmp433, i, i,
	ldr	lr, [r4, r5]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	add	r3, r3, #1	@ i, i,
	add	ip, r2, r0, asl #2	@, tmp435, temp.2996, tmp433,
	ldr	r0, [ip, #28]	@ temp.2999, <variable>.bytespos
	cmp	r0, lr	@ temp.2999, <variable>.CurrPic.stream_base_addr
	strcc	r0, [r4, r5]	@ temp.2999, <variable>.CurrPic.stream_base_addr
	ldrcc	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bhi	.L848	@,
.L847:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L866:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L847	@
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
.LFB1456:
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
	movw	ip, #22324	@ tmp151,
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	ldr	r4, [r0, ip]	@ <variable>.PrevSlice.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	movw	lr, #22328	@ tmp157,
	movw	r0, #14332	@ tmp152,
	movw	r2, #20684	@ tmp158,
	ldr	ip, [r3, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	r2, [r3, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r1, #22336	@ tmp163,
	ldr	r0, [r3, lr]	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.PrevSlice.pic_parameter_set_id
	movw	lr, #20692	@ tmp164,
	ldr	r1, [r3, r1]	@ <variable>.PrevSlice.frame_num, <variable>.PrevSlice.frame_num
	cmp	r0, r2	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	cmpeq	r4, ip	@, <variable>.PrevSlice.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	lr, [r3, lr]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r4, #22320	@ tmp169,
	movw	r0, #20673	@ tmp170,
	ldrb	r2, [r3, r4]	@ zero_extendqisi2	@ D.40029, <variable>.PrevSlice.field_pic_flag
	moveq	ip, #0	@, result.3030
	movne	ip, #1	@, result.3030
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.40030, <variable>.CurrSlice.field_pic_flag
	cmp	r1, lr	@ <variable>.PrevSlice.frame_num, <variable>.CurrSlice.frame_num
	moveq	r1, ip	@, result.3031, result.3030
	orrne	r1, ip, #1	@,, result.3031, result.3030
	cmp	r2, r0	@ D.40029, D.40030
	orrne	r1, r1, #1	@,, result, result.3031
	cmp	r2, #0	@ D.40029,
	beq	.L868	@,
	cmp	r0, #0	@ D.40030,
	bne	.L876	@,
.L868:
	movw	r4, #22332	@ tmp179,
	movw	ip, #20704	@ tmp180,
	ldr	r2, [r3, r4]	@ D.40043, <variable>.PrevSlice.nal_ref_idc
	ldr	r4, [r3, ip]	@ D.40044, <variable>.CurrSlice.nal_ref_idc
	cmp	r2, r4	@ D.40043, D.40044
	moveq	r4, #0	@ prephitmp.3018,
	beq	.L870	@,
	cmp	r2, #0	@ D.40043,
	moveq	r4, #1	@ prephitmp.3018,
	bne	.L877	@,
.L870:
	movw	r0, #20675	@ tmp184,
	movw	lr, #22322	@ tmp183,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ D.40049, <variable>.CurrSlice.nal_unit_type
	ldrb	r0, [r3, lr]	@ zero_extendqisi2	@ D.40048, <variable>.PrevSlice.nal_unit_type
	cmp	r0, r2	@ D.40048, D.40049
	orrne	r1, r1, #1	@,, result.3032, result
	cmp	r2, #5	@ D.40049,
	orr	r4, r1, r4	@ result.3029, result.3032, prephitmp.3018
	beq	.L878	@,
.L872:
	movw	r0, #16488	@ tmp193,
	ldr	r2, [r3, r0]	@ D.40058, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ D.40058,
	bne	.L873	@,
	movw	r2, #22348	@ tmp194,
	movw	lr, #19792	@ tmp195,
	movw	r0, #22344	@ tmp200,
	movw	r1, #19788	@ tmp201,
	ldr	ip, [r3, r2]	@ <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r2, [r3, lr]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	ldr	lr, [r3, r0]	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	ldr	r0, [r3, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb,
	cmp	lr, r0	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, r2	@, <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	moveq	r1, #0	@, result.3033
	movne	r1, #1	@, result.3033
	orr	r4, r4, r1	@ result.3029, result.3029, result.3033
.L874:
	movw	lr, #20724	@ tmp218,
	mov	r0, #19	@,
	ldr	r3, [r3, lr]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	cmp	r3, #0	@ <variable>.CurrSlice.first_mb_in_slice,
	orreq	r4, r4, #1	@,, result.3035, result.3029
	mov	r2, r4	@, result.3035
	bl	dprint_vfmw	@
	mov	r0, r4	@, result.3035
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L873:
	cmp	r2, #1	@ D.40058,
	bne	.L874	@,
	movw	r0, #22356	@ tmp206,
	movw	r1, #22352	@ tmp212,
	ldr	ip, [r3, r0]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r2, #19840	@ tmp207,
	ldr	r0, [r3, r1]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r1, #19836	@ tmp213,
	ldr	lr, [r3, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [r3, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt,
	cmp	r0, r1	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	moveq	ip, #0	@, result.3034
	movne	ip, #1	@, result.3034
	orr	r4, r4, ip	@ result.3029, result.3029, result.3034
	b	.L874	@
.L877:
	rsbs	r4, r4, #1	@ prephitmp.3018, D.40044
	movcc	r4, #0	@ prephitmp.3018
	b	.L870	@
.L876:
	movw	r0, #22321	@ tmp173,
	movw	lr, #20674	@ tmp174,
	ldrb	r4, [r3, r0]	@ zero_extendqisi2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	ldrb	r2, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r4, r2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	orrne	r1, r1, #1	@,, result, result
	b	.L868	@
.L878:
	cmp	r0, #5	@ D.40048,
	bne	.L872	@,
	movw	lr, #22340	@ tmp187,
	movw	r2, #20712	@ tmp188,
	ldr	r1, [r3, lr]	@ <variable>.PrevSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	ip, [r3, r2]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	cmp	r1, ip	@ <variable>.PrevSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	orrne	r4, r4, #1	@,, result.3029, result.3029
	b	.L872	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
.LFB1455:
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
	mov	r5, r1	@ tmp_pic_parameter_set_id, tmp_pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r2, r5	@, tmp_pic_parameter_set_id
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #19	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	movw	ip, #13584	@ tmp140,
	ldr	r3, [r4, ip]	@ <variable>.PPS, <variable>.PPS
	mov	r1, #2208	@ tmp142,
	mla	r3, r1, r5, r3	@ pPPS, tmp142, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L885	@,
	movw	r1, #13572	@ tmp146,
	ldr	r2, [r3, #28]	@ D.40003, <variable>.seq_parameter_set_id
	ldr	r3, [r4, r1]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	lr, r3, #1	@ tmp147, <variable>.MaxSpsNum,
	cmp	r2, lr	@ D.40003, tmp147
	bhi	.L886	@,
	movw	ip, #13580	@ tmp151,
	movw	r1, #3992	@ tmp153,
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mla	lr, r1, r2, r3	@ tmp154, tmp153, D.40003, <variable>.SPS
	ldrb	ip, [lr, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	ip, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.40002,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L885:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L886:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
.LFB1454:
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
	movw	r5, #20684	@ tmp140,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [r4, r5]	@, <variable>.CurrSlice.pic_parameter_set_id
	movt	r1, #:upper16:.LC12	@,
	mov	r0, #19	@,
	bl	dprint_vfmw	@
	movw	r1, #13584	@ tmp143,
	ldr	r3, [r4, r1]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #2208	@ tmp145,
	ldr	r2, [r4, r5]	@ temp.3082, <variable>.CurrSlice.pic_parameter_set_id
	mla	r3, ip, r2, r3	@ pPPS, tmp145, temp.3082, <variable>.PPS
	ldrb	r1, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	beq	.L892	@,
	movw	lr, #13580	@ tmp150,
	ldr	r2, [r3, #28]	@ D.39983, <variable>.seq_parameter_set_id
	ldr	ip, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #3992	@ tmp152,
	mla	r3, r1, r2, ip	@ tmp153, tmp152, D.39983, <variable>.SPS
	ldrb	lr, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.39981,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39981,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L892:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39981,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	WriteCurrPicYUV
	.type	WriteCurrPicYUV, %function
WriteCurrPicYUV:
	.fnstart
.LFB1446:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #52259	@ tmp136,
	ldrb	r5, [r0, r2]	@ zero_extendqisi2	@ structure, <variable>.CurrPic.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #52728	@ tmp139,
	movw	r1, #:lower16:.LC15	@,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movt	r1, #:upper16:.LC15	@,
	mov	r2, r5	@, structure
	mov	r0, #2	@,
	ldr	r3, [lr, #184]	@, <variable>.fs_image.image_id
	bl	dprint_vfmw	@
	movw	r1, #52780	@ tmp151,
	cmp	r5, #3	@ structure,
	cmpne	r5, #0	@, structure,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	r3, #52776	@ tmp149,
	addne	r2, r5, #1	@ PicStructure, structure,
	ldr	r3, [r4, r3]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	moveq	r2, #1	@ PicStructure,
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC16	@,
	str	ip, [sp, #0]	@ <variable>.CurrPic.pic_height_in_mb,
	bl	dprint_vfmw	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	WriteCurrPicYUV, .-WriteCurrPicYUV
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
.LFB1431:
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
	movw	r1, #:lower16:g_PrintEnable	@ tmp146,
	movt	r1, #:upper16:g_PrintEnable	@ tmp146,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #8192	@ g_PrintEnable,
	addne	r6, r0, #20480	@ ivtmp.3158, pH264Ctx,
	movne	r7, #0	@ j,
	addne	r6, r6, #236	@ ivtmp.3158, ivtmp.3158,
	beq	.L916	@,
.L899:
	ldr	r2, [r6, #0]	@ tmp154, <variable>.CurrSlice.listXsize
	cmp	r2, #0	@ tmp154,
	beq	.L902	@,
	add	r1, r7, r7, asl #5	@, tmp157, j, j,
	mov	r4, #0	@ i,
	add	r3, r8, r1, asl #2	@, tmp161, pH264Ctx, tmp157,
	add	r5, r3, #26880	@ ivtmp.3150, tmp161,
	add	r5, r5, #148	@ ivtmp.3150, ivtmp.3150,
.L900:
	ldr	ip, [r5], #4	@ tmp150, <variable>.pListX
	mov	r3, r4	@, i
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC17	@,
	mov	r2, r7	@, j
	movt	r1, #:upper16:.LC17	@,
	ldr	ip, [ip, #4]	@ D.38285, <variable>.frame_store
	add	r4, r4, #1	@ i, i,
	ldr	lr, [ip, #576]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.frame_num,
	ldr	ip, [ip, #588]	@ <variable>.poc, <variable>.poc
	str	ip, [sp, #4]	@ <variable>.poc,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #0]	@ tmp153, <variable>.CurrSlice.listXsize
	cmp	r0, r4	@ tmp153, i
	bhi	.L900	@,
.L902:
	add	r7, r7, #1	@ j, j,
	add	r6, r6, #4	@ ivtmp.3158, ivtmp.3158,
	cmp	r7, #2	@ j,
	bne	.L899	@,
	movw	r6, #20716	@ tmp162,
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L920	@,
	movw	r6, #20720	@ tmp181,
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L921	@,
.L916:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L921:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L910	@,
	add	r5, r8, #27136	@ ivtmp.3140, pH264Ctx,
	add	r4, r5, #24	@ ivtmp.3140, ivtmp.3140,
	mov	r5, #0	@ i.3162,
	b	.L915	@
.L912:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
.L911:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3162, i.3162,
	add	r4, r4, #4	@ ivtmp.3140, ivtmp.3140,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3162
	bls	.L910	@,
.L915:
	ldr	r3, [r4, #0]	@ D.38306, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L913	@,
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	bcc	.L912	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L911	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC21	@,
	add	r5, r5, #1	@ i.3162, i.3162,
	add	r4, r4, #4	@ ivtmp.3140, ivtmp.3140,
	ldr	r2, [ip, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3162
	bhi	.L915	@,
.L910:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	b	.L916	@
.L913:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [r3, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L911	@
.L920:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L904	@,
	add	r4, r8, #26880	@ ivtmp.3145, pH264Ctx,
	mov	r5, #0	@ i.3167,
	add	r4, r4, #148	@ ivtmp.3145, ivtmp.3145,
	b	.L909	@
.L906:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
.L905:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3167, i.3167,
	add	r4, r4, #4	@ ivtmp.3145, ivtmp.3145,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3167
	bls	.L904	@,
.L909:
	ldr	r3, [r4, #0]	@ D.38293, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L907	@,
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	bcc	.L906	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L905	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC21	@,
	add	r5, r5, #1	@ i.3167, i.3167,
	add	r4, r4, #4	@ ivtmp.3145, ivtmp.3145,
	ldr	r2, [ip, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3167
	bhi	.L909	@,
.L904:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC22	@,
	movw	r6, #20720	@ tmp181,
	bl	dprint_vfmw	@
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L916	@,
	b	.L921	@
.L907:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [r3, #588]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L905	@
	.fnend
	.size	DumpList, .-DumpList
	.align	2
	.global	DumpDPB
	.type	DumpDPB, %function
DumpDPB:
	.fnstart
.LFB1403:
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
	movw	r1, #:lower16:g_PrintEnable	@ tmp144,
	movt	r1, #:upper16:g_PrintEnable	@ tmp144,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #16384	@ g_PrintEnable,
	beq	.L928	@,
	movw	r7, #26620	@ tmp147,
	ldr	r0, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L924	@,
	add	r6, r5, #26368	@ ivtmp.3222, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #56	@ ivtmp.3222, ivtmp.3222,
.L925:
	ldr	ip, [r6], #4	@ D.36952, <variable>.DPB.fs
	mov	r2, r4	@, i
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	add	r4, r4, #1	@ i, i,
	ldr	lr, [ip, #588]	@ <variable>.poc, <variable>.poc
	ldr	r3, [ip, #576]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.poc,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	str	ip, [sp, #4]	@ <variable>.is_reference,
	bl	dprint_vfmw	@
	ldr	r2, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r2, r4	@ <variable>.DPB.used_size, i
	bhi	.L925	@,
.L924:
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC22	@,
	mov	r7, #26624	@ tmp155,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L926	@,
	add	r4, r5, #26368	@ ivtmp.3217, pH264Ctx,
	add	r6, r4, #120	@ ivtmp.3217, ivtmp.3217,
	mov	r4, #0	@ i.3227,
.L927:
	ldr	ip, [r6, #0]	@ D.36960, <variable>.DPB.fs_ref
	mov	r2, r4	@, i.3227
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	ldr	lr, [ip, #588]	@ <variable>.poc, <variable>.poc
	ldr	r3, [ip, #576]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.poc,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	str	lr, [sp, #4]	@ <variable>.is_reference,
	bl	dprint_vfmw	@
	ldr	ip, [r6], #4	@ tmp161, <variable>.DPB.fs_ref
	mov	r2, r4	@, i.3227
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	add	r4, r4, #1	@ i.3227, i.3227,
	ldr	r3, [ip, #480]	@, <variable>.frame.poc
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r4	@ <variable>.DPB.ref_frames_in_buffer, i.3227
	bhi	.L927	@,
.L926:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #14	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
.L928:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	DumpDPB, .-DumpDPB
	.align	2
	.global	IsRefListWrong
	.type	IsRefListWrong, %function
IsRefListWrong:
	.fnstart
.LFB1492:
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
	movw	r8, #20716	@ tmp143,
	ldr	r3, [r0, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L932	@,
	add	r5, r0, #26880	@ ivtmp.3268, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #148	@ ivtmp.3268, ivtmp.3268,
	movw	r7, #55520	@ tmp167,
	b	.L934	@
.L941:
	ldr	ip, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	ip, #0	@ <variable>.pstDecodeFs,
	beq	.L933	@,
	ldr	r3, [r4, r8]	@ D.43126, <variable>.CurrSlice.listXsize
	cmp	r3, r6	@ D.43126, i
	bls	.L940	@,
.L934:
	ldr	r1, [r5, #0]	@ tmp148, <variable>.pListX
	add	r6, r6, #1	@ i, i,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3268, ivtmp.3268,
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L941	@,
.L933:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L932:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L940:
	cmp	r3, #0	@ D.43126,
	beq	.L932	@,
	movw	r8, #20720	@ tmp153,
	ldr	r0, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L932	@,
	add	r6, r4, #27136	@ ivtmp.3263, pH264Ctx,
	movw	r7, #55520	@ tmp165,
	add	r5, r6, #24	@ ivtmp.3263, ivtmp.3263,
	mov	r6, #0	@ i.3276,
	b	.L935	@
.L942:
	ldr	r2, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L933	@,
	ldr	r1, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r6	@ <variable>.CurrSlice.listXsize, i.3276
	bls	.L932	@,
.L935:
	ldr	r3, [r5, #0]	@ tmp158, <variable>.pListX
	add	r6, r6, #1	@ i.3276, i.3276,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3263, ivtmp.3263,
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3274
	bne	.L942	@,
	b	.L933	@
	.fnend
	.size	IsRefListWrong, .-IsRefListWrong
	.align	2
	.global	WriteSliceMsg
	.type	WriteSliceMsg, %function
WriteSliceMsg:
	.fnstart
.LFB1449:
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
	movw	r3, #55444	@ tmp196,
	ldr	r2, [r0, r3]	@, <variable>.SliceParaNum
	mov	r4, #13568	@ tmp201,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #4060	@ tmp200,
	str	r2, [fp, #-48]	@, %sfp
	ldr	ip, [fp, #-48]	@, %sfp
	ldr	r0, [r0, r4]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	add	r2, ip, #1	@ D.39603,,
	str	r2, [r5, r3]	@ D.39603, <variable>.SliceParaNum
	sub	r7, r0, #1	@ tmp202, <variable>.MaxSliceNum,
	movw	r0, #55440	@ tmp198,
	cmp	ip, r7	@, tmp202
	mul	r4, r1, ip	@ tmp199, tmp200,
	ldr	ip, [r5, r0]	@ D.39604, <variable>.DecSlicePara
	movcs	r3, #0	@ tmp207,
	mlacc	r2, r1, r2, ip	@ tmp206, tmp200, D.39603, D.39604
	add	r7, ip, r4	@ pCurrSlicePara, D.39604, tmp199
	strcs	r3, [r7, #4056]	@ tmp207, <variable>.pNextSlice
	strcc	r2, [r7, #4056]	@ tmp206, <variable>.pNextSlice
	ldr	r1, [r5, #368]	@ D.39615, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ i.3479, <variable>.nal_used_segment
	ldr	r0, [r1, #68]	@ i.3626, <variable>.nal_segment
	cmp	r3, #1	@ i.3479,
	cmpls	r3, r0	@, i.3479, i.3626
	bcs	.L946	@,
	add	r6, r3, #4	@ tmp215, i.3479,
	add	r2, r7, r6, asl #2	@, ivtmp.3471, pCurrSlicePara, tmp215,
.L947:
	rsb	r0, r3, r3, asl #3	@, tmp220, i.3479, i.3479,
	add	r3, r3, #1	@ i.3479, i.3479,
	mov	r6, r0, asl #2	@ tmp221, tmp220,
	add	r1, r6, r1	@ tmp222, tmp221, D.39615
	ldr	r1, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	r1, [r2, #0]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r1, r6, r1	@ tmp231, tmp221, <variable>.pCurrNal
	ldr	r1, [r1, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	str	r1, [r2, #-8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r0, r6, r1	@ tmp240, tmp221, <variable>.pCurrNal
	cmp	r3, #1	@ i.3479,
	movhi	r6, #0	@, tmp249
	movls	r6, #1	@, tmp249
	ldr	r1, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	str	r1, [r2, #8]	@ <variable>.bytespos, <variable>.bytespos
	add	r2, r2, #4	@ ivtmp.3471, ivtmp.3471,
	ldr	r1, [r5, #368]	@ D.39615, <variable>.pCurrNal
	ldr	r0, [r1, #68]	@ i.3626, <variable>.nal_segment
	cmp	r0, r3	@ i.3626, i.3479
	movls	r6, #0	@, tmp249,
	cmp	r6, #0	@ tmp249,
	bne	.L947	@,
.L946:
	cmp	r0, #1	@ i.3626,
	bhi	.L948	@,
	add	r3, r0, #4	@ tmp250, i.3626,
	add	r1, r7, #24	@ D.46523, pCurrSlicePara,
	mov	r2, #0	@ tmp593,
	add	r0, r7, r3, asl #2	@, ivtmp.3464, pCurrSlicePara, tmp250,
	add	r3, r0, #4	@ ivtmp.3464, ivtmp.3464,
	rsb	r6, r0, r1	@ tmp606, ivtmp.3464, D.46523
	cmp	r3, r1	@ ivtmp.3464, D.46523
	sub	r6, r6, #4	@ tmp607, tmp606,
	ubfx	r6, r6, #2, #1	@ tmp608, tmp607,,
	str	r2, [r0, #0]	@ tmp593, <variable>.bitsoffset
	str	r2, [r0, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp593, <variable>.bytespos
	beq	.L948	@,
	cmp	r6, #0	@ tmp608,
	beq	.L949	@,
	str	r2, [r3, #0]	@ tmp593, <variable>.bitsoffset
	str	r2, [r3, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp593, <variable>.bytespos
	add	r3, r3, #4	@ ivtmp.3464, ivtmp.3464,
	cmp	r3, r1	@ ivtmp.3464, D.46523
	beq	.L948	@,
.L949:
	add	r0, r3, #4	@ tmp609, ivtmp.3464,
	str	r2, [r3, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp593, <variable>.bytespos
	str	r2, [r3, #4]	@ tmp593, <variable>.bitsoffset
	str	r2, [r3, #0]	@ tmp593, <variable>.bitsoffset
	add	r3, r0, #4	@ ivtmp.3464, tmp609,
	cmp	r3, r1	@ ivtmp.3464, D.46523
	str	r2, [r0, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp593, <variable>.bytespos
	bne	.L949	@,
.L948:
	movw	r0, #52265	@ tmp255,
	ldr	r2, [fp, #-48]	@, %sfp
	ldrb	r3, [r5, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	movw	r1, #17628	@ tmp258,
	movw	r0, #22284	@ tmp259,
	cmp	r2, #0	@,
	strb	r3, [r7, #1]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r5, r0]	@ <variable>.CurrSlice.slice_qp_delta, <variable>.CurrSlice.slice_qp_delta
	ldr	r2, [r5, r1]	@ <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrPPS.pic_init_qp_minus26
	add	r1, r2, r3	@ tmp260, <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrSlice.slice_qp_delta
	add	r3, r1, #26	@ D.39629, tmp260,
	str	r3, [r7, #32]	@ D.39629, <variable>.SliceQPy
	bne	.L950	@,
	movw	r2, #52728	@ tmp264,
	ldr	r0, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r0, #492]	@ D.39629, <variable>.frame.MaxQp
	ldr	r3, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r1, [r7, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	str	r1, [r3, #496]	@ <variable>.SliceQPy, <variable>.frame.MinQp
.L951:
	movw	r3, #22280	@ tmp273,
	movw	r1, #20732	@ tmp275,
	ldr	r2, [r5, r3]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.CurrSlice.cabac_init_idc
	movw	r3, #20672	@ tmp279,
	str	r2, [r7, #36]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.cabac_init_idc
	movw	r2, #20728	@ tmp277,
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	str	r0, [r7, #40]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r1, [r5, r2]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r2, #20724	@ tmp282,
	str	r1, [r7, #44]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	r1, #20678	@ tmp284,
	ldrb	r0, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	strb	r0, [ip, r4]	@ <variable>.CurrSlice.slice_type, <variable>.slice_type
	ldr	ip, [r5, r2]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r2, #13608	@ tmp287,
	str	ip, [r7, #48]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.first_mb_in_slice
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	movw	r1, #20716	@ tmp290,
	strb	r0, [r7, #2]	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.CurrSPS.direct_8x8_inference_flag
	movw	r2, #20720	@ tmp292,
	strb	ip, [r7, #3]	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	r0, [r7, #52]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldr	ip, [r5, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	ip, [r7, #56]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ temp.3486, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ temp.3486,
	beq	.L1040	@,
	cmp	r3, #0	@ temp.3486,
	movweq	r3, #17582	@ tmp298,
	movne	r3, #0	@ tmp301,
	ldreqb	r3, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrPPS.weighted_pred_flag, <variable>.CurrPPS.weighted_pred_flag
	strb	r3, [r7, #4]	@ tmp301, <variable>.weight_flag
.L953:
	movw	r2, #17632	@ tmp303,
	movw	r0, #17636	@ tmp305,
	ldr	r1, [r5, r2]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.CurrPPS.chroma_qp_index_offset
	movw	r3, #22292	@ tmp307,
	str	r1, [r7, #60]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movw	r1, #22296	@ tmp309,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.CurrPPS.second_chroma_qp_index_offset
	str	ip, [r7, #64]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movw	ip, #22288	@ tmp311,
	ldr	r2, [r5, r3]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r2, [r7, #68]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	movw	r2, #20672	@ tmp313,
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.CurrSlice.slice_beta_offset_div2
	str	r0, [r7, #72]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	ldr	r3, [r5, ip]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r3, [r7, #76]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L955	@,
	movw	r3, #20716	@ tmp315,
	ldr	r4, [r5, r3]	@ temp.3644, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3644,
	beq	.L956	@,
	movw	r1, #27028	@ tmp317,
	ldr	r0, [r5, r1]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r0, #4]	@ temp.3621, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L957	@,
	tst	r4, #1	@ temp.3644,
	add	r3, r5, #26880	@ tmp327, pH264Ctx,
	add	r1, r3, #152	@ ivtmp.3458, tmp327,
	mov	r0, #0	@ i.3489,
	bne	.L959	@,
	ldr	ip, [r1, #0]	@ tmp628, <variable>.pListX
	add	r1, r3, #156	@ ivtmp.3458, tmp327,
	mov	r0, #1	@ i.3489,
	ldr	r3, [ip, #4]	@ temp.3621, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	bne	.L959	@,
.L957:
	movw	lr, #55520	@ tmp321,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ pstLogicFs,
	beq	.L1041	@,
	ldr	r2, [r3, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [r2, #4]	@, <variable>.PhyFsID
	str	r4, [fp, #-52]	@, %sfp
	b	.L962	@
.L963:
	ldr	r3, [r2], #4	@ tmp319, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3621, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L957	@,
	ldr	r3, [r1, #4]	@ tmp630, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3458, tmp603,
	ldr	r3, [r3, #4]	@ temp.3621, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L957	@,
.L959:
	add	r0, r0, #1	@ tmp604, i.3489,
	mov	r2, r1	@ tmp603, ivtmp.3458
	cmp	r0, r4	@ tmp604, temp.3644
	add	r0, r0, #1	@ i.3489, tmp604,
	bcc	.L963	@,
.L956:
	mov	r1, #0	@,
	str	r1, [fp, #-52]	@, %sfp
.L962:
	movw	ip, #20720	@ tmp328,
	ldr	r4, [r5, ip]	@ temp.3492, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3492,
	beq	.L964	@,
	movw	r0, #27160	@ tmp330,
	ldr	r3, [r5, r0]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3622, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L965	@,
	tst	r4, #1	@ temp.3492,
	add	r3, r5, #27136	@ tmp340, pH264Ctx,
	add	r1, r3, #28	@ ivtmp.3453, tmp340,
	mov	r0, #0	@ i.3497,
	bne	.L967	@,
	ldr	r2, [r1, #0]	@ tmp624, <variable>.pListX
	add	r1, r3, #32	@ ivtmp.3453, tmp340,
	mov	r0, #1	@ i.3497,
	ldr	r3, [r2, #4]	@ temp.3622, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	bne	.L967	@,
	b	.L965	@
.L970:
	ldr	r3, [r2], #4	@ tmp332, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3622, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L965	@,
	ldr	r3, [r1, #4]	@ tmp626, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3453, tmp598,
	ldr	r3, [r3, #4]	@ temp.3622, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L965	@,
.L967:
	add	r0, r0, #1	@ tmp599, i.3497,
	mov	r2, r1	@ tmp598, ivtmp.3453
	cmp	r4, r0	@ temp.3492, tmp599
	add	r0, r0, #1	@ i.3497, tmp599,
	bhi	.L970	@,
.L964:
	mov	r1, #0	@,
	str	r1, [fp, #-60]	@, %sfp
.L969:
	movw	r2, #52259	@ tmp341,
	ldrb	r8, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	beq	.L971	@,
	movw	r9, #20716	@ tmp343,
	ldr	ip, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L973	@,
	add	r8, r5, #26880	@ ivtmp.3433, pH264Ctx,
	mov	r6, r7	@ ivtmp.3438, pCurrSlicePara
	add	r4, r8, #148	@ ivtmp.3433, ivtmp.3433,
	str	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
	mov	r8, #0	@ i.3586,
	movw	sl, #55520	@ tmp590,
	ldr	r7, [fp, #-52]	@ ExistImgIdc_0.3477, %sfp
	b	.L989	@
.L987:
	strb	r3, [r6, #1630]	@ temp.3580, <variable>.btm_structure
	add	r8, r8, #1	@ i.3586, i.3586,
	ldr	ip, [r4, #0]	@ tmp475, <variable>.pListX
	ldrb	r0, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #1631]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	r3, [r4, #0]	@ tmp478, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3433, ivtmp.3433,
	ldr	lr, [r3, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #1656]	@ <variable>.poc, <variable>.btm_poc
	add	r6, r6, #36	@ ivtmp.3438, ivtmp.3438,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3586
	bls	.L1042	@,
.L989:
	ldr	r3, [r4, #0]	@ tmp439, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #0]	@ tmp442, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r2, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	ip, [r6, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, #0]	@ tmp445, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r2, [r6, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	ip, [r4, #0]	@ tmp449, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_0.3475, ExistImgIdc_0.3477
	beq	.L985	@,
	cmp	r0, #0	@ pstLogicFs.3557,
	ldrne	r3, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3475, <variable>.PhyFsID
.L985:
	str	r0, [r6, #1640]	@ ExistImgIdc_0.3475, <variable>.img_idc
	ldr	r3, [r4, #0]	@ tmp453, <variable>.pListX
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r1, [r6, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r2, [r4, #0]	@ tmp456, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #588]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r3, [r4, #0]	@ tmp459, <variable>.pListX
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #1624]	@ <variable>.structure, <variable>.list_structure
	ldr	r1, [r4, #0]	@ tmp462, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r2, #464]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r6, #1626]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp466, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3580, <variable>.structure
	cmp	r3, #1	@ temp.3580,
	bne	.L987	@,
	strb	r3, [r6, #1628]	@ temp.3580, <variable>.top_structure
	add	r8, r8, #1	@ i.3586, i.3586,
	ldr	r1, [r4, #0]	@ tmp469, <variable>.pListX
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r6, #1629]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	ip, [r4, #0]	@ tmp472, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3433, ivtmp.3433,
	ldr	r0, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1652]	@ <variable>.poc, <variable>.top_poc
	add	r6, r6, #36	@ ivtmp.3438, ivtmp.3438,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3586
	bhi	.L989	@,
.L1042:
	ldr	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
.L973:
	movw	r3, #20672	@ tmp482,
	ldrb	r1, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1043	@,
.L979:
	mov	r3, #0	@ ivtmp.3371,
.L996:
	add	r0, r5, r3	@ tmp534, pH264Ctx, ivtmp.3371
	add	r2, r3, #4	@ tmp594, ivtmp.3371,
	add	ip, r0, #26880	@ tmp536, tmp534,
	add	r1, r5, r2	@ tmp620, pH264Ctx, tmp594
	add	r0, r7, r3	@ tmp533, pCurrSlicePara, ivtmp.3371
	add	r1, r1, #26880	@ tmp621, tmp620,
	ldr	ip, [ip, #20]	@ tmp537, <variable>.APC.RefIdx
	add	r3, r2, #4	@ ivtmp.3371, tmp594,
	cmp	r3, #128	@ ivtmp.3371,
	add	r2, r7, r2	@ tmp619, pCurrSlicePara, tmp594
	str	ip, [r0, #3928]	@ tmp537, <variable>.Apc2RefIdx
	ldr	ip, [r1, #20]	@ tmp623, <variable>.APC.RefIdx
	str	ip, [r2, #3928]	@ tmp623, <variable>.Apc2RefIdx
	bne	.L996	@,
	movw	r2, #17582	@ tmp538,
	movw	r0, #17624	@ tmp541,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ temp.3631, <variable>.CurrPPS.weighted_pred_flag
	movw	ip, #54332	@ tmp539,
	ldr	r2, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	movw	r3, #54336	@ tmp540,
	cmp	r1, #0	@ temp.3631,
	str	r1, [r5, ip]	@ temp.3631, <variable>.DecPicPara.weighted_pred_flag
	str	r2, [r5, r3]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.DecPicPara.weighted_bipred_idc
	beq	.L997	@,
	movw	ip, #20672	@ tmp543,
	ldrb	r3, [r5, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L997	@,
.L998:
	mov	r0, #20736	@ tmp549,
	movw	ip, #20740	@ tmp551,
	ldr	r4, [r5, r0]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.CurrSlice.luma_log2_weight_denom
	add	r1, r5, r0	@ ivtmp.3350, pH264Ctx,
	add	r3, r1, #8	@ ivtmp.3350, ivtmp.3350,
	mov	r0, r7	@ ivtmp.3643, pCurrSlicePara
	mov	r2, r7	@ ivtmp.3354, ivtmp.3643
	mov	r1, #0	@ i,
	str	r4, [r7, #80]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	movw	r4, #20728	@ tmp578,
	ldr	ip, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r7, #84]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
.L999:
	ldr	ip, [r3, #0]	@ tmp554, <variable>.CurrSlice.wp_weight_l0_y
	add	r1, r1, #1	@ i, i,
	str	ip, [r2, #88]	@ tmp554, <variable>.wp_weight_l0_y
	ldr	ip, [r3, #128]	@ tmp555, <variable>.CurrSlice.wp_weight_l0_u
	str	ip, [r2, #216]	@ tmp555, <variable>.wp_weight_l0_u
	ldr	ip, [r3, #256]	@ tmp556, <variable>.CurrSlice.wp_weight_l0_v
	str	ip, [r2, #344]	@ tmp556, <variable>.wp_weight_l0_v
	ldr	ip, [r3, #768]	@ tmp557, <variable>.CurrSlice.wp_offset_l0_y
	str	ip, [r2, #856]	@ tmp557, <variable>.wp_offset_l0_y
	ldr	ip, [r3, #896]	@ tmp558, <variable>.CurrSlice.wp_offset_l0_u
	str	ip, [r2, #984]	@ tmp558, <variable>.wp_offset_l0_u
	ldr	ip, [r3, #1024]	@ tmp559, <variable>.CurrSlice.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.3350, ivtmp.3350,
	str	ip, [r2, #1112]	@ tmp559, <variable>.wp_offset_l0_v
	add	r2, r2, #4	@ ivtmp.3354, ivtmp.3354,
	ldr	ip, [r5, r4]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	ip, r1	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L999	@,
	movw	r3, #20672	@ tmp562,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1044	@,
.L955:
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r0, #0	@ tmp576,
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r3, r1, #13312	@ tmp573,,
	add	r2, r3, #34	@ tmp573, tmp573,
	str	ip, [r5, r2, asl #2]	@ <variable>.pCurrNal, <variable>.pSliceNal
	str	r0, [r5, #368]	@ tmp576, <variable>.pCurrNal
.L1001:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L950:
	movw	r1, #52728	@ tmp268,
	ldr	r2, [r5, r1]	@ temp.3484, <variable>.CurrPic.frame_store
	ldr	r0, [r2, #492]	@ <variable>.frame.MaxQp, <variable>.frame.MaxQp
	ldr	r1, [r2, #496]	@ <variable>.frame.MinQp, <variable>.frame.MinQp
	cmp	r0, r3	@ <variable>.frame.MaxQp, D.39629
	strge	r0, [r2, #492]	@, <variable>.frame.MaxQp, <variable>.frame.MaxQp
	strlt	r3, [r2, #492]	@, D.39629, <variable>.frame.MaxQp
	cmp	r1, r3	@ <variable>.frame.MinQp, D.39629
	strle	r1, [r2, #496]	@, <variable>.frame.MinQp, <variable>.frame.MinQp
	strgt	r3, [r2, #496]	@, D.39629, <variable>.frame.MinQp
	b	.L951	@
.L997:
	movw	r0, #17624	@ tmp545,
	ldr	r1, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	cmp	r1, #1	@ <variable>.CurrPPS.weighted_bipred_idc,
	bne	.L955	@,
	movw	r3, #20672	@ tmp547,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L955	@,
	b	.L998	@
.L971:
	movw	r9, #20716	@ tmp345,
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L974	@,
	mov	r4, r7	@ ivtmp.3400, pCurrSlicePara
	str	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
	ldr	r7, [fp, #-52]	@ ExistImgIdc_0.3477, %sfp
	add	sl, r5, #26880	@ ivtmp.3395, pH264Ctx,
	add	r6, sl, #148	@ ivtmp.3395, ivtmp.3395,
	movw	sl, #55520	@ tmp583,
.L978:
	ldr	r1, [r6, #0]	@ tmp350, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r6, #0]	@ tmp353, <variable>.pListX
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [ip, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r1, [r6, #0]	@ tmp356, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	ip, [r4, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r6, #0]	@ tmp360, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_0, ExistImgIdc_0.3477
	beq	.L976	@,
	cmp	r0, #0	@ pstLogicFs.3502,
	ldrne	r3, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0, <variable>.PhyFsID
.L976:
	str	r0, [r4, #1640]	@ ExistImgIdc_0, <variable>.img_idc
	add	r8, r8, #1	@ i.3487, i.3487,
	ldr	r2, [r6, #0]	@ tmp364, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r0, [r4, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r1, [r6, #0]	@ tmp367, <variable>.pListX
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #588]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r2, [r6, #0]	@ tmp370, <variable>.pListX
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r4, #1627]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r0, [r6, #0]	@ tmp373, <variable>.pListX
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	r1, [r4, #1626]	@ <variable>.structure, <variable>.frame_structure
	ldr	lr, [r6, #0]	@ tmp376, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r2, [r4, #1648]	@ <variable>.frame.poc, <variable>.frame_poc
	mov	r2, #0	@,
	ldr	ip, [r6, #0]	@ tmp379, <variable>.pListX
	ldr	r0, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r0, #516]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	r1, [r4, #1652]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	lr, [r6], #4	@ tmp382, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r3, #552]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	r2, [r4, #1624]	@, <variable>.list_structure
	str	ip, [r4, #1656]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3400, ivtmp.3400,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3487
	bhi	.L978	@,
	ldr	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
.L974:
	movw	r1, #20672	@ tmp389,
	ldrb	r3, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L979	@,
	movw	r9, #20720	@ tmp391,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L979	@,
	add	r4, r7, #1632	@ ivtmp.3384, pCurrSlicePara,
	add	r6, r5, #27136	@ ivtmp.3377, pH264Ctx,
	str	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	add	r6, r6, #24	@ ivtmp.3377, ivtmp.3377,
	ldr	r7, [fp, #-60]	@ ExistImgIdc_1.3478, %sfp
	add	r4, r4, #8	@ ivtmp.3384, ivtmp.3384,
	mov	r8, #0	@ i.3551,
	movw	sl, #55520	@ tmp579,
.L983:
	ldr	ip, [r6, #0]	@ tmp397, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #0]	@ tmp400, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1148]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r6, #0]	@ tmp403, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r3, [r4, #1137]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r6, #0]	@ tmp407, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_1, ExistImgIdc_1.3478
	beq	.L981	@,
	cmp	r0, #0	@ pstLogicFs.3529,
	ldrne	r3, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1, <variable>.PhyFsID
.L981:
	str	r0, [r4, #0]	@ ExistImgIdc_1, <variable>.img_idc
	add	r8, r8, #1	@ i.3551, i.3551,
	ldr	r1, [r6, #0]	@ tmp411, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r0, [r4, #1156]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r6, #0]	@ tmp414, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #588]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1144]	@ <variable>.poc, <variable>.poc
	ldr	r1, [r6, #0]	@ tmp417, <variable>.pListX
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r4, #1139]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r0, [r6, #0]	@ tmp420, <variable>.pListX
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	ip, [r4, #1138]	@ <variable>.structure, <variable>.frame_structure
	ldr	lr, [r6, #0]	@ tmp423, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r3, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r1, [r4, #1160]	@ <variable>.frame.poc, <variable>.frame_poc
	mov	r1, #0	@,
	ldr	r2, [r6, #0]	@ tmp426, <variable>.pListX
	ldr	r0, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r0, #516]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	ip, [r4, #1164]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	lr, [r6], #4	@ tmp429, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #552]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	r1, [r4, #1136]	@, <variable>.list_structure
	str	r2, [r4, #1168]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3384, ivtmp.3384,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3551
	bhi	.L983	@,
.L1039:
	ldr	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	b	.L979	@
.L965:
	movw	lr, #55520	@ tmp334,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ pstLogicFs.3493,
	beq	.L1045	@,
	ldr	r9, [r3, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r8, [r9, #4]	@, <variable>.PhyFsID
	str	r8, [fp, #-60]	@, %sfp
	b	.L969	@
.L1040:
	movw	r0, #17624	@ tmp295,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	strb	ip, [r7, #4]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.weight_flag
	b	.L953	@
.L1043:
	movw	r9, #20720	@ tmp484,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L979	@,
	add	sl, r7, #2800	@ ivtmp.3422, pCurrSlicePara,
	add	r4, r5, #27136	@ ivtmp.3413, pH264Ctx,
	add	r6, sl, #4	@ ivtmp.3422, ivtmp.3422,
	str	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	add	r4, r4, #24	@ ivtmp.3413, ivtmp.3413,
	mov	r8, #0	@ i.3582,
	movw	sl, #55520	@ tmp587,
	ldr	r7, [fp, #-60]	@ ExistImgIdc_1.3478, %sfp
	b	.L995	@
.L993:
	strb	r3, [r6, #-22]	@ temp.3620, <variable>.btm_structure
	ldr	r2, [r4, #0]	@ tmp526, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #-21]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	ip, [r4, #0]	@ tmp529, <variable>.pListX
	ldr	lr, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #4]	@ <variable>.poc, <variable>.btm_poc
.L994:
	ldr	r1, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r8, r8, #1	@ i.3582, i.3582,
	add	r4, r4, #4	@ ivtmp.3413, ivtmp.3413,
	add	r6, r6, #36	@ ivtmp.3422, ivtmp.3422,
	cmp	r1, r8	@ <variable>.CurrSlice.listXsize, i.3582
	bls	.L1039	@,
.L995:
	ldr	ip, [r4, #0]	@ tmp490, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4, #0]	@ tmp493, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r1, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r6, #-16]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r4, #0]	@ tmp496, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r1, [r6, #-27]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r4, #0]	@ tmp500, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_1.3476, ExistImgIdc_1.3478
	beq	.L991	@,
	cmp	r0, #0	@ pstLogicFs.3597,
	ldrne	r3, [r0, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1.3476, <variable>.PhyFsID
.L991:
	str	r0, [r6, #-12]	@ ExistImgIdc_1.3476, <variable>.img_idc
	ldr	ip, [r4, #0]	@ tmp504, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r3, [r6, #-8]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r1, [r4, #0]	@ tmp507, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r2, #588]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #-20]	@ <variable>.poc, <variable>.poc
	ldr	ip, [r4, #0]	@ tmp510, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #-28]	@ <variable>.structure, <variable>.list_structure
	ldr	r3, [r4, #0]	@ tmp513, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r1, #464]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r2, [r6, #-26]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp517, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3620, <variable>.structure
	cmp	r3, #1	@ temp.3620,
	bne	.L993	@,
	strb	r3, [r6, #-24]	@ temp.3620, <variable>.top_structure
	ldr	r3, [r4, #0]	@ tmp520, <variable>.pListX
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r1, [r6, #-23]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	r2, [r4, #0]	@ tmp523, <variable>.pListX
	ldr	r0, [r2, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #0]	@ <variable>.poc, <variable>.top_poc
	b	.L994	@
.L1044:
	add	r1, r5, #20992	@ ivtmp.3333, pH264Ctx,
	mov	r2, #0	@ i.3482,
	add	r3, r1, #136	@ ivtmp.3333, ivtmp.3333,
	movw	ip, #20732	@ tmp577,
.L1000:
	ldr	r1, [r3, #0]	@ tmp565, <variable>.CurrSlice.wp_weight_l1_y
	add	r2, r2, #1	@ i.3482, i.3482,
	str	r1, [r0, #472]	@ tmp565, <variable>.wp_weight_l1_y
	ldr	r1, [r3, #128]	@ tmp566, <variable>.CurrSlice.wp_weight_l1_u
	str	r1, [r0, #600]	@ tmp566, <variable>.wp_weight_l1_u
	ldr	r1, [r3, #256]	@ tmp567, <variable>.CurrSlice.wp_weight_l1_v
	str	r1, [r0, #728]	@ tmp567, <variable>.wp_weight_l1_v
	ldr	r1, [r3, #768]	@ tmp568, <variable>.CurrSlice.wp_offset_l1_y
	str	r1, [r0, #1240]	@ tmp568, <variable>.wp_offset_l1_y
	ldr	r1, [r3, #896]	@ tmp569, <variable>.CurrSlice.wp_offset_l1_u
	str	r1, [r0, #1368]	@ tmp569, <variable>.wp_offset_l1_u
	ldr	r1, [r3, #1024]	@ tmp570, <variable>.CurrSlice.wp_offset_l1_v
	add	r3, r3, #4	@ ivtmp.3333, ivtmp.3333,
	str	r1, [r0, #1496]	@ tmp570, <variable>.wp_offset_l1_v
	add	r0, r0, #4	@ ivtmp.3643, ivtmp.3643,
	ldr	r1, [r5, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r1, r2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.3482
	bcs	.L1000	@,
	b	.L955	@
.L1041:
	movw	r1, #:lower16:.LC27	@,
	movw	r2, #6667	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	b	.L1001	@
.L1045:
	movw	r1, #:lower16:.LC27	@,
	movw	r2, #6685	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	b	.L1001	@
	.fnend
	.size	WriteSliceMsg, .-WriteSliceMsg
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r5, r1, #0	@ pFrameStore, pFrameStore
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	beq	.L1073	@,
	cmp	r2, #1	@ structure,
	beq	.L1050	@,
	cmp	r2, #2	@ structure,
	beq	.L1074	@,
	ldr	r7, [r5, #516]	@ toppoc, <variable>.top_field.poc
	ldr	r8, [r5, #552]	@ bottompoc, <variable>.bottom_field.poc
.L1052:
	movw	r3, #26892	@ tmp152,
	ldr	r0, [r6, r3]	@ D.36556, <variable>.APC.size
	cmp	r0, #0	@ D.36556,
	beq	.L1053	@,
	movw	r1, #26636	@ tmp153,
	ldr	r4, [r6, r1]	@ <variable>.APC.is_used, <variable>.APC.is_used
	cmp	r4, #0	@ <variable>.APC.is_used,
	beq	.L1055	@,
	tst	r0, #1	@ D.36556,
	add	r3, r6, #26624	@ tmp191, pH264Ctx,
	add	r2, r3, #16	@ ivtmp.3676, tmp191,
	mov	r4, #0	@ i,
	bne	.L1056	@,
	ldr	ip, [r2, #0]	@ D.36528, <variable>.APC.is_used
	mov	r4, #1	@ i,
	add	r2, r3, #20	@ ivtmp.3676, tmp191,
	cmp	ip, #0	@ D.36528,
	bne	.L1056	@,
	b	.L1055	@
.L1061:
	ldr	ip, [r3], #4	@ D.36528, <variable>.APC.is_used
	cmp	ip, #0	@ D.36528,
	beq	.L1055	@,
	ldr	r1, [r2, #4]	@ D.36528, <variable>.APC.is_used
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.3676, tmp196,
	cmp	r1, #0	@ D.36528,
	beq	.L1055	@,
.L1056:
	add	r4, r4, #1	@ i, i,
	mov	r3, r2	@ tmp196, ivtmp.3676
	cmp	r4, r0	@ i, D.36556
	bcc	.L1061	@,
.L1053:
	mvn	r0, #0	@ D.36526,
.L1048:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1074:
	ldr	r7, [r5, #552]	@ toppoc, <variable>.bottom_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L1052	@
.L1055:
	movw	r2, #55520	@ tmp155,
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	ip, r0, #0	@ pstLogicFs,
	beq	.L1057	@,
	ldr	r0, [ip, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L1057	@,
	add	r2, r4, #6656	@ tmp160, i,
	movw	sl, #26896	@ tmp186,
	movw	r1, #:lower16:.LC28	@,
	mov	r3, r4	@, i
	add	r0, r6, r2, asl #2	@, tmp163, pH264Ctx, tmp160,
	ldr	r2, [r6, sl]	@ D.36543, <variable>.APC.used_size
	mov	sl, #1	@ tmp165,
	movt	r1, #:upper16:.LC28	@,
	mov	lr, r0	@ tmp184, tmp163
	str	sl, [r0, #12]	@ tmp165, <variable>.APC.is_used
	ldr	r0, [ip, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #15	@ D.36543,
	addls	r2, r2, #1	@ iftmp.482, D.36543,
	movhi	r2, #16	@ iftmp.482,
	ldr	ip, [r0, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	mov	r0, #13	@,
	str	r7, [lr, #140]	@ toppoc, <variable>.APC.poc
	str	r8, [lr, #204]	@ bottompoc, <variable>.APC.poc
	str	ip, [lr, #76]	@ <variable>.PhyFsID, <variable>.APC.idc
	movw	lr, #26896	@ tmp187,
	str	r2, [r6, lr]	@ iftmp.482, <variable>.APC.used_size
	ldr	r2, [r5, #184]	@, <variable>.fs_image.image_id
	bl	dprint_vfmw	@
	str	r4, [r5, #616]	@ i, <variable>.apc_idc
	mov	r0, #0	@ D.36526,
	b	.L1048	@
.L1050:
	ldr	r7, [r5, #516]	@ toppoc, <variable>.top_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L1052	@
.L1073:
	mov	r0, r5	@, pFrameStore
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #1943	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36526,
	b	.L1048	@
.L1057:
	mov	lr, #0	@ tmp190,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ D.36551, <variable>.is_reference
	ldr	r2, [r5, #572]	@ D.36532, <variable>.logic_fs_id
	mov	r0, lr	@, tmp190
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36526,
	b	.L1048	@
	.fnend
	.size	GetAPC, .-GetAPC
	.align	2
	.global	ExchangePts
	.type	ExchangePts, %function
ExchangePts:
	.fnstart
.LFB1390:
	@ args = 0, pretend = 0, frame = 16
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
	str	r1, [fp, #-60]	@ pFrameStore, %sfp
	ldrd	r2, [r1, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp145,
	cmp	r3, r1	@ <variable>.fs_image.PTS, tmp145
	cmpeq	r2, r0	@ <variable>.fs_image.PTS, tmp145
	beq	.L1081	@,
	movw	r7, #26620	@ tmp146,
	ldr	r3, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L1081	@,
	add	r5, r4, #26368	@ ivtmp.3710, pH264Ctx,
	mvn	r8, #1	@ MinPts.3717,
	add	r5, r5, #56	@ ivtmp.3710, ivtmp.3710,
	mvn	r9, #0	@ MinPts.3717,
	mov	r6, #0	@ i,
	movw	sl, #55520	@ tmp169,
	mvn	r0, #0	@,
	str	r0, [fp, #-56]	@, %sfp
.L1080:
	ldr	r3, [r5, #0]	@ D.36175, <variable>.DPB.fs
	cmp	r3, #0	@ D.36175,
	beq	.L1077	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1077	@,
	ldrsb	r1, [r0, #1]	@ D.36183, <variable>.s32DispState
	cmp	r1, #3	@ D.36183,
	cmpne	r1, #0	@, D.36183,
	beq	.L1077	@,
	ldr	r2, [r5, #0]	@ tmp161, <variable>.DPB.fs
	ldrd	r0, [r2, #16]	@, tmp161,
	cmp	r1, r9	@, MinPts.3717
	cmpeq	r0, r8	@, MinPts.3717
	strcc	r6, [fp, #-56]	@ i, %sfp
	strd	r0, [fp, #-52]	@,,
	bcc	.L1078	@,
.L1077:
	strd	r8, [fp, #-52]	@ MinPts.3717,,
.L1078:
	ldr	ip, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r6, r6, #1	@ i, i,
	ldrd	r8, [fp, #-52]	@ MinPts.3717,,
	add	r5, r5, #4	@ ivtmp.3710, ivtmp.3710,
	cmp	r6, ip	@ i, <variable>.DPB.used_size
	bcc	.L1080	@,
	ldr	r3, [fp, #-56]	@, %sfp
	cmn	r3, #1	@,
	beq	.L1081	@,
	ldr	r6, [fp, #-60]	@, %sfp
	mov	r0, r8	@, MinPts.3717
	mov	r1, r9	@, MinPts.3717
	ldrd	r2, [r6, #16]	@ temp.3714,,
	cmp	r1, r3	@, temp.3714
	cmpeq	r0, r2	@, temp.3714
	bcc	.L1082	@,
.L1081:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1082:
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r6, r8	@, MinPts.3717
	mov	r7, r9	@, MinPts.3717
	strd	r6, [sp]	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r7, [fp, #-60]	@, %sfp
	add	ip, r1, #6592	@ tmp165,,
	add	r2, ip, #14	@ tmp165, tmp165,
	ldrd	r0, [r7, #16]	@ <variable>.fs_image.PTS,,
	ldr	r7, [r4, r2, asl #2]	@ tmp167, <variable>.DPB.fs
	strd	r0, [r7, #16]	@ <variable>.fs_image.PTS, tmp167,
	ldrd	r6, [fp, #-52]	@,,
	ldr	r0, [fp, #-60]	@, %sfp
	strd	r6, [r0, #16]	@,,
	b	.L1081	@
	.fnend
	.size	ExchangePts, .-ExchangePts
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #54012	@ tmp145,
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	r3, [r5, r0]	@ <variable>.IDRFound, <variable>.IDRFound
	cmp	r3, #0	@ <variable>.IDRFound,
	bne	.L1084	@,
	ldr	r1, [r1, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	beq	.L1085	@,
	movw	ip, #55448	@ tmp148,
	ldr	r2, [r5, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r2, #0	@ <variable>.OldDecMode,
	beq	.L1101	@,
.L1085:
	movw	r1, #54012	@ tmp152,
	mov	lr, #1	@ tmp153,
	str	lr, [r5, r1]	@ tmp153, <variable>.IDRFound
.L1084:
	movw	r2, #55520	@ tmp154,
	ldr	r1, [r4, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1087	@,
	ldrsb	r3, [r0, #1]	@ D.36110, <variable>.s32DispState
	cmp	r3, #3	@ D.36110,
	cmpne	r3, #0	@, D.36110,
	beq	.L1102	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.36127, <variable>.is_used
	cmp	r2, #0	@ D.36127,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.3732, <variable>.non_existing
	beq	.L1097	@,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	beq	.L1097	@,
	ldr	r3, [r4, #0]	@ tmp178,* pFrameStore
	movw	ip, #:lower16:50332416	@ tmp179,
	movt	ip, #:upper16:50332416	@ tmp179,
	bic	r1, r3, #16711680	@ tmp176, tmp178,
	bic	lr, r1, #255	@ tmp176, tmp176,
	cmp	lr, ip	@ tmp176, tmp179
	beq	.L1103	@,
	cmp	r2, #1	@ D.36127,
	beq	.L1104	@,
	cmp	r2, #2	@ D.36127,
	beq	.L1105	@,
.L1094:
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #188]	@ D.36153, <variable>.stDispImg.error_level
	ldr	r3, [lr, #4]	@ D.36154, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.36153, D.36154
	movls	r0, #0	@ D.36104,
	bhi	.L1106	@,
.L1086:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1105:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3750, <variable>.mode_skip_flag
	tst	r3, #2	@ temp.3750,
	beq	.L1094	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
.L1102:
	movw	r1, #:lower16:.LC31	@,
	ldr	r2, [r4, #572]	@, <variable>.logic_fs_id
	movt	r1, #:upper16:.LC31	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1089:
	ldr	r3, [r4, #592]	@ <variable>.eFoState, <variable>.eFoState
	mvn	r0, #2	@ D.36104,
	cmp	r3, #1	@ <variable>.eFoState,
	moveq	r3, #2	@ tmp173,
	streq	r3, [r4, #592]	@ tmp173, <variable>.eFoState
	b	.L1086	@
.L1104:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3748, <variable>.mode_skip_flag
	tst	r3, #1	@ temp.3748,
	beq	.L1094	@,
	mov	r0, r2	@, D.36127
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
.L1087:
	ldr	ip, [r4, #572]	@ <variable>.logic_fs_id, <variable>.logic_fs_id
	movw	r1, #:lower16:.LC32	@,
	ldr	r3, [r4, #592]	@ <variable>.eFoState, <variable>.eFoState
	movt	r1, #:upper16:.LC32	@,
	mov	r2, r4	@, pFrameStore
	mov	r0, #1	@,
	str	ip, [sp, #0]	@ <variable>.logic_fs_id,
	bl	dprint_vfmw	@
	b	.L1089	@
.L1101:
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L1085	@,
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
.L1097:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
.L1106:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
.L1103:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@, <variable>.mode_skip_flag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36104,
	b	.L1086	@
	.fnend
	.size	CheckFrameStore, .-CheckFrameStore
	.align	2
	.global	H264DEC_RecycleImage
	.type	H264DEC_RecycleImage, %function
H264DEC_RecycleImage:
	.fnstart
.LFB1496:
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
	movw	r6, #55520	@ tmp144,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ PicID, PicID
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r5	@, PicID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pstLogicFs,
	bne	.L1115	@,
.L1108:
	mvn	r0, #0	@ D.43409,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1115:
	ldrsb	r3, [r7, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #0	@ <variable>.s32DispState,
	beq	.L1108	@,
	ldr	r1, [r7, #200]	@ D.43411, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ D.43411,
	beq	.L1109	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp149,
	str	r0, [r7, #200]	@ tmp149, <variable>.stDispImg.p_usrdat
.L1109:
	ldr	r1, [r7, #204]	@ temp.3784, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3784,
	beq	.L1110	@,
	movw	r2, #55520	@ tmp150,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp152,
	str	r1, [r7, #204]	@ tmp152, <variable>.stDispImg.p_usrdat
.L1110:
	ldr	r1, [r7, #208]	@ temp.3786, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3786,
	beq	.L1111	@,
	movw	lr, #55520	@ tmp153,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp155,
	str	ip, [r7, #208]	@ tmp155, <variable>.stDispImg.p_usrdat
.L1111:
	ldr	r1, [r7, #212]	@ temp.3780, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3780,
	beq	.L1112	@,
	movw	r2, #55520	@ tmp156,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp158,
	str	r3, [r7, #212]	@ tmp158, <variable>.stDispImg.p_usrdat
.L1112:
	movw	ip, #55520	@ tmp159,
	mov	r1, r5	@, PicID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.43409,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	H264DEC_RecycleImage, .-H264DEC_RecycleImage
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
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
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r6, r1	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	ip, [r5, #368]	@ D.35396, <variable>.pCurrNal
	mov	r2, r6	@, SE_TRACEstring
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	lr, lr, #1	@ tmp141, <variable>.nal_bitoffset,
	str	lr, [ip, #64]	@ tmp141, <variable>.nal_bitoffset
	mov	r4, r0	@ INFO,
	mov	r0, #21	@,
	mov	r3, r4	@, INFO
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	u_1, .-u_1
	.align	2
	.global	u_v
	.type	u_v, %function
u_v:
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
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r7, r2	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsGet	@
	ldr	ip, [r6, #368]	@ D.35384, <variable>.pCurrNal
	mov	r2, r7	@, SE_TRACEstring
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp142, <variable>.nal_bitoffset, LenInBits
	str	r5, [ip, #64]	@ tmp142, <variable>.nal_bitoffset
	mov	r4, r0	@ INFO,
	mov	r0, #21	@,
	mov	r3, r4	@, INFO
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	u_v, .-u_v
	.align	2
	.global	H264_DecPicTimingSEI
	.type	H264_DecPicTimingSEI, %function
H264_DecPicTimingSEI:
	.fnstart
.LFB1479:
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
	movw	r3, #13580	@ tmp150,
	movw	ip, #14332	@ tmp151,
	ldr	r4, [r0, r3]	@ pSPS, <variable>.SPS
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, ip]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r1, #3992	@ tmp154,
	mla	r3, r1, r0, r4	@ pSPS.3864, tmp154, <variable>.CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	movne	r4, r3	@ pSPS, pSPS.3864
	bne	.L1126	@,
	movw	r2, #13572	@ tmp156,
	ldr	ip, [r5, r2]	@ D.42288, <variable>.MaxSpsNum
	cmp	ip, #0	@ D.42288,
	ble	.L1122	@,
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L1123	@,
	tst	ip, #1	@ D.42288,
	add	r3, r4, #3984	@ ivtmp.3860, pSPS,
	add	r3, r3, #8	@ ivtmp.3860, ivtmp.3860,
	bne	.L1125	@,
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.42285, <variable>.is_valid
	mov	r4, r3	@ pSPS, ivtmp.3860
	add	r3, r3, #3984	@ ivtmp.3860, ivtmp.3860,
	mov	r1, #1	@ i,
	cmp	r0, #0	@ D.42285,
	add	r3, r3, #8	@ ivtmp.3860, ivtmp.3860,
	beq	.L1125	@,
	b	.L1123	@
.L1127:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ D.42285, <variable>.is_valid
	add	r2, r2, #8	@ tmp180, tmp158,
	cmp	r0, #0	@ D.42285,
	bne	.L1123	@,
	mov	r4, r2	@ pSPS, tmp180
	ldrb	r2, [r2, #23]	@ zero_extendqisi2	@ D.42285, <variable>.is_valid
	cmp	r2, #0	@ D.42285,
	bne	.L1123	@,
.L1125:
	add	r0, r1, #1	@ tmp181, i,
	add	r2, r3, #3984	@ tmp158, pSPS,
	cmp	ip, r0	@ D.42288, tmp181
	mov	r4, r3	@ pSPS, ivtmp.3860
	add	r1, r0, #1	@ i, tmp181,
	add	r3, r2, #4000	@ ivtmp.3860, tmp158,
	bgt	.L1127	@,
.L1122:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.42292,
.L1128:
	mov	r0, r3	@, D.42292
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1123:
	cmp	r4, #0	@ pSPS,
	beq	.L1122	@,
.L1126:
	ldrb	r1, [r4, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	r1, #0	@ <variable>.vui_parameters_present_flag,
	beq	.L1129	@,
	ldrb	ip, [r4, #35]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag, <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L1144	@,
	ldr	lr, [r4, #388]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r6, [r4, #392]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, lr, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r6, #1	@ dpb_output_len, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L1132:
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC41	@,
	movt	r2, #:upper16:.LC41	@,
	bl	u_v	@
	movw	ip, #26416	@ tmp169,
	mov	r1, r6	@, dpb_output_len
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	str	r0, [r5, ip]	@, <variable>.PicTimingSEI.cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26420	@ tmp171,
	str	r0, [r5, r1]	@, <variable>.PicTimingSEI.dpb_output_delay
.L1129:
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.pic_struct_present_flag, <variable>.vui_seq_parameters.pic_struct_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.pic_struct_present_flag,
	beq	.L1128	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	bl	u_v	@
	mov	r3, #0	@ D.42292,
	movw	r2, #26412	@ tmp174,
	strb	r0, [r5, r2]	@, <variable>.PicTimingSEI.pic_struct
	mov	r0, r3	@, D.42292
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1144:
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag, <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L1129	@,
	ldr	r0, [r4, #700]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r3, [r4, #704]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r0, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r3, #1	@ dpb_output_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L1132	@
	.fnend
	.size	H264_DecPicTimingSEI, .-H264_DecPicTimingSEI
	.align	2
	.global	GetBackPicFromVOQueue
	.type	GetBackPicFromVOQueue, %function
GetBackPicFromVOQueue:
	.fnstart
.LFB1437:
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
	movw	r3, #55520	@ tmp144,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L1163	@,
.L1146:
	movw	sl, #53996	@ tmp147,
	ldr	r0, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r0, #0	@ <variable>.TotalFsNum,
	beq	.L1147	@,
	add	r4, r6, #27136	@ ivtmp.3900, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #161	@ ivtmp.3900, ivtmp.3900,
	mov	r5, r7	@ tmp172, i
	movw	r8, #55520	@ tmp173,
.L1152:
	ldr	r1, [r4, #199]	@ D.38503, <variable>.fs_image.p_usrdat
	add	r7, r7, #1	@ i, i,
	strb	r5, [r4, #0]	@ tmp172, <variable>.is_used
	cmp	r1, #0	@ D.38503,
	strb	r5, [r4, #1]	@ tmp172, <variable>.is_reference
	beq	.L1148	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #199]	@ tmp172, <variable>.fs_image.p_usrdat
.L1148:
	ldr	r1, [r4, #203]	@ temp.3913, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3913,
	beq	.L1149	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #203]	@ tmp172, <variable>.fs_image.p_usrdat
.L1149:
	ldr	r1, [r4, #207]	@ temp.3915, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3915,
	beq	.L1150	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #207]	@ tmp172, <variable>.fs_image.p_usrdat
.L1150:
	ldr	r1, [r4, #211]	@ temp.3908, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3908,
	beq	.L1151	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #211]	@ tmp172, <variable>.fs_image.p_usrdat
.L1151:
	ldr	r1, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r4, r4, #624	@ ivtmp.3900, ivtmp.3900,
	cmp	r1, r7	@ <variable>.TotalFsNum, i
	bhi	.L1152	@,
.L1147:
	movw	r2, #54000	@ tmp168,
	ldr	ip, [r6, r2]	@ D.38507, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.38507,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r6, r6, #53760	@ tmp169, pH264Ctx,
	mov	r2, #1	@ i.3910,
	add	r3, r6, #168	@ ivtmp.3895, tmp169,
	cmp	r2, ip	@ i.3910, D.38507
	sub	lr, ip, #1	@ tmp175, D.38507,
	mov	r0, #0	@ tmp171,
	add	r1, r6, #172	@ ivtmp.3895, tmp169,
	str	r0, [r3, #0]	@ tmp171, <variable>.PmvStoreUsedFlag
	and	r3, lr, r2	@ tmp177, tmp175,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r3, #0	@ tmp177,
	beq	.L1154	@,
	mov	r2, #2	@ i.3910,
	cmp	r2, ip	@ i.3910, D.38507
	str	r0, [r1, #0]	@ tmp171, <variable>.PmvStoreUsedFlag
	add	r1, r6, #176	@ ivtmp.3895, tmp169,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1154:
	add	r2, r2, #2	@ i.3910, i.3910,
	mov	lr, r1	@ tmp179, ivtmp.3895
	cmp	r2, ip	@ i.3910, D.38507
	str	r0, [lr], #4	@ tmp171, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp171, <variable>.PmvStoreUsedFlag
	add	r1, lr, #4	@ ivtmp.3895, tmp179,
	bcc	.L1154	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1163:
	add	r0, r6, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1146	@
	.fnend
	.size	GetBackPicFromVOQueue, .-GetBackPicFromVOQueue
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
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
	subs	r4, r1, #0	@ pNalu, pNalu
	mov	r6, r0	@ ChanID, ChanID
	beq	.L1170	@,
	ldr	r3, [r4, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r5, #0	@ tmp137,
	strb	r5, [r4, #1]	@ tmp137, <variable>.is_valid
	cmp	r3, r5	@ <variable>.streamBuffer,
	strb	r5, [r4, #3]	@ tmp137, <variable>.nal_integ
	beq	.L1167	@,
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r4, #8]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC44	@,
	ldr	r3, [r4, #12]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	str	r5, [r4, #12]	@ tmp137, <variable>.bitstream_length
	str	r5, [r4, #8]	@ tmp137, <variable>.streamBuffer
	str	r5, [r4, #24]	@ tmp137, <variable>.bitsoffset
.L1167:
	ldr	r0, [r4, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r0, #0	@ <variable>.streamBuffer,
	beq	.L1168	@,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r4, #36]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC44	@,
	ldr	r3, [r4, #40]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp154,
	str	r1, [r4, #40]	@ tmp154, <variable>.bitstream_length
	str	r1, [r4, #36]	@ tmp154, <variable>.streamBuffer
	str	r1, [r4, #52]	@ tmp154, <variable>.bitsoffset
.L1168:
	mov	r2, #0	@ tmp157,
	str	r2, [r4, #68]	@ tmp157, <variable>.nal_segment
	strb	r2, [r4, #0]	@ tmp157, <variable>.nal_used_segment
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1170:
	mov	r0, r4	@, pNalu
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #3636	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
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
	add	r4, r0, #53248	@ ivtmp.3983, pH264Ctx,
	add	sl, r0, #53760	@ D.47051, pH264Ctx,
	add	r4, r4, #136	@ ivtmp.3983, ivtmp.3983,
	add	sl, sl, #168	@ D.47051, D.47051,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #55520	@ tmp148,
	mov	r7, #0	@ tmp149,
.L1173:
	ldr	r1, [r4, #0]	@ D.35440, <variable>.pSliceNal
	add	r5, r4, #4	@ tmp150, ivtmp.3983,
	cmp	r1, #0	@ D.35440,
	beq	.L1172	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #0]	@ tmp149, <variable>.pSliceNal
.L1172:
	ldr	r1, [r4, #4]	@ D.35440, <variable>.pSliceNal
	cmp	r1, #0	@ D.35440,
	beq	.L1176	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #4]	@ tmp149, <variable>.pSliceNal
.L1176:
	add	r4, r5, #4	@ ivtmp.3983, tmp150,
	cmp	r4, sl	@ ivtmp.3983, D.47051
	bne	.L1173	@,
	movw	r1, #55444	@ tmp143,
	movw	r3, #55504	@ tmp145,
	mov	r0, #0	@ tmp144,
	str	r0, [r6, r1]	@ tmp144, <variable>.SliceParaNum
	str	r0, [r6, r3]	@ tmp144, <variable>.MaxBytesReceived
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	ClearAllSlice, .-ClearAllSlice
	.align	2
	.global	H264_ClearCurrPic
	.type	H264_ClearCurrPic, %function
H264_ClearCurrPic:
	.fnstart
.LFB1367:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearAllSlice	@
	movw	r1, #13576	@ tmp136,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	ip, #22320	@ tmp140,
	mov	r3, #0	@ tmp141,
	movw	r2, #22328	@ tmp135,
	strb	r3, [r4, ip]	@ tmp141, <variable>.PrevSlice.field_pic_flag
	movw	ip, #22336	@ tmp138,
	str	r0, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r1, #22352	@ tmp155,
	movw	r2, #:lower16:88888	@ tmp162,
	movt	r2, #:upper16:88888	@ tmp162,
	str	r2, [r4, ip]	@ tmp162, <variable>.PrevSlice.frame_num
	movw	r2, #22321	@ tmp143,
	str	r3, [r4, r1]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	movw	ip, #22332	@ tmp146,
	mov	r1, #2	@ tmp144,
	strb	r1, [r4, r2]	@ tmp144, <variable>.PrevSlice.bottom_field_flag
	movw	r2, #22322	@ tmp148,
	mov	r1, #7	@ tmp147,
	str	r1, [r4, ip]	@ tmp147, <variable>.PrevSlice.nal_ref_idc
	mov	ip, #32	@ tmp149,
	movw	r1, #22344	@ tmp151,
	strb	ip, [r4, r2]	@ tmp149, <variable>.PrevSlice.nal_unit_type
	movw	r2, #22348	@ tmp153,
	mov	ip, #3	@ tmp152,
	str	ip, [r4, r1]	@ tmp152, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r1, #0	@ tmp154,
	movw	ip, #22360	@ tmp159,
	str	r1, [r4, r2]	@ tmp154, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #22356	@ tmp157,
	mov	r1, #262144	@ tmp160,
	mov	r0, r3	@, tmp141
	str	r1, [r4, ip]	@ tmp160, <variable>.PrevSlice.first_mb_in_slice
	str	r3, [r4, r2]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	H264_ClearCurrPic, .-H264_ClearCurrPic
	.align	2
	.global	ClearAllNal
	.type	ClearAllNal, %function
ClearAllNal:
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
	ldrb	r3, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r7, #55520	@ tmp147,
	cmp	r3, #1	@ <variable>.is_valid,
	beq	.L1194	@,
.L1187:
	mov	r3, #1	@ i,
	add	r2, r6, #96	@ ivtmp.4041, pH264Ctx,
	b	.L1184	@
.L1183:
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	beq	.L1195	@,
.L1189:
	add	r3, r5, #1	@ i, tmp148,
	add	r2, r4, #96	@ ivtmp.4041, tmp149,
	cmp	r3, #137	@ i,
	beq	.L1196	@,
.L1184:
	add	r4, r2, #96	@ tmp149, ivtmp.4041,
	ldrb	r2, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r5, r3, #1	@ tmp148, i,
	cmp	r2, #1	@ <variable>.is_valid,
	bne	.L1183	@,
	add	ip, r3, r3, asl #1	@, tmp142, i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	r1, r6, ip, asl #5	@, tmp144, pH264Ctx, tmp142,
	add	r1, r1, #376	@, tmp144,
	bl	ReleaseNAL	@
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	bne	.L1189	@,
.L1195:
	add	r3, r5, r5, asl #1	@, tmp166, tmp148, tmp148,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	lr, r6, r3, asl #5	@, tmp168, pH264Ctx, tmp166,
	add	r1, lr, #376	@, tmp168,
	bl	ReleaseNAL	@
	add	r3, r5, #1	@ i, tmp148,
	cmp	r3, #137	@ i,
	add	r2, r4, #96	@ ivtmp.4041, tmp149,
	bne	.L1184	@,
.L1196:
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1194:
	ldr	r0, [r0, r7]	@, <variable>.ChanID
	add	r1, r6, #376	@, pH264Ctx,
	bl	ReleaseNAL	@
	b	.L1187	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	H264DEC_Destroy
	.type	H264DEC_Destroy, %function
H264DEC_Destroy:
	.fnstart
.LFB1494:
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
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r6	@, pH264Ctx
	bl	ClearAllNal	@
	movw	r0, #55456	@ tmp145,
	ldr	r2, [r6, r0]	@ <variable>.MutexHold, <variable>.MutexHold
	movw	r7, #54024	@ tmp149,
	ldr	r3, [r6, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r2, #1	@ <variable>.MutexHold,
	moveq	r2, #0	@ tmp148,
	streq	r2, [r6, r0]	@ tmp148, <variable>.MutexHold
	cmp	r3, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1199	@,
	add	r4, r6, #54016	@ ivtmp.4085, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #12	@ ivtmp.4085, ivtmp.4085,
	movw	sl, #55520	@ tmp174,
	mov	r8, r5	@ tmp175, i
.L1201:
	ldr	r1, [r4, #0]	@ D.43274, <variable>.pUsrDatArray
	add	r5, r5, #1	@ i, i,
	cmp	r1, #0	@ D.43274,
	beq	.L1200	@,
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp175, <variable>.pUsrDatArray
.L1200:
	ldr	r1, [r6, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.4085, ivtmp.4085,
	cmp	r1, r5	@ <variable>.TotalUsrDatNum, i
	bhi	.L1201	@,
.L1199:
	add	r5, r6, #27392	@ ivtmp.4077, pH264Ctx,
	add	sl, r6, #52224	@ D.47151, pH264Ctx,
	add	r4, r5, #104	@ ivtmp.4077, ivtmp.4077,
	add	sl, sl, #232	@ D.47151, D.47151,
	movw	r8, #55520	@ tmp172,
	mov	r7, #0	@ tmp173,
.L1202:
	ldr	r1, [r4, #0]	@ temp.4089, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4089,
	beq	.L1204	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #0]	@ tmp173, <variable>.fs_image.p_usrdat
.L1204:
	ldr	r1, [r4, #4]	@ temp.4092, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4092,
	beq	.L1205	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #4]	@ tmp173, <variable>.fs_image.p_usrdat
.L1205:
	ldr	r1, [r4, #8]	@ temp.4094, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4094,
	beq	.L1206	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #8]	@ tmp173, <variable>.fs_image.p_usrdat
.L1206:
	ldr	r1, [r4, #12]	@ D.43280, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ D.43280,
	beq	.L1208	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #12]	@ tmp173, <variable>.fs_image.p_usrdat
.L1208:
	ldr	r1, [r4, #624]	@ temp.4089, <variable>.fs_image.p_usrdat
	add	r5, r4, #624	@ tmp177, ivtmp.4077,
	cmp	r1, #0	@ temp.4089,
	beq	.L1212	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #624]	@ tmp173, <variable>.fs_image.p_usrdat
.L1212:
	ldr	r1, [r5, #4]	@ temp.4092, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4092,
	beq	.L1213	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #4]	@ tmp173, <variable>.fs_image.p_usrdat
.L1213:
	ldr	r1, [r5, #8]	@ temp.4094, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4094,
	beq	.L1214	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #8]	@ tmp173, <variable>.fs_image.p_usrdat
.L1214:
	ldr	r1, [r5, #12]	@ D.43280, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ D.43280,
	beq	.L1218	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #12]	@ tmp173, <variable>.fs_image.p_usrdat
.L1218:
	add	r4, r5, #624	@ ivtmp.4077, tmp177,
	cmp	r4, sl	@ ivtmp.4077, D.47151
	bne	.L1202	@,
	movw	r1, #:lower16:.LC45	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	H264DEC_Destroy, .-H264DEC_Destroy
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
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
	ldr	r1, [r0, #368]	@ D.35404, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ D.35404,
	beq	.L1220	@,
	movw	r2, #55520	@ tmp136,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #368]	@ tmp138, <variable>.pCurrNal
.L1220:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
	.fnstart
.LFB1365:
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
	movw	r1, #:lower16:.LC46	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movt	r1, #:upper16:.LC46	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #55476	@ tmp136,
	ldr	r1, [r4, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	mov	r0, #0	@,
	add	r2, r1, #1	@ tmp139, <variable>.TotalSlice,
	str	r2, [r4, r3]	@ tmp139, <variable>.TotalSlice
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ClearCurrSlice, .-ClearCurrSlice
	.align	2
	.global	RepairList
	.type	RepairList, %function
RepairList:
	.fnstart
.LFB1412:
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
	movw	r2, #20672	@ tmp157,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1227	@,
	movcc	r9, #1	@ i_list_cnt,
	bcs	.L1265	@,
.L1230:
	add	r6, r3, #20480	@ ivtmp.4191, pH264Ctx,
	add	r7, r3, #26880	@ ivtmp.4194, pH264Ctx,
	mov	sl, #0	@ pRepairPic.4202,
	add	r6, r6, #236	@ ivtmp.4191, ivtmp.4191,
	add	r7, r7, #148	@ ivtmp.4194, ivtmp.4194,
	mov	r5, sl	@ i_list, pRepairPic.4202
	movw	r8, #52728	@ tmp194,
.L1244:
	ldr	r4, [r6, #0]	@ temp.4197, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.4197,
	beq	.L1231	@,
	ldr	r1, [r7, #0]	@ pRepairPic.4203, <variable>.pListX
	cmp	r1, #0	@ pRepairPic.4203,
	movne	ip, r1	@ pRepairPic, pRepairPic.4203
	bne	.L1233	@,
	add	ip, r5, r5, asl #5	@, tmp161, i_list, i_list,
	tst	r4, #1	@ temp.4197,
	mov	r0, r1	@ i, pRepairPic.4203
	add	r2, r3, ip, asl #2	@, tmp165, pH264Ctx, tmp161,
	add	ip, r2, #26880	@ ivtmp.4188, tmp165,
	add	r2, ip, #148	@ ivtmp.4188, ivtmp.4188,
	bne	.L1234	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	mov	r0, #1	@ i,
	cmp	ip, #0	@ pRepairPic,
	beq	.L1234	@,
	b	.L1233	@
.L1236:
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1233	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1233	@,
.L1234:
	add	r0, r0, #1	@ tmp204, i,
	cmp	r4, r0	@ temp.4197, tmp204
	add	r0, r0, #1	@ i, tmp204,
	bhi	.L1236	@,
	mov	ip, sl	@ pRepairPic, pRepairPic.4202
	mov	r2, #1	@ prephitmp.4158,
.L1235:
	cmp	ip, #0	@ pRepairPic,
	orreq	r2, r2, #1	@,, tmp170, prephitmp.4158
	cmp	r2, #0	@ tmp170,
	beq	.L1237	@,
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1263	@,
	ldr	r0, [r3, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	ip, r0, #464	@ pRepairPic, <variable>.CurrPic.frame_store,
.L1237:
	add	r2, r5, r5, asl #5	@, tmp177, i_list, i_list,
	tst	r4, #1	@ temp.4197,
	mov	r0, #0	@ i.4198,
	add	r2, r3, r2, asl #2	@, tmp181, pH264Ctx, tmp177,
	add	r2, r2, #26880	@ ivtmp.4176, tmp181,
	add	r2, r2, #152	@ ivtmp.4176, ivtmp.4176,
	bne	.L1241	@,
	cmp	r1, #0	@ pRepairPic.4203,
	mov	r0, #1	@ i.4198,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4197, i.4198
	add	r2, r2, #4	@ ivtmp.4176, ivtmp.4176,
	ldrhi	r1, [r2, #-4]	@ pRepairPic.4203, <variable>.pListX
	bhi	.L1241	@,
	b	.L1240	@
.L1250:
	mov	r2, r1	@ ivtmp.4176, tmp200
	add	r0, r0, #1	@ i.4198, tmp199,
	ldr	r1, [r2], #4	@ pRepairPic.4203, <variable>.pListX
.L1241:
	add	r0, r0, #1	@ tmp199, i.4198,
	cmp	r1, #0	@ pRepairPic.4203,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4197, tmp199
	add	r1, r2, #4	@ tmp200, ivtmp.4176,
	bls	.L1240	@,
	ldr	r2, [r1, #-4]	@ pRepairPic.4203, <variable>.pListX
	cmp	r2, #0	@ pRepairPic.4203,
	streq	ip, [r1, #-4]	@ pRepairPic, <variable>.pListX
	b	.L1250	@
.L1231:
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1263	@,
	ldr	r2, [r3, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, sl	@ pRepairPic, pRepairPic.4202
	mov	r1, #1	@,
	str	r1, [r6, #0]	@, <variable>.CurrSlice.listXsize
	add	r0, r2, #464	@ tmp187, <variable>.CurrPic.frame_store,
	str	r0, [r7, #0]	@ tmp187, <variable>.pListX
.L1240:
	add	r5, r5, #1	@ i_list, i_list,
	add	r6, r6, #4	@ ivtmp.4191, ivtmp.4191,
	cmp	r5, r9	@ i_list, i_list_cnt
	add	r7, r7, #132	@ ivtmp.4194, ivtmp.4194,
	bcs	.L1228	@,
	mov	sl, ip	@ pRepairPic.4202, pRepairPic
	b	.L1244	@
.L1233:
	mov	r2, #0	@ prephitmp.4158,
	b	.L1235	@
.L1265:
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L1228	@,
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.37512,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1228:
	mov	r0, #0	@ D.37512,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1263:
	mov	r0, r3	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.37512,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1227:
	mov	r9, #2	@ i_list_cnt,
	b	.L1230	@
	.fnend
	.size	RepairList, .-RepairList
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
.LFB1487:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r3, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, #4096	@ <variable>.bitstream_length,
	bcs	.L1268	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	mov	r5, #0	@ tmp162,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ temp.4229, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	ldr	r6, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [ip, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r3, [ip, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r6, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #4]	@ <variable>.bitstream_length,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #368]	@ temp.4231, <variable>.pCurrNal
	ldr	r3, [r0, #12]	@ temp.4232, <variable>.bitstream_length
	ldr	r6, [r0, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	ldr	r1, [r0, #8]	@, <variable>.streamBuffer
	mov	r2, r3	@, temp.4232
	rsb	r0, r3, r6	@, temp.4232, <variable>.streamBuffer
	bl	memcpy	@
	ldr	ip, [r4, #368]	@ temp.4233, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	ldr	r2, [ip, #60]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r6, [ip, #32]	@ StreamId, <variable>.StreamID
	str	r2, [ip, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r3, #24]	@ tmp162, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.4235, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	rsb	r2, r2, ip	@ tmp166, <variable>.bitstream_length, <variable>.streamBuffer
	str	r2, [r3, #8]	@ tmp166, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ temp.4240, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	rsb	r2, r2, ip	@ tmp169, <variable>.bitstream_length, <variable>.stream_phy_addr
	str	r2, [r3, #16]	@ tmp169, <variable>.stream_phy_addr
	ldr	r3, [r4, #368]	@ temp.4243, <variable>.pCurrNal
	ldr	ip, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, ip, r2	@ tmp172, <variable>.bitstream_length, <variable>.bitstream_length
	str	r2, [r3, #12]	@ tmp172, <variable>.bitstream_length
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #1	@ tmp174,
	str	ip, [r3, #68]	@ tmp174, <variable>.nal_segment
	ldr	r2, [r4, #368]	@ temp.4247, <variable>.pCurrNal
	ldr	r3, [r2, #12]	@, <variable>.bitstream_length
	ldr	r2, [r2, #16]	@, <variable>.stream_phy_addr
	bl	dprint_vfmw	@
	movw	r3, #55520	@ tmp178,
	mov	r1, r6	@, StreamId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [ip, #36]	@ tmp162, <variable>.streamBuffer
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r2, #52]	@ tmp162, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #40]	@ tmp162, <variable>.bitstream_length
.L1268:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	CombinePacket, .-CombinePacket
	.align	2
	.global	FindZeroBitsInSeg
	.type	FindZeroBitsInSeg, %function
FindZeroBitsInSeg:
	.fnstart
.LFB1485:
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
	ands	r3, r1, #63	@ tmp154, len,
	add	r2, r1, #63	@ tmp157, len,
	str	r1, [fp, #-48]	@ len, %sfp
	movne	r3, #1	@, tmp154,
	cmp	r1, #0	@ len,
	mov	sl, r0	@ ptr, ptr
	movge	r2, r1	@ len, len
	add	r8, r3, r2, asr #6	@, nRound, tmp154, len,
	cmp	r8, #0	@ nRound,
	movle	r4, #0	@ zero_byte,
	ble	.L1271	@,
	movw	r5, #:lower16:.LANCHOR1	@ tmp192,
	ldr	r7, [fp, #-48]	@ ivtmp.4304, %sfp
	movt	r5, #:upper16:.LANCHOR1	@ tmp192,
	mov	r4, #0	@ zero_byte,
	mov	r9, r5	@ tmp193, tmp192
.L1275:
	cmp	r7, #64	@ ivtmp.4304,
	movlt	r6, r7	@ ThisRoundSize.802, ivtmp.4304
	movge	r6, #64	@ ThisRoundSize.802,
	movw	r0, #:lower16:.LANCHOR1	@,
	rsb	r1, r6, r7	@ tmp160, ThisRoundSize.802, ivtmp.4304
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r2, r6	@, ThisRoundSize.802
	sub	r6, r6, #1	@ tmp167, ThisRoundSize.802,
	add	r1, sl, r1	@, ptr, tmp160
	bl	memcpy	@
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ tmp168,
	add	r3, r5, r6	@ pLastByte, tmp192, tmp167
	cmp	r0, #0	@ tmp168,
	bne	.L1271	@,
	cmp	r3, r9	@ pLastByte, tmp193
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1272	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp171,
	rsb	lr, r3, r5	@ tmp195, pLastByte, tmp192
	cmp	r2, #0	@ tmp171,
	mvn	ip, lr	@ tmp194, tmp195
	and	r2, ip, #1	@ tmp196, tmp194,
	bne	.L1271	@,
	sub	r3, r3, #1	@ ivtmp.4293, pLastByte,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4293, tmp192
	beq	.L1272	@,
	cmp	r2, #0	@ tmp196,
	beq	.L1273	@,
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2	@ tmp203,
	cmp	lr, #0	@ tmp203,
	bne	.L1271	@,
	sub	r3, r3, #1	@ ivtmp.4293, ivtmp.4293,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4293, tmp192
	bne	.L1273	@,
	b	.L1272	@
.L1274:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ tmp201,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r0, #0	@ tmp201,
	bne	.L1271	@,
	cmp	r3, r5	@ ivtmp.4293, tmp192
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1272	@,
.L1273:
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp202,
	sub	r2, r3, #1	@ tmp198, ivtmp.4293,
	sub	r3, r2, #1	@ ivtmp.4293, tmp198,
	cmp	r1, #0	@ tmp202,
	beq	.L1274	@,
.L1271:
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r4, r0	@ zero_byte,
	bge	.L1293	@,
.L1276:
	ldr	r2, [fp, #-48]	@, %sfp
	sub	ip, r2, #1	@ tmp173,,
	rsb	r3, r4, ip	@ tmp172, zero_byte, tmp173
	ldrb	r3, [sl, r3]	@ zero_extendqisi2	@ Byte,
	tst	r3, #1	@ Byte,
	bne	.L1293	@,
	mov	r3, r3, lsr #1	@ Byte.4308, Byte,
	tst	r3, #1	@ Byte.4308,
	movne	r0, #1	@ zero_bit,
	bne	.L1277	@,
	mov	r3, r3, lsr #1	@ Byte.4311, Byte.4308,
	tst	r3, #1	@ Byte.4311,
	movne	r0, #2	@ zero_bit,
	bne	.L1277	@,
	mov	r3, r3, lsr #1	@ Byte.4314, Byte.4311,
	tst	r3, #1	@ Byte.4314,
	movne	r0, #3	@ zero_bit,
	bne	.L1277	@,
	mov	r3, r3, lsr #1	@ Byte.4317, Byte.4314,
	tst	r3, #1	@ Byte.4317,
	movne	r0, #4	@ zero_bit,
	bne	.L1277	@,
	mov	r3, r3, lsr #1	@ Byte.4320, Byte.4317,
	tst	r3, #1	@ Byte.4320,
	movne	r0, #5	@ zero_bit,
	bne	.L1277	@,
	mov	r3, r3, lsr #1	@ Byte.4323, Byte.4320,
	tst	r3, #1	@ Byte.4323,
	movne	r0, #6	@ zero_bit,
	bne	.L1277	@,
	movs	r3, r3, lsr #1	@, Byte.4323,
	movne	r0, #7	@, zero_bit,
	moveq	r0, #8	@, zero_bit,
.L1277:
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1272:
	sub	r8, r8, #1	@ r, r,
	sub	r7, r7, #64	@ ivtmp.4304, ivtmp.4304,
	cmp	r8, #0	@ r,
	bgt	.L1275	@,
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r4, r0	@ zero_byte,
	blt	.L1276	@,
.L1293:
	mov	r0, #0	@ zero_bit,
	b	.L1277	@
	.fnend
	.size	FindZeroBitsInSeg, .-FindZeroBitsInSeg
	.align	2
	.global	FindTrailZeros
	.type	FindTrailZeros, %function
FindTrailZeros:
	.fnstart
.LFB1486:
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
	ldr	r3, [r0, #368]	@ prephitmp.4351, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r2, #1	@ <variable>.nal_segment,
	bls	.L1295	@,
	ldr	r1, [r3, #40]	@, <variable>.bitstream_length
	ldr	r0, [r3, #36]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4351, <variable>.pCurrNal
	ldr	r1, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r1, asl #3	@ zero_bit, <variable>.bitstream_length,
	bcs	.L1300	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L1295	@,
.L1297:
	add	r0, r0, #1	@ tmp152, zero_bit,
	str	r0, [r3, #72]	@ tmp152, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4366, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bls	.L1298	@,
	ldr	ip, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	cmp	r2, ip, asl #3	@ <variable>.nal_trail_zero_bit_num, <variable>.bitstream_length,
	bcc	.L1298	@,
	movw	lr, #55520	@ tmp157,
	ldr	r1, [r3, #60]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp161,
	mov	r0, #1	@ tmp163,
	str	r3, [r2, #36]	@ tmp161, <variable>.streamBuffer
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r0, [ip, #68]	@ tmp163, <variable>.nal_segment
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r3, [r1, #72]	@ tmp161, <variable>.nal_trail_zero_bit_num
.L1298:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1300:
	movw	lr, #55520	@ tmp143,
	ldr	r1, [r3, #60]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #0	@ tmp147,
	mov	r0, #1	@ tmp149,
	str	ip, [r2, #36]	@ tmp147, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r0, [r3, #68]	@ tmp149, <variable>.nal_segment
	ldr	r3, [r4, #368]	@ prephitmp.4351, <variable>.pCurrNal
.L1295:
	ldr	r1, [r3, #12]	@, <variable>.bitstream_length
	ldr	r0, [r3, #8]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4351, <variable>.pCurrNal
	b	.L1297	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	H264_IsNewPicNal
	.type	H264_IsNewPicNal, %function
H264_IsNewPicNal:
	.fnstart
.LFB1483:
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ tmp140,
	mov	r4, r0	@ pNewPicDetector, pNewPicDetector
	add	r1, r1, #3	@ pu8.4398, pu8,
	and	r0, r2, #31	@ tmp141, tmp140,
	sub	r3, r0, #1	@ tmp142, tmp141,
	cmp	r3, #7	@ tmp142,
	ldrls	pc, [pc, r3, asl #2]	@ tmp142
	b	.L1302	@
.L1305:
	.word	.L1303
	.word	.L1302
	.word	.L1302
	.word	.L1302
	.word	.L1303
	.word	.L1302
	.word	.L1304
	.word	.L1304
.L1304:
	ldr	r0, [r4, #0]	@ tmp157,* pNewPicDetector
	mov	r3, #1	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* pNewPicDetector
	cmp	r0, #0	@ tmp157,
	mvnne	r0, #0	@, ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1303:
	ldr	r5, [r4, #0]	@ tmp143,* pNewPicDetector
	cmp	r5, #0	@ tmp143,
	beq	.L1312	@,
.L1307:
	mvn	r0, #0	@ ret,
.L1308:
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* pNewPicDetector
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1302:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1312:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ tmp146,
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ tmp144,
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ tmp151,
	ldrb	lr, [r1, #4]	@ zero_extendqisi2	@ tmp149,
	mov	r3, r2, asl #16	@ tmp147, tmp146,
	orr	r1, r3, r0, asl #8	@, tmp148, tmp147, tmp144,
	orr	r6, r1, lr	@ tmp150, tmp148, tmp149
	orr	r6, r6, ip, asl #24	@, tmpbits, tmp150, tmp151,
	mov	r0, r6	@, tmpbits
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	bhi	.L1307	@,
	mov	ip, r0, asl #1	@ tmp153, zeros,
	rsb	r0, ip, #31	@ tmp154, tmp153,
	mov	r6, r6, lsr r0	@ tmp155, tmpbits,
	cmp	r6, #1	@ tmp155,
	moveq	r0, r5	@ ret, tmp143
	bne	.L1307	@,
	b	.L1308	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
.LFB1447:
	@ args = 0, pretend = 0, frame = 48
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
	movw	r6, #52744	@ tmp161,
	movw	r5, #52259	@ tmp163,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r0, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	sl, #52796	@ tmp167,
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #52448	@ tmp165,
	ldr	r8, [r4, r0]	@ <variable>.CurrPic.fs_image.image_id, <variable>.CurrPic.fs_image.image_id
	movw	r1, #:lower16:.LC50	@,
	ldr	lr, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movt	r1, #:upper16:.LC50	@,
	mov	r0, #2	@,
	movw	r9, #52280	@ tmp172,
	str	r8, [sp, #0]	@ <variable>.CurrPic.fs_image.image_id,
	movw	r7, #55440	@ tmp175,
	str	lr, [sp, #4]	@ <variable>.CurrPic.pmv_address_idc,
	bl	dprint_vfmw	@
	movw	ip, #52444	@ tmp178,
	movw	r2, #13607	@ tmp188,
	movw	r3, #52780	@ tmp191,
	ldrd	r0, [r4, r9]	@, pH264Ctx, tmp172
	ldr	r9, [r4, r7]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	movw	r8, #52728	@ tmp229,
	ldr	r7, [r4, ip]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.CurrPic.fs_image.image_stride
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	ldr	r2, [r4, r3]	@, <variable>.CurrPic.pic_height_in_mb
	movw	r3, #52784	@ tmp194,
	str	r2, [fp, #-88]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.CurrPic.frame_height_in_mb
	movw	r3, #13606	@ tmp201,
	str	r2, [fp, #-92]	@, %sfp
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17640	@ tmp205,
	str	r2, [fp, #-56]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.CurrPPS.transform_8x8_mode_flag
	movw	r3, #17580	@ tmp208,
	str	r2, [fp, #-60]	@, %sfp
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.entropy_coding_mode_flag
	mov	r3, #14336	@ tmp211,
	str	r2, [fp, #-64]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.CurrSPS.chroma_format_idc
	movw	r3, #17584	@ tmp215,
	str	r2, [fp, #-68]	@, %sfp
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.constrained_intra_pred_flag
	movw	r3, #19832	@ tmp218,
	str	r2, [fp, #-72]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.CurrPOC.ThisPOC
	movw	r3, #19820	@ tmp221,
	str	r2, [fp, #-76]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.CurrPOC.toppoc
	movw	r3, #19824	@ tmp224,
	str	r2, [fp, #-80]	@, %sfp
	movw	r2, #17536	@ tmp197,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r6, #54056	@ tmp171,
	strd	r0, [r4, r6]	@, pH264Ctx, tmp171
	movw	r6, #55172	@ tmp174,
	str	r9, [r4, r6]	@ <variable>.DecSlicePara, <variable>.DecPicPara.pFirstSlice
	movw	r9, #54960	@ tmp177,
	ldrb	r5, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r6, #55444	@ tmp169,
	str	r7, [r4, r9]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.DecPicPara.imgstride
	mov	r9, #0	@ tmp170,
	str	r9, [r4, r6]	@ tmp170, <variable>.SliceParaNum
	movw	r6, #54064	@ tmp180,
	str	lr, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.DecPicPara.nal_ref_idc
	movw	lr, #54048	@ tmp183,
	strb	r5, [r4, lr]	@ <variable>.CurrPic.structure, <variable>.DecPicPara.pic_structure
	movw	lr, #54080	@ tmp187,
	str	ip, [r4, lr]	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.DecPicPara.mb_adaptive_frame_field_flag
	movw	r5, #54068	@ tmp190,
	ldr	r1, [fp, #-88]	@, %sfp
	movw	ip, #54072	@ tmp193,
	ldr	r3, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r7, #55520	@ tmp226,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	str	r1, [r4, r5]	@, <variable>.DecPicPara.pic_height_in_mb
	movw	r5, #54076	@ tmp196,
	ldr	lr, [fp, #-92]	@, %sfp
	add	r2, r2, #1	@ tmp199, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	str	r2, [r4, r5]	@ tmp199, <variable>.DecPicPara.pic_width_in_mb
	movw	r1, #54051	@ tmp200,
	movw	r2, #54084	@ tmp204,
	str	lr, [r4, ip]	@, <variable>.DecPicPara.frame_height_in_mb
	movw	ip, #54088	@ tmp207,
	ldr	r0, [fp, #-56]	@, %sfp
	strb	r0, [r4, r1]	@, <variable>.DecPicPara.frame_mbs_only_flag
	movw	r1, #54049	@ tmp210,
	ldr	lr, [fp, #-60]	@, %sfp
	str	lr, [r4, r2]	@, <variable>.DecPicPara.transform_8x8_mode_flag
	movw	r2, #54092	@ tmp214,
	ldr	r5, [fp, #-64]	@, %sfp
	str	r5, [r4, ip]	@, <variable>.DecPicPara.entropy_coding_mode_flag
	movw	ip, #54096	@ tmp217,
	ldr	r0, [fp, #-68]	@, %sfp
	strb	r0, [r4, r1]	@, <variable>.DecPicPara.chroma_format_idc
	movw	r1, #54100	@ tmp220,
	ldr	lr, [fp, #-72]	@, %sfp
	str	lr, [r4, r2]	@, <variable>.DecPicPara.constrained_intra_pred_flag
	movw	r2, #54104	@ tmp223,
	ldr	r5, [fp, #-76]	@, %sfp
	str	r5, [r4, ip]	@, <variable>.DecPicPara.ThisPoc
	ldr	r0, [fp, #-80]	@, %sfp
	str	r3, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.DecPicPara.BottomPoc
	ldr	r3, [r4, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r4, r1]	@, <variable>.DecPicPara.TopPoc
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pstLogicFs,
	beq	.L1355	@,
	ldr	r2, [r5, #472]	@ D.39503, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39503,
	ldreq	r3, [r5, #476]	@ prephitmp.4418, <variable>.pstDispOutFs
	beq	.L1317	@,
	ldr	r3, [r5, #476]	@ prephitmp.4418, <variable>.pstDispOutFs
	cmp	r3, #0	@ prephitmp.4418,
	beq	.L1317	@,
	add	r6, r4, #54784	@ tmp238, pH264Ctx,
	add	lr, r4, #54528	@, pH264Ctx,
	add	r0, r4, #54272	@, pH264Ctx,
	add	r3, lr, #84	@,,
	add	r2, r0, #84	@,,
	add	r1, r6, #84	@, tmp238,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetDecFsAddrTab	@
	ldr	r8, [r5, #472]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movw	r3, #54340	@ tmp243,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r1, r6, #168	@, tmp238,
	add	r2, r6, #88	@, tmp238,
	ldr	ip, [r8, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	movw	r8, #54348	@ tmp252,
	str	ip, [r4, r3]	@ <variable>.PhyFsID, <variable>.DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r7, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r2, #54956	@ tmp255,
	movw	ip, #26892	@ tmp264,
	movw	r0, #54344	@ tmp257,
	str	r7, [r4, r8]	@ <variable>.CurrPic.pmv_address_idc, <variable>.DecPicPara.CurrPicPmvIdc
	ldr	r1, [r5, #488]	@ <variable>.HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	r7, [r4, ip]	@ <variable>.APC.size, <variable>.APC.size
	str	r1, [r4, r2]	@ <variable>.HalfPmvOffset, <variable>.DecPicPara.half_pmvblk_offset
	cmp	r7, #0	@ <variable>.APC.size,
	ldr	r3, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r2, #55164	@ tmp263,
	ldr	r8, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r8, [r4, r0]	@ <variable>.PhyAddr, <variable>.DecPicPara.CurrPicImg2DAddr
	ldr	ip, [r5, #476]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r5, #54352	@ tmp260,
	ldr	r1, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r7, [r4, r2]	@ <variable>.APC.size, <variable>.DecPicPara.ApcSize
	str	r1, [r4, r5]	@ <variable>.ChromOffset, <variable>.DecPicPara.ChromaOffset
	beq	.L1319	@,
	add	r5, r4, #26624	@ tmp267, pH264Ctx,
	mov	ip, #1	@ i,
	cmp	ip, r7	@ i, <variable>.APC.size
	mov	r1, r6	@ ivtmp.4499, tmp238
	mov	lr, r5	@ ivtmp.4496, tmp267
	sub	r9, r7, #1	@ tmp364, <variable>.APC.size,
	ldr	sl, [lr, #76]!	@ tmp269, <variable>.APC.idc
	and	r9, r9, ip	@ tmp366, tmp364,
	add	r2, r5, #80	@ ivtmp.4496, tmp267,
	add	r3, r6, #192	@ ivtmp.4499, tmp238,
	ldr	r8, [lr, #128]	@ tmp271, <variable>.APC.poc
	ldr	r0, [lr, #64]	@ tmp270, <variable>.APC.poc
	str	sl, [r1, #188]!	@ tmp269, <variable>.DecPicPara.Apc2Idc
	str	r8, [r1, #128]	@ tmp271, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #64]	@ tmp270, <variable>.DecPicPara.Apc2Poc
	bcs	.L1319	@,
	cmp	r9, #0	@ tmp366,
	beq	.L1354	@,
	ldr	lr, [r2, #128]	@ tmp444, <variable>.APC.poc
	mov	ip, #2	@ i,
	ldr	r0, [r2, #0]	@ tmp442, <variable>.APC.idc
	cmp	ip, r7	@ i, <variable>.APC.size
	ldr	r1, [r2, #64]	@ tmp443, <variable>.APC.poc
	add	r2, r5, #84	@ ivtmp.4496, tmp267,
	str	lr, [r3, #128]	@ tmp444, <variable>.DecPicPara.Apc2Poc
	str	r0, [r3, #0]	@ tmp442, <variable>.DecPicPara.Apc2Idc
	str	r1, [r3, #64]	@ tmp443, <variable>.DecPicPara.Apc2Poc
	add	r3, r6, #196	@ ivtmp.4499, tmp238,
	bcs	.L1319	@,
.L1354:
	mov	r9, r4	@ pH264Ctx, pH264Ctx
.L1320:
	add	r0, r2, #4	@ tmp368, ivtmp.4496,
	ldmia	r2, {r5, sl}	@ phole ldm
	add	ip, ip, #2	@ i, i,
	ldr	r8, [r2, #64]	@ tmp374, <variable>.APC.poc
	add	r1, r3, #4	@ tmp369, ivtmp.4499,
	ldr	r6, [r2, #128]	@ tmp375, <variable>.APC.poc
	add	r2, r0, #4	@ ivtmp.4496, tmp368,
	ldr	r4, [r0, #64]	@ tmp380, <variable>.APC.poc
	cmp	ip, r7	@ i, <variable>.APC.size
	ldr	r0, [r0, #128]	@ tmp381, <variable>.APC.poc
	str	r8, [r3, #64]	@ tmp374, <variable>.DecPicPara.Apc2Poc
	str	r6, [r3, #128]	@ tmp375, <variable>.DecPicPara.Apc2Poc
	stmia	r3, {r5, sl}	@ phole stm
	add	r3, r1, #4	@ ivtmp.4499, tmp369,
	str	r4, [r1, #64]	@ tmp380, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #128]	@ tmp381, <variable>.DecPicPara.Apc2Poc
	bcc	.L1320	@,
	mov	r4, r9	@ pH264Ctx, pH264Ctx
.L1319:
	movw	r3, #13613	@ tmp272,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag, <variable>.CurrSPS.seq_scaling_matrix_present_flag
	cmp	r2, #0	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1321	@,
	movw	ip, #17598	@ tmp274,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.4421, <variable>.CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ prephitmp.4421,
	bne	.L1322	@,
	add	r0, r4, #54016	@ tmp347, pH264Ctx,
	movw	r1, #:lower16:.LANCHOR2	@ tmp348,
	add	ip, r0, #92	@ ivtmp.4459, tmp347,
	movt	r1, #:upper16:.LANCHOR2	@ tmp348,
.L1323:
	and	r6, r3, #3	@ tmp277, i.4513,
	add	r2, r3, #1	@ tmp354, i.4513,
	and	r8, r2, #3	@ tmp384, tmp354,
	mov	lr, ip	@ tmp355, ivtmp.4459
	ldr	r6, [r1, r6, asl #2]	@ tmp278, quant_org
	add	r3, r2, #1	@ i.4513, tmp354,
	cmp	r3, #24	@ i.4513,
	str	r6, [lr], #4	@ tmp278, <variable>.DecPicPara.Qmatrix
	ldr	r5, [r1, r8, asl #2]	@ tmp385, quant_org
	str	r5, [ip, #4]	@ tmp385, <variable>.DecPicPara.Qmatrix
	add	ip, lr, #4	@ ivtmp.4459, tmp355,
	bne	.L1323	@,
	add	r0, r0, #188	@ ivtmp.4451, tmp347,
	mov	r3, #0	@ i.4514,
.L1324:
	and	ip, r3, #15	@ tmp281, i.4514,
	add	r3, r3, #1	@ tmp352, i.4514,
	and	r2, r3, #15	@ tmp388, tmp352,
	mov	lr, r0	@ tmp353, ivtmp.4451
	add	r5, r1, ip, asl #2	@, tmp284, tmp348, tmp281,
	add	r3, r3, #1	@ i.4514, tmp352,
	add	r8, r1, r2, asl #2	@, tmp390, tmp348, tmp388,
	cmp	r3, #32	@ i.4514,
	ldr	r5, [r5, #16]	@ tmp286, quant8_org
	str	r5, [lr], #4	@ tmp286, <variable>.DecPicPara.Qmatrix
	ldr	ip, [r8, #16]	@ tmp392, quant8_org
	str	ip, [r0, #4]	@ tmp392, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4451, tmp353,
	bne	.L1324	@,
.L1325:
	movw	r8, #26892	@ tmp335,
	ldr	r0, [r4, r8]	@ <variable>.APC.size, <variable>.APC.size
	cmp	r0, #0	@ <variable>.APC.size,
	beq	.L1331	@,
	add	r7, r4, #26624	@ ivtmp.4441, pH264Ctx,
	add	sl, r4, #55296	@ ivtmp.4444, pH264Ctx,
	add	r6, r7, #76	@ ivtmp.4441, ivtmp.4441,
	add	r5, sl, #8	@ ivtmp.4444, ivtmp.4444,
	mov	r7, #0	@ i.4529,
	movw	sl, #55520	@ tmp349,
.L1332:
	ldr	r2, [r6, #0]	@, <variable>.APC.idc
	mov	r1, #0	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	add	r7, r7, #1	@ i.4529, i.4529,
	bl	FSP_GetStoreType	@
	ldr	r3, [r4, r8]	@ <variable>.APC.size, <variable>.APC.size
	ldr	r2, [r6], #4	@ tmp343, <variable>.APC.idc
	str	r2, [r5, #64]	@ tmp343, <variable>.DecPicPara.RefPicFsId
	subs	ip, r0, #0	@ tmp342,,
	movne	ip, #1	@ tmp342
	cmp	r3, r7	@ <variable>.APC.size, i.4529
	str	ip, [r5, #0]	@ tmp342, <variable>.DecPicPara.RefPicType
	add	r5, r5, #4	@ ivtmp.4444, ivtmp.4444,
	bhi	.L1332	@,
.L1331:
	mov	r0, #0	@ D.39500,
.L1315:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1321:
	movw	lr, #17598	@ tmp287,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ prephitmp.4421, <variable>.CurrPPS.pic_scaling_matrix_present_flag
.L1322:
	cmp	r3, #1	@ prephitmp.4421,
	addne	r0, r4, #54016	@ tmp418, pH264Ctx,
	movne	r3, #0	@ i.4521,
	addne	r1, r0, #92	@ ivtmp.4491, tmp418,
	beq	.L1356	@,
.L1329:
	add	r2, r3, #1	@ tmp362, i.4521,
	add	lr, r3, #4064	@ tmp317, i.4521,
	add	r8, r2, #4064	@ tmp425, tmp362,
	add	r3, r2, #1	@ i.4521, tmp362,
	add	r5, r4, lr, asl #2	@, tmp320, pH264Ctx, tmp317,
	cmp	r3, #24	@ i.4521,
	add	ip, r4, r8, asl #2	@, tmp427, pH264Ctx, tmp425,
	mov	r2, r1	@ tmp363, ivtmp.4491
	ldr	lr, [r5, #4]	@ tmp322, <variable>.CurrSPS.qmatrix4x4
	ldr	r8, [ip, #4]	@ tmp429, <variable>.CurrSPS.qmatrix4x4
	str	lr, [r2], #4	@ tmp322, <variable>.DecPicPara.Qmatrix
	str	r8, [r1, #4]	@ tmp429, <variable>.DecPicPara.Qmatrix
	add	r1, r2, #4	@ ivtmp.4491, tmp363,
	bne	.L1329	@,
	add	r0, r0, #188	@ ivtmp.4483, tmp418,
	mov	r3, #0	@ i.4524,
.L1330:
	add	r8, r3, #1	@ tmp360, i.4524,
	add	r1, r3, #4080	@ tmp328, i.4524,
	add	r3, r8, #4080	@ tmp437, tmp360,
	add	r5, r1, #8	@ tmp328, tmp328,
	add	r2, r3, #8	@ tmp437, tmp437,
	add	r3, r8, #1	@ i.4524, tmp360,
	add	lr, r4, r5, asl #2	@, tmp332, pH264Ctx, tmp328,
	cmp	r3, #32	@ i.4524,
	add	r5, r4, r2, asl #2	@, tmp439, pH264Ctx, tmp437,
	mov	r8, r0	@ tmp361, ivtmp.4483
	ldr	ip, [lr, #4]	@ tmp334, <variable>.CurrSPS.qmatrix8x8
	ldr	r1, [r5, #4]	@ tmp441, <variable>.CurrSPS.qmatrix8x8
	str	ip, [r8], #4	@ tmp334, <variable>.DecPicPara.Qmatrix
	str	r1, [r0, #4]	@ tmp441, <variable>.DecPicPara.Qmatrix
	add	r0, r8, #4	@ ivtmp.4483, tmp361,
	bne	.L1330	@,
	b	.L1325	@
.L1356:
	add	r0, r4, #54016	@ tmp393, pH264Ctx,
	mov	r3, #0	@ i.4516,
	add	ip, r0, #92	@ ivtmp.4475, tmp393,
.L1327:
	add	r8, r3, #1	@ tmp358, i.4516,
	add	r1, r3, #4864	@ tmp293, i.4516,
	add	r3, r8, #4864	@ tmp401, tmp358,
	add	r6, r1, #26	@ tmp293, tmp293,
	add	r2, r3, #26	@ tmp401, tmp401,
	add	r3, r8, #1	@ i.4516, tmp358,
	add	lr, r4, r6, asl #2	@, tmp297, pH264Ctx, tmp293,
	cmp	r3, #24	@ i.4516,
	add	r6, r4, r2, asl #2	@, tmp403, pH264Ctx, tmp401,
	mov	r8, ip	@ tmp359, ivtmp.4475
	ldr	r5, [lr, #4]	@ tmp299, <variable>.CurrPPS.qmatrix4x4
	ldr	r1, [r6, #4]	@ tmp405, <variable>.CurrPPS.qmatrix4x4
	str	r5, [r8], #4	@ tmp299, <variable>.DecPicPara.Qmatrix
	str	r1, [ip, #4]	@ tmp405, <variable>.DecPicPara.Qmatrix
	add	ip, r8, #4	@ ivtmp.4475, tmp359,
	bne	.L1327	@,
	add	r0, r0, #188	@ ivtmp.4467, tmp393,
	mov	r3, #0	@ i.4518,
.L1328:
	add	ip, r3, #1	@ tmp356, i.4518,
	add	r1, r3, #4864	@ tmp305, i.4518,
	add	r3, ip, #4864	@ tmp413, tmp356,
	add	r5, r1, #50	@ tmp305, tmp305,
	add	lr, r3, #50	@ tmp413, tmp413,
	add	r3, ip, #1	@ i.4518, tmp356,
	add	r8, r4, r5, asl #2	@, tmp309, pH264Ctx, tmp305,
	cmp	r3, #32	@ i.4518,
	add	r5, r4, lr, asl #2	@, tmp415, pH264Ctx, tmp413,
	mov	lr, r0	@ tmp357, ivtmp.4467
	ldr	ip, [r8, #4]	@ tmp311, <variable>.CurrPPS.qmatrix8x8
	ldr	r2, [r5, #4]	@ tmp417, <variable>.CurrPPS.qmatrix8x8
	str	ip, [lr], #4	@ tmp311, <variable>.DecPicPara.Qmatrix
	str	r2, [r0, #4]	@ tmp417, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4467, tmp357,
	bne	.L1328	@,
	b	.L1325	@
.L1317:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39500,
	b	.L1315	@
.L1355:
	ldr	r3, [r4, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	ldr	r2, [r3, #572]	@, <variable>.logic_fs_id
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39500,
	b	.L1315	@
	.fnend
	.size	WritePicMsg, .-WritePicMsg
	.align	2
	.global	InitListX
	.type	InitListX, %function
InitListX:
	.fnstart
.LFB1430:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #220
	sub	sp, sp, #220	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #20672	@ tmp219,
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L1358	@,
	movw	r0, #52259	@ tmp221,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	beq	.L1359	@,
	mov	lr, #26624	@ tmp223,
	ldr	r5, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1361	@,
	add	r7, r4, #26368	@ ivtmp.4610, pH264Ctx,
	mov	r5, r2	@ list0idx.4680, <variable>.CurrSlice.slice_type
	add	r3, r7, #120	@ ivtmp.4610, ivtmp.4610,
.L1372:
	ldr	r6, [r3, #0]	@ temp.4686, <variable>.DPB.fs_ref
	sub	r1, fp, #44	@,,
	add	ip, r1, r5, asl #2	@, tmp263,, list0idx.4680,
	add	r2, r2, #1	@ i.4688, i.4688,
	add	r3, r3, #4	@ ivtmp.4610, ivtmp.4610,
	ldrb	r0, [r6, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	strne	r6, [ip, #-64]	@ temp.4686, fs_list0
	ldr	r8, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	addne	r5, r5, #1	@ list0idx.4680, list0idx.4680,
	cmp	r8, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4688
	bhi	.L1372	@,
.L1361:
	sub	r8, fp, #108	@ tmp267,,
	mov	r1, r5	@, list0idx.4680
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_frame_num_desc	@,
	mov	r0, r8	@, tmp267
	movt	r3, #:upper16:compare_fs_by_frame_num_desc	@,
	bl	qsort	@
	movw	r7, #52259	@ tmp273,
	add	r2, r4, #26880	@ D.38160, pH264Ctx,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r7, r2, #148	@ D.38160, D.38160,
	movw	r3, #20716	@ tmp269,
	mov	r6, #0	@ tmp270,
	mov	r1, r8	@, tmp267
	str	r6, [r4, r3]	@ tmp270, <variable>.CurrSlice.listXsize
	mov	r2, r5	@, list0idx.4680
	mov	r3, r7	@, D.38160
	add	r5, r4, #20480	@ D.38161, pH264Ctx,
	add	r8, r5, #236	@ D.38161, D.38161,
	str	r6, [sp, #4]	@ tmp270,
	str	r8, [sp, #0]	@ D.38161,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26628	@ tmp277,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	subeq	r6, fp, #236	@ tmp519,,
	beq	.L1374	@,
	mov	r3, r6	@ ivtmp.4604, tmp270
	sub	r6, fp, #236	@ tmp519,,
	mov	r5, r3	@ listltidx, ivtmp.4604
.L1375:
	add	r2, r4, r3	@ tmp280, pH264Ctx, ivtmp.4604
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	ip, r2, #26368	@ tmp282, tmp280,
	add	r5, r5, #1	@ listltidx, listltidx,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx
	ldr	lr, [ip, #184]	@ tmp283, <variable>.DPB.fs_ltref
	str	lr, [r6, r3]	@ tmp283, fs_listlt
	add	r3, r3, #4	@ ivtmp.4604, ivtmp.4604,
	bhi	.L1375	@,
.L1374:
	mov	r0, r6	@, tmp519
	mov	r1, r5	@, listltidx
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	bl	qsort	@
	movw	r3, #52259	@ tmp288,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp519
	mov	r2, r5	@, listltidx
	mov	r3, r7	@, D.38160
	mov	ip, #1	@ tmp291,
	stmia	sp, {r8, ip}	@ phole stm
	bl	GenPiclistfromFrmlist	@
.L1370:
	movw	lr, #20716	@ tmp294,
	mov	r2, #0	@ tmp293,
	ldr	r1, [r4, lr]	@ list0idx.4679, <variable>.CurrSlice.listXsize
	movw	r0, #20720	@ tmp292,
	str	r2, [r4, r0]	@ tmp293, <variable>.CurrSlice.listXsize
	cmp	r1, r2	@ list0idx.4679,
	bne	.L1376	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1377	@,
	movw	r3, #52259	@ tmp297,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ temp.4695, <variable>.CurrPic.structure
	cmp	r3, r2	@ temp.4695,
	beq	.L1564	@,
	movw	r2, #52728	@ tmp303,
	cmp	r3, #1	@ temp.4695,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r3, #27028	@ tmp306,
	addeq	ip, ip, #500	@ tmp305, <variable>.CurrPic.frame_store,
	addne	ip, ip, #536	@ tmp309, <variable>.CurrPic.frame_store,
	str	ip, [r4, r3]	@ tmp309, <variable>.pListX
.L1379:
	movw	r0, #20716	@ tmp310,
	mov	r1, #1	@ tmp311,
	str	r1, [r4, r0]	@ tmp311, <variable>.CurrSlice.listXsize
.L1376:
	movw	lr, #20728	@ tmp481,
	movw	r2, #20732	@ tmp485,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	lr, #20720	@ tmp487,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	ldr	ip, [r4, lr]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r3, r3, #1	@ tmp482, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r1, r3	@ list0idx.4679, tmp482
	movcc	r3, r1	@ i.4704, list0idx.4679
	add	r2, r0, #1	@ prephitmp.4557, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r2, ip	@ prephitmp.4557, <variable>.CurrSlice.listXsize
	movcs	r2, ip	@ prephitmp.4557, <variable>.CurrSlice.listXsize
	cmp	r3, #32	@ i.4704,
	movw	r1, #20716	@ tmp484,
	str	r3, [r4, r1]	@ i.4704, <variable>.CurrSlice.listXsize
	str	r2, [r4, lr]	@ prephitmp.4557, <variable>.CurrSlice.listXsize
	bls	.L1421	@,
	b	.L1422	@
.L1358:
	movw	sl, #52259	@ tmp313,
	ldrb	r7, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r7, #0	@ <variable>.CurrPic.structure,
	beq	.L1382	@,
	mov	ip, #26624	@ tmp315,
	ldr	r5, [r0, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1384	@,
	add	r7, r0, #26368	@ ivtmp.4676, pH264Ctx,
	mov	r5, #0	@ list0idx.4683,
	add	r3, r7, #120	@ ivtmp.4676, ivtmp.4676,
	mov	r2, r5	@ i.4723, list0idx.4683
	movw	r7, #52748	@ tmp533,
.L1405:
	ldr	r1, [r3, #0]	@ temp.4722, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4723, i.4723,
	add	r3, r3, #4	@ ivtmp.4676, ivtmp.4676,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1404	@,
	ldr	r6, [r1, #588]	@ <variable>.poc, <variable>.poc
	sub	r0, fp, #44	@,,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r9, r0, r5, asl #2	@, tmp407,, list0idx.4683,
	cmp	lr, r6	@ <variable>.CurrPic.thispoc, <variable>.poc
	strge	r1, [r9, #-64]	@ temp.4722, fs_list0
	addge	r5, r5, #1	@ list0idx.4683, list0idx.4683,
.L1404:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4723
	bhi	.L1405	@,
.L1384:
	sub	r6, fp, #108	@ tmp518,,
	mov	r1, r5	@, list0idx.4683
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_desc	@,
	mov	r0, r6	@, tmp518
	movt	r3, #:upper16:compare_fs_by_poc_desc	@,
	bl	qsort	@
	mov	ip, #26624	@ tmp413,
	ldr	r9, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r9, #0	@ <variable>.DPB.ref_frames_in_buffer,
	moveq	r7, r5	@ list0idx.4684, list0idx.4683
	beq	.L1407	@,
	add	r8, r4, #26368	@ ivtmp.4671, pH264Ctx,
	mov	r7, r5	@ list0idx.4684, list0idx.4683
	add	r3, r8, #120	@ ivtmp.4671, ivtmp.4671,
	mov	r2, #0	@ i.4729,
	movw	r8, #52748	@ tmp531,
.L1409:
	ldr	r1, [r3, #0]	@ temp.4725, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4729, i.4729,
	add	r3, r3, #4	@ ivtmp.4671, ivtmp.4671,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1408	@,
	ldr	r0, [r1, #588]	@ <variable>.poc, <variable>.poc
	sub	sl, fp, #44	@,,
	ldr	lr, [r4, r8]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r9, sl, r7, asl #2	@, tmp422,, list0idx.4684,
	cmp	lr, r0	@ <variable>.CurrPic.thispoc, <variable>.poc
	strlt	r1, [r9, #-64]	@ temp.4725, fs_list0
	addlt	r7, r7, #1	@ list0idx.4684, list0idx.4684,
.L1408:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4729
	bhi	.L1409	@,
	rsb	r9, r5, r7	@ prephitmp.4755, list0idx.4683, list0idx.4684
.L1407:
	mov	sl, r5, asl #2	@ tmp520, list0idx.4683,
	mov	r1, r9	@, prephitmp.4755
	add	r0, r6, sl	@, tmp518, tmp520
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_asc	@,
	movt	r3, #:upper16:compare_fs_by_poc_asc	@,
	bl	qsort	@
	cmp	r5, #0	@ list0idx.4683,
	subeq	r8, fp, #172	@ tmp523,,
	beq	.L1410	@,
	sub	r8, fp, #172	@ tmp523,,
	ldr	ip, [r6, #0]	@ tmp432, fs_list0
	add	r9, r8, r9, asl #2	@, ivtmp.4668, tmp523, prephitmp.4755,
	cmp	sl, #4	@ tmp520,
	sub	r2, sl, #4	@ tmp594, tmp520,
	mov	r3, #4	@ ivtmp.4666,
	str	ip, [r9], #4	@ tmp432, fs_list1
	ubfx	r2, r2, #2, #1	@ tmp595, tmp594,,
	beq	.L1410	@,
	cmp	r2, #0	@ tmp595,
	beq	.L1411	@,
	ldr	r2, [r6, #4]	@ tmp843, fs_list0
	mov	r3, #8	@ ivtmp.4666,
	cmp	sl, r3	@ tmp520, ivtmp.4666
	str	r2, [r9], #4	@ tmp843, fs_list1
	beq	.L1410	@,
.L1411:
	add	r2, r3, #4	@ tmp596, ivtmp.4666,
	ldr	r0, [r6, r3]	@ tmp661, fs_list0
	add	r3, r2, #4	@ ivtmp.4666, tmp596,
	mov	lr, r9	@ tmp597, ivtmp.4668
	ldr	r1, [r6, r2]	@ tmp664, fs_list0
	cmp	sl, r3	@ tmp520, ivtmp.4666
	str	r0, [lr], #4	@ tmp661, fs_list1
	str	r1, [r9, #4]	@ tmp664, fs_list1
	add	r9, lr, #4	@ ivtmp.4668, tmp597,
	bne	.L1411	@,
.L1410:
	cmp	r7, r5	@ list0idx.4684, list0idx.4683
	bls	.L1412	@,
	add	sl, r6, sl	@ ivtmp.4658, tmp518, tmp520
	add	lr, r6, r7, asl #2	@, D.47793, tmp518, list0idx.4684,
	rsb	r9, sl, lr	@ tmp587, ivtmp.4658, D.47793
	mov	r2, #4	@ ivtmp.4659,
	ldr	r5, [sl], #4	@ tmp438, fs_list0
	sub	r3, r9, #4	@ tmp588, tmp587,
	ubfx	r1, r3, #2, #1	@ tmp589, tmp588,,
	cmp	sl, lr	@ ivtmp.4658, D.47793
	str	r5, [r8, #0]	@ tmp438, fs_list1
	beq	.L1412	@,
	cmp	r1, #0	@ tmp589,
	beq	.L1413	@,
	ldr	r9, [sl], #4	@ tmp842, fs_list0
	mov	r2, #8	@ ivtmp.4659,
	cmp	sl, lr	@ ivtmp.4658, D.47793
	str	r9, [r8, #4]	@ tmp842, fs_list1
	beq	.L1412	@,
.L1413:
	mov	r5, sl	@ tmp590, ivtmp.4658
	ldr	r0, [sl, #4]	@ tmp670, fs_list0
	ldr	ip, [r5], #4	@ tmp667, fs_list0
	add	r1, r2, #4	@ tmp591, ivtmp.4659,
	add	sl, r5, #4	@ ivtmp.4658, tmp590,
	cmp	sl, lr	@ ivtmp.4658, D.47793
	str	ip, [r8, r2]	@ tmp667, fs_list1
	str	r0, [r8, r1]	@ tmp670, fs_list1
	add	r2, r1, #4	@ ivtmp.4659, tmp591,
	bne	.L1413	@,
.L1412:
	add	ip, r4, #26880	@ tmp671, pH264Ctx,
	movw	r9, #52259	@ tmp445,
	add	sl, ip, #148	@ ivtmp.4615, tmp671,
	movw	r5, #20716	@ tmp439,
	movw	r3, #20720	@ tmp441,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp518
	mov	r2, r7	@, list0idx.4684
	mov	r6, #0	@ tmp440,
	str	r6, [r4, r5]	@ tmp440, <variable>.CurrSlice.listXsize
	str	r6, [r4, r3]	@ tmp440, <variable>.CurrSlice.listXsize
	add	r5, r4, #20480	@ tmp444, pH264Ctx,
	mov	r3, sl	@, ivtmp.4615
	add	lr, r5, #236	@, tmp444,
	str	r6, [sp, #4]	@ tmp440,
	str	lr, [fp, #-240]	@, %sfp
	str	lr, [sp, #0]	@,
	str	ip, [fp, #-248]	@,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [fp, #-248]	@,
	mov	r1, r8	@, tmp523
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r9, r2, #280	@, tmp671,
	mov	r2, r7	@, list0idx.4684
	str	r9, [fp, #-244]	@, %sfp
	mov	r3, r9	@,
	str	r6, [sp, #4]	@ tmp440,
	add	r9, r5, #240	@ D.38227, tmp444,
	str	r9, [sp, #0]	@ D.38227,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26628	@ tmp454,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	subeq	r6, fp, #236	@ tmp672,,
	beq	.L1415	@,
	mov	r3, r6	@ ivtmp.4651, tmp440
	sub	r6, fp, #236	@ tmp672,,
	mov	r5, r3	@ listltidx.4720, ivtmp.4651
.L1416:
	add	r2, r4, r3	@ tmp457, pH264Ctx, ivtmp.4651
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r8, r2, #26368	@ tmp459, tmp457,
	add	r5, r5, #1	@ listltidx.4720, listltidx.4720,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx.4720
	ldr	r7, [r8, #184]	@ tmp460, <variable>.DPB.fs_ltref
	str	r7, [r6, r3]	@ tmp460, fs_listlt
	add	r3, r3, #4	@ ivtmp.4651, ivtmp.4651,
	bhi	.L1416	@,
.L1415:
	mov	r0, r6	@, tmp672
	mov	r1, r5	@, listltidx.4720
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	movw	r7, #52259	@ tmp465,
	bl	qsort	@
	ldr	ip, [fp, #-240]	@, %sfp
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp672
	mov	r2, r5	@, listltidx.4720
	mov	r3, sl	@, ivtmp.4615
	str	ip, [sp, #0]	@,
	mov	r8, #1	@ tmp468,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp672
	mov	r2, r5	@, listltidx.4720
	ldr	r3, [fp, #-244]	@, %sfp
	movw	r6, #20716	@ tmp473,
	str	r9, [sp, #0]	@ D.38227,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #20720	@ tmp474,
	ldr	r1, [r4, r6]	@ list0idx.4679, <variable>.CurrSlice.listXsize
	ldr	r6, [r4, r0]	@ list0idx.4682, <variable>.CurrSlice.listXsize
	cmp	r6, r1	@ list0idx.4682, list0idx.4679
	beq	.L1565	@,
.L1417:
	cmp	r1, #0	@ list0idx.4679,
	bne	.L1376	@,
	movw	r2, #20720	@ tmp478,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L1566	@,
	movw	r5, #20732	@ tmp508,
	mov	r3, r1	@ i.4704, list0idx.4679
	ldr	ip, [r4, r5]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	movw	r5, #20716	@ tmp505,
	str	r1, [r4, r5]	@ list0idx.4679, <variable>.CurrSlice.listXsize
	add	lr, ip, #1	@ tmp509, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	lr, r0	@ tmp509, <variable>.CurrSlice.listXsize
	strls	lr, [r4, r2]	@, tmp509, <variable>.CurrSlice.listXsize
	strhi	r0, [r4, r2]	@, <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
.L1421:
	add	r0, r3, #6720	@ tmp514, i.4704,
	add	r1, r3, #1	@ i.4704, i.4704,
	add	lr, r0, #36	@ tmp514, tmp514,
	cmp	r1, #32	@ i.4704,
	mov	r0, #0	@ tmp525,
	and	r3, r3, #1	@ tmp541, i.4704,
	add	r2, r4, lr, asl #2	@, tmp517, pH264Ctx, tmp514,
	add	r2, r2, #4	@ ivtmp.4589, tmp517,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	bhi	.L1530	@,
	cmp	r3, #0	@ tmp541,
	beq	.L1423	@,
	add	r1, r1, #1	@ i.4704, i.4704,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	cmp	r1, #32	@ i.4704,
	bhi	.L1530	@,
.L1423:
	add	r1, r1, #2	@ i.4704, i.4704,
	mov	ip, r2	@ tmp543, ivtmp.4589
	cmp	r1, #32	@ i.4704,
	str	r0, [ip], #4	@ tmp525, <variable>.pListX
	str	r0, [r2, #4]	@ tmp525, <variable>.pListX
	add	r2, ip, #4	@ ivtmp.4589, tmp543,
	bls	.L1423	@,
.L1530:
	movw	r1, #20720	@ tmp491,
	ldr	r2, [r4, r1]	@ prephitmp.4557, <variable>.CurrSlice.listXsize
.L1422:
	cmp	r2, #32	@ prephitmp.4557,
	bhi	.L1424	@,
	add	ip, r2, #6720	@ tmp492, prephitmp.4557,
	add	r0, r4, #27136	@ D.47691, pH264Ctx,
	add	r3, ip, #36	@ tmp492, tmp492,
	add	r0, r0, #24	@ D.47691, D.47691,
	mov	r1, #0	@ tmp524,
	add	r4, r4, r3, asl #2	@, tmp495, pH264Ctx, tmp492,
	add	r4, r4, #4	@ ivtmp.4585, tmp495,
	add	r3, r4, #4	@ ivtmp.4585, ivtmp.4585,
	rsb	lr, r4, r0	@ tmp536, ivtmp.4585, D.47691
	cmp	r3, r0	@ ivtmp.4585, D.47691
	sub	r2, lr, #4	@ tmp537, tmp536,
	ubfx	r2, r2, #2, #1	@ tmp538, tmp537,,
	str	r1, [r4, #132]	@ tmp524, <variable>.pListX
	beq	.L1424	@,
	cmp	r2, #0	@ tmp538,
	beq	.L1425	@,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r3, #4	@ ivtmp.4585, ivtmp.4585,
	cmp	r3, r0	@ ivtmp.4585, D.47691
	beq	.L1424	@,
.L1425:
	add	r2, r3, #4	@ tmp539, ivtmp.4585,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r2, #4	@ ivtmp.4585, tmp539,
	cmp	r3, r0	@ ivtmp.4585, D.47691
	str	r1, [r2, #132]	@ tmp524, <variable>.pListX
	bne	.L1425	@,
.L1424:
	mov	r0, #0	@ D.38181,
.L1381:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1382:
	mov	r6, #26624	@ tmp317,
	ldr	lr, [r0, r6]	@ temp.4757, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4757,
	moveq	r7, lr	@ list0idx.4681, temp.4757
	beq	.L1386	@,
	add	r3, r0, #26368	@ ivtmp.4645, pH264Ctx,
	sub	r5, lr, #1	@ tmp581, temp.4757,
	and	r0, r5, #1	@ tmp583, tmp581,
	movw	r5, #52752	@ tmp529,
	ldr	r2, [r3, #120]!	@ temp.4699, <variable>.DPB.fs_ref
	ldrb	r8, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r8, #3	@ <variable>.is_reference,
	beq	.L1567	@,
.L1491:
	mov	r2, #1	@ i.4702,
	cmp	r2, lr	@ i.4702, temp.4757
	add	r3, r3, #4	@ ivtmp.4645, ivtmp.4645,
	bcs	.L1386	@,
	cmp	r0, #0	@ tmp583,
	beq	.L1388	@,
	ldr	r1, [r3, #0]	@ temp.4699, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1568	@,
.L1493:
	add	r2, r2, #1	@ i.4702, i.4702,
	add	r3, r3, #4	@ ivtmp.4645, ivtmp.4645,
	cmp	r2, lr	@ i.4702, temp.4757
	bcc	.L1388	@,
.L1386:
	add	lr, r4, #26880	@ ivtmp.4615, pH264Ctx,
	mov	r1, r7	@, list0idx.4681
	add	sl, lr, #148	@ ivtmp.4615, ivtmp.4615,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_desc	@,
	movt	r3, #:upper16:compare_pic_by_poc_desc	@,
	mov	r0, sl	@, ivtmp.4615
	bl	qsort	@
	mov	r3, #26624	@ tmp332,
	ldr	r8, [r4, r3]	@ temp.4756, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ temp.4756,
	moveq	r5, r7	@ list0idx, list0idx.4681
	beq	.L1390	@,
	add	r3, r4, #26368	@ ivtmp.4640, pH264Ctx,
	sub	r2, r8, #1	@ tmp576, temp.4756,
	and	r0, r2, #1	@ tmp578, tmp576,
	mov	r5, r7	@ list0idx, list0idx.4681
	ldr	r2, [r3, #120]!	@ temp.4705, <variable>.DPB.fs_ref
	movw	ip, #52752	@ tmp528,
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1569	@,
.L1484:
	mov	r2, #1	@ i.4710,
	cmp	r2, r8	@ i.4710, temp.4756
	add	r3, r3, #4	@ ivtmp.4640, ivtmp.4640,
	bcs	.L1536	@,
	cmp	r0, #0	@ tmp578,
	beq	.L1392	@,
	ldr	r1, [r3, #0]	@ temp.4705, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1570	@,
.L1486:
	add	r2, r2, #1	@ i.4710, i.4710,
	add	r3, r3, #4	@ ivtmp.4640, ivtmp.4640,
	cmp	r2, r8	@ i.4710, temp.4756
	bcc	.L1392	@,
.L1536:
	rsb	r8, r7, r5	@ prephitmp.4559, list0idx.4681, list0idx
.L1390:
	mov	r6, r7, asl #2	@ D.38195, list0idx.4681,
	mov	r1, r8	@, prephitmp.4559
	add	r0, sl, r6	@, ivtmp.4615, D.38195
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_asc	@,
	movt	r3, #:upper16:compare_pic_by_poc_asc	@,
	bl	qsort	@
	cmp	r7, #0	@ list0idx.4681,
	beq	.L1393	@,
	add	r8, r8, #6720	@ tmp347, prephitmp.4559,
	add	r1, r4, #26880	@ tmp352, pH264Ctx,
	add	r3, r1, #148	@ tmp352, tmp352,
	add	r8, r8, #36	@ tmp347, tmp347,
	cmp	r6, #4	@ D.38195,
	sub	r2, r6, #4	@ tmp572, D.38195,
	add	ip, r4, r8, asl #2	@, tmp350, pH264Ctx, tmp347,
	ldr	r0, [r3, #0]	@ tmp354, <variable>.pListX
	add	lr, ip, #4	@ ivtmp.4637, tmp350,
	mov	r3, #4	@ ivtmp.4634,
	ubfx	ip, r2, #2, #1	@ tmp573, tmp572,,
	add	r2, lr, #4	@ ivtmp.4637, ivtmp.4637,
	str	r0, [lr, #132]	@ tmp354, <variable>.pListX
	beq	.L1393	@,
	cmp	ip, #0	@ tmp573,
	beq	.L1394	@,
	add	ip, r4, #26880	@ tmp782, pH264Ctx,
	mov	r3, #8	@ ivtmp.4634,
	add	lr, ip, #152	@ tmp782, tmp782,
	cmp	r6, r3	@ D.38195, ivtmp.4634
	ldr	r1, [lr, #0]	@ tmp783, <variable>.pListX
	str	r1, [r2, #132]	@ tmp783, <variable>.pListX
	add	r2, r2, #4	@ ivtmp.4637, ivtmp.4637,
	beq	.L1393	@,
.L1394:
	add	r0, r4, r3	@ tmp632, pH264Ctx, ivtmp.4634
	add	r3, r3, #4	@ tmp574, ivtmp.4634,
	add	r1, r0, #26880	@ tmp633, tmp632,
	add	lr, r4, r3	@ tmp638, pH264Ctx, tmp574
	add	r0, lr, #26880	@ tmp639, tmp638,
	add	r3, r3, #4	@ ivtmp.4634, tmp574,
	ldr	ip, [r1, #148]	@ tmp635, <variable>.pListX
	add	lr, r2, #4	@ tmp575, ivtmp.4637,
	cmp	r6, r3	@ D.38195, ivtmp.4634
	str	ip, [r2, #132]	@ tmp635, <variable>.pListX
	add	r2, lr, #4	@ ivtmp.4637, tmp575,
	ldr	r0, [r0, #148]	@ tmp641, <variable>.pListX
	str	r0, [lr, #132]	@ tmp641, <variable>.pListX
	bne	.L1394	@,
.L1393:
	cmp	r5, r7	@ list0idx, list0idx.4681
	bls	.L1395	@,
	add	lr, r7, #6720	@ tmp355, list0idx.4681,
	rsb	r6, r7, r5	@ tmp362, list0idx.4681, list0idx
	add	r3, lr, #36	@ tmp355, tmp355,
	add	r0, r4, #27136	@ tmp364, pH264Ctx,
	mov	r6, r6, asl #2	@ D.47750, tmp362,
	add	r2, r0, #24	@ tmp364, tmp364,
	add	r1, r4, r3, asl #2	@, tmp358, pH264Ctx, tmp355,
	mov	r3, #4	@ ivtmp.4628,
	add	r1, r1, r3	@ ivtmp.4627, tmp358,
	cmp	r3, r6	@ ivtmp.4628, D.47750
	sub	ip, r6, #4	@ tmp566, D.47750,
	ldr	lr, [r1], #4	@ tmp366, <variable>.pListX
	ubfx	ip, ip, #2, #1	@ tmp567, tmp566,,
	str	lr, [r2, #0]	@ tmp366, <variable>.pListX
	beq	.L1395	@,
	cmp	ip, #0	@ tmp567,
	beq	.L1396	@,
	add	r3, r4, #27136	@ tmp778, pH264Ctx,
	ldr	r0, [r1], #4	@ tmp779, <variable>.pListX
	add	r2, r3, #28	@ tmp778, tmp778,
	mov	r3, #8	@ ivtmp.4628,
	cmp	r3, r6	@ ivtmp.4628, D.47750
	str	r0, [r2, #0]	@ tmp779, <variable>.pListX
	beq	.L1395	@,
.L1396:
	mov	r2, r1	@ tmp568, ivtmp.4627
	add	ip, r4, r3	@ tmp644, pH264Ctx, ivtmp.4628
	ldr	lr, [r2], #4	@ tmp647, <variable>.pListX
	add	ip, ip, #27136	@ tmp645, tmp644,
	add	r0, r3, #4	@ tmp569, ivtmp.4628,
	add	r3, r0, #4	@ ivtmp.4628, tmp569,
	add	r0, r4, r0	@ tmp650, pH264Ctx, tmp569
	str	lr, [ip, #24]	@ tmp647, <variable>.pListX
	add	r0, r0, #27136	@ tmp651, tmp650,
	ldr	ip, [r1, #4]	@ tmp653, <variable>.pListX
	cmp	r3, r6	@ ivtmp.4628, D.47750
	add	r1, r2, #4	@ ivtmp.4627, tmp568,
	str	ip, [r0, #24]	@ tmp653, <variable>.pListX
	bne	.L1396	@,
.L1395:
	movw	lr, #26628	@ tmp369,
	movw	r2, #20720	@ tmp367,
	ldr	r1, [r4, lr]	@ temp.4754, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20716	@ tmp368,
	str	r5, [r4, r2]	@ list0idx, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ temp.4754,
	str	r5, [r4, r3]	@ list0idx, <variable>.CurrSlice.listXsize
	moveq	r6, r5	@ list0idx.4682, list0idx
	beq	.L1398	@,
	tst	r1, #1	@ temp.4754,
	add	r6, r4, #26368	@ ivtmp.4621, pH264Ctx,
	add	r3, r6, #184	@ ivtmp.4621, ivtmp.4621,
	mov	r2, #0	@ i.4717,
	bne	.L1402	@,
	ldr	r2, [r3, #0]	@ temp.4713, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L1571	@,
.L1534:
	add	r3, r3, #4	@ ivtmp.4621, ivtmp.4621,
	mov	r2, #1	@ i.4717,
	ldr	r0, [r3, #0]	@ temp.4713, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	beq	.L1572	@,
.L1400:
	add	r2, r2, #1	@ tmp562, i.4717,
	add	r0, r3, #4	@ tmp563, ivtmp.4621,
	cmp	r2, r1	@ tmp562, temp.4754
	bcs	.L1401	@,
.L1574:
	ldr	r3, [r3, #4]	@ temp.4713, <variable>.DPB.fs_ltref
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r6, #3	@ <variable>.is_used,
	beq	.L1573	@,
.L1535:
	add	r2, r2, #1	@ i.4717, tmp562,
	add	r3, r0, #4	@ ivtmp.4621, tmp563,
.L1402:
	ldr	r0, [r3, #0]	@ temp.4713, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	bne	.L1400	@,
.L1572:
	ldrb	lr, [r0, #465]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1400	@,
	add	lr, r5, #6720	@ tmp373, list0idx,
	add	ip, r5, #6784	@ tmp380, list0idx,
	add	r6, lr, #36	@ tmp373, tmp373,
	add	ip, ip, #5	@ tmp380, tmp380,
	add	r2, r2, #1	@ tmp562, i.4717,
	add	r0, r0, #464	@ tmp379, temp.4713,
	add	lr, r4, r6, asl #2	@, tmp377, pH264Ctx, tmp373,
	cmp	r2, r1	@ tmp562, temp.4754
	add	r6, r4, ip, asl #2	@, tmp384, pH264Ctx, tmp380,
	add	r5, r5, #1	@ list0idx.4682, list0idx,
	str	r0, [lr, #4]	@ tmp379, <variable>.pListX
	str	r0, [r6, #4]	@ tmp379, <variable>.pListX
	add	r0, r3, #4	@ tmp563, ivtmp.4621,
	bcc	.L1574	@,
.L1401:
	movw	r1, #20716	@ tmp388,
	mov	r6, r5	@ list0idx.4682, list0idx.4682
	ldr	r5, [r4, r1]	@ list0idx, <variable>.CurrSlice.listXsize
	rsb	r1, r5, r6	@ prephitmp.4563, list0idx, list0idx.4682
.L1398:
	add	r0, sl, r5, asl #2	@,, ivtmp.4615, list0idx,
	mov	r2, #4	@,
	movw	r5, #20716	@ tmp392,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	ldr	ip, [r4, r5]	@ D.38152, <variable>.CurrSlice.listXsize
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	add	r0, ip, #33	@ tmp393, D.38152,
	rsb	r1, ip, r6	@, D.38152, list0idx.4682
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	mla	r0, r0, r2, sl	@, tmp393,, ivtmp.4615
	bl	qsort	@
	movw	r3, #20720	@ tmp398,
	mov	r1, r6	@ list0idx.4679, list0idx.4682
	str	r6, [r4, r3]	@ list0idx.4682, <variable>.CurrSlice.listXsize
	str	r6, [r4, r5]	@ list0idx.4682, <variable>.CurrSlice.listXsize
.L1403:
	cmp	r6, #1	@ list0idx.4682,
	bls	.L1417	@,
	ldr	lr, [sl, #0]	@ tmp476, <variable>.pListX
	sub	r2, r6, #1	@ tmp554, list0idx.4682,
	ldr	r3, [sl, #132]	@ tmp477, <variable>.pListX
	and	r0, r2, #1	@ tmp556, tmp554,
	cmp	lr, r3	@ tmp476, tmp477
	bne	.L1376	@,
	mov	r3, #1	@ j,
	cmp	r3, r6	@ j, list0idx.4682
	add	sl, sl, #4	@ ivtmp.4615, ivtmp.4615,
	bcs	.L1532	@,
	cmp	r0, #0	@ tmp556,
	beq	.L1418	@,
	ldr	r2, [sl, #0]	@ tmp746, <variable>.pListX
	ldr	lr, [sl, #132]	@ tmp747, <variable>.pListX
	cmp	r2, lr	@ tmp746, tmp747
	bne	.L1376	@,
	mov	r3, #2	@ j,
	cmp	r3, r6	@ j, list0idx.4682
	add	sl, sl, #4	@ ivtmp.4615, ivtmp.4615,
	bcc	.L1418	@,
	b	.L1532	@
.L1575:
	ldr	r0, [sl, #4]	@ tmp679, <variable>.pListX
	add	sl, r2, #4	@ ivtmp.4615, tmp558,
	ldr	r2, [r2, #132]	@ tmp680, <variable>.pListX
	cmp	r0, r2	@ tmp679, tmp680
	bne	.L1376	@,
	cmp	r3, r6	@ j, list0idx.4682
	bcs	.L1532	@,
.L1418:
	ldr	ip, [sl, #0]	@ tmp674, <variable>.pListX
	add	lr, r3, #1	@ tmp557, j,
	ldr	r0, [sl, #132]	@ tmp675, <variable>.pListX
	add	r2, sl, #4	@ tmp558, ivtmp.4615,
	add	r3, lr, #1	@ j, tmp557,
	cmp	ip, r0	@ tmp674, tmp675
	beq	.L1575	@,
	b	.L1376	@
.L1359:
	mov	r1, #26624	@ tmp225,
	ldr	lr, [r4, r1]	@ temp.4711, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4711,
	moveq	r5, lr	@ list0idx.4739, temp.4711
	beq	.L1363	@,
	add	r3, r4, #26368	@ ivtmp.4598, pH264Ctx,
	sub	r2, lr, #1	@ tmp549, temp.4711,
	and	r0, r2, #1	@ tmp551, tmp549,
	ldr	r2, [r3, #120]!	@ D.38130, <variable>.DPB.fs_ref
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1576	@,
.L1459:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, temp.4711
	add	r3, r3, #4	@ ivtmp.4598, ivtmp.4598,
	bcs	.L1363	@,
	cmp	r0, #0	@ tmp551,
	beq	.L1365	@,
	ldr	r1, [r3, #0]	@ D.38130, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1577	@,
.L1461:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4598, ivtmp.4598,
	cmp	r2, lr	@ i, temp.4711
	bcc	.L1365	@,
.L1363:
	add	lr, r4, #26880	@ D.38141, pH264Ctx,
	mov	r1, r5	@, list0idx.4739
	add	r6, lr, #148	@ D.38141, D.38141,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_pic_num_desc	@,
	movt	r3, #:upper16:compare_pic_by_pic_num_desc	@,
	mov	r0, r6	@, D.38141
	bl	qsort	@
	movw	r0, #26628	@ tmp241,
	ldr	r1, [r4, r0]	@ D.38151, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20716	@ tmp240,
	str	r5, [r4, r3]	@ list0idx.4739, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ D.38151,
	moveq	r0, r5	@ list0idx.4751, list0idx.4739
	beq	.L1367	@,
	add	r3, r4, #26368	@ ivtmp.4593, pH264Ctx,
	sub	r2, r1, #1	@ tmp544, D.38151,
	and	ip, r2, #1	@ tmp546, tmp544,
	ldr	r2, [r3, #184]!	@ D.38142, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1578	@,
.L1452:
	mov	r2, #1	@ i.4685,
	cmp	r2, r1	@ i.4685, D.38151
	add	r3, r3, #4	@ ivtmp.4593, ivtmp.4593,
	bcs	.L1531	@,
	cmp	ip, #0	@ tmp546,
	beq	.L1369	@,
	ldr	r0, [r3, #0]	@ D.38142, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1579	@,
.L1454:
	add	r2, r2, #1	@ i.4685, i.4685,
	add	r3, r3, #4	@ ivtmp.4593, ivtmp.4593,
	cmp	r2, r1	@ i.4685, D.38151
	bcc	.L1369	@,
.L1531:
	movw	ip, #20716	@ tmp254,
	ldr	r0, [r4, ip]	@ list0idx.4751, <variable>.CurrSlice.listXsize
	rsb	r1, r0, r5	@ prephitmp.4567, list0idx.4751, list0idx.4739
.L1367:
	add	r0, r6, r0, asl #2	@,, D.38141, list0idx.4751,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	movw	r1, #20716	@ tmp258,
	str	r5, [r4, r1]	@ list0idx.4739, <variable>.CurrSlice.listXsize
	b	.L1370	@
.L1581:
	add	sl, r7, #6720	@ tmp323, list0idx.4681,
	ldr	r3, [r3, #4]	@ temp.4699, <variable>.DPB.fs_ref
	add	ip, sl, #36	@ tmp323, tmp323,
	ldr	r6, [r1, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #464	@ tmp329, temp.4699,
	add	sl, r4, ip, asl #2	@, tmp327, pH264Ctx, tmp323,
	cmp	r8, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strge	r1, [sl, #4]	@ tmp329, <variable>.pListX
	addge	r7, r7, #1	@ list0idx.4681, list0idx.4681,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1580	@,
.L1496:
	add	r2, r2, #1	@ i.4702, tmp584,
	add	r3, r0, #4	@ ivtmp.4645, tmp585,
	cmp	r2, lr	@ i.4702, temp.4757
	bcs	.L1386	@,
.L1388:
	ldr	r1, [r3, #0]	@ temp.4699, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp584, i.4702,
	add	r0, r3, #4	@ tmp585, ivtmp.4645,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1581	@,
	ldr	r3, [r3, #4]	@ temp.4699, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1496	@,
.L1580:
	add	r6, r7, #6720	@ tmp837, list0idx.4681,
	add	sl, r3, #464	@ tmp841, temp.4699,
	add	ip, r6, #36	@ tmp837, tmp837,
	ldr	r3, [r3, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, ip, asl #2	@, tmp839, pH264Ctx, tmp837,
	cmp	r8, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r7, r7, #1	@ list0idx.4681, list0idx.4681,
	strge	sl, [r1, #4]	@ tmp841, <variable>.pListX
	b	.L1496	@
.L1583:
	ldr	r6, [r1, #464]	@ tmp230,
	bic	ip, r6, #-16777216	@ tmp228, tmp230,
	bic	r6, ip, #255	@ tmp228, tmp228,
	cmp	r6, #65536	@ tmp228,
	bne	.L1364	@,
	add	ip, r5, #6720	@ tmp231, list0idx.4739,
	add	r5, r5, #1	@ list0idx.4739, list0idx.4739,
	add	r6, ip, #36	@ tmp231, tmp231,
	add	r1, r1, #464	@ tmp237, D.38130,
	add	ip, r4, r6, asl #2	@, tmp235, pH264Ctx, tmp231,
	str	r1, [ip, #4]	@ tmp237, <variable>.pListX
.L1364:
	ldr	r3, [r3, #4]	@ D.38130, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1582	@,
.L1464:
	add	r2, r2, #1	@ i, tmp552,
	add	r3, r0, #4	@ ivtmp.4598, tmp553,
	cmp	r2, lr	@ i, temp.4711
	bcs	.L1363	@,
.L1365:
	ldr	r1, [r3, #0]	@ D.38130, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp552, i,
	add	r0, r3, #4	@ tmp553, ivtmp.4598,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1583	@,
	ldr	r3, [r3, #4]	@ D.38130, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1464	@,
.L1582:
	ldr	ip, [r3, #464]	@ tmp738,
	bic	r6, ip, #-16777216	@ tmp739, tmp738,
	bic	r1, r6, #255	@ tmp739, tmp739,
	cmp	r1, #65536	@ tmp739,
	bne	.L1464	@,
	add	ip, r5, #6720	@ tmp741, list0idx.4739,
	add	r3, r3, #464	@ tmp745, D.38130,
	add	r6, ip, #36	@ tmp741, tmp741,
	add	r5, r5, #1	@ list0idx.4739, list0idx.4739,
	add	r1, r4, r6, asl #2	@, tmp743, pH264Ctx, tmp741,
	str	r3, [r1, #4]	@ tmp745, <variable>.pListX
	b	.L1464	@
.L1585:
	add	r9, r5, #6720	@ tmp338, list0idx,
	ldr	r6, [r1, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	add	lr, r9, #36	@ tmp338, tmp338,
	ldr	r9, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r3, [r3, #4]	@ temp.4705, <variable>.DPB.fs_ref
	add	r1, r1, #464	@ tmp344, temp.4705,
	cmp	r9, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	add	r6, r4, lr, asl #2	@, tmp342, pH264Ctx, tmp338,
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r1, [r6, #4]	@ tmp344, <variable>.pListX
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1584	@,
.L1489:
	add	r2, r2, #1	@ i.4710, tmp579,
	add	r3, r0, #4	@ ivtmp.4640, tmp580,
	cmp	r2, r8	@ i.4710, temp.4756
	bcs	.L1536	@,
.L1392:
	ldr	r1, [r3, #0]	@ temp.4705, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp579, i.4710,
	add	r0, r3, #4	@ tmp580, ivtmp.4640,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1585	@,
	ldr	r3, [r3, #4]	@ temp.4705, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1489	@,
.L1584:
	add	lr, r5, #6720	@ tmp808, list0idx,
	add	r6, r3, #464	@ tmp812, temp.4705,
	add	r1, lr, #36	@ tmp808, tmp808,
	ldr	r3, [r3, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r1, asl #2	@, tmp810, pH264Ctx, tmp808,
	cmp	lr, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r6, [r1, #4]	@ tmp812, <variable>.pListX
	b	.L1489	@
.L1587:
	ldr	lr, [r0, #464]	@ tmp246,
	bic	lr, lr, #-16777216	@ tmp244, tmp246,
	bic	lr, lr, #255	@ tmp244, tmp244,
	cmp	lr, #256	@ tmp244,
	bne	.L1368	@,
	add	lr, r5, #6720	@ tmp247, list0idx.4739,
	add	r5, r5, #1	@ list0idx.4739, list0idx.4739,
	add	lr, lr, #36	@ tmp247, tmp247,
	add	r0, r0, #464	@ tmp253, D.38142,
	add	lr, r4, lr, asl #2	@, tmp251, pH264Ctx, tmp247,
	str	r0, [lr, #4]	@ tmp253, <variable>.pListX
.L1368:
	ldr	r3, [r3, #4]	@ D.38142, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1586	@,
.L1457:
	add	r2, r2, #1	@ i.4685, tmp547,
	add	r3, ip, #4	@ ivtmp.4593, tmp548,
	cmp	r2, r1	@ i.4685, D.38151
	bcs	.L1531	@,
.L1369:
	ldr	r0, [r3, #0]	@ D.38142, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ tmp547, i.4685,
	add	ip, r3, #4	@ tmp548, ivtmp.4593,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1587	@,
	ldr	r3, [r3, #4]	@ D.38142, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1457	@,
.L1586:
	ldr	r0, [r3, #464]	@ tmp712,
	bic	lr, r0, #-16777216	@ tmp713, tmp712,
	bic	r0, lr, #255	@ tmp713, tmp713,
	cmp	r0, #256	@ tmp713,
	bne	.L1457	@,
	add	lr, r5, #6720	@ tmp715, list0idx.4739,
	add	r3, r3, #464	@ tmp719, D.38142,
	add	r0, lr, #36	@ tmp715, tmp715,
	add	r5, r5, #1	@ list0idx.4739, list0idx.4739,
	add	lr, r4, r0, asl #2	@, tmp717, pH264Ctx, tmp715,
	str	r3, [lr, #4]	@ tmp719, <variable>.pListX
	b	.L1457	@
.L1573:
	ldrb	lr, [r3, #465]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1535	@,
	add	ip, r5, #6720	@ tmp766, list0idx.4682,
	add	r6, r5, #6784	@ tmp772, list0idx.4682,
	add	lr, ip, #36	@ tmp766, tmp766,
	add	ip, r6, #5	@ tmp772, tmp772,
	add	r3, r3, #464	@ tmp770, temp.4713,
	add	r5, r5, #1	@ list0idx.4682, list0idx.4682,
	add	r6, r4, lr, asl #2	@, tmp768, pH264Ctx, tmp766,
	add	ip, r4, ip, asl #2	@, tmp774, pH264Ctx, tmp772,
	str	r3, [r6, #4]	@ tmp770, <variable>.pListX
	str	r3, [ip, #4]	@ tmp770, <variable>.pListX
	b	.L1535	@
.L1564:
	movw	r1, #52728	@ tmp299,
	movw	r0, #27028	@ tmp298,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	r2, lr, #464	@ tmp301, <variable>.CurrPic.frame_store,
	str	r2, [r4, r0]	@ tmp301, <variable>.pListX
	b	.L1379	@
.L1569:
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r6, [r2, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	cmp	r1, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	bge	.L1484	@,
	add	r1, r7, #6720	@ tmp788, list0idx.4681,
	add	r2, r2, #464	@ tmp792, temp.4705,
	add	r6, r1, #36	@ tmp788, tmp788,
	add	r5, r7, #1	@ list0idx, list0idx.4681,
	add	lr, r4, r6, asl #2	@, tmp790, pH264Ctx, tmp788,
	str	r2, [lr, #4]	@ tmp792, <variable>.pListX
	b	.L1484	@
.L1567:
	ldr	sl, [r2, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r8, sl	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	sl, r4, #26880	@ tmp820, pH264Ctx,
	addge	r2, r2, #464	@ tmp821, temp.4699,
	addge	sl, sl, #148	@ tmp820, tmp820,
	movge	r7, #1	@ list0idx.4681,
	strge	r2, [sl, #0]	@ tmp821, <variable>.pListX
	b	.L1491	@
.L1576:
	ldr	ip, [r2, #464]	@ tmp720,
	bic	r1, ip, #-16777216	@ tmp721, tmp720,
	bic	r6, r1, #255	@ tmp721, tmp721,
	cmp	r6, #65536	@ tmp721,
	addeq	r6, r4, #26880	@ tmp726, pH264Ctx,
	addeq	r2, r2, #464	@ tmp727, D.38130,
	addeq	r6, r6, #148	@ tmp726, tmp726,
	moveq	r5, #1	@ list0idx.4739,
	streq	r2, [r6, #0]	@ tmp727, <variable>.pListX
	b	.L1459	@
.L1571:
	ldrb	r6, [r2, #465]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r6, #1	@ <variable>.frame.is_long_term,
	bne	.L1534	@,
	add	r6, r5, #6720	@ tmp752, list0idx,
	add	r0, r5, #6784	@ tmp758, list0idx,
	add	r2, r2, #464	@ tmp757, temp.4713,
	add	r5, r5, #1	@ list0idx.4682, list0idx,
	add	ip, r4, r6, asl #2	@, tmp755, pH264Ctx, tmp752,
	add	lr, r4, r0, asl #2	@, tmp761, pH264Ctx, tmp758,
	str	r2, [ip, #148]	@ tmp757, <variable>.pListX
	str	r2, [lr, #24]	@ tmp757, <variable>.pListX
	b	.L1534	@
.L1578:
	ldr	lr, [r2, #464]	@ tmp694,
	bic	r0, lr, #-16777216	@ tmp695, tmp694,
	bic	lr, r0, #255	@ tmp695, tmp695,
	cmp	lr, #256	@ tmp695,
	addeq	lr, r5, #6720	@ tmp696, list0idx.4739,
	addeq	r2, r2, #464	@ tmp701, D.38142,
	addeq	r5, r5, #1	@ list0idx.4739, list0idx.4739,
	addeq	lr, r4, lr, asl #2	@, tmp699, pH264Ctx, tmp696,
	streq	r2, [lr, #148]	@ tmp701, <variable>.pListX
	b	.L1452	@
.L1579:
	ldr	lr, [r0, #464]	@ tmp704,
	bic	ip, lr, #-16777216	@ tmp705, tmp704,
	bic	lr, ip, #255	@ tmp705, tmp705,
	cmp	lr, #256	@ tmp705,
	addeq	lr, r5, #6720	@ tmp706, list0idx.4739,
	addeq	r0, r0, #464	@ tmp711, D.38142,
	addeq	r5, r5, r2	@ list0idx.4739, list0idx.4739,
	addeq	lr, r4, lr, asl #2	@, tmp709, pH264Ctx, tmp706,
	streq	r0, [lr, #148]	@ tmp711, <variable>.pListX
	b	.L1454	@
.L1570:
	ldr	r6, [r1, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	lr, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r6, r5, #6720	@ tmp798, list0idx,
	addlt	r1, r1, #464	@ tmp803, temp.4705,
	addlt	r5, r5, r2	@ list0idx, list0idx,
	addlt	r6, r4, r6, asl #2	@, tmp801, pH264Ctx, tmp798,
	strlt	r1, [r6, #148]	@ tmp803, <variable>.pListX
	b	.L1486	@
.L1577:
	ldr	r0, [r1, #464]	@ tmp730,
	bic	ip, r0, #-16777216	@ tmp731, tmp730,
	bic	r6, ip, #255	@ tmp731, tmp731,
	cmp	r6, #65536	@ tmp731,
	addeq	r6, r5, #6720	@ tmp732, list0idx.4739,
	addeq	r1, r1, #464	@ tmp737, D.38130,
	addeq	r5, r5, r2	@ list0idx.4739, list0idx.4739,
	addeq	r6, r4, r6, asl #2	@, tmp735, pH264Ctx, tmp732,
	streq	r1, [r6, #148]	@ tmp737, <variable>.pListX
	b	.L1461	@
.L1568:
	ldr	r0, [r1, #480]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r6, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r6, r0	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r0, r7, #6720	@ tmp827, list0idx.4681,
	addge	r1, r1, #464	@ tmp832, temp.4699,
	addge	r7, r7, r2	@ list0idx.4681, list0idx.4681,
	addge	r0, r4, r0, asl #2	@, tmp830, pH264Ctx, tmp827,
	strge	r1, [r0, #148]	@ tmp832, <variable>.pListX
	b	.L1493	@
.L1532:
	movw	r3, #27160	@ tmp499,
	movw	r0, #27164	@ tmp501,
	ldr	ip, [r4, r3]	@ tmp_s, <variable>.pListX
	movw	r1, #20716	@ tmp504,
	ldr	lr, [r4, r0]	@ <variable>.pListX, <variable>.pListX
	ldr	r1, [r4, r1]	@ list0idx.4679, <variable>.CurrSlice.listXsize
	str	ip, [r4, r0]	@ tmp_s, <variable>.pListX
	str	lr, [r4, r3]	@ <variable>.pListX, <variable>.pListX
	b	.L1417	@
.L1377:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.38181,
	b	.L1381	@
.L1566:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.38181,
	b	.L1381	@
.L1565:
	mov	r1, r6	@ list0idx.4679, list0idx.4682
	b	.L1403	@
	.fnend
	.size	InitListX, .-InitListX
	.align	2
	.global	DecList
	.type	DecList, %function
DecList:
	.fnstart
.LFB1434:
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
	movw	r3, #26620	@ tmp149,
	ldr	r6, [r0, r3]	@ D.43659, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.43659,
	mvneq	r5, #0	@ nearest_pic_id,
	beq	.L1591	@,
	movw	r1, #26424	@ tmp152,
	cmp	r6, #1	@ D.43659,
	ldr	r0, [r0, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #52748	@ tmp150,
	ldr	ip, [r4, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r5, #0	@ nearest_pic_id,
	ldr	r1, [r0, #588]	@ nearest_poc, <variable>.poc
	bls	.L1591	@,
	sub	r6, r6, #1	@ tmp154, D.43659,
	rsb	r1, r1, ip	@ tmp153, nearest_poc, curr_poc
	cmp	r1, #0	@ tmp153,
	mov	r5, #0	@ nearest_pic_id,
	mov	r6, r6, asl #2	@ D.47937, tmp154,
	rsblt	r1, r1, #0	@ nearest_poc_diff, tmp153
	tst	r6, #4	@ D.47937,
	mov	r3, r5	@ ivtmp.4797, nearest_pic_id
	bne	.L1594	@,
	add	r2, r4, #26368	@ tmp192, pH264Ctx,
	add	r3, r2, #60	@ tmp192, tmp192,
	ldr	r2, [r3, #0]	@ D.43656, <variable>.DPB.fs
	ldr	r0, [r2, #588]	@ <variable>.poc, <variable>.poc
	rsb	r3, r0, ip	@ tmp195, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp195,
	rsblt	r3, r3, #0	@ nearest_poc_diff.4800, tmp195
	cmp	r3, r1	@ nearest_poc_diff.4800, nearest_poc_diff
	ldrlt	r5, [r2, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r3, r1	@ nearest_poc_diff.4800, nearest_poc_diff
	mov	r1, r3	@ nearest_poc_diff, nearest_poc_diff.4800
	mov	r3, #4	@ ivtmp.4797,
.L1594:
	add	r0, r4, r3	@ tmp155, pH264Ctx, ivtmp.4797
	add	r3, r3, #4	@ tmp180, ivtmp.4797,
	add	r2, r0, #26368	@ tmp157, tmp155,
	ldr	r0, [r2, #60]	@ D.43656, <variable>.DPB.fs
	ldr	r2, [r0, #588]	@ <variable>.poc, <variable>.poc
	rsb	r2, r2, ip	@ tmp158, <variable>.poc, curr_poc
	cmp	r2, #0	@ tmp158,
	rsblt	r2, r2, #0	@ nearest_poc_diff.4800, tmp158
	cmp	r2, r1	@ nearest_poc_diff.4800, nearest_poc_diff
	movge	r2, r1	@ nearest_poc_diff.4800, nearest_poc_diff
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	cmp	r3, r6	@ tmp180, D.47937
	add	r0, r4, r3	@ tmp183, pH264Ctx, tmp180
	add	r1, r0, #26368	@ tmp184, tmp183,
	beq	.L1591	@,
	ldr	r0, [r1, #60]	@ D.43656, <variable>.DPB.fs
	ldr	r1, [r0, #588]	@ <variable>.poc, <variable>.poc
	rsb	r1, r1, ip	@ tmp188, <variable>.poc, curr_poc
	cmp	r1, #0	@ tmp188,
	rsblt	r1, r1, #0	@ nearest_poc_diff.4800, tmp188
	cmp	r1, r2	@ nearest_poc_diff.4800, nearest_poc_diff.4800
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r1, r2	@ nearest_poc_diff.4800, nearest_poc_diff.4800
.L1612:
	add	r3, r3, #4	@ ivtmp.4797, tmp180,
	b	.L1594	@
.L1591:
	movw	r0, #20672	@ tmp163,
	movw	r2, #22304	@ tmp160,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #22300	@ tmp161,
	str	r5, [r4, r2]	@ nearest_pic_id, <variable>.CurrSlice.picid_nearpoc
	mvn	r5, #0	@ tmp162,
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	str	r5, [r4, ip]	@ tmp162, <variable>.CurrSlice.picid_refidx0
	beq	.L1613	@,
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	beq	.L1597	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38389, tmp162
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1597:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	movne	r0, r5	@ D.38389, tmp162
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r4	@, pH264Ctx
	bl	FindMinRefIdx	@
	movw	r0, #27028	@ tmp171,
	ldr	r2, [r4, r0]	@ D.38399, <variable>.pListX
	movw	r3, #22300	@ tmp173,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC57	@,
	cmp	r2, #0	@ D.38399,
	movt	r1, #:upper16:.LC57	@,
	ldrne	r2, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrne	r5, [r2, #184]	@ iftmp.596, <variable>.fs_image.image_id
	str	r5, [r4, r3]	@ iftmp.596, <variable>.CurrSlice.picid_refidx0
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, #0	@ D.38389,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1613:
	movw	ip, #20716	@ tmp165,
	movw	r1, #20720	@ tmp167,
	mov	r0, #0	@ tmp166,
	str	r0, [r4, ip]	@ tmp166, <variable>.CurrSlice.listXsize
	str	r0, [r4, r1]	@ tmp166, <variable>.CurrSlice.listXsize
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	DecList, .-DecList
	.align	2
	.global	H264_ArrangeVahbMem
	.type	H264_ArrangeVahbMem, %function
H264_ArrangeVahbMem:
	.fnstart
.LFB1411:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r6, fp, #76	@ tmp185,,
	mov	r5, r1	@ ImgWidth, ImgWidth
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	mov	r0, r6	@, tmp185
	mov	r7, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r8, #0	@ tmp151,
	mov	r1, #0	@ tmp162,
	mov	r2, #5	@ tmp164,
	ldr	ip, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	r8, [fp, #-75]	@ tmp151, FspInstCfg.s32TfEnable
	strb	r8, [fp, #-74]	@ tmp151, FspInstCfg.s32RprEnable
	str	r7, [fp, #-44]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	str	r7, [fp, #-60]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	str	r7, [fp, #-52]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	movw	r7, #55520	@ tmp173,
	str	r5, [fp, #-48]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	ip, [fp, #-76]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [fp, #-64]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r5, [fp, #-56]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	ldr	r5, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #24	@ <variable>.eCapLevel,
	mov	r5, #1	@ tmp171,
	movwne	r8, #26616	@ tmp157,
	ldrne	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	strb	r1, [fp, #-70]	@ tmp162, FspInstCfg.s32ExpectedTfFsNum
	mov	r1, r6	@, tmp185
	addne	r8, r8, #1	@ tmp160, <variable>.DPB.size,
	strb	r2, [fp, #-69]	@ tmp164, FspInstCfg.s32ExpectedDispFsNum
	uxtbne	r8, r8	@ iftmp.546, tmp160
	strb	r8, [fp, #-71]	@ iftmp.546, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	mov	r8, #0	@ tmp169,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r8, [fp, #-72]	@ tmp169, FspInstCfg.s32UserDec
	strb	r5, [fp, #-73]	@ tmp171, FspInstCfg.s8SubLevelEnable
	ldrneb	r3, [fp, #4]	@ zero_extendqisi2	@ iftmp.547, PmvBlkNum
	moveq	r3, #1	@ iftmp.547,
	strb	r3, [fp, #-68]	@ iftmp.547, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.37476,
	bne	.L1619	@,
	ldr	lr, [r4, #0]	@ temp.4828, <variable>.pstExtraData
	sub	r3, fp, #40	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r8	@,
	moveq	r0, r5	@ D.37485, tmp171
	bne	.L1623	@,
.L1621:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1619:
	mov	r0, r8	@, tmp169
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37485,
	b	.L1621	@
.L1623:
	mov	r0, r6	@, D.37476
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37485,
	b	.L1621	@
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	GetImagePara
	.type	GetImagePara, %function
GetImagePara:
	.fnstart
.LFB1391:
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
	movw	r3, #20684	@ tmp161,
	movw	r4, #13584	@ tmp163,
	ldr	r2, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	lr, [r0, r4]	@ <variable>.PPS, <variable>.PPS
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	ip, [r1, #148]	@ prephitmp.4869, <variable>.fs_image.format
	mov	r1, #2208	@ tmp165,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #13580	@ tmp159,
	mla	r3, r1, r2, lr	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	bic	r1, ip, #768	@ prephitmp.4869, prephitmp.4869,
	movw	r2, #54020	@ tmp173,
	ldr	ip, [r5, r0]	@ <variable>.SPS, <variable>.SPS
	bic	r1, r1, #3	@ prephitmp.4869, prephitmp.4869,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	movw	lr, #3992	@ tmp169,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r1, [r4, #148]	@ prephitmp.4869, <variable>.fs_image.format
	ldr	r2, [r5, r2]	@ <variable>.frame_rate, <variable>.frame_rate
	mla	r3, lr, r3, ip	@ sps, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, r2, asl #10	@ tmp175, <variable>.frame_rate,
	str	r2, [r4, #176]	@ tmp175, <variable>.fs_image.frame_rate
	cmp	r0, #3	@ <variable>.is_used,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.is_used
	b	.L1625	@
.L1629:
	.word	.L1626
	.word	.L1627
	.word	.L1628
	.word	.L1626
.L1626:
	ldrb	r6, [r4, #464]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r6, #0	@ <variable>.frame.structure,
	bne	.L1630	@,
	ldr	r7, [r4, #600]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	mov	lr, #3072	@ prephitmp.4847,
	ldr	r2, [r4, #608]	@ <variable>.err_level, <variable>.err_level
	cmp	r7, #0	@ <variable>.MbaffFrameFlag,
	ldr	ip, [r4, #604]	@ pic_type, <variable>.pic_type
	moveq	r7, #512	@ prephitmp.4883,
	movne	r7, #768	@ prephitmp.4883,
	str	r2, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1632:
	ldr	r6, [r4, #516]	@ D.36262, <variable>.top_field.poc
	ldr	r2, [r4, #552]	@ D.36263, <variable>.bottom_field.poc
	cmp	r6, r2	@ D.36262, D.36263
	beq	.L1659	@,
	movgt	r6, #0	@, top_field_first
	movle	r6, #1	@, top_field_first
.L1643:
	movw	r2, #26412	@ tmp191,
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ D.36277, <variable>.PicTimingSEI.pic_struct
	cmp	r2, #3	@ D.36277,
	moveq	r6, #4096	@ prephitmp.4851,
	beq	.L1645	@,
	cmp	r2, #4	@ D.36277,
	movne	r6, r6, asl #12	@ prephitmp.4851, top_field_first,
	moveq	r6, #0	@ prephitmp.4851,
.L1645:
	orr	r2, r7, lr	@ tmp192, prephitmp.4883, prephitmp.4847
	bic	lr, r1, #12288	@ tmp193, prephitmp.4869,
	orr	r1, r2, lr	@ tmp194, tmp192, tmp193
	and	r2, ip, #3	@ tmp195, pic_type,
	orr	lr, r1, r2	@ tmp196, tmp194, tmp195
	orr	ip, lr, r6	@ tmp197, tmp196, prephitmp.4851
	str	ip, [r4, #148]	@ tmp197, <variable>.fs_image.format
.L1625:
	ldrb	lr, [r3, #18]	@ zero_extendqisi2	@ D.36302, <variable>.frame_mbs_only_flag
	mov	r2, #1	@ tmp209,
	str	lr, [r4, #444]	@ D.36302, <variable>.fs_image.optm_inf.IsProgressiveFrm
	str	lr, [r4, #440]	@ D.36302, <variable>.fs_image.optm_inf.IsProgressiveSeq
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	ldrne	ip, [r3, #68]	@ iftmp.464, <variable>.vui_seq_parameters.matrix_coefficients
	str	r2, [r4, #448]	@ tmp209, <variable>.fs_image.optm_inf.RealFrmRate
	str	ip, [r4, #452]	@ iftmp.464, <variable>.fs_image.optm_inf.MatrixCoef
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1649	@,
	ldrb	r3, [r4, #464]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r3, #0	@ <variable>.frame.structure,
	beq	.L1660	@,
.L1649:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	movw	r3, #26376	@ tmp216,
	ldrsb	r0, [r5, r3]	@ <variable>.FramePackSEI.frame_packing_dec_ok, <variable>.FramePackSEI.frame_packing_dec_ok
	cmp	r0, #0	@ <variable>.FramePackSEI.frame_packing_dec_ok,
	beq	.L1650	@,
	movw	r3, #26392	@ tmp218,
	ldr	r2, [r5, r3]	@ D.36321, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	r2, #3	@ D.36321,
	moveq	r3, #1	@ tmp219,
	streq	r3, [r4, #324]	@ tmp219, <variable>.fs_image.eFramePackingType
	beq	.L1650	@,
	cmp	r2, #4	@ D.36321,
	moveq	r3, #2	@ tmp220,
	streq	r3, [r4, #324]	@ tmp220, <variable>.fs_image.eFramePackingType
	beq	.L1650	@,
	cmp	r2, #5	@ D.36321,
	moveq	r3, #3	@ tmp221,
	streq	r3, [r4, #324]	@ tmp221, <variable>.fs_image.eFramePackingType
	beq	.L1650	@,
	mov	r0, #0	@ tmp222,
	movw	r1, #:lower16:.LC60	@,
	str	r0, [r4, #324]	@ tmp222, <variable>.fs_image.eFramePackingType
	movt	r1, #:upper16:.LC60	@,
	ldr	r2, [r5, r3]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	bl	dprint_vfmw	@
.L1650:
	movw	r2, #55520	@ tmp226,
	ldr	r1, [r4, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r1, r4, #8	@, pFrameStore,
	mov	r2, #456	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp234,
	str	r3, [r5, #336]	@ tmp234, <variable>.ImageDnr.video_standard
	mov	ip, #1	@ tmp237,
	ldrb	r0, [r4, #464]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r5, #331]	@ tmp237, <variable>.ImageDnr.use_pic_qp_en
	cmp	r0, #0	@ <variable>.frame.structure,
	movne	r0, #4	@, iftmp.466,
	strb	r0, [r5, #324]	@ iftmp.466, <variable>.ImageDnr.pic_structure
	ldr	r1, [r4, #492]	@ D.36342, <variable>.frame.MaxQp
	strb	ip, [r5, #329]	@ tmp237, <variable>.ImageDnr.chroma_format_idc
	str	r1, [r5, #344]	@ D.36342, <variable>.ImageDnr.QP_U
	str	r1, [r5, #340]	@ D.36342, <variable>.ImageDnr.QP_Y
	str	r1, [r5, #348]	@ D.36342, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1660:
	cmp	r0, #3	@ <variable>.is_used,
	ldreq	r3, [r4, #148]	@ <variable>.fs_image.format, <variable>.fs_image.format
	biceq	r3, r3, #768	@ tmp215, <variable>.fs_image.format,
	streq	r3, [r4, #148]	@ tmp215, <variable>.fs_image.format
	b	.L1649	@
.L1628:
	ldr	ip, [r4, #604]	@ <variable>.pic_type, <variable>.pic_type
	ldr	lr, [r4, #608]	@ <variable>.err_level, <variable>.err_level
	and	r2, ip, #3	@ tmp198, <variable>.pic_type,
	orr	r1, r1, r2	@ tmp200, prephitmp.4869, tmp198
	orr	ip, r1, #2816	@ tmp201, tmp200,
	str	lr, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	ip, [r4, #148]	@ tmp201, <variable>.fs_image.format
	b	.L1625	@
.L1627:
	ldr	lr, [r4, #604]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r2, [r4, #608]	@ <variable>.err_level, <variable>.err_level
	and	ip, lr, #3	@ tmp203, <variable>.pic_type,
	orr	lr, r1, ip	@ tmp205, prephitmp.4869, tmp203
	orr	r1, lr, #1792	@ tmp206, tmp205,
	str	r2, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	r1, [r4, #148]	@ tmp206, <variable>.fs_image.format
	b	.L1625	@
.L1630:
	movw	r7, #55516	@ tmp180,
	ldr	r8, [r4, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldr	r2, [r5, r7]	@ D.36246, <variable>.out_error_thr
	cmp	r8, r2	@ <variable>.top_field.err_level, D.36246
	bhi	.L1661	@,
	ldr	sl, [r4, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.36246, <variable>.bottom_field.err_level
	bcc	.L1636	@,
.L1634:
	ldr	r6, [r4, #608]	@ <variable>.err_level, <variable>.err_level
	mov	lr, #3	@ valid_field,
	ldr	ip, [r4, #604]	@ pic_type, <variable>.pic_type
	ldr	r2, [r4, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r6, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	ldr	r6, [r4, #524]	@ pic_type, <variable>.top_field.pic_type
.L1637:
	ldrb	r7, [r4, #3]	@ zero_extendqisi2	@ D.36254, <variable>.mode_skip_flag
	cmp	r7, #1	@ D.36254,
	streq	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	moveq	lr, #2	@ valid_field,
	beq	.L1639	@,
	cmp	r7, #2	@ D.36254,
	streq	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r6	@ pic_type, pic_type
	moveq	lr, #1	@ valid_field,
.L1639:
	mov	lr, lr, asl #10	@ prephitmp.4847, valid_field,
	mov	r7, #768	@ prephitmp.4883,
	str	r6, [r4, #140]	@ pic_type, <variable>.fs_image.top_fld_type
	str	r2, [r4, #144]	@ <variable>.bottom_field.pic_type, <variable>.fs_image.bottom_fld_type
	b	.L1632	@
.L1636:
	ldr	r6, [r4, #524]	@ pic_type, <variable>.top_field.pic_type
	mov	lr, #1	@ valid_field,
	ldr	r2, [r4, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	mov	ip, r6	@ pic_type, pic_type
	b	.L1637	@
.L1659:
	ldr	r2, [r4, #152]	@ <variable>.fs_image.image_width, <variable>.fs_image.image_width
	cmp	r2, #720	@ <variable>.fs_image.image_width,
	movne	r6, #1	@ top_field_first,
	bne	.L1643	@,
	ldr	r6, [r4, #156]	@ <variable>.fs_image.image_height, <variable>.fs_image.image_height
	subs	r6, r6, #480	@ top_field_first, <variable>.fs_image.image_height,
	movne	r6, #1	@ top_field_first
	b	.L1643	@
.L1661:
	ldr	sl, [r4, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.36246, <variable>.bottom_field.err_level
	bcc	.L1634	@,
	ldr	r2, [r4, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	mov	lr, #2	@ valid_field,
	str	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	ldr	r6, [r4, #524]	@ pic_type, <variable>.top_field.pic_type
	mov	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	b	.L1637	@
	.fnend
	.size	GetImagePara, .-GetImagePara
	.align	2
	.global	RemoveFrameStoreOutDPB
	.type	RemoveFrameStoreOutDPB, %function
RemoveFrameStoreOutDPB:
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
	add	r7, r1, #6592	@ tmp202, pos,
	add	r5, r7, #14	@ tmp201, tmp202,
	mov	r6, r1	@ pos, pos
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, r5, asl #2]	@ D.36029, <variable>.DPB.fs
	cmp	r3, #0	@ D.36029,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r3, [r3, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	movw	r1, #26896	@ tmp152,
	ldr	r2, [r0, r1]	@ D.36034, <variable>.APC.used_size
	movw	r1, #26896	@ tmp153,
	add	lr, r3, #6656	@ tmp144, <variable>.apc_idc,
	ldr	r3, [r4, r5, asl #2]	@ tmp158, <variable>.DPB.fs
	add	ip, lr, #2	@ tmp144, tmp144,
	cmp	r2, #0	@ D.36034,
	subne	r2, r2, #1	@ iftmp.453, D.36034,
	str	r2, [r4, r1]	@ iftmp.453, <variable>.APC.used_size
	add	r8, r0, ip, asl #2	@, tmp149, pH264Ctx, tmp144,
	mov	r0, #0	@ tmp151,
	str	r0, [r8, #4]	@ tmp151, <variable>.APC.is_used
	movw	r8, #55520	@ tmp154,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L1666	@,
	ldrsb	r2, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #3	@ <variable>.s32DispState,
	beq	.L1667	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp165, <variable>.DPB.fs
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L1667:
	ldr	lr, [r4, r5, asl #2]	@ tmp171, <variable>.DPB.fs
	movw	r3, #55520	@ tmp167,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
.L1666:
	ldr	r3, [r4, r5, asl #2]	@ tmp175, <variable>.DPB.fs
	mov	ip, #0	@ tmp176,
	movw	r1, #26620	@ tmp188,
	strb	ip, [r3, #1]	@ tmp176, <variable>.is_used
	ldr	lr, [r4, r5, asl #2]	@ tmp180, <variable>.DPB.fs
	strb	ip, [lr, #4]	@ tmp176, <variable>.is_in_dpb
	ldr	r2, [r4, r5, asl #2]	@ tmp185, <variable>.DPB.fs
	strb	ip, [r2, #2]	@ tmp176, <variable>.is_reference
	ldr	r0, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r0, #1	@ D.36050, <variable>.DPB.used_size,
	cmp	r6, ip	@ pos, D.36050
	bcs	.L1668	@,
	add	r7, r7, #15	@ tmp190, tmp202,
	add	r1, r6, #1	@ i, pos,
	cmp	r1, ip	@ i, D.36050
	mvn	r2, r6	@ tmp204, pos
	add	r7, r4, r7, asl #2	@, ivtmp.4918, pH264Ctx, tmp190,
	add	r6, r2, ip	@ tmp203, tmp204, D.36050
	and	r6, r6, #1	@ tmp205, tmp203,
	add	r2, r7, #4	@ ivtmp.4918, ivtmp.4918,
	ldr	r0, [r7, #0]	@ tmp193, <variable>.DPB.fs
	str	r0, [r7, #-4]	@ tmp193, <variable>.DPB.fs
	bcs	.L1668	@,
	cmp	r6, #0	@ tmp205,
	beq	.L1669	@,
	ldr	lr, [r2, #0]	@ tmp214, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.36050
	str	lr, [r2, #-4]	@ tmp214, <variable>.DPB.fs
	add	r2, r2, #4	@ ivtmp.4918, ivtmp.4918,
	bcs	.L1668	@,
.L1669:
	ldr	r0, [r2, #0]	@ tmp211, <variable>.DPB.fs
	add	r1, r1, #2	@ i, i,
	ldr	r3, [r2, #4]	@ tmp213, <variable>.DPB.fs
	cmp	r1, ip	@ i, D.36050
	mov	lr, r2	@ tmp207, ivtmp.4918
	str	r0, [r2, #-4]	@ tmp211, <variable>.DPB.fs
	str	r3, [lr], #4	@ tmp213, <variable>.DPB.fs
	add	r2, lr, #4	@ ivtmp.4918, tmp207,
	bcc	.L1669	@,
.L1668:
	movw	lr, #26620	@ tmp197,
	add	r0, ip, #6592	@ tmp194, D.36050,
	ldr	r2, [r4, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	ip, r0, #14	@ tmp194, tmp194,
	mov	r3, #0	@ tmp196,
	sub	r1, r2, #1	@ tmp200, <variable>.DPB.used_size,
	str	r3, [r4, ip, asl #2]	@ tmp196, <variable>.DPB.fs
	str	r1, [r4, lr]	@ tmp200, <variable>.DPB.used_size
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	RemoveFrameStoreOutDPB, .-RemoveFrameStoreOutDPB
	.align	2
	.global	RemoveUnUsedFrameStore
	.type	RemoveUnUsedFrameStore, %function
RemoveUnUsedFrameStore:
	.fnstart
.LFB1388:
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
	movw	r3, #26620	@ tmp142,
	ldr	sl, [r0, r3]	@ k, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	sl, #0	@ k,
	beq	.L1678	@,
	movw	r7, #6606	@ tmp177,
	movw	r8, #55520	@ tmp179,
	ldr	r2, [r0, r7, asl #2]	@ tmp147, <variable>.DPB.fs
	sub	r6, sl, #1	@ tmp181, k,
	ldr	r0, [r0, r8]	@, <variable>.ChanID
	and	r6, r6, #1	@ tmp183, tmp181,
	mov	r5, #0	@ j,
	mvn	r9, #0	@ tmp180,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1709	@,
	ldrsh	r1, [r0, #0]	@ tmp204,* pstLogicFs
	cmp	r1, #0	@ tmp204,
	bne	.L1687	@,
	ldr	lr, [r4, r7, asl #2]	@ tmp205, <variable>.DPB.fs
	str	r9, [lr, #572]	@ tmp180, <variable>.logic_fs_id
	ldr	r0, [r4, r7, asl #2]	@ tmp207, <variable>.DPB.fs
	strb	r5, [r0, #2]	@ j, <variable>.is_reference
.L1709:
	ldr	r3, [r4, r7, asl #2]	@ temp.4961, <variable>.DPB.fs
	ldr	r2, [r3, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, #1	@ <variable>.eFoState,
	movne	ip, #0	@, tmp210
	moveq	ip, #1	@, tmp210
	strb	ip, [r3, #4]	@ tmp210, <variable>.is_in_dpb
.L1687:
	ldr	r3, [r4, r7, asl #2]	@ temp.4965, <variable>.DPB.fs
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r7, #0	@ <variable>.is_reference,
	beq	.L1702	@,
.L1688:
	mov	r5, #1	@ j,
.L1703:
	mov	r7, #1	@ i,
	cmp	sl, r7	@ k, i
	bls	.L1678	@,
	cmp	r6, #0	@ tmp183,
	beq	.L1683	@,
	add	r6, r5, #6592	@ tmp218, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r6, #14	@ tmp218, tmp218,
	ldr	lr, [r4, r6, asl #2]	@ tmp219, <variable>.DPB.fs
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1716	@,
	ldrsh	r3, [r0, #0]	@ tmp225,* pstLogicFs
	cmp	r3, #0	@ tmp225,
	beq	.L1717	@,
.L1696:
	ldr	r3, [r4, r6, asl #2]	@ temp.4965, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	bne	.L1697	@,
.L1707:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1697	@,
	ldr	r0, [r3, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	beq	.L1697	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	add	r7, r7, #1	@ i, tmp184,
	bl	RemoveFrameStoreOutDPB	@
	cmp	sl, r7	@ k, i
	bls	.L1678	@,
.L1683:
	add	r1, r5, #6592	@ tmp188, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r1, #14	@ tmp188, tmp188,
	ldr	ip, [r4, r6, asl #2]	@ tmp189, <variable>.DPB.fs
	ldr	r1, [ip, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1679	@,
	ldrsh	r3, [r0, #0]	@ tmp149,* pstLogicFs
	cmp	r3, #0	@ tmp149,
	bne	.L1680	@,
	ldr	ip, [r4, r6, asl #2]	@ tmp152, <variable>.DPB.fs
	str	r9, [ip, #572]	@ tmp180, <variable>.logic_fs_id
	ldr	r2, [r4, r6, asl #2]	@ tmp156, <variable>.DPB.fs
	strb	r3, [r2, #2]	@ tmp149, <variable>.is_reference
	ldr	lr, [r4, r6, asl #2]	@ temp.4961, <variable>.DPB.fs
	ldr	r3, [lr, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp162
	moveq	r0, #1	@, tmp162
	strb	r0, [lr, #4]	@ tmp162, <variable>.is_in_dpb
.L1680:
	ldr	r3, [r4, r6, asl #2]	@ temp.4965, <variable>.DPB.fs
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	bne	.L1681	@,
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1681	@,
	ldr	ip, [r3, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1681	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	bl	RemoveFrameStoreOutDPB	@
.L1682:
	add	r2, r5, #6592	@ tmp197, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r2, #14	@ tmp197, tmp197,
	add	r7, r7, #1	@ tmp184, i,
	ldr	r3, [r4, r6, asl #2]	@ tmp198, <variable>.DPB.fs
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1710	@,
	ldrsh	r3, [r0, #0]	@ tmp239,* pstLogicFs
	cmp	r3, #0	@ tmp239,
	bne	.L1696	@,
	ldr	r0, [r4, r6, asl #2]	@ tmp240, <variable>.DPB.fs
	str	r9, [r0, #572]	@ tmp180, <variable>.logic_fs_id
	ldr	r2, [r4, r6, asl #2]	@ tmp242, <variable>.DPB.fs
	strb	r3, [r2, #2]	@ tmp239, <variable>.is_reference
.L1710:
	ldr	r3, [r4, r6, asl #2]	@ temp.4961, <variable>.DPB.fs
	ldr	r1, [r3, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	movne	lr, #0	@, tmp245
	moveq	lr, #1	@, tmp245
	strb	lr, [r3, #4]	@ tmp245, <variable>.is_in_dpb
	ldr	r3, [r4, r6, asl #2]	@ temp.4965, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1707	@,
.L1697:
	add	r7, r7, #1	@ i, tmp184,
	add	r5, r5, #1	@ j, j,
	cmp	sl, r7	@ k, i
	bhi	.L1683	@,
.L1678:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1681:
	add	r5, r5, #1	@ j, j,
	b	.L1682	@
.L1679:
	ldr	r0, [r4, r6, asl #2]	@ temp.4962, <variable>.DPB.fs
	ldr	lr, [r0, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	movne	r1, #0	@, tmp167
	moveq	r1, #1	@, tmp167
	strb	r1, [r0, #4]	@ tmp167, <variable>.is_in_dpb
	b	.L1680	@
.L1702:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	bne	.L1688	@,
	ldr	r0, [r3, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	beq	.L1688	@,
	strb	r1, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L1703	@
.L1717:
	ldr	ip, [r4, r6, asl #2]	@ tmp226, <variable>.DPB.fs
	str	r9, [ip, #572]	@ tmp180, <variable>.logic_fs_id
	ldr	r1, [r4, r6, asl #2]	@ tmp228, <variable>.DPB.fs
	strb	r3, [r1, #2]	@ tmp225, <variable>.is_reference
	ldr	r0, [r4, r6, asl #2]	@ temp.4961, <variable>.DPB.fs
	ldr	lr, [r0, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	movne	r2, #0	@, tmp231
	moveq	r2, #1	@, tmp231
	strb	r2, [r0, #4]	@ tmp231, <variable>.is_in_dpb
	b	.L1696	@
.L1716:
	ldr	ip, [r4, r6, asl #2]	@ temp.4962, <variable>.DPB.fs
	ldr	r3, [ip, #592]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, r7	@ <variable>.eFoState,
	movne	r1, #0	@, tmp224
	moveq	r1, #1	@, tmp224
	strb	r1, [ip, #4]	@ tmp224, <variable>.is_in_dpb
	b	.L1696	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	UnMarkFrameStoreRef
	.type	UnMarkFrameStoreRef, %function
UnMarkFrameStoreRef:
	.fnstart
.LFB1377:
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
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ prephitmp.4983, <variable>.is_used
	tst	r3, #1	@ prephitmp.4983,
	beq	.L1719	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp142,
	strb	r2, [r1, #502]	@ tmp142, <variable>.top_field.is_short_term
	and	ip, lr, #2	@ tmp140, <variable>.is_reference,
	strb	r2, [r1, #501]	@ tmp142, <variable>.top_field.is_long_term
	strb	ip, [r1, #2]	@ tmp140, <variable>.is_reference
.L1719:
	tst	r3, #2	@ prephitmp.4983,
	beq	.L1720	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp151,
	strb	r2, [r1, #538]	@ tmp151, <variable>.bottom_field.is_short_term
	and	ip, lr, #1	@ tmp149, <variable>.is_reference,
	strb	r2, [r1, #537]	@ tmp151, <variable>.bottom_field.is_long_term
	strb	ip, [r1, #2]	@ tmp149, <variable>.is_reference
.L1720:
	cmp	r3, #3	@ prephitmp.4983,
	mov	r2, #0	@ tmp161,
	moveq	r3, #0	@ tmp155,
	streqb	r3, [r1, #2]	@ tmp155, <variable>.is_reference
	streqb	r3, [r1, #466]	@ tmp155, <variable>.frame.is_short_term
	streqb	r3, [r1, #465]	@ tmp155, <variable>.frame.is_long_term
	movw	r3, #55520	@ tmp163,
	strb	r2, [r1, #2]	@ tmp161, <variable>.is_reference
	ldr	r1, [r1, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UnMarkFrameStoreRef, .-UnMarkFrameStoreRef
	.align	2
	.global	SimpleSlideDPB
	.type	SimpleSlideDPB, %function
SimpleSlideDPB:
	.fnstart
.LFB1408:
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
	movw	ip, #26620	@ tmp134,
	movw	r1, #26616	@ tmp135,
	ldr	r2, [r0, ip]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r3, [r0, r1]	@ <variable>.DPB.size, <variable>.DPB.size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, r3	@ <variable>.DPB.used_size, <variable>.DPB.size
	bcs	.L1727	@,
.L1724:
	movw	r3, #52744	@ tmp143,
	mov	r1, #0	@ tmp141,
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r0, #52260	@ tmp140,
	strb	r1, [r4, r0]	@ tmp141, <variable>.CurrPic.is_long_term
	cmp	r2, r1	@ <variable>.CurrPic.nal_ref_idc,
	movwne	r2, #52261	@ tmp145,
	movne	r0, #1	@ tmp146,
	strneb	r0, [r4, r2]	@ tmp146, <variable>.CurrPic.is_short_term
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1727:
	movw	lr, #26424	@ tmp138,
	ldr	r1, [r0, lr]	@, <variable>.DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	RemoveFrameStoreOutDPB	@
	b	.L1724	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	SlidingWinMark
	.type	SlidingWinMark, %function
SlidingWinMark:
	.fnstart
.LFB1402:
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
	movw	r3, #17532	@ tmp140,
	movw	r2, #26628	@ tmp141,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r0, r3]	@ <variable>.CurrSPS.num_ref_frames, <variable>.CurrSPS.num_ref_frames
	mov	ip, #26624	@ tmp139,
	ldr	r0, [r0, r2]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	ldr	r2, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	rsb	r3, r0, r1	@ tmp142, <variable>.DPB.ltref_frames_in_buffer, <variable>.CurrSPS.num_ref_frames
	cmp	r2, r3	@ <variable>.DPB.ref_frames_in_buffer, tmp142
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	movw	r0, #26620	@ tmp146,
	ldr	sl, [r4, r0]	@ D.36934, <variable>.DPB.used_size
	cmp	sl, #0	@ D.36934,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r6, r4, #26368	@ ivtmp.5048, pH264Ctx,
	sub	r8, sl, #1	@ tmp149, D.36934,
	and	r8, r8, #1	@ tmp151, tmp149,
	ldr	r5, [r6, #56]!	@ D.36927, <variable>.DPB.fs
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1745	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.36934, i
	add	r6, r6, #4	@ ivtmp.5048, ivtmp.5048,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1749:
	cmp	r8, #0	@ tmp151,
	beq	.L1731	@,
	ldr	r5, [r6, #0]	@ D.36927, <variable>.DPB.fs
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L1746	@,
.L1736:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.5048, ivtmp.5048,
	cmp	sl, r7	@ D.36934, i
	bhi	.L1731	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1730:
	ldr	r5, [r6, #4]	@ D.36927, <variable>.DPB.fs
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1747	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.5048, tmp153,
	cmp	sl, r7	@ D.36934, i
	bls	.L1748	@,
.L1731:
	ldr	r5, [r6, #0]	@ D.36927, <variable>.DPB.fs
	add	r7, r7, #1	@ tmp152, i,
	add	r8, r6, #4	@ tmp153, ivtmp.5048,
	ldrb	ip, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1730	@,
	mov	r0, r5	@, D.36927
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1730	@,
.L1744:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, D.36927
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1747:
	mov	r0, r5	@, D.36927
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1744	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.5048, tmp153,
	cmp	sl, r7	@ D.36934, i
	bhi	.L1731	@,
.L1748:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1745:
	mov	r0, r5	@, D.36927
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1744	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.36934, i
	add	r6, r6, #4	@ ivtmp.5048, ivtmp.5048,
	bhi	.L1749	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1746:
	mov	r0, r5	@, D.36927
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1736	@,
	b	.L1744	@
	.fnend
	.size	SlidingWinMark, .-SlidingWinMark
	.align	2
	.global	UnMarkAllSTRef
	.type	UnMarkAllSTRef, %function
UnMarkAllSTRef:
	.fnstart
.LFB1385:
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
	mov	r7, #26624	@ tmp136,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r6, r0, #26368	@ ivtmp.5077, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #120	@ ivtmp.5077, ivtmp.5077,
.L1752:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6], #4	@, <variable>.DPB.fs_ref
	bl	UnMarkFrameStoreRef	@
	ldr	r0, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L1752	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	UnMarkAllSTRef, .-UnMarkAllSTRef
	.align	2
	.global	UpdateMaxLTFrmIdx
	.type	UpdateMaxLTFrmIdx, %function
UpdateMaxLTFrmIdx:
	.fnstart
.LFB1384:
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
	movw	r7, #26628	@ tmp139,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #26632	@ tmp138,
	mov	r2, r1	@ max_long_term_frame_idx_plus1, max_long_term_frame_idx_plus1
	cmp	r3, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	str	r1, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.5111, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #184	@ ivtmp.5111, ivtmp.5111,
	b	.L1758	@
.L1757:
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1760:
	ldr	r2, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
.L1758:
	ldr	r1, [r4, #0]	@ D.35992, <variable>.DPB.fs_ltref
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5111, ivtmp.5111,
	ldr	r0, [r1, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r0, r2	@ <variable>.long_term_frame_idx, max_long_term_frame_idx_plus1
	bcc	.L1757	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	bhi	.L1760	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	UpdateMaxLTFrmIdx, .-UpdateMaxLTFrmIdx
	.align	2
	.global	UnMarkLTRef
	.type	UnMarkLTRef, %function
UnMarkLTRef:
	.fnstart
.LFB1381:
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #0	@ <variable>.structure,
	beq	.L1762	@,
	movw	r1, #26628	@ tmp153,
	ldr	r7, [r0, r1]	@ D.35808, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, #0	@ D.35808,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.5156, pH264Ctx,
	sub	r5, r7, #1	@ tmp238, D.35808,
	and	r6, r5, #1	@ tmp240, tmp238,
	mov	ip, #0	@ i,
	ldr	r1, [r4, #184]!	@ temp.5160, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5161, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5161,
	beq	.L1782	@,
	ldr	r8, [r1, #500]	@ tmp261,
	bic	r8, r8, #-16777216	@ tmp262, tmp261,
	bic	r8, r8, #255	@ tmp262, tmp262,
	cmp	r8, #256	@ tmp262,
	beq	.L1805	@,
.L1782:
	tst	r3, #2	@ temp.5161,
	beq	.L1783	@,
	ldr	r3, [r1, #536]	@ tmp265,
	bic	r3, r3, #-16777216	@ tmp266, tmp265,
	bic	r3, r3, #255	@ tmp266, tmp266,
	cmp	r3, #256	@ tmp266,
	beq	.L1806	@,
.L1783:
	mov	ip, #1	@ i,
	cmp	r7, ip	@ D.35808, i
	add	r4, r4, #4	@ ivtmp.5156, ivtmp.5156,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r6, #0	@ tmp240,
	beq	.L1771	@,
	ldr	r1, [r4, #0]	@ temp.5160, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5161, <variable>.is_reference
	ands	r5, r3, ip	@ tmp232, temp.5161,
	beq	.L1785	@,
	ldr	r6, [r1, #500]	@ tmp268,
	bic	r6, r6, #-16777216	@ tmp269, tmp268,
	bic	r6, r6, #255	@ tmp269, tmp269,
	cmp	r6, #256	@ tmp269,
	beq	.L1807	@,
.L1785:
	tst	r3, #2	@ temp.5161,
	beq	.L1786	@,
	ldr	r3, [r1, #536]	@ tmp272,
	bic	r3, r3, #-16777216	@ tmp273, tmp272,
	bic	r3, r3, #255	@ tmp273, tmp273,
	cmp	r3, #256	@ tmp273,
	beq	.L1808	@,
.L1786:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5156, ivtmp.5156,
	cmp	r7, ip	@ D.35808, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r1, [r4, #0]	@ temp.5160, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5161, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5161,
	bne	.L1809	@,
.L1767:
	tst	r3, #2	@ temp.5161,
	beq	.L1769	@,
	ldr	r3, [r1, #536]	@ tmp200,
	bic	r3, r3, #-16777216	@ tmp198, tmp200,
	bic	r3, r3, #255	@ tmp198, tmp198,
	cmp	r3, #256	@ tmp198,
	beq	.L1810	@,
.L1769:
	ldr	r1, [r4, #4]	@ temp.5160, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp242, ivtmp.5156,
	mov	r8, ip	@ tmp241, i
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5161, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5161,
	beq	.L1789	@,
	ldr	r6, [r1, #500]	@ tmp275,
	bic	r6, r6, #-16777216	@ tmp276, tmp275,
	bic	r6, r6, #255	@ tmp276, tmp276,
	cmp	r6, #256	@ tmp276,
	beq	.L1811	@,
.L1789:
	tst	r3, #2	@ temp.5161,
	beq	.L1790	@,
	ldr	r3, [r1, #536]	@ tmp279,
	bic	r3, r3, #-16777216	@ tmp280, tmp279,
	bic	r3, r3, #255	@ tmp280, tmp280,
	cmp	r3, #256	@ tmp280,
	beq	.L1812	@,
.L1790:
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.5156, tmp242,
	cmp	r7, ip	@ D.35808, i
	bls	.L1813	@,
.L1771:
	ldr	r1, [r4, #0]	@ temp.5160, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5161, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5161,
	beq	.L1767	@,
.L1809:
	ldr	r6, [r1, #500]	@ tmp165,
	bic	r6, r6, #-16777216	@ tmp163, tmp165,
	bic	r6, r6, #255	@ tmp163, tmp163,
	cmp	r6, #256	@ tmp163,
	bne	.L1767	@,
	ldr	r6, [r1, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1767	@,
.L1799:
	add	ip, ip, #6592	@ tmp169, i,
	and	r2, r3, #2	@ tmp167, temp.5161,
	add	ip, ip, #46	@ tmp169, tmp169,
	strb	r2, [r1, #2]	@ tmp167, <variable>.is_reference
	mov	r2, #0	@ tmp172,
	ldr	r3, [r0, ip, asl #2]	@ tmp171, <variable>.DPB.fs_ltref
	strb	r2, [r3, #501]	@ tmp172, <variable>.top_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5163, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #464]	@ zero_extendqisi2	@ D.35823, <variable>.frame.structure
	cmp	r1, #3	@ D.35823,
	cmpne	r1, r2	@, D.35823,
	bne	.L1770	@,
.L1803:
	strb	r2, [r3, #466]	@ tmp207, <variable>.frame.is_short_term
	ldr	r1, [r0, ip, asl #2]	@ tmp222, <variable>.DPB.fs_ltref
	strb	r2, [r1, #465]	@ tmp207, <variable>.frame.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5138, <variable>.DPB.fs_ltref
.L1770:
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	ldreq	r3, [r3, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	addeq	r3, r3, #13440	@ tmp228, <variable>.pmv_address_idc,
	addeq	r3, r3, #42	@ tmp228, tmp228,
	streq	ip, [r0, r3, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1762:
	movw	ip, #26628	@ tmp154,
	ldr	r6, [r0, ip]	@ temp.5162, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ temp.5162,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r3, r0, #26368	@ ivtmp.5151, pH264Ctx,
	sub	r1, r6, #1	@ tmp233, temp.5162,
	and	r4, r1, #1	@ tmp235, tmp233,
	ldr	r1, [r3, #184]!	@ D.35797, <variable>.DPB.fs_ltref
	ldr	ip, [r1, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1814	@,
.L1775:
	mov	ip, #1	@ i.5159,
	cmp	ip, r6	@ i.5159, temp.5162
	add	r3, r3, #4	@ ivtmp.5151, ivtmp.5151,
	ldmcsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r4, #0	@ tmp235,
	beq	.L1766	@,
	ldr	r1, [r3, #0]	@ D.35797, <variable>.DPB.fs_ltref
	ldr	r4, [r1, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1815	@,
.L1777:
	add	ip, ip, #1	@ i.5159, i.5159,
	add	r3, r3, #4	@ ivtmp.5151, ivtmp.5151,
	cmp	ip, r6	@ i.5159, temp.5162
	bcc	.L1766	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1765:
	ldr	r1, [r3, #4]	@ D.35797, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1816	@,
.L1780:
	add	ip, ip, #1	@ i.5159, tmp236,
	add	r3, r5, #4	@ ivtmp.5151, tmp237,
	cmp	ip, r6	@ i.5159, temp.5162
	bcs	.L1817	@,
.L1766:
	ldr	r1, [r3, #0]	@ D.35797, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ tmp236, i.5159,
	add	r5, r3, #4	@ tmp237, ivtmp.5151,
	ldr	r4, [r1, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1765	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1765	@,
	ldr	r4, [r1, #464]	@ tmp160,
	bic	r4, r4, #-16777216	@ tmp158, tmp160,
	bic	r4, r4, #255	@ tmp158, tmp158,
	cmp	r4, #256	@ tmp158,
	beq	.L1798	@,
	ldr	r1, [r3, #4]	@ D.35797, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #472]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1780	@,
.L1816:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #3	@ <variable>.is_reference,
	bne	.L1780	@,
	ldr	r3, [r1, #464]	@ tmp259,
	bic	r3, r3, #-16777216	@ tmp260, tmp259,
	bic	r3, r3, #255	@ tmp260, tmp260,
	cmp	r3, #256	@ tmp260,
	beq	.L1798	@,
	add	ip, ip, #1	@ i.5159, tmp236,
	add	r3, r5, #4	@ ivtmp.5151, tmp237,
	cmp	ip, r6	@ i.5159, temp.5162
	bcc	.L1766	@,
.L1817:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1810:
	ldr	r3, [r1, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1769	@,
.L1800:
	add	r2, ip, #6592	@ tmp204, i,
	strb	r5, [r1, #2]	@ tmp232, <variable>.is_reference
	add	ip, r2, #46	@ tmp204, tmp204,
	mov	r2, #0	@ tmp207,
	ldr	r3, [r0, ip, asl #2]	@ tmp206, <variable>.DPB.fs_ltref
	strb	r2, [r3, #537]	@ tmp207, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5138, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #464]	@ zero_extendqisi2	@ D.35843, <variable>.frame.structure
	cmp	r1, #3	@ D.35843,
	cmpne	r1, r2	@, D.35843,
	bne	.L1770	@,
	b	.L1803	@
.L1811:
	ldr	r6, [r1, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1789	@,
	b	.L1799	@
.L1812:
	ldr	r3, [r1, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	beq	.L1800	@,
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.5156, tmp242,
	cmp	r7, ip	@ D.35808, i
	bhi	.L1771	@,
.L1813:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1805:
	ldr	r8, [r1, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r8, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1782	@,
	b	.L1799	@
.L1806:
	ldr	r3, [r1, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1783	@,
	b	.L1800	@
.L1807:
	ldr	r6, [r1, #508]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1785	@,
	b	.L1799	@
.L1808:
	ldr	r3, [r1, #544]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1786	@,
	b	.L1800	@
.L1814:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L1775	@,
	ldr	ip, [r1, #464]	@ tmp252,
	bic	ip, ip, #-16777216	@ tmp253, tmp252,
	bic	ip, ip, #255	@ tmp253, tmp253,
	cmp	ip, #256	@ tmp253,
	bne	.L1775	@,
.L1798:
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1815:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1777	@,
	ldr	r4, [r1, #464]	@ tmp256,
	bic	r4, r4, #-16777216	@ tmp257, tmp256,
	bic	r4, r4, #255	@ tmp257, tmp257,
	cmp	r4, #256	@ tmp257,
	bne	.L1777	@,
	b	.L1798	@
	.fnend
	.size	UnMarkLTRef, .-UnMarkLTRef
	.align	2
	.global	UnMarkLTFldByFrmIdx
	.type	UnMarkLTFldByFrmIdx, %function
UnMarkLTFldByFrmIdx:
	.fnstart
.LFB1379:
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
	movw	ip, #26628	@ tmp141,
	ldr	ip, [r0, ip]	@ D.35705, <variable>.DPB.ltref_frames_in_buffer
	cmp	ip, #0	@ D.35705,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.5199, pH264Ctx,
	sub	r4, ip, #1	@ tmp146, D.35705,
	and	r7, r4, #1	@ tmp148, tmp146,
	ldr	r4, [r5, #184]!	@ D.35689, <variable>.DPB.fs_ltref
	ldr	r6, [r4, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1848	@,
.L1827:
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.35705
	add	r5, r5, #4	@ ivtmp.5199, ivtmp.5199,
	ldmcsfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1853:
	cmp	r7, #0	@ tmp148,
	beq	.L1824	@,
	ldr	r4, [r5, #0]	@ D.35689, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1849	@,
.L1830:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5199, ivtmp.5199,
	cmp	r6, ip	@ i, D.35705
	bcc	.L1824	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1820:
	ldr	r4, [r5, #4]	@ D.35689, <variable>.DPB.fs_ltref
	add	r6, r6, #1	@ tmp149, i,
	add	r5, r5, #4	@ tmp150, ivtmp.5199,
	ldr	r7, [r4, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1850	@,
.L1834:
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5199, tmp150,
	cmp	r6, ip	@ i, D.35705
	bcs	.L1851	@,
.L1824:
	ldr	r4, [r5, #0]	@ D.35689, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1820	@,
	cmp	r2, #1	@ structure,
	beq	.L1852	@,
	cmp	r2, #2	@ structure,
	bne	.L1820	@,
	ldrb	r7, [r4, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1823	@,
.L1847:
	cmp	r4, r1	@ D.35689, pFS
	beq	.L1820	@,
.L1823:
	mov	r1, r4	@, D.35689
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1850:
	cmp	r2, #1	@ structure,
	beq	.L1842	@,
	cmp	r2, #2	@ structure,
	bne	.L1834	@,
	ldrb	r7, [r4, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1823	@,
.L1845:
	cmp	r4, r1	@ D.35689, pFS
	bne	.L1823	@,
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5199, tmp150,
	cmp	r6, ip	@ i, D.35705
	bcc	.L1824	@,
.L1851:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1852:
	ldrb	r7, [r4, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1847	@,
	b	.L1823	@
.L1842:
	ldrb	r7, [r4, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1845	@,
	b	.L1823	@
.L1848:
	cmp	r2, #1	@ structure,
	beq	.L1840	@,
	cmp	r2, #2	@ structure,
	bne	.L1827	@,
	ldrb	r6, [r4, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #0	@ <variable>.top_field.is_long_term,
	beq	.L1823	@,
.L1843:
	cmp	r4, r1	@ D.35689, pFS
	bne	.L1823	@,
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.35705
	add	r5, r5, #4	@ ivtmp.5199, ivtmp.5199,
	bcc	.L1853	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1849:
	cmp	r2, r6	@ structure,
	beq	.L1841	@,
	cmp	r2, #2	@ structure,
	bne	.L1830	@,
	ldrb	r7, [r4, #501]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1823	@,
.L1844:
	cmp	r4, r1	@ D.35689, pFS
	bne	.L1823	@,
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5199, ivtmp.5199,
	cmp	r6, ip	@ i, D.35705
	bcc	.L1824	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1840:
	ldrb	r6, [r4, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1843	@,
	b	.L1823	@
.L1841:
	ldrb	r7, [r4, #537]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1844	@,
	b	.L1823	@
	.fnend
	.size	UnMarkLTFldByFrmIdx, .-UnMarkLTFldByFrmIdx
	.align	2
	.global	UnMarkLTFrmByFrmIdx
	.type	UnMarkLTFrmByFrmIdx, %function
UnMarkLTFrmByFrmIdx:
	.fnstart
.LFB1378:
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
	movw	r3, #26628	@ tmp139,
	ldr	r2, [r0, r3]	@ D.35677, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ D.35677,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r3, #26552	@ tmp140,
	ldr	r3, [r0, r3]	@ D.35673, <variable>.DPB.fs_ltref
	ldr	ip, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1856	@,
	tst	r2, #1	@ D.35677,
	add	ip, r0, #26368	@ tmp143, pH264Ctx,
	add	r4, ip, #188	@ ivtmp.5228, tmp143,
	mov	r5, #0	@ i,
	bne	.L1858	@,
	ldr	r3, [r4, #0]	@ D.35673, <variable>.DPB.fs_ltref
	add	r4, ip, #192	@ ivtmp.5228, tmp143,
	mov	r5, #1	@ i,
	ldr	ip, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1858	@,
.L1856:
	mov	r1, r3	@, D.35673
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1859:
	ldr	r3, [ip], #4	@ D.35673, <variable>.DPB.fs_ltref
	ldr	r6, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1856	@,
	ldr	r3, [r4, #4]	@ D.35673, <variable>.DPB.fs_ltref
	add	r4, ip, #4	@ ivtmp.5228, tmp148,
	ldr	ip, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1856	@,
.L1858:
	add	r3, r5, #1	@ tmp147, i,
	mov	ip, r4	@ tmp148, ivtmp.5228
	cmp	r2, r3	@ D.35677, tmp147
	add	r5, r3, #1	@ i, tmp147,
	bhi	.L1859	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	UnMarkLTFrmByFrmIdx, .-UnMarkLTFrmByFrmIdx
	.align	2
	.global	MarkCurrPicLT
	.type	MarkCurrPicLT, %function
MarkCurrPicLT:
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
	mov	r5, r2	@ long_term_frame_idx, long_term_frame_idx
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.36013, <variable>.structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.36013,
	beq	.L1874	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #472]	@, <variable>.frame_store
	bl	UnMarkLTFldByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #484]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1874:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #484]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MarkCurrPicLT, .-MarkCurrPicLT
	.align	2
	.global	MarkSTToLTRef
	.type	MarkSTToLTRef, %function
MarkSTToLTRef:
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
	mov	r5, r1	@ pCurrPic, pCurrPic
	ldrb	r1, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	mov	r7, r3	@ long_term_frame_idx, long_term_frame_idx
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ <variable>.structure,
	bne	.L1876	@,
	ldr	r3, [r5, #480]	@ <variable>.frame_num, <variable>.frame_num
	mov	r1, r7	@, long_term_frame_idx
	mvn	r4, r2	@ tmp144, difference_of_pic_nums_minus1
	add	r4, r4, r3	@ picNumX, tmp144, <variable>.frame_num
	bl	UnMarkLTFrmByFrmIdx	@
.L1877:
	mov	r0, r6	@, pH264Ctx
	mov	r1, r7	@, long_term_frame_idx
	mov	r2, r4	@, picNumX
	mov	r3, r5	@, pCurrPic
	bl	MarkPicLTRef	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1876:
	mov	ip, #26624	@ tmp150,
	ldr	r0, [r5, #480]	@ <variable>.frame_num, <variable>.frame_num
	ldr	lr, [r6, ip]	@ D.35982, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ D.35982,
	rsb	r4, r2, r0, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1877	@,
	add	r3, r6, #26368	@ ivtmp.5286, pH264Ctx,
	sub	r2, lr, #1	@ tmp162, D.35982,
	and	ip, r2, #1	@ tmp164, tmp162,
	ldr	r1, [r3, #120]!	@ D.35958, <variable>.DPB.fs_ref
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.35960, <variable>.is_reference
	tst	r2, #1	@ D.35960,
	beq	.L1883	@,
	ldr	r0, [r1, #500]	@ tmp175,
	bic	r0, r0, #-16777216	@ tmp176, tmp175,
	bic	r0, r0, #255	@ tmp176, tmp176,
	cmp	r0, #65536	@ tmp176,
	beq	.L1905	@,
.L1883:
	tst	r2, #2	@ D.35960,
	beq	.L1884	@,
	ldr	r2, [r1, #536]	@ tmp179,
	bic	r0, r2, #-16777216	@ tmp180, tmp179,
	bic	r2, r0, #255	@ tmp180, tmp180,
	cmp	r2, #65536	@ tmp180,
	beq	.L1906	@,
.L1884:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, D.35982
	add	r3, r3, #4	@ ivtmp.5286, ivtmp.5286,
	bcs	.L1877	@,
	cmp	ip, #0	@ tmp164,
	beq	.L1880	@,
	ldr	r1, [r3, #0]	@ D.35958, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.35960, <variable>.is_reference
	tst	r0, #1	@ D.35960,
	bne	.L1895	@,
.L1890:
	tst	r0, #2	@ D.35960,
	beq	.L1891	@,
	ldr	r0, [r1, #536]	@ tmp195,
	bic	ip, r0, #-16777216	@ tmp196, tmp195,
	bic	r0, ip, #255	@ tmp196, tmp196,
	cmp	r0, #65536	@ tmp196,
	beq	.L1907	@,
.L1891:
	add	r2, r2, #1	@ i, tmp165,
	add	r3, r3, #4	@ ivtmp.5286, tmp166,
	cmp	r2, lr	@ i, D.35982
	bcs	.L1877	@,
.L1880:
	ldr	r1, [r3, #0]	@ D.35958, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.35960, <variable>.is_reference
	tst	r0, #1	@ D.35960,
	beq	.L1878	@,
	ldr	ip, [r1, #500]	@ tmp155,
	bic	ip, ip, #-16777216	@ tmp153, tmp155,
	bic	ip, ip, #255	@ tmp153, tmp153,
	cmp	ip, #65536	@ tmp153,
	beq	.L1908	@,
.L1878:
	tst	r0, #2	@ D.35960,
	beq	.L1879	@,
	ldr	r0, [r1, #536]	@ tmp160,
	bic	ip, r0, #-16777216	@ tmp158, tmp160,
	bic	r0, ip, #255	@ tmp158, tmp158,
	cmp	r0, #65536	@ tmp158,
	beq	.L1909	@,
.L1879:
	ldr	r1, [r3, #4]	@ D.35958, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp165, i,
	add	r3, r3, #4	@ tmp166, ivtmp.5286,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.35960, <variable>.is_reference
	tst	r0, #1	@ D.35960,
	beq	.L1890	@,
.L1895:
	ldr	ip, [r1, #500]	@ tmp191,
	bic	ip, ip, #-16777216	@ tmp192, tmp191,
	bic	ip, ip, #255	@ tmp192, tmp192,
	cmp	ip, #65536	@ tmp192,
	bne	.L1890	@,
	ldr	ip, [r1, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1890	@,
.L1896:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #1	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1877	@
.L1907:
	ldr	ip, [r1, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1891	@,
.L1897:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #2	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1877	@
.L1908:
	ldr	ip, [r1, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1878	@,
	b	.L1896	@
.L1909:
	ldr	ip, [r1, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1879	@,
	b	.L1897	@
.L1905:
	ldr	r0, [r1, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r0, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1883	@,
	b	.L1896	@
.L1906:
	ldr	r0, [r1, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1884	@,
	b	.L1897	@
	.fnend
	.size	MarkSTToLTRef, .-MarkSTToLTRef
	.align	2
	.global	UnMarkSTRef
	.type	UnMarkSTRef, %function
UnMarkSTRef:
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
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r0, #0	@ <variable>.structure,
	bne	.L1911	@,
	mov	ip, #26624	@ tmp158,
	ldr	r1, [r1, #480]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, ip]	@ temp.5351, <variable>.DPB.ref_frames_in_buffer
	mvn	r2, r2	@ tmp156, difference_of_pic_nums_minus1
	add	ip, r2, r1	@ picNumX.5352, tmp156, <variable>.frame_num
	cmp	r6, #0	@ temp.5351,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, #26368	@ ivtmp.5325, pH264Ctx,
	sub	r1, r6, #1	@ tmp256, temp.5351,
	and	r4, r1, #1	@ tmp258, tmp256,
	ldr	r1, [r2, #120]!	@ D.35725, <variable>.DPB.fs_ref
	ldr	r0, [r1, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, ip	@ <variable>.frame.pic_num, picNumX.5352
	beq	.L1955	@,
.L1925:
	mov	r0, #1	@ i.5333,
	cmp	r0, r6	@ i.5333, temp.5351
	add	r2, r2, #4	@ ivtmp.5325, ivtmp.5325,
	ldmcsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r4, #0	@ tmp258,
	beq	.L1916	@,
	ldr	r1, [r2, #0]	@ D.35725, <variable>.DPB.fs_ref
	ldr	r4, [r1, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5352
	beq	.L1956	@,
.L1927:
	add	r0, r0, #1	@ i.5333, i.5333,
	add	r2, r2, #4	@ ivtmp.5325, ivtmp.5325,
	cmp	r0, r6	@ i.5333, temp.5351
	bcc	.L1916	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1915:
	ldr	r1, [r2, #4]	@ D.35725, <variable>.DPB.fs_ref
	ldr	r2, [r1, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5352
	beq	.L1957	@,
.L1930:
	add	r0, r0, #1	@ i.5333, tmp259,
	add	r2, r5, #4	@ ivtmp.5325, tmp260,
	cmp	r0, r6	@ i.5333, temp.5351
	bcs	.L1958	@,
.L1916:
	ldr	r1, [r2, #0]	@ D.35725, <variable>.DPB.fs_ref
	add	r0, r0, #1	@ tmp259, i.5333,
	add	r5, r2, #4	@ tmp260, ivtmp.5325,
	ldr	r4, [r1, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5352
	bne	.L1915	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1915	@,
	ldr	r4, [r1, #464]	@ tmp169,
	bic	r4, r4, #-16777216	@ tmp167, tmp169,
	bic	r4, r4, #255	@ tmp167, tmp167,
	cmp	r4, #65536	@ tmp167,
	beq	.L1948	@,
	ldr	r1, [r2, #4]	@ D.35725, <variable>.DPB.fs_ref
	ldr	r2, [r1, #476]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5352
	bne	.L1930	@,
.L1957:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #3	@ <variable>.is_reference,
	bne	.L1930	@,
	ldr	r2, [r1, #464]	@ tmp284,
	bic	r2, r2, #-16777216	@ tmp285, tmp284,
	bic	r2, r2, #255	@ tmp285, tmp285,
	cmp	r2, #65536	@ tmp285,
	beq	.L1948	@,
	add	r0, r0, #1	@ i.5333, tmp259,
	add	r2, r5, #4	@ ivtmp.5325, tmp260,
	cmp	r0, r6	@ i.5333, temp.5351
	bcc	.L1916	@,
.L1958:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1911:
	mov	r0, #26624	@ tmp163,
	ldr	r7, [r1, #480]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, r0]	@ D.35736, <variable>.DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.35736,
	rsb	r7, r2, r7, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, #26368	@ ivtmp.5330, pH264Ctx,
	sub	ip, r6, #1	@ tmp261, D.35736,
	and	r5, ip, #1	@ tmp263, tmp261,
	mov	ip, #0	@ i,
	ldr	r0, [r2, #120]!	@ temp.5334, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5335, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5335,
	beq	.L1932	@,
	ldr	r8, [r0, #500]	@ tmp286,
	bic	r8, r8, #-16777216	@ tmp287, tmp286,
	bic	r8, r8, #255	@ tmp287, tmp287,
	cmp	r8, #65536	@ tmp287,
	beq	.L1959	@,
.L1932:
	tst	r1, #2	@ temp.5335,
	beq	.L1933	@,
	ldr	r1, [r0, #536]	@ tmp290,
	bic	r1, r1, #-16777216	@ tmp291, tmp290,
	bic	r1, r1, #255	@ tmp291, tmp291,
	cmp	r1, #65536	@ tmp291,
	beq	.L1960	@,
.L1933:
	mov	ip, #1	@ i,
	cmp	r6, ip	@ D.35736, i
	add	r2, r2, #4	@ ivtmp.5330, ivtmp.5330,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r5, #0	@ tmp263,
	beq	.L1921	@,
	ldr	r0, [r2, #0]	@ temp.5334, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5335, <variable>.is_reference
	ands	r4, r1, ip	@ tmp254, temp.5335,
	beq	.L1935	@,
	ldr	r5, [r0, #500]	@ tmp293,
	bic	r5, r5, #-16777216	@ tmp294, tmp293,
	bic	r5, r5, #255	@ tmp294, tmp294,
	cmp	r5, #65536	@ tmp294,
	beq	.L1961	@,
.L1935:
	tst	r1, #2	@ temp.5335,
	beq	.L1936	@,
	ldr	r1, [r0, #536]	@ tmp297,
	bic	r1, r1, #-16777216	@ tmp298, tmp297,
	bic	r1, r1, #255	@ tmp298, tmp298,
	cmp	r1, #65536	@ tmp298,
	beq	.L1962	@,
.L1936:
	add	ip, ip, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.5330, ivtmp.5330,
	cmp	r6, ip	@ D.35736, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r0, [r2, #0]	@ temp.5334, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5335, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5335,
	bne	.L1963	@,
.L1917:
	tst	r1, #2	@ temp.5335,
	beq	.L1919	@,
	ldr	r1, [r0, #536]	@ tmp215,
	bic	r1, r1, #-16777216	@ tmp213, tmp215,
	bic	r1, r1, #255	@ tmp213, tmp213,
	cmp	r1, #65536	@ tmp213,
	beq	.L1964	@,
.L1919:
	ldr	r0, [r2, #4]	@ temp.5334, <variable>.DPB.fs_ref
	add	ip, ip, #1	@ i, i,
	add	r2, r2, #4	@ tmp265, ivtmp.5330,
	mov	r8, ip	@ tmp264, i
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5335, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5335,
	beq	.L1939	@,
	ldr	r5, [r0, #500]	@ tmp300,
	bic	r5, r5, #-16777216	@ tmp301, tmp300,
	bic	r5, r5, #255	@ tmp301, tmp301,
	cmp	r5, #65536	@ tmp301,
	beq	.L1965	@,
.L1939:
	tst	r1, #2	@ temp.5335,
	beq	.L1940	@,
	ldr	r1, [r0, #536]	@ tmp304,
	bic	r1, r1, #-16777216	@ tmp305, tmp304,
	bic	r1, r1, #255	@ tmp305, tmp305,
	cmp	r1, #65536	@ tmp305,
	beq	.L1966	@,
.L1940:
	add	ip, r8, #1	@ i, tmp264,
	add	r2, r2, #4	@ ivtmp.5330, tmp265,
	cmp	r6, ip	@ D.35736, i
	bls	.L1967	@,
.L1921:
	ldr	r0, [r2, #0]	@ temp.5334, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5335, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5335,
	beq	.L1917	@,
.L1963:
	ldr	r5, [r0, #500]	@ tmp174,
	bic	r5, r5, #-16777216	@ tmp172, tmp174,
	bic	r5, r5, #255	@ tmp172, tmp172,
	cmp	r5, #65536	@ tmp172,
	bne	.L1917	@,
	ldr	r5, [r0, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1917	@,
.L1949:
	add	r2, ip, #6592	@ tmp255, i,
	and	r1, r1, #2	@ tmp176, temp.5335,
	add	r2, r2, #30	@ tmp255, tmp255,
	strb	r1, [r0, #2]	@ tmp176, <variable>.is_reference
	mov	r1, #0	@ tmp181,
	ldr	r0, [r3, r2, asl #2]	@ tmp180, <variable>.DPB.fs_ref
	strb	r1, [r0, #502]	@ tmp181, <variable>.top_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5336, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #464]	@ zero_extendqisi2	@ D.35751, <variable>.frame.structure
	cmp	ip, #3	@ D.35751,
	cmpne	ip, r1	@, D.35751,
	bne	.L1920	@,
.L1953:
	strb	r1, [r0, #466]	@ tmp222, <variable>.frame.is_short_term
	ldr	ip, [r3, r2, asl #2]	@ tmp237, <variable>.DPB.fs_ref
	strb	r1, [ip, #465]	@ tmp222, <variable>.frame.is_long_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5312, <variable>.DPB.fs_ref
.L1920:
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	ip, [r0, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	movw	r0, #55520	@ tmp247,
	ldr	lr, [r3, r2, asl #2]	@ tmp251, <variable>.DPB.fs_ref
	mov	r2, r1	@, <variable>.is_reference
	add	ip, ip, #13440	@ tmp243, <variable>.pmv_address_idc,
	ldr	r0, [r3, r0]	@, <variable>.ChanID
	add	ip, ip, #42	@ tmp243, tmp243,
	str	r1, [r3, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1964:
	ldr	r1, [r0, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1919	@,
.L1950:
	add	r2, ip, #6592	@ tmp274, i,
	strb	r4, [r0, #2]	@ tmp254, <variable>.is_reference
	add	r2, r2, #30	@ tmp274, tmp274,
	mov	r1, #0	@ tmp222,
	ldr	r0, [r3, r2, asl #2]	@ tmp221, <variable>.DPB.fs_ref
	strb	r1, [r0, #538]	@ tmp222, <variable>.bottom_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5312, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #464]	@ zero_extendqisi2	@ D.35773, <variable>.frame.structure
	cmp	ip, #3	@ D.35773,
	cmpne	ip, r1	@, D.35773,
	bne	.L1920	@,
	b	.L1953	@
.L1965:
	ldr	r5, [r0, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1939	@,
	b	.L1949	@
.L1966:
	ldr	r1, [r0, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	beq	.L1950	@,
	add	ip, r8, #1	@ i, tmp264,
	add	r2, r2, #4	@ ivtmp.5330, tmp265,
	cmp	r6, ip	@ D.35736, i
	bhi	.L1921	@,
.L1967:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1959:
	ldr	r8, [r0, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r8, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1932	@,
	b	.L1949	@
.L1960:
	ldr	r1, [r0, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1933	@,
	b	.L1950	@
.L1961:
	ldr	r5, [r0, #512]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1935	@,
	b	.L1949	@
.L1962:
	ldr	r1, [r0, #548]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1936	@,
	b	.L1950	@
.L1955:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1925	@,
	ldr	r0, [r1, #464]	@ tmp277,
	bic	r0, r0, #-16777216	@ tmp278, tmp277,
	bic	r0, r0, #255	@ tmp278, tmp278,
	cmp	r0, #65536	@ tmp278,
	bne	.L1925	@,
.L1948:
	mov	r0, r3	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1956:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1927	@,
	ldr	r4, [r1, #464]	@ tmp281,
	bic	r4, r4, #-16777216	@ tmp282, tmp281,
	bic	r4, r4, #255	@ tmp282, tmp282,
	cmp	r4, #65536	@ tmp282,
	bne	.L1927	@,
	b	.L1948	@
	.fnend
	.size	UnMarkSTRef, .-UnMarkSTRef
	.align	2
	.global	ClearAll
	.type	ClearAll, %function
ClearAll:
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
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r4, r1	@ flag, flag
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L1969	@,
	movw	r3, #55520	@ tmp156,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
.L1970:
	add	r7, r5, #27392	@ tmp162, pH264Ctx,
	mov	r2, #0	@,
	add	r9, r7, #108	@ ivtmp.5423, tmp162,
	add	sl, r7, #104	@ ivtmp.5420, tmp162,
	add	r8, r7, #116	@ ivtmp.5421, tmp162,
	add	r7, r7, #112	@ ivtmp.5422, tmp162,
	mov	r6, r2	@ i,
	mov	r4, r2	@ tmp322, i
	str	r2, [fp, #-48]	@, %sfp
.L1975:
	mov	r3, #624	@,
	ldr	r0, [fp, #-48]	@, %sfp
	mul	r2, r3, r6	@ tmp205,, i
	ldr	r1, [sl, #0]	@ temp.5431, <variable>.fs_image.p_usrdat
	add	ip, r5, r0	@ D.48588, pH264Ctx,
	add	lr, r0, r3	@,,
	cmp	r1, #0	@ temp.5431,
	str	lr, [fp, #-48]	@, %sfp
	add	r3, ip, #27648	@ tmp179, D.48588,
	add	lr, ip, #27392	@ tmp204, D.48588,
	add	r0, r2, #27136	@ tmp207, tmp205,
	add	r2, ip, #27136	@ tmp167, D.48588,
	add	ip, ip, #27904	@ tmp198, D.48588,
	add	r0, r0, #160	@ tmp207, tmp207,
	add	r0, r5, r0	@ D.35488, pH264Ctx, tmp207
	str	r6, [lr, #88]	@ i, <variable>.fs_image.image_id
	strb	r4, [r2, #164]	@ tmp322, <variable>.is_in_dpb
	mov	lr, #16	@,
	strb	r4, [r2, #160]	@ tmp322, <variable>.non_existing
	add	r6, r6, #1	@ i, i,
	str	lr, [ip, #8]	@, <variable>.apc_idc
	mov	lr, #2	@,
	strb	r4, [r2, #161]	@ tmp322, <variable>.is_used
	strb	lr, [r3, #184]	@, <variable>.bottom_field.structure
	mvn	lr, #0	@,
	strb	r4, [r2, #162]	@ tmp322, <variable>.is_reference
	mov	r2, #17	@,
	str	lr, [r3, #228]	@, <variable>.frame_num_wrap
	mov	lr, #1	@,
	str	r0, [r3, #116]	@ D.35488, <variable>.frame.frame_store
	str	r4, [r3, #232]	@ tmp322, <variable>.long_term_frame_idx
	str	r4, [r3, #224]	@ tmp322, <variable>.frame_num
	str	r4, [r3, #236]	@ tmp322, <variable>.poc
	str	lr, [r3, #244]	@, <variable>.is_displayed
	str	r2, [ip, #4]	@, <variable>.pmv_address_idc
	str	r0, [r3, #188]	@ D.35488, <variable>.bottom_field.frame_store
	str	r0, [r3, #152]	@ D.35488, <variable>.top_field.frame_store
	strb	r4, [r3, #112]	@ tmp322, <variable>.frame.structure
	strb	lr, [r3, #148]	@, <variable>.top_field.structure
	beq	.L1971	@,
	movw	ip, #55520	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [sl, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1971:
	ldr	r1, [r9, #0]	@ temp.5433, <variable>.fs_image.p_usrdat
	add	sl, sl, #624	@ ivtmp.5420, ivtmp.5420,
	cmp	r1, #0	@ temp.5433,
	beq	.L1972	@,
	movw	r2, #55520	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r9, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1972:
	ldr	r1, [r7, #0]	@ temp.5435, <variable>.fs_image.p_usrdat
	add	r9, r9, #624	@ ivtmp.5423, ivtmp.5423,
	cmp	r1, #0	@ temp.5435,
	beq	.L1973	@,
	movw	lr, #55520	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1973:
	ldr	r1, [r8, #0]	@ D.35492, <variable>.fs_image.p_usrdat
	add	r7, r7, #624	@ ivtmp.5422, ivtmp.5422,
	cmp	r1, #0	@ D.35492,
	beq	.L1974	@,
	movw	r3, #55520	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1974:
	cmp	r6, #40	@ i,
	add	r8, r8, #624	@ ivtmp.5421, ivtmp.5421,
	bne	.L1975	@,
	movw	r4, #52464	@ tmp239,
	ldr	r1, [r5, r4]	@ temp.5437, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5437,
	beq	.L1976	@,
	movw	r7, #55520	@ tmp240,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp243,
	str	r1, [r5, r4]	@ tmp243, <variable>.CurrPic.fs_image.p_usrdat
.L1976:
	movw	r4, #52468	@ tmp244,
	ldr	r1, [r5, r4]	@ temp.5439, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5439,
	beq	.L1977	@,
	movw	ip, #55520	@ tmp245,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp248,
	str	r0, [r5, r4]	@ tmp248, <variable>.CurrPic.fs_image.p_usrdat
.L1977:
	movw	r4, #52472	@ tmp249,
	ldr	r1, [r5, r4]	@ temp.5441, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5441,
	beq	.L1978	@,
	movw	lr, #55520	@ tmp250,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp253,
	str	r2, [r5, r4]	@ tmp253, <variable>.CurrPic.fs_image.p_usrdat
.L1978:
	movw	r4, #52476	@ tmp254,
	ldr	r1, [r5, r4]	@ D.35495, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.35495,
	beq	.L1979	@,
	movw	r7, #55520	@ tmp255,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp258,
	str	r3, [r5, r4]	@ tmp258, <variable>.CurrPic.fs_image.p_usrdat
.L1979:
	movw	r7, #54024	@ tmp259,
	ldr	r4, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r4, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1980	@,
	add	r8, r5, #54016	@ ivtmp.5392, pH264Ctx,
	mov	r6, #0	@ i.5430,
	add	r4, r8, #12	@ ivtmp.5392, ivtmp.5392,
	movw	sl, #55520	@ tmp319,
	mov	r8, r6	@ tmp320, i.5430
.L1982:
	ldr	r1, [r4, #0]	@ D.35498, <variable>.pUsrDatArray
	add	r6, r6, #1	@ i.5430, i.5430,
	cmp	r1, #0	@ D.35498,
	beq	.L1981	@,
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp320, <variable>.pUsrDatArray
.L1981:
	ldr	r1, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.5392, ivtmp.5392,
	cmp	r1, r6	@ <variable>.TotalUsrDatNum, i.5430
	bhi	.L1982	@,
.L1980:
	movw	lr, #54024	@ tmp267,
	mov	r4, #0	@ tmp268,
	movw	r3, #54004	@ tmp271,
	str	r4, [r5, lr]	@ tmp268, <variable>.TotalUsrDatNum
	movw	r2, #55444	@ tmp273,
	movw	ip, #55504	@ tmp275,
	movw	lr, #55452	@ tmp277,
	str	r4, [r5, r3]	@ tmp268, <variable>.AllowStartDec
	str	r4, [r5, r2]	@ tmp268, <variable>.SliceParaNum
	movw	r3, #54012	@ tmp279,
	str	r4, [r5, ip]	@ tmp268, <variable>.MaxBytesReceived
	movw	r2, #55528	@ tmp281,
	str	r4, [r5, lr]	@ tmp268, <variable>.IModeOutFlag
	mov	ip, #54016	@ tmp283,
	movw	lr, #26372	@ tmp286,
	str	r4, [r5, r3]	@ tmp268, <variable>.IDRFound
	str	r4, [r5, r2]	@ tmp268, <variable>.FirstFrameDisplayed
	movw	r3, #24368	@ tmp288,
	str	r4, [r5, ip]	@ tmp268, <variable>.PPicFound
	movw	r2, #22364	@ tmp291,
	str	r4, [r5, lr]	@ tmp268, <variable>.CurrMarkIdx
	movw	ip, #24369	@ tmp294,
	movw	lr, #22365	@ tmp297,
	add	r0, r5, #20480	@, pH264Ctx,
	movw	r1, #55496	@ tmp269,
	add	r0, r0, #192	@,,
	str	r4, [r5, r1]	@ tmp268, <variable>.IDRPicOfCurrPic
	mov	r1, #1648	@,
	strb	r4, [r5, r3]	@ tmp268, <variable>.is_valid
	strb	r4, [r5, ip]	@ tmp268, <variable>.no_output_of_prior_pics_flag
	strb	r4, [r5, r2]	@ tmp268, <variable>.is_valid
	strb	r4, [r5, lr]	@ tmp268, <variable>.no_output_of_prior_pics_flag
	str	r4, [r5, #368]	@ tmp268, <variable>.pCurrNal
	bl	__memzero	@
	movw	r3, #52256	@ tmp308,
	movw	r2, #20672	@ tmp302,
	strb	r4, [r5, r3]	@ tmp268, <variable>.CurrPic.state
	movw	r0, #53348	@ tmp316,
	movw	r1, #53344	@ tmp311,
	mov	ip, #2	@ tmp303,
	movw	r3, #20677	@ tmp305,
	strb	ip, [r5, r2]	@ tmp303, <variable>.CurrSlice.slice_type
	movw	r2, #53352	@ tmp314,
	str	r4, [r5, r0]	@ tmp268, <variable>.PrevPic.nal_ref_idc
	mov	ip, #256	@ tmp315,
	strb	r4, [r5, r1]	@ tmp268, <variable>.PrevPic.structure
	mov	r0, r4	@, tmp268
	mov	r1, #1	@ tmp306,
	str	ip, [r5, r2]	@ tmp315, <variable>.PrevPic.frame_num
	strb	r1, [r5, r3]	@ tmp306, <variable>.CurrSlice.new_pic_flag
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1969:
	add	r0, r5, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	movw	r1, #55520	@ tmp160,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	FSP_EmptyInstance	@
	b	.L1970	@
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
.LFB1498:
	@ args = 0, pretend = 0, frame = 16
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
	movw	r3, #53996	@ tmp156,
	ldr	r3, [r0, r3]	@ D.43456, <variable>.TotalFsNum
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ D.43456,
	beq	.L1987	@,
	add	r6, r0, #27136	@ ivtmp.5490, pH264Ctx,
	add	sl, r0, #26368	@ ivtmp.5482, pH264Ctx,
	add	r6, r6, #161	@ ivtmp.5490, ivtmp.5490,
	add	sl, sl, #60	@ ivtmp.5482, ivtmp.5482,
	mov	r7, #0	@ i,
	movw	r9, #26424	@ tmp212,
	mov	r8, r6	@ ivtmp.5487, ivtmp.5490
.L1994:
	ldrb	r0, [r8, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1988	@,
	mov	r2, #624	@,
	mul	lr, r2, r7	@ tmp159,, i
	add	r1, lr, #27136	@ tmp161, tmp159,
	add	ip, r1, #160	@ tmp161, tmp161,
	adds	ip, r4, ip	@ D.43466, pH264Ctx, tmp161
	beq	.L1989	@,
	movw	r1, #26620	@,
	ldr	lr, [r4, r1]	@ D.43688, <variable>.DPB.used_size
	cmp	lr, #0	@ D.43688,
	beq	.L1989	@,
	ldr	r2, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r2	@ D.43466, <variable>.DPB.fs
	beq	.L1988	@,
	tst	lr, #1	@ D.43688,
	mov	r1, sl	@ ivtmp.5482, ivtmp.5482
	bne	.L1990	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.43688
	bcs	.L1989	@,
	mov	r1, sl	@ ivtmp.5482, ivtmp.5482
	ldr	r2, [r1], #4	@ D.43689, <variable>.DPB.fs
	cmp	ip, r2	@ D.43466, D.43689
	bne	.L1990	@,
	b	.L1988	@
.L1991:
	ldr	r5, [r2], #4	@ D.43689, <variable>.DPB.fs
	cmp	ip, r5	@ D.43466, D.43689
	beq	.L1988	@,
	ldr	r5, [r1, #4]	@ D.43689, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5482, tmp224,
	cmp	ip, r5	@ D.43466, D.43689
	beq	.L1988	@,
.L1990:
	add	r0, r0, #1	@ tmp225, i,
	mov	r2, r1	@ tmp224, ivtmp.5482
	cmp	r0, lr	@ tmp225, D.43688
	add	r0, r0, #1	@ i, tmp225,
	bcc	.L1991	@,
.L1989:
	movw	r5, #55520	@ tmp167,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L1987	@,
	cmn	r0, #1	@ ret,
	beq	.L2022	@,
.L1992:
	mov	r0, #0	@ D.43459,
.L1993:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1988:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #624	@ ivtmp.5487, ivtmp.5487,
	cmp	r3, r7	@ D.43456, i
	bhi	.L1994	@,
	sub	r2, fp, #52	@,,
	add	r0, r4, #8	@, pH264Ctx,
	sub	r1, fp, #48	@,,
	movw	r7, #53996	@ tmp176,
	bl	GetQueueImgNum	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r3, #0	@ <variable>.TotalFsNum,
	beq	.L1995	@,
	add	r8, r4, #26368	@, pH264Ctx,
	add	r5, r8, #60	@,,
	movw	r8, #26424	@ tmp205,
	str	r5, [fp, #-56]	@, %sfp
	mov	r5, #0	@ i.5496,
.L2001:
	mov	lr, #624	@,
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ temp.5494, <variable>.is_used
	mul	r0, lr, r5	@ tmp178,, i.5496
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ D.43481, <variable>.is_in_dpb
	add	r1, r0, #27136	@ tmp180, tmp178,
	add	ip, r1, #160	@ tmp180, tmp180,
	adds	ip, r4, ip	@ temp.5495, pH264Ctx, tmp180
	beq	.L1996	@,
	movw	r2, #26620	@,
	ldr	r9, [r4, r2]	@ D.43695, <variable>.DPB.used_size
	cmp	r9, #0	@ D.43695,
	beq	.L1996	@,
	ldr	r1, [r4, r8]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r1	@ temp.5495, <variable>.DPB.fs
	beq	.L1997	@,
	tst	r9, #1	@ D.43695,
	ldr	r1, [fp, #-56]	@ ivtmp.5471, %sfp
	mov	r0, #0	@ i,
	bne	.L1998	@,
	mov	r0, #1	@ i,
	cmp	r0, r9	@ i, D.43695
	bcs	.L1996	@,
	ldr	r1, [fp, #-56]	@ ivtmp.5471, %sfp
	ldr	r2, [r1], #4	@ D.43696, <variable>.DPB.fs
	cmp	ip, r2	@ temp.5495, D.43696
	bne	.L1998	@,
	b	.L1997	@
.L1999:
	ldr	sl, [r2], #4	@ D.43696, <variable>.DPB.fs
	cmp	ip, sl	@ temp.5495, D.43696
	beq	.L1997	@,
	ldr	sl, [r1, #4]	@ D.43696, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5471, tmp219,
	cmp	ip, sl	@ temp.5495, D.43696
	beq	.L1997	@,
.L1998:
	add	r0, r0, #1	@ tmp220, i,
	mov	r2, r1	@ tmp219, ivtmp.5471
	cmp	r0, r9	@ tmp220, D.43695
	add	r0, r0, #1	@ i, tmp220,
	bcc	.L1999	@,
.L1996:
	mov	ip, #1	@ D.43694,
.L2000:
	mov	r2, r5	@, i.5496
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	str	lr, [sp, #0]	@ D.43481,
	add	r5, r5, #1	@ i.5496, i.5496,
	str	ip, [sp, #4]	@ D.43694,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r6, r6, #624	@ ivtmp.5490, ivtmp.5490,
	cmp	r3, r5	@ <variable>.TotalFsNum, i.5496
	bhi	.L2001	@,
.L1995:
	ldr	r2, [fp, #-48]	@, ReadImgNum
	mov	r0, #0	@,
	ldr	r3, [fp, #-52]	@, NewImgNum
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	movw	r1, #53996	@ tmp194,
	ldr	r0, [r4, r1]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	movw	r2, #26620	@ tmp197,
	ldr	r3, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r1, [fp, #-52]	@ NewImgNum, NewImgNum
	sub	ip, r0, #2	@ tmp195, <variable>.TotalFsNum,
	ldr	r2, [fp, #-48]	@ ReadImgNum, ReadImgNum
	rsb	r0, r3, ip	@ tmp198, <variable>.DPB.used_size, tmp195
	add	ip, r1, r2	@ tmp191, NewImgNum, ReadImgNum
	cmp	ip, r0	@ tmp191, tmp198
	bge	.L1992	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.43459,
	b	.L1993	@
.L1997:
	mov	ip, #0	@ D.43694,
	b	.L2000	@
.L1987:
	mov	r0, #1	@ D.43459,
	b	.L1993	@
.L2022:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #8	@, pH264Ctx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.43459,
	b	.L1993	@
	.fnend
	.size	H264DEC_GetImageBuffer, .-H264DEC_GetImageBuffer
	.align	2
	.global	H264DEC_Init
	.type	H264DEC_Init, %function
H264DEC_Init:
	.fnstart
.LFB1493:
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
	ldr	r6, [r0, #352]	@ D.43183, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #55560	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pH264Ctx,
	str	r6, [r4, #352]	@ D.43183, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r0, #0	@ tmp149,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	r0, [r4, #364]	@ tmp149, <variable>.StartMode
	str	r0, [r4, #360]	@ tmp149, <variable>.pH264DecParam
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L2035	@,
	movw	r0, #13572	@ tmp158,
	movw	ip, #13576	@ tmp160,
	mov	r2, #13568	@ tmp162,
	mov	lr, #32	@ tmp159,
	mov	r1, #256	@ tmp161,
	mov	r6, #136	@ tmp163,
	str	lr, [r4, r0]	@ tmp159, <variable>.MaxSpsNum
	str	r1, [r4, ip]	@ tmp161, <variable>.MaxPpsNum
	str	r6, [r4, r2]	@ tmp163, <variable>.MaxSliceNum
.L2025:
	ldr	r0, [r5, #504]	@, <variable>.s32ContextMemAddr
	movw	r6, #13584	@ tmp172,
	bl	MEM_Phy2Vir	@
	movw	r2, #13572	@ tmp168,
	ldr	r1, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	ip, #3992	@ tmp171,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #13576	@ tmp173,
	ldr	r3, [r4, r3]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	lr, #55440	@ tmp177,
	mul	r1, ip, r1	@ tmp169, tmp171, <variable>.MaxSpsNum
	ldr	r2, [r2, #500]	@ <variable>.s32BasicCtxSize, <variable>.s32BasicCtxSize
	movw	ip, #13580	@ tmp167,
	add	r0, r0, r2	@ D.43204,, <variable>.s32BasicCtxSize
	str	r0, [r4, ip]	@ D.43204, <variable>.SPS
	add	ip, r0, r1	@ prephitmp.5531, D.43204, tmp169
	mov	r2, #2208	@ tmp176,
	cmp	r0, #0	@ D.43204,
	str	ip, [r4, r6]	@ prephitmp.5531, <variable>.PPS
	mla	r2, r2, r3, ip	@ D.43216, tmp176, <variable>.MaxPpsNum, prephitmp.5531
	str	r2, [r4, lr]	@ D.43216, <variable>.DecSlicePara
	beq	.L2026	@,
	cmp	ip, #0	@ prephitmp.5531,
	beq	.L2026	@,
	cmp	r2, #0	@ D.43216,
	beq	.L2026	@,
	ldr	lr, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	lr, #0	@ <variable>.s32KeepSPSPPS,
	beq	.L2036	@,
.L2030:
	mov	r5, #13568	@ tmp195,
	movw	r0, #4060	@ tmp197,
	ldr	r1, [r4, r5]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	movw	r2, #13572	@ tmp192,
	ldr	ip, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	lr, #17604	@ tmp190,
	str	r3, [r4, lr]	@ prephitmp.5529, <variable>.CurrPPS.pic_parameter_set_id
	movw	r5, #55440	@ tmp194,
	mul	r1, r0, r1	@ __n, tmp197, <variable>.MaxSliceNum
	movw	r3, #14332	@ tmp191,
	str	ip, [r4, r3]	@ <variable>.MaxSpsNum, <variable>.CurrSPS.seq_parameter_set_id
	ldr	r0, [r4, r5]	@ __p, <variable>.DecSlicePara
	cmp	r1, #0	@ __n,
	bne	.L2037	@,
.L2032:
	movw	ip, #55508	@ tmp199,
	movw	r1, #55448	@ tmp198,
	ldr	r2, [r4, ip]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	movw	lr, #55464	@ tmp203,
	movw	r3, #53996	@ tmp219,
	movw	r0, #55468	@ tmp205,
	ubfx	r5, r2, #16, #2	@ tmp202, <variable>.advanced_cfg,,
	mov	ip, #40	@ tmp220,
	str	r5, [r4, r1]	@ tmp202, <variable>.OldDecMode
	movw	r2, #54000	@ tmp221,
	mov	r5, #0	@ tmp204,
	str	ip, [r4, r3]	@ tmp220, <variable>.TotalFsNum
	str	r5, [r4, lr]	@ tmp204, <variable>.TotalNal
	movw	r3, #55472	@ tmp207,
	movw	lr, #54020	@ tmp243,
	str	r5, [r4, r0]	@ tmp204, <variable>.TotalSPS
	mov	r1, #17	@ tmp222,
	mov	r0, #25	@ tmp244,
	str	r1, [r4, r2]	@ tmp222, <variable>.TotalPmvNum
	movw	ip, #55476	@ tmp209,
	str	r0, [r4, lr]	@ tmp244, <variable>.frame_rate
	movw	r2, #55480	@ tmp211,
	str	r5, [r4, r3]	@ tmp204, <variable>.TotalPPS
	movw	r1, #55484	@ tmp213,
	movw	lr, #55488	@ tmp215,
	movw	r3, #55492	@ tmp217,
	str	r5, [r4, ip]	@ tmp204, <variable>.TotalSlice
	movw	ip, #55456	@ tmp223,
	str	r5, [r4, r2]	@ tmp204, <variable>.SeqCnt
	movw	r2, #54024	@ tmp225,
	str	r5, [r4, r1]	@ tmp204, <variable>.TotalPicNum
	movw	r1, #54028	@ tmp227,
	str	r5, [r4, lr]	@ tmp204, <variable>.TotalFrameNum
	movw	lr, #54032	@ tmp229,
	str	r5, [r4, r3]	@ tmp204, <variable>.TotalFieldNum
	movw	r3, #54036	@ tmp231,
	str	r5, [r4, r1]	@ tmp204, <variable>.pUsrDatArray
	movw	r1, #54012	@ tmp237,
	str	r5, [r4, lr]	@ tmp204, <variable>.pUsrDatArray
	movw	lr, #55528	@ tmp239,
	str	r5, [r4, r3]	@ tmp204, <variable>.pUsrDatArray
	mov	r3, #54016	@ tmp241,
	str	r5, [r4, ip]	@ tmp204, <variable>.MutexHold
	movw	ip, #54040	@ tmp233,
	str	r5, [r4, r2]	@ tmp204, <variable>.TotalUsrDatNum
	movw	r2, #54004	@ tmp235,
	str	r5, [r4, ip]	@ tmp204, <variable>.pUsrDatArray
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r2]	@ tmp204, <variable>.AllowStartDec
	str	r5, [r4, r1]	@ tmp204, <variable>.IDRFound
	str	r5, [r4, lr]	@ tmp204, <variable>.FirstFrameDisplayed
	str	r5, [r4, r3]	@ tmp204, <variable>.PPicFound
	bl	VCTRL_GetChanIDByCtx	@
	movw	ip, #55520	@ tmp245,
	cmn	r0, #1	@ D.43251,
	str	r0, [r4, ip]	@ D.43251, <variable>.ChanID
	beq	.L2038	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp204
	bl	ClearAll	@
	mov	r0, #1	@ D.43223,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2036:
	cmp	r1, #0	@ tmp169,
	bne	.L2039	@,
.L2031:
	movw	r5, #13576	@ tmp187,
	mov	r0, #2208	@ tmp188,
	ldr	r3, [r4, r5]	@ prephitmp.5529, <variable>.MaxPpsNum
	mul	r1, r0, r3	@ __n, tmp188, prephitmp.5529
	cmp	r1, #0	@ __n,
	beq	.L2030	@,
	mov	r0, ip	@, prephitmp.5531
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5529, <variable>.MaxPpsNum
	b	.L2030	@
.L2037:
	bl	__memzero	@
	b	.L2032	@
.L2035:
	ldr	r0, [r5, #576]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.stChanOption.s32MaxSpsNum
	movw	r3, #13572	@ tmp152,
	movw	lr, #13576	@ tmp154,
	mov	r1, #13568	@ tmp156,
	str	r0, [r4, r3]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.MaxSpsNum
	ldr	ip, [r5, #580]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.stChanOption.s32MaxPpsNum
	str	ip, [r4, lr]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.MaxPpsNum
	ldr	r2, [r5, #572]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.stChanOption.s32MaxSliceNum
	str	r2, [r4, r1]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.MaxSliceNum
	b	.L2025	@
.L2039:
	bl	__memzero	@
	ldr	ip, [r4, r6]	@ prephitmp.5531, <variable>.PPS
	b	.L2031	@
.L2026:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC67	@,
	ldr	r2, .L2040	@,
	movt	r1, #:upper16:.LC67	@,
	movw	r3, #11227	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.43223,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2038:
	mov	r0, r5	@, tmp204
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.43223,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2041:
	.align	2
.L2040:
	.word	.LANCHOR0+136
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
	.fnstart
.LFB1443:
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
	movw	r3, #20673	@ tmp160,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	str	r1, [fp, #-52]	@ IsDecGap, %sfp
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L2084	@,
	movw	r0, #20674	@ tmp162,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@,
	moveq	r3, #1	@,
.L2084:
	movw	r2, #55448	@ tmp164,
	str	r3, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	beq	.L2050	@,
	ldr	r3, [fp, #-48]	@, %sfp
	movw	ip, #52257	@ tmp169,
	mov	r5, #0	@ tmp170,
	strb	r5, [r4, ip]	@ tmp170, <variable>.CurrPic.field_pair_flag
	cmp	r3, #2	@,
	beq	.L2089	@,
	ldr	r2, [fp, #-48]	@, %sfp
	cmp	r2, #1	@,
	beq	.L2090	@,
.L2050:
	mov	r2, #0	@ tmp209,
	movw	r3, #52257	@ tmp208,
.L2085:
	strb	r2, [r4, r3]	@ tmp209, <variable>.CurrPic.field_pair_flag
.L2047:
	movw	r3, #53996	@ tmp214,
	mov	r5, #0	@ tmp212,
	ldr	r7, [r4, r3]	@ D.38952, <variable>.TotalFsNum
	movw	lr, #52256	@ tmp211,
	strb	r5, [r4, lr]	@ tmp212, <variable>.CurrPic.state
	cmp	r7, r5	@ D.38952,
	beq	.L2057	@,
	add	r6, r4, #27136	@ ivtmp.5589, pH264Ctx,
	add	r8, r4, #26368	@ ivtmp.5584, pH264Ctx,
	add	r6, r6, #161	@ ivtmp.5589, ivtmp.5589,
	add	r8, r8, #60	@ ivtmp.5584, ivtmp.5584,
	mov	sl, #624	@ tmp366,
	movw	r9, #26424	@ tmp368,
.L2063:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L2058	@,
	mul	r1, sl, r5	@ tmp217, tmp366, i
	add	r2, r1, #27136	@ tmp219, tmp217,
	add	ip, r2, #160	@ tmp219, tmp219,
	adds	r3, r4, ip	@ D.38948, pH264Ctx, tmp219
	beq	.L2059	@,
	movw	ip, #26620	@,
	ldr	lr, [r4, ip]	@ D.43702, <variable>.DPB.used_size
	cmp	lr, #0	@ D.43702,
	beq	.L2059	@,
	ldr	r2, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r3, r2	@ D.38948, <variable>.DPB.fs
	beq	.L2058	@,
	tst	lr, #1	@ D.43702,
	mov	r1, r8	@ ivtmp.5584, ivtmp.5584
	bne	.L2060	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.43702
	bcs	.L2059	@,
	mov	r1, r8	@ ivtmp.5584, ivtmp.5584
	ldr	ip, [r1], #4	@ D.43703, <variable>.DPB.fs
	cmp	r3, ip	@ D.38948, D.43703
	bne	.L2060	@,
	b	.L2058	@
.L2061:
	ldr	ip, [r2], #4	@ D.43703, <variable>.DPB.fs
	cmp	r3, ip	@ D.38948, D.43703
	beq	.L2058	@,
	ldr	ip, [r1, #4]	@ D.43703, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5584, tmp375,
	cmp	r3, ip	@ D.38948, D.43703
	beq	.L2058	@,
.L2060:
	add	r0, r0, #1	@ tmp376, i,
	mov	r2, r1	@ tmp375, ivtmp.5584
	cmp	r0, lr	@ tmp376, D.43702
	add	r0, r0, #1	@ i, tmp376,
	bcc	.L2061	@,
.L2059:
	mov	r8, #624	@ tmp235,
	add	sl, r4, #52224	@ tmp365, pH264Ctx,
	mla	r1, r8, r5, r4	@ tmp236, tmp235, i, pH264Ctx
	add	r8, sl, #48	@ tmp365, tmp365,
	movw	r6, #52728	@ tmp228,
	movw	sl, #52256	@ tmp225,
	movw	r9, #52772	@ tmp230,
	mov	r5, #0	@ tmp229,
	add	r7, r1, #27136	@, tmp236,
	str	r3, [r4, r6]	@ D.38948, <variable>.CurrPic.frame_store
	add	r1, r7, #168	@,,
	mov	lr, #101	@ tmp231,
	mov	r7, #1	@ tmp226,
	mov	r2, #456	@,
	strb	r7, [r4, sl]	@ tmp226, <variable>.CurrPic.state
	mov	r0, r8	@, tmp365
	str	r5, [r3, #608]	@ tmp229, <variable>.err_level
	str	lr, [r4, r9]	@ tmp231, <variable>.CurrPic.err_level
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r0, #52452	@ tmp242,
	str	r5, [r4, r0]	@ tmp229, <variable>.CurrPic.fs_image.error_level
	strb	r5, [ip, #3]	@ tmp229, <variable>.mode_skip_flag
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r2, #596]	@ tmp229, <variable>.is_displayed
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r5, [r1, #2]	@ tmp229, <variable>.is_reference
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r7, [r3, #4]	@ tmp226, <variable>.is_in_dpb
	ldr	r9, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r9, #592]	@ tmp229, <variable>.eFoState
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	cmp	r9, r7	@ <variable>.CurrPic.state,
	bne	.L2057	@,
	ldr	r3, [fp, #-52]	@, %sfp
	movw	r5, #55520	@ tmp265,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	rsbs	r1, r3, #1	@,
	movcc	r1, #0	@
	bl	FSP_NewLogicFs	@
	mov	r7, r0	@ LogicFsID,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r7	@, LogicFsID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ tmp279, pstLFs,
	movne	r3, #1	@ tmp279
	cmp	r7, #0	@ LogicFsID,
	mov	r5, r0	@ pstLFs,
	movlt	r3, #0	@, tmp279,
	cmp	r3, #0	@ tmp279,
	beq	.L2065	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L2091	@,
.L2066:
	movw	r6, #52728	@ tmp293,
	add	r1, r5, #8	@, pstLFs,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #456	@,
	add	r0, lr, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r8	@, tmp365
	mov	r2, #456	@,
	add	r1, ip, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r7	@ prephitmp.5567, LogicFsID
	str	r7, [r3, #572]	@ LogicFsID, <variable>.logic_fs_id
	ldrsb	r1, [r5, #4]	@ <variable>.PmvIdc, <variable>.PmvIdc
	movw	r5, #52796	@ tmp312,
	str	r1, [r4, r5]	@ <variable>.PmvIdc, <variable>.CurrPic.pmv_address_idc
.L2067:
	movw	r5, #20673	@ tmp325,
	ldr	r1, [fp, #-48]	@, %sfp
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #52728	@ tmp324,
	ldr	r5, [r4, r2]	@ temp.5608, <variable>.CurrPic.frame_store
	movw	r0, #52259	@ tmp322,
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	uxtb	r2, r1	@ D.39005,
	movw	r1, #52257	@ tmp328,
	strb	r2, [r4, r0]	@ D.39005, <variable>.CurrPic.structure
	movne	r3, #3	@, iftmp.615,
	strb	r3, [r5, #464]	@ iftmp.615, <variable>.frame.structure
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r0, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2092	@,
	ldr	r1, [fp, #-48]	@, %sfp
	movw	r0, #20692	@ tmp349,
	movw	r3, #20704	@ tmp352,
	ldr	r5, [r4, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r3, #55536	@ tmp355,
	cmp	r1, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r3, #53344	@ tmp346,
	strb	r2, [r4, r3]	@ D.39005, <variable>.PrevPic.structure
	movw	r3, #53352	@ tmp348,
	str	r5, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r3, #53348	@ tmp351,
	str	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r3, #53360	@ tmp354,
	str	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r3, #53364	@ tmp357,
	str	ip, [r4, r3]	@ prephitmp.5567, <variable>.PrevPic.image_id
	movne	r0, #0	@ D.38958,
	ldreq	r0, [fp, #-48]	@ D.38958, %sfp
	movwne	r3, #53368	@ tmp358,
	movweq	r3, #53368	@ tmp361,
	movne	r2, #1	@ tmp359,
	strneb	r2, [r4, r3]	@ tmp359, <variable>.PrevPic.FrameStoreFlag
	streqb	r0, [r4, r3]	@ D.38958, <variable>.PrevPic.FrameStoreFlag
.L2064:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2058:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #624	@ ivtmp.5589, ivtmp.5589,
	cmp	r7, r5	@ D.38952, i
	bhi	.L2063	@,
.L2057:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.38958,
	b	.L2064	@
.L2089:
	movw	r1, #53344	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r0, #1	@ <variable>.PrevPic.structure,
	beq	.L2049	@,
	mov	r2, #0	@ tmp209,
	movw	r3, #52257	@ tmp208,
	b	.L2085	@
.L2090:
	movw	ip, #53344	@ tmp174,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r5, #2	@ <variable>.PrevPic.structure,
	bne	.L2050	@,
.L2049:
	movw	r0, #55448	@ tmp176,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L2051	@,
	movw	ip, #53352	@ tmp178,
	movw	r5, #20692	@ tmp179,
	ldr	r1, [r4, ip]	@ <variable>.PrevPic.frame_num, <variable>.PrevPic.frame_num
	ldr	r2, [r4, r5]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r1, r2	@ <variable>.PrevPic.frame_num, <variable>.CurrSlice.frame_num
	bne	.L2047	@,
.L2051:
	movw	r0, #20704	@ tmp182,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L2052	@,
	movw	r2, #53348	@ tmp184,
	ldr	r1, [r4, r2]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.PrevPic.nal_ref_idc,
	bne	.L2047	@,
.L2053:
	movw	r5, #55536	@ tmp188,
	sub	r2, r5, #4	@ tmp189, tmp189,
	ldr	r1, [r4, r5]	@ <variable>.PicCounter, <variable>.PicCounter
	ldr	r0, [r4, r2]	@ <variable>.PrevStorePicCounter, <variable>.PrevStorePicCounter
	rsb	r3, r0, r1	@ tmp190, <variable>.PrevStorePicCounter, <variable>.PicCounter
	cmp	r3, #2	@ tmp190,
	bhi	.L2047	@,
	movw	ip, #52728	@ tmp196,
	movw	r3, #52257	@ tmp193,
	ldr	r2, [r4, ip]	@ D.38925, <variable>.CurrPic.frame_store
	mov	r1, #1	@ tmp194,
	strb	r1, [r4, r3]	@ tmp194, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ D.38925,
	beq	.L2085	@,
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r0, #2	@,
	beq	.L2093	@,
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #1	@,
	beq	.L2094	@,
.L2056:
	mov	ip, #0	@ prephitmp.5567,
	b	.L2067	@
.L2092:
	movw	r1, #20692	@ tmp334,
	movw	r3, #20704	@ tmp337,
	ldr	r5, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r2, #55536	@ tmp340,
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r3, #0	@ tmp331,
	ldr	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r2, #53352	@ tmp333,
	str	r5, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r2, #53348	@ tmp336,
	str	r0, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r2, #53360	@ tmp339,
	str	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r2, #53364	@ tmp342,
	str	ip, [r4, r2]	@ prephitmp.5567, <variable>.PrevPic.image_id
	movw	r1, #53368	@ tmp343,
	movw	ip, #53344	@ tmp330,
	mov	r0, r3	@ D.38958, tmp331
	strb	r3, [r4, r1]	@ tmp331, <variable>.PrevPic.FrameStoreFlag
	strb	r3, [r4, ip]	@ tmp331, <variable>.PrevPic.structure
	b	.L2064	@
.L2091:
	ldr	r6, [r0, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	movw	r0, #13564	@ tmp282,
	ldr	r3, [r4, r0]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	movw	r2, #13560	@ tmp285,
	ldr	ip, [r4, r2]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	r0, [r5, #112]	@ <variable>.stDispImg.luma_phy_addr, <variable>.stDispImg.luma_phy_addr
	mov	r1, r3, asl #4	@ HeightAligh, <variable>.CurHeightInMb,
	str	r1, [r5, #156]	@ HeightAligh, <variable>.stDispImg.image_height
	mov	lr, ip, asl #4	@ tmp287, <variable>.CurWidthInMb,
	str	lr, [r5, #152]	@ tmp287, <variable>.stDispImg.image_width
	mul	r6, r6, r1	@ ChromOffset, <variable>.stDispImg.image_stride, HeightAligh
	add	r0, r6, r0	@ D.38979, ChromOffset, <variable>.stDispImg.luma_phy_addr
	str	r0, [r5, #116]	@ D.38979, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #128]	@ <variable>.stDispImg.luma_2d_phy_addr, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r1, [r5, #96]	@ <variable>.stDispImg.top_luma_phy_addr, <variable>.stDispImg.top_luma_phy_addr
	add	ip, r6, r3	@ D.38993, ChromOffset, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r2, [r5, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	add	r6, r6, r1	@ D.38986, ChromOffset, <variable>.stDispImg.top_luma_phy_addr
	str	ip, [r5, #132]	@ D.38993, <variable>.stDispImg.chrom_2d_phy_addr
	add	r1, r6, r2	@ tmp291, D.38986, <variable>.stDispImg.image_stride
	str	r6, [r5, #100]	@ D.38986, <variable>.stDispImg.top_chrom_phy_addr
	str	r1, [r5, #108]	@ tmp291, <variable>.stDispImg.btm_chrom_phy_addr
	str	r0, [r5, #44]	@, <variable>.stDispImg.chrom_vir_addr
	mov	r0, ip	@, D.38993
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #60]	@, <variable>.stDispImg.chrom_2d_vir_addr
	b	.L2066	@
.L2052:
	movw	ip, #53348	@ tmp186,
	ldr	r5, [r4, ip]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.PrevPic.nal_ref_idc,
	beq	.L2047	@,
	b	.L2053	@
.L2094:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #2	@ <variable>.is_used,
	beq	.L2056	@,
.L2086:
	mov	r7, #0	@ tmp203,
	strb	r7, [r4, r3]	@ tmp203, <variable>.CurrPic.field_pair_flag
	b	.L2047	@
.L2065:
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r3	@, tmp279
	strb	r3, [r4, sl]	@ tmp279, <variable>.CurrPic.state
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	strb	r3, [r2, #4]	@ tmp279, <variable>.is_in_dpb
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, <variable>.CurrPic.state
	bl	ClearAll	@
	mvn	r0, #0	@ D.38958,
	b	.L2064	@
.L2093:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r2, r1	@ <variable>.is_used,
	bne	.L2086	@,
	mov	ip, #0	@ prephitmp.5567,
	b	.L2067	@
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
	.align	2
	.global	OutputFrmToVO
	.type	OutputFrmToVO, %function
OutputFrmToVO:
	.fnstart
.LFB1393:
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
	cmp	r0, #0	@ pH264Ctx,
	cmpne	r1, #0	@, pFrameStore,
	mov	r5, r1	@ pFrameStore, pFrameStore
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movne	r3, #0	@, tmp153
	moveq	r3, #1	@, tmp153
	mov	r6, r2	@ is_last_frame, is_last_frame
	beq	.L2112	@,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ <variable>.s32DecOrderOutput,
	ble	.L2098	@,
	movw	r2, #55448	@ tmp157,
	ldr	ip, [r0, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	ip, #2	@ <variable>.OldDecMode,
	beq	.L2098	@,
	movw	ip, #53376	@ tmp159,
	ldr	r1, [r0, ip]	@ D.36394, <variable>.pDirectOutBuf
	cmp	r1, #0	@ D.36394,
	strneb	r3, [r1, #1]	@ tmp153, <variable>.is_used
	movne	r0, #1	@ D.36386,
	strne	r3, [r4, ip]	@ tmp153, <variable>.pDirectOutBuf
	beq	.L2099	@,
.L2097:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L2098:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L2099	@,
	movw	r7, #53376	@ tmp164,
	ldr	r1, [r4, r7]	@ temp.5648, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5648,
	beq	.L2100	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r7]	@, <variable>.pDirectOutBuf
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5650,
	beq	.L2113	@,
	cmn	r3, #3	@ ret.5650,
	beq	.L2105	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC74	@,
	movw	r2, #1773	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L2105:
	movw	r3, #53376	@ tmp217,
	mov	r0, #0	@ tmp218,
	ldr	ip, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #1]	@ tmp218, <variable>.is_used
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	lr, r5	@ <variable>.pDirectOutBuf, pFrameStore
	streq	r0, [r4, r3]	@ tmp218, <variable>.pDirectOutBuf
	beq	.L2097	@,
	str	r0, [r4, r3]	@ tmp218, <variable>.pDirectOutBuf
.L2100:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5665,
	beq	.L2114	@,
	cmn	r3, #3	@ ret.5665,
	beq	.L2099	@,
	movw	r2, #1827	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r5, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.36386,
	b	.L2097	@
.L2112:
	mov	r2, r0	@, pH264Ctx
	mov	r3, r1	@, pFrameStore
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@ D.36386,
	b	.L2097	@
.L2099:
	mov	r0, #1	@ D.36386,
	b	.L2097	@
.L2114:
	movw	r7, #55520	@ tmp226,
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pstLogicFsImage.5669,
	beq	.L2115	@,
	cmp	r6, #1	@ is_last_frame,
	streq	r6, [r7, #216]	@ is_last_frame, <variable>.last_frame
	movw	r6, #55520	@ tmp235,
	mov	r1, #0	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r7, [sp, #0]	@ pstLogicFsImage.5669,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5672,
	bne	.L2116	@,
	mov	r1, r7	@, pstLogicFsImage.5669
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	mov	r2, #55552	@ tmp242,
	movw	r3, #55544	@ tmp246,
	ldr	ip, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r0, #0	@ D.36386,
	add	ip, ip, #1	@ tmp245, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp245, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp249, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp249, <variable>.PicOutCounter
	b	.L2097	@
.L2113:
	ldr	lr, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r8, #55520	@ tmp167,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2117	@,
	ldr	r0, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #55520	@ tmp189,
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	cmp	r6, #1	@ is_last_frame,
	cmpeq	r0, r5	@, <variable>.pDirectOutBuf, pFrameStore
	add	r3, r4, #8	@, pH264Ctx,
	moveq	r0, #1	@ tmp188,
	streq	r0, [r8, #216]	@ tmp188, <variable>.last_frame
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	str	r8, [sp, #0]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5657,
	bne	.L2118	@,
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	mov	r1, #55552	@ tmp204,
	movw	r3, #55544	@ tmp208,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	ip, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	add	r0, r2, #1	@ tmp207, <variable>.numOutputFrame,
	str	r0, [r4, r1]	@ tmp207, <variable>.numOutputFrame
	add	r2, ip, #2	@ tmp211, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp211, <variable>.PicOutCounter
	b	.L2105	@
.L2116:
	mov	r2, r0	@, ret.5672
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.36386,
	b	.L2097	@
.L2118:
	mov	r2, r0	@, ret.5657
	movw	r5, #53376	@ tmp194,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	mov	r6, r0	@ tmp195,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp195
	strb	r6, [r1, #1]	@ tmp195, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [ip, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	str	r6, [r4, r5]	@ tmp195, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.36386,
	b	.L2097	@
.L2115:
	movw	r1, #:lower16:.LC75	@,
	movw	r2, #1799	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36386,
	b	.L2097	@
.L2117:
	movw	r1, #:lower16:.LC72	@,
	movw	r2, #1746	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36386,
	b	.L2097	@
	.fnend
	.size	OutputFrmToVO, .-OutputFrmToVO
	.align	2
	.global	InitDPB
	.type	InitDPB, %function
InitDPB:
	.fnstart
.LFB1436:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearAllSlice	@
	movw	r3, #26424	@ tmp189,
	ldr	r3, [r4, r3]	@ temp.5741, <variable>.DPB.fs
	cmp	r3, #0	@ temp.5741,
	beq	.L2120	@,
	movw	r2, #55520	@ tmp190,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2120:
	movw	r0, #26488	@ tmp193,
	ldr	r3, [r4, r0]	@ temp.5740, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5740,
	beq	.L2121	@,
	movw	r5, #55520	@ tmp194,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2121:
	movw	r1, #26552	@ tmp197,
	ldr	r3, [r4, r1]	@ temp.5743, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5743,
	beq	.L2122	@,
	movw	r6, #55520	@ tmp198,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2122:
	movw	r5, #26428	@ tmp207,
	mov	lr, #0	@ tmp202,
	ldr	r2, [r4, r5]	@ temp.5746, <variable>.DPB.fs
	movw	r0, #26424	@ tmp205,
	movw	r3, #26552	@ tmp201,
	movw	ip, #26488	@ tmp203,
	cmp	r2, lr	@ temp.5746,
	str	lr, [r4, r0]	@ tmp202, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp202, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp202, <variable>.DPB.fs_ref
	beq	.L2123	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp208,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2123:
	movw	r1, #26492	@ tmp211,
	ldr	r3, [r4, r1]	@ temp.5749, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5749,
	beq	.L2124	@,
	movw	r6, #55520	@ tmp212,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2124:
	movw	ip, #26556	@ tmp215,
	ldr	r3, [r4, ip]	@ temp.5752, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5752,
	beq	.L2125	@,
	movw	lr, #55520	@ tmp216,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2125:
	movw	r6, #26432	@ tmp225,
	mov	r3, #0	@ tmp220,
	ldr	r2, [r4, r6]	@ temp.5755, <variable>.DPB.fs
	movw	r1, #26428	@ tmp223,
	movw	r5, #26556	@ tmp219,
	movw	r0, #26492	@ tmp221,
	cmp	r2, r3	@ temp.5755,
	str	r3, [r4, r1]	@ tmp220, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp220, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp220, <variable>.DPB.fs_ref
	beq	.L2126	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp226,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2126:
	movw	ip, #26496	@ tmp229,
	ldr	r3, [r4, ip]	@ temp.5758, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5758,
	beq	.L2127	@,
	movw	lr, #55520	@ tmp230,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2127:
	movw	r0, #26560	@ tmp233,
	ldr	r3, [r4, r0]	@ temp.5761, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5761,
	beq	.L2128	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp234,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2128:
	movw	lr, #26436	@ tmp243,
	mov	r6, #0	@ tmp238,
	ldr	r2, [r4, lr]	@ temp.5764, <variable>.DPB.fs
	movw	ip, #26432	@ tmp241,
	movw	r1, #26560	@ tmp237,
	movw	r5, #26496	@ tmp239,
	cmp	r2, r6	@ temp.5764,
	str	r6, [r4, ip]	@ tmp238, <variable>.DPB.fs
	str	r6, [r4, r1]	@ tmp238, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp238, <variable>.DPB.fs_ref
	beq	.L2129	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp244,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2129:
	movw	r0, #26500	@ tmp247,
	ldr	r3, [r4, r0]	@ temp.5767, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5767,
	beq	.L2130	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp248,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2130:
	movw	r5, #26564	@ tmp251,
	ldr	r3, [r4, r5]	@ temp.5770, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5770,
	beq	.L2131	@,
	movw	r6, #55520	@ tmp252,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2131:
	movw	r3, #26440	@ tmp261,
	mov	ip, #0	@ tmp256,
	ldr	r2, [r4, r3]	@ temp.5773, <variable>.DPB.fs
	movw	r0, #26436	@ tmp259,
	movw	lr, #26564	@ tmp255,
	movw	r1, #26500	@ tmp257,
	cmp	r2, ip	@ temp.5773,
	str	ip, [r4, r0]	@ tmp256, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp256, <variable>.DPB.fs_ltref
	str	ip, [r4, r1]	@ tmp256, <variable>.DPB.fs_ref
	beq	.L2132	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp262,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2132:
	movw	r5, #26504	@ tmp265,
	ldr	r3, [r4, r5]	@ temp.5776, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5776,
	beq	.L2133	@,
	movw	r6, #55520	@ tmp266,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2133:
	movw	r1, #26568	@ tmp269,
	ldr	r3, [r4, r1]	@ temp.5779, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5779,
	beq	.L2134	@,
	movw	ip, #55520	@ tmp270,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2134:
	movw	r6, #26444	@ tmp279,
	mov	r0, #0	@ tmp274,
	ldr	r2, [r4, r6]	@ temp.5782, <variable>.DPB.fs
	movw	r5, #26440	@ tmp277,
	movw	r3, #26568	@ tmp273,
	movw	lr, #26504	@ tmp275,
	cmp	r2, r0	@ temp.5782,
	str	r0, [r4, r5]	@ tmp274, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp274, <variable>.DPB.fs_ltref
	str	r0, [r4, lr]	@ tmp274, <variable>.DPB.fs_ref
	beq	.L2135	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp280,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2135:
	movw	r1, #26508	@ tmp283,
	ldr	r3, [r4, r1]	@ temp.5785, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5785,
	beq	.L2136	@,
	movw	ip, #55520	@ tmp284,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2136:
	movw	lr, #26572	@ tmp287,
	ldr	r3, [r4, lr]	@ temp.5788, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5788,
	beq	.L2137	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp288,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2137:
	movw	ip, #26448	@ tmp297,
	mov	r5, #0	@ tmp292,
	ldr	r2, [r4, ip]	@ temp.5791, <variable>.DPB.fs
	movw	r1, #26444	@ tmp295,
	movw	r6, #26572	@ tmp291,
	movw	r0, #26508	@ tmp293,
	cmp	r2, r5	@ temp.5791,
	str	r5, [r4, r1]	@ tmp292, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp292, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp292, <variable>.DPB.fs_ref
	beq	.L2138	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp298,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2138:
	movw	lr, #26512	@ tmp301,
	ldr	r3, [r4, lr]	@ temp.5794, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5794,
	beq	.L2139	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp302,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2139:
	movw	r0, #26576	@ tmp305,
	ldr	r3, [r4, r0]	@ temp.5797, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5797,
	beq	.L2140	@,
	movw	r5, #55520	@ tmp306,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2140:
	movw	r3, #26452	@ tmp315,
	mov	ip, #0	@ tmp310,
	ldr	r2, [r4, r3]	@ temp.5800, <variable>.DPB.fs
	movw	lr, #26448	@ tmp313,
	movw	r1, #26576	@ tmp309,
	movw	r6, #26512	@ tmp311,
	cmp	r2, ip	@ temp.5800,
	str	ip, [r4, lr]	@ tmp310, <variable>.DPB.fs
	str	ip, [r4, r1]	@ tmp310, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp310, <variable>.DPB.fs_ref
	beq	.L2141	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp316,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2141:
	movw	r0, #26516	@ tmp319,
	ldr	r3, [r4, r0]	@ temp.5803, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5803,
	beq	.L2142	@,
	movw	r5, #55520	@ tmp320,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2142:
	movw	r6, #26580	@ tmp323,
	ldr	r3, [r4, r6]	@ temp.5806, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5806,
	beq	.L2143	@,
	movw	ip, #55520	@ tmp324,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2143:
	movw	r5, #26456	@ tmp333,
	mov	lr, #0	@ tmp328,
	ldr	r2, [r4, r5]	@ temp.5809, <variable>.DPB.fs
	movw	r0, #26452	@ tmp331,
	movw	r3, #26580	@ tmp327,
	movw	r1, #26516	@ tmp329,
	cmp	r2, lr	@ temp.5809,
	str	lr, [r4, r0]	@ tmp328, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp328, <variable>.DPB.fs_ltref
	str	lr, [r4, r1]	@ tmp328, <variable>.DPB.fs_ref
	beq	.L2144	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp334,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2144:
	movw	r6, #26520	@ tmp337,
	ldr	r3, [r4, r6]	@ temp.5812, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5812,
	beq	.L2145	@,
	movw	ip, #55520	@ tmp338,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2145:
	movw	r1, #26584	@ tmp341,
	ldr	r3, [r4, r1]	@ temp.5815, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5815,
	beq	.L2146	@,
	movw	lr, #55520	@ tmp342,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2146:
	movw	ip, #26460	@ tmp351,
	mov	r3, #0	@ tmp346,
	ldr	r2, [r4, ip]	@ temp.5818, <variable>.DPB.fs
	movw	r6, #26456	@ tmp349,
	movw	r5, #26584	@ tmp345,
	movw	r0, #26520	@ tmp347,
	cmp	r2, r3	@ temp.5818,
	str	r3, [r4, r6]	@ tmp346, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp346, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp346, <variable>.DPB.fs_ref
	beq	.L2147	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp352,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2147:
	movw	r1, #26524	@ tmp355,
	ldr	r3, [r4, r1]	@ temp.5821, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5821,
	beq	.L2148	@,
	movw	lr, #55520	@ tmp356,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2148:
	movw	r0, #26588	@ tmp359,
	ldr	r3, [r4, r0]	@ temp.5824, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5824,
	beq	.L2149	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp360,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2149:
	movw	lr, #26464	@ tmp369,
	mov	r6, #0	@ tmp364,
	ldr	r2, [r4, lr]	@ temp.5827, <variable>.DPB.fs
	movw	r1, #26460	@ tmp367,
	movw	ip, #26588	@ tmp363,
	movw	r5, #26524	@ tmp365,
	cmp	r2, r6	@ temp.5827,
	str	r6, [r4, r1]	@ tmp364, <variable>.DPB.fs
	str	r6, [r4, ip]	@ tmp364, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp364, <variable>.DPB.fs_ref
	beq	.L2150	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp370,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2150:
	movw	r0, #26528	@ tmp373,
	ldr	r3, [r4, r0]	@ temp.5830, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5830,
	beq	.L2151	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp374,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2151:
	movw	r5, #26592	@ tmp377,
	ldr	r3, [r4, r5]	@ temp.5833, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5833,
	beq	.L2152	@,
	movw	r6, #55520	@ tmp378,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2152:
	movw	r3, #26468	@ tmp387,
	mov	lr, #0	@ tmp382,
	ldr	r2, [r4, r3]	@ temp.5836, <variable>.DPB.fs
	movw	r0, #26464	@ tmp385,
	movw	r1, #26592	@ tmp381,
	movw	ip, #26528	@ tmp383,
	cmp	r2, lr	@ temp.5836,
	str	lr, [r4, r0]	@ tmp382, <variable>.DPB.fs
	str	lr, [r4, r1]	@ tmp382, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp382, <variable>.DPB.fs_ref
	beq	.L2153	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp388,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2153:
	movw	r5, #26532	@ tmp391,
	ldr	r3, [r4, r5]	@ temp.5839, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5839,
	beq	.L2154	@,
	movw	r6, #55520	@ tmp392,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2154:
	movw	ip, #26596	@ tmp395,
	ldr	r3, [r4, ip]	@ temp.5842, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5842,
	beq	.L2155	@,
	movw	lr, #55520	@ tmp396,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2155:
	movw	r6, #26472	@ tmp405,
	mov	r0, #0	@ tmp400,
	ldr	r2, [r4, r6]	@ temp.5845, <variable>.DPB.fs
	movw	r5, #26468	@ tmp403,
	movw	r3, #26596	@ tmp399,
	movw	r1, #26532	@ tmp401,
	cmp	r2, r0	@ temp.5845,
	str	r0, [r4, r5]	@ tmp400, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp400, <variable>.DPB.fs_ltref
	str	r0, [r4, r1]	@ tmp400, <variable>.DPB.fs_ref
	beq	.L2156	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp406,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2156:
	movw	ip, #26536	@ tmp409,
	ldr	r3, [r4, ip]	@ temp.5848, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5848,
	beq	.L2157	@,
	movw	lr, #55520	@ tmp410,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2157:
	movw	r1, #26600	@ tmp413,
	ldr	r3, [r4, r1]	@ temp.5851, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5851,
	beq	.L2158	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp414,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2158:
	movw	lr, #26476	@ tmp423,
	mov	r5, #0	@ tmp418,
	ldr	r2, [r4, lr]	@ temp.5854, <variable>.DPB.fs
	movw	ip, #26472	@ tmp421,
	movw	r6, #26600	@ tmp417,
	movw	r0, #26536	@ tmp419,
	cmp	r2, r5	@ temp.5854,
	str	r5, [r4, ip]	@ tmp418, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp418, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp418, <variable>.DPB.fs_ref
	beq	.L2159	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp424,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2159:
	movw	r1, #26540	@ tmp427,
	ldr	r3, [r4, r1]	@ temp.5857, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5857,
	beq	.L2160	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp428,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2160:
	movw	r0, #26604	@ tmp431,
	ldr	r3, [r4, r0]	@ temp.5860, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5860,
	beq	.L2161	@,
	movw	r5, #55520	@ tmp432,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2161:
	movw	r3, #26480	@ tmp441,
	mov	ip, #0	@ tmp436,
	ldr	r2, [r4, r3]	@ temp.5863, <variable>.DPB.fs
	movw	r1, #26476	@ tmp439,
	movw	lr, #26604	@ tmp435,
	movw	r6, #26540	@ tmp437,
	cmp	r2, ip	@ temp.5863,
	str	ip, [r4, r1]	@ tmp436, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp436, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp436, <variable>.DPB.fs_ref
	beq	.L2162	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp442,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2162:
	movw	r0, #26544	@ tmp445,
	ldr	r3, [r4, r0]	@ temp.5866, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5866,
	beq	.L2163	@,
	movw	r5, #55520	@ tmp446,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2163:
	movw	r6, #26608	@ tmp449,
	ldr	r3, [r4, r6]	@ temp.5869, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5869,
	beq	.L2164	@,
	movw	ip, #55520	@ tmp450,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2164:
	movw	r5, #26484	@ tmp459,
	mov	r3, #0	@ tmp454,
	ldr	r2, [r4, r5]	@ D.38446, <variable>.DPB.fs
	movw	r0, #26480	@ tmp457,
	movw	r1, #26608	@ tmp453,
	movw	lr, #26544	@ tmp455,
	cmp	r2, r3	@ D.38446,
	str	r3, [r4, r0]	@ tmp454, <variable>.DPB.fs
	str	r3, [r4, r1]	@ tmp454, <variable>.DPB.fs_ltref
	str	r3, [r4, lr]	@ tmp454, <variable>.DPB.fs_ref
	beq	.L2165	@,
	ldr	r1, [r2, #572]	@, <variable>.logic_fs_id
	movw	r2, #55520	@ tmp460,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2165:
	movw	r6, #26548	@ tmp463,
	ldr	r3, [r4, r6]	@ D.38451, <variable>.DPB.fs_ref
	cmp	r3, #0	@ D.38451,
	beq	.L2166	@,
	movw	ip, #55520	@ tmp464,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2166:
	movw	lr, #26612	@ tmp467,
	ldr	r3, [r4, lr]	@ D.38455, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ D.38455,
	beq	.L2167	@,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	movw	r3, #55520	@ tmp468,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2167:
	movw	r5, #53376	@ tmp489,
	movw	r3, #17560	@ tmp478,
	ldr	r1, [r4, r5]	@ D.38461, <variable>.pDirectOutBuf
	movw	ip, #26616	@ tmp477,
	ldr	lr, [r4, r3]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	movw	r6, #26612	@ tmp471,
	movw	r0, #26548	@ tmp473,
	cmp	r1, #0	@ D.38461,
	sub	r2, lr, #1	@ tmp480, <variable>.CurrSPS.dpb_size_plus1,
	movw	r3, #26484	@ tmp475,
	str	r2, [r4, ip]	@ tmp480, <variable>.DPB.size
	movw	lr, #26620	@ tmp481,
	mov	r2, #0	@ tmp472,
	mov	ip, #26624	@ tmp483,
	str	r2, [r4, r6]	@ tmp472, <variable>.DPB.fs_ltref
	movw	r6, #26628	@ tmp485,
	str	r2, [r4, r0]	@ tmp472, <variable>.DPB.fs_ref
	movw	r0, #26632	@ tmp487,
	str	r2, [r4, r3]	@ tmp472, <variable>.DPB.fs
	str	r2, [r4, lr]	@ tmp472, <variable>.DPB.used_size
	str	r2, [r4, ip]	@ tmp472, <variable>.DPB.ref_frames_in_buffer
	str	r2, [r4, r6]	@ tmp472, <variable>.DPB.ltref_frames_in_buffer
	str	r2, [r4, r0]	@ tmp472, <variable>.DPB.max_long_term_pic_idx
	beq	.L2168	@,
	movw	r6, #55448	@ tmp490,
	ldr	r0, [r4, r6]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r0, #2	@ <variable>.OldDecMode,
	beq	.L2181	@,
.L2169:
	movw	r5, #52728	@ tmp494,
	ldr	r3, [r4, r5]	@ D.38470, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.38470,
	beq	.L2170	@,
	movw	r2, #55520	@ tmp495,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2170:
	movw	lr, #53376	@ tmp498,
	mov	ip, #0	@ tmp499,
	str	ip, [r4, lr]	@ tmp499, <variable>.pDirectOutBuf
.L2168:
	add	lr, r4, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, lr, #12	@,,
	movw	r5, #26616	@ tmp503,
	bl	__memzero	@
	ldr	r1, [r4, r5]	@ <variable>.DPB.size, <variable>.DPB.size
	movw	r0, #26892	@ tmp502,
	movw	r2, #26896	@ tmp505,
	movw	ip, #53928	@ tmp507,
	mov	r3, #0	@ tmp506,
	str	r1, [r4, r0]	@ <variable>.DPB.size, <variable>.APC.size
	movw	r0, #53932	@ tmp509,
	movw	r1, #53936	@ tmp511,
	str	r3, [r4, ip]	@ tmp506, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r2]	@ tmp506, <variable>.APC.used_size
	movw	r2, #53940	@ tmp513,
	str	r3, [r4, r0]	@ tmp506, <variable>.PmvStoreUsedFlag
	add	r6, r4, #20480	@ ivtmp.5730, pH264Ctx,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #53944	@ tmp515,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53948	@ tmp517,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #53952	@ tmp519,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53956	@ tmp521,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #53960	@ tmp523,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53964	@ tmp525,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #53968	@ tmp527,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53972	@ tmp529,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #53976	@ tmp531,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	add	r6, r6, #236	@ ivtmp.5730, ivtmp.5730,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53980	@ tmp533,
	movw	r1, #53984	@ tmp535,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	mov	r5, r3	@ i, tmp506
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #53988	@ tmp537,
	movw	r1, #53992	@ tmp539,
	mov	ip, r3	@ j, i
	mov	r0, r3	@ tmp554, i
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
.L2171:
	add	r2, r5, r5, asl #5	@, tmp546, i, i,
	mov	r1, #1	@ j,
	mov	lr, r2, asl #2	@ tmp547, tmp546,
	add	r3, lr, #26880	@ tmp548, tmp547,
	add	r2, r3, #144	@ tmp548, tmp548,
	add	lr, r4, r2	@ tmp550, pH264Ctx, tmp548
	add	r2, lr, #8	@ ivtmp.5722, tmp550,
	str	ip, [lr, #4]	@ j, <variable>.pListX
.L2172:
	add	r1, r1, #2	@ j, j,
	mov	r3, r2	@ tmp558, ivtmp.5722
	cmp	r1, #33	@ j,
	str	ip, [r3], #4	@ j, <variable>.pListX
	str	ip, [r2, #4]	@ j, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.5722, tmp558,
	bne	.L2172	@,
	add	r5, r5, #1	@ i, i,
	str	r0, [r6], #4	@ tmp554, <variable>.CurrSlice.listXsize
	cmp	r5, #2	@ i,
	bne	.L2171	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2181:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	bne	.L2169	@,
	b	.L2168	@
	.fnend
	.size	InitDPB, .-InitDPB
	.align	2
	.global	H264DEC_GetRemainImg
	.type	H264DEC_GetRemainImg, %function
H264DEC_GetRemainImg:
	.fnstart
.LFB1401:
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
	movw	r7, #26620	@ tmp149,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2198	@,
	add	r5, r0, #26368	@ ivtmp.5904, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #56	@ ivtmp.5904, ivtmp.5904,
	b	.L2185	@
.L2184:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2198	@,
.L2185:
	ldr	r1, [r5, #0]	@ D.36896, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5904, ivtmp.5904,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2184	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2185	@,
.L2198:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@ D.36901
	bne	.L2198	@,
	add	r7, r4, #26368	@ ivtmp.5899, pH264Ctx,
	mov	sl, r0	@ pos.5911, D.36901
	add	r7, r7, #56	@ ivtmp.5899, ivtmp.5899,
	mvn	r9, #0	@ ret,
	movw	r8, #26620	@ tmp176,
.L2207:
	ldr	r3, [r4, r8]	@ D.43714, <variable>.DPB.used_size
	cmp	r3, #0	@ D.43714,
	beq	.L2212	@,
.L2193:
	movw	r2, #26616	@,
	ldr	ip, [r4, r2]	@ temp.5910, <variable>.DPB.size
	cmp	r3, ip	@ D.43714, temp.5910
	movls	ip, r3	@ temp.5910, D.43714
	bls	.L2188	@,
	cmp	ip, #0	@ temp.5910,
	str	ip, [r4, r8]	@ temp.5910, <variable>.DPB.used_size
	moveq	r5, ip	@ pos.5911, temp.5910
	beq	.L2189	@,
.L2188:
	tst	ip, #1	@ temp.5910,
	mov	r5, #0	@ pos.5911,
	mov	r2, r7	@ ivtmp.5899, ivtmp.5899
	mvn	r1, #-2147483648	@ min_poc.5913,
	mov	r0, r5	@ pos, pos.5911
	bne	.L2195	@,
	ldr	r3, [r7, #0]	@ D.43711, <variable>.DPB.fs
	ldr	r1, [r3, #588]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2201	@,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2201	@,
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5910
	add	r2, r7, #4	@ ivtmp.5899, ivtmp.5899,
	bcs	.L2189	@,
.L2195:
	ldr	lr, [r2, #0]	@ D.43711, <variable>.DPB.fs
	ldr	r3, [lr, #588]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5913
	bge	.L2190	@,
.L2213:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r5, r0	@ pos.5911, pos
	beq	.L2190	@,
	add	r0, r0, #1	@ tmp187, pos,
	add	lr, r2, #4	@ tmp188, ivtmp.5899,
	cmp	r0, ip	@ tmp187, temp.5910
	bcs	.L2189	@,
.L2192:
	ldr	r2, [r2, #4]	@ D.43711, <variable>.DPB.fs
	ldr	r1, [r2, #588]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2204	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2204	@,
	mov	r5, r0	@ pos.5911, tmp187
.L2211:
	add	r2, lr, #4	@ ivtmp.5899, tmp188,
	add	r0, r0, #1	@ pos, tmp187,
	ldr	lr, [r2, #0]	@ D.43711, <variable>.DPB.fs
	ldr	r3, [lr, #588]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5913
	blt	.L2213	@,
.L2190:
	add	r0, r0, #1	@ tmp187, pos,
	mov	r3, r1	@ min_poc, min_poc.5913
	cmp	r0, ip	@ tmp187, temp.5910
	add	lr, r2, #4	@ tmp188, ivtmp.5899,
	bcc	.L2192	@,
.L2189:
	add	r6, r5, #6592	@ tmp158, pos.5911,
	mov	r0, r4	@, pH264Ctx
	add	r6, r6, #14	@ tmp158, tmp158,
	ldr	r9, [r4, r6, asl #2]	@ tmp160, <variable>.DPB.fs
	strb	sl, [r9, #4]	@ pos.5911, <variable>.is_in_dpb
	ldr	r1, [r4, r6, asl #2]	@, <variable>.DPB.fs
	ldr	r2, [r4, r8]	@, <variable>.DPB.used_size
	bl	OutputFrmToVO	@
	ldr	r3, [r4, r6, asl #2]	@ tmp170, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	mov	r9, r0	@ ret,
	bne	.L2207	@,
	mov	r1, r5	@, pos.5911
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	ldr	r3, [r4, r8]	@ D.43714, <variable>.DPB.used_size
	cmp	r3, #0	@ D.43714,
	bne	.L2193	@,
.L2212:
	cmp	r9, #0	@ ret,
	beq	.L2194	@,
	add	r0, r4, #8	@, pH264Ctx,
	bl	GetVoLastImageID	@
	mov	r9, r0	@ ret,
.L2194:
	mov	r0, r9	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2201:
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5910
	mvn	r1, #-2147483648	@ min_poc,
	add	r2, r7, #4	@ ivtmp.5899, ivtmp.5899,
	bcc	.L2195	@,
	b	.L2189	@
.L2204:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2211	@
	.fnend
	.size	H264DEC_GetRemainImg, .-H264DEC_GetRemainImg
	.align	2
	.global	DirectOutput
	.type	DirectOutput, %function
DirectOutput:
	.fnstart
.LFB1399:
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
	movw	r3, #52259	@ tmp190,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #1	@ <variable>.CurrPic.structure,
	beq	.L2217	@,
	bcc	.L2216	@,
	cmp	r3, #2	@ <variable>.CurrPic.structure,
	movne	r5, #0	@ ret,
	beq	.L2261	@,
.L2219:
	mov	r0, r5	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2216:
	movw	r6, #52728	@ tmp193,
	movw	r5, #53376	@ tmp196,
	ldr	r1, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp194,
	strb	r2, [r1, #464]	@ tmp194, <variable>.frame.structure
	ldr	r1, [r0, r5]	@ temp.5967, <variable>.pDirectOutBuf
	cmp	r1, r2	@ temp.5967,
	beq	.L2220	@,
	bl	OutputFrmToVO	@
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, #0	@ <variable>.pDirectOutBuf,
	beq	.L2221	@,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r2, #55520	@ tmp199,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2221:
	movw	r7, #53376	@ tmp204,
	mov	r6, #0	@ tmp205,
	str	r6, [r4, r7]	@ tmp205, <variable>.pDirectOutBuf
.L2220:
	movw	r7, #52728	@ tmp206,
	movw	r6, #53376	@ tmp207,
	ldr	r8, [r4, r7]	@ temp.5970, <variable>.CurrPic.frame_store
	mov	r5, #0	@ tmp229,
	add	r1, r4, #52224	@, pH264Ctx,
	mov	r2, #456	@,
	add	r1, r1, #48	@,,
	str	r8, [r4, r6]	@ temp.5970, <variable>.pDirectOutBuf
	str	r8, [r8, #468]	@ temp.5970, <variable>.frame.frame_store
	movw	r8, #55520	@ tmp263,
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [lr, #504]	@ <variable>.CurrPic.frame_store, <variable>.top_field.frame_store
	movw	lr, #52258	@ tmp220,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r3, #540]	@ <variable>.CurrPic.frame_store, <variable>.bottom_field.frame_store
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	lr, #3	@ tmp225,
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r3, #1]	@ tmp225, <variable>.is_used
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [ip, #2]	@ tmp229, <variable>.is_reference
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [r0, #4]	@ tmp229, <variable>.is_in_dpb
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r5, [r3, #596]	@ tmp229, <variable>.is_displayed
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #52772	@ tmp246,
	ldr	ip, [r4, r2]	@ D.36746, <variable>.CurrPic.err_level
	movw	r3, #52764	@ tmp253,
	ldr	r1, [r4, r6]	@ temp.5982, <variable>.pDirectOutBuf
	mov	r2, r5	@, tmp229
	str	ip, [r1, #608]	@ D.36746, <variable>.err_level
	str	ip, [r1, #484]	@ D.36746, <variable>.frame.err_level
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [r0, #464]	@ tmp229, <variable>.frame.structure
	movw	r0, #52265	@ tmp257,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r1, #604]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	ip, #52263	@ tmp260,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r3, #600]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r0, [r4, r6]	@ temp.5986, <variable>.pDirectOutBuf
	cmp	r1, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r1, r5	@ iftmp.497, tmp2
	moveq	r1, #3	@ iftmp.497,
	strb	r1, [r0, #3]	@ iftmp.497, <variable>.mode_skip_flag
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r5	@, tmp229
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, #0	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2252	@,
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2252:
	movw	r3, #53376	@ tmp661,
	mov	r0, #0	@ tmp662,
	str	r0, [r4, r3]	@ tmp662, <variable>.pDirectOutBuf
	b	.L2219	@
.L2217:
	movw	r6, #52728	@ tmp280,
	movw	r7, #52257	@ tmp283,
	ldr	r2, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r5, #3	@ tmp281,
	strb	r5, [r2, #464]	@ tmp281, <variable>.frame.structure
	ldrb	r2, [r0, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2225	@,
	movw	r7, #53376	@ tmp285,
	ldr	r1, [r0, r7]	@ temp.5995, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5995,
	beq	.L2226	@,
	bl	OutputFrmToVO	@
	mov	r5, r0	@ ret,
	ldr	r0, [r4, r6]	@ temp.5996, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.5996, <variable>.pDirectOutBuf
	str	r0, [r0, #504]	@ temp.5996, <variable>.top_field.frame_store
.L2227:
	movw	r6, #53376	@ tmp293,
	movw	r7, #52258	@ tmp294,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #1	@ tmp299,
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp303,
	add	r1, r4, #52224	@, pH264Ctx,
	mov	r2, #456	@,
	add	r1, r1, #48	@,,
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp299, <variable>.is_used
	movw	lr, #52764	@ tmp314,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp303, <variable>.is_in_dpb
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #596]	@ tmp303, <variable>.is_displayed
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #2]	@ tmp303, <variable>.is_reference
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r3, #604]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #600]	@ tmp303, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r3, #52772	@ tmp328,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r2, #520]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	movw	r2, #52263	@ tmp337,
	ldr	ip, [r4, r6]	@ temp.6011, <variable>.pDirectOutBuf
	ldr	r0, [ip, #520]	@ D.36767, <variable>.top_field.err_level
	str	r0, [ip, #608]	@ D.36767, <variable>.err_level
	str	r0, [ip, #484]	@ D.36767, <variable>.frame.err_level
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #500]	@ tmp299, <variable>.top_field.structure
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r8	@ <variable>.CurrPic.mode_skip_flag,
	movne	r2, #0	@, tmp339
	moveq	r2, #1	@, tmp339
	b	.L2260	@
.L2261:
	movw	r6, #52728	@ tmp473,
	movw	r8, #52257	@ tmp476,
	ldr	r7, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r5, #3	@ tmp474,
	strb	r5, [r7, #464]	@ tmp474, <variable>.frame.structure
	ldrb	r2, [r0, r8]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2262	@,
	movw	r5, #53376	@ tmp550,
	add	sl, r0, #52224	@, pH264Ctx,
	ldr	lr, [r0, r5]	@ prephitmp.6058, <variable>.pDirectOutBuf
	add	r1, sl, #48	@,,
	mov	r2, #456	@,
	cmp	lr, #0	@ prephitmp.6058,
	ldreq	lr, [r0, r6]	@ temp.6085, <variable>.CurrPic.frame_store
	streq	lr, [r0, r5]	@ temp.6085, <variable>.pDirectOutBuf
	streq	lr, [lr, #540]	@ temp.6085, <variable>.bottom_field.frame_store
	ldreq	lr, [r0, r5]	@ prephitmp.6058, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.6058,
	ldrd	r8, [lr, #24]	@, prephitmp.6058,
	ldr	r6, [lr, #20]	@ OtherFieldPts.6086, <variable>.fs_image.PTS
	ldr	r5, [lr, #16]	@ OtherFieldPts.6086, <variable>.fs_image.PTS
	strd	r8, [fp, #-52]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.6058,
	strd	r8, [fp, #-60]	@,,
	ldr	r9, [lr, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	r8, [lr, #76]	@ OtherFieldDispEnableFlag.6089, <variable>.fs_image.DispEnableFlag
	str	r9, [fp, #-64]	@, %sfp
	ldr	sl, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame.6091, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum.6092, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	ip, r4, #52224	@ tmp568, pH264Ctx,
	movw	r2, #52280	@ tmp562,
	add	r7, ip, #56	@ tmp568, tmp568,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r0, r5, r6	@ tmp560, OtherFieldPts.6086, OtherFieldPts.6086
	ldr	r3, [r7, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r7, r1, r3	@ tmp564, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r3, #52288	@ tmp578,
	cmn	r7, #1	@ tmp564,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r0, #1	@ tmp560,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp578, pH264Ctx
	movw	r0, #52296	@ tmp582,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp573,
	movwne	r7, #53376	@ tmp575,
	ldrne	r7, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r6, [r7, #20]	@ OtherFieldPts.6086, <variable>.fs_image.PTS
	movw	r6, #53376	@ tmp577,
	strne	r5, [r7, #16]	@ OtherFieldPts.6086, <variable>.fs_image.PTS
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r6, [fp, #-52]	@,,
	cmp	r3, r7	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r6	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r6	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r7	@ <variable>.CurrPic.fs_image.Usertag,
	ldrd	r6, [r4, r0]	@, pH264Ctx, tmp582
	strd	r6, [fp, #-52]	@,,
	strd	r2, [r1, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	movw	r3, #53376	@ tmp581,
	ldrd	r0, [fp, #-60]	@,,
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r7, r1	@,
	cmpeq	r6, r0	@,
	strhid	r0, [fp, #-52]	@,,
.L2247:
	ldrd	r6, [fp, #-52]	@,,
	movw	r5, #53376	@ tmp585,
	movw	ip, #52340	@ tmp586,
	movw	r3, #52344	@ tmp591,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r0, #52348	@ tmp596,
	strd	r6, [r2, #32]	@, <variable>.pDirectOutBuf,
	movw	r1, #52352	@ tmp601,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	lr, r8	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.6089
	strls	lr, [r2, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	r8, [r2, #76]	@, OtherFieldDispEnableFlag.6089, <variable>.fs_image.DispEnableFlag
	ldr	r7, [fp, #-64]	@, %sfp
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	cmp	ip, r7	@ <variable>.CurrPic.fs_image.DispFrameDistance,
	strls	ip, [r3, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r7, [r3, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, sl	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.6091
	strls	r0, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	sl, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame.6091, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r7, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	lr, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum.6092
	strls	lr, [r7, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [r7, #88]	@, OtherFieldGopNum.6092, <variable>.fs_image.GopNum
	movw	r7, #52764	@ tmp614,
	ldr	ip, [r4, r5]	@ temp.6116, <variable>.pDirectOutBuf
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #52258	@ tmp606,
	moveq	lr, r3	@ iftmp.507, <variable>.non_existing
	ldrneb	lr, [r4, r3]	@ zero_extendqisi2	@ iftmp.507, <variable>.CurrPic.non_existing
	movw	r3, #53376	@ tmp608,
	strb	lr, [ip, #0]	@ iftmp.507, <variable>.non_existing
	ldr	r0, [r4, r3]	@ temp.6118, <variable>.pDirectOutBuf
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r1, r2, #2	@ tmp611, <variable>.is_used,
	strb	r1, [r0, #1]	@ tmp611, <variable>.is_used
	ldr	r5, [r4, r3]	@ temp.6121, <variable>.pDirectOutBuf
	mov	r0, #2	@ tmp620,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	mov	r7, #3	@ tmp624,
	ldr	ip, [r5, #604]	@ <variable>.pic_type, <variable>.pic_type
	cmp	ip, lr	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	ip, [r5, #604]	@, <variable>.pic_type, <variable>.pic_type
	strcc	lr, [r5, #604]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	r5, #52772	@ tmp628,
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [r2, #536]	@ tmp620, <variable>.bottom_field.structure
	ldr	r1, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r1, #464]	@ tmp624, <variable>.frame.structure
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [lr, #556]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	ldr	r7, [r4, r3]	@ temp.6128, <variable>.pDirectOutBuf
	ldr	r0, [r7, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r7, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r1, r0, r2	@ tmp631, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	mov	r5, r1, lsr #1	@ tmp634, tmp631,
	str	r5, [r7, #484]	@ tmp634, <variable>.frame.err_level
	ldr	lr, [r4, r3]	@ temp.6133, <variable>.pDirectOutBuf
	movw	r1, #52263	@ tmp639,
	ldr	ip, [lr, #484]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	ip, [lr, #608]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r2, [r4, r3]	@ temp.6135, <variable>.pDirectOutBuf
	ldr	r7, [r2, #540]	@ <variable>.bottom_field.frame_store, <variable>.bottom_field.frame_store
	str	r7, [r2, #468]	@ <variable>.bottom_field.frame_store, <variable>.frame.frame_store
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r0, #1	@ <variable>.CurrPic.mode_skip_flag,
	beq	.L2263	@,
.L2250:
	ldr	r3, [r4, r3]	@ temp.5966, <variable>.pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ iftmp.508, <variable>.mode_skip_flag
.L2251:
	movw	r6, #53376	@ tmp650,
	strb	r2, [r3, #3]	@ iftmp.508, <variable>.mode_skip_flag
	ldr	r5, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #55520	@ tmp647,
	mov	r2, #0	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r2, #0	@,
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2252	@,
	movw	r2, #52728	@ tmp659,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	lr, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	movw	r3, #53376	@ tmp661,
	mov	r0, #0	@ tmp662,
	str	r0, [r4, r3]	@ tmp662, <variable>.pDirectOutBuf
	b	.L2219	@
.L2262:
	movw	r7, #53376	@ tmp478,
	ldr	r1, [r0, r7]	@ temp.6054, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.6054,
	beq	.L2239	@,
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r6]	@ temp.6055, <variable>.CurrPic.frame_store
	str	r1, [r4, r7]	@ temp.6055, <variable>.pDirectOutBuf
	str	r1, [r1, #540]	@ temp.6055, <variable>.bottom_field.frame_store
	mov	r5, r0	@ ret,
.L2240:
	movw	r6, #53376	@ tmp486,
	movw	r7, #52258	@ tmp487,
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #2	@ tmp492,
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp496,
	add	r1, r4, #52224	@, pH264Ctx,
	mov	r2, #456	@,
	add	r1, r1, #48	@,,
	strb	ip, [r0, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp492, <variable>.is_used
	movw	lr, #52764	@ tmp507,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp496, <variable>.is_in_dpb
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #596]	@ tmp496, <variable>.is_displayed
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [ip, #2]	@ tmp496, <variable>.is_reference
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [r3, #604]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #600]	@ tmp496, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r0, #52772	@ tmp521,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r2, #556]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	movw	r2, #52263	@ tmp529,
	ldr	r3, [r4, r6]	@ temp.6071, <variable>.pDirectOutBuf
	ldr	ip, [r3, #556]	@ temp.6072, <variable>.bottom_field.err_level
	str	ip, [r3, #608]	@ temp.6072, <variable>.err_level
	str	ip, [r3, #484]	@ temp.6072, <variable>.frame.err_level
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r0, #536]	@ tmp492, <variable>.bottom_field.structure
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r6]	@ temp.6074, <variable>.pDirectOutBuf
	cmp	r2, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r2, r8	@ iftmp.505,
	movne	r2, r7	@ iftmp.505,
.L2260:
	strb	r2, [r3, #3]	@ iftmp.505, <variable>.mode_skip_flag
	movw	r2, #55452	@ tmp532,
	ldr	r8, [r4, r2]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r8, #1	@ <variable>.IModeOutFlag,
	bne	.L2219	@,
	ldr	r5, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #55520	@ tmp534,
	mov	r2, r7	@, tmp496
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp496
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r3, r7	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2252	@,
	movw	ip, #52728	@ tmp546,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r8	@, <variable>.IModeOutFlag
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2252	@
.L2225:
	movw	r7, #53376	@ tmp359,
	add	sl, r0, #52224	@, pH264Ctx,
	ldr	lr, [r0, r7]	@ prephitmp.5944, <variable>.pDirectOutBuf
	add	r1, sl, #48	@,,
	mov	r2, #456	@,
	cmp	lr, #0	@ prephitmp.5944,
	ldreq	lr, [r0, r6]	@ temp.6023, <variable>.CurrPic.frame_store
	streq	lr, [r0, r7]	@ temp.6023, <variable>.pDirectOutBuf
	streq	lr, [lr, #504]	@ temp.6023, <variable>.top_field.frame_store
	ldreq	lr, [r0, r7]	@ prephitmp.5944, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5944,
	ldrd	r8, [lr, #24]	@, prephitmp.5944,
	ldr	r7, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r5, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r8, [fp, #-52]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5944,
	strd	r8, [fp, #-60]	@,,
	ldr	r9, [lr, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	r8, [lr, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	str	r9, [fp, #-64]	@, %sfp
	ldr	sl, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	r1, r4, #52224	@ tmp377, pH264Ctx,
	movw	r2, #52280	@ tmp371,
	add	r3, r1, #56	@ tmp377, tmp377,
	ldr	r6, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r7, r5	@ tmp369, OtherFieldPts, OtherFieldPts
	ldr	r0, [r3, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r3, r6, r0	@ tmp373, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r6, #53376	@ tmp386,
	cmn	r3, #1	@ tmp373,
	movne	r1, #0	@,
	moveq	r1, #1	@,
	cmn	ip, #1	@ tmp369,
	movw	r0, #52296	@ tmp391,
	moveq	r1, #0	@,,
	cmp	r1, #0	@ tmp382,
	movwne	r3, #53376	@ tmp384,
	ldrne	r3, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r3, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r5, #53376	@ tmp390,
	strne	r7, [r3, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r3, #52288	@ tmp387,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp387, pH264Ctx
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r6, [fp, #-52]	@,,
	cmp	r3, r7	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r6	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r6	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r7	@ <variable>.CurrPic.fs_image.Usertag,
	ldrd	r6, [r4, r0]	@, pH264Ctx, tmp391
	strd	r6, [fp, #-52]	@,,
	strd	r2, [ip, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r0, [fp, #-60]	@,,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r7, r1	@,
	cmpeq	r6, r0	@,
	strhid	r0, [fp, #-52]	@,,
.L2232:
	ldrd	r6, [fp, #-52]	@,,
	movw	r5, #53376	@ tmp394,
	movw	ip, #52340	@ tmp395,
	movw	r3, #52344	@ tmp400,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r0, #52348	@ tmp405,
	strd	r6, [r2, #32]	@, <variable>.pDirectOutBuf,
	movw	r1, #52352	@ tmp410,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	lr, r8	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	lr, [r2, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	r8, [r2, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r7, [fp, #-64]	@, %sfp
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	cmp	ip, r7	@ <variable>.CurrPic.fs_image.DispFrameDistance,
	strls	ip, [r3, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r7, [r3, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, sl	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	strls	r0, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	sl, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	lr, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum
	strls	lr, [ip, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [ip, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldr	r7, [r4, r5]	@ temp.6031, <variable>.pDirectOutBuf
	movw	r5, #52764	@ tmp423,
	ldrb	r3, [r7, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #52258	@ tmp415,
	moveq	lr, r3	@ iftmp.501, <variable>.non_existing
	ldrneb	lr, [r4, r3]	@ zero_extendqisi2	@ iftmp.501, <variable>.CurrPic.non_existing
	movw	r3, #53376	@ tmp417,
	strb	lr, [r7, #0]	@ iftmp.501, <variable>.non_existing
	ldr	r0, [r4, r3]	@ temp.6032, <variable>.pDirectOutBuf
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	ip, r2, #1	@ tmp420, <variable>.is_used,
	strb	ip, [r0, #1]	@ tmp420, <variable>.is_used
	ldr	r7, [r4, r3]	@ temp.6034, <variable>.pDirectOutBuf
	mov	r0, #1	@ tmp429,
	ldr	r1, [r4, r5]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	mov	r5, #3	@ tmp433,
	ldr	lr, [r7, #604]	@ <variable>.pic_type, <variable>.pic_type
	cmp	lr, r1	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	lr, [r7, #604]	@, <variable>.pic_type, <variable>.pic_type
	strcc	r1, [r7, #604]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	r7, #52772	@ tmp437,
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [r2, #500]	@ tmp429, <variable>.top_field.structure
	ldr	ip, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [ip, #464]	@ tmp433, <variable>.frame.structure
	ldr	r1, [r4, r7]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [lr, #520]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	ldr	r5, [r4, r3]	@ temp.6039, <variable>.pDirectOutBuf
	ldr	r0, [r5, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r5, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	ip, r0, r2	@ tmp440, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	mov	r7, ip, lsr #1	@ tmp443, tmp440,
	str	r7, [r5, #484]	@ tmp443, <variable>.frame.err_level
	ldr	lr, [r4, r3]	@ temp.6041, <variable>.pDirectOutBuf
	movw	ip, #52263	@ tmp448,
	ldr	r1, [lr, #484]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r1, [lr, #608]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r2, [r4, r3]	@ temp.6042, <variable>.pDirectOutBuf
	ldr	r0, [r2, #504]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	str	r0, [r2, #468]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r5, #1	@ <variable>.CurrPic.mode_skip_flag,
	bne	.L2250	@,
	ldr	r3, [r4, r3]	@ D.36737, <variable>.pDirectOutBuf
	ldrb	r6, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r6, #1	@ iftmp.502, <variable>.mode_skip_flag,
	b	.L2251	@
.L2226:
	ldr	ip, [r0, r6]	@ temp.5998, <variable>.CurrPic.frame_store
	mov	r5, r1	@ ret, temp.5995
	str	ip, [r0, r7]	@ temp.5998, <variable>.pDirectOutBuf
	str	ip, [ip, #504]	@ temp.5998, <variable>.top_field.frame_store
	b	.L2227	@
.L2239:
	ldr	lr, [r0, r6]	@ temp.6057, <variable>.CurrPic.frame_store
	mov	r5, r1	@ ret, temp.6054
	str	lr, [r0, r7]	@ temp.6057, <variable>.pDirectOutBuf
	str	lr, [lr, #540]	@ temp.6057, <variable>.bottom_field.frame_store
	b	.L2240	@
.L2263:
	ldr	r3, [r4, r3]	@ temp.5966, <variable>.pDirectOutBuf
	ldrb	r6, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r6, #2	@ iftmp.508, <variable>.mode_skip_flag,
	b	.L2251	@
	.fnend
	.size	DirectOutput, .-DirectOutput
	.align	2
	.global	OutputFrmFromDPB
	.type	OutputFrmFromDPB, %function
OutputFrmFromDPB:
	.fnstart
.LFB1394:
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
	add	r4, r1, #6592	@ tmp137, pos,
	add	r4, r4, #14	@ tmp137, tmp137,
	mov	r6, r1	@ pos, pos
	mov	r7, #0	@ tmp140,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r0, r4, asl #2]	@ tmp139, <variable>.DPB.fs
	mov	r2, r7	@, tmp140
	strb	r7, [r1, #4]	@ tmp140, <variable>.is_in_dpb
	ldr	r1, [r0, r4, asl #2]	@, <variable>.DPB.fs
	bl	OutputFrmToVO	@
	mov	r7, r0	@ ret,
	ldr	r0, [r5, r4, asl #2]	@ tmp147, <variable>.DPB.fs
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L2265	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	RemoveFrameStoreOutDPB	@
.L2265:
	mov	r0, r7	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	OutputFrmFromDPB, .-OutputFrmFromDPB
	.align	2
	.global	FlushDPB
	.type	FlushDPB, %function
FlushDPB:
	.fnstart
.LFB1400:
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
	movw	r7, #26620	@ tmp149,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2283	@,
	add	r4, r0, #26368	@ ivtmp.6203, pH264Ctx,
	mov	r6, #0	@ i,
	add	r4, r4, #56	@ ivtmp.6203, ivtmp.6203,
	b	.L2270	@
.L2269:
	ldr	r1, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2283	@,
.L2270:
	ldr	r1, [r4, #0]	@ D.36868, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.6203, ivtmp.6203,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2269	@,
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2270	@,
.L2283:
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2283	@,
	add	r2, r5, #26368	@ ivtmp.6198, pH264Ctx,
	movw	r6, #26620	@ tmp161,
	add	r4, r2, #56	@ ivtmp.6198, ivtmp.6198,
	movw	r7, #26616	@ tmp162,
.L2282:
	ldr	r0, [r5, r6]	@ D.43732, <variable>.DPB.used_size
	cmp	r0, #0	@ D.43732,
	beq	.L2297	@,
	ldr	r8, [r5, r7]	@ temp.6206, <variable>.DPB.size
	cmp	r0, r8	@ D.43732, temp.6206
	movls	r8, r0	@ temp.6206, D.43732
	bls	.L2273	@,
	cmp	r8, #0	@ temp.6206,
	str	r8, [r5, r6]	@ temp.6206, <variable>.DPB.used_size
	moveq	r1, r8	@ pos, temp.6206
	beq	.L2274	@,
.L2273:
	tst	r8, #1	@ temp.6206,
	mov	r1, #0	@ pos,
	mov	r2, r4	@ ivtmp.6198, ivtmp.6198
	mvn	r0, #-2147483648	@ min_poc.6209,
	mov	ip, r1	@ pos.6207, pos
	bne	.L2280	@,
	ldr	r3, [r4, #0]	@ D.43729, <variable>.DPB.fs
	ldr	r0, [r3, #588]	@ min_poc, <variable>.poc
	cmn	r0, #-2147483647	@ min_poc,
	bge	.L2287	@,
	ldrb	ip, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L2287	@,
	mov	ip, #1	@ pos.6207,
	cmp	ip, r8	@ pos.6207, temp.6206
	add	r2, r4, #4	@ ivtmp.6198, ivtmp.6198,
	bcs	.L2274	@,
.L2280:
	ldr	lr, [r2, #0]	@ D.43729, <variable>.DPB.fs
	ldr	r3, [lr, #588]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6209
	bge	.L2275	@,
.L2298:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r1, ip	@ pos, pos.6207
	beq	.L2275	@,
	add	ip, ip, #1	@ tmp172, pos.6207,
	add	lr, r2, #4	@ tmp173, ivtmp.6198,
	cmp	ip, r8	@ tmp172, temp.6206
	bcs	.L2274	@,
.L2277:
	ldr	r2, [r2, #4]	@ D.43729, <variable>.DPB.fs
	ldr	r0, [r2, #588]	@ min_poc, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc
	bge	.L2290	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2290	@,
	mov	r1, ip	@ pos, tmp172
.L2296:
	add	r2, lr, #4	@ ivtmp.6198, tmp173,
	add	ip, ip, #1	@ pos.6207, tmp172,
	ldr	lr, [r2, #0]	@ D.43729, <variable>.DPB.fs
	ldr	r3, [lr, #588]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6209
	blt	.L2298	@,
.L2275:
	add	ip, ip, #1	@ tmp172, pos.6207,
	mov	r3, r0	@ min_poc, min_poc.6209
	cmp	ip, r8	@ tmp172, temp.6206
	add	lr, r2, #4	@ tmp173, ivtmp.6198,
	bcc	.L2277	@,
.L2274:
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	bne	.L2282	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2287:
	mov	ip, #1	@ pos.6207,
	cmp	ip, r8	@ pos.6207, temp.6206
	mvn	r0, #-2147483648	@ min_poc,
	add	r2, r4, #4	@ ivtmp.6198, ivtmp.6198,
	bcc	.L2280	@,
	b	.L2274	@
.L2290:
	mov	r0, r3	@ min_poc, min_poc
	b	.L2296	@
.L2297:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	FlushDPB, .-FlushDPB
	.align	2
	.global	IDRMemMarking
	.type	IDRMemMarking, %function
IDRMemMarking:
	.fnstart
.LFB1405:
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
	movw	r2, #52732	@ tmp148,
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.no_output_of_prior_pics_flag, <variable>.no_output_of_prior_pics_flag
	cmp	r3, #0	@ <variable>.no_output_of_prior_pics_flag,
	beq	.L2300	@,
	movw	sl, #26620	@ tmp150,
	ldr	r0, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L2301	@,
	add	r4, r6, #26368	@ ivtmp.6250, pH264Ctx,
	mov	r7, #0	@ i.6265,
	add	r4, r4, #120	@ ivtmp.6250, ivtmp.6250,
	mov	r5, r7	@ tmp228, i.6265
	movw	r8, #55520	@ tmp229,
	mov	r9, #1	@ tmp230,
.L2303:
	ldr	r1, [r4, #-64]	@ D.37043, <variable>.DPB.fs
	mov	r2, #0	@,
	add	r7, r7, #1	@ i.6265, i.6265,
	strb	r5, [r1, #465]	@ tmp228, <variable>.frame.is_long_term
	strb	r5, [r1, #466]	@ tmp228, <variable>.frame.is_short_term
	ldr	ip, [r4, #-64]	@ temp.6252, <variable>.DPB.fs
	strb	r5, [ip, #501]	@ tmp228, <variable>.top_field.is_long_term
	strb	r5, [ip, #502]	@ tmp228, <variable>.top_field.is_short_term
	ldr	r0, [r4, #-64]	@ temp.6253, <variable>.DPB.fs
	strb	r5, [r0, #537]	@ tmp228, <variable>.bottom_field.is_long_term
	strb	r5, [r0, #538]	@ tmp228, <variable>.bottom_field.is_short_term
	ldr	r3, [r4, #-64]	@ tmp165, <variable>.DPB.fs
	strb	r5, [r3, #2]	@ tmp228, <variable>.is_reference
	ldr	lr, [r4, #-64]	@ tmp170, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, #-64]	@ tmp172, <variable>.DPB.fs
	strb	r5, [r1, #1]	@ tmp228, <variable>.is_used
	ldr	ip, [r4, #-64]	@ tmp175, <variable>.DPB.fs
	strb	r5, [ip, #4]	@ tmp228, <variable>.is_in_dpb
	ldr	r0, [r4, #-64]	@ tmp178, <variable>.DPB.fs
	str	r9, [r0, #596]	@ tmp230, <variable>.is_displayed
	ldr	ip, [r4, #-64]	@ temp.6259, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r3, [ip, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r2, r3, #6656	@ tmp180, <variable>.apc_idc,
	add	r1, r2, #2	@ tmp180, tmp180,
	add	r3, r6, r1, asl #2	@, tmp185, pH264Ctx, tmp180,
	str	r5, [r3, #4]	@ tmp228, <variable>.APC.is_used
	ldr	r1, [ip, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetDisplay	@
	mov	r2, r5	@, tmp228
	cmp	r0, #3	@,
	beq	.L2302	@,
	ldr	lr, [r4, #-64]	@ tmp193, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2302:
	ldr	r2, [r6, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	str	r5, [r4, #-64]	@ tmp228, <variable>.DPB.fs
	cmp	r2, r7	@ <variable>.DPB.used_size, i.6265
	str	r5, [r4, #0]	@ tmp228, <variable>.DPB.fs_ref
	str	r5, [r4, #64]	@ tmp228, <variable>.DPB.fs_ltref
	add	r4, r4, #4	@ ivtmp.6250, ivtmp.6250,
	bhi	.L2303	@,
.L2301:
	movw	r0, #54000	@ tmp202,
	movw	r3, #26620	@ tmp200,
	ldr	ip, [r6, r0]	@ D.37054, <variable>.TotalPmvNum
	mov	r0, #0	@ tmp201,
	str	r0, [r6, r3]	@ tmp201, <variable>.DPB.used_size
	cmp	ip, r0	@ D.37054,
	beq	.L2304	@,
	add	r3, r6, #53760	@ tmp203, pH264Ctx,
	mov	r2, #1	@ i,
	add	lr, r3, #168	@ ivtmp.6242, tmp203,
	cmp	r2, ip	@ i, D.37054
	sub	r1, ip, #1	@ tmp232, D.37054,
	str	r0, [lr, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	and	lr, r1, r2	@ tmp234, tmp232,
	add	r1, r3, #172	@ ivtmp.6242, tmp203,
	bcs	.L2304	@,
	cmp	lr, #0	@ tmp234,
	beq	.L2305	@,
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.37054
	str	r0, [r1, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #176	@ ivtmp.6242, tmp203,
	bcs	.L2304	@,
.L2305:
	add	r2, r2, #2	@ i, i,
	mov	r3, r1	@ tmp236, ivtmp.6242
	cmp	r2, ip	@ i, D.37054
	str	r0, [r3], #4	@ tmp227, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.6242, tmp236,
	bcc	.L2305	@,
.L2304:
	mov	r0, r6	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r6	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r2, #52732	@ tmp206,
	ldr	ip, [r6, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@ <variable>.long_term_reference_flag, <variable>.long_term_reference_flag
	cmp	r3, #0	@ <variable>.long_term_reference_flag,
	bne	.L2316	@,
	movw	r2, #26632	@ tmp218,
	movw	ip, #52261	@ tmp223,
	movw	r1, #52260	@ tmp220,
	mov	lr, #1	@ tmp224,
	mov	r0, r3	@ D.37059, <variable>.long_term_reference_flag
	str	r3, [r6, r2]	@ <variable>.long_term_reference_flag, <variable>.DPB.max_long_term_pic_idx
	strb	lr, [r6, ip]	@ tmp224, <variable>.CurrPic.is_short_term
	strb	r3, [r6, r1]	@ <variable>.long_term_reference_flag, <variable>.CurrPic.is_long_term
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2316:
	movw	r2, #52740	@ tmp210,
	movw	ip, #52261	@ tmp215,
	movw	r3, #52260	@ tmp212,
	movw	r1, #26632	@ tmp208,
	mov	r0, #0	@ tmp211,
	mov	lr, #1	@ tmp209,
	str	r0, [r6, r2]	@ tmp211, <variable>.CurrPic.long_term_frame_idx
	strb	r0, [r6, ip]	@ tmp211, <variable>.CurrPic.is_short_term
	strb	lr, [r6, r3]	@ tmp209, <variable>.CurrPic.is_long_term
	str	lr, [r6, r1]	@ tmp209, <variable>.DPB.max_long_term_pic_idx
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2300:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.37059,
	beq	.L2304	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	IDRMemMarking, .-IDRMemMarking
	.align	2
	.global	AdaptiveMemMark
	.type	AdaptiveMemMark, %function
AdaptiveMemMark:
	.fnstart
.LFB1404:
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
	movw	r3, #52732	@ tmp153,
	ldr	r4, [r0, r3]	@ ivtmp.6299, <variable>.CurrPic.pMarkPara
	add	r7, r0, #52224	@ D.36996, pH264Ctx,
	add	r7, r7, #32	@ D.36996, D.36996,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r6, r4, #2000	@ D.49553, ivtmp.6299,
	movw	r8, #19812	@ tmp211,
	mov	sl, #1	@ tmp212,
.L2327:
	ldr	r0, [r4, #4]	@ <variable>.memory_management_control_operation, <variable>.memory_management_control_operation
	cmp	r0, #6	@ <variable>.memory_management_control_operation,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.memory_management_control_operation
	b	.L2318	@
.L2326:
	.word	.L2319
	.word	.L2320
	.word	.L2321
	.word	.L2322
	.word	.L2323
	.word	.L2324
	.word	.L2325
.L2325:
	ldr	r2, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.36996
	bl	MarkCurrPicLT	@
.L2318:
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	cmp	r4, r6	@ ivtmp.6299, D.49553
	bne	.L2327	@,
.L2319:
	movw	r2, #19812	@ tmp163,
	ldr	r1, [r5, r2]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r1, #1	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L2336	@,
.L2328:
	mov	r0, #0	@ D.37026,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2324:
	mov	r0, r5	@, pH264Ctx
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	bl	UnMarkAllSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6299, D.49553
	str	sl, [r5, r8]	@ tmp212, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2327	@,
	b	.L2319	@
.L2323:
	ldr	r1, [r4, #20]	@, <variable>.max_long_term_frame_idx_plus1
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6299, D.49553
	bne	.L2327	@,
	b	.L2319	@
.L2322:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r1, r7	@, D.36996
	ldr	r3, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6299, D.49553
	bne	.L2327	@,
	b	.L2319	@
.L2321:
	ldr	r2, [r4, #12]	@, <variable>.long_term_pic_num
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.36996
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6299, D.49553
	bne	.L2327	@,
	b	.L2319	@
.L2320:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.36996
	add	r4, r4, #20	@ ivtmp.6299, ivtmp.6299,
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	cmp	r4, r6	@ ivtmp.6299, D.49553
	bne	.L2327	@,
	b	.L2319	@
.L2336:
	movw	lr, #52259	@ tmp167,
	mov	ip, #52736	@ tmp165,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r3, #0	@ tmp166,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPic.frame_num
	cmp	r2, #1	@ <variable>.CurrPic.structure,
	beq	.L2331	@,
	bcs	.L2337	@,
	movw	r3, #52748	@ tmp186,
	movw	r4, #52760	@ tmp190,
	movw	r7, #52756	@ tmp185,
	movw	r0, #19820	@ tmp197,
	movw	sl, #19832	@ tmp198,
	ldr	ip, [r5, r3]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	ldr	r1, [r5, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	r2, #19824	@ tmp202,
	ldr	r6, [r5, r4]	@ <variable>.CurrPic.bottompoc, <variable>.CurrPic.bottompoc
	ldr	r9, [r5, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	r8, [r5, r7]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	rsb	r6, ip, r6	@ D.37015, <variable>.CurrPic.thispoc, <variable>.CurrPic.bottompoc
	str	r6, [r5, r4]	@ D.37015, <variable>.CurrPic.bottompoc
	sub	r4, r4, #8	@ tmp195, tmp195,
	rsb	r8, ip, r8	@ D.37014, <variable>.CurrPic.thispoc, <variable>.CurrPic.toppoc
	rsb	ip, r1, r9	@ D.37019, <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.toppoc
	ldr	r9, [r5, r2]	@, <variable>.CurrPOC.bottompoc
	cmp	r6, r8	@ D.37015, D.37014
	movlt	lr, r6	@ D.37016, D.37015
	movge	lr, r8	@ D.37016, D.37014
	str	ip, [r5, r0]	@ D.37019, <variable>.CurrPOC.toppoc
	rsb	r1, r1, r9	@ D.37020, <variable>.CurrPOC.ThisPOC,
	str	lr, [r5, r3]	@ D.37016, <variable>.CurrPic.thispoc
	cmp	r1, ip	@ D.37020, D.37019
	movlt	r3, r1	@ D.37021, D.37020
	movge	r3, ip	@ D.37021, D.37019
	add	ip, r2, #4	@ tmp207, tmp207,
	str	r3, [r5, sl]	@ D.37021, <variable>.CurrPOC.ThisPOC
	str	r8, [r5, r7]	@ D.37014, <variable>.CurrPic.toppoc
	str	lr, [r5, r4]	@ D.37016, <variable>.CurrPic.framepoc
	str	r1, [r5, r2]	@ D.37020, <variable>.CurrPOC.bottompoc
	str	r3, [r5, ip]	@ D.37021,
.L2329:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.37026,
	beq	.L2328	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2337:
	cmp	r2, #2	@ <variable>.CurrPic.structure,
	bne	.L2329	@,
	movw	r1, #52760	@ tmp177,
	sub	r0, r1, #12	@ tmp179, tmp179,
	movw	r2, #19832	@ tmp183,
	movw	lr, #19824	@ tmp181,
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.bottompoc
	str	r3, [r5, r0]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, lr]	@ tmp166,
	b	.L2329	@
.L2331:
	movw	r2, #52756	@ tmp169,
	sub	r1, r2, #8	@ tmp171, tmp171,
	movw	ip, #19832	@ tmp175,
	movw	r0, #19820	@ tmp173,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPic.toppoc
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, r0]	@ tmp166,
	b	.L2329	@
	.fnend
	.size	AdaptiveMemMark, .-AdaptiveMemMark
	.align	2
	.global	Marking
	.type	Marking, %function
Marking:
	.fnstart
.LFB1406:
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
	movw	r2, #52259	@ tmp143,
	movw	r3, #52262	@ tmp146,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	ldrb	r1, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	ip, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp145
	moveq	r2, #1	@, tmp145
	movw	r0, #19816	@ tmp142,
	cmp	r1, #5	@ <variable>.CurrPic.nal_unit_type,
	movw	r3, #19812	@ tmp140,
	str	r2, [r4, r0]	@ tmp145, <variable>.CurrPOC.last_pic_bottom_field
	mov	r2, #0	@ tmp141,
	str	r2, [r4, r3]	@ tmp141, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2339	@,
	movw	r1, #52764	@ tmp148,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, r2	@ <variable>.CurrPic.pic_type,
	bne	.L2340	@,
	ldr	r3, [r4, #0]	@ D.37077, <variable>.pstExtraData
	ldr	ip, [r3, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	ip, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2351	@,
.L2340:
	movw	r0, #52732	@ tmp156,
	ldr	r2, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	ip, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L2350	@,
	movw	r1, #52744	@ tmp159,
	ldr	r3, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2352	@,
.L2345:
	mov	r0, #0	@ D.37090,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L2351:
	ldr	r2, [r3, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2340	@,
	ldr	r0, [r3, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2340	@,
	ldr	r1, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r3, r1, #1024	@ tmp153, <variable>.s32FastForwardBackwardSpeed,
	cmp	r3, #2048	@ tmp153,
	bls	.L2340	@,
.L2339:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2341	@,
.L2342:
	movw	ip, #52262	@ tmp161,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	lr, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2346	@,
.L2350:
	movw	r0, #52744	@ tmp163,
	ldr	r2, [r4, r0]	@ prephitmp.6323, <variable>.CurrPic.nal_ref_idc
	cmp	r2, #0	@ prephitmp.6323,
	beq	.L2345	@,
	movw	ip, #52732	@ tmp165,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L2347	@,
	movw	r2, #52257	@ tmp167,
	ldrb	r5, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2347	@,
	mov	r0, r4	@, pH264Ctx
	bl	SlidingWinMark	@
	movw	r0, #52260	@ tmp169,
	strb	r5, [r4, r0]	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.is_long_term
.L2346:
	movw	r3, #52744	@ tmp172,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2345	@,
.L2347:
	movw	r0, #52260	@ tmp175,
	movw	ip, #52261	@ tmp174,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r0, #0	@ D.37090,
	cmp	r2, r0	@ <variable>.CurrPic.is_long_term,
	movne	r1, #0	@, tmp177
	moveq	r1, #1	@, tmp177
	strb	r1, [r4, ip]	@ tmp177, <variable>.CurrPic.is_short_term
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L2352:
	mov	r0, r4	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2342	@,
.L2341:
	mvn	r0, #0	@ D.37090,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Marking, .-Marking
	.align	2
	.global	ClearDPB
	.type	ClearDPB, %function
ClearDPB:
	.fnstart
.LFB1368:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L2354	@,
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC76	@,
	movw	r2, #345	@,
	bl	dprint_vfmw	@
.L2354:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp138,
	movw	r0, #55528	@ tmp139,
	movw	r2, #54012	@ tmp137,
	str	r3, [r4, r0]	@ tmp138, <variable>.FirstFrameDisplayed
	mov	r0, r3	@, tmp138
	str	r3, [r4, r2]	@ tmp138, <variable>.IDRFound
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ClearDPB, .-ClearDPB
	.align	2
	.global	ReceivePacket
	.type	ReceivePacket, %function
ReceivePacket:
	.fnstart
.LFB1488:
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
	mov	r4, r1	@ pPacket, pPacket
	ldr	ip, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	mov	r0, #7	@,
	ldr	r2, [r1, #4]	@ <variable>.p_stream, <variable>.p_stream
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	str	ip, [sp, #0]	@ <variable>.stream_len,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #368]	@ D.42985, <variable>.pCurrNal
	cmp	r3, #0	@ D.42985,
	beq	.L2357	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	cmp	r2, #1	@ <variable>.last_pack_in_nal,
	beq	.L2379	@,
.L2358:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #368]	@ D.42985, <variable>.pCurrNal
	cmp	r3, #0	@ D.42985,
	ldrneb	r2, [r4, #0]	@ zero_extendqisi2	@ prephitmp.6377, <variable>.last_pack_in_nal
	beq	.L2357	@,
.L2359:
	strb	r2, [r3, #3]	@ prephitmp.6377, <variable>.nal_integ
	ldr	r0, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r0, #0	@ <variable>.stream_len,
	ble	.L2368	@,
	ldr	r2, [r4, #4]	@ temp.6418, <variable>.p_stream
	cmp	r2, #0	@ temp.6418,
	beq	.L2368	@,
	ldr	r3, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	r3, #0	@ <variable>.strm_phy_addr,
	bne	.L2371	@,
.L2368:
	ldr	r3, [r5, #368]	@ prephitmp.6379, <variable>.pCurrNal
.L2370:
	movw	r6, #55520	@ tmp276,
	mov	ip, #1	@ tmp274,
	strb	ip, [r3, #3]	@ tmp274, <variable>.nal_integ
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp279,
	movt	r0, #:upper16:g_event_report	@ tmp279,
	ldr	r3, [r0, #0]	@ g_event_report.6438, g_event_report
	cmp	r3, #0	@ g_event_report.6438,
	beq	.L2365	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6438
.L2365:
	ldr	r2, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrb	lr, [r2, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	lr, #0	@ <variable>.nal_integ,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L2367:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L2379:
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L2358	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r0, #1	@ <variable>.nal_integ,
	bne	.L2359	@,
	b	.L2358	@
.L2371:
	ldr	r3, [r5, #368]	@ prephitmp.6379, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ temp.6420, <variable>.nal_segment
	cmp	r1, #1	@ temp.6420,
	bhi	.L2370	@,
	rsb	r1, r1, r1, asl #3	@, tmp232, temp.6420, temp.6420,
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, r1, asl #2	@, tmp234, prephitmp.6379, tmp232,
	str	r2, [r3, #8]	@ temp.6418, <variable>.streamBuffer
	ldr	ip, [r5, #368]	@ temp.6422, <variable>.pCurrNal
	ldr	r1, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp240, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp242, temp.6422, tmp240,
	str	r1, [r3, #12]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	ip, [r5, #368]	@ temp.6426, <variable>.pCurrNal
	ldr	r1, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp249, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp251, temp.6426, tmp249,
	str	r1, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	mov	r1, #0	@ tmp262,
	ldr	ip, [r5, #368]	@ temp.6429, <variable>.pCurrNal
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp258, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp260, temp.6429, tmp258,
	str	r1, [r3, #24]	@ tmp262, <variable>.bitsoffset
	ldr	ip, [r5, #368]	@ temp.6431, <variable>.pCurrNal
	ldr	r1, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp267, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp269, temp.6431, tmp267,
	str	r1, [r3, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	lr, [r5, #368]	@ temp.6434, <variable>.pCurrNal
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	add	ip, r2, #1	@ tmp273, <variable>.nal_segment,
	str	ip, [lr, #68]	@ tmp273, <variable>.nal_segment
	bl	CombinePacket	@
	b	.L2365	@
.L2357:
	ldr	r3, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2361	@,
	ldr	r2, [r4, #4]	@ <variable>.p_stream, <variable>.p_stream
	cmp	r2, #0	@ <variable>.p_stream,
	beq	.L2361	@,
	ldr	lr, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	lr, #0	@ <variable>.strm_phy_addr,
	beq	.L2361	@,
	ldrb	r2, [r5, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r1, r5, #96	@ ivtmp.6398, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L2363	@,
	b	.L2362	@
.L2380:
	ldrb	r2, [r1, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r1, r1, #192	@ ivtmp.6398, ivtmp.6398,
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L2362	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2364	@,
.L2363:
	ldrb	r2, [r1, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L2380	@,
.L2362:
	cmp	r3, #136	@ Pos,
	bhi	.L2364	@,
	add	ip, r3, r3, asl #1	@, tmp173, Pos, Pos,
	mov	lr, #1	@ tmp177,
	mov	r3, ip, asl #5	@ tmp174, tmp173,
	add	ip, r3, r5	@ tmp175, tmp174, pH264Ctx
	add	r0, r3, #376	@ tmp183, tmp174,
	add	r1, r5, r0	@ tmp184, pH264Ctx, tmp183
	strb	lr, [ip, #377]	@ tmp177, <variable>.is_valid
	str	r1, [r5, #368]	@ tmp184, <variable>.pCurrNal
	ldr	r7, [r4, #4]	@ <variable>.p_stream, <variable>.p_stream
	str	r7, [ip, #384]	@ <variable>.p_stream, <variable>.streamBuffer
	ldr	r6, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	str	r6, [ip, #388]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	r3, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r0, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	str	r0, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [r1, #24]	@ <variable>.is_valid, <variable>.bitsoffset
	ldr	r7, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r6, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r6, [r7, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrd	r6, [r4, #24]	@ <variable>.pts, pPacket,
	strd	r6, [ip, #88]	@ <variable>.pts, <variable>.pCurrNal,
	ldr	r3, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	lr, [r3, #68]	@ tmp177, <variable>.nal_segment
	ldr	r0, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r2, [r0, #0]	@ <variable>.is_valid, <variable>.nal_used_segment
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	ip, [r1, #3]	@ <variable>.last_pack_in_nal, <variable>.nal_integ
	b	.L2365	@
.L2364:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #:lower16:g_event_report	@ tmp218,
	movt	r2, #:upper16:g_event_report	@ tmp218,
	ldr	r3, [r2, #0]	@ g_event_report.810, g_event_report
	cmp	r3, #0	@ g_event_report.810,
	bne	.L2381	@,
.L2366:
	mvn	r0, #0	@ ret,
	b	.L2367	@
.L2381:
	movw	lr, #55520	@ tmp219,
	mov	r1, #113	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.810
	mvn	r0, #0	@ ret,
	b	.L2367	@
.L2361:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC80	@,
	movw	r6, #55520	@ tmp221,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp224,
	movt	r1, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r1, #0]	@ g_event_report.6415, g_event_report
	cmp	r3, #0	@ g_event_report.6415,
	beq	.L2366	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6415
	mvn	r0, #0	@ ret,
	b	.L2367	@
	.fnend
	.size	ReceivePacket, .-ReceivePacket
	.align	2
	.global	DecVDM
	.type	DecVDM, %function
DecVDM:
	.fnstart
.LFB1451:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #52259	@ tmp147,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	beq	.L2383	@,
	movw	r2, #52257	@ tmp149,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r1, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2383	@,
.L2384:
	movw	ip, #55508	@ tmp162,
	movw	r6, #55448	@ tmp165,
	ldr	r5, [r4, ip]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	ldr	r3, [r4, r6]	@ D.39813, <variable>.OldDecMode
	ubfx	r5, r5, #16, #2	@ IPBDecMode, <variable>.advanced_cfg,,
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r3, r5	@, D.39813, IPBDecMode
	beq	.L2385	@,
	sub	lr, r3, #2	@ tmp173, D.39813,
	cmp	lr, #1	@ tmp173,
	bls	.L2414	@,
.L2385:
	cmp	r5, #2	@ IPBDecMode,
	movw	r1, #55448	@ tmp176,
	str	r5, [r4, r1]	@ IPBDecMode, <variable>.OldDecMode
	beq	.L2389	@,
	cmp	r5, #3	@ IPBDecMode,
	beq	.L2390	@,
	cmp	r5, #1	@ IPBDecMode,
	beq	.L2415	@,
.L2387:
	movw	r3, #55524	@ tmp197,
	ldr	ip, [r4, r3]	@ <variable>.PrevPicIsIDR, <variable>.PrevPicIsIDR
	cmp	ip, #1	@ <variable>.PrevPicIsIDR,
	beq	.L2416	@,
.L2392:
	movw	r0, #52768	@ tmp205,
	movw	r3, #55524	@ tmp204,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	ip, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
.L2393:
	movw	r1, #55444	@ tmp207,
	ldr	lr, [r4, r1]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	lr, #0	@ <variable>.SliceParaNum,
	beq	.L2413	@,
	movw	r2, #55448	@ tmp209,
	ldr	r5, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r5, #4	@ <variable>.OldDecMode,
	beq	.L2395	@,
	movw	ip, #52764	@ tmp211,
	ldr	r3, [r4, ip]	@ prephitmp.6466, <variable>.CurrPic.pic_type
.L2396:
	cmp	r3, #2	@ prephitmp.6466,
	beq	.L2417	@,
	cmp	r3, #1	@ prephitmp.6466,
	beq	.L2409	@,
.L2398:
	movw	r5, #55484	@ tmp230,
	movw	ip, #52259	@ tmp233,
	ldr	lr, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	mov	r0, #2	@,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@, <variable>.CurrPic.structure
	movw	r1, #:lower16:.LC82	@,
	sub	r2, lr, #1	@, <variable>.TotalPicNum,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	movw	r1, #52788	@ tmp236,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_mbs, <variable>.CurrPic.pic_mbs
	movw	r2, #52792	@ tmp242,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	movw	r3, #55444	@ tmp245,
	ldr	r0, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	movw	r3, #54968	@ tmp235,
	str	ip, [r4, r3]	@ <variable>.CurrPic.pic_mbs, <variable>.DecPicPara.mbtodec
	cmp	r0, #0	@ <variable>.TotalPicNum,
	movw	ip, #54964	@ tmp241,
	movw	r3, #55168	@ tmp244,
	str	r1, [r4, ip]	@ <variable>.CurrPic.stream_base_addr, <variable>.DecPicPara.stream_base_addr
	movw	ip, #54050	@ tmp238,
	str	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.DecPicPara.SliceParaNum
	mov	r2, #1	@ tmp239,
	strb	r2, [r4, ip]	@ tmp239, <variable>.DecPicPara.NewPicFlag
	beq	.L2386	@,
	movw	r3, #52764	@ tmp249,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2400	@,
	movw	r5, #:lower16:g_event_report	@ tmp251,
	movt	r5, #:upper16:g_event_report	@ tmp251,
	ldr	r2, [r5, #0]	@ g_event_report, g_event_report
	cmp	r2, #0	@ g_event_report,
	beq	.L2410	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_GetPicStreamSize	@
	sub	r2, fp, #28	@ tmp256,,
	ldr	ip, [r5, #0]	@ g_event_report, g_event_report
	mov	r1, #20	@,
	str	r0, [r2, #-4]!	@, para
	movw	r0, #55520	@ tmp254,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report
.L2410:
	ldr	r2, [r4, #0]	@ temp.6496, <variable>.pstExtraData
.L2401:
	add	ip, r4, #54016	@ D.39894, pH264Ctx,
	add	r3, ip, #32	@ D.39894, D.39894,
	str	r3, [r4, #360]	@ D.39894, <variable>.pH264DecParam
	ldr	r1, [r2, #680]	@ D.39895, <variable>.stDisParams.s32Mode
	cmp	r1, #1	@ D.39895,
	beq	.L2418	@,
	cmp	r1, #2	@ D.39895,
	beq	.L2419	@,
.L2403:
	ldr	r2, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #55432	@ tmp278,
	mov	r0, #0	@ D.39828,
	str	r2, [r4, ip]	@ <variable>.s32Compress_en, <variable>.DecPicPara.Compress_en
.L2386:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L2383:
	movw	r3, #55548	@ tmp151,
	ldr	r5, [r4, #0]	@ D.39805, <variable>.pstExtraData
	ldr	r6, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	mov	r1, #55552	@ tmp154,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r0, r6, #1	@ D.39807, <variable>.numTotalFrame,
	cmp	r0, r2	@ D.39807, <variable>.numOutputFrame
	movlt	r0, r2	@ D.39809, <variable>.numOutputFrame
	str	r0, [r4, r3]	@ D.39809, <variable>.numTotalFrame
	str	r0, [r5, #440]	@ D.39809, <variable>.stChanState.total_frame_num
	ldr	lr, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	ip, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	rsb	r6, ip, lr	@ tmp161, <variable>.numOutputFrame, <variable>.numTotalFrame
	str	r6, [r5, #444]	@ tmp161, <variable>.stChanState.error_frame_num
	b	.L2384	@
.L2395:
	movw	r3, #52764	@ tmp212,
	ldr	r3, [r4, r3]	@ prephitmp.6466, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ prephitmp.6466,
	bne	.L2396	@,
.L2409:
	mov	r5, #54016	@ tmp227,
	str	r3, [r4, r5]	@ prephitmp.6466, <variable>.PPicFound
	b	.L2398	@
.L2415:
	movw	lr, #52764	@ tmp190,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2387	@,
	movw	r3, #52744	@ tmp192,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2387	@,
	movw	r2, #52263	@ tmp194,
	mov	r0, r4	@, pH264Ctx
	strb	r5, [r4, r2]	@ IPBDecMode, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
.L2414:
	cmp	r5, #1	@ IPBDecMode,
	bhi	.L2385	@,
	mov	r2, r5	@, IPBDecMode
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	str	r5, [r4, r6]	@ IPBDecMode, <variable>.OldDecMode
.L2390:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
.L2389:
	movw	r0, #52764	@ tmp177,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2411	@,
	movw	ip, #55444	@ tmp182,
	ldr	r2, [r4, ip]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r2, #0	@ <variable>.SliceParaNum,
	beq	.L2387	@,
	movw	r3, #55440	@ tmp185,
	ldr	r1, [r4, r3]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	lr, [r1, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	lr, #0	@ <variable>.first_mb_in_slice,
	beq	.L2387	@,
.L2411:
	movw	ip, #52263	@ tmp187,
	mov	r2, #1	@ tmp188,
	mov	r0, r4	@, pH264Ctx
	strb	r2, [r4, ip]	@ tmp188, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
.L2400:
	movw	lr, #26620	@ tmp258,
	ldr	r1, [r4, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, #0	@ <variable>.DPB.used_size,
	bne	.L2410	@,
	ldr	r2, [r4, #0]	@ temp.6496, <variable>.pstExtraData
	ldr	r3, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2401	@,
.L2413:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
.L2416:
	movw	lr, #52764	@ tmp199,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2392	@,
	movw	r2, #52768	@ tmp202,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r1, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
	b	.L2393	@
.L2417:
	mov	lr, #54016	@ tmp216,
	ldr	r0, [r4, lr]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #0	@ <variable>.PPicFound,
	bne	.L2398	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r5, #0	@ <variable>.s32DecOrderOutput,
	bne	.L2398	@,
	movw	ip, #:lower16:g_allow_B_before_P	@ tmp220,
	movt	ip, #:upper16:g_allow_B_before_P	@ tmp220,
	ldrb	r2, [ip, #0]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r2, #1	@ g_allow_B_before_P,
	beq	.L2398	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	movw	r0, #52728	@ tmp225,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #55520	@ tmp222,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, <variable>.s32DecOrderOutput
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
.L2418:
	cmp	r3, #0	@ D.39894,
	beq	.L2403	@,
	movw	r1, #52764	@ tmp263,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2403	@,
	movw	r3, #52728	@ tmp268,
	movw	ip, #55520	@ tmp266,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp265,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp265, <variable>.pH264DecParam
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2413	@
.L2419:
	ldr	r0, [r2, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L2403	@,
	cmp	r3, #0	@ D.39894,
	beq	.L2403	@,
	movw	lr, #52764	@ tmp270,
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2403	@,
	movw	r0, #52728	@ tmp275,
	movw	r1, #55520	@ tmp273,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp272,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp272, <variable>.pH264DecParam
	ldr	r1, [lr, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.6505, <variable>.pstExtraData
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [ip, #684]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp277, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #684]	@ tmp277, <variable>.stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.39828,
	b	.L2386	@
	.fnend
	.size	DecVDM, .-DecVDM
	.align	2
	.global	H264_FlushDecoder
	.type	H264_FlushDecoder, %function
H264_FlushDecoder:
	.fnstart
.LFB1482:
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
	movw	lr, #20724	@ tmp134,
	movw	r1, #20677	@ tmp136,
	mov	r2, #1	@ tmp137,
	mov	ip, #0	@ tmp135,
	str	r2, [r0, #364]	@ tmp137, <variable>.StartMode
	str	ip, [r0, lr]	@ tmp135, <variable>.CurrSlice.first_mb_in_slice
	strb	r2, [r0, r1]	@ tmp137, <variable>.CurrSlice.new_pic_flag
	bl	DecVDM	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264_FlushDecoder, .-H264_FlushDecoder
	.align	2
	.global	InsertFrmInDPB
	.type	InsertFrmInDPB, %function
InsertFrmInDPB:
	.fnstart
.LFB1398:
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
	mov	r7, r2	@ pCurrPic, pCurrPic
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ D.36575, <variable>.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ D.36575,
	beq	.L2425	@,
	bcc	.L2424	@,
	cmp	r2, #2	@ D.36575,
	beq	.L2469	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.36617,
.L2432:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2424:
	ldr	r2, [r7, #472]	@ D.36578, <variable>.frame_store
	add	r6, r1, #6592	@ tmp802, pos,
	add	r6, r6, #14	@ tmp802, tmp802,
	mov	sl, #3	@ tmp211,
	str	r2, [r0, r6, asl #2]	@ D.36578, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [r2, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	ip, [r0, r6, asl #2]	@ tmp210, <variable>.DPB.fs
	strb	sl, [ip, #1]	@ tmp211, <variable>.is_used
	ldr	r9, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r8, [r0, r6, asl #2]	@ tmp215, <variable>.DPB.fs
	ldrb	r5, [r9, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r8, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r1, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r0, r6, asl #2]	@ tmp221, <variable>.DPB.fs
	ldr	r0, [r1, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r0, [r3, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ temp.6575, <variable>.DPB.fs
	cmp	r2, #0	@ <variable>.is_long_term,
	beq	.L2470	@,
.L2427:
	mov	r2, #3	@ iftmp.485,
.L2428:
	strb	r2, [r3, #2]	@ iftmp.485, <variable>.is_reference
	add	r1, r7, #16	@, pCurrPic,
	ldr	ip, [r4, r6, asl #2]	@ tmp231, <variable>.DPB.fs
	mov	r2, #456	@,
	ldr	lr, [r7, #540]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r5, #0	@ tmp255,
	str	lr, [ip, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r0, [r4, r6, asl #2]	@ tmp235, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp235,
	bl	memcpy	@
	ldr	r1, [r4, r6, asl #2]	@ temp.6578, <variable>.DPB.fs
	ldr	sl, [r7, #516]	@ D.36594, <variable>.err_level
	mov	r2, r5	@, tmp255
	mov	r0, r4	@, pH264Ctx
	str	sl, [r1, #608]	@ D.36594, <variable>.err_level
	str	sl, [r1, #484]	@ D.36594, <variable>.frame.err_level
	ldr	r9, [r4, r6, asl #2]	@ temp.6579, <variable>.DPB.fs
	ldr	r8, [r7, #472]	@ temp.6580, <variable>.frame_store
	str	r8, [r9, #468]	@ temp.6580, <variable>.frame.frame_store
	str	r8, [r9, #540]	@ temp.6580, <variable>.bottom_field.frame_store
	str	r8, [r9, #504]	@ temp.6580, <variable>.top_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp246, <variable>.DPB.fs
	ldr	ip, [r7, #484]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	str	ip, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	ldr	r1, [r4, r6, asl #2]	@ tmp250, <variable>.DPB.fs
	ldr	sl, [r7, #480]	@ <variable>.frame_num, <variable>.frame_num
	str	sl, [r1, #576]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r9, [r4, r6, asl #2]	@ tmp254, <variable>.DPB.fs
	strb	r5, [r9, #464]	@ tmp255, <variable>.frame.structure
	ldr	r8, [r4, r6, asl #2]	@ tmp259, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r8, #465]	@ <variable>.is_long_term, <variable>.frame.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp264, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #466]	@ <variable>.is_short_term, <variable>.frame.is_short_term
	ldr	sl, [r4, r6, asl #2]	@ temp.6588, <variable>.DPB.fs
	ldr	r9, [r7, #508]	@ D.36600, <variable>.pic_type
	str	r9, [sl, #604]	@ D.36600, <variable>.pic_type
	str	r9, [sl, #488]	@ D.36600, <variable>.frame.pic_type
	ldr	r8, [r4, r6, asl #2]	@ tmp271, <variable>.DPB.fs
	ldrb	ip, [r7, #9]	@ zero_extendqisi2	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	str	ip, [r8, #600]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r4, r6, asl #2]	@ tmp275, <variable>.DPB.fs
	ldr	r1, [r7, #492]	@ <variable>.thispoc, <variable>.thispoc
	str	r1, [r3, #588]	@ <variable>.thispoc, <variable>.poc
	ldr	sl, [r4, r6, asl #2]	@ tmp279, <variable>.DPB.fs
	ldr	r9, [r7, #496]	@ <variable>.framepoc, <variable>.framepoc
	str	r9, [sl, #480]	@ <variable>.framepoc, <variable>.frame.poc
	ldr	r8, [r4, r6, asl #2]	@ tmp283, <variable>.DPB.fs
	ldr	ip, [r7, #500]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [r8, #516]	@ <variable>.toppoc, <variable>.top_field.poc
	mov	r8, #1	@ tmp298,
	ldr	r3, [r4, r6, asl #2]	@ tmp287, <variable>.DPB.fs
	ldr	r1, [r7, #504]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r1, [r3, #552]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldrb	r9, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	sl, [r4, r6, asl #2]	@ temp.6594, <variable>.DPB.fs
	cmp	r9, #1	@ <variable>.mode_skip_flag,
	moveq	r9, #3	@ iftmp.487,
	movne	r9, r5	@ iftmp.487, tmp2
	strb	r9, [sl, #3]	@ iftmp.487, <variable>.mode_skip_flag
	ldr	r3, [r4, r6, asl #2]	@ temp.6595, <variable>.DPB.fs
	ldr	r1, [r3, #484]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldrb	lr, [r3, #465]	@ zero_extendqisi2	@ D.43747, <variable>.frame.is_long_term
	ldrb	ip, [r3, #466]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldr	sl, [r3, #488]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldr	r9, [r3, #468]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	r8, [r3, #500]	@ tmp298, <variable>.top_field.structure
	mov	r8, #2	@ tmp306,
	strb	lr, [r3, #537]	@ D.43747, <variable>.bottom_field.is_long_term
	str	r9, [r3, #540]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	ip, [r3, #538]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	r8, [r3, #536]	@ tmp306, <variable>.bottom_field.structure
	str	r1, [r3, #556]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	sl, [r3, #560]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	lr, [r3, #501]	@ D.43747, <variable>.top_field.is_long_term
	strb	ip, [r3, #502]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	r1, [r3, #520]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	sl, [r3, #524]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r9, [r3, #504]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r7, #472]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	movne	r3, r0	@, ret
	movwne	r2, #2053	@,
	movne	r0, r5	@, tmp255
	bne	.L2468	@,
.L2431:
	ldr	r3, [r4, r6, asl #2]	@ temp.6796, <variable>.DPB.fs
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2432	@,
	movw	r2, #55520	@ tmp793,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.36617,
	b	.L2432	@
.L2425:
	ldr	r3, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	mov	r0, #3	@ tmp314,
	strb	r0, [r3, #464]	@ tmp314, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp802, pos,
	addeq	r6, r6, #14	@ tmp802, tmp802,
	beq	.L2433	@,
	add	r6, r1, #6592	@ tmp802, pos,
	add	r6, r6, #14	@ tmp802, tmp802,
	ldr	r3, [r4, r6, asl #2]	@ temp.6598, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6598,
	beq	.L2433	@,
	strb	r2, [r3, #500]	@ D.36575, <variable>.top_field.structure
	ldr	r1, [r4, r6, asl #2]	@ tmp423, <variable>.DPB.fs
	ldr	r0, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	r0, [r1, #524]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r2, [r4, r6, asl #2]	@ tmp427, <variable>.DPB.fs
	ldrb	r5, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r5, [r2, #501]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	sl, [r4, r6, asl #2]	@ tmp432, <variable>.DPB.fs
	ldrb	r8, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r8, [sl, #502]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r3, [r4, r6, asl #2]	@ tmp437, <variable>.DPB.fs
	ldr	ip, [r7, #500]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [r3, #516]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	r9, [r4, r6, asl #2]	@ tmp441, <variable>.DPB.fs
	ldr	lr, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [r9, #524]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r1, [r4, r6, asl #2]	@ tmp445, <variable>.DPB.fs
	ldr	r0, [r7, #516]	@ <variable>.err_level, <variable>.err_level
	str	r0, [r1, #520]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	sl, [r4, r6, asl #2]	@ temp.6611, <variable>.DPB.fs
	ldr	r2, [sl, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [sl, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r8, r2, r5	@ D.36634, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r8, [sl, #608]	@ D.36634, <variable>.err_level
	str	r8, [sl, #484]	@ D.36634, <variable>.frame.err_level
	ldr	r3, [r4, r6, asl #2]	@ temp.6612, <variable>.DPB.fs
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	ldrneb	ip, [r7, #2]	@ zero_extendqisi2	@ iftmp.490, <variable>.non_existing
	strb	ip, [r3, #0]	@ iftmp.490, <variable>.non_existing
	ldr	lr, [r4, r6, asl #2]	@ temp.6613, <variable>.DPB.fs
	ldrb	r9, [lr, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r1, r9, #1	@ tmp459, <variable>.is_used,
	strb	r1, [lr, #1]	@ tmp459, <variable>.is_used
	ldr	r2, [r4, r6, asl #2]	@ D.36579, <variable>.DPB.fs
	add	r1, r7, #16	@, pCurrPic,
	ldrb	r0, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r5, [r2, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	r0, #1	@ <variable>.mode_skip_flag,
	orreq	r5, r5, #1	@ iftmp.491, <variable>.mode_skip_flag,
	strb	r5, [r2, #3]	@ iftmp.491, <variable>.mode_skip_flag
	mov	r2, #456	@,
	ldr	ip, [r4, r6, asl #2]	@ temp.6615, <variable>.DPB.fs
	add	r0, ip, #8	@, temp.6615,
	ldr	sl, [ip, #20]	@, <variable>.fs_image.PTS
	ldr	r5, [ip, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	str	sl, [fp, #-76]	@, %sfp
	ldrd	r8, [ip, #24]	@, temp.6615,
	strd	r8, [fp, #-52]	@,,
	ldrd	r8, [ip, #32]	@, temp.6615,
	strd	r8, [fp, #-60]	@,,
	ldr	r3, [ip, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	lr, [ip, #80]	@ OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	sl, [ip, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	str	r3, [fp, #-64]	@, %sfp
	ldr	r9, [ip, #88]	@, <variable>.fs_image.GopNum
	str	lr, [fp, #-68]	@,
	str	r9, [fp, #-72]	@, %sfp
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	ldr	r0, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	ldr	lr, [fp, #-76]	@, %sfp
	and	r2, r1, r0	@ tmp480, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r5, lr	@ tmp477, OtherFieldPts,
	cmn	r2, #1	@ tmp480,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r3, #1	@ tmp477,
	ldrd	r2, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp486,
	mov	r9, ip	@ tmp486,
	ldr	ip, [fp, #-68]	@,
	ldrne	r9, [r4, r6, asl #2]	@ tmp489, <variable>.DPB.fs
	strne	lr, [r9, #20]	@, <variable>.fs_image.PTS
	strne	r5, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldrd	r8, [fp, #-52]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp492, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r7, #40]	@, pCurrPic,
	strd	r8, [fp, #-52]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp492,
	ldrd	r0, [fp, #-60]	@,,
	ldr	r3, [r4, r6, asl #2]	@ tmp496, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [fp, #-52]	@,,
.L2443:
	ldrd	r8, [fp, #-52]	@,,
	ldr	r2, [r7, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r7, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp496,
	ldr	r0, [r4, r6, asl #2]	@ tmp500, <variable>.DPB.fs
	ldr	r1, [r7, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	r2, [r0, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r0, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r3, [r4, r6, asl #2]	@ tmp505, <variable>.DPB.fs
	ldr	r2, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, ip	@ <variable>.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	strls	lr, [r3, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	ip, [r3, #80]	@, OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	r0, [r4, r6, asl #2]	@ tmp510, <variable>.DPB.fs
	cmp	r1, r9	@ <variable>.fs_image.DistanceBeforeFirstFrame,
	strls	r1, [r0, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r9, [r0, #84]	@,, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [fp, #-72]	@, %sfp
	ldr	r3, [r4, r6, asl #2]	@ tmp515, <variable>.DPB.fs
	cmp	r2, ip	@ <variable>.fs_image.GopNum,
	strls	r2, [r3, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	ip, [r3, #88]	@,, <variable>.fs_image.GopNum
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	beq	.L2444	@,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2444	@,
.L2445:
	ldr	r3, [r4, r6, asl #2]	@ temp.6629, <variable>.DPB.fs
	ldr	r1, [r3, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #524]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #604]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #604]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp538, <variable>.DPB.fs
	ldr	lr, [r7, #492]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #588]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6633, <variable>.DPB.fs
	ldr	ip, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #516]	@ <variable>.top_field.poc, <variable>.top_field.poc
	add	r3, ip, #6656	@ tmp545, <variable>.apc_idc,
	add	r1, r3, #34	@ tmp545, tmp545,
	add	ip, r4, r1, asl #2	@, tmp550, pH264Ctx, tmp545,
	str	r0, [ip, #4]	@ <variable>.top_field.poc, <variable>.APC.poc
	b	.L2431	@
.L2469:
	ldr	r0, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	mov	lr, #3	@ tmp554,
	strb	lr, [r0, #464]	@ tmp554, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp802, pos,
	addeq	r6, r6, #14	@ tmp802, tmp802,
	beq	.L2446	@,
	add	r6, r1, #6592	@ tmp802, pos,
	add	r6, r6, #14	@ tmp802, tmp802,
	ldr	r3, [r4, r6, asl #2]	@ temp.6681, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6681,
	beq	.L2446	@,
	strb	r2, [r3, #536]	@ D.36575, <variable>.bottom_field.structure
	ldr	r1, [r4, r6, asl #2]	@ tmp659, <variable>.DPB.fs
	ldr	r0, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	str	r0, [r1, #540]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	r2, [r4, r6, asl #2]	@ tmp663, <variable>.DPB.fs
	ldrb	r5, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r5, [r2, #537]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	sl, [r4, r6, asl #2]	@ tmp668, <variable>.DPB.fs
	ldrb	r8, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r8, [sl, #538]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	r3, [r4, r6, asl #2]	@ tmp673, <variable>.DPB.fs
	ldr	ip, [r7, #504]	@ <variable>.bottompoc, <variable>.bottompoc
	str	ip, [r3, #552]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r9, [r4, r6, asl #2]	@ tmp677, <variable>.DPB.fs
	ldr	lr, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [r9, #560]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r1, [r4, r6, asl #2]	@ tmp681, <variable>.DPB.fs
	ldr	r0, [r7, #516]	@ <variable>.err_level, <variable>.err_level
	str	r0, [r1, #556]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	sl, [r4, r6, asl #2]	@ temp.6694, <variable>.DPB.fs
	ldr	r2, [sl, #556]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [sl, #520]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r8, r2, r5	@ temp.6697, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r8, [sl, #608]	@ temp.6697, <variable>.err_level
	str	r8, [sl, #484]	@ temp.6697, <variable>.frame.err_level
	ldr	r3, [r4, r6, asl #2]	@ temp.6698, <variable>.DPB.fs
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	ldrneb	ip, [r7, #2]	@ zero_extendqisi2	@ iftmp.494, <variable>.non_existing
	strb	ip, [r3, #0]	@ iftmp.494, <variable>.non_existing
	ldr	lr, [r4, r6, asl #2]	@ temp.6700, <variable>.DPB.fs
	ldrb	r9, [lr, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r1, r9, #2	@ tmp695, <variable>.is_used,
	strb	r1, [lr, #1]	@ tmp695, <variable>.is_used
	ldr	r2, [r4, r6, asl #2]	@ temp.6569, <variable>.DPB.fs
	add	r1, r7, #16	@, pCurrPic,
	ldrb	r0, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r5, [r2, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	r0, #1	@ <variable>.mode_skip_flag,
	orreq	r5, r5, #2	@ iftmp.495, <variable>.mode_skip_flag,
	strb	r5, [r2, #3]	@ iftmp.495, <variable>.mode_skip_flag
	mov	r2, #456	@,
	ldr	ip, [r4, r6, asl #2]	@ temp.6704, <variable>.DPB.fs
	add	r0, ip, #8	@, temp.6704,
	ldr	sl, [ip, #20]	@, <variable>.fs_image.PTS
	ldr	r5, [ip, #16]	@ OtherFieldPts.6705, <variable>.fs_image.PTS
	str	sl, [fp, #-76]	@, %sfp
	ldrd	r8, [ip, #24]	@, temp.6704,
	strd	r8, [fp, #-52]	@,,
	ldrd	r8, [ip, #32]	@, temp.6704,
	strd	r8, [fp, #-60]	@,,
	ldr	r3, [ip, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	lr, [ip, #80]	@ OtherFieldDispFrameDistance.6709, <variable>.fs_image.DispFrameDistance
	ldr	sl, [ip, #76]	@ OtherFieldDispEnableFlag.6708, <variable>.fs_image.DispEnableFlag
	str	r3, [fp, #-64]	@, %sfp
	ldr	r9, [ip, #88]	@, <variable>.fs_image.GopNum
	str	lr, [fp, #-68]	@,
	str	r9, [fp, #-72]	@, %sfp
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	ldr	r0, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	ldr	lr, [fp, #-76]	@, %sfp
	and	r2, r1, r0	@ tmp716, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r5, lr	@ tmp713, OtherFieldPts.6705,
	cmn	r2, #1	@ tmp716,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r3, #1	@ tmp713,
	ldrd	r2, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp722,
	mov	r9, ip	@ tmp722,
	ldr	ip, [fp, #-68]	@,
	ldrne	r9, [r4, r6, asl #2]	@ tmp725, <variable>.DPB.fs
	strne	lr, [r9, #20]	@, <variable>.fs_image.PTS
	strne	r5, [r9, #16]	@ OtherFieldPts.6705, <variable>.fs_image.PTS
	ldrd	r8, [fp, #-52]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp728, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r7, #40]	@, pCurrPic,
	strd	r8, [fp, #-52]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp728,
	ldrd	r0, [fp, #-60]	@,,
	ldr	r3, [r4, r6, asl #2]	@ tmp732, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [fp, #-52]	@,,
.L2458:
	ldrd	r8, [fp, #-52]	@,,
	ldr	r2, [r7, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r7, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp732,
	ldr	r0, [r4, r6, asl #2]	@ tmp736, <variable>.DPB.fs
	ldr	r1, [r7, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.6708
	strls	r2, [r0, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r0, #76]	@, OtherFieldDispEnableFlag.6708, <variable>.fs_image.DispEnableFlag
	ldr	r3, [r4, r6, asl #2]	@ tmp741, <variable>.DPB.fs
	ldr	r2, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, ip	@ <variable>.fs_image.DispFrameDistance, OtherFieldDispFrameDistance.6709
	strls	lr, [r3, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	ip, [r3, #80]	@, OtherFieldDispFrameDistance.6709, <variable>.fs_image.DispFrameDistance
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	r0, [r4, r6, asl #2]	@ tmp746, <variable>.DPB.fs
	cmp	r1, r9	@ <variable>.fs_image.DistanceBeforeFirstFrame,
	strls	r1, [r0, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r9, [r0, #84]	@,, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [fp, #-72]	@, %sfp
	ldr	r3, [r4, r6, asl #2]	@ tmp751, <variable>.DPB.fs
	cmp	r2, ip	@ <variable>.fs_image.GopNum,
	strls	r2, [r3, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	ip, [r3, #88]	@,, <variable>.fs_image.GopNum
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	beq	.L2459	@,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2459	@,
.L2460:
	ldr	r3, [r4, r6, asl #2]	@ temp.6742, <variable>.DPB.fs
	ldr	r1, [r3, #560]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #524]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #604]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #604]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp774, <variable>.DPB.fs
	ldr	lr, [r7, #492]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #588]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6749, <variable>.DPB.fs
	ldr	ip, [r2, #616]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #552]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	add	r3, ip, #6656	@ tmp781, <variable>.apc_idc,
	add	r1, r3, #50	@ tmp781, tmp781,
	add	ip, r4, r1, asl #2	@, tmp786, pH264Ctx, tmp781,
	str	r0, [ip, #4]	@ <variable>.bottom_field.poc, <variable>.APC.poc
	b	.L2431	@
.L2446:
	ldr	r0, [r7, #472]	@ temp.6751, <variable>.frame_store
	mov	r2, #2	@ tmp561,
	str	r0, [r4, r6, asl #2]	@ temp.6751, <variable>.DPB.fs
	strb	r2, [r0, #536]	@ tmp561, <variable>.bottom_field.structure
	ldr	lr, [r4, r6, asl #2]	@ tmp565, <variable>.DPB.fs
	ldr	r5, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [lr, #540]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp569, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r3, #537]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r1, [r4, r6, asl #2]	@ tmp574, <variable>.DPB.fs
	ldrb	r0, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r0, [r1, #538]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	lr, [r4, r6, asl #2]	@ tmp579, <variable>.DPB.fs
	ldr	r5, [r7, #504]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r5, [lr, #552]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp583, <variable>.DPB.fs
	ldr	ip, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	ip, [r3, #560]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r1, [r4, r6, asl #2]	@ tmp587, <variable>.DPB.fs
	ldr	r0, [r7, #516]	@ <variable>.err_level, <variable>.err_level
	str	r0, [r1, #556]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6764, <variable>.DPB.fs
	ldr	r5, [lr, #520]	@ temp.6765, <variable>.top_field.err_level
	str	r5, [lr, #608]	@ temp.6765, <variable>.err_level
	str	r5, [lr, #484]	@ temp.6765, <variable>.frame.err_level
	ldr	r3, [r4, r6, asl #2]	@ tmp593, <variable>.DPB.fs
	ldrb	ip, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	ip, [r3, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp598, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp561, <variable>.is_used
	ldr	r0, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp603, <variable>.DPB.fs
	ldrb	r5, [r0, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [lr, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r3, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp609, <variable>.DPB.fs
	ldr	r1, [r3, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [ip, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2448	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2448	@,
.L2449:
	ldr	r0, [r4, r6, asl #2]	@ tmp626, <variable>.DPB.fs
	mov	r5, #0	@ tmp627,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #456	@,
	str	r5, [r0, #600]	@ tmp627, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6, asl #2]	@ tmp630, <variable>.DPB.fs
	add	r0, lr, #8	@, tmp630,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp637, <variable>.DPB.fs
	ldr	r1, [r7, #540]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp641, <variable>.DPB.fs
	ldr	ip, [r7, #480]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #576]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp645, <variable>.DPB.fs
	ldr	ip, [r7, #492]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #588]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ temp.6789, <variable>.DPB.fs
	ldr	r1, [r7, #508]	@ temp.6790, <variable>.pic_type
	str	r1, [r3, #604]	@ temp.6790, <variable>.pic_type
	str	r1, [r3, #560]	@ temp.6790, <variable>.bottom_field.pic_type
	ldrb	r1, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	ip, [r4, r6, asl #2]	@ temp.6791, <variable>.DPB.fs
	cmp	r1, #1	@ <variable>.mode_skip_flag,
	moveq	r1, r2	@ iftmp.492,
	movne	r1, r5	@ iftmp.492,
	strb	r1, [ip, #3]	@ iftmp.492, <variable>.mode_skip_flag
	ldr	r1, [r7, #472]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6794
	movne	r3, r0	@, ret.6794
	movwne	r2, #2230	@,
	movne	r0, r5	@, tmp627
	beq	.L2431	@,
.L2468:
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.36617,
	b	.L2432	@
.L2433:
	ldr	r1, [r7, #472]	@ temp.6634, <variable>.frame_store
	mov	r2, #1	@ tmp321,
	str	r1, [r4, r6, asl #2]	@ temp.6634, <variable>.DPB.fs
	strb	r2, [r1, #500]	@ tmp321, <variable>.top_field.structure
	ldr	r0, [r4, r6, asl #2]	@ tmp325, <variable>.DPB.fs
	ldr	r5, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [r0, #504]	@ <variable>.frame_store, <variable>.top_field.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp329, <variable>.DPB.fs
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	lr, [ip, #501]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp334, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #502]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r0, [r4, r6, asl #2]	@ tmp339, <variable>.DPB.fs
	ldr	r5, [r7, #500]	@ <variable>.toppoc, <variable>.toppoc
	str	r5, [r0, #516]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	ip, [r4, r6, asl #2]	@ tmp343, <variable>.DPB.fs
	ldr	lr, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [ip, #524]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp347, <variable>.DPB.fs
	ldr	r1, [r7, #516]	@ <variable>.err_level, <variable>.err_level
	str	r1, [r3, #520]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	r0, [r4, r6, asl #2]	@ temp.6647, <variable>.DPB.fs
	ldr	r5, [r0, #520]	@ temp.6648, <variable>.top_field.err_level
	str	r5, [r0, #608]	@ temp.6648, <variable>.err_level
	str	r5, [r0, #484]	@ temp.6648, <variable>.frame.err_level
	ldr	ip, [r4, r6, asl #2]	@ tmp353, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [ip, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp358, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp321, <variable>.is_used
	ldr	r3, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r4, r6, asl #2]	@ tmp363, <variable>.DPB.fs
	ldrb	r5, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r0, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	ip, [r7, #472]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp369, <variable>.DPB.fs
	ldr	r1, [ip, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [lr, #596]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2435	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2435	@,
.L2436:
	ldr	lr, [r4, r6, asl #2]	@ tmp386, <variable>.DPB.fs
	mov	r5, #0	@ tmp387,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #456	@,
	str	r5, [lr, #600]	@ tmp387, <variable>.MbaffFrameFlag
	ldr	r0, [r4, r6, asl #2]	@ tmp390, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp390,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp397, <variable>.DPB.fs
	ldr	r1, [r7, #540]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #612]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp401, <variable>.DPB.fs
	ldr	ip, [r7, #480]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #576]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp405, <variable>.DPB.fs
	ldr	ip, [r7, #492]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #588]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp409, <variable>.DPB.fs
	ldr	r1, [r7, #508]	@ <variable>.pic_type, <variable>.pic_type
	str	r1, [r3, #604]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp413, <variable>.DPB.fs
	ldrb	ip, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, r2	@ <variable>.mode_skip_flag,
	movne	r1, #0	@, tmp415
	moveq	r1, #1	@, tmp415
	strb	r1, [r3, #3]	@ tmp415, <variable>.mode_skip_flag
	ldr	r1, [r7, #472]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6677
	beq	.L2431	@,
	mov	r3, r0	@, ret.6677
	movw	r2, #2099	@,
	mov	r0, r5	@, tmp387
	b	.L2468	@
.L2470:
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #0	@ <variable>.is_short_term,
	beq	.L2428	@,
	b	.L2427	@
.L2448:
	ldr	r3, [r4, r6, asl #2]	@ tmp616, <variable>.DPB.fs
	mov	r1, #2	@ tmp617,
	strb	r1, [r3, #2]	@ tmp617, <variable>.is_reference
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	ldreq	ip, [r4, r6, asl #2]	@ tmp622, <variable>.DPB.fs
	ldreq	r1, [r7, #484]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [ip, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2449	@
.L2435:
	ldr	ip, [r4, r6, asl #2]	@ tmp376, <variable>.DPB.fs
	mov	lr, #1	@ tmp377,
	strb	lr, [ip, #2]	@ tmp377, <variable>.is_reference
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, lr	@ <variable>.is_long_term,
	ldreq	r3, [r4, r6, asl #2]	@ tmp382, <variable>.DPB.fs
	ldreq	lr, [r7, #484]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	lr, [r3, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2436	@
.L2459:
	ldr	r3, [r4, r6, asl #2]	@ temp.6737, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #2	@ tmp760, <variable>.is_reference,
	strb	r1, [r3, #2]	@ tmp760, <variable>.is_reference
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r6, asl #2]	@ tmp765, <variable>.DPB.fs
	ldreq	r1, [r7, #484]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2460	@
.L2444:
	ldr	r3, [r4, r6, asl #2]	@ temp.6625, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #1	@ tmp524, <variable>.is_reference,
	strb	r1, [r3, #2]	@ tmp524, <variable>.is_reference
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r6, asl #2]	@ tmp529, <variable>.DPB.fs
	ldreq	r1, [r7, #484]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #584]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2445	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
.LFB1409:
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
	movw	ip, #52256	@ tmp185,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #52259	@ tmp182,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r5, #19816	@ tmp181,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	movw	r3, #19812	@ tmp179,
	cmp	r6, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp184
	moveq	r2, #1	@, tmp184
	mov	r6, #0	@ tmp180,
	cmp	r0, #0	@ <variable>.CurrPic.state,
	str	r2, [r4, r5]	@ tmp184, <variable>.CurrPOC.last_pic_bottom_field
	str	r6, [r4, r3]	@ tmp180, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2555	@,
	movw	r5, #55448	@ tmp193,
	movw	r2, #55536	@ tmp191,
	ldr	r0, [r4, r5]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movw	r3, #55532	@ tmp190,
	ldr	lr, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r0, #2	@ <variable>.OldDecMode,
	str	lr, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevStorePicCounter
	beq	.L2556	@,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #12]	@ prephitmp.6831, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ prephitmp.6831,
	ble	.L2557	@,
.L2477:
	movw	r0, #52258	@ tmp209,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	ip, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2479	@,
	movw	r6, #52259	@ tmp212,
	movw	r5, #52728	@ tmp211,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ temp.6865, <variable>.CurrPic.structure
	ldr	r6, [r4, r5]	@ pFrameStore, <variable>.CurrPic.frame_store
	sub	lr, r1, #1	@ tmp213, temp.6865,
	uxtb	r3, lr	@ tmp214, tmp213
	cmp	r3, #1	@ tmp214,
	movhi	r0, #0	@, one_fld_flg
	movls	r0, #1	@, one_fld_flg
	cmp	r1, #0	@ temp.6865,
	beq	.L2480	@,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r3, #0	@ <variable>.is_used,
	moveq	ip, r0	@, tmp222, one_fld_flg
	orrne	ip, r0, #1	@,, tmp222, one_fld_flg
	cmp	ip, #0	@ tmp222,
	bne	.L2480	@,
.L2479:
	cmp	r2, #2	@ prephitmp.6831,
	beq	.L2558	@,
.L2478:
	movw	lr, #52744	@ tmp305,
	ldr	r6, [r4, lr]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r6, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2497	@,
	movw	r3, #55512	@ tmp307,
	movw	r5, #52772	@ tmp308,
	ldr	r3, [r4, r3]	@ D.37336, <variable>.ref_error_thr
	ldr	r2, [r4, r5]	@ D.37337, <variable>.CurrPic.err_level
	cmp	r3, r2	@ D.37336, D.37337
	bcs	.L2500	@,
	movw	r0, #52258	@ tmp309,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r5, #0	@ <variable>.CurrPic.non_existing,
	beq	.L2559	@,
.L2500:
	mov	r0, r4	@, pH264Ctx
	bl	Marking	@
	subs	r2, r0, #0	@ ret.6891,
	bne	.L2560	@,
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2561	@,
.L2497:
	movw	lr, #52257	@ tmp320,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r6, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2562	@,
.L2503:
	movw	r1, #52744	@ tmp339,
	ldr	r6, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r6, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2563	@,
	movw	sl, #26616	@ tmp368,
	ldr	r3, [r4, sl]	@ prephitmp.6931, <variable>.DPB.size
.L2513:
	movw	r7, #26620	@ tmp431,
	add	r8, r4, #26368	@ ivtmp.6855, pH264Ctx,
	ldr	r1, [r4, r7]	@ prephitmp.6833, <variable>.DPB.used_size
	add	r6, r8, #56	@ ivtmp.6855, ivtmp.6855,
	movw	sl, #52748	@ tmp438,
	movw	r8, #52744	@ tmp437,
	cmp	r1, r3	@ prephitmp.6833, prephitmp.6931
	bcc	.L2564	@,
.L2525:
	movls	r3, r1	@ prephitmp.6931, prephitmp.6833
	strhi	r3, [r4, r7]	@ prephitmp.6931, <variable>.DPB.used_size
	cmp	r3, #0	@ prephitmp.6931,
	moveq	r1, r3	@ pos.6926, prephitmp.6931
	mvneq	r2, #-2147483648	@ min_poc,
	beq	.L2519	@,
	tst	r3, #1	@ prephitmp.6931,
	mov	r1, #0	@ pos.6926,
	mov	r0, r6	@ ivtmp.6855, ivtmp.6855
	mov	lr, r1	@ pos, pos.6926
	mvn	ip, #-2147483648	@ min_poc.6929,
	bne	.L2520	@,
	ldr	r2, [r6, #0]	@ D.43754, <variable>.DPB.fs
	ldr	ip, [r2, #588]	@ min_poc, <variable>.poc
	cmn	ip, #-2147483647	@ min_poc,
	bge	.L2536	@,
	ldrb	r0, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2536	@,
	add	r0, r6, #4	@ ivtmp.6855, ivtmp.6855,
	mov	lr, #1	@ pos,
.L2520:
	ldr	r5, [r0, #0]	@ D.43754, <variable>.DPB.fs
	ldr	r2, [r5, #588]	@ min_poc, <variable>.poc
	cmp	r2, ip	@ min_poc, min_poc.6929
	bge	.L2517	@,
.L2565:
	ldrb	r5, [r5, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r5, #0	@ <variable>.is_in_dpb,
	movne	r1, lr	@ pos.6926, pos
	beq	.L2517	@,
	add	lr, lr, #1	@ tmp442, pos,
	add	r5, r0, #4	@ tmp443, ivtmp.6855,
	cmp	lr, r3	@ tmp442, prephitmp.6931
	beq	.L2519	@,
.L2566:
	ldr	r0, [r0, #4]	@ D.43754, <variable>.DPB.fs
	ldr	ip, [r0, #588]	@ min_poc, <variable>.poc
	cmp	ip, r2	@ min_poc, min_poc
	bge	.L2538	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2538	@,
	mov	r1, lr	@ pos.6926, tmp442
.L2553:
	add	r0, r5, #4	@ ivtmp.6855, tmp443,
	add	lr, lr, #1	@ pos, tmp442,
	ldr	r5, [r0, #0]	@ D.43754, <variable>.DPB.fs
	ldr	r2, [r5, #588]	@ min_poc, <variable>.poc
	cmp	r2, ip	@ min_poc, min_poc.6929
	blt	.L2565	@,
.L2517:
	add	lr, lr, #1	@ tmp442, pos,
	mov	r2, ip	@ min_poc, min_poc.6929
	cmp	lr, r3	@ tmp442, prephitmp.6931
	add	r5, r0, #4	@ tmp443, ivtmp.6855,
	bne	.L2566	@,
.L2519:
	ldr	lr, [r4, r8]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2521	@,
	ldr	ip, [r4, sl]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	cmp	ip, r2	@ <variable>.CurrPic.thispoc, min_poc
	blt	.L2567	@,
.L2521:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret.6906,
	beq	.L2524	@,
	movw	r2, #26616	@ tmp366,
	ldr	r1, [r4, r7]	@ prephitmp.6833, <variable>.DPB.used_size
	ldr	r3, [r4, r2]	@ prephitmp.6931, <variable>.DPB.size
	cmp	r1, r3	@ prephitmp.6833, prephitmp.6931
	bcs	.L2525	@,
.L2564:
	movw	ip, #52744	@ tmp370,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2526	@,
	movw	r0, #52260	@ tmp372,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L2526	@,
	mov	r5, #26624	@ tmp374,
	ldr	r3, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L2526	@,
	add	r7, r4, #26368	@ ivtmp.6850, pH264Ctx,
	mov	lr, #52736	@ tmp427,
	add	r3, r7, #120	@ ivtmp.6850, ivtmp.6850,
	mov	r6, r2	@ tmp428, i.6911
	movw	r7, #54000	@ tmp429,
	b	.L2529	@
.L2527:
	ldr	r1, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.6850, ivtmp.6850,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.6911
	bls	.L2568	@,
.L2529:
	ldr	r1, [r3, #0]	@ D.37403, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.6911, i.6911,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	ldr	ip, [r1, #576]	@ <variable>.frame_num, <variable>.frame_num
	cmp	ip, r0	@ <variable>.frame_num, <variable>.CurrPic.frame_num
	bne	.L2527	@,
	strb	r6, [r1, #2]	@ tmp428, <variable>.is_reference
	ldr	r1, [r3, #0]	@ tmp426, <variable>.DPB.fs_ref
	ldrb	r8, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r8, #1	@ <variable>.is_in_dpb,
	streq	r8, [r1, #596]	@ <variable>.is_in_dpb, <variable>.is_displayed
	ldreq	r1, [r3, #0]	@ tmp384, <variable>.DPB.fs_ref
	streqb	r6, [r1, #4]	@ tmp428, <variable>.is_in_dpb
	ldreq	r1, [r3, #0]	@ tmp426, <variable>.DPB.fs_ref
	ldr	r8, [r4, r7]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	ip, [r1, #612]	@ D.37411, <variable>.pmv_address_idc
	add	r0, ip, #13440	@ tmp389, D.37411,
	cmp	ip, r8	@ D.37411, <variable>.TotalPmvNum
	add	r0, r0, #42	@ tmp389, tmp389,
	strne	r6, [r4, r0, asl #2]	@ tmp428, <variable>.PmvStoreUsedFlag
	strne	r8, [r1, #612]	@ <variable>.TotalPmvNum, <variable>.pmv_address_idc
	b	.L2527	@
.L2536:
	mvn	ip, #-2147483648	@ min_poc,
	mov	lr, #1	@ pos,
	add	r0, r6, #4	@ ivtmp.6855, ivtmp.6855,
	b	.L2520	@
.L2563:
	mov	r3, #26624	@ tmp342,
	movw	r2, #26628	@ tmp343,
	ldr	lr, [r4, r3]	@ D.37375, <variable>.DPB.ref_frames_in_buffer
	movw	r5, #26616	@ tmp341,
	ldr	ip, [r4, r2]	@ D.37376, <variable>.DPB.ltref_frames_in_buffer
	ldr	r3, [r4, r5]	@ prephitmp.6931, <variable>.DPB.size
	add	r2, ip, lr	@ tmp344, D.37376, D.37375
	cmp	r3, r2	@ prephitmp.6931, tmp344
	bhi	.L2513	@,
	movw	r2, #3537	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	str	lr, [sp, #0]	@ D.37375,
	str	ip, [sp, #4]	@ D.37376,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3540	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2480:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2569	@,
.L2481:
	cmp	r1, #0	@ temp.6865,
	beq	.L2484	@,
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #0	@ <variable>.is_used,
	beq	.L2479	@,
.L2484:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2570	@,
.L2485:
	add	r3, r4, #52224	@ pOutPic, pH264Ctx,
	add	r8, r3, #32	@ pOutPic, pOutPic,
.L2486:
	ldrb	r1, [r8, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r1, #0	@ <variable>.structure,
	beq	.L2487	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r3, #1	@ <variable>.field_pair_flag,
	beq	.L2571	@,
.L2487:
	ldr	r7, [r8, #516]	@ <variable>.err_level, <variable>.err_level
	str	r7, [r6, #608]	@ <variable>.err_level, <variable>.err_level
.L2488:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pOutFrameStore
	movw	r7, #55520	@ tmp247,
	bl	GetImagePara	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L2572	@,
	ldrd	r0, [r8, #32]	@, pOutPic,
	ldrd	r2, [r8, #24]	@, pOutPic,
	ldr	ip, [r8, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strd	r0, [r5, #16]	@, pImg,
	ldrd	r0, [r8, #40]	@, pOutPic,
	strd	r2, [r5, #8]	@, pImg,
	ldr	lr, [r8, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strd	r0, [r5, #24]	@, pImg,
	ldr	r3, [r8, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r1, [r8, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	str	lr, [r5, #68]	@ <variable>.fs_image.DispEnableFlag, <variable>.DispEnableFlag
	str	r3, [r5, #76]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r1, [r5, #72]	@ <variable>.fs_image.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r5, #80]	@ <variable>.fs_image.GopNum, <variable>.GopNum
	ldr	r3, [r6, #608]	@ D.37296, <variable>.err_level
	cmp	r3, #0	@ D.37296,
	str	r3, [r5, #180]	@ D.37296, <variable>.error_level
	beq	.L2490	@,
	ldr	r8, [r5, #140]	@ <variable>.format, <variable>.format
	ands	r8, r8, #3	@ tmp261, <variable>.format,
	beq	.L2573	@,
.L2491:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [lr, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r1, r3	@ <variable>.s32OutErrThr, D.37296
	bls	.L2493	@,
.L2490:
	movw	r7, #55520	@ tmp269,
	ldr	r1, [r6, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L2494	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #572]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2494:
	mov	r1, r5	@, pImg
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	ip, #55528	@ tmp282,
	ldr	r2, [r4, ip]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	movw	r5, #55544	@ tmp278,
	ldr	r0, [r4, r5]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r1, #2	@ tmp289,
	cmp	r2, #2	@ <variable>.FirstFrameDisplayed,
	add	r3, r0, #2	@ tmp281, <variable>.PicOutCounter,
	str	r3, [r4, r5]	@ tmp281, <variable>.PicOutCounter
	movne	r5, #1	@ tmp287,
	strne	r5, [r6, #592]	@ tmp287, <variable>.eFoState
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r5, #55528	@ tmp288,
	str	r1, [r4, r5]	@ tmp289, <variable>.FirstFrameDisplayed
	ldr	r2, [lr, #12]	@ prephitmp.6831, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ prephitmp.6831,
	bne	.L2478	@,
.L2558:
	movw	r0, #52744	@ tmp291,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2497	@,
	mov	r0, r4	@, pH264Ctx
	movw	r5, #26620	@ tmp293,
	bl	SimpleSlideDPB	@
	add	r1, r4, #52224	@, pH264Ctx,
	add	r2, r1, #32	@,,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r5]	@, <variable>.DPB.used_size
	bl	InsertFrmInDPB	@
	subs	r6, r0, #0	@ ret.6882,
	bne	.L2574	@,
	ldr	ip, [r4, r5]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	add	r2, ip, #1	@ tmp303, <variable>.DPB.used_size,
	str	r2, [r4, r5]	@ tmp303, <variable>.DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r2, r6	@, ret.6882
	movw	r1, #:lower16:.LC86	@,
	movw	r3, #3454	@,
	movt	r1, #:upper16:.LC86	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	mov	r5, #0	@ ret,
	b	.L2531	@
.L2538:
	mov	ip, r2	@ min_poc, min_poc
	b	.L2553	@
.L2524:
	mov	r3, r0	@, ret.6906
	mov	r6, r0	@ ret.6906, ret.6906
	movw	r2, #3565	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mov	r2, r6	@, ret.6906
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3566	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L2473:
	movw	r6, #52728	@ tmp412,
	movw	r5, #55520	@ tmp409,
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r5, #0	@ ret,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #3613	@,
	movt	r1, #:upper16:.LC87	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, #0	@ tmp416,
	strb	ip, [r1, #4]	@ tmp416, <variable>.is_in_dpb
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	ip, [r0, #1]	@ tmp416, <variable>.is_used
.L2531:
	movw	lr, #52256	@ tmp422,
	mov	r2, #0	@ tmp423,
	mov	r0, r5	@, ret
	strb	r2, [r4, lr]	@ tmp423, <variable>.CurrPic.state
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2557:
	movw	r5, #55528	@ tmp207,
	ldr	lr, [r4, r5]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	lr, #2	@ <variable>.FirstFrameDisplayed,
	bne	.L2477	@,
	b	.L2478	@
.L2562:
	movw	ip, #52728	@ tmp322,
	movw	r3, #53376	@ tmp323,
	ldr	r0, [r4, ip]	@ D.37356, <variable>.CurrPic.frame_store
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r5	@ D.37356, <variable>.pDirectOutBuf
	beq	.L2575	@,
.L2504:
	movw	r5, #26620	@ tmp325,
	ldr	lr, [r4, r5]	@ temp.6927, <variable>.DPB.used_size
	cmp	lr, #0	@ temp.6927,
	beq	.L2503	@,
	movw	r3, #26424	@ tmp326,
	ldr	r2, [r4, r3]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r0, r2	@ D.37356, <variable>.DPB.fs
	moveq	r1, #0	@ i,
	beq	.L2507	@,
	tst	lr, #1	@ temp.6927,
	add	r3, r4, #26368	@ tmp338, pH264Ctx,
	add	r2, r3, #60	@ ivtmp.6860, tmp338,
	mov	r1, #0	@ i,
	bne	.L2509	@,
	ldr	ip, [r2, #0]	@ D.37366, <variable>.DPB.fs
	mov	r1, #1	@ i,
	add	r2, r3, #64	@ ivtmp.6860, tmp338,
	cmp	r0, ip	@ D.37356, D.37366
	bne	.L2509	@,
	b	.L2507	@
.L2546:
	ldr	r5, [r2, #4]	@ D.37366, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.6860, tmp448,
	cmp	r0, r5	@ D.37356, D.37366
	beq	.L2507	@,
.L2509:
	add	r1, r1, #1	@ i, i,
	mov	r3, r2	@ tmp448, ivtmp.6860
	cmp	r1, lr	@ i, temp.6927
	bcs	.L2503	@,
	ldr	ip, [r3], #4	@ D.37366, <variable>.DPB.fs
	cmp	r0, ip	@ D.37356, D.37366
	bne	.L2546	@,
.L2507:
	add	r0, r4, #52224	@, pH264Ctx,
	add	r2, r0, #32	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@ ret.6895,
	mov	r5, r0	@ ret.6895,
	beq	.L2576	@,
	mov	r0, r4	@, pH264Ctx
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r1, #:lower16:.LC86	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3524	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2531	@
.L2569:
	movw	r3, #55528	@ tmp223,
	ldr	ip, [r4, r3]	@ temp.6866, <variable>.FirstFrameDisplayed
	cmp	ip, #0	@ temp.6866,
	bne	.L2482	@,
	add	lr, r4, #52224	@, pH264Ctx,
	add	r0, r4, #52736	@, pH264Ctx,
	add	r1, lr, #32	@,,
	mov	r2, #1	@ tmp225,
	add	r0, r0, #64	@,,
	str	r2, [r4, r3]	@ tmp225, <variable>.FirstFrameDisplayed
	mov	r2, #544	@,
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ prephitmp.6831, <variable>.s32DecOrderOutput
	b	.L2479	@
.L2561:
	movw	r1, #:lower16:.LC93	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	b	.L2497	@
.L2556:
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	movw	r3, #54000	@ tmp197,
	ldr	ip, [r4, r3]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	movw	r3, #3283	@,
	mov	r5, r0	@ ret,
	movw	r0, #52796	@ tmp196,
	ldr	r1, [r4, r0]	@ D.37240, <variable>.CurrPic.pmv_address_idc
	mov	r2, r5	@, ret
	cmp	r1, ip	@ D.37240, <variable>.TotalPmvNum
	strne	ip, [r4, r0]	@ <variable>.TotalPmvNum, <variable>.CurrPic.pmv_address_idc
	addne	r1, r1, #13440	@ tmp199, D.37240,
	mov	r0, #14	@,
	addne	r1, r1, #42	@ tmp199, tmp199,
	strne	r6, [r4, r1, asl #2]	@ tmp180, <variable>.PmvStoreUsedFlag
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
.L2476:
	cmn	r5, #1	@ ret,
	bne	.L2531	@,
	b	.L2473	@
.L2482:
	cmp	ip, #1	@ temp.6866,
	bne	.L2481	@,
.L2483:
	add	r6, r4, #52736	@ pOutPic, pH264Ctx,
	movw	ip, #53272	@ tmp237,
	add	r8, r6, #64	@ pOutPic, pOutPic,
	ldr	r6, [r4, ip]	@ pOutFrameStore, <variable>.LastPic.frame_store
	b	.L2486	@
.L2568:
	movw	r5, #26620	@ tmp397,
	ldr	r1, [r4, r5]	@ prephitmp.6833, <variable>.DPB.used_size
.L2526:
	add	r2, r4, #52224	@, pH264Ctx,
	mov	r0, r4	@, pH264Ctx
	add	r2, r2, #32	@,,
	bl	InsertFrmInDPB	@
	movw	r2, #26620	@ tmp401,
	ldr	r1, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	r3, #53372	@ tmp400,
	str	r1, [r4, r3]	@ <variable>.DPB.used_size, <variable>.PrevPic.Dpb_pos
	subs	r3, r0, #0	@ ret.6917,
	bne	.L2577	@,
	add	lr, r1, #1	@ tmp408, <variable>.DPB.used_size,
	mov	r0, r4	@, pH264Ctx
	str	lr, [r4, r2]	@ tmp408, <variable>.DPB.used_size
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2531	@
.L2567:
	movw	r1, #55448	@ tmp356,
	ldr	r0, [r4, r1]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r0, #2	@ <variable>.OldDecMode,
	beq	.L2578	@,
.L2522:
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2579	@,
.L2523:
	movw	r1, #:lower16:.LC86	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3559	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2476	@
.L2570:
	movw	r8, #55528	@ tmp234,
	ldr	r7, [r4, r8]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r7, #1	@ <variable>.FirstFrameDisplayed,
	bne	.L2485	@,
	b	.L2483	@
.L2575:
	cmp	r0, #0	@ D.37356,
	beq	.L2504	@,
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2580	@,
.L2508:
	movw	r1, #:lower16:.LC86	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3506	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2476	@
.L2578:
	movw	r5, #52259	@ tmp358,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	movwne	r3, #52728	@ tmp361,
	ldrne	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	addne	r3, r3, #652	@ tmp360, tmp360,
	strne	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.pLastFieldBuf
	b	.L2522	@
.L2573:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC90	@,
	movw	r2, #3385	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp265,
	movt	ip, #:upper16:g_event_report	@ tmp265,
	ldr	r3, [ip, #0]	@ g_event_report.532, g_event_report
	cmp	r3, #0	@ g_event_report.532,
	beq	.L2492	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r8	@, tmp261
	mov	r1, #111	@,
	blx	r3	@ g_event_report.532
.L2492:
	ldr	r3, [r5, #180]	@ D.37296, <variable>.error_level
	cmp	r3, #0	@ D.37296,
	bne	.L2491	@,
	b	.L2490	@
.L2571:
	ldr	r2, [r6, #608]	@ <variable>.err_level, <variable>.err_level
	add	r5, r3, #2	@ tmp241, tmp241,
	strb	r5, [r6, #1]	@ tmp241, <variable>.is_used
	ldr	r0, [r8, #516]	@ <variable>.err_level, <variable>.err_level
	add	lr, r2, r0	@ tmp245, <variable>.err_level, <variable>.err_level
	str	lr, [r6, #608]	@ tmp245, <variable>.err_level
	b	.L2488	@
.L2560:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3478	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2555:
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3243	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2579:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #3557	@,
	movt	r1, #:upper16:.LC87	@,
	mov	r3, r5	@, ret
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L2523	@
.L2577:
	mov	r2, #3600	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3601	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2580:
	mov	r0, r6	@, <variable>.CurrPic.field_pair_flag
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #3503	@,
	movt	r1, #:upper16:.LC87	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	b	.L2508	@
.L2559:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:g_event_report	@ tmp312,
	movt	r1, #:upper16:g_event_report	@ tmp312,
	ldr	r3, [r1, #0]	@ g_event_report.6888, g_event_report
	cmp	r3, #0	@ g_event_report.6888,
	beq	.L2501	@,
	movw	ip, #55520	@ tmp313,
	mov	r2, r5	@, <variable>.CurrPic.non_existing
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #104	@,
	blx	r3	@ g_event_report.6888
.L2501:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3470	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2572:
	movw	r2, #3370	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3371	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2576:
	mov	r3, r0	@, ret.6895
	movw	r2, #3518	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, ret.6895
	movw	r1, #:lower16:.LC86	@,
	movw	r3, #3519	@,
	movt	r1, #:upper16:.LC86	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2574:
	mov	r3, r6	@, ret.6882
	movw	r2, #3446	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3447	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
.L2493:
	ldr	r1, [r6, #572]	@, <variable>.logic_fs_id
	movw	r6, #55520	@ tmp284,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	movw	r1, #:lower16:.LC86	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC86	@,
	movw	r3, #3415	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2473	@
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.align	2
	.global	H264DEC_VDMPostProc
	.type	H264DEC_VDMPostProc, %function
H264DEC_VDMPostProc:
	.fnstart
.LFB1497:
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
	ldr	r5, [r0, #364]	@ <variable>.StartMode, <variable>.StartMode
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ <variable>.StartMode,
	bne	.L2582	@,
	movw	r3, #52772	@ tmp143,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r6	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	bls	.L2583	@,
	movw	r7, #52728	@ tmp147,
	movw	r1, #55520	@ tmp144,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [ip, #572]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r2, r6	@, ret
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r4, r7]	@ <variable>.StartMode, <variable>.CurrPic.frame_store
	mvn	r0, #0	@ D.43433,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2582:
	movw	r3, #52772	@ tmp154,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pLumaInfo
	bl	StorePicInDPB	@
	subs	r2, r0, #0	@ ret.6958,
	bne	.L2588	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6959,
	bne	.L2589	@,
.L2586:
	movw	r0, #13576	@ tmp160,
	movw	r2, #22328	@ tmp159,
	ldr	r3, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r1, #54004	@ tmp157,
	movw	ip, #:lower16:88888	@ tmp163,
	movt	ip, #:upper16:88888	@ tmp163,
	mov	lr, #0	@ tmp158,
	str	lr, [r4, r1]	@ tmp158, <variable>.AllowStartDec
	str	r3, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r3, #22336	@ tmp162,
	str	ip, [r4, r3]	@ tmp163, <variable>.PrevSlice.frame_num
	movw	r2, #22321	@ tmp167,
	movw	ip, #22332	@ tmp170,
	mov	r1, #2	@ tmp168,
	mov	r3, #7	@ tmp171,
	strb	r1, [r4, r2]	@ tmp168, <variable>.PrevSlice.bottom_field_flag
	str	r3, [r4, ip]	@ tmp171, <variable>.PrevSlice.nal_ref_idc
	movw	r2, #22322	@ tmp172,
	movw	ip, #22344	@ tmp175,
	mov	r1, #32	@ tmp173,
	mov	r3, #3	@ tmp176,
	strb	r1, [r4, r2]	@ tmp173, <variable>.PrevSlice.nal_unit_type
	str	r3, [r4, ip]	@ tmp176, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r2, #22348	@ tmp177,
	movw	ip, #22360	@ tmp183,
	mvn	r1, #0	@ tmp178,
	mov	r3, #262144	@ tmp184,
	str	r1, [r4, r2]	@ tmp178, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, ip]	@ tmp184, <variable>.PrevSlice.first_mb_in_slice
	movw	r2, #22320	@ tmp164,
	movw	r1, #22352	@ tmp179,
	movw	ip, #22356	@ tmp181,
	str	lr, [r4, r1]	@ tmp158, <variable>.PrevSlice.delta_pic_order_cnt
	mov	r0, lr	@ D.43433, tmp158
	strb	lr, [r4, r2]	@ tmp158, <variable>.PrevSlice.field_pic_flag
	str	lr, [r4, ip]	@ tmp158, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2583:
	movw	lr, #54004	@ tmp152,
	mov	r2, #1	@ tmp153,
	mov	r0, r5	@ D.43433, <variable>.StartMode
	str	r2, [r4, lr]	@ tmp153, <variable>.AllowStartDec
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2588:
	movw	r1, #:lower16:.LC96	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6959,
	beq	.L2586	@,
.L2589:
	movw	r1, #:lower16:.LC97	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC97	@,
	bl	dprint_vfmw	@
	b	.L2586	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
.LFB1444:
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
	movw	r3, #26372	@ tmp156,
	ldr	r5, [r0, r3]	@ D.39039, <variable>.CurrMarkIdx
	movw	r1, #2004	@ tmp159,
	movw	ip, #13605	@ tmp162,
	movw	lr, #26620	@ tmp171,
	ldrb	r2, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mul	r9, r1, r5	@ tmp158, tmp159, D.39039
	cmp	r2, #1	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	ldr	r5, [r0, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	lr, #20692	@ tmp151,
	moveq	r2, #2	@,
	movne	r2, #0	@,
	add	r7, r9, r0	@ tmp160, tmp158, pH264Ctx
	str	r2, [fp, #-56]	@, %sfp
	add	r6, r7, #22272	@ tmp161, tmp160,
	movw	r9, #52732	@ tmp164,
	add	r0, r6, #88	@ tmp161, tmp161,
	movw	r7, #19836	@ tmp154,
	mov	r1, r6	@ tmp170, tmp161
	add	r3, r1, #92	@ tmp170, tmp170,
	ldrb	ip, [r0, #7]	@ zero_extendqisi2	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r6, #19840	@ tmp155,
	movw	r0, #16484	@ tmp152,
	cmp	r5, #0	@ <variable>.DPB.used_size,
	str	ip, [fp, #-68]	@, %sfp
	movw	ip, #20688	@ tmp153,
	ldr	r2, [r4, lr]	@, <variable>.CurrSlice.frame_num
	str	r3, [r4, r9]	@ tmp170, <variable>.CurrPic.pMarkPara
	str	r2, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r2, [r4, r0]	@ D.39032, <variable>.CurrSPS.log2_max_frame_num_minus4
	ldr	r0, [r4, ip]	@ D.39035, <variable>.CurrSlice.prev_frame_num
	str	r1, [fp, #-64]	@, %sfp
	ldr	r3, [r4, r6]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r3, [fp, #-60]	@, %sfp
	beq	.L2603	@,
	add	r1, r2, #4	@ tmp174, D.39032,
	mov	r5, #1	@ tmp175,
	mov	lr, r5, asl r1	@, tmp175,
	add	r0, r0, #1	@, D.39035,
	str	lr, [fp, #-52]	@, %sfp
	mov	r1, lr	@,
	bl	__aeabi_uidivmod	@
	mov	r2, #0	@ tmp183,
	mov	r0, #2	@,
	str	r2, [r4, r7]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	str	r2, [r4, r6]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r5, r1	@ UnusedShortTermFrameNum,
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC100	@,
	ldr	r2, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC100	@,
	mov	r3, r5	@, UnusedShortTermFrameNum
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r0, r5	@, UnusedShortTermFrameNum
	ble	.L2595	@,
	movw	r6, #52728	@ tmp262,
	movw	sl, #16488	@ tmp267,
	b	.L2601	@
.L2597:
	movw	r0, #52260	@ tmp240,
	mov	r1, r8	@, tmp241
	strb	r8, [r4, r0]	@ tmp241, <variable>.CurrPic.is_long_term
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	ldr	r1, [fp, #-52]	@, %sfp
	subs	r3, r0, #0	@ ret.6989,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	bne	.L2604	@,
	movw	lr, #20688	@ tmp249,
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, r1	@, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	ble	.L2595	@,
.L2601:
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	AllocFrameStore	@
	mov	r8, #0	@ tmp241,
	movw	r1, #:lower16:.LC102	@,
	movt	r1, #:upper16:.LC102	@,
	subs	r7, r0, #0	@ ret,
	mov	r0, #2	@,
	bne	.L2605	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	ip, #52262	@,
	mov	r3, #1	@ tmp196,
	strb	r3, [r4, ip]	@ tmp196, <variable>.CurrPic.nal_unit_type
	mov	r0, #52736	@,
	str	r5, [r1, #576]	@ UnusedShortTermFrameNum, <variable>.frame_num
	movw	r1, #52744	@,
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r4, r0]	@ UnusedShortTermFrameNum, <variable>.CurrPic.frame_num
	str	r5, [r2, #476]	@ UnusedShortTermFrameNum, <variable>.frame.pic_num
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r4, r1]	@, <variable>.CurrPic.nal_ref_idc
	str	r7, [r0, #472]	@ ret, <variable>.frame.long_term_pic_num
	movw	r0, #52258	@,
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r2, #596]	@ tmp196, <variable>.is_displayed
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r7, [ip, #4]	@ ret, <variable>.is_in_dpb
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r1, #0]	@ tmp196, <variable>.non_existing
	ldr	r2, [r4, r9]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	strb	r3, [r4, r0]	@ tmp196, <variable>.CurrPic.non_existing
	strb	r7, [r2, #3]	@ ret, <variable>.adaptive_ref_pic_marking_mode_flag
	ldr	r3, [r4, sl]	@ <variable>.CurrSPS.pic_order_cnt_type, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r3, #0	@ <variable>.CurrSPS.pic_order_cnt_type,
	beq	.L2597	@,
	movw	lr, #19852	@,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	movw	r2, #19832	@ tmp229,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	r3, #19828	@ tmp232,
	ldr	r2, [r4, r3]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	ip, #19820	@ tmp235,
	movw	r1, #19824	@ tmp238,
	ldr	r3, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	ip, [r4, r1]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r1, #52748	@ tmp228,
	str	r0, [r4, r1]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	r0, #52752	@ tmp231,
	str	r2, [r4, r0]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r2, #52756	@ tmp234,
	str	r3, [r4, r2]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	r3, #52760	@ tmp237,
	str	ip, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	b	.L2597	@
.L2603:
	mov	r0, r5	@, <variable>.DPB.used_size
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39053, <variable>.DPB.used_size
.L2594:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2595:
	ldr	ip, [fp, #-64]	@, %sfp
	movw	lr, #19836	@ tmp255,
	movw	r2, #19840	@ tmp256,
	movw	r0, #52732	@ tmp258,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r0, #0	@ D.39053,
	str	ip, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [fp, #-60]	@, %sfp
	str	r1, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	ip, [fp, #-68]	@, %sfp
	strb	ip, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	b	.L2594	@
.L2605:
	ldr	r0, [fp, #-64]	@, %sfp
	movw	r1, #19836	@ tmp188,
	movw	r2, #19840	@ tmp189,
	movw	ip, #52732	@ tmp191,
	ldr	r3, [r4, ip]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	r0, [r4, r1]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, r8	@, tmp241
	ldr	lr, [fp, #-60]	@, %sfp
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	str	lr, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	ip, [fp, #-68]	@, %sfp
	strb	ip, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39053,
	b	.L2594	@
.L2604:
	ldr	r1, [fp, #-64]	@, %sfp
	movw	r0, #19836	@ tmp243,
	movw	lr, #19840	@ tmp244,
	movw	r2, #52732	@ tmp246,
	ldr	r2, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	r1, [r4, r0]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, r8	@, tmp241
	ldr	ip, [fp, #-60]	@, %sfp
	str	ip, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [fp, #-68]	@, %sfp
	strb	r1, [r2, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r1, #:lower16:.LC103	@,
	movw	r2, #5835	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39053,
	b	.L2594	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
.LFB1445:
	@ args = 0, pretend = 0, frame = 16
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
	movw	r2, #13584	@ tmp190,
	movw	r5, #20684	@ tmp191,
	ldr	ip, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r8, [r0, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r6, #2208	@ tmp194,
	movw	lr, #52256	@ tmp201,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #13580	@ tmp196,
	ldrb	r0, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mla	r6, r6, r8, ip	@ pPPS, tmp194, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #0	@ <variable>.CurrPic.state,
	movw	r5, #3992	@ tmp199,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp199, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L2607	@,
	movw	r7, #52728	@ tmp203,
	ldr	r3, [r4, r7]	@ D.39116, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.39116,
	beq	.L2608	@,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r8, #0	@ <variable>.is_used,
	beq	.L2678	@,
.L2609:
	movw	r8, #52256	@ tmp219,
	mov	r1, #0	@ tmp220,
	strb	r1, [r4, r8]	@ tmp220, <variable>.CurrPic.state
.L2607:
	mov	r0, r4	@, pH264Ctx
	sub	r1, fp, #48	@,,
	bl	GetReRangeFlag	@
	ldr	r3, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r8, r0	@ D.39126,
	movw	r0, #14332	@ tmp223,
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	cmp	r2, r3	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	beq	.L2679	@,
.L2610:
	add	ip, r4, #13568	@, pH264Ctx,
	mov	r1, #0	@ tmp227,
	add	r0, ip, #20	@,,
	strb	r1, [r5, #24]	@ tmp227, <variable>.is_refreshed
	movw	r2, #3992	@,
	mov	r1, r5	@, pSPS
	bl	memmove	@
.L2611:
	ldr	r2, [fp, #-48]	@ dpb_changed, dpb_changed
	cmp	r2, #0	@ dpb_changed,
	beq	.L2612	@,
	ldr	r3, [r4, #0]	@ D.39138, <variable>.pstExtraData
	ldr	r7, [r3, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L2680	@,
.L2613:
	movw	r0, #55480	@ tmp275,
	cmp	r8, #0	@ D.39126,
	ldr	r1, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r2, r1, #1	@ tmp278, <variable>.SeqCnt,
	str	r2, [r4, r0]	@ tmp278, <variable>.SeqCnt
	beq	.L2622	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L2623:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r7, r0, #0	@ ret.7087,
	bne	.L2681	@,
	cmp	r8, #0	@ D.39126,
	bne	.L2682	@,
.L2612:
	movw	r2, #17604	@ tmp306,
	ldr	r1, [r6, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	sl, [r4, r2]	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.CurrPPS.pic_parameter_set_id
	cmp	sl, r1	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.pic_parameter_set_id
	beq	.L2683	@,
.L2626:
	add	lr, r4, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp310,
	mov	r1, r6	@, pPPS
	add	r0, lr, #172	@,,
	strb	r3, [r6, #20]	@ tmp310, <variable>.is_refreshed
	mov	r2, #2208	@,
	bl	memmove	@
.L2627:
	movw	sl, #19812	@ tmp315,
	movw	r1, #16484	@ tmp314,
	ldr	r2, [r4, sl]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	movw	ip, #55448	@ tmp321,
	ldr	sl, [r4, r1]	@ D.39222, <variable>.CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	ldr	r6, [r4, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movwne	r1, #53352	@ tmp319,
	movne	r2, #0	@ tmp318,
	strne	r2, [r4, r1]	@ tmp318, <variable>.PrevPic.frame_num
	movwne	r1, #20688	@ tmp317,
	strne	r2, [r4, r1]	@ tmp318, <variable>.CurrSlice.prev_frame_num
	cmp	r6, #2	@ <variable>.OldDecMode,
	beq	.L2629	@,
	ldr	r7, [r4, #0]	@ temp.7106, <variable>.pstExtraData
	ldr	r0, [r7, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2629	@,
	movw	r8, #20692	@ tmp325,
	movw	r3, #20688	@ tmp326,
	ldr	r6, [r4, r8]	@ prephitmp.7027, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r3]	@ prephitmp.7107, <variable>.CurrSlice.prev_frame_num
	cmp	r6, r8	@ prephitmp.7027, prephitmp.7107
	beq	.L2631	@,
	mov	lr, #1	@ tmp328,
	add	ip, sl, #4	@ tmp327, D.39222,
	mov	sl, lr, asl ip	@ MaxFrameNum, tmp328,
	add	r0, r8, lr	@, prephitmp.7107,
	mov	r1, sl	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.7027,
	beq	.L2631	@,
	ldr	r1, [r7, #516]	@ <variable>.s32MoreGapEnable, <variable>.s32MoreGapEnable
	cmp	r1, #0	@ <variable>.s32MoreGapEnable,
	bne	.L2632	@,
	ldr	r2, [r7, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2684	@,
.L2633:
	cmp	r6, r8	@ prephitmp.7027, prephitmp.7107
	bls	.L2634	@,
	movw	r7, #17560	@ tmp342,
	rsb	r8, r8, r6	@ tmp343, prephitmp.7107, prephitmp.7027
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	ip, r8	@ <variable>.CurrSPS.dpb_size_plus1, tmp343
	bcs	.L2632	@,
	movw	r2, #20672	@ tmp345,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2685	@,
	cmp	r6, #0	@ prephitmp.7027,
	movw	ip, #20688	@ tmp356,
	subeq	r6, sl, #1	@ iftmp.628, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.628, prephitmp.7027,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.628, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7111,
	beq	.L2632	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC76	@,
	movw	r2, #6094	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2684:
	ldr	r0, [r7, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2633	@,
	ldr	r3, [r7, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2633	@,
	ldr	lr, [r7, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r7, lr, #1024	@ tmp340, <variable>.s32FastForwardBackwardSpeed,
	cmp	r7, #2048	@ tmp340,
	bls	.L2633	@,
.L2632:
	movw	r0, #13605	@ tmp377,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r7, #0	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	beq	.L2686	@,
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L2645	@,
.L2629:
	movw	ip, #20692	@ tmp409,
	ldr	r6, [r4, ip]	@ prephitmp.7027, <variable>.CurrSlice.frame_num
.L2631:
	movw	lr, #20704	@ tmp410,
	movw	r3, #19852	@ tmp414,
	ldr	r0, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movwne	r0, #20688	@ tmp412,
	strne	r6, [r4, r0]	@ prephitmp.7027, <variable>.CurrSlice.prev_frame_num
	movwne	r0, #20692	@ tmp413,
	ldrne	r6, [r4, r0]	@ prephitmp.7027, <variable>.CurrSlice.frame_num
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, r3]	@ prephitmp.7027, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret.7130
	bne	.L2687	@,
	movw	r9, #20673	@ tmp455,
	movw	r3, #20692	@ tmp427,
	ldrb	r8, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #20704	@ tmp430,
	ldr	sl, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r6, #19832	@ tmp433,
	cmp	r8, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r1, #20675	@ tmp423,
	ldr	r8, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	lr, #19828	@ tmp436,
	ldr	r2, [r4, r6]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	ip, #19820	@ tmp439,
	movw	r3, #19824	@ tmp442,
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r6, [r4, lr]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	mov	r1, #52736	@ tmp426,
	ldr	lr, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r3, #52262	@ tmp422,
	str	sl, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrPic.frame_num
	movw	sl, #52748	@ tmp432,
	str	r2, [r4, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	r1, #52752	@ tmp435,
	movw	r2, #52760	@ tmp441,
	strb	r7, [r4, r3]	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrPic.nal_unit_type
	str	r6, [r4, r1]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r7, #52744	@ tmp429,
	str	ip, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	movw	r6, #52260	@ tmp450,
	movw	r2, #13606	@ tmp460,
	str	r8, [r4, r7]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	strb	r0, [r4, r6]	@ ret.7130, <variable>.CurrPic.is_long_term
	movw	ip, #17540	@ tmp463,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r7, #52756	@ tmp438,
	movw	r8, #52792	@ tmp453,
	movw	r1, #52256	@ tmp419,
	mov	r3, #1	@ tmp420,
	str	lr, [r4, r7]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	strb	r3, [r4, r1]	@ tmp420, <variable>.CurrPic.state
	mvn	lr, #0	@ tmp454,
	movw	r1, #52261	@ tmp447,
	str	lr, [r4, r8]	@ tmp454, <variable>.CurrPic.stream_base_addr
	movw	sl, #52263	@ tmp416,
	ldr	lr, [r4, ip]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r7, #52258	@ tmp444,
	strb	r0, [r4, r1]	@ ret.7130, <variable>.CurrPic.is_short_term
	strb	r0, [r4, sl]	@ ret.7130, <variable>.CurrPic.mode_skip_flag
	moveq	r1, r3	@ prephitmp.7032, tmp420
	strb	r0, [r4, r7]	@ ret.7130, <variable>.CurrPic.non_existing
	rsb	r0, r6, #2	@ tmp462, <variable>.CurrSPS.frame_mbs_only_flag,
	strneb	r3, [r4, r9]	@ tmp420, <variable>.CurrSlice.field_pic_flag
	movne	r1, #2	@ prephitmp.7032,
	mla	r9, lr, r0, r0	@ tmp466, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp462, tmp462
	movw	r8, #17536	@ tmp479,
	movw	sl, #20673	@ tmp488,
	movw	r6, #52780	@ tmp470,
	mov	r0, r9	@, tmp466
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, r8]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r1, #17580	@ tmp485,
	add	sl, r3, #1	@ temp.7148, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r2, #52784	@ tmp471,
	str	r9, [r4, r2]	@ tmp466, <variable>.CurrPic.frame_height_in_mb
	movw	r8, #52264	@ tmp484,
	movw	r7, #52788	@ tmp482,
	movw	r9, #52776	@ tmp481,
	strb	ip, [r4, r8]	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPic.entropy_coding_mode_flag
	str	sl, [r4, r9]	@ temp.7148, <variable>.CurrPic.pic_width_in_mb
	mul	r1, sl, r0	@ tmp483, temp.7148, tmp469
	str	r0, [r4, r6]	@ tmp469, <variable>.CurrPic.pic_height_in_mb
	str	r1, [r4, r7]	@ tmp483, <variable>.CurrPic.pic_mbs
	movne	r1, #0	@ prephitmp.7033,
	beq	.L2688	@,
.L2651:
	movw	r8, #20704	@ tmp495,
	movw	r7, #26372	@ tmp501,
	ldr	r3, [r4, r8]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r2, #52265	@ tmp493,
	ldr	ip, [r4, r7]	@ <variable>.CurrMarkIdx, <variable>.CurrMarkIdx
	movw	r0, #2004	@ tmp504,
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	strb	r1, [r4, r2]	@ prephitmp.7033, <variable>.CurrPic.MbaffFrameFlag
	movw	r6, #52732	@ tmp500,
	movw	r7, #52288	@ tmp512,
	movwne	r3, #20692	@ tmp498,
	ldrne	r2, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movwne	r3, #20688	@ tmp497,
	mla	lr, r0, ip, r4	@ tmp507, tmp504, <variable>.CurrMarkIdx, pH264Ctx
	movw	ip, #52296	@ tmp515,
	strne	r2, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #52280	@ tmp509,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	add	r1, lr, #22272	@ tmp508, tmp507,
	add	sl, r1, #92	@ tmp508, tmp508,
	str	sl, [r4, r6]	@ tmp508, <variable>.CurrPic.pMarkPara
	ldrd	r8, [r3, #56]	@, <variable>.pstExtraData,
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	movw	sl, #52420	@ tmp543,
	movw	r6, #52412	@ tmp554,
	strd	r8, [r4, r2]	@, pH264Ctx, tmp509
	add	r9, r4, #52224	@, pH264Ctx,
	str	r9, [fp, #-56]	@, %sfp
	ldrd	r8, [r3, #72]	@, <variable>.pstExtraData,
	strd	r8, [r4, r7]	@, pH264Ctx, tmp512
	ldrd	r8, [r3, #88]	@, <variable>.pstExtraData,
	strd	r8, [r4, ip]	@, pH264Ctx, tmp515
	movw	ip, #52340	@ tmp518,
	ldr	lr, [r3, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	mvn	r9, #0	@,
	mvn	r8, #0	@,
	str	lr, [r4, ip]	@ <variable>.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	ip, #52344	@ tmp521,
	ldr	lr, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r4, ip]	@ <variable>.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	movw	ip, #52348	@ tmp524,
	ldr	lr, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r4, ip]	@ <variable>.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	movw	ip, #52352	@ tmp527,
	ldr	lr, [r3, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	lr, [r4, ip]	@ <variable>.GopNum, <variable>.CurrPic.fs_image.GopNum
	strd	r8, [r3, #56]	@, <variable>.pstExtraData,
	movw	r9, #52416	@,
	ldrd	r2, [r2, r4]	@, tmp509, pH264Ctx
	bl	dprint_vfmw	@
	ldrd	r2, [r4, r7]	@, pH264Ctx, tmp512
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	dprint_vfmw	@
	movw	r3, #13606	@ tmp544,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r0, #17540	@ tmp547,
	ldr	ip, [r4, r0]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13644	@ tmp563,
	rsb	r3, r1, #2	@ tmp546, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.vui_seq_parameters.video_format, <variable>.CurrSPS.vui_seq_parameters.video_format
	mov	r0, #14336	@ tmp557,
	movw	r1, #17536	@ tmp539,
	mla	r3, ip, r3, r3	@ tmp550, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp546, tmp546
	ldr	ip, [r4, r0]	@ <variable>.CurrSPS.chroma_format_idc, <variable>.CurrSPS.chroma_format_idc
	ldr	r0, [r4, r1]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	movw	r1, #13640	@ tmp552,
	ldr	r1, [r4, r1]	@ <variable>.CurrSPS.vui_seq_parameters.aspect_ratio, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio
	subs	ip, ip, #1	@ tmp561, <variable>.CurrSPS.chroma_format_idc,
	movne	ip, #1	@ tmp561
	mov	r2, r2, asl #5	@ tmp564, <variable>.CurrSPS.vui_seq_parameters.video_format,
	add	r0, r0, #1	@ tmp540, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	and	r1, r1, #7	@ dar, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio,
	and	r2, r2, #255	@ tmp566, tmp564,
	orr	r2, r2, ip, asl #2	@, tmp567, tmp566, tmp561,
	mov	ip, r0, asl #4	@ tmp542, tmp540,
	mov	r0, r3, asl #4	@ tmp551, tmp550,
	str	ip, [r4, r9]	@ tmp542, <variable>.CurrPic.fs_image.image_width
	str	r0, [r4, sl]	@ tmp551, <variable>.CurrPic.fs_image.image_height
	orr	ip, r2, r1, asl #14	@, tmp569, tmp567, dar,
	str	ip, [r4, r6]	@ tmp569, <variable>.CurrPic.fs_image.format
	ldr	r3, [fp, #-56]	@, %sfp
	add	r0, r3, #48	@,,
	bl	SetAspectRatio	@
	movw	r1, #52259	@ tmp576,
	movw	r3, #52728	@ tmp579,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #55480	@ tmp573,
	ldr	r1, [r4, r3]	@ temp.7170, <variable>.CurrPic.frame_store
	ldr	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	subs	r2, r2, #0	@ tmp578, <variable>.CurrPic.structure,
	movne	r2, #1	@ tmp578
	movw	r0, #52400	@,
	cmp	r1, #0	@ temp.7170,
	str	r2, [r4, r0]	@ tmp578, <variable>.CurrPic.fs_image.is_fld_save
	movw	r0, #52456	@ tmp572,
	str	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.CurrPic.fs_image.seq_cnt
	beq	.L2689	@,
	ldr	r7, [r4, r6]	@ <variable>.CurrPic.fs_image.format, <variable>.CurrPic.fs_image.format
	movw	r0, #52336	@ tmp591,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.CurrPic.fs_image.u32AspectHeight
	movw	r9, #52332	@ tmp595,
	ldr	r0, [r4, r9]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.CurrPic.fs_image.u32AspectWidth
	movw	r6, #52416	@,
	str	r7, [r1, #148]	@ <variable>.CurrPic.fs_image.format, <variable>.fs_image.format
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r7, [r4, r6]	@ <variable>.CurrPic.fs_image.image_width, <variable>.CurrPic.fs_image.image_width
	movw	r6, #55520	@ tmp617,
	ldr	r9, [r4, sl]	@ <variable>.CurrPic.fs_image.image_height, <variable>.CurrPic.fs_image.image_height
	str	r2, [lr, #136]	@ tmp578, <variable>.fs_image.is_fld_save
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r2, #72]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.fs_image.u32AspectHeight
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [ip, #68]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.fs_image.u32AspectWidth
	movw	ip, #52432	@ tmp607,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r7, [r1, #152]	@ <variable>.CurrPic.fs_image.image_width, <variable>.fs_image.image_width
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r9, [lr, #156]	@ <variable>.CurrPic.fs_image.image_height, <variable>.fs_image.image_height
	movw	r9, #52436	@ tmp610,
	ldr	r0, [r5, #3984]	@ D.39386, <variable>.disp_center_x
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r2, #168]	@ D.39386, <variable>.fs_image.disp_center_x
	str	r0, [r4, ip]	@ D.39386, <variable>.CurrPic.fs_image.disp_center_x
	movw	ip, #52424	@ tmp613,
	ldr	lr, [r5, #3988]	@ D.39388, <variable>.disp_center_y
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r1, #172]	@ D.39388, <variable>.fs_image.disp_center_y
	str	lr, [r4, r9]	@ D.39388, <variable>.CurrPic.fs_image.disp_center_y
	movw	r9, #52428	@ tmp616,
	ldr	r0, [r5, #3976]	@ D.39390, <variable>.disp_width
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r2, #160]	@ D.39390, <variable>.fs_image.disp_width
	str	r0, [r4, ip]	@ D.39390, <variable>.CurrPic.fs_image.disp_width
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	lr, [r5, #3980]	@ D.39392, <variable>.disp_height
	str	lr, [r1, #164]	@ D.39392, <variable>.fs_image.disp_height
	ldr	r5, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r4, r9]	@ D.39392, <variable>.CurrPic.fs_image.disp_height
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #572]	@, <variable>.logic_fs_id
	bl	FSP_GetDispPhyFs	@
	subs	r2, r0, #0	@ pstDecFs,
	beq	.L2654	@,
	movw	r8, #52400	@,
	mov	r1, #0	@,
	ldr	r3, [r4, r8]	@ <variable>.CurrPic.fs_image.is_fld_save, <variable>.CurrPic.fs_image.is_fld_save
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	subs	r3, r3, r1	@, <variable>.CurrPic.fs_image.is_fld_save,
	movne	r3, #1	@
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	bl	FSP_SetStoreType	@
.L2654:
	movw	r1, #54024	@ tmp629,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [r4, r1]	@ prephitmp.7186, <variable>.TotalUsrDatNum
	add	r5, r4, #54016	@ ivtmp.7067, pH264Ctx,
	add	r0, r4, #52480	@ D.50357, pH264Ctx,
	add	r9, ip, #240	@ ivtmp.7076,,
	movw	r6, #54028	@ tmp665,
	add	ip, r5, #16	@ ivtmp.7067, ivtmp.7067,
	mov	r5, #0	@ tmp667,
.L2659:
	ldr	lr, [r9, #0]	@ tmp631, <variable>.CurrPic.fs_image.p_usrdat
	cmp	lr, #0	@ tmp631,
	ldrne	r2, [r4, r1]	@ prephitmp.7186, <variable>.TotalUsrDatNum
	beq	.L2690	@,
.L2656:
	add	r9, r9, #4	@ ivtmp.7076, ivtmp.7076,
	cmp	r9, r0	@ ivtmp.7076, D.50357
	bne	.L2659	@,
	cmp	r2, #0	@ prephitmp.7186,
	beq	.L2660	@,
	ble	.L2660	@,
	add	r8, r2, #13504	@ tmp649, prephitmp.7186,
	sub	sl, r2, #1	@ tmp670, prephitmp.7186,
	add	r1, r8, #2	@ tmp649, tmp649,
	and	r9, sl, #1	@ tmp671, tmp670,
	mov	r6, sl	@ uidxpic, tmp670
	movw	r8, #55520	@ tmp663,
	add	r5, r4, r1, asl #2	@, tmp652, pH264Ctx, tmp649,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r7, #0	@ tmp664,
	mov	sl, r5	@ ivtmp.7064, tmp652
	ldr	r1, [sl], #4	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, r7	@ uidxpic,
	str	r7, [sl, #-4]	@ tmp664, <variable>.pUsrDatArray
	ble	.L2660	@,
	cmp	r9, #0	@ tmp671,
	beq	.L2661	@,
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp664, <variable>.pUsrDatArray
	ble	.L2660	@,
.L2661:
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ tmp673, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	sub	r6, r6, #1	@ uidxpic, tmp673,
	bl	FreeUsdByDec	@
	str	r7, [r5, #-4]!	@ tmp664, <variable>.pUsrDatArray
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp664, <variable>.pUsrDatArray
	bgt	.L2661	@,
.L2660:
	movw	r3, #54024	@ tmp657,
	movw	ip, #52764	@ tmp659,
	mov	r5, #0	@ tmp658,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r3]	@ tmp658, <variable>.TotalUsrDatNum
	str	r5, [r4, ip]	@ tmp658, <variable>.CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.39151, tmp658
.L2615:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2690:
	cmp	r2, #0	@ prephitmp.7186,
	beq	.L2656	@,
	ldr	r3, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r2, [r4, r6]	@ <variable>.pUsrDatArray, <variable>.pUsrDatArray
	subs	lr, r3, #1	@ D.39409, <variable>.TotalUsrDatNum,
	str	r2, [r9, #0]	@ <variable>.pUsrDatArray, <variable>.CurrPic.fs_image.p_usrdat
	beq	.L2657	@,
	ldr	r7, [ip, #0]	@ tmp638, <variable>.pUsrDatArray
	mov	r2, #1	@ uidxsei,
	cmp	lr, r2	@ D.39409, uidxsei
	sub	r3, lr, #1	@ tmp674, D.39409,
	and	r8, r3, r2	@ tmp676, tmp674,
	add	r3, ip, #4	@ ivtmp.7067, ivtmp.7067,
	str	r7, [ip, #-4]	@ tmp638, <variable>.pUsrDatArray
	bls	.L2657	@,
	cmp	r8, #0	@ tmp676,
	beq	.L2658	@,
	ldr	r7, [ip, #4]	@ tmp701, <variable>.pUsrDatArray
	mov	r2, #2	@ uidxsei,
	cmp	lr, r2	@ D.39409, uidxsei
	str	r7, [r3, #-4]	@ tmp701, <variable>.pUsrDatArray
	add	r3, r3, #4	@ ivtmp.7067, ivtmp.7067,
	bls	.L2657	@,
.L2658:
	ldr	r8, [r3, #0]	@ tmp682, <variable>.pUsrDatArray
	mov	r7, r3	@ tmp678, ivtmp.7067
	add	r2, r2, #2	@ uidxsei, uidxsei,
	cmp	lr, r2	@ D.39409, uidxsei
	str	r8, [r3, #-4]	@ tmp682, <variable>.pUsrDatArray
	ldr	r3, [r3, #4]	@ tmp684, <variable>.pUsrDatArray
	str	r3, [r7], #4	@ tmp684, <variable>.pUsrDatArray
	add	r3, r7, #4	@ ivtmp.7067, tmp678,
	bhi	.L2658	@,
.L2657:
	add	lr, lr, #13504	@ tmp639, D.39409,
	ldr	r2, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, lr, #2	@ tmp639, tmp639,
	sub	r2, r2, #1	@ prephitmp.7186, <variable>.TotalUsrDatNum,
	str	r2, [r4, r1]	@ prephitmp.7186, <variable>.TotalUsrDatNum
	add	lr, r4, r3, asl #2	@, tmp643, pH264Ctx, tmp639,
	str	r5, [lr, #4]	@ tmp667, <variable>.pUsrDatArray
	b	.L2656	@
.L2688:
	movw	r9, #13607	@ tmp490,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	subs	r1, r0, #0	@ prephitmp.7033, <variable>.CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ prephitmp.7033
	b	.L2651	@
.L2680:
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	bne	.L2613	@,
	movw	lr, #55480	@ tmp234,
	cmp	r8, #0	@ D.39126,
	ldr	ip, [r4, lr]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, ip, #1	@ tmp237, <variable>.SeqCnt,
	str	r0, [r4, lr]	@ tmp237, <variable>.SeqCnt
	beq	.L2614	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L2614	@,
	mov	r0, r7	@, <variable>.stChanOption.s32ReRangeEn
	movw	r1, #:lower16:.LC76	@,
	movw	r2, #5929	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2679:
	ldrb	lr, [r5, #24]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	lr, #0	@ <variable>.is_refreshed,
	beq	.L2611	@,
	b	.L2610	@
.L2683:
	ldrb	r0, [r6, #20]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	r0, #0	@ <variable>.is_refreshed,
	beq	.L2627	@,
	b	.L2626	@
.L2622:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7085,
	beq	.L2623	@,
	mov	r0, r8	@, D.39126
	movw	r1, #:lower16:.LC76	@,
	movw	r2, #6010	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2682:
	movw	r2, #17540	@ tmp288,
	movw	sl, #13606	@ tmp292,
	ldr	r8, [r4, r2]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	ip, #17536	@ tmp285,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17560	@ tmp283,
	add	r1, r8, #1	@ tmp289, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldr	r0, [r4, ip]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	rsb	sl, lr, #2	@ tmp294, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	lr, [r4, r3]	@ D.39170, <variable>.CurrSPS.dpb_size_plus1
	mov	r2, r1, asl #4	@ tmp291, tmp289,
	add	r8, r0, #1	@ tmp286, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	movw	ip, #54000	@ tmp284,
	add	r3, r4, #53760	@, pH264Ctx,
	mul	sl, sl, r2	@ ImageHeight.7099, tmp294, tmp291
	mov	r8, r8, asl #4	@ ImageWidth.7091, tmp286,
	str	lr, [r4, ip]	@ D.39170, <variable>.TotalPmvNum
	add	r3, r3, #236	@,,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, ImageWidth.7091
	str	lr, [sp, #0]	@ D.39170,
	mov	r2, sl	@, ImageHeight.7099
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L2691	@,
	movw	ip, #13560	@ tmp302,
	movw	r3, #13564	@ tmp304,
	mov	r8, r8, lsr #4	@ tmp303, ImageWidth.7091,
	mov	lr, sl, lsr #4	@ tmp305, ImageHeight.7099,
	str	r8, [r4, ip]	@ tmp303, <variable>.CurWidthInMb
	str	lr, [r4, r3]	@ tmp305, <variable>.CurHeightInMb
	b	.L2612	@
.L2686:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r3, #520]	@ D.39291, <variable>.s32FastForwardBackwardSpeed
	cmp	r6, #0	@ D.39291,
	cmpne	r6, #1024	@, D.39291,
	bne	.L2629	@,
	movw	r8, #20688	@ tmp390,
	mov	r1, sl	@, MaxFrameNum
	ldr	lr, [r4, r8]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r8, #20692	@ tmp389,
	ldr	r6, [r4, r8]	@ prephitmp.7027, <variable>.CurrSlice.frame_num
	add	r0, lr, #1	@, <variable>.CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.7027,
	bcs	.L2643	@,
	movw	r2, #20672	@ tmp399,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L2631	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC112	@,
	movw	r2, #6140	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2614:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r3, r0, #0	@ ret.7081,
	bne	.L2692	@,
	movw	lr, #17540	@ tmp245,
	movw	r7, #17536	@ tmp242,
	ldr	r1, [r4, lr]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13606	@ tmp249,
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	cmp	r8, #0	@ D.39126,
	add	r3, r1, #1	@ tmp246, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	add	r7, ip, #1	@ tmp243, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	mov	r1, r3, asl #4	@ tmp248, tmp246,
	rsb	r8, lr, #2	@ tmp251, <variable>.CurrSPS.frame_mbs_only_flag,
	mov	r7, r7, asl #4	@ ImageWidth, tmp243,
	mul	r8, r8, r1	@ ImageHeight, tmp251, tmp248
	beq	.L2617	@,
	movw	ip, #13560	@ tmp252,
	ldr	r3, [r4, ip]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	cmp	r3, #0	@ <variable>.CurWidthInMb,
	bne	.L2617	@,
	movw	r2, #17560	@ tmp254,
	ldr	r3, [r4, #0]	@ temp.7082, <variable>.pstExtraData
	ldr	ip, [r4, r2]	@ prephitmp.7044, <variable>.CurrSPS.dpb_size_plus1
	movw	lr, #54000	@ tmp255,
	str	ip, [r4, lr]	@ prephitmp.7044, <variable>.TotalPmvNum
	ldr	r1, [r3, #564]	@ prephitmp.7040, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r1	@ ImageWidth, prephitmp.7040
	bhi	.L2618	@,
	ldr	r2, [r3, #568]	@ prephitmp.7188, <variable>.stChanOption.s32MaxHeight
	cmp	r8, r2	@ ImageHeight, prephitmp.7188
	bhi	.L2618	@,
	movw	sl, #26616	@ tmp257,
	ldr	r9, [r3, #584]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	sl, [r4, sl]	@ <variable>.DPB.size, <variable>.DPB.size
	cmp	r9, sl	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.DPB.size
	bcc	.L2693	@,
	ldr	r0, [r3, #592]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	add	r0, r4, #53760	@, pH264Ctx,
	moveq	ip, #1	@ tmp263,
	streq	ip, [r4, lr]	@ tmp263, <variable>.TotalPmvNum
	ldreq	r2, [r3, #568]	@ prephitmp.7188, <variable>.stChanOption.s32MaxHeight
	ldreq	r1, [r3, #564]	@ prephitmp.7040, <variable>.stChanOption.s32MaxWidth
	add	r3, r0, #236	@,,
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #0]	@ prephitmp.7044,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	beq	.L2617	@,
	movw	lr, #13560	@ tmp266,
	add	r1, lr, #4	@ tmp268, tmp268,
	mov	r5, #0	@ tmp267,
	str	r5, [r4, lr]	@ tmp267, <variable>.CurWidthInMb
	str	r5, [r4, r1]	@ tmp267, <variable>.CurHeightInMb
	mov	r0, r5	@, tmp267
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp267
	bl	ClearAll	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2617:
	movw	ip, #13560	@ tmp271,
	movw	r3, #13564	@ tmp273,
	mov	r7, r7, lsr #4	@ tmp272, ImageWidth,
	mov	r8, r8, lsr #4	@ tmp274, ImageHeight,
	str	r7, [r4, ip]	@ tmp272, <variable>.CurWidthInMb
	str	r8, [r4, r3]	@ tmp274, <variable>.CurHeightInMb
	b	.L2612	@
.L2678:
	movw	ip, #55520	@ tmp205,
	ldr	r1, [r3, #572]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r0, #1]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ <variable>.is_used, <variable>.is_in_dpb
	b	.L2609	@
.L2634:
	movw	r7, #17560	@ tmp359,
	rsb	lr, r8, r6	@ tmp360, prephitmp.7107, prephitmp.7027
	ldr	r0, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	add	r3, lr, sl	@ tmp361, tmp360, MaxFrameNum
	cmp	r0, r3	@ <variable>.CurrSPS.dpb_size_plus1, tmp361
	bcs	.L2632	@,
	movw	r2, #20672	@ tmp363,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2694	@,
	cmp	r6, #0	@ prephitmp.7027,
	movw	ip, #20688	@ tmp374,
	subeq	r6, sl, #1	@ iftmp.630, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.630, prephitmp.7027,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.630, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7120,
	beq	.L2632	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC76	@,
	movw	r2, #6119	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2608:
	movw	r1, #:lower16:.LC104	@,
	ldr	r2, .L2695	@,
	movt	r1, #:upper16:.LC104	@,
	movw	r3, #5898	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2609	@
.L2643:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	ldreq	r6, [r4, r8]	@ prephitmp.7027, <variable>.CurrSlice.frame_num
	beq	.L2631	@,
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC113	@,
	movw	r2, #6150	@,
	movt	r1, #:upper16:.LC113	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2645:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC113	@,
	movw	r2, #6162	@,
	movt	r1, #:upper16:.LC113	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2687:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	movw	r2, #6181	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2681:
	mov	r3, r7	@, ret.7087
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC105	@,
	movw	r2, #6018	@,
	movt	r1, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2689:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC117	@,
	ldr	r2, .L2695	@,
	movt	r1, #:upper16:.LC117	@,
	movw	r3, #6261	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2691:
	movw	r0, #13560	@ tmp297,
	movw	r1, #13564	@ tmp299,
	str	r7, [r4, r0]	@ ret.7087, <variable>.CurWidthInMb
	mov	r0, r7	@, ret.7087
	str	r7, [r4, r1]	@ ret.7087, <variable>.CurHeightInMb
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, ret.7087
	bl	ClearAll	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2685:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #20692	@ tmp349,
	sub	r1, r2, #4	@ tmp350, tmp350,
	ldr	lr, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #6084	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2694:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #20692	@ tmp367,
	sub	r1, r2, #4	@ tmp368, tmp368,
	ldr	lr, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #6109	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2692:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC105	@,
	movw	r2, #5937	@,
	movt	r1, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2618:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2693:
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39151,
	b	.L2615	@
.L2696:
	.align	2
.L2695:
	.word	.LANCHOR0+152
	.fnend
	.size	InitPic, .-InitPic
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
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
	add	r6, r0, #13504	@ D.35338, pH264Ctx,
	add	r6, r6, #24	@ D.35338, D.35338,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.35338
	bl	BsShow	@
	mov	r4, r0	@ D.35339,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bhi	.L2698	@,
	mov	r5, r0, asl #1	@ tmp148, zeros,
	mov	r0, r6	@, D.35338
	add	r5, r5, #1	@ NumBits, tmp148,
	rsb	r3, r5, #32	@ tmp149, NumBits,
	mov	r4, r4, lsr r3	@ D.35346, D.35339,
	mov	r1, r5	@, NumBits
	tst	r4, #1	@ D.35346,
	mov	r4, r4, lsr #1	@ tmp, D.35346,
	rsbne	r4, r4, #0	@ INFO, tmp
	bl	BsSkip	@
.L2701:
	ldr	ip, [r7, #368]	@ D.35370, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2698:
	cmp	r0, #31	@ zeros,
	bls	.L2705	@,
	movw	r1, #55460	@ tmp153,
	mov	r2, #1	@ tmp154,
	mvn	r4, #-2147483648	@ INFO,
	mov	r5, #32	@ NumBits,
	str	r2, [r7, r1]	@ tmp154, <variable>.SeErrFlg
	b	.L2701	@
.L2705:
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.35338
	bl	BsSkip	@
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.35338
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r4, r0	@ INFO,
	mov	r0, r6	@, D.35338
	bl	BsGet	@
	tst	r0, #1	@,
	mov	r0, r5, asl #1	@ tmp152, zeros,
	rsbne	r4, r4, #0	@ INFO, INFO
	add	r5, r0, #1	@ NumBits, tmp152,
	b	.L2701	@
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	Scaling_List
	.type	Scaling_List, %function
Scaling_List:
	.fnstart
.LFB1467:
	@ args = 4, pretend = 0, frame = 16
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
	subs	r4, r3, #0	@ sizeOfScalingList, sizeOfScalingList
	str	r0, [fp, #-48]	@ pH264Ctx, %sfp
	mov	r9, r1	@ scalingList_Org, scalingList_Org
	mov	r6, r2	@ scalingList, scalingList
	ble	.L2713	@,
	cmp	r4, #16	@ sizeOfScalingList,
	sub	r0, r4, #1	@ tmp180, sizeOfScalingList,
	and	r3, r0, #1	@, tmp180,
	mov	sl, #255	@ tmp179,
	str	r3, [fp, #-52]	@, %sfp
	beq	.L2740	@,
	ldr	r8, .L2743	@,
	ldrb	r5, [r8, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
.L2728:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	and	r8, r5, #252	@ tmp205, scanj,
	bl	se_v	@
	add	r0, r0, #264	@ tmp196,,
	mov	r7, r0, asr #31	@ tmp197, tmp196,
	mov	r2, r7, lsr #24	@ tmp198, tmp197,
	and	r7, r5, #3	@ tmp207, scanj,
	add	ip, r0, r2	@ tmp199, tmp196, tmp198
	and	r3, ip, #255	@ tmp200, tmp199,
	mov	ip, r7, asl #3	@ D.40987, tmp207,
	cmp	r3, r2	@ tmp200, tmp198
	cmpeq	r5, #0	@, scanj,
	movne	r1, #0	@, tmp203
	moveq	r1, #1	@, tmp203
	subs	r3, r3, r2	@ nextScale, tmp200, tmp198
	ldr	r2, [fp, #4]	@, UseDefaultScalingMatrix
	str	r1, [r2, #0]	@ tmp203,
	add	r1, r6, r8	@ D.40985, scalingList, tmp205
	moveq	r2, #8	@ tmpscale,
	movne	r2, r3	@ tmpscale, nextScale
	str	r2, [r9, r5, asl #2]	@ tmpscale,* scalingList_Org
	and	r7, r2, #255	@ tmp209, tmpscale,
	ldr	r0, [r1, #0]	@ tmp214,* D.40985
	mov	r5, #1	@ j,
	cmp	r4, r5	@ sizeOfScalingList, j
	mov	r8, r2	@ lastScale, tmpscale
	bic	r0, r0, sl, asl ip	@ tmp215, tmp214, tmp179,
	orr	r0, r0, r7, asl ip	@, tmp216, tmp215, tmp209,
	str	r0, [r1, #0]	@ tmp216,* D.40985
	ble	.L2713	@,
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r1, #0	@,
	beq	.L2712	@,
	cmp	r4, #16	@ sizeOfScalingList,
	ldrne	r1, .L2743	@,
	ldreq	r1, .L2743+4	@,
	cmp	r3, #0	@ nextScale,
	ldrb	r7, [r1, r5]	@ zero_extendqisi2	@ scanj,* j
	bne	.L2733	@,
.L2719:
	mov	r8, r2	@ tmpscale, tmpscale
	mov	r3, #0	@ nextScale,
.L2734:
	and	r2, r7, #252	@ tmp232, scanj,
	and	r1, r7, #3	@ tmp234, scanj,
	add	r2, r6, r2	@ D.40985, scalingList, tmp232
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	mov	lr, r1, asl #3	@ D.40987, tmp234,
	add	r5, r5, #1	@ j, j,
	ldr	r0, [r2, #0]	@ tmp241,* D.40985
	and	ip, r8, #255	@ tmp236, tmpscale,
	cmp	r4, r5	@ sizeOfScalingList, j
	bic	r0, r0, sl, asl lr	@ tmp242, tmp241, tmp179,
	orr	r1, r0, ip, asl lr	@, tmp243, tmp242, tmp236,
	str	r1, [r2, #0]	@ tmp243,* D.40985
	ble	.L2713	@,
.L2712:
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r1, .L2743+4	@,
	ldrne	r2, .L2743	@,
	ldreqb	r7, [r1, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	ldrneb	r7, [r2, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	cmp	r3, #0	@ nextScale,
	bne	.L2741	@,
.L2710:
	mov	r3, #0	@ nextScale,
.L2711:
	and	r2, r7, #3	@ tmp165, scanj,
	mov	lr, r7, lsr #2	@ tmp163, scanj,
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	and	r0, r8, #255	@ tmp166, tmpscale,
	mov	r1, r2, asl #3	@ D.40987, tmp165,
	ldr	ip, [r6, lr, asl #2]	@ tmp172,* scalingList
	cmp	r4, #16	@ sizeOfScalingList,
	add	r5, r5, #1	@ tmp183, j,
	bic	r2, ip, sl, asl r1	@ tmp171, tmp172, tmp179,
	orr	r7, r2, r0, asl r1	@, tmp173, tmp171, tmp166,
	str	r7, [r6, lr, asl #2]	@ tmp173,* scalingList
	beq	.L2742	@,
	ldr	lr, .L2743	@,
	ldrb	r7, [lr, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
.L2735:
	cmp	r3, #0	@ nextScale,
	bne	.L2736	@,
.L2723:
	mov	r3, #0	@ nextScale,
.L2737:
	and	r1, r7, #3	@ tmp261, scanj,
	mov	r2, r7, lsr #2	@ tmp258, scanj,
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	add	r5, r5, #1	@ j, tmp183,
	mov	lr, r1, asl #3	@ D.40987, tmp261,
	ldr	r0, [r6, r2, asl #2]	@ tmp268,* scalingList
	and	ip, r8, #255	@ tmp263, tmpscale,
	cmp	r4, r5	@ sizeOfScalingList, j
	bic	r0, r0, sl, asl lr	@ tmp269, tmp268, tmp179,
	orr	r1, r0, ip, asl lr	@, tmp270, tmp269, tmp263,
	str	r1, [r6, r2, asl #2]	@ tmp270,* scalingList
	bgt	.L2712	@,
.L2713:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2736:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	se_v	@
	add	r3, r8, #256	@ tmp249, tmpscale,
	add	r1, r3, r0	@ tmp250, tmp249,
	mov	r0, r1, asr #31	@ tmp251, tmp250,
	mov	r2, r0, lsr #24	@ tmp252, tmp251,
	add	ip, r1, r2	@ tmp253, tmp250, tmp252
	ldr	r1, [fp, #4]	@, UseDefaultScalingMatrix
	and	r3, ip, #255	@ tmp254, tmp253,
	cmp	r3, r2	@ tmp254, tmp252
	cmpeq	r7, #0	@, scanj,
	movne	r0, #0	@, tmp257
	moveq	r0, #1	@, tmp257
	subs	r3, r3, r2	@ nextScale, tmp254, tmp252
	str	r0, [r1, #0]	@ tmp257,
	beq	.L2723	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2737	@
.L2741:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	se_v	@
	add	ip, r8, #256	@ tmp151, lastScale,
	add	r1, ip, r0	@ tmp152, tmp151,
	mov	r2, r1, asr #31	@ tmp153, tmp152,
	mov	r0, r2, lsr #24	@ tmp154, tmp153,
	ldr	r2, [fp, #4]	@, UseDefaultScalingMatrix
	add	r3, r1, r0	@ tmp155, tmp152, tmp154
	and	ip, r3, #255	@ tmp156, tmp155,
	cmp	ip, r0	@ tmp156, tmp154
	cmpeq	r7, #0	@, scanj,
	movne	r1, #0	@, tmp162
	moveq	r1, #1	@, tmp162
	subs	r3, ip, r0	@ nextScale, tmp156, tmp154
	str	r1, [r2, #0]	@ tmp162,
	movne	r8, r3	@ tmpscale, nextScale
	bne	.L2711	@,
	b	.L2710	@
.L2742:
	ldr	ip, .L2743+4	@,
	ldrb	r7, [ip, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2735	@
.L2740:
	ldr	r3, .L2743+4	@,
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2728	@
.L2733:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	str	r2, [fp, #-56]	@,
	bl	se_v	@
	ldr	r2, [fp, #-56]	@,
	add	r3, r2, #256	@ tmp222, tmpscale,
	add	r0, r3, r0	@ tmp223, tmp222,
	mov	r1, r0, asr #31	@ tmp224, tmp223,
	mov	ip, r1, lsr #24	@ tmp225, tmp224,
	ldr	r1, [fp, #4]	@, UseDefaultScalingMatrix
	add	r8, r0, ip	@ tmp226, tmp223, tmp225
	and	r3, r8, #255	@ tmp227, tmp226,
	cmp	r3, ip	@ tmp227, tmp225
	cmpeq	r7, #0	@, scanj,
	movne	r8, #0	@, tmp230
	moveq	r8, #1	@, tmp230
	subs	r3, r3, ip	@ nextScale, tmp227, tmp225
	str	r8, [r1, #0]	@ tmp230,
	beq	.L2719	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2734	@
.L2744:
	.align	2
.L2743:
	.word	.LANCHOR0+176
	.word	.LANCHOR0+160
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
.LFB1359:
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
	add	r6, r0, #13504	@ D.35304, pH264Ctx,
	add	r6, r6, #24	@ D.35304, D.35304,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.35304
	bl	BsShow	@
	mov	r4, r0	@ D.35305,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bls	.L2750	@,
	cmp	r0, #31	@ zeros,
	bls	.L2751	@,
	movw	r1, #55460	@ tmp150,
	mvn	r4, #0	@ INFO,
	mov	r5, #32	@ NumBits,
	mov	r2, #1	@ tmp151,
	str	r2, [r7, r1]	@ tmp151, <variable>.SeErrFlg
.L2747:
	ldr	ip, [r7, #368]	@ D.35323, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2750:
	mov	r5, r0, asl #1	@ tmp146, zeros,
	mov	r0, r6	@, D.35304
	add	r5, r5, #1	@ NumBits, tmp146,
	rsb	r3, r5, #32	@ tmp147, NumBits,
	mov	r4, r4, lsr r3	@ tmp148, D.35305,
	mov	r1, r5	@, NumBits
	sub	r4, r4, #1	@ INFO, tmp148,
	bl	BsSkip	@
	b	.L2747	@
.L2751:
	add	r4, r0, #1	@ D.35319, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r6	@, D.35304
	bl	BsSkip	@
	mov	r1, r4	@, D.35319
	mov	r0, r6	@, D.35304
	bl	BsShow	@
	mov	r1, r4	@, D.35319
	sub	r4, r0, #1	@ INFO,,
	mov	r0, r6	@, D.35304
	bl	BsSkip	@
	mov	r0, r5, asl #1	@ tmp149, zeros,
	add	r5, r0, #1	@ NumBits, tmp149,
	b	.L2747	@
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	H264_DecFramePackingSEI
	.type	H264_DecFramePackingSEI, %function
H264_DecFramePackingSEI:
	.fnstart
.LFB1478:
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
	movw	r1, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC119	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	ip, #26400	@ tmp156,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC120	@,
	movt	r2, #:upper16:.LC120	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_id
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26377	@ tmp158,
	uxtb	r0, r0	@ D.42224,
	strb	r0, [r4, r3]	@ D.42224, <variable>.FramePackSEI.frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.42224,
	beq	.L2756	@,
.L2753:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC136	@,
	movt	r2, #:upper16:.LC136	@,
	bl	u_v	@
	movw	r3, #26376	@ tmp208,
	movw	r1, #26378	@ tmp206,
	mov	r2, #1	@ tmp209,
	strb	r2, [r4, r3]	@ tmp209, <variable>.FramePackSEI.frame_packing_dec_ok
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2756:
	mov	r1, #7	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC121	@,
	movt	r2, #:upper16:.LC121	@,
	bl	u_v	@
	movw	r6, #26392	@ tmp161,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	movw	r5, #26379	@ tmp163,
	str	r0, [r4, r6]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC123	@,
	movt	r2, #:upper16:.LC123	@,
	strb	r0, [r4, r5]	@, <variable>.FramePackSEI.quincunx_sampling_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26396	@ tmp166,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC124	@,
	movt	r2, #:upper16:.LC124	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.content_interpretation_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26380	@ tmp168,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC125	@,
	movt	r2, #:upper16:.LC125	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.spatial_flipping_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26381	@ tmp171,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_flipped_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26382	@ tmp174,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC127	@,
	movt	r2, #:upper16:.LC127	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.field_views_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26383	@ tmp177,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC128	@,
	movt	r2, #:upper16:.LC128	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.current_frame_is_frame0_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26384	@ tmp180,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC129	@,
	movt	r2, #:upper16:.LC129	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_self_contained_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrsb	r2, [r4, r5]	@ <variable>.FramePackSEI.quincunx_sampling_flag, <variable>.FramePackSEI.quincunx_sampling_flag
	movw	r1, #26385	@ tmp183,
	cmp	r2, #0	@ <variable>.FramePackSEI.quincunx_sampling_flag,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_self_contained_flag
	bne	.L2754	@,
	ldr	lr, [r4, r6]	@ <variable>.FramePackSEI.frame_packing_arrangement_type, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	lr, #5	@ <variable>.FramePackSEI.frame_packing_arrangement_type,
	beq	.L2754	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC130	@,
	movt	r2, #:upper16:.LC130	@,
	bl	u_v	@
	movw	r3, #26386	@ tmp190,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC131	@,
	movt	r2, #:upper16:.LC131	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26387	@ tmp193,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_grid_position_y
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26388	@ tmp196,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC133	@,
	movt	r2, #:upper16:.LC133	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame1_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26389	@ tmp199,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_grid_position_y
.L2754:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC134	@,
	movt	r2, #:upper16:.LC134	@,
	bl	u_v	@
	movw	ip, #26404	@ tmp202,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_reserved_byte
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r2, #26408	@ tmp204,
	str	r0, [r4, r2]	@, <variable>.FramePackSEI.frame_packing_arrangement_repetition_period
	b	.L2753	@
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecSEI
	.type	H264_DecSEI, %function
H264_DecSEI:
	.fnstart
.LFB1480:
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
	ldr	r2, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	sl, r0, #13504	@ D.42464, pH264Ctx,
	sub	r9, fp, #44	@ tmp800,,
	add	sl, sl, #24	@ D.42464, D.42464,
	movw	r5, #13552	@ tmp890,
	movw	r6, #13544	@ tmp891,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r3, #32	@ tmp224,
	mov	r0, #0	@ tmp221,
	str	r0, [fp, #-60]	@ tmp221, %sfp
	strb	r0, [r9, #-1]!	@ tmp221, byte_tmp
	str	r3, [r2, #24]	@ tmp224, <variable>.bitsoffset
.L2761:
	mov	r1, r9	@, tmp800
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r7, #8	@ tmp228, <variable>.BS.TotalPos,
	ldrb	r7, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.753, byte_tmp
	cmp	ip, r1, asl #3	@ tmp228, <variable>.BS.BsLen,
	mov	r8, r0	@ ret,
	ble	.L3071	@,
.L2760:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42469,
.L2763:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3071:
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r8, #0	@ ret,
	add	r2, r3, r7	@,, byte_tmp.753
	str	r2, [fp, #-60]	@, %sfp
	ble	.L2760	@,
	ldrb	r8, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r8, #255	@ byte_tmp,
	beq	.L2761	@,
	mov	r5, #0	@,
	movw	r6, #13544	@ tmp883,
	str	r5, [fp, #-68]	@, %sfp
	movw	r5, #13552	@ tmp882,
.L2875:
	mov	r7, #0	@ payloadSize,
.L2767:
	mov	r1, r9	@, tmp800
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp237, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp237, <variable>.BS.BsLen,
	mov	r8, r0	@ ret.7434,
	ldrb	r0, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7435, byte_tmp
	add	r7, r7, r0	@ payloadSize, payloadSize, byte_tmp.7435
	ble	.L3072	@,
.L2766:
	mov	r3, #1	@ prephitmp.7344,
	cmp	r7, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp247, prephitmp.7344
	cmp	r3, #0	@ tmp247,
	bne	.L3073	@,
.L2769:
	ldr	r0, [r4, #368]	@ temp.7442, <variable>.pCurrNal
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	r1, [r0, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	ldr	r2, [r0, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	cmp	r1, #2	@ <variable>.nal_segment,
	ldreq	r0, [r0, #52]	@ <variable>.bitsoffset, <variable>.bitsoffset
	addeq	r2, r0, r2	@ tmp250, <variable>.bitsoffset, <variable>.bitsoffset
	moveq	r2, r2, lsr #3	@ TotalBitOffset, tmp250,
	cmp	r3, #45	@,
	ldrls	pc, [pc, r3, asl #2]	@
	b	.L2772	@
.L2796:
	.word	.L2773
	.word	.L2774
	.word	.L2775
	.word	.L2776
	.word	.L2777
	.word	.L2778
	.word	.L2779
	.word	.L2780
	.word	.L2781
	.word	.L2782
	.word	.L2783
	.word	.L2784
	.word	.L2785
	.word	.L2786
	.word	.L2787
	.word	.L2788
	.word	.L2789
	.word	.L2790
	.word	.L2791
	.word	.L2792
	.word	.L2793
	.word	.L2794
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2772
	.word	.L2795
.L3072:
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	r8, #0	@ ret.7434,
	ble	.L2766	@,
	ldrb	lr, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	lr, #255	@ byte_tmp,
	beq	.L2767	@,
	mov	r3, #0	@ prephitmp.7344,
	cmp	r7, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp247, prephitmp.7344
	cmp	r3, #0	@ tmp247,
	beq	.L2769	@,
.L3073:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42469,
	b	.L2763	@
.L2795:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	ldr	r8, [r4, r5]	@ bitpos.7621, <variable>.BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7346, <variable>.BS.TotalPos
	mov	r2, r7, asl #3	@ temp.7623, payloadSize,
	rsb	r8, r8, r3	@ bitpos.7622, bitpos.7621, prephitmp.7346
	cmp	r8, r2	@ bitpos.7622, temp.7623
	blt	.L3074	@,
.L2862:
	mov	r1, r7	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
.L2797:
	movw	r3, #54024	@ tmp789,
	ldr	r0, [r4, r3]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r0, #3	@ <variable>.TotalUsrDatNum,
	bhi	.L3075	@,
.L2869:
	mov	r7, #0	@,
	str	r7, [fp, #-60]	@, %sfp
.L2873:
	mov	r1, r9	@, tmp800
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp794, <variable>.BS.TotalPos,
	ldrb	r7, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7640, byte_tmp
	cmp	ip, r1, asl #3	@ tmp794, <variable>.BS.BsLen,
	mov	r8, r0	@ ret.7639,
	ble	.L3076	@,
.L2872:
	mov	r0, #0	@ D.42469,
	b	.L2763	@
.L2794:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp743, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp743, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7620,
	bne	.L3064	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7620,
	cmp	r7, r1	@ payloadSize, i.7620
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1308, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1308, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3064:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7620, i.7620
	b	.L2860	@
.L2861:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp749, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp749, <variable>.BS.BsLen,
	bgt	.L3077	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1314, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1314, <variable>.BS.BsLen,
	bgt	.L3078	@,
.L2860:
	add	r8, r9, #1	@ tmp989, i.7620,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7620, tmp989,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp989
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2861	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2790:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC160	@,
	movt	r1, #:upper16:.LC160	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp691, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp691, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7594,
	bne	.L3060	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7594,
	cmp	r7, r1	@ payloadSize, i.7594
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1260, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1260, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3060:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7594, i.7594
	b	.L2852	@
.L2853:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp697, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp697, <variable>.BS.BsLen,
	bgt	.L3079	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1266, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1266, <variable>.BS.BsLen,
	bgt	.L3080	@,
.L2852:
	add	r8, r9, #1	@ tmp973, i.7594,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7594, tmp973,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp973
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2853	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2792:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp717, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp717, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7607,
	bne	.L3062	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7607,
	cmp	r7, r1	@ payloadSize, i.7607
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1284, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1284, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3062:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7607, i.7607
	b	.L2856	@
.L2857:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp723, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp723, <variable>.BS.BsLen,
	bgt	.L3081	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1290, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1290, <variable>.BS.BsLen,
	bgt	.L3082	@,
.L2856:
	add	r8, r9, #1	@ tmp981, i.7607,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7607, tmp981,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp981
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2857	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2791:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC161	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp704, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp704, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7600,
	bne	.L3061	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7600,
	cmp	r7, r1	@ payloadSize, i.7600
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1272, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1272, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3061:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7600, i.7600
	b	.L2854	@
.L2855:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp710, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp710, <variable>.BS.BsLen,
	bgt	.L3083	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1278, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1278, <variable>.BS.BsLen,
	bgt	.L3084	@,
.L2854:
	add	r8, r9, #1	@ tmp977, i.7600,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7600, tmp977,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp977
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2855	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2793:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp730, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp730, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7613,
	bne	.L3063	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7613,
	cmp	r7, r1	@ payloadSize, i.7613
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1296, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1296, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3063:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7613, i.7613
	b	.L2858	@
.L2859:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp736, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp736, <variable>.BS.BsLen,
	bgt	.L3085	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1302, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1302, <variable>.BS.BsLen,
	bgt	.L3086	@,
.L2858:
	add	r8, r9, #1	@ tmp985, i.7613,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7613, tmp985,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp985
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2859	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2788:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC158	@,
	movt	r1, #:upper16:.LC158	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp665, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp665, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7582,
	bne	.L3058	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7582,
	cmp	r7, r1	@ payloadSize, i.7582
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1236, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1236, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3058:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7582, i.7582
	b	.L2848	@
.L2849:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp671, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp671, <variable>.BS.BsLen,
	bgt	.L3087	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1242, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1242, <variable>.BS.BsLen,
	bgt	.L3088	@,
.L2848:
	add	r8, r9, #1	@ tmp965, i.7582,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7582, tmp965,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp965
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2849	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2787:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC157	@,
	movt	r1, #:upper16:.LC157	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp652, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp652, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7576,
	bne	.L3057	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7576,
	cmp	r7, r1	@ payloadSize, i.7576
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1224, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1224, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3057:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7576, i.7576
	b	.L2846	@
.L2847:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp658, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp658, <variable>.BS.BsLen,
	bgt	.L3089	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1230, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1230, <variable>.BS.BsLen,
	bgt	.L3090	@,
.L2846:
	add	r8, r9, #1	@ tmp961, i.7576,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7576, tmp961,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp961
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2847	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2789:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp678, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp678, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7588,
	bne	.L3059	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7588,
	cmp	r7, r1	@ payloadSize, i.7588
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1248, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1248, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3059:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7588, i.7588
	b	.L2850	@
.L2851:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp684, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp684, <variable>.BS.BsLen,
	bgt	.L3091	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1254, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1254, <variable>.BS.BsLen,
	bgt	.L3092	@,
.L2850:
	add	r8, r9, #1	@ tmp969, i.7588,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7588, tmp969,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp969
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2851	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2786:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp639, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp639, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7570,
	bne	.L3056	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7570,
	cmp	r7, r1	@ payloadSize, i.7570
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1212, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1212, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3056:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7570, i.7570
	b	.L2844	@
.L2845:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp645, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp645, <variable>.BS.BsLen,
	bgt	.L3093	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1218, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1218, <variable>.BS.BsLen,
	bgt	.L3094	@,
.L2844:
	add	r8, r9, #1	@ tmp957, i.7570,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7570, tmp957,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp957
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2845	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2785:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp626, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp626, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7564,
	bne	.L3055	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7564,
	cmp	r7, r1	@ payloadSize, i.7564
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1200, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1200, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3055:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7564, i.7564
	b	.L2842	@
.L2843:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp632, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp632, <variable>.BS.BsLen,
	bgt	.L3095	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1206, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1206, <variable>.BS.BsLen,
	bgt	.L3096	@,
.L2842:
	add	r8, r9, #1	@ tmp953, i.7564,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7564, tmp953,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp953
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2843	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2784:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC154	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp613, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp613, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7558,
	bne	.L3054	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7558,
	cmp	r7, r1	@ payloadSize, i.7558
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1188, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1188, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3054:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7558, i.7558
	b	.L2840	@
.L2841:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp619, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp619, <variable>.BS.BsLen,
	bgt	.L3097	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1194, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1194, <variable>.BS.BsLen,
	bgt	.L3098	@,
.L2840:
	add	r8, r9, #1	@ tmp949, i.7558,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7558, tmp949,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp949
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2841	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2783:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp600, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp600, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7552,
	bne	.L3053	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7552,
	cmp	r7, r1	@ payloadSize, i.7552
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1176, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1176, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3053:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7552, i.7552
	b	.L2838	@
.L2839:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp606, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp606, <variable>.BS.BsLen,
	bgt	.L3099	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1182, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1182, <variable>.BS.BsLen,
	bgt	.L3100	@,
.L2838:
	add	r8, r9, #1	@ tmp945, i.7552,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7552, tmp945,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp945
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2839	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2782:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp587, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp587, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7546,
	bne	.L3052	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7546,
	cmp	r7, r1	@ payloadSize, i.7546
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1164, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1164, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3052:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7546, i.7546
	b	.L2836	@
.L2837:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp593, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp593, <variable>.BS.BsLen,
	bgt	.L3101	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1170, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1170, <variable>.BS.BsLen,
	bgt	.L3102	@,
.L2836:
	add	r8, r9, #1	@ tmp941, i.7546,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7546, tmp941,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp941
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2837	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2781:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp574, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp574, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7540,
	bne	.L3051	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7540,
	cmp	r7, r1	@ payloadSize, i.7540
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1152, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1152, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3051:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7540, i.7540
	b	.L2834	@
.L2835:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp580, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp580, <variable>.BS.BsLen,
	bgt	.L3103	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1158, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1158, <variable>.BS.BsLen,
	bgt	.L3104	@,
.L2834:
	add	r8, r9, #1	@ tmp937, i.7540,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7540, tmp937,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp937
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2835	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2780:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC150	@,
	movt	r1, #:upper16:.LC150	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp561, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp561, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7534,
	bne	.L3050	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7534,
	cmp	r7, r1	@ payloadSize, i.7534
	ble	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1140, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1140, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3050:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7534, i.7534
	b	.L2832	@
.L2833:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp567, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp567, <variable>.BS.BsLen,
	bgt	.L3105	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1146, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1146, <variable>.BS.BsLen,
	bgt	.L3106	@,
.L2832:
	add	r8, r9, #1	@ tmp933, i.7534,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7534, tmp933,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp933
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2833	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2779:
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC149	@,
	mov	r3, r7	@, payloadSize
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2829	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r3, #8	@ tmp551, <variable>.BS.TotalPos,
	cmp	r1, r2, asl #3	@ tmp551, <variable>.BS.BsLen,
	bgt	.L2829	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7527,
	bne	.L3049	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7527,
	cmp	r7, r1	@ payloadSize, i.7527
	ble	.L2829	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, ip, #8	@ tmp1128, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1128, <variable>.BS.BsLen,
	bgt	.L2829	@,
.L3049:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7527, i.7527
	b	.L2830	@
.L2831:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp554, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp554, <variable>.BS.BsLen,
	bgt	.L3069	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1134, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1134, <variable>.BS.BsLen,
	bgt	.L3069	@,
.L2830:
	add	r8, r9, #1	@ tmp929, i.7527,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7527, tmp929,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp929
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2831	@,
.L3069:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
.L2829:
	mov	r1, r7	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	movw	r3, #54024	@ tmp789,
	ldr	r0, [r4, r3]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r0, #3	@ <variable>.TotalUsrDatNum,
	bls	.L2869	@,
.L3075:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC165	@,
	movt	r1, #:upper16:.LC165	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42469,
	b	.L2763	@
.L2778:
	ldr	r8, [fp, #-68]	@, %sfp
	cmp	r8, #0	@,
	bne	.L2777	@,
	movw	r1, #:lower16:.LC144	@,
	mov	r0, #20	@,
	movt	r1, #:upper16:.LC144	@,
	mov	r3, r7	@, payloadSize
	bl	dprint_vfmw	@
.L2810:
	movw	r8, #55520	@ tmp320,
	movw	lr, #54024	@ tmp319,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r8, [r4, lr]	@ D.42517, <variable>.TotalUsrDatNum
	str	lr, [fp, #-84]	@,
	bl	GetUsd	@
	ldr	r2, [fp, #-84]	@,
	add	r1, r8, #13504	@ tmp322, D.42517,
	ldr	r3, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r2, r1, #2	@ tmp322, tmp322,
	add	ip, r3, #13504	@ tmp328, <variable>.TotalUsrDatNum,
	add	r1, r4, r2, asl #2	@, tmp326, pH264Ctx, tmp322,
	add	r3, ip, #2	@ tmp328, tmp328,
	add	ip, r4, r3, asl #2	@, tmp334, pH264Ctx, tmp328,
	str	r0, [r1, #4]	@, <variable>.pUsrDatArray
	ldr	r1, [ip, #4]	@ prephitmp.7354, <variable>.pUsrDatArray
	cmp	r1, #0	@ prephitmp.7354,
	beq	.L2811	@,
	ldr	lr, [r4, #368]	@ temp.7471, <variable>.pCurrNal
	cmp	r7, #1024	@ payloadSize,
	movlt	ip, r7	@ D.42523, payloadSize
	movge	ip, #1024	@ D.42523,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ segment_idx, <variable>.nal_used_segment
	ldr	r2, [lr, #68]	@ temp.7659, <variable>.nal_segment
	cmp	r3, r2	@ segment_idx, temp.7659
	movcs	r0, #0	@ prephitmp.7348,
	strcs	r0, [fp, #-72]	@ prephitmp.7348, %sfp
	bcs	.L2813	@,
	rsb	r8, r3, r3, asl #3	@, tmp338, segment_idx, segment_idx,
	add	r0, r3, #1	@ segment_idx, segment_idx,
	mvn	r3, r3	@ tmp922, segment_idx
	cmp	r0, r2	@ segment_idx, temp.7659
	add	r8, lr, r8, asl #2	@, tmp340, temp.7471, tmp338,
	add	lr, r3, r2	@ tmp921, tmp922, temp.7659
	add	r8, r8, #8	@ tmp341, tmp340,
	and	r3, lr, #1	@, tmp921,
	add	lr, r8, #32	@, tmp341,
	str	r3, [fp, #-64]	@, %sfp
	str	lr, [fp, #-76]	@, %sfp
	ldr	r3, [r8, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	lr, r3, #7	@, <variable>.bitsoffset,
	ldr	r3, [r8, #4]	@, <variable>.bitstream_length
	sub	r3, r3, lr, lsr #3	@,,,
	str	r3, [fp, #-72]	@, %sfp
	beq	.L2971	@,
	ldr	r3, [fp, #-64]	@, %sfp
	cmp	r3, #0	@,
	beq	.L3048	@,
	ldr	r3, [fp, #-76]	@, %sfp
	add	r0, r0, #1	@ segment_idx, segment_idx,
	cmp	r0, r2	@ segment_idx, temp.7659
	ldr	lr, [r3, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r3, [r8, #32]	@, <variable>.bitstream_length
	add	r8, r8, #60	@, tmp341,
	add	lr, lr, #7	@, <variable>.bitsoffset,
	str	r8, [fp, #-76]	@, %sfp
	sub	r8, r3, lr, lsr #3	@,,,
	ldr	r3, [fp, #-72]	@, %sfp
	add	lr, r3, r8	@,,
	str	lr, [fp, #-72]	@, %sfp
	beq	.L2971	@,
.L3048:
	ldr	r3, [fp, #-72]	@ lenth_not_parse, %sfp
	ldr	lr, [fp, #-76]	@ ivtmp.7391, %sfp
	str	r1, [fp, #-88]	@ prephitmp.7354, %sfp
	str	ip, [fp, #-92]	@ D.42523, %sfp
.L2814:
	ldr	ip, [lr, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r8, lr	@ tmp925, ivtmp.7391
	ldr	r1, [r8], #28	@, <variable>.bitstream_length
	add	r0, r0, #2	@ segment_idx, segment_idx,
	add	ip, ip, #7	@, <variable>.bitsoffset,
	str	ip, [fp, #-60]	@, %sfp
	ldr	ip, [lr, #28]	@, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, temp.7659
	add	lr, lr, #56	@ ivtmp.7391, ivtmp.7391,
	str	ip, [fp, #-76]	@, %sfp
	ldr	r8, [r8, #12]	@, <variable>.bitsoffset
	ldr	ip, [fp, #-60]	@, %sfp
	str	r8, [fp, #-72]	@, %sfp
	sub	r8, r1, ip, lsr #3	@ tmp1005,,,
	ldr	r1, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-76]	@, %sfp
	add	r3, r3, r8	@ lenth_not_parse, lenth_not_parse, tmp1005
	add	r8, r1, #7	@ tmp1010,,
	sub	r8, ip, r8, lsr #3	@ tmp1013,, tmp1010,
	add	r3, r3, r8	@ lenth_not_parse, lenth_not_parse, tmp1013
	bne	.L2814	@,
	ldr	r1, [fp, #-88]	@ prephitmp.7354, %sfp
	ldr	ip, [fp, #-92]	@ D.42523, %sfp
	str	r3, [fp, #-72]	@ lenth_not_parse, %sfp
.L2971:
	ldr	r0, [fp, #-72]	@ prephitmp.7348, %sfp
.L2813:
	ldr	r3, [fp, #-68]	@, %sfp
	cmp	ip, r0	@ D.42523, prephitmp.7348
	ldr	lr, [fp, #-72]	@, %sfp
	movle	lr, ip	@, D.42523
	sxtb	r2, r3	@ registered_flag,
	cmp	r2, #1	@ registered_flag,
	str	lr, [fp, #-64]	@, %sfp
	movne	r8, #0	@ prephitmp.7355,
	strne	r8, [fp, #-60]	@ prephitmp.7355, %sfp
	beq	.L3107	@,
.L2821:
	ldr	r3, [fp, #-64]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	str	ip, [fp, #-80]	@,
	rsb	r2, r8, r3	@, prephitmp.7355,
	bl	GetBytes	@
	ldr	ip, [fp, #-80]	@,
	subs	r8, r0, #0	@ ret.7488,
	ble	.L3108	@,
	ldr	r1, [fp, #-60]	@, %sfp
	rsb	lr, r1, ip	@ tmp459,, D.42523
	cmp	r8, lr	@ ret.7488, tmp459
	blt	.L3109	@,
	movw	r0, #54024	@ tmp477,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	ip, r7	@ D.42523, payloadSize
	rsb	r0, r1, r7	@,, payloadSize
	str	r0, [fp, #-60]	@, %sfp
	add	lr, r2, #13504	@ tmp475, <variable>.TotalUsrDatNum,
	add	r3, lr, #2	@ tmp475, tmp475,
	add	r2, r4, r3, asl #2	@, tmp482, pH264Ctx, tmp475,
	ldr	lr, [r2, #4]	@ tmp479, <variable>.pUsrDatArray
	str	r0, [lr, #1048]	@, <variable>.data_size
	bcc	.L3110	@,
.L2826:
	ldr	ip, [fp, #-60]	@, %sfp
	cmp	ip, #0	@,
	ble	.L2824	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp486, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp486, <variable>.BS.BsLen,
	bgt	.L2824	@,
	ldr	r8, [fp, #-60]	@, %sfp
	tst	r8, #1	@,
	mov	r8, #0	@ i.7507,
	bne	.L2827	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r8, #1	@ i.7507,
	cmp	r1, r8	@, i.7507
	bgt	.L3068	@,
	b	.L2824	@
.L2827:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp920, i.7507,
	mov	r0, sl	@, D.42464
	cmp	r2, r7	@, tmp920
	add	r8, r7, #1	@ i.7507, tmp920,
	mov	r1, #8	@,
	ble	.L2824	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp492, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp492, <variable>.BS.BsLen,
	bgt	.L2824	@,
	bl	BsSkip	@
.L3068:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1117, <variable>.BS.TotalPos,
	cmp	lr, r0, asl #3	@ tmp1117, <variable>.BS.BsLen,
	ble	.L2827	@,
.L2824:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #54024	@ tmp499,
	ldr	r0, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r0, #13504	@ tmp497, <variable>.TotalUsrDatNum,
	ldrd	r0, [r3, #56]	@, <variable>.pstExtraData,
	add	ip, lr, #2	@ tmp497, tmp497,
	mov	lr, #1056	@ tmp506,
	movw	r3, #:lower16:g_event_report	@ tmp530,
	movt	r3, #:upper16:g_event_report	@ tmp530,
	strd	r0, [fp, #-60]	@,,
	add	r1, r4, ip, asl #2	@, tmp504, pH264Ctx, tmp497,
	ldr	ip, [r1, #4]	@ tmp501, <variable>.pUsrDatArray
	ldrd	r0, [fp, #-60]	@,,
	strd	r0, [ip, lr]	@, tmp501, tmp506
	movw	r0, #55480	@ tmp528,
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, ip, #13504	@ tmp509, <variable>.TotalUsrDatNum,
	add	lr, r1, #2	@ tmp509, tmp509,
	add	ip, r4, lr, asl #2	@, tmp516, pH264Ctx, tmp509,
	mov	lr, #8	@ tmp518,
	ldr	r1, [ip, #4]	@ tmp513, <variable>.pUsrDatArray
	str	lr, [r1, #1036]	@ tmp518, <variable>.from
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r0, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r1, ip, #13504	@ tmp519, <variable>.TotalUsrDatNum,
	add	lr, r1, #2	@ tmp519, tmp519,
	add	ip, r4, lr, asl #2	@, tmp526, pH264Ctx, tmp519,
	ldr	r1, [ip, #4]	@ tmp523, <variable>.pUsrDatArray
	str	r0, [r1, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r3, [r3, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2797	@,
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	sub	r2, fp, #44	@ tmp544,,
	movw	r0, #55520	@ tmp542,
	mov	r1, #6	@,
	add	lr, ip, #13504	@ tmp532, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	ip, lr, #2	@ tmp532, tmp532,
	add	lr, r4, ip, asl #2	@, tmp538, pH264Ctx, tmp532,
	ldr	ip, [lr, #4]	@ tmp540, <variable>.pUsrDatArray
	str	ip, [r2, #-8]!	@ tmp540, para
	blx	r3	@ g_event_report
	b	.L2797	@
.L2774:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	ldr	r8, [r4, r5]	@ bitpos, <variable>.BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7359, <variable>.BS.TotalPos
	mov	r2, r7, asl #3	@ D.42497, payloadSize,
	rsb	r8, r8, r3	@ bitpos.7450, bitpos, prephitmp.7359
	cmp	r8, r2	@ bitpos.7450, D.42497
	bge	.L2800	@,
	rsb	r1, r8, r2	@, bitpos.7450, D.42497
	str	r1, [fp, #-64]	@, %sfp
	ldr	r8, [fp, #-64]	@, %sfp
	add	r0, r1, #7	@ tmp270,,
	cmp	r8, #0	@,
	movge	r0, r8	@ D.42501,
	mov	r2, r0, asr #3	@, D.42501,
	str	r2, [fp, #-60]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
	ble	.L2802	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp276, prephitmp.7359,
	mov	r2, ip, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
	cmp	r2, lr	@ prephitmp.7361, tmp276
	blt	.L2802	@,
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r8, #0	@ i.7454,
	tst	r3, #1	@,
	beq	.L3111	@,
.L3041:
	str	r7, [fp, #-72]	@ payloadSize, %sfp
	b	.L2803	@
.L2804:
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7359, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp280, prephitmp.7359,
	cmp	r7, r2	@ tmp280, prephitmp.7361
	bgt	.L3066	@,
	bl	BsSkip	@
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7359, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp1078, prephitmp.7359,
	cmp	r7, r2	@ tmp1078, prephitmp.7361
	bgt	.L3066	@,
.L2803:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	ldr	lr, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp904, i.7454,
	mov	r0, sl	@, D.42464
	cmp	r7, lr	@ tmp904,
	add	r8, r7, #1	@ i.7454, tmp904,
	mov	r1, #8	@,
	blt	.L2804	@,
	ldr	r7, [fp, #-72]	@ payloadSize, %sfp
.L3013:
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7359, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
.L2802:
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r1, ip, asr #31	@ tmp284,,
	mov	r1, r1, lsr #29	@ tmp285, tmp284,
	add	r0, ip, r1	@ tmp286,, tmp285
	and	lr, r0, #7	@ tmp287, tmp286,
	rsb	r1, r1, lr	@ tmp288, tmp285, tmp287
	add	ip, r3, r1	@ tmp289, prephitmp.7359, tmp288
	cmp	ip, r2	@ tmp289, prephitmp.7361
	ble	.L3112	@,
.L2800:
	mov	r1, r7	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	b	.L2797	@
.L2773:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC139	@,
	movt	r1, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp255, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp255, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i,
	bne	.L3040	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i,
	cmp	r1, r7	@ i, payloadSize
	bge	.L2797	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp1061, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1061, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3040:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i, i
	b	.L2798	@
.L2799:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp261, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp261, <variable>.BS.BsLen,
	bgt	.L3113	@,
	bl	BsSkip	@
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1067, <variable>.BS.TotalPos,
	cmp	r0, r1, asl #3	@ tmp1067, <variable>.BS.BsLen,
	bgt	.L3114	@,
.L2798:
	add	r8, r9, #1	@ tmp900, i,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i, tmp900,
	bl	BsSkip	@
	cmp	r8, r7	@ tmp900, payloadSize
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	blt	.L2799	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2776:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC142	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, lr, #8	@ tmp308, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp308, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7469,
	bne	.L3043	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7469,
	cmp	r1, r7	@ i.7469, payloadSize
	bge	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1093, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1093, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3043:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7469, i.7469
	b	.L2807	@
.L2808:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp311, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp311, <variable>.BS.BsLen,
	bgt	.L3115	@,
	bl	BsSkip	@
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r0, #8	@ tmp1099, <variable>.BS.TotalPos,
	cmp	r1, r2, asl #3	@ tmp1099, <variable>.BS.BsLen,
	bgt	.L3116	@,
.L2807:
	add	r8, r9, #1	@ tmp912, i.7469,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7469, tmp912,
	bl	BsSkip	@
	cmp	r8, r7	@ tmp912, payloadSize
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	blt	.L2808	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2775:
	mov	r3, r7	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, lr, #8	@ tmp295, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp295, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7463,
	bne	.L3042	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7463,
	cmp	r1, r7	@ i.7463, payloadSize
	bge	.L2797	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1081, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1081, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3042:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7463, i.7463
	b	.L2805	@
.L2806:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp298, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp298, <variable>.BS.BsLen,
	bgt	.L3117	@,
	bl	BsSkip	@
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r0, #8	@ tmp1087, <variable>.BS.TotalPos,
	cmp	r1, r2, asl #3	@ tmp1087, <variable>.BS.BsLen,
	bgt	.L3118	@,
.L2805:
	add	r8, r9, #1	@ tmp908, i.7463,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7463, tmp908,
	bl	BsSkip	@
	cmp	r8, r7	@ tmp908, payloadSize
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	blt	.L2806	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2772:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2797	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp778, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp778, <variable>.BS.BsLen,
	bgt	.L2797	@,
	tst	r7, #1	@ payloadSize,
	mov	r1, #0	@ i.7637,
	bne	.L3039	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	mov	r1, #1	@ i.7637,
	cmp	r7, r1	@ payloadSize, i.7637
	ble	.L2797	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp1049, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1049, <variable>.BS.BsLen,
	bgt	.L2797	@,
.L3039:
	str	r9, [fp, #-60]	@ tmp800, %sfp
	mov	r9, r1	@ i.7637, i.7637
	b	.L2867	@
.L2868:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp784, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp784, <variable>.BS.BsLen,
	bgt	.L3119	@,
	bl	BsSkip	@
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1055, <variable>.BS.TotalPos,
	cmp	r0, r1, asl #3	@ tmp1055, <variable>.BS.BsLen,
	bgt	.L3120	@,
.L2867:
	add	r8, r9, #1	@ tmp896, i.7637,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	add	r9, r8, #1	@ i.7637, tmp896,
	bl	BsSkip	@
	cmp	r7, r8	@ payloadSize, tmp896
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bgt	.L2868	@,
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3076:
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r8, #0	@ ret.7639,
	add	r0, r3, r7	@,, byte_tmp.7640
	str	r0, [fp, #-60]	@, %sfp
	ble	.L2872	@,
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7646, byte_tmp
	cmp	r3, #255	@ byte_tmp.7646,
	beq	.L2873	@,
	cmp	r3, #128	@ byte_tmp.7646,
	bne	.L2875	@,
	mov	r0, #0	@ D.42469,
	b	.L2763	@
.L2777:
	movw	r1, #:lower16:.LC143	@,
	mov	r3, r7	@, payloadSize
	movt	r1, #:upper16:.LC143	@,
	mov	r0, #20	@,
	mov	lr, #1	@,
	str	lr, [fp, #-68]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2810	@
.L3109:
	movw	lr, #54024	@ tmp462,
	sub	r0, r8, #1	@ tmp913, ret.7488,
	ldr	r3, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	and	r2, r0, #1	@, tmp913,
	str	r2, [fp, #-60]	@, %sfp
	add	ip, r3, #13504	@ tmp460, <variable>.TotalUsrDatNum,
	add	r1, ip, #2	@ tmp460, tmp460,
	add	lr, r4, r1, asl #2	@, tmp467, pH264Ctx, tmp460,
	ldr	r0, [lr, #4]	@ tmp464, <variable>.pUsrDatArray
	str	r8, [r0, #1048]	@ ret.7488, <variable>.data_size
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp470, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp470, <variable>.BS.BsLen,
	bgt	.L2824	@,
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #1	@ i.7499,
	cmp	r8, r7	@ ret.7488, i.7499
	ble	.L2824	@,
	ldr	lr, [fp, #-60]	@, %sfp
	cmp	lr, #0	@,
	beq	.L2825	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1105, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp1105, <variable>.BS.BsLen,
	bgt	.L2824	@,
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #2	@ i.7499,
	cmp	r8, r7	@ ret.7488, i.7499
	bgt	.L2825	@,
	b	.L2824	@
.L3121:
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r0, sl	@, D.42464
	add	r3, r1, #8	@ tmp1024, <variable>.BS.TotalPos,
	mov	r1, #8	@,
	cmp	r3, ip, asl #3	@ tmp1024, <variable>.BS.BsLen,
	bgt	.L2824	@,
	bl	BsSkip	@
	cmp	r8, r7	@ ret.7488, i.7499
	ble	.L2824	@,
.L2825:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	mov	r1, #8	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r7, r7, #1	@ tmp916, i.7499,
	add	r3, r2, r1	@ tmp1016, <variable>.BS.TotalPos,
	mov	r0, sl	@, D.42464
	add	r7, r7, #1	@ i.7499, tmp916,
	cmp	r3, ip, asl #3	@ tmp1016, <variable>.BS.BsLen,
	ble	.L3121	@,
	b	.L2824	@
.L3074:
	rsb	r1, r8, r2	@, bitpos.7622, temp.7623
	str	r1, [fp, #-64]	@, %sfp
	cmp	r1, #0	@,
	add	r0, r1, #7	@ tmp757,,
	movge	r0, r1	@ temp.7722,
	mov	r2, r0, asr #3	@, temp.7722,
	str	r2, [fp, #-60]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
	ble	.L2864	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp763, prephitmp.7346,
	mov	r2, ip, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
	cmp	lr, r2	@ tmp763, prephitmp.7631
	bgt	.L2864	@,
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r8, #0	@ i.7626,
	tst	r3, #1	@,
	beq	.L3122	@,
.L3065:
	str	r7, [fp, #-72]	@ payloadSize, %sfp
	b	.L2865	@
.L2866:
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7346, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp767, prephitmp.7346,
	cmp	r7, r2	@ tmp767, prephitmp.7631
	bgt	.L3070	@,
	bl	BsSkip	@
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7346, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp1325, prephitmp.7346,
	cmp	r7, r2	@ tmp1325, prephitmp.7631
	bgt	.L3070	@,
.L2865:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	ldr	ip, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp993, i.7626,
	mov	r0, sl	@, D.42464
	cmp	r7, ip	@ tmp993,
	add	r8, r7, #1	@ i.7626, tmp993,
	mov	r1, #8	@,
	blt	.L2866	@,
	ldr	r7, [fp, #-72]	@ payloadSize, %sfp
.L3014:
	ldr	r8, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7346, <variable>.BS.TotalPos
	mov	r2, r8, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
.L2864:
	ldr	r8, [fp, #-64]	@, %sfp
	mov	r0, r8, asr #31	@ tmp771,,
	mov	r1, r0, lsr #29	@ tmp772, tmp771,
	add	ip, r8, r1	@ tmp773,, tmp772
	and	lr, ip, #7	@ tmp774, tmp773,
	rsb	r1, r1, lr	@ tmp775, tmp772, tmp774
	add	r0, r3, r1	@ tmp776, prephitmp.7346, tmp775
	cmp	r0, r2	@ tmp776, prephitmp.7631
	bgt	.L2862	@,
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	b	.L2862	@
.L3111:
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	ip, [fp, #-60]	@, %sfp
	mov	r8, #1	@ i.7454,
	cmp	r8, ip	@ i.7454,
	bge	.L3013	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7359, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7361, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1074, prephitmp.7359,
	cmp	lr, r2	@ tmp1074, prephitmp.7361
	ble	.L3041	@,
	b	.L2802	@
.L3122:
	mov	r0, sl	@, D.42464
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r8, #1	@ i.7626,
	cmp	r8, r0	@ i.7626,
	bge	.L3014	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7346, <variable>.BS.TotalPos
	mov	r2, ip, asl #3	@ prephitmp.7631, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1321, prephitmp.7346,
	cmp	lr, r2	@ tmp1321, prephitmp.7631
	ble	.L3065	@,
	b	.L2864	@
.L3107:
	movw	r0, #54024	@,
	strb	r2, [r1, #1064]	@ registered_flag, <variable>.IsRegistered
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC145	@,
	add	r8, r3, #13504	@ tmp350, <variable>.TotalUsrDatNum,
	movt	r2, #:upper16:.LC145	@,
	add	lr, r8, #2	@ tmp350, tmp350,
	add	r3, r4, lr, asl #2	@, tmp356, pH264Ctx, tmp350,
	ldr	r8, [r3, #4]	@ D.42520, <variable>.pUsrDatArray
	str	ip, [fp, #-80]	@,
	bl	u_v	@
	movw	lr, #54024	@,
	strb	r0, [r8, #1065]	@, <variable>.itu_t_t35_country_code
	ldr	ip, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r8, ip, #13504	@ tmp360, <variable>.TotalUsrDatNum,
	ldr	ip, [fp, #-80]	@,
	add	r1, r8, #2	@ tmp360, tmp360,
	add	r2, r4, r1, asl #2	@, tmp366, pH264Ctx, tmp360,
	ldr	r3, [r2, #4]	@ temp.7475, <variable>.pUsrDatArray
	ldrb	r0, [r3, #1065]	@ zero_extendqisi2	@ <variable>.itu_t_t35_country_code, <variable>.itu_t_t35_country_code
	cmp	r0, #255	@ <variable>.itu_t_t35_country_code,
	beq	.L2818	@,
	mov	r8, #3	@ prephitmp.7355,
	mov	r2, #0	@,
	strb	r2, [r3, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	str	r8, [fp, #-60]	@ prephitmp.7355, %sfp
.L2819:
	movw	r0, #54024	@,
	mov	r1, #16	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #:lower16:.LC147	@,
	mov	r0, r4	@, pH264Ctx
	movt	r2, #:upper16:.LC147	@,
	add	lr, r3, #13504	@ tmp373, <variable>.TotalUsrDatNum,
	add	r3, lr, #2	@ tmp373, tmp373,
	add	lr, r4, r3, asl #2	@, tmp379, pH264Ctx, tmp373,
	ldr	r3, [lr, #4]	@, <variable>.pUsrDatArray
	str	ip, [fp, #-80]	@,
	str	r3, [fp, #-72]	@, %sfp
	bl	u_v	@
	ldr	lr, [fp, #-72]	@, %sfp
	movw	r3, #1068	@ tmp382,
	mov	r1, r8	@, prephitmp.7355
	strh	r0, [lr, r3]	@ movhi	@, <variable>.itu_t_t35_provider_code
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	ldr	ip, [fp, #-64]	@, %sfp
	cmp	ip, r8	@, prephitmp.7355
	ldr	ip, [fp, #-80]	@,
	beq	.L2820	@,
	movw	r0, #54024	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r3, #13504	@ tmp383, <variable>.TotalUsrDatNum,
	add	r1, lr, #2	@ tmp383, tmp383,
	add	r2, r4, r1, asl #2	@, tmp389, pH264Ctx, tmp383,
	ldr	r1, [r2, #4]	@ prephitmp.7354, <variable>.pUsrDatArray
	b	.L2821	@
.L3110:
	rsb	r1, ip, r7	@, D.42523, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	b	.L2826	@
.L3112:
	mov	r0, sl	@, D.42464
	bl	BsSkip	@
	b	.L2800	@
.L3077:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3119:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3113:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3089:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3083:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3085:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3087:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3093:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3103:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3081:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3079:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3115:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3117:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3095:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3091:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3105:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3097:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3099:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3101:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3102:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3092:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3106:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3098:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3100:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3080:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3116:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3118:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3096:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3088:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3094:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3104:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3082:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3114:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3090:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3084:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3086:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3070:
	ldr	r7, [fp, #-72]	@ payloadSize, %sfp
	b	.L2864	@
.L3066:
	ldr	r7, [fp, #-72]	@ payloadSize, %sfp
	b	.L2802	@
.L3078:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L3120:
	ldr	r9, [fp, #-60]	@ tmp800, %sfp
	b	.L2797	@
.L2820:
	movw	r1, #54024	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r0, lr, #13504	@ tmp391, <variable>.TotalUsrDatNum,
	movw	lr, #:lower16:g_event_report	@ tmp424,
	add	r3, r0, #2	@ tmp391, tmp391,
	ldrd	r0, [ip, #56]	@, <variable>.pstExtraData,
	movw	ip, #54024	@,
	movt	lr, #:upper16:g_event_report	@ tmp424,
	add	r2, r4, r3, asl #2	@, tmp398, pH264Ctx, tmp391,
	mov	r3, #1056	@ tmp400,
	ldr	r8, [r2, #4]	@ tmp395, <variable>.pUsrDatArray
	strd	r0, [r8, r3]	@, tmp395, tmp400
	ldr	r8, [r4, ip]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, r8, #13504	@ tmp403, <variable>.TotalUsrDatNum,
	mov	r8, #8	@ tmp412,
	add	r2, r1, #2	@ tmp403, tmp403,
	movw	r1, #55480	@ tmp422,
	add	r3, r4, r2, asl #2	@, tmp410, pH264Ctx, tmp403,
	ldr	ip, [r3, #4]	@ tmp407, <variable>.pUsrDatArray
	str	r8, [ip, #1036]	@ tmp412, <variable>.from
	movw	r8, #54024	@,
	ldr	r2, [r4, r8]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	ip, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r3, r2, #13504	@ tmp413, <variable>.TotalUsrDatNum,
	add	r2, r3, #2	@ tmp413, tmp413,
	add	r3, r4, r2, asl #2	@, tmp420, pH264Ctx, tmp413,
	ldr	r2, [r3, #4]	@ tmp417, <variable>.pUsrDatArray
	str	ip, [r2, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2797	@,
	ldr	ip, [r4, r8]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	sub	r2, fp, #44	@ tmp437,,
	movw	r0, #55520	@ tmp436,
	mov	r1, #6	@,
	add	lr, ip, #13504	@ tmp426, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	ip, lr, #2	@ tmp426, tmp426,
	add	lr, r4, ip, asl #2	@, tmp432, pH264Ctx, tmp426,
	ldr	ip, [lr, #4]	@ tmp434, <variable>.pUsrDatArray
	str	ip, [r2, #-8]!	@ tmp434, para
	blx	r3	@ g_event_report
	b	.L2797	@
.L2818:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC146	@,
	movt	r2, #:upper16:.LC146	@,
	str	ip, [fp, #-80]	@,
	mov	r8, #4	@ prephitmp.7355,
	str	r3, [fp, #-84]	@,
	bl	u_v	@
	ldr	r1, [fp, #-84]	@,
	str	r8, [fp, #-60]	@ prephitmp.7355, %sfp
	strb	r0, [r1, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	ldr	ip, [fp, #-80]	@,
	b	.L2819	@
.L2811:
	mvn	r0, #0	@ D.42469,
	b	.L2763	@
.L3108:
	movw	r5, #54024	@ tmp445,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC148	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #55520	@ tmp441,
	add	r3, r0, #13504	@ tmp442, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r1, r3, #2	@ tmp442, tmp442,
	add	ip, r4, r1, asl #2	@, tmp448, pH264Ctx, tmp442,
	ldr	r1, [ip, #4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r2, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mvn	r0, #0	@ D.42469,
	add	r3, r2, #13504	@ tmp450, <variable>.TotalUsrDatNum,
	mov	r2, #0	@ tmp458,
	add	ip, r3, #2	@ tmp450, tmp450,
	add	r1, r4, ip, asl #2	@, tmp456, pH264Ctx, tmp450,
	str	r2, [r1, #4]	@ tmp458, <variable>.pUsrDatArray
	b	.L2763	@
	.fnend
	.size	H264_DecSEI, .-H264_DecSEI
	.align	2
	.global	vui_parameters
	.type	vui_parameters, %function
vui_parameters:
	.fnstart
.LFB1471:
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
	mov	r5, r1	@ pVUI, pVUI
	movw	r1, #:lower16:.LC166	@,
	movt	r1, #:upper16:.LC166	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41330,
	strb	r0, [r5, #0]	@ D.41330, <variable>.aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.41330,
	streqb	r0, [r5, #15]	@ D.41330, <variable>.aspect_ratio_idc
	bne	.L3148	@,
.L3125:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	bl	u_1	@
	uxtb	r2, r0	@ D.41345,
	strb	r2, [r5, #1]	@ D.41345, <variable>.overscan_info_present_flag
	cmp	r2, #0	@ D.41345,
	bne	.L3149	@,
.L3126:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.41352,
	strb	r3, [r5, #3]	@ D.41352, <variable>.video_signal_type_present_flag
	cmp	r3, #0	@ D.41352,
	moveq	r3, #5	@ tmp229,
	streq	r3, [r5, #28]	@ tmp229, <variable>.video_format
	bne	.L3150	@,
.L3128:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41373,
	strb	r0, [r5, #6]	@ D.41373, <variable>.chroma_location_info_present_flag
	cmp	r0, #0	@ D.41373,
	bne	.L3151	@,
.L3129:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC182	@,
	movt	r1, #:upper16:.LC182	@,
	bl	u_1	@
	uxtb	r1, r0	@ D.41380,
	strb	r1, [r5, #8]	@ D.41380, <variable>.timing_info_present_flag
	cmp	r1, #0	@ D.41380,
	bne	.L3152	@,
.L3130:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC186	@,
	movt	r1, #:upper16:.LC186	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41400,
	strb	r0, [r5, #7]	@ D.41400, <variable>.nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41400,
	beq	.L3131	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC187	@,
	movt	r1, #:upper16:.LC187	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC188	@,
	movt	r2, #:upper16:.LC188	@,
	str	r0, [r5, #96]	@, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC189	@,
	movt	r2, #:upper16:.LC189	@,
	strb	r0, [r5, #92]	@, <variable>.nal_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	cmp	r1, #31	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, <variable>.nal_hrd_parameters.cpb_size_scale
	bhi	.L3137	@,
	movw	lr, #55460	@ tmp254,
	ldr	r8, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7773, pVUI
	moveq	r7, r5	@ ivtmp.7762, pVUI
	bne	.L3137	@,
.L3135:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	str	r0, [r6, #100]	@, <variable>.nal_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC193	@,
	movt	r1, #:upper16:.LC193	@,
	str	r0, [r6, #228]	@, <variable>.nal_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7773, ivtmp.7773,
	cmp	r2, r8	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #60]	@, <variable>.nal_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7762, ivtmp.7762,
	bcs	.L3135	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC194	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC195	@,
	str	r0, [r5, #356]	@, <variable>.nal_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC196	@,
	movt	r2, #:upper16:.LC196	@,
	str	r0, [r5, #360]	@, <variable>.nal_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC197	@,
	movt	r2, #:upper16:.LC197	@,
	str	r0, [r5, #364]	@, <variable>.nal_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, <variable>.nal_hrd_parameters.time_offset_length
.L3131:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	u_1	@
	uxtb	ip, r0	@ D.41430,
	strb	ip, [r5, #10]	@ D.41430, <variable>.vcl_hrd_parameters_present_flag
	cmp	ip, #0	@ D.41430,
	bne	.L3153	@,
.L3136:
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.nal_hrd_parameters_present_flag, <variable>.nal_hrd_parameters_present_flag
	cmp	lr, #0	@ <variable>.nal_hrd_parameters_present_flag,
	bne	.L3140	@,
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.vcl_hrd_parameters_present_flag, <variable>.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vcl_hrd_parameters_present_flag,
	bne	.L3140	@,
.L3141:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC200	@,
	movt	r1, #:upper16:.LC200	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	strb	r0, [r5, #11]	@, <variable>.pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.41464,
	strb	ip, [r5, #12]	@ D.41464, <variable>.bitstream_restriction_flag
	cmp	ip, #0	@ D.41464,
	bne	.L3154	@,
	movw	lr, #55460	@ tmp304,
	ldr	r1, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3143	@,
.L3144:
	mov	r0, #0	@ D.41415,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3140:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC199	@,
	movt	r1, #:upper16:.LC199	@,
	bl	u_1	@
	strb	r0, [r5, #14]	@, <variable>.low_delay_hrd_flag
	b	.L3141	@
.L3154:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC202	@,
	movt	r1, #:upper16:.LC202	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	strb	r0, [r5, #13]	@, <variable>.motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC204	@,
	movt	r1, #:upper16:.LC204	@,
	str	r0, [r5, #684]	@, <variable>.max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	str	r0, [r5, #688]	@, <variable>.max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	str	r0, [r5, #696]	@, <variable>.log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	str	r0, [r5, #692]	@, <variable>.log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	str	r0, [r5, #700]	@, <variable>.num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, <variable>.max_dec_frame_buffering
	movw	r0, #55460	@ tmp302,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3144	@,
.L3143:
	mvn	r0, #0	@ D.41415,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3148:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC167	@,
	movt	r2, #:upper16:.LC167	@,
	bl	u_v	@
	uxtb	r1, r0	@ D.41335,
	strb	r1, [r5, #15]	@ D.41335, <variable>.aspect_ratio_idc
	cmp	r1, #255	@ D.41335,
	bne	.L3125	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC168	@,
	movt	r2, #:upper16:.LC168	@,
	bl	u_v	@
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC169	@,
	movt	r2, #:upper16:.LC169	@,
	str	r0, [r5, #16]	@, <variable>.sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, <variable>.sar_height
	b	.L3125	@
.L3152:
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC183	@,
	movt	r2, #:upper16:.LC183	@,
	bl	u_v	@
	mov	r1, #32	@,
	movw	r2, #:lower16:.LC184	@,
	movt	r2, #:upper16:.LC184	@,
	str	r0, [r5, #52]	@, <variable>.num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	str	r0, [r5, #56]	@, <variable>.time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r2, r0	@ D.41389,
	strb	r2, [r5, #9]	@ D.41389, <variable>.fixed_frame_rate_flag
	cmp	r2, #1	@ D.41389,
	bne	.L3130	@,
	ldr	r1, [r5, #52]	@ D.41393, <variable>.num_units_in_tick
	cmp	r1, #0	@ D.41393,
	beq	.L3130	@,
	ldr	r0, [r5, #56]	@, <variable>.time_scale
	bl	__aeabi_uidiv	@
	movw	r3, #54020	@ tmp240,
	mov	ip, r0, lsr #1	@ tmp245,,
	str	ip, [r4, r3]	@ tmp245, <variable>.frame_rate
	b	.L3130	@
.L3151:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC181	@,
	movt	r1, #:upper16:.LC181	@,
	str	r0, [r5, #44]	@, <variable>.chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, <variable>.chroma_sample_loc_type_bottom_field
	b	.L3129	@
.L3150:
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC173	@,
	movt	r2, #:upper16:.LC173	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC174	@,
	str	r0, [r5, #28]	@, <variable>.video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC175	@,
	strb	r0, [r5, #4]	@, <variable>.video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.41361,
	strb	ip, [r5, #5]	@ D.41361, <variable>.colour_description_present_flag
	cmp	ip, #0	@ D.41361,
	beq	.L3128	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC176	@,
	movt	r2, #:upper16:.LC176	@,
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC177	@,
	movt	r2, #:upper16:.LC177	@,
	str	r0, [r5, #32]	@, <variable>.colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC178	@,
	movt	r2, #:upper16:.LC178	@,
	str	r0, [r5, #36]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, <variable>.matrix_coefficients
	b	.L3128	@
.L3149:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.overscan_appropriate_flag
	b	.L3126	@
.L3153:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC187	@,
	movt	r1, #:upper16:.LC187	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC188	@,
	movt	r2, #:upper16:.LC188	@,
	str	r0, [r5, #408]	@, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC189	@,
	movt	r2, #:upper16:.LC189	@,
	strb	r0, [r5, #404]	@, <variable>.vcl_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	cmp	r3, #31	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, <variable>.vcl_hrd_parameters.cpb_size_scale
	bhi	.L3137	@,
	movw	r0, #55460	@ tmp274,
	ldr	r8, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7754, pVUI
	moveq	r7, r5	@ ivtmp.7767, pVUI
	bne	.L3137	@,
.L3139:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	str	r0, [r6, #412]	@, <variable>.vcl_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC193	@,
	movt	r1, #:upper16:.LC193	@,
	str	r0, [r6, #540]	@, <variable>.vcl_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7754, ivtmp.7754,
	cmp	r1, r8	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #372]	@, <variable>.vcl_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7767, ivtmp.7767,
	bcs	.L3139	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC194	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC195	@,
	str	r0, [r5, #668]	@, <variable>.vcl_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC196	@,
	movt	r2, #:upper16:.LC196	@,
	str	r0, [r5, #672]	@, <variable>.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC197	@,
	movt	r2, #:upper16:.LC197	@,
	str	r0, [r5, #676]	@, <variable>.vcl_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #680]	@, <variable>.vcl_hrd_parameters.time_offset_length
	b	.L3136	@
.L3137:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC190	@,
	movt	r1, #:upper16:.LC190	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41415,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
.LFB1474:
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
	subs	r5, r1, #0	@ pSPS, pSPS
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L3235	@,
	ldr	r3, [r5, #736]	@ D.41746, <variable>.profile_idc
	cmp	r3, #100	@ D.41746,
	cmpne	r3, #110	@, D.41746,
	movne	r2, #0	@, tmp219
	moveq	r2, #1	@, tmp219
	beq	.L3158	@,
	cmp	r3, #122	@ D.41746,
	beq	.L3158	@,
	cmp	r3, #144	@ D.41746,
	strneb	r2, [r5, #25]	@ tmp219, <variable>.seq_scaling_matrix_present_flag
	movne	r3, #1	@ tmp391,
	strne	r3, [r5, #748]	@ tmp391, <variable>.chroma_format_idc
	beq	.L3158	@,
.L3168:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC219	@,
	movt	r1, #:upper16:.LC219	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.41845,
	str	r0, [r5, #2896]	@ D.41845, <variable>.log2_max_frame_num_minus4
	bhi	.L3184	@,
	movw	r6, #55460	@ tmp395,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3184	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC221	@,
	movt	r1, #:upper16:.LC221	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.41851,
	str	r0, [r5, #2900]	@ D.41851, <variable>.pic_order_cnt_type
	bhi	.L3186	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3186	@,
	cmp	r0, #0	@ D.41851,
	beq	.L3236	@,
	cmp	r0, #1	@ D.41851,
	beq	.L3237	@,
.L3190:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC231	@,
	movt	r1, #:upper16:.LC231	@,
	movw	r6, #55460	@ tmp427,
	bl	ue_v	@
	str	r0, [r5, #3944]	@, <variable>.num_ref_frames
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3238	@,
.L3191:
	mvn	r0, #0	@ D.41742,
.L3157:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3158:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC209	@,
	movt	r1, #:upper16:.LC209	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.41753,
	str	r0, [r5, #748]	@ D.41753, <variable>.chroma_format_idc
	bhi	.L3160	@,
	movw	r6, #55460	@ tmp221,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3160	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC211	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3162	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3162	@,
.L3163:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC213	@,
	movt	r1, #:upper16:.LC213	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3164	@,
	movw	r2, #55460	@ tmp229,
	ldr	r1, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3164	@,
.L3165:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC215	@,
	movt	r1, #:upper16:.LC215	@,
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L3166	@,
	movw	lr, #55460	@ tmp233,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3166	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC217	@,
	movt	r1, #:upper16:.LC217	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.41776,
	strb	r3, [r5, #25]	@ D.41776, <variable>.seq_scaling_matrix_present_flag
	cmp	r3, #1	@ D.41776,
	bne	.L3168	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	add	sl, r5, #752	@ D.41787, pSPS,
	bl	u_1	@
	add	r6, r5, #2672	@ D.41790, pSPS,
	cmp	r0, #1	@ temp.7866,
	str	r0, [fp, #-84]	@ temp.7866, q4x4defaultflag
	strb	r0, [r5, #4]	@ temp.7866, <variable>.seq_scaling_list_present_flag
	beq	.L3169	@,
.L3231:
	ldr	ip, .L3246	@ tmp248,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp248,,,,
	stmia	r6, {r0, r1, r2, r3}	@ D.41790,,,,
.L3170:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7870,
	str	r0, [fp, #-80]	@ temp.7870, q4x4defaultflag
	strb	r0, [r5, #5]	@ temp.7870, <variable>.seq_scaling_list_present_flag
	beq	.L3171	@,
	add	r7, r6, #16	@ tmp543, D.41790,
	mov	r1, r6	@, D.41790
	mov	r2, #16	@,
	mov	r0, r7	@, tmp543
	bl	memcpy	@
.L3172:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7878,
	str	r0, [fp, #-76]	@ temp.7878, q4x4defaultflag
	strb	r0, [r5, #6]	@ temp.7878, <variable>.seq_scaling_list_present_flag
	beq	.L3173	@,
	mov	r1, r7	@, tmp543
	add	r0, r6, #32	@, D.41790,
	mov	r2, #16	@,
	bl	memcpy	@
.L3174:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7887,
	str	r0, [fp, #-72]	@ temp.7887, q4x4defaultflag
	strb	r0, [r5, #7]	@ temp.7887, <variable>.seq_scaling_list_present_flag
	beq	.L3175	@,
	add	r7, r6, #48	@ tmp545, D.41790,
	ldr	r1, .L3246+4	@,
	mov	r2, #16	@,
	mov	r0, r7	@, tmp545
	bl	memcpy	@
.L3176:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7895,
	str	r0, [fp, #-68]	@ temp.7895, q4x4defaultflag
	strb	r0, [r5, #8]	@ temp.7895, <variable>.seq_scaling_list_present_flag
	beq	.L3177	@,
	add	r8, r6, #64	@ tmp547, D.41790,
	mov	r1, r7	@, tmp545
	mov	r2, #16	@,
	mov	r0, r8	@, tmp547
	bl	memcpy	@
.L3178:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ D.41781,
	str	r0, [fp, #-64]	@ D.41781, q4x4defaultflag
	strb	r0, [r5, #9]	@ D.41781, <variable>.seq_scaling_list_present_flag
	beq	.L3239	@,
	add	r0, r6, #80	@, D.41790,
	mov	r1, r8	@, tmp547
	mov	r2, #16	@,
	bl	memcpy	@
.L3180:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	add	r8, r5, #1136	@ D.41824, pSPS,
	bl	u_1	@
	add	r6, r5, #2768	@ D.41827, pSPS,
	cmp	r0, #1	@ temp.7904,
	str	r0, [fp, #-52]	@ temp.7904, q8x8defaultflag
	strb	r0, [r5, #10]	@ temp.7904, <variable>.seq_scaling_list_present_flag
	beq	.L3181	@,
	ldr	ip, .L3246+8	@ tmp360,
	mov	lr, r6	@ D.41827, D.41827
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp362,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.41827,,,,
	mov	r7, lr	@ D.41827, D.41827
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp552,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ D.41827,,,,
	mov	lr, r7	@ D.41827, D.41827
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp554,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.41827,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp554,,,,
	stmia	lr, {r0, r1, r2, r3}	@ D.41827,,,,
.L3182:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	cmp	r0, #1	@ D.41817,
	str	r0, [fp, #-48]	@ D.41817, q8x8defaultflag
	strb	r0, [r5, #11]	@ D.41817, <variable>.seq_scaling_list_present_flag
	beq	.L3240	@,
	add	r0, r6, #64	@, D.41827,
	ldr	r1, .L3246+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3168	@
.L3164:
	movw	r1, #:lower16:.LC214	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC214	@,
	bl	dprint_vfmw	@
	b	.L3165	@
.L3162:
	movw	r1, #:lower16:.LC212	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC212	@,
	bl	dprint_vfmw	@
	b	.L3163	@
.L3236:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC223	@,
	movt	r1, #:upper16:.LC223	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.41859,
	str	r0, [r5, #2904]	@ D.41859, <variable>.log2_max_pic_order_cnt_lsb_minus4
	bhi	.L3189	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3190	@,
.L3189:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC224	@,
	movt	r1, #:upper16:.LC224	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3237:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC225	@,
	movt	r1, #:upper16:.LC225	@,
	bl	u_1	@
	strb	r0, [r5, #16]	@, <variable>.delta_pic_order_always_zero_flag
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC226	@,
	movt	r1, #:upper16:.LC226	@,
	bl	se_v	@
	str	r0, [r5, #2908]	@, <variable>.offset_for_non_ref_pic
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC227	@,
	movt	r1, #:upper16:.LC227	@,
	bl	se_v	@
	str	r0, [r5, #2912]	@, <variable>.offset_for_top_to_bottom_field
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC228	@,
	movt	r1, #:upper16:.LC228	@,
	bl	ue_v	@
	cmp	r0, #255	@ prephitmp.7800,
	mov	r3, r0	@ prephitmp.7800,
	str	r0, [r5, #2916]	@ prephitmp.7800, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L3192	@,
	movw	r8, #55460	@ tmp417,
	ldr	r7, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r7, #0	@ <variable>.SeErrFlg,
	addeq	r6, r5, #2912	@ ivtmp.7817, pSPS,
	addeq	r6, r6, #8	@ ivtmp.7817, ivtmp.7817,
	beq	.L3193	@,
	b	.L3192	@
.L3194:
	bl	se_v	@
	str	r0, [r6], #4	@, <variable>.offset_for_ref_frame
	ldr	r1, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	ldr	r3, [r5, #2916]	@ prephitmp.7800, <variable>.num_ref_frames_in_pic_order_cnt_cycle
.L3193:
	cmp	r7, r3	@ i, prephitmp.7800
	movw	r1, #:lower16:.LC230	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC230	@,
	add	r7, r7, #1	@ i, i,
	bcc	.L3194	@,
	movw	r0, #55460	@ tmp424,
	ldr	lr, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	b	.L3190	@
.L3184:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC220	@,
	movt	r1, #:upper16:.LC220	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3160:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3166:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3238:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC232	@,
	movt	r1, #:upper16:.LC232	@,
	bl	u_1	@
	strb	r0, [r5, #17]	@, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC233	@,
	movt	r1, #:upper16:.LC233	@,
	movw	r7, #509	@ tmp435,
	bl	ue_v	@
	sub	r3, r0, #1	@ tmp434, D.41896,
	str	r0, [r5, #3948]	@ D.41896, <variable>.pic_width_in_mbs_minus1
	cmp	r3, r7	@ tmp434, tmp435
	bhi	.L3195	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3196	@,
.L3195:
	mov	r2, r0	@, D.41896
	movw	r1, #:lower16:.LC234	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC234	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3186:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC222	@,
	movt	r1, #:upper16:.LC222	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3239:
	add	r6, r6, #80	@ tmp548, D.41790,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #320	@, D.41787,
	mov	r3, #16	@,
	mov	r2, r6	@, tmp548
	sub	r8, fp, #64	@ tmp341,,
	str	r8, [sp, #0]	@ tmp341,
	bl	Scaling_List	@
	ldr	r0, [fp, #-64]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3180	@,
	mov	r0, r6	@, tmp548
	ldr	r1, .L3246+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3180	@
.L3177:
	add	r8, r6, #64	@ tmp547, D.41790,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #256	@, D.41787,
	mov	r2, r8	@, tmp547
	sub	lr, fp, #68	@ tmp326,,
	str	lr, [sp, #0]	@ tmp326,
	bl	Scaling_List	@
	ldr	r3, [fp, #-68]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r3, #1	@ q4x4defaultflag,
	bne	.L3178	@,
	mov	r0, r8	@, tmp547
	ldr	r1, .L3246+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3178	@
.L3175:
	add	r7, r6, #48	@ tmp545, D.41790,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #192	@, D.41787,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp545
	sub	ip, fp, #72	@ tmp305,,
	str	ip, [sp, #0]	@ tmp305,
	bl	Scaling_List	@
	ldr	r2, [fp, #-72]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r2, #1	@ q4x4defaultflag,
	bne	.L3176	@,
	mov	r0, r7	@, tmp545
	ldr	r1, .L3246+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3176	@
.L3173:
	add	r7, r6, #32	@ tmp544, D.41790,
	add	r1, sl, #128	@, D.41787,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #16	@,
	mov	r2, r7	@, tmp544
	sub	r8, fp, #76	@ tmp283,,
	str	r8, [sp, #0]	@ tmp283,
	bl	Scaling_List	@
	ldr	r1, [fp, #-76]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r1, #1	@ q4x4defaultflag,
	bne	.L3174	@,
	mov	r0, r7	@, tmp544
	ldr	r1, .L3246	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3174	@
.L3171:
	add	r7, r6, #16	@ tmp543, D.41790,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #64	@, D.41787,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp543
	sub	lr, fp, #80	@ tmp262,,
	str	lr, [sp, #0]	@ tmp262,
	bl	Scaling_List	@
	ldr	r0, [fp, #-80]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3172	@,
	mov	r0, r7	@, tmp543
	ldr	r1, .L3246	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3172	@
.L3169:
	mov	r0, r4	@, pH264Ctx
	mov	r1, sl	@, D.41787
	mov	r2, r6	@, D.41790
	mov	r3, #16	@,
	sub	r8, fp, #84	@ tmp245,,
	str	r8, [sp, #0]	@ tmp245,
	bl	Scaling_List	@
	ldr	r7, [fp, #-84]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r7, #1	@ q4x4defaultflag,
	bne	.L3170	@,
	b	.L3231	@
.L3240:
	add	r6, r6, #64	@ tmp546, D.41827,
	add	r1, r8, #256	@, D.41824,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #64	@,
	mov	r2, r6	@, tmp546
	sub	lr, fp, #48	@ tmp375,,
	str	lr, [sp, #0]	@ tmp375,
	bl	Scaling_List	@
	ldr	r2, [fp, #-48]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r2, #1	@ q8x8defaultflag,
	bne	.L3168	@,
	mov	r0, r6	@, tmp546
	ldr	r1, .L3246+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3168	@
.L3181:
	mov	r1, r8	@, D.41824
	mov	r0, r4	@, pH264Ctx
	mov	r2, r6	@, D.41827
	mov	r3, #64	@,
	sub	ip, fp, #52	@ tmp363,,
	str	ip, [sp, #0]	@ tmp363,
	bl	Scaling_List	@
	ldr	r1, [fp, #-52]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r1, #1	@ q8x8defaultflag,
	bne	.L3182	@,
	ldr	lr, .L3246+8	@ tmp366,
	mov	ip, r6	@ D.41827, D.41827
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp368,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ D.41827,,,,
	mov	r7, ip	@ D.41827, D.41827
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp556,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ D.41827,,,,
	mov	ip, r7	@ D.41827, D.41827
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp558,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ D.41827,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp558,,,,
	stmia	ip, {r0, r1, r2, r3}	@ D.41827,,,,
	b	.L3182	@
.L3235:
	mov	r0, r5	@, pSPS
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #9071	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3196:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC235	@,
	movt	r1, #:upper16:.LC235	@,
	bl	ue_v	@
	str	r0, [r5, #3952]	@, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC236	@,
	movt	r1, #:upper16:.LC236	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41907,
	strb	r0, [r5, #18]	@ D.41907, <variable>.frame_mbs_only_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	cmp	r0, #0	@ D.41907,
	bne	.L3197	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC237	@,
	movt	r1, #:upper16:.LC237	@,
	bl	u_1	@
	ldr	ip, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r3, ip, #1	@ prephitmp.7794, <variable>.pic_height_in_map_units_minus1,
	cmp	r3, #255	@ prephitmp.7794,
	strb	r0, [r5, #19]	@, <variable>.mb_adaptive_frame_field_flag
	bhi	.L3228	@,
	ldr	r8, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	r8, r8, #1	@ prephitmp.7848, <variable>.pic_width_in_mbs_minus1,
	cmp	r8, #3	@ prephitmp.7848,
	bls	.L3228	@,
	cmp	r3, #1	@ prephitmp.7794,
	movhi	sl, #2	@ temp,
	bls	.L3228	@,
.L3229:
	mul	r1, sl, r3	@ tmp452, temp, prephitmp.7794
	mov	r8, r8, asl #4	@ PicWidthInSmp, prephitmp.7848,
	mov	lr, #3	@ tmp455,
	mov	r7, r1, asl #4	@ PicHeightInSmp, tmp452,
	mul	r3, r8, r7	@ tmp453, PicWidthInSmp, PicHeightInSmp
	mov	r2, r3, lsr #1	@ tmp454, tmp453,
	mul	r1, lr, r2	@ pic_size, tmp455, tmp454
	cmp	r1, #100663296	@ pic_size,
	bhi	.L3241	@,
	ldr	r2, [r5, #740]	@ D.41941, <variable>.level_idc
	sub	r0, r2, #10	@ tmp457, D.41941,
	cmp	r0, #31	@ tmp457,
	ldrls	pc, [pc, r0, asl #2]	@ tmp457
	b	.L3201	@
.L3210:
	.word	.L3202
	.word	.L3203
	.word	.L3204
	.word	.L3204
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3204
	.word	.L3205
	.word	.L3206
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3206
	.word	.L3207
	.word	.L3208
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3201
	.word	.L3209
	.word	.L3209
.L3192:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC229	@,
	movt	r1, #:upper16:.LC229	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3208:
	mov	r0, #7864320	@ size,
.L3211:
	bl	__aeabi_uidiv	@
	movw	r1, #:lower16:.LC241	@,
	movt	r1, #:upper16:.LC241	@,
	cmp	r0, #16	@,
	movcc	r6, r0	@ size.7823,
	movcs	r6, #16	@ size.7823,
	mov	r0, #21	@,
	mov	r2, r6	@, size.7823
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3944]	@ D.41948, <variable>.num_ref_frames
	cmp	r2, r6	@ D.41948, size.7823
	bhi	.L3212	@,
	movw	ip, #55460	@ tmp463,
	ldr	r9, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r9, #0	@ <variable>.SeErrFlg,
	beq	.L3213	@,
.L3212:
	mov	r3, r6	@, size.7823
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC242	@,
	movt	r1, #:upper16:.LC242	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #3944]	@ temp.7854, <variable>.num_ref_frames
	cmp	r3, #16	@ temp.7854,
	bhi	.L3232	@,
	cmp	r6, r3	@ size.7823, temp.7854
	movcc	r6, r3	@ size.7823, temp.7854
.L3232:
	str	r6, [r5, #3944]	@ size.7823, <variable>.num_ref_frames
.L3213:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC243	@,
	movt	r1, #:upper16:.LC243	@,
	movw	r9, #55460	@ tmp468,
	bl	u_1	@
	strb	r0, [r5, #20]	@, <variable>.direct_8x8_inference_flag
	ldr	r2, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC244	@,
	movt	r1, #:upper16:.LC244	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41959,
	strb	r0, [r5, #21]	@ D.41959, <variable>.frame_cropping_flag
	ldr	r3, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	cmp	r0, #0	@ D.41959,
	bne	.L3242	@,
.L3215:
	mov	r3, r8, lsr #1	@ tmp500, PicWidthInSmp,
	mov	r0, r7, lsr #1	@ tmp501, PicHeightInSmp,
	str	r8, [r5, #3976]	@ PicWidthInSmp, <variable>.disp_width
	str	r3, [r5, #3984]	@ tmp500, <variable>.disp_center_x
	str	r0, [r5, #3988]	@ tmp501, <variable>.disp_center_y
	str	r7, [r5, #3980]	@ PicHeightInSmp, <variable>.disp_height
.L3217:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC249	@,
	movt	r1, #:upper16:.LC249	@,
	bl	u_1	@
	movw	r2, #55460	@ tmp504,
	uxtb	r3, r0	@ D.41997,
	strb	r3, [r5, #22]	@ D.41997, <variable>.vui_parameters_present_flag
	ldr	r2, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3191	@,
	cmp	r3, #0	@ D.41997,
	add	r1, r2, #2	@ tmp506, tmp506,
	str	r1, [r5, #68]	@ tmp506, <variable>.vui_seq_parameters.matrix_coefficients
	bne	.L3243	@,
	mov	r0, r3	@ prephitmp.7798, D.41997
	mov	lr, #5	@ tmp513,
	strb	r3, [r5, #43]	@ D.41997, <variable>.vui_seq_parameters.aspect_ratio_idc
	str	lr, [r5, #56]	@ tmp513, <variable>.vui_seq_parameters.video_format
.L3220:
	str	r7, [sp, #0]	@ PicHeightInSmp,
	mov	r3, r8	@, PicWidthInSmp
	ldr	r1, [r5, #44]	@, <variable>.vui_seq_parameters.sar_width
	ldr	r2, [r5, #48]	@, <variable>.vui_seq_parameters.sar_height
	bl	H264GetDar	@
	ldr	r3, [r5, #3944]	@ temp.7861, <variable>.num_ref_frames
	cmp	r3, #0	@ temp.7861,
	str	r0, [r5, #52]	@, <variable>.vui_seq_parameters.aspect_ratio
	beq	.L3224	@,
	cmp	r6, r3	@ size.7823, temp.7861
	movcs	r6, r3	@ size.7823, temp.7861
.L3224:
	ldr	r1, [r4, #0]	@ D.42029, <variable>.pstExtraData
	cmp	r6, #16	@ size.7823,
	movcs	r6, #16	@ size.7824,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L3244	@,
.L3225:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L3227	@,
	cmp	r6, #4	@ size.7824,
	movcs	r6, #4	@ size.7824,
.L3227:
	add	r6, r6, #1	@ tmp536, size.7824,
	mov	r0, #0	@ D.41742,
	str	r6, [r5, #3972]	@ tmp536, <variable>.dpb_size_plus1
	b	.L3157	@
.L3244:
	ldr	r3, [r1, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3225	@,
	ldr	ip, [r1, #584]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r2, [r1, #564]	@ MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, ip	@ size.7824, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r0, [r1, #568]	@ MaxHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L3245	@,
	cmp	r2, r8	@ MaxWidth, PicWidthInSmp
	cmpcs	r0, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L3225	@,
	movw	r1, #:lower16:g_event_report	@ tmp532,
	movt	r1, #:upper16:g_event_report	@ tmp532,
	ldr	r3, [r1, #0]	@ g_event_report.7864, g_event_report
	cmp	r3, #0	@ g_event_report.7864,
	beq	.L3191	@,
	strh	r0, [fp, #-54]	@ movhi	@ MaxHeight, para
	movw	r0, #55520	@ tmp533,
	strh	r2, [fp, #-56]	@ movhi	@ MaxWidth, para
	mov	r1, #107	@,
	strh	r8, [fp, #-60]	@ movhi	@ PicWidthInSmp, para
	sub	r2, fp, #60	@,,
	strh	r7, [fp, #-58]	@ movhi	@ PicHeightInSmp, para
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.7864
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3243:
	mov	r0, r4	@, pH264Ctx
	add	r1, r5, #28	@, pSPS,
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L3234	@,
	ldrb	ip, [r5, #40]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.bitstream_restriction_flag, <variable>.vui_seq_parameters.bitstream_restriction_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.bitstream_restriction_flag,
	beq	.L3234	@,
	ldr	r2, [r5, #732]	@ D.42013, <variable>.vui_seq_parameters.max_dec_frame_buffering
	cmp	r6, r2	@ size.7823, D.42013
	bcc	.L3222	@,
	cmp	r2, #0	@ D.42013,
	bne	.L3223	@,
.L3222:
	movw	r1, #:lower16:.LC250	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC250	@,
	mov	r3, r6	@, size.7823
	bl	dprint_vfmw	@
.L3234:
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7798, <variable>.vui_seq_parameters.aspect_ratio_idc
	b	.L3220	@
.L3223:
	ldr	r6, [r5, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7798, <variable>.vui_seq_parameters.aspect_ratio_idc
	cmp	r2, r6	@ D.42013, <variable>.num_ref_frames
	movcs	r6, r2	@ size.7823, D.42013
	b	.L3220	@
.L3242:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC245	@,
	movt	r1, #:upper16:.LC245	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC246	@,
	movt	r1, #:upper16:.LC246	@,
	str	r0, [r5, #3956]	@, <variable>.frame_crop_left_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC247	@,
	movt	r1, #:upper16:.LC247	@,
	str	r0, [r5, #3960]	@, <variable>.frame_crop_right_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC248	@,
	movt	r1, #:upper16:.LC248	@,
	str	r0, [r5, #3964]	@, <variable>.frame_crop_top_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	ip, [r5, #3964]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r1, [r5, #3956]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	mov	r3, sl, asl #1	@ tmp485, temp,
	ldr	r2, [r5, #3960]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	mov	ip, ip, asl #1	@ tmp482, <variable>.frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.41969, <variable>.frame_crop_left_offset,
	mul	sl, sl, ip	@ D.41974, temp, tmp482
	rsb	ip, r1, r8	@ tmp479, D.41969, PicWidthInSmp
	sub	r2, ip, r2, asl #1	@ D.41972, tmp479, <variable>.frame_crop_right_offset,
	rsb	ip, sl, r7	@ tmp484, D.41974, PicHeightInSmp
	mls	r3, r0, r3, ip	@ D.41978, D.41968, tmp485, tmp484
	str	r0, [r5, #3968]	@ D.41968, <variable>.frame_crop_bottom_offset
	cmp	r2, #0	@ D.41972,
	cmpgt	r3, #0	@, D.41978,
	ble	.L3215	@,
	add	lr, r1, r2, lsr #1	@, tmp497, D.41969, D.41972,
	add	sl, sl, r3, lsr #1	@, tmp499, D.41974, D.41978,
	str	lr, [r5, #3984]	@ tmp497, <variable>.disp_center_x
	str	sl, [r5, #3988]	@ tmp499, <variable>.disp_center_y
	str	r2, [r5, #3976]	@ D.41972, <variable>.disp_width
	str	r3, [r5, #3980]	@ D.41978, <variable>.disp_height
	b	.L3217	@
.L3245:
	movw	r2, #:lower16:g_event_report	@ tmp517,
	movt	r2, #:upper16:g_event_report	@ tmp517,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3191	@,
	str	r6, [fp, #-60]	@ size.7824, para
	movw	ip, #55520	@ tmp522,
	ldr	lr, [r1, #584]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	sub	r2, fp, #60	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #106	@,
	str	lr, [fp, #-56]	@ <variable>.stChanOption.s32MaxRefFrameNum, para
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3205:
	movw	r0, #:lower16:1824768	@ size,
	movt	r0, #:upper16:1824768	@ size,
	b	.L3211	@
.L3206:
	movw	r0, #:lower16:3110400	@ size,
	movt	r0, #:upper16:3110400	@ size,
	b	.L3211	@
.L3209:
	mov	r0, #12582912	@ size,
	b	.L3211	@
.L3207:
	movw	r0, #:lower16:6912000	@ size,
	movt	r0, #:upper16:6912000	@ size,
	b	.L3211	@
.L3204:
	movw	r0, #:lower16:912384	@ size,
	movt	r0, #:upper16:912384	@ size,
	b	.L3211	@
.L3203:
	movw	r0, #:lower16:345600	@ size,
	movt	r0, #:upper16:345600	@ size,
	b	.L3211	@
.L3202:
	movw	r0, #:lower16:152064	@ size,
	movt	r0, #:upper16:152064	@ size,
	b	.L3211	@
.L3201:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC240	@,
	movt	r1, #:upper16:.LC240	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3241:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC239	@,
	movt	r1, #:upper16:.LC239	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3228:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC238	@,
	movt	r1, #:upper16:.LC238	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41742,
	b	.L3157	@
.L3197:
	ldr	r3, [r5, #3952]	@ temp.7849, <variable>.pic_height_in_map_units_minus1
	strb	r2, [r5, #19]	@ <variable>.SeErrFlg, <variable>.mb_adaptive_frame_field_flag
	sub	r2, r3, #1	@ tmp540, temp.7849,
	cmp	r2, r7	@ tmp540, tmp435
	bhi	.L3228	@,
	ldr	r7, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mov	sl, #1	@ temp,
	add	r3, r3, #1	@ prephitmp.7794, temp.7849,
	add	r8, r7, sl	@ prephitmp.7848, <variable>.pic_width_in_mbs_minus1,
	b	.L3229	@
.L3247:
	.align	2
.L3246:
	.word	.LANCHOR2+80
	.word	.LANCHOR2+96
	.word	.LANCHOR2+112
	.word	.LANCHOR2+176
	.fnend
	.size	ProcessSPS, .-ProcessSPS
	.align	2
	.global	H264_DecSPS
	.type	H264_DecSPS, %function
H264_DecSPS:
	.fnstart
.LFB1475:
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
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC251	@,
	movt	r2, #:upper16:.LC251	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r5, r0	@ D.42082,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC253	@,
	movt	r1, #:upper16:.LC253	@,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC254	@,
	movt	r1, #:upper16:.LC254	@,
	str	r0, [fp, #-64]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC255	@,
	movt	r1, #:upper16:.LC255	@,
	str	r0, [fp, #-60]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC256	@,
	movt	r2, #:upper16:.LC256	@,
	str	r0, [fp, #-56]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC257	@,
	movt	r2, #:upper16:.LC257	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC258	@,
	movt	r1, #:upper16:.LC258	@,
	mov	r6, r0	@ D.42087,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r7, r0	@ seq_parameter_set_id,
	movw	r0, #55460	@ tmp159,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3249	@,
	movw	r8, #13572	@ tmp161,
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, r2, #1	@ tmp162, <variable>.MaxSpsNum,
	cmp	r7, r1	@ seq_parameter_set_id, tmp162
	bhi	.L3266	@,
	cmp	r5, #100	@ profile_idc,
	mov	r8, r5	@ profile_idc, D.42082
	beq	.L3254	@,
	bhi	.L3257	@,
	cmp	r5, #77	@ profile_idc,
	beq	.L3254	@,
	cmp	r5, #88	@ profile_idc,
	beq	.L3255	@,
	cmp	r5, #66	@ profile_idc,
	bne	.L3252	@,
	movw	r1, #:lower16:.LC260	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
.L3254:
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42087
	bls	.L3265	@,
.L3258:
	cmp	r6, #41	@ level_idc,
	bhi	.L3265	@,
	movw	r9, #3992	@ tmp179,
	movw	r6, #13580	@ tmp180,
	mul	r5, r9, r7	@ D.42116, tmp179, seq_parameter_set_id
	ldr	sl, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r3, r5, sl	@ D.42117, D.42116, <variable>.SPS
	ldrb	sl, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	beq	.L3260	@,
.L3269:
	movw	sl, #:lower16:.LANCHOR1	@ tmp183,
	movt	sl, #:upper16:.LANCHOR1	@ tmp183,
	ldr	lr, [fp, #-68]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	str	r8, [sl, #804]	@ profile_idc, sps_tmp.profile_idc
	add	r1, sl, #68	@, tmp183,
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	strb	r8, [sl, #71]	@, sps_tmp.constrained_set3_flag
	strb	lr, [sl, #68]	@, sps_tmp.constrained_set0_flag
	strb	ip, [sl, #69]	@, sps_tmp.constrained_set1_flag
	strb	r3, [sl, #70]	@, sps_tmp.constrained_set2_flag
	str	r2, [sl, #808]	@ level_idc, sps_tmp.level_idc
	str	r7, [sl, #812]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	bl	ProcessSPS	@
	subs	r8, r0, #0	@ D.42125,
	bne	.L3267	@,
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r0, sl, #68	@, tmp183,
	add	r1, r5, r1	@, D.42116, <variable>.SPS
	bl	SPSEqual	@
	cmp	r0, #0	@ D.42129
	bne	.L3268	@,
.L3251:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3265:
	movw	r9, #3992	@ tmp179,
	mov	r3, #41	@,
	mul	r5, r9, r7	@ D.42116, tmp179, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC264	@,
	movw	r6, #13580	@ tmp180,
	movt	r1, #:upper16:.LC264	@,
	bl	dprint_vfmw	@
	ldr	sl, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, #41	@ level_idc,
	add	r3, r5, sl	@ D.42117, D.42116, <variable>.SPS
	ldrb	sl, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	bne	.L3269	@,
.L3260:
	str	r8, [r3, #736]	@ profile_idc, <variable>.profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r8, #1	@ tmp218,
	ldr	lr, [fp, #-68]	@, %sfp
	strb	lr, [r1, r5]	@, <variable>.constrained_set0_flag
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	r1, [fp, #-64]	@, %sfp
	add	ip, r3, r5	@ tmp219, <variable>.SPS, D.42116
	strb	r1, [ip, #1]	@, <variable>.constrained_set1_flag
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [fp, #-60]	@, %sfp
	add	r3, lr, r5	@ tmp225, <variable>.SPS, D.42116
	strb	ip, [r3, #2]	@, <variable>.constrained_set2_flag
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [fp, #-56]	@, %sfp
	add	lr, r1, r5	@ tmp231, <variable>.SPS, D.42116
	strb	ip, [lr, #3]	@, <variable>.constrained_set3_flag
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r3, r5	@ tmp237, <variable>.SPS, D.42116
	str	r2, [r1, #740]	@ level_idc, <variable>.level_idc
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	ip, lr, r5	@ tmp242, <variable>.SPS, D.42116
	str	r7, [ip, #744]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, r3	@, D.42116, <variable>.SPS
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.42134
	bne	.L3270	@,
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r2, r5	@ tmp265, <variable>.SPS, D.42116
	strb	r8, [r1, #24]	@ tmp218, <variable>.is_refreshed
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, lr, r5	@ tmp272, <variable>.SPS, D.42116
	strb	r8, [r5, #23]	@ tmp218, <variable>.is_valid
	b	.L3251	@
.L3249:
	mvn	r0, #0	@ D.42092,
	b	.L3251	@
.L3257:
	cmp	r5, #122	@ D.42082,
	beq	.L3256	@,
	cmp	r5, #144	@ D.42082,
	beq	.L3256	@,
	cmp	r5, #110	@ D.42082,
	beq	.L3256	@,
.L3252:
	mov	r2, r5	@, D.42082
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC263	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r8, #100	@ profile_idc,
	mov	r2, r6	@ level_idc, D.42087
	bhi	.L3258	@,
	b	.L3265	@
.L3256:
	movw	r1, #:lower16:.LC262	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC262	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42087
	bhi	.L3258	@,
	b	.L3265	@
.L3255:
	movw	r1, #:lower16:.LC261	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42087
	bhi	.L3258	@,
	b	.L3265	@
.L3268:
	mov	r2, #1	@ tmp203,
	strb	r2, [sl, #91]	@ tmp203, sps_tmp.is_valid
	strb	r2, [sl, #92]	@ tmp203, sps_tmp.is_refreshed
	add	r1, sl, #68	@, tmp183,
	ldr	r0, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, r9	@, tmp179
	add	r0, r5, r0	@, D.42116, <variable>.SPS
	bl	memmove	@
	mov	r0, r8	@ D.42092, D.42125
	b	.L3251	@
.L3267:
	mov	r3, r7	@, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC265	@,
	movw	r2, #9555	@,
	movt	r1, #:upper16:.LC265	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42092,
	b	.L3251	@
.L3266:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC259	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, r2, #1	@ tmp166, <variable>.MaxSpsNum,
	cmp	r7, ip	@ seq_parameter_set_id, tmp166
	bls	.L3249	@,
	movw	lr, #:lower16:g_event_report	@ tmp168,
	movt	lr, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [lr, #0]	@ g_event_report.745, g_event_report
	cmp	r3, #0	@ g_event_report.745,
	beq	.L3249	@,
	str	r2, [fp, #-48]	@ <variable>.MaxSpsNum, para
	movw	r2, #55520	@ tmp171,
	str	r7, [fp, #-52]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	sub	r2, fp, #52	@,,
	blx	r3	@ g_event_report.745
	mvn	r0, #0	@ D.42092,
	b	.L3251	@
.L3270:
	mov	r3, r7	@, seq_parameter_set_id
	movw	r2, #9578	@,
	mov	r0, r8	@, tmp218
	movw	r1, #:lower16:.LC265	@,
	movt	r1, #:upper16:.LC265	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mvn	r0, #0	@ D.42092,
	add	ip, r3, r5	@ tmp251, <variable>.SPS, D.42116
	strb	r8, [ip, #24]	@ tmp218, <variable>.is_refreshed
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, r2, r5	@ tmp258, <variable>.SPS, D.42116
	strb	sl, [r5, #23]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3251	@
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
.LFB1469:
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
	mov	r5, r1	@ pPPS, pPPS
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	movw	r6, #55460	@ tmp188,
	strb	r0, [r5, #0]	@, <variable>.entropy_coding_mode_flag
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3307	@,
.L3272:
	mvn	r0, #0	@ D.41069,
.L3275:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3307:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	u_1	@
	strb	r0, [r5, #1]	@, <variable>.pic_order_present_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3272	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC268	@,
	movt	r1, #:upper16:.LC268	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.41074,
	str	r0, [r5, #32]	@ D.41074, <variable>.num_slice_groups_minus1
	bne	.L3273	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3273	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC270	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.41084,
	str	r0, [r5, #36]	@ D.41084, <variable>.num_ref_idx_l0_active_minus1
	bhi	.L3276	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3276	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC272	@,
	movt	r1, #:upper16:.LC272	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.41090,
	str	r0, [r5, #40]	@ D.41090, <variable>.num_ref_idx_l1_active_minus1
	bhi	.L3278	@,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3279	@,
.L3278:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC273	@,
	movt	r1, #:upper16:.LC273	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41069,
	b	.L3275	@
.L3279:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC274	@,
	movt	r1, #:upper16:.LC274	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.weighted_pred_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3272	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC275	@,
	movt	r2, #:upper16:.LC275	@,
	bl	u_v	@
	cmp	r0, #2	@ D.41100,
	str	r0, [r5, #44]	@ D.41100, <variable>.weighted_bipred_idc
	bhi	.L3308	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC277	@,
	movt	r1, #:upper16:.LC277	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	str	r0, [r5, #48]	@, <variable>.pic_init_qp_minus26
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC279	@,
	movt	r1, #:upper16:.LC279	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	str	r0, [r5, #52]	@, <variable>.chroma_qp_index_offset
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC281	@,
	movt	r1, #:upper16:.LC281	@,
	strb	r0, [r5, #3]	@, <variable>.deblocking_filter_control_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC282	@,
	movt	r1, #:upper16:.LC282	@,
	strb	r0, [r5, #4]	@, <variable>.constrained_intra_pred_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r8, r0	@ D.41113,
	strb	r8, [r5, #17]	@ D.41113, <variable>.redundant_pic_cnt_present_flag
	cmp	r8, #0	@ D.41113,
	beq	.L3281	@,
	movw	r1, #:lower16:.LC283	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC283	@,
	bl	dprint_vfmw	@
.L3281:
	ldr	lr, [r5, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	add	r3, r4, #13504	@, pH264Ctx,
	mov	r8, #0	@ tmp225,
	add	r0, r3, #24	@,,
	str	r8, [r5, #60]	@ tmp225, <variable>.transform_8x8_mode_flag
	str	lr, [r5, #56]	@ <variable>.chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	strb	r8, [r5, #18]	@ tmp225, <variable>.pic_scaling_matrix_present_flag
	bl	BsResidBits	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r2, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	r1, r2, #3	@ tmp231, <variable>.nal_trail_zero_bit_num,
	cmp	r0, r1	@, tmp231
	bcs	.L3309	@,
.L3282:
	mov	r0, #0	@ D.41069,
	b	.L3275	@
.L3309:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC284	@,
	movt	r1, #:upper16:.LC284	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	str	r0, [r5, #60]	@, <variable>.transform_8x8_mode_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41128,
	strb	r0, [r5, #18]	@ D.41128, <variable>.pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41128,
	beq	.L3310	@,
.L3283:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC287	@,
	movt	r1, #:upper16:.LC287	@,
	bl	se_v	@
	add	ip, r0, #12	@ tmp312, D.41214,
	str	r0, [r5, #56]	@ D.41214, <variable>.second_chroma_qp_index_offset
	cmp	ip, #24	@ tmp312,
	bhi	.L3303	@,
	movw	r1, #55460	@ tmp313,
	ldr	r2, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	beq	.L3282	@,
.L3303:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC288	@,
	movt	r1, #:upper16:.LC288	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41069,
	b	.L3275	@
.L3273:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp198,
	movt	r2, #:upper16:g_event_report	@ tmp198,
	ldr	r3, [r2, #0]	@ g_event_report.702, g_event_report
	cmp	r3, #0	@ g_event_report.702,
	beq	.L3272	@,
	movw	ip, #55520	@ tmp199,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.702
	mvn	r0, #0	@ D.41069,
	b	.L3275	@
.L3276:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41069,
	b	.L3275	@
.L3310:
	add	r9, r5, #1984	@ ivtmp.8025, pPPS,
	sub	r6, fp, #76	@ ivtmp.8020,,
	add	r7, r5, #64	@, pPPS,
	str	r7, [fp, #-84]	@, %sfp
	mov	sl, r9	@ ivtmp.8051, ivtmp.8025
	mov	r7, r8	@ i.8039, ivtmp.8026
	str	r9, [fp, #-80]	@ ivtmp.8025, %sfp
.L3292:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	u_1	@
	add	r1, r5, r7	@ tmp237, pPPS, i.8039
	mov	r2, #16	@,
	str	r0, [r6, #0]	@ D.41133, q4x4defaultflag
	mov	ip, r0	@ D.41133,
	strb	ip, [r1, #5]	@ D.41133, <variable>.pic_scaling_list_present_flag
	add	r0, r8, r9	@, ivtmp.8026, ivtmp.8025
	ldr	r3, [r6, #0]	@ tmp239, q4x4defaultflag
	cmp	r3, #1	@ tmp239,
	beq	.L3311	@,
	rsbs	ip, r7, #1	@ D.41156, i.8039
	movcc	ip, #0	@ D.41156
	cmp	r7, #0	@ i.8039,
	cmpne	r7, #3	@, i.8039,
	bne	.L3288	@,
	movw	lr, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	movw	lr, #3992	@,
	mla	r3, r1, lr, r3	@ D.41164, <variable>.seq_parameter_set_id,, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3312	@,
	ldr	r3, .L3316	@,
	cmp	ip, #0	@ D.41156,
	ldr	r1, .L3316+4	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3285:
	add	r7, r7, #1	@ i.8039, i.8039,
	ldr	lr, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r7, #6	@ i.8039,
	add	r1, lr, #16	@,,
	add	r6, r6, #4	@ ivtmp.8020, ivtmp.8020,
	add	r0, r2, #64	@,,
	str	r1, [fp, #-80]	@, %sfp
	add	r8, r8, #16	@ ivtmp.8026, ivtmp.8026,
	add	sl, sl, #16	@ ivtmp.8051, ivtmp.8051,
	str	r0, [fp, #-84]	@, %sfp
	bne	.L3292	@,
	add	r8, r5, #2080	@, pPPS,
	mov	r7, #0	@ ivtmp.8005,
	add	r9, r5, #448	@ ivtmp.8008, pPPS,
	sub	r6, fp, #52	@ ivtmp.8010,,
	str	r8, [fp, #-80]	@, %sfp
	mov	sl, r8	@ ivtmp.8004,
	mov	r8, r7	@ i, ivtmp.8005
	str	r5, [fp, #-84]	@ pPPS, %sfp
.L3302:
	ldr	ip, [r5, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	mov	r3, #0	@ prephitmp.7986,
	cmp	ip, #1	@ <variable>.transform_8x8_mode_flag,
	movne	ip, #0	@,
	strne	ip, [r6, #0]	@, q8x8defaultflag
	beq	.L3313	@,
.L3294:
	ldr	r1, [fp, #-84]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	strb	r3, [r1, #11]	@ prephitmp.7986, <variable>.pic_scaling_list_present_flag
	add	r0, r2, r7	@,, ivtmp.8005
	ldr	r3, [r6, #0]	@ tmp283, q8x8defaultflag
	mov	r2, #64	@,
	cmp	r3, #1	@ tmp283,
	beq	.L3314	@,
	movw	ip, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	movw	lr, #3992	@,
	mla	r3, r1, lr, r3	@ temp.8045, <variable>.seq_parameter_set_id,, <variable>.SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	ip, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3315	@,
	ldr	r3, .L3316+8	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3316+12	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3296:
	add	r8, r8, #1	@ i, i,
	ldr	lr, [fp, #-84]	@, %sfp
	cmp	r8, #2	@ i,
	add	sl, sl, #64	@ ivtmp.8004, ivtmp.8004,
	add	r0, lr, #1	@,,
	add	r7, r7, #64	@ ivtmp.8005, ivtmp.8005,
	add	r9, r9, #256	@ ivtmp.8008, ivtmp.8008,
	add	r6, r6, #4	@ ivtmp.8010, ivtmp.8010,
	str	r0, [fp, #-84]	@, %sfp
	beq	.L3283	@,
	b	.L3302	@
.L3288:
	mov	r0, sl	@, ivtmp.8051
	sub	r1, sl, #16	@, ivtmp.8051,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3285	@
.L3311:
	ldr	r2, [fp, #-80]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [fp, #-84]	@, %sfp
	add	r3, r3, #15	@,,
	str	r6, [sp, #0]	@ ivtmp.8020,
	bl	Scaling_List	@
	ldr	r2, [r6, #0]	@ tmp240, q4x4defaultflag
	cmp	r2, #1	@ tmp240,
	bne	.L3285	@,
	ldr	lr, .L3316+4	@,
	cmp	r7, #2	@ i.8039,
	ldr	r1, .L3316	@,
	mov	r2, #16	@,
	ldr	r0, [fp, #-80]	@, %sfp
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3285	@
.L3308:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC276	@,
	movt	r1, #:upper16:.LC276	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41069,
	b	.L3275	@
.L3312:
	add	ip, r3, #2672	@ tmp261, D.41164,
	add	r0, r8, r9	@, ivtmp.8026, ivtmp.8025
	add	r1, ip, r8	@, tmp261, ivtmp.8026
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3285	@
.L3315:
	ldr	r1, [fp, #-80]	@, %sfp
	add	r2, r3, #2768	@ tmp298, temp.8045,
	add	r0, r1, r7	@,, ivtmp.8005
	add	r1, r2, r7	@, tmp298, ivtmp.8005
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3296	@
.L3314:
	mov	r3, r2	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, ivtmp.8008
	mov	r2, sl	@, ivtmp.8004
	str	r6, [sp, #0]	@ ivtmp.8010,
	bl	Scaling_List	@
	ldr	r0, [r6, #0]	@ tmp284, q8x8defaultflag
	cmp	r0, #1	@ tmp284,
	bne	.L3296	@,
	ldr	lr, .L3316+8	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3316+12	@,
	mov	r2, #64	@,
	mov	r0, sl	@, ivtmp.8004
	movne	r1, lr	@,
	bl	memcpy	@
	b	.L3296	@
.L3313:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC286	@,
	bl	u_1	@
	uxtb	r3, r0	@ prephitmp.7986, D.41182
	str	r0, [r6, #0]	@ D.41182, q8x8defaultflag
	b	.L3294	@
.L3317:
	.align	2
.L3316:
	.word	.LANCHOR2+80
	.word	.LANCHOR2+96
	.word	.LANCHOR2+176
	.word	.LANCHOR2+112
	.fnend
	.size	ProcessPPS, .-ProcessPPS
	.align	2
	.global	H264_DecPPS
	.type	H264_DecPPS, %function
H264_DecPPS:
	.fnstart
.LFB1468:
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
	movw	r1, #:lower16:.LC289	@,
	movt	r1, #:upper16:.LC289	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r4, #13576	@ tmp145,
	mov	r5, r0	@ pic_parameter_set_id,
	ldr	r0, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp146, <variable>.MaxPpsNum,
	cmp	r5, r3	@ pic_parameter_set_id, tmp146
	bhi	.L3329	@,
	mov	r0, r6	@, pH264Ctx
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	ue_v	@
	movw	ip, #13572	@ tmp158,
	ldr	r1, [r6, ip]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	r3, r0	@ seq_parameter_set_id,
	sub	r0, r1, #1	@ tmp159, <variable>.MaxSpsNum,
	cmp	r3, r0	@ seq_parameter_set_id, tmp159
	bhi	.L3330	@,
	movw	ip, #13580	@ tmp163,
	movw	r1, #3992	@ tmp165,
	ldr	r0, [r6, ip]	@ <variable>.SPS, <variable>.SPS
	mla	r2, r1, r3, r0	@ tmp166, tmp165, seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r2, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	beq	.L3331	@,
	mov	sl, #2208	@ tmp169,
	movw	r7, #13584	@ tmp170,
	mul	r4, sl, r5	@ D.41033, tmp169, pic_parameter_set_id
	ldr	r8, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r4, r8	@ D.41034, D.41033, <variable>.PPS
	ldrb	r8, [r2, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r8, #0	@ <variable>.is_valid,
	bne	.L3332	@,
	str	r5, [r2, #24]	@ pic_parameter_set_id, <variable>.pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r1, r4	@ tmp200, <variable>.PPS, D.41033
	str	r3, [r2, #28]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	lr, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r4, lr	@, D.41033, <variable>.PPS
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.41047
	bne	.L3333	@,
	ldr	r2, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	lr, #1	@ tmp225,
	add	ip, r2, r4	@ tmp223, <variable>.PPS, D.41033
	strb	lr, [ip, #20]	@ tmp225, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp230, <variable>.PPS, D.41033
	strb	lr, [r4, #19]	@ tmp225, <variable>.is_valid
.L3321:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L3332:
	movw	r8, #:lower16:.LANCHOR1	@ tmp173,
	movt	r8, #:upper16:.LANCHOR1	@ tmp173,
	add	lr, r8, #4048	@, tmp173,
	mov	r0, r6	@, pH264Ctx
	str	r5, [r8, #4084]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	add	r1, lr, #12	@,,
	str	r3, [r8, #4088]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.41038,
	bne	.L3334	@,
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r8, #4048	@, tmp173,
	add	r0, r2, #12	@,,
	add	r1, r4, r3	@, D.41033, <variable>.PPS
	bl	PPSEqual	@
	cmp	r0, #0	@ D.41042
	beq	.L3321	@,
	mov	ip, #1	@ tmp186,
	strb	ip, [r8, #4079]	@ tmp186, pps_tmp.is_valid
	strb	ip, [r8, #4080]	@ tmp186, pps_tmp.is_refreshed
	add	r1, r8, #4048	@, tmp173,
	ldr	r0, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r1, #12	@,,
	mov	r2, sl	@, tmp169
	add	r0, r4, r0	@, D.41033, <variable>.PPS
	bl	memmove	@
	mov	r0, r5	@ D.41017, D.41038
	b	.L3321	@
.L3329:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC290	@,
	movt	r1, #:upper16:.LC290	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r1, r2, #1	@ tmp150, <variable>.MaxPpsNum,
	cmp	r5, r1	@ pic_parameter_set_id, tmp150
	bhi	.L3335	@,
.L3320:
	mvn	r0, #0	@ D.41017,
	b	.L3321	@
.L3335:
	movw	ip, #:lower16:g_event_report	@ tmp152,
	movt	ip, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [ip, #0]	@ g_event_report.700, g_event_report
	cmp	r3, #0	@ g_event_report.700,
	beq	.L3320	@,
	str	r2, [fp, #-40]	@ <variable>.MaxPpsNum, para
	movw	r2, #55520	@ tmp155,
	str	r5, [fp, #-44]	@ pic_parameter_set_id, para
	mov	r1, #110	@,
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	sub	r2, fp, #44	@,,
	blx	r3	@ g_event_report.700
	mvn	r0, #0	@ D.41017,
	b	.L3321	@
.L3334:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41017,
	b	.L3321	@
.L3330:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC259	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41017,
	b	.L3321	@
.L3331:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC292	@,
	movt	r1, #:upper16:.LC292	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41017,
	b	.L3321	@
.L3333:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #1	@ tmp211,
	mvn	r0, #0	@ D.41017,
	add	r2, r1, r4	@ tmp209, <variable>.PPS, D.41033
	strb	ip, [r2, #20]	@ tmp211, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp216, <variable>.PPS, D.41033
	strb	r8, [r4, #19]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3321	@
	.fnend
	.size	H264_DecPPS, .-H264_DecPPS
	.align	2
	.global	ProcessSliceHeaderFirstPart
	.type	ProcessSliceHeaderFirstPart, %function
ProcessSliceHeaderFirstPart:
	.fnstart
.LFB1461:
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
	movw	r1, #:lower16:.LC294	@,
	movt	r1, #:upper16:.LC294	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r1, #13576	@ tmp160,
	mov	r5, r0	@ tmp_pic_parameter_set_id,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp161, <variable>.MaxPpsNum,
	cmp	r5, r3	@ tmp_pic_parameter_set_id, tmp161
	bhi	.L3337	@,
	movw	ip, #55460	@ tmp163,
	ldr	r2, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3337	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp_pic_parameter_set_id
	bl	PPSSPSCheckTmpId	@
	cmp	r0, #0	@,
	bne	.L3364	@,
	movw	r3, #13584	@ tmp168,
	mov	r6, #2208	@ tmp170,
	ldr	ip, [r4, r3]	@ <variable>.PPS, <variable>.PPS
	movw	r2, #20675	@ tmp177,
	movw	lr, #20684	@ tmp167,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r1, #13580	@ tmp172,
	str	r5, [r4, lr]	@ tmp_pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mla	r6, r6, r5, ip	@ pPPS, tmp170, tmp_pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	movw	r5, #3992	@ tmp175,
	ldr	lr, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, lr, r3	@ pSPS, tmp175, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L3341	@,
	ldr	r0, [r5, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r0, #0	@ <variable>.num_ref_frames,
	bne	.L3342	@,
.L3341:
	movw	ip, #20672	@ tmp180,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L3342	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC297	@,
	movt	r1, #:upper16:.LC297	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3342:
	ldr	lr, [r5, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC298	@,
	movt	r2, #:upper16:.LC298	@,
	add	r1, lr, #4	@, <variable>.log2_max_frame_num_minus4,
	bl	u_v	@
	movw	r1, #55460	@ tmp187,
	ldr	r3, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20692	@ tmp186,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.40459, <variable>.CurrSlice.frame_num
	bne	.L3343	@,
	movw	r8, #20675	@ tmp189,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3365	@,
.L3344:
	movw	r7, #20673	@ tmp195,
	movw	r8, #20674	@ tmp198,
	mov	r3, #0	@ tmp196,
	strb	r3, [r4, r7]	@ tmp196, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r8]	@ tmp196, <variable>.CurrSlice.bottom_field_flag
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r0, r3	@ <variable>.frame_mbs_only_flag,
	beq	.L3366	@,
	ldr	r2, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	ip, r2, #1	@ tmp282, <variable>.pic_height_in_map_units_minus1,
	mla	r2, r1, ip, ip	@ D.40485, <variable>.pic_width_in_mbs_minus1, tmp282, tmp282
.L3362:
	mov	r1, #1	@ iftmp.671,
.L3349:
	cmp	r3, #0	@ prephitmp.8142,
	mul	r2, r1, r2	@ pic_size, iftmp.671, D.40485
	movne	r3, #0	@ prephitmp.8112,
	bne	.L3351	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	subs	r3, r1, #0	@ prephitmp.8112, <variable>.mb_adaptive_frame_field_flag,
	movne	r3, #1	@ prephitmp.8112
.L3351:
	movw	ip, #20673	@ tmp219,
	movw	r0, #20676	@ tmp217,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r0]	@ prephitmp.8112, <variable>.CurrSlice.MbaffFrameFlag
	cmp	lr, #1	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L3352	@,
	cmp	r3, #1	@ prephitmp.8112,
	beq	.L3352	@,
	movw	r0, #20724	@ tmp225,
	ldr	lr, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r2, lr	@ pic_size, <variable>.CurrSlice.first_mb_in_slice
	bls	.L3367	@,
.L3354:
	movw	r8, #20675	@ tmp228,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3368	@,
.L3355:
	movw	r7, #19788	@ tmp236,
	movw	r8, #19792	@ tmp238,
	mov	lr, #0	@ tmp237,
	str	lr, [r4, r8]	@ tmp237, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	str	lr, [r4, r7]	@ tmp237, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r5, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r1, #0	@ <variable>.pic_order_cnt_type,
	beq	.L3369	@,
.L3357:
	movw	r7, #19836	@ tmp250,
	movw	r8, #19840	@ tmp252,
	mov	r1, #0	@ tmp251,
	str	r1, [r4, r8]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r7]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r3, #1	@ <variable>.pic_order_cnt_type,
	beq	.L3370	@,
.L3358:
	movw	r5, #55460	@ tmp263,
	ldr	r2, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3343	@,
	ldrb	r3, [r6, #17]	@ zero_extendqisi2	@ <variable>.redundant_pic_cnt_present_flag, <variable>.redundant_pic_cnt_present_flag
	cmp	r3, #0	@ <variable>.redundant_pic_cnt_present_flag,
	beq	.L3359	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3360	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3360	@,
.L3359:
	mov	r0, r4	@, pH264Ctx
	bl	IsNewPic	@
	movw	r2, #20677	@ tmp272,
	uxtb	ip, r0	@ D.40557,
	strb	ip, [r4, r2]	@ D.40557, <variable>.CurrSlice.new_pic_flag
	cmp	ip, #0	@ D.40557,
	bne	.L3361	@,
	movw	lr, #22360	@ tmp275,
	movw	r0, #20724	@ tmp274,
	ldr	r3, [r4, lr]	@ <variable>.PrevSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	ldr	r1, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r1, r3	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	bls	.L3371	@,
.L3361:
	mov	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3343:
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3366:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.40475,
	strb	r3, [r4, r7]	@ D.40475, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.40475,
	bne	.L3372	@,
.L3347:
	ldr	ip, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r1, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r2, ip, #1	@ tmp211, <variable>.pic_width_in_mbs_minus1,
	cmp	lr, #0	@ <variable>.frame_mbs_only_flag,
	mla	r2, r1, r2, r2	@ D.40485, <variable>.pic_height_in_map_units_minus1, tmp211, tmp211
	moveq	r1, #2	@ iftmp.671,
	beq	.L3349	@,
	movw	r3, #20673	@ tmp214,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8142, <variable>.CurrSlice.field_pic_flag
	b	.L3362	@
.L3365:
	cmp	r0, #0	@ D.40459,
	movw	ip, #20688	@ tmp191,
	str	r0, [r4, ip]	@ D.40459, <variable>.CurrSlice.prev_frame_num
	beq	.L3344	@,
	movw	r1, #:lower16:.LC299	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC299	@,
	bl	dprint_vfmw	@
	b	.L3344	@
.L3352:
	movw	r1, #20724	@ tmp222,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r3, r2, lsr #1	@ <variable>.CurrSlice.first_mb_in_slice, pic_size,
	bcc	.L3354	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC302	@,
	movt	r1, #:upper16:.LC302	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3337:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC295	@,
	movt	r1, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3369:
	ldr	ip, [r5, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC306	@,
	movt	r2, #:upper16:.LC306	@,
	add	r1, ip, #4	@, <variable>.log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.pic_order_cnt_lsb
	ldrb	r0, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r0, #0	@ <variable>.pic_order_present_flag,
	beq	.L3357	@,
	movw	r2, #20673	@ tmp246,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3357	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC307	@,
	movt	r1, #:upper16:.LC307	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	b	.L3357	@
.L3370:
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	cmp	lr, #0	@ <variable>.delta_pic_order_always_zero_flag,
	bne	.L3358	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r5, #1	@ <variable>.pic_order_present_flag,
	bne	.L3358	@,
	movw	ip, #20673	@ tmp259,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3358	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC309	@,
	movt	r1, #:upper16:.LC309	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L3358	@
.L3367:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC303	@,
	movt	r1, #:upper16:.LC303	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3368:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	bl	ue_v	@
	movw	r2, #20712	@ tmp231,
	cmp	r0, #65536	@ D.40512,
	str	r0, [r4, r2]	@ D.40512, <variable>.CurrSlice.idr_pic_id
	bcs	.L3356	@,
	movw	r3, #55460	@ tmp233,
	ldr	ip, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3355	@,
.L3356:
	movw	r1, #:lower16:.LC305	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC305	@,
	bl	dprint_vfmw	@
	b	.L3355	@
.L3372:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC301	@,
	movt	r1, #:upper16:.LC301	@,
	bl	u_1	@
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ prephitmp.8142, <variable>.CurrSlice.field_pic_flag
	strb	r0, [r4, r8]	@, <variable>.CurrSlice.bottom_field_flag
	b	.L3347	@
.L3364:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC296	@,
	movt	r1, #:upper16:.LC296	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3360:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp270,
	movt	r0, #:upper16:g_event_report	@ tmp270,
	ldr	r3, [r0, #0]	@ g_event_report.674, g_event_report
	cmp	r3, #0	@ g_event_report.674,
	beq	.L3343	@,
	movw	lr, #55520	@ tmp271,
	mov	r1, #102	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.674
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3371:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40437,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	DecMMCO
	.type	DecMMCO, %function
DecMMCO:
	.fnstart
.LFB1459:
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
	cmp	r1, #0	@ save
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	moveq	r6, r1	@ MMCONum.8183, save
	movweq	r7, #55460	@ tmp297,
	beq	.L3375	@,
	mov	r5, #0	@ MMCONum,
	movw	sl, #2004	@ tmp286,
	movw	r9, #55460	@ tmp291,
	b	.L3376	@
.L3378:
	cmp	r3, #2	@ prephitmp.8159,
	beq	.L3409	@,
.L3379:
	cmp	r3, #3	@ prephitmp.8159,
	cmpne	r3, #6	@, prephitmp.8159,
	beq	.L3410	@,
.L3380:
	cmp	r3, #4	@ prephitmp.8159,
	beq	.L3411	@,
.L3381:
	cmp	r3, #6	@ prephitmp.8159,
	bhi	.L3382	@,
.L3413:
	ldr	lr, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3382	@,
	cmp	r3, #0	@ prephitmp.8159,
	beq	.L3385	@,
	add	r5, r5, #1	@ MMCONum, MMCONum,
	cmp	r5, #100	@ MMCONum,
	beq	.L3412	@,
.L3376:
	movw	r3, #26372	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	ldr	r8, [r4, r3]	@ D.40288, <variable>.CurrMarkIdx
	bl	ue_v	@
	mov	r7, r5, asl #2	@ tmp282, MMCONum,
	add	ip, r7, r5	@ tmp153, tmp282, MMCONum
	mul	r2, sl, r8	@ tmp155, tmp286, D.40288
	add	r1, r2, ip, asl #2	@, tmp157, tmp155, tmp153,
	mov	r3, r0	@ prephitmp.8159,
	cmp	r0, #1	@ prephitmp.8159,
	cmpne	r0, #3	@, prephitmp.8159,
	add	r0, r1, r4	@ tmp158, tmp157, pH264Ctx
	add	r6, r0, #22272	@ tmp159, tmp158,
	add	r6, r6, #88	@ tmp159, tmp159,
	str	r3, [r6, #8]	@ prephitmp.8159, <variable>.memory_management_control_operation
	bne	.L3378	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC315	@,
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	ldr	r3, [r6, #8]	@ prephitmp.8159, <variable>.memory_management_control_operation
	cmp	r3, #2	@ prephitmp.8159,
	str	r0, [r6, #12]	@, <variable>.difference_of_pic_nums_minus1
	bne	.L3379	@,
.L3409:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC316	@,
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp194, tmp286, D.40288
	add	r2, r7, r5	@ tmp192, tmp282, MMCONum
	add	ip, r3, r2, asl #2	@, tmp196, tmp194, tmp192,
	add	r1, ip, r4	@ tmp197, tmp196, pH264Ctx
	add	r3, r1, #22272	@ tmp208, tmp197,
	add	ip, r3, #88	@ tmp208, tmp208,
	add	r1, r3, #96	@ tmp198, tmp198,
	ldr	r3, [ip, #8]	@ prephitmp.8159, <variable>.memory_management_control_operation
	cmp	r3, #3	@ prephitmp.8159,
	cmpne	r3, #6	@, prephitmp.8159,
	str	r0, [r1, #8]	@, <variable>.long_term_pic_num
	bne	.L3380	@,
.L3410:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp222, tmp286, D.40288
	add	r2, r7, r5	@ tmp220, tmp282, MMCONum
	add	ip, r3, r2, asl #2	@, tmp224, tmp222, tmp220,
	add	r1, ip, r4	@ tmp225, tmp224, pH264Ctx
	add	r3, r1, #22272	@ tmp236, tmp225,
	add	ip, r3, #88	@ tmp236, tmp236,
	add	r1, r3, #96	@ tmp226, tmp226,
	ldr	r3, [ip, #8]	@ prephitmp.8159, <variable>.memory_management_control_operation
	cmp	r3, #4	@ prephitmp.8159,
	str	r0, [r1, #12]	@, <variable>.long_term_frame_idx
	bne	.L3381	@,
.L3411:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	bl	ue_v	@
	mul	r8, sl, r8	@ tmp243, tmp286, D.40288
	add	r2, r7, r5	@ tmp241, tmp282, MMCONum
	add	ip, r8, r2, asl #2	@, tmp245, tmp243, tmp241,
	add	r1, ip, r4	@ tmp246, tmp245, pH264Ctx
	add	r3, r1, #22272	@ tmp257, tmp246,
	add	ip, r3, #88	@ tmp257, tmp257,
	add	r1, r3, #104	@ tmp247, tmp247,
	ldr	r3, [ip, #8]	@ prephitmp.8159, <variable>.memory_management_control_operation
	cmp	r3, #6	@ prephitmp.8159,
	str	r0, [r1, #8]	@, <variable>.max_long_term_frame_idx_plus1
	bls	.L3413	@,
.L3382:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40287,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3385:
	mov	r0, #0	@ D.40287,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3375:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.40331
	moveq	r8, #1	@, D.40331
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3414	@,
.L3386:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3415	@,
.L3387:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp275, D.40331
	cmp	r8, #0	@ tmp275,
	bne	.L3416	@,
.L3388:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3417	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3391	@,
.L3390:
	ldr	r0, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3391	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3385	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	add	r6, r6, #1	@ tmp298, MMCONum.8183,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.40331
	moveq	r8, #1	@, D.40331
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3418	@,
.L3397:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3419	@,
.L3398:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp311, D.40331
	cmp	r8, #0	@ tmp311,
	bne	.L3420	@,
.L3399:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3405	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3391	@,
.L3406:
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3391	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3385	@,
	add	r6, r6, #1	@ MMCONum.8183, tmp298,
	cmp	r6, #100	@ MMCONum.8183,
	bne	.L3375	@,
.L3408:
	mvn	r0, #0	@ D.40287,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3412:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40287,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3416:
	movw	r1, #:lower16:.LC317	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC317	@,
	bl	ue_v	@
	b	.L3388	@
.L3414:
	movw	r1, #:lower16:.LC315	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	b	.L3386	@
.L3420:
	movw	r1, #:lower16:.LC317	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC317	@,
	bl	ue_v	@
	b	.L3399	@
.L3418:
	movw	r1, #:lower16:.LC315	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	b	.L3397	@
.L3417:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	bl	ue_v	@
	b	.L3390	@
.L3415:
	movw	r1, #:lower16:.LC316	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	b	.L3387	@
.L3419:
	movw	r1, #:lower16:.LC316	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	b	.L3398	@
.L3405:
	movw	r1, #:lower16:.LC318	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC318	@,
	bl	ue_v	@
	b	.L3406	@
.L3391:
	movw	r1, #:lower16:.LC319	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC319	@,
	bl	dprint_vfmw	@
	b	.L3408	@
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
.LFB1460:
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
	movw	r3, #20677	@ tmp150,
	ldrb	r8, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	r3, #26372	@ tmp149,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r6, [r0, r3]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	cmp	r8, #0	@ <variable>.CurrSlice.new_pic_flag,
	bne	.L3422	@,
	movw	ip, #2004	@ tmp158,
	mov	r5, r6	@ tmpMarkIdx.8208, tmpMarkIdx
	mla	r2, ip, r6, r0	@ tmp159, tmp158, tmpMarkIdx, pH264Ctx
	add	r7, r2, #22272	@ tmp160, tmp159,
	add	r7, r7, #88	@ tmp160, tmp160,
	ldrb	r1, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L3425	@,
	movw	lr, #20675	@ tmp162,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3434	@,
.L3426:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	bl	u_1	@
	movw	r2, #2004	@ tmp188,
	mla	r5, r2, r5, r4	@ tmp189, tmp188, tmpMarkIdx.8208, pH264Ctx
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	add	ip, r5, #22272	@ tmp190, tmp189,
	add	r5, ip, #88	@ tmp190, tmp190,
	uxtb	r2, r0	@ D.40383,
	mov	r0, #16	@,
	strb	r2, [r5, #7]	@ D.40383, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L3435	@,
.L3428:
	mov	r0, #0	@ D.40393,
.L3427:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L3422:
	movw	lr, #20675	@ tmp162,
	rsbs	r5, r6, #1	@ tmpMarkIdx.8208, tmpMarkIdx
	movcc	r5, #0	@ tmpMarkIdx.8208
	str	r5, [r0, r3]	@ tmpMarkIdx.8208, <variable>.CurrMarkIdx
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3426	@,
.L3434:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC320	@,
	movt	r1, #:upper16:.LC320	@,
	bl	u_1	@
	movw	r3, #2004	@ tmp167,
	mla	r2, r3, r5, r4	@ tmp168, tmp167, tmpMarkIdx.8208, pH264Ctx
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	add	r5, r2, #22272	@ tmp169, tmp168,
	add	r5, r5, #88	@ tmp169, tmp169,
	strb	r0, [r5, #5]	@, <variable>.no_output_of_prior_pics_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.no_output_of_prior_pics_flag
	movw	r1, #:lower16:.LC322	@,
	movt	r1, #:upper16:.LC322	@,
	strb	r0, [r5, #6]	@, <variable>.long_term_reference_flag
	mov	r0, #16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40393,
	b	.L3427	@
.L3425:
	movw	r1, #20675	@ tmp215,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3436	@,
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ D.40408, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r5, r0	@ D.40408,
	bne	.L3437	@,
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L3428	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, <variable>.CurrSlice.new_pic_flag
	bl	DecMMCO	@
	b	.L3427	@
.L3435:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.40389,
	mov	r7, r0	@ D.40389,
	movne	r3, #1	@ tmp213,
	movne	r0, #0	@ D.40393,
	strneb	r3, [r5, #4]	@ tmp213, <variable>.is_valid
	bne	.L3427	@,
	movw	lr, #26372	@ tmp206,
	mov	r0, #0	@ tmp204,
	movw	r1, #:lower16:.LC325	@,
	strb	r0, [r5, #4]	@ tmp204, <variable>.is_valid
	movt	r1, #:upper16:.LC325	@,
	mov	r0, #1	@,
	str	r6, [r4, lr]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.40393, D.40389
	b	.L3427	@
.L3436:
	movw	r1, #:lower16:.LC320	@,
	movt	r1, #:upper16:.LC320	@,
	ldrb	r5, [r7, #5]	@ zero_extendqisi2	@ D.40396, <variable>.no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r5, r0	@ D.40396,
	bne	.L3438	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	ldrb	r4, [r7, #6]	@ zero_extendqisi2	@ D.40402, <variable>.long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.40402,
	beq	.L3428	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC327	@,
	movt	r1, #:upper16:.LC327	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40393,
	b	.L3427	@
.L3437:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC328	@,
	movt	r1, #:upper16:.LC328	@,
	bl	dprint_vfmw	@
	movw	r0, #55464	@ tmp243,
	ldr	ip, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movw	r1, #55484	@ tmp239,
	movw	r3, #55500	@ tmp241,
	ldr	r2, [r4, r1]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	ldr	r3, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC329	@,
	movt	r1, #:upper16:.LC329	@,
	str	ip, [sp, #0]	@ <variable>.TotalNal,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40393,
	b	.L3427	@
.L3438:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC326	@,
	movt	r1, #:upper16:.LC326	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40393,
	b	.L3427	@
	.fnend
	.size	dec_ref_pic_marking, .-dec_ref_pic_marking
	.align	2
	.global	pred_weight_table
	.type	pred_weight_table, %function
pred_weight_table:
	.fnstart
.LFB1458:
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
	movw	sl, #13584	@ tmp163,
	movw	r6, #20684	@ tmp164,
	ldr	r4, [r0, sl]	@ <variable>.PPS, <variable>.PPS
	ldr	ip, [r0, r6]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	lr, #2208	@ tmp167,
	movw	r1, #13580	@ tmp169,
	movw	r7, #3992	@ tmp172,
	ldr	r3, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #:lower16:.LC330	@,
	mla	r9, lr, ip, r4	@, tmp167, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movt	r1, #:upper16:.LC330	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r6, #20736	@ tmp175,
	mov	r4, #1	@ tmp176,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r2, [r9, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp172, <variable>.seq_parameter_set_id, <variable>.SPS
	bl	ue_v	@
	str	r0, [r5, r6]	@ prephitmp.8262, <variable>.CurrSlice.luma_log2_weight_denom
	mov	sl, r4, asl r0	@ y_default_weight, tmp176,
	ldr	r9, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r9, #0	@ <variable>.chroma_format_idc,
	bne	.L3465	@,
.L3441:
	cmp	r0, #7	@ prephitmp.8262,
	bhi	.L3464	@,
	movw	ip, #20740	@ tmp183,
	ldr	r0, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	cmp	r0, #7	@ <variable>.CurrSlice.chroma_log2_weight_denom,
	bhi	.L3464	@,
	movw	r1, #55460	@ tmp186,
	ldr	r2, [r5, r1]	@ prephitmp.8228, <variable>.SeErrFlg
	cmp	r2, #0	@ prephitmp.8228,
	bne	.L3443	@,
	add	r8, r5, #20736	@ ivtmp.8257, pH264Ctx,
	mov	r6, r2	@ i, prephitmp.8228
	add	r4, r8, #8	@ ivtmp.8257, ivtmp.8257,
	movw	r8, #20728	@ tmp247,
	b	.L3452	@
.L3448:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3466	@,
.L3449:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_v
.L3451:
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.8257, ivtmp.8257,
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L3467	@,
.L3452:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC333	@,
	movt	r1, #:upper16:.LC333	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40217
	streq	r0, [r4, #768]	@ D.40217, <variable>.CurrSlice.wp_offset_l0_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l0_y
	beq	.L3448	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC334	@,
	movt	r1, #:upper16:.LC334	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC335	@,
	movt	r1, #:upper16:.LC335	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l0_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l0_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3449	@,
.L3466:
	movw	r1, #:lower16:.LC336	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC336	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40226
	bne	.L3468	@,
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	str	r0, [r4, #1024]	@ D.40226, <variable>.CurrSlice.wp_offset_l0_v
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_u
	str	r0, [r4, #896]	@ D.40226, <variable>.CurrSlice.wp_offset_l0_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_v
	add	r4, r4, #4	@ ivtmp.8257, ivtmp.8257,
	bcs	.L3452	@,
.L3467:
	ldr	r0, [fp, #-48]	@, %sfp
	ldr	r3, [r0, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r3, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3469	@,
.L3453:
	movw	r2, #55460	@ tmp229,
	ldr	r0, [r5, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@, D.40216,
	b	.L3446	@
.L3464:
	movw	lr, #55460	@ tmp185,
	ldr	r2, [r5, lr]	@ prephitmp.8228, <variable>.SeErrFlg
.L3443:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC332	@,
	movt	r1, #:upper16:.LC332	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40216,
.L3446:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3468:
	movw	r1, #:lower16:.LC337	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC337	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC337	@,
	movt	r1, #:upper16:.LC337	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l0_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l0_v
	b	.L3451	@
.L3465:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC331	@,
	movt	r1, #:upper16:.LC331	@,
	bl	ue_v	@
	movw	r2, #20740	@ tmp179,
	mov	r3, r0	@ D.40207,
	ldr	r0, [r5, r6]	@ prephitmp.8262, <variable>.CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp176,
	str	r3, [r5, r2]	@ D.40207, <variable>.CurrSlice.chroma_log2_weight_denom
	b	.L3441	@
.L3469:
	movw	lr, #20672	@ tmp208,
	ldrb	ip, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	ip, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3453	@,
	add	r4, r5, #20992	@ ivtmp.8247, pH264Ctx,
	mov	r6, #0	@ i.8261,
	add	r4, r4, #136	@ ivtmp.8247, ivtmp.8247,
	movw	r8, #20732	@ tmp240,
	b	.L3459	@
.L3455:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3470	@,
.L3456:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_v
.L3458:
	ldr	r1, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #1	@ i.8261, i.8261,
	add	r4, r4, #4	@ ivtmp.8247, ivtmp.8247,
	cmp	r1, r6	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.8261
	bcc	.L3453	@,
.L3459:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC339	@,
	movt	r1, #:upper16:.LC339	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40242
	streq	r0, [r4, #768]	@ D.40242, <variable>.CurrSlice.wp_offset_l1_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l1_y
	beq	.L3455	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC340	@,
	movt	r1, #:upper16:.LC340	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC341	@,
	movt	r1, #:upper16:.LC341	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l1_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l1_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3456	@,
.L3470:
	movw	r1, #:lower16:.LC342	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC342	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40250
	bne	.L3471	@,
	str	r0, [r4, #1024]	@ D.40250, <variable>.CurrSlice.wp_offset_l1_v
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r4, #896]	@ D.40250, <variable>.CurrSlice.wp_offset_l1_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_v
	b	.L3458	@
.L3471:
	movw	r1, #:lower16:.LC343	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC343	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC344	@,
	movt	r1, #:upper16:.LC344	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC343	@,
	movt	r1, #:upper16:.LC343	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC344	@,
	movt	r1, #:upper16:.LC344	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l1_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l1_v
	b	.L3458	@
	.fnend
	.size	pred_weight_table, .-pred_weight_table
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
.LFB1457:
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
	movw	ip, #20684	@ tmp161,
	movw	r1, #13584	@ tmp163,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r5, [r0, ip]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	sl, #2208	@ tmp165,
	ldr	r0, [r0, r1]	@ <variable>.PPS, <variable>.PPS
	movw	r3, #20673	@ tmp177,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #13580	@ tmp159,
	movw	r3, #3992	@ tmp169,
	mla	r1, sl, r5, r0	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r5, [r4, r2]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #19881	@ tmp174,
	mov	sl, #0	@ tmp172,
	ldr	ip, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	strb	sl, [r4, r0]	@ tmp172, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	movw	r0, #19880	@ tmp171,
	strb	sl, [r4, r0]	@ tmp172, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	mov	sl, #1	@ tmp184,
	mla	r2, r3, ip, r5	@ pSPS, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r5, #20672	@ tmp185,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	ldr	r1, [r2, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	addne	r1, r1, #5	@ tmp179, <variable>.log2_max_frame_num_minus4,
	addeq	r1, r1, #4	@ tmp182, <variable>.log2_max_frame_num_minus4,
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	mov	sl, sl, asl r1	@ MaxPicNum, tmp184,
	bls	.L3506	@,
.L3475:
	movw	r2, #55460	@ tmp238,
	ldr	r3, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@ D.40125,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3495:
	mov	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3506:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC345	@,
	movt	r1, #:upper16:.LC345	@,
	bl	u_1	@
	movw	r3, #19880	@ tmp188,
	uxtb	r0, r0	@ D.40113,
	strb	r0, [r4, r3]	@ D.40113, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.40113,
	ldreqb	r3, [r4, r5]	@ zero_extendqisi2	@ prephitmp.8278, <variable>.CurrSlice.slice_type
	beq	.L3477	@,
	movw	r7, #20728	@ tmp191,
	ldr	r6, [r4, r7]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r6, #2	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L3478	@,
	add	r8, r4, #19712	@ ivtmp.8300, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r8, #172	@ ivtmp.8300, ivtmp.8300,
	movw	r8, #55460	@ tmp249,
	b	.L3489	@
.L3485:
	bl	ue_v	@
	str	r0, [r5, #528]	@, <variable>.CurrReorder.long_term_pic_idx_l0
.L3488:
	ldr	ip, [r4, r7]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r5, r5, #4	@ ivtmp.8300, ivtmp.8300,
	add	r3, ip, #2	@ prephitmp.8306, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r6	@ prephitmp.8306, i
	bls	.L3484	@,
.L3489:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC346	@,
	movt	r1, #:upper16:.LC346	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC350	@,
	movt	r1, #:upper16:.LC350	@,
	mov	r2, r0	@ D.40118,
	cmp	r2, #3	@ D.40118,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r5, #0]	@ D.40118, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	bhi	.L3507	@,
	ldr	r3, [r4, r8]	@ prephitmp.8311, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8311,
	bne	.L3480	@,
	cmp	r2, #3	@ D.40118,
	beq	.L3508	@,
	cmp	r2, #2	@ D.40118,
	add	r6, r6, #1	@ i, i,
	beq	.L3485	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.40129
	str	r0, [r5, #264]	@ D.40129, <variable>.CurrReorder.abs_diff_pic_num_minus1_l0
	bls	.L3509	@,
	ldr	r3, [r4, r8]	@ prephitmp.8307, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8307,
	beq	.L3488	@,
.L3487:
	mov	r2, r0	@, D.40129
	movw	r1, #:lower16:.LC349	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC349	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3508:
	movw	r3, #20728	@ tmp198,
	ldr	r2, [r4, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r2, #2	@ prephitmp.8306, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
.L3484:
	cmp	r6, r3	@ i, prephitmp.8306
	beq	.L3490	@,
.L3505:
	movw	r3, #20672	@ tmp215,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8278, <variable>.CurrSlice.slice_type
.L3477:
	cmp	r3, #1	@ prephitmp.8278,
	bne	.L3475	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC352	@,
	movt	r1, #:upper16:.LC352	@,
	bl	u_1	@
	movw	r1, #19881	@ tmp218,
	uxtb	r0, r0	@ D.40149,
	strb	r0, [r4, r1]	@ D.40149, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.40149,
	beq	.L3475	@,
	movw	r8, #20732	@ tmp220,
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmn	ip, #2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L3475	@,
	add	r7, r4, #19968	@ ivtmp.8293, pH264Ctx,
	mov	r5, #0	@ i.8309,
	add	r6, r7, #48	@ ivtmp.8293, ivtmp.8293,
	movw	r7, #55460	@ tmp244,
	b	.L3501	@
.L3500:
	add	r5, r5, #1	@ i.8309, i.8309,
	cmp	r3, r5	@ D.40173, i.8309
	bls	.L3475	@,
.L3501:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC353	@,
	movt	r1, #:upper16:.LC353	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC357	@,
	movt	r1, #:upper16:.LC357	@,
	mov	r2, r0	@ D.40153,
	cmp	r2, #3	@ D.40153,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r6, #0]	@ D.40153, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	bhi	.L3510	@,
	ldr	r3, [r4, r7]	@ prephitmp.8280, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8280,
	bne	.L3493	@,
	cmp	r2, #3	@ D.40153,
	beq	.L3495	@,
	cmp	r2, #2	@ D.40153,
	bne	.L3511	@,
	bl	ue_v	@
	str	r0, [r6, #524]	@, <variable>.CurrReorder.long_term_pic_idx_l1
.L3499:
	ldr	r2, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.8293, ivtmp.8293,
	add	r3, r2, #2	@ D.40173, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r5	@ D.40173, i.8309
	bne	.L3500	@,
	add	lr, r5, #4992	@ tmp234, i.8309,
	add	ip, lr, #12	@ tmp234, tmp234,
	ldr	r1, [r4, ip, asl #2]	@ tmp236, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r1, #3	@ tmp236,
	beq	.L3500	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3511:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC355	@,
	movt	r1, #:upper16:.LC355	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.40162
	str	r0, [r6, #264]	@ D.40162, <variable>.CurrReorder.abs_diff_pic_num_minus1_l1
	bls	.L3512	@,
	ldr	r3, [r4, r7]	@ prephitmp.8310, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8310,
	beq	.L3499	@,
.L3498:
	mov	r2, r0	@, D.40162
	movw	r1, #:lower16:.LC356	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3510:
	movw	r0, #55460	@ tmp224,
	ldr	r3, [r4, r0]	@ prephitmp.8280, <variable>.SeErrFlg
.L3493:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC354	@,
	movt	r1, #:upper16:.LC354	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3507:
	movw	lr, #55460	@ tmp195,
	ldr	r3, [r4, lr]	@ prephitmp.8311, <variable>.SeErrFlg
.L3480:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC347	@,
	movt	r1, #:upper16:.LC347	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3512:
	movw	lr, #55460	@ tmp225,
	ldr	r3, [r4, lr]	@ prephitmp.8310, <variable>.SeErrFlg
	b	.L3498	@
.L3478:
	mov	r6, #0	@ i,
.L3490:
	add	r2, r6, #4928	@ tmp208, i,
	add	r6, r2, #42	@ tmp208, tmp208,
	add	r6, r4, r6, asl #2	@, tmp212, pH264Ctx, tmp208,
	ldr	lr, [r6, #4]	@ tmp214, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	lr, #3	@ tmp214,
	beq	.L3505	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC351	@,
	movt	r1, #:upper16:.LC351	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40125,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3509:
	movw	r1, #55460	@ tmp196,
	ldr	r3, [r4, r1]	@ prephitmp.8307, <variable>.SeErrFlg
	b	.L3487	@
	.fnend
	.size	ref_pic_list_reordering, .-ref_pic_list_reordering
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
.LFB1462:
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
	movw	r2, #13576	@ tmp155,
	ldr	r1, [r0, r2]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r5, #20684	@ tmp154,
	ldr	r2, [r0, r5]	@ D.40575, <variable>.CurrSlice.pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	sub	r3, r1, #1	@ tmp156, <variable>.MaxPpsNum,
	cmp	r3, r2	@ tmp156, D.40575
	bcc	.L3514	@,
	movw	lr, #55460	@ tmp158,
	ldr	ip, [r0, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3514	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L3546	@,
	ldr	r6, [r4, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r8, #20672	@ tmp168,
	mov	r7, #2208	@ tmp166,
	ldrb	r5, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	r0, #13584	@ tmp162,
	mul	r7, r7, r6	@ tmp164, tmp166, <variable>.CurrSlice.pic_parameter_set_id
	cmp	r5, #1	@ <variable>.CurrSlice.slice_type,
	ldr	r6, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	add	r5, r7, r6	@ pPPS, tmp164, <variable>.PPS
	beq	.L3547	@,
.L3518:
	ldr	r2, [r5, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	sl, #20672	@ tmp177,
	movw	r8, #20728	@ tmp173,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ prephitmp.8353, <variable>.CurrSlice.slice_type
	movw	r9, #20732	@ tmp175,
	str	r2, [r4, r8]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8353,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	str	r2, [r4, r9]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L3548	@,
.L3519:
	cmp	r3, #2	@ prephitmp.8353,
	mov	r0, r4	@, pH264Ctx
	movweq	r3, #20672	@ tmp207,
	movweq	r2, #20728	@ tmp205,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8353, <variable>.CurrSlice.slice_type
	moveq	r1, #32	@ tmp206,
	streq	r1, [r4, r2]	@ tmp206, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8353,
	movwne	r3, #20732	@ tmp208,
	movne	r2, #32	@ tmp209,
	strne	r2, [r4, r3]	@ tmp209, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bl	ref_pic_list_reordering	@
	cmp	r0, #0	@,
	bne	.L3549	@,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r8, #0	@ <variable>.weighted_pred_flag,
	beq	.L3530	@,
	movw	r1, #20672	@ tmp212,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #0	@ <variable>.CurrSlice.slice_type,
	moveq	r3, #1	@ prephitmp.8328,
	beq	.L3533	@
.L3530:
	ldr	lr, [r5, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	lr, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3550	@,
.L3532:
	mov	r3, #0	@ prephitmp.8328,
.L3533:
	movw	r8, #20679	@ tmp217,
	mov	r2, r3	@, prephitmp.8328
	strb	r3, [r4, r8]	@ prephitmp.8328, <variable>.CurrSlice.apply_weights_flag
	mov	r0, #19	@,
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	dprint_vfmw	@
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.apply_weights_flag, <variable>.CurrSlice.apply_weights_flag
	movw	r1, #20740	@ tmp222,
	mov	r2, #20736	@ tmp220,
	cmp	r0, #0	@ <variable>.CurrSlice.apply_weights_flag,
	mov	r3, #0	@ tmp221,
	str	r3, [r4, r1]	@ tmp221, <variable>.CurrSlice.chroma_log2_weight_denom
	str	r3, [r4, r2]	@ tmp221, <variable>.CurrSlice.luma_log2_weight_denom
	bne	.L3551	@,
.L3534:
	movw	ip, #20704	@ tmp227,
	ldr	lr, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L3552	@,
.L3535:
	movw	r8, #22280	@ tmp230,
	mov	r3, #0	@ tmp231,
	str	r3, [r4, r8]	@ tmp231, <variable>.CurrSlice.cabac_init_idc
	ldrb	r2, [r7, r6]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r2, #0	@ <variable>.entropy_coding_mode_flag,
	beq	.L3536	@,
	movw	r0, #20672	@ tmp233,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	bls	.L3553	@,
.L3536:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC371	@,
	movt	r1, #:upper16:.LC371	@,
	movw	r6, #22288	@ tmp242,
	bl	se_v	@
	movw	r7, #22292	@ tmp244,
	movw	r8, #22296	@ tmp246,
	movw	r3, #22284	@ tmp241,
	mov	r1, #0	@ tmp243,
	str	r1, [r4, r8]	@ tmp243, <variable>.CurrSlice.slice_beta_offset_div2
	str	r1, [r4, r6]	@ tmp243, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r1, [r4, r7]	@ tmp243, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r0, [r4, r3]	@, <variable>.CurrSlice.slice_qp_delta
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r2, #0	@ <variable>.deblocking_filter_control_present_flag,
	bne	.L3554	@,
.L3538:
	mov	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3554:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC372	@,
	movt	r1, #:upper16:.LC372	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.40669,
	str	r0, [r4, r6]	@ D.40669, <variable>.CurrSlice.disable_deblocking_filter_idc
	bhi	.L3539	@,
	movw	r5, #55460	@ tmp251,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3539	@,
	cmp	r0, #1	@ D.40669,
	beq	.L3538	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC374	@,
	movt	r1, #:upper16:.LC374	@,
	bl	se_v	@
	add	ip, r0, #6	@ tmp256, D.40677,
	str	r0, [r4, r7]	@ D.40677, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	cmp	ip, #12	@ tmp256,
	bhi	.L3541	@,
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3541	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC376	@,
	movt	r1, #:upper16:.LC376	@,
	bl	se_v	@
	add	r2, r0, #6	@ tmp262, D.40685,
	str	r0, [r4, r8]	@ D.40685, <variable>.CurrSlice.slice_beta_offset_div2
	cmp	r2, #12	@ tmp262,
	bhi	.L3543	@,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3538	@,
.L3543:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC377	@,
	movt	r1, #:upper16:.LC377	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3551:
	mov	r0, r4	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	beq	.L3534	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC367	@,
	movt	r1, #:upper16:.LC367	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3552:
	mov	r0, r4	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L3535	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3550:
	movw	ip, #20672	@ tmp215,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3532	@,
	mov	r3, #1	@ prephitmp.8328,
	b	.L3533	@
.L3547:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC359	@,
	movt	r1, #:upper16:.LC359	@,
	movw	r9, #20678	@ tmp171,
	bl	u_1	@
	strb	r0, [r4, r9]	@, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	b	.L3518	@
.L3548:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC360	@,
	movt	r1, #:upper16:.LC360	@,
	bl	u_1	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r8]	@ prephitmp.8330, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3555	@,
.L3521:
	movw	ip, #20673	@ tmp187,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3522	@,
	cmp	r3, #15	@ prephitmp.8330,
	bhi	.L3523	@,
	movw	lr, #20732	@ tmp189,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3524	@,
	movw	ip, #20672	@ tmp191,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3524	@,
.L3523:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC363	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3524:
	movw	lr, #55460	@ tmp193,
	ldr	r3, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3523	@,
.L3545:
	movw	r3, #20672	@ tmp203,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8353, <variable>.CurrSlice.slice_type
	b	.L3519	@
.L3514:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC295	@,
	movt	r1, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3553:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC369	@,
	movt	r1, #:upper16:.LC369	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.40659,
	str	r0, [r4, r8]	@ D.40659, <variable>.CurrSlice.cabac_init_idc
	bhi	.L3537	@,
	movw	ip, #55460	@ tmp237,
	ldr	lr, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3536	@,
.L3537:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC370	@,
	movt	r1, #:upper16:.LC370	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3522:
	cmp	r3, #31	@ prephitmp.8330,
	bhi	.L3525	@,
	movw	ip, #20732	@ tmp197,
	ldr	r0, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r0, #31	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3526	@,
	movw	lr, #20672	@ tmp199,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3526	@,
.L3525:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC364	@,
	movt	r1, #:upper16:.LC364	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3526:
	movw	ip, #55460	@ tmp201,
	ldr	r0, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3545	@,
	b	.L3525	@
.L3555:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC361	@,
	movt	r1, #:upper16:.LC361	@,
	bl	ue_v	@
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	mov	r3, r0	@ prephitmp.8330,
	str	r0, [r4, r8]	@ prephitmp.8330, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3521	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC362	@,
	movt	r1, #:upper16:.LC362	@,
	bl	ue_v	@
	ldr	r3, [r4, r8]	@ prephitmp.8330, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, r9]	@, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	b	.L3521	@
.L3541:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC375	@,
	movt	r1, #:upper16:.LC375	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3539:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3546:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC296	@,
	movt	r1, #:upper16:.LC296	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3549:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC365	@,
	movt	r1, #:upper16:.LC365	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40579,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	ProcessSliceHeaderSecondPart, .-ProcessSliceHeaderSecondPart
	.align	2
	.global	H264_DecSlice
	.type	H264_DecSlice, %function
H264_DecSlice:
	.fnstart
.LFB1466:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #55464	@ tmp164,
	movw	r1, #:lower16:.LC378	@,
	ldr	lr, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movt	r1, #:upper16:.LC378	@,
	mov	r0, #22	@,
	sub	r2, lr, #1	@, <variable>.TotalNal,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20675	@ tmp167,
	movw	r3, #20704	@ tmp171,
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3560	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@,
	bne	.L3560	@,
	movw	r3, #55444	@ tmp179,
	ldr	r3, [r4, r3]	@ temp.8407, <variable>.SliceParaNum
	cmp	r3, #0	@ temp.8407,
	beq	.L3562	@,
	add	ip, r4, #53248	@ tmp186, pH264Ctx,
	mov	r5, r3, asl #2	@ D.51766, temp.8407,
	add	r2, ip, #136	@ tmp186, tmp186,
	sub	r3, r5, #4	@ tmp251, D.51766,
	ubfx	ip, r3, #2, #1	@ tmp252, tmp251,,
	ldr	r3, [r2, #0]	@ D.40855, <variable>.pSliceNal
	ldr	r1, [r3, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r1, #0	@ Addr0,
	ldrne	r6, [r3, #12]	@ Size0, <variable>.bitstream_length
	beq	.L3639	@,
.L3612:
	ldr	lr, [r3, #36]	@ Addr1, <variable>.streamBuffer
	mov	r2, #4	@ ivtmp.8387,
	cmp	lr, #0	@ Addr1,
	ldrne	r0, [r3, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, lr	@ Size1, Addr1
	cmp	lr, #0	@ Addr1,
	add	r3, r6, r0	@ Size, Size0, Size1
	movne	r1, lr	@ PrevNalAddr, Addr1
	movne	r6, r0	@ PrevNalSize, Size1
	cmp	r2, r5	@ ivtmp.8387, D.51766
	beq	.L3562	@,
	cmp	ip, #0	@ tmp252,
	beq	.L3574	@,
	add	lr, r4, r2	@ tmp281, pH264Ctx, ivtmp.8387
	add	ip, lr, #53248	@ tmp283, tmp281,
	add	r0, ip, #136	@ tmp283, tmp283,
	ldr	ip, [r0, #0]	@ D.40855, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r7, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	moveq	ip, r0	@ Size1, Addr1
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.40875, Size0, Size
	addeq	r3, r3, ip	@ Size, D.40875, Size1
	bne	.L3640	@,
.L3622:
	cmp	r0, #0	@ Addr1,
	moveq	r1, lr	@ PrevNalAddr, Addr0
	moveq	r6, r7	@ PrevNalSize, Size0
	movne	r1, r0	@ PrevNalAddr, Addr1
	movne	r6, ip	@ PrevNalSize, Size1
	b	.L3635	@
.L3606:
	rsb	r7, r7, ip	@ tmp302, PrevNalSize, Addr0
	rsb	lr, lr, r7	@ tmp303, PrevNalAddr, tmp302
	add	lr, lr, r6	@ Size0.8389, tmp303, Size0
.L3633:
	add	r3, r0, r3	@ Size.8395, Size1, Size
	add	r3, r3, lr	@ Size, Size.8395, Size0.8389
.L3631:
	cmp	r1, #0	@ Addr1,
	moveq	r1, ip	@ PrevNalAddr, Addr0
	movne	r6, r0	@ PrevNalSize, Size1
.L3635:
	add	r2, r2, #4	@ ivtmp.8387, tmp253,
	cmp	r2, r5	@ ivtmp.8387, D.51766
	beq	.L3562	@,
.L3574:
	add	lr, r4, r2	@ tmp256, pH264Ctx, ivtmp.8387
	add	r0, lr, #53248	@ tmp257, tmp256,
	ldr	ip, [r0, #136]	@ D.40855, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r7, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	moveq	ip, r0	@ Size1, Addr1
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.40875, Size0, Size
	addeq	r3, r3, ip	@ Size, D.40875, Size1
	beq	.L3571	@,
	cmp	lr, r1	@ Addr0, PrevNalAddr
	rsbhi	r1, r1, lr	@ tmp189, PrevNalAddr, Addr0
	rsbhi	r6, r6, r1	@ tmp190, PrevNalSize, tmp189
	add	r1, ip, r3	@ Size.8395, Size1, Size
	addhi	r6, r6, r7	@ Size0.8389, tmp190, Size0
	movls	r6, r7	@ Size0.8389, Size0
	add	r3, r1, r6	@ Size, Size.8395, Size0.8389
.L3571:
	cmp	r0, #0	@ Addr1,
	add	r2, r2, #4	@ tmp253, ivtmp.8387,
	movne	lr, r0	@ PrevNalAddr, Addr1
	add	r0, r4, r2	@ tmp267, pH264Ctx, tmp253
	movne	r7, ip	@ PrevNalSize, Size1
	add	ip, r0, #53248	@ tmp268, tmp267,
	ldr	r0, [ip, #136]	@ D.40855, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r6, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r6, ip	@ Size0, Addr0
.L3627:
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r1, #0	@ Addr1,
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, r1	@ Size1, Addr1
	cmp	lr, #0	@ PrevNalAddr,
	addeq	r3, r6, r3	@ D.40875, Size0, Size
	addeq	r3, r3, r0	@ Size, D.40875, Size1
	beq	.L3631	@,
	cmp	ip, lr	@ Addr0, PrevNalAddr
	bhi	.L3606	@,
	mov	lr, r6	@ Size0.8389, Size0
	b	.L3633	@
.L3562:
	movw	r2, #52780	@ tmp192,
	movw	ip, #52776	@ tmp193,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	r2, #1620	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	movw	r1, #55504	@ tmp191,
	str	r3, [r4, r1]	@ Size, <variable>.MaxBytesReceived
	mul	ip, lr, r0	@ TotalMbs, <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_height_in_mb
	cmp	ip, r2	@ TotalMbs, tmp196
	movgt	ip, ip, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3641	@,
.L3576:
	movw	r2, #55444	@ tmp202,
	mov	lr, #13568	@ tmp203,
	ldr	r2, [r4, r2]	@ D.40884, <variable>.SliceParaNum
	ldr	r1, [r4, lr]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r2, r1	@ D.40884, <variable>.MaxSliceNum
	bcs	.L3578	@,
	cmp	r3, ip	@ Size, MaxStreamThr
	bhi	.L3578	@,
	movw	r2, #20677	@ tmp215,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	cmp	r1, #0	@ <variable>.CurrSlice.new_pic_flag,
	bne	.L3642	@,
.L3581:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	subs	r2, r0, #0	@ ret.8398,
	bne	.L3643	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret.8399,
	bne	.L3644	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	movw	r3, #55500	@ tmp244,
	ldr	r2, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	movw	r1, #54004	@ tmp242,
	mov	r0, r5	@ D.40848, ret.8399
	mov	ip, #1	@ tmp243,
	str	ip, [r4, r1]	@ tmp243, <variable>.AllowStartDec
	add	r1, r2, ip	@ tmp247, <variable>.SliceNumInPic,
	str	r1, [r4, r3]	@ tmp247, <variable>.SliceNumInPic
.L3559:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L3641:
	add	r0, ip, ip, asl #1	@, tmp199, TotalMbs, TotalMbs,
	movw	lr, #32769	@ tmp201,
	mov	ip, r0, asl #8	@ tmp200, tmp199,
	cmp	ip, lr	@ tmp200, tmp201
	movgt	ip, ip, asr #1	@ MaxStreamThr, tmp200,
	movle	ip, #16384	@ MaxStreamThr,
	b	.L3576	@
.L3639:
	mov	r6, r1	@ Size0, Addr0
	b	.L3612	@
.L3640:
	cmp	lr, r1	@ Addr0, PrevNalAddr
	bls	.L3645	@,
	rsb	r6, r6, lr	@ tmp293, PrevNalSize, Addr0
	rsb	r1, r1, r6	@ tmp294, PrevNalAddr, tmp293
	add	r1, r1, r7	@ Size0.8389, tmp294, Size0
.L3624:
	add	r3, ip, r3	@ Size.8395, Size1, Size
	add	r3, r3, r1	@ Size, Size.8395, Size0.8389
	b	.L3622	@
.L3642:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	dprint_vfmw	@
	movw	ip, #20675	@ tmp218,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r0, #55500	@ tmp223,
	mov	ip, #0	@ tmp224,
	str	ip, [r4, r0]	@ tmp224, <variable>.SliceNumInPic
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	r3, #55484	@ tmp221,
	ldreq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	movweq	r3, #55496	@ tmp220,
	streq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.IDRPicOfCurrPic
	movw	r2, #52259	@ tmp229,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r3, #55484	@ tmp225,
	ldr	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	cmp	r1, #0	@ <variable>.CurrPic.structure,
	add	r1, r2, #1	@ tmp228, <variable>.TotalPicNum,
	str	r1, [r4, r3]	@ tmp228, <variable>.TotalPicNum
	movweq	r3, #55488	@ tmp231,
	movwne	r3, #55492	@ tmp235,
	ldr	r0, [r4, r3]	@ <variable>.TotalFieldNum,
	add	ip, r0, #1	@ tmp238, <variable>.TotalFieldNum,
	mov	r0, r4	@, pH264Ctx
	str	ip, [r4, r3]	@ tmp238,
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3646	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3581	@
.L3645:
	mov	r1, r7	@ Size0.8389, Size0
	b	.L3624	@
.L3560:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC379	@,
	movt	r1, #:upper16:.LC379	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp181,
	movt	ip, #:upper16:g_event_report	@ tmp181,
	ldr	r3, [ip, #0]	@ g_event_report.8393, g_event_report
	cmp	r3, #0	@ g_event_report.8393,
	beq	.L3636	@,
	sub	r2, fp, #28	@ tmp184,,
	movw	lr, #55520	@ tmp183,
	mvn	r1, #0	@ tmp182,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r1, [r2, #-8]!	@ tmp182,
	add	r1, r1, #101	@,,
	blx	r3	@ g_event_report.8393
.L3636:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.40848,
	b	.L3559	@
.L3578:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC380	@,
	movt	r1, #:upper16:.LC380	@,
	str	ip, [sp, #0]	@ MaxStreamThr,
	bl	dprint_vfmw	@
	movw	ip, #55444	@ tmp206,
	mov	r3, #13568	@ tmp207,
	ldr	r1, [r4, ip]	@ temp.8400, <variable>.SliceParaNum
	ldr	r2, [r4, r3]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r1, r2	@ temp.8400, <variable>.MaxSliceNum
	bcc	.L3580	@,
	movw	r0, #:lower16:g_event_report	@ tmp209,
	movt	r0, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r0, #0]	@ g_event_report.8403, g_event_report
	cmp	r3, #0	@ g_event_report.8403,
	beq	.L3580	@,
	movw	lr, #55520	@ tmp212,
	str	r1, [fp, #-36]	@ temp.8400, para
	str	r2, [fp, #-32]	@ <variable>.MaxSliceNum, para
	mov	r1, #108	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	sub	r2, fp, #36	@,,
	blx	r3	@ g_event_report.8403
.L3580:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC381	@,
	movt	r1, #:upper16:.LC381	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.40848,
	b	.L3559	@
.L3643:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC384	@,
	movt	r1, #:upper16:.LC384	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40848,
	b	.L3559	@
.L3644:
	movw	r1, #:lower16:.LC385	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC385	@,
	bl	dprint_vfmw	@
	b	.L3636	@
.L3646:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC383	@,
	movt	r1, #:upper16:.LC383	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40848,
	b	.L3559	@
	.fnend
	.size	H264_DecSlice, .-H264_DecSlice
	.align	2
	.global	SliceCheck
	.type	SliceCheck, %function
SliceCheck:
	.fnstart
.LFB1453:
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
	movw	r1, #:lower16:.LC386	@,
	movt	r1, #:upper16:.LC386	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r5, #55460	@ tmp140,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20724	@ tmp139,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.39948, <variable>.CurrSlice.first_mb_in_slice
	bne	.L3648	@,
	cmp	r0, #262144	@ D.39948,
	bcs	.L3656	@,
	movw	r1, #13560	@ tmp145,
	movw	r3, #13564	@ tmp144,
	ldr	r2, [r4, r1]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	lr, [r4, r3]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	mul	ip, r2, lr	@ tmp146, <variable>.CurWidthInMb, <variable>.CurHeightInMb
	sub	r1, ip, #1	@ tmp149, tmp146,
	cmp	r0, r1	@ D.39948, tmp149
	bls	.L3657	@,
.L3648:
	mvn	r0, #0	@ D.39952,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3656:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC387	@,
	movt	r1, #:upper16:.LC387	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39952,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3657:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC388	@,
	movt	r1, #:upper16:.LC388	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC389	@,
	movt	r1, #:upper16:.LC389	@,
	mov	r6, r0	@ SliceType,
	mov	r0, #19	@,
	mov	r2, r6	@, SliceType
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3648	@,
	cmp	r6, #9	@ SliceType,
	bls	.L3658	@,
.L3651:
	mov	r2, r6	@, SliceType
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC390	@,
	movt	r1, #:upper16:.LC390	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39952,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3658:
	mov	r2, #1	@ tmp155,
	mov	r3, r2, asl r6	@ tmp154, tmp155,
	ands	r1, r3, #660	@ tmp156, tmp154,
	movwne	r3, #20672	@ tmp160,
	movne	r2, #2	@ tmp161,
	strneb	r2, [r4, r3]	@ tmp161, <variable>.CurrSlice.slice_type
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #:lower16:297	@ tmp157,
	movt	r0, #:upper16:297	@ tmp157,
	and	r0, r3, r0	@ tmp157, tmp154, tmp157
	cmp	r0, #0	@ tmp157,
	movwne	r3, #20672	@ tmp163,
	movne	r0, r1	@ D.39952, tmp156
	strneb	r1, [r4, r3]	@ tmp156, <variable>.CurrSlice.slice_type
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	tst	r3, #66	@ tmp154,
	movwne	r3, #20672	@ tmp166,
	strneb	r2, [r4, r3]	@ tmp155, <variable>.CurrSlice.slice_type
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	b	.L3651	@
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	InquireSliceProperty
	.type	InquireSliceProperty, %function
InquireSliceProperty:
	.fnstart
.LFB1490:
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
	movw	r5, #55464	@ tmp144,
	ldr	lr, [r0, r5]	@ <variable>.TotalNal, <variable>.TotalNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ IsNewPic, IsNewPic
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	mov	r0, #22	@,
	sub	r2, lr, #1	@, <variable>.TotalNal,
	movw	r1, #:lower16:.LC378	@,
	movt	r1, #:upper16:.LC378	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp147,
	str	r0, [r5, #0]	@ tmp147,* IsSizeChanged
	movw	r2, #20675	@ tmp149,
	str	r0, [r6, #0]	@ tmp147,* IsNewPic
	movw	r3, #20704	@ tmp152,
	ldr	ip, [r4, #368]	@ D.43068, <variable>.pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	cmp	r0, #0	@,
	beq	.L3660	@,
.L3667:
	mvn	r0, #0	@ D.43074,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3660:
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3668	@,
	movw	lr, #20677	@ tmp155,
	movw	r3, #20684	@ tmp160,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	r2, #13584	@ tmp162,
	movw	ip, #13580	@ tmp158,
	movw	lr, #13564	@ tmp170,
	cmp	r1, #1	@ <variable>.CurrSlice.new_pic_flag,
	movne	r0, #0	@, tmp157
	moveq	r0, #1	@, tmp157
	str	r0, [r6, #0]	@ tmp157,* IsNewPic
	ldr	r1, [r4, r2]	@ <variable>.PPS, <variable>.PPS
	mov	r0, #2208	@ tmp164,
	ldr	r6, [r4, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r2, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [r4, lr]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	movw	lr, #13560	@ tmp179,
	mla	r3, r0, r6, r1	@ tmp165, tmp164, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	r1, #3992	@ tmp168,
	ldr	r0, [r4, lr]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	r6, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	lr, r1, r6, r2	@ pSPS, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [lr, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r6, [lr, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r2, r1, #2	@ tmp172, <variable>.frame_mbs_only_flag,
	ldr	r1, [lr, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mla	r2, r6, r2, r2	@ tmp175, <variable>.pic_height_in_map_units_minus1, tmp172, tmp172
	add	r1, r1, #1	@ tmp180, <variable>.pic_width_in_mbs_minus1,
	cmp	r0, r1	@ <variable>.CurWidthInMb, tmp180
	cmpeq	ip, r2	@, <variable>.CurHeightInMb, tmp175
	mov	r0, #0	@ D.43074,
	ldreq	r2, [r5, #0]	@ cstore.8444,* IsSizeChanged
	movne	r2, #1	@ cstore.8444,
	str	r2, [r5, #0]	@ cstore.8444,* IsSizeChanged
	movw	r2, #26616	@ tmp188,
	ldr	r1, [r4, r2]	@ <variable>.DPB.size, <variable>.DPB.size
	ldr	ip, [lr, #3972]	@ <variable>.dpb_size_plus1, <variable>.dpb_size_plus1
	add	r3, r1, #1	@ tmp189, <variable>.DPB.size,
	cmp	ip, r3	@ <variable>.dpb_size_plus1, tmp189
	movhi	r3, #1	@ tmp192,
	strhi	r3, [r5, #0]	@ tmp192,* IsSizeChanged
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3668:
	movw	r1, #:lower16:.LC379	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC379	@,
	bl	dprint_vfmw	@
	b	.L3667	@
	.fnend
	.size	InquireSliceProperty, .-InquireSliceProperty
	.align	2
	.global	H264_DecOneNal
	.type	H264_DecOneNal, %function
H264_DecOneNal:
	.fnstart
.LFB1484:
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
	ldr	r2, [r0, #368]	@ temp.8519, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ NalMode, NalMode
	ldr	r3, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r3, #0	@ <variable>.nal_segment,
	beq	.L3670	@,
	movw	ip, #55504	@ tmp177,
	mov	r3, #0	@ i,
	ldr	r1, [r0, ip]	@ prephitmp.8534, <variable>.MaxBytesReceived
.L3671:
	rsb	r7, r3, r3, asl #3	@, tmp181, i, i,
	add	r3, r3, #1	@ i, i,
	add	r6, r2, r7, asl #2	@, tmp183, temp.8519, tmp181,
	ldr	r5, [r6, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r5	@ prephitmp.8534, prephitmp.8534, <variable>.bitstream_length
	str	r1, [r4, ip]	@ prephitmp.8534, <variable>.MaxBytesReceived
	ldr	r0, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r0, r3	@ <variable>.nal_segment, i
	bhi	.L3671	@,
.L3670:
	add	lr, r4, #13504	@ D.42743, pH264Ctx,
	mov	sl, #0	@ tmp188,
	add	r5, lr, #24	@ D.42743, D.42743,
	strb	sl, [r2, #0]	@ tmp188, <variable>.nal_used_segment
	mov	r1, #32	@,
	movw	r7, #55464	@ tmp206,
	mov	r0, r5	@, D.42743
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	and	r1, r0, #31	@ tmp193, nal_header,
	strb	r1, [r3, #2]	@ tmp193, <variable>.nal_unit_type
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ubfx	ip, r0, #5, #2	@ tmp197, nal_header,,
	ubfx	r2, r0, #7, #1	@ tmp200, nal_header,,
	mov	r6, r0	@ nal_header,
	movw	r1, #:lower16:.LC391	@,
	mov	r0, #22	@,
	str	ip, [r3, #76]	@ tmp197, <variable>.nal_ref_idc
	movt	r1, #:upper16:.LC391	@,
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [ip, #80]	@ tmp200, <variable>.forbidden_bit
	ldr	ip, [r4, #368]	@ temp.8487, <variable>.pCurrNal
	ldr	r3, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, r3, #32	@ tmp202, <variable>.nal_bitoffset,
	str	r2, [ip, #64]	@ tmp202, <variable>.nal_bitoffset
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r3, #55460	@ tmp203,
	str	sl, [r4, r3]	@ tmp188, <variable>.SeErrFlg
	ldr	r2, [r4, r7]	@, <variable>.TotalNal
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@, <variable>.nal_unit_type
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8472, <variable>.TotalNal
	movw	r2, #371	@ tmp211,
	cmp	r3, r2	@ prephitmp.8472, tmp211
	beq	.L3710	@,
.L3672:
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	ip, #55464	@ tmp214,
	add	r1, r3, #1	@ tmp215, prephitmp.8472,
	str	r1, [r4, ip]	@ tmp215, <variable>.TotalNal
	ldrb	r2, [r2, #2]	@ zero_extendqisi2	@ temp.8490, <variable>.nal_unit_type
	sub	r0, r2, #1	@ tmp217, temp.8490,
	cmp	r0, #29	@ tmp217,
	ldrls	pc, [pc, r0, asl #2]	@ tmp217
	b	.L3673	@
.L3685:
	.word	.L3674
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3674
	.word	.L3675
	.word	.L3676
	.word	.L3677
	.word	.L3678
	.word	.L3679
	.word	.L3680
	.word	.L3681
	.word	.L3682
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3683
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3673
	.word	.L3684
.L3684:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC405	@,
	mov	r2, #30	@,
	movt	r1, #:upper16:.LC405	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ NalMode,
	beq	.L3711	@,
.L3694:
	mov	r1, #32	@,
	mov	r0, r5	@, D.42743
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.42829,
	mov	r0, r5	@, D.42743
	bl	BsGet	@
	ldr	r3, .L3715	@ tmp304,
	and	r5, r6, #65280	@ tmp294, D.42829,
	mov	r1, r6, asl #24	@ tmp292, D.42829,
	orr	r1, r1, r6, lsr #24	@, tmp293, tmp292, D.42829,
	and	r6, r6, #16711680	@ tmp290, D.42829,
	orr	r1, r1, r5, asl #8	@, D.42837, tmp293, tmp294,
	orr	r6, r1, r6, lsr #8	@, tmp308, D.42837, tmp290,
	and	ip, r0, #65280	@ tmp300, D.42830,
	mov	r2, r0, asl #24	@ tmp298, D.42830,
	orr	r2, r2, r0, lsr #24	@, tmp299, tmp298, D.42830,
	and	r0, r0, #16711680	@ tmp296, D.42830,
	orr	ip, r2, ip, asl #8	@, D.42845, tmp299, tmp300,
	ldmib	r3, {r2, r3}	@ phole ldm
	orr	r0, ip, r0, lsr #8	@, tmp302, D.42845, tmp296,
	cmp	r0, r3	@ tmp302, tmp306
	cmpeq	r6, r2	@, tmp308, tmp312
	bne	.L3689	@,
	movw	r5, #:lower16:g_event_report	@ tmp333,
	movt	r5, #:upper16:g_event_report	@ tmp333,
	ldr	r3, [r5, #0]	@ g_event_report.8524, g_event_report
	cmp	r3, #0	@ g_event_report.8524,
	beq	.L3695	@,
	movw	lr, #55520	@ tmp318,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8524
.L3695:
	mov	r6, #0	@ tmp320,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp320, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3712	@,
.L3689:
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3673:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC406	@,
	mov	r3, r6	@, nal_header
	movt	r1, #:upper16:.LC406	@,
	bl	dprint_vfmw	@
	cmp	r6, #256	@ nal_header,
	movweq	r5, #:lower16:g_event_report	@ tmp334,
	movteq	r5, #:upper16:g_event_report	@ tmp334,
	beq	.L3696	@,
	movw	r5, #:lower16:g_event_report	@ tmp334,
	movt	r5, #:upper16:g_event_report	@ tmp334,
	ldr	r3, [r5, #0]	@ g_event_report.8530, g_event_report
	cmp	r3, #0	@ g_event_report.8530,
	beq	.L3696	@,
	movw	r2, #55520	@ tmp325,
	mov	r1, #102	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8530
.L3696:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #0]	@ g_event_report.8532, g_event_report
	cmp	r3, #0	@ g_event_report.8532,
	beq	.L3689	@,
.L3705:
	movw	lr, #55520	@ tmp328,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8532
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3674:
	movw	lr, #55476	@ tmp219,
	mov	r0, #22	@,
	ldr	r3, [r4, lr]	@, <variable>.TotalSlice
	movw	r1, #:lower16:.LC393	@,
	movt	r1, #:upper16:.LC393	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20675	@ tmp221,
	movw	r3, #20704	@ tmp225,
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r5, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r5, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r5, r0, #0	@ ret,
	bne	.L3713	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3689	@,
	movw	r3, #:lower16:g_event_report	@ tmp230,
	movt	r3, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r3, #0]	@ g_event_report.8496, g_event_report
	cmp	r3, #0	@ g_event_report.8496,
	movne	r2, r5	@, ret
	bne	.L3702	@,
.L3703:
	mvn	r0, #0	@ D.42771,
	b	.L3688	@
.L3675:
	mov	r2, #6	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC397	@,
	movt	r1, #:upper16:.LC397	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret.8510,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret.8510,
	beq	.L3689	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC398	@,
	movt	r1, #:upper16:.LC398	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp262,
	movt	r0, #:upper16:g_event_report	@ tmp262,
	ldr	r3, [r0, #0]	@ g_event_report.8511, g_event_report
	cmp	r3, #0	@ g_event_report.8511,
	bne	.L3705	@,
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3676:
	movw	r5, #55468	@ tmp247,
	mov	r2, #7	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalSPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC395	@,
	movt	r1, #:upper16:.LC395	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r6, r0	@ ret.8504,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8504,
	bne	.L3714	@,
.L3691:
	ldr	r2, [r4, r5]	@ <variable>.TotalSPS,
	mov	r0, r6	@ D.42771, ret.8504
	add	r1, r2, #1	@ tmp259, <variable>.TotalSPS,
	str	r1, [r4, r5]	@ tmp259,
.L3688:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L3677:
	movw	r5, #55472	@ tmp233,
	mov	r2, #8	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalPPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC394	@,
	movt	r1, #:upper16:.LC394	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r6, r0	@ ret.8498,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8498,
	beq	.L3691	@,
	movw	r5, #:lower16:g_event_report	@ tmp236,
	movt	r5, #:upper16:g_event_report	@ tmp236,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8499, g_event_report
	cmp	r3, #0	@ g_event_report.8499,
	beq	.L3703	@,
.L3707:
	sub	r2, fp, #36	@ tmp253,,
	movw	r7, #55520	@ tmp252,
	mvn	r6, #0	@ tmp251,
	mov	r1, #100	@,
	str	r6, [r2, #-4]!	@ tmp251,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8505
	ldr	r3, [r5, #0]	@ g_event_report.8507, g_event_report
	cmp	r3, #0	@ g_event_report.8507,
	beq	.L3703	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8507
	mov	r0, r6	@ D.42771, tmp251
	b	.L3688	@
.L3678:
	mov	r2, #9	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC399	@,
	movt	r1, #:upper16:.LC399	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3679:
	mov	r2, #10	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC400	@,
	movt	r1, #:upper16:.LC400	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3680:
	mov	r2, #11	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC402	@,
	movt	r1, #:upper16:.LC402	@,
	bl	dprint_vfmw	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.42743
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.42810,
	mov	r0, r5	@, D.42743
	bl	BsGet	@
	movw	ip, #:lower16:1128615492	@ tmp270,
	movw	r3, #:lower16:1213419593	@ tmp273,
	movt	ip, #:upper16:1128615492	@ tmp270,
	movt	r3, #:upper16:1213419593	@ tmp273,
	cmp	r0, ip	@, tmp270
	cmpeq	r6, r3	@, D.42810, tmp273
	bne	.L3704	@,
	movw	r5, #:lower16:g_event_report	@ tmp331,
	movt	r5, #:upper16:g_event_report	@ tmp331,
	movw	lr, #13556	@ tmp278,
	mov	r6, #1	@ tmp279,
	strb	r6, [r4, lr]	@ tmp279, <variable>.IsStreamEndFlag
	ldr	r3, [r5, #0]	@ g_event_report.8513, g_event_report
	cmp	r3, #0	@ g_event_report.8513,
	beq	.L3693	@,
	movw	r2, #55520	@ tmp282,
	mov	r1, #112	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8513
.L3693:
	mov	r6, #0	@ tmp284,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp284, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3704	@,
	ldr	r3, [r5, #0]	@ g_event_report.8516, g_event_report
	cmp	r3, r6	@ g_event_report.8516,
	beq	.L3703	@,
	movw	r1, #55520	@ tmp286,
	mov	r2, r6	@, tmp284
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.8516
	mvn	r0, #0	@ D.42771,
	b	.L3688	@
.L3681:
	mov	r2, #12	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC401	@,
	movt	r1, #:upper16:.LC401	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3682:
	mov	r2, #13	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC403	@,
	movt	r1, #:upper16:.LC403	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3683:
	movw	r1, #:lower16:.LC404	@,
	mov	r2, #19	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC404	@,
	bl	dprint_vfmw	@
.L3704:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42771,
	b	.L3688	@
.L3710:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC392	@,
	movt	r1, #:upper16:.LC392	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8472, <variable>.TotalNal
	b	.L3672	@
.L3712:
	ldr	r3, [r5, #0]	@ g_event_report.8527, g_event_report
	cmp	r3, r6	@ g_event_report.8527,
	beq	.L3703	@,
	mov	r2, r6	@, tmp320
.L3702:
	movw	ip, #55520	@ tmp322,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8527
	mvn	r0, #0	@ D.42771,
	b	.L3688	@
.L3711:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3694	@
.L3713:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	movw	r0, #:lower16:g_event_report	@ tmp228,
	movt	r0, #:upper16:g_event_report	@ tmp228,
	ldr	r3, [r0, #0]	@ g_event_report.793, g_event_report
	cmp	r3, #0	@ g_event_report.793,
	beq	.L3703	@,
	movw	ip, #55520	@ tmp229,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.793
	mvn	r0, #0	@ D.42771,
	b	.L3688	@
.L3714:
	movw	r5, #:lower16:g_event_report	@ tmp250,
	movt	r5, #:upper16:g_event_report	@ tmp250,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC396	@,
	movt	r1, #:upper16:.LC396	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8505, g_event_report
	cmp	r3, #0	@ g_event_report.8505,
	bne	.L3707	@,
	mvn	r0, #0	@ D.42771,
	b	.L3688	@
.L3716:
	.align	2
.L3715:
	.word	.LANCHOR2+432
	.fnend
	.size	H264_DecOneNal, .-H264_DecOneNal
	.align	2
	.global	H264DEC_DecodePacket
	.type	H264DEC_DecodePacket, %function
H264DEC_DecodePacket:
	.fnstart
.LFB1495:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r3, r1, #0	@ pPacket, pPacket
	mov	r5, #0	@ tmp149,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	str	r5, [fp, #-40]	@ tmp149, NewNum
	str	r5, [fp, #-36]	@ tmp149, ReadNum
	str	r5, [fp, #-32]	@ tmp149, RefNum
	beq	.L3740	@,
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r6, #54008	@ tmp167,
	ldr	r2, [r0, r6]	@ <variable>.HaveNalNotDecoded, <variable>.HaveNalNotDecoded
	ldr	ip, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #1	@ <variable>.HaveNalNotDecoded,
	mov	r2, ip, asl #16	@ tmp156, <variable>.s32DecMode,
	and	ip, r2, #196608	@ tmp158, tmp156,
	movw	r2, #55508	@ tmp154,
	str	ip, [r0, r2]	@ tmp158, <variable>.advanced_cfg
	movw	r2, #55512	@ tmp159,
	ldr	ip, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	str	ip, [r0, r2]	@ <variable>.s32RefErrThr, <variable>.ref_error_thr
	movw	ip, #55460	@ tmp165,
	ldr	r2, [r3, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	movw	r3, #55516	@ tmp162,
	str	r5, [r0, ip]	@ tmp149, <variable>.SeErrFlg
	str	r2, [r0, r3]	@ <variable>.s32OutErrThr, <variable>.out_error_thr
	beq	.L3720	@,
	bl	ReceivePacket	@
	str	r5, [r4, r6]	@ tmp149, <variable>.HaveNalNotDecoded
	cmp	r0, #0	@,
	ldreq	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	beq	.L3721	@,
.L3722:
	mov	r0, #0	@ D.43302,
.L3719:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L3720:
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r0, #0	@ <variable>.pCurrNal,
	strne	r5, [r4, r6]	@ tmp149, <variable>.HaveNalNotDecoded
	beq	.L3741	@,
.L3721:
	mov	r6, #0	@ tmp173,
	add	r5, r4, #13504	@ D.43324, pH264Ctx,
	str	r6, [r0, #64]	@ tmp173, <variable>.nal_bitoffset
	add	r5, r5, #24	@ D.43324, D.43324,
	ldr	lr, [r4, #368]	@ temp.8562, <variable>.pCurrNal
	mov	r0, r5	@, D.43324
	ldr	r2, [lr, #12]	@, <variable>.bitstream_length
	ldr	r1, [lr, #8]	@, <variable>.streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.43324
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	uxtb	ip, r0	@ nal_header,
	and	r2, ip, #31	@ nal_unit_type, nal_header,
	strb	r2, [r3, #2]	@ nal_unit_type, <variable>.nal_unit_type
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r2, #1	@ nal_unit_type,
	cmpne	r2, #5	@, nal_unit_type,
	ubfx	r0, ip, #5, #2	@ tmp182, nal_header,,
	str	r0, [r1, #76]	@ tmp182, <variable>.nal_ref_idc
	bne	.L3725	@,
	mov	r0, r4	@, pH264Ctx
	sub	r1, fp, #44	@,,
	sub	r2, fp, #48	@,,
	bl	InquireSliceProperty	@
	cmp	r0, r6	@,
	bne	.L3726	@,
	ldr	r1, [fp, #-44]	@ IsNewPic, IsNewPic
	movw	ip, #55536	@ tmp192,
	ldr	r0, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r1, #1	@ IsNewPic,
	addeq	r0, r0, #1	@, tmp198, <variable>.PicCounter
	str	r0, [r4, ip]	@ tmp198, <variable>.PicCounter
	beq	.L3742	@,
.L3727:
	ldr	r1, [fp, #-48]	@ IsSizeChanged, IsSizeChanged
	cmp	r1, #1	@ IsSizeChanged,
	bne	.L3725	@,
	movw	r6, #:lower16:g_event_report	@ tmp230,
	movt	r6, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r6, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3732	@,
	sub	r2, fp, #28	@ tmp236,,
	movw	ip, #55520	@ tmp234,
	str	r1, [r2, #-24]!	@ IsSizeChanged, para
	mov	r1, #115	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L3732:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.8573,
	bne	.L3743	@,
.L3733:
	movw	r6, #55520	@ tmp239,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L3744	@,
.L3725:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp256,
	bl	FindTrailZeros	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, r5	@, D.43324
	str	r6, [r2, #64]	@ tmp256, <variable>.nal_bitoffset
	ldr	ip, [r4, #368]	@ temp.8580, <variable>.pCurrNal
	ldr	r1, [ip, #8]	@, <variable>.streamBuffer
	ldr	r2, [ip, #12]	@, <variable>.bitstream_length
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp256
	bl	H264_DecOneNal	@
	cmp	r0, r6	@,
	beq	.L3722	@,
	movw	r1, #:lower16:.LC407	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC407	@,
	bl	dprint_vfmw	@
.L3739:
	mvn	r0, #0	@ D.43302,
	b	.L3719	@
.L3741:
	str	r0, [r4, r6]	@ <variable>.pCurrNal, <variable>.HaveNalNotDecoded
	b	.L3719	@
.L3742:
	movw	r1, #20673	@ tmp200,
	movw	r0, #55540	@ tmp202,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #55444	@ tmp211,
	ldr	lr, [r4, r0]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	addeq	lr, lr, #1	@ tmp205, <variable>.NewPicCounter,
	addne	lr, lr, #2	@ tmp209, <variable>.NewPicCounter,
	cmp	r2, #0	@ <variable>.SliceParaNum,
	str	lr, [r4, r0]	@ tmp209, <variable>.NewPicCounter
	beq	.L3727	@,
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp214,
	mov	r2, #12	@,
	mov	r0, r5	@, D.43324
	ldr	r1, .L3745	@,
	str	r3, [lr, #64]	@ tmp214, <variable>.nal_bitoffset
	bl	BsInit	@
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecOneNal	@
	movw	r2, #20673	@ tmp217,
	movw	ip, #55540	@ tmp219,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r0, [r4, ip]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	movw	r3, #54008	@ tmp227,
	cmp	r1, #1	@ <variable>.CurrSlice.field_pic_flag,
	mov	r2, #1	@ tmp228,
	subeq	r0, r0, #1	@ tmp222, <variable>.NewPicCounter,
	subne	r0, r0, #2	@ tmp226, <variable>.NewPicCounter,
	str	r2, [r4, r3]	@ tmp228, <variable>.HaveNalNotDecoded
	str	r0, [r4, ip]	@ tmp226, <variable>.NewPicCounter
	mvn	r0, #1	@ D.43302,
	b	.L3719	@
.L3744:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	sub	r3, fp, #40	@,,
	sub	r1, fp, #32	@,,
	sub	r2, fp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #604]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3725	@,
	ldr	lr, [fp, #-36]	@ ReadNum, ReadNum
	ldr	r1, [fp, #-40]	@ NewNum, NewNum
	add	r2, r1, lr	@ tmp248, NewNum, ReadNum
	cmp	r2, #0	@ tmp248,
	ble	.L3725	@,
	movw	ip, #54008	@ tmp251,
	mvn	r0, #1	@ D.43302,
	str	r3, [r4, ip]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.HaveNalNotDecoded
	b	.L3719	@
.L3743:
	movw	r1, #:lower16:.LC76	@,
	movw	r2, #11436	@,
	movt	r1, #:upper16:.LC76	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L3733	@
.L3726:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #:lower16:g_event_report	@ tmp253,
	movt	r3, #:upper16:g_event_report	@ tmp253,
	ldr	r3, [r3, #0]	@ g_event_report.8577, g_event_report
	cmp	r3, #0	@ g_event_report.8577,
	beq	.L3739	@,
	movw	lr, #55520	@ tmp254,
	mov	r2, r6	@, tmp173
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.8577
	mvn	r0, #0	@ D.43302,
	b	.L3719	@
.L3740:
	mov	r0, r3	@, pPacket
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #11346	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43302,
	b	.L3719	@
.L3746:
	.align	2
.L3745:
	.word	.LANCHOR2+432
	.fnend
	.size	H264DEC_DecodePacket, .-H264DEC_DecodePacket
	.global	g_NalTypeEOPIC
	.global	g_AspecRatioIdc
	.global	CalcZeroNum
	.global	g_ZZ_SCAN
	.global	g_ZZ_SCAN8
	.global	quant_intra_default
	.global	quant_inter_default
	.global	quant8_intra_default
	.global	quant8_inter_default
	.global	quant_org
	.global	quant8_org
	.global	TmpBuf
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	SarTable.41626, %object
	.size	SarTable.41626, 136
SarTable.41626:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	1
	.type	__func__.43173, %object
	.size	__func__.43173, 13
__func__.43173:
	.ascii	"H264DEC_Init\000"
	.space	3
	.type	__func__.39096, %object
	.size	__func__.39096, 8
__func__.39096:
	.ascii	"InitPic\000"
	.type	g_ZZ_SCAN, %object
	.size	g_ZZ_SCAN, 16
g_ZZ_SCAN:
	.byte	0
	.byte	1
	.byte	4
	.byte	8
	.byte	5
	.byte	2
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	13
	.byte	10
	.byte	7
	.byte	11
	.byte	14
	.byte	15
	.type	g_ZZ_SCAN8, %object
	.size	g_ZZ_SCAN8, 64
g_ZZ_SCAN8:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	quant_org, %object
	.size	quant_org, 16
quant_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant8_org, %object
	.size	quant8_org, 64
quant8_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant_intra_default, %object
	.size	quant_intra_default, 16
quant_intra_default:
	.word	471076102
	.word	538711053
	.word	622861332
	.word	707076124
	.type	quant_inter_default, %object
	.size	quant_inter_default, 16
quant_inter_default:
	.word	403967498
	.word	454562830
	.word	505092116
	.word	572398360
	.type	quant8_intra_default, %object
	.size	quant8_intra_default, 64
quant8_intra_default:
	.word	269289990
	.word	454629138
	.word	303041290
	.word	488315159
	.word	387059725
	.word	522001177
	.word	420942352
	.word	555687195
	.word	454629138
	.word	606150429
	.word	488315159
	.word	639901983
	.word	522001177
	.word	673588257
	.word	555687195
	.word	707274276
	.type	quant8_inter_default, %object
	.size	quant8_inter_default, 256
quant8_inter_default:
	.word	286199049
	.word	404100371
	.word	319884557
	.word	421008917
	.word	353571087
	.word	454629398
	.word	370479889
	.word	471537944
	.word	404100371
	.word	505158425
	.word	421008917
	.word	538844187
	.word	454629398
	.word	555752988
	.word	471537944
	.word	589373470
	.space	192
	.type	g_NalTypeEOPIC, %object
	.size	g_NalTypeEOPIC, 12
g_NalTypeEOPIC:
	.byte	0
	.byte	0
	.byte	1
	.byte	30
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.type	g_AspecRatioIdc, %object
	.size	g_AspecRatioIdc, 112
g_AspecRatioIdc:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.type	CalcZeroNum, %object
	.size	CalcZeroNum, 256
CalcZeroNum:
	.byte	8
	.byte	7
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
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
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
	.byte	0
	.byte	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"dar=%d\012\000"
.LC1:
	.ascii	"NULL pointer: %s, L%d\012\000"
	.space	1
.LC2:
	.ascii	"/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiST"
	.ascii	"BLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/d"
	.ascii	"rivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/h2"
	.ascii	"64.c\000"
	.space	2
.LC3:
	.ascii	"pH264Ctx->pCurrNal->nal_bitoffset = %d; code_len_by"
	.ascii	"te = %d; bitstream_length = %d; pH264Ctx->pCurrNal-"
	.ascii	">nal_trail_zero_bit_num = %d\012\000"
.LC4:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d; byt"
	.ascii	"espos = %x\012\000"
	.space	1
.LC5:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d\012\000"
.LC6:
	.ascii	"nal_segment = %d is not expected value\012\000"
.LC7:
	.ascii	"new pic flag = %d\012\000"
	.space	1
.LC8:
	.ascii	"tmp slice  pps id = %d\012\000"
.LC9:
	.ascii	"PPSSPSCheckTmpId: pps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC10:
	.ascii	"PPSSPSCheckTmpId: seq_parameter_set_id out of range"
	.ascii	".\012\000"
	.space	2
.LC11:
	.ascii	"PPSSPSCheckTmpId: sps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC12:
	.ascii	"slice  pps id = %d\012\000"
.LC13:
	.ascii	"pps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC14:
	.ascii	"sps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC15:
	.ascii	"save pic yuv :  structure = %d;  idc = %d\012\000"
	.space	1
.LC16:
	.ascii	"structure = %d pH264Ctx->CurrPic.pic_width_in_mb = "
	.ascii	"%d pH264Ctx->CurrPic.pic_height_in_mb = %d\012\000"
	.space	1
.LC17:
	.ascii	"list[%d][%d]: frame_num=%d, poc=%d\012\000"
.LC18:
	.ascii	"L0: \000"
	.space	3
.LC19:
	.ascii	"%d \000"
.LC20:
	.ascii	"%dt \000"
	.space	3
.LC21:
	.ascii	"%db \000"
	.space	3
.LC22:
	.ascii	"\012\000"
	.space	2
.LC23:
	.ascii	"L1:\000"
.LC24:
	.ascii	"pH264Ctx->DPB.fs[%d]: frame_num=%d poc=%d is_refere"
	.ascii	"nce=%d\012\000"
	.space	1
.LC25:
	.ascii	"pH264Ctx->DPB.fs_ref[%d]: frame_num=%d poc=%d is_re"
	.ascii	"ference=%d\012\000"
	.space	1
.LC26:
	.ascii	"pH264Ctx->DPB.fs_ref[%d]: frame.poc=%d \012\000"
	.space	3
.LC27:
	.ascii	"line: %d pstLogicFs is null\012\000"
	.space	3
.LC28:
	.ascii	"framestore %d allocate apc %d\012\000"
	.space	1
.LC29:
	.ascii	"find APC, but logic_fs_id %d abnormal(ref=%d,plfs=%"
	.ascii	"p, pdfs=%p)\012\000"
.LC30:
	.ascii	"exg_pts: %lld <-> %lld\012\000"
.LC31:
	.ascii	"frame %d, state=%d, is already output\012\000"
	.space	1
.LC32:
	.ascii	"plfs(fs=%p, eFoState=%d) is null, logic_fs_id = %d\012"
	.ascii	"\000"
.LC33:
	.ascii	"not used frame: (%d,%d)\012\000"
	.space	3
.LC34:
	.ascii	"frame skip: is_used=%d,skip=%d\012\000"
.LC35:
	.ascii	"topfield skip\012\000"
	.space	1
.LC36:
	.ascii	"bottom field skip\012\000"
	.space	1
.LC37:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC38:
	.ascii	"H264 recycle image\012\000"
.LC39:
	.ascii	"%-50s%50d\012\000"
	.space	1
.LC40:
	.ascii	"DecPicTimingSEI but SPS is invalid.\012\000"
	.space	3
.LC41:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC42:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC43:
	.ascii	"pic_struct\000"
	.space	1
.LC44:
	.ascii	"\012 VFMW ** release streambuff=%08x   bitstream_le"
	.ascii	"ngth=%d\012\000"
	.space	3
.LC45:
	.ascii	"H264Dec destroy\012\000"
	.space	3
.LC46:
	.ascii	"clear curr slice.\012\000"
	.space	1
.LC47:
	.ascii	"\012\012END of the bit buffer, copy the first packe"
	.ascii	"t!\012\012\000"
	.space	2
.LC48:
	.ascii	"0:phy:0x%x, 1:phy:0x%x; len0:%d len1:%d\012\000"
	.space	3
.LC49:
	.ascii	"0:phy:0x%x, len0:%d\012\000"
	.space	3
.LC50:
	.ascii	"nal_ref_idc=%d, structure=%d, image_id=%d, pmv_idc="
	.ascii	"%d\012\000"
	.space	1
.LC51:
	.ascii	"logic frame id(=%d): get LogicFs error!\012\000"
	.space	3
.LC52:
	.ascii	"phy fs is null: pstDecodeFs = %p, pstDispOutFs = %p"
	.ascii	"\012\000"
	.space	3
.LC53:
	.ascii	"for P slice size of list equal 0.\012\000"
	.space	1
.LC54:
	.ascii	"for B slice size of two list all equal 0.\012\000"
	.space	1
.LC55:
	.ascii	"init list error.\012\000"
	.space	2
.LC56:
	.ascii	"L0: list after init.\012\000"
	.space	2
.LC57:
	.ascii	"L0: list after reorder.\012\000"
	.space	3
.LC58:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC59:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC60:
	.ascii	"stream frame packing type is %d! what can we do?\012"
	.ascii	"\000"
	.space	2
.LC61:
	.ascii	"clear all dec para\012\000"
.LC62:
	.ascii	"cann't find FrameStore\012\000"
.LC63:
	.ascii	"========== H264 FrameStore state(is_used, is_in_dpb"
	.ascii	", IsOutDPB) ========\012\000"
	.space	3
.LC64:
	.ascii	"%02d: %d %d %d\012\000"
.LC65:
	.ascii	"ReadImgNum = %d, NewImgNum = %d\012\000"
	.space	3
.LC66:
	.ascii	"FrameStore leak, ClearAll\012\000"
	.space	1
.LC67:
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC68:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC69:
	.ascii	"FS_ALLOC_ERR, ClearAll\012\000"
.LC70:
	.ascii	"Can not new logic fs! ClearAll\012\000"
.LC71:
	.ascii	"pH264Ctx is %#x, pFrameStore is %#x\012\000"
	.space	3
.LC72:
	.ascii	"line; %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC73:
	.ascii	"InsertVO err:%d, ClearAll\012\000"
	.space	1
.LC74:
	.ascii	"H264.c line %d: frame para err(ret=%d), recycle ima"
	.ascii	"ge self\012\000"
.LC75:
	.ascii	"line: %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC76:
	.ascii	"line %d: flush dpb return %d\012\000"
	.space	2
.LC77:
	.ascii	"\012 receive streambuff=0x%08x; phy_addr=0x%x; bits"
	.ascii	"tream_length=%d\012\000"
	.space	3
.LC78:
	.ascii	"nal_release_err\012\000"
	.space	3
.LC79:
	.ascii	"cann't find slot for current nal\012\000"
	.space	2
.LC80:
	.ascii	"receive a zero packet\012\000"
	.space	1
.LC81:
	.ascii	"----------------- Imode -> %d ------------------\012"
	.ascii	"\000"
	.space	2
.LC82:
	.ascii	"***** VDM start, TotalPicNum=%d, pH264Ctx->CurrPic."
	.ascii	"structure=%d.\012\000"
	.space	2
.LC83:
	.ascii	"line %d, get APC error, ret %d\012\000"
.LC84:
	.ascii	"InserFrmInDPB: cur pic struct = %d!\012\000"
	.space	3
.LC85:
	.ascii	"CurrPic.state is 'EMPTY'\012\000"
	.space	2
.LC86:
	.ascii	"StorePicInDPB return(%d) from L%d\012\000"
	.space	1
.LC87:
	.ascii	"line %d, return %d\012\000"
.LC88:
	.ascii	"directoutput mode\012\000"
	.space	1
.LC89:
	.ascii	"line: %d pImg is NULL!\012\000"
.LC90:
	.ascii	"line %d, REPORT_IFRAME_ERR\012\000"
.LC91:
	.ascii	"err(%d) > ref_thr(%d)\012\000"
	.space	1
.LC92:
	.ascii	"marking return %d\012\000"
	.space	1
.LC93:
	.ascii	"return value is unexpeced!\012\000"
.LC94:
	.ascii	"line %d: pH264Ctx->DPB.size = %d, ref %d, ltref %d\012"
	.ascii	"\000"
.LC95:
	.ascii	"store pic err, ret = %d\012\000"
	.space	3
.LC96:
	.ascii	"imode nal store pic err, ret = %d\012\000"
	.space	1
.LC97:
	.ascii	"imode nal flush dpb err, ret = %d\012\000"
	.space	1
.LC98:
	.ascii	"GAP found while DPB is empty!\012\000"
	.space	1
.LC99:
	.ascii	"frame num gap try to fill it \012\000"
	.space	1
.LC100:
	.ascii	"CurrFrameNum = %d  UnusedShortTermFrameNum = %d\012"
	.ascii	"\000"
	.space	3
.LC101:
	.ascii	"cann't allocate frame store when gap find\012\000"
	.space	1
.LC102:
	.ascii	"allocate frame store when gap find\012\000"
.LC103:
	.ascii	"line %d: store gap pic err, ret=%d\012\000"
.LC104:
	.ascii	"%s %d frame_store is null!!\012\000"
	.space	3
.LC105:
	.ascii	"line %d: init dpb return %d\012\000"
	.space	3
.LC106:
	.ascii	"resolution error, the CAP_LEVEL_USER_DEFINE_WITH_OP"
	.ascii	"TION channel with s32ReRangeEn == 0 can't support s"
	.ascii	"uch bitstream.\012\000"
	.space	2
.LC107:
	.ascii	"s32MaxRefFrameNum < pH264Ctx->DPB.size, the CAP_LEV"
	.ascii	"EL_USER_DEFINE_WITH_OPTION channel can't support su"
	.ascii	"ch bitstream.\012\000"
	.space	3
.LC108:
	.ascii	"mem arrange err, ClearAll\012\000"
	.space	1
.LC109:
	.ascii	"get back frm\012\000"
	.space	2
.LC110:
	.ascii	"line %d: frame gap(=%d) > dpb size(=%d)\012\000"
	.space	3
.LC111:
	.ascii	"frame num gap don't allowed but gap find\012\000"
	.space	2
.LC112:
	.ascii	"line %d: find gap in NON-I slice but here gap is no"
	.ascii	"t allowed\012\000"
	.space	2
.LC113:
	.ascii	"line %d: dec gap failed\012\000"
	.space	3
.LC114:
	.ascii	"line %d: alloc framestore failed\012\000"
	.space	2
.LC115:
	.ascii	"dec_pts: %lld\012\000"
	.space	1
.LC116:
	.ascii	"dec_usertag: %lld\012\000"
	.space	1
.LC117:
	.ascii	"%s %d NULL == pH264Ctx->CurrPic.frame_store!!\012\000"
	.space	1
.LC118:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC119:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC120:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC121:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC122:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC123:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC124:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC125:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC126:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC127:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC128:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC129:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC130:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC131:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC132:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC133:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC134:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC135:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC136:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC137:
	.ascii	"SEI nal dec payload type err\012\000"
	.space	2
.LC138:
	.ascii	"SEI nal dec payloadSize err\012\000"
	.space	3
.LC139:
	.ascii	"SEI_BUFFERING_PERIOD,offset = %d,payload_size = %d "
	.ascii	"\012\000"
	.space	3
.LC140:
	.ascii	"SEI_PIC_TIMING,offset = %d,payload_size = %d \012\000"
	.space	1
.LC141:
	.ascii	"SEI_PAN_SCAN_RECT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	2
.LC142:
	.ascii	"SEI_FILLER_PAYLOAD,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC143:
	.ascii	"SEI_USER_DATA_REGISTERED_ITU_T_T35, offset = %d, pa"
	.ascii	"yload_size = %d \012\000"
	.space	3
.LC144:
	.ascii	"SEI_USER_DATA_UNREGISTERED, offset = %d, payload_si"
	.ascii	"ze = %d \012\000"
	.space	3
.LC145:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC146:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC147:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.space	3
.LC148:
	.ascii	"cann't dec usrdata\012\000"
.LC149:
	.ascii	"SEI_RECOVERY_POINT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC150:
	.ascii	"SEI_DEC_REF_PIC_MARKING_REPETITION,offset = %d,payl"
	.ascii	"oad_size = %d \012\000"
	.space	1
.LC151:
	.ascii	"SEI_SPARE_PIC,offset = %d,payload_size = %d \012\000"
	.space	2
.LC152:
	.ascii	"SEI_SCENE_INFO,offset = %d,payload_size = %d \012\000"
	.space	1
.LC153:
	.ascii	"SEI_SUB_SEQ_INFO,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	3
.LC154:
	.ascii	"SEI_SUB_SEQ_LAYER_CHARACTERISTICS,offset = %d,paylo"
	.ascii	"ad_size = %d \012\000"
	.space	2
.LC155:
	.ascii	"SEI_SUB_SEQ_CHARACTERISTICS,offset = %d,payload_siz"
	.ascii	"e = %d \012\000"
.LC156:
	.ascii	"SEI_FULL_FRAME_FREEZE,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC157:
	.ascii	"SEI_FULL_FRAME_FREEZE_RELEASE,offset = %d,payload_s"
	.ascii	"ize = %d \012\000"
	.space	2
.LC158:
	.ascii	"SEI_FULL_FRAME_SNAPSHOT,offset = %d,payload_size = "
	.ascii	"%d \012\000"
.LC159:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_START,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC160:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_END,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC161:
	.ascii	"SEI_MOTION_CONSTRAINED_SLICE_GROUP_SET,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC162:
	.ascii	"SEI_FILM_GRAIN_CHARACTERISTICS,offset = %d,payload_"
	.ascii	"size = %d \012\000"
	.space	1
.LC163:
	.ascii	"SEI_DEBLOCKING_FILTER_DISPLAY_PREFERENCE,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC164:
	.ascii	"SEI_STEREO_VIDEO_INFO,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC165:
	.ascii	"too much usrdat, cann't dec SEI\012\000"
	.space	3
.LC166:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC167:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC168:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC169:
	.ascii	"VUI: sar_height\000"
.LC170:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC171:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC172:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC173:
	.ascii	"VUI: video_format\000"
	.space	2
.LC174:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC175:
	.ascii	"VUI: color_description_present_flag\000"
.LC176:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC177:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC178:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC179:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC180:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC181:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC182:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC183:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC184:
	.ascii	"VUI: time_scale\000"
.LC185:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC186:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC187:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC188:
	.ascii	"VUI: bit_rate_scale\000"
.LC189:
	.ascii	"VUI: cpb_size_scale\000"
.LC190:
	.ascii	"hrd->cpb_cnt_minus1 out of range\012\000"
	.space	2
.LC191:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC192:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC193:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC194:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC195:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC196:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC197:
	.ascii	"VUI: time_offset_length\000"
.LC198:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC199:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC200:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC201:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC202:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC203:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC204:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC205:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC206:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC207:
	.ascii	"VUI: num_reorder_frames\000"
.LC208:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC209:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC210:
	.ascii	"pSPS->chroma_format_idc out of range.\012\000"
	.space	1
.LC211:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC212:
	.ascii	"bit_depth_luma_minus8 not equal 0.\012\000"
.LC213:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC214:
	.ascii	"bit_depth_chroma_minus8 not equal 0.\012\000"
	.space	2
.LC215:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC216:
	.ascii	"qpprime_y_zero_trans_bypass_flag not equal 0.\012\000"
	.space	1
.LC217:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC218:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC219:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC220:
	.ascii	"pSPS->log2_max_frame_num_minus4 out of range.\012\000"
	.space	1
.LC221:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC222:
	.ascii	"pSPS->pic_order_cnt_type out of range.\012\000"
.LC223:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC224:
	.ascii	"pSPS->log2_max_pic_order_cnt_lsb_minus4 out of rang"
	.ascii	"e.\012\000"
	.space	1
.LC225:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC226:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC227:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC228:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC229:
	.ascii	"pSPS->num_ref_frames_in_pic_order_cnt_cycle out of "
	.ascii	"range.\012\000"
	.space	1
.LC230:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC231:
	.ascii	"SPS: num_ref_frames\000"
.LC232:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC233:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC234:
	.ascii	"pSPS->pic_width_in_mbs_minus1 out of range(=%d).\012"
	.ascii	"\000"
	.space	2
.LC235:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC236:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC237:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC238:
	.ascii	"pSPS->pic_height_in_map_units_minus1 out of range.\012"
	.ascii	"\000"
.LC239:
	.ascii	"pic size too large.\012\000"
	.space	3
.LC240:
	.ascii	"level_idc %d not support.\012\000"
	.space	1
.LC241:
	.ascii	"dpb size according level : %d\012\000"
	.space	1
.LC242:
	.ascii	"pSPS->num_ref_frames(%d) > DPB size(%d), try to sel"
	.ascii	"ect the reasonable one.\012\000"
.LC243:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC244:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC245:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC246:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC247:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC248:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC249:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC250:
	.ascii	"max_dec_frame_buffering(%d) > MaxDpbSize(%d)\012\000"
	.space	2
.LC251:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC252:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC253:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC254:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC255:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC256:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC257:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC258:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC259:
	.ascii	"seq_parameter_set_id out of range.\012\000"
.LC260:
	.ascii	"Baseline stream, try to decode, exit when FMO occur"
	.ascii	"red.\012\000"
	.space	3
.LC261:
	.ascii	"EXTENDED stream, try to decode, exit when dataparti"
	.ascii	"tion occurred.\012\000"
	.space	1
.LC262:
	.ascii	"others High profile stream, try to decode, exit whe"
	.ascii	"n high profile not support occurred.\012\000"
	.space	3
.LC263:
	.ascii	"profile_idc = %5d error, try to decode as main prof"
	.ascii	"ile.\012\000"
	.space	3
.LC264:
	.ascii	"level_idc = %5d error, try to decode as level_idc %"
	.ascii	"d.\012\000"
	.space	1
.LC265:
	.ascii	"Line %d: SPS[%d] decode error.\012\000"
.LC266:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC267:
	.ascii	"PPS: pic_order_present_flag\000"
.LC268:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC269:
	.ascii	"Baseline stream with FMO, not support.\012\000"
.LC270:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC271:
	.ascii	"num_ref_idx_l0_active_minus1 out of range.\012\000"
.LC272:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC273:
	.ascii	"num_ref_idx_l1_active_minus1 out of range.\012\000"
.LC274:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC275:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC276:
	.ascii	"weighted_bipred_idc out of range\012\000"
	.space	2
.LC277:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC278:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC279:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC280:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC281:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC282:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC283:
	.ascii	"redundant pic not support when find redundant slice"
	.ascii	" later, exit\012\000"
	.space	3
.LC284:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC285:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC286:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC287:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC288:
	.ascii	"second_chroma_qp_index_offset out of range.\012\000"
	.space	3
.LC289:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC290:
	.ascii	"pic_parameter_set_id out of range.\012\000"
.LC291:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC292:
	.ascii	"SPS haven't decode.\012\000"
	.space	3
.LC293:
	.ascii	"PPS decode error.\012\000"
	.space	1
.LC294:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC295:
	.ascii	"pps id:%d in sliceheader err\012\000"
	.space	2
.LC296:
	.ascii	"PPS or SPS of this slice not valid\012\000"
.LC297:
	.ascii	"recover point but isn't I_SLICE.\012\000"
	.space	2
.LC298:
	.ascii	"SH: frame_num\000"
	.space	2
.LC299:
	.ascii	"IDR NAL but frame_num!=0.\012\000"
	.space	1
.LC300:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC301:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC302:
	.ascii	"field first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC303:
	.ascii	"frame first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC304:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC305:
	.ascii	"idr_pic_id bigger than 65535\012\000"
	.space	2
.LC306:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC307:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC308:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC309:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC310:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC311:
	.ascii	"redundant pic not support.\012\000"
.LC312:
	.ascii	"first_mb_in_slice in currslice small than prevslice"
	.ascii	" in same pic\012\000"
	.space	3
.LC313:
	.ascii	"overflow MAX_MMCO_LEN\012\000"
	.space	1
.LC314:
	.ascii	"SH: memory_management_control_operation\000"
.LC315:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC316:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC317:
	.ascii	"SH: long_term_frame_idx\000"
.LC318:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC319:
	.ascii	"mmco exceed 6\012\000"
	.space	1
.LC320:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC321:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC322:
	.ascii	"IDR and no_output_of_prior_pics_flag = %d\012\000"
	.space	1
.LC323:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC324:
	.ascii	"adaptive_ref_pic_marking_mode_flag = %d\012\000"
	.space	3
.LC325:
	.ascii	"MMCO para would save dec err\012\000"
	.space	2
.LC326:
	.ascii	"mulitislice diff no_out_of_prior_pics_flag, used fi"
	.ascii	"rst.\012\000"
	.space	3
.LC327:
	.ascii	"mulitislice diff long_term_reference_flag, used fir"
	.ascii	"st.\012\000"
.LC328:
	.ascii	"mulitislice diff adaptive_ref_pic_marking_mode_flag"
	.ascii	", used first.\012\000"
	.space	2
.LC329:
	.ascii	"TotalPicNum=%d, SliceNumInPic=%d, TotalNal=%d\012\000"
	.space	1
.LC330:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC331:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC332:
	.ascii	"WP log2 exceed  and err flag = %d\012\000"
	.space	1
.LC333:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC334:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC335:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC336:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC337:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC338:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC339:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC340:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC341:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC342:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC343:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC344:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC345:
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC346:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC347:
	.ascii	"reorder idc l0 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC348:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC349:
	.ascii	"abs_diff_pic_num_minus1_l0 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC350:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC351:
	.ascii	"num of idc l0 exceed\012\000"
	.space	2
.LC352:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC353:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC354:
	.ascii	"reorder idc l1 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC355:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC356:
	.ascii	"abs_diff_pic_num_minus1_l1 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC357:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC358:
	.ascii	"num of idc l1 exceed\012\000"
	.space	2
.LC359:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC360:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC361:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC362:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC363:
	.ascii	"frame num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC364:
	.ascii	"field num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC365:
	.ascii	"reordering para dec err\012\000"
	.space	3
.LC366:
	.ascii	"apply_weights_flag=%d\012\000"
	.space	1
.LC367:
	.ascii	"wpt dec err\012\000"
	.space	3
.LC368:
	.ascii	"mark para dec err\012\000"
	.space	1
.LC369:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC370:
	.ascii	"cabac_init_idc bigger than 3\012\000"
	.space	2
.LC371:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC372:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC373:
	.ascii	"disable_deblocking_filter_idc dec err\012\000"
	.space	1
.LC374:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC375:
	.ascii	"slice_alpha_c0_offset_div2 dec err\012\000"
.LC376:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC377:
	.ascii	"slice_beta_offset_div2 dec err\012\000"
.LC378:
	.ascii	"\012Slice nal or IDR nal = %d\012\000"
.LC379:
	.ascii	"sliceheader dec err\012\000"
	.space	3
.LC380:
	.ascii	"Start Reason: SliceParaNum, MaxBytesReceived = %d, "
	.ascii	"%d(thr=%d)\012\000"
	.space	1
.LC381:
	.ascii	"Too many slice or bitstream, err!\012\000"
	.space	1
.LC382:
	.ascii	"Start Reason: new_pic_flag\012\000"
.LC383:
	.ascii	"init pic err, find next recover point or next valid"
	.ascii	" sps, pps, or exit\012\000"
	.space	1
.LC384:
	.ascii	"DecList error, ret=%d\012\000"
	.space	1
.LC385:
	.ascii	"dec list err.\012\000"
	.space	1
.LC386:
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC387:
	.ascii	"slicecheck first_mb_in_slice >= MAX_MB_NUM_IN_PIC e"
	.ascii	"rror.\012\000"
	.space	2
.LC388:
	.ascii	"SH: slice_type\000"
	.space	1
.LC389:
	.ascii	"slice type = %d\012\000"
	.space	3
.LC390:
	.ascii	"slice type = %d, err\012\000"
	.space	2
.LC391:
	.ascii	"pH264Ctx->TotalNal = %d, type:%d\012\000"
	.space	2
.LC392:
	.ascii	"stop i want\012\000"
	.space	3
.LC393:
	.ascii	"***** NAL: IDR/Slice, nal_unit_type=%d, TotalSlice="
	.ascii	"%d\012\000"
	.space	1
.LC394:
	.ascii	"***** NAL: PPS, nal_unit_type=%d, TotalPPS=%d\012\000"
	.space	1
.LC395:
	.ascii	"***** NAL: SPS, nal_unit_type=%d, TotalSPS=%d\012\000"
	.space	1
.LC396:
	.ascii	"SPS decode error.\012\000"
	.space	1
.LC397:
	.ascii	"***** NAL: SEI, nal_unit_type=%d\012\000"
	.space	2
.LC398:
	.ascii	"SEI decode error.\012\000"
	.space	1
.LC399:
	.ascii	"***** NAL: AUD, nal_unit_type=%d\012\000"
	.space	2
.LC400:
	.ascii	"***** NAL: EOSEQ, nal_unit_type=%d\012\000"
.LC401:
	.ascii	"***** NAL: FILL, nal_unit_type=%d\012\000"
	.space	1
.LC402:
	.ascii	"***** NAL: EOSTREAM, nal_unit_type=%d\012\000"
	.space	1
.LC403:
	.ascii	"***** NAL: SPSEXT, nal_unit_type=%d\012\000"
	.space	3
.LC404:
	.ascii	"***** NAL: AUX, nal_unit_type=%d\012\000"
	.space	2
.LC405:
	.ascii	"***** NAL: EOPIC, nal_unit_type=%d\012\000"
.LC406:
	.ascii	"***** NAL: UNSUPPORT, nal_unit_type=%d,nalu header:"
	.ascii	"%x\012\000"
	.space	1
.LC407:
	.ascii	"H264_DecOneNal ERR\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.type	sps_tmp.42064, %object
	.size	sps_tmp.42064, 3992
sps_tmp.42064:
	.space	3992
	.type	pps_tmp.40999, %object
	.size	pps_tmp.40999, 2208
pps_tmp.40999:
	.space	2208
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
