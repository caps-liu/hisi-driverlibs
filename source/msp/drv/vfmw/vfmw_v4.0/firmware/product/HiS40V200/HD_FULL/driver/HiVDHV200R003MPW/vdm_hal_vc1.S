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
	.file	"vdm_hal_vc1.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_vc1.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vc1.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_vc1.o
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
	.global	VC1HAL_V200R003MPW_InitHal
	.type	VC1HAL_V200R003MPW_InitHal, %function
VC1HAL_V200R003MPW_InitHal:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1HAL_V200R003MPW_InitHal, .-VC1HAL_V200R003MPW_InitHal
	.align	2
	.global	VC1HAL_V200R003MPW_CfgReg
	.type	VC1HAL_V200R003MPW_CfgReg, %function
VC1HAL_V200R003MPW_CfgReg:
	.fnstart
.LFB1349:
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
	movw	r3, #1148	@ tmp169,
	mov	r9, r2	@ VdhId, VdhId
	movw	r4, #:lower16:77988	@ tmp178,
	mul	r2, r3, r2	@ tmp168, tmp169, VdhId
	movw	r3, #:lower16:g_HwMem	@ tmp306,
	movt	r3, #:upper16:g_HwMem	@ tmp306,
	movt	r4, #:upper16:77988	@ tmp178,
	mov	ip, r0	@ pVc1DecParam, pVc1DecParam
	mvn	r8, #0	@ tmp172,
	movw	r0, #:lower16:77992	@ tmp187,
	movt	r0, #:upper16:77992	@ tmp187,
	movw	r7, #:lower16:77996	@ tmp203,
	movt	r7, #:upper16:77996	@ tmp203,
	ldr	r6, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r5, #:lower16:3148803	@ tmp215,
	movt	r5, #:upper16:3148803	@ tmp215,
	str	r8, [r6, #32]	@ tmp172,
	movw	r6, #:lower16:78000	@ tmp252,
	ldr	sl, [ip, r4]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	movt	r6, #:upper16:78000	@ tmp252,
	movw	r4, #:lower16:78040	@ tmp253,
	movt	r4, #:upper16:78040	@ tmp253,
	bic	r8, sl, #-16777216	@ tmp179, <variable>.basic_cfg0,
	bic	sl, r8, #15728640	@ tmp179, tmp179,
	orr	r8, sl, #1090519040	@, tmp179,
	ldr	sl, [r2, r3]	@, <variable>.pVdmRegVirAddr
	str	r8, [sl, #8]	@,
	ldr	r8, [ip, r0]	@ D.31421, <variable>.basic_cfg1
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r0, #12]	@ D.31421,
	ldr	r8, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r1, #44]	@ D.31424, <variable>.MsgSlotAddr
	str	r0, [r8, #16]	@ D.31424,
	ldr	r0, [r1, #28]	@ D.31427, <variable>.MsgSlotAddr
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r1, #20]	@ D.31427,
	ldr	r0, [ip, r7]	@ D.31431, <variable>.stream_base_addr
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r7, #24]	@ D.31431,
	mov	r7, #13056	@ tmp209,
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r1, #48]	@ tmp209,
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r0, #60]	@ tmp215,
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #64]	@ tmp215,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r7, #68]	@ tmp215,
	ldr	r0, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r0, #72]	@ tmp215,
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #76]	@ tmp215,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r7, #80]	@ tmp215,
	ldr	r2, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r2, #84]	@ tmp215,
	ldr	r5, [ip, r6]	@ D.31448, <variable>.VahbStride
	str	r5, [ip, r4]	@ D.31448, <variable>.ystride_1d
	ldrh	r2, [ip, #78]	@ D.31449, <variable>.DispPicWidth
	sub	r0, r2, #1	@ tmp254, D.31449,
	uxth	r1, r0	@ tmp255, tmp254
	movw	r0, #2047	@,
	cmp	r1, r0	@ tmp255,
	bls	.L4	@,
	sub	r6, r2, #2048	@ tmp257, D.31449,
	sub	r1, r6, #1	@ tmp257, tmp257,
	uxth	r7, r1	@ tmp259, tmp257
	cmp	r7, r0	@ tmp259,
	movls	r4, #32	@ level,
	bls	.L6	@,
	sub	r7, r2, #4096	@ tmp261, D.31449,
	sub	r4, r7, #1	@ tmp261, tmp261,
	uxth	r0, r4	@ tmp263, tmp261
	movw	r4, #2047	@,
	cmp	r0, r4	@ tmp263,
	movls	r4, #48	@ level,
	bls	.L6	@,
	sub	r1, r2, #6144	@ tmp265, D.31449,
	sub	r8, r1, #1	@ tmp265, tmp265,
	uxth	r2, r8	@ tmp267, tmp265
	movw	r8, #2047	@,
	cmp	r2, r8	@ tmp267,
	movls	r4, #64	@ level,
	bhi	.L4	@,
.L6:
	ldrh	r0, [ip, #80]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	add	r5, r4, r5, lsr #4	@, tmp275, level, D.31448,
	movw	r1, #1148	@ tmp279,
	movw	r2, #:lower16:78044	@ tmp269,
	add	r7, r0, #31	@ tmp271, <variable>.DispPicHeight,
	movt	r2, #:upper16:78044	@ tmp269,
	mul	r9, r1, r9	@ tmp278, tmp279, VdhId
	mov	r6, r7, asr #5	@ tmp272, tmp271,
	movw	r0, #:lower16:78036	@ tmp282,
	movt	r0, #:upper16:78036	@ tmp282,
	mov	r7, r6, asl #5	@ tmp273, tmp272,
	movw	r1, #:lower16:78040	@ tmp288,
	ldr	r6, [ip, r0]	@ D.31477, <variable>.ystaddr_1d
	movt	r1, #:upper16:78040	@ tmp288,
	mul	r5, r5, r7	@ tmp276, tmp275, tmp273
	mov	r0, #0	@,
	str	r5, [ip, r2]	@ tmp276, <variable>.uvoffset_1d
	ldr	r5, [r9, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r5, #96]	@ D.31477,
	ldr	r5, [ip, r1]	@ D.31481, <variable>.ystride_1d
	ldr	r1, [r9, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #100]	@ D.31481,
	ldr	r1, [ip, r2]	@ D.31485, <variable>.uvoffset_1d
	ldr	r2, [r9, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r2, #104]	@ D.31485,
	ldrh	r1, [ip, #80]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	ldr	ip, [r9, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r2, r1, #31	@ tmp301, <variable>.DispPicHeight,
	mov	r1, r2, asr #5	@ tmp302, tmp301,
	mov	r2, r1, asl #5	@ tmp303, tmp302,
	mul	r4, r4, r2	@ D32.549, level, tmp303
	str	r4, [ip, #108]	@ D32.549,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L4:
	mov	r4, #16	@ level,
	b	.L6	@
	.fnend
	.size	VC1HAL_V200R003MPW_CfgReg, .-VC1HAL_V200R003MPW_CfgReg
	.align	2
	.global	VC1HAL_V200R003MPW_CfgDnMsg
	.type	VC1HAL_V200R003MPW_CfgDnMsg, %function
VC1HAL_V200R003MPW_CfgDnMsg:
	.fnstart
.LFB1350:
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
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	mov	r4, #0	@ tmp230,
	ldrb	r7, [r5, #3]	@ zero_extendqisi2	@ <variable>.ptype, <variable>.ptype
	mov	ip, r2, asl #14	@ tmp231, <variable>.fcm,
	and	r3, ip, #49152	@ tmp235, tmp231,
	bfi	r3, r1, #4, #2	@ tmp235, <variable>.profile,,
	bfi	r3, r7, #0, #2	@ tmp239, <variable>.ptype,,
	str	r3, [r0, #0]	@ tmp239,* D.31497
	ldrb	r2, [r5, #7]	@ zero_extendqisi2	@ <variable>.mbheight, <variable>.mbheight
	ldrb	ip, [r5, #6]	@ zero_extendqisi2	@ <variable>.mbwidth, <variable>.mbwidth
	str	r4, [fp, #-32]	@ tmp230, D32
	strb	r2, [fp, #-30]	@ <variable>.mbheight, <variable>.bits.mbheight
	strb	ip, [fp, #-32]	@ <variable>.mbwidth, <variable>.bits.mbwidth
	ldr	r1, [fp, #-32]	@ D32.575, D32
	str	r1, [r0, #4]	@ D32.575,
	ldrb	r7, [r5, #10]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.loopfilter, <variable>.loopfilter
	ldrb	lr, [r5, #11]	@ zero_extendqisi2	@ <variable>.numref, <variable>.numref
	mov	r3, r7, asl #2	@ tmp249, <variable>.curparity,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.issecondfld, <variable>.issecondfld
	and	r7, r3, #4	@ tmp253, tmp249,
	ldrb	r1, [r5, #12]	@ zero_extendqisi2	@ <variable>.fwd_fcm, <variable>.fwd_fcm
	bfi	r7, r2, #0, #1	@ tmp253, <variable>.loopfilter,,
	ldrb	r2, [r5, #13]	@ zero_extendqisi2	@ <variable>.bwd_fcm, <variable>.bwd_fcm
	bfi	r7, lr, #3, #1	@ tmp257, <variable>.numref,,
	bfi	r7, ip, #1, #1	@ tmp261, <variable>.issecondfld,,
	bfi	r7, r1, #4, #2	@ tmp265, <variable>.fwd_fcm,,
	bfi	r7, r2, #6, #2	@ tmp269, <variable>.bwd_fcm,,
	str	r7, [r0, #8]	@ tmp269,
	ldrb	r3, [r5, #17]	@ zero_extendqisi2	@ <variable>.condover, <variable>.condover
	ldrb	ip, [r5, #15]	@ zero_extendqisi2	@ <variable>.fastuvmc, <variable>.fastuvmc
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.overlap, <variable>.overlap
	mov	r2, r3, asl #4	@ tmp274, <variable>.condover,
	ldrb	lr, [r5, #14]	@ zero_extendqisi2	@ <variable>.rndctrl, <variable>.rndctrl
	and	r7, r2, #48	@ tmp278, tmp274,
	bfi	r7, ip, #1, #1	@ tmp278, <variable>.fastuvmc,,
	bfi	r7, r1, #2, #1	@ tmp282, <variable>.overlap,,
	bfi	r7, lr, #0, #1	@ tmp286, <variable>.rndctrl,,
	str	r7, [r0, #12]	@ tmp286,
	ldrb	r3, [r5, #20]	@ zero_extendqisi2	@ <variable>.altpquant, <variable>.altpquant
	ldrb	ip, [r5, #21]	@ zero_extendqisi2	@ <variable>.halfqp, <variable>.halfqp
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.pqindex, <variable>.pqindex
	mov	r2, r3, asl #16	@ tmp291, <variable>.altpquant,
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.pquant, <variable>.pquant
	and	r7, r2, #2031616	@ tmp295, tmp291,
	bfi	r7, ip, #24, #1	@ tmp295, <variable>.halfqp,,
	bfi	r7, r1, #8, #5	@ tmp299, <variable>.pqindex,,
	bfi	r7, lr, #0, #5	@ tmp303, <variable>.pquant,,
	str	r7, [r0, #16]	@ tmp303,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.buniform, <variable>.buniform
	ldrb	r2, [r5, #26]	@ zero_extendqisi2	@ <variable>.dqbilevel, <variable>.dqbilevel
	ldrb	r1, [r5, #25]	@ zero_extendqisi2	@ <variable>.dqprofile, <variable>.dqprofile
	and	r3, r3, #1	@ tmp312, <variable>.buniform,
	ldrb	lr, [r5, #24]	@ zero_extendqisi2	@ <variable>.dquant, <variable>.dquant
	bfi	r3, r2, #12, #1	@ tmp312, <variable>.dqbilevel,,
	ldrb	ip, [r5, #27]	@ zero_extendqisi2	@ <variable>.dquantfrm, <variable>.dquantfrm
	bfi	r3, r1, #8, #2	@ tmp316, <variable>.dqprofile,,
	ldrb	r7, [r5, #28]	@ zero_extendqisi2	@ <variable>.quantmode, <variable>.quantmode
	bfi	r3, lr, #2, #2	@ tmp320, <variable>.dquant,,
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.usealtqp, <variable>.usealtqp
	bfi	r3, ip, #14, #1	@ tmp324, <variable>.dquantfrm,,
	bfi	r3, r7, #16, #4	@ tmp328, <variable>.quantmode,,
	bfi	r3, r2, #1, #1	@ tmp332, <variable>.usealtqp,,
	str	r3, [r0, #20]	@ tmp332,
	ldrb	lr, [r5, #29]	@ zero_extendqisi2	@ <variable>.mvmode, <variable>.mvmode
	ldrb	ip, [r5, #30]	@ zero_extendqisi2	@ <variable>.mvmode2, <variable>.mvmode2
	and	r1, lr, #7	@ tmp341, <variable>.mvmode,
	bfi	r1, ip, #4, #2	@ tmp341, <variable>.mvmode2,,
	str	r1, [r0, #24]	@ tmp341,
	ldrb	r7, [r5, #36]	@ zero_extendqisi2	@ <variable>.reffiled, <variable>.reffiled
	ldrb	r2, [r5, #35]	@ zero_extendqisi2	@ <variable>.dmvrange, <variable>.dmvrange
	ldrb	lr, [r5, #32]	@ zero_extendqisi2	@ <variable>.colishalfpel, <variable>.colishalfpel
	mov	r3, r7, asl #14	@ tmp346, <variable>.reffiled,
	ldrb	ip, [r5, #31]	@ zero_extendqisi2	@ <variable>.curishalfpel, <variable>.curishalfpel
	and	r7, r3, #16384	@ tmp350, tmp346,
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.mvrange, <variable>.mvrange
	bfi	r7, r2, #12, #2	@ tmp350, <variable>.dmvrange,,
	ldrb	r2, [r5, #34]	@ zero_extendqisi2	@ <variable>.refdist, <variable>.refdist
	bfi	r7, lr, #1, #1	@ tmp354, <variable>.colishalfpel,,
	bfi	r7, ip, #0, #1	@ tmp358, <variable>.curishalfpel,,
	bfi	r7, r1, #2, #2	@ tmp362, <variable>.mvrange,,
	bfi	r7, r2, #4, #5	@ tmp366, <variable>.refdist,,
	str	r7, [r0, #28]	@ tmp366,
	ldrb	r3, [r5, #37]	@ zero_extendqisi2	@ <variable>.transdctab, <variable>.transdctab
	ldrb	lr, [r5, #38]	@ zero_extendqisi2	@ <variable>.vstransform, <variable>.vstransform
	ldrb	r2, [r5, #39]	@ zero_extendqisi2	@ <variable>.ttmbf, <variable>.ttmbf
	and	r7, r3, #1	@ tmp375, <variable>.transdctab,
	ldrb	ip, [r5, #40]	@ zero_extendqisi2	@ <variable>.transacfrm, <variable>.transacfrm
	bfi	r7, lr, #1, #1	@ tmp375, <variable>.vstransform,,
	ldrb	r1, [r5, #41]	@ zero_extendqisi2	@ <variable>.transacfrm2, <variable>.transacfrm2
	bfi	r7, r2, #2, #1	@ tmp379, <variable>.ttmbf,,
	ldrb	lr, [r5, #42]	@ zero_extendqisi2	@ <variable>.ttfrm, <variable>.ttfrm
	bfi	r7, ip, #4, #2	@ tmp383, <variable>.transacfrm,,
	bfi	r7, r1, #6, #2	@ tmp387, <variable>.transacfrm2,,
	bfi	r7, lr, #8, #2	@ tmp391, <variable>.ttfrm,,
	str	r7, [r0, #32]	@ tmp391,
	ldrb	r1, [r5, #48]	@ zero_extendqisi2	@ <variable>.acpredmodeisskipraw, <variable>.acpredmodeisskipraw
	ldrb	r2, [r5, #44]	@ zero_extendqisi2	@ <variable>.directmbmodeisskipraw, <variable>.directmbmodeisskipraw
	ldrb	r7, [r5, #46]	@ zero_extendqisi2	@ <variable>.fieldtxmodeisskipraw, <variable>.fieldtxmodeisskipraw
	mov	r3, r1, asl #5	@ tmp396, <variable>.acpredmodeisskipraw,
	ldrb	lr, [r5, #43]	@ zero_extendqisi2	@ <variable>.forwardmbmodeisskipraw, <variable>.forwardmbmodeisskipraw
	and	r3, r3, #32	@ tmp400, tmp396,
	ldrb	ip, [r5, #45]	@ zero_extendqisi2	@ <variable>.mvtypembmodeisskipraw, <variable>.mvtypembmodeisskipraw
	bfi	r3, r2, #1, #1	@ tmp400, <variable>.directmbmodeisskipraw,,
	ldrb	r1, [r5, #49]	@ zero_extendqisi2	@ <variable>.overflagsmodeisskipraw, <variable>.overflagsmodeisskipraw
	bfi	r3, r7, #3, #1	@ tmp404, <variable>.fieldtxmodeisskipraw,,
	ldrb	r2, [r5, #47]	@ zero_extendqisi2	@ <variable>.skipmbmodeisskipraw, <variable>.skipmbmodeisskipraw
	bfi	r3, lr, #0, #1	@ tmp408, <variable>.forwardmbmodeisskipraw,,
	bfi	r3, ip, #2, #1	@ tmp412, <variable>.mvtypembmodeisskipraw,,
	bfi	r3, r1, #6, #1	@ tmp416, <variable>.overflagsmodeisskipraw,,
	bfi	r3, r2, #4, #1	@ tmp420, <variable>.skipmbmodeisskipraw,,
	str	r3, [r0, #36]	@ tmp420,
	ldrb	r3, [r5, #52]	@ zero_extendqisi2	@ <variable>.bfraction, <variable>.bfraction
	ldrb	r1, [r5, #51]	@ zero_extendqisi2	@ <variable>.cbptab, <variable>.cbptab
	ldrb	ip, [r5, #50]	@ zero_extendqisi2	@ <variable>.mvtab, <variable>.mvtab
	mov	r2, r3, asl #16	@ tmp425, <variable>.bfraction,
	and	lr, r2, #8323072	@ tmp429, tmp425,
	bfi	lr, r1, #8, #3	@ tmp429, <variable>.cbptab,,
	bfi	lr, ip, #0, #3	@ tmp433, <variable>.mvtab,,
	str	lr, [r0, #40]	@ tmp433,
	ldrb	r3, [r5, #55]	@ zero_extendqisi2	@ <variable>.fourmvbptab, <variable>.fourmvbptab
	ldrb	ip, [r5, #56]	@ zero_extendqisi2	@ <variable>.fourmvswtich, <variable>.fourmvswtich
	ldrb	r1, [r5, #53]	@ zero_extendqisi2	@ <variable>.mbmodetab, <variable>.mbmodetab
	mov	r2, r3, asl #8	@ tmp438, <variable>.fourmvbptab,
	ldrb	lr, [r5, #54]	@ zero_extendqisi2	@ <variable>.twomvbptab, <variable>.twomvbptab
	and	r3, r2, #768	@ tmp442, tmp438,
	movw	r2, #12372	@ tmp456,
	bfi	r3, ip, #12, #1	@ tmp442, <variable>.fourmvswtich,,
	bfi	r3, r1, #0, #3	@ tmp446, <variable>.mbmodetab,,
	movw	r1, #12380	@ tmp464,
	bfi	r3, lr, #4, #2	@ tmp450, <variable>.twomvbptab,,
	str	r3, [r0, #44]	@ tmp450,
	ldr	lr, [r5, r2]	@ <variable>.ScaleFactor, <variable>.ScaleFactor
	movw	r3, #12376	@ tmp460,
	str	lr, [r0, #48]	@ <variable>.ScaleFactor,
	ldr	ip, [r5, r3]	@ <variable>.FRFD, <variable>.FRFD
	str	ip, [r0, #52]	@ <variable>.FRFD,
	ldr	r2, [r5, r1]	@ <variable>.BRFD, <variable>.BRFD
	str	r2, [r0, #56]	@ <variable>.BRFD,
	ldrb	lr, [r5, #57]	@ zero_extendqisi2	@ <variable>.rangemapyflag, <variable>.rangemapyflag
	ldrb	ip, [r5, #58]	@ zero_extendqisi2	@ <variable>.rangemapy, <variable>.rangemapy
	ldrb	r1, [r5, #59]	@ zero_extendqisi2	@ <variable>.rangemapuvflag, <variable>.rangemapuvflag
	mov	r3, lr, asl #20	@ tmp467, <variable>.rangemapyflag,
	ldrb	r2, [r5, #60]	@ zero_extendqisi2	@ <variable>.rangemapuv, <variable>.rangemapuv
	and	lr, r3, #1048576	@ tmp471, tmp467,
	bfi	lr, ip, #21, #3	@ tmp471, <variable>.rangemapy,,
	bfi	lr, r1, #24, #1	@ tmp475, <variable>.rangemapuvflag,,
	movw	r1, #12388	@ tmp491,
	bfi	lr, r2, #25, #3	@ tmp479, <variable>.rangemapuv,,
	str	lr, [fp, #-32]	@ tmp479,
	ldrh	r2, [r5, #76]	@, <variable>.totalslicenum
	movw	lr, #12384	@ tmp487,
	strh	r2, [fp, #-32]	@ movhi	@, <variable>.bits.totalslicenum
	ldr	r3, [fp, #-32]	@ D32.603, D32
	str	r3, [r0, #60]	@ D32.603,
	movw	r3, #12392	@ tmp495,
	ldr	ip, [r5, lr]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	ip, [r0, #64]	@ <variable>.CurFrmImgLuma2dPhyAddr,
	movw	ip, #12396	@ tmp499,
	ldr	r2, [r5, r1]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r0, #68]	@ <variable>.FwdRefAddr,
	movw	r2, #12400	@ tmp503,
	ldr	lr, [r5, r3]	@ <variable>.BwdRefAddr, <variable>.BwdRefAddr
	str	lr, [r0, #72]	@ <variable>.BwdRefAddr,
	ldr	r1, [r5, ip]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r1, [r0, #76]	@ <variable>.CurrColmbAddr,
	ldr	r3, [r5, r2]	@ <variable>.BwdColmbAddr, <variable>.BwdColmbAddr
	str	r3, [r0, #80]	@ <variable>.BwdColmbAddr,
	ldr	lr, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	str	lr, [r0, #84]	@ <variable>.SedTopAddr,
	ldr	ip, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	str	ip, [r0, #88]	@ <variable>.PmvTopAddr,
	ldr	r1, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	str	r1, [r0, #92]	@ <variable>.ItransTopAddr,
	ldr	r2, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	str	r2, [r0, #96]	@ <variable>.DblkTopAddr,
	ldr	r3, [r6, #1112]	@ <variable>.IntensityConvTabAddr, <variable>.IntensityConvTabAddr
	str	r3, [r0, #104]	@ <variable>.IntensityConvTabAddr,
	ldrh	lr, [r5, #78]	@, <variable>.DispPicWidth
	strh	lr, [fp, #-32]	@ movhi	@, <variable>.bits.DispPicWidth
	ldrh	ip, [r5, #80]	@, <variable>.DispPicHeight
	strh	ip, [fp, #-30]	@ movhi	@, <variable>.bits.DispPicHeight
	ldr	r1, [fp, #-32]	@ D32.625, D32
	str	r1, [r0, #108]	@ D32.625,
	ldrb	r2, [r5, #65]	@ zero_extendqisi2	@ <variable>.CodecVersion, <variable>.CodecVersion
	ldrb	lr, [r5, #61]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM, <variable>.RANGEREDFRM
	ldrb	ip, [r5, #62]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM0, <variable>.RANGEREDFRM0
	mov	r3, r2, asl #25	@ tmp526, <variable>.CodecVersion,
	ldrb	r1, [r5, #63]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM1, <variable>.RANGEREDFRM1
	and	r3, r3, #234881024	@ tmp530, tmp526,
	ldrb	r2, [r5, #64]	@ zero_extendqisi2	@ <variable>.PostCresent, <variable>.PostCresent
	bfi	r3, lr, #20, #1	@ tmp530, <variable>.RANGEREDFRM,,
	movw	lr, #12408	@ tmp552,
	bfi	r3, ip, #21, #1	@ tmp534, <variable>.RANGEREDFRM0,,
	bfi	r3, r1, #22, #1	@ tmp538, <variable>.RANGEREDFRM1,,
	movw	r1, #12404	@ tmp548,
	bfi	r3, r2, #24, #1	@ tmp542, <variable>.PostCresent,,
	str	r3, [r0, #112]	@ tmp542,
	ldr	r3, [r5, r1]	@ <variable>.BPD_STRIDE, <variable>.BPD_STRIDE
	movw	r2, #12412	@ tmp556,
	str	r3, [r0, #116]	@ <variable>.BPD_STRIDE,
	mov	r3, #12416	@ tmp560,
	ldr	ip, [r5, lr]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	str	ip, [r0, #120]	@ <variable>.MVTYPEMB_ADDR,
	movw	ip, #12420	@ tmp564,
	ldr	r1, [r5, r2]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	str	r1, [r0, #124]	@ <variable>.SKIPMB_ADDR,
	movw	r1, #12424	@ tmp568,
	ldr	lr, [r5, r3]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	str	lr, [r0, #128]	@ <variable>.DIRECTMB_ADDR,
	movw	lr, #12428	@ tmp572,
	ldr	r2, [r5, ip]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	str	r2, [r0, #132]	@ <variable>.ACPRED_ADDR,
	movw	r2, #12432	@ tmp576,
	ldr	r3, [r5, r1]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	str	r3, [r0, #136]	@ <variable>.OVERFLAGS_ADDR,
	ldr	ip, [r5, lr]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	str	ip, [r0, #140]	@ <variable>.FIELDTX_ADDR,
	ldr	r1, [r5, r2]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	str	r1, [r0, #144]	@ <variable>.FORWARDMB_ADDR,
	ldr	r3, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	str	r3, [fp, #-32]	@ <variable>.MsgSlotAddr, <variable>.bits.SliceInfoPhyAddr
	str	r3, [r0, #252]	@ <variable>.MsgSlotAddr,
	ldr	r0, [r6, #1112]	@, <variable>.IntensityConvTabAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, #68]	@, <variable>.pIntensityConvertTab
	mov	r2, #3072	@,
	bl	memcpy	@
	mov	r0, r4	@, tmp230
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	VC1HAL_V200R003MPW_CfgDnMsg, .-VC1HAL_V200R003MPW_CfgDnMsg
	.align	2
	.global	VC1HAL_V200R003MPW_CfgSliceMsg
	.type	VC1HAL_V200R003MPW_CfgSliceMsg, %function
VC1HAL_V200R003MPW_CfgSliceMsg:
	.fnstart
.LFB1348:
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
	ldr	r1, [r1, #48]	@, <variable>.MsgSlotAddr
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	mov	r0, r1	@,
	str	r1, [fp, #-56]	@, %sfp
	bl	MEM_Phy2Vir	@
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	cmp	r3, #2	@ <variable>.profile,
	mov	r6, r0	@ D.31283,
	beq	.L97	@,
	ldrb	r1, [r4, #74]	@ zero_extendqisi2	@ temp.796, <variable>.SlcNum
	movw	r3, #:lower16:77996	@ tmp307,
	ldr	r0, [r4, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	movt	r3, #:upper16:77996	@ tmp307,
	cmp	r1, #0	@ temp.796,
	bic	r2, r0, #15	@, <variable>.Phy_addr,
	str	r2, [fp, #-48]	@, %sfp
	str	r2, [r4, r3]	@, <variable>.stream_base_addr
	beq	.L52	@,
	mov	r9, #0	@ pre.789,
	mov	r0, r6	@ ivtmp.770, D.31283
	mov	sl, r9	@ i.826, pre.789
	cmp	sl, #0	@ i.826,
	mov	r6, r4	@ ivtmp.810, pVc1DecParam
	str	r9, [fp, #-52]	@ pre.789, %sfp
	bne	.L37	@,
.L99:
	ldr	r5, [r4, #108]	@ slice_end_mbn.786, <variable>.SlcEndMbn
	cmp	r1, #1	@ temp.796,
	moveq	r2, sl	@ prephitmp.675, i.826
	moveq	r1, sl	@ slice_start_mbn.787, i.826
	streq	r5, [fp, #-52]	@ slice_end_mbn.786, %sfp
	beq	.L39	@,
	movle	r3, #1	@ k,
	ble	.L41	@,
	ldr	r3, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r3, r5	@ <variable>.SlcEndMbn, slice_end_mbn.786
	movgt	r3, #1	@ k,
	bgt	.L43	@,
	tst	r1, #1	@ temp.796,
	mov	r2, r4	@ ivtmp.815, pVc1DecParam
	mov	r3, #1	@ k,
	beq	.L44	@,
	mov	r3, #2	@ k,
	cmp	r1, r3	@ temp.796, k
	ble	.L41	@,
	ldr	r7, [r4, #204]	@ temp.818, <variable>.SlcEndMbn
	add	r2, r4, #48	@ ivtmp.815, pVc1DecParam,
	cmp	r5, r7	@ slice_end_mbn.786, temp.818
	bge	.L44	@,
	b	.L41	@
.L45:
	ldr	r9, [r2, #204]	@ temp.818, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.815, ivtmp.815,
	cmp	r5, r9	@ slice_end_mbn.786, temp.818
	blt	.L41	@,
	ldr	lr, [ip, #204]	@ temp.818, <variable>.SlcEndMbn
	add	r3, r3, #1	@ k, k,
	cmp	r5, lr	@ slice_end_mbn.786, temp.818
	blt	.L41	@,
.L44:
	add	r3, r3, #1	@ k, k,
	add	ip, r2, #48	@ tmp377, ivtmp.815,
	cmp	r1, r3	@ temp.796, k
	bgt	.L45	@,
.L41:
	cmp	r3, r1	@ k, temp.796
	beq	.L98	@,
.L43:
	ldr	r7, [fp, #-56]	@, %sfp
	mov	r9, r3	@ pre.789, k
	mov	r1, #0	@ slice_start_mbn.787,
	str	r5, [fp, #-52]	@ slice_end_mbn.786, %sfp
	add	r2, r7, r3, asl #8	@, prephitmp.675,, k,
.L39:
	ldr	r7, [r6, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	add	r5, r1, r5, asl #16	@, D32.846, slice_start_mbn.787, slice_end_mbn.786,
	ldr	lr, [fp, #-48]	@, %sfp
	add	sl, sl, #1	@ i.826, i.826,
	ldr	ip, [r6, #100]	@ <variable>.BitOffset, <variable>.BitOffset
	rsb	r3, lr, r7	@ bit_steam_addr_0.830,, <variable>.Phy_addr
	ldr	r1, [r6, #104]	@ <variable>.Len, <variable>.Len
	and	r7, r3, #15	@ tmp333, bit_steam_addr_0.830,
	bic	lr, r3, #15	@ D32.842, bit_steam_addr_0.830,
	mov	r3, #0	@,
	add	r6, r6, #48	@ ivtmp.810, ivtmp.810,
	add	ip, ip, r7, asl #3	@, tmp335, <variable>.BitOffset, tmp333,
	add	ip, r1, ip, asl #25	@, D32.841, <variable>.Len, tmp335,
	str	ip, [r0, #0]	@ D32.841,* ivtmp.770
	str	lr, [r0, #4]	@ D32.842,
	str	r3, [r0, #8]	@,
	str	r3, [r0, #12]	@,
	str	r5, [r0, #16]	@ D32.846,
	str	r2, [r0, #252]	@ prephitmp.675,
	add	r0, r0, #256	@ ivtmp.770, ivtmp.770,
	ldrb	r1, [r4, #74]	@ zero_extendqisi2	@ temp.796, <variable>.SlcNum
	cmp	r1, sl	@ temp.796, i.826
	ble	.L52	@,
	movw	ip, #:lower16:77996	@,
	movt	ip, #:upper16:77996	@,
	cmp	sl, #0	@ i.826,
	ldr	r5, [r4, ip]	@, <variable>.stream_base_addr
	str	r5, [fp, #-48]	@, %sfp
	beq	.L99	@,
.L37:
	add	r5, r9, r9, asl #1	@, tmp313, pre.789, pre.789,
	add	r3, r9, #1	@ j.784, pre.789,
	cmp	r1, r3	@ temp.796, j.784
	mov	r7, r5, asl #4	@ tmp314, tmp313,
	add	r2, r7, r4	@ tmp315, tmp314, pVc1DecParam
	ldr	ip, [r2, #108]	@ temp.823, <variable>.SlcEndMbn
	mov	r5, ip	@ slice_end_mbn.786, temp.823
	ble	.L46	@,
	add	r2, r3, r3, asl #1	@, tmp320, j.784, j.784,
	add	lr, r4, r2, asl #4	@, tmp322, pVc1DecParam, tmp320,
	ldr	r2, [lr, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	ip, r2	@ temp.823, <variable>.SlcEndMbn
	blt	.L46	@,
	mvn	r2, r3	@ tmp380, j.784
	add	lr, r2, r1	@ tmp379, tmp380, temp.796
	add	r7, r7, #80	@ tmp329, tmp314,
	tst	lr, #1	@ tmp379,
	add	r7, r4, r7	@ tmp330, pVc1DecParam, tmp329
	add	r2, r7, #4	@ ivtmp.755, tmp330,
	beq	.L47	@,
	ldr	r8, [r2, #120]	@ temp.825, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.784, j.784,
	add	r2, r7, #52	@ ivtmp.755, tmp330,
	cmp	ip, r8	@ temp.823, temp.825
	bge	.L47	@,
	b	.L46	@
.L48:
	ldr	r8, [r2, #120]	@ temp.825, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.755, ivtmp.755,
	cmp	ip, r8	@ temp.823, temp.825
	blt	.L46	@,
	ldr	r7, [r7, #120]	@ temp.825, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.784, j.784,
	cmp	ip, r7	@ temp.823, temp.825
	blt	.L46	@,
.L47:
	add	r3, r3, #1	@ j.784, j.784,
	add	r7, r2, #48	@ tmp382, ivtmp.755,
	cmp	r1, r3	@ temp.796, j.784
	bgt	.L48	@,
.L46:
	cmp	r3, r1	@ j.784, temp.796
	ldrne	r1, [fp, #-56]	@, %sfp
	movne	r9, r3	@ pre.789, j.784
	moveq	r2, #0	@ next_slice_para_addr.785,
	addne	r2, r1, r3, asl #8	@, next_slice_para_addr.785,, j.784,
	ldr	r3, [fp, #-52]	@, %sfp
	str	ip, [fp, #-52]	@ temp.823, %sfp
	add	r1, r3, #1	@ slice_start_mbn.787,,
	b	.L39	@
.L98:
	mov	r2, #0	@ prephitmp.675,
	mov	r9, r3	@ pre.789, k
	str	r5, [fp, #-52]	@ slice_end_mbn.786, %sfp
	mov	r1, r2	@ slice_start_mbn.787, prephitmp.675
	b	.L39	@
.L97:
	ldrb	r2, [r4, #74]	@ zero_extendqisi2	@ <variable>.SlcNum, <variable>.SlcNum
	movw	r0, #:lower16:77996	@ tmp259,
	ldr	ip, [r4, #96]	@ prephitmp.685, <variable>.Phy_addr
	movt	r0, #:upper16:77996	@ tmp259,
	cmp	r2, #0	@ <variable>.SlcNum,
	str	ip, [r4, r0]	@ prephitmp.685, <variable>.stream_base_addr
	beq	.L14	@,
	tst	r2, #1	@ <variable>.SlcNum,
	mov	r1, r4	@ ivtmp.737, pVc1DecParam
	mov	r3, #0	@ i,
	bne	.L18	@,
	ldr	r1, [r4, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r1, #0	@ <variable>.pStream2,
	beq	.L61	@,
	ldr	r3, [r4, #112]	@ D.31293, <variable>.Phy_addr2
	cmp	r3, ip	@ D.31293, prephitmp.685
	bcs	.L61	@,
.L95:
	str	r3, [r4, r0]	@ D.31293, <variable>.stream_base_addr
.L62:
	mov	r3, #1	@ i,
	cmp	r3, r2	@ i, <variable>.SlcNum
	add	r1, r4, #48	@ ivtmp.737, pVc1DecParam,
	blt	.L93	@,
.L17:
	movw	r0, #:lower16:77996	@ tmp264,
	movt	r0, #:upper16:77996	@ tmp264,
	ldr	ip, [r4, r0]	@ prephitmp.685, <variable>.stream_base_addr
.L14:
	movw	r5, #:lower16:77996	@ tmp265,
	movt	r5, #:upper16:77996	@ tmp265,
	bic	r3, ip, #15	@ tmp266, prephitmp.685,
	mov	r0, #4	@,
	str	r3, [r4, r5]	@ tmp266, <variable>.stream_base_addr
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #74]	@ zero_extendqisi2	@ temp.802, <variable>.SlcNum
	cmp	r3, #0	@ temp.802,
	beq	.L52	@,
	mov	r2, #0	@,
	mov	r5, r4	@ ivtmp.803, pVc1DecParam
	mov	r8, r2	@ i.799,
	str	r2, [fp, #-52]	@, %sfp
	str	r2, [fp, #-80]	@, %sfp
.L36:
	ldr	ip, [r5, #100]	@, <variable>.BitOffset
	movw	r0, #:lower16:77996	@,
	movt	r0, #:upper16:77996	@,
	ldr	sl, [r5, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	lr, [r5, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	ldr	r7, [r4, r0]	@ D.31294, <variable>.stream_base_addr
	cmp	sl, #0	@ <variable>.pStream2,
	str	ip, [fp, #-72]	@, %sfp
	ldr	r1, [r5, #104]	@, <variable>.Len
	rsb	lr, r7, lr	@ bit_steam_addr_0, D.31294, <variable>.Phy_addr
	bic	r2, lr, #15	@, bit_steam_addr_0,
	str	r2, [fp, #-48]	@, %sfp
	streq	sl, [fp, #-60]	@ bit_steam_addr_1, %sfp
	str	r1, [fp, #-68]	@, %sfp
	ldrne	sl, [r5, #112]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	ldrne	r2, [r5, #116]	@ <variable>.BitOffset2, <variable>.BitOffset2
	ldrne	ip, [r5, #120]	@, <variable>.Len2
	rsbne	sl, r7, sl	@ bit_steam_addr_1, D.31294, <variable>.Phy_addr2
	andne	r7, sl, #15	@ tmp273, bit_steam_addr_1,
	streq	sl, [fp, #-64]	@ bit_steam_addr_1, %sfp
	addne	r2, r2, r7, asl #3	@,, <variable>.BitOffset2, tmp273,
	strne	ip, [fp, #-60]	@, %sfp
	strne	r2, [fp, #-64]	@, %sfp
	cmp	r8, #0	@ i.799,
	bne	.L22	@,
	cmp	r3, #1	@ temp.802,
	ldr	r7, [r4, #108]	@ slice_end_mbn, <variable>.SlcEndMbn
	beq	.L100	@,
	movle	r2, #1	@ k.843,
	ble	.L26	@,
	ldr	r2, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r7, r2	@ slice_end_mbn, <variable>.SlcEndMbn
	movlt	r2, #1	@ k.843,
	blt	.L28	@,
	tst	r3, #1	@ temp.802,
	mov	r1, r4	@ ivtmp.715, pVc1DecParam
	mov	r2, #1	@ k.843,
	beq	.L29	@,
	mov	r2, #2	@ k.843,
	cmp	r2, r3	@ k.843, temp.802
	bge	.L26	@,
	ldr	r0, [r4, #204]	@ temp.798, <variable>.SlcEndMbn
	add	r1, r4, #48	@ ivtmp.715, pVc1DecParam,
	cmp	r7, r0	@ slice_end_mbn, temp.798
	bge	.L29	@,
	b	.L26	@
.L30:
	ldr	r9, [r1, #204]	@ temp.798, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.715, ivtmp.715,
	cmp	r7, r9	@ slice_end_mbn, temp.798
	blt	.L26	@,
	ldr	r9, [r0, #204]	@ temp.798, <variable>.SlcEndMbn
	add	r2, r2, #1	@ k.843, k.843,
	cmp	r7, r9	@ slice_end_mbn, temp.798
	blt	.L26	@,
.L29:
	add	r2, r2, #1	@ k.843, k.843,
	add	r0, r1, #48	@ tmp362, ivtmp.715,
	cmp	r2, r3	@ k.843, temp.802
	blt	.L30	@,
.L26:
	cmp	r2, r3	@ k.843, temp.802
	beq	.L101	@,
.L28:
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r3, #0	@,
	str	r3, [fp, #-76]	@, %sfp
	add	r9, ip, r2, asl #8	@, next_slice_para_addr,, k.843,
	str	r2, [fp, #-52]	@ k.843, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r9	@ prephitmp.682, next_slice_para_addr
.L24:
	ldr	ip, [fp, #-72]	@, %sfp
	and	r2, lr, #15	@ tmp300, bit_steam_addr_0,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC1	@,
	add	lr, ip, r2, asl #3	@, tmp302,, tmp300,
	ldr	ip, [fp, #-68]	@, %sfp
	movt	r1, #:upper16:.LC1	@,
	add	r8, r8, #1	@ i.799, i.799,
	add	r2, ip, lr, asl #25	@, D32,, tmp302,
	str	r2, [r6, #0]	@ D32,* ivtmp.719
	str	r3, [fp, #-84]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	add	r5, r5, #48	@ ivtmp.803, ivtmp.803,
	str	r2, [r6, #4]	@,
	ldr	r2, [fp, #-48]	@, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r2, r3, ip, asl #25	@, D32.808,,,
	str	r2, [r6, #8]	@ D32.808,
	bl	dprint_vfmw	@
	str	sl, [r6, #12]	@ bit_steam_addr_1,
	mov	r2, sl	@, bit_steam_addr_1
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-76]	@, %sfp
	mov	r0, #4	@,
	add	r2, r1, r7, asl #16	@, D32.814,, slice_end_mbn,
	movw	r1, #:lower16:.LC5	@,
	str	r2, [r6, #16]	@ D32.814,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-84]	@,
	mov	r2, r9	@, next_slice_para_addr
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r0, [r6, #252]	@ prephitmp.682,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #74]	@ zero_extendqisi2	@ temp.802, <variable>.SlcNum
	add	r6, r6, #256	@ ivtmp.719, ivtmp.719,
	cmp	r3, r8	@ temp.802, i.799
	bgt	.L36	@,
.L52:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L102:
	str	lr, [r4, r0]	@ D.31296, <variable>.stream_base_addr
.L16:
	add	r3, r3, #1	@ tmp372, i,
	add	r1, r1, #48	@ tmp373, ivtmp.737,
	cmp	r3, r2	@ tmp372, <variable>.SlcNum
	bge	.L17	@,
	ldr	r5, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	ip, [r4, r0]	@ prephitmp.685, <variable>.stream_base_addr
	cmp	r5, #0	@ <variable>.pStream2,
	beq	.L64	@,
	ldr	lr, [r1, #112]	@ D.31293, <variable>.Phy_addr2
	cmp	lr, ip	@ D.31293, prephitmp.685
	bcc	.L96	@,
.L64:
	ldr	lr, [r1, #96]	@ D.31296, <variable>.Phy_addr
	cmp	lr, ip	@ D.31296, prephitmp.685
	bcs	.L65	@,
.L96:
	str	lr, [r4, r0]	@ D.31293, <variable>.stream_base_addr
.L65:
	add	r3, r3, #1	@ i, tmp372,
	add	r1, r1, #48	@ ivtmp.737, tmp373,
.L93:
	ldr	ip, [r4, r0]	@ prephitmp.685, <variable>.stream_base_addr
.L18:
	ldr	lr, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	lr, #0	@ <variable>.pStream2,
	beq	.L15	@,
	ldr	lr, [r1, #112]	@ D.31293, <variable>.Phy_addr2
	cmp	lr, ip	@ D.31293, prephitmp.685
	bcc	.L102	@,
.L15:
	ldr	lr, [r1, #96]	@ D.31296, <variable>.Phy_addr
	cmp	lr, ip	@ D.31296, prephitmp.685
	strcc	lr, [r4, r0]	@ D.31296, <variable>.stream_base_addr
	b	.L16	@
.L22:
	ldr	r2, [fp, #-52]	@, %sfp
	add	r1, r2, r2, asl #1	@, tmp281,,,
	add	r2, r2, #1	@ j,,
	cmp	r2, r3	@ j, temp.802
	mov	r1, r1, asl #4	@ tmp282, tmp281,
	add	r7, r1, r4	@ tmp283, tmp282, pVc1DecParam
	ldr	r0, [r7, #108]	@ D.31336, <variable>.SlcEndMbn
	mov	r7, r0	@ slice_end_mbn, D.31336
	bge	.L31	@,
	add	ip, r2, r2, asl #1	@, tmp288, j, j,
	add	ip, r4, ip, asl #4	@, tmp290, pVc1DecParam, tmp288,
	ldr	ip, [ip, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r0, ip	@ D.31336, <variable>.SlcEndMbn
	blt	.L31	@,
	mvn	ip, r2	@ tmp365, j
	add	ip, ip, r3	@ tmp364, tmp365, temp.802
	add	r1, r1, #80	@ tmp297, tmp282,
	tst	ip, #1	@ tmp364,
	add	ip, r4, r1	@ tmp298, pVc1DecParam, tmp297
	add	r1, ip, #4	@ ivtmp.710, tmp298,
	beq	.L32	@,
	ldr	r9, [r1, #120]	@ D.31340, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	add	r1, ip, #52	@ ivtmp.710, tmp298,
	cmp	r0, r9	@ D.31336, D.31340
	bge	.L32	@,
	b	.L31	@
.L33:
	ldr	r9, [r1, #120]	@ D.31340, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.710, ivtmp.710,
	cmp	r0, r9	@ D.31336, D.31340
	blt	.L31	@,
	ldr	ip, [ip, #120]	@ D.31340, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	cmp	r0, ip	@ D.31336, D.31340
	blt	.L31	@,
.L32:
	add	r2, r2, #1	@ j, j,
	add	ip, r1, #48	@ tmp367, ivtmp.710,
	cmp	r2, r3	@ j, temp.802
	blt	.L33	@,
.L31:
	cmp	r2, r3	@ j, temp.802
	strne	r2, [fp, #-52]	@ j, %sfp
	ldrne	r3, [fp, #-56]	@, %sfp
	moveq	r9, #0	@ next_slice_para_addr,
	addne	r9, r3, r2, asl #8	@, next_slice_para_addr,, j,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r0, [fp, #-80]	@ D.31336, %sfp
	add	r3, r2, #1	@,,
	str	r3, [fp, #-76]	@, %sfp
	mov	r3, r9	@ prephitmp.682, next_slice_para_addr
	b	.L24	@
.L100:
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r8	@ prephitmp.682, i.799
	str	r8, [fp, #-76]	@ i.799, %sfp
	mov	r9, r8	@ next_slice_para_addr, i.799
	b	.L24	@
.L101:
	mov	r3, #0	@ prephitmp.682,
	str	r2, [fp, #-52]	@ k.843, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r9, r3	@ next_slice_para_addr, prephitmp.682
	str	r3, [fp, #-76]	@ prephitmp.682, %sfp
	b	.L24	@
.L61:
	ldr	r3, [r4, #96]	@ D.31296, <variable>.Phy_addr
	cmp	r3, ip	@ D.31296, prephitmp.685
	bcs	.L62	@,
	b	.L95	@
	.fnend
	.size	VC1HAL_V200R003MPW_CfgSliceMsg, .-VC1HAL_V200R003MPW_CfgSliceMsg
	.align	2
	.global	VC1HAL_V200R003MPW_StartDec
	.type	VC1HAL_V200R003MPW_StartDec, %function
VC1HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1347:
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
	mov	r6, r1	@ VdhId, VdhId
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	bls	.L114	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31213,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L114:
	cmp	r0, #0	@ pVc1DecParam,
	beq	.L115	@,
	movw	r8, #1148	@ tmp147,
	movw	r7, #:lower16:g_HwMem	@ tmp148,
	mul	r8, r8, r1	@ tmp146, tmp147, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp148,
	add	r5, r7, r8	@ pHwMem, tmp148, tmp146
	ldr	r0, [r5, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L116	@,
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L117	@,
.L109:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp155,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp155,
	ldr	r3, [r0, #36]	@ D.31233, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.31233,
	beq	.L111	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.31233
.L112:
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R003MPW_CfgSliceMsg	@
	mov	r1, r5	@, pHwMem
	mov	r2, r6	@, VdhId
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R003MPW_CfgReg	@
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R003MPW_CfgDnMsg	@
	mov	r0, #0	@ D.31213,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L111:
	mov	r0, r3	@, D.31233
	movw	r1, #:lower16:.LC12	@,
	mov	r2, #89	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	b	.L112	@
.L117:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31228,
	strne	r1, [r7, r8]	@ D.31228, <variable>.pVdmRegVirAddr
	bne	.L109	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31213,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L115:
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #66	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31213,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L116:
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #71	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31213,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1HAL_V200R003MPW_StartDec, .-VC1HAL_V200R003MPW_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pVc1DecParam->SlcNum = %d\012\000"
	.space	1
.LC1:
	.ascii	"D0 = 0x%08x\012\000"
	.space	3
.LC2:
	.ascii	"D1 = 0x%08x\012\000"
	.space	3
.LC3:
	.ascii	"D2 = 0x%08x\012\000"
	.space	3
.LC4:
	.ascii	"D3 = 0x%08x\012\000"
	.space	3
.LC5:
	.ascii	"D4 = 0x%08x\012\000"
	.space	3
.LC6:
	.ascii	"D63 = 0x%08x\012\000"
	.space	2
.LC7:
	.ascii	"VdhId is wrong! VC1HAL_V200R003MPW_StartDec\012\000"
	.space	3
.LC8:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC9:
	.ascii	"point of picture para null\012\000"
.LC10:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC11:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC12:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
