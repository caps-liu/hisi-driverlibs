#include <linux/linkage.h>
//#include <linux/autoconf.h>
#include <linux/init.h>
#include <asm/assembler.h>
#include <asm/pgtable.h>
//#include <asm/procinfo.h>

#include <asm/page.h>
#include <asm/ptrace.h>
#include <asm/asm-offsets.h>
#include <asm/thread_info.h>

ENTRY(mmz_flush_dcache_all)
        mov     ip, #0
__flush_whole_cache:
#ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
        mcr     p15, 0, ip, c7, c6, 0           @ invalidate D cache
#else
1:      mrc     p15, 0, r15, c7, c14, 3         @ test,clean,invalidate
        bne     1b
#endif
        mcr   p15, 0, ip, c7, c10, 4          @ drain WB
        mov     pc, lr


