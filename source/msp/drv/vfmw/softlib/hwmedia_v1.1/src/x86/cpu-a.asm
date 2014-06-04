;*******************************************************************************
;Copyright (C), 2009-2012, Huawei Tech. Co., Ltd.
;File name: cpu-a.asm
;Author & ID: 宋小刚+00133955
;Version: 1.00
;Date:  2010-2-20
;Description: 本文件包括了获取处理器cpuid指令的相关函数
;Function List:
;1. imedia_cpu_cpuid 
;History:
;1、20100220 编码完成 宋小刚+00133955
;2、xxx
;3、xxx
;*******************************************************************************

%include "x86inc.asm"

SECTION .text

%ifdef ARCH_X86_64

;-----------------------------------------------------------------------------
; int imedia_cpu_cpuid( int op, int *eax, int *ebx, int *ecx, int *edx )
;-----------------------------------------------------------------------------
cglobal imedia_cpu_cpuid, 5,7
    push    rbx
    mov     r11,   r1
    mov     r10,   r2
    movifnidn r9,  r3
    movifnidn r8,  r4
    mov     eax,   r0d
    cpuid
    mov     [r11], eax
    mov     [r10], ebx
    mov     [r9],  ecx
    mov     [r8],  edx
    pop     rbx
    RET

%else

;-----------------------------------------------------------------------------
; int imedia_cpu_cpuid_test( void )
; return 0 if unsupported
;-----------------------------------------------------------------------------
cglobal imedia_cpu_cpuid_test
    pushfd
    push    ebx
    push    ebp
    push    esi
    push    edi
    pushfd
    pop     eax
    mov     ebx, eax
    xor     eax, 0x200000
    push    eax
    popfd
    pushfd
    pop     eax
    xor     eax, ebx
    pop     edi
    pop     esi
    pop     ebp
    pop     ebx
    popfd
    ret

;-----------------------------------------------------------------------------
; int imedia_cpu_cpuid( int op, int *eax, int *ebx, int *ecx, int *edx )
;-----------------------------------------------------------------------------
cglobal imedia_cpu_cpuid, 0,6
    mov     eax,    r0m
    cpuid
    mov     esi,    r1m
    mov     [esi],  eax
    mov     esi,    r2m
    mov     [esi],  ebx
    mov     esi,    r3m
    mov     [esi],  ecx
    mov     esi,    r4m
    mov     [esi],  edx
    RET

;-----------------------------------------------------------------------------
; void imedia_stack_align( void (*func)(void*), void *arg );
;-----------------------------------------------------------------------------
cglobal imedia_stack_align
    push ebp
    mov  ebp, esp
    sub  esp, 4
    and  esp, ~15
    mov  ecx, [ebp+8]
    mov  edx, [ebp+12]
    mov  [esp], edx
    call ecx
    leave
    ret

%endif

;-----------------------------------------------------------------------------
; void imedia_emms( void )
;-----------------------------------------------------------------------------
cglobal imedia_emms
    emms
    ret

;-----------------------------------------------------------------------------
; void imedia_cpu_mask_misalign_sse(void)
;-----------------------------------------------------------------------------
cglobal imedia_cpu_mask_misalign_sse
    sub   rsp, 4
    stmxcsr [rsp]
    or dword [rsp], 1<<17
    ldmxcsr [rsp]
    add   rsp, 4
    ret
