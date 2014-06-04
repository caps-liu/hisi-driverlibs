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
@ -DKBUILD_BASENAME=KBUILD_STR(h264) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
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
.LFB1360:
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
	ldr	r3, [r0, r4]	@ prephitmp.867, <variable>.DPB.size
	ldr	r4, [r0, ip]	@ prephitmp.849, <variable>.DPB.used_size
	cmp	r4, r3	@ prephitmp.849, prephitmp.867
	strhi	r3, [r0, ip]	@ prephitmp.867, <variable>.DPB.used_size
	movls	r3, r4	@ prephitmp.867, prephitmp.849
	cmp	r3, #0	@ prephitmp.867,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.863, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #56	@ ivtmp.863, ivtmp.863,
	movw	r7, #26620	@ tmp181,
.L6:
	ldr	r4, [ip, #0]	@ D.35838, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.863, ivtmp.863,
	ldr	r6, [r1, #0]	@ tmp177,* poc
	ldr	r5, [r4, #556]	@ D.35839, <variable>.poc
	cmp	r6, r5	@ tmp177, D.35839
	ble	.L5	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.35839,* poc
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
.LFB1361:
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
.LFB1362:
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35853, <variable>.is_reference
	cmp	r3, #3	@ D.35853,
	beq	.L20	@,
	tst	r3, #1	@ D.35853,
	bne	.L15	@,
.L16:
	ands	r3, r3, #2	@ tmp145, D.35853,
	moveq	r0, r3	@ D.35860, tmp145
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r0, #504]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #65536	@ tmp146,
	movne	r0, #0	@, D.35860
	moveq	r0, #1	@, D.35860
	ldmfd	sp, {fp, sp, pc}	@
.L20:
	ldr	ip, [r0, #432]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #65536	@ tmp138,
	beq	.L14	@,
.L15:
	ldr	ip, [r0, #468]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #65536	@ tmp142,
	bne	.L16	@,
.L14:
	mov	r0, #1	@ D.35860,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ShortTermRefFlg, .-ShortTermRefFlg
	.align	2
	.global	LongTermRefFlg
	.type	LongTermRefFlg, %function
LongTermRefFlg:
	.fnstart
.LFB1363:
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35880, <variable>.is_reference
	cmp	r3, #3	@ D.35880,
	beq	.L29	@,
	tst	r3, #1	@ D.35880,
	bne	.L24	@,
.L25:
	ands	r3, r3, #2	@ tmp145, D.35880,
	moveq	r0, r3	@ D.35887, tmp145
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r0, #504]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #256	@ tmp146,
	movne	r0, #0	@, D.35887
	moveq	r0, #1	@, D.35887
	ldmfd	sp, {fp, sp, pc}	@
.L29:
	ldr	ip, [r0, #432]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #256	@ tmp138,
	beq	.L23	@,
.L24:
	ldr	ip, [r0, #468]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #256	@ tmp142,
	bne	.L25	@,
.L23:
	mov	r0, #1	@ D.35887,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LongTermRefFlg, .-LongTermRefFlg
	.align	2
	.global	UpdateLTReflist
	.type	UpdateLTReflist, %function
UpdateLTReflist:
	.fnstart
.LFB1364:
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
	add	r4, r0, #26368	@ ivtmp.971, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #56	@ ivtmp.971, ivtmp.971,
	mov	r5, r7	@ i, j
.L34:
	ldr	r6, [r4, #0]	@ D.35916, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.971, ivtmp.971,
	mov	r0, r6	@, D.35916
	bl	LongTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #46	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.35916, <variable>.DPB.fs_ltref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L34	@,
.L32:
	movw	r3, #26616	@ tmp149,
	movw	ip, #26628	@ tmp148,
	ldr	r0, [r8, r3]	@ D.35922, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, r0	@ j, D.35922
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #46	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.35922
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.35922
	add	r8, r8, r1, asl #2	@, ivtmp.967, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L36	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	cmp	r2, r0	@ j, D.35922
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L36:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.967
	cmp	r2, r0	@ j, D.35922
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ltref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ltref
	add	r8, ip, #4	@ ivtmp.967, tmp160,
	bcc	.L36	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	UpdateLTReflist, .-UpdateLTReflist
	.align	2
	.global	UpdateReflist
	.type	UpdateReflist, %function
UpdateReflist:
	.fnstart
.LFB1365:
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
	add	r4, r0, #26368	@ ivtmp.1009, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #56	@ ivtmp.1009, ivtmp.1009,
	mov	r5, r7	@ i, j
.L49:
	ldr	r6, [r4, #0]	@ D.35935, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1009, ivtmp.1009,
	mov	r0, r6	@, D.35935
	bl	ShortTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #30	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.35935, <variable>.DPB.fs_ref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L49	@,
.L47:
	movw	r3, #26616	@ tmp149,
	mov	ip, #26624	@ tmp148,
	ldr	r0, [r8, r3]	@ D.35941, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, r0	@ j, D.35941
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #30	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.35941
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.35941
	add	r8, r8, r1, asl #2	@, ivtmp.1005, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L51	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	cmp	r2, r0	@ j, D.35941
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L51:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1005
	cmp	r2, r0	@ j, D.35941
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ref
	add	r8, ip, #4	@ ivtmp.1005, tmp160,
	bcc	.L51	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	UpdateReflist, .-UpdateReflist
	.align	2
	.global	GetPicNumX
	.type	GetPicNumX, %function
GetPicNumX:
	.fnstart
.LFB1366:
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
	ldr	r0, [r0, #448]	@ CurrPicNum, <variable>.frame_num
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
.LFB1372:
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
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ D.36180, <variable>.structure
	cmp	r3, #0	@ D.36180,
	beq	.L65	@,
	mov	ip, #26624	@ tmp155,
	ldr	r8, [r0, ip]	@ D.36196, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.36196,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.1073, pH264Ctx,
	sub	r6, r8, #1	@ tmp280, D.36196,
	and	r7, r6, #1	@ tmp282, tmp280,
	mov	r4, #0	@ i.1091,
	ldr	ip, [r5, #120]!	@ temp.1083, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.36198, <variable>.is_reference
	tst	r6, #1	@ D.36198,
	beq	.L85	@,
	ldr	sl, [ip, #468]	@ tmp311,
	bic	sl, sl, #-16777216	@ tmp312, tmp311,
	bic	sl, sl, #255	@ tmp312, tmp312,
	cmp	sl, #65536	@ tmp312,
	beq	.L104	@,
.L85:
	tst	r6, #2	@ D.36198,
	beq	.L86	@,
	ldr	r6, [ip, #504]	@ tmp306,
	bic	r6, r6, #-16777216	@ tmp307, tmp306,
	bic	r6, r6, #255	@ tmp307, tmp307,
	cmp	r6, #65536	@ tmp307,
	beq	.L105	@,
.L86:
	mov	r4, #1	@ i.1091,
	cmp	r8, r4	@ D.36196, i.1091
	add	r5, r5, #4	@ ivtmp.1073, ivtmp.1073,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp282,
	beq	.L74	@,
	ldr	ip, [r5, #0]	@ temp.1083, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.36198, <variable>.is_reference
	tst	r6, #1	@ D.36198,
	beq	.L88	@,
	ldr	r7, [ip, #468]	@ tmp324,
	bic	r7, r7, #-16777216	@ tmp325, tmp324,
	bic	r7, r7, #255	@ tmp325, tmp325,
	cmp	r7, #65536	@ tmp325,
	beq	.L106	@,
.L88:
	tst	r6, #2	@ D.36198,
	beq	.L89	@,
	ldr	r6, [ip, #504]	@ tmp319,
	bic	r6, r6, #-16777216	@ tmp320, tmp319,
	bic	r6, r6, #255	@ tmp320, tmp320,
	cmp	r6, #65536	@ tmp320,
	beq	.L107	@,
.L89:
	add	r4, r4, #1	@ i.1091, i.1091,
	add	r5, r5, #4	@ ivtmp.1073, ivtmp.1073,
	cmp	r8, r4	@ D.36196, i.1091
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	ip, [r5, #0]	@ temp.1083, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.36198, <variable>.is_reference
	tst	r6, #1	@ D.36198,
	bne	.L108	@,
.L70:
	tst	r6, #2	@ D.36198,
	beq	.L72	@,
	ldr	r6, [ip, #504]	@ tmp239,
	bic	r6, r6, #-16777216	@ tmp237, tmp239,
	bic	r6, r6, #255	@ tmp237, tmp237,
	cmp	r6, #65536	@ tmp237,
	beq	.L109	@,
.L72:
	ldr	ip, [r5, #4]	@ temp.1083, <variable>.DPB.fs_ref
	add	r4, r4, #1	@ i.1091, i.1091,
	add	r5, r5, #4	@ tmp284, ivtmp.1073,
	mov	sl, r4	@ tmp283, i.1091
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.36198, <variable>.is_reference
	tst	r6, #1	@ D.36198,
	beq	.L92	@,
	ldr	r7, [ip, #468]	@ tmp335,
	bic	r7, r7, #-16777216	@ tmp336, tmp335,
	bic	r7, r7, #255	@ tmp336, tmp336,
	cmp	r7, #65536	@ tmp336,
	beq	.L110	@,
.L92:
	tst	r6, #2	@ D.36198,
	beq	.L93	@,
	ldr	r6, [ip, #504]	@ tmp330,
	bic	r6, r6, #-16777216	@ tmp331, tmp330,
	bic	r6, r6, #255	@ tmp331, tmp331,
	cmp	r6, #65536	@ tmp331,
	beq	.L111	@,
.L93:
	add	r4, sl, #1	@ i.1091, tmp283,
	add	r5, r5, #4	@ ivtmp.1073, tmp284,
	cmp	r8, r4	@ D.36196, i.1091
	bls	.L112	@,
.L74:
	ldr	ip, [r5, #0]	@ temp.1083, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.36198, <variable>.is_reference
	tst	r6, #1	@ D.36198,
	beq	.L70	@,
.L108:
	ldr	r7, [ip, #468]	@ tmp200,
	bic	r7, r7, #-16777216	@ tmp198, tmp200,
	bic	r7, r7, #255	@ tmp198, tmp198,
	cmp	r7, #65536	@ tmp198,
	bne	.L70	@,
	ldr	r7, [ip, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L70	@,
	ldrb	r6, [ip, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L72	@,
.L71:
	add	r4, r4, #6592	@ tmp204, i.1091,
	str	r1, [ip, #552]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #30	@ tmp204, tmp204,
	cmp	r3, #1	@ D.36180,
	movne	r2, #0	@, tmp209
	moveq	r2, #1	@, tmp209
	add	ip, r2, r1, asl #1	@, tmp210, tmp209, long_term_frame_idx,
	mov	r1, #1	@ tmp214,
	ldr	r3, [r0, r4, asl #2]	@ tmp206, <variable>.DPB.fs_ref
	str	ip, [r3, #476]	@ tmp210, <variable>.top_field.long_term_pic_num
	mov	ip, #0	@ tmp219,
	ldr	r2, [r0, r4, asl #2]	@ tmp213, <variable>.DPB.fs_ref
	strb	r1, [r2, #469]	@ tmp214, <variable>.top_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp218, <variable>.DPB.fs_ref
	strb	ip, [r3, #470]	@ tmp219, <variable>.top_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1088, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #432]	@ zero_extendqisi2	@ D.36219, <variable>.frame.structure
	cmp	r2, #3	@ D.36219,
	cmpne	r2, #0	@, D.36219,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrb	ip, [r3, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldrb	r1, [r3, #469]	@ zero_extendqisi2	@ D.36225, <variable>.top_field.is_long_term
	cmp	ip, r1	@ <variable>.bottom_field.is_long_term, D.36225
	streqb	ip, [r3, #433]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r3, [r0, r4, asl #2]	@ temp.1090, <variable>.DPB.fs_ref
	ldreqb	ip, [r3, #470]	@ zero_extendqisi2	@ <variable>.top_field.is_short_term, <variable>.top_field.is_short_term
	streqb	ip, [r3, #434]	@ <variable>.top_field.is_short_term, <variable>.frame.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L65:
	mov	ip, #26624	@ tmp156,
	ldr	r7, [r0, ip]	@ temp.1092, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, #0	@ temp.1092,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.1068, pH264Ctx,
	sub	r5, r7, #1	@ tmp275, temp.1092,
	and	r6, r5, #1	@ tmp277, tmp275,
	ldr	ip, [r4, #120]!	@ D.36184, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L113	@,
.L78:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, temp.1092
	add	r4, r4, #4	@ ivtmp.1068, ivtmp.1068,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r6, #0	@ tmp277,
	beq	.L69	@,
	ldr	ip, [r4, #0]	@ D.36184, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L114	@,
.L80:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1068, ivtmp.1068,
	cmp	r3, r7	@ i, temp.1092
	bcc	.L69	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L68:
	ldr	ip, [r4, #4]	@ D.36184, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	beq	.L115	@,
.L83:
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1068, tmp278,
	cmp	r3, r7	@ i, temp.1092
	bcs	.L116	@,
.L69:
	ldr	ip, [r4, #0]	@ D.36184, <variable>.DPB.fs_ref
	add	r6, r4, #4	@ tmp278, ivtmp.1068,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	bne	.L68	@,
	ldr	r5, [ip, #432]	@ tmp161,
	bic	r5, r5, #-16777216	@ tmp159, tmp161,
	bic	r5, r5, #255	@ tmp159, tmp159,
	cmp	r5, #65536	@ tmp159,
	bne	.L68	@,
	ldr	r5, [ip, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	beq	.L101	@,
	ldr	ip, [r4, #4]	@ D.36184, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L83	@,
.L115:
	ldr	r4, [ip, #432]	@ tmp302,
	bic	r4, r4, #-16777216	@ tmp303, tmp302,
	bic	r4, r4, #255	@ tmp303, tmp303,
	cmp	r4, #65536	@ tmp303,
	bne	.L83	@,
	ldr	r4, [ip, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r2	@ <variable>.frame.pic_num, picNumX
	beq	.L101	@,
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1068, tmp278,
	cmp	r3, r7	@ i, temp.1092
	bcc	.L69	@,
.L116:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L110:
	ldr	r7, [ip, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L92	@,
	ldrb	r6, [ip, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L71	@,
	add	r4, sl, #1	@ i.1091, tmp283,
	add	r5, r5, #4	@ ivtmp.1073, tmp284,
	cmp	r8, r4	@ D.36196, i.1091
	bhi	.L74	@,
.L112:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L109:
	ldr	r6, [ip, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L72	@,
	ldrb	r6, [ip, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L72	@,
	b	.L73	@
.L111:
	ldr	r6, [ip, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L93	@,
	ldrb	r6, [ip, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L93	@,
.L73:
	add	r4, r4, #6592	@ tmp243, i.1091,
	str	r1, [ip, #552]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #30	@ tmp243, tmp243,
	cmp	r3, #2	@ D.36180,
	movne	r2, #0	@, tmp248
	moveq	r2, #1	@, tmp248
	add	ip, r2, r1, asl #1	@, tmp249, tmp248, long_term_frame_idx,
	mov	r1, #1	@ tmp253,
	ldr	r3, [r0, r4, asl #2]	@ tmp245, <variable>.DPB.fs_ref
	str	ip, [r3, #512]	@ tmp249, <variable>.bottom_field.long_term_pic_num
	mov	ip, #0	@ tmp258,
	ldr	r2, [r0, r4, asl #2]	@ tmp252, <variable>.DPB.fs_ref
	strb	r1, [r2, #505]	@ tmp253, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp257, <variable>.DPB.fs_ref
	strb	ip, [r3, #506]	@ tmp258, <variable>.bottom_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1099, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #432]	@ zero_extendqisi2	@ D.36245, <variable>.frame.structure
	cmp	r2, #3	@ D.36245,
	cmpne	r2, #0	@, D.36245,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldrb	ip, [r3, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldrb	r1, [r3, #469]	@ zero_extendqisi2	@ temp.1100, <variable>.top_field.is_long_term
	cmp	ip, r1	@ <variable>.bottom_field.is_long_term, temp.1100
	streqb	ip, [r3, #433]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r3, [r0, r4, asl #2]	@ temp.1102, <variable>.DPB.fs_ref
	ldreqb	ip, [r3, #506]	@ zero_extendqisi2	@ <variable>.bottom_field.is_short_term, <variable>.bottom_field.is_short_term
	streqb	ip, [r3, #434]	@ <variable>.bottom_field.is_short_term, <variable>.frame.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L104:
	ldr	sl, [ip, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	sl, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L85	@,
	ldrb	r6, [ip, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L86	@,
	b	.L71	@
.L106:
	ldr	r7, [ip, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L88	@,
	ldrb	r6, [ip, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L71	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L89	@,
	b	.L71	@
.L105:
	ldr	r6, [ip, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L86	@,
	ldrb	r6, [ip, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L86	@,
	b	.L73	@
.L107:
	ldr	r6, [ip, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L89	@,
	ldrb	r6, [ip, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L73	@,
	ldr	r6, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L89	@,
	b	.L73	@
.L113:
	ldr	r5, [ip, #432]	@ tmp295,
	bic	r5, r5, #-16777216	@ tmp296, tmp295,
	bic	r5, r5, #255	@ tmp296, tmp296,
	cmp	r5, #65536	@ tmp296,
	bne	.L78	@,
	ldr	r5, [ip, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L78	@,
.L101:
	add	r4, r3, #6592	@ tmp163, i,
	str	r1, [ip, #552]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r3, r4, #30	@ tmp163, tmp163,
	mov	ip, #1	@ tmp169,
	mov	r2, #0	@ tmp184,
	ldr	r4, [r0, r3, asl #2]	@ tmp165, <variable>.DPB.fs_ref
	str	r1, [r4, #440]	@ long_term_frame_idx, <variable>.frame.long_term_pic_num
	ldr	r1, [r0, r3, asl #2]	@ tmp168, <variable>.DPB.fs_ref
	strb	ip, [r1, #433]	@ tmp169, <variable>.frame.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp173, <variable>.DPB.fs_ref
	strb	ip, [r1, #469]	@ tmp169, <variable>.top_field.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp178, <variable>.DPB.fs_ref
	strb	ip, [r1, #505]	@ tmp169, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, r3, asl #2]	@ tmp183, <variable>.DPB.fs_ref
	strb	r2, [ip, #434]	@ tmp184, <variable>.frame.is_short_term
	ldr	r1, [r0, r3, asl #2]	@ tmp188, <variable>.DPB.fs_ref
	strb	r2, [r1, #470]	@ tmp184, <variable>.top_field.is_short_term
	ldr	r3, [r0, r3, asl #2]	@ tmp193, <variable>.DPB.fs_ref
	strb	r2, [r3, #506]	@ tmp184, <variable>.bottom_field.is_short_term
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L114:
	ldr	r5, [ip, #432]	@ tmp299,
	bic	r5, r5, #-16777216	@ tmp300, tmp299,
	bic	r5, r5, #255	@ tmp300, tmp300,
	cmp	r5, #65536	@ tmp300,
	bne	.L80	@,
	ldr	r5, [ip, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
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
.LFB1382:
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
	ldr	ip, [r3, #440]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r2, ip, #2032	@ tmp138, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r2, #15	@ tmp138, tmp138,
	cmp	r3, #4096	@ tmp138,
	bcc	.L118	@,
	movw	r3, #54192	@ tmp144,
	movw	r2, #54188	@ tmp142,
	ldr	r4, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	movw	ip, #26616	@ tmp147,
	ldr	r2, [r0, r2]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	ip, [r0, ip]	@ <variable>.DPB.size, <variable>.DPB.size
	add	ip, ip, r4, lsr #1	@, D.36673, <variable>.DPB.size, <variable>.PicOutCounter,
	mov	r2, r2, lsr #1	@ D.36669, <variable>.NewPicCounter,
	add	r4, ip, #1	@ tmp149, D.36673,
	cmp	r2, r4	@ D.36669, tmp149
	bcc	.L118	@,
	mvn	ip, ip	@ tmp150, D.36673
	add	r2, ip, r2	@ tmp151, tmp150, D.36669
	cmp	r2, #1	@ tmp151,
	movhi	r2, #2	@ tmp152,
	movls	r2, #1	@ tmp157,
	strhi	r2, [r1, #64]	@ tmp152, <variable>.u32RepeatCnt
	strls	r2, [r1, #64]	@ tmp157, <variable>.u32RepeatCnt
	ldrhi	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	ldrls	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	addhi	r2, r2, #4	@ tmp156, <variable>.PicOutCounter,
	addls	r2, r2, #2	@ tmp161, <variable>.PicOutCounter,
	str	r2, [r0, r3]	@ tmp161, <variable>.PicOutCounter
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L118:
	mov	r0, #0	@ tmp163,
	str	r0, [r1, #64]	@ tmp163, <variable>.u32RepeatCnt
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SetFrmRepeatCount, .-SetFrmRepeatCount
	.align	2
	.global	SplitFrmToFlds
	.type	SplitFrmToFlds, %function
SplitFrmToFlds:
	.fnstart
.LFB1385:
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
	ldrb	r4, [r0, #433]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	ldrb	ip, [r0, #434]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	mov	r5, #1	@ tmp138,
	ldr	r1, [r0, #452]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	r2, [r0, #456]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldr	r3, [r0, #436]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	r5, [r0, #468]	@ tmp138, <variable>.top_field.structure
	mov	r5, #2	@ tmp147,
	strb	r4, [r0, #505]	@ <variable>.frame.is_long_term, <variable>.bottom_field.is_long_term
	str	r3, [r0, #508]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	ip, [r0, #506]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	r5, [r0, #504]	@ tmp147, <variable>.bottom_field.structure
	str	r1, [r0, #524]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	r2, [r0, #528]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r4, [r0, #469]	@ <variable>.frame.is_long_term, <variable>.top_field.is_long_term
	strb	ip, [r0, #470]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	r1, [r0, #488]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	r2, [r0, #492]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r3, [r0, #472]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SplitFrmToFlds, .-SplitFrmToFlds
	.align	2
	.global	CombineFldsToFrm
	.type	CombineFldsToFrm, %function
CombineFldsToFrm:
	.fnstart
.LFB1386:
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
	ldr	r1, [r0, #520]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	ldr	r3, [r0, #484]	@ <variable>.top_field.poc, <variable>.top_field.poc
	ldr	r4, [r0, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r1, r3	@ <variable>.bottom_field.poc, <variable>.top_field.poc
	movlt	r3, r1	@ D.36778, <variable>.bottom_field.poc
	movge	r3, r3	@ D.36778, <variable>.top_field.poc
	ldr	r2, [r0, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldrb	r1, [r0, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, #472]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	add	r2, r4, r2	@ tmp144, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	cmp	r1, #0	@ <variable>.bottom_field.is_long_term,
	mov	r4, #3	@ tmp142,
	mov	r2, r2, lsr #1	@ D.36783, tmp144,
	str	r3, [r0, #556]	@ D.36778, <variable>.poc
	strb	r4, [r0, #432]	@ tmp142, <variable>.frame.structure
	str	ip, [r0, #436]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	str	r3, [r0, #448]	@ D.36778, <variable>.frame.poc
	str	r2, [r0, #452]	@ D.36783, <variable>.frame.err_level
	beq	.L127	@,
	ldrb	ip, [r0, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	subs	r1, ip, #0	@ prephitmp.1180, <variable>.top_field.is_long_term,
	movne	r1, #1	@ prephitmp.1180
.L127:
	ldr	r3, [r0, #504]	@ tmp154,
	strb	r1, [r0, #433]	@ prephitmp.1180, <variable>.frame.is_long_term
	bic	ip, r3, #-16777216	@ tmp152, tmp154,
	bic	r3, ip, #255	@ tmp152, tmp152,
	cmp	r3, #0	@ tmp152,
	beq	.L128	@,
	ldr	ip, [r0, #468]	@ tmp157,
	bic	r3, ip, #-16777216	@ tmp155, tmp157,
	bic	ip, r3, #255	@ tmp155, tmp155,
	cmp	ip, #0	@ tmp155,
	bne	.L131	@,
.L128:
	mov	r1, #0	@ prephitmp.1169,
.L129:
	ldr	ip, [r0, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r0, #492]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	str	r2, [r0, #576]	@ D.36783, <variable>.err_level
	cmp	ip, r3	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	movcs	r3, ip	@ D.36807, <variable>.bottom_field.pic_type
	strb	r1, [r0, #434]	@ prephitmp.1169, <variable>.frame.is_short_term
	str	r3, [r0, #572]	@ D.36807, <variable>.pic_type
	str	r3, [r0, #456]	@ D.36807, <variable>.frame.pic_type
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L131:
	rsbs	r1, r1, #1	@ prephitmp.1169, prephitmp.1180
	movcc	r1, #0	@ prephitmp.1169
	b	.L129	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	UpdateCurrFrameInfo
	.type	UpdateCurrFrameInfo, %function
UpdateCurrFrameInfo:
	.fnstart
.LFB1397:
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
	movw	ip, #51416	@ tmp152,
	movw	r5, #50978	@ tmp153,
	ldr	r4, [r0, ip]	@ pCurrFrame, <variable>.CurrPic.frame_store
	ldrb	r1, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #50980	@ tmp156,
	strb	r1, [r4, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L133	@,
	movw	r2, #50981	@ tmp158,
	ldrb	r2, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	cmp	r2, #0	@ <variable>.CurrPic.is_short_term,
	bne	.L133	@,
.L134:
	movw	r5, #51424	@ tmp161,
	strb	r2, [r4, #2]	@ iftmp.517, <variable>.is_reference
	ldr	r2, [r3, r5]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	movw	ip, #51460	@ tmp163,
	movw	r5, #51452	@ tmp165,
	str	r2, [r4, #544]	@ <variable>.CurrPic.frame_num, <variable>.frame_num
	movw	r2, #50983	@ tmp175,
	ldr	r1, [r3, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	str	r1, [r4, #576]	@ <variable>.CurrPic.err_level, <variable>.err_level
	movw	r1, #51436	@ tmp167,
	ldr	r0, [r3, r5]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	str	r0, [r4, #572]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	movw	r1, #51484	@ tmp169,
	str	r0, [r4, #556]	@ <variable>.CurrPic.thispoc, <variable>.poc
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r1, #51428	@ tmp171,
	str	r0, [r4, #580]	@ <variable>.CurrPic.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r0, [r3, r1]	@ <variable>.CurrPic.long_term_frame_idx, <variable>.CurrPic.long_term_frame_idx
	movw	r1, #50985	@ tmp173,
	str	r0, [r4, #552]	@ <variable>.CurrPic.long_term_frame_idx, <variable>.long_term_frame_idx
	ldrb	r0, [r3, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	movw	r1, #50979	@ tmp178,
	str	r0, [r4, #568]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r0, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r0, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r0, #3	@ iftmp.519,
	movne	r0, #0	@ iftmp.519,
	strb	r0, [r4, #3]	@ iftmp.519, <variable>.mode_skip_flag
	ldrb	r1, [r3, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r1, #1	@ <variable>.CurrPic.structure,
	beq	.L139	@,
	bcs	.L153	@,
	movw	r1, #50980	@ tmp184,
	str	r4, [r4, #436]	@ pCurrFrame, <variable>.frame.frame_store
	mov	r2, #3	@ tmp180,
	mov	r6, #0	@ tmp182,
	strb	r2, [r4, #1]	@ tmp180, <variable>.is_used
	add	r8, r3, #50944	@, pH264Ctx,
	strb	r6, [r4, #432]	@ tmp182, <variable>.frame.structure
	movw	r0, #50981	@ tmp186,
	ldrb	r6, [r3, r1]	@ zero_extendqisi2	@ temp.1211, <variable>.CurrPic.is_long_term
	add	r1, r8, #48	@,,
	movw	lr, #51440	@ tmp188,
	mov	r2, #424	@,
	strb	r6, [r4, #433]	@ temp.1211, <variable>.frame.is_long_term
	ldrb	r8, [r3, r0]	@ zero_extendqisi2	@ temp.1212, <variable>.CurrPic.is_short_term
	add	r0, r4, #8	@, pCurrFrame,
	strb	r8, [r4, #434]	@ temp.1212, <variable>.frame.is_short_term
	ldr	r7, [r3, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	str	r7, [r4, #448]	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	ldr	r5, [r3, r5]	@ temp.1213, <variable>.CurrPic.pic_type
	str	r5, [r4, #456]	@ temp.1213, <variable>.frame.pic_type
	ldr	r7, [r3, ip]	@ temp.1214, <variable>.CurrPic.err_level
	movw	ip, #51444	@ tmp192,
	str	r7, [r4, #452]	@ temp.1214, <variable>.frame.err_level
	ldr	lr, [r3, ip]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	movw	ip, #51448	@ tmp194,
	str	lr, [r4, #484]	@ <variable>.CurrPic.toppoc, <variable>.top_field.poc
	ldr	lr, [r3, ip]	@ <variable>.CurrPic.bottompoc, <variable>.CurrPic.bottompoc
	str	lr, [r4, #520]	@ <variable>.CurrPic.bottompoc, <variable>.bottom_field.poc
	bl	memcpy	@
	mov	ip, #1	@ tmp203,
	mov	r3, #2	@ tmp207,
	strb	r6, [r4, #505]	@ temp.1211, <variable>.bottom_field.is_long_term
	strb	r8, [r4, #506]	@ temp.1212, <variable>.bottom_field.is_short_term
	str	r7, [r4, #524]	@ temp.1214, <variable>.bottom_field.err_level
	strb	ip, [r4, #468]	@ tmp203, <variable>.top_field.structure
	strb	r3, [r4, #504]	@ tmp207, <variable>.bottom_field.structure
	str	r5, [r4, #528]	@ temp.1213, <variable>.bottom_field.pic_type
	str	r4, [r4, #508]	@ pCurrFrame, <variable>.bottom_field.frame_store
	strb	r6, [r4, #469]	@ temp.1211, <variable>.top_field.is_long_term
	strb	r8, [r4, #470]	@ temp.1212, <variable>.top_field.is_short_term
	str	r7, [r4, #488]	@ temp.1214, <variable>.top_field.err_level
	str	r5, [r4, #492]	@ temp.1213, <variable>.top_field.pic_type
	str	r4, [r4, #472]	@ pCurrFrame, <variable>.top_field.frame_store
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L133:
	mov	r2, #3	@ iftmp.517,
	b	.L134	@
.L153:
	cmp	r1, #2	@ <variable>.CurrPic.structure,
	ldmnefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	movw	r6, #50980	@ tmp252,
	str	r4, [r4, #508]	@ pCurrFrame, <variable>.bottom_field.frame_store
	mov	lr, #1	@ tmp250,
	strb	lr, [r4, #504]	@ tmp250, <variable>.bottom_field.structure
	ldrb	lr, [r3, r6]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r6, #0	@ tmp262,
	strb	lr, [r4, #505]	@ <variable>.CurrPic.is_long_term, <variable>.bottom_field.is_long_term
	movw	lr, #50981	@ tmp255,
	ldrb	lr, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	strb	lr, [r4, #506]	@ <variable>.CurrPic.is_short_term, <variable>.bottom_field.is_short_term
	movw	lr, #51444	@ tmp258,
	ldr	lr, [r3, lr]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	str	lr, [r4, #520]	@ <variable>.CurrPic.toppoc, <variable>.bottom_field.poc
	ldr	lr, [r3, r5]	@ temp.1226, <variable>.CurrPic.pic_type
	movw	r5, #50977	@ tmp263,
	str	lr, [r4, #528]	@ temp.1226, <variable>.bottom_field.pic_type
	ldr	ip, [r3, ip]	@ temp.1227, <variable>.CurrPic.err_level
	str	r6, [r4, #568]	@ tmp262, <variable>.MbaffFrameFlag
	str	ip, [r4, #524]	@ temp.1227, <variable>.bottom_field.err_level
	ldrb	r5, [r3, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, r6	@ <variable>.CurrPic.field_pair_flag,
	beq	.L154	@,
	ldr	r1, [r4, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	mov	r5, #3	@ tmp275,
	strb	r5, [r4, #1]	@ tmp275, <variable>.is_used
	add	ip, ip, r1	@ temp.1230, temp.1227, <variable>.top_field.err_level
	str	ip, [r4, #452]	@ temp.1230, <variable>.frame.err_level
	str	ip, [r4, #576]	@ temp.1230, <variable>.err_level
	mvn	r1, #0	@,
	ldrb	r7, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	movw	r2, #51000	@ tmp282,
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	orreq	r6, r0, #2	@ iftmp.522, iftmp.519,
	strb	r6, [r4, #3]	@ iftmp.522, <variable>.mode_skip_flag
	ldrd	r6, [r3, r2]	@ temp.1232, pH264Ctx, tmp282
	mvn	r0, #0	@ tmp283,
	cmp	r7, r1	@ temp.1232, tmp283
	cmpeq	r6, r0	@ temp.1232, tmp283
	beq	.L150	@,
	ldrd	r8, [r4, #16]	@ <variable>.fs_image.PTS, pCurrFrame,
	cmp	r9, r1	@ <variable>.fs_image.PTS, tmp283
	cmpeq	r8, r0	@ <variable>.fs_image.PTS, tmp283
	beq	.L155	@,
.L150:
	ldr	r2, [r4, #492]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	b	.L152	@
.L139:
	movw	r6, #50980	@ tmp211,
	strb	r1, [r4, #468]	@ <variable>.CurrPic.structure, <variable>.top_field.structure
	str	r4, [r4, #472]	@ pCurrFrame, <variable>.top_field.frame_store
	ldrb	lr, [r3, r6]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r6, #0	@ tmp221,
	strb	lr, [r4, #469]	@ <variable>.CurrPic.is_long_term, <variable>.top_field.is_long_term
	movw	lr, #50981	@ tmp214,
	ldrb	lr, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.is_short_term, <variable>.CurrPic.is_short_term
	strb	lr, [r4, #470]	@ <variable>.CurrPic.is_short_term, <variable>.top_field.is_short_term
	movw	lr, #51444	@ tmp217,
	ldr	lr, [r3, lr]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	str	lr, [r4, #484]	@ <variable>.CurrPic.toppoc, <variable>.top_field.poc
	ldr	lr, [r3, r5]	@ temp.1218, <variable>.CurrPic.pic_type
	movw	r5, #50977	@ tmp222,
	str	lr, [r4, #492]	@ temp.1218, <variable>.top_field.pic_type
	ldr	ip, [r3, ip]	@ temp.1219, <variable>.CurrPic.err_level
	str	r6, [r4, #568]	@ tmp221, <variable>.MbaffFrameFlag
	str	ip, [r4, #488]	@ temp.1219, <variable>.top_field.err_level
	ldrb	r5, [r3, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, r6	@ <variable>.CurrPic.field_pair_flag,
	beq	.L156	@,
	ldr	r1, [r4, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	mov	r5, #3	@ tmp235,
	strb	r5, [r4, #1]	@ tmp235, <variable>.is_used
	add	ip, ip, r1	@ D.37439, temp.1219, <variable>.bottom_field.err_level
	str	ip, [r4, #452]	@ D.37439, <variable>.frame.err_level
	str	ip, [r4, #576]	@ D.37439, <variable>.err_level
	mvn	r1, #0	@,
	ldrb	r7, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	orreq	r6, r0, #1	@ iftmp.520, iftmp.519,
	movw	r0, #51000	@ tmp242,
	strb	r6, [r4, #3]	@ iftmp.520, <variable>.mode_skip_flag
	ldrd	r6, [r3, r0]	@ D.37446, pH264Ctx, tmp242
	mvn	r0, #0	@ tmp243,
	cmp	r7, r1	@ D.37446, tmp243
	cmpeq	r6, r0	@ D.37446, tmp243
	beq	.L144	@,
	ldrd	r8, [r4, #16]	@ <variable>.fs_image.PTS, pCurrFrame,
	cmp	r9, r1	@ <variable>.fs_image.PTS, tmp243
	cmpeq	r8, r0	@ <variable>.fs_image.PTS, tmp243
	beq	.L157	@,
.L144:
	ldr	r2, [r4, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
.L152:
	cmp	r2, lr	@ <variable>.top_field.pic_type, temp.1226
	strcs	r2, [r4, #572]	@, <variable>.top_field.pic_type, <variable>.pic_type
	strcc	lr, [r4, #572]	@, temp.1226, <variable>.pic_type
	movw	r2, #51436	@ tmp288,
	ldr	lr, [r3, r2]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	mov	r0, r4	@, pCurrFrame
	str	lr, [r4, #556]	@ <variable>.CurrPic.thispoc, <variable>.poc
	bl	CombineFldsToFrm	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L154:
	strb	r1, [r4, #1]	@ <variable>.CurrPic.structure, <variable>.is_used
	add	r1, r3, #50944	@, pH264Ctx,
	str	ip, [r4, #452]	@ temp.1227, <variable>.frame.err_level
	add	r0, r4, #8	@, pCurrFrame,
	str	ip, [r4, #576]	@ temp.1227, <variable>.err_level
	add	r1, r1, #48	@,,
	ldrb	r3, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	mov	r2, #424	@,
	cmp	r3, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r3, #2	@ iftmp.521,
	movne	r3, r6	@ iftmp.521,
	strb	r3, [r4, #3]	@ iftmp.521, <variable>.mode_skip_flag
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L156:
	strb	r1, [r4, #1]	@ <variable>.CurrPic.structure, <variable>.is_used
	add	r1, r3, #50944	@, pH264Ctx,
	str	ip, [r4, #452]	@ temp.1219, <variable>.frame.err_level
	add	r0, r4, #8	@, pCurrFrame,
	str	ip, [r4, #576]	@ temp.1219, <variable>.err_level
	add	r1, r1, #48	@,,
	ldrb	ip, [r3, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	mov	r2, #424	@,
	cmp	ip, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r3, #0	@, tmp228
	moveq	r3, #1	@, tmp228
	strb	r3, [r4, #3]	@ tmp228, <variable>.mode_skip_flag
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L157:
	strd	r6, [r4, #16]	@ D.37446, pCurrFrame,
	b	.L144	@
.L155:
	strd	r6, [r4, #16]	@ temp.1232, pCurrFrame,
	ldr	r2, [r4, #492]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	b	.L152	@
	.fnend
	.size	UpdateCurrFrameInfo, .-UpdateCurrFrameInfo
	.align	2
	.global	GetShortTermPicPoint
	.type	GetShortTermPicPoint, %function
GetShortTermPicPoint:
	.fnstart
.LFB1403:
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
	ldr	r5, [r0, ip]	@ D.37862, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.37862,
	beq	.L162	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1262, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.37862,
	add	r0, r0, #120	@ ivtmp.1262, ivtmp.1262,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L170	@,
	ldr	r2, [r0, #0]	@ D.37827, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L172	@,
	ldr	ip, [r2, #432]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #65536	@ tmp186,
	bne	.L172	@,
	ldr	ip, [r2, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	ip, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L172:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.37862, i
	add	r0, r0, #4	@ ivtmp.1262, ivtmp.1262,
	bls	.L162	@,
	cmp	r4, #0	@ tmp168,
	beq	.L167	@,
	cmp	r3, #0	@ structure,
	beq	.L190	@,
	ldr	r2, [r0, #0]	@ temp.1265, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37840, <variable>.is_reference
	tst	r4, #1	@ D.37840,
	beq	.L175	@,
	ldr	r6, [r2, #468]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #65536	@ tmp195,
	beq	.L194	@,
.L175:
	tst	r4, #2	@ D.37840,
	beq	.L176	@,
	ldr	r4, [r2, #504]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #65536	@ tmp192,
	bne	.L176	@,
	ldr	r4, [r2, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L187	@,
.L176:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1262, ivtmp.1262,
	cmp	r5, ip	@ D.37862, i
	bhi	.L167	@,
.L162:
	mov	r0, #0	@ D.37838,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L170:
	ldr	r2, [r0, #0]	@ temp.1265, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.37840, <variable>.is_reference
	tst	ip, #1	@ D.37840,
	beq	.L171	@,
	ldr	r6, [r2, #468]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #65536	@ tmp182,
	beq	.L195	@,
.L171:
	tst	ip, #2	@ D.37840,
	beq	.L172	@,
	ldr	ip, [r2, #504]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #65536	@ tmp179,
	bne	.L172	@,
	ldr	ip, [r2, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L172	@,
.L187:
	add	r0, r2, #504	@ D.37838, temp.1265,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L196:
	ldr	r2, [r0, #0]	@ D.37827, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L164	@,
	ldr	r4, [r2, #432]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #65536	@ tmp151,
	bne	.L164	@,
	ldr	r4, [r2, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L164:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1262,
	bne	.L179	@,
.L198:
	ldr	r2, [r0, #4]	@ D.37827, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L181	@,
	ldr	r0, [r2, #432]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #65536	@ tmp212,
	bne	.L181	@,
	ldr	r0, [r2, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, r1	@ <variable>.frame.pic_num, picNum
	beq	.L189	@,
.L181:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1262, tmp170,
	cmp	r5, ip	@ D.37862, i
	bls	.L162	@,
.L167:
	cmp	r3, #0	@ structure,
	beq	.L196	@,
	ldr	r2, [r0, #0]	@ temp.1265, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37840, <variable>.is_reference
	tst	r4, #1	@ D.37840,
	beq	.L166	@,
	ldr	r6, [r2, #468]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #65536	@ tmp156,
	beq	.L197	@,
.L166:
	tst	r4, #2	@ D.37840,
	beq	.L164	@,
	ldr	r4, [r2, #504]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #65536	@ tmp161,
	bne	.L164	@,
	ldr	r4, [r2, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L187	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1262,
	beq	.L198	@,
.L179:
	ldr	r2, [r0, #4]	@ temp.1265, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.37840, <variable>.is_reference
	tst	r0, #1	@ D.37840,
	beq	.L180	@,
	ldr	r6, [r2, #468]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #65536	@ tmp208,
	beq	.L199	@,
.L180:
	tst	r0, #2	@ D.37840,
	beq	.L181	@,
	ldr	r0, [r2, #504]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #65536	@ tmp205,
	bne	.L181	@,
	ldr	r0, [r2, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L181	@,
	b	.L187	@
.L197:
	ldr	r6, [r2, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L166	@,
.L188:
	add	r0, r2, #468	@ D.37838, temp.1265,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L199:
	ldr	r6, [r2, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L180	@,
	b	.L188	@
.L190:
	ldr	r2, [r0, #0]	@ D.37827, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L176	@,
	ldr	r4, [r2, #432]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #65536	@ tmp199,
	bne	.L176	@,
	ldr	r4, [r2, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	bne	.L176	@,
.L189:
	add	r0, r2, #432	@ D.37838, D.37827,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L195:
	ldr	r6, [r2, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L171	@,
	b	.L188	@
.L194:
	ldr	r6, [r2, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
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
.LFB1404:
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
	ldr	r5, [r0, ip]	@ D.37920, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.37920,
	beq	.L204	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1293, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.37920,
	add	r0, r0, #184	@ ivtmp.1293, ivtmp.1293,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L212	@,
	ldr	r2, [r0, #0]	@ D.37885, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L214	@,
	ldr	ip, [r2, #432]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #256	@ tmp186,
	bne	.L214	@,
	ldr	ip, [r2, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L214:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.37920, i
	add	r0, r0, #4	@ ivtmp.1293, ivtmp.1293,
	bls	.L204	@,
	cmp	r4, #0	@ tmp168,
	beq	.L209	@,
	cmp	r3, #0	@ structure,
	beq	.L232	@,
	ldr	r2, [r0, #0]	@ temp.1296, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37898, <variable>.is_reference
	tst	r4, #1	@ D.37898,
	beq	.L217	@,
	ldr	r6, [r2, #468]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #256	@ tmp195,
	beq	.L236	@,
.L217:
	tst	r4, #2	@ D.37898,
	beq	.L218	@,
	ldr	r4, [r2, #504]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #256	@ tmp192,
	bne	.L218	@,
	ldr	r4, [r2, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L229	@,
.L218:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1293, ivtmp.1293,
	cmp	r5, ip	@ D.37920, i
	bhi	.L209	@,
.L204:
	mov	r0, #0	@ D.37896,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L212:
	ldr	r2, [r0, #0]	@ temp.1296, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.37898, <variable>.is_reference
	tst	ip, #1	@ D.37898,
	beq	.L213	@,
	ldr	r6, [r2, #468]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #256	@ tmp182,
	beq	.L237	@,
.L213:
	tst	ip, #2	@ D.37898,
	beq	.L214	@,
	ldr	ip, [r2, #504]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #256	@ tmp179,
	bne	.L214	@,
	ldr	ip, [r2, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	ip, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L214	@,
.L229:
	add	r0, r2, #504	@ D.37896, temp.1296,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L238:
	ldr	r2, [r0, #0]	@ D.37885, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L206	@,
	ldr	r4, [r2, #432]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #256	@ tmp151,
	bne	.L206	@,
	ldr	r4, [r2, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L206:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1293,
	bne	.L221	@,
.L240:
	ldr	r2, [r0, #4]	@ D.37885, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L223	@,
	ldr	r0, [r2, #432]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #256	@ tmp212,
	bne	.L223	@,
	ldr	r0, [r2, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r0, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L231	@,
.L223:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1293, tmp170,
	cmp	r5, ip	@ D.37920, i
	bls	.L204	@,
.L209:
	cmp	r3, #0	@ structure,
	beq	.L238	@,
	ldr	r2, [r0, #0]	@ temp.1296, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.37898, <variable>.is_reference
	tst	r4, #1	@ D.37898,
	beq	.L208	@,
	ldr	r6, [r2, #468]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #256	@ tmp156,
	beq	.L239	@,
.L208:
	tst	r4, #2	@ D.37898,
	beq	.L206	@,
	ldr	r4, [r2, #504]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #256	@ tmp161,
	bne	.L206	@,
	ldr	r4, [r2, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L229	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1293,
	beq	.L240	@,
.L221:
	ldr	r2, [r0, #4]	@ temp.1296, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.37898, <variable>.is_reference
	tst	r0, #1	@ D.37898,
	beq	.L222	@,
	ldr	r6, [r2, #468]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #256	@ tmp208,
	beq	.L241	@,
.L222:
	tst	r0, #2	@ D.37898,
	beq	.L223	@,
	ldr	r0, [r2, #504]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #256	@ tmp205,
	bne	.L223	@,
	ldr	r0, [r2, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r0, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L223	@,
	b	.L229	@
.L239:
	ldr	r6, [r2, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L208	@,
.L230:
	add	r0, r2, #468	@ D.37896, temp.1296,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L241:
	ldr	r6, [r2, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L222	@,
	b	.L230	@
.L232:
	ldr	r2, [r0, #0]	@ D.37885, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L218	@,
	ldr	r4, [r2, #432]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #256	@ tmp199,
	bne	.L218	@,
	ldr	r4, [r2, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	bne	.L218	@,
.L231:
	add	r0, r2, #432	@ D.37896, D.37885,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L237:
	ldr	r6, [r2, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L213	@,
	b	.L230	@
.L236:
	ldr	r6, [r2, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
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
.LFB1405:
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
	ldr	r3, [r4, #0]	@ D.37946,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.37946
	ble	.L243	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1343, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1341, RefPicListX, ivtmp.1338,
.L244:
	ldr	r3, [r2], #-4	@ tmp155,
	mov	ip, r7	@ cIdx.1345, ivtmp.1338
	sub	r7, r7, #1	@ ivtmp.1338, ivtmp.1338,
	str	r3, [r1], #-4	@ tmp155,
	ldr	r3, [r4, #0]	@ D.37946,* refIdxLX
	cmp	r3, ip	@ D.37946, cIdx.1345
	blt	.L244	@,
.L243:
	add	r1, r3, #1	@ cIdx.1344, D.37946,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1344
	str	r1, [r4, #0]	@ cIdx.1344,* refIdxLX
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1334, RefPicListX, cIdx.1344,
	rsb	r0, r1, r8	@ tmp159, cIdx.1344, cIdx
	and	ip, r0, #1	@ tmp160, tmp159,
	mov	r3, r1	@ nIdx, cIdx.1344
	ldr	r0, [r2, #0]	@ D.37951,* ivtmp.1334
	cmp	r0, #0	@ D.37951,
	beq	.L252	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L265	@,
.L253:
	add	r3, r1, #1	@ nIdx, cIdx.1344,
	str	r0, [r5, r1, asl #2]	@ D.37951,* RefPicListX
.L252:
	add	r1, r1, #1	@ cIdx.1344, cIdx.1344,
	add	r2, r2, #4	@ ivtmp.1334, ivtmp.1334,
	cmp	r8, r1	@ cIdx, cIdx.1344
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L268:
	cmp	ip, #0	@ tmp160,
	beq	.L248	@,
	ldr	r0, [r2, #0]	@ D.37951,* ivtmp.1334
	cmp	r0, #0	@ D.37951,
	beq	.L255	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	beq	.L266	@,
.L256:
	str	r0, [r5, r3, asl #2]	@ D.37951,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L255:
	add	r1, r1, #1	@ cIdx.1344, cIdx.1344,
	add	r2, r2, #4	@ ivtmp.1334, ivtmp.1334,
	cmp	r8, r1	@ cIdx, cIdx.1344
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L248:
	ldr	r0, [r2, #0]	@ D.37951,* ivtmp.1334
	add	r1, r1, #1	@ tmp161, cIdx.1344,
	add	ip, r2, #4	@ tmp162, ivtmp.1334,
	cmp	r0, #0	@ D.37951,
	beq	.L246	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L247	@,
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	beq	.L246	@,
.L247:
	str	r0, [r5, r3, asl #2]	@ D.37951,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L246:
	ldr	r2, [r2, #4]	@ D.37951,
	cmp	r2, #0	@ D.37951,
	beq	.L259	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	bne	.L260	@,
	ldr	lr, [r2, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	lr, r6	@ <variable>.pic_num, picNumLX
	beq	.L259	@,
.L260:
	str	r2, [r5, r3, asl #2]	@ D.37951,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L259:
	add	r1, r1, #1	@ cIdx.1344, tmp161,
	add	r2, ip, #4	@ ivtmp.1334, tmp162,
	cmp	r8, r1	@ cIdx, cIdx.1344
	bge	.L248	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L265:
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	bne	.L253	@,
	add	r1, r1, #1	@ cIdx.1344, cIdx.1344,
	add	r2, r2, #4	@ ivtmp.1334, ivtmp.1334,
	cmp	r8, r1	@ cIdx, cIdx.1344
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
.LFB1406:
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
	ldr	r3, [r4, #0]	@ D.37988,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.37988
	ble	.L270	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1391, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1389, RefPicListX, ivtmp.1386,
.L271:
	ldr	r3, [r2], #-4	@ tmp151,
	mov	ip, r7	@ cIdx.1393, ivtmp.1386
	sub	r7, r7, #1	@ ivtmp.1386, ivtmp.1386,
	str	r3, [r1], #-4	@ tmp151,
	ldr	r3, [r4, #0]	@ D.37988,* refIdxLX
	cmp	r3, ip	@ D.37988, cIdx.1393
	blt	.L271	@,
.L270:
	add	r1, r3, #1	@ cIdx.1392, D.37988,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1392
	str	r1, [r4, #0]	@ cIdx.1392,* refIdxLX
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1382, RefPicListX, cIdx.1392,
	rsb	r0, r1, r8	@ tmp155, cIdx.1392, cIdx
	and	ip, r0, #1	@ tmp156, tmp155,
	mov	r3, r1	@ nIdx, cIdx.1392
	ldr	r0, [r2, #0]	@ D.37993,* ivtmp.1382
	cmp	r0, #0	@ D.37993,
	beq	.L279	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L292	@,
.L280:
	add	r3, r1, #1	@ nIdx, cIdx.1392,
	str	r0, [r5, r1, asl #2]	@ D.37993,* RefPicListX
.L279:
	add	r1, r1, #1	@ cIdx.1392, cIdx.1392,
	add	r2, r2, #4	@ ivtmp.1382, ivtmp.1382,
	cmp	r8, r1	@ cIdx, cIdx.1392
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L295:
	cmp	ip, #0	@ tmp156,
	beq	.L275	@,
	ldr	r0, [r2, #0]	@ D.37993,* ivtmp.1382
	cmp	r0, #0	@ D.37993,
	beq	.L282	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	bne	.L293	@,
.L283:
	str	r0, [r5, r3, asl #2]	@ D.37993,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L282:
	add	r1, r1, #1	@ cIdx.1392, cIdx.1392,
	add	r2, r2, #4	@ ivtmp.1382, ivtmp.1382,
	cmp	r8, r1	@ cIdx, cIdx.1392
	ldmltfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L275:
	ldr	r0, [r2, #0]	@ D.37993,* ivtmp.1382
	add	r1, r1, #1	@ tmp157, cIdx.1392,
	add	ip, r2, #4	@ tmp158, ivtmp.1382,
	cmp	r0, #0	@ D.37993,
	beq	.L273	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L274	@,
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L273	@,
.L274:
	str	r0, [r5, r3, asl #2]	@ D.37993,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L273:
	ldr	r2, [r2, #4]	@ D.37993,
	cmp	r2, #0	@ D.37993,
	beq	.L286	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	beq	.L287	@,
	ldr	lr, [r2, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	lr, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L286	@,
.L287:
	str	r2, [r5, r3, asl #2]	@ D.37993,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L286:
	add	r1, r1, #1	@ cIdx.1392, tmp157,
	add	r2, ip, #4	@ ivtmp.1382, tmp158,
	cmp	r8, r1	@ cIdx, cIdx.1392
	bge	.L275	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L292:
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L280	@,
	add	r1, r1, #1	@ cIdx.1392, cIdx.1392,
	add	r2, r2, #4	@ ivtmp.1382, ivtmp.1382,
	cmp	r8, r1	@ cIdx, cIdx.1392
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
.LFB1407:
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
	ldr	r3, [r9, #0]	@ D.38055,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.38055,
	beq	.L308	@,
	tst	r7, #1	@ num_ref_idx_lX_active_minus1,
	mov	r2, #0	@ D.38053,
	ldr	r6, [fp, #-60]	@ picNumLXPred, %sfp
	mov	r4, r2	@ i, D.38053
	sub	sl, fp, #48	@ tmp198,,
	bne	.L299	@,
	cmp	r3, #1	@ D.38055,
	bls	.L322	@,
	ldr	r4, [fp, #12]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	ldr	r3, [r4, #0]	@ tmp206,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L323:
	mov	r2, #4	@ D.38053,
	mov	r4, #1	@ i,
	ldr	r3, [r9, r2]	@ D.38055,* D.38053
	cmp	r3, #3	@ D.38055,
	bne	.L299	@,
.L308:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L300:
	ldr	r1, [fp, #12]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r1, r2]	@ tmp179,* D.38053
	mov	r1, r8	@, list
	mov	r2, r7	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L305:
	ldr	lr, [fp, #-64]	@, %sfp
	add	r4, r4, #1	@ tmp202, i,
	cmp	lr, r4	@, tmp202
	bls	.L308	@,
	ldr	r3, [r9, r4, asl #2]	@ D.38055,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.38055,
	beq	.L308	@,
	cmp	r3, #1	@ D.38055,
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
	ldr	r3, [r9, r4, asl #2]	@ D.38055,* reordering_of_pic_nums_idc
	mov	r2, r4, asl #2	@ D.38053, i,
	cmp	r3, #3	@ D.38055,
	beq	.L308	@,
.L299:
	cmp	r3, #1	@ D.38055,
	bhi	.L300	@,
	cmp	r3, #0	@ D.38055,
	bne	.L301	@,
	ldr	r1, [fp, #8]	@, abs_diff_pic_num_minus1
	ldr	r0, [r1, r2]	@ tmp175,* D.38053
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
	cmp	r3, #0	@ D.38055,
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
	ldr	ip, [r1, r2]	@ tmp177,* D.38053
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
	cmp	r3, #0	@ D.38055,
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
.LFB1408:
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
.LFB1409:
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
.LFB1410:
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
.LFB1411:
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
	ldr	r2, [ip, #12]	@ D.38131, <variable>.pic_num
	ldr	r3, [r1, #12]	@ D.38134, <variable>.pic_num
	cmp	r2, r3	@ D.38131, D.38134
	movlt	r0, #1	@ D.38137,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.38137,
	mvngt	r0, #0	@ D.38137,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.align	2
	.global	compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc, %function
compare_pic_by_lt_pic_num_asc:
	.fnstart
.LFB1412:
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
	ldr	r2, [ip, #8]	@ D.38146, <variable>.long_term_pic_num
	ldr	r3, [r1, #8]	@ D.38149, <variable>.long_term_pic_num
	cmp	r2, r3	@ D.38146, D.38149
	mvnlt	r0, #0	@ D.38152,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.38152
	movgt	r0, #1	@, D.38152
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.align	2
	.global	compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc, %function
compare_fs_by_frame_num_desc:
	.fnstart
.LFB1413:
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
	ldr	r2, [ip, #548]	@ D.38161, <variable>.frame_num_wrap
	ldr	r3, [r1, #548]	@ D.38164, <variable>.frame_num_wrap
	cmp	r2, r3	@ D.38161, D.38164
	movlt	r0, #1	@ D.38167,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.38167,
	mvngt	r0, #0	@ D.38167,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.align	2
	.global	compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc, %function
compare_fs_by_lt_pic_idx_asc:
	.fnstart
.LFB1414:
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
	ldr	r2, [ip, #552]	@ D.38176, <variable>.long_term_frame_idx
	ldr	r3, [r1, #552]	@ D.38179, <variable>.long_term_frame_idx
	cmp	r2, r3	@ D.38176, D.38179
	mvncc	r0, #0	@ D.38182,
	ldmccfd	sp, {fp, sp, pc}	@
	movls	r0, #0	@, D.38182
	movhi	r0, #1	@, D.38182
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.align	2
	.global	compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc, %function
compare_pic_by_poc_asc:
	.fnstart
.LFB1415:
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
	ldr	r2, [ip, #16]	@ D.38191, <variable>.poc
	ldr	r3, [r1, #16]	@ D.38194, <variable>.poc
	cmp	r2, r3	@ D.38191, D.38194
	mvnlt	r0, #0	@ D.38197,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.38197
	movgt	r0, #1	@, D.38197
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.align	2
	.global	compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc, %function
compare_pic_by_poc_desc:
	.fnstart
.LFB1416:
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
	ldr	r2, [ip, #16]	@ D.38206, <variable>.poc
	ldr	r3, [r1, #16]	@ D.38209, <variable>.poc
	cmp	r2, r3	@ D.38206, D.38209
	movlt	r0, #1	@ D.38212,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.38212,
	mvngt	r0, #0	@ D.38212,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.align	2
	.global	compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc, %function
compare_fs_by_poc_asc:
	.fnstart
.LFB1417:
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
	ldr	r2, [ip, #556]	@ D.38221, <variable>.poc
	ldr	r3, [r1, #556]	@ D.38224, <variable>.poc
	cmp	r2, r3	@ D.38221, D.38224
	mvnlt	r0, #0	@ D.38227,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@, D.38227
	movgt	r0, #1	@, D.38227
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.align	2
	.global	compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc, %function
compare_fs_by_poc_desc:
	.fnstart
.LFB1418:
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
	ldr	r2, [ip, #556]	@ D.38236, <variable>.poc
	ldr	r3, [r1, #556]	@ D.38239, <variable>.poc
	cmp	r2, r3	@ D.38236, D.38239
	movlt	r0, #1	@ D.38242,
	ldmltfd	sp, {fp, sp, pc}	@
	movle	r0, #0	@ D.38242,
	mvngt	r0, #0	@ D.38242,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.align	2
	.global	GenPiclistfromFrmlist
	.type	GenPiclistfromFrmlist, %function
GenPiclistfromFrmlist:
	.fnstart
.LFB1419:
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
	movcc	r4, r2	@ list_idx.1827, list_idx
	movcs	r4, #31	@ list_idx.1827,
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
	mov	r8, #0	@ bot_idx.1805,
	mov	r6, r5	@ is_ref, is_ref
	mov	sl, r8	@ top_idx, bot_idx.1805
	str	r1, [fp, #-48]	@ fs_list, %sfp
.L447:
	cmp	sl, r4	@ top_idx, list_idx.1827
	movcs	r2, #0	@,
	movcc	r2, #1	@,
	str	r2, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r8, r4	@ bot_idx.1805, list_idx.1827
	movcs	r3, #0	@, temp.1799
	movcc	r3, #1	@, temp.1799
	orrs	r1, r3, r1	@, temp.1799,
	beq	.L397	@,
	cmp	r3, #0	@ temp.1799,
	beq	.L402	@,
	ldr	ip, [fp, #-48]	@, %sfp
	mvn	r7, r8	@ tmp235, bot_idx.1805
	add	r5, r7, r4	@ tmp234, tmp235, list_idx.1827
	and	r5, r5, #1	@ tmp236, tmp234,
	add	r7, ip, r8, asl #2	@, ivtmp.1786,, bot_idx.1805,
	ldr	r0, [ip, r8, asl #2]	@ temp.1801,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L469	@,
.L431:
	add	r8, r8, #1	@ bot_idx.1805, bot_idx.1805,
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	cmp	r8, r4	@ bot_idx.1805, list_idx.1827
	bcs	.L402	@,
	cmp	r5, #0	@ tmp236,
	beq	.L401	@,
	ldr	r0, [r7, #0]	@ temp.1801,* ivtmp.1786
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L470	@,
.L433:
	add	r8, r8, #1	@ bot_idx.1805, bot_idx.1805,
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	cmp	r8, r4	@ bot_idx.1805, list_idx.1827
	bcc	.L401	@,
	b	.L402	@
.L399:
	add	r7, r7, #4	@ ivtmp.1786, ivtmp.1786,
	add	r8, r8, #1	@ bot_idx.1805, bot_idx.1805,
	ldr	r0, [r7, #0]	@ temp.1801,* ivtmp.1786
	mov	r9, r8	@ tmp237, bot_idx.1805
	mov	r5, r7	@ tmp238, ivtmp.1786
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L471	@,
.L436:
	add	r8, r9, #1	@ bot_idx.1805, tmp237,
	add	r7, r5, #4	@ ivtmp.1786, tmp238,
	cmp	r8, r4	@ bot_idx.1805, list_idx.1827
	bcs	.L402	@,
.L401:
	ldr	r0, [r7, #0]	@ temp.1801,* ivtmp.1786
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	beq	.L399	@,
	add	r0, r0, #504	@, temp.1801,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L399	@,
.L455:
	ldr	r0, [fp, #4]	@, list_size
	add	r8, r8, #1	@ bot_idx.1805, bot_idx.1805,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	lr, [r7, #0]	@ tmp195,* ivtmp.1786
	ldr	r3, [r0, #0]	@ tmp194,
	add	r2, lr, #504	@ tmp196, tmp195,
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
	add	r7, r5, r4	@ tmp229, tmp230, list_idx.1827
	and	r7, r7, #1	@ tmp231, tmp229,
	add	r5, r3, sl, asl #2	@, ivtmp.1781,, top_idx,
	ldr	r0, [r3, sl, asl #2]	@ temp.1815,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L472	@,
.L424:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	sl, r4	@ top_idx, list_idx.1827
	bcs	.L447	@,
	cmp	r7, #0	@ tmp231,
	beq	.L404	@,
	ldr	r0, [r5, #0]	@ temp.1815,* ivtmp.1781
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	bne	.L473	@,
.L426:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	sl, r4	@ top_idx, list_idx.1827
	bcc	.L404	@,
	b	.L447	@
.L403:
	add	r5, r5, #4	@ ivtmp.1781, ivtmp.1781,
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r0, [r5, #0]	@ temp.1815,* ivtmp.1781
	mov	r9, sl	@ tmp232, top_idx
	mov	r7, r5	@ tmp233, ivtmp.1781
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L474	@,
.L429:
	add	sl, r9, #1	@ top_idx, tmp232,
	add	r5, r7, #4	@ ivtmp.1781, tmp233,
	cmp	sl, r4	@ top_idx, list_idx.1827
	bcs	.L447	@,
.L404:
	ldr	r0, [r5, #0]	@ temp.1815,* ivtmp.1781
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	beq	.L403	@,
	add	r0, r0, #468	@, temp.1815,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L403	@,
.L454:
	ldr	r0, [fp, #4]	@, list_size
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	lr, [r5, #0]	@ tmp204,* ivtmp.1781
	ldr	r3, [r0, #0]	@ tmp203,
	add	r2, lr, #468	@ tmp205, tmp204,
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
	add	r0, r0, #468	@, temp.1815,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L429	@,
	b	.L454	@
.L471:
	add	r0, r0, #504	@, temp.1801,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L436	@,
	b	.L455	@
.L469:
	add	r0, r0, #504	@, temp.1801,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L431	@,
	b	.L455	@
.L472:
	add	r0, r0, #468	@, temp.1815,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L424	@,
	b	.L454	@
.L473:
	add	r0, r0, #468	@, temp.1815,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L426	@,
	b	.L454	@
.L470:
	add	r0, r0, #504	@, temp.1801,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L433	@,
	b	.L455	@
.L468:
	mov	r8, #0	@ bot_idx,
	mov	r6, r5	@ is_ref, is_ref
	mov	sl, r8	@ top_idx.1810, bot_idx
	str	r1, [fp, #-48]	@ fs_list, %sfp
.L442:
	cmp	r8, r4	@ bot_idx, list_idx.1827
	movcs	r1, #0	@,
	movcc	r1, #1	@,
	cmp	sl, r4	@ top_idx.1810, list_idx.1827
	movcs	r3, #0	@, D.38311
	movcc	r3, #1	@, D.38311
	str	r1, [fp, #-52]	@, %sfp
	orrs	r1, r1, r3	@,, D.38311
	beq	.L397	@,
	cmp	r3, #0	@ D.38311,
	beq	.L394	@,
	ldr	r3, [fp, #-48]	@, %sfp
	mvn	r7, sl	@ tmp225, top_idx.1810
	add	r5, r7, r4	@ tmp224, tmp225, list_idx.1827
	and	r5, r5, #1	@ tmp226, tmp224,
	add	r7, r3, sl, asl #2	@, ivtmp.1776,, top_idx.1810,
	ldr	r0, [r3, sl, asl #2]	@ D.38284,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L475	@,
.L417:
	add	sl, sl, #1	@ top_idx.1810, top_idx.1810,
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	cmp	sl, r4	@ top_idx.1810, list_idx.1827
	bcs	.L394	@,
	cmp	r5, #0	@ tmp226,
	beq	.L393	@,
	ldr	r0, [r7, #0]	@ D.38284,* ivtmp.1776
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L476	@,
.L419:
	add	sl, sl, #1	@ top_idx.1810, top_idx.1810,
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	cmp	sl, r4	@ top_idx.1810, list_idx.1827
	bcc	.L393	@,
	b	.L394	@
.L391:
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	add	sl, sl, #1	@ top_idx.1810, top_idx.1810,
	ldr	r0, [r7, #0]	@ D.38284,* ivtmp.1776
	mov	r9, sl	@ tmp228, top_idx.1810
	mov	r5, r7	@ tmp227, ivtmp.1776
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #1	@ <variable>.is_used,
	bne	.L477	@,
.L422:
	add	sl, r9, #1	@ top_idx.1810, tmp228,
	add	r7, r5, #4	@ ivtmp.1776, tmp227,
	cmp	sl, r4	@ top_idx.1810, list_idx.1827
	bcs	.L394	@,
.L393:
	ldr	r0, [r7, #0]	@ D.38284,* ivtmp.1776
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	beq	.L391	@,
	add	r0, r0, #468	@, D.38284,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L391	@,
.L453:
	ldr	r1, [fp, #4]	@, list_size
	add	sl, sl, #1	@ top_idx.1810, top_idx.1810,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r0, [r7, #0]	@ tmp170,* ivtmp.1776
	ldr	r3, [r1, #0]	@ tmp169,
	add	r2, r0, #468	@ tmp171, tmp170,
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
	add	r7, r5, r4	@ tmp219, tmp220, list_idx.1827
	and	r7, r7, #1	@ tmp221, tmp219,
	add	r5, r1, r8, asl #2	@, ivtmp.1771,, bot_idx,
	ldr	r0, [r1, r8, asl #2]	@ D.38301,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L478	@,
.L410:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r5, r5, #4	@ ivtmp.1771, ivtmp.1771,
	cmp	r8, r4	@ bot_idx, list_idx.1827
	bcs	.L442	@,
	cmp	r7, #0	@ tmp221,
	beq	.L396	@,
	ldr	r0, [r5, #0]	@ D.38301,* ivtmp.1771
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #2	@ <variable>.is_used,
	bne	.L479	@,
.L412:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r5, r5, #4	@ ivtmp.1771, ivtmp.1771,
	cmp	r8, r4	@ bot_idx, list_idx.1827
	bcc	.L396	@,
	b	.L442	@
.L395:
	add	r5, r5, #4	@ ivtmp.1771, ivtmp.1771,
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [r5, #0]	@ D.38301,* ivtmp.1771
	mov	r9, r8	@ tmp222, bot_idx
	mov	r7, r5	@ tmp223, ivtmp.1771
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L480	@,
.L415:
	add	r8, r9, #1	@ bot_idx, tmp222,
	add	r5, r7, #4	@ ivtmp.1771, tmp223,
	cmp	r8, r4	@ bot_idx, list_idx.1827
	bcs	.L442	@,
.L396:
	ldr	r0, [r5, #0]	@ D.38301,* ivtmp.1771
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	beq	.L395	@,
	add	r0, r0, #504	@, D.38301,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L395	@,
.L452:
	ldr	r0, [fp, #4]	@, list_size
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	lr, [r5, #0]	@ tmp179,* ivtmp.1771
	ldr	r3, [r0, #0]	@ tmp178,
	add	ip, lr, #504	@ tmp180, tmp179,
	str	ip, [r1, r3, asl #2]	@ tmp180,
	ldr	lr, [fp, #4]	@, list_size
	ldr	r2, [lr, #0]	@ tmp181,
	add	r0, r2, #1	@ tmp182, tmp181,
	str	r0, [lr, #0]	@ tmp182,
	b	.L442	@
.L480:
	add	r0, r0, #504	@, D.38301,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L415	@,
	b	.L452	@
.L477:
	add	r0, r0, #468	@, D.38284,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L422	@,
	b	.L453	@
.L478:
	add	r0, r0, #504	@, D.38301,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L410	@,
	b	.L452	@
.L475:
	add	r0, r0, #468	@, D.38284,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L417	@,
	b	.L453	@
.L476:
	add	r0, r0, #468	@, D.38284,
	blx	r6	@ is_ref
	cmp	r0, #0	@,
	beq	.L419	@,
	b	.L453	@
.L479:
	add	r0, r0, #504	@, D.38301,
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
.LFB1422:
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
	ldr	r6, [r0, r3]	@ D.38591, <variable>.DPB.used_size
	mov	r1, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.38591,
	mvneq	r0, #0	@ nearest_pic_id,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r4, #26424	@ tmp147,
	cmp	r6, #1	@ D.38591,
	ldr	ip, [r1, r4]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #51436	@ tmp145,
	ldr	r4, [r1, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r0, #0	@ nearest_pic_id,
	ldr	r2, [ip, #556]	@ nearest_poc, <variable>.poc
	ldmlsfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r0, r1, #26368	@ tmp151, pH264Ctx,
	sub	r6, r6, #1	@ tmp149, D.38591,
	add	r5, r0, #60	@ tmp151, tmp151,
	rsb	r2, r2, r4	@ tmp148, nearest_poc, curr_poc
	mov	r6, r6, asl #2	@ D.45108, tmp149,
	cmp	r2, #0	@ tmp148,
	ldr	ip, [r5, #0]	@ D.38598, <variable>.DPB.fs
	sub	r3, r6, #4	@ tmp158, D.45108,
	ubfx	r5, r3, #2, #1	@ tmp159, tmp158,,
	rsblt	r2, r2, #0	@ nearest_poc_diff, tmp148
	mov	r0, #0	@ nearest_pic_id,
	ldr	r3, [ip, #556]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp153, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp153,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp153
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	blt	.L499	@,
	mov	r3, #4	@ ivtmp.1862,
	cmp	r3, r6	@ ivtmp.1862, D.45108
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L500:
	cmp	r5, #0	@ tmp159,
	beq	.L486	@,
	add	ip, r1, r3	@ tmp177, pH264Ctx, ivtmp.1862
	add	r3, r3, #4	@ ivtmp.1862, ivtmp.1862,
	add	r5, ip, #26368	@ tmp179, tmp177,
	add	ip, r5, #60	@ tmp179, tmp179,
	ldr	r5, [ip, #0]	@ D.38598, <variable>.DPB.fs
	ldr	ip, [r5, #556]	@ <variable>.poc, <variable>.poc
	rsb	ip, ip, r4	@ tmp182, <variable>.poc, curr_poc
	cmp	ip, #0	@ tmp182,
	rsblt	ip, ip, #0	@ new_poc_diff, tmp182
	cmp	ip, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, ip	@ nearest_poc_diff, new_poc_diff
	cmp	r3, r6	@ ivtmp.1862, D.45108
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L486:
	add	r5, r1, r3	@ tmp162, pH264Ctx, ivtmp.1862
	add	ip, r3, #4	@ tmp160, ivtmp.1862,
	add	r3, r5, #26368	@ tmp163, tmp162,
	add	r7, r1, ip	@ tmp170, pH264Ctx, tmp160
	add	r7, r7, #26368	@ tmp171, tmp170,
	ldr	r5, [r3, #60]	@ D.38598, <variable>.DPB.fs
	ldr	r3, [r5, #556]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp167, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp167,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp167
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
	ldr	r5, [r7, #60]	@ D.38598, <variable>.DPB.fs
	ldr	r3, [r5, #556]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp175, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp175,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp175
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
.L494:
	add	r3, ip, #4	@ ivtmp.1862, tmp160,
	cmp	r3, r6	@ ivtmp.1862, D.45108
	bne	.L486	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L499:
	mov	r2, r3	@ nearest_poc_diff, new_poc_diff
	mov	r3, #4	@ ivtmp.1862,
	cmp	r3, r6	@ ivtmp.1862, D.45108
	ldr	r0, [ip, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	bne	.L500	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	FindNearestPOCPicId, .-FindNearestPOCPicId
	.align	2
	.global	FindMinRefIdx
	.type	FindMinRefIdx, %function
FindMinRefIdx:
	.fnstart
.LFB1423:
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
	movw	r1, #50979	@ tmp156,
	ldrb	r0, [r9, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	bne	.L543	@,
	movw	r1, #20716	@ tmp160,
	add	r6, r9, #26880	@ ivtmp.1913, pH264Ctx,
	ldr	r3, [r9, r1]	@, <variable>.CurrSlice.listXsize
	mov	sl, r1	@ tmp179, tmp160
	mov	r2, r6	@ tmp180, ivtmp.1913
	add	r6, r6, #20	@ ivtmp.1913, ivtmp.1913,
	add	r8, r2, #148	@ ivtmp.1905, tmp180,
	str	r3, [fp, #-48]	@, %sfp
.L505:
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #0	@,
	beq	.L509	@,
	ldr	r2, [r8, #0]	@ tmp206, <variable>.pListX
	mov	r1, #32	@ minrefidx,
	ldr	r7, [r9, sl]	@ temp.1931, <variable>.CurrSlice.listXsize
	ldr	r3, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	ip, r7, #1	@ tmp189, temp.1931,
	and	ip, ip, #1	@ tmp191, tmp189,
	ldr	r2, [r3, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r2, r0	@ <variable>.apc_idc, i
	beq	.L544	@,
.L517:
	mov	r2, #1	@ j,
	cmp	r7, r2	@ temp.1931, j
	add	r3, r8, #4	@ ivtmp.1905, ivtmp.1905,
	bls	.L537	@,
	cmp	ip, #0	@ tmp191,
	beq	.L507	@,
	ldr	ip, [r8, #4]	@ tmp227, <variable>.pListX
	ldr	ip, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [ip, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	ip, r0	@ <variable>.apc_idc, i
	beq	.L545	@,
.L519:
	add	r2, r2, #1	@ j, j,
	add	r3, r3, #4	@ ivtmp.1905, ivtmp.1905,
	cmp	r7, r2	@ temp.1931, j
	bhi	.L507	@,
	b	.L537	@
.L506:
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	beq	.L546	@,
.L522:
	add	r2, ip, #1	@ j, tmp192,
	add	r3, r4, #4	@ ivtmp.1905, tmp193,
	cmp	r7, r2	@ temp.1931, j
	bls	.L537	@,
.L507:
	ldr	r5, [r3, #0]	@ tmp162, <variable>.pListX
	add	ip, r2, #1	@ tmp192, j,
	add	r4, r3, #4	@ tmp193, ivtmp.1905,
	ldr	r5, [r5, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r5, [r5, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r5, r0	@ <variable>.apc_idc, i
	bne	.L506	@,
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	bne	.L522	@,
.L546:
	add	r2, ip, #1	@ j, tmp192,
	cmp	r1, ip	@ minrefidx, tmp192
	movcs	r1, ip	@ minrefidx, tmp192
	cmp	r7, r2	@ temp.1931, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1905, tmp193,
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
	add	r6, r6, #8	@ ivtmp.1913, ivtmp.1913,
	cmp	r0, #16	@ i,
	bne	.L505	@,
.L514:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L543:
	add	r8, r9, #26880	@ ivtmp.1927, pH264Ctx,
	movw	ip, #20716	@ tmp158,
	ldr	r2, [r9, ip]	@, <variable>.CurrSlice.listXsize
	mov	r0, #0	@ i.1938,
	mov	sl, r8	@ tmp185, ivtmp.1927
	add	r8, r8, #20	@ ivtmp.1927, ivtmp.1927,
	add	sl, sl, #148	@ ivtmp.1919, tmp185,
	str	r2, [fp, #-48]	@, %sfp
.L504:
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #0	@,
	beq	.L513	@,
	ldr	r3, [sl, #0]	@ temp.1934, <variable>.pListX
	movw	r2, #20716	@,
	ldr	r7, [r9, r2]	@ temp.1932, <variable>.CurrSlice.listXsize
	mov	r6, #32	@ minrefidx.1930,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	r1, r7, #1	@ tmp194, temp.1932,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	and	r1, r1, #1	@ tmp196, tmp194,
	ldr	r3, [ip, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp225, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp226, tmp225
	cmp	r3, r0	@ tmp226, i.1938
	beq	.L547	@,
.L524:
	mov	r2, #1	@ j.1937,
	cmp	r7, r2	@ temp.1932, j.1937
	add	r3, sl, #4	@ ivtmp.1919, ivtmp.1919,
	bls	.L538	@,
	cmp	r1, #0	@ tmp196,
	beq	.L511	@,
	ldr	r1, [sl, #4]	@ temp.1934, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r1, [ip, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r1, r1, asl r2	@ tmp235, <variable>.apc_idc,
	cmp	r4, #2	@ <variable>.structure,
	orreq	r1, r1, #1	@,, tmp236, tmp235
	cmp	r1, r0	@ tmp236, i.1938
	beq	.L548	@,
.L526:
	add	r2, r2, #1	@ j.1937, j.1937,
	add	r3, r3, #4	@ ivtmp.1919, ivtmp.1919,
	cmp	r7, r2	@ temp.1932, j.1937
	bhi	.L511	@,
	b	.L538	@
.L510:
	ldr	r3, [r3, #4]	@ temp.1934, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r3, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp216, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp217, tmp216
	cmp	r3, r0	@ tmp217, i.1938
	beq	.L549	@,
	add	r2, ip, #1	@ j.1937, tmp197,
	add	r3, r4, #4	@ ivtmp.1919, tmp198,
	cmp	r7, r2	@ temp.1932, j.1937
	bls	.L538	@,
.L511:
	ldr	r1, [r3, #0]	@ temp.1934, <variable>.pListX
	add	ip, r2, #1	@ tmp197, j.1937,
	add	r4, r3, #4	@ tmp198, ivtmp.1919,
	ldr	r5, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r5, [r5, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r5, r5, asl #1	@ tmp173, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	movne	r1, r5	@, tmp175, tmp173
	orreq	r1, r5, #1	@,, tmp175, tmp173
	cmp	r1, r0	@ tmp175, i.1938
	bne	.L510	@,
	cmp	r6, r2	@ minrefidx.1930, j.1937
	movcs	r6, r2	@ minrefidx.1930, j.1937
	str	r6, [r8, #0]	@ minrefidx.1930, <variable>.APC.RefIdx
	b	.L510	@
.L549:
	add	r2, ip, #1	@ j.1937, tmp197,
	cmp	r6, ip	@ minrefidx.1930, tmp197
	movcs	r6, ip	@ minrefidx.1930, tmp197
	cmp	r7, r2	@ temp.1932, j.1937
	str	r6, [r8, #0]	@ minrefidx.1930, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1919, tmp198,
	bhi	.L511	@,
.L538:
	cmp	r6, #31	@ minrefidx.1930,
	bls	.L512	@,
.L513:
	mov	ip, #0	@,
	str	ip, [r8, #0]	@, <variable>.APC.RefIdx
.L512:
	add	r0, r0, #1	@ i.1938, i.1938,
	add	r8, r8, #4	@ ivtmp.1927, ivtmp.1927,
	cmp	r0, #32	@ i.1938,
	bne	.L504	@,
	b	.L514	@
.L547:
	mov	r6, #0	@ minrefidx.1930,
	str	r6, [r8, #0]	@ minrefidx.1930, <variable>.APC.RefIdx
	b	.L524	@
.L548:
	cmp	r6, r2	@ minrefidx.1930, j.1937
	movcs	r6, r2	@ minrefidx.1930, j.1937
	str	r6, [r8, #0]	@ minrefidx.1930, <variable>.APC.RefIdx
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
.LFB1425:
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
	movw	r3, #52652	@ tmp169,
	ldr	r5, [r0, r3]	@ D.38690, <variable>.TotalFsNum
	cmp	r5, #0	@ D.38690,
	beq	.L551	@,
	add	r3, r0, #27648	@ ivtmp.1970, pH264Ctx,
	sub	r1, r5, #1	@ tmp187, D.38690,
	and	r4, r1, #1	@ tmp189, tmp187,
	mov	ip, #0	@ tmp181,
	ldr	r2, [r3, #212]!	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r2, #1	@ <variable>.is_displayed,
	beq	.L564	@,
	ldrb	r2, [r3, #-560]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #1	@ <variable>.is_in_dpb,
	beq	.L564	@,
.L565:
	mov	r1, #1	@ i,
	cmp	r1, r5	@ i, D.38690
	add	r3, r3, #592	@ ivtmp.1970, ivtmp.1970,
	bcs	.L551	@,
	cmp	r4, #0	@ tmp189,
	beq	.L554	@,
	ldr	r2, [r3, #0]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r2, r1	@ <variable>.is_displayed,
	beq	.L567	@,
	ldrb	r2, [r3, #-560]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #1	@ <variable>.is_in_dpb,
	beq	.L567	@,
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #592	@ ivtmp.1970, ivtmp.1970,
	cmp	r1, r5	@ i, D.38690
	bcc	.L554	@,
.L551:
	movw	r2, #52656	@ tmp177,
	ldr	ip, [r0, r2]	@ D.38691, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.38691,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r3, r0, #52480	@ tmp178, pH264Ctx,
	mov	r2, #1	@ i.1976,
	add	r4, r3, #104	@ ivtmp.1965, tmp178,
	cmp	r2, ip	@ i.1976, D.38691
	sub	r1, ip, #1	@ tmp182, D.38691,
	mov	r0, #0	@ tmp180,
	str	r0, [r4, #0]	@ tmp180, <variable>.PmvStoreUsedFlag
	and	r4, r1, r2	@ tmp184, tmp182,
	add	r1, r3, #108	@ ivtmp.1965, tmp178,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp184,
	beq	.L556	@,
	mov	r2, #2	@ i.1976,
	cmp	r2, ip	@ i.1976, D.38691
	str	r0, [r1, #0]	@ tmp180, <variable>.PmvStoreUsedFlag
	add	r1, r3, #112	@ ivtmp.1965, tmp178,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L556:
	add	r2, r2, #2	@ i.1976, i.1976,
	mov	r3, r1	@ tmp186, ivtmp.1965
	cmp	r2, ip	@ i.1976, D.38691
	str	r0, [r3], #4	@ tmp180, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp180, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.1965, tmp186,
	bcc	.L556	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L579:
	ldrb	r4, [r3, #-560]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #1	@ <variable>.is_in_dpb,
	beq	.L552	@,
	ldr	r3, [r3, #592]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r3, #1	@ <variable>.is_displayed,
	beq	.L571	@,
.L577:
	ldrb	r3, [r2, #-560]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r3, #1	@ <variable>.is_in_dpb,
	beq	.L571	@,
.L572:
	add	r1, r1, #1	@ i, tmp191,
	add	r3, r2, #592	@ ivtmp.1970, tmp190,
	cmp	r1, r5	@ i, D.38690
	bcs	.L551	@,
.L554:
	ldr	r4, [r3, #0]	@ <variable>.is_displayed, <variable>.is_displayed
	add	r1, r1, #1	@ tmp191, i,
	add	r2, r3, #592	@ tmp190, ivtmp.1970,
	cmp	r4, #1	@ <variable>.is_displayed,
	bne	.L579	@,
.L552:
	strb	ip, [r3, #-563]	@ tmp181, <variable>.is_used
	strb	ip, [r3, #-562]	@ tmp181, <variable>.is_reference
	ldr	r3, [r3, #592]	@ <variable>.is_displayed, <variable>.is_displayed
	cmp	r3, #1	@ <variable>.is_displayed,
	bne	.L577	@,
.L571:
	strb	ip, [r2, #-563]	@ tmp181, <variable>.is_used
	strb	ip, [r2, #-562]	@ tmp181, <variable>.is_reference
	b	.L572	@
.L567:
	add	r1, r1, #1	@ i, i,
	strb	ip, [r3, #-563]	@ tmp181, <variable>.is_used
	cmp	r1, r5	@ i, D.38690
	strb	ip, [r3, #-562]	@ tmp181, <variable>.is_reference
	add	r3, r3, #592	@ ivtmp.1970, ivtmp.1970,
	bcc	.L554	@,
	b	.L551	@
.L564:
	strb	ip, [r3, #-563]	@ tmp181, <variable>.is_used
	strb	ip, [r3, #-562]	@ tmp181, <variable>.is_reference
	b	.L565	@
	.fnend
	.size	NoPicOut, .-NoPicOut
	.align	2
	.global	wait_vo
	.type	wait_vo, %function
wait_vo:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	wait_vo, .-wait_vo
	.align	2
	.global	GetReRangeFlag
	.type	GetReRangeFlag, %function
GetReRangeFlag:
	.fnstart
.LFB1429:
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
	ldr	r1, [r5, #3972]	@ prephitmp.2013, <variable>.dpb_size_plus1
	ldr	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	add	r8, r8, #1	@ tmp173, <variable>.DPB.size,
	cmp	r1, r8	@ prephitmp.2013, tmp173
	bls	.L587	@,
.L583:
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r1, #0]	@ g_event_report.596, g_event_report
	cmp	r3, #0	@ g_event_report.596,
	beq	.L588	@,
	movw	lr, #54168	@ tmp184,
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
	blx	r3	@ g_event_report.596
	ldr	r1, [r5, #3972]	@ prephitmp.2013, <variable>.dpb_size_plus1
	mov	r3, #1	@ prephitmp.2025,
.L587:
	mov	r0, r3	@ ReRangeFlg, prephitmp.2025
.L584:
	movw	r2, #14332	@ tmp187,
	ldr	ip, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r4, r2]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r2, #17560	@ tmp192,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r5, ip	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	orrne	r3, r3, #1	@,, dpb_changed, prephitmp.2025
	cmp	r2, r1	@ <variable>.CurrSPS.dpb_size_plus1, prephitmp.2013
	moveq	ip, r3	@, tmp196, dpb_changed
	orrne	ip, r3, #1	@,, tmp196, dpb_changed
	str	ip, [r6, #0]	@ tmp196,* p_dpb_changed
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L588:
	mov	r3, #1	@ prephitmp.2025,
	ldr	r1, [r5, #3972]	@ prephitmp.2013, <variable>.dpb_size_plus1
	mov	r0, r3	@ ReRangeFlg, prephitmp.2025
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
.LFB1430:
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
	ldr	ip, [r5, #2904]	@ D.38866, <variable>.log2_max_pic_order_cnt_lsb_minus4
	add	r0, r0, #4	@ tmp184, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r0	@ MaxFrameNum, tmp186,
	beq	.L592	@,
	bcs	.L644	@,
	cmp	r1, #0	@ tmp171,
	add	ip, ip, #4	@ tmp188, D.38866,
	mov	r2, r2, asl ip	@ MaxPicOrderCntLsb, tmp186,
	bne	.L645	@,
	movw	r3, #19812	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	ip, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L596	@,
	movw	r1, #19796	@ tmp197,
	movw	r5, #19800	@ tmp196,
	ldr	ip, [r4, r1]	@ prephitmp.2063, <variable>.CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, r5]	@ prephitmp.2061, <variable>.CurrPOC.PrevPicOrderCntLsb
	mov	r5, ip	@ prephitmp.2065, prephitmp.2063
.L597:
	movw	r3, #19788	@ tmp208,
	ldr	r0, [r4, r3]	@ D.38889, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.38889, prephitmp.2061
	bcs	.L599	@,
	rsb	r3, r0, r1	@ tmp209, D.38889, prephitmp.2061
	cmp	r3, r2, lsr #1	@ tmp209, MaxPicOrderCntLsb,
	addcs	r3, r5, r2	@ D.38898, prephitmp.2065, MaxPicOrderCntLsb
	movwcs	r2, #19804	@ tmp212,
	strcs	r3, [r4, r2]	@ D.38898, <variable>.CurrPOC.PicOrderCntMsb
	bcs	.L602	@,
.L599:
	movw	r3, #19796	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.2131, <variable>.CurrPOC.PrevPicOrderCntMsb
.L601:
	cmp	r1, r0	@ prephitmp.2061, D.38889
	bcs	.L603	@,
	rsb	r1, r1, r0	@ tmp214, prephitmp.2061, D.38889
	cmp	r1, r2, lsr #1	@ tmp214, MaxPicOrderCntLsb,
	bhi	.L646	@,
.L603:
	movw	r0, #19804	@ tmp217,
	str	ip, [r4, r0]	@ prephitmp.2063, <variable>.CurrPOC.PicOrderCntMsb
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
	add	r2, r3, ip	@ D.38912, prephitmp.2131, <variable>.CurrPOC.pic_order_cnt_lsb
	str	r2, [r4, r0]	@ D.38912, <variable>.CurrPOC.toppoc
	add	ip, r2, r1	@ D.38914, D.38912, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19828	@ tmp226,
	cmp	ip, r2	@ D.38914, D.38912
	movlt	r3, ip	@ prephitmp.2056, D.38914
	movge	r3, r2	@ prephitmp.2056, D.38912
	movw	r2, #19824	@ tmp225,
	str	ip, [r4, r2]	@ D.38914, <variable>.CurrPOC.bottompoc
	movw	r2, #19832	@ tmp227,
	str	r3, [r4, r0]	@ prephitmp.2056,
	str	r3, [r4, r2]	@ prephitmp.2056, <variable>.CurrPOC.ThisPOC
.L605:
	movw	ip, #19828	@ tmp238,
	movw	r1, #19852	@ tmp239,
	movw	r2, #19848	@ tmp240,
	ldr	r1, [r4, r1]	@ D.38924, <variable>.CurrPOC.frame_num
	str	r3, [r4, ip]	@ prephitmp.2056, <variable>.CurrPOC.framepoc
	movw	ip, #20704	@ tmp243,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, r0	@ D.38924, <variable>.CurrPOC.PreviousFrameNum
	strne	r1, [r4, r2]	@ D.38924, <variable>.CurrPOC.PreviousFrameNum
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
	ldr	r3, [r4, r3]	@ prephitmp.2051, <variable>.CurrPOC.PrevFrameNumOffset
	cmp	r1, r2	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.frame_num
	addhi	r3, r3, r0	@ prephitmp.2051, prephitmp.2051, MaxFrameNum
	movwhi	r2, #19856	@ tmp368,
	strhi	r3, [r4, r2]	@ prephitmp.2051, <variable>.CurrPOC.FrameNumOffset
	bls	.L630	@,
.L631:
	movw	r2, #19852	@ tmp370,
	movw	r1, #20704	@ tmp373,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	r2, #20673	@ tmp378,
	ldr	r0, [r4, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r1, #19844	@ tmp372,
	add	r3, r3, ip	@ temp.2121, prephitmp.2051, <variable>.CurrPOC.frame_num
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	str	r3, [r4, r1]	@ temp.2121, <variable>.CurrPOC.AbsFrameNum
	mov	r3, r3, asl #1	@ tmp375, temp.2121,
	movw	r0, #19832	@ tmp377,
	subeq	r3, r3, #1	@ prephitmp.2123, tmp375,
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [r4, r0]	@ prephitmp.2123, <variable>.CurrPOC.ThisPOC
	bne	.L634	@,
	movw	r2, #19828	@ tmp380,
	movw	r0, #19820	@ tmp382,
	movw	ip, #19824	@ tmp381,
	str	r3, [r4, r2]	@ prephitmp.2123, <variable>.CurrPOC.framepoc
	str	r3, [r4, r0]	@ prephitmp.2123, <variable>.CurrPOC.toppoc
	str	r3, [r4, ip]	@ prephitmp.2123,
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
	mov	r3, r1	@ prephitmp.2055, tmp171
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
.L611:
	movw	r2, #19856	@ tmp268,
	str	r3, [r4, r2]	@ prephitmp.2055, <variable>.CurrPOC.FrameNumOffset
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
	ldr	r1, [r5, #2916]	@ temp.2126, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ temp.2126,
	ble	.L616	@,
	add	r7, r5, #2912	@ ivtmp.2085, sps,
	mov	r2, r3	@ i, prephitmp.2052
	add	r0, r7, #8	@ ivtmp.2085, ivtmp.2085,
.L617:
	ldr	r1, [r0], #4	@ tmp286, <variable>.offset_for_ref_frame
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r1	@ prephitmp.2052, prephitmp.2052, tmp286
	str	r3, [r4, ip]	@ prephitmp.2052, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2916]	@ temp.2126, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ temp.2126, i
	bgt	.L617	@,
.L616:
	movw	r3, #19844	@ tmp288,
	ldr	r7, [r4, r3]	@ temp.2100, <variable>.CurrPOC.AbsFrameNum
	cmp	r7, #0	@ temp.2100,
	movweq	r3, #19872	@ tmp309,
	moveq	r6, r7	@ prephitmp.2104, temp.2100
	streq	r7, [r4, r3]	@ temp.2100, <variable>.CurrPOC.ExpectedPicOrderCnt
	beq	.L619	@,
	sub	r7, r7, #1	@ tmp289, temp.2100,
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
	mul	r6, r0, r6	@ prephitmp.2104, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, tmp292
	str	r6, [r4, ip]	@ prephitmp.2104, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.38965,
	str	r1, [r4, r2]	@ D.38965, <variable>.CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L619	@,
	add	r3, r5, #2912	@ tmp306, sps,
	cmp	r1, #1	@ D.38965,
	and	r8, r1, #1	@ tmp401, D.38965,
	mov	r0, #1	@ i.2106,
	ldr	r7, [r3, #8]	@ tmp307, <variable>.offset_for_ref_frame
	add	r2, r3, #12	@ ivtmp.2080, tmp306,
	add	r6, r6, r7	@ prephitmp.2104, prephitmp.2104, tmp307
	str	r6, [r4, ip]	@ prephitmp.2104, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L619	@,
	cmp	r8, #0	@ tmp401,
	beq	.L620	@,
	ldr	r7, [r2, #0]	@ tmp413, <variable>.offset_for_ref_frame
	mov	r0, #2	@ i.2106,
	cmp	r1, r0	@ D.38965, i.2106
	add	r2, r3, #16	@ ivtmp.2080, tmp306,
	add	r6, r6, r7	@ prephitmp.2104, prephitmp.2104, tmp413
	str	r6, [r4, ip]	@ prephitmp.2104, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L619	@,
.L620:
	mov	r3, r2	@ tmp403, ivtmp.2080
	add	r0, r0, #2	@ i.2106, i.2106,
	ldr	r7, [r3], #4	@ tmp406, <variable>.offset_for_ref_frame
	cmp	r1, r0	@ D.38965, i.2106
	add	lr, r6, r7	@ prephitmp.2104, prephitmp.2104, tmp406
	str	lr, [r4, ip]	@ prephitmp.2104, <variable>.CurrPOC.ExpectedPicOrderCnt
	ldr	r7, [r2, #4]	@ tmp411, <variable>.offset_for_ref_frame
	add	r2, r3, #4	@ ivtmp.2080, tmp403,
	add	r6, lr, r7	@ prephitmp.2104, prephitmp.2104, tmp411
	str	r6, [r4, ip]	@ prephitmp.2104, <variable>.CurrPOC.ExpectedPicOrderCnt
	bge	.L620	@,
.L619:
	movw	r3, #20704	@ tmp311,
	movw	r0, #20673	@ tmp316,
	ldr	ip, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldreq	ip, [r5, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	movwne	ip, #19872	@ tmp313,
	ldrne	r6, [r4, ip]	@ prephitmp.2108, <variable>.CurrPOC.ExpectedPicOrderCnt
	addeq	r6, r6, ip	@ prephitmp.2108, prephitmp.2104, <variable>.offset_for_non_ref_pic
	movweq	ip, #19872	@ tmp315,
	streq	r6, [r4, ip]	@ prephitmp.2108, <variable>.CurrPOC.ExpectedPicOrderCnt
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
	addeq	r6, r6, r0	@ prephitmp.2113, prephitmp.2108, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r6, r0, r6	@ prephitmp.2113, tmp335, prephitmp.2108
	movweq	r0, #19820	@ tmp332,
	movwne	r0, #19824	@ tmp338,
	str	r6, [r4, r0]	@ prephitmp.2113,
	str	r6, [r4, r2]	@ prephitmp.2113, <variable>.CurrPOC.ThisPOC
.L624:
	movw	r2, #19852	@ tmp342,
	movw	r1, #19856	@ tmp345,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19828	@ tmp340,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19848	@ tmp341,
	movw	r1, #19860	@ tmp344,
	str	r6, [r4, ip]	@ prephitmp.2113, <variable>.CurrPOC.framepoc
	str	r0, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L649:
	movw	r3, #19836	@ tmp318,
	movw	r1, #19840	@ tmp321,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r0, #19820	@ tmp320,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	add	r6, r6, ip	@ D.38979, prephitmp.2108, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, r0]	@ D.38979, <variable>.CurrPOC.toppoc
	ldr	r1, [r5, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movw	ip, #19824	@ tmp325,
	add	r3, r2, r1	@ tmp322, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r1, #19828	@ tmp326,
	add	r0, r3, r6	@ D.38983, tmp322, D.38979
	movw	r2, #19832	@ tmp327,
	cmp	r0, r6	@ D.38983, D.38979
	movlt	r6, r0	@ prephitmp.2113, D.38983
	movge	r6, r6	@ prephitmp.2113, D.38979
	str	r0, [r4, ip]	@ D.38983, <variable>.CurrPOC.bottompoc
	str	r6, [r4, r1]	@ prephitmp.2113,
	str	r6, [r4, r2]	@ prephitmp.2113, <variable>.CurrPOC.ThisPOC
	b	.L624	@
.L648:
	movw	r1, #19844	@ tmp280,
	ldr	r2, [r4, r1]	@ D.38950, <variable>.CurrPOC.AbsFrameNum
	cmp	r2, #0	@ D.38950,
	subne	r2, r2, #1	@ tmp282, D.38950,
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
	mov	r3, #0	@ prephitmp.2131,
	ldr	r0, [r4, ip]	@ D.38889, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	ip, [r4, r1]	@ prephitmp.2063, <variable>.CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ prephitmp.2061, prephitmp.2131
	b	.L601	@
.L604:
	movw	r1, #20674	@ tmp228,
	movw	r0, #19788	@ tmp230,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movw	r1, #19832	@ tmp237,
	ldr	ip, [r4, r0]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r2, #0	@ <variable>.CurrSlice.bottom_field_flag,
	add	r3, r3, ip	@ prephitmp.2056, prephitmp.2131, <variable>.CurrPOC.pic_order_cnt_lsb
	movweq	ip, #19820	@ tmp232,
	movwne	ip, #19824	@ tmp236,
	str	r3, [r4, ip]	@ prephitmp.2056,
	str	r3, [r4, r1]	@ prephitmp.2056, <variable>.CurrPOC.ThisPOC
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
	mov	r3, r1	@ prephitmp.2051, tmp171
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
.L630:
	movw	r1, #19856	@ tmp369,
	str	r3, [r4, r1]	@ prephitmp.2051, <variable>.CurrPOC.FrameNumOffset
	b	.L631	@
.L634:
	movw	r0, #20674	@ tmp383,
	movw	r1, #19828	@ tmp387,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	ip, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movweq	ip, #19820	@ tmp386,
	movwne	ip, #19824	@ tmp388,
	str	r3, [r4, ip]	@ prephitmp.2123,
	str	r3, [r4, r1]	@ prephitmp.2123,
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
	rsb	r3, r2, r3	@ D.38905, MaxPicOrderCntLsb, prephitmp.2131
	movw	r2, #19804	@ tmp216,
	str	r3, [r4, r2]	@ D.38905, <variable>.CurrPOC.PicOrderCntMsb
	b	.L602	@
.L598:
	movw	r1, #19820	@ tmp206,
	movw	r0, #19796	@ tmp204,
	ldr	r1, [r4, r1]	@ prephitmp.2061, <variable>.CurrPOC.toppoc
	mov	r5, r3	@ prephitmp.2065, <variable>.CurrPOC.last_pic_bottom_field
	str	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.PrevPicOrderCntMsb
	movw	r0, #19800	@ tmp207,
	mov	ip, r3	@ prephitmp.2063, prephitmp.2065
	str	r1, [r4, r0]	@ prephitmp.2061, <variable>.CurrPOC.PrevPicOrderCntLsb
	b	.L597	@
.L612:
	movw	r2, #19860	@ tmp267,
	ldr	r3, [r4, r2]	@ prephitmp.2055, <variable>.CurrPOC.PrevFrameNumOffset
	b	.L611	@
	.fnend
	.size	DecPOC, .-DecPOC
	.align	2
	.global	CalcPicNum
	.type	CalcPicNum, %function
CalcPicNum:
	.fnstart
.LFB1431:
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
	movw	r2, #50979	@ tmp173,
	ldr	r1, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	mla	r3, ip, r4, r5	@ tmp163, tmp162, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movw	ip, #3992	@ tmp168,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.39043, <variable>.CurrPic.structure
	cmp	r2, #0	@ D.39043,
	ldr	r5, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r3, #1	@ tmp172,
	mla	r4, ip, r5, r1	@ tmp169, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r1, [r4, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	ip, r1, #4	@ tmp170, <variable>.log2_max_frame_num_minus4,
	mov	ip, r3, asl ip	@ MaxFrameNum, tmp172,
	beq	.L651	@,
	mov	r7, #26624	@ tmp176,
	cmp	r2, #2	@ D.39043,
	movne	r4, #0	@, add_bottom
	moveq	r4, #1	@, add_bottom
	ldr	r6, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r2, #1	@ D.39043,
	movne	r5, #0	@, add_top
	moveq	r5, #1	@, add_top
	cmp	r6, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L653	@,
	add	r8, r0, #26368	@ ivtmp.2199, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r8, #120	@ ivtmp.2199, ivtmp.2199,
	movw	r8, #51424	@ tmp245,
.L666:
	ldr	r1, [r3, #0]	@ temp.2207, <variable>.DPB.fs_ref
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	beq	.L662	@,
	ldr	r6, [r1, #544]	@ temp.2209, <variable>.frame_num
	ldr	sl, [r0, r8]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	r6, sl	@ temp.2209, <variable>.CurrPic.frame_num
	rsbhi	r6, ip, r6	@ tmp205, MaxFrameNum, temp.2209
	str	r6, [r1, #548]	@ temp.2209, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ prephitmp.2167, <variable>.DPB.fs_ref
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2171, <variable>.is_reference
	tst	r6, #1	@ prephitmp.2171,
	beq	.L665	@,
	ldr	sl, [r1, #468]	@ tmp209,
	bic	sl, sl, #-16777216	@ tmp207, tmp209,
	bic	sl, sl, #255	@ tmp207, tmp207,
	cmp	sl, #65536	@ tmp207,
	ldreq	r6, [r1, #548]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	r6, r5, r6, asl #1	@, tmp212, add_top, <variable>.frame_num_wrap,
	streq	r6, [r1, #480]	@ tmp212, <variable>.top_field.pic_num
	ldreq	r1, [r3, #0]	@ prephitmp.2167, <variable>.DPB.fs_ref
	ldreqb	r6, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2171, <variable>.is_reference
.L665:
	tst	r6, #2	@ prephitmp.2171,
	beq	.L662	@,
	ldr	r6, [r1, #504]	@ tmp216,
	bic	r6, r6, #-16777216	@ tmp214, tmp216,
	bic	r6, r6, #255	@ tmp214, tmp214,
	cmp	r6, #65536	@ tmp214,
	ldreq	r6, [r1, #548]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	r6, r4, r6, asl #1	@, tmp219, add_bottom, <variable>.frame_num_wrap,
	streq	r6, [r1, #516]	@ tmp219, <variable>.bottom_field.pic_num
.L662:
	ldr	r1, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.2199, ivtmp.2199,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L666	@,
.L653:
	movw	r6, #26628	@ tmp222,
	ldr	r3, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r2, r0, #26368	@ ivtmp.2194, pH264Ctx,
	add	r3, r2, #184	@ ivtmp.2194, ivtmp.2194,
	mov	r2, #0	@ i.2211,
.L669:
	ldr	ip, [r3, #0]	@ prephitmp.2160, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2211, i.2211,
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ temp.2221, <variable>.is_reference
	cmp	r1, #0	@ temp.2221,
	beq	.L667	@,
	tst	r1, #1	@ prephitmp.2164,
	beq	.L668	@,
	ldr	r7, [ip, #468]	@ tmp228,
	bic	r7, r7, #-16777216	@ tmp226, tmp228,
	bic	r7, r7, #255	@ tmp226, tmp226,
	cmp	r7, #256	@ tmp226,
	ldreq	r1, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r5, r1, asl #1	@, tmp231, add_top, <variable>.long_term_frame_idx,
	streq	r1, [ip, #476]	@ tmp231, <variable>.top_field.long_term_pic_num
	ldreq	ip, [r3, #0]	@ prephitmp.2160, <variable>.DPB.fs_ltref
	ldreqb	r1, [ip, #2]	@ zero_extendqisi2	@ prephitmp.2164, <variable>.is_reference
.L668:
	tst	r1, #2	@ prephitmp.2164,
	beq	.L667	@,
	ldr	r1, [ip, #504]	@ tmp235,
	bic	r1, r1, #-16777216	@ tmp233, tmp235,
	bic	r1, r1, #255	@ tmp233, tmp233,
	cmp	r1, #256	@ tmp233,
	ldreq	r1, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r4, r1, asl #1	@, tmp238, add_bottom, <variable>.long_term_frame_idx,
	streq	r1, [ip, #512]	@ tmp238, <variable>.bottom_field.long_term_pic_num
.L667:
	ldr	ip, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.2194, ivtmp.2194,
	cmp	ip, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2211
	bhi	.L669	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L651:
	mov	r5, #26624	@ tmp178,
	ldr	r4, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r4, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L654	@,
	add	r1, r0, #26368	@ ivtmp.2189, pH264Ctx,
	movw	r6, #51424	@ tmp242,
	add	r3, r1, #120	@ ivtmp.2189, ivtmp.2189,
	b	.L658	@
.L655:
	ldr	r1, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i.2204, i.2204,
	add	r3, r3, #4	@ ivtmp.2189, ivtmp.2189,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2204
	bls	.L654	@,
.L658:
	ldr	r1, [r3, #0]	@ D.39047, <variable>.DPB.fs_ref
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L655	@,
	ldr	r4, [r1, #432]	@ tmp184,
	bic	r4, r4, #-16777216	@ tmp182, tmp184,
	bic	r4, r4, #255	@ tmp182, tmp182,
	cmp	r4, #65536	@ tmp182,
	bne	.L655	@,
	ldr	r4, [r1, #544]	@ D.39055, <variable>.frame_num
	add	r2, r2, #1	@ i.2204, i.2204,
	ldr	r7, [r0, r6]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	r4, r7	@ D.39055, <variable>.CurrPic.frame_num
	rsb	r7, ip, r4	@ tmp187, MaxFrameNum, D.39055
	strls	r4, [r1, #548]	@ D.39055, <variable>.frame_num_wrap
	strhi	r7, [r1, #548]	@ tmp187, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ temp.2203, <variable>.DPB.fs_ref
	add	r3, r3, #4	@ ivtmp.2189, ivtmp.2189,
	ldr	r4, [r1, #548]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	str	r4, [r1, #444]	@ <variable>.frame_num_wrap, <variable>.frame.pic_num
	ldr	r1, [r0, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2204
	bhi	.L658	@,
.L654:
	movw	r4, #26628	@ tmp191,
	ldr	ip, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	ip, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r2, r0, #26368	@ ivtmp.2184, pH264Ctx,
	add	r3, r2, #184	@ ivtmp.2184, ivtmp.2184,
	mov	r2, #0	@ i.2205,
	b	.L661	@
.L660:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2205
	bls	.L675	@,
.L661:
	ldr	r1, [r3, #0]	@ D.39065, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2205, i.2205,
	add	r3, r3, #4	@ ivtmp.2184, ivtmp.2184,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L660	@,
	ldr	ip, [r1, #432]	@ tmp197,
	bic	ip, ip, #-16777216	@ tmp195, tmp197,
	bic	ip, ip, #255	@ tmp195, tmp195,
	cmp	ip, #256	@ tmp195,
	ldreq	ip, [r1, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #440]	@ <variable>.long_term_frame_idx, <variable>.frame.long_term_pic_num
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2205
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
.LFB1432:
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
	ldr	r4, [r0, r3]	@ D.39141, <variable>.DPB.used_size
	cmp	r4, #0	@ D.39141,
	beq	.L677	@,
	movw	ip, #26424	@ tmp142,
	ldr	r2, [r0, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r2, r1	@ <variable>.DPB.fs, pFrameStore
	beq	.L678	@,
	tst	r4, #1	@ D.39141,
	add	r3, r0, #26368	@ tmp144, pH264Ctx,
	add	r2, r3, #60	@ ivtmp.2253, tmp144,
	mov	r0, #0	@ i,
	bne	.L679	@,
	ldr	ip, [r2, #0]	@ D.39138, <variable>.DPB.fs
	mov	r0, #1	@ i,
	add	r2, r3, #64	@ ivtmp.2253, tmp144,
	cmp	ip, r1	@ D.39138, pFrameStore
	bne	.L679	@,
.L678:
	mov	r0, #0	@ D.39136,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L680:
	ldr	ip, [r3], #4	@ D.39138, <variable>.DPB.fs
	cmp	ip, r1	@ D.39138, pFrameStore
	beq	.L678	@,
	ldr	ip, [r2, #4]	@ D.39138, <variable>.DPB.fs
	add	r2, r3, #4	@ ivtmp.2253, tmp150,
	cmp	ip, r1	@ D.39138, pFrameStore
	beq	.L678	@,
.L679:
	add	r0, r0, #1	@ tmp149, i,
	mov	r3, r2	@ tmp150, ivtmp.2253
	cmp	r0, r4	@ tmp149, D.39141
	add	r0, r0, #1	@ i, tmp149,
	bcc	.L680	@,
.L677:
	mov	r0, #1	@ D.39136,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	IsOutDPB, .-IsOutDPB
	.align	2
	.global	UpdatePicQpInf
	.type	UpdatePicQpInf, %function
UpdatePicQpInf:
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
.LFB1440:
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
.LFB1442:
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
	movw	r3, #53824	@ tmp138,
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
	movw	r4, #20684	@ tmp137,
	movw	ip, #13584	@ tmp140,
	ldr	r1, [r0, r4]	@ D.40961, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r3, [r0, ip]	@ <variable>.PPS, <variable>.PPS
	movw	r6, #13580	@ tmp138,
	mov	r2, #2208	@ tmp142,
	ldr	ip, [r0, r6]	@ <variable>.SPS, <variable>.SPS
	movw	r5, #20673	@ tmp158,
	movw	r4, #20724	@ tmp152,
	mla	r6, r2, r1, r3	@ tmp143, tmp142, D.40961, <variable>.PPS
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r5, [r0, r4]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r4, #20692	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movw	r6, #22328	@ tmp148,
	str	r1, [r0, r6]	@ D.40961, <variable>.PrevSlice.pic_parameter_set_id
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
	ldr	r3, [r2, #2900]	@ prephitmp.2343, <variable>.pic_order_cnt_type
	cmp	r3, #0	@ prephitmp.2343,
	bne	.L701	@,
	movw	r1, #19788	@ tmp180,
	movw	r3, #19792	@ tmp183,
	ldr	ip, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r3, #22344	@ tmp179,
	str	ip, [r0, r3]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22348	@ tmp182,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r2, #2900]	@ prephitmp.2343, <variable>.pic_order_cnt_type
.L701:
	cmp	r3, #1	@ prephitmp.2343,
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
	movw	r3, #54124	@ tmp191,
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
.LFB1454:
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
	movw	r1, #51452	@ tmp140,
	ldr	r2, [r0, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	movne	r2, #1	@ tmp143,
	strne	r2, [r0, r1]	@ tmp143, <variable>.CurrPic.pic_type
	mov	r1, #51456	@ tmp150,
	mov	r2, #0	@ tmp151,
	str	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	ldmfd	sp, {fp, sp, pc}	@
.L712:
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	ldmnefd	sp, {fp, sp, pc}	@
	movw	r3, #20675	@ tmp146,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	ip, #5	@ <variable>.CurrSlice.nal_unit_type,
	moveq	ip, #51456	@ tmp148,
	moveq	r2, #1	@ tmp149,
	streq	r2, [r0, ip]	@ tmp149, <variable>.CurrPic.is_idr_pic
	movne	r1, #51456	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	ldmfd	sp, {fp, sp, pc}	@
.L707:
	movw	r3, #51452	@ tmp136,
	mov	r1, #51456	@ tmp138,
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
.LFB1466:
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
	ldr	r3, [r0, #368]	@ D.42404, <variable>.pCurrNal
	cmp	r3, #0	@ D.42404,
	cmpne	r1, #0	@, len,
	bne	.L720	@,
.L714:
	mvn	r0, #0	@ D.42410,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L720:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ D.42411, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp155, D.42411, D.42411,
	add	ip, r3, ip, asl #2	@, tmp157, D.42404, tmp155,
	ldr	ip, [ip, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	ip, #0	@ <variable>.streamBuffer,
	beq	.L714	@,
	ldr	ip, [r3, #68]	@ D.42418, <variable>.nal_segment
	cmp	ip, #2	@ D.42418,
	bhi	.L714	@,
	cmp	r2, #1	@ D.42411,
	bhi	.L714	@,
	cmp	ip, r2	@ D.42418, segment_idx
	bls	.L714	@,
	mov	r4, r1, asl #3	@ len.2410, len,
	mov	r6, #28	@ tmp188,
.L718:
	mla	r3, r6, r2, r3	@ tmp163, tmp188, segment_idx, D.42404
	add	r2, r2, #1	@ segment_idx, segment_idx,
	add	r5, r3, #24	@ tmp164, tmp163,
	ldr	r1, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r1, r1, asl #3	@ D.42426, <variable>.bitstream_length,
	add	ip, r4, ip	@ D.42424, len.2410, <variable>.bitsoffset
	cmp	ip, r1	@ D.42424, D.42426
	rsb	r4, r1, ip	@ len.2410, D.42426, D.42424
	bls	.L721	@,
	str	r1, [r3, #24]	@ D.42426, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2411, <variable>.pCurrNal
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, r1, #1	@ tmp184, <variable>.nal_used_segment,
	strb	ip, [r3, #0]	@ tmp184, <variable>.nal_used_segment
	ldr	r3, [r0, #368]	@ D.42404, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r2	@ <variable>.nal_segment, segment_idx
	bhi	.L718	@,
	mov	r0, #0	@ D.42410,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L721:
	str	ip, [r5, #0]	@ D.42424, <variable>.bitsoffset
	mov	r0, #1	@ D.42410,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PassBytes, .-PassBytes
	.align	2
	.global	GetBytes
	.type	GetBytes, %function
GetBytes:
	.fnstart
.LFB1467:
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
	mvn	r0, #0	@ D.42452,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L731:
	ldr	r5, [r0, #368]	@ D.42448, <variable>.pCurrNal
	cmp	r5, #0	@ D.42448,
	cmpne	r2, #0	@, len,
	movne	r4, #0	@, tmp158
	moveq	r4, #1	@, tmp158
	beq	.L723	@,
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ D.42453, <variable>.nal_used_segment
	rsb	r3, ip, ip, asl #3	@, tmp162, D.42453, D.42453,
	add	r3, r5, r3, asl #2	@, tmp164, D.42448, tmp162,
	ldr	r3, [r3, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r3, #0	@ <variable>.streamBuffer,
	beq	.L723	@,
	ldr	r3, [r5, #68]	@ D.42460, <variable>.nal_segment
	cmp	r3, #2	@ D.42460,
	bhi	.L723	@,
	cmp	ip, #1	@ D.42453,
	bhi	.L723	@,
	cmp	r3, ip	@ D.42460, segment_idx
	bls	.L723	@,
	mov	r9, #28	@ tmp208,
.L728:
	mul	r8, r9, ip	@ tmp168, tmp208, segment_idx
	mov	r3, #0	@ ivtmp.2441,
	add	sl, r8, r5	@ tmp170, tmp168, D.42448
	ldr	r6, [sl, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r5, [sl, #8]	@ D.42465, <variable>.streamBuffer
	ldr	r7, [sl, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r6, r6, #7	@ tmp177, <variable>.bitsoffset,
	add	r7, r5, r7	@ end_byte, D.42465, <variable>.bitstream_length
	add	r5, r5, r6, lsr #3	@, byte_pos, D.42465, tmp177,
.L724:
	add	sl, r3, r5	@ D.45718, ivtmp.2441, byte_pos
	add	r6, r3, r1	@ D.45716, ivtmp.2441, pdes
	cmp	r7, sl	@ end_byte, D.45718
	bls	.L732	@,
	ldrb	sl, [r5, r3]	@ zero_extendqisi2	@ tmp186,* ivtmp.2441
	add	r4, r4, #1	@ cnt, cnt,
	cmp	r2, r4	@ len, cnt
	strb	sl, [r1, r3]	@ tmp186,* ivtmp.2441
	add	r3, r3, #1	@ ivtmp.2441, ivtmp.2441,
	ldr	r6, [r0, #368]	@ temp.2459, <variable>.pCurrNal
	add	r6, r8, r6	@ tmp191, tmp207, temp.2459
	ldr	sl, [r6, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	sl, sl, #8	@ tmp199, <variable>.bitsoffset,
	str	sl, [r6, #24]	@ tmp199, <variable>.bitsoffset
	bhi	.L724	@,
	mov	r0, r2	@ D.42452, len
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L732:
	ldr	r3, [r0, #368]	@ temp.2461, <variable>.pCurrNal
	add	ip, ip, #1	@ segment_idx, segment_idx,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	r5, r1, #1	@ tmp202, <variable>.nal_used_segment,
	strb	r5, [r3, #0]	@ tmp202, <variable>.nal_used_segment
	ldr	r5, [r0, #368]	@ D.42448, <variable>.pCurrNal
	ldr	r1, [r5, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, ip	@ <variable>.nal_segment, segment_idx
	movhi	r1, r6	@ pdes, D.45716
	bhi	.L728	@
.L727:
	mov	r0, r4	@ D.42452, cnt
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	GetBytes, .-GetBytes
	.align	2
	.global	InitOldSlice
	.type	InitOldSlice, %function
InitOldSlice:
	.fnstart
.LFB1471:
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
	movw	r3, #13576	@ tmp135,
	ldr	ip, [r0, r3]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r2, #22328	@ tmp134,
	movw	r1, #22356	@ tmp156,
	movw	r3, #22320	@ tmp139,
	str	ip, [r0, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	mov	ip, #0	@ tmp140,
	str	ip, [r0, r1]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r1, #22336	@ tmp137,
	strb	ip, [r0, r3]	@ tmp140, <variable>.PrevSlice.field_pic_flag
	movw	r3, #22321	@ tmp142,
	movw	r2, #:lower16:88888	@ tmp160,
	movt	r2, #:upper16:88888	@ tmp160,
	str	r2, [r0, r1]	@ tmp160, <variable>.PrevSlice.frame_num
	mov	r2, #2	@ tmp143,
	movw	r1, #22332	@ tmp145,
	strb	r2, [r0, r3]	@ tmp143, <variable>.PrevSlice.bottom_field_flag
	movw	r3, #22322	@ tmp147,
	mov	r2, #7	@ tmp146,
	str	r2, [r0, r1]	@ tmp146, <variable>.PrevSlice.nal_ref_idc
	mov	r1, #32	@ tmp148,
	movw	r2, #22344	@ tmp150,
	strb	r1, [r0, r3]	@ tmp148, <variable>.PrevSlice.nal_unit_type
	movw	r3, #22348	@ tmp152,
	mov	r1, #3	@ tmp151,
	str	r1, [r0, r2]	@ tmp151, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r2, #0	@ tmp153,
	movw	r1, #22352	@ tmp154,
	str	r2, [r0, r3]	@ tmp153, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #22360	@ tmp158,
	movw	r3, #:lower16:92928	@ tmp161,
	str	ip, [r0, r1]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	movt	r3, #:upper16:92928	@ tmp161,
	str	r3, [r0, r2]	@ tmp161, <variable>.PrevSlice.first_mb_in_slice
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitOldSlice, .-InitOldSlice
	.align	2
	.global	FindNaluArraySlot
	.type	FindNaluArraySlot, %function
FindNaluArraySlot:
	.fnstart
.LFB1479:
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
	addne	r2, r0, #96	@ ivtmp.2519, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L737	@,
	b	.L736	@
.L746:
	ldrb	ip, [r2, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r2, r2, #192	@ ivtmp.2519, ivtmp.2519,
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
	mov	r0, r3	@, D.43309
	ldmfd	sp, {fp, sp, pc}	@
.L738:
	mvn	r3, #0	@ D.43309,
	mov	r0, r3	@, D.43309
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FindNaluArraySlot, .-FindNaluArraySlot
	.align	2
	.global	HaveSliceToDec
	.type	HaveSliceToDec, %function
HaveSliceToDec:
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
	movw	r1, #54092	@ tmp136,
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
.LFB1463:
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
	subs	r1, r0, #255	@ D.41893, ar_idc,
	movne	r1, #1	@ D.41893
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
	cmp	r1, #0	@ D.41893,
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
	sub	r1, r0, #2400	@ iftmp.710, dar,
	sub	r3, r0, #2256	@ iftmp.2570, dar,
	sub	r2, r1, #6	@ iftmp.710, iftmp.710,
	sub	r3, r3, #7	@ iftmp.2570, iftmp.2570,
	cmp	r2, #0	@ iftmp.710,
	rsblt	r2, r0, #2400	@ tmp173, dar,
	addlt	r2, r2, #6	@ iftmp.710, tmp173,
	cmp	r3, #0	@ iftmp.2570,
	rsblt	r1, r0, #2256	@ tmp175, dar,
	addlt	r1, r1, #7	@ iftmp.711, tmp175,
	movge	r1, r3	@ iftmp.711, iftmp.2570
	cmp	r2, r1	@ iftmp.710, iftmp.711
	movlt	r4, #4	@ final_dar,
	blt	.L755	@,
	cmp	r3, #0	@ iftmp.2570,
	sub	ip, r0, #1808	@ iftmp.2571, dar,
	rsblt	r3, r0, #2256	@ tmp176, dar,
	sub	r2, ip, #12	@ iftmp.2571, iftmp.2571,
	addlt	r3, r3, #7	@ iftmp.2570, tmp176,
	cmp	r2, #0	@ iftmp.2571,
	rsblt	r1, r0, #1808	@ tmp178, dar,
	addlt	r1, r1, #12	@ iftmp.713, tmp178,
	movge	r1, r2	@ iftmp.713, iftmp.2571
	cmp	r3, r1	@ iftmp.2570, iftmp.713
	movlt	r4, #3	@ final_dar,
	blt	.L755	@,
	cmp	r2, #0	@ iftmp.2571,
	sub	r4, r0, #1360	@ iftmp.715, dar,
	sub	r4, r4, #5	@ iftmp.715, iftmp.715,
	rsblt	r2, r0, #1808	@ tmp179, dar,
	addlt	r2, r2, #12	@ iftmp.2571, tmp179,
	cmp	r4, #0	@ iftmp.715,
	rsblt	r4, r0, #1360	@ tmp181, dar,
	addlt	r4, r4, #5	@ iftmp.715, tmp181,
	cmp	r2, r4	@ iftmp.2571, iftmp.715
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
.LFB1462:
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
	movne	r0, #0	@, equal.2669
	moveq	r0, #1	@, equal.2669
	cmp	r4, r7	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	movne	ip, #0	@, equal.2670
	andeq	ip, r0, #1	@,, equal.2670, equal.2669
	ldr	r4, [r3, #740]	@ <variable>.level_idc, <variable>.level_idc
	ldr	r7, [r1, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r5, r6	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r2, #0	@, equal.2671
	andeq	r2, ip, #1	@,, equal.2671, equal.2670
	ldr	r6, [r3, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	r4, r7	@ <variable>.level_idc, <variable>.level_idc
	movne	r0, #0	@, equal.2672
	andeq	r0, r2, #1	@,, equal.2672, equal.2671
	ldr	ip, [r1, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r2, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r6, ip	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movne	r6, #0	@, equal
	andeq	r6, r0, #1	@,, equal, equal.2672
	cmp	r2, #0	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L774	@,
	mov	r9, r3	@ ivtmp.2632, pSPS1
	mov	r8, r1	@ ivtmp.2634, pSPS2
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
	movne	r2, #0	@, equal.2689
	moveq	r2, #1	@, equal.2689
	ldr	ip, [r9, #772]	@ tmp247, <variable>.ScalingList4x4
	cmp	r3, r4	@ tmp239, tmp240
	movne	r1, #0	@, equal.2693
	andeq	r1, r2, #1	@,, equal.2693, equal.2689
	ldr	r4, [r8, #772]	@ tmp248, <variable>.ScalingList4x4
	cmp	r7, r0	@ tmp243, tmp244
	movne	r5, #0	@, equal.2697
	andeq	r5, r1, #1	@,, equal.2697, equal.2693
	ldr	r3, [r8, #776]	@ tmp252, <variable>.ScalingList4x4
	ldr	r7, [r9, #776]	@ tmp251, <variable>.ScalingList4x4
	cmp	ip, r4	@ tmp247, tmp248
	movne	r1, #0	@, equal.2701
	andeq	r1, r5, #1	@,, equal.2701, equal.2697
	ldr	r2, [r8, #780]	@ tmp256, <variable>.ScalingList4x4
	ldr	r4, [r9, #780]	@ tmp255, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp251, tmp252
	movne	r0, #0	@, equal.2705
	andeq	r0, r1, #1	@,, equal.2705, equal.2701
	ldr	r7, [r9, #784]	@ tmp259, <variable>.ScalingList4x4
	ldr	r3, [r8, #784]	@ tmp260, <variable>.ScalingList4x4
	cmp	r4, r2	@ tmp255, tmp256
	movne	ip, #0	@, equal.2709
	andeq	ip, r0, #1	@,, equal.2709, equal.2705
	ldr	r5, [r8, #788]	@ tmp264, <variable>.ScalingList4x4
	ldr	r0, [r9, #788]	@ tmp263, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp259, tmp260
	movne	r1, #0	@, equal.2713
	andeq	r1, ip, #1	@,, equal.2713, equal.2709
	ldr	r4, [r8, #792]	@ tmp268, <variable>.ScalingList4x4
	ldr	r7, [r9, #792]	@ tmp267, <variable>.ScalingList4x4
	cmp	r0, r5	@ tmp263, tmp264
	movne	ip, #0	@, equal.2717
	andeq	ip, r1, #1	@,, equal.2717, equal.2713
	ldr	r1, [r9, #796]	@ tmp271, <variable>.ScalingList4x4
	ldr	r5, [r8, #796]	@ tmp272, <variable>.ScalingList4x4
	cmp	r7, r4	@ tmp267, tmp268
	movne	r2, #0	@, equal.2721
	andeq	r2, ip, #1	@,, equal.2721, equal.2717
	ldr	r3, [r8, #800]	@ tmp276, <variable>.ScalingList4x4
	ldr	r4, [r9, #800]	@ tmp275, <variable>.ScalingList4x4
	cmp	r1, r5	@ tmp271, tmp272
	movne	r0, #0	@, equal.2725
	andeq	r0, r2, #1	@,, equal.2725, equal.2721
	ldr	ip, [r9, #804]	@ tmp279, <variable>.ScalingList4x4
	ldr	r2, [r8, #804]	@ tmp280, <variable>.ScalingList4x4
	cmp	r4, r3	@ tmp275, tmp276
	movne	r7, #0	@, equal.2729
	andeq	r7, r0, #1	@,, equal.2729, equal.2725
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	ip, r2	@ tmp279, tmp280
	movne	r4, #0	@, equal.2733
	andeq	r4, r7, #1	@,, equal.2733, equal.2729
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r5, [r8, #808]	@ tmp284, <variable>.ScalingList4x4
	ldr	r1, [r9, #808]	@ tmp283, <variable>.ScalingList4x4
	ldr	r7, [ip, #752]	@ tmp295, <variable>.ScalingList4x4
	cmp	r1, r5	@ tmp283, tmp284
	movne	r4, #0	@, equal.2737
	andeq	r4, r4, #1	@,, equal.2737, equal.2733
	ldr	r3, [r0, #752]	@ tmp296, <variable>.ScalingList4x4
	and	r6, r6, r4	@ equal.2741, equal, equal.2737
	ldr	ip, [r9, #812]	@ tmp299, <variable>.ScalingList4x4
	ldr	r2, [r8, #812]	@ tmp300, <variable>.ScalingList4x4
	cmp	r7, r3	@ tmp295, tmp296
	movne	r5, #0	@, equal.2745
	andeq	r5, r6, #1	@,, equal.2745, equal.2741
	cmp	ip, r2	@ tmp299, tmp300
	movne	r6, #0	@, equal
	andeq	r6, r5, #1	@,, equal, equal.2745
.L775:
	add	sl, sl, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2632, ivtmp.2632,
	cmp	sl, #8	@ i,
	add	r8, r8, #64	@ ivtmp.2634, ivtmp.2634,
	beq	.L804	@,
.L778:
	ldr	r1, [fp, #-48]	@, %sfp
	add	r4, r1, sl	@ tmp224,, i
	ldr	r1, [fp, #-52]	@, %sfp
	add	r0, r1, sl	@ tmp225,, i
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ D.41791, <variable>.seq_scaling_list_present_flag
	ldrb	r7, [r0, #4]	@ zero_extendqisi2	@ D.41791, <variable>.seq_scaling_list_present_flag
	cmp	r3, r7	@ D.41791, D.41791
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r3, #0	@ D.41791,
	beq	.L775	@,
	cmp	sl, #5	@ i,
	bls	.L805	@,
	ldr	r0, [fp, #-52]	@, %sfp
	mov	r5, sl, asl #8	@ tmp302, i,
	ldr	r4, [fp, #-48]	@, %sfp
	sub	r1, r5, #400	@ tmp303, tmp302,
	ldr	r7, [fp, #-48]	@, %sfp
	add	r3, r0, r1	@ ivtmp.2619,, tmp303
	add	r2, r4, r1	@ ivtmp.2616,, tmp303
	ldr	r5, [r0, r1]	@ tmp308, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2616, ivtmp.2616,
	mov	ip, #2	@ j,
	ldr	r4, [r7, r1]	@ tmp307, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2619, ivtmp.2619,
	ldr	r7, [r2, #4]	@ tmp436, <variable>.ScalingList8x8
	ldr	r3, [r3, #4]	@ tmp437, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp307, tmp308
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp436, tmp437
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L777:
	mov	r2, r0	@ tmp403, ivtmp.2616
	mov	r3, r1	@ tmp404, ivtmp.2619
	ldr	r7, [r2], #4	@ tmp408, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp409, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp415, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2616, tmp403,
	ldr	r2, [r1, #4]	@ tmp416, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp408, tmp409
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2619, tmp404,
	cmp	r4, r2	@ tmp415, tmp416
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L777	@,
	add	sl, sl, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2632, ivtmp.2632,
	cmp	sl, #8	@ i,
	add	r8, r8, #64	@ ivtmp.2634, ivtmp.2634,
	bne	.L778	@,
.L804:
	ldr	r3, [fp, #-48]	@ pSPS1, %sfp
	ldr	r1, [fp, #-52]	@ pSPS2, %sfp
.L774:
	ldr	r2, [r3, #2900]	@ D.41810, <variable>.pic_order_cnt_type
	ldr	r4, [r1, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r0, [r3, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	ldr	r5, [r1, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r2, r4	@ D.41810, <variable>.pic_order_cnt_type
	cmpeq	r0, r5	@, <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movne	ip, #0	@, equal.2673
	moveq	ip, #1	@, equal.2673
	cmp	r2, #0	@ D.41810,
	and	r6, ip, r6	@ equal.2664, equal.2673, equal
	bne	.L806	@,
	ldr	r7, [r3, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	cmp	r7, r2	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
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
	movne	r2, #0	@, equal.2677
	moveq	r2, #1	@, equal.2677
	cmp	r4, ip	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movne	r4, #0	@, equal.2678
	andeq	r4, r2, #1	@,, equal.2678, equal.2677
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.41843, <variable>.frame_mbs_only_flag
	ldrb	ip, [r1, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r5, r0	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r0, #0	@, equal.2679
	andeq	r0, r4, #1	@,, equal.2679, equal.2678
	cmp	ip, r2	@ <variable>.frame_mbs_only_flag, D.41843
	movne	r0, #0	@, equal.2680
	andeq	r0, r0, #1	@,, equal.2680, equal.2679
	cmp	r2, #0	@ D.41843,
	and	r6, r0, r6	@ equal.2665, equal.2680, equal.2664
	bne	.L783	@,
	ldrb	r4, [r3, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	ldrb	ip, [r1, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r4, ip	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movne	r6, #0	@, equal.2665
	andeq	r6, r6, #1	@,, equal.2665, equal.2665
.L783:
	ldrb	r2, [r3, #21]	@ zero_extendqisi2	@ D.41854, <variable>.frame_cropping_flag
	ldrb	r0, [r3, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldrb	r4, [r1, #21]	@ zero_extendqisi2	@ <variable>.frame_cropping_flag, <variable>.frame_cropping_flag
	ldrb	ip, [r1, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	cmp	r4, r2	@ <variable>.frame_cropping_flag, D.41854
	cmpeq	r0, ip	@, <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	movne	r0, #0	@, equal.2681
	moveq	r0, #1	@, equal.2681
	cmp	r2, #0	@ D.41854,
	and	r2, r0, r6	@ equal.2666, equal.2681, equal.2665
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
	movne	r5, #0	@, equal.2682
	moveq	r5, #1	@, equal.2682
	cmp	r6, ip	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	movne	ip, #0	@, equal.2683
	andeq	ip, r5, #1	@,, equal.2683, equal.2682
	cmp	r4, r0	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r0, #0	@, equal.2684
	andeq	r0, ip, #1	@,, equal.2684, equal.2683
	and	r2, r2, r0	@ equal.2666, equal.2666, equal.2684
.L784:
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, r3	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	movne	r2, #0	@, tmp392
	andeq	r2, r2, #1	@,, tmp392, equal.2666
	cmp	r2, #0	@ tmp392,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L772:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L806:
	cmp	r2, #1	@ D.41810,
	bne	.L779	@,
	ldr	r7, [r3, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldr	ip, [r1, #2908]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldrb	r5, [r3, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldrb	r0, [r1, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r4, [r3, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	cmp	r7, ip	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	cmpeq	r5, r0	@, <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r2, [r1, #2912]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	ldr	r7, [r3, #2916]	@ D.41825, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	ldr	r0, [r1, #2916]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	ip, #0	@, equal.2674
	moveq	ip, #1	@, equal.2674
	cmp	r4, r2	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movne	r5, #0	@, equal.2675
	andeq	r5, ip, #1	@,, equal.2675, equal.2674
	cmp	r7, r0	@ D.41825, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	r5, #0	@, equal.2676
	andeq	r5, r5, #1	@,, equal.2676, equal.2675
	cmp	r7, #0	@ D.41825,
	and	r6, r6, r5	@ equal.2664, equal.2664, equal.2676
	beq	.L779	@,
	ldr	r4, [r3, #2920]	@ tmp339, <variable>.offset_for_ref_frame
	mov	r7, r7, asl #2	@ D.45878, D.41825,
	ldr	r5, [r1, #2920]	@ tmp340, <variable>.offset_for_ref_frame
	mov	r2, #4	@ ivtmp.2607,
	sub	r0, r7, #4	@ tmp397, D.45878,
	cmp	r4, r5	@ tmp339, tmp340
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r2, r7	@ ivtmp.2607, D.45878
	ubfx	r0, r0, #2, #1	@ tmp398, tmp397,,
	beq	.L779	@,
	cmp	r0, #0	@ tmp398,
	beq	.L782	@,
	ldr	r4, [r3, #2924]	@ tmp433, <variable>.offset_for_ref_frame
	mov	r2, #8	@ ivtmp.2607,
	ldr	r0, [r1, #2924]	@ tmp434, <variable>.offset_for_ref_frame
	cmp	r4, r0	@ tmp433, tmp434
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r2, r7	@ ivtmp.2607, D.45878
	beq	.L779	@,
.L782:
	add	r0, r2, #4	@ tmp399, ivtmp.2607,
	add	r4, r3, r2	@ tmp419, pSPS1, ivtmp.2607
	add	r2, r1, r2	@ tmp420, pSPS2, ivtmp.2607
	add	ip, r3, r0	@ tmp426, pSPS1, tmp399
	add	r8, r1, r0	@ tmp427, pSPS2, tmp399
	ldr	r5, [r4, #2920]	@ tmp421, <variable>.offset_for_ref_frame
	ldr	r4, [r2, #2920]	@ tmp422, <variable>.offset_for_ref_frame
	add	r2, r0, #4	@ ivtmp.2607, tmp399,
	ldr	ip, [ip, #2920]	@ tmp428, <variable>.offset_for_ref_frame
	ldr	r0, [r8, #2920]	@ tmp429, <variable>.offset_for_ref_frame
	cmp	r5, r4	@ tmp421, tmp422
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	ip, r0	@ tmp428, tmp429
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r2, r7	@ ivtmp.2607, D.45878
	bne	.L782	@,
	b	.L779	@
.L803:
	mov	r0, r1	@, pSPS2
	movw	r2, #:lower16:.LC2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #8542	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L772	@
.L802:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #8541	@,
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
.LFB1460:
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
	movne	r3, #0	@, equal.2829
	moveq	r3, #1	@, equal.2829
	cmp	r0, ip	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	movne	r0, #0	@, equal.2830
	andeq	r0, r3, #1	@,, equal.2830, equal.2829
	ldr	ip, [r1, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	cmp	r5, r4	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r2, #0	@, equal.2831
	andeq	r2, r0, #1	@,, equal.2831, equal.2830
	ldr	r3, [r7, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r5, [r7, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r4, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	cmp	r3, ip	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movne	r3, #0	@, equal.2832
	andeq	r3, r2, #1	@,, equal.2832, equal.2831
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r5, r4	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	movne	r0, #0	@, equal.2833
	andeq	r0, r3, #1	@,, equal.2833, equal.2832
	ldr	r5, [r7, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	ldr	r4, [r1, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, ip	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	movne	r2, #0	@, equal.2834
	andeq	r2, r0, #1	@,, equal.2834, equal.2833
	ldr	ip, [r1, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	ldr	r0, [r7, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	cmp	r5, r4	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	movne	r3, #0	@, equal.2835
	andeq	r3, r2, #1	@,, equal.2835, equal.2834
	ldr	r5, [r7, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldr	r4, [r1, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	cmp	r0, ip	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	movne	r0, #0	@, equal.2836
	andeq	r0, r3, #1	@,, equal.2836, equal.2835
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r5, r4	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movne	r2, #0	@, equal.2837
	andeq	r2, r0, #1	@,, equal.2837, equal.2836
	ldrb	r5, [r7, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	cmp	r3, ip	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	movne	r3, #0	@, equal.2838
	andeq	r3, r2, #1	@,, equal.2838, equal.2837
	ldr	r2, [r7, #60]	@ D.41540, <variable>.transform_8x8_mode_flag
	ldr	ip, [r1, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	cmp	r5, r4	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	movne	r0, #0	@, equal.2839
	andeq	r0, r3, #1	@,, equal.2839, equal.2838
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ D.41543, <variable>.pic_scaling_matrix_present_flag
	ldrb	r5, [r1, #18]	@ zero_extendqisi2	@ <variable>.pic_scaling_matrix_present_flag, <variable>.pic_scaling_matrix_present_flag
	cmp	r2, ip	@ D.41540, <variable>.transform_8x8_mode_flag
	movne	r0, #0	@, equal.2840
	andeq	r0, r0, #1	@,, equal.2840, equal.2839
	cmp	r5, r3	@ <variable>.pic_scaling_matrix_present_flag, D.41543
	movne	r5, #0	@, equal
	andeq	r5, r0, #1	@,, equal, equal.2840
	cmp	r3, #0	@ D.41543,
	beq	.L811	@,
	mov	ip, r2, asl #1	@ tmp237, D.41540,
	adds	r0, ip, #6	@, tmp237,
	str	r0, [fp, #-56]	@, %sfp
	beq	.L811	@,
	mov	sl, r7	@ ivtmp.2795,
	mov	r9, r1	@ ivtmp.2797, pPPS2
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
	movne	r4, #0	@, equal.2845
	moveq	r4, #1	@, equal.2845
	ldr	r0, [sl, #84]	@ tmp261, <variable>.ScalingList4x4
	cmp	r2, r3	@ tmp253, tmp254
	movne	ip, #0	@, equal.2849
	andeq	ip, r4, #1	@,, equal.2849, equal.2845
	ldr	r2, [r9, #84]	@ tmp262, <variable>.ScalingList4x4
	cmp	r7, r6	@ tmp257, tmp258
	movne	r6, #0	@, equal.2853
	andeq	r6, ip, #1	@,, equal.2853, equal.2849
	ldr	r4, [sl, #88]	@ tmp265, <variable>.ScalingList4x4
	ldr	r3, [r9, #88]	@ tmp266, <variable>.ScalingList4x4
	cmp	r0, r2	@ tmp261, tmp262
	movne	r1, #0	@, equal.2857
	andeq	r1, r6, #1	@,, equal.2857, equal.2853
	ldr	r7, [sl, #92]	@ tmp269, <variable>.ScalingList4x4
	ldr	r2, [r9, #92]	@ tmp270, <variable>.ScalingList4x4
	cmp	r4, r3	@ tmp265, tmp266
	movne	ip, #0	@, equal.2861
	andeq	ip, r1, #1	@,, equal.2861, equal.2857
	ldr	r0, [sl, #96]	@ tmp273, <variable>.ScalingList4x4
	ldr	r3, [r9, #96]	@ tmp274, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp269, tmp270
	movne	r4, #0	@, equal.2865
	andeq	r4, ip, #1	@,, equal.2865, equal.2861
	ldr	r7, [sl, #100]	@ tmp277, <variable>.ScalingList4x4
	ldr	r2, [r9, #100]	@ tmp278, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp273, tmp274
	movne	r1, #0	@, equal.2869
	andeq	r1, r4, #1	@,, equal.2869, equal.2865
	ldr	ip, [sl, #104]	@ tmp281, <variable>.ScalingList4x4
	ldr	r3, [r9, #104]	@ tmp282, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp277, tmp278
	movne	r0, #0	@, equal.2873
	andeq	r0, r1, #1	@,, equal.2873, equal.2869
	ldr	r4, [sl, #108]	@ tmp285, <variable>.ScalingList4x4
	ldr	r2, [r9, #108]	@ tmp286, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp281, tmp282
	movne	r7, #0	@, equal.2877
	andeq	r7, r0, #1	@,, equal.2877, equal.2873
	ldr	r0, [sl, #112]	@ tmp289, <variable>.ScalingList4x4
	ldr	r3, [r9, #112]	@ tmp290, <variable>.ScalingList4x4
	cmp	r4, r2	@ tmp285, tmp286
	movne	r1, #0	@, equal.2881
	andeq	r1, r7, #1	@,, equal.2881, equal.2877
	ldr	ip, [sl, #116]	@ tmp293, <variable>.ScalingList4x4
	ldr	r4, [r9, #116]	@ tmp294, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp289, tmp290
	movne	r7, #0	@, equal.2885
	andeq	r7, r1, #1	@,, equal.2885, equal.2881
	ldr	r1, [sl, #120]	@ tmp297, <variable>.ScalingList4x4
	ldr	r3, [r9, #120]	@ tmp298, <variable>.ScalingList4x4
	cmp	ip, r4	@ tmp293, tmp294
	movne	r2, #0	@, equal.2889
	andeq	r2, r7, #1	@,, equal.2889, equal.2885
	ldr	r7, [fp, #-48]	@, %sfp
	cmp	r1, r3	@ tmp297, tmp298
	movne	r3, #0	@, equal.2893
	andeq	r3, r2, #1	@,, equal.2893, equal.2889
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	ip, [sl, #124]	@ tmp307, <variable>.ScalingList4x4
	and	r3, r5, r3	@ equal.2897, equal, equal.2893
	ldr	r4, [r7, r8, asl #6]	@ tmp303, <variable>.ScalingList4x4
	add	sl, sl, #64	@ ivtmp.2795, ivtmp.2795,
	ldr	r0, [r1, r8, asl #6]	@ tmp304, <variable>.ScalingList4x4
	ldr	r2, [r9, #124]	@ tmp308, <variable>.ScalingList4x4
	add	r9, r9, #64	@ ivtmp.2797, ivtmp.2797,
	cmp	r4, r0	@ tmp303, tmp304
	movne	r3, #0	@, equal.2901
	andeq	r3, r3, #1	@,, equal.2901, equal.2897
	cmp	ip, r2	@ tmp307, tmp308
	movne	r5, #0	@, equal
	andeq	r5, r3, #1	@,, equal, equal.2901
	ldr	ip, [fp, #-56]	@, %sfp
	cmp	ip, r8	@, i
	bls	.L830	@,
.L815:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-52]	@, %sfp
	add	r3, r1, r8	@ tmp238,, i
	add	ip, r0, r8	@ tmp239,, i
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ D.41549, <variable>.pic_scaling_list_present_flag
	ldrb	r2, [ip, #5]	@ zero_extendqisi2	@ D.41549, <variable>.pic_scaling_list_present_flag
	cmp	r1, r2	@ D.41549, D.41549
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r1, #0	@ D.41549,
	bne	.L826	@,
	add	r8, r8, #1	@ i, i,
.L831:
	ldr	ip, [fp, #-56]	@, %sfp
	add	sl, sl, #64	@ ivtmp.2795, ivtmp.2795,
	add	r9, r9, #64	@ ivtmp.2797, ivtmp.2797,
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
	add	r3, r0, r1	@ ivtmp.2785,, tmp311
	add	r2, r4, r1	@ ivtmp.2782,, tmp311
	ldr	r6, [r0, r1]	@ tmp316, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2782, ivtmp.2782,
	mov	ip, #2	@ j,
	ldr	r4, [r7, r1]	@ tmp315, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2785, ivtmp.2785,
	ldr	r7, [r2, #4]	@ tmp344, <variable>.ScalingList8x8
	ldr	r3, [r3, #4]	@ tmp345, <variable>.ScalingList8x8
	cmp	r4, r6	@ tmp315, tmp316
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r7, r3	@ tmp344, tmp345
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
.L814:
	mov	r2, r0	@ tmp329, ivtmp.2782
	mov	r3, r1	@ tmp330, ivtmp.2785
	ldr	r7, [r2], #4	@ tmp334, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r6, [r3], #4	@ tmp335, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp341, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2782, tmp329,
	ldr	r2, [r1, #4]	@ tmp342, <variable>.ScalingList8x8
	cmp	r7, r6	@ tmp334, tmp335
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2785, tmp330,
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
	movw	r3, #8332	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L809	@
.L828:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #8331	@,
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
.LFB1455:
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
	ldr	lr, [r4, #368]	@ D.41029, <variable>.pCurrNal
	ldr	r0, [lr, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r3, r0, #7	@ tmp171, <variable>.nal_bitoffset,
	bic	ip, r3, #7	@ tmp173, tmp171,
	str	ip, [lr, #64]	@ tmp173, <variable>.nal_bitoffset
	ldr	r1, [r4, #368]	@ temp.2947, <variable>.pCurrNal
	ldr	r5, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	sub	r2, r5, #1	@ tmp175, <variable>.nal_trail_zero_bit_num,
	str	r2, [r1, #72]	@ tmp175, <variable>.nal_trail_zero_bit_num
.L833:
	ldr	ip, [r4, #368]	@ temp.2993, <variable>.pCurrNal
	ldrb	r5, [ip, #0]	@ zero_extendqisi2	@ temp.2994, <variable>.nal_used_segment
	cmp	r5, #0	@ temp.2994,
	moveq	r6, r5	@ code_len_byte, temp.2994
	moveq	r7, r5	@ temp.2994, temp.2994
	beq	.L835	@,
	mov	r7, r5, asl #3	@ temp.2994, temp.2994,
	mov	r3, #28	@ ivtmp.2945,
	rsb	r1, r5, r7	@ tmp178, temp.2994, temp.2994
	ldr	r6, [ip, #12]	@ code_len_byte, <variable>.bitstream_length
	add	r2, ip, r3	@ ivtmp.2946, temp.2993,
	mov	r1, r1, asl #2	@ D.46225, tmp178,
	cmp	r3, r1	@ ivtmp.2945, D.46225
	sub	lr, r1, #28	@ tmp452, D.46225,
	ubfx	r0, lr, #2, #1	@ tmp456, tmp452,,
	beq	.L835	@,
	cmp	r0, #0	@ tmp456,
	beq	.L836	@,
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r3, #56	@ ivtmp.2945,
	cmp	r3, r1	@ ivtmp.2945, D.46225
	add	r2, ip, r3	@ ivtmp.2946, temp.2993,
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	beq	.L835	@,
.L836:
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r3, r3, #56	@ ivtmp.2945, ivtmp.2945,
	ldr	r0, [r2, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, r1	@ ivtmp.2945, D.46225
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	add	r2, r2, #56	@ ivtmp.2946, ivtmp.2946,
	add	r6, r6, r0	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	bne	.L836	@,
.L835:
	rsb	r3, r5, r7	@ tmp186, temp.2994, temp.2994
	ldr	r2, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC3	@,
	add	lr, ip, r3, asl #2	@, tmp188, temp.2993, tmp186,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r6	@, code_len_byte
	ldr	lr, [lr, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	str	lr, [sp, #4]	@ <variable>.nal_trail_zero_bit_num,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ temp.2950, <variable>.pCurrNal
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r0, r0, asl #3	@, tmp196, <variable>.nal_used_segment, <variable>.nal_used_segment,
	and	r0, r1, #7	@ tmp201, <variable>.nal_bitoffset,
	add	ip, r3, r2, asl #2	@, tmp198, temp.2950, tmp196,
	str	r0, [ip, #24]	@ tmp201, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ temp.2953, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ temp.2956, <variable>.nal_used_segment
	ldr	ip, [r1, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r3, r3, asl #3	@, tmp205, temp.2956, temp.2956,
	add	r3, r1, r2, asl #2	@, tmp207, temp.2953, tmp205,
	ldr	r0, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r2, r0, ip, lsr #3	@, tmp218, <variable>.stream_phy_addr, <variable>.nal_bitoffset,
	rsb	r1, r6, r2	@ tmp220, code_len_byte, tmp218
	str	r1, [r3, #28]	@ tmp220, <variable>.bytespos
	ldr	r3, [r4, #368]	@ temp.2957, <variable>.pCurrNal
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ temp.2959, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r0, ip, ip, asl #3	@, tmp224, temp.2959, temp.2959,
	add	ip, r3, r0, asl #2	@, tmp226, temp.2957, tmp224,
	ldr	r2, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r6, r6, r2	@ tmp235, code_len_byte, <variable>.bitstream_length
	rsb	r6, r1, r6, asl #3	@, tmp239, <variable>.nal_bitoffset, tmp235,
	str	r6, [ip, #20]	@ tmp239, <variable>.valid_bitlen
	b	.L861	@
.L862:
	rsb	r0, r2, r1	@ tmp251, temp.2991, tmp443
	add	lr, r3, r0, asl #2	@, tmp253, temp.2973, tmp251,
	ldr	ip, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, ip, #8	@ tmp263, <variable>.bitsoffset,
	str	r1, [lr, #24]	@ tmp263, <variable>.bitsoffset
	ldr	r0, [r4, #368]	@ temp.2964, <variable>.pCurrNal
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ temp.2966, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp267, temp.2966, temp.2966,
	add	r3, r0, ip, asl #2	@, tmp269, temp.2964, tmp267,
	add	r1, r3, #24	@ tmp270, tmp269,
	ldr	lr, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r2, lr, #1	@ tmp279, <variable>.bytespos,
	str	r2, [r1, #4]	@ tmp279, <variable>.bytespos
.L861:
	ldr	r3, [r4, #368]	@ temp.2973, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2991, <variable>.nal_used_segment
	mov	r1, r2, asl #3	@ tmp443, temp.2991,
	rsb	r0, r2, r1	@ tmp243, temp.2991, tmp443
	add	ip, r3, r0, asl #2	@, tmp245, temp.2973, tmp243,
	ldr	lr, [ip, #28]	@ temp.2967, <variable>.bytespos
	tst	lr, #3	@ temp.2967,
	bne	.L862	@,
	rsb	r7, r5, r7	@ tmp292, temp.2994, temp.2994
	mov	r2, r5	@, temp.2994
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC4	@,
	add	r7, r3, r7, asl #2	@, tmp294, temp.2973, tmp292,
	movt	r1, #:upper16:.LC4	@,
	ldr	ip, [r7, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	ldr	r2, [r4, #368]	@ temp.2968, <variable>.pCurrNal
	ldrb	r5, [r2, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r3, [r2, #68]	@ temp.2969, <variable>.nal_segment
	add	r5, r5, #1	@ i.2972, <variable>.nal_used_segment,
	cmp	r5, r3	@ i.2972, temp.2969
	bcs	.L839	@,
	mov	r6, #0	@ tmp447,
.L848:
	mov	ip, r5, asl #3	@ tmp440, i.2972,
	rsb	r1, r5, ip	@ tmp309, i.2972, tmp440
	mov	r1, r1, asl #2	@ tmp310, tmp309,
	add	lr, r1, r2	@ tmp311, tmp310, temp.2968
	str	r6, [lr, #24]	@ tmp447, <variable>.bitsoffset
	ldr	r2, [r4, #368]	@ temp.2974, <variable>.pCurrNal
	add	r3, r1, r2	@ tmp319, tmp310, temp.2974
	ldr	r0, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r0, [r3, #28]	@ <variable>.stream_phy_addr, <variable>.bytespos
	ldr	lr, [r4, #368]	@ temp.2975, <variable>.pCurrNal
	add	r3, r1, lr	@ tmp334, tmp310, temp.2975
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r0, r2, asl #3	@ tmp344, <variable>.bitstream_length,
	str	r0, [r3, #20]	@ tmp344, <variable>.valid_bitlen
	ldr	r3, [r4, #368]	@ temp.2963, <variable>.pCurrNal
	add	lr, r1, r3	@ tmp350, tmp310, temp.2963
	ldr	r2, [lr, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	r2, #3	@ <variable>.bytespos,
	beq	.L840	@,
	mov	r2, r1	@ tmp446, tmp310
.L849:
	add	r0, r2, r3	@ tmp359, tmp446, temp.2963
	ldr	lr, [r0, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, lr, #8	@ tmp369, <variable>.bitsoffset,
	str	r1, [r0, #24]	@ tmp369, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.2980, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp375, tmp446, temp.2980
	add	r1, lr, #24	@ tmp376, tmp375,
	ldr	r0, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r3, r0, #1	@ tmp385, <variable>.bytespos,
	str	r3, [r1, #4]	@ tmp385, <variable>.bytespos
	ldr	r3, [r4, #368]	@ temp.2963, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp391, tmp446, temp.2963
	ldr	r0, [lr, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	r0, #3	@ <variable>.bytespos,
	bne	.L849	@,
.L840:
	rsb	ip, r5, ip	@ tmp398, i.2972, tmp440
	mov	r2, r5	@, i.2972
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC5	@,
	add	lr, r3, ip, asl #2	@, tmp400, temp.2963, tmp398,
	movt	r1, #:upper16:.LC5	@,
	add	r5, r5, #1	@ i.2972, i.2972,
	ldr	ip, [lr, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	ip, [sp, #0]	@ <variable>.valid_bitlen,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #368]	@ temp.2968, <variable>.pCurrNal
	ldr	r3, [r2, #68]	@ temp.2969, <variable>.nal_segment
	cmp	r3, r5	@ temp.2969, i.2972
	bhi	.L848	@,
.L839:
	sub	r3, r3, #1	@ D.41067, temp.2969,
	ldr	r1, [r2, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	rsb	ip, r3, r3, asl #3	@, tmp414, D.41067, D.41067,
	add	lr, r2, ip, asl #2	@, tmp416, temp.2968, tmp414,
	add	r2, lr, #16	@ tmp417, tmp416,
	ldr	r0, [r2, #4]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	rsb	r3, r1, r0	@ tmp427, <variable>.nal_trail_zero_bit_num, <variable>.valid_bitlen
	str	r3, [r2, #4]	@ tmp427, <variable>.valid_bitlen
	ldr	r2, [r4, #368]	@ temp.2985, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ i, <variable>.nal_used_segment
	ldr	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bls	.L846	@,
	movw	r5, #51480	@ tmp444,
.L847:
	rsb	r0, r3, r3, asl #3	@, tmp432, i, i,
	ldr	lr, [r4, r5]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	add	r3, r3, #1	@ i, i,
	add	ip, r2, r0, asl #2	@, tmp434, temp.2985, tmp432,
	ldr	r0, [ip, #28]	@ temp.2988, <variable>.bytespos
	cmp	r0, lr	@ temp.2988, <variable>.CurrPic.stream_base_addr
	strcc	r0, [r4, r5]	@ temp.2988, <variable>.CurrPic.stream_base_addr
	ldrcc	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bhi	.L847	@,
.L846:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
.LFB1446:
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
	ldrb	r2, [r3, r4]	@ zero_extendqisi2	@ D.40291, <variable>.PrevSlice.field_pic_flag
	moveq	ip, #0	@, result.3020
	movne	ip, #1	@, result.3020
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.40292, <variable>.CurrSlice.field_pic_flag
	cmp	r1, lr	@ <variable>.PrevSlice.frame_num, <variable>.CurrSlice.frame_num
	moveq	r1, ip	@, result.3021, result.3020
	orrne	r1, ip, #1	@,, result.3021, result.3020
	cmp	r2, r0	@ D.40291, D.40292
	orrne	r1, r1, #1	@,, result, result.3021
	cmp	r2, #0	@ D.40291,
	beq	.L864	@,
	cmp	r0, #0	@ D.40292,
	bne	.L872	@,
.L864:
	movw	r4, #22332	@ tmp179,
	movw	ip, #20704	@ tmp180,
	ldr	r2, [r3, r4]	@ D.40305, <variable>.PrevSlice.nal_ref_idc
	ldr	r4, [r3, ip]	@ D.40306, <variable>.CurrSlice.nal_ref_idc
	cmp	r2, r4	@ D.40305, D.40306
	moveq	r4, #0	@ prephitmp.3008,
	beq	.L866	@,
	cmp	r2, #0	@ D.40305,
	moveq	r4, #1	@ prephitmp.3008,
	bne	.L873	@,
.L866:
	movw	r0, #20675	@ tmp184,
	movw	lr, #22322	@ tmp183,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ D.40311, <variable>.CurrSlice.nal_unit_type
	ldrb	r0, [r3, lr]	@ zero_extendqisi2	@ D.40310, <variable>.PrevSlice.nal_unit_type
	cmp	r0, r2	@ D.40310, D.40311
	orrne	r1, r1, #1	@,, result.3022, result
	cmp	r2, #5	@ D.40311,
	orr	r4, r1, r4	@ result.3019, result.3022, prephitmp.3008
	beq	.L874	@,
.L868:
	movw	r0, #16488	@ tmp193,
	ldr	r2, [r3, r0]	@ D.40320, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ D.40320,
	bne	.L869	@,
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
	moveq	r1, #0	@, result.3023
	movne	r1, #1	@, result.3023
	orr	r4, r4, r1	@ result.3019, result.3019, result.3023
.L870:
	movw	lr, #20724	@ tmp218,
	mov	r0, #19	@,
	ldr	r3, [r3, lr]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	cmp	r3, #0	@ <variable>.CurrSlice.first_mb_in_slice,
	orreq	r4, r4, #1	@,, result.3025, result.3019
	mov	r2, r4	@, result.3025
	bl	dprint_vfmw	@
	mov	r0, r4	@, result.3025
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L869:
	cmp	r2, #1	@ D.40320,
	bne	.L870	@,
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
	moveq	ip, #0	@, result.3024
	movne	ip, #1	@, result.3024
	orr	r4, r4, ip	@ result.3019, result.3019, result.3024
	b	.L870	@
.L873:
	rsbs	r4, r4, #1	@ prephitmp.3008, D.40306
	movcc	r4, #0	@ prephitmp.3008
	b	.L866	@
.L872:
	movw	r0, #22321	@ tmp173,
	movw	lr, #20674	@ tmp174,
	ldrb	r4, [r3, r0]	@ zero_extendqisi2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	ldrb	r2, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r4, r2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	orrne	r1, r1, #1	@,, result, result
	b	.L864	@
.L874:
	cmp	r0, #5	@ D.40310,
	bne	.L868	@,
	movw	lr, #22340	@ tmp187,
	movw	r2, #20712	@ tmp188,
	ldr	r1, [r3, lr]	@ <variable>.PrevSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	ip, [r3, r2]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	cmp	r1, ip	@ <variable>.PrevSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	orrne	r4, r4, #1	@,, result.3019, result.3019
	b	.L868	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
.LFB1445:
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
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #19	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	movw	ip, #13584	@ tmp140,
	ldr	r3, [r4, ip]	@ <variable>.PPS, <variable>.PPS
	mov	r1, #2208	@ tmp142,
	mla	r3, r1, r5, r3	@ pPPS, tmp142, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L881	@,
	movw	r1, #13572	@ tmp146,
	ldr	r2, [r3, #28]	@ D.40265, <variable>.seq_parameter_set_id
	ldr	r3, [r4, r1]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	lr, r3, #1	@ tmp147, <variable>.MaxSpsNum,
	cmp	r2, lr	@ D.40265, tmp147
	bhi	.L882	@,
	movw	ip, #13580	@ tmp151,
	movw	r1, #3992	@ tmp153,
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mla	lr, r1, r2, r3	@ tmp154, tmp153, D.40265, <variable>.SPS
	ldrb	ip, [lr, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	ip, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.40264,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40264,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L881:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40264,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L882:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40264,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
.LFB1444:
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
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r4, r5]	@, <variable>.CurrSlice.pic_parameter_set_id
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #19	@,
	bl	dprint_vfmw	@
	movw	r1, #13584	@ tmp143,
	ldr	r3, [r4, r1]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #2208	@ tmp145,
	ldr	r2, [r4, r5]	@ temp.3072, <variable>.CurrSlice.pic_parameter_set_id
	mla	r3, ip, r2, r3	@ pPPS, tmp145, temp.3072, <variable>.PPS
	ldrb	r1, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	beq	.L888	@,
	movw	lr, #13580	@ tmp150,
	ldr	r2, [r3, #28]	@ D.40245, <variable>.seq_parameter_set_id
	ldr	ip, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #3992	@ tmp152,
	mla	r3, r1, r2, ip	@ tmp153, tmp152, D.40245, <variable>.SPS
	ldrb	lr, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.40243,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40243,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L888:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40243,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
.LFB1421:
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
	addne	r6, r0, #20480	@ ivtmp.3125, pH264Ctx,
	movne	r7, #0	@ j,
	addne	r6, r6, #236	@ ivtmp.3125, ivtmp.3125,
	beq	.L908	@,
.L891:
	ldr	r2, [r6, #0]	@ tmp154, <variable>.CurrSlice.listXsize
	cmp	r2, #0	@ tmp154,
	beq	.L894	@,
	add	r1, r7, r7, asl #5	@, tmp157, j, j,
	mov	r4, #0	@ i,
	add	r3, r8, r1, asl #2	@, tmp161, pH264Ctx, tmp157,
	add	r5, r3, #26880	@ ivtmp.3117, tmp161,
	add	r5, r5, #148	@ ivtmp.3117, ivtmp.3117,
.L892:
	ldr	ip, [r5], #4	@ tmp150, <variable>.pListX
	mov	r3, r4	@, i
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, r7	@, j
	movt	r1, #:upper16:.LC14	@,
	ldr	ip, [ip, #4]	@ D.38553, <variable>.frame_store
	add	r4, r4, #1	@ i, i,
	ldr	lr, [ip, #544]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.frame_num,
	ldr	ip, [ip, #556]	@ <variable>.poc, <variable>.poc
	str	ip, [sp, #4]	@ <variable>.poc,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #0]	@ tmp153, <variable>.CurrSlice.listXsize
	cmp	r0, r4	@ tmp153, i
	bhi	.L892	@,
.L894:
	add	r7, r7, #1	@ j, j,
	add	r6, r6, #4	@ ivtmp.3125, ivtmp.3125,
	cmp	r7, #2	@ j,
	bne	.L891	@,
	movw	r6, #20716	@ tmp162,
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L912	@,
	movw	r6, #20720	@ tmp181,
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L913	@,
.L908:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L913:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L902	@,
	add	r5, r8, #27136	@ ivtmp.3107, pH264Ctx,
	add	r4, r5, #24	@ ivtmp.3107, ivtmp.3107,
	mov	r5, #0	@ i.3129,
	b	.L907	@
.L904:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
.L903:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3129, i.3129,
	add	r4, r4, #4	@ ivtmp.3107, ivtmp.3107,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3129
	bls	.L902	@,
.L907:
	ldr	r3, [r4, #0]	@ D.38574, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L905	@,
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC16	@,
	bcc	.L904	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L903	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC18	@,
	add	r5, r5, #1	@ i.3129, i.3129,
	add	r4, r4, #4	@ ivtmp.3107, ivtmp.3107,
	ldr	r2, [ip, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3129
	bhi	.L907	@,
.L902:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	b	.L908	@
.L905:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [r3, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L903	@
.L912:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L896	@,
	add	r4, r8, #26880	@ ivtmp.3112, pH264Ctx,
	mov	r5, #0	@ i.3134,
	add	r4, r4, #148	@ ivtmp.3112, ivtmp.3112,
	b	.L901	@
.L898:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
.L897:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3134, i.3134,
	add	r4, r4, #4	@ ivtmp.3112, ivtmp.3112,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3134
	bls	.L896	@,
.L901:
	ldr	r3, [r4, #0]	@ D.38561, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L899	@,
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC16	@,
	bcc	.L898	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L897	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC18	@,
	add	r5, r5, #1	@ i.3134, i.3134,
	add	r4, r4, #4	@ ivtmp.3112, ivtmp.3112,
	ldr	r2, [ip, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3134
	bhi	.L901	@,
.L896:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	movw	r6, #20720	@ tmp181,
	bl	dprint_vfmw	@
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L908	@,
	b	.L913	@
.L899:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [r3, #556]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L897	@
	.fnend
	.size	DumpList, .-DumpList
	.align	2
	.global	DumpDPB
	.type	DumpDPB, %function
DumpDPB:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:g_PrintEnable	@ tmp144,
	movt	r1, #:upper16:g_PrintEnable	@ tmp144,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #16384	@ g_PrintEnable,
	beq	.L920	@,
	movw	r7, #26620	@ tmp147,
	ldr	r0, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L916	@,
	add	r6, r5, #26368	@ ivtmp.3189, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #56	@ ivtmp.3189, ivtmp.3189,
.L917:
	ldr	ip, [r6], #4	@ D.37232, <variable>.DPB.fs
	mov	r2, r4	@, i
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	add	r4, r4, #1	@ i, i,
	ldr	lr, [ip, #556]	@ <variable>.poc, <variable>.poc
	ldr	r3, [ip, #544]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.poc,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	str	ip, [sp, #4]	@ <variable>.is_reference,
	bl	dprint_vfmw	@
	ldr	r2, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r2, r4	@ <variable>.DPB.used_size, i
	bhi	.L917	@,
.L916:
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC19	@,
	mov	r7, #26624	@ tmp155,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L918	@,
	add	r4, r5, #26368	@ ivtmp.3184, pH264Ctx,
	add	r6, r4, #120	@ ivtmp.3184, ivtmp.3184,
	mov	r4, #0	@ i.3194,
.L919:
	ldr	ip, [r6, #0]	@ D.37240, <variable>.DPB.fs_ref
	mov	r2, r4	@, i.3194
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	ldr	lr, [ip, #556]	@ <variable>.poc, <variable>.poc
	ldr	r3, [ip, #544]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.poc,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	str	lr, [sp, #4]	@ <variable>.is_reference,
	bl	dprint_vfmw	@
	ldr	ip, [r6], #4	@ tmp161, <variable>.DPB.fs_ref
	mov	r2, r4	@, i.3194
	mov	r0, #14	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	add	r4, r4, #1	@ i.3194, i.3194,
	ldr	r3, [ip, #448]	@, <variable>.frame.poc
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r4	@ <variable>.DPB.ref_frames_in_buffer, i.3194
	bhi	.L919	@,
.L918:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #14	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
.L920:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	DumpDPB, .-DumpDPB
	.align	2
	.global	IsRefListWrong
	.type	IsRefListWrong, %function
IsRefListWrong:
	.fnstart
.LFB1482:
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
	beq	.L924	@,
	add	r5, r0, #26880	@ ivtmp.3235, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #148	@ ivtmp.3235, ivtmp.3235,
	movw	r7, #54168	@ tmp167,
	b	.L926	@
.L933:
	ldr	ip, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	ip, #0	@ <variable>.pstDecodeFs,
	beq	.L925	@,
	ldr	r3, [r4, r8]	@ D.43384, <variable>.CurrSlice.listXsize
	cmp	r3, r6	@ D.43384, i
	bls	.L932	@,
.L926:
	ldr	r1, [r5, #0]	@ tmp148, <variable>.pListX
	add	r6, r6, #1	@ i, i,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3235, ivtmp.3235,
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L933	@,
.L925:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L924:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L932:
	cmp	r3, #0	@ D.43384,
	beq	.L924	@,
	movw	r8, #20720	@ tmp153,
	ldr	r0, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L924	@,
	add	r6, r4, #27136	@ ivtmp.3230, pH264Ctx,
	movw	r7, #54168	@ tmp165,
	add	r5, r6, #24	@ ivtmp.3230, ivtmp.3230,
	mov	r6, #0	@ i.3243,
	b	.L927	@
.L934:
	ldr	r2, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L925	@,
	ldr	r1, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r6	@ <variable>.CurrSlice.listXsize, i.3243
	bls	.L924	@,
.L927:
	ldr	r3, [r5, #0]	@ tmp158, <variable>.pListX
	add	r6, r6, #1	@ i.3243, i.3243,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3230, ivtmp.3230,
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3241
	bne	.L934	@,
	b	.L925	@
	.fnend
	.size	IsRefListWrong, .-IsRefListWrong
	.align	2
	.global	WriteSliceMsg
	.type	WriteSliceMsg, %function
WriteSliceMsg:
	.fnstart
.LFB1439:
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
	movw	r3, #54092	@ tmp196,
	ldr	r2, [r0, r3]	@, <variable>.SliceParaNum
	mov	r4, #13568	@ tmp201,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #4060	@ tmp200,
	str	r2, [fp, #-48]	@, %sfp
	ldr	ip, [fp, #-48]	@, %sfp
	ldr	r0, [r0, r4]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	add	r2, ip, #1	@ D.39870,,
	str	r2, [r6, r3]	@ D.39870, <variable>.SliceParaNum
	sub	r7, r0, #1	@ tmp202, <variable>.MaxSliceNum,
	movw	r0, #54088	@ tmp198,
	cmp	ip, r7	@, tmp202
	mul	r4, r1, ip	@ tmp199, tmp200,
	ldr	ip, [r6, r0]	@ D.39871, <variable>.DecSlicePara
	movcs	r3, #0	@ tmp207,
	mlacc	r2, r1, r2, ip	@ tmp206, tmp200, D.39870, D.39871
	add	r7, ip, r4	@ pCurrSlicePara, D.39871, tmp199
	strcs	r3, [r7, #4056]	@ tmp207, <variable>.pNextSlice
	strcc	r2, [r7, #4056]	@ tmp206, <variable>.pNextSlice
	ldr	r1, [r6, #368]	@ D.39882, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ i.3448, <variable>.nal_used_segment
	ldr	r0, [r1, #68]	@ i.3590, <variable>.nal_segment
	cmp	r3, #1	@ i.3448,
	cmpls	r3, r0	@, i.3448, i.3590
	bcs	.L938	@,
	add	r5, r3, #4	@ tmp215, i.3448,
	add	r2, r7, r5, asl #2	@, ivtmp.3438, pCurrSlicePara, tmp215,
.L939:
	rsb	r0, r3, r3, asl #3	@, tmp220, i.3448, i.3448,
	add	r3, r3, #1	@ i.3448, i.3448,
	mov	r5, r0, asl #2	@ tmp221, tmp220,
	add	r1, r5, r1	@ tmp222, tmp221, D.39882
	ldr	r1, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	r1, [r2, #0]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r1, [r6, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r1, r5, r1	@ tmp231, tmp221, <variable>.pCurrNal
	ldr	r1, [r1, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	str	r1, [r2, #-8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r6, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r0, r5, r1	@ tmp240, tmp221, <variable>.pCurrNal
	cmp	r3, #1	@ i.3448,
	movhi	r5, #0	@, tmp249
	movls	r5, #1	@, tmp249
	ldr	r1, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	str	r1, [r2, #8]	@ <variable>.bytespos, <variable>.bytespos
	add	r2, r2, #4	@ ivtmp.3438, ivtmp.3438,
	ldr	r1, [r6, #368]	@ D.39882, <variable>.pCurrNal
	ldr	r0, [r1, #68]	@ i.3590, <variable>.nal_segment
	cmp	r0, r3	@ i.3590, i.3448
	movls	r5, #0	@, tmp249,
	cmp	r5, #0	@ tmp249,
	bne	.L939	@,
.L938:
	cmp	r0, #1	@ i.3590,
	bhi	.L940	@,
	add	r3, r0, #4	@ tmp250, i.3590,
	add	r1, r7, #24	@ D.46742, pCurrSlicePara,
	mov	r2, #0	@ tmp589,
	add	r0, r7, r3, asl #2	@, ivtmp.3431, pCurrSlicePara, tmp250,
	add	r3, r0, #4	@ ivtmp.3431, ivtmp.3431,
	rsb	r5, r0, r1	@ tmp602, ivtmp.3431, D.46742
	cmp	r3, r1	@ ivtmp.3431, D.46742
	sub	r5, r5, #4	@ tmp603, tmp602,
	ubfx	r5, r5, #2, #1	@ tmp604, tmp603,,
	str	r2, [r0, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
	beq	.L940	@,
	cmp	r5, #0	@ tmp604,
	beq	.L941	@,
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	add	r3, r3, #4	@ ivtmp.3431, ivtmp.3431,
	cmp	r3, r1	@ ivtmp.3431, D.46742
	beq	.L940	@,
.L941:
	add	r0, r3, #4	@ tmp605, ivtmp.3431,
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	str	r2, [r3, #4]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	add	r3, r0, #4	@ ivtmp.3431, tmp605,
	cmp	r3, r1	@ ivtmp.3431, D.46742
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
	bne	.L941	@,
.L940:
	movw	r0, #50985	@ tmp255,
	ldr	r2, [fp, #-48]	@, %sfp
	ldrb	r3, [r6, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	movw	r1, #17628	@ tmp258,
	movw	r0, #22284	@ tmp259,
	cmp	r2, #0	@,
	strb	r3, [r7, #1]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r6, r0]	@ <variable>.CurrSlice.slice_qp_delta, <variable>.CurrSlice.slice_qp_delta
	ldr	r2, [r6, r1]	@ <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrPPS.pic_init_qp_minus26
	add	r1, r2, r3	@ tmp260, <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrSlice.slice_qp_delta
	add	r3, r1, #26	@ D.39896, tmp260,
	str	r3, [r7, #32]	@ D.39896, <variable>.SliceQPy
	bne	.L942	@,
	movw	r2, #51416	@ tmp264,
	ldr	r0, [r6, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r0, #460]	@ D.39896, <variable>.frame.MaxQp
	ldr	r3, [r6, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r1, [r7, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	str	r1, [r3, #464]	@ <variable>.SliceQPy, <variable>.frame.MinQp
.L943:
	movw	r3, #22280	@ tmp273,
	movw	r1, #20732	@ tmp275,
	ldr	r2, [r6, r3]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.CurrSlice.cabac_init_idc
	movw	r3, #20672	@ tmp279,
	str	r2, [r7, #36]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.cabac_init_idc
	movw	r2, #20728	@ tmp277,
	ldr	r0, [r6, r1]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	str	r0, [r7, #40]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r1, [r6, r2]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r2, #20724	@ tmp282,
	str	r1, [r7, #44]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	r1, #20678	@ tmp284,
	ldrb	r0, [r6, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	strb	r0, [ip, r4]	@ <variable>.CurrSlice.slice_type, <variable>.slice_type
	ldr	ip, [r6, r2]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r2, #13608	@ tmp287,
	str	ip, [r7, #48]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.first_mb_in_slice
	ldrb	r0, [r6, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	movw	r1, #20716	@ tmp290,
	strb	r0, [r7, #2]	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	ldrb	ip, [r6, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.CurrSPS.direct_8x8_inference_flag
	movw	r2, #20720	@ tmp292,
	strb	ip, [r7, #3]	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldr	r0, [r6, r1]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	r0, [r7, #52]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldr	ip, [r6, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	ip, [r7, #56]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldrb	r3, [r6, r3]	@ zero_extendqisi2	@ temp.3455, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ temp.3455,
	beq	.L1029	@,
	cmp	r3, #0	@ temp.3455,
	movweq	r3, #17582	@ tmp298,
	movne	r3, #0	@ tmp301,
	ldreqb	r3, [r6, r3]	@ zero_extendqisi2	@ <variable>.CurrPPS.weighted_pred_flag, <variable>.CurrPPS.weighted_pred_flag
	strb	r3, [r7, #4]	@ tmp301, <variable>.weight_flag
.L945:
	movw	r2, #17632	@ tmp303,
	movw	r0, #17636	@ tmp305,
	ldr	r1, [r6, r2]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.CurrPPS.chroma_qp_index_offset
	movw	r3, #22292	@ tmp307,
	str	r1, [r7, #60]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movw	r1, #22296	@ tmp309,
	ldr	ip, [r6, r0]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.CurrPPS.second_chroma_qp_index_offset
	str	ip, [r7, #64]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movw	ip, #22288	@ tmp311,
	ldr	r2, [r6, r3]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r2, [r7, #68]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	movw	r2, #20672	@ tmp313,
	ldr	r0, [r6, r1]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.CurrSlice.slice_beta_offset_div2
	str	r0, [r7, #72]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	ldr	r3, [r6, ip]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r3, [r7, #76]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	ldrb	r1, [r6, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L947	@,
	movw	r8, #20716	@ tmp315,
	ldr	r4, [r6, r8]	@ temp.3610, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3610,
	beq	.L948	@,
	movw	ip, #27028	@ tmp317,
	ldr	r3, [r6, ip]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3585, <variable>.frame_store
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r9, #0	@ <variable>.non_existing,
	beq	.L949	@,
	tst	r4, #1	@ temp.3610,
	add	r3, r6, #26880	@ tmp325, pH264Ctx,
	add	r1, r3, #152	@ ivtmp.3425, tmp325,
	mov	r0, #0	@ i.3458,
	bne	.L951	@,
	ldr	r9, [r1, #0]	@ tmp624, <variable>.pListX
	add	r1, r3, #156	@ ivtmp.3425, tmp325,
	mov	r0, #1	@ i.3458,
	ldr	r3, [r9, #4]	@ temp.3585, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	bne	.L951	@,
.L949:
	movw	lr, #54168	@ tmp321,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r6, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [r1, #4]	@, <variable>.PhyFsID
	str	r4, [fp, #-52]	@, %sfp
	b	.L952	@
.L953:
	ldr	r9, [r2], #4	@ tmp319, <variable>.pListX
	ldr	r3, [r9, #4]	@ temp.3585, <variable>.frame_store
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r8, #0	@ <variable>.non_existing,
	beq	.L949	@,
	ldr	ip, [r1, #4]	@ tmp626, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3425, tmp600,
	ldr	r3, [ip, #4]	@ temp.3585, <variable>.frame_store
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r8, #0	@ <variable>.non_existing,
	beq	.L949	@,
.L951:
	add	r0, r0, #1	@ tmp599, i.3458,
	mov	r2, r1	@ tmp600, ivtmp.3425
	cmp	r0, r4	@ tmp599, temp.3610
	add	r0, r0, #1	@ i.3458, tmp599,
	bcc	.L953	@,
.L948:
	mov	r2, #0	@,
	str	r2, [fp, #-52]	@, %sfp
.L952:
	movw	r3, #20720	@ tmp326,
	ldr	r4, [r6, r3]	@ temp.3606, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3606,
	beq	.L954	@,
	movw	r9, #27160	@ tmp328,
	ldr	r8, [r6, r9]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r8, #4]	@ temp.3586, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L955	@,
	tst	r4, #1	@ temp.3606,
	add	r3, r6, #27136	@ tmp336, pH264Ctx,
	add	r1, r3, #28	@ ivtmp.3420, tmp336,
	mov	r0, #0	@ i.3463,
	bne	.L957	@,
	ldr	r8, [r1, #0]	@ tmp620, <variable>.pListX
	add	r1, r3, #32	@ ivtmp.3420, tmp336,
	mov	r0, #1	@ i.3463,
	ldr	r3, [r8, #4]	@ temp.3586, <variable>.frame_store
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r9, #0	@ <variable>.non_existing,
	bne	.L957	@,
	b	.L955	@
.L959:
	ldr	r3, [r2], #4	@ tmp330, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3586, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L955	@,
	ldr	r3, [r1, #4]	@ tmp622, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3420, tmp595,
	ldr	r3, [r3, #4]	@ temp.3586, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L955	@,
.L957:
	add	r0, r0, #1	@ tmp594, i.3463,
	mov	r2, r1	@ tmp595, ivtmp.3420
	cmp	r0, r4	@ tmp594, temp.3606
	add	r0, r0, #1	@ i.3463, tmp594,
	bcc	.L959	@,
.L954:
	mov	r8, #0	@,
	str	r8, [fp, #-60]	@, %sfp
.L958:
	movw	r9, #50979	@ tmp337,
	ldrb	r8, [r6, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	beq	.L960	@,
	movw	r9, #20716	@ tmp339,
	ldr	ip, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L962	@,
	add	r8, r6, #26880	@ ivtmp.3400, pH264Ctx,
	mov	r5, r7	@ ivtmp.3405, pCurrSlicePara
	add	r4, r8, #148	@ ivtmp.3400, ivtmp.3400,
	str	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
	mov	r8, #0	@ i.3446,
	movw	sl, #54168	@ tmp586,
	ldr	r7, [fp, #-52]	@ ExistImgIdc_0.3444, %sfp
	b	.L978	@
.L976:
	strb	r3, [r5, #1630]	@ temp.3546, <variable>.btm_structure
	add	r8, r8, #1	@ i.3446, i.3446,
	ldr	ip, [r4, #0]	@ tmp471, <variable>.pListX
	ldrb	r0, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r5, #1631]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	r3, [r4, #0]	@ tmp474, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3400, ivtmp.3400,
	ldr	lr, [r3, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r5, #1656]	@ <variable>.poc, <variable>.btm_poc
	add	r5, r5, #36	@ ivtmp.3405, ivtmp.3405,
	ldr	r2, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3446
	bls	.L1030	@,
.L978:
	ldr	r3, [r4, #0]	@ tmp435, <variable>.pListX
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #0]	@ tmp438, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r2, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	ip, [r5, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, #0]	@ tmp441, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r2, [r5, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	ip, [r4, #0]	@ tmp445, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_0.3442, ExistImgIdc_0.3444
	beq	.L974	@,
	cmp	r0, #0	@ pstLogicFs.3523,
	ldrne	r3, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3442, <variable>.PhyFsID
.L974:
	str	r0, [r5, #1640]	@ ExistImgIdc_0.3442, <variable>.img_idc
	ldr	r3, [r4, #0]	@ tmp449, <variable>.pListX
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r1, [r5, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r2, [r4, #0]	@ tmp452, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #556]	@ <variable>.poc, <variable>.poc
	str	r0, [r5, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r3, [r4, #0]	@ tmp455, <variable>.pListX
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r5, #1624]	@ <variable>.structure, <variable>.list_structure
	ldr	r1, [r4, #0]	@ tmp458, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r2, #432]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r5, #1626]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp462, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3546, <variable>.structure
	cmp	r3, #1	@ temp.3546,
	bne	.L976	@,
	strb	r3, [r5, #1628]	@ temp.3546, <variable>.top_structure
	add	r8, r8, #1	@ i.3446, i.3446,
	ldr	r1, [r4, #0]	@ tmp465, <variable>.pListX
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r5, #1629]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	ip, [r4, #0]	@ tmp468, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3400, ivtmp.3400,
	ldr	r0, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r5, #1652]	@ <variable>.poc, <variable>.top_poc
	add	r5, r5, #36	@ ivtmp.3405, ivtmp.3405,
	ldr	r2, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3446
	bhi	.L978	@,
.L1030:
	ldr	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
.L962:
	movw	r3, #20672	@ tmp478,
	ldrb	r1, [r6, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1031	@,
.L968:
	mov	r3, #0	@ ivtmp.3338,
.L985:
	add	r0, r6, r3	@ tmp530, pH264Ctx, ivtmp.3338
	add	r2, r3, #4	@ tmp590, ivtmp.3338,
	add	ip, r0, #26880	@ tmp532, tmp530,
	add	r1, r6, r2	@ tmp616, pH264Ctx, tmp590
	add	r0, r7, r3	@ tmp529, pCurrSlicePara, ivtmp.3338
	add	r1, r1, #26880	@ tmp617, tmp616,
	ldr	ip, [ip, #20]	@ tmp533, <variable>.APC.RefIdx
	add	r3, r2, #4	@ ivtmp.3338, tmp590,
	cmp	r3, #128	@ ivtmp.3338,
	add	r2, r7, r2	@ tmp615, pCurrSlicePara, tmp590
	str	ip, [r0, #3928]	@ tmp533, <variable>.Apc2RefIdx
	ldr	ip, [r1, #20]	@ tmp619, <variable>.APC.RefIdx
	str	ip, [r2, #3928]	@ tmp619, <variable>.Apc2RefIdx
	bne	.L985	@,
	movw	r2, #17582	@ tmp534,
	movw	r0, #17624	@ tmp537,
	ldrb	r1, [r6, r2]	@ zero_extendqisi2	@ temp.3595, <variable>.CurrPPS.weighted_pred_flag
	movw	ip, #52988	@ tmp535,
	ldr	r2, [r6, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	mov	r3, #52992	@ tmp536,
	cmp	r1, #0	@ temp.3595,
	str	r1, [r6, ip]	@ temp.3595, <variable>.DecPicPara.weighted_pred_flag
	str	r2, [r6, r3]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.DecPicPara.weighted_bipred_idc
	beq	.L986	@,
	movw	ip, #20672	@ tmp539,
	ldrb	r3, [r6, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L986	@,
.L987:
	mov	r1, #20736	@ tmp545,
	movw	ip, #20740	@ tmp547,
	ldr	r4, [r6, r1]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.CurrSlice.luma_log2_weight_denom
	add	r0, r6, r1	@ ivtmp.3317, pH264Ctx,
	add	r3, r0, #8	@ ivtmp.3317, ivtmp.3317,
	mov	r1, r7	@ ivtmp.3609, pCurrSlicePara
	mov	r2, r7	@ ivtmp.3321, ivtmp.3609
	mov	r0, #0	@ i,
	str	r4, [r7, #80]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	movw	r4, #20728	@ tmp574,
	ldr	ip, [r6, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r7, #84]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
.L988:
	ldr	ip, [r3, #0]	@ tmp550, <variable>.CurrSlice.wp_weight_l0_y
	add	r0, r0, #1	@ i, i,
	str	ip, [r2, #88]	@ tmp550, <variable>.wp_weight_l0_y
	ldr	ip, [r3, #128]	@ tmp551, <variable>.CurrSlice.wp_weight_l0_u
	str	ip, [r2, #216]	@ tmp551, <variable>.wp_weight_l0_u
	ldr	ip, [r3, #256]	@ tmp552, <variable>.CurrSlice.wp_weight_l0_v
	str	ip, [r2, #344]	@ tmp552, <variable>.wp_weight_l0_v
	ldr	ip, [r3, #768]	@ tmp553, <variable>.CurrSlice.wp_offset_l0_y
	str	ip, [r2, #856]	@ tmp553, <variable>.wp_offset_l0_y
	ldr	ip, [r3, #896]	@ tmp554, <variable>.CurrSlice.wp_offset_l0_u
	str	ip, [r2, #984]	@ tmp554, <variable>.wp_offset_l0_u
	ldr	ip, [r3, #1024]	@ tmp555, <variable>.CurrSlice.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.3317, ivtmp.3317,
	str	ip, [r2, #1112]	@ tmp555, <variable>.wp_offset_l0_v
	add	r2, r2, #4	@ ivtmp.3321, ivtmp.3321,
	ldr	ip, [r6, r4]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	ip, r0	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L988	@,
	movw	r3, #20672	@ tmp558,
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1032	@,
.L947:
	ldr	r0, [fp, #-48]	@, %sfp
	mov	r1, #0	@ tmp572,
	ldr	ip, [r6, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r3, r0, #12992	@ tmp569,,
	add	r2, r3, #18	@ tmp569, tmp569,
	str	ip, [r6, r2, asl #2]	@ <variable>.pCurrNal, <variable>.pSliceNal
	str	r1, [r6, #368]	@ tmp572, <variable>.pCurrNal
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L942:
	movw	r1, #51416	@ tmp268,
	ldr	r2, [r6, r1]	@ temp.3453, <variable>.CurrPic.frame_store
	ldr	r0, [r2, #460]	@ <variable>.frame.MaxQp, <variable>.frame.MaxQp
	ldr	r1, [r2, #464]	@ <variable>.frame.MinQp, <variable>.frame.MinQp
	cmp	r0, r3	@ <variable>.frame.MaxQp, D.39896
	strge	r0, [r2, #460]	@, <variable>.frame.MaxQp, <variable>.frame.MaxQp
	strlt	r3, [r2, #460]	@, D.39896, <variable>.frame.MaxQp
	cmp	r1, r3	@ <variable>.frame.MinQp, D.39896
	strle	r1, [r2, #464]	@, <variable>.frame.MinQp, <variable>.frame.MinQp
	strgt	r3, [r2, #464]	@, D.39896, <variable>.frame.MinQp
	b	.L943	@
.L986:
	movw	r0, #17624	@ tmp541,
	ldr	r1, [r6, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	cmp	r1, #1	@ <variable>.CurrPPS.weighted_bipred_idc,
	bne	.L947	@,
	movw	r3, #20672	@ tmp543,
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L947	@,
	b	.L987	@
.L960:
	movw	r9, #20716	@ tmp341,
	ldr	r3, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L963	@,
	mov	r4, r7	@ ivtmp.3367, pCurrSlicePara
	str	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
	ldr	r7, [fp, #-52]	@ ExistImgIdc_0.3444, %sfp
	add	sl, r6, #26880	@ ivtmp.3362, pH264Ctx,
	add	r5, sl, #148	@ ivtmp.3362, ivtmp.3362,
	movw	sl, #54168	@ tmp579,
.L967:
	ldr	r1, [r5, #0]	@ tmp346, <variable>.pListX
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r5, #0]	@ tmp349, <variable>.pListX
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [ip, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r1, [r5, #0]	@ tmp352, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	ip, [r4, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r5, #0]	@ tmp356, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_0, ExistImgIdc_0.3444
	beq	.L965	@,
	cmp	r0, #0	@ pstLogicFs.3468,
	ldrne	r3, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0, <variable>.PhyFsID
.L965:
	str	r0, [r4, #1640]	@ ExistImgIdc_0, <variable>.img_idc
	add	r8, r8, #1	@ i.3456, i.3456,
	ldr	r2, [r5, #0]	@ tmp360, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r0, [r4, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r1, [r5, #0]	@ tmp363, <variable>.pListX
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #556]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r2, [r5, #0]	@ tmp366, <variable>.pListX
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r4, #1627]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r0, [r5, #0]	@ tmp369, <variable>.pListX
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	r1, [r4, #1626]	@ <variable>.structure, <variable>.frame_structure
	ldr	lr, [r5, #0]	@ tmp372, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r2, [r4, #1648]	@ <variable>.frame.poc, <variable>.frame_poc
	mov	r2, #0	@,
	ldr	ip, [r5, #0]	@ tmp375, <variable>.pListX
	ldr	r0, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r0, #484]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	r1, [r4, #1652]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	lr, [r5], #4	@ tmp378, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r3, #520]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	r2, [r4, #1624]	@, <variable>.list_structure
	str	ip, [r4, #1656]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3367, ivtmp.3367,
	ldr	r0, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3456
	bhi	.L967	@,
	ldr	r7, [fp, #-56]	@ pCurrSlicePara, %sfp
.L963:
	movw	r1, #20672	@ tmp385,
	ldrb	r3, [r6, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L968	@,
	movw	r9, #20720	@ tmp387,
	ldr	r0, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L968	@,
	add	r4, r7, #1632	@ ivtmp.3351, pCurrSlicePara,
	add	r5, r6, #27136	@ ivtmp.3344, pH264Ctx,
	str	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	add	r5, r5, #24	@ ivtmp.3344, ivtmp.3344,
	ldr	r7, [fp, #-60]	@ ExistImgIdc_1.3445, %sfp
	add	r4, r4, #8	@ ivtmp.3351, ivtmp.3351,
	mov	r8, #0	@ i.3517,
	movw	sl, #54168	@ tmp575,
.L972:
	ldr	ip, [r5, #0]	@ tmp393, <variable>.pListX
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #0]	@ tmp396, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1148]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r5, #0]	@ tmp399, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r3, [r4, #1137]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r5, #0]	@ tmp403, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_1, ExistImgIdc_1.3445
	beq	.L970	@,
	cmp	r0, #0	@ pstLogicFs.3495,
	ldrne	r3, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1, <variable>.PhyFsID
.L970:
	str	r0, [r4, #0]	@ ExistImgIdc_1, <variable>.img_idc
	add	r8, r8, #1	@ i.3517, i.3517,
	ldr	r1, [r5, #0]	@ tmp407, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r0, [r4, #1156]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r5, #0]	@ tmp410, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #556]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1144]	@ <variable>.poc, <variable>.poc
	ldr	r1, [r5, #0]	@ tmp413, <variable>.pListX
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r4, #1139]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r0, [r5, #0]	@ tmp416, <variable>.pListX
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	ip, [r4, #1138]	@ <variable>.structure, <variable>.frame_structure
	ldr	lr, [r5, #0]	@ tmp419, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r3, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r1, [r4, #1160]	@ <variable>.frame.poc, <variable>.frame_poc
	mov	r1, #0	@,
	ldr	r2, [r5, #0]	@ tmp422, <variable>.pListX
	ldr	r0, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r0, #484]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	ip, [r4, #1164]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	lr, [r5], #4	@ tmp425, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #520]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	r1, [r4, #1136]	@, <variable>.list_structure
	str	r2, [r4, #1168]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3351, ivtmp.3351,
	ldr	r0, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3517
	bhi	.L972	@,
.L1028:
	ldr	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	b	.L968	@
.L955:
	movw	lr, #54168	@ tmp332,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r6, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r2, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [r2, #4]	@, <variable>.PhyFsID
	str	r1, [fp, #-60]	@, %sfp
	b	.L958	@
.L1029:
	movw	r0, #17624	@ tmp295,
	ldr	ip, [r6, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	strb	ip, [r7, #4]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.weight_flag
	b	.L945	@
.L1031:
	movw	r9, #20720	@ tmp480,
	ldr	r0, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L968	@,
	add	sl, r7, #2800	@ ivtmp.3389, pCurrSlicePara,
	add	r4, r6, #27136	@ ivtmp.3380, pH264Ctx,
	add	r5, sl, #4	@ ivtmp.3389, ivtmp.3389,
	str	r7, [fp, #-52]	@ pCurrSlicePara, %sfp
	add	r4, r4, #24	@ ivtmp.3380, ivtmp.3380,
	mov	r8, #0	@ i.3447,
	movw	sl, #54168	@ tmp583,
	ldr	r7, [fp, #-60]	@ ExistImgIdc_1.3445, %sfp
	b	.L984	@
.L982:
	strb	r3, [r5, #-22]	@ temp.3584, <variable>.btm_structure
	ldr	r2, [r4, #0]	@ tmp522, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r5, #-21]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	ip, [r4, #0]	@ tmp525, <variable>.pListX
	ldr	lr, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r5, #4]	@ <variable>.poc, <variable>.btm_poc
.L983:
	ldr	r1, [r6, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r8, r8, #1	@ i.3447, i.3447,
	add	r4, r4, #4	@ ivtmp.3380, ivtmp.3380,
	add	r5, r5, #36	@ ivtmp.3389, ivtmp.3389,
	cmp	r1, r8	@ <variable>.CurrSlice.listXsize, i.3447
	bls	.L1028	@,
.L984:
	ldr	ip, [r4, #0]	@ tmp486, <variable>.pListX
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4, #0]	@ tmp489, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r1, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r5, #-16]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r4, #0]	@ tmp492, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r1, [r5, #-27]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r4, #0]	@ tmp496, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	moveq	r0, r7	@ ExistImgIdc_1.3443, ExistImgIdc_1.3445
	beq	.L980	@,
	cmp	r0, #0	@ pstLogicFs.3561,
	ldrne	r3, [r0, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1.3443, <variable>.PhyFsID
.L980:
	str	r0, [r5, #-12]	@ ExistImgIdc_1.3443, <variable>.img_idc
	ldr	ip, [r4, #0]	@ tmp500, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r3, [r5, #-8]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r1, [r4, #0]	@ tmp503, <variable>.pListX
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r2, #556]	@ <variable>.poc, <variable>.poc
	str	r0, [r5, #-20]	@ <variable>.poc, <variable>.poc
	ldr	ip, [r4, #0]	@ tmp506, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r5, #-28]	@ <variable>.structure, <variable>.list_structure
	ldr	r3, [r4, #0]	@ tmp509, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r1, #432]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r2, [r5, #-26]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp513, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3584, <variable>.structure
	cmp	r3, #1	@ temp.3584,
	bne	.L982	@,
	strb	r3, [r5, #-24]	@ temp.3584, <variable>.top_structure
	ldr	r3, [r4, #0]	@ tmp516, <variable>.pListX
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r1, [r5, #-23]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	r2, [r4, #0]	@ tmp519, <variable>.pListX
	ldr	r0, [r2, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r5, #0]	@ <variable>.poc, <variable>.top_poc
	b	.L983	@
.L1032:
	add	r0, r6, #20992	@ ivtmp.3300, pH264Ctx,
	mov	r2, #0	@ i.3451,
	add	r3, r0, #136	@ ivtmp.3300, ivtmp.3300,
	movw	ip, #20732	@ tmp573,
.L989:
	ldr	r0, [r3, #0]	@ tmp561, <variable>.CurrSlice.wp_weight_l1_y
	add	r2, r2, #1	@ i.3451, i.3451,
	str	r0, [r1, #472]	@ tmp561, <variable>.wp_weight_l1_y
	ldr	r0, [r3, #128]	@ tmp562, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r1, #600]	@ tmp562, <variable>.wp_weight_l1_u
	ldr	r0, [r3, #256]	@ tmp563, <variable>.CurrSlice.wp_weight_l1_v
	str	r0, [r1, #728]	@ tmp563, <variable>.wp_weight_l1_v
	ldr	r0, [r3, #768]	@ tmp564, <variable>.CurrSlice.wp_offset_l1_y
	str	r0, [r1, #1240]	@ tmp564, <variable>.wp_offset_l1_y
	ldr	r0, [r3, #896]	@ tmp565, <variable>.CurrSlice.wp_offset_l1_u
	str	r0, [r1, #1368]	@ tmp565, <variable>.wp_offset_l1_u
	ldr	r0, [r3, #1024]	@ tmp566, <variable>.CurrSlice.wp_offset_l1_v
	add	r3, r3, #4	@ ivtmp.3300, ivtmp.3300,
	str	r0, [r1, #1496]	@ tmp566, <variable>.wp_offset_l1_v
	add	r1, r1, #4	@ ivtmp.3609, ivtmp.3609,
	ldr	r0, [r6, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r0, r2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.3451
	bcs	.L989	@,
	b	.L947	@
	.fnend
	.size	WriteSliceMsg, .-WriteSliceMsg
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
.LFB1387:
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
	beq	.L1060	@,
	cmp	r2, #1	@ structure,
	beq	.L1037	@,
	cmp	r2, #2	@ structure,
	beq	.L1061	@,
	ldr	r7, [r5, #484]	@ toppoc, <variable>.top_field.poc
	ldr	r8, [r5, #520]	@ bottompoc, <variable>.bottom_field.poc
.L1039:
	movw	r3, #26892	@ tmp152,
	ldr	r0, [r6, r3]	@ D.36860, <variable>.APC.size
	cmp	r0, #0	@ D.36860,
	beq	.L1040	@,
	movw	r1, #26636	@ tmp153,
	ldr	r4, [r6, r1]	@ <variable>.APC.is_used, <variable>.APC.is_used
	cmp	r4, #0	@ <variable>.APC.is_used,
	beq	.L1042	@,
	tst	r0, #1	@ D.36860,
	add	r3, r6, #26624	@ tmp191, pH264Ctx,
	add	r2, r3, #16	@ ivtmp.3642, tmp191,
	mov	r4, #0	@ i,
	bne	.L1043	@,
	ldr	ip, [r2, #0]	@ D.36832, <variable>.APC.is_used
	mov	r4, #1	@ i,
	add	r2, r3, #20	@ ivtmp.3642, tmp191,
	cmp	ip, #0	@ D.36832,
	bne	.L1043	@,
	b	.L1042	@
.L1048:
	ldr	ip, [r3], #4	@ D.36832, <variable>.APC.is_used
	cmp	ip, #0	@ D.36832,
	beq	.L1042	@,
	ldr	r1, [r2, #4]	@ D.36832, <variable>.APC.is_used
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.3642, tmp196,
	cmp	r1, #0	@ D.36832,
	beq	.L1042	@,
.L1043:
	add	r4, r4, #1	@ i, i,
	mov	r3, r2	@ tmp196, ivtmp.3642
	cmp	r4, r0	@ i, D.36860
	bcc	.L1048	@,
.L1040:
	mvn	r0, #0	@ D.36830,
.L1035:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1061:
	ldr	r7, [r5, #520]	@ toppoc, <variable>.bottom_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L1039	@
.L1042:
	movw	r2, #54168	@ tmp155,
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	ip, r0, #0	@ pstLogicFs,
	beq	.L1044	@,
	ldr	r0, [ip, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L1044	@,
	add	r2, r4, #6656	@ tmp160, i,
	movw	sl, #26896	@ tmp186,
	movw	r1, #:lower16:.LC24	@,
	mov	r3, r4	@, i
	add	r0, r6, r2, asl #2	@, tmp163, pH264Ctx, tmp160,
	ldr	r2, [r6, sl]	@ D.36847, <variable>.APC.used_size
	mov	sl, #1	@ tmp165,
	movt	r1, #:upper16:.LC24	@,
	mov	lr, r0	@ tmp184, tmp163
	str	sl, [r0, #12]	@ tmp165, <variable>.APC.is_used
	ldr	r0, [ip, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #15	@ D.36847,
	addls	r2, r2, #1	@ iftmp.475, D.36847,
	movhi	r2, #16	@ iftmp.475,
	ldr	ip, [r0, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	mov	r0, #13	@,
	str	r7, [lr, #140]	@ toppoc, <variable>.APC.poc
	str	r8, [lr, #204]	@ bottompoc, <variable>.APC.poc
	str	ip, [lr, #76]	@ <variable>.PhyFsID, <variable>.APC.idc
	movw	lr, #26896	@ tmp187,
	str	r2, [r6, lr]	@ iftmp.475, <variable>.APC.used_size
	ldr	r2, [r5, #164]	@, <variable>.fs_image.image_id
	bl	dprint_vfmw	@
	str	r4, [r5, #584]	@ i, <variable>.apc_idc
	mov	r0, #0	@ D.36830,
	b	.L1035	@
.L1037:
	ldr	r7, [r5, #484]	@ toppoc, <variable>.top_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L1039	@
.L1060:
	mov	r0, r5	@, pFrameStore
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #1907	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36830,
	b	.L1035	@
.L1044:
	mov	lr, #0	@ tmp190,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ D.36855, <variable>.is_reference
	ldr	r2, [r5, #540]	@ D.36836, <variable>.logic_fs_id
	mov	r0, lr	@, tmp190
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36830,
	b	.L1035	@
	.fnend
	.size	GetAPC, .-GetAPC
	.align	2
	.global	ExchangePts
	.type	ExchangePts, %function
ExchangePts:
	.fnstart
.LFB1380:
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
	beq	.L1068	@,
	movw	r7, #26620	@ tmp146,
	ldr	r3, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L1068	@,
	add	r5, r4, #26368	@ ivtmp.3676, pH264Ctx,
	mvn	r8, #1	@ MinPts.3683,
	add	r5, r5, #56	@ ivtmp.3676, ivtmp.3676,
	mvn	r9, #0	@ MinPts.3683,
	mov	r6, #0	@ i,
	movw	sl, #54168	@ tmp169,
	mvn	r0, #0	@,
	str	r0, [fp, #-56]	@, %sfp
.L1067:
	ldr	r3, [r5, #0]	@ D.36488, <variable>.DPB.fs
	cmp	r3, #0	@ D.36488,
	beq	.L1064	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1064	@,
	ldrsb	r1, [r0, #1]	@ D.36496, <variable>.s32DispState
	cmp	r1, #3	@ D.36496,
	cmpne	r1, #0	@, D.36496,
	beq	.L1064	@,
	ldr	r2, [r5, #0]	@ tmp161, <variable>.DPB.fs
	ldrd	r0, [r2, #16]	@, tmp161,
	cmp	r1, r9	@, MinPts.3683
	cmpeq	r0, r8	@, MinPts.3683
	strcc	r6, [fp, #-56]	@ i, %sfp
	strd	r0, [fp, #-52]	@,,
	bcc	.L1065	@,
.L1064:
	strd	r8, [fp, #-52]	@ MinPts.3683,,
.L1065:
	ldr	ip, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r6, r6, #1	@ i, i,
	ldrd	r8, [fp, #-52]	@ MinPts.3683,,
	add	r5, r5, #4	@ ivtmp.3676, ivtmp.3676,
	cmp	r6, ip	@ i, <variable>.DPB.used_size
	bcc	.L1067	@,
	ldr	r3, [fp, #-56]	@, %sfp
	cmn	r3, #1	@,
	beq	.L1068	@,
	ldr	r6, [fp, #-60]	@, %sfp
	mov	r0, r8	@, MinPts.3683
	mov	r1, r9	@, MinPts.3683
	ldrd	r2, [r6, #16]	@ temp.3680,,
	cmp	r1, r3	@, temp.3680
	cmpeq	r0, r2	@, temp.3680
	bcc	.L1069	@,
.L1068:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1069:
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r6, r8	@, MinPts.3683
	mov	r7, r9	@, MinPts.3683
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
	b	.L1068	@
	.fnend
	.size	ExchangePts, .-ExchangePts
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
.LFB1379:
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
	movw	r0, #52668	@ tmp145,
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	r3, [r5, r0]	@ <variable>.IDRFound, <variable>.IDRFound
	cmp	r3, #0	@ <variable>.IDRFound,
	bne	.L1071	@,
	ldr	r1, [r1, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	beq	.L1072	@,
	movw	ip, #54096	@ tmp148,
	ldr	r2, [r5, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r2, #0	@ <variable>.OldDecMode,
	beq	.L1088	@,
.L1072:
	movw	r1, #52668	@ tmp152,
	mov	lr, #1	@ tmp153,
	str	lr, [r5, r1]	@ tmp153, <variable>.IDRFound
.L1071:
	movw	r2, #54168	@ tmp154,
	ldr	r1, [r4, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1074	@,
	ldrsb	r3, [r0, #1]	@ D.36423, <variable>.s32DispState
	cmp	r3, #3	@ D.36423,
	cmpne	r3, #0	@, D.36423,
	beq	.L1089	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.36440, <variable>.is_used
	cmp	r2, #0	@ D.36440,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.3698, <variable>.non_existing
	beq	.L1084	@,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	beq	.L1084	@,
	ldr	r3, [r4, #0]	@ tmp178,* pFrameStore
	movw	ip, #:lower16:50332416	@ tmp179,
	movt	ip, #:upper16:50332416	@ tmp179,
	bic	r1, r3, #16711680	@ tmp176, tmp178,
	bic	lr, r1, #255	@ tmp176, tmp176,
	cmp	lr, ip	@ tmp176, tmp179
	beq	.L1090	@,
	cmp	r2, #1	@ D.36440,
	beq	.L1091	@,
	cmp	r2, #2	@ D.36440,
	beq	.L1092	@,
.L1081:
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #168]	@ D.36466, <variable>.stDispImg.error_level
	ldr	r3, [lr, #4]	@ D.36467, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.36466, D.36467
	movls	r0, #0	@ D.36417,
	bhi	.L1093	@,
.L1073:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1092:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3716, <variable>.mode_skip_flag
	tst	r3, #2	@ temp.3716,
	beq	.L1081	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
.L1089:
	movw	r1, #:lower16:.LC27	@,
	ldr	r2, [r4, #540]	@, <variable>.logic_fs_id
	movt	r1, #:upper16:.LC27	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1076:
	ldr	r3, [r4, #560]	@ <variable>.eFoState, <variable>.eFoState
	mvn	r0, #2	@ D.36417,
	cmp	r3, #1	@ <variable>.eFoState,
	moveq	r3, #2	@ tmp173,
	streq	r3, [r4, #560]	@ tmp173, <variable>.eFoState
	b	.L1073	@
.L1091:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3714, <variable>.mode_skip_flag
	tst	r3, #1	@ temp.3714,
	beq	.L1081	@,
	mov	r0, r2	@, D.36440
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
.L1074:
	ldr	ip, [r4, #540]	@ <variable>.logic_fs_id, <variable>.logic_fs_id
	movw	r1, #:lower16:.LC28	@,
	ldr	r3, [r4, #560]	@ <variable>.eFoState, <variable>.eFoState
	movt	r1, #:upper16:.LC28	@,
	mov	r2, r4	@, pFrameStore
	mov	r0, #1	@,
	str	ip, [sp, #0]	@ <variable>.logic_fs_id,
	bl	dprint_vfmw	@
	b	.L1076	@
.L1088:
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L1072	@,
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
.L1084:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
.L1093:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
.L1090:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@, <variable>.mode_skip_flag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36417,
	b	.L1073	@
	.fnend
	.size	CheckFrameStore, .-CheckFrameStore
	.align	2
	.global	H264DEC_RecycleImage
	.type	H264DEC_RecycleImage, %function
H264DEC_RecycleImage:
	.fnstart
.LFB1486:
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
	movw	r6, #54168	@ tmp144,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ PicID, PicID
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r5	@, PicID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pstLogicFs,
	bne	.L1102	@,
.L1095:
	mvn	r0, #0	@ D.43654,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1102:
	ldrsb	r3, [r7, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #0	@ <variable>.s32DispState,
	beq	.L1095	@,
	ldr	r1, [r7, #180]	@ D.43656, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ D.43656,
	beq	.L1096	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp149,
	str	r0, [r7, #180]	@ tmp149, <variable>.stDispImg.p_usrdat
.L1096:
	ldr	r1, [r7, #184]	@ temp.3750, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3750,
	beq	.L1097	@,
	movw	r2, #54168	@ tmp150,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp152,
	str	r1, [r7, #184]	@ tmp152, <variable>.stDispImg.p_usrdat
.L1097:
	ldr	r1, [r7, #188]	@ temp.3752, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3752,
	beq	.L1098	@,
	movw	lr, #54168	@ tmp153,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp155,
	str	ip, [r7, #188]	@ tmp155, <variable>.stDispImg.p_usrdat
.L1098:
	ldr	r1, [r7, #192]	@ temp.3746, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3746,
	beq	.L1099	@,
	movw	r2, #54168	@ tmp156,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp158,
	str	r3, [r7, #192]	@ tmp158, <variable>.stDispImg.p_usrdat
.L1099:
	movw	ip, #54168	@ tmp159,
	mov	r1, r5	@, PicID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.43654,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	H264DEC_RecycleImage, .-H264DEC_RecycleImage
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
	.fnstart
.LFB1352:
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
	ldr	ip, [r5, #368]	@ D.35714, <variable>.pCurrNal
	mov	r2, r6	@, SE_TRACEstring
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
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
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r7, r2	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsGet	@
	ldr	ip, [r6, #368]	@ D.35702, <variable>.pCurrNal
	mov	r2, r7	@, SE_TRACEstring
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
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
.LFB1469:
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
	mla	r3, r1, r0, r4	@ pSPS.3830, tmp154, <variable>.CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	movne	r4, r3	@ pSPS, pSPS.3830
	bne	.L1113	@,
	movw	r2, #13572	@ tmp156,
	ldr	ip, [r5, r2]	@ D.42547, <variable>.MaxSpsNum
	cmp	ip, #0	@ D.42547,
	ble	.L1109	@,
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L1110	@,
	tst	ip, #1	@ D.42547,
	add	r3, r4, #3984	@ ivtmp.3826, pSPS,
	add	r3, r3, #8	@ ivtmp.3826, ivtmp.3826,
	bne	.L1112	@,
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.42544, <variable>.is_valid
	mov	r4, r3	@ pSPS, ivtmp.3826
	add	r3, r3, #3984	@ ivtmp.3826, ivtmp.3826,
	mov	r1, #1	@ i,
	cmp	r0, #0	@ D.42544,
	add	r3, r3, #8	@ ivtmp.3826, ivtmp.3826,
	beq	.L1112	@,
	b	.L1110	@
.L1114:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ D.42544, <variable>.is_valid
	add	r2, r2, #8	@ tmp180, tmp158,
	cmp	r0, #0	@ D.42544,
	bne	.L1110	@,
	mov	r4, r2	@ pSPS, tmp180
	ldrb	r2, [r2, #23]	@ zero_extendqisi2	@ D.42544, <variable>.is_valid
	cmp	r2, #0	@ D.42544,
	bne	.L1110	@,
.L1112:
	add	r0, r1, #1	@ tmp181, i,
	add	r2, r3, #3984	@ tmp158, pSPS,
	cmp	ip, r0	@ D.42547, tmp181
	mov	r4, r3	@ pSPS, ivtmp.3826
	add	r1, r0, #1	@ i, tmp181,
	add	r3, r2, #4000	@ ivtmp.3826, tmp158,
	bgt	.L1114	@,
.L1109:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.42551,
.L1115:
	mov	r0, r3	@, D.42551
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1110:
	cmp	r4, #0	@ pSPS,
	beq	.L1109	@,
.L1113:
	ldrb	r1, [r4, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	r1, #0	@ <variable>.vui_parameters_present_flag,
	beq	.L1116	@,
	ldrb	ip, [r4, #35]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag, <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L1131	@,
	ldr	lr, [r4, #388]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r6, [r4, #392]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, lr, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r6, #1	@ dpb_output_len, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L1119:
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	bl	u_v	@
	movw	ip, #26416	@ tmp169,
	mov	r1, r6	@, dpb_output_len
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	str	r0, [r5, ip]	@, <variable>.PicTimingSEI.cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26420	@ tmp171,
	str	r0, [r5, r1]	@, <variable>.PicTimingSEI.dpb_output_delay
.L1116:
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.pic_struct_present_flag, <variable>.vui_seq_parameters.pic_struct_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.pic_struct_present_flag,
	beq	.L1115	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r2, #:upper16:.LC39	@,
	bl	u_v	@
	mov	r3, #0	@ D.42551,
	movw	r2, #26412	@ tmp174,
	strb	r0, [r5, r2]	@, <variable>.PicTimingSEI.pic_struct
	mov	r0, r3	@, D.42551
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1131:
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag, <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L1116	@,
	ldr	r0, [r4, #700]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r3, [r4, #704]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r0, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r3, #1	@ dpb_output_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L1119	@
	.fnend
	.size	H264_DecPicTimingSEI, .-H264_DecPicTimingSEI
	.align	2
	.global	GetBackPicFromVOQueue
	.type	GetBackPicFromVOQueue, %function
GetBackPicFromVOQueue:
	.fnstart
.LFB1427:
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
	movw	r3, #54168	@ tmp144,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L1150	@,
.L1133:
	movw	sl, #52652	@ tmp147,
	ldr	r0, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r0, #0	@ <variable>.TotalFsNum,
	beq	.L1134	@,
	add	r4, r6, #27136	@ ivtmp.3866, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #161	@ ivtmp.3866, ivtmp.3866,
	mov	r5, r7	@ tmp172, i
	movw	r8, #54168	@ tmp173,
.L1139:
	ldr	r1, [r4, #179]	@ D.38771, <variable>.fs_image.p_usrdat
	add	r7, r7, #1	@ i, i,
	strb	r5, [r4, #0]	@ tmp172, <variable>.is_used
	cmp	r1, #0	@ D.38771,
	strb	r5, [r4, #1]	@ tmp172, <variable>.is_reference
	beq	.L1135	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #179]	@ tmp172, <variable>.fs_image.p_usrdat
.L1135:
	ldr	r1, [r4, #183]	@ temp.3879, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3879,
	beq	.L1136	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #183]	@ tmp172, <variable>.fs_image.p_usrdat
.L1136:
	ldr	r1, [r4, #187]	@ temp.3881, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3881,
	beq	.L1137	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #187]	@ tmp172, <variable>.fs_image.p_usrdat
.L1137:
	ldr	r1, [r4, #191]	@ temp.3874, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3874,
	beq	.L1138	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #191]	@ tmp172, <variable>.fs_image.p_usrdat
.L1138:
	ldr	r1, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r4, r4, #592	@ ivtmp.3866, ivtmp.3866,
	cmp	r1, r7	@ <variable>.TotalFsNum, i
	bhi	.L1139	@,
.L1134:
	movw	r2, #52656	@ tmp168,
	ldr	ip, [r6, r2]	@ D.38775, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.38775,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r6, r6, #52480	@ tmp169, pH264Ctx,
	mov	r2, #1	@ i.3876,
	add	r3, r6, #104	@ ivtmp.3861, tmp169,
	cmp	r2, ip	@ i.3876, D.38775
	sub	lr, ip, #1	@ tmp175, D.38775,
	mov	r0, #0	@ tmp171,
	add	r1, r6, #108	@ ivtmp.3861, tmp169,
	str	r0, [r3, #0]	@ tmp171, <variable>.PmvStoreUsedFlag
	and	r3, lr, r2	@ tmp177, tmp175,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r3, #0	@ tmp177,
	beq	.L1141	@,
	mov	r2, #2	@ i.3876,
	cmp	r2, ip	@ i.3876, D.38775
	str	r0, [r1, #0]	@ tmp171, <variable>.PmvStoreUsedFlag
	add	r1, r6, #112	@ ivtmp.3861, tmp169,
	ldmcsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1141:
	add	r2, r2, #2	@ i.3876, i.3876,
	mov	lr, r1	@ tmp179, ivtmp.3861
	cmp	r2, ip	@ i.3876, D.38775
	str	r0, [lr], #4	@ tmp171, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp171, <variable>.PmvStoreUsedFlag
	add	r1, lr, #4	@ ivtmp.3861, tmp179,
	bcc	.L1141	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1150:
	add	r0, r6, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1133	@
	.fnend
	.size	GetBackPicFromVOQueue, .-GetBackPicFromVOQueue
	.align	2
	.global	WriteCurrPicYUV
	.type	WriteCurrPicYUV, %function
WriteCurrPicYUV:
	.fnstart
.LFB1436:
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
	movw	r5, #51416	@ tmp139,
	ldr	lr, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r2, #50979	@ tmp137,
	ldrb	r5, [r0, r2]	@ zero_extendqisi2	@ structure, <variable>.CurrPic.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #:lower16:.LC40	@,
	mov	r0, #2	@,
	ldr	r6, [lr, #164]	@ addressIDC, <variable>.fs_image.image_id
	movt	r1, #:upper16:.LC40	@,
	mov	r2, r5	@, structure
	mov	r3, r6	@, addressIDC
	bl	dprint_vfmw	@
	mov	r1, #592	@ tmp162,
	mla	r6, r1, r6, r4	@ tmp163, tmp162, addressIDC, pH264Ctx
	cmp	r5, #3	@ structure,
	cmpne	r5, #0	@, structure,
	addne	r5, r5, #1	@ PicStructure, structure,
	moveq	r5, #1	@ PicStructure,
	add	r0, r6, #27392	@ tmp164, tmp163,
	add	ip, r0, #8	@ tmp164, tmp164,
	ldr	r0, [ip, #4]	@, <variable>.fs_image.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	movw	r2, #27408	@ tmp166,
	ldr	r0, [r6, r2]	@, <variable>.fs_image.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	movw	r1, #51468	@ tmp175,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	r3, #51464	@ tmp173,
	ldr	r3, [r4, r3]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	mov	r2, r5	@, PicStructure
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC41	@,
	str	ip, [sp, #0]	@ <variable>.CurrPic.pic_height_in_mb,
	bl	dprint_vfmw	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	WriteCurrPicYUV, .-WriteCurrPicYUV
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
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
	subs	r4, r1, #0	@ pNalu, pNalu
	mov	r6, r0	@ ChanID, ChanID
	beq	.L1162	@,
	ldr	r3, [r4, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r5, #0	@ tmp137,
	strb	r5, [r4, #1]	@ tmp137, <variable>.is_valid
	cmp	r3, r5	@ <variable>.streamBuffer,
	strb	r5, [r4, #3]	@ tmp137, <variable>.nal_integ
	beq	.L1159	@,
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC42	@,
	ldr	r2, [r4, #8]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC42	@,
	ldr	r3, [r4, #12]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	str	r5, [r4, #12]	@ tmp137, <variable>.bitstream_length
	str	r5, [r4, #8]	@ tmp137, <variable>.streamBuffer
	str	r5, [r4, #24]	@ tmp137, <variable>.bitsoffset
.L1159:
	ldr	r0, [r4, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r0, #0	@ <variable>.streamBuffer,
	beq	.L1160	@,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC42	@,
	ldr	r2, [r4, #36]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC42	@,
	ldr	r3, [r4, #40]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp154,
	str	r1, [r4, #40]	@ tmp154, <variable>.bitstream_length
	str	r1, [r4, #36]	@ tmp154, <variable>.streamBuffer
	str	r1, [r4, #52]	@ tmp154, <variable>.bitsoffset
.L1160:
	mov	r2, #0	@ tmp157,
	str	r2, [r4, #68]	@ tmp157, <variable>.nal_segment
	strb	r2, [r4, #0]	@ tmp157, <variable>.nal_used_segment
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1162:
	mov	r0, r4	@, pNalu
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #3363	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
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
	add	r4, r0, #51968	@ ivtmp.3976, pH264Ctx,
	add	sl, r0, #52480	@ D.47296, pH264Ctx,
	add	r4, r4, #72	@ ivtmp.3976, ivtmp.3976,
	add	sl, sl, #104	@ D.47296, D.47296,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #54168	@ tmp148,
	mov	r7, #0	@ tmp149,
.L1165:
	ldr	r1, [r4, #0]	@ D.35758, <variable>.pSliceNal
	add	r5, r4, #4	@ tmp150, ivtmp.3976,
	cmp	r1, #0	@ D.35758,
	beq	.L1164	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #0]	@ tmp149, <variable>.pSliceNal
.L1164:
	ldr	r1, [r4, #4]	@ D.35758, <variable>.pSliceNal
	cmp	r1, #0	@ D.35758,
	beq	.L1168	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #4]	@ tmp149, <variable>.pSliceNal
.L1168:
	add	r4, r5, #4	@ ivtmp.3976, tmp150,
	cmp	r4, sl	@ ivtmp.3976, D.47296
	bne	.L1165	@,
	movw	r1, #54092	@ tmp143,
	movw	r3, #54152	@ tmp145,
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
.LFB1357:
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
	movw	r2, #13576	@ tmp136,
	ldr	r0, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r1, #22320	@ tmp140,
	movw	r2, #22352	@ tmp155,
	mov	ip, #0	@ tmp141,
	movw	r3, #22328	@ tmp135,
	str	ip, [r4, r2]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	strb	ip, [r4, r1]	@ tmp141, <variable>.PrevSlice.field_pic_flag
	movw	r2, #22321	@ tmp143,
	movw	r1, #22336	@ tmp138,
	str	r0, [r4, r3]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r3, #:lower16:88888	@ tmp162,
	movt	r3, #:upper16:88888	@ tmp162,
	str	r3, [r4, r1]	@ tmp162, <variable>.PrevSlice.frame_num
	mov	r3, #2	@ tmp144,
	movw	r1, #22332	@ tmp146,
	strb	r3, [r4, r2]	@ tmp144, <variable>.PrevSlice.bottom_field_flag
	movw	r2, #22322	@ tmp148,
	mov	r3, #7	@ tmp147,
	str	r3, [r4, r1]	@ tmp147, <variable>.PrevSlice.nal_ref_idc
	mov	r1, #32	@ tmp149,
	movw	r3, #22344	@ tmp151,
	strb	r1, [r4, r2]	@ tmp149, <variable>.PrevSlice.nal_unit_type
	movw	r2, #22348	@ tmp153,
	mov	r1, #3	@ tmp152,
	str	r1, [r4, r3]	@ tmp152, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r3, #0	@ tmp154,
	movw	r1, #22356	@ tmp157,
	str	r3, [r4, r2]	@ tmp154, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r3, #22360	@ tmp159,
	mov	r0, ip	@, tmp141
	movw	r2, #:lower16:92928	@ tmp163,
	str	ip, [r4, r1]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	movt	r2, #:upper16:92928	@ tmp163,
	str	r2, [r4, r3]	@ tmp163, <variable>.PrevSlice.first_mb_in_slice
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	H264_ClearCurrPic, .-H264_ClearCurrPic
	.align	2
	.global	ClearAllNal
	.type	ClearAllNal, %function
ClearAllNal:
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
	ldrb	r3, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r7, #54168	@ tmp147,
	cmp	r3, #1	@ <variable>.is_valid,
	beq	.L1186	@,
.L1179:
	mov	r3, #1	@ i,
	add	r2, r6, #96	@ ivtmp.4034, pH264Ctx,
	b	.L1176	@
.L1175:
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	beq	.L1187	@,
.L1181:
	add	r3, r5, #1	@ i, tmp148,
	add	r2, r4, #96	@ ivtmp.4034, tmp149,
	cmp	r3, #137	@ i,
	beq	.L1188	@,
.L1176:
	add	r4, r2, #96	@ tmp149, ivtmp.4034,
	ldrb	r2, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r5, r3, #1	@ tmp148, i,
	cmp	r2, #1	@ <variable>.is_valid,
	bne	.L1175	@,
	add	ip, r3, r3, asl #1	@, tmp142, i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	r1, r6, ip, asl #5	@, tmp144, pH264Ctx, tmp142,
	add	r1, r1, #376	@, tmp144,
	bl	ReleaseNAL	@
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	bne	.L1181	@,
.L1187:
	add	r3, r5, r5, asl #1	@, tmp166, tmp148, tmp148,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	lr, r6, r3, asl #5	@, tmp168, pH264Ctx, tmp166,
	add	r1, lr, #376	@, tmp168,
	bl	ReleaseNAL	@
	add	r3, r5, #1	@ i, tmp148,
	cmp	r3, #137	@ i,
	add	r2, r4, #96	@ ivtmp.4034, tmp149,
	bne	.L1176	@,
.L1188:
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1186:
	ldr	r0, [r0, r7]	@, <variable>.ChanID
	add	r1, r6, #376	@, pH264Ctx,
	bl	ReleaseNAL	@
	b	.L1179	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	H264DEC_Destroy
	.type	H264DEC_Destroy, %function
H264DEC_Destroy:
	.fnstart
.LFB1484:
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
	movw	r0, #54104	@ tmp145,
	ldr	r2, [r6, r0]	@ <variable>.MutexHold, <variable>.MutexHold
	movw	r7, #52680	@ tmp149,
	ldr	r3, [r6, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r2, #1	@ <variable>.MutexHold,
	moveq	r2, #0	@ tmp148,
	streq	r2, [r6, r0]	@ tmp148, <variable>.MutexHold
	cmp	r3, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1191	@,
	add	r4, r6, #52480	@ ivtmp.4078, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #204	@ ivtmp.4078, ivtmp.4078,
	movw	sl, #54168	@ tmp174,
	mov	r8, r5	@ tmp175, i
.L1193:
	ldr	r1, [r4, #0]	@ D.43523, <variable>.pUsrDatArray
	add	r5, r5, #1	@ i, i,
	cmp	r1, #0	@ D.43523,
	beq	.L1192	@,
	ldr	r0, [r6, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp175, <variable>.pUsrDatArray
.L1192:
	ldr	r1, [r6, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.4078, ivtmp.4078,
	cmp	r1, r5	@ <variable>.TotalUsrDatNum, i
	bhi	.L1193	@,
.L1191:
	add	r5, r6, #27392	@ ivtmp.4070, pH264Ctx,
	add	sl, r6, #50944	@ D.47396, pH264Ctx,
	add	r4, r5, #84	@ ivtmp.4070, ivtmp.4070,
	add	sl, sl, #212	@ D.47396, D.47396,
	movw	r8, #54168	@ tmp172,
	mov	r7, #0	@ tmp173,
.L1194:
	ldr	r1, [r4, #0]	@ temp.4082, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4082,
	beq	.L1196	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #0]	@ tmp173, <variable>.fs_image.p_usrdat
.L1196:
	ldr	r1, [r4, #4]	@ temp.4085, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4085,
	beq	.L1197	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #4]	@ tmp173, <variable>.fs_image.p_usrdat
.L1197:
	ldr	r1, [r4, #8]	@ temp.4087, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4087,
	beq	.L1198	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #8]	@ tmp173, <variable>.fs_image.p_usrdat
.L1198:
	ldr	r1, [r4, #12]	@ D.43529, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ D.43529,
	beq	.L1200	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #12]	@ tmp173, <variable>.fs_image.p_usrdat
.L1200:
	ldr	r1, [r4, #592]	@ temp.4082, <variable>.fs_image.p_usrdat
	add	r5, r4, #592	@ tmp177, ivtmp.4070,
	cmp	r1, #0	@ temp.4082,
	beq	.L1204	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #592]	@ tmp173, <variable>.fs_image.p_usrdat
.L1204:
	ldr	r1, [r5, #4]	@ temp.4085, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4085,
	beq	.L1205	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #4]	@ tmp173, <variable>.fs_image.p_usrdat
.L1205:
	ldr	r1, [r5, #8]	@ temp.4087, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.4087,
	beq	.L1206	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #8]	@ tmp173, <variable>.fs_image.p_usrdat
.L1206:
	ldr	r1, [r5, #12]	@ D.43529, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ D.43529,
	beq	.L1210	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #12]	@ tmp173, <variable>.fs_image.p_usrdat
.L1210:
	add	r4, r5, #592	@ ivtmp.4070, tmp177,
	cmp	r4, sl	@ ivtmp.4070, D.47396
	bne	.L1194	@,
	movw	r1, #:lower16:.LC43	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	H264DEC_Destroy, .-H264DEC_Destroy
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
.LFB1353:
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
	ldr	r1, [r0, #368]	@ D.35722, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ D.35722,
	beq	.L1212	@,
	movw	r2, #54168	@ tmp136,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #368]	@ tmp138, <variable>.pCurrNal
.L1212:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
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
	movw	r1, #:lower16:.LC44	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movt	r1, #:upper16:.LC44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #54124	@ tmp136,
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
.LFB1402:
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
	beq	.L1219	@,
	movcc	r9, #1	@ i_list_cnt,
	bcs	.L1257	@,
.L1222:
	add	r6, r3, #20480	@ ivtmp.4184, pH264Ctx,
	add	r7, r3, #26880	@ ivtmp.4187, pH264Ctx,
	mov	sl, #0	@ pRepairPic.4195,
	add	r6, r6, #236	@ ivtmp.4184, ivtmp.4184,
	add	r7, r7, #148	@ ivtmp.4187, ivtmp.4187,
	mov	r5, sl	@ i_list, pRepairPic.4195
	movw	r8, #51416	@ tmp194,
.L1236:
	ldr	r4, [r6, #0]	@ temp.4190, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.4190,
	beq	.L1223	@,
	ldr	r1, [r7, #0]	@ pRepairPic.4196, <variable>.pListX
	cmp	r1, #0	@ pRepairPic.4196,
	movne	ip, r1	@ pRepairPic, pRepairPic.4196
	bne	.L1225	@,
	add	ip, r5, r5, asl #5	@, tmp161, i_list, i_list,
	tst	r4, #1	@ temp.4190,
	mov	r0, r1	@ i, pRepairPic.4196
	add	r2, r3, ip, asl #2	@, tmp165, pH264Ctx, tmp161,
	add	ip, r2, #26880	@ ivtmp.4181, tmp165,
	add	r2, ip, #148	@ ivtmp.4181, ivtmp.4181,
	bne	.L1226	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	mov	r0, #1	@ i,
	cmp	ip, #0	@ pRepairPic,
	beq	.L1226	@,
	b	.L1225	@
.L1228:
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1225	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1225	@,
.L1226:
	add	r0, r0, #1	@ tmp204, i,
	cmp	r4, r0	@ temp.4190, tmp204
	add	r0, r0, #1	@ i, tmp204,
	bhi	.L1228	@,
	mov	ip, sl	@ pRepairPic, pRepairPic.4195
	mov	r2, #1	@ prephitmp.4151,
.L1227:
	cmp	ip, #0	@ pRepairPic,
	orreq	r2, r2, #1	@,, tmp170, prephitmp.4151
	cmp	r2, #0	@ tmp170,
	beq	.L1229	@,
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1255	@,
	ldr	r0, [r3, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	ip, r0, #432	@ pRepairPic, <variable>.CurrPic.frame_store,
.L1229:
	add	r2, r5, r5, asl #5	@, tmp177, i_list, i_list,
	tst	r4, #1	@ temp.4190,
	mov	r0, #0	@ i.4191,
	add	r2, r3, r2, asl #2	@, tmp181, pH264Ctx, tmp177,
	add	r2, r2, #26880	@ ivtmp.4169, tmp181,
	add	r2, r2, #152	@ ivtmp.4169, ivtmp.4169,
	bne	.L1233	@,
	cmp	r1, #0	@ pRepairPic.4196,
	mov	r0, #1	@ i.4191,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4190, i.4191
	add	r2, r2, #4	@ ivtmp.4169, ivtmp.4169,
	ldrhi	r1, [r2, #-4]	@ pRepairPic.4196, <variable>.pListX
	bhi	.L1233	@,
	b	.L1232	@
.L1242:
	mov	r2, r1	@ ivtmp.4169, tmp200
	add	r0, r0, #1	@ i.4191, tmp199,
	ldr	r1, [r2], #4	@ pRepairPic.4196, <variable>.pListX
.L1233:
	add	r0, r0, #1	@ tmp199, i.4191,
	cmp	r1, #0	@ pRepairPic.4196,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4190, tmp199
	add	r1, r2, #4	@ tmp200, ivtmp.4169,
	bls	.L1232	@,
	ldr	r2, [r1, #-4]	@ pRepairPic.4196, <variable>.pListX
	cmp	r2, #0	@ pRepairPic.4196,
	streq	ip, [r1, #-4]	@ pRepairPic, <variable>.pListX
	b	.L1242	@
.L1223:
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1255	@,
	ldr	r2, [r3, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, sl	@ pRepairPic, pRepairPic.4195
	mov	r1, #1	@,
	str	r1, [r6, #0]	@, <variable>.CurrSlice.listXsize
	add	r0, r2, #432	@ tmp187, <variable>.CurrPic.frame_store,
	str	r0, [r7, #0]	@ tmp187, <variable>.pListX
.L1232:
	add	r5, r5, #1	@ i_list, i_list,
	add	r6, r6, #4	@ ivtmp.4184, ivtmp.4184,
	cmp	r5, r9	@ i_list, i_list_cnt
	add	r7, r7, #132	@ ivtmp.4187, ivtmp.4187,
	bcs	.L1220	@,
	mov	sl, ip	@ pRepairPic.4195, pRepairPic
	b	.L1236	@
.L1225:
	mov	r2, #0	@ prephitmp.4151,
	b	.L1227	@
.L1257:
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L1220	@,
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.37780,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1220:
	mov	r0, #0	@ D.37780,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1255:
	mov	r0, r3	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.37780,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1219:
	mov	r9, #2	@ i_list_cnt,
	b	.L1222	@
	.fnend
	.size	RepairList, .-RepairList
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
.LFB1477:
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
	bcs	.L1260	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	mov	r5, #0	@ tmp162,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ temp.4222, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	ldr	r6, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [ip, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r3, [ip, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r6, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #4]	@ <variable>.bitstream_length,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #368]	@ temp.4224, <variable>.pCurrNal
	ldr	r3, [r0, #12]	@ temp.4225, <variable>.bitstream_length
	ldr	r6, [r0, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	ldr	r1, [r0, #8]	@, <variable>.streamBuffer
	mov	r2, r3	@, temp.4225
	rsb	r0, r3, r6	@, temp.4225, <variable>.streamBuffer
	bl	memcpy	@
	ldr	ip, [r4, #368]	@ temp.4226, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	ldr	r2, [ip, #60]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r6, [ip, #32]	@ StreamId, <variable>.StreamID
	str	r2, [ip, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r3, #24]	@ tmp162, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.4228, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	rsb	r2, r2, ip	@ tmp166, <variable>.bitstream_length, <variable>.streamBuffer
	str	r2, [r3, #8]	@ tmp166, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ temp.4233, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	rsb	r2, r2, ip	@ tmp169, <variable>.bitstream_length, <variable>.stream_phy_addr
	str	r2, [r3, #16]	@ tmp169, <variable>.stream_phy_addr
	ldr	r3, [r4, #368]	@ temp.4236, <variable>.pCurrNal
	ldr	ip, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, ip, r2	@ tmp172, <variable>.bitstream_length, <variable>.bitstream_length
	str	r2, [r3, #12]	@ tmp172, <variable>.bitstream_length
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #1	@ tmp174,
	str	ip, [r3, #68]	@ tmp174, <variable>.nal_segment
	ldr	r2, [r4, #368]	@ temp.4240, <variable>.pCurrNal
	ldr	r3, [r2, #12]	@, <variable>.bitstream_length
	ldr	r2, [r2, #16]	@, <variable>.stream_phy_addr
	bl	dprint_vfmw	@
	movw	r3, #54168	@ tmp178,
	mov	r1, r6	@, StreamId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [ip, #36]	@ tmp162, <variable>.streamBuffer
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r2, #52]	@ tmp162, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #40]	@ tmp162, <variable>.bitstream_length
.L1260:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	CombinePacket, .-CombinePacket
	.align	2
	.global	FindZeroBitsInSeg
	.type	FindZeroBitsInSeg, %function
FindZeroBitsInSeg:
	.fnstart
.LFB1475:
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
	ble	.L1263	@,
	movw	r5, #:lower16:.LANCHOR1	@ tmp192,
	ldr	r7, [fp, #-48]	@ ivtmp.4297, %sfp
	movt	r5, #:upper16:.LANCHOR1	@ tmp192,
	mov	r4, #0	@ zero_byte,
	mov	r9, r5	@ tmp193, tmp192
.L1267:
	cmp	r7, #64	@ ivtmp.4297,
	movlt	r6, r7	@ ThisRoundSize.795, ivtmp.4297
	movge	r6, #64	@ ThisRoundSize.795,
	movw	r0, #:lower16:.LANCHOR1	@,
	rsb	r1, r6, r7	@ tmp160, ThisRoundSize.795, ivtmp.4297
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r2, r6	@, ThisRoundSize.795
	sub	r6, r6, #1	@ tmp167, ThisRoundSize.795,
	add	r1, sl, r1	@, ptr, tmp160
	bl	memcpy	@
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ tmp168,
	add	r3, r5, r6	@ pLastByte, tmp192, tmp167
	cmp	r0, #0	@ tmp168,
	bne	.L1263	@,
	cmp	r3, r9	@ pLastByte, tmp193
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1264	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp171,
	rsb	lr, r3, r5	@ tmp195, pLastByte, tmp192
	cmp	r2, #0	@ tmp171,
	mvn	ip, lr	@ tmp194, tmp195
	and	r2, ip, #1	@ tmp196, tmp194,
	bne	.L1263	@,
	sub	r3, r3, #1	@ ivtmp.4286, pLastByte,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4286, tmp192
	beq	.L1264	@,
	cmp	r2, #0	@ tmp196,
	beq	.L1265	@,
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2	@ tmp203,
	cmp	lr, #0	@ tmp203,
	bne	.L1263	@,
	sub	r3, r3, #1	@ ivtmp.4286, ivtmp.4286,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4286, tmp192
	bne	.L1265	@,
	b	.L1264	@
.L1266:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ tmp201,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r0, #0	@ tmp201,
	bne	.L1263	@,
	cmp	r3, r5	@ ivtmp.4286, tmp192
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1264	@,
.L1265:
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp202,
	sub	r2, r3, #1	@ tmp198, ivtmp.4286,
	sub	r3, r2, #1	@ ivtmp.4286, tmp198,
	cmp	r1, #0	@ tmp202,
	beq	.L1266	@,
.L1263:
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r4, r0	@ zero_byte,
	bge	.L1285	@,
.L1268:
	ldr	r2, [fp, #-48]	@, %sfp
	sub	ip, r2, #1	@ tmp173,,
	rsb	r3, r4, ip	@ tmp172, zero_byte, tmp173
	ldrb	r3, [sl, r3]	@ zero_extendqisi2	@ Byte,
	tst	r3, #1	@ Byte,
	bne	.L1285	@,
	mov	r3, r3, lsr #1	@ Byte.4301, Byte,
	tst	r3, #1	@ Byte.4301,
	movne	r0, #1	@ zero_bit,
	bne	.L1269	@,
	mov	r3, r3, lsr #1	@ Byte.4304, Byte.4301,
	tst	r3, #1	@ Byte.4304,
	movne	r0, #2	@ zero_bit,
	bne	.L1269	@,
	mov	r3, r3, lsr #1	@ Byte.4307, Byte.4304,
	tst	r3, #1	@ Byte.4307,
	movne	r0, #3	@ zero_bit,
	bne	.L1269	@,
	mov	r3, r3, lsr #1	@ Byte.4310, Byte.4307,
	tst	r3, #1	@ Byte.4310,
	movne	r0, #4	@ zero_bit,
	bne	.L1269	@,
	mov	r3, r3, lsr #1	@ Byte.4313, Byte.4310,
	tst	r3, #1	@ Byte.4313,
	movne	r0, #5	@ zero_bit,
	bne	.L1269	@,
	mov	r3, r3, lsr #1	@ Byte.4316, Byte.4313,
	tst	r3, #1	@ Byte.4316,
	movne	r0, #6	@ zero_bit,
	bne	.L1269	@,
	movs	r3, r3, lsr #1	@, Byte.4316,
	movne	r0, #7	@, zero_bit,
	moveq	r0, #8	@, zero_bit,
.L1269:
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1264:
	sub	r8, r8, #1	@ r, r,
	sub	r7, r7, #64	@ ivtmp.4297, ivtmp.4297,
	cmp	r8, #0	@ r,
	bgt	.L1267	@,
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r4, r0	@ zero_byte,
	blt	.L1268	@,
.L1285:
	mov	r0, #0	@ zero_bit,
	b	.L1269	@
	.fnend
	.size	FindZeroBitsInSeg, .-FindZeroBitsInSeg
	.align	2
	.global	FindTrailZeros
	.type	FindTrailZeros, %function
FindTrailZeros:
	.fnstart
.LFB1476:
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
	ldr	r3, [r0, #368]	@ prephitmp.4344, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r2, #1	@ <variable>.nal_segment,
	bls	.L1287	@,
	ldr	r1, [r3, #40]	@, <variable>.bitstream_length
	ldr	r0, [r3, #36]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4344, <variable>.pCurrNal
	ldr	r1, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r1, asl #3	@ zero_bit, <variable>.bitstream_length,
	bcs	.L1292	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L1287	@,
.L1289:
	add	r0, r0, #1	@ tmp152, zero_bit,
	str	r0, [r3, #72]	@ tmp152, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4359, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bls	.L1290	@,
	ldr	ip, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	cmp	r2, ip, asl #3	@ <variable>.nal_trail_zero_bit_num, <variable>.bitstream_length,
	bcc	.L1290	@,
	movw	lr, #54168	@ tmp157,
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
.L1290:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1292:
	movw	lr, #54168	@ tmp143,
	ldr	r1, [r3, #60]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #0	@ tmp147,
	mov	r0, #1	@ tmp149,
	str	ip, [r2, #36]	@ tmp147, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r0, [r3, #68]	@ tmp149, <variable>.nal_segment
	ldr	r3, [r4, #368]	@ prephitmp.4344, <variable>.pCurrNal
.L1287:
	ldr	r1, [r3, #12]	@, <variable>.bitstream_length
	ldr	r0, [r3, #8]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4344, <variable>.pCurrNal
	b	.L1289	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	H264_IsNewPicNal
	.type	H264_IsNewPicNal, %function
H264_IsNewPicNal:
	.fnstart
.LFB1473:
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
	add	r1, r1, #3	@ pu8.4391, pu8,
	and	r0, r2, #31	@ tmp141, tmp140,
	sub	r3, r0, #1	@ tmp142, tmp141,
	cmp	r3, #7	@ tmp142,
	ldrls	pc, [pc, r3, asl #2]	@ tmp142
	b	.L1294	@
.L1297:
	.word	.L1295
	.word	.L1294
	.word	.L1294
	.word	.L1294
	.word	.L1295
	.word	.L1294
	.word	.L1296
	.word	.L1296
.L1296:
	ldr	r0, [r4, #0]	@ tmp157,* pNewPicDetector
	mov	r3, #1	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* pNewPicDetector
	cmp	r0, #0	@ tmp157,
	mvnne	r0, #0	@, ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1295:
	ldr	r5, [r4, #0]	@ tmp143,* pNewPicDetector
	cmp	r5, #0	@ tmp143,
	beq	.L1304	@,
.L1299:
	mvn	r0, #0	@ ret,
.L1300:
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* pNewPicDetector
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1294:
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1304:
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
	bhi	.L1299	@,
	mov	ip, r0, asl #1	@ tmp153, zeros,
	rsb	r0, ip, #31	@ tmp154, tmp153,
	mov	r6, r6, lsr r0	@ tmp155, tmpbits,
	cmp	r6, #1	@ tmp155,
	moveq	r0, r5	@ ret, tmp143
	bne	.L1299	@,
	b	.L1300	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
.LFB1437:
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
	movw	r6, #51432	@ tmp161,
	movw	r5, #50979	@ tmp163,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r0, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	sl, #51484	@ tmp167,
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #51148	@ tmp165,
	ldr	r8, [r4, r0]	@ <variable>.CurrPic.fs_image.image_id, <variable>.CurrPic.fs_image.image_id
	movw	r1, #:lower16:.LC48	@,
	ldr	lr, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movt	r1, #:upper16:.LC48	@,
	mov	r0, #2	@,
	movw	r9, #51000	@ tmp172,
	str	r8, [sp, #0]	@ <variable>.CurrPic.fs_image.image_id,
	movw	r7, #54088	@ tmp175,
	str	lr, [sp, #4]	@ <variable>.CurrPic.pmv_address_idc,
	bl	dprint_vfmw	@
	movw	ip, #51144	@ tmp178,
	movw	r2, #13607	@ tmp188,
	movw	r3, #51468	@ tmp191,
	ldrd	r0, [r4, r9]	@, pH264Ctx, tmp172
	ldr	r9, [r4, r7]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	movw	r8, #51416	@ tmp229,
	ldr	r7, [r4, ip]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.CurrPic.fs_image.image_stride
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	ldr	r2, [r4, r3]	@, <variable>.CurrPic.pic_height_in_mb
	movw	r3, #51472	@ tmp194,
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
	movw	r6, #52712	@ tmp171,
	strd	r0, [r4, r6]	@, pH264Ctx, tmp171
	movw	r6, #53824	@ tmp174,
	str	r9, [r4, r6]	@ <variable>.DecSlicePara, <variable>.DecPicPara.pFirstSlice
	movw	r9, #53612	@ tmp177,
	ldrb	r5, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r6, #54092	@ tmp169,
	str	r7, [r4, r9]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.DecPicPara.imgstride
	mov	r9, #0	@ tmp170,
	str	r9, [r4, r6]	@ tmp170, <variable>.SliceParaNum
	movw	r6, #52720	@ tmp180,
	str	lr, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.DecPicPara.nal_ref_idc
	movw	r6, #52704	@ tmp183,
	mov	lr, #52736	@ tmp187,
	strb	r5, [r4, r6]	@ <variable>.CurrPic.structure, <variable>.DecPicPara.pic_structure
	str	ip, [r4, lr]	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.DecPicPara.mb_adaptive_frame_field_flag
	movw	r6, #52724	@ tmp190,
	ldr	r1, [fp, #-88]	@, %sfp
	movw	ip, #52728	@ tmp193,
	ldr	r3, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r7, #54168	@ tmp226,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	str	r1, [r4, r6]	@, <variable>.DecPicPara.pic_height_in_mb
	movw	r6, #52732	@ tmp196,
	ldr	lr, [fp, #-92]	@, %sfp
	add	r2, r2, #1	@ tmp199, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	str	r2, [r4, r6]	@ tmp199, <variable>.DecPicPara.pic_width_in_mb
	movw	r1, #52707	@ tmp200,
	movw	r2, #52740	@ tmp204,
	str	lr, [r4, ip]	@, <variable>.DecPicPara.frame_height_in_mb
	movw	ip, #52744	@ tmp207,
	ldr	r0, [fp, #-56]	@, %sfp
	strb	r0, [r4, r1]	@, <variable>.DecPicPara.frame_mbs_only_flag
	movw	r1, #52705	@ tmp210,
	ldr	lr, [fp, #-60]	@, %sfp
	str	lr, [r4, r2]	@, <variable>.DecPicPara.transform_8x8_mode_flag
	movw	r2, #52748	@ tmp214,
	ldr	r6, [fp, #-64]	@, %sfp
	str	r6, [r4, ip]	@, <variable>.DecPicPara.entropy_coding_mode_flag
	movw	ip, #52752	@ tmp217,
	ldr	r0, [fp, #-68]	@, %sfp
	strb	r0, [r4, r1]	@, <variable>.DecPicPara.chroma_format_idc
	movw	r1, #52756	@ tmp220,
	ldr	lr, [fp, #-72]	@, %sfp
	str	lr, [r4, r2]	@, <variable>.DecPicPara.constrained_intra_pred_flag
	movw	r2, #52760	@ tmp223,
	ldr	r6, [fp, #-76]	@, %sfp
	str	r6, [r4, ip]	@, <variable>.DecPicPara.ThisPoc
	ldr	r0, [fp, #-80]	@, %sfp
	str	r3, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.DecPicPara.BottomPoc
	ldr	r3, [r4, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r4, r1]	@, <variable>.DecPicPara.TopPoc
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r6, r0, #0	@ pstLogicFs,
	beq	.L1347	@,
	ldr	r2, [r6, #440]	@ D.39772, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39772,
	ldreq	r3, [r6, #444]	@ prephitmp.4411, <variable>.pstDispOutFs
	beq	.L1309	@,
	ldr	r3, [r6, #444]	@ prephitmp.4411, <variable>.pstDispOutFs
	cmp	r3, #0	@ prephitmp.4411,
	beq	.L1309	@,
	add	r5, r4, #53504	@ tmp238, pH264Ctx,
	add	lr, r4, #53248	@, pH264Ctx,
	add	r0, r4, #52992	@, pH264Ctx,
	add	r3, lr, #16	@,,
	add	r2, r0, #16	@,,
	add	r1, r5, #16	@, tmp238,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r8, #52996	@ tmp243,
	bl	FSP_GetDecFsAddrTab	@
	ldr	r3, [r6, #440]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r1, r5, #100	@, tmp238,
	add	r2, r5, #20	@, tmp238,
	ldr	ip, [r3, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	str	ip, [r4, r8]	@ <variable>.PhyFsID, <variable>.DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r7, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r2, #53004	@ tmp252,
	movw	r3, #53608	@ tmp255,
	movw	r1, #26892	@ tmp261,
	movw	ip, #53816	@ tmp260,
	str	r7, [r4, r2]	@ <variable>.CurrPic.pmv_address_idc, <variable>.DecPicPara.CurrPicPmvIdc
	movw	r2, #53000	@ tmp257,
	ldr	r0, [r6, #456]	@ <variable>.HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	r7, [r4, r1]	@ <variable>.APC.size, <variable>.APC.size
	str	r0, [r4, r3]	@ <variable>.HalfPmvOffset, <variable>.DecPicPara.half_pmvblk_offset
	cmp	r7, #0	@ <variable>.APC.size,
	ldr	r8, [r6, #444]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [r8, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r7, [r4, ip]	@ <variable>.APC.size, <variable>.DecPicPara.ApcSize
	str	r1, [r4, r2]	@ <variable>.PhyAddr, <variable>.DecPicPara.CurrPicImg2DAddr
	beq	.L1311	@,
	add	r6, r4, #26624	@ tmp264, pH264Ctx,
	mov	ip, #1	@ i,
	cmp	ip, r7	@ i, <variable>.APC.size
	mov	r1, r5	@ ivtmp.4492, tmp238
	mov	lr, r6	@ ivtmp.4489, tmp264
	sub	r9, r7, #1	@ tmp361, <variable>.APC.size,
	ldr	sl, [lr, #76]!	@ tmp266, <variable>.APC.idc
	and	r9, r9, ip	@ tmp363, tmp361,
	add	r2, r6, #80	@ ivtmp.4489, tmp264,
	add	r3, r5, #124	@ ivtmp.4492, tmp238,
	ldr	r8, [lr, #128]	@ tmp268, <variable>.APC.poc
	ldr	r0, [lr, #64]	@ tmp267, <variable>.APC.poc
	str	sl, [r1, #120]!	@ tmp266, <variable>.DecPicPara.Apc2Idc
	str	r8, [r1, #128]	@ tmp268, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #64]	@ tmp267, <variable>.DecPicPara.Apc2Poc
	bcs	.L1311	@,
	cmp	r9, #0	@ tmp363,
	beq	.L1346	@,
	ldr	lr, [r2, #128]	@ tmp441, <variable>.APC.poc
	mov	ip, #2	@ i,
	ldr	r0, [r2, #0]	@ tmp439, <variable>.APC.idc
	cmp	ip, r7	@ i, <variable>.APC.size
	ldr	r1, [r2, #64]	@ tmp440, <variable>.APC.poc
	add	r2, r6, #84	@ ivtmp.4489, tmp264,
	str	lr, [r3, #128]	@ tmp441, <variable>.DecPicPara.Apc2Poc
	str	r0, [r3, #0]	@ tmp439, <variable>.DecPicPara.Apc2Idc
	str	r1, [r3, #64]	@ tmp440, <variable>.DecPicPara.Apc2Poc
	add	r3, r5, #128	@ ivtmp.4492, tmp238,
	bcs	.L1311	@,
.L1346:
	mov	r9, r4	@ pH264Ctx, pH264Ctx
.L1312:
	add	r0, r2, #4	@ tmp365, ivtmp.4489,
	ldmia	r2, {r5, sl}	@ phole ldm
	add	ip, ip, #2	@ i, i,
	ldr	r8, [r2, #64]	@ tmp371, <variable>.APC.poc
	add	r1, r3, #4	@ tmp366, ivtmp.4492,
	ldr	r6, [r2, #128]	@ tmp372, <variable>.APC.poc
	add	r2, r0, #4	@ ivtmp.4489, tmp365,
	ldr	r4, [r0, #64]	@ tmp377, <variable>.APC.poc
	cmp	ip, r7	@ i, <variable>.APC.size
	ldr	r0, [r0, #128]	@ tmp378, <variable>.APC.poc
	str	r8, [r3, #64]	@ tmp371, <variable>.DecPicPara.Apc2Poc
	str	r6, [r3, #128]	@ tmp372, <variable>.DecPicPara.Apc2Poc
	stmia	r3, {r5, sl}	@ phole stm
	add	r3, r1, #4	@ ivtmp.4492, tmp366,
	str	r4, [r1, #64]	@ tmp377, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #128]	@ tmp378, <variable>.DecPicPara.Apc2Poc
	bcc	.L1312	@,
	mov	r4, r9	@ pH264Ctx, pH264Ctx
.L1311:
	movw	ip, #13613	@ tmp269,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag, <variable>.CurrSPS.seq_scaling_matrix_present_flag
	cmp	r2, #0	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1313	@,
	movw	r3, #17598	@ tmp271,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.4414, <variable>.CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ prephitmp.4414,
	bne	.L1314	@,
	add	r0, r4, #52736	@ tmp345, pH264Ctx,
	movw	r1, #:lower16:.LANCHOR2	@ tmp344,
	add	ip, r0, #28	@ ivtmp.4452, tmp345,
	movt	r1, #:upper16:.LANCHOR2	@ tmp344,
.L1315:
	and	r6, r3, #3	@ tmp274, i.4505,
	add	r2, r3, #1	@ tmp351, i.4505,
	and	r8, r2, #3	@ tmp381, tmp351,
	mov	lr, ip	@ tmp352, ivtmp.4452
	ldr	r6, [r1, r6, asl #2]	@ tmp275, quant_org
	add	r3, r2, #1	@ i.4505, tmp351,
	cmp	r3, #24	@ i.4505,
	str	r6, [lr], #4	@ tmp275, <variable>.DecPicPara.Qmatrix
	ldr	r5, [r1, r8, asl #2]	@ tmp382, quant_org
	str	r5, [ip, #4]	@ tmp382, <variable>.DecPicPara.Qmatrix
	add	ip, lr, #4	@ ivtmp.4452, tmp352,
	bne	.L1315	@,
	add	r0, r0, #124	@ ivtmp.4444, tmp345,
	mov	r3, #0	@ i.4506,
.L1316:
	and	ip, r3, #15	@ tmp278, i.4506,
	add	r3, r3, #1	@ tmp349, i.4506,
	and	r2, r3, #15	@ tmp385, tmp349,
	mov	lr, r0	@ tmp350, ivtmp.4444
	add	r5, r1, ip, asl #2	@, tmp281, tmp344, tmp278,
	add	r3, r3, #1	@ i.4506, tmp349,
	add	r8, r1, r2, asl #2	@, tmp387, tmp344, tmp385,
	cmp	r3, #32	@ i.4506,
	ldr	r5, [r5, #16]	@ tmp283, quant8_org
	str	r5, [lr], #4	@ tmp283, <variable>.DecPicPara.Qmatrix
	ldr	ip, [r8, #16]	@ tmp389, quant8_org
	str	ip, [r0, #4]	@ tmp389, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4444, tmp350,
	bne	.L1316	@,
.L1317:
	movw	r8, #26892	@ tmp332,
	ldr	r0, [r4, r8]	@ <variable>.APC.size, <variable>.APC.size
	cmp	r0, #0	@ <variable>.APC.size,
	beq	.L1323	@,
	add	r7, r4, #26624	@ ivtmp.4434, pH264Ctx,
	add	sl, r4, #53760	@ ivtmp.4437, pH264Ctx,
	add	r6, r7, #76	@ ivtmp.4434, ivtmp.4434,
	add	r5, sl, #196	@ ivtmp.4437, ivtmp.4437,
	mov	r7, #0	@ i.4521,
	movw	sl, #54168	@ tmp346,
.L1324:
	ldr	r2, [r6, #0]	@, <variable>.APC.idc
	mov	r1, #0	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	add	r7, r7, #1	@ i.4521, i.4521,
	bl	FSP_GetStoreType	@
	ldr	r3, [r4, r8]	@ <variable>.APC.size, <variable>.APC.size
	ldr	r2, [r6], #4	@ tmp340, <variable>.APC.idc
	str	r2, [r5, #64]	@ tmp340, <variable>.DecPicPara.RefPicFsId
	subs	ip, r0, #0	@ tmp339,,
	movne	ip, #1	@ tmp339
	cmp	r3, r7	@ <variable>.APC.size, i.4521
	str	ip, [r5, #0]	@ tmp339, <variable>.DecPicPara.RefPicType
	add	r5, r5, #4	@ ivtmp.4437, ivtmp.4437,
	bhi	.L1324	@,
.L1323:
	mov	r0, #0	@ D.39769,
.L1307:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1313:
	movw	lr, #17598	@ tmp284,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ prephitmp.4414, <variable>.CurrPPS.pic_scaling_matrix_present_flag
.L1314:
	cmp	r3, #1	@ prephitmp.4414,
	addne	r0, r4, #52736	@ tmp415, pH264Ctx,
	movne	r3, #0	@ i.4513,
	addne	r1, r0, #28	@ ivtmp.4484, tmp415,
	beq	.L1348	@,
.L1321:
	add	r2, r3, #1	@ tmp359, i.4513,
	add	lr, r3, #4064	@ tmp314, i.4513,
	add	r8, r2, #4064	@ tmp422, tmp359,
	add	r3, r2, #1	@ i.4513, tmp359,
	add	r5, r4, lr, asl #2	@, tmp317, pH264Ctx, tmp314,
	cmp	r3, #24	@ i.4513,
	add	ip, r4, r8, asl #2	@, tmp424, pH264Ctx, tmp422,
	mov	r2, r1	@ tmp360, ivtmp.4484
	ldr	lr, [r5, #4]	@ tmp319, <variable>.CurrSPS.qmatrix4x4
	ldr	r8, [ip, #4]	@ tmp426, <variable>.CurrSPS.qmatrix4x4
	str	lr, [r2], #4	@ tmp319, <variable>.DecPicPara.Qmatrix
	str	r8, [r1, #4]	@ tmp426, <variable>.DecPicPara.Qmatrix
	add	r1, r2, #4	@ ivtmp.4484, tmp360,
	bne	.L1321	@,
	add	r0, r0, #124	@ ivtmp.4476, tmp415,
	mov	r3, #0	@ i.4516,
.L1322:
	add	r8, r3, #1	@ tmp357, i.4516,
	add	r1, r3, #4080	@ tmp325, i.4516,
	add	r3, r8, #4080	@ tmp434, tmp357,
	add	r5, r1, #8	@ tmp325, tmp325,
	add	r2, r3, #8	@ tmp434, tmp434,
	add	r3, r8, #1	@ i.4516, tmp357,
	add	lr, r4, r5, asl #2	@, tmp329, pH264Ctx, tmp325,
	cmp	r3, #32	@ i.4516,
	add	r5, r4, r2, asl #2	@, tmp436, pH264Ctx, tmp434,
	mov	r8, r0	@ tmp358, ivtmp.4476
	ldr	ip, [lr, #4]	@ tmp331, <variable>.CurrSPS.qmatrix8x8
	ldr	r1, [r5, #4]	@ tmp438, <variable>.CurrSPS.qmatrix8x8
	str	ip, [r8], #4	@ tmp331, <variable>.DecPicPara.Qmatrix
	str	r1, [r0, #4]	@ tmp438, <variable>.DecPicPara.Qmatrix
	add	r0, r8, #4	@ ivtmp.4476, tmp358,
	bne	.L1322	@,
	b	.L1317	@
.L1348:
	add	r0, r4, #52736	@ tmp390, pH264Ctx,
	mov	r3, #0	@ i.4508,
	add	ip, r0, #28	@ ivtmp.4468, tmp390,
.L1319:
	add	r8, r3, #1	@ tmp355, i.4508,
	add	r1, r3, #4864	@ tmp290, i.4508,
	add	r3, r8, #4864	@ tmp398, tmp355,
	add	r6, r1, #26	@ tmp290, tmp290,
	add	r2, r3, #26	@ tmp398, tmp398,
	add	r3, r8, #1	@ i.4508, tmp355,
	add	lr, r4, r6, asl #2	@, tmp294, pH264Ctx, tmp290,
	cmp	r3, #24	@ i.4508,
	add	r6, r4, r2, asl #2	@, tmp400, pH264Ctx, tmp398,
	mov	r8, ip	@ tmp356, ivtmp.4468
	ldr	r5, [lr, #4]	@ tmp296, <variable>.CurrPPS.qmatrix4x4
	ldr	r1, [r6, #4]	@ tmp402, <variable>.CurrPPS.qmatrix4x4
	str	r5, [r8], #4	@ tmp296, <variable>.DecPicPara.Qmatrix
	str	r1, [ip, #4]	@ tmp402, <variable>.DecPicPara.Qmatrix
	add	ip, r8, #4	@ ivtmp.4468, tmp356,
	bne	.L1319	@,
	add	r0, r0, #124	@ ivtmp.4460, tmp390,
	mov	r3, #0	@ i.4510,
.L1320:
	add	ip, r3, #1	@ tmp353, i.4510,
	add	r1, r3, #4864	@ tmp302, i.4510,
	add	r3, ip, #4864	@ tmp410, tmp353,
	add	r5, r1, #50	@ tmp302, tmp302,
	add	lr, r3, #50	@ tmp410, tmp410,
	add	r3, ip, #1	@ i.4510, tmp353,
	add	r8, r4, r5, asl #2	@, tmp306, pH264Ctx, tmp302,
	cmp	r3, #32	@ i.4510,
	add	r5, r4, lr, asl #2	@, tmp412, pH264Ctx, tmp410,
	mov	lr, r0	@ tmp354, ivtmp.4460
	ldr	ip, [r8, #4]	@ tmp308, <variable>.CurrPPS.qmatrix8x8
	ldr	r2, [r5, #4]	@ tmp414, <variable>.CurrPPS.qmatrix8x8
	str	ip, [lr], #4	@ tmp308, <variable>.DecPicPara.Qmatrix
	str	r2, [r0, #4]	@ tmp414, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4460, tmp354,
	bne	.L1320	@,
	b	.L1317	@
.L1309:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39769,
	b	.L1307	@
.L1347:
	ldr	r3, [r4, r8]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	ldr	r2, [r3, #540]	@, <variable>.logic_fs_id
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39769,
	b	.L1307	@
	.fnend
	.size	WritePicMsg, .-WritePicMsg
	.align	2
	.global	InitListX
	.type	InitListX, %function
InitListX:
	.fnstart
.LFB1420:
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
	bne	.L1350	@,
	movw	r0, #50979	@ tmp221,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	beq	.L1351	@,
	mov	lr, #26624	@ tmp223,
	ldr	r5, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1353	@,
	add	r7, r4, #26368	@ ivtmp.4602, pH264Ctx,
	mov	r5, r2	@ list0idx.4672, <variable>.CurrSlice.slice_type
	add	r3, r7, #120	@ ivtmp.4602, ivtmp.4602,
.L1364:
	ldr	r6, [r3, #0]	@ temp.4678, <variable>.DPB.fs_ref
	sub	r1, fp, #44	@,,
	add	ip, r1, r5, asl #2	@, tmp263,, list0idx.4672,
	add	r2, r2, #1	@ i.4680, i.4680,
	add	r3, r3, #4	@ ivtmp.4602, ivtmp.4602,
	ldrb	r0, [r6, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	strne	r6, [ip, #-64]	@ temp.4678, fs_list0
	ldr	r8, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	addne	r5, r5, #1	@ list0idx.4672, list0idx.4672,
	cmp	r8, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4680
	bhi	.L1364	@,
.L1353:
	sub	r8, fp, #108	@ tmp267,,
	mov	r1, r5	@, list0idx.4672
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_frame_num_desc	@,
	mov	r0, r8	@, tmp267
	movt	r3, #:upper16:compare_fs_by_frame_num_desc	@,
	bl	qsort	@
	movw	r7, #50979	@ tmp273,
	add	r2, r4, #26880	@ D.38428, pH264Ctx,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r7, r2, #148	@ D.38428, D.38428,
	movw	r3, #20716	@ tmp269,
	mov	r6, #0	@ tmp270,
	mov	r1, r8	@, tmp267
	str	r6, [r4, r3]	@ tmp270, <variable>.CurrSlice.listXsize
	mov	r2, r5	@, list0idx.4672
	mov	r3, r7	@, D.38428
	add	r5, r4, #20480	@ D.38429, pH264Ctx,
	add	r8, r5, #236	@ D.38429, D.38429,
	str	r6, [sp, #4]	@ tmp270,
	str	r8, [sp, #0]	@ D.38429,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26628	@ tmp277,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	subeq	r6, fp, #236	@ tmp519,,
	beq	.L1366	@,
	mov	r3, r6	@ ivtmp.4596, tmp270
	sub	r6, fp, #236	@ tmp519,,
	mov	r5, r3	@ listltidx, ivtmp.4596
.L1367:
	add	r2, r4, r3	@ tmp280, pH264Ctx, ivtmp.4596
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	ip, r2, #26368	@ tmp282, tmp280,
	add	r5, r5, #1	@ listltidx, listltidx,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx
	ldr	lr, [ip, #184]	@ tmp283, <variable>.DPB.fs_ltref
	str	lr, [r6, r3]	@ tmp283, fs_listlt
	add	r3, r3, #4	@ ivtmp.4596, ivtmp.4596,
	bhi	.L1367	@,
.L1366:
	mov	r0, r6	@, tmp519
	mov	r1, r5	@, listltidx
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	bl	qsort	@
	movw	r3, #50979	@ tmp288,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp519
	mov	r2, r5	@, listltidx
	mov	r3, r7	@, D.38428
	mov	ip, #1	@ tmp291,
	stmia	sp, {r8, ip}	@ phole stm
	bl	GenPiclistfromFrmlist	@
.L1362:
	movw	lr, #20716	@ tmp294,
	mov	r2, #0	@ tmp293,
	ldr	r1, [r4, lr]	@ list0idx.4671, <variable>.CurrSlice.listXsize
	movw	r0, #20720	@ tmp292,
	str	r2, [r4, r0]	@ tmp293, <variable>.CurrSlice.listXsize
	cmp	r1, r2	@ list0idx.4671,
	bne	.L1368	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1369	@,
	movw	r3, #50979	@ tmp297,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ temp.4687, <variable>.CurrPic.structure
	cmp	r3, r2	@ temp.4687,
	beq	.L1556	@,
	movw	r2, #51416	@ tmp303,
	cmp	r3, #1	@ temp.4687,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r3, #27028	@ tmp306,
	addeq	ip, ip, #468	@ tmp305, <variable>.CurrPic.frame_store,
	addne	ip, ip, #504	@ tmp309, <variable>.CurrPic.frame_store,
	str	ip, [r4, r3]	@ tmp309, <variable>.pListX
.L1371:
	movw	r0, #20716	@ tmp310,
	mov	r1, #1	@ tmp311,
	str	r1, [r4, r0]	@ tmp311, <variable>.CurrSlice.listXsize
.L1368:
	movw	lr, #20728	@ tmp481,
	movw	r2, #20732	@ tmp485,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	lr, #20720	@ tmp487,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	ldr	ip, [r4, lr]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r3, r3, #1	@ tmp482, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r1, r3	@ list0idx.4671, tmp482
	movcc	r3, r1	@ i.4696, list0idx.4671
	add	r2, r0, #1	@ prephitmp.4549, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r2, ip	@ prephitmp.4549, <variable>.CurrSlice.listXsize
	movcs	r2, ip	@ prephitmp.4549, <variable>.CurrSlice.listXsize
	cmp	r3, #32	@ i.4696,
	movw	r1, #20716	@ tmp484,
	str	r3, [r4, r1]	@ i.4696, <variable>.CurrSlice.listXsize
	str	r2, [r4, lr]	@ prephitmp.4549, <variable>.CurrSlice.listXsize
	bls	.L1413	@,
	b	.L1414	@
.L1350:
	movw	sl, #50979	@ tmp313,
	ldrb	r7, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r7, #0	@ <variable>.CurrPic.structure,
	beq	.L1374	@,
	mov	ip, #26624	@ tmp315,
	ldr	r5, [r0, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1376	@,
	add	r7, r0, #26368	@ ivtmp.4668, pH264Ctx,
	mov	r5, #0	@ list0idx.4675,
	add	r3, r7, #120	@ ivtmp.4668, ivtmp.4668,
	mov	r2, r5	@ i.4715, list0idx.4675
	movw	r7, #51436	@ tmp533,
.L1397:
	ldr	r1, [r3, #0]	@ temp.4714, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4715, i.4715,
	add	r3, r3, #4	@ ivtmp.4668, ivtmp.4668,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1396	@,
	ldr	r6, [r1, #556]	@ <variable>.poc, <variable>.poc
	sub	r0, fp, #44	@,,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r9, r0, r5, asl #2	@, tmp407,, list0idx.4675,
	cmp	lr, r6	@ <variable>.CurrPic.thispoc, <variable>.poc
	strge	r1, [r9, #-64]	@ temp.4714, fs_list0
	addge	r5, r5, #1	@ list0idx.4675, list0idx.4675,
.L1396:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4715
	bhi	.L1397	@,
.L1376:
	sub	r6, fp, #108	@ tmp518,,
	mov	r1, r5	@, list0idx.4675
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_desc	@,
	mov	r0, r6	@, tmp518
	movt	r3, #:upper16:compare_fs_by_poc_desc	@,
	bl	qsort	@
	mov	ip, #26624	@ tmp413,
	ldr	r9, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r9, #0	@ <variable>.DPB.ref_frames_in_buffer,
	moveq	r7, r5	@ list0idx.4676, list0idx.4675
	beq	.L1399	@,
	add	r8, r4, #26368	@ ivtmp.4663, pH264Ctx,
	mov	r7, r5	@ list0idx.4676, list0idx.4675
	add	r3, r8, #120	@ ivtmp.4663, ivtmp.4663,
	mov	r2, #0	@ i.4721,
	movw	r8, #51436	@ tmp531,
.L1401:
	ldr	r1, [r3, #0]	@ temp.4717, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4721, i.4721,
	add	r3, r3, #4	@ ivtmp.4663, ivtmp.4663,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1400	@,
	ldr	r0, [r1, #556]	@ <variable>.poc, <variable>.poc
	sub	sl, fp, #44	@,,
	ldr	lr, [r4, r8]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r9, sl, r7, asl #2	@, tmp422,, list0idx.4676,
	cmp	lr, r0	@ <variable>.CurrPic.thispoc, <variable>.poc
	strlt	r1, [r9, #-64]	@ temp.4717, fs_list0
	addlt	r7, r7, #1	@ list0idx.4676, list0idx.4676,
.L1400:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4721
	bhi	.L1401	@,
	rsb	r9, r5, r7	@ prephitmp.4747, list0idx.4675, list0idx.4676
.L1399:
	mov	sl, r5, asl #2	@ tmp520, list0idx.4675,
	mov	r1, r9	@, prephitmp.4747
	add	r0, r6, sl	@, tmp518, tmp520
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_asc	@,
	movt	r3, #:upper16:compare_fs_by_poc_asc	@,
	bl	qsort	@
	cmp	r5, #0	@ list0idx.4675,
	subeq	r8, fp, #172	@ tmp523,,
	beq	.L1402	@,
	sub	r8, fp, #172	@ tmp523,,
	ldr	ip, [r6, #0]	@ tmp432, fs_list0
	add	r9, r8, r9, asl #2	@, ivtmp.4660, tmp523, prephitmp.4747,
	cmp	sl, #4	@ tmp520,
	sub	r2, sl, #4	@ tmp594, tmp520,
	mov	r3, #4	@ ivtmp.4658,
	str	ip, [r9], #4	@ tmp432, fs_list1
	ubfx	r2, r2, #2, #1	@ tmp595, tmp594,,
	beq	.L1402	@,
	cmp	r2, #0	@ tmp595,
	beq	.L1403	@,
	ldr	r2, [r6, #4]	@ tmp843, fs_list0
	mov	r3, #8	@ ivtmp.4658,
	cmp	sl, r3	@ tmp520, ivtmp.4658
	str	r2, [r9], #4	@ tmp843, fs_list1
	beq	.L1402	@,
.L1403:
	add	r2, r3, #4	@ tmp596, ivtmp.4658,
	ldr	r0, [r6, r3]	@ tmp661, fs_list0
	add	r3, r2, #4	@ ivtmp.4658, tmp596,
	mov	lr, r9	@ tmp597, ivtmp.4660
	ldr	r1, [r6, r2]	@ tmp664, fs_list0
	cmp	sl, r3	@ tmp520, ivtmp.4658
	str	r0, [lr], #4	@ tmp661, fs_list1
	str	r1, [r9, #4]	@ tmp664, fs_list1
	add	r9, lr, #4	@ ivtmp.4660, tmp597,
	bne	.L1403	@,
.L1402:
	cmp	r7, r5	@ list0idx.4676, list0idx.4675
	bls	.L1404	@,
	add	sl, r6, sl	@ ivtmp.4650, tmp518, tmp520
	add	lr, r6, r7, asl #2	@, D.48037, tmp518, list0idx.4676,
	rsb	r9, sl, lr	@ tmp587, ivtmp.4650, D.48037
	mov	r2, #4	@ ivtmp.4651,
	ldr	r5, [sl], #4	@ tmp438, fs_list0
	sub	r3, r9, #4	@ tmp588, tmp587,
	ubfx	r1, r3, #2, #1	@ tmp589, tmp588,,
	cmp	sl, lr	@ ivtmp.4650, D.48037
	str	r5, [r8, #0]	@ tmp438, fs_list1
	beq	.L1404	@,
	cmp	r1, #0	@ tmp589,
	beq	.L1405	@,
	ldr	r9, [sl], #4	@ tmp842, fs_list0
	mov	r2, #8	@ ivtmp.4651,
	cmp	sl, lr	@ ivtmp.4650, D.48037
	str	r9, [r8, #4]	@ tmp842, fs_list1
	beq	.L1404	@,
.L1405:
	mov	r5, sl	@ tmp590, ivtmp.4650
	ldr	r0, [sl, #4]	@ tmp670, fs_list0
	ldr	ip, [r5], #4	@ tmp667, fs_list0
	add	r1, r2, #4	@ tmp591, ivtmp.4651,
	add	sl, r5, #4	@ ivtmp.4650, tmp590,
	cmp	sl, lr	@ ivtmp.4650, D.48037
	str	ip, [r8, r2]	@ tmp667, fs_list1
	str	r0, [r8, r1]	@ tmp670, fs_list1
	add	r2, r1, #4	@ ivtmp.4651, tmp591,
	bne	.L1405	@,
.L1404:
	add	ip, r4, #26880	@ tmp671, pH264Ctx,
	movw	r9, #50979	@ tmp445,
	add	sl, ip, #148	@ ivtmp.4607, tmp671,
	movw	r5, #20716	@ tmp439,
	movw	r3, #20720	@ tmp441,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp518
	mov	r2, r7	@, list0idx.4676
	mov	r6, #0	@ tmp440,
	str	r6, [r4, r5]	@ tmp440, <variable>.CurrSlice.listXsize
	str	r6, [r4, r3]	@ tmp440, <variable>.CurrSlice.listXsize
	add	r5, r4, #20480	@ tmp444, pH264Ctx,
	mov	r3, sl	@, ivtmp.4607
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
	mov	r2, r7	@, list0idx.4676
	str	r9, [fp, #-244]	@, %sfp
	mov	r3, r9	@,
	str	r6, [sp, #4]	@ tmp440,
	add	r9, r5, #240	@ D.38495, tmp444,
	str	r9, [sp, #0]	@ D.38495,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26628	@ tmp454,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	subeq	r6, fp, #236	@ tmp672,,
	beq	.L1407	@,
	mov	r3, r6	@ ivtmp.4643, tmp440
	sub	r6, fp, #236	@ tmp672,,
	mov	r5, r3	@ listltidx.4712, ivtmp.4643
.L1408:
	add	r2, r4, r3	@ tmp457, pH264Ctx, ivtmp.4643
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r8, r2, #26368	@ tmp459, tmp457,
	add	r5, r5, #1	@ listltidx.4712, listltidx.4712,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx.4712
	ldr	r7, [r8, #184]	@ tmp460, <variable>.DPB.fs_ltref
	str	r7, [r6, r3]	@ tmp460, fs_listlt
	add	r3, r3, #4	@ ivtmp.4643, ivtmp.4643,
	bhi	.L1408	@,
.L1407:
	mov	r0, r6	@, tmp672
	mov	r1, r5	@, listltidx.4712
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	movw	r7, #50979	@ tmp465,
	bl	qsort	@
	ldr	ip, [fp, #-240]	@, %sfp
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp672
	mov	r2, r5	@, listltidx.4712
	mov	r3, sl	@, ivtmp.4607
	str	ip, [sp, #0]	@,
	mov	r8, #1	@ tmp468,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp672
	mov	r2, r5	@, listltidx.4712
	ldr	r3, [fp, #-244]	@, %sfp
	movw	r6, #20716	@ tmp473,
	str	r9, [sp, #0]	@ D.38495,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #20720	@ tmp474,
	ldr	r1, [r4, r6]	@ list0idx.4671, <variable>.CurrSlice.listXsize
	ldr	r6, [r4, r0]	@ list0idx.4674, <variable>.CurrSlice.listXsize
	cmp	r6, r1	@ list0idx.4674, list0idx.4671
	beq	.L1557	@,
.L1409:
	cmp	r1, #0	@ list0idx.4671,
	bne	.L1368	@,
	movw	r2, #20720	@ tmp478,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L1558	@,
	movw	r5, #20732	@ tmp508,
	mov	r3, r1	@ i.4696, list0idx.4671
	ldr	ip, [r4, r5]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	movw	r5, #20716	@ tmp505,
	str	r1, [r4, r5]	@ list0idx.4671, <variable>.CurrSlice.listXsize
	add	lr, ip, #1	@ tmp509, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	lr, r0	@ tmp509, <variable>.CurrSlice.listXsize
	strls	lr, [r4, r2]	@, tmp509, <variable>.CurrSlice.listXsize
	strhi	r0, [r4, r2]	@, <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
.L1413:
	add	r0, r3, #6720	@ tmp514, i.4696,
	add	r1, r3, #1	@ i.4696, i.4696,
	add	lr, r0, #36	@ tmp514, tmp514,
	cmp	r1, #32	@ i.4696,
	mov	r0, #0	@ tmp525,
	and	r3, r3, #1	@ tmp541, i.4696,
	add	r2, r4, lr, asl #2	@, tmp517, pH264Ctx, tmp514,
	add	r2, r2, #4	@ ivtmp.4581, tmp517,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	bhi	.L1522	@,
	cmp	r3, #0	@ tmp541,
	beq	.L1415	@,
	add	r1, r1, #1	@ i.4696, i.4696,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	cmp	r1, #32	@ i.4696,
	bhi	.L1522	@,
.L1415:
	add	r1, r1, #2	@ i.4696, i.4696,
	mov	ip, r2	@ tmp543, ivtmp.4581
	cmp	r1, #32	@ i.4696,
	str	r0, [ip], #4	@ tmp525, <variable>.pListX
	str	r0, [r2, #4]	@ tmp525, <variable>.pListX
	add	r2, ip, #4	@ ivtmp.4581, tmp543,
	bls	.L1415	@,
.L1522:
	movw	r1, #20720	@ tmp491,
	ldr	r2, [r4, r1]	@ prephitmp.4549, <variable>.CurrSlice.listXsize
.L1414:
	cmp	r2, #32	@ prephitmp.4549,
	bhi	.L1416	@,
	add	ip, r2, #6720	@ tmp492, prephitmp.4549,
	add	r0, r4, #27136	@ D.47935, pH264Ctx,
	add	r3, ip, #36	@ tmp492, tmp492,
	add	r0, r0, #24	@ D.47935, D.47935,
	mov	r1, #0	@ tmp524,
	add	r4, r4, r3, asl #2	@, tmp495, pH264Ctx, tmp492,
	add	r4, r4, #4	@ ivtmp.4577, tmp495,
	add	r3, r4, #4	@ ivtmp.4577, ivtmp.4577,
	rsb	lr, r4, r0	@ tmp536, ivtmp.4577, D.47935
	cmp	r3, r0	@ ivtmp.4577, D.47935
	sub	r2, lr, #4	@ tmp537, tmp536,
	ubfx	r2, r2, #2, #1	@ tmp538, tmp537,,
	str	r1, [r4, #132]	@ tmp524, <variable>.pListX
	beq	.L1416	@,
	cmp	r2, #0	@ tmp538,
	beq	.L1417	@,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r3, #4	@ ivtmp.4577, ivtmp.4577,
	cmp	r3, r0	@ ivtmp.4577, D.47935
	beq	.L1416	@,
.L1417:
	add	r2, r3, #4	@ tmp539, ivtmp.4577,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r2, #4	@ ivtmp.4577, tmp539,
	cmp	r3, r0	@ ivtmp.4577, D.47935
	str	r1, [r2, #132]	@ tmp524, <variable>.pListX
	bne	.L1417	@,
.L1416:
	mov	r0, #0	@ D.38449,
.L1373:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1374:
	mov	r6, #26624	@ tmp317,
	ldr	lr, [r0, r6]	@ temp.4749, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4749,
	moveq	r7, lr	@ list0idx.4673, temp.4749
	beq	.L1378	@,
	add	r3, r0, #26368	@ ivtmp.4637, pH264Ctx,
	sub	r5, lr, #1	@ tmp581, temp.4749,
	and	r0, r5, #1	@ tmp583, tmp581,
	movw	r5, #51440	@ tmp529,
	ldr	r2, [r3, #120]!	@ temp.4691, <variable>.DPB.fs_ref
	ldrb	r8, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r8, #3	@ <variable>.is_reference,
	beq	.L1559	@,
.L1483:
	mov	r2, #1	@ i.4694,
	cmp	r2, lr	@ i.4694, temp.4749
	add	r3, r3, #4	@ ivtmp.4637, ivtmp.4637,
	bcs	.L1378	@,
	cmp	r0, #0	@ tmp583,
	beq	.L1380	@,
	ldr	r1, [r3, #0]	@ temp.4691, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1560	@,
.L1485:
	add	r2, r2, #1	@ i.4694, i.4694,
	add	r3, r3, #4	@ ivtmp.4637, ivtmp.4637,
	cmp	r2, lr	@ i.4694, temp.4749
	bcc	.L1380	@,
.L1378:
	add	lr, r4, #26880	@ ivtmp.4607, pH264Ctx,
	mov	r1, r7	@, list0idx.4673
	add	sl, lr, #148	@ ivtmp.4607, ivtmp.4607,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_desc	@,
	movt	r3, #:upper16:compare_pic_by_poc_desc	@,
	mov	r0, sl	@, ivtmp.4607
	bl	qsort	@
	mov	r3, #26624	@ tmp332,
	ldr	r8, [r4, r3]	@ temp.4748, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ temp.4748,
	moveq	r5, r7	@ list0idx, list0idx.4673
	beq	.L1382	@,
	add	r3, r4, #26368	@ ivtmp.4632, pH264Ctx,
	sub	r2, r8, #1	@ tmp576, temp.4748,
	and	r0, r2, #1	@ tmp578, tmp576,
	mov	r5, r7	@ list0idx, list0idx.4673
	ldr	r2, [r3, #120]!	@ temp.4697, <variable>.DPB.fs_ref
	movw	ip, #51440	@ tmp528,
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1561	@,
.L1476:
	mov	r2, #1	@ i.4702,
	cmp	r2, r8	@ i.4702, temp.4748
	add	r3, r3, #4	@ ivtmp.4632, ivtmp.4632,
	bcs	.L1528	@,
	cmp	r0, #0	@ tmp578,
	beq	.L1384	@,
	ldr	r1, [r3, #0]	@ temp.4697, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1562	@,
.L1478:
	add	r2, r2, #1	@ i.4702, i.4702,
	add	r3, r3, #4	@ ivtmp.4632, ivtmp.4632,
	cmp	r2, r8	@ i.4702, temp.4748
	bcc	.L1384	@,
.L1528:
	rsb	r8, r7, r5	@ prephitmp.4551, list0idx.4673, list0idx
.L1382:
	mov	r6, r7, asl #2	@ D.38463, list0idx.4673,
	mov	r1, r8	@, prephitmp.4551
	add	r0, sl, r6	@, ivtmp.4607, D.38463
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_asc	@,
	movt	r3, #:upper16:compare_pic_by_poc_asc	@,
	bl	qsort	@
	cmp	r7, #0	@ list0idx.4673,
	beq	.L1385	@,
	add	r8, r8, #6720	@ tmp347, prephitmp.4551,
	add	r1, r4, #26880	@ tmp352, pH264Ctx,
	add	r3, r1, #148	@ tmp352, tmp352,
	add	r8, r8, #36	@ tmp347, tmp347,
	cmp	r6, #4	@ D.38463,
	sub	r2, r6, #4	@ tmp572, D.38463,
	add	ip, r4, r8, asl #2	@, tmp350, pH264Ctx, tmp347,
	ldr	r0, [r3, #0]	@ tmp354, <variable>.pListX
	add	lr, ip, #4	@ ivtmp.4629, tmp350,
	mov	r3, #4	@ ivtmp.4626,
	ubfx	ip, r2, #2, #1	@ tmp573, tmp572,,
	add	r2, lr, #4	@ ivtmp.4629, ivtmp.4629,
	str	r0, [lr, #132]	@ tmp354, <variable>.pListX
	beq	.L1385	@,
	cmp	ip, #0	@ tmp573,
	beq	.L1386	@,
	add	ip, r4, #26880	@ tmp782, pH264Ctx,
	mov	r3, #8	@ ivtmp.4626,
	add	lr, ip, #152	@ tmp782, tmp782,
	cmp	r6, r3	@ D.38463, ivtmp.4626
	ldr	r1, [lr, #0]	@ tmp783, <variable>.pListX
	str	r1, [r2, #132]	@ tmp783, <variable>.pListX
	add	r2, r2, #4	@ ivtmp.4629, ivtmp.4629,
	beq	.L1385	@,
.L1386:
	add	r0, r4, r3	@ tmp632, pH264Ctx, ivtmp.4626
	add	r3, r3, #4	@ tmp574, ivtmp.4626,
	add	r1, r0, #26880	@ tmp633, tmp632,
	add	lr, r4, r3	@ tmp638, pH264Ctx, tmp574
	add	r0, lr, #26880	@ tmp639, tmp638,
	add	r3, r3, #4	@ ivtmp.4626, tmp574,
	ldr	ip, [r1, #148]	@ tmp635, <variable>.pListX
	add	lr, r2, #4	@ tmp575, ivtmp.4629,
	cmp	r6, r3	@ D.38463, ivtmp.4626
	str	ip, [r2, #132]	@ tmp635, <variable>.pListX
	add	r2, lr, #4	@ ivtmp.4629, tmp575,
	ldr	r0, [r0, #148]	@ tmp641, <variable>.pListX
	str	r0, [lr, #132]	@ tmp641, <variable>.pListX
	bne	.L1386	@,
.L1385:
	cmp	r5, r7	@ list0idx, list0idx.4673
	bls	.L1387	@,
	add	lr, r7, #6720	@ tmp355, list0idx.4673,
	rsb	r6, r7, r5	@ tmp362, list0idx.4673, list0idx
	add	r3, lr, #36	@ tmp355, tmp355,
	add	r0, r4, #27136	@ tmp364, pH264Ctx,
	mov	r6, r6, asl #2	@ D.47994, tmp362,
	add	r2, r0, #24	@ tmp364, tmp364,
	add	r1, r4, r3, asl #2	@, tmp358, pH264Ctx, tmp355,
	mov	r3, #4	@ ivtmp.4620,
	add	r1, r1, r3	@ ivtmp.4619, tmp358,
	cmp	r3, r6	@ ivtmp.4620, D.47994
	sub	ip, r6, #4	@ tmp566, D.47994,
	ldr	lr, [r1], #4	@ tmp366, <variable>.pListX
	ubfx	ip, ip, #2, #1	@ tmp567, tmp566,,
	str	lr, [r2, #0]	@ tmp366, <variable>.pListX
	beq	.L1387	@,
	cmp	ip, #0	@ tmp567,
	beq	.L1388	@,
	add	r3, r4, #27136	@ tmp778, pH264Ctx,
	ldr	r0, [r1], #4	@ tmp779, <variable>.pListX
	add	r2, r3, #28	@ tmp778, tmp778,
	mov	r3, #8	@ ivtmp.4620,
	cmp	r3, r6	@ ivtmp.4620, D.47994
	str	r0, [r2, #0]	@ tmp779, <variable>.pListX
	beq	.L1387	@,
.L1388:
	mov	r2, r1	@ tmp568, ivtmp.4619
	add	ip, r4, r3	@ tmp644, pH264Ctx, ivtmp.4620
	ldr	lr, [r2], #4	@ tmp647, <variable>.pListX
	add	ip, ip, #27136	@ tmp645, tmp644,
	add	r0, r3, #4	@ tmp569, ivtmp.4620,
	add	r3, r0, #4	@ ivtmp.4620, tmp569,
	add	r0, r4, r0	@ tmp650, pH264Ctx, tmp569
	str	lr, [ip, #24]	@ tmp647, <variable>.pListX
	add	r0, r0, #27136	@ tmp651, tmp650,
	ldr	ip, [r1, #4]	@ tmp653, <variable>.pListX
	cmp	r3, r6	@ ivtmp.4620, D.47994
	add	r1, r2, #4	@ ivtmp.4619, tmp568,
	str	ip, [r0, #24]	@ tmp653, <variable>.pListX
	bne	.L1388	@,
.L1387:
	movw	lr, #26628	@ tmp369,
	movw	r2, #20720	@ tmp367,
	ldr	r1, [r4, lr]	@ temp.4746, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20716	@ tmp368,
	str	r5, [r4, r2]	@ list0idx, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ temp.4746,
	str	r5, [r4, r3]	@ list0idx, <variable>.CurrSlice.listXsize
	moveq	r6, r5	@ list0idx.4674, list0idx
	beq	.L1390	@,
	tst	r1, #1	@ temp.4746,
	add	r6, r4, #26368	@ ivtmp.4613, pH264Ctx,
	add	r3, r6, #184	@ ivtmp.4613, ivtmp.4613,
	mov	r2, #0	@ i.4709,
	bne	.L1394	@,
	ldr	r2, [r3, #0]	@ temp.4705, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L1563	@,
.L1526:
	add	r3, r3, #4	@ ivtmp.4613, ivtmp.4613,
	mov	r2, #1	@ i.4709,
	ldr	r0, [r3, #0]	@ temp.4705, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	beq	.L1564	@,
.L1392:
	add	r2, r2, #1	@ tmp562, i.4709,
	add	r0, r3, #4	@ tmp563, ivtmp.4613,
	cmp	r2, r1	@ tmp562, temp.4746
	bcs	.L1393	@,
.L1566:
	ldr	r3, [r3, #4]	@ temp.4705, <variable>.DPB.fs_ltref
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r6, #3	@ <variable>.is_used,
	beq	.L1565	@,
.L1527:
	add	r2, r2, #1	@ i.4709, tmp562,
	add	r3, r0, #4	@ ivtmp.4613, tmp563,
.L1394:
	ldr	r0, [r3, #0]	@ temp.4705, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	bne	.L1392	@,
.L1564:
	ldrb	lr, [r0, #433]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1392	@,
	add	lr, r5, #6720	@ tmp373, list0idx,
	add	ip, r5, #6784	@ tmp380, list0idx,
	add	r6, lr, #36	@ tmp373, tmp373,
	add	ip, ip, #5	@ tmp380, tmp380,
	add	r2, r2, #1	@ tmp562, i.4709,
	add	r0, r0, #432	@ tmp379, temp.4705,
	add	lr, r4, r6, asl #2	@, tmp377, pH264Ctx, tmp373,
	cmp	r2, r1	@ tmp562, temp.4746
	add	r6, r4, ip, asl #2	@, tmp384, pH264Ctx, tmp380,
	add	r5, r5, #1	@ list0idx.4674, list0idx,
	str	r0, [lr, #4]	@ tmp379, <variable>.pListX
	str	r0, [r6, #4]	@ tmp379, <variable>.pListX
	add	r0, r3, #4	@ tmp563, ivtmp.4613,
	bcc	.L1566	@,
.L1393:
	movw	r1, #20716	@ tmp388,
	mov	r6, r5	@ list0idx.4674, list0idx.4674
	ldr	r5, [r4, r1]	@ list0idx, <variable>.CurrSlice.listXsize
	rsb	r1, r5, r6	@ prephitmp.4555, list0idx, list0idx.4674
.L1390:
	add	r0, sl, r5, asl #2	@,, ivtmp.4607, list0idx,
	mov	r2, #4	@,
	movw	r5, #20716	@ tmp392,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	ldr	ip, [r4, r5]	@ D.38420, <variable>.CurrSlice.listXsize
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	add	r0, ip, #33	@ tmp393, D.38420,
	rsb	r1, ip, r6	@, D.38420, list0idx.4674
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	mla	r0, r0, r2, sl	@, tmp393,, ivtmp.4607
	bl	qsort	@
	movw	r3, #20720	@ tmp398,
	mov	r1, r6	@ list0idx.4671, list0idx.4674
	str	r6, [r4, r3]	@ list0idx.4674, <variable>.CurrSlice.listXsize
	str	r6, [r4, r5]	@ list0idx.4674, <variable>.CurrSlice.listXsize
.L1395:
	cmp	r6, #1	@ list0idx.4674,
	bls	.L1409	@,
	ldr	lr, [sl, #0]	@ tmp476, <variable>.pListX
	sub	r2, r6, #1	@ tmp554, list0idx.4674,
	ldr	r3, [sl, #132]	@ tmp477, <variable>.pListX
	and	r0, r2, #1	@ tmp556, tmp554,
	cmp	lr, r3	@ tmp476, tmp477
	bne	.L1368	@,
	mov	r3, #1	@ j,
	cmp	r3, r6	@ j, list0idx.4674
	add	sl, sl, #4	@ ivtmp.4607, ivtmp.4607,
	bcs	.L1524	@,
	cmp	r0, #0	@ tmp556,
	beq	.L1410	@,
	ldr	r2, [sl, #0]	@ tmp746, <variable>.pListX
	ldr	lr, [sl, #132]	@ tmp747, <variable>.pListX
	cmp	r2, lr	@ tmp746, tmp747
	bne	.L1368	@,
	mov	r3, #2	@ j,
	cmp	r3, r6	@ j, list0idx.4674
	add	sl, sl, #4	@ ivtmp.4607, ivtmp.4607,
	bcc	.L1410	@,
	b	.L1524	@
.L1567:
	ldr	r0, [sl, #4]	@ tmp679, <variable>.pListX
	add	sl, r2, #4	@ ivtmp.4607, tmp558,
	ldr	r2, [r2, #132]	@ tmp680, <variable>.pListX
	cmp	r0, r2	@ tmp679, tmp680
	bne	.L1368	@,
	cmp	r3, r6	@ j, list0idx.4674
	bcs	.L1524	@,
.L1410:
	ldr	ip, [sl, #0]	@ tmp674, <variable>.pListX
	add	lr, r3, #1	@ tmp557, j,
	ldr	r0, [sl, #132]	@ tmp675, <variable>.pListX
	add	r2, sl, #4	@ tmp558, ivtmp.4607,
	add	r3, lr, #1	@ j, tmp557,
	cmp	ip, r0	@ tmp674, tmp675
	beq	.L1567	@,
	b	.L1368	@
.L1351:
	mov	r1, #26624	@ tmp225,
	ldr	lr, [r4, r1]	@ temp.4703, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4703,
	moveq	r5, lr	@ list0idx.4731, temp.4703
	beq	.L1355	@,
	add	r3, r4, #26368	@ ivtmp.4590, pH264Ctx,
	sub	r2, lr, #1	@ tmp549, temp.4703,
	and	r0, r2, #1	@ tmp551, tmp549,
	ldr	r2, [r3, #120]!	@ D.38398, <variable>.DPB.fs_ref
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1568	@,
.L1451:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, temp.4703
	add	r3, r3, #4	@ ivtmp.4590, ivtmp.4590,
	bcs	.L1355	@,
	cmp	r0, #0	@ tmp551,
	beq	.L1357	@,
	ldr	r1, [r3, #0]	@ D.38398, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1569	@,
.L1453:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4590, ivtmp.4590,
	cmp	r2, lr	@ i, temp.4703
	bcc	.L1357	@,
.L1355:
	add	lr, r4, #26880	@ D.38409, pH264Ctx,
	mov	r1, r5	@, list0idx.4731
	add	r6, lr, #148	@ D.38409, D.38409,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_pic_num_desc	@,
	movt	r3, #:upper16:compare_pic_by_pic_num_desc	@,
	mov	r0, r6	@, D.38409
	bl	qsort	@
	movw	r0, #26628	@ tmp241,
	ldr	r1, [r4, r0]	@ D.38419, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20716	@ tmp240,
	str	r5, [r4, r3]	@ list0idx.4731, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ D.38419,
	moveq	r0, r5	@ list0idx.4743, list0idx.4731
	beq	.L1359	@,
	add	r3, r4, #26368	@ ivtmp.4585, pH264Ctx,
	sub	r2, r1, #1	@ tmp544, D.38419,
	and	ip, r2, #1	@ tmp546, tmp544,
	ldr	r2, [r3, #184]!	@ D.38410, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1570	@,
.L1444:
	mov	r2, #1	@ i.4677,
	cmp	r2, r1	@ i.4677, D.38419
	add	r3, r3, #4	@ ivtmp.4585, ivtmp.4585,
	bcs	.L1523	@,
	cmp	ip, #0	@ tmp546,
	beq	.L1361	@,
	ldr	r0, [r3, #0]	@ D.38410, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1571	@,
.L1446:
	add	r2, r2, #1	@ i.4677, i.4677,
	add	r3, r3, #4	@ ivtmp.4585, ivtmp.4585,
	cmp	r2, r1	@ i.4677, D.38419
	bcc	.L1361	@,
.L1523:
	movw	ip, #20716	@ tmp254,
	ldr	r0, [r4, ip]	@ list0idx.4743, <variable>.CurrSlice.listXsize
	rsb	r1, r0, r5	@ prephitmp.4559, list0idx.4743, list0idx.4731
.L1359:
	add	r0, r6, r0, asl #2	@,, D.38409, list0idx.4743,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	movw	r1, #20716	@ tmp258,
	str	r5, [r4, r1]	@ list0idx.4731, <variable>.CurrSlice.listXsize
	b	.L1362	@
.L1573:
	add	sl, r7, #6720	@ tmp323, list0idx.4673,
	ldr	r3, [r3, #4]	@ temp.4691, <variable>.DPB.fs_ref
	add	ip, sl, #36	@ tmp323, tmp323,
	ldr	r6, [r1, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #432	@ tmp329, temp.4691,
	add	sl, r4, ip, asl #2	@, tmp327, pH264Ctx, tmp323,
	cmp	r8, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strge	r1, [sl, #4]	@ tmp329, <variable>.pListX
	addge	r7, r7, #1	@ list0idx.4673, list0idx.4673,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1572	@,
.L1488:
	add	r2, r2, #1	@ i.4694, tmp584,
	add	r3, r0, #4	@ ivtmp.4637, tmp585,
	cmp	r2, lr	@ i.4694, temp.4749
	bcs	.L1378	@,
.L1380:
	ldr	r1, [r3, #0]	@ temp.4691, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp584, i.4694,
	add	r0, r3, #4	@ tmp585, ivtmp.4637,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1573	@,
	ldr	r3, [r3, #4]	@ temp.4691, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1488	@,
.L1572:
	add	r6, r7, #6720	@ tmp837, list0idx.4673,
	add	sl, r3, #432	@ tmp841, temp.4691,
	add	ip, r6, #36	@ tmp837, tmp837,
	ldr	r3, [r3, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, ip, asl #2	@, tmp839, pH264Ctx, tmp837,
	cmp	r8, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r7, r7, #1	@ list0idx.4673, list0idx.4673,
	strge	sl, [r1, #4]	@ tmp841, <variable>.pListX
	b	.L1488	@
.L1575:
	ldr	r6, [r1, #432]	@ tmp230,
	bic	ip, r6, #-16777216	@ tmp228, tmp230,
	bic	r6, ip, #255	@ tmp228, tmp228,
	cmp	r6, #65536	@ tmp228,
	bne	.L1356	@,
	add	ip, r5, #6720	@ tmp231, list0idx.4731,
	add	r5, r5, #1	@ list0idx.4731, list0idx.4731,
	add	r6, ip, #36	@ tmp231, tmp231,
	add	r1, r1, #432	@ tmp237, D.38398,
	add	ip, r4, r6, asl #2	@, tmp235, pH264Ctx, tmp231,
	str	r1, [ip, #4]	@ tmp237, <variable>.pListX
.L1356:
	ldr	r3, [r3, #4]	@ D.38398, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1574	@,
.L1456:
	add	r2, r2, #1	@ i, tmp552,
	add	r3, r0, #4	@ ivtmp.4590, tmp553,
	cmp	r2, lr	@ i, temp.4703
	bcs	.L1355	@,
.L1357:
	ldr	r1, [r3, #0]	@ D.38398, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp552, i,
	add	r0, r3, #4	@ tmp553, ivtmp.4590,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1575	@,
	ldr	r3, [r3, #4]	@ D.38398, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1456	@,
.L1574:
	ldr	ip, [r3, #432]	@ tmp738,
	bic	r6, ip, #-16777216	@ tmp739, tmp738,
	bic	r1, r6, #255	@ tmp739, tmp739,
	cmp	r1, #65536	@ tmp739,
	bne	.L1456	@,
	add	ip, r5, #6720	@ tmp741, list0idx.4731,
	add	r3, r3, #432	@ tmp745, D.38398,
	add	r6, ip, #36	@ tmp741, tmp741,
	add	r5, r5, #1	@ list0idx.4731, list0idx.4731,
	add	r1, r4, r6, asl #2	@, tmp743, pH264Ctx, tmp741,
	str	r3, [r1, #4]	@ tmp745, <variable>.pListX
	b	.L1456	@
.L1577:
	add	r9, r5, #6720	@ tmp338, list0idx,
	ldr	r6, [r1, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	add	lr, r9, #36	@ tmp338, tmp338,
	ldr	r9, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r3, [r3, #4]	@ temp.4697, <variable>.DPB.fs_ref
	add	r1, r1, #432	@ tmp344, temp.4697,
	cmp	r9, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	add	r6, r4, lr, asl #2	@, tmp342, pH264Ctx, tmp338,
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r1, [r6, #4]	@ tmp344, <variable>.pListX
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1576	@,
.L1481:
	add	r2, r2, #1	@ i.4702, tmp579,
	add	r3, r0, #4	@ ivtmp.4632, tmp580,
	cmp	r2, r8	@ i.4702, temp.4748
	bcs	.L1528	@,
.L1384:
	ldr	r1, [r3, #0]	@ temp.4697, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp579, i.4702,
	add	r0, r3, #4	@ tmp580, ivtmp.4632,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1577	@,
	ldr	r3, [r3, #4]	@ temp.4697, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1481	@,
.L1576:
	add	lr, r5, #6720	@ tmp808, list0idx,
	add	r6, r3, #432	@ tmp812, temp.4697,
	add	r1, lr, #36	@ tmp808, tmp808,
	ldr	r3, [r3, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r1, asl #2	@, tmp810, pH264Ctx, tmp808,
	cmp	lr, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r6, [r1, #4]	@ tmp812, <variable>.pListX
	b	.L1481	@
.L1579:
	ldr	lr, [r0, #432]	@ tmp246,
	bic	lr, lr, #-16777216	@ tmp244, tmp246,
	bic	lr, lr, #255	@ tmp244, tmp244,
	cmp	lr, #256	@ tmp244,
	bne	.L1360	@,
	add	lr, r5, #6720	@ tmp247, list0idx.4731,
	add	r5, r5, #1	@ list0idx.4731, list0idx.4731,
	add	lr, lr, #36	@ tmp247, tmp247,
	add	r0, r0, #432	@ tmp253, D.38410,
	add	lr, r4, lr, asl #2	@, tmp251, pH264Ctx, tmp247,
	str	r0, [lr, #4]	@ tmp253, <variable>.pListX
.L1360:
	ldr	r3, [r3, #4]	@ D.38410, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1578	@,
.L1449:
	add	r2, r2, #1	@ i.4677, tmp547,
	add	r3, ip, #4	@ ivtmp.4585, tmp548,
	cmp	r2, r1	@ i.4677, D.38419
	bcs	.L1523	@,
.L1361:
	ldr	r0, [r3, #0]	@ D.38410, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ tmp547, i.4677,
	add	ip, r3, #4	@ tmp548, ivtmp.4585,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1579	@,
	ldr	r3, [r3, #4]	@ D.38410, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1449	@,
.L1578:
	ldr	r0, [r3, #432]	@ tmp712,
	bic	lr, r0, #-16777216	@ tmp713, tmp712,
	bic	r0, lr, #255	@ tmp713, tmp713,
	cmp	r0, #256	@ tmp713,
	bne	.L1449	@,
	add	lr, r5, #6720	@ tmp715, list0idx.4731,
	add	r3, r3, #432	@ tmp719, D.38410,
	add	r0, lr, #36	@ tmp715, tmp715,
	add	r5, r5, #1	@ list0idx.4731, list0idx.4731,
	add	lr, r4, r0, asl #2	@, tmp717, pH264Ctx, tmp715,
	str	r3, [lr, #4]	@ tmp719, <variable>.pListX
	b	.L1449	@
.L1565:
	ldrb	lr, [r3, #433]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1527	@,
	add	ip, r5, #6720	@ tmp766, list0idx.4674,
	add	r6, r5, #6784	@ tmp772, list0idx.4674,
	add	lr, ip, #36	@ tmp766, tmp766,
	add	ip, r6, #5	@ tmp772, tmp772,
	add	r3, r3, #432	@ tmp770, temp.4705,
	add	r5, r5, #1	@ list0idx.4674, list0idx.4674,
	add	r6, r4, lr, asl #2	@, tmp768, pH264Ctx, tmp766,
	add	ip, r4, ip, asl #2	@, tmp774, pH264Ctx, tmp772,
	str	r3, [r6, #4]	@ tmp770, <variable>.pListX
	str	r3, [ip, #4]	@ tmp770, <variable>.pListX
	b	.L1527	@
.L1556:
	movw	r1, #51416	@ tmp299,
	movw	r0, #27028	@ tmp298,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	r2, lr, #432	@ tmp301, <variable>.CurrPic.frame_store,
	str	r2, [r4, r0]	@ tmp301, <variable>.pListX
	b	.L1371	@
.L1561:
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r6, [r2, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	cmp	r1, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	bge	.L1476	@,
	add	r1, r7, #6720	@ tmp788, list0idx.4673,
	add	r2, r2, #432	@ tmp792, temp.4697,
	add	r6, r1, #36	@ tmp788, tmp788,
	add	r5, r7, #1	@ list0idx, list0idx.4673,
	add	lr, r4, r6, asl #2	@, tmp790, pH264Ctx, tmp788,
	str	r2, [lr, #4]	@ tmp792, <variable>.pListX
	b	.L1476	@
.L1559:
	ldr	sl, [r2, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r8, sl	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	sl, r4, #26880	@ tmp820, pH264Ctx,
	addge	r2, r2, #432	@ tmp821, temp.4691,
	addge	sl, sl, #148	@ tmp820, tmp820,
	movge	r7, #1	@ list0idx.4673,
	strge	r2, [sl, #0]	@ tmp821, <variable>.pListX
	b	.L1483	@
.L1568:
	ldr	ip, [r2, #432]	@ tmp720,
	bic	r1, ip, #-16777216	@ tmp721, tmp720,
	bic	r6, r1, #255	@ tmp721, tmp721,
	cmp	r6, #65536	@ tmp721,
	addeq	r6, r4, #26880	@ tmp726, pH264Ctx,
	addeq	r2, r2, #432	@ tmp727, D.38398,
	addeq	r6, r6, #148	@ tmp726, tmp726,
	moveq	r5, #1	@ list0idx.4731,
	streq	r2, [r6, #0]	@ tmp727, <variable>.pListX
	b	.L1451	@
.L1563:
	ldrb	r6, [r2, #433]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r6, #1	@ <variable>.frame.is_long_term,
	bne	.L1526	@,
	add	r6, r5, #6720	@ tmp752, list0idx,
	add	r0, r5, #6784	@ tmp758, list0idx,
	add	r2, r2, #432	@ tmp757, temp.4705,
	add	r5, r5, #1	@ list0idx.4674, list0idx,
	add	ip, r4, r6, asl #2	@, tmp755, pH264Ctx, tmp752,
	add	lr, r4, r0, asl #2	@, tmp761, pH264Ctx, tmp758,
	str	r2, [ip, #148]	@ tmp757, <variable>.pListX
	str	r2, [lr, #24]	@ tmp757, <variable>.pListX
	b	.L1526	@
.L1570:
	ldr	lr, [r2, #432]	@ tmp694,
	bic	r0, lr, #-16777216	@ tmp695, tmp694,
	bic	lr, r0, #255	@ tmp695, tmp695,
	cmp	lr, #256	@ tmp695,
	addeq	lr, r5, #6720	@ tmp696, list0idx.4731,
	addeq	r2, r2, #432	@ tmp701, D.38410,
	addeq	r5, r5, #1	@ list0idx.4731, list0idx.4731,
	addeq	lr, r4, lr, asl #2	@, tmp699, pH264Ctx, tmp696,
	streq	r2, [lr, #148]	@ tmp701, <variable>.pListX
	b	.L1444	@
.L1571:
	ldr	lr, [r0, #432]	@ tmp704,
	bic	ip, lr, #-16777216	@ tmp705, tmp704,
	bic	lr, ip, #255	@ tmp705, tmp705,
	cmp	lr, #256	@ tmp705,
	addeq	lr, r5, #6720	@ tmp706, list0idx.4731,
	addeq	r0, r0, #432	@ tmp711, D.38410,
	addeq	r5, r5, r2	@ list0idx.4731, list0idx.4731,
	addeq	lr, r4, lr, asl #2	@, tmp709, pH264Ctx, tmp706,
	streq	r0, [lr, #148]	@ tmp711, <variable>.pListX
	b	.L1446	@
.L1562:
	ldr	r6, [r1, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	lr, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r6, r5, #6720	@ tmp798, list0idx,
	addlt	r1, r1, #432	@ tmp803, temp.4697,
	addlt	r5, r5, r2	@ list0idx, list0idx,
	addlt	r6, r4, r6, asl #2	@, tmp801, pH264Ctx, tmp798,
	strlt	r1, [r6, #148]	@ tmp803, <variable>.pListX
	b	.L1478	@
.L1569:
	ldr	r0, [r1, #432]	@ tmp730,
	bic	ip, r0, #-16777216	@ tmp731, tmp730,
	bic	r6, ip, #255	@ tmp731, tmp731,
	cmp	r6, #65536	@ tmp731,
	addeq	r6, r5, #6720	@ tmp732, list0idx.4731,
	addeq	r1, r1, #432	@ tmp737, D.38398,
	addeq	r5, r5, r2	@ list0idx.4731, list0idx.4731,
	addeq	r6, r4, r6, asl #2	@, tmp735, pH264Ctx, tmp732,
	streq	r1, [r6, #148]	@ tmp737, <variable>.pListX
	b	.L1453	@
.L1560:
	ldr	r0, [r1, #448]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r6, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r6, r0	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r0, r7, #6720	@ tmp827, list0idx.4673,
	addge	r1, r1, #432	@ tmp832, temp.4691,
	addge	r7, r7, r2	@ list0idx.4673, list0idx.4673,
	addge	r0, r4, r0, asl #2	@, tmp830, pH264Ctx, tmp827,
	strge	r1, [r0, #148]	@ tmp832, <variable>.pListX
	b	.L1485	@
.L1524:
	movw	r3, #27160	@ tmp499,
	movw	r0, #27164	@ tmp501,
	ldr	ip, [r4, r3]	@ tmp_s, <variable>.pListX
	movw	r1, #20716	@ tmp504,
	ldr	lr, [r4, r0]	@ <variable>.pListX, <variable>.pListX
	ldr	r1, [r4, r1]	@ list0idx.4671, <variable>.CurrSlice.listXsize
	str	ip, [r4, r0]	@ tmp_s, <variable>.pListX
	str	lr, [r4, r3]	@ <variable>.pListX, <variable>.pListX
	b	.L1409	@
.L1369:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.38449,
	b	.L1373	@
.L1558:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.38449,
	b	.L1373	@
.L1557:
	mov	r1, r6	@ list0idx.4671, list0idx.4674
	b	.L1395	@
	.fnend
	.size	InitListX, .-InitListX
	.align	2
	.global	DecList
	.type	DecList, %function
DecList:
	.fnstart
.LFB1424:
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
	ldr	r6, [r0, r3]	@ D.43901, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.43901,
	mvneq	r5, #0	@ nearest_pic_id,
	beq	.L1583	@,
	movw	r1, #26424	@ tmp152,
	cmp	r6, #1	@ D.43901,
	ldr	r0, [r0, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #51436	@ tmp150,
	ldr	ip, [r4, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r5, #0	@ nearest_pic_id,
	ldr	r1, [r0, #556]	@ nearest_poc, <variable>.poc
	bls	.L1583	@,
	sub	r6, r6, #1	@ tmp154, D.43901,
	rsb	r1, r1, ip	@ tmp153, nearest_poc, curr_poc
	cmp	r1, #0	@ tmp153,
	mov	r5, #0	@ nearest_pic_id,
	mov	r6, r6, asl #2	@ D.48181, tmp154,
	rsblt	r1, r1, #0	@ nearest_poc_diff, tmp153
	tst	r6, #4	@ D.48181,
	mov	r3, r5	@ ivtmp.4789, nearest_pic_id
	bne	.L1586	@,
	add	r2, r4, #26368	@ tmp192, pH264Ctx,
	add	r3, r2, #60	@ tmp192, tmp192,
	ldr	r2, [r3, #0]	@ D.43898, <variable>.DPB.fs
	ldr	r0, [r2, #556]	@ <variable>.poc, <variable>.poc
	rsb	r3, r0, ip	@ tmp195, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp195,
	rsblt	r3, r3, #0	@ nearest_poc_diff.4792, tmp195
	cmp	r3, r1	@ nearest_poc_diff.4792, nearest_poc_diff
	ldrlt	r5, [r2, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r3, r1	@ nearest_poc_diff.4792, nearest_poc_diff
	mov	r1, r3	@ nearest_poc_diff, nearest_poc_diff.4792
	mov	r3, #4	@ ivtmp.4789,
.L1586:
	add	r0, r4, r3	@ tmp155, pH264Ctx, ivtmp.4789
	add	r3, r3, #4	@ tmp180, ivtmp.4789,
	add	r2, r0, #26368	@ tmp157, tmp155,
	ldr	r0, [r2, #60]	@ D.43898, <variable>.DPB.fs
	ldr	r2, [r0, #556]	@ <variable>.poc, <variable>.poc
	rsb	r2, r2, ip	@ tmp158, <variable>.poc, curr_poc
	cmp	r2, #0	@ tmp158,
	rsblt	r2, r2, #0	@ nearest_poc_diff.4792, tmp158
	cmp	r2, r1	@ nearest_poc_diff.4792, nearest_poc_diff
	movge	r2, r1	@ nearest_poc_diff.4792, nearest_poc_diff
	ldrlt	r5, [r0, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	cmp	r3, r6	@ tmp180, D.48181
	add	r0, r4, r3	@ tmp183, pH264Ctx, tmp180
	add	r1, r0, #26368	@ tmp184, tmp183,
	beq	.L1583	@,
	ldr	r0, [r1, #60]	@ D.43898, <variable>.DPB.fs
	ldr	r1, [r0, #556]	@ <variable>.poc, <variable>.poc
	rsb	r1, r1, ip	@ tmp188, <variable>.poc, curr_poc
	cmp	r1, #0	@ tmp188,
	rsblt	r1, r1, #0	@ nearest_poc_diff.4792, tmp188
	cmp	r1, r2	@ nearest_poc_diff.4792, nearest_poc_diff.4792
	ldrlt	r5, [r0, #164]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r1, r2	@ nearest_poc_diff.4792, nearest_poc_diff.4792
.L1604:
	add	r3, r3, #4	@ ivtmp.4789, tmp180,
	b	.L1586	@
.L1583:
	movw	r0, #20672	@ tmp163,
	movw	r2, #22304	@ tmp160,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #22300	@ tmp161,
	str	r5, [r4, r2]	@ nearest_pic_id, <variable>.CurrSlice.picid_nearpoc
	mvn	r5, #0	@ tmp162,
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	str	r5, [r4, ip]	@ tmp162, <variable>.CurrSlice.picid_refidx0
	beq	.L1605	@,
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	beq	.L1589	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38657, tmp162
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1589:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	movne	r0, r5	@ D.38657, tmp162
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r4	@, pH264Ctx
	bl	FindMinRefIdx	@
	movw	r0, #27028	@ tmp171,
	ldr	r2, [r4, r0]	@ D.38667, <variable>.pListX
	movw	r3, #22300	@ tmp173,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC55	@,
	cmp	r2, #0	@ D.38667,
	movt	r1, #:upper16:.LC55	@,
	ldrne	r2, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrne	r5, [r2, #164]	@ iftmp.589, <variable>.fs_image.image_id
	str	r5, [r4, r3]	@ iftmp.589, <variable>.CurrSlice.picid_refidx0
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, #0	@ D.38657,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1605:
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
.LFB1401:
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
	movw	r7, #54168	@ tmp173,
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
	uxtbne	r8, r8	@ iftmp.539, tmp160
	strb	r8, [fp, #-71]	@ iftmp.539, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	mov	r8, #0	@ tmp169,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r8, [fp, #-72]	@ tmp169, FspInstCfg.s32UserDec
	strb	r5, [fp, #-73]	@ tmp171, FspInstCfg.s8SubLevelEnable
	ldrneb	r3, [fp, #4]	@ zero_extendqisi2	@ iftmp.540, PmvBlkNum
	moveq	r3, #1	@ iftmp.540,
	strb	r3, [fp, #-68]	@ iftmp.540, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.37744,
	bne	.L1611	@,
	ldr	lr, [r4, #0]	@ temp.4820, <variable>.pstExtraData
	sub	r3, fp, #40	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r8	@,
	moveq	r0, r5	@ D.37753, tmp171
	bne	.L1615	@,
.L1613:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1611:
	mov	r0, r8	@, tmp169
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37753,
	b	.L1613	@
.L1615:
	mov	r0, r6	@, D.37744
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37753,
	b	.L1613	@
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	GetImagePara
	.type	GetImagePara, %function
GetImagePara:
	.fnstart
.LFB1381:
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
	ldr	ip, [r1, #128]	@ prephitmp.4861, <variable>.fs_image.format
	mov	r1, #2208	@ tmp165,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #13580	@ tmp159,
	mla	r3, r1, r2, lr	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	bic	r1, ip, #768	@ prephitmp.4861, prephitmp.4861,
	movw	r2, #52676	@ tmp173,
	ldr	ip, [r5, r0]	@ <variable>.SPS, <variable>.SPS
	bic	r1, r1, #3	@ prephitmp.4861, prephitmp.4861,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	movw	lr, #3992	@ tmp169,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r1, [r4, #128]	@ prephitmp.4861, <variable>.fs_image.format
	ldr	r2, [r5, r2]	@ <variable>.frame_rate, <variable>.frame_rate
	mla	r3, lr, r3, ip	@ sps, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, r2, asl #10	@ tmp175, <variable>.frame_rate,
	str	r2, [r4, #156]	@ tmp175, <variable>.fs_image.frame_rate
	cmp	r0, #3	@ <variable>.is_used,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.is_used
	b	.L1617	@
.L1621:
	.word	.L1618
	.word	.L1619
	.word	.L1620
	.word	.L1618
.L1618:
	ldrb	r6, [r4, #432]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r6, #0	@ <variable>.frame.structure,
	bne	.L1622	@,
	ldr	r7, [r4, #568]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	mov	lr, #3072	@ prephitmp.4839,
	ldr	r2, [r4, #576]	@ <variable>.err_level, <variable>.err_level
	cmp	r7, #0	@ <variable>.MbaffFrameFlag,
	ldr	ip, [r4, #572]	@ pic_type, <variable>.pic_type
	moveq	r7, #512	@ prephitmp.4875,
	movne	r7, #768	@ prephitmp.4875,
	str	r2, [r4, #168]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1624:
	ldr	r6, [r4, #484]	@ D.36575, <variable>.top_field.poc
	ldr	r2, [r4, #520]	@ D.36576, <variable>.bottom_field.poc
	cmp	r6, r2	@ D.36575, D.36576
	beq	.L1651	@,
	movgt	r6, #0	@, top_field_first
	movle	r6, #1	@, top_field_first
.L1635:
	movw	r2, #26412	@ tmp191,
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ D.36590, <variable>.PicTimingSEI.pic_struct
	cmp	r2, #3	@ D.36590,
	moveq	r6, #4096	@ prephitmp.4843,
	beq	.L1637	@,
	cmp	r2, #4	@ D.36590,
	movne	r6, r6, asl #12	@ prephitmp.4843, top_field_first,
	moveq	r6, #0	@ prephitmp.4843,
.L1637:
	orr	r2, r7, lr	@ tmp192, prephitmp.4875, prephitmp.4839
	bic	lr, r1, #12288	@ tmp193, prephitmp.4861,
	orr	r1, r2, lr	@ tmp194, tmp192, tmp193
	and	r2, ip, #3	@ tmp195, pic_type,
	orr	lr, r1, r2	@ tmp196, tmp194, tmp195
	orr	ip, lr, r6	@ tmp197, tmp196, prephitmp.4843
	str	ip, [r4, #128]	@ tmp197, <variable>.fs_image.format
.L1617:
	ldrb	lr, [r3, #18]	@ zero_extendqisi2	@ D.36615, <variable>.frame_mbs_only_flag
	mov	r2, #1	@ tmp209,
	str	lr, [r4, #416]	@ D.36615, <variable>.fs_image.optm_inf.IsProgressiveFrm
	str	lr, [r4, #412]	@ D.36615, <variable>.fs_image.optm_inf.IsProgressiveSeq
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	ldrne	ip, [r3, #68]	@ iftmp.457, <variable>.vui_seq_parameters.matrix_coefficients
	str	r2, [r4, #420]	@ tmp209, <variable>.fs_image.optm_inf.RealFrmRate
	str	ip, [r4, #424]	@ iftmp.457, <variable>.fs_image.optm_inf.MatrixCoef
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1641	@,
	ldrb	r3, [r4, #432]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r3, #0	@ <variable>.frame.structure,
	beq	.L1652	@,
.L1641:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	movw	r3, #26376	@ tmp216,
	ldrsb	r0, [r5, r3]	@ <variable>.FramePackSEI.frame_packing_dec_ok, <variable>.FramePackSEI.frame_packing_dec_ok
	cmp	r0, #0	@ <variable>.FramePackSEI.frame_packing_dec_ok,
	beq	.L1642	@,
	movw	r3, #26392	@ tmp218,
	ldr	r2, [r5, r3]	@ D.36634, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	r2, #3	@ D.36634,
	moveq	r3, #1	@ tmp219,
	streq	r3, [r4, #296]	@ tmp219, <variable>.fs_image.eFramePackingType
	beq	.L1642	@,
	cmp	r2, #4	@ D.36634,
	moveq	r3, #2	@ tmp220,
	streq	r3, [r4, #296]	@ tmp220, <variable>.fs_image.eFramePackingType
	beq	.L1642	@,
	cmp	r2, #5	@ D.36634,
	moveq	r3, #3	@ tmp221,
	streq	r3, [r4, #296]	@ tmp221, <variable>.fs_image.eFramePackingType
	beq	.L1642	@,
	mov	r0, #0	@ tmp222,
	movw	r1, #:lower16:.LC58	@,
	str	r0, [r4, #296]	@ tmp222, <variable>.fs_image.eFramePackingType
	movt	r1, #:upper16:.LC58	@,
	ldr	r2, [r5, r3]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	bl	dprint_vfmw	@
.L1642:
	movw	r2, #54168	@ tmp226,
	ldr	r1, [r4, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r1, r4, #8	@, pFrameStore,
	mov	r2, #424	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp234,
	str	r3, [r5, #308]	@ tmp234, <variable>.ImageDnr.video_standard
	mov	ip, #1	@ tmp237,
	ldrb	r0, [r4, #432]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r5, #303]	@ tmp237, <variable>.ImageDnr.use_pic_qp_en
	cmp	r0, #0	@ <variable>.frame.structure,
	movne	r0, #4	@, iftmp.459,
	strb	r0, [r5, #296]	@ iftmp.459, <variable>.ImageDnr.pic_structure
	ldr	r1, [r4, #460]	@ D.36655, <variable>.frame.MaxQp
	strb	ip, [r5, #301]	@ tmp237, <variable>.ImageDnr.chroma_format_idc
	str	r1, [r5, #316]	@ D.36655, <variable>.ImageDnr.QP_U
	str	r1, [r5, #312]	@ D.36655, <variable>.ImageDnr.QP_Y
	str	r1, [r5, #320]	@ D.36655, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1652:
	cmp	r0, #3	@ <variable>.is_used,
	ldreq	r3, [r4, #128]	@ <variable>.fs_image.format, <variable>.fs_image.format
	biceq	r3, r3, #768	@ tmp215, <variable>.fs_image.format,
	streq	r3, [r4, #128]	@ tmp215, <variable>.fs_image.format
	b	.L1641	@
.L1620:
	ldr	ip, [r4, #572]	@ <variable>.pic_type, <variable>.pic_type
	ldr	lr, [r4, #576]	@ <variable>.err_level, <variable>.err_level
	and	r2, ip, #3	@ tmp198, <variable>.pic_type,
	orr	r1, r1, r2	@ tmp200, prephitmp.4861, tmp198
	orr	ip, r1, #2816	@ tmp201, tmp200,
	str	lr, [r4, #168]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	ip, [r4, #128]	@ tmp201, <variable>.fs_image.format
	b	.L1617	@
.L1619:
	ldr	lr, [r4, #572]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r2, [r4, #576]	@ <variable>.err_level, <variable>.err_level
	and	ip, lr, #3	@ tmp203, <variable>.pic_type,
	orr	lr, r1, ip	@ tmp205, prephitmp.4861, tmp203
	orr	r1, lr, #1792	@ tmp206, tmp205,
	str	r2, [r4, #168]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	r1, [r4, #128]	@ tmp206, <variable>.fs_image.format
	b	.L1617	@
.L1622:
	movw	r7, #54164	@ tmp180,
	ldr	r8, [r4, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldr	r2, [r5, r7]	@ D.36559, <variable>.out_error_thr
	cmp	r8, r2	@ <variable>.top_field.err_level, D.36559
	bhi	.L1653	@,
	ldr	sl, [r4, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.36559, <variable>.bottom_field.err_level
	bcc	.L1628	@,
.L1626:
	ldr	r6, [r4, #576]	@ <variable>.err_level, <variable>.err_level
	mov	lr, #3	@ valid_field,
	ldr	ip, [r4, #572]	@ pic_type, <variable>.pic_type
	ldr	r2, [r4, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r6, [r4, #168]	@ <variable>.err_level, <variable>.fs_image.error_level
	ldr	r6, [r4, #492]	@ pic_type, <variable>.top_field.pic_type
.L1629:
	ldrb	r7, [r4, #3]	@ zero_extendqisi2	@ D.36567, <variable>.mode_skip_flag
	cmp	r7, #1	@ D.36567,
	streq	sl, [r4, #168]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	moveq	lr, #2	@ valid_field,
	beq	.L1631	@,
	cmp	r7, #2	@ D.36567,
	streq	r8, [r4, #168]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r6	@ pic_type, pic_type
	moveq	lr, #1	@ valid_field,
.L1631:
	mov	lr, lr, asl #10	@ prephitmp.4839, valid_field,
	mov	r7, #768	@ prephitmp.4875,
	str	r6, [r4, #120]	@ pic_type, <variable>.fs_image.top_fld_type
	str	r2, [r4, #124]	@ <variable>.bottom_field.pic_type, <variable>.fs_image.bottom_fld_type
	b	.L1624	@
.L1628:
	ldr	r6, [r4, #492]	@ pic_type, <variable>.top_field.pic_type
	mov	lr, #1	@ valid_field,
	ldr	r2, [r4, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r8, [r4, #168]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	mov	ip, r6	@ pic_type, pic_type
	b	.L1629	@
.L1651:
	ldr	r2, [r4, #132]	@ <variable>.fs_image.image_width, <variable>.fs_image.image_width
	cmp	r2, #720	@ <variable>.fs_image.image_width,
	movne	r6, #1	@ top_field_first,
	bne	.L1635	@,
	ldr	r6, [r4, #136]	@ <variable>.fs_image.image_height, <variable>.fs_image.image_height
	subs	r6, r6, #480	@ top_field_first, <variable>.fs_image.image_height,
	movne	r6, #1	@ top_field_first
	b	.L1635	@
.L1653:
	ldr	sl, [r4, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.36559, <variable>.bottom_field.err_level
	bcc	.L1626	@,
	ldr	r2, [r4, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	mov	lr, #2	@ valid_field,
	str	sl, [r4, #168]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	ldr	r6, [r4, #492]	@ pic_type, <variable>.top_field.pic_type
	mov	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	b	.L1629	@
	.fnend
	.size	GetImagePara, .-GetImagePara
	.align	2
	.global	RemoveFrameStoreOutDPB
	.type	RemoveFrameStoreOutDPB, %function
RemoveFrameStoreOutDPB:
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
	add	r7, r1, #6592	@ tmp202, pos,
	add	r5, r7, #14	@ tmp201, tmp202,
	mov	r6, r1	@ pos, pos
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, r5, asl #2]	@ D.36342, <variable>.DPB.fs
	cmp	r3, #0	@ D.36342,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r3, [r3, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	movw	r1, #26896	@ tmp152,
	ldr	r2, [r0, r1]	@ D.36347, <variable>.APC.used_size
	movw	r1, #26896	@ tmp153,
	add	lr, r3, #6656	@ tmp144, <variable>.apc_idc,
	ldr	r3, [r4, r5, asl #2]	@ tmp158, <variable>.DPB.fs
	add	ip, lr, #2	@ tmp144, tmp144,
	cmp	r2, #0	@ D.36347,
	subne	r2, r2, #1	@ iftmp.446, D.36347,
	str	r2, [r4, r1]	@ iftmp.446, <variable>.APC.used_size
	add	r8, r0, ip, asl #2	@, tmp149, pH264Ctx, tmp144,
	mov	r0, #0	@ tmp151,
	str	r0, [r8, #4]	@ tmp151, <variable>.APC.is_used
	movw	r8, #54168	@ tmp154,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L1658	@,
	ldrsb	r2, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #3	@ <variable>.s32DispState,
	beq	.L1659	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp165, <variable>.DPB.fs
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L1659:
	ldr	lr, [r4, r5, asl #2]	@ tmp171, <variable>.DPB.fs
	movw	r3, #54168	@ tmp167,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
.L1658:
	ldr	r3, [r4, r5, asl #2]	@ tmp175, <variable>.DPB.fs
	mov	ip, #0	@ tmp176,
	movw	r1, #26620	@ tmp188,
	strb	ip, [r3, #1]	@ tmp176, <variable>.is_used
	ldr	lr, [r4, r5, asl #2]	@ tmp180, <variable>.DPB.fs
	strb	ip, [lr, #4]	@ tmp176, <variable>.is_in_dpb
	ldr	r2, [r4, r5, asl #2]	@ tmp185, <variable>.DPB.fs
	strb	ip, [r2, #2]	@ tmp176, <variable>.is_reference
	ldr	r0, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r0, #1	@ D.36363, <variable>.DPB.used_size,
	cmp	r6, ip	@ pos, D.36363
	bcs	.L1660	@,
	add	r7, r7, #15	@ tmp190, tmp202,
	add	r1, r6, #1	@ i, pos,
	cmp	r1, ip	@ i, D.36363
	mvn	r2, r6	@ tmp204, pos
	add	r7, r4, r7, asl #2	@, ivtmp.4910, pH264Ctx, tmp190,
	add	r6, r2, ip	@ tmp203, tmp204, D.36363
	and	r6, r6, #1	@ tmp205, tmp203,
	add	r2, r7, #4	@ ivtmp.4910, ivtmp.4910,
	ldr	r0, [r7, #0]	@ tmp193, <variable>.DPB.fs
	str	r0, [r7, #-4]	@ tmp193, <variable>.DPB.fs
	bcs	.L1660	@,
	cmp	r6, #0	@ tmp205,
	beq	.L1661	@,
	ldr	lr, [r2, #0]	@ tmp214, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.36363
	str	lr, [r2, #-4]	@ tmp214, <variable>.DPB.fs
	add	r2, r2, #4	@ ivtmp.4910, ivtmp.4910,
	bcs	.L1660	@,
.L1661:
	ldr	r0, [r2, #0]	@ tmp211, <variable>.DPB.fs
	add	r1, r1, #2	@ i, i,
	ldr	r3, [r2, #4]	@ tmp213, <variable>.DPB.fs
	cmp	r1, ip	@ i, D.36363
	mov	lr, r2	@ tmp207, ivtmp.4910
	str	r0, [r2, #-4]	@ tmp211, <variable>.DPB.fs
	str	r3, [lr], #4	@ tmp213, <variable>.DPB.fs
	add	r2, lr, #4	@ ivtmp.4910, tmp207,
	bcc	.L1661	@,
.L1660:
	movw	lr, #26620	@ tmp197,
	add	r0, ip, #6592	@ tmp194, D.36363,
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
.LFB1378:
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
	beq	.L1670	@,
	movw	r7, #6606	@ tmp177,
	movw	r8, #54168	@ tmp179,
	ldr	r2, [r0, r7, asl #2]	@ tmp147, <variable>.DPB.fs
	sub	r6, sl, #1	@ tmp181, k,
	ldr	r0, [r0, r8]	@, <variable>.ChanID
	and	r6, r6, #1	@ tmp183, tmp181,
	mov	r5, #0	@ j,
	mvn	r9, #0	@ tmp180,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1701	@,
	ldrsh	r1, [r0, #0]	@ tmp204,* pstLogicFs
	cmp	r1, #0	@ tmp204,
	bne	.L1679	@,
	ldr	lr, [r4, r7, asl #2]	@ tmp205, <variable>.DPB.fs
	str	r9, [lr, #540]	@ tmp180, <variable>.logic_fs_id
	ldr	r0, [r4, r7, asl #2]	@ tmp207, <variable>.DPB.fs
	strb	r5, [r0, #2]	@ j, <variable>.is_reference
.L1701:
	ldr	r3, [r4, r7, asl #2]	@ temp.4953, <variable>.DPB.fs
	ldr	r2, [r3, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, #1	@ <variable>.eFoState,
	movne	ip, #0	@, tmp210
	moveq	ip, #1	@, tmp210
	strb	ip, [r3, #4]	@ tmp210, <variable>.is_in_dpb
.L1679:
	ldr	r3, [r4, r7, asl #2]	@ temp.4957, <variable>.DPB.fs
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r7, #0	@ <variable>.is_reference,
	beq	.L1694	@,
.L1680:
	mov	r5, #1	@ j,
.L1695:
	mov	r7, #1	@ i,
	cmp	sl, r7	@ k, i
	bls	.L1670	@,
	cmp	r6, #0	@ tmp183,
	beq	.L1675	@,
	add	r6, r5, #6592	@ tmp218, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r6, #14	@ tmp218, tmp218,
	ldr	lr, [r4, r6, asl #2]	@ tmp219, <variable>.DPB.fs
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1708	@,
	ldrsh	r3, [r0, #0]	@ tmp225,* pstLogicFs
	cmp	r3, #0	@ tmp225,
	beq	.L1709	@,
.L1688:
	ldr	r3, [r4, r6, asl #2]	@ temp.4957, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	bne	.L1689	@,
.L1699:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1689	@,
	ldr	r0, [r3, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	beq	.L1689	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	add	r7, r7, #1	@ i, tmp184,
	bl	RemoveFrameStoreOutDPB	@
	cmp	sl, r7	@ k, i
	bls	.L1670	@,
.L1675:
	add	r1, r5, #6592	@ tmp188, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r1, #14	@ tmp188, tmp188,
	ldr	ip, [r4, r6, asl #2]	@ tmp189, <variable>.DPB.fs
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1671	@,
	ldrsh	r3, [r0, #0]	@ tmp149,* pstLogicFs
	cmp	r3, #0	@ tmp149,
	bne	.L1672	@,
	ldr	ip, [r4, r6, asl #2]	@ tmp152, <variable>.DPB.fs
	str	r9, [ip, #540]	@ tmp180, <variable>.logic_fs_id
	ldr	r2, [r4, r6, asl #2]	@ tmp156, <variable>.DPB.fs
	strb	r3, [r2, #2]	@ tmp149, <variable>.is_reference
	ldr	lr, [r4, r6, asl #2]	@ temp.4953, <variable>.DPB.fs
	ldr	r3, [lr, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp162
	moveq	r0, #1	@, tmp162
	strb	r0, [lr, #4]	@ tmp162, <variable>.is_in_dpb
.L1672:
	ldr	r3, [r4, r6, asl #2]	@ temp.4957, <variable>.DPB.fs
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	bne	.L1673	@,
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1673	@,
	ldr	ip, [r3, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1673	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	bl	RemoveFrameStoreOutDPB	@
.L1674:
	add	r2, r5, #6592	@ tmp197, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r2, #14	@ tmp197, tmp197,
	add	r7, r7, #1	@ tmp184, i,
	ldr	r3, [r4, r6, asl #2]	@ tmp198, <variable>.DPB.fs
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1702	@,
	ldrsh	r3, [r0, #0]	@ tmp239,* pstLogicFs
	cmp	r3, #0	@ tmp239,
	bne	.L1688	@,
	ldr	r0, [r4, r6, asl #2]	@ tmp240, <variable>.DPB.fs
	str	r9, [r0, #540]	@ tmp180, <variable>.logic_fs_id
	ldr	r2, [r4, r6, asl #2]	@ tmp242, <variable>.DPB.fs
	strb	r3, [r2, #2]	@ tmp239, <variable>.is_reference
.L1702:
	ldr	r3, [r4, r6, asl #2]	@ temp.4953, <variable>.DPB.fs
	ldr	r1, [r3, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	movne	lr, #0	@, tmp245
	moveq	lr, #1	@, tmp245
	strb	lr, [r3, #4]	@ tmp245, <variable>.is_in_dpb
	ldr	r3, [r4, r6, asl #2]	@ temp.4957, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1699	@,
.L1689:
	add	r7, r7, #1	@ i, tmp184,
	add	r5, r5, #1	@ j, j,
	cmp	sl, r7	@ k, i
	bhi	.L1675	@,
.L1670:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L1673:
	add	r5, r5, #1	@ j, j,
	b	.L1674	@
.L1671:
	ldr	r0, [r4, r6, asl #2]	@ temp.4954, <variable>.DPB.fs
	ldr	lr, [r0, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	movne	r1, #0	@, tmp167
	moveq	r1, #1	@, tmp167
	strb	r1, [r0, #4]	@ tmp167, <variable>.is_in_dpb
	b	.L1672	@
.L1694:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	bne	.L1680	@,
	ldr	r0, [r3, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	beq	.L1680	@,
	strb	r1, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L1695	@
.L1709:
	ldr	ip, [r4, r6, asl #2]	@ tmp226, <variable>.DPB.fs
	str	r9, [ip, #540]	@ tmp180, <variable>.logic_fs_id
	ldr	r1, [r4, r6, asl #2]	@ tmp228, <variable>.DPB.fs
	strb	r3, [r1, #2]	@ tmp225, <variable>.is_reference
	ldr	r0, [r4, r6, asl #2]	@ temp.4953, <variable>.DPB.fs
	ldr	lr, [r0, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	movne	r2, #0	@, tmp231
	moveq	r2, #1	@, tmp231
	strb	r2, [r0, #4]	@ tmp231, <variable>.is_in_dpb
	b	.L1688	@
.L1708:
	ldr	ip, [r4, r6, asl #2]	@ temp.4954, <variable>.DPB.fs
	ldr	r3, [ip, #560]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, r7	@ <variable>.eFoState,
	movne	r1, #0	@, tmp224
	moveq	r1, #1	@, tmp224
	strb	r1, [ip, #4]	@ tmp224, <variable>.is_in_dpb
	b	.L1688	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	UnMarkFrameStoreRef
	.type	UnMarkFrameStoreRef, %function
UnMarkFrameStoreRef:
	.fnstart
.LFB1367:
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
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ prephitmp.4975, <variable>.is_used
	tst	r3, #1	@ prephitmp.4975,
	beq	.L1711	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp142,
	strb	r2, [r1, #470]	@ tmp142, <variable>.top_field.is_short_term
	and	ip, lr, #2	@ tmp140, <variable>.is_reference,
	strb	r2, [r1, #469]	@ tmp142, <variable>.top_field.is_long_term
	strb	ip, [r1, #2]	@ tmp140, <variable>.is_reference
.L1711:
	tst	r3, #2	@ prephitmp.4975,
	beq	.L1712	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp151,
	strb	r2, [r1, #506]	@ tmp151, <variable>.bottom_field.is_short_term
	and	ip, lr, #1	@ tmp149, <variable>.is_reference,
	strb	r2, [r1, #505]	@ tmp151, <variable>.bottom_field.is_long_term
	strb	ip, [r1, #2]	@ tmp149, <variable>.is_reference
.L1712:
	cmp	r3, #3	@ prephitmp.4975,
	mov	r2, #0	@ tmp161,
	moveq	r3, #0	@ tmp155,
	streqb	r3, [r1, #2]	@ tmp155, <variable>.is_reference
	streqb	r3, [r1, #434]	@ tmp155, <variable>.frame.is_short_term
	streqb	r3, [r1, #433]	@ tmp155, <variable>.frame.is_long_term
	movw	r3, #54168	@ tmp163,
	strb	r2, [r1, #2]	@ tmp161, <variable>.is_reference
	ldr	r1, [r1, #540]	@, <variable>.logic_fs_id
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
.LFB1398:
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
	bcs	.L1719	@,
.L1716:
	movw	r3, #51432	@ tmp143,
	mov	r1, #0	@ tmp141,
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r0, #50980	@ tmp140,
	strb	r1, [r4, r0]	@ tmp141, <variable>.CurrPic.is_long_term
	cmp	r2, r1	@ <variable>.CurrPic.nal_ref_idc,
	movwne	r2, #50981	@ tmp145,
	movne	r0, #1	@ tmp146,
	strneb	r0, [r4, r2]	@ tmp146, <variable>.CurrPic.is_short_term
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1719:
	movw	lr, #26424	@ tmp138,
	ldr	r1, [r0, lr]	@, <variable>.DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	RemoveFrameStoreOutDPB	@
	b	.L1716	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	SlidingWinMark
	.type	SlidingWinMark, %function
SlidingWinMark:
	.fnstart
.LFB1392:
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
	ldr	sl, [r4, r0]	@ D.37214, <variable>.DPB.used_size
	cmp	sl, #0	@ D.37214,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r6, r4, #26368	@ ivtmp.5040, pH264Ctx,
	sub	r8, sl, #1	@ tmp149, D.37214,
	and	r8, r8, #1	@ tmp151, tmp149,
	ldr	r5, [r6, #56]!	@ D.37207, <variable>.DPB.fs
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1737	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.37214, i
	add	r6, r6, #4	@ ivtmp.5040, ivtmp.5040,
	ldmlsfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1741:
	cmp	r8, #0	@ tmp151,
	beq	.L1723	@,
	ldr	r5, [r6, #0]	@ D.37207, <variable>.DPB.fs
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L1738	@,
.L1728:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.5040, ivtmp.5040,
	cmp	sl, r7	@ D.37214, i
	bhi	.L1723	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1722:
	ldr	r5, [r6, #4]	@ D.37207, <variable>.DPB.fs
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1739	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.5040, tmp153,
	cmp	sl, r7	@ D.37214, i
	bls	.L1740	@,
.L1723:
	ldr	r5, [r6, #0]	@ D.37207, <variable>.DPB.fs
	add	r7, r7, #1	@ tmp152, i,
	add	r8, r6, #4	@ tmp153, ivtmp.5040,
	ldrb	ip, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1722	@,
	mov	r0, r5	@, D.37207
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1722	@,
.L1736:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, D.37207
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1739:
	mov	r0, r5	@, D.37207
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1736	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.5040, tmp153,
	cmp	sl, r7	@ D.37214, i
	bhi	.L1723	@,
.L1740:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1737:
	mov	r0, r5	@, D.37207
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1736	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.37214, i
	add	r6, r6, #4	@ ivtmp.5040, ivtmp.5040,
	bhi	.L1741	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1738:
	mov	r0, r5	@, D.37207
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1728	@,
	b	.L1736	@
	.fnend
	.size	SlidingWinMark, .-SlidingWinMark
	.align	2
	.global	UnMarkAllSTRef
	.type	UnMarkAllSTRef, %function
UnMarkAllSTRef:
	.fnstart
.LFB1375:
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
	add	r6, r0, #26368	@ ivtmp.5069, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #120	@ ivtmp.5069, ivtmp.5069,
.L1744:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6], #4	@, <variable>.DPB.fs_ref
	bl	UnMarkFrameStoreRef	@
	ldr	r0, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L1744	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	UnMarkAllSTRef, .-UnMarkAllSTRef
	.align	2
	.global	UpdateMaxLTFrmIdx
	.type	UpdateMaxLTFrmIdx, %function
UpdateMaxLTFrmIdx:
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
	movw	r7, #26628	@ tmp139,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #26632	@ tmp138,
	mov	r2, r1	@ max_long_term_frame_idx_plus1, max_long_term_frame_idx_plus1
	cmp	r3, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	str	r1, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.5103, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #184	@ ivtmp.5103, ivtmp.5103,
	b	.L1750	@
.L1749:
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1752:
	ldr	r2, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
.L1750:
	ldr	r1, [r4, #0]	@ D.36305, <variable>.DPB.fs_ltref
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5103, ivtmp.5103,
	ldr	r0, [r1, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r0, r2	@ <variable>.long_term_frame_idx, max_long_term_frame_idx_plus1
	bcc	.L1749	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	bhi	.L1752	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	UpdateMaxLTFrmIdx, .-UpdateMaxLTFrmIdx
	.align	2
	.global	UnMarkLTRef
	.type	UnMarkLTRef, %function
UnMarkLTRef:
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #0	@ <variable>.structure,
	beq	.L1754	@,
	movw	r1, #26628	@ tmp153,
	ldr	r7, [r0, r1]	@ D.36121, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, #0	@ D.36121,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r0, #26368	@ ivtmp.5148, pH264Ctx,
	sub	r5, r7, #1	@ tmp238, D.36121,
	and	r6, r5, #1	@ tmp240, tmp238,
	mov	ip, #0	@ i,
	ldr	r1, [r4, #184]!	@ temp.5152, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5153, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5153,
	beq	.L1774	@,
	ldr	r8, [r1, #468]	@ tmp261,
	bic	r8, r8, #-16777216	@ tmp262, tmp261,
	bic	r8, r8, #255	@ tmp262, tmp262,
	cmp	r8, #256	@ tmp262,
	beq	.L1797	@,
.L1774:
	tst	r3, #2	@ temp.5153,
	beq	.L1775	@,
	ldr	r3, [r1, #504]	@ tmp265,
	bic	r3, r3, #-16777216	@ tmp266, tmp265,
	bic	r3, r3, #255	@ tmp266, tmp266,
	cmp	r3, #256	@ tmp266,
	beq	.L1798	@,
.L1775:
	mov	ip, #1	@ i,
	cmp	r7, ip	@ D.36121, i
	add	r4, r4, #4	@ ivtmp.5148, ivtmp.5148,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r6, #0	@ tmp240,
	beq	.L1763	@,
	ldr	r1, [r4, #0]	@ temp.5152, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5153, <variable>.is_reference
	ands	r5, r3, ip	@ tmp232, temp.5153,
	beq	.L1777	@,
	ldr	r6, [r1, #468]	@ tmp268,
	bic	r6, r6, #-16777216	@ tmp269, tmp268,
	bic	r6, r6, #255	@ tmp269, tmp269,
	cmp	r6, #256	@ tmp269,
	beq	.L1799	@,
.L1777:
	tst	r3, #2	@ temp.5153,
	beq	.L1778	@,
	ldr	r3, [r1, #504]	@ tmp272,
	bic	r3, r3, #-16777216	@ tmp273, tmp272,
	bic	r3, r3, #255	@ tmp273, tmp273,
	cmp	r3, #256	@ tmp273,
	beq	.L1800	@,
.L1778:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5148, ivtmp.5148,
	cmp	r7, ip	@ D.36121, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r1, [r4, #0]	@ temp.5152, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5153, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5153,
	bne	.L1801	@,
.L1759:
	tst	r3, #2	@ temp.5153,
	beq	.L1761	@,
	ldr	r3, [r1, #504]	@ tmp200,
	bic	r3, r3, #-16777216	@ tmp198, tmp200,
	bic	r3, r3, #255	@ tmp198, tmp198,
	cmp	r3, #256	@ tmp198,
	beq	.L1802	@,
.L1761:
	ldr	r1, [r4, #4]	@ temp.5152, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp242, ivtmp.5148,
	mov	r8, ip	@ tmp241, i
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5153, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5153,
	beq	.L1781	@,
	ldr	r6, [r1, #468]	@ tmp275,
	bic	r6, r6, #-16777216	@ tmp276, tmp275,
	bic	r6, r6, #255	@ tmp276, tmp276,
	cmp	r6, #256	@ tmp276,
	beq	.L1803	@,
.L1781:
	tst	r3, #2	@ temp.5153,
	beq	.L1782	@,
	ldr	r3, [r1, #504]	@ tmp279,
	bic	r3, r3, #-16777216	@ tmp280, tmp279,
	bic	r3, r3, #255	@ tmp280, tmp280,
	cmp	r3, #256	@ tmp280,
	beq	.L1804	@,
.L1782:
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.5148, tmp242,
	cmp	r7, ip	@ D.36121, i
	bls	.L1805	@,
.L1763:
	ldr	r1, [r4, #0]	@ temp.5152, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.5153, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.5153,
	beq	.L1759	@,
.L1801:
	ldr	r6, [r1, #468]	@ tmp165,
	bic	r6, r6, #-16777216	@ tmp163, tmp165,
	bic	r6, r6, #255	@ tmp163, tmp163,
	cmp	r6, #256	@ tmp163,
	bne	.L1759	@,
	ldr	r6, [r1, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1759	@,
.L1791:
	add	ip, ip, #6592	@ tmp169, i,
	and	r2, r3, #2	@ tmp167, temp.5153,
	add	ip, ip, #46	@ tmp169, tmp169,
	strb	r2, [r1, #2]	@ tmp167, <variable>.is_reference
	mov	r2, #0	@ tmp172,
	ldr	r3, [r0, ip, asl #2]	@ tmp171, <variable>.DPB.fs_ltref
	strb	r2, [r3, #469]	@ tmp172, <variable>.top_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5155, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #432]	@ zero_extendqisi2	@ D.36136, <variable>.frame.structure
	cmp	r1, #3	@ D.36136,
	cmpne	r1, r2	@, D.36136,
	bne	.L1762	@,
.L1795:
	strb	r2, [r3, #434]	@ tmp207, <variable>.frame.is_short_term
	ldr	r1, [r0, ip, asl #2]	@ tmp222, <variable>.DPB.fs_ltref
	strb	r2, [r1, #433]	@ tmp207, <variable>.frame.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5130, <variable>.DPB.fs_ltref
.L1762:
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	ldreq	r3, [r3, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	addeq	r3, r3, #13120	@ tmp228, <variable>.pmv_address_idc,
	addeq	r3, r3, #26	@ tmp228, tmp228,
	streq	ip, [r0, r3, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1754:
	movw	ip, #26628	@ tmp154,
	ldr	r6, [r0, ip]	@ temp.5154, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ temp.5154,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r3, r0, #26368	@ ivtmp.5143, pH264Ctx,
	sub	r1, r6, #1	@ tmp233, temp.5154,
	and	r4, r1, #1	@ tmp235, tmp233,
	ldr	r1, [r3, #184]!	@ D.36110, <variable>.DPB.fs_ltref
	ldr	ip, [r1, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1806	@,
.L1767:
	mov	ip, #1	@ i.5151,
	cmp	ip, r6	@ i.5151, temp.5154
	add	r3, r3, #4	@ ivtmp.5143, ivtmp.5143,
	ldmcsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r4, #0	@ tmp235,
	beq	.L1758	@,
	ldr	r1, [r3, #0]	@ D.36110, <variable>.DPB.fs_ltref
	ldr	r4, [r1, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1807	@,
.L1769:
	add	ip, ip, #1	@ i.5151, i.5151,
	add	r3, r3, #4	@ ivtmp.5143, ivtmp.5143,
	cmp	ip, r6	@ i.5151, temp.5154
	bcc	.L1758	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1757:
	ldr	r1, [r3, #4]	@ D.36110, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1808	@,
.L1772:
	add	ip, ip, #1	@ i.5151, tmp236,
	add	r3, r5, #4	@ ivtmp.5143, tmp237,
	cmp	ip, r6	@ i.5151, temp.5154
	bcs	.L1809	@,
.L1758:
	ldr	r1, [r3, #0]	@ D.36110, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ tmp236, i.5151,
	add	r5, r3, #4	@ tmp237, ivtmp.5143,
	ldr	r4, [r1, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1757	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1757	@,
	ldr	r4, [r1, #432]	@ tmp160,
	bic	r4, r4, #-16777216	@ tmp158, tmp160,
	bic	r4, r4, #255	@ tmp158, tmp158,
	cmp	r4, #256	@ tmp158,
	beq	.L1790	@,
	ldr	r1, [r3, #4]	@ D.36110, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #440]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1772	@,
.L1808:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #3	@ <variable>.is_reference,
	bne	.L1772	@,
	ldr	r3, [r1, #432]	@ tmp259,
	bic	r3, r3, #-16777216	@ tmp260, tmp259,
	bic	r3, r3, #255	@ tmp260, tmp260,
	cmp	r3, #256	@ tmp260,
	beq	.L1790	@,
	add	ip, ip, #1	@ i.5151, tmp236,
	add	r3, r5, #4	@ ivtmp.5143, tmp237,
	cmp	ip, r6	@ i.5151, temp.5154
	bcc	.L1758	@,
.L1809:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1802:
	ldr	r3, [r1, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1761	@,
.L1792:
	add	r2, ip, #6592	@ tmp204, i,
	strb	r5, [r1, #2]	@ tmp232, <variable>.is_reference
	add	ip, r2, #46	@ tmp204, tmp204,
	mov	r2, #0	@ tmp207,
	ldr	r3, [r0, ip, asl #2]	@ tmp206, <variable>.DPB.fs_ltref
	strb	r2, [r3, #505]	@ tmp207, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.5130, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #432]	@ zero_extendqisi2	@ D.36156, <variable>.frame.structure
	cmp	r1, #3	@ D.36156,
	cmpne	r1, r2	@, D.36156,
	bne	.L1762	@,
	b	.L1795	@
.L1803:
	ldr	r6, [r1, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1781	@,
	b	.L1791	@
.L1804:
	ldr	r3, [r1, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	beq	.L1792	@,
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.5148, tmp242,
	cmp	r7, ip	@ D.36121, i
	bhi	.L1763	@,
.L1805:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1797:
	ldr	r8, [r1, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r8, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1774	@,
	b	.L1791	@
.L1798:
	ldr	r3, [r1, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1775	@,
	b	.L1792	@
.L1799:
	ldr	r6, [r1, #476]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1777	@,
	b	.L1791	@
.L1800:
	ldr	r3, [r1, #512]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1778	@,
	b	.L1792	@
.L1806:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L1767	@,
	ldr	ip, [r1, #432]	@ tmp252,
	bic	ip, ip, #-16777216	@ tmp253, tmp252,
	bic	ip, ip, #255	@ tmp253, tmp253,
	cmp	ip, #256	@ tmp253,
	bne	.L1767	@,
.L1790:
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1807:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1769	@,
	ldr	r4, [r1, #432]	@ tmp256,
	bic	r4, r4, #-16777216	@ tmp257, tmp256,
	bic	r4, r4, #255	@ tmp257, tmp257,
	cmp	r4, #256	@ tmp257,
	bne	.L1769	@,
	b	.L1790	@
	.fnend
	.size	UnMarkLTRef, .-UnMarkLTRef
	.align	2
	.global	UnMarkLTFldByFrmIdx
	.type	UnMarkLTFldByFrmIdx, %function
UnMarkLTFldByFrmIdx:
	.fnstart
.LFB1369:
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
	ldr	ip, [r0, ip]	@ D.36018, <variable>.DPB.ltref_frames_in_buffer
	cmp	ip, #0	@ D.36018,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r5, r0, #26368	@ ivtmp.5191, pH264Ctx,
	sub	r4, ip, #1	@ tmp146, D.36018,
	and	r7, r4, #1	@ tmp148, tmp146,
	ldr	r4, [r5, #184]!	@ D.36002, <variable>.DPB.fs_ltref
	ldr	r6, [r4, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1840	@,
.L1819:
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.36018
	add	r5, r5, #4	@ ivtmp.5191, ivtmp.5191,
	ldmcsfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1845:
	cmp	r7, #0	@ tmp148,
	beq	.L1816	@,
	ldr	r4, [r5, #0]	@ D.36002, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1841	@,
.L1822:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5191, ivtmp.5191,
	cmp	r6, ip	@ i, D.36018
	bcc	.L1816	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1812:
	ldr	r4, [r5, #4]	@ D.36002, <variable>.DPB.fs_ltref
	add	r6, r6, #1	@ tmp149, i,
	add	r5, r5, #4	@ tmp150, ivtmp.5191,
	ldr	r7, [r4, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1842	@,
.L1826:
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5191, tmp150,
	cmp	r6, ip	@ i, D.36018
	bcs	.L1843	@,
.L1816:
	ldr	r4, [r5, #0]	@ D.36002, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1812	@,
	cmp	r2, #1	@ structure,
	beq	.L1844	@,
	cmp	r2, #2	@ structure,
	bne	.L1812	@,
	ldrb	r7, [r4, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1815	@,
.L1839:
	cmp	r4, r1	@ D.36002, pFS
	beq	.L1812	@,
.L1815:
	mov	r1, r4	@, D.36002
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1842:
	cmp	r2, #1	@ structure,
	beq	.L1834	@,
	cmp	r2, #2	@ structure,
	bne	.L1826	@,
	ldrb	r7, [r4, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1815	@,
.L1837:
	cmp	r4, r1	@ D.36002, pFS
	bne	.L1815	@,
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5191, tmp150,
	cmp	r6, ip	@ i, D.36018
	bcc	.L1816	@,
.L1843:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1844:
	ldrb	r7, [r4, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1839	@,
	b	.L1815	@
.L1834:
	ldrb	r7, [r4, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1837	@,
	b	.L1815	@
.L1840:
	cmp	r2, #1	@ structure,
	beq	.L1832	@,
	cmp	r2, #2	@ structure,
	bne	.L1819	@,
	ldrb	r6, [r4, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #0	@ <variable>.top_field.is_long_term,
	beq	.L1815	@,
.L1835:
	cmp	r4, r1	@ D.36002, pFS
	bne	.L1815	@,
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.36018
	add	r5, r5, #4	@ ivtmp.5191, ivtmp.5191,
	bcc	.L1845	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1841:
	cmp	r2, r6	@ structure,
	beq	.L1833	@,
	cmp	r2, #2	@ structure,
	bne	.L1822	@,
	ldrb	r7, [r4, #469]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1815	@,
.L1836:
	cmp	r4, r1	@ D.36002, pFS
	bne	.L1815	@,
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5191, ivtmp.5191,
	cmp	r6, ip	@ i, D.36018
	bcc	.L1816	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1832:
	ldrb	r6, [r4, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1835	@,
	b	.L1815	@
.L1833:
	ldrb	r7, [r4, #505]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1836	@,
	b	.L1815	@
	.fnend
	.size	UnMarkLTFldByFrmIdx, .-UnMarkLTFldByFrmIdx
	.align	2
	.global	UnMarkLTFrmByFrmIdx
	.type	UnMarkLTFrmByFrmIdx, %function
UnMarkLTFrmByFrmIdx:
	.fnstart
.LFB1368:
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
	ldr	r2, [r0, r3]	@ D.35990, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ D.35990,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r3, #26552	@ tmp140,
	ldr	r3, [r0, r3]	@ D.35986, <variable>.DPB.fs_ltref
	ldr	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1848	@,
	tst	r2, #1	@ D.35990,
	add	ip, r0, #26368	@ tmp143, pH264Ctx,
	add	r4, ip, #188	@ ivtmp.5220, tmp143,
	mov	r5, #0	@ i,
	bne	.L1850	@,
	ldr	r3, [r4, #0]	@ D.35986, <variable>.DPB.fs_ltref
	add	r4, ip, #192	@ ivtmp.5220, tmp143,
	mov	r5, #1	@ i,
	ldr	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1850	@,
.L1848:
	mov	r1, r3	@, D.35986
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1851:
	ldr	r3, [ip], #4	@ D.35986, <variable>.DPB.fs_ltref
	ldr	r6, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1848	@,
	ldr	r3, [r4, #4]	@ D.35986, <variable>.DPB.fs_ltref
	add	r4, ip, #4	@ ivtmp.5220, tmp148,
	ldr	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1848	@,
.L1850:
	add	r3, r5, #1	@ tmp147, i,
	mov	ip, r4	@ tmp148, ivtmp.5220
	cmp	r2, r3	@ D.35990, tmp147
	add	r5, r3, #1	@ i, tmp147,
	bhi	.L1851	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	UnMarkLTFrmByFrmIdx, .-UnMarkLTFrmByFrmIdx
	.align	2
	.global	MarkCurrPicLT
	.type	MarkCurrPicLT, %function
MarkCurrPicLT:
	.fnstart
.LFB1376:
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.36326, <variable>.structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.36326,
	beq	.L1866	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #440]	@, <variable>.frame_store
	bl	UnMarkLTFldByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #452]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1866:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #452]	@ long_term_frame_idx, <variable>.long_term_frame_idx
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
	mov	r5, r1	@ pCurrPic, pCurrPic
	ldrb	r1, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	mov	r7, r3	@ long_term_frame_idx, long_term_frame_idx
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ <variable>.structure,
	bne	.L1868	@,
	ldr	r3, [r5, #448]	@ <variable>.frame_num, <variable>.frame_num
	mov	r1, r7	@, long_term_frame_idx
	mvn	r4, r2	@ tmp144, difference_of_pic_nums_minus1
	add	r4, r4, r3	@ picNumX, tmp144, <variable>.frame_num
	bl	UnMarkLTFrmByFrmIdx	@
.L1869:
	mov	r0, r6	@, pH264Ctx
	mov	r1, r7	@, long_term_frame_idx
	mov	r2, r4	@, picNumX
	mov	r3, r5	@, pCurrPic
	bl	MarkPicLTRef	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1868:
	mov	ip, #26624	@ tmp150,
	ldr	r0, [r5, #448]	@ <variable>.frame_num, <variable>.frame_num
	ldr	lr, [r6, ip]	@ D.36295, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ D.36295,
	rsb	r4, r2, r0, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1869	@,
	add	r3, r6, #26368	@ ivtmp.5278, pH264Ctx,
	sub	r2, lr, #1	@ tmp162, D.36295,
	and	ip, r2, #1	@ tmp164, tmp162,
	ldr	r1, [r3, #120]!	@ D.36271, <variable>.DPB.fs_ref
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.36273, <variable>.is_reference
	tst	r2, #1	@ D.36273,
	beq	.L1875	@,
	ldr	r0, [r1, #468]	@ tmp175,
	bic	r0, r0, #-16777216	@ tmp176, tmp175,
	bic	r0, r0, #255	@ tmp176, tmp176,
	cmp	r0, #65536	@ tmp176,
	beq	.L1897	@,
.L1875:
	tst	r2, #2	@ D.36273,
	beq	.L1876	@,
	ldr	r2, [r1, #504]	@ tmp179,
	bic	r0, r2, #-16777216	@ tmp180, tmp179,
	bic	r2, r0, #255	@ tmp180, tmp180,
	cmp	r2, #65536	@ tmp180,
	beq	.L1898	@,
.L1876:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, D.36295
	add	r3, r3, #4	@ ivtmp.5278, ivtmp.5278,
	bcs	.L1869	@,
	cmp	ip, #0	@ tmp164,
	beq	.L1872	@,
	ldr	r1, [r3, #0]	@ D.36271, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.36273, <variable>.is_reference
	tst	r0, #1	@ D.36273,
	bne	.L1887	@,
.L1882:
	tst	r0, #2	@ D.36273,
	beq	.L1883	@,
	ldr	r0, [r1, #504]	@ tmp195,
	bic	ip, r0, #-16777216	@ tmp196, tmp195,
	bic	r0, ip, #255	@ tmp196, tmp196,
	cmp	r0, #65536	@ tmp196,
	beq	.L1899	@,
.L1883:
	add	r2, r2, #1	@ i, tmp165,
	add	r3, r3, #4	@ ivtmp.5278, tmp166,
	cmp	r2, lr	@ i, D.36295
	bcs	.L1869	@,
.L1872:
	ldr	r1, [r3, #0]	@ D.36271, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.36273, <variable>.is_reference
	tst	r0, #1	@ D.36273,
	beq	.L1870	@,
	ldr	ip, [r1, #468]	@ tmp155,
	bic	ip, ip, #-16777216	@ tmp153, tmp155,
	bic	ip, ip, #255	@ tmp153, tmp153,
	cmp	ip, #65536	@ tmp153,
	beq	.L1900	@,
.L1870:
	tst	r0, #2	@ D.36273,
	beq	.L1871	@,
	ldr	r0, [r1, #504]	@ tmp160,
	bic	ip, r0, #-16777216	@ tmp158, tmp160,
	bic	r0, ip, #255	@ tmp158, tmp158,
	cmp	r0, #65536	@ tmp158,
	beq	.L1901	@,
.L1871:
	ldr	r1, [r3, #4]	@ D.36271, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp165, i,
	add	r3, r3, #4	@ tmp166, ivtmp.5278,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.36273, <variable>.is_reference
	tst	r0, #1	@ D.36273,
	beq	.L1882	@,
.L1887:
	ldr	ip, [r1, #468]	@ tmp191,
	bic	ip, ip, #-16777216	@ tmp192, tmp191,
	bic	ip, ip, #255	@ tmp192, tmp192,
	cmp	ip, #65536	@ tmp192,
	bne	.L1882	@,
	ldr	ip, [r1, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1882	@,
.L1888:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #1	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1869	@
.L1899:
	ldr	ip, [r1, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1883	@,
.L1889:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #2	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1869	@
.L1900:
	ldr	ip, [r1, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1870	@,
	b	.L1888	@
.L1901:
	ldr	ip, [r1, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1871	@,
	b	.L1889	@
.L1897:
	ldr	r0, [r1, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r0, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1875	@,
	b	.L1888	@
.L1898:
	ldr	r0, [r1, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1876	@,
	b	.L1889	@
	.fnend
	.size	MarkSTToLTRef, .-MarkSTToLTRef
	.align	2
	.global	UnMarkSTRef
	.type	UnMarkSTRef, %function
UnMarkSTRef:
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
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r0, #0	@ <variable>.structure,
	bne	.L1903	@,
	mov	ip, #26624	@ tmp158,
	ldr	r1, [r1, #448]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, ip]	@ temp.5343, <variable>.DPB.ref_frames_in_buffer
	mvn	r2, r2	@ tmp156, difference_of_pic_nums_minus1
	add	ip, r2, r1	@ picNumX.5344, tmp156, <variable>.frame_num
	cmp	r6, #0	@ temp.5343,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, #26368	@ ivtmp.5317, pH264Ctx,
	sub	r1, r6, #1	@ tmp256, temp.5343,
	and	r4, r1, #1	@ tmp258, tmp256,
	ldr	r1, [r2, #120]!	@ D.36038, <variable>.DPB.fs_ref
	ldr	r0, [r1, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, ip	@ <variable>.frame.pic_num, picNumX.5344
	beq	.L1947	@,
.L1917:
	mov	r0, #1	@ i.5325,
	cmp	r0, r6	@ i.5325, temp.5343
	add	r2, r2, #4	@ ivtmp.5317, ivtmp.5317,
	ldmcsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r4, #0	@ tmp258,
	beq	.L1908	@,
	ldr	r1, [r2, #0]	@ D.36038, <variable>.DPB.fs_ref
	ldr	r4, [r1, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5344
	beq	.L1948	@,
.L1919:
	add	r0, r0, #1	@ i.5325, i.5325,
	add	r2, r2, #4	@ ivtmp.5317, ivtmp.5317,
	cmp	r0, r6	@ i.5325, temp.5343
	bcc	.L1908	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1907:
	ldr	r1, [r2, #4]	@ D.36038, <variable>.DPB.fs_ref
	ldr	r2, [r1, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5344
	beq	.L1949	@,
.L1922:
	add	r0, r0, #1	@ i.5325, tmp259,
	add	r2, r5, #4	@ ivtmp.5317, tmp260,
	cmp	r0, r6	@ i.5325, temp.5343
	bcs	.L1950	@,
.L1908:
	ldr	r1, [r2, #0]	@ D.36038, <variable>.DPB.fs_ref
	add	r0, r0, #1	@ tmp259, i.5325,
	add	r5, r2, #4	@ tmp260, ivtmp.5317,
	ldr	r4, [r1, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5344
	bne	.L1907	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1907	@,
	ldr	r4, [r1, #432]	@ tmp169,
	bic	r4, r4, #-16777216	@ tmp167, tmp169,
	bic	r4, r4, #255	@ tmp167, tmp167,
	cmp	r4, #65536	@ tmp167,
	beq	.L1940	@,
	ldr	r1, [r2, #4]	@ D.36038, <variable>.DPB.fs_ref
	ldr	r2, [r1, #444]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5344
	bne	.L1922	@,
.L1949:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #3	@ <variable>.is_reference,
	bne	.L1922	@,
	ldr	r2, [r1, #432]	@ tmp284,
	bic	r2, r2, #-16777216	@ tmp285, tmp284,
	bic	r2, r2, #255	@ tmp285, tmp285,
	cmp	r2, #65536	@ tmp285,
	beq	.L1940	@,
	add	r0, r0, #1	@ i.5325, tmp259,
	add	r2, r5, #4	@ ivtmp.5317, tmp260,
	cmp	r0, r6	@ i.5325, temp.5343
	bcc	.L1908	@,
.L1950:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1903:
	mov	r0, #26624	@ tmp163,
	ldr	r7, [r1, #448]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, r0]	@ D.36049, <variable>.DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.36049,
	rsb	r7, r2, r7, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r2, r3, #26368	@ ivtmp.5322, pH264Ctx,
	sub	ip, r6, #1	@ tmp261, D.36049,
	and	r5, ip, #1	@ tmp263, tmp261,
	mov	ip, #0	@ i,
	ldr	r0, [r2, #120]!	@ temp.5326, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5327, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5327,
	beq	.L1924	@,
	ldr	r8, [r0, #468]	@ tmp286,
	bic	r8, r8, #-16777216	@ tmp287, tmp286,
	bic	r8, r8, #255	@ tmp287, tmp287,
	cmp	r8, #65536	@ tmp287,
	beq	.L1951	@,
.L1924:
	tst	r1, #2	@ temp.5327,
	beq	.L1925	@,
	ldr	r1, [r0, #504]	@ tmp290,
	bic	r1, r1, #-16777216	@ tmp291, tmp290,
	bic	r1, r1, #255	@ tmp291, tmp291,
	cmp	r1, #65536	@ tmp291,
	beq	.L1952	@,
.L1925:
	mov	ip, #1	@ i,
	cmp	r6, ip	@ D.36049, i
	add	r2, r2, #4	@ ivtmp.5322, ivtmp.5322,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r5, #0	@ tmp263,
	beq	.L1913	@,
	ldr	r0, [r2, #0]	@ temp.5326, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5327, <variable>.is_reference
	ands	r4, r1, ip	@ tmp254, temp.5327,
	beq	.L1927	@,
	ldr	r5, [r0, #468]	@ tmp293,
	bic	r5, r5, #-16777216	@ tmp294, tmp293,
	bic	r5, r5, #255	@ tmp294, tmp294,
	cmp	r5, #65536	@ tmp294,
	beq	.L1953	@,
.L1927:
	tst	r1, #2	@ temp.5327,
	beq	.L1928	@,
	ldr	r1, [r0, #504]	@ tmp297,
	bic	r1, r1, #-16777216	@ tmp298, tmp297,
	bic	r1, r1, #255	@ tmp298, tmp298,
	cmp	r1, #65536	@ tmp298,
	beq	.L1954	@,
.L1928:
	add	ip, ip, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.5322, ivtmp.5322,
	cmp	r6, ip	@ D.36049, i
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	r0, [r2, #0]	@ temp.5326, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5327, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5327,
	bne	.L1955	@,
.L1909:
	tst	r1, #2	@ temp.5327,
	beq	.L1911	@,
	ldr	r1, [r0, #504]	@ tmp215,
	bic	r1, r1, #-16777216	@ tmp213, tmp215,
	bic	r1, r1, #255	@ tmp213, tmp213,
	cmp	r1, #65536	@ tmp213,
	beq	.L1956	@,
.L1911:
	ldr	r0, [r2, #4]	@ temp.5326, <variable>.DPB.fs_ref
	add	ip, ip, #1	@ i, i,
	add	r2, r2, #4	@ tmp265, ivtmp.5322,
	mov	r8, ip	@ tmp264, i
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5327, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5327,
	beq	.L1931	@,
	ldr	r5, [r0, #468]	@ tmp300,
	bic	r5, r5, #-16777216	@ tmp301, tmp300,
	bic	r5, r5, #255	@ tmp301, tmp301,
	cmp	r5, #65536	@ tmp301,
	beq	.L1957	@,
.L1931:
	tst	r1, #2	@ temp.5327,
	beq	.L1932	@,
	ldr	r1, [r0, #504]	@ tmp304,
	bic	r1, r1, #-16777216	@ tmp305, tmp304,
	bic	r1, r1, #255	@ tmp305, tmp305,
	cmp	r1, #65536	@ tmp305,
	beq	.L1958	@,
.L1932:
	add	ip, r8, #1	@ i, tmp264,
	add	r2, r2, #4	@ ivtmp.5322, tmp265,
	cmp	r6, ip	@ D.36049, i
	bls	.L1959	@,
.L1913:
	ldr	r0, [r2, #0]	@ temp.5326, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5327, <variable>.is_reference
	ands	r4, r1, #1	@ tmp254, temp.5327,
	beq	.L1909	@,
.L1955:
	ldr	r5, [r0, #468]	@ tmp174,
	bic	r5, r5, #-16777216	@ tmp172, tmp174,
	bic	r5, r5, #255	@ tmp172, tmp172,
	cmp	r5, #65536	@ tmp172,
	bne	.L1909	@,
	ldr	r5, [r0, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1909	@,
.L1941:
	add	r2, ip, #6592	@ tmp255, i,
	and	r1, r1, #2	@ tmp176, temp.5327,
	add	r2, r2, #30	@ tmp255, tmp255,
	strb	r1, [r0, #2]	@ tmp176, <variable>.is_reference
	mov	r1, #0	@ tmp181,
	ldr	r0, [r3, r2, asl #2]	@ tmp180, <variable>.DPB.fs_ref
	strb	r1, [r0, #470]	@ tmp181, <variable>.top_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5328, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #432]	@ zero_extendqisi2	@ D.36064, <variable>.frame.structure
	cmp	ip, #3	@ D.36064,
	cmpne	ip, r1	@, D.36064,
	bne	.L1912	@,
.L1945:
	strb	r1, [r0, #434]	@ tmp222, <variable>.frame.is_short_term
	ldr	ip, [r3, r2, asl #2]	@ tmp237, <variable>.DPB.fs_ref
	strb	r1, [ip, #433]	@ tmp222, <variable>.frame.is_long_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5304, <variable>.DPB.fs_ref
.L1912:
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	ip, [r0, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	movw	r0, #54168	@ tmp247,
	ldr	lr, [r3, r2, asl #2]	@ tmp251, <variable>.DPB.fs_ref
	mov	r2, r1	@, <variable>.is_reference
	add	ip, ip, #13120	@ tmp243, <variable>.pmv_address_idc,
	ldr	r0, [r3, r0]	@, <variable>.ChanID
	add	ip, ip, #26	@ tmp243, tmp243,
	str	r1, [r3, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1956:
	ldr	r1, [r0, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1911	@,
.L1942:
	add	r2, ip, #6592	@ tmp274, i,
	strb	r4, [r0, #2]	@ tmp254, <variable>.is_reference
	add	r2, r2, #30	@ tmp274, tmp274,
	mov	r1, #0	@ tmp222,
	ldr	r0, [r3, r2, asl #2]	@ tmp221, <variable>.DPB.fs_ref
	strb	r1, [r0, #506]	@ tmp222, <variable>.bottom_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5304, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #432]	@ zero_extendqisi2	@ D.36086, <variable>.frame.structure
	cmp	ip, #3	@ D.36086,
	cmpne	ip, r1	@, D.36086,
	bne	.L1912	@,
	b	.L1945	@
.L1957:
	ldr	r5, [r0, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1931	@,
	b	.L1941	@
.L1958:
	ldr	r1, [r0, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	beq	.L1942	@,
	add	ip, r8, #1	@ i, tmp264,
	add	r2, r2, #4	@ ivtmp.5322, tmp265,
	cmp	r6, ip	@ D.36049, i
	bhi	.L1913	@,
.L1959:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1951:
	ldr	r8, [r0, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r8, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1924	@,
	b	.L1941	@
.L1952:
	ldr	r1, [r0, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1925	@,
	b	.L1942	@
.L1953:
	ldr	r5, [r0, #480]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1927	@,
	b	.L1941	@
.L1954:
	ldr	r1, [r0, #516]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1928	@,
	b	.L1942	@
.L1947:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1917	@,
	ldr	r0, [r1, #432]	@ tmp277,
	bic	r0, r0, #-16777216	@ tmp278, tmp277,
	bic	r0, r0, #255	@ tmp278, tmp278,
	cmp	r0, #65536	@ tmp278,
	bne	.L1917	@,
.L1940:
	mov	r0, r3	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1948:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1919	@,
	ldr	r4, [r1, #432]	@ tmp281,
	bic	r4, r4, #-16777216	@ tmp282, tmp281,
	bic	r4, r4, #255	@ tmp282, tmp282,
	cmp	r4, #65536	@ tmp282,
	bne	.L1919	@,
	b	.L1940	@
	.fnend
	.size	UnMarkSTRef, .-UnMarkSTRef
	.align	2
	.global	ClearAll
	.type	ClearAll, %function
ClearAll:
	.fnstart
.LFB1359:
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
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L1961	@,
	movw	r3, #54168	@ tmp156,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
.L1962:
	add	r7, r5, #27392	@ tmp162, pH264Ctx,
	mov	r2, #0	@,
	add	r9, r7, #88	@ ivtmp.5415, tmp162,
	add	sl, r7, #84	@ ivtmp.5412, tmp162,
	add	r8, r7, #96	@ ivtmp.5413, tmp162,
	add	r7, r7, #92	@ ivtmp.5414, tmp162,
	mov	r6, r2	@ i,
	mov	r4, r2	@ tmp322, i
	str	r2, [fp, #-48]	@, %sfp
.L1967:
	mov	r3, #592	@,
	ldr	r0, [fp, #-48]	@, %sfp
	mul	lr, r3, r6	@ tmp205,, i
	ldr	r1, [sl, #0]	@ temp.5423, <variable>.fs_image.p_usrdat
	add	r2, r5, r0	@ D.48832, pH264Ctx,
	add	ip, r0, r3	@,,
	cmp	r1, #0	@ temp.5423,
	str	ip, [fp, #-48]	@, %sfp
	add	r0, lr, #27136	@ tmp207, tmp205,
	add	ip, r2, #27392	@ tmp204, D.48832,
	add	lr, r2, #27648	@ tmp179, D.48832,
	add	r2, r2, #27136	@ tmp167, D.48832,
	add	r0, r0, #160	@ tmp207, tmp207,
	str	r6, [ip, #68]	@ i, <variable>.fs_image.image_id
	mov	r3, #2	@,
	mov	ip, #1	@,
	strb	r4, [r2, #164]	@ tmp322, <variable>.is_in_dpb
	add	r6, r6, #1	@ i, i,
	strb	r3, [lr, #152]	@, <variable>.bottom_field.structure
	add	r3, r5, r0	@ D.35801, pH264Ctx, tmp207
	strb	r4, [r2, #160]	@ tmp322, <variable>.non_existing
	mov	r0, #1	@,
	strb	r4, [r2, #161]	@ tmp322, <variable>.is_used
	strb	r4, [r2, #162]	@ tmp322, <variable>.is_reference
	mvn	r2, #0	@,
	str	ip, [lr, #212]	@, <variable>.is_displayed
	mov	ip, #16	@,
	str	r2, [lr, #196]	@, <variable>.frame_num_wrap
	mov	r2, #17	@,
	str	r3, [lr, #84]	@ D.35801, <variable>.frame.frame_store
	str	r4, [lr, #200]	@ tmp322, <variable>.long_term_frame_idx
	str	r4, [lr, #192]	@ tmp322, <variable>.frame_num
	str	r4, [lr, #204]	@ tmp322, <variable>.poc
	str	r2, [lr, #228]	@, <variable>.pmv_address_idc
	str	ip, [lr, #232]	@, <variable>.apc_idc
	str	r3, [lr, #156]	@ D.35801, <variable>.bottom_field.frame_store
	str	r3, [lr, #120]	@ D.35801, <variable>.top_field.frame_store
	strb	r4, [lr, #80]	@ tmp322, <variable>.frame.structure
	strb	r0, [lr, #116]	@, <variable>.top_field.structure
	beq	.L1963	@,
	movw	r2, #54168	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [sl, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1963:
	ldr	r1, [r9, #0]	@ temp.5425, <variable>.fs_image.p_usrdat
	add	sl, sl, #592	@ ivtmp.5412, ivtmp.5412,
	cmp	r1, #0	@ temp.5425,
	beq	.L1964	@,
	movw	lr, #54168	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r9, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1964:
	ldr	r1, [r7, #0]	@ temp.5427, <variable>.fs_image.p_usrdat
	add	r9, r9, #592	@ ivtmp.5415, ivtmp.5415,
	cmp	r1, #0	@ temp.5427,
	beq	.L1965	@,
	movw	ip, #54168	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1965:
	ldr	r1, [r8, #0]	@ D.35805, <variable>.fs_image.p_usrdat
	add	r7, r7, #592	@ ivtmp.5414, ivtmp.5414,
	cmp	r1, #0	@ D.35805,
	beq	.L1966	@,
	movw	r3, #54168	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #0]	@ tmp322, <variable>.fs_image.p_usrdat
.L1966:
	cmp	r6, #40	@ i,
	add	r8, r8, #592	@ ivtmp.5413, ivtmp.5413,
	bne	.L1967	@,
	movw	r4, #51164	@ tmp239,
	ldr	r1, [r5, r4]	@ temp.5429, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5429,
	beq	.L1968	@,
	movw	r7, #54168	@ tmp240,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp243,
	str	r1, [r5, r4]	@ tmp243, <variable>.CurrPic.fs_image.p_usrdat
.L1968:
	movw	r4, #51168	@ tmp244,
	ldr	r1, [r5, r4]	@ temp.5431, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5431,
	beq	.L1969	@,
	movw	r2, #54168	@ tmp245,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp248,
	str	r0, [r5, r4]	@ tmp248, <variable>.CurrPic.fs_image.p_usrdat
.L1969:
	movw	r4, #51172	@ tmp249,
	ldr	r1, [r5, r4]	@ temp.5433, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5433,
	beq	.L1970	@,
	movw	lr, #54168	@ tmp250,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp253,
	str	ip, [r5, r4]	@ tmp253, <variable>.CurrPic.fs_image.p_usrdat
.L1970:
	movw	r4, #51176	@ tmp254,
	ldr	r1, [r5, r4]	@ D.35808, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.35808,
	beq	.L1971	@,
	movw	r7, #54168	@ tmp255,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp258,
	str	r3, [r5, r4]	@ tmp258, <variable>.CurrPic.fs_image.p_usrdat
.L1971:
	movw	r7, #52680	@ tmp259,
	ldr	r4, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r4, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1972	@,
	add	r8, r5, #52480	@ ivtmp.5384, pH264Ctx,
	mov	r6, #0	@ i.5422,
	add	r4, r8, #204	@ ivtmp.5384, ivtmp.5384,
	movw	sl, #54168	@ tmp319,
	mov	r8, r6	@ tmp320, i.5422
.L1974:
	ldr	r1, [r4, #0]	@ D.35811, <variable>.pUsrDatArray
	add	r6, r6, #1	@ i.5422, i.5422,
	cmp	r1, #0	@ D.35811,
	beq	.L1973	@,
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp320, <variable>.pUsrDatArray
.L1973:
	ldr	r1, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.5384, ivtmp.5384,
	cmp	r1, r6	@ <variable>.TotalUsrDatNum, i.5422
	bhi	.L1974	@,
.L1972:
	movw	lr, #52680	@ tmp267,
	mov	r4, #0	@ tmp268,
	movw	r3, #52660	@ tmp271,
	str	r4, [r5, lr]	@ tmp268, <variable>.TotalUsrDatNum
	movw	ip, #54092	@ tmp273,
	movw	r2, #54152	@ tmp275,
	movw	lr, #54100	@ tmp277,
	str	r4, [r5, r3]	@ tmp268, <variable>.AllowStartDec
	str	r4, [r5, ip]	@ tmp268, <variable>.SliceParaNum
	movw	r3, #52668	@ tmp279,
	str	r4, [r5, r2]	@ tmp268, <variable>.MaxBytesReceived
	movw	ip, #54176	@ tmp281,
	str	r4, [r5, lr]	@ tmp268, <variable>.IModeOutFlag
	movw	r2, #52672	@ tmp283,
	movw	lr, #26372	@ tmp286,
	str	r4, [r5, r3]	@ tmp268, <variable>.IDRFound
	str	r4, [r5, ip]	@ tmp268, <variable>.FirstFrameDisplayed
	movw	r3, #24368	@ tmp288,
	str	r4, [r5, r2]	@ tmp268, <variable>.PPicFound
	movw	ip, #22364	@ tmp291,
	str	r4, [r5, lr]	@ tmp268, <variable>.CurrMarkIdx
	movw	r2, #24369	@ tmp294,
	movw	lr, #22365	@ tmp297,
	add	r0, r5, #20480	@, pH264Ctx,
	movw	r1, #54144	@ tmp269,
	add	r0, r0, #192	@,,
	str	r4, [r5, r1]	@ tmp268, <variable>.IDRPicOfCurrPic
	mov	r1, #1648	@,
	strb	r4, [r5, r3]	@ tmp268, <variable>.is_valid
	strb	r4, [r5, r2]	@ tmp268, <variable>.no_output_of_prior_pics_flag
	strb	r4, [r5, ip]	@ tmp268, <variable>.is_valid
	strb	r4, [r5, lr]	@ tmp268, <variable>.no_output_of_prior_pics_flag
	str	r4, [r5, #368]	@ tmp268, <variable>.pCurrNal
	bl	__memzero	@
	movw	r3, #50976	@ tmp308,
	movw	ip, #20672	@ tmp302,
	strb	r4, [r5, r3]	@ tmp268, <variable>.CurrPic.state
	movw	r0, #52004	@ tmp316,
	movw	r1, #52000	@ tmp311,
	mov	r2, #2	@ tmp303,
	movw	r3, #20677	@ tmp305,
	strb	r2, [r5, ip]	@ tmp303, <variable>.CurrSlice.slice_type
	movw	ip, #52008	@ tmp314,
	str	r4, [r5, r0]	@ tmp268, <variable>.PrevPic.nal_ref_idc
	mov	r2, #256	@ tmp315,
	strb	r4, [r5, r1]	@ tmp268, <variable>.PrevPic.structure
	mov	r0, r4	@, tmp268
	mov	r1, #1	@ tmp306,
	str	r2, [r5, ip]	@ tmp315, <variable>.PrevPic.frame_num
	strb	r1, [r5, r3]	@ tmp306, <variable>.CurrSlice.new_pic_flag
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1961:
	add	r0, r5, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	movw	r1, #54168	@ tmp160,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	FSP_EmptyInstance	@
	b	.L1962	@
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
.LFB1488:
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
	movw	r3, #52652	@ tmp157,
	ldr	r3, [r0, r3]	@ D.43698, <variable>.TotalFsNum
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ D.43698,
	beq	.L1979	@,
	add	r6, r0, #27136	@ ivtmp.5482, pH264Ctx,
	add	sl, r0, #26368	@ ivtmp.5474, pH264Ctx,
	add	r6, r6, #161	@ ivtmp.5482, ivtmp.5482,
	add	sl, sl, #60	@ ivtmp.5474, ivtmp.5474,
	mov	r7, #0	@ i,
	movw	r9, #26424	@ tmp214,
	mov	r8, r6	@ ivtmp.5479, ivtmp.5482
.L1986:
	ldrb	r0, [r8, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1980	@,
	mov	r2, #592	@,
	mul	lr, r2, r7	@ tmp160,, i
	add	r1, lr, #27136	@ tmp162, tmp160,
	add	ip, r1, #160	@ tmp162, tmp162,
	adds	ip, r4, ip	@ D.43708, pH264Ctx, tmp162
	beq	.L1981	@,
	movw	r1, #26620	@,
	ldr	lr, [r4, r1]	@ D.43930, <variable>.DPB.used_size
	cmp	lr, #0	@ D.43930,
	beq	.L1981	@,
	ldr	r2, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r2	@ D.43708, <variable>.DPB.fs
	beq	.L1980	@,
	tst	lr, #1	@ D.43930,
	mov	r1, sl	@ ivtmp.5474, ivtmp.5474
	bne	.L1982	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.43930
	bcs	.L1981	@,
	mov	r1, sl	@ ivtmp.5474, ivtmp.5474
	ldr	r2, [r1], #4	@ D.43931, <variable>.DPB.fs
	cmp	ip, r2	@ D.43708, D.43931
	bne	.L1982	@,
	b	.L1980	@
.L1983:
	ldr	r5, [r2], #4	@ D.43931, <variable>.DPB.fs
	cmp	ip, r5	@ D.43708, D.43931
	beq	.L1980	@,
	ldr	r5, [r1, #4]	@ D.43931, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5474, tmp226,
	cmp	ip, r5	@ D.43708, D.43931
	beq	.L1980	@,
.L1982:
	add	r0, r0, #1	@ tmp227, i,
	mov	r2, r1	@ tmp226, ivtmp.5474
	cmp	r0, lr	@ tmp227, D.43930
	add	r0, r0, #1	@ i, tmp227,
	bcc	.L1983	@,
.L1981:
	movw	r5, #54168	@ tmp168,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L1979	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L2014	@,
.L1984:
	mov	r0, #0	@ D.43701,
	b	.L1985	@
.L1980:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #592	@ ivtmp.5479, ivtmp.5479,
	cmp	r3, r7	@ D.43698, i
	bhi	.L1986	@,
	sub	r2, fp, #52	@,,
	add	r0, r4, #8	@, pH264Ctx,
	sub	r1, fp, #48	@,,
	movw	r7, #52652	@ tmp178,
	bl	GetQueueImgNum	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r3, #0	@ <variable>.TotalFsNum,
	beq	.L1987	@,
	add	r8, r4, #26368	@, pH264Ctx,
	add	r5, r8, #60	@,,
	movw	r8, #26424	@ tmp207,
	str	r5, [fp, #-56]	@, %sfp
	mov	r5, #0	@ i.5489,
.L1993:
	mov	lr, #592	@,
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ temp.5487, <variable>.is_used
	mul	r0, lr, r5	@ tmp180,, i.5489
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ D.43724, <variable>.is_in_dpb
	add	r1, r0, #27136	@ tmp182, tmp180,
	add	ip, r1, #160	@ tmp182, tmp182,
	adds	ip, r4, ip	@ temp.5488, pH264Ctx, tmp182
	beq	.L1988	@,
	movw	r2, #26620	@,
	ldr	r9, [r4, r2]	@ D.43937, <variable>.DPB.used_size
	cmp	r9, #0	@ D.43937,
	beq	.L1988	@,
	ldr	r1, [r4, r8]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r1	@ temp.5488, <variable>.DPB.fs
	beq	.L1989	@,
	tst	r9, #1	@ D.43937,
	ldr	r1, [fp, #-56]	@ ivtmp.5463, %sfp
	mov	r0, #0	@ i,
	bne	.L1990	@,
	mov	r0, #1	@ i,
	cmp	r0, r9	@ i, D.43937
	bcs	.L1988	@,
	ldr	r1, [fp, #-56]	@ ivtmp.5463, %sfp
	ldr	r2, [r1], #4	@ D.43938, <variable>.DPB.fs
	cmp	ip, r2	@ temp.5488, D.43938
	bne	.L1990	@,
	b	.L1989	@
.L1991:
	ldr	sl, [r2], #4	@ D.43938, <variable>.DPB.fs
	cmp	ip, sl	@ temp.5488, D.43938
	beq	.L1989	@,
	ldr	sl, [r1, #4]	@ D.43938, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5463, tmp221,
	cmp	ip, sl	@ temp.5488, D.43938
	beq	.L1989	@,
.L1990:
	add	r0, r0, #1	@ tmp222, i,
	mov	r2, r1	@ tmp221, ivtmp.5463
	cmp	r0, r9	@ tmp222, D.43937
	add	r0, r0, #1	@ i, tmp222,
	bcc	.L1991	@,
.L1988:
	mov	ip, #1	@ D.43936,
.L1992:
	mov	r2, r5	@, i.5489
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	str	lr, [sp, #0]	@ D.43724,
	add	r5, r5, #1	@ i.5489, i.5489,
	str	ip, [sp, #4]	@ D.43936,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r6, r6, #592	@ ivtmp.5482, ivtmp.5482,
	cmp	r3, r5	@ <variable>.TotalFsNum, i.5489
	bhi	.L1993	@,
.L1987:
	ldr	r2, [fp, #-48]	@, ReadImgNum
	mov	r0, #0	@,
	ldr	r3, [fp, #-52]	@, NewImgNum
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	movw	r1, #52652	@ tmp196,
	ldr	r0, [r4, r1]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	movw	r2, #26620	@ tmp199,
	ldr	r3, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r1, [fp, #-52]	@ NewImgNum, NewImgNum
	sub	ip, r0, #2	@ tmp197, <variable>.TotalFsNum,
	ldr	r2, [fp, #-48]	@ ReadImgNum, ReadImgNum
	rsb	r0, r3, ip	@ tmp200, <variable>.DPB.used_size, tmp197
	add	ip, r1, r2	@ tmp193, NewImgNum, ReadImgNum
	cmp	ip, r0	@ tmp193, tmp200
	bge	.L1984	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.43701,
	b	.L1985	@
.L1979:
	mov	r0, #1	@ D.43701,
.L1985:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1989:
	mov	ip, #0	@ D.43936,
	b	.L1992	@
.L2014:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #8	@, pH264Ctx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.43701,
	b	.L1985	@
	.fnend
	.size	H264DEC_GetImageBuffer, .-H264DEC_GetImageBuffer
	.align	2
	.global	H264DEC_Init
	.type	H264DEC_Init, %function
H264DEC_Init:
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
	ldr	r6, [r0, #352]	@ D.43440, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #54208	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pH264Ctx,
	str	r6, [r4, #352]	@ D.43440, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r0, #0	@ tmp148,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	r0, [r4, #364]	@ tmp148, <variable>.StartMode
	str	r0, [r4, #360]	@ tmp148, <variable>.pH264DecParam
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L2025	@,
	movw	r0, #13572	@ tmp157,
	movw	ip, #13576	@ tmp159,
	mov	r2, #13568	@ tmp161,
	mov	lr, #32	@ tmp158,
	mov	r1, #256	@ tmp160,
	mov	r6, #136	@ tmp162,
	str	lr, [r4, r0]	@ tmp158, <variable>.MaxSpsNum
	str	r1, [r4, ip]	@ tmp160, <variable>.MaxPpsNum
	str	r6, [r4, r2]	@ tmp162, <variable>.MaxSliceNum
.L2017:
	ldr	r0, [r5, #424]	@, <variable>.s32ContextMemAddr
	movw	r6, #13584	@ tmp171,
	bl	MEM_Phy2Vir	@
	movw	r2, #13572	@ tmp167,
	ldr	r1, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	ip, #3992	@ tmp170,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #13576	@ tmp173,
	ldr	r3, [r4, r3]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	mul	r1, ip, r1	@ tmp168, tmp170, <variable>.MaxSpsNum
	ldr	r2, [r2, #420]	@ <variable>.s32BasicCtxSize, <variable>.s32BasicCtxSize
	movw	ip, #13580	@ tmp166,
	add	r0, r0, r2	@ D.43461,, <variable>.s32BasicCtxSize
	str	r0, [r4, ip]	@ D.43461, <variable>.SPS
	add	ip, r0, r1	@ prephitmp.5524, D.43461, tmp168
	mov	r2, #2208	@ tmp176,
	str	ip, [r4, r6]	@ prephitmp.5524, <variable>.PPS
	mla	lr, r2, r3, ip	@ tmp177, tmp176, <variable>.MaxPpsNum, prephitmp.5524
	movw	r2, #54088	@ tmp172,
	str	lr, [r4, r2]	@ tmp177, <variable>.DecSlicePara
	ldr	r2, [r5, #444]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r2, #0	@ <variable>.s32KeepSPSPPS,
	bne	.L2019	@,
	cmp	r1, #0	@ tmp168,
	bne	.L2026	@,
	movw	r5, #13576	@ tmp184,
	mov	r0, #2208	@ tmp185,
	ldr	r3, [r4, r5]	@ prephitmp.5522, <variable>.MaxPpsNum
	mul	r1, r0, r3	@ __n, tmp185, prephitmp.5522
	cmp	r1, #0	@ __n,
	bne	.L2027	@,
.L2019:
	mov	lr, #13568	@ tmp192,
	movw	r5, #4060	@ tmp194,
	ldr	r1, [r4, lr]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	movw	r2, #13572	@ tmp189,
	ldr	lr, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	r0, #17604	@ tmp187,
	movw	ip, #14332	@ tmp188,
	str	r3, [r4, r0]	@ prephitmp.5522, <variable>.CurrPPS.pic_parameter_set_id
	mul	r1, r5, r1	@ __n, tmp194, <variable>.MaxSliceNum
	movw	r5, #54088	@ tmp191,
	str	lr, [r4, ip]	@ <variable>.MaxSpsNum, <variable>.CurrSPS.seq_parameter_set_id
	ldr	r0, [r4, r5]	@ __p, <variable>.DecSlicePara
	cmp	r1, #0	@ __n,
	bne	.L2028	@,
.L2021:
	movw	ip, #54156	@ tmp196,
	movw	lr, #54096	@ tmp195,
	ldr	r2, [r4, ip]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	movw	r1, #54112	@ tmp200,
	movw	r3, #52652	@ tmp216,
	movw	r0, #54116	@ tmp202,
	ubfx	r5, r2, #16, #2	@ tmp199, <variable>.advanced_cfg,,
	mov	ip, #40	@ tmp217,
	str	r5, [r4, lr]	@ tmp199, <variable>.OldDecMode
	mov	r5, #0	@ tmp201,
	str	ip, [r4, r3]	@ tmp217, <variable>.TotalFsNum
	movw	lr, #52656	@ tmp218,
	str	r5, [r4, r1]	@ tmp201, <variable>.TotalNal
	movw	ip, #54120	@ tmp204,
	movw	r1, #52676	@ tmp240,
	str	r5, [r4, r0]	@ tmp201, <variable>.TotalSPS
	mov	r2, #17	@ tmp219,
	mov	r0, #25	@ tmp241,
	str	r2, [r4, lr]	@ tmp219, <variable>.TotalPmvNum
	movw	r3, #54124	@ tmp206,
	str	r0, [r4, r1]	@ tmp241, <variable>.frame_rate
	movw	lr, #54128	@ tmp208,
	str	r5, [r4, ip]	@ tmp201, <variable>.TotalPPS
	movw	r2, #54132	@ tmp210,
	movw	r1, #54136	@ tmp212,
	movw	ip, #54140	@ tmp214,
	str	r5, [r4, r3]	@ tmp201, <variable>.TotalSlice
	movw	r3, #54104	@ tmp220,
	str	r5, [r4, lr]	@ tmp201, <variable>.SeqCnt
	movw	lr, #52680	@ tmp222,
	str	r5, [r4, r2]	@ tmp201, <variable>.TotalPicNum
	movw	r2, #52684	@ tmp224,
	str	r5, [r4, r1]	@ tmp201, <variable>.TotalFrameNum
	movw	r1, #52688	@ tmp226,
	str	r5, [r4, ip]	@ tmp201, <variable>.TotalFieldNum
	movw	ip, #52692	@ tmp228,
	str	r5, [r4, r2]	@ tmp201, <variable>.pUsrDatArray
	movw	r2, #52668	@ tmp234,
	str	r5, [r4, r1]	@ tmp201, <variable>.pUsrDatArray
	movw	r1, #54176	@ tmp236,
	str	r5, [r4, ip]	@ tmp201, <variable>.pUsrDatArray
	movw	ip, #52672	@ tmp238,
	str	r5, [r4, r3]	@ tmp201, <variable>.MutexHold
	movw	r3, #52696	@ tmp230,
	str	r5, [r4, lr]	@ tmp201, <variable>.TotalUsrDatNum
	movw	lr, #52660	@ tmp232,
	str	r5, [r4, r3]	@ tmp201, <variable>.pUsrDatArray
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, lr]	@ tmp201, <variable>.AllowStartDec
	str	r5, [r4, r2]	@ tmp201, <variable>.IDRFound
	str	r5, [r4, r1]	@ tmp201, <variable>.FirstFrameDisplayed
	str	r5, [r4, ip]	@ tmp201, <variable>.PPicFound
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #54168	@ tmp242,
	cmn	r0, #1	@ D.43499,
	str	r0, [r4, r3]	@ D.43499, <variable>.ChanID
	beq	.L2029	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp201
	bl	ClearAll	@
	mov	r0, #1	@ D.43504,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2028:
	bl	__memzero	@
	b	.L2021	@
.L2025:
	ldr	r0, [r5, #484]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.stChanOption.s32MaxSpsNum
	movw	r3, #13572	@ tmp151,
	movw	lr, #13576	@ tmp153,
	mov	r1, #13568	@ tmp155,
	str	r0, [r4, r3]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.MaxSpsNum
	ldr	ip, [r5, #488]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.stChanOption.s32MaxPpsNum
	str	ip, [r4, lr]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.MaxPpsNum
	ldr	r2, [r5, #480]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.stChanOption.s32MaxSliceNum
	str	r2, [r4, r1]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.MaxSliceNum
	b	.L2017	@
.L2027:
	mov	r0, ip	@, prephitmp.5524
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5522, <variable>.MaxPpsNum
	b	.L2019	@
.L2026:
	movw	r5, #13576	@ tmp184,
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5522, <variable>.MaxPpsNum
	mov	r0, #2208	@ tmp185,
	ldr	ip, [r4, r6]	@ prephitmp.5524, <variable>.PPS
	mul	r1, r0, r3	@ __n, tmp185, prephitmp.5522
	cmp	r1, #0	@ __n,
	beq	.L2019	@,
	b	.L2027	@
.L2029:
	mov	r0, r5	@, tmp201
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.43504,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
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
	movw	r3, #20673	@ tmp160,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	str	r1, [fp, #-52]	@ IsDecGap, %sfp
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L2071	@,
	movw	r0, #20674	@ tmp162,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@,
	moveq	r3, #1	@,
.L2071:
	movw	r5, #54096	@ tmp164,
	str	r3, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r5]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	movweq	r1, #50977	@ tmp166,
	moveq	r2, #0	@ tmp167,
	streqb	r2, [r4, r1]	@ tmp167, <variable>.CurrPic.field_pair_flag
	beq	.L2035	@,
	ldr	r3, [fp, #-48]	@, %sfp
	movw	ip, #50977	@ tmp169,
	mov	r2, #0	@ tmp170,
	strb	r2, [r4, ip]	@ tmp170, <variable>.CurrPic.field_pair_flag
	cmp	r3, #2	@,
	beq	.L2074	@,
	ldr	r5, [fp, #-48]	@, %sfp
	cmp	r5, #1	@,
	beq	.L2075	@,
.L2035:
	movw	r3, #52652	@ tmp211,
	mov	r5, #0	@ tmp209,
	ldr	r7, [r4, r3]	@ D.39220, <variable>.TotalFsNum
	movw	lr, #50976	@ tmp208,
	strb	r5, [r4, lr]	@ tmp209, <variable>.CurrPic.state
	cmp	r7, r5	@ D.39220,
	beq	.L2044	@,
	add	r6, r4, #27136	@ ivtmp.5579, pH264Ctx,
	add	r8, r4, #26368	@ ivtmp.5574, pH264Ctx,
	add	r6, r6, #161	@ ivtmp.5579, ivtmp.5579,
	add	r8, r8, #60	@ ivtmp.5574, ivtmp.5574,
	mov	sl, #592	@ tmp363,
	movw	r9, #26424	@ tmp365,
.L2050:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L2045	@,
	mul	r2, sl, r5	@ tmp214, tmp363, i
	add	r1, r2, #27136	@ tmp216, tmp214,
	add	ip, r1, #160	@ tmp216, tmp216,
	adds	r3, r4, ip	@ D.39216, pH264Ctx, tmp216
	beq	.L2046	@,
	movw	ip, #26620	@,
	ldr	lr, [r4, ip]	@ D.43944, <variable>.DPB.used_size
	cmp	lr, #0	@ D.43944,
	beq	.L2046	@,
	ldr	r1, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r3, r1	@ D.39216, <variable>.DPB.fs
	beq	.L2045	@,
	tst	lr, #1	@ D.43944,
	mov	r1, r8	@ ivtmp.5574, ivtmp.5574
	bne	.L2047	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.43944
	bcs	.L2046	@,
	mov	r1, r8	@ ivtmp.5574, ivtmp.5574
	ldr	ip, [r1], #4	@ D.43945, <variable>.DPB.fs
	cmp	r3, ip	@ D.39216, D.43945
	bne	.L2047	@,
	b	.L2045	@
.L2048:
	ldr	ip, [r2], #4	@ D.43945, <variable>.DPB.fs
	cmp	r3, ip	@ D.39216, D.43945
	beq	.L2045	@,
	ldr	ip, [r1, #4]	@ D.43945, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5574, tmp372,
	cmp	r3, ip	@ D.39216, D.43945
	beq	.L2045	@,
.L2047:
	add	r0, r0, #1	@ tmp373, i,
	mov	r2, r1	@ tmp372, ivtmp.5574
	cmp	r0, lr	@ tmp373, D.43944
	add	r0, r0, #1	@ i, tmp373,
	bcc	.L2048	@,
.L2046:
	mov	r8, #592	@ tmp232,
	add	sl, r4, #50944	@ tmp362, pH264Ctx,
	mla	r2, r8, r5, r4	@ tmp233, tmp232, i, pH264Ctx
	add	r8, sl, #48	@ tmp362, tmp362,
	movw	r6, #51416	@ tmp225,
	movw	sl, #50976	@ tmp222,
	movw	r9, #51460	@ tmp227,
	mov	r5, #0	@ tmp226,
	add	r7, r2, #27136	@, tmp233,
	str	r3, [r4, r6]	@ D.39216, <variable>.CurrPic.frame_store
	add	r1, r7, #168	@,,
	mov	lr, #101	@ tmp228,
	mov	r7, #1	@ tmp223,
	mov	r2, #424	@,
	strb	r7, [r4, sl]	@ tmp223, <variable>.CurrPic.state
	mov	r0, r8	@, tmp362
	str	r5, [r3, #576]	@ tmp226, <variable>.err_level
	str	lr, [r4, r9]	@ tmp228, <variable>.CurrPic.err_level
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r0, #51152	@ tmp239,
	str	r5, [r4, r0]	@ tmp226, <variable>.CurrPic.fs_image.error_level
	strb	r5, [ip, #3]	@ tmp226, <variable>.mode_skip_flag
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r1, #564]	@ tmp226, <variable>.is_displayed
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r5, [r2, #2]	@ tmp226, <variable>.is_reference
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r7, [r3, #4]	@ tmp223, <variable>.is_in_dpb
	ldr	r9, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r9, #560]	@ tmp226, <variable>.eFoState
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	cmp	r9, r7	@ <variable>.CurrPic.state,
	bne	.L2044	@,
	ldr	r3, [fp, #-52]	@, %sfp
	movw	r5, #54168	@ tmp262,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	rsbs	r1, r3, #1	@,
	movcc	r1, #0	@
	bl	FSP_NewLogicFs	@
	mov	r7, r0	@ LogicFsID,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r7	@, LogicFsID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ tmp276, pstLFs,
	movne	r3, #1	@ tmp276
	cmp	r7, #0	@ LogicFsID,
	mov	r5, r0	@ pstLFs,
	movlt	r3, #0	@, tmp276,
	cmp	r3, #0	@ tmp276,
	beq	.L2052	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L2076	@,
.L2053:
	movw	r6, #51416	@ tmp290,
	add	r1, r5, #8	@, pstLFs,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #424	@,
	add	r0, lr, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r8	@, tmp362
	mov	r2, #424	@,
	add	r1, ip, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r7	@ prephitmp.5560, LogicFsID
	str	r7, [r3, #540]	@ LogicFsID, <variable>.logic_fs_id
	ldrsb	r1, [r5, #4]	@ <variable>.PmvIdc, <variable>.PmvIdc
	movw	r5, #51484	@ tmp309,
	str	r1, [r4, r5]	@ <variable>.PmvIdc, <variable>.CurrPic.pmv_address_idc
.L2054:
	movw	r5, #20673	@ tmp322,
	ldr	r1, [fp, #-48]	@, %sfp
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #51416	@ tmp321,
	ldr	r5, [r4, r2]	@ temp.5598, <variable>.CurrPic.frame_store
	movw	r0, #50979	@ tmp319,
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	uxtb	r2, r1	@ D.39273,
	movw	r1, #50977	@ tmp325,
	strb	r2, [r4, r0]	@ D.39273, <variable>.CurrPic.structure
	movne	r3, #3	@, iftmp.608,
	strb	r3, [r5, #432]	@ iftmp.608, <variable>.frame.structure
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r0, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2077	@,
	ldr	r1, [fp, #-48]	@, %sfp
	movw	r0, #20692	@ tmp346,
	movw	r3, #20704	@ tmp349,
	ldr	r5, [r4, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r3, #54184	@ tmp352,
	cmp	r1, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r3, #52000	@ tmp343,
	strb	r2, [r4, r3]	@ D.39273, <variable>.PrevPic.structure
	movw	r3, #52008	@ tmp345,
	str	r5, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r3, #52004	@ tmp348,
	str	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r3, #52016	@ tmp351,
	str	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r3, #52020	@ tmp354,
	str	ip, [r4, r3]	@ prephitmp.5560, <variable>.PrevPic.image_id
	movne	r0, #0	@ D.39226,
	ldreq	r0, [fp, #-48]	@ D.39226, %sfp
	movwne	r3, #52024	@ tmp355,
	movweq	r3, #52024	@ tmp358,
	movne	r2, #1	@ tmp356,
	strneb	r2, [r4, r3]	@ tmp356, <variable>.PrevPic.FrameStoreFlag
	streqb	r0, [r4, r3]	@ D.39226, <variable>.PrevPic.FrameStoreFlag
.L2051:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2045:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #592	@ ivtmp.5579, ivtmp.5579,
	cmp	r7, r5	@ D.39220, i
	bhi	.L2050	@,
.L2044:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.39226,
	b	.L2051	@
.L2074:
	movw	r1, #52000	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r0, #1	@ <variable>.PrevPic.structure,
	bne	.L2035	@,
	b	.L2037	@
.L2075:
	movw	ip, #52000	@ tmp174,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r2, #2	@ <variable>.PrevPic.structure,
	bne	.L2035	@,
.L2037:
	movw	r0, #54096	@ tmp176,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L2038	@,
	movw	ip, #52008	@ tmp178,
	movw	r2, #20692	@ tmp179,
	ldr	r1, [r4, ip]	@ <variable>.PrevPic.frame_num, <variable>.PrevPic.frame_num
	ldr	r5, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r1, r5	@ <variable>.PrevPic.frame_num, <variable>.CurrSlice.frame_num
	bne	.L2035	@,
.L2038:
	movw	r0, #20704	@ tmp182,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L2039	@,
	movw	r5, #52004	@ tmp184,
	ldr	r1, [r4, r5]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.PrevPic.nal_ref_idc,
	bne	.L2035	@,
.L2040:
	movw	r2, #54184	@ tmp188,
	sub	r5, r2, #4	@ tmp189, tmp189,
	ldr	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	ldr	r0, [r4, r5]	@ <variable>.PrevStorePicCounter, <variable>.PrevStorePicCounter
	rsb	r3, r0, r1	@ tmp190, <variable>.PrevStorePicCounter, <variable>.PicCounter
	cmp	r3, #2	@ tmp190,
	bhi	.L2035	@,
	movw	ip, #51416	@ tmp196,
	movw	r3, #50977	@ tmp193,
	ldr	r2, [r4, ip]	@ D.39192, <variable>.CurrPic.frame_store
	mov	r1, #1	@ tmp194,
	strb	r1, [r4, r3]	@ tmp194, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ D.39192,
	beq	.L2041	@,
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r0, #2	@,
	beq	.L2078	@,
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r1, #1	@,
	beq	.L2079	@,
.L2043:
	mov	ip, #0	@ prephitmp.5560,
	b	.L2054	@
.L2077:
	movw	r1, #20692	@ tmp331,
	movw	r3, #20704	@ tmp334,
	ldr	r5, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r2, #54184	@ tmp337,
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r3, #0	@ tmp328,
	ldr	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r2, #52008	@ tmp330,
	str	r5, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r2, #52004	@ tmp333,
	str	r0, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r2, #52016	@ tmp336,
	str	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r2, #52020	@ tmp339,
	str	ip, [r4, r2]	@ prephitmp.5560, <variable>.PrevPic.image_id
	movw	r1, #52024	@ tmp340,
	movw	ip, #52000	@ tmp327,
	mov	r0, r3	@ D.39226, tmp328
	strb	r3, [r4, r1]	@ tmp328, <variable>.PrevPic.FrameStoreFlag
	strb	r3, [r4, ip]	@ tmp328, <variable>.PrevPic.structure
	b	.L2051	@
.L2076:
	ldr	r6, [r0, #160]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	movw	r0, #13564	@ tmp279,
	ldr	r3, [r4, r0]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	movw	r2, #13560	@ tmp282,
	ldr	ip, [r4, r2]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	r0, [r5, #92]	@ <variable>.stDispImg.luma_phy_addr, <variable>.stDispImg.luma_phy_addr
	mov	r1, r3, asl #4	@ HeightAligh, <variable>.CurHeightInMb,
	str	r1, [r5, #136]	@ HeightAligh, <variable>.stDispImg.image_height
	mov	lr, ip, asl #4	@ tmp284, <variable>.CurWidthInMb,
	str	lr, [r5, #132]	@ tmp284, <variable>.stDispImg.image_width
	mul	r6, r6, r1	@ ChromOffset, <variable>.stDispImg.image_stride, HeightAligh
	add	r0, r6, r0	@ D.39247, ChromOffset, <variable>.stDispImg.luma_phy_addr
	str	r0, [r5, #96]	@ D.39247, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #108]	@ <variable>.stDispImg.luma_2d_phy_addr, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r1, [r5, #76]	@ <variable>.stDispImg.top_luma_phy_addr, <variable>.stDispImg.top_luma_phy_addr
	add	ip, r6, r3	@ D.39261, ChromOffset, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r2, [r5, #160]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	add	r6, r6, r1	@ D.39254, ChromOffset, <variable>.stDispImg.top_luma_phy_addr
	str	ip, [r5, #112]	@ D.39261, <variable>.stDispImg.chrom_2d_phy_addr
	add	r2, r6, r2	@ tmp288, D.39254, <variable>.stDispImg.image_stride
	str	r6, [r5, #80]	@ D.39254, <variable>.stDispImg.top_chrom_phy_addr
	str	r2, [r5, #88]	@ tmp288, <variable>.stDispImg.btm_chrom_phy_addr
	str	r0, [r5, #44]	@, <variable>.stDispImg.chrom_vir_addr
	mov	r0, ip	@, D.39261
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #60]	@, <variable>.stDispImg.chrom_2d_vir_addr
	b	.L2053	@
.L2039:
	movw	ip, #52004	@ tmp186,
	ldr	r2, [r4, ip]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r2, #0	@ <variable>.PrevPic.nal_ref_idc,
	beq	.L2035	@,
	b	.L2040	@
.L2079:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r2, #2	@ <variable>.is_used,
	beq	.L2043	@,
.L2072:
	mov	r7, #0	@ tmp203,
	strb	r7, [r4, r3]	@ tmp203, <variable>.CurrPic.field_pair_flag
	b	.L2035	@
.L2052:
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r3	@, tmp276
	strb	r3, [r4, sl]	@ tmp276, <variable>.CurrPic.state
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	strb	r3, [r2, #4]	@ tmp276, <variable>.is_in_dpb
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, <variable>.CurrPic.state
	bl	ClearAll	@
	mvn	r0, #0	@ D.39226,
	b	.L2051	@
.L2078:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, r1	@ <variable>.is_used,
	bne	.L2072	@,
	mov	ip, #0	@ prephitmp.5560,
	b	.L2054	@
.L2041:
	strb	r2, [r4, r3]	@ D.39192, <variable>.CurrPic.field_pair_flag
	b	.L2035	@
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
	.align	2
	.global	OutputFrmToVO
	.type	OutputFrmToVO, %function
OutputFrmToVO:
	.fnstart
.LFB1383:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r5, r1	@ pFrameStore, pFrameStore
	mov	r7, r2	@ is_last_frame, is_last_frame
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L2081	@,
	movw	r2, #54096	@ tmp149,
	ldr	r1, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	beq	.L2081	@,
	movw	r3, #52032	@ tmp151,
	ldr	r2, [r4, r3]	@ D.36700, <variable>.pDirectOutBuf
	cmp	r2, #0	@ D.36700,
	beq	.L2082	@,
	mov	r0, #1	@ D.36703,
	mov	ip, #0	@ tmp152,
	strb	ip, [r2, #1]	@ tmp152, <variable>.is_used
	str	ip, [r4, r3]	@ tmp152, <variable>.pDirectOutBuf
.L2083:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L2081:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L2082	@,
	movw	r6, #52032	@ tmp156,
	ldr	r1, [r4, r6]	@ temp.5638, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5638,
	beq	.L2084	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5640,
	beq	.L2095	@,
	cmn	r3, #3	@ ret.5640,
	beq	.L2088	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movw	r2, #1741	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #164]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L2088:
	movw	lr, #52032	@ tmp207,
	mov	r0, #0	@ tmp208,
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #1]	@ tmp208, <variable>.is_used
	ldr	r1, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r5	@ <variable>.pDirectOutBuf, pFrameStore
	streq	r0, [r4, lr]	@ tmp208, <variable>.pDirectOutBuf
	strne	r0, [r4, lr]	@ tmp208, <variable>.pDirectOutBuf
	beq	.L2083	@,
.L2090:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5655,
	beq	.L2096	@,
	cmn	r3, #3	@ ret.5655,
	beq	.L2082	@,
	movw	r2, #1791	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r5, #164]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.36703,
	b	.L2083	@
.L2084:
	cmp	r5, #0	@ pFrameStore,
	bne	.L2090	@,
.L2082:
	mov	r0, #1	@ D.36703,
	b	.L2083	@
.L2095:
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r8, #54168	@ tmp159,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r6, #54168	@ tmp179,
	mov	r1, #0	@,
	cmp	r7, #1	@ is_last_frame,
	cmpeq	r3, r5	@, <variable>.pDirectOutBuf, pFrameStore
	mov	r2, r4	@, pH264Ctx
	moveq	r3, #1	@ tmp178,
	mov	r8, r0	@ pstLogicFsImage,
	streq	r3, [r0, #196]	@ tmp178, <variable>.last_frame
	add	r3, r4, #8	@, pH264Ctx,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	str	r8, [sp, #0]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5647,
	bne	.L2097	@,
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r2, #54200	@ tmp194,
	movw	r3, #54192	@ tmp198,
	ldr	r0, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	add	ip, r0, #1	@ tmp197, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp197, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp201, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp201, <variable>.PicOutCounter
	b	.L2088	@
.L2096:
	movw	r6, #54168	@ tmp216,
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #1	@ is_last_frame,
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	streq	r7, [r0, #196]	@ is_last_frame, <variable>.last_frame
	movw	r7, #54168	@ tmp223,
	mov	r6, r0	@ pstLogicFsImage.5659,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	str	r6, [sp, #0]	@ pstLogicFsImage.5659,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5662,
	bne	.L2098	@,
	mov	r1, r6	@, pstLogicFsImage.5659
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r2, #54200	@ tmp230,
	movw	r3, #54192	@ tmp234,
	ldr	ip, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r0, #0	@ D.36703,
	add	ip, ip, #1	@ tmp233, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp233, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp237, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp237, <variable>.PicOutCounter
	b	.L2083	@
.L2098:
	mov	r2, r0	@, ret.5662
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.36703,
	b	.L2083	@
.L2097:
	mov	r2, r0	@, ret.5647
	movw	r5, #52032	@ tmp184,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	mov	r7, r0	@ tmp185,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r2, r7	@, tmp185
	strb	r7, [r0, #1]	@ tmp185, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	str	r7, [r4, r5]	@ tmp185, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.36703,
	b	.L2083	@
	.fnend
	.size	OutputFrmToVO, .-OutputFrmToVO
	.align	2
	.global	InitDPB
	.type	InitDPB, %function
InitDPB:
	.fnstart
.LFB1426:
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
	ldr	r3, [r4, r3]	@ temp.5731, <variable>.DPB.fs
	cmp	r3, #0	@ temp.5731,
	beq	.L2100	@,
	movw	r2, #54168	@ tmp190,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2100:
	movw	r0, #26488	@ tmp193,
	ldr	r3, [r4, r0]	@ temp.5730, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5730,
	beq	.L2101	@,
	movw	r5, #54168	@ tmp194,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2101:
	movw	r1, #26552	@ tmp197,
	ldr	r3, [r4, r1]	@ temp.5733, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5733,
	beq	.L2102	@,
	movw	r6, #54168	@ tmp198,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2102:
	movw	r5, #26428	@ tmp207,
	mov	lr, #0	@ tmp202,
	ldr	r2, [r4, r5]	@ temp.5736, <variable>.DPB.fs
	movw	r0, #26424	@ tmp205,
	movw	r3, #26552	@ tmp201,
	movw	ip, #26488	@ tmp203,
	cmp	r2, lr	@ temp.5736,
	str	lr, [r4, r0]	@ tmp202, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp202, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp202, <variable>.DPB.fs_ref
	beq	.L2103	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp208,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2103:
	movw	r1, #26492	@ tmp211,
	ldr	r3, [r4, r1]	@ temp.5739, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5739,
	beq	.L2104	@,
	movw	r6, #54168	@ tmp212,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2104:
	movw	ip, #26556	@ tmp215,
	ldr	r3, [r4, ip]	@ temp.5742, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5742,
	beq	.L2105	@,
	movw	lr, #54168	@ tmp216,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2105:
	movw	r6, #26432	@ tmp225,
	mov	r3, #0	@ tmp220,
	ldr	r2, [r4, r6]	@ temp.5745, <variable>.DPB.fs
	movw	r1, #26428	@ tmp223,
	movw	r5, #26556	@ tmp219,
	movw	r0, #26492	@ tmp221,
	cmp	r2, r3	@ temp.5745,
	str	r3, [r4, r1]	@ tmp220, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp220, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp220, <variable>.DPB.fs_ref
	beq	.L2106	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp226,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2106:
	movw	ip, #26496	@ tmp229,
	ldr	r3, [r4, ip]	@ temp.5748, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5748,
	beq	.L2107	@,
	movw	lr, #54168	@ tmp230,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2107:
	movw	r0, #26560	@ tmp233,
	ldr	r3, [r4, r0]	@ temp.5751, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5751,
	beq	.L2108	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp234,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2108:
	movw	lr, #26436	@ tmp243,
	mov	r6, #0	@ tmp238,
	ldr	r2, [r4, lr]	@ temp.5754, <variable>.DPB.fs
	movw	ip, #26432	@ tmp241,
	movw	r1, #26560	@ tmp237,
	movw	r5, #26496	@ tmp239,
	cmp	r2, r6	@ temp.5754,
	str	r6, [r4, ip]	@ tmp238, <variable>.DPB.fs
	str	r6, [r4, r1]	@ tmp238, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp238, <variable>.DPB.fs_ref
	beq	.L2109	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp244,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2109:
	movw	r0, #26500	@ tmp247,
	ldr	r3, [r4, r0]	@ temp.5757, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5757,
	beq	.L2110	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp248,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2110:
	movw	r5, #26564	@ tmp251,
	ldr	r3, [r4, r5]	@ temp.5760, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5760,
	beq	.L2111	@,
	movw	r6, #54168	@ tmp252,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2111:
	movw	r3, #26440	@ tmp261,
	mov	ip, #0	@ tmp256,
	ldr	r2, [r4, r3]	@ temp.5763, <variable>.DPB.fs
	movw	r0, #26436	@ tmp259,
	movw	lr, #26564	@ tmp255,
	movw	r1, #26500	@ tmp257,
	cmp	r2, ip	@ temp.5763,
	str	ip, [r4, r0]	@ tmp256, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp256, <variable>.DPB.fs_ltref
	str	ip, [r4, r1]	@ tmp256, <variable>.DPB.fs_ref
	beq	.L2112	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp262,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2112:
	movw	r5, #26504	@ tmp265,
	ldr	r3, [r4, r5]	@ temp.5766, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5766,
	beq	.L2113	@,
	movw	r6, #54168	@ tmp266,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2113:
	movw	r1, #26568	@ tmp269,
	ldr	r3, [r4, r1]	@ temp.5769, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5769,
	beq	.L2114	@,
	movw	ip, #54168	@ tmp270,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2114:
	movw	r6, #26444	@ tmp279,
	mov	r0, #0	@ tmp274,
	ldr	r2, [r4, r6]	@ temp.5772, <variable>.DPB.fs
	movw	r5, #26440	@ tmp277,
	movw	r3, #26568	@ tmp273,
	movw	lr, #26504	@ tmp275,
	cmp	r2, r0	@ temp.5772,
	str	r0, [r4, r5]	@ tmp274, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp274, <variable>.DPB.fs_ltref
	str	r0, [r4, lr]	@ tmp274, <variable>.DPB.fs_ref
	beq	.L2115	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp280,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2115:
	movw	r1, #26508	@ tmp283,
	ldr	r3, [r4, r1]	@ temp.5775, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5775,
	beq	.L2116	@,
	movw	ip, #54168	@ tmp284,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2116:
	movw	lr, #26572	@ tmp287,
	ldr	r3, [r4, lr]	@ temp.5778, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5778,
	beq	.L2117	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp288,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2117:
	movw	ip, #26448	@ tmp297,
	mov	r5, #0	@ tmp292,
	ldr	r2, [r4, ip]	@ temp.5781, <variable>.DPB.fs
	movw	r1, #26444	@ tmp295,
	movw	r6, #26572	@ tmp291,
	movw	r0, #26508	@ tmp293,
	cmp	r2, r5	@ temp.5781,
	str	r5, [r4, r1]	@ tmp292, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp292, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp292, <variable>.DPB.fs_ref
	beq	.L2118	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp298,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2118:
	movw	lr, #26512	@ tmp301,
	ldr	r3, [r4, lr]	@ temp.5784, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5784,
	beq	.L2119	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp302,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2119:
	movw	r0, #26576	@ tmp305,
	ldr	r3, [r4, r0]	@ temp.5787, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5787,
	beq	.L2120	@,
	movw	r5, #54168	@ tmp306,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2120:
	movw	r3, #26452	@ tmp315,
	mov	ip, #0	@ tmp310,
	ldr	r2, [r4, r3]	@ temp.5790, <variable>.DPB.fs
	movw	lr, #26448	@ tmp313,
	movw	r1, #26576	@ tmp309,
	movw	r6, #26512	@ tmp311,
	cmp	r2, ip	@ temp.5790,
	str	ip, [r4, lr]	@ tmp310, <variable>.DPB.fs
	str	ip, [r4, r1]	@ tmp310, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp310, <variable>.DPB.fs_ref
	beq	.L2121	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp316,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2121:
	movw	r0, #26516	@ tmp319,
	ldr	r3, [r4, r0]	@ temp.5793, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5793,
	beq	.L2122	@,
	movw	r5, #54168	@ tmp320,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2122:
	movw	r6, #26580	@ tmp323,
	ldr	r3, [r4, r6]	@ temp.5796, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5796,
	beq	.L2123	@,
	movw	ip, #54168	@ tmp324,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2123:
	movw	r5, #26456	@ tmp333,
	mov	lr, #0	@ tmp328,
	ldr	r2, [r4, r5]	@ temp.5799, <variable>.DPB.fs
	movw	r0, #26452	@ tmp331,
	movw	r3, #26580	@ tmp327,
	movw	r1, #26516	@ tmp329,
	cmp	r2, lr	@ temp.5799,
	str	lr, [r4, r0]	@ tmp328, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp328, <variable>.DPB.fs_ltref
	str	lr, [r4, r1]	@ tmp328, <variable>.DPB.fs_ref
	beq	.L2124	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp334,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2124:
	movw	r6, #26520	@ tmp337,
	ldr	r3, [r4, r6]	@ temp.5802, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5802,
	beq	.L2125	@,
	movw	ip, #54168	@ tmp338,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2125:
	movw	r1, #26584	@ tmp341,
	ldr	r3, [r4, r1]	@ temp.5805, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5805,
	beq	.L2126	@,
	movw	lr, #54168	@ tmp342,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2126:
	movw	ip, #26460	@ tmp351,
	mov	r3, #0	@ tmp346,
	ldr	r2, [r4, ip]	@ temp.5808, <variable>.DPB.fs
	movw	r6, #26456	@ tmp349,
	movw	r5, #26584	@ tmp345,
	movw	r0, #26520	@ tmp347,
	cmp	r2, r3	@ temp.5808,
	str	r3, [r4, r6]	@ tmp346, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp346, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp346, <variable>.DPB.fs_ref
	beq	.L2127	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp352,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2127:
	movw	r1, #26524	@ tmp355,
	ldr	r3, [r4, r1]	@ temp.5811, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5811,
	beq	.L2128	@,
	movw	lr, #54168	@ tmp356,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2128:
	movw	r0, #26588	@ tmp359,
	ldr	r3, [r4, r0]	@ temp.5814, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5814,
	beq	.L2129	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp360,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2129:
	movw	lr, #26464	@ tmp369,
	mov	r6, #0	@ tmp364,
	ldr	r2, [r4, lr]	@ temp.5817, <variable>.DPB.fs
	movw	r1, #26460	@ tmp367,
	movw	ip, #26588	@ tmp363,
	movw	r5, #26524	@ tmp365,
	cmp	r2, r6	@ temp.5817,
	str	r6, [r4, r1]	@ tmp364, <variable>.DPB.fs
	str	r6, [r4, ip]	@ tmp364, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp364, <variable>.DPB.fs_ref
	beq	.L2130	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp370,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2130:
	movw	r0, #26528	@ tmp373,
	ldr	r3, [r4, r0]	@ temp.5820, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5820,
	beq	.L2131	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp374,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2131:
	movw	r5, #26592	@ tmp377,
	ldr	r3, [r4, r5]	@ temp.5823, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5823,
	beq	.L2132	@,
	movw	r6, #54168	@ tmp378,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2132:
	movw	r3, #26468	@ tmp387,
	mov	lr, #0	@ tmp382,
	ldr	r2, [r4, r3]	@ temp.5826, <variable>.DPB.fs
	movw	r0, #26464	@ tmp385,
	movw	r1, #26592	@ tmp381,
	movw	ip, #26528	@ tmp383,
	cmp	r2, lr	@ temp.5826,
	str	lr, [r4, r0]	@ tmp382, <variable>.DPB.fs
	str	lr, [r4, r1]	@ tmp382, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp382, <variable>.DPB.fs_ref
	beq	.L2133	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp388,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2133:
	movw	r5, #26532	@ tmp391,
	ldr	r3, [r4, r5]	@ temp.5829, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5829,
	beq	.L2134	@,
	movw	r6, #54168	@ tmp392,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2134:
	movw	ip, #26596	@ tmp395,
	ldr	r3, [r4, ip]	@ temp.5832, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5832,
	beq	.L2135	@,
	movw	lr, #54168	@ tmp396,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2135:
	movw	r6, #26472	@ tmp405,
	mov	r0, #0	@ tmp400,
	ldr	r2, [r4, r6]	@ temp.5835, <variable>.DPB.fs
	movw	r5, #26468	@ tmp403,
	movw	r3, #26596	@ tmp399,
	movw	r1, #26532	@ tmp401,
	cmp	r2, r0	@ temp.5835,
	str	r0, [r4, r5]	@ tmp400, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp400, <variable>.DPB.fs_ltref
	str	r0, [r4, r1]	@ tmp400, <variable>.DPB.fs_ref
	beq	.L2136	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp406,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2136:
	movw	ip, #26536	@ tmp409,
	ldr	r3, [r4, ip]	@ temp.5838, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5838,
	beq	.L2137	@,
	movw	lr, #54168	@ tmp410,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2137:
	movw	r1, #26600	@ tmp413,
	ldr	r3, [r4, r1]	@ temp.5841, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5841,
	beq	.L2138	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp414,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2138:
	movw	lr, #26476	@ tmp423,
	mov	r5, #0	@ tmp418,
	ldr	r2, [r4, lr]	@ temp.5844, <variable>.DPB.fs
	movw	ip, #26472	@ tmp421,
	movw	r6, #26600	@ tmp417,
	movw	r0, #26536	@ tmp419,
	cmp	r2, r5	@ temp.5844,
	str	r5, [r4, ip]	@ tmp418, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp418, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp418, <variable>.DPB.fs_ref
	beq	.L2139	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp424,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2139:
	movw	r1, #26540	@ tmp427,
	ldr	r3, [r4, r1]	@ temp.5847, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5847,
	beq	.L2140	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp428,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2140:
	movw	r0, #26604	@ tmp431,
	ldr	r3, [r4, r0]	@ temp.5850, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5850,
	beq	.L2141	@,
	movw	r5, #54168	@ tmp432,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2141:
	movw	r3, #26480	@ tmp441,
	mov	ip, #0	@ tmp436,
	ldr	r2, [r4, r3]	@ temp.5853, <variable>.DPB.fs
	movw	r1, #26476	@ tmp439,
	movw	lr, #26604	@ tmp435,
	movw	r6, #26540	@ tmp437,
	cmp	r2, ip	@ temp.5853,
	str	ip, [r4, r1]	@ tmp436, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp436, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp436, <variable>.DPB.fs_ref
	beq	.L2142	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp442,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2142:
	movw	r0, #26544	@ tmp445,
	ldr	r3, [r4, r0]	@ temp.5856, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5856,
	beq	.L2143	@,
	movw	r5, #54168	@ tmp446,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2143:
	movw	r6, #26608	@ tmp449,
	ldr	r3, [r4, r6]	@ temp.5859, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5859,
	beq	.L2144	@,
	movw	ip, #54168	@ tmp450,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2144:
	movw	r5, #26484	@ tmp459,
	mov	r3, #0	@ tmp454,
	ldr	r2, [r4, r5]	@ D.38714, <variable>.DPB.fs
	movw	r0, #26480	@ tmp457,
	movw	r1, #26608	@ tmp453,
	movw	lr, #26544	@ tmp455,
	cmp	r2, r3	@ D.38714,
	str	r3, [r4, r0]	@ tmp454, <variable>.DPB.fs
	str	r3, [r4, r1]	@ tmp454, <variable>.DPB.fs_ltref
	str	r3, [r4, lr]	@ tmp454, <variable>.DPB.fs_ref
	beq	.L2145	@,
	ldr	r1, [r2, #540]	@, <variable>.logic_fs_id
	movw	r2, #54168	@ tmp460,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2145:
	movw	r6, #26548	@ tmp463,
	ldr	r3, [r4, r6]	@ D.38719, <variable>.DPB.fs_ref
	cmp	r3, #0	@ D.38719,
	beq	.L2146	@,
	movw	ip, #54168	@ tmp464,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2146:
	movw	lr, #26612	@ tmp467,
	ldr	r3, [r4, lr]	@ D.38723, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ D.38723,
	beq	.L2147	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	movw	r3, #54168	@ tmp468,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2147:
	movw	r5, #52032	@ tmp489,
	movw	r3, #17560	@ tmp478,
	ldr	r1, [r4, r5]	@ D.38729, <variable>.pDirectOutBuf
	movw	ip, #26616	@ tmp477,
	ldr	lr, [r4, r3]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	movw	r6, #26612	@ tmp471,
	movw	r0, #26548	@ tmp473,
	cmp	r1, #0	@ D.38729,
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
	beq	.L2148	@,
	movw	r6, #54096	@ tmp490,
	ldr	r0, [r4, r6]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r0, #2	@ <variable>.OldDecMode,
	beq	.L2161	@,
.L2149:
	movw	r5, #51416	@ tmp494,
	ldr	r3, [r4, r5]	@ D.38738, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.38738,
	beq	.L2150	@,
	movw	r2, #54168	@ tmp495,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2150:
	movw	lr, #52032	@ tmp498,
	mov	ip, #0	@ tmp499,
	str	ip, [r4, lr]	@ tmp499, <variable>.pDirectOutBuf
.L2148:
	add	lr, r4, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, lr, #12	@,,
	movw	r5, #26616	@ tmp503,
	bl	__memzero	@
	ldr	r1, [r4, r5]	@ <variable>.DPB.size, <variable>.DPB.size
	movw	r0, #26892	@ tmp502,
	movw	r2, #26896	@ tmp505,
	movw	ip, #52584	@ tmp507,
	mov	r3, #0	@ tmp506,
	str	r1, [r4, r0]	@ <variable>.DPB.size, <variable>.APC.size
	movw	r0, #52588	@ tmp509,
	movw	r1, #52592	@ tmp511,
	str	r3, [r4, ip]	@ tmp506, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r2]	@ tmp506, <variable>.APC.used_size
	movw	r2, #52596	@ tmp513,
	str	r3, [r4, r0]	@ tmp506, <variable>.PmvStoreUsedFlag
	add	r6, r4, #20480	@ ivtmp.5720, pH264Ctx,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #52600	@ tmp515,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52604	@ tmp517,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #52608	@ tmp519,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52612	@ tmp521,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #52616	@ tmp523,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52620	@ tmp525,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #52624	@ tmp527,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52628	@ tmp529,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r1, #52632	@ tmp531,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	add	r6, r6, #236	@ ivtmp.5720, ivtmp.5720,
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52636	@ tmp533,
	movw	r1, #52640	@ tmp535,
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	mov	r5, r3	@ i, tmp506
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
	movw	r2, #52644	@ tmp537,
	movw	r1, #52648	@ tmp539,
	mov	ip, r3	@ j, i
	mov	r0, r3	@ tmp554, i
	str	r3, [r4, r2]	@ tmp506, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r1]	@ tmp506, <variable>.PmvStoreUsedFlag
.L2151:
	add	r2, r5, r5, asl #5	@, tmp546, i, i,
	mov	r1, #1	@ j,
	mov	lr, r2, asl #2	@ tmp547, tmp546,
	add	r3, lr, #26880	@ tmp548, tmp547,
	add	r2, r3, #144	@ tmp548, tmp548,
	add	lr, r4, r2	@ tmp550, pH264Ctx, tmp548
	add	r2, lr, #8	@ ivtmp.5712, tmp550,
	str	ip, [lr, #4]	@ j, <variable>.pListX
.L2152:
	add	r1, r1, #2	@ j, j,
	mov	r3, r2	@ tmp558, ivtmp.5712
	cmp	r1, #33	@ j,
	str	ip, [r3], #4	@ j, <variable>.pListX
	str	ip, [r2, #4]	@ j, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.5712, tmp558,
	bne	.L2152	@,
	add	r5, r5, #1	@ i, i,
	str	r0, [r6], #4	@ tmp554, <variable>.CurrSlice.listXsize
	cmp	r5, #2	@ i,
	bne	.L2151	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2161:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	bne	.L2149	@,
	b	.L2148	@
	.fnend
	.size	InitDPB, .-InitDPB
	.align	2
	.global	H264DEC_GetRemainImg
	.type	H264DEC_GetRemainImg, %function
H264DEC_GetRemainImg:
	.fnstart
.LFB1391:
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
	beq	.L2178	@,
	add	r5, r0, #26368	@ ivtmp.5894, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #56	@ ivtmp.5894, ivtmp.5894,
	b	.L2165	@
.L2164:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2178	@,
.L2165:
	ldr	r1, [r5, #0]	@ D.37176, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5894, ivtmp.5894,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2164	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2165	@,
.L2178:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@ D.37181
	bne	.L2178	@,
	add	r7, r4, #26368	@ ivtmp.5889, pH264Ctx,
	mov	sl, r0	@ pos.5901, D.37181
	add	r7, r7, #56	@ ivtmp.5889, ivtmp.5889,
	mvn	r9, #0	@ ret,
	movw	r8, #26620	@ tmp176,
.L2187:
	ldr	r3, [r4, r8]	@ D.43956, <variable>.DPB.used_size
	cmp	r3, #0	@ D.43956,
	beq	.L2192	@,
.L2173:
	movw	r2, #26616	@,
	ldr	ip, [r4, r2]	@ temp.5900, <variable>.DPB.size
	cmp	r3, ip	@ D.43956, temp.5900
	movls	ip, r3	@ temp.5900, D.43956
	bls	.L2168	@,
	cmp	ip, #0	@ temp.5900,
	str	ip, [r4, r8]	@ temp.5900, <variable>.DPB.used_size
	moveq	r5, ip	@ pos.5901, temp.5900
	beq	.L2169	@,
.L2168:
	tst	ip, #1	@ temp.5900,
	mov	r5, #0	@ pos.5901,
	mov	r2, r7	@ ivtmp.5889, ivtmp.5889
	mvn	r1, #-2147483648	@ min_poc.5903,
	mov	r0, r5	@ pos, pos.5901
	bne	.L2175	@,
	ldr	r3, [r7, #0]	@ D.43953, <variable>.DPB.fs
	ldr	r1, [r3, #556]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2181	@,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2181	@,
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5900
	add	r2, r7, #4	@ ivtmp.5889, ivtmp.5889,
	bcs	.L2169	@,
.L2175:
	ldr	lr, [r2, #0]	@ D.43953, <variable>.DPB.fs
	ldr	r3, [lr, #556]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5903
	bge	.L2170	@,
.L2193:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r5, r0	@ pos.5901, pos
	beq	.L2170	@,
	add	r0, r0, #1	@ tmp187, pos,
	add	lr, r2, #4	@ tmp188, ivtmp.5889,
	cmp	r0, ip	@ tmp187, temp.5900
	bcs	.L2169	@,
.L2172:
	ldr	r2, [r2, #4]	@ D.43953, <variable>.DPB.fs
	ldr	r1, [r2, #556]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2184	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2184	@,
	mov	r5, r0	@ pos.5901, tmp187
.L2191:
	add	r2, lr, #4	@ ivtmp.5889, tmp188,
	add	r0, r0, #1	@ pos, tmp187,
	ldr	lr, [r2, #0]	@ D.43953, <variable>.DPB.fs
	ldr	r3, [lr, #556]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5903
	blt	.L2193	@,
.L2170:
	add	r0, r0, #1	@ tmp187, pos,
	mov	r3, r1	@ min_poc, min_poc.5903
	cmp	r0, ip	@ tmp187, temp.5900
	add	lr, r2, #4	@ tmp188, ivtmp.5889,
	bcc	.L2172	@,
.L2169:
	add	r6, r5, #6592	@ tmp158, pos.5901,
	mov	r0, r4	@, pH264Ctx
	add	r6, r6, #14	@ tmp158, tmp158,
	ldr	r9, [r4, r6, asl #2]	@ tmp160, <variable>.DPB.fs
	strb	sl, [r9, #4]	@ pos.5901, <variable>.is_in_dpb
	ldr	r1, [r4, r6, asl #2]	@, <variable>.DPB.fs
	ldr	r2, [r4, r8]	@, <variable>.DPB.used_size
	bl	OutputFrmToVO	@
	ldr	r3, [r4, r6, asl #2]	@ tmp170, <variable>.DPB.fs
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	mov	r9, r0	@ ret,
	bne	.L2187	@,
	mov	r1, r5	@, pos.5901
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	ldr	r3, [r4, r8]	@ D.43956, <variable>.DPB.used_size
	cmp	r3, #0	@ D.43956,
	bne	.L2173	@,
.L2192:
	cmp	r9, #0	@ ret,
	beq	.L2174	@,
	add	r0, r4, #8	@, pH264Ctx,
	bl	GetVoLastImageID	@
	mov	r9, r0	@ ret,
.L2174:
	mov	r0, r9	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2181:
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5900
	mvn	r1, #-2147483648	@ min_poc,
	add	r2, r7, #4	@ ivtmp.5889, ivtmp.5889,
	bcc	.L2175	@,
	b	.L2169	@
.L2184:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2191	@
	.fnend
	.size	H264DEC_GetRemainImg, .-H264DEC_GetRemainImg
	.align	2
	.global	DirectOutput
	.type	DirectOutput, %function
DirectOutput:
	.fnstart
.LFB1389:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #50979	@ tmp182,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #1	@ <variable>.CurrPic.structure,
	beq	.L2197	@,
	bcc	.L2196	@,
	cmp	r3, #2	@ <variable>.CurrPic.structure,
	movne	r5, #0	@ ret,
	beq	.L2236	@,
.L2199:
	mov	r0, r5	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L2196:
	movw	r6, #51416	@ tmp185,
	movw	r5, #52032	@ tmp188,
	ldr	r1, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp186,
	strb	r2, [r1, #432]	@ tmp186, <variable>.frame.structure
	ldr	r1, [r0, r5]	@ temp.5957, <variable>.pDirectOutBuf
	cmp	r1, r2	@ temp.5957,
	beq	.L2200	@,
	bl	OutputFrmToVO	@
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, #0	@ <variable>.pDirectOutBuf,
	beq	.L2201	@,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r2, #54168	@ tmp191,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2201:
	movw	r7, #52032	@ tmp196,
	mov	r6, #0	@ tmp197,
	str	r6, [r4, r7]	@ tmp197, <variable>.pDirectOutBuf
.L2200:
	movw	r7, #51416	@ tmp198,
	movw	r6, #52032	@ tmp199,
	ldr	r8, [r4, r7]	@ temp.5960, <variable>.CurrPic.frame_store
	mov	r5, #0	@ tmp221,
	add	r1, r4, #50944	@, pH264Ctx,
	mov	r2, #424	@,
	add	r1, r1, #48	@,,
	str	r8, [r4, r6]	@ temp.5960, <variable>.pDirectOutBuf
	str	r8, [r8, #436]	@ temp.5960, <variable>.frame.frame_store
	movw	r8, #54168	@ tmp255,
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [lr, #472]	@ <variable>.CurrPic.frame_store, <variable>.top_field.frame_store
	movw	lr, #50978	@ tmp212,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r3, #508]	@ <variable>.CurrPic.frame_store, <variable>.bottom_field.frame_store
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	lr, #3	@ tmp217,
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r3, #1]	@ tmp217, <variable>.is_used
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [ip, #2]	@ tmp221, <variable>.is_reference
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [r0, #4]	@ tmp221, <variable>.is_in_dpb
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r5, [r3, #564]	@ tmp221, <variable>.is_displayed
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #51460	@ tmp238,
	ldr	ip, [r4, r2]	@ D.37034, <variable>.CurrPic.err_level
	movw	r3, #51452	@ tmp245,
	ldr	r1, [r4, r6]	@ temp.5972, <variable>.pDirectOutBuf
	mov	r2, r5	@, tmp221
	str	ip, [r1, #576]	@ D.37034, <variable>.err_level
	str	ip, [r1, #452]	@ D.37034, <variable>.frame.err_level
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r5, [r0, #432]	@ tmp221, <variable>.frame.structure
	movw	r0, #50985	@ tmp249,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r1, #572]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	ip, #50983	@ tmp252,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r3, #568]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r0, [r4, r6]	@ temp.5976, <variable>.pDirectOutBuf
	cmp	r1, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r1, r5	@ iftmp.490, tmp2
	moveq	r1, #3	@ iftmp.490,
	strb	r1, [r0, #3]	@ iftmp.490, <variable>.mode_skip_flag
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r5	@, tmp221
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, #0	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2232	@,
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2232:
	movw	lr, #52032	@ tmp613,
	mov	r0, #0	@ tmp614,
	str	r0, [r4, lr]	@ tmp614, <variable>.pDirectOutBuf
	b	.L2199	@
.L2197:
	movw	r6, #51416	@ tmp272,
	movw	r7, #50977	@ tmp275,
	ldr	r2, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r5, #3	@ tmp273,
	strb	r5, [r2, #432]	@ tmp273, <variable>.frame.structure
	ldrb	r2, [r0, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2205	@,
	movw	r7, #52032	@ tmp277,
	ldr	r1, [r0, r7]	@ temp.5985, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5985,
	beq	.L2206	@,
	bl	OutputFrmToVO	@
	mov	r5, r0	@ ret,
	ldr	r0, [r4, r6]	@ temp.5986, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.5986, <variable>.pDirectOutBuf
	str	r0, [r0, #472]	@ temp.5986, <variable>.top_field.frame_store
.L2207:
	movw	r6, #52032	@ tmp285,
	movw	r8, #50978	@ tmp286,
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r7, #1	@ tmp291,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r8, #0	@ tmp295,
	add	r2, r4, #50944	@, pH264Ctx,
	add	r1, r2, #48	@,,
	mov	r2, #424	@,
	strb	r0, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [lr, #1]	@ tmp291, <variable>.is_used
	movw	lr, #51452	@ tmp306,
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [ip, #4]	@ tmp295, <variable>.is_in_dpb
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r8, [r0, #564]	@ tmp295, <variable>.is_displayed
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #2]	@ tmp295, <variable>.is_reference
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [ip, #572]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r8, [r3, #568]	@ tmp295, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r1, #51460	@ tmp320,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [ip, #488]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	movw	ip, #50983	@ tmp329,
	ldr	r3, [r4, r6]	@ temp.6001, <variable>.pDirectOutBuf
	ldr	r2, [r3, #488]	@ D.37055, <variable>.top_field.err_level
	str	r2, [r3, #576]	@ D.37055, <variable>.err_level
	str	r2, [r3, #452]	@ D.37055, <variable>.frame.err_level
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r1, #468]	@ tmp291, <variable>.top_field.structure
	movw	r1, #54100	@ tmp333,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r0, r7	@ <variable>.CurrPic.mode_skip_flag,
	movne	r2, #0	@, tmp331
	moveq	r2, #1	@, tmp331
	strb	r2, [r3, #3]	@ tmp331, <variable>.mode_skip_flag
	ldr	r7, [r4, r1]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r7, #1	@ <variable>.IModeOutFlag,
	bne	.L2199	@,
	ldr	r5, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #54168	@ tmp335,
	mov	r2, r8	@, tmp295
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r2, r8	@, tmp295
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r8	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2232	@,
	movw	lr, #51416	@ tmp347,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r7	@, <variable>.IModeOutFlag
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2232	@
.L2236:
	movw	r6, #51416	@ tmp445,
	movw	r3, #50977	@ tmp448,
	ldr	ip, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r1, #3	@ tmp446,
	strb	r1, [ip, #432]	@ tmp446, <variable>.frame.structure
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2237	@,
	movw	r7, #52032	@ tmp522,
	add	r8, r0, #50944	@, pH264Ctx,
	ldr	lr, [r0, r7]	@ prephitmp.6027, <variable>.pDirectOutBuf
	add	r1, r8, #48	@,,
	mov	r2, #424	@,
	cmp	lr, #0	@ prephitmp.6027,
	ldreq	lr, [r0, r6]	@ temp.6071, <variable>.CurrPic.frame_store
	streq	lr, [r0, r7]	@ temp.6071, <variable>.pDirectOutBuf
	streq	lr, [lr, #508]	@ temp.6071, <variable>.bottom_field.frame_store
	ldreq	lr, [r0, r7]	@ prephitmp.6027, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.6027,
	ldrd	r6, [lr, #24]	@, prephitmp.6027,
	ldr	r5, [lr, #16]	@ OtherFieldPts.6072, <variable>.fs_image.PTS
	ldr	r8, [lr, #20]	@ OtherFieldPts.6072, <variable>.fs_image.PTS
	strd	r6, [fp, #-52]	@,,
	ldrd	r6, [lr, #32]	@, prephitmp.6027,
	strd	r6, [fp, #-44]	@,,
	bl	memcpy	@
	add	r3, r4, #50944	@ tmp540, pH264Ctx,
	movw	ip, #51000	@ tmp534,
	add	r0, r3, #56	@ tmp540, tmp540,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r5, r8	@ tmp532, OtherFieldPts.6072, OtherFieldPts.6072
	ldr	r2, [r0, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r3, r1, r2	@ tmp536, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r2, #51008	@ tmp550,
	cmn	r3, #1	@ tmp536,
	movne	r0, #0	@, tmp545
	moveq	r0, #1	@, tmp545
	cmn	ip, #1	@ tmp532,
	movw	ip, #52032	@ tmp549,
	moveq	r0, #0	@, tmp545,
	cmp	r0, #0	@ tmp545,
	movwne	r0, #52032	@ tmp547,
	ldrne	r0, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r8, [r0, #20]	@ OtherFieldPts.6072, <variable>.fs_image.PTS
	strne	r5, [r0, #16]	@ OtherFieldPts.6072, <variable>.fs_image.PTS
	ldrd	r0, [r4, r2]	@ <variable>.CurrPic.fs_image.Usertag, pH264Ctx, tmp550
	ldrd	r2, [fp, #-52]	@,,
	ldr	r5, [r4, ip]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r0, r2	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r1, r3	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r3, #51016	@ tmp554,
	strd	r0, [r5, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp554, pH264Ctx
	movw	r1, #52032	@ tmp553,
	ldrd	r6, [fp, #-44]	@,,
	ldr	ip, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r3, r7	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r2, r6	@ <variable>.CurrPic.fs_image.DispTime,
	movhi	r2, r6	@ <variable>.CurrPic.fs_image.DispTime,
	movw	r6, #52032	@ tmp556,
	movhi	r3, r7	@ <variable>.CurrPic.fs_image.DispTime,
	strd	r2, [ip, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	ldr	r2, [r4, r6]	@ temp.6086, <variable>.pDirectOutBuf
	movw	r6, #51452	@ tmp566,
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #50978	@ tmp558,
	moveq	ip, r3	@ iftmp.500, <variable>.non_existing
	ldrneb	ip, [r4, r3]	@ zero_extendqisi2	@ iftmp.500, <variable>.CurrPic.non_existing
	movw	r3, #52032	@ tmp560,
	strb	ip, [r2, #0]	@ iftmp.500, <variable>.non_existing
	ldr	r7, [r4, r3]	@ temp.6088, <variable>.pDirectOutBuf
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r1, r5, #2	@ tmp563, <variable>.is_used,
	strb	r1, [r7, #1]	@ tmp563, <variable>.is_used
	ldr	r2, [r4, r3]	@ temp.6091, <variable>.pDirectOutBuf
	mov	r7, #2	@ tmp572,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	mov	r6, #3	@ tmp576,
	ldr	r5, [r2, #572]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r5, ip	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r5, [r2, #572]	@, <variable>.pic_type, <variable>.pic_type
	strcc	ip, [r2, #572]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	ip, #51460	@ tmp580,
	ldr	r0, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #504]	@ tmp572, <variable>.bottom_field.structure
	ldr	r1, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r1, #432]	@ tmp576, <variable>.frame.structure
	ldr	r5, [r4, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r5, [r2, #524]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	ldr	r6, [r4, r3]	@ temp.6098, <variable>.pDirectOutBuf
	ldr	r0, [r6, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r7, [r6, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r1, r0, r7	@ tmp583, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r0, #50983	@ tmp591,
	mov	ip, r1, lsr #1	@ tmp586, tmp583,
	str	ip, [r6, #452]	@ tmp586, <variable>.frame.err_level
	ldr	r2, [r4, r3]	@ temp.6103, <variable>.pDirectOutBuf
	ldr	r5, [r2, #452]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r5, [r2, #576]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r7, [r4, r3]	@ temp.6105, <variable>.pDirectOutBuf
	ldr	r1, [r7, #508]	@ <variable>.bottom_field.frame_store, <variable>.bottom_field.frame_store
	str	r1, [r7, #436]	@ <variable>.bottom_field.frame_store, <variable>.frame.frame_store
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r6, #1	@ <variable>.CurrPic.mode_skip_flag,
	beq	.L2238	@,
.L2230:
	ldr	r3, [r4, r3]	@ temp.5956, <variable>.pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ iftmp.501, <variable>.mode_skip_flag
.L2231:
	movw	r6, #52032	@ tmp602,
	strb	r2, [r3, #3]	@ iftmp.501, <variable>.mode_skip_flag
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #54168	@ tmp599,
	mov	r2, #0	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, #0	@,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r2, #0	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2232	@,
	movw	r1, #51416	@ tmp611,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r3, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	movw	lr, #52032	@ tmp613,
	mov	r0, #0	@ tmp614,
	str	r0, [r4, lr]	@ tmp614, <variable>.pDirectOutBuf
	b	.L2199	@
.L2237:
	movw	r7, #52032	@ tmp450,
	ldr	r1, [r0, r7]	@ temp.6041, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.6041,
	beq	.L2219	@,
	bl	OutputFrmToVO	@
	mov	r5, r0	@ ret,
	ldr	r0, [r4, r6]	@ temp.6042, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.6042, <variable>.pDirectOutBuf
	str	r0, [r0, #508]	@ temp.6042, <variable>.bottom_field.frame_store
.L2220:
	movw	r6, #52032	@ tmp458,
	movw	r7, #50978	@ tmp459,
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #2	@ tmp464,
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp468,
	add	r1, r4, #50944	@, pH264Ctx,
	mov	r2, #424	@,
	add	r1, r1, #48	@,,
	strb	ip, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp464, <variable>.is_used
	movw	lr, #51452	@ tmp479,
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #4]	@ tmp468, <variable>.is_in_dpb
	ldr	ip, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #564]	@ tmp468, <variable>.is_displayed
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp468, <variable>.is_reference
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #572]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r3, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r3, #568]	@ tmp468, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #51460	@ tmp493,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #524]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	movw	r0, #50983	@ tmp501,
	ldr	r3, [r4, r6]	@ temp.6057, <variable>.pDirectOutBuf
	ldr	r1, [r3, #524]	@ temp.6058, <variable>.bottom_field.err_level
	str	r1, [r3, #576]	@ temp.6058, <variable>.err_level
	str	r1, [r3, #452]	@ temp.6058, <variable>.frame.err_level
	movw	r3, #54100	@ tmp504,
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r2, #504]	@ tmp464, <variable>.bottom_field.structure
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	ip, [r4, r6]	@ temp.6060, <variable>.pDirectOutBuf
	cmp	r1, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r1, r8	@ iftmp.498,
	movne	r1, r7	@ iftmp.498,
	strb	r1, [ip, #3]	@ iftmp.498, <variable>.mode_skip_flag
	ldr	r8, [r4, r3]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r8, #1	@ <variable>.IModeOutFlag,
	bne	.L2199	@,
	ldr	r5, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #54168	@ tmp506,
	mov	r2, r7	@, tmp468
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp468
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r2, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r2, r7	@ <variable>.pDirectOutBuf,
	mov	r5, r0	@ ret,
	beq	.L2232	@,
	movw	ip, #51416	@ tmp518,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r8	@, <variable>.IModeOutFlag
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2232	@
.L2205:
	movw	r7, #52032	@ tmp351,
	add	r8, r0, #50944	@, pH264Ctx,
	ldr	lr, [r0, r7]	@ prephitmp.5934, <variable>.pDirectOutBuf
	add	r1, r8, #48	@,,
	mov	r2, #424	@,
	cmp	lr, #0	@ prephitmp.5934,
	ldreq	lr, [r0, r6]	@ temp.6013, <variable>.CurrPic.frame_store
	streq	lr, [r0, r7]	@ temp.6013, <variable>.pDirectOutBuf
	streq	lr, [lr, #472]	@ temp.6013, <variable>.top_field.frame_store
	ldreq	lr, [r0, r7]	@ prephitmp.5934, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5934,
	ldrd	r6, [lr, #24]	@, prephitmp.5934,
	ldr	r5, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r8, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r6, [fp, #-52]	@,,
	ldrd	r6, [lr, #32]	@, prephitmp.5934,
	strd	r6, [fp, #-44]	@,,
	bl	memcpy	@
	add	r2, r4, #50944	@ tmp369, pH264Ctx,
	movw	ip, #51000	@ tmp363,
	add	r0, r2, #56	@ tmp369, tmp369,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r5, r8	@ tmp361, OtherFieldPts, OtherFieldPts
	ldr	r3, [r0, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r2, r1, r3	@ tmp365, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r3, #51008	@ tmp379,
	cmn	r2, #1	@ tmp365,
	movne	r0, #0	@, tmp374
	moveq	r0, #1	@, tmp374
	cmn	ip, #1	@ tmp361,
	movw	r2, #52032	@ tmp378,
	moveq	r0, #0	@, tmp374,
	cmp	r0, #0	@ tmp374,
	movwne	r0, #52032	@ tmp376,
	ldrne	r0, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r0, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r5, #52032	@ tmp382,
	strne	r8, [r0, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldrd	r0, [r4, r3]	@ <variable>.CurrPic.fs_image.Usertag, pH264Ctx, tmp379
	ldr	ip, [r4, r2]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r2, [fp, #-52]	@,,
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r0, r2	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r1, r3	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r3, #51016	@ tmp383,
	strd	r0, [ip, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp383, pH264Ctx
	mov	r0, #1	@ tmp401,
	ldrd	r6, [fp, #-44]	@,,
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r3, r7	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r2, r6	@ <variable>.CurrPic.fs_image.DispTime,
	movhi	r2, r6	@ <variable>.CurrPic.fs_image.DispTime,
	movw	r6, #52032	@ tmp385,
	movhi	r3, r7	@ <variable>.CurrPic.fs_image.DispTime,
	strd	r2, [r1, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	ldr	ip, [r4, r6]	@ temp.6017, <variable>.pDirectOutBuf
	movw	r6, #51452	@ tmp395,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #50978	@ tmp387,
	moveq	r1, r3	@ iftmp.494, <variable>.non_existing
	ldrneb	r1, [r4, r3]	@ zero_extendqisi2	@ iftmp.494, <variable>.CurrPic.non_existing
	movw	r3, #52032	@ tmp389,
	strb	r1, [ip, #0]	@ iftmp.494, <variable>.non_existing
	ldr	r2, [r4, r3]	@ temp.6018, <variable>.pDirectOutBuf
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r7, r5, #1	@ tmp392, <variable>.is_used,
	strb	r7, [r2, #1]	@ tmp392, <variable>.is_used
	ldr	ip, [r4, r3]	@ temp.6020, <variable>.pDirectOutBuf
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	mov	r6, #3	@ tmp405,
	ldr	r5, [ip, #572]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r5, r1	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r5, [ip, #572]	@, <variable>.pic_type, <variable>.pic_type
	strcc	r1, [ip, #572]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	ip, #51460	@ tmp409,
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [r2, #468]	@ tmp401, <variable>.top_field.structure
	ldr	r7, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r7, #432]	@ tmp405, <variable>.frame.structure
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r5, #488]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	ldr	r6, [r4, r3]	@ temp.6025, <variable>.pDirectOutBuf
	ldr	r0, [r6, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r6, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r0, r2	@ tmp412, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	mov	ip, r7, lsr #1	@ tmp415, tmp412,
	str	ip, [r6, #452]	@ tmp415, <variable>.frame.err_level
	ldr	r5, [r4, r3]	@ temp.6028, <variable>.pDirectOutBuf
	movw	r7, #50983	@ tmp420,
	ldr	r1, [r5, #452]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r1, [r5, #576]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r2, [r4, r3]	@ temp.6029, <variable>.pDirectOutBuf
	ldr	r0, [r2, #472]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	str	r0, [r2, #436]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r6, #1	@ <variable>.CurrPic.mode_skip_flag,
	bne	.L2230	@,
	ldr	r3, [r4, r3]	@ D.37025, <variable>.pDirectOutBuf
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r5, #1	@ iftmp.495, <variable>.mode_skip_flag,
	b	.L2231	@
.L2206:
	ldr	ip, [r0, r6]	@ temp.5988, <variable>.CurrPic.frame_store
	mov	r5, r1	@ ret, temp.5985
	str	ip, [r0, r7]	@ temp.5988, <variable>.pDirectOutBuf
	str	ip, [ip, #472]	@ temp.5988, <variable>.top_field.frame_store
	b	.L2207	@
.L2219:
	ldr	r2, [r0, r6]	@ temp.6044, <variable>.CurrPic.frame_store
	mov	r5, r1	@ ret, temp.6041
	str	r2, [r0, r7]	@ temp.6044, <variable>.pDirectOutBuf
	str	r2, [r2, #508]	@ temp.6044, <variable>.bottom_field.frame_store
	b	.L2220	@
.L2238:
	ldr	r3, [r4, r3]	@ temp.5956, <variable>.pDirectOutBuf
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r5, #2	@ iftmp.501, <variable>.mode_skip_flag,
	b	.L2231	@
	.fnend
	.size	DirectOutput, .-DirectOutput
	.align	2
	.global	OutputFrmFromDPB
	.type	OutputFrmFromDPB, %function
OutputFrmFromDPB:
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
	bne	.L2240	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	RemoveFrameStoreOutDPB	@
.L2240:
	mov	r0, r7	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	OutputFrmFromDPB, .-OutputFrmFromDPB
	.align	2
	.global	FlushDPB
	.type	FlushDPB, %function
FlushDPB:
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
	movw	r7, #26620	@ tmp149,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2258	@,
	add	r4, r0, #26368	@ ivtmp.6173, pH264Ctx,
	mov	r6, #0	@ i,
	add	r4, r4, #56	@ ivtmp.6173, ivtmp.6173,
	b	.L2245	@
.L2244:
	ldr	r1, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2258	@,
.L2245:
	ldr	r1, [r4, #0]	@ D.37148, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.6173, ivtmp.6173,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2244	@,
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r5, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2245	@,
.L2258:
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2258	@,
	add	r2, r5, #26368	@ ivtmp.6168, pH264Ctx,
	movw	r6, #26620	@ tmp161,
	add	r4, r2, #56	@ ivtmp.6168, ivtmp.6168,
	movw	r7, #26616	@ tmp162,
.L2257:
	ldr	r0, [r5, r6]	@ D.43974, <variable>.DPB.used_size
	cmp	r0, #0	@ D.43974,
	beq	.L2272	@,
	ldr	r8, [r5, r7]	@ temp.6176, <variable>.DPB.size
	cmp	r0, r8	@ D.43974, temp.6176
	movls	r8, r0	@ temp.6176, D.43974
	bls	.L2248	@,
	cmp	r8, #0	@ temp.6176,
	str	r8, [r5, r6]	@ temp.6176, <variable>.DPB.used_size
	moveq	r1, r8	@ pos, temp.6176
	beq	.L2249	@,
.L2248:
	tst	r8, #1	@ temp.6176,
	mov	r1, #0	@ pos,
	mov	r2, r4	@ ivtmp.6168, ivtmp.6168
	mvn	r0, #-2147483648	@ min_poc.6179,
	mov	ip, r1	@ pos.6177, pos
	bne	.L2255	@,
	ldr	r3, [r4, #0]	@ D.43971, <variable>.DPB.fs
	ldr	r0, [r3, #556]	@ min_poc, <variable>.poc
	cmn	r0, #-2147483647	@ min_poc,
	bge	.L2262	@,
	ldrb	ip, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L2262	@,
	mov	ip, #1	@ pos.6177,
	cmp	ip, r8	@ pos.6177, temp.6176
	add	r2, r4, #4	@ ivtmp.6168, ivtmp.6168,
	bcs	.L2249	@,
.L2255:
	ldr	lr, [r2, #0]	@ D.43971, <variable>.DPB.fs
	ldr	r3, [lr, #556]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6179
	bge	.L2250	@,
.L2273:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r1, ip	@ pos, pos.6177
	beq	.L2250	@,
	add	ip, ip, #1	@ tmp172, pos.6177,
	add	lr, r2, #4	@ tmp173, ivtmp.6168,
	cmp	ip, r8	@ tmp172, temp.6176
	bcs	.L2249	@,
.L2252:
	ldr	r2, [r2, #4]	@ D.43971, <variable>.DPB.fs
	ldr	r0, [r2, #556]	@ min_poc, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc
	bge	.L2265	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2265	@,
	mov	r1, ip	@ pos, tmp172
.L2271:
	add	r2, lr, #4	@ ivtmp.6168, tmp173,
	add	ip, ip, #1	@ pos.6177, tmp172,
	ldr	lr, [r2, #0]	@ D.43971, <variable>.DPB.fs
	ldr	r3, [lr, #556]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6179
	blt	.L2273	@,
.L2250:
	add	ip, ip, #1	@ tmp172, pos.6177,
	mov	r3, r0	@ min_poc, min_poc.6179
	cmp	ip, r8	@ tmp172, temp.6176
	add	lr, r2, #4	@ tmp173, ivtmp.6168,
	bcc	.L2252	@,
.L2249:
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	bne	.L2257	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2262:
	mov	ip, #1	@ pos.6177,
	cmp	ip, r8	@ pos.6177, temp.6176
	mvn	r0, #-2147483648	@ min_poc,
	add	r2, r4, #4	@ ivtmp.6168, ivtmp.6168,
	bcc	.L2255	@,
	b	.L2249	@
.L2265:
	mov	r0, r3	@ min_poc, min_poc
	b	.L2271	@
.L2272:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	FlushDPB, .-FlushDPB
	.align	2
	.global	IDRMemMarking
	.type	IDRMemMarking, %function
IDRMemMarking:
	.fnstart
.LFB1395:
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
	movw	r2, #51420	@ tmp148,
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.no_output_of_prior_pics_flag, <variable>.no_output_of_prior_pics_flag
	cmp	r3, #0	@ <variable>.no_output_of_prior_pics_flag,
	beq	.L2275	@,
	movw	sl, #26620	@ tmp150,
	ldr	r0, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L2276	@,
	add	r4, r6, #26368	@ ivtmp.6220, pH264Ctx,
	mov	r7, #0	@ i.6235,
	add	r4, r4, #120	@ ivtmp.6220, ivtmp.6220,
	mov	r5, r7	@ tmp228, i.6235
	movw	r8, #54168	@ tmp229,
	mov	r9, #1	@ tmp230,
.L2278:
	ldr	r1, [r4, #-64]	@ D.37323, <variable>.DPB.fs
	mov	r2, #0	@,
	add	r7, r7, #1	@ i.6235, i.6235,
	strb	r5, [r1, #433]	@ tmp228, <variable>.frame.is_long_term
	strb	r5, [r1, #434]	@ tmp228, <variable>.frame.is_short_term
	ldr	ip, [r4, #-64]	@ temp.6222, <variable>.DPB.fs
	strb	r5, [ip, #469]	@ tmp228, <variable>.top_field.is_long_term
	strb	r5, [ip, #470]	@ tmp228, <variable>.top_field.is_short_term
	ldr	r0, [r4, #-64]	@ temp.6223, <variable>.DPB.fs
	strb	r5, [r0, #505]	@ tmp228, <variable>.bottom_field.is_long_term
	strb	r5, [r0, #506]	@ tmp228, <variable>.bottom_field.is_short_term
	ldr	r3, [r4, #-64]	@ tmp165, <variable>.DPB.fs
	strb	r5, [r3, #2]	@ tmp228, <variable>.is_reference
	ldr	lr, [r4, #-64]	@ tmp170, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, #-64]	@ tmp172, <variable>.DPB.fs
	strb	r5, [r1, #1]	@ tmp228, <variable>.is_used
	ldr	ip, [r4, #-64]	@ tmp175, <variable>.DPB.fs
	strb	r5, [ip, #4]	@ tmp228, <variable>.is_in_dpb
	ldr	r0, [r4, #-64]	@ tmp178, <variable>.DPB.fs
	str	r9, [r0, #564]	@ tmp230, <variable>.is_displayed
	ldr	ip, [r4, #-64]	@ temp.6229, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r3, [ip, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r2, r3, #6656	@ tmp180, <variable>.apc_idc,
	add	r1, r2, #2	@ tmp180, tmp180,
	add	r3, r6, r1, asl #2	@, tmp185, pH264Ctx, tmp180,
	str	r5, [r3, #4]	@ tmp228, <variable>.APC.is_used
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetDisplay	@
	mov	r2, r5	@, tmp228
	cmp	r0, #3	@,
	beq	.L2277	@,
	ldr	lr, [r4, #-64]	@ tmp193, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2277:
	ldr	r2, [r6, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	str	r5, [r4, #-64]	@ tmp228, <variable>.DPB.fs
	cmp	r2, r7	@ <variable>.DPB.used_size, i.6235
	str	r5, [r4, #0]	@ tmp228, <variable>.DPB.fs_ref
	str	r5, [r4, #64]	@ tmp228, <variable>.DPB.fs_ltref
	add	r4, r4, #4	@ ivtmp.6220, ivtmp.6220,
	bhi	.L2278	@,
.L2276:
	movw	r0, #52656	@ tmp202,
	movw	r3, #26620	@ tmp200,
	ldr	ip, [r6, r0]	@ D.37334, <variable>.TotalPmvNum
	mov	r0, #0	@ tmp201,
	str	r0, [r6, r3]	@ tmp201, <variable>.DPB.used_size
	cmp	ip, r0	@ D.37334,
	beq	.L2279	@,
	add	r3, r6, #52480	@ tmp203, pH264Ctx,
	mov	r2, #1	@ i,
	add	lr, r3, #104	@ ivtmp.6212, tmp203,
	cmp	r2, ip	@ i, D.37334
	sub	r1, ip, #1	@ tmp232, D.37334,
	str	r0, [lr, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	and	lr, r1, r2	@ tmp234, tmp232,
	add	r1, r3, #108	@ ivtmp.6212, tmp203,
	bcs	.L2279	@,
	cmp	lr, #0	@ tmp234,
	beq	.L2280	@,
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.37334
	str	r0, [r1, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #112	@ ivtmp.6212, tmp203,
	bcs	.L2279	@,
.L2280:
	add	r2, r2, #2	@ i, i,
	mov	r3, r1	@ tmp236, ivtmp.6212
	cmp	r2, ip	@ i, D.37334
	str	r0, [r3], #4	@ tmp227, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.6212, tmp236,
	bcc	.L2280	@,
.L2279:
	mov	r0, r6	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r6	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r2, #51420	@ tmp206,
	ldr	ip, [r6, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@ <variable>.long_term_reference_flag, <variable>.long_term_reference_flag
	cmp	r3, #0	@ <variable>.long_term_reference_flag,
	bne	.L2291	@,
	movw	r2, #26632	@ tmp218,
	movw	ip, #50981	@ tmp223,
	movw	r1, #50980	@ tmp220,
	mov	lr, #1	@ tmp224,
	mov	r0, r3	@ D.37339, <variable>.long_term_reference_flag
	str	r3, [r6, r2]	@ <variable>.long_term_reference_flag, <variable>.DPB.max_long_term_pic_idx
	strb	lr, [r6, ip]	@ tmp224, <variable>.CurrPic.is_short_term
	strb	r3, [r6, r1]	@ <variable>.long_term_reference_flag, <variable>.CurrPic.is_long_term
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2291:
	movw	r2, #51428	@ tmp210,
	movw	ip, #50981	@ tmp215,
	movw	r3, #50980	@ tmp212,
	movw	r1, #26632	@ tmp208,
	mov	r0, #0	@ tmp211,
	mov	lr, #1	@ tmp209,
	str	r0, [r6, r2]	@ tmp211, <variable>.CurrPic.long_term_frame_idx
	strb	r0, [r6, ip]	@ tmp211, <variable>.CurrPic.is_short_term
	strb	lr, [r6, r3]	@ tmp209, <variable>.CurrPic.is_long_term
	str	lr, [r6, r1]	@ tmp209, <variable>.DPB.max_long_term_pic_idx
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2275:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.37339,
	beq	.L2279	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	IDRMemMarking, .-IDRMemMarking
	.align	2
	.global	AdaptiveMemMark
	.type	AdaptiveMemMark, %function
AdaptiveMemMark:
	.fnstart
.LFB1394:
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
	movw	r3, #51420	@ tmp153,
	ldr	r4, [r0, r3]	@ ivtmp.6269, <variable>.CurrPic.pMarkPara
	add	r7, r0, #50944	@ D.37276, pH264Ctx,
	add	r7, r7, #32	@ D.37276, D.37276,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r6, r4, #2000	@ D.49775, ivtmp.6269,
	movw	r8, #19812	@ tmp211,
	mov	sl, #1	@ tmp212,
.L2302:
	ldr	r0, [r4, #4]	@ <variable>.memory_management_control_operation, <variable>.memory_management_control_operation
	cmp	r0, #6	@ <variable>.memory_management_control_operation,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.memory_management_control_operation
	b	.L2293	@
.L2301:
	.word	.L2294
	.word	.L2295
	.word	.L2296
	.word	.L2297
	.word	.L2298
	.word	.L2299
	.word	.L2300
.L2300:
	ldr	r2, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.37276
	bl	MarkCurrPicLT	@
.L2293:
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	cmp	r4, r6	@ ivtmp.6269, D.49775
	bne	.L2302	@,
.L2294:
	movw	r2, #19812	@ tmp163,
	ldr	r1, [r5, r2]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r1, #1	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L2311	@,
.L2303:
	mov	r0, #0	@ D.37306,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2299:
	mov	r0, r5	@, pH264Ctx
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	bl	UnMarkAllSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6269, D.49775
	str	sl, [r5, r8]	@ tmp212, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2302	@,
	b	.L2294	@
.L2298:
	ldr	r1, [r4, #20]	@, <variable>.max_long_term_frame_idx_plus1
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6269, D.49775
	bne	.L2302	@,
	b	.L2294	@
.L2297:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r1, r7	@, D.37276
	ldr	r3, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6269, D.49775
	bne	.L2302	@,
	b	.L2294	@
.L2296:
	ldr	r2, [r4, #12]	@, <variable>.long_term_pic_num
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.37276
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6269, D.49775
	bne	.L2302	@,
	b	.L2294	@
.L2295:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.37276
	add	r4, r4, #20	@ ivtmp.6269, ivtmp.6269,
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	cmp	r4, r6	@ ivtmp.6269, D.49775
	bne	.L2302	@,
	b	.L2294	@
.L2311:
	movw	lr, #50979	@ tmp167,
	movw	ip, #51424	@ tmp165,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r3, #0	@ tmp166,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPic.frame_num
	cmp	r2, #1	@ <variable>.CurrPic.structure,
	beq	.L2306	@,
	bcs	.L2312	@,
	movw	r3, #51436	@ tmp186,
	movw	r4, #51448	@ tmp190,
	movw	r7, #51444	@ tmp185,
	movw	r0, #19820	@ tmp197,
	movw	sl, #19832	@ tmp198,
	ldr	ip, [r5, r3]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	ldr	r1, [r5, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	r2, #19824	@ tmp202,
	ldr	r6, [r5, r4]	@ <variable>.CurrPic.bottompoc, <variable>.CurrPic.bottompoc
	ldr	r9, [r5, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	r8, [r5, r7]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	rsb	r6, ip, r6	@ D.37295, <variable>.CurrPic.thispoc, <variable>.CurrPic.bottompoc
	str	r6, [r5, r4]	@ D.37295, <variable>.CurrPic.bottompoc
	sub	r4, r4, #8	@ tmp195, tmp195,
	rsb	r8, ip, r8	@ D.37294, <variable>.CurrPic.thispoc, <variable>.CurrPic.toppoc
	rsb	ip, r1, r9	@ D.37299, <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.toppoc
	ldr	r9, [r5, r2]	@, <variable>.CurrPOC.bottompoc
	cmp	r6, r8	@ D.37295, D.37294
	movlt	lr, r6	@ D.37296, D.37295
	movge	lr, r8	@ D.37296, D.37294
	str	ip, [r5, r0]	@ D.37299, <variable>.CurrPOC.toppoc
	rsb	r1, r1, r9	@ D.37300, <variable>.CurrPOC.ThisPOC,
	str	lr, [r5, r3]	@ D.37296, <variable>.CurrPic.thispoc
	cmp	r1, ip	@ D.37300, D.37299
	movlt	r3, r1	@ D.37301, D.37300
	movge	r3, ip	@ D.37301, D.37299
	add	ip, r2, #4	@ tmp207, tmp207,
	str	r3, [r5, sl]	@ D.37301, <variable>.CurrPOC.ThisPOC
	str	r8, [r5, r7]	@ D.37294, <variable>.CurrPic.toppoc
	str	lr, [r5, r4]	@ D.37296, <variable>.CurrPic.framepoc
	str	r1, [r5, r2]	@ D.37300, <variable>.CurrPOC.bottompoc
	str	r3, [r5, ip]	@ D.37301,
.L2304:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.37306,
	beq	.L2303	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L2312:
	cmp	r2, #2	@ <variable>.CurrPic.structure,
	bne	.L2304	@,
	movw	r1, #51448	@ tmp177,
	sub	r0, r1, #12	@ tmp179, tmp179,
	movw	r2, #19832	@ tmp183,
	movw	lr, #19824	@ tmp181,
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.bottompoc
	str	r3, [r5, r0]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, lr]	@ tmp166,
	b	.L2304	@
.L2306:
	movw	r2, #51444	@ tmp169,
	sub	r1, r2, #8	@ tmp171, tmp171,
	movw	ip, #19832	@ tmp175,
	movw	r0, #19820	@ tmp173,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPic.toppoc
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, r0]	@ tmp166,
	b	.L2304	@
	.fnend
	.size	AdaptiveMemMark, .-AdaptiveMemMark
	.align	2
	.global	Marking
	.type	Marking, %function
Marking:
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
	movw	r2, #50979	@ tmp143,
	movw	r3, #50982	@ tmp146,
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
	beq	.L2314	@,
	movw	r1, #51452	@ tmp148,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, r2	@ <variable>.CurrPic.pic_type,
	bne	.L2315	@,
	ldr	r3, [r4, #0]	@ D.37357, <variable>.pstExtraData
	ldr	ip, [r3, #456]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	ip, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2326	@,
.L2315:
	movw	r0, #51420	@ tmp156,
	ldr	r2, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	ip, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L2325	@,
	movw	r1, #51432	@ tmp159,
	ldr	r3, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2327	@,
.L2320:
	mov	r0, #0	@ D.37370,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L2326:
	ldr	r2, [r3, #452]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2315	@,
	ldr	r0, [r3, #460]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2315	@,
	ldr	r1, [r3, #440]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r3, r1, #1024	@ tmp153, <variable>.s32FastForwardBackwardSpeed,
	cmp	r3, #2048	@ tmp153,
	bls	.L2315	@,
.L2314:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2316	@,
.L2317:
	movw	ip, #50982	@ tmp161,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	lr, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2321	@,
.L2325:
	movw	r0, #51432	@ tmp163,
	ldr	r2, [r4, r0]	@ prephitmp.6293, <variable>.CurrPic.nal_ref_idc
	cmp	r2, #0	@ prephitmp.6293,
	beq	.L2320	@,
	movw	ip, #51420	@ tmp165,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L2322	@,
	movw	r2, #50977	@ tmp167,
	ldrb	r5, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2322	@,
	mov	r0, r4	@, pH264Ctx
	bl	SlidingWinMark	@
	movw	r0, #50980	@ tmp169,
	strb	r5, [r4, r0]	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.is_long_term
.L2321:
	movw	r3, #51432	@ tmp172,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2320	@,
.L2322:
	movw	r0, #50980	@ tmp175,
	movw	ip, #50981	@ tmp174,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r0, #0	@ D.37370,
	cmp	r2, r0	@ <variable>.CurrPic.is_long_term,
	movne	r1, #0	@, tmp177
	moveq	r1, #1	@, tmp177
	strb	r1, [r4, ip]	@ tmp177, <variable>.CurrPic.is_short_term
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L2327:
	mov	r0, r4	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2317	@,
.L2316:
	mvn	r0, #0	@ D.37370,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Marking, .-Marking
	.align	2
	.global	ClearDPB
	.type	ClearDPB, %function
ClearDPB:
	.fnstart
.LFB1358:
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
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp136,
	movw	r0, #54176	@ tmp137,
	movw	r2, #52668	@ tmp135,
	str	r3, [r4, r0]	@ tmp136, <variable>.FirstFrameDisplayed
	mov	r0, r3	@, tmp136
	str	r3, [r4, r2]	@ tmp136, <variable>.IDRFound
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ClearDPB, .-ClearDPB
	.align	2
	.global	ReceivePacket
	.type	ReceivePacket, %function
ReceivePacket:
	.fnstart
.LFB1478:
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
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	str	ip, [sp, #0]	@ <variable>.stream_len,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #368]	@ D.43244, <variable>.pCurrNal
	cmp	r3, #0	@ D.43244,
	beq	.L2331	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	cmp	r2, #1	@ <variable>.last_pack_in_nal,
	beq	.L2350	@,
.L2332:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #368]	@ D.43244, <variable>.pCurrNal
	cmp	r3, #0	@ D.43244,
	ldrneb	r2, [r4, #0]	@ zero_extendqisi2	@ prephitmp.6347, <variable>.last_pack_in_nal
	beq	.L2331	@,
.L2333:
	strb	r2, [r3, #3]	@ prephitmp.6347, <variable>.nal_integ
	ldr	r0, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r0, #0	@ <variable>.stream_len,
	ble	.L2342	@,
	ldr	r3, [r4, #4]	@ temp.6386, <variable>.p_stream
	cmp	r3, #0	@ temp.6386,
	beq	.L2342	@,
	ldr	ip, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	ip, #0	@ <variable>.strm_phy_addr,
	bne	.L2351	@,
.L2342:
	ldr	r3, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r6, #54168	@ tmp277,
	mov	ip, #1	@ tmp275,
	strb	ip, [r3, #3]	@ tmp275, <variable>.nal_integ
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp280,
	movt	r0, #:upper16:g_event_report	@ tmp280,
	ldr	r3, [r0, #0]	@ g_event_report.6407, g_event_report
	cmp	r3, #0	@ g_event_report.6407,
	beq	.L2339	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6407
.L2339:
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r2, #0	@ <variable>.nal_integ,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L2341:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L2350:
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L2332	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r0, #1	@ <variable>.nal_integ,
	bne	.L2333	@,
	b	.L2332	@
.L2351:
	ldr	r2, [r5, #368]	@ temp.6388, <variable>.pCurrNal
	mov	r0, r5	@, pH264Ctx
	ldr	lr, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r1, lr, lr, asl #3	@, tmp232, <variable>.nal_segment, <variable>.nal_segment,
	add	ip, r2, r1, asl #2	@, tmp234, temp.6388, tmp232,
	str	r3, [ip, #8]	@ temp.6386, <variable>.streamBuffer
	ldr	r3, [r5, #368]	@ temp.6390, <variable>.pCurrNal
	ldr	r1, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	ldr	lr, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, lr, lr, asl #3	@, tmp240, <variable>.nal_segment, <variable>.nal_segment,
	add	ip, r3, r2, asl #2	@, tmp242, temp.6390, tmp240,
	str	r1, [ip, #12]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	r3, [r5, #368]	@ temp.6394, <variable>.pCurrNal
	ldr	r1, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	ldr	lr, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, lr, lr, asl #3	@, tmp249, <variable>.nal_segment, <variable>.nal_segment,
	add	ip, r3, r2, asl #2	@, tmp251, temp.6394, tmp249,
	str	r1, [ip, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	mov	r1, #0	@ tmp262,
	ldr	r3, [r5, #368]	@ temp.6397, <variable>.pCurrNal
	ldr	lr, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, lr, lr, asl #3	@, tmp258, <variable>.nal_segment, <variable>.nal_segment,
	add	ip, r3, r2, asl #2	@, tmp260, temp.6397, tmp258,
	str	r1, [ip, #24]	@ tmp262, <variable>.bitsoffset
	ldr	r3, [r5, #368]	@ temp.6399, <variable>.pCurrNal
	ldr	r1, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	ldr	lr, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, lr, lr, asl #3	@, tmp267, <variable>.nal_segment, <variable>.nal_segment,
	add	ip, r3, r2, asl #2	@, tmp269, temp.6399, tmp267,
	str	r1, [ip, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r3, [r5, #368]	@ temp.6402, <variable>.pCurrNal
	ldr	lr, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	add	r2, lr, #1	@ tmp273, <variable>.nal_segment,
	str	r2, [r3, #68]	@ tmp273, <variable>.nal_segment
	bl	CombinePacket	@
	b	.L2339	@
.L2331:
	ldr	r3, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2335	@,
	ldr	r2, [r4, #4]	@ <variable>.p_stream, <variable>.p_stream
	cmp	r2, #0	@ <variable>.p_stream,
	beq	.L2335	@,
	ldr	lr, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	lr, #0	@ <variable>.strm_phy_addr,
	beq	.L2335	@,
	ldrb	r2, [r5, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r1, r5, #96	@ ivtmp.6366, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L2337	@,
	b	.L2336	@
.L2352:
	ldrb	r2, [r1, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r1, r1, #192	@ ivtmp.6366, ivtmp.6366,
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L2336	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2338	@,
.L2337:
	ldrb	r2, [r1, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L2352	@,
.L2336:
	cmp	r3, #136	@ Pos,
	bhi	.L2338	@,
	add	ip, r3, r3, asl #1	@, tmp172, Pos, Pos,
	mov	lr, #1	@ tmp176,
	mov	r3, ip, asl #5	@ tmp173, tmp172,
	add	ip, r3, r5	@ tmp174, tmp173, pH264Ctx
	add	r0, r3, #376	@ tmp182, tmp173,
	add	r1, r5, r0	@ tmp183, pH264Ctx, tmp182
	strb	lr, [ip, #377]	@ tmp176, <variable>.is_valid
	str	r1, [r5, #368]	@ tmp183, <variable>.pCurrNal
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
	str	lr, [r3, #68]	@ tmp176, <variable>.nal_segment
	ldr	r0, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r2, [r0, #0]	@ <variable>.is_valid, <variable>.nal_used_segment
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	ip, [r1, #3]	@ <variable>.last_pack_in_nal, <variable>.nal_integ
	b	.L2339	@
.L2338:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #:lower16:g_event_report	@ tmp217,
	movt	r2, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [r2, #0]	@ g_event_report.803, g_event_report
	cmp	r3, #0	@ g_event_report.803,
	bne	.L2353	@,
.L2340:
	mvn	r0, #0	@ ret,
	b	.L2341	@
.L2353:
	movw	lr, #54168	@ tmp218,
	mov	r1, #113	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.803
	mvn	r0, #0	@ ret,
	b	.L2341	@
.L2335:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC73	@,
	movw	r6, #54168	@ tmp220,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp223,
	movt	r1, #:upper16:g_event_report	@ tmp223,
	ldr	r3, [r1, #0]	@ g_event_report.6383, g_event_report
	cmp	r3, #0	@ g_event_report.6383,
	beq	.L2340	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6383
	mvn	r0, #0	@ ret,
	b	.L2341	@
	.fnend
	.size	ReceivePacket, .-ReceivePacket
	.align	2
	.global	DecVDM
	.type	DecVDM, %function
DecVDM:
	.fnstart
.LFB1441:
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
	movw	r0, #50979	@ tmp147,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	beq	.L2355	@,
	movw	r2, #50977	@ tmp149,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r1, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2355	@,
.L2356:
	movw	ip, #54156	@ tmp162,
	movw	r6, #54096	@ tmp165,
	ldr	r5, [r4, ip]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	ldr	r3, [r4, r6]	@ D.40075, <variable>.OldDecMode
	ubfx	r5, r5, #16, #2	@ IPBDecMode, <variable>.advanced_cfg,,
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r3, r5	@, D.40075, IPBDecMode
	beq	.L2357	@,
	sub	lr, r3, #2	@ tmp173, D.40075,
	cmp	lr, #1	@ tmp173,
	bls	.L2386	@,
.L2357:
	cmp	r5, #2	@ IPBDecMode,
	movw	r1, #54096	@ tmp176,
	str	r5, [r4, r1]	@ IPBDecMode, <variable>.OldDecMode
	beq	.L2361	@,
	cmp	r5, #3	@ IPBDecMode,
	beq	.L2362	@,
	cmp	r5, #1	@ IPBDecMode,
	beq	.L2387	@,
.L2359:
	movw	r3, #54172	@ tmp197,
	ldr	ip, [r4, r3]	@ <variable>.PrevPicIsIDR, <variable>.PrevPicIsIDR
	cmp	ip, #1	@ <variable>.PrevPicIsIDR,
	beq	.L2388	@,
.L2364:
	mov	r0, #51456	@ tmp205,
	movw	r3, #54172	@ tmp204,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	ip, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
.L2365:
	movw	r1, #54092	@ tmp207,
	ldr	lr, [r4, r1]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	lr, #0	@ <variable>.SliceParaNum,
	beq	.L2385	@,
	movw	r2, #54096	@ tmp209,
	ldr	r5, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r5, #4	@ <variable>.OldDecMode,
	beq	.L2367	@,
	movw	ip, #51452	@ tmp211,
	ldr	r3, [r4, ip]	@ prephitmp.6436, <variable>.CurrPic.pic_type
.L2368:
	cmp	r3, #2	@ prephitmp.6436,
	beq	.L2389	@,
	cmp	r3, #1	@ prephitmp.6436,
	beq	.L2381	@,
.L2370:
	movw	r5, #54132	@ tmp230,
	movw	ip, #50979	@ tmp233,
	ldr	lr, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	mov	r0, #2	@,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@, <variable>.CurrPic.structure
	movw	r1, #:lower16:.LC75	@,
	sub	r2, lr, #1	@, <variable>.TotalPicNum,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	movw	r1, #51476	@ tmp236,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_mbs, <variable>.CurrPic.pic_mbs
	movw	r2, #51480	@ tmp242,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	movw	r3, #54092	@ tmp245,
	ldr	r0, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	movw	r3, #53620	@ tmp235,
	str	ip, [r4, r3]	@ <variable>.CurrPic.pic_mbs, <variable>.DecPicPara.mbtodec
	cmp	r0, #0	@ <variable>.TotalPicNum,
	movw	ip, #53616	@ tmp241,
	movw	r3, #53820	@ tmp244,
	str	r1, [r4, ip]	@ <variable>.CurrPic.stream_base_addr, <variable>.DecPicPara.stream_base_addr
	movw	ip, #52706	@ tmp238,
	str	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.DecPicPara.SliceParaNum
	mov	r2, #1	@ tmp239,
	strb	r2, [r4, ip]	@ tmp239, <variable>.DecPicPara.NewPicFlag
	beq	.L2358	@,
	movw	r3, #51452	@ tmp249,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2372	@,
	movw	r5, #:lower16:g_event_report	@ tmp251,
	movt	r5, #:upper16:g_event_report	@ tmp251,
	ldr	r2, [r5, #0]	@ g_event_report, g_event_report
	cmp	r2, #0	@ g_event_report,
	beq	.L2382	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_GetPicStreamSize	@
	sub	r2, fp, #28	@ tmp256,,
	ldr	ip, [r5, #0]	@ g_event_report, g_event_report
	mov	r1, #20	@,
	str	r0, [r2, #-4]!	@, para
	movw	r0, #54168	@ tmp254,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report
.L2382:
	ldr	r2, [r4, #0]	@ temp.6466, <variable>.pstExtraData
.L2373:
	add	ip, r4, #52480	@ D.40156, pH264Ctx,
	add	r3, ip, #224	@ D.40156, D.40156,
	str	r3, [r4, #360]	@ D.40156, <variable>.pH264DecParam
	ldr	r1, [r2, #584]	@ D.40157, <variable>.stDisParams.s32Mode
	cmp	r1, #1	@ D.40157,
	beq	.L2390	@,
	cmp	r1, #2	@ D.40157,
	beq	.L2391	@,
.L2375:
	ldr	r2, [r2, #432]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #54084	@ tmp278,
	mov	r0, #0	@ D.40090,
	str	r2, [r4, ip]	@ <variable>.s32Compress_en, <variable>.DecPicPara.Compress_en
.L2358:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L2355:
	movw	r3, #54196	@ tmp151,
	ldr	r5, [r4, #0]	@ D.40067, <variable>.pstExtraData
	ldr	r6, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	movw	r1, #54200	@ tmp154,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r0, r6, #1	@ D.40069, <variable>.numTotalFrame,
	cmp	r0, r2	@ D.40069, <variable>.numOutputFrame
	movlt	r0, r2	@ D.40071, <variable>.numOutputFrame
	str	r0, [r4, r3]	@ D.40071, <variable>.numTotalFrame
	str	r0, [r5, #360]	@ D.40071, <variable>.stChanState.total_frame_num
	ldr	lr, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	ip, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	rsb	r6, ip, lr	@ tmp161, <variable>.numOutputFrame, <variable>.numTotalFrame
	str	r6, [r5, #364]	@ tmp161, <variable>.stChanState.error_frame_num
	b	.L2356	@
.L2367:
	movw	r3, #51452	@ tmp212,
	ldr	r3, [r4, r3]	@ prephitmp.6436, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ prephitmp.6436,
	bne	.L2368	@,
.L2381:
	movw	r5, #52672	@ tmp227,
	str	r3, [r4, r5]	@ prephitmp.6436, <variable>.PPicFound
	b	.L2370	@
.L2387:
	movw	lr, #51452	@ tmp190,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2359	@,
	movw	r3, #51432	@ tmp192,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2359	@,
	movw	r2, #50983	@ tmp194,
	mov	r0, r4	@, pH264Ctx
	strb	r5, [r4, r2]	@ IPBDecMode, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
.L2386:
	cmp	r5, #1	@ IPBDecMode,
	bhi	.L2357	@,
	mov	r2, r5	@, IPBDecMode
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	str	r5, [r4, r6]	@ IPBDecMode, <variable>.OldDecMode
.L2362:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
.L2361:
	movw	r0, #51452	@ tmp177,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2383	@,
	movw	ip, #54092	@ tmp182,
	ldr	r2, [r4, ip]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r2, #0	@ <variable>.SliceParaNum,
	beq	.L2359	@,
	movw	r3, #54088	@ tmp185,
	ldr	r1, [r4, r3]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	lr, [r1, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	lr, #0	@ <variable>.first_mb_in_slice,
	beq	.L2359	@,
.L2383:
	movw	ip, #50983	@ tmp187,
	mov	r2, #1	@ tmp188,
	mov	r0, r4	@, pH264Ctx
	strb	r2, [r4, ip]	@ tmp188, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
.L2372:
	movw	lr, #26620	@ tmp258,
	ldr	r1, [r4, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, #0	@ <variable>.DPB.used_size,
	bne	.L2382	@,
	ldr	r2, [r4, #0]	@ temp.6466, <variable>.pstExtraData
	ldr	r3, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2373	@,
.L2385:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
.L2388:
	movw	lr, #51452	@ tmp199,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2364	@,
	mov	r2, #51456	@ tmp202,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r1, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
	b	.L2365	@
.L2389:
	movw	lr, #52672	@ tmp216,
	ldr	r0, [r4, lr]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #0	@ <variable>.PPicFound,
	bne	.L2370	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r5, #0	@ <variable>.s32DecOrderOutput,
	bne	.L2370	@,
	movw	ip, #:lower16:g_allow_B_before_P	@ tmp220,
	movt	ip, #:upper16:g_allow_B_before_P	@ tmp220,
	ldrb	r2, [ip, #0]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r2, #1	@ g_allow_B_before_P,
	beq	.L2370	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	movw	r0, #51416	@ tmp225,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #54168	@ tmp222,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, <variable>.s32DecOrderOutput
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
.L2390:
	cmp	r3, #0	@ D.40156,
	beq	.L2375	@,
	movw	r1, #51452	@ tmp263,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2375	@,
	movw	r3, #51416	@ tmp268,
	movw	ip, #54168	@ tmp266,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp265,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp265, <variable>.pH264DecParam
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2385	@
.L2391:
	ldr	r0, [r2, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L2375	@,
	cmp	r3, #0	@ D.40156,
	beq	.L2375	@,
	movw	lr, #51452	@ tmp270,
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2375	@,
	movw	r0, #51416	@ tmp275,
	movw	r1, #54168	@ tmp273,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp272,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp272, <variable>.pH264DecParam
	ldr	r1, [lr, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.6475, <variable>.pstExtraData
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [ip, #588]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp277, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #588]	@ tmp277, <variable>.stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.40090,
	b	.L2358	@
	.fnend
	.size	DecVDM, .-DecVDM
	.align	2
	.global	H264_FlushDecoder
	.type	H264_FlushDecoder, %function
H264_FlushDecoder:
	.fnstart
.LFB1472:
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
.LFB1388:
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
	mov	r7, r2	@ pCurrPic, pCurrPic
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ D.36875, <variable>.structure
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ D.36875,
	beq	.L2397	@,
	bcc	.L2396	@,
	cmp	r2, #2	@ D.36875,
	beq	.L2441	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.36917,
.L2404:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2396:
	ldr	r2, [r7, #440]	@ D.36878, <variable>.frame_store
	add	r6, r1, #6592	@ tmp754, pos,
	add	r6, r6, #14	@ tmp754, tmp754,
	mov	sl, #3	@ tmp203,
	str	r2, [r0, r6, asl #2]	@ D.36878, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [r2, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	ip, [r0, r6, asl #2]	@ tmp202, <variable>.DPB.fs
	strb	sl, [ip, #1]	@ tmp203, <variable>.is_used
	ldr	r9, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r8, [r0, r6, asl #2]	@ tmp207, <variable>.DPB.fs
	ldrb	r5, [r9, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r8, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r1, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r0, r6, asl #2]	@ tmp213, <variable>.DPB.fs
	ldr	r0, [r1, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r0, [r3, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ temp.6545, <variable>.DPB.fs
	cmp	r2, #0	@ <variable>.is_long_term,
	beq	.L2442	@,
.L2399:
	mov	r2, #3	@ iftmp.478,
.L2400:
	strb	r2, [r3, #2]	@ iftmp.478, <variable>.is_reference
	add	r1, r7, #16	@, pCurrPic,
	ldr	ip, [r4, r6, asl #2]	@ tmp223, <variable>.DPB.fs
	mov	r2, #424	@,
	ldr	lr, [r7, #508]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r5, #0	@ tmp247,
	str	lr, [ip, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r0, [r4, r6, asl #2]	@ tmp227, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp227,
	bl	memcpy	@
	ldr	r1, [r4, r6, asl #2]	@ temp.6548, <variable>.DPB.fs
	ldr	sl, [r7, #484]	@ D.36894, <variable>.err_level
	mov	r2, r5	@, tmp247
	mov	r0, r4	@, pH264Ctx
	str	sl, [r1, #576]	@ D.36894, <variable>.err_level
	str	sl, [r1, #452]	@ D.36894, <variable>.frame.err_level
	ldr	r9, [r4, r6, asl #2]	@ temp.6549, <variable>.DPB.fs
	ldr	r8, [r7, #440]	@ temp.6550, <variable>.frame_store
	str	r8, [r9, #436]	@ temp.6550, <variable>.frame.frame_store
	str	r8, [r9, #508]	@ temp.6550, <variable>.bottom_field.frame_store
	str	r8, [r9, #472]	@ temp.6550, <variable>.top_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp238, <variable>.DPB.fs
	ldr	ip, [r7, #452]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	str	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	ldr	r1, [r4, r6, asl #2]	@ tmp242, <variable>.DPB.fs
	ldr	sl, [r7, #448]	@ <variable>.frame_num, <variable>.frame_num
	str	sl, [r1, #544]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r9, [r4, r6, asl #2]	@ tmp246, <variable>.DPB.fs
	strb	r5, [r9, #432]	@ tmp247, <variable>.frame.structure
	ldr	r8, [r4, r6, asl #2]	@ tmp251, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r8, #433]	@ <variable>.is_long_term, <variable>.frame.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp256, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #434]	@ <variable>.is_short_term, <variable>.frame.is_short_term
	ldr	sl, [r4, r6, asl #2]	@ temp.6558, <variable>.DPB.fs
	ldr	r9, [r7, #476]	@ D.36900, <variable>.pic_type
	str	r9, [sl, #572]	@ D.36900, <variable>.pic_type
	str	r9, [sl, #456]	@ D.36900, <variable>.frame.pic_type
	ldr	r8, [r4, r6, asl #2]	@ tmp263, <variable>.DPB.fs
	ldrb	ip, [r7, #9]	@ zero_extendqisi2	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	str	ip, [r8, #568]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r4, r6, asl #2]	@ tmp267, <variable>.DPB.fs
	ldr	r1, [r7, #460]	@ <variable>.thispoc, <variable>.thispoc
	str	r1, [r3, #556]	@ <variable>.thispoc, <variable>.poc
	ldr	sl, [r4, r6, asl #2]	@ tmp271, <variable>.DPB.fs
	ldr	r9, [r7, #464]	@ <variable>.framepoc, <variable>.framepoc
	str	r9, [sl, #448]	@ <variable>.framepoc, <variable>.frame.poc
	ldr	r8, [r4, r6, asl #2]	@ tmp275, <variable>.DPB.fs
	ldr	ip, [r7, #468]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [r8, #484]	@ <variable>.toppoc, <variable>.top_field.poc
	mov	r8, #1	@ tmp290,
	ldr	r3, [r4, r6, asl #2]	@ tmp279, <variable>.DPB.fs
	ldr	r1, [r7, #472]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r1, [r3, #520]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldrb	r9, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	sl, [r4, r6, asl #2]	@ temp.6564, <variable>.DPB.fs
	cmp	r9, #1	@ <variable>.mode_skip_flag,
	moveq	r9, #3	@ iftmp.480,
	movne	r9, r5	@ iftmp.480, tmp2
	strb	r9, [sl, #3]	@ iftmp.480, <variable>.mode_skip_flag
	ldr	r3, [r4, r6, asl #2]	@ temp.6565, <variable>.DPB.fs
	ldr	r1, [r3, #452]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldrb	lr, [r3, #433]	@ zero_extendqisi2	@ D.43989, <variable>.frame.is_long_term
	ldrb	ip, [r3, #434]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldr	sl, [r3, #456]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldr	r9, [r3, #436]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	r8, [r3, #468]	@ tmp290, <variable>.top_field.structure
	mov	r8, #2	@ tmp298,
	strb	lr, [r3, #505]	@ D.43989, <variable>.bottom_field.is_long_term
	str	r9, [r3, #508]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	ip, [r3, #506]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	r8, [r3, #504]	@ tmp298, <variable>.bottom_field.structure
	str	r1, [r3, #524]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	sl, [r3, #528]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	lr, [r3, #469]	@ D.43989, <variable>.top_field.is_long_term
	strb	ip, [r3, #470]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	r1, [r3, #488]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	sl, [r3, #492]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r9, [r3, #472]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r7, #440]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	movne	r3, r0	@, ret
	movwne	r2, #2005	@,
	movne	r0, r5	@, tmp247
	bne	.L2440	@,
.L2403:
	ldr	r3, [r4, r6, asl #2]	@ temp.6746, <variable>.DPB.fs
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2404	@,
	movw	r2, #54168	@ tmp745,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.36917,
	b	.L2404	@
.L2397:
	ldr	r3, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	mov	r0, #3	@ tmp306,
	strb	r0, [r3, #432]	@ tmp306, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp754, pos,
	addeq	r6, r6, #14	@ tmp754, tmp754,
	beq	.L2405	@,
	add	r6, r1, #6592	@ tmp754, pos,
	add	r6, r6, #14	@ tmp754, tmp754,
	ldr	r3, [r4, r6, asl #2]	@ temp.6568, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6568,
	beq	.L2405	@,
	strb	r2, [r3, #468]	@ D.36875, <variable>.top_field.structure
	ldr	r0, [r4, r6, asl #2]	@ tmp415, <variable>.DPB.fs
	ldr	r5, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	r5, [r0, #492]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	sl, [r4, r6, asl #2]	@ tmp419, <variable>.DPB.fs
	ldrb	r9, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r9, [sl, #469]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	lr, [r4, r6, asl #2]	@ tmp424, <variable>.DPB.fs
	ldrb	r8, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r8, [lr, #470]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r1, [r4, r6, asl #2]	@ tmp429, <variable>.DPB.fs
	ldr	ip, [r7, #468]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [r1, #484]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp433, <variable>.DPB.fs
	ldr	r2, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	r2, [r3, #492]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp437, <variable>.DPB.fs
	ldr	r5, [r7, #484]	@ <variable>.err_level, <variable>.err_level
	str	r5, [r0, #488]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6581, <variable>.DPB.fs
	ldr	sl, [lr, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r9, [lr, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r8, sl, r9	@ D.36934, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r8, [lr, #576]	@ D.36934, <variable>.err_level
	str	r8, [lr, #452]	@ D.36934, <variable>.frame.err_level
	ldr	r1, [r4, r6, asl #2]	@ temp.6582, <variable>.DPB.fs
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	ldrneb	ip, [r7, #2]	@ zero_extendqisi2	@ iftmp.483, <variable>.non_existing
	strb	ip, [r1, #0]	@ iftmp.483, <variable>.non_existing
	add	r1, r7, #16	@, pCurrPic,
	ldr	r3, [r4, r6, asl #2]	@ temp.6583, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #1	@ tmp451, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp451, <variable>.is_used
	ldr	sl, [r4, r6, asl #2]	@ D.36879, <variable>.DPB.fs
	mov	r2, #424	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r9, [sl, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	r5, #1	@ <variable>.mode_skip_flag,
	orreq	r9, r9, #1	@ iftmp.484, <variable>.mode_skip_flag,
	strb	r9, [sl, #3]	@ iftmp.484, <variable>.mode_skip_flag
	ldr	lr, [r4, r6, asl #2]	@ temp.6585, <variable>.DPB.fs
	add	r0, lr, #8	@, temp.6585,
	ldrd	r8, [lr, #24]	@, temp.6585,
	ldr	r5, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	sl, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r8, [fp, #-60]	@,,
	ldrd	r8, [lr, #32]	@, temp.6585,
	strd	r8, [fp, #-52]	@,,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r5, sl	@ tmp469, OtherFieldPts, OtherFieldPts
	ldr	ip, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r1, ip	@ tmp472, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r3, #1	@ tmp472,
	movne	r0, #0	@, tmp478
	moveq	r0, #1	@, tmp478
	cmn	r2, #1	@ tmp469,
	moveq	r0, #0	@, tmp478,
	cmp	r0, #0	@ tmp478,
	ldrne	r0, [r4, r6, asl #2]	@ tmp481, <variable>.DPB.fs
	strne	sl, [r0, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strne	r5, [r0, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldrd	r0, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	ldrd	r2, [fp, #-60]	@,,
	ldr	ip, [r4, r6, asl #2]	@ tmp484, <variable>.DPB.fs
	cmp	r1, r3	@ <variable>.fs_image.Usertag,
	cmpeq	r0, r2	@ <variable>.fs_image.Usertag,
	movhi	r1, r3	@ <variable>.fs_image.Usertag,
	movhi	r0, r2	@ <variable>.fs_image.Usertag,
	strd	r0, [ip, #24]	@ <variable>.fs_image.Usertag, tmp484,
	ldrd	r2, [r7, #40]	@ <variable>.fs_image.DispTime, pCurrPic,
	ldrd	r8, [fp, #-52]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp488, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.DispTime,
	cmpeq	r2, r8	@ <variable>.fs_image.DispTime,
	movhi	r3, r9	@ <variable>.fs_image.DispTime,
	movhi	r2, r8	@ <variable>.fs_image.DispTime,
	strd	r2, [r1, #32]	@ <variable>.fs_image.DispTime, tmp488,
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, #1	@ <variable>.is_long_term,
	beq	.L2416	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2416	@,
.L2417:
	ldr	r3, [r4, r6, asl #2]	@ temp.6595, <variable>.DPB.fs
	ldr	r1, [r3, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #492]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #572]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #572]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp510, <variable>.DPB.fs
	ldr	lr, [r7, #460]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #556]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6599, <variable>.DPB.fs
	ldr	ip, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #484]	@ <variable>.top_field.poc, <variable>.top_field.poc
	add	r1, ip, #6656	@ tmp517, <variable>.apc_idc,
	add	r3, r1, #34	@ tmp517, tmp517,
	add	ip, r4, r3, asl #2	@, tmp522, pH264Ctx, tmp517,
	str	r0, [ip, #4]	@ <variable>.top_field.poc, <variable>.APC.poc
	b	.L2403	@
.L2441:
	ldr	r0, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	mov	lr, #3	@ tmp526,
	strb	lr, [r0, #432]	@ tmp526, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp754, pos,
	addeq	r6, r6, #14	@ tmp754, tmp754,
	beq	.L2418	@,
	add	r6, r1, #6592	@ tmp754, pos,
	add	r6, r6, #14	@ tmp754, tmp754,
	ldr	r3, [r4, r6, asl #2]	@ temp.6647, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6647,
	beq	.L2418	@,
	strb	r2, [r3, #504]	@ D.36875, <variable>.bottom_field.structure
	ldr	r0, [r4, r6, asl #2]	@ tmp631, <variable>.DPB.fs
	ldr	r5, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [r0, #508]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	sl, [r4, r6, asl #2]	@ tmp635, <variable>.DPB.fs
	ldrb	r9, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r9, [sl, #505]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	lr, [r4, r6, asl #2]	@ tmp640, <variable>.DPB.fs
	ldrb	r8, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r8, [lr, #506]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	r1, [r4, r6, asl #2]	@ tmp645, <variable>.DPB.fs
	ldr	ip, [r7, #472]	@ <variable>.bottompoc, <variable>.bottompoc
	str	ip, [r1, #520]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp649, <variable>.DPB.fs
	ldr	r2, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	r2, [r3, #528]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp653, <variable>.DPB.fs
	ldr	r5, [r7, #484]	@ <variable>.err_level, <variable>.err_level
	str	r5, [r0, #524]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6660, <variable>.DPB.fs
	ldr	sl, [lr, #524]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r9, [lr, #488]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r8, sl, r9	@ temp.6663, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r8, [lr, #576]	@ temp.6663, <variable>.err_level
	str	r8, [lr, #452]	@ temp.6663, <variable>.frame.err_level
	ldr	r1, [r4, r6, asl #2]	@ temp.6664, <variable>.DPB.fs
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	ldrneb	ip, [r7, #2]	@ zero_extendqisi2	@ iftmp.487, <variable>.non_existing
	strb	ip, [r1, #0]	@ iftmp.487, <variable>.non_existing
	add	r1, r7, #16	@, pCurrPic,
	ldr	r3, [r4, r6, asl #2]	@ temp.6666, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #2	@ tmp667, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp667, <variable>.is_used
	ldr	sl, [r4, r6, asl #2]	@ temp.6539, <variable>.DPB.fs
	mov	r2, #424	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r9, [sl, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	r5, #1	@ <variable>.mode_skip_flag,
	orreq	r9, r9, #2	@ iftmp.488, <variable>.mode_skip_flag,
	strb	r9, [sl, #3]	@ iftmp.488, <variable>.mode_skip_flag
	ldr	lr, [r4, r6, asl #2]	@ temp.6670, <variable>.DPB.fs
	add	r0, lr, #8	@, temp.6670,
	ldrd	r8, [lr, #24]	@, temp.6670,
	ldr	r5, [lr, #16]	@ OtherFieldPts.6671, <variable>.fs_image.PTS
	ldr	sl, [lr, #20]	@ OtherFieldPts.6671, <variable>.fs_image.PTS
	strd	r8, [fp, #-60]	@,,
	ldrd	r8, [lr, #32]	@, temp.6670,
	strd	r8, [fp, #-52]	@,,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r5, sl	@ tmp685, OtherFieldPts.6671, OtherFieldPts.6671
	ldr	ip, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r1, ip	@ tmp688, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r3, #1	@ tmp688,
	movne	r0, #0	@, tmp694
	moveq	r0, #1	@, tmp694
	cmn	r2, #1	@ tmp685,
	moveq	r0, #0	@, tmp694,
	cmp	r0, #0	@ tmp694,
	ldrne	r0, [r4, r6, asl #2]	@ tmp697, <variable>.DPB.fs
	strne	sl, [r0, #20]	@ OtherFieldPts.6671, <variable>.fs_image.PTS
	strne	r5, [r0, #16]	@ OtherFieldPts.6671, <variable>.fs_image.PTS
	ldrd	r0, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	ldrd	r2, [fp, #-60]	@,,
	ldr	ip, [r4, r6, asl #2]	@ tmp700, <variable>.DPB.fs
	cmp	r1, r3	@ <variable>.fs_image.Usertag,
	cmpeq	r0, r2	@ <variable>.fs_image.Usertag,
	movhi	r1, r3	@ <variable>.fs_image.Usertag,
	movhi	r0, r2	@ <variable>.fs_image.Usertag,
	strd	r0, [ip, #24]	@ <variable>.fs_image.Usertag, tmp700,
	ldrd	r2, [r7, #40]	@ <variable>.fs_image.DispTime, pCurrPic,
	ldrd	r8, [fp, #-52]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp704, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.DispTime,
	cmpeq	r2, r8	@ <variable>.fs_image.DispTime,
	movhi	r3, r9	@ <variable>.fs_image.DispTime,
	movhi	r2, r8	@ <variable>.fs_image.DispTime,
	strd	r2, [r1, #32]	@ <variable>.fs_image.DispTime, tmp704,
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, #1	@ <variable>.is_long_term,
	beq	.L2431	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2431	@,
.L2432:
	ldr	r3, [r4, r6, asl #2]	@ temp.6692, <variable>.DPB.fs
	ldr	r1, [r3, #528]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #492]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #572]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #572]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp726, <variable>.DPB.fs
	ldr	lr, [r7, #460]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #556]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6699, <variable>.DPB.fs
	ldr	ip, [r2, #584]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #520]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	add	r1, ip, #6656	@ tmp733, <variable>.apc_idc,
	add	r3, r1, #50	@ tmp733, tmp733,
	add	ip, r4, r3, asl #2	@, tmp738, pH264Ctx, tmp733,
	str	r0, [ip, #4]	@ <variable>.bottom_field.poc, <variable>.APC.poc
	b	.L2403	@
.L2418:
	ldr	r0, [r7, #440]	@ temp.6701, <variable>.frame_store
	mov	r2, #2	@ tmp533,
	str	r0, [r4, r6, asl #2]	@ temp.6701, <variable>.DPB.fs
	strb	r2, [r0, #504]	@ tmp533, <variable>.bottom_field.structure
	ldr	lr, [r4, r6, asl #2]	@ tmp537, <variable>.DPB.fs
	ldr	r5, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [lr, #508]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp541, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r3, #505]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r1, [r4, r6, asl #2]	@ tmp546, <variable>.DPB.fs
	ldrb	r0, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r0, [r1, #506]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	lr, [r4, r6, asl #2]	@ tmp551, <variable>.DPB.fs
	ldr	r5, [r7, #472]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r5, [lr, #520]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp555, <variable>.DPB.fs
	ldr	ip, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	ip, [r3, #528]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r1, [r4, r6, asl #2]	@ tmp559, <variable>.DPB.fs
	ldr	r0, [r7, #484]	@ <variable>.err_level, <variable>.err_level
	str	r0, [r1, #524]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6714, <variable>.DPB.fs
	ldr	r5, [lr, #488]	@ temp.6715, <variable>.top_field.err_level
	str	r5, [lr, #576]	@ temp.6715, <variable>.err_level
	str	r5, [lr, #452]	@ temp.6715, <variable>.frame.err_level
	ldr	r3, [r4, r6, asl #2]	@ tmp565, <variable>.DPB.fs
	ldrb	ip, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	ip, [r3, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp570, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp533, <variable>.is_used
	ldr	r0, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp575, <variable>.DPB.fs
	ldrb	r5, [r0, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [lr, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r3, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp581, <variable>.DPB.fs
	ldr	r1, [r3, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [ip, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2420	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2420	@,
.L2421:
	ldr	r0, [r4, r6, asl #2]	@ tmp598, <variable>.DPB.fs
	mov	r5, #0	@ tmp599,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #424	@,
	str	r5, [r0, #568]	@ tmp599, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6, asl #2]	@ tmp602, <variable>.DPB.fs
	add	r0, lr, #8	@, tmp602,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp609, <variable>.DPB.fs
	ldr	r1, [r7, #508]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp613, <variable>.DPB.fs
	ldr	ip, [r7, #448]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #544]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp617, <variable>.DPB.fs
	ldr	ip, [r7, #460]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #556]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ temp.6739, <variable>.DPB.fs
	ldr	r1, [r7, #476]	@ temp.6740, <variable>.pic_type
	str	r1, [r3, #572]	@ temp.6740, <variable>.pic_type
	str	r1, [r3, #528]	@ temp.6740, <variable>.bottom_field.pic_type
	ldrb	r1, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	ip, [r4, r6, asl #2]	@ temp.6741, <variable>.DPB.fs
	cmp	r1, #1	@ <variable>.mode_skip_flag,
	moveq	r1, r2	@ iftmp.485,
	movne	r1, r5	@ iftmp.485,
	strb	r1, [ip, #3]	@ iftmp.485, <variable>.mode_skip_flag
	ldr	r1, [r7, #440]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6744
	movne	r3, r0	@, ret.6744
	movwne	r2, #2146	@,
	movne	r0, r5	@, tmp599
	beq	.L2403	@,
.L2440:
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.36917,
	b	.L2404	@
.L2405:
	ldr	r1, [r7, #440]	@ temp.6600, <variable>.frame_store
	mov	r2, #1	@ tmp313,
	str	r1, [r4, r6, asl #2]	@ temp.6600, <variable>.DPB.fs
	strb	r2, [r1, #468]	@ tmp313, <variable>.top_field.structure
	ldr	r0, [r4, r6, asl #2]	@ tmp317, <variable>.DPB.fs
	ldr	r5, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [r0, #472]	@ <variable>.frame_store, <variable>.top_field.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp321, <variable>.DPB.fs
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	lr, [ip, #469]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp326, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #470]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r0, [r4, r6, asl #2]	@ tmp331, <variable>.DPB.fs
	ldr	r5, [r7, #468]	@ <variable>.toppoc, <variable>.toppoc
	str	r5, [r0, #484]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	ip, [r4, r6, asl #2]	@ tmp335, <variable>.DPB.fs
	ldr	lr, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [ip, #492]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp339, <variable>.DPB.fs
	ldr	r1, [r7, #484]	@ <variable>.err_level, <variable>.err_level
	str	r1, [r3, #488]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	r0, [r4, r6, asl #2]	@ temp.6613, <variable>.DPB.fs
	ldr	r5, [r0, #488]	@ temp.6614, <variable>.top_field.err_level
	str	r5, [r0, #576]	@ temp.6614, <variable>.err_level
	str	r5, [r0, #452]	@ temp.6614, <variable>.frame.err_level
	ldr	ip, [r4, r6, asl #2]	@ tmp345, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [ip, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp350, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp313, <variable>.is_used
	ldr	r3, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r4, r6, asl #2]	@ tmp355, <variable>.DPB.fs
	ldrb	r5, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r0, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	ip, [r7, #440]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp361, <variable>.DPB.fs
	ldr	r1, [ip, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [lr, #564]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2407	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2407	@,
.L2408:
	ldr	lr, [r4, r6, asl #2]	@ tmp378, <variable>.DPB.fs
	mov	r5, #0	@ tmp379,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #424	@,
	str	r5, [lr, #568]	@ tmp379, <variable>.MbaffFrameFlag
	ldr	r0, [r4, r6, asl #2]	@ tmp382, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp382,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp389, <variable>.DPB.fs
	ldr	r1, [r7, #508]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #580]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp393, <variable>.DPB.fs
	ldr	ip, [r7, #448]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #544]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp397, <variable>.DPB.fs
	ldr	ip, [r7, #460]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #556]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp401, <variable>.DPB.fs
	ldr	r1, [r7, #476]	@ <variable>.pic_type, <variable>.pic_type
	str	r1, [r3, #572]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp405, <variable>.DPB.fs
	ldrb	ip, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, r2	@ <variable>.mode_skip_flag,
	movne	r1, #0	@, tmp407
	moveq	r1, #1	@, tmp407
	strb	r1, [r3, #3]	@ tmp407, <variable>.mode_skip_flag
	ldr	r1, [r7, #440]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6643
	beq	.L2403	@,
	mov	r3, r0	@, ret.6643
	movw	r2, #2051	@,
	mov	r0, r5	@, tmp379
	b	.L2440	@
.L2442:
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #0	@ <variable>.is_short_term,
	beq	.L2400	@,
	b	.L2399	@
.L2420:
	ldr	r3, [r4, r6, asl #2]	@ tmp588, <variable>.DPB.fs
	mov	r1, #2	@ tmp589,
	strb	r1, [r3, #2]	@ tmp589, <variable>.is_reference
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	ldreq	ip, [r4, r6, asl #2]	@ tmp594, <variable>.DPB.fs
	ldreq	r1, [r7, #452]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [ip, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2421	@
.L2407:
	ldr	ip, [r4, r6, asl #2]	@ tmp368, <variable>.DPB.fs
	mov	lr, #1	@ tmp369,
	strb	lr, [ip, #2]	@ tmp369, <variable>.is_reference
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, lr	@ <variable>.is_long_term,
	ldreq	r3, [r4, r6, asl #2]	@ tmp374, <variable>.DPB.fs
	ldreq	lr, [r7, #452]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	lr, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2408	@
.L2431:
	ldr	r1, [r4, r6, asl #2]	@ temp.6687, <variable>.DPB.fs
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	ip, lr, #2	@ tmp712, <variable>.is_reference,
	strb	ip, [r1, #2]	@ tmp712, <variable>.is_reference
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, #1	@ <variable>.is_long_term,
	ldreq	r3, [r4, r6, asl #2]	@ tmp717, <variable>.DPB.fs
	ldreq	ip, [r7, #452]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2432	@
.L2416:
	ldr	r1, [r4, r6, asl #2]	@ temp.6591, <variable>.DPB.fs
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	ip, lr, #1	@ tmp496, <variable>.is_reference,
	strb	ip, [r1, #2]	@ tmp496, <variable>.is_reference
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, #1	@ <variable>.is_long_term,
	ldreq	r3, [r4, r6, asl #2]	@ tmp501, <variable>.DPB.fs
	ldreq	ip, [r7, #452]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r3, #552]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2417	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
.LFB1399:
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
	movw	ip, #50976	@ tmp183,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #50979	@ tmp180,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r5, #19816	@ tmp179,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	movw	r3, #19812	@ tmp177,
	cmp	r6, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp182
	moveq	r2, #1	@, tmp182
	mov	r6, #0	@ tmp178,
	cmp	r0, #0	@ <variable>.CurrPic.state,
	str	r2, [r4, r5]	@ tmp182, <variable>.CurrPOC.last_pic_bottom_field
	str	r6, [r4, r3]	@ tmp178, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2525	@,
	movw	r5, #54096	@ tmp190,
	movw	r2, #54184	@ tmp188,
	ldr	r0, [r4, r5]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movw	r3, #54180	@ tmp187,
	ldr	lr, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r0, #2	@ <variable>.OldDecMode,
	str	lr, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevStorePicCounter
	beq	.L2526	@,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #12]	@ prephitmp.6779, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ prephitmp.6779,
	ble	.L2527	@,
.L2449:
	movw	r0, #50978	@ tmp206,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	ip, #0	@ <variable>.CurrPic.non_existing,
	beq	.L2528	@,
.L2451:
	cmp	r2, #2	@ prephitmp.6779,
	beq	.L2529	@,
.L2450:
	movw	lr, #51432	@ tmp294,
	ldr	r5, [r4, lr]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2468	@,
	movw	r3, #54160	@ tmp296,
	movw	r2, #51460	@ tmp297,
	ldr	r3, [r4, r3]	@ D.37608, <variable>.ref_error_thr
	ldr	r2, [r4, r2]	@ D.37609, <variable>.CurrPic.err_level
	cmp	r3, r2	@ D.37608, D.37609
	bcs	.L2471	@,
	movw	r6, #50978	@ tmp298,
	ldrb	r5, [r4, r6]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r5, #0	@ <variable>.CurrPic.non_existing,
	beq	.L2530	@,
.L2471:
	mov	r0, r4	@, pH264Ctx
	bl	Marking	@
	subs	r2, r0, #0	@ ret.6838,
	bne	.L2531	@,
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
.L2468:
	movw	r5, #50977	@ tmp307,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r6, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2532	@,
.L2474:
	movw	r6, #51432	@ tmp326,
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2533	@,
	movw	sl, #26616	@ tmp354,
	ldr	r3, [r4, sl]	@ prephitmp.6878, <variable>.DPB.size
.L2484:
	movw	r7, #26620	@ tmp417,
	add	r8, r4, #26368	@ ivtmp.6803, pH264Ctx,
	ldr	r1, [r4, r7]	@ prephitmp.6781, <variable>.DPB.used_size
	add	r6, r8, #56	@ ivtmp.6803, ivtmp.6803,
	movw	sl, #51436	@ tmp424,
	movw	r8, #51432	@ tmp423,
	cmp	r1, r3	@ prephitmp.6781, prephitmp.6878
	bcc	.L2534	@,
.L2496:
	movls	r3, r1	@ prephitmp.6878, prephitmp.6781
	strhi	r3, [r4, r7]	@ prephitmp.6878, <variable>.DPB.used_size
	cmp	r3, #0	@ prephitmp.6878,
	moveq	r1, r3	@ pos.6873, prephitmp.6878
	mvneq	r2, #-2147483648	@ min_poc,
	beq	.L2490	@,
	tst	r3, #1	@ prephitmp.6878,
	mov	r1, #0	@ pos.6873,
	mov	r0, r6	@ ivtmp.6803, ivtmp.6803
	mov	lr, r1	@ pos, pos.6873
	mvn	ip, #-2147483648	@ min_poc.6876,
	bne	.L2491	@,
	ldr	r2, [r6, #0]	@ D.43996, <variable>.DPB.fs
	ldr	ip, [r2, #556]	@ min_poc, <variable>.poc
	cmn	ip, #-2147483647	@ min_poc,
	bge	.L2507	@,
	ldrb	r0, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2507	@,
	add	r0, r6, #4	@ ivtmp.6803, ivtmp.6803,
	mov	lr, #1	@ pos,
.L2491:
	ldr	r5, [r0, #0]	@ D.43996, <variable>.DPB.fs
	ldr	r2, [r5, #556]	@ min_poc, <variable>.poc
	cmp	r2, ip	@ min_poc, min_poc.6876
	bge	.L2488	@,
.L2535:
	ldrb	r5, [r5, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r5, #0	@ <variable>.is_in_dpb,
	movne	r1, lr	@ pos.6873, pos
	beq	.L2488	@,
	add	lr, lr, #1	@ tmp428, pos,
	add	r5, r0, #4	@ tmp429, ivtmp.6803,
	cmp	lr, r3	@ tmp428, prephitmp.6878
	beq	.L2490	@,
.L2536:
	ldr	r0, [r0, #4]	@ D.43996, <variable>.DPB.fs
	ldr	ip, [r0, #556]	@ min_poc, <variable>.poc
	cmp	ip, r2	@ min_poc, min_poc
	bge	.L2509	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2509	@,
	mov	r1, lr	@ pos.6873, tmp428
.L2524:
	add	r0, r5, #4	@ ivtmp.6803, tmp429,
	add	lr, lr, #1	@ pos, tmp428,
	ldr	r5, [r0, #0]	@ D.43996, <variable>.DPB.fs
	ldr	r2, [r5, #556]	@ min_poc, <variable>.poc
	cmp	r2, ip	@ min_poc, min_poc.6876
	blt	.L2535	@,
.L2488:
	add	lr, lr, #1	@ tmp428, pos,
	mov	r2, ip	@ min_poc, min_poc.6876
	cmp	lr, r3	@ tmp428, prephitmp.6878
	add	r5, r0, #4	@ tmp429, ivtmp.6803,
	bne	.L2536	@,
.L2490:
	ldr	lr, [r4, r8]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2492	@,
	ldr	ip, [r4, sl]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	cmp	ip, r2	@ <variable>.CurrPic.thispoc, min_poc
	blt	.L2537	@,
.L2492:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret.6853,
	mov	r5, r0	@ ret.6853,
	beq	.L2495	@,
	movw	r2, #26616	@ tmp352,
	ldr	r1, [r4, r7]	@ prephitmp.6781, <variable>.DPB.used_size
	ldr	r3, [r4, r2]	@ prephitmp.6878, <variable>.DPB.size
	cmp	r1, r3	@ prephitmp.6781, prephitmp.6878
	bcs	.L2496	@,
.L2534:
	movw	ip, #51432	@ tmp356,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2497	@,
	movw	r0, #50980	@ tmp358,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L2497	@,
	mov	r5, #26624	@ tmp360,
	ldr	r3, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L2497	@,
	add	r7, r4, #26368	@ ivtmp.6798, pH264Ctx,
	movw	lr, #51424	@ tmp413,
	add	r3, r7, #120	@ ivtmp.6798, ivtmp.6798,
	mov	r6, r2	@ tmp414, i.6858
	movw	r7, #52656	@ tmp415,
	b	.L2500	@
.L2498:
	ldr	r1, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.6798, ivtmp.6798,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.6858
	bls	.L2538	@,
.L2500:
	ldr	r1, [r3, #0]	@ D.37671, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.6858, i.6858,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	ldr	ip, [r1, #544]	@ <variable>.frame_num, <variable>.frame_num
	cmp	ip, r0	@ <variable>.frame_num, <variable>.CurrPic.frame_num
	bne	.L2498	@,
	strb	r6, [r1, #2]	@ tmp414, <variable>.is_reference
	ldr	r1, [r3, #0]	@ tmp412, <variable>.DPB.fs_ref
	ldrb	r8, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r8, #1	@ <variable>.is_in_dpb,
	streq	r8, [r1, #564]	@ <variable>.is_in_dpb, <variable>.is_displayed
	ldreq	r1, [r3, #0]	@ tmp370, <variable>.DPB.fs_ref
	streqb	r6, [r1, #4]	@ tmp414, <variable>.is_in_dpb
	ldreq	r1, [r3, #0]	@ tmp412, <variable>.DPB.fs_ref
	ldr	r8, [r4, r7]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	ip, [r1, #580]	@ D.37679, <variable>.pmv_address_idc
	add	r0, ip, #13120	@ tmp375, D.37679,
	cmp	ip, r8	@ D.37679, <variable>.TotalPmvNum
	add	r0, r0, #26	@ tmp375, tmp375,
	strne	r6, [r4, r0, asl #2]	@ tmp414, <variable>.PmvStoreUsedFlag
	strne	r8, [r1, #580]	@ <variable>.TotalPmvNum, <variable>.pmv_address_idc
	b	.L2498	@
.L2528:
	movw	r5, #50979	@ tmp209,
	movw	lr, #51416	@ tmp208,
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ temp.6813, <variable>.CurrPic.structure
	ldr	r5, [r4, lr]	@ pFrameStore, <variable>.CurrPic.frame_store
	sub	r6, r1, #1	@ tmp210, temp.6813,
	uxtb	r3, r6	@ tmp211, tmp210
	cmp	r3, #1	@ tmp211,
	movhi	r0, #0	@, one_fld_flg
	movls	r0, #1	@, one_fld_flg
	cmp	r1, #0	@ temp.6813,
	bne	.L2539	@,
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2540	@,
.L2453:
	cmp	r1, #0	@ temp.6813,
	beq	.L2456	@,
	ldrb	lr, [r5, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #0	@ <variable>.is_used,
	beq	.L2451	@,
.L2456:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2541	@,
.L2457:
	add	r3, r4, #50944	@ pOutPic, pH264Ctx,
	add	r8, r3, #32	@ pOutPic, pOutPic,
.L2458:
	ldrb	r1, [r8, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r1, #0	@ <variable>.structure,
	beq	.L2459	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r3, #1	@ <variable>.field_pair_flag,
	beq	.L2542	@,
.L2459:
	ldr	r7, [r8, #484]	@ <variable>.err_level, <variable>.err_level
	str	r7, [r5, #576]	@ <variable>.err_level, <variable>.err_level
.L2460:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pOutFrameStore
	movw	r7, #54168	@ tmp244,
	bl	GetImagePara	@
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldrd	r2, [r8, #32]	@ <variable>.fs_image.Usertag, pOutPic,
	mov	r6, r0	@ pImg,
	ldrd	r0, [r8, #40]	@, pOutPic,
	strd	r2, [r6, #16]	@ <variable>.fs_image.Usertag, pImg,
	strd	r0, [r6, #24]	@, pImg,
	ldrd	r0, [r8, #24]	@ <variable>.fs_image.PTS, pOutPic,
	strd	r0, [r6, #8]	@ <variable>.fs_image.PTS, pImg,
	ldr	r3, [r5, #576]	@ D.37568, <variable>.err_level
	cmp	r3, #0	@ D.37568,
	str	r3, [r6, #160]	@ D.37568, <variable>.error_level
	beq	.L2461	@,
	ldr	r8, [r6, #120]	@ <variable>.format, <variable>.format
	ands	r8, r8, #3	@ tmp250, <variable>.format,
	beq	.L2543	@,
.L2462:
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r1, r3	@ <variable>.s32OutErrThr, D.37568
	bls	.L2464	@,
.L2461:
	movw	r7, #54168	@ tmp258,
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r6, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L2465	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2465:
	mov	r1, r6	@, pImg
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r1, #54176	@ tmp271,
	ldr	ip, [r4, r1]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	movw	r3, #54192	@ tmp267,
	ldr	r0, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	movw	r2, #54176	@ tmp277,
	cmp	ip, #2	@ <variable>.FirstFrameDisplayed,
	mov	r1, #2	@ tmp278,
	add	r6, r0, #2	@ tmp270, <variable>.PicOutCounter,
	str	r6, [r4, r3]	@ tmp270, <variable>.PicOutCounter
	movne	r3, #1	@ tmp276,
	strne	r3, [r5, #560]	@ tmp276, <variable>.eFoState
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	str	r1, [r4, r2]	@ tmp278, <variable>.FirstFrameDisplayed
	ldr	r2, [lr, #12]	@ prephitmp.6779, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ prephitmp.6779,
	bne	.L2450	@,
.L2529:
	movw	r6, #51432	@ tmp280,
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2468	@,
	mov	r0, r4	@, pH264Ctx
	movw	r5, #26620	@ tmp282,
	bl	SimpleSlideDPB	@
	add	r0, r4, #50944	@, pH264Ctx,
	add	r2, r0, #32	@,,
	ldr	r1, [r4, r5]	@, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	subs	r6, r0, #0	@ ret.6829,
	bne	.L2544	@,
	ldr	r1, [r4, r5]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	add	ip, r1, #1	@ tmp292, <variable>.DPB.used_size,
	str	ip, [r4, r5]	@ tmp292, <variable>.DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r2, r6	@, ret.6829
	movw	r1, #:lower16:.LC79	@,
	mov	r3, #3184	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	mov	r5, #0	@ ret,
	b	.L2502	@
.L2507:
	mvn	ip, #-2147483648	@ min_poc,
	mov	lr, #1	@ pos,
	add	r0, r6, #4	@ ivtmp.6803, ivtmp.6803,
	b	.L2491	@
.L2533:
	mov	r3, #26624	@ tmp329,
	movw	r2, #26628	@ tmp330,
	ldr	lr, [r4, r3]	@ D.37643, <variable>.DPB.ref_frames_in_buffer
	movw	r5, #26616	@ tmp328,
	ldr	ip, [r4, r2]	@ D.37644, <variable>.DPB.ltref_frames_in_buffer
	ldr	r3, [r4, r5]	@ prephitmp.6878, <variable>.DPB.size
	add	r2, ip, lr	@ tmp331, D.37644, D.37643
	cmp	r3, r2	@ prephitmp.6878, tmp331
	bhi	.L2484	@,
	mov	r2, #3264	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	str	lr, [sp, #0]	@ D.37643,
	str	ip, [sp, #4]	@ D.37644,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3267	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2509:
	mov	ip, r2	@ min_poc, min_poc
	b	.L2524	@
.L2495:
	mov	r3, r0	@, ret.6853
	movw	r2, #3292	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC79	@,
	mov	r2, r5	@, ret.6853
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3293	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L2445:
	movw	r6, #51416	@ tmp398,
	movw	r5, #54168	@ tmp395,
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r5, #0	@ ret,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC80	@,
	movw	r2, #3340	@,
	movt	r1, #:upper16:.LC80	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, #0	@ tmp402,
	strb	ip, [r1, #4]	@ tmp402, <variable>.is_in_dpb
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	ip, [r0, #1]	@ tmp402, <variable>.is_used
.L2502:
	movw	lr, #50976	@ tmp408,
	mov	r2, #0	@ tmp409,
	mov	r0, r5	@, ret
	strb	r2, [r4, lr]	@ tmp409, <variable>.CurrPic.state
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2527:
	movw	r5, #54176	@ tmp204,
	ldr	lr, [r4, r5]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	lr, #2	@ <variable>.FirstFrameDisplayed,
	bne	.L2449	@,
	b	.L2450	@
.L2532:
	movw	ip, #51416	@ tmp309,
	movw	r3, #52032	@ tmp310,
	ldr	r0, [r4, ip]	@ D.37624, <variable>.CurrPic.frame_store
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, lr	@ D.37624, <variable>.pDirectOutBuf
	beq	.L2545	@,
.L2475:
	movw	r5, #26620	@ tmp312,
	ldr	lr, [r4, r5]	@ temp.6874, <variable>.DPB.used_size
	cmp	lr, #0	@ temp.6874,
	beq	.L2474	@,
	movw	r3, #26424	@ tmp313,
	ldr	r2, [r4, r3]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r0, r2	@ D.37624, <variable>.DPB.fs
	moveq	r1, #0	@ i,
	beq	.L2478	@,
	tst	lr, #1	@ temp.6874,
	add	r3, r4, #26368	@ tmp325, pH264Ctx,
	add	r2, r3, #60	@ ivtmp.6808, tmp325,
	mov	r1, #0	@ i,
	bne	.L2480	@,
	ldr	ip, [r2, #0]	@ D.37634, <variable>.DPB.fs
	mov	r1, #1	@ i,
	add	r2, r3, #64	@ ivtmp.6808, tmp325,
	cmp	r0, ip	@ D.37624, D.37634
	bne	.L2480	@,
	b	.L2478	@
.L2517:
	ldr	r5, [r2, #4]	@ D.37634, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.6808, tmp433,
	cmp	r0, r5	@ D.37624, D.37634
	beq	.L2478	@,
.L2480:
	add	r1, r1, #1	@ i, i,
	mov	r3, r2	@ tmp433, ivtmp.6808
	cmp	r1, lr	@ i, temp.6874
	bcs	.L2474	@,
	ldr	ip, [r3], #4	@ D.37634, <variable>.DPB.fs
	cmp	r0, ip	@ D.37624, D.37634
	bne	.L2517	@,
.L2478:
	add	r0, r4, #50944	@, pH264Ctx,
	add	r2, r0, #32	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@ ret.6842,
	mov	r5, r0	@ ret.6842,
	beq	.L2546	@,
	mov	r0, r4	@, pH264Ctx
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r1, #:lower16:.LC79	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3251	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2502	@
.L2539:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r3, #0	@ <variable>.is_used,
	moveq	ip, r0	@, tmp219, one_fld_flg
	orrne	ip, r0, #1	@,, tmp219, one_fld_flg
	cmp	ip, #0	@ tmp219,
	beq	.L2451	@,
	cmp	r0, #0	@ one_fld_flg,
	beq	.L2453	@,
.L2540:
	movw	r3, #54176	@ tmp220,
	ldr	ip, [r4, r3]	@ temp.6814, <variable>.FirstFrameDisplayed
	cmp	ip, #0	@ temp.6814,
	bne	.L2454	@,
	add	r0, r4, #51456	@, pH264Ctx,
	add	r6, r4, #50944	@, pH264Ctx,
	add	r1, r6, #32	@,,
	mov	r2, #1	@ tmp222,
	add	r0, r0, #32	@,,
	str	r2, [r4, r3]	@ tmp222, <variable>.FirstFrameDisplayed
	mov	r2, #512	@,
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ prephitmp.6779, <variable>.s32DecOrderOutput
	b	.L2451	@
.L2526:
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	movw	r3, #52656	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	movw	r3, #3058	@,
	mov	r5, r0	@ ret,
	movw	r0, #51484	@ tmp193,
	ldr	r1, [r4, r0]	@ D.37519, <variable>.CurrPic.pmv_address_idc
	mov	r2, r5	@, ret
	cmp	r1, ip	@ D.37519, <variable>.TotalPmvNum
	strne	ip, [r4, r0]	@ <variable>.TotalPmvNum, <variable>.CurrPic.pmv_address_idc
	addne	r1, r1, #13120	@ tmp196, D.37519,
	mov	r0, #14	@,
	addne	r1, r1, #26	@ tmp196, tmp196,
	strne	r6, [r4, r1, asl #2]	@ tmp178, <variable>.PmvStoreUsedFlag
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
.L2448:
	cmn	r5, #1	@ ret,
	bne	.L2502	@,
	b	.L2445	@
.L2454:
	cmp	ip, #1	@ temp.6814,
	bne	.L2453	@,
.L2455:
	add	r5, r4, #51456	@ pOutPic, pH264Ctx,
	movw	ip, #51928	@ tmp234,
	add	r8, r5, #32	@ pOutPic, pOutPic,
	ldr	r5, [r4, ip]	@ pOutFrameStore, <variable>.LastPic.frame_store
	b	.L2458	@
.L2538:
	movw	r5, #26620	@ tmp383,
	ldr	r1, [r4, r5]	@ prephitmp.6781, <variable>.DPB.used_size
.L2497:
	add	r2, r4, #50944	@, pH264Ctx,
	mov	r0, r4	@, pH264Ctx
	add	r2, r2, #32	@,,
	bl	InsertFrmInDPB	@
	movw	r2, #26620	@ tmp387,
	ldr	r1, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	r3, #52028	@ tmp386,
	str	r1, [r4, r3]	@ <variable>.DPB.used_size, <variable>.PrevPic.Dpb_pos
	subs	r3, r0, #0	@ ret.6864,
	bne	.L2547	@,
	add	lr, r1, #1	@ tmp394, <variable>.DPB.used_size,
	mov	r0, r4	@, pH264Ctx
	str	lr, [r4, r2]	@ tmp394, <variable>.DPB.used_size
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2502	@
.L2537:
	movw	r1, #54096	@ tmp342,
	ldr	r0, [r4, r1]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r0, #2	@ <variable>.OldDecMode,
	beq	.L2548	@,
.L2493:
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2549	@,
.L2494:
	movw	r1, #:lower16:.LC79	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3286	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2448	@
.L2541:
	movw	r8, #54176	@ tmp231,
	ldr	r7, [r4, r8]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r7, #1	@ <variable>.FirstFrameDisplayed,
	bne	.L2457	@,
	b	.L2455	@
.L2545:
	cmp	r0, #0	@ D.37624,
	beq	.L2475	@,
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2550	@,
.L2479:
	movw	r1, #:lower16:.LC79	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3233	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2448	@
.L2543:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC82	@,
	movw	r2, #3123	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp254,
	movt	ip, #:upper16:g_event_report	@ tmp254,
	ldr	r3, [ip, #0]	@ g_event_report.525, g_event_report
	cmp	r3, #0	@ g_event_report.525,
	beq	.L2463	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r8	@, tmp250
	mov	r1, #111	@,
	blx	r3	@ g_event_report.525
.L2463:
	ldr	r3, [r6, #160]	@ D.37568, <variable>.error_level
	cmp	r3, #0	@ D.37568,
	bne	.L2462	@,
	b	.L2461	@
.L2542:
	ldr	r2, [r5, #576]	@ <variable>.err_level, <variable>.err_level
	add	lr, r3, #2	@ tmp238, tmp238,
	strb	lr, [r5, #1]	@ tmp238, <variable>.is_used
	ldr	r0, [r8, #484]	@ <variable>.err_level, <variable>.err_level
	add	r6, r2, r0	@ tmp242, <variable>.err_level, <variable>.err_level
	str	r6, [r5, #576]	@ tmp242, <variable>.err_level
	b	.L2460	@
.L2548:
	movw	r5, #50979	@ tmp344,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	movwne	r3, #51416	@ tmp347,
	ldrne	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	addne	r3, r3, #620	@ tmp346, tmp346,
	strne	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.pLastFieldBuf
	b	.L2493	@
.L2531:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3208	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2525:
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r3, #3040	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2549:
	movw	r1, #:lower16:.LC80	@,
	movw	r2, #3284	@,
	movt	r1, #:upper16:.LC80	@,
	mov	r3, r5	@, ret
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L2494	@
.L2530:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp301,
	movt	r0, #:upper16:g_event_report	@ tmp301,
	ldr	r3, [r0, #0]	@ g_event_report.6835, g_event_report
	cmp	r3, #0	@ g_event_report.6835,
	beq	.L2472	@,
	movw	ip, #54168	@ tmp302,
	mov	r2, r5	@, <variable>.CurrPic.non_existing
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #104	@,
	blx	r3	@ g_event_report.6835
.L2472:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r3, #3200	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2547:
	movw	r2, #3327	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r3, #3328	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2550:
	mov	r0, r6	@, <variable>.CurrPic.field_pair_flag
	movw	r1, #:lower16:.LC80	@,
	movw	r2, #3230	@,
	movt	r1, #:upper16:.LC80	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	b	.L2479	@
.L2464:
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	movw	r5, #54168	@ tmp273,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3146	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2546:
	mov	r3, r0	@, ret.6842
	movw	r2, #3245	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, ret.6842
	movw	r1, #:lower16:.LC79	@,
	movw	r3, #3246	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
.L2544:
	mov	r3, r6	@, ret.6829
	movw	r2, #3176	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC79	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r3, #3177	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2445	@
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.align	2
	.global	H264DEC_VDMPostProc
	.type	H264DEC_VDMPostProc, %function
H264DEC_VDMPostProc:
	.fnstart
.LFB1487:
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
	cmp	r5, #0	@ <variable>.StartMode,
	bne	.L2552	@,
	movw	r3, #51460	@ tmp142,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	subs	r6, r0, #0	@ ret,
	bne	.L2558	@,
	movw	lr, #52660	@ tmp151,
	mov	r2, #1	@ tmp152,
	mov	r0, r6	@ D.43676, ret
	str	r2, [r4, lr]	@ tmp152, <variable>.AllowStartDec
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2552:
	movw	r3, #51460	@ tmp153,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	subs	r2, r0, #0	@ ret.6905,
	bne	.L2559	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6906,
	bne	.L2560	@,
.L2556:
	movw	r0, #13576	@ tmp159,
	movw	ip, #22328	@ tmp158,
	ldr	r3, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r1, #52660	@ tmp156,
	movw	r2, #:lower16:88888	@ tmp162,
	movt	r2, #:upper16:88888	@ tmp162,
	mov	lr, #0	@ tmp157,
	str	lr, [r4, r1]	@ tmp157, <variable>.AllowStartDec
	str	r3, [r4, ip]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	ip, #22336	@ tmp161,
	str	r2, [r4, ip]	@ tmp162, <variable>.PrevSlice.frame_num
	movw	r3, #22321	@ tmp166,
	movw	r2, #22332	@ tmp169,
	mov	r1, #2	@ tmp167,
	mov	ip, #7	@ tmp170,
	strb	r1, [r4, r3]	@ tmp167, <variable>.PrevSlice.bottom_field_flag
	str	ip, [r4, r2]	@ tmp170, <variable>.PrevSlice.nal_ref_idc
	movw	r3, #22322	@ tmp171,
	movw	r2, #22344	@ tmp174,
	mov	r1, #32	@ tmp172,
	mov	ip, #3	@ tmp175,
	strb	r1, [r4, r3]	@ tmp172, <variable>.PrevSlice.nal_unit_type
	str	ip, [r4, r2]	@ tmp175, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22348	@ tmp176,
	movw	ip, #22320	@ tmp163,
	mvn	r1, #0	@ tmp177,
	strb	lr, [r4, ip]	@ tmp157, <variable>.PrevSlice.field_pic_flag
	movw	ip, #22356	@ tmp180,
	str	r1, [r4, r3]	@ tmp177, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r3, #22360	@ tmp182,
	movw	r1, #22352	@ tmp178,
	mov	r0, lr	@ D.43676, tmp157
	str	lr, [r4, r1]	@ tmp157, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r2, #:lower16:92928	@ tmp183,
	str	lr, [r4, ip]	@ tmp157, <variable>.PrevSlice.delta_pic_order_cnt
	movt	r2, #:upper16:92928	@ tmp183,
	str	r2, [r4, r3]	@ tmp183, <variable>.PrevSlice.first_mb_in_slice
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2558:
	movw	r7, #51416	@ tmp146,
	movw	r1, #54168	@ tmp143,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [ip, #540]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r2, r6	@, ret
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r4, r7]	@ <variable>.StartMode, <variable>.CurrPic.frame_store
	mvn	r0, #0	@ D.43676,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2560:
	movw	r1, #:lower16:.LC88	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	b	.L2556	@
.L2559:
	movw	r1, #:lower16:.LC87	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6906,
	beq	.L2556	@,
	b	.L2560	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
.LFB1434:
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
	ldr	r5, [r0, r3]	@ D.39307, <variable>.CurrMarkIdx
	movw	r1, #2004	@ tmp159,
	movw	ip, #13605	@ tmp162,
	movw	lr, #26620	@ tmp171,
	ldrb	r2, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mul	r9, r1, r5	@ tmp158, tmp159, D.39307
	cmp	r2, #1	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	ldr	r5, [r0, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	lr, #20692	@ tmp151,
	moveq	r2, #2	@,
	movne	r2, #0	@,
	add	r7, r9, r0	@ tmp160, tmp158, pH264Ctx
	str	r2, [fp, #-56]	@, %sfp
	add	r6, r7, #22272	@ tmp161, tmp160,
	movw	r9, #51420	@ tmp164,
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
	ldr	r2, [r4, r0]	@ D.39300, <variable>.CurrSPS.log2_max_frame_num_minus4
	ldr	r0, [r4, ip]	@ D.39303, <variable>.CurrSlice.prev_frame_num
	str	r1, [fp, #-64]	@, %sfp
	ldr	r3, [r4, r6]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r3, [fp, #-60]	@, %sfp
	beq	.L2574	@,
	add	r1, r2, #4	@ tmp174, D.39300,
	mov	r5, #1	@ tmp175,
	mov	lr, r5, asl r1	@, tmp175,
	add	r0, r0, #1	@, D.39303,
	str	lr, [fp, #-52]	@, %sfp
	mov	r1, lr	@,
	bl	__aeabi_uidivmod	@
	mov	r2, #0	@ tmp183,
	mov	r0, #2	@,
	str	r2, [r4, r7]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	str	r2, [r4, r6]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r5, r1	@ UnusedShortTermFrameNum,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC91	@,
	ldr	r2, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC91	@,
	mov	r3, r5	@, UnusedShortTermFrameNum
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r0, r5	@, UnusedShortTermFrameNum
	ble	.L2566	@,
	movw	r6, #51416	@ tmp262,
	movw	sl, #16488	@ tmp267,
	b	.L2572	@
.L2568:
	movw	r1, #50980	@ tmp240,
	mov	r0, r4	@, pH264Ctx
	strb	r8, [r4, r1]	@ tmp241, <variable>.CurrPic.is_long_term
	bl	StorePicInDPB	@
	ldr	r1, [fp, #-52]	@, %sfp
	subs	r3, r0, #0	@ ret.6936,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	bne	.L2575	@,
.L2569:
	movw	lr, #20688	@ tmp249,
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, r1	@, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	ble	.L2566	@,
.L2572:
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	AllocFrameStore	@
	mov	r8, #0	@ tmp241,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	subs	r7, r0, #0	@ ret,
	mov	r0, #2	@,
	bne	.L2576	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	ip, #50982	@,
	mov	r3, #1	@ tmp196,
	strb	r3, [r4, ip]	@ tmp196, <variable>.CurrPic.nal_unit_type
	movw	r0, #51424	@,
	str	r5, [r1, #544]	@ UnusedShortTermFrameNum, <variable>.frame_num
	movw	r1, #51432	@,
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r4, r0]	@ UnusedShortTermFrameNum, <variable>.CurrPic.frame_num
	str	r5, [r2, #444]	@ UnusedShortTermFrameNum, <variable>.frame.pic_num
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r4, r1]	@, <variable>.CurrPic.nal_ref_idc
	str	r7, [r0, #440]	@ ret, <variable>.frame.long_term_pic_num
	movw	r0, #50978	@,
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r2, #564]	@ tmp196, <variable>.is_displayed
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r7, [ip, #4]	@ ret, <variable>.is_in_dpb
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r1, #0]	@ tmp196, <variable>.non_existing
	ldr	r2, [r4, r9]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	strb	r3, [r4, r0]	@ tmp196, <variable>.CurrPic.non_existing
	strb	r7, [r2, #3]	@ ret, <variable>.adaptive_ref_pic_marking_mode_flag
	ldr	r3, [r4, sl]	@ <variable>.CurrSPS.pic_order_cnt_type, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r3, #0	@ <variable>.CurrSPS.pic_order_cnt_type,
	beq	.L2568	@,
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
	movw	r1, #51436	@ tmp228,
	str	r0, [r4, r1]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	r0, #51440	@ tmp231,
	str	r2, [r4, r0]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r2, #51444	@ tmp234,
	movw	r1, #50980	@ tmp240,
	str	r3, [r4, r2]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	r3, #51448	@ tmp237,
	strb	r8, [r4, r1]	@ tmp241, <variable>.CurrPic.is_long_term
	str	ip, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	ldr	r1, [fp, #-52]	@, %sfp
	subs	r3, r0, #0	@ ret.6936,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	beq	.L2569	@,
.L2575:
	ldr	ip, [fp, #-64]	@, %sfp
	movw	r0, #19836	@ tmp243,
	movw	lr, #19840	@ tmp244,
	movw	r2, #51420	@ tmp246,
	ldr	r2, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	ip, [r4, r0]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, r8	@, tmp241
	ldr	r1, [fp, #-60]	@, %sfp
	str	r1, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r1, #:lower16:.LC94	@,
	ldr	ip, [fp, #-68]	@, %sfp
	movt	r1, #:upper16:.LC94	@,
	strb	ip, [r2, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r2, #5550	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39321,
	b	.L2565	@
.L2574:
	mov	r0, r5	@, <variable>.DPB.used_size
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39321, <variable>.DPB.used_size
.L2565:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2566:
	ldr	r1, [fp, #-64]	@, %sfp
	movw	lr, #19836	@ tmp255,
	movw	r2, #19840	@ tmp256,
	movw	r0, #51420	@ tmp258,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r0, #0	@ D.39321,
	str	r1, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	ip, [fp, #-60]	@, %sfp
	str	ip, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [fp, #-68]	@, %sfp
	strb	r1, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	b	.L2565	@
.L2576:
	ldr	r0, [fp, #-64]	@, %sfp
	movw	r1, #19836	@ tmp188,
	movw	r2, #19840	@ tmp189,
	movw	ip, #51420	@ tmp191,
	ldr	r3, [r4, ip]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	r0, [r4, r1]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, r8	@, tmp241
	ldr	lr, [fp, #-60]	@, %sfp
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	str	lr, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	ip, [fp, #-68]	@, %sfp
	strb	ip, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39321,
	b	.L2565	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
.LFB1435:
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
	movw	r2, #13584	@ tmp189,
	movw	r5, #20684	@ tmp190,
	ldr	ip, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r8, [r0, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r6, #2208	@ tmp193,
	movw	lr, #50976	@ tmp200,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #13580	@ tmp195,
	ldrb	r0, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mla	r6, r6, r8, ip	@ pPPS, tmp193, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #0	@ <variable>.CurrPic.state,
	movw	r5, #3992	@ tmp198,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp198, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L2578	@,
	movw	r7, #51416	@ tmp202,
	ldr	r3, [r4, r7]	@ D.39383, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.39383,
	beq	.L2579	@,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r8, #0	@ <variable>.is_used,
	beq	.L2647	@,
.L2579:
	movw	r8, #50976	@ tmp215,
	mov	r1, #0	@ tmp216,
	strb	r1, [r4, r8]	@ tmp216, <variable>.CurrPic.state
.L2578:
	mov	r0, r4	@, pH264Ctx
	sub	r1, fp, #48	@,,
	bl	GetReRangeFlag	@
	ldr	r3, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r8, r0	@ D.39391,
	movw	r0, #14332	@ tmp219,
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	cmp	r2, r3	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	beq	.L2648	@,
.L2580:
	add	ip, r4, #13568	@, pH264Ctx,
	mov	r1, #0	@ tmp223,
	add	r0, ip, #20	@,,
	strb	r1, [r5, #24]	@ tmp223, <variable>.is_refreshed
	movw	r2, #3992	@,
	mov	r1, r5	@, pSPS
	bl	memmove	@
.L2581:
	ldr	r2, [fp, #-48]	@ dpb_changed, dpb_changed
	cmp	r2, #0	@ dpb_changed,
	beq	.L2582	@,
	ldr	r3, [r4, #0]	@ D.39403, <variable>.pstExtraData
	ldr	r7, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L2649	@,
.L2583:
	movw	r0, #54128	@ tmp271,
	cmp	r8, #0	@ D.39391,
	ldr	r1, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r2, r1, #1	@ tmp274, <variable>.SeqCnt,
	str	r2, [r4, r0]	@ tmp274, <variable>.SeqCnt
	beq	.L2592	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L2593:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r7, r0, #0	@ ret.7033,
	bne	.L2650	@,
	cmp	r8, #0	@ D.39391,
	bne	.L2651	@,
.L2582:
	movw	r2, #17604	@ tmp302,
	ldr	r1, [r6, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	sl, [r4, r2]	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.CurrPPS.pic_parameter_set_id
	cmp	sl, r1	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.pic_parameter_set_id
	beq	.L2652	@,
.L2596:
	add	lr, r4, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp306,
	mov	r1, r6	@, pPPS
	add	r0, lr, #172	@,,
	strb	r3, [r6, #20]	@ tmp306, <variable>.is_refreshed
	mov	r2, #2208	@,
	bl	memmove	@
.L2597:
	movw	sl, #19812	@ tmp311,
	movw	r1, #16484	@ tmp310,
	ldr	r2, [r4, sl]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	movw	ip, #54096	@ tmp317,
	ldr	sl, [r4, r1]	@ D.39487, <variable>.CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	ldr	r6, [r4, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movwne	r1, #52008	@ tmp315,
	movne	r2, #0	@ tmp314,
	strne	r2, [r4, r1]	@ tmp314, <variable>.PrevPic.frame_num
	movwne	r1, #20688	@ tmp313,
	strne	r2, [r4, r1]	@ tmp314, <variable>.CurrSlice.prev_frame_num
	cmp	r6, #2	@ <variable>.OldDecMode,
	beq	.L2599	@,
	ldr	r7, [r4, #0]	@ temp.7052, <variable>.pstExtraData
	ldr	r0, [r7, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2599	@,
	movw	r8, #20692	@ tmp321,
	movw	r3, #20688	@ tmp322,
	ldr	r6, [r4, r8]	@ prephitmp.7125, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r3]	@ prephitmp.6972, <variable>.CurrSlice.prev_frame_num
	cmp	r6, r8	@ prephitmp.7125, prephitmp.6972
	beq	.L2601	@,
	mov	lr, #1	@ tmp324,
	add	ip, sl, #4	@ tmp323, D.39487,
	mov	sl, lr, asl ip	@ MaxFrameNum, tmp324,
	add	r0, r8, lr	@, prephitmp.6972,
	mov	r1, sl	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.7125,
	beq	.L2601	@,
	ldr	r1, [r7, #436]	@ <variable>.s32MoreGapEnable, <variable>.s32MoreGapEnable
	cmp	r1, #0	@ <variable>.s32MoreGapEnable,
	bne	.L2602	@,
	ldr	r2, [r7, #456]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2653	@,
.L2603:
	cmp	r6, r8	@ prephitmp.7125, prephitmp.6972
	bls	.L2604	@,
	movw	r7, #17560	@ tmp338,
	rsb	r8, r8, r6	@ tmp339, prephitmp.6972, prephitmp.7125
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	ip, r8	@ <variable>.CurrSPS.dpb_size_plus1, tmp339
	bcs	.L2602	@,
	movw	r2, #20672	@ tmp341,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2654	@,
	cmp	r6, #0	@ prephitmp.7125,
	movw	ip, #20688	@ tmp352,
	subeq	r6, sl, #1	@ iftmp.621, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.621, prephitmp.7125,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.621, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7056,
	beq	.L2602	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC95	@,
	movw	r2, #5792	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2653:
	ldr	r0, [r7, #452]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2603	@,
	ldr	r3, [r7, #460]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2603	@,
	ldr	lr, [r7, #440]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r7, lr, #1024	@ tmp336, <variable>.s32FastForwardBackwardSpeed,
	cmp	r7, #2048	@ tmp336,
	bls	.L2603	@,
.L2602:
	movw	r0, #13605	@ tmp373,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r7, #0	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	beq	.L2655	@,
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L2615	@,
.L2599:
	movw	ip, #20692	@ tmp405,
	ldr	r6, [r4, ip]	@ prephitmp.7125, <variable>.CurrSlice.frame_num
.L2601:
	movw	lr, #20704	@ tmp406,
	movw	r3, #19852	@ tmp410,
	ldr	r0, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movwne	r0, #20688	@ tmp408,
	strne	r6, [r4, r0]	@ prephitmp.7125, <variable>.CurrSlice.prev_frame_num
	movwne	r0, #20692	@ tmp409,
	ldrne	r6, [r4, r0]	@ prephitmp.7125, <variable>.CurrSlice.frame_num
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, r3]	@ prephitmp.7125, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret.7075
	bne	.L2656	@,
	movw	r9, #20673	@ tmp451,
	movw	r3, #20692	@ tmp423,
	ldrb	r8, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #20704	@ tmp426,
	ldr	sl, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r6, #19832	@ tmp429,
	cmp	r8, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r1, #20675	@ tmp419,
	ldr	r8, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	lr, #19828	@ tmp432,
	ldr	r2, [r4, r6]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	ip, #19820	@ tmp435,
	movw	r3, #19824	@ tmp438,
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r6, [r4, lr]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	r1, #51424	@ tmp422,
	ldr	lr, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r3, #50982	@ tmp418,
	str	sl, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrPic.frame_num
	movw	sl, #51436	@ tmp428,
	str	r2, [r4, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	r1, #51440	@ tmp431,
	movw	r2, #51448	@ tmp437,
	strb	r7, [r4, r3]	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrPic.nal_unit_type
	str	r6, [r4, r1]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r7, #51432	@ tmp425,
	str	ip, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	movw	r6, #50980	@ tmp446,
	movw	r2, #13606	@ tmp456,
	str	r8, [r4, r7]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	strb	r0, [r4, r6]	@ ret.7075, <variable>.CurrPic.is_long_term
	movw	ip, #17540	@ tmp459,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r7, #51444	@ tmp434,
	movw	r8, #51480	@ tmp449,
	movw	r1, #50976	@ tmp415,
	mov	r3, #1	@ tmp416,
	str	lr, [r4, r7]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	strb	r3, [r4, r1]	@ tmp416, <variable>.CurrPic.state
	mvn	lr, #0	@ tmp450,
	movw	r1, #50981	@ tmp443,
	str	lr, [r4, r8]	@ tmp450, <variable>.CurrPic.stream_base_addr
	movw	sl, #50983	@ tmp412,
	ldr	lr, [r4, ip]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r7, #50978	@ tmp440,
	strb	r0, [r4, r1]	@ ret.7075, <variable>.CurrPic.is_short_term
	strb	r0, [r4, sl]	@ ret.7075, <variable>.CurrPic.mode_skip_flag
	moveq	r1, r3	@ prephitmp.6977, tmp416
	strb	r0, [r4, r7]	@ ret.7075, <variable>.CurrPic.non_existing
	rsb	r0, r6, #2	@ tmp458, <variable>.CurrSPS.frame_mbs_only_flag,
	strneb	r3, [r4, r9]	@ tmp416, <variable>.CurrSlice.field_pic_flag
	movne	r1, #2	@ prephitmp.6977,
	mla	r9, lr, r0, r0	@ tmp462, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp458, tmp458
	movw	r8, #17536	@ tmp475,
	movw	sl, #20673	@ tmp484,
	movw	r6, #51468	@ tmp466,
	mov	r0, r9	@, tmp462
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, r8]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r1, #17580	@ tmp481,
	add	sl, r3, #1	@ temp.7093, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r2, #51472	@ tmp467,
	str	r9, [r4, r2]	@ tmp462, <variable>.CurrPic.frame_height_in_mb
	movw	r8, #50984	@ tmp480,
	movw	r7, #51476	@ tmp478,
	movw	r9, #51464	@ tmp477,
	strb	ip, [r4, r8]	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPic.entropy_coding_mode_flag
	str	sl, [r4, r9]	@ temp.7093, <variable>.CurrPic.pic_width_in_mb
	mul	r1, sl, r0	@ tmp479, temp.7093, tmp465
	str	r0, [r4, r6]	@ tmp465, <variable>.CurrPic.pic_height_in_mb
	str	r1, [r4, r7]	@ tmp479, <variable>.CurrPic.pic_mbs
	movne	r1, #0	@ prephitmp.6978,
	beq	.L2657	@,
.L2621:
	movw	lr, #20704	@ tmp491,
	movw	r7, #50985	@ tmp489,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r2, #26372	@ tmp497,
	strb	r1, [r4, r7]	@ prephitmp.6978, <variable>.CurrPic.MbaffFrameFlag
	movw	r0, #2004	@ tmp500,
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldr	r1, [r4, r2]	@ <variable>.CurrMarkIdx, <variable>.CurrMarkIdx
	movw	r9, #51420	@ tmp496,
	movw	r2, #51000	@ tmp505,
	movwne	r3, #20692	@ tmp494,
	movw	lr, #51016	@ tmp511,
	ldrne	r7, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movwne	r3, #20688	@ tmp493,
	mla	r6, r0, r1, r4	@ tmp503, tmp500, <variable>.CurrMarkIdx, pH264Ctx
	mov	r0, #29	@,
	strne	r7, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r7, #51008	@ tmp508,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC106	@,
	add	ip, r6, #22272	@ tmp504, tmp503,
	movt	r1, #:upper16:.LC106	@,
	add	sl, ip, #92	@ tmp504, tmp504,
	str	sl, [r4, r9]	@ tmp504, <variable>.CurrPic.pMarkPara
	ldrd	r8, [r3, #56]	@, <variable>.pstExtraData,
	add	r6, r4, #50944	@ tmp629, pH264Ctx,
	movw	sl, #51100	@ tmp559,
	strd	r8, [r4, r2]	@, pH264Ctx, tmp505
	ldrd	r8, [r3, #72]	@, <variable>.pstExtraData,
	strd	r8, [r4, r7]	@, pH264Ctx, tmp508
	ldrd	r8, [r3, #88]	@, <variable>.pstExtraData,
	strd	r8, [r4, lr]	@, pH264Ctx, tmp511
	mvn	r9, #0	@,
	mvn	r8, #0	@,
	strd	r8, [r3, #56]	@, <variable>.pstExtraData,
	ldrd	r2, [r2, r4]	@, tmp505, pH264Ctx
	movw	r9, #51112	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, r7]	@, pH264Ctx, tmp508
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	movw	ip, #13606	@ tmp528,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r1, #17540	@ tmp531,
	ldr	r0, [r4, r1]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13644	@ tmp547,
	rsb	r3, r7, #2	@ tmp530, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.vui_seq_parameters.video_format, <variable>.CurrSPS.vui_seq_parameters.video_format
	mov	ip, #14336	@ tmp541,
	movw	r1, #17536	@ tmp523,
	mla	r3, r0, r3, r3	@ tmp534, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp530, tmp530
	ldr	r0, [r4, ip]	@ <variable>.CurrSPS.chroma_format_idc, <variable>.CurrSPS.chroma_format_idc
	movw	r7, #13640	@ tmp536,
	ldr	ip, [r4, r1]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	subs	r0, r0, #1	@ tmp545, <variable>.CurrSPS.chroma_format_idc,
	movne	r0, #1	@ tmp545
	ldr	r1, [r4, r7]	@ <variable>.CurrSPS.vui_seq_parameters.aspect_ratio, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio
	mov	r7, r2, asl #5	@ tmp548, <variable>.CurrSPS.vui_seq_parameters.video_format,
	add	ip, ip, #1	@ tmp524, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	and	r2, r7, #255	@ tmp550, tmp548,
	and	r1, r1, #7	@ dar, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio,
	orr	r7, r2, r0, asl #2	@, tmp551, tmp550, tmp545,
	movw	r0, #51116	@ tmp522,
	mov	ip, ip, asl #4	@ tmp526, tmp524,
	str	ip, [r4, r0]	@ tmp526, <variable>.CurrPic.fs_image.image_width
	movw	ip, #51120	@ tmp527,
	mov	r0, r3, asl #4	@ tmp535, tmp534,
	orr	r3, r7, r1, asl #14	@, tmp553, tmp551, dar,
	str	r0, [r4, ip]	@ tmp535, <variable>.CurrPic.fs_image.image_height
	str	r3, [r4, r9]	@ tmp553, <variable>.CurrPic.fs_image.format
	add	r0, r6, #48	@, tmp629,
	bl	SetAspectRatio	@
	movw	r3, #51416	@ tmp564,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r0, #54128	@ tmp557,
	ldr	r7, [r4, r9]	@ <variable>.CurrPic.fs_image.format, <variable>.CurrPic.fs_image.format
	movw	r2, #50979	@ tmp560,
	ldr	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	movw	r0, #51156	@ tmp556,
	ldrb	r9, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	str	r7, [r1, #128]	@ <variable>.CurrPic.fs_image.format, <variable>.fs_image.format
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	subs	r2, r9, #0	@ tmp562, <variable>.CurrPic.structure,
	movne	r2, #1	@ tmp562
	str	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.CurrPic.fs_image.seq_cnt
	movw	r0, #51132	@ tmp573,
	str	r2, [r4, sl]	@ tmp562, <variable>.CurrPic.fs_image.is_fld_save
	movw	ip, #51136	@ tmp576,
	str	r2, [r1, #116]	@ tmp562, <variable>.fs_image.is_fld_save
	ldr	r9, [r5, #3984]	@ D.39640, <variable>.disp_center_x
	ldr	r7, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r9, [r7, #148]	@ D.39640, <variable>.fs_image.disp_center_x
	str	r9, [r4, r0]	@ D.39640, <variable>.CurrPic.fs_image.disp_center_x
	movw	r0, #51124	@ tmp579,
	ldr	r2, [r5, #3988]	@ D.39642, <variable>.disp_center_y
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [r1, #152]	@ D.39642, <variable>.fs_image.disp_center_y
	str	r2, [r4, ip]	@ D.39642, <variable>.CurrPic.fs_image.disp_center_y
	movw	ip, #51128	@ tmp582,
	ldr	r9, [r5, #3976]	@ D.39644, <variable>.disp_width
	ldr	r7, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r9, [r7, #140]	@ D.39644, <variable>.fs_image.disp_width
	movw	r7, #54168	@,
	str	r9, [r4, r0]	@ D.39644, <variable>.CurrPic.fs_image.disp_width
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r2, [r5, #3980]	@ D.39646, <variable>.disp_height
	str	r2, [r1, #144]	@ D.39646, <variable>.fs_image.disp_height
	ldr	r5, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [r4, ip]	@ D.39646, <variable>.CurrPic.fs_image.disp_height
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #540]	@, <variable>.logic_fs_id
	bl	FSP_GetDispPhyFs	@
	subs	r2, r0, #0	@ pstDecFs,
	beq	.L2623	@,
	ldr	r5, [r4, sl]	@ <variable>.CurrPic.fs_image.is_fld_save, <variable>.CurrPic.fs_image.is_fld_save
	movw	r8, #54168	@,
	mov	r1, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	subs	r3, r5, r1	@, <variable>.CurrPic.fs_image.is_fld_save,
	movne	r3, #1	@
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	bl	FSP_SetStoreType	@
.L2623:
	movw	r2, #52680	@ tmp595,
	add	ip, r4, #52480	@ ivtmp.7013, pH264Ctx,
	ldr	r9, [r4, r2]	@ prephitmp.7123, <variable>.TotalUsrDatNum
	add	r1, r6, #236	@ D.50555, tmp629,
	add	r0, ip, #208	@ ivtmp.7013, ivtmp.7013,
	add	r6, r6, #220	@ ivtmp.7022, tmp629,
	movw	r7, #52684	@ tmp632,
	mov	r5, #0	@ tmp634,
.L2628:
	ldr	r3, [r6, #0]	@ tmp598, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r3, #0	@ tmp598,
	ldrne	r9, [r4, r2]	@ prephitmp.7123, <variable>.TotalUsrDatNum
	beq	.L2658	@,
.L2625:
	add	r6, r6, #4	@ ivtmp.7022, ivtmp.7022,
	cmp	r6, r1	@ ivtmp.7022, D.50555
	bne	.L2628	@,
	cmp	r9, #0	@ prephitmp.7123,
	beq	.L2629	@,
	ble	.L2629	@,
	add	r8, r9, #13120	@ tmp616, prephitmp.7123,
	sub	sl, r9, #1	@ tmp637, prephitmp.7123,
	add	r1, r8, #50	@ tmp616, tmp616,
	and	r9, sl, #1	@ tmp638, tmp637,
	mov	r6, sl	@ uidxpic, tmp637
	movw	r8, #54168	@ tmp630,
	add	r5, r4, r1, asl #2	@, tmp619, pH264Ctx, tmp616,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r7, #0	@ tmp631,
	mov	sl, r5	@ ivtmp.7010, tmp619
	ldr	r1, [sl], #4	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, r7	@ uidxpic,
	str	r7, [sl, #-4]	@ tmp631, <variable>.pUsrDatArray
	ble	.L2629	@,
	cmp	r9, #0	@ tmp638,
	beq	.L2630	@,
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp631, <variable>.pUsrDatArray
	ble	.L2629	@,
.L2630:
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ tmp640, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	sub	r6, r6, #1	@ uidxpic, tmp640,
	bl	FreeUsdByDec	@
	str	r7, [r5, #-4]!	@ tmp631, <variable>.pUsrDatArray
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp631, <variable>.pUsrDatArray
	bgt	.L2630	@,
.L2629:
	movw	ip, #52680	@ tmp624,
	movw	r2, #51452	@ tmp626,
	mov	r5, #0	@ tmp625,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, ip]	@ tmp625, <variable>.TotalUsrDatNum
	str	r5, [r4, r2]	@ tmp625, <variable>.CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.39416, tmp625
.L2585:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2658:
	cmp	r9, #0	@ prephitmp.7123,
	beq	.L2625	@,
	ldr	lr, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r9, [r4, r7]	@ <variable>.pUsrDatArray, <variable>.pUsrDatArray
	subs	lr, lr, #1	@ D.39663, <variable>.TotalUsrDatNum,
	str	r9, [r6, #0]	@ <variable>.pUsrDatArray, <variable>.CurrPic.fs_image.p_usrdat
	beq	.L2626	@,
	ldr	r8, [r0, #0]	@ tmp605, <variable>.pUsrDatArray
	mov	ip, #1	@ uidxsei,
	cmp	lr, ip	@ D.39663, uidxsei
	sub	r3, lr, #1	@ tmp641, D.39663,
	and	sl, r3, ip	@ tmp643, tmp641,
	add	r3, r0, #4	@ ivtmp.7013, ivtmp.7013,
	str	r8, [r0, #-4]	@ tmp605, <variable>.pUsrDatArray
	bls	.L2626	@,
	cmp	sl, #0	@ tmp643,
	beq	.L2627	@,
	ldr	r8, [r0, #4]	@ tmp668, <variable>.pUsrDatArray
	mov	ip, #2	@ uidxsei,
	cmp	lr, ip	@ D.39663, uidxsei
	str	r8, [r3, #-4]	@ tmp668, <variable>.pUsrDatArray
	add	r3, r3, #4	@ ivtmp.7013, ivtmp.7013,
	bls	.L2626	@,
.L2627:
	ldr	sl, [r3, #0]	@ tmp649, <variable>.pUsrDatArray
	add	ip, ip, #2	@ uidxsei, uidxsei,
	ldr	r9, [r3, #4]	@ tmp651, <variable>.pUsrDatArray
	cmp	lr, ip	@ D.39663, uidxsei
	mov	r8, r3	@ tmp645, ivtmp.7013
	str	sl, [r3, #-4]	@ tmp649, <variable>.pUsrDatArray
	str	r9, [r8], #4	@ tmp651, <variable>.pUsrDatArray
	add	r3, r8, #4	@ ivtmp.7013, tmp645,
	bhi	.L2627	@,
.L2626:
	add	r9, lr, #13120	@ tmp606, D.39663,
	ldr	r3, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r9, #50	@ tmp606, tmp606,
	sub	r9, r3, #1	@ prephitmp.7123, <variable>.TotalUsrDatNum,
	str	r9, [r4, r2]	@ prephitmp.7123, <variable>.TotalUsrDatNum
	add	ip, r4, lr, asl #2	@, tmp610, pH264Ctx, tmp606,
	str	r5, [ip, #4]	@ tmp634, <variable>.pUsrDatArray
	b	.L2625	@
.L2657:
	movw	r9, #13607	@ tmp486,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	subs	r1, r0, #0	@ prephitmp.6978, <variable>.CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ prephitmp.6978
	b	.L2621	@
.L2649:
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	bne	.L2583	@,
	movw	lr, #54128	@ tmp230,
	cmp	r8, #0	@ D.39391,
	ldr	ip, [r4, lr]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, ip, #1	@ tmp233, <variable>.SeqCnt,
	str	r0, [r4, lr]	@ tmp233, <variable>.SeqCnt
	beq	.L2584	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L2584	@,
	mov	r0, r7	@, <variable>.stChanOption.s32ReRangeEn
	movw	r1, #:lower16:.LC95	@,
	movw	r2, #5639	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2648:
	ldrb	lr, [r5, #24]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	lr, #0	@ <variable>.is_refreshed,
	beq	.L2581	@,
	b	.L2580	@
.L2652:
	ldrb	r0, [r6, #20]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	r0, #0	@ <variable>.is_refreshed,
	beq	.L2597	@,
	b	.L2596	@
.L2592:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7031,
	beq	.L2593	@,
	mov	r0, r8	@, D.39391
	movw	r1, #:lower16:.LC95	@,
	movw	r2, #5708	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2651:
	movw	r2, #17540	@ tmp284,
	movw	sl, #13606	@ tmp288,
	ldr	r8, [r4, r2]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	ip, #17536	@ tmp281,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17560	@ tmp279,
	add	r1, r8, #1	@ tmp285, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldr	r0, [r4, ip]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	rsb	sl, lr, #2	@ tmp290, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	lr, [r4, r3]	@ D.39435, <variable>.CurrSPS.dpb_size_plus1
	mov	r2, r1, asl #4	@ tmp287, tmp285,
	add	r8, r0, #1	@ tmp282, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	movw	ip, #52656	@ tmp280,
	add	r3, r4, #52480	@, pH264Ctx,
	mul	sl, sl, r2	@ ImageHeight.7045, tmp290, tmp287
	mov	r8, r8, asl #4	@ ImageWidth.7037, tmp282,
	str	lr, [r4, ip]	@ D.39435, <variable>.TotalPmvNum
	add	r3, r3, #172	@,,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, ImageWidth.7037
	str	lr, [sp, #0]	@ D.39435,
	mov	r2, sl	@, ImageHeight.7045
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L2659	@,
	movw	ip, #13560	@ tmp298,
	movw	r3, #13564	@ tmp300,
	mov	r8, r8, lsr #4	@ tmp299, ImageWidth.7037,
	mov	lr, sl, lsr #4	@ tmp301, ImageHeight.7045,
	str	r8, [r4, ip]	@ tmp299, <variable>.CurWidthInMb
	str	lr, [r4, r3]	@ tmp301, <variable>.CurHeightInMb
	b	.L2582	@
.L2655:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC102	@,
	movt	r1, #:upper16:.LC102	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r3, #440]	@ D.39556, <variable>.s32FastForwardBackwardSpeed
	cmp	r6, #0	@ D.39556,
	cmpne	r6, #1024	@, D.39556,
	bne	.L2599	@,
	movw	r8, #20688	@ tmp386,
	mov	r1, sl	@, MaxFrameNum
	ldr	lr, [r4, r8]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r8, #20692	@ tmp385,
	ldr	r6, [r4, r8]	@ prephitmp.7125, <variable>.CurrSlice.frame_num
	add	r0, lr, #1	@, <variable>.CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.7125,
	bcs	.L2613	@,
	movw	r2, #20672	@ tmp395,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L2601	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC103	@,
	movw	r2, #5838	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2647:
	movw	ip, #54168	@ tmp204,
	ldr	r1, [r3, #540]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r0, #1]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ <variable>.is_used, <variable>.is_in_dpb
	b	.L2579	@
.L2584:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r3, r0, #0	@ ret.7027,
	bne	.L2660	@,
	movw	lr, #17540	@ tmp241,
	movw	r7, #17536	@ tmp238,
	ldr	r1, [r4, lr]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13606	@ tmp245,
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	cmp	r8, #0	@ D.39391,
	add	r3, r1, #1	@ tmp242, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	add	r7, ip, #1	@ tmp239, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	mov	r1, r3, asl #4	@ tmp244, tmp242,
	rsb	r8, lr, #2	@ tmp247, <variable>.CurrSPS.frame_mbs_only_flag,
	mov	r7, r7, asl #4	@ ImageWidth, tmp239,
	mul	r8, r8, r1	@ ImageHeight, tmp247, tmp244
	beq	.L2587	@,
	movw	ip, #13560	@ tmp248,
	ldr	r3, [r4, ip]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	cmp	r3, #0	@ <variable>.CurWidthInMb,
	bne	.L2587	@,
	movw	r2, #17560	@ tmp250,
	ldr	r3, [r4, #0]	@ temp.7028, <variable>.pstExtraData
	ldr	ip, [r4, r2]	@ prephitmp.6989, <variable>.CurrSPS.dpb_size_plus1
	movw	lr, #52656	@ tmp251,
	str	ip, [r4, lr]	@ prephitmp.6989, <variable>.TotalPmvNum
	ldr	r1, [r3, #472]	@ prephitmp.6985, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r1	@ ImageWidth, prephitmp.6985
	bhi	.L2588	@,
	ldr	r2, [r3, #476]	@ prephitmp.7126, <variable>.stChanOption.s32MaxHeight
	cmp	r8, r2	@ ImageHeight, prephitmp.7126
	bhi	.L2588	@,
	movw	sl, #26616	@ tmp253,
	ldr	r9, [r3, #492]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	sl, [r4, sl]	@ <variable>.DPB.size, <variable>.DPB.size
	cmp	r9, sl	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.DPB.size
	bcc	.L2661	@,
	ldr	r0, [r3, #500]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	add	r0, r4, #52480	@, pH264Ctx,
	moveq	ip, #1	@ tmp259,
	streq	ip, [r4, lr]	@ tmp259, <variable>.TotalPmvNum
	ldreq	r2, [r3, #476]	@ prephitmp.7126, <variable>.stChanOption.s32MaxHeight
	ldreq	r1, [r3, #472]	@ prephitmp.6985, <variable>.stChanOption.s32MaxWidth
	add	r3, r0, #172	@,,
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #0]	@ prephitmp.6989,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	beq	.L2587	@,
	movw	lr, #13560	@ tmp262,
	add	r1, lr, #4	@ tmp264, tmp264,
	mov	r5, #0	@ tmp263,
	str	r5, [r4, lr]	@ tmp263, <variable>.CurWidthInMb
	str	r5, [r4, r1]	@ tmp263, <variable>.CurHeightInMb
	mov	r0, r5	@, tmp263
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp263
	bl	ClearAll	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2587:
	movw	ip, #13560	@ tmp267,
	movw	r3, #13564	@ tmp269,
	mov	r7, r7, lsr #4	@ tmp268, ImageWidth,
	mov	r8, r8, lsr #4	@ tmp270, ImageHeight,
	str	r7, [r4, ip]	@ tmp268, <variable>.CurWidthInMb
	str	r8, [r4, r3]	@ tmp270, <variable>.CurHeightInMb
	b	.L2582	@
.L2604:
	movw	r7, #17560	@ tmp355,
	rsb	lr, r8, r6	@ tmp356, prephitmp.6972, prephitmp.7125
	ldr	r0, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	add	r3, lr, sl	@ tmp357, tmp356, MaxFrameNum
	cmp	r0, r3	@ <variable>.CurrSPS.dpb_size_plus1, tmp357
	bcs	.L2602	@,
	movw	r2, #20672	@ tmp359,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2662	@,
	cmp	r6, #0	@ prephitmp.7125,
	movw	ip, #20688	@ tmp370,
	subeq	r6, sl, #1	@ iftmp.623, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.623, prephitmp.7125,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.623, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.7065,
	beq	.L2602	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC95	@,
	movw	r2, #5817	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2613:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	ldreq	r6, [r4, r8]	@ prephitmp.7125, <variable>.CurrSlice.frame_num
	beq	.L2601	@,
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC104	@,
	movw	r2, #5848	@,
	movt	r1, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2615:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC104	@,
	movw	r2, #5860	@,
	movt	r1, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2656:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC105	@,
	movw	r2, #5879	@,
	movt	r1, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2650:
	mov	r3, r7	@, ret.7033
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC96	@,
	movw	r2, #5716	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2659:
	movw	r0, #13560	@ tmp293,
	movw	r1, #13564	@ tmp295,
	str	r7, [r4, r0]	@ ret.7033, <variable>.CurWidthInMb
	mov	r0, r7	@, ret.7033
	str	r7, [r4, r1]	@ ret.7033, <variable>.CurHeightInMb
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, ret.7033
	bl	ClearAll	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2654:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #20692	@ tmp345,
	sub	r1, r2, #4	@ tmp346, tmp346,
	ldr	lr, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #5782	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2662:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #20692	@ tmp363,
	sub	r1, r2, #4	@ tmp364, tmp364,
	ldr	lr, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #5807	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2660:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC96	@,
	movw	r2, #5647	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2588:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
.L2661:
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39416,
	b	.L2585	@
	.fnend
	.size	InitPic, .-InitPic
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
	.fnstart
.LFB1350:
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
	add	r6, r0, #13504	@ D.35656, pH264Ctx,
	add	r6, r6, #24	@ D.35656, D.35656,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.35656
	bl	BsShow	@
	mov	r4, r0	@ D.35657,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bhi	.L2664	@,
	mov	r5, r0, asl #1	@ tmp148, zeros,
	mov	r0, r6	@, D.35656
	add	r5, r5, #1	@ NumBits, tmp148,
	rsb	r3, r5, #32	@ tmp149, NumBits,
	mov	r4, r4, lsr r3	@ D.35664, D.35657,
	mov	r1, r5	@, NumBits
	tst	r4, #1	@ D.35664,
	mov	r4, r4, lsr #1	@ tmp, D.35664,
	rsbne	r4, r4, #0	@ INFO, tmp
	bl	BsSkip	@
.L2667:
	ldr	ip, [r7, #368]	@ D.35688, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2664:
	cmp	r0, #31	@ zeros,
	bls	.L2671	@,
	movw	r1, #54108	@ tmp153,
	mov	r2, #1	@ tmp154,
	mvn	r4, #-2147483648	@ INFO,
	mov	r5, #32	@ NumBits,
	str	r2, [r7, r1]	@ tmp154, <variable>.SeErrFlg
	b	.L2667	@
.L2671:
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.35656
	bl	BsSkip	@
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.35656
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r4, r0	@ INFO,
	mov	r0, r6	@, D.35656
	bl	BsGet	@
	tst	r0, #1	@,
	mov	r0, r5, asl #1	@ tmp152, zeros,
	rsbne	r4, r4, #0	@ INFO, INFO
	add	r5, r0, #1	@ NumBits, tmp152,
	b	.L2667	@
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	Scaling_List
	.type	Scaling_List, %function
Scaling_List:
	.fnstart
.LFB1457:
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
	ble	.L2679	@,
	cmp	r4, #16	@ sizeOfScalingList,
	sub	r0, r4, #1	@ tmp180, sizeOfScalingList,
	and	r3, r0, #1	@, tmp180,
	mov	sl, #255	@ tmp179,
	str	r3, [fp, #-52]	@, %sfp
	beq	.L2706	@,
	ldr	r8, .L2709	@,
	ldrb	r5, [r8, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
.L2694:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	and	r8, r5, #252	@ tmp205, scanj,
	bl	se_v	@
	add	r0, r0, #264	@ tmp196,,
	mov	r7, r0, asr #31	@ tmp197, tmp196,
	mov	r2, r7, lsr #24	@ tmp198, tmp197,
	and	r7, r5, #3	@ tmp207, scanj,
	add	ip, r0, r2	@ tmp199, tmp196, tmp198
	and	r3, ip, #255	@ tmp200, tmp199,
	mov	ip, r7, asl #3	@ D.41246, tmp207,
	cmp	r3, r2	@ tmp200, tmp198
	cmpeq	r5, #0	@, scanj,
	movne	r1, #0	@, tmp203
	moveq	r1, #1	@, tmp203
	subs	r3, r3, r2	@ nextScale, tmp200, tmp198
	ldr	r2, [fp, #4]	@, UseDefaultScalingMatrix
	str	r1, [r2, #0]	@ tmp203,
	add	r1, r6, r8	@ D.41244, scalingList, tmp205
	moveq	r2, #8	@ tmpscale,
	movne	r2, r3	@ tmpscale, nextScale
	str	r2, [r9, r5, asl #2]	@ tmpscale,* scalingList_Org
	and	r7, r2, #255	@ tmp209, tmpscale,
	ldr	r0, [r1, #0]	@ tmp214,* D.41244
	mov	r5, #1	@ j,
	cmp	r4, r5	@ sizeOfScalingList, j
	mov	r8, r2	@ lastScale, tmpscale
	bic	r0, r0, sl, asl ip	@ tmp215, tmp214, tmp179,
	orr	r0, r0, r7, asl ip	@, tmp216, tmp215, tmp209,
	str	r0, [r1, #0]	@ tmp216,* D.41244
	ble	.L2679	@,
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r1, #0	@,
	beq	.L2678	@,
	cmp	r4, #16	@ sizeOfScalingList,
	ldrne	r1, .L2709	@,
	ldreq	r1, .L2709+4	@,
	cmp	r3, #0	@ nextScale,
	ldrb	r7, [r1, r5]	@ zero_extendqisi2	@ scanj,* j
	bne	.L2699	@,
.L2685:
	mov	r8, r2	@ tmpscale, tmpscale
	mov	r3, #0	@ nextScale,
.L2700:
	and	r2, r7, #252	@ tmp232, scanj,
	and	r1, r7, #3	@ tmp234, scanj,
	add	r2, r6, r2	@ D.41244, scalingList, tmp232
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	mov	lr, r1, asl #3	@ D.41246, tmp234,
	add	r5, r5, #1	@ j, j,
	ldr	r0, [r2, #0]	@ tmp241,* D.41244
	and	ip, r8, #255	@ tmp236, tmpscale,
	cmp	r4, r5	@ sizeOfScalingList, j
	bic	r0, r0, sl, asl lr	@ tmp242, tmp241, tmp179,
	orr	r1, r0, ip, asl lr	@, tmp243, tmp242, tmp236,
	str	r1, [r2, #0]	@ tmp243,* D.41244
	ble	.L2679	@,
.L2678:
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r1, .L2709+4	@,
	ldrne	r2, .L2709	@,
	ldreqb	r7, [r1, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	ldrneb	r7, [r2, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	cmp	r3, #0	@ nextScale,
	bne	.L2707	@,
.L2676:
	mov	r3, #0	@ nextScale,
.L2677:
	and	r2, r7, #3	@ tmp165, scanj,
	mov	lr, r7, lsr #2	@ tmp163, scanj,
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	and	r0, r8, #255	@ tmp166, tmpscale,
	mov	r1, r2, asl #3	@ D.41246, tmp165,
	ldr	ip, [r6, lr, asl #2]	@ tmp172,* scalingList
	cmp	r4, #16	@ sizeOfScalingList,
	add	r5, r5, #1	@ tmp183, j,
	bic	r2, ip, sl, asl r1	@ tmp171, tmp172, tmp179,
	orr	r7, r2, r0, asl r1	@, tmp173, tmp171, tmp166,
	str	r7, [r6, lr, asl #2]	@ tmp173,* scalingList
	beq	.L2708	@,
	ldr	lr, .L2709	@,
	ldrb	r7, [lr, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
.L2701:
	cmp	r3, #0	@ nextScale,
	bne	.L2702	@,
.L2689:
	mov	r3, #0	@ nextScale,
.L2703:
	and	r1, r7, #3	@ tmp261, scanj,
	mov	r2, r7, lsr #2	@ tmp258, scanj,
	str	r8, [r9, r7, asl #2]	@ tmpscale,* scalingList_Org
	add	r5, r5, #1	@ j, tmp183,
	mov	lr, r1, asl #3	@ D.41246, tmp261,
	ldr	r0, [r6, r2, asl #2]	@ tmp268,* scalingList
	and	ip, r8, #255	@ tmp263, tmpscale,
	cmp	r4, r5	@ sizeOfScalingList, j
	bic	r0, r0, sl, asl lr	@ tmp269, tmp268, tmp179,
	orr	r1, r0, ip, asl lr	@, tmp270, tmp269, tmp263,
	str	r1, [r6, r2, asl #2]	@ tmp270,* scalingList
	bgt	.L2678	@,
.L2679:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2702:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
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
	beq	.L2689	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2703	@
.L2707:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
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
	bne	.L2677	@,
	b	.L2676	@
.L2708:
	ldr	ip, .L2709+4	@,
	ldrb	r7, [ip, r5]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2701	@
.L2706:
	ldr	r3, .L2709+4	@,
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2694	@
.L2699:
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
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
	beq	.L2685	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2700	@
.L2710:
	.align	2
.L2709:
	.word	.LANCHOR0+152
	.word	.LANCHOR0+136
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
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
	add	r6, r0, #13504	@ D.35622, pH264Ctx,
	add	r6, r6, #24	@ D.35622, D.35622,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.35622
	bl	BsShow	@
	mov	r4, r0	@ D.35623,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bls	.L2716	@,
	cmp	r0, #31	@ zeros,
	bls	.L2717	@,
	movw	r1, #54108	@ tmp150,
	mov	r5, #32	@ NumBits,
	mvn	r4, #0	@ INFO,
	mov	r2, #1	@ tmp151,
	str	r2, [r7, r1]	@ tmp151, <variable>.SeErrFlg
.L2713:
	ldr	ip, [r7, #368]	@ D.35641, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L2716:
	mov	r5, r0, asl #1	@ tmp146, zeros,
	mov	r0, r6	@, D.35622
	add	r5, r5, #1	@ NumBits, tmp146,
	rsb	r3, r5, #32	@ tmp147, NumBits,
	mov	r4, r4, lsr r3	@ tmp148, D.35623,
	mov	r1, r5	@, NumBits
	sub	r4, r4, #1	@ INFO, tmp148,
	bl	BsSkip	@
	b	.L2713	@
.L2717:
	add	r4, r0, #1	@ D.35637, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r6	@, D.35622
	bl	BsSkip	@
	mov	r1, r4	@, D.35637
	mov	r0, r6	@, D.35622
	bl	BsShow	@
	mov	r1, r4	@, D.35637
	sub	r4, r0, #1	@ INFO,,
	mov	r0, r6	@, D.35622
	bl	BsSkip	@
	mov	r0, r5, asl #1	@ tmp149, zeros,
	add	r5, r0, #1	@ NumBits, tmp149,
	b	.L2713	@
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	H264_DecFramePackingSEI
	.type	H264_DecFramePackingSEI, %function
H264_DecFramePackingSEI:
	.fnstart
.LFB1468:
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
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	ip, #26400	@ tmp156,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC110	@,
	movt	r2, #:upper16:.LC110	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_id
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26377	@ tmp158,
	uxtb	r0, r0	@ D.42483,
	strb	r0, [r4, r3]	@ D.42483, <variable>.FramePackSEI.frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.42483,
	beq	.L2722	@,
.L2719:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	bl	u_v	@
	movw	r3, #26376	@ tmp208,
	movw	r1, #26378	@ tmp206,
	mov	r2, #1	@ tmp209,
	strb	r2, [r4, r3]	@ tmp209, <variable>.FramePackSEI.frame_packing_dec_ok
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2722:
	mov	r1, #7	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC111	@,
	movt	r2, #:upper16:.LC111	@,
	bl	u_v	@
	movw	r6, #26392	@ tmp161,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC112	@,
	movt	r2, #:upper16:.LC112	@,
	movw	r5, #26379	@ tmp163,
	str	r0, [r4, r6]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC113	@,
	movt	r2, #:upper16:.LC113	@,
	strb	r0, [r4, r5]	@, <variable>.FramePackSEI.quincunx_sampling_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26396	@ tmp166,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC114	@,
	movt	r2, #:upper16:.LC114	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.content_interpretation_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26380	@ tmp168,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC115	@,
	movt	r2, #:upper16:.LC115	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.spatial_flipping_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26381	@ tmp171,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC116	@,
	movt	r2, #:upper16:.LC116	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_flipped_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26382	@ tmp174,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC117	@,
	movt	r2, #:upper16:.LC117	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.field_views_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26383	@ tmp177,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC118	@,
	movt	r2, #:upper16:.LC118	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.current_frame_is_frame0_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26384	@ tmp180,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_self_contained_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrsb	r2, [r4, r5]	@ <variable>.FramePackSEI.quincunx_sampling_flag, <variable>.FramePackSEI.quincunx_sampling_flag
	movw	r1, #26385	@ tmp183,
	cmp	r2, #0	@ <variable>.FramePackSEI.quincunx_sampling_flag,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_self_contained_flag
	bne	.L2720	@,
	ldr	lr, [r4, r6]	@ <variable>.FramePackSEI.frame_packing_arrangement_type, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	lr, #5	@ <variable>.FramePackSEI.frame_packing_arrangement_type,
	beq	.L2720	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC120	@,
	movt	r2, #:upper16:.LC120	@,
	bl	u_v	@
	movw	r3, #26386	@ tmp190,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC121	@,
	movt	r2, #:upper16:.LC121	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26387	@ tmp193,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_grid_position_y
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26388	@ tmp196,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC123	@,
	movt	r2, #:upper16:.LC123	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame1_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26389	@ tmp199,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_grid_position_y
.L2720:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC124	@,
	movt	r2, #:upper16:.LC124	@,
	bl	u_v	@
	movw	ip, #26404	@ tmp202,
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_reserved_byte
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r2, #26408	@ tmp204,
	str	r0, [r4, r2]	@, <variable>.FramePackSEI.frame_packing_arrangement_repetition_period
	b	.L2719	@
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecSEI
	.type	H264_DecSEI, %function
H264_DecSEI:
	.fnstart
.LFB1470:
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
	ldr	r3, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	sl, r0, #13504	@ D.42723, pH264Ctx,
	sub	r9, fp, #45	@ tmp798,,
	add	sl, sl, #24	@ D.42723, D.42723,
	movw	r5, #13552	@ tmp888,
	movw	r6, #13544	@ tmp889,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r2, #32	@ tmp222,
	mov	r0, #0	@,
	str	r0, [fp, #-60]	@, %sfp
	str	r2, [r3, #24]	@ tmp222, <variable>.bitsoffset
.L2727:
	mov	r1, r9	@, tmp798
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r7, #8	@ tmp226, <variable>.BS.TotalPos,
	ldrb	r7, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.746, byte_tmp
	cmp	ip, r1, asl #3	@ tmp226, <variable>.BS.BsLen,
	mov	r8, r0	@ ret,
	ble	.L3038	@,
.L2726:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42728,
.L2729:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3038:
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r8, #0	@ ret,
	add	r2, r3, r7	@,, byte_tmp.746
	str	r2, [fp, #-60]	@, %sfp
	ble	.L2726	@,
	ldrb	r8, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r8, #255	@ byte_tmp,
	beq	.L2727	@,
	mov	r5, #0	@,
	movw	r6, #13544	@ tmp881,
	str	r5, [fp, #-68]	@, %sfp
	movw	r5, #13552	@ tmp880,
.L2841:
	mov	r8, #0	@ payloadSize,
.L2733:
	mov	r1, r9	@, tmp798
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp235, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp235, <variable>.BS.BsLen,
	mov	r7, r0	@ ret.7372,
	ldrb	r0, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7373, byte_tmp
	add	r8, r8, r0	@ payloadSize, payloadSize, byte_tmp.7373
	ble	.L3039	@,
.L2732:
	mov	r3, #1	@ prephitmp.7282,
	cmp	r8, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp245, prephitmp.7282
	cmp	r3, #0	@ tmp245,
	bne	.L3040	@,
.L2735:
	ldr	r0, [r4, #368]	@ temp.7379, <variable>.pCurrNal
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	r1, [r0, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	ldr	r2, [r0, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	cmp	r1, #2	@ <variable>.nal_segment,
	ldreq	r0, [r0, #52]	@ <variable>.bitsoffset, <variable>.bitsoffset
	addeq	r2, r0, r2	@ tmp248, <variable>.bitsoffset, <variable>.bitsoffset
	moveq	r2, r2, lsr #3	@ TotalBitOffset, tmp248,
	cmp	r3, #45	@,
	ldrls	pc, [pc, r3, asl #2]	@
	b	.L2738	@
.L2762:
	.word	.L2739
	.word	.L2740
	.word	.L2741
	.word	.L2742
	.word	.L2743
	.word	.L2744
	.word	.L2745
	.word	.L2746
	.word	.L2747
	.word	.L2748
	.word	.L2749
	.word	.L2750
	.word	.L2751
	.word	.L2752
	.word	.L2753
	.word	.L2754
	.word	.L2755
	.word	.L2756
	.word	.L2757
	.word	.L2758
	.word	.L2759
	.word	.L2760
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2738
	.word	.L2761
.L3039:
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	r7, #0	@ ret.7372,
	ble	.L2732	@,
	ldrb	lr, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	lr, #255	@ byte_tmp,
	beq	.L2733	@,
	mov	r3, #0	@ prephitmp.7282,
	cmp	r8, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp245, prephitmp.7282
	cmp	r3, #0	@ tmp245,
	beq	.L2735	@,
.L3040:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42728,
	b	.L2729	@
.L2761:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	ldr	r7, [r4, r5]	@ bitpos.7556, <variable>.BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7284, <variable>.BS.TotalPos
	mov	r2, r8, asl #3	@ temp.7558, payloadSize,
	rsb	r7, r7, r3	@ bitpos.7557, bitpos.7556, prephitmp.7284
	cmp	r7, r2	@ bitpos.7557, temp.7558
	blt	.L3041	@,
.L2828:
	mov	r1, r8	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
.L2763:
	movw	lr, #52680	@ tmp787,
	ldr	r1, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r1, #3	@ <variable>.TotalUsrDatNum,
	bhi	.L3042	@,
.L2835:
	mov	r8, #0	@,
	str	r8, [fp, #-60]	@, %sfp
.L2839:
	mov	r2, #1	@,
	mov	r1, r9	@, tmp798
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r7, #8	@ tmp792, <variable>.BS.TotalPos,
	ldrb	r7, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7575, byte_tmp
	cmp	r3, r2, asl #3	@ tmp792, <variable>.BS.BsLen,
	mov	r8, r0	@ ret.7574,
	ble	.L3043	@,
.L2838:
	mov	r0, #0	@ D.42728,
	b	.L2729	@
.L2760:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC154	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp741, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp741, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	lr, #0	@,
	str	lr, [fp, #-60]	@, %sfp
	bne	.L2826	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	ip, #1	@,
	cmp	r8, ip	@ payloadSize,
	str	ip, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1306, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1306, <variable>.BS.BsLen,
	ble	.L2826	@,
	b	.L2763	@
.L2827:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp747, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp747, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1312, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp1312, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2826:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp987,,
	mov	r0, sl	@, D.42723
	add	lr, r7, #1	@, tmp987,
	str	lr, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp987
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2827	@,
	b	.L2763	@
.L2756:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC150	@,
	movt	r1, #:upper16:.LC150	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp689, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp689, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r7, #0	@,
	str	r7, [fp, #-60]	@, %sfp
	bne	.L2818	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #1	@,
	cmp	r8, r7	@ payloadSize,
	str	r7, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1258, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1258, <variable>.BS.BsLen,
	ble	.L2818	@,
	b	.L2763	@
.L2819:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp695, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp695, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1264, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp1264, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2818:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp971,,
	mov	r0, sl	@, D.42723
	add	r3, r7, #1	@, tmp971,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp971
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2819	@,
	b	.L2763	@
.L2758:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp715, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp715, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	ip, #0	@,
	str	ip, [fp, #-60]	@, %sfp
	bne	.L2822	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	lr, #1	@,
	cmp	r8, lr	@ payloadSize,
	str	lr, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp1282, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp1282, <variable>.BS.BsLen,
	ble	.L2822	@,
	b	.L2763	@
.L2823:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp721, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp721, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp1288, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1288, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2822:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp979,,
	mov	r0, sl	@, D.42723
	add	ip, r7, #1	@, tmp979,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp979
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2823	@,
	b	.L2763	@
.L2757:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp702, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp702, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r2, #0	@,
	str	r2, [fp, #-60]	@, %sfp
	bne	.L2820	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	cmp	r8, r0	@ payloadSize,
	str	r0, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1270, <variable>.BS.TotalPos,
	cmp	r1, lr, asl #3	@ tmp1270, <variable>.BS.BsLen,
	ble	.L2820	@,
	b	.L2763	@
.L2821:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp708, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp708, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1276, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp1276, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2820:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp975,,
	mov	r0, sl	@, D.42723
	add	r2, r7, #1	@, tmp975,
	str	r2, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp975
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2821	@,
	b	.L2763	@
.L2759:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp728, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp728, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r3, #0	@,
	str	r3, [fp, #-60]	@, %sfp
	bne	.L2824	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r2, #1	@,
	cmp	r8, r2	@ payloadSize,
	str	r2, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r0, #8	@ tmp1294, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1294, <variable>.BS.BsLen,
	ble	.L2824	@,
	b	.L2763	@
.L2825:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp734, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp734, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1300, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1300, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2824:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp983,,
	mov	r0, sl	@, D.42723
	add	r3, r7, #1	@, tmp983,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp983
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2825	@,
	b	.L2763	@
.L2754:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC148	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp663, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp663, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r3, #0	@,
	str	r3, [fp, #-60]	@, %sfp
	bne	.L2814	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r2, #1	@,
	cmp	r8, r2	@ payloadSize,
	str	r2, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r0, #8	@ tmp1234, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1234, <variable>.BS.BsLen,
	ble	.L2814	@,
	b	.L2763	@
.L2815:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp669, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp669, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1240, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1240, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2814:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp963,,
	mov	r0, sl	@, D.42723
	add	r3, r7, #1	@, tmp963,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp963
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2815	@,
	b	.L2763	@
.L2753:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC147	@,
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp650, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp650, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r2, #0	@,
	str	r2, [fp, #-60]	@, %sfp
	bne	.L2812	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	mov	r1, #1	@,
	cmp	r8, r1	@ payloadSize,
	str	r1, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp1222, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp1222, <variable>.BS.BsLen,
	ble	.L2812	@,
	b	.L2763	@
.L2813:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp656, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp656, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp1228, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1228, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2812:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp959,,
	mov	r0, sl	@, D.42723
	add	r2, r7, #1	@, tmp959,
	str	r2, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp959
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2813	@,
	b	.L2763	@
.L2755:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp676, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp676, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	ip, #0	@,
	str	ip, [fp, #-60]	@, %sfp
	bne	.L2816	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	ip, #1	@,
	cmp	r8, ip	@ payloadSize,
	str	ip, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1246, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1246, <variable>.BS.BsLen,
	ble	.L2816	@,
	b	.L2763	@
.L2817:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp682, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp682, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1252, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp1252, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2816:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp967,,
	mov	r0, sl	@, D.42723
	add	ip, r7, #1	@, tmp967,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp967
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2817	@,
	b	.L2763	@
.L2752:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp637, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp637, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	lr, #0	@,
	str	lr, [fp, #-60]	@, %sfp
	bne	.L2810	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	cmp	r8, r0	@ payloadSize,
	str	r0, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1210, <variable>.BS.TotalPos,
	cmp	r1, lr, asl #3	@ tmp1210, <variable>.BS.BsLen,
	ble	.L2810	@,
	b	.L2763	@
.L2811:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp643, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp643, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1216, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp1216, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2810:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp955,,
	mov	r0, sl	@, D.42723
	add	lr, r7, #1	@, tmp955,
	str	lr, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp955
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2811	@,
	b	.L2763	@
.L2751:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp624, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp624, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r3, #0	@,
	str	r3, [fp, #-60]	@, %sfp
	bne	.L2808	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	lr, #1	@,
	cmp	r8, lr	@ payloadSize,
	str	lr, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1198, <variable>.BS.TotalPos,
	cmp	r0, ip, asl #3	@ tmp1198, <variable>.BS.BsLen,
	ble	.L2808	@,
	b	.L2763	@
.L2809:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp630, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp630, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1204, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp1204, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2808:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp951,,
	mov	r0, sl	@, D.42723
	add	r3, r7, #1	@, tmp951,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp951
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2809	@,
	b	.L2763	@
.L2750:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC144	@,
	movt	r1, #:upper16:.LC144	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp611, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp611, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	ip, #0	@,
	str	ip, [fp, #-60]	@, %sfp
	bne	.L2806	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r2, #1	@,
	cmp	r8, r2	@ payloadSize,
	str	r2, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r0, #8	@ tmp1186, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1186, <variable>.BS.BsLen,
	ble	.L2806	@,
	b	.L2763	@
.L2807:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp617, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp617, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1192, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1192, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2806:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp947,,
	mov	r0, sl	@, D.42723
	add	ip, r7, #1	@, tmp947,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp947
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2807	@,
	b	.L2763	@
.L2749:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp598, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp598, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r7, #0	@,
	str	r7, [fp, #-60]	@, %sfp
	bne	.L2804	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #1	@,
	cmp	r8, r7	@ payloadSize,
	str	r7, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp1174, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp1174, <variable>.BS.BsLen,
	ble	.L2804	@,
	b	.L2763	@
.L2805:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp604, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp604, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp1180, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1180, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2804:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp943,,
	mov	r0, sl	@, D.42723
	add	r2, r7, #1	@, tmp943,
	str	r2, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp943
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2805	@,
	b	.L2763	@
.L2748:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC142	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp585, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp585, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r3, #0	@,
	str	r3, [fp, #-60]	@, %sfp
	bne	.L2802	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	mov	r1, #1	@,
	cmp	r8, r1	@ payloadSize,
	str	r1, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp1162, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp1162, <variable>.BS.BsLen,
	ble	.L2802	@,
	b	.L2763	@
.L2803:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp591, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp591, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp1168, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1168, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2802:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp939,,
	mov	r0, sl	@, D.42723
	add	r3, r7, #1	@, tmp939,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp939
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2803	@,
	b	.L2763	@
.L2747:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp572, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp572, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	ip, #0	@,
	str	ip, [fp, #-60]	@, %sfp
	bne	.L2800	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	cmp	r8, r0	@ payloadSize,
	str	r0, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1150, <variable>.BS.TotalPos,
	cmp	r1, lr, asl #3	@ tmp1150, <variable>.BS.BsLen,
	ble	.L2800	@,
	b	.L2763	@
.L2801:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp578, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp578, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1156, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp1156, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2800:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp935,,
	mov	r0, sl	@, D.42723
	add	ip, r7, #1	@, tmp935,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp935
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2801	@,
	b	.L2763	@
.L2746:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp559, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp559, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r7, #0	@,
	str	r7, [fp, #-60]	@, %sfp
	bne	.L2798	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r3, #1	@,
	cmp	r8, r3	@ payloadSize,
	str	r3, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1138, <variable>.BS.TotalPos,
	cmp	r0, lr, asl #3	@ tmp1138, <variable>.BS.BsLen,
	ble	.L2798	@,
	b	.L2763	@
.L2799:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp565, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp565, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp1144, <variable>.BS.TotalPos,
	cmp	ip, r2, asl #3	@ tmp1144, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2798:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp931,,
	mov	r0, sl	@, D.42723
	add	r2, r7, #1	@, tmp931,
	str	r2, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp931
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2799	@,
	b	.L2763	@
.L2745:
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC139	@,
	mov	r3, r8	@, payloadSize
	movt	r1, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2795	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r3, #8	@ tmp549, <variable>.BS.TotalPos,
	cmp	r1, r2, asl #3	@ tmp549, <variable>.BS.BsLen,
	bgt	.L2795	@,
	tst	r8, #1	@ payloadSize,
	mov	lr, #0	@,
	str	lr, [fp, #-60]	@, %sfp
	bne	.L2796	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	cmp	r8, r0	@ payloadSize,
	str	r0, [fp, #-60]	@, %sfp
	bgt	.L3036	@,
	b	.L2795	@
.L2796:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp927,,
	mov	r0, sl	@, D.42723
	add	lr, r7, #1	@, tmp927,
	str	lr, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp927
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	ble	.L2795	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp552, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp552, <variable>.BS.BsLen,
	bgt	.L2795	@,
	bl	BsSkip	@
.L3036:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp1132, <variable>.BS.TotalPos,
	cmp	r2, r1, asl #3	@ tmp1132, <variable>.BS.BsLen,
	ble	.L2796	@,
.L2795:
	mov	r1, r8	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	movw	lr, #52680	@ tmp787,
	ldr	r1, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r1, #3	@ <variable>.TotalUsrDatNum,
	bls	.L2835	@,
.L3042:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42728,
	b	.L2729	@
.L2744:
	ldr	r7, [fp, #-68]	@, %sfp
	cmp	r7, #0	@,
	bne	.L2743	@,
	movw	r1, #:lower16:.LC134	@,
	mov	r0, #20	@,
	movt	r1, #:upper16:.LC134	@,
	mov	r3, r8	@, payloadSize
	bl	dprint_vfmw	@
.L2776:
	movw	r7, #54168	@ tmp318,
	movw	lr, #52680	@ tmp317,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r7, [r4, lr]	@ D.42776, <variable>.TotalUsrDatNum
	str	lr, [fp, #-84]	@,
	bl	GetUsd	@
	ldr	ip, [fp, #-84]	@,
	add	r2, r7, #13120	@ tmp320, D.42776,
	ldr	r1, [r4, ip]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, r2, #50	@ tmp320, tmp320,
	add	r3, r1, #13120	@ tmp326, <variable>.TotalUsrDatNum,
	add	r2, r4, ip, asl #2	@, tmp324, pH264Ctx, tmp320,
	add	r1, r3, #50	@ tmp326, tmp326,
	add	r3, r4, r1, asl #2	@, tmp332, pH264Ctx, tmp326,
	str	r0, [r2, #4]	@, <variable>.pUsrDatArray
	ldr	r1, [r3, #4]	@ prephitmp.7292, <variable>.pUsrDatArray
	cmp	r1, #0	@ prephitmp.7292,
	beq	.L2777	@,
	ldr	lr, [r4, #368]	@ temp.7407, <variable>.pCurrNal
	cmp	r8, #1024	@ payloadSize,
	movlt	ip, r8	@ D.42782, payloadSize
	movge	ip, #1024	@ D.42782,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ segment_idx, <variable>.nal_used_segment
	ldr	r2, [lr, #68]	@ temp.7597, <variable>.nal_segment
	cmp	r3, r2	@ segment_idx, temp.7597
	movcs	r0, #0	@ prephitmp.7286,
	strcs	r0, [fp, #-72]	@ prephitmp.7286, %sfp
	bcs	.L2779	@,
	rsb	r7, r3, r3, asl #3	@, tmp336, segment_idx, segment_idx,
	add	r0, r3, #1	@ segment_idx, segment_idx,
	mvn	r3, r3	@ tmp920, segment_idx
	cmp	r0, r2	@ segment_idx, temp.7597
	add	r7, lr, r7, asl #2	@, tmp338, temp.7407, tmp336,
	add	lr, r3, r2	@ tmp919, tmp920, temp.7597
	add	r7, r7, #8	@ tmp339, tmp338,
	and	r3, lr, #1	@, tmp919,
	add	lr, r7, #32	@, tmp339,
	str	r3, [fp, #-64]	@, %sfp
	str	lr, [fp, #-76]	@, %sfp
	ldr	r3, [r7, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	lr, r3, #7	@, <variable>.bitsoffset,
	ldr	r3, [r7, #4]	@, <variable>.bitstream_length
	sub	r3, r3, lr, lsr #3	@,,,
	str	r3, [fp, #-72]	@, %sfp
	beq	.L2937	@,
	ldr	r3, [fp, #-64]	@, %sfp
	cmp	r3, #0	@,
	beq	.L3014	@,
	ldr	r3, [fp, #-76]	@, %sfp
	add	r0, r0, #1	@ segment_idx, segment_idx,
	cmp	r0, r2	@ segment_idx, temp.7597
	ldr	lr, [r3, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r3, [r7, #32]	@, <variable>.bitstream_length
	add	r7, r7, #60	@, tmp339,
	add	lr, lr, #7	@, <variable>.bitsoffset,
	str	r7, [fp, #-76]	@, %sfp
	sub	r7, r3, lr, lsr #3	@,,,
	ldr	r3, [fp, #-72]	@, %sfp
	add	lr, r3, r7	@,,
	str	lr, [fp, #-72]	@, %sfp
	beq	.L2937	@,
.L3014:
	ldr	r3, [fp, #-72]	@ lenth_not_parse, %sfp
	ldr	lr, [fp, #-76]	@ ivtmp.7329, %sfp
	str	r1, [fp, #-88]	@ prephitmp.7292, %sfp
	str	ip, [fp, #-92]	@ D.42782, %sfp
.L2780:
	ldr	ip, [lr, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r7, lr	@ tmp923, ivtmp.7329
	ldr	r1, [r7], #28	@, <variable>.bitstream_length
	add	r0, r0, #2	@ segment_idx, segment_idx,
	add	ip, ip, #7	@, <variable>.bitsoffset,
	str	ip, [fp, #-60]	@, %sfp
	ldr	ip, [lr, #28]	@, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, temp.7597
	add	lr, lr, #56	@ ivtmp.7329, ivtmp.7329,
	str	ip, [fp, #-76]	@, %sfp
	ldr	r7, [r7, #12]	@, <variable>.bitsoffset
	ldr	ip, [fp, #-60]	@, %sfp
	str	r7, [fp, #-72]	@, %sfp
	sub	r7, r1, ip, lsr #3	@ tmp1003,,,
	ldr	ip, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-76]	@, %sfp
	add	r3, r3, r7	@ lenth_not_parse, lenth_not_parse, tmp1003
	add	r7, ip, #7	@ tmp1008,,
	sub	r7, r1, r7, lsr #3	@ tmp1011,, tmp1008,
	add	r3, r3, r7	@ lenth_not_parse, lenth_not_parse, tmp1011
	bne	.L2780	@,
	ldr	r1, [fp, #-88]	@ prephitmp.7292, %sfp
	ldr	ip, [fp, #-92]	@ D.42782, %sfp
	str	r3, [fp, #-72]	@ lenth_not_parse, %sfp
.L2937:
	ldr	r0, [fp, #-72]	@ prephitmp.7286, %sfp
.L2779:
	ldr	r3, [fp, #-68]	@, %sfp
	cmp	ip, r0	@ D.42782, prephitmp.7286
	ldr	lr, [fp, #-72]	@, %sfp
	movle	lr, ip	@, D.42782
	sxtb	r2, r3	@ registered_flag,
	cmp	r2, #1	@ registered_flag,
	str	lr, [fp, #-64]	@, %sfp
	movne	r7, #0	@ prephitmp.7293,
	strne	r7, [fp, #-60]	@ prephitmp.7293, %sfp
	beq	.L3044	@,
.L2787:
	ldr	r3, [fp, #-64]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	str	ip, [fp, #-80]	@,
	rsb	r2, r7, r3	@, prephitmp.7293,
	bl	GetBytes	@
	ldr	ip, [fp, #-80]	@,
	subs	r7, r0, #0	@ ret.7424,
	ble	.L3045	@,
	ldr	r1, [fp, #-60]	@, %sfp
	rsb	lr, r1, ip	@ tmp457,, D.42782
	cmp	r7, lr	@ ret.7424, tmp457
	blt	.L3046	@,
	movw	r0, #52680	@ tmp475,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	ip, r8	@ D.42782, payloadSize
	rsb	r0, r1, r8	@,, payloadSize
	str	r0, [fp, #-60]	@, %sfp
	add	lr, r2, #13120	@ tmp473, <variable>.TotalUsrDatNum,
	add	r3, lr, #50	@ tmp473, tmp473,
	add	r2, r4, r3, asl #2	@, tmp480, pH264Ctx, tmp473,
	ldr	lr, [r2, #4]	@ tmp477, <variable>.pUsrDatArray
	str	r0, [lr, #1048]	@, <variable>.data_size
	bcc	.L3047	@,
.L2792:
	ldr	ip, [fp, #-60]	@, %sfp
	cmp	ip, #0	@,
	ble	.L2790	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, r2, #8	@ tmp487, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp487, <variable>.BS.BsLen,
	bgt	.L2790	@,
	ldr	r8, [fp, #-60]	@, %sfp
	tst	r8, #1	@,
	mov	r8, #0	@ i,
	bne	.L2793	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r8, #1	@ i,
	cmp	r3, r8	@, i
	bgt	.L3034	@,
	b	.L2790	@
.L2793:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp918, i,
	mov	r0, sl	@, D.42723
	cmp	r2, r7	@, tmp918
	add	r8, r7, #1	@ i, tmp918,
	mov	r1, #8	@,
	ble	.L2790	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp490, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp490, <variable>.BS.BsLen,
	bgt	.L2790	@,
	bl	BsSkip	@
.L3034:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1115, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1115, <variable>.BS.BsLen,
	ble	.L2793	@,
.L2790:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #52680	@ tmp497,
	ldr	r0, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r0, #13120	@ tmp495, <variable>.TotalUsrDatNum,
	ldrd	r0, [r3, #56]	@, <variable>.pstExtraData,
	add	ip, lr, #50	@ tmp495, tmp495,
	mov	lr, #1056	@ tmp504,
	movw	r3, #:lower16:g_event_report	@ tmp528,
	movt	r3, #:upper16:g_event_report	@ tmp528,
	strd	r0, [fp, #-60]	@,,
	add	r1, r4, ip, asl #2	@, tmp502, pH264Ctx, tmp495,
	ldr	ip, [r1, #4]	@ tmp499, <variable>.pUsrDatArray
	ldrd	r0, [fp, #-60]	@,,
	strd	r0, [ip, lr]	@, tmp499, tmp504
	movw	r0, #54128	@ tmp526,
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, ip, #13120	@ tmp507, <variable>.TotalUsrDatNum,
	add	lr, r1, #50	@ tmp507, tmp507,
	add	ip, r4, lr, asl #2	@, tmp514, pH264Ctx, tmp507,
	mov	lr, #8	@ tmp516,
	ldr	r1, [ip, #4]	@ tmp511, <variable>.pUsrDatArray
	str	lr, [r1, #1036]	@ tmp516, <variable>.from
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r0, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r1, ip, #13120	@ tmp517, <variable>.TotalUsrDatNum,
	add	lr, r1, #50	@ tmp517, tmp517,
	add	ip, r4, lr, asl #2	@, tmp524, pH264Ctx, tmp517,
	ldr	r1, [ip, #4]	@ tmp521, <variable>.pUsrDatArray
	str	r0, [r1, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r3, [r3, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2763	@,
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	sub	r2, fp, #44	@ tmp542,,
	movw	r0, #54168	@ tmp540,
	mov	r1, #6	@,
	add	lr, ip, #13120	@ tmp530, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	ip, lr, #50	@ tmp530, tmp530,
	add	lr, r4, ip, asl #2	@, tmp536, pH264Ctx, tmp530,
	ldr	ip, [lr, #4]	@ tmp538, <variable>.pUsrDatArray
	str	ip, [r2, #-8]!	@ tmp538, para
	blx	r3	@ g_event_report
	b	.L2763	@
.L2740:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	ldr	r7, [r4, r5]	@ bitpos, <variable>.BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7297, <variable>.BS.TotalPos
	mov	r2, r8, asl #3	@ D.42756, payloadSize,
	rsb	r7, r7, r3	@ bitpos.7386, bitpos, prephitmp.7297
	cmp	r7, r2	@ bitpos.7386, D.42756
	bge	.L2766	@,
	rsb	r2, r7, r2	@, bitpos.7386, D.42756
	str	r2, [fp, #-64]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	add	r1, r2, #7	@ tmp268,,
	cmp	ip, #0	@,
	movge	r1, ip	@ D.42760,
	mov	r2, r1, asr #3	@, D.42760,
	str	r2, [fp, #-60]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
	ble	.L2768	@,
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp274, prephitmp.7297,
	mov	r2, r0, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
	cmp	r2, lr	@ prephitmp.7299, tmp274
	blt	.L2768	@,
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, #0	@ i.7390,
	tst	r3, #1	@,
	beq	.L3048	@,
.L3007:
	str	r8, [fp, #-72]	@ payloadSize, %sfp
	mov	r8, r0	@ i.7390, i.7390
	b	.L2769	@
.L2770:
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7297, <variable>.BS.TotalPos
	mov	r2, ip, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp278, prephitmp.7297,
	cmp	r7, r2	@ tmp278, prephitmp.7299
	bgt	.L3032	@,
	bl	BsSkip	@
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7297, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
	add	r0, r3, #8	@ tmp1076, prephitmp.7297,
	cmp	r0, r2	@ tmp1076, prephitmp.7299
	bgt	.L3032	@,
.L2769:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp902, i.7390,
	mov	r0, sl	@, D.42723
	cmp	r7, r2	@ tmp902,
	add	r8, r7, #1	@ i.7390, tmp902,
	mov	r1, #8	@,
	blt	.L2770	@,
	ldr	r8, [fp, #-72]	@ payloadSize, %sfp
.L2979:
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7297, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
.L2768:
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r1, r7, asr #31	@ tmp282,,
	mov	ip, r1, lsr #29	@ tmp283, tmp282,
	add	lr, r7, ip	@ tmp284,, tmp283
	and	r0, lr, #7	@ tmp285, tmp284,
	rsb	r1, ip, r0	@ tmp286, tmp283, tmp285
	add	lr, r3, r1	@ tmp287, prephitmp.7297, tmp286
	cmp	lr, r2	@ tmp287, prephitmp.7299
	ble	.L3049	@,
.L2766:
	mov	r1, r8	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	b	.L2763	@
.L2739:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, lr, #8	@ tmp253, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp253, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r7, #0	@,
	str	r7, [fp, #-60]	@, %sfp
	bne	.L2764	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r2, #1	@,
	cmp	r2, r8	@, payloadSize
	str	r2, [fp, #-60]	@, %sfp
	bge	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1059, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1059, <variable>.BS.BsLen,
	ble	.L2764	@,
	b	.L2763	@
.L2765:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp259, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp259, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1065, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1065, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2764:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp898,,
	mov	r0, sl	@, D.42723
	add	lr, r7, #1	@, tmp898,
	str	lr, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r7, r8	@ tmp898, payloadSize
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	blt	.L2765	@,
	b	.L2763	@
.L2742:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	lr, r2, #8	@ tmp306, <variable>.BS.TotalPos,
	cmp	lr, r0, asl #3	@ tmp306, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r3, #0	@,
	str	r3, [fp, #-60]	@, %sfp
	bne	.L2773	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r2, #1	@,
	cmp	r2, r8	@, payloadSize
	str	r2, [fp, #-60]	@, %sfp
	bge	.L2763	@,
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r0, #8	@ tmp1091, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp1091, <variable>.BS.BsLen,
	ble	.L2773	@,
	b	.L2763	@
.L2774:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r2, #8	@ tmp309, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp309, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1097, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1097, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2773:
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r0, sl	@, D.42723
	add	r7, r1, #1	@ tmp910,,
	mov	r1, #8	@,
	add	r3, r7, #1	@, tmp910,
	str	r3, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r7, r8	@ tmp910, payloadSize
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	blt	.L2774	@,
	b	.L2763	@
.L2741:
	mov	r3, r8	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, ip, #8	@ tmp293, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp293, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	r0, #0	@,
	str	r0, [fp, #-60]	@, %sfp
	bne	.L2771	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r3, #1	@,
	cmp	r3, r8	@, payloadSize
	str	r3, [fp, #-60]	@, %sfp
	bge	.L2763	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1079, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1079, <variable>.BS.BsLen,
	ble	.L2771	@,
	b	.L2763	@
.L2772:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp296, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp296, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1085, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1085, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2771:
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r0, sl	@, D.42723
	add	r7, r1, #1	@ tmp906,,
	mov	r1, #8	@,
	add	ip, r7, #1	@, tmp906,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r7, r8	@ tmp906, payloadSize
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	blt	.L2772	@,
	b	.L2763	@
.L2738:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, payloadSize
	bl	PassBytes	@
	cmp	r8, #0	@ payloadSize,
	ble	.L2763	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp776, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp776, <variable>.BS.BsLen,
	bgt	.L2763	@,
	tst	r8, #1	@ payloadSize,
	mov	ip, #0	@,
	str	ip, [fp, #-60]	@, %sfp
	bne	.L2833	@,
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	mov	r1, #1	@,
	cmp	r8, r1	@ payloadSize,
	str	r1, [fp, #-60]	@, %sfp
	ble	.L2763	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp1047, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp1047, <variable>.BS.BsLen,
	ble	.L2833	@,
	b	.L2763	@
.L2834:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp782, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp782, <variable>.BS.BsLen,
	bgt	.L2763	@,
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1053, <variable>.BS.TotalPos,
	cmp	r0, ip, asl #3	@ tmp1053, <variable>.BS.BsLen,
	bgt	.L2763	@,
.L2833:
	ldr	r0, [fp, #-60]	@, %sfp
	mov	r1, #8	@,
	add	r7, r0, #1	@ tmp894,,
	mov	r0, sl	@, D.42723
	add	ip, r7, #1	@, tmp894,
	str	ip, [fp, #-60]	@, %sfp
	bl	BsSkip	@
	cmp	r8, r7	@ payloadSize, tmp894
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bgt	.L2834	@,
	b	.L2763	@
.L3043:
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	r8, #0	@ ret.7574,
	add	ip, r0, r7	@,, byte_tmp.7575
	str	ip, [fp, #-60]	@, %sfp
	ble	.L2838	@,
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2	@ byte_tmp.7581, byte_tmp
	cmp	r3, #255	@ byte_tmp.7581,
	beq	.L2839	@,
	cmp	r3, #128	@ byte_tmp.7581,
	bne	.L2841	@,
	mov	r0, #0	@ D.42728,
	b	.L2729	@
.L2743:
	movw	r1, #:lower16:.LC133	@,
	mov	r3, r8	@, payloadSize
	movt	r1, #:upper16:.LC133	@,
	mov	r0, #20	@,
	mov	ip, #1	@,
	str	ip, [fp, #-68]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2776	@
.L3046:
	movw	lr, #52680	@ tmp460,
	sub	r0, r7, #1	@ tmp911, ret.7424,
	ldr	r3, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	and	r2, r0, #1	@, tmp911,
	str	r2, [fp, #-60]	@, %sfp
	add	ip, r3, #13120	@ tmp458, <variable>.TotalUsrDatNum,
	add	r1, ip, #50	@ tmp458, tmp458,
	add	lr, r4, r1, asl #2	@, tmp465, pH264Ctx, tmp458,
	ldr	r0, [lr, #4]	@ tmp462, <variable>.pUsrDatArray
	str	r7, [r0, #1048]	@ ret.7424, <variable>.data_size
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp468, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp468, <variable>.BS.BsLen,
	bgt	.L2790	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r8, #1	@ i.7435,
	cmp	r7, r8	@ ret.7424, i.7435
	ble	.L2790	@,
	ldr	lr, [fp, #-60]	@, %sfp
	cmp	lr, #0	@,
	beq	.L2791	@,
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r1, #8	@ tmp1103, <variable>.BS.TotalPos,
	cmp	r0, ip, asl #3	@ tmp1103, <variable>.BS.BsLen,
	bgt	.L2790	@,
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r8, #2	@ i.7435,
	cmp	r7, r8	@ ret.7424, i.7435
	bgt	.L2791	@,
	b	.L2790	@
.L3050:
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r0, sl	@, D.42723
	add	r3, r1, #8	@ tmp1022, <variable>.BS.TotalPos,
	mov	r1, #8	@,
	cmp	r3, ip, asl #3	@ tmp1022, <variable>.BS.BsLen,
	bgt	.L2790	@,
	bl	BsSkip	@
	cmp	r7, r8	@ ret.7424, i.7435
	ble	.L2790	@,
.L2791:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	mov	r1, #8	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r8, r8, #1	@ tmp914, i.7435,
	add	r3, r2, r1	@ tmp1014, <variable>.BS.TotalPos,
	mov	r0, sl	@, D.42723
	add	r8, r8, #1	@ i.7435, tmp914,
	cmp	r3, ip, asl #3	@ tmp1014, <variable>.BS.BsLen,
	ble	.L3050	@,
	b	.L2790	@
.L3041:
	rsb	ip, r7, r2	@, bitpos.7557, temp.7558
	str	ip, [fp, #-64]	@, %sfp
	cmp	ip, #0	@,
	add	r1, ip, #7	@ tmp755,,
	movge	r1, ip	@ temp.7660,
	mov	r2, r1, asr #3	@, temp.7660,
	str	r2, [fp, #-60]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
	ble	.L2830	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp761, prephitmp.7284,
	mov	r2, r2, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
	cmp	lr, r2	@ tmp761, prephitmp.7566
	bgt	.L2830	@,
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, #0	@ i.7561,
	tst	r3, #1	@,
	beq	.L3051	@,
.L3031:
	str	r8, [fp, #-72]	@ payloadSize, %sfp
	mov	r8, r0	@ i.7561, i.7561
	b	.L2831	@
.L2832:
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7284, <variable>.BS.TotalPos
	mov	r2, ip, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
	add	r7, r3, #8	@ tmp765, prephitmp.7284,
	cmp	r7, r2	@ tmp765, prephitmp.7566
	bgt	.L3037	@,
	bl	BsSkip	@
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7284, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
	add	r0, r3, #8	@ tmp1323, prephitmp.7284,
	cmp	r0, r2	@ tmp1323, prephitmp.7566
	bgt	.L3037	@,
.L2831:
	mov	r1, #8	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r7, r8, #1	@ tmp991, i.7561,
	mov	r0, sl	@, D.42723
	cmp	r7, r2	@ tmp991,
	add	r8, r7, #1	@ i.7561, tmp991,
	mov	r1, #8	@,
	blt	.L2832	@,
	ldr	r8, [fp, #-72]	@ payloadSize, %sfp
.L2980:
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7284, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
.L2830:
	ldr	r7, [fp, #-64]	@, %sfp
	mov	lr, r7, asr #31	@ tmp769,,
	mov	r1, lr, lsr #29	@ tmp770, tmp769,
	add	r0, r7, r1	@ tmp771,, tmp770
	and	ip, r0, #7	@ tmp772, tmp771,
	rsb	r1, r1, ip	@ tmp773, tmp770, tmp772
	add	lr, r3, r1	@ tmp774, prephitmp.7284, tmp773
	cmp	lr, r2	@ tmp774, prephitmp.7566
	bgt	.L2828	@,
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	b	.L2828	@
.L3048:
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r7, [fp, #-60]	@, %sfp
	mov	r0, #1	@ i.7390,
	cmp	r0, r7	@ i.7390,
	bge	.L2979	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7297, <variable>.BS.TotalPos
	mov	r2, ip, asl #3	@ prephitmp.7299, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1072, prephitmp.7297,
	cmp	lr, r2	@ tmp1072, prephitmp.7299
	ble	.L3007	@,
	b	.L2768	@
.L3051:
	mov	r0, sl	@, D.42723
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r7, [fp, #-60]	@, %sfp
	mov	r0, #1	@ i.7561,
	cmp	r0, r7	@ i.7561,
	bge	.L2980	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7284, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7566, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1319, prephitmp.7284,
	cmp	lr, r2	@ tmp1319, prephitmp.7566
	ble	.L3031	@,
	b	.L2830	@
.L3044:
	movw	r0, #52680	@,
	strb	r2, [r1, #1064]	@ registered_flag, <variable>.IsRegistered
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC135	@,
	add	r7, r3, #13120	@ tmp348, <variable>.TotalUsrDatNum,
	movt	r2, #:upper16:.LC135	@,
	add	lr, r7, #50	@ tmp348, tmp348,
	add	r3, r4, lr, asl #2	@, tmp354, pH264Ctx, tmp348,
	ldr	r7, [r3, #4]	@ D.42779, <variable>.pUsrDatArray
	str	ip, [fp, #-80]	@,
	bl	u_v	@
	movw	lr, #52680	@,
	strb	r0, [r7, #1065]	@, <variable>.itu_t_t35_country_code
	ldr	ip, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r7, ip, #13120	@ tmp358, <variable>.TotalUsrDatNum,
	ldr	ip, [fp, #-80]	@,
	add	r1, r7, #50	@ tmp358, tmp358,
	add	r2, r4, r1, asl #2	@, tmp364, pH264Ctx, tmp358,
	ldr	r3, [r2, #4]	@ temp.7411, <variable>.pUsrDatArray
	ldrb	r0, [r3, #1065]	@ zero_extendqisi2	@ <variable>.itu_t_t35_country_code, <variable>.itu_t_t35_country_code
	cmp	r0, #255	@ <variable>.itu_t_t35_country_code,
	beq	.L2784	@,
	mov	r7, #3	@ prephitmp.7293,
	mov	r2, #0	@,
	strb	r2, [r3, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	str	r7, [fp, #-60]	@ prephitmp.7293, %sfp
.L2785:
	movw	r0, #52680	@,
	mov	r1, #16	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #:lower16:.LC137	@,
	mov	r0, r4	@, pH264Ctx
	movt	r2, #:upper16:.LC137	@,
	add	lr, r3, #13120	@ tmp371, <variable>.TotalUsrDatNum,
	add	r3, lr, #50	@ tmp371, tmp371,
	add	lr, r4, r3, asl #2	@, tmp377, pH264Ctx, tmp371,
	ldr	r3, [lr, #4]	@, <variable>.pUsrDatArray
	str	ip, [fp, #-80]	@,
	str	r3, [fp, #-72]	@, %sfp
	bl	u_v	@
	ldr	lr, [fp, #-72]	@, %sfp
	movw	r3, #1068	@ tmp380,
	mov	r1, r7	@, prephitmp.7293
	strh	r0, [lr, r3]	@ movhi	@, <variable>.itu_t_t35_provider_code
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	ldr	ip, [fp, #-64]	@, %sfp
	cmp	ip, r7	@, prephitmp.7293
	ldr	ip, [fp, #-80]	@,
	beq	.L2786	@,
	movw	r0, #52680	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r3, #13120	@ tmp381, <variable>.TotalUsrDatNum,
	add	r1, lr, #50	@ tmp381, tmp381,
	add	r2, r4, r1, asl #2	@, tmp387, pH264Ctx, tmp381,
	ldr	r1, [r2, #4]	@ prephitmp.7292, <variable>.pUsrDatArray
	b	.L2787	@
.L3047:
	rsb	r1, ip, r8	@, D.42782, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	b	.L2792	@
.L3049:
	mov	r0, sl	@, D.42723
	bl	BsSkip	@
	b	.L2766	@
.L3032:
	ldr	r8, [fp, #-72]	@ payloadSize, %sfp
	b	.L2768	@
.L3037:
	ldr	r8, [fp, #-72]	@ payloadSize, %sfp
	b	.L2830	@
.L2786:
	movw	r1, #52680	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r0, lr, #13120	@ tmp389, <variable>.TotalUsrDatNum,
	movw	lr, #:lower16:g_event_report	@ tmp422,
	add	r3, r0, #50	@ tmp389, tmp389,
	ldrd	r0, [ip, #56]	@, <variable>.pstExtraData,
	movw	ip, #52680	@,
	movt	lr, #:upper16:g_event_report	@ tmp422,
	add	r2, r4, r3, asl #2	@, tmp396, pH264Ctx, tmp389,
	mov	r3, #1056	@ tmp398,
	ldr	r7, [r2, #4]	@ tmp393, <variable>.pUsrDatArray
	strd	r0, [r7, r3]	@, tmp393, tmp398
	ldr	r7, [r4, ip]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, r7, #13120	@ tmp401, <variable>.TotalUsrDatNum,
	mov	r7, #8	@ tmp410,
	add	r2, r1, #50	@ tmp401, tmp401,
	movw	r1, #54128	@ tmp420,
	add	r3, r4, r2, asl #2	@, tmp408, pH264Ctx, tmp401,
	ldr	ip, [r3, #4]	@ tmp405, <variable>.pUsrDatArray
	str	r7, [ip, #1036]	@ tmp410, <variable>.from
	movw	r7, #52680	@,
	ldr	r2, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	ip, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r3, r2, #13120	@ tmp411, <variable>.TotalUsrDatNum,
	add	r2, r3, #50	@ tmp411, tmp411,
	add	r3, r4, r2, asl #2	@, tmp418, pH264Ctx, tmp411,
	ldr	r2, [r3, #4]	@ tmp415, <variable>.pUsrDatArray
	str	ip, [r2, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2763	@,
	ldr	ip, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	sub	r2, fp, #44	@ tmp435,,
	movw	r0, #54168	@ tmp434,
	mov	r1, #6	@,
	add	lr, ip, #13120	@ tmp424, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	ip, lr, #50	@ tmp424, tmp424,
	add	lr, r4, ip, asl #2	@, tmp430, pH264Ctx, tmp424,
	ldr	ip, [lr, #4]	@ tmp432, <variable>.pUsrDatArray
	str	ip, [r2, #-8]!	@ tmp432, para
	blx	r3	@ g_event_report
	b	.L2763	@
.L2784:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC136	@,
	movt	r2, #:upper16:.LC136	@,
	str	ip, [fp, #-80]	@,
	mov	r7, #4	@ prephitmp.7293,
	str	r3, [fp, #-84]	@,
	bl	u_v	@
	ldr	r1, [fp, #-84]	@,
	str	r7, [fp, #-60]	@ prephitmp.7293, %sfp
	strb	r0, [r1, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	ldr	ip, [fp, #-80]	@,
	b	.L2785	@
.L2777:
	mvn	r0, #0	@ D.42728,
	b	.L2729	@
.L3045:
	movw	r5, #52680	@ tmp443,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #54168	@ tmp439,
	add	r3, r0, #13120	@ tmp440, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r1, r3, #50	@ tmp440, tmp440,
	add	ip, r4, r1, asl #2	@, tmp446, pH264Ctx, tmp440,
	ldr	r1, [ip, #4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r2, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mvn	r0, #0	@ D.42728,
	add	r3, r2, #13120	@ tmp448, <variable>.TotalUsrDatNum,
	mov	r2, #0	@ tmp456,
	add	ip, r3, #50	@ tmp448, tmp448,
	add	r1, r4, ip, asl #2	@, tmp454, pH264Ctx, tmp448,
	str	r2, [r1, #4]	@ tmp456, <variable>.pUsrDatArray
	b	.L2729	@
	.fnend
	.size	H264_DecSEI, .-H264_DecSEI
	.align	2
	.global	vui_parameters
	.type	vui_parameters, %function
vui_parameters:
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
	mov	r5, r1	@ pVUI, pVUI
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41589,
	strb	r0, [r5, #0]	@ D.41589, <variable>.aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.41589,
	streqb	r0, [r5, #15]	@ D.41589, <variable>.aspect_ratio_idc
	bne	.L3077	@,
.L3054:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC160	@,
	movt	r1, #:upper16:.LC160	@,
	bl	u_1	@
	uxtb	r2, r0	@ D.41604,
	strb	r2, [r5, #1]	@ D.41604, <variable>.overscan_info_present_flag
	cmp	r2, #0	@ D.41604,
	bne	.L3078	@,
.L3055:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.41611,
	strb	r3, [r5, #3]	@ D.41611, <variable>.video_signal_type_present_flag
	cmp	r3, #0	@ D.41611,
	moveq	r3, #5	@ tmp229,
	streq	r3, [r5, #28]	@ tmp229, <variable>.video_format
	bne	.L3079	@,
.L3057:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41632,
	strb	r0, [r5, #6]	@ D.41632, <variable>.chroma_location_info_present_flag
	cmp	r0, #0	@ D.41632,
	bne	.L3080	@,
.L3058:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	bl	u_1	@
	uxtb	r1, r0	@ D.41639,
	strb	r1, [r5, #8]	@ D.41639, <variable>.timing_info_present_flag
	cmp	r1, #0	@ D.41639,
	bne	.L3081	@,
.L3059:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC176	@,
	movt	r1, #:upper16:.LC176	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.41659,
	strb	r0, [r5, #7]	@ D.41659, <variable>.nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41659,
	beq	.L3060	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC178	@,
	movt	r2, #:upper16:.LC178	@,
	str	r0, [r5, #96]	@, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC179	@,
	movt	r2, #:upper16:.LC179	@,
	strb	r0, [r5, #92]	@, <variable>.nal_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	cmp	r1, #31	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, <variable>.nal_hrd_parameters.cpb_size_scale
	bhi	.L3066	@,
	movw	lr, #54108	@ tmp254,
	ldr	r8, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7711, pVUI
	moveq	r7, r5	@ ivtmp.7700, pVUI
	bne	.L3066	@,
.L3064:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC181	@,
	movt	r1, #:upper16:.LC181	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC182	@,
	movt	r1, #:upper16:.LC182	@,
	str	r0, [r6, #100]	@, <variable>.nal_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r0, [r6, #228]	@, <variable>.nal_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7711, ivtmp.7711,
	cmp	r2, r8	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #60]	@, <variable>.nal_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7700, ivtmp.7700,
	bcs	.L3064	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC184	@,
	movt	r2, #:upper16:.LC184	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC185	@,
	movt	r2, #:upper16:.LC185	@,
	str	r0, [r5, #356]	@, <variable>.nal_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC186	@,
	str	r0, [r5, #360]	@, <variable>.nal_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC187	@,
	str	r0, [r5, #364]	@, <variable>.nal_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, <variable>.nal_hrd_parameters.time_offset_length
.L3060:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC188	@,
	movt	r1, #:upper16:.LC188	@,
	bl	u_1	@
	uxtb	ip, r0	@ D.41689,
	strb	ip, [r5, #10]	@ D.41689, <variable>.vcl_hrd_parameters_present_flag
	cmp	ip, #0	@ D.41689,
	bne	.L3082	@,
.L3065:
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.nal_hrd_parameters_present_flag, <variable>.nal_hrd_parameters_present_flag
	cmp	lr, #0	@ <variable>.nal_hrd_parameters_present_flag,
	bne	.L3069	@,
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.vcl_hrd_parameters_present_flag, <variable>.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vcl_hrd_parameters_present_flag,
	bne	.L3069	@,
.L3070:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC190	@,
	movt	r1, #:upper16:.LC190	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	strb	r0, [r5, #11]	@, <variable>.pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.41723,
	strb	ip, [r5, #12]	@ D.41723, <variable>.bitstream_restriction_flag
	cmp	ip, #0	@ D.41723,
	bne	.L3083	@,
	movw	lr, #54108	@ tmp304,
	ldr	r1, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3072	@,
.L3073:
	mov	r0, #0	@ D.41674,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3069:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC189	@,
	movt	r1, #:upper16:.LC189	@,
	bl	u_1	@
	strb	r0, [r5, #14]	@, <variable>.low_delay_hrd_flag
	b	.L3070	@
.L3083:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC193	@,
	movt	r1, #:upper16:.LC193	@,
	strb	r0, [r5, #13]	@, <variable>.motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC194	@,
	movt	r1, #:upper16:.LC194	@,
	str	r0, [r5, #684]	@, <variable>.max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC195	@,
	movt	r1, #:upper16:.LC195	@,
	str	r0, [r5, #688]	@, <variable>.max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC196	@,
	movt	r1, #:upper16:.LC196	@,
	str	r0, [r5, #696]	@, <variable>.log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	str	r0, [r5, #692]	@, <variable>.log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	str	r0, [r5, #700]	@, <variable>.num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, <variable>.max_dec_frame_buffering
	movw	r0, #54108	@ tmp302,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3073	@,
.L3072:
	mvn	r0, #0	@ D.41674,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3077:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC157	@,
	movt	r2, #:upper16:.LC157	@,
	bl	u_v	@
	uxtb	r1, r0	@ D.41594,
	strb	r1, [r5, #15]	@ D.41594, <variable>.aspect_ratio_idc
	cmp	r1, #255	@ D.41594,
	bne	.L3054	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC158	@,
	movt	r2, #:upper16:.LC158	@,
	bl	u_v	@
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC159	@,
	movt	r2, #:upper16:.LC159	@,
	str	r0, [r5, #16]	@, <variable>.sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, <variable>.sar_height
	b	.L3054	@
.L3081:
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC173	@,
	movt	r2, #:upper16:.LC173	@,
	bl	u_v	@
	mov	r1, #32	@,
	movw	r2, #:lower16:.LC174	@,
	movt	r2, #:upper16:.LC174	@,
	str	r0, [r5, #52]	@, <variable>.num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC175	@,
	str	r0, [r5, #56]	@, <variable>.time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r2, r0	@ D.41648,
	strb	r2, [r5, #9]	@ D.41648, <variable>.fixed_frame_rate_flag
	cmp	r2, #1	@ D.41648,
	bne	.L3059	@,
	ldr	r1, [r5, #52]	@ D.41652, <variable>.num_units_in_tick
	cmp	r1, #0	@ D.41652,
	beq	.L3059	@,
	ldr	r0, [r5, #56]	@, <variable>.time_scale
	bl	__aeabi_uidiv	@
	movw	r3, #52676	@ tmp240,
	mov	ip, r0, lsr #1	@ tmp245,,
	str	ip, [r4, r3]	@ tmp245, <variable>.frame_rate
	b	.L3059	@
.L3080:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	str	r0, [r5, #44]	@, <variable>.chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, <variable>.chroma_sample_loc_type_bottom_field
	b	.L3058	@
.L3079:
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC163	@,
	movt	r2, #:upper16:.LC163	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	str	r0, [r5, #28]	@, <variable>.video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC165	@,
	movt	r1, #:upper16:.LC165	@,
	strb	r0, [r5, #4]	@, <variable>.video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.41620,
	strb	ip, [r5, #5]	@ D.41620, <variable>.colour_description_present_flag
	cmp	ip, #0	@ D.41620,
	beq	.L3057	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC166	@,
	movt	r2, #:upper16:.LC166	@,
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC167	@,
	movt	r2, #:upper16:.LC167	@,
	str	r0, [r5, #32]	@, <variable>.colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC168	@,
	movt	r2, #:upper16:.LC168	@,
	str	r0, [r5, #36]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, <variable>.matrix_coefficients
	b	.L3057	@
.L3078:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC161	@,
	movt	r1, #:upper16:.LC161	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.overscan_appropriate_flag
	b	.L3055	@
.L3082:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC178	@,
	movt	r2, #:upper16:.LC178	@,
	str	r0, [r5, #408]	@, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC179	@,
	movt	r2, #:upper16:.LC179	@,
	strb	r0, [r5, #404]	@, <variable>.vcl_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	cmp	r3, #31	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, <variable>.vcl_hrd_parameters.cpb_size_scale
	bhi	.L3066	@,
	movw	r0, #54108	@ tmp274,
	ldr	r8, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7692, pVUI
	moveq	r7, r5	@ ivtmp.7705, pVUI
	bne	.L3066	@,
.L3068:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC181	@,
	movt	r1, #:upper16:.LC181	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC182	@,
	movt	r1, #:upper16:.LC182	@,
	str	r0, [r6, #412]	@, <variable>.vcl_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r0, [r6, #540]	@, <variable>.vcl_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7692, ivtmp.7692,
	cmp	r1, r8	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #372]	@, <variable>.vcl_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7705, ivtmp.7705,
	bcs	.L3068	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC184	@,
	movt	r2, #:upper16:.LC184	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC185	@,
	movt	r2, #:upper16:.LC185	@,
	str	r0, [r5, #668]	@, <variable>.vcl_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC186	@,
	str	r0, [r5, #672]	@, <variable>.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC187	@,
	str	r0, [r5, #676]	@, <variable>.vcl_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #680]	@, <variable>.vcl_hrd_parameters.time_offset_length
	b	.L3065	@
.L3066:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41674,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
.LFB1464:
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
	beq	.L3164	@,
	ldr	r3, [r5, #736]	@ D.42005, <variable>.profile_idc
	cmp	r3, #100	@ D.42005,
	cmpne	r3, #110	@, D.42005,
	movne	r2, #0	@, tmp219
	moveq	r2, #1	@, tmp219
	beq	.L3087	@,
	cmp	r3, #122	@ D.42005,
	beq	.L3087	@,
	cmp	r3, #144	@ D.42005,
	strneb	r2, [r5, #25]	@ tmp219, <variable>.seq_scaling_matrix_present_flag
	movne	r3, #1	@ tmp391,
	strne	r3, [r5, #748]	@ tmp391, <variable>.chroma_format_idc
	beq	.L3087	@,
.L3097:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC209	@,
	movt	r1, #:upper16:.LC209	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.42104,
	str	r0, [r5, #2896]	@ D.42104, <variable>.log2_max_frame_num_minus4
	bhi	.L3113	@,
	movw	r6, #54108	@ tmp395,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3113	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC211	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.42110,
	str	r0, [r5, #2900]	@ D.42110, <variable>.pic_order_cnt_type
	bhi	.L3115	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3115	@,
	cmp	r0, #0	@ D.42110,
	beq	.L3165	@,
	cmp	r0, #1	@ D.42110,
	beq	.L3166	@,
.L3119:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC221	@,
	movt	r1, #:upper16:.LC221	@,
	movw	r6, #54108	@ tmp427,
	bl	ue_v	@
	str	r0, [r5, #3944]	@, <variable>.num_ref_frames
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3167	@,
.L3120:
	mvn	r0, #0	@ D.42001,
.L3086:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3087:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC199	@,
	movt	r1, #:upper16:.LC199	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.42012,
	str	r0, [r5, #748]	@ D.42012, <variable>.chroma_format_idc
	bhi	.L3089	@,
	movw	r6, #54108	@ tmp221,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3089	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3091	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3091	@,
.L3092:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3093	@,
	movw	r2, #54108	@ tmp229,
	ldr	r1, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3093	@,
.L3094:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L3095	@,
	movw	lr, #54108	@ tmp233,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3095	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.42035,
	strb	r3, [r5, #25]	@ D.42035, <variable>.seq_scaling_matrix_present_flag
	cmp	r3, #1	@ D.42035,
	bne	.L3097	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	add	sl, r5, #752	@ D.42046, pSPS,
	bl	u_1	@
	add	r6, r5, #2672	@ D.42049, pSPS,
	cmp	r0, #1	@ temp.7804,
	str	r0, [fp, #-84]	@ temp.7804, q4x4defaultflag
	strb	r0, [r5, #4]	@ temp.7804, <variable>.seq_scaling_list_present_flag
	beq	.L3098	@,
.L3160:
	ldr	ip, .L3175	@ tmp248,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp248,,,,
	stmia	r6, {r0, r1, r2, r3}	@ D.42049,,,,
.L3099:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7808,
	str	r0, [fp, #-80]	@ temp.7808, q4x4defaultflag
	strb	r0, [r5, #5]	@ temp.7808, <variable>.seq_scaling_list_present_flag
	beq	.L3100	@,
	add	r7, r6, #16	@ tmp544, D.42049,
	mov	r1, r6	@, D.42049
	mov	r2, #16	@,
	mov	r0, r7	@, tmp544
	bl	memcpy	@
.L3101:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7816,
	str	r0, [fp, #-76]	@ temp.7816, q4x4defaultflag
	strb	r0, [r5, #6]	@ temp.7816, <variable>.seq_scaling_list_present_flag
	beq	.L3102	@,
	mov	r1, r7	@, tmp544
	add	r0, r6, #32	@, D.42049,
	mov	r2, #16	@,
	bl	memcpy	@
.L3103:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7825,
	str	r0, [fp, #-72]	@ temp.7825, q4x4defaultflag
	strb	r0, [r5, #7]	@ temp.7825, <variable>.seq_scaling_list_present_flag
	beq	.L3104	@,
	add	r7, r6, #48	@ tmp546, D.42049,
	ldr	r1, .L3175+4	@,
	mov	r2, #16	@,
	mov	r0, r7	@, tmp546
	bl	memcpy	@
.L3105:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7833,
	str	r0, [fp, #-68]	@ temp.7833, q4x4defaultflag
	strb	r0, [r5, #8]	@ temp.7833, <variable>.seq_scaling_list_present_flag
	beq	.L3106	@,
	add	r8, r6, #64	@ tmp548, D.42049,
	mov	r1, r7	@, tmp546
	mov	r2, #16	@,
	mov	r0, r8	@, tmp548
	bl	memcpy	@
.L3107:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ D.42040,
	str	r0, [fp, #-64]	@ D.42040, q4x4defaultflag
	strb	r0, [r5, #9]	@ D.42040, <variable>.seq_scaling_list_present_flag
	beq	.L3168	@,
	add	r0, r6, #80	@, D.42049,
	mov	r1, r8	@, tmp548
	mov	r2, #16	@,
	bl	memcpy	@
.L3109:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	add	r8, r5, #1136	@ D.42083, pSPS,
	bl	u_1	@
	add	r6, r5, #2768	@ D.42086, pSPS,
	cmp	r0, #1	@ temp.7842,
	str	r0, [fp, #-52]	@ temp.7842, q8x8defaultflag
	strb	r0, [r5, #10]	@ temp.7842, <variable>.seq_scaling_list_present_flag
	beq	.L3110	@,
	ldr	ip, .L3175+8	@ tmp360,
	mov	lr, r6	@ D.42086, D.42086
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp362,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.42086,,,,
	mov	r7, lr	@ D.42086, D.42086
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp553,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ D.42086,,,,
	mov	lr, r7	@ D.42086, D.42086
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp555,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.42086,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp555,,,,
	stmia	lr, {r0, r1, r2, r3}	@ D.42086,,,,
.L3111:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	cmp	r0, #1	@ D.42076,
	str	r0, [fp, #-48]	@ D.42076, q8x8defaultflag
	strb	r0, [r5, #11]	@ D.42076, <variable>.seq_scaling_list_present_flag
	beq	.L3169	@,
	add	r0, r6, #64	@, D.42086,
	ldr	r1, .L3175+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3097	@
.L3093:
	movw	r1, #:lower16:.LC204	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC204	@,
	bl	dprint_vfmw	@
	b	.L3094	@
.L3091:
	movw	r1, #:lower16:.LC202	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC202	@,
	bl	dprint_vfmw	@
	b	.L3092	@
.L3165:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC213	@,
	movt	r1, #:upper16:.LC213	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.42118,
	str	r0, [r5, #2904]	@ D.42118, <variable>.log2_max_pic_order_cnt_lsb_minus4
	bhi	.L3118	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3119	@,
.L3118:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC214	@,
	movt	r1, #:upper16:.LC214	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3166:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC215	@,
	movt	r1, #:upper16:.LC215	@,
	bl	u_1	@
	strb	r0, [r5, #16]	@, <variable>.delta_pic_order_always_zero_flag
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	se_v	@
	str	r0, [r5, #2908]	@, <variable>.offset_for_non_ref_pic
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC217	@,
	movt	r1, #:upper16:.LC217	@,
	bl	se_v	@
	str	r0, [r5, #2912]	@, <variable>.offset_for_top_to_bottom_field
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	ue_v	@
	cmp	r0, #255	@ prephitmp.7738,
	mov	r3, r0	@ prephitmp.7738,
	str	r0, [r5, #2916]	@ prephitmp.7738, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L3121	@,
	movw	r8, #54108	@ tmp417,
	ldr	r7, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r7, #0	@ <variable>.SeErrFlg,
	addeq	r6, r5, #2912	@ ivtmp.7755, pSPS,
	addeq	r6, r6, #8	@ ivtmp.7755, ivtmp.7755,
	beq	.L3122	@,
	b	.L3121	@
.L3123:
	bl	se_v	@
	str	r0, [r6], #4	@, <variable>.offset_for_ref_frame
	ldr	r1, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	ldr	r3, [r5, #2916]	@ prephitmp.7738, <variable>.num_ref_frames_in_pic_order_cnt_cycle
.L3122:
	cmp	r7, r3	@ i, prephitmp.7738
	movw	r1, #:lower16:.LC220	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC220	@,
	add	r7, r7, #1	@ i, i,
	bcc	.L3123	@,
	movw	r0, #54108	@ tmp424,
	ldr	lr, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	b	.L3119	@
.L3113:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3089:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC200	@,
	movt	r1, #:upper16:.LC200	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3095:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3167:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC222	@,
	movt	r1, #:upper16:.LC222	@,
	bl	u_1	@
	strb	r0, [r5, #17]	@, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC223	@,
	movt	r1, #:upper16:.LC223	@,
	bl	ue_v	@
	movw	r3, #349	@ tmp435,
	sub	r1, r0, #1	@ tmp434, D.42155,
	str	r0, [r5, #3948]	@ D.42155, <variable>.pic_width_in_mbs_minus1
	cmp	r1, r3	@ tmp434, tmp435
	bhi	.L3124	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3125	@,
.L3124:
	mov	r2, r0	@, D.42155
	movw	r1, #:lower16:.LC224	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC224	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3115:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC212	@,
	movt	r1, #:upper16:.LC212	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3168:
	add	r6, r6, #80	@ tmp549, D.42049,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #320	@, D.42046,
	mov	r3, #16	@,
	mov	r2, r6	@, tmp549
	sub	r8, fp, #64	@ tmp341,,
	str	r8, [sp, #0]	@ tmp341,
	bl	Scaling_List	@
	ldr	r0, [fp, #-64]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3109	@,
	mov	r0, r6	@, tmp549
	ldr	r1, .L3175+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3109	@
.L3106:
	add	r8, r6, #64	@ tmp548, D.42049,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #256	@, D.42046,
	mov	r2, r8	@, tmp548
	sub	lr, fp, #68	@ tmp326,,
	str	lr, [sp, #0]	@ tmp326,
	bl	Scaling_List	@
	ldr	r3, [fp, #-68]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r3, #1	@ q4x4defaultflag,
	bne	.L3107	@,
	mov	r0, r8	@, tmp548
	ldr	r1, .L3175+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3107	@
.L3104:
	add	r7, r6, #48	@ tmp546, D.42049,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #192	@, D.42046,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp546
	sub	ip, fp, #72	@ tmp305,,
	str	ip, [sp, #0]	@ tmp305,
	bl	Scaling_List	@
	ldr	r2, [fp, #-72]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r2, #1	@ q4x4defaultflag,
	bne	.L3105	@,
	mov	r0, r7	@, tmp546
	ldr	r1, .L3175+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3105	@
.L3102:
	add	r7, r6, #32	@ tmp545, D.42049,
	add	r1, sl, #128	@, D.42046,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #16	@,
	mov	r2, r7	@, tmp545
	sub	r8, fp, #76	@ tmp283,,
	str	r8, [sp, #0]	@ tmp283,
	bl	Scaling_List	@
	ldr	r1, [fp, #-76]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r1, #1	@ q4x4defaultflag,
	bne	.L3103	@,
	mov	r0, r7	@, tmp545
	ldr	r1, .L3175	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3103	@
.L3100:
	add	r7, r6, #16	@ tmp544, D.42049,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #64	@, D.42046,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp544
	sub	lr, fp, #80	@ tmp262,,
	str	lr, [sp, #0]	@ tmp262,
	bl	Scaling_List	@
	ldr	r0, [fp, #-80]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3101	@,
	mov	r0, r7	@, tmp544
	ldr	r1, .L3175	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3101	@
.L3098:
	mov	r0, r4	@, pH264Ctx
	mov	r1, sl	@, D.42046
	mov	r2, r6	@, D.42049
	mov	r3, #16	@,
	sub	r8, fp, #84	@ tmp245,,
	str	r8, [sp, #0]	@ tmp245,
	bl	Scaling_List	@
	ldr	r7, [fp, #-84]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r7, #1	@ q4x4defaultflag,
	bne	.L3099	@,
	b	.L3160	@
.L3169:
	add	r6, r6, #64	@ tmp547, D.42086,
	add	r1, r8, #256	@, D.42083,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #64	@,
	mov	r2, r6	@, tmp547
	sub	lr, fp, #48	@ tmp375,,
	str	lr, [sp, #0]	@ tmp375,
	bl	Scaling_List	@
	ldr	r2, [fp, #-48]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r2, #1	@ q8x8defaultflag,
	bne	.L3097	@,
	mov	r0, r6	@, tmp547
	ldr	r1, .L3175+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3097	@
.L3110:
	mov	r1, r8	@, D.42083
	mov	r0, r4	@, pH264Ctx
	mov	r2, r6	@, D.42086
	mov	r3, #64	@,
	sub	ip, fp, #52	@ tmp363,,
	str	ip, [sp, #0]	@ tmp363,
	bl	Scaling_List	@
	ldr	r1, [fp, #-52]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r1, #1	@ q8x8defaultflag,
	bne	.L3111	@,
	ldr	lr, .L3175+8	@ tmp366,
	mov	ip, r6	@ D.42086, D.42086
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp368,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ D.42086,,,,
	mov	r7, ip	@ D.42086, D.42086
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp557,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ D.42086,,,,
	mov	ip, r7	@ D.42086, D.42086
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp559,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ D.42086,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp559,,,,
	stmia	ip, {r0, r1, r2, r3}	@ D.42086,,,,
	b	.L3111	@
.L3164:
	mov	r0, r5	@, pSPS
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #8719	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3125:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC225	@,
	movt	r1, #:upper16:.LC225	@,
	bl	ue_v	@
	str	r0, [r5, #3952]	@, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC226	@,
	movt	r1, #:upper16:.LC226	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.42166,
	strb	r0, [r5, #18]	@ D.42166, <variable>.frame_mbs_only_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	cmp	r0, #0	@ D.42166,
	bne	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC227	@,
	movt	r1, #:upper16:.LC227	@,
	bl	u_1	@
	ldr	ip, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r3, ip, #1	@ prephitmp.7732, <variable>.pic_height_in_map_units_minus1,
	cmp	r3, #131	@ prephitmp.7732,
	strb	r0, [r5, #19]	@, <variable>.mb_adaptive_frame_field_flag
	bhi	.L3157	@,
	ldr	r8, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	r8, r8, #1	@ prephitmp.7786, <variable>.pic_width_in_mbs_minus1,
	cmp	r8, #3	@ prephitmp.7786,
	bls	.L3157	@,
	cmp	r3, #1	@ prephitmp.7732,
	movhi	sl, #2	@ temp,
	bls	.L3157	@,
.L3158:
	mul	r0, sl, r3	@ tmp452, temp, prephitmp.7732
	mov	r8, r8, asl #4	@ PicWidthInSmp, prephitmp.7786,
	mov	r1, #3	@ tmp455,
	movw	r2, #:lower16:35684352	@ tmp456,
	movt	r2, #:upper16:35684352	@ tmp456,
	mov	r7, r0, asl #4	@ PicHeightInSmp, tmp452,
	mul	lr, r8, r7	@ tmp453, PicWidthInSmp, PicHeightInSmp
	mov	r3, lr, lsr #1	@ tmp454, tmp453,
	mul	r1, r1, r3	@ pic_size, tmp455, tmp454
	cmp	r1, r2	@ pic_size, tmp456
	bhi	.L3170	@,
	ldr	r2, [r5, #740]	@ D.42200, <variable>.level_idc
	sub	ip, r2, #10	@ tmp458, D.42200,
	cmp	ip, #31	@ tmp458,
	ldrls	pc, [pc, ip, asl #2]	@ tmp458
	b	.L3130	@
.L3139:
	.word	.L3131
	.word	.L3132
	.word	.L3133
	.word	.L3133
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3133
	.word	.L3134
	.word	.L3135
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3135
	.word	.L3136
	.word	.L3137
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3130
	.word	.L3138
	.word	.L3138
.L3121:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC219	@,
	movt	r1, #:upper16:.LC219	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3137:
	mov	r0, #7864320	@ size,
.L3140:
	bl	__aeabi_uidiv	@
	movw	r1, #:lower16:.LC231	@,
	movt	r1, #:upper16:.LC231	@,
	cmp	r0, #16	@,
	movcc	r6, r0	@ size.7761,
	movcs	r6, #16	@ size.7761,
	mov	r0, #21	@,
	mov	r2, r6	@, size.7761
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3944]	@ D.42207, <variable>.num_ref_frames
	cmp	r2, r6	@ D.42207, size.7761
	bhi	.L3141	@,
	movw	r1, #54108	@ tmp464,
	ldr	r9, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r9, #0	@ <variable>.SeErrFlg,
	beq	.L3142	@,
.L3141:
	mov	r3, r6	@, size.7761
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC232	@,
	movt	r1, #:upper16:.LC232	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #3944]	@ temp.7791, <variable>.num_ref_frames
	cmp	r3, #16	@ temp.7791,
	bhi	.L3161	@,
	cmp	r6, r3	@ size.7761, temp.7791
	movcc	r6, r3	@ size.7761, temp.7791
.L3161:
	str	r6, [r5, #3944]	@ size.7761, <variable>.num_ref_frames
.L3142:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC233	@,
	movt	r1, #:upper16:.LC233	@,
	movw	r9, #54108	@ tmp469,
	bl	u_1	@
	strb	r0, [r5, #20]	@, <variable>.direct_8x8_inference_flag
	ldr	r2, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC234	@,
	movt	r1, #:upper16:.LC234	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.42218,
	strb	r0, [r5, #21]	@ D.42218, <variable>.frame_cropping_flag
	ldr	r3, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	cmp	r0, #0	@ D.42218,
	bne	.L3171	@,
.L3144:
	mov	r3, r8, lsr #1	@ tmp501, PicWidthInSmp,
	mov	r0, r7, lsr #1	@ tmp502, PicHeightInSmp,
	str	r8, [r5, #3976]	@ PicWidthInSmp, <variable>.disp_width
	str	r3, [r5, #3984]	@ tmp501, <variable>.disp_center_x
	str	r0, [r5, #3988]	@ tmp502, <variable>.disp_center_y
	str	r7, [r5, #3980]	@ PicHeightInSmp, <variable>.disp_height
.L3146:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC239	@,
	movt	r1, #:upper16:.LC239	@,
	bl	u_1	@
	movw	r2, #54108	@ tmp505,
	uxtb	r3, r0	@ D.42256,
	strb	r3, [r5, #22]	@ D.42256, <variable>.vui_parameters_present_flag
	ldr	r2, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3120	@,
	cmp	r3, #0	@ D.42256,
	add	r1, r2, #2	@ tmp507, tmp507,
	str	r1, [r5, #68]	@ tmp507, <variable>.vui_seq_parameters.matrix_coefficients
	bne	.L3172	@,
	mov	r0, r3	@ prephitmp.7736, D.42256
	mov	lr, #5	@ tmp514,
	strb	r3, [r5, #43]	@ D.42256, <variable>.vui_seq_parameters.aspect_ratio_idc
	str	lr, [r5, #56]	@ tmp514, <variable>.vui_seq_parameters.video_format
.L3149:
	str	r7, [sp, #0]	@ PicHeightInSmp,
	mov	r3, r8	@, PicWidthInSmp
	ldr	r1, [r5, #44]	@, <variable>.vui_seq_parameters.sar_width
	ldr	r2, [r5, #48]	@, <variable>.vui_seq_parameters.sar_height
	bl	H264GetDar	@
	ldr	r3, [r5, #3944]	@ temp.7799, <variable>.num_ref_frames
	cmp	r3, #0	@ temp.7799,
	str	r0, [r5, #52]	@, <variable>.vui_seq_parameters.aspect_ratio
	beq	.L3153	@,
	cmp	r6, r3	@ size.7761, temp.7799
	movcs	r6, r3	@ size.7761, temp.7799
.L3153:
	ldr	r1, [r4, #0]	@ D.42288, <variable>.pstExtraData
	cmp	r6, #16	@ size.7761,
	movcs	r6, #16	@ size.7762,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L3173	@,
.L3154:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L3156	@,
	cmp	r6, #4	@ size.7762,
	movcs	r6, #4	@ size.7762,
.L3156:
	add	r6, r6, #1	@ tmp537, size.7762,
	mov	r0, #0	@ D.42001,
	str	r6, [r5, #3972]	@ tmp537, <variable>.dpb_size_plus1
	b	.L3086	@
.L3173:
	ldr	r3, [r1, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3154	@,
	ldr	ip, [r1, #492]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r2, [r1, #472]	@ MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, ip	@ size.7762, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r0, [r1, #476]	@ MaxHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L3174	@,
	cmp	r2, r8	@ MaxWidth, PicWidthInSmp
	cmpcs	r0, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L3154	@,
	movw	r1, #:lower16:g_event_report	@ tmp533,
	movt	r1, #:upper16:g_event_report	@ tmp533,
	ldr	r3, [r1, #0]	@ g_event_report.7802, g_event_report
	cmp	r3, #0	@ g_event_report.7802,
	beq	.L3120	@,
	strh	r0, [fp, #-54]	@ movhi	@ MaxHeight, para
	movw	r0, #54168	@ tmp534,
	strh	r2, [fp, #-56]	@ movhi	@ MaxWidth, para
	mov	r1, #107	@,
	strh	r8, [fp, #-60]	@ movhi	@ PicWidthInSmp, para
	sub	r2, fp, #60	@,,
	strh	r7, [fp, #-58]	@ movhi	@ PicHeightInSmp, para
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.7802
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3172:
	mov	r0, r4	@, pH264Ctx
	add	r1, r5, #28	@, pSPS,
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L3163	@,
	ldrb	ip, [r5, #40]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.bitstream_restriction_flag, <variable>.vui_seq_parameters.bitstream_restriction_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.bitstream_restriction_flag,
	beq	.L3163	@,
	ldr	r2, [r5, #732]	@ D.42272, <variable>.vui_seq_parameters.max_dec_frame_buffering
	cmp	r6, r2	@ size.7761, D.42272
	bcc	.L3151	@,
	cmp	r2, #0	@ D.42272,
	bne	.L3152	@,
.L3151:
	movw	r1, #:lower16:.LC240	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC240	@,
	mov	r3, r6	@, size.7761
	bl	dprint_vfmw	@
.L3163:
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7736, <variable>.vui_seq_parameters.aspect_ratio_idc
	b	.L3149	@
.L3152:
	ldr	r6, [r5, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7736, <variable>.vui_seq_parameters.aspect_ratio_idc
	cmp	r2, r6	@ D.42272, <variable>.num_ref_frames
	movcs	r6, r2	@ size.7761, D.42272
	b	.L3149	@
.L3171:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC235	@,
	movt	r1, #:upper16:.LC235	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC236	@,
	movt	r1, #:upper16:.LC236	@,
	str	r0, [r5, #3956]	@, <variable>.frame_crop_left_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC237	@,
	movt	r1, #:upper16:.LC237	@,
	str	r0, [r5, #3960]	@, <variable>.frame_crop_right_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC238	@,
	movt	r1, #:upper16:.LC238	@,
	str	r0, [r5, #3964]	@, <variable>.frame_crop_top_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	ip, [r5, #3964]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r1, [r5, #3956]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	mov	r3, sl, asl #1	@ tmp486, temp,
	ldr	r2, [r5, #3960]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	mov	ip, ip, asl #1	@ tmp483, <variable>.frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.42228, <variable>.frame_crop_left_offset,
	mul	sl, sl, ip	@ D.42233, temp, tmp483
	rsb	ip, r1, r8	@ tmp480, D.42228, PicWidthInSmp
	sub	r2, ip, r2, asl #1	@ D.42231, tmp480, <variable>.frame_crop_right_offset,
	rsb	ip, sl, r7	@ tmp485, D.42233, PicHeightInSmp
	mls	r3, r0, r3, ip	@ D.42237, D.42227, tmp486, tmp485
	str	r0, [r5, #3968]	@ D.42227, <variable>.frame_crop_bottom_offset
	cmp	r2, #0	@ D.42231,
	cmpgt	r3, #0	@, D.42237,
	ble	.L3144	@,
	add	lr, r1, r2, lsr #1	@, tmp498, D.42228, D.42231,
	add	sl, sl, r3, lsr #1	@, tmp500, D.42233, D.42237,
	str	lr, [r5, #3984]	@ tmp498, <variable>.disp_center_x
	str	sl, [r5, #3988]	@ tmp500, <variable>.disp_center_y
	str	r2, [r5, #3976]	@ D.42231, <variable>.disp_width
	str	r3, [r5, #3980]	@ D.42237, <variable>.disp_height
	b	.L3146	@
.L3174:
	movw	r2, #:lower16:g_event_report	@ tmp518,
	movt	r2, #:upper16:g_event_report	@ tmp518,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3120	@,
	str	r6, [fp, #-60]	@ size.7762, para
	movw	ip, #54168	@ tmp523,
	ldr	lr, [r1, #492]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	sub	r2, fp, #60	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #106	@,
	str	lr, [fp, #-56]	@ <variable>.stChanOption.s32MaxRefFrameNum, para
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3134:
	movw	r0, #:lower16:1824768	@ size,
	movt	r0, #:upper16:1824768	@ size,
	b	.L3140	@
.L3135:
	movw	r0, #:lower16:3110400	@ size,
	movt	r0, #:upper16:3110400	@ size,
	b	.L3140	@
.L3138:
	mov	r0, #12582912	@ size,
	b	.L3140	@
.L3136:
	movw	r0, #:lower16:6912000	@ size,
	movt	r0, #:upper16:6912000	@ size,
	b	.L3140	@
.L3133:
	movw	r0, #:lower16:912384	@ size,
	movt	r0, #:upper16:912384	@ size,
	b	.L3140	@
.L3132:
	movw	r0, #:lower16:345600	@ size,
	movt	r0, #:upper16:345600	@ size,
	b	.L3140	@
.L3131:
	movw	r0, #:lower16:152064	@ size,
	movt	r0, #:upper16:152064	@ size,
	b	.L3140	@
.L3130:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC230	@,
	movt	r1, #:upper16:.LC230	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3170:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC229	@,
	movt	r1, #:upper16:.LC229	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3157:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC228	@,
	movt	r1, #:upper16:.LC228	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42001,
	b	.L3086	@
.L3126:
	ldr	r3, [r5, #3952]	@ temp.7787, <variable>.pic_height_in_map_units_minus1
	strb	r2, [r5, #19]	@ <variable>.SeErrFlg, <variable>.mb_adaptive_frame_field_flag
	movw	r2, #261	@ tmp542,
	sub	lr, r3, #1	@ tmp541, temp.7787,
	cmp	lr, r2	@ tmp541, tmp542
	bhi	.L3157	@,
	ldr	r7, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mov	sl, #1	@ temp,
	add	r3, r3, #1	@ prephitmp.7732, temp.7787,
	add	r8, r7, sl	@ prephitmp.7786, <variable>.pic_width_in_mbs_minus1,
	b	.L3158	@
.L3176:
	.align	2
.L3175:
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
.LFB1465:
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
	movw	r2, #:lower16:.LC241	@,
	movt	r2, #:upper16:.LC241	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC242	@,
	movt	r1, #:upper16:.LC242	@,
	mov	r5, r0	@ D.42341,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC243	@,
	movt	r1, #:upper16:.LC243	@,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC244	@,
	movt	r1, #:upper16:.LC244	@,
	str	r0, [fp, #-64]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC245	@,
	movt	r1, #:upper16:.LC245	@,
	str	r0, [fp, #-60]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC246	@,
	movt	r2, #:upper16:.LC246	@,
	str	r0, [fp, #-56]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC247	@,
	movt	r2, #:upper16:.LC247	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC248	@,
	movt	r1, #:upper16:.LC248	@,
	mov	r6, r0	@ D.42346,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r7, r0	@ seq_parameter_set_id,
	movw	r0, #54108	@ tmp159,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3178	@,
	movw	r8, #13572	@ tmp161,
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, r2, #1	@ tmp162, <variable>.MaxSpsNum,
	cmp	r7, r1	@ seq_parameter_set_id, tmp162
	bhi	.L3195	@,
	cmp	r5, #100	@ profile_idc,
	mov	r8, r5	@ profile_idc, D.42341
	beq	.L3183	@,
	bhi	.L3186	@,
	cmp	r5, #77	@ profile_idc,
	beq	.L3183	@,
	cmp	r5, #88	@ profile_idc,
	beq	.L3184	@,
	cmp	r5, #66	@ profile_idc,
	bne	.L3181	@,
	movw	r1, #:lower16:.LC250	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC250	@,
	bl	dprint_vfmw	@
.L3183:
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42346
	bls	.L3194	@,
.L3187:
	cmp	r6, #41	@ level_idc,
	bhi	.L3194	@,
	movw	r9, #3992	@ tmp179,
	movw	r6, #13580	@ tmp180,
	mul	r5, r9, r7	@ D.42375, tmp179, seq_parameter_set_id
	ldr	sl, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r3, r5, sl	@ D.42376, D.42375, <variable>.SPS
	ldrb	sl, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	beq	.L3189	@,
.L3198:
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
	subs	r8, r0, #0	@ D.42384,
	bne	.L3196	@,
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r0, sl, #68	@, tmp183,
	add	r1, r5, r1	@, D.42375, <variable>.SPS
	bl	SPSEqual	@
	cmp	r0, #0	@ D.42388
	bne	.L3197	@,
.L3180:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3194:
	movw	r9, #3992	@ tmp179,
	mov	r3, #41	@,
	mul	r5, r9, r7	@ D.42375, tmp179, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC254	@,
	movw	r6, #13580	@ tmp180,
	movt	r1, #:upper16:.LC254	@,
	bl	dprint_vfmw	@
	ldr	sl, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, #41	@ level_idc,
	add	r3, r5, sl	@ D.42376, D.42375, <variable>.SPS
	ldrb	sl, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	bne	.L3198	@,
.L3189:
	str	r8, [r3, #736]	@ profile_idc, <variable>.profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r8, #1	@ tmp218,
	ldr	lr, [fp, #-68]	@, %sfp
	strb	lr, [r1, r5]	@, <variable>.constrained_set0_flag
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	r1, [fp, #-64]	@, %sfp
	add	ip, r3, r5	@ tmp219, <variable>.SPS, D.42375
	strb	r1, [ip, #1]	@, <variable>.constrained_set1_flag
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [fp, #-60]	@, %sfp
	add	r3, lr, r5	@ tmp225, <variable>.SPS, D.42375
	strb	ip, [r3, #2]	@, <variable>.constrained_set2_flag
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [fp, #-56]	@, %sfp
	add	lr, r1, r5	@ tmp231, <variable>.SPS, D.42375
	strb	ip, [lr, #3]	@, <variable>.constrained_set3_flag
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r3, r5	@ tmp237, <variable>.SPS, D.42375
	str	r2, [r1, #740]	@ level_idc, <variable>.level_idc
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	ip, lr, r5	@ tmp242, <variable>.SPS, D.42375
	str	r7, [ip, #744]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, r3	@, D.42375, <variable>.SPS
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.42393
	bne	.L3199	@,
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r2, r5	@ tmp265, <variable>.SPS, D.42375
	strb	r8, [r1, #24]	@ tmp218, <variable>.is_refreshed
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, lr, r5	@ tmp272, <variable>.SPS, D.42375
	strb	r8, [r5, #23]	@ tmp218, <variable>.is_valid
	b	.L3180	@
.L3178:
	mvn	r0, #0	@ D.42351,
	b	.L3180	@
.L3186:
	cmp	r5, #122	@ D.42341,
	beq	.L3185	@,
	cmp	r5, #144	@ D.42341,
	beq	.L3185	@,
	cmp	r5, #110	@ D.42341,
	beq	.L3185	@,
.L3181:
	mov	r2, r5	@, D.42341
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC253	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r8, #100	@ profile_idc,
	mov	r2, r6	@ level_idc, D.42346
	bhi	.L3187	@,
	b	.L3194	@
.L3185:
	movw	r1, #:lower16:.LC252	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC252	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42346
	bhi	.L3187	@,
	b	.L3194	@
.L3184:
	movw	r1, #:lower16:.LC251	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC251	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.42346
	bhi	.L3187	@,
	b	.L3194	@
.L3197:
	mov	r2, #1	@ tmp203,
	strb	r2, [sl, #91]	@ tmp203, sps_tmp.is_valid
	strb	r2, [sl, #92]	@ tmp203, sps_tmp.is_refreshed
	add	r1, sl, #68	@, tmp183,
	ldr	r0, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, r9	@, tmp179
	add	r0, r5, r0	@, D.42375, <variable>.SPS
	bl	memmove	@
	mov	r0, r8	@ D.42351, D.42384
	b	.L3180	@
.L3196:
	mov	r3, r7	@, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC255	@,
	movw	r2, #9203	@,
	movt	r1, #:upper16:.LC255	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42351,
	b	.L3180	@
.L3195:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC249	@,
	movt	r1, #:upper16:.LC249	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, r2, #1	@ tmp166, <variable>.MaxSpsNum,
	cmp	r7, ip	@ seq_parameter_set_id, tmp166
	bls	.L3178	@,
	movw	lr, #:lower16:g_event_report	@ tmp168,
	movt	lr, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [lr, #0]	@ g_event_report.738, g_event_report
	cmp	r3, #0	@ g_event_report.738,
	beq	.L3178	@,
	str	r2, [fp, #-48]	@ <variable>.MaxSpsNum, para
	movw	r2, #54168	@ tmp171,
	str	r7, [fp, #-52]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	sub	r2, fp, #52	@,,
	blx	r3	@ g_event_report.738
	mvn	r0, #0	@ D.42351,
	b	.L3180	@
.L3199:
	mov	r3, r7	@, seq_parameter_set_id
	movw	r2, #9226	@,
	mov	r0, r8	@, tmp218
	movw	r1, #:lower16:.LC255	@,
	movt	r1, #:upper16:.LC255	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mvn	r0, #0	@ D.42351,
	add	ip, r3, r5	@ tmp251, <variable>.SPS, D.42375
	strb	r8, [ip, #24]	@ tmp218, <variable>.is_refreshed
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, r2, r5	@ tmp258, <variable>.SPS, D.42375
	strb	sl, [r5, #23]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3180	@
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
.LFB1459:
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
	movw	r1, #:lower16:.LC256	@,
	movt	r1, #:upper16:.LC256	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	movw	r6, #54108	@ tmp188,
	strb	r0, [r5, #0]	@, <variable>.entropy_coding_mode_flag
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3236	@,
.L3201:
	mvn	r0, #0	@ D.41328,
.L3204:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3236:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC257	@,
	movt	r1, #:upper16:.LC257	@,
	bl	u_1	@
	strb	r0, [r5, #1]	@, <variable>.pic_order_present_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3201	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC258	@,
	movt	r1, #:upper16:.LC258	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.41333,
	str	r0, [r5, #32]	@ D.41333, <variable>.num_slice_groups_minus1
	bne	.L3202	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3202	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC260	@,
	movt	r1, #:upper16:.LC260	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.41343,
	str	r0, [r5, #36]	@ D.41343, <variable>.num_ref_idx_l0_active_minus1
	bhi	.L3205	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3205	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC262	@,
	movt	r1, #:upper16:.LC262	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.41349,
	str	r0, [r5, #40]	@ D.41349, <variable>.num_ref_idx_l1_active_minus1
	bhi	.L3207	@,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3208	@,
.L3207:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC263	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41328,
	b	.L3204	@
.L3208:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC264	@,
	movt	r1, #:upper16:.LC264	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.weighted_pred_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3201	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC265	@,
	movt	r2, #:upper16:.LC265	@,
	bl	u_v	@
	cmp	r0, #2	@ D.41359,
	str	r0, [r5, #44]	@ D.41359, <variable>.weighted_bipred_idc
	bhi	.L3237	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC268	@,
	movt	r1, #:upper16:.LC268	@,
	str	r0, [r5, #48]	@, <variable>.pic_init_qp_minus26
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC270	@,
	str	r0, [r5, #52]	@, <variable>.chroma_qp_index_offset
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	strb	r0, [r5, #3]	@, <variable>.deblocking_filter_control_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC272	@,
	movt	r1, #:upper16:.LC272	@,
	strb	r0, [r5, #4]	@, <variable>.constrained_intra_pred_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r8, r0	@ D.41372,
	strb	r8, [r5, #17]	@ D.41372, <variable>.redundant_pic_cnt_present_flag
	cmp	r8, #0	@ D.41372,
	beq	.L3210	@,
	movw	r1, #:lower16:.LC273	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC273	@,
	bl	dprint_vfmw	@
.L3210:
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
	bcs	.L3238	@,
.L3211:
	mov	r0, #0	@ D.41328,
	b	.L3204	@
.L3238:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC274	@,
	movt	r1, #:upper16:.LC274	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC275	@,
	movt	r1, #:upper16:.LC275	@,
	str	r0, [r5, #60]	@, <variable>.transform_8x8_mode_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41387,
	strb	r0, [r5, #18]	@ D.41387, <variable>.pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41387,
	beq	.L3239	@,
.L3212:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC277	@,
	movt	r1, #:upper16:.LC277	@,
	bl	se_v	@
	add	ip, r0, #12	@ tmp312, D.41473,
	str	r0, [r5, #56]	@ D.41473, <variable>.second_chroma_qp_index_offset
	cmp	ip, #24	@ tmp312,
	bhi	.L3232	@,
	movw	r1, #54108	@ tmp313,
	ldr	r2, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	beq	.L3211	@,
.L3232:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41328,
	b	.L3204	@
.L3202:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC259	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp198,
	movt	r2, #:upper16:g_event_report	@ tmp198,
	ldr	r3, [r2, #0]	@ g_event_report.695, g_event_report
	cmp	r3, #0	@ g_event_report.695,
	beq	.L3201	@,
	movw	ip, #54168	@ tmp199,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.695
	mvn	r0, #0	@ D.41328,
	b	.L3204	@
.L3205:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC261	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41328,
	b	.L3204	@
.L3239:
	add	r9, r5, #1984	@ ivtmp.7963, pPPS,
	sub	r6, fp, #76	@ ivtmp.7958,,
	add	r7, r5, #64	@, pPPS,
	str	r7, [fp, #-84]	@, %sfp
	mov	sl, r9	@ ivtmp.7989, ivtmp.7963
	mov	r7, r8	@ i.7977, ivtmp.7964
	str	r9, [fp, #-80]	@ ivtmp.7963, %sfp
.L3221:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	u_1	@
	add	r1, r5, r7	@ tmp237, pPPS, i.7977
	mov	r2, #16	@,
	str	r0, [r6, #0]	@ D.41392, q4x4defaultflag
	mov	ip, r0	@ D.41392,
	strb	ip, [r1, #5]	@ D.41392, <variable>.pic_scaling_list_present_flag
	add	r0, r8, r9	@, ivtmp.7964, ivtmp.7963
	ldr	r3, [r6, #0]	@ tmp239, q4x4defaultflag
	cmp	r3, #1	@ tmp239,
	beq	.L3240	@,
	rsbs	ip, r7, #1	@ D.41415, i.7977
	movcc	ip, #0	@ D.41415
	cmp	r7, #0	@ i.7977,
	cmpne	r7, #3	@, i.7977,
	bne	.L3217	@,
	movw	lr, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	movw	lr, #3992	@,
	mla	r3, r1, lr, r3	@ D.41423, <variable>.seq_parameter_set_id,, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3241	@,
	ldr	r3, .L3245	@,
	cmp	ip, #0	@ D.41415,
	ldr	r1, .L3245+4	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3214:
	add	r7, r7, #1	@ i.7977, i.7977,
	ldr	lr, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r7, #6	@ i.7977,
	add	r1, lr, #16	@,,
	add	r6, r6, #4	@ ivtmp.7958, ivtmp.7958,
	add	r0, r2, #64	@,,
	str	r1, [fp, #-80]	@, %sfp
	add	r8, r8, #16	@ ivtmp.7964, ivtmp.7964,
	add	sl, sl, #16	@ ivtmp.7989, ivtmp.7989,
	str	r0, [fp, #-84]	@, %sfp
	bne	.L3221	@,
	add	r8, r5, #2080	@, pPPS,
	mov	r7, #0	@ ivtmp.7943,
	add	r9, r5, #448	@ ivtmp.7946, pPPS,
	sub	r6, fp, #52	@ ivtmp.7948,,
	str	r8, [fp, #-80]	@, %sfp
	mov	sl, r8	@ ivtmp.7942,
	mov	r8, r7	@ i, ivtmp.7943
	str	r5, [fp, #-84]	@ pPPS, %sfp
.L3231:
	ldr	ip, [r5, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	mov	r3, #0	@ prephitmp.7924,
	cmp	ip, #1	@ <variable>.transform_8x8_mode_flag,
	movne	ip, #0	@,
	strne	ip, [r6, #0]	@, q8x8defaultflag
	beq	.L3242	@,
.L3223:
	ldr	r1, [fp, #-84]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	strb	r3, [r1, #11]	@ prephitmp.7924, <variable>.pic_scaling_list_present_flag
	add	r0, r2, r7	@,, ivtmp.7943
	ldr	r3, [r6, #0]	@ tmp283, q8x8defaultflag
	mov	r2, #64	@,
	cmp	r3, #1	@ tmp283,
	beq	.L3243	@,
	movw	ip, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	movw	lr, #3992	@,
	mla	r3, r1, lr, r3	@ temp.7983, <variable>.seq_parameter_set_id,, <variable>.SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	ip, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3244	@,
	ldr	r3, .L3245+8	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3245+12	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3225:
	add	r8, r8, #1	@ i, i,
	ldr	lr, [fp, #-84]	@, %sfp
	cmp	r8, #2	@ i,
	add	sl, sl, #64	@ ivtmp.7942, ivtmp.7942,
	add	r0, lr, #1	@,,
	add	r7, r7, #64	@ ivtmp.7943, ivtmp.7943,
	add	r9, r9, #256	@ ivtmp.7946, ivtmp.7946,
	add	r6, r6, #4	@ ivtmp.7948, ivtmp.7948,
	str	r0, [fp, #-84]	@, %sfp
	beq	.L3212	@,
	b	.L3231	@
.L3217:
	mov	r0, sl	@, ivtmp.7989
	sub	r1, sl, #16	@, ivtmp.7989,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3214	@
.L3240:
	ldr	r2, [fp, #-80]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [fp, #-84]	@, %sfp
	add	r3, r3, #15	@,,
	str	r6, [sp, #0]	@ ivtmp.7958,
	bl	Scaling_List	@
	ldr	r2, [r6, #0]	@ tmp240, q4x4defaultflag
	cmp	r2, #1	@ tmp240,
	bne	.L3214	@,
	ldr	lr, .L3245+4	@,
	cmp	r7, #2	@ i.7977,
	ldr	r1, .L3245	@,
	mov	r2, #16	@,
	ldr	r0, [fp, #-80]	@, %sfp
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3214	@
.L3237:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41328,
	b	.L3204	@
.L3241:
	add	ip, r3, #2672	@ tmp261, D.41423,
	add	r0, r8, r9	@, ivtmp.7964, ivtmp.7963
	add	r1, ip, r8	@, tmp261, ivtmp.7964
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3214	@
.L3244:
	ldr	r1, [fp, #-80]	@, %sfp
	add	r2, r3, #2768	@ tmp298, temp.7983,
	add	r0, r1, r7	@,, ivtmp.7943
	add	r1, r2, r7	@, tmp298, ivtmp.7943
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3225	@
.L3243:
	mov	r3, r2	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, ivtmp.7946
	mov	r2, sl	@, ivtmp.7942
	str	r6, [sp, #0]	@ ivtmp.7948,
	bl	Scaling_List	@
	ldr	r0, [r6, #0]	@ tmp284, q8x8defaultflag
	cmp	r0, #1	@ tmp284,
	bne	.L3225	@,
	ldr	lr, .L3245+8	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3245+12	@,
	mov	r2, #64	@,
	mov	r0, sl	@, ivtmp.7942
	movne	r1, lr	@,
	bl	memcpy	@
	b	.L3225	@
.L3242:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC276	@,
	movt	r1, #:upper16:.LC276	@,
	bl	u_1	@
	uxtb	r3, r0	@ prephitmp.7924, D.41441
	str	r0, [r6, #0]	@ D.41441, q8x8defaultflag
	b	.L3223	@
.L3246:
	.align	2
.L3245:
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
.LFB1458:
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
	movw	r1, #:lower16:.LC279	@,
	movt	r1, #:upper16:.LC279	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r4, #13576	@ tmp145,
	mov	r5, r0	@ pic_parameter_set_id,
	ldr	r0, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp146, <variable>.MaxPpsNum,
	cmp	r5, r3	@ pic_parameter_set_id, tmp146
	bhi	.L3258	@,
	mov	r0, r6	@, pH264Ctx
	movw	r1, #:lower16:.LC281	@,
	movt	r1, #:upper16:.LC281	@,
	bl	ue_v	@
	movw	ip, #13572	@ tmp158,
	ldr	r1, [r6, ip]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	r3, r0	@ seq_parameter_set_id,
	sub	r0, r1, #1	@ tmp159, <variable>.MaxSpsNum,
	cmp	r3, r0	@ seq_parameter_set_id, tmp159
	bhi	.L3259	@,
	movw	ip, #13580	@ tmp163,
	movw	r1, #3992	@ tmp165,
	ldr	r0, [r6, ip]	@ <variable>.SPS, <variable>.SPS
	mla	r2, r1, r3, r0	@ tmp166, tmp165, seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r2, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	beq	.L3260	@,
	mov	sl, #2208	@ tmp169,
	movw	r7, #13584	@ tmp170,
	mul	r4, sl, r5	@ D.41292, tmp169, pic_parameter_set_id
	ldr	r8, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r4, r8	@ D.41293, D.41292, <variable>.PPS
	ldrb	r8, [r2, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r8, #0	@ <variable>.is_valid,
	bne	.L3261	@,
	str	r5, [r2, #24]	@ pic_parameter_set_id, <variable>.pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r1, r4	@ tmp200, <variable>.PPS, D.41292
	str	r3, [r2, #28]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	lr, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r4, lr	@, D.41292, <variable>.PPS
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.41306
	bne	.L3262	@,
	ldr	r2, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	lr, #1	@ tmp225,
	add	ip, r2, r4	@ tmp223, <variable>.PPS, D.41292
	strb	lr, [ip, #20]	@ tmp225, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp230, <variable>.PPS, D.41292
	strb	lr, [r4, #19]	@ tmp225, <variable>.is_valid
.L3250:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L3261:
	movw	r8, #:lower16:.LANCHOR1	@ tmp173,
	movt	r8, #:upper16:.LANCHOR1	@ tmp173,
	add	lr, r8, #4048	@, tmp173,
	mov	r0, r6	@, pH264Ctx
	str	r5, [r8, #4084]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	add	r1, lr, #12	@,,
	str	r3, [r8, #4088]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.41297,
	bne	.L3263	@,
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r8, #4048	@, tmp173,
	add	r0, r2, #12	@,,
	add	r1, r4, r3	@, D.41292, <variable>.PPS
	bl	PPSEqual	@
	cmp	r0, #0	@ D.41301
	beq	.L3250	@,
	mov	ip, #1	@ tmp186,
	strb	ip, [r8, #4079]	@ tmp186, pps_tmp.is_valid
	strb	ip, [r8, #4080]	@ tmp186, pps_tmp.is_refreshed
	add	r1, r8, #4048	@, tmp173,
	ldr	r0, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r1, #12	@,,
	mov	r2, sl	@, tmp169
	add	r0, r4, r0	@, D.41292, <variable>.PPS
	bl	memmove	@
	mov	r0, r5	@ D.41276, D.41297
	b	.L3250	@
.L3258:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r1, r2, #1	@ tmp150, <variable>.MaxPpsNum,
	cmp	r5, r1	@ pic_parameter_set_id, tmp150
	bhi	.L3264	@,
.L3249:
	mvn	r0, #0	@ D.41276,
	b	.L3250	@
.L3264:
	movw	ip, #:lower16:g_event_report	@ tmp152,
	movt	ip, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [ip, #0]	@ g_event_report.693, g_event_report
	cmp	r3, #0	@ g_event_report.693,
	beq	.L3249	@,
	str	r2, [fp, #-40]	@ <variable>.MaxPpsNum, para
	movw	r2, #54168	@ tmp155,
	str	r5, [fp, #-44]	@ pic_parameter_set_id, para
	mov	r1, #110	@,
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	sub	r2, fp, #44	@,,
	blx	r3	@ g_event_report.693
	mvn	r0, #0	@ D.41276,
	b	.L3250	@
.L3263:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC283	@,
	movt	r1, #:upper16:.LC283	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41276,
	b	.L3250	@
.L3259:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC249	@,
	movt	r1, #:upper16:.LC249	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41276,
	b	.L3250	@
.L3260:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC282	@,
	movt	r1, #:upper16:.LC282	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41276,
	b	.L3250	@
.L3262:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC283	@,
	movt	r1, #:upper16:.LC283	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #1	@ tmp211,
	mvn	r0, #0	@ D.41276,
	add	r2, r1, r4	@ tmp209, <variable>.PPS, D.41292
	strb	ip, [r2, #20]	@ tmp211, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp216, <variable>.PPS, D.41292
	strb	r8, [r4, #19]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3250	@
	.fnend
	.size	H264_DecPPS, .-H264_DecPPS
	.align	2
	.global	ProcessSliceHeaderFirstPart
	.type	ProcessSliceHeaderFirstPart, %function
ProcessSliceHeaderFirstPart:
	.fnstart
.LFB1451:
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
	movw	r1, #:lower16:.LC284	@,
	movt	r1, #:upper16:.LC284	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r1, #13576	@ tmp160,
	mov	r5, r0	@ tmp_pic_parameter_set_id,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp161, <variable>.MaxPpsNum,
	cmp	r5, r3	@ tmp_pic_parameter_set_id, tmp161
	bhi	.L3266	@,
	movw	ip, #54108	@ tmp163,
	ldr	r2, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3266	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp_pic_parameter_set_id
	bl	PPSSPSCheckTmpId	@
	cmp	r0, #0	@,
	bne	.L3293	@,
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
	beq	.L3270	@,
	ldr	r0, [r5, #3944]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r0, #0	@ <variable>.num_ref_frames,
	bne	.L3271	@,
.L3270:
	movw	ip, #20672	@ tmp180,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L3271	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC287	@,
	movt	r1, #:upper16:.LC287	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3271:
	ldr	lr, [r5, #2896]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC288	@,
	movt	r2, #:upper16:.LC288	@,
	add	r1, lr, #4	@, <variable>.log2_max_frame_num_minus4,
	bl	u_v	@
	movw	r1, #54108	@ tmp187,
	ldr	r3, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20692	@ tmp186,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.40721, <variable>.CurrSlice.frame_num
	bne	.L3272	@,
	movw	r8, #20675	@ tmp189,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3294	@,
.L3273:
	movw	r7, #20673	@ tmp195,
	movw	r8, #20674	@ tmp198,
	mov	r3, #0	@ tmp196,
	strb	r3, [r4, r7]	@ tmp196, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r8]	@ tmp196, <variable>.CurrSlice.bottom_field_flag
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r0, r3	@ <variable>.frame_mbs_only_flag,
	beq	.L3295	@,
	ldr	r2, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	ip, r2, #1	@ tmp282, <variable>.pic_height_in_map_units_minus1,
	mla	r2, r1, ip, ip	@ D.40747, <variable>.pic_width_in_mbs_minus1, tmp282, tmp282
.L3291:
	mov	r1, #1	@ iftmp.664,
.L3278:
	cmp	r3, #0	@ prephitmp.8080,
	mul	r2, r1, r2	@ pic_size, iftmp.664, D.40747
	movne	r3, #0	@ prephitmp.8050,
	bne	.L3280	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	subs	r3, r1, #0	@ prephitmp.8050, <variable>.mb_adaptive_frame_field_flag,
	movne	r3, #1	@ prephitmp.8050
.L3280:
	movw	ip, #20673	@ tmp219,
	movw	r0, #20676	@ tmp217,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r0]	@ prephitmp.8050, <variable>.CurrSlice.MbaffFrameFlag
	cmp	lr, #1	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L3281	@,
	cmp	r3, #1	@ prephitmp.8050,
	beq	.L3281	@,
	movw	r0, #20724	@ tmp225,
	ldr	lr, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r2, lr	@ pic_size, <variable>.CurrSlice.first_mb_in_slice
	bls	.L3296	@,
.L3283:
	movw	r8, #20675	@ tmp228,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3297	@,
.L3284:
	movw	r7, #19788	@ tmp236,
	movw	r8, #19792	@ tmp238,
	mov	lr, #0	@ tmp237,
	str	lr, [r4, r8]	@ tmp237, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	str	lr, [r4, r7]	@ tmp237, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r5, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r1, #0	@ <variable>.pic_order_cnt_type,
	beq	.L3298	@,
.L3286:
	movw	r7, #19836	@ tmp250,
	movw	r8, #19840	@ tmp252,
	mov	r1, #0	@ tmp251,
	str	r1, [r4, r8]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r7]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2900]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r3, #1	@ <variable>.pic_order_cnt_type,
	beq	.L3299	@,
.L3287:
	movw	r5, #54108	@ tmp263,
	ldr	r2, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3272	@,
	ldrb	r3, [r6, #17]	@ zero_extendqisi2	@ <variable>.redundant_pic_cnt_present_flag, <variable>.redundant_pic_cnt_present_flag
	cmp	r3, #0	@ <variable>.redundant_pic_cnt_present_flag,
	beq	.L3288	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3289	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3289	@,
.L3288:
	mov	r0, r4	@, pH264Ctx
	bl	IsNewPic	@
	movw	r2, #20677	@ tmp272,
	uxtb	ip, r0	@ D.40819,
	strb	ip, [r4, r2]	@ D.40819, <variable>.CurrSlice.new_pic_flag
	cmp	ip, #0	@ D.40819,
	bne	.L3290	@,
	movw	lr, #22360	@ tmp275,
	movw	r0, #20724	@ tmp274,
	ldr	r3, [r4, lr]	@ <variable>.PrevSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	ldr	r1, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r1, r3	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	bls	.L3300	@,
.L3290:
	mov	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3272:
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3295:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC290	@,
	movt	r1, #:upper16:.LC290	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.40737,
	strb	r3, [r4, r7]	@ D.40737, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.40737,
	bne	.L3301	@,
.L3276:
	ldr	ip, [r5, #3948]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r1, [r5, #3952]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r2, ip, #1	@ tmp211, <variable>.pic_width_in_mbs_minus1,
	cmp	lr, #0	@ <variable>.frame_mbs_only_flag,
	mla	r2, r1, r2, r2	@ D.40747, <variable>.pic_height_in_map_units_minus1, tmp211, tmp211
	moveq	r1, #2	@ iftmp.664,
	beq	.L3278	@,
	movw	r3, #20673	@ tmp214,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8080, <variable>.CurrSlice.field_pic_flag
	b	.L3291	@
.L3294:
	cmp	r0, #0	@ D.40721,
	movw	ip, #20688	@ tmp191,
	str	r0, [r4, ip]	@ D.40721, <variable>.CurrSlice.prev_frame_num
	beq	.L3273	@,
	movw	r1, #:lower16:.LC289	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC289	@,
	bl	dprint_vfmw	@
	b	.L3273	@
.L3281:
	movw	r1, #20724	@ tmp222,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r3, r2, lsr #1	@ <variable>.CurrSlice.first_mb_in_slice, pic_size,
	bcc	.L3283	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC292	@,
	movt	r1, #:upper16:.LC292	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3266:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3298:
	ldr	ip, [r5, #2904]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC296	@,
	movt	r2, #:upper16:.LC296	@,
	add	r1, ip, #4	@, <variable>.log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.pic_order_cnt_lsb
	ldrb	r0, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r0, #0	@ <variable>.pic_order_present_flag,
	beq	.L3286	@,
	movw	r2, #20673	@ tmp246,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3286	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC297	@,
	movt	r1, #:upper16:.LC297	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	b	.L3286	@
.L3299:
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	cmp	lr, #0	@ <variable>.delta_pic_order_always_zero_flag,
	bne	.L3287	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r5, #1	@ <variable>.pic_order_present_flag,
	bne	.L3287	@,
	movw	ip, #20673	@ tmp259,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3287	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC299	@,
	movt	r1, #:upper16:.LC299	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L3287	@
.L3296:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3297:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC294	@,
	movt	r1, #:upper16:.LC294	@,
	bl	ue_v	@
	movw	r2, #20712	@ tmp231,
	cmp	r0, #65536	@ D.40774,
	str	r0, [r4, r2]	@ D.40774, <variable>.CurrSlice.idr_pic_id
	bcs	.L3285	@,
	movw	r3, #54108	@ tmp233,
	ldr	ip, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3284	@,
.L3285:
	movw	r1, #:lower16:.LC295	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	b	.L3284	@
.L3301:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	u_1	@
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ prephitmp.8080, <variable>.CurrSlice.field_pic_flag
	strb	r0, [r4, r8]	@, <variable>.CurrSlice.bottom_field_flag
	b	.L3276	@
.L3293:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC286	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3289:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC301	@,
	movt	r1, #:upper16:.LC301	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp270,
	movt	r0, #:upper16:g_event_report	@ tmp270,
	ldr	r3, [r0, #0]	@ g_event_report.667, g_event_report
	cmp	r3, #0	@ g_event_report.667,
	beq	.L3272	@,
	movw	lr, #54168	@ tmp271,
	mov	r1, #102	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.667
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L3300:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC302	@,
	movt	r1, #:upper16:.LC302	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40699,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	DecMMCO
	.type	DecMMCO, %function
DecMMCO:
	.fnstart
.LFB1449:
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
	moveq	r6, r1	@ MMCONum.8121, save
	movweq	r7, #54108	@ tmp297,
	beq	.L3304	@,
	mov	r5, #0	@ MMCONum,
	movw	sl, #2004	@ tmp286,
	movw	r9, #54108	@ tmp291,
	b	.L3305	@
.L3307:
	cmp	r3, #2	@ prephitmp.8097,
	beq	.L3338	@,
.L3308:
	cmp	r3, #3	@ prephitmp.8097,
	cmpne	r3, #6	@, prephitmp.8097,
	beq	.L3339	@,
.L3309:
	cmp	r3, #4	@ prephitmp.8097,
	beq	.L3340	@,
.L3310:
	cmp	r3, #6	@ prephitmp.8097,
	bhi	.L3311	@,
.L3342:
	ldr	lr, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3311	@,
	cmp	r3, #0	@ prephitmp.8097,
	beq	.L3314	@,
	add	r5, r5, #1	@ MMCONum, MMCONum,
	cmp	r5, #100	@ MMCONum,
	beq	.L3341	@,
.L3305:
	movw	r3, #26372	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	ldr	r8, [r4, r3]	@ D.40550, <variable>.CurrMarkIdx
	bl	ue_v	@
	mov	r7, r5, asl #2	@ tmp283, MMCONum,
	add	ip, r7, r5	@ tmp153, tmp283, MMCONum
	mul	r2, sl, r8	@ tmp155, tmp286, D.40550
	add	r1, r2, ip, asl #2	@, tmp157, tmp155, tmp153,
	mov	r3, r0	@ prephitmp.8097,
	cmp	r0, #1	@ prephitmp.8097,
	cmpne	r0, #3	@, prephitmp.8097,
	add	r0, r1, r4	@ tmp158, tmp157, pH264Ctx
	add	r6, r0, #22272	@ tmp159, tmp158,
	add	r6, r6, #88	@ tmp159, tmp159,
	str	r3, [r6, #8]	@ prephitmp.8097, <variable>.memory_management_control_operation
	bne	.L3307	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC305	@,
	movt	r1, #:upper16:.LC305	@,
	bl	ue_v	@
	ldr	r3, [r6, #8]	@ prephitmp.8097, <variable>.memory_management_control_operation
	cmp	r3, #2	@ prephitmp.8097,
	str	r0, [r6, #12]	@, <variable>.difference_of_pic_nums_minus1
	bne	.L3308	@,
.L3338:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC306	@,
	movt	r1, #:upper16:.LC306	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp194, tmp286, D.40550
	add	r2, r7, r5	@ tmp192, tmp283, MMCONum
	add	ip, r3, r2, asl #2	@, tmp196, tmp194, tmp192,
	add	r1, ip, r4	@ tmp197, tmp196, pH264Ctx
	add	r3, r1, #22272	@ tmp208, tmp197,
	add	ip, r3, #88	@ tmp208, tmp208,
	add	r1, r3, #96	@ tmp198, tmp198,
	ldr	r3, [ip, #8]	@ prephitmp.8097, <variable>.memory_management_control_operation
	cmp	r3, #3	@ prephitmp.8097,
	cmpne	r3, #6	@, prephitmp.8097,
	str	r0, [r1, #8]	@, <variable>.long_term_pic_num
	bne	.L3309	@,
.L3339:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC307	@,
	movt	r1, #:upper16:.LC307	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp222, tmp286, D.40550
	add	r2, r7, r5	@ tmp220, tmp283, MMCONum
	add	ip, r3, r2, asl #2	@, tmp224, tmp222, tmp220,
	add	r1, ip, r4	@ tmp225, tmp224, pH264Ctx
	add	r3, r1, #22272	@ tmp236, tmp225,
	add	ip, r3, #88	@ tmp236, tmp236,
	add	r1, r3, #96	@ tmp226, tmp226,
	ldr	r3, [ip, #8]	@ prephitmp.8097, <variable>.memory_management_control_operation
	cmp	r3, #4	@ prephitmp.8097,
	str	r0, [r1, #12]	@, <variable>.long_term_frame_idx
	bne	.L3310	@,
.L3340:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	bl	ue_v	@
	mul	r8, sl, r8	@ tmp243, tmp286, D.40550
	add	r2, r7, r5	@ tmp241, tmp283, MMCONum
	add	ip, r8, r2, asl #2	@, tmp245, tmp243, tmp241,
	add	r1, ip, r4	@ tmp246, tmp245, pH264Ctx
	add	r3, r1, #22272	@ tmp257, tmp246,
	add	ip, r3, #88	@ tmp257, tmp257,
	add	r1, r3, #104	@ tmp247, tmp247,
	ldr	r3, [ip, #8]	@ prephitmp.8097, <variable>.memory_management_control_operation
	cmp	r3, #6	@ prephitmp.8097,
	str	r0, [r1, #8]	@, <variable>.max_long_term_frame_idx_plus1
	bls	.L3342	@,
.L3311:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC309	@,
	movt	r1, #:upper16:.LC309	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40549,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3314:
	mov	r0, #0	@ D.40549,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3304:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.40593
	moveq	r8, #1	@, D.40593
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3343	@,
.L3315:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3344	@,
.L3316:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp275, D.40593
	cmp	r8, #0	@ tmp275,
	bne	.L3345	@,
.L3317:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3346	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3320	@,
.L3319:
	ldr	r0, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3320	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3314	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC304	@,
	movt	r1, #:upper16:.LC304	@,
	add	r6, r6, #1	@ tmp298, MMCONum.8121,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.40593
	moveq	r8, #1	@, D.40593
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3347	@,
.L3326:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3348	@,
.L3327:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp311, D.40593
	cmp	r8, #0	@ tmp311,
	bne	.L3349	@,
.L3328:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3334	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3320	@,
.L3335:
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3320	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3314	@,
	add	r6, r6, #1	@ MMCONum.8121, tmp298,
	cmp	r6, #100	@ MMCONum.8121,
	bne	.L3304	@,
.L3337:
	mvn	r0, #0	@ D.40549,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3341:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC303	@,
	movt	r1, #:upper16:.LC303	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40549,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3345:
	movw	r1, #:lower16:.LC307	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC307	@,
	bl	ue_v	@
	b	.L3317	@
.L3343:
	movw	r1, #:lower16:.LC305	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC305	@,
	bl	ue_v	@
	b	.L3315	@
.L3349:
	movw	r1, #:lower16:.LC307	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC307	@,
	bl	ue_v	@
	b	.L3328	@
.L3347:
	movw	r1, #:lower16:.LC305	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC305	@,
	bl	ue_v	@
	b	.L3326	@
.L3346:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	bl	ue_v	@
	b	.L3319	@
.L3344:
	movw	r1, #:lower16:.LC306	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC306	@,
	bl	ue_v	@
	b	.L3316	@
.L3348:
	movw	r1, #:lower16:.LC306	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC306	@,
	bl	ue_v	@
	b	.L3327	@
.L3334:
	movw	r1, #:lower16:.LC308	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC308	@,
	bl	ue_v	@
	b	.L3335	@
.L3320:
	movw	r1, #:lower16:.LC309	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC309	@,
	bl	dprint_vfmw	@
	b	.L3337	@
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
.LFB1450:
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
	bne	.L3351	@,
	movw	ip, #2004	@ tmp158,
	mov	r5, r6	@ tmpMarkIdx.8146, tmpMarkIdx
	mla	r2, ip, r6, r0	@ tmp159, tmp158, tmpMarkIdx, pH264Ctx
	add	r7, r2, #22272	@ tmp160, tmp159,
	add	r7, r7, #88	@ tmp160, tmp160,
	ldrb	r1, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L3354	@,
	movw	lr, #20675	@ tmp162,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3363	@,
.L3355:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	bl	u_1	@
	movw	r2, #2004	@ tmp188,
	mla	r5, r2, r5, r4	@ tmp189, tmp188, tmpMarkIdx.8146, pH264Ctx
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	add	ip, r5, #22272	@ tmp190, tmp189,
	add	r5, ip, #88	@ tmp190, tmp190,
	uxtb	r2, r0	@ D.40645,
	mov	r0, #16	@,
	strb	r2, [r5, #7]	@ D.40645, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L3364	@,
.L3357:
	mov	r0, #0	@ D.40655,
.L3356:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L3351:
	movw	lr, #20675	@ tmp162,
	rsbs	r5, r6, #1	@ tmpMarkIdx.8146, tmpMarkIdx
	movcc	r5, #0	@ tmpMarkIdx.8146
	str	r5, [r0, r3]	@ tmpMarkIdx.8146, <variable>.CurrMarkIdx
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3355	@,
.L3363:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	bl	u_1	@
	movw	r3, #2004	@ tmp167,
	mla	r2, r3, r5, r4	@ tmp168, tmp167, tmpMarkIdx.8146, pH264Ctx
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	add	r5, r2, #22272	@ tmp169, tmp168,
	add	r5, r5, #88	@ tmp169, tmp169,
	strb	r0, [r5, #5]	@, <variable>.no_output_of_prior_pics_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.no_output_of_prior_pics_flag
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	strb	r0, [r5, #6]	@, <variable>.long_term_reference_flag
	mov	r0, #16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40655,
	b	.L3356	@
.L3354:
	movw	r1, #20675	@ tmp215,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3365	@,
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ D.40670, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r5, r0	@ D.40670,
	bne	.L3366	@,
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L3357	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, <variable>.CurrSlice.new_pic_flag
	bl	DecMMCO	@
	b	.L3356	@
.L3364:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.40651,
	mov	r7, r0	@ D.40651,
	movne	r3, #1	@ tmp213,
	movne	r0, #0	@ D.40655,
	strneb	r3, [r5, #4]	@ tmp213, <variable>.is_valid
	bne	.L3356	@,
	movw	lr, #26372	@ tmp206,
	mov	r0, #0	@ tmp204,
	movw	r1, #:lower16:.LC315	@,
	strb	r0, [r5, #4]	@ tmp204, <variable>.is_valid
	movt	r1, #:upper16:.LC315	@,
	mov	r0, #1	@,
	str	r6, [r4, lr]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.40655, D.40651
	b	.L3356	@
.L3365:
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	ldrb	r5, [r7, #5]	@ zero_extendqisi2	@ D.40658, <variable>.no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r5, r0	@ D.40658,
	bne	.L3367	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	ldrb	r4, [r7, #6]	@ zero_extendqisi2	@ D.40664, <variable>.long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.40664,
	beq	.L3357	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40655,
	b	.L3356	@
.L3366:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	bl	dprint_vfmw	@
	movw	r0, #54112	@ tmp243,
	ldr	ip, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movw	r1, #54132	@ tmp239,
	movw	r3, #54148	@ tmp241,
	ldr	r2, [r4, r1]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	ldr	r3, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	str	ip, [sp, #0]	@ <variable>.TotalNal,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40655,
	b	.L3356	@
.L3367:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC316	@,
	movt	r1, #:upper16:.LC316	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40655,
	b	.L3356	@
	.fnend
	.size	dec_ref_pic_marking, .-dec_ref_pic_marking
	.align	2
	.global	pred_weight_table
	.type	pred_weight_table, %function
pred_weight_table:
	.fnstart
.LFB1448:
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
	movw	r1, #:lower16:.LC320	@,
	mla	r9, lr, ip, r4	@, tmp167, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movt	r1, #:upper16:.LC320	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r6, #20736	@ tmp175,
	mov	r4, #1	@ tmp176,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r2, [r9, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp172, <variable>.seq_parameter_set_id, <variable>.SPS
	bl	ue_v	@
	str	r0, [r5, r6]	@ prephitmp.8200, <variable>.CurrSlice.luma_log2_weight_denom
	mov	sl, r4, asl r0	@ y_default_weight, tmp176,
	ldr	r9, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r9, #0	@ <variable>.chroma_format_idc,
	bne	.L3394	@,
.L3370:
	cmp	r0, #7	@ prephitmp.8200,
	bhi	.L3393	@,
	movw	ip, #20740	@ tmp183,
	ldr	r0, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	cmp	r0, #7	@ <variable>.CurrSlice.chroma_log2_weight_denom,
	bhi	.L3393	@,
	movw	r1, #54108	@ tmp186,
	ldr	r2, [r5, r1]	@ prephitmp.8166, <variable>.SeErrFlg
	cmp	r2, #0	@ prephitmp.8166,
	bne	.L3372	@,
	add	r8, r5, #20736	@ ivtmp.8195, pH264Ctx,
	mov	r6, r2	@ i, prephitmp.8166
	add	r4, r8, #8	@ ivtmp.8195, ivtmp.8195,
	movw	r8, #20728	@ tmp247,
	b	.L3381	@
.L3377:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3395	@,
.L3378:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_v
.L3380:
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.8195, ivtmp.8195,
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L3396	@,
.L3381:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40479
	streq	r0, [r4, #768]	@ D.40479, <variable>.CurrSlice.wp_offset_l0_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l0_y
	beq	.L3377	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC325	@,
	movt	r1, #:upper16:.LC325	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l0_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l0_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3378	@,
.L3395:
	movw	r1, #:lower16:.LC326	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC326	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40488
	bne	.L3397	@,
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	str	r0, [r4, #1024]	@ D.40488, <variable>.CurrSlice.wp_offset_l0_v
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_u
	str	r0, [r4, #896]	@ D.40488, <variable>.CurrSlice.wp_offset_l0_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_v
	add	r4, r4, #4	@ ivtmp.8195, ivtmp.8195,
	bcs	.L3381	@,
.L3396:
	ldr	r0, [fp, #-48]	@, %sfp
	ldr	r3, [r0, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r3, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3398	@,
.L3382:
	movw	r2, #54108	@ tmp229,
	ldr	r0, [r5, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@, D.40478,
	b	.L3375	@
.L3393:
	movw	lr, #54108	@ tmp185,
	ldr	r2, [r5, lr]	@ prephitmp.8166, <variable>.SeErrFlg
.L3372:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC322	@,
	movt	r1, #:upper16:.LC322	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40478,
.L3375:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L3397:
	movw	r1, #:lower16:.LC327	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC327	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC328	@,
	movt	r1, #:upper16:.LC328	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC327	@,
	movt	r1, #:upper16:.LC327	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC328	@,
	movt	r1, #:upper16:.LC328	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l0_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l0_v
	b	.L3380	@
.L3394:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	bl	ue_v	@
	movw	r2, #20740	@ tmp179,
	mov	r3, r0	@ D.40469,
	ldr	r0, [r5, r6]	@ prephitmp.8200, <variable>.CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp176,
	str	r3, [r5, r2]	@ D.40469, <variable>.CurrSlice.chroma_log2_weight_denom
	b	.L3370	@
.L3398:
	movw	lr, #20672	@ tmp208,
	ldrb	ip, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	ip, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3382	@,
	add	r4, r5, #20992	@ ivtmp.8185, pH264Ctx,
	mov	r6, #0	@ i.8199,
	add	r4, r4, #136	@ ivtmp.8185, ivtmp.8185,
	movw	r8, #20732	@ tmp240,
	b	.L3388	@
.L3384:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3399	@,
.L3385:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_v
.L3387:
	ldr	r1, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #1	@ i.8199, i.8199,
	add	r4, r4, #4	@ ivtmp.8185, ivtmp.8185,
	cmp	r1, r6	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.8199
	bcc	.L3382	@,
.L3388:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC329	@,
	movt	r1, #:upper16:.LC329	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40504
	streq	r0, [r4, #768]	@ D.40504, <variable>.CurrSlice.wp_offset_l1_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l1_y
	beq	.L3384	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC330	@,
	movt	r1, #:upper16:.LC330	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC331	@,
	movt	r1, #:upper16:.LC331	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l1_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l1_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3385	@,
.L3399:
	movw	r1, #:lower16:.LC332	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC332	@,
	bl	u_1	@
	cmp	r0, #0	@ D.40512
	bne	.L3400	@,
	str	r0, [r4, #1024]	@ D.40512, <variable>.CurrSlice.wp_offset_l1_v
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r4, #896]	@ D.40512, <variable>.CurrSlice.wp_offset_l1_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_v
	b	.L3387	@
.L3400:
	movw	r1, #:lower16:.LC333	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC333	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC334	@,
	movt	r1, #:upper16:.LC334	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC333	@,
	movt	r1, #:upper16:.LC333	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC334	@,
	movt	r1, #:upper16:.LC334	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l1_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l1_v
	b	.L3387	@
	.fnend
	.size	pred_weight_table, .-pred_weight_table
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
.LFB1447:
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
	bls	.L3435	@,
.L3404:
	movw	r2, #54108	@ tmp238,
	ldr	r3, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@ D.40387,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3424:
	mov	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3435:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC335	@,
	movt	r1, #:upper16:.LC335	@,
	bl	u_1	@
	movw	r3, #19880	@ tmp188,
	uxtb	r0, r0	@ D.40375,
	strb	r0, [r4, r3]	@ D.40375, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.40375,
	ldreqb	r3, [r4, r5]	@ zero_extendqisi2	@ prephitmp.8216, <variable>.CurrSlice.slice_type
	beq	.L3406	@,
	movw	r7, #20728	@ tmp191,
	ldr	r6, [r4, r7]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r6, #2	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L3407	@,
	add	r8, r4, #19712	@ ivtmp.8238, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r8, #172	@ ivtmp.8238, ivtmp.8238,
	movw	r8, #54108	@ tmp249,
	b	.L3418	@
.L3414:
	bl	ue_v	@
	str	r0, [r5, #528]	@, <variable>.CurrReorder.long_term_pic_idx_l0
.L3417:
	ldr	ip, [r4, r7]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r5, r5, #4	@ ivtmp.8238, ivtmp.8238,
	add	r3, ip, #2	@ prephitmp.8244, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r6	@ prephitmp.8244, i
	bls	.L3413	@,
.L3418:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC336	@,
	movt	r1, #:upper16:.LC336	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC340	@,
	movt	r1, #:upper16:.LC340	@,
	mov	r2, r0	@ D.40380,
	cmp	r2, #3	@ D.40380,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r5, #0]	@ D.40380, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	bhi	.L3436	@,
	ldr	r3, [r4, r8]	@ prephitmp.8249, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8249,
	bne	.L3409	@,
	cmp	r2, #3	@ D.40380,
	beq	.L3437	@,
	cmp	r2, #2	@ D.40380,
	add	r6, r6, #1	@ i, i,
	beq	.L3414	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.40391
	str	r0, [r5, #264]	@ D.40391, <variable>.CurrReorder.abs_diff_pic_num_minus1_l0
	bls	.L3438	@,
	ldr	r3, [r4, r8]	@ prephitmp.8245, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8245,
	beq	.L3417	@,
.L3416:
	mov	r2, r0	@, D.40391
	movw	r1, #:lower16:.LC339	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC339	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3437:
	movw	r3, #20728	@ tmp198,
	ldr	r2, [r4, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r2, #2	@ prephitmp.8244, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
.L3413:
	cmp	r6, r3	@ i, prephitmp.8244
	beq	.L3419	@,
.L3434:
	movw	r3, #20672	@ tmp215,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8216, <variable>.CurrSlice.slice_type
.L3406:
	cmp	r3, #1	@ prephitmp.8216,
	bne	.L3404	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC342	@,
	movt	r1, #:upper16:.LC342	@,
	bl	u_1	@
	movw	r1, #19881	@ tmp218,
	uxtb	r0, r0	@ D.40411,
	strb	r0, [r4, r1]	@ D.40411, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.40411,
	beq	.L3404	@,
	movw	r8, #20732	@ tmp220,
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmn	ip, #2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L3404	@,
	add	r7, r4, #19968	@ ivtmp.8231, pH264Ctx,
	mov	r5, #0	@ i.8247,
	add	r6, r7, #48	@ ivtmp.8231, ivtmp.8231,
	movw	r7, #54108	@ tmp244,
	b	.L3430	@
.L3429:
	add	r5, r5, #1	@ i.8247, i.8247,
	cmp	r3, r5	@ D.40435, i.8247
	bls	.L3404	@,
.L3430:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC343	@,
	movt	r1, #:upper16:.LC343	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC347	@,
	movt	r1, #:upper16:.LC347	@,
	mov	r2, r0	@ D.40415,
	cmp	r2, #3	@ D.40415,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r6, #0]	@ D.40415, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	bhi	.L3439	@,
	ldr	r3, [r4, r7]	@ prephitmp.8218, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8218,
	bne	.L3422	@,
	cmp	r2, #3	@ D.40415,
	beq	.L3424	@,
	cmp	r2, #2	@ D.40415,
	bne	.L3440	@,
	bl	ue_v	@
	str	r0, [r6, #524]	@, <variable>.CurrReorder.long_term_pic_idx_l1
.L3428:
	ldr	r2, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.8231, ivtmp.8231,
	add	r3, r2, #2	@ D.40435, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r5	@ D.40435, i.8247
	bne	.L3429	@,
	add	lr, r5, #4992	@ tmp234, i.8247,
	add	ip, lr, #12	@ tmp234, tmp234,
	ldr	r1, [r4, ip, asl #2]	@ tmp236, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r1, #3	@ tmp236,
	beq	.L3429	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3440:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC345	@,
	movt	r1, #:upper16:.LC345	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.40424
	str	r0, [r6, #264]	@ D.40424, <variable>.CurrReorder.abs_diff_pic_num_minus1_l1
	bls	.L3441	@,
	ldr	r3, [r4, r7]	@ prephitmp.8248, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8248,
	beq	.L3428	@,
.L3427:
	mov	r2, r0	@, D.40424
	movw	r1, #:lower16:.LC346	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC346	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3439:
	movw	r0, #54108	@ tmp224,
	ldr	r3, [r4, r0]	@ prephitmp.8218, <variable>.SeErrFlg
.L3422:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC344	@,
	movt	r1, #:upper16:.LC344	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3436:
	movw	lr, #54108	@ tmp195,
	ldr	r3, [r4, lr]	@ prephitmp.8249, <variable>.SeErrFlg
.L3409:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC337	@,
	movt	r1, #:upper16:.LC337	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3441:
	movw	lr, #54108	@ tmp225,
	ldr	r3, [r4, lr]	@ prephitmp.8248, <variable>.SeErrFlg
	b	.L3427	@
.L3407:
	mov	r6, #0	@ i,
.L3419:
	add	r2, r6, #4928	@ tmp208, i,
	add	r6, r2, #42	@ tmp208, tmp208,
	add	r6, r4, r6, asl #2	@, tmp212, pH264Ctx, tmp208,
	ldr	lr, [r6, #4]	@ tmp214, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	lr, #3	@ tmp214,
	beq	.L3434	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC341	@,
	movt	r1, #:upper16:.LC341	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L3438:
	movw	r1, #54108	@ tmp196,
	ldr	r3, [r4, r1]	@ prephitmp.8245, <variable>.SeErrFlg
	b	.L3416	@
	.fnend
	.size	ref_pic_list_reordering, .-ref_pic_list_reordering
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
.LFB1452:
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
	ldr	r2, [r0, r5]	@ D.40837, <variable>.CurrSlice.pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	sub	r3, r1, #1	@ tmp156, <variable>.MaxPpsNum,
	cmp	r3, r2	@ tmp156, D.40837
	bcc	.L3443	@,
	movw	lr, #54108	@ tmp158,
	ldr	ip, [r0, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3443	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L3475	@,
	ldr	r6, [r4, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r8, #20672	@ tmp168,
	mov	r7, #2208	@ tmp166,
	ldrb	r5, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	r0, #13584	@ tmp162,
	mul	r7, r7, r6	@ tmp164, tmp166, <variable>.CurrSlice.pic_parameter_set_id
	cmp	r5, #1	@ <variable>.CurrSlice.slice_type,
	ldr	r6, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	add	r5, r7, r6	@ pPPS, tmp164, <variable>.PPS
	beq	.L3476	@,
.L3447:
	ldr	r2, [r5, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	sl, #20672	@ tmp177,
	movw	r8, #20728	@ tmp173,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ prephitmp.8291, <variable>.CurrSlice.slice_type
	movw	r9, #20732	@ tmp175,
	str	r2, [r4, r8]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8291,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	str	r2, [r4, r9]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L3477	@,
.L3448:
	cmp	r3, #2	@ prephitmp.8291,
	mov	r0, r4	@, pH264Ctx
	movweq	r3, #20672	@ tmp207,
	movweq	r2, #20728	@ tmp205,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8291, <variable>.CurrSlice.slice_type
	moveq	r1, #32	@ tmp206,
	streq	r1, [r4, r2]	@ tmp206, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8291,
	movwne	r3, #20732	@ tmp208,
	movne	r2, #32	@ tmp209,
	strne	r2, [r4, r3]	@ tmp209, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bl	ref_pic_list_reordering	@
	cmp	r0, #0	@,
	bne	.L3478	@,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r8, #0	@ <variable>.weighted_pred_flag,
	beq	.L3459	@,
	movw	r1, #20672	@ tmp212,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #0	@ <variable>.CurrSlice.slice_type,
	moveq	r3, #1	@ prephitmp.8266,
	beq	.L3462	@
.L3459:
	ldr	lr, [r5, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	lr, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3479	@,
.L3461:
	mov	r3, #0	@ prephitmp.8266,
.L3462:
	movw	r8, #20679	@ tmp217,
	mov	r2, r3	@, prephitmp.8266
	strb	r3, [r4, r8]	@ prephitmp.8266, <variable>.CurrSlice.apply_weights_flag
	mov	r0, #19	@,
	movw	r1, #:lower16:.LC356	@,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.apply_weights_flag, <variable>.CurrSlice.apply_weights_flag
	movw	r1, #20740	@ tmp222,
	mov	r2, #20736	@ tmp220,
	cmp	r0, #0	@ <variable>.CurrSlice.apply_weights_flag,
	mov	r3, #0	@ tmp221,
	str	r3, [r4, r1]	@ tmp221, <variable>.CurrSlice.chroma_log2_weight_denom
	str	r3, [r4, r2]	@ tmp221, <variable>.CurrSlice.luma_log2_weight_denom
	bne	.L3480	@,
.L3463:
	movw	ip, #20704	@ tmp227,
	ldr	lr, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L3481	@,
.L3464:
	movw	r8, #22280	@ tmp230,
	mov	r3, #0	@ tmp231,
	str	r3, [r4, r8]	@ tmp231, <variable>.CurrSlice.cabac_init_idc
	ldrb	r2, [r7, r6]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r2, #0	@ <variable>.entropy_coding_mode_flag,
	beq	.L3465	@,
	movw	r0, #20672	@ tmp233,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	bls	.L3482	@,
.L3465:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC361	@,
	movt	r1, #:upper16:.LC361	@,
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
	bne	.L3483	@,
.L3467:
	mov	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3483:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC362	@,
	movt	r1, #:upper16:.LC362	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.40931,
	str	r0, [r4, r6]	@ D.40931, <variable>.CurrSlice.disable_deblocking_filter_idc
	bhi	.L3468	@,
	movw	r5, #54108	@ tmp251,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3468	@,
	cmp	r0, #1	@ D.40931,
	beq	.L3467	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC364	@,
	movt	r1, #:upper16:.LC364	@,
	bl	se_v	@
	add	ip, r0, #6	@ tmp256, D.40939,
	str	r0, [r4, r7]	@ D.40939, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	cmp	ip, #12	@ tmp256,
	bhi	.L3470	@,
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3470	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	se_v	@
	add	r2, r0, #6	@ tmp262, D.40947,
	str	r0, [r4, r8]	@ D.40947, <variable>.CurrSlice.slice_beta_offset_div2
	cmp	r2, #12	@ tmp262,
	bhi	.L3472	@,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3467	@,
.L3472:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC367	@,
	movt	r1, #:upper16:.LC367	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3480:
	mov	r0, r4	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	beq	.L3463	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC357	@,
	movt	r1, #:upper16:.LC357	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3481:
	mov	r0, r4	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L3464	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3479:
	movw	ip, #20672	@ tmp215,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3461	@,
	mov	r3, #1	@ prephitmp.8266,
	b	.L3462	@
.L3476:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC349	@,
	movt	r1, #:upper16:.LC349	@,
	movw	r9, #20678	@ tmp171,
	bl	u_1	@
	strb	r0, [r4, r9]	@, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	b	.L3447	@
.L3477:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC350	@,
	movt	r1, #:upper16:.LC350	@,
	bl	u_1	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r8]	@ prephitmp.8268, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3484	@,
.L3450:
	movw	ip, #20673	@ tmp187,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3451	@,
	cmp	r3, #15	@ prephitmp.8268,
	bhi	.L3452	@,
	movw	lr, #20732	@ tmp189,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3453	@,
	movw	ip, #20672	@ tmp191,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3453	@,
.L3452:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC353	@,
	movt	r1, #:upper16:.LC353	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3453:
	movw	lr, #54108	@ tmp193,
	ldr	r3, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3452	@,
.L3474:
	movw	r3, #20672	@ tmp203,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8291, <variable>.CurrSlice.slice_type
	b	.L3448	@
.L3443:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3482:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC359	@,
	movt	r1, #:upper16:.LC359	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.40921,
	str	r0, [r4, r8]	@ D.40921, <variable>.CurrSlice.cabac_init_idc
	bhi	.L3466	@,
	movw	ip, #54108	@ tmp237,
	ldr	lr, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3465	@,
.L3466:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC360	@,
	movt	r1, #:upper16:.LC360	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3451:
	cmp	r3, #31	@ prephitmp.8268,
	bhi	.L3454	@,
	movw	ip, #20732	@ tmp197,
	ldr	r0, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r0, #31	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3455	@,
	movw	lr, #20672	@ tmp199,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3455	@,
.L3454:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC354	@,
	movt	r1, #:upper16:.LC354	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3455:
	movw	ip, #54108	@ tmp201,
	ldr	r0, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3474	@,
	b	.L3454	@
.L3484:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC351	@,
	movt	r1, #:upper16:.LC351	@,
	bl	ue_v	@
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	mov	r3, r0	@ prephitmp.8268,
	str	r0, [r4, r8]	@ prephitmp.8268, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3450	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC352	@,
	movt	r1, #:upper16:.LC352	@,
	bl	ue_v	@
	ldr	r3, [r4, r8]	@ prephitmp.8268, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, r9]	@, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	b	.L3450	@
.L3470:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC365	@,
	movt	r1, #:upper16:.LC365	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3468:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC363	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3475:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC286	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3478:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC355	@,
	movt	r1, #:upper16:.LC355	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40841,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	ProcessSliceHeaderSecondPart, .-ProcessSliceHeaderSecondPart
	.align	2
	.global	H264_DecSlice
	.type	H264_DecSlice, %function
H264_DecSlice:
	.fnstart
.LFB1456:
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
	movw	r0, #54112	@ tmp164,
	movw	r1, #:lower16:.LC368	@,
	ldr	lr, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movt	r1, #:upper16:.LC368	@,
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
	bne	.L3489	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@,
	bne	.L3489	@,
	movw	r3, #54092	@ tmp179,
	ldr	r3, [r4, r3]	@ temp.8345, <variable>.SliceParaNum
	cmp	r3, #0	@ temp.8345,
	beq	.L3491	@,
	add	ip, r4, #51968	@ tmp186, pH264Ctx,
	mov	r5, r3, asl #2	@ D.51956, temp.8345,
	add	r2, ip, #72	@ tmp186, tmp186,
	sub	r3, r5, #4	@ tmp251, D.51956,
	ubfx	ip, r3, #2, #1	@ tmp252, tmp251,,
	ldr	r3, [r2, #0]	@ D.41114, <variable>.pSliceNal
	ldr	r1, [r3, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r1, #0	@ Addr0,
	ldrne	r6, [r3, #12]	@ Size0, <variable>.bitstream_length
	beq	.L3568	@,
.L3541:
	ldr	lr, [r3, #36]	@ Addr1, <variable>.streamBuffer
	mov	r2, #4	@ ivtmp.8325,
	cmp	lr, #0	@ Addr1,
	ldrne	r0, [r3, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, lr	@ Size1, Addr1
	cmp	lr, #0	@ Addr1,
	add	r3, r6, r0	@ Size, Size0, Size1
	movne	r1, lr	@ PrevNalAddr, Addr1
	movne	r6, r0	@ PrevNalSize, Size1
	cmp	r2, r5	@ ivtmp.8325, D.51956
	beq	.L3491	@,
	cmp	ip, #0	@ tmp252,
	beq	.L3503	@,
	add	lr, r4, r2	@ tmp281, pH264Ctx, ivtmp.8325
	add	ip, lr, #51968	@ tmp283, tmp281,
	add	r0, ip, #72	@ tmp283, tmp283,
	ldr	ip, [r0, #0]	@ D.41114, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r7, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	moveq	ip, r0	@ Size1, Addr1
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.41134, Size0, Size
	addeq	r3, r3, ip	@ Size, D.41134, Size1
	bne	.L3569	@,
.L3551:
	cmp	r0, #0	@ Addr1,
	moveq	r1, lr	@ PrevNalAddr, Addr0
	moveq	r6, r7	@ PrevNalSize, Size0
	movne	r1, r0	@ PrevNalAddr, Addr1
	movne	r6, ip	@ PrevNalSize, Size1
	b	.L3564	@
.L3535:
	rsb	r7, r7, ip	@ tmp302, PrevNalSize, Addr0
	rsb	lr, lr, r7	@ tmp303, PrevNalAddr, tmp302
	add	lr, lr, r6	@ Size0.8327, tmp303, Size0
.L3562:
	add	r3, r0, r3	@ Size.8333, Size1, Size
	add	r3, r3, lr	@ Size, Size.8333, Size0.8327
.L3560:
	cmp	r1, #0	@ Addr1,
	moveq	r1, ip	@ PrevNalAddr, Addr0
	movne	r6, r0	@ PrevNalSize, Size1
.L3564:
	add	r2, r2, #4	@ ivtmp.8325, tmp253,
	cmp	r2, r5	@ ivtmp.8325, D.51956
	beq	.L3491	@,
.L3503:
	add	lr, r4, r2	@ tmp256, pH264Ctx, ivtmp.8325
	add	r0, lr, #51968	@ tmp257, tmp256,
	ldr	ip, [r0, #72]	@ D.41114, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r7, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	moveq	ip, r0	@ Size1, Addr1
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.41134, Size0, Size
	addeq	r3, r3, ip	@ Size, D.41134, Size1
	beq	.L3500	@,
	cmp	lr, r1	@ Addr0, PrevNalAddr
	rsbhi	r1, r1, lr	@ tmp189, PrevNalAddr, Addr0
	rsbhi	r6, r6, r1	@ tmp190, PrevNalSize, tmp189
	add	r1, ip, r3	@ Size.8333, Size1, Size
	addhi	r6, r6, r7	@ Size0.8327, tmp190, Size0
	movls	r6, r7	@ Size0.8327, Size0
	add	r3, r1, r6	@ Size, Size.8333, Size0.8327
.L3500:
	cmp	r0, #0	@ Addr1,
	add	r2, r2, #4	@ tmp253, ivtmp.8325,
	movne	lr, r0	@ PrevNalAddr, Addr1
	add	r0, r4, r2	@ tmp267, pH264Ctx, tmp253
	movne	r7, ip	@ PrevNalSize, Size1
	add	ip, r0, #51968	@ tmp268, tmp267,
	ldr	r0, [ip, #72]	@ D.41114, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r6, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r6, ip	@ Size0, Addr0
.L3556:
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r1, #0	@ Addr1,
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, r1	@ Size1, Addr1
	cmp	lr, #0	@ PrevNalAddr,
	addeq	r3, r6, r3	@ D.41134, Size0, Size
	addeq	r3, r3, r0	@ Size, D.41134, Size1
	beq	.L3560	@,
	cmp	ip, lr	@ Addr0, PrevNalAddr
	bhi	.L3535	@,
	mov	lr, r6	@ Size0.8327, Size0
	b	.L3562	@
.L3491:
	movw	r2, #51468	@ tmp192,
	movw	ip, #51464	@ tmp193,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	r2, #1620	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	movw	r1, #54152	@ tmp191,
	str	r3, [r4, r1]	@ Size, <variable>.MaxBytesReceived
	mul	ip, lr, r0	@ TotalMbs, <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_height_in_mb
	cmp	ip, r2	@ TotalMbs, tmp196
	movgt	ip, ip, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3570	@,
.L3505:
	movw	r2, #54092	@ tmp202,
	mov	lr, #13568	@ tmp203,
	ldr	r2, [r4, r2]	@ D.41143, <variable>.SliceParaNum
	ldr	r1, [r4, lr]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r2, r1	@ D.41143, <variable>.MaxSliceNum
	bcs	.L3507	@,
	cmp	r3, ip	@ Size, MaxStreamThr
	bhi	.L3507	@,
	movw	r2, #20677	@ tmp215,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	cmp	r1, #0	@ <variable>.CurrSlice.new_pic_flag,
	bne	.L3571	@,
.L3510:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	subs	r2, r0, #0	@ ret.8336,
	bne	.L3572	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret.8337,
	bne	.L3573	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	movw	r3, #54148	@ tmp244,
	ldr	r2, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	movw	r1, #52660	@ tmp242,
	mov	r0, r5	@ D.41107, ret.8337
	mov	ip, #1	@ tmp243,
	str	ip, [r4, r1]	@ tmp243, <variable>.AllowStartDec
	add	r1, r2, ip	@ tmp247, <variable>.SliceNumInPic,
	str	r1, [r4, r3]	@ tmp247, <variable>.SliceNumInPic
.L3488:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L3570:
	add	r0, ip, ip, asl #1	@, tmp199, TotalMbs, TotalMbs,
	movw	lr, #32769	@ tmp201,
	mov	ip, r0, asl #8	@ tmp200, tmp199,
	cmp	ip, lr	@ tmp200, tmp201
	movgt	ip, ip, asr #1	@ MaxStreamThr, tmp200,
	movle	ip, #16384	@ MaxStreamThr,
	b	.L3505	@
.L3568:
	mov	r6, r1	@ Size0, Addr0
	b	.L3541	@
.L3569:
	cmp	lr, r1	@ Addr0, PrevNalAddr
	bls	.L3574	@,
	rsb	r6, r6, lr	@ tmp293, PrevNalSize, Addr0
	rsb	r1, r1, r6	@ tmp294, PrevNalAddr, tmp293
	add	r1, r1, r7	@ Size0.8327, tmp294, Size0
.L3553:
	add	r3, ip, r3	@ Size.8333, Size1, Size
	add	r3, r3, r1	@ Size, Size.8333, Size0.8327
	b	.L3551	@
.L3571:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC372	@,
	movt	r1, #:upper16:.LC372	@,
	bl	dprint_vfmw	@
	movw	ip, #20675	@ tmp218,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r0, #54148	@ tmp223,
	mov	ip, #0	@ tmp224,
	str	ip, [r4, r0]	@ tmp224, <variable>.SliceNumInPic
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	r3, #54132	@ tmp221,
	ldreq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	movweq	r3, #54144	@ tmp220,
	streq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.IDRPicOfCurrPic
	movw	r2, #50979	@ tmp229,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r3, #54132	@ tmp225,
	ldr	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	cmp	r1, #0	@ <variable>.CurrPic.structure,
	add	r1, r2, #1	@ tmp228, <variable>.TotalPicNum,
	str	r1, [r4, r3]	@ tmp228, <variable>.TotalPicNum
	movweq	r3, #54136	@ tmp231,
	movwne	r3, #54140	@ tmp235,
	ldr	r0, [r4, r3]	@ <variable>.TotalFieldNum,
	add	ip, r0, #1	@ tmp238, <variable>.TotalFieldNum,
	mov	r0, r4	@, pH264Ctx
	str	ip, [r4, r3]	@ tmp238,
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3575	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3510	@
.L3574:
	mov	r1, r7	@ Size0.8327, Size0
	b	.L3553	@
.L3489:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC369	@,
	movt	r1, #:upper16:.LC369	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp181,
	movt	ip, #:upper16:g_event_report	@ tmp181,
	ldr	r3, [ip, #0]	@ g_event_report.8331, g_event_report
	cmp	r3, #0	@ g_event_report.8331,
	beq	.L3565	@,
	sub	r2, fp, #28	@ tmp184,,
	movw	lr, #54168	@ tmp183,
	mvn	r1, #0	@ tmp182,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r1, [r2, #-8]!	@ tmp182,
	add	r1, r1, #101	@,,
	blx	r3	@ g_event_report.8331
.L3565:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.41107,
	b	.L3488	@
.L3507:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC370	@,
	movt	r1, #:upper16:.LC370	@,
	str	ip, [sp, #0]	@ MaxStreamThr,
	bl	dprint_vfmw	@
	movw	ip, #54092	@ tmp206,
	mov	r3, #13568	@ tmp207,
	ldr	r1, [r4, ip]	@ temp.8338, <variable>.SliceParaNum
	ldr	r2, [r4, r3]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r1, r2	@ temp.8338, <variable>.MaxSliceNum
	bcc	.L3509	@,
	movw	r0, #:lower16:g_event_report	@ tmp209,
	movt	r0, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r0, #0]	@ g_event_report.8341, g_event_report
	cmp	r3, #0	@ g_event_report.8341,
	beq	.L3509	@,
	movw	lr, #54168	@ tmp212,
	str	r1, [fp, #-36]	@ temp.8338, para
	str	r2, [fp, #-32]	@ <variable>.MaxSliceNum, para
	mov	r1, #108	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	sub	r2, fp, #36	@,,
	blx	r3	@ g_event_report.8341
.L3509:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC371	@,
	movt	r1, #:upper16:.LC371	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.41107,
	b	.L3488	@
.L3572:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC374	@,
	movt	r1, #:upper16:.LC374	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41107,
	b	.L3488	@
.L3573:
	movw	r1, #:lower16:.LC375	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC375	@,
	bl	dprint_vfmw	@
	b	.L3565	@
.L3575:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41107,
	b	.L3488	@
	.fnend
	.size	H264_DecSlice, .-H264_DecSlice
	.align	2
	.global	SliceCheck
	.type	SliceCheck, %function
SliceCheck:
	.fnstart
.LFB1443:
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
	movw	r1, #:lower16:.LC376	@,
	movt	r1, #:upper16:.LC376	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r5, #54108	@ tmp140,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20724	@ tmp139,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.40210, <variable>.CurrSlice.first_mb_in_slice
	bne	.L3577	@,
	movw	r1, #:lower16:92927	@ tmp142,
	movt	r1, #:upper16:92927	@ tmp142,
	cmp	r0, r1	@ D.40210, tmp142
	bhi	.L3585	@,
	movw	ip, #13564	@ tmp144,
	movw	r1, #13560	@ tmp145,
	ldr	r3, [r4, ip]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	ldr	r2, [r4, r1]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	mul	lr, r2, r3	@ tmp146, <variable>.CurWidthInMb, <variable>.CurHeightInMb
	sub	ip, lr, #1	@ tmp149, tmp146,
	cmp	r0, ip	@ D.40210, tmp149
	bls	.L3586	@,
.L3577:
	mvn	r0, #0	@ D.40214,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3585:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC377	@,
	movt	r1, #:upper16:.LC377	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40214,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3586:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC378	@,
	movt	r1, #:upper16:.LC378	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC379	@,
	movt	r1, #:upper16:.LC379	@,
	mov	r6, r0	@ SliceType,
	mov	r0, #19	@,
	mov	r2, r6	@, SliceType
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3577	@,
	cmp	r6, #9	@ SliceType,
	bls	.L3587	@,
.L3580:
	mov	r2, r6	@, SliceType
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC380	@,
	movt	r1, #:upper16:.LC380	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40214,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3587:
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
	movne	r0, r1	@ D.40214, tmp156
	strneb	r1, [r4, r3]	@ tmp156, <variable>.CurrSlice.slice_type
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	tst	r3, #66	@ tmp154,
	movwne	r3, #20672	@ tmp166,
	strneb	r2, [r4, r3]	@ tmp155, <variable>.CurrSlice.slice_type
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	b	.L3580	@
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	InquireSliceProperty
	.type	InquireSliceProperty, %function
InquireSliceProperty:
	.fnstart
.LFB1480:
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
	movw	r5, #54112	@ tmp144,
	ldr	lr, [r0, r5]	@ <variable>.TotalNal, <variable>.TotalNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ IsNewPic, IsNewPic
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	mov	r0, #22	@,
	sub	r2, lr, #1	@, <variable>.TotalNal,
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp147,
	str	r0, [r5, #0]	@ tmp147,* IsSizeChanged
	movw	r2, #20675	@ tmp149,
	str	r0, [r6, #0]	@ tmp147,* IsNewPic
	movw	r3, #20704	@ tmp152,
	ldr	ip, [r4, #368]	@ D.43326, <variable>.pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	cmp	r0, #0	@,
	beq	.L3589	@,
.L3596:
	mvn	r0, #0	@ D.43332,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3589:
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3597	@,
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
	mov	r0, #0	@ D.43332,
	ldreq	r2, [r5, #0]	@ cstore.8382,* IsSizeChanged
	movne	r2, #1	@ cstore.8382,
	str	r2, [r5, #0]	@ cstore.8382,* IsSizeChanged
	movw	r2, #26616	@ tmp188,
	ldr	r1, [r4, r2]	@ <variable>.DPB.size, <variable>.DPB.size
	ldr	ip, [lr, #3972]	@ <variable>.dpb_size_plus1, <variable>.dpb_size_plus1
	add	r3, r1, #1	@ tmp189, <variable>.DPB.size,
	cmp	ip, r3	@ <variable>.dpb_size_plus1, tmp189
	movhi	r3, #1	@ tmp192,
	strhi	r3, [r5, #0]	@ tmp192,* IsSizeChanged
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L3597:
	movw	r1, #:lower16:.LC369	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC369	@,
	bl	dprint_vfmw	@
	b	.L3596	@
	.fnend
	.size	InquireSliceProperty, .-InquireSliceProperty
	.align	2
	.global	H264_DecOneNal
	.type	H264_DecOneNal, %function
H264_DecOneNal:
	.fnstart
.LFB1474:
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
	ldr	r2, [r0, #368]	@ temp.8457, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ NalMode, NalMode
	ldr	r3, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r3, #0	@ <variable>.nal_segment,
	beq	.L3599	@,
	movw	ip, #54152	@ tmp177,
	mov	r3, #0	@ i,
	ldr	r1, [r0, ip]	@ prephitmp.8472, <variable>.MaxBytesReceived
.L3600:
	rsb	r7, r3, r3, asl #3	@, tmp181, i, i,
	add	r3, r3, #1	@ i, i,
	add	r6, r2, r7, asl #2	@, tmp183, temp.8457, tmp181,
	ldr	r5, [r6, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r5	@ prephitmp.8472, prephitmp.8472, <variable>.bitstream_length
	str	r1, [r4, ip]	@ prephitmp.8472, <variable>.MaxBytesReceived
	ldr	r0, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r0, r3	@ <variable>.nal_segment, i
	bhi	.L3600	@,
.L3599:
	add	lr, r4, #13504	@ D.43002, pH264Ctx,
	mov	sl, #0	@ tmp188,
	add	r5, lr, #24	@ D.43002, D.43002,
	strb	sl, [r2, #0]	@ tmp188, <variable>.nal_used_segment
	mov	r1, #32	@,
	movw	r7, #54112	@ tmp206,
	mov	r0, r5	@, D.43002
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	and	r1, r0, #31	@ tmp193, nal_header,
	strb	r1, [r3, #2]	@ tmp193, <variable>.nal_unit_type
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ubfx	ip, r0, #5, #2	@ tmp197, nal_header,,
	ubfx	r2, r0, #7, #1	@ tmp200, nal_header,,
	mov	r6, r0	@ nal_header,
	movw	r1, #:lower16:.LC381	@,
	mov	r0, #22	@,
	str	ip, [r3, #76]	@ tmp197, <variable>.nal_ref_idc
	movt	r1, #:upper16:.LC381	@,
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [ip, #80]	@ tmp200, <variable>.forbidden_bit
	ldr	ip, [r4, #368]	@ temp.8425, <variable>.pCurrNal
	ldr	r3, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, r3, #32	@ tmp202, <variable>.nal_bitoffset,
	str	r2, [ip, #64]	@ tmp202, <variable>.nal_bitoffset
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r3, #54108	@ tmp203,
	str	sl, [r4, r3]	@ tmp188, <variable>.SeErrFlg
	ldr	r2, [r4, r7]	@, <variable>.TotalNal
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@, <variable>.nal_unit_type
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8410, <variable>.TotalNal
	movw	r2, #371	@ tmp211,
	cmp	r3, r2	@ prephitmp.8410, tmp211
	beq	.L3639	@,
.L3601:
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	ip, #54112	@ tmp214,
	add	r1, r3, #1	@ tmp215, prephitmp.8410,
	str	r1, [r4, ip]	@ tmp215, <variable>.TotalNal
	ldrb	r2, [r2, #2]	@ zero_extendqisi2	@ temp.8428, <variable>.nal_unit_type
	sub	r0, r2, #1	@ tmp217, temp.8428,
	cmp	r0, #29	@ tmp217,
	ldrls	pc, [pc, r0, asl #2]	@ tmp217
	b	.L3602	@
.L3614:
	.word	.L3603
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3603
	.word	.L3604
	.word	.L3605
	.word	.L3606
	.word	.L3607
	.word	.L3608
	.word	.L3609
	.word	.L3610
	.word	.L3611
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3612
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3602
	.word	.L3613
.L3613:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC395	@,
	mov	r2, #30	@,
	movt	r1, #:upper16:.LC395	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ NalMode,
	beq	.L3640	@,
.L3623:
	mov	r1, #32	@,
	mov	r0, r5	@, D.43002
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.43088,
	mov	r0, r5	@, D.43002
	bl	BsGet	@
	ldr	r3, .L3644	@ tmp304,
	and	r5, r6, #65280	@ tmp294, D.43088,
	mov	r1, r6, asl #24	@ tmp292, D.43088,
	orr	r1, r1, r6, lsr #24	@, tmp293, tmp292, D.43088,
	and	r6, r6, #16711680	@ tmp290, D.43088,
	orr	r1, r1, r5, asl #8	@, D.43096, tmp293, tmp294,
	orr	r6, r1, r6, lsr #8	@, tmp308, D.43096, tmp290,
	and	ip, r0, #65280	@ tmp300, D.43089,
	mov	r2, r0, asl #24	@ tmp298, D.43089,
	orr	r2, r2, r0, lsr #24	@, tmp299, tmp298, D.43089,
	and	r0, r0, #16711680	@ tmp296, D.43089,
	orr	ip, r2, ip, asl #8	@, D.43104, tmp299, tmp300,
	ldmib	r3, {r2, r3}	@ phole ldm
	orr	r0, ip, r0, lsr #8	@, tmp302, D.43104, tmp296,
	cmp	r0, r3	@ tmp302, tmp306
	cmpeq	r6, r2	@, tmp308, tmp312
	bne	.L3618	@,
	movw	r5, #:lower16:g_event_report	@ tmp333,
	movt	r5, #:upper16:g_event_report	@ tmp333,
	ldr	r3, [r5, #0]	@ g_event_report.8462, g_event_report
	cmp	r3, #0	@ g_event_report.8462,
	beq	.L3624	@,
	movw	lr, #54168	@ tmp318,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8462
.L3624:
	mov	r6, #0	@ tmp320,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp320, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3641	@,
.L3618:
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3602:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC396	@,
	mov	r3, r6	@, nal_header
	movt	r1, #:upper16:.LC396	@,
	bl	dprint_vfmw	@
	cmp	r6, #256	@ nal_header,
	movweq	r5, #:lower16:g_event_report	@ tmp334,
	movteq	r5, #:upper16:g_event_report	@ tmp334,
	beq	.L3625	@,
	movw	r5, #:lower16:g_event_report	@ tmp334,
	movt	r5, #:upper16:g_event_report	@ tmp334,
	ldr	r3, [r5, #0]	@ g_event_report.8468, g_event_report
	cmp	r3, #0	@ g_event_report.8468,
	beq	.L3625	@,
	movw	r2, #54168	@ tmp325,
	mov	r1, #102	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8468
.L3625:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #0]	@ g_event_report.8470, g_event_report
	cmp	r3, #0	@ g_event_report.8470,
	beq	.L3618	@,
.L3634:
	movw	lr, #54168	@ tmp328,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8470
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3603:
	movw	lr, #54124	@ tmp219,
	mov	r0, #22	@,
	ldr	r3, [r4, lr]	@, <variable>.TotalSlice
	movw	r1, #:lower16:.LC383	@,
	movt	r1, #:upper16:.LC383	@,
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
	bne	.L3642	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3618	@,
	movw	r3, #:lower16:g_event_report	@ tmp230,
	movt	r3, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r3, #0]	@ g_event_report.8434, g_event_report
	cmp	r3, #0	@ g_event_report.8434,
	movne	r2, r5	@, ret
	bne	.L3631	@,
.L3632:
	mvn	r0, #0	@ D.43030,
	b	.L3617	@
.L3604:
	mov	r2, #6	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC387	@,
	movt	r1, #:upper16:.LC387	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret.8448,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret.8448,
	beq	.L3618	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC388	@,
	movt	r1, #:upper16:.LC388	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp262,
	movt	r0, #:upper16:g_event_report	@ tmp262,
	ldr	r3, [r0, #0]	@ g_event_report.8449, g_event_report
	cmp	r3, #0	@ g_event_report.8449,
	bne	.L3634	@,
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3605:
	movw	r5, #54116	@ tmp247,
	mov	r2, #7	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalSPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC385	@,
	movt	r1, #:upper16:.LC385	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r6, r0	@ ret.8442,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8442,
	bne	.L3643	@,
.L3620:
	ldr	r2, [r4, r5]	@ <variable>.TotalSPS,
	mov	r0, r6	@ D.43030, ret.8442
	add	r1, r2, #1	@ tmp259, <variable>.TotalSPS,
	str	r1, [r4, r5]	@ tmp259,
.L3617:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L3606:
	movw	r5, #54120	@ tmp233,
	mov	r2, #8	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalPPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC384	@,
	movt	r1, #:upper16:.LC384	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r6, r0	@ ret.8436,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8436,
	beq	.L3620	@,
	movw	r5, #:lower16:g_event_report	@ tmp236,
	movt	r5, #:upper16:g_event_report	@ tmp236,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC283	@,
	movt	r1, #:upper16:.LC283	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8437, g_event_report
	cmp	r3, #0	@ g_event_report.8437,
	beq	.L3632	@,
.L3636:
	sub	r2, fp, #36	@ tmp253,,
	movw	r7, #54168	@ tmp252,
	mvn	r6, #0	@ tmp251,
	mov	r1, #100	@,
	str	r6, [r2, #-4]!	@ tmp251,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8443
	ldr	r3, [r5, #0]	@ g_event_report.8445, g_event_report
	cmp	r3, #0	@ g_event_report.8445,
	beq	.L3632	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8445
	mov	r0, r6	@ D.43030, tmp251
	b	.L3617	@
.L3607:
	mov	r2, #9	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC389	@,
	movt	r1, #:upper16:.LC389	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3608:
	mov	r2, #10	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC390	@,
	movt	r1, #:upper16:.LC390	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3609:
	mov	r2, #11	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC392	@,
	movt	r1, #:upper16:.LC392	@,
	bl	dprint_vfmw	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.43002
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.43069,
	mov	r0, r5	@, D.43002
	bl	BsGet	@
	movw	ip, #:lower16:1128615492	@ tmp270,
	movw	r3, #:lower16:1213419593	@ tmp273,
	movt	ip, #:upper16:1128615492	@ tmp270,
	movt	r3, #:upper16:1213419593	@ tmp273,
	cmp	r0, ip	@, tmp270
	cmpeq	r6, r3	@, D.43069, tmp273
	bne	.L3633	@,
	movw	r5, #:lower16:g_event_report	@ tmp331,
	movt	r5, #:upper16:g_event_report	@ tmp331,
	movw	lr, #13556	@ tmp278,
	mov	r6, #1	@ tmp279,
	strb	r6, [r4, lr]	@ tmp279, <variable>.IsStreamEndFlag
	ldr	r3, [r5, #0]	@ g_event_report.8451, g_event_report
	cmp	r3, #0	@ g_event_report.8451,
	beq	.L3622	@,
	movw	r2, #54168	@ tmp282,
	mov	r1, #112	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8451
.L3622:
	mov	r6, #0	@ tmp284,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp284, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3633	@,
	ldr	r3, [r5, #0]	@ g_event_report.8454, g_event_report
	cmp	r3, r6	@ g_event_report.8454,
	beq	.L3632	@,
	movw	r1, #54168	@ tmp286,
	mov	r2, r6	@, tmp284
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.8454
	mvn	r0, #0	@ D.43030,
	b	.L3617	@
.L3610:
	mov	r2, #12	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC391	@,
	movt	r1, #:upper16:.LC391	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3611:
	mov	r2, #13	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC393	@,
	movt	r1, #:upper16:.LC393	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3612:
	movw	r1, #:lower16:.LC394	@,
	mov	r2, #19	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC394	@,
	bl	dprint_vfmw	@
.L3633:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.43030,
	b	.L3617	@
.L3639:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8410, <variable>.TotalNal
	b	.L3601	@
.L3641:
	ldr	r3, [r5, #0]	@ g_event_report.8465, g_event_report
	cmp	r3, r6	@ g_event_report.8465,
	beq	.L3632	@,
	mov	r2, r6	@, tmp320
.L3631:
	movw	ip, #54168	@ tmp322,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8465
	mvn	r0, #0	@ D.43030,
	b	.L3617	@
.L3640:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3623	@
.L3642:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	movw	r0, #:lower16:g_event_report	@ tmp228,
	movt	r0, #:upper16:g_event_report	@ tmp228,
	ldr	r3, [r0, #0]	@ g_event_report.786, g_event_report
	cmp	r3, #0	@ g_event_report.786,
	beq	.L3632	@,
	movw	ip, #54168	@ tmp229,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.786
	mvn	r0, #0	@ D.43030,
	b	.L3617	@
.L3643:
	movw	r5, #:lower16:g_event_report	@ tmp250,
	movt	r5, #:upper16:g_event_report	@ tmp250,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC386	@,
	movt	r1, #:upper16:.LC386	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8443, g_event_report
	cmp	r3, #0	@ g_event_report.8443,
	bne	.L3636	@,
	mvn	r0, #0	@ D.43030,
	b	.L3617	@
.L3645:
	.align	2
.L3644:
	.word	.LANCHOR2+432
	.fnend
	.size	H264_DecOneNal, .-H264_DecOneNal
	.align	2
	.global	H264DEC_DecodePacket
	.type	H264DEC_DecodePacket, %function
H264DEC_DecodePacket:
	.fnstart
.LFB1485:
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L3667	@,
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r5, #52664	@ tmp164,
	ldr	r6, [r0, r5]	@ <variable>.HaveNalNotDecoded, <variable>.HaveNalNotDecoded
	ldr	ip, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r6, #1	@ <variable>.HaveNalNotDecoded,
	mov	r6, #0	@ tmp163,
	mov	r2, ip, asl #16	@ tmp153, <variable>.s32DecMode,
	and	ip, r2, #196608	@ tmp155, tmp153,
	movw	r2, #54156	@ tmp151,
	str	ip, [r0, r2]	@ tmp155, <variable>.advanced_cfg
	movw	r2, #54160	@ tmp156,
	ldr	ip, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	str	ip, [r0, r2]	@ <variable>.s32RefErrThr, <variable>.ref_error_thr
	movw	ip, #54108	@ tmp162,
	ldr	r2, [r3, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	movw	r3, #54164	@ tmp159,
	str	r6, [r0, ip]	@ tmp163, <variable>.SeErrFlg
	str	r2, [r0, r3]	@ <variable>.s32OutErrThr, <variable>.out_error_thr
	beq	.L3649	@,
	bl	ReceivePacket	@
	str	r6, [r4, r5]	@ tmp163, <variable>.HaveNalNotDecoded
	cmp	r0, r6	@,
	ldreq	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	beq	.L3650	@,
.L3651:
	mov	r0, #0	@ D.43548,
.L3648:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L3649:
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r0, #0	@ <variable>.pCurrNal,
	strne	r6, [r4, r5]	@ tmp163, <variable>.HaveNalNotDecoded
	beq	.L3668	@,
.L3650:
	mov	r6, #0	@ tmp170,
	add	r5, r4, #13504	@ D.43570, pH264Ctx,
	str	r6, [r0, #64]	@ tmp170, <variable>.nal_bitoffset
	add	r5, r5, #24	@ D.43570, D.43570,
	ldr	lr, [r4, #368]	@ temp.8500, <variable>.pCurrNal
	mov	r0, r5	@, D.43570
	ldr	r2, [lr, #12]	@, <variable>.bitstream_length
	ldr	r1, [lr, #8]	@, <variable>.streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.43570
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	uxtb	ip, r0	@ nal_header,
	and	r2, ip, #31	@ nal_unit_type, nal_header,
	strb	r2, [r3, #2]	@ nal_unit_type, <variable>.nal_unit_type
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r2, #1	@ nal_unit_type,
	cmpne	r2, #5	@, nal_unit_type,
	ubfx	r0, ip, #5, #2	@ tmp179, nal_header,,
	str	r0, [r1, #76]	@ tmp179, <variable>.nal_ref_idc
	bne	.L3654	@,
	mov	r0, r4	@, pH264Ctx
	sub	r1, fp, #32	@,,
	sub	r2, fp, #36	@,,
	bl	InquireSliceProperty	@
	cmp	r0, r6	@,
	bne	.L3655	@,
	ldr	r1, [fp, #-32]	@ IsNewPic, IsNewPic
	movw	ip, #54184	@ tmp189,
	ldr	r0, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r1, #1	@ IsNewPic,
	addeq	r0, r0, #1	@, tmp195, <variable>.PicCounter
	str	r0, [r4, ip]	@ tmp195, <variable>.PicCounter
	beq	.L3669	@,
.L3656:
	ldr	r6, [fp, #-36]	@ IsSizeChanged, IsSizeChanged
	cmp	r6, #1	@ IsSizeChanged,
	beq	.L3670	@,
.L3654:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp244,
	bl	FindTrailZeros	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, r5	@, D.43570
	str	r6, [r2, #64]	@ tmp244, <variable>.nal_bitoffset
	ldr	r3, [r4, #368]	@ temp.8514, <variable>.pCurrNal
	ldr	r1, [r3, #8]	@, <variable>.streamBuffer
	ldr	r2, [r3, #12]	@, <variable>.bitstream_length
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp244
	bl	H264_DecOneNal	@
	cmp	r0, r6	@,
	beq	.L3651	@,
	movw	r1, #:lower16:.LC397	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC397	@,
	bl	dprint_vfmw	@
.L3666:
	mvn	r0, #0	@ D.43548,
	b	.L3648	@
.L3668:
	str	r0, [r4, r5]	@ <variable>.pCurrNal, <variable>.HaveNalNotDecoded
	b	.L3648	@
.L3669:
	movw	r1, #20673	@ tmp197,
	movw	r0, #54188	@ tmp199,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #54092	@ tmp208,
	ldr	lr, [r4, r0]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	addeq	lr, lr, #1	@ tmp202, <variable>.NewPicCounter,
	addne	lr, lr, #2	@ tmp206, <variable>.NewPicCounter,
	cmp	r2, #0	@ <variable>.SliceParaNum,
	str	lr, [r4, r0]	@ tmp206, <variable>.NewPicCounter
	beq	.L3656	@,
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp211,
	mov	r2, #12	@,
	mov	r0, r5	@, D.43570
	ldr	r1, .L3671	@,
	str	r3, [lr, #64]	@ tmp211, <variable>.nal_bitoffset
	bl	BsInit	@
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecOneNal	@
	movw	r2, #20673	@ tmp214,
	movw	ip, #54188	@ tmp216,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r0, [r4, ip]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	movw	r3, #52664	@ tmp224,
	cmp	r1, #1	@ <variable>.CurrSlice.field_pic_flag,
	mov	r2, #1	@ tmp225,
	subeq	r0, r0, #1	@ tmp219, <variable>.NewPicCounter,
	subne	r0, r0, #2	@ tmp223, <variable>.NewPicCounter,
	str	r2, [r4, r3]	@ tmp225, <variable>.HaveNalNotDecoded
	str	r0, [r4, ip]	@ tmp223, <variable>.NewPicCounter
	mvn	r0, #1	@ D.43548,
	b	.L3648	@
.L3670:
	mov	r0, r4	@, pH264Ctx
	movw	r6, #54168	@ tmp227,
	bl	FlushDPB	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L3654	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	sub	r3, fp, #48	@,,
	sub	r1, fp, #40	@,,
	sub	r2, fp, #44	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ temp.8511, <variable>.pstExtraData
	ldr	r0, [r3, #508]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3654	@,
	ldr	r3, [r3, #532]	@ <variable>.stChanOption.s32Btl1Dt2DEnable, <variable>.stChanOption.s32Btl1Dt2DEnable
	cmp	r3, #1	@ <variable>.stChanOption.s32Btl1Dt2DEnable,
	bne	.L3654	@,
	ldr	r2, [fp, #-44]	@ ReadNum, ReadNum
	ldr	r1, [fp, #-48]	@ NewNum, NewNum
	add	ip, r1, r2	@ tmp236, NewNum, ReadNum
	cmp	ip, #0	@ tmp236,
	ble	.L3654	@,
	movw	lr, #52664	@ tmp239,
	mvn	r0, #1	@ D.43548,
	str	r3, [r4, lr]	@ <variable>.stChanOption.s32Btl1Dt2DEnable, <variable>.HaveNalNotDecoded
	b	.L3648	@
.L3655:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #:lower16:g_event_report	@ tmp241,
	movt	r3, #:upper16:g_event_report	@ tmp241,
	ldr	r3, [r3, #0]	@ g_event_report.822, g_event_report
	cmp	r3, #0	@ g_event_report.822,
	beq	.L3666	@,
	movw	ip, #54168	@ tmp242,
	mov	r2, r6	@, tmp170
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.822
	mvn	r0, #0	@ D.43548,
	b	.L3648	@
.L3667:
	mov	r0, r3	@, pPacket
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #10988	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43548,
	b	.L3648	@
.L3672:
	.align	2
.L3671:
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
	.type	SarTable.41885, %object
	.size	SarTable.41885, 136
SarTable.41885:
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
	.ascii	"/home/release/HiSTBLinuxV100R002C00SPC011/source/ke"
	.ascii	"rnel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmwar"
	.ascii	"e/common/syntax/h264.c\000"
	.space	3
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
	.ascii	"new pic flag = %d\012\000"
	.space	1
.LC7:
	.ascii	"tmp slice  pps id = %d\012\000"
.LC8:
	.ascii	"PPSSPSCheckTmpId: pps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC9:
	.ascii	"PPSSPSCheckTmpId: seq_parameter_set_id out of range"
	.ascii	".\012\000"
	.space	2
.LC10:
	.ascii	"PPSSPSCheckTmpId: sps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC11:
	.ascii	"slice  pps id = %d\012\000"
.LC12:
	.ascii	"pps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC13:
	.ascii	"sps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC14:
	.ascii	"list[%d][%d]: frame_num=%d, poc=%d\012\000"
.LC15:
	.ascii	"L0: \000"
	.space	3
.LC16:
	.ascii	"%d \000"
.LC17:
	.ascii	"%dt \000"
	.space	3
.LC18:
	.ascii	"%db \000"
	.space	3
.LC19:
	.ascii	"\012\000"
	.space	2
.LC20:
	.ascii	"L1:\000"
.LC21:
	.ascii	"pH264Ctx->DPB.fs[%d]: frame_num=%d poc=%d is_refere"
	.ascii	"nce=%d\012\000"
	.space	1
.LC22:
	.ascii	"pH264Ctx->DPB.fs_ref[%d]: frame_num=%d poc=%d is_re"
	.ascii	"ference=%d\012\000"
	.space	1
.LC23:
	.ascii	"pH264Ctx->DPB.fs_ref[%d]: frame.poc=%d \012\000"
	.space	3
.LC24:
	.ascii	"framestore %d allocate apc %d\012\000"
	.space	1
.LC25:
	.ascii	"find APC, but logic_fs_id %d abnormal(ref=%d,plfs=%"
	.ascii	"p, pdfs=%p)\012\000"
.LC26:
	.ascii	"exg_pts: %lld <-> %lld\012\000"
.LC27:
	.ascii	"frame %d, state=%d, is already output\012\000"
	.space	1
.LC28:
	.ascii	"plfs(fs=%p, eFoState=%d) is null, logic_fs_id = %d\012"
	.ascii	"\000"
.LC29:
	.ascii	"not used frame: (%d,%d)\012\000"
	.space	3
.LC30:
	.ascii	"frame skip: is_used=%d,skip=%d\012\000"
.LC31:
	.ascii	"topfield skip\012\000"
	.space	1
.LC32:
	.ascii	"bottom field skip\012\000"
	.space	1
.LC33:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC34:
	.ascii	"H264 recycle image\012\000"
.LC35:
	.ascii	"%-50s%50d\012\000"
	.space	1
.LC36:
	.ascii	"DecPicTimingSEI but SPS is invalid.\012\000"
	.space	3
.LC37:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC38:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC39:
	.ascii	"pic_struct\000"
	.space	1
.LC40:
	.ascii	"save pic yuv :  structure = %d;  idc = %d\012\000"
	.space	1
.LC41:
	.ascii	"structure = %d pH264Ctx->CurrPic.pic_width_in_mb = "
	.ascii	"%d pH264Ctx->CurrPic.pic_height_in_mb = %d\012\000"
	.space	1
.LC42:
	.ascii	"\012 VFMW ** release streambuff=%08x   bitstream_le"
	.ascii	"ngth=%d\012\000"
	.space	3
.LC43:
	.ascii	"H264Dec destroy\012\000"
	.space	3
.LC44:
	.ascii	"clear curr slice.\012\000"
	.space	1
.LC45:
	.ascii	"\012\012END of the bit buffer, copy the first packe"
	.ascii	"t!\012\012\000"
	.space	2
.LC46:
	.ascii	"0:phy:0x%x, 1:phy:0x%x; len0:%d len1:%d\012\000"
	.space	3
.LC47:
	.ascii	"0:phy:0x%x, len0:%d\012\000"
	.space	3
.LC48:
	.ascii	"nal_ref_idc=%d, structure=%d, image_id=%d, pmv_idc="
	.ascii	"%d\012\000"
	.space	1
.LC49:
	.ascii	"logic frame id(=%d): get LogicFs error!\012\000"
	.space	3
.LC50:
	.ascii	"phy fs is null: pstDecodeFs = %p, pstDispOutFs = %p"
	.ascii	"\012\000"
	.space	3
.LC51:
	.ascii	"for P slice size of list equal 0.\012\000"
	.space	1
.LC52:
	.ascii	"for B slice size of two list all equal 0.\012\000"
	.space	1
.LC53:
	.ascii	"init list error.\012\000"
	.space	2
.LC54:
	.ascii	"L0: list after init.\012\000"
	.space	2
.LC55:
	.ascii	"L0: list after reorder.\012\000"
	.space	3
.LC56:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC57:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC58:
	.ascii	"stream frame packing type is %d! what can we do?\012"
	.ascii	"\000"
	.space	2
.LC59:
	.ascii	"clear all dec para\012\000"
.LC60:
	.ascii	"cann't find FrameStore\012\000"
.LC61:
	.ascii	"========== H264 FrameStore state(is_used, is_in_dpb"
	.ascii	", IsOutDPB) ========\012\000"
	.space	3
.LC62:
	.ascii	"%02d: %d %d %d\012\000"
.LC63:
	.ascii	"ReadImgNum = %d, NewImgNum = %d\012\000"
	.space	3
.LC64:
	.ascii	"FrameStore leak, ClearAll\012\000"
	.space	1
.LC65:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC66:
	.ascii	"FS_ALLOC_ERR, ClearAll\012\000"
.LC67:
	.ascii	"Can not new logic fs! ClearAll\012\000"
.LC68:
	.ascii	"InsertVO err:%d, ClearAll\012\000"
	.space	1
.LC69:
	.ascii	"H264.c line %d: frame para err(ret=%d), recycle ima"
	.ascii	"ge self\012\000"
.LC70:
	.ascii	"\012 receive streambuff=0x%08x; phy_addr=0x%x; bits"
	.ascii	"tream_length=%d\012\000"
	.space	3
.LC71:
	.ascii	"nal_release_err\012\000"
	.space	3
.LC72:
	.ascii	"cann't find slot for current nal\012\000"
	.space	2
.LC73:
	.ascii	"receive a zero packet\012\000"
	.space	1
.LC74:
	.ascii	"----------------- Imode -> %d ------------------\012"
	.ascii	"\000"
	.space	2
.LC75:
	.ascii	"***** VDM start, TotalPicNum=%d, pH264Ctx->CurrPic."
	.ascii	"structure=%d.\012\000"
	.space	2
.LC76:
	.ascii	"line %d, get APC error, ret %d\012\000"
.LC77:
	.ascii	"InserFrmInDPB: cur pic struct = %d!\012\000"
	.space	3
.LC78:
	.ascii	"CurrPic.state is 'EMPTY'\012\000"
	.space	2
.LC79:
	.ascii	"StorePicInDPB return(%d) from L%d\012\000"
	.space	1
.LC80:
	.ascii	"line %d, return %d\012\000"
.LC81:
	.ascii	"directoutput mode\012\000"
	.space	1
.LC82:
	.ascii	"line %d, REPORT_IFRAME_ERR\012\000"
.LC83:
	.ascii	"err(%d) > ref_thr(%d)\012\000"
	.space	1
.LC84:
	.ascii	"marking return %d\012\000"
	.space	1
.LC85:
	.ascii	"line %d: pH264Ctx->DPB.size = %d, ref %d, ltref %d\012"
	.ascii	"\000"
.LC86:
	.ascii	"store pic err, ret = %d\012\000"
	.space	3
.LC87:
	.ascii	"imode nal store pic err, ret = %d\012\000"
	.space	1
.LC88:
	.ascii	"imode nal flush dpb err, ret = %d\012\000"
	.space	1
.LC89:
	.ascii	"GAP found while DPB is empty!\012\000"
	.space	1
.LC90:
	.ascii	"frame num gap try to fill it \012\000"
	.space	1
.LC91:
	.ascii	"CurrFrameNum = %d  UnusedShortTermFrameNum = %d\012"
	.ascii	"\000"
	.space	3
.LC92:
	.ascii	"cann't allocate frame store when gap find\012\000"
	.space	1
.LC93:
	.ascii	"allocate frame store when gap find\012\000"
.LC94:
	.ascii	"line %d: store gap pic err, ret=%d\012\000"
.LC95:
	.ascii	"line %d: flush dpb return %d\012\000"
	.space	2
.LC96:
	.ascii	"line %d: init dpb return %d\012\000"
	.space	3
.LC97:
	.ascii	"resolution error, the CAP_LEVEL_USER_DEFINE_WITH_OP"
	.ascii	"TION channel with s32ReRangeEn == 0 can't support s"
	.ascii	"uch bitstream.\012\000"
	.space	2
.LC98:
	.ascii	"s32MaxRefFrameNum < pH264Ctx->DPB.size, the CAP_LEV"
	.ascii	"EL_USER_DEFINE_WITH_OPTION channel can't support su"
	.ascii	"ch bitstream.\012\000"
	.space	3
.LC99:
	.ascii	"mem arrange err, ClearAll\012\000"
	.space	1
.LC100:
	.ascii	"get back frm\012\000"
	.space	2
.LC101:
	.ascii	"line %d: frame gap(=%d) > dpb size(=%d)\012\000"
	.space	3
.LC102:
	.ascii	"frame num gap don't allowed but gap find\012\000"
	.space	2
.LC103:
	.ascii	"line %d: find gap in NON-I slice but here gap is no"
	.ascii	"t allowed\012\000"
	.space	2
.LC104:
	.ascii	"line %d: dec gap failed\012\000"
	.space	3
.LC105:
	.ascii	"line %d: alloc framestore failed\012\000"
	.space	2
.LC106:
	.ascii	"dec_pts: %lld\012\000"
	.space	1
.LC107:
	.ascii	"dec_usertag: %lld\012\000"
	.space	1
.LC108:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC109:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC110:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC111:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC112:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC113:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC114:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC115:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC116:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC117:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC118:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC119:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC120:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC121:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC122:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC123:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC124:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC125:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC126:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC127:
	.ascii	"SEI nal dec payload type err\012\000"
	.space	2
.LC128:
	.ascii	"SEI nal dec payloadSize err\012\000"
	.space	3
.LC129:
	.ascii	"SEI_BUFFERING_PERIOD,offset = %d,payload_size = %d "
	.ascii	"\012\000"
	.space	3
.LC130:
	.ascii	"SEI_PIC_TIMING,offset = %d,payload_size = %d \012\000"
	.space	1
.LC131:
	.ascii	"SEI_PAN_SCAN_RECT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	2
.LC132:
	.ascii	"SEI_FILLER_PAYLOAD,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC133:
	.ascii	"SEI_USER_DATA_REGISTERED_ITU_T_T35, offset = %d, pa"
	.ascii	"yload_size = %d \012\000"
	.space	3
.LC134:
	.ascii	"SEI_USER_DATA_UNREGISTERED, offset = %d, payload_si"
	.ascii	"ze = %d \012\000"
	.space	3
.LC135:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC136:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC137:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.space	3
.LC138:
	.ascii	"cann't dec usrdata\012\000"
.LC139:
	.ascii	"SEI_RECOVERY_POINT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC140:
	.ascii	"SEI_DEC_REF_PIC_MARKING_REPETITION,offset = %d,payl"
	.ascii	"oad_size = %d \012\000"
	.space	1
.LC141:
	.ascii	"SEI_SPARE_PIC,offset = %d,payload_size = %d \012\000"
	.space	2
.LC142:
	.ascii	"SEI_SCENE_INFO,offset = %d,payload_size = %d \012\000"
	.space	1
.LC143:
	.ascii	"SEI_SUB_SEQ_INFO,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	3
.LC144:
	.ascii	"SEI_SUB_SEQ_LAYER_CHARACTERISTICS,offset = %d,paylo"
	.ascii	"ad_size = %d \012\000"
	.space	2
.LC145:
	.ascii	"SEI_SUB_SEQ_CHARACTERISTICS,offset = %d,payload_siz"
	.ascii	"e = %d \012\000"
.LC146:
	.ascii	"SEI_FULL_FRAME_FREEZE,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC147:
	.ascii	"SEI_FULL_FRAME_FREEZE_RELEASE,offset = %d,payload_s"
	.ascii	"ize = %d \012\000"
	.space	2
.LC148:
	.ascii	"SEI_FULL_FRAME_SNAPSHOT,offset = %d,payload_size = "
	.ascii	"%d \012\000"
.LC149:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_START,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC150:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_END,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC151:
	.ascii	"SEI_MOTION_CONSTRAINED_SLICE_GROUP_SET,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC152:
	.ascii	"SEI_FILM_GRAIN_CHARACTERISTICS,offset = %d,payload_"
	.ascii	"size = %d \012\000"
	.space	1
.LC153:
	.ascii	"SEI_DEBLOCKING_FILTER_DISPLAY_PREFERENCE,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC154:
	.ascii	"SEI_STEREO_VIDEO_INFO,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC155:
	.ascii	"too much usrdat, cann't dec SEI\012\000"
	.space	3
.LC156:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC157:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC158:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC159:
	.ascii	"VUI: sar_height\000"
.LC160:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC161:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC162:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC163:
	.ascii	"VUI: video_format\000"
	.space	2
.LC164:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC165:
	.ascii	"VUI: color_description_present_flag\000"
.LC166:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC167:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC168:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC169:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC170:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC171:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC172:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC173:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC174:
	.ascii	"VUI: time_scale\000"
.LC175:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC176:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC177:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC178:
	.ascii	"VUI: bit_rate_scale\000"
.LC179:
	.ascii	"VUI: cpb_size_scale\000"
.LC180:
	.ascii	"hrd->cpb_cnt_minus1 out of range\012\000"
	.space	2
.LC181:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC182:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC183:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC184:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC185:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC186:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC187:
	.ascii	"VUI: time_offset_length\000"
.LC188:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC189:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC190:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC191:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC192:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC193:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC194:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC195:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC196:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC197:
	.ascii	"VUI: num_reorder_frames\000"
.LC198:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC199:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC200:
	.ascii	"pSPS->chroma_format_idc out of range.\012\000"
	.space	1
.LC201:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC202:
	.ascii	"bit_depth_luma_minus8 not equal 0.\012\000"
.LC203:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC204:
	.ascii	"bit_depth_chroma_minus8 not equal 0.\012\000"
	.space	2
.LC205:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC206:
	.ascii	"qpprime_y_zero_trans_bypass_flag not equal 0.\012\000"
	.space	1
.LC207:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC208:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC209:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC210:
	.ascii	"pSPS->log2_max_frame_num_minus4 out of range.\012\000"
	.space	1
.LC211:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC212:
	.ascii	"pSPS->pic_order_cnt_type out of range.\012\000"
.LC213:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC214:
	.ascii	"pSPS->log2_max_pic_order_cnt_lsb_minus4 out of rang"
	.ascii	"e.\012\000"
	.space	1
.LC215:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC216:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC217:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC218:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC219:
	.ascii	"pSPS->num_ref_frames_in_pic_order_cnt_cycle out of "
	.ascii	"range.\012\000"
	.space	1
.LC220:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC221:
	.ascii	"SPS: num_ref_frames\000"
.LC222:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC223:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC224:
	.ascii	"pSPS->pic_width_in_mbs_minus1 out of range(=%d).\012"
	.ascii	"\000"
	.space	2
.LC225:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC226:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC227:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC228:
	.ascii	"pSPS->pic_height_in_map_units_minus1 out of range.\012"
	.ascii	"\000"
.LC229:
	.ascii	"pic size too large.\012\000"
	.space	3
.LC230:
	.ascii	"level_idc %d not support.\012\000"
	.space	1
.LC231:
	.ascii	"dpb size according level : %d\012\000"
	.space	1
.LC232:
	.ascii	"pSPS->num_ref_frames(%d) > DPB size(%d), try to sel"
	.ascii	"ect the reasonable one.\012\000"
.LC233:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC234:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC235:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC236:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC237:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC238:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC239:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC240:
	.ascii	"max_dec_frame_buffering(%d) > MaxDpbSize(%d)\012\000"
	.space	2
.LC241:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC242:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC243:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC244:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC245:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC246:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC247:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC248:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC249:
	.ascii	"seq_parameter_set_id out of range.\012\000"
.LC250:
	.ascii	"Baseline stream, try to decode, exit when FMO occur"
	.ascii	"red.\012\000"
	.space	3
.LC251:
	.ascii	"EXTENDED stream, try to decode, exit when dataparti"
	.ascii	"tion occurred.\012\000"
	.space	1
.LC252:
	.ascii	"others High profile stream, try to decode, exit whe"
	.ascii	"n high profile not support occurred.\012\000"
	.space	3
.LC253:
	.ascii	"profile_idc = %5d error, try to decode as main prof"
	.ascii	"ile.\012\000"
	.space	3
.LC254:
	.ascii	"level_idc = %5d error, try to decode as level_idc %"
	.ascii	"d.\012\000"
	.space	1
.LC255:
	.ascii	"Line %d: SPS[%d] decode error.\012\000"
.LC256:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC257:
	.ascii	"PPS: pic_order_present_flag\000"
.LC258:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC259:
	.ascii	"Baseline stream with FMO, not support.\012\000"
.LC260:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC261:
	.ascii	"num_ref_idx_l0_active_minus1 out of range.\012\000"
.LC262:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC263:
	.ascii	"num_ref_idx_l1_active_minus1 out of range.\012\000"
.LC264:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC265:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC266:
	.ascii	"weighted_bipred_idc out of range\012\000"
	.space	2
.LC267:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC268:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC269:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC270:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC271:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC272:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC273:
	.ascii	"redundant pic not support when find redundant slice"
	.ascii	" later, exit\012\000"
	.space	3
.LC274:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC275:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC276:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC277:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC278:
	.ascii	"second_chroma_qp_index_offset out of range.\012\000"
	.space	3
.LC279:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC280:
	.ascii	"pic_parameter_set_id out of range.\012\000"
.LC281:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC282:
	.ascii	"SPS haven't decode.\012\000"
	.space	3
.LC283:
	.ascii	"PPS decode error.\012\000"
	.space	1
.LC284:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC285:
	.ascii	"pps id:%d in sliceheader err\012\000"
	.space	2
.LC286:
	.ascii	"PPS or SPS of this slice not valid\012\000"
.LC287:
	.ascii	"recover point but isn't I_SLICE.\012\000"
	.space	2
.LC288:
	.ascii	"SH: frame_num\000"
	.space	2
.LC289:
	.ascii	"IDR NAL but frame_num!=0.\012\000"
	.space	1
.LC290:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC291:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC292:
	.ascii	"field first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC293:
	.ascii	"frame first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC294:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC295:
	.ascii	"idr_pic_id bigger than 65535\012\000"
	.space	2
.LC296:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC297:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC298:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC299:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC300:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC301:
	.ascii	"redundant pic not support.\012\000"
.LC302:
	.ascii	"first_mb_in_slice in currslice small than prevslice"
	.ascii	" in same pic\012\000"
	.space	3
.LC303:
	.ascii	"overflow MAX_MMCO_LEN\012\000"
	.space	1
.LC304:
	.ascii	"SH: memory_management_control_operation\000"
.LC305:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC306:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC307:
	.ascii	"SH: long_term_frame_idx\000"
.LC308:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC309:
	.ascii	"mmco exceed 6\012\000"
	.space	1
.LC310:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC311:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC312:
	.ascii	"IDR and no_output_of_prior_pics_flag = %d\012\000"
	.space	1
.LC313:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC314:
	.ascii	"adaptive_ref_pic_marking_mode_flag = %d\012\000"
	.space	3
.LC315:
	.ascii	"MMCO para would save dec err\012\000"
	.space	2
.LC316:
	.ascii	"mulitislice diff no_out_of_prior_pics_flag, used fi"
	.ascii	"rst.\012\000"
	.space	3
.LC317:
	.ascii	"mulitislice diff long_term_reference_flag, used fir"
	.ascii	"st.\012\000"
.LC318:
	.ascii	"mulitislice diff adaptive_ref_pic_marking_mode_flag"
	.ascii	", used first.\012\000"
	.space	2
.LC319:
	.ascii	"TotalPicNum=%d, SliceNumInPic=%d, TotalNal=%d\012\000"
	.space	1
.LC320:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC321:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC322:
	.ascii	"WP log2 exceed  and err flag = %d\012\000"
	.space	1
.LC323:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC324:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC325:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC326:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC327:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC328:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC329:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC330:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC331:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC332:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC333:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC334:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC335:
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC336:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC337:
	.ascii	"reorder idc l0 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC338:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC339:
	.ascii	"abs_diff_pic_num_minus1_l0 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC340:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC341:
	.ascii	"num of idc l0 exceed\012\000"
	.space	2
.LC342:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC343:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC344:
	.ascii	"reorder idc l1 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC345:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC346:
	.ascii	"abs_diff_pic_num_minus1_l1 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC347:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC348:
	.ascii	"num of idc l1 exceed\012\000"
	.space	2
.LC349:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC350:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC351:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC352:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC353:
	.ascii	"frame num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC354:
	.ascii	"field num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC355:
	.ascii	"reordering para dec err\012\000"
	.space	3
.LC356:
	.ascii	"apply_weights_flag=%d\012\000"
	.space	1
.LC357:
	.ascii	"wpt dec err\012\000"
	.space	3
.LC358:
	.ascii	"mark para dec err\012\000"
	.space	1
.LC359:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC360:
	.ascii	"cabac_init_idc bigger than 3\012\000"
	.space	2
.LC361:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC362:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC363:
	.ascii	"disable_deblocking_filter_idc dec err\012\000"
	.space	1
.LC364:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC365:
	.ascii	"slice_alpha_c0_offset_div2 dec err\012\000"
.LC366:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC367:
	.ascii	"slice_beta_offset_div2 dec err\012\000"
.LC368:
	.ascii	"\012Slice nal or IDR nal = %d\012\000"
.LC369:
	.ascii	"sliceheader dec err\012\000"
	.space	3
.LC370:
	.ascii	"Start Reason: SliceParaNum, MaxBytesReceived = %d, "
	.ascii	"%d(thr=%d)\012\000"
	.space	1
.LC371:
	.ascii	"Too many slice or bitstream, err!\012\000"
	.space	1
.LC372:
	.ascii	"Start Reason: new_pic_flag\012\000"
.LC373:
	.ascii	"init pic err, find next recover point or next valid"
	.ascii	" sps, pps, or exit\012\000"
	.space	1
.LC374:
	.ascii	"DecList error, ret=%d\012\000"
	.space	1
.LC375:
	.ascii	"dec list err.\012\000"
	.space	1
.LC376:
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC377:
	.ascii	"slicecheck first_mb_in_slice >= MAX_MB_NUM_IN_PIC e"
	.ascii	"rror.\012\000"
	.space	2
.LC378:
	.ascii	"SH: slice_type\000"
	.space	1
.LC379:
	.ascii	"slice type = %d\012\000"
	.space	3
.LC380:
	.ascii	"slice type = %d, err\012\000"
	.space	2
.LC381:
	.ascii	"pH264Ctx->TotalNal = %d, type:%d\012\000"
	.space	2
.LC382:
	.ascii	"stop i want\012\000"
	.space	3
.LC383:
	.ascii	"***** NAL: IDR/Slice, nal_unit_type=%d, TotalSlice="
	.ascii	"%d\012\000"
	.space	1
.LC384:
	.ascii	"***** NAL: PPS, nal_unit_type=%d, TotalPPS=%d\012\000"
	.space	1
.LC385:
	.ascii	"***** NAL: SPS, nal_unit_type=%d, TotalSPS=%d\012\000"
	.space	1
.LC386:
	.ascii	"SPS decode error.\012\000"
	.space	1
.LC387:
	.ascii	"***** NAL: SEI, nal_unit_type=%d\012\000"
	.space	2
.LC388:
	.ascii	"SEI decode error.\012\000"
	.space	1
.LC389:
	.ascii	"***** NAL: AUD, nal_unit_type=%d\012\000"
	.space	2
.LC390:
	.ascii	"***** NAL: EOSEQ, nal_unit_type=%d\012\000"
.LC391:
	.ascii	"***** NAL: FILL, nal_unit_type=%d\012\000"
	.space	1
.LC392:
	.ascii	"***** NAL: EOSTREAM, nal_unit_type=%d\012\000"
	.space	1
.LC393:
	.ascii	"***** NAL: SPSEXT, nal_unit_type=%d\012\000"
	.space	3
.LC394:
	.ascii	"***** NAL: AUX, nal_unit_type=%d\012\000"
	.space	2
.LC395:
	.ascii	"***** NAL: EOPIC, nal_unit_type=%d\012\000"
.LC396:
	.ascii	"***** NAL: UNSUPPORT, nal_unit_type=%d,nalu header:"
	.ascii	"%x\012\000"
	.space	1
.LC397:
	.ascii	"H264_DecOneNal ERR\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.type	sps_tmp.42323, %object
	.size	sps_tmp.42323, 3992
sps_tmp.42323:
	.space	3992
	.type	pps_tmp.41258, %object
	.size	pps_tmp.41258, 2208
pps_tmp.41258:
	.space	2208
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
