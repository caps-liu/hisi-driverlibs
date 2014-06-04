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
	.file	"mem_manage.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mem_manage)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.mem_manage.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/mem_manage.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/mem_manage.o -O2 -Wall -Wundef
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
	.global	MEM_ManagerWithOperation
	.type	MEM_ManagerWithOperation, %function
MEM_ManagerWithOperation:
	.fnstart
.LFB1357:
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
	ldr	r1, [r0, #4]	@ <variable>.mem_malloc, <variable>.mem_malloc
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r1, [r3, #0]	@ <variable>.mem_malloc, mem_malloc
	ldr	r2, [r0, #8]	@ <variable>.mem_free, <variable>.mem_free
	str	r2, [r3, #4]	@ <variable>.mem_free, mem_free
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_ManagerWithOperation, .-MEM_ManagerWithOperation
	.align	2
	.global	MEM_ManagerClearOperation
	.type	MEM_ManagerClearOperation, %function
MEM_ManagerClearOperation:
	.fnstart
.LFB1358:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	str	r2, [r3, #4]	@ tmp134, mem_free
	str	r2, [r3, #0]	@ tmp134, mem_malloc
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_ManagerClearOperation, .-MEM_ManagerClearOperation
	.align	2
	.global	MEM_Phy2Vir
	.type	MEM_Phy2Vir, %function
MEM_Phy2Vir:
	.fnstart
.LFB1361:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp191,
	movt	r2, #:upper16:.LANCHOR0	@ tmp191,
	mov	ip, #0	@ i,
	add	r3, r2, #16	@ ivtmp.512, tmp191,
	b	.L8	@
.L6:
	ldr	r3, [r3, #12]	@ D.28831, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r3, #0	@ D.28831,
	mov	r4, ip	@ tmp192, i
	beq	.L11	@,
	ldr	r1, [r5, #-8]	@ D.28834, <variable>.PhyAddr
	cmp	r1, r0	@ D.28834, PhyAddr
	add	r3, r1, r3	@ tmp196, D.28834, D.28831
	bgt	.L11	@,
	cmp	r0, r3	@ PhyAddr, tmp196
	blt	.L14	@,
.L11:
	add	ip, r4, #1	@ i, tmp192,
	add	r3, r5, #12	@ ivtmp.512, tmp193,
	cmp	ip, #512	@ i,
	beq	.L17	@,
.L8:
	ldr	r4, [r3, #0]	@ D.28831, <variable>.Length
	add	r5, r3, #12	@ tmp193, ivtmp.512,
	cmp	r4, #0	@ D.28831,
	beq	.L6	@,
	ldr	r1, [r3, #-8]	@ D.28834, <variable>.PhyAddr
	cmp	r1, r0	@ D.28834, PhyAddr
	add	r4, r1, r4	@ tmp179, D.28834, D.28831
	bgt	.L6	@,
	cmp	r0, r4	@ PhyAddr, tmp179
	bge	.L6	@,
.L14:
	add	ip, ip, ip, asl #1	@, tmp184, i, i,
	rsb	r0, r1, r0	@ tmp188, D.28834, PhyAddr
	add	r2, r2, ip, asl #2	@, tmp186, tmp191, tmp184,
	ldr	r3, [r2, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r3	@ VirAddr, tmp188, <variable>.VirAddr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L17:
	mov	r0, #0	@ VirAddr,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_Phy2Vir, .-MEM_Phy2Vir
	.align	2
	.global	MEM_Vir2Phy
	.type	MEM_Vir2Phy, %function
MEM_Vir2Phy:
	.fnstart
.LFB1362:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp154,
	movt	r2, #:upper16:.LANCHOR0	@ tmp154,
	mov	r1, #0	@ i,
	add	r3, r2, #16	@ ivtmp.545, tmp154,
	b	.L21	@
.L19:
	ldr	r3, [r3, #12]	@ D.28854, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.28854,
	mov	r4, r1	@ tmp155, i
	beq	.L24	@,
	ldr	ip, [r5, #-4]	@ D.28857, <variable>.VirAddr
	cmp	ip, r0	@ D.28857, VirAddr
	add	r3, ip, r3	@ tmp159, D.28857, D.28854
	bhi	.L24	@,
	cmp	r0, r3	@ VirAddr, tmp159
	bcc	.L27	@,
.L24:
	add	r1, r4, #1	@ i, tmp155,
	add	r3, r5, #12	@ ivtmp.545, tmp156,
	cmp	r1, #512	@ i,
	beq	.L29	@,
.L21:
	ldr	r4, [r3, #0]	@ D.28854, <variable>.Length
	add	r5, r3, #12	@ tmp156, ivtmp.545,
	cmp	r4, #0	@ D.28854,
	beq	.L19	@,
	ldr	ip, [r3, #-4]	@ D.28857, <variable>.VirAddr
	cmp	ip, r0	@ D.28857, VirAddr
	add	r4, ip, r4	@ tmp142, D.28857, D.28854
	bhi	.L19	@,
	cmp	r0, r4	@ VirAddr, tmp142
	bcs	.L19	@,
.L27:
	add	r1, r1, r1, asl #1	@, tmp147, i, i,
	add	r2, r2, r1, asl #2	@, tmp149, tmp154, tmp147,
	ldr	r3, [r2, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, r3	@ tmp151, VirAddr, <variable>.PhyAddr
	rsb	r0, ip, r0	@ PhyAddr, D.28857, tmp151
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L29:
	mov	r0, #0	@ PhyAddr,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_Vir2Phy, .-MEM_Vir2Phy
	.align	2
	.global	MEM_WritePhyWord
	.type	MEM_WritePhyWord, %function
MEM_WritePhyWord:
	.fnstart
.LFB1363:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp153,
	movt	r2, #:upper16:.LANCHOR0	@ tmp153,
	mov	ip, #0	@ i,
	add	r3, r2, #16	@ ivtmp.578, tmp153,
	b	.L34	@
.L31:
	ldr	r3, [r3, #12]	@ D.29060, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r3, #0	@ D.29060,
	mov	r5, ip	@ tmp155, i
	beq	.L37	@,
	ldr	r4, [r6, #-8]	@ D.29059, <variable>.PhyAddr
	cmp	r0, r4	@ PhyAddr, D.29059
	add	r3, r4, r3	@ tmp159, D.29059, D.29060
	blt	.L37	@,
	cmp	r0, r3	@ PhyAddr, tmp159
	blt	.L40	@,
.L37:
	add	ip, r5, #1	@ i, tmp155,
	add	r3, r6, #12	@ ivtmp.578, tmp156,
	cmp	ip, #512	@ i,
	beq	.L41	@,
.L34:
	ldr	r5, [r3, #0]	@ D.29060, <variable>.Length
	add	r6, r3, #12	@ tmp156, ivtmp.578,
	cmp	r5, #0	@ D.29060,
	beq	.L31	@,
	ldr	r4, [r3, #-8]	@ D.29059, <variable>.PhyAddr
	cmp	r0, r4	@ PhyAddr, D.29059
	add	r5, r4, r5	@ tmp142, D.29059, D.29060
	blt	.L31	@,
	cmp	r0, r5	@ PhyAddr, tmp142
	bge	.L31	@,
.L40:
	add	ip, ip, ip, asl #1	@, tmp147, i, i,
	rsb	r0, r4, r0	@ tmp151, D.29059, PhyAddr
	add	r2, r2, ip, asl #2	@, tmp149, tmp153, tmp147,
	ldr	r3, [r2, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r0, r3	@ pDst, tmp151, <variable>.VirAddr
	cmp	r2, #0	@ pDst,
	strne	r1, [r0, r3]	@ Data32,* <variable>.VirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L41:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MEM_WritePhyWord, .-MEM_WritePhyWord
	.align	2
	.global	MEM_ReadPhyWord
	.type	MEM_ReadPhyWord, %function
MEM_ReadPhyWord:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp156,
	movt	r2, #:upper16:.LANCHOR0	@ tmp156,
	mov	r1, #0	@ i,
	add	r3, r2, #16	@ ivtmp.611, tmp156,
	b	.L46	@
.L43:
	ldr	r3, [r3, #12]	@ D.29071, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.29071,
	mov	r4, r1	@ tmp157, i
	beq	.L50	@,
	ldr	ip, [r5, #-8]	@ D.29070, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29070
	add	r3, ip, r3	@ tmp161, D.29070, D.29071
	blt	.L50	@,
	cmp	r0, r3	@ PhyAddr, tmp161
	blt	.L53	@,
.L50:
	add	r1, r4, #1	@ i, tmp157,
	add	r3, r5, #12	@ ivtmp.611, tmp158,
	cmp	r1, #512	@ i,
	beq	.L45	@,
.L46:
	ldr	r4, [r3, #0]	@ D.29071, <variable>.Length
	add	r5, r3, #12	@ tmp158, ivtmp.611,
	cmp	r4, #0	@ D.29071,
	beq	.L43	@,
	ldr	ip, [r3, #-8]	@ D.29070, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29070
	add	r4, ip, r4	@ tmp144, D.29070, D.29071
	blt	.L43	@,
	cmp	r0, r4	@ PhyAddr, tmp144
	bge	.L43	@,
.L53:
	add	r1, r1, r1, asl #1	@, tmp149, i, i,
	rsb	r0, ip, r0	@ tmp153, D.29070, PhyAddr
	add	ip, r2, r1, asl #2	@, tmp151, tmp156, tmp149,
	ldr	r3, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r0, r3	@ pDst, tmp153, <variable>.VirAddr
	cmp	r2, #0	@ pDst,
	ldrne	r0, [r0, r3]	@ Data32,* <variable>.VirAddr
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
.L45:
	mov	r0, #0	@ Data32,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_ReadPhyWord, .-MEM_ReadPhyWord
	.align	2
	.global	MEM_ReleaseMemBlock
	.type	MEM_ReleaseMemBlock, %function
MEM_ReleaseMemBlock:
	.fnstart
.LFB1371:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	beq	.L59	@,
	ldr	r3, .L65	@ ivtmp.643,
	str	r1, [fp, #-32]	@ VirAddr, FreeMem.VirAddr
	add	lr, r3, #6144	@ D.29327, ivtmp.643,
	str	r0, [fp, #-36]	@ PhyAddr, FreeMem.PhyAddr
	b	.L58	@
.L56:
	ldr	r2, [r3, #12]	@ D.29016, <variable>.Length
	cmp	r2, #0	@ D.29016,
	beq	.L61	@,
	ldr	r3, [r1, #-8]	@ D.29019, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29019
	add	ip, r3, r2	@ tmp156, D.29019, D.29016
	blt	.L61	@,
	cmp	r0, ip	@ PhyAddr, tmp156
	blt	.L64	@,
.L61:
	add	r3, r1, #12	@ ivtmp.643, tmp153,
	cmp	r3, lr	@ ivtmp.643, D.29327
	beq	.L57	@,
.L58:
	ldr	r2, [r3, #0]	@ D.29016, <variable>.Length
	add	r1, r3, #12	@ tmp153, ivtmp.643,
	cmp	r2, #0	@ D.29016,
	beq	.L56	@,
	ldr	ip, [r3, #-8]	@ D.29019, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29019
	add	r4, ip, r2	@ tmp151, D.29019, D.29016
	blt	.L56	@,
	cmp	r0, r4	@ PhyAddr, tmp151
	bge	.L56	@,
.L64:
	str	r2, [fp, #-28]	@ D.29016, FreeMem.Length
.L57:
	sub	r0, fp, #36	@,,
	bl	KernelMemFree	@
.L59:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L66:
	.align	2
.L65:
	.word	.LANCHOR0+16
	.fnend
	.size	MEM_ReleaseMemBlock, .-MEM_ReleaseMemBlock
	.align	2
	.global	MEM_UnmapRegisterAddr
	.type	MEM_UnmapRegisterAddr, %function
MEM_UnmapRegisterAddr:
	.fnstart
.LFB1370:
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
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, VirAddr
	bl	KernelRegisterUnMap	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_UnmapRegisterAddr, .-MEM_UnmapRegisterAddr
	.align	2
	.global	MEM_MapRegisterAddr
	.type	MEM_MapRegisterAddr, %function
MEM_MapRegisterAddr:
	.fnstart
.LFB1369:
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
	cmp	r0, #0	@ RegStartPhyAddr,
	cmpne	r2, #0	@, pMemRecord,
	mov	r4, r0	@ RegStartPhyAddr, RegStartPhyAddr
	mov	r6, r1	@ RegByteLen, RegByteLen
	movne	r5, #0	@, tmp145
	moveq	r5, #1	@, tmp145
	bne	.L74	@,
.L71:
	mvn	r0, #0	@ D.28980,
.L72:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L74:
	mov	r0, r2	@, pMemRecord
	mov	r1, #12	@,
	str	r2, [fp, #-32]	@,
	bl	__memzero	@
	mov	r0, r4	@, RegStartPhyAddr
	bl	KernelRegisterMap	@
	ldr	r2, [fp, #-32]	@,
	subs	r3, r0, #0	@ ptr,
	beq	.L71	@,
	str	r6, [r2, #8]	@ RegByteLen, <variable>.Length
	mov	r0, r5	@ D.28980, tmp145
	str	r4, [r2, #0]	@ RegStartPhyAddr, <variable>.PhyAddr
	str	r3, [r2, #4]	@ ptr, <variable>.VirAddr
	b	.L72	@
	.fnend
	.size	MEM_MapRegisterAddr, .-MEM_MapRegisterAddr
	.align	2
	.global	MEM_AllocMemBlock
	.type	MEM_AllocMemBlock, %function
MEM_AllocMemBlock:
	.fnstart
.LFB1368:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #0	@ ExpectedLen,
	cmpne	r3, #0	@, pMemRecord,
	mov	r4, r3	@ pMemRecord, pMemRecord
	mov	r6, r0	@ MemName, MemName
	movne	r5, #0	@, tmp148
	moveq	r5, #1	@, tmp148
	bne	.L79	@,
.L76:
	mvn	r0, #0	@ D.28945,
.L77:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L79:
	mov	r0, r3	@, pMemRecord
	mov	r1, #12	@,
	str	r2, [fp, #-48]	@,
	bl	__memzero	@
	ldr	r2, [fp, #-48]	@,
	mov	r0, r6	@, MemName
	ldr	r3, [fp, #4]	@, IsCached
	sub	ip, fp, #44	@ tmp149,,
	str	ip, [sp, #0]	@ tmp149,
	mov	r1, r2	@, ExpectedLen
	mov	r2, #4	@,
	bl	KernelMemMalloc	@
	ldr	r3, [fp, #-40]	@ D.28954, AllocMem.VirAddr
	cmp	r3, #0	@ D.28954,
	beq	.L76	@,
	ldr	r2, [fp, #-44]	@ ExpectedPhyAddr, AllocMem.PhyAddr
	ldr	ip, [fp, #-36]	@ ExpectedLen.717, AllocMem.Length
	cmp	r2, #0	@ ExpectedPhyAddr,
	beq	.L76	@,
	movw	r1, #:lower16:.LANCHOR1	@ tmp150,
	movt	r1, #:upper16:.LANCHOR1	@ tmp150,
	str	r2, [r4, #0]	@ ExpectedPhyAddr, <variable>.PhyAddr
	mov	r0, r5	@ D.28945, tmp148
	stmib	r4, {r3, ip}	@ phole stm
	ldr	r3, [r1, #-2032]	@ s_MemOffset, s_MemOffset
	add	r2, ip, r3	@ tmp152, ExpectedLen.717, s_MemOffset
	add	lr, r2, #3	@ tmp154, tmp152,
	bic	r3, lr, #3	@ tmp155, tmp154,
	str	r3, [r1, #-2032]	@ tmp155, s_MemOffset
	b	.L77	@
	.fnend
	.size	MEM_AllocMemBlock, .-MEM_AllocMemBlock
	.align	2
	.global	MEM_CopyVir2Phy
	.type	MEM_CopyVir2Phy, %function
MEM_CopyVir2Phy:
	.fnstart
.LFB1367:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp165,
	movt	ip, #:upper16:.LANCHOR0	@ tmp165,
	mov	r4, #0	@ i,
	add	r3, ip, #16	@ ivtmp.747, tmp165,
	b	.L84	@
.L81:
	ldr	r3, [r3, #12]	@ D.29082, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29082,
	mov	r6, r4	@ tmp166, i
	beq	.L87	@,
	ldr	r5, [r7, #-8]	@ D.29081, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29081
	add	r3, r5, r3	@ tmp170, D.29081, D.29082
	blt	.L87	@,
	cmp	r0, r3	@ DstPhyAddr, tmp170
	blt	.L90	@,
.L87:
	add	r4, r6, #1	@ i, tmp166,
	add	r3, r7, #12	@ ivtmp.747, tmp167,
	cmp	r4, #512	@ i,
	beq	.L91	@,
.L84:
	ldr	r6, [r3, #0]	@ D.29082, <variable>.Length
	add	r7, r3, #12	@ tmp167, ivtmp.747,
	cmp	r6, #0	@ D.29082,
	beq	.L81	@,
	ldr	r5, [r3, #-8]	@ D.29081, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29081
	add	r6, r5, r6	@ tmp143, D.29081, D.29082
	blt	.L81	@,
	cmp	r0, r6	@ DstPhyAddr, tmp143
	bge	.L81	@,
.L90:
	add	r4, r4, r4, asl #1	@, tmp148, i, i,
	rsb	r0, r5, r0	@ tmp152, D.29081, DstPhyAddr
	add	ip, ip, r4, asl #2	@, tmp150, tmp165, tmp148,
	ldr	r3, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r0, r0, r3	@ pDst, tmp152, <variable>.VirAddr
	moveq	ip, #0	@, tmp155
	movne	ip, #1	@, tmp155
	cmp	r1, #0	@ SrcVirAddr,
	moveq	ip, #0	@, tmp160
	andne	ip, ip, #1	@,, tmp160, tmp155
	cmp	ip, #0	@ tmp160,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L91:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyVir2Phy, .-MEM_CopyVir2Phy
	.align	2
	.global	MEM_CopyPhy2Vir
	.type	MEM_CopyPhy2Vir, %function
MEM_CopyPhy2Vir:
	.fnstart
.LFB1366:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp165,
	movt	ip, #:upper16:.LANCHOR0	@ tmp165,
	mov	r4, #0	@ i,
	add	r3, ip, #16	@ ivtmp.780, tmp165,
	b	.L96	@
.L93:
	ldr	r3, [r3, #12]	@ D.29093, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29093,
	mov	r6, r4	@ tmp166, i
	beq	.L99	@,
	ldr	r5, [r7, #-8]	@ D.29092, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29092
	add	r3, r5, r3	@ tmp170, D.29092, D.29093
	blt	.L99	@,
	cmp	r1, r3	@ SrcPhyAddr, tmp170
	blt	.L102	@,
.L99:
	add	r4, r6, #1	@ i, tmp166,
	add	r3, r7, #12	@ ivtmp.780, tmp167,
	cmp	r4, #512	@ i,
	beq	.L103	@,
.L96:
	ldr	r6, [r3, #0]	@ D.29093, <variable>.Length
	add	r7, r3, #12	@ tmp167, ivtmp.780,
	cmp	r6, #0	@ D.29093,
	beq	.L93	@,
	ldr	r5, [r3, #-8]	@ D.29092, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29092
	add	r6, r5, r6	@ tmp143, D.29092, D.29093
	blt	.L93	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp143
	bge	.L93	@,
.L102:
	add	r4, r4, r4, asl #1	@, tmp148, i, i,
	rsb	r1, r5, r1	@ tmp152, D.29092, SrcPhyAddr
	add	ip, ip, r4, asl #2	@, tmp150, tmp165, tmp148,
	ldr	r3, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, r3	@ pSrc, tmp152, <variable>.VirAddr
	moveq	r3, #0	@, tmp155
	movne	r3, #1	@, tmp155
	cmp	r0, #0	@ DstVirAddr,
	moveq	r3, #0	@, tmp160
	andne	r3, r3, #1	@,, tmp160, tmp155
	cmp	r3, #0	@ tmp160,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L103:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyPhy2Vir, .-MEM_CopyPhy2Vir
	.align	2
	.global	MEM_CopyPhy2Phy
	.type	MEM_CopyPhy2Phy, %function
MEM_CopyPhy2Phy:
	.fnstart
.LFB1365:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp181,
	movt	ip, #:upper16:.LANCHOR0	@ tmp181,
	mov	r4, #0	@ i,
	add	r3, ip, #16	@ ivtmp.827, tmp181,
	mov	r5, r3	@ ivtmp.823, ivtmp.827
	b	.L107	@
.L105:
	ldr	r5, [r5, #12]	@ D.29104, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r5, #0	@ D.29104,
	mov	r7, r4	@ tmp184, i
	beq	.L117	@,
	ldr	r6, [r8, #-8]	@ D.29103, <variable>.PhyAddr
	cmp	r0, r6	@ DstPhyAddr, D.29103
	add	r5, r6, r5	@ tmp191, D.29103, D.29104
	blt	.L117	@,
	cmp	r0, r5	@ DstPhyAddr, tmp191
	blt	.L122	@,
.L117:
	add	r4, r7, #1	@ i, tmp184,
	add	r5, r8, #12	@ ivtmp.823, tmp185,
	cmp	r4, #512	@ i,
	beq	.L124	@,
.L107:
	ldr	r7, [r5, #0]	@ D.29104, <variable>.Length
	add	r8, r5, #12	@ tmp185, ivtmp.823,
	cmp	r7, #0	@ D.29104,
	beq	.L105	@,
	ldr	r6, [r5, #-8]	@ D.29103, <variable>.PhyAddr
	cmp	r0, r6	@ DstPhyAddr, D.29103
	add	r7, r6, r7	@ tmp148, D.29103, D.29104
	blt	.L105	@,
	cmp	r0, r7	@ DstPhyAddr, tmp148
	bge	.L105	@,
.L122:
	add	r7, r4, r4, asl #1	@, tmp153, i, i,
	rsb	r0, r6, r0	@ tmp157, D.29103, DstPhyAddr
	add	r6, ip, r7, asl #2	@, tmp155, tmp181, tmp153,
	ldr	r4, [r6, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r4	@ pDst, tmp157, <variable>.VirAddr
.L106:
	mov	r4, #0	@ i,
	b	.L111	@
.L108:
	ldr	r3, [r3, #12]	@ D.29115, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29115,
	mov	r6, r4	@ tmp182, i
	beq	.L115	@,
	ldr	r5, [r7, #-8]	@ D.29114, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29114
	add	r3, r5, r3	@ tmp190, D.29114, D.29115
	blt	.L115	@,
	cmp	r1, r3	@ SrcPhyAddr, tmp190
	blt	.L121	@,
.L115:
	add	r4, r6, #1	@ i, tmp182,
	add	r3, r7, #12	@ ivtmp.827, tmp183,
	cmp	r4, #512	@ i,
	beq	.L125	@,
.L111:
	ldr	r6, [r3, #0]	@ D.29115, <variable>.Length
	add	r7, r3, #12	@ tmp183, ivtmp.827,
	cmp	r6, #0	@ D.29115,
	beq	.L108	@,
	ldr	r5, [r3, #-8]	@ D.29114, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29114
	add	r6, r5, r6	@ tmp159, D.29114, D.29115
	blt	.L108	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp159
	bge	.L108	@,
.L121:
	add	r4, r4, r4, asl #1	@, tmp164, i, i,
	rsb	r1, r5, r1	@ tmp168, D.29114, SrcPhyAddr
	add	ip, ip, r4, asl #2	@, tmp166, tmp181, tmp164,
	ldr	r3, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, r3	@ pSrc, tmp168, <variable>.VirAddr
	moveq	r3, #0	@, tmp171
	movne	r3, #1	@, tmp171
	cmp	r0, #0	@ pDst,
	moveq	r3, #0	@, tmp176
	andne	r3, r3, #1	@,, tmp176, tmp171
	cmp	r3, #0	@ tmp176,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L124:
	mov	r0, #0	@ pDst,
	b	.L106	@
.L125:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyPhy2Phy, .-MEM_CopyPhy2Phy
	.align	2
	.global	MEM_DelMemRecord
	.type	MEM_DelMemRecord, %function
MEM_DelMemRecord:
	.fnstart
.LFB1360:
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
	mov	r4, r0	@ PhyAddr, PhyAddr
	ldr	r0, .L139	@,
	mov	r5, r1	@ VirAddr, VirAddr
	mov	r6, r2	@ Length, Length
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp176,
	movt	r3, #:upper16:.LANCHOR0	@ tmp176,
	mov	r2, #0	@ i,
	add	r1, r3, #16	@ ivtmp.856, tmp176,
	b	.L129	@
.L127:
	ldr	r1, [r1, #12]	@ D.28809, <variable>.Length
	add	r2, r2, #1	@ i, i,
	cmp	r1, #0	@ D.28809,
	mov	ip, r2	@ tmp180, i
	beq	.L132	@,
	ldr	lr, [r0, #-8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, r4	@ <variable>.PhyAddr, PhyAddr
	beq	.L137	@,
.L132:
	add	r2, ip, #1	@ i, tmp180,
	add	r1, r0, #12	@ ivtmp.856, tmp181,
	cmp	r2, #512	@ i,
	beq	.L138	@,
.L129:
	ldr	ip, [r1, #0]	@ D.28809, <variable>.Length
	add	r0, r1, #12	@ tmp181, ivtmp.856,
	cmp	ip, #0	@ D.28809,
	beq	.L127	@,
	ldr	lr, [r1, #-8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, r4	@ <variable>.PhyAddr, PhyAddr
	bne	.L127	@,
	ldr	lr, [r1, #-4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	lr, r5	@ <variable>.VirAddr, VirAddr
	bne	.L127	@,
	cmp	ip, r6	@ D.28809, Length
	bne	.L127	@,
.L135:
	mov	r1, #12	@ tmp151,
	mov	r4, #0	@ tmp154,
	mla	r3, r1, r2, r3	@ tmp152, tmp151, i, tmp176
	ldr	r0, .L139	@,
	str	r4, [r3, #12]	@ tmp154, <variable>.VirAddr
	str	r4, [r3, #16]	@ tmp154, <variable>.Length
	str	r4, [r3, #8]	@ tmp154, <variable>.PhyAddr
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.28820, tmp154
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L137:
	ldr	lr, [r0, #-4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	lr, r5	@ <variable>.VirAddr, VirAddr
	bne	.L132	@,
	cmp	r1, r6	@ D.28809, Length
	beq	.L135	@,
	add	r2, ip, #1	@ i, tmp180,
	add	r1, r0, #12	@ ivtmp.856, tmp181,
	cmp	r2, #512	@ i,
	bne	.L129	@,
.L138:
	ldr	r0, .L139	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.28820,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L140:
	.align	2
.L139:
	.word	.LANCHOR1-2028
	.fnend
	.size	MEM_DelMemRecord, .-MEM_DelMemRecord
	.align	2
	.global	MEM_AddMemRecord
	.type	MEM_AddMemRecord, %function
MEM_AddMemRecord:
	.fnstart
.LFB1359:
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
	mov	r4, r0	@ PhyAddr, PhyAddr
	ldr	r0, .L153	@,
	mov	r5, r1	@ VirAddr, VirAddr
	mov	r7, r2	@ Length, Length
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp178,
	movt	r3, #:upper16:.LANCHOR0	@ tmp178,
	mov	r2, #0	@ i,
	add	r1, r3, #8	@ ivtmp.892, tmp178,
	b	.L143	@
.L152:
	ldr	r6, [r1, #20]	@ <variable>.Length, <variable>.Length
	add	r2, r2, #1	@ i, i,
	add	r1, r1, #24	@ ivtmp.892, ivtmp.892,
	cmp	r6, #0	@ <variable>.Length,
	beq	.L142	@,
	add	r2, r2, #1	@ i, i,
	cmp	r2, #512	@ i,
	beq	.L151	@,
.L143:
	ldr	r6, [r1, #8]	@ <variable>.Length, <variable>.Length
	cmp	r6, #0	@ <variable>.Length,
	bne	.L152	@,
.L142:
	add	r2, r2, r2, asl #1	@, tmp149, i, i,
	ldr	r0, .L153	@,
	add	r3, r3, r2, asl #2	@, tmp151, tmp178, tmp149,
	str	r7, [r3, #16]	@ Length, <variable>.Length
	str	r4, [r3, #8]	@ PhyAddr, <variable>.PhyAddr
	str	r5, [r3, #12]	@ VirAddr, <variable>.VirAddr
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.28797, <variable>.Length
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L151:
	ldr	r0, .L153	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.28797,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L154:
	.align	2
.L153:
	.word	.LANCHOR1-2028
	.fnend
	.size	MEM_AddMemRecord, .-MEM_AddMemRecord
	.align	2
	.global	MEM_InitMemManager
	.type	MEM_InitMemManager, %function
MEM_InitMemManager:
	.fnstart
.LFB1356:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp135,
	movt	r4, #:upper16:.LANCHOR1	@ tmp135,
	mov	r7, r0	@ MemBaseAddr, MemBaseAddr
	sub	r5, r4, #2016	@ tmp136, tmp135,
	mov	r6, r1	@ MemSize, MemSize
	sub	r5, r5, #12	@ tmp136, tmp136,
	mov	r0, r5	@, tmp136
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L157	@,
	mov	r1, #6144	@,
	bl	__memzero	@
	mov	r0, r5	@, tmp136
	mov	r3, #0	@ tmp143,
	str	r7, [r4, #-2016]	@ MemBaseAddr, s_MemBaseAddr
	str	r3, [r4, #-2032]	@ tmp143, s_MemOffset
	str	r6, [r4, #-2012]	@ MemSize, s_MemSize
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L158:
	.align	2
.L157:
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_InitMemManager, .-MEM_InitMemManager
	.global	g_RecordLock
	.global	s_MemRecord
	.global	mem_malloc
	.global	mem_free
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_MEM_DelMemRecord, %object
	.size	__kstrtab_MEM_DelMemRecord, 17
__kstrtab_MEM_DelMemRecord:
	.ascii	"MEM_DelMemRecord\000"
	.type	__kstrtab_MEM_AddMemRecord, %object
	.size	__kstrtab_MEM_AddMemRecord, 17
__kstrtab_MEM_AddMemRecord:
	.ascii	"MEM_AddMemRecord\000"
	.type	__kstrtab_MEM_ReleaseMemBlock, %object
	.size	__kstrtab_MEM_ReleaseMemBlock, 20
__kstrtab_MEM_ReleaseMemBlock:
	.ascii	"MEM_ReleaseMemBlock\000"
	.type	__kstrtab_MEM_AllocMemBlock, %object
	.size	__kstrtab_MEM_AllocMemBlock, 18
__kstrtab_MEM_AllocMemBlock:
	.ascii	"MEM_AllocMemBlock\000"
	.section	___ksymtab+MEM_ReleaseMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_ReleaseMemBlock, %object
	.size	__ksymtab_MEM_ReleaseMemBlock, 8
__ksymtab_MEM_ReleaseMemBlock:
@ value:
	.word	MEM_ReleaseMemBlock
@ name:
	.word	__kstrtab_MEM_ReleaseMemBlock
	.section	___ksymtab+MEM_AddMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AddMemRecord, %object
	.size	__ksymtab_MEM_AddMemRecord, 8
__ksymtab_MEM_AddMemRecord:
@ value:
	.word	MEM_AddMemRecord
@ name:
	.word	__kstrtab_MEM_AddMemRecord
	.section	___ksymtab+MEM_DelMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_DelMemRecord, %object
	.size	__ksymtab_MEM_DelMemRecord, 8
__ksymtab_MEM_DelMemRecord:
@ value:
	.word	MEM_DelMemRecord
@ name:
	.word	__kstrtab_MEM_DelMemRecord
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR1 = . + 8184
	.type	mem_malloc, %object
	.size	mem_malloc, 4
mem_malloc:
	.space	4
	.type	mem_free, %object
	.size	mem_free, 4
mem_free:
	.space	4
	.type	s_MemRecord, %object
	.size	s_MemRecord, 6144
s_MemRecord:
	.space	6144
	.type	s_MemOffset, %object
	.size	s_MemOffset, 4
s_MemOffset:
	.space	4
	.type	g_RecordLock, %object
	.size	g_RecordLock, 12
g_RecordLock:
	.space	12
	.type	s_MemBaseAddr, %object
	.size	s_MemBaseAddr, 4
s_MemBaseAddr:
	.space	4
	.type	s_MemSize, %object
	.size	s_MemSize, 4
s_MemSize:
	.space	4
	.section	___ksymtab+MEM_AllocMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AllocMemBlock, %object
	.size	__ksymtab_MEM_AllocMemBlock, 8
__ksymtab_MEM_AllocMemBlock:
@ value:
	.word	MEM_AllocMemBlock
@ name:
	.word	__kstrtab_MEM_AllocMemBlock
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
