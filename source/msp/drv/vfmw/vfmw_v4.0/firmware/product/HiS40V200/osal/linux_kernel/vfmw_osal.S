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
	.file	"vfmw_osal.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vfmw_osal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/.vfmw_osal.o.d
@ /home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.o
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
	.global	OSAL_WakeupTask
	.type	OSAL_WakeupTask, %function
OSAL_WakeupTask:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_WakeupTask, .-OSAL_WakeupTask
	.align	2
	.global	OSAL_DeleteTask
	.type	OSAL_DeleteTask, %function
OSAL_DeleteTask:
	.fnstart
.LFB1364:
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
	.size	OSAL_DeleteTask, .-OSAL_DeleteTask
	.align	2
	.global	OSAL_InitIntrMutex
	.type	OSAL_InitIntrMutex, %function
OSAL_InitIntrMutex:
	.fnstart
.LFB1371:
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
	.size	OSAL_InitIntrMutex, .-OSAL_InitIntrMutex
	.align	2
	.global	OSAL_AllocMemory
	.type	OSAL_AllocMemory, %function
OSAL_AllocMemory:
	.fnstart
.LFB1379:
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
	.size	OSAL_AllocMemory, .-OSAL_AllocMemory
	.align	2
	.global	OSAL_ReleaseMemory
	.type	OSAL_ReleaseMemory, %function
OSAL_ReleaseMemory:
	.fnstart
.LFB1380:
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
	.size	OSAL_ReleaseMemory, .-OSAL_ReleaseMemory
	.align	2
	.global	OSAL_MapRegisterAddr
	.type	OSAL_MapRegisterAddr, %function
OSAL_MapRegisterAddr:
	.fnstart
.LFB1381:
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
	.size	OSAL_MapRegisterAddr, .-OSAL_MapRegisterAddr
	.align	2
	.global	OSAL_UnmapRegisterAddr
	.type	OSAL_UnmapRegisterAddr, %function
OSAL_UnmapRegisterAddr:
	.fnstart
.LFB1382:
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
	.size	OSAL_UnmapRegisterAddr, .-OSAL_UnmapRegisterAddr
	.align	2
	.global	OSAL_ReadFile
	.type	OSAL_ReadFile, %function
OSAL_ReadFile:
	.fnstart
.LFB1385:
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
	.size	OSAL_ReadFile, .-OSAL_ReadFile
	.align	2
	.global	OSAL_WriteFile
	.type	OSAL_WriteFile, %function
OSAL_WriteFile:
	.fnstart
.LFB1386:
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
	.size	OSAL_WriteFile, .-OSAL_WriteFile
	.align	2
	.global	OSAL_SeekFile
	.type	OSAL_SeekFile, %function
OSAL_SeekFile:
	.fnstart
.LFB1387:
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
	.size	OSAL_SeekFile, .-OSAL_SeekFile
	.align	2
	.global	OSAL_TellFilePos
	.type	OSAL_TellFilePos, %function
OSAL_TellFilePos:
	.fnstart
.LFB1388:
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
	.size	OSAL_TellFilePos, .-OSAL_TellFilePos
	.align	2
	.global	klib_fread
	.type	klib_fread, %function
klib_fread:
	.fnstart
