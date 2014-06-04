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
	.file	"vpss_alg_dnr.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_dnr)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_dnr.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_dnr.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_dnr.o -O2 -Wall -Wundef
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
	.global	DnrThdParaInitDefault
	.type	DnrThdParaInitDefault, %function
DnrThdParaInitDefault:
	.fnstart
.LFB593:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #8	@ tmp142,
	mov	r0, #1	@ tmp134,
	mov	r1, #4	@ tmp156,
	mov	ip, #0	@ tmp152,
	mov	r4, #16	@ tmp148,
	str	r2, [r3, #52]	@ tmp142, g_stDnrPara.stPqDnrDbFilter.u32db_betascale
	str	r4, [r3, #72]	@ tmp148, g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_maxsimilarpixdiff
	mov	r4, #6	@ tmp158,
	str	r0, [r3, #96]	@ tmp134, g_stDnrPara.stPqDnrInfo.u32thr_intl_colcnt
	str	r4, [r3, #64]	@ tmp158, g_stDnrPara.stPqDnrDbFilter.u32detail_img_qpthr
	mov	r4, #2	@ tmp164,
	str	r1, [r3, #92]	@ tmp156, g_stDnrPara.stPqDnrInfo.u32thr_intl_cnt
	str	r4, [r3, #48]	@ tmp164, g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffhor
	mov	r4, #14	@ tmp168,
	str	ip, [r3, #28]	@ tmp152, g_stDnrPara.stPqDnrDbFilter.u32db_text_en
	str	r4, [r3, #44]	@ tmp168, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffhor
	mov	r4, #64	@ tmp172,
	str	r0, [r3, #0]	@ tmp134, g_stDnrPara.stPqDnrCtrl.u32Dr_en
	str	r4, [r3, #84]	@ tmp172, g_stDnrPara.stPqDnrInfo.u32thd_cntrst8
	mov	r4, #12	@ tmp182,
	str	r0, [r3, #4]	@ tmp134, g_stDnrPara.stPqDnrCtrl.u32Db_en
	str	r4, [r3, #16]	@ tmp182, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxgrad
	mov	r4, #40	@ tmp174,
	str	r0, [r3, #12]	@ tmp134, g_stDnrPara.stPqDnrCtrl.u32Db_en_hor
	str	r4, [r3, #88]	@ tmp174, g_stDnrPara.stPqDnrInfo.u32thd_maxgrad
	str	r0, [r3, #8]	@ tmp134, g_stDnrPara.stPqDnrCtrl.u32Db_en_vert
	str	r2, [r3, #80]	@ tmp142, g_stDnrPara.stPqDnrDrFilter.u32Dr_alphascale
	str	r2, [r3, #76]	@ tmp142, g_stDnrPara.stPqDnrDrFilter.u32Dr_betascale
	str	r2, [r3, #68]	@ tmp142, g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_flat3x3zone
	str	r2, [r3, #24]	@ tmp142, g_stDnrPara.stPqDnrDbFilter.u32picest_qp
	str	ip, [r3, #32]	@ tmp152, g_stDnrPara.stPqDnrDbFilter.u32db_useweakflt
	str	r2, [r3, #20]	@ tmp142, g_stDnrPara.stPqDnrDbFilter.u32db_thr_edge
	str	r1, [r3, #60]	@ tmp156, g_stDnrPara.stPqDnrDbFilter.u32db_thr_largesmooth
	str	r1, [r3, #56]	@ tmp156, g_stDnrPara.stPqDnrDbFilter.u32db_alphascale
	str	r1, [r3, #40]	@ tmp156, g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffvert
	str	r1, [r3, #36]	@ tmp156, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffvert
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	DnrThdParaInitDefault, .-DnrThdParaInitDefault
	.align	2
	.global	DnrThdParaInit
	.type	DnrThdParaInit, %function
DnrThdParaInit:
	.fnstart
.LFB594:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp134,
	movt	ip, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r2, [ip, #4]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en, g_stDnrPara.stPqDnrCtrl.u32Db_en
	str	r2, [r0, #76]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en, <variable>.stDnrCtrl.dbEn
	ldr	r1, [ip, #0]	@ g_stDnrPara.stPqDnrCtrl.u32Dr_en, g_stDnrPara.stPqDnrCtrl.u32Dr_en
	str	r1, [r0, #72]	@ g_stDnrPara.stPqDnrCtrl.u32Dr_en, <variable>.stDnrCtrl.drEn
	ldr	r3, [ip, #12]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en_hor, g_stDnrPara.stPqDnrCtrl.u32Db_en_hor
	str	r3, [r0, #80]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en_hor, <variable>.stDnrCtrl.dbEnHort
	ldr	r2, [ip, #8]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en_vert, g_stDnrPara.stPqDnrCtrl.u32Db_en_vert
	str	r2, [r0, #84]	@ g_stDnrPara.stPqDnrCtrl.u32Db_en_vert, <variable>.stDnrCtrl.dbEnVert
	ldr	r1, [ip, #80]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_alphascale, g_stDnrPara.stPqDnrDrFilter.u32Dr_alphascale
	str	r1, [r0, #0]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_alphascale, <variable>.stDrThd.dralphascale
	ldr	r3, [ip, #76]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_betascale, g_stDnrPara.stPqDnrDrFilter.u32Dr_betascale
	str	r3, [r0, #4]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_betascale, <variable>.stDrThd.drbetascale
	ldr	r2, [ip, #68]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_flat3x3zone, g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_flat3x3zone
	str	r2, [r0, #8]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_flat3x3zone, <variable>.stDrThd.drthrflat3x3zone
	ldr	r1, [ip, #72]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_maxsimilarpixdiff, g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_maxsimilarpixdiff
	str	r1, [r0, #12]	@ g_stDnrPara.stPqDnrDrFilter.u32Dr_thr_maxsimilarpixdiff, <variable>.stDrThd.drthrmaxsimilarpixdiff
	mov	r1, #0	@ tmp156,
	ldr	r3, [ip, #24]	@ g_stDnrPara.stPqDnrDbFilter.u32picest_qp, g_stDnrPara.stPqDnrDbFilter.u32picest_qp
	str	r3, [r0, #16]	@ g_stDnrPara.stPqDnrDbFilter.u32picest_qp, <variable>.stDbThd.picestqp
	ldr	r2, [ip, #32]	@ g_stDnrPara.stPqDnrDbFilter.u32db_useweakflt, g_stDnrPara.stPqDnrDbFilter.u32db_useweakflt
	str	r2, [r0, #20]	@ g_stDnrPara.stPqDnrDbFilter.u32db_useweakflt, <variable>.stDbThd.dbuseweakflt
	ldr	r3, [ip, #20]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_edge, g_stDnrPara.stPqDnrDbFilter.u32db_thr_edge
	str	r1, [r0, #24]	@ tmp156, <variable>.stDbThd.dbvertasprog
	str	r3, [r0, #32]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_edge, <variable>.stDbThd.dbthredge
	ldr	r2, [ip, #60]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_largesmooth, g_stDnrPara.stPqDnrDbFilter.u32db_thr_largesmooth
	str	r2, [r0, #44]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_largesmooth, <variable>.stDbThd.dbthrlagesmooth
	ldr	r3, [ip, #64]	@ g_stDnrPara.stPqDnrDbFilter.u32detail_img_qpthr, g_stDnrPara.stPqDnrDbFilter.u32detail_img_qpthr
	str	r3, [r0, #28]	@ g_stDnrPara.stPqDnrDbFilter.u32detail_img_qpthr, <variable>.stDbThd.detailimgqpthr
	ldr	r1, [ip, #56]	@ g_stDnrPara.stPqDnrDbFilter.u32db_alphascale, g_stDnrPara.stPqDnrDbFilter.u32db_alphascale
	str	r1, [r0, #36]	@ g_stDnrPara.stPqDnrDbFilter.u32db_alphascale, <variable>.stDbThd.dbalphascale
	ldr	r2, [ip, #52]	@ g_stDnrPara.stPqDnrDbFilter.u32db_betascale, g_stDnrPara.stPqDnrDbFilter.u32db_betascale
	str	r2, [r0, #40]	@ g_stDnrPara.stPqDnrDbFilter.u32db_betascale, <variable>.stDbThd.dbbetascale
	ldr	r3, [ip, #48]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffhor, g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffhor
	str	r3, [r0, #56]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffhor, <variable>.stDbThd.dbthrleastblkdiffhor
	ldr	r1, [ip, #40]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffvert, g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffvert
	str	r1, [r0, #60]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_leastblkdiffvert, <variable>.stDbThd.dbthrleastblkdiffvert
	ldr	r2, [ip, #44]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffhor, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffhor
	str	r2, [r0, #48]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffhor, <variable>.stDbThd.dbthrmaxdiffhor
	ldr	r3, [ip, #36]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffvert, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffvert
	str	r3, [r0, #52]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxdiffvert, <variable>.stDbThd.dbthrmaxdiffvert
	ldr	r1, [ip, #28]	@ g_stDnrPara.stPqDnrDbFilter.u32db_text_en, g_stDnrPara.stPqDnrDbFilter.u32db_text_en
	str	r1, [r0, #64]	@ g_stDnrPara.stPqDnrDbFilter.u32db_text_en, <variable>.stDbThd.dbTextEn
	ldr	r2, [ip, #16]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxgrad, g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxgrad
	str	r2, [r0, #68]	@ g_stDnrPara.stPqDnrDbFilter.u32db_thr_maxgrad, <variable>.stDbThd.dbThrMaxGrad
	ldr	r3, [ip, #92]	@ g_stDnrPara.stPqDnrInfo.u32thr_intl_cnt, g_stDnrPara.stPqDnrInfo.u32thr_intl_cnt
	str	r3, [r0, #88]	@ g_stDnrPara.stPqDnrInfo.u32thr_intl_cnt, <variable>.stDetCtrl.ArThrInterlaceCnt
	ldr	r1, [ip, #96]	@ g_stDnrPara.stPqDnrInfo.u32thr_intl_colcnt, g_stDnrPara.stPqDnrInfo.u32thr_intl_colcnt
	str	r1, [r0, #92]	@ g_stDnrPara.stPqDnrInfo.u32thr_intl_colcnt, <variable>.stDetCtrl.ArThrIntlColCnt
	ldr	r2, [ip, #84]	@ g_stDnrPara.stPqDnrInfo.u32thd_cntrst8, g_stDnrPara.stPqDnrInfo.u32thd_cntrst8
	str	r2, [r0, #96]	@ g_stDnrPara.stPqDnrInfo.u32thd_cntrst8, <variable>.stDetCtrl.DrThrPeak8x8Zone
	ldr	r3, [ip, #88]	@ g_stDnrPara.stPqDnrInfo.u32thd_maxgrad, g_stDnrPara.stPqDnrInfo.u32thd_maxgrad
	str	r3, [r0, #100]	@ g_stDnrPara.stPqDnrInfo.u32thd_maxgrad, <variable>.stDetCtrl.DrThrEdgeGrad
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DnrThdParaInit, .-DnrThdParaInit
	.align	2
	.global	ALG_DnrInit
	.type	ALG_DnrInit, %function
ALG_DnrInit:
	.fnstart
.LFB595:
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
	mov	r5, r0	@ pstDrvPara, pstDrvPara
	mov	r0, r1	@, pstDnrRtlPara
	mov	r4, r1	@ pstDnrRtlPara, pstDnrRtlPara
	bl	DnrThdParaInit	@
	ldr	r0, [r5, #12]	@ <variable>.dbEnVert, <variable>.dbEnVert
	ldr	r1, [r5, #4]	@ <variable>.dbEn, <variable>.dbEn
	ldr	r2, [r5, #0]	@ <variable>.drEn, <variable>.drEn
	ldr	r3, [r5, #8]	@ <variable>.dbEnHort, <variable>.dbEnHort
	str	r0, [r4, #84]	@ <variable>.dbEnVert, <variable>.stDnrCtrl.dbEnVert
	str	r1, [r4, #76]	@ <variable>.dbEn, <variable>.stDnrCtrl.dbEn
	str	r2, [r4, #72]	@ <variable>.drEn, <variable>.stDnrCtrl.drEn
	str	r3, [r4, #80]	@ <variable>.dbEnHort, <variable>.stDnrCtrl.dbEnHort
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ALG_DnrInit, .-ALG_DnrInit
	.align	2
	.global	ALG_SetDnrDbgPara
	.type	ALG_SetDnrDbgPara, %function
ALG_SetDnrDbgPara:
	.fnstart
.LFB596:
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
	mov	r2, #100	@,
	mov	r1, r0	@ pstPqDnrCoef, pstPqDnrCoef
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_SetDnrDbgPara, .-ALG_SetDnrDbgPara
	.align	2
	.global	ALG_GetDnrDbgPara
	.type	ALG_GetDnrDbgPara, %function
ALG_GetDnrDbgPara:
	.fnstart
.LFB597:
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
	mov	r2, #100	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_GetDnrDbgPara, .-ALG_GetDnrDbgPara
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stDnrPara, %object
	.size	g_stDnrPara, 100
g_stDnrPara:
	.space	100
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
