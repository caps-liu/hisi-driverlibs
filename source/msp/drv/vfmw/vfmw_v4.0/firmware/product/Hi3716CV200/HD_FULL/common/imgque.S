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
	.file	"imgque.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(imgque)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.imgque.o.d
@ /home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/imgque.c
@ -mlittle-endian -marm -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/imgque.o -O2 -Wall -Wundef
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
	.global	LockImgQue
	.type	LockImgQue, %function
LockImgQue:
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
#APP
@ 17 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ lock
	cpsid	i
@ 0 "" 2
	str	r3, [r0, #360]	@ lock, <variable>.queue_mutex
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LockImgQue, .-LockImgQue
	.align	2
	.global	UnLockImgQue
	.type	UnLockImgQue, %function
UnLockImgQue:
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
	ldr	r3, [r0, #360]	@ lock, <variable>.queue_mutex
#APP
@ 142 "/home/x57522/X5HD/04.Locals/STBLinuxV1R2/Build/HiSTBLinuxV100R002C00SPC020/source/kernel/linux-3.4.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ lock
@ 0 "" 2
	str	r3, [r0, #360]	@ lock, <variable>.queue_mutex
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UnLockImgQue, .-UnLockImgQue
	.align	2
	.global	IMGQUE_GetLastImageID
	.type	IMGQUE_GetLastImageID, %function
IMGQUE_GetLastImageID:
	.fnstart
.LFB1367:
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
	ldr	r0, [r0, #364]	@ D.30746, <variable>.last_image_id_plus2
	cmp	r0, #1	@ D.30746,
	mvnls	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.align	2
	.global	IMGQUE_DeleteField
	.type	IMGQUE_DeleteField, %function
IMGQUE_DeleteField:
	.fnstart
.LFB1364:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pImageQueue,
	cmpne	r3, #0	@, pFieldAddr,
	mov	r9, r3	@ pFieldAddr, pFieldAddr
	mov	r5, r0	@ pImageQueue, pImageQueue
	movne	r3, #0	@, tmp157
	moveq	r3, #1	@, tmp157
	mov	sl, r1	@ ImageID, ImageID
	str	r2, [fp, #-48]	@ IsTopField, %sfp
	mvneq	r0, #1	@ D.30667,
	beq	.L13	@,
	str	r3, [r9, #0]	@ tmp157,* pFieldAddr
	ldr	r4, [r5, #344]	@ i, <variable>.history
.L34:
	ldr	r2, [r5, #348]	@ <variable>.head, <variable>.head
.L33:
	and	r4, r4, #63	@ i.532, i,
	cmp	r2, r4	@ <variable>.head, i.532
	beq	.L14	@,
.L37:
	add	r6, r4, #20	@ tmp215, i.532,
	ldr	r3, [r5, r6, asl #2]	@ D.30671, <variable>.image_ptr
	cmp	r3, #0	@ D.30671,
	beq	.L15	@,
	ldr	r1, [r3, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	sl, r1	@ ImageID, <variable>.image_id
	beq	.L36	@,
.L16:
	add	r4, r4, #1	@ prephitmp.519, i.532,
	and	r4, r4, #63	@ i.532, i,
	cmp	r2, r4	@ <variable>.head, i.532
	bne	.L37	@,
.L14:
	mov	r0, #1	@ D.30667,
.L13:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L36:
	ldr	r0, [fp, #-48]	@, %sfp
	cmp	r0, #1	@,
	beq	.L38	@,
	add	r7, r4, r5	@ tmp214, i.532, pImageQueue
	ldrb	r1, [r7, #16]	@ zero_extendqisi2	@ prephitmp.520, <variable>.ImageValid
	tst	r1, #2	@ prephitmp.520,
	beq	.L18	@,
	ldr	r1, [r3, #96]	@ <variable>.btm_luma_phy_addr, <variable>.btm_luma_phy_addr
	str	r1, [r9, #0]	@ <variable>.btm_luma_phy_addr,* pFieldAddr
	ldr	r2, [r5, #348]	@ <variable>.head, <variable>.head
	ldrb	ip, [r7, #16]	@ zero_extendqisi2	@ tmp185, <variable>.ImageValid
	and	r1, ip, #253	@ prephitmp.520, tmp185,
	strb	r1, [r7, #16]	@ prephitmp.520, <variable>.ImageValid
.L18:
	cmp	r1, #0	@ prephitmp.520,
	bne	.L16	@,
	ldr	r8, [r5, r6, asl #2]	@ tmp191, <variable>.image_ptr
	ldr	ip, [r8, #176]	@ prephitmp.517, <variable>.image_id
	mov	r8, ip	@ DelImageID, prephitmp.517
.L19:
	ldr	r3, [r5, #344]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	str	r2, [sp, #0]	@ <variable>.head,
	movw	r1, #:lower16:.LC0	@,
	ldr	lr, [r5, #352]	@ <variable>.tail, <variable>.tail
	movt	r1, #:upper16:.LC0	@,
	mov	r2, r5	@, pImageQueue
	str	ip, [sp, #8]	@ prephitmp.517,
	str	lr, [sp, #4]	@ <variable>.tail,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #344]	@ i.538, <variable>.history
.L25:
	cmp	r4, #0	@ i.532,
	sub	r1, r4, #1	@ j, i.532,
	moveq	r1, #63	@ j,
	add	r2, r1, #20	@ tmp193, j,
	add	r3, r1, r5	@ tmp199, j, pImageQueue
	cmp	ip, r4	@ i.538, i.532
	ldr	r0, [r5, r2, asl #2]	@ tmp194, <variable>.image_ptr
	mov	r4, r1	@ i.532, j
	ldrb	r1, [r3, #16]	@ zero_extendqisi2	@ tmp201, <variable>.ImageValid
	str	r0, [r5, r6, asl #2]	@ tmp194, <variable>.image_ptr
	mov	r6, r2	@ tmp215, tmp193
	strb	r1, [r7, #16]	@ tmp201, <variable>.ImageValid
	mov	r7, r3	@ tmp214, tmp199
	bne	.L25	@,
	add	r4, ip, #1	@ prephitmp.519, i.538,
	cmp	r8, #0	@ DelImageID,
	mov	r1, r4, asr #31	@ tmp203, prephitmp.519,
	mov	r3, r1, lsr #26	@ tmp204, tmp203,
	add	r0, r4, r3	@ tmp205, prephitmp.519, tmp204
	and	r2, r0, #63	@ tmp206, tmp205,
	rsb	ip, r3, r2	@ tmp207, tmp204, tmp206
	str	ip, [r5, #344]	@ tmp207, <variable>.history
	blt	.L34	@,
	ldr	r3, [r5, #368]	@ D.30714, <variable>.DelImageProc
	cmp	r3, #0	@ D.30714,
	beq	.L34	@,
	mov	r1, r8	@, DelImageID
	mov	r0, r5	@, pImageQueue
	blx	r3	@ D.30714
	ldr	r2, [r5, #348]	@ <variable>.head, <variable>.head
	b	.L33	@
.L15:
	ldr	ip, [r3, #176]	@ prephitmp.517, <variable>.image_id
	add	r7, r4, r5	@ tmp214, i.532, pImageQueue
	mvn	r8, #0	@ DelImageID,
	b	.L19	@
.L38:
	add	r7, r4, r5	@ tmp214, i.532, pImageQueue
	ldrb	r1, [r7, #16]	@ zero_extendqisi2	@ prephitmp.520, <variable>.ImageValid
	tst	r1, #1	@ prephitmp.520,
	beq	.L18	@,
	ldr	r2, [r3, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r2, [r9, #0]	@ <variable>.top_luma_phy_addr,* pFieldAddr
	ldrb	r3, [r7, #16]	@ zero_extendqisi2	@ tmp171, <variable>.ImageValid
	ldr	r2, [r5, #348]	@ <variable>.head, <variable>.head
	and	r1, r3, #254	@ prephitmp.520, tmp171,
	strb	r1, [r7, #16]	@ prephitmp.520, <variable>.ImageValid
	b	.L18	@
	.fnend
	.size	IMGQUE_DeleteField, .-IMGQUE_DeleteField
	.align	2
	.global	print_que
	.type	print_que, %function
print_que:
	.fnstart
.LFB1356:
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
	movw	r1, #:lower16:.LC1	@,
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r2, r0	@, pImageQueue
	movt	r1, #:upper16:.LC1	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #336]	@, <variable>.max_queue_size
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #340]	@, <variable>.queue_size
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #344]	@, <variable>.history
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #348]	@, <variable>.head
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #352]	@, <variable>.tail
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #344]	@ i.567, <variable>.history
	ldr	r1, [r4, #352]	@ <variable>.tail, <variable>.tail
	mov	ip, r2, asr #31	@ tmp151, i.567,
	mov	r3, ip, lsr #26	@ tmp152, tmp151,
	add	r0, r2, r3	@ tmp153, i.567, tmp152
	and	r5, r0, #63	@ tmp154, tmp153,
	rsb	r5, r3, r5	@ i, tmp152, tmp154
	cmp	r1, r5	@ <variable>.tail, i
	bne	.L44	@,
	b	.L40	@
.L41:
	add	r3, r5, #20	@ tmp159, i,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	ldr	lr, [r4, r3, asl #2]	@ tmp160, <variable>.image_ptr
	ldr	r2, [lr, #176]	@, <variable>.image_id
	bl	dprint_vfmw	@
	add	r2, r5, #1	@ i.570, i,
	ldr	r1, [r4, #352]	@ <variable>.tail, <variable>.tail
	mov	ip, r2, asr #31	@ tmp162, i.570,
	mov	r3, ip, lsr #26	@ tmp163, tmp162,
	add	r0, r2, r3	@ tmp164, i.570, tmp163
	and	r5, r0, #63	@ tmp165, tmp164,
	rsb	r5, r3, r5	@ i, tmp163, tmp165
	cmp	r1, r5	@ <variable>.tail, i
	beq	.L40	@,
.L44:
	ldr	lr, [r4, #348]	@ <variable>.head, <variable>.head
	cmp	lr, r5	@ <variable>.head, i
	bne	.L41	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	b	.L41	@
.L40:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #356]	@, <variable>.ResetCount
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r3, r4	@, pImageQueue
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC12	@,
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@, <variable>.DelImageProc
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC14	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	print_que, .-print_que
	.align	2
	.global	IMGQUE_DeleteImage
	.type	IMGQUE_DeleteImage, %function
IMGQUE_DeleteImage:
	.fnstart
.LFB1363:
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
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ ImageID, ImageID
	mov	r7, r2	@ pDelTopAddr, pDelTopAddr
	mov	r6, r3	@ pDelBtmAddr, pDelBtmAddr
	mvneq	r0, #1	@ D.30644,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [r4, #356]	@ <variable>.ResetCount, <variable>.ResetCount
	mov	r3, r7	@, pDelTopAddr
	mov	r2, #1	@,
	rsb	r5, r1, r5	@ ActualLogicImageID, <variable>.ResetCount, ImageID
	mov	r0, r4	@, pImageQueue
	mov	r1, r5	@, ActualLogicImageID
	bl	IMGQUE_DeleteField	@
	mov	r1, r5	@, ActualLogicImageID
	mov	r3, r6	@, pDelBtmAddr
	mov	r2, #0	@,
	mov	r0, r4	@, pImageQueue
	bl	IMGQUE_DeleteField	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30644,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	IMGQUE_DeleteImage, .-IMGQUE_DeleteImage
	.align	2
	.global	IMGQUE_ReturnImage
	.type	IMGQUE_ReturnImage, %function
IMGQUE_ReturnImage:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r5, r0	@ pImageQueue, pImageQueue
	mov	r0, r4	@, tmp135
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r5, #348]	@ <variable>.head, <variable>.head
	mov	r0, r4	@, tmp135
	sub	r1, r2, #1	@ tmp136, <variable>.head,
	and	r3, r1, #63	@ tmp138, tmp136,
	str	r3, [r5, #348]	@ tmp138, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	IMGQUE_ReturnImage, .-IMGQUE_ReturnImage
	.align	2
	.global	IMGQUE_GetImageNum
	.type	IMGQUE_GetImageNum, %function
IMGQUE_GetImageNum:
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
	mov	r4, r0	@ pImageQueue, pImageQueue
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	mov	r5, r1	@ pReadImgNum, pReadImgNum
	mov	r6, r2	@ pNewImgNum, pNewImgNum
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #348]	@ D.30589, <variable>.head
	ldr	ip, [r4, #344]	@ D.30590, <variable>.history
	ldr	r0, [r4, #352]	@ D.30598, <variable>.tail
	cmp	r2, ip	@ D.30589, D.30590
	addlt	r1, r2, #64	@ tmp142, D.30589,
	rsbge	r1, ip, r2	@ ReadNum, D.30590, D.30589
	rsblt	r1, ip, r1	@ ReadNum, D.30590, tmp142
	cmp	r2, r0	@ D.30589, D.30598
	addgt	r0, r0, #64	@ tmp143, D.30598,
	str	r1, [r5, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r2, r0	@ NewNum, D.30589, tmp143
	movw	r0, #:lower16:.LANCHOR0	@,
	str	r3, [r6, #0]	@ NewNum,* pNewImgNum
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	IMGQUE_GetImageNum, .-IMGQUE_GetImageNum
	.align	2
	.global	IMGQUE_InsertImage
	.type	IMGQUE_InsertImage, %function
IMGQUE_InsertImage:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
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
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, p_image,
	mov	r5, r1	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	bne	.L60	@,
.L66:
	mvn	r0, #1	@ D.30559,
.L61:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L60:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [r4, #352]	@ D.30561, <variable>.tail
	ldr	r0, [r4, #348]	@ D.30562, <variable>.head
	ldr	r3, [r4, #336]	@ <variable>.max_queue_size, <variable>.max_queue_size
	cmp	r1, r0	@ D.30561, D.30562
	addlt	r2, r1, #64	@ tmp149, D.30561,
	rsbge	r2, r0, r1	@ queue_size, D.30562, D.30561
	rsblt	r2, r0, r2	@ queue_size, D.30562, tmp149
	cmp	r2, r3	@ queue_size, <variable>.max_queue_size
	bge	.L67	@,
	ldr	r3, [r4, #344]	@ <variable>.history, <variable>.history
	mov	r2, r4	@, pImageQueue
	str	r0, [sp, #0]	@ D.30562,
	mov	r0, #12	@,
	str	r1, [sp, #4]	@ D.30561,
	movw	r1, #:lower16:.LC17	@,
	ldr	lr, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC17	@,
	str	lr, [sp, #8]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #352]	@ <variable>.tail, <variable>.tail
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	ip, [r5, #140]	@ <variable>.format, <variable>.format
	movt	r0, #:upper16:.LANCHOR0	@,
	add	r2, r3, #20	@ tmp158, <variable>.tail,
	add	r1, r4, r3	@ tmp162, pImageQueue, <variable>.tail
	add	r3, r3, #1	@ tmp165, <variable>.tail,
	ubfx	ip, ip, #10, #2	@ FieldValidFlag, <variable>.format,,
	str	r5, [r4, r2, asl #2]	@ p_image, <variable>.image_ptr
	strb	ip, [r1, #16]	@ FieldValidFlag, <variable>.ImageValid
	and	ip, r3, #63	@ tmp167, tmp165,
	str	ip, [r4, #352]	@ tmp167, <variable>.tail
	ldr	r2, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	add	r1, r2, #2	@ tmp169, <variable>.image_id,
	str	r1, [r4, #364]	@ tmp169, <variable>.last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30559,
	b	.L61	@
.L67:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L66	@
	.fnend
	.size	IMGQUE_InsertImage, .-IMGQUE_InsertImage
	.align	2
	.global	IMGQUE_ResetQueue
	.type	IMGQUE_ResetQueue, %function
IMGQUE_ResetQueue:
	.fnstart
.LFB1358:
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
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.30538,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	ldrsb	r1, [r4, #0]	@ <variable>.queue_name, <variable>.queue_name
	mov	r3, #0	@ tmp138,
	ldr	ip, [r4, #356]	@ <variable>.ResetCount, <variable>.ResetCount
	cmp	r1, r3	@ <variable>.queue_name,
	mov	r2, #64	@ tmp137,
	add	r0, ip, #100	@ tmp143, <variable>.ResetCount,
	str	r3, [r4, #352]	@ tmp138, <variable>.tail
	str	r0, [r4, #356]	@ tmp143, <variable>.ResetCount
	str	r3, [r4, #340]	@ tmp138, <variable>.queue_size
	str	r2, [r4, #336]	@ tmp137, <variable>.max_queue_size
	str	r3, [r4, #344]	@ tmp138, <variable>.history
	str	r3, [r4, #348]	@ tmp138, <variable>.head
	beq	.L71	@,
	ldrsb	lr, [r4, #1]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r3, [r4, #2]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r2, [r4, #3]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r0, [r4, #4]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	ip, [r4, #5]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r1, [r4, #6]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	lr, [r4, #7]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r3, [r4, #8]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r2, [r4, #9]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r0, [r4, #10]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	ip, [r4, #11]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r1, [r4, #12]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	lr, [r4, #13]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r3, [r4, #14]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L71	@,
	ldrsb	r2, [r4, #15]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	movne	r2, #0	@ tmp160,
	strneb	r2, [r4, #0]	@ tmp160, <variable>.queue_name
.L71:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30538,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	IMGQUE_ResetQueue, .-IMGQUE_ResetQueue
	.align	2
	.global	IMGQUE_GetImage
	.type	IMGQUE_GetImage, %function
IMGQUE_GetImage:
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
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r5, r1, #0	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.30613,
	bne	.L78	@,
.L75:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L78:
	ldr	r2, [r4, #348]	@ <variable>.head, <variable>.head
	ldr	r3, [r4, #352]	@ <variable>.tail, <variable>.tail
	cmp	r2, r3	@ <variable>.head, <variable>.tail
	mvneq	r0, #2	@ D.30613,
	beq	.L75	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	ip, [r4, #348]	@ <variable>.head, <variable>.head
	mov	r2, #456	@,
	mov	r0, r5	@, p_image
	add	r3, ip, #20	@ tmp140, <variable>.head,
	ldr	r1, [r4, r3, asl #2]	@, <variable>.image_ptr
	bl	memcpy	@
	ldr	r1, [r4, #348]	@ <variable>.head, <variable>.head
	ldr	ip, [r4, #352]	@ <variable>.tail, <variable>.tail
	mov	r2, r4	@, pImageQueue
	ldr	r3, [r4, #344]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	str	r1, [sp, #0]	@ <variable>.head,
	movw	r1, #:lower16:.LC18	@,
	str	ip, [sp, #4]	@ <variable>.tail,
	movt	r1, #:upper16:.LC18	@,
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #8]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r1, [r4, #356]	@ <variable>.ResetCount, <variable>.ResetCount
	movt	r0, #:upper16:.LANCHOR0	@,
	add	r3, ip, r1	@ tmp154, <variable>.image_id, <variable>.ResetCount
	str	r3, [r5, #176]	@ tmp154, <variable>.image_id
	ldr	r2, [r4, #348]	@ <variable>.head, <variable>.head
	add	ip, r2, #1	@ tmp155, <variable>.head,
	and	r1, ip, #63	@ tmp157, tmp155,
	str	r1, [r4, #348]	@ tmp157, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30613,
	b	.L75	@
	.fnend
	.size	IMGQUE_GetImage, .-IMGQUE_GetImage
	.align	2
	.global	IMGQUE_InitQueue
	.type	IMGQUE_InitQueue, %function
IMGQUE_InitQueue:
	.fnstart
.LFB1357:
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
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, QueueName,
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ QueueName, QueueName
	mov	r6, r2	@ DelImageProc, DelImageProc
	mvneq	r0, #1	@ D.30518,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pImageQueue
	mov	r1, #372	@,
	bl	__memzero	@
	mov	r3, #64	@ tmp162,
	str	r6, [r4, #368]	@ DelImageProc, <variable>.DelImageProc
	str	r3, [r4, #336]	@ tmp162, <variable>.max_queue_size
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.762,* QueueName
	cmp	r3, #0	@ temp.762,
	beq	.L83	@,
	strb	r3, [r4, #0]	@ temp.762, <variable>.queue_name
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ temp.764,
	cmp	r3, #0	@ temp.764,
	moveq	r3, #1	@ i,
	beq	.L83	@,
	strb	r3, [r4, #1]	@ temp.764, <variable>.queue_name
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ temp.766,
	cmp	r3, #0	@ temp.766,
	moveq	r3, #2	@ i,
	beq	.L83	@,
	strb	r3, [r4, #2]	@ temp.766, <variable>.queue_name
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.768,
	cmp	r3, #0	@ temp.768,
	moveq	r3, #3	@ i,
	beq	.L83	@,
	strb	r3, [r4, #3]	@ temp.768, <variable>.queue_name
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ temp.770,
	cmp	r3, #0	@ temp.770,
	moveq	r3, #4	@ i,
	beq	.L83	@,
	strb	r3, [r4, #4]	@ temp.770, <variable>.queue_name
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ temp.772,
	cmp	r3, #0	@ temp.772,
	moveq	r3, #5	@ i,
	beq	.L83	@,
	strb	r3, [r4, #5]	@ temp.772, <variable>.queue_name
	ldrb	r3, [r5, #6]	@ zero_extendqisi2	@ temp.774,
	cmp	r3, #0	@ temp.774,
	moveq	r3, #6	@ i,
	beq	.L83	@,
	strb	r3, [r4, #6]	@ temp.774, <variable>.queue_name
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ temp.776,
	cmp	r3, #0	@ temp.776,
	moveq	r3, #7	@ i,
	beq	.L83	@,
	strb	r3, [r4, #7]	@ temp.776, <variable>.queue_name
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.778,
	cmp	r3, #0	@ temp.778,
	moveq	r3, #8	@ i,
	beq	.L83	@,
	strb	r3, [r4, #8]	@ temp.778, <variable>.queue_name
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ temp.780,
	cmp	r3, #0	@ temp.780,
	moveq	r3, #9	@ i,
	beq	.L83	@,
	strb	r3, [r4, #9]	@ temp.780, <variable>.queue_name
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ temp.782,
	cmp	r3, #0	@ temp.782,
	moveq	r3, #10	@ i,
	beq	.L83	@,
	strb	r3, [r4, #10]	@ temp.782, <variable>.queue_name
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ temp.784,
	cmp	r3, #0	@ temp.784,
	moveq	r3, #11	@ i,
	beq	.L83	@,
	strb	r3, [r4, #11]	@ temp.784, <variable>.queue_name
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ temp.786,
	cmp	r3, #0	@ temp.786,
	moveq	r3, #12	@ i,
	beq	.L83	@,
	strb	r3, [r4, #12]	@ temp.786, <variable>.queue_name
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ temp.788,
	cmp	r3, #0	@ temp.788,
	moveq	r3, #13	@ i,
	beq	.L83	@,
	strb	r3, [r4, #13]	@ temp.788, <variable>.queue_name
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ D.30527,
	cmp	r3, #0	@ D.30527,
	strneb	r3, [r4, #14]	@ D.30527, <variable>.queue_name
	moveq	r3, #14	@ i,
	movne	r3, #15	@ i,
.L83:
	mov	r2, #0	@ tmp178,
	movw	r0, #:lower16:.LANCHOR0	@,
	strb	r2, [r4, r3]	@ tmp178, <variable>.queue_name
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30518,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	IMGQUE_InitQueue, .-IMGQUE_InitQueue
	.global	g_SpinLockIsr_Image2D
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s=(%02d,%02d,%02d) x F%d\012\000"
	.space	1
.LC1:
	.ascii	"----------------------  img que (%p) --------------"
	.ascii	"---------\012\000"
	.space	2
.LC2:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC3:
	.ascii	"max_queue_size\000"
	.space	1
.LC4:
	.ascii	"queue_size\000"
	.space	1
.LC5:
	.ascii	"history\000"
.LC6:
	.ascii	"head\000"
	.space	3
.LC7:
	.ascii	"tail\000"
	.space	3
.LC8:
	.ascii	"%d \000"
.LC9:
	.ascii	" | \000"
.LC10:
	.ascii	"\012\000"
	.space	2
.LC11:
	.ascii	"ResetCount\000"
	.space	1
.LC12:
	.ascii	"%-25s :%s\012\000"
	.space	1
.LC13:
	.ascii	"queue_name\000"
	.space	1
.LC14:
	.ascii	"%-25s :%p\012\000"
	.space	1
.LC15:
	.ascii	"DelImageProc\000"
	.space	3
.LC16:
	.ascii	"IMGQUE_InsertImage but the queue is full!!!\012\000"
	.space	3
.LC17:
	.ascii	"%s=(%02d,%02d,%02d) + F%d\012\000"
	.space	1
.LC18:
	.ascii	"%s=(%02d,%02d,%02d) - F%d\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLockIsr_Image2D, %object
	.size	g_SpinLockIsr_Image2D, 12
g_SpinLockIsr_Image2D:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
