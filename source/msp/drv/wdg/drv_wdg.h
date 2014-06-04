
#ifndef __DRV_WDG_H__
#define __DRV_WDG_H__

#ifdef __KERNEL__

#ifdef CONFIG_WATCHDOG_NOWAYOUT
#define WATCHDOG_NOWAYOUT	1
#else
#define WATCHDOG_NOWAYOUT	0
#endif

#endif	/* __KERNEL__ */


#endif


