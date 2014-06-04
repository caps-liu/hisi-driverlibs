#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <errno.h>
#include <linux/types.h>

#include "hi_debug.h"
#include "hi_jpge_api.h"
#include "hi_jpge_ioctl.h"
#include "hi_jpge_errcode.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif  /* __cplusplus */
#endif  /* __cplusplus */

#define JPGE_CHECK_FD() \
    do {                                         \
        if (-1 == g_s32JPGEFd)                    \
        {                                        \
            return HI_ERR_JPGE_DEV_NOT_OPEN;      \
        }                                        \
    } while (0)

static const char *g_pszJPGEDevName = "/dev/hi_jpge";

static HI_S32 g_s32JPGEFd = -1;              /* jpge device handle */

static HI_S32 g_s32JPGERef = 0;

static const HI_U8 s_szJPGEVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

HI_S32 HI_JPGE_Open(HI_VOID)
{
    if (-1 != g_s32JPGEFd)
    {
        g_s32JPGERef++;
        return HI_SUCCESS;
    }

    g_s32JPGEFd = open(g_pszJPGEDevName, O_RDWR, 0);
    if (-1 == g_s32JPGEFd)
    {
        return HI_ERR_JPGE_DEV_OPEN_FAILED;
    }
    g_s32JPGERef++;
    return HI_SUCCESS;
}

HI_VOID HI_JPGE_Close(HI_VOID)
{
    if (-1 == g_s32JPGEFd)
    {
        return;
    }
    g_s32JPGERef--;
    
    if(g_s32JPGERef > 0)
    {
        return ;
    }
    else
    {
        g_s32JPGERef = 0;
    }
    
    close(g_s32JPGEFd);

    g_s32JPGEFd = -1;

    return;
}
HI_S32  HI_JPGE_Create( HI_U32 *pEncHandle, const Jpge_EncCfg_S *pEncCfg )
{
    HI_S32 ret;
    Jpge_EncCfgInfo_S stEncCgf = {0};

    JPGE_CHECK_FD();
    if ((NULL == pEncHandle) || (NULL == pEncCfg))
    {
        return HI_ERR_JPGE_NULL_PTR;
    }
    stEncCgf.pEncHandle = (JPGE_HANDLE*)pEncHandle;
    memcpy(&stEncCgf.EncCfg , pEncCfg,sizeof(Jpge_EncCfg_S));
    ret = ioctl(g_s32JPGEFd, JPGE_CREATE_CMD, &stEncCgf);
    *pEncHandle = (HI_U32)*stEncCgf.pEncHandle;
    return ret;
}

HI_S32      HI_JPGE_Encode( HI_U32 EncHandle, const Jpge_EncIn_S *pEncIn, Jpge_EncOut_S *pEncOut )
{
    HI_S32 ret;
    Jpge_EncInfo_S stEncInfo = {0};

    JPGE_CHECK_FD();
    if ((NULL == pEncIn) || (NULL == pEncOut))
    {
        return HI_ERR_JPGE_NULL_PTR;
    }
    stEncInfo.EncHandle = (JPGE_HANDLE)EncHandle;
    
    memcpy(&stEncInfo.EncIn , pEncIn,sizeof(Jpge_EncIn_S));
    
    ret = ioctl(g_s32JPGEFd, JPGE_ENCODE_CMD, &stEncInfo);
    memcpy( pEncOut,&stEncInfo.EncOut ,sizeof(Jpge_EncOut_S));
    return ret;
}

HI_S32      HI_JPGE_Destroy( HI_U32   EncHandle )
{
    return ioctl(g_s32JPGEFd, JPGE_DESTROY_CMD, &EncHandle);
}

#ifdef __cplusplus
#if __cplusplus
}
#endif  /* __cplusplus */
#endif  /* __cplusplus */
