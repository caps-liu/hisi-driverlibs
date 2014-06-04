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
	.file	"vdm_hal_h264.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_h264.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.o
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
	.global	Get_V200R004_VirAddr
	.type	Get_V200R004_VirAddr, %function
Get_V200R004_VirAddr:
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
	add	r0, r1, r0, asl #2	@,, pbase_vir_addr, Dn,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Get_V200R004_VirAddr, .-Get_V200R004_VirAddr
	.align	2
	.global	Get_V200R004_PhyAddr
	.type	Get_V200R004_PhyAddr, %function
Get_V200R004_PhyAddr:
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
	add	r0, r1, r0, asl #2	@,, base_phy_addr, Dn,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Get_V200R004_PhyAddr, .-Get_V200R004_PhyAddr
	.align	2
	.global	Write_V200R004_Qmatrix
	.type	Write_V200R004_Qmatrix, %function
Write_V200R004_Qmatrix:
	.fnstart
.LFB1364:
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
	cmp	r1, #0	@ size
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	ip, [r0, #0]	@ tmp168,* qmatrix
	cmp	r1, #1	@ size,
	sub	r2, r1, #1	@ tmp169, size,
	mov	r4, #1	@ i,
	and	r5, r2, r4	@ tmp171, tmp169,
	mov	r2, #4	@ ivtmp.573,
	str	ip, [r3, #0]	@ tmp168,* vir_addr
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r5, #0	@ tmp171,
	beq	.L7	@,
	ldr	ip, [r0, #4]	@ tmp180,
	mov	r4, #2	@ i,
	cmp	r1, r4	@ size, i
	mov	r2, #8	@ ivtmp.573,
	str	ip, [r3, #4]	@ tmp180,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
.L7:
	ldr	r5, [r0, r2]	@ tmp176,* ivtmp.573
	add	ip, r2, #4	@ tmp173, ivtmp.573,
	add	r4, r4, #2	@ i, i,
	cmp	r1, r4	@ size, i
	str	r5, [r3, r2]	@ tmp176,* ivtmp.573
	add	r2, ip, #4	@ ivtmp.573, tmp173,
	ldr	r5, [r0, ip]	@ tmp179,
	str	r5, [r3, ip]	@ tmp179,
	bhi	.L7	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Write_V200R004_Qmatrix, .-Write_V200R004_Qmatrix
	.global	__aeabi_idiv
	.align	2
	.global	H264HAL_V200R004_SetSliceMsg
	.type	H264HAL_V200R004_SetSliceMsg, %function
H264HAL_V200R004_SetSliceMsg:
	.fnstart
.LFB1366:
	@ args = 16, pretend = 0, frame = 32
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
	mov	r4, r0	@ pParam, pParam
	mov	r0, r3	@, CurrMsgSlotPhy
	mov	r5, r2	@ pSlcPara, pSlcPara
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ D.35838,
	beq	.L174	@,
	ldr	r3, [r5, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r9, #0]	@ <variable>.valid_bitlen,* D.35838
	streq	r3, [r9, #4]	@ <variable>.valid_bitlen,
	streq	r3, [r9, #8]	@ <variable>.valid_bitlen,
	beq	.L20	@,
	ldr	ip, [r5, #24]	@ temp.1078, <variable>.bytespos
	ldr	r2, [r5, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	lr, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp362, temp.1078,
	add	r0, r2, ip, asl #3	@, tmp360, <variable>.bitsoffset, temp.1078,
	and	r3, r0, #127	@ tmp.1066, tmp360,
	str	r3, [r9, #4]	@ tmp.1066,
	ldr	r2, [r5, #8]	@ tmp.1060, <variable>.valid_bitlen
	bic	ip, lr, #15	@ stream_base_addr.1079, <variable>.stream_base_addr,
	rsb	r0, ip, r1	@ temp.1059, stream_base_addr.1079, tmp362
	str	r2, [r9, #8]	@ tmp.1060,
	str	r0, [r9, #0]	@ temp.1059,* D.35838
.L20:
	ldr	r1, [r5, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r1, #0	@ <variable>.valid_bitlen,
	streq	r1, [r9, #12]	@ <variable>.valid_bitlen,
	streq	r1, [r9, #16]	@ <variable>.valid_bitlen,
	streq	r1, [r9, #20]	@ <variable>.valid_bitlen,
	beq	.L22	@,
	ldr	ip, [r5, #28]	@ D.35850, <variable>.bytespos
	ldr	r3, [r5, #20]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r0, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp369, D.35850,
	add	lr, r3, ip, asl #3	@, tmp367, <variable>.bitsoffset, D.35850,
	and	r2, lr, #127	@ tmp.430, tmp367,
	str	r2, [r9, #16]	@ tmp.430,
	ldr	ip, [r5, #12]	@ tmp.837, <variable>.valid_bitlen
	bic	r3, r0, #15	@ stream_base_addr, <variable>.stream_base_addr,
	rsb	lr, r3, r1	@ D.35866, stream_base_addr, tmp369
	str	ip, [r9, #20]	@ tmp.837,
	str	lr, [r9, #12]	@ D.35866,
.L22:
	ldr	r1, [r5, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	movw	lr, #:lower16:g_not_direct_8x8_inference_flag	@ tmp382,
	ldr	ip, [r5, #36]	@ <variable>.cabac_init_idc, <variable>.cabac_init_idc
	movt	lr, #:upper16:g_not_direct_8x8_inference_flag	@ tmp382,
	ldr	r0, [r5, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	bic	r2, r1, #-16777216	@ tmp373, <variable>.first_mb_in_slice,
	bic	r3, r2, #15728640	@ tmp373, tmp373,
	and	r1, ip, #3	@ tmp379, <variable>.cabac_init_idc,
	orr	ip, r3, r0, asl #26	@, tmp378, tmp373, <variable>.SliceQPy,
	orr	r2, ip, r1, asl #24	@, tmp.846, tmp378, tmp379,
	str	r2, [r9, #24]	@ tmp.846,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r3, #0	@ g_not_direct_8x8_inference_flag,
	ldrneb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.688, <variable>.direct_8x8_inference_flag
	bne	.L24	@,
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.688, <variable>.direct_8x8_inference_flag
	cmp	r3, #0	@ prephitmp.688,
	beq	.L175	@,
.L24:
	ldr	lr, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r6, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [fp, #-52]	@, %sfp
	mov	ip, lr, asl #8	@ tmp390, <variable>.listXsize,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	orr	r1, ip, r6, asl #2	@, tmp392, tmp390, <variable>.listXsize,
	ldr	r7, [r5, #44]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r6, [fp, #-52]	@, %sfp
	and	lr, r2, #31	@ tmp393, <variable>.num_ref_idx_l1_active_minus1,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	and	ip, r7, #31	@ tmp397, <variable>.num_ref_idx_l0_active_minus1,
	orr	r7, r1, lr, asl #21	@, tmp396, tmp392, tmp393,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	orr	r2, r7, ip, asl #16	@, tmp400, tmp396, tmp397,
	ldr	r0, [r6, r0, asl #2]	@ tmp404, g_SliceTypeForPMV
	orr	lr, r2, r0	@ tmp403, tmp400, tmp404
	orr	r2, lr, r1, asl #15	@, tmp407, tmp403, <variable>.direct_spatial_mv_pred_flag,
	orr	r3, r2, r3, asl #14	@, tmp.849, tmp407, prephitmp.688,
	str	r3, [r9, #28]	@ tmp.849,
	ldrb	r7, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [r6, r7, asl #2]	@ tmp411, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp411,
	movne	r3, #0	@ prephitmp.1058,
	movne	r2, r3	@ prephitmp.690, prephitmp.1058
	beq	.L176	@,
.L26:
	str	r2, [r9, #32]	@ prephitmp.690,
	str	r3, [r9, #36]	@ prephitmp.1058,
	ldr	r3, [r5, #60]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldrb	ip, [r5, #4]	@ zero_extendqisi2	@ <variable>.weight_flag, <variable>.weight_flag
	and	r7, r3, #31	@ tmp438, <variable>.chroma_qp_index_offset,
	ldr	lr, [r5, #64]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	mov	r1, r7, asl #5	@ tmp440, tmp438,
	and	r2, lr, #31	@ tmp442, <variable>.second_chroma_qp_index_offset,
	orr	r3, r1, ip, asl #16	@, tmp441, tmp440, <variable>.weight_flag,
	orr	r7, r3, r2	@ D.35952, tmp441, tmp442
	str	r7, [r9, #40]	@ D.35952,
	ldr	lr, [r5, #68]	@ <variable>.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	ldr	ip, [r5, #72]	@ <variable>.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	and	r3, lr, #15	@ tmp447, <variable>.slice_alpha_c0_offset_div2,
	ldr	r2, [r5, #76]	@ <variable>.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	and	r1, ip, #15	@ tmp444, <variable>.slice_beta_offset_div2,
	mov	r7, r3, asl #16	@ tmp449, tmp447,
	orr	lr, r7, r1, asl #8	@, tmp450, tmp449, tmp444,
	orr	ip, lr, r2	@ tmp.873, tmp450, <variable>.disable_deblocking_filter_idc
	str	ip, [r9, #44]	@ tmp.873,
	ldr	r3, [r5, #4056]	@ <variable>.pNextSlice, <variable>.pNextSlice
	cmp	r3, #0	@ <variable>.pNextSlice,
	ldrne	r0, [fp, #16]	@ tmp.826, last_mb_in_slice
	beq	.L177	@,
.L32:
	str	r0, [r9, #176]	@ tmp.826,
	ldr	r1, [fp, #8]	@ NextSlcMsgSlotPhy, NextSlcMsgSlotPhy
	bic	ip, r1, #15	@ tmp.878, NextSlcMsgSlotPhy,
	str	ip, [r9, #252]	@ tmp.878,
	ldr	r7, [fp, #-52]	@, %sfp
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [r7, r2, asl #2]	@ prephitmp.703, g_SliceTypeForPMV
	cmp	r3, #0	@ prephitmp.703,
	beq	.L34	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	ip, #0	@ <variable>.pic_structure,
	bne	.L178	@,
	ldr	sl, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	sl, #0	@ <variable>.listXsize,
	beq	.L38	@,
	mov	lr, #20	@,
	mov	r0, #12	@,
	mov	r2, r5	@ ivtmp.792, pSlcPara
	mov	r6, ip	@ tmp.827, tmp1
	mov	r3, ip	@ i.874, tmp1
	str	lr, [fp, #-48]	@, %sfp
	str	r0, [fp, #-60]	@, %sfp
	str	r9, [fp, #-64]	@ D.35838, %sfp
	str	r5, [fp, #-56]	@ pSlcPara, %sfp
	b	.L43	@
.L41:
	cmp	r1, #3	@ D.36006,
	beq	.L179	@,
.L42:
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r1, [r8, #52]	@ temp.882, <variable>.listXsize
	cmp	r1, r3	@ temp.882, i.874
	bls	.L180	@,
.L43:
	ldrb	sl, [r2, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	r0, r3, #7	@ D.35999, i.874,
	ldr	r5, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r3, #3	@ D.36006, i.874,
	ldr	r8, [fp, #-52]	@, %sfp
	mov	r7, r0, asl #2	@, D.35999,
	add	lr, r5, sl, asl #1	@, tmp471, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	r5, [r2, #1627]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	str	r7, [fp, #-72]	@, %sfp
	add	r7, r1, r1, asl #2	@, tmp487, D.36006, D.36006,
	add	sl, r8, lr, asl #2	@, tmp475,, tmp471,
	cmp	r5, #1	@ <variable>.frame_is_long_term,
	ldr	r9, [r2, #1644]	@, <variable>.apc_idc
	add	r3, r3, #1	@ i.874, i.874,
	moveq	r5, #8	@ iftmp.436,
	movne	r5, #0	@ iftmp.436,
	cmp	r0, #7	@ D.35999,
	ldr	r0, [sl, #12]	@ tmp478, g_ListStructFrame
	mov	lr, r9, asl #1	@ tmp482,,
	ldr	sl, [fp, #-72]	@, %sfp
	and	r9, r0, #3	@ tmp477, tmp478,
	and	r8, lr, #31	@ tmp484, tmp482,
	orr	r0, r5, r9	@ tmp479, iftmp.436, tmp477
	add	r2, r2, #36	@ ivtmp.792, ivtmp.792,
	orr	ip, ip, r8, asl r7	@, tmp1, tmp1, tmp484,
	orr	r6, r6, r0, asl sl	@, tmp.827, tmp.827, tmp479,
	bne	.L41	@,
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	r1, #3	@ D.36006,
	ldr	r9, [fp, #-64]	@, %sfp
	str	r6, [r9, r0, asl #2]	@ tmp.827,
	add	r0, r0, #1	@,,
	mov	r6, #0	@ tmp.827,
	str	r0, [fp, #-60]	@, %sfp
	bne	.L42	@,
.L179:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	lr, [fp, #-64]	@, %sfp
	add	r7, r1, #1	@,,
	str	ip, [lr, r1, asl #2]	@ tmp1,
	mov	ip, #0	@ tmp1,
	ldr	r8, [fp, #-56]	@, %sfp
	str	r7, [fp, #-48]	@, %sfp
	ldr	r1, [r8, #52]	@ temp.882, <variable>.listXsize
	cmp	r1, r3	@ temp.882, i.874
	bhi	.L43	@,
.L180:
	tst	r1, #7	@ temp.882,
	ldr	r9, [fp, #-64]	@ D.35838, %sfp
	ldr	r5, [fp, #-56]	@ pSlcPara, %sfp
	ldrne	r0, [fp, #-60]	@, %sfp
	ldreq	sl, [fp, #-52]	@, %sfp
	ldreqb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	strne	r6, [r9, r0, asl #2]	@ tmp.827,* D.35838
	ldrne	r1, [fp, #-48]	@, %sfp
	ldreq	r3, [sl, r3, asl #2]	@ prephitmp.703, g_SliceTypeForPMV
	strne	ip, [r9, r1, asl #2]	@ tmp1,* D.35838
	ldrneb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r2, [fp, #-52]	@, %sfp
	ldrne	r3, [r2, r3, asl #2]	@ prephitmp.703, g_SliceTypeForPMV
.L38:
	cmp	r3, #2	@ prephitmp.703,
	bne	.L45	@,
	ldr	r6, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r6, #0	@ <variable>.listXsize,
	beq	.L45	@,
	mov	ip, #0	@ tmp1.832,
	add	r3, r5, #2784	@ ivtmp.787, pSlcPara,
	mov	sl, #28	@,
	mov	r7, #16	@,
	add	r3, r3, #12	@ ivtmp.787, ivtmp.787,
	mov	r6, ip	@ tmp.828, tmp1.832
	mov	r2, ip	@ i.905, tmp1.832
	str	sl, [fp, #-48]	@, %sfp
	str	r7, [fp, #-60]	@, %sfp
	str	r9, [fp, #-64]	@ D.35838, %sfp
	str	r5, [fp, #-56]	@ pSlcPara, %sfp
	b	.L50	@
.L48:
	cmp	r1, #3	@ temp.895,
	beq	.L181	@,
.L49:
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r1, [r8, #56]	@ temp.890, <variable>.listXsize
	cmp	r1, r2	@ temp.890, i.905
	bls	.L182	@,
.L50:
	ldrb	sl, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	r0, r2, #7	@ temp.892, i.905,
	ldr	r5, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r2, #3	@ temp.895, i.905,
	ldr	r8, [fp, #-52]	@, %sfp
	mov	r7, r0, asl #2	@, temp.892,
	add	lr, r5, sl, asl #1	@, tmp504, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	r5, [r3, #-17]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	str	r7, [fp, #-72]	@, %sfp
	add	r7, r1, r1, asl #2	@, tmp520, temp.895, temp.895,
	add	sl, r8, lr, asl #2	@, tmp508,, tmp504,
	ldr	r9, [r3, #0]	@, <variable>.apc_idc
	cmp	r5, #1	@ <variable>.frame_is_long_term,
	add	r2, r2, #1	@ i.905, i.905,
	ldr	lr, [sl, #12]	@ tmp511, g_ListStructFrame
	add	r3, r3, #36	@ ivtmp.787, ivtmp.787,
	moveq	r5, #8	@ iftmp.437,
	movne	r5, #0	@ iftmp.437,
	mov	r8, r9, asl #1	@ tmp515,,
	cmp	r0, #7	@ temp.892,
	and	r0, lr, #3	@ tmp510, tmp511,
	and	r9, r8, #31	@ tmp517, tmp515,
	orr	r0, r5, r0	@ tmp512, iftmp.437, tmp510
	ldr	sl, [fp, #-72]	@, %sfp
	orr	ip, ip, r9, asl r7	@, tmp1.832, tmp1.832, tmp517,
	orr	r6, r6, r0, asl sl	@, tmp.828, tmp.828, tmp512,
	bne	.L48	@,
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	r1, #3	@ temp.895,
	ldr	r9, [fp, #-64]	@, %sfp
	str	r6, [r9, r0, asl #2]	@ tmp.828,
	add	r0, r0, #1	@,,
	mov	r6, #0	@ tmp.828,
	str	r0, [fp, #-60]	@, %sfp
	bne	.L49	@,
.L181:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	lr, [fp, #-64]	@, %sfp
	add	r7, r1, #1	@,,
	str	ip, [lr, r1, asl #2]	@ tmp1.832,
	mov	ip, #0	@ tmp1.832,
	str	r7, [fp, #-48]	@, %sfp
	b	.L49	@
.L188:
	ldr	r4, [fp, #-56]	@ pParam, %sfp
	mov	r5, sl	@ pSlcPara, pSlcPara
	ldr	r2, [r4, #284]	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r2, #0	@ <variable>.weighted_pred_flag,
	beq	.L107	@,
	ldrb	r0, [sl, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	r3, [r1, r0, asl #2]	@ tmp717, g_SliceTypeForPMV
	cmp	r3, #1	@ tmp717,
	beq	.L108	@,
.L107:
	ldr	ip, [r4, #288]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	bne	.L34	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r6, [fp, #-52]	@, %sfp
	ldr	lr, [r6, r2, asl #2]	@ tmp721, g_SliceTypeForPMV
	cmp	lr, #2	@ tmp721,
	bne	.L34	@,
.L108:
	add	r2, r9, #256	@ ivtmp.765, D.35838,
	mov	r4, r5	@ ivtmp.763, pSlcPara
	mov	r3, r5	@ ivtmp.1053, pSlcPara
	mov	r0, #0	@ i.1029,
.L109:
	ldr	r1, [r3, #88]	@ tmp723, <variable>.wp_weight_l0_y
	add	r0, r0, #1	@ i.1029, i.1029,
	ldrb	r7, [r3, #856]	@ zero_extendqisi2	@ tmp726, <variable>.wp_offset_l0_y
	ldr	ip, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r8, r1, asl #23	@ tmp722, tmp723,
	mov	lr, r7, asl #12	@ tmp728, tmp726,
	and	r7, ip, #7	@ tmp730, <variable>.luma_log2_weight_denom,
	mov	r1, r8, lsr #23	@ tmp722, tmp722,
	orr	r8, lr, r1, asl #3	@, tmp729, tmp728, tmp722,
	orr	lr, r8, r7	@ tmp.1032, tmp729, tmp730
	str	lr, [r2, #0]	@ tmp.1032,* ivtmp.765
	ldr	r1, [r3, #216]	@ tmp733, <variable>.wp_weight_l0_u
	ldrb	ip, [r3, #984]	@ zero_extendqisi2	@ tmp736, <variable>.wp_offset_l0_u
	ldr	r7, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r8, r1, asl #23	@ tmp732, tmp733,
	mov	lr, ip, asl #12	@ tmp738, tmp736,
	and	ip, r7, #7	@ tmp740, <variable>.chroma_log2_weight_denom,
	mov	r1, r8, lsr #23	@ tmp732, tmp732,
	orr	r7, lr, r1, asl #3	@, tmp739, tmp738, tmp732,
	orr	r8, r7, ip	@ tmp1.1034, tmp739, tmp740
	str	r8, [r2, #256]	@ tmp1.1034,
	ldr	lr, [r3, #344]	@ tmp746, <variable>.wp_weight_l0_v
	ldrb	ip, [r3, #1112]	@ zero_extendqisi2	@ tmp742, <variable>.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.1053, ivtmp.1053,
	mov	r1, lr, asl #23	@ tmp745, tmp746,
	mov	r7, r1, lsr #23	@ tmp745, tmp745,
	orr	r8, r7, ip, asl #9	@, D.36262, tmp745, tmp742,
	str	r8, [r2, #512]	@ D.36262,
	ldr	r1, [r5, #44]	@ temp.930, <variable>.num_ref_idx_l0_active_minus1
	add	r2, r2, #4	@ ivtmp.765, ivtmp.765,
	cmp	r1, r0	@ temp.930, i.1029
	bcs	.L109	@,
	cmp	r1, #1	@ temp.930,
	and	r2, r1, #1	@ tmp803, temp.930,
	mov	r3, #1	@ i.898,
	bcc	.L159	@,
	cmp	r2, #0	@ tmp803,
	beq	.L110	@,
	mov	r3, #2	@ i.898,
	cmp	r1, r3	@ temp.930, i.898
	bcc	.L159	@,
.L110:
	add	r3, r3, #2	@ i.898, i.898,
	cmp	r1, r3	@ temp.930, i.898
	bcs	.L110	@,
.L159:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r2, [r7, r3, asl #2]	@ tmp750, g_SliceTypeForPMV
	cmp	r2, #2	@ tmp750,
	beq	.L183	@,
.L111:
	ldr	r2, [r5, #84]	@, <variable>.chroma_log2_weight_denom
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #44]	@ D.35893, <variable>.num_ref_idx_l0_active_minus1
	mov	r3, #1	@ i.1040,
	cmp	r2, r3	@ D.35893,
	and	r1, r2, r3	@ tmp797, D.35893,
	bcc	.L160	@,
	cmp	r1, #0	@ tmp797,
	beq	.L113	@,
	mov	r3, #2	@ i.1040,
	cmp	r2, r3	@ D.35893, i.1040
	bcc	.L160	@,
.L113:
	add	r3, r3, #2	@ i.1040, i.1040,
	cmp	r2, r3	@ D.35893, i.1040
	bcs	.L113	@,
.L160:
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r1, [r8, r0, asl #2]	@ tmp755, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp755,
	beq	.L184	@,
.L34:
	mov	r0, #0	@ D.35842,
.L18:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L178:
	ldr	r8, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r8, #0	@ <variable>.listXsize,
	beq	.L37	@,
	mov	ip, #0	@ tmp1.833,
	mov	r3, r5	@ ivtmp.811, pSlcPara
	mov	r6, ip	@ tmp.830, tmp1.833
	mov	r2, ip	@ i.957, tmp1.833
	mov	r7, #20	@ Dn_0.823,
	mov	r8, #12	@ Dn_num.820,
	str	r9, [fp, #-56]	@ D.35838, %sfp
	b	.L77	@
.L52:
	cmp	r1, #2	@ D.36046,
	andne	r1, r2, #3	@ prephitmp.945, i.957,
	andne	r0, r2, #7	@ prephitmp.720, i.957,
	beq	.L185	@,
.L63:
	cmp	r0, #7	@ prephitmp.720,
	add	r2, r2, #1	@ i.957, i.957,
	add	r3, r3, #36	@ ivtmp.811, ivtmp.811,
	ldreq	r0, [fp, #-56]	@, %sfp
	streq	r6, [r0, r8, asl #2]	@ tmp.830,
	addeq	r8, r8, #1	@ Dn_num.820, Dn_num.820,
	moveq	r6, #0	@ tmp.830,
	cmp	r1, #3	@ prephitmp.945,
	ldreq	r1, [fp, #-56]	@, %sfp
	streq	ip, [r1, r7, asl #2]	@ tmp1.833,
	addeq	r7, r7, #1	@ Dn_0.823, Dn_0.823,
	ldr	r1, [r5, #52]	@ temp.912, <variable>.listXsize
	moveq	ip, #0	@ tmp1.833,
	cmp	r1, r2	@ temp.912, i.957
	bls	.L186	@,
.L77:
	ldrb	r1, [r3, #1624]	@ zero_extendqisi2	@ D.36046, <variable>.list_structure
	cmp	r1, #1	@ D.36046,
	bne	.L52	@,
	ldrb	r1, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r1, #3	@ <variable>.is_used,
	beq	.L53	@,
	ldrb	r1, [r3, #1628]	@ zero_extendqisi2	@ D.36058, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.720, i.957,
	ldrb	sl, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.36058,
	mov	lr, r0, asl #2	@, prephitmp.720,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	str	lr, [fp, #-48]	@, %sfp
	moveq	sl, #8	@ iftmp.438,
	add	r1, r9, r1, asl #1	@, tmp534,, D.36058,
	ldr	r9, [fp, #-52]	@, %sfp
	movne	sl, #0	@ iftmp.438,
	add	lr, r9, r1, asl #2	@, tmp538,, tmp534,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	sl, r9, sl	@ tmp531,, iftmp.438
	ldr	r9, [lr, #44]	@ tmp541, g_ListStructField
	and	r1, r9, #3	@ tmp540, tmp541,
	ldr	r9, [fp, #-48]	@, %sfp
	orr	lr, sl, r1	@ tmp542, tmp531, tmp540
	orr	r6, r6, lr, asl r9	@, tmp.830, tmp.830, tmp542,
.L58:
	ldr	lr, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.945, i.957,
	add	r9, r1, r1, asl #2	@, tmp567, prephitmp.945, prephitmp.945,
	mov	sl, lr, asl #1	@ tmp562, <variable>.apc_idc,
	and	lr, sl, #31	@ tmp564, tmp562,
	orr	ip, ip, lr, asl r9	@, tmp1.833, tmp1.833, tmp564,
	b	.L63	@
.L185:
	ldrb	r0, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L65	@,
	ldrb	r1, [r3, #1630]	@ zero_extendqisi2	@ D.36095, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.720, i.957,
	ldrb	sl, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.36095,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.442,
	movne	sl, #0	@ iftmp.442,
	add	lr, r9, r1, asl #1	@, tmp574,, D.36095,
	mov	r9, r0, asl #2	@, prephitmp.720,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	add	r1, r9, lr, asl #2	@, tmp578,, tmp574,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	lr, r9, sl	@ tmp571,, iftmp.442
	ldr	r9, [r1, #44]	@ tmp581, g_ListStructField
	ldr	r1, [fp, #-48]	@, %sfp
	and	r9, r9, #3	@ tmp580, tmp581,
	orr	sl, lr, r9	@ tmp582, tmp571, tmp580
	orr	r6, r6, sl, asl r1	@, tmp.830, tmp.830, tmp582,
.L70:
	ldr	sl, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.945, i.957,
	add	r9, r1, r1, asl #2	@, tmp608, prephitmp.945, prephitmp.945,
	mov	lr, sl, asl #1	@ tmp602, <variable>.apc_idc,
	and	sl, lr, #30	@ tmp604, tmp602,
	orr	lr, sl, #1	@ tmp605, tmp604,
	orr	ip, ip, lr, asl r9	@, tmp1.833, tmp1.833, tmp605,
	b	.L63	@
.L53:
	and	r0, r2, #7	@ prephitmp.720, i.957,
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.720,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.top_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #1628]	@ zero_extendqisi2	@, <variable>.top_structure
	moveq	lr, #8	@ iftmp.440,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.440,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.441,
	movne	sl, #0	@ iftmp.441,
	orr	sl, sl, lr	@ tmp547, iftmp.441, iftmp.440
	ldr	lr, [r9, #44]	@ tmp558, g_ListStructField
	and	r1, lr, #3	@ tmp557, tmp558,
	orr	lr, sl, r1	@ tmp559, tmp547, tmp557
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.830, tmp.830, tmp559,
	b	.L58	@
.L65:
	and	r0, r2, #7	@ prephitmp.720, i.957,
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.720,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.btm_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #1630]	@ zero_extendqisi2	@, <variable>.btm_structure
	moveq	lr, #8	@ iftmp.444,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.444,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.445,
	movne	sl, #0	@ iftmp.445,
	orr	sl, sl, lr	@ tmp587, iftmp.445, iftmp.444
	ldr	lr, [r9, #44]	@ tmp598, g_ListStructField
	and	r1, lr, #3	@ tmp597, tmp598,
	orr	lr, sl, r1	@ tmp599, tmp587, tmp597
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.830, tmp.830, tmp599,
	b	.L70	@
.L186:
	ldr	r9, [fp, #-56]	@ D.35838, %sfp
	tst	r1, #7	@ temp.912,
	ldreqb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	strne	r6, [r9, r8, asl #2]	@ tmp.830,* D.35838
	ldreq	r2, [fp, #-52]	@, %sfp
	strne	ip, [r9, r7, asl #2]	@ tmp1.833,* D.35838
	ldrneb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r6, [fp, #-52]	@, %sfp
	ldreq	r3, [r2, r3, asl #2]	@ prephitmp.703, g_SliceTypeForPMV
	ldrne	r3, [r6, r3, asl #2]	@ prephitmp.703, g_SliceTypeForPMV
.L37:
	cmp	r3, #2	@ prephitmp.703,
	beq	.L187	@,
.L45:
	add	r0, r5, #3920	@ tmp528, pSlcPara,
	ldr	sl, [r5, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r3, r0, #16	@ ivtmp.778, tmp528,
	mov	r8, #36	@ Dn_num.829,
	ldr	r6, [r0, #12]	@ tmp708, <variable>.Apc2RefIdx
	and	r2, sl, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	r0, #1	@ i.1021,
	mov	sl, r5	@ pSlcPara, pSlcPara
	and	ip, r6, #31	@ tmp707, tmp708,
	str	r4, [fp, #-56]	@ pParam, %sfp
	orr	ip, r2, ip, asl #5	@, tmp, tmp, tmp707,
.L51:
	add	r5, r0, #1	@ tmp806, i.1021,
	add	r4, r3, #4	@ tmp805, ivtmp.778,
	add	r0, r5, #1	@ i.1021, tmp806,
	and	r1, r5, #3	@ temp.1015, tmp806,
	and	r2, r0, #3	@ temp.1015, i.1021,
	cmp	r5, #32	@ tmp806,
	add	r6, r1, r1, asl #2	@, tmp815, temp.1015, temp.1015,
	add	r5, r2, r2, asl #2	@, tmp823, temp.1015, temp.1015,
	beq	.L188	@,
	ldr	lr, [r3, #0]	@ tmp812, <variable>.Apc2RefIdx
	cmp	r1, #3	@ temp.1015,
	and	r7, lr, #31	@ tmp813, tmp812,
	orr	r7, ip, r7, asl r6	@, tmp, tmp, tmp813,
	streq	r7, [r9, r8, asl #2]	@ tmp,* D.35838
	ldr	r6, [r3, #4]	@ tmp820, <variable>.Apc2RefIdx
	moveq	r7, #0	@ tmp,
	addeq	r8, r8, #1	@ Dn_num.829, Dn_num.829,
	cmp	r2, #3	@ temp.1015,
	and	ip, r6, #31	@ tmp821, tmp820,
	orr	ip, r7, ip, asl r5	@, tmp, tmp, tmp821,
	addne	r3, r4, #4	@ ivtmp.778, tmp805,
	bne	.L51	@
.L189:
	str	ip, [r9, r8, asl #2]	@ tmp,* D.35838
	add	r3, r4, #4	@ ivtmp.778, tmp805,
	add	r8, r8, #1	@ Dn_num.829, Dn_num.829,
	mov	ip, #0	@ tmp,
	b	.L51	@
.L176:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r3, #0	@ <variable>.pic_structure,
	beq	.L190	@,
	ldr	ip, [r5, #2776]	@ tmp423,
	bic	r7, ip, #-16777216	@ tmp421, tmp423,
	bic	r3, r7, #255	@ tmp421, tmp421,
	cmp	r3, #768	@ tmp421,
	beq	.L173	@,
	ldrb	r2, [r5, #2776]	@ zero_extendqisi2	@ <variable>.list_structure, <variable>.list_structure
	cmp	r2, #1	@ <variable>.list_structure,
	beq	.L173	@,
	ldr	r7, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1058,
	ldr	r2, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	add	r1, r7, #206	@ tmp431, <variable>.pmv_address_idc,
	ldr	lr, [r4, r1, asl #2]	@ tmp434, <variable>.PmvPhyAddr
	add	ip, lr, r2	@ tmp433, tmp434, <variable>.half_pmvblk_offset
	bic	r2, ip, #15	@ prephitmp.690, tmp433,
	b	.L26	@
.L190:
	ldrb	r1, [r5, #2778]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldr	r2, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	cmp	r1, #3	@ <variable>.frame_structure,
	addeq	r2, r2, #206	@ tmp417, <variable>.pmv_address_idc,
	addne	r2, r2, #206	@ tmp414, <variable>.pmv_address_idc,
	ldreq	r3, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	ldreq	r2, [r4, r2, asl #2]	@ temp.855, <variable>.PmvPhyAddr
	ldrne	r2, [r4, r2, asl #2]	@ tmp416, <variable>.PmvPhyAddr
	addeq	r3, r2, r3	@ tmp419, temp.855, <variable>.half_pmvblk_offset
	biceq	r2, r2, #15	@ prephitmp.690, temp.855,
	bicne	r2, r2, #15	@ prephitmp.690, tmp416,
	biceq	r3, r3, #15	@ prephitmp.1058, tmp419,
	b	.L26	@
.L187:
	ldr	r3, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r3, #0	@ <variable>.listXsize,
	beq	.L45	@,
	add	r7, r5, #2784	@ ivtmp.800, pSlcPara,
	mov	ip, #0	@ tmp1.834,
	add	r3, r7, #12	@ ivtmp.800, ivtmp.800,
	mov	r6, ip	@ tmp.831, tmp1.834
	mov	r2, ip	@ i.1006, tmp1.834
	mov	r7, #28	@ Dn_0.824,
	mov	r8, #16	@ Dn_num.821,
	str	r9, [fp, #-56]	@ D.35838, %sfp
	b	.L104	@
.L79:
	cmp	r1, #2	@ D.36131,
	andne	r1, r2, #3	@ prephitmp.997, i.1006,
	andne	r0, r2, #7	@ prephitmp.992, i.1006,
	beq	.L191	@,
.L90:
	cmp	r0, #7	@ prephitmp.992,
	add	r2, r2, #1	@ i.1006, i.1006,
	add	r3, r3, #36	@ ivtmp.800, ivtmp.800,
	ldreq	r0, [fp, #-56]	@, %sfp
	streq	r6, [r0, r8, asl #2]	@ tmp.831,
	addeq	r8, r8, #1	@ Dn_num.821, Dn_num.821,
	moveq	r6, #0	@ tmp.831,
	cmp	r1, #3	@ prephitmp.997,
	ldreq	r1, [fp, #-56]	@, %sfp
	streq	ip, [r1, r7, asl #2]	@ tmp1.834,
	addeq	r7, r7, #1	@ Dn_0.824, Dn_0.824,
	ldr	r1, [r5, #56]	@ temp.949, <variable>.listXsize
	moveq	ip, #0	@ tmp1.834,
	cmp	r1, r2	@ temp.949, i.1006
	bls	.L192	@,
.L104:
	ldrb	r1, [r3, #-20]	@ zero_extendqisi2	@ D.36131, <variable>.list_structure
	cmp	r1, #1	@ D.36131,
	bne	.L79	@,
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L80	@,
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.36143, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.992, i.1006,
	ldrb	sl, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.36143,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.446,
	movne	sl, #0	@ iftmp.446,
	add	lr, r9, r1, asl #1	@, tmp626,, D.36143,
	mov	r9, r0, asl #2	@, prephitmp.992,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	add	r1, r9, lr, asl #2	@, tmp630,, tmp626,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	lr, r9, sl	@ tmp623,, iftmp.446
	ldr	r9, [r1, #44]	@ tmp633, g_ListStructField
	and	r1, r9, #3	@ tmp632, tmp633,
	orr	r9, lr, r1	@ tmp634, tmp623, tmp632
	ldr	r1, [fp, #-48]	@, %sfp
	orr	r6, r6, r9, asl r1	@, tmp.831, tmp.831, tmp634,
.L85:
	ldr	lr, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.997, i.1006,
	add	r9, r1, r1, asl #2	@, tmp659, prephitmp.997, prephitmp.997,
	mov	sl, lr, asl #1	@ tmp654, <variable>.apc_idc,
	and	lr, sl, #31	@ tmp656, tmp654,
	orr	ip, ip, lr, asl r9	@, tmp1.834, tmp1.834, tmp656,
	b	.L90	@
.L191:
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L92	@,
	ldrb	r1, [r3, #-14]	@ zero_extendqisi2	@ D.36180, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.992, i.1006,
	ldrb	sl, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.36180,
	mov	lr, r0, asl #2	@, prephitmp.992,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	str	lr, [fp, #-48]	@, %sfp
	moveq	sl, #8	@ iftmp.450,
	add	r1, r9, r1, asl #1	@, tmp666,, D.36180,
	ldr	r9, [fp, #-52]	@, %sfp
	movne	sl, #0	@ iftmp.450,
	add	lr, r9, r1, asl #2	@, tmp670,, tmp666,
	ldr	r9, [fp, #-60]	@, %sfp
	ldr	r1, [lr, #44]	@ tmp673, g_ListStructField
	orr	sl, r9, sl	@ tmp663,, iftmp.450
	and	lr, r1, #3	@ tmp672, tmp673,
	ldr	r1, [fp, #-48]	@, %sfp
	orr	r9, sl, lr	@ tmp674, tmp663, tmp672
	orr	r6, r6, r9, asl r1	@, tmp.831, tmp.831, tmp674,
.L97:
	ldr	sl, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.997, i.1006,
	add	r9, r1, r1, asl #2	@, tmp700, prephitmp.997, prephitmp.997,
	mov	lr, sl, asl #1	@ tmp694, <variable>.apc_idc,
	and	sl, lr, #30	@ tmp696, tmp694,
	orr	lr, sl, #1	@ tmp697, tmp696,
	orr	ip, ip, lr, asl r9	@, tmp1.834, tmp1.834, tmp697,
	b	.L90	@
.L80:
	and	r0, r2, #7	@ prephitmp.992, i.1006,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.992,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.top_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #-16]	@ zero_extendqisi2	@, <variable>.top_structure
	moveq	lr, #8	@ iftmp.448,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.448,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.449,
	movne	sl, #0	@ iftmp.449,
	orr	sl, sl, lr	@ tmp639, iftmp.449, iftmp.448
	ldr	lr, [r9, #44]	@ tmp650, g_ListStructField
	and	r1, lr, #3	@ tmp649, tmp650,
	orr	lr, sl, r1	@ tmp651, tmp639, tmp649
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.831, tmp.831, tmp651,
	b	.L85	@
.L92:
	and	r0, r2, #7	@ prephitmp.992, i.1006,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.992,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.btm_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #-14]	@ zero_extendqisi2	@, <variable>.btm_structure
	moveq	lr, #8	@ iftmp.452,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.452,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.453,
	movne	sl, #0	@ iftmp.453,
	orr	sl, sl, lr	@ tmp679, iftmp.453, iftmp.452
	ldr	lr, [r9, #44]	@ tmp690, g_ListStructField
	and	r1, lr, #3	@ tmp689, tmp690,
	orr	lr, sl, r1	@ tmp691, tmp679, tmp689
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.831, tmp.831, tmp691,
	b	.L97	@
.L192:
	ldr	r9, [fp, #-56]	@ D.35838, %sfp
	tst	r1, #7	@ temp.949,
	strne	r6, [r9, r8, asl #2]	@ tmp.831,* D.35838
	strne	ip, [r9, r7, asl #2]	@ tmp1.834,* D.35838
	b	.L45	@
.L182:
	tst	r1, #7	@ temp.890,
	ldr	r9, [fp, #-64]	@ D.35838, %sfp
	ldr	r5, [fp, #-56]	@ pSlcPara, %sfp
	ldrne	sl, [fp, #-60]	@, %sfp
	strne	r6, [r9, sl, asl #2]	@ tmp.828,* D.35838
	ldrne	r0, [fp, #-48]	@, %sfp
	strne	ip, [r9, r0, asl #2]	@ tmp1.832,* D.35838
	b	.L45	@
.L173:
	ldr	r7, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1058,
	add	r1, r7, #206	@ tmp428, <variable>.pmv_address_idc,
	ldr	lr, [r4, r1, asl #2]	@ tmp430, <variable>.PmvPhyAddr
	bic	r2, lr, #15	@ prephitmp.690, tmp430,
	b	.L26	@
.L184:
	ldr	r2, [r5, #40]	@ temp.1055, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.825,
	cmp	r3, r2	@ i.825, temp.1055
	and	r0, r2, r3	@ tmp794, temp.1055,
	bhi	.L161	@,
	cmp	r0, #0	@ tmp794,
	beq	.L114	@,
	cmp	r1, r2	@ i.825, temp.1055
	mov	r3, r1	@ i.825, tmp755
	bhi	.L161	@,
.L114:
	add	r3, r3, #2	@ i.825, i.825,
	cmp	r3, r2	@ i.825, temp.1055
	bls	.L114	@,
.L161:
	mov	r3, #1	@ i.839,
	cmp	r3, r2	@ i.839, temp.1055
	and	r1, r2, r3	@ tmp791, temp.1055,
	bhi	.L162	@,
	cmp	r1, #0	@ tmp791,
	beq	.L115	@,
	mov	r3, #2	@ i.839,
	cmp	r3, r2	@ i.839, temp.1055
	bhi	.L162	@,
.L115:
	add	r3, r3, #2	@ i.839, i.839,
	cmp	r3, r2	@ i.839, temp.1055
	bls	.L115	@,
.L162:
	add	r9, r9, #384	@ ivtmp.741, D.35838,
	mov	r2, #0	@ i,
.L116:
	ldr	lr, [r4, #472]	@ tmp757, <variable>.wp_weight_l1_y
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r4, #1240]	@ zero_extendqisi2	@ tmp760, <variable>.wp_offset_l1_y
	ldr	ip, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r3, lr, asl #23	@ tmp756, tmp757,
	mov	r0, r1, asl #12	@ tmp762, tmp760,
	and	r1, ip, #7	@ tmp764, <variable>.luma_log2_weight_denom,
	mov	lr, r3, lsr #23	@ tmp756, tmp756,
	orr	ip, r0, lr, asl #3	@, tmp763, tmp762, tmp756,
	orr	r0, ip, r1	@ tmp.1049, tmp763, tmp764
	str	r0, [r9, #0]	@ tmp.1049,* ivtmp.741
	ldr	r3, [r4, #600]	@ tmp767, <variable>.wp_weight_l1_u
	ldrb	lr, [r4, #1368]	@ zero_extendqisi2	@ tmp770, <variable>.wp_offset_l1_u
	ldr	r1, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	ip, r3, asl #23	@ tmp766, tmp767,
	mov	r0, lr, asl #12	@ tmp772, tmp770,
	and	r1, r1, #7	@ tmp774, <variable>.chroma_log2_weight_denom,
	mov	lr, ip, lsr #23	@ tmp766, tmp766,
	orr	r3, r0, lr, asl #3	@, tmp773, tmp772, tmp766,
	orr	ip, r3, r1	@ tmp1.1054, tmp773, tmp774
	str	ip, [r9, #256]	@ tmp1.1054,
	ldr	lr, [r4, #728]	@ tmp780, <variable>.wp_weight_l1_v
	ldrb	r1, [r4, #1496]	@ zero_extendqisi2	@ tmp776, <variable>.wp_offset_l1_v
	add	r4, r4, #4	@ ivtmp.763, ivtmp.763,
	mov	r0, lr, asl #23	@ tmp779, tmp780,
	mov	r3, r0, lsr #23	@ tmp779, tmp779,
	orr	ip, r3, r1, asl #9	@, D.36302, tmp779, tmp776,
	str	ip, [r9, #512]	@ D.36302,
	ldr	lr, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	add	r9, r9, #4	@ ivtmp.741, ivtmp.741,
	cmp	lr, r2	@ <variable>.num_ref_idx_l1_active_minus1, i
	bcs	.L116	@,
	b	.L34	@
.L175:
	ldr	r2, [r4, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	movw	ip, #1620	@ tmp387,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mul	lr, r1, r2	@ tmp384, <variable>.pic_width_in_mb, <variable>.frame_height_in_mb
	cmp	lr, ip	@ tmp384, tmp387
	mvnhi	r0, #0	@ D.35842,
	bls	.L24	@,
	b	.L18	@
.L183:
	ldr	r1, [r5, #40]	@ temp.1028, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.1038,
	cmp	r1, r3	@ temp.1028,
	and	r0, r1, r3	@ tmp800, temp.1028,
	bcc	.L111	@,
	cmp	r0, #0	@ tmp800,
	beq	.L112	@,
	cmp	r1, r2	@ temp.1028, i.1038
	mov	r3, r2	@ i.1038, tmp750
	bcc	.L111	@,
.L112:
	add	r3, r3, #2	@ i.1038, i.1038,
	cmp	r1, r3	@ temp.1028, i.1038
	bcs	.L112	@,
	b	.L111	@
.L177:
	ldr	r0, [r4, #920]	@ D.35973, <variable>.mbtodec
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ D.35969, <variable>.MbaffFrameFlag
	cmp	r0, #262144	@ D.35973,
	addgt	r1, r1, #1	@, D.35969,
	suble	r0, r0, #1	@, D.35973,
	movwgt	r0, #:lower16:262143	@,
	addle	r1, r1, #1	@, D.35969,
	movtgt	r0, #:upper16:262143	@,
	bl	__aeabi_idiv	@
	b	.L32	@
.L174:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #493	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35842,
	b	.L18	@
	.fnend
	.size	H264HAL_V200R004_SetSliceMsg, .-H264HAL_V200R004_SetSliceMsg
	.align	2
	.global	H264HAL_V200R004_SetPicMsg
	.type	H264HAL_V200R004_SetPicMsg, %function
H264HAL_V200R004_SetPicMsg:
	.fnstart
.LFB1365:
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
	mov	r4, r0	@ pParam, pParam
	mov	r0, r2	@, PicMsgSlotPhy
	mov	r5, r1	@ pHwMem, pHwMem
	mov	r6, r3	@ FstSlcMsgSlotPhy, FstSlcMsgSlotPhy
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.35671,
	beq	.L232	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	ldr	lr, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	ldr	r0, [r4, #36]	@ D.35681, <variable>.transform_8x8_mode_flag
	bic	r6, r6, #15	@ tmp.1233, FstSlcMsgSlotPhy,
	ldr	r7, [r4, #40]	@ D.35684, <variable>.entropy_coding_mode_flag
	add	r1, lr, ip, asl #1	@, tmp222, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	ldr	ip, [r4, #44]	@ D.35687, <variable>.constrained_intra_pred_flag
	add	lr, r3, r1, asl #2	@, tmp226, tmp219, tmp222,
	mov	r0, r0, asl #28	@ tmp208, D.35681,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	orr	r0, r0, r7, asl #27	@, tmp209, tmp208, D.35684,
	ldr	r7, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	orr	r0, r0, ip, asl #26	@, tmp211, tmp209, D.35687,
	ldr	ip, [lr, #76]	@ tmp229, g_StructTrans
	sub	r1, r1, #1	@ tmp212, <variable>.pic_width_in_mb,
	ldr	lr, [r4, #16]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	sub	r7, r7, #1	@ tmp215, <variable>.pic_height_in_mb,
	orr	r0, r0, r1	@ tmp214, tmp211, tmp212
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	lr, #0	@ <variable>.nal_ref_idc,
	orr	r3, r0, r7, asl #16	@, tmp218, tmp214, tmp215,
	orr	r0, r3, ip, asl #14	@, tmp230, tmp218, tmp229,
	movne	lr, #-2147483648	@, iftmp.420,
	cmp	r1, #1	@ <variable>.chroma_format_idc,
	orr	r3, r0, lr	@ tmp231, tmp230, iftmp.420
	moveq	r1, #33554432	@ iftmp.421,
	movne	r1, #0	@ iftmp.421,
	orr	lr, r3, r1	@ tmp.423, tmp231, iftmp.421
	str	lr, [r2, #0]	@ tmp.423,* D.35671
	ldr	r0, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	bic	r3, r0, #15	@ tmp.1216, <variable>.CurrPicImg2DAddr,
	str	r3, [r2, #4]	@ tmp.1216,
	ldr	lr, [r4, #48]	@ D.35713, <variable>.ThisPoc
	str	lr, [r2, #8]	@ D.35713,
	ldr	r0, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r0, #0	@ <variable>.mb_adaptive_frame_field_flag,
	streq	r0, [r2, #12]	@ <variable>.mb_adaptive_frame_field_flag,
	ldrne	r0, [r4, #52]	@ D.35717, <variable>.TopPoc
	strne	r0, [r2, #12]	@ D.35717,
	ldrne	r0, [r4, #56]	@ D.35719, <variable>.BottomPoc
	str	r0, [r2, #16]	@ <variable>.mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	lr, r3, #15	@ tmp.1223, <variable>.SedTopAddr,
	str	lr, [r2, #20]	@ tmp.1223,
	ldr	r0, [r5, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r0, #15	@ tmp.1225, <variable>.PmvTopAddr,
	str	r3, [r2, #24]	@ tmp.1225,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	lr, #2	@ <variable>.pic_structure,
	ldreq	r1, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldrne	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	addeq	r1, r1, #206	@ tmp242, <variable>.CurrPicPmvIdc,
	ldreq	lr, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	addne	lr, lr, #206	@ tmp239, <variable>.CurrPicPmvIdc,
	ldreq	r1, [r4, r1, asl #2]	@ tmp245, <variable>.PmvPhyAddr
	ldrne	lr, [r4, lr, asl #2]	@ tmp241, <variable>.PmvPhyAddr
	addeq	lr, r1, lr	@ tmp244, tmp245, <variable>.half_pmvblk_offset
	bic	r0, lr, #15	@ tmp, tmp244,
	str	r0, [r2, #28]	@ tmp,
	ldr	r3, [r5, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r3, r3, #15	@ tmp.1231, <variable>.RcnTopAddr,
	str	r3, [r2, #32]	@ tmp.1231,
	str	r6, [r2, #36]	@ tmp.1233,
	ldr	r0, [r4, #1116]	@ i.1222, <variable>.ApcSize
	cmp	r0, #0	@ i.1222,
	addne	ip, r2, #40	@ ivtmp.1212, D.35671,
	movne	r1, r4	@ ivtmp.1211, pParam
	movne	r3, #0	@ i.1236,
	beq	.L207	@,
.L206:
	ldr	r0, [r1, #924]	@ tmp251, <variable>.Apc2Idc
	add	r3, r3, #1	@ i.1236, i.1236,
	add	r1, r1, #4	@ ivtmp.1211, ivtmp.1211,
	add	lr, r4, r0, asl #2	@, tmp254, pParam, tmp251,
	ldr	r0, [lr, #308]	@ tmp256, <variable>.ImgPhyAddr
	bic	lr, r0, #15	@ tmp.1235, tmp256,
	str	lr, [ip], #4	@ tmp.1235,
	ldr	r0, [r4, #1116]	@ i.1222, <variable>.ApcSize
	cmp	r0, r3	@ i.1222, i.1236
	bhi	.L206	@,
	cmp	r0, #15	@ i.1222,
	bhi	.L208	@,
.L207:
	ldr	r1, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r3, r0, #10	@ tmp248, i.1222,
	add	ip, r0, #1	@ i.1222, i.1222,
	rsb	r0, r0, #15	@ tmp282, i.1222,
	add	r3, r2, r3, asl #2	@, ivtmp.1205, D.35671, tmp248,
	cmp	ip, #15	@ i.1222,
	add	lr, r4, r1, asl #2	@, tmp261, pParam, <variable>.Apc2Idc,
	and	r0, r0, #1	@ tmp283, tmp282,
	ldr	r1, [lr, #308]	@ tmp263, <variable>.ImgPhyAddr
	bic	r1, r1, #15	@ tmp.1238, tmp263,
	str	r1, [r3], #4	@ tmp.1238,
	bhi	.L208	@,
	cmp	r0, #0	@ tmp283,
	beq	.L205	@,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	ip, ip, #1	@ i.1222, i.1222,
	cmp	ip, #15	@ i.1222,
	add	r1, r4, lr, asl #2	@, tmp319, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp321, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1238, tmp321,
	str	r1, [r3], #4	@ tmp.1238,
	bhi	.L208	@,
.L205:
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	mov	r1, r3	@ tmp285, ivtmp.1205
	add	ip, ip, #2	@ i.1222, i.1222,
	cmp	ip, #15	@ i.1222,
	add	r0, r4, lr, asl #2	@, tmp291, pParam, <variable>.Apc2Idc,
	ldr	lr, [r0, #308]	@ tmp293, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1238, tmp293,
	str	r0, [r1], #4	@ tmp.1238,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r0, r4, lr, asl #2	@, tmp300, pParam, <variable>.Apc2Idc,
	ldr	lr, [r0, #308]	@ tmp302, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1238, tmp302,
	str	r0, [r3, #4]	@ tmp.1238,
	add	r3, r1, #4	@ ivtmp.1205, tmp285,
	bls	.L205	@,
.L208:
	ldr	ip, [r5, #1076]	@ <variable>.H264MnAddr, <variable>.H264MnAddr
	bic	r3, ip, #15	@ tmp.1241, <variable>.H264MnAddr,
	str	r3, [r2, #104]	@ tmp.1241,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, #0	@ i,
	addne	r1, r2, #108	@ ivtmp.1197, D.35671,
	movne	r3, r4	@ ivtmp.1196, pParam
	movne	r0, #0	@ i.1218,
	beq	.L212	@,
.L211:
	ldr	lr, [r3, #988]	@ tmp.1243, <variable>.Apc2Poc
	add	r0, r0, #1	@ i.1218, i.1218,
	str	lr, [r1, #0]	@ tmp.1243,* ivtmp.1197
	ldr	ip, [r3, #1052]	@ tmp.1245, <variable>.Apc2Poc
	add	r3, r3, #4	@ ivtmp.1196, ivtmp.1196,
	str	ip, [r1, #4]	@ tmp.1245,
	add	r1, r1, #8	@ ivtmp.1197, ivtmp.1197,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, r0	@ i, i.1218
	bhi	.L211	@,
	cmp	ip, #15	@ i,
	bhi	.L213	@,
.L212:
	add	r1, ip, #14	@ tmp267, i,
	add	r3, r2, ip, asl #3	@, tmp266, D.35671, i,
	add	r7, ip, #1	@ i, i,
	add	r0, r3, #108	@ ivtmp.1188, tmp266,
	add	r1, r2, r1, asl #3	@, ivtmp.1191, D.35671, tmp267,
	cmp	r7, #15	@ i,
	rsb	lr, ip, #15	@ tmp277, i,
	mov	r3, #0	@ tmp274,
	and	ip, lr, #1	@ tmp278, tmp277,
	str	r3, [r0], #8	@ tmp274,
	str	r3, [r1], #8	@ tmp274,
	bhi	.L213	@,
	cmp	ip, #0	@ tmp278,
	beq	.L210	@,
	add	r7, r7, #1	@ i, i,
	str	r3, [r0], #8	@ tmp274,
	cmp	r7, #15	@ i,
	str	r3, [r1], #8	@ tmp274,
	bhi	.L213	@,
.L210:
	add	r7, r7, #2	@ i, i,
	mov	r6, r0	@ tmp280, ivtmp.1188
	cmp	r7, #15	@ i,
	mov	ip, r1	@ tmp281, ivtmp.1191
	str	r3, [r6], #8	@ tmp274,
	str	r3, [ip], #8	@ tmp274,
	str	r3, [r0, #8]	@ tmp274,
	add	r0, r6, #8	@ ivtmp.1188, tmp280,
	str	r3, [r1, #8]	@ tmp274,
	add	r1, ip, #8	@ ivtmp.1191, tmp281,
	bls	.L210	@,
.L213:
	ldr	r1, [r5, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	add	ip, r2, #224	@ D.37392, ivtmp.1184,
	mov	r3, r2	@ ivtmp.1184, D.35671
	bic	r0, r1, #15	@ tmp.1248, <variable>.DblkTopAddr,
	str	r0, [r2, #236]	@ tmp.1248,
.L214:
	ldr	r0, [r4, #60]	@ tmp272, <variable>.Qmatrix
	add	r1, r4, #4	@ tmp275, ivtmp.1182,
	add	r2, r3, #4	@ tmp276, ivtmp.1184,
	add	r4, r1, #4	@ ivtmp.1182, tmp275,
	str	r0, [r3, #256]	@ tmp272,
	add	r3, r2, #4	@ ivtmp.1184, tmp276,
	ldr	lr, [r1, #60]	@ tmp314, <variable>.Qmatrix
	cmp	r3, ip	@ ivtmp.1184, D.37392
	str	lr, [r2, #256]	@ tmp314,
	bne	.L214	@,
	mov	r0, #0	@ D.35675,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L232:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #344	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35675,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R004_SetPicMsg, .-H264HAL_V200R004_SetPicMsg
	.align	2
	.global	H264HAL_V200R004_CutSliceChain
	.type	H264HAL_V200R004_CutSliceChain, %function
H264HAL_V200R004_CutSliceChain:
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
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.35626,
	beq	.L237	@,
	mov	r0, #0	@ tmp140,
	str	r0, [r3, #252]	@ tmp140,
	ldmfd	sp, {fp, sp, pc}	@
.L237:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #311	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35630,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R004_CutSliceChain, .-H264HAL_V200R004_CutSliceChain
	.align	2
	.global	Write_V200R004_CabacTab
	.type	Write_V200R004_CabacTab, %function
Write_V200R004_CabacTab:
	.fnstart
.LFB1359:
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
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p
	addne	r4, r0, #5120	@ D.37552, p,
	movwne	r3, #:lower16:.LANCHOR1	@ ivtmp.1309,
	movtne	r3, #:upper16:.LANCHOR1	@ ivtmp.1309,
	beq	.L245	@,
.L240:
	ldr	ip, [r3, #0]	@ tmp145, g_CabacMN
	add	lr, r3, #32	@ tmp154, ivtmp.1309,
	add	r2, r0, #32	@ tmp153, p,
	str	ip, [r0, #0]	@ tmp145,* p
	ldr	r1, [r3, #4]	@ tmp146, g_CabacMN
	str	r1, [r0, #4]	@ tmp146,
	ldr	ip, [r3, #8]	@ tmp147, g_CabacMN
	str	ip, [r0, #8]	@ tmp147,
	ldr	r1, [r3, #12]	@ tmp148, g_CabacMN
	str	r1, [r0, #12]	@ tmp148,
	ldr	ip, [r3, #16]	@ tmp149, g_CabacMN
	str	ip, [r0, #16]	@ tmp149,
	ldr	r1, [r3, #20]	@ tmp150, g_CabacMN
	str	r1, [r0, #20]	@ tmp150,
	ldr	ip, [r3, #24]	@ tmp151, g_CabacMN
	str	ip, [r0, #24]	@ tmp151,
	ldr	r1, [r3, #28]	@ tmp152, g_CabacMN
	str	r1, [r0, #28]	@ tmp152,
	ldr	ip, [r3, #32]	@ tmp157, g_CabacMN
	add	r3, lr, #32	@ ivtmp.1309, tmp154,
	str	ip, [r0, #32]	@ tmp157,
	add	r0, r2, #32	@ p, tmp153,
	ldr	r1, [lr, #4]	@ tmp158, g_CabacMN
	cmp	r0, r4	@ p, D.37552
	str	r1, [r2, #4]	@ tmp158,
	ldr	ip, [lr, #8]	@ tmp159, g_CabacMN
	str	ip, [r2, #8]	@ tmp159,
	ldr	r1, [lr, #12]	@ tmp160, g_CabacMN
	str	r1, [r2, #12]	@ tmp160,
	ldr	ip, [lr, #16]	@ tmp161, g_CabacMN
	str	ip, [r2, #16]	@ tmp161,
	ldr	r1, [lr, #20]	@ tmp162, g_CabacMN
	str	r1, [r2, #20]	@ tmp162,
	ldr	ip, [lr, #24]	@ tmp163, g_CabacMN
	str	ip, [r2, #24]	@ tmp163,
	ldr	r1, [lr, #28]	@ tmp164, g_CabacMN
	str	r1, [r2, #28]	@ tmp164,
	bne	.L240	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L245:
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #242	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Write_V200R004_CabacTab, .-Write_V200R004_CabacTab
	.align	2
	.global	H264HAL_V200R004_InitHal
	.type	H264HAL_V200R004_InitHal, %function
H264HAL_V200R004_InitHal:
	.fnstart
.LFB1360:
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
	ldr	r0, [r0, #1076]	@, <variable>.H264MnAddr
	bl	Write_V200R004_CabacTab	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R004_InitHal, .-H264HAL_V200R004_InitHal
	.align	2
	.global	H264HAL_V200R004_StartDec
	.type	H264HAL_V200R004_StartDec, %function
H264HAL_V200R004_StartDec:
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
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #1	@ VdhId,
	mov	r5, r1	@ VdhId, VdhId
	mov	r6, r0	@ pParam, pParam
	bls	.L299	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
.L251:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L299:
	ldr	r3, [r0, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bhi	.L311	@,
	ldr	r1, [r0, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r1, #512	@ <variable>.pic_height_in_mb,
	bhi	.L312	@,
	cmp	r0, #0	@ pParam,
	beq	.L313	@,
	ldr	r0, [r0, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r0, #0	@ <variable>.pFirstSlice,
	beq	.L314	@,
	movw	r8, #1148	@ tmp266,
	movw	r4, #:lower16:g_HwMem	@ tmp659,
	mul	r8, r8, r5	@ tmp265, tmp266, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp659,
	add	r7, r4, r8	@ pHwMem, tmp659, tmp265
	ldr	r0, [r4, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L315	@,
.L256:
	movw	lr, #:lower16:.LANCHOR2	@ tmp271,
	movt	lr, #:upper16:.LANCHOR2	@ tmp271,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	ldr	r3, [lr, #0]	@ StartCnt, StartCnt
	movt	r1, #:upper16:.LC10	@,
	movw	r8, #1148	@ tmp289,
	add	r2, r3, #1	@ StartCnt.466, StartCnt,
	str	r2, [lr, #0]	@ StartCnt.466, StartCnt
	bl	dprint_vfmw	@
	ldr	r2, [r6, #920]	@ D.36383, <variable>.mbtodec
	sub	r3, fp, #44	@ D32.467,,
	mov	ip, #0	@ tmp275,
	cmp	r2, #262144	@ D.36383,
	suble	r2, r2, #1	@ iftmp.468, D.36383,
	str	ip, [r3, #-4]!	@ tmp275, D32
	bicle	ip, r2, #-16777216	@ iftmp.468, iftmp.468,
	ldr	r0, [r3, #0]	@ tmp277,* D32.467
	movwgt	ip, #:lower16:262143	@ iftmp.468,
	bicle	ip, ip, #15728640	@ iftmp.468, iftmp.468,
	movtgt	ip, #:upper16:262143	@ iftmp.468,
	mul	r8, r8, r5	@ tmp288, tmp289, VdhId
	bfi	r0, ip, #0, #20	@ tmp277, iftmp.468,,
	orr	r1, r0, #1073741824	@ tmp280, tmp277,
	mov	r0, #3	@,
	bic	r9, r1, #-2147483648	@ tmp281, tmp280,
	movw	r1, #:lower16:.LC11	@,
	bic	r2, r9, #4194304	@ tmp282, tmp281,
	movt	r1, #:upper16:.LC11	@,
	bfc	r2, #23, #1	@ tmp282,,
	orr	r9, r2, #16777216	@ tmp285, tmp282,
	bfc	r9, #25, #1	@ tmp285,,
	str	r9, [r3, #0]	@ tmp285,* D32.467
	str	r9, [r6, #1136]	@ D32, <variable>.basic_cfg0
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [ip, #8]	@ D32,
	mov	r9, #1	@ tmp305,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	movw	r3, #:lower16:16368	@ tmp299,
	movt	r3, #:upper16:16368	@ tmp299,
	mov	r0, r2, lsr #2	@ tmp298, <variable>.imgstride,
	ldr	r2, [r6, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	and	ip, r0, r3	@ tmp299, tmp298, tmp299
	mov	r0, #3	@,
	bfi	ip, r1, #14, #1	@ tmp299, <variable>.NewPicFlag,,
	movw	r1, #:lower16:.LC12	@,
	bic	r3, ip, #32768	@ tmp304, tmp299,
	movt	r1, #:upper16:.LC12	@,
	bfi	r3, r9, #16, #12	@ tmp304, tmp305,,
	bic	ip, r3, #805306368	@ tmp306, tmp304,
	orr	r9, ip, #536870912	@ tmp310, tmp306,
	bfi	r9, r2, #30, #1	@ tmp310, <variable>.Compress_en,,
	orr	r3, r9, #-2147483648	@ tmp311, tmp310,
	str	r3, [r6, #1140]	@ tmp311, <variable>.basic_cfg1
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ tmp311,
	str	r3, [r2, #12]	@ tmp311,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	bic	r9, ip, #15	@ tmp324, <variable>.MsgSlotAddr,
	str	r9, [r6, #1144]	@ tmp324, <variable>.avm_addr
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC13	@,
	str	r9, [fp, #-48]	@ tmp324, <variable>.av_msg_addr
	str	r9, [r2, #16]	@ tmp324,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	bic	ip, r3, #15	@ tmp336, <variable>.MsgSlotAddr,
	str	ip, [r6, #1148]	@ tmp336, <variable>.vam_addr
	ldr	r9, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC14	@,
	str	ip, [fp, #-48]	@ tmp336, <variable>.va_msg_addr
	str	ip, [r9, #20]	@ tmp336,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp348, <variable>.stream_base_addr,
	str	r3, [r6, #1152]	@ tmp348, <variable>.stream_base_addr_reg_tmp
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC15	@,
	str	r3, [fp, #-48]	@ tmp348, <variable>.stream_base_addr
	str	r3, [ip, #24]	@ tmp348,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r9, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r9, #120	@ <variable>.pic_width_in_mb,
	movhi	r9, #0	@ tmp294,
	movls	r9, #65536	@ tmp359,
	cmp	r5, #1	@ VdhId,
	str	r9, [fp, #-48]	@ tmp359, D32
	beq	.L263	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-48]	@ D32, D32
	cmp	r1, #0	@ D32,
	biceq	r1, r0, #65536	@ datTmp, datTmp.1451,
	orrne	r1, r0, #65536	@ datTmp, datTmp.1451,
	movw	r0, #:lower16:s_RegPhyBaseAddr	@ tmp362,
	movt	r0, #:upper16:s_RegPhyBaseAddr	@ tmp362,
	ldr	r9, [r0, #0]	@ s_RegPhyBaseAddr,
	add	r0, r9, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L266:
	movw	r0, #1148	@ tmp380,
	movw	lr, #:lower16:3148803	@ tmp370,
	mul	r8, r0, r5	@ tmp379, tmp380, VdhId
	movt	lr, #:upper16:3148803	@ tmp370,
	str	lr, [r6, #1160]	@ tmp370, <variable>.sed_to
	mov	r0, #3	@,
	str	lr, [r6, #1164]	@ tmp370, <variable>.itrans_to
	movw	r1, #:lower16:.LC16	@,
	str	lr, [r6, #1168]	@ tmp370, <variable>.pmv_to
	movt	r1, #:upper16:.LC16	@,
	str	lr, [r6, #1172]	@ tmp370, <variable>.prc_to
	str	lr, [r6, #1176]	@ tmp370, <variable>.rcn_to
	str	lr, [r6, #1180]	@ tmp370, <variable>.dblk_to
	str	lr, [r6, #1184]	@ tmp370, <variable>.ppfd_to
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [fp, #-48]	@ tmp370, D32
	str	lr, [ip, #60]	@ tmp370,
	ldr	r9, [fp, #-48]	@ D32.1472, D32
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r2, #64]	@ D32.1472,
	ldr	lr, [fp, #-48]	@ D32.1475, D32
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #68]	@ D32.1475,
	ldr	r2, [fp, #-48]	@ D32.1478, D32
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #72]	@ D32.1478,
	ldr	lr, [fp, #-48]	@ D32.1481, D32
	ldr	r9, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r9, #76]	@ D32.1481,
	mov	lr, #0	@ tmp413,
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [fp, #-48]	@ D32.1484, D32
	str	ip, [r3, #80]	@ D32.1484,
	ldr	r9, [fp, #-48]	@ D32.1487, D32
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r2, #84]	@ D32.1487,
	ldr	r3, [r6, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	str	lr, [fp, #-48]	@ tmp413, D32
	add	ip, r6, r3, asl #2	@, tmp419, pParam, <variable>.CurrPicImgIdc,
	ldr	r2, [ip, #308]	@ tmp421, <variable>.ImgPhyAddr
	bic	r9, r2, #15	@ tmp422, tmp421,
	str	r9, [r6, #1188]	@ tmp422, <variable>.ystaddr_1d
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [fp, #-48]	@ tmp422, <variable>.ystaddr_1d
	str	r9, [lr, #96]	@ tmp422,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldr	r9, [r6, #24]	@ height_in_mb, <variable>.frame_height_in_mb
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r3, [r6, #1192]	@ <variable>.imgstride, <variable>.ystride_1d
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ <variable>.imgstride, <variable>.ystride_1d
	str	r3, [ip, #100]	@ <variable>.imgstride,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r3, #2047	@ tmp445,
	mov	r2, r1, asl #4	@ D.36471, <variable>.pic_width_in_mb,
	sub	r0, r2, #1	@ tmp444, D.36471,
	cmp	r0, r3	@ tmp444, tmp445
	bhi	.L316	@,
.L269:
	mov	sl, #16	@ level,
.L271:
	ldr	r1, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	add	r0, r9, #1	@ tmp462, height_in_mb,
	ldr	ip, [r6, #912]	@ <variable>.imgstride, <variable>.imgstride
	movw	r8, #1148	@ tmp471,
	mov	r3, r0, lsr #1	@ tmp463, tmp462,
	mov	r0, #3	@,
	mov	lr, r1, asl #4	@ tmp456, <variable>.frame_height_in_mb,
	movw	r1, #:lower16:.LC18	@,
	add	r2, lr, #31	@ tmp458, tmp456,
	movt	r1, #:upper16:.LC18	@,
	mul	lr, ip, r3	@ tmp464, <variable>.imgstride, tmp463
	mov	r9, r2, lsr #5	@ tmp459, tmp458,
	mul	r8, r8, r5	@ tmp470, tmp471, VdhId
	mov	r2, r9, asl #4	@ tmp460, tmp459,
	mov	r5, #0	@ tmp486,
	mvn	r9, #0	@ tmp577,
	mla	ip, sl, r2, lr	@ tmp466, level, tmp460, tmp464
	mov	r3, ip, asl #1	@ tmp467, tmp466,
	str	r3, [r6, #1196]	@ tmp467, <variable>.uvoffset_1d
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ tmp467, <variable>.uvoffset_1d
	str	r3, [lr, #104]	@ tmp467,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	mov	r2, ip, asl #4	@ tmp476, <variable>.frame_height_in_mb,
	add	r3, r2, #31	@ tmp478, tmp476,
	bic	ip, r3, #31	@ tmp480, tmp478,
	mul	sl, sl, ip	@ D.36502, level, tmp480
	str	sl, [r6, #1200]	@ D.36502, <variable>.prcnum_1d_cnt
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [r2, #108]	@ D.36502,
	ldr	r3, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	ip, r3, #15	@ tmp489, <variable>.PpfdBufAddr,
	str	ip, [r6, #1212]	@ tmp489, <variable>.ppfd_buf_addr
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [fp, #-48]	@ tmp489, <variable>.ppfd_buf_addr
	str	ip, [r2, #128]	@ tmp489,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r5, [fp, #-48]	@ tmp486, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	strh	r3, [fp, #-48]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	ldr	ip, [fp, #-48]	@ D32, D32
	str	ip, [r6, #1216]	@ D32, <variable>.ppfd_buf_len
	ldr	r2, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #132]	@ D32,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1260]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r1, [r6, #1256]	@ <variable>.RefPicType, <variable>.RefPicType
	mov	r0, #3	@,
	ldr	ip, [r6, #1264]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r3, r0	@ tmp511, <variable>.RefPicType,
	ldr	lr, [r6, #1268]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r3, r1, r0	@ D32.1554, <variable>.RefPicType,
	and	r1, ip, r0	@ tmp514, <variable>.RefPicType,
	ldr	ip, [r6, #1272]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp517, <variable>.RefPicType,
	orr	r3, r3, r2, asl #2	@, temp.1559, D32.1554, tmp511,
	ldr	r2, [r6, #1276]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp520, <variable>.RefPicType,
	orr	r3, r3, r1, asl #4	@, temp.1565, temp.1559, tmp514,
	ldr	r1, [r6, #1280]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp523, <variable>.RefPicType,
	orr	r3, r3, lr, asl #6	@, temp.1571, temp.1565, tmp517,
	ldr	lr, [r6, #1284]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r1, r1, r0	@ tmp526, <variable>.RefPicType,
	orr	r3, r3, ip, asl #8	@, temp.1577, temp.1571, tmp520,
	ldr	ip, [r6, #1288]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp529, <variable>.RefPicType,
	orr	r3, r3, r2, asl #10	@, temp.1583, temp.1577, tmp523,
	ldr	r2, [r6, #1292]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp532, <variable>.RefPicType,
	orr	r3, r3, r1, asl #12	@, temp.1589, temp.1583, tmp526,
	ldr	r1, [r6, #1296]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp535, <variable>.RefPicType,
	orr	r3, r3, lr, asl #14	@, temp.1595, temp.1589, tmp529,
	ldr	lr, [r6, #1300]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r1, r1, r0	@ tmp538, <variable>.RefPicType,
	orr	r3, r3, ip, asl #16	@, temp.1601, temp.1595, tmp532,
	ldr	ip, [r6, #1304]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp541, <variable>.RefPicType,
	orr	r3, r3, r2, asl #18	@, temp.1607, temp.1601, tmp535,
	ldr	r2, [r6, #1308]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp544, <variable>.RefPicType,
	orr	r3, r3, r1, asl #20	@, temp.1613, temp.1607, tmp538,
	ldr	r1, [r6, #1312]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp547, <variable>.RefPicType,
	orr	r3, r3, lr, asl #22	@, temp.1619, temp.1613, tmp541,
	orr	lr, r3, ip, asl #24	@, temp.1625, temp.1619, tmp544,
	and	r1, r1, r0	@ tmp550, <variable>.RefPicType,
	ldr	ip, [r6, #1316]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, lr, r2, asl #26	@, temp.1631, temp.1625, tmp547,
	ldr	lr, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	orr	r3, r3, r1, asl #28	@, temp.1637, temp.1631, tmp550,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	orr	r2, r3, ip, asl #30	@, D.36524, temp.1637, <variable>.RefPicType,
	str	r2, [fp, #-48]	@ D.36524, D32
	str	r2, [lr, #148]	@ D.36524,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [fp, #-48]	@ tmp486, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r5, [ip, #152]	@ tmp486,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r6	@, pParam
	mov	r1, r7	@, pHwMem
	str	r9, [r3, #32]	@ tmp577,
	ldr	r2, [r7, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [r7, #48]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_SetPicMsg	@
	ldr	r4, [r6, #1124]	@ pSlicePara, <variable>.pFirstSlice
	cmp	r4, r5	@ pSlicePara,
	beq	.L317	@,
	ldr	r8, [r4, #48]	@ D.36538, <variable>.first_mb_in_slice
	cmp	r8, #0	@ D.36538,
	moveq	sl, r8	@ AddSlice0Flag, D.36538
	bne	.L318	@,
.L275:
	ldr	r1, [r6, #1120]	@ D.36584, <variable>.SliceParaNum
	cmp	r1, #0	@ D.36584,
	ble	.L277	@,
	mov	r8, #0	@ pre_first_mb_in_slice,
	mov	r2, r4	@ tmp_pSlicePara.1544, pSlicePara
	mov	r5, r8	@ i, pre_first_mb_in_slice
	ldr	ip, [r4, #48]	@ prephitmp.1401, <variable>.first_mb_in_slice
	add	r9, sl, #5	@ pretmp.1393, AddSlice0Flag,
	add	sl, sl, #4	@, AddSlice0Flag,
	str	sl, [fp, #-60]	@, %sfp
.L290:
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	r8, ip	@ pre_first_mb_in_slice, prephitmp.1401
	movcc	r3, #0	@, tmp612
	movcs	r3, #1	@, tmp612
	cmp	r5, #0	@ i,
	add	lr, r0, r5	@ tmp595,, i
	add	r0, r5, r9	@ D.36574, i, pretmp.1393
	movle	r3, #0	@, tmp612,
	cmp	r3, #0	@ tmp612,
	add	lr, r7, lr, asl #2	@, tmp599, pHwMem, tmp595,
	add	r3, r7, r0, asl #2	@, tmp604, pHwMem, D.36574,
	movne	r4, r2	@ tmp_pSlicePara, tmp_pSlicePara.1544
	ldr	lr, [lr, #28]	@ prev_slcmsg_phy.1541, <variable>.MsgSlotAddr
	ldr	r3, [r3, #28]	@ cur_slcmsg_phy.1542, <variable>.MsgSlotAddr
	bne	.L288	@,
	add	r5, r5, #1	@ j, i,
	mov	r8, ip	@ pre_first_mb_in_slice, prephitmp.1401
	cmp	r5, r1	@ j, D.36584
	movge	r4, r2	@ tmp_pSlicePara, tmp_pSlicePara.1544
	bge	.L280	@,
	ldr	r4, [r2, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ tmp_pSlicePara,
	beq	.L280	@,
	ldr	sl, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	sl, ip	@ <variable>.first_mb_in_slice, prephitmp.1401
	bhi	.L280	@,
	mvn	sl, r5	@ tmp664, j
	add	sl, sl, r1	@ tmp663, tmp664, D.36584
	tst	sl, #1	@ tmp663,
	bne	.L301	@,
	b	.L298	@
.L319:
	ldr	sl, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	sl, ip	@ <variable>.first_mb_in_slice, prephitmp.1401
	bhi	.L280	@,
.L298:
	add	r5, r5, #1	@ j, j,
	cmp	r5, r1	@ j, D.36584
	bge	.L280	@,
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ tmp_pSlicePara,
	beq	.L280	@,
	ldr	sl, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	sl, ip	@ <variable>.first_mb_in_slice, prephitmp.1401
	bhi	.L280	@,
.L301:
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	add	r5, r5, #1	@ j, j,
	cmp	r4, #0	@ tmp_pSlicePara,
	bne	.L319	@,
.L280:
	cmp	r5, r1	@ j, D.36584
	beq	.L283	@,
	cmp	r0, #140	@ D.36574,
	beq	.L283	@,
	add	r0, r9, r5	@ tmp620, pretmp.1393, j
	ldr	sl, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	add	r0, r7, r0, asl #2	@, tmp624, pHwMem, tmp620,
	sub	sl, sl, #1	@ last_mb_in_slice, <variable>.first_mb_in_slice,
	ldr	r0, [r0, #28]	@, <variable>.MsgSlotAddr
	str	r0, [fp, #-68]	@, %sfp
.L285:
	sub	r1, r1, #1	@ tmp626, D.36584,
	sub	r5, r5, #1	@ i, j,
	cmp	r1, r5	@ tmp626, i
	mov	r1, r7	@, pHwMem
	moveq	r0, #0	@,
	streq	r0, [r2, #4056]	@, <variable>.pNextSlice
	str	sl, [sp, #12]	@ last_mb_in_slice,
	mov	r0, r6	@, pParam
	ldr	sl, [fp, #-68]	@, %sfp
	str	lr, [sp, #0]	@ prev_slcmsg_phy.1541,
	stmib	sp, {sl, ip}	@ phole stm
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L320	@,
	ldr	ip, [fp, #-68]	@, %sfp
	cmp	ip, #0	@,
	beq	.L303	@,
	ldr	r1, [r6, #1120]	@ D.36584, <variable>.SliceParaNum
.L288:
	add	r5, r5, #1	@ i, i,
	mov	r3, r1	@ D.36584, D.36584
	cmp	r1, r5	@ D.36584, i
	ble	.L289	@,
	mov	r2, r4	@ tmp_pSlicePara.1544, tmp_pSlicePara
	ldr	ip, [r4, #48]	@ prephitmp.1401, <variable>.first_mb_in_slice
	b	.L290	@
.L283:
	ldr	r0, [r6, #20]	@, <variable>.pic_height_in_mb
	mov	r1, #0	@,
	str	r1, [fp, #-68]	@, %sfp
	str	r0, [fp, #-56]	@, %sfp
	ldr	r0, [r6, #28]	@, <variable>.pic_width_in_mb
	str	r1, [r2, #4056]	@, <variable>.pNextSlice
	ldr	sl, [fp, #-56]	@, %sfp
	ldr	r1, [r6, #1120]	@ D.36584, <variable>.SliceParaNum
	mul	sl, r0, sl	@,,
	str	sl, [fp, #-56]	@, %sfp
	sub	sl, sl, #1	@ last_mb_in_slice,,
	b	.L285	@
.L303:
	ldr	r3, [r6, #1120]	@ D.36584, <variable>.SliceParaNum
.L289:
	cmp	r3, #0	@ D.36584,
	ble	.L277	@,
	ldr	lr, [fp, #-60]	@, %sfp
	add	r3, lr, r3	@ tmp630,, D.36584
	add	r7, r7, r3, asl #2	@, tmp634, pHwMem, tmp630,
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_CutSliceChain	@
	ldrsb	r2, [r6, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r2, #1	@ <variable>.NewPicFlag,
	movne	r0, #0	@ D.36354,
	bne	.L251	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	ip, #:lower16:.LANCHOR0	@ tmp638,
	ldr	r2, [r6, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	ip, #:upper16:.LANCHOR0	@ tmp638,
	add	r0, r2, r1, asl #1	@, tmp641, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	add	r3, ip, r0, asl #2	@, tmp645, tmp638, tmp641,
	movw	ip, #:lower16:.LANCHOR3	@ tmp649,
	movt	ip, #:upper16:.LANCHOR3	@ tmp649,
	ldr	r2, [r3, #76]	@ tmp648, g_StructTrans
	ldr	r1, [ip, #-3064]	@ TotalPicNum, TotalPicNum
	sub	r0, r2, #1	@ tmp647, tmp648,
	cmp	r0, #1	@ tmp647,
	mov	r0, #0	@ D.36354,
	addls	r1, r1, #1	@ tmp652, TotalPicNum,
	addhi	r1, r1, #2	@ tmp656, TotalPicNum,
	str	r1, [ip, #-3064]	@ tmp656, TotalPicNum
	b	.L251	@
.L316:
	sub	r8, r2, #2048	@ tmp446, D.36471,
	sub	r1, r8, #1	@ tmp446, tmp446,
	cmp	r1, r3	@ tmp446, tmp445
	movls	sl, #32	@ level,
	bls	.L271	@,
	sub	lr, r2, #4096	@ tmp449, D.36471,
	sub	ip, lr, #1	@ tmp449, tmp449,
	cmp	ip, r3	@ tmp449, tmp445
	movls	sl, #48	@ level,
	bls	.L271	@,
	sub	r0, r2, #6144	@ tmp452, D.36471,
	sub	r2, r0, #1	@ tmp452, tmp452,
	cmp	r2, r3	@ tmp452, tmp445
	movls	sl, #64	@ level,
	bls	.L271	@,
	b	.L269	@
.L263:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r8, #:lower16:s_RegPhyBaseAddr_1	@ tmp367,
	movt	r8, #:upper16:s_RegPhyBaseAddr_1	@ tmp367,
	ldr	r2, [fp, #-48]	@ D32, D32
	ldr	ip, [r8, #0]	@ s_RegPhyBaseAddr_1,
	cmp	r2, #0	@ D32,
	biceq	r1, r0, #65536	@ datTmp.1420, datTmp.1453,
	orrne	r1, r0, #65536	@ datTmp.1420, datTmp.1453,
	add	r0, ip, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L266	@
.L318:
	ldr	r1, [r4, #8]	@, <variable>.valid_bitlen
	mov	sl, #1	@ tmp582,
	str	r5, [r4, #48]	@ tmp486, <variable>.first_mb_in_slice
	mov	r0, r6	@, pParam
	sub	ip, r8, #1	@ tmp592, D.36538,
	str	r1, [fp, #-76]	@, %sfp
	mov	r1, r7	@, pHwMem
	ldr	r2, [r4, #12]	@, <variable>.valid_bitlen
	str	sl, [r4, #8]	@ tmp582, <variable>.valid_bitlen
	str	r2, [fp, #-72]	@, %sfp
	mov	r2, r4	@, pSlicePara
	ldr	lr, [r4, #16]	@, <variable>.bitsoffset
	str	r5, [r4, #12]	@ tmp486, <variable>.valid_bitlen
	str	lr, [fp, #-68]	@, %sfp
	ldr	r3, [r4, #20]	@, <variable>.bitsoffset
	str	r5, [r4, #16]	@ tmp486, <variable>.bitsoffset
	str	r3, [fp, #-64]	@, %sfp
	ldr	lr, [r4, #24]	@, <variable>.bytespos
	str	r5, [r4, #20]	@ tmp486, <variable>.bitsoffset
	str	lr, [fp, #-56]	@, %sfp
	ldr	r3, [r4, #28]	@, <variable>.bytespos
	str	r5, [r4, #24]	@ tmp486, <variable>.bytespos
	str	r3, [fp, #-60]	@, %sfp
	str	r5, [r4, #28]	@ tmp486, <variable>.bytespos
	ldr	r3, [r7, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	str	r5, [sp, #8]	@ tmp486,
	ldr	lr, [r7, #44]	@, <variable>.MsgSlotAddr
	str	lr, [sp, #0]	@,
	ldr	lr, [r7, #52]	@, <variable>.MsgSlotAddr
	str	ip, [sp, #12]	@ tmp592,
	str	lr, [sp, #4]	@,
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L321	@,
	ldr	r1, [fp, #-60]	@, %sfp
	str	r8, [r4, #48]	@ D.36538, <variable>.first_mb_in_slice
	str	r1, [r4, #28]	@, <variable>.bytespos
	ldr	r2, [fp, #-76]	@, %sfp
	str	r2, [r4, #8]	@, <variable>.valid_bitlen
	ldr	lr, [fp, #-72]	@, %sfp
	str	lr, [r4, #12]	@, <variable>.valid_bitlen
	ldr	r3, [fp, #-68]	@, %sfp
	str	r3, [r4, #16]	@, <variable>.bitsoffset
	ldr	ip, [fp, #-64]	@, %sfp
	str	ip, [r4, #20]	@, <variable>.bitsoffset
	ldr	r0, [fp, #-56]	@, %sfp
	str	r0, [r4, #24]	@, <variable>.bytespos
	ldr	r4, [r6, #1124]	@ pSlicePara, <variable>.pFirstSlice
	b	.L275	@
.L320:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movw	r2, #1539	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L315:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.36370,
	strne	r2, [r4, r8]	@ D.36370, <variable>.pVdmRegVirAddr
	bne	.L256	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L311:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1061	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L312:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1062	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L321:
	mov	r0, sl	@, tmp582
	movw	r1, #:lower16:.LC24	@,
	movw	r2, #1368	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36354, tmp577
	b	.L251	@
.L277:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L317:
	mov	r0, r4	@, pSlicePara
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.36354, tmp577
	b	.L251	@
.L314:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1064	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC8	@,
	movt	r3, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
.L313:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1063	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36354,
	b	.L251	@
	.fnend
	.size	H264HAL_V200R004_StartDec, .-H264HAL_V200R004_StartDec
	.global	g_CabacMN
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_SliceTypeForPMV, %object
	.size	g_SliceTypeForPMV, 12
g_SliceTypeForPMV:
	.word	1
	.word	2
	.word	0
	.type	g_ListStructFrame, %object
	.size	g_ListStructFrame, 32
g_ListStructFrame:
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	2
	.type	g_ListStructField, %object
	.size	g_ListStructField, 32
g_ListStructField:
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.type	g_StructTrans, %object
	.size	g_StructTrans, 32
g_StructTrans:
	.word	0
	.word	3
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.data
	.align	2
.LANCHOR1 = . + 0
.LANCHOR3 = . + 8184
	.type	g_CabacMN, %object
	.size	g_CabacMN, 5120
g_CabacMN:
	.word	388044546
	.word	352326208
	.word	153820416
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	388044546
	.word	352326208
	.word	153820416
	.word	3013710
	.word	-44040151
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	203950899
	.word	238747648
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	219088691
	.word	38797353
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	421532977
	.word	355860480
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	119732056
	.word	-327221207
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	354489138
	.word	289210368
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	-276827290
	.word	5437770
	.word	-345250433
	.word	-511711105
	.word	-295705217
	.word	-344792449
	.word	0
	.word	0
	.word	-277089165
	.word	-260377229
	.word	-45614550
	.word	-80544458
	.word	-29491142
	.word	20971080
	.word	-11864229
	.word	0
	.word	-111282857
	.word	-45221049
	.word	-62915516
	.word	-195757762
	.word	-113178563
	.word	87621186
	.word	20971581
	.word	-28442624
	.word	402657033
	.word	135859474
	.word	252251411
	.word	170200082
	.word	102568993
	.word	253625389
	.word	20578366
	.word	121438208
	.word	-94504364
	.word	-129040318
	.word	-12124098
	.word	-29557189
	.word	-78906050
	.word	-63244478
	.word	-11599801
	.word	54788096
	.word	252053011
	.word	118492174
	.word	302845195
	.word	219090704
	.word	202837271
	.word	252972570
	.word	237769000
	.word	288292864
	.word	-197132732
	.word	-246090904
	.word	-79430885
	.word	-47710676
	.word	3076160
	.word	-129698226
	.word	-95553962
	.word	0
	.word	20055860
	.word	170065964
	.word	187040045
	.word	3015980
	.word	521208115
	.word	120724499
	.word	270601790
	.word	0
	.word	203819821
	.word	254217002
	.word	220991533
	.word	204016177
	.word	505549354
	.word	171381043
	.word	288227417
	.word	0
	.word	170719550
	.word	254021160
	.word	270208029
	.word	19665956
	.word	304088362
	.word	19925566
	.word	288229696
	.word	0
	.word	403772693
	.word	420880155
	.word	371004195
	.word	238160441
	.word	121634381
	.word	-61670050
	.word	155579501
	.word	0
	.word	-45680547
	.word	-161815937
	.word	-195235529
	.word	-163775938
	.word	-62786487
	.word	-129173168
	.word	-145166482
	.word	0
	.word	-210964124
	.word	-211422373
	.word	-195103144
	.word	-262867370
	.word	-111938729
	.word	-312606394
	.word	4782922
	.word	305856512
	.word	451745519
	.word	451878631
	.word	485237225
	.word	635773417
	.word	686040815
	.word	569714929
	.word	704259585
	.word	688979968
	.word	-194448031
	.word	-262080168
	.word	-128583339
	.word	-145362088
	.word	71499085
	.word	-45286836
	.word	171638604
	.word	-11337728
	.word	618472670
	.word	551953890
	.word	752886510
	.word	586230001
	.word	569975803
	.word	553657858
	.word	554506019
	.word	221904896
	.word	-11863455
	.word	-111416193
	.word	-178131884
	.word	-179307959
	.word	-62196906
	.word	-211749535
	.word	-311099392
	.word	0
	.word	-127471260
	.word	6225920
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	519707395
	.word	437649408
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-110890401
	.word	39780352
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	503126528
	.word	371064832
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-63374510
	.word	-112399747
	.word	-129041631
	.word	-63898059
	.word	-46206137
	.word	-162532266
	.word	-212143519
	.word	0
	.word	-62193080
	.word	-179569337
	.word	254735173
	.word	4063297
	.word	354808136
	.word	154734646
	.word	4066376
	.word	0
	.word	636494844
	.word	653797117
	.word	620963333
	.word	704652048
	.word	655756848
	.word	455415100
	.word	205783649
	.word	0
	.word	5045066
	.word	4650315
	.word	21233729
	.word	-230096066
	.word	71237444
	.word	-213185737
	.word	88083526
	.word	0
	.word	536421361
	.word	587014659
	.word	620700165
	.word	537600773
	.word	571221771
	.word	505225754
	.word	489100098
	.word	0
	.word	0
	.word	0
	.word	-45351145
	.word	19005739
	.word	3604023
	.word	3998016
	.word	4519772
	.word	0
	.word	-277287824
	.word	-294455979
	.word	-245566887
	.word	-431492783
	.word	-229638076
	.word	-230234056
	.word	-381360078
	.word	-179699712
	.word	401808115
	.word	686895602
	.word	738405638
	.word	740434230
	.word	324141056
	.word	0
	.word	0
	.word	0
	.word	-227871903
	.word	-245697446
	.word	-296159671
	.word	-145755562
	.word	-162924986
	.word	-163185854
	.word	-146736326
	.word	37421056
	.word	368449781
	.word	486022399
	.word	486743305
	.word	588520740
	.word	239271936
	.word	0
	.word	0
	.word	0
	.word	-444668830
	.word	-412751549
	.word	-464327586
	.word	-262935954
	.word	-346296730
	.word	-211950721
	.word	0
	.word	0
	.word	-111346855
	.word	-111086740
	.word	-95617492
	.word	2949172
	.word	-46072261
	.word	-62456757
	.word	-128782490
	.word	0
	.word	-27919794
	.word	-11798195
	.word	37094706
	.word	-45874894
	.word	103480401
	.word	20970566
	.word	4391481
	.word	-28573696
	.word	186384936
	.word	53215281
	.word	3015212
	.word	36896815
	.word	69665342
	.word	103678006
	.word	53871162
	.word	71237632
	.word	-211095446
	.word	-162010254
	.word	-294718878
	.word	-361829526
	.word	-295179413
	.word	-378739088
	.word	-161418145
	.word	-77922304
	.word	235604750
	.word	151720459
	.word	352917502
	.word	552673521
	.word	585836521
	.word	719268321
	.word	786704116
	.word	354222080
	.word	-47251647
	.word	-12978339
	.word	-145947880
	.word	2752560
	.word	3668539
	.word	-112724909
	.word	-178789769
	.word	0
	.word	186844224
	.word	20777763
	.word	303631384
	.word	220007716
	.word	-161613495
	.word	-28766930
	.word	154270052
	.word	0
	.word	104007225
	.word	120915508
	.word	104270637
	.word	237242421
	.word	-11401417
	.word	-45215954
	.word	371195732
	.word	0
	.word	-144840098
	.word	-78247613
	.word	-61802923
	.word	-12187844
	.word	154797373
	.word	204607282
	.word	305205558
	.word	0
	.word	770192851
	.word	820396501
	.word	736962550
	.word	503910938
	.word	337313849
	.word	-229442741
	.word	-312353411
	.word	0
	.word	-45418660
	.word	-128456322
	.word	20643101
	.word	-14417626
	.word	36436535
	.word	3801152
	.word	-45418918
	.word	0
	.word	154468917
	.word	87424573
	.word	3670072
	.word	-213910724
	.word	-12712903
	.word	-96140231
	.word	237438003
	.word	222560256
	.word	419897081
	.word	469965828
	.word	536879871
	.word	503717382
	.word	537468691
	.word	437983774
	.word	622074914
	.word	289800192
	.word	170460974
	.word	-13433039
	.word	137627945
	.word	103744055
	.word	220793388
	.word	103941429
	.word	221316159
	.word	104857600
	.word	452992000
	.word	536615686
	.word	570957322
	.word	404103443
	.word	371202591
	.word	355015212
	.word	388960321
	.word	239534080
	.word	87426620
	.word	104531525
	.word	4652061
	.word	85919530
	.word	20708922
	.word	-45548207
	.word	-178192384
	.word	0
	.word	54526269
	.word	155123712
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	21169467
	.word	155385856
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28967365
	.word	105250816
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	138151487
	.word	289472512
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-13631420
	.word	-62523304
	.word	3803141
	.word	168693266
	.word	219873832
	.word	3865926
	.word	-95422379
	.word	0
	.word	120721447
	.word	86770740
	.word	187759420
	.word	-12910533
	.word	371262764
	.word	237764430
	.word	3934533
	.word	0
	.word	270406176
	.word	304289309
	.word	404690726
	.word	304813097
	.word	188680507
	.word	155254622
	.word	-27658388
	.word	0
	.word	170658079
	.word	204145461
	.word	237111846
	.word	-46920408
	.word	287311660
	.word	119934258
	.word	171514411
	.word	0
	.word	353900308
	.word	437721888
	.word	471276568
	.word	388503584
	.word	471668522
	.word	322508341
	.word	373099350
	.word	0
	.word	0
	.word	0
	.word	-96274141
	.word	-114624467
	.word	-80677832
	.word	-96666818
	.word	-129828788
	.word	0
	.word	-61867705
	.word	-79300794
	.word	-129829308
	.word	-313920443
	.word	-263786173
	.word	-331420346
	.word	-264050111
	.word	-331415552
	.word	167647991
	.word	569845753
	.word	704523523
	.word	822684955
	.word	607846400
	.word	0
	.word	0
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	368255474
	.word	670641918
	.word	855784454
	.word	1024538402
	.word	708706304
	.word	0
	.word	0
	.word	0
	.word	-645927333
	.word	-278862255
	.word	-580720538
	.word	-379460233
	.word	-396104850
	.word	-295248769
	.word	0
	.word	0
	.word	5307225
	.word	-111215524
	.word	-378474169
	.word	-113442763
	.word	-79497907
	.word	-145688748
	.word	-162013569
	.word	0
	.word	-211291301
	.word	-145100196
	.word	-129174441
	.word	-378607511
	.word	-162599824
	.word	-278678913
	.word	-1166029185
	.word	-763428864
	.word	70060572
	.word	169812469
	.word	886379023
	.word	469771242
	.word	652681728
	.word	669917428
	.word	1721892864
	.word	955318272
	.word	-344004228
	.word	-328276354
	.word	-411242647
	.word	-444996235
	.word	-278469003
	.word	-445325446
	.word	-161484188
	.word	-127991808
	.word	335155962
	.word	234887924
	.word	535831015
	.word	568993252
	.word	669133538
	.word	802565596
	.word	836643311
	.word	537460736
	.word	2555969
	.word	-246096513
	.word	-345637593
	.word	-80348867
	.word	-179572403
	.word	-279189653
	.word	-412097414
	.word	0
	.word	-62719154
	.word	-62392248
	.word	37486391
	.word	-112788917
	.word	-128328073
	.word	-45408236
	.word	504812671
	.word	0
	.word	570170634
	.word	637219811
	.word	670512350
	.word	1170621377
	.word	754655239
	.word	937631745
	.word	6948
	.word	0
	.word	-277879694
	.word	-94765488
	.word	-61671595
	.word	-128843960
	.word	88080707
	.word	154665029
	.word	21301061
	.word	0
	.word	1169768385
	.word	1119899062
	.word	920204509
	.word	703996928
	.word	687808014
	.word	471471909
	.word	204933953
	.word	0
	.word	-28707736
	.word	-144973441
	.word	-179505620
	.word	-164301255
	.word	-147132344
	.word	-112853947
	.word	-78973098
	.word	0
	.word	3603261
	.word	3866428
	.word	-46270397
	.word	-413863350
	.word	-79624908
	.word	37290045
	.word	-146410170
	.word	305594368
	.word	568795874
	.word	618931940
	.word	652550894
	.word	602940146
	.word	553133562
	.word	587210250
	.word	470948377
	.word	489226240
	.word	-112854461
	.word	-263324096
	.word	37616195
	.word	-46136775
	.word	-46006974
	.word	4065587
	.word	-12386745
	.word	-28639232
	.word	635381724
	.word	685450978
	.word	786377442
	.word	686305763
	.word	653535478
	.word	654126843
	.word	521411870
	.word	422313984
	.word	53937976
	.word	121047101
	.word	37943074
	.word	18877215
	.word	87359031
	.word	-29163447
	.word	-128385024
	.word	0
	.word	-62455750
	.word	121438208
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4915784
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-12126392
	.word	238813184
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	204475185
	.word	439156736
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-46858172
	.word	-112527528
	.word	53741316
	.word	168300808
	.word	269681445
	.word	-12715191
	.word	-12125106
	.word	0
	.word	153686553
	.word	153093419
	.word	154075180
	.word	3342894
	.word	321322050
	.word	254151722
	.word	153223257
	.word	0
	.word	237179423
	.word	287511838
	.word	288166954
	.word	304945946
	.word	271976258
	.word	272108361
	.word	172226164
	.word	0
	.word	270860335
	.word	304286501
	.word	204016169
	.word	36703273
	.word	220790843
	.word	53613352
	.word	54661682
	.word	0
	.word	370546454
	.word	454369556
	.word	438050328
	.word	455217706
	.word	421990962
	.word	205919542
	.word	239536979
	.word	0
	.word	0
	.word	0
	.word	-79233000
	.word	-14352854
	.word	-30083271
	.word	-96469951
	.word	-62654126
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-44958388
	.word	-112657842
	.word	-196545980
	.word	-45680052
	.word	-79496386
	.word	3800125
	.word	-147062474
	.word	37355520
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-595595429
	.word	-228595884
	.word	-413731751
	.word	-279191169
	.word	-229839257
	.word	-212149377
	.word	0
	.word	0
	.word	189793612
	.word	39060814
	.word	-395056558
	.word	-146931659
	.word	3928661
	.word	-212208802
	.word	-178461825
	.word	0
	.word	-61410216
	.word	-78447288
	.word	-62654392
	.word	-262539451
	.word	-12909246
	.word	70908999
	.word	-28900806
	.word	-11927552
	.word	69664810
	.word	119671581
	.word	136250917
	.word	120193832
	.word	136383787
	.word	220464175
	.word	53936698
	.word	104595456
	.word	-360716417
	.word	-411507329
	.word	-311236235
	.word	-411638155
	.word	-395189130
	.word	-512173188
	.word	-161549978
	.word	-161284096
	.word	301142263
	.word	301210603
	.word	635578840
	.word	718745809
	.word	669003480
	.word	885862103
	.word	886647789
	.word	537591808
	.word	-97057731
	.word	-229385345
	.word	-345705927
	.word	-196872889
	.word	-162665643
	.word	-262608536
	.word	-245179521
	.word	0
	.word	-64159931
	.word	4127027
	.word	-63964630
	.word	-47580619
	.word	139261774
	.word	-179107532
	.word	4455258
	.word	0
	.word	137104172
	.word	237635376
	.word	70779956
	.word	220530993
	.word	322570800
	.word	204275781
	.word	337709119
	.word	0
	.word	-211104129
	.word	-77852359
	.word	-78187682
	.word	-195297715
	.word	4718409
	.word	71366993
	.word	88084281
	.word	0
	.word	1036597458
	.word	1053708733
	.word	770450430
	.word	470753793
	.word	654384657
	.word	338039341
	.word	255197263
	.word	0
	.word	-78645912
	.word	-178527617
	.word	-162334672
	.word	-130156478
	.word	-112790965
	.word	-162531501
	.word	-195236244
	.word	0
	.word	21229896
	.word	-78907312
	.word	-346821824
	.word	-216012992
	.word	-480376501
	.word	289405002
	.word	-81527269
	.word	224067584
	.word	602808807
	.word	486348810
	.word	452993778
	.word	886319080
	.word	319889177
	.word	605886497
	.word	571416084
	.word	373882880
	.word	21168196
	.word	-163380924
	.word	5046848
	.word	4520782
	.word	121046331
	.word	37817910
	.word	254543164
	.word	38141952
	.word	619718130
	.word	636428289
	.word	571415823
	.word	404300310
	.word	521151250
	.word	521937193
	.word	605821743
	.word	356384768
	.word	4324943
	.word	4783196
	.word	-61871547
	.word	-263455174
	.word	20640590
	.word	-145490863
	.word	-211615744
	.word	0
	.word	54655301
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	337777439
	.word	455868416
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28512682
	.word	205914112
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	304026394
	.word	605552640
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-96992444
	.word	-129502366
	.word	-212731354
	.word	-213976518
	.word	-29626295
	.word	-162729130
	.word	-145492393
	.word	0
	.word	-163445954
	.word	-45814703
	.word	1966343
	.word	-48764086
	.word	272820604
	.word	287649006
	.word	853469823
	.word	0
	.word	319819556
	.word	254022940
	.word	420814356
	.word	520887056
	.word	405405789
	.word	238554937
	.word	438757503
	.word	0
	.word	88142918
	.word	188155192
	.word	4522561
	.word	-95812298
	.word	121043532
	.word	-179110323
	.word	-28501718
	.word	0
	.word	404167440
	.word	404627229
	.word	371791402
	.word	272371508
	.word	238814030
	.word	-260369099
	.word	372775229
	.word	0
	.word	0
	.word	0
	.word	-146278107
	.word	-131271375
	.word	-164039621
	.word	-130025661
	.word	-96143793
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.type	TotalPicNum, %object
	.size	TotalPicNum, 4
TotalPicNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"can not map slice msg virtual address!\012\000"
.LC2:
	.ascii	"chroma_lg = %d\012\000"
.LC3:
	.ascii	"can not map down msg virtual address!\012\000"
	.space	1
.LC4:
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC5:
	.ascii	"VdhId is wrong! H264HAL_V200R003_StartDec\012\000"
	.space	1
.LC6:
	.ascii	"picture width out of range\012\000"
.LC7:
	.ascii	"point of picture para null\012\000"
.LC8:
	.ascii	"point of fst slice para null\012\000"
	.space	2
.LC9:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC10:
	.ascii	"\012\012***********************H264HAL_V200R003_Sta"
	.ascii	"rtDec is Now %d***********************\012\000"
	.space	3
.LC11:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC12:
	.ascii	"BASIC_V200R004_CFG1 = 0x%x\012\000"
.LC13:
	.ascii	"AVM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC14:
	.ascii	"VAM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC15:
	.ascii	"STREAM_V200R003_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC16:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC17:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC18:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC19:
	.ascii	"PPFD_V200R004_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"PPFD_V200R004_BUF_LEN = 0x%x\012\000"
	.space	2
.LC21:
	.ascii	"REF_V200R004_PIC_TYPE = 0x%x\012\000"
	.space	2
.LC22:
	.ascii	"FF_V200R004_APT_EN = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"pSlicePara = NULL!\012\000"
.LC24:
	.ascii	"line %d Set slice msg not wrong!\012\000"
	.space	2
.LC25:
	.ascii	"!!! no slice to dec, add up msg report.\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	StartCnt.36328, %object
	.size	StartCnt.36328, 4
StartCnt.36328:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
