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
	.file	"btl_drv.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(btl_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/.btl_drv.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/btl_drv.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/btl_drv.o -O2 -Wall
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
	.global	BTL_Fsp_ShowPic
	.type	BTL_Fsp_ShowPic, %function
BTL_Fsp_ShowPic:
	.fnstart
.LFB1355:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp193,
	movt	r3, #:upper16:.LANCHOR0	@ tmp193,
	movw	r2, #18120	@ tmp173,
	mla	r2, r2, r0, r3	@ tmp174, tmp173, ChanID, tmp193
	ldr	r6, [r2, #504]	@ D.36127, <variable>.s32ValidImgNum
	cmp	r6, #0	@ D.36127,
	ble	.L2	@,
	ldr	ip, [r2, #600]	@ <variable>.LogicInfoIsUsed, <variable>.LogicInfoIsUsed
	cmp	ip, #1	@ <variable>.LogicInfoIsUsed,
	movls	ip, #0	@ i,
	bls	.L4	@,
	tst	r6, #1	@ D.36127,
	mov	ip, #0	@ i,
	bne	.L5	@,
	ldr	r4, [r2, #604]	@ D.36124, <variable>.LogicInfoIsUsed
	mov	ip, #1	@ i,
	add	r2, r2, #4	@ ivtmp.555, ivtmp.555,
	cmp	r4, ip	@ D.36124,
	bhi	.L5	@,
.L4:
	movw	r2, #4530	@ tmp185,
	str	ip, [r1, #0]	@ i,* pPicBufID
	mla	r1, r2, r0, ip	@ tmp186, tmp185, ChanID, i
	mov	r0, #0	@ D.36130,
	add	ip, r1, #150	@ tmp187, tmp186,
	mov	r1, #1	@ tmp188,
	str	r1, [r3, ip, asl #2]	@ tmp188, <variable>.LogicInfoIsUsed
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L7:
	ldr	r5, [r2, #604]	@ D.36124, <variable>.LogicInfoIsUsed
	add	r2, r4, #4	@ ivtmp.555, tmp198,
	cmp	r5, #1	@ D.36124,
	bls	.L4	@,
	ldr	r4, [r4, #604]	@ D.36124, <variable>.LogicInfoIsUsed
	add	ip, ip, #1	@ i, i,
	cmp	r4, #1	@ D.36124,
	bls	.L4	@,
.L5:
	add	ip, ip, #1	@ i, i,
	add	r4, r2, #4	@ tmp198, ivtmp.555,
	cmp	ip, r6	@ i, D.36127
	blt	.L7	@,
.L2:
	mvn	r0, #0	@ D.36130,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	BTL_Fsp_ShowPic, .-BTL_Fsp_ShowPic
	.align	2
	.global	BTL_Fsp_ReleasePic
	.type	BTL_Fsp_ReleasePic, %function
BTL_Fsp_ReleasePic:
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
	movw	ip, #4530	@ tmp138,
	mla	r2, ip, r0, r1	@ tmp139, tmp138, ChanID, PicBufID
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	ip, #0	@ tmp141,
	mov	r0, ip	@, tmp141
	add	r2, r2, #150	@ tmp140, tmp139,
	str	ip, [r3, r2, asl #2]	@ tmp141, <variable>.LogicInfoIsUsed
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_Fsp_ReleasePic, .-BTL_Fsp_ReleasePic
	.align	2
	.global	BTL_CloseChan
	.type	BTL_CloseChan, %function
BTL_CloseChan:
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
	cmp	r0, #1	@ ChanID,
	mvnhi	r0, #0	@ D.37293,
	ldmhifd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #18120	@ tmp139,
	mov	r3, #0	@ tmp142,
	mla	r2, r1, r0, ip	@ tmp140, tmp139, ChanID, tmp136
	mov	r0, r3	@ D.37293, tmp142
	add	r1, r2, #16	@ tmp148, tmp140,
	str	r3, [r2, #24]	@ tmp142, <variable>.InstMode
	str	r3, [r1, #4]	@ tmp142, <variable>.s32IsOpen
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_CloseChan, .-BTL_CloseChan
	.align	2
	.global	BTL_Fsp_Reset
	.type	BTL_Fsp_Reset, %function
BTL_Fsp_Reset:
	.fnstart
.LFB1352:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r2, #18120	@ tmp137,
	mov	r1, #80	@,
	mla	r0, r2, r0, r3	@ tmp139, tmp137, ChanID, tmp135
	add	r0, r0, #600	@, tmp139,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_Fsp_Reset, .-BTL_Fsp_Reset
	.align	2
	.global	BTL_Fsp_Init
	.type	BTL_Fsp_Init, %function
BTL_Fsp_Init:
	.fnstart
.LFB1354:
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
	bl	BTL_Fsp_Reset	@
	mov	r0, #1	@,
	bl	BTL_Fsp_Reset	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_Fsp_Init, .-BTL_Fsp_Init
	.align	2
	.global	BTL_DelImageProc
	.type	BTL_DelImageProc, %function
BTL_DelImageProc:
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
	subs	r3, r0, #0	@ pImageQueue, pImageQueue
	beq	.L36	@,
	cmp	r1, #19	@ ImageID,
	bhi	.L31	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp156,
	movt	r2, #:upper16:.LANCHOR0	@ tmp156,
	add	r0, r2, #764	@ tmp141, tmp156,
	cmp	r3, r0	@ pImageQueue, tmp141
	beq	.L32	@,
	add	ip, r2, #18688	@ tmp143, tmp156,
	add	r0, ip, #196	@ tmp143, tmp143,
	cmp	r3, r0	@ pImageQueue, tmp143
	moveq	r0, #1	@ ChanID,
	beq	.L34	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1294	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37004,
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	mov	r0, #0	@ ChanID,
.L34:
	movw	ip, #4530	@ tmp149,
	mov	r3, #0	@ tmp152,
	mla	r1, ip, r0, r1	@ tmp150, tmp149, ChanID, ImageID
	mov	r0, r3	@ D.37004, tmp152
	add	r1, r1, #150	@ tmp151, tmp150,
	str	r3, [r2, r1, asl #2]	@ tmp152, <variable>.LogicInfoIsUsed
	ldmfd	sp, {fp, sp, pc}	@
.L31:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1274	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37004,
	ldmfd	sp, {fp, sp, pc}	@
.L36:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1273	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37004,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_DelImageProc, .-BTL_DelImageProc
	.align	2
	.global	BTL_ClearTempImage
	.type	BTL_ClearTempImage, %function
BTL_ClearTempImage:
	.fnstart
.LFB1370:
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
	movw	r2, #18120	@ tmp147,
	mul	r2, r2, r0	@ tmp146, tmp147, InstId
	movw	r8, #:lower16:.LANCHOR0	@ tmp183,
	movt	r8, #:upper16:.LANCHOR0	@ tmp183,
	movw	r4, #9624	@ tmp145,
	str	r0, [fp, #-48]	@ InstId, %sfp
	add	r5, r2, r8	@ tmp148, tmp146, tmp183
	ldr	r3, [r5, r4]	@ D.36920, <variable>.TempImageNum
	cmp	r3, #0	@ D.36920,
	ble	.L51	@,
	mov	ip, #424	@ tmp161,
	ldr	r6, [fp, #-48]	@, %sfp
	mla	r0, ip, r3, r2	@ tmp164, tmp161, D.36920, tmp146
	movw	sl, #4530	@ tmp186,
	mul	sl, sl, r6	@ tmp187, tmp186,
	sub	r9, r3, #1	@ i, D.36920,
	add	r1, r0, #9600	@ tmp165, tmp164,
	sub	r6, r9, #1	@ i, i,
	add	r5, r1, #32	@ tmp165, tmp165,
	mov	r0, #22	@,
	add	ip, r8, r5	@ ivtmp.704, tmp183, tmp165
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1123	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r4, [ip, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	and	r7, r9, #1	@, i,
	mov	r5, #0	@ tmp188,
	str	r7, [fp, #-52]	@, %sfp
	add	r3, sl, r4	@ tmp170, tmp187, <variable>.BTLInfo.btl_imageid
	str	ip, [fp, #-56]	@,
	add	lr, r3, #150	@ tmp172, tmp170,
	sub	r4, ip, #424	@ ivtmp.704, ivtmp.704,
	mov	r7, r8	@ tmp167, tmp183
	mov	r9, r5	@ tmp173, tmp188
	str	r5, [r8, lr, asl #2]	@ tmp188, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	cmn	r6, #1	@ i,
	ldr	ip, [fp, #-56]	@,
	beq	.L48	@,
	ldr	r0, [fp, #-52]	@, %sfp
	cmp	r0, #0	@,
	beq	.L40	@,
	ldr	lr, [r4, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	sub	r6, r6, #1	@ i, i,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	add	r4, sl, lr	@ tmp217, tmp187, <variable>.BTLInfo.btl_imageid
	movt	r1, #:upper16:.LC5	@,
	add	r9, r4, #150	@ tmp218, tmp217,
	movw	r2, #1123	@,
	sub	r4, ip, #848	@ ivtmp.704, ivtmp.704,
	mov	r7, r8	@ tmp167, tmp183
	str	r5, [r8, r9, asl #2]	@ tmp188, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	cmn	r6, #1	@ i,
	mov	r9, r5	@ tmp173, tmp188
	beq	.L48	@,
.L40:
	ldr	r3, [r4, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	movw	r2, #1123	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	add	ip, sl, r3	@ tmp202, tmp187, <variable>.BTLInfo.btl_imageid
	movt	r1, #:upper16:.LC5	@,
	add	lr, ip, #150	@ tmp203, tmp202,
	sub	r7, r6, #1	@ tmp195, i,
	sub	r6, r7, #1	@ i, tmp195,
	movw	r7, #:lower16:.LANCHOR0	@ tmp167,
	str	r5, [r8, lr, asl #2]	@ tmp188, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-500]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	r9, sl, r2	@ tmp211, tmp187, <variable>.BTLInfo.btl_imageid
	movw	r2, #1123	@,
	add	r3, r9, #150	@ tmp212, tmp211,
	movt	r7, #:upper16:.LANCHOR0	@ tmp167,
	sub	r4, r4, #848	@ ivtmp.704, ivtmp.704,
	mov	r9, r5	@ tmp173, tmp188
	str	r5, [r8, r3, asl #2]	@ tmp188, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	cmn	r6, #1	@ i,
	bne	.L40	@,
.L48:
	ldr	r2, [fp, #-48]	@, %sfp
	movw	ip, #18120	@ tmp178,
	movw	r1, #9624	@ tmp176,
	mov	r0, r9	@ D.36924, tmp173
	mla	r7, ip, r2, r7	@ tmp179, tmp178,, tmp167
	str	r9, [r7, r1]	@ tmp173, <variable>.TempImageNum
.L39:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L51:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #1113	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp158,
	mvn	r0, #0	@ D.36924,
	str	r3, [r5, r4]	@ tmp158, <variable>.TempImageNum
	b	.L39	@
	.fnend
	.size	BTL_ClearTempImage, .-BTL_ClearTempImage
	.align	2
	.global	BTL_StartChan
	.type	BTL_StartChan, %function
BTL_StartChan:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L57	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	movw	r2, #18120	@ tmp141,
	mla	r3, r2, r0, r3	@ tmp142, tmp141, ChanID, tmp138
	ldr	r2, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L58	@,
	mov	r0, #0	@ D.36853,
	str	r2, [r3, #24]	@ <variable>.s32IsOpen, <variable>.InstMode
	ldmfd	sp, {fp, sp, pc}	@
.L57:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1032	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36853,
	ldmfd	sp, {fp, sp, pc}	@
.L58:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1033	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36853,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_StartChan, .-BTL_StartChan
	.align	2
	.global	BTL_ConfigFFFBSpeed
	.type	BTL_ConfigFFFBSpeed, %function
BTL_ConfigFFFBSpeed:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L65	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	movw	ip, #18120	@ tmp142,
	mla	r3, ip, r0, r3	@ tmp143, tmp142, ChanID, tmp139
	ldr	r2, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L66	@,
	cmp	r1, #0	@ pArgs,
	beq	.L67	@,
	ldr	r1, [r1, #0]	@ tmp156,* pArgs
	movw	r2, #18112	@ tmp151,
	mov	r0, #0	@ D.36838,
	str	r1, [r3, r2]	@ tmp156, <variable>.s32FastForwardBackwardSpeed
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1021	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36838,
	ldmfd	sp, {fp, sp, pc}	@
.L66:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1022	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36838,
	ldmfd	sp, {fp, sp, pc}	@
.L67:
	mov	r0, r1	@, pArgs
	movw	r2, #1023	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36838,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTL_ConfigFFFBSpeed, .-BTL_ConfigFFFBSpeed
	.align	2
	.global	BTL_SetDataSource
	.type	BTL_SetDataSource, %function
BTL_SetDataSource:
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
	cmp	r0, #1	@ ChanID,
	mov	r3, r0	@ ChanID, ChanID
	bhi	.L72	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	movw	r4, #18120	@ tmp143,
	mov	r0, #0	@ D.36758,
	mla	r3, r4, r3, ip	@ tmp144, tmp143, ChanID, tmp140
	add	ip, r2, #424	@ tmp152, capture_image,
	str	r1, [r3, #52]	@ BTLDataSourceFlag, <variable>.BTLCaptureEnableFlag
	str	ip, [r3, #484]	@ tmp152, <variable>.pCaptureImageOut
	str	r2, [r3, #480]	@ capture_image, <variable>.pCaptureImageIn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L72:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #939	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36758,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BTL_SetDataSource, .-BTL_SetDataSource
	.align	2
	.global	BTL_ConfigChan
	.type	BTL_ConfigChan, %function
BTL_ConfigChan:
	.fnstart
.LFB1357:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L79	@,
	movw	ip, #18120	@ tmp142,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	mul	ip, ip, r0	@ tmp141, tmp142, ChanID
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	add	r2, ip, r3	@ tmp143, tmp141, tmp139
	ldr	r4, [r2, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r4, #1	@ <variable>.s32IsOpen,
	bne	.L80	@,
	cmp	r1, #0	@ pArgs,
	beq	.L81	@,
	ldr	r4, [r1, #0]	@ <variable>.u32DNROpen, <variable>.u32DNROpen
	movw	r5, #2265	@ tmp162,
	mul	r5, r5, r0	@ tmp161, tmp162, ChanID
	mov	r0, #0	@ D.36146,
	str	r4, [ip, r3]	@ <variable>.u32DNROpen, <variable>.u32DNROpen
	ldr	r4, [r1, #4]	@ <variable>.u32Is1D, <variable>.u32Is1D
	add	ip, r5, #1	@ tmp163, tmp161,
	str	r4, [r2, #4]	@ <variable>.u32Is1D, <variable>.u32Is1D
	add	r2, r3, ip, asl #3	@, tmp171, tmp139, tmp163,
	ldr	r4, [r1, #8]	@ <variable>.u32IsCompress, <variable>.u32IsCompress
	str	r4, [r3, ip, asl #3]	@ <variable>.u32IsCompress, <variable>.u32IsCompress
	ldr	r3, [r1, #12]	@ <variable>.u32Reversed, <variable>.u32Reversed
	str	r3, [r2, #4]	@ <variable>.u32Reversed, <variable>.u32Reversed
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L79:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #180	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36146,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L80:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #181	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36146,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L81:
	mov	r0, r1	@, pArgs
	mov	r2, #182	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36146,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BTL_ConfigChan, .-BTL_ConfigChan
	.align	2
	.global	BTL_ReleaseImage
	.type	BTL_ReleaseImage, %function
BTL_ReleaseImage:
	.fnstart
.LFB1377:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ p_image, p_image
	mov	r0, #0	@ tmp147,
	str	r0, [fp, #-48]	@ tmp147, TopPhyAddr
	str	r0, [fp, #-52]	@ tmp147, BtmPhyAddr
	bhi	.L100	@,
	cmp	r1, #0	@ p_image,
	beq	.L101	@,
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp255,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	movt	r5, #:upper16:.LANCHOR0	@ tmp255,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #18120	@ tmp157,
	mla	r3, r0, r4, r5	@ tmp158, tmp157, ChanID, tmp255
	ldr	r7, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r7, #0	@ <variable>.s32IsOpen,
	beq	.L102	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetVidStd	@
	sub	r1, r0, #10	@ tmp163, eVidStd,
	cmp	r1, #2	@ tmp163,
	bhi	.L87	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp164,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp164,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L87	@,
.L88:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, p_image
	bl	VCTRL_ReleaseChanImage	@
	subs	r4, r0, #0	@ D.37238,
	bne	.L90	@,
.L98:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
.L84:
	mov	r0, r4	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L87:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r2, #0	@, tmp173
	moveq	r2, #1	@, tmp173
	beq	.L88	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L88	@,
	ldr	r7, [r6, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	cmp	r7, #1	@ <variable>.BTLInfo.u32Is1D,
	beq	.L103	@,
.L91:
	movw	r3, #18120	@ tmp179,
	ldr	lr, [r6, #348]	@, <variable>.BTLInfo.btl_imageid
	mla	sl, r3, r4, r5	@ tmp181, tmp179, ChanID, tmp255
	sub	r9, fp, #48	@ tmp259,,
	ldr	r1, [r6, #156]	@, <variable>.image_id
	sub	r3, fp, #52	@,,
	mov	r2, r9	@, tmp259
	str	lr, [fp, #-56]	@, %sfp
	add	sl, sl, #764	@ D.37246, tmp181,
	mov	r0, sl	@, D.37246
	bl	IMGQUE_DeleteImage	@
	ldr	r8, [r6, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	cmp	r8, #1	@ <variable>.BTLInfo.u32Is1D,
	mov	r7, r0	@ ret.830,
	beq	.L104	@,
.L92:
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L105	@,
.L93:
	cmp	r7, #1	@ ret.830,
	beq	.L94	@,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r2, #1647	@,
	ldr	r3, [r6, #156]	@, <variable>.image_id
	bl	dprint_vfmw	@
.L94:
	movw	r7, #4530	@ tmp212,
	movw	r8, #:lower16:g_SupportMVC	@ tmp216,
	mul	r7, r7, r4	@ tmp211, tmp212, ChanID
	movt	r8, #:upper16:g_SupportMVC	@ tmp216,
	ldr	r0, [fp, #-56]	@, %sfp
	movw	r2, #:lower16:.LANCHOR0	@ tmp210,
	ldr	r1, [r8, #0]	@ g_SupportMVC, g_SupportMVC
	movt	r2, #:upper16:.LANCHOR0	@ tmp210,
	add	r3, r7, r0	@ tmp213, tmp211,
	mov	r8, #0	@ tmp215,
	add	ip, r3, #150	@ tmp214, tmp213,
	cmp	r1, #1	@ g_SupportMVC,
	str	r8, [r5, ip, asl #2]	@ tmp215, <variable>.LogicInfoIsUsed
	beq	.L106	@,
.L95:
	mov	r4, #0	@ ret,
	b	.L98	@
.L105:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp188,
	movt	r3, #:upper16:.LANCHOR1	@ tmp188,
	movw	r8, #:lower16:g_TraceImgPeriod	@ tmp195,
	add	r3, r3, r4, asl #2	@, tmp191, tmp188, ChanID,
	movt	r8, #:upper16:g_TraceImgPeriod	@ tmp195,
	ldr	r1, [r3, #3504]	@ tmp194, last_rec_pos_time
	ldr	r2, [r8, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	mov	ip, r0	@ currtime,
	rsb	r0, r1, r0	@ tmp193, tmp194, currtime
	cmp	r0, r2	@ tmp193, g_TraceImgPeriod
	bls	.L93	@,
	mov	lr, r4, asl #24	@ tmp203, ChanID,
	movw	r0, #:lower16:.LANCHOR2	@,
	add	r2, lr, #851968	@ tmp204, tmp203,
	movt	r0, #:upper16:.LANCHOR2	@,
	cmp	r7, #1	@ ret.830,
	addeq	r2, r2, #1	@,,, tmp204
	movw	r1, #1636	@,
	str	ip, [r3, #3504]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L93	@
.L106:
	movw	ip, #18120	@ tmp221,
	mla	r4, ip, r4, r2	@ tmp222, tmp221, ChanID, tmp210
	ldr	lr, [r4, #760]	@ <variable>.IsMvc, <variable>.IsMvc
	cmp	lr, #1	@ <variable>.IsMvc,
	bne	.L95	@,
	ldr	lr, [r6, #156]	@ <variable>.image_id, <variable>.image_id
	movw	r4, #:lower16:1374389535	@ tmp229,
	movt	r4, #:upper16:1374389535	@ tmp229,
	mov	ip, #100	@ tmp231,
	umull	r0, r3, r4, lr	@, tmp228, tmp229, <variable>.image_id
	mov	r1, r3, lsr #5	@ tmp226, tmp228,
	mls	r0, ip, r1, lr	@ tmp232, tmp231, tmp226, <variable>.image_id
	add	r6, r7, r0	@ tmp235, tmp211, tmp232
	add	r3, r6, #170	@ tmp236, tmp235,
	ldr	r6, [r2, r3, asl #2]	@ D.37280, <variable>.View1ImageId
	cmn	r6, #1	@ D.37280,
	beq	.L95	@,
	sub	r3, fp, #52	@,,
	mov	r2, r9	@, tmp259
	mov	r1, r6	@, D.37280
	mov	r0, sl	@, D.37246
	str	ip, [fp, #-60]	@,
	bl	IMGQUE_DeleteImage	@
	smull	r3, r4, r4, r6	@, tmp241, tmp229, D.37280
	mov	r2, r6, asr #31	@ tmp244, D.37280,
	ldr	ip, [fp, #-60]	@,
	rsb	r3, r2, r4, asr #5	@, tmp240, tmp244, tmp241,
	mls	r1, ip, r3, r6	@ tmp247, tmp231, tmp240, D.37280
	add	r4, r7, r1	@ tmp250, tmp211, tmp247
	add	r2, r4, #150	@ tmp251, tmp250,
	str	r8, [r5, r2, asl #2]	@ tmp215, <variable>.LogicInfoIsUsed
	cmp	r0, #1	@,
	moveq	r4, r8	@, ret,
	mvnne	r4, #0	@, ret,
	b	.L98	@
.L100:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1580	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L84	@
.L102:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r2, r4	@, ChanID
	mov	r0, r7	@, <variable>.s32IsOpen
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L84	@
.L104:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, p_image
	bl	VCTRL_ReleaseChanImage	@
	cmp	r0, #0	@,
	beq	.L92	@,
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #1625	@,
	movt	r1, #:upper16:.LC12	@,
	ldr	r3, [r6, #156]	@, <variable>.image_id
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L92	@
.L103:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, p_image
	bl	FSP_ProcFspQue	@
	b	.L91	@
.L90:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ ret,
	b	.L84	@
.L101:
	mov	r0, r1	@, p_image
	movw	r2, #1581	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L84	@
	.fnend
	.size	BTL_ReleaseImage, .-BTL_ReleaseImage
	.align	2
	.global	BTL_DiscardImage
	.type	BTL_DiscardImage, %function
BTL_DiscardImage:
	.fnstart
.LFB1375:
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
	mov	r4, r1	@ p_image, p_image
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #0	@ tmp143,
	str	r1, [fp, #-44]	@ tmp143, BtmPhyAddr
	str	r1, [fp, #-40]	@ tmp143, TopPhyAddr
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ tmp145, eVidStd,
	cmp	r3, #2	@ tmp145,
	bhi	.L108	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp146,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp146,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L108	@,
.L109:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_ReleaseChanImage	@
	cmp	r0, #0	@ D.37044
	mvnne	r0, #0	@, ret,
.L112:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L108:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L109	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L109	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp194,
	movt	r6, #:upper16:.LANCHOR0	@ tmp194,
	movw	r7, #18120	@ tmp158,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	mla	r8, r7, r5, r6	@ tmp160, tmp158, ChanID, tmp194
	sub	r2, fp, #40	@,,
	sub	r3, fp, #44	@,,
	ldr	r7, [r4, #348]	@ BTL_ImageId, <variable>.BTLInfo.btl_imageid
	add	r0, r8, #764	@, tmp160,
	bl	IMGQUE_DeleteImage	@
	mov	r8, r0	@ ret.862,
	ldr	r0, [r4, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	cmp	r0, #1	@ <variable>.BTLInfo.u32Is1D,
	beq	.L116	@,
.L113:
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L117	@,
.L114:
	movw	r2, #4530	@ tmp189,
	mov	ip, #0	@ tmp192,
	mla	r5, r2, r5, r7	@ tmp190, tmp189, ChanID, BTL_ImageId
	mov	r0, ip	@ ret, tmp192
	add	r5, r5, #150	@ tmp191, tmp190,
	str	ip, [r6, r5, asl #2]	@ tmp192, <variable>.LogicInfoIsUsed
	b	.L112	@
.L117:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp166,
	movt	r3, #:upper16:.LANCHOR1	@ tmp166,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp173,
	add	r3, r3, r5, asl #2	@, tmp169, tmp166, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp173,
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	mov	ip, r0	@ currtime,
	ldr	r0, [r3, #3512]	@ tmp172, last_rec_pos_time
	rsb	r1, r0, ip	@ tmp171, tmp172, currtime
	cmp	r1, r2	@ tmp171, g_TraceImgPeriod
	bls	.L114	@,
	mov	lr, r5, asl #24	@ tmp182, ChanID,
	ldr	r0, .L118	@,
	add	r2, lr, #851968	@ tmp183, tmp182,
	movw	r1, #1345	@,
	cmp	r8, #1	@ ret.862,
	addeq	r2, r2, #1	@,,, tmp183
	str	ip, [r3, #3512]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L114	@
.L116:
	mov	r1, r4	@, p_image
	mov	r0, r5	@, ChanID
	bl	VCTRL_ReleaseChanImage	@
	b	.L113	@
.L119:
	.align	2
.L118:
	.word	.LANCHOR2+20
	.fnend
	.size	BTL_DiscardImage, .-BTL_DiscardImage
	.align	2
	.global	BTL_ReceiveImage
	.type	BTL_ReceiveImage, %function
BTL_ReceiveImage:
	.fnstart
.LFB1376:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #444
	sub	sp, sp, #444	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ ChanID,
	mov	r7, r0	@ ChanID, ChanID
	mov	r4, r1	@ p_image, p_image
	mov	r0, #0	@ tmp150,
	str	r0, [fp, #-48]	@ tmp150, TopPhyAddr
	str	r0, [fp, #-52]	@ tmp150, BtmPhyAddr
	bhi	.L142	@,
	cmp	r1, #0	@ p_image,
	beq	.L143	@,
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp311,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	movt	r8, #:upper16:.LANCHOR0	@ tmp311,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #18120	@ tmp160,
	mla	r3, r0, r7, r8	@ tmp161, tmp160, ChanID, tmp311
	ldr	r5, [r3, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r5, #0	@ <variable>.s32IsOpen,
	beq	.L144	@,
	mov	r0, r7	@, ChanID
	bl	VCTRL_GetVidStd	@
	sub	r1, r0, #10	@ tmp166, eVidStd,
	mov	r5, r0	@ eVidStd,
	cmp	r1, #2	@ tmp166,
	bhi	.L125	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp167,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp167,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L125	@,
.L126:
	mov	r0, r7	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.37114
	bne	.L132	@,
	cmp	r5, #18	@ eVidStd,
	str	r0, [r4, #384]	@ D.37114, <variable>.BTLInfo.u32DNROpen
	str	r0, [r4, #344]	@ D.37114, <variable>.BTLInfo.u32Is1D
	str	r0, [r4, #352]	@ D.37114, <variable>.BTLInfo.u32IsCompress
	beq	.L129	@,
	ldr	ip, [r4, #120]	@ <variable>.format, <variable>.format
	ldr	r5, [r4, #152]	@ D.37119, <variable>.image_stride
	ldr	r3, [r4, #100]	@ D.37121, <variable>.luma_2d_phy_addr
	tst	ip, #28	@ <variable>.format,
	ldr	lr, [r4, #104]	@ D.37123, <variable>.chrom_2d_phy_addr
	add	r2, r5, r3	@ tmp181, D.37119, D.37121
	str	r5, [r4, #372]	@ D.37119, <variable>.BTLInfo.u32CrStride
	add	r1, r5, lr	@ tmp183, D.37119, D.37123
	str	r5, [r4, #376]	@ D.37119, <variable>.BTLInfo.u32CStride
	str	r2, [r4, #76]	@ tmp181, <variable>.btm_luma_phy_addr
	moveq	r5, #2	@ tmp187,
	str	r1, [r4, #80]	@ tmp183, <variable>.btm_chrom_phy_addr
	str	r3, [r4, #68]	@ D.37121, <variable>.top_luma_phy_addr
	str	lr, [r4, #72]	@ D.37123, <variable>.top_chrom_phy_addr
	streq	r5, [r4, #400]	@ tmp187, <variable>.BTLInfo.YUVFormat
	strne	r0, [r4, #400]	@ D.37114, <variable>.BTLInfo.YUVFormat
.L129:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r5, #0	@ ret,
.L122:
	mov	r0, r5	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L125:
	cmp	r5, #4	@ eVidStd,
	cmpne	r5, #14	@, eVidStd,
	beq	.L126	@,
	cmp	r5, #18	@ eVidStd,
	beq	.L126	@,
	movw	lr, #18120	@ tmp193,
	mov	r1, r4	@, p_image
	mla	r0, lr, r7, r8	@ tmp195, tmp193, ChanID, tmp311
	add	r5, r0, #764	@, tmp195,
	str	r5, [fp, #-480]	@, %sfp
	mov	r0, r5	@,
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L145	@,
.L131:
	cmp	r5, #1	@ ret,
	bne	.L132	@,
	ldr	r9, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	movw	r6, #:lower16:1374389535	@ tmp221,
	movt	r6, #:upper16:1374389535	@ tmp221,
	movw	lr, #:lower16:g_SupportMVC	@ tmp237,
	movt	lr, #:upper16:g_SupportMVC	@ tmp237,
	movw	ip, #4530	@ tmp226,
	umull	r0, sl, r6, r9	@, tmp220, tmp221, <variable>.image_id
	mov	r0, #100	@,
	ldr	r1, [lr, #0]	@ g_SupportMVC, g_SupportMVC
	movw	r3, #18120	@ tmp233,
	mul	ip, ip, r7	@ tmp225, tmp226, ChanID
	cmp	r1, #1	@ g_SupportMVC,
	mla	r3, r3, r7, r8	@ tmp234, tmp233, ChanID, tmp311
	mov	r2, sl, lsr #5	@ tmp218, tmp220,
	movw	sl, #:lower16:.LANCHOR0	@ tmp217,
	movt	sl, #:upper16:.LANCHOR0	@ tmp217,
	mls	lr, r0, r2, r9	@ tmp224,, tmp218, <variable>.image_id
	mov	r9, #0	@ tmp236,
	mvn	r2, #0	@,
	str	r9, [r3, #760]	@ tmp236, <variable>.IsMvc
	add	r1, ip, lr	@ tmp227, tmp225, tmp224
	add	r0, r1, #170	@ tmp228, tmp227,
	str	r2, [r8, r0, asl #2]	@, <variable>.View1ImageId
	bne	.L133	@,
	ldr	r0, [r4, #208]	@ <variable>.is_3D, <variable>.is_3D
	cmp	r0, #1	@ <variable>.is_3D,
	beq	.L146	@,
	str	r9, [r3, #760]	@ tmp236, <variable>.IsMvc
	ldr	r3, [r4, #348]	@ prephitmp.891, <variable>.BTLInfo.btl_imageid
	add	r2, ip, r3	@ tmp296, tmp225, prephitmp.891
	add	ip, r2, #150	@ tmp297, tmp296,
	ldr	r1, [sl, ip, asl #2]	@ tmp298, <variable>.LogicInfoIsUsed
	cmp	r1, #2	@ tmp298,
	beq	.L139	@,
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r7	@, ChanID
	mov	r1, r4	@, p_image
	mvn	r5, #0	@ ret,
	bl	BTL_DiscardImage	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinLockIRQ	@
.L133:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L122	@
.L145:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp203,
	add	r3, r3, r7, asl #2	@, tmp199, tmp196, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp203,
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	mov	ip, r0	@ currtime,
	ldr	r0, [r3, #3520]	@ tmp202, last_rec_pos_time
	rsb	r1, r0, ip	@ tmp201, tmp202, currtime
	cmp	r1, r2	@ tmp201, g_TraceImgPeriod
	bls	.L131	@,
	mov	lr, r7, asl #24	@ tmp212, ChanID,
	ldr	r0, .L151	@,
	add	r2, lr, #786432	@ tmp213, tmp212,
	movw	r1, #1455	@,
	cmp	r5, #1	@ ret,
	addeq	r2, r2, #1	@,,, tmp213
	str	ip, [r3, #3520]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L131	@
.L139:
	ldr	r0, [r4, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	cmp	r0, #1	@ <variable>.BTLInfo.u32Is1D,
	beq	.L147	@,
.L140:
	movw	ip, #4530	@ tmp304,
	mov	lr, #3	@ tmp307,
	mla	r1, ip, r7, r3	@ tmp305, tmp304, ChanID, prephitmp.891
	mov	r5, #0	@ ret,
	add	r3, r1, #150	@ tmp306, tmp305,
	str	lr, [r8, r3, asl #2]	@ tmp307, <variable>.LogicInfoIsUsed
	b	.L133	@
.L142:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1394	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	mvn	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L122	@
.L144:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, <variable>.s32IsOpen
	mov	r2, r7	@, ChanID
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mvn	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L122	@
.L132:
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r5, #0	@ ret,
	b	.L122	@
.L146:
	ldr	r0, [fp, #-480]	@, %sfp
	sub	r1, fp, #476	@,,
	str	r5, [r3, #760]	@ ret, <variable>.IsMvc
	str	ip, [fp, #-484]	@,
	bl	IMGQUE_GetImage	@
	ldr	ip, [fp, #-484]	@,
	cmp	r0, #1	@,
	bne	.L148	@,
	ldr	r3, [r4, #200]	@ D.37169, <variable>.view_id
	ldr	r2, [fp, #-276]	@ D.37170, Image_1.view_id
	cmp	r3, r2	@ D.37169, D.37170
	blt	.L149	@,
	bgt	.L150	@,
	cmp	r3, #0	@ D.37169,
	bne	.L138	@,
	ldr	r0, [fp, #-480]	@, %sfp
	bl	IMGQUE_ReturnImage	@
	ldr	r1, [r4, #156]	@, <variable>.image_id
	sub	r2, fp, #48	@,,
	ldr	r0, [fp, #-480]	@, %sfp
	sub	r3, fp, #52	@,,
	bl	IMGQUE_DeleteImage	@
	mov	r0, r5	@, ret
	ldr	r2, [r4, #200]	@, <variable>.view_id
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	mvn	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L133	@
.L143:
	mov	r0, r1	@, p_image
	movw	r2, #1395	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L122	@
.L147:
	mov	r2, r5	@, ret
	mov	r0, r7	@, ChanID
	mov	r1, r4	@, p_image
	bl	FSP_ProcFspQue	@
	ldr	r3, [r4, #348]	@ prephitmp.891, <variable>.BTLInfo.btl_imageid
	b	.L140	@
.L149:
	sub	r8, fp, #132	@ tmp253,,
	ldr	lr, [fp, #-404]	@ Image_1.top_chrom_phy_addr, Image_1.top_chrom_phy_addr
	ldr	r5, [fp, #-408]	@ Image_1.top_luma_phy_addr, Image_1.top_luma_phy_addr
	add	r7, r4, #228	@ tmp252, p_image,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp313,,,,
	str	lr, [r4, #216]	@ Image_1.top_chrom_phy_addr, <variable>.top_chrom_phy_addr_1
	mov	lr, r7	@ tmp314, tmp252
	str	r5, [r4, #212]	@ Image_1.top_luma_phy_addr, <variable>.top_luma_phy_addr_1
	mov	r5, r9	@ ret, tmp236
	stmia	lr!, {r0, r1, r2, r3}	@ tmp314,,,,
	mov	r7, lr	@ tmp316, tmp314
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp315,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp316,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp317,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp316,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp317,,,
	stmia	r7, {r0, r1, r2}	@ tmp318,,,
	ldr	r3, [r4, #156]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #3	@ tmp254,
	str	r0, [r4, #288]	@ tmp254, <variable>.eFramePackingType
	ldr	lr, [fp, #-320]	@ D.37178, Image_1.image_id
	umull	r0, r2, r6, r3	@, tmp258, tmp221, <variable>.image_id
	mov	r0, #100	@,
	str	lr, [r4, #204]	@ D.37178, <variable>.image_id_1
	mov	r1, r2, lsr #5	@ tmp256, tmp258,
	mls	r2, r0, r1, r3	@ tmp262,, tmp256, <variable>.image_id
	add	r3, ip, r2	@ tmp265, tmp225, tmp262
	add	r1, r3, #170	@ tmp266, tmp265,
	str	lr, [sl, r1, asl #2]	@ D.37178, <variable>.View1ImageId
	b	.L133	@
.L138:
	sub	r7, fp, #48	@ tmp279,,
	sub	r6, fp, #52	@ tmp280,,
	ldr	r1, [r4, #156]	@, <variable>.image_id
	mov	r2, r7	@, tmp279
	mov	r3, r6	@, tmp280
	ldr	r0, [fp, #-480]	@, %sfp
	bl	IMGQUE_DeleteImage	@
	mov	r2, r7	@, tmp279
	ldr	r1, [fp, #-320]	@, Image_1.image_id
	mov	r3, r6	@, tmp280
	ldr	r0, [fp, #-480]	@, %sfp
	bl	IMGQUE_DeleteImage	@
	mov	r0, r5	@, ret
	ldr	r2, [r4, #200]	@, <variable>.view_id
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mvn	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L133	@
.L150:
	ldr	r0, [fp, #-480]	@, %sfp
	bl	IMGQUE_ReturnImage	@
	ldr	r1, [r4, #156]	@, <variable>.image_id
	sub	r2, fp, #48	@,,
	sub	r3, fp, #52	@,,
	ldr	r0, [fp, #-480]	@, %sfp
	bl	IMGQUE_DeleteImage	@
	mov	r0, r5	@, ret
	ldr	r2, [r4, #200]	@, <variable>.view_id
	movw	r1, #:lower16:.LC13	@,
	ldr	r3, [fp, #-276]	@, Image_1.view_id
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L133	@
.L148:
	ldr	r0, [fp, #-480]	@, %sfp
	mvn	r5, #0	@ ret,
	bl	IMGQUE_ReturnImage	@
	movw	r0, #:lower16:g_SpinLockIsr_BtlImage	@,
	movt	r0, #:upper16:g_SpinLockIsr_BtlImage	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L122	@
.L152:
	.align	2
.L151:
	.word	.LANCHOR2+40
	.fnend
	.size	BTL_ReceiveImage, .-BTL_ReceiveImage
	.align	2
	.global	BTL_EnableChan
	.type	BTL_EnableChan, %function
BTL_EnableChan:
	.fnstart
.LFB1365:
	@ args = 0, pretend = 0, frame = 640
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #672
	sub	sp, sp, #672	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #1	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMem, pChanMem
	mov	r8, r2	@ pChanOption, pChanOption
	bhi	.L173	@,
	movw	r1, #18120	@ tmp159,
	movw	r4, #:lower16:.LANCHOR0	@ tmp224,
	mul	sl, r1, r0	@ tmp158, tmp159, ChanID
	movt	r4, #:upper16:.LANCHOR0	@ tmp224,
	add	r6, r4, sl	@ tmp160, tmp224, tmp158
	mov	r0, r6	@, tmp160
	bl	__memzero	@
	cmp	r7, #0	@ pChanMem,
	ldr	r2, [r8, #8]	@ PicWidth, <variable>.s32MaxWidth
	ldr	r3, [r8, #12]	@ PicHeight, <variable>.s32MaxHeight
	beq	.L156	@,
	ldr	r0, [r7, #0]	@ D.36795, <variable>.PhyAddr
	cmp	r0, #0	@ D.36795,
	beq	.L157	@,
	ldr	r1, [r7, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L157	@,
	ldr	r1, [r7, #8]	@ D.36799, <variable>.Length
	cmp	r1, #0	@ D.36799,
	ble	.L157	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp162,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp162,
	ldr	ip, [ip, #32]	@ D.36803, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	cmp	ip, #0	@ D.36803,
	beq	.L157	@,
	ldr	lr, [r8, #64]	@ <variable>.s32BtlDbdrEnable, <variable>.s32BtlDbdrEnable
	ldr	r7, [r8, #52]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	ldr	r8, [r8, #68]	@ <variable>.s32Btl1Dt2DEnable, <variable>.s32Btl1Dt2DEnable
	str	lr, [sp, #24]	@ <variable>.s32BtlDbdrEnable,
	mov	lr, #0	@ tmp163,
	str	r7, [sp, #8]	@ <variable>.s32DisplayFrameNum,
	sub	r7, fp, #672	@ tmp168,,
	str	r8, [sp, #20]	@ <variable>.s32Btl1Dt2DEnable,
	str	lr, [sp, #12]	@ tmp163,
	str	lr, [sp, #0]	@ tmp163,
	str	lr, [sp, #4]	@ tmp163,
	str	r7, [sp, #16]	@ tmp168,
	blx	ip	@ D.36803
	cmp	r0, #0	@ D.36808
	beq	.L174	@,
.L157:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
.L155:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L174:
	ldr	lr, [fp, #-144]	@ MemArrange.ValidBTLFrameNum, MemArrange.ValidBTLFrameNum
	add	r2, sl, #1136	@ tmp182, tmp158,
	ldr	ip, [fp, #-400]	@ MemArrange.BtlAddr, MemArrange.BtlAddr
	add	r1, r6, #504	@ tmp176, tmp160,
	cmp	lr, #20	@ MemArrange.ValidBTLFrameNum,
	movge	lr, #20	@ tmp178,
	str	lr, [r6, #504]	@ tmp178, <variable>.s32ValidImgNum
	cmp	lr, r0	@ tmp178, D.36808
	add	r2, r4, r2	@ pLogicImage, tmp224, tmp182
	ldr	r0, [fp, #-396]	@ MemArrange.BtlAddr, MemArrange.BtlAddr
	rsb	r3, ip, r0	@ tmp191, MemArrange.BtlAddr, MemArrange.BtlAddr
	str	r3, [r1, #4]	@ tmp191, <variable>.s32InfoBlockMemSize
	strle	ip, [r2, #388]	@ MemArrange.BtlAddr, <variable>.BTLInfo.u32DNRInfoAddr
	bgt	.L175	@,
.L171:
	add	r7, r7, #4	@ ivtmp.966, tmp168,
	add	r2, r2, #424	@ pLogicImage, pLogicImage,
	mov	r3, #1	@ i,
	b	.L162	@
.L176:
	ldr	r0, [r1, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r3	@ <variable>.s32ValidImgNum, tmp229
	strle	ip, [r2, #388]	@ MemArrange.BtlAddr, <variable>.BTLInfo.u32DNRInfoAddr
	ldrgt	lr, [r7, #272]	@ tmp249, MemArrange.BtlAddr
	strgt	lr, [r2, #388]	@ tmp249, <variable>.BTLInfo.u32DNRInfoAddr
.L172:
	add	r3, r3, #1	@ i, tmp229,
	add	r7, r7, #4	@ ivtmp.966, tmp230,
	add	r2, r2, #424	@ pLogicImage, tmp231,
.L162:
	ldr	r6, [r1, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r6, r3	@ <variable>.s32ValidImgNum, i
	add	r3, r3, #1	@ tmp229, i,
	strle	ip, [r2, #388]	@ MemArrange.BtlAddr, <variable>.BTLInfo.u32DNRInfoAddr
	ldrgt	r6, [r7, #272]	@ tmp200, MemArrange.BtlAddr
	add	r7, r7, #4	@ tmp230, ivtmp.966,
	strgt	r6, [r2, #388]	@ tmp200, <variable>.BTLInfo.u32DNRInfoAddr
	cmp	r3, #20	@ tmp229,
	add	r2, r2, #424	@ tmp231, pLogicImage,
	bne	.L176	@,
	sub	r6, fp, #52	@ tmp205,,
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r0, r6	@, tmp205
	bl	sprintf	@
	movw	r2, #18120	@ tmp209,
	mul	r5, r2, r5	@ tmp208, tmp209, ChanID
	mov	r1, r6	@, tmp205
	movw	r2, #:lower16:BTL_DelImageProc	@,
	movt	r2, #:upper16:BTL_DelImageProc	@,
	add	ip, r5, r4	@ tmp211, tmp208, tmp224
	add	r5, r5, r4	@ tmp219, tmp208, tmp224
	add	r0, ip, #764	@, tmp211,
	bl	IMGQUE_InitQueue	@
	mov	r1, #1	@ tmp221,
	mov	r0, #0	@ Ret,
	str	r1, [r5, #20]	@ tmp221, <variable>.s32IsOpen
	b	.L155	@
.L175:
	ldr	r3, [r7, #272]	@ tmp248, MemArrange.BtlAddr
	str	r3, [r2, #388]	@ tmp248, <variable>.BTLInfo.u32DNRInfoAddr
	b	.L171	@
.L173:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #955	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L155	@
.L156:
	mov	r0, r7	@, pChanMem
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L155	@
	.fnend
	.size	BTL_EnableChan, .-BTL_EnableChan
	.align	2
	.global	BTL_InformDecChanReset
	.type	BTL_InformDecChanReset, %function
BTL_InformDecChanReset:
	.fnstart
.LFB1373:
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
	movw	r8, #18120	@ tmp142,
	mov	r9, r0	@ ChanID, ChanID
	sub	sl, fp, #48	@ tmp175,,
	mul	r8, r8, r9	@ tmp141, tmp142, ChanID
	movw	r5, #:lower16:.LANCHOR0	@ tmp139,
	movt	r5, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, sl	@, tmp175
	bl	OSAL_LockIRQ	@
	sub	r7, fp, #64	@ tmp160,,
	add	r4, r8, r5	@ tmp143, tmp141, tmp139
	movw	r2, #9616	@ tmp140,
	add	ip, r4, #9600	@ tmp144, tmp143,
	mov	r6, #0	@ tmp152,
	add	r3, ip, #16	@ tmp144, tmp144,
	mov	r1, #1	@ tmp145,
	mov	r0, r9	@, ChanID
	str	r1, [r4, r2]	@ tmp145, <variable>.DecChanRstFlag
	str	r6, [r3, #4]	@ tmp152, <variable>.GetFirstIFrameFlag
	str	r6, [r4, #488]	@ tmp152, <variable>.s321DFrameIsProc
	bl	BTL_ClearTempImage	@
	mov	r2, r9	@, ChanID
	mov	r0, r7	@, tmp160
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	sprintf	@
	add	r0, r4, #764	@, tmp166,
	mov	r1, r7	@, tmp160
	movw	r2, #:lower16:BTL_DelImageProc	@,
	movt	r2, #:upper16:BTL_DelImageProc	@,
	bl	IMGQUE_InitQueue	@
	mov	r2, r6	@ tmp176, i
.L178:
	add	r6, r6, #2	@ i, i,
	add	lr, r4, #4	@ tmp178, ivtmp.1007,
	cmp	r6, #20	@ i,
	str	r2, [r4, #600]	@ tmp176, <variable>.LogicInfoIsUsed
	str	r2, [lr, #600]	@ tmp176, <variable>.LogicInfoIsUsed
	add	r4, lr, #4	@ ivtmp.1007, tmp178,
	bne	.L178	@,
	mov	r0, sl	@, tmp175
	bl	OSAL_UnLockIRQ	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	BTL_InformDecChanReset, .-BTL_InformDecChanReset
	.align	2
	.global	BTL_StopChan
	.type	BTL_StopChan, %function
BTL_StopChan:
	.fnstart
.LFB1372:
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
	cmp	r0, #1	@ ChanID,
	bhi	.L187	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	movw	r4, #18120	@ tmp141,
	mla	r4, r4, r0, r1	@ tmp142, tmp141, ChanID, tmp138
	ldr	r3, [r4, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L188	@,
	sub	r6, fp, #32	@ tmp147,,
	mov	r5, #0	@ tmp154,
	mov	r0, r6	@, tmp147
	bl	OSAL_LockIRQ	@
	mov	r0, r6	@, tmp147
	str	r5, [r4, #24]	@ tmp154, <variable>.InstMode
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@ D.36974, tmp154
.L184:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L188:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #1184	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36974,
	b	.L184	@
.L187:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1183	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36974,
	b	.L184	@
	.fnend
	.size	BTL_StopChan, .-BTL_StopChan
	.align	2
	.global	BTL_ResetChan
	.type	BTL_ResetChan, %function
BTL_ResetChan:
	.fnstart
.LFB1353:
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
	movw	r8, #18120	@ tmp140,
	mul	r7, r8, r0	@ tmp139, tmp140, ChanID
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	mov	sl, r0	@ ChanID, ChanID
	add	r6, r7, r5	@ tmp141, tmp139, tmp137
	add	r3, r6, #16	@ tmp142, tmp141,
	ldr	r9, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r9, #1	@ <variable>.s32IsOpen,
	bne	.L195	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp149,
	movt	r4, #:upper16:.LANCHOR1	@ tmp149,
	str	r3, [fp, #-64]	@,
	bl	BTL_StopChan	@
	add	r2, r4, #3520	@, tmp149,
	mov	r1, r6	@, tmp141
	add	r0, r2, #8	@,,
	mov	r2, r8	@, tmp140
	bl	memcpy	@
	mov	r0, r6	@, tmp141
	mov	r1, r8	@, tmp140
	bl	__memzero	@
	add	r0, r7, #1136	@ tmp159, tmp139,
	add	r1, r4, #4608	@, tmp149,
	add	r0, r5, r0	@, tmp137, tmp159
	add	r1, r1, #56	@,,
	movw	r2, #8480	@,
	bl	memcpy	@
	ldr	ip, [r4, #4032]	@ CurrBtlChan.s32ValidImgNum, CurrBtlChan.s32ValidImgNum
	mov	r2, sl	@, ChanID
	sub	r0, fp, #60	@,,
	movw	r1, #:lower16:.LC17	@,
	add	r5, r5, r7	@ tmp180, tmp137, tmp139
	movt	r1, #:upper16:.LC17	@,
	str	ip, [r6, #504]	@ CurrBtlChan.s32ValidImgNum, <variable>.s32ValidImgNum
	bl	sprintf	@
	sub	r1, fp, #60	@,,
	add	r0, r5, #764	@, tmp180,
	movw	r2, #:lower16:BTL_DelImageProc	@,
	movt	r2, #:upper16:BTL_DelImageProc	@,
	bl	IMGQUE_InitQueue	@
	ldr	r2, [r4, #3552]	@ CurrBtlChan.InstMode, CurrBtlChan.InstMode
	ldr	r3, [fp, #-64]	@,
	cmp	r2, #1	@ CurrBtlChan.InstMode,
	str	r9, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	beq	.L192	@,
.L194:
	mov	r0, #0	@ D.36089,
.L191:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L192:
	mov	r0, sl	@, ChanID
	bl	BTL_StartChan	@
	b	.L194	@
.L195:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #102	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC19	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36089,
	b	.L191	@
	.fnend
	.size	BTL_ResetChan, .-BTL_ResetChan
	.align	2
	.global	BTL_DisableChan
	.type	BTL_DisableChan, %function
BTL_DisableChan:
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
	cmp	r0, #1	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L201	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp139,
	movt	r6, #:upper16:.LANCHOR0	@ tmp139,
	movw	r5, #18120	@ tmp142,
	mla	r6, r5, r0, r6	@ tmp143, tmp142, ChanID, tmp139
	ldr	r3, [r6, #20]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L202	@,
	ldr	r0, .L203	@,
	bl	OSAL_LockIRQ	@
	mov	r0, r4	@, ChanID
	bl	BTL_StopChan	@
	mov	r0, r6	@, tmp143
	mov	r1, r5	@, tmp142
	bl	__memzero	@
	ldr	r0, .L203	@,
	bl	OSAL_UnLockIRQ	@
	mov	r0, #0	@ D.36869,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L202:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1045	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36869,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L201:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1044	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36869,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L204:
	.align	2
.L203:
	.word	.LANCHOR3-2900
	.fnend
	.size	BTL_DisableChan, .-BTL_DisableChan
	.align	2
	.global	BTL_PushTempImageToVOQ
	.type	BTL_PushTempImageToVOQ, %function
BTL_PushTempImageToVOQ:
	.fnstart
.LFB1369:
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
	movw	r3, #18120	@ tmp147,
	mul	r3, r3, r0	@ tmp146, tmp147, InstId
	movw	r4, #:lower16:.LANCHOR0	@ tmp207,
	movt	r4, #:upper16:.LANCHOR0	@ tmp207,
	movw	r5, #9624	@ tmp145,
	str	r0, [fp, #-60]	@ InstId, %sfp
	add	r6, r3, r4	@ tmp148, tmp146, tmp207
	ldr	r2, [r6, r5]	@ D.36892, <variable>.TempImageNum
	cmp	r2, #0	@ D.36892,
	ble	.L230	@,
	sub	r6, r2, #1	@ i, D.36892,
	mov	r5, #424	@ tmp166,
	mla	ip, r5, r2, r3	@ tmp169, tmp166, D.36892, tmp146
	add	lr, r3, r4	@ tmp163, tmp146, tmp207
	mla	r8, r5, r6, r3	@ tmp177, tmp209, i, tmp211
	add	r1, lr, #764	@, tmp163,
	ldr	r2, [fp, #-60]	@, %sfp
	mov	sl, r3	@ tmp211, tmp146
	str	r1, [fp, #-56]	@, %sfp
	add	r3, ip, #9600	@ tmp170, tmp169,
	add	r0, r8, #9600	@ tmp178, tmp177,
	movw	r8, #4530	@ tmp212,
	add	r7, r0, #32	@ tmp178, tmp178,
	mov	r0, r1	@,
	add	r7, r4, r7	@ pTemp, tmp207, tmp178
	movw	lr, #:lower16:g_event_report	@,
	mov	r9, r5	@ tmp209, tmp166
	str	lr, [fp, #-64]	@, %sfp
	mov	r1, r7	@, pTemp
	add	r5, r3, #32	@ tmp170, tmp170,
	mul	r8, r8, r2	@ tmp213, tmp212,
	bl	IMGQUE_InsertImage	@
	ldr	r1, [fp, #-64]	@, %sfp
	and	ip, r6, #1	@, i,
	add	r5, r4, r5	@ ivtmp.1112, tmp207, tmp170
	movt	r1, #:upper16:g_event_report	@,
	str	ip, [fp, #-68]	@, %sfp
	str	r1, [fp, #-64]	@, %sfp
	cmp	r0, #1	@,
	beq	.L231	@,
	ldr	r2, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	mov	ip, #0	@ tmp249,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, ip	@, tmp249
	add	r3, r8, r2	@ tmp247, tmp213, <variable>.BTLInfo.btl_imageid
	movt	r1, #:upper16:.LC22	@,
	add	lr, r3, #150	@ tmp248, tmp247,
	movw	r2, #1093	@,
	str	ip, [r4, lr, asl #2]	@ tmp249, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
.L214:
	sub	r6, r6, #1	@ i, i,
	sub	r5, r5, #424	@ ivtmp.1112, ivtmp.1112,
	cmn	r6, #1	@ i,
	beq	.L226	@,
	ldr	r7, [fp, #-68]	@, %sfp
	cmp	r7, #0	@,
	beq	.L229	@,
	mla	lr, r9, r6, sl	@ tmp265, tmp209, i, tmp211
	ldr	r0, [fp, #-56]	@, %sfp
	add	r1, lr, #9600	@ tmp267, tmp265,
	add	ip, r1, #32	@ tmp267, tmp267,
	add	r7, r4, ip	@ pTemp, tmp207, tmp267
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L227	@,
	ldr	r3, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	movw	lr, #:lower16:.LANCHOR0	@,
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	ip, #0	@ tmp275,
	add	r2, r8, r3	@ tmp273, tmp213, <variable>.BTLInfo.btl_imageid
	movw	r1, #:lower16:.LC22	@,
	add	r3, r2, #150	@ tmp274, tmp273,
	mov	r0, ip	@, tmp275
	movt	r1, #:upper16:.LC22	@,
	movw	r2, #1093	@,
	str	ip, [lr, r3, asl #2]	@ tmp275, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
.L217:
	sub	r6, r6, #1	@ i, i,
	sub	r5, r5, #424	@ ivtmp.1112, ivtmp.1112,
	cmn	r6, #1	@ i,
	beq	.L226	@,
.L229:
	str	r8, [fp, #-80]	@ tmp213, %sfp
	b	.L210	@
.L232:
	ldr	r1, [fp, #-64]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r8, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	movt	lr, #:upper16:.LANCHOR0	@,
	ldr	r2, [fp, #-80]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report.477, g_event_report
	mov	r1, #5	@,
	add	r3, r2, r8	@ tmp183,, <variable>.BTLInfo.btl_imageid
	ldr	r0, [fp, #-60]	@, %sfp
	add	r3, r3, #150	@, tmp183,
	cmp	ip, #0	@ g_event_report.477,
	mov	r8, #2	@ tmp186,
	sub	r2, fp, #48	@,,
	str	r8, [lr, r3, asl #2]	@ tmp186, <variable>.LogicInfoIsUsed
	beq	.L209	@,
	str	r7, [fp, #-48]	@ pTemp, para
	blx	ip	@ g_event_report.477
.L209:
	sub	r6, r6, #1	@ tmp219, i,
	ldr	r0, [fp, #-56]	@, %sfp
	sub	r5, r5, #424	@ ivtmp.1112, ivtmp.1112,
	mla	r1, r9, r6, sl	@ tmp239, tmp209, tmp219, tmp211
	add	r2, r1, #9600	@ tmp241, tmp239,
	add	r3, r2, #32	@ tmp241, tmp241,
	add	r7, r4, r3	@ pTemp, tmp207, tmp241
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	mov	r3, #0	@ tmp291,
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #1093	@,
	movt	r1, #:upper16:.LC22	@,
	cmp	r0, #1	@,
	mov	r0, r3	@, tmp291
	bne	.L220	@,
	ldr	lr, [fp, #-64]	@, %sfp
	mov	r1, #5	@,
	ldr	ip, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	sub	r2, fp, #48	@,,
	ldr	r3, [fp, #-80]	@, %sfp
	ldr	r8, [lr, #0]	@, g_event_report
	add	lr, r3, ip	@ tmp295,, <variable>.BTLInfo.btl_imageid
	ldr	r0, [fp, #-60]	@, %sfp
	add	r3, lr, #150	@, tmp295,
	mov	ip, #2	@,
	str	r8, [fp, #-72]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	cmp	r8, #0	@,
	movw	r8, #:lower16:.LANCHOR0	@,
	movt	r8, #:upper16:.LANCHOR0	@,
	str	ip, [r8, r3, asl #2]	@, <variable>.LogicInfoIsUsed
	beq	.L221	@,
	str	r7, [fp, #-48]	@ pTemp, para
	ldr	r3, [fp, #-72]	@, %sfp
	blx	r3	@
.L221:
	sub	r6, r6, #1	@ i, tmp219,
	sub	r5, r5, #424	@ ivtmp.1112, ivtmp.1112,
	cmn	r6, #1	@ i,
	beq	.L226	@,
.L210:
	mla	ip, r9, r6, sl	@ tmp226, tmp209, i, tmp211
	ldr	r0, [fp, #-56]	@, %sfp
	add	r3, ip, #9600	@ tmp228, tmp226,
	add	r2, r3, #32	@ tmp228, tmp228,
	add	r7, r4, r2	@ pTemp, tmp207, tmp228
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	mov	r3, #0	@ tmp195,
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #1093	@,
	movt	r1, #:upper16:.LC22	@,
	cmp	r0, #1	@,
	mov	r0, r3	@, tmp195
	beq	.L232	@,
	ldr	r7, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r8, [fp, #-80]	@, %sfp
	movt	lr, #:upper16:.LANCHOR0	@,
	add	ip, r8, r7	@ tmp192,, <variable>.BTLInfo.btl_imageid
	add	r7, ip, #150	@ tmp194, tmp192,
	str	r3, [lr, r7, asl #2]	@ tmp195, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	b	.L209	@
.L220:
	ldr	lr, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	sub	r6, r6, #1	@ i, tmp219,
	ldr	r8, [fp, #-80]	@, %sfp
	sub	r5, r5, #424	@ ivtmp.1112, ivtmp.1112,
	add	ip, r8, lr	@ tmp289,, <variable>.BTLInfo.btl_imageid
	movw	lr, #:lower16:.LANCHOR0	@,
	add	ip, ip, #150	@ tmp290, tmp289,
	movt	lr, #:upper16:.LANCHOR0	@,
	str	r3, [lr, ip, asl #2]	@ tmp291, <variable>.LogicInfoIsUsed
	bl	dprint_vfmw	@
	cmn	r6, #1	@ i,
	bne	.L210	@,
.L226:
	ldr	r0, [fp, #-60]	@, %sfp
	movw	r2, #18120	@ tmp201,
	mov	r3, #0	@ tmp204,
	movw	ip, #9624	@ tmp199,
	mla	r4, r2, r0, r4	@ tmp202, tmp201,, tmp207
	mov	r0, r3	@ D.36896, tmp204
	str	r3, [r4, ip]	@ tmp204, <variable>.TempImageNum
.L207:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L227:
	ldr	r0, [fp, #-64]	@, %sfp
	mov	lr, #2	@ tmp281,
	ldr	r3, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	ldr	ip, [r0, #0]	@ g_event_report.477, g_event_report
	add	r2, r8, r3	@ tmp279, tmp213, <variable>.BTLInfo.btl_imageid
	add	r1, r2, #150	@ tmp280, tmp279,
	movw	r0, #:lower16:.LANCHOR0	@,
	cmp	ip, #0	@ g_event_report.477,
	movt	r0, #:upper16:.LANCHOR0	@,
	str	lr, [r0, r1, asl #2]	@ tmp281, <variable>.LogicInfoIsUsed
	beq	.L217	@,
	str	r7, [fp, #-48]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [fp, #-60]	@, %sfp
	sub	r2, fp, #48	@,,
	blx	ip	@ g_event_report.477
	b	.L217	@
.L231:
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r0, #2	@ tmp255,
	ldr	r3, [r5, #-76]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	ldr	ip, [r2, #0]	@ g_event_report.477, g_event_report
	add	lr, r8, r3	@ tmp253, tmp213, <variable>.BTLInfo.btl_imageid
	add	r1, lr, #150	@ tmp254, tmp253,
	cmp	ip, #0	@ g_event_report.477,
	str	r0, [r4, r1, asl #2]	@ tmp255, <variable>.LogicInfoIsUsed
	beq	.L214	@,
	str	r7, [fp, #-48]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [fp, #-60]	@, %sfp
	sub	r2, fp, #48	@,,
	blx	ip	@ g_event_report.477
	b	.L214	@
.L230:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movw	r2, #1073	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp158,
	str	r0, [r6, r5]	@ tmp158, <variable>.TempImageNum
	mvn	r0, #0	@ D.36896,
	b	.L207	@
	.fnend
	.size	BTL_PushTempImageToVOQ, .-BTL_PushTempImageToVOQ
	.align	2
	.global	BTL_FastForwardFastBack
	.type	BTL_FastForwardFastBack, %function
BTL_FastForwardFastBack:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp179,
	movt	r4, #:upper16:.LANCHOR0	@ tmp179,
	mov	r5, r0	@ InstId, InstId
	movw	r0, #18120	@ tmp144,
	ldr	r2, [r1, #120]	@ <variable>.format, <variable>.format
	mla	r3, r0, r5, r4	@ tmp145, tmp144, InstId, tmp179
	orr	r2, r2, #262144	@ D.36936, <variable>.format,
	str	r2, [r1, #120]	@ D.36936, <variable>.format
	add	ip, r3, #9600	@ tmp146, tmp145,
	add	r0, ip, #16	@ tmp146, tmp146,
	ldr	r3, [r0, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r3, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L234	@,
	ldr	r3, [r1, #108]	@ D.36945, <variable>.is_fld_save
	cmp	r3, #0	@ D.36945,
	beq	.L243	@,
	cmp	r3, #1	@ D.36945,
	bne	.L237	@,
	ldr	ip, [r1, #112]	@ <variable>.top_fld_type, <variable>.top_fld_type
	tst	ip, #3	@ <variable>.top_fld_type,
	beq	.L236	@,
	ldr	r2, [r1, #116]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r2, #3	@ <variable>.bottom_fld_type,
	bne	.L237	@,
.L236:
	movw	r3, #18120	@ tmp156,
	mov	r1, #1	@ tmp159,
	mla	ip, r3, r5, r4	@ tmp157, tmp156, InstId, tmp179
	mov	r0, #0	@ ret,
	add	r4, ip, #9600	@ tmp158, tmp157,
	add	r4, r4, #16	@ tmp158, tmp158,
	str	r1, [r4, #4]	@ tmp159, <variable>.GetFirstIFrameFlag
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L234:
	ldr	r3, [r1, #108]	@ temp.1138, <variable>.is_fld_save
	cmp	r3, #0	@ temp.1138,
	bne	.L239	@,
	tst	r2, #3	@ D.36936,
	bne	.L241	@,
.L240:
	mov	r0, r5	@, InstId
	bl	BTL_PushTempImageToVOQ	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L239:
	cmp	r3, #1	@ temp.1138,
	bne	.L241	@,
	ldr	r0, [r1, #112]	@ <variable>.top_fld_type, <variable>.top_fld_type
	tst	r0, #3	@ <variable>.top_fld_type,
	beq	.L240	@,
	ldr	ip, [r1, #116]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	ip, #3	@ <variable>.bottom_fld_type,
	beq	.L240	@,
.L241:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L243:
	tst	r2, #3	@ D.36936,
	beq	.L236	@,
.L237:
	movw	r6, #18120	@ tmp162,
	mov	r0, r5	@, InstId
	mul	r6, r6, r5	@ tmp161, tmp162, InstId
	add	lr, r6, #56	@ tmp163, tmp161,
	add	r1, r4, lr	@, tmp179, tmp163
	add	r4, r6, r4	@ tmp170, tmp161, tmp179
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp172,
	mov	r0, r5	@, InstId
	str	r2, [r4, #488]	@ tmp172, <variable>.s321DFrameIsProc
	bl	BTL_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	BTL_FastForwardFastBack, .-BTL_FastForwardFastBack
	.align	2
	.global	BTL_ProcessBtlReturn
	.type	BTL_ProcessBtlReturn, %function
BTL_ProcessBtlReturn:
	.fnstart
.LFB1359:
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
	movw	r2, #18120	@ tmp151,
	mul	r2, r2, r0	@ tmp150, tmp151, ChanID
	movw	r4, #:lower16:.LANCHOR0	@ tmp339,
	movt	r4, #:upper16:.LANCHOR0	@ tmp339,
	mov	r5, r0	@ ChanID, ChanID
	add	r3, r2, r4	@ tmp152, tmp150, tmp339
	ldr	r7, [r3, #44]	@ D.36192, <variable>.BTLDataSourceFlag
	ldr	sl, [r3, #500]	@ PicBufID, <variable>.CurImageBufID
	cmp	r7, #0	@ D.36192,
	bne	.L245	@,
	mov	r1, #424	@ tmp162,
	mla	r0, r1, sl, r2	@ tmp165, tmp162, PicBufID, tmp150
	add	r6, r0, #1136	@ tmp166, tmp165,
	add	r6, r4, r6	@ pLogic, tmp339, tmp166
.L246:
	cmp	r5, #1	@ ChanID,
	bhi	.L265	@,
	ldr	r0, [r6, #124]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L266	@,
	cmp	r7, #0	@ D.36192,
	bne	.L251	@,
	ldr	r3, [r6, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	cmp	r3, #0	@ <variable>.BTLInfo.u32Is1D,
	beq	.L267	@,
.L252:
	movw	r3, #18120	@ tmp204,
	movw	r2, #18112	@ tmp202,
	mul	r0, r3, r5	@ tmp203, tmp204, ChanID
	movw	r7, #:lower16:.LANCHOR0	@ tmp201,
	movt	r7, #:upper16:.LANCHOR0	@ tmp201,
	add	r3, r0, r4	@ tmp205, tmp203, tmp339
	ldr	lr, [r3, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	lr, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L268	@,
	add	r1, r3, #9600	@ tmp244, tmp205,
	add	r2, r1, #16	@ tmp244, tmp244,
	ldr	ip, [r2, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	ip, #0	@ <variable>.GetFirstIFrameFlag,
	beq	.L269	@,
	movw	r7, #18120	@ tmp251,
	ldr	r8, [r6, #344]	@ <variable>.BTLInfo.u32Is1D, <variable>.BTLInfo.u32Is1D
	mul	r3, r7, r5	@ tmp250, tmp251, ChanID
	cmp	r8, #0	@ <variable>.BTLInfo.u32Is1D,
	movw	r8, #9624	@ tmp249,
	streq	sl, [r6, #156]	@ PicBufID, <variable>.image_id
	mov	lr, #424	@ tmp256,
	mov	r1, r6	@, pLogic
	add	r7, r3, r4	@ tmp252, tmp250, tmp339
	mov	r2, lr	@, tmp256
	ldr	ip, [r7, r8]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mla	r0, lr, ip, r3	@ tmp259, tmp256, <variable>.TempImageNum, tmp250
	add	r3, r0, #9600	@ tmp260, tmp259,
	add	lr, r3, #32	@ tmp260, tmp260,
	add	r0, r4, lr	@, tmp339, tmp260
	bl	memcpy	@
	movw	r0, #4530	@ tmp269,
	mla	sl, r0, r5, sl	@ tmp270, tmp269, ChanID, PicBufID
	ldr	r1, [r7, r8]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	r2, [r7, #504]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	mov	r0, #4	@ tmp272,
	add	r3, r1, #1	@ D.36261, <variable>.TempImageNum,
	str	r3, [r7, r8]	@ D.36261, <variable>.TempImageNum
	sub	ip, r2, #2	@ tmp292, <variable>.s32ValidImgNum,
	add	sl, sl, #150	@ tmp271, tmp270,
	cmp	r3, ip	@ D.36261, tmp292
	str	r0, [r4, sl, asl #2]	@ tmp272, <variable>.LogicInfoIsUsed
	bge	.L270	@,
.L257:
	movw	r2, #18120	@ tmp305,
	movw	r1, #18112	@ tmp303,
	mla	r4, r2, r5, r4	@ tmp306, tmp305, ChanID, tmp339
	ldr	ip, [r4, r1]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L261	@,
	movw	r0, #:lower16:g_event_report	@ tmp309,
	movt	r0, #:upper16:g_event_report	@ tmp309,
	ldr	r3, [r0, #0]	@ g_event_report.1178, g_event_report
	cmp	r3, #0	@ g_event_report.1178,
	beq	.L261	@,
	sub	r2, fp, #36	@ tmp310,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1178
	mov	r0, #0	@ D.36204,
	b	.L249	@
.L245:
	cmp	r7, #1	@ D.36192,
	movne	r6, #0	@ pLogic,
	ldreq	r6, [r3, #484]	@ pLogic, <variable>.pCaptureImageOut
	b	.L246	@
.L251:
	cmp	r7, #1	@ D.36192,
	bne	.L262	@,
	movw	ip, #18120	@ tmp314,
	mla	r4, ip, r5, r4	@ tmp315, tmp314, ChanID, tmp339
	ldr	r3, [r4, #48]	@ <variable>.BTLCaptureStartFlag, <variable>.BTLCaptureStartFlag
	cmp	r3, #1	@ <variable>.BTLCaptureStartFlag,
	bne	.L262	@,
	movw	r2, #:lower16:g_event_report	@ tmp333,
	movt	r2, #:upper16:g_event_report	@ tmp333,
	mov	r7, #0	@ tmp318,
	str	r7, [r6, #344]	@ tmp318, <variable>.BTLInfo.u32Is1D
	ldr	r3, [r2, #0]	@ g_event_report.1179, g_event_report
	add	r1, r4, #40	@ tmp324, tmp315,
	str	r7, [r4, #48]	@ tmp318, <variable>.BTLCaptureStartFlag
	cmp	r3, r7	@ g_event_report.1179,
	str	r7, [r1, #4]	@ tmp318, <variable>.BTLDataSourceFlag
	beq	.L261	@,
	sub	r2, fp, #36	@ tmp334,,
	mov	r0, r5	@, ChanID
	mov	r1, #21	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1179
	mov	r0, r7	@ D.36204, tmp318
.L249:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L261:
	mov	r0, #0	@ D.36204,
	b	.L249	@
.L267:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	ip, [r6, #156]	@ <variable>.image_id, <variable>.image_id
	movw	r3, #:lower16:1374389535	@ tmp182,
	movt	r3, #:upper16:1374389535	@ tmp182,
	umull	r2, r1, r3, ip	@, tmp181, tmp182, <variable>.image_id
	mov	r2, #100	@ tmp184,
	mov	r3, r1, lsr #5	@ tmp179, tmp181,
	mls	r1, r2, r3, ip	@ tmp185, tmp184, tmp179, <variable>.image_id
	add	r2, r1, #2	@ tmp186, tmp185,
	cmp	r0, r2	@, tmp186
	beq	.L271	@,
.L253:
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, pLogic
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r6, #348]	@ <variable>.BTLInfo.btl_imageid, <variable>.BTLInfo.btl_imageid
	str	ip, [r6, #156]	@ <variable>.BTLInfo.btl_imageid, <variable>.image_id
	b	.L252	@
.L269:
	mov	r0, r5	@, ChanID
	bl	BTL_ClearTempImage	@
	b	.L257	@
.L270:
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, pLogic
	bl	BTL_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	bne	.L272	@,
.L260:
	movw	r3, #18120	@ tmp298,
	mov	r1, #0	@ tmp301,
	mla	lr, r3, r5, r4	@ tmp299, tmp298, ChanID, tmp339
	add	r0, lr, #9600	@ tmp300, tmp299,
	add	r2, r0, #16	@ tmp300, tmp300,
	str	r1, [r2, #4]	@ tmp301, <variable>.GetFirstIFrameFlag
	b	.L257	@
.L262:
	movw	r1, #:lower16:.LC27	@,
	mov	r2, r7	@, D.36192
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
.L264:
	mvn	r0, #0	@ D.36204,
	b	.L249	@
.L265:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #334	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36204,
	b	.L249	@
.L271:
	movw	lr, #:lower16:g_event_report	@ tmp188,
	movt	lr, #:upper16:g_event_report	@ tmp188,
	mov	r0, #1	@ tmp187,
	str	r0, [r6, #196]	@ tmp187, <variable>.last_frame
	ldr	r3, [lr, #0]	@ g_event_report.427, g_event_report
	cmp	r3, #0	@ g_event_report.427,
	beq	.L254	@,
	sub	r2, fp, #36	@ tmp190,,
	mov	r0, r5	@, ChanID
	mov	r1, #115	@,
	str	r7, [r2, #-4]!	@ D.36192, para
	blx	r3	@ g_event_report.427
	ldr	ip, [r6, #156]	@ <variable>.image_id, <variable>.image_id
.L254:
	movw	r1, #:lower16:1374389535	@ tmp195,
	movt	r1, #:upper16:1374389535	@ tmp195,
	mov	lr, #100	@ tmp197,
	mov	r0, #2	@,
	umull	r3, r2, r1, ip	@, tmp194, tmp195, <variable>.image_id
	movw	r1, #:lower16:.LC25	@,
	ldr	r3, [r6, #348]	@, <variable>.BTLInfo.btl_imageid
	movt	r1, #:upper16:.LC25	@,
	mov	r7, r2, lsr #5	@ tmp192, tmp194,
	mls	r2, lr, r7, ip	@, tmp197, tmp192, <variable>.image_id
	bl	dprint_vfmw	@
	mov	r0, r5	@, ChanID
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L253	@
.L272:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #401	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L260	@
.L268:
	add	r0, r7, r0	@ tmp212, tmp201, tmp203
	mov	r1, r6	@, pLogic
	add	r0, r0, #764	@, tmp212,
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L264	@,
	movw	r2, #4530	@ tmp216,
	mov	r1, #2	@ tmp219,
	mla	lr, r2, r5, sl	@ tmp217, tmp216, ChanID, PicBufID
	mov	r0, #11	@,
	add	ip, lr, #150	@ tmp218, tmp217,
	str	r1, [r7, ip, asl #2]	@ tmp219, <variable>.LogicInfoIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L257	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp220,
	movt	r3, #:upper16:.LANCHOR3	@ tmp220,
	add	r3, r3, r5, asl #2	@, tmp223, tmp220, ChanID,
	ldr	r1, [r3, #-2848]	@ tmp226, last_rec_pos_time
	mov	ip, r0	@ currtime,
	movw	r0, #:lower16:g_TraceFramePeriod	@ tmp227,
	movt	r0, #:upper16:g_TraceFramePeriod	@ tmp227,
	ldr	r2, [r0, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r0, r1, ip	@ tmp225, tmp226, currtime
	cmp	r0, r2	@ tmp225, g_TraceFramePeriod
	bls	.L257	@,
	mov	lr, r5, asl #24	@ tmp237, ChanID,
	ldr	r0, .L273	@,
	add	r2, lr, #720896	@, tmp237,
	movw	r1, #370	@,
	str	ip, [r3, #-2848]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L257	@
.L266:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #335	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36204,
	b	.L249	@
.L274:
	.align	2
.L273:
	.word	.LANCHOR2+60
	.fnend
	.size	BTL_ProcessBtlReturn, .-BTL_ProcessBtlReturn
	.align	2
	.global	BTL_DoNextInstance
	.type	BTL_DoNextInstance, %function
BTL_DoNextInstance:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #156
	sub	sp, sp, #156	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR3	@ tmp195,
	movt	r3, #:upper16:.LANCHOR3	@ tmp195,
	mov	r4, #0	@ PicBufID.1268,
	movw	r7, #:lower16:.LANCHOR0	@ tmp1019,
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp1027,
	ldr	r6, [r3, #-2888]	@ NextInstId, s_BtlCtrl.ThisInstID
	movt	r7, #:upper16:.LANCHOR0	@ tmp1019,
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp1027,
	mov	r5, r4	@ pImageLogic, PicBufID.1268
	movw	r8, #:lower16:g_btl_hal_fun_ptr	@ tmp1026,
	movw	r1, #:lower16:g_event_report	@,
	movt	r8, #:upper16:g_btl_hal_fun_ptr	@ tmp1026,
	movt	r1, #:upper16:g_event_report	@,
	movw	r2, #:lower16:1374389535	@,
	str	r1, [fp, #-128]	@, %sfp
	movt	r2, #:upper16:1374389535	@,
	str	r0, [fp, #-160]	@ pNextInstId, %sfp
	str	r2, [fp, #-132]	@, %sfp
	str	r4, [fp, #-156]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-152]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-144]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-164]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-172]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-140]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-136]	@ PicBufID.1268, %sfp
	str	r4, [fp, #-176]	@ PicBufID.1268, %sfp
	str	r8, [fp, #-180]	@ tmp1026, %sfp
.L345:
	add	r1, r6, #1	@ D.36316, NextInstId,
	movw	r0, #18120	@ tmp204,
	mov	ip, r1, lsr #31	@ tmp197, D.36316,
	add	r2, r1, ip	@ tmp198, D.36316, tmp197
	and	r6, r2, #1	@ tmp199, tmp198,
	rsb	r6, ip, r6	@ NextInstId, tmp197, tmp199
	mla	r3, r0, r6, r7	@ tmp205, tmp204, NextInstId, tmp1019
	add	r2, r3, #48	@ tmp206, tmp205,
	ldr	r1, [r2, #4]	@ <variable>.BTLCaptureEnableFlag, <variable>.BTLCaptureEnableFlag
	cmp	r1, #1	@ <variable>.BTLCaptureEnableFlag,
	beq	.L357	@,
.L276:
	movw	r3, #18120	@ tmp232,
	mla	r3, r3, r6, r7	@ tmp233, tmp232, NextInstId, tmp1019
	ldr	ip, [r3, #24]	@ <variable>.InstMode, <variable>.InstMode
	cmp	ip, #0	@ <variable>.InstMode,
	bne	.L277	@,
	ldr	r2, [r3, #44]	@ <variable>.BTLDataSourceFlag, <variable>.BTLDataSourceFlag
	cmp	r2, #1	@ <variable>.BTLDataSourceFlag,
	bne	.L278	@,
.L277:
	mov	r0, r6	@, NextInstId
	bl	VCTRL_GetVidStd	@
	sub	r1, r0, #10	@ tmp243, eVidStd,
	cmp	r1, #2	@ tmp243,
	bls	.L358	@,
.L279:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L280	@,
	cmp	r0, #18	@ eVidStd,
	cmpne	r0, #7	@, eVidStd,
	movne	r3, #0	@, tmp260
	moveq	r3, #1	@, tmp260
	beq	.L280	@,
	cmp	r0, #17	@ eVidStd,
	beq	.L280	@,
	movw	r1, #18120	@ tmp285,
	mla	r1, r1, r6, r7	@ tmp286, tmp285, NextInstId, tmp1019
	add	lr, r1, #17920	@ tmp287, tmp286,
	add	r9, lr, #192	@ tmp287, tmp287,
	ldr	r8, [r9, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r8, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L282	@,
	add	r2, r1, #9600	@ tmp294, tmp286,
	mov	r0, r6	@, NextInstId
	add	ip, r2, #16	@ tmp294, tmp294,
	str	r3, [ip, #4]	@ tmp260, <variable>.GetFirstIFrameFlag
	bl	BTL_ClearTempImage	@
.L282:
	movw	r0, #18120	@ tmp299,
	mul	r9, r0, r6	@ tmp298, tmp299, NextInstId
	add	r8, r9, r7	@ tmp300, tmp298, tmp1019
	ldr	r3, [r8, #488]	@ temp.1243, <variable>.s321DFrameIsProc
	cmp	r3, #0	@ temp.1243,
	beq	.L359	@,
	cmp	r3, #1	@ temp.1243,
	beq	.L287	@,
.L284:
	movw	r1, #18120	@ tmp422,
	mla	r9, r1, r6, r7	@ tmp423, tmp422, NextInstId, tmp1019
	add	r3, r9, #40	@ tmp424, tmp423,
	ldr	r8, [r3, #4]	@ prephitmp.1282, <variable>.BTLDataSourceFlag
	cmp	r8, #1	@ prephitmp.1282,
	movne	r9, r4	@ PicBufID, PicBufID.1268
	beq	.L360	@,
.L294:
	cmp	r8, #0	@ prephitmp.1282,
	movne	r4, r9	@ PicBufID.1268, PicBufID
	bne	.L296	@,
	movw	r0, #18120	@ tmp464,
	mla	r3, r0, r6, r7	@ tmp465, tmp464, NextInstId, tmp1019
	add	r1, r3, #488	@ tmp466, tmp465,
	ldr	ip, [r3, #488]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	ip, #1	@ <variable>.s321DFrameIsProc,
	bne	.L297	@,
	ldr	ip, [r3, #180]	@, <variable>.Cur1DImage.image_width
	ldr	r2, [r1, #4]	@ D.36413, <variable>.s32OldImgWidth
	str	ip, [fp, #-136]	@, %sfp
	cmp	r2, ip	@ D.36413,
	ldr	r1, [r3, #184]	@, <variable>.Cur1DImage.image_height
	str	r1, [fp, #-140]	@, %sfp
	beq	.L361	@,
.L298:
	ldr	r1, [fp, #-128]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report, g_event_report
	cmp	ip, #0	@ g_event_report,
	beq	.L300	@,
	movw	r1, #18120	@ tmp498,
	strh	r2, [fp, #-52]	@ movhi	@ D.36413, para
	mla	r3, r1, r6, r7	@ tmp499, tmp498, NextInstId, tmp1019
	ldr	r0, [fp, #-136]	@, %sfp
	ldr	r2, [fp, #-140]	@, %sfp
	mov	r1, #8	@,
	strh	r0, [fp, #-48]	@ movhi	@, para
	mov	r0, r6	@, NextInstId
	strh	r2, [fp, #-46]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldr	lr, [r3, #496]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	strh	lr, [fp, #-50]	@ movhi	@ <variable>.s32OldImgHeight, para
	blx	ip	@ g_event_report
.L300:
	movw	r0, #18120	@ tmp508,
	ldr	r2, [fp, #-140]	@, %sfp
	mla	r3, r0, r6, r7	@ tmp509, tmp508, NextInstId, tmp1019
	str	r2, [r3, #496]	@, <variable>.s32OldImgHeight
	ldr	ip, [fp, #-136]	@, %sfp
	str	ip, [r3, #492]	@, <variable>.s32OldImgWidth
.L299:
	movw	r1, #18120	@ tmp520,
	mla	r2, r1, r6, r7	@ tmp521, tmp520, NextInstId, tmp1019
	ldr	r0, [r2, #504]	@ D.37355, <variable>.s32ValidImgNum
	cmp	r0, #0	@ D.37355,
	ble	.L297	@,
	ldr	r3, [r2, #600]	@ <variable>.LogicInfoIsUsed, <variable>.LogicInfoIsUsed
	cmp	r3, #1	@ <variable>.LogicInfoIsUsed,
	movls	r3, #0	@ PicBufID.1281,
	movls	r4, r3	@ PicBufID.1268, PicBufID.1281
	bls	.L302	@,
	tst	r0, #1	@ D.37355,
	mov	r3, r2	@ ivtmp.1237, tmp521
	mov	r4, #0	@ PicBufID.1268,
	bne	.L303	@,
	mov	r4, #1	@ PicBufID.1268,
	cmp	r4, r0	@ PicBufID.1268, D.37355
	bge	.L297	@,
	ldr	r2, [r2, #604]	@ D.37356, <variable>.LogicInfoIsUsed
	add	r3, r3, #4	@ ivtmp.1237, ivtmp.1237,
	cmp	r2, r4	@ D.37356,
	bhi	.L303	@,
.L304:
	mov	r3, r4	@ PicBufID.1281, PicBufID.1268
.L302:
	movw	r2, #4530	@ tmp535,
	mov	r9, #1	@ tmp538,
	mla	lr, r2, r6, r3	@ tmp536, tmp535, NextInstId, PicBufID.1281
	add	r8, lr, #150	@ tmp537, tmp536,
	str	r9, [r7, r8, asl #2]	@ tmp538, <variable>.LogicInfoIsUsed
.L296:
	ldr	r3, [fp, #-180]	@, %sfp
	movw	r9, #:lower16:g_btl_hal_fun_ptr	@ tmp1020,
	movt	r9, #:upper16:g_btl_hal_fun_ptr	@ tmp1020,
	ldr	r0, [r3, #16]	@ D.36426, g_btl_hal_fun_ptr.pfun_BTLHAL_Reset
	cmp	r0, #0	@ D.36426,
	beq	.L306	@,
	blx	r0	@ D.36426
.L307:
	movw	r0, #18120	@ tmp544,
	mul	r1, r0, r6	@ tmp543, tmp544, NextInstId
	add	r3, r1, r7	@ tmp545, tmp543, tmp1019
	ldr	r2, [r3, #44]	@ prephitmp.1208, <variable>.BTLDataSourceFlag
	cmp	r2, #0	@ prephitmp.1208,
	bne	.L308	@,
	movw	r0, #2265	@ tmp577,
	ldr	r8, [r3, #180]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mul	lr, r0, r6	@ tmp576, tmp577, NextInstId
	ldr	r0, [r1, r7]	@ <variable>.u32DNROpen, <variable>.u32DNROpen
	ldr	ip, [r3, #4]	@ <variable>.u32Is1D, <variable>.u32Is1D
	cmp	r8, #720	@ <variable>.Cur1DImage.image_width,
	ldr	r2, [r3, #176]	@ <variable>.Cur1DImage.format, <variable>.Cur1DImage.format
	add	r1, lr, #1	@ tmp578, tmp576,
	movw	lr, #:lower16:.LANCHOR0	@,
	movt	lr, #:upper16:.LANCHOR0	@,
	str	ip, [r3, #400]	@ <variable>.u32Is1D, <variable>.Cur1DImage.BTLInfo.u32Is1D
	add	r8, lr, r1, asl #3	@, tmp592,, tmp578,
	ubfx	r2, r2, #2, #3	@ prephitmp.1216, <variable>.Cur1DImage.format,,
	ldr	r1, [lr, r1, asl #3]	@ <variable>.u32IsCompress, <variable>.u32IsCompress
	ldr	ip, [r8, #4]	@ <variable>.u32Reversed, <variable>.u32Reversed
	str	r0, [r3, #440]	@ <variable>.u32DNROpen, <variable>.Cur1DImage.BTLInfo.u32DNROpen
	str	r2, [r3, #456]	@ prephitmp.1216, <variable>.Cur1DImage.BTLInfo.YUVFormat
	str	r1, [r3, #408]	@ <variable>.u32IsCompress, <variable>.Cur1DImage.BTLInfo.u32IsCompress
	str	ip, [r3, #452]	@ <variable>.u32Reversed, <variable>.Cur1DImage.BTLInfo.u32Reversed
	bls	.L362	@,
.L309:
	movw	r2, #18120	@ tmp632,
	mov	r0, #0	@,
	mla	r1, r2, r6, r7	@ tmp633, tmp632, NextInstId, tmp1019
	str	r0, [fp, #-164]	@, %sfp
	ldr	r2, [r1, #456]	@ prephitmp.1216, <variable>.Cur1DImage.BTLInfo.YUVFormat
	str	r0, [r1, #440]	@, <variable>.Cur1DImage.BTLInfo.u32DNROpen
.L310:
	movw	r3, #18120	@ tmp645,
	mla	r8, r3, r6, r7	@ tmp646, tmp645, NextInstId, tmp1019
	ldr	ip, [r8, #408]	@, <variable>.Cur1DImage.BTLInfo.u32IsCompress
	ldr	r1, [r8, #400]	@ <variable>.Cur1DImage.BTLInfo.u32Is1D, <variable>.Cur1DImage.BTLInfo.u32Is1D
	str	ip, [fp, #-152]	@, %sfp
	rsbs	ip, r1, #1	@, <variable>.Cur1DImage.BTLInfo.u32Is1D
	movcc	ip, #0	@
	cmp	r2, #0	@ prephitmp.1216,
	str	ip, [fp, #-144]	@, %sfp
	ldr	r2, [r8, #44]	@ prephitmp.1208, <variable>.BTLDataSourceFlag
	movne	r0, #0	@,
	moveq	ip, #2	@ tmp662,
	moveq	lr, #1	@,
	streq	ip, [r8, #456]	@ tmp662, <variable>.Cur1DImage.BTLInfo.YUVFormat
	strne	r0, [fp, #-156]	@, %sfp
	streq	lr, [fp, #-156]	@, %sfp
	strne	r0, [r8, #456]	@, <variable>.Cur1DImage.BTLInfo.YUVFormat
.L308:
	cmp	r2, #1	@ prephitmp.1208,
	beq	.L312	@,
	ldr	r8, [fp, #-156]	@, %sfp
	ldr	r1, [fp, #-152]	@, %sfp
	ldr	r2, [fp, #-164]	@, %sfp
	ldr	r0, [fp, #-144]	@, %sfp
	orr	ip, r8, r1	@ prephitmp.1219,,
	cmp	r2, #1	@,
	movne	r3, #0	@, prephitmp.1210
	moveq	r3, #1	@, prephitmp.1210
	orrs	r0, ip, r0	@, prephitmp.1219,
	movne	lr, #0	@,
	andeq	lr, r3, #1	@,, prephitmp.1210
	str	lr, [fp, #-184]	@, %sfp
.L313:
	movw	r2, #18120	@ tmp732,
	mul	r2, r2, r6	@ tmp731, tmp732, NextInstId
	add	r1, r2, r7	@ tmp733, tmp731, tmp1019
	add	lr, r2, #56	@ tmp738, tmp731,
	add	r8, r7, lr	@ pImg, tmp1019, tmp738
	ldr	r0, [r1, #44]	@ temp.1271, <variable>.BTLDataSourceFlag
	str	r4, [r1, #500]	@ PicBufID.1268, <variable>.CurImageBufID
	cmp	r0, #0	@ temp.1271,
	bne	.L314	@,
	mov	lr, #424	@ tmp747,
	movw	r0, #:lower16:.LANCHOR0	@,
	mla	r1, lr, r4, r2	@ tmp750, tmp747, PicBufID.1268, tmp731
	movt	r0, #:upper16:.LANCHOR0	@,
	add	r5, r1, #1136	@ tmp751, tmp750,
	add	r5, r0, r5	@ pImageLogic,, tmp751
.L315:
	ldr	lr, [r5, #388]	@, <variable>.BTLInfo.u32DNRInfoAddr
	mov	r1, r8	@, pImg
	mov	r2, #424	@,
	mov	r0, r5	@, pImageLogic
	str	lr, [fp, #-168]	@, %sfp
	ldr	lr, [r5, #100]	@, <variable>.luma_2d_phy_addr
	str	r3, [fp, #-192]	@,
	str	ip, [fp, #-196]	@,
	str	lr, [fp, #-188]	@, %sfp
	bl	memcpy	@
	ldr	ip, [fp, #-188]	@, %sfp
	movw	r3, #:lower16:g_VfmwGlobalStat	@,
	ldr	r2, [r5, #152]	@ <variable>.image_stride, <variable>.image_stride
	movt	r3, #:upper16:g_VfmwGlobalStat	@,
	str	r3, [fp, #-148]	@, %sfp
	ldr	r0, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	lr, [r5, #88]	@, <variable>.chrom_phy_addr
	mov	r3, r2, lsr #1	@ D.36464, <variable>.image_stride,
	ldr	r1, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	str	ip, [r5, #100]	@, <variable>.luma_2d_phy_addr
	add	ip, r0, #15	@ tmp768, <variable>.image_height,
	add	r1, r1, #15	@ tmp764, <variable>.image_width,
	str	r3, [r5, #376]	@ D.36464, <variable>.BTLInfo.u32CStride
	str	lr, [r5, #380]	@, <variable>.BTLInfo.u32CrAddr
	bic	lr, r1, #15	@ tmp767, tmp764,
	bic	r1, ip, #15	@ tmp771, tmp768,
	str	lr, [r5, #336]	@ tmp767, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r1, [r5, #340]	@ tmp771, <variable>.ImageDnr.s32VcmpFrameHeight
	ldr	r0, [fp, #-168]	@, %sfp
	str	r3, [r5, #372]	@ D.36464, <variable>.BTLInfo.u32CrStride
	str	r4, [r5, #348]	@ PicBufID.1268, <variable>.BTLInfo.btl_imageid
	str	r0, [r5, #388]	@, <variable>.BTLInfo.u32DNRInfoAddr
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #-160]	@, %sfp
	ldr	r1, [fp, #-184]	@, %sfp
	cmp	r1, #0	@,
	str	r0, [sl, #36]	@, <variable>.u32BaLastStartTime
	str	r6, [ip, #0]	@ NextInstId,
	ldr	r3, [fp, #-192]	@,
	movne	r3, #0	@,
	ldr	ip, [fp, #-196]	@,
	strne	r3, [fp, #-172]	@, %sfp
	bne	.L317	@,
	ldr	r0, [fp, #-144]	@, %sfp
	cmp	r0, #1	@,
	movne	r2, #0	@, D.36489
	moveq	r2, #1	@, D.36489
	cmp	ip, #0	@ prephitmp.1219,
	cmpeq	r0, #1	@,,
	bne	.L318	@,
	ldr	ip, [fp, #-164]	@, %sfp
	cmp	ip, #0	@,
	moveq	r1, #1	@,
	streq	r1, [fp, #-172]	@, %sfp
	beq	.L317	@,
	cmp	r3, #0	@ prephitmp.1210,
	movne	r2, #2	@,
	strne	r2, [fp, #-172]	@, %sfp
	bne	.L317	@,
.L318:
	ldr	r0, [fp, #-152]	@, %sfp
	ldr	lr, [fp, #-156]	@, %sfp
	cmp	r0, #1	@,
	movne	r1, #0	@, D.36500
	moveq	r1, #1	@, D.36500
	cmp	lr, #0	@,
	cmpeq	r0, #1	@,,
	bne	.L320	@,
	ldr	ip, [fp, #-144]	@, %sfp
	cmp	ip, #0	@,
	movne	r0, #0	@, tmp791
	andeq	r0, r3, #1	@,, tmp791, prephitmp.1210
	cmp	r0, #0	@ tmp791,
	movne	lr, #3	@,
	strne	lr, [fp, #-172]	@, %sfp
	bne	.L317	@,
	ldr	ip, [fp, #-164]	@, %sfp
	cmp	ip, #0	@,
	movne	r0, #0	@, tmp796
	andeq	r0, r2, #1	@,, tmp796, D.36489
	cmp	r0, #0	@ tmp796,
	movne	lr, #4	@,
	strne	lr, [fp, #-172]	@, %sfp
	beq	.L363	@,
.L317:
	movw	r1, #18120	@ tmp839,
	mla	r3, r1, r6, r7	@ tmp840, tmp839, NextInstId, tmp1019
	ldr	r2, [r3, #44]	@ temp.1284, <variable>.BTLDataSourceFlag
	cmp	r2, #0	@ temp.1284,
	beq	.L364	@,
	cmp	r2, #1	@ temp.1284,
	bne	.L332	@,
	ldr	r3, [r9, #8]	@ D.36561, g_btl_hal_fun_ptr.pfun_BTLHAL_GetInfo_Capture
	cmp	r3, #0	@ D.36561,
	beq	.L333	@,
	mov	r0, r8	@, pImg
	ldr	r2, [fp, #-172]	@, %sfp
	sub	r1, fp, #120	@,,
	blx	r3	@ D.36561
.L334:
	ldr	lr, [fp, #-80]	@ BtlCtrlReg.DbdrStride.dbr_stride, BtlCtrlReg.DbdrStride.dbr_stride
	movw	r3, #18120	@ tmp887,
	mla	r1, r3, r6, r7	@ tmp888, tmp887, NextInstId, tmp1019
	str	lr, [r5, #392]	@ BtlCtrlReg.DbdrStride.dbr_stride, <variable>.BTLInfo.u32DNRInfoStride
	ldr	ip, [fp, #-108]	@ BtlCtrlReg.HeadOffset, BtlCtrlReg.HeadOffset
	str	ip, [r5, #360]	@ BtlCtrlReg.HeadOffset, <variable>.BTLInfo.u32HeadOffset
	ldr	r2, [r1, #484]	@ <variable>.pCaptureImageOut, <variable>.pCaptureImageOut
	ldr	r3, [r1, #480]	@ <variable>.pCaptureImageIn, <variable>.pCaptureImageIn
	ldr	r2, [r2, #100]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [fp, #-104]	@ <variable>.luma_2d_phy_addr, BtlCtrlReg.YStaAddr2D
	ldr	lr, [r3, #124]	@ <variable>.image_width, <variable>.image_width
	add	ip, lr, #127	@ tmp899, <variable>.image_width,
	bic	r1, ip, #127	@ tmp902, tmp899,
	str	r1, [fp, #-84]	@ tmp902, BtlCtrlReg.YStride2D.y_stride_2d
.L331:
	movw	ip, #18120	@ tmp907,
	ldr	lr, [fp, #-168]	@, %sfp
	mla	r1, ip, r6, r7	@ tmp908, tmp907, NextInstId, tmp1019
	str	lr, [fp, #-100]	@, BtlCtrlReg.DbdrStaAddr
	ldr	r3, [r1, #44]	@ temp.1292, <variable>.BTLDataSourceFlag
	cmp	r3, #0	@ temp.1292,
	bne	.L335	@,
	ldr	r3, [fp, #-140]	@, %sfp
	ldr	lr, [fp, #-136]	@, %sfp
	adds	r1, r3, #15	@ tmp910,,
	addmi	r1, r3, #30	@, tmp912,,
	adds	r2, lr, #15	@ tmp916,,
	addmi	r2, lr, #30	@, tmp918,,
	mov	ip, r1, asr #4	@ tmp914, tmp912,
	mov	r0, r2, asr #4	@ tmp920, tmp918,
	adds	r3, r0, #7	@ tmp921, tmp920,
	mov	r1, ip, asl #8	@ tmp915, tmp914,
	addmi	r3, r0, #14	@, tmp923, tmp920,
	mov	r2, r3, asr #3	@ tmp925, tmp923,
	mul	ip, r2, r1	@ tmp926, tmp925, tmp915
	add	lr, ip, #7	@ tmp929, tmp926,
	cmp	ip, #0	@ tmp926,
	movlt	ip, lr	@ tmp928, tmp929
	mov	r0, ip, asr #3	@ tmp930, tmp928,
	add	r3, r0, r0, asl #1	@, tmp933, tmp930, tmp930,
	ldr	r0, [fp, #-168]	@, %sfp
	add	r1, r3, r3, lsr #31	@, tmp936, tmp933, tmp933,
	mov	lr, r1, asr #1	@ tmp937, tmp936,
	adds	r2, lr, #127	@ tmp938, tmp937,
	addmi	ip, lr, #254	@, tmp940, tmp937,
	movpl	ip, r2	@, tmp940, tmp938
	bic	r3, ip, #127	@ tmp943, tmp940,
	add	ip, r3, r0	@ D.36592, tmp943,
	str	ip, [fp, #-104]	@ D.36592, BtlCtrlReg.YStaAddr2D
	str	ip, [r5, #100]	@ D.36592, <variable>.luma_2d_phy_addr
	ldr	r1, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	mov	r0, ip	@ <variable>.luma_2d_phy_addr, D.36592
	ldr	r2, [fp, #-84]	@ BtlCtrlReg.YStride2D.y_stride_2d, BtlCtrlReg.YStride2D.y_stride_2d
	add	lr, r1, #15	@ tmp946, <variable>.image_height,
	mov	r2, r2, asl #4	@ tmp944, BtlCtrlReg.YStride2D.y_stride_2d,
	mov	r1, lr, lsr #4	@ tmp948, tmp946,
	mla	r3, r1, r2, ip	@ tmp950, tmp948, tmp944, D.36592
	str	r3, [r5, #104]	@ tmp950, <variable>.chrom_2d_phy_addr
.L336:
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r0, [r5, #104]	@, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	movw	r1, #18120	@ tmp964,
	mla	r2, r1, r6, r7	@ tmp965, tmp964, NextInstId, tmp1019
	ldr	ip, [r2, #400]	@ <variable>.Cur1DImage.BTLInfo.u32Is1D, <variable>.Cur1DImage.BTLInfo.u32Is1D
	cmp	ip, #0	@ <variable>.Cur1DImage.BTLInfo.u32Is1D,
	str	r0, [r5, #52]	@, <variable>.chrom_2d_vir_addr
	bne	.L337	@,
	ldr	r3, [fp, #-84]	@ BtlCtrlReg.YStride2D.y_stride_2d, BtlCtrlReg.YStride2D.y_stride_2d
	ldr	lr, [r5, #104]	@ <variable>.chrom_2d_phy_addr, <variable>.chrom_2d_phy_addr
	ldr	ip, [r5, #100]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r3, [r5, #152]	@ BtlCtrlReg.YStride2D.y_stride_2d, <variable>.image_stride
	ldr	r0, [fp, #-84]	@ temp.1307, BtlCtrlReg.YStride2D.y_stride_2d
	str	ip, [r5, #68]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	lr, [r5, #72]	@ <variable>.chrom_2d_phy_addr, <variable>.top_chrom_phy_addr
	str	r0, [r5, #376]	@ temp.1307, <variable>.BTLInfo.u32CStride
	str	r0, [r5, #372]	@ temp.1307, <variable>.BTLInfo.u32CrStride
.L337:
	ldr	r3, [r9, #12]	@ D.36612, g_btl_hal_fun_ptr.pfun_BTLHAL_CfgReg
	cmp	r3, #0	@ D.36612,
	beq	.L338	@,
	sub	r0, fp, #120	@,,
	blx	r3	@ D.36612
.L339:
	movw	r3, #18120	@ tmp977,
	ldr	r0, [r9, #20]	@ D.36619, g_btl_hal_fun_ptr.pfun_BTLHAL_Start
	mla	lr, r3, r6, r7	@ tmp978, tmp977, NextInstId, tmp1019
	mov	ip, #0	@ tmp980,
	movw	r1, #9616	@ tmp975,
	ldr	r2, [lr, #44]	@ <variable>.BTLDataSourceFlag, <variable>.BTLDataSourceFlag
	str	ip, [lr, r1]	@ tmp980, <variable>.DecChanRstFlag
	cmp	r2, #1	@ <variable>.BTLDataSourceFlag,
	str	r4, [lr, #500]	@ PicBufID.1268, <variable>.CurImageBufID
	movne	r2, ip	@, tmp1023,
	cmp	r0, ip	@ D.36619,
	str	r2, [lr, #48]	@ tmp1023, <variable>.BTLCaptureStartFlag
	beq	.L342	@,
	blx	r0	@ D.36619
.L343:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #-148]	@, %sfp
	movw	r1, #18120	@ tmp1014,
	mov	r3, #0	@ D.36624,
	mla	r7, r1, r6, r7	@ tmp1015, tmp1014, NextInstId, tmp1019
	str	r0, [ip, #36]	@, <variable>.u32BaLastStartTime
	mov	r0, #1	@ tmp1017,
	ldr	r2, [fp, #-160]	@, %sfp
	str	r6, [r2, #0]	@ NextInstId,
	str	r0, [r7, #24]	@ tmp1017, <variable>.InstMode
.L344:
	mov	r0, r3	@, D.36624
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L358:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp244,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp244,
	ldr	lr, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L279	@,
.L280:
	movw	r3, #18120	@ tmp264,
	mov	r2, #0	@,
	mla	r0, r3, r6, r7	@ tmp265, tmp264, NextInstId, tmp1019
	str	r2, [r0, #408]	@, <variable>.Cur1DImage.BTLInfo.u32IsCompress
	str	r2, [r0, #440]	@, <variable>.Cur1DImage.BTLInfo.u32DNROpen
	str	r2, [r0, #400]	@, <variable>.Cur1DImage.BTLInfo.u32Is1D
.L278:
	ldr	r0, [fp, #-176]	@, %sfp
	add	r3, r0, #1	@,,
	str	r3, [fp, #-176]	@, %sfp
	cmp	r3, #2	@,
	bne	.L345	@,
	mvn	r3, #0	@ D.36624,
	b	.L344	@
.L359:
	ldr	r3, [r8, #44]	@ <variable>.BTLDataSourceFlag, <variable>.BTLDataSourceFlag
	cmp	r3, #0	@ <variable>.BTLDataSourceFlag,
	bne	.L284	@,
	add	r1, r9, #56	@ tmp312, tmp298,
	movw	lr, #:lower16:.LANCHOR0	@,
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	r0, r6	@, NextInstId
	add	ip, lr, r1	@,, tmp312
	str	ip, [fp, #-148]	@, %sfp
	mov	r1, ip	@,
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@,
	bne	.L285	@,
	ldr	r0, [r8, #180]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r2, #1	@ tmp319,
	str	r2, [r8, #488]	@ tmp319, <variable>.s321DFrameIsProc
	cmp	r0, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L286	@,
	ldr	r3, [r8, #184]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r3, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L286	@,
.L287:
	movw	r0, #18120	@ tmp409,
	mul	r2, r0, r6	@ tmp408, tmp409, NextInstId
	add	ip, r2, r7	@ tmp410, tmp408, tmp1019
	add	r3, ip, #17920	@ tmp411, tmp410,
	add	r8, r3, #192	@ tmp411, tmp411,
	ldr	r9, [r8, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r9, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L284	@,
	add	r2, r2, #56	@ tmp416, tmp408,
	movw	lr, #:lower16:.LANCHOR0	@,
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	r0, r6	@, NextInstId
	add	r1, lr, r2	@,, tmp416
	bl	BTL_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L284	@,
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	b	.L284	@
.L305:
	ldr	ip, [r3, #604]	@ D.37356, <variable>.LogicInfoIsUsed
	add	r3, r2, #4	@ ivtmp.1237, tmp1035,
	cmp	ip, #1	@ D.37356,
	bls	.L304	@,
	ldr	ip, [r2, #604]	@ D.37356, <variable>.LogicInfoIsUsed
	add	r4, r4, #1	@ PicBufID.1268, PicBufID.1268,
	cmp	ip, #1	@ D.37356,
	bls	.L304	@,
.L303:
	add	r4, r4, #1	@ PicBufID.1268, PicBufID.1268,
	add	r2, r3, #4	@ tmp1035, ivtmp.1237,
	cmp	r4, r0	@ PicBufID.1268, D.37355
	blt	.L305	@,
.L297:
	mov	r4, r9	@ PicBufID.1268, PicBufID
	b	.L278	@
.L314:
	cmp	r0, #1	@ temp.1271,
	ldreq	r5, [r1, #484]	@ pImageLogic, <variable>.pCaptureImageOut
	b	.L315	@
.L335:
	cmp	r3, #1	@ temp.1292,
	ldreq	r3, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldreq	r2, [fp, #-84]	@ BtlCtrlReg.YStride2D.y_stride_2d, BtlCtrlReg.YStride2D.y_stride_2d
	addeq	r3, r3, #15	@ tmp953, <variable>.image_height,
	ldreq	r0, [r5, #100]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldrne	r0, [r5, #100]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	moveq	r3, r3, lsr #4	@ tmp955, tmp953,
	moveq	r2, r2, asl #4	@ tmp951, BtlCtrlReg.YStride2D.y_stride_2d,
	mlaeq	r3, r3, r2, r0	@ tmp958, tmp955, tmp951, <variable>.luma_2d_phy_addr
	streq	r3, [r5, #104]	@ tmp958, <variable>.chrom_2d_phy_addr
	b	.L336	@
.L357:
	ldr	r0, [r3, #488]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r0, #1	@ <variable>.s321DFrameIsProc,
	strne	r1, [r3, #44]	@ <variable>.BTLCaptureEnableFlag, <variable>.BTLDataSourceFlag
	movne	r3, #0	@,
	strne	r3, [r2, #4]	@, <variable>.BTLCaptureEnableFlag
	b	.L276	@
.L362:
	ldr	r3, [r3, #184]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r3, #576	@ <variable>.Cur1DImage.image_height,
	strls	r0, [fp, #-164]	@ <variable>.u32DNROpen, %sfp
	bls	.L310	@,
	b	.L309	@
.L363:
	tst	r2, r3	@ D.36489, prephitmp.1210
	movne	r0, #5	@,
	strne	r0, [fp, #-172]	@, %sfp
	bne	.L317	@,
.L320:
	ldr	lr, [fp, #-156]	@, %sfp
	ldr	r0, [fp, #-152]	@, %sfp
	cmp	lr, #1	@,
	movne	ip, #0	@, D.36519
	moveq	ip, #1	@, D.36519
	cmp	r0, #0	@,
	cmpeq	lr, #1	@,,
	bne	.L323	@,
	ldr	lr, [fp, #-144]	@, %sfp
	cmp	lr, #0	@,
	movne	r0, #0	@, tmp811
	andeq	r0, r3, #1	@,, tmp811, prephitmp.1210
	cmp	r0, #0	@ tmp811,
	movne	r0, #6	@,
	strne	r0, [fp, #-172]	@, %sfp
	bne	.L317	@,
	ldr	lr, [fp, #-164]	@, %sfp
	cmp	lr, #0	@,
	movne	r0, #0	@, tmp816
	andeq	r0, r2, #1	@,, tmp816, D.36489
	cmp	r0, #0	@ tmp816,
	movne	r0, #7	@,
	strne	r0, [fp, #-172]	@, %sfp
	bne	.L317	@,
	tst	r2, r3	@ D.36489, prephitmp.1210
	movne	r1, #8	@,
	strne	r1, [fp, #-172]	@, %sfp
	bne	.L317	@,
.L323:
	tst	ip, r1	@ D.36519, D.36500
	beq	.L317	@,
	ldr	ip, [fp, #-144]	@, %sfp
	cmp	ip, #0	@,
	movne	r1, #0	@, tmp827
	andeq	r1, r3, #1	@,, tmp827, prephitmp.1210
	cmp	r1, #0	@ tmp827,
	movne	lr, #9	@,
	strne	lr, [fp, #-172]	@, %sfp
	bne	.L317	@,
	ldr	r0, [fp, #-164]	@, %sfp
	cmp	r0, #0	@,
	movne	lr, #0	@, tmp832
	andeq	lr, r2, #1	@,, tmp832, D.36489
	cmp	lr, #0	@ tmp832,
	movne	lr, #10	@,
	strne	lr, [fp, #-172]	@, %sfp
	bne	.L317	@,
	tst	r2, r3	@ D.36489, prephitmp.1210
	ldr	r2, [fp, #-172]	@, %sfp
	movne	r2, #11	@,,
	str	r2, [fp, #-172]	@, %sfp
	b	.L317	@
.L360:
	ldr	r1, [r9, #480]	@, <variable>.pCaptureImageIn
	add	r0, r9, #56	@, tmp423,
	mov	r2, #424	@,
	str	r3, [fp, #-192]	@,
	bl	memcpy	@
	str	r8, [r9, #488]	@ prephitmp.1282, <variable>.s321DFrameIsProc
	ldr	r3, [fp, #-192]	@,
	ldr	r9, [r9, #404]	@ PicBufID, <variable>.Cur1DImage.BTLInfo.btl_imageid
	ldr	r8, [r3, #4]	@ prephitmp.1282, <variable>.BTLDataSourceFlag
	b	.L294	@
.L312:
	movw	r3, #18120	@ tmp691,
	str	r2, [fp, #-156]	@ prephitmp.1208, %sfp
	mla	r2, r3, r6, r7	@ tmp692, tmp691, NextInstId, tmp1019
	ldr	ip, [fp, #-156]	@, %sfp
	mov	r3, #0	@,
	str	r3, [fp, #-184]	@, %sfp
	str	r3, [fp, #-164]	@ prephitmp.1210, %sfp
	str	ip, [fp, #-144]	@, %sfp
	ldr	r8, [r2, #480]	@ <variable>.pCaptureImageIn, <variable>.pCaptureImageIn
	ldr	r1, [r2, #408]	@, <variable>.Cur1DImage.BTLInfo.u32IsCompress
	orr	ip, r1, #1	@ prephitmp.1219,,
	str	r1, [fp, #-152]	@, %sfp
	ldr	r0, [r8, #400]	@ <variable>.BTLInfo.YUVFormat, <variable>.BTLInfo.YUVFormat
	ldr	lr, [r8, #396]	@ <variable>.BTLInfo.u32Reversed, <variable>.BTLInfo.u32Reversed
	str	r3, [r2, #400]	@ prephitmp.1210, <variable>.Cur1DImage.BTLInfo.u32Is1D
	str	r0, [r2, #456]	@ <variable>.BTLInfo.YUVFormat, <variable>.Cur1DImage.BTLInfo.YUVFormat
	str	lr, [r2, #452]	@ <variable>.BTLInfo.u32Reversed, <variable>.Cur1DImage.BTLInfo.u32Reversed
	b	.L313	@
.L306:
	movw	r1, #:lower16:.LC31	@,
	mov	r2, #592	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L307	@
.L338:
	mov	r0, r3	@, D.36612
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #769	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L339	@
.L342:
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #782	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L343	@
.L333:
	mov	r0, r3	@, D.36561
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #717	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L334	@
.L361:
	ldr	r3, [r3, #496]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r3, r1	@ <variable>.s32OldImgHeight,
	bne	.L298	@,
	b	.L299	@
.L332:
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	b	.L278	@
.L364:
	ldr	r3, [r9, #4]	@ D.36547, g_btl_hal_fun_ptr.pfun_BTLHAL_GetInfo
	cmp	r3, #0	@ D.36547,
	beq	.L329	@,
	mov	r0, r8	@, pImg
	ldr	r2, [fp, #-172]	@, %sfp
	sub	r1, fp, #120	@,,
	blx	r3	@ D.36547
.L330:
	movw	r3, #18120	@ tmp851,
	mov	r2, #424	@ tmp849,
	mul	lr, r3, r6	@ tmp850, tmp851, NextInstId
	ldr	r1, [fp, #-80]	@ BtlCtrlReg.DbdrStride.dbr_stride, BtlCtrlReg.DbdrStride.dbr_stride
	mla	ip, r2, r4, lr	@ tmp852, tmp849, PicBufID.1268, tmp850
	add	r3, ip, r7	@ tmp853, tmp852, tmp1019
	str	r1, [r3, #1528]	@ BtlCtrlReg.DbdrStride.dbr_stride, <variable>.BTLInfo.u32DNRInfoStride
	ldr	r2, [r3, #1260]	@ <variable>.image_width, <variable>.image_width
	ldr	lr, [fp, #-108]	@ BtlCtrlReg.HeadOffset, BtlCtrlReg.HeadOffset
	add	r2, r2, #127	@ tmp875, <variable>.image_width,
	bic	ip, r2, #127	@ tmp878, tmp875,
	str	lr, [r3, #1496]	@ BtlCtrlReg.HeadOffset, <variable>.BTLInfo.u32HeadOffset
	str	ip, [fp, #-84]	@ tmp878, BtlCtrlReg.YStride2D.y_stride_2d
	b	.L331	@
.L286:
	mov	r0, r6	@, NextInstId
	movw	r8, #18120	@ tmp337,
	bl	VCTRL_GetLastFrameIdPlus2	@
	mul	r8, r8, r6	@ tmp336, tmp337, NextInstId
	ldr	r1, [fp, #-132]	@, %sfp
	add	r2, r8, r7	@ tmp338, tmp336, tmp1019
	ldr	r3, [r2, #212]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	r1, ip, r1, r3	@, tmp342,, <variable>.Cur1DImage.image_id
	mov	r1, #100	@ tmp345,
	mov	ip, ip, lsr #5	@ tmp340, tmp342,
	mls	r3, r1, ip, r3	@ tmp346, tmp345, tmp340, <variable>.Cur1DImage.image_id
	add	ip, r3, #2	@ tmp347, tmp346,
	cmp	r0, ip	@, tmp347
	beq	.L365	@,
.L288:
	ldr	r1, [fp, #-148]	@, %sfp
	mov	r0, r6	@, NextInstId
	bl	VCTRL_ReleaseChanImage	@
	movw	r2, #18120	@ tmp381,
	mla	r3, r2, r6, r7	@ tmp382, tmp381, NextInstId, tmp1019
	mov	r1, #0	@,
	str	r1, [r3, #488]	@, <variable>.s321DFrameIsProc
	b	.L278	@
.L329:
	mov	r0, r3	@, D.36547
	movw	r1, #:lower16:.LC31	@,
	movw	r2, #709	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L330	@
.L285:
	mov	r0, r6	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L278	@,
	ldr	r2, .L368	@,
	movw	r3, #527	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	add	ip, r9, r0	@ tmp393, tmp298,
	add	r0, ip, #764	@, tmp393,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1252,
	mov	r1, r0	@ ret.1252,
	beq	.L366	@,
	ldr	r2, [fp, #-128]	@, %sfp
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L292	@,
	sub	r2, fp, #44	@ tmp404,,
	mov	r0, r6	@, NextInstId
	str	r1, [r2, #-8]!	@ ret.1252, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L292:
	mov	r0, r6	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L278	@
.L365:
	ldr	r3, [r2, #184]	@, <variable>.Cur1DImage.image_height
	mov	r0, #2	@,
	ldr	r2, [r2, #180]	@, <variable>.Cur1DImage.image_width
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	add	r0, r8, r2	@ tmp365, tmp336,
	add	r0, r0, #764	@, tmp365,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret,
	mov	r1, r0	@ ret,
	beq	.L367	@,
	ldr	r0, [fp, #-128]	@, %sfp
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L290	@,
	sub	r2, fp, #44	@ tmp376,,
	mov	r0, r6	@, NextInstId
	str	r1, [r2, #-8]!	@ ret, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L290:
	mov	r0, r6	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L288	@
.L367:
	ldr	lr, [fp, #-128]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L290	@,
	sub	r2, fp, #44	@ tmp371,,
	add	ip, r0, #2	@ tmp369, tmp369,
	add	r1, ip, #114	@,,
	mov	r0, r6	@, NextInstId
	str	ip, [r2, #-8]!	@ tmp369, para
	blx	r3	@ g_event_report
	b	.L290	@
.L366:
	ldr	lr, [fp, #-128]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L292	@,
	sub	r2, fp, #44	@ tmp399,,
	add	r1, r0, #2	@ tmp397, tmp397,
	mov	r0, r6	@, NextInstId
	str	r1, [r2, #-8]!	@ tmp397, para
	add	r1, r1, #114	@,,
	blx	r3	@ g_event_report
	b	.L292	@
.L369:
	.align	2
.L368:
	.word	.LANCHOR2+84
	.fnend
	.size	BTL_DoNextInstance, .-BTL_DoNextInstance
	.global	__aeabi_uidiv
	.align	2
	.global	BTL_IntServeProc
	.type	BTL_IntServeProc, %function
BTL_IntServeProc:
	.fnstart
.LFB1362:
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
	ldr	r0, .L382	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:g_btl_hal_fun_ptr	@ tmp145,
	movt	r3, #:upper16:g_btl_hal_fun_ptr	@ tmp145,
	movw	r4, #:lower16:.LANCHOR3	@ tmp208,
	movt	r4, #:upper16:.LANCHOR3	@ tmp208,
	ldr	r0, [r3, #24]	@ D.36685, g_btl_hal_fun_ptr.pfun_BTLHAL_ClearIntState
	cmp	r0, #0	@ D.36685,
	beq	.L371	@,
	blx	r0	@ D.36685
.L372:
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp206,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp206,
	ldr	r0, [r7, #36]	@ <variable>.u32BaLastStartTime, <variable>.u32BaLastStartTime
	cmp	r0, #0	@ <variable>.u32BaLastStartTime,
	bne	.L379	@,
.L373:
	ldr	r0, [r4, #-2884]	@ s_BtlCtrl.BTLState, s_BtlCtrl.BTLState
	movw	r3, #:lower16:.LANCHOR3	@ tmp174,
	movt	r3, #:upper16:.LANCHOR3	@ tmp174,
	cmp	r0, #1	@ s_BtlCtrl.BTLState,
	beq	.L380	@,
.L376:
	ldr	r0, .L382	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L380:
	ldr	r0, [r3, #-2888]	@ D.36708, s_BtlCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp207,
	movt	r5, #:upper16:.LANCHOR0	@ tmp207,
	movw	ip, #18120	@ tmp180,
	mla	r2, ip, r0, r5	@ tmp181, tmp180, D.36708, tmp207
	ldr	r1, [r2, #24]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r1, #1	@ <variable>.InstMode,
	beq	.L381	@,
.L377:
	ldr	r1, [r4, #-2888]	@ s_BtlCtrl.ThisInstID, s_BtlCtrl.ThisInstID
	movw	lr, #18120	@ tmp191,
	mov	r3, #0	@ tmp185,
	sub	r0, fp, #32	@,,
	str	r3, [r4, #-2884]	@ tmp185, s_BtlCtrl.BTLState
	movw	r4, #:lower16:.LANCHOR3	@ tmp184,
	mla	r5, lr, r1, r5	@ tmp192, tmp191, s_BtlCtrl.ThisInstID, tmp207
	movt	r4, #:upper16:.LANCHOR3	@ tmp184,
	str	r3, [r5, #488]	@ tmp185, <variable>.s321DFrameIsProc
	bl	BTL_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L376	@,
	ldr	r0, [fp, #-32]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp199,
	str	r2, [r4, #-2884]	@ tmp199, s_BtlCtrl.BTLState
	str	r0, [r4, #-2888]	@ NextInstID, s_BtlCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #-2880]	@, s_BtlCtrl.LastProcessTime
	b	.L376	@
.L379:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #32]	@ <variable>.u32BaBeginTime, <variable>.u32BaBeginTime
	ldr	ip, [r7, #36]	@ prephitmp.1332, <variable>.u32BaLastStartTime
	add	r6, r3, #49920	@ tmp151, <variable>.u32BaBeginTime,
	add	r5, r6, #80	@ tmp151, tmp151,
	mov	r6, #0	@ tmp162,
	cmp	r5, ip	@ tmp151, prephitmp.1332
	strcc	ip, [r7, #32]	@ prephitmp.1332, <variable>.u32BaBeginTime
	ldr	r1, [r7, #32]	@ <variable>.u32BaBeginTime, <variable>.u32BaBeginTime
	movw	r5, #:lower16:g_VfmwGlobalStat	@ tmp160,
	ldrcs	r3, [r7, #40]	@ prephitmp.1345, <variable>.u32BaBtlWorkTime
	movcc	r3, #0	@ prephitmp.1345,
	movt	r5, #:upper16:g_VfmwGlobalStat	@ tmp160,
	str	r6, [r7, #36]	@ tmp162, <variable>.u32BaLastStartTime
	rsb	r1, r1, r0	@ Period, <variable>.u32BaBeginTime, CurTime
	add	r2, r3, r0	@ tmp159, prephitmp.1345, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r2	@ D.36700, prephitmp.1332, tmp159
	str	r3, [r7, #40]	@ D.36700, <variable>.u32BaBtlWorkTime
	bcc	.L373	@,
	mov	lr, #1000	@ tmp168,
	mul	r0, lr, r3	@, tmp168, D.36700
	bl	__aeabi_uidiv	@
	str	r6, [r5, #32]	@ tmp162, <variable>.u32BaBeginTime
	str	r0, [r5, #44]	@, <variable>.u32BaBtlLoad
	b	.L373	@
.L371:
	movw	r1, #:lower16:.LC31	@,
	mov	r2, #864	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L372	@
.L381:
	bl	BTL_ProcessBtlReturn	@
	b	.L377	@
.L383:
	.align	2
.L382:
	.word	.LANCHOR3-2840
	.fnend
	.size	BTL_IntServeProc, .-BTL_IntServeProc
	.align	2
	.global	BTL_Wakeup
	.type	BTL_Wakeup, %function
BTL_Wakeup:
	.fnstart
.LFB1361:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp212,
	movt	r4, #:upper16:.LANCHOR3	@ tmp212,
	ldr	r3, [r4, #-2884]	@ s_BtlCtrl.BTLState, s_BtlCtrl.BTLState
	cmp	r3, #0	@ s_BtlCtrl.BTLState,
	bne	.L385	@,
	sub	r0, fp, #32	@,,
	bl	BTL_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L393	@,
.L386:
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L385:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #-2880]	@ s_BtlCtrl.LastProcessTime, s_BtlCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp152, s_BtlCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp152,
	ble	.L386	@,
	ldr	r0, [r4, #-2888]	@, s_BtlCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp213,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r3, [r4, #-2888]	@ prephitmp.1361, s_BtlCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp213,
	movw	r6, #18120	@ tmp160,
	movw	r2, #:lower16:1374389535	@ tmp166,
	movt	r2, #:upper16:1374389535	@ tmp166,
	mla	r1, r6, r3, r5	@ tmp161, tmp160, prephitmp.1361, tmp213
	ldr	r1, [r1, #212]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r2, r2, r1	@, tmp165, tmp166, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp168,
	mov	r2, r2, lsr #5	@ tmp163, tmp165,
	mls	r1, ip, r2, r1	@ tmp169, tmp168, tmp163, <variable>.Cur1DImage.image_id
	add	r1, r1, #2	@ tmp170, tmp169,
	cmp	r0, r1	@, tmp170
	beq	.L394	@,
.L387:
	movw	r6, #18120	@ tmp194,
	mov	r0, r3	@, prephitmp.1361
	mla	lr, r6, r3, r5	@ tmp196, tmp194, prephitmp.1361, tmp213
	add	r1, lr, #56	@, tmp196,
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r4, #-2888]	@ s_BtlCtrl.ThisInstID, s_BtlCtrl.ThisInstID
	mov	r3, #0	@ tmp205,
	movw	r1, #:lower16:.LC34	@,
	mov	r0, r3	@, tmp205
	movt	r1, #:upper16:.LC34	@,
	mla	r5, r6, ip, r5	@ tmp203, tmp194, s_BtlCtrl.ThisInstID, tmp213
	str	r3, [r5, #488]	@ tmp205, <variable>.s321DFrameIsProc
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_btl_hal_fun_ptr	@ tmp207,
	movt	r2, #:upper16:g_btl_hal_fun_ptr	@ tmp207,
	ldr	r0, [r2, #16]	@ D.36673, g_btl_hal_fun_ptr.pfun_BTLHAL_Reset
	cmp	r0, #0	@ D.36673,
	beq	.L390	@,
	blx	r0	@ D.36673
.L391:
	mov	r1, #0	@ tmp210,
	str	r1, [r4, #-2884]	@ tmp210, s_BtlCtrl.BTLState
	b	.L386	@
.L393:
	ldr	r0, [fp, #-32]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp149,
	str	r1, [r4, #-2884]	@ tmp149, s_BtlCtrl.BTLState
	str	r0, [r4, #-2888]	@ NextInstID, s_BtlCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #-2880]	@, s_BtlCtrl.LastProcessTime
	b	.L386	@
.L390:
	movw	r1, #:lower16:.LC31	@,
	mov	r2, #840	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	b	.L391	@
.L394:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #-2888]	@ s_BtlCtrl.ThisInstID, s_BtlCtrl.ThisInstID
	mla	r3, r6, r0, r5	@ tmp178, tmp160, s_BtlCtrl.ThisInstID, tmp213
	add	r0, r3, #764	@, tmp178,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L395	@,
	movw	ip, #:lower16:g_event_report	@ tmp185,
	movt	ip, #:upper16:g_event_report	@ tmp185,
	ldr	r3, [ip, #0]	@ g_event_report.1374, g_event_report
	cmp	r3, #0	@ g_event_report.1374,
	beq	.L389	@,
	sub	r2, fp, #28	@ tmp188,,
	ldr	r0, [r4, #-2888]	@, s_BtlCtrl.ThisInstID
	str	r1, [r2, #-8]!	@ ret_val, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.1374
.L389:
	ldr	r0, [r4, #-2888]	@, s_BtlCtrl.ThisInstID
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r3, [r4, #-2888]	@ prephitmp.1361, s_BtlCtrl.ThisInstID
	b	.L387	@
.L395:
	movw	r6, #:lower16:g_event_report	@ tmp180,
	movt	r6, #:upper16:g_event_report	@ tmp180,
	ldr	r3, [r6, #0]	@ g_event_report.457, g_event_report
	cmp	r3, #0	@ g_event_report.457,
	beq	.L389	@,
	sub	r2, fp, #28	@ tmp184,,
	mov	lr, #1	@ tmp181,
	ldr	r0, [r4, #-2888]	@, s_BtlCtrl.ThisInstID
	mov	r1, #115	@,
	str	lr, [r2, #-8]!	@ tmp181, para
	blx	r3	@ g_event_report.457
	b	.L389	@
	.fnend
	.size	BTL_Wakeup, .-BTL_Wakeup
	.align	2
	.global	BTL_GetState
	.type	BTL_GetState, %function
BTL_GetState:
	.fnstart
.LFB1358:
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
	subs	r4, r1, #0	@ pstBtlChanState, pstBtlChanState
	mov	r5, r0	@ ChanID, ChanID
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@, pstBtlChanState
	mov	r1, #80	@,
	bl	__memzero	@
	movw	r1, #18120	@ tmp138,
	mul	r5, r1, r5	@ tmp137, tmp138, ChanID
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	add	r2, r4, #76	@, pstBtlChanState,
	add	r1, r4, #72	@, pstBtlChanState,
	add	ip, r5, r3	@ tmp139, tmp137, tmp135
	add	r0, ip, #764	@, tmp146,
	ldr	r3, [ip, #504]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r3, [r4, #68]	@ <variable>.s32ValidImgNum, <variable>.total_frame_num
	bl	IMGQUE_GetImageNum	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	BTL_GetState, .-BTL_GetState
	.align	2
	.global	BTL_CloseDrivers
	.type	BTL_CloseDrivers, %function
BTL_CloseDrivers:
	.fnstart
.LFB1350:
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
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r1, [r4, #16]	@, <variable>.stBtlReg.VirAddr
	ldr	r0, [r0, #12]	@, <variable>.stBtlReg.PhyAddr
	ldr	r2, [r4, #20]	@, <variable>.stBtlReg.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #20]	@ <variable>.stBtlReg.Length, <variable>.stBtlReg.Length
	cmp	r3, #0	@ <variable>.stBtlReg.Length,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r0, [r4, #12]	@, <variable>.stBtlReg.PhyAddr
	ldr	r1, [r4, #16]	@, <variable>.stBtlReg.VirAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #12	@, pstDrvMem,
	mov	r1, #12	@,
	bl	__memzero	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BTL_CloseDrivers, .-BTL_CloseDrivers
	.align	2
	.global	BTL_Close
	.type	BTL_Close, %function
BTL_Close:
	.fnstart
.LFB1379:
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
	ldr	r4, .L404	@ tmp144,
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	movw	ip, #18140	@ tmp141,
	movw	r1, #18144	@ tmp138,
	mov	r2, #0	@ tmp134,
	add	r0, r4, #28	@, tmp144,
	str	r2, [r3, r1]	@ tmp134, <variable>.InstMode
	str	r2, [r3, ip]	@ tmp134, <variable>.s32IsOpen
	str	r2, [r3, #24]	@ tmp134, <variable>.InstMode
	str	r2, [r3, #20]	@ tmp134, <variable>.s32IsOpen
	bl	BTL_CloseDrivers	@
	mov	r0, r4	@, tmp144
	mov	r1, #56	@,
	bl	__memzero	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L405:
	.align	2
.L404:
	.word	.LANCHOR3-2904
	.fnend
	.size	BTL_Close, .-BTL_Close
	.align	2
	.global	BTL_OpenDrivers
	.type	BTL_OpenDrivers, %function
BTL_OpenDrivers:
	.fnstart
.LFB1351:
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
	mov	r1, #4096	@,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	movw	r0, #:lower16:-120586240	@,
	add	r2, r4, #12	@, pstDrvMem,
	movt	r0, #:upper16:-120586240	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L410	@,
	mov	r0, r4	@, pstDrvMem
	bl	BTL_CloseDrivers	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L410:
	add	r0, r4, #12
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BTL_OpenDrivers, .-BTL_OpenDrivers
	.align	2
	.global	BTL_Init
	.type	BTL_Init, %function
BTL_Init:
	.fnstart
.LFB1363:
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
	movw	r3, #:lower16:g_btl_hal_fun_ptr	@ tmp137,
	movt	r3, #:upper16:g_btl_hal_fun_ptr	@ tmp137,
	ldr	r0, [r3, #0]	@ D.36730, g_btl_hal_fun_ptr.pfun_BTLDRV_OpenHardware
	cmp	r0, #0	@ D.36730,
	beq	.L412	@,
	movw	r4, #:lower16:.LANCHOR3	@ tmp139,
	movt	r4, #:upper16:.LANCHOR3	@ tmp139,
	blx	r0	@ D.36730
	ldr	r5, [r4, #-2904]	@ s_BtlCtrl.s32IsVCTRLOpen, s_BtlCtrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_BtlCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36738,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
.L417:
	ldr	r0, .L418	@,
	mov	r1, #56	@,
	bl	__memzero	@
	movw	r1, #18120	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	ldr	r0, .L418+4	@,
	bl	BTL_OpenDrivers	@
	bl	BTL_Fsp_Init	@
	mov	r1, #1	@ tmp150,
	mov	r0, r5	@ D.36738, s_BtlCtrl.s32IsVCTRLOpen
	str	r1, [r4, #-2904]	@ tmp150, s_BtlCtrl.s32IsVCTRLOpen
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L412:
	movw	r4, #:lower16:.LANCHOR3	@ tmp139,
	movt	r4, #:upper16:.LANCHOR3	@ tmp139,
	movw	r1, #:lower16:.LC31	@,
	mov	r2, #916	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	ldr	r5, [r4, #-2904]	@ s_BtlCtrl.s32IsVCTRLOpen, s_BtlCtrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_BtlCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36738,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	b	.L417	@
.L419:
	.align	2
.L418:
	.word	.LANCHOR3-2904
	.word	.LANCHOR3-2876
	.fnend
	.size	BTL_Init, .-BTL_Init
	.align	2
	.global	ResetBTL
	.type	ResetBTL, %function
ResetBTL:
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
	movw	r0, #:lower16:-244178576	@,
	mov	r1, #1	@,
	movt	r0, #:upper16:-244178576	@,
	bl	MEM_WritePhyWord	@
.L421:
	movw	r0, #:lower16:-120586144	@,
	movt	r0, #:upper16:-120586144	@,
	bl	MEM_ReadPhyWord	@
	subs	r1, r0, #0	@ D.36032,
	bne	.L421	@,
	movw	r0, #:lower16:-244178576	@,
	movt	r0, #:upper16:-244178576	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ResetBTL, .-ResetBTL
	.global	s_BtlCtrl
	.global	s_BtlChan
	.global	g_SpinLockIsr_BtlIsr
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.37213, %object
	.size	__func__.37213, 17
__func__.37213:
	.ascii	"BTL_ReleaseImage\000"
	.space	3
	.type	__func__.37031, %object
	.size	__func__.37031, 17
__func__.37031:
	.ascii	"BTL_DiscardImage\000"
	.space	3
	.type	__func__.37089, %object
	.size	__func__.37089, 17
__func__.37089:
	.ascii	"BTL_ReceiveImage\000"
	.space	3
	.type	__func__.36188, %object
	.size	__func__.36188, 21
__func__.36188:
	.ascii	"BTL_ProcessBtlReturn\000"
	.space	3
	.type	__func__.36309, %object
	.size	__func__.36309, 19
__func__.36309:
	.ascii	"BTL_DoNextInstance\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Btl_drv.c,L%d: %s\012\000"
	.space	1
.LC1:
	.ascii	"pImageQueue is NULL\000"
.LC2:
	.ascii	"ImageID out of range\000"
	.space	3
.LC3:
	.ascii	"can not find instance ID\000"
	.space	3
.LC4:
	.ascii	"FATAL ERROR: line %d BTL_PushTempImageToVOQ failed!"
	.ascii	"\012\000"
	.space	3
.LC5:
	.ascii	"line %d clear all tmp img!\012\000"
.LC6:
	.ascii	"ChanID out of range\000"
.LC7:
	.ascii	"can NOT start a not-opened Chan\000"
.LC8:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC9:
	.ascii	"ChanID out of range!\000"
	.space	3
.LC10:
	.ascii	"p_image is NULL\000"
.LC11:
	.ascii	"This channel %d is destroyed or doesn't exist\012\000"
	.space	1
.LC12:
	.ascii	"line %d: BTL release image_id = %d failed!\012\000"
.LC13:
	.ascii	"view_0 id(%d) > view_1 id(%d), error!\012\000"
	.space	1
.LC14:
	.ascii	"continuous view0 id(%d)!\012\000"
	.space	2
.LC15:
	.ascii	"continuous view1 id(%d)!\012\000"
	.space	2
.LC16:
	.ascii	"line: %d, btl failed!\012\000"
	.space	1
.LC17:
	.ascii	"LQue%d\000"
	.space	1
.LC18:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC19:
	.ascii	"can NOT reset a not-opened Chan\000"
.LC20:
	.ascii	"can NOT destroy a not-opened Chan\000"
	.space	2
.LC21:
	.ascii	"FATAL ERROR: line %d DNR_PushTempImageToVOQ failed!"
	.ascii	"\012\000"
	.space	3
.LC22:
	.ascii	"FATAL ERROR: line %d IMGQUE_InsertImage failed!\012"
	.ascii	"\000"
	.space	3
.LC23:
	.ascii	"WARNNING:Get first image is not I type!\012\000"
	.space	3
.LC24:
	.ascii	"image_width out of range!\000"
	.space	2
.LC25:
	.ascii	"Last frame ID changed, vdmQ_id(%d) -> btlQ_id(%d).\012"
	.ascii	"\000"
.LC26:
	.ascii	"Line %d Dnr fast forward fast back failed!\012\000"
.LC27:
	.ascii	"WRONG:BTLDataSourceFlag = %d\012\000"
	.space	2
.LC28:
	.ascii	"Last frame output failed, image size err!image_widt"
	.ascii	"h: %d, image_height: %d\012\000"
.LC29:
	.ascii	"Last frame already output: %s, %d.\012\000"
.LC30:
	.ascii	"Dnr fast forward fast back failed!\012\000"
.LC31:
	.ascii	"BTLHAL_NULL_FUN_RETURN,L%d\012\000"
.LC32:
	.ascii	"WARNNING: BTLDataSourceFlag = %d\012\000"
	.space	2
.LC33:
	.ascii	"Last frame output failed, DelayTime > 500!\012\000"
.LC34:
	.ascii	"*********************** BTL not ready *************"
	.ascii	"**********\012\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 32736
.LANCHOR3 = . + 57288
	.type	s_BtlChan, %object
	.size	s_BtlChan, 36240
s_BtlChan:
	.space	36240
	.type	last_rec_pos_time.37209, %object
	.size	last_rec_pos_time.37209, 8
last_rec_pos_time.37209:
	.space	8
	.type	last_rec_pos_time.37029, %object
	.size	last_rec_pos_time.37029, 8
last_rec_pos_time.37029:
	.space	8
	.type	last_rec_pos_time.37082, %object
	.size	last_rec_pos_time.37082, 8
last_rec_pos_time.37082:
	.space	8
	.type	CurrBtlChan.36080, %object
	.size	CurrBtlChan.36080, 18120
CurrBtlChan.36080:
	.space	18120
	.type	s_BtlCtrl, %object
	.size	s_BtlCtrl, 56
s_BtlCtrl:
	.space	56
	.type	last_rec_pos_time.36182, %object
	.size	last_rec_pos_time.36182, 8
last_rec_pos_time.36182:
	.space	8
	.type	g_SpinLockIsr_BtlIsr, %object
	.size	g_SpinLockIsr_BtlIsr, 48
g_SpinLockIsr_BtlIsr:
	.space	48
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
