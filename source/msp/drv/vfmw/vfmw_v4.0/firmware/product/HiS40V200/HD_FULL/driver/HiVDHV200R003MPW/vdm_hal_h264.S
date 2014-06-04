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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/.vdm_hal_h264.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_h264.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003MPW/vdm_hal_h264.o
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
	.global	Get_V200R003MPW_VirAddr
	.type	Get_V200R003MPW_VirAddr, %function
Get_V200R003MPW_VirAddr:
	.fnstart
.LFB1348:
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
	.size	Get_V200R003MPW_VirAddr, .-Get_V200R003MPW_VirAddr
	.align	2
	.global	Get_V200R003MPW_PhyAddr
	.type	Get_V200R003MPW_PhyAddr, %function
Get_V200R003MPW_PhyAddr:
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
	add	r0, r1, r0, asl #2	@,, base_phy_addr, Dn,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Get_V200R003MPW_PhyAddr, .-Get_V200R003MPW_PhyAddr
	.align	2
	.global	Write_V200R003MPW_Qmatrix
	.type	Write_V200R003MPW_Qmatrix, %function
Write_V200R003MPW_Qmatrix:
	.fnstart
.LFB1351:
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
	mov	r2, #4	@ ivtmp.556,
	str	ip, [r3, #0]	@ tmp168,* vir_addr
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r5, #0	@ tmp171,
	beq	.L7	@,
	ldr	ip, [r0, #4]	@ tmp180,
	mov	r4, #2	@ i,
	cmp	r1, r4	@ size, i
	mov	r2, #8	@ ivtmp.556,
	str	ip, [r3, #4]	@ tmp180,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
.L7:
	ldr	r5, [r0, r2]	@ tmp176,* ivtmp.556
	add	ip, r2, #4	@ tmp173, ivtmp.556,
	add	r4, r4, #2	@ i, i,
	cmp	r1, r4	@ size, i
	str	r5, [r3, r2]	@ tmp176,* ivtmp.556
	add	r2, ip, #4	@ ivtmp.556, tmp173,
	ldr	r5, [r0, ip]	@ tmp179,
	str	r5, [r3, ip]	@ tmp179,
	bhi	.L7	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	Write_V200R003MPW_Qmatrix, .-Write_V200R003MPW_Qmatrix
	.global	__aeabi_idiv
	.align	2
	.global	H264HAL_V200R003MPW_SetSliceMsg
	.type	H264HAL_V200R003MPW_SetSliceMsg, %function
H264HAL_V200R003MPW_SetSliceMsg:
	.fnstart
.LFB1353:
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
	subs	r9, r0, #0	@ D.31084,
	beq	.L174	@,
	ldr	r3, [r5, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r9, #0]	@ <variable>.valid_bitlen,* D.31084
	streq	r3, [r9, #4]	@ <variable>.valid_bitlen,
	streq	r3, [r9, #8]	@ <variable>.valid_bitlen,
	beq	.L20	@,
	ldr	ip, [r5, #24]	@ temp.1061, <variable>.bytespos
	ldr	r2, [r5, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	lr, [r4, #912]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp361, temp.1061,
	add	r0, r2, ip, asl #3	@, tmp359, <variable>.bitsoffset, temp.1061,
	and	r3, r0, #127	@ tmp.1049, tmp359,
	str	r3, [r9, #4]	@ tmp.1049,
	ldr	r2, [r5, #8]	@ tmp.1043, <variable>.valid_bitlen
	bic	ip, lr, #15	@ stream_base_addr.1062, <variable>.stream_base_addr,
	rsb	r0, ip, r1	@ temp.1042, stream_base_addr.1062, tmp361
	str	r2, [r9, #8]	@ tmp.1043,
	str	r0, [r9, #0]	@ temp.1042,* D.31084
.L20:
	ldr	r1, [r5, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r1, #0	@ <variable>.valid_bitlen,
	streq	r1, [r9, #12]	@ <variable>.valid_bitlen,
	streq	r1, [r9, #16]	@ <variable>.valid_bitlen,
	streq	r1, [r9, #20]	@ <variable>.valid_bitlen,
	beq	.L22	@,
	ldr	ip, [r5, #28]	@ D.31096, <variable>.bytespos
	ldr	r3, [r5, #20]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r0, [r4, #912]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp368, D.31096,
	add	lr, r3, ip, asl #3	@, tmp366, <variable>.bitsoffset, D.31096,
	and	r2, lr, #127	@ tmp.424, tmp366,
	str	r2, [r9, #16]	@ tmp.424,
	ldr	ip, [r5, #12]	@ tmp.820, <variable>.valid_bitlen
	bic	r3, r0, #15	@ stream_base_addr, <variable>.stream_base_addr,
	rsb	lr, r3, r1	@ D.31112, stream_base_addr, tmp368
	str	ip, [r9, #20]	@ tmp.820,
	str	lr, [r9, #12]	@ D.31112,
.L22:
	ldr	r1, [r5, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	movw	lr, #:lower16:g_not_direct_8x8_inference_flag	@ tmp381,
	ldr	ip, [r5, #36]	@ <variable>.cabac_init_idc, <variable>.cabac_init_idc
	movt	lr, #:upper16:g_not_direct_8x8_inference_flag	@ tmp381,
	ldr	r0, [r5, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	bic	r2, r1, #-16777216	@ tmp372, <variable>.first_mb_in_slice,
	bic	r3, r2, #15728640	@ tmp372, tmp372,
	and	r1, ip, #3	@ tmp378, <variable>.cabac_init_idc,
	orr	ip, r3, r0, asl #26	@, tmp377, tmp372, <variable>.SliceQPy,
	orr	r2, ip, r1, asl #24	@, tmp.829, tmp377, tmp378,
	str	r2, [r9, #24]	@ tmp.829,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r3, #0	@ g_not_direct_8x8_inference_flag,
	ldrneb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.671, <variable>.direct_8x8_inference_flag
	bne	.L24	@,
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.671, <variable>.direct_8x8_inference_flag
	cmp	r3, #0	@ prephitmp.671,
	beq	.L175	@,
.L24:
	ldr	lr, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r6, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [fp, #-52]	@, %sfp
	mov	ip, lr, asl #8	@ tmp389, <variable>.listXsize,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	orr	r1, ip, r6, asl #2	@, tmp391, tmp389, <variable>.listXsize,
	ldr	r7, [r5, #44]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r6, [fp, #-52]	@, %sfp
	and	lr, r2, #31	@ tmp392, <variable>.num_ref_idx_l1_active_minus1,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	and	ip, r7, #31	@ tmp396, <variable>.num_ref_idx_l0_active_minus1,
	orr	r7, r1, lr, asl #21	@, tmp395, tmp391, tmp392,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	orr	r2, r7, ip, asl #16	@, tmp399, tmp395, tmp396,
	ldr	r0, [r6, r0, asl #2]	@ tmp403, g_SliceTypeForPMV
	orr	lr, r2, r0	@ tmp402, tmp399, tmp403
	orr	r2, lr, r1, asl #15	@, tmp406, tmp402, <variable>.direct_spatial_mv_pred_flag,
	orr	r3, r2, r3, asl #14	@, tmp.832, tmp406, prephitmp.671,
	str	r3, [r9, #28]	@ tmp.832,
	ldrb	r7, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [r6, r7, asl #2]	@ tmp410, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp410,
	movne	r3, #0	@ prephitmp.1041,
	movne	r2, r3	@ prephitmp.673, prephitmp.1041
	beq	.L176	@,
.L26:
	str	r2, [r9, #32]	@ prephitmp.673,
	str	r3, [r9, #36]	@ prephitmp.1041,
	ldr	r3, [r5, #60]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldrb	ip, [r5, #4]	@ zero_extendqisi2	@ <variable>.weight_flag, <variable>.weight_flag
	and	r7, r3, #31	@ tmp457, <variable>.chroma_qp_index_offset,
	ldr	lr, [r5, #64]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	mov	r1, r7, asl #5	@ tmp459, tmp457,
	and	r2, lr, #31	@ tmp461, <variable>.second_chroma_qp_index_offset,
	orr	r3, r1, ip, asl #16	@, tmp460, tmp459, <variable>.weight_flag,
	orr	r7, r3, r2	@ D.31198, tmp460, tmp461
	str	r7, [r9, #40]	@ D.31198,
	ldr	lr, [r5, #68]	@ <variable>.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	ldr	ip, [r5, #72]	@ <variable>.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	and	r3, lr, #15	@ tmp466, <variable>.slice_alpha_c0_offset_div2,
	ldr	r2, [r5, #76]	@ <variable>.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	and	r1, ip, #15	@ tmp463, <variable>.slice_beta_offset_div2,
	mov	r7, r3, asl #16	@ tmp468, tmp466,
	orr	lr, r7, r1, asl #8	@, tmp469, tmp468, tmp463,
	orr	ip, lr, r2	@ tmp.856, tmp469, <variable>.disable_deblocking_filter_idc
	str	ip, [r9, #44]	@ tmp.856,
	ldr	r3, [r5, #4056]	@ <variable>.pNextSlice, <variable>.pNextSlice
	cmp	r3, #0	@ <variable>.pNextSlice,
	ldrne	r0, [fp, #16]	@ tmp.809, last_mb_in_slice
	beq	.L177	@,
.L32:
	str	r0, [r9, #176]	@ tmp.809,
	ldr	lr, [fp, #8]	@ NextSlcMsgSlotPhy, NextSlcMsgSlotPhy
	bic	r1, lr, #15	@ tmp.861, NextSlcMsgSlotPhy,
	str	r1, [r9, #252]	@ tmp.861,
	ldr	r7, [fp, #-52]	@, %sfp
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [r7, ip, asl #2]	@ prephitmp.686, g_SliceTypeForPMV
	cmp	r3, #0	@ prephitmp.686,
	beq	.L34	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	ip, #0	@ <variable>.pic_structure,
	bne	.L178	@,
	ldr	sl, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	sl, #0	@ <variable>.listXsize,
	beq	.L38	@,
	mov	r7, #20	@,
	mov	r0, #12	@,
	mov	r2, r5	@ ivtmp.775, pSlcPara
	mov	r6, ip	@ tmp.810, tmp1
	mov	r3, ip	@ i.857, tmp1
	str	r7, [fp, #-48]	@, %sfp
	str	r0, [fp, #-60]	@, %sfp
	str	r9, [fp, #-64]	@ D.31084, %sfp
	str	r5, [fp, #-56]	@ pSlcPara, %sfp
	b	.L43	@
.L41:
	cmp	r1, #3	@ D.31252,
	beq	.L179	@,
.L42:
	ldr	r5, [fp, #-56]	@, %sfp
	ldr	r1, [r5, #52]	@ temp.865, <variable>.listXsize
	cmp	r1, r3	@ temp.865, i.857
	bls	.L180	@,
.L43:
	ldrb	sl, [r2, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	lr, r3, #7	@ D.31245, i.857,
	ldr	r5, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r3, #3	@ D.31252, i.857,
	ldr	r8, [fp, #-52]	@, %sfp
	mov	r7, lr, asl #2	@, D.31245,
	add	r0, r5, sl, asl #1	@, tmp491, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	r5, [r2, #1627]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	str	r7, [fp, #-72]	@, %sfp
	add	r7, r1, r1, asl #2	@, tmp507, D.31252, D.31252,
	add	sl, r8, r0, asl #2	@, tmp495,, tmp491,
	ldr	r9, [r2, #1644]	@, <variable>.apc_idc
	cmp	r5, #1	@ <variable>.frame_is_long_term,
	add	r3, r3, #1	@ i.857, i.857,
	ldr	r0, [sl, #12]	@ tmp498, g_ListStructFrame
	add	r2, r2, #36	@ ivtmp.775, ivtmp.775,
	mov	r8, r9, asl #1	@ tmp502,,
	moveq	r5, #8	@ iftmp.430,
	and	r9, r0, #3	@ tmp497, tmp498,
	movne	r5, #0	@ iftmp.430,
	ldr	sl, [fp, #-72]	@, %sfp
	cmp	lr, #7	@ D.31245,
	orr	r0, r5, r9	@ tmp499, iftmp.430, tmp497
	and	lr, r8, #31	@ tmp504, tmp502,
	orr	r6, r6, r0, asl sl	@, tmp.810, tmp.810, tmp499,
	orr	ip, ip, lr, asl r7	@, tmp1, tmp1, tmp504,
	bne	.L41	@,
	ldr	lr, [fp, #-60]	@, %sfp
	cmp	r1, #3	@ D.31252,
	ldr	r9, [fp, #-64]	@, %sfp
	add	r0, lr, #1	@,,
	str	r6, [r9, lr, asl #2]	@ tmp.810,
	mov	r6, #0	@ tmp.810,
	str	r0, [fp, #-60]	@, %sfp
	bne	.L42	@,
.L179:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r8, [fp, #-64]	@, %sfp
	add	r7, r1, #1	@,,
	str	ip, [r8, r1, asl #2]	@ tmp1,
	mov	ip, #0	@ tmp1,
	ldr	r5, [fp, #-56]	@, %sfp
	str	r7, [fp, #-48]	@, %sfp
	ldr	r1, [r5, #52]	@ temp.865, <variable>.listXsize
	cmp	r1, r3	@ temp.865, i.857
	bhi	.L43	@,
.L180:
	tst	r1, #7	@ temp.865,
	ldr	r9, [fp, #-64]	@ D.31084, %sfp
	ldr	r5, [fp, #-56]	@ pSlcPara, %sfp
	ldrne	r0, [fp, #-60]	@, %sfp
	ldreq	sl, [fp, #-52]	@, %sfp
	ldreqb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	strne	r6, [r9, r0, asl #2]	@ tmp.810,* D.31084
	ldrne	r1, [fp, #-48]	@, %sfp
	ldreq	r3, [sl, r3, asl #2]	@ prephitmp.686, g_SliceTypeForPMV
	strne	ip, [r9, r1, asl #2]	@ tmp1,* D.31084
	ldrneb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r2, [fp, #-52]	@, %sfp
	ldrne	r3, [r2, r3, asl #2]	@ prephitmp.686, g_SliceTypeForPMV
.L38:
	cmp	r3, #2	@ prephitmp.686,
	bne	.L45	@,
	ldr	r6, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r6, #0	@ <variable>.listXsize,
	beq	.L45	@,
	mov	ip, #0	@ tmp1.815,
	add	r3, r5, #2784	@ ivtmp.770, pSlcPara,
	mov	r7, #28	@,
	mov	r0, #16	@,
	add	r3, r3, #12	@ ivtmp.770, ivtmp.770,
	mov	r6, ip	@ tmp.811, tmp1.815
	mov	r2, ip	@ i.888, tmp1.815
	str	r7, [fp, #-48]	@, %sfp
	str	r0, [fp, #-60]	@, %sfp
	str	r9, [fp, #-64]	@ D.31084, %sfp
	str	r5, [fp, #-56]	@ pSlcPara, %sfp
	b	.L50	@
.L48:
	cmp	r1, #3	@ temp.878,
	beq	.L181	@,
.L49:
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r1, [lr, #56]	@ temp.873, <variable>.listXsize
	cmp	r1, r2	@ temp.873, i.888
	bls	.L182	@,
.L50:
	ldrb	lr, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	r0, r2, #7	@ temp.875, i.888,
	ldr	r8, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r2, #3	@ temp.878, i.888,
	ldr	r5, [fp, #-52]	@, %sfp
	mov	r7, r0, asl #2	@, temp.875,
	add	sl, r8, lr, asl #1	@, tmp524, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	lr, [r3, #-17]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	str	r7, [fp, #-72]	@, %sfp
	add	r7, r1, r1, asl #2	@, tmp540, temp.878, temp.878,
	add	sl, r5, sl, asl #2	@, tmp528,, tmp524,
	ldr	r9, [r3, #0]	@, <variable>.apc_idc
	cmp	lr, #1	@ <variable>.frame_is_long_term,
	add	r2, r2, #1	@ i.888, i.888,
	ldr	r5, [sl, #12]	@ tmp531, g_ListStructFrame
	add	r3, r3, #36	@ ivtmp.770, ivtmp.770,
	mov	r8, r9, asl #1	@ tmp535,,
	moveq	lr, #8	@ iftmp.431,
	and	sl, r5, #3	@ tmp530, tmp531,
	movne	lr, #0	@ iftmp.431,
	and	r9, r8, #31	@ tmp537, tmp535,
	cmp	r0, #7	@ temp.875,
	orr	r0, lr, sl	@ tmp532, iftmp.431, tmp530
	ldr	sl, [fp, #-72]	@, %sfp
	orr	ip, ip, r9, asl r7	@, tmp1.815, tmp1.815, tmp537,
	orr	r6, r6, r0, asl sl	@, tmp.811, tmp.811, tmp532,
	bne	.L48	@,
	ldr	r0, [fp, #-60]	@, %sfp
	cmp	r1, #3	@ temp.878,
	ldr	r9, [fp, #-64]	@, %sfp
	str	r6, [r9, r0, asl #2]	@ tmp.811,
	add	r0, r0, #1	@,,
	mov	r6, #0	@ tmp.811,
	str	r0, [fp, #-60]	@, %sfp
	bne	.L49	@,
.L181:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-64]	@, %sfp
	add	r7, r1, #1	@,,
	str	ip, [r5, r1, asl #2]	@ tmp1.815,
	mov	ip, #0	@ tmp1.815,
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
	ldr	r3, [r1, r0, asl #2]	@ tmp737, g_SliceTypeForPMV
	cmp	r3, #1	@ tmp737,
	beq	.L108	@,
.L107:
	ldr	ip, [r4, #288]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	bne	.L34	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r6, [fp, #-52]	@, %sfp
	ldr	lr, [r6, r2, asl #2]	@ tmp741, g_SliceTypeForPMV
	cmp	lr, #2	@ tmp741,
	bne	.L34	@,
.L108:
	add	r2, r9, #256	@ ivtmp.748, D.31084,
	mov	r4, r5	@ ivtmp.746, pSlcPara
	mov	r3, r5	@ ivtmp.1036, pSlcPara
	mov	r0, #0	@ i.1012,
.L109:
	ldr	r1, [r3, #88]	@ tmp743, <variable>.wp_weight_l0_y
	add	r0, r0, #1	@ i.1012, i.1012,
	ldrb	r7, [r3, #856]	@ zero_extendqisi2	@ tmp746, <variable>.wp_offset_l0_y
	ldr	ip, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r8, r1, asl #23	@ tmp742, tmp743,
	mov	lr, r7, asl #12	@ tmp748, tmp746,
	and	r7, ip, #7	@ tmp750, <variable>.luma_log2_weight_denom,
	mov	r1, r8, lsr #23	@ tmp742, tmp742,
	orr	r8, lr, r1, asl #3	@, tmp749, tmp748, tmp742,
	orr	lr, r8, r7	@ tmp.1015, tmp749, tmp750
	str	lr, [r2, #0]	@ tmp.1015,* ivtmp.748
	ldr	r1, [r3, #216]	@ tmp753, <variable>.wp_weight_l0_u
	ldrb	ip, [r3, #984]	@ zero_extendqisi2	@ tmp756, <variable>.wp_offset_l0_u
	ldr	r7, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r8, r1, asl #23	@ tmp752, tmp753,
	mov	lr, ip, asl #12	@ tmp758, tmp756,
	and	ip, r7, #7	@ tmp760, <variable>.chroma_log2_weight_denom,
	mov	r1, r8, lsr #23	@ tmp752, tmp752,
	orr	r7, lr, r1, asl #3	@, tmp759, tmp758, tmp752,
	orr	r8, r7, ip	@ tmp1.1017, tmp759, tmp760
	str	r8, [r2, #256]	@ tmp1.1017,
	ldr	lr, [r3, #344]	@ tmp766, <variable>.wp_weight_l0_v
	ldrb	ip, [r3, #1112]	@ zero_extendqisi2	@ tmp762, <variable>.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.1036, ivtmp.1036,
	mov	r1, lr, asl #23	@ tmp765, tmp766,
	mov	r7, r1, lsr #23	@ tmp765, tmp765,
	orr	r8, r7, ip, asl #9	@, D.31508, tmp765, tmp762,
	str	r8, [r2, #512]	@ D.31508,
	ldr	r1, [r5, #44]	@ temp.913, <variable>.num_ref_idx_l0_active_minus1
	add	r2, r2, #4	@ ivtmp.748, ivtmp.748,
	cmp	r1, r0	@ temp.913, i.1012
	bcs	.L109	@,
	cmp	r1, #1	@ temp.913,
	and	r2, r1, #1	@ tmp823, temp.913,
	mov	r3, #1	@ i.881,
	bcc	.L159	@,
	cmp	r2, #0	@ tmp823,
	beq	.L110	@,
	mov	r3, #2	@ i.881,
	cmp	r1, r3	@ temp.913, i.881
	bcc	.L159	@,
.L110:
	add	r3, r3, #2	@ i.881, i.881,
	cmp	r1, r3	@ temp.913, i.881
	bcs	.L110	@,
.L159:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r2, [r7, r3, asl #2]	@ tmp770, g_SliceTypeForPMV
	cmp	r2, #2	@ tmp770,
	beq	.L183	@,
.L111:
	ldr	r2, [r5, #84]	@, <variable>.chroma_log2_weight_denom
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #44]	@ D.31139, <variable>.num_ref_idx_l0_active_minus1
	mov	r3, #1	@ i.1023,
	cmp	r2, r3	@ D.31139,
	and	r1, r2, r3	@ tmp817, D.31139,
	bcc	.L160	@,
	cmp	r1, #0	@ tmp817,
	beq	.L113	@,
	mov	r3, #2	@ i.1023,
	cmp	r2, r3	@ D.31139, i.1023
	bcc	.L160	@,
.L113:
	add	r3, r3, #2	@ i.1023, i.1023,
	cmp	r2, r3	@ D.31139, i.1023
	bcs	.L113	@,
.L160:
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r1, [r8, r0, asl #2]	@ tmp775, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp775,
	beq	.L184	@,
.L34:
	mov	r0, #0	@ D.31088,
.L18:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L178:
	ldr	r8, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r8, #0	@ <variable>.listXsize,
	beq	.L37	@,
	mov	ip, #0	@ tmp1.816,
	mov	r3, r5	@ ivtmp.794, pSlcPara
	mov	r6, ip	@ tmp.813, tmp1.816
	mov	r2, ip	@ i.940, tmp1.816
	mov	r7, #20	@ Dn_0.806,
	mov	r8, #12	@ Dn_num.803,
	str	r9, [fp, #-56]	@ D.31084, %sfp
	b	.L77	@
.L52:
	cmp	r1, #2	@ D.31292,
	andne	r1, r2, #3	@ prephitmp.928, i.940,
	andne	r0, r2, #7	@ prephitmp.703, i.940,
	beq	.L185	@,
.L63:
	cmp	r0, #7	@ prephitmp.703,
	add	r2, r2, #1	@ i.940, i.940,
	add	r3, r3, #36	@ ivtmp.794, ivtmp.794,
	ldreq	r0, [fp, #-56]	@, %sfp
	streq	r6, [r0, r8, asl #2]	@ tmp.813,
	addeq	r8, r8, #1	@ Dn_num.803, Dn_num.803,
	moveq	r6, #0	@ tmp.813,
	cmp	r1, #3	@ prephitmp.928,
	ldreq	r1, [fp, #-56]	@, %sfp
	streq	ip, [r1, r7, asl #2]	@ tmp1.816,
	addeq	r7, r7, #1	@ Dn_0.806, Dn_0.806,
	ldr	r1, [r5, #52]	@ temp.895, <variable>.listXsize
	moveq	ip, #0	@ tmp1.816,
	cmp	r1, r2	@ temp.895, i.940
	bls	.L186	@,
.L77:
	ldrb	r1, [r3, #1624]	@ zero_extendqisi2	@ D.31292, <variable>.list_structure
	cmp	r1, #1	@ D.31292,
	bne	.L52	@,
	ldrb	r1, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r1, #3	@ <variable>.is_used,
	beq	.L53	@,
	ldrb	r1, [r3, #1628]	@ zero_extendqisi2	@ D.31304, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.703, i.940,
	ldrb	sl, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.31304,
	mov	lr, r0, asl #2	@, prephitmp.703,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	str	lr, [fp, #-48]	@, %sfp
	moveq	sl, #8	@ iftmp.432,
	add	r1, r9, r1, asl #1	@, tmp554,, D.31304,
	ldr	r9, [fp, #-52]	@, %sfp
	movne	sl, #0	@ iftmp.432,
	add	lr, r9, r1, asl #2	@, tmp558,, tmp554,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	sl, r9, sl	@ tmp551,, iftmp.432
	ldr	r9, [lr, #44]	@ tmp561, g_ListStructField
	and	r1, r9, #3	@ tmp560, tmp561,
	ldr	r9, [fp, #-48]	@, %sfp
	orr	lr, sl, r1	@ tmp562, tmp551, tmp560
	orr	r6, r6, lr, asl r9	@, tmp.813, tmp.813, tmp562,
.L58:
	ldr	lr, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.928, i.940,
	add	r9, r1, r1, asl #2	@, tmp587, prephitmp.928, prephitmp.928,
	mov	sl, lr, asl #1	@ tmp582, <variable>.apc_idc,
	and	lr, sl, #31	@ tmp584, tmp582,
	orr	ip, ip, lr, asl r9	@, tmp1.816, tmp1.816, tmp584,
	b	.L63	@
.L185:
	ldrb	r0, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L65	@,
	ldrb	r1, [r3, #1630]	@ zero_extendqisi2	@ D.31341, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.703, i.940,
	ldrb	sl, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.31341,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.436,
	movne	sl, #0	@ iftmp.436,
	add	lr, r9, r1, asl #1	@, tmp594,, D.31341,
	mov	r9, r0, asl #2	@, prephitmp.703,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	add	r1, r9, lr, asl #2	@, tmp598,, tmp594,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	lr, r9, sl	@ tmp591,, iftmp.436
	ldr	r9, [r1, #44]	@ tmp601, g_ListStructField
	ldr	r1, [fp, #-48]	@, %sfp
	and	r9, r9, #3	@ tmp600, tmp601,
	orr	sl, lr, r9	@ tmp602, tmp591, tmp600
	orr	r6, r6, sl, asl r1	@, tmp.813, tmp.813, tmp602,
.L70:
	ldr	sl, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.928, i.940,
	add	r9, r1, r1, asl #2	@, tmp628, prephitmp.928, prephitmp.928,
	mov	lr, sl, asl #1	@ tmp622, <variable>.apc_idc,
	and	sl, lr, #30	@ tmp624, tmp622,
	orr	lr, sl, #1	@ tmp625, tmp624,
	orr	ip, ip, lr, asl r9	@, tmp1.816, tmp1.816, tmp625,
	b	.L63	@
.L53:
	and	r0, r2, #7	@ prephitmp.703, i.940,
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.703,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.top_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #1628]	@ zero_extendqisi2	@, <variable>.top_structure
	moveq	lr, #8	@ iftmp.434,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.434,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.435,
	movne	sl, #0	@ iftmp.435,
	orr	sl, sl, lr	@ tmp567, iftmp.435, iftmp.434
	ldr	lr, [r9, #44]	@ tmp578, g_ListStructField
	and	r1, lr, #3	@ tmp577, tmp578,
	orr	lr, sl, r1	@ tmp579, tmp567, tmp577
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.813, tmp.813, tmp579,
	b	.L58	@
.L65:
	and	r0, r2, #7	@ prephitmp.703, i.940,
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.703,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.btm_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #1630]	@ zero_extendqisi2	@, <variable>.btm_structure
	moveq	lr, #8	@ iftmp.438,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.438,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.439,
	movne	sl, #0	@ iftmp.439,
	orr	sl, sl, lr	@ tmp607, iftmp.439, iftmp.438
	ldr	lr, [r9, #44]	@ tmp618, g_ListStructField
	and	r1, lr, #3	@ tmp617, tmp618,
	orr	lr, sl, r1	@ tmp619, tmp607, tmp617
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.813, tmp.813, tmp619,
	b	.L70	@
.L186:
	ldr	r9, [fp, #-56]	@ D.31084, %sfp
	tst	r1, #7	@ temp.895,
	ldreqb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	strne	r6, [r9, r8, asl #2]	@ tmp.813,* D.31084
	ldreq	r2, [fp, #-52]	@, %sfp
	strne	ip, [r9, r7, asl #2]	@ tmp1.816,* D.31084
	ldrneb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r6, [fp, #-52]	@, %sfp
	ldreq	r3, [r2, r3, asl #2]	@ prephitmp.686, g_SliceTypeForPMV
	ldrne	r3, [r6, r3, asl #2]	@ prephitmp.686, g_SliceTypeForPMV
.L37:
	cmp	r3, #2	@ prephitmp.686,
	beq	.L187	@,
.L45:
	add	r0, r5, #3920	@ tmp548, pSlcPara,
	ldr	sl, [r5, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r3, r0, #16	@ ivtmp.761, tmp548,
	mov	r8, #36	@ Dn_num.812,
	ldr	r6, [r0, #12]	@ tmp728, <variable>.Apc2RefIdx
	and	r2, sl, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	r0, #1	@ i.1004,
	mov	sl, r5	@ pSlcPara, pSlcPara
	and	ip, r6, #31	@ tmp727, tmp728,
	str	r4, [fp, #-56]	@ pParam, %sfp
	orr	ip, r2, ip, asl #5	@, tmp, tmp, tmp727,
.L51:
	add	r5, r0, #1	@ tmp826, i.1004,
	add	r4, r3, #4	@ tmp825, ivtmp.761,
	add	r0, r5, #1	@ i.1004, tmp826,
	and	r1, r5, #3	@ temp.998, tmp826,
	and	r2, r0, #3	@ temp.998, i.1004,
	cmp	r5, #32	@ tmp826,
	add	r6, r1, r1, asl #2	@, tmp835, temp.998, temp.998,
	add	r5, r2, r2, asl #2	@, tmp843, temp.998, temp.998,
	beq	.L188	@,
	ldr	lr, [r3, #0]	@ tmp832, <variable>.Apc2RefIdx
	cmp	r1, #3	@ temp.998,
	and	r7, lr, #31	@ tmp833, tmp832,
	orr	r7, ip, r7, asl r6	@, tmp, tmp, tmp833,
	streq	r7, [r9, r8, asl #2]	@ tmp,* D.31084
	ldr	r6, [r3, #4]	@ tmp840, <variable>.Apc2RefIdx
	moveq	r7, #0	@ tmp,
	addeq	r8, r8, #1	@ Dn_num.812, Dn_num.812,
	cmp	r2, #3	@ temp.998,
	and	ip, r6, #31	@ tmp841, tmp840,
	orr	ip, r7, ip, asl r5	@, tmp, tmp, tmp841,
	addne	r3, r4, #4	@ ivtmp.761, tmp825,
	bne	.L51	@
.L189:
	str	ip, [r9, r8, asl #2]	@ tmp,* D.31084
	add	r3, r4, #4	@ ivtmp.761, tmp825,
	add	r8, r8, #1	@ Dn_num.812, Dn_num.812,
	mov	ip, #0	@ tmp,
	b	.L51	@
.L176:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r3, #0	@ <variable>.pic_structure,
	beq	.L190	@,
	ldr	ip, [r5, #2776]	@ tmp430,
	bic	r7, ip, #-16777216	@ tmp428, tmp430,
	bic	r3, r7, #255	@ tmp428, tmp428,
	cmp	r3, #768	@ tmp428,
	beq	.L173	@,
	ldrb	r2, [r5, #2776]	@ zero_extendqisi2	@ <variable>.list_structure, <variable>.list_structure
	cmp	r2, #1	@ <variable>.list_structure,
	beq	.L173	@,
	ldr	r7, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1041,
	ldr	r2, [r4, #904]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	add	r1, r4, r7, asl #2	@, tmp450, pParam, <variable>.pmv_address_idc,
	ldr	lr, [r1, #820]	@ tmp453, <variable>.PmvPhyAddr
	add	ip, lr, r2	@ tmp452, tmp453, <variable>.half_pmvblk_offset
	bic	r2, ip, #15	@ prephitmp.673, tmp452,
	b	.L26	@
.L190:
	ldr	r2, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldrb	r1, [r5, #2778]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	r1, #3	@ <variable>.frame_structure,
	addeq	r2, r4, r2, asl #2	@, tmp424, pParam, <variable>.pmv_address_idc,
	addne	r2, r4, r2, asl #2	@, tmp417, pParam, <variable>.pmv_address_idc,
	ldreq	r3, [r4, #904]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	ldreq	r2, [r2, #820]	@ temp.838, <variable>.PmvPhyAddr
	ldrne	r2, [r2, #820]	@ tmp419, <variable>.PmvPhyAddr
	addeq	r3, r2, r3	@ tmp426, temp.838, <variable>.half_pmvblk_offset
	biceq	r2, r2, #15	@ prephitmp.673, temp.838,
	bicne	r2, r2, #15	@ prephitmp.673, tmp419,
	biceq	r3, r3, #15	@ prephitmp.1041, tmp426,
	b	.L26	@
.L187:
	ldr	r3, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r3, #0	@ <variable>.listXsize,
	beq	.L45	@,
	add	r7, r5, #2784	@ ivtmp.783, pSlcPara,
	mov	ip, #0	@ tmp1.817,
	add	r3, r7, #12	@ ivtmp.783, ivtmp.783,
	mov	r6, ip	@ tmp.814, tmp1.817
	mov	r2, ip	@ i.989, tmp1.817
	mov	r7, #28	@ Dn_0.807,
	mov	r8, #16	@ Dn_num.804,
	str	r9, [fp, #-56]	@ D.31084, %sfp
	b	.L104	@
.L79:
	cmp	r1, #2	@ D.31377,
	andne	r1, r2, #3	@ prephitmp.980, i.989,
	andne	r0, r2, #7	@ prephitmp.975, i.989,
	beq	.L191	@,
.L90:
	cmp	r0, #7	@ prephitmp.975,
	add	r2, r2, #1	@ i.989, i.989,
	add	r3, r3, #36	@ ivtmp.783, ivtmp.783,
	ldreq	r0, [fp, #-56]	@, %sfp
	streq	r6, [r0, r8, asl #2]	@ tmp.814,
	addeq	r8, r8, #1	@ Dn_num.804, Dn_num.804,
	moveq	r6, #0	@ tmp.814,
	cmp	r1, #3	@ prephitmp.980,
	ldreq	r1, [fp, #-56]	@, %sfp
	streq	ip, [r1, r7, asl #2]	@ tmp1.817,
	addeq	r7, r7, #1	@ Dn_0.807, Dn_0.807,
	ldr	r1, [r5, #56]	@ temp.932, <variable>.listXsize
	moveq	ip, #0	@ tmp1.817,
	cmp	r1, r2	@ temp.932, i.989
	bls	.L192	@,
.L104:
	ldrb	r1, [r3, #-20]	@ zero_extendqisi2	@ D.31377, <variable>.list_structure
	cmp	r1, #1	@ D.31377,
	bne	.L79	@,
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L80	@,
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.31389, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.975, i.989,
	ldrb	sl, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.31389,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.440,
	movne	sl, #0	@ iftmp.440,
	add	lr, r9, r1, asl #1	@, tmp646,, D.31389,
	mov	r9, r0, asl #2	@, prephitmp.975,
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	add	r1, r9, lr, asl #2	@, tmp650,, tmp646,
	ldr	r9, [fp, #-60]	@, %sfp
	orr	lr, r9, sl	@ tmp643,, iftmp.440
	ldr	r9, [r1, #44]	@ tmp653, g_ListStructField
	and	r1, r9, #3	@ tmp652, tmp653,
	orr	r9, lr, r1	@ tmp654, tmp643, tmp652
	ldr	r1, [fp, #-48]	@, %sfp
	orr	r6, r6, r9, asl r1	@, tmp.814, tmp.814, tmp654,
.L85:
	ldr	lr, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.980, i.989,
	add	r9, r1, r1, asl #2	@, tmp679, prephitmp.980, prephitmp.980,
	mov	sl, lr, asl #1	@ tmp674, <variable>.apc_idc,
	and	lr, sl, #31	@ tmp676, tmp674,
	orr	ip, ip, lr, asl r9	@, tmp1.817, tmp1.817, tmp676,
	b	.L90	@
.L191:
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L92	@,
	ldrb	r1, [r3, #-14]	@ zero_extendqisi2	@ D.31426, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.975, i.989,
	ldrb	sl, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.31426,
	mov	lr, r0, asl #2	@, prephitmp.975,
	moveq	r9, #4	@,
	movne	r9, #0	@,
	str	r9, [fp, #-60]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	r9, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	str	lr, [fp, #-48]	@, %sfp
	moveq	sl, #8	@ iftmp.444,
	add	r1, r9, r1, asl #1	@, tmp686,, D.31426,
	ldr	r9, [fp, #-52]	@, %sfp
	movne	sl, #0	@ iftmp.444,
	add	lr, r9, r1, asl #2	@, tmp690,, tmp686,
	ldr	r9, [fp, #-60]	@, %sfp
	ldr	r1, [lr, #44]	@ tmp693, g_ListStructField
	orr	sl, r9, sl	@ tmp683,, iftmp.444
	and	lr, r1, #3	@ tmp692, tmp693,
	ldr	r1, [fp, #-48]	@, %sfp
	orr	r9, sl, lr	@ tmp694, tmp683, tmp692
	orr	r6, r6, r9, asl r1	@, tmp.814, tmp.814, tmp694,
.L97:
	ldr	sl, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.980, i.989,
	add	r9, r1, r1, asl #2	@, tmp720, prephitmp.980, prephitmp.980,
	mov	lr, sl, asl #1	@ tmp714, <variable>.apc_idc,
	and	sl, lr, #30	@ tmp716, tmp714,
	orr	lr, sl, #1	@ tmp717, tmp716,
	orr	ip, ip, lr, asl r9	@, tmp1.817, tmp1.817, tmp717,
	b	.L90	@
.L80:
	and	r0, r2, #7	@ prephitmp.975, i.989,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.975,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.top_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #-16]	@ zero_extendqisi2	@, <variable>.top_structure
	moveq	lr, #8	@ iftmp.442,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.442,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.443,
	movne	sl, #0	@ iftmp.443,
	orr	sl, sl, lr	@ tmp659, iftmp.443, iftmp.442
	ldr	lr, [r9, #44]	@ tmp670, g_ListStructField
	and	r1, lr, #3	@ tmp669, tmp670,
	orr	lr, sl, r1	@ tmp671, tmp659, tmp669
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.814, tmp.814, tmp671,
	b	.L85	@
.L92:
	and	r0, r2, #7	@ prephitmp.975, i.989,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldrb	lr, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	mov	r9, r0, asl #2	@, prephitmp.975,
	str	r9, [fp, #-48]	@, %sfp
	ldr	sl, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.btm_is_long_term,
	add	r9, sl, r1, asl #1	@,,, <variable>.frame_structure,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #-14]	@ zero_extendqisi2	@, <variable>.btm_structure
	moveq	lr, #8	@ iftmp.446,
	ldr	r1, [fp, #-60]	@, %sfp
	movne	lr, #0	@ iftmp.446,
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-64]	@, %sfp
	add	sl, r9, r1, asl #2	@,,,,
	ldr	r1, [fp, #-64]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-60]	@, %sfp
	cmp	r1, #1	@,
	moveq	sl, #4	@ iftmp.447,
	movne	sl, #0	@ iftmp.447,
	orr	sl, sl, lr	@ tmp699, iftmp.447, iftmp.446
	ldr	lr, [r9, #44]	@ tmp710, g_ListStructField
	and	r1, lr, #3	@ tmp709, tmp710,
	orr	lr, sl, r1	@ tmp711, tmp699, tmp709
	ldr	sl, [fp, #-48]	@, %sfp
	orr	r6, r6, lr, asl sl	@, tmp.814, tmp.814, tmp711,
	b	.L97	@
.L192:
	ldr	r9, [fp, #-56]	@ D.31084, %sfp
	tst	r1, #7	@ temp.932,
	strne	r6, [r9, r8, asl #2]	@ tmp.814,* D.31084
	strne	ip, [r9, r7, asl #2]	@ tmp1.817,* D.31084
	b	.L45	@
.L182:
	tst	r1, #7	@ temp.873,
	ldr	r9, [fp, #-64]	@ D.31084, %sfp
	ldr	r5, [fp, #-56]	@ pSlcPara, %sfp
	ldrne	sl, [fp, #-60]	@, %sfp
	strne	r6, [r9, sl, asl #2]	@ tmp.811,* D.31084
	ldrne	r0, [fp, #-48]	@, %sfp
	strne	ip, [r9, r0, asl #2]	@ tmp1.815,* D.31084
	b	.L45	@
.L173:
	ldr	r7, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1041,
	add	r1, r4, r7, asl #2	@, tmp443, pParam, <variable>.pmv_address_idc,
	ldr	lr, [r1, #820]	@ tmp445, <variable>.PmvPhyAddr
	bic	r2, lr, #15	@ prephitmp.673, tmp445,
	b	.L26	@
.L184:
	ldr	r2, [r5, #40]	@ temp.1038, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.808,
	cmp	r3, r2	@ i.808, temp.1038
	and	r0, r2, r3	@ tmp814, temp.1038,
	bhi	.L161	@,
	cmp	r0, #0	@ tmp814,
	beq	.L114	@,
	cmp	r1, r2	@ i.808, temp.1038
	mov	r3, r1	@ i.808, tmp775
	bhi	.L161	@,
.L114:
	add	r3, r3, #2	@ i.808, i.808,
	cmp	r3, r2	@ i.808, temp.1038
	bls	.L114	@,
.L161:
	mov	r3, #1	@ i.822,
	cmp	r3, r2	@ i.822, temp.1038
	and	r1, r2, r3	@ tmp811, temp.1038,
	bhi	.L162	@,
	cmp	r1, #0	@ tmp811,
	beq	.L115	@,
	mov	r3, #2	@ i.822,
	cmp	r3, r2	@ i.822, temp.1038
	bhi	.L162	@,
.L115:
	add	r3, r3, #2	@ i.822, i.822,
	cmp	r3, r2	@ i.822, temp.1038
	bls	.L115	@,
.L162:
	add	r9, r9, #384	@ ivtmp.724, D.31084,
	mov	r2, #0	@ i,
.L116:
	ldr	lr, [r4, #472]	@ tmp777, <variable>.wp_weight_l1_y
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r4, #1240]	@ zero_extendqisi2	@ tmp780, <variable>.wp_offset_l1_y
	ldr	ip, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r3, lr, asl #23	@ tmp776, tmp777,
	mov	r0, r1, asl #12	@ tmp782, tmp780,
	and	r1, ip, #7	@ tmp784, <variable>.luma_log2_weight_denom,
	mov	lr, r3, lsr #23	@ tmp776, tmp776,
	orr	ip, r0, lr, asl #3	@, tmp783, tmp782, tmp776,
	orr	r0, ip, r1	@ tmp.1032, tmp783, tmp784
	str	r0, [r9, #0]	@ tmp.1032,* ivtmp.724
	ldr	r3, [r4, #600]	@ tmp787, <variable>.wp_weight_l1_u
	ldrb	lr, [r4, #1368]	@ zero_extendqisi2	@ tmp790, <variable>.wp_offset_l1_u
	ldr	r1, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	ip, r3, asl #23	@ tmp786, tmp787,
	mov	r0, lr, asl #12	@ tmp792, tmp790,
	and	r1, r1, #7	@ tmp794, <variable>.chroma_log2_weight_denom,
	mov	lr, ip, lsr #23	@ tmp786, tmp786,
	orr	r3, r0, lr, asl #3	@, tmp793, tmp792, tmp786,
	orr	ip, r3, r1	@ tmp1.1037, tmp793, tmp794
	str	ip, [r9, #256]	@ tmp1.1037,
	ldr	lr, [r4, #728]	@ tmp800, <variable>.wp_weight_l1_v
	ldrb	r1, [r4, #1496]	@ zero_extendqisi2	@ tmp796, <variable>.wp_offset_l1_v
	add	r4, r4, #4	@ ivtmp.746, ivtmp.746,
	mov	r0, lr, asl #23	@ tmp799, tmp800,
	mov	r3, r0, lsr #23	@ tmp799, tmp799,
	orr	ip, r3, r1, asl #9	@, D.31548, tmp799, tmp796,
	str	ip, [r9, #512]	@ D.31548,
	ldr	lr, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	add	r9, r9, #4	@ ivtmp.724, ivtmp.724,
	cmp	lr, r2	@ <variable>.num_ref_idx_l1_active_minus1, i
	bcs	.L116	@,
	b	.L34	@
.L175:
	ldr	r2, [r4, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	movw	ip, #1620	@ tmp386,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mul	lr, r1, r2	@ tmp383, <variable>.pic_width_in_mb, <variable>.frame_height_in_mb
	cmp	lr, ip	@ tmp383, tmp386
	mvnhi	r0, #0	@ D.31088,
	bls	.L24	@,
	b	.L18	@
.L183:
	ldr	r1, [r5, #40]	@ temp.1011, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.1021,
	cmp	r1, r3	@ temp.1011,
	and	r0, r1, r3	@ tmp820, temp.1011,
	bcc	.L111	@,
	cmp	r0, #0	@ tmp820,
	beq	.L112	@,
	cmp	r1, r2	@ temp.1011, i.1021
	mov	r3, r2	@ i.1021, tmp770
	bcc	.L111	@,
.L112:
	add	r3, r3, #2	@ i.1021, i.1021,
	cmp	r1, r3	@ temp.1011, i.1021
	bcs	.L112	@,
	b	.L111	@
.L177:
	ldr	r0, [r4, #916]	@ D.31219, <variable>.mbtodec
	movw	r2, #:lower16:92928	@ tmp472,
	movt	r2, #:upper16:92928	@ tmp472,
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ D.31215, <variable>.MbaffFrameFlag
	cmp	r0, r2	@ D.31219, tmp472
	addgt	r1, r1, #1	@, D.31215,
	suble	r0, r0, #1	@, D.31219,
	movwgt	r0, #:lower16:92927	@,
	addle	r1, r1, #1	@, D.31215,
	movtgt	r0, #:upper16:92927	@,
	bl	__aeabi_idiv	@
	b	.L32	@
.L174:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #484	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31088,
	b	.L18	@
	.fnend
	.size	H264HAL_V200R003MPW_SetSliceMsg, .-H264HAL_V200R003MPW_SetSliceMsg
	.align	2
	.global	H264HAL_V200R003MPW_SetPicMsg
	.type	H264HAL_V200R003MPW_SetPicMsg, %function
H264HAL_V200R003MPW_SetPicMsg:
	.fnstart
.LFB1352:
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
	subs	r2, r0, #0	@ D.30917,
	beq	.L232	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp220,
	ldr	lr, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp220,
	ldr	r0, [r4, #36]	@ D.30927, <variable>.transform_8x8_mode_flag
	bic	r6, r6, #15	@ tmp.1216, FstSlcMsgSlotPhy,
	ldr	r7, [r4, #40]	@ D.30930, <variable>.entropy_coding_mode_flag
	add	r1, lr, ip, asl #1	@, tmp223, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	ldr	ip, [r4, #44]	@ D.30933, <variable>.constrained_intra_pred_flag
	add	lr, r3, r1, asl #2	@, tmp227, tmp220, tmp223,
	mov	r0, r0, asl #28	@ tmp209, D.30927,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	orr	r0, r0, r7, asl #27	@, tmp210, tmp209, D.30930,
	ldr	r7, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	orr	r0, r0, ip, asl #26	@, tmp212, tmp210, D.30933,
	ldr	ip, [lr, #76]	@ tmp230, g_StructTrans
	sub	r1, r1, #1	@ tmp213, <variable>.pic_width_in_mb,
	ldr	lr, [r4, #16]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	sub	r7, r7, #1	@ tmp216, <variable>.pic_height_in_mb,
	orr	r0, r0, r1	@ tmp215, tmp212, tmp213
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	lr, #0	@ <variable>.nal_ref_idc,
	orr	r3, r0, r7, asl #16	@, tmp219, tmp215, tmp216,
	orr	r0, r3, ip, asl #14	@, tmp231, tmp219, tmp230,
	movne	lr, #-2147483648	@, iftmp.414,
	cmp	r1, #1	@ <variable>.chroma_format_idc,
	orr	r3, r0, lr	@ tmp232, tmp231, iftmp.414
	moveq	r1, #33554432	@ iftmp.415,
	movne	r1, #0	@ iftmp.415,
	orr	lr, r3, r1	@ tmp.417, tmp232, iftmp.415
	str	lr, [r2, #0]	@ tmp.417,* D.30917
	ldr	r0, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	bic	r3, r0, #15	@ tmp.1199, <variable>.CurrPicImg2DAddr,
	str	r3, [r2, #4]	@ tmp.1199,
	ldr	lr, [r4, #48]	@ D.30959, <variable>.ThisPoc
	str	lr, [r2, #8]	@ D.30959,
	ldr	r0, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r0, #0	@ <variable>.mb_adaptive_frame_field_flag,
	streq	r0, [r2, #12]	@ <variable>.mb_adaptive_frame_field_flag,
	ldrne	r0, [r4, #52]	@ D.30963, <variable>.TopPoc
	strne	r0, [r2, #12]	@ D.30963,
	ldrne	r0, [r4, #56]	@ D.30965, <variable>.BottomPoc
	str	r0, [r2, #16]	@ <variable>.mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	lr, r3, #15	@ tmp.1206, <variable>.SedTopAddr,
	str	lr, [r2, #20]	@ tmp.1206,
	ldr	r0, [r5, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r0, #15	@ tmp.1208, <variable>.PmvTopAddr,
	str	r3, [r2, #24]	@ tmp.1208,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	lr, #2	@ <variable>.pic_structure,
	ldreq	r1, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldrne	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldreq	lr, [r4, #904]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	addeq	r1, r4, r1, asl #2	@, tmp251, pParam, <variable>.CurrPicPmvIdc,
	addne	lr, r4, lr, asl #2	@, tmp244, pParam, <variable>.CurrPicPmvIdc,
	ldreq	r1, [r1, #820]	@ tmp254, <variable>.PmvPhyAddr
	ldrne	lr, [lr, #820]	@ tmp246, <variable>.PmvPhyAddr
	addeq	lr, r1, lr	@ tmp253, tmp254, <variable>.half_pmvblk_offset
	bic	r0, lr, #15	@ tmp, tmp253,
	str	r0, [r2, #28]	@ tmp,
	ldr	r3, [r5, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r3, r3, #15	@ tmp.1214, <variable>.RcnTopAddr,
	str	r3, [r2, #32]	@ tmp.1214,
	str	r6, [r2, #36]	@ tmp.1216,
	ldr	r0, [r4, #1112]	@ i.1205, <variable>.ApcSize
	cmp	r0, #0	@ i.1205,
	addne	ip, r2, #40	@ ivtmp.1195, D.30917,
	movne	r1, r4	@ ivtmp.1194, pParam
	movne	r3, #0	@ i.1219,
	beq	.L207	@,
.L206:
	ldr	r0, [r1, #920]	@ tmp260, <variable>.Apc2Idc
	add	r3, r3, #1	@ i.1219, i.1219,
	add	r1, r1, #4	@ ivtmp.1194, ivtmp.1194,
	add	lr, r0, #76	@ tmp259, tmp260,
	ldr	r0, [r4, lr, asl #2]	@ tmp261, <variable>.ImgPhyAddr
	bic	lr, r0, #15	@ tmp.1218, tmp261,
	str	lr, [ip], #4	@ tmp.1218,
	ldr	r0, [r4, #1112]	@ i.1205, <variable>.ApcSize
	cmp	r0, r3	@ i.1205, i.1219
	bhi	.L206	@,
	cmp	r0, #15	@ i.1205,
	bhi	.L208	@,
.L207:
	ldr	r1, [r4, #920]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r3, r0, #10	@ tmp257, i.1205,
	add	ip, r0, #1	@ i.1205, i.1205,
	rsb	r0, r0, #15	@ tmp283, i.1205,
	add	lr, r1, #76	@ tmp262, <variable>.Apc2Idc,
	add	r3, r2, r3, asl #2	@, ivtmp.1188, D.30917, tmp257,
	cmp	ip, #15	@ i.1205,
	and	r0, r0, #1	@ tmp284, tmp283,
	ldr	r1, [r4, lr, asl #2]	@ tmp264, <variable>.ImgPhyAddr
	bic	r1, r1, #15	@ tmp.1221, tmp264,
	str	r1, [r3], #4	@ tmp.1221,
	bhi	.L208	@,
	cmp	r0, #0	@ tmp284,
	beq	.L205	@,
	ldr	lr, [r4, #920]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	ip, ip, #1	@ i.1205, i.1205,
	cmp	ip, #15	@ i.1205,
	add	r1, lr, #76	@ tmp312, <variable>.Apc2Idc,
	ldr	lr, [r4, r1, asl #2]	@ tmp313, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1221, tmp313,
	str	r1, [r3], #4	@ tmp.1221,
	bhi	.L208	@,
.L205:
	ldr	lr, [r4, #920]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	mov	r1, r3	@ tmp286, ivtmp.1188
	add	ip, ip, #2	@ i.1205, i.1205,
	add	r0, lr, #76	@ tmp290, <variable>.Apc2Idc,
	cmp	ip, #15	@ i.1205,
	ldr	lr, [r4, r0, asl #2]	@ tmp291, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1221, tmp291,
	str	r0, [r1], #4	@ tmp.1221,
	ldr	lr, [r4, #920]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r0, lr, #76	@ tmp296, <variable>.Apc2Idc,
	ldr	lr, [r4, r0, asl #2]	@ tmp297, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1221, tmp297,
	str	r0, [r3, #4]	@ tmp.1221,
	add	r3, r1, #4	@ ivtmp.1188, tmp286,
	bls	.L205	@,
.L208:
	ldr	ip, [r5, #1076]	@ <variable>.H264MnAddr, <variable>.H264MnAddr
	bic	r3, ip, #15	@ tmp.1224, <variable>.H264MnAddr,
	str	r3, [r2, #104]	@ tmp.1224,
	ldr	ip, [r4, #1112]	@ i, <variable>.ApcSize
	cmp	ip, #0	@ i,
	addne	r1, r2, #108	@ ivtmp.1180, D.30917,
	movne	r3, r4	@ ivtmp.1179, pParam
	movne	r0, #0	@ i.1201,
	beq	.L212	@,
.L211:
	ldr	lr, [r3, #984]	@ tmp.1226, <variable>.Apc2Poc
	add	r0, r0, #1	@ i.1201, i.1201,
	str	lr, [r1, #0]	@ tmp.1226,* ivtmp.1180
	ldr	ip, [r3, #1048]	@ tmp.1228, <variable>.Apc2Poc
	add	r3, r3, #4	@ ivtmp.1179, ivtmp.1179,
	str	ip, [r1, #4]	@ tmp.1228,
	add	r1, r1, #8	@ ivtmp.1180, ivtmp.1180,
	ldr	ip, [r4, #1112]	@ i, <variable>.ApcSize
	cmp	ip, r0	@ i, i.1201
	bhi	.L211	@,
	cmp	ip, #15	@ i,
	bhi	.L213	@,
.L212:
	add	r3, ip, #14	@ tmp268, i,
	add	r1, r2, ip, asl #3	@, tmp267, D.30917, i,
	add	r7, ip, #1	@ i, i,
	add	r0, r1, #108	@ ivtmp.1171, tmp267,
	cmp	r7, #15	@ i,
	add	r1, r2, r3, asl #3	@, ivtmp.1174, D.30917, tmp268,
	rsb	lr, ip, #15	@ tmp278, i,
	mov	r3, #0	@ tmp275,
	and	ip, lr, #1	@ tmp279, tmp278,
	str	r3, [r0], #8	@ tmp275,
	str	r3, [r1], #8	@ tmp275,
	bhi	.L213	@,
	cmp	ip, #0	@ tmp279,
	beq	.L210	@,
	add	r7, r7, #1	@ i, i,
	str	r3, [r0], #8	@ tmp275,
	cmp	r7, #15	@ i,
	str	r3, [r1], #8	@ tmp275,
	bhi	.L213	@,
.L210:
	add	r7, r7, #2	@ i, i,
	mov	r6, r0	@ tmp281, ivtmp.1171
	cmp	r7, #15	@ i,
	mov	ip, r1	@ tmp282, ivtmp.1174
	str	r3, [r6], #8	@ tmp275,
	str	r3, [ip], #8	@ tmp275,
	str	r3, [r0, #8]	@ tmp275,
	add	r0, r6, #8	@ ivtmp.1171, tmp281,
	str	r3, [r1, #8]	@ tmp275,
	add	r1, ip, #8	@ ivtmp.1174, tmp282,
	bls	.L210	@,
.L213:
	ldr	r1, [r5, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	add	ip, r2, #224	@ D.32594, ivtmp.1167,
	mov	r3, r2	@ ivtmp.1167, D.30917
	bic	r0, r1, #15	@ tmp.1231, <variable>.DblkTopAddr,
	str	r0, [r2, #236]	@ tmp.1231,
.L214:
	ldr	r0, [r4, #60]	@ tmp273, <variable>.Qmatrix
	add	r1, r4, #4	@ tmp276, ivtmp.1165,
	add	r2, r3, #4	@ tmp277, ivtmp.1167,
	add	r4, r1, #4	@ ivtmp.1165, tmp276,
	str	r0, [r3, #256]	@ tmp273,
	add	r3, r2, #4	@ ivtmp.1167, tmp277,
	ldr	lr, [r1, #60]	@ tmp309, <variable>.Qmatrix
	cmp	r3, ip	@ ivtmp.1167, D.32594
	str	lr, [r2, #256]	@ tmp309,
	bne	.L214	@,
	mov	r0, #0	@ D.30921,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L232:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #335	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30921,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R003MPW_SetPicMsg, .-H264HAL_V200R003MPW_SetPicMsg
	.align	2
	.global	H264HAL_V200R003MPW_CutSliceChain
	.type	H264HAL_V200R003MPW_CutSliceChain, %function
H264HAL_V200R003MPW_CutSliceChain:
	.fnstart
.LFB1350:
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
	subs	r3, r0, #0	@ D.30872,
	beq	.L237	@,
	mov	r0, #0	@ tmp140,
	str	r0, [r3, #252]	@ tmp140,
	ldmfd	sp, {fp, sp, pc}	@
.L237:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #302	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30876,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R003MPW_CutSliceChain, .-H264HAL_V200R003MPW_CutSliceChain
	.align	2
	.global	H264HAL_V200R003MPW_StartDec
	.type	H264HAL_V200R003MPW_StartDec, %function
H264HAL_V200R003MPW_StartDec:
	.fnstart
.LFB1354:
	@ args = 0, pretend = 0, frame = 24
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
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	mov	r6, r0	@ pParam, pParam
	bls	.L289	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
.L241:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L289:
	ldr	r3, [r0, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #352	@ <variable>.pic_width_in_mb,
	bhi	.L297	@,
	ldr	r1, [r0, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r1, #264	@ <variable>.pic_height_in_mb,
	bhi	.L298	@,
	cmp	r0, #0	@ pParam,
	beq	.L299	@,
	ldr	r0, [r0, #1120]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r0, #0	@ <variable>.pFirstSlice,
	beq	.L300	@,
	movw	r7, #1148	@ tmp262,
	movw	r5, #:lower16:g_HwMem	@ tmp636,
	mul	r7, r7, r4	@ tmp261, tmp262, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp636,
	add	sl, r5, r7	@ pHwMem, tmp636, tmp261
	ldr	r0, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L301	@,
.L246:
	ldrsb	r9, [r6, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r9, #1	@ <variable>.NewPicFlag,
	beq	.L302	@,
.L248:
	movw	lr, #:lower16:.LANCHOR1	@ tmp271,
	movt	lr, #:upper16:.LANCHOR1	@ tmp271,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	ldr	ip, [lr, #0]	@ StartCnt, StartCnt
	movt	r1, #:upper16:.LC10	@,
	movw	r9, #:lower16:92928	@ tmp276,
	movt	r9, #:upper16:92928	@ tmp276,
	add	r2, ip, #1	@ StartCnt.460, StartCnt,
	str	r2, [lr, #0]	@ StartCnt.460, StartCnt
	bl	dprint_vfmw	@
	ldr	r2, [r6, #916]	@ D.31626, <variable>.mbtodec
	mov	r3, #0	@ tmp275,
	movw	r7, #1148	@ tmp290,
	cmp	r2, r9	@ D.31626, tmp276
	sub	r9, fp, #44	@ D32.461,,
	suble	r2, r2, #1	@ iftmp.462, D.31626,
	str	r3, [r9, #-4]!	@ tmp275, D32
	bicle	r3, r2, #-16777216	@ iftmp.462, iftmp.462,
	ldr	r0, [r9, #0]	@ tmp278,* D32.461
	movwgt	r3, #:lower16:92927	@ iftmp.462,
	bicle	r3, r3, #15728640	@ iftmp.462, iftmp.462,
	movtgt	r3, #:upper16:92927	@ iftmp.462,
	mul	r7, r7, r4	@ tmp289, tmp290, VdhId
	bfi	r0, r3, #0, #20	@ tmp278, iftmp.462,,
	orr	r1, r0, #1073741824	@ tmp281, tmp278,
	mov	r0, #3	@,
	bic	ip, r1, #-2147483648	@ tmp282, tmp281,
	movw	r1, #:lower16:.LC11	@,
	bic	r2, ip, #4194304	@ tmp283, tmp282,
	movt	r1, #:upper16:.LC11	@,
	bfc	r2, #23, #1	@ tmp283,,
	orr	ip, r2, #16777216	@ tmp286, tmp283,
	bfc	ip, #25, #1	@ tmp286,,
	str	ip, [r9, #0]	@ tmp286,* D32.461
	str	ip, [r6, #1132]	@ D32, <variable>.basic_cfg0
	movw	r9, #:lower16:16368	@ tmp300,
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r9, #:upper16:16368	@ tmp300,
	str	ip, [r3, #8]	@ D32,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #908]	@ <variable>.imgstride, <variable>.imgstride
	ldrb	r1, [r6, #2]	@ zero_extendqisi2	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	mov	ip, #1	@ tmp306,
	mov	r0, r2, lsr #2	@ tmp299, <variable>.imgstride,
	ldr	r2, [r6, #1380]	@ <variable>.Compress_en, <variable>.Compress_en
	and	r3, r0, r9	@ tmp300, tmp299, tmp300
	mov	r0, #3	@,
	bfi	r3, r1, #14, #1	@ tmp300, <variable>.NewPicFlag,,
	movw	r1, #:lower16:.LC12	@,
	bic	r9, r3, #32768	@ tmp305, tmp300,
	movt	r1, #:upper16:.LC12	@,
	bfi	r9, ip, #16, #12	@ tmp305, tmp306,,
	bic	r3, r9, #805306368	@ tmp307, tmp305,
	orr	ip, r3, #536870912	@ tmp311, tmp307,
	bfi	ip, r2, #30, #1	@ tmp311, <variable>.Compress_en,,
	orr	r9, ip, #-2147483648	@ tmp312, tmp311,
	str	r9, [r6, #1136]	@ tmp312, <variable>.basic_cfg1
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [fp, #-48]	@ tmp312,
	str	r9, [r2, #12]	@ tmp312,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	bic	ip, r3, #15	@ tmp325, <variable>.MsgSlotAddr,
	str	ip, [r6, #1140]	@ tmp325, <variable>.avm_addr
	ldr	r9, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC13	@,
	str	ip, [fp, #-48]	@ tmp325, <variable>.av_msg_addr
	str	ip, [r9, #16]	@ tmp325,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sl, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	bic	r3, r2, #15	@ tmp337, <variable>.MsgSlotAddr,
	str	r3, [r6, #1144]	@ tmp337, <variable>.vam_addr
	ldr	ip, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC14	@,
	str	r3, [fp, #-48]	@ tmp337, <variable>.va_msg_addr
	str	r3, [ip, #20]	@ tmp337,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r9, [r6, #912]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r2, r9, #15	@ tmp349, <variable>.stream_base_addr,
	str	r2, [r6, #1148]	@ tmp349, <variable>.stream_base_addr_reg_tmp
	ldr	ip, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC15	@,
	str	r2, [fp, #-48]	@ tmp349, <variable>.stream_base_addr
	str	r2, [ip, #24]	@ tmp349,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	r1, #1148	@ tmp363,
	mul	r7, r1, r4	@ tmp362, tmp363, VdhId
	ldr	r0, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	cmp	r0, #120	@ <variable>.pic_width_in_mb,
	movwls	r0, #:lower16:96000	@ tmp360,
	movhi	r0, #30464	@ tmp359,
	movtls	r0, #:upper16:96000	@ tmp360,
	str	r0, [fp, #-48]	@ tmp360, D32
	str	r0, [r6, #1152]	@ prephitmp.1285, <variable>.emar_id
	mov	r0, #3	@,
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r9, [fp, #-48]	@ D32.1349, D32
	str	r9, [r3, #48]	@ D32.1349,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	r2, #:lower16:3148803	@ tmp368,
	movt	r2, #:upper16:3148803	@ tmp368,
	str	r2, [r6, #1156]	@ tmp368, <variable>.sed_to
	str	r2, [r6, #1160]	@ tmp368, <variable>.itrans_to
	mov	r0, #3	@,
	str	r2, [r6, #1164]	@ tmp368, <variable>.pmv_to
	movw	r1, #:lower16:.LC17	@,
	str	r2, [r6, #1168]	@ tmp368, <variable>.prc_to
	movt	r1, #:upper16:.LC17	@,
	str	r2, [r6, #1172]	@ tmp368, <variable>.rcn_to
	str	r2, [r6, #1176]	@ tmp368, <variable>.dblk_to
	str	r2, [r6, #1180]	@ tmp368, <variable>.ppfd_to
	ldr	ip, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [fp, #-48]	@ tmp368, D32
	str	r2, [ip, #60]	@ tmp368,
	ldr	r9, [fp, #-48]	@ D32.1368, D32
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r3, #64]	@ D32.1368,
	ldr	ip, [fp, #-48]	@ D32.1371, D32
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #68]	@ D32.1371,
	ldr	r9, [fp, #-48]	@ D32.1374, D32
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r3, #72]	@ D32.1374,
	ldr	ip, [fp, #-48]	@ D32.1377, D32
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #76]	@ D32.1377,
	ldr	r9, [fp, #-48]	@ D32.1380, D32
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r3, #80]	@ D32.1380,
	ldr	ip, [fp, #-48]	@ D32.1383, D32
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #84]	@ D32.1383,
	ldr	r9, [r6, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r3, r9, #76	@ tmp413, <variable>.CurrPicImgIdc,
	ldr	r2, [r6, r3, asl #2]	@ tmp415, <variable>.ImgPhyAddr
	bic	ip, r2, #15	@ tmp416, tmp415,
	str	ip, [r6, #1184]	@ tmp416, <variable>.ystaddr_1d
	ldr	r9, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [fp, #-48]	@ tmp416, <variable>.ystaddr_1d
	str	ip, [r9, #96]	@ tmp416,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #908]	@ <variable>.imgstride, <variable>.imgstride
	ldr	r9, [r6, #24]	@ height_in_mb, <variable>.frame_height_in_mb
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	r3, [r6, #1188]	@ <variable>.imgstride, <variable>.ystride_1d
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ <variable>.imgstride, <variable>.ystride_1d
	str	r3, [r2, #100]	@ <variable>.imgstride,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r3, #2047	@ tmp439,
	mov	r2, r0, asl #4	@ D.31705, <variable>.pic_width_in_mb,
	sub	r1, r2, #1	@ tmp438, D.31705,
	cmp	r1, r3	@ tmp438, tmp439
	bhi	.L303	@,
.L254:
	mov	r8, #16	@ level,
.L256:
	ldr	r1, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	add	r0, r9, #1	@ tmp456, height_in_mb,
	ldr	ip, [r6, #908]	@ <variable>.imgstride, <variable>.imgstride
	movw	r7, #1148	@ tmp465,
	mov	r3, r0, lsr #1	@ tmp457, tmp456,
	mov	r0, #3	@,
	mov	lr, r1, asl #4	@ tmp450, <variable>.frame_height_in_mb,
	movw	r1, #:lower16:.LC19	@,
	add	r2, lr, #31	@ tmp452, tmp450,
	movt	r1, #:upper16:.LC19	@,
	mul	lr, ip, r3	@ tmp458, <variable>.imgstride, tmp457
	mov	r9, r2, lsr #5	@ tmp453, tmp452,
	mul	r7, r7, r4	@ tmp464, tmp465, VdhId
	mov	r2, r9, asl #4	@ tmp454, tmp453,
	mov	r4, #0	@ tmp480,
	mvn	r9, #0	@ tmp571,
	mla	ip, r8, r2, lr	@ tmp460, level, tmp454, tmp458
	mov	r3, ip, asl #1	@ tmp461, tmp460,
	str	r3, [r6, #1192]	@ tmp461, <variable>.uvoffset_1d
	ldr	lr, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ tmp461, <variable>.uvoffset_1d
	str	r3, [lr, #104]	@ tmp461,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	mov	r2, ip, asl #4	@ tmp470, <variable>.frame_height_in_mb,
	add	r3, r2, #31	@ tmp472, tmp470,
	bic	ip, r3, #31	@ tmp474, tmp472,
	mul	r8, r8, ip	@ D.31736, level, tmp474
	str	r8, [r6, #1196]	@ D.31736, <variable>.prcnum_1d_cnt
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r2, #108]	@ D.31736,
	ldr	r3, [sl, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	ip, r3, #15	@ tmp483, <variable>.PpfdBufAddr,
	str	ip, [r6, #1208]	@ tmp483, <variable>.ppfd_buf_addr
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [fp, #-48]	@ tmp483, <variable>.ppfd_buf_addr
	str	ip, [r2, #128]	@ tmp483,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sl, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r4, [fp, #-48]	@ tmp480, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	strh	r3, [fp, #-48]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	ldr	ip, [fp, #-48]	@ D32, D32
	str	ip, [r6, #1212]	@ D32, <variable>.ppfd_buf_len
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #132]	@ D32,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1256]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r1, [r6, #1252]	@ <variable>.RefPicType, <variable>.RefPicType
	mov	r0, #3	@,
	ldr	ip, [r6, #1260]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r3, r0	@ tmp505, <variable>.RefPicType,
	ldr	lr, [r6, #1264]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r3, r1, r0	@ D32.1459, <variable>.RefPicType,
	and	r1, ip, r0	@ tmp508, <variable>.RefPicType,
	ldr	ip, [r6, #1268]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp511, <variable>.RefPicType,
	orr	r3, r3, r2, asl #2	@, temp.1464, D32.1459, tmp505,
	ldr	r2, [r6, #1272]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp514, <variable>.RefPicType,
	orr	r3, r3, r1, asl #4	@, temp.1470, temp.1464, tmp508,
	ldr	r1, [r6, #1276]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp517, <variable>.RefPicType,
	orr	r3, r3, lr, asl #6	@, temp.1476, temp.1470, tmp511,
	ldr	lr, [r6, #1280]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r1, r1, r0	@ tmp520, <variable>.RefPicType,
	orr	r3, r3, ip, asl #8	@, temp.1482, temp.1476, tmp514,
	ldr	ip, [r6, #1284]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp523, <variable>.RefPicType,
	orr	r3, r3, r2, asl #10	@, temp.1488, temp.1482, tmp517,
	ldr	r2, [r6, #1288]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp526, <variable>.RefPicType,
	orr	r3, r3, r1, asl #12	@, temp.1494, temp.1488, tmp520,
	ldr	r1, [r6, #1292]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp529, <variable>.RefPicType,
	orr	r3, r3, lr, asl #14	@, temp.1500, temp.1494, tmp523,
	ldr	lr, [r6, #1296]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r1, r1, r0	@ tmp532, <variable>.RefPicType,
	orr	r3, r3, ip, asl #16	@, temp.1506, temp.1500, tmp526,
	ldr	ip, [r6, #1300]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, lr, r0	@ tmp535, <variable>.RefPicType,
	orr	r3, r3, r2, asl #18	@, temp.1512, temp.1506, tmp529,
	ldr	r2, [r6, #1304]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, ip, r0	@ tmp538, <variable>.RefPicType,
	orr	r3, r3, r1, asl #20	@, temp.1518, temp.1512, tmp532,
	ldr	r1, [r6, #1308]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, r0	@ tmp541, <variable>.RefPicType,
	orr	r3, r3, lr, asl #22	@, temp.1524, temp.1518, tmp535,
	orr	lr, r3, ip, asl #24	@, temp.1530, temp.1524, tmp538,
	and	r1, r1, r0	@ tmp544, <variable>.RefPicType,
	ldr	ip, [r6, #1312]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, lr, r2, asl #26	@, temp.1536, temp.1530, tmp541,
	ldr	lr, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	orr	r2, r3, r1, asl #28	@, temp.1543, temp.1536, tmp544,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	orr	r3, r2, ip, asl #30	@, D.31758, temp.1543, <variable>.RefPicType,
	str	r3, [fp, #-48]	@ D.31758, D32
	str	r3, [lr, #148]	@ D.31758,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [fp, #-48]	@ tmp480, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	r4, [r2, #152]	@ tmp480,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r7, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r6	@, pParam
	mov	r1, sl	@, pHwMem
	str	r9, [r3, #32]	@ tmp571,
	ldr	r2, [sl, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [sl, #48]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R003MPW_SetPicMsg	@
	ldr	r7, [r6, #1120]	@ pSlicePara, <variable>.pFirstSlice
	cmp	r7, r4	@ pSlicePara,
	beq	.L258	@,
	ldr	ip, [r6, #1116]	@ D.31781, <variable>.SliceParaNum
	cmp	ip, r4	@ D.31781,
	ble	.L260	@,
	str	sl, [fp, #-64]	@ pHwMem, %sfp
	mov	r5, r4	@ count.1438, tmp480
	str	sl, [fp, #-56]	@ pHwMem, %sfp
	mov	r8, r4	@ i, count.1438
	str	r4, [fp, #-60]	@ tmp480, %sfp
	mov	sl, r6	@ pParam, pParam
	b	.L281	@
.L306:
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r3, [r7, #48]	@ D.31774, <variable>.first_mb_in_slice
	ldr	r4, [r1, #48]	@, <variable>.MsgSlotAddr
	cmp	r3, #0	@ D.31774,
	ldr	lr, [r1, #44]	@ prev_slcmsg_phy, <variable>.MsgSlotAddr
	str	r4, [fp, #-68]	@, %sfp
	beq	.L262	@,
	str	r8, [r7, #16]	@ i, <variable>.bitsoffset
	sub	ip, r3, #1	@ last_mb_in_slice, D.31774,
	str	r8, [r7, #20]	@ i, <variable>.bitsoffset
	mov	r6, r8	@ first_mb_in_slice, i
	ldr	r9, [r1, #48]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
	ldr	r4, [r7, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	ldr	r2, [sl, #1116]	@ temp.1457, <variable>.SliceParaNum
.L263:
	sub	r3, r2, #1	@ tmp605, temp.1457,
	mov	r0, sl	@, pParam
	cmp	r3, r8	@ tmp605, i
	mov	r2, r7	@, pSlicePara
	moveq	r1, #0	@,
	streq	r1, [r7, #4056]	@, <variable>.pNextSlice
	ldr	r3, [fp, #-68]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	str	lr, [sp, #0]	@ prev_slcmsg_phy,
	str	r6, [sp, #8]	@ first_mb_in_slice,
	str	ip, [sp, #12]	@ last_mb_in_slice,
	str	r9, [sp, #4]	@ next_slcmsg_phy,
	bl	H264HAL_V200R003MPW_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L304	@,
	cmp	r9, #0	@ next_slcmsg_phy,
	beq	.L305	@,
	ldr	ip, [sl, #1116]	@ D.31781, <variable>.SliceParaNum
	add	r8, r8, #1	@ i, i,
	ldr	lr, [fp, #-64]	@, %sfp
	cmp	ip, r8	@ D.31781, i
	add	r6, lr, #4	@,,
	mov	r3, ip	@ temp.1432, D.31781
	str	r6, [fp, #-64]	@, %sfp
	ble	.L294	@,
	str	r4, [fp, #-60]	@ tmp_pSlicePara.1437, %sfp
.L281:
	cmp	r8, #0	@ i,
	beq	.L306	@,
	ldr	r1, [fp, #-56]	@, %sfp
	cmp	ip, r5	@ D.31781, count.1438
	mov	r3, r5	@ j, count.1438
	add	lr, r1, r5, asl #2	@, tmp591,, count.1438,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r7, [lr, #48]	@, <variable>.MsgSlotAddr
	ldr	r6, [r1, #48]	@ temp.1443, <variable>.first_mb_in_slice
	str	r7, [fp, #-68]	@, %sfp
	ldr	r4, [r1, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	ble	.L268	@,
	add	r5, r5, #1	@ count.1438, count.1438,
	b	.L274	@
.L308:
	ldr	r2, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r6, r2	@ temp.1443, <variable>.first_mb_in_slice
	bcc	.L307	@,
	add	r3, r3, #1	@ j, j,
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	cmp	r3, ip	@ j, D.31781
	add	r2, r5, #1	@ count.1538, count.1438,
	bge	.L268	@,
.L309:
	mov	r5, r2	@ count.1438, count.1538
.L274:
	cmp	r4, #0	@ tmp_pSlicePara.1437,
	bne	.L308	@,
	sub	r7, ip, #1	@ tmp594, D.31781,
	movw	r1, #:lower16:.LC25	@,
	cmp	r7, r3	@ tmp594, j
	movw	r2, #1327	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC25	@,
	beq	.L273	@,
	bl	dprint_vfmw	@
	ldr	ip, [sl, #1116]	@ D.31781, <variable>.SliceParaNum
.L273:
	sub	r3, ip, #1	@ j, D.31781,
	add	r2, r5, #1	@ count.1538, count.1438,
	add	r3, r3, #1	@ j, j,
	cmp	r3, ip	@ j, D.31781
	blt	.L309	@,
.L268:
	mov	r2, ip	@ temp.1457, D.31781
.L271:
	cmp	r3, ip	@ j, D.31781
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r7, [fp, #-60]	@ pSlicePara, %sfp
	ldreq	ip, [sl, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	moveq	r9, #0	@ next_slcmsg_phy,
	ldreq	r3, [sl, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldrne	r1, [fp, #-56]	@, %sfp
	ldrne	ip, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	muleq	ip, ip, r3	@ tmp596, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	addne	r3, r1, r5, asl #2	@, tmp603,, count.1438,
	ldr	lr, [r0, #44]	@ prev_slcmsg_phy, <variable>.MsgSlotAddr
	ldrne	r9, [r3, #48]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
	sub	ip, ip, #1	@ last_mb_in_slice, <variable>.first_mb_in_slice,
	b	.L263	@
.L262:
	add	r5, r5, #1	@ count.1438, count.1438,
	ldr	r4, [r7, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	cmp	ip, r5	@ D.31781, count.1438
	ble	.L264	@,
	ldr	r6, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r6, #0	@ <variable>.first_mb_in_slice,
	bne	.L264	@,
	mvn	r3, r5	@ tmp647, count.1438
	add	r2, r3, ip	@ tmp646, tmp647, D.31781
	tst	r2, #1	@ tmp646,
	bne	.L291	@,
.L288:
	add	r5, r5, #1	@ count.1438, count.1438,
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	cmp	ip, r5	@ D.31781, count.1438
	ble	.L264	@,
	ldr	r9, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r9, #0	@ <variable>.first_mb_in_slice,
	bne	.L264	@,
.L291:
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara.1437, <variable>.pNextSlice
	add	r5, r5, #1	@ count.1438, count.1438,
	ldr	r9, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r9, #0	@ <variable>.first_mb_in_slice,
	beq	.L288	@,
.L264:
	cmp	r5, ip	@ count.1438, D.31781
	beq	.L310	@,
	ldr	r6, [fp, #-56]	@, %sfp
	mov	r2, ip	@ temp.1457, D.31781
	ldr	r1, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	add	r3, r6, r5, asl #2	@, tmp586,, count.1438,
	mov	r6, #0	@ first_mb_in_slice,
	sub	ip, r1, #1	@ last_mb_in_slice, <variable>.first_mb_in_slice,
	ldr	r9, [r3, #48]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
	b	.L263	@
.L307:
	add	r3, r3, #1	@ j, j,
	mov	r2, ip	@ temp.1457, D.31781
	b	.L271	@
.L310:
	ldr	ip, [sl, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mov	r6, #0	@ first_mb_in_slice,
	ldr	r1, [sl, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	r2, r5	@ temp.1457, count.1438
	mov	r9, r6	@ next_slcmsg_phy, first_mb_in_slice
	mul	r0, ip, r1	@ tmp579, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	sub	ip, r0, #1	@ last_mb_in_slice, tmp579,
	b	.L263	@
.L303:
	sub	r0, r2, #2048	@ tmp440, D.31705,
	sub	r1, r0, #1	@ tmp440, tmp440,
	cmp	r1, r3	@ tmp440, tmp439
	movls	r8, #32	@ level,
	bls	.L256	@,
	sub	lr, r2, #4096	@ tmp443, D.31705,
	sub	r7, lr, #1	@ tmp443, tmp443,
	cmp	r7, r3	@ tmp443, tmp439
	movls	r8, #48	@ level,
	bls	.L256	@,
	sub	ip, r2, #6144	@ tmp446, D.31705,
	sub	r2, ip, #1	@ tmp446, tmp446,
	cmp	r2, r3	@ tmp446, tmp439
	movls	r8, #64	@ level,
	bls	.L256	@,
	b	.L254	@
.L304:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #1363	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L305:
	mov	r6, sl	@ pParam, pParam
	ldr	sl, [fp, #-56]	@ pHwMem, %sfp
	ldr	r3, [r6, #1116]	@ temp.1432, <variable>.SliceParaNum
.L280:
	cmp	r3, #0	@ temp.1432,
	ble	.L260	@,
	add	r1, sl, r3, asl #2	@, tmp611, pHwMem, temp.1432,
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R003MPW_CutSliceChain	@
	ldrsb	ip, [r6, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	ip, #1	@ <variable>.NewPicFlag,
	movne	r0, #0	@ D.31592,
	bne	.L241	@,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp615,
	ldr	r0, [r6, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp615,
	add	r2, r0, r1, asl #1	@, tmp618, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	add	ip, r3, r2, asl #2	@, tmp622, tmp615, tmp618,
	movw	r3, #:lower16:.LANCHOR2	@ tmp626,
	movt	r3, #:upper16:.LANCHOR2	@ tmp626,
	ldr	lr, [ip, #76]	@ tmp625, g_StructTrans
	ldr	r2, [r3, #0]	@ TotalPicNum, TotalPicNum
	sub	r0, lr, #1	@ tmp624, tmp625,
	cmp	r0, #1	@ tmp624,
	mov	r0, #0	@ D.31592,
	addls	r2, r2, #1	@ tmp629, TotalPicNum,
	addhi	r2, r2, #2	@ tmp633, TotalPicNum,
	str	r2, [r3, #0]	@ tmp633, TotalPicNum
	b	.L241	@
.L294:
	mov	r6, sl	@ pParam, pParam
	ldr	sl, [fp, #-56]	@ pHwMem, %sfp
	b	.L280	@
.L302:
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp268,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp268,
	ldr	r3, [ip, #36]	@ D.31616, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.31616,
	beq	.L249	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.31616
	b	.L248	@
.L301:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.31608,
	strne	r2, [r5, r7]	@ D.31608, <variable>.pVdmRegVirAddr
	bne	.L246	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L249:
	mov	r0, r3	@, D.31616
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #1050	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	b	.L248	@
.L298:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1029	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L297:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1028	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L260:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L258:
	mov	r0, r7	@, pSlicePara
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.31592, tmp571
	b	.L241	@
.L299:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1030	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
.L300:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1031	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31592,
	b	.L241	@
	.fnend
	.size	H264HAL_V200R003MPW_StartDec, .-H264HAL_V200R003MPW_StartDec
	.align	2
	.global	Write_V200R003MPW_CabacTab
	.type	Write_V200R003MPW_CabacTab, %function
Write_V200R003MPW_CabacTab:
	.fnstart
.LFB1346:
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
	bl	MEM_Phy2Vir	@
	ldr	r3, .L316	@ ivtmp.1579,
	add	sl, r0, #5120	@ D.33043, p,
.L312:
	ldr	r9, [r3, #16]	@, g_CabacMN
	add	lr, r3, #32	@ tmp153, ivtmp.1579,
	ldr	r8, [r3, #32]	@ tmp156, g_CabacMN
	add	r2, r0, #32	@ tmp152, p,
	ldr	r7, [r3, #0]	@ tmp144, g_CabacMN
	str	r9, [r0, #16]	@,
	ldr	r6, [r3, #4]	@ tmp145, g_CabacMN
	ldr	r5, [r3, #8]	@ tmp146, g_CabacMN
	ldr	r4, [r3, #12]	@ tmp147, g_CabacMN
	ldr	r1, [r3, #24]	@, g_CabacMN
	ldr	r9, [r3, #20]	@ tmp149, g_CabacMN
	ldr	r3, [r3, #28]	@, g_CabacMN
	str	r1, [r0, #24]	@,
	str	r8, [r0, #32]	@ tmp156,
	str	r3, [r0, #28]	@,
	add	r3, lr, #32	@ ivtmp.1579, tmp153,
	str	r7, [r0, #0]	@ tmp144,* p
	str	r6, [r0, #4]	@ tmp145,
	str	r5, [r0, #8]	@ tmp146,
	str	r4, [r0, #12]	@ tmp147,
	str	r9, [r0, #20]	@ tmp149,
	add	r0, r2, #32	@ p, tmp152,
	ldr	r8, [lr, #4]	@ tmp157, g_CabacMN
	cmp	r0, sl	@ p, D.33043
	ldr	r7, [lr, #8]	@ tmp158, g_CabacMN
	ldr	r6, [lr, #12]	@ tmp159, g_CabacMN
	ldr	r5, [lr, #16]	@ tmp160, g_CabacMN
	ldr	r4, [lr, #20]	@ tmp161, g_CabacMN
	ldr	ip, [lr, #24]	@ tmp162, g_CabacMN
	ldr	r1, [lr, #28]	@ tmp163, g_CabacMN
	str	r8, [r2, #4]	@ tmp157,
	str	r7, [r2, #8]	@ tmp158,
	str	r6, [r2, #12]	@ tmp159,
	str	r5, [r2, #16]	@ tmp160,
	str	r4, [r2, #20]	@ tmp161,
	str	ip, [r2, #24]	@ tmp162,
	str	r1, [r2, #28]	@ tmp163,
	bne	.L312	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L317:
	.align	2
.L316:
	.word	.LANCHOR0+108
	.fnend
	.size	Write_V200R003MPW_CabacTab, .-Write_V200R003MPW_CabacTab
	.align	2
	.global	H264HAL_V200R003MPW_InitHal
	.type	H264HAL_V200R003MPW_InitHal, %function
H264HAL_V200R003MPW_InitHal:
	.fnstart
.LFB1347:
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
	bl	Write_V200R003MPW_CabacTab	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	H264HAL_V200R003MPW_InitHal, .-H264HAL_V200R003MPW_InitHal
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
	.data
	.align	2
.LANCHOR2 = . + 0
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
	.ascii	"VdhId is wrong! H264HAL_V200R003MPW_StartDec\012\000"
	.space	2
.LC5:
	.ascii	"picture width out of range\012\000"
.LC6:
	.ascii	"point of picture para null\012\000"
.LC7:
	.ascii	"point of fst slice para null\012\000"
	.space	2
.LC8:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC9:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC10:
	.ascii	"\012\012***********************H264HAL_V200R003MPW_"
	.ascii	"StartDec is Now %d***********************\012\000"
.LC11:
	.ascii	"BASIC_V200R003MPW_CFG0 = 0x%x\012\000"
	.space	1
.LC12:
	.ascii	"BASIC_V200R003MPW_CFG1 = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"AVM_V200R003MPW_ADDR = 0x%x\012\000"
	.space	3
.LC14:
	.ascii	"VAM_V200R003MPW_ADDR = 0x%x\012\000"
	.space	3
.LC15:
	.ascii	"STREAM_V200R003MPW_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC16:
	.ascii	"EMAR_ID = 0x%x\012\000"
.LC17:
	.ascii	"YSTADDR_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"YSTRIDE_V200R003MPW_1D = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"UVOFFSET_V200R003MPW_1D = 0x%x\012\000"
.LC20:
	.ascii	"PPFD_V200R003MPW_BUF_ADDR = 0x%x\012\000"
	.space	2
.LC21:
	.ascii	"PPFD_V200R003MPW_BUF_LEN = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"REF_V200R003MPW_PIC_TYPE = 0x%x\012\000"
	.space	3
.LC23:
	.ascii	"FF_V200R003MPW_APT_EN = 0x%x\012\000"
	.space	2
.LC24:
	.ascii	"pSlicePara = NULL!\012\000"
.LC25:
	.ascii	"Warnning: line %d slice num is wrong!\012\000"
	.space	1
.LC26:
	.ascii	"line %d Set slice msg not wrong!\012\000"
	.space	2
.LC27:
	.ascii	"!!! no slice to dec, add up msg report.\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	StartCnt.31569, %object
	.size	StartCnt.31569, 4
StartCnt.31569:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
