#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <string.h>
#include "hi_drv_struct.h"
#include "hi_common.h"
#include "drv_hdcp_ioctl.h"

static HI_S32 g_s32HDCPFd = -1;

static const HI_U8 s_szHdcpVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

/***********************************************************************************
*  Function:       HI_UNF_HDCP_SetHDCPKey
*  Description:    Burn HDCP Key
*  Calls:
*  Data Accessed:  NA
*  Data Updated:   NA
*  Input:          NA
*  Output:         NA
*  Return:      ErrorCode(reference to document)
*  Others:         NA
***********************************************************************************/
HI_S32  HI_UNF_HDCP_EncryptHDCPKey(HI_UNF_HDCP_HDCPKEY_S stHdcpKey, HI_BOOL bIsUseOTPRootKey, HI_U8 u8OutEncryptKey[332])
{
    HI_S32 s32Ret = HI_SUCCESS;    
    OTP_HDCP_KEY_TRANSFER_S stDecryptHdcpKeyTransfer;    

    if ( NULL == u8OutEncryptKey)
    {
        HI_ERR_HDCP("Invalid param , null pointer!\n");
        return HI_FAILURE;
    }

    if ( (HI_TRUE != bIsUseOTPRootKey) && (HI_FALSE != bIsUseOTPRootKey) )
    {
        HI_ERR_HDCP("Invalid param, unexpected bIsUseOTPRootKey!");
        return HI_FAILURE;
    }
    
    g_s32HDCPFd = open("/dev/" UMAP_DEVNAME_SETHDCP, O_RDWR, 0);
    if (g_s32HDCPFd <= 0)
    {
        HI_ERR_HDCP("Error hdcp open err. %s,%d\n",__FUNCTION__,__LINE__);
        return HI_FAILURE;
    }
    memset(&stDecryptHdcpKeyTransfer, 0x0, sizeof(OTP_HDCP_KEY_TRANSFER_S));

    stDecryptHdcpKeyTransfer.bIsUseOTPRootKey = bIsUseOTPRootKey;
    memcpy(&stDecryptHdcpKeyTransfer.stHdcpKey, &stHdcpKey, sizeof(stHdcpKey));
    
    s32Ret = ioctl(g_s32HDCPFd, CMD_HDCP_ENCRYPTKEY,  &stDecryptHdcpKeyTransfer);
    if ( HI_SUCCESS != s32Ret)
    {
        HI_ERR_HDCP("cmd encrypt hdcpkey failed!\n");
        close(g_s32HDCPFd);
        g_s32HDCPFd   = -1;
        return HI_FAILURE;
    }

    memcpy(u8OutEncryptKey, stDecryptHdcpKeyTransfer.u8FlashEncryptedHdcpKey, 332);

    close(g_s32HDCPFd);
    g_s32HDCPFd   = -1;
    return HI_SUCCESS;
}


