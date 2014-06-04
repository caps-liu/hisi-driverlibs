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
	.file	"vpss_alg_fmd.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vpss_alg_fmd)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vpss) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vpss/vpss_v1_0/.vpss_alg_fmd.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vpss/vpss_v1_0/vpss_alg_fmd.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vpss/vpss_v1_0/vpss_alg_fmd.o -O2 -Wall -Wundef
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
	.global	DetectStillBlk
	.type	DetectStillBlk, %function
DetectStillBlk:
	.fnstart
.LFB1246:
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
	mov	r7, #344	@ tmp147,
	ldrh	r9, [r2, r7]	@, <variable>.sadReg
	movw	r3, #338	@ tmp139,
	mov	r4, #336	@ tmp143,
	movw	r8, #346	@,
	ldr	r1, [r1, #0]	@ STILLBLK_THR, <variable>.STILLBLK_THR
	movw	r6, #350	@ tmp155,
	ldrh	sl, [r2, r3]	@, <variable>.sadReg
	mov	r5, #356	@ tmp163,
	ldrh	ip, [r2, r4]	@, <variable>.sadReg
	movw	r4, #362	@ tmp171,
	strh	r9, [r2, r8]	@ movhi	@, <variable>.sadReg
	movw	r8, #342	@ tmp151,
	ldrh	r9, [r2, r8]	@, <variable>.sadReg
	cmp	r1, sl	@ STILLBLK_THR,
	str	ip, [fp, #-52]	@, %sfp
	mov	ip, #368	@ tmp179,
	str	sl, [fp, #-48]	@, %sfp
	movw	sl, #374	@ tmp187,
	strh	r9, [r2, r7]	@ movhi	@, <variable>.sadReg
	mov	r9, #352	@ tmp154,
	ldrh	r8, [r2, r6]	@, <variable>.sadReg
	mov	r7, #348	@ tmp159,
	strh	r8, [r2, r9]	@ movhi	@, <variable>.sadReg
	ldrh	r9, [r2, r7]	@, <variable>.sadReg
	movw	r7, #358	@ tmp162,
	strh	r9, [r2, r6]	@ movhi	@, <variable>.sadReg
	movw	r6, #354	@ tmp167,
	ldrh	r8, [r2, r5]	@, <variable>.sadReg
	strh	r8, [r2, r7]	@ movhi	@, <variable>.sadReg
	mov	r7, #364	@ tmp170,
	ldrh	r9, [r2, r6]	@, <variable>.sadReg
	mov	r6, #360	@ tmp175,
	strh	r9, [r2, r5]	@ movhi	@, <variable>.sadReg
	ldrh	r8, [r2, r4]	@, <variable>.sadReg
	strh	r8, [r2, r7]	@ movhi	@, <variable>.sadReg
	movw	r8, #366	@ tmp183,
	ldrh	r9, [r2, r6]	@, <variable>.sadReg
	strh	r9, [r2, r4]	@ movhi	@, <variable>.sadReg
	movw	r4, #370	@ tmp178,
	ldrh	r5, [r2, ip]	@, <variable>.sadReg
	mov	r9, #372	@ tmp191,
	strh	r5, [r2, r4]	@ movhi	@, <variable>.sadReg
	mov	r4, #380	@,
	ldrh	r7, [r2, r8]	@, <variable>.sadReg
	movw	r8, #382	@ tmp194,
	strh	r7, [r2, ip]	@ movhi	@, <variable>.sadReg
	mov	ip, #376	@ tmp186,
	ldrh	r6, [r2, sl]	@, <variable>.sadReg
	strh	r6, [r2, ip]	@ movhi	@, <variable>.sadReg
	movw	ip, #378	@ tmp199,
	ldrh	r5, [r2, r9]	@, <variable>.sadReg
	mov	r9, #380	@,
	strh	r5, [r2, sl]	@ movhi	@, <variable>.sadReg
	mov	r5, #340	@ tmp138,
	ldrh	r7, [r2, r4]	@, <variable>.sadReg
	ldr	r4, [fp, #-48]	@, %sfp
	strh	r7, [r2, r8]	@ movhi	@, <variable>.sadReg
	movw	r7, #386	@,
	ldrh	r6, [r2, ip]	@, <variable>.sadReg
	mov	ip, #388	@ tmp202,
	strh	r6, [r2, r9]	@ movhi	@, <variable>.sadReg
	mov	r9, #384	@ tmp207,
	strh	r4, [r2, r5]	@ movhi	@, <variable>.sadReg
	movw	r4, #386	@,
	ldr	r8, [fp, #-52]	@, %sfp
	strh	r8, [r2, r3]	@ movhi	@, <variable>.sadReg
	mov	r8, #392	@,
	ldrh	r6, [r2, r7]	@, <variable>.sadReg
	movw	r7, #394	@ tmp210,
	strh	r6, [r2, ip]	@ movhi	@, <variable>.sadReg
	movw	ip, #390	@ tmp215,
	ldrh	r5, [r2, r9]	@, <variable>.sadReg
	strh	r5, [r2, r4]	@ movhi	@, <variable>.sadReg
	mov	r5, #392	@,
	ldrh	r6, [r2, r8]	@, <variable>.sadReg
	movw	r4, #398	@,
	mov	r8, #400	@ tmp218,
	strh	r6, [r2, r7]	@ movhi	@, <variable>.sadReg
	mov	r6, #396	@ tmp223,
	ldrh	r9, [r2, ip]	@, <variable>.sadReg
	strh	r9, [r2, r5]	@ movhi	@, <variable>.sadReg
	movw	r9, #398	@,
	ldrh	r7, [r2, r4]	@, <variable>.sadReg
	mov	r5, #404	@,
	movw	r4, #406	@ tmp226,
	strh	r7, [r2, r8]	@ movhi	@, <variable>.sadReg
	movw	r7, #402	@ tmp231,
	ldrh	ip, [r2, r6]	@, <variable>.sadReg
	strh	ip, [r2, r9]	@ movhi	@, <variable>.sadReg
	mov	r9, #404	@,
	ldrh	r8, [r2, r5]	@, <variable>.sadReg
	movw	ip, #410	@,
	mov	r5, #412	@ tmp234,
	strh	r8, [r2, r4]	@ movhi	@, <variable>.sadReg
	mov	r8, #408	@ tmp239,
	ldrh	r6, [r2, r7]	@, <variable>.sadReg
	strh	r6, [r2, r9]	@ movhi	@, <variable>.sadReg
	movw	r6, #410	@,
	ldrh	r4, [r2, ip]	@, <variable>.sadReg
	mov	r9, #416	@,
	movw	ip, #418	@ tmp242,
	strh	r4, [r2, r5]	@ movhi	@, <variable>.sadReg
	movw	r4, #414	@ tmp247,
	ldrh	r7, [r2, r8]	@, <variable>.sadReg
	strh	r7, [r2, r6]	@ movhi	@, <variable>.sadReg
	mov	r7, #416	@,
	ldrh	r5, [r2, r9]	@, <variable>.sadReg
	movw	r6, #422	@,
	mov	r9, #424	@ tmp250,
	strh	r5, [r2, ip]	@ movhi	@, <variable>.sadReg
	mov	ip, #420	@ tmp255,
	ldrh	r8, [r2, r4]	@, <variable>.sadReg
	strh	r8, [r2, r7]	@ movhi	@, <variable>.sadReg
	movw	r8, #422	@,
	ldrh	r5, [r2, r6]	@, <variable>.sadReg
	mov	r7, #428	@,
	movw	r6, #430	@ tmp258,
	strh	r5, [r2, r9]	@ movhi	@, <variable>.sadReg
	movw	r5, #426	@ tmp263,
	ldrh	r4, [r2, ip]	@, <variable>.sadReg
	strh	r4, [r2, r8]	@ movhi	@, <variable>.sadReg
	mov	r4, #428	@,
	ldrh	r9, [r2, r7]	@, <variable>.sadReg
	strh	r9, [r2, r6]	@ movhi	@, <variable>.sadReg
	ldrh	ip, [r2, r5]	@, <variable>.sadReg
	strh	ip, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L2	@,
	ldr	r5, [fp, #-52]	@, %sfp
	cmp	r1, r5	@ STILLBLK_THR,
	bgt	.L21	@,
.L2:
	mov	r3, #0	@ stillBlkCnt,
.L3:
	movw	r9, #346	@ tmp276,
	ldrh	r6, [r0, #4]	@, <variable>.BlkSad
	ldrh	r7, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	mov	r8, #336	@ tmp274,
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	strh	r6, [r2, r8]	@ movhi	@, <variable>.sadReg
	ble	.L4	@,
	movw	r4, #342	@ tmp278,
	ldrh	ip, [r2, r4]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L22	@,
.L4:
	mov	ip, #352	@ tmp284,
	ldrh	r9, [r0, #8]	@, <variable>.BlkSad
	ldrh	r8, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	movw	r6, #342	@ tmp282,
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	strh	r9, [r2, r6]	@ movhi	@, <variable>.sadReg
	ble	.L5	@,
	mov	r5, #348	@ tmp286,
	ldrh	r4, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r4	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L23	@,
.L5:
	movw	ip, #358	@ tmp292,
	ldrh	r4, [r0, #12]	@, <variable>.BlkSad
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	mov	r9, #348	@ tmp290,
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	strh	r4, [r2, r9]	@ movhi	@, <variable>.sadReg
	ble	.L6	@,
	movw	r7, #354	@ tmp294,
	ldrh	r5, [r2, r7]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L24	@,
.L6:
	mov	r5, #364	@ tmp300,
	ldrh	r9, [r0, #16]	@, <variable>.BlkSad
	ldrh	ip, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	movw	r4, #354	@ tmp298,
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	strh	r9, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L7	@,
	mov	r8, #360	@ tmp302,
	ldrh	r7, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L25	@,
.L7:
	movw	r7, #370	@ tmp308,
	ldrh	r5, [r0, #20]	@, <variable>.BlkSad
	ldrh	r9, [r2, r7]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #360	@ tmp306,
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	strh	r5, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L8	@,
	movw	r6, #366	@ tmp310,
	ldrh	r8, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L26	@,
.L8:
	mov	r8, #376	@ tmp316,
	ldrh	r7, [r0, #24]	@, <variable>.BlkSad
	ldrh	r5, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	movw	r4, #366	@ tmp314,
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	strh	r7, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L9	@,
	mov	ip, #372	@ tmp318,
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L27	@,
.L9:
	movw	r6, #382	@ tmp324,
	ldrh	r7, [r0, #28]	@, <variable>.BlkSad
	ldrh	r8, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #372	@ tmp322,
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	strh	r7, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L10	@,
	movw	r9, #378	@ tmp326,
	ldrh	ip, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L28	@,
.L10:
	mov	ip, #388	@ tmp332,
	ldrh	r6, [r0, #32]	@, <variable>.BlkSad
	ldrh	r7, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	movw	r4, #378	@ tmp330,
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	strh	r6, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L11	@,
	mov	r5, #384	@ tmp334,
	ldrh	r9, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L29	@,
.L11:
	movw	ip, #394	@ tmp340,
	ldrh	r9, [r0, #36]	@, <variable>.BlkSad
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #384	@ tmp338,
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	strh	r9, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L12	@,
	movw	r8, #390	@ tmp342,
	ldrh	r5, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L30	@,
.L12:
	mov	ip, #400	@ tmp348,
	ldrh	r5, [r0, #40]	@, <variable>.BlkSad
	ldrh	r9, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	movw	r4, #390	@ tmp346,
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	strh	r5, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L13	@,
	mov	r7, #396	@ tmp350,
	ldrh	r8, [r2, r7]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L31	@,
.L13:
	movw	ip, #406	@ tmp356,
	ldrh	r8, [r0, #44]	@, <variable>.BlkSad
	ldrh	r5, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #396	@ tmp354,
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	strh	r8, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L14	@,
	movw	r6, #402	@ tmp358,
	ldrh	r7, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L32	@,
.L14:
	mov	ip, #412	@ tmp364,
	ldrh	r7, [r0, #48]	@, <variable>.BlkSad
	ldrh	r8, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	movw	r4, #402	@ tmp362,
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	strh	r7, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L15	@,
	mov	r9, #408	@ tmp366,
	ldrh	r6, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L33	@,
.L15:
	movw	r6, #418	@ tmp372,
	ldrh	r8, [r0, #52]	@, <variable>.BlkSad
	ldrh	ip, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #408	@ tmp370,
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	strh	r8, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L16	@,
	movw	r5, #414	@ tmp374,
	ldrh	r9, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L34	@,
.L16:
	mov	r9, #424	@ tmp380,
	movw	r5, #414	@ tmp378,
	ldrh	r6, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	ldrh	r9, [r0, #56]	@, <variable>.BlkSad
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	strh	r9, [r2, r5]	@ movhi	@, <variable>.sadReg
	ble	.L17	@,
	mov	r4, #420	@ tmp382,
	ldrh	ip, [r2, r4]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	bgt	.L35	@,
.L17:
	movw	r4, #430	@ tmp388,
	ldrh	r5, [r0, #60]	@, <variable>.BlkSad
	ldrh	ip, [r2, r4]	@ <variable>.sadReg, <variable>.sadReg
	mov	r4, #420	@ tmp386,
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	strh	r5, [r2, r4]	@ movhi	@, <variable>.sadReg
	ble	.L18	@,
	movw	ip, #426	@ tmp390,
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	ble	.L18	@,
	mov	ip, #428	@ tmp392,
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
.L18:
	ldrh	r6, [r0, #64]	@, <variable>.BlkSad
	movw	r1, #426	@ tmp394,
	strh	r6, [r2, r1]	@ movhi	@, <variable>.sadReg
	str	r3, [r0, #0]	@ stillBlkCnt, <variable>.StillBlkCnt
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L35:
	movw	r5, #422	@ tmp384,
	ldrh	r6, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L17	@
.L34:
	mov	r4, #416	@ tmp376,
	ldrh	ip, [r2, r4]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L16	@
.L33:
	movw	r8, #410	@ tmp368,
	ldrh	r5, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L15	@
.L32:
	mov	r5, #404	@ tmp360,
	ldrh	r9, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L14	@
.L31:
	movw	r9, #398	@ tmp352,
	ldrh	r6, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L13	@
.L30:
	mov	r6, #392	@ tmp344,
	ldrh	r7, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L12	@
.L29:
	movw	r7, #386	@ tmp336,
	ldrh	r8, [r2, r7]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L11	@
.L28:
	mov	r8, #380	@ tmp328,
	ldrh	r5, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L10	@
.L27:
	movw	r5, #374	@ tmp320,
	ldrh	r9, [r2, r5]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r9	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L9	@
.L26:
	mov	r9, #368	@ tmp312,
	ldrh	ip, [r2, r9]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, ip	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L8	@
.L25:
	movw	ip, #362	@ tmp304,
	ldrh	r6, [r2, ip]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r6	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L7	@
.L24:
	mov	r6, #356	@ tmp296,
	ldrh	r8, [r2, r6]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r8	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L6	@
.L23:
	movw	r8, #350	@ tmp288,
	ldrh	r7, [r2, r8]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r7	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L5	@
.L22:
	mov	r7, #344	@ tmp280,
	ldrh	r5, [r2, r7]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r5	@ STILLBLK_THR, <variable>.sadReg
	addgt	r3, r3, #1	@ stillBlkCnt, stillBlkCnt,
	b	.L4	@
.L21:
	ldrh	r3, [r2, r3]	@ <variable>.sadReg, <variable>.sadReg
	cmp	r1, r3	@ STILLBLK_THR, <variable>.sadReg
	movle	r3, #0	@, stillBlkCnt
	movgt	r3, #1	@, stillBlkCnt
	b	.L3	@
	.fnend
	.size	DetectStillBlk, .-DetectStillBlk
	.global	__aeabi_idiv
	.align	2
	.global	DetectFieldOrder
	.type	DetectFieldOrder, %function
DetectFieldOrder:
	.fnstart
.LFB1247:
	@ args = 0, pretend = 0, frame = 32
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
	ldr	r5, [r1, #8]	@ D.27219, <variable>.s32DeiMdLum
	mov	r4, r2	@ pstFmdCtx, pstFmdCtx
	ldr	ip, [r1, #44]	@ Width, <variable>.s32FrmWidth
	cmp	r5, #2	@ D.27219,
	ldr	r2, [r1, #40]	@ Height, <variable>.s32FrmHeight
	streq	r5, [r4, #196]	@ D.27219, <variable>.FieldOrder
	moveq	r0, r5	@ D.27222, D.27219
	beq	.L38	@,
	cmp	r5, #1	@ D.27219,
	beq	.L75	@,
.L39:
	ldr	r1, [r4, #0]	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	beq	.L74	@,
	ldr	lr, [r4, #8]	@ <variable>.BtMode, <variable>.BtMode
	cmp	lr, #1	@ <variable>.BtMode,
	ldr	lr, [r0, #8]	@ z34, <variable>.lasiCnt34
	ldreq	r5, [r0, #0]	@ z32, <variable>.lasiCnt14
	ldrne	r5, [r0, #4]	@ z32, <variable>.lasiCnt32
	ldreq	r6, [r0, #4]	@ z14, <variable>.lasiCnt32
	ldrne	r6, [r0, #0]	@ z14, <variable>.lasiCnt14
	cmp	lr, r5	@ z34, z32
	movge	r1, lr	@ biggerintwo, z34
	movlt	r1, r5	@ biggerintwo, z32
	cmp	r1, #254	@ biggerintwo,
	movgt	r7, r1, asr #31	@ tmp179, biggerintwo,
	movwgt	r0, #:lower16:1717986919	@ tmp177,
	movtgt	r0, #:upper16:1717986919	@ tmp177,
	movle	sl, #50	@ iftmp.404,
	smullgt	r8, sl, r0, r1	@, tmp176, tmp177, biggerintwo
	rsbgt	sl, r7, sl, asr #1	@, iftmp.404, tmp179, tmp176,
	add	sl, sl, r1	@ tmp180, iftmp.404, biggerintwo
	cmp	lr, r6	@ z34, z14
	movge	r1, lr	@ biggerintwo.712, z34
	movlt	r1, r6	@ biggerintwo.712, z14
	cmp	sl, r6	@ tmp180, z14
	movge	sl, #0	@, islasi14biggest
	movlt	sl, #1	@, islasi14biggest
	cmp	r1, #254	@ biggerintwo.712,
	movgt	r8, r1, asr #31	@ tmp185, biggerintwo.712,
	movwgt	r7, #:lower16:1717986919	@ tmp183,
	movtgt	r7, #:upper16:1717986919	@ tmp183,
	movle	r0, #50	@ iftmp.405,
	smullgt	r9, r0, r7, r1	@, tmp182, tmp183, biggerintwo.712
	rsbgt	r0, r8, r0, asr #1	@, iftmp.405, tmp185, tmp182,
	add	r0, r0, r1	@ tmp186, iftmp.405, biggerintwo.712
	cmp	r6, r5	@ z14, z32
	movge	r1, r6	@ biggerintwo.713, z14
	movlt	r1, r5	@ biggerintwo.713, z32
	cmp	r0, r5	@ tmp186, z32
	movge	r0, #0	@,
	movlt	r0, #1	@,
	cmp	r1, #254	@ biggerintwo.713,
	str	r0, [fp, #-48]	@, %sfp
	movgt	r7, r1, asr #31	@ tmp191, biggerintwo.713,
	movwgt	r0, #:lower16:1717986919	@ tmp189,
	movtgt	r0, #:upper16:1717986919	@ tmp189,
	movle	r9, #50	@ iftmp.406,
	smullgt	r8, r9, r0, r1	@, tmp188, tmp189, biggerintwo.713
	rsbgt	r9, r7, r9, asr #1	@, iftmp.406, tmp191, tmp188,
	cmp	lr, r5	@ z34, z32
	movlt	r0, lr	@ smallerintwo, z34
	movge	r0, r5	@ smallerintwo, z32
	add	r9, r9, r1	@ tmp192, iftmp.406, biggerintwo.713
	cmp	r9, lr	@ tmp192, z34
	movge	r9, #0	@,
	movlt	r9, #1	@,
	cmp	r0, #254	@ smallerintwo,
	str	r9, [fp, #-52]	@, %sfp
	movgt	r8, r0, asr #31	@ tmp197, smallerintwo,
	movwgt	r7, #:lower16:1717986919	@ tmp195,
	movtgt	r7, #:upper16:1717986919	@ tmp195,
	movle	r9, #50	@ iftmp.407,
	smullgt	r9, r7, r7, r0	@, tmp194, tmp195, smallerintwo
	rsbgt	r9, r8, r7, asr #1	@, iftmp.407, tmp197, tmp194,
	rsb	r9, r9, r0	@ tmp198, iftmp.407, smallerintwo
	cmp	lr, r6	@ z34, z14
	movlt	r0, lr	@ smallerintwo.714, z34
	movge	r0, r6	@ smallerintwo.714, z14
	cmp	r9, r6	@ tmp198, z14
	movle	r9, #0	@,
	movgt	r9, #1	@,
	cmp	r0, #254	@ smallerintwo.714,
	str	r9, [fp, #-72]	@, %sfp
	movgt	r9, r0, asr #31	@ tmp203, smallerintwo.714,
	movwgt	r7, #:lower16:1717986919	@ tmp201,
	movtgt	r7, #:upper16:1717986919	@ tmp201,
	movle	r7, #50	@ iftmp.408,
	smullgt	r8, r7, r7, r0	@, tmp200, tmp201, smallerintwo.714
	rsbgt	r7, r9, r7, asr #1	@, iftmp.408, tmp203, tmp200,
	rsb	r7, r7, r0	@ tmp204, iftmp.408, smallerintwo.714
	cmp	r6, r5	@ z14, z32
	movlt	r0, r6	@ smallerintwo.715, z14
	movge	r0, r5	@ smallerintwo.715, z32
	cmp	r7, r5	@ tmp204, z32
	movle	r7, #0	@, islasi32smallest
	movgt	r7, #1	@, islasi32smallest
	cmp	r0, #254	@ smallerintwo.715,
	movle	r9, #50	@,
	strle	r9, [fp, #-56]	@, %sfp
	ble	.L56	@,
	movw	r8, #:lower16:1717986919	@,
	movt	r8, #:upper16:1717986919	@,
	mov	r9, r0, asr #31	@, smallerintwo.715,
	str	r9, [fp, #-56]	@, %sfp
	smull	r9, r8, r8, r0	@,,, smallerintwo.715
	ldr	r9, [fp, #-56]	@, %sfp
	str	r8, [fp, #-64]	@, %sfp
	rsb	r8, r9, r8, asr #1	@,,,,
	str	r8, [fp, #-56]	@, %sfp
.L56:
	mul	r9, ip, r2	@ tmp213, Width, Height
	ldr	ip, [fp, #-56]	@, %sfp
	rsb	r3, r3, #16	@ tmp212, StllBlkCnt,
	rsb	r8, ip, r0	@ tmp210,, smallerintwo.715
	cmp	r8, lr	@ tmp210, z34
	movle	r8, #0	@, islasi34smallest
	movgt	r8, #1	@, islasi34smallest
	mov	lr, r9, asr #9	@ tmp214, tmp213,
	add	ip, lr, #31	@ tmp217, tmp214,
	cmp	lr, #0	@ tmp214,
	movlt	lr, ip	@ tmp216, tmp217
	mov	r2, lr, asr #5	@ tmp218, tmp216,
	mul	lr, r2, r3	@ tmp219, tmp218, tmp212
	cmp	lr, #0	@ tmp219,
	add	r9, lr, #15	@ tmp222, tmp219,
	movlt	lr, r9	@ tmp221, tmp222
	mov	ip, lr, asr #4	@ tmp223, tmp221,
	add	r2, ip, ip, asl #1	@, tmp226, tmp223, tmp223,
	add	r3, r2, r2, lsr #31	@, tmp228, tmp226, tmp226,
	mov	r3, r3, asr #1	@ zthr, tmp228,
	cmp	r3, #6	@ zthr,
	movlt	r3, #6	@ zthr,
	cmp	r1, #100	@ biggerintwo.713,
	ble	.L58	@,
	rsb	r0, r0, r1	@ tmp230, smallerintwo.715, biggerintwo.713
	mov	r2, #100	@ tmp232,
	str	r3, [fp, #-60]	@,
	mul	r0, r2, r0	@, tmp232, tmp230
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-60]	@,
	cmp	r0, #19	@,
	ble	.L59	@,
.L58:
	mov	r1, r3	@, zthr
	rsb	r0, r5, r6	@, z32, z14
	bl	__aeabi_idiv	@
	add	r3, r0, #49	@ tmp241, tmp240,
	cmp	r3, #98	@ tmp241,
	bls	.L59	@,
	cmp	r0, #500	@ tmp240,
	movgt	r3, #500	@ fac,
	ble	.L76	@,
.L61:
	uxtb	r2, sl	@ D.27289, islasi14biggest
	eor	lr, r7, #1	@ tmp244, islasi32smallest,
	tst	r2, lr	@ D.27289, tmp244
	beq	.L62	@,
.L78:
	cmp	r3, #50	@ fac,
	movlt	r3, #50	@ fac,
.L63:
	cmp	r8, #0	@ islasi34smallest,
	bne	.L64	@,
	ldr	lr, [fp, #-52]	@, %sfp
	cmp	lr, #0	@,
	bne	.L65	@,
	tst	r2, r7	@ D.27289, islasi32smallest
	bne	.L64	@,
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-48]	@, %sfp
	tst	r0, r2	@,
	beq	.L77	@,
.L64:
	ldr	r0, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	orr	sl, r0, sl	@ tmp265,, islasi14biggest
	ldr	ip, [fp, #-72]	@, %sfp
	orr	sl, sl, r9	@ tmp266, tmp265,
	orr	r9, sl, ip	@ tmp267, tmp266,
	orr	r7, r9, r7	@ tmp268, tmp267, islasi32smallest
	orrs	r7, r7, r8	@, tmp268, islasi34smallest
	bne	.L66	@,
	cmp	r3, #50	@ fac,
	movge	r3, #50	@ fac.720,
	mvn	r1, #49	@ tmp270,
	cmp	r3, r1	@ fac.720, tmp270
	movlt	r3, r1	@ fac, tmp270
.L66:
	ldr	lr, [r4, #192]	@ <variable>.SADDiffAcc, <variable>.SADDiffAcc
	add	r3, r3, lr	@ D.27326, fac, <variable>.SADDiffAcc
	str	r3, [r4, #192]	@ D.27326, <variable>.SADDiffAcc
	cmp	r3, #1000	@ D.27326,
	movgt	r3, #1000	@ tmp272,
	strgt	r3, [r4, #192]	@ tmp272, <variable>.SADDiffAcc
	bgt	.L68	@,
	cmn	r3, #1000	@ D.27326,
	movw	r2, #:lower16:-1000	@ tmp273,
	movt	r2, #:upper16:-1000	@ tmp273,
	strlt	r2, [r4, #192]	@ tmp273, <variable>.SADDiffAcc
	blt	.L70	@,
	cmp	r3, #200	@ D.27326,
	bgt	.L68	@,
	cmn	r3, #200	@ D.27326,
	blt	.L70	@,
.L74:
	ldr	r0, [r4, #196]	@ D.27222, <variable>.FieldOrder
.L38:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L59:
	uxtb	r2, sl	@ D.27289, islasi14biggest
	eor	lr, r7, #1	@ tmp244, islasi32smallest,
	tst	r2, lr	@ D.27289, tmp244
	mov	r3, #0	@ fac,
	bne	.L78	@,
.L62:
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	eor	ip, r0, #1	@ tmp249,,
	tst	ip, r9	@ tmp249,
	beq	.L63	@,
	mvn	r1, #49	@ tmp254,
	cmp	r3, r1	@ fac, tmp254
	movge	r3, r1	@ fac, tmp254
	b	.L63	@
.L68:
	mov	r0, #0	@ tmp275,
	str	r0, [r4, #196]	@ tmp275, <variable>.FieldOrder
	b	.L38	@
.L75:
	ldr	r1, [r4, #8]	@ D.27227, <variable>.BtMode
	cmp	r1, #0	@ D.27227,
	beq	.L79	@,
	cmp	r1, #1	@ D.27227,
	bne	.L39	@,
	ldr	r1, [r4, #12]	@ <variable>.RefFld, <variable>.RefFld
	cmp	r1, #1	@ <variable>.RefFld,
	bne	.L39	@,
	ldr	r0, [r4, #196]	@ D.27222, <variable>.FieldOrder
	b	.L38	@
.L77:
	orrs	r0, r7, r0	@, islasi32smallest,
	beq	.L64	@,
.L65:
	mov	r3, #0	@ fac,
	b	.L64	@
.L70:
	mov	r0, #1	@ tmp276,
	str	r0, [r4, #196]	@ tmp276, <variable>.FieldOrder
	b	.L38	@
.L79:
	ldr	r1, [r4, #12]	@ <variable>.RefFld, <variable>.RefFld
	cmp	r1, #0	@ <variable>.RefFld,
	bne	.L39	@,
	ldr	r0, [r4, #196]	@ D.27222, <variable>.FieldOrder
	b	.L38	@
.L76:
	movw	r1, #:lower16:-500	@ tmp242,
	movt	r1, #:upper16:-500	@ tmp242,
	cmp	r0, r1	@ tmp240, tmp242
	movge	r3, r0	@ fac, tmp240
	movlt	r3, r1	@ fac, tmp242
	b	.L61	@
	.fnend
	.size	DetectFieldOrder, .-DetectFieldOrder
	.align	2
	.global	DetectSceneChange
	.type	DetectSceneChange, %function
DetectSceneChange:
	.fnstart
.LFB1248:
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
	ldmia	r0, {r2, r6}	@ phole ldm
	mov	r3, r0	@ SadBuf, SadBuf
	ldr	r5, [r0, #8]	@ tmp169,
	movw	r7, #:lower16:200000	@ tmp189,
	ldr	r4, [r0, #12]	@ tmp170,
	cmp	r6, r2	@ tmp168, MinSad
	movlt	sl, r6	@ MinSad.761, tmp168
	movge	sl, r2	@ MinSad.761, MinSad
	add	ip, r6, r2	@ SadMean.763, tmp168, MinSad
	cmp	r5, sl	@ tmp169, MinSad.761
	movlt	r8, r5	@ MinSad.767, tmp169
	movge	r8, sl	@ MinSad.767, MinSad.761
	cmp	r6, r2	@ tmp168, MinSad
	movge	r9, r6	@ MaxSad.762, tmp168
	movlt	r9, r2	@ MaxSad.762, MinSad
	add	r0, r5, ip	@ SadMean.769, tmp169, SadMean.763
	ldr	ip, [r3, #16]	@ tmp171,
	cmp	r5, r9	@ tmp169, MaxSad.762
	movge	sl, r5	@ MaxSad.768, tmp169
	movlt	sl, r9	@ MaxSad.768, MaxSad.762
	ldr	r2, [r3, #20]	@ tmp172,
	cmp	r4, r8	@ tmp170, MinSad.767
	movlt	r9, r4	@ MinSad.773, tmp170
	movge	r9, r8	@ MinSad.773, MinSad.767
	add	r0, r4, r0	@ SadMean.775, tmp170, SadMean.769
	cmp	ip, r9	@ tmp171, MinSad.773
	movlt	r8, ip	@ MinSad.779, tmp171
	movge	r8, r9	@ MinSad.779, MinSad.773
	cmp	r4, sl	@ tmp170, MaxSad.768
	movge	sl, r4	@ MaxSad.774, tmp170
	movlt	sl, sl	@ MaxSad.774, MaxSad.768
	add	r9, ip, r0	@ SadMean.781, tmp171, SadMean.775
	cmp	r2, r8	@ tmp172, MinSad.779
	movlt	r8, r2	@ tmp174, tmp172
	movge	r8, r8	@ tmp174, MinSad.779
	cmp	ip, sl	@ tmp171, MaxSad.774
	movge	sl, ip	@ MaxSad.780, tmp171
	movlt	sl, sl	@ MaxSad.780, MaxSad.774
	add	r0, r2, r9	@ tmp173, tmp172, SadMean.781
	ldr	r9, [r1, #132]	@ <variable>.frmHstBin.HISTOGRAM_BIN_4, <variable>.frmHstBin.HISTOGRAM_BIN_4
	cmp	r2, sl	@ tmp172, MaxSad.780
	movge	sl, r2	@ tmp176, tmp172
	movlt	sl, sl	@ tmp176, MaxSad.780
	rsb	r0, r8, r0	@ tmp175, tmp174, tmp173
	ldr	r8, [r1, #128]	@ <variable>.frmHstBin.HISTOGRAM_BIN_3, <variable>.frmHstBin.HISTOGRAM_BIN_3
	rsb	r0, sl, r0	@ D.27370, tmp176, tmp175
	ldr	r1, [r1, #124]	@ <variable>.frmHstBin.HISTOGRAM_BIN_2, <variable>.frmHstBin.HISTOGRAM_BIN_2
	add	sl, r0, #3	@ tmp180, D.27370,
	cmp	r0, #0	@ D.27370,
	add	r8, r8, r9, asl #1	@, tmp163, <variable>.frmHstBin.HISTOGRAM_BIN_3, <variable>.frmHstBin.HISTOGRAM_BIN_4,
	movt	r7, #:upper16:200000	@ tmp189,
	str	r6, [r3, #0]	@ tmp168,* SadBuf
	movlt	r0, sl	@ D.27370, tmp180
	add	r1, r1, r8, asl #1	@, tmp166, <variable>.frmHstBin.HISTOGRAM_BIN_2, tmp163,
	mov	r0, r0, asr #2	@ tmp181, D.27370,
	str	r5, [r3, #4]	@ tmp169,
	mov	r1, r1, asl #1	@ CurSad, tmp166,
	str	r4, [r3, #8]	@ tmp170,
	cmp	r1, r0, asl #1	@ CurSad, tmp181,
	str	r1, [r3, #20]	@ CurSad,
	str	ip, [r3, #12]	@ tmp171,
	movle	r0, #0	@, tmp184
	movgt	r0, #1	@, tmp184
	str	r2, [r3, #16]	@ tmp172,
	cmp	r1, r7	@ CurSad, tmp189
	movle	r0, #0	@,
	andgt	r0, r0, #1	@,,, tmp184
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	DetectSceneChange, .-DetectSceneChange
	.align	2
	.global	OverLapedTitleCheck
	.type	OverLapedTitleCheck, %function
OverLapedTitleCheck:
	.fnstart
.LFB1249:
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
	ldr	r3, [r0, #20]	@ <variable>.PCC_FWD_TKR, <variable>.PCC_FWD_TKR
	ldr	r0, [r0, #24]	@ <variable>.PCC_BWD_TKR, <variable>.PCC_BWD_TKR
	cmp	r0, r3	@ <variable>.PCC_BWD_TKR, <variable>.PCC_FWD_TKR
	movge	r0, r3	@ tmp136, <variable>.PCC_FWD_TKR
	cmp	r0, #64	@ tmp136,
	movle	r0, #0	@,
	movgt	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OverLapedTitleCheck, .-OverLapedTitleCheck
	.align	2
	.global	Check32PdPattern
	.type	Check32PdPattern, %function
Check32PdPattern:
	.fnstart
.LFB1250:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #136	@ tmp147,,
	mov	r5, r0	@ Phase, Phase
	mov	r6, r1	@ Sads, Sads
	mov	r8, r2	@ MaxSad, MaxSad
	mov	r0, r4	@, tmp147
	movw	r1, #:lower16:.LANCHOR0	@,
	mov	r2, #100	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	mov	r7, r3	@ MinSad, MinSad
	bl	memcpy	@
	ldr	r3, [fp, #4]	@ MinSad2nd, MinSad2nd
	add	r5, r5, r5, asl #2	@, tmp154, Phase, Phase,
	cmp	r3, r7, asl #1	@ MinSad2nd, MinSad,
	add	r3, r4, r5, asl #2	@, pMask, tmp147, tmp154,
	movlt	r0, #0	@ RetFlag,
	blt	.L86	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp157,
	cmp	r2, #0	@ tmp157,
	beq	.L87	@,
	ldr	r0, [r6, #0]	@ tmp159,* Sads
	ldr	ip, [r3, #4]	@ tmp163,
	cmp	r8, r0, asl #5	@ MaxSad, tmp159,
	movge	r2, #0	@, PatCnt.839
	movlt	r2, #1	@, PatCnt.839
	cmp	ip, #0	@ tmp163,
	beq	.L89	@,
.L98:
	ldr	r0, [r6, #4]	@ tmp165,
	mov	lr, r0, asl #5	@ tmp167, tmp165,
	cmp	lr, r8	@ tmp167, MaxSad
	movle	r0, r2	@, PatCnt.847, PatCnt.839
	addgt	r0, r2, #1	@,, PatCnt.847, PatCnt.839
	ldr	r2, [r3, #8]	@ tmp171,
	cmp	r2, #0	@ tmp171,
	beq	.L91	@,
.L99:
	ldr	lr, [r6, #8]	@ tmp173,
	mov	ip, lr, asl #5	@ tmp175, tmp173,
	cmp	ip, r8	@ tmp175, MaxSad
	movle	r1, r0	@, PatCnt.857, PatCnt.847
	addgt	r1, r0, #1	@,, PatCnt.857, PatCnt.847
	ldr	r0, [r3, #12]	@ tmp179,
	cmp	r0, #0	@ tmp179,
	beq	.L93	@,
.L100:
	ldr	ip, [r6, #12]	@ tmp181,
	ldr	r3, [r3, #16]	@ tmp187,
	mov	r2, ip, asl #5	@ tmp183, tmp181,
	cmp	r2, r8	@ tmp183, MaxSad
	movle	r2, r1	@, PatCnt.867, PatCnt.857
	addgt	r2, r1, #1	@,, PatCnt.867, PatCnt.857
	cmp	r3, #0	@ tmp187,
	bne	.L95	@,
.L101:
	ldr	r1, [r6, #16]	@ tmp189,
	cmp	r1, r7	@ tmp189, MinSad
	movne	r0, r2	@, PatCnt, PatCnt.867
	addeq	r0, r2, #1	@,, PatCnt, PatCnt.867
.L96:
	cmp	r0, #4	@ PatCnt,
	movle	r0, #0	@, RetFlag
	movgt	r0, #1	@, RetFlag
.L86:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L87:
	ldr	r1, [r6, #0]	@ tmp161,* Sads
	ldr	ip, [r3, #4]	@ tmp163,
	cmp	r1, r7	@ tmp161, MinSad
	movne	r2, #0	@, PatCnt.839
	moveq	r2, #1	@, PatCnt.839
	cmp	ip, #0	@ tmp163,
	bne	.L98	@,
.L89:
	ldr	r1, [r6, #4]	@ tmp169,
	cmp	r1, r7	@ tmp169, MinSad
	movne	r0, r2	@, PatCnt.847, PatCnt.839
	addeq	r0, r2, #1	@,, PatCnt.847, PatCnt.839
	ldr	r2, [r3, #8]	@ tmp171,
	cmp	r2, #0	@ tmp171,
	bne	.L99	@,
.L91:
	ldr	r1, [r6, #8]	@ tmp177,
	cmp	r1, r7	@ tmp177, MinSad
	movne	r1, r0	@, PatCnt.857, PatCnt.847
	addeq	r1, r0, #1	@,, PatCnt.857, PatCnt.847
	ldr	r0, [r3, #12]	@ tmp179,
	cmp	r0, #0	@ tmp179,
	bne	.L100	@,
.L93:
	ldr	lr, [r6, #12]	@ tmp185,
	ldr	r3, [r3, #16]	@ tmp187,
	cmp	lr, r7	@ tmp185, MinSad
	movne	r2, r1	@, PatCnt.867, PatCnt.857
	addeq	r2, r1, #1	@,, PatCnt.867, PatCnt.857
	cmp	r3, #0	@ tmp187,
	beq	.L101	@,
.L95:
	ldr	ip, [r6, #16]	@ tmp192,
	mov	r0, ip, asl #5	@ tmp194, tmp192,
	cmp	r0, r8	@ tmp194, MaxSad
	movle	r0, r2	@, PatCnt, PatCnt.867
	addgt	r0, r2, #1	@,, PatCnt, PatCnt.867
	b	.L96	@
	.fnend
	.size	Check32PdPattern, .-Check32PdPattern
	.align	2
	.global	Calc32PLD
	.type	Calc32PLD, %function
Calc32PLD:
	.fnstart
.LFB1251:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #84
	sub	sp, sp, #84	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r4, [fp, #4]	@ pstFmdCtx, pstFmdCtx
	str	r0, [fp, #-76]	@ D.29194, %sfp
	str	r1, [fp, #-112]	@ pstFrmPcc, %sfp
	add	r0, r4, #80	@, pstFmdCtx,
	str	r3, [fp, #-84]	@ IsSceneChange, %sfp
	str	r0, [fp, #-96]	@, %sfp
	ldr	r1, [r4, #92]	@ <variable>.pSadWt, <variable>.pSadWt
	ldr	r3, [r4, #88]	@ pRd.913, <variable>.pSadRd
	str	r2, [r1, #0]	@ Sad,* <variable>.pSadWt
	ldr	ip, [r4, #92]	@ <variable>.pSadWt, <variable>.pSadWt
	ldr	r2, [r4, #84]	@ <variable>.SadCnt, <variable>.SadCnt
	add	r1, ip, #4	@ iftmp.417, <variable>.pSadWt,
	cmp	r1, r0	@ iftmp.417,
	add	r2, r2, #1	@ D.27465, <variable>.SadCnt,
	addhi	r1, r4, #20	@ iftmp.417, pstFmdCtx,
	cmp	r2, #4	@ D.27465,
	str	r1, [r4, #92]	@ iftmp.417, <variable>.pSadWt
	str	r2, [r4, #84]	@ D.27465, <variable>.SadCnt
	ble	.L169	@,
	ldr	ip, [r3, #0]	@ MinSad,* pRd.913
	add	r6, r4, #20	@, pstFmdCtx,
	ldr	r5, [fp, #-96]	@, %sfp
	str	r6, [fp, #-104]	@, %sfp
	mov	r1, r6	@ pRd.925,
	str	ip, [fp, #-64]	@ MinSad, Sads
	ldr	r7, [r3], #4	@ MinSad.928,
	ldr	lr, [fp, #-96]	@, %sfp
	cmp	r5, r3	@, pRd.925
	ldr	r9, [fp, #-104]	@, %sfp
	movcs	r1, r3	@ pRd.925, pRd.925
	cmp	ip, r7	@ MinSad, MinSad.928
	movlt	r5, ip	@ MinSad.920, MinSad
	movge	r5, r7	@ MinSad.920, MinSad.928
	ldr	r3, [r1, #0]	@ tmp205,* pRd.925
	cmp	r7, ip	@ MinSad.928, MinSad
	movlt	r7, ip	@ MaxSad.927, MinSad
	add	r8, r1, #4	@ pRd.916, pRd.925,
	ldr	ip, [fp, #-96]	@, %sfp
	str	r3, [fp, #-60]	@ tmp205, Sads
	ldr	r0, [r1, #0]	@ MinSad.924,* pRd.925
	cmp	r5, r0	@ MinSad.920, MinSad.924
	movgt	r3, #1	@ MinPos,
	movle	r3, #0	@ MinPos,
	movgt	r5, r0	@ MinSad.920, MinSad.924
	cmp	r7, r0	@ MaxSad.927, MinSad.924
	movlt	r7, r0	@ MaxSad.926, MinSad.924
	cmp	lr, r8	@, pRd.916
	ldr	r0, [fp, #-104]	@, %sfp
	movcc	r8, r9	@ pRd.916,
	add	r1, r8, #4	@ pRd.931, pRd.916,
	ldr	sl, [r8, #0]	@ tmp206,* pRd.916
	str	sl, [fp, #-56]	@ tmp206, Sads
	ldr	r6, [r8, #0]	@ MinSad.929,* pRd.916
	ldr	sl, [fp, #-96]	@, %sfp
	cmp	r5, r6	@ MinSad.920, MinSad.929
	ldr	r8, [fp, #-104]	@, %sfp
	movgt	r3, #2	@ MinPos,
	movgt	r5, r6	@ MinSad.920, MinSad.929
	cmp	r7, r6	@ MaxSad.926, MinSad.929
	movlt	r7, r6	@ MaxSad.930, MinSad.929
	cmp	ip, r1	@, pRd.931
	movcc	r1, r0	@ pRd.931,
	add	r6, r1, #4	@ pRd.935, pRd.931,
	ldr	r9, [r1, #0]	@ tmp207,* pRd.931
	sub	r0, r2, #1	@, D.27465,
	ldr	r2, [fp, #-56]	@ MinSad2nd.945, Sads
	str	r9, [fp, #-52]	@ tmp207, Sads
	ldr	lr, [r1, #0]	@ MinSad.933,* pRd.931
	ldr	r9, [fp, #-52]	@, Sads
	cmp	r5, lr	@ MinSad.920, MinSad.933
	ldr	r1, [fp, #-60]	@ MinSad2nd.941, Sads
	movgt	r3, #3	@ MinPos,
	movgt	r5, lr	@ MinSad.920, MinSad.933
	cmp	r7, lr	@ MaxSad.930, MinSad.933
	movlt	r7, lr	@ MaxSad.934, MinSad.933
	cmp	sl, r6	@, pRd.935
	movcc	r6, r8	@ pRd.935,
	ldr	r8, [r6, #0]	@ MinSad2nd,* pRd.935
	str	r8, [fp, #-48]	@ MinSad2nd, Sads
	ldr	ip, [r6, #0]	@ MinSad.915,* pRd.935
	ldr	r6, [fp, #-64]	@ MinSad2nd.936, Sads
	cmp	ip, r5	@ MinSad.915, MinSad.920
	str	r0, [fp, #-88]	@, %sfp
	str	r9, [fp, #-80]	@, %sfp
	sub	r9, fp, #64	@ tmp329,,
	movlt	r3, #4	@ MinPos,
	movlt	r5, ip	@ MinSad.920, MinSad.915
	cmp	ip, r7	@ MinSad.915, MaxSad.934
	movge	r7, ip	@ MaxSad, MinSad.915
	movlt	r7, r7	@ MaxSad, MaxSad.934
	ldr	ip, [fp, #-88]	@, %sfp
	cmp	r3, #0	@ MinPos,
	cmpne	r7, r6	@, MaxSad, MinSad2nd.936
	ldr	lr, [r4, #88]	@ <variable>.pSadRd, <variable>.pSadRd
	mov	r0, #0	@,
	movle	r6, r7	@, MinSad2nd.936, MaxSad
	cmp	r3, #1	@ MinPos,
	cmpne	r6, r1	@, MinSad2nd.936, MinSad2nd.941
	add	sl, lr, #4	@, <variable>.pSadRd,
	str	sl, [fp, #-72]	@, %sfp
	str	ip, [r4, #84]	@, <variable>.SadCnt
	movgt	r6, r1	@, MinSad2nd.941, MinSad2nd.941
	ldr	r1, [fp, #-80]	@, %sfp
	cmp	r3, #2	@ MinPos,
	cmpne	r6, r2	@, MinSad2nd.941, MinSad2nd.945
	ldr	lr, [fp, #-80]	@, %sfp
	movgt	sl, r2	@, MinSad2nd.945, MinSad2nd.945
	movle	sl, r6	@, MinSad2nd.945, MinSad2nd.941
	cmp	r3, #3	@ MinPos,
	cmpne	sl, r1	@, MinSad2nd.945,
	ldr	r6, [fp, #-72]	@, %sfp
	mov	r1, r9	@, tmp329
	movgt	sl, lr	@, MinSad2nd.951,
	cmp	r3, #4	@ MinPos,
	cmpne	r8, sl	@, MinSad2nd, MinSad2nd.951
	ldr	ip, [fp, #-96]	@, %sfp
	mov	r2, r7	@, MaxSad
	movge	r8, sl	@, MinSad2nd, MinSad2nd.951
	ldr	sl, [fp, #-104]	@, %sfp
	cmp	ip, r6	@,
	mov	r3, r5	@, MinSad.920
	movcs	sl, r6	@,
	str	sl, [r4, #88]	@, <variable>.pSadRd
	ldr	r6, [fp, #-112]	@, %sfp
	ldr	lr, [r6, #20]	@ <variable>.PCC_FWD_TKR, <variable>.PCC_FWD_TKR
	ldr	ip, [r6, #24]	@ <variable>.PCC_BWD_TKR, <variable>.PCC_BWD_TKR
	str	r8, [sp, #0]	@ MinSad2nd,
	cmp	ip, lr	@ <variable>.PCC_BWD_TKR, <variable>.PCC_FWD_TKR
	movge	ip, lr	@ tmp246, <variable>.PCC_FWD_TKR
	cmp	ip, #64	@ tmp246,
	movle	lr, #0	@,
	movgt	lr, #1	@,
	str	lr, [fp, #-80]	@, %sfp
	str	lr, [r4, #160]	@, <variable>.PdInfo.WithOvlpTitle
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag.957
	mvneq	sl, #0	@ ValidPhase,
	bne	.L170	@,
.L122:
	mov	r6, #1	@ InValidCnt,
	mvn	r3, #0	@,
	str	r3, [fp, #-72]	@, %sfp
.L123:
	mov	r0, #1	@,
	mov	r1, r9	@, tmp329
	mov	r2, r7	@, MaxSad
	mov	r3, r5	@, MinSad.920
	str	r8, [sp, #0]	@ MinSad2nd,
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag.923
	bne	.L129	@,
.L130:
	add	r6, r6, #1	@ InValidCnt, InValidCnt,
.L131:
	mov	r0, #2	@,
	mov	r1, r9	@, tmp329
	mov	r2, r7	@, MaxSad
	mov	r3, r5	@, MinSad.920
	str	r8, [sp, #0]	@ MinSad2nd,
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag.969
	bne	.L137	@,
.L138:
	add	r6, r6, #1	@ InValidCnt, InValidCnt,
.L139:
	mov	r0, #3	@,
	mov	r1, r9	@, tmp329
	mov	r2, r7	@, MaxSad
	mov	r3, r5	@, MinSad.920
	str	r8, [sp, #0]	@ MinSad2nd,
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag.975
	bne	.L145	@,
.L146:
	add	r6, r6, #1	@ InValidCnt, InValidCnt,
.L147:
	mov	r1, r9	@, tmp329
	mov	r2, r7	@, MaxSad
	mov	r3, r5	@, MinSad.920
	mov	r0, #4	@,
	str	r8, [sp, #0]	@ MinSad2nd,
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag
	bne	.L171	@,
.L153:
	add	r6, r6, #1	@ InValidCnt, InValidCnt,
.L158:
	ldr	r3, [fp, #-80]	@, %sfp
	cmp	r6, #4	@ InValidCnt,
	orrgt	r3, r3, #1	@,,,
	cmp	r3, #0	@ tmp289,
	mov	r6, r3	@ tmp289,
	beq	.L172	@,
	ldr	r2, [fp, #-80]	@, %sfp
	cmp	r2, #0	@,
	movne	r2, #0	@ tmp290,
	strneb	r2, [r4, #164]	@ tmp290, <variable>.PdInfo.PdState
	beq	.L160	@,
.L162:
	ldrsb	r3, [r4, #164]	@ <variable>.PdInfo.PdState, <variable>.PdInfo.PdState
	sxtb	lr, r2	@ prephitmp.893, prephitmp.893
	mov	r2, #0	@ tmp306,
	str	lr, [r4, #168]	@ prephitmp.893, <variable>.Count
	strb	r2, [r4, #165]	@ tmp306, <variable>.PdInfo.RptFlag
	str	r3, [r4, #184]	@ <variable>.PdInfo.PdState, <variable>.Count
	str	r3, [r4, #172]	@ <variable>.PdInfo.PdState, <variable>.Count
	str	r3, [r4, #176]	@ <variable>.PdInfo.PdState, <variable>.Count
	str	r3, [r4, #180]	@ <variable>.PdInfo.PdState, <variable>.Count
	str	r2, [r4, #156]	@ tmp306, <variable>.PdInfo.Pd32Det
	strb	r2, [r4, #166]	@ tmp306, <variable>.PdInfo.PdSubState
.L163:
	uxtb	sl, sl	@ iftmp.430, ValidPhase
.L166:
	add	lr, r4, #156	@ tmp326, pstFmdCtx,
	strb	sl, [r4, #188]	@ iftmp.430, <variable>.Last32Phase
	ldr	ip, [fp, #-76]	@, %sfp
	ldmia	lr, {r0, r1, r2}	@ tmp326,,,
	stmia	ip, {r0, r1, r2}	@,,,
	b	.L102	@
.L172:
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r2, #0	@,
	beq	.L173	@,
.L160:
	ldrb	ip, [r4, #164]	@ zero_extendqisi2	@ <variable>.PdInfo.PdState, <variable>.PdInfo.PdState
	sub	r1, ip, #1	@ tmp295, <variable>.PdInfo.PdState,
	sxtb	r0, r1	@ tmp296, tmp295
	cmp	r0, #4	@ tmp296,
	movge	r0, #4	@ tmp298,
	bic	lr, r0, r0, asr #31	@ tmp299, tmp298
	uxtb	r2, lr	@ prephitmp.893, tmp299
	strb	r2, [r4, #164]	@ prephitmp.893, <variable>.PdInfo.PdState
	b	.L162	@
.L171:
	cmp	r0, #1	@ ValidFlag,
	bne	.L154	@,
	ldrsb	r3, [r4, #188]	@ D.27502, <variable>.Last32Phase
	cmp	r3, #3	@ D.27502,
	beq	.L155	@,
	cmp	r3, #8	@ D.27502,
	beq	.L155	@,
.L154:
	mov	sl, #4	@ ValidPhase,
	b	.L153	@
.L145:
	cmp	r0, #1	@ ValidFlag.975,
	bne	.L148	@,
	ldrsb	r3, [r4, #188]	@ temp.977, <variable>.Last32Phase
	cmp	r3, #2	@ temp.977,
	beq	.L152	@,
	cmp	r3, #7	@ temp.977,
	beq	.L152	@,
.L148:
	mov	sl, #3	@ ValidPhase,
	b	.L146	@
.L137:
	cmp	r0, #1	@ ValidFlag.969,
	bne	.L140	@,
	ldrsb	r3, [r4, #188]	@ temp.971, <variable>.Last32Phase
	cmp	r3, #1	@ temp.971,
	beq	.L144	@,
	cmp	r3, #6	@ temp.971,
	beq	.L144	@,
.L140:
	mov	sl, #2	@ ValidPhase,
	b	.L138	@
.L170:
	cmp	r0, #1	@ ValidFlag.957,
	bne	.L124	@,
	ldrsb	r3, [r4, #188]	@ temp.955, <variable>.Last32Phase
	cmn	r3, #1	@ temp.955,
	beq	.L128	@,
	cmp	r3, #4	@ temp.955,
	beq	.L128	@,
.L124:
	mov	sl, #0	@ ValidPhase,
	b	.L122	@
.L129:
	cmp	r0, #1	@ ValidFlag.923,
	bne	.L132	@,
	ldrsb	r3, [r4, #188]	@ temp.965, <variable>.Last32Phase
	cmp	r3, #0	@ temp.965,
	beq	.L136	@,
	cmp	r3, #5	@ temp.965,
	beq	.L136	@,
.L132:
	mov	sl, #1	@ ValidPhase,
	b	.L130	@
.L169:
	add	r3, r4, #156	@ tmp204, pstFmdCtx,
	mov	r2, #0	@ tmp196,
	strb	r2, [r4, #165]	@ tmp196, <variable>.PdInfo.RptFlag
	mvn	ip, #0	@ tmp201,
	strb	r2, [r4, #164]	@ tmp196, <variable>.PdInfo.PdState
	str	r2, [r4, #156]	@ tmp196, <variable>.PdInfo.Pd32Det
	ldmia	r3, {r0, r1, r2}	@ tmp204,,,
	strb	ip, [r4, #188]	@ tmp201, <variable>.Last32Phase
	ldr	r3, [fp, #-76]	@, %sfp
	stmia	r3, {r0, r1, r2}	@,,,
.L102:
	ldr	r0, [fp, #-76]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L173:
	ldr	r6, [fp, #-72]	@, %sfp
	ldr	lr, [r4, #0]	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	add	r1, r6, #42	@ tmp311,,
	and	r2, r6, #1	@ tmp317,,
	ldr	r0, [r4, r1, asl #2]	@ <variable>.Count, <variable>.Count
	strb	r0, [r4, #164]	@ <variable>.Count, <variable>.PdInfo.PdState
	ldr	r3, [r4, r1, asl #2]	@ <variable>.Count, <variable>.Count
	cmp	r3, #3	@ <variable>.Count,
	movle	ip, #0	@, tmp316
	movgt	ip, #1	@, tmp316
	cmp	lr, r2	@ <variable>.Is2ndFld, tmp317
	str	ip, [r4, #156]	@ tmp316, <variable>.PdInfo.Pd32Det
	addne	r2, r6, #5	@ tmp320,,
	ldreq	ip, [fp, #-72]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	uxtbne	r2, r2	@ iftmp.428, tmp320
	uxtbeq	r2, ip	@ iftmp.428,
	rsbs	r1, r0, #1	@ tmp322,
	movcc	r1, #0	@ tmp322
	cmn	r0, #1	@,
	strb	r2, [r4, #166]	@ iftmp.428, <variable>.PdInfo.PdSubState
	strb	r1, [r4, #165]	@ tmp322, <variable>.PdInfo.RptFlag
	uxtbne	sl, r0	@ iftmp.430,
	bne	.L166	@,
	b	.L163	@
.L155:
	ldr	sl, [r4, #184]	@ <variable>.Count, <variable>.Count
	add	r3, sl, #1	@ D.27508, <variable>.Count,
	str	r3, [r4, #184]	@ D.27508, <variable>.Count
	cmp	r3, #0	@ D.27508,
	ble	.L156	@,
	cmp	r3, #5	@ D.27508,
	movge	r3, #5	@ iftmp.425,
	mov	sl, #4	@ ValidPhase,
	cmp	r3, #3	@ iftmp.425,
	str	r3, [r4, #184]	@ iftmp.425, <variable>.Count
	strle	sl, [fp, #-72]	@ ValidPhase, %sfp
	movgt	r3, #3	@ tmp280,
	strgt	r3, [r4, #180]	@ tmp280, <variable>.Count
	strgt	sl, [fp, #-72]	@ ValidPhase, %sfp
	strgt	r3, [r4, #168]	@ tmp280, <variable>.Count
	strgt	r3, [r4, #172]	@ tmp280, <variable>.Count
	strgt	r3, [r4, #176]	@ tmp280, <variable>.Count
	b	.L158	@
.L136:
	ldr	r0, [r4, #172]	@ <variable>.Count, <variable>.Count
	add	r3, r0, #1	@ temp.967, <variable>.Count,
	str	r3, [r4, #172]	@ temp.967, <variable>.Count
	cmp	r3, #0	@ temp.967,
	ble	.L174	@,
	cmp	r3, #5	@ temp.967,
	movge	r3, #5	@ iftmp.968,
	str	r3, [r4, #172]	@ iftmp.968, <variable>.Count
	cmp	r3, #3	@ iftmp.968,
	movle	sl, #1	@ ValidPhase,
	strle	sl, [fp, #-72]	@ ValidPhase, %sfp
	ble	.L131	@,
	mov	ip, #3	@ tmp260,
	mov	sl, #1	@ ValidPhase,
	str	ip, [r4, #184]	@ tmp260, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	str	ip, [r4, #168]	@ tmp260, <variable>.Count
	str	ip, [r4, #176]	@ tmp260, <variable>.Count
	str	ip, [r4, #180]	@ tmp260, <variable>.Count
	b	.L131	@
.L152:
	ldr	r0, [r4, #180]	@ <variable>.Count, <variable>.Count
	add	r3, r0, #1	@ temp.979, <variable>.Count,
	str	r3, [r4, #180]	@ temp.979, <variable>.Count
	cmp	r3, #0	@ temp.979,
	ble	.L175	@,
	cmp	r3, #5	@ temp.979,
	movge	r3, #5	@ iftmp.980,
	str	r3, [r4, #180]	@ iftmp.980, <variable>.Count
	cmp	r3, #3	@ iftmp.980,
	movle	sl, #3	@ ValidPhase,
	strle	sl, [fp, #-72]	@ ValidPhase, %sfp
	ble	.L147	@,
	mov	ip, #3	@ tmp274,
	str	ip, [r4, #168]	@ tmp274, <variable>.Count
	str	ip, [r4, #172]	@ tmp274, <variable>.Count
	mov	sl, ip	@ ValidPhase, tmp274
	str	ip, [r4, #176]	@ tmp274, <variable>.Count
	str	ip, [fp, #-72]	@ ValidPhase, %sfp
	str	ip, [r4, #184]	@ tmp274, <variable>.Count
	b	.L147	@
.L128:
	ldr	r2, [r4, #168]	@ <variable>.Count, <variable>.Count
	add	r3, r2, #1	@ temp.949, <variable>.Count,
	str	r3, [r4, #168]	@ temp.949, <variable>.Count
	cmp	r3, #0	@ temp.949,
	ble	.L176	@,
	cmp	r3, #5	@ temp.949,
	movge	r3, #5	@ iftmp.940,
	str	r3, [r4, #168]	@ iftmp.940, <variable>.Count
	cmp	r3, #3	@ iftmp.940,
	movle	sl, #0	@ ValidPhase,
	strle	sl, [fp, #-72]	@ ValidPhase, %sfp
	movle	r6, sl	@ InValidCnt, ValidPhase
	ble	.L123	@,
	mov	sl, #0	@ ValidPhase,
	mov	lr, #3	@ tmp253,
	mov	r6, sl	@ InValidCnt, ValidPhase
	str	lr, [r4, #184]	@ tmp253, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	str	lr, [r4, #172]	@ tmp253, <variable>.Count
	str	lr, [r4, #176]	@ tmp253, <variable>.Count
	str	lr, [r4, #180]	@ tmp253, <variable>.Count
	b	.L123	@
.L144:
	ldr	r3, [r4, #176]	@ <variable>.Count, <variable>.Count
	add	r3, r3, #1	@ temp.973, <variable>.Count,
	str	r3, [r4, #176]	@ temp.973, <variable>.Count
	cmp	r3, #0	@ temp.973,
	ble	.L177	@,
	cmp	r3, #5	@ temp.973,
	movge	r3, #5	@ iftmp.974,
	str	r3, [r4, #176]	@ iftmp.974, <variable>.Count
	cmp	r3, #3	@ iftmp.974,
	movle	sl, #2	@ ValidPhase,
	strle	sl, [fp, #-72]	@ ValidPhase, %sfp
	ble	.L139	@,
	mov	lr, #3	@ tmp267,
	mov	sl, #2	@ ValidPhase,
	str	lr, [r4, #184]	@ tmp267, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	str	lr, [r4, #168]	@ tmp267, <variable>.Count
	str	lr, [r4, #172]	@ tmp267, <variable>.Count
	str	lr, [r4, #180]	@ tmp267, <variable>.Count
	b	.L139	@
.L175:
	mov	sl, #3	@ ValidPhase,
	mov	r1, #0	@ tmp273,
	str	r1, [r4, #180]	@ tmp273, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	b	.L147	@
.L177:
	mov	sl, #2	@ ValidPhase,
	mov	r2, #0	@ tmp266,
	str	r2, [r4, #176]	@ tmp266, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	b	.L139	@
.L176:
	mov	sl, #0	@ tmp252,
	str	sl, [r4, #168]	@ tmp252, <variable>.Count
	mov	r6, sl	@ InValidCnt, ValidPhase
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	b	.L123	@
.L174:
	mov	sl, #1	@ ValidPhase,
	mov	r1, #0	@ tmp259,
	str	r1, [r4, #172]	@ tmp259, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	b	.L131	@
.L156:
	mov	sl, #4	@ ValidPhase,
	mov	r2, #0	@ tmp327,
	str	r2, [r4, #184]	@ tmp327, <variable>.Count
	str	sl, [fp, #-72]	@ ValidPhase, %sfp
	b	.L158	@
	.fnend
	.size	Calc32PLD, .-Calc32PLD
	.align	2
	.global	GetPlayBackConfig
	.type	GetPlayBackConfig, %function
GetPlayBackConfig:
	.fnstart
.LFB1252:
	@ args = 20, pretend = 0, frame = 56
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
	ldr	ip, .L196	@ tmp143,
	sub	r4, fp, #96	@ tmp134,,
	mov	r5, r3	@ PbState, PbState
	cmp	r3, #1	@ PbState,
	sub	r7, fp, #84	@ tmp142,,
	stmia	r4, {r0, r1, r2}	@ tmp134,,,
	mov	r6, r7	@ tmp196, tmp142
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldr	sl, [fp, #4]	@ NxtIs2ndFld, NxtIs2ndFld
	ldr	r9, [fp, #12]	@ s32DeiMdLum, s32DeiMdLum
	ldr	r8, [fp, #16]	@ PBDelay, PBDelay
	ldr	r4, [fp, #20]	@ pstFmdRtlOutPara, pstFmdRtlOutPara
	stmia	r6!, {r0, r1, r2, r3}	@ tmp196,,,,
	ldrb	r7, [fp, #-86]	@ zero_extendqisi2	@ PdInfo$PdSubState, PdInfo.PdSubState
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp197,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp196,,,,
	ldmia	ip, {r0, r1}	@ tmp197,,
	stmia	r6, {r0, r1}	@ tmp198,,
	beq	.L181	@,
	cmp	r5, #2	@ PbState,
	beq	.L182	@,
	cmp	r5, #0	@ PbState,
	bne	.L193	@,
	tst	r8, #1	@ PBDelay,
	str	r5, [r4, #8]	@ PbState, <variable>.DieOutSelChr
	str	r5, [r4, #4]	@ PbState, <variable>.DieOutSelLum
	bne	.L195	@,
.L190:
	str	sl, [r4, #0]	@ NxtIs2ndFld, <variable>.DirMch
.L191:
	mov	r0, #0	@ tmp194,
	str	r0, [r4, #12]	@ tmp194, <variable>.EdgeSmoothEn
.L192:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L193:
	tst	r8, #1	@ PBDelay,
	mov	r3, #0	@ tmp190,
	str	r3, [r4, #8]	@ tmp190, <variable>.DieOutSelChr
	str	r3, [r4, #4]	@ tmp190, <variable>.DieOutSelLum
	beq	.L190	@,
	cmp	sl, r3	@ NxtIs2ndFld,
	movne	sl, #0	@, tmp193
	moveq	sl, #1	@, tmp193
	str	sl, [r4, #0]	@ tmp193, <variable>.DirMch
	b	.L191	@
.L182:
	tst	r8, #1	@ PBDelay,
	mov	r3, #1	@ tmp186,
	streq	sl, [r4, #0]	@ NxtIs2ndFld, <variable>.DirMch
	str	r3, [r4, #8]	@ tmp186, <variable>.DieOutSelChr
	str	r3, [r4, #4]	@ tmp186, <variable>.DieOutSelLum
	beq	.L189	@,
	rsbs	sl, sl, #1	@ tmp189, NxtIs2ndFld
	movcc	sl, #0	@ tmp189
	str	sl, [r4, #0]	@ tmp189, <variable>.DirMch
.L189:
	ldr	ip, [fp, #8]	@ EdgeSmoothEn, EdgeSmoothEn
	str	ip, [r4, #12]	@ EdgeSmoothEn, <variable>.EdgeSmoothEn
	b	.L192	@
.L181:
	cmp	r9, #0	@ s32DeiMdLum,
	mov	r3, #0	@ tmp150,
	sxtbeq	r7, r7	@ PdInfo$PdSubState, PdInfo$PdSubState
	str	r3, [r4, #8]	@ tmp150, <variable>.DieOutSelChr
	str	r5, [r4, #4]	@ PbState, <variable>.DieOutSelLum
	movweq	r3, #:lower16:1717986919	@ tmp155,
	addeq	r7, r7, #1	@ tmp152, PdInfo$PdSubState,
	beq	.L194	@,
	cmp	r9, #1	@ s32DeiMdLum,
	bne	.L191	@,
	sxtb	r0, r7	@ PdInfo$PdSubState, PdInfo$PdSubState
	movw	r3, #:lower16:1717986919	@ tmp172,
	add	r7, r0, #2	@ tmp169, PdInfo$PdSubState,
.L194:
	movt	r3, #:upper16:1717986919	@ tmp172,
	smull	r2, r1, r3, r7	@, tmp171, tmp172, tmp169
	mov	r2, r7, asr #31	@ tmp174, tmp169,
	sub	r3, fp, #44	@,,
	rsb	r0, r2, r1, asr #2	@, tmp170, tmp174, tmp171,
	add	ip, r0, r0, asl #2	@, tmp177, tmp170, tmp170,
	sub	r2, r7, ip, asl #1	@ tmp179, tmp169, tmp177,
	add	r7, r3, r2, asl #2	@, tmp182,, tmp179,
	ldr	r1, [r7, #-40]	@ tmp184, MchTab
	str	r1, [r4, #0]	@ tmp184, <variable>.DirMch
	b	.L191	@
.L195:
	rsbs	sl, sl, #1	@ tmp147, NxtIs2ndFld
	movcc	sl, #0	@ tmp147
	str	sl, [r4, #0]	@ tmp147, <variable>.DirMch
	b	.L191	@
.L197:
	.align	2
.L196:
	.word	.LANCHOR0+100
	.fnend
	.size	GetPlayBackConfig, .-GetPlayBackConfig
	.align	2
	.global	Calc22PLD_STB
	.type	Calc22PLD_STB, %function
Calc22PLD_STB:
	.fnstart
.LFB1253:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #140
	sub	sp, sp, #140	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ pStatInfo, pStatInfo
	mov	r6, r1	@ Is2ndFld, Is2ndFld
	mov	r4, r2	@ pCntxt22, pCntxt22
	add	r1, r5, #20	@, pStatInfo,
	mov	r2, #100	@,
	sub	r0, fp, #144	@,,
	mov	r7, r3	@ s32DeiMdLum, s32DeiMdLum
	bl	memcpy	@
	ldr	r9, [fp, #-120]	@, pcc_stat.PCC_BWD_TKR
	ldr	r0, [fp, #-136]	@, pcc_stat.PCC_BWD
	rsbs	r6, r6, #1	@ phase, Is2ndFld
	movcc	r6, #0	@ phase
	ldr	r2, [r5, #0]	@ Frame_IT_diff, <variable>.frmITDiff
	cmp	r6, #1	@ phase,
	str	r9, [fp, #-152]	@, %sfp
	str	r0, [fp, #-172]	@, %sfp
	ldr	r1, [r5, #16]	@, <variable>.frmUm.nonmatch_UM2
	ldr	sl, [fp, #-144]	@ pcc_stat$PCC_FFWD, pcc_stat.PCC_FFWD
	ldr	ip, [fp, #-140]	@ pcc_stat$PCC_FWD, pcc_stat.PCC_FWD
	str	r1, [fp, #-180]	@, %sfp
	ldr	r8, [r5, #12]	@, <variable>.frmUm.match_UM2
	ldr	r0, [fp, #-132]	@ pcc_stat$PCC_CRSS, pcc_stat.PCC_CRSS
	ldr	r9, [fp, #-124]	@ pcc_stat$PCC_FWD_TKR, pcc_stat.PCC_FWD_TKR
	str	r8, [fp, #-176]	@, %sfp
	ldr	r3, [r5, #8]	@, <variable>.frmUm.nonmatch_UM
	str	r3, [fp, #-168]	@, %sfp
	ldr	r1, [r5, #124]	@, <variable>.frmHstBin.HISTOGRAM_BIN_2
	ldr	r8, [r5, #4]	@ um_stat$match_UM, <variable>.frmUm.match_UM
	str	r1, [fp, #-164]	@, %sfp
	ldr	r3, [r5, #132]	@, <variable>.frmHstBin.HISTOGRAM_BIN_4
	str	r3, [fp, #-156]	@, %sfp
	ldr	r1, [r5, #128]	@, <variable>.frmHstBin.HISTOGRAM_BIN_3
	str	r1, [fp, #-160]	@, %sfp
	ldr	r5, [r5, #120]	@ hist_stat$HISTOGRAM_BIN_1, <variable>.frmHstBin.HISTOGRAM_BIN_1
	beq	.L246	@,
	cmp	r7, #0	@ s32DeiMdLum,
	moveq	r1, r0	@ pcc_stat$PCC_CRSS, pcc_stat$PCC_CRSS
	moveq	r3, sl	@ nonmatch_weave, pcc_stat$PCC_FFWD
	beq	.L201	@,
	cmp	r7, #1	@ s32DeiMdLum,
	beq	.L247	@,
.L244:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L246:
	cmp	r7, #0	@ s32DeiMdLum,
	beq	.L248	@,
	cmp	r7, #1	@ s32DeiMdLum,
	bne	.L244	@,
	ldr	r9, [fp, #-152]	@ match_tkr, %sfp
	ldr	r1, [r4, #40]	@ pcc_stat$PCC_CRSS, <variable>.lstPcc_Crss
	ldr	r3, [r4, #44]	@ nonmatch_weave, <variable>.lstnonmatch_weave
	ldr	ip, [fp, #-172]	@ match_weave, %sfp
.L201:
	cmp	r1, r3	@ pcc_stat$PCC_CRSS, nonmatch_weave
	movlt	r0, r1	@ tmp182, pcc_stat$PCC_CRSS
	movge	r0, r3	@ tmp182, nonmatch_weave
	cmp	ip, #80	@ match_weave,
	cmple	r3, #80	@, nonmatch_weave,
	mov	lr, r0, asl #1	@, tmp182,
	str	lr, [fp, #-152]	@, %sfp
	ble	.L204	@,
.L253:
	add	r7, ip, ip, asl #1	@, tmp192, match_weave, match_weave,
	mov	r0, r3, asl #1	@ tmp475, nonmatch_weave,
	cmp	r7, r0	@ tmp192, tmp475
	ble	.L205	@,
.L218:
	add	r1, r6, r4	@ tmp309, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	mov	r0, #0	@ tmp311,
	strb	r0, [r1, #88]	@ tmp311, <variable>.phaseCnt
.L206:
	mov	r9, r9, asl #5	@ tmp415, match_tkr,
	cmp	r9, #127	@ tmp415,
	addgt	r6, r6, r4	@ tmp417, phase, pCntxt22
	ldrgtb	r1, [r6, #88]	@ zero_extendqisi2	@ tmp423, <variable>.phaseCnt
	subgt	r1, r1, #5	@ tmp424, tmp423,
	strgtb	r1, [r6, #88]	@ tmp424, <variable>.phaseCnt
	cmp	r3, #1	@ anomalFlg,
	movne	r0, #0	@ tmp474,
	strne	r0, [r4, #36]	@ tmp474, <variable>.anomalCnt
	beq	.L249	@,
.L235:
	ldrsb	ip, [r4, #88]	@ <variable>.phaseCnt, <variable>.phaseCnt
	ldrsb	r8, [r4, #89]	@ <variable>.phaseCnt, <variable>.phaseCnt
	cmp	ip, #32	@ <variable>.phaseCnt,
	movge	ip, #32	@ iftmp.1115,
	str	r0, [r4, #36]	@ iftmp.435, <variable>.anomalCnt
	bic	lr, ip, ip, asr #31	@ tmp432, iftmp.1115
	cmp	r8, #32	@ <variable>.phaseCnt,
	movge	r8, #32	@ iftmp.1116,
	bic	r1, r8, r8, asr #31	@ tmp439, iftmp.1116
	uxtb	r3, lr	@ iftmp.436, tmp432
	strb	r3, [r4, #88]	@ iftmp.436, <variable>.phaseCnt
	uxtb	r1, r1	@ iftmp.437, tmp439
	strb	r1, [r4, #89]	@ iftmp.437, <variable>.phaseCnt
	sxtb	r3, r3	@ iftmp.436, iftmp.436
	cmp	r3, #24	@ iftmp.436,
	ble	.L236	@,
	sxtb	r1, r1	@ iftmp.437, iftmp.437
	cmp	r1, #24	@ iftmp.437,
	movgt	r3, #1	@ tmp443,
	strgt	r3, [r4, #92]	@ tmp443, <variable>.pld22Lock
	ble	.L237	@,
.L238:
	ldr	r7, [r4, #12]	@ D.27818, <variable>.histFrmITDiff
	movw	sl, #:lower16:1717986919	@ tmp452,
	ldr	r6, [r4, #8]	@ D.27819, <variable>.histFrmITDiff
	movt	sl, #:upper16:1717986919	@ tmp452,
	ldr	lr, [r4, #4]	@ D.27820, <variable>.histFrmITDiff
	add	ip, r7, r2	@ tmp447, D.27818, Frame_IT_diff
	add	r9, ip, r6	@ tmp448, tmp447, D.27819
	ldr	r3, [r4, #0]	@, <variable>.histFrmITDiff
	add	r1, r9, lr	@ tmp449, tmp448, D.27820
	ldr	ip, [r4, #28]	@, <variable>.meanFrmITDiffAcc
	add	r8, r1, r3	@ tmp450, tmp449,
	ldr	r0, [r4, #20]	@, <variable>.lstFrmITDiffMean
	movw	r3, #:lower16:-2999	@ tmp458,
	movt	r3, #:upper16:-2999	@ tmp458,
	smull	r9, r1, sl, r8	@, tmp451, tmp452, tmp450
	mov	r8, r8, asr #31	@ tmp454, tmp450,
	rsb	sl, r0, ip	@ tmp455,,
	ldr	r9, [r4, #0]	@, <variable>.histFrmITDiff
	str	r7, [r4, #16]	@ D.27818, <variable>.histFrmITDiff
	str	r6, [r4, #12]	@ D.27819, <variable>.histFrmITDiff
	str	lr, [r4, #8]	@ D.27820, <variable>.histFrmITDiff
	rsb	r1, r8, r1, asr #1	@, D.27827, tmp454, tmp451,
	str	r9, [r4, #4]	@, <variable>.histFrmITDiff
	add	sl, sl, r1	@ D.27832, tmp455, D.27827
	str	r2, [r4, #0]	@ Frame_IT_diff, <variable>.histFrmITDiff
	cmp	sl, r3	@ D.27832, tmp458
	str	r1, [r4, #24]	@ D.27827, <variable>.curFrmITDiffMean
	movwlt	sl, #:lower16:-3000	@ iftmp.438,
	movtlt	sl, #:upper16:-3000	@ iftmp.438,
	blt	.L241	@,
	movw	r2, #3000	@ tmp459,
	cmp	sl, r2	@ D.27832, tmp459
	movge	sl, r2	@ iftmp.438, tmp459
.L241:
	ldr	r3, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	str	sl, [r4, #28]	@ iftmp.438, <variable>.meanFrmITDiffAcc
	cmp	r3, #0	@ <variable>.pld22Lock,
	str	r1, [r4, #20]	@ D.27827, <variable>.lstFrmITDiffMean
	streq	r3, [r4, #28]	@ <variable>.pld22Lock, <variable>.meanFrmITDiffAcc
	beq	.L243	@,
	cmp	sl, #1000	@ iftmp.438,
	movge	r3, #0	@ tmp463,
	strge	r3, [r4, #92]	@ tmp463, <variable>.pld22Lock
	strgeb	r3, [r4, #88]	@ tmp463, <variable>.phaseCnt
	strgeb	r3, [r4, #89]	@ tmp463, <variable>.phaseCnt
.L243:
	ldr	r3, [fp, #-156]	@, %sfp
	ldr	r1, [fp, #-160]	@, %sfp
	ldr	r9, [fp, #-164]	@, %sfp
	add	r0, r1, r3, asl #1	@, tmp469,,,
	add	lr, r9, r0, asl #1	@, tmp471,, tmp469,
	add	r5, r5, lr, asl #1	@, tmp473, hist_stat$HISTOGRAM_BIN_1, tmp471,
	str	r5, [r4, #32]	@ tmp473, <variable>.lstRepfMotion
	b	.L244	@
.L204:
	movw	lr, #5499	@,
	cmp	r8, lr	@ um_stat$match_UM,
	bgt	.L218	@,
	ldr	r0, [fp, #-168]	@ nonmatch_UM, %sfp
	cmp	r0, #0	@ tmp10,
	moveq	r0, #20	@ nonmatch_UM,
	cmp	r0, r8	@ nonmatch_UM, um_stat$match_UM
	blt	.L218	@,
	ldr	r0, [fp, #-176]	@, %sfp
	movw	lr, #5499	@,
	cmp	r0, lr	@,
	ble	.L250	@,
.L221:
	cmp	r7, #0	@ s32DeiMdLum,
	beq	.L218	@,
.L222:
	cmp	ip, #39	@ match_weave,
	bgt	.L251	@,
.L223:
	cmp	r1, #80	@ pcc_stat$PCC_CRSS,
	ble	.L224	@,
	rsb	r3, r1, r3	@ tmp313, pcc_stat$PCC_CRSS, nonmatch_weave
	ldr	r1, [fp, #-152]	@, %sfp
	cmp	r3, #0	@ tmp313,
	add	r0, r1, #50	@ tmp315,,
	rsblt	r3, r3, #0	@ tmp314, tmp313
	cmp	r3, r0	@ tmp314, tmp315
	ble	.L224	@,
	ldr	r1, [r4, #32]	@ temp.1083, <variable>.lstRepfMotion
	cmp	r1, #10	@ temp.1083,
	ble	.L224	@,
	ldr	r3, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	cmp	r3, #1	@ <variable>.pld22Lock,
	beq	.L252	@,
	movw	sl, #5000	@ tmp331,
	cmp	r1, sl	@ temp.1083, tmp331
	ble	.L216	@,
.L230:
	add	r1, r6, r4	@ tmp382, phase, pCntxt22
	ldr	r7, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, #1	@ anomalFlg,
	ldrb	ip, [r1, #88]	@ zero_extendqisi2	@ tmp391, <variable>.phaseCnt
	mvn	r8, r7	@ tmp389, <variable>.anomalCnt
	add	r0, ip, r8	@ tmp393, tmp391, tmp389
	strb	r0, [r1, #88]	@ tmp393, <variable>.phaseCnt
	b	.L206	@
.L236:
	cmp	r3, #19	@ iftmp.436,
	ble	.L239	@,
	sxtb	r1, r1	@ iftmp.437, iftmp.437
.L237:
	cmp	r1, #19	@ iftmp.437,
	bgt	.L238	@,
.L239:
	mov	r0, #0	@ tmp446,
	str	r0, [r4, #92]	@ tmp446, <variable>.pld22Lock
	b	.L238	@
.L205:
	add	sl, r3, r3, asl #2	@, tmp201, nonmatch_weave, nonmatch_weave,
	add	r8, sl, sl, lsr #31	@, tmp204, tmp201, tmp201,
	cmp	r1, r8, asr #1	@ pcc_stat$PCC_CRSS, tmp204,
	bgt	.L226	@,
	cmp	r1, #1000	@ pcc_stat$PCC_CRSS,
	ble	.L208	@,
	add	r7, r1, r1, asl #2	@, tmp208, pcc_stat$PCC_CRSS, pcc_stat$PCC_CRSS,
	rsb	lr, r3, r3, asl #3	@, tmp211, nonmatch_weave, nonmatch_weave,
	cmp	r7, lr	@ tmp208, tmp211
	blt	.L208	@,
.L226:
	add	r1, r6, r4	@ tmp406, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	sl, [r1, #88]	@ zero_extendqisi2	@ tmp412, <variable>.phaseCnt
	sub	r0, sl, #1	@ tmp413, tmp412,
	strb	r0, [r1, #88]	@ tmp413, <variable>.phaseCnt
	b	.L206	@
.L248:
	mov	r3, ip	@ nonmatch_weave, pcc_stat$PCC_FWD
	mov	r1, r0	@ pcc_stat$PCC_CRSS, pcc_stat$PCC_CRSS
	mov	ip, sl	@ match_weave, pcc_stat$PCC_FFWD
	cmp	r1, r3	@ pcc_stat$PCC_CRSS, nonmatch_weave
	movlt	r0, r1	@ tmp182, pcc_stat$PCC_CRSS
	movge	r0, r3	@ tmp182, nonmatch_weave
	cmp	ip, #80	@ match_weave,
	cmple	r3, #80	@, nonmatch_weave,
	ldr	r9, [fp, #-152]	@ match_tkr, %sfp
	mov	lr, r0, asl #1	@, tmp182,
	str	lr, [fp, #-152]	@, %sfp
	ble	.L204	@,
	b	.L253	@
.L208:
	cmp	ip, #99	@ match_weave,
	bgt	.L254	@,
	mov	r8, ip, asl #3	@ D.27682, match_weave,
	cmp	r3, r8	@ nonmatch_weave, D.27682
	blt	.L210	@,
	cmp	ip, #10	@ match_weave,
	movge	r7, ip	@ tmp238, match_weave
	movlt	r7, #10	@ tmp238,
	mov	lr, r1, asl #1	@ tmp240, pcc_stat$PCC_CRSS,
	cmp	lr, r7, asl #3	@ tmp240, tmp238,
	bge	.L211	@,
.L210:
	ldr	sl, [fp, #-152]	@ tmp243, %sfp
	rsb	r7, r1, r3	@ tmp241, pcc_stat$PCC_CRSS, nonmatch_weave
	cmp	sl, #150	@ tmp243,
	movlt	sl, #150	@ tmp243,
	cmp	r7, #0	@ tmp241,
	rsblt	r7, r7, #0	@, tmp241
	str	r7, [fp, #-168]	@, %sfp
	add	lr, sl, #50	@ tmp244, tmp243,
	ldr	sl, [fp, #-168]	@, %sfp
	cmp	sl, lr	@, tmp244
	ble	.L211	@,
	ldr	lr, [r4, #32]	@ <variable>.lstRepfMotion, <variable>.lstRepfMotion
	cmp	lr, #10	@ <variable>.lstRepfMotion,
	ble	.L211	@,
	add	r1, r6, r4	@ tmp247, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r0, [r1, #88]	@ zero_extendqisi2	@ tmp253, <variable>.phaseCnt
	sub	r0, r0, #5	@ tmp254, tmp253,
	strb	r0, [r1, #88]	@ tmp254, <variable>.phaseCnt
	b	.L206	@
.L249:
	ldr	r6, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	add	r0, r6, #1	@ iftmp.434, <variable>.anomalCnt,
	str	r0, [r4, #36]	@ iftmp.434, <variable>.anomalCnt
	cmp	r0, #0	@ iftmp.434,
	movle	r0, #0	@ iftmp.435,
	ble	.L235	@,
	cmp	r0, #50	@ iftmp.434,
	movge	r0, #50	@ iftmp.435,
	b	.L235	@
.L247:
	ldr	r3, [fp, #-172]	@ nonmatch_weave, %sfp
	mov	r1, r0	@ pcc_stat$PCC_CRSS, pcc_stat$PCC_CRSS
	str	r0, [r4, #40]	@ pcc_stat$PCC_CRSS, <variable>.lstPcc_Crss
	ldr	sl, [fp, #-172]	@, %sfp
	cmp	r1, r3	@ pcc_stat$PCC_CRSS, nonmatch_weave
	movlt	r0, r1	@ tmp182, pcc_stat$PCC_CRSS
	movge	r0, r3	@ tmp182, nonmatch_weave
	cmp	ip, #80	@ match_weave,
	cmple	r3, #80	@, nonmatch_weave,
	mov	lr, r0, asl #1	@, tmp182,
	str	sl, [r4, #44]	@, <variable>.lstnonmatch_weave
	str	lr, [fp, #-152]	@, %sfp
	ble	.L204	@,
	b	.L253	@
.L250:
	ldr	lr, [fp, #-180]	@, %sfp
	ldr	sl, [fp, #-176]	@, %sfp
	add	r0, lr, #150	@ tmp306,,
	cmp	sl, r0	@, tmp306
	ble	.L222	@,
	b	.L221	@
.L254:
	movw	r3, #:lower16:1374389535	@ tmp230,
	movt	r3, #:upper16:1374389535	@ tmp230,
	add	r1, r6, r4	@ tmp223, phase, pCntxt22
	mov	sl, ip, asr #31	@ tmp232, match_weave,
	smull	r0, r8, r3, ip	@, tmp229, tmp230, match_weave
	ldrb	r0, [r1, #88]	@ zero_extendqisi2	@ tmp234, <variable>.phaseCnt
	mov	r3, #1	@ anomalFlg,
	rsb	ip, sl, r8, asr #5	@, tmp228, tmp232, tmp229,
	rsb	r0, ip, r0	@ tmp236, tmp228, tmp234
	strb	r0, [r1, #88]	@ tmp236, <variable>.phaseCnt
	b	.L206	@
.L251:
	cmp	ip, r3, asl #1	@ match_weave, nonmatch_weave,
	blt	.L223	@,
	b	.L218	@
.L224:
	ldr	r3, [fp, #-168]	@, %sfp
	cmp	r3, #1000	@,
	ble	.L226	@,
	mov	r8, r8, asl #4	@ D.27767, um_stat$match_UM,
	mov	r1, r3, asl #1	@ D.27766,,
	cmp	r1, r8	@ D.27766, D.27767
	ble	.L227	@,
	cmp	r7, #0	@ s32DeiMdLum,
	bne	.L228	@,
	ldr	r0, [fp, #-176]	@, %sfp
	ldr	lr, [fp, #-180]	@, %sfp
	cmp	lr, r0, asl #1	@,,
	ble	.L227	@,
.L228:
	ldr	r1, [fp, #-168]	@, %sfp
	movw	r3, #9000	@ tmp352,
	cmp	r1, r3	@, tmp352
	ble	.L216	@,
.L245:
	add	r1, r6, r4	@ tmp354, phase, pCntxt22
	mov	r3, #0	@ anomalFlg,
	ldrb	r0, [r1, #88]	@ zero_extendqisi2	@ tmp360, <variable>.phaseCnt
	add	r0, r0, #1	@ tmp361, tmp360,
	strb	r0, [r1, #88]	@ tmp361, <variable>.phaseCnt
	b	.L206	@
.L211:
	cmp	r8, r0	@ D.27682, tmp475
	bge	.L212	@,
	cmp	r8, r1, asl #1	@ D.27682, pcc_stat$PCC_CRSS,
	blt	.L213	@,
	ldr	r1, [r4, #32]	@ <variable>.lstRepfMotion, <variable>.lstRepfMotion
	cmp	r1, #9	@ <variable>.lstRepfMotion,
	bgt	.L212	@,
.L213:
	ldr	r3, [fp, #-156]	@, %sfp
	add	r8, r3, #100	@ tmp260,,
	cmp	r8, ip, asl #2	@ tmp260, match_weave,
	bge	.L245	@,
	add	r1, r6, r4	@ tmp262, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	ip, [r1, #88]	@ zero_extendqisi2	@ tmp268, <variable>.phaseCnt
	sub	r0, ip, #15	@ tmp269, tmp268,
	strb	r0, [r1, #88]	@ tmp269, <variable>.phaseCnt
	b	.L206	@
.L212:
	add	sl, r3, #150	@ tmp281, nonmatch_weave,
	cmp	ip, sl	@ match_weave, tmp281
	bgt	.L215	@,
	ldr	r1, [fp, #-172]	@, %sfp
	add	r7, r1, #150	@ tmp282,,
	cmp	ip, r7	@ match_weave, tmp282
	ble	.L216	@,
.L215:
	ldr	r3, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	add	r1, r6, r4	@ tmp285, phase, pCntxt22
	cmp	r3, #1	@ <variable>.pld22Lock,
	ldreqb	r0, [r1, #88]	@ zero_extendqisi2	@ tmp291, <variable>.phaseCnt
	movne	r3, #1	@ anomalFlg,
	ldrneb	r0, [r1, #88]	@ zero_extendqisi2	@ tmp301, <variable>.phaseCnt
	subeq	r0, r0, #1	@ tmp292, tmp291,
	subne	r0, r0, #3	@ tmp302, tmp301,
	strb	r0, [r1, #88]	@ tmp302, <variable>.phaseCnt
	b	.L206	@
.L216:
	mov	r3, #1	@ anomalFlg,
	b	.L206	@
.L227:
	ldr	ip, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	cmp	ip, #1	@ <variable>.pld22Lock,
	bne	.L226	@,
	cmp	r1, r8	@ D.27766, D.27767
	bge	.L230	@,
	cmp	r7, #0	@ s32DeiMdLum,
	bne	.L231	@,
	ldr	r7, [fp, #-176]	@, %sfp
	ldr	r1, [fp, #-180]	@, %sfp
	mov	r8, r7, asl #4	@ tmp365,,
	cmp	r8, r1, asl #1	@ tmp365,,
	ble	.L230	@,
.L231:
	add	r1, r6, r4	@ tmp367, phase, pCntxt22
	ldr	r0, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, #1	@ anomalFlg,
	ldrb	lr, [r1, #88]	@ zero_extendqisi2	@ tmp377, <variable>.phaseCnt
	mvn	sl, r0	@ tmp372, <variable>.anomalCnt
	add	r0, lr, sl, asl #1	@, tmp379, tmp377, tmp372,
	strb	r0, [r1, #88]	@ tmp379, <variable>.phaseCnt
	b	.L206	@
.L252:
	add	r1, r6, r4	@ tmp318, phase, pCntxt22
	ldr	r7, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	ldrb	ip, [r1, #88]	@ zero_extendqisi2	@ tmp327, <variable>.phaseCnt
	mvn	r8, r7	@ tmp325, <variable>.anomalCnt
	add	r0, ip, r8	@ tmp329, tmp327, tmp325
	strb	r0, [r1, #88]	@ tmp329, <variable>.phaseCnt
	b	.L206	@
	.fnend
	.size	Calc22PLD_STB, .-Calc22PLD_STB
	.align	2
	.global	Calc22PLD
	.type	Calc22PLD, %function
Calc22PLD:
	.fnstart
.LFB1254:
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
	rsbs	r4, r1, #1	@ phase, Is2ndFld
	movcc	r4, #0	@ phase
	ldr	r1, [r0, #124]	@, <variable>.frmHstBin.HISTOGRAM_BIN_2
	cmp	r4, #1	@ phase,
	str	r1, [fp, #-64]	@, %sfp
	ldr	r6, [r0, #132]	@, <variable>.frmHstBin.HISTOGRAM_BIN_4
	str	r6, [fp, #-56]	@, %sfp
	ldr	r7, [r0, #128]	@, <variable>.frmHstBin.HISTOGRAM_BIN_3
	str	r7, [fp, #-52]	@, %sfp
	ldr	r8, [r0, #120]	@, <variable>.frmHstBin.HISTOGRAM_BIN_1
	str	r8, [fp, #-60]	@, %sfp
	ldr	r5, [r0, #0]	@ Frame_IT_diff, <variable>.frmITDiff
	ldr	r9, [r2, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	beq	.L330	@,
	cmp	r3, #0	@ s32DeiMdLum,
	bne	.L260	@,
	ldr	r1, [r0, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r3, [r2, #48]	@ <variable>.field_match_weave, <variable>.field_match_weave
	ldr	sl, [r2, #52]	@ <variable>.field_nonmatch_weave, <variable>.field_nonmatch_weave
	add	r1, r1, r3	@ prephitmp.1148, <variable>.frmPcc.PCC_FWD, <variable>.field_match_weave
	str	r1, [r2, #68]	@ prephitmp.1148, <variable>.frame_match_weave
	ldr	ip, [r0, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	ldr	r8, [r2, #56]	@ <variable>.field_pcc_crss, <variable>.field_pcc_crss
	add	ip, ip, sl	@ prephitmp.1311, <variable>.frmPcc.PCC_BWD, <variable>.field_nonmatch_weave
	str	ip, [r2, #72]	@ prephitmp.1311, <variable>.frame_nonmatch_weave
	ldr	r6, [r0, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	add	r6, r6, r8	@ prephitmp.1312, <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	str	r6, [r2, #76]	@ prephitmp.1312, <variable>.frame_pcc_crss
	ldr	r3, [r0, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r7, [r0, #40]	@, <variable>.frmPcc.PCC_FWD_TKR
	str	r7, [fp, #-48]	@, %sfp
	str	r3, [r2, #48]	@ <variable>.frmPcc.PCC_FWD, <variable>.field_match_weave
	ldr	sl, [r0, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	str	sl, [r2, #52]	@ <variable>.frmPcc.PCC_BWD, <variable>.field_nonmatch_weave
	ldr	r8, [r0, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	str	r8, [r2, #56]	@ <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
.L258:
	ldr	sl, [r0, #16]	@, <variable>.frmUm.nonmatch_UM2
	cmp	r6, ip	@ prephitmp.1312, prephitmp.1311
	movge	r3, r6	@ max_crss_nonmatch, prephitmp.1312
	movlt	r3, ip	@ max_crss_nonmatch, prephitmp.1311
	str	sl, [fp, #-88]	@, %sfp
	ldmib	r0, {r7, r8}	@ phole ldm
	str	r8, [fp, #-92]	@, %sfp
	cmp	r8, r7	@, match_UM
	movlt	r8, r7	@, match_UM
	ldr	r0, [r0, #12]	@ match_UM2, <variable>.frmUm.match_UM2
	str	r8, [fp, #-68]	@, %sfp
	cmp	sl, r0	@, match_UM2
	movlt	sl, r0	@, match_UM2
	cmp	r3, #4	@ max_crss_nonmatch,
	cmple	r1, #4	@, prephitmp.1148,
	str	sl, [fp, #-72]	@, %sfp
	bgt	.L261	@,
	cmp	sl, #500	@,
	cmplt	r8, #500	@,,
	bge	.L262	@,
	ldr	sl, [fp, #-52]	@, %sfp
	cmp	sl, #1	@,
	ble	.L331	@,
.L262:
	cmp	r1, #120	@ prephitmp.1148,
	cmple	r3, #120	@, max_crss_nonmatch,
	ble	.L264	@,
	cmp	r1, #10	@ prephitmp.1148,
	movge	r8, r1	@ match_weave, prephitmp.1148
	movlt	r8, #10	@ match_weave,
	cmp	r6, ip	@ prephitmp.1312, prephitmp.1311
	movlt	r0, r6	@ min_crss_nonmatch, prephitmp.1312
	movge	r0, ip	@ min_crss_nonmatch, prephitmp.1311
	mov	r7, r8, asl #2	@ tmp843, match_weave,
	mov	r1, r0, asl #1	@ tmp842, min_crss_nonmatch,
	cmp	r7, r1	@ tmp843, tmp842
	bge	.L265	@,
	cmp	r0, #120	@ min_crss_nonmatch,
	ble	.L266	@,
	cmp	r3, #800	@ max_crss_nonmatch,
	ble	.L267	@,
	add	ip, r8, r8, asl #1	@, tmp232, match_weave, match_weave,
	cmp	r1, ip	@ tmp842, tmp232
	ble	.L267	@,
	cmp	r3, r1	@ max_crss_nonmatch, tmp842
	bgt	.L322	@,
	mov	r6, r0, asl #2	@ tmp239, min_crss_nonmatch,
	add	r7, r6, r0	@ tmp240, tmp239, min_crss_nonmatch
	cmp	r7, r3, asl #2	@ tmp240, max_crss_nonmatch,
	ble	.L269	@,
	cmp	r0, ip	@ min_crss_nonmatch, tmp232
	ble	.L270	@,
.L321:
	add	sl, r4, r2	@ tmp365, phase, pCntxt22
	mov	r3, #0	@ anomalFlg,
	ldrb	r1, [sl, #88]	@ zero_extendqisi2	@ tmp371, <variable>.phaseCnt
	add	r0, r1, #1	@ tmp372, tmp371,
	strb	r0, [sl, #88]	@ tmp372, <variable>.phaseCnt
	b	.L263	@
.L260:
	cmp	r3, #1	@ s32DeiMdLum,
	beq	.L332	@,
.L318:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L261:
	cmp	r1, #800	@ prephitmp.1148,
	ble	.L262	@,
	add	r7, r4, r2	@ tmp214, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r6, [r7, #88]	@ zero_extendqisi2	@ tmp220, <variable>.phaseCnt
	sub	r0, r6, #15	@ tmp221, tmp220,
	strb	r0, [r7, #88]	@ tmp221, <variable>.phaseCnt
.L263:
	ldr	r1, [fp, #-48]	@, %sfp
	mov	sl, r1, asl #5	@ tmp767,,
	cmp	sl, #127	@ tmp767,
	addgt	r4, r4, r2	@ tmp769, phase, pCntxt22
	ldrgtb	sl, [r4, #88]	@ zero_extendqisi2	@ tmp775, <variable>.phaseCnt
	subgt	sl, sl, #5	@ tmp776, tmp775,
	strgtb	sl, [r4, #88]	@ tmp776, <variable>.phaseCnt
	cmp	r3, #1	@ anomalFlg,
	ldrsb	r6, [r2, #88]	@ <variable>.phaseCnt, <variable>.phaseCnt
	ldreq	ip, [r2, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	movne	ip, #0	@ iftmp.440,
	ldrsb	r8, [r2, #89]	@ <variable>.phaseCnt, <variable>.phaseCnt
	addeq	ip, ip, #1	@ iftmp.440, <variable>.anomalCnt,
	cmp	r6, #32	@ <variable>.phaseCnt,
	movge	r6, #32	@ iftmp.441,
	bic	r7, r6, r6, asr #31	@ tmp784, iftmp.441
	cmp	r8, #32	@ <variable>.phaseCnt,
	movge	r8, #32	@ iftmp.442,
	str	ip, [r2, #36]	@ iftmp.440, <variable>.anomalCnt
	bic	ip, r8, r8, asr #31	@ tmp791, iftmp.442
	uxtb	r4, r7	@ iftmp.1308, tmp784
	strb	r4, [r2, #88]	@ iftmp.1308, <variable>.phaseCnt
	uxtb	r0, ip	@ iftmp.1310, tmp791
	strb	r0, [r2, #89]	@ iftmp.1310, <variable>.phaseCnt
	sxtb	r1, r4	@ iftmp.1308, iftmp.1308
	cmp	r1, #24	@ iftmp.1308,
	ble	.L312	@,
	sxtb	r0, r0	@ iftmp.1310, iftmp.1310
	cmp	r0, #24	@ iftmp.1310,
	movgt	r1, #1	@ tmp795,
	strgt	r1, [r2, #92]	@ tmp795, <variable>.pld22Lock
	ble	.L313	@,
.L314:
	ldr	r6, [r2, #12]	@ D.28172, <variable>.histFrmITDiff
	movw	sl, #:lower16:1717986919	@ tmp804,
	ldr	r4, [r2, #8]	@ D.28173, <variable>.histFrmITDiff
	movt	sl, #:upper16:1717986919	@ tmp804,
	ldr	ip, [r2, #4]	@, <variable>.histFrmITDiff
	add	r8, r6, r5	@ tmp799, D.28172, Frame_IT_diff
	add	r7, r8, r4	@ tmp800, tmp799, D.28173
	ldr	r1, [r2, #0]	@, <variable>.histFrmITDiff
	add	r0, r7, ip	@ tmp801, tmp800,
	str	r6, [r2, #16]	@ D.28172, <variable>.histFrmITDiff
	add	r8, r0, r1	@ tmp802, tmp801,
	ldr	r0, [r2, #28]	@, <variable>.meanFrmITDiffAcc
	ldr	r6, [r2, #4]	@, <variable>.histFrmITDiff
	movw	r1, #:lower16:-3000	@ tmp810,
	smull	ip, sl, sl, r8	@, tmp803, tmp804, tmp802
	mov	r8, r8, asr #31	@ tmp806, tmp802,
	ldr	ip, [r2, #20]	@, <variable>.lstFrmITDiffMean
	movt	r1, #:upper16:-3000	@ tmp810,
	str	r6, [r2, #8]	@, <variable>.histFrmITDiff
	rsb	r7, ip, r0	@ tmp807,,
	ldr	r6, [r2, #0]	@, <variable>.histFrmITDiff
	str	r4, [r2, #12]	@ D.28173, <variable>.histFrmITDiff
	rsb	r8, r8, sl, asr #1	@, D.28181, tmp806, tmp803,
	movw	sl, #3000	@ tmp811,
	add	ip, r7, r8	@ iftmp.1309, tmp807, D.28181
	str	r8, [r2, #20]	@ D.28181, <variable>.lstFrmITDiffMean
	cmp	ip, r1	@ iftmp.1309, tmp810
	movlt	ip, r1	@ iftmp.1309, tmp810
	str	r6, [r2, #4]	@, <variable>.histFrmITDiff
	cmp	ip, sl	@ iftmp.1309, tmp811
	movge	ip, sl	@ iftmp.443, tmp811
	str	r5, [r2, #0]	@ Frame_IT_diff, <variable>.histFrmITDiff
	cmp	ip, #1000	@ iftmp.443,
	cmpge	r9, #1	@, <variable>.pld22Lock,
	str	r8, [r2, #24]	@ D.28181, <variable>.curFrmITDiffMean
	str	ip, [r2, #28]	@ iftmp.443, <variable>.meanFrmITDiffAcc
	bne	.L316	@,
	cmp	r3, #0	@ anomalFlg,
	bne	.L333	@,
.L316:
	ldr	sl, [r2, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	cmp	sl, #1	@ <variable>.pld22Lock,
	cmpeq	r9, #0	@, <variable>.pld22Lock,
	moveq	sl, #0	@ tmp833,
	streq	sl, [r2, #28]	@ tmp833, <variable>.meanFrmITDiffAcc
.L317:
	ldr	r8, [fp, #-56]	@, %sfp
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	sl, [fp, #-64]	@, %sfp
	add	r3, r7, r8, asl #1	@, tmp835,,,
	ldr	ip, [fp, #-60]	@, %sfp
	add	r1, sl, r3, asl #1	@, tmp837,, tmp835,
	add	r0, ip, r1, asl #1	@, tmp839,, tmp837,
	str	r0, [r2, #32]	@ tmp839, <variable>.lstRepfMotion
	b	.L318	@
.L312:
	cmp	r1, #19	@ iftmp.1308,
	ble	.L315	@,
	sxtb	r0, r0	@ iftmp.1310, iftmp.1310
.L313:
	cmp	r0, #19	@ iftmp.1310,
	bgt	.L314	@,
.L315:
	mov	r0, #0	@ tmp798,
	str	r0, [r2, #92]	@ tmp798, <variable>.pld22Lock
	b	.L314	@
.L330:
	cmp	r3, #0	@ s32DeiMdLum,
	beq	.L334	@,
	cmp	r3, #1	@ s32DeiMdLum,
	bne	.L318	@,
	ldr	r7, [r0, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	ldr	r1, [r2, #68]	@ prephitmp.1148, <variable>.frame_match_weave
	ldr	ip, [r2, #72]	@ prephitmp.1311, <variable>.frame_nonmatch_weave
	str	r7, [r2, #48]	@ <variable>.frmPcc.PCC_BWD, <variable>.field_match_weave
	ldr	r3, [r0, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r6, [r2, #76]	@ prephitmp.1312, <variable>.frame_pcc_crss
	str	r3, [r2, #52]	@ <variable>.frmPcc.PCC_FWD, <variable>.field_nonmatch_weave
	ldr	sl, [r0, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	str	sl, [r2, #56]	@ <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	ldr	r8, [r0, #44]	@, <variable>.frmPcc.PCC_BWD_TKR
	str	r8, [fp, #-48]	@, %sfp
	b	.L258	@
.L333:
	mov	r3, #0	@ tmp820,
	str	r3, [r2, #92]	@ tmp820, <variable>.pld22Lock
	strb	r3, [r2, #88]	@ tmp820, <variable>.phaseCnt
	strb	r3, [r2, #89]	@ tmp820, <variable>.phaseCnt
	b	.L317	@
.L264:
	movw	r6, #5499	@ tmp398,
	cmp	r7, r6	@ match_UM, tmp398
	cmple	r0, r6	@, match_UM2, tmp398
	bgt	.L322	@,
	cmp	r1, #39	@ prephitmp.1148,
	ble	.L281	@,
	cmp	r1, ip, asl #1	@ prephitmp.1148, prephitmp.1311,
	bge	.L322	@,
.L281:
	ldr	sl, [fp, #-92]	@, %sfp
	add	ip, r7, r7, asl #2	@, tmp417, match_UM, match_UM,
	ldr	r8, [fp, #-68]	@, %sfp
	movw	r3, #2500	@ tmp413,
	mov	r1, sl, asl #2	@ tmp418,,
	cmp	r8, r3	@, tmp413
	cmpgt	ip, r1	@, tmp417, tmp418
	movle	ip, #0	@, tmp423
	movgt	ip, #1	@, tmp423
	bgt	.L322	@,
	ldr	sl, [fp, #-88]	@, %sfp
	add	r8, r0, r0, asl #2	@,, match_UM2, match_UM2,
	mov	r6, sl, asl #2	@ tmp435,,
	ldr	sl, [fp, #-72]	@, %sfp
	cmp	sl, r3	@, tmp413
	cmpgt	r8, r6	@,, tmp435
	addgt	r1, r4, r2	@ tmp442, phase, pCntxt22
	movle	r8, #0	@,
	movgt	r8, #1	@,
	movgt	r3, #1	@ anomalFlg,
	str	r8, [fp, #-76]	@, %sfp
	strgtb	ip, [r1, #88]	@ tmp423, <variable>.phaseCnt
	bgt	.L263	@,
	ldr	ip, [fp, #-68]	@, %sfp
	movw	r3, #10000	@ tmp446,
	cmp	ip, r3	@, tmp446
	ble	.L284	@,
	ldr	r8, [fp, #-92]	@, %sfp
	mov	r1, r8, asl #1	@ tmp447,,
	cmp	r1, r7, asl #4	@ tmp447, match_UM,
	ble	.L285	@,
	ldr	r1, [fp, #-72]	@, %sfp
	cmp	r1, r3	@, tmp446
	bgt	.L328	@,
	ldr	r3, [fp, #-72]	@, %sfp
	cmp	r3, #1000	@,
	ble	.L319	@,
	cmp	r6, r0, asl #4	@ tmp435, match_UM2,
	bgt	.L319	@,
	mov	sl, #3	@ tmp502,
	ldr	r6, [fp, #-88]	@, %sfp
	mul	r7, sl, r0	@ tmp501, tmp502, match_UM2
	cmp	r7, r6, asl #1	@ tmp501,,
	blt	.L270	@,
.L307:
	cmp	r9, #1	@ <variable>.pld22Lock,
	beq	.L335	@,
.L303:
	add	sl, r4, r2	@ tmp758, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r0, [sl, #88]	@ zero_extendqisi2	@ tmp764, <variable>.phaseCnt
	sub	r1, r0, #1	@ tmp765, tmp764,
	strb	r1, [sl, #88]	@ tmp765, <variable>.phaseCnt
	b	.L263	@
.L334:
	ldr	r6, [r0, #20]	@ <variable>.frmPcc.PCC_FFWD, <variable>.frmPcc.PCC_FFWD
	ldr	r1, [r2, #68]	@ prephitmp.1148, <variable>.frame_match_weave
	ldr	ip, [r2, #72]	@ prephitmp.1311, <variable>.frame_nonmatch_weave
	str	r6, [r2, #48]	@ <variable>.frmPcc.PCC_FFWD, <variable>.field_match_weave
	ldr	r7, [r0, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r6, [r2, #76]	@ prephitmp.1312, <variable>.frame_pcc_crss
	str	r7, [r2, #52]	@ <variable>.frmPcc.PCC_FWD, <variable>.field_nonmatch_weave
	ldr	r3, [r0, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	str	r3, [r2, #56]	@ <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	ldr	sl, [r0, #44]	@, <variable>.frmPcc.PCC_BWD_TKR
	str	sl, [fp, #-48]	@, %sfp
	b	.L258	@
.L265:
	add	r3, r1, r0	@ tmp381, tmp842, min_crss_nonmatch
	cmp	r7, r3	@ tmp843, tmp381
	ble	.L302	@,
.L322:
	add	r7, r4, r2	@ tmp425, phase, pCntxt22
	mov	r0, #0	@ tmp427,
	mov	r3, #1	@ anomalFlg,
	strb	r0, [r7, #88]	@ tmp427, <variable>.phaseCnt
	b	.L263	@
.L332:
	ldr	r1, [r0, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r3, [r2, #48]	@ <variable>.field_match_weave, <variable>.field_match_weave
	ldr	sl, [r2, #52]	@ <variable>.field_nonmatch_weave, <variable>.field_nonmatch_weave
	add	r1, r1, r3	@ prephitmp.1148, <variable>.frmPcc.PCC_FWD, <variable>.field_match_weave
	str	r1, [r2, #68]	@ prephitmp.1148, <variable>.frame_match_weave
	ldr	ip, [r0, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	ldr	r8, [r2, #56]	@ <variable>.field_pcc_crss, <variable>.field_pcc_crss
	add	ip, ip, sl	@ prephitmp.1311, <variable>.frmPcc.PCC_BWD, <variable>.field_nonmatch_weave
	str	ip, [r2, #72]	@ prephitmp.1311, <variable>.frame_nonmatch_weave
	ldr	r6, [r0, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	add	r6, r6, r8	@ prephitmp.1312, <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	str	r6, [r2, #76]	@ prephitmp.1312, <variable>.frame_pcc_crss
	ldr	r7, [r0, #40]	@, <variable>.frmPcc.PCC_FWD_TKR
	str	r7, [fp, #-48]	@, %sfp
	b	.L258	@
.L331:
	ldr	r8, [fp, #-56]	@, %sfp
	cmp	r8, #1	@,
	movle	r3, #1	@ tmp212,
	strle	r3, [r2, #92]	@ tmp212, <variable>.pld22Lock
	bgt	.L262	@,
	b	.L318	@
.L285:
	ldr	r8, [fp, #-92]	@, %sfp
	mov	r3, r0, asl #1	@ tmp539, match_UM2,
	cmp	r8, r3	@, tmp539
	ldrgt	r3, [fp, #-76]	@ anomalFlg, %sfp
	bgt	.L263	@,
	add	r3, r3, r0	@ tmp543, tmp539, match_UM2
	cmp	r1, r3	@ tmp447, tmp543
	bgt	.L303	@,
.L302:
	add	sl, r4, r2	@ tmp671, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r0, [sl, #88]	@ zero_extendqisi2	@ tmp677, <variable>.phaseCnt
	sub	r1, r0, #5	@ tmp678, tmp677,
	strb	r1, [sl, #88]	@ tmp678, <variable>.phaseCnt
	b	.L263	@
.L266:
	cmp	r3, #119	@ max_crss_nonmatch,
	ble	.L322	@,
	add	r7, r1, r0	@ tmp341, tmp842, min_crss_nonmatch
	cmp	r3, r7	@ max_crss_nonmatch, tmp341
	bgt	.L322	@,
	rsb	r1, ip, r6	@ tmp347, prephitmp.1311, prephitmp.1312
	cmp	r1, #0	@ tmp347,
	rsblt	r1, r1, #0	@ diff_crss_nonmatch, tmp347
	cmp	r1, #40	@ diff_crss_nonmatch,
	ble	.L278	@,
	cmp	r0, #1	@ min_crss_nonmatch,
	movge	r1, r0	@, min_crss_nonmatch
	movlt	r1, #1	@,
	mov	r0, r3	@, max_crss_nonmatch
	str	r2, [fp, #-80]	@,
	bl	__aeabi_idiv	@
	ldr	r2, [fp, #-80]	@,
	mov	r3, #1	@ anomalFlg,
	add	ip, r4, r2	@ tmp349, phase, pCntxt22
	ldrb	r8, [ip, #88]	@ zero_extendqisi2	@ tmp360, <variable>.phaseCnt
	rsb	r6, r0, r8	@ tmp362,, tmp360
	strb	r6, [ip, #88]	@ tmp362, <variable>.phaseCnt
	b	.L263	@
.L267:
	cmp	r3, r1	@ max_crss_nonmatch, tmp842
	bgt	.L322	@,
	mov	ip, r3, asl #1	@ tmp300, max_crss_nonmatch,
	add	r3, ip, r3	@ tmp301, tmp300, max_crss_nonmatch
	cmp	r3, r0, asl #2	@ tmp301, min_crss_nonmatch,
	bge	.L274	@,
	add	r6, r7, r8	@ tmp304, tmp843, match_weave
	cmp	r1, r6	@ tmp842, tmp304
	bgt	.L321	@,
.L270:
	mov	r3, #1	@ anomalFlg,
	b	.L263	@
.L274:
	add	r8, r1, r0	@ tmp317, tmp842, min_crss_nonmatch
	cmp	r8, ip	@ tmp317, tmp300
	bgt	.L303	@,
	add	sl, r4, r2	@ tmp330, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r1, [sl, #88]	@ zero_extendqisi2	@ tmp336, <variable>.phaseCnt
	sub	r0, r1, #2	@ tmp337, tmp336,
	strb	r0, [sl, #88]	@ tmp337, <variable>.phaseCnt
	b	.L263	@
.L278:
	cmp	r1, #19	@ diff_crss_nonmatch,
	ble	.L321	@,
	mov	r3, #1	@ anomalFlg,
	b	.L263	@
.L284:
	ldr	sl, [fp, #-68]	@, %sfp
	cmp	sl, #1000	@,
	ble	.L294	@,
	cmp	r1, r7, asl #4	@ tmp418, match_UM,
	ble	.L295	@,
	ldr	r1, [fp, #-72]	@, %sfp
	cmp	r1, r3	@, tmp446
	bgt	.L328	@,
	ldr	r7, [fp, #-72]	@, %sfp
	cmp	r7, #1000	@,
	ble	.L319	@,
	cmp	r6, r0, asl #4	@ tmp435, match_UM2,
	bgt	.L319	@,
	mov	r3, #3	@ tmp619,
	ldr	r6, [fp, #-88]	@, %sfp
	mul	r8, r3, r0	@ tmp618, tmp619, match_UM2
	cmp	r8, r6, asl #1	@ tmp618,,
	blt	.L270	@,
	cmp	r9, #1	@ <variable>.pld22Lock,
	bne	.L303	@,
	add	sl, r4, r2	@ tmp622, phase, pCntxt22
	ldr	r7, [r2, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, #1	@ anomalFlg,
	ldrb	ip, [sl, #88]	@ zero_extendqisi2	@ tmp632, <variable>.phaseCnt
	mvn	r0, r7	@ tmp627, <variable>.anomalCnt
	add	r1, ip, r0, asl #1	@, tmp634, tmp632, tmp627,
	strb	r1, [sl, #88]	@ tmp634, <variable>.phaseCnt
	b	.L263	@
.L269:
	add	r8, r3, r3, asl #1	@, tmp255, max_crss_nonmatch, max_crss_nonmatch,
	cmp	r6, r8	@ tmp239, tmp255
	bgt	.L303	@,
	rsb	sl, r3, r3, asl #3	@, tmp272, max_crss_nonmatch, max_crss_nonmatch,
	cmp	sl, r7, asl #1	@ tmp272, tmp240,
	blt	.L302	@,
	add	r0, r4, r2	@ tmp284, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r7, [r0, #88]	@ zero_extendqisi2	@ tmp290, <variable>.phaseCnt
	sub	r1, r7, #15	@ tmp291, tmp290,
	strb	r1, [r0, #88]	@ tmp291, <variable>.phaseCnt
	b	.L263	@
.L294:
	beq	.L303	@,
	ldr	r7, [fp, #-72]	@, %sfp
	cmp	r7, r3	@, tmp446
	ble	.L304	@,
	ldr	r8, [fp, #-88]	@, %sfp
	mov	r3, r0, asl #4	@ tmp682, match_UM2,
	cmp	r3, r8, asl #1	@ tmp682,,
	bge	.L307	@,
.L319:
	add	r6, r4, r2	@ tmp722, phase, pCntxt22
	ldr	r3, [fp, #-76]	@ anomalFlg, %sfp
	ldrb	r1, [r6, #88]	@ zero_extendqisi2	@ tmp728, <variable>.phaseCnt
	add	sl, r1, #1	@ tmp729, tmp728,
	strb	sl, [r6, #88]	@ tmp729, <variable>.phaseCnt
	b	.L263	@
.L328:
	ldr	ip, [fp, #-88]	@, %sfp
	mov	r0, r0, asl #4	@ tmp568, match_UM2,
	cmp	r0, ip, asl #1	@ tmp568,,
	bge	.L307	@,
	b	.L319	@
.L295:
	ldr	r6, [fp, #-92]	@, %sfp
	add	r8, r0, r0, asl #1	@, tmp659, match_UM2, match_UM2,
	cmp	r8, r6, asl #1	@ tmp659,,
	bge	.L302	@,
	b	.L303	@
.L304:
	ldr	ip, [fp, #-72]	@, %sfp
	cmp	ip, #1000	@,
	ble	.L270	@,
	cmp	r6, r0, asl #4	@ tmp435, match_UM2,
	ble	.L307	@,
	b	.L319	@
.L335:
	add	r0, r4, r2	@ tmp733, phase, pCntxt22
	ldr	r6, [r2, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, r9	@ anomalFlg, <variable>.pld22Lock
	ldrb	ip, [r0, #88]	@ zero_extendqisi2	@ tmp743, <variable>.phaseCnt
	mvn	r8, r6	@ tmp738, <variable>.anomalCnt
	add	r7, ip, r8, asl #1	@, tmp745, tmp743, tmp738,
	strb	r7, [r0, #88]	@ tmp745, <variable>.phaseCnt
	b	.L263	@
	.fnend
	.size	Calc22PLD, .-Calc22PLD
	.align	2
	.global	Detect22Pld
	.type	Detect22Pld, %function
Detect22Pld:
	.fnstart
.LFB1255:
	@ args = 4, pretend = 0, frame = 0
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
	mov	r4, r3	@ Pld22LockState, Pld22LockState
	ldr	r3, [fp, #4]	@ s32DeiMdLum, s32DeiMdLum
	mov	lr, r0	@ Is2ndFld, Is2ndFld
	ldr	ip, [r4, #4]	@ tmp142,
	mov	r5, r2	@ pCntxt22, pCntxt22
	ldr	r6, [r4, #8]	@ tmp143,
	cmp	r3, #1	@ s32DeiMdLum,
	str	ip, [r4, #0]	@ tmp142,* Pld22LockState
	str	r6, [r4, #4]	@ tmp143,
	beq	.L340	@,
	mov	r0, r1	@, pstFmdStatInfo
	mov	r1, lr	@, Is2ndFld
	bl	Calc22PLD	@
	ldr	r0, [r5, #92]	@ D.28218, <variable>.pld22Lock
	str	r0, [r4, #8]	@ D.28218,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L340:
	mov	r0, r1	@, pstFmdStatInfo
	mov	r1, lr	@, Is2ndFld
	bl	Calc22PLD_STB	@
	ldr	r0, [r5, #92]	@ D.28218, <variable>.pld22Lock
	str	r0, [r4, #8]	@ D.28218,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	Detect22Pld, .-Detect22Pld
	.align	2
	.global	GetPlaybackState
	.type	GetPlaybackState, %function
GetPlaybackState:
	.fnstart
.LFB1257:
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
	mov	r3, r0	@ Pd32Det, Pd32Det
	ldrb	r0, [r2, #432]	@ zero_extendqisi2	@ D.28293, <variable>.MainState
	ldrb	ip, [r2, #433]	@ zero_extendqisi2	@, <variable>.PrevMainState
	sxtb	r0, r0	@ MainState, D.28293
	cmp	r0, #1	@ MainState,
	sxtb	ip, ip	@ PrevMainState, <variable>.PrevMainState
	beq	.L343	@,
	cmp	r0, #2	@ MainState,
	beq	.L357	@,
	cmp	r3, #1	@ Pd32Det,
	beq	.L355	@,
	cmp	r1, #1	@ Pd22Det,
	uxtbne	ip, ip	@ prephitmp.1361, PrevMainState
	uxtbne	r3, r0	@ prephitmp.1350, MainState
	beq	.L358	@,
.L346:
	strb	ip, [r2, #433]	@ prephitmp.1361, <variable>.PrevMainState
	strb	r3, [r2, #432]	@ prephitmp.1350, <variable>.MainState
	ldmfd	sp, {fp, sp, pc}	@
.L357:
	cmp	r1, #1	@ Pd22Det,
	beq	.L354	@,
	cmp	r3, #1	@ Pd32Det,
	moveq	ip, r0	@ prephitmp.1361, MainState
	moveq	r0, r3	@ MainState, prephitmp.1350
	beq	.L346	@,
	mov	r3, #0	@ prephitmp.1350,
	mov	ip, r0	@ prephitmp.1361, MainState
	mov	r0, r3	@ MainState, prephitmp.1350
.L359:
	strb	ip, [r2, #433]	@ prephitmp.1361, <variable>.PrevMainState
	strb	r3, [r2, #432]	@ prephitmp.1350, <variable>.MainState
	ldmfd	sp, {fp, sp, pc}	@
.L343:
	cmp	r3, #1	@ Pd32Det,
	beq	.L354	@,
	cmp	r1, #1	@ Pd22Det,
	moveq	r3, #2	@ prephitmp.1350,
	moveq	ip, r0	@ prephitmp.1361, MainState
	moveq	r0, r3	@ MainState, prephitmp.1350
	beq	.L346	@,
	mov	r3, #0	@ prephitmp.1350,
	mov	ip, r0	@ prephitmp.1361, MainState
	mov	r0, r3	@ MainState, prephitmp.1350
	b	.L359	@
.L358:
	mov	r3, #2	@ prephitmp.1350,
.L355:
	mov	ip, #0	@ prephitmp.1361,
	mov	r0, r3	@ MainState, prephitmp.1350
	strb	ip, [r2, #433]	@ prephitmp.1361, <variable>.PrevMainState
	strb	r3, [r2, #432]	@ prephitmp.1350, <variable>.MainState
	ldmfd	sp, {fp, sp, pc}	@
.L354:
	uxtb	ip, ip	@ prephitmp.1361, PrevMainState
	mov	r3, r0	@ prephitmp.1350, MainState
	strb	ip, [r2, #433]	@ prephitmp.1361, <variable>.PrevMainState
	strb	r3, [r2, #432]	@ prephitmp.1350, <variable>.MainState
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetPlaybackState, .-GetPlaybackState
	.align	2
	.global	FmdThdParaInitDefault
	.type	FmdThdParaInitDefault, %function
FmdThdParaInitDefault:
	.fnstart
.LFB1259:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp133,
	movt	r3, #:upper16:.LANCHOR1	@ tmp133,
	mov	r1, #16	@ tmp146,
	mov	r2, #32	@ tmp148,
	mov	r0, #1	@ tmp134,
	mov	r5, #8	@ tmp144,
	mov	r4, #64	@ tmp150,
	mov	ip, #20	@ tmp162,
	mov	r6, #4	@ tmp152,
	str	r1, [r3, #80]	@ tmp146, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd0
	str	r6, [r3, #132]	@ tmp152, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd0
	mov	r6, #15	@ tmp160,
	str	r2, [r3, #20]	@ tmp148, g_stFmdPara.stPqFmdCtrl.u32Edge_smooth_ratio
	str	r6, [r3, #156]	@ tmp160, g_stFmdPara.stPqFmdLashThd.u32Edge_thd
	mov	r6, #90	@ tmp170,
	str	r0, [r3, #12]	@ tmp134, g_stFmdPara.stPqFmdCtrl.u32Pd22_mode
	str	r6, [r3, #72]	@ tmp170, g_stFmdPara.stPqFmdPccThd.u32Coring_tkr
	mov	r6, #128	@ tmp180,
	str	r5, [r3, #120]	@ tmp144, g_stFmdPara.stPqFmdUmThd.u32Um_thd0
	str	r6, [r3, #92]	@ tmp180, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd3
	mov	r6, #50	@ tmp182,
	str	r4, [r3, #128]	@ tmp150, g_stFmdPara.stPqFmdUmThd.u32Um_thd2
	str	r6, [r3, #64]	@ tmp182, g_stFmdPara.stPqFmdPccThd.u32Mov_coring_tkr
	mov	r6, #30	@ tmp198,
	str	ip, [r3, #60]	@ tmp162, g_stFmdPara.stPqFmdPccThd.u32Mov_coring_norm
	str	r6, [r3, #52]	@ tmp198, g_stFmdPara.stPqFmdHistbinThd.u32Diff_movblk_thd
	mov	r6, #6	@ tmp194,
	str	r0, [r3, #8]	@ tmp134, g_stFmdPara.stPqFmdCtrl.u32Fod_en_mode
	str	r6, [r3, #24]	@ tmp194, g_stFmdPara.stPqFmdCtrl.u32Bitsmov2r
	str	r0, [r3, #4]	@ tmp134, g_stFmdPara.stPqFmdCtrl.u32Pd22_en
	str	r0, [r3, #0]	@ tmp134, g_stFmdPara.stPqFmdCtrl.u32Pd32_en
	str	r0, [r3, #16]	@ tmp134, g_stFmdPara.stPqFmdCtrl.u32Edge_smooth_en
	str	r5, [r3, #28]	@ tmp144, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd0
	str	r1, [r3, #32]	@ tmp146, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd1
	str	r2, [r3, #36]	@ tmp148, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd2
	str	r4, [r3, #40]	@ tmp150, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd3
	str	r5, [r3, #136]	@ tmp144, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd1
	str	r1, [r3, #140]	@ tmp146, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd2
	str	r2, [r3, #144]	@ tmp148, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd3
	str	ip, [r3, #152]	@ tmp162, g_stFmdPara.stPqFmdLashThd.u32Lasi_thd
	str	r2, [r3, #160]	@ tmp148, g_stFmdPara.stPqFmdLashThd.u32Lasi_mov_thr
	str	r1, [r3, #116]	@ tmp146, g_stFmdPara.stPqFmdPccBlk.u32Coring_blk
	str	r1, [r3, #68]	@ tmp146, g_stFmdPara.stPqFmdPccThd.u32Coring_norm
	str	r1, [r3, #76]	@ tmp146, g_stFmdPara.stPqFmdPccThd.u32Pcc_hthd
	str	r2, [r3, #84]	@ tmp148, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd1
	str	r4, [r3, #88]	@ tmp150, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd2
	str	ip, [r3, #112]	@ tmp162, g_stFmdPara.stPqFmdPccBlk.u32Mov_coring_blk
	str	r2, [r3, #124]	@ tmp148, g_stFmdPara.stPqFmdUmThd.u32Um_thd1
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FmdThdParaInitDefault, .-FmdThdParaInitDefault
	.align	2
	.global	FmdThdParaInit
	.type	FmdThdParaInit, %function
FmdThdParaInit:
	.fnstart
.LFB1260:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp134,
	movt	r1, #:upper16:.LANCHOR1	@ tmp134,
	ldr	r3, [r1, #28]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd0, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd0
	strb	r3, [r0, #8]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd0, <variable>.HistogramCtrl.THR
	ldr	ip, [r1, #32]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd1, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd1
	strb	ip, [r0, #9]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd1, <variable>.HistogramCtrl.THR
	ldr	r2, [r1, #36]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd2, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd2
	strb	r2, [r0, #10]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd2, <variable>.HistogramCtrl.THR
	ldr	r3, [r1, #40]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd3, g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd3
	strb	r3, [r0, #11]	@ g_stFmdPara.stPqFmdHistbinThd.u32Hist_thd3, <variable>.HistogramCtrl.THR
	ldr	ip, [r1, #132]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd0, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd0
	strb	ip, [r0, #26]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd0, <variable>.ItdiffCtrl.THR
	ldr	r2, [r1, #136]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd1, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd1
	strb	r2, [r0, #27]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd1, <variable>.ItdiffCtrl.THR
	ldr	r3, [r1, #140]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd2, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd2
	strb	r3, [r0, #28]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd2, <variable>.ItdiffCtrl.THR
	ldr	ip, [r1, #144]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd3, g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd3
	strb	ip, [r0, #29]	@ g_stFmdPara.stPqFmdItdiffThd.u32Itdiff_vthd3, <variable>.ItdiffCtrl.THR
	ldr	r2, [r1, #156]	@ g_stFmdPara.stPqFmdLashThd.u32Edge_thd, g_stFmdPara.stPqFmdLashThd.u32Edge_thd
	strb	r2, [r0, #31]	@ g_stFmdPara.stPqFmdLashThd.u32Edge_thd, <variable>.LasiCtrl.EDGE_THR
	ldr	r3, [r1, #152]	@ g_stFmdPara.stPqFmdLashThd.u32Lasi_thd, g_stFmdPara.stPqFmdLashThd.u32Lasi_thd
	strb	r3, [r0, #30]	@ g_stFmdPara.stPqFmdLashThd.u32Lasi_thd, <variable>.LasiCtrl.THR
	ldr	ip, [r1, #160]	@ g_stFmdPara.stPqFmdLashThd.u32Lasi_mov_thr, g_stFmdPara.stPqFmdLashThd.u32Lasi_mov_thr
	strb	ip, [r0, #32]	@ g_stFmdPara.stPqFmdLashThd.u32Lasi_mov_thr, <variable>.LasiCtrl.LASI_MOV_THR
	ldr	r2, [r1, #116]	@ g_stFmdPara.stPqFmdPccBlk.u32Coring_blk, g_stFmdPara.stPqFmdPccBlk.u32Coring_blk
	strb	r2, [r0, #17]	@ g_stFmdPara.stPqFmdPccBlk.u32Coring_blk, <variable>.PccCtrl.CORING_BLK
	ldr	r3, [r1, #68]	@ g_stFmdPara.stPqFmdPccThd.u32Coring_norm, g_stFmdPara.stPqFmdPccThd.u32Coring_norm
	strb	r3, [r0, #15]	@ g_stFmdPara.stPqFmdPccThd.u32Coring_norm, <variable>.PccCtrl.CORING_NORM
	ldr	ip, [r1, #72]	@ g_stFmdPara.stPqFmdPccThd.u32Coring_tkr, g_stFmdPara.stPqFmdPccThd.u32Coring_tkr
	strb	ip, [r0, #16]	@ g_stFmdPara.stPqFmdPccThd.u32Coring_tkr, <variable>.PccCtrl.CORING_TKR
	ldr	r2, [r1, #76]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_hthd, g_stFmdPara.stPqFmdPccThd.u32Pcc_hthd
	strb	r2, [r0, #18]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_hthd, <variable>.PccCtrl.H_THR
	ldr	r3, [r1, #80]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd0, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd0
	strb	r3, [r0, #19]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd0, <variable>.PccCtrl.V_THR
	ldr	ip, [r1, #84]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd1, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd1
	strb	ip, [r0, #20]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd1, <variable>.PccCtrl.V_THR
	ldr	r2, [r1, #88]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd2, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd2
	strb	r2, [r0, #21]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd2, <variable>.PccCtrl.V_THR
	ldr	r3, [r1, #92]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd3, g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd3
	strb	r3, [r0, #22]	@ g_stFmdPara.stPqFmdPccThd.u32Pcc_vthd3, <variable>.PccCtrl.V_THR
	ldr	ip, [r1, #64]	@ g_stFmdPara.stPqFmdPccThd.u32Mov_coring_tkr, g_stFmdPara.stPqFmdPccThd.u32Mov_coring_tkr
	strb	ip, [r0, #24]	@ g_stFmdPara.stPqFmdPccThd.u32Mov_coring_tkr, <variable>.PccCtrl.MOV_CORING_TKR
	ldr	r2, [r1, #112]	@ g_stFmdPara.stPqFmdPccBlk.u32Mov_coring_blk, g_stFmdPara.stPqFmdPccBlk.u32Mov_coring_blk
	strb	r2, [r0, #25]	@ g_stFmdPara.stPqFmdPccBlk.u32Mov_coring_blk, <variable>.PccCtrl.MOV_CORING_BLK
	ldr	r3, [r1, #60]	@ g_stFmdPara.stPqFmdPccThd.u32Mov_coring_norm, g_stFmdPara.stPqFmdPccThd.u32Mov_coring_norm
	strb	r3, [r0, #23]	@ g_stFmdPara.stPqFmdPccThd.u32Mov_coring_norm, <variable>.PccCtrl.MOV_CORING_NORM
	ldr	ip, [r1, #120]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd0, g_stFmdPara.stPqFmdUmThd.u32Um_thd0
	strb	ip, [r0, #12]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd0, <variable>.UmCtrl.THR
	ldr	r2, [r1, #124]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd1, g_stFmdPara.stPqFmdUmThd.u32Um_thd1
	strb	r2, [r0, #13]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd1, <variable>.UmCtrl.THR
	ldr	r3, [r1, #128]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd2, g_stFmdPara.stPqFmdUmThd.u32Um_thd2
	strb	r3, [r0, #14]	@ g_stFmdPara.stPqFmdUmThd.u32Um_thd2, <variable>.UmCtrl.THR
	ldr	ip, [r1, #24]	@ g_stFmdPara.stPqFmdCtrl.u32Bitsmov2r, g_stFmdPara.stPqFmdCtrl.u32Bitsmov2r
	str	ip, [r0, #36]	@ g_stFmdPara.stPqFmdCtrl.u32Bitsmov2r, <variable>.ScenChgCtrl.BITSMOV2R
	ldr	r2, [r1, #20]	@ g_stFmdPara.stPqFmdCtrl.u32Edge_smooth_ratio, g_stFmdPara.stPqFmdCtrl.u32Edge_smooth_ratio
	strb	r2, [r0, #0]	@ g_stFmdPara.stPqFmdCtrl.u32Edge_smooth_ratio, <variable>.EdgeSmoothRatio
	ldr	r3, [r1, #52]	@ g_stFmdPara.stPqFmdHistbinThd.u32Diff_movblk_thd, g_stFmdPara.stPqFmdHistbinThd.u32Diff_movblk_thd
	str	r3, [r0, #4]	@ g_stFmdPara.stPqFmdHistbinThd.u32Diff_movblk_thd, <variable>.DIFF_MOVBLK_THR
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FmdThdParaInit, .-FmdThdParaInit
	.align	2
	.global	ALG_FmdDeInit
	.type	ALG_FmdDeInit, %function
ALG_FmdDeInit:
	.fnstart
.LFB1262:
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
	mvn	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_FmdDeInit, .-ALG_FmdDeInit
	.align	2
	.global	ALG_FodReset
	.type	ALG_FodReset, %function
ALG_FodReset:
	.fnstart
.LFB1264:
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
	strb	r1, [r0, #2]	@ BtMode, <variable>.g_nxtbtmode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_FodReset, .-ALG_FodReset
	.align	2
	.global	ALG_SetFmdDbgPara
	.type	ALG_SetFmdDbgPara, %function
ALG_SetFmdDbgPara:
	.fnstart
.LFB1266:
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
	mov	r2, #164	@,
	mov	r1, r0	@ pstPqFmdCoef, pstPqFmdCoef
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_SetFmdDbgPara, .-ALG_SetFmdDbgPara
	.align	2
	.global	ALG_GetFmdDbgPara
	.type	ALG_GetFmdDbgPara, %function
ALG_GetFmdDbgPara:
	.fnstart
.LFB1267:
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
	movw	r1, #:lower16:.LANCHOR1	@,
	mov	r2, #164	@,
	movt	r1, #:upper16:.LANCHOR1	@,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_GetFmdDbgPara, .-ALG_GetFmdDbgPara
	.align	2
	.global	ALG_FmdInit
	.type	ALG_FmdInit, %function
ALG_FmdInit:
	.fnstart
.LFB1261:
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
	subs	r4, r0, #0	@ pstFmdSoftInfo, pstFmdSoftInfo
	mvneq	r0, #0	@ D.28483,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@ tmp138, pstFmdSoftInfo
	mov	r5, #0	@ tmp137,
	mov	r1, #460	@,
	str	r5, [r0], #12	@ tmp137, <variable>.u32InitFlag
	bl	__memzero	@
	mvn	r3, #0	@ tmp140,
	add	r2, r4, #32	@ D.28489, pstFmdSoftInfo,
	mov	ip, #2	@ tmp143,
	mov	r1, #1	@ tmp144,
	mov	r0, r5	@ D.28483, tmp137
	str	r5, [r4, #472]	@ tmp137, <variable>.StillBlkCtrl.STILLBLK_THR
	strb	r3, [r4, #9]	@ tmp140, <variable>.stBtMode.g_nxtbtmode
	str	r2, [r4, #100]	@ D.28489, <variable>.stFmdCtx.pSadRd
	str	ip, [r4, #208]	@ tmp143, <variable>.stFmdCtx.FieldOrder
	strb	r1, [r4, #446]	@ tmp144, <variable>.stFmdCtx.init_symbol
	str	r2, [r4, #104]	@ D.28489, <variable>.stFmdCtx.pSadWt
	str	r5, [r4, #96]	@ tmp137, <variable>.stFmdCtx.SadCnt
	strb	r3, [r4, #200]	@ tmp140, <variable>.stFmdCtx.Last32Phase
	str	r5, [r4, #204]	@ tmp137, <variable>.stFmdCtx.SADDiffAcc
	str	r5, [r4, #448]	@ tmp137, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	str	r5, [r4, #452]	@ tmp137, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	str	r5, [r4, #456]	@ tmp137, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	r5, [r4, #460]	@ tmp137, <variable>.stFmdCtx.stDropHist.lst_drop
	str	r5, [r4, #464]	@ tmp137, <variable>.stFmdCtx.stDropHist.cur_drop
	str	r5, [r4, #468]	@ tmp137, <variable>.stFmdCtx.stDropHist.nxt_drop
	strb	r3, [r4, #4]	@ tmp140, <variable>.stRefFld.g_lstreffld
	strb	r3, [r4, #5]	@ tmp140, <variable>.stRefFld.g_curreffld
	strb	r3, [r4, #6]	@ tmp140, <variable>.stRefFld.g_nxtreffld
	strb	r3, [r4, #7]	@ tmp140, <variable>.stBtMode.g_lstbtmode
	strb	r3, [r4, #8]	@ tmp140, <variable>.stBtMode.g_curbtmode
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ALG_FmdInit, .-ALG_FmdInit
	.align	2
	.global	ALG_FmdReset
	.type	ALG_FmdReset, %function
ALG_FmdReset:
	.fnstart
.LFB1263:
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
	cmp	r0, #0	@ pstFmdSoftInfo,
	cmpne	r1, #0	@, pstDeiDrvPara,
	movne	r3, #0	@, tmp143
	moveq	r3, #1	@, tmp143
	moveq	r0, #0	@ s32Ret,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	ip, [r1, #40]	@ <variable>.s32FrmHeight, <variable>.s32FrmHeight
	mov	r2, #1	@ tmp144,
	str	r2, [r1, #32]	@ tmp144, <variable>.EdgeSmoothEn
	cmp	ip, #720	@ <variable>.s32FrmHeight,
	strgt	r3, [r1, #28]	@ tmp143, <variable>.Pld32Enable
	strgt	r3, [r1, #20]	@ tmp143, <variable>.FodEnable
	strgt	r3, [r1, #24]	@ tmp143, <variable>.Pld22Enable
	strle	r2, [r1, #28]	@ tmp144, <variable>.Pld32Enable
	strle	r2, [r1, #20]	@ tmp144, <variable>.FodEnable
	strle	r2, [r1, #24]	@ tmp144, <variable>.Pld22Enable
	bl	ALG_FmdInit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ALG_FmdReset, .-ALG_FmdReset
	.align	2
	.global	Detect32Pld
	.type	Detect32Pld, %function
Detect32Pld:
	.fnstart
.LFB1256:
	@ args = 4, pretend = 0, frame = 24
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
	ldr	r4, [fp, #4]	@ pstFmdCtx, pstFmdCtx
	mov	r5, r1	@ pPd32Inf, pPd32Inf
	mov	r6, r3	@ s32PbDelay, s32PbDelay
	ldr	ip, [r0, #124]	@ D.28235, <variable>.frmHstBin.HISTOGRAM_BIN_2
	ldr	r7, [r4, #436]	@ <variable>.stRepeatHist.lst_repeat, <variable>.stRepeatHist.lst_repeat
	ldr	r1, [r0, #132]	@ D.28236, <variable>.frmHstBin.HISTOGRAM_BIN_4
	cmp	r7, #0	@ <variable>.stRepeatHist.lst_repeat,
	ldr	r3, [r0, #128]	@ D.28238, <variable>.frmHstBin.HISTOGRAM_BIN_3
	bne	.L383	@,
	ldr	lr, [r4, #448]	@ <variable>.stDropHist.lst_drop, <variable>.stDropHist.lst_drop
	cmp	lr, #1	@ <variable>.stDropHist.lst_drop,
	ble	.L384	@,
	add	r6, r4, #96	@ tmp146, pstFmdCtx,
	mov	r1, #60	@,
	mov	r0, r6	@, tmp146
	bl	__memzero	@
	ldmia	r6, {r0, r1, r2}	@ tmp146,,,
	stmia	r5, {r0, r1, r2}	@ pPd32Inf,,,
	add	r0, r4, #168	@, pstFmdCtx,
	str	r7, [r5, #0]	@ <variable>.stRepeatHist.lst_repeat, <variable>.Pd32Det
	mov	r1, #20	@,
	bl	__memzero	@
	mov	r0, r7	@ D.28258, <variable>.stRepeatHist.lst_repeat
.L385:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L384:
	add	r7, r3, r1, asl #1	@, tmp154, D.28238, D.28236,
	sub	r9, fp, #56	@ tmp213,,
	mov	r3, r2	@, IsSceneChange
	add	r1, r0, #20	@, pStatInfo,
	add	ip, ip, r7, asl #1	@, tmp156, D.28235, tmp154,
	mov	r0, r9	@, tmp213
	str	r4, [sp, #0]	@ pstFmdCtx,
	mov	r2, ip, asl #1	@, tmp156,
	bl	Calc32PLD	@
	ldr	r3, [r4, #132]	@ <variable>.Pd32Det, <variable>.Pd32Det
	ldr	sl, [fp, #-56]	@ NewPdInf$Pd32Det, NewPdInf.Pd32Det
	cmp	r3, #1	@ <variable>.Pd32Det,
	beq	.L392	@,
.L386:
	add	ip, r4, #108	@ tmp172, pstFmdCtx,
	add	r1, r4, #96	@, pstFmdCtx,
	str	r1, [fp, #-64]	@, %sfp
	add	r7, r4, #120	@ tmp174, pstFmdCtx,
	ldmia	ip, {r0, r1, r2}	@ tmp172,,,
	str	sl, [fp, #-56]	@ NewPdInf$Pd32Det, NewPdInf.Pd32Det
	ldr	sl, [fp, #-64]	@, %sfp
	add	r8, r4, #132	@ tmp176, pstFmdCtx,
	add	r3, r4, #144	@ tmp178, pstFmdCtx,
	stmia	sl, {r0, r1, r2}	@,,,
	ldmia	r7, {r0, r1, r2}	@ tmp174,,,
	stmia	ip, {r0, r1, r2}	@ tmp172,,,
	ldmia	r8, {r0, r1, r2}	@ tmp176,,,
	stmia	r7, {r0, r1, r2}	@ tmp174,,,
	ldmia	r3, {r0, r1, r2}	@ tmp178,,,
	stmia	r8, {r0, r1, r2}	@ tmp176,,,
	ldmia	r9, {r0, r1, r2}	@ tmp213,,,
	stmia	r3, {r0, r1, r2}	@ tmp178,,,
.L383:
	ldr	r2, [r4, #444]	@ <variable>.stRepeatHist.nxt_repeat, <variable>.stRepeatHist.nxt_repeat
	cmp	r2, #0	@ <variable>.stRepeatHist.nxt_repeat,
	beq	.L387	@,
	ldr	r0, [r4, #440]	@ <variable>.stRepeatHist.cur_repeat, <variable>.stRepeatHist.cur_repeat
	cmp	r0, #0	@ <variable>.stRepeatHist.cur_repeat,
	bne	.L393	@,
.L388:
	sub	r6, r6, #1	@ tmp193, s32PbDelay,
.L390:
	add	r6, r6, r6, asl #1	@, tmp206, s32PbDelay, s32PbDelay,
	add	ip, r4, r6, asl #2	@, tmp208, pstFmdCtx, tmp206,
	add	r4, ip, #96	@ tmp209, tmp208,
	ldmia	r4, {r0, r1, r2}	@ tmp209,,,
	stmia	r5, {r0, r1, r2}	@ pPd32Inf,,,
	ldr	r0, [r5, #0]	@ D.28258, <variable>.Pd32Det
	b	.L385	@
.L387:
	ldr	r3, [r4, #440]	@ <variable>.stRepeatHist.cur_repeat, <variable>.stRepeatHist.cur_repeat
	cmp	r3, #0	@ <variable>.stRepeatHist.cur_repeat,
	beq	.L390	@,
	b	.L388	@
.L393:
	add	r6, r6, r6, asl #1	@, tmp186, s32PbDelay, s32PbDelay,
	add	r4, r4, r6, asl #2	@, tmp188, pstFmdCtx, tmp186,
	add	r4, r4, #72	@ tmp189, tmp188,
	ldmia	r4, {r0, r1, r2}	@ tmp189,,,
	stmia	r5, {r0, r1, r2}	@ pPd32Inf,,,
	ldr	r0, [r5, #0]	@ D.28258, <variable>.Pd32Det
	b	.L385	@
.L392:
	cmp	sl, #0	@ NewPdInf$Pd32Det,
	bne	.L386	@,
	mov	r0, #2	@ tmp159,
	str	sl, [r4, #144]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	strb	r0, [r4, #116]	@ tmp159, <variable>.PdState
	strb	r0, [r4, #152]	@ tmp159, <variable>.PdState
	strb	r0, [r4, #140]	@ tmp159, <variable>.PdState
	str	sl, [r4, #132]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	strb	r0, [r4, #128]	@ tmp159, <variable>.PdState
	str	sl, [r4, #120]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	str	sl, [r4, #108]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	b	.L386	@
	.fnend
	.size	Detect32Pld, .-Detect32Pld
	.align	2
	.global	Optm_Alg_GetPlayBackConfig
	.type	Optm_Alg_GetPlayBackConfig, %function
Optm_Alg_GetPlayBackConfig:
	.fnstart
.LFB1258:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r6, [r2, #40]	@ <variable>.s32FrmHeight, <variable>.s32FrmHeight
	ldr	lr, [r2, #44]	@ <variable>.s32FrmWidth, <variable>.s32FrmWidth
	sub	r9, fp, #56	@ tmp196,,
	add	r8, r1, #12	@ pstFmdCtx, pstFmdSoftInfo,
	add	ip, r9, #4	@ tmp197, tmp196,
	mov	r4, r1	@ pstFmdSoftInfo, pstFmdSoftInfo
	mov	r5, r2	@ pstDeiDrvPara, pstDeiDrvPara
	mul	sl, lr, r6	@ tmp154, <variable>.s32FrmWidth, <variable>.s32FrmHeight
	mov	r7, r0	@ pstFmdStatInfo, pstFmdStatInfo
	mov	r2, r8	@, pstFmdCtx
	add	r0, r0, #148	@, pstFmdStatInfo,
	mov	r6, r3	@ pstFmdRtlOutPara, pstFmdRtlOutPara
	mov	r3, #0	@ tmp151,
	str	r3, [ip], #4	@ tmp151, Pld32Info
	str	r3, [fp, #-56]	@ tmp151, Pld32Info
	str	r3, [ip, #0]	@ tmp151, Pld32Info
	mov	lr, sl, asr #11	@ tmp157, tmp154,
	str	lr, [r1, #472]!	@ tmp157, <variable>.StillBlkCtrl.STILLBLK_THR
	ldr	sl, [r4, #12]	@ Is2ndFld, <variable>.stFmdCtx.Is2ndFld
	bl	DetectStillBlk	@
	ldr	r3, [r5, #20]	@ D.28338, <variable>.FodEnable
	cmp	r3, #1	@ D.28338,
	beq	.L415	@,
	cmp	r3, #0	@ D.28338,
	bne	.L398	@,
.L414:
	str	r3, [fp, #-68]	@, %sfp
.L397:
	mov	r1, r7	@, pstFmdStatInfo
	add	r0, r4, #216	@, pstFmdSoftInfo,
	bl	DetectSceneChange	@
	add	r1, sl, r4	@ tmp165, Is2ndFld, pstFmdSoftInfo
	cmp	sl, #0	@ Is2ndFld,
	strb	r0, [r1, #212]	@, <variable>.stFmdCtx.SceneChange
	beq	.L399	@,
	ldrsb	r2, [r4, #212]	@ <variable>.stFmdCtx.SceneChange, <variable>.stFmdCtx.SceneChange
	cmp	r2, #0	@ <variable>.stFmdCtx.SceneChange,
	bne	.L416	@,
.L399:
	mov	lr, #0	@,
	str	lr, [fp, #-64]	@, %sfp
.L400:
	ldr	r1, [r5, #24]	@ <variable>.Pld22Enable, <variable>.Pld22Enable
	cmp	r1, #0	@ <variable>.Pld22Enable,
	moveq	sl, r1	@ IsProgressive, <variable>.Pld22Enable
	beq	.L402	@,
	ldr	r2, [r5, #76]	@ <variable>.stVdecInfo.IsProgressiveFrm, <variable>.stVdecInfo.IsProgressiveFrm
	cmp	r2, #1	@ <variable>.stVdecInfo.IsProgressiveFrm,
	beq	.L417	@,
.L403:
	ldr	r3, [r5, #40]	@ <variable>.s32FrmHeight, <variable>.s32FrmHeight
	cmp	r3, #288	@ <variable>.s32FrmHeight,
	bgt	.L405	@,
	ldr	r1, [r5, #72]	@ <variable>.stVdecInfo.IsProgressiveSeq, <variable>.stVdecInfo.IsProgressiveSeq
	cmp	r1, #1	@ <variable>.stVdecInfo.IsProgressiveSeq,
	beq	.L404	@,
.L405:
	ldr	r2, [r4, #448]	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	cmp	r2, #0	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat,
	ldrne	sl, [r4, #248]	@ IsProgressive, <variable>.stFmdCtx.Pld22LockState
	beq	.L418	@,
.L402:
	ldr	lr, [r5, #28]	@ <variable>.Pld32Enable, <variable>.Pld32Enable
	cmp	lr, #0	@ <variable>.Pld32Enable,
	streq	lr, [fp, #-56]	@ <variable>.Pld32Enable, Pld32Info.Pd32Det
	moveq	r0, lr	@ Is32Pld, <variable>.Pld32Enable
	bne	.L419	@,
.L408:
	mov	r2, r8	@, pstFmdCtx
	mov	r1, sl	@, IsProgressive
	bl	GetPlaybackState	@
	ldr	r8, [r4, #28]	@ <variable>.stFmdCtx.s32PbDelay, <variable>.stFmdCtx.s32PbDelay
	ldr	ip, [r4, #16]	@ <variable>.stFmdCtx.NxtIs2ndFld, <variable>.stFmdCtx.NxtIs2ndFld
	ldr	lr, [r5, #8]	@ <variable>.s32DeiMdLum, <variable>.s32DeiMdLum
	ldr	r4, [r5, #32]	@ <variable>.EdgeSmoothEn, <variable>.EdgeSmoothEn
	str	ip, [sp, #0]	@ <variable>.stFmdCtx.NxtIs2ndFld,
	stmib	sp, {r4, lr}	@ phole stm
	str	r8, [sp, #12]	@ <variable>.stFmdCtx.s32PbDelay,
	str	r6, [sp, #16]	@ pstFmdRtlOutPara,
	mov	r3, r0	@, PbState
	mov	r7, r0	@ PbState,
	ldmia	r9, {r0, r1, r2}	@ tmp196,,,
	bl	GetPlayBackConfig	@
	ldr	r0, [fp, #-68]	@, %sfp
	cmp	r7, #2	@ PbState,
	str	r0, [r6, #20]	@, <variable>.s32FieldOrder
	moveq	r2, #1	@ s32FilmType,
	ldr	r3, [fp, #-64]	@, %sfp
	str	r3, [r6, #16]	@, <variable>.SceneChange
	beq	.L410	@,
	cmp	r7, #1	@ PbState,
	mvnne	r3, #0	@ s32FilmType.1628,
	beq	.L420	@,
.L412:
	str	r3, [r6, #24]	@ s32FilmType.1628, <variable>.s32FilmType
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L398:
	cmp	r3, #2	@ D.28338,
	moveq	r3, #1	@,
	streq	r3, [fp, #-68]	@, %sfp
	beq	.L397	@,
.L396:
	mov	r3, #2	@,
	b	.L414	@
.L416:
	ldrsb	ip, [r4, #213]	@ <variable>.stFmdCtx.SceneChange, <variable>.stFmdCtx.SceneChange
	subs	r3, ip, #0	@, <variable>.stFmdCtx.SceneChange,
	movne	r3, #1	@
	str	r3, [fp, #-64]	@, %sfp
	b	.L400	@
.L419:
	ldr	r3, [r4, #28]	@ <variable>.stFmdCtx.s32PbDelay, <variable>.stFmdCtx.s32PbDelay
	mov	r0, r7	@, pstFmdStatInfo
	mov	r1, r9	@, tmp196
	ldr	r2, [fp, #-64]	@, %sfp
	str	r8, [sp, #0]	@ pstFmdCtx,
	bl	Detect32Pld	@
	b	.L408	@
.L420:
	mov	r2, #0	@ s32FilmType,
.L410:
	movw	r1, #:lower16:.LANCHOR0	@ tmp191,
	movt	r1, #:upper16:.LANCHOR0	@ tmp191,
	add	r3, r1, r2, asl #2	@, tmp194, tmp191, s32FilmType,
	ldr	r3, [r3, #140]	@ s32FilmType.1628, g_u32PDTypeNum
	b	.L412	@
.L415:
	ldr	r0, [r4, #448]	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	cmp	r0, #0	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat,
	bne	.L396	@,
	add	r0, r7, #136	@, pstFmdStatInfo,
	mov	r1, r5	@, pstDeiDrvPara
	mov	r2, r8	@, pstFmdCtx
	ldr	r3, [r7, #148]	@, <variable>.StillBlkInfo.StillBlkCnt
	bl	DetectFieldOrder	@
	str	r0, [fp, #-68]	@, %sfp
	b	.L397	@
.L417:
	ldr	r3, [r5, #80]	@ D.28374, <variable>.stVdecInfo.RealFrmRate
	movw	ip, #2379	@ tmp174,
	cmp	r3, ip	@ D.28374, tmp174
	ble	.L403	@,
	movw	lr, #2419	@ tmp175,
	cmp	r3, lr	@ D.28374, tmp175
	bgt	.L403	@,
.L404:
	mov	sl, #1	@ IsProgressive,
	b	.L402	@
.L418:
	ldr	ip, [r5, #8]	@ <variable>.s32DeiMdLum, <variable>.s32DeiMdLum
	mov	r0, sl	@, Is2ndFld
	mov	r1, r7	@, pstFmdStatInfo
	add	r2, r4, #252	@, pstFmdSoftInfo,
	add	r3, r4, #240	@, pstFmdSoftInfo,
	str	ip, [sp, #0]	@ <variable>.s32DeiMdLum,
	bl	Detect22Pld	@
	mov	sl, r0	@ IsProgressive,
	b	.L402	@
	.fnend
	.size	Optm_Alg_GetPlayBackConfig, .-Optm_Alg_GetPlayBackConfig
	.align	2
	.global	ALG_FmdSet
	.type	ALG_FmdSet, %function
ALG_FmdSet:
	.fnstart
.LFB1265:
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
	ldr	r3, [r0, #0]	@ <variable>.u32InitFlag, <variable>.u32InitFlag
	mov	r4, r0	@ pstFmdSoftInfo, pstFmdSoftInfo
	mov	r5, r1	@ pstDeiDrvPara, pstDeiDrvPara
	cmp	r3, #0	@ <variable>.u32InitFlag,
	mov	r6, r2	@ pstFmdRtlOutPara, pstFmdRtlOutPara
	ldr	r7, [r1, #8]	@ s32DeiMdLum, <variable>.s32DeiMdLum
	beq	.L451	@,
	mov	r0, r2	@, pstFmdRtlOutPara
	mov	r1, #28	@,
	bl	__memzero	@
	ldr	r3, [r5, #68]	@ <variable>.bPreInfo, <variable>.bPreInfo
	cmp	r3, #1	@ <variable>.bPreInfo,
	beq	.L452	@,
	ldrb	r8, [r4, #7]	@ zero_extendqisi2	@ <variable>.stBtMode.g_lstbtmode, <variable>.stBtMode.g_lstbtmode
	cmp	r8, #255	@ <variable>.stBtMode.g_lstbtmode,
	beq	.L425	@,
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_curbtmode
	cmp	ip, #255	@ <variable>.stBtMode.g_curbtmode,
	beq	.L425	@,
	ldrb	r2, [r4, #9]	@ zero_extendqisi2	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_nxtbtmode
	cmp	r2, #255	@ <variable>.stBtMode.g_nxtbtmode,
	beq	.L425	@,
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.stRefFld.g_lstreffld, <variable>.stRefFld.g_lstreffld
	cmp	ip, #255	@ <variable>.stRefFld.g_lstreffld,
	beq	.L427	@,
.L455:
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_curreffld
	cmp	r2, #255	@ <variable>.stRefFld.g_curreffld,
	beq	.L427	@,
.L428:
	ldr	r3, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r3, #0	@ <variable>.bOfflineMode,
	ldrneb	r1, [r4, #9]	@ zero_extendqisi2	@ iftmp.458, <variable>.stBtMode.g_nxtbtmode
	ldreqb	r1, [r4, #8]	@ zero_extendqisi2	@ iftmp.458, <variable>.stBtMode.g_curbtmode
	str	r1, [r4, #20]	@ iftmp.458, <variable>.stFmdCtx.BtMode
	ldr	r2, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r2, #0	@ <variable>.bOfflineMode,
	ldrneb	r0, [r4, #6]	@ zero_extendqisi2	@ iftmp.459, <variable>.stRefFld.g_nxtreffld
	ldreqb	r0, [r4, #5]	@ zero_extendqisi2	@ iftmp.459, <variable>.stRefFld.g_curreffld
	str	r0, [r4, #24]	@ iftmp.459, <variable>.stFmdCtx.RefFld
	ldr	ip, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	ip, #0	@ <variable>.bOfflineMode,
	movne	ip, #1	@ iftmp.460,
	moveq	ip, #2	@ iftmp.460,
	str	ip, [r4, #28]	@ iftmp.460, <variable>.stFmdCtx.s32PbDelay
	ldr	r3, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r3, #0	@ <variable>.bOfflineMode,
	ldrne	r2, [r5, #64]	@ nxt_ref_fld, <variable>.RefFld
	ldrne	r3, [r5, #60]	@ nxt_btmode, <variable>.BtMode
	ldreqb	r2, [r4, #6]	@ zero_extendqisi2	@ nxt_ref_fld, <variable>.stRefFld.g_nxtreffld
	ldreqb	r3, [r4, #9]	@ zero_extendqisi2	@ nxt_btmode, <variable>.stBtMode.g_nxtbtmode
	cmp	r1, #0	@ iftmp.458,
	bne	.L443	@,
	subs	r0, r0, #0	@ Is2ndFld, iftmp.459,
	movne	r0, #1	@ Is2ndFld
.L444:
	orrs	r1, r2, r3	@ tmp198, nxt_ref_fld, nxt_btmode
	moveq	r3, r1	@ NxtIs2ndFld, tmp198
	beq	.L447	@,
	cmp	r2, #1	@ nxt_ref_fld,
	cmpeq	r3, #1	@, nxt_btmode,
	movne	lr, #0	@, tmp203
	moveq	lr, #1	@, tmp203
	eor	r3, lr, #1	@ NxtIs2ndFld, tmp203,
.L447:
	ldr	r1, [r4, #452]	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	cmp	r7, #1	@ s32DeiMdLum,
	ldr	r2, [r4, #456]	@ <variable>.stFmdCtx.stRepeatHist.nxt_repeat, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	r0, [r4, #12]	@ Is2ndFld, <variable>.stFmdCtx.Is2ndFld
	str	r3, [r4, #16]	@ NxtIs2ndFld, <variable>.stFmdCtx.NxtIs2ndFld
	str	r1, [r4, #448]	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	str	r2, [r4, #452]	@ <variable>.stFmdCtx.stRepeatHist.nxt_repeat, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	ldr	ip, [r4, #464]	@ <variable>.stFmdCtx.stDropHist.cur_drop, <variable>.stFmdCtx.stDropHist.cur_drop
	ldr	r8, [r5, #52]	@ <variable>.s32Repeat, <variable>.s32Repeat
	ldr	r0, [r4, #468]	@ <variable>.stFmdCtx.stDropHist.nxt_drop, <variable>.stFmdCtx.stDropHist.nxt_drop
	str	ip, [r4, #460]	@ <variable>.stFmdCtx.stDropHist.cur_drop, <variable>.stFmdCtx.stDropHist.lst_drop
	str	r8, [r4, #456]	@ <variable>.s32Repeat, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	r0, [r4, #464]	@ <variable>.stFmdCtx.stDropHist.nxt_drop, <variable>.stFmdCtx.stDropHist.cur_drop
	ldr	r7, [r5, #56]	@ <variable>.s32Drop, <variable>.s32Drop
	str	r7, [r4, #468]	@ <variable>.s32Drop, <variable>.stFmdCtx.stDropHist.nxt_drop
	bls	.L453	@,
.L448:
	ldrb	r7, [r4, #8]	@ zero_extendqisi2	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_curbtmode
	ldrb	lr, [r4, #9]	@ zero_extendqisi2	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_nxtbtmode
	strb	r7, [r4, #7]	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_lstbtmode
	strb	lr, [r4, #8]	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_curbtmode
	ldr	r3, [r5, #20]	@ <variable>.FodEnable, <variable>.FodEnable
	cmp	r3, #1	@ <variable>.FodEnable,
	beq	.L454	@,
.L449:
	ldmia	r6!, {r0, r1, r2, r3}	@ pstFmdRtlOutPara,,,,
	add	lr, r4, #476	@ tmp219, pstFmdSoftInfo,
	ldrb	r7, [r4, #5]	@ zero_extendqisi2	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_curreffld
	ldrb	r8, [r4, #6]	@ zero_extendqisi2	@ <variable>.stRefFld.g_nxtreffld, <variable>.stRefFld.g_nxtreffld
	stmia	lr!, {r0, r1, r2, r3}	@ tmp219,,,,
	ldmia	r6, {r0, r1, r2}	@ pstFmdRtlOutPara,,,
	strb	r7, [r4, #4]	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_lstreffld
	strb	r8, [r4, #5]	@ <variable>.stRefFld.g_nxtreffld, <variable>.stRefFld.g_curreffld
	stmia	lr, {r0, r1, r2}	@ tmp220,,,
	ldr	ip, [r5, #64]	@ <variable>.RefFld, <variable>.RefFld
	strb	ip, [r4, #6]	@ <variable>.RefFld, <variable>.stRefFld.g_nxtreffld
.L423:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L425:
	ldr	r8, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.stRefFld.g_lstreffld, <variable>.stRefFld.g_lstreffld
	strb	r8, [r4, #7]	@ <variable>.BtMode, <variable>.stBtMode.g_lstbtmode
	cmp	ip, #255	@ <variable>.stRefFld.g_lstreffld,
	ldr	lr, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	strb	lr, [r4, #8]	@ <variable>.BtMode, <variable>.stBtMode.g_curbtmode
	ldr	r3, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	strb	r3, [r4, #9]	@ <variable>.BtMode, <variable>.stBtMode.g_nxtbtmode
	bne	.L455	@,
.L427:
	ldr	r3, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r3, #0	@ <variable>.bOfflineMode,
	ldreqb	r3, [r5, #60]	@ zero_extendqisi2	@ iftmp.455, <variable>.BtMode
	beq	.L430	@,
	ldr	r3, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	rsbs	r3, r3, #1	@ iftmp.455, <variable>.BtMode
	movcc	r3, #0	@ iftmp.455
.L430:
	strb	r3, [r4, #4]	@ iftmp.455, <variable>.stRefFld.g_lstreffld
	ldr	r3, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r3, #0	@ <variable>.bOfflineMode,
	ldrneb	r3, [r5, #60]	@ zero_extendqisi2	@ iftmp.456, <variable>.BtMode
	bne	.L432	@,
	ldr	lr, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	rsbs	r3, lr, #1	@ iftmp.456, <variable>.BtMode
	movcc	r3, #0	@ iftmp.456
.L432:
	strb	r3, [r4, #5]	@ iftmp.456, <variable>.stRefFld.g_curreffld
	ldr	r3, [r5, #48]	@ <variable>.bOfflineMode, <variable>.bOfflineMode
	cmp	r3, #0	@ <variable>.bOfflineMode,
	ldreqb	r3, [r5, #60]	@ zero_extendqisi2	@ iftmp.457, <variable>.BtMode
	beq	.L434	@,
	ldr	r8, [r5, #60]	@ <variable>.BtMode, <variable>.BtMode
	rsbs	r3, r8, #1	@ iftmp.457, <variable>.BtMode
	movcc	r3, #0	@ iftmp.457
.L434:
	strb	r3, [r4, #6]	@ iftmp.457, <variable>.stRefFld.g_nxtreffld
	b	.L428	@
.L451:
	str	r3, [r2, #12]	@ <variable>.u32InitFlag, <variable>.EdgeSmoothEn
	mov	ip, r0	@ tmp157, pstFmdSoftInfo
	str	r3, [r2, #0]	@ <variable>.u32InitFlag, <variable>.DirMch
	str	r3, [r2, #8]	@ <variable>.u32InitFlag, <variable>.DieOutSelChr
	str	r3, [r2, #4]	@ <variable>.u32InitFlag, <variable>.DieOutSelLum
	ldr	r2, [r1, #60]	@ <variable>.BtMode, <variable>.BtMode
	str	r2, [r6, #20]	@ <variable>.BtMode, <variable>.s32FieldOrder
	ldr	r1, [r0, #0]	@ <variable>.u32InitFlag, <variable>.u32InitFlag
	add	r0, r1, #1	@ tmp156, <variable>.u32InitFlag,
	str	r0, [ip], #476	@ tmp156, <variable>.u32InitFlag
	ldmia	r6!, {r0, r1, r2, r3}	@ pstFmdRtlOutPara,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp157,,,,
	ldmia	r6, {r0, r1, r2}	@ pstFmdRtlOutPara,,,
	stmia	ip, {r0, r1, r2}	@ tmp158,,,
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L443:
	cmp	r1, #1	@ iftmp.458,
	movne	r0, #1	@ Is2ndFld,
	bne	.L444	@,
	subs	r0, r0, #1	@ Is2ndFld, iftmp.459,
	movne	r0, #1	@ Is2ndFld
	b	.L444	@
.L454:
	ldr	r0, [r6, #20]	@ D.28628, <variable>.s32FieldOrder
	cmp	r0, #2	@ D.28628,
	strneb	r0, [r4, #9]	@ D.28628, <variable>.stBtMode.g_nxtbtmode
	b	.L449	@
.L453:
	add	r0, r5, #84	@, pstDeiDrvPara,
	mov	r1, r4	@, pstFmdSoftInfo
	mov	r2, r5	@, pstDeiDrvPara
	mov	r3, r6	@, pstFmdRtlOutPara
	bl	Optm_Alg_GetPlayBackConfig	@
	b	.L448	@
.L452:
	add	r4, r4, #476	@ tmp161, pstFmdSoftInfo,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp163,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ pstFmdRtlOutPara,,,,
	mov	lr, r6	@ pstFmdRtlOutPara, pstFmdRtlOutPara
	ldmia	r4, {r0, r1, r2}	@ tmp163,,,
	stmia	r6, {r0, r1, r2}	@ pstFmdRtlOutPara,,,
	b	.L423	@
	.fnend
	.size	ALG_FmdSet, .-ALG_FmdSet
	.global	g_u32PDTypeNum
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.413.27401, %object
	.size	C.413.27401, 100
C.413.27401:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.type	C.431.27567, %object
	.size	C.431.27567, 40
C.431.27567:
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.type	g_u32PDTypeNum, %object
	.size	g_u32PDTypeNum, 8
g_u32PDTypeNum:
	.word	32
	.word	22
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_stFmdPara, %object
	.size	g_stFmdPara, 164
g_stFmdPara:
	.space	164
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