.LFB1391:
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
	cmp	r2, #0	@ filp
	mov	r5, r0	@ buf, buf
	mov	r3, r1	@ len, len
	mvneq	r0, #1	@ readlen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	ip, [r2, #16]	@ <variable>.f_op, <variable>.f_op
	ldr	r1, [ip, #8]	@ <variable>.read, <variable>.read
	cmp	r1, #0	@ <variable>.read,
	mvneq	r0, #37	@ readlen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r1, [r2, #68]	@ <variable>.f_flags, <variable>.f_flags
	tst	r1, #2	@ <variable>.f_flags,
	mvneq	r0, #12	@ readlen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, sp	@,
	bic	r4, r0, #8128	@ tmp146,,
	bic	r4, r4, #63	@ tmp146, tmp146,
	mov	r1, r5	@, buf
	mov	r0, r2	@, filp
	mov	lr, #0	@ tmp150,
	ldr	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	mov	r2, r3	@, len
	str	lr, [r4, #8]	@ tmp150, <variable>.addr_limit
	add	r3, r0, #80	@,,
	ldr	ip, [ip, #8]	@ <variable>.read, <variable>.read
	blx	ip	@ <variable>.read
	str	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	klib_fread, .-klib_fread
	.align	2
	.global	klib_fwrite
	.type	klib_fwrite, %function
klib_fwrite:
	.fnstart
.LFB1392:
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
	cmp	r2, #0	@ filp
	mov	r5, r0	@ buf, buf
	mov	r3, r1	@ len, len
	mvneq	r0, #1	@ writelen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	ip, [r2, #16]	@ <variable>.f_op, <variable>.f_op
	ldr	r1, [ip, #12]	@ <variable>.write, <variable>.write
	cmp	r1, #0	@ <variable>.write,
	mvneq	r0, #37	@ writelen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r1, [r2, #68]	@ <variable>.f_flags, <variable>.f_flags
	tst	r1, #3	@ <variable>.f_flags,
	mvneq	r0, #12	@ writelen,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, sp	@,
	bic	r4, r0, #8128	@ tmp146,,
	bic	r4, r4, #63	@ tmp146, tmp146,
	mov	r1, r5	@, buf
	mov	r0, r2	@, filp
	mov	lr, #0	@ tmp150,
	ldr	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	mov	r2, r3	@, len
	str	lr, [r4, #8]	@ tmp150, <variable>.addr_limit
	add	r3, r0, #80	@,,
	ldr	ip, [ip, #12]	@ <variable>.write, <variable>.write
	blx	ip	@ <variable>.write
	str	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	klib_fwrite, .-klib_fwrite
	.align	2
	.global	SEM_UP
	.type	SEM_UP, %function
SEM_UP:
	.fnstart
.LFB1404:
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
	mov	r1, #1	@,
	mov	r4, r0	@ pSem, pSem
	mov	r2, r1	@,
	mov	r3, #0	@,
	bl	__wake_up	@
	mov	r3, #1	@ tmp135,
	mov	r0, #0	@,
	str	r3, [r4, #48]	@ tmp135, <variable>.flag
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SEM_UP, .-SEM_UP
	.align	2
	.global	OSAL_GiveEvent
	.type	OSAL_GiveEvent, %function
OSAL_GiveEvent:
	.fnstart
.LFB1366:
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
	mov	r1, #1	@ tmp135,
	mov	r3, #0	@,
	str	r1, [r0, #48]	@ tmp135, <variable>.flag
	mov	r2, r1	@,
	bl	__wake_up	@
	mvn	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_GiveEvent, .-OSAL_GiveEvent
	.align	2
	.global	OSAL_UnlockTaskMutex
	.type	OSAL_UnlockTaskMutex, %function
OSAL_UnlockTaskMutex:
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
	bl	OSAL_GiveEvent	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_UnlockTaskMutex, .-OSAL_UnlockTaskMutex
	.align	2
	.global	SEM_DOWN
	.type	SEM_DOWN, %function
SEM_DOWN:
	.fnstart
.LFB1403:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r2, r1, r1, asl #2	@, tmp146, Time, Time,
	mov	r4, r0	@ pSem, pSem
	movw	r3, #:lower16:274877907	@ tmp150,
	mov	r0, r2, asl #1	@ tmp147, tmp146,
	movt	r3, #:upper16:274877907	@ tmp150,
	add	ip, r0, #50	@ tmp148, tmp147,
	ldr	r2, [r4, #48]	@ <variable>.flag, <variable>.flag
	smull	r0, r5, r3, ip	@, tmp149, tmp150, tmp148
	cmp	r2, #0	@ <variable>.flag,
	mov	r1, ip, asr #31	@ tmp152, tmp148,
	rsb	r5, r1, r5, asr #6	@, __ret, tmp152, tmp149,
	bne	.L43	@,
	mov	r7, sp	@,
	bic	r6, r7, #8128	@ tmp154,,
	bic	r6, r6, #63	@ tmp154, tmp154,
	sub	r7, fp, #48	@ tmp175,,
	add	ip, r7, #12	@ tmp164, tmp175,
	str	r2, [fp, #-48]	@ <variable>.flag, __wait
	str	ip, [fp, #-32]	@ tmp164, __wait.task_list.prev
	movw	r1, #:lower16:autoremove_wake_function	@ tmp162,
	ldr	lr, [r6, #12]	@ D.31677, <variable>.task
	movt	r1, #:upper16:autoremove_wake_function	@ tmp162,
	str	ip, [fp, #-36]	@ tmp164, __wait.task_list.next
	str	r1, [fp, #-40]	@ tmp162, __wait.func
	str	lr, [fp, #-44]	@ D.31677, __wait.private
.L46:
	mov	r0, r4	@, pSem
	mov	r1, r7	@, tmp175
	mov	r2, #1	@,
	bl	prepare_to_wait	@
	ldr	r3, [r4, #48]	@ <variable>.flag, <variable>.flag
	mov	r0, r5	@, __ret
	cmp	r3, #0	@ <variable>.flag,
	bne	.L44	@,
	ldr	lr, [r6, #12]	@ <variable>.task, <variable>.task
	ldr	r2, [lr, #4]	@ D.31700, <variable>.stack
	ldr	r5, [r2, #0]	@ D.31697,* D.31700
	tst	r5, #1	@ D.31697,
	bne	.L49	@,
	bl	schedule_timeout	@
	subs	r5, r0, #0	@ __ret,
	bne	.L46	@,
.L44:
	mov	r1, r7	@, tmp175
	mov	r0, r4	@, pSem
	bl	finish_wait	@
.L43:
	mov	r1, #0	@ tmp173,
	mov	r0, r5	@, __ret
	str	r1, [r4, #48]	@ tmp173, <variable>.flag
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L49:
	movw	r5, #:lower16:-512	@ __ret,
	movt	r5, #:upper16:-512	@ __ret,
	b	.L44	@
	.fnend
	.size	SEM_DOWN, .-SEM_DOWN
	.align	2
	.global	OSAL_WaitEvent
	.type	OSAL_WaitEvent, %function
OSAL_WaitEvent:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:1717986919	@ tmp146,
	movt	r3, #:upper16:1717986919	@ tmp146,
	mov	r4, r0	@ pEvent, pEvent
	smull	r2, r5, r3, r1	@, tmp145, tmp146, msWaitTime
	mov	r1, r1, asr #31	@ tmp148, msWaitTime,
	ldr	r2, [r0, #48]	@ <variable>.flag, <variable>.flag
	cmp	r2, #0	@ <variable>.flag,
	rsb	r5, r1, r5, asr #2	@, __ret, tmp148, tmp145,
	bne	.L51	@,
	mov	r7, sp	@,
	bic	r6, r7, #8128	@ tmp150,,
	bic	r6, r6, #63	@ tmp150, tmp150,
	sub	r7, fp, #48	@ tmp171,,
	str	r2, [fp, #-48]	@ <variable>.flag, __wait
	add	r2, r7, #12	@ tmp160, tmp171,
	str	r2, [fp, #-32]	@ tmp160, __wait.task_list.prev
	movw	ip, #:lower16:autoremove_wake_function	@ tmp158,
	ldr	r0, [r6, #12]	@ D.31706, <variable>.task
	movt	ip, #:upper16:autoremove_wake_function	@ tmp158,
	str	r2, [fp, #-36]	@ tmp160, __wait.task_list.next
	str	ip, [fp, #-40]	@ tmp158, __wait.func
	str	r0, [fp, #-44]	@ D.31706, __wait.private
.L54:
	mov	r0, r4	@, pEvent
	mov	r1, r7	@, tmp171
	mov	r2, #1	@,
	bl	prepare_to_wait	@
	ldr	r1, [r4, #48]	@ <variable>.flag, <variable>.flag
	mov	r0, r5	@, __ret
	cmp	r1, #0	@ <variable>.flag,
	bne	.L52	@,
	ldr	r3, [r6, #12]	@ <variable>.task, <variable>.task
	ldr	r5, [r3, #4]	@ D.31729, <variable>.stack
	ldr	lr, [r5, #0]	@ D.31726,* D.31729
	tst	lr, #1	@ D.31726,
	bne	.L59	@,
	bl	schedule_timeout	@
	subs	r5, r0, #0	@ __ret,
	bne	.L54	@,
.L52:
	mov	r1, r7	@, tmp171
	mov	r0, r4	@, pEvent
	bl	finish_wait	@
.L51:
	cmp	r5, #0	@ __ret,
	mov	r0, #0	@ tmp169,
	str	r0, [r4, #48]	@ tmp169, <variable>.flag
	moveq	r0, r5	@,, __ret
	mvnne	r0, #0	@,,
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L59:
	movw	r5, #:lower16:-512	@ __ret,
	movt	r5, #:upper16:-512	@ __ret,
	b	.L52	@
	.fnend
	.size	OSAL_WaitEvent, .-OSAL_WaitEvent
	.align	2
	.global	OSAL_LockTaskMutex
	.type	OSAL_LockTaskMutex, %function
OSAL_LockTaskMutex:
	.fnstart
.LFB1369:
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
	movw	r1, #:lower16:1000000	@,
	movt	r1, #:upper16:1000000	@,
	bl	OSAL_WaitEvent	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_LockTaskMutex, .-OSAL_LockTaskMutex
	.align	2
	.global	SEM_INIT
	.type	SEM_INIT, %function
SEM_INIT:
	.fnstart
.LFB1402:
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
	movw	r2, #:lower16:.LANCHOR0	@,
	str	r1, [r0, #48]	@ val, <variable>.flag
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SEM_INIT, .-SEM_INIT
	.align	2
	.global	OSAL_InitEvent
	.type	OSAL_InitEvent, %function
OSAL_InitEvent:
	.fnstart
.LFB1365:
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
	ldr	r2, .L66	@,
	str	r1, [r0, #48]	@ InitVal, <variable>.flag
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
.L67:
	.align	2
.L66:
	.word	.LANCHOR0+8
	.fnend
	.size	OSAL_InitEvent, .-OSAL_InitEvent
	.align	2
	.global	OSAL_InitTaskMutex
	.type	OSAL_InitTaskMutex, %function
OSAL_InitTaskMutex:
	.fnstart
.LFB1368:
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
	mov	r1, #1	@,
	bl	OSAL_InitEvent	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_InitTaskMutex, .-OSAL_InitTaskMutex
	.align	2
	.global	KernelMunmap
	.type	KernelMunmap, %function
KernelMunmap:
	.fnstart
.LFB1401:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #32	@ tmp134,,
	mov	r5, r0	@ p, p
	mov	r1, #12	@,
	mov	r0, r4	@, tmp134
	bl	__memzero	@
	mov	r0, r4	@, tmp134
	str	r5, [fp, #-32]	@ p, stMemBuf.u32StartVirAddr
	bl	HI_DRV_MMZ_Unmap	@
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	KernelMunmap, .-KernelMunmap
	.align	2
	.global	KernelMmapCache
	.type	KernelMmapCache, %function
KernelMmapCache:
	.fnstart
.LFB1400:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #32	@ tmp136,,
	mov	r5, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	mov	r0, r4	@, tmp136
	bl	__memzero	@
	mov	r0, r4	@, tmp136
	str	r5, [fp, #-28]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_MapCache	@
	ldr	r0, [fp, #-32]	@, stMemBuf.u32StartVirAddr
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	KernelMmapCache, .-KernelMmapCache
	.align	2
	.global	KernelMmap
	.type	KernelMmap, %function
KernelMmap:
	.fnstart
.LFB1399:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #32	@ tmp136,,
	mov	r5, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	mov	r0, r4	@, tmp136
	bl	__memzero	@
	mov	r0, r4	@, tmp136
	str	r5, [fp, #-28]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_Map	@
	ldr	r0, [fp, #-32]	@, stMemBuf.u32StartVirAddr
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	KernelMmap, .-KernelMmap
	.align	2
	.global	KernelRegisterUnMap
	.type	KernelRegisterUnMap, %function
KernelRegisterUnMap:
	.fnstart
.LFB1398:
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
	bl	__arm_iounmap	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	KernelRegisterUnMap, .-KernelRegisterUnMap
	.align	2
	.global	KernelRegisterMap
	.type	KernelRegisterMap, %function
KernelRegisterMap:
	.fnstart
.LFB1397:
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
	mov	r1, #65536	@,
	mov	r2, #0	@,
	bl	__arm_ioremap	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	KernelRegisterMap, .-KernelRegisterMap
	.align	2
	.global	KernelMemFree
	.type	KernelMemFree, %function
KernelMemFree:
	.fnstart
.LFB1396:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #32	@ tmp135,,
	mov	r5, r0	@ pMemDesc, pMemDesc
	mov	r1, #12	@,
	mov	r0, r4	@, tmp135
	bl	__memzero	@
	ldr	r1, [r5, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r5, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r4	@, tmp135
	ldr	r3, [r5, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r1, [fp, #-24]	@ <variable>.Length, stMBuf.u32Size
	str	r2, [fp, #-28]	@ <variable>.PhyAddr, stMBuf.u32StartPhyAddr
	str	r3, [fp, #-32]	@ <variable>.VirAddr, stMBuf.u32StartVirAddr
	bl	HI_DRV_MMZ_Unmap	@
	mov	r0, r4	@, tmp135
	bl	HI_DRV_MMZ_Release	@
	mov	r0, #0	@,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	KernelMemFree, .-KernelMemFree
	.align	2
	.global	KernelMemMalloc
	.type	KernelMemMalloc, %function
KernelMemMalloc:
	.fnstart
.LFB1395:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #48	@ tmp143,,
	mov	r6, r2	@ align, align
	mov	r8, r0	@ MemName, MemName
	mov	r7, r1	@ len, len
	mov	r0, r4	@, tmp143
	mov	r1, #12	@,
	mov	sl, r3	@ IsCached, IsCached
	ldr	r5, [fp, #4]	@ pMemDesc, pMemDesc
	bl	__memzero	@
	mov	r0, r8	@, MemName
	mov	r2, r7	@, len
	mov	r3, r6	@, align
	mov	r1, #0	@,
	str	r4, [sp, #0]	@ tmp143,
	bl	HI_DRV_MMZ_Alloc	@
	cmp	r0, #0	@,
	bne	.L85	@,
	ldr	r3, [fp, #-44]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	cmp	r3, #0	@ stMmzBuffer.u32StartPhyAddr,
	beq	.L85	@,
	cmp	sl, #1	@ IsCached,
	beq	.L90	@,
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_Map	@
	cmp	r0, #0	@,
	bne	.L85	@,
.L87:
	ldr	r2, [fp, #-48]	@ stMmzBuffer.u32StartVirAddr, stMmzBuffer.u32StartVirAddr
	mov	r0, #0	@ D.31383,
	ldr	ip, [fp, #-40]	@ stMmzBuffer.u32Size, stMmzBuffer.u32Size
	ldr	r1, [fp, #-44]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	stmia	r5, {r1, r2, ip}	@ phole stm
.L84:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L90:
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_MapCache	@
	cmp	r0, #0	@,
	beq	.L87	@,
.L85:
	mov	r0, r5	@, pMemDesc
	mov	r1, #16	@,
	bl	__memzero	@
	mvn	r0, #0	@ D.31383,
	b	.L84	@
	.fnend
	.size	KernelMemMalloc, .-KernelMemMalloc
	.align	2
	.global	KernelFlushCache
	.type	KernelFlushCache, %function
KernelFlushCache:
	.fnstart
.LFB1394:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #76	@ tmp138,,
	add	r8, r4, #16	@ tmp164, tmp138,
	mov	lr, #0	@ tmp139,
	mov	r6, r2	@ len, len
	mov	r5, r0	@ ptr, ptr
	str	lr, [r8], #4	@ tmp139, cache_lock
	mov	r0, r4	@, tmp159
	str	lr, [r8], #4	@ tmp139, cache_lock
	movw	r3, #:lower16:-559067475	@ tmp149,
	str	lr, [r8], #4	@ tmp139, cache_lock
	add	r2, r8, #4	@ tmp168, tmp166,
	movt	r3, #:upper16:-559067475	@ tmp149,
	str	lr, [fp, #-76]	@ tmp139, cache_lock
	str	lr, [r2], #4	@ tmp139, cache_lock
	mov	r8, r1	@ phy_addr, phy_addr
	str	lr, [r2, #0]	@ tmp139, cache_lock
	mvn	r1, #0	@ tmp150,
	str	r3, [fp, #-72]	@ tmp149, cache_lock.D.5050.rlock.magic
	movw	r7, #:lower16:.LC2	@ tmp152,
	str	r1, [fp, #-64]	@ tmp150, cache_lock.D.5050.rlock.owner
	movt	r7, #:upper16:.LC2	@ tmp152,
	str	r1, [fp, #-68]	@ tmp150, cache_lock.D.5050.rlock.owner_cpu
	str	r7, [fp, #-48]	@ tmp152, cache_lock.D.5050.rlock.dep_map.name
	bl	_raw_spin_lock_irqsave	@
	movw	ip, #:lower16:cpu_cache	@ tmp154,
	movt	ip, #:upper16:cpu_cache	@ tmp154,
	mov	r1, r6	@, len
	ldr	r2, [ip, #24]	@ cpu_cache.flush_kern_dcache_area, cpu_cache.flush_kern_dcache_area
	mov	r7, r0	@ flags,
	mov	r0, r5	@, ptr
	blx	r2	@ cpu_cache.flush_kern_dcache_area
	movw	r3, #:lower16:outer_cache	@ tmp156,
	movt	r3, #:upper16:outer_cache	@ tmp156,
	ldr	r3, [r3, #8]	@ D.31739, outer_cache.flush_range
	cmp	r3, #0	@ D.31739,
	beq	.L92	@,
	mov	r0, r8	@, phy_addr
	add	r1, r6, r8	@, len,
	blx	r3	@ D.31739
.L92:
	mov	r0, r4	@, tmp159
	mov	r1, r7	@, flags
	bl	_raw_spin_unlock_irqrestore	@
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	KernelFlushCache, .-KernelFlushCache
	.align	2
	.global	klib_flush_cache
	.type	klib_flush_cache, %function
klib_flush_cache:
	.fnstart
.LFB1393:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #76	@ tmp138,,
	add	r8, r4, #16	@ tmp164, tmp138,
	mov	lr, #0	@ tmp139,
	mov	r6, r2	@ len, len
	mov	r5, r0	@ ptr, ptr
	str	lr, [r8], #4	@ tmp139, cache_lock
	mov	r0, r4	@, tmp159
	str	lr, [r8], #4	@ tmp139, cache_lock
	movw	r3, #:lower16:-559067475	@ tmp149,
	str	lr, [r8], #4	@ tmp139, cache_lock
	add	r2, r8, #4	@ tmp168, tmp166,
	movt	r3, #:upper16:-559067475	@ tmp149,
	str	lr, [fp, #-76]	@ tmp139, cache_lock
	str	lr, [r2], #4	@ tmp139, cache_lock
	mov	r8, r1	@ phy_addr, phy_addr
	str	lr, [r2, #0]	@ tmp139, cache_lock
	mvn	r1, #0	@ tmp150,
	str	r3, [fp, #-72]	@ tmp149, cache_lock.D.5050.rlock.magic
	movw	r7, #:lower16:.LC2	@ tmp152,
	str	r1, [fp, #-64]	@ tmp150, cache_lock.D.5050.rlock.owner
	movt	r7, #:upper16:.LC2	@ tmp152,
	str	r1, [fp, #-68]	@ tmp150, cache_lock.D.5050.rlock.owner_cpu
	str	r7, [fp, #-48]	@ tmp152, cache_lock.D.5050.rlock.dep_map.name
	bl	_raw_spin_lock_irqsave	@
	movw	ip, #:lower16:cpu_cache	@ tmp154,
	movt	ip, #:upper16:cpu_cache	@ tmp154,
	mov	r1, r6	@, len
	ldr	r2, [ip, #24]	@ cpu_cache.flush_kern_dcache_area, cpu_cache.flush_kern_dcache_area
	mov	r7, r0	@ flags,
	mov	r0, r5	@, ptr
	blx	r2	@ cpu_cache.flush_kern_dcache_area
	movw	r3, #:lower16:outer_cache	@ tmp156,
	movt	r3, #:upper16:outer_cache	@ tmp156,
	ldr	r3, [r3, #8]	@ D.31750, outer_cache.flush_range
	cmp	r3, #0	@ D.31750,
	beq	.L95	@,
	mov	r0, r8	@, phy_addr
	add	r1, r6, r8	@, len,
	blx	r3	@ D.31750
.L95:
	mov	r0, r4	@, tmp159
	mov	r1, r7	@, flags
	bl	_raw_spin_unlock_irqrestore	@
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	klib_flush_cache, .-klib_flush_cache
	.align	2
	.global	OSAL_SpinUnLockIRQ
	.type	OSAL_SpinUnLockIRQ, %function
OSAL_SpinUnLockIRQ:
	.fnstart
.LFB1378:
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
	ldr	r1, [r0, #40]	@, <variable>.irq_lockflags
	bl	_raw_spin_unlock_irqrestore	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_SpinUnLockIRQ, .-OSAL_SpinUnLockIRQ
	.align	2
	.global	klib_fclose
	.type	klib_fclose, %function
klib_fclose:
	.fnstart
.LFB1390:
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
	cmp	r0, #0	@ filp,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #0	@,
	bl	filp_close	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	klib_fclose, .-klib_fclose
	.align	2
	.global	OSAL_CloseFile
	.type	OSAL_CloseFile, %function
OSAL_CloseFile:
	.fnstart
.LFB1384:
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
	cmp	r0, #0	@ pFile,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, #0	@,
	bl	filp_close	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_CloseFile, .-OSAL_CloseFile
	.align	2
	.global	klib_fopen
	.type	klib_fopen, %function
klib_fopen:
	.fnstart
.LFB1389:
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
	uxth	r2, r2	@, mode
	bl	filp_open	@
	cmn	r0, #4096	@,
	movhi	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	klib_fopen, .-klib_fopen
	.align	2
	.global	OSAL_OpenFile
	.type	OSAL_OpenFile, %function
OSAL_OpenFile:
	.fnstart
.LFB1383:
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
	subs	r1, r2, #0	@ eFileOP, eFileOP
	beq	.L110	@,
	cmp	r1, #1	@ eFileOP,
	moveq	r1, #65	@ flags,
	movne	r1, #66	@ flags,
.L110:
	mov	r2, #420	@,
	bl	filp_open	@
	cmn	r0, #4096	@,
	movhi	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_OpenFile, .-OSAL_OpenFile
	.align	2
	.global	OSAL_SpinLockIRQ
	.type	OSAL_SpinLockIRQ, %function
OSAL_SpinLockIRQ:
	.fnstart
.LFB1377:
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
	ldr	r3, [r0, #44]	@ <variable>.isInit, <variable>.isInit
	mov	r4, r0	@ pIntrMutex, pIntrMutex
	cmp	r3, #0	@ <variable>.isInit,
	bne	.L115	@,
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L117	@,
	movt	r1, #:upper16:.LC3	@,
	bl	__raw_spin_lock_init	@
	mov	r0, #1	@ tmp140,
	str	r0, [r4, #44]	@ tmp140, <variable>.isInit
.L115:
	mov	r0, r4	@, pIntrMutex
	bl	_raw_spin_lock_irqsave	@
	str	r0, [r4, #40]	@, <variable>.irq_lockflags
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L118:
	.align	2
.L117:
	.word	.LANCHOR0+16
	.fnend
	.size	OSAL_SpinLockIRQ, .-OSAL_SpinLockIRQ
	.align	2
	.global	OSAL_InitSpinLock
	.type	OSAL_InitSpinLock, %function
OSAL_InitSpinLock:
	.fnstart
.LFB1374:
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
	ldr	r2, .L121	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	__raw_spin_lock_init	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
.L122:
	.align	2
.L121:
	.word	.LANCHOR0+24
	.fnend
	.size	OSAL_InitSpinLock, .-OSAL_InitSpinLock
	.align	2
	.global	OSAL_SpinUnLock
	.type	OSAL_SpinUnLock, %function
OSAL_SpinUnLock:
	.fnstart
.LFB1376:
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
	bl	_raw_spin_unlock	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_SpinUnLock, .-OSAL_SpinUnLock
	.align	2
	.global	OSAL_SpinLock
	.type	OSAL_SpinLock, %function
OSAL_SpinLock:
	.fnstart
.LFB1375:
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
	ldr	r3, [r0, #44]	@ <variable>.isInit, <variable>.isInit
	mov	r4, r0	@ pIntrMutex, pIntrMutex
	cmp	r3, #0	@ <variable>.isInit,
	bne	.L126	@,
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L128	@,
	movt	r1, #:upper16:.LC3	@,
	bl	__raw_spin_lock_init	@
	mov	r0, #1	@ tmp139,
	str	r0, [r4, #44]	@ tmp139, <variable>.isInit
.L126:
	mov	r0, r4	@, pIntrMutex
	bl	_raw_spin_lock	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L129:
	.align	2
.L128:
	.word	.LANCHOR0+32
	.fnend
	.size	OSAL_SpinLock, .-OSAL_SpinLock
	.align	2
	.global	OSAL_LockIRQ
	.type	OSAL_LockIRQ, %function
OSAL_LockIRQ:
	.fnstart
.LFB1372:
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
	mov	r4, r0	@ pIntrMutex, pIntrMutex
#APP
@ 17 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r5, cpsr	@ arch_local_irq_save	@ aa
	cpsid	i
@ 0 "" 2
	bl	trace_hardirqs_off	@
	str	r5, [r4, #0]	@ aa,* pIntrMutex
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	OSAL_LockIRQ, .-OSAL_LockIRQ
	.align	2
	.global	OSAL_UnLockIRQ
	.type	OSAL_UnLockIRQ, %function
OSAL_UnLockIRQ:
	.fnstart
.LFB1373:
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
	ldr	r3, [r0, #0]	@ D.31135,* pIntrMutex
	mov	r4, r0	@ pIntrMutex, pIntrMutex
	tst	r3, #128	@ D.31135,
	bne	.L136	@,
	bl	trace_hardirqs_on	@
	ldr	r3, [r4, #0]	@ tmp137,* pIntrMutex
#APP
@ 142 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ tmp137
@ 0 "" 2
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L136:
#APP
@ 142 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.31135
@ 0 "" 2
	bl	trace_hardirqs_off	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	OSAL_UnLockIRQ, .-OSAL_UnLockIRQ
	.align	2
	.global	OSAL_CreateTask
	.type	OSAL_CreateTask, %function
OSAL_CreateTask:
	.fnstart
.LFB1362:
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
	mov	r3, r1	@ TaskName, TaskName
	mov	r4, r0	@ pTask, pTask
	mov	r1, #0	@,
	mov	r0, r2	@, pTaskFunction
	mvn	r2, #0	@,
	bl	kthread_create_on_node	@
	cmp	r0, #0	@ D.31039,
	str	r0, [r4, #0]	@ D.31039,* pTask
	beq	.L141	@,
	bl	wake_up_process	@
	mov	r0, #0	@ D.31044,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L141:
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.31044,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	OSAL_CreateTask, .-OSAL_CreateTask
	.align	2
	.global	OSAL_FreeVirMem
	.type	OSAL_FreeVirMem, %function
OSAL_FreeVirMem:
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
	cmp	r0, #0	@ p,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	vfree	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_FreeVirMem, .-OSAL_FreeVirMem
	.align	2
	.global	OSAL_AllocVirMem
	.type	OSAL_AllocVirMem, %function
OSAL_AllocVirMem:
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
	bl	vmalloc	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	OSAL_AllocVirMem, .-OSAL_AllocVirMem
	.align	2
	.global	OSAL_GetTimeInUs
	.type	OSAL_GetTimeInUs, %function
OSAL_GetTimeInUs:
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
	movw	r4, #:lower16:-1924145349	@ tmp137,
	bl	sched_clock	@
	mov	r2, #0	@ tmp138,
	movt	r4, #:upper16:-1924145349	@ tmp137,
	mov	ip, r2	@ __z, tmp138
	movw	r5, #:lower16:-2095944041	@,
	movt	r5, #:upper16:-2095944041	@,
#APP
@ 93 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c" 1
	umull	r6, r7, r4, r0	@, tmp137, u64TimeNow
	cmn	r6, r4	@, tmp137
	adcs	r7, r7, r5	@, tmp137
	adc	r6, r2, #0	@, tmp138
@ 0 "" 2
	mov	r2, r6	@ __res,
	mov	r3, r7	@ __res,
#APP
@ 93 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c" 1
	umlal	r3, r2, r5, r0	@ __res, tmp137, u64TimeNow
	umlal	r3, ip, r4, r1	@ __res, __z, tmp137, u64TimeNow
	mov	r3, #0	@ __res
	adds	r2, ip, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r5, r1	@ __res, tmp137, u64TimeNow
@ 0 "" 2
	mov	r0, r2, lsr #9	@ tmp145, __res,
	orr	r0, r0, r3, asl #23	@,, tmp145, __res,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	OSAL_GetTimeInUs, .-OSAL_GetTimeInUs
	.align	2
	.global	OSAL_GetTimeInMs
	.type	OSAL_GetTimeInMs, %function
OSAL_GetTimeInMs:
	.fnstart
.LFB1358:
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
	movw	r4, #:lower16:-675924773	@ tmp137,
	bl	sched_clock	@
	movt	r4, #:upper16:-675924773	@ tmp137,
	movw	r5, #:lower16:1125899906	@,
	mov	ip, #0	@ __z,
	movt	r5, #:upper16:1125899906	@,
#APP
@ 80 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c" 1
	umull	r2, r3, r4, r0	@ __res, tmp137, u64TimeNow
	mov	r2, #0	@ __res
@ 0 "" 2
@ 80 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c" 1
	umlal	r3, r2, r5, r0	@ __res, tmp137, u64TimeNow
	umlal	r3, ip, r4, r1	@ __res, __z, tmp137, u64TimeNow
	mov	r3, #0	@ __res
	adds	r2, ip, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r5, r1	@ __res, tmp137, u64TimeNow
@ 0 "" 2
	mov	r0, r2, lsr #18	@ tmp144, __res,
	orr	r0, r0, r3, asl #14	@,, tmp144, __res,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	OSAL_GetTimeInMs, .-OSAL_GetTimeInMs
	.align	2
	.global	OSAL_AcrtUsSleep
	.type	OSAL_AcrtUsSleep, %function
OSAL_AcrtUsSleep:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ us, us
	sub	r0, fp, #52	@,,
	mov	r7, sp	@,
	bl	ktime_get	@
	mov	r1, #1000	@ tmp140,
	mul	r4, r1, r5	@ tmp139, tmp140, us
	bic	r6, r7, #8128	@ tmp143,,
	bic	r0, r6, #63	@ tmp143, tmp143,
	ldrd	r6, [fp, #-52]	@ D.30704,,
	mov	r2, #2	@ tmp145,
	ldr	r3, [r0, #12]	@ D.31796, <variable>.task
	adds	r8, r6, r4	@, D.30704, tmp139
	sub	r0, fp, #36	@ tmp146,,
	adc	r9, r7, #0	@, D.30704,
	mov	r4, r8	@ D.30708,
	mov	r5, r9	@ D.30708,
	strd	r4, [r0, #-8]!	@ D.30708, expires.tv64
	str	r2, [r3, #0]	@ tmp145, <variable>.state
#APP
@ 42 "/home/release/HiSTBLinuxV100R002C00SPC011/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/HiS40V200/osal/linux_kernel/vfmw_osal.c" 1
	dmb
@ 0 "" 2
	mov	r1, #0	@,
	bl	schedule_hrtimeout	@
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
	.fnend
	.size	OSAL_AcrtUsSleep, .-OSAL_AcrtUsSleep
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_SEM_UP, %object
	.size	__kstrtab_SEM_UP, 7
__kstrtab_SEM_UP:
	.ascii	"SEM_UP\000"
	.type	__kstrtab_SEM_DOWN, %object
	.size	__kstrtab_SEM_DOWN, 9
__kstrtab_SEM_DOWN:
	.ascii	"SEM_DOWN\000"
	.type	__kstrtab_SEM_INIT, %object
	.size	__kstrtab_SEM_INIT, 9
__kstrtab_SEM_INIT:
	.ascii	"SEM_INIT\000"
	.section	___ksymtab+SEM_UP,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_UP, %object
	.size	__ksymtab_SEM_UP, 8
__ksymtab_SEM_UP:
@ value:
	.word	SEM_UP
@ name:
	.word	__kstrtab_SEM_UP
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"&(pSem->queue_head)\000"
.LC1:
	.ascii	"&(pEvent->queue_head)\000"
	.space	2
.LC2:
	.ascii	"cache_lock\000"
	.space	1
.LC3:
	.ascii	"&(&pIntrMutex->irq_lock)->rlock\000"
.LC4:
	.ascii	"can not create thread!\012\000"
	.section	___ksymtab+SEM_DOWN,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_DOWN, %object
	.size	__ksymtab_SEM_DOWN, 8
__ksymtab_SEM_DOWN:
@ value:
	.word	SEM_DOWN
@ name:
	.word	__kstrtab_SEM_DOWN
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	__key.31491, %object
	.size	__key.31491, 8
__key.31491:
	.space	8
	.type	__key.31057, %object
	.size	__key.31057, 8
__key.31057:
	.space	8
	.type	__key.31166, %object
	.size	__key.31166, 8
__key.31166:
	.space	8
	.type	__key.31144, %object
	.size	__key.31144, 8
__key.31144:
	.space	8
	.type	__key.31151, %object
	.size	__key.31151, 8
__key.31151:
	.space	8
	.section	___ksymtab+SEM_INIT,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_INIT, %object
	.size	__ksymtab_SEM_INIT, 8
__ksymtab_SEM_INIT:
@ value:
	.word	SEM_INIT
@ name:
	.word	__kstrtab_SEM_INIT
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
