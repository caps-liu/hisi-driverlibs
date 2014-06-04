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
	.file	"pulldown.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(pulldown)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.pulldown.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/pulldown.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/pulldown.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fno-pic -fverbose-asm
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
	.global	InitMatrix
	.type	InitMatrix, %function
InitMatrix:
	.fnstart
.LFB0:
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
	cmp	r1, #0	@ num
	ldmlefd	sp, {fp, sp, pc}	@
	mov	r3, #1	@ i,
	cmp	r3, r1	@ i, num
	sub	ip, r1, #1	@ tmp167, num,
	str	r2, [r0, #0]	@ value,* p
	and	ip, ip, r3	@ tmp169, tmp167,
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	ip, #0	@ tmp169,
	beq	.L3	@,
	mov	r3, #2	@ i,
	cmp	r3, r1	@ i, num
	str	r2, [r0, #4]	@ value,
	ldmeqfd	sp, {fp, sp, pc}	@
.L3:
	add	ip, r3, #1	@ tmp170, i,
	str	r2, [r0, r3, asl #2]	@ value,* p
	add	r3, ip, #1	@ i, tmp170,
	cmp	r3, r1	@ i, num
	str	r2, [r0, ip, asl #2]	@ value,* p
	bne	.L3	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitMatrix, .-InitMatrix
	.align	2
	.global	InitPlldwn32
	.type	InitPlldwn32, %function
InitPlldwn32:
	.fnstart
.LFB1:
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
	mov	ip, r0, asl #2	@ tmp236, mbNum,
	add	r4, ip, r0	@ tmp237, tmp236, mbNum
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp135,
	mov	r1, #1	@ tmp143,
	mov	r0, r0, asl #1	@ tmp242, mbNum,
	str	r2, [r3, #0]	@ tmp135, ctxt32_T.frame_cnt
	mov	r4, r4, asl #2	@ tmp238, tmp237,
	str	r2, [r3, #4]	@ tmp135, ctxt32_T.pdcnt
	mov	r5, #2	@ tmp141,
	str	r2, [r3, #12]	@ tmp135, ctxt32_T.flg
	str	r1, [r3, #124]	@ tmp143, ctxt32_B.TV_c
	str	r5, [r3, #8]	@ tmp141, ctxt32_T.btmode
	str	r1, [r3, #16]	@ tmp143, ctxt32_T.FV_c
	str	r1, [r3, #20]	@ tmp143, ctxt32_T.SV_c
	str	r1, [r3, #24]	@ tmp143, ctxt32_T.TV_c
	str	r2, [r3, #28]	@ tmp135, ctxt32_T.FV_p
	str	r2, [r3, #32]	@ tmp135, ctxt32_T.SV_p
	str	r2, [r3, #36]	@ tmp135, ctxt32_T.TV_p
	str	r2, [r3, #40]	@ tmp135, ctxt32_T.FM
	str	r2, [r3, #44]	@ tmp135, ctxt32_T.FM
	str	r2, [r3, #48]	@ tmp135, ctxt32_T.FM
	str	r2, [r3, #52]	@ tmp135, ctxt32_T.FM
	str	r2, [r3, #56]	@ tmp135, ctxt32_T.FM
	str	r2, [r3, #60]	@ tmp135, ctxt32_T.SM
	str	r2, [r3, #64]	@ tmp135, ctxt32_T.SM
	str	r2, [r3, #68]	@ tmp135, ctxt32_T.SM
	str	r2, [r3, #72]	@ tmp135, ctxt32_T.SM
	str	r2, [r3, #76]	@ tmp135, ctxt32_T.SM
	str	r2, [r3, #80]	@ tmp135, ctxt32_T.TM
	str	r2, [r3, #84]	@ tmp135, ctxt32_T.TM
	str	r2, [r3, #88]	@ tmp135, ctxt32_T.TM
	str	r2, [r3, #92]	@ tmp135, ctxt32_T.TM
	str	r2, [r3, #96]	@ tmp135, ctxt32_T.TM
	str	r2, [r3, #100]	@ tmp135, ctxt32_B.frame_cnt
	str	r2, [r3, #104]	@ tmp135, ctxt32_B.pdcnt
	str	r2, [r3, #112]	@ tmp135, ctxt32_B.flg
	str	r2, [r3, #108]	@ tmp135, ctxt32_B.btmode
	str	r1, [r3, #116]	@ tmp143, ctxt32_B.FV_c
	str	r1, [r3, #120]	@ tmp143, ctxt32_B.SV_c
	str	r2, [r3, #128]	@ tmp135, ctxt32_B.FV_p
	str	r2, [r3, #132]	@ tmp135, ctxt32_B.SV_p
	str	r0, [r3, #208]	@ tmp242, Thd32.TThresh
	str	r2, [r3, #196]	@ tmp135, ctxt32_B.TM
	str	r4, [r3, #200]	@ tmp238, Thd32.FThresh
	str	ip, [r3, #204]	@ tmp236, Thd32.SThresh
	str	r2, [r3, #136]	@ tmp135, ctxt32_B.TV_p
	str	r2, [r3, #140]	@ tmp135, ctxt32_B.FM
	str	r2, [r3, #144]	@ tmp135, ctxt32_B.FM
	str	r2, [r3, #148]	@ tmp135, ctxt32_B.FM
	str	r2, [r3, #152]	@ tmp135, ctxt32_B.FM
	str	r2, [r3, #156]	@ tmp135, ctxt32_B.FM
	str	r2, [r3, #160]	@ tmp135, ctxt32_B.SM
	str	r2, [r3, #164]	@ tmp135, ctxt32_B.SM
	str	r2, [r3, #168]	@ tmp135, ctxt32_B.SM
	str	r2, [r3, #172]	@ tmp135, ctxt32_B.SM
	str	r2, [r3, #176]	@ tmp135, ctxt32_B.SM
	str	r2, [r3, #180]	@ tmp135, ctxt32_B.TM
	str	r2, [r3, #184]	@ tmp135, ctxt32_B.TM
	str	r2, [r3, #188]	@ tmp135, ctxt32_B.TM
	str	r2, [r3, #192]	@ tmp135, ctxt32_B.TM
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	InitPlldwn32, .-InitPlldwn32
	.align	2
	.global	InitPlldwn1312
	.type	InitPlldwn1312, %function
InitPlldwn1312:
	.fnstart
.LFB2:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp207,
	movt	r1, #:upper16:.LANCHOR0	@ tmp207,
	mov	r4, #0	@ tmp148,
	add	ip, r1, #212	@ ivtmp.203, tmp207,
	add	r2, r1, #312	@ D.2762, tmp207,
	add	r3, r1, #216	@ ivtmp.204, tmp207,
	mov	r5, r4	@ tmp214, tmp148
	mov	r6, #1	@ tmp156,
	str	r4, [r1, #212]	@ tmp148, ctxt1312_T.frame_cnt
	str	r4, [r1, #216]	@ tmp148, ctxt1312_T.pdcnt
	mov	r7, #2	@ tmp154,
	str	r4, [r1, #224]	@ tmp148, ctxt1312_T.flg
	str	r6, [r1, #236]	@ tmp156, ctxt1312_T.TV_c
	str	r7, [r1, #220]	@ tmp154, ctxt1312_T.btmode
	str	r6, [r1, #228]	@ tmp156, ctxt1312_T.FV_c
	str	r6, [r1, #232]	@ tmp156, ctxt1312_T.SV_c
	str	r4, [r1, #240]	@ tmp148, ctxt1312_T.FV_p
	str	r4, [r1, #244]	@ tmp148, ctxt1312_T.SV_p
	str	r4, [r1, #248]	@ tmp148, ctxt1312_T.TV_p
	str	r4, [ip, #52]	@ tmp214,
.L15:
	add	r4, r3, #4	@ tmp236, ivtmp.204,
	str	r5, [r3, #52]	@ tmp214,
	add	r3, r4, #4	@ ivtmp.204, tmp236,
	cmp	r3, r2	@ ivtmp.204, D.2762
	str	r5, [r4, #52]	@ tmp214,
	bne	.L15	@,
	ldr	r6, .L56	@ ivtmp.201,
	add	r3, r6, #4	@ ivtmp.201, ivtmp.201,
	str	r5, [r6, #152]	@ tmp213,
.L16:
	add	r7, r3, #4	@ tmp235, ivtmp.201,
	str	r5, [r3, #152]	@ tmp213,
	add	r3, r7, #4	@ ivtmp.201, tmp235,
	cmp	r2, r3	@ D.2762, ivtmp.201
	str	r5, [r7, #152]	@ tmp213,
	bne	.L16	@,
	ldr	r3, .L56+4	@ ivtmp.203,
	mov	r4, #0	@ tmp212,
	str	r4, [ip, #252]	@ tmp212,
.L23:
	add	ip, r3, #4	@ tmp230, ivtmp.203,
	str	r4, [r3, #252]	@ tmp212,
	add	r3, ip, #4	@ ivtmp.203, tmp230,
	mov	r6, r4	@ tmp170, tmp212
	cmp	r2, r3	@ D.2762, ivtmp.203
	str	r4, [ip, #252]	@ tmp212,
	bne	.L23	@,
	ldr	r5, .L56+8	@ ivtmp.174,
	mov	r2, #1	@ tmp180,
	str	r6, [r1, #564]	@ tmp170, ctxt1312_B.frame_cnt
	mov	r7, #2	@ tmp178,
	add	ip, r5, #100	@ D.2732, ivtmp.174,
	add	r3, r5, #4	@ ivtmp.206, ivtmp.174,
	str	r2, [r1, #588]	@ tmp180, ctxt1312_B.TV_c
	str	r7, [r1, #572]	@ tmp178, ctxt1312_B.btmode
	str	r6, [r1, #568]	@ tmp170, ctxt1312_B.pdcnt
	str	r6, [r1, #576]	@ tmp170, ctxt1312_B.flg
	str	r2, [r1, #580]	@ tmp180, ctxt1312_B.FV_c
	str	r2, [r1, #584]	@ tmp180, ctxt1312_B.SV_c
	str	r6, [r1, #592]	@ tmp170, ctxt1312_B.FV_p
	str	r6, [r1, #596]	@ tmp170, ctxt1312_B.SV_p
	str	r6, [r1, #600]	@ tmp170, ctxt1312_B.TV_p
	str	r4, [r5, #52]	@ tmp211,
.L18:
	add	r2, r3, #4	@ tmp225, ivtmp.206,
	str	r4, [r3, #52]	@ tmp211,
	add	r3, r2, #4	@ ivtmp.206, tmp225,
	cmp	r3, ip	@ ivtmp.206, D.2732
	str	r4, [r2, #52]	@ tmp211,
	bne	.L18	@,
	ldr	r2, .L56+8	@ ivtmp.205,
	add	r3, r2, #4	@ ivtmp.205, ivtmp.205,
	str	r4, [r2, #152]	@ tmp210,
.L19:
	add	r2, r3, #4	@ tmp224, ivtmp.205,
	str	r4, [r3, #152]	@ tmp210,
	add	r3, r2, #4	@ ivtmp.205, tmp224,
	cmp	ip, r3	@ D.2732, ivtmp.205
	str	r4, [r2, #152]	@ tmp210,
	bne	.L19	@,
	ldr	r3, .L56+12	@ ivtmp.174,
	mov	r4, #0	@ tmp209,
	str	r4, [r5, #252]	@ tmp209,
.L22:
	add	r2, r3, #4	@ tmp219, ivtmp.174,
	str	r4, [r3, #252]	@ tmp209,
	add	r3, r2, #4	@ ivtmp.174, tmp219,
	cmp	ip, r3	@ D.2732, ivtmp.174
	str	r4, [r2, #252]	@ tmp209,
	bne	.L22	@,
	mov	r3, r0, asl #2	@ tmp196, mbNum,
	mov	r2, r0, asl #1	@ tmp203, mbNum,
	add	ip, r3, r0	@ tmp197, tmp196, mbNum
	str	r3, [r1, #920]	@ tmp196, Thd1312.SThresh
	str	r2, [r1, #924]	@ tmp203, Thd1312.TThresh
	mov	r0, ip, asr #2	@ tmp205, tmp197,
	mov	r3, ip, asl #2	@ tmp199, tmp197,
	str	r0, [r1, #928]	@ tmp205, Thd1312.zthr
	str	r3, [r1, #916]	@ tmp199, Thd1312.FThresh
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR0+212
	.word	.LANCHOR0+216
	.word	.LANCHOR0+564
	.word	.LANCHOR0+568
	.fnend
	.size	InitPlldwn1312, .-InitPlldwn1312
	.align	2
	.global	InitPulldown
	.type	InitPulldown, %function
InitPulldown:
	.fnstart
.LFB3:
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
	mov	r4, r0	@ mbNum, mbNum
	bl	InitPlldwn32	@
	mov	r0, r4	@, mbNum
	bl	InitPlldwn1312	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	InitPulldown, .-InitPulldown
	.align	2
	.global	minMatrix
	.type	minMatrix, %function
minMatrix:
	.fnstart
.LFB4:
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
	cmp	r1, #1	@ n,
	mov	r2, r0	@ pMatrix, pMatrix
	movle	r0, #0	@ min,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	ip, [r2, #0]	@ tmp139,* pMatrix
	mov	r3, #2	@ i,
	ldr	r0, [r2, #4]	@ tmp140,
	and	r4, r1, #1	@ tmp144, n,
	cmp	ip, r0	@ tmp139, tmp140
	movle	r0, #0	@, min
	movgt	r0, #1	@, min
	cmp	r3, r1	@ i, n
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r4, #0	@ tmp144,
	beq	.L64	@,
	ldr	r4, [r2, r0, asl #2]	@ tmp157,* pMatrix
	mov	r3, #3	@ i,
	ldr	ip, [r2, #8]	@ tmp158,
	cmp	r4, ip	@ tmp157, tmp158
	movgt	r0, #2	@ min,
	cmp	r3, r1	@ i, n
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L64:
	ldr	r6, [r2, r0, asl #2]	@ tmp149,* pMatrix
	add	ip, r3, #1	@ tmp145, i,
	ldr	r5, [r2, r3, asl #2]	@ tmp150,* pMatrix
	ldr	r4, [r2, ip, asl #2]	@ tmp155,* pMatrix
	cmp	r6, r5	@ tmp149, tmp150
	movgt	r0, r3	@ min, i
	add	r3, ip, #1	@ i, tmp145,
	ldr	r5, [r2, r0, asl #2]	@ tmp154,* pMatrix
	cmp	r5, r4	@ tmp154, tmp155
	movgt	r0, ip	@ min, tmp145
	cmp	r3, r1	@ i, n
	bne	.L64	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	minMatrix, .-minMatrix
	.align	2
	.global	index
	.type	index, %function
index:
	.fnstart
.LFB5:
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
	cmp	r1, #1	@ n,
	movle	r2, #0	@ min,
	ble	.L74	@,
	ldr	ip, [r0, #0]	@ tmp139,* pMatrix
	mov	r3, #2	@ i,
	ldr	r2, [r0, #4]	@ tmp140,
	and	r4, r1, #1	@ tmp144, n,
	cmp	ip, r2	@ tmp139, tmp140
	movle	r2, #0	@, min
	movgt	r2, #1	@, min
	cmp	r3, r1	@ i, n
	beq	.L74	@,
	cmp	r4, #0	@ tmp144,
	beq	.L76	@,
	ldr	r4, [r0, r2, asl #2]	@ tmp157,* pMatrix
	mov	r3, #3	@ i,
	ldr	ip, [r0, #8]	@ tmp158,
	cmp	r4, ip	@ tmp157, tmp158
	movgt	r2, #2	@ min,
	cmp	r3, r1	@ i, n
	beq	.L74	@,
.L76:
	ldr	r6, [r0, r2, asl #2]	@ tmp149,* pMatrix
	add	ip, r3, #1	@ tmp145, i,
	ldr	r5, [r0, r3, asl #2]	@ tmp150,* pMatrix
	ldr	r4, [r0, ip, asl #2]	@ tmp155,* pMatrix
	cmp	r6, r5	@ tmp149, tmp150
	movgt	r2, r3	@ min, i
	add	r3, ip, #1	@ i, tmp145,
	ldr	r5, [r0, r2, asl #2]	@ tmp154,* pMatrix
	cmp	r5, r4	@ tmp154, tmp155
	movgt	r2, ip	@ min, tmp145
	cmp	r3, r1	@ i, n
	bne	.L76	@,
.L74:
	rsb	r0, r2, r1	@, min, n
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	index, .-index
	.align	2
	.global	Plldwn32Dtct_T
	.type	Plldwn32Dtct_T, %function
Plldwn32Dtct_T:
	.fnstart
.LFB6:
	@ args = 44, pretend = 16, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp528,
	add	r9, fp, #4	@ tmp523,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp528,
	ldr	r5, [fp, #44]	@ pOutput32, pOutput32
	stmia	r9, {r0, r1, r2, r3}	@ tmp523,,,,
	ldr	sl, [r4, #52]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r8, [r4, #72]	@ ctxt32_T.SM, ctxt32_T.SM
	ldr	r7, [r4, #92]	@ ctxt32_T.TM, ctxt32_T.TM
	ldr	r0, [r4, #88]	@ ctxt32_T.TM, ctxt32_T.TM
	ldr	r9, [r4, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r6, [r4, #48]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	ip, [r4, #68]	@ ctxt32_T.SM, ctxt32_T.SM
	str	sl, [r4, #56]	@ ctxt32_T.FM, ctxt32_T.FM
	str	r8, [r4, #76]	@ ctxt32_T.SM, ctxt32_T.SM
	str	r7, [r4, #96]	@ ctxt32_T.TM, ctxt32_T.TM
	str	r0, [r4, #92]	@ ctxt32_T.TM, ctxt32_T.TM
	ldr	r7, [r4, #84]	@, ctxt32_T.TM
	ldr	r0, [r4, #64]	@, ctxt32_T.SM
	str	r9, [r4, #48]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r8, [r4, #40]	@, ctxt32_T.FM
	ldr	r9, [r4, #60]	@, ctxt32_T.SM
	ldr	sl, [r4, #80]	@, ctxt32_T.TM
	ldr	r3, [fp, #4]	@ InputCnt$FC_T, InputCnt.FC_T
	ldr	r2, [fp, #8]	@ InputCnt$SC_T, InputCnt.SC_T
	ldr	r1, [fp, #12]	@ InputCnt$TC_T, InputCnt.TC_T
	str	r6, [r4, #52]	@ ctxt32_T.FM, ctxt32_T.FM
	str	r0, [r4, #68]	@, ctxt32_T.SM
	str	ip, [r4, #72]	@ ctxt32_T.SM, ctxt32_T.SM
	str	r7, [r4, #88]	@, ctxt32_T.TM
	str	r8, [r4, #44]	@, ctxt32_T.FM
	str	r9, [r4, #64]	@, ctxt32_T.SM
	str	sl, [r4, #84]	@, ctxt32_T.TM
	ldr	r6, [fp, #40]	@ InputCnt$mbNum, InputCnt.mbNum
	str	r3, [r4, #40]	@ InputCnt$FC_T, ctxt32_T.FM
	ldr	r0, [r4, #12]	@ prephitmp.453, ctxt32_T.flg
	str	r2, [r4, #60]	@ InputCnt$SC_T, ctxt32_T.SM
	str	r1, [r4, #80]	@ InputCnt$TC_T, ctxt32_T.TM
	cmp	r0, #5	@ prephitmp.453,
	ldrls	pc, [pc, r0, asl #2]	@ prephitmp.453
	b	.L85	@
.L90:
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L88
	.word	.L88
	.word	.L89
.L86:
	ldr	r8, [r4, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	movw	ip, #:lower16:1717986919	@ tmp305,
	ldr	r9, [r4, #40]	@ ctxt32_T.FM, ctxt32_T.FM
	movt	ip, #:upper16:1717986919	@ tmp305,
	ldr	sl, [r4, #48]	@, ctxt32_T.FM
	movw	r0, #:lower16:.LANCHOR0	@ tmp299,
	cmp	r9, r8	@ ctxt32_T.FM, ctxt32_T.FM
	movle	r9, #0	@, min
	movgt	r9, #1	@, min
	movt	r0, #:upper16:.LANCHOR0	@ tmp299,
	mov	r8, r9, asl #2	@ tmp526, min,
	add	r7, r8, r4	@ tmp208, tmp526, tmp528
	ldr	r7, [r7, #40]	@ tmp211,
	cmp	r7, sl	@ tmp211,
	ldr	sl, [r4, #52]	@, ctxt32_T.FM
	movgt	r8, #8	@, tmp532,
	add	r7, r8, r4	@ tmp216, tmp532, tmp528
	movgt	r9, #2	@, min,
	ldr	r7, [r7, #40]	@ tmp219,
	cmp	r7, sl	@ tmp219,
	ldr	r7, [r4, #4]	@, ctxt32_T.pdcnt
	ldr	sl, [r4, #64]	@, ctxt32_T.SM
	movgt	r9, #3	@,,
	movgt	r8, #12	@, tmp534,
	str	r9, [fp, #-52]	@, %sfp
	add	r8, r8, r4	@ tmp224, tmp534, tmp528
	ldr	r9, [r4, #60]	@, ctxt32_T.SM
	str	r7, [fp, #-48]	@, %sfp
	cmp	r9, sl	@,
	movle	r9, #0	@,
	movgt	r9, #1	@,
	str	r9, [fp, #-72]	@, %sfp
	ldr	sl, [r8, #40]	@,
	mov	r8, r7, asr #31	@,,
	ldr	r7, [r4, #56]	@, ctxt32_T.FM
	str	r8, [fp, #-56]	@, %sfp
	mov	r8, r9, asl #2	@ tmp525,,
	str	sl, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-64]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	cmp	sl, r7	@,
	add	sl, r8, r4	@, tmp525, tmp528
	str	sl, [fp, #-64]	@, %sfp
	movgt	r9, #4	@,
	str	r9, [fp, #-52]	@, %sfp
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	add	sl, r7, #10	@ tmp230,,
	ldr	r7, [fp, #-64]	@, %sfp
	smull	r9, ip, ip, r9	@, tmp304, tmp305,
	ldr	sl, [r4, sl, asl #2]	@, ctxt32_T.FM
	ldr	r9, [fp, #-56]	@, %sfp
	str	sl, [fp, #-52]	@, %sfp
	str	sl, [r4, #16]	@, ctxt32_T.FV_c
	rsb	ip, r9, ip, asr #1	@, tmp303,, tmp304,
	ldr	sl, [r7, #60]	@ tmp244,
	ldr	r7, [r4, #68]	@, ctxt32_T.SM
	add	ip, ip, ip, asl #2	@, tmp310, tmp303, tmp303,
	ldr	r9, [fp, #-48]	@, %sfp
	cmp	sl, r7	@ tmp244,
	ldr	r7, [fp, #-72]	@ min, %sfp
	rsb	ip, ip, r9	@, tmp310,
	ldr	r9, [r4, #72]	@, ctxt32_T.SM
	movgt	r8, #8	@, tmp537,
	add	sl, r8, r4	@ tmp249, tmp537, tmp528
	str	ip, [fp, #-56]	@, %sfp
	movgt	r7, #2	@, min,
	ldr	ip, [sl, #60]	@ tmp252,
	ldr	sl, [r4, #84]	@, ctxt32_T.TM
	cmp	ip, r9	@ tmp252,
	ldr	r9, [r4, #80]	@, ctxt32_T.TM
	movgt	r8, #12	@, tmp539,
	add	ip, r8, r4	@ tmp257, tmp539, tmp528
	movgt	r7, #3	@, min,
	cmp	r9, sl	@,
	movle	r8, #0	@, min
	movgt	r8, #1	@, min
	ldr	sl, [ip, #60]	@ tmp260,
	ldr	r9, [r4, #76]	@, ctxt32_T.SM
	mov	ip, r8, asl #2	@ tmp524, min,
	cmp	sl, r9	@ tmp260,
	add	r9, ip, r4	@ tmp278, tmp524, tmp528
	movgt	r7, #4	@ min,
	add	r7, r4, r7, asl #2	@, tmp266, tmp528, min,
	ldr	r7, [r7, #60]	@ D.1460, ctxt32_T.SM
	str	r7, [r4, #20]	@ D.1460, ctxt32_T.SV_c
	ldr	sl, [r9, #80]	@ tmp281,
	ldr	r9, [r4, #88]	@, ctxt32_T.TM
	cmp	sl, r9	@ tmp281,
	movgt	ip, #8	@, tmp542,
	add	r9, ip, r4	@ tmp286, tmp542, tmp528
	movgt	r8, #2	@, min,
	ldr	sl, [r9, #80]	@ tmp289,
	ldr	r9, [r4, #92]	@, ctxt32_T.TM
	cmp	sl, r9	@ tmp289,
	movgt	ip, #12	@, tmp544,
	add	sl, ip, r4	@ tmp294, tmp544, tmp528
	movgt	r8, #3	@, min,
	ldr	ip, [sl, #80]	@ tmp297,
	ldr	sl, [r4, #96]	@, ctxt32_T.TM
	cmp	ip, sl	@ tmp297,
	ldr	ip, [fp, #-56]	@, %sfp
	movgt	r8, #4	@ min,
	add	r8, r8, #20	@ tmp300, min,
	cmp	ip, #4	@,
	ldr	ip, [r4, r8, asl #2]	@ D.1462, ctxt32_T.TM
	str	ip, [r4, #24]	@ D.1462, ctxt32_T.TV_c
	beq	.L100	@,
	ldr	r2, [r0, #28]	@ ctxt32_T.FV_p, ctxt32_T.FV_p
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r1, r2	@, ctxt32_T.FV_p
	beq	.L142	@,
.L101:
	mov	r1, #0	@ tmp352,
	str	r1, [r4, #4]	@ tmp352, ctxt32_T.pdcnt
.L109:
	ldr	r0, [r4, #20]	@ ctxt32_T.SV_c, ctxt32_T.SV_c
	ldr	ip, [r4, #24]	@ ctxt32_T.TV_c, ctxt32_T.TV_c
	ldr	sl, [fp, #-52]	@, %sfp
	str	r0, [r4, #32]	@ ctxt32_T.SV_c, ctxt32_T.SV_p
	str	ip, [r4, #36]	@ ctxt32_T.TV_c, ctxt32_T.TV_p
	str	sl, [r4, #28]	@, ctxt32_T.FV_p
.L110:
	ldr	r1, [r4, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	movw	r3, #:lower16:.LANCHOR0	@ tmp367,
	ldr	r0, [r4, #0]	@ ctxt32_T.frame_cnt, ctxt32_T.frame_cnt
	movt	r3, #:upper16:.LANCHOR0	@ tmp367,
	cmp	r1, #3	@ ctxt32_T.pdcnt,
	add	r2, r0, #1	@ tmp370, ctxt32_T.frame_cnt,
	str	r2, [r4, #0]	@ tmp370, ctxt32_T.frame_cnt
	ble	.L138	@,
	ldr	ip, [r3, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	cmp	ip, #3	@ ctxt32_B.pdcnt,
	ble	.L138	@,
	ldr	r0, [r3, #40]	@ ctxt32_T.FM, ctxt32_T.FM
	add	r2, r3, #100	@ tmp527, tmp367,
	ldr	r1, [r3, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r8, [r3, #48]	@ ctxt32_T.FM, ctxt32_T.FM
	cmp	r0, r1	@ ctxt32_T.FM, ctxt32_T.FM
	movle	r1, #0	@, min
	movgt	r1, #1	@, min
	ldr	ip, [r4, #52]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r9, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	mov	r0, r1, asl #2	@ tmp530, min,
	add	r7, r0, r3	@ tmp386, tmp530, tmp367
	ldr	sl, [r7, #40]	@ tmp389,
	cmp	sl, r8	@ tmp389, ctxt32_T.FM
	ldr	sl, [r4, #156]	@ ctxt32_B.FM, ctxt32_B.FM
	movgt	r0, #8	@, tmp547,
	add	r7, r0, r4	@ tmp394, tmp547, tmp528
	movgt	r1, #2	@, min,
	ldr	r8, [r7, #40]	@ tmp397,
	ldr	r7, [r4, #140]	@, ctxt32_B.FM
	cmp	r8, ip	@ tmp397, ctxt32_T.FM
	movgt	r0, #12	@, tmp549,
	add	r0, r0, r4	@ tmp402, tmp549, tmp528
	movgt	r1, #3	@, min,
	cmp	r7, r9	@, ctxt32_B.FM
	movle	ip, #0	@, min
	movgt	ip, #1	@, min
	ldr	r8, [r0, #40]	@ tmp405,
	ldr	r9, [r4, #56]	@, ctxt32_T.FM
	mov	r0, ip, asl #2	@ tmp529, min,
	add	r7, r0, r2	@ tmp418, tmp529, tmp527
	cmp	r8, r9	@ tmp405,
	ldr	r8, [r4, #148]	@, ctxt32_B.FM
	movgt	r1, #4	@ min,
	rsb	r1, r1, #5	@ D.2254, min,
	str	r1, [r4, #12]	@ D.2254, ctxt32_T.flg
	ldr	r9, [r7, #40]	@ tmp421,
	cmp	r9, r8	@ tmp421,
	ldr	r9, [r4, #152]	@, ctxt32_B.FM
	movgt	r0, #8	@, tmp552,
	add	r7, r0, r2	@ tmp427, tmp552, tmp527
	movgt	ip, #2	@, min,
	ldr	r7, [r7, #40]	@ tmp430,
	cmp	r7, r9	@ tmp430,
	movgt	r0, #12	@, tmp554,
	add	r2, r0, r2	@ tmp436, tmp554, tmp527
	movle	r0, ip	@, min, min
	movgt	r0, #3	@, min,
	ldr	r2, [r2, #40]	@ tmp439,
	cmp	r2, sl	@ tmp439, ctxt32_B.FM
	movle	r2, r0	@ min, min
	movgt	r2, #4	@ min,
	cmp	r1, #1	@ D.2254,
	rsb	r2, r2, #5	@ D.2268, min,
	str	r2, [r4, #112]	@ D.2268, ctxt32_B.flg
	beq	.L143	@,
.L119:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPlldwn32	@
	ldr	r0, [r4, #12]	@ prephitmp.453, ctxt32_T.flg
.L85:
	cmp	r0, #5	@ prephitmp.453,
	beq	.L123	@,
.L121:
	mov	r0, #0	@ tmp507,
	str	r0, [r5, #4]	@ tmp507, <variable>.CopyTime
.L129:
	ldr	r2, [r4, #8]	@ D.1515, ctxt32_T.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp508,
	movt	r3, #:upper16:.LANCHOR0	@ tmp508,
	cmp	r2, #0	@ D.1515,
	bne	.L130	@,
	str	r2, [r5, #0]	@ D.1515, <variable>.Fieldorder
	ldr	r3, [r3, #12]	@ ctxt32_T.flg, ctxt32_T.flg
	sub	ip, r3, #3	@ tmp511, ctxt32_T.flg,
	cmp	ip, #2	@ tmp511,
	movhi	ip, #4	@ tmp514,
	strhi	ip, [r5, #8]	@ tmp514, <variable>.Pattern
	bhi	.L135	@,
.L141:
	mov	r0, #2	@ tmp519,
	str	r0, [r5, #8]	@ tmp519, <variable>.Pattern
.L135:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L130:
	cmp	r2, #1	@ D.1515,
	beq	.L144	@,
	mov	r3, #2	@ tmp521,
	mov	ip, #0	@ tmp522,
	str	r3, [r5, #0]	@ tmp521, <variable>.Fieldorder
	str	ip, [r5, #8]	@ tmp522, <variable>.Pattern
	b	.L135	@
.L87:
	ldr	ip, [r4, #200]	@ temp.436, Thd32.FThresh
	movw	r0, #:lower16:.LANCHOR0	@ tmp451,
	mov	r7, #5	@ tmp452,
	movt	r0, #:upper16:.LANCHOR0	@ tmp451,
	cmp	ip, r3	@ temp.436, InputCnt$FC_T
	str	r7, [r4, #12]	@ tmp452, ctxt32_T.flg
	blt	.L122	@,
	ldr	r7, [r0, #204]	@ Thd32.SThresh, Thd32.SThresh
	cmp	r7, r2	@ Thd32.SThresh, InputCnt$SC_T
	blt	.L122	@,
	ldr	r7, [r0, #208]	@ Thd32.TThresh, Thd32.TThresh
	cmp	r7, r1	@ Thd32.TThresh, InputCnt$TC_T
	blt	.L122	@,
	ldr	r7, [r0, #64]	@ ctxt32_T.SM, ctxt32_T.SM
	cmp	r7, r2	@ ctxt32_T.SM, InputCnt$SC_T
	movge	r3, #0	@ tmp461,
	strge	r3, [r0, #104]	@ tmp461, ctxt32_B.pdcnt
	strge	r3, [r0, #4]	@ tmp461, ctxt32_T.pdcnt
	blt	.L122	@,
.L123:
	mov	r1, #1	@ tmp506,
	str	r1, [r5, #4]	@ tmp506, <variable>.CopyTime
	b	.L129	@
.L89:
	ldr	ip, [r4, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	movw	r7, #:lower16:.LANCHOR0	@ tmp497,
	mov	r0, #4	@ tmp498,
	movt	r7, #:upper16:.LANCHOR0	@ tmp497,
	cmp	ip, r3	@ ctxt32_T.FM, InputCnt$FC_T
	str	r0, [r4, #12]	@ tmp498, ctxt32_T.flg
	ble	.L121	@,
	ldr	r3, [r7, #64]	@ ctxt32_T.SM, ctxt32_T.SM
	cmp	r3, r2	@ ctxt32_T.SM, InputCnt$SC_T
	ble	.L121	@,
	ldr	r2, [r7, #84]	@ ctxt32_T.TM, ctxt32_T.TM
	cmp	r1, r2	@ InputCnt$TC_T, ctxt32_T.TM
	bge	.L121	@,
.L139:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPulldown	@
	ldr	r0, [r7, #12]	@ prephitmp.453, ctxt32_T.flg
.L145:
	cmp	r0, #5	@ prephitmp.453,
	bne	.L121	@,
	b	.L123	@
.L88:
	sub	r3, r0, #1	@ tmp496, prephitmp.453,
	str	r3, [r4, #12]	@ tmp496, ctxt32_T.flg
	b	.L121	@
.L144:
	str	r2, [r5, #0]	@ D.1515, <variable>.Fieldorder
	ldr	r1, [r3, #12]	@ ctxt32_T.flg, ctxt32_T.flg
	sub	r2, r1, #1	@ tmp517, ctxt32_T.flg,
	cmp	r2, #2	@ tmp517,
	movhi	r2, #3	@ tmp520,
	strhi	r2, [r5, #8]	@ tmp520, <variable>.Pattern
	bhi	.L135	@,
	b	.L141	@
.L122:
	add	ip, ip, ip, asl #1	@, tmp466, temp.436, temp.436,
	cmp	ip, r3	@ tmp466, InputCnt$FC_T
	ble	.L124	@,
	ldr	ip, [r4, #204]	@ Thd32.SThresh, Thd32.SThresh
	movw	r0, #:lower16:.LANCHOR0	@ tmp467,
	movt	r0, #:upper16:.LANCHOR0	@ tmp467,
	add	r7, ip, ip, asl #1	@, tmp471, Thd32.SThresh, Thd32.SThresh,
	cmp	r7, r2	@ tmp471, InputCnt$SC_T
	ble	.L124	@,
	ldr	ip, [r0, #208]	@ Thd32.TThresh, Thd32.TThresh
	add	r7, ip, ip, asl #1	@, tmp476, Thd32.TThresh, Thd32.TThresh,
	cmp	r1, r7	@ InputCnt$TC_T, tmp476
	bge	.L124	@,
	ldr	r7, [r0, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	cmp	r7, r3	@ ctxt32_T.FM, InputCnt$FC_T
	bge	.L127	@,
	ldr	r3, [r0, #64]	@ ctxt32_T.SM, ctxt32_T.SM
	cmp	r3, r2	@ ctxt32_T.SM, InputCnt$SC_T
	bge	.L127	@,
	ldr	r2, [r0, #84]	@ ctxt32_T.TM, ctxt32_T.TM
	cmp	r1, r2	@ InputCnt$TC_T, ctxt32_T.TM
	ble	.L127	@,
	ldr	r1, [r0, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	sub	r3, r1, #2	@ prephitmp.358, ctxt32_T.pdcnt,
	str	r3, [r0, #4]	@ prephitmp.358, ctxt32_T.pdcnt
	b	.L126	@
.L100:
	ldr	ip, [fp, #-48]	@, %sfp
	str	r3, [r0, #28]	@ InputCnt$FC_T, ctxt32_T.FV_p
	str	r2, [r0, #32]	@ InputCnt$SC_T, ctxt32_T.SV_p
	add	r3, ip, #1	@ tmp366,,
	str	r1, [r0, #36]	@ InputCnt$TC_T, ctxt32_T.TV_p
	str	r3, [r0, #4]	@ tmp366, ctxt32_T.pdcnt
	b	.L110	@
.L124:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPulldown	@
	ldr	r3, [r4, #4]	@ prephitmp.358, ctxt32_T.pdcnt
.L126:
	ldr	r2, [r4, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	movw	r7, #:lower16:.LANCHOR0	@ tmp490,
	movt	r7, #:upper16:.LANCHOR0	@ tmp490,
	add	ip, r3, r2	@ tmp491, prephitmp.358, ctxt32_B.pdcnt
	cmn	ip, #4	@ tmp491,
	blt	.L139	@,
	ldr	r0, [r7, #12]	@ prephitmp.453, ctxt32_T.flg
	b	.L145	@
.L138:
	ldr	r0, [r3, #12]	@ prephitmp.453, ctxt32_T.flg
	cmp	r0, #5	@ prephitmp.453,
	bne	.L121	@,
	b	.L123	@
.L143:
	cmp	r2, #4	@ D.2268,
	streq	r1, [r3, #108]	@ D.2254, ctxt32_B.btmode
	streq	r1, [r3, #8]	@ D.2254, ctxt32_T.btmode
	beq	.L121	@,
	cmp	r2, #5	@ D.2268,
	moveq	r2, #0	@ tmp447,
	streq	r2, [r3, #108]	@ tmp447, ctxt32_B.btmode
	streq	r2, [r3, #8]	@ tmp447, ctxt32_T.btmode
	bne	.L119	@,
	b	.L121	@
.L142:
	ldr	sl, [r0, #32]	@ ctxt32_T.SV_p, ctxt32_T.SV_p
	cmp	r7, sl	@ D.1460, ctxt32_T.SV_p
	bne	.L101	@,
	ldr	r2, [r0, #36]	@ ctxt32_T.TV_p, ctxt32_T.TV_p
	cmp	ip, r2	@ D.1462, ctxt32_T.TV_p
	bne	.L101	@,
	ldr	sl, [r0, #200]	@ Thd32.FThresh, Thd32.FThresh
	cmp	r1, sl	@, Thd32.FThresh
	bgt	.L101	@,
	ldr	r1, [r0, #204]	@ Thd32.SThresh, Thd32.SThresh
	cmp	r7, r1	@ D.1460, Thd32.SThresh
	bgt	.L101	@,
	ldr	r2, [r0, #208]	@ Thd32.TThresh, Thd32.TThresh
	cmp	ip, r2	@ D.1462, Thd32.TThresh
	bgt	.L101	@,
	ldr	ip, [r0, #0]	@ ctxt32_T.frame_cnt, ctxt32_T.frame_cnt
	cmp	ip, #4	@ ctxt32_T.frame_cnt,
	ble	.L101	@,
	mov	r4, r0	@ tmp528, tmp299
	mov	r1, #1	@ min,
	mov	ip, r0	@ ivtmp.429, tmp528
	mov	r2, #0	@ min.446,
.L103:
	add	r8, r4, r2, asl #2	@, tmp330, tmp528, min.446,
	ldr	r7, [ip, #44]	@ tmp333,
	add	ip, ip, #4	@ ivtmp.429, ivtmp.429,
	ldr	r8, [r8, #40]	@ tmp332,
	cmp	r8, r7	@ tmp332, tmp333
	movgt	r2, r1	@ min.446, min
	add	r1, r1, #1	@ min, min,
	cmp	r1, #5	@ min,
	bne	.L103	@,
	cmp	r2, #0	@ min.446,
	beq	.L104	@,
	ldr	r7, [fp, #-52]	@, %sfp
	add	sl, r7, #20	@ tmp334,,
	cmp	r3, sl, asl #1	@ InputCnt$FC_T, tmp334,
	bgt	.L105	@,
.L104:
	mov	r2, #1	@ min,
	mov	r3, #0	@ min.447,
.L107:
	add	sl, r4, r3, asl #2	@, tmp339, tmp528, min.447,
	ldr	r1, [r0, #44]	@ tmp342,
	add	r0, r0, #4	@ ivtmp.518, ivtmp.518,
	ldr	ip, [sl, #40]	@ tmp341,
	cmp	ip, r1	@ tmp341, tmp342
	movgt	r3, r2	@ min.447, min
	add	r2, r2, #1	@ min, min,
	cmp	r2, #5	@ min,
	bne	.L107	@,
	cmp	r3, #0	@ min.447,
	bne	.L101	@,
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r3, [r4, #44]	@ ctxt32_T.FM, ctxt32_T.FM
	add	r0, r8, #20	@ tmp344,,
	cmp	r3, r0, asl #1	@ ctxt32_T.FM, tmp344,
	ble	.L101	@,
.L105:
	ldr	r9, [fp, #-48]	@, %sfp
	add	r2, r9, #1	@ tmp348,,
	str	r2, [r4, #4]	@ tmp348, ctxt32_T.pdcnt
	b	.L109	@
.L127:
	ldr	r0, [r4, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	sub	r3, r0, #1	@ prephitmp.358, ctxt32_T.pdcnt,
	str	r3, [r4, #4]	@ prephitmp.358, ctxt32_T.pdcnt
	b	.L126	@
	.fnend
	.size	Plldwn32Dtct_T, .-Plldwn32Dtct_T
	.align	2
	.global	Plldwn32Dtct_B
	.type	Plldwn32Dtct_B, %function
Plldwn32Dtct_B:
	.fnstart
.LFB7:
	@ args = 44, pretend = 16, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp549,
	add	r9, fp, #4	@ tmp542,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp549,
	ldr	ip, [fp, #20]	@ InputCnt$SC_B, InputCnt.SC_B
	stmia	r9, {r0, r1, r2, r3}	@ tmp542,,,,
	ldr	r8, [r4, #172]	@ ctxt32_B.SM, ctxt32_B.SM
	ldr	r7, [r4, #192]	@ ctxt32_B.TM, ctxt32_B.TM
	ldr	r0, [r4, #188]	@ ctxt32_B.TM, ctxt32_B.TM
	ldr	r1, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	ldr	r6, [r4, #148]	@ ctxt32_B.FM, ctxt32_B.FM
	ldr	r5, [r4, #168]	@ ctxt32_B.SM, ctxt32_B.SM
	ldr	sl, [r4, #152]	@ ctxt32_B.FM, ctxt32_B.FM
	ldr	r9, [r4, #164]	@ ctxt32_B.SM, ctxt32_B.SM
	str	r8, [r4, #176]	@ ctxt32_B.SM, ctxt32_B.SM
	str	r7, [r4, #196]	@ ctxt32_B.TM, ctxt32_B.TM
	str	r0, [r4, #192]	@ ctxt32_B.TM, ctxt32_B.TM
	str	r1, [r4, #148]	@ ctxt32_B.FM, ctxt32_B.FM
	ldr	r0, [r4, #184]	@, ctxt32_B.TM
	ldr	r1, [r4, #140]	@, ctxt32_B.FM
	ldr	r7, [r4, #160]	@, ctxt32_B.SM
	ldr	r8, [r4, #180]	@, ctxt32_B.TM
	ldr	r3, [fp, #16]	@ InputCnt$FC_B, InputCnt.FC_B
	ldr	r2, [fp, #24]	@ InputCnt$TC_B, InputCnt.TC_B
	str	r6, [r4, #152]	@ ctxt32_B.FM, ctxt32_B.FM
	str	r5, [r4, #172]	@ ctxt32_B.SM, ctxt32_B.SM
	str	r1, [r4, #144]	@, ctxt32_B.FM
	str	sl, [r4, #156]	@ ctxt32_B.FM, ctxt32_B.FM
	str	r9, [r4, #168]	@ ctxt32_B.SM, ctxt32_B.SM
	str	r0, [r4, #188]	@, ctxt32_B.TM
	str	r7, [r4, #164]	@, ctxt32_B.SM
	str	r8, [r4, #184]	@, ctxt32_B.TM
	ldr	r5, [fp, #44]	@ pOutput32, pOutput32
	ldr	r6, [fp, #40]	@ InputCnt$mbNum, InputCnt.mbNum
	str	r3, [r4, #140]	@ InputCnt$FC_B, ctxt32_B.FM
	ldr	r1, [r4, #112]	@ prephitmp.676, ctxt32_B.flg
	str	ip, [r4, #160]	@ InputCnt$SC_B, ctxt32_B.SM
	str	r2, [r4, #180]	@ InputCnt$TC_B, ctxt32_B.TM
	cmp	r1, #5	@ prephitmp.676,
	ldrls	pc, [pc, r1, asl #2]	@ prephitmp.676
	b	.L147	@
.L152:
	.word	.L148
	.word	.L149
	.word	.L150
	.word	.L150
	.word	.L150
	.word	.L151
.L148:
	ldr	r8, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	movw	r0, #:lower16:1717986919	@ tmp322,
	ldr	r9, [r4, #140]	@ ctxt32_B.FM, ctxt32_B.FM
	movt	r0, #:upper16:1717986919	@ tmp322,
	ldr	r1, .L208	@ tmp548,
	cmp	r9, r8	@ ctxt32_B.FM, ctxt32_B.FM
	movle	r9, #0	@, min
	movgt	r9, #1	@, min
	ldr	sl, [r4, #148]	@, ctxt32_B.FM
	mov	r8, r9, asl #2	@ tmp547, min,
	add	r7, r8, r1	@ tmp209, tmp547, tmp548
	ldr	r7, [r7, #40]	@ tmp212,
	cmp	r7, sl	@ tmp212,
	ldr	sl, [r4, #152]	@, ctxt32_B.FM
	movgt	r8, #8	@, tmp551,
	add	r7, r8, r1	@ tmp218, tmp551, tmp548
	movgt	r9, #2	@, min,
	ldr	r7, [r7, #40]	@ tmp221,
	cmp	r7, sl	@ tmp221,
	ldr	r7, [r4, #104]	@, ctxt32_B.pdcnt
	ldr	sl, [r4, #164]	@, ctxt32_B.SM
	movgt	r9, #3	@,,
	movgt	r8, #12	@, tmp553,
	str	r9, [fp, #-52]	@, %sfp
	add	r8, r8, r1	@ tmp227, tmp553, tmp548
	ldr	r9, [r4, #160]	@, ctxt32_B.SM
	str	r7, [fp, #-48]	@, %sfp
	cmp	r9, sl	@,
	movle	r9, #0	@,
	movgt	r9, #1	@,
	str	r9, [fp, #-72]	@, %sfp
	ldr	sl, [r8, #40]	@,
	mov	r8, r7, asr #31	@,,
	ldr	r7, [r4, #156]	@, ctxt32_B.FM
	str	r8, [fp, #-56]	@, %sfp
	mov	r8, r9, asl #2	@ tmp546,,
	str	sl, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-64]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	cmp	sl, r7	@,
	ldr	sl, [fp, #-48]	@, %sfp
	movgt	r9, #4	@,
	str	r9, [fp, #-52]	@, %sfp
	ldr	r7, [fp, #-52]	@, %sfp
	add	r9, r8, r1	@, tmp546, tmp548
	smull	sl, r0, r0, sl	@, tmp321, tmp322,
	str	r9, [fp, #-64]	@, %sfp
	add	r9, r4, r7, asl #2	@, tmp236, tmp549,,
	ldr	r7, [fp, #-56]	@, %sfp
	ldr	sl, [r9, #140]	@, ctxt32_B.FM
	ldr	r9, [fp, #-64]	@, %sfp
	rsb	r0, r7, r0, asr #1	@, tmp320,, tmp321,
	ldr	r7, [r4, #168]	@, ctxt32_B.SM
	str	sl, [fp, #-52]	@, %sfp
	str	sl, [r4, #116]	@, ctxt32_B.FV_c
	add	r0, r0, r0, asl #2	@, tmp327, tmp320, tmp320,
	ldr	sl, [r9, #60]	@ tmp252,
	ldr	r9, [fp, #-48]	@, %sfp
	cmp	sl, r7	@ tmp252,
	rsb	r7, r0, r9	@, tmp327,
	str	r7, [fp, #-56]	@, %sfp
	movgt	r8, #8	@, tmp556,
	add	sl, r8, r1	@ tmp258, tmp556, tmp548
	ldr	r7, [fp, #-72]	@ min, %sfp
	ldr	r0, [sl, #60]	@ tmp261,
	ldr	r9, [r4, #172]	@, ctxt32_B.SM
	movgt	r7, #2	@, min,
	ldr	sl, [r4, #180]	@, ctxt32_B.TM
	cmp	r0, r9	@ tmp261,
	ldr	r9, [r4, #184]	@, ctxt32_B.TM
	movgt	r8, #12	@, tmp558,
	add	r0, r8, r1	@ tmp267, tmp558, tmp548
	movgt	r7, #3	@, min,
	cmp	sl, r9	@,
	movle	r8, #0	@, min
	movgt	r8, #1	@, min
	ldr	sl, [r0, #60]	@ tmp270,
	ldr	r9, [r4, #176]	@, ctxt32_B.SM
	mov	r0, r8, asl #2	@ tmp545, min,
	cmp	sl, r9	@ tmp270,
	add	r9, r0, r1	@ tmp289, tmp545, tmp548
	movgt	r7, #4	@ min,
	add	r7, r4, r7, asl #2	@, tmp276, tmp549, min,
	ldr	r7, [r7, #160]	@ D.1600, ctxt32_B.SM
	str	r7, [r4, #120]	@ D.1600, ctxt32_B.SV_c
	ldr	sl, [r9, #80]	@ tmp292,
	ldr	r9, [r4, #188]	@, ctxt32_B.TM
	cmp	sl, r9	@ tmp292,
	movgt	r0, #8	@, tmp561,
	add	r9, r0, r1	@ tmp298, tmp561, tmp548
	movgt	r8, #2	@, min,
	ldr	sl, [r9, #80]	@ tmp301,
	ldr	r9, [r4, #192]	@, ctxt32_B.TM
	cmp	sl, r9	@ tmp301,
	movgt	r0, #12	@, tmp563,
	add	sl, r0, r1	@ tmp307, tmp563, tmp548
	movgt	r8, #3	@, min,
	ldr	r9, [sl, #80]	@ tmp310,
	ldr	sl, [r4, #196]	@, ctxt32_B.TM
	cmp	r9, sl	@ tmp310,
	movle	r9, r8	@ min, min
	movgt	r9, #4	@ min,
	add	r0, r4, r9, asl #2	@, tmp316, tmp549, min,
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r0, [r0, #180]	@ D.1602, ctxt32_B.TM
	cmp	r8, #4	@,
	str	r0, [r4, #124]	@ D.1602, ctxt32_B.TV_c
	beq	.L162	@,
	movw	r9, #:lower16:.LANCHOR0	@,
	movt	r9, #:upper16:.LANCHOR0	@,
	ldr	sl, [fp, #-52]	@, %sfp
	ldr	r2, [r9, #128]	@ ctxt32_B.FV_p, ctxt32_B.FV_p
	cmp	sl, r2	@, ctxt32_B.FV_p
	beq	.L204	@,
.L163:
	mov	r2, #0	@ tmp371,
	str	r2, [r4, #104]	@ tmp371, ctxt32_B.pdcnt
.L171:
	ldr	r0, [r4, #120]	@ ctxt32_B.SV_c, ctxt32_B.SV_c
	ldr	r3, [r4, #124]	@ ctxt32_B.TV_c, ctxt32_B.TV_c
	ldr	r7, [fp, #-52]	@, %sfp
	str	r0, [r4, #132]	@ ctxt32_B.SV_c, ctxt32_B.SV_p
	str	r3, [r4, #136]	@ ctxt32_B.TV_c, ctxt32_B.TV_p
	str	r7, [r4, #128]	@, ctxt32_B.FV_p
.L172:
	ldr	r0, [r4, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	movw	r3, #:lower16:.LANCHOR0	@ tmp386,
	ldr	r2, [r4, #100]	@ ctxt32_B.frame_cnt, ctxt32_B.frame_cnt
	movt	r3, #:upper16:.LANCHOR0	@ tmp386,
	cmp	r0, #3	@ ctxt32_T.pdcnt,
	add	ip, r2, #1	@ tmp389, ctxt32_B.frame_cnt,
	str	ip, [r4, #100]	@ tmp389, ctxt32_B.frame_cnt
	ble	.L200	@,
	ldr	ip, [r3, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	cmp	ip, #3	@ ctxt32_B.pdcnt,
	ble	.L200	@,
	add	r0, r3, #40
	ldmia	r0, {r0, r2, r8}	@ phole ldm
	cmp	r0, r2	@ ctxt32_T.FM, ctxt32_T.FM
	movle	r2, #0	@, min
	movgt	r2, #1	@, min
	ldr	ip, [r4, #52]	@ ctxt32_T.FM, ctxt32_T.FM
	ldr	r9, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	mov	r0, r2, asl #2	@ tmp544, min,
	add	r7, r0, r3	@ tmp405, tmp544, tmp386
	ldr	sl, [r7, #40]	@ tmp408,
	cmp	sl, r8	@ tmp408, ctxt32_T.FM
	ldr	sl, [r4, #156]	@ ctxt32_B.FM, ctxt32_B.FM
	movgt	r0, #8	@, tmp566,
	add	r7, r0, r4	@ tmp413, tmp566, tmp549
	movgt	r2, #2	@, min,
	ldr	r8, [r7, #40]	@ tmp416,
	ldr	r7, [r4, #140]	@, ctxt32_B.FM
	cmp	r8, ip	@ tmp416, ctxt32_T.FM
	movgt	r0, #12	@, tmp568,
	add	r0, r0, r4	@ tmp421, tmp568, tmp549
	movgt	r2, #3	@, min,
	cmp	r7, r9	@, ctxt32_B.FM
	movle	ip, #0	@, min
	movgt	ip, #1	@, min
	ldr	r8, [r0, #40]	@ tmp424,
	ldr	r9, [r4, #56]	@, ctxt32_T.FM
	mov	r0, ip, asl #2	@ tmp543, min,
	add	r7, r0, r1	@ tmp437, tmp543, tmp548
	cmp	r8, r9	@ tmp424,
	ldr	r8, [r4, #148]	@, ctxt32_B.FM
	movgt	r2, #4	@ min,
	rsb	r2, r2, #5	@ D.2353, min,
	str	r2, [r4, #12]	@ D.2353, ctxt32_T.flg
	ldr	r7, [r7, #40]	@ tmp440,
	cmp	r7, r8	@ tmp440,
	movgt	r0, #8	@, tmp571,
	add	r9, r0, r1	@ tmp446, tmp571, tmp548
	movgt	ip, #2	@, min,
	ldr	r7, [r9, #40]	@ tmp449,
	ldr	r9, [r4, #152]	@, ctxt32_B.FM
	cmp	r7, r9	@ tmp449,
	movgt	r0, #12	@, tmp573,
	add	r1, r0, r1	@ tmp455, tmp573, tmp548
	movle	r0, ip	@, min, min
	movgt	r0, #3	@, min,
	ldr	r1, [r1, #40]	@ tmp458,
	cmp	r1, sl	@ tmp458, ctxt32_B.FM
	movle	r1, r0	@ min, min
	movgt	r1, #4	@ min,
	cmp	r2, #4	@ D.2353,
	rsb	r1, r1, #5	@ D.2367, min,
	str	r1, [r4, #112]	@ D.2367, ctxt32_B.flg
	beq	.L205	@,
	cmp	r2, #3	@ D.2353,
	bne	.L182	@,
	cmp	r1, #1	@ D.2367,
	moveq	r2, #0	@ tmp466,
	streq	r2, [r3, #108]	@ tmp466, ctxt32_B.btmode
	streq	r2, [r3, #8]	@ tmp466, ctxt32_T.btmode
	beq	.L183	@,
.L182:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPlldwn32	@
	ldr	r1, [r4, #112]	@ prephitmp.676, ctxt32_B.flg
.L147:
	cmp	r1, #5	@ prephitmp.676,
	beq	.L185	@,
.L183:
	mov	r1, #0	@ tmp526,
	str	r1, [r5, #4]	@ tmp526, <variable>.CopyTime
.L191:
	ldr	r2, [r4, #108]	@ D.1698, ctxt32_B.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp527,
	movt	r3, #:upper16:.LANCHOR0	@ tmp527,
	cmp	r2, #0	@ D.1698,
	bne	.L192	@,
	str	r2, [r5, #0]	@ D.1698, <variable>.Fieldorder
	ldr	r3, [r3, #112]	@ ctxt32_B.flg, ctxt32_B.flg
	sub	r0, r3, #1	@ tmp530, ctxt32_B.flg,
	cmp	r0, #2	@ tmp530,
	movhi	r0, #5	@ tmp533,
	strhi	r0, [r5, #8]	@ tmp533, <variable>.Pattern
	bhi	.L197	@,
.L203:
	mov	r1, #2	@ tmp538,
	str	r1, [r5, #8]	@ tmp538, <variable>.Pattern
.L197:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L192:
	cmp	r2, #1	@ D.1698,
	beq	.L206	@,
	mov	r3, #2	@ tmp540,
	mov	r0, #1	@ tmp541,
	str	r3, [r5, #0]	@ tmp540, <variable>.Fieldorder
	str	r0, [r5, #8]	@ tmp541, <variable>.Pattern
	b	.L197	@
.L149:
	ldr	r0, [r4, #200]	@ temp.659, Thd32.FThresh
	movw	r1, #:lower16:.LANCHOR0	@ tmp470,
	mov	r7, #5	@ tmp471,
	movt	r1, #:upper16:.LANCHOR0	@ tmp470,
	cmp	r0, r3	@ temp.659, InputCnt$FC_B
	str	r7, [r4, #112]	@ tmp471, ctxt32_B.flg
	blt	.L184	@,
	ldr	r7, [r1, #204]	@ Thd32.SThresh, Thd32.SThresh
	cmp	r7, ip	@ Thd32.SThresh, InputCnt$SC_B
	blt	.L184	@,
	ldr	r7, [r1, #208]	@ Thd32.TThresh, Thd32.TThresh
	cmp	r7, r2	@ Thd32.TThresh, InputCnt$TC_B
	blt	.L184	@,
	ldr	r7, [r1, #164]	@ ctxt32_B.SM, ctxt32_B.SM
	cmp	r7, ip	@ ctxt32_B.SM, InputCnt$SC_B
	movge	r3, #0	@ tmp480,
	strge	r3, [r1, #104]	@ tmp480, ctxt32_B.pdcnt
	strge	r3, [r1, #4]	@ tmp480, ctxt32_T.pdcnt
	blt	.L184	@,
.L185:
	mov	r2, #1	@ tmp525,
	str	r2, [r5, #4]	@ tmp525, <variable>.CopyTime
	b	.L191	@
.L151:
	ldr	r0, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	movw	r7, #:lower16:.LANCHOR0	@ tmp516,
	mov	r1, #4	@ tmp517,
	movt	r7, #:upper16:.LANCHOR0	@ tmp516,
	cmp	r0, r3	@ ctxt32_B.FM, InputCnt$FC_B
	str	r1, [r4, #112]	@ tmp517, ctxt32_B.flg
	ble	.L183	@,
	ldr	r3, [r7, #164]	@ ctxt32_B.SM, ctxt32_B.SM
	cmp	r3, ip	@ ctxt32_B.SM, InputCnt$SC_B
	ble	.L183	@,
	ldr	ip, [r7, #184]	@ ctxt32_B.TM, ctxt32_B.TM
	cmp	r2, ip	@ InputCnt$TC_B, ctxt32_B.TM
	bge	.L183	@,
.L201:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPulldown	@
	ldr	r1, [r7, #112]	@ prephitmp.676, ctxt32_B.flg
.L207:
	cmp	r1, #5	@ prephitmp.676,
	bne	.L183	@,
	b	.L185	@
.L150:
	sub	r3, r1, #1	@ tmp515, prephitmp.676,
	str	r3, [r4, #112]	@ tmp515, ctxt32_B.flg
	b	.L183	@
.L206:
	str	r2, [r5, #0]	@ D.1698, <variable>.Fieldorder
	ldr	r2, [r3, #112]	@ ctxt32_B.flg, ctxt32_B.flg
	sub	ip, r2, #3	@ tmp536, ctxt32_B.flg,
	cmp	ip, #2	@ tmp536,
	movhi	ip, #6	@ tmp539,
	strhi	ip, [r5, #8]	@ tmp539, <variable>.Pattern
	bhi	.L197	@,
	b	.L203	@
.L184:
	add	r1, r0, r0, asl #1	@, tmp485, temp.659, temp.659,
	cmp	r1, r3	@ tmp485, InputCnt$FC_B
	ble	.L186	@,
	ldr	r7, [r4, #204]	@ Thd32.SThresh, Thd32.SThresh
	movw	r1, #:lower16:.LANCHOR0	@ tmp486,
	movt	r1, #:upper16:.LANCHOR0	@ tmp486,
	add	r0, r7, r7, asl #1	@, tmp490, Thd32.SThresh, Thd32.SThresh,
	cmp	r0, ip	@ tmp490, InputCnt$SC_B
	ble	.L186	@,
	ldr	r7, [r1, #208]	@ Thd32.TThresh, Thd32.TThresh
	add	r0, r7, r7, asl #1	@, tmp495, Thd32.TThresh, Thd32.TThresh,
	cmp	r2, r0	@ InputCnt$TC_B, tmp495
	bge	.L186	@,
	ldr	r0, [r1, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	cmp	r0, r3	@ ctxt32_B.FM, InputCnt$FC_B
	bge	.L189	@,
	ldr	r3, [r1, #164]	@ ctxt32_B.SM, ctxt32_B.SM
	cmp	r3, ip	@ ctxt32_B.SM, InputCnt$SC_B
	bge	.L189	@,
	ldr	ip, [r1, #184]	@ ctxt32_B.TM, ctxt32_B.TM
	cmp	r2, ip	@ InputCnt$TC_B, ctxt32_B.TM
	ble	.L189	@,
	ldr	r2, [r1, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	sub	r3, r2, #2	@ prephitmp.581, ctxt32_B.pdcnt,
	str	r3, [r1, #104]	@ prephitmp.581, ctxt32_B.pdcnt
	b	.L188	@
.L162:
	movw	r8, #:lower16:.LANCHOR0	@,
	ldr	r9, [fp, #-48]	@, %sfp
	movt	r8, #:upper16:.LANCHOR0	@,
	str	r3, [r8, #128]	@ InputCnt$FC_B, ctxt32_B.FV_p
	add	r3, r9, #1	@ tmp385,,
	str	ip, [r8, #132]	@ InputCnt$SC_B, ctxt32_B.SV_p
	str	r3, [r8, #104]	@ tmp385, ctxt32_B.pdcnt
	str	r2, [r8, #136]	@ InputCnt$TC_B, ctxt32_B.TV_p
	b	.L172	@
.L186:
	mov	r0, r6	@, InputCnt$mbNum
	bl	InitPulldown	@
	ldr	r3, [r4, #104]	@ prephitmp.581, ctxt32_B.pdcnt
.L188:
	ldr	ip, [r4, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	movw	r7, #:lower16:.LANCHOR0	@ tmp509,
	movt	r7, #:upper16:.LANCHOR0	@ tmp509,
	add	r0, r3, ip	@ tmp510, prephitmp.581, ctxt32_T.pdcnt
	cmn	r0, #4	@ tmp510,
	blt	.L201	@,
	ldr	r1, [r7, #112]	@ prephitmp.676, ctxt32_B.flg
	b	.L207	@
.L200:
	ldr	r1, [r3, #112]	@ prephitmp.676, ctxt32_B.flg
	cmp	r1, #5	@ prephitmp.676,
	bne	.L183	@,
	b	.L185	@
.L205:
	cmp	r1, #1	@ D.2367,
	streq	r1, [r3, #108]	@ D.2367, ctxt32_B.btmode
	streq	r1, [r3, #8]	@ D.2367, ctxt32_T.btmode
	bne	.L182	@,
	b	.L183	@
.L204:
	ldr	ip, [r9, #132]	@ ctxt32_B.SV_p, ctxt32_B.SV_p
	cmp	r7, ip	@ D.1600, ctxt32_B.SV_p
	bne	.L163	@,
	ldr	r2, [r9, #136]	@ ctxt32_B.TV_p, ctxt32_B.TV_p
	cmp	r0, r2	@ D.1602, ctxt32_B.TV_p
	bne	.L163	@,
	ldr	ip, [r9, #200]	@ Thd32.FThresh, Thd32.FThresh
	cmp	sl, ip	@, Thd32.FThresh
	bgt	.L163	@,
	ldr	r2, [r9, #204]	@ Thd32.SThresh, Thd32.SThresh
	cmp	r7, r2	@ D.1600, Thd32.SThresh
	bgt	.L163	@,
	ldr	r7, [r9, #208]	@ Thd32.TThresh, Thd32.TThresh
	cmp	r0, r7	@ D.1602, Thd32.TThresh
	bgt	.L163	@,
	ldr	r0, [r9, #100]	@ ctxt32_B.frame_cnt, ctxt32_B.frame_cnt
	cmp	r0, #4	@ ctxt32_B.frame_cnt,
	ble	.L163	@,
	mov	r8, r1	@ ivtmp.741, tmp548
	mov	ip, r1	@ ivtmp.652, tmp548
	mov	r0, #1	@ min,
	mov	r2, #0	@ min.669,
.L165:
	add	sl, r1, r2, asl #2	@, tmp348, tmp548, min.669,
	ldr	r7, [ip, #44]	@ tmp351,
	add	ip, ip, #4	@ ivtmp.652, ivtmp.652,
	ldr	sl, [sl, #40]	@ tmp350,
	cmp	sl, r7	@ tmp350, tmp351
	movgt	r2, r0	@ min.669, min
	add	r0, r0, #1	@ min, min,
	cmp	r0, #5	@ min,
	bne	.L165	@,
	cmp	r2, #0	@ min.669,
	beq	.L166	@,
	ldr	ip, [fp, #-52]	@, %sfp
	add	r2, ip, #20	@ tmp352,,
	cmp	r3, r2, asl #1	@ InputCnt$FC_B, tmp352,
	bgt	.L167	@,
.L166:
	mov	r2, #1	@ min,
	mov	r3, #0	@ min.670,
.L169:
	add	ip, r1, r3, asl #2	@, tmp358, tmp548, min.670,
	ldr	r0, [r8, #44]	@ tmp361,
	add	r8, r8, #4	@ ivtmp.741, ivtmp.741,
	ldr	r7, [ip, #40]	@ tmp360,
	cmp	r7, r0	@ tmp360, tmp361
	movgt	r3, r2	@ min.670, min
	add	r2, r2, #1	@ min, min,
	cmp	r2, #5	@ min,
	bne	.L169	@,
	cmp	r3, #0	@ min.670,
	bne	.L163	@,
	ldr	r0, [fp, #-52]	@, %sfp
	ldr	r3, [r4, #144]	@ ctxt32_B.FM, ctxt32_B.FM
	add	r2, r0, #20	@ tmp363,,
	cmp	r3, r2, asl #1	@ ctxt32_B.FM, tmp363,
	ble	.L163	@,
.L167:
	ldr	ip, [fp, #-48]	@, %sfp
	add	r7, ip, #1	@ tmp367,,
	str	r7, [r4, #104]	@ tmp367, ctxt32_B.pdcnt
	b	.L171	@
.L189:
	ldr	r1, [r4, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	sub	r3, r1, #1	@ prephitmp.581, ctxt32_B.pdcnt,
	str	r3, [r4, #104]	@ prephitmp.581, ctxt32_B.pdcnt
	b	.L188	@
.L209:
	.align	2
.L208:
	.word	.LANCHOR0+100
	.fnend
	.size	Plldwn32Dtct_B, .-Plldwn32Dtct_B
	.align	2
	.global	Plldwn1312Dtct_T
	.type	Plldwn1312Dtct_T, %function
Plldwn1312Dtct_T:
	.fnstart
.LFB8:
	@ args = 44, pretend = 16, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	ip, fp, #4	@ tmp421,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp423,
	movt	r4, #:upper16:.LANCHOR0	@ tmp423,
	stmia	ip, {r0, r1, r2, r3}	@ tmp421,,,,
	mov	r9, r0	@ InputCnt$FC_T,
	add	r3, r4, #212	@ tmp422, tmp423,
	ldr	r0, [fp, #8]	@, InputCnt.SC_T
	ldr	r1, [fp, #12]	@, InputCnt.TC_T
	add	r8, r4, #116	@ D.3533, tmp423,
	ldr	r6, [fp, #40]	@, InputCnt.mbNum
	mov	ip, r3	@ ivtmp.927, tmp422
	ldr	r5, [fp, #44]	@ pOutput1312, pOutput1312
	mov	r2, r3	@ ivtmp.970, tmp422
	str	r0, [fp, #-48]	@, %sfp
	str	r1, [fp, #-52]	@, %sfp
	str	r6, [fp, #-60]	@, %sfp
.L211:
	ldr	r7, [r2, #144]	@ tmp177, ctxt1312_T.FM
	sub	r1, r2, #4	@ tmp435, ivtmp.970,
	ldr	r6, [r2, #244]	@ tmp178, ctxt1312_T.SM
	ldr	r0, [r2, #344]	@ tmp179, ctxt1312_T.TM
	str	r7, [r2, #148]	@ tmp177, ctxt1312_T.FM
	str	r6, [r2, #248]	@ tmp178, ctxt1312_T.SM
	str	r0, [r2, #348]	@ tmp179, ctxt1312_T.TM
	sub	r2, r1, #4	@ ivtmp.970, tmp435,
	ldr	r7, [r1, #144]	@ tmp437, ctxt1312_T.FM
	cmp	r2, r8	@ ivtmp.970, D.3533
	ldr	r6, [r1, #244]	@ tmp438, ctxt1312_T.SM
	ldr	r0, [r1, #344]	@ tmp439, ctxt1312_T.TM
	str	r7, [r1, #148]	@ tmp437, ctxt1312_T.FM
	str	r6, [r1, #248]	@ tmp438, ctxt1312_T.SM
	str	r0, [r1, #348]	@ tmp439, ctxt1312_T.TM
	bne	.L211	@,
	ldr	r1, [r4, #224]	@ D.1730, ctxt1312_T.flg
	movw	r6, #:lower16:.LANCHOR0	@ tmp180,
	ldr	r7, [fp, #-48]	@, %sfp
	movt	r6, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r1, #0	@ D.1730,
	str	r9, [r4, #264]	@ InputCnt$FC_T, ctxt1312_T.FM
	str	r7, [r4, #364]	@, ctxt1312_T.SM
	str	r2, [r4, #464]	@, ctxt1312_T.TM
	bne	.L212	@,
	add	r0, r6, #212	@ ivtmp.971, tmp180,
	mov	r2, #1	@ min.963,
	mov	sl, ip	@ ivtmp.927, ivtmp.927
.L214:
	add	r8, r3, r1, asl #2	@, tmp188, tmp422, min,
	ldr	r7, [r0, #56]	@ tmp191,
	add	r6, r0, #4	@ tmp434, ivtmp.971,
	add	ip, r2, #1	@ tmp433, min.963,
	ldr	r8, [r8, #52]	@ tmp190,
	add	r0, r6, #4	@ ivtmp.971, tmp434,
	ldr	r6, [r6, #56]	@ tmp447,
	cmp	r8, r7	@ tmp190, tmp191
	movgt	r1, r2	@ min, min.963
	add	r2, ip, #1	@ min.963, tmp433,
	add	r7, r3, r1, asl #2	@, tmp444, tmp422, min,
	ldr	r8, [r7, #52]	@ tmp446,
	cmp	r8, r6	@ tmp446, tmp447
	movgt	r1, ip	@ min, tmp433
	cmp	r2, #25	@ min.963,
	bne	.L214	@,
	add	r7, r4, r1, asl #2	@, tmp196, tmp423, min,
	mov	ip, sl	@ ivtmp.927, ivtmp.927
	ldr	r0, .L283	@ ivtmp.972,
	mov	r2, #1	@ min,
	ldr	sl, [r7, #264]	@, ctxt1312_T.FM
	mov	r1, #0	@ min.959,
	str	sl, [fp, #-56]	@, %sfp
	str	sl, [r4, #228]	@, ctxt1312_T.FV_c
	mov	sl, ip	@ ivtmp.927, ivtmp.927
.L216:
	add	r8, r3, r1, asl #2	@, tmp203, tmp422, min.959,
	ldr	r7, [r0, #156]	@ tmp206,
	add	r6, r0, #4	@ tmp432, ivtmp.972,
	add	ip, r2, #1	@ tmp431, min,
	ldr	r8, [r8, #152]	@ tmp205,
	add	r0, r6, #4	@ ivtmp.972, tmp432,
	ldr	r6, [r6, #156]	@ tmp455,
	cmp	r8, r7	@ tmp205, tmp206
	movgt	r1, r2	@ min.959, min
	add	r2, ip, #1	@ min, tmp431,
	add	r7, r3, r1, asl #2	@, tmp452, tmp422, min.959,
	ldr	r8, [r7, #152]	@ tmp454,
	cmp	r8, r6	@ tmp454, tmp455
	movgt	r1, ip	@ min.959, tmp431
	cmp	r2, #25	@ min,
	bne	.L216	@,
	add	r7, r4, r1, asl #2	@, tmp211, tmp423, min.959,
	mov	ip, sl	@ ivtmp.927, ivtmp.927
	ldr	r0, .L283	@ ivtmp.964,
	mov	r2, #1	@ min,
	ldr	sl, [r7, #364]	@, ctxt1312_T.SM
	mov	r1, #0	@ min.958,
	str	sl, [fp, #-64]	@, %sfp
	str	sl, [r4, #232]	@, ctxt1312_T.SV_c
	mov	sl, ip	@ ivtmp.927, ivtmp.927
.L218:
	add	r8, r3, r1, asl #2	@, tmp218, tmp422, min.958,
	ldr	r7, [r0, #256]	@ tmp221,
	add	r6, r0, #4	@ tmp430, ivtmp.964,
	add	ip, r2, #1	@ tmp429, min,
	ldr	r8, [r8, #252]	@ tmp220,
	add	r0, r6, #4	@ ivtmp.964, tmp430,
	ldr	r6, [r6, #256]	@ tmp463,
	cmp	r8, r7	@ tmp220, tmp221
	movgt	r1, r2	@ min.958, min
	add	r2, ip, #1	@ min, tmp429,
	add	r7, r3, r1, asl #2	@, tmp460, tmp422, min.958,
	ldr	r7, [r7, #252]	@ tmp462,
	cmp	r7, r6	@ tmp462, tmp463
	movgt	r1, ip	@ min.958, tmp429
	cmp	r2, #25	@ min,
	bne	.L218	@,
	ldr	r0, [r4, #216]	@ D.1739, ctxt1312_T.pdcnt
	movw	r6, #:lower16:1374389535	@ tmp232,
	movt	r6, #:upper16:1374389535	@ tmp232,
	add	r1, r4, r1, asl #2	@, tmp226, tmp423, min.958,
	movw	r2, #:lower16:.LANCHOR0	@ tmp222,
	mov	ip, sl	@ ivtmp.927, ivtmp.927
	smull	r7, r6, r6, r0	@, tmp231, tmp232, D.1739
	mov	r7, r0, asr #31	@ tmp234, D.1739,
	ldr	r1, [r1, #464]	@ D.1738, ctxt1312_T.TM
	movt	r2, #:upper16:.LANCHOR0	@ tmp222,
	str	r1, [r4, #236]	@ D.1738, ctxt1312_T.TV_c
	rsb	r6, r7, r6, asr #3	@, tmp230, tmp234, tmp231,
	add	r6, r6, r6, asl #2	@, tmp237, tmp230, tmp230,
	add	r7, r6, r6, asl #2	@, tmp239, tmp237, tmp237,
	rsb	r6, r7, r0	@ tmp240, tmp239, D.1739
	cmp	r6, #24	@ tmp240,
	beq	.L219	@,
	ldr	r6, [r2, #240]	@ ctxt1312_T.FV_p, ctxt1312_T.FV_p
	ldr	r7, [fp, #-56]	@, %sfp
	cmp	r7, r6	@, ctxt1312_T.FV_p
	beq	.L277	@,
.L220:
	mov	r6, #0	@ tmp282,
	str	r6, [r4, #216]	@ tmp282, ctxt1312_T.pdcnt
.L228:
	ldr	r1, [r4, #232]	@ ctxt1312_T.SV_c, ctxt1312_T.SV_c
	ldr	r2, [r4, #236]	@ ctxt1312_T.TV_c, ctxt1312_T.TV_c
	ldr	r6, [fp, #-56]	@, %sfp
	str	r1, [r4, #244]	@ ctxt1312_T.SV_c, ctxt1312_T.SV_p
	str	r2, [r4, #248]	@ ctxt1312_T.TV_c, ctxt1312_T.TV_p
	str	r6, [r4, #240]	@, ctxt1312_T.FV_p
.L229:
	ldr	r0, [r4, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	movw	r2, #:lower16:.LANCHOR0	@ tmp297,
	ldr	r1, [r4, #212]	@ ctxt1312_T.frame_cnt, ctxt1312_T.frame_cnt
	movt	r2, #:upper16:.LANCHOR0	@ tmp297,
	cmp	r0, #23	@ ctxt1312_T.pdcnt,
	add	r1, r1, #1	@ tmp300, ctxt1312_T.frame_cnt,
	str	r1, [r4, #212]	@ tmp300, ctxt1312_T.frame_cnt
	ble	.L274	@,
	ldr	r1, [r2, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	cmp	r1, #23	@ ctxt1312_B.pdcnt,
	movgt	r2, #1	@ min,
	movgt	sl, #0	@ min.952,
	ble	.L274	@,
.L234:
	add	r7, r3, sl, asl #2	@, tmp311, tmp422, min.952,
	ldr	r1, [ip, #56]	@ tmp314,
	add	r0, ip, #4	@ tmp428, ivtmp.927,
	add	r8, r2, #1	@ tmp427, min,
	ldr	r6, [r7, #52]	@ tmp313,
	add	ip, r0, #4	@ ivtmp.927, tmp428,
	ldr	r0, [r0, #56]	@ tmp471,
	cmp	r6, r1	@ tmp313, tmp314
	movgt	sl, r2	@ min.952, min
	add	r2, r8, #1	@ min, tmp427,
	add	r7, r3, sl, asl #2	@, tmp468, tmp422, min.952,
	ldr	r6, [r7, #52]	@ tmp470,
	cmp	r6, r0	@ tmp470, tmp471
	movgt	sl, r8	@ min.952, tmp427
	cmp	r2, #25	@ min,
	bne	.L234	@,
	ldr	r6, .L283+4	@ tmp424,
	mov	r3, #1	@ min,
	mov	r2, #0	@ min.950,
	rsb	sl, sl, #25	@ D.2452, min.952,
	str	sl, [r4, #224]	@ D.2452, ctxt1312_T.flg
	mov	r1, r6	@ ivtmp.866, tmp424
.L236:
	add	r8, r6, r2, asl #2	@, tmp321, tmp424, min.950,
	ldr	r7, [r1, #56]	@ tmp324,
	add	ip, r1, #4	@ tmp426, ivtmp.866,
	add	r0, r3, #1	@ tmp425, min,
	ldr	r8, [r8, #52]	@ tmp323,
	add	r1, ip, #4	@ ivtmp.866, tmp426,
	ldr	ip, [ip, #56]	@ tmp479,
	cmp	r8, r7	@ tmp323, tmp324
	movgt	r2, r3	@ min.950, min
	add	r3, r0, #1	@ min, tmp425,
	add	r7, r6, r2, asl #2	@, tmp476, tmp424, min.950,
	ldr	r7, [r7, #52]	@ tmp478,
	cmp	r7, ip	@ tmp478, tmp479
	movgt	r2, r0	@ min.950, tmp425
	cmp	r3, #25	@ min,
	bne	.L236	@,
	cmp	sl, #1	@ D.2452,
	rsb	r2, r2, #25	@ D.2466, min.950,
	movw	r3, #:lower16:.LANCHOR0	@ tmp325,
	str	r2, [r4, #576]	@ D.2466, ctxt1312_B.flg
	movt	r3, #:upper16:.LANCHOR0	@ tmp325,
	beq	.L278	@,
.L237:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPlldwn1312	@
	ldr	r1, [r4, #224]	@ prephitmp.969, ctxt1312_T.flg
	cmp	r1, #25	@ prephitmp.969,
	bne	.L239	@,
.L242:
	mov	r2, #1	@ tmp390,
	str	r2, [r5, #4]	@ tmp390, <variable>.CopyTime
	ldr	r2, [r4, #220]	@ D.1791, ctxt1312_T.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp392,
	movt	r3, #:upper16:.LANCHOR0	@ tmp392,
	cmp	r2, #0	@ D.1791,
	beq	.L279	@,
.L250:
	cmp	r2, #1	@ D.1791,
	beq	.L280	@,
	mov	r0, #2	@ tmp419,
	mov	r1, #0	@ tmp420,
	str	r0, [r5, #0]	@ tmp419, <variable>.Fieldorder
	str	r1, [r5, #8]	@ tmp420, <variable>.Pattern
.L259:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L212:
	cmp	r1, #1	@ D.1730,
	beq	.L281	@,
	cmp	r1, #25	@ D.1730,
	subne	r1, r1, #1	@ prephitmp.969, D.1730,
	strne	r1, [r6, #224]	@ prephitmp.969, ctxt1312_T.flg
	beq	.L282	@,
.L231:
	cmp	r1, #25	@ prephitmp.969,
	beq	.L242	@,
.L239:
	mov	r1, #0	@ tmp391,
	str	r1, [r5, #4]	@ tmp391, <variable>.CopyTime
	ldr	r2, [r4, #220]	@ D.1791, ctxt1312_T.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp392,
	movt	r3, #:upper16:.LANCHOR0	@ tmp392,
	cmp	r2, #0	@ D.1791,
	bne	.L250	@,
.L279:
	str	r2, [r5, #0]	@ D.1791, <variable>.Fieldorder
	ldr	r2, [r3, #224]	@ temp.957, ctxt1312_T.flg
	sub	r0, r2, #13	@ tmp395, temp.957,
	cmp	r0, #12	@ tmp395,
	bhi	.L251	@,
	ldr	ip, [r3, #260]	@ ctxt1312_T.z34, ctxt1312_T.z34
	ldr	r3, [r3, #928]	@ prephitmp.968, Thd1312.zthr
	cmp	ip, r3	@ ctxt1312_T.z34, prephitmp.968
	blt	.L276	@,
.L252:
	ldr	r2, [r4, #252]	@ ctxt1312_T.z14, ctxt1312_T.z14
	cmp	r2, r3	@ ctxt1312_T.z14, prephitmp.968
	movlt	r3, #4	@ tmp403,
	strlt	r3, [r5, #8]	@ tmp403, <variable>.Pattern
	blt	.L259	@,
.L258:
	mov	r2, #0	@ tmp417,
	str	r2, [r5, #8]	@ tmp417, <variable>.Pattern
	str	r2, [r5, #4]	@ tmp417, <variable>.CopyTime
	b	.L259	@
.L274:
	ldr	r1, [r2, #224]	@ prephitmp.969, ctxt1312_T.flg
	b	.L231	@
.L251:
	cmp	r2, #0	@ temp.957,
	beq	.L258	@,
	ldr	r3, [r3, #928]	@ prephitmp.968, Thd1312.zthr
	b	.L252	@
.L281:
	ldr	r3, [r6, #916]	@ temp.940, Thd1312.FThresh
	mov	r2, #25	@ tmp336,
	str	r2, [r6, #224]	@ tmp336, ctxt1312_T.flg
	cmp	r3, r9	@ temp.940, InputCnt$FC_T
	blt	.L241	@,
	ldr	r0, [r6, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r0, r1	@ Thd1312.SThresh,
	blt	.L241	@,
	ldr	ip, [r6, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	ldr	r7, [fp, #-52]	@, %sfp
	cmp	r7, ip	@, Thd1312.TThresh
	bgt	.L241	@,
	ldr	r2, [r6, #268]	@ ctxt1312_T.FM, ctxt1312_T.FM
	cmp	r9, r2, asl #1	@ InputCnt$FC_T, ctxt1312_T.FM,
	movle	r3, #0	@ tmp346,
	strle	r3, [r6, #568]	@ tmp346, ctxt1312_B.pdcnt
	strle	r3, [r6, #216]	@ tmp346, ctxt1312_T.pdcnt
	ble	.L242	@,
.L241:
	add	r3, r3, r3, asl #1	@, tmp351, temp.940, temp.940,
	cmp	r3, r9	@ tmp351, InputCnt$FC_T
	ble	.L243	@,
	ldr	r0, [r4, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	movw	r3, #:lower16:.LANCHOR0	@ tmp352,
	ldr	r6, [fp, #-48]	@, %sfp
	movt	r3, #:upper16:.LANCHOR0	@ tmp352,
	add	r1, r0, r0, asl #1	@, tmp356, Thd1312.SThresh, Thd1312.SThresh,
	cmp	r1, r6	@ tmp356,
	ble	.L243	@,
	ldr	r6, [r3, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	ldr	ip, [fp, #-52]	@, %sfp
	add	r2, r6, r6, asl #1	@, tmp361, Thd1312.TThresh, Thd1312.TThresh,
	cmp	ip, r2	@, tmp361
	bge	.L243	@,
	ldr	r1, [r3, #268]	@ ctxt1312_T.FM, ctxt1312_T.FM
	cmp	r1, r9	@ ctxt1312_T.FM, InputCnt$FC_T
	bge	.L246	@,
	ldr	r0, [r3, #368]	@ ctxt1312_T.SM, ctxt1312_T.SM
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	r0, ip	@ ctxt1312_T.SM,
	bge	.L246	@,
	ldr	r2, [r3, #468]	@ ctxt1312_T.TM, ctxt1312_T.TM
	ldr	r7, [fp, #-52]	@, %sfp
	cmp	r7, r2	@, ctxt1312_T.TM
	ble	.L246	@,
	ldr	r6, [r3, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	sub	r2, r6, #2	@ prephitmp.804, ctxt1312_T.pdcnt,
	str	r2, [r3, #216]	@ prephitmp.804, ctxt1312_T.pdcnt
	b	.L245	@
.L219:
	add	r7, r0, #1	@ tmp296, D.1739,
	ldr	r0, [fp, #-52]	@, %sfp
	str	r7, [r2, #216]	@ tmp296, ctxt1312_T.pdcnt
	ldr	r7, [fp, #-48]	@, %sfp
	str	r9, [r2, #240]	@ InputCnt$FC_T, ctxt1312_T.FV_p
	str	r0, [r2, #248]	@, ctxt1312_T.TV_p
	str	r7, [r2, #244]	@, ctxt1312_T.SV_p
	b	.L229	@
.L280:
	str	r2, [r5, #0]	@ D.1791, <variable>.Fieldorder
	ldr	r2, [r3, #224]	@ temp.960, ctxt1312_T.flg
	sub	r1, r2, #1	@ tmp408, temp.960,
	cmp	r1, #12	@ tmp408,
	bhi	.L256	@,
	ldr	r0, [r3, #260]	@ ctxt1312_T.z34, ctxt1312_T.z34
	ldr	r3, [r3, #928]	@ prephitmp.967, Thd1312.zthr
	cmp	r0, r3	@ ctxt1312_T.z34, prephitmp.967
	bge	.L257	@,
.L276:
	mov	r3, #2	@ tmp412,
	str	r3, [r5, #8]	@ tmp412, <variable>.Pattern
	b	.L259	@
.L243:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r2, [r4, #216]	@ prephitmp.804, ctxt1312_T.pdcnt
.L245:
	ldr	r0, [r4, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	movw	r6, #:lower16:.LANCHOR0	@ tmp375,
	movt	r6, #:upper16:.LANCHOR0	@ tmp375,
	add	r1, r2, r0	@ tmp376, prephitmp.804, ctxt1312_B.pdcnt
	cmn	r1, #4	@ tmp376,
	blt	.L247	@,
	ldr	r1, [r6, #224]	@ prephitmp.969, ctxt1312_T.flg
	b	.L231	@
.L256:
	cmp	r2, #0	@ temp.960,
	beq	.L258	@,
	ldr	r3, [r3, #928]	@ prephitmp.967, Thd1312.zthr
.L257:
	ldr	ip, [r4, #256]	@ ctxt1312_T.z32, ctxt1312_T.z32
	cmp	ip, r3	@ ctxt1312_T.z32, prephitmp.967
	movlt	r3, #3	@ tmp416,
	strlt	r3, [r5, #8]	@ tmp416, <variable>.Pattern
	blt	.L259	@,
	b	.L258	@
.L282:
	ldr	ip, [r6, #268]	@ ctxt1312_T.FM, ctxt1312_T.FM
	mov	r2, #24	@ tmp381,
	str	r2, [r6, #224]	@ tmp381, ctxt1312_T.flg
	cmp	ip, r9	@ ctxt1312_T.FM, InputCnt$FC_T
	ble	.L239	@,
	ldr	r3, [r6, #368]	@ ctxt1312_T.SM, ctxt1312_T.SM
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r3, r1	@ ctxt1312_T.SM,
	ble	.L239	@,
	ldr	ip, [r6, #468]	@ ctxt1312_T.TM, ctxt1312_T.TM
	ldr	r0, [fp, #-52]	@, %sfp
	cmp	r0, ip	@, ctxt1312_T.TM
	bge	.L239	@,
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r1, [r6, #224]	@ prephitmp.969, ctxt1312_T.flg
	b	.L231	@
.L277:
	ldr	r6, [r2, #244]	@ ctxt1312_T.SV_p, ctxt1312_T.SV_p
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r7, r6	@, ctxt1312_T.SV_p
	bne	.L220	@,
	ldr	r6, [r2, #248]	@ ctxt1312_T.TV_p, ctxt1312_T.TV_p
	cmp	r1, r6	@ D.1738, ctxt1312_T.TV_p
	bne	.L220	@,
	ldr	r6, [r2, #916]	@ Thd1312.FThresh, Thd1312.FThresh
	ldr	r7, [fp, #-56]	@, %sfp
	cmp	r7, r6	@, Thd1312.FThresh
	bgt	.L220	@,
	ldr	r6, [r2, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r7, r6	@, Thd1312.SThresh
	bgt	.L220	@,
	ldr	r6, [r2, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	cmp	r1, r6	@ D.1738, Thd1312.TThresh
	bgt	.L220	@,
	ldr	r1, [r2, #212]	@ ctxt1312_T.frame_cnt, ctxt1312_T.frame_cnt
	cmp	r1, #25	@ ctxt1312_T.frame_cnt,
	ble	.L220	@,
	add	r7, r2, #212	@ ivtmp.965, tmp222,
	mov	r1, #1	@ min,
	mov	r2, #0	@ min.956,
.L222:
	add	r8, r3, r2, asl #2	@, tmp259, tmp422, min.956,
	ldr	r6, [r7, #56]	@ tmp262,
	add	r7, r7, #4	@ ivtmp.965, ivtmp.965,
	ldr	r8, [r8, #52]	@ tmp261,
	cmp	r8, r6	@ tmp261, tmp262
	movgt	r2, r1	@ min.956, min
	add	r1, r1, #1	@ min, min,
	cmp	r1, #25	@ min,
	bne	.L222	@,
	cmp	r2, #0	@ min.956,
	beq	.L223	@,
	ldr	r1, [fp, #-56]	@, %sfp
	add	r2, r1, #18	@ tmp263,,
	cmp	r9, r2, asl #1	@ InputCnt$FC_T, tmp263,
	bgt	.L224	@,
.L223:
	ldr	r6, .L283	@ ivtmp.966,
	mov	r1, #1	@ min,
	mov	r2, #0	@ min.954,
.L226:
	add	r8, r3, r2, asl #2	@, tmp269, tmp422, min.954,
	ldr	r7, [r6, #56]	@ tmp272,
	add	r6, r6, #4	@ ivtmp.966, ivtmp.966,
	ldr	r8, [r8, #52]	@ tmp271,
	cmp	r8, r7	@ tmp271, tmp272
	movgt	r2, r1	@ min.954, min
	add	r1, r1, #1	@ min, min,
	cmp	r1, #25	@ min,
	bne	.L226	@,
	cmp	r2, #0	@ min.954,
	bne	.L220	@,
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r2, [r4, #268]	@ ctxt1312_T.FM, ctxt1312_T.FM
	add	r6, r1, #18	@ tmp274,,
	cmp	r2, r6, asl #1	@ ctxt1312_T.FM, tmp274,
	ble	.L220	@,
.L224:
	add	r0, r0, #1	@ tmp278, D.1739,
	str	r0, [r4, #216]	@ tmp278, ctxt1312_T.pdcnt
	b	.L228	@
.L247:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r1, [r6, #224]	@ prephitmp.969, ctxt1312_T.flg
	b	.L231	@
.L278:
	cmp	r2, #14	@ D.2466,
	streq	sl, [r3, #572]	@ D.2452, ctxt1312_B.btmode
	streq	sl, [r3, #220]	@ D.2452, ctxt1312_T.btmode
	beq	.L239	@,
	cmp	r2, #15	@ D.2466,
	moveq	r2, #0	@ tmp331,
	streq	r2, [r3, #572]	@ tmp331, ctxt1312_B.btmode
	streq	r2, [r3, #220]	@ tmp331, ctxt1312_T.btmode
	bne	.L237	@,
	b	.L239	@
.L246:
	ldr	r3, [r4, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	sub	r2, r3, #1	@ prephitmp.804, ctxt1312_T.pdcnt,
	str	r2, [r4, #216]	@ prephitmp.804, ctxt1312_T.pdcnt
	b	.L245	@
.L284:
	.align	2
.L283:
	.word	.LANCHOR0+212
	.word	.LANCHOR0+564
	.fnend
	.size	Plldwn1312Dtct_T, .-Plldwn1312Dtct_T
	.align	2
	.global	Plldwn1312Dtct_B
	.type	Plldwn1312Dtct_B, %function
Plldwn1312Dtct_B:
	.fnstart
.LFB9:
	@ args = 44, pretend = 16, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	ip, fp, #4	@ tmp421,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp423,
	movt	r4, #:upper16:.LANCHOR0	@ tmp423,
	stmia	ip, {r0, r1, r2, r3}	@ tmp421,,,,
	ldr	r6, [fp, #40]	@, InputCnt.mbNum
	add	r3, r4, #564	@ tmp424, tmp423,
	ldr	r0, [fp, #20]	@, InputCnt.SC_B
	ldr	r1, [fp, #24]	@, InputCnt.TC_B
	add	r8, r4, #468	@ D.3760, tmp423,
	ldr	r9, [fp, #44]	@ pOutput1312, pOutput1312
	mov	ip, r3	@ ivtmp.1153, tmp424
	ldr	r5, [fp, #16]	@ InputCnt$FC_B, InputCnt.FC_B
	mov	r2, r3	@ ivtmp.1196, tmp424
	str	r0, [fp, #-48]	@, %sfp
	str	r1, [fp, #-52]	@, %sfp
	str	r6, [fp, #-60]	@, %sfp
.L286:
	ldr	r7, [r2, #144]	@ tmp177, ctxt1312_B.FM
	sub	r1, r2, #4	@ tmp435, ivtmp.1196,
	ldr	r6, [r2, #244]	@ tmp178, ctxt1312_B.SM
	ldr	r0, [r2, #344]	@ tmp179, ctxt1312_B.TM
	str	r7, [r2, #148]	@ tmp177, ctxt1312_B.FM
	str	r6, [r2, #248]	@ tmp178, ctxt1312_B.SM
	str	r0, [r2, #348]	@ tmp179, ctxt1312_B.TM
	sub	r2, r1, #4	@ ivtmp.1196, tmp435,
	ldr	r7, [r1, #144]	@ tmp437, ctxt1312_B.FM
	cmp	r2, r8	@ ivtmp.1196, D.3760
	ldr	r6, [r1, #244]	@ tmp438, ctxt1312_B.SM
	ldr	r0, [r1, #344]	@ tmp439, ctxt1312_B.TM
	str	r7, [r1, #148]	@ tmp437, ctxt1312_B.FM
	str	r6, [r1, #248]	@ tmp438, ctxt1312_B.SM
	str	r0, [r1, #348]	@ tmp439, ctxt1312_B.TM
	bne	.L286	@,
	ldr	r1, [r4, #576]	@ D.1886, ctxt1312_B.flg
	movw	r6, #:lower16:.LANCHOR0	@ tmp180,
	ldr	r7, [fp, #-48]	@, %sfp
	movt	r6, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r1, #0	@ D.1886,
	str	r5, [r4, #616]	@ InputCnt$FC_B, ctxt1312_B.FM
	str	r7, [r4, #716]	@, ctxt1312_B.SM
	str	r2, [r4, #816]	@, ctxt1312_B.TM
	bne	.L287	@,
	add	r0, r6, #564	@ ivtmp.1197, tmp180,
	mov	r2, #1	@ min.1189,
	mov	sl, ip	@ ivtmp.1153, ivtmp.1153
.L289:
	add	r8, r3, r1, asl #2	@, tmp188, tmp424, min,
	ldr	r7, [r0, #56]	@ tmp191,
	add	r6, r0, #4	@ tmp434, ivtmp.1197,
	add	ip, r2, #1	@ tmp433, min.1189,
	ldr	r8, [r8, #52]	@ tmp190,
	add	r0, r6, #4	@ ivtmp.1197, tmp434,
	ldr	r6, [r6, #56]	@ tmp447,
	cmp	r8, r7	@ tmp190, tmp191
	movgt	r1, r2	@ min, min.1189
	add	r2, ip, #1	@ min.1189, tmp433,
	add	r7, r3, r1, asl #2	@, tmp444, tmp424, min,
	ldr	r8, [r7, #52]	@ tmp446,
	cmp	r8, r6	@ tmp446, tmp447
	movgt	r1, ip	@ min, tmp433
	cmp	r2, #25	@ min.1189,
	bne	.L289	@,
	add	r7, r4, r1, asl #2	@, tmp196, tmp423, min,
	mov	ip, sl	@ ivtmp.1153, ivtmp.1153
	ldr	r0, .L358	@ ivtmp.1198,
	mov	r2, #1	@ min,
	ldr	sl, [r7, #616]	@, ctxt1312_B.FM
	mov	r1, #0	@ min.1185,
	str	sl, [fp, #-56]	@, %sfp
	str	sl, [r4, #580]	@, ctxt1312_B.FV_c
	mov	sl, ip	@ ivtmp.1153, ivtmp.1153
.L291:
	add	r8, r3, r1, asl #2	@, tmp203, tmp424, min.1185,
	ldr	r7, [r0, #156]	@ tmp206,
	add	r6, r0, #4	@ tmp432, ivtmp.1198,
	add	ip, r2, #1	@ tmp431, min,
	ldr	r8, [r8, #152]	@ tmp205,
	add	r0, r6, #4	@ ivtmp.1198, tmp432,
	ldr	r6, [r6, #156]	@ tmp455,
	cmp	r8, r7	@ tmp205, tmp206
	movgt	r1, r2	@ min.1185, min
	add	r2, ip, #1	@ min, tmp431,
	add	r7, r3, r1, asl #2	@, tmp452, tmp424, min.1185,
	ldr	r8, [r7, #152]	@ tmp454,
	cmp	r8, r6	@ tmp454, tmp455
	movgt	r1, ip	@ min.1185, tmp431
	cmp	r2, #25	@ min,
	bne	.L291	@,
	add	r7, r4, r1, asl #2	@, tmp211, tmp423, min.1185,
	mov	ip, sl	@ ivtmp.1153, ivtmp.1153
	ldr	r0, .L358	@ ivtmp.1190,
	mov	r2, #1	@ min,
	ldr	sl, [r7, #716]	@, ctxt1312_B.SM
	mov	r1, #0	@ min.1184,
	str	sl, [fp, #-64]	@, %sfp
	str	sl, [r4, #584]	@, ctxt1312_B.SV_c
	mov	sl, ip	@ ivtmp.1153, ivtmp.1153
.L293:
	add	r8, r3, r1, asl #2	@, tmp218, tmp424, min.1184,
	ldr	r7, [r0, #256]	@ tmp221,
	add	r6, r0, #4	@ tmp430, ivtmp.1190,
	add	ip, r2, #1	@ tmp429, min,
	ldr	r8, [r8, #252]	@ tmp220,
	add	r0, r6, #4	@ ivtmp.1190, tmp430,
	ldr	r6, [r6, #256]	@ tmp463,
	cmp	r8, r7	@ tmp220, tmp221
	movgt	r1, r2	@ min.1184, min
	add	r2, ip, #1	@ min, tmp429,
	add	r7, r3, r1, asl #2	@, tmp460, tmp424, min.1184,
	ldr	r7, [r7, #252]	@ tmp462,
	cmp	r7, r6	@ tmp462, tmp463
	movgt	r1, ip	@ min.1184, tmp429
	cmp	r2, #25	@ min,
	bne	.L293	@,
	ldr	r0, [r4, #568]	@ D.1895, ctxt1312_B.pdcnt
	movw	r6, #:lower16:1374389535	@ tmp232,
	movt	r6, #:upper16:1374389535	@ tmp232,
	add	r1, r4, r1, asl #2	@, tmp226, tmp423, min.1184,
	movw	r2, #:lower16:.LANCHOR0	@ tmp222,
	mov	ip, sl	@ ivtmp.1153, ivtmp.1153
	smull	r7, r6, r6, r0	@, tmp231, tmp232, D.1895
	mov	r7, r0, asr #31	@ tmp234, D.1895,
	ldr	r1, [r1, #816]	@ D.1894, ctxt1312_B.TM
	movt	r2, #:upper16:.LANCHOR0	@ tmp222,
	str	r1, [r4, #588]	@ D.1894, ctxt1312_B.TV_c
	rsb	r6, r7, r6, asr #3	@, tmp230, tmp234, tmp231,
	add	r6, r6, r6, asl #2	@, tmp237, tmp230, tmp230,
	add	r7, r6, r6, asl #2	@, tmp239, tmp237, tmp237,
	rsb	r6, r7, r0	@ tmp240, tmp239, D.1895
	cmp	r6, #24	@ tmp240,
	beq	.L294	@,
	ldr	r6, [r2, #592]	@ ctxt1312_B.FV_p, ctxt1312_B.FV_p
	ldr	r7, [fp, #-56]	@, %sfp
	cmp	r7, r6	@, ctxt1312_B.FV_p
	beq	.L352	@,
.L295:
	mov	r7, #0	@ tmp282,
	str	r7, [r4, #568]	@ tmp282, ctxt1312_B.pdcnt
.L303:
	ldr	r1, [r4, #584]	@ ctxt1312_B.SV_c, ctxt1312_B.SV_c
	ldr	r2, [r4, #588]	@ ctxt1312_B.TV_c, ctxt1312_B.TV_c
	ldr	r6, [fp, #-56]	@, %sfp
	str	r1, [r4, #596]	@ ctxt1312_B.SV_c, ctxt1312_B.SV_p
	str	r2, [r4, #600]	@ ctxt1312_B.TV_c, ctxt1312_B.TV_p
	str	r6, [r4, #592]	@, ctxt1312_B.FV_p
.L304:
	ldr	r1, [r4, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	movw	r7, #:lower16:.LANCHOR0	@ tmp297,
	ldr	r0, [r4, #564]	@ ctxt1312_B.frame_cnt, ctxt1312_B.frame_cnt
	movt	r7, #:upper16:.LANCHOR0	@ tmp297,
	cmp	r1, #23	@ ctxt1312_T.pdcnt,
	add	r2, r0, #1	@ tmp300, ctxt1312_B.frame_cnt,
	str	r2, [r4, #564]	@ tmp300, ctxt1312_B.frame_cnt
	ble	.L349	@,
	ldr	r2, [r7, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	cmp	r2, #23	@ ctxt1312_B.pdcnt,
	ble	.L349	@,
	add	r7, r7, #212	@ tmp422, tmp297,
	mov	r2, #1	@ min,
	mov	r1, #0	@ min.1178,
	mov	sl, ip	@ ivtmp.1153, ivtmp.1153
	mov	r0, r7	@ ivtmp.1101, tmp422
.L309:
	add	r8, r7, r1, asl #2	@, tmp312, tmp422, min.1178,
	ldr	r6, [r0, #56]	@ tmp315,
	add	r5, r0, #4	@ tmp428, ivtmp.1101,
	add	ip, r2, #1	@ tmp427, min,
	ldr	r8, [r8, #52]	@ tmp314,
	add	r0, r5, #4	@ ivtmp.1101, tmp428,
	ldr	r5, [r5, #56]	@ tmp471,
	cmp	r8, r6	@ tmp314, tmp315
	movgt	r1, r2	@ min.1178, min
	add	r2, ip, #1	@ min, tmp427,
	add	r6, r7, r1, asl #2	@, tmp468, tmp422, min.1178,
	ldr	r8, [r6, #52]	@ tmp470,
	cmp	r8, r5	@ tmp470, tmp471
	movgt	r1, ip	@ min.1178, tmp427
	cmp	r2, #25	@ min,
	bne	.L309	@,
	mov	ip, sl	@ ivtmp.1153, ivtmp.1153
	mov	r2, #1	@ min,
	mov	r0, #0	@ min.1176,
	rsb	r1, r1, #25	@ D.2549, min.1178,
	str	r1, [r4, #224]	@ D.2549, ctxt1312_T.flg
.L311:
	add	r8, r3, r0, asl #2	@, tmp321, tmp424, min.1176,
	ldr	r7, [ip, #56]	@ tmp324,
	add	r6, ip, #4	@ tmp426, ivtmp.1153,
	add	r5, r2, #1	@ tmp425, min,
	ldr	r8, [r8, #52]	@ tmp323,
	add	ip, r6, #4	@ ivtmp.1153, tmp426,
	ldr	r6, [r6, #56]	@ tmp479,
	cmp	r8, r7	@ tmp323, tmp324
	movgt	r0, r2	@ min.1176, min
	add	r2, r5, #1	@ min, tmp425,
	add	r7, r3, r0, asl #2	@, tmp476, tmp424, min.1176,
	ldr	r7, [r7, #52]	@ tmp478,
	cmp	r7, r6	@ tmp478, tmp479
	movgt	r0, r5	@ min.1176, tmp425
	cmp	r2, #25	@ min,
	bne	.L311	@,
	cmp	r1, #14	@ D.2549,
	rsb	r0, r0, #25	@ D.2563, min.1176,
	movw	r3, #:lower16:.LANCHOR0	@ tmp325,
	str	r0, [r4, #576]	@ D.2563, ctxt1312_B.flg
	movt	r3, #:upper16:.LANCHOR0	@ tmp325,
	beq	.L353	@,
	cmp	r1, #13	@ D.2549,
	bne	.L313	@,
	cmp	r0, #1	@ D.2563,
	moveq	r2, #0	@ tmp331,
	streq	r2, [r3, #572]	@ tmp331, ctxt1312_B.btmode
	streq	r2, [r3, #220]	@ tmp331, ctxt1312_T.btmode
	beq	.L314	@,
.L313:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPlldwn1312	@
	ldr	r1, [r4, #576]	@ prephitmp.1195, ctxt1312_B.flg
	cmp	r1, #25	@ prephitmp.1195,
	bne	.L314	@,
.L317:
	mov	r1, #1	@ tmp390,
	str	r1, [r9, #4]	@ tmp390, <variable>.CopyTime
	ldr	r2, [r4, #572]	@ D.1997, ctxt1312_B.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp392,
	movt	r3, #:upper16:.LANCHOR0	@ tmp392,
	cmp	r2, #0	@ D.1997,
	beq	.L354	@,
.L325:
	cmp	r2, #1	@ D.1997,
	beq	.L355	@,
	mov	r3, #2	@ tmp419,
	mov	r2, #1	@ tmp420,
	str	r3, [r9, #0]	@ tmp419, <variable>.Fieldorder
	str	r2, [r9, #8]	@ tmp420, <variable>.Pattern
.L334:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L287:
	cmp	r1, #1	@ D.1886,
	beq	.L356	@,
	cmp	r1, #25	@ D.1886,
	subne	r1, r1, #1	@ prephitmp.1195, D.1886,
	strne	r1, [r6, #576]	@ prephitmp.1195, ctxt1312_B.flg
	beq	.L357	@,
.L306:
	cmp	r1, #25	@ prephitmp.1195,
	beq	.L317	@,
.L314:
	mov	r2, #0	@ tmp391,
	str	r2, [r9, #4]	@ tmp391, <variable>.CopyTime
	ldr	r2, [r4, #572]	@ D.1997, ctxt1312_B.btmode
	movw	r3, #:lower16:.LANCHOR0	@ tmp392,
	movt	r3, #:upper16:.LANCHOR0	@ tmp392,
	cmp	r2, #0	@ D.1997,
	bne	.L325	@,
.L354:
	str	r2, [r9, #0]	@ D.1997, <variable>.Fieldorder
	ldr	r2, [r3, #576]	@ temp.1183, ctxt1312_B.flg
	sub	ip, r2, #1	@ tmp395, temp.1183,
	cmp	ip, #12	@ tmp395,
	bhi	.L326	@,
	ldr	r0, [r3, #612]	@ ctxt1312_B.z34, ctxt1312_B.z34
	ldr	r3, [r3, #928]	@ prephitmp.1194, Thd1312.zthr
	cmp	r0, r3	@ ctxt1312_B.z34, prephitmp.1194
	blt	.L351	@,
.L327:
	ldr	r1, [r4, #604]	@ ctxt1312_B.z14, ctxt1312_B.z14
	cmp	r1, r3	@ ctxt1312_B.z14, prephitmp.1194
	movlt	r3, #5	@ tmp403,
	strlt	r3, [r9, #8]	@ tmp403, <variable>.Pattern
	blt	.L334	@,
.L333:
	mov	ip, #0	@ tmp417,
	mov	r1, #1	@ tmp418,
	str	ip, [r9, #4]	@ tmp417, <variable>.CopyTime
	str	r1, [r9, #8]	@ tmp418, <variable>.Pattern
	b	.L334	@
.L349:
	ldr	r1, [r7, #576]	@ prephitmp.1195, ctxt1312_B.flg
	b	.L306	@
.L326:
	cmp	r2, #0	@ temp.1183,
	beq	.L333	@,
	ldr	r3, [r3, #928]	@ prephitmp.1194, Thd1312.zthr
	b	.L327	@
.L356:
	ldr	r3, [r6, #916]	@ temp.1166, Thd1312.FThresh
	mov	r0, #25	@ tmp336,
	str	r0, [r6, #576]	@ tmp336, ctxt1312_B.flg
	cmp	r3, r5	@ temp.1166, InputCnt$FC_B
	blt	.L316	@,
	ldr	r2, [r6, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	ldr	r1, [fp, #-48]	@, %sfp
	cmp	r2, r1	@ Thd1312.SThresh,
	blt	.L316	@,
	ldr	ip, [r6, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	ldr	r7, [fp, #-52]	@, %sfp
	cmp	r7, ip	@, Thd1312.TThresh
	bgt	.L316	@,
	ldr	r0, [r6, #620]	@ ctxt1312_B.FM, ctxt1312_B.FM
	cmp	r5, r0, asl #1	@ InputCnt$FC_B, ctxt1312_B.FM,
	movle	r3, #0	@ tmp346,
	strle	r3, [r6, #568]	@ tmp346, ctxt1312_B.pdcnt
	strle	r3, [r6, #216]	@ tmp346, ctxt1312_T.pdcnt
	ble	.L317	@,
.L316:
	add	r3, r3, r3, asl #1	@, tmp351, temp.1166, temp.1166,
	cmp	r3, r5	@ tmp351, InputCnt$FC_B
	ble	.L318	@,
	ldr	ip, [r4, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	movw	r3, #:lower16:.LANCHOR0	@ tmp352,
	ldr	r1, [fp, #-48]	@, %sfp
	movt	r3, #:upper16:.LANCHOR0	@ tmp352,
	add	r2, ip, ip, asl #1	@, tmp356, Thd1312.SThresh, Thd1312.SThresh,
	cmp	r2, r1	@ tmp356,
	ble	.L318	@,
	ldr	r2, [r3, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	ldr	r0, [fp, #-52]	@, %sfp
	add	r1, r2, r2, asl #1	@, tmp361, Thd1312.TThresh, Thd1312.TThresh,
	cmp	r0, r1	@, tmp361
	bge	.L318	@,
	ldr	ip, [r3, #620]	@ ctxt1312_B.FM, ctxt1312_B.FM
	cmp	ip, r5	@ ctxt1312_B.FM, InputCnt$FC_B
	bge	.L321	@,
	ldr	r5, [r3, #720]	@ ctxt1312_B.SM, ctxt1312_B.SM
	ldr	r6, [fp, #-48]	@, %sfp
	cmp	r5, r6	@ ctxt1312_B.SM,
	bge	.L321	@,
	ldr	r0, [r3, #820]	@ ctxt1312_B.TM, ctxt1312_B.TM
	ldr	r7, [fp, #-52]	@, %sfp
	cmp	r7, r0	@, ctxt1312_B.TM
	ble	.L321	@,
	ldr	r1, [r3, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	sub	r2, r1, #2	@ prephitmp.1030, ctxt1312_B.pdcnt,
	str	r2, [r3, #568]	@ prephitmp.1030, ctxt1312_B.pdcnt
	b	.L320	@
.L294:
	add	r1, r0, #1	@ tmp296, D.1895,
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-52]	@, %sfp
	str	r5, [r2, #592]	@ InputCnt$FC_B, ctxt1312_B.FV_p
	str	r1, [r2, #568]	@ tmp296, ctxt1312_B.pdcnt
	str	r7, [r2, #596]	@, ctxt1312_B.SV_p
	str	r0, [r2, #600]	@, ctxt1312_B.TV_p
	b	.L304	@
.L355:
	str	r2, [r9, #0]	@ D.1997, <variable>.Fieldorder
	ldr	r2, [r3, #576]	@ temp.1186, ctxt1312_B.flg
	sub	ip, r2, #13	@ tmp408, temp.1186,
	cmp	ip, #12	@ tmp408,
	bhi	.L331	@,
	ldr	r2, [r3, #612]	@ ctxt1312_B.z34, ctxt1312_B.z34
	ldr	r3, [r3, #928]	@ prephitmp.1193, Thd1312.zthr
	cmp	r2, r3	@ ctxt1312_B.z34, prephitmp.1193
	bge	.L332	@,
.L351:
	mov	r3, #2	@ tmp412,
	str	r3, [r9, #8]	@ tmp412, <variable>.Pattern
	b	.L334	@
.L318:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r2, [r4, #568]	@ prephitmp.1030, ctxt1312_B.pdcnt
.L320:
	ldr	ip, [r4, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	movw	r5, #:lower16:.LANCHOR0	@ tmp375,
	movt	r5, #:upper16:.LANCHOR0	@ tmp375,
	add	r2, r2, ip	@ tmp376, prephitmp.1030, ctxt1312_T.pdcnt
	cmn	r2, #4	@ tmp376,
	blt	.L322	@,
	ldr	r1, [r5, #576]	@ prephitmp.1195, ctxt1312_B.flg
	b	.L306	@
.L331:
	cmp	r2, #0	@ temp.1186,
	beq	.L333	@,
	ldr	r3, [r3, #928]	@ prephitmp.1193, Thd1312.zthr
.L332:
	ldr	r0, [r4, #608]	@ ctxt1312_B.z32, ctxt1312_B.z32
	cmp	r0, r3	@ ctxt1312_B.z32, prephitmp.1193
	movlt	r3, #6	@ tmp416,
	strlt	r3, [r9, #8]	@ tmp416, <variable>.Pattern
	blt	.L334	@,
	b	.L333	@
.L357:
	ldr	r0, [r6, #620]	@ ctxt1312_B.FM, ctxt1312_B.FM
	mov	r1, #24	@ tmp381,
	str	r1, [r6, #576]	@ tmp381, ctxt1312_B.flg
	cmp	r0, r5	@ ctxt1312_B.FM, InputCnt$FC_B
	ble	.L314	@,
	ldr	r3, [r6, #720]	@ ctxt1312_B.SM, ctxt1312_B.SM
	ldr	r2, [fp, #-48]	@, %sfp
	cmp	r3, r2	@ ctxt1312_B.SM,
	ble	.L314	@,
	ldr	r0, [r6, #820]	@ ctxt1312_B.TM, ctxt1312_B.TM
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	ip, r0	@, ctxt1312_B.TM
	bge	.L314	@,
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r1, [r6, #576]	@ prephitmp.1195, ctxt1312_B.flg
	b	.L306	@
.L352:
	ldr	r6, [r2, #596]	@ ctxt1312_B.SV_p, ctxt1312_B.SV_p
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r7, r6	@, ctxt1312_B.SV_p
	bne	.L295	@,
	ldr	r6, [r2, #600]	@ ctxt1312_B.TV_p, ctxt1312_B.TV_p
	cmp	r1, r6	@ D.1894, ctxt1312_B.TV_p
	bne	.L295	@,
	ldr	r6, [r2, #916]	@ Thd1312.FThresh, Thd1312.FThresh
	ldr	r7, [fp, #-56]	@, %sfp
	cmp	r7, r6	@, Thd1312.FThresh
	bgt	.L295	@,
	ldr	r6, [r2, #920]	@ Thd1312.SThresh, Thd1312.SThresh
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r7, r6	@, Thd1312.SThresh
	bgt	.L295	@,
	ldr	r6, [r2, #924]	@ Thd1312.TThresh, Thd1312.TThresh
	cmp	r1, r6	@ D.1894, Thd1312.TThresh
	bgt	.L295	@,
	ldr	r1, [r2, #564]	@ ctxt1312_B.frame_cnt, ctxt1312_B.frame_cnt
	cmp	r1, #25	@ ctxt1312_B.frame_cnt,
	ble	.L295	@,
	add	r7, r2, #564	@ ivtmp.1191, tmp222,
	mov	r1, #1	@ min,
	mov	r2, #0	@ min.1182,
.L297:
	add	r8, r3, r2, asl #2	@, tmp259, tmp424, min.1182,
	ldr	r6, [r7, #56]	@ tmp262,
	add	r7, r7, #4	@ ivtmp.1191, ivtmp.1191,
	ldr	r8, [r8, #52]	@ tmp261,
	cmp	r8, r6	@ tmp261, tmp262
	movgt	r2, r1	@ min.1182, min
	add	r1, r1, #1	@ min, min,
	cmp	r1, #25	@ min,
	bne	.L297	@,
	cmp	r2, #0	@ min.1182,
	beq	.L298	@,
	ldr	r7, [fp, #-56]	@, %sfp
	add	r2, r7, #18	@ tmp263,,
	cmp	r5, r2, asl #1	@ InputCnt$FC_B, tmp263,
	bgt	.L299	@,
.L298:
	ldr	r5, .L358	@ ivtmp.1192,
	mov	r1, #1	@ min,
	mov	r2, #0	@ min.1180,
.L301:
	add	r7, r3, r2, asl #2	@, tmp269, tmp424, min.1180,
	ldr	r6, [r5, #56]	@ tmp272,
	add	r5, r5, #4	@ ivtmp.1192, ivtmp.1192,
	ldr	r7, [r7, #52]	@ tmp271,
	cmp	r7, r6	@ tmp271, tmp272
	movgt	r2, r1	@ min.1180, min
	add	r1, r1, #1	@ min, min,
	cmp	r1, #25	@ min,
	bne	.L301	@,
	cmp	r2, #0	@ min.1180,
	bne	.L295	@,
	ldr	r6, [fp, #-56]	@, %sfp
	ldr	r2, [r4, #620]	@ ctxt1312_B.FM, ctxt1312_B.FM
	add	r1, r6, #18	@ tmp274,,
	cmp	r2, r1, asl #1	@ ctxt1312_B.FM, tmp274,
	ble	.L295	@,
.L299:
	add	r0, r0, #1	@ tmp278, D.1895,
	str	r0, [r4, #568]	@ tmp278, ctxt1312_B.pdcnt
	b	.L303	@
.L322:
	ldr	r0, [fp, #-60]	@, %sfp
	bl	InitPulldown	@
	ldr	r1, [r5, #576]	@ prephitmp.1195, ctxt1312_B.flg
	b	.L306	@
.L353:
	cmp	r0, #1	@ D.2563,
	streq	r0, [r3, #572]	@ D.2563, ctxt1312_B.btmode
	streq	r0, [r3, #220]	@ D.2563, ctxt1312_T.btmode
	bne	.L313	@,
	b	.L314	@
.L321:
	ldr	r3, [r4, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	sub	r2, r3, #1	@ prephitmp.1030, ctxt1312_B.pdcnt,
	str	r2, [r4, #568]	@ prephitmp.1030, ctxt1312_B.pdcnt
	b	.L320	@
.L359:
	.align	2
.L358:
	.word	.LANCHOR0+564
	.fnend
	.size	Plldwn1312Dtct_B, .-Plldwn1312Dtct_B
	.align	2
	.global	CalcPulldown
	.type	CalcPulldown, %function
CalcPulldown:
	.fnstart
.LFB10:
	@ args = 48, pretend = 16, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-20
	sub	fp, ip, #20	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR0	@ tmp222,
	movt	r5, #:upper16:.LANCHOR0	@ tmp222,
	ldr	r8, [fp, #32]	@ D.2038, InputCnt.z32
	ldr	r7, [fp, #28]	@ D.2036, InputCnt.z14
	sub	sl, fp, #56	@ tmp221,,
	ldr	r4, [r5, #224]	@ ctxt1312_T.flg, ctxt1312_T.flg
	sub	r9, fp, #68	@ tmp219,,
	add	r6, sl, #4	@ tmp224, tmp221,
	add	lr, r9, #4	@ tmp225, tmp219,
	cmp	r4, #0	@ ctxt1312_T.flg,
	add	r4, fp, #4	@ tmp223,,
	mov	ip, #0	@ tmp139,
	str	r8, [r5, #256]	@ D.2038, ctxt1312_T.z32
	stmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	ldr	r3, [fp, #36]	@, InputCnt.z34
	str	r8, [r5, #608]	@ D.2038, ctxt1312_B.z32
	str	ip, [r6], #4	@ tmp139, Output32
	str	ip, [lr], #4	@ tmp139, Output1312
	str	ip, [r6, #0]	@ tmp139, Output32
	str	r7, [r5, #252]	@ D.2036, ctxt1312_T.z14
	str	r3, [r5, #260]	@, ctxt1312_T.z34
	str	ip, [lr, #0]	@ tmp139, Output1312
	str	ip, [fp, #-56]	@ tmp139, Output32
	str	ip, [fp, #-68]	@ tmp139, Output1312
	str	r7, [r5, #604]	@ D.2036, ctxt1312_B.z14
	str	r3, [r5, #612]	@, ctxt1312_B.z34
	ldr	r6, [fp, #44]	@ pOutputTop, pOutputTop
	ldr	r8, [fp, #48]	@ pOutputBtm, pOutputBtm
	bne	.L374	@,
	ldr	r0, [r5, #12]	@ ctxt32_T.flg, ctxt32_T.flg
	cmp	r0, #0	@ ctxt32_T.flg,
	bne	.L375	@,
	add	r7, fp, #20	@ tmp164,,
	str	r9, [sp, #24]	@ tmp219,
	mov	lr, sp	@,
	mov	ip, r7	@, tmp164
	ldmia	ip!, {r0, r1, r2, r3}	@,,,,
	str	ip, [fp, #-76]	@, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@,,,,
	str	lr, [fp, #-72]	@, %sfp
	ldmia	ip, {r0, r1}	@,,
	stmia	lr, {r0, r1}	@,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn1312Dtct_T	@
	mov	ip, r7	@ tmp167, tmp220
	str	sl, [sp, #24]	@ tmp221,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp167,,,,
	mov	ip, sp	@,
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldr	r3, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-72]	@, %sfp
	ldmia	r3, {r0, r1}	@,,
	stmia	r2, {r0, r1}	@,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn32Dtct_T	@
.L362:
	ldr	r2, [r5, #224]	@ ctxt1312_T.flg, ctxt1312_T.flg
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	cmp	r2, #0	@ ctxt1312_T.flg,
	beq	.L364	@,
.L378:
	ldr	r2, [fp, #-68]	@ Output1312.Fieldorder, Output1312.Fieldorder
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	ldr	r0, [fp, #-64]	@ Output1312.CopyTime, Output1312.CopyTime
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r1, [fp, #-60]	@ Output1312.Pattern, Output1312.Pattern
	str	r2, [r6, #0]	@ Output1312.Fieldorder, <variable>.Fieldorder
	stmib	r6, {r0, r1}	@ phole stm
	ldr	lr, [r5, #576]	@ ctxt1312_B.flg, ctxt1312_B.flg
	cmp	lr, #0	@ ctxt1312_B.flg,
	bne	.L376	@,
.L367:
	ldr	r1, [r3, #112]	@ ctxt32_B.flg, ctxt32_B.flg
	cmp	r1, #0	@ ctxt32_B.flg,
	beq	.L369	@,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	lr, sp	@,
	str	sl, [sp, #24]	@ tmp221,
	stmia	lr!, {r0, r1, r2, r3}	@,,,,
	ldmia	r7, {r0, r1}	@ tmp190,,
	stmia	lr, {r0, r1}	@ tmp189,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn32Dtct_B	@
.L368:
	ldr	r0, [r5, #576]	@ ctxt1312_B.flg, ctxt1312_B.flg
	movw	r3, #:lower16:.LANCHOR0	@ tmp197,
	movt	r3, #:upper16:.LANCHOR0	@ tmp197,
	cmp	r0, #0	@ ctxt1312_B.flg,
	bne	.L377	@,
.L370:
	ldr	ip, [r3, #112]	@ ctxt32_B.flg, ctxt32_B.flg
	cmp	ip, #0	@ ctxt32_B.flg,
	streq	ip, [r8, #4]	@ ctxt32_B.flg, <variable>.CopyTime
	ldrne	ip, [fp, #-56]	@ Output32.Fieldorder, Output32.Fieldorder
	moveq	ip, #2	@ tmp207,
	streq	ip, [r8, #0]	@ tmp207, <variable>.Fieldorder
	moveq	ip, #1	@ tmp209,
	strne	ip, [r8, #0]	@ Output32.Fieldorder, <variable>.Fieldorder
	ldrne	ip, [fp, #-52]	@ Output32.CopyTime, Output32.CopyTime
	strne	ip, [r8, #4]	@ Output32.CopyTime, <variable>.CopyTime
	ldrne	ip, [fp, #-48]	@ Output32.Pattern, Output32.Pattern
	str	ip, [r8, #8]	@ tmp209, <variable>.Pattern
.L373:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L375:
	add	r7, fp, #20	@ tmp220,,
	str	sl, [sp, #24]	@ tmp221,
	mov	lr, sp	@,
	mov	ip, r7	@ tmp161, tmp220
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp161,,,,
	stmia	lr!, {r0, r1, r2, r3}	@,,,,
	ldmia	ip, {r0, r1}	@ tmp161,,
	stmia	lr, {r0, r1}	@ tmp160,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn32Dtct_T	@
	ldr	r2, [r5, #224]	@ ctxt1312_T.flg, ctxt1312_T.flg
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	cmp	r2, #0	@ ctxt1312_T.flg,
	bne	.L378	@,
.L364:
	ldr	r3, [r3, #12]	@ ctxt32_T.flg, ctxt32_T.flg
	cmp	r3, #0	@ ctxt32_T.flg,
	streq	r3, [r6, #8]	@ ctxt32_T.flg, <variable>.Pattern
	ldrne	r3, [fp, #-56]	@ Output32.Fieldorder, Output32.Fieldorder
	moveq	r2, #2	@ tmp178,
	streq	r3, [r6, #4]	@ ctxt32_T.flg, <variable>.CopyTime
	streq	r2, [r6, #0]	@ tmp178, <variable>.Fieldorder
	strne	r3, [r6, #0]	@ Output32.Fieldorder, <variable>.Fieldorder
	ldrne	r3, [fp, #-52]	@ Output32.CopyTime, Output32.CopyTime
	strne	r3, [r6, #4]	@ Output32.CopyTime, <variable>.CopyTime
	ldrne	r3, [fp, #-48]	@ Output32.Pattern, Output32.Pattern
	strne	r3, [r6, #8]	@ Output32.Pattern, <variable>.Pattern
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	ldr	lr, [r5, #576]	@ ctxt1312_B.flg, ctxt1312_B.flg
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	cmp	lr, #0	@ ctxt1312_B.flg,
	beq	.L367	@,
.L376:
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp185,,,,
	mov	ip, sp	@,
	str	r9, [sp, #24]	@ tmp219,
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	r7, {r0, r1}	@ tmp185,,
	stmia	ip, {r0, r1}	@ tmp184,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn1312Dtct_B	@
	ldr	r0, [r5, #576]	@ ctxt1312_B.flg, ctxt1312_B.flg
	movw	r3, #:lower16:.LANCHOR0	@ tmp197,
	movt	r3, #:upper16:.LANCHOR0	@ tmp197,
	cmp	r0, #0	@ ctxt1312_B.flg,
	beq	.L370	@,
.L377:
	ldr	r3, [fp, #-68]	@ Output1312.Fieldorder, Output1312.Fieldorder
	ldr	r1, [fp, #-64]	@ Output1312.CopyTime, Output1312.CopyTime
	ldr	r2, [fp, #-60]	@ Output1312.Pattern, Output1312.Pattern
	str	r3, [r8, #0]	@ Output1312.Fieldorder, <variable>.Fieldorder
	stmib	r8, {r1, r2}	@ phole stm
	b	.L373	@
.L369:
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp193,,,,
	mov	r6, sp	@ tmp192,
	str	r9, [sp, #24]	@ tmp219,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r7, {r0, r1}	@ tmp193,,
	stmia	r6, {r0, r1}	@ tmp192,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn1312Dtct_B	@
	add	ip, fp, #20	@ tmp196,,
	str	sl, [sp, #24]	@ tmp221,
	mov	lr, sp	@,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp227,,,,
	stmia	lr!, {r0, r1, r2, r3}	@,,,,
	ldmia	ip, {r0, r1}	@ tmp227,,
	stmia	r6, {r0, r1}	@ tmp192,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn32Dtct_B	@
	b	.L368	@
.L374:
	add	r7, fp, #20	@ tmp220,,
	str	r9, [sp, #24]	@ tmp219,
	mov	lr, sp	@,
	mov	ip, r7	@ tmp156, tmp220
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp156,,,,
	stmia	lr!, {r0, r1, r2, r3}	@,,,,
	ldmia	ip, {r0, r1}	@ tmp156,,
	stmia	lr, {r0, r1}	@ tmp155,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp223,,,,
	bl	Plldwn1312Dtct_T	@
	b	.L362	@
	.fnend
	.size	CalcPulldown, .-CalcPulldown
	.align	2
	.global	InspectPulldownData
	.type	InspectPulldownData, %function
InspectPulldownData:
	.fnstart
.LFB11:
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
	ldr	r3, [r1, #40]	@ ctxt32_T.FM, ctxt32_T.FM
	str	r3, [r0, #0]	@ ctxt32_T.FM, <variable>.FC_T
	ldr	ip, [r1, #60]	@ ctxt32_T.SM, ctxt32_T.SM
	str	ip, [r0, #4]	@ ctxt32_T.SM, <variable>.SC_T
	ldr	r2, [r1, #80]	@ ctxt32_T.TM, ctxt32_T.TM
	str	r2, [r0, #8]	@ ctxt32_T.TM, <variable>.TC_T
	ldr	r3, [r1, #140]	@ ctxt32_B.FM, ctxt32_B.FM
	str	r3, [r0, #12]	@ ctxt32_B.FM, <variable>.FC_B
	ldr	ip, [r1, #160]	@ ctxt32_B.SM, ctxt32_B.SM
	str	ip, [r0, #16]	@ ctxt32_B.SM, <variable>.SC_B
	ldr	r2, [r1, #180]	@ ctxt32_B.TM, ctxt32_B.TM
	str	r2, [r0, #20]	@ ctxt32_B.TM, <variable>.TC_B
	ldr	r3, [r1, #252]	@ ctxt1312_T.z14, ctxt1312_T.z14
	str	r3, [r0, #24]	@ ctxt1312_T.z14, <variable>.z14
	ldr	ip, [r1, #256]	@ ctxt1312_T.z32, ctxt1312_T.z32
	str	ip, [r0, #28]	@ ctxt1312_T.z32, <variable>.z32
	ldr	r2, [r1, #260]	@ ctxt1312_T.z34, ctxt1312_T.z34
	str	r2, [r0, #32]	@ ctxt1312_T.z34, <variable>.z34
	ldr	r3, [r1, #12]	@ ctxt32_T.flg, ctxt32_T.flg
	str	r3, [r0, #36]	@ ctxt32_T.flg, <variable>.PD32flg_T
	ldr	ip, [r1, #112]	@ ctxt32_B.flg, ctxt32_B.flg
	str	ip, [r0, #40]	@ ctxt32_B.flg, <variable>.PD32flg_B
	ldr	r2, [r1, #4]	@ ctxt32_T.pdcnt, ctxt32_T.pdcnt
	str	r2, [r0, #44]	@ ctxt32_T.pdcnt, <variable>.PD32cnt_T
	ldr	r3, [r1, #104]	@ ctxt32_B.pdcnt, ctxt32_B.pdcnt
	str	r3, [r0, #48]	@ ctxt32_B.pdcnt, <variable>.PD32cnt_B
	ldr	ip, [r1, #8]	@ ctxt32_T.btmode, ctxt32_T.btmode
	str	ip, [r0, #52]	@ ctxt32_T.btmode, <variable>.PD32btmode
	ldr	r2, [r1, #224]	@ ctxt1312_T.flg, ctxt1312_T.flg
	str	r2, [r0, #56]	@ ctxt1312_T.flg, <variable>.PD1312flg_T
	ldr	r3, [r1, #576]	@ ctxt1312_B.flg, ctxt1312_B.flg
	str	r3, [r0, #60]	@ ctxt1312_B.flg, <variable>.PD1312flg_B
	ldr	ip, [r1, #216]	@ ctxt1312_T.pdcnt, ctxt1312_T.pdcnt
	str	ip, [r0, #64]	@ ctxt1312_T.pdcnt, <variable>.PD1312cnt_T
	ldr	r2, [r1, #568]	@ ctxt1312_B.pdcnt, ctxt1312_B.pdcnt
	str	r2, [r0, #68]	@ ctxt1312_B.pdcnt, <variable>.PD1312cnt_B
	ldr	r3, [r1, #220]	@ ctxt1312_T.btmode, ctxt1312_T.btmode
	str	r3, [r0, #72]	@ ctxt1312_T.btmode, <variable>.PD1312btmode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InspectPulldownData, .-InspectPulldownData
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	ctxt32_T, %object
	.size	ctxt32_T, 100
ctxt32_T:
	.space	100
	.type	ctxt32_B, %object
	.size	ctxt32_B, 100
ctxt32_B:
	.space	100
	.type	Thd32, %object
	.size	Thd32, 12
Thd32:
	.space	12
	.type	ctxt1312_T, %object
	.size	ctxt1312_T, 352
ctxt1312_T:
	.space	352
	.type	ctxt1312_B, %object
	.size	ctxt1312_B, 352
ctxt1312_B:
	.space	352
	.type	Thd1312, %object
	.size	Thd1312, 16
Thd1312:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
