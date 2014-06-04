#ifndef __S40V200_CFG_H__
#define __S40V200_CFG_H__

#ifdef __cplusplus
extern "C" {
#endif

#define S40V200_VMIN_TEST

#define GPU_PMU_HISI

#define GPU_DVFS_ENABLE

#ifndef CHIP_TYPE_hi3716cv200es
#define GPU_AVS_SUPPORT
#define GPU_NO_AVS_PROFILE  5   /* 250MHz */
#endif

#ifdef __cplusplus
}
#endif
#endif


