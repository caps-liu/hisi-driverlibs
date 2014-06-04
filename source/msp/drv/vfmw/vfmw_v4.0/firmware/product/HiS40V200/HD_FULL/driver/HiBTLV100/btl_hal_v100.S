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
	.file	"btl_hal_v100.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(btl_hal_v100)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/.btl_hal_v100.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/btl_hal_v100.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100/btl_hal_v100.o -O2
@ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	BTLHAL_V100_GetInfo_Capture
	.type	BTLHAL_V100_GetInfo_Capture, %function
BTLHAL_V100_GetInfo_Capture:
	.fnstart
.LFB1356:
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
	mov	r4, r1	@ pBtlCtrlReg, pBtlCtrlReg
	mov	r5, r0	@ DecImg, DecImg
	mov	r1, #68	@,
	mov	r0, r4	@, pBtlCtrlReg
	mov	r9, r2	@ mode, mode
	bl	__memzero	@
	ldr	ip, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	ldrb	r1, [r4, #24]	@ zero_extendqisi2	@,
	mov	r8, #4	@ tmp175,
	add	r0, ip, #127	@ tmp136, <variable>.image_width,
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@,
	ldrh	r6, [r4, #60]	@,
	mov	r2, #1	@ tmp178,
	mov	r7, r0, lsr #7	@ tmp138, tmp136,
	bfi	ip, r8, #0, #3	@ tmp173, tmp175,,
	add	r3, r7, #15	@ tmp139, tmp138,
	bfi	ip, r2, #4, #3	@ tmp176, tmp178,,
	and	sl, r3, #112	@ tmp146, tmp139,
	ldrh	r0, [r4, #62]	@,
	bfi	r1, sl, #0, #7	@ tmp147, tmp146,,
	strb	r1, [r4, #24]	@ tmp147,
	ldr	r7, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r1, [r4, #28]	@ tmp184,
	add	r3, r7, #31	@ tmp149, <variable>.image_height,
	ldrb	r7, [r4, #44]	@ zero_extendqisi2	@,
	ldrh	r2, [r4, #36]	@,
	mov	sl, r3, lsr #5	@ tmp151, tmp149,
	bfi	r7, r8, #4, #4	@ tmp213, tmp175,,
	mov	r8, #3	@ tmp218,
	bfi	r7, r8, #0, #3	@ tmp216, tmp218,,
	mov	sl, sl, asl #9	@ tmp152, tmp151,
	str	sl, [r4, #12]	@ tmp152, <variable>.HeadOffset
	ldr	sl, [r5, #88]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	ldrh	r3, [r4, #40]	@,
	str	sl, [r4, #4]	@ <variable>.chrom_phy_addr, <variable>.CHeadStaAddr
	ldr	r8, [r5, #88]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	str	r8, [r4, #8]	@ <variable>.chrom_phy_addr, <variable>.CStaAddr1D
	ldr	r8, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	add	r8, r8, #15	@ tmp155, <variable>.image_height,
	mov	r8, r8, lsr #4	@ tmp157, tmp155,
	sub	r8, r8, #1	@ tmp159, tmp157,
	bfi	r6, r8, #0, #9	@ tmp160, tmp159,,
	strh	r6, [r4, #60]	@ movhi	@ tmp160,
	ldr	r6, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	mov	r8, #64	@ tmp169,
	strb	ip, [r4, #66]	@ tmp176,
	add	r6, r6, #15	@ tmp162, <variable>.image_width,
	strb	r8, [r4, #64]	@ tmp169, <variable>.Btlthr.bits.thrpeak8x8zone
	mov	r8, #40	@ tmp171,
	strb	r8, [r4, #65]	@ tmp171, <variable>.Btlthr.bits.thredgegrad
	mov	ip, r6, lsr #4	@ tmp164, tmp162,
	sub	ip, ip, #1	@ tmp166, tmp164,
	bfi	r0, ip, #0, #9	@ tmp167, tmp166,,
	strh	r0, [r4, #62]	@ movhi	@ tmp167,
	ldr	ip, [r5, #84]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	ip, [r4, #0]	@ <variable>.luma_phy_addr, <variable>.YHeadStaAddr
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	add	ip, r0, #255	@ tmp180, <variable>.image_width,
	mov	r0, ip, lsr #8	@ tmp182, tmp180,
	mov	ip, r0, asl #12	@ tmp183, tmp182,
	bfi	r1, ip, #0, #18	@ tmp184, tmp183,,
	str	r1, [r4, #28]	@ tmp184,
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	add	ip, r0, #127	@ tmp185, <variable>.image_width,
	and	r1, ip, #16256	@ tmp194, tmp185,
	bfi	r2, r1, #0, #14	@ tmp196, tmp194,,
	strh	r2, [r4, #36]	@ movhi	@ tmp196,
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	strb	r7, [r4, #44]	@ tmp216,
	add	r2, r0, #15	@ tmp198, <variable>.image_width,
	mov	ip, r2, lsr #4	@ tmp200, tmp198,
	add	r1, ip, #7	@ tmp201, tmp200,
	mov	r0, r1, asl #1	@ tmp210, tmp201,
	and	r2, r0, #1008	@ tmp209, tmp210,
	bfi	r3, r2, #0, #10	@ tmp211, tmp209,,
	strh	r3, [r4, #40]	@ movhi	@ tmp211,
	cmp	r9, #11	@ mode,
	ldrls	pc, [pc, r9, asl #2]	@ mode
	b	.L2	@
.L15:
	.word	.L3
	.word	.L4
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
.L14:
	ldrb	r3, [r4, #48]	@ zero_extendqisi2	@ tmp356,
	orr	r1, r3, #15	@ tmp369, tmp356,
	strb	r1, [r4, #48]	@ tmp369,
.L2:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ tmp372,
	orr	r0, ip, #48	@ tmp377, tmp372,
	strb	r0, [r4, #48]	@ tmp377,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L3:
	ldrb	r1, [r4, #48]	@ zero_extendqisi2	@,
	and	r2, r1, #241	@ tmp226, tmp219,
	orr	lr, r2, #1	@ tmp227, tmp226,
	strb	lr, [r4, #48]	@ tmp227,
	b	.L2	@
.L4:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	r0, ip, #243	@ tmp234, tmp229,
	orr	r3, r0, #2	@ tmp237, tmp234,
	bfc	r3, #0, #1	@ tmp237,,
	strb	r3, [r4, #48]	@ tmp237,
	b	.L2	@
.L5:
	ldrb	r1, [r4, #48]	@ zero_extendqisi2	@,
	and	r2, r1, #243	@ tmp244, tmp239,
	orr	lr, r2, #3	@ tmp249, tmp244,
	strb	lr, [r4, #48]	@ tmp249,
	b	.L2	@
.L6:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	r0, ip, #240	@ tmp260, tmp251,
	orr	r3, r0, #5	@ tmp261, tmp260,
	strb	r3, [r4, #48]	@ tmp261,
	b	.L2	@
.L7:
	ldrb	r1, [r4, #48]	@ zero_extendqisi2	@,
	and	r2, r1, #247	@ tmp266, tmp263,
	orr	lr, r2, #6	@ tmp273, tmp266,
	bfc	lr, #0, #1	@ tmp273,,
	strb	lr, [r4, #48]	@ tmp273,
	b	.L2	@
.L8:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	r0, ip, #247	@ tmp278, tmp275,
	orr	r3, r0, #7	@ tmp287, tmp278,
	strb	r3, [r4, #48]	@ tmp287,
	b	.L2	@
.L9:
	ldrb	r1, [r4, #48]	@ zero_extendqisi2	@ tmp290,
	and	r2, r1, #240	@ tmp298, tmp290,
	orr	lr, r2, #9	@ tmp299, tmp298,
	strb	lr, [r4, #48]	@ tmp299,
	b	.L2	@
.L10:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ tmp302,
	and	r0, ip, #241	@ tmp308, tmp302,
	orr	r3, r0, #10	@ tmp311, tmp308,
	bfc	r3, #0, #1	@ tmp311,,
	strb	r3, [r4, #48]	@ tmp311,
	b	.L2	@
.L11:
	ldrb	r1, [r4, #48]	@ zero_extendqisi2	@ tmp314,
	and	r2, r1, #241	@ tmp320, tmp314,
	orr	lr, r2, #11	@ tmp325, tmp320,
	strb	lr, [r4, #48]	@ tmp325,
	b	.L2	@
.L12:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ tmp328,
	and	r0, ip, #240	@ tmp338, tmp328,
	orr	r3, r0, #13	@ tmp339, tmp338,
	strb	r3, [r4, #48]	@ tmp339,
	b	.L2	@
.L13:
	ldrb	r2, [r4, #48]	@ zero_extendqisi2	@ tmp342,
	orr	lr, r2, #14	@ tmp353, tmp342,
	bfc	lr, #0, #1	@ tmp353,,
	strb	lr, [r4, #48]	@ tmp353,
	b	.L2	@
	.fnend
	.size	BTLHAL_V100_GetInfo_Capture, .-BTLHAL_V100_GetInfo_Capture
	.align	2
	.global	BTLHAL_V100_GetInfo
	.type	BTLHAL_V100_GetInfo, %function
BTLHAL_V100_GetInfo:
	.fnstart
.LFB1355:
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
	mov	r4, r1	@ pBtlCtrlReg, pBtlCtrlReg
	mov	r5, r0	@ DecImg, DecImg
	mov	r1, #68	@,
	mov	r0, r4	@, pBtlCtrlReg
	mov	r9, r2	@ mode, mode
	bl	__memzero	@
	ldr	r1, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldrh	r8, [r4, #60]	@,
	mov	r3, #40	@ tmp160,
	add	r6, r1, #15	@ tmp144, <variable>.image_height,
	ldrb	r7, [r4, #66]	@ zero_extendqisi2	@,
	ldrh	r1, [r4, #62]	@,
	mov	r2, #1	@ tmp167,
	mov	ip, r6, lsr #4	@ tmp146, tmp144,
	mov	r6, #4	@ tmp164,
	sub	sl, ip, #1	@ tmp148, tmp146,
	bfi	r7, r6, #0, #3	@ tmp162, tmp164,,
	bfi	r8, sl, #0, #9	@ tmp149, tmp148,,
	strh	r8, [r4, #60]	@ movhi	@ tmp149,
	ldr	ip, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	bfi	r7, r2, #4, #3	@ tmp165, tmp167,,
	strb	r3, [r4, #65]	@ tmp160, <variable>.Btlthr.bits.thredgegrad
	mov	r0, #64	@ tmp158,
	add	sl, ip, #15	@ tmp151, <variable>.image_width,
	strb	r7, [r4, #66]	@ tmp165,
	strb	r0, [r4, #64]	@ tmp158, <variable>.Btlthr.bits.thrpeak8x8zone
	movw	r2, #2047	@ tmp185,
	mov	r8, sl, lsr r6	@ tmp153, tmp151,
	ldrb	r6, [r4, #24]	@ zero_extendqisi2	@,
	sub	r3, r8, #1	@ tmp155, tmp153,
	bfi	r1, r3, #0, #9	@ tmp156, tmp155,,
	strh	r1, [r4, #62]	@ movhi	@ tmp156,
	ldr	r7, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	add	ip, r7, #127	@ tmp168, <variable>.image_width,
	mov	sl, ip, lsr #7	@ tmp170, tmp168,
	add	r8, sl, #15	@ tmp171, tmp170,
	and	ip, r8, #112	@ D.35099, tmp171,
	bfi	r6, ip, #0, #7	@ tmp179, D.35099,,
	strb	r6, [r4, #24]	@ tmp179,
	ldr	r1, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	r6, [r5, #84]	@ D.35105, <variable>.luma_phy_addr
	add	r3, r1, #31	@ tmp181, <variable>.image_height,
	ldr	r8, [r5, #124]	@ temp.475, <variable>.image_width
	str	r6, [r4, #0]	@ D.35105, <variable>.YHeadStaAddr
	mov	r3, r3, lsr #5	@ D.35101, tmp181,
	ldr	r1, [r5, #124]	@ temp.476, <variable>.image_width
	mov	r7, r3, asl #5	@ tmp183, D.35101,
	sub	sl, r1, #1	@ tmp184, temp.476,
	cmp	sl, r2	@ tmp184, tmp185
	mul	ip, ip, r7	@ yHeadDDr, D.35099, tmp183
	bls	.L19	@,
	sub	r7, r1, #2048	@ tmp186, temp.476,
	sub	lr, r7, #1	@ tmp186, tmp186,
	cmp	lr, r2	@ tmp186, tmp185
	movls	sl, #32	@ level,
	bls	.L21	@,
	sub	r7, r1, #4096	@ tmp189, temp.476,
	sub	lr, r7, #1	@ tmp189, tmp189,
	cmp	lr, r2	@ tmp189, tmp185
	movls	sl, #48	@ level,
	bls	.L21	@,
	sub	lr, r1, #6144	@ tmp192, temp.476,
	sub	r1, lr, #1	@ tmp192, tmp192,
	cmp	r1, r2	@ tmp192, tmp185
	movls	sl, r0	@ level, tmp158
	bls	.L21	@,
.L19:
	mov	sl, #16	@ level,
.L21:
	add	r0, r8, #255	@ tmp200, temp.475,
	ldr	r1, [r5, #128]	@ <variable>.image_height, <variable>.image_height
	ldr	lr, [r4, #28]	@ tmp211,
	mov	r8, r0, lsr #8	@ tmp201, tmp200,
	add	r2, r1, #31	@ tmp195, <variable>.image_height,
	bic	r7, r2, #31	@ tmp198, tmp195,
	ldrh	r1, [r4, #36]	@,
	mul	r8, r8, r3	@ tmp202, tmp201, D.35101
	ldrb	r2, [r4, #44]	@ zero_extendqisi2	@,
	mul	r7, sl, r7	@ tmp199, level, tmp198
	mov	sl, #4	@ tmp242,
	bfi	r2, sl, #4, #4	@ tmp240, tmp242,,
	ldrh	r3, [r4, #40]	@,
	mov	sl, #3	@ tmp245,
	bfi	r2, sl, #0, #3	@ tmp243, tmp245,,
	add	r6, r6, r8, asl #13	@, tmp204, D.35105, tmp202,
	add	r6, r6, ip	@ D.35131, tmp204, yHeadDDr
	str	r6, [r4, #4]	@ D.35131, <variable>.CHeadStaAddr
	str	r7, [r4, #12]	@ tmp199, <variable>.HeadOffset
	add	ip, r6, ip, lsr #1	@, tmp206, D.35131, yHeadDDr,
	str	ip, [r4, #8]	@ tmp206, <variable>.CStaAddr1D
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	add	ip, r0, #255	@ tmp207, <variable>.image_width,
	mov	r0, ip, lsr #8	@ tmp209, tmp207,
	mov	ip, r0, asl #12	@ tmp210, tmp209,
	bfi	lr, ip, #0, #18	@ tmp211, tmp210,,
	str	lr, [r4, #28]	@ tmp211,
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	add	lr, r0, #127	@ tmp212, <variable>.image_width,
	and	ip, lr, #16256	@ tmp221, tmp212,
	bfi	r1, ip, #0, #14	@ tmp223, tmp221,,
	strh	r1, [r4, #36]	@ movhi	@ tmp223,
	ldr	r0, [r5, #124]	@ <variable>.image_width, <variable>.image_width
	strb	r2, [r4, #44]	@ tmp243,
	add	lr, r0, #15	@ tmp225, <variable>.image_width,
	mov	r1, lr, lsr #4	@ tmp227, tmp225,
	add	ip, r1, #7	@ tmp228, tmp227,
	mov	r2, ip, asl #1	@ tmp237, tmp228,
	and	r0, r2, #1008	@ tmp236, tmp237,
	bfi	r3, r0, #0, #10	@ tmp238, tmp236,,
	strh	r3, [r4, #40]	@ movhi	@ tmp238,
	cmp	r9, #11	@ mode,
	ldrls	pc, [pc, r9, asl #2]	@ mode
	b	.L23	@
.L36:
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
.L35:
	ldrb	r2, [r4, #48]	@ zero_extendqisi2	@ tmp383,
	orr	ip, r2, #15	@ tmp396, tmp383,
	strb	ip, [r4, #48]	@ tmp396,
.L23:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ tmp399,
	orr	r1, r0, #48	@ tmp404, tmp399,
	strb	r1, [r4, #48]	@ tmp404,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L24:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	lr, ip, #241	@ tmp253, tmp246,
	orr	r3, lr, #1	@ tmp254, tmp253,
	strb	r3, [r4, #48]	@ tmp254,
	b	.L23	@
.L25:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@,
	and	r1, r0, #243	@ tmp261, tmp256,
	orr	r2, r1, #2	@ tmp264, tmp261,
	bfc	r2, #0, #1	@ tmp264,,
	strb	r2, [r4, #48]	@ tmp264,
	b	.L23	@
.L26:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	lr, ip, #243	@ tmp271, tmp266,
	orr	r3, lr, #3	@ tmp276, tmp271,
	strb	r3, [r4, #48]	@ tmp276,
	b	.L23	@
.L27:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@,
	and	r1, r0, #240	@ tmp287, tmp278,
	orr	r2, r1, #5	@ tmp288, tmp287,
	strb	r2, [r4, #48]	@ tmp288,
	b	.L23	@
.L28:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@,
	and	lr, ip, #247	@ tmp293, tmp290,
	orr	r3, lr, #6	@ tmp300, tmp293,
	bfc	r3, #0, #1	@ tmp300,,
	strb	r3, [r4, #48]	@ tmp300,
	b	.L23	@
.L29:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@,
	and	r1, r0, #247	@ tmp305, tmp302,
	orr	r2, r1, #7	@ tmp314, tmp305,
	strb	r2, [r4, #48]	@ tmp314,
	b	.L23	@
.L30:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ tmp317,
	and	lr, ip, #240	@ tmp325, tmp317,
	orr	r3, lr, #9	@ tmp326, tmp325,
	strb	r3, [r4, #48]	@ tmp326,
	b	.L23	@
.L31:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ tmp329,
	and	r1, r0, #241	@ tmp335, tmp329,
	orr	r2, r1, #10	@ tmp338, tmp335,
	bfc	r2, #0, #1	@ tmp338,,
	strb	r2, [r4, #48]	@ tmp338,
	b	.L23	@
.L32:
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ tmp341,
	and	lr, ip, #241	@ tmp347, tmp341,
	orr	r3, lr, #11	@ tmp352, tmp347,
	strb	r3, [r4, #48]	@ tmp352,
	b	.L23	@
.L33:
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ tmp355,
	and	r1, r0, #240	@ tmp365, tmp355,
	orr	r2, r1, #13	@ tmp366, tmp365,
	strb	r2, [r4, #48]	@ tmp366,
	b	.L23	@
.L34:
	ldrb	lr, [r4, #48]	@ zero_extendqisi2	@ tmp369,
	orr	r3, lr, #14	@ tmp380, tmp369,
	bfc	r3, #0, #1	@ tmp380,,
	strb	r3, [r4, #48]	@ tmp380,
	b	.L23	@
	.fnend
	.size	BTLHAL_V100_GetInfo, .-BTLHAL_V100_GetInfo
	.align	2
	.global	BTLHAL_V100_CfgReg
	.type	BTLHAL_V100_CfgReg, %function
BTLHAL_V100_CfgReg:
	.fnstart
.LFB1354:
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
	mov	r4, r0	@ pBtlCtrlReg, pBtlCtrlReg
	ldr	r1, [r4, #60]	@, <variable>.Resolution.resolution
	movw	r0, #:lower16:-120586184	@ tmp134,
	movt	r0, #:upper16:-120586184	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #64]	@, <variable>.Btlthr.btl_thr
	movw	r0, #:lower16:-120586236	@,
	movt	r0, #:upper16:-120586236	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #0]	@, <variable>.YHeadStaAddr
	movw	r0, #:lower16:-120586232	@,
	movt	r0, #:upper16:-120586232	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #4]	@, <variable>.CHeadStaAddr
	movw	r0, #:lower16:-120586228	@,
	movt	r0, #:upper16:-120586228	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #24]	@, <variable>.HeadStride.head_stride
	movw	r0, #:lower16:-120586224	@ tmp142,
	movt	r0, #:upper16:-120586224	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #28]	@, <variable>.YStride1D.y_stride_1d
	movw	r0, #:lower16:-120586212	@ tmp144,
	movt	r0, #:upper16:-120586212	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #16]	@, <variable>.YStaAddr2D
	movw	r0, #:lower16:-120586208	@ tmp146,
	movt	r0, #:upper16:-120586208	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #36]	@, <variable>.YStride2D.y_stride_2d
	movw	r0, #:lower16:-120586204	@ tmp148,
	movt	r0, #:upper16:-120586204	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #20]	@, <variable>.DbdrStaAddr
	movw	r0, #:lower16:-120586200	@ tmp150,
	movt	r0, #:upper16:-120586200	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #40]	@, <variable>.DbdrStride.dbr_stride
	movw	r0, #:lower16:-120586196	@ tmp152,
	movt	r0, #:upper16:-120586196	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #44]	@, <variable>.AxiCof.axi_cof
	movw	r0, #:lower16:-120586192	@ tmp154,
	movt	r0, #:upper16:-120586192	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #48]	@, <variable>.WorkMode.work_mode
	movw	r0, #:lower16:-120586188	@ tmp156,
	movt	r0, #:upper16:-120586188	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #12]	@, <variable>.HeadOffset
	movw	r0, #:lower16:-120586220	@ tmp158,
	movt	r0, #:upper16:-120586220	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_CfgReg, .-BTLHAL_V100_CfgReg
	.align	2
	.global	BTLHAL_V100_EnableInt
	.type	BTLHAL_V100_EnableInt, %function
BTLHAL_V100_EnableInt:
	.fnstart
.LFB1353:
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
	movw	r0, #:lower16:-120586180	@ tmp133,
	mov	r1, #0	@,
	movt	r0, #:upper16:-120586180	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_EnableInt, .-BTLHAL_V100_EnableInt
	.align	2
	.global	BTLHAL_V100_MaskInt
	.type	BTLHAL_V100_MaskInt, %function
BTLHAL_V100_MaskInt:
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
	movw	r0, #:lower16:-120586180	@ tmp133,
	mov	r1, #1	@,
	movt	r0, #:upper16:-120586180	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_MaskInt, .-BTLHAL_V100_MaskInt
	.align	2
	.global	BTLHAL_V100_ClearIntState
	.type	BTLHAL_V100_ClearIntState, %function
BTLHAL_V100_ClearIntState:
	.fnstart
.LFB1351:
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
	movw	r0, #:lower16:-120586176	@ tmp133,
	mov	r1, #1	@,
	movt	r0, #:upper16:-120586176	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_ClearIntState, .-BTLHAL_V100_ClearIntState
	.align	2
	.global	BTLHAL_V100_Start
	.type	BTLHAL_V100_Start, %function
BTLHAL_V100_Start:
	.fnstart
.LFB1349:
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
	movw	r4, #:lower16:-120586240	@ tmp135,
	movt	r4, #:upper16:-120586240	@ tmp135,
	mov	r1, #0	@,
	mov	r0, r4	@, tmp135
	bl	MEM_WritePhyWord	@
	mov	r0, r4	@, tmp135
	mov	r1, #1	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_Start, .-BTLHAL_V100_Start
	.align	2
	.global	BTLHAL_V100_Reset
	.type	BTLHAL_V100_Reset, %function
BTLHAL_V100_Reset:
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
	movw	r0, #:lower16:-123592336	@,
	movt	r0, #:upper16:-123592336	@,
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ D.35000,
	movw	r0, #:lower16:-120586240	@,
	movt	r0, #:upper16:-120586240	@,
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ D.35000,
	cmpne	r0, #0	@, D.35001,
	movne	r5, #0	@, tmp153
	moveq	r5, #1	@, tmp153
	beq	.L57	@,
	movw	r0, #:lower16:-120586180	@,
	movt	r0, #:upper16:-120586180	@,
	bl	MEM_ReadPhyWord	@
	ldr	r7, [r4, #0]	@ reg,* D.35000
	movw	r6, #10000	@ tmp163,
	orr	r3, r7, #16	@ D.35010, reg,
	str	r3, [r4, #0]	@ D.35010,* D.35000
	mov	r8, r0	@ tmp,
	b	.L52	@
.L58:
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L51	@,
	cmp	r5, r6	@ i, tmp163
	beq	.L51	@,
.L52:
	movw	r0, #:lower16:-120586144	@,
	movt	r0, #:upper16:-120586144	@,
	bl	MEM_ReadPhyWord	@
	add	r5, r5, #1	@ tmp164, i,
	add	r5, r5, #1	@ i, tmp164,
	tst	r0, #1	@,
	movw	r0, #:lower16:-120586144	@,
	movt	r0, #:upper16:-120586144	@,
	bne	.L58	@,
.L51:
	bic	r7, r7, #16	@ D.35016, reg,
	mov	r1, r8	@, tmp
	str	r7, [r4, #0]	@ D.35016,* D.35000
	movw	r0, #:lower16:-120586180	@,
	movt	r0, #:upper16:-120586180	@,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L57:
	mov	r2, r0	@, D.35001
	mov	r3, r4	@, D.35000
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	BTLHAL_V100_Reset, .-BTLHAL_V100_Reset
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_ResetBtl: map Btl register fail, vir(reg,res"
	.ascii	"et_reg) = (%p,%p)\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
