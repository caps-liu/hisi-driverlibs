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
@ -DKBUILD_BASENAME=KBUILD_STR(mem_manage)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.mem_manage.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/mem_manage.c
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp191,
	movt	r2, #:upper16:.LANCHOR0	@ tmp191,
	mov	ip, #0	@ i,
	add	r3, r2, #16	@ ivtmp.506, tmp191,
	b	.L8	@
.L6:
	ldr	r3, [r3, #12]	@ D.29105, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r3, #0	@ D.29105,
	mov	r4, ip	@ tmp192, i
	beq	.L11	@,
	ldr	r1, [r5, #-8]	@ D.29108, <variable>.PhyAddr
	cmp	r1, r0	@ D.29108, PhyAddr
	add	r3, r1, r3	@ tmp196, D.29108, D.29105
	bgt	.L11	@,
	cmp	r0, r3	@ PhyAddr, tmp196
	blt	.L14	@,
.L11:
	add	ip, r4, #1	@ i, tmp192,
	add	r3, r5, #12	@ ivtmp.506, tmp193,
	cmp	ip, #64	@ i,
	beq	.L17	@,
.L8:
	ldr	r4, [r3, #0]	@ D.29105, <variable>.Length
	add	r5, r3, #12	@ tmp193, ivtmp.506,
	cmp	r4, #0	@ D.29105,
	beq	.L6	@,
	ldr	r1, [r3, #-8]	@ D.29108, <variable>.PhyAddr
	cmp	r1, r0	@ D.29108, PhyAddr
	add	r4, r1, r4	@ tmp179, D.29108, D.29105
	bgt	.L6	@,
	cmp	r0, r4	@ PhyAddr, tmp179
	bge	.L6	@,
.L14:
	add	ip, ip, ip, asl #1	@, tmp184, i, i,
	rsb	r0, r1, r0	@ tmp188, D.29108, PhyAddr
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
.LFB1352:
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
	add	r3, r2, #16	@ ivtmp.539, tmp154,
.L21:
	ldr	r4, [r3, #0]	@ D.29128, <variable>.Length
	add	r5, r3, #12	@ tmp156, ivtmp.539,
	cmp	r4, #0	@ D.29128,
	beq	.L19	@,
	ldr	ip, [r3, #-4]	@ D.29131, <variable>.VirAddr
	cmp	ip, r0	@ D.29131, VirAddr
	add	r4, ip, r4	@ tmp142, D.29131, D.29128
	bhi	.L19	@,
	cmp	r0, r4	@ VirAddr, tmp142
	bcc	.L27	@,
.L19:
	ldr	r3, [r3, #12]	@ D.29128, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.29128,
	mov	r4, r1	@ tmp155, i
	beq	.L24	@,
	ldr	ip, [r5, #-4]	@ D.29131, <variable>.VirAddr
	cmp	ip, r0	@ D.29131, VirAddr
	add	r3, ip, r3	@ tmp159, D.29131, D.29128
	bhi	.L24	@,
	cmp	r0, r3	@ VirAddr, tmp159
	bcc	.L27	@,
.L24:
	add	r1, r4, #1	@ i, tmp155,
	add	r3, r5, #12	@ ivtmp.539, tmp156,
	cmp	r1, #64	@ i,
	bne	.L21	@,
	mov	r0, #0	@ PhyAddr,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L27:
	add	r1, r1, r1, asl #1	@, tmp147, i, i,
	add	r2, r2, r1, asl #2	@, tmp149, tmp154, tmp147,
	ldr	r3, [r2, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, r3	@ tmp151, VirAddr, <variable>.PhyAddr
	rsb	r0, ip, r0	@ PhyAddr, D.29131, tmp151
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_Vir2Phy, .-MEM_Vir2Phy
	.align	2
	.global	MEM_WritePhyWord
	.type	MEM_WritePhyWord, %function
MEM_WritePhyWord:
	.fnstart
.LFB1353:
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
	add	r3, r2, #16	@ ivtmp.572, tmp153,
.L33:
	ldr	r5, [r3, #0]	@ D.29334, <variable>.Length
	add	r6, r3, #12	@ tmp156, ivtmp.572,
	cmp	r5, #0	@ D.29334,
	beq	.L30	@,
	ldr	r4, [r3, #-8]	@ D.29333, <variable>.PhyAddr
	cmp	r0, r4	@ PhyAddr, D.29333
	add	r5, r4, r5	@ tmp142, D.29333, D.29334
	blt	.L30	@,
	cmp	r0, r5	@ PhyAddr, tmp142
	blt	.L39	@,
.L30:
	ldr	r3, [r3, #12]	@ D.29334, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r3, #0	@ D.29334,
	mov	r5, ip	@ tmp155, i
	beq	.L36	@,
	ldr	r4, [r6, #-8]	@ D.29333, <variable>.PhyAddr
	cmp	r0, r4	@ PhyAddr, D.29333
	add	r3, r4, r3	@ tmp159, D.29333, D.29334
	blt	.L36	@,
	cmp	r0, r3	@ PhyAddr, tmp159
	blt	.L39	@,
.L36:
	add	ip, r5, #1	@ i, tmp155,
	add	r3, r6, #12	@ ivtmp.572, tmp156,
	cmp	ip, #64	@ i,
	bne	.L33	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L39:
	add	ip, ip, ip, asl #1	@, tmp147, i, i,
	rsb	r0, r4, r0	@ tmp151, D.29333, PhyAddr
	add	r2, r2, ip, asl #2	@, tmp149, tmp153, tmp147,
	ldr	r3, [r2, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r0, r3	@ pDst, tmp151, <variable>.VirAddr
	cmp	r2, #0	@ pDst,
	strne	r1, [r0, r3]	@ Data32,* <variable>.VirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MEM_WritePhyWord, .-MEM_WritePhyWord
	.align	2
	.global	MEM_ReadPhyWord
	.type	MEM_ReadPhyWord, %function
MEM_ReadPhyWord:
	.fnstart
.LFB1354:
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
	add	r3, r2, #16	@ ivtmp.605, tmp156,
.L44:
	ldr	r4, [r3, #0]	@ D.29345, <variable>.Length
	add	r5, r3, #12	@ tmp158, ivtmp.605,
	cmp	r4, #0	@ D.29345,
	beq	.L41	@,
	ldr	ip, [r3, #-8]	@ D.29344, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29344
	add	r4, ip, r4	@ tmp144, D.29344, D.29345
	blt	.L41	@,
	cmp	r0, r4	@ PhyAddr, tmp144
	blt	.L51	@,
.L41:
	ldr	r3, [r3, #12]	@ D.29345, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.29345,
	mov	r4, r1	@ tmp157, i
	beq	.L48	@,
	ldr	ip, [r5, #-8]	@ D.29344, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29344
	add	r3, ip, r3	@ tmp161, D.29344, D.29345
	blt	.L48	@,
	cmp	r0, r3	@ PhyAddr, tmp161
	blt	.L51	@,
.L48:
	add	r1, r4, #1	@ i, tmp157,
	add	r3, r5, #12	@ ivtmp.605, tmp158,
	cmp	r1, #64	@ i,
	bne	.L44	@,
.L43:
	mov	r0, #0	@ Data32,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L51:
	add	r1, r1, r1, asl #1	@, tmp149, i, i,
	rsb	r0, ip, r0	@ tmp153, D.29344, PhyAddr
	add	ip, r2, r1, asl #2	@, tmp151, tmp156, tmp149,
	ldr	r3, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r0, r3	@ pDst, tmp153, <variable>.VirAddr
	cmp	r2, #0	@ pDst,
	ldrne	r0, [r0, r3]	@ Data32,* <variable>.VirAddr
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	b	.L43	@
	.fnend
	.size	MEM_ReadPhyWord, .-MEM_ReadPhyWord
	.align	2
	.global	MEM_ReleaseMemBlock
	.type	MEM_ReleaseMemBlock, %function
MEM_ReleaseMemBlock:
	.fnstart
.LFB1361:
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
	beq	.L57	@,
	ldr	r3, .L63	@ ivtmp.637,
	str	r1, [fp, #-32]	@ VirAddr, FreeMem.VirAddr
	add	lr, r3, #768	@ D.29601, ivtmp.637,
	str	r0, [fp, #-36]	@ PhyAddr, FreeMem.PhyAddr
.L56:
	ldr	r2, [r3, #0]	@ D.29290, <variable>.Length
	add	r1, r3, #12	@ tmp152, ivtmp.637,
	cmp	r2, #0	@ D.29290,
	beq	.L54	@,
	ldr	ip, [r3, #-8]	@ D.29293, <variable>.PhyAddr
	cmp	r0, ip	@ PhyAddr, D.29293
	add	r4, ip, r2	@ tmp150, D.29293, D.29290
	blt	.L54	@,
	cmp	r0, r4	@ PhyAddr, tmp150
	blt	.L62	@,
.L54:
	ldr	r2, [r3, #12]	@ D.29290, <variable>.Length
	cmp	r2, #0	@ D.29290,
	beq	.L59	@,
	ldr	r3, [r1, #-8]	@ D.29293, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29293
	add	ip, r3, r2	@ tmp155, D.29293, D.29290
	blt	.L59	@,
	cmp	r0, ip	@ PhyAddr, tmp155
	blt	.L62	@,
.L59:
	add	r3, r1, #12	@ ivtmp.637, tmp152,
	cmp	r3, lr	@ ivtmp.637, D.29601
	bne	.L56	@,
.L55:
	sub	r0, fp, #36	@,,
	bl	KernelMemFree	@
.L57:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L62:
	str	r2, [fp, #-28]	@ D.29290, FreeMem.Length
	b	.L55	@
.L64:
	.align	2
.L63:
	.word	.LANCHOR0+16
	.fnend
	.size	MEM_ReleaseMemBlock, .-MEM_ReleaseMemBlock
	.align	2
	.global	MEM_UnmapRegisterAddr
	.type	MEM_UnmapRegisterAddr, %function
MEM_UnmapRegisterAddr:
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
.LFB1359:
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
	bne	.L72	@,
.L69:
	mvn	r0, #0	@ D.29254,
.L70:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L72:
	mov	r0, r2	@, pMemRecord
	mov	r1, #12	@,
	str	r2, [fp, #-32]	@,
	bl	__memzero	@
	mov	r0, r4	@, RegStartPhyAddr
	bl	KernelRegisterMap	@
	ldr	r2, [fp, #-32]	@,
	subs	r3, r0, #0	@ ptr,
	beq	.L69	@,
	str	r6, [r2, #8]	@ RegByteLen, <variable>.Length
	mov	r0, r5	@ D.29254, tmp145
	str	r4, [r2, #0]	@ RegStartPhyAddr, <variable>.PhyAddr
	str	r3, [r2, #4]	@ ptr, <variable>.VirAddr
	b	.L70	@
	.fnend
	.size	MEM_MapRegisterAddr, .-MEM_MapRegisterAddr
	.align	2
	.global	MEM_AllocMemBlock
	.type	MEM_AllocMemBlock, %function
MEM_AllocMemBlock:
	.fnstart
.LFB1358:
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
	bne	.L77	@,
.L74:
	mvn	r0, #0	@ D.29219,
.L75:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L77:
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
	ldr	r3, [fp, #-40]	@ D.29228, AllocMem.VirAddr
	cmp	r3, #0	@ D.29228,
	beq	.L74	@,
	ldr	r2, [fp, #-44]	@ ExpectedPhyAddr, AllocMem.PhyAddr
	ldr	ip, [fp, #-36]	@ ExpectedLen.711, AllocMem.Length
	cmp	r2, #0	@ ExpectedPhyAddr,
	beq	.L74	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp150,
	movt	r1, #:upper16:.LANCHOR0	@ tmp150,
	str	r2, [r4, #0]	@ ExpectedPhyAddr, <variable>.PhyAddr
	mov	r0, r5	@ D.29219, tmp148
	stmib	r4, {r3, ip}	@ phole stm
	ldr	r3, [r1, #776]	@ s_MemOffset, s_MemOffset
	add	r2, ip, r3	@ tmp152, ExpectedLen.711, s_MemOffset
	add	lr, r2, #3	@ tmp154, tmp152,
	bic	r3, lr, #3	@ tmp155, tmp154,
	str	r3, [r1, #776]	@ tmp155, s_MemOffset
	b	.L75	@
	.fnend
	.size	MEM_AllocMemBlock, .-MEM_AllocMemBlock
	.align	2
	.global	MEM_CopyVir2Phy
	.type	MEM_CopyVir2Phy, %function
MEM_CopyVir2Phy:
	.fnstart
.LFB1357:
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
	add	r3, ip, #16	@ ivtmp.741, tmp165,
.L82:
	ldr	r6, [r3, #0]	@ D.29356, <variable>.Length
	add	r7, r3, #12	@ tmp167, ivtmp.741,
	cmp	r6, #0	@ D.29356,
	beq	.L79	@,
	ldr	r5, [r3, #-8]	@ D.29355, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29355
	add	r6, r5, r6	@ tmp143, D.29355, D.29356
	blt	.L79	@,
	cmp	r0, r6	@ DstPhyAddr, tmp143
	blt	.L88	@,
.L79:
	ldr	r3, [r3, #12]	@ D.29356, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29356,
	mov	r6, r4	@ tmp166, i
	beq	.L85	@,
	ldr	r5, [r7, #-8]	@ D.29355, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29355
	add	r3, r5, r3	@ tmp170, D.29355, D.29356
	blt	.L85	@,
	cmp	r0, r3	@ DstPhyAddr, tmp170
	blt	.L88	@,
.L85:
	add	r4, r6, #1	@ i, tmp166,
	add	r3, r7, #12	@ ivtmp.741, tmp167,
	cmp	r4, #64	@ i,
	bne	.L82	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L88:
	add	r4, r4, r4, asl #1	@, tmp148, i, i,
	rsb	r0, r5, r0	@ tmp152, D.29355, DstPhyAddr
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
	.fnend
	.size	MEM_CopyVir2Phy, .-MEM_CopyVir2Phy
	.align	2
	.global	MEM_CopyPhy2Vir
	.type	MEM_CopyPhy2Vir, %function
MEM_CopyPhy2Vir:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp165,
	movt	ip, #:upper16:.LANCHOR0	@ tmp165,
	mov	r4, #0	@ i,
	add	r3, ip, #16	@ ivtmp.774, tmp165,
.L93:
	ldr	r6, [r3, #0]	@ D.29367, <variable>.Length
	add	r7, r3, #12	@ tmp167, ivtmp.774,
	cmp	r6, #0	@ D.29367,
	beq	.L90	@,
	ldr	r5, [r3, #-8]	@ D.29366, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29366
	add	r6, r5, r6	@ tmp143, D.29366, D.29367
	blt	.L90	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp143
	blt	.L99	@,
.L90:
	ldr	r3, [r3, #12]	@ D.29367, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29367,
	mov	r6, r4	@ tmp166, i
	beq	.L96	@,
	ldr	r5, [r7, #-8]	@ D.29366, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29366
	add	r3, r5, r3	@ tmp170, D.29366, D.29367
	blt	.L96	@,
	cmp	r1, r3	@ SrcPhyAddr, tmp170
	blt	.L99	@,
.L96:
	add	r4, r6, #1	@ i, tmp166,
	add	r3, r7, #12	@ ivtmp.774, tmp167,
	cmp	r4, #64	@ i,
	bne	.L93	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L99:
	add	r4, r4, r4, asl #1	@, tmp148, i, i,
	rsb	r1, r5, r1	@ tmp152, D.29366, SrcPhyAddr
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
	.fnend
	.size	MEM_CopyPhy2Vir, .-MEM_CopyPhy2Vir
	.align	2
	.global	MEM_CopyPhy2Phy
	.type	MEM_CopyPhy2Phy, %function
MEM_CopyPhy2Phy:
	.fnstart
.LFB1355:
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
	add	r3, ip, #16	@ ivtmp.821, tmp181,
	mov	r5, r3	@ ivtmp.817, ivtmp.821
.L103:
	ldr	r7, [r5, #0]	@ D.29378, <variable>.Length
	add	r8, r5, #12	@ tmp185, ivtmp.817,
	cmp	r7, #0	@ D.29378,
	beq	.L101	@,
	ldr	r6, [r5, #-8]	@ D.29377, <variable>.PhyAddr
	cmp	r0, r6	@ DstPhyAddr, D.29377
	add	r7, r6, r7	@ tmp148, D.29377, D.29378
	blt	.L101	@,
	cmp	r0, r7	@ DstPhyAddr, tmp148
	blt	.L118	@,
.L101:
	ldr	r5, [r5, #12]	@ D.29378, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r5, #0	@ D.29378,
	mov	r7, r4	@ tmp184, i
	beq	.L113	@,
	ldr	r6, [r8, #-8]	@ D.29377, <variable>.PhyAddr
	cmp	r0, r6	@ DstPhyAddr, D.29377
	add	r5, r6, r5	@ tmp191, D.29377, D.29378
	blt	.L113	@,
	cmp	r0, r5	@ DstPhyAddr, tmp191
	blt	.L118	@,
.L113:
	add	r4, r7, #1	@ i, tmp184,
	add	r5, r8, #12	@ ivtmp.817, tmp185,
	cmp	r4, #64	@ i,
	bne	.L103	@,
	mov	r0, #0	@ pDst,
.L102:
	mov	r4, #0	@ i,
.L107:
	ldr	r6, [r3, #0]	@ D.29389, <variable>.Length
	add	r7, r3, #12	@ tmp183, ivtmp.821,
	cmp	r6, #0	@ D.29389,
	beq	.L104	@,
	ldr	r5, [r3, #-8]	@ D.29388, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29388
	add	r6, r5, r6	@ tmp159, D.29388, D.29389
	blt	.L104	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp159
	blt	.L117	@,
.L104:
	ldr	r3, [r3, #12]	@ D.29389, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r3, #0	@ D.29389,
	mov	r6, r4	@ tmp182, i
	beq	.L111	@,
	ldr	r5, [r7, #-8]	@ D.29388, <variable>.PhyAddr
	cmp	r1, r5	@ SrcPhyAddr, D.29388
	add	r3, r5, r3	@ tmp190, D.29388, D.29389
	blt	.L111	@,
	cmp	r1, r3	@ SrcPhyAddr, tmp190
	blt	.L117	@,
.L111:
	add	r4, r6, #1	@ i, tmp182,
	add	r3, r7, #12	@ ivtmp.821, tmp183,
	cmp	r4, #64	@ i,
	bne	.L107	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L117:
	add	r4, r4, r4, asl #1	@, tmp164, i, i,
	rsb	r1, r5, r1	@ tmp168, D.29388, SrcPhyAddr
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
.L118:
	add	r7, r4, r4, asl #1	@, tmp153, i, i,
	rsb	r0, r6, r0	@ tmp157, D.29377, DstPhyAddr
	add	r6, ip, r7, asl #2	@, tmp155, tmp181, tmp153,
	ldr	r4, [r6, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r4	@ pDst, tmp157, <variable>.VirAddr
	b	.L102	@
	.fnend
	.size	MEM_CopyPhy2Phy, .-MEM_CopyPhy2Phy
	.align	2
	.global	MEM_DelMemRecord
	.type	MEM_DelMemRecord, %function
MEM_DelMemRecord:
	.fnstart
.LFB1350:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp174,
	movt	r5, #:upper16:.LANCHOR0	@ tmp174,
	mov	r4, r0	@ PhyAddr, PhyAddr
	add	r0, r5, #780	@, tmp174,
	mov	r7, r2	@ Length, Length
	mov	r6, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLock	@
	add	r2, r5, #16	@ ivtmp.850, tmp174,
	mov	r3, #0	@ i,
	b	.L123	@
.L121:
	ldr	r2, [r2, #12]	@ D.29083, <variable>.Length
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ D.29083,
	mov	r0, r3	@ tmp175, i
	beq	.L126	@,
	ldr	ip, [r1, #-8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r4	@ <variable>.PhyAddr, PhyAddr
	beq	.L131	@,
.L126:
	add	r3, r0, #1	@ i, tmp175,
	add	r2, r1, #12	@ ivtmp.850, tmp176,
	cmp	r3, #64	@ i,
	beq	.L132	@,
.L123:
	ldr	r0, [r2, #0]	@ D.29083, <variable>.Length
	add	r1, r2, #12	@ tmp176, ivtmp.850,
	cmp	r0, #0	@ D.29083,
	beq	.L121	@,
	ldr	ip, [r2, #-8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r4	@ <variable>.PhyAddr, PhyAddr
	bne	.L121	@,
	ldr	lr, [r2, #-4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	lr, r6	@ <variable>.VirAddr, VirAddr
	bne	.L121	@,
	cmp	r0, r7	@ D.29083, Length
	bne	.L121	@,
.L129:
	mov	r2, #12	@ tmp150,
	mov	r4, #0	@ tmp153,
	mla	r5, r2, r3, r5	@ tmp151, tmp150, i, tmp174
	ldr	r0, .L133	@,
	str	r4, [r5, #12]	@ tmp153, <variable>.VirAddr
	str	r4, [r5, #16]	@ tmp153, <variable>.Length
	str	r4, [r5, #8]	@ tmp153, <variable>.PhyAddr
	bl	OSAL_SpinUnLock	@
	mov	r0, r4	@ D.29094, tmp153
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L131:
	ldr	lr, [r1, #-4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	lr, r6	@ <variable>.VirAddr, VirAddr
	bne	.L126	@,
	cmp	r2, r7	@ D.29083, Length
	beq	.L129	@,
	add	r3, r0, #1	@ i, tmp175,
	add	r2, r1, #12	@ ivtmp.850, tmp176,
	cmp	r3, #64	@ i,
	bne	.L123	@,
.L132:
	ldr	r0, .L133	@,
	bl	OSAL_SpinUnLock	@
	mvn	r0, #0	@ D.29094,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L134:
	.align	2
.L133:
	.word	.LANCHOR0+780
	.fnend
	.size	MEM_DelMemRecord, .-MEM_DelMemRecord
	.align	2
	.global	MEM_AddMemRecord
	.type	MEM_AddMemRecord, %function
MEM_AddMemRecord:
	.fnstart
.LFB1349:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp174,
	movt	r4, #:upper16:.LANCHOR0	@ tmp174,
	mov	r5, r0	@ PhyAddr, PhyAddr
	add	r0, r4, #780	@, tmp174,
	mov	r8, r2	@ Length, Length
	mov	r6, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLock	@
	add	r2, r4, #8	@ ivtmp.886, tmp174,
	mov	r3, #0	@ i,
	b	.L137	@
.L146:
	ldr	r7, [r2, #20]	@ <variable>.Length, <variable>.Length
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #24	@ ivtmp.886, ivtmp.886,
	cmp	r7, #0	@ <variable>.Length,
	beq	.L136	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	beq	.L145	@,
.L137:
	ldr	r7, [r2, #8]	@ <variable>.Length, <variable>.Length
	cmp	r7, #0	@ <variable>.Length,
	bne	.L146	@,
.L136:
	add	r3, r3, r3, asl #1	@, tmp148, i, i,
	ldr	r0, .L147	@,
	add	r4, r4, r3, asl #2	@, tmp150, tmp174, tmp148,
	str	r8, [r4, #16]	@ Length, <variable>.Length
	str	r5, [r4, #8]	@ PhyAddr, <variable>.PhyAddr
	str	r6, [r4, #12]	@ VirAddr, <variable>.VirAddr
	bl	OSAL_SpinUnLock	@
	mov	r0, r7	@ D.29071, <variable>.Length
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L145:
	ldr	r0, .L147	@,
	bl	OSAL_SpinUnLock	@
	mvn	r0, #0	@ D.29071,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L148:
	.align	2
.L147:
	.word	.LANCHOR0+780
	.fnend
	.size	MEM_AddMemRecord, .-MEM_AddMemRecord
	.align	2
	.global	MEM_InitMemManager
	.type	MEM_InitMemManager, %function
MEM_InitMemManager:
	.fnstart
.LFB1346:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r7, r0	@ MemBaseAddr, MemBaseAddr
	add	r5, r4, #780	@ tmp136, tmp135,
	mov	r6, r1	@ MemSize, MemSize
	mov	r0, r5	@, tmp136
	bl	OSAL_SpinLock	@
	add	r0, r4, #8	@, tmp135,
	mov	r1, #768	@,
	bl	__memzero	@
	mov	r0, r5	@, tmp136
	mov	r3, #0	@ tmp142,
	str	r7, [r4, #828]	@ MemBaseAddr, s_MemBaseAddr
	str	r3, [r4, #776]	@ tmp142, s_MemOffset
	str	r6, [r4, #832]	@ MemSize, s_MemSize
	bl	OSAL_SpinUnLock	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
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
	.type	mem_malloc, %object
	.size	mem_malloc, 4
mem_malloc:
	.space	4
	.type	mem_free, %object
	.size	mem_free, 4
mem_free:
	.space	4
	.type	s_MemRecord, %object
	.size	s_MemRecord, 768
s_MemRecord:
	.space	768
	.type	s_MemOffset, %object
	.size	s_MemOffset, 4
s_MemOffset:
	.space	4
	.type	g_RecordLock, %object
	.size	g_RecordLock, 48
g_RecordLock:
	.space	48
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
