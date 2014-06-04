/*    
 *
 *
 * This file declares functions for user.
 *
 * History:
 *     2013-01-07 create this file
 *
 */

#ifndef __HI_DRV_SCI_H__
#define __HI_DRV_SCI_H__

#include "hi_debug.h"

#define HI_FATAL_SCI(fmt...) \
    HI_FATAL_PRINT(HI_ID_SCI, fmt)

#define HI_ERR_SCI(fmt...) \
    HI_ERR_PRINT(HI_ID_SCI, fmt)

#define HI_WARN_SCI(fmt...) \
    HI_WARN_PRINT(HI_ID_SCI, fmt)

#define HI_INFO_SCI(fmt...) \
    HI_INFO_PRINT(HI_ID_SCI, fmt)

#if    defined (CHIP_TYPE_hi3716h)  \
    || defined (CHIP_TYPE_hi3716c)  \
    || defined (CHIP_TYPE_hi3716cv200es)    \
    || defined (CHIP_TYPE_hi3716cv200)    \
    || defined (CHIP_TYPE_hi3719cv100) \
    || defined (CHIP_TYPE_hi3718cv100)  \
	|| defined (CHIP_TYPE_hi3719mv100) \
	|| defined (CHIP_TYPE_hi3719mv100_a) \
	|| defined (CHIP_TYPE_hi3718mv100) \
	|| defined (CHIP_TYPE_hi3716m)
 #define HI_SCI_PORT_NUM (2)
#elif defined (CHIP_TYPE_hi3712)
 #define HI_SCI_PORT_NUM (1)
#else
 #error YOU MUST DEFINE  CHIP_TYPE!
#endif
  
#endif
