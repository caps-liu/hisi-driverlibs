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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vc1.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.o
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
	.global	VC1HAL_V200R004_InitHal
	.type	VC1HAL_V200R004_InitHal, %function
VC1HAL_V200R004_InitHal:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1HAL_V200R004_InitHal, .-VC1HAL_V200R004_InitHal
	.align	2
	.global	VC1HAL_V200R004_CfgDnMsg
	.type	VC1HAL_V200R004_CfgDnMsg, %function
VC1HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1360:
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
	str	r3, [r0, #0]	@ tmp239,* D.31318
	ldrh	r2, [r5, #80]	@, <variable>.mbheight
	ldrh	ip, [r5, #78]	@, <variable>.mbwidth
	str	r4, [fp, #-32]	@ tmp230, D32
	strb	r2, [fp, #-30]	@ <variable>.mbheight, <variable>.bits.mbheight
	strb	ip, [fp, #-32]	@ <variable>.mbwidth, <variable>.bits.mbwidth
	ldr	r1, [fp, #-32]	@ D32.521, D32
	str	r1, [r0, #4]	@ D32.521,
	ldrb	r7, [r5, #8]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ldrb	r2, [r5, #6]	@ zero_extendqisi2	@ <variable>.loopfilter, <variable>.loopfilter
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.numref, <variable>.numref
	mov	r3, r7, asl #2	@ tmp251, <variable>.curparity,
	ldrb	ip, [r5, #7]	@ zero_extendqisi2	@ <variable>.issecondfld, <variable>.issecondfld
	and	r7, r3, #4	@ tmp255, tmp251,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@ <variable>.fwd_fcm, <variable>.fwd_fcm
	bfi	r7, r2, #0, #1	@ tmp255, <variable>.loopfilter,,
	ldrb	r2, [r5, #11]	@ zero_extendqisi2	@ <variable>.bwd_fcm, <variable>.bwd_fcm
	bfi	r7, lr, #3, #1	@ tmp259, <variable>.numref,,
	bfi	r7, ip, #1, #1	@ tmp263, <variable>.issecondfld,,
	bfi	r7, r1, #4, #2	@ tmp267, <variable>.fwd_fcm,,
	bfi	r7, r2, #6, #2	@ tmp271, <variable>.bwd_fcm,,
	str	r7, [r0, #8]	@ tmp271,
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ <variable>.condover, <variable>.condover
	ldrb	ip, [r5, #13]	@ zero_extendqisi2	@ <variable>.fastuvmc, <variable>.fastuvmc
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@ <variable>.overlap, <variable>.overlap
	mov	r2, r3, asl #4	@ tmp276, <variable>.condover,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.rndctrl, <variable>.rndctrl
	and	r7, r2, #48	@ tmp280, tmp276,
	bfi	r7, ip, #1, #1	@ tmp280, <variable>.fastuvmc,,
	bfi	r7, r1, #2, #1	@ tmp284, <variable>.overlap,,
	bfi	r7, lr, #0, #1	@ tmp288, <variable>.rndctrl,,
	str	r7, [r0, #12]	@ tmp288,
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ <variable>.altpquant, <variable>.altpquant
	ldrb	ip, [r5, #19]	@ zero_extendqisi2	@ <variable>.halfqp, <variable>.halfqp
	ldrb	r1, [r5, #17]	@ zero_extendqisi2	@ <variable>.pqindex, <variable>.pqindex
	mov	r2, r3, asl #16	@ tmp293, <variable>.altpquant,
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.pquant, <variable>.pquant
	and	r7, r2, #2031616	@ tmp297, tmp293,
	bfi	r7, ip, #24, #1	@ tmp297, <variable>.halfqp,,
	bfi	r7, r1, #8, #5	@ tmp301, <variable>.pqindex,,
	bfi	r7, lr, #0, #5	@ tmp305, <variable>.pquant,,
	str	r7, [r0, #16]	@ tmp305,
	ldrb	r3, [r5, #20]	@ zero_extendqisi2	@ <variable>.buniform, <variable>.buniform
	ldrb	r2, [r5, #24]	@ zero_extendqisi2	@ <variable>.dqbilevel, <variable>.dqbilevel
	ldrb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.dqprofile, <variable>.dqprofile
	and	r3, r3, #1	@ tmp314, <variable>.buniform,
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.dquant, <variable>.dquant
	bfi	r3, r2, #12, #1	@ tmp314, <variable>.dqbilevel,,
	ldrb	ip, [r5, #25]	@ zero_extendqisi2	@ <variable>.dquantfrm, <variable>.dquantfrm
	bfi	r3, r1, #8, #2	@ tmp318, <variable>.dqprofile,,
	ldrb	r7, [r5, #26]	@ zero_extendqisi2	@ <variable>.quantmode, <variable>.quantmode
	bfi	r3, lr, #2, #2	@ tmp322, <variable>.dquant,,
	ldrb	r2, [r5, #21]	@ zero_extendqisi2	@ <variable>.usealtqp, <variable>.usealtqp
	bfi	r3, ip, #14, #1	@ tmp326, <variable>.dquantfrm,,
	bfi	r3, r7, #16, #4	@ tmp330, <variable>.quantmode,,
	bfi	r3, r2, #1, #1	@ tmp334, <variable>.usealtqp,,
	str	r3, [r0, #20]	@ tmp334,
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ <variable>.mvmode, <variable>.mvmode
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.mvmode2, <variable>.mvmode2
	and	r1, lr, #7	@ tmp343, <variable>.mvmode,
	bfi	r1, ip, #4, #2	@ tmp343, <variable>.mvmode2,,
	str	r1, [r0, #24]	@ tmp343,
	ldrb	r7, [r5, #34]	@ zero_extendqisi2	@ <variable>.reffiled, <variable>.reffiled
	ldrb	r2, [r5, #33]	@ zero_extendqisi2	@ <variable>.dmvrange, <variable>.dmvrange
	ldrb	lr, [r5, #30]	@ zero_extendqisi2	@ <variable>.colishalfpel, <variable>.colishalfpel
	mov	r3, r7, asl #14	@ tmp348, <variable>.reffiled,
	ldrb	ip, [r5, #29]	@ zero_extendqisi2	@ <variable>.curishalfpel, <variable>.curishalfpel
	and	r7, r3, #16384	@ tmp352, tmp348,
	ldrb	r1, [r5, #31]	@ zero_extendqisi2	@ <variable>.mvrange, <variable>.mvrange
	bfi	r7, r2, #12, #2	@ tmp352, <variable>.dmvrange,,
	ldrb	r2, [r5, #32]	@ zero_extendqisi2	@ <variable>.refdist, <variable>.refdist
	bfi	r7, lr, #1, #1	@ tmp356, <variable>.colishalfpel,,
	bfi	r7, ip, #0, #1	@ tmp360, <variable>.curishalfpel,,
	bfi	r7, r1, #2, #2	@ tmp364, <variable>.mvrange,,
	bfi	r7, r2, #4, #5	@ tmp368, <variable>.refdist,,
	str	r7, [r0, #28]	@ tmp368,
	ldrb	r3, [r5, #35]	@ zero_extendqisi2	@ <variable>.transdctab, <variable>.transdctab
	ldrb	lr, [r5, #36]	@ zero_extendqisi2	@ <variable>.vstransform, <variable>.vstransform
	ldrb	r2, [r5, #37]	@ zero_extendqisi2	@ <variable>.ttmbf, <variable>.ttmbf
	and	r7, r3, #1	@ tmp377, <variable>.transdctab,
	ldrb	ip, [r5, #38]	@ zero_extendqisi2	@ <variable>.transacfrm, <variable>.transacfrm
	bfi	r7, lr, #1, #1	@ tmp377, <variable>.vstransform,,
	ldrb	r1, [r5, #39]	@ zero_extendqisi2	@ <variable>.transacfrm2, <variable>.transacfrm2
	bfi	r7, r2, #2, #1	@ tmp381, <variable>.ttmbf,,
	ldrb	lr, [r5, #40]	@ zero_extendqisi2	@ <variable>.ttfrm, <variable>.ttfrm
	bfi	r7, ip, #4, #2	@ tmp385, <variable>.transacfrm,,
	bfi	r7, r1, #6, #2	@ tmp389, <variable>.transacfrm2,,
	bfi	r7, lr, #8, #2	@ tmp393, <variable>.ttfrm,,
	str	r7, [r0, #32]	@ tmp393,
	ldrb	r1, [r5, #46]	@ zero_extendqisi2	@ <variable>.acpredmodeisskipraw, <variable>.acpredmodeisskipraw
	ldrb	r2, [r5, #42]	@ zero_extendqisi2	@ <variable>.directmbmodeisskipraw, <variable>.directmbmodeisskipraw
	ldrb	r7, [r5, #44]	@ zero_extendqisi2	@ <variable>.fieldtxmodeisskipraw, <variable>.fieldtxmodeisskipraw
	mov	r3, r1, asl #5	@ tmp398, <variable>.acpredmodeisskipraw,
	ldrb	lr, [r5, #41]	@ zero_extendqisi2	@ <variable>.forwardmbmodeisskipraw, <variable>.forwardmbmodeisskipraw
	and	r3, r3, #32	@ tmp402, tmp398,
	ldrb	ip, [r5, #43]	@ zero_extendqisi2	@ <variable>.mvtypembmodeisskipraw, <variable>.mvtypembmodeisskipraw
	bfi	r3, r2, #1, #1	@ tmp402, <variable>.directmbmodeisskipraw,,
	ldrb	r1, [r5, #47]	@ zero_extendqisi2	@ <variable>.overflagsmodeisskipraw, <variable>.overflagsmodeisskipraw
	bfi	r3, r7, #3, #1	@ tmp406, <variable>.fieldtxmodeisskipraw,,
	ldrb	r2, [r5, #45]	@ zero_extendqisi2	@ <variable>.skipmbmodeisskipraw, <variable>.skipmbmodeisskipraw
	bfi	r3, lr, #0, #1	@ tmp410, <variable>.forwardmbmodeisskipraw,,
	bfi	r3, ip, #2, #1	@ tmp414, <variable>.mvtypembmodeisskipraw,,
	bfi	r3, r1, #6, #1	@ tmp418, <variable>.overflagsmodeisskipraw,,
	bfi	r3, r2, #4, #1	@ tmp422, <variable>.skipmbmodeisskipraw,,
	str	r3, [r0, #36]	@ tmp422,
	ldrb	r3, [r5, #50]	@ zero_extendqisi2	@ <variable>.bfraction, <variable>.bfraction
	ldrb	r1, [r5, #49]	@ zero_extendqisi2	@ <variable>.cbptab, <variable>.cbptab
	ldrb	ip, [r5, #48]	@ zero_extendqisi2	@ <variable>.mvtab, <variable>.mvtab
	mov	r2, r3, asl #16	@ tmp427, <variable>.bfraction,
	and	lr, r2, #8323072	@ tmp431, tmp427,
	bfi	lr, r1, #8, #3	@ tmp431, <variable>.cbptab,,
	bfi	lr, ip, #0, #3	@ tmp435, <variable>.mvtab,,
	str	lr, [r0, #40]	@ tmp435,
	ldrb	r3, [r5, #53]	@ zero_extendqisi2	@ <variable>.fourmvbptab, <variable>.fourmvbptab
	ldrb	ip, [r5, #54]	@ zero_extendqisi2	@ <variable>.fourmvswtich, <variable>.fourmvswtich
	ldrb	r1, [r5, #51]	@ zero_extendqisi2	@ <variable>.mbmodetab, <variable>.mbmodetab
	mov	r2, r3, asl #8	@ tmp440, <variable>.fourmvbptab,
	ldrb	lr, [r5, #52]	@ zero_extendqisi2	@ <variable>.twomvbptab, <variable>.twomvbptab
	and	r3, r2, #768	@ tmp444, tmp440,
	movw	r2, #12372	@ tmp458,
	bfi	r3, ip, #12, #1	@ tmp444, <variable>.fourmvswtich,,
	bfi	r3, r1, #0, #3	@ tmp448, <variable>.mbmodetab,,
	movw	r1, #12380	@ tmp466,
	bfi	r3, lr, #4, #2	@ tmp452, <variable>.twomvbptab,,
	str	r3, [r0, #44]	@ tmp452,
	ldr	lr, [r5, r2]	@ <variable>.ScaleFactor, <variable>.ScaleFactor
	movw	r3, #12376	@ tmp462,
	str	lr, [r0, #48]	@ <variable>.ScaleFactor,
	ldr	ip, [r5, r3]	@ <variable>.FRFD, <variable>.FRFD
	str	ip, [r0, #52]	@ <variable>.FRFD,
	ldr	r2, [r5, r1]	@ <variable>.BRFD, <variable>.BRFD
	str	r2, [r0, #56]	@ <variable>.BRFD,
	ldrb	lr, [r5, #55]	@ zero_extendqisi2	@ <variable>.rangemapyflag, <variable>.rangemapyflag
	ldrb	ip, [r5, #56]	@ zero_extendqisi2	@ <variable>.rangemapy, <variable>.rangemapy
	ldrb	r1, [r5, #57]	@ zero_extendqisi2	@ <variable>.rangemapuvflag, <variable>.rangemapuvflag
	mov	r3, lr, asl #20	@ tmp469, <variable>.rangemapyflag,
	ldrb	r2, [r5, #58]	@ zero_extendqisi2	@ <variable>.rangemapuv, <variable>.rangemapuv
	and	lr, r3, #1048576	@ tmp473, tmp469,
	bfi	lr, ip, #21, #3	@ tmp473, <variable>.rangemapy,,
	bfi	lr, r1, #24, #1	@ tmp477, <variable>.rangemapuvflag,,
	movw	r1, #12388	@ tmp493,
	bfi	lr, r2, #25, #3	@ tmp481, <variable>.rangemapuv,,
	str	lr, [fp, #-32]	@ tmp481,
	ldrh	r2, [r5, #72]	@, <variable>.totalslicenum
	movw	lr, #12384	@ tmp489,
	strh	r2, [fp, #-32]	@ movhi	@, <variable>.bits.totalslicenum
	ldr	r3, [fp, #-32]	@ D32.549, D32
	str	r3, [r0, #60]	@ D32.549,
	movw	r3, #12392	@ tmp497,
	ldr	ip, [r5, lr]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	ip, [r0, #64]	@ <variable>.CurFrmImgLuma2dPhyAddr,
	movw	ip, #12396	@ tmp501,
	ldr	r2, [r5, r1]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r0, #68]	@ <variable>.FwdRefAddr,
	movw	r2, #12400	@ tmp505,
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
	ldrh	lr, [r5, #74]	@, <variable>.DispPicWidth
	strh	lr, [fp, #-32]	@ movhi	@, <variable>.bits.DispPicWidth
	ldrh	ip, [r5, #76]	@, <variable>.DispPicHeight
	strh	ip, [fp, #-30]	@ movhi	@, <variable>.bits.DispPicHeight
	ldr	r1, [fp, #-32]	@ D32.571, D32
	str	r1, [r0, #108]	@ D32.571,
	ldrb	r2, [r5, #63]	@ zero_extendqisi2	@ <variable>.CodecVersion, <variable>.CodecVersion
	ldrb	lr, [r5, #59]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM, <variable>.RANGEREDFRM
	ldrb	ip, [r5, #60]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM0, <variable>.RANGEREDFRM0
	mov	r3, r2, asl #25	@ tmp528, <variable>.CodecVersion,
	ldrb	r1, [r5, #61]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM1, <variable>.RANGEREDFRM1
	and	r3, r3, #234881024	@ tmp532, tmp528,
	ldrb	r2, [r5, #62]	@ zero_extendqisi2	@ <variable>.PostCresent, <variable>.PostCresent
	bfi	r3, lr, #20, #1	@ tmp532, <variable>.RANGEREDFRM,,
	movw	lr, #12408	@ tmp554,
	bfi	r3, ip, #21, #1	@ tmp536, <variable>.RANGEREDFRM0,,
	bfi	r3, r1, #22, #1	@ tmp540, <variable>.RANGEREDFRM1,,
	movw	r1, #12404	@ tmp550,
	bfi	r3, r2, #24, #1	@ tmp544, <variable>.PostCresent,,
	str	r3, [r0, #112]	@ tmp544,
	ldr	r3, [r5, r1]	@ <variable>.BPD_STRIDE, <variable>.BPD_STRIDE
	movw	r2, #12412	@ tmp558,
	str	r3, [r0, #116]	@ <variable>.BPD_STRIDE,
	mov	r3, #12416	@ tmp562,
	ldr	ip, [r5, lr]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	str	ip, [r0, #120]	@ <variable>.MVTYPEMB_ADDR,
	movw	ip, #12420	@ tmp566,
	ldr	r1, [r5, r2]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	str	r1, [r0, #124]	@ <variable>.SKIPMB_ADDR,
	movw	r1, #12424	@ tmp570,
	ldr	lr, [r5, r3]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	str	lr, [r0, #128]	@ <variable>.DIRECTMB_ADDR,
	movw	lr, #12428	@ tmp574,
	ldr	r2, [r5, ip]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	str	r2, [r0, #132]	@ <variable>.ACPRED_ADDR,
	movw	r2, #12432	@ tmp578,
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
	ldr	r1, [r5, #64]	@, <variable>.pIntensityConvertTab
	mov	r2, #3072	@,
	bl	memcpy	@
	mov	r0, r4	@, tmp230
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	VC1HAL_V200R004_CfgDnMsg, .-VC1HAL_V200R004_CfgDnMsg
	.align	2
	.global	VC1HAL_V200R004_CfgReg
	.type	VC1HAL_V200R004_CfgReg, %function
VC1HAL_V200R004_CfgReg:
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
	movw	r4, #1148	@ tmp173,
	mul	r3, r4, r2	@ tmp172, tmp173, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp312,
	movt	r4, #:upper16:g_HwMem	@ tmp312,
	mov	r6, r2	@ VdhId, VdhId
	movw	r2, #:lower16:77988	@ tmp182,
	movt	r2, #:upper16:77988	@ tmp182,
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	mvn	r8, #0	@ tmp176,
	movw	r0, #:lower16:77992	@ tmp191,
	movt	r0, #:upper16:77992	@ tmp191,
	ldr	r7, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	ip, #:lower16:77996	@ tmp207,
	movt	ip, #:upper16:77996	@ tmp207,
	str	r8, [r7, #32]	@ tmp176,
	ldr	r2, [r5, r2]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	r7, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r8, r2, #-16777216	@ tmp183, <variable>.basic_cfg0,
	bic	r2, r8, #15728640	@ tmp183, tmp183,
	orr	r8, r2, #1090519040	@ D32.427, tmp183,
	str	r8, [r7, #8]	@ D32.427,
	ldr	r2, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r5, r0]	@ D.31232, <variable>.basic_cfg1
	str	r0, [r2, #12]	@ D.31232,
	ldr	r7, [r1, #44]	@ D.31235, <variable>.MsgSlotAddr
	ldr	r8, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r8, #16]	@ D.31235,
	ldr	r0, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ D.31238, <variable>.MsgSlotAddr
	str	r1, [r0, #20]	@ D.31238,
	ldr	r3, [r3, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, ip]	@ D.31242, <variable>.stream_base_addr
	str	r2, [r3, #24]	@ D.31242,
	ldrh	r7, [r5, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	cmp	r7, #120	@ <variable>.mbwidth,
	movls	r7, #65536	@ D32,
	movhi	r7, #0	@ D32,
	cmp	r6, #0	@ VdhId,
	bne	.L17	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp210,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp210,
	ldr	ip, [r3, #0]	@ s_RegPhyBaseAddr,
	orr	r1, r0, r7	@ D.31249,, D32
	add	r0, ip, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L8:
	movw	r7, #1148	@ tmp219,
	movw	r3, #:lower16:3148803	@ tmp222,
	mul	r2, r7, r6	@ tmp218, tmp219, VdhId
	movt	r3, #:upper16:3148803	@ tmp222,
	movw	r0, #:lower16:78000	@ tmp259,
	movt	r0, #:upper16:78000	@ tmp259,
	movw	r1, #:lower16:78040	@ tmp260,
	movw	r7, #2047	@ tmp263,
	movt	r1, #:upper16:78040	@ tmp260,
	ldr	ip, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #60]	@ tmp222,
	ldr	r8, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r8, #64]	@ tmp222,
	ldr	ip, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #68]	@ tmp222,
	ldr	r8, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r8, #72]	@ tmp222,
	ldr	ip, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #76]	@ tmp222,
	ldr	r8, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r8, #80]	@ tmp222,
	ldr	ip, [r2, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #84]	@ tmp222,
	ldrh	r3, [r5, #74]	@ D.31270, <variable>.DispPicWidth
	ldr	ip, [r5, r0]	@ D.31269, <variable>.VahbStride
	sub	r8, r3, #1	@ tmp261, D.31270,
	uxth	r0, r8	@ tmp262, tmp261
	str	ip, [r5, r1]	@ D.31269, <variable>.ystride_1d
	cmp	r0, r7	@ tmp262, tmp263
	bls	.L11	@,
	sub	r8, r3, #2048	@ tmp264, D.31270,
	sub	r2, r8, #1	@ tmp264, tmp264,
	uxth	r0, r2	@ tmp266, tmp264
	cmp	r0, r7	@ tmp266, tmp263
	movls	r1, #32	@ level,
	bls	.L13	@,
	sub	r8, r3, #4096	@ tmp268, D.31270,
	sub	r2, r8, #1	@ tmp268, tmp268,
	uxth	r0, r2	@ tmp270, tmp268
	cmp	r0, r7	@ tmp270, tmp263
	movls	r1, #48	@ level,
	bls	.L13	@,
	sub	r2, r3, #6144	@ tmp272, D.31270,
	sub	r0, r2, #1	@ tmp272, tmp272,
	uxth	r3, r0	@ tmp274, tmp272
	cmp	r3, r7	@ tmp274, tmp263
	movls	r1, #64	@ level,
	bhi	.L11	@,
.L13:
	ldrh	r0, [r5, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	add	ip, r1, ip, lsr #4	@, tmp282, level, D.31269,
	movw	r2, #1148	@ tmp286,
	movw	r3, #:lower16:78044	@ tmp276,
	add	r8, r0, #31	@ tmp278, <variable>.DispPicHeight,
	movt	r3, #:upper16:78044	@ tmp276,
	mul	r6, r2, r6	@ tmp285, tmp286, VdhId
	mov	r7, r8, asr #5	@ tmp279, tmp278,
	movw	r0, #:lower16:78036	@ tmp289,
	movt	r0, #:upper16:78036	@ tmp289,
	mov	r8, r7, asl #5	@ tmp280, tmp279,
	movw	r2, #:lower16:78040	@ tmp295,
	ldr	r7, [r5, r0]	@ D.31298, <variable>.ystaddr_1d
	movt	r2, #:upper16:78040	@ tmp295,
	mul	ip, ip, r8	@ tmp283, tmp282, tmp280
	mov	r0, #0	@,
	str	ip, [r5, r3]	@ tmp283, <variable>.uvoffset_1d
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [ip, #96]	@ D.31298,
	ldr	ip, [r5, r2]	@ D.31302, <variable>.ystride_1d
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #100]	@ D.31302,
	ldr	ip, [r5, r3]	@ D.31306, <variable>.uvoffset_1d
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #104]	@ D.31306,
	ldrh	r2, [r5, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r3, r2, #31	@ tmp308, <variable>.DispPicHeight,
	mov	r2, r3, asr #5	@ tmp309, tmp308,
	mov	r3, r2, asl #5	@ tmp310, tmp309,
	mul	r1, r1, r3	@ D32.667, level, tmp310
	str	r1, [ip, #108]	@ D32.667,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L17:
	cmp	r6, #1	@ VdhId,
	bne	.L8	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr_1	@ tmp214,
	movt	r1, #:upper16:s_RegPhyBaseAddr_1	@ tmp214,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr_1,
	orr	r1, r0, r7	@ temp.637,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L8	@
.L11:
	mov	r1, #16	@ level,
	b	.L13	@
	.fnend
	.size	VC1HAL_V200R004_CfgReg, .-VC1HAL_V200R004_CfgReg
	.align	2
	.global	VC1HAL_V200R004_CfgSliceMsg
	.type	VC1HAL_V200R004_CfgSliceMsg, %function
VC1HAL_V200R004_CfgSliceMsg:
	.fnstart
.LFB1358:
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
	mov	r6, r0	@ D.31089,
	beq	.L103	@,
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ temp.817, <variable>.SlcNum
	movw	r3, #:lower16:77996	@ tmp307,
	ldr	r0, [r4, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	movt	r3, #:upper16:77996	@ tmp307,
	cmp	r1, #0	@ temp.817,
	bic	r2, r0, #15	@, <variable>.Phy_addr,
	str	r2, [fp, #-48]	@, %sfp
	str	r2, [r4, r3]	@, <variable>.stream_base_addr
	beq	.L58	@,
	mov	r9, #0	@ pre.810,
	mov	r0, r6	@ ivtmp.791, D.31089
	mov	sl, r9	@ i.847, pre.810
	cmp	sl, #0	@ i.847,
	mov	r6, r4	@ ivtmp.831, pVc1DecParam
	str	r9, [fp, #-52]	@ pre.810, %sfp
	bne	.L43	@,
.L105:
	ldr	r5, [r4, #108]	@ slice_end_mbn.807, <variable>.SlcEndMbn
	cmp	r1, #1	@ temp.817,
	moveq	r2, sl	@ prephitmp.696, i.847
	moveq	r1, sl	@ slice_start_mbn.808, i.847
	streq	r5, [fp, #-52]	@ slice_end_mbn.807, %sfp
	beq	.L45	@,
	movle	r3, #1	@ k,
	ble	.L47	@,
	ldr	r3, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r3, r5	@ <variable>.SlcEndMbn, slice_end_mbn.807
	movgt	r3, #1	@ k,
	bgt	.L49	@,
	tst	r1, #1	@ temp.817,
	mov	r2, r4	@ ivtmp.836, pVc1DecParam
	mov	r3, #1	@ k,
	beq	.L50	@,
	mov	r3, #2	@ k,
	cmp	r1, r3	@ temp.817, k
	ble	.L47	@,
	ldr	r7, [r4, #204]	@ temp.839, <variable>.SlcEndMbn
	add	r2, r4, #48	@ ivtmp.836, pVc1DecParam,
	cmp	r5, r7	@ slice_end_mbn.807, temp.839
	bge	.L50	@,
	b	.L47	@
.L51:
	ldr	r9, [r2, #204]	@ temp.839, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.836, ivtmp.836,
	cmp	r5, r9	@ slice_end_mbn.807, temp.839
	blt	.L47	@,
	ldr	lr, [ip, #204]	@ temp.839, <variable>.SlcEndMbn
	add	r3, r3, #1	@ k, k,
	cmp	r5, lr	@ slice_end_mbn.807, temp.839
	blt	.L47	@,
.L50:
	add	r3, r3, #1	@ k, k,
	add	ip, r2, #48	@ tmp377, ivtmp.836,
	cmp	r1, r3	@ temp.817, k
	bgt	.L51	@,
.L47:
	cmp	r3, r1	@ k, temp.817
	beq	.L104	@,
.L49:
	ldr	r7, [fp, #-56]	@, %sfp
	mov	r9, r3	@ pre.810, k
	mov	r1, #0	@ slice_start_mbn.808,
	str	r5, [fp, #-52]	@ slice_end_mbn.807, %sfp
	add	r2, r7, r3, asl #8	@, prephitmp.696,, k,
.L45:
	ldr	r7, [r6, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	add	r5, r1, r5, asl #16	@, D32.867, slice_start_mbn.808, slice_end_mbn.807,
	ldr	lr, [fp, #-48]	@, %sfp
	add	sl, sl, #1	@ i.847, i.847,
	ldr	ip, [r6, #100]	@ <variable>.BitOffset, <variable>.BitOffset
	rsb	r3, lr, r7	@ bit_steam_addr_0.851,, <variable>.Phy_addr
	ldr	r1, [r6, #104]	@ <variable>.Len, <variable>.Len
	and	r7, r3, #15	@ tmp333, bit_steam_addr_0.851,
	bic	lr, r3, #15	@ D32.863, bit_steam_addr_0.851,
	mov	r3, #0	@,
	add	r6, r6, #48	@ ivtmp.831, ivtmp.831,
	add	ip, ip, r7, asl #3	@, tmp335, <variable>.BitOffset, tmp333,
	add	ip, r1, ip, asl #25	@, D32.862, <variable>.Len, tmp335,
	str	ip, [r0, #0]	@ D32.862,* ivtmp.791
	str	lr, [r0, #4]	@ D32.863,
	str	r3, [r0, #8]	@,
	str	r3, [r0, #12]	@,
	str	r5, [r0, #16]	@ D32.867,
	str	r2, [r0, #252]	@ prephitmp.696,
	add	r0, r0, #256	@ ivtmp.791, ivtmp.791,
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ temp.817, <variable>.SlcNum
	cmp	r1, sl	@ temp.817, i.847
	ble	.L58	@,
	movw	ip, #:lower16:77996	@,
	movt	ip, #:upper16:77996	@,
	cmp	sl, #0	@ i.847,
	ldr	r5, [r4, ip]	@, <variable>.stream_base_addr
	str	r5, [fp, #-48]	@, %sfp
	beq	.L105	@,
.L43:
	add	r5, r9, r9, asl #1	@, tmp313, pre.810, pre.810,
	add	r3, r9, #1	@ j.805, pre.810,
	cmp	r1, r3	@ temp.817, j.805
	mov	r7, r5, asl #4	@ tmp314, tmp313,
	add	r2, r7, r4	@ tmp315, tmp314, pVc1DecParam
	ldr	ip, [r2, #108]	@ temp.844, <variable>.SlcEndMbn
	mov	r5, ip	@ slice_end_mbn.807, temp.844
	ble	.L52	@,
	add	r2, r3, r3, asl #1	@, tmp320, j.805, j.805,
	add	lr, r4, r2, asl #4	@, tmp322, pVc1DecParam, tmp320,
	ldr	r2, [lr, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	ip, r2	@ temp.844, <variable>.SlcEndMbn
	blt	.L52	@,
	mvn	r2, r3	@ tmp380, j.805
	add	lr, r2, r1	@ tmp379, tmp380, temp.817
	add	r7, r7, #80	@ tmp329, tmp314,
	tst	lr, #1	@ tmp379,
	add	r7, r4, r7	@ tmp330, pVc1DecParam, tmp329
	add	r2, r7, #4	@ ivtmp.776, tmp330,
	beq	.L53	@,
	ldr	r8, [r2, #120]	@ temp.846, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.805, j.805,
	add	r2, r7, #52	@ ivtmp.776, tmp330,
	cmp	ip, r8	@ temp.844, temp.846
	bge	.L53	@,
	b	.L52	@
.L54:
	ldr	r8, [r2, #120]	@ temp.846, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.776, ivtmp.776,
	cmp	ip, r8	@ temp.844, temp.846
	blt	.L52	@,
	ldr	r7, [r7, #120]	@ temp.846, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.805, j.805,
	cmp	ip, r7	@ temp.844, temp.846
	blt	.L52	@,
.L53:
	add	r3, r3, #1	@ j.805, j.805,
	add	r7, r2, #48	@ tmp382, ivtmp.776,
	cmp	r1, r3	@ temp.817, j.805
	bgt	.L54	@,
.L52:
	cmp	r3, r1	@ j.805, temp.817
	ldrne	r1, [fp, #-56]	@, %sfp
	movne	r9, r3	@ pre.810, j.805
	moveq	r2, #0	@ next_slice_para_addr.806,
	addne	r2, r1, r3, asl #8	@, next_slice_para_addr.806,, j.805,
	ldr	r3, [fp, #-52]	@, %sfp
	str	ip, [fp, #-52]	@ temp.844, %sfp
	add	r1, r3, #1	@ slice_start_mbn.808,,
	b	.L45	@
.L104:
	mov	r2, #0	@ prephitmp.696,
	mov	r9, r3	@ pre.810, k
	str	r5, [fp, #-52]	@ slice_end_mbn.807, %sfp
	mov	r1, r2	@ slice_start_mbn.808, prephitmp.696
	b	.L45	@
.L103:
	ldrb	r2, [r4, #70]	@ zero_extendqisi2	@ <variable>.SlcNum, <variable>.SlcNum
	movw	r0, #:lower16:77996	@ tmp259,
	ldr	ip, [r4, #96]	@ prephitmp.706, <variable>.Phy_addr
	movt	r0, #:upper16:77996	@ tmp259,
	cmp	r2, #0	@ <variable>.SlcNum,
	str	ip, [r4, r0]	@ prephitmp.706, <variable>.stream_base_addr
	beq	.L20	@,
	tst	r2, #1	@ <variable>.SlcNum,
	mov	r1, r4	@ ivtmp.758, pVc1DecParam
	mov	r3, #0	@ i,
	bne	.L24	@,
	ldr	r1, [r4, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r1, #0	@ <variable>.pStream2,
	beq	.L67	@,
	ldr	r3, [r4, #112]	@ D.31099, <variable>.Phy_addr2
	cmp	r3, ip	@ D.31099, prephitmp.706
	bcs	.L67	@,
.L101:
	str	r3, [r4, r0]	@ D.31099, <variable>.stream_base_addr
.L68:
	mov	r3, #1	@ i,
	cmp	r3, r2	@ i, <variable>.SlcNum
	add	r1, r4, #48	@ ivtmp.758, pVc1DecParam,
	blt	.L99	@,
.L23:
	movw	r0, #:lower16:77996	@ tmp264,
	movt	r0, #:upper16:77996	@ tmp264,
	ldr	ip, [r4, r0]	@ prephitmp.706, <variable>.stream_base_addr
.L20:
	movw	r5, #:lower16:77996	@ tmp265,
	movt	r5, #:upper16:77996	@ tmp265,
	bic	r3, ip, #15	@ tmp266, prephitmp.706,
	mov	r0, #4	@,
	str	r3, [r4, r5]	@ tmp266, <variable>.stream_base_addr
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ temp.823, <variable>.SlcNum
	cmp	r3, #0	@ temp.823,
	beq	.L58	@,
	mov	r2, #0	@,
	mov	r5, r4	@ ivtmp.824, pVc1DecParam
	mov	r8, r2	@ i.820,
	str	r2, [fp, #-52]	@, %sfp
	str	r2, [fp, #-80]	@, %sfp
.L42:
	ldr	ip, [r5, #100]	@, <variable>.BitOffset
	movw	r0, #:lower16:77996	@,
	movt	r0, #:upper16:77996	@,
	ldr	sl, [r5, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	lr, [r5, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	ldr	r7, [r4, r0]	@ D.31100, <variable>.stream_base_addr
	cmp	sl, #0	@ <variable>.pStream2,
	str	ip, [fp, #-72]	@, %sfp
	ldr	r1, [r5, #104]	@, <variable>.Len
	rsb	lr, r7, lr	@ bit_steam_addr_0, D.31100, <variable>.Phy_addr
	bic	r2, lr, #15	@, bit_steam_addr_0,
	str	r2, [fp, #-48]	@, %sfp
	streq	sl, [fp, #-60]	@ bit_steam_addr_1, %sfp
	str	r1, [fp, #-68]	@, %sfp
	ldrne	sl, [r5, #112]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	ldrne	r2, [r5, #116]	@ <variable>.BitOffset2, <variable>.BitOffset2
	ldrne	ip, [r5, #120]	@, <variable>.Len2
	rsbne	sl, r7, sl	@ bit_steam_addr_1, D.31100, <variable>.Phy_addr2
	andne	r7, sl, #15	@ tmp273, bit_steam_addr_1,
	streq	sl, [fp, #-64]	@ bit_steam_addr_1, %sfp
	addne	r2, r2, r7, asl #3	@,, <variable>.BitOffset2, tmp273,
	strne	ip, [fp, #-60]	@, %sfp
	strne	r2, [fp, #-64]	@, %sfp
	cmp	r8, #0	@ i.820,
	bne	.L28	@,
	cmp	r3, #1	@ temp.823,
	ldr	r7, [r4, #108]	@ slice_end_mbn, <variable>.SlcEndMbn
	beq	.L106	@,
	movle	r2, #1	@ k.864,
	ble	.L32	@,
	ldr	r2, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r7, r2	@ slice_end_mbn, <variable>.SlcEndMbn
	movlt	r2, #1	@ k.864,
	blt	.L34	@,
	tst	r3, #1	@ temp.823,
	mov	r1, r4	@ ivtmp.736, pVc1DecParam
	mov	r2, #1	@ k.864,
	beq	.L35	@,
	mov	r2, #2	@ k.864,
	cmp	r2, r3	@ k.864, temp.823
	bge	.L32	@,
	ldr	r0, [r4, #204]	@ temp.819, <variable>.SlcEndMbn
	add	r1, r4, #48	@ ivtmp.736, pVc1DecParam,
	cmp	r7, r0	@ slice_end_mbn, temp.819
	bge	.L35	@,
	b	.L32	@
.L36:
	ldr	r9, [r1, #204]	@ temp.819, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.736, ivtmp.736,
	cmp	r7, r9	@ slice_end_mbn, temp.819
	blt	.L32	@,
	ldr	r9, [r0, #204]	@ temp.819, <variable>.SlcEndMbn
	add	r2, r2, #1	@ k.864, k.864,
	cmp	r7, r9	@ slice_end_mbn, temp.819
	blt	.L32	@,
.L35:
	add	r2, r2, #1	@ k.864, k.864,
	add	r0, r1, #48	@ tmp362, ivtmp.736,
	cmp	r2, r3	@ k.864, temp.823
	blt	.L36	@,
.L32:
	cmp	r2, r3	@ k.864, temp.823
	beq	.L107	@,
.L34:
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r3, #0	@,
	str	r3, [fp, #-76]	@, %sfp
	add	r9, ip, r2, asl #8	@, next_slice_para_addr,, k.864,
	str	r2, [fp, #-52]	@ k.864, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r9	@ prephitmp.703, next_slice_para_addr
.L30:
	ldr	ip, [fp, #-72]	@, %sfp
	and	r2, lr, #15	@ tmp300, bit_steam_addr_0,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC1	@,
	add	lr, ip, r2, asl #3	@, tmp302,, tmp300,
	ldr	ip, [fp, #-68]	@, %sfp
	movt	r1, #:upper16:.LC1	@,
	add	r8, r8, #1	@ i.820, i.820,
	add	r2, ip, lr, asl #25	@, D32,, tmp302,
	str	r2, [r6, #0]	@ D32,* ivtmp.740
	str	r3, [fp, #-84]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	add	r5, r5, #48	@ ivtmp.824, ivtmp.824,
	str	r2, [r6, #4]	@,
	ldr	r2, [fp, #-48]	@, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r2, r3, ip, asl #25	@, D32.829,,,
	str	r2, [r6, #8]	@ D32.829,
	bl	dprint_vfmw	@
	str	sl, [r6, #12]	@ bit_steam_addr_1,
	mov	r2, sl	@, bit_steam_addr_1
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-76]	@, %sfp
	mov	r0, #4	@,
	add	r2, r1, r7, asl #16	@, D32.835,, slice_end_mbn,
	movw	r1, #:lower16:.LC5	@,
	str	r2, [r6, #16]	@ D32.835,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-84]	@,
	mov	r2, r9	@, next_slice_para_addr
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r0, [r6, #252]	@ prephitmp.703,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ temp.823, <variable>.SlcNum
	add	r6, r6, #256	@ ivtmp.740, ivtmp.740,
	cmp	r3, r8	@ temp.823, i.820
	bgt	.L42	@,
.L58:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L108:
	str	lr, [r4, r0]	@ D.31102, <variable>.stream_base_addr
.L22:
	add	r3, r3, #1	@ tmp372, i,
	add	r1, r1, #48	@ tmp373, ivtmp.758,
	cmp	r3, r2	@ tmp372, <variable>.SlcNum
	bge	.L23	@,
	ldr	r5, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	ip, [r4, r0]	@ prephitmp.706, <variable>.stream_base_addr
	cmp	r5, #0	@ <variable>.pStream2,
	beq	.L70	@,
	ldr	lr, [r1, #112]	@ D.31099, <variable>.Phy_addr2
	cmp	lr, ip	@ D.31099, prephitmp.706
	bcc	.L102	@,
.L70:
	ldr	lr, [r1, #96]	@ D.31102, <variable>.Phy_addr
	cmp	lr, ip	@ D.31102, prephitmp.706
	bcs	.L71	@,
.L102:
	str	lr, [r4, r0]	@ D.31099, <variable>.stream_base_addr
.L71:
	add	r3, r3, #1	@ i, tmp372,
	add	r1, r1, #48	@ ivtmp.758, tmp373,
.L99:
	ldr	ip, [r4, r0]	@ prephitmp.706, <variable>.stream_base_addr
.L24:
	ldr	lr, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	lr, #0	@ <variable>.pStream2,
	beq	.L21	@,
	ldr	lr, [r1, #112]	@ D.31099, <variable>.Phy_addr2
	cmp	lr, ip	@ D.31099, prephitmp.706
	bcc	.L108	@,
.L21:
	ldr	lr, [r1, #96]	@ D.31102, <variable>.Phy_addr
	cmp	lr, ip	@ D.31102, prephitmp.706
	strcc	lr, [r4, r0]	@ D.31102, <variable>.stream_base_addr
	b	.L22	@
.L28:
	ldr	r2, [fp, #-52]	@, %sfp
	add	r1, r2, r2, asl #1	@, tmp281,,,
	add	r2, r2, #1	@ j,,
	cmp	r2, r3	@ j, temp.823
	mov	r1, r1, asl #4	@ tmp282, tmp281,
	add	r7, r1, r4	@ tmp283, tmp282, pVc1DecParam
	ldr	r0, [r7, #108]	@ D.31142, <variable>.SlcEndMbn
	mov	r7, r0	@ slice_end_mbn, D.31142
	bge	.L37	@,
	add	ip, r2, r2, asl #1	@, tmp288, j, j,
	add	ip, r4, ip, asl #4	@, tmp290, pVc1DecParam, tmp288,
	ldr	ip, [ip, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r0, ip	@ D.31142, <variable>.SlcEndMbn
	blt	.L37	@,
	mvn	ip, r2	@ tmp365, j
	add	ip, ip, r3	@ tmp364, tmp365, temp.823
	add	r1, r1, #80	@ tmp297, tmp282,
	tst	ip, #1	@ tmp364,
	add	ip, r4, r1	@ tmp298, pVc1DecParam, tmp297
	add	r1, ip, #4	@ ivtmp.731, tmp298,
	beq	.L38	@,
	ldr	r9, [r1, #120]	@ D.31146, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	add	r1, ip, #52	@ ivtmp.731, tmp298,
	cmp	r0, r9	@ D.31142, D.31146
	bge	.L38	@,
	b	.L37	@
.L39:
	ldr	r9, [r1, #120]	@ D.31146, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.731, ivtmp.731,
	cmp	r0, r9	@ D.31142, D.31146
	blt	.L37	@,
	ldr	ip, [ip, #120]	@ D.31146, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	cmp	r0, ip	@ D.31142, D.31146
	blt	.L37	@,
.L38:
	add	r2, r2, #1	@ j, j,
	add	ip, r1, #48	@ tmp367, ivtmp.731,
	cmp	r2, r3	@ j, temp.823
	blt	.L39	@,
.L37:
	cmp	r2, r3	@ j, temp.823
	strne	r2, [fp, #-52]	@ j, %sfp
	ldrne	r3, [fp, #-56]	@, %sfp
	moveq	r9, #0	@ next_slice_para_addr,
	addne	r9, r3, r2, asl #8	@, next_slice_para_addr,, j,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r0, [fp, #-80]	@ D.31142, %sfp
	add	r3, r2, #1	@,,
	str	r3, [fp, #-76]	@, %sfp
	mov	r3, r9	@ prephitmp.703, next_slice_para_addr
	b	.L30	@
.L106:
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r8	@ prephitmp.703, i.820
	str	r8, [fp, #-76]	@ i.820, %sfp
	mov	r9, r8	@ next_slice_para_addr, i.820
	b	.L30	@
.L107:
	mov	r3, #0	@ prephitmp.703,
	str	r2, [fp, #-52]	@ k.864, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r9, r3	@ next_slice_para_addr, prephitmp.703
	str	r3, [fp, #-76]	@ prephitmp.703, %sfp
	b	.L30	@
.L67:
	ldr	r3, [r4, #96]	@ D.31102, <variable>.Phy_addr
	cmp	r3, ip	@ D.31102, prephitmp.706
	bcs	.L68	@,
	b	.L101	@
	.fnend
	.size	VC1HAL_V200R004_CfgSliceMsg, .-VC1HAL_V200R004_CfgSliceMsg
	.align	2
	.global	VC1HAL_V200R004_StartDec
	.type	VC1HAL_V200R004_StartDec, %function
VC1HAL_V200R004_StartDec:
	.fnstart
.LFB1357:
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
	bls	.L120	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L120:
	cmp	r0, #0	@ pVc1DecParam,
	beq	.L121	@,
	ldrh	r3, [r0, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	cmp	r3, #512	@ <variable>.mbwidth,
	bhi	.L122	@,
	ldrh	r0, [r0, #80]	@ <variable>.mbheight, <variable>.mbheight
	cmp	r0, #512	@ <variable>.mbheight,
	bhi	.L123	@,
	movw	r8, #1148	@ tmp152,
	movw	r7, #:lower16:g_HwMem	@ tmp153,
	mul	r8, r8, r1	@ tmp151, tmp152, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp153,
	add	r5, r7, r8	@ pHwMem, tmp153, tmp151
	ldr	r0, [r5, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L124	@,
	ldr	r1, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L125	@,
.L117:
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R004_CfgSliceMsg	@
	mov	r1, r5	@, pHwMem
	mov	r2, r6	@, VdhId
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R004_CfgReg	@
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L125:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.31039,
	strne	r2, [r7, r8]	@ D.31039, <variable>.pVdmRegVirAddr
	bne	.L117	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L123:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #71	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L122:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #70	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L121:
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #69	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L124:
	movw	r1, #:lower16:.LC8	@,
	mov	r2, #74	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31022,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1HAL_V200R004_StartDec, .-VC1HAL_V200R004_StartDec
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
	.ascii	"VdhId is wrong! VC1HAL_V200R003_StartDec\012\000"
	.space	2
.LC8:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC9:
	.ascii	"point of picture para null\012\000"
.LC10:
	.ascii	"picture width out of range\000"
	.space	1
.LC11:
	.ascii	"picture height out of range\000"
.LC12:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC13:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
