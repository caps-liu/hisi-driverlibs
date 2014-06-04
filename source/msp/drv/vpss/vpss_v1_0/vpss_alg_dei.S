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
	.file	"vpss_alg_dei.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss
@ -Idrivers/msp/vpss
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/mach-s40/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/common/drv/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/api/include
@ -I/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/../../../source/msp/drv/include
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716cv200
@ -DSDK_VERSION=HiSTBLinuxV100R002C00SPC020 -DHI_GPIOI2C_SUPPORT
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_VPSS_MAX_BUFFER_NUMB=6
@ -DHI_VPSS_DRV_VER_CV200 -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_dei)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_dei.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_dei.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_dei.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fverbose-asm
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
	.global	MadThdParaInitDefault
	.type	MadThdParaInitDefault, %function
MadThdParaInitDefault:
	.fnstart
.LFB1246:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	mov	r1, #8	@ tmp148,
	mov	r0, #1	@ tmp190,
	mov	ip, #2	@ tmp142,
	mov	r4, #4	@ tmp192,
	mov	r5, #6	@ tmp182,
	mov	r8, #5	@ tmp184,
	mov	r7, #192	@ tmp204,
	mov	r9, #64	@ tmp266,
	mov	r6, #128	@ tmp270,
	mov	sl, #30	@,
	str	r2, [r3, #16]	@ tmp134, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Die_sad_thd
	str	r2, [r3, #24]	@ tmp134, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_mf_max
	str	r2, [r3, #28]	@ tmp134, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Chroma_mf_max
	str	r2, [r3, #32]	@ tmp134, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_scesdf_max
	str	ip, [r3, #196]	@ tmp142, g_stDeiPara.stPqDeiIntpCtrl.u32Dir_inten_ver
	str	ip, [r3, #200]	@ tmp142, g_stDeiPara.stPqDeiIntpCtrl.u32Range_scale
	str	r1, [r3, #36]	@ tmp148, g_stDeiPara.stPqDeiDirCheck.u32Ck1_gain
	str	ip, [r3, #40]	@ tmp142, g_stDeiPara.stPqDeiDirCheck.u32Ck1_range_gain
	str	r1, [r3, #48]	@ tmp148, g_stDeiPara.stPqDeiDirCheck.u32Ck2_gain
	str	ip, [r3, #52]	@ tmp142, g_stDeiPara.stPqDeiDirCheck.u32Ck2_range_gain
	str	r1, [r3, #96]	@ tmp148, g_stDeiPara.stPqDeiDirMulti.u32Dir9_mult
	str	sl, [r3, #44]	@, g_stDeiPara.stPqDeiDirCheck.u32Ck1_max_range
	str	sl, [r3, #56]	@, g_stDeiPara.stPqDeiDirCheck.u32Ck2_max_range
	mov	sl, #32	@,
	str	r5, [r3, #104]	@ tmp182, g_stDeiPara.stPqDeiDirMulti.u32Dir11_mult
	str	sl, [r3, #68]	@, g_stDeiPara.stPqDeiDirMulti.u32Dir2_mult
	mov	sl, #15	@,
	str	r5, [r3, #564]	@ tmp182, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_blend
	str	sl, [r3, #80]	@, g_stDeiPara.stPqDeiDirMulti.u32Dir5_mult
	mov	sl, #7	@,
	str	r1, [r3, #548]	@ tmp148, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_max
	str	sl, [r3, #100]	@, g_stDeiPara.stPqDeiDirMulti.u32Dir10_mult
	movw	sl, #:lower16:-320	@ tmp411,
	str	r8, [r3, #108]	@ tmp184, g_stDeiPara.stPqDeiDirMulti.u32Dir12_mult
	movt	sl, #:upper16:-320	@ tmp411,
	str	r8, [r3, #112]	@ tmp184, g_stDeiPara.stPqDeiDirMulti.u32Dir13_mult
	str	sl, [r3, #192]	@ tmp411, g_stDeiPara.stPqDeiIntpCtrl.u32Ver_min_inten
	mov	sl, #40	@ tmp160,
	str	r0, [r3, #540]	@ tmp190, g_stDeiPara.stPqDeiCrsClr.u32Chroma_ccr_en
	str	sl, [r3, #60]	@ tmp160, g_stDeiPara.stPqDeiDirMulti.u32Dir0_mult
	mov	sl, #24	@ tmp162,
	str	r4, [r3, #544]	@ tmp192, g_stDeiPara.stPqDeiCrsClr.u32Chroma_ma_offset
	str	sl, [r3, #64]	@ tmp162, g_stDeiPara.stPqDeiDirMulti.u32Dir1_mult
	mov	sl, #27	@ tmp166,
	str	r4, [r3, #552]	@ tmp192, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_thd
	str	sl, [r3, #72]	@ tmp166, g_stDeiPara.stPqDeiDirMulti.u32Dir3_mult
	mov	sl, #18	@ tmp168,
	str	sl, [r3, #76]	@ tmp168, g_stDeiPara.stPqDeiDirMulti.u32Dir4_mult
	mov	sl, #12	@ tmp172,
	str	sl, [r3, #84]	@ tmp172, g_stDeiPara.stPqDeiDirMulti.u32Dir6_mult
	mov	sl, #11	@ tmp174,
	str	sl, [r3, #88]	@ tmp174, g_stDeiPara.stPqDeiDirMulti.u32Dir7_mult
	mov	sl, #9	@ tmp176,
	str	sl, [r3, #92]	@ tmp176, g_stDeiPara.stPqDeiDirMulti.u32Dir8_mult
	mov	sl, #3	@ tmp188,
	str	sl, [r3, #116]	@ tmp188, g_stDeiPara.stPqDeiDirMulti.u32Dir14_mult
	mov	sl, #7	@,
	str	r1, [r3, #556]	@ tmp148, g_stDeiPara.stPqDeiCrsClr.u32Similar_max
	str	r5, [r3, #136]	@ tmp182, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_5
	str	sl, [r3, #144]	@, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_7
	movw	sl, #5000	@ tmp240,
	str	r5, [r3, #120]	@ tmp182, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_1
	str	sl, [r3, #180]	@ tmp240, g_stDeiPara.stPqDeiIntpCtrl.u32Strength_thd
	mvn	sl, #0	@ tmp252,
	str	r5, [r3, #132]	@ tmp182, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_4
	mov	r5, #16	@,
	str	sl, [r3, #224]	@ tmp252, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_1
	mov	sl, #144	@ tmp262,
	str	r1, [r3, #148]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_8
	str	sl, [r3, #248]	@ tmp262, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_high
	mov	sl, #7	@,
	str	r1, [r3, #152]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_9
	str	sl, [r3, #140]	@, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_6
	mov	sl, #32	@,
	str	r1, [r3, #156]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_10
	str	r1, [r3, #160]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_11
	str	r1, [r3, #164]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_12
	str	r1, [r3, #168]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_13
	str	r1, [r3, #172]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_14
	str	r1, [r3, #176]	@ tmp148, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_15
	str	sl, [r3, #188]	@, g_stDeiPara.stPqDeiIntpCtrl.u32Bc_gain
	str	r2, [r3, #212]	@ tmp134, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_coring
	str	r2, [r3, #208]	@ tmp134, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_factor
	str	r2, [r3, #216]	@ tmp134, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_gain
	str	r2, [r3, #220]	@ tmp134, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_0
	str	ip, [r3, #228]	@ tmp142, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_2
	str	r2, [r3, #232]	@ tmp134, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_coring
	str	ip, [r3, #240]	@ tmp142, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_curve_slope
	str	r1, [r3, #236]	@ tmp148, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_gain
	str	r5, [r3, #244]	@, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_low
	mov	r5, #96	@ tmp268,
	str	r8, [r3, #128]	@ tmp184, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_3
	str	r4, [r3, #560]	@ tmp192, g_stDeiPara.stPqDeiCrsClr.u32Similar_thd
	str	r7, [r3, #568]	@ tmp204, g_stDeiPara.stPqDeiCrsClr.u32Max_xchroma
	str	r8, [r3, #124]	@ tmp184, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_2
	str	r4, [r3, #184]	@ tmp192, g_stDeiPara.stPqDeiIntpCtrl.u32Dir_thd
	str	r0, [r3, #204]	@ tmp190, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_mode
	str	r9, [r3, #256]	@ tmp266, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_0
	str	r5, [r3, #260]	@ tmp268, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_1
	mvn	r5, #7	@ tmp280,
	str	sl, [r3, #324]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_1
	mov	sl, #160	@,
	str	r5, [r3, #284]	@ tmp280, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3
	mov	r5, #16	@,
	str	sl, [r3, #268]	@, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_3
	mov	sl, #255	@,
	str	r2, [r3, #272]	@ tmp134, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_0
	str	r1, [r3, #276]	@ tmp148, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1
	str	r2, [r3, #280]	@ tmp134, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2
	str	r2, [r3, #252]	@ tmp134, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_ratio_en
	str	r1, [r3, #296]	@ tmp148, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mx_motion_ratio
	str	r5, [r3, #320]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_0
	mov	r5, #15	@,
	str	sl, [r3, #340]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_5
	str	sl, [r3, #344]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_6
	str	sl, [r3, #348]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_7
	mov	sl, #66	@ tmp340,
	str	r2, [r3, #352]	@ tmp134, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_0
	str	ip, [r3, #364]	@ tmp142, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_3
	str	ip, [r3, #368]	@ tmp142, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_4
	str	r1, [r3, #376]	@ tmp148, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_6
	str	r5, [r3, #380]	@, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_7
	mov	r5, #86	@ tmp344,
	str	ip, [r3, #388]	@ tmp142, g_stDeiPara.stPqDeiIirMotionCurve.u32Min_motion_iir_ratio
	str	r6, [r3, #332]	@ tmp270, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_3
	str	r7, [r3, #336]	@ tmp204, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_4
	str	r6, [r3, #264]	@ tmp270, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_2
	str	r4, [r3, #292]	@ tmp192, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mn_motion_ratio
	str	r4, [r3, #288]	@ tmp192, g_stDeiPara.stPqDeiMotionRatioCurve.u32Sart_motion_ratio
	str	r6, [r3, #300]	@ tmp270, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_0
	str	r7, [r3, #304]	@ tmp204, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_1
	str	r7, [r3, #308]	@ tmp204, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_2
	str	r6, [r3, #312]	@ tmp270, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_3
	str	r9, [r3, #328]	@ tmp266, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_2
	str	r0, [r3, #356]	@ tmp190, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_1
	str	r0, [r3, #360]	@ tmp190, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_2
	str	r4, [r3, #372]	@ tmp192, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_5
	str	r0, [r3, #316]	@ tmp190, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_iir_en
	str	r4, [r3, #392]	@ tmp192, g_stDeiPara.stPqDeiIirMotionCurve.u32Max_motion_iir_ratio
	str	ip, [r3, #384]	@ tmp142, g_stDeiPara.stPqDeiIirMotionCurve.u32Start_motion_iir_ratio
	mov	ip, #70	@ tmp342,
	str	sl, [r3, #400]	@ tmp340, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_1
	mov	sl, #102	@ tmp346,
	str	ip, [r3, #404]	@ tmp342, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_2
	mov	ip, #16	@,
	str	r5, [r3, #408]	@ tmp344, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_3
	mov	r5, #10	@ tmp402,
	str	sl, [r3, #412]	@ tmp346, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_4
	mov	sl, #133	@,
	str	r1, [r3, #444]	@ tmp148, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_gain
	mov	r1, #50	@,
	str	sl, [r3, #424]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_7
	str	ip, [r3, #440]	@, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_scale
	mov	ip, #15	@,
	str	r2, [r3, #496]	@ tmp134, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_size
	str	r1, [r3, #500]	@, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_thd
	mov	r1, #30	@,
	str	r5, [r3, #528]	@ tmp402, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_lower_limit
	mov	r5, #50	@,
	str	sl, [r3, #416]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_5
	str	sl, [r3, #420]	@, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_6
	mov	sl, #160	@,
	str	r2, [r3, #436]	@ tmp134, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_mix_mode
	str	r2, [r3, #432]	@ tmp134, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_write_mode
	str	r2, [r3, #448]	@ tmp134, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_coring
	str	r2, [r3, #476]	@ tmp134, g_stDeiPara.stPqDeiHistMotion.u32His_motion_write_mode
	str	r2, [r3, #484]	@ tmp134, g_stDeiPara.stPqDeiHistMotion.u32Pre_info_en
	str	r2, [r3, #468]	@ tmp134, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_1
	str	r2, [r3, #508]	@ tmp134, g_stDeiPara.stPqDeiOptmModule.u32deflicker_en
	str	r2, [r3, #504]	@ tmp134, g_stDeiPara.stPqDeiOptmModule.u32med_blend_en
	str	r2, [r3, #20]	@ tmp134, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Adjust_gain
	mov	r2, #255	@,
	str	r4, [r3, #456]	@ tmp192, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_0
	str	r0, [r3, #512]	@ tmp190, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_en
	str	r9, [r3, #520]	@ tmp266, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_edge_thd
	str	r9, [r3, #396]	@ tmp266, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_0
	str	r0, [r3, #428]	@ tmp190, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_en
	str	r5, [r3, #452]	@, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_motion_thd
	str	r0, [r3, #472]	@ tmp190, g_stDeiPara.stPqDeiHistMotion.u32His_motion_en
	str	r0, [r3, #480]	@ tmp190, g_stDeiPara.stPqDeiHistMotion.u32His_motion_using_mode
	str	r0, [r3, #488]	@ tmp190, g_stDeiPara.stPqDeiHistMotion.u32Ppre_info_en
	str	r0, [r3, #460]	@ tmp190, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_1
	str	r0, [r3, #464]	@ tmp190, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_0
	str	r0, [r3, #492]	@ tmp190, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_en
	str	sl, [r3, #524]	@, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_upper_limit
	str	ip, [r3, #532]	@, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_vthd
	str	r1, [r3, #516]	@, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_md_thd
	str	r2, [r3, #536]	@, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_hthd
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	MadThdParaInitDefault, .-MadThdParaInitDefault
	.align	2
	.global	MadThdParaInit
	.type	MadThdParaInit, %function
MadThdParaInit:
	.fnstart
.LFB1247:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r1, #16]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Die_sad_thd, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Die_sad_thd
	str	r3, [r0, #0]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Die_sad_thd, <variable>.stMadLma2.s32SadThd
	ldr	ip, [r1, #24]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_mf_max, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_mf_max
	str	ip, [r0, #8]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_mf_max, <variable>.stMadLma2.bMfMaxLum
	ldr	r2, [r1, #28]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Chroma_mf_max, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Chroma_mf_max
	str	r2, [r0, #4]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Chroma_mf_max, <variable>.stMadLma2.bMfMaxChr
	ldr	r3, [r1, #32]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_scesdf_max, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_scesdf_max
	str	r3, [r0, #12]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Luma_scesdf_max, <variable>.stMadLma2.bSceSdfMaxLum
	ldr	ip, [r1, #196]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Dir_inten_ver, g_stDeiPara.stPqDeiIntpCtrl.u32Dir_inten_ver
	str	ip, [r0, #20]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Dir_inten_ver, <variable>.stMadInten.s32DirIntenVer
	ldr	r2, [r1, #192]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Ver_min_inten, g_stDeiPara.stPqDeiIntpCtrl.u32Ver_min_inten
	str	r2, [r0, #16]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Ver_min_inten, <variable>.stMadInten.s32MinIntenVer
	ldr	r3, [r1, #200]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Range_scale, g_stDeiPara.stPqDeiIntpCtrl.u32Range_scale
	str	r3, [r0, #24]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Range_scale, <variable>.stMadScl.s32RangeScale
	ldr	ip, [r1, #36]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_gain, g_stDeiPara.stPqDeiDirCheck.u32Ck1_gain
	str	ip, [r0, #28]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_gain, <variable>.stMadChk1.s32CkGain
	ldr	r2, [r1, #44]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_max_range, g_stDeiPara.stPqDeiDirCheck.u32Ck1_max_range
	str	r2, [r0, #36]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_max_range, <variable>.stMadChk1.s32CkMaxRange
	ldr	r3, [r1, #40]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_range_gain, g_stDeiPara.stPqDeiDirCheck.u32Ck1_range_gain
	str	r3, [r0, #32]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck1_range_gain, <variable>.stMadChk1.s32CkRangeGain
	ldr	ip, [r1, #48]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_gain, g_stDeiPara.stPqDeiDirCheck.u32Ck2_gain
	str	ip, [r0, #40]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_gain, <variable>.stMadChk2.s32CkGain
	ldr	r2, [r1, #56]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_max_range, g_stDeiPara.stPqDeiDirCheck.u32Ck2_max_range
	str	r2, [r0, #48]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_max_range, <variable>.stMadChk2.s32CkMaxRange
	ldr	r3, [r1, #52]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_range_gain, g_stDeiPara.stPqDeiDirCheck.u32Ck2_range_gain
	str	r3, [r0, #44]	@ g_stDeiPara.stPqDeiDirCheck.u32Ck2_range_gain, <variable>.stMadChk2.s32CkRangeGain
	ldr	ip, [r1, #60]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir0_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir0_mult
	str	ip, [r0, #52]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir0_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r2, [r1, #64]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir1_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir1_mult
	str	r2, [r0, #56]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir1_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r3, [r1, #68]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir2_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir2_mult
	str	r3, [r0, #60]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir2_mult, <variable>.stMadDirMult.s32MultDir
	ldr	ip, [r1, #72]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir3_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir3_mult
	str	ip, [r0, #64]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir3_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r2, [r1, #76]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir4_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir4_mult
	str	r2, [r0, #68]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir4_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r3, [r1, #80]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir5_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir5_mult
	str	r3, [r0, #72]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir5_mult, <variable>.stMadDirMult.s32MultDir
	ldr	ip, [r1, #84]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir6_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir6_mult
	str	ip, [r0, #76]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir6_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r2, [r1, #88]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir7_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir7_mult
	str	r2, [r0, #80]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir7_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r3, [r1, #92]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir8_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir8_mult
	str	r3, [r0, #84]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir8_mult, <variable>.stMadDirMult.s32MultDir
	ldr	ip, [r1, #96]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir9_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir9_mult
	str	ip, [r0, #88]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir9_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r2, [r1, #100]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir10_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir10_mult
	str	r2, [r0, #92]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir10_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r3, [r1, #104]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir11_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir11_mult
	str	r3, [r0, #96]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir11_mult, <variable>.stMadDirMult.s32MultDir
	ldr	ip, [r1, #108]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir12_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir12_mult
	str	ip, [r0, #100]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir12_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r2, [r1, #112]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir13_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir13_mult
	str	r2, [r0, #104]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir13_mult, <variable>.stMadDirMult.s32MultDir
	ldr	r3, [r1, #116]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir14_mult, g_stDeiPara.stPqDeiDirMulti.u32Dir14_mult
	str	r3, [r0, #108]	@ g_stDeiPara.stPqDeiDirMulti.u32Dir14_mult, <variable>.stMadDirMult.s32MultDir
	ldr	ip, [r1, #540]	@ g_stDeiPara.stPqDeiCrsClr.u32Chroma_ccr_en, g_stDeiPara.stPqDeiCrsClr.u32Chroma_ccr_en
	str	ip, [r0, #112]	@ g_stDeiPara.stPqDeiCrsClr.u32Chroma_ccr_en, <variable>.stMadCcrScl.bCcrEn
	ldr	r2, [r1, #544]	@ g_stDeiPara.stPqDeiCrsClr.u32Chroma_ma_offset, g_stDeiPara.stPqDeiCrsClr.u32Chroma_ma_offset
	str	r2, [r0, #116]	@ g_stDeiPara.stPqDeiCrsClr.u32Chroma_ma_offset, <variable>.stMadCcrScl.s32ChrMaOffset
	ldr	r3, [r1, #564]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_blend, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_blend
	str	r3, [r0, #136]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_blend, <variable>.stMadCcrScl.s32NCcrDetBld
	ldr	ip, [r1, #548]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_max, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_max
	str	ip, [r0, #120]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_max, <variable>.stMadCcrScl.s32NCcrDetMax
	ldr	r2, [r1, #552]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_thd, g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_thd
	str	r2, [r0, #124]	@ g_stDeiPara.stPqDeiCrsClr.u32No_ccr_detect_thd, <variable>.stMadCcrScl.s32NccrDetThd
	ldr	r3, [r1, #556]	@ g_stDeiPara.stPqDeiCrsClr.u32Similar_max, g_stDeiPara.stPqDeiCrsClr.u32Similar_max
	str	r3, [r0, #128]	@ g_stDeiPara.stPqDeiCrsClr.u32Similar_max, <variable>.stMadCcrScl.s32SimlrMax
	ldr	ip, [r1, #560]	@ g_stDeiPara.stPqDeiCrsClr.u32Similar_thd, g_stDeiPara.stPqDeiCrsClr.u32Similar_thd
	str	ip, [r0, #132]	@ g_stDeiPara.stPqDeiCrsClr.u32Similar_thd, <variable>.stMadCcrScl.s32SimlrThd
	ldr	r2, [r1, #568]	@ g_stDeiPara.stPqDeiCrsClr.u32Max_xchroma, g_stDeiPara.stPqDeiCrsClr.u32Max_xchroma
	str	r2, [r0, #140]	@ g_stDeiPara.stPqDeiCrsClr.u32Max_xchroma, <variable>.stMadCcrScl.s32XChrMax
	ldr	r3, [r1, #120]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_1, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_1
	str	r3, [r0, #144]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_1, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	ip, [r1, #124]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_2, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_2
	str	ip, [r0, #148]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_2, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r2, [r1, #128]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_3, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_3
	str	r2, [r0, #152]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_3, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r3, [r1, #132]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_4, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_4
	str	r3, [r0, #156]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_4, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	ip, [r1, #136]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_5, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_5
	str	ip, [r0, #160]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_5, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r2, [r1, #140]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_6, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_6
	str	r2, [r0, #164]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_6, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r3, [r1, #144]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_7, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_7
	str	r3, [r0, #168]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_7, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	ip, [r1, #148]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_8, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_8
	str	ip, [r0, #172]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_8, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r2, [r1, #152]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_9, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_9
	str	r2, [r0, #176]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_9, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r3, [r1, #156]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_10, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_10
	str	r3, [r0, #180]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_10, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	ip, [r1, #160]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_11, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_11
	str	ip, [r0, #184]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_11, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r2, [r1, #164]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_12, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_12
	str	r2, [r0, #188]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_12, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r3, [r1, #168]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_13, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_13
	str	r3, [r0, #192]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_13, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	ip, [r1, #172]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_14, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_14
	str	ip, [r0, #196]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_14, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r2, [r1, #176]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_15, g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_15
	str	r2, [r0, #200]	@ g_stDeiPara.stPqDeiIntpScaleRatio.u32Intp_scale_ratio_15, <variable>.stMadIntpScl.s32IntpSclRat
	ldr	r3, [r1, #188]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Bc_gain, g_stDeiPara.stPqDeiIntpCtrl.u32Bc_gain
	str	r3, [r0, #212]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Bc_gain, <variable>.stMadDirThd.s32BcGain
	ldr	ip, [r1, #184]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Dir_thd, g_stDeiPara.stPqDeiIntpCtrl.u32Dir_thd
	str	ip, [r0, #208]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Dir_thd, <variable>.stMadDirThd.s32DirThd
	ldr	r2, [r1, #180]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Strength_thd, g_stDeiPara.stPqDeiIntpCtrl.u32Strength_thd
	str	r2, [r0, #204]	@ g_stDeiPara.stPqDeiIntpCtrl.u32Strength_thd, <variable>.stMadDirThd.s32StrengthThd
	ldr	r3, [r1, #204]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_mode, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_mode
	str	r3, [r0, #216]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_mode, <variable>.stMadJitMtn.bJitMd
	ldr	ip, [r1, #212]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_coring, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_coring
	str	ip, [r0, #224]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_coring, <variable>.stMadJitMtn.s32JitCoring
	ldr	r2, [r1, #208]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_factor, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_factor
	str	r2, [r0, #220]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_factor, <variable>.stMadJitMtn.s32JitFactor
	ldr	r3, [r1, #216]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_gain, g_stDeiPara.stPqDeiJitterMotion.u32Jitter_gain
	str	r3, [r0, #228]	@ g_stDeiPara.stPqDeiJitterMotion.u32Jitter_gain, <variable>.stMadJitMtn.s32JitGain
	ldr	ip, [r1, #220]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_0, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_0
	str	ip, [r0, #232]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_0, <variable>.stMadJitMtn.s32JitFlt
	ldr	r2, [r1, #224]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_1, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_1
	str	r2, [r0, #236]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_1, <variable>.stMadJitMtn.s32JitFlt
	ldr	r3, [r1, #228]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_2, g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_2
	str	r3, [r0, #240]	@ g_stDeiPara.stPqDeiJitterMotion.s32Jitter_filter_2, <variable>.stMadJitMtn.s32JitFlt
	ldr	ip, [r1, #232]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_coring, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_coring
	str	ip, [r0, #244]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_coring, <variable>.stMadFldMtn.s32FldMtnCoring
	ldr	r2, [r1, #240]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_curve_slope, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_curve_slope
	str	r2, [r0, #252]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_curve_slope, <variable>.stMadFldMtn.s32FldMtnCrvSlp
	ldr	r3, [r1, #236]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_gain, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_gain
	str	r3, [r0, #248]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_gain, <variable>.stMadFldMtn.s32FldMtnGain
	ldr	ip, [r1, #248]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_high, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_high
	str	ip, [r0, #256]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_high, <variable>.stMadFldMtn.s32FldMtnThdH
	ldr	r2, [r1, #244]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_low, g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_low
	str	r2, [r0, #260]	@ g_stDeiPara.stPqDeiFieldMotion.u32Fld_motion_thd_low, <variable>.stMadFldMtn.s32FldMtnThdL
	ldr	r3, [r1, #256]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_0, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_0
	str	r3, [r0, #264]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_0, <variable>.stMadMtnCrvThd.s32LumAvgThd
	ldr	ip, [r1, #260]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_1, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_1
	str	ip, [r0, #268]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_1, <variable>.stMadMtnCrvThd.s32LumAvgThd
	ldr	r2, [r1, #264]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_2, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_2
	str	r2, [r0, #272]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_2, <variable>.stMadMtnCrvThd.s32LumAvgThd
	ldr	r3, [r1, #268]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_3, g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_3
	str	r3, [r0, #276]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Lm_avg_thd_3, <variable>.stMadMtnCrvThd.s32LumAvgThd
	ldr	ip, [r1, #272]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_0, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_0
	str	ip, [r0, #280]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_0, <variable>.stMadMtnCrvSlp.s32MtnCrvSlp
	ldr	r2, [r1, #276]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1
	str	r2, [r0, #284]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1, <variable>.stMadMtnCrvSlp.s32MtnCrvSlp
	ldr	r3, [r1, #280]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2
	str	r3, [r0, #288]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2, <variable>.stMadMtnCrvSlp.s32MtnCrvSlp
	ldr	ip, [r1, #284]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3
	str	ip, [r0, #292]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3, <variable>.stMadMtnCrvSlp.s32MtnCrvSlp
	ldr	r2, [r1, #252]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_ratio_en, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_ratio_en
	str	r2, [r0, #296]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_ratio_en, <variable>.stMadMtnCrvRat.bMtnRatEn
	ldr	r3, [r1, #296]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mx_motion_ratio, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mx_motion_ratio
	str	r3, [r0, #324]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mx_motion_ratio, <variable>.stMadMtnCrvRat.s32MtnRatMax
	ldr	ip, [r1, #292]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mn_motion_ratio, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mn_motion_ratio
	str	ip, [r0, #320]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mn_motion_ratio, <variable>.stMadMtnCrvRat.s32MtnRatMin
	ldr	r2, [r1, #288]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Sart_motion_ratio, g_stDeiPara.stPqDeiMotionRatioCurve.u32Sart_motion_ratio
	str	r2, [r0, #316]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Sart_motion_ratio, <variable>.stMadMtnCrvRat.s32MtnRatStart
	ldr	r3, [r1, #300]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_0, g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_0
	str	r3, [r0, #300]	@ g_stDeiPara.stPqDeiMotionRatioCurve.u32Mtion_curve_ratio_0, <variable>.stMadMtnCrvRat.s32MtnCrvRat
	ldr	ip, [r1, #276]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1
	str	ip, [r0, #304]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_1, <variable>.stMadMtnCrvRat.s32MtnCrvRat
	ldr	r2, [r1, #280]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2
	str	r2, [r0, #308]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_2, <variable>.stMadMtnCrvRat.s32MtnCrvRat
	ldr	r3, [r1, #284]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3, g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3
	str	r3, [r0, #312]	@ g_stDeiPara.stPqDeiMotionRatioCurve.s32Mtion_curve_slope_3, <variable>.stMadMtnCrvRat.s32MtnCrvRat
	ldr	ip, [r1, #320]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_0, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_0
	str	ip, [r0, #328]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_0, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r2, [r1, #324]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_1, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_1
	str	r2, [r0, #332]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_1, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r3, [r1, #328]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_2, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_2
	str	r3, [r0, #336]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_2, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	ip, [r1, #332]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_3, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_3
	str	ip, [r0, #340]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_3, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r2, [r1, #336]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_4, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_4
	str	r2, [r0, #344]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_4, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r3, [r1, #340]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_5, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_5
	str	r3, [r0, #348]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_5, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	ip, [r1, #344]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_6, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_6
	str	ip, [r0, #352]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_6, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r2, [r1, #348]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_7, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_7
	str	r2, [r0, #356]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_diff_thd_7, <variable>.stMadMtnDiffThd.s32MtnDiffThd
	ldr	r3, [r1, #352]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_0, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_0
	str	r3, [r0, #360]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_0, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	ip, [r1, #356]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_1, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_1
	str	ip, [r0, #364]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_1, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	r2, [r1, #360]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_2, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_2
	str	r2, [r0, #368]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_2, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	r3, [r1, #364]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_3, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_3
	str	r3, [r0, #372]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_3, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	ip, [r1, #368]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_4, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_4
	str	ip, [r0, #376]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_4, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	r2, [r1, #372]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_5, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_5
	str	r2, [r0, #380]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_5, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	r3, [r1, #376]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_6, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_6
	str	r3, [r0, #384]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_6, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	ip, [r1, #380]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_7, g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_7
	str	ip, [r0, #388]	@ g_stDeiPara.stPqDeiIirMotionCurve.s32Mtion_iir_curve_slope_7, <variable>.stMadMtnIirCrvSlp.s32MtnIirCrvSlp
	ldr	r2, [r1, #316]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_iir_en, g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_iir_en
	str	r2, [r0, #392]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Mtion_iir_en, <variable>.stMadMtnIirCrvRat.bMtnIirEn
	ldr	r3, [r1, #392]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Max_motion_iir_ratio, g_stDeiPara.stPqDeiIirMotionCurve.u32Max_motion_iir_ratio
	str	r3, [r0, #436]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Max_motion_iir_ratio, <variable>.stMadMtnIirCrvRat.s32MtnIirRatMax
	ldr	ip, [r1, #388]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Min_motion_iir_ratio, g_stDeiPara.stPqDeiIirMotionCurve.u32Min_motion_iir_ratio
	str	ip, [r0, #432]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Min_motion_iir_ratio, <variable>.stMadMtnIirCrvRat.s32MtnIirRatMin
	ldr	r2, [r1, #384]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Start_motion_iir_ratio, g_stDeiPara.stPqDeiIirMotionCurve.u32Start_motion_iir_ratio
	str	r2, [r0, #428]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Start_motion_iir_ratio, <variable>.stMadMtnIirCrvRat.s32MtnIirRatStart
	ldr	r3, [r1, #396]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_0, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_0
	str	r3, [r0, #396]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_0, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	ip, [r1, #400]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_1, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_1
	str	ip, [r0, #400]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_1, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	r2, [r1, #404]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_2, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_2
	str	r2, [r0, #404]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_2, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	r3, [r1, #408]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_3, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_3
	str	r3, [r0, #408]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_3, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	ip, [r1, #412]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_4, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_4
	str	ip, [r0, #412]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_4, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	r2, [r1, #416]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_5, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_5
	str	r2, [r0, #416]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_5, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	r3, [r1, #420]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_6, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_6
	str	r3, [r0, #420]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_6, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	ip, [r1, #424]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_7, g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_7
	str	ip, [r0, #424]	@ g_stDeiPara.stPqDeiIirMotionCurve.u32Motion_iir_curve_ratio_7, <variable>.stMadMtnIirCrvRat.s32MtnIirCrvRat
	ldr	r2, [r1, #428]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_en, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_en
	str	r2, [r0, #444]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_en, <variable>.stMadRecMode.bRecMdEn
	ldr	r3, [r1, #436]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_mix_mode, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_mix_mode
	str	r3, [r0, #448]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_mix_mode, <variable>.stMadRecMode.bRecMdMixMd
	ldr	ip, [r1, #432]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_write_mode, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_write_mode
	str	ip, [r0, #440]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_write_mode, <variable>.stMadRecMode.bRecMdWrMd
	ldr	r2, [r1, #448]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_coring, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_coring
	str	r2, [r0, #460]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_coring, <variable>.stMadRecMode.s32RecMdFldMtnCoring
	ldr	r3, [r1, #444]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_gain, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_gain
	str	r3, [r0, #456]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_gain, <variable>.stMadRecMode.s32RecMdFldMtnGain
	ldr	ip, [r1, #452]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_motion_thd, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_motion_thd
	str	ip, [r0, #464]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_motion_thd, <variable>.stMadRecMode.s32RecMdMtnThd
	ldr	r2, [r1, #440]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_scale, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_scale
	str	r2, [r0, #452]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_scale, <variable>.stMadRecMode.s32RecMdScl
	ldr	r3, [r1, #472]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_en, g_stDeiPara.stPqDeiHistMotion.u32His_motion_en
	str	r3, [r0, #476]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_en, <variable>.stMadHisMtnMd.bHisMtnEn
	ldr	ip, [r1, #480]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_using_mode, g_stDeiPara.stPqDeiHistMotion.u32His_motion_using_mode
	str	ip, [r0, #472]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_using_mode, <variable>.stMadHisMtnMd.bHisMtnUseMd
	ldr	r2, [r1, #476]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_write_mode, g_stDeiPara.stPqDeiHistMotion.u32His_motion_write_mode
	str	r2, [r0, #468]	@ g_stDeiPara.stPqDeiHistMotion.u32His_motion_write_mode, <variable>.stMadHisMtnMd.bHisMtnWrMd
	ldr	r3, [r1, #488]	@ g_stDeiPara.stPqDeiHistMotion.u32Ppre_info_en, g_stDeiPara.stPqDeiHistMotion.u32Ppre_info_en
	str	r3, [r0, #484]	@ g_stDeiPara.stPqDeiHistMotion.u32Ppre_info_en, <variable>.stMadHisMtnMd.bPpreInfoEn
	ldr	ip, [r1, #484]	@ g_stDeiPara.stPqDeiHistMotion.u32Pre_info_en, g_stDeiPara.stPqDeiHistMotion.u32Pre_info_en
	str	ip, [r0, #480]	@ g_stDeiPara.stPqDeiHistMotion.u32Pre_info_en, <variable>.stMadHisMtnMd.bPreInfoEn
	ldr	r2, [r1, #456]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_0, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_0
	str	r2, [r0, #496]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_0, <variable>.stMadHisMtnMd.s32RecMdFldMtnStp
	ldr	r3, [r1, #460]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_1, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_1
	str	r3, [r0, #500]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_fld_motion_step_1, <variable>.stMadHisMtnMd.s32RecMdFldMtnStp
	ldr	ip, [r1, #464]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_0, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_0
	str	ip, [r0, #488]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_0, <variable>.stMadHisMtnMd.s32RecMdFrmMtnStp
	ldr	r2, [r1, #468]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_1, g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_1
	str	r2, [r0, #492]	@ g_stDeiPara.stPqDeiRecMode.u32Rec_mode_frm_motion_step_1, <variable>.stMadHisMtnMd.s32RecMdFrmMtnStp
	ldr	r3, [r1, #508]	@ g_stDeiPara.stPqDeiOptmModule.u32deflicker_en, g_stDeiPara.stPqDeiOptmModule.u32deflicker_en
	str	r3, [r0, #508]	@ g_stDeiPara.stPqDeiOptmModule.u32deflicker_en, <variable>.stMadMorFlt.bDeflickerEn
	ldr	ip, [r1, #504]	@ g_stDeiPara.stPqDeiOptmModule.u32med_blend_en, g_stDeiPara.stPqDeiOptmModule.u32med_blend_en
	str	ip, [r0, #504]	@ g_stDeiPara.stPqDeiOptmModule.u32med_blend_en, <variable>.stMadMorFlt.bMedBldEn
	ldr	r2, [r1, #492]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_en, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_en
	str	r2, [r0, #512]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_en, <variable>.stMadMorFlt.bMorFltEn
	ldr	r3, [r1, #20]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Adjust_gain, g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Adjust_gain
	str	r3, [r0, #516]	@ g_stDeiPara.stPqDeiGlobalMotionCtrl.u32Adjust_gain, <variable>.stMadMorFlt.s32AdjGain
	ldr	ip, [r1, #496]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_size, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_size
	str	ip, [r0, #520]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_size, <variable>.stMadMorFlt.s32MorFltSize
	ldr	r2, [r1, #500]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_thd, g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_thd
	str	r2, [r0, #524]	@ g_stDeiPara.stPqDeiMorFlt.u32Mor_flt_thd, <variable>.stMadMorFlt.s32MorFltThd
	ldr	r3, [r1, #512]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_en, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_en
	str	r3, [r0, #528]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_en, <variable>.stMadCombChk.bCombChkEn
	ldr	ip, [r1, #520]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_edge_thd, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_edge_thd
	str	ip, [r0, #552]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_edge_thd, <variable>.stMadCombChk.s32CombChkEdgeThd
	ldr	r2, [r1, #528]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_lower_limit, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_lower_limit
	str	r2, [r0, #536]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_lower_limit, <variable>.stMadCombChk.s32CombChkLowLmt
	ldr	r3, [r1, #524]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_upper_limit, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_upper_limit
	str	r3, [r0, #532]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_upper_limit, <variable>.stMadCombChk.s32CombChkUpLmt
	ldr	ip, [r1, #516]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_md_thd, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_md_thd
	str	ip, [r0, #548]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_md_thd, <variable>.stMadCombChk.s32CombChkMdThd
	ldr	r2, [r1, #536]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_hthd, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_hthd
	str	r2, [r0, #544]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_hthd, <variable>.stMadCombChk.s32CombChkMinThdH
	ldr	r3, [r1, #532]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_vthd, g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_vthd
	str	r3, [r0, #540]	@ g_stDeiPara.stPqDeiCombChk.u32Comb_chk_min_vthd, <variable>.stMadCombChk.s32CombChkMinThdV
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MadThdParaInit, .-MadThdParaInit
	.align	2
	.global	ALG_FLUSHDATA
	.type	ALG_FLUSHDATA, %function
ALG_FLUSHDATA:
	.fnstart
.LFB1248:
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
	ldr	r2, [r0, #8]	@ <variable>.u32Size, <variable>.u32Size
	ldr	r0, [r0, #0]	@ D.27431, <variable>.u32StartVirAddr
	add	ip, r2, #3	@ tmp168, <variable>.u32Size,
	movs	ip, ip, lsr #2	@ u32Numb, tmp168,
	beq	.L6	@,
	cmp	ip, #1	@ u32Numb,
	sub	r3, ip, #1	@ tmp172, u32Numb,
	and	r2, r3, #1	@ tmp174, tmp172,
	str	r1, [r0, #0]	@ u32Data,* D.27431
	mov	r3, #1	@ u32Count,
	bls	.L6	@,
	cmp	r2, #0	@ tmp174,
	beq	.L7	@,
	mov	r3, #2	@ u32Count,
	cmp	ip, r3	@ u32Numb, u32Count
	str	r1, [r0, #4]	@ u32Data,
	bls	.L6	@,
.L7:
	add	r2, r3, #1	@ tmp175, u32Count,
	str	r1, [r0, r3, asl #2]	@ u32Data,* D.27431
	add	r3, r2, #1	@ u32Count, tmp175,
	cmp	ip, r3	@ u32Numb, u32Count
	str	r1, [r0, r2, asl #2]	@ u32Data,* D.27431
	bhi	.L7	@,
.L6:
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_FLUSHDATA, .-ALG_FLUSHDATA
	.align	2
	.global	ALG_MadSet
	.type	ALG_MadSet, %function
ALG_MadSet:
	.fnstart
.LFB1251:
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
	ldr	r3, [r0, #20]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	mov	ip, #960	@ tmp139,
	str	r3, [r2, #556]	@ <variable>.u32MadMvAddr, <variable>.u32MadSTBufAddrR
	ldr	r3, [r0, #12]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	str	ip, [r2, #564]	@ tmp139, <variable>.u32MadSTBufStride
	str	r3, [r2, #560]	@ <variable>.u32MadMvAddr, <variable>.u32MadSTBufAddrW
	ldr	r3, [r1, #52]	@ <variable>.s32Repeat, <variable>.s32Repeat
	cmp	r3, #0	@ <variable>.s32Repeat,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r1, [r0, #20]	@ u32Addrtmp,
	ldr	r2, [r0, #16]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	ldr	ip, [r0, #12]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	str	r1, [r0, #12]	@ u32Addrtmp, <variable>.u32MadMvAddr
	str	r2, [r0, #20]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	str	ip, [r0, #16]	@ <variable>.u32MadMvAddr, <variable>.u32MadMvAddr
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_MadSet, .-ALG_MadSet
	.align	2
	.global	ALG_DeiDeInit
	.type	ALG_DeiDeInit, %function
ALG_DeiDeInit:
	.fnstart
.LFB1255:
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
	.size	ALG_DeiDeInit, .-ALG_DeiDeInit
	.align	2
	.global	ALG_SetDeiDbgPara
	.type	ALG_SetDeiDbgPara, %function
ALG_SetDeiDbgPara:
	.fnstart
.LFB1258:
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
	mov	r2, #572	@,
	mov	r1, r0	@ pstPqDeiCoef, pstPqDeiCoef
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_SetDeiDbgPara, .-ALG_SetDeiDbgPara
	.align	2
	.global	ALG_GetDeiDbgPara
	.type	ALG_GetDeiDbgPara, %function
ALG_GetDeiDbgPara:
	.fnstart
.LFB1259:
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
	movw	r1, #:lower16:.LANCHOR0	@,
	mov	r2, #572	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_GetDeiDbgPara, .-ALG_GetDeiDbgPara
	.align	2
	.global	ALG_DeiInit
	.type	ALG_DeiInit, %function
ALG_DeiInit:
	.fnstart
.LFB1252:
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
	mov	r4, r0	@ pstDeiRtlPara, pstDeiRtlPara
	bl	MadThdParaInit	@
	add	r0, r4, #572	@, pstDeiRtlPara,
	bl	FmdThdParaInit	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ALG_DeiInit, .-ALG_DeiInit
	.align	2
	.global	ALG_DeiRst
	.type	ALG_DeiRst, %function
ALG_DeiRst:
	.fnstart
.LFB1256:
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
	bl	ALG_FmdReset	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_DeiRst, .-ALG_DeiRst
	.align	2
	.global	ALG_DeiSet
	.type	ALG_DeiSet, %function
ALG_DeiSet:
	.fnstart
.LFB1257:
	@ args = 4, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #172
	sub	sp, sp, #172	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ pstDeiDrvPara, pstDeiDrvPara
	mov	r5, r0	@ pstDeiMem, pstDeiMem
	sub	r0, fp, #200	@,,
	mov	r7, r3	@ pstDeiRtlOutPara, pstDeiRtlOutPara
	mov	r6, r2	@ pstDeiRtlPara, pstDeiRtlPara
	bl	ALG_GetFmdDbgPara	@
	ldr	r3, [r4, #16]	@ <variable>.bDeiRst, <variable>.bDeiRst
	cmp	r3, #0	@ <variable>.bDeiRst,
	bne	.L36	@,
.L30:
	ldr	ip, [r5, #524]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
	mov	r2, #960	@ tmp144,
	str	ip, [r6, #556]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadRtlPara.u32MadSTBufAddrR
	ldr	r1, [r5, #516]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
	str	r2, [r6, #564]	@ tmp144, <variable>.stMadRtlPara.u32MadSTBufStride
	str	r1, [r6, #560]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadRtlPara.u32MadSTBufAddrW
	ldr	r0, [r4, #52]	@ <variable>.s32Repeat, <variable>.s32Repeat
	cmp	r0, #0	@ <variable>.s32Repeat,
	bne	.L31	@,
	ldr	r0, [r5, #524]	@ u32Addrtmp,
	ldr	r3, [r5, #520]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
	ldr	lr, [r5, #516]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
	str	r0, [r5, #516]	@ u32Addrtmp, <variable>.stMadMem.u32MadMvAddr
	str	r3, [r5, #524]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
	str	lr, [r5, #520]	@ <variable>.stMadMem.u32MadMvAddr, <variable>.stMadMem.u32MadMvAddr
.L31:
	ldr	r2, [fp, #4]	@ bAlgDebugEn, bAlgDebugEn
	mov	r1, #0	@ tmp148,
	str	r1, [r6, #568]	@ tmp148, <variable>.stMadRtlPara.bMadMvInfoStp
	cmp	r2, #1	@ bAlgDebugEn,
	beq	.L37	@,
	mov	r3, #1	@ tmp156,
	mov	r0, r5	@, pstDeiMem
	mov	r1, r4	@, pstDeiDrvPara
	mov	r2, r7	@, pstDeiRtlOutPara
	str	r3, [r4, #36]	@ tmp156, <variable>.s32Pld22Md
	str	r3, [r4, #20]	@ tmp156, <variable>.FodEnable
	str	r3, [r4, #24]	@ tmp156, <variable>.Pld22Enable
	str	r3, [r4, #28]	@ tmp156, <variable>.Pld32Enable
	str	r3, [r4, #32]	@ tmp156, <variable>.EdgeSmoothEn
	bl	ALG_FmdSet	@
.L34:
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L36:
	mov	r0, r5	@, pstDeiMem
	mov	r1, r4	@, pstDeiDrvPara
	mov	r2, r6	@, pstDeiRtlPara
	bl	ALG_DeiRst	@
	b	.L30	@
.L37:
	ldr	ip, [fp, #-184]	@ stFmdPara.stPqFmdCtrl.u32Edge_smooth_en, stFmdPara.stPqFmdCtrl.u32Edge_smooth_en
	mov	r0, r5	@, pstDeiMem
	ldr	lr, [fp, #-196]	@ stFmdPara.stPqFmdCtrl.u32Pd22_en, stFmdPara.stPqFmdCtrl.u32Pd22_en
	mov	r1, r4	@, pstDeiDrvPara
	ldr	r3, [fp, #-188]	@ stFmdPara.stPqFmdCtrl.u32Pd22_mode, stFmdPara.stPqFmdCtrl.u32Pd22_mode
	mov	r2, r7	@, pstDeiRtlOutPara
	ldr	r5, [fp, #-200]	@ stFmdPara.stPqFmdCtrl.u32Pd32_en, stFmdPara.stPqFmdCtrl.u32Pd32_en
	ldr	r8, [fp, #-192]	@ stFmdPara.stPqFmdCtrl.u32Fod_en_mode, stFmdPara.stPqFmdCtrl.u32Fod_en_mode
	str	ip, [r4, #32]	@ stFmdPara.stPqFmdCtrl.u32Edge_smooth_en, <variable>.EdgeSmoothEn
	str	lr, [r4, #24]	@ stFmdPara.stPqFmdCtrl.u32Pd22_en, <variable>.Pld22Enable
	str	r3, [r4, #36]	@ stFmdPara.stPqFmdCtrl.u32Pd22_mode, <variable>.s32Pld22Md
	str	r8, [r4, #20]	@ stFmdPara.stPqFmdCtrl.u32Fod_en_mode, <variable>.FodEnable
	str	r5, [r4, #28]	@ stFmdPara.stPqFmdCtrl.u32Pd32_en, <variable>.Pld32Enable
	bl	ALG_FmdSet	@
	mov	r0, r6	@, pstDeiRtlPara
	bl	MadThdParaInit	@
	add	r0, r6, #572	@, pstDeiRtlPara,
	bl	FmdThdParaInit	@
	ldr	ip, [fp, #-200]	@ stFmdPara.stPqFmdCtrl.u32Pd32_en, stFmdPara.stPqFmdCtrl.u32Pd32_en
	cmp	ip, #0	@ stFmdPara.stPqFmdCtrl.u32Pd32_en,
	bne	.L34	@,
	ldr	r0, [fp, #-196]	@ stFmdPara.stPqFmdCtrl.u32Pd22_en, stFmdPara.stPqFmdCtrl.u32Pd22_en
	cmp	r0, #0	@ stFmdPara.stPqFmdCtrl.u32Pd22_en,
	bne	.L34	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp162,
	movt	ip, #:upper16:.LANCHOR0	@ tmp162,
	ldr	r2, [ip, #0]	@ g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_l, g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_l
	str	r2, [r7, #4]	@ g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_l, <variable>.stFmdRtlOutPara.DieOutSelLum
	ldr	r1, [ip, #4]	@ g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_c, g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_c
	str	r1, [r7, #8]	@ g_stDeiPara.stPqDeiCtrl.u32Die_out_sel_c, <variable>.stFmdRtlOutPara.DieOutSelChr
	b	.L34	@
	.fnend
	.size	ALG_DeiSet, .-ALG_DeiSet
	.align	2
	.global	ALG_MadDeInit
	.type	ALG_MadDeInit, %function
ALG_MadDeInit:
	.fnstart
.LFB1250:
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
	ldr	r3, [r0, #0]	@ <variable>.stMBuf.u32StartVirAddr, <variable>.stMBuf.u32StartVirAddr
	mov	r4, r0	@ pstMadMem, pstMadMem
	cmp	r3, #0	@ <variable>.stMBuf.u32StartVirAddr,
	bne	.L42	@,
	mov	r0, r3	@, <variable>.stMBuf.u32StartVirAddr
	movw	r2, #:lower16:.LANCHOR1	@,
	mov	r1, #37	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #402	@,
	movw	ip, #:lower16:.LC0	@ tmp137,
	movt	ip, #:upper16:.LC0	@ tmp137,
	str	ip, [sp, #0]	@ tmp137,
	bl	HI_LogOut	@
.L41:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L42:
	bl	HI_DRV_MMZ_UnmapAndRelease	@
	mov	r3, #0	@ tmp135,
	str	r3, [r4, #0]	@ tmp135, <variable>.stMBuf.u32StartVirAddr
	b	.L41	@
	.fnend
	.size	ALG_MadDeInit, .-ALG_MadDeInit
	.align	2
	.global	ALG_DeiInfoDeInit
	.type	ALG_DeiInfoDeInit, %function
ALG_DeiInfoDeInit:
	.fnstart
.LFB1254:
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
	add	r0, r0, #504	@, pstDeiMem,
	bl	ALG_MadDeInit	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_DeiInfoDeInit, .-ALG_DeiInfoDeInit
	.align	2
	.global	ALG_MadInit
	.type	ALG_MadInit, %function
ALG_MadInit:
	.fnstart
.LFB1249:
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
	mov	r1, #0	@,
	mov	r4, r0	@ pstMadMem, pstMadMem
	movw	r2, #:lower16:1555200	@,
	movw	r0, #:lower16:.LC1	@,
	movt	r2, #:upper16:1555200	@,
	movt	r0, #:upper16:.LC1	@,
	mov	r3, r1	@,
	str	r4, [sp, #0]	@ pstMadMem,
	bl	HI_DRV_MMZ_AllocAndMap	@
	subs	r5, r0, #0	@ nRet,
	bne	.L49	@,
	mov	r0, r4	@, pstMadMem
	movw	r1, #:lower16:8323199	@,
	movt	r1, #:upper16:8323199	@,
	bl	ALG_FLUSHDATA	@
	ldr	r3, [r4, #4]	@ D.27450, <variable>.stMBuf.u32StartPhyAddr
	mov	r0, r5	@ D.27448, nRet
	add	r2, r3, #516096	@ tmp146, D.27450,
	add	ip, r3, #1036288	@ tmp148, D.27450,
	add	r1, r2, #2304	@ tmp146, tmp146,
	str	r3, [r4, #12]	@ D.27450, <variable>.u32MadMvAddr
	add	r2, ip, #512	@ tmp148, tmp148,
	str	r1, [r4, #16]	@ tmp146, <variable>.u32MadMvAddr
	str	r2, [r4, #20]	@ tmp148, <variable>.u32MadMvAddr
.L47:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L49:
	mov	r0, #0	@,
	mov	r1, #37	@,
	ldr	r2, .L50	@,
	movw	r3, #377	@,
	movw	ip, #:lower16:.LC2	@ tmp143,
	movt	ip, #:upper16:.LC2	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27448,
	b	.L47	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR1+16
	.fnend
	.size	ALG_MadInit, .-ALG_MadInit
	.align	2
	.global	ALG_DeiInfoInit
	.type	ALG_DeiInfoInit, %function
ALG_DeiInfoInit:
	.fnstart
.LFB1253:
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
	mov	r4, r0	@ pstDeiMem, pstDeiMem
	add	r0, r0, #504	@, pstDeiMem,
	bl	ALG_MadInit	@
	cmp	r0, #0	@,
	bne	.L57	@,
	mov	r0, r4	@, pstDeiMem
	bl	ALG_FmdInit	@
	cmp	r0, #0	@ s32Ret.748
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r0, #:lower16:.LC4	@,
	movt	r0, #:upper16:.LC4	@,
	bl	printk	@
	mvn	r0, #0	@ D.27498,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L57:
	movw	r0, #:lower16:.LC3	@,
	movt	r0, #:upper16:.LC3	@,
	bl	printk	@
	mvn	r0, #0	@ D.27498,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ALG_DeiInfoInit, .-ALG_DeiInfoInit
	.global	g_stDeiPara
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.27456, %object
	.size	__func__.27456, 14
__func__.27456:
	.ascii	"ALG_MadDeInit\000"
	.space	2
	.type	__func__.27440, %object
	.size	__func__.27440, 12
__func__.27440:
	.ascii	"ALG_MadInit\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Release MadBuf Error\012\000"
	.space	2
.LC1:
	.ascii	"VPSS_MADMotionInfoBuf\000"
	.space	2
.LC2:
	.ascii	"Get VPSS_MADMotionInfoBuf failed.\012\000"
	.space	1
.LC3:
	.ascii	"Get VPSS_MADMotionInfoBuf failed\012\000"
	.space	2
.LC4:
	.ascii	"Get VPSS_FMDContextInfoBuf failed\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stDeiPara, %object
	.size	g_stDeiPara, 572
g_stDeiPara:
	.space	572
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
